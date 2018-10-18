; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 22:52:26 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:24:28 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isprint

	section	.text
_ft_isprint:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax
	sub		edi, ' '
	cmp		edi, ('~' - ' ' + 1)
	setb	al
	pop		rbp
	ret

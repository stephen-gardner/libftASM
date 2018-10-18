; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:09:42 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:24:00 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isdigit

	section	.text
_ft_isdigit:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax
	sub		edi, '0'
	cmp		edi, 10
	setb	al
	pop		rbp
	ret

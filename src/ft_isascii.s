; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 21:13:48 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:23:37 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isascii

	section	.text
_ft_isascii:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax
	cmp		edi, 0x80
	setb	al
	pop		rbp
	ret

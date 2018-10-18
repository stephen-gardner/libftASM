; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:16:36 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 21:43:24 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isalnum

	section	.text
_ft_isalnum:
	xor		eax, eax
	mov		edx, edi
	sub		edx, 'A'
	cmp		edx, 26
	jb		.true
	sub		edx, ('a' - 'A')
	cmp		edx, 26
	jb		.true
	sub		edi, '0'
	cmp		edi, 10
	jb		.true
	ret
.true:
	inc		eax
	ret

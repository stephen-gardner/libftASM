; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 19:34:33 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 21:43:15 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isalpha

	section .text
_ft_isalpha:
	xor		eax, eax
	sub		edi, 'A'
	cmp		edi, 26
	jb		.true
	sub		edi, ('a' - 'A')
	cmp		edi, 26
	jb		.true
	ret
.true:
	inc		eax
	ret

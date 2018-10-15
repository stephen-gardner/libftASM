; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 19:34:33 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 23:12:15 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isalpha

	section .text
_ft_isalpha:
	xor		eax, eax
	mov		edx, edi
	sub		edx, 'A'
	cmp		edx, 26
	jb		.true
	mov		edx, edi
	sub		edx, 'a'
	cmp		edx, 26
	jb		.true
	ret
.true:
	mov		al, 1
	ret

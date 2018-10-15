; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:16:36 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 23:10:45 by sgardner         ###   ########.fr        ;
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
	mov		edx, edi
	sub		edx, 'a'
	cmp		edx, 26
	jb		.true
	mov		edx, edi
	sub		edx, '0'
	cmp		edx, 10
	jb		.true
	ret
.true:
	mov		al, 1
	ret

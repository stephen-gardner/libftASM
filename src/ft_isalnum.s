; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:16:36 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 21:55:41 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isalnum
	section	.text
_ft_isalnum:
	mov		dl, dil
	sub		dl, 'A'
	cmp		dl, 26
	jb		.true
	mov		dl, dil
	sub		dl, 'a'
	cmp		dl, 26
	jb		.true
	mov		dl, dil
	sub		dl, '0'
	cmp		dl, 10
	jb		.true
	mov		rax, 0
	ret
.true:
	mov		rax, 1
	ret

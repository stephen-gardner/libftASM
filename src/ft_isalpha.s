; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 19:34:33 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 21:55:56 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isalpha

	section .text
_ft_isalpha:
	mov		dl, dil
	sub		dl, 'A'
	cmp		dl, 26
	jb		.true
	mov		dl, dil
	sub		dl, 'a'
	cmp		dl, 26
	jb		.true
	mov		rax, 0
	ret
.true:
	mov		rax, 1
	ret

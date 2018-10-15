; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 01:44:34 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/15 01:58:54 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_toupper
	section	.text
_ft_toupper:
	mov		eax, edi
	sub		eax, 'a'
	cmp		eax, 26
	jb		.capitalize
	add		eax, 'a'
	ret
.capitalize:
	add		eax, 'A'
	ret

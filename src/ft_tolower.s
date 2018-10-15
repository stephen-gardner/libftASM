; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 01:44:34 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/15 02:06:06 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_tolower
	section	.text
_ft_tolower:
	mov		eax, edi
	sub		eax, 'A'
	cmp		eax, 26
	jb		.capitalize
	add		eax, 'A'
	ret
.capitalize:
	add		eax, 'a'
	ret

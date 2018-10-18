; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 01:44:34 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 03:40:50 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_tolower

	section	.text
_ft_tolower:
	mov		eax, edi
	sub		eax, 'A'
	cmp		eax, 26
	jb		.lower
	add		eax, 'A'
	ret
.lower:
	add		eax, 'a'
	ret

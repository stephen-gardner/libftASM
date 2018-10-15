; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:09:42 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 21:56:12 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isdigit

	section	.text
_ft_isdigit:
	sub		dil, '0'
	cmp		dil, 10
	jb		.true
	mov		rax, 0
	ret
.true:
	mov		rax, 1
	ret

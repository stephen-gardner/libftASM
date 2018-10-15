; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:09:42 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 20:11:57 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isdigit

	section	.text
_ft_isdigit:
	mov		rax, 0
	sub		dil, '0'
	cmp		dil, 10
	jb		.true
	ret
.true:
	mov		rax, 1
	ret

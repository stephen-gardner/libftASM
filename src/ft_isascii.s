; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 21:13:48 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 21:54:07 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isascii
	section	.text
_ft_isascii:
	cmp		rdi, 0x7F
	jbe		.true
	mov		rax, 0
	ret
.true:
	mov		rax, 1
	ret

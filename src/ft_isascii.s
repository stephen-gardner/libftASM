; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 21:13:48 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 23:01:33 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isascii
	section	.text
_ft_isascii:
	xor		eax, eax
	cmp		edi, 0x80
	setb	al
	ret

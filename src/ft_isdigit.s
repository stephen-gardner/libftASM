; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:09:42 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 23:12:51 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isdigit

	section	.text
_ft_isdigit:
	xor		eax, eax
	sub		edi, '0'
	cmp		edi, 10
	setb	al
	ret

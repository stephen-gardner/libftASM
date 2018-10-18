; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 22:52:26 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 17:26:14 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isprint

	section	.text
_ft_isprint:
	xor		eax, eax
	sub		edi, ' '
	cmp		edi, ('~' - ' ' + 1)
	setb	al
	ret

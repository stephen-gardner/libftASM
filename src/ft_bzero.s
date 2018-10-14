; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/07/29 09:15:31 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 16:54:45 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_bzero

	section	.text
_ft_bzero:
	test	rsi, rsi
	je		.done
.loop:
	dec		rsi
	mov		byte [rdi + rsi], 0
	test	rsi, rsi
	jne		.loop
.done:
	ret

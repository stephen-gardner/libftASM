; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/07/29 09:15:31 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 03:09:36 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_bzero

	section	.text
_ft_bzero:
	test	rsi, rsi
	je		.done
	push	rsi
.loop:
	dec		rsi
	mov		byte [rdi + rsi], 0
	test	rsi, rsi
	jne		.loop
	pop		rsi
.done:
	ret

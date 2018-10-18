; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/07/29 09:15:31 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:18:39 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_bzero

	section	.text
_ft_bzero:
	push	rbp
	mov		rbp, rsp
	xor		al, al
	mov		rcx, rsi
	rep		stosb
	pop		rbp
	ret

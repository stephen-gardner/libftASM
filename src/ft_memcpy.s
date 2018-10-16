; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 05:08:32 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 05:13:16 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_memcpy

	section	.text
_ft_memcpy:
	push	rdi			; Destination
	mov		rax, rsi	; Source
	mov		rcx, rdx	; Length
	rep		movsb
	pop		rax
	ret

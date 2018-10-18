; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 05:08:32 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 20:49:44 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_memcpy

	section	.text
_ft_memcpy:
	mov		rax, rdi	; Destination
	mov		rcx, rdx	; Length
	rep		movsb
	ret

; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 04:32:01 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 21:12:52 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_memset

	section	.text
_ft_memset:
	mov		r8, rdi		; destination
	mov		al, sil		; byte
	mov		rcx, rdx	; len
	rep		stosb
	mov		rax, r8
	ret

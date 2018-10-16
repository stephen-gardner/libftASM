; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 04:32:01 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 05:01:10 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_memset

	section	.text
_ft_memset:
	push	rdi
	mov		al, sil
	mov		rcx, rdx
	rep		stosb
	pop		rax
	ret

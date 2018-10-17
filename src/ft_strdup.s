; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 05:35:39 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 19:36:57 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strdup
	extern	_malloc

	section	.text
_ft_strdup:
	push	rbp					; Align stack
	mov		r12, rdi			; Source
	mov		al, 0
	mov		rcx, -1
	repne	scasb
	mov		rdi, -1
	sub		rdi, rcx
	mov		r13, rdi			; Len
	call	_malloc
	mov		rdi, rax
	mov		rsi, r12
	mov		rcx, r13
	rep		movsb
	pop		rbp
	ret

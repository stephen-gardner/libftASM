; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 05:35:39 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 20:47:41 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strdup
	extern	_malloc

	section	.text
_ft_strdup:
	push	rbp					; Save stack base pointer and align stack
	mov		rbp, rsp
	sub		rsp, 16				; Reserve space for local vars
	mov		[rbp - 8], rdi		; Source
	mov		al, 0
	mov		rcx, -1
	repne	scasb
	mov		rdi, -1
	sub		rdi, rcx
	mov		[rbp - 16], rdi		; Len
	call	_malloc
	mov		rdi, rax
	mov		rsi, [rbp - 8]
	mov		rcx, [rbp - 16]
	rep		movsb
	add		rsp, 16
	pop		rbp
	ret

; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 02:17:06 by sgardner          #+#    #+#              ;
;    Updated: 2018/11/21 20:39:57 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_puts
	extern	___error

	section	.text
_ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32					; reserve space for iovec array
	mov		qword [rbp - 8], 1
	lea		rsi, [rel _newline]
	mov		[rbp - 16], rsi			; pointer to newline
	mov		[rbp - 32], rdi			; pointer to string
	xor		al, al
	mov		rcx, -1
	repne	scasb
	not		rcx
	dec		rcx
	mov		qword [rbp - 24], rcx	; len
	mov		edi, 1					; stdout
	lea		rsi, [rbp - 32]
	mov		edx, 2					; size of iovec array
	mov		rax, 0x2000079			; writev
	syscall
	jnc		.done
	mov		r12, rax				; error code
	call	___error				; get pointer to errno
	mov		[rax], r12
	mov		rax, -1
.done:
	add		rsp, 32
	pop		rbp
	ret

	section	.data
_newline:
	db		0x0A

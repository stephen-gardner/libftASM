; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 02:17:06 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 01:59:09 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_puts
	extern	_writev

	section	.text
_ft_puts:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32					; Reserve space for iovec array
	mov		qword [rbp - 8], 1
	lea		rsi, [rel newline]
	mov		[rbp - 16], rsi
	mov		rdx, rdi
.len:
	cmp		byte [rdx], 0
	je		.write
	inc		rdx
	jmp		.len
.write:
	sub		rdx, rdi
	mov		[rbp - 24], rdx
	mov		[rbp - 32], rdi
	mov		edi, 1
	lea		rsi, [rbp - 32]
	mov		edx, 2
	call	_writev
	add		rsp, 32
	pop		rbp
	ret

	section	.data
newline db	0x0A

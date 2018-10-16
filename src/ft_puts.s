; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 02:17:06 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 03:15:35 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_puts

	section	.text
_ft_puts:
	push	rbp
	mov		rbp, rsp
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
	mov		qword [rbp - 24], rdx
	mov		qword [rbp - 32], rdi
	mov		rax, 0x02000079
	mov		edi, 1
	lea		rsi, [rbp - 32]
	mov		edx, 2
	syscall
	pop		rbp
	ret

	section	.data
newline db	0x0A

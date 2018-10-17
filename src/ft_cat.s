; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 22:43:30 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 23:14:19 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_cat

	section	.text
_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 5000
	mov		[rbp - 4], edi		; input fd
.read:
	mov		rax, 0x02000003		; read syscall
	mov		edi, [rbp - 4]
	lea		rsi, [rbp - 5000]	; buffer
	mov		rdx, 4096
	syscall
	cmp		rax, 0
	jbe		.done
	mov		rdx, rax			; bytes read
	mov		rax, 0x02000004		; write syscall
	mov		edi, 1
	lea		rsi, [rbp - 5000]
	syscall
	cmp		rax, 0
	jb		.done				; write error
	jmp		.read
.done:
	add		rsp, 5000
	pop		rbp
	ret

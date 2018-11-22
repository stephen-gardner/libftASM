; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 22:43:30 by sgardner          #+#    #+#              ;
;    Updated: 2018/11/21 20:56:38 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_cat
	extern	___error

	section	.text
_ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 4112
	mov		[rbp - 4], edi		; input fd
.read:
	mov		edi, [rbp - 4]
	lea		rsi, [rbp - 4112]	; buffer
	mov		rdx, 4096
	mov		rax, 0x2000003		; read
	syscall
	jc		.error
	test	rax, rax
	je		.done
	mov		rdx, rax			; bytes read
	mov		edi, 1
	lea		rsi, [rbp - 4112]
	mov		rax, 0x2000004		; write
	syscall
	jc		.error
	test	rax, rax
	je		.done
	jmp		.read
.error:
	mov		r12, rax
	call	___error			; get pointer to errno
	mov		[rax], r12
	mov		rax, -1
.done:
	add		rsp, 4112
	pop		rbp
	ret

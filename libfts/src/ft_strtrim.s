; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strtrim.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/19 23:18:15 by sgardner          #+#    #+#              ;
;    Updated: 2018/12/01 21:44:55 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strtrim
	extern	_malloc

	section	.text
_ft_strtrim:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16
	mov		rsi, rdi						; input string
.find_start:
	lodsb
	lea		rdi, [rel _whitesp]
	mov		rcx, 6
	repne	scasb
	je		.find_start
	dec		rsi
	mov		[rbp - 8], rsi					; start of data for trimmed string
	mov		rdx, rsi
.find_end:
	lodsb
	lea		rdi, [rel _whitesp]
	mov		rcx, 6
	repne	scasb
	je		.find_end
	test	al, al
	je		.build
	mov		rdx, rsi						; record position + 1 of char
	jmp		.find_end
.build:
	sub		rdx, [rbp - 8]
	mov		[rbp - 16], rdx					; length of trimmed string
	mov		rdi, rsi
	inc		rdi								; add space for null terminator
	call	_malloc
	test	rax, rax
	je		.done
	mov		rdi, rax
	mov		rsi, [rbp - 8]
	mov		rcx, [rbp - 16]
	rep		movsb
	mov		byte [rdi], 0					; terminate
.done:
	add		rsp, 16
	pop		rbp
	ret

	section	.data
_whitesp:
	db		0x20, 0x09, 0x0A, 0x0B, 0x0C, 0x0D

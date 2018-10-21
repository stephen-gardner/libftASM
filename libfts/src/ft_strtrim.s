; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strtrim.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/19 23:18:15 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/20 21:08:26 by sgardner         ###   ########.fr        ;
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
	mov		rcx, 5
	repne	scasb
	je		.find_start
	dec		rsi
	mov		[rbp - 8], rsi					; start of data for trimmed string
	mov		rdi, rsi
	mov		rcx, -1
	xor		al, al
	repne	scasb							; scan to terminator
	dec		rdi
	cmp		rdi, rsi
	je		.empty							; result will be empty
	dec		rdi								; move to before null terminator
	mov		rsi, rdi
.find_end:
	std										; scan backwards for new end
	lodsb
	cld
	lea		rdi, [rel _whitesp]
	mov		rcx, 5
	repne	scasb
	je		.find_end
	add		rsi, 2							; include last character scanned
.empty:
	sub		rsi, [rbp - 8]
	mov		[rbp - 16], rsi					; length of trimmed string
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
	db		0x20, 0x09, 0x0A, 0x0B, 0x0C

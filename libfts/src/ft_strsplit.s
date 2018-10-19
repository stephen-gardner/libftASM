; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strsplit.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/19 04:20:04 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/19 07:57:12 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strsplit
	extern	_malloc

	section	.text
_ft_strsplit:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 32				; alignment
	xor		rdx, rdx			; # words
	xor		rcx, rcx			; # chars
	mov		r8, rdi				; input string
	mov		al, sil				; delimiter
.skip_delim:
	scasb
	je		.skip_delim
	dec		rdi
	cmp		byte [rdi], 0
	je		.alloc_array
	inc		rdx
.skip_chars:
	inc		rcx
	cmp		byte [rdi], 0
	je		.alloc_array
	scasb
	jne		.skip_chars
	jmp		.skip_delim
.alloc_array:
	inc		rdx					; for NULL
	shl		rdx, 3
	add		rcx, rdx
	mov		[rbp - 8], rdx
	mov		[rbp - 16], r8
	mov		[rbp - 24], al
	mov		rdi, rcx
	call	_malloc
	mov		r8, rax				; array start position
	mov		rdx, rax			; array pointer position
	mov		rdi, [rbp - 8]		; array data position
	add		rdi, rax
	mov		rsi, [rbp - 16]		; input string
	mov		al, [rbp - 24]
	cmp		rdx, 0
	je		.done
.build_array:
	cmp		[rsi], al
	jne		.copy_ptr
	inc		rsi
	jmp		.build_array
.copy_ptr:
	cmp		byte [rsi], 0
	je		.terminate
	mov		[rdx], rdi
	add		rdx, 8
.copy_chars:
	movsb
	cmp		byte [rsi], 0
	je		.terminate
	cmp		[rsi], al
	jne		.copy_chars
	mov		byte [rdi], 0
	inc		rdi
	jmp		.build_array
.terminate:
	mov		qword [rdx], 0
	mov		byte [rdi], 0
	mov		rax, r8
.done:
	add		rsp, 32
	pop		rbp
	ret

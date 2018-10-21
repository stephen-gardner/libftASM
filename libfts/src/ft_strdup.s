; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 05:35:39 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/20 20:18:27 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strdup
	extern	_malloc

	section	.text
_ft_strdup:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 16
	mov		[rbp - 8], rdi		; source
	xor		al, al
	mov		rcx, -1
	repne	scasb
	not		rcx
	mov		rdi, rcx
	mov		[rbp - 16], rdi		; len + 1
	call	_malloc
	test	rax, rax
	je		.done
	mov		rdi, rax
	mov		rsi, [rbp - 8]
	mov		rcx, [rbp - 16]
	rep		movsb
.done:
	add		rsp, 16
	pop		rbp
	ret

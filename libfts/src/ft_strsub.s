; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strsub.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/20 22:35:23 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/20 22:57:18 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strsub
	extern	_malloc

	section	.text
_ft_strsub:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 24
	add		rdi, rsi
	mov		[rbp - 8], rdi		; start position in input string
	mov		[rbp - 16], rdx		; length of substring
	mov		rdi, rdx
	inc		rdi					; +1 for null terminator
	call	_malloc
	test	rax, rax
	je		.done
	mov		rdi, rax
	mov		rsi, [rbp - 8]
	mov		rcx, [rbp - 16]
	rep		movsb
	mov		byte [rdi], 0			; terminate
.done:
	add		rsp, 24
	pop		rbp
	ret

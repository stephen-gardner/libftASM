; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 22:43:30 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/20 20:19:35 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_cat
	extern	_read
	extern	_write

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
	call	_read
	test	rax, rax
	jle		.done
	mov		rdx, rax			; bytes read
	mov		edi, 1
	lea		rsi, [rbp - 4112]
	call	_write
	test	rax, rax
	jg		.read
.done:
	add		rsp, 4112
	pop		rbp
	ret

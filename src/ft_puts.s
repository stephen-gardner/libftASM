; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 02:17:06 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 00:22:20 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_puts

	section	.text
_ft_puts:
	mov		rax, 0x02000004		; write syscall
	mov		rsi, rdi
	mov		rdx, rdi
	mov		edi, 1
.len:
	cmp 	byte [rdx], 0
	je		.write
	inc		rdx
	jmp		.len
.write:
	sub		rdx, rsi
	syscall
	cmp		rax, -1
	je		.done
	mov		rax, 0x02000004
	mov		edi, 1
	lea		rsi, [rel newline]
	mov		rdx, 1
	syscall
.done:
	ret

	section	.data
newline db	0x0A

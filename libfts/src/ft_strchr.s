; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/18 20:53:04 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 22:10:16 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strchr

	section	.text
_ft_strchr:
	push	rbp
	mov		rbp, rsp
	dec		rdi
.scan:
	inc		rdi
	cmp		byte [rdi], 0
	je		.result
	cmp		[rdi], sil
	jne		.scan
.result:
	xor		rax, rax
	cmp		[rdi], sil
	jne		.done
	mov		rax, rdi
.done:
	pop		rbp
	ret

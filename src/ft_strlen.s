; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 04:15:24 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:26:22 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strlen

	section	.text
_ft_strlen:
	push	rbp
	mov		rbp, rsp
	xor		al, al
	mov		rcx, -1
	repne	scasb
	mov		rax, -2
	sub		rax, rcx
	pop		rbp
	ret

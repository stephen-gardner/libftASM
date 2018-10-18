; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 03:17:38 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:25:53 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global		_ft_strcat

	section		.text
_ft_strcat:
	push		rbp
	mov			rbp, rsp
	mov			r8, rdi
	xor			al, al
	mov			rcx, -1
	repne		scasb		; scan to end of s1
	mov			r9, rdi
	dec			r9			; position of null terminator
	xor			al, al
	mov			rdi, rsi
	mov			rcx, -1
	repne		scasb
	not			rcx			; s2 len + 1
	mov			rdi, r9
	rep			movsb
	mov			rax, r8
	pop			rbp
	ret

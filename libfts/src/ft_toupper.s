; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 01:44:34 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:35:35 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_toupper

	section	.text
_ft_toupper:
	push	rbp
	mov		rbp, rsp
	mov		eax, edi
	sub		eax, 'a'
	cmp		eax, 26
	jb		.capitalize
	add		eax, 'a'
	jmp		.done
.capitalize:
	add		eax, 'A'
.done:
	pop		rbp
	ret

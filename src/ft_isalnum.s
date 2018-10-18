; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 20:16:36 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:21:30 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_isalnum

	section	.text
_ft_isalnum:
	push	rbp
	mov		rbp, rsp
	xor		eax, eax
	mov		edx, edi
	sub		edx, 'A'
	cmp		edx, 26
	jb		.true
	sub		edx, ('a' - 'A')
	cmp		edx, 26
	jb		.true
	sub		edi, '0'
	cmp		edi, 10
	jae		.done
.true:
	inc		eax
.done:
	pop		rbp
	ret

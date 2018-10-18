; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/15 01:44:34 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 04:35:24 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_tolower

	section	.text
_ft_tolower:
	push	rbp
	mov		rbp, rsp
	mov		eax, edi
	sub		eax, 'A'
	cmp		eax, 26
	jb		.lower
	add		eax, 'A'
	jmp		.done
.lower:
	add		eax, 'a'
.done:
	pop		rbp
	ret

; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 04:15:24 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/17 18:03:43 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strlen

	section	.text
_ft_strlen:
	xor		al, al
	mov		rcx, -1
	repne	scasb
	mov		rax, -2
	sub		rax, rcx
	ret

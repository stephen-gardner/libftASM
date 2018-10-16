; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/16 04:15:24 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/16 04:27:03 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strlen

	section	.text
_ft_strlen:
	mov		al, 0
	mov		rcx, -1
	repne	scasb
	mov		rax, 0
	sub		rax, rcx
	ret

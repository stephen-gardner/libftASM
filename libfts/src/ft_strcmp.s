; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/18 06:22:37 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/18 18:53:06 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global	_ft_strcmp

	section	.text
_ft_strcmp:
	push	rbp
	mov		rbp, rsp
.compare:
	cmp		byte [rdi], 0
	je		.done
	cmpsb
	je		.compare
	dec		rdi
	dec		rsi
.done:
	mov		al, [rdi]
	sub		al, [rsi]
	movsx	eax, al				; retain sign from char -> int
	pop		rbp
	ret

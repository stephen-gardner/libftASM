; ---------------------------------------------------------------------------- ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: sgardner <stephenbgardner@gmail.com>       +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2018/10/14 03:17:38 by sgardner          #+#    #+#              ;
;    Updated: 2018/10/14 17:23:56 by sgardner         ###   ########.fr        ;
;                                                                              ;
; ---------------------------------------------------------------------------- ;

	global		_ft_strcat

	section		.text
_ft_strcat:
	mov			rax, rdi
.advance:
	cmp byte	[rdi], 0
	je			.copy
	inc			rdi
	jmp			.advance
.copy:
	mov byte	dl, [rsi]
	mov byte	[rdi], dl
	test		dl, dl
	je			.done
	inc			rsi
	inc			rdi
	jmp			.copy
.done:
	ret

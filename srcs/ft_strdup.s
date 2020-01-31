; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_strdup.s                                      .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/14 13:54:59 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/31 13:13:52 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_ft_strcpy
	extern	_malloc

_ft_strdup:
	call	_ft_strlen

	push	rdi
	mov		rdi, rax
	inc		rdi
	call	_malloc
	cmp		rax, 0
	je		_end
	pop		rsi

	mov		rdi, rax
	call	_ft_strcpy

_end:
	ret

; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_strcpy.s                                      .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/14 13:54:59 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/31 13:15:31 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_strcpy

_ft_strcpy:
	xor		rcx, rcx

_loop:
	cmp		byte [rsi + rcx], 0
	je		_end

	mov		dl, [rsi + rcx]
	mov		[rdi + rcx], dl
	inc		rcx
	jmp		_loop

_end:
	mov		[rdi + rcx], byte 0
	mov		rax, rdi
	ret

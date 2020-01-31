; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_strcmp.s                                      .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/14 13:54:59 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/31 11:18:05 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_strcmp

_ft_strcmp:
	xor			rax, rax
	xor			rcx, rcx

_loop:
	mov			al, [rdi]
	mov			cl, [rsi]

	cmp			al, cl
	jne			_end

	cmp			al, 0
	je			_end

	inc			rsi
	inc			rdi
	jmp			_loop

_end:
	sub			rax, rcx
	ret

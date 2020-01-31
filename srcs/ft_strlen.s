; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_strlen.s                                      .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/14 13:54:59 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/31 13:08:11 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_strlen

_ft_strlen:
	xor			rax, rax

_loop:
	cmp			byte [rdi + rax], 0
	je			_end

	inc			rax
	jmp			_loop

_end:
	ret

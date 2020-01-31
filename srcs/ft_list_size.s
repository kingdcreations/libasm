; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_list_size.s                                   .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/20 13:11:22 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/21 10:25:41 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_list_size

_ft_list_size:
  xor		rax, rax
  push	rdi

_loop:
  cmp		rdi, 0
  je		_end

  inc		rax
  mov		rdi, [rdi + 8]
  jmp		_loop

_end:
  pop		rdi
  ret

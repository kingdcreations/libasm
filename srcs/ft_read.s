; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_read.s                                        .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/14 13:54:59 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/21 10:27:19 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_read

_ft_read:
	mov		rax, 0x2000003 ; read
	syscall

	jc		_error

	ret

_error:
	mov rax, -1
	ret

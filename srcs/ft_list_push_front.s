; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_list_push_front.s                             .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/14 13:54:59 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/31 13:56:18 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
	global	_ft_list_push_front
	extern	_malloc

_ft_create_elem:
	push	rdi
	mov		rdi, 16
	call	_malloc
	pop		rdi

	cmp		rax, 0
	je		_end

	mov		[rax], rdi
	mov		qword [rax + 8], 0
	ret

_ft_list_push_front:
	cmp		rdi, 0
	je		_end
	cmp		qword [rdi], 0
	je		_empty

	push	rdi
	mov		rdi, rsi
	call	_ft_create_elem
	pop		rdi

	mov		rcx, [rdi]
	mov		[rax + 8], rcx
	mov 	[rdi], rax

_end:
	ret

_empty:
	push	rdi
	mov		rdi, rsi
	call	_ft_create_elem
	pop		rdi

	mov		[rdi], rax
	ret

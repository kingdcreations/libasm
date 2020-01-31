; **************************************************************************** ;
;                                                          LE - /              ;
;                                                              /               ;
;   ft_list_sort.s                                   .::    .:/ .      .::     ;
;                                                 +:+:+   +:    +:  +:+:+      ;
;   By: tmarcon <marvin@le-101.fr>                 +:+   +:    +:    +:+       ;
;                                                 #+#   #+    #+    #+#        ;
;   Created: 2020/01/20 13:31:46 by tmarcon      #+#   ##    ##    #+#         ;
;   Updated: 2020/01/31 11:19:39 by tmarcon     ###    #+. /#+    ###.fr       ;
;                                                         /                    ;
;                                                        /                     ;
; **************************************************************************** ;

section .text
  global	_ft_list_sort

_ft_swap:
  mov    r8, [rdi]
  mov    r9, [rsi]
  mov    [rdi], r9
  mov    [rsi], r8

  ret

_ft_list_sort:
  cmp   rdi, 0
  je    _end
  cmp   rsi, 0
  je    _end

  mov   r12, [rdi]

_loop:
  cmp   r12, 0
  je    _end

  mov   rbx, [r12 + 8]

  mov   r13, rbx
  call  _loop2

  mov   r12, rbx
  jmp   _loop

_loop2:
  cmp   r13, 0
  je    _end

  mov   rax, rsi

  push  rsi
  mov   rdi, [r12]
  mov   rsi, [r13]
  call  rax
  pop   rsi

  cmp   rax, 0
  jle   _loop_end2

  push  rsi
  mov   rdi, r12
  mov   rsi, r13
  call  _ft_swap
  pop   rsi

  jmp   _loop_end2

_loop_end2:
  mov   r13, [r13 + 8]
  jmp   _loop2

_end:
  ret

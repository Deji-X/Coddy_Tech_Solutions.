bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    mov rax, r8
    mov rdx, 0
    div r9
    mov rax, rdx
    ret

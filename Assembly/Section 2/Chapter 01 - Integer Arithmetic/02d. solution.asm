bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    mov rax, r9
    sub rax, r8
    inc rax
    ret

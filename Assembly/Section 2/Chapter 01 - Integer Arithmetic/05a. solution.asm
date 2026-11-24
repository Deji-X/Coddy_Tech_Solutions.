bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    mov rax, r8
    imul rax, r9
    add rax, r10
    sub rax, r11
    ret

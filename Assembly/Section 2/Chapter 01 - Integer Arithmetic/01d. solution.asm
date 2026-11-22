bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    add rax, r8
    add rax, r9
    sub rax, r10
    sub rax, r11
    ret

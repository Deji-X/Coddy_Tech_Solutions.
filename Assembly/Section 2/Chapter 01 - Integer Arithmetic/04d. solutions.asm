bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    mov rax, r8
    xor rdx, rdx
    div r9
    mov rax, rdx
    ret

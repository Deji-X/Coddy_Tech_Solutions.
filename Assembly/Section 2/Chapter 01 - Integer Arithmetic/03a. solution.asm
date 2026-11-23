bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    mov rax, r8
    mov rbx, r9
    imul rax, rbx
    ret

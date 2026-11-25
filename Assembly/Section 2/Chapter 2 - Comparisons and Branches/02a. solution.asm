bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    cmp r8, r9
    je equal

    mov rax, 0
    ret

equal:
    mov rax, 1
    ret

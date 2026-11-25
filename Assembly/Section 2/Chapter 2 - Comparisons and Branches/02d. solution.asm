bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    mov rax, 10
    cmp r8, r9
    je .done
    mov rax, 20
    ret

.done:
    ret

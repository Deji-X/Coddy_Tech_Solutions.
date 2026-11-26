;their solution to the exercise

bits 64
section .text
global solve
extern values
solve:
    mov rax, 0
    cmp r8, 0
    jl .done
    mov rax, 1
    cmp r8, 30
    jle .done
    mov rax, 2
.done:
    ret

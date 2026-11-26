bits 64
section .text
global solve
extern values
solve:
    cmp r8, r9
    jl .second
    mov rax, r8
    sub rax, r9
    jmp .done
.second:
    mov rax, r9
    sub rax, r8
.done:
    ret

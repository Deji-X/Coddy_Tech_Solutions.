section .text
    global _start

_start:
    ; Student's code runs first (sets rdx)
    %include "solution.asm"
    
    mov rax, 1
    mov rdi, 1
    mov rsi, color
    ; rdx already has the length (from student's code)
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

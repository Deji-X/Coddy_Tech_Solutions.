section .text
    global _start

_start:
    %include "solution.asm"
    
    mov rax, 1
    mov rdi, 1
    ; rsi already has the address (from student's code)
    mov rdx, greetingLen
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

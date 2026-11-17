section .data
    message db 'OK', 0x0a
    msgLen equ $ - message

section .text
    global _start

_start:
    ; Student sets file descriptor here
    %include "solution.asm"
    
    mov rax, 1
    ; rdi should already be set by student
    mov rsi, message
    mov rdx, msgLen
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

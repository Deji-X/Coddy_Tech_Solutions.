%include "data.asm"

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, city
    mov rdx, cityLen
    syscall
    
    mov rax, 60
    mov rdi, 0
    syscall

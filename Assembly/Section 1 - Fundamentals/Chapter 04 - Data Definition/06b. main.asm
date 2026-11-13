%include "data.asm"

section .text
    global _start

_start:
    ; Print the string using write syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, greeting
    mov rdx, 3           ; 'H', 'i', newline = 3 bytes
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall

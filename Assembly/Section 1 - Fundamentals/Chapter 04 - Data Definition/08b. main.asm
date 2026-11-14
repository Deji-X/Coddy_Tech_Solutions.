%include "data.asm"

section .text
    global _start

_start:
    ; Print the welcome string
    mov rax, 1
    mov rdi, 1
    mov rsi, welcome
    mov rdx, welcomeLen
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall

%include "data.asm"

section .text
    global _start

_start:
    mov al, [score]
    
    mov r12, rax
    
    add al, 48
    mov [digit], al
    
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall
    
    mov rax, 60
    mov rdi, 0
    syscall

section .bss
    digit resb 1

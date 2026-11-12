%include "data.asm"

section .text
    global _start

_start:
    ; Load the value from count into al
    mov al, [count]
    
    ; Save it for printing
    mov r12, rax
    
    ; Convert to ASCII and print (0-9 only)
    add al, 48
    mov [digit], al
    
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall

section .bss
    digit resb 1

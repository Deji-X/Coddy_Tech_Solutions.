section .data
    msg db 'destination = '
    msg_len equ $ - msg

section .bss
    digit resb 1

section .text
    global _start

_start:
    ; The student's code runs first (loads from source, stores to destination)
    
    %include "solution.asm"
    
    ; Load the stored value from destination
    mov al, [destination]
    
    ; Save it
    mov r12, rax
    
    ; Print "destination = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msg_len
    syscall
    
    ; Print the value
    mov rax, r12
    add rax, 48
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

section .data
    msg db 'destination = '
    msg_len equ $ - msg

section .bss
    digit resb 1

section .text
    global _start

_start:
    ; solution.asm is included here
    ; It defines destination AND the student's MOV instructions
    
    %include "solution.asm"
    
    ; Load the stored value from memory into al for printing
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

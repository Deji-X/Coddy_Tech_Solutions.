section .data
    msg_r8 db 'r8 = '
    msg_r8_len equ $ - msg_r8
    msg_r9 db 'r9 = '
    msg_r9_len equ $ - msg_r9
    newline db 0xa

section .bss
    digit resb 1

section .text
    global _start

_start:
    ; Set initial values
    mov r8, 6
    mov r9, 2
    
    %include "solution.asm"       ; Student's swap code goes here
    
    ; Save values for printing
    mov r12, r8
    mov r13, r9
    
    ; Print "r8 = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_r8
    mov rdx, msg_r8_len
    syscall
    
    ; Print r8 value
    mov rax, r12
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall
    
    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    
    ; Print "r9 = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_r9
    mov rdx, msg_r9_len
    syscall
    
    ; Print r9 value
    mov rax, r13
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall
    
    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall

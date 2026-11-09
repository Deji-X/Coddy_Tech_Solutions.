section .data
    msg_rax db 'rax = '
    msg_rax_len equ $ - msg_rax
    msg_rbx db 'rbx = '
    msg_rbx_len equ $ - msg_rbx
    msg_rcx db 'rcx = '
    msg_rcx_len equ $ - msg_rcx

section .bss
    digit resb 1

section .text
    global _start

_start:
    %include "solution.asm"
    
    ; Save values
    mov r12, rax
    mov r13, rbx
    mov r14, rcx
    
    ; Print "rax = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_rax
    mov rdx, msg_rax_len
    syscall
    
    ; Print rax value
    mov rax, r12
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall
    
    ; Print "rbx = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_rbx
    mov rdx, msg_rbx_len
    syscall
    
    ; Print rbx value
    mov rax, r13
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall
    
    ; Print "rcx = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_rcx
    mov rdx, msg_rcx_len
    syscall
    
    ; Print rcx value
    mov rax, r14
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

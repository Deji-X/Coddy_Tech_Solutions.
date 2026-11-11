section .data
    msg_al db 'al = '
    msg_al_len equ $ - msg_al
    msg_bl db 'bl = '
    msg_bl_len equ $ - msg_bl
    msg_cl db 'cl = '
    msg_cl_len equ $ - msg_cl
    msg_result db 'result = '
    msg_result_len equ $ - msg_result
    newline db 0xa

section .bss
    digit resb 1

section .text
    global _start

_start:
    ; Student's code runs first
    
    %include "solution.asm"
    
    mov r12, rax
    mov r13, rbx
    mov r14, rcx
    mov r15, 0
    mov r15b, [result]

    mov rax, 1
    mov rdi, 1
    mov rsi, msg_al
    mov rdx, msg_al_len
    syscall

    mov rax, r12
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, msg_bl
    mov rdx, msg_bl_len
    syscall

    mov rax, r13
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, msg_cl
    mov rdx, msg_cl_len
    syscall

    mov rax, r14
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, msg_result
    mov rdx, msg_result_len
    syscall

    mov rax, r15
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

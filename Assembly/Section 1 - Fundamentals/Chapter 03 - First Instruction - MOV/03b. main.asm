section .data
    msg db 'al = '
    msg_len equ $ - msg

section .bss
    digit resb 1

section .text
    global _start

_start:
    ; The student's code runs first (loads value into al)
    
    %include "solution.asm"
    
    ; Save the value from al
    mov r12, rax
    
    ; Print "al = "
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msg_len
    syscall
    
    ; Print the value in al
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

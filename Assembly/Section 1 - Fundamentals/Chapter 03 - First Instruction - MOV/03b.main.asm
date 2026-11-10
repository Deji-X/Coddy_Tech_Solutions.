section .data
    msg_prefix db 'message = '
    prefix_len equ $ - msg_prefix

section .text
    global _start

_start:
    ; The student's lea instruction runs first
    ; rsi should now contain the address of message
    
    ; Print prefix
    mov rax, 1
    mov rdi, 1
    mov rsi, msg_prefix
    mov rdx, prefix_len
    syscall
    
    %include "solution.asm"
    
    ; Print the string using the address the student loaded
    mov rax, 1
    mov rdi, 1
    ; rsi already has the address (from student's code)
    mov rdx, 6                    ; "Hello" + newline = 6 bytes
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall

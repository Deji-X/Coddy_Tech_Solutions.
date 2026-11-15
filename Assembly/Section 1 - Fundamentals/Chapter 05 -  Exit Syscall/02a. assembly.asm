section .data
    msg db 'Exiting with code 5', 0x0a
    msgLen equ $ - msg

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msgLen
    syscall

; TODO: Add the exit syscall with exit code 5
    mov rax, 60
    mov rsi, 0
    syscall

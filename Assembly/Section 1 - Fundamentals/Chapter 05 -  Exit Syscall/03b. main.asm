section .data
    msg db 'Backup complete', 0x0a
    msgLen equ $ - msg

section .text
    global _start

_start:
    ; Print the message (provided by test harness)
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msgLen
    syscall

    ; Student's code goes here
    %include "solution.asm"

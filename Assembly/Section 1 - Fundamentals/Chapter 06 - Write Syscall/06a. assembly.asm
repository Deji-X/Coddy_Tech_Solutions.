section .data
    msg db 'Assembly is fun', 0x0a
    msgLen equ $ - msg

section .text
    global _start

_start:
    ; TODO: Set up and call the write syscall
    ; Use rax=1, rdi=1, rsi=msg, rdx=msgLen

    ; TODO: Exit cleanly with code 0

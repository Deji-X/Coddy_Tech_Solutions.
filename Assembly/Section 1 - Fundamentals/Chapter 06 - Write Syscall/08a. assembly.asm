section .data
    word1 db 'Start', 0x0a
    word1Len equ $ - word1

    ;second one
    word2 db 'Middle', 0x0a
    word2Len equ $ - word2

    ;third word
    word3 db 'End', 0x0a
    word3Len equ $ - word3

section .text
    global _start

_start:
    ;First Line Print
    mov rax, 1
    mov rdi, 1
    mov rsi, word1
    mov rdx, word1Len
    syscall

    ;Second Line Print
    mov rax, 1
    mov rdi, 1
    mov rsi, word2
    mov rdx, word2Len
    syscall

    ;Third Line Print
    mov rax, 1
    mov rdi, 1
    mov rsi, word3
    mov rdx, word3Len
    syscall

    ;EXIT
    mov rax, 60
    mov rdi, 0
    syscall

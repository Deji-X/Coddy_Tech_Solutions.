section .data
    ; TODO: Define word1 with the 1st text listed in the instructions and newline
    word1 db 'Apple', 0x0a
    word1Len equ $ - word1
    
    ; TODO: Define word2 with the 2nd text listed in the instructions and newline
    word2 db 'Apple', 0x0a
    word2Len equ $ - word2

    ; TODO: Define word3 with the 3rd text listed in the instructions and newline
    word3 db 'Apple', 0x0a
    word3Len equ $ - word3

    ; TODO: Calculate lengths for each string

section .text
    global _start

_start:
    ; TODO: Print word1
    mov rax, 1
    mov rsi, 1
    mov rdi, word1
    mov rdx, word1Len
    syscall

    ; TODO: Print word2
    mov rax, 1
    mov rdi, 1
    mov rsi, word2
    mov rdx, word2Len
    syscall

    ; TODO: Print word3
    mov rax, 1
    mov rdi, 1
    mov rsi, word3
    mov rdx, word3Len
    syscall

    ; TODO: Exit cleanly
    mov rax, 60
    mov rdi, 0
    syscall

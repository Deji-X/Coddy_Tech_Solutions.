section .data
    partOne db 'Good', 0x0a
    partOneLen equ $-partOne
    partTwo db 'bye', 0x0a
    partTwoLen equ $-partTwo

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, partOne
    mov rdx, partOneLen
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, partTwo
    mov rdx, partTwoLen
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

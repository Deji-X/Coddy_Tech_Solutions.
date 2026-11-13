%include "data.asm"

section .data
    msg db 'universe_age = '
    msg_len equ $ - msg
    newline db 0xa

section .bss
    buffer resb 64

section .text
    global _start

_start:
    ; Load the quad word value into rax
    mov rax, [universe_age]
    
    ; Convert rax to decimal string
    mov rsi, buffer
    add rsi, 63          ; Go to end of buffer
    mov byte [rsi], 0    ; Null terminator
    
    mov rcx, 10          ; Divisor for decimal conversion

convert_loop:
    xor rdx, rdx         ; Clear rdx for division
    div rcx              ; Divide rax by 10, rax = quotient, rdx = remainder
    add dl, '0'          ; Convert remainder to ASCII
    dec rsi
    mov [rsi], dl        ; Store digit
    cmp rax, 0
    jnz convert_loop

    ; Save digit pointer and length BEFORE they get clobbered
    mov r8, rsi          ; r8 = pointer to first digit
    mov r9, buffer
    add r9, 63
    sub r9, rsi          ; r9 = number of digits
    
    ; Print message
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, msg_len
    syscall
    
    ; Print the number
    mov rax, 1
    mov rdi, 1
    mov rsi, r8
    mov rdx, r9
    syscall
    
    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall

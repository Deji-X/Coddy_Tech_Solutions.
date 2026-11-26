bits 64
section .bss
    input_buffer resb 256
    output_buffer resb 32
    values resq 4
section .text
    global _start
    global values
    extern solve
_start:
    xor eax, eax
    xor edi, edi
    mov rsi, input_buffer
    mov edx, 255
    syscall
    test rax, rax
    jle .loaded
    mov rsi, input_buffer
    lea rdi, [input_buffer + rax]
    xor ecx, ecx
.scan:
    cmp rsi, rdi
    jae .loaded
    cmp ecx, 4
    jae .loaded
    movzx eax, byte [rsi]
    cmp al, 32
    jbe .space
    mov r10, 1
    cmp al, '-'
    jne .number
    mov r10, -1
    inc rsi
.number:
    xor rax, rax
.digit:
    cmp rsi, rdi
    jae .store
    movzx edx, byte [rsi]
    cmp dl, '0'
    jb .store
    cmp dl, '9'
    ja .store
    imul rax, rax, 10
    sub edx, '0'
    add rax, rdx
    inc rsi
    jmp .digit
.store:
    imul rax, r10
    mov [values + rcx * 8], rax
    inc ecx
.space:
    inc rsi
    jmp .scan
.loaded:
    mov r8, [values]
    mov r9, [values + 8]
    mov r10, [values + 16]
    mov r11, [values + 24]
    xor eax, eax
    call solve
    lea rsi, [output_buffer + 31]
    mov byte [rsi], 10
    mov ecx, 1
    xor r8d, r8d
    test rax, rax
    jns .positive
    mov r8d, 1
    neg rax
.positive:
    mov ebx, 10
.convert:
    xor edx, edx
    div rbx
    add dl, '0'
    dec rsi
    mov [rsi], dl
    inc ecx
    test rax, rax
    jnz .convert
    test r8d, r8d
    jz .write
    dec rsi
    mov byte [rsi], '-'
    inc ecx
.write:
    mov edx, ecx
    mov eax, 1
    mov edi, 1
    syscall
    mov eax, 60
    xor edi, edi
    syscall

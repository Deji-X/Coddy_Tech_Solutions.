bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    cmp r8, r9
    jg .done
    sub r9, r8
    mov rax, r9
    ret

.done:
    sub r8, r9
    mov rax, r8
    ret

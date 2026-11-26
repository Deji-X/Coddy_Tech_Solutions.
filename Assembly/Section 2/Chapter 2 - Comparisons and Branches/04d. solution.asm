bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    cmp r8, r9
    jb .below
    ja .above
    ret

.below:
    mov rax, 1
    ret

.above:
    mov rax, 2
    ret

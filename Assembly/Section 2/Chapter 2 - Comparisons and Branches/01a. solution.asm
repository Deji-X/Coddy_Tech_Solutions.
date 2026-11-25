bits 64
section .text
global solve
extern values
solve:
; Write your comparison here.
mov rax, 0
mov rax, r8
mov rbx, r9
cmp rax, rbx
ret

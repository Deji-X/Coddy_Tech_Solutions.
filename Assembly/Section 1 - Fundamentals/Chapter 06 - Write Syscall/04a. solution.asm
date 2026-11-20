section .data
    color db 'Red', 0x0a
    colorLen equ $ - color

section .text
    ; TODO: Set rdx to the length of the string using colorLen
    mov rdx, colorLen

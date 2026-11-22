; TODO: Create the .data section
; TODO: Create a string called "msg" with value 'Hello, World!' followed by newline (0x0a)
; TODO: Create a constant called "msgLen" that calculates the length using $ - msg

section .data
    msg db 'Hello, World!', 0x0a
    msgLen equ $ - msg

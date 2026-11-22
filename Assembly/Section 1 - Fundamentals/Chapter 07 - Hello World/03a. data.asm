; TODO: Create the .data section
; TODO: Create a string called "msg" with value 'Hello, World!' followed by newline (0x0a)
; TODO: Create a constant called "msgLen" that calculates the length using $ - msg

section .data
    word1 db 'Hello'
    word1Len equ $ - word1

    word2 db ', '
    word2Len equ $ - word2

    word3 db 'World!', 0x0a
    word3Len equ $ - word3

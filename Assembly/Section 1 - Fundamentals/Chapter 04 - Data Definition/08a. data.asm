; TODO: Create the .data section
; TODO: Create a string called "welcome" with the value 'Welcome!' followed by newline (0x0a)
; TODO: Create a constant called "welcomeLen" that calculates the length using $ - welcome
; TODO: Create a byte called "score" with the value 99
; TODO: Create a word called "year" with the value 2025
; TODO: Create a double word called "population" with the value 8500000
; TODO: Create a quad word called "stars" with the value 100000000000

section .data

    welcome db 'Welcome!', 0x0a
    welcomeLen equ $ - welcome

    score db 99 
    year dw 2025
    population dd 8500000
    stars dq 100000000000

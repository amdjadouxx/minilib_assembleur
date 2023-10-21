section .data
    hello db 'Hello, World!',0
    format db '%s', 0

section .text
global _start

extern printf, exit

_start:
    ; Appel à la fonction printf
    mov rdi, format
    mov rsi, hello
    xor rax, rax
    call printf

    ; Appel à exit pour quitter le programme
    mov edi, 0
    call exit

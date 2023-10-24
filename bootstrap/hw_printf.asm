;this function HAS TO BE MODIFIED if you want to link it in the library
BITS 64

section .data
    flags db "%s", 10, 0
    msg db "Hello, World!(from printf)", 0

section .text
global _start

extern printf, exit

_start:
    mov rdi, flags
    mov rsi, msg
    call printf

    mov rdi, 0
    call exit
    ret

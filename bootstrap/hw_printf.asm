BITS 64

section .text
global _printf_it

extern printf, exit

_printf_it:

    push rbp
    mov rbp, rsp

    ;rdi define by main
    ;rsi define by main
    xor rax, rax
    ;call printf
    mov rax, 0

    leave
    ret

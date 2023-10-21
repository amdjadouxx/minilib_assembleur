section .data
    hello db 'Hello, World (for printf)!',10 ,0
    format db '%s', 0
    hello2 db 'Hello, World (for write)!',10 ,0
    len_hello2 equ $ - hello2 

section .text
global _start

extern printf, exit

_start:
    ; Appel à la fonction _printf_it
    mov rdi, format
    mov rsi, hello
    call _printf_it

    mov rsi, hello2
    mov rdx, len_hello2
    call _write_it

    ;valeur de retour wtf
    mov rdi, rax
    call exit

%include "./hw_printf.inc"
%include "./hw_write.inc"
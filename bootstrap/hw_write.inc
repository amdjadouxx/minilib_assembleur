WRITE : equ 1
STDOUT: equ 1

section .text
    global _write_it

    _write_it:
    mov rax, WRITE
    mov rdi, STDOUT
    ;rsi define by main
    ;rdx define by main
    syscall

    mov rax, 0
    ret

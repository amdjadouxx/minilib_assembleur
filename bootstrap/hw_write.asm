WRITE : equ 1
EXIT: equ 60

STDOUT: equ 1

section .data
    msg db 'Hello, World!', 10
    len equ $ - msg



section .text
    global _start

    _start:
    mov rax, WRITE
    mov rdi, STDOUT
    mov rsi, msg
    mov rdx, len
    syscall
    jmp exit

    exit:
    mov rax, EXIT
    mov rdi, 0
    syscall

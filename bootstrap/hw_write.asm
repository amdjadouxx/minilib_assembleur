BITS 64

section .text
    global writeit

    writeit:

        push rbp
        mov rbp, rsp

        mov rax, 1
        ;rdi define in main
        ;rsi define by main
        ;rdx define by main
        syscall

        mov rax, 0
        leave
        ret

BITS 64

section .data
    s1 db "lom", 0
    s2 db "lol", 0

section .text
    global _start

    _start:
        xor rax, rax
        xor rdi, rdi
        mov rax, s1
        mov rsi, s2
        jmp loop_cmp

    loop_cmp:
        mov r8b, [rax]
        mov r9b, [rsi]
        cmp r8b, r9b
        jne not_equal
        cmp r8b, 0
        je exit_label
        cmp r9b, 0
        je exit_label
        inc rax
        inc rsi
        jmp loop_cmp

    exit_label:
        mov rax, 60
        mov rdi, 0
        syscall

    not_equal:
        mov rdi, [rax]
        sub rdi, [rsi]
        mov rax, 60
        syscall

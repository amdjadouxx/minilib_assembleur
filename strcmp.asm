BITS 64

section .data
    s1 db "lol", 0
    s2 db "lom", 0

section .text
    global my_strcmp

    my_strcmp:
        xor r8, r8
        xor r9, r9
        xor rax, rax
        xor rdi, rdi
        xor rsi, rsi
        mov rdi, s1
        mov rsi, s2
        jmp loop_cmp

    loop_cmp:
        mov r8b, [rdi]
        mov r9b, [rsi]
        cmp r8b, r9b
        jne not_equal
        cmp r8b, 0
        je exit_label
        cmp r9b, 0
        je exit_label
        inc rdi
        inc rsi
        jmp loop_cmp

    exit_label:
        ret

    not_equal:
        mov rax, r8
        sub rax, r9
        ret

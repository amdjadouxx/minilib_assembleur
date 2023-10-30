BITS 64

;compare content of RDI with content of RSI

;rdi string ptr
;rsi string ptr

section .text
    global my_strcmp

    my_strcmp:
        xor r8, r8
        xor r9, r9
        xor rax, rax

    loop_strcmp:
        mov r8b, [rdi]
        mov r9b, [rsi]
        cmp r8b, r9b
        jne not_equal_strcmp
        cmp r8b, 0
        je exit_strcmp
        cmp r9b, 0
        je exit_strcmp
        inc rdi
        inc rsi
        jmp loop_strcmp

    exit_strcmp:
        ret

    not_equal_strcmp:
        mov rax, r8
        sub rax, r9
        ret

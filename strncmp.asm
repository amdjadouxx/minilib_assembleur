BITS 64

segment .text
    global strncmp

strncmp:
    xor rax, rax
    xor r8, r8
    xor r9, r9

loop_strncmp:
    cmp rdx, 0
    je exit_strncmp
    mov r8b, [rdi]
    mov r9b, [rsi]
    cmp r8b, r9b
    jne not_equal_strncmp
    inc rdi
    inc rsi
    dec rdx
    cmp r8b, 0
    je exit_strncmp
    cmp r9b, 0
    je exit_strncmp
    jmp loop_strncmp
exit_strncmp:
    ret
not_equal_strncmp:
    mov rax, r8
    sub rax, r9
    ret
BITS 64

section .text
    global strcspn

strcspn:
    xor rax, rax
    xor rcx, rcx
    xor r8, r8
    xor r9, r9

loop_str_strcspn:
    cmp byte[rdi], 0
    je end_strcspn
    jmp loop_cmp_strcspn

continue_loop_str_strcspn:
    inc rdi
    jmp loop_str_strcspn

loop_cmp_strcspn:
    cmp byte[rsi + r8], 0
    je return_to_loop_str_strcspn
    mov r9b, byte[rsi + r8]
    cmp r9b, byte[rdi]
    je end_strcspn
    inc r8
    jmp loop_cmp_strcspn

return_to_loop_str_strcspn:
    inc rcx
    mov r8, 0
    jmp continue_loop_str_strcspn

end_strcspn:
    mov rax, rcx
    ret
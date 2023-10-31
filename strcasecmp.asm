BITS 64

;strcmp but ignore characters cases

;rdi string ptr
;rsi string ptr

section .text
    global my_strcasecmp
my_strcasecmp:
    xor rax, rax
    xor r8, r8
    xor r9, r9

loop_cmp_strcasecmp:
    mov r8b, byte[rdi]
    mov r9b, byte[rsi]
    jmp min_val_strcasecmp
continue_loop_cmp_strcasecmp:
    cmp r8, r9
    jne end_ne_strcasecmp
    cmp r8, 0
    je end_e_strcasecmp
    cmp r9, 0
    je end_e_strcasecmp
    inc rdi
    inc rsi
    jmp loop_cmp_strcasecmp

end_ne_strcasecmp:
    mov rax, r8
    sub rax, r9
    ret

end_e_strcasecmp:
    ret

min_val_strcasecmp:
    cmp r8, 'A'
    jge maj_case_s1
    jmp min_val_strcasecmp_s2

maj_case_s1:
    cmp r8, 'Z'
    jle move_s1_to_min_val    
    jmp min_val_strcasecmp_s2

move_s1_to_min_val:
    add r8, 32
    jmp min_val_strcasecmp_s2

min_val_strcasecmp_s2:
    cmp r9, 'A'
    jge maj_case_s2
    jmp continue_loop_cmp_strcasecmp

maj_case_s2:
    cmp r9, 'Z'
    jle move_s1_to_min_val    
    jmp continue_loop_cmp_strcasecmp

move_s2_to_min_val:
    add r9, 32
    jmp continue_loop_cmp_strcasecmp

BITS 64

;rdi = haystack
;rsi = needle
;return rax = pointer to first occurence of needle in haystack
section .text
global my_strstr
my_strstr:
    xor rax, rax
    xor r8, r8
    xor r9, r9
    xor rcx, rcx
    xor rdx, rdx

loop_main_strstr:
    cmp byte[rdi + rdx], 0
    je end_strstr_not_found
    jmp loop_cmp_str_strstr

continue_loop_main_strstr:
    mov rcx, 0
    jmp loop_main_strstr

continue_loop_main_strstr_ne:
    inc rdx
    jmp loop_main_strstr

loop_cmp_str_strstr:
    mov r8b, byte[rdi + rdx]
    mov r9b, byte[rsi + rcx]
    cmp r9b, 0
    je check_rcx_strstr
    cmp r8b, r9b
    jne continue_loop_main_strstr_ne
    inc rcx
    inc rdx
    jmp loop_cmp_str_strstr

check_rcx_strstr:
    cmp rcx, 0
    je end_strstr_not_found
    jmp end_strstr_found

end_strstr_not_found:
    mov rax, rdi
    ret

end_strstr_found:
    sub rdx, rcx
    lea rax, [rdi + rdx]
    ret
BITS 64

;rdi - string where to search
;rsi - string with characters to search for
;return - pointer to the first occurrence of any character from s2 in s1, or NULL if no such character is found

global my_strpbrk
section .text

my_strpbrk:
    xor rax, rax
    xor rcx, rcx
    xor rdx,rdx
    jmp loop_strpbrk

continue_loop_strpbrk:
    xor rdx, rdx
    inc rcx
    jmp loop_strpbrk

loop_strpbrk:
    cmp rsi, 0
    je end_strpbrk_not_found
    mov al, byte[rdi + rcx]
    cmp al, 0
    je end_strpbrk_not_found
    jmp loop_cmp_strpbrk

loop_cmp_strpbrk:
    cmp byte[rsi + rdx], 0
    je continue_loop_strpbrk
    cmp al, byte[rsi + rdx]
    je end_strpbrk
    inc rdx
    jmp loop_cmp_strpbrk

end_strpbrk:
    lea rax, [rdi + rcx]
    ret

end_strpbrk_not_found:
    xor rax, rax
    ret

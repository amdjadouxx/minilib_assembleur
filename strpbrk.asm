BITS 64

global strpbrk
section .text

strpbrk:
    xor rax, rax
    xor rcx, rcx
    xor rdx,rdx
    jmp loop_strpbrk

continue_loop_strpbrk:
    xor rdx, rdx
    inc rcx
    jmp loop_strpbrk

loop_strpbrk:
    cmp byte[rsi], 0
    je end_strpbrk_not_found
    cmp byte[rdi + rcx], 0
    je end_strpbrk_not_found
    mov al, byte[rdi + rcx]
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

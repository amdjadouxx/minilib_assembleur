BITS 64

section .text
    global strrchr    
strrchr:
    xor rax, rax
    xor rcx, rcx
    jmp loop_strrchr

loop_strrchr:
    cmp byte[rdi + rcx], 0
    je strrchr_end
    cmp byte[rdi + rcx], sil
    je strrchr_found
    inc rcx
    jmp loop_strrchr

strrchr_found:
    lea rax, [rdi + rcx]
    inc rcx
    jmp loop_strrchr

strrchr_end:
    ret
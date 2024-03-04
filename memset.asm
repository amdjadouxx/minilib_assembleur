BITS 64

section .text
    global memset

memset:
    xor rax, rax
    xor rcx, rcx

loop_memset:
    cmp rcx, rdx
    je end_memset
    mov byte[rdi + rcx], sil
    inc rcx
    jmp loop_memset

end_memset:
    mov rax, rdi
    ret
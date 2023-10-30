BITS 64

;fill rdi with rsi content, rdx times

section .text
    global my_memset

my_memset:
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
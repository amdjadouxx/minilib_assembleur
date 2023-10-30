BITS 64

;fill RDI with RSI's characters, RDX times

;rdi void ptr
;rsi int (value to fill RDI)
;rdx size (RDI's size)

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

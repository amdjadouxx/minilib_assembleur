BITS 64

section .text
    global writeit

    strlen:
        xor rcx, rcx
        xor rax, rax

    loop:
        mov rax, [rdi + rcx]
        cmp rax, 0
        je end_strlen
        inc rcx
        jmp loop

    end_strlen:
        ret
        

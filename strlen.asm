BITS 64

section .text
    global strlen

    strlen:
        xor rax, rax

    loop_strlen:
        cmp byte[rdi + rax], 0
        je end_strlen
        inc rax
        jmp loop_strlen

    end_strlen:
        ret
        

BITS 64

;copy rsi's characters in rdi, rdx times

;rdi void ptr
;rsi void ptr
;rdx int (counter)

section .text
    global my_memcpy

    my_memcpy:
        xor rax, rax
        mov rax, rdi
        xor rcx, rcx
        xor r8, r8

    loop_memcpy:
        cmp rcx, rdx
        je end_memcpy
        mov r8b, byte[rsi + rcx]
        mov byte[rax + rcx], r8b
        inc rcx
        jmp loop_memcpy
    
    end_memcpy:
        ret

BITS 64

;copy RSI content in RDI

;rdi void ptr (RDI and RSI must not be in the same memory's zone)  
;rsi void ptr
;rdx size (RSI length)

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

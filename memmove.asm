BITS 64

section .text
    global memmove

memmove:
    xor rax, rax
    mov rax, rdi
    mov rcx, rdi
    sub rcx, rsi
    cmp rcx, 0
    jl forward_memmove

backward_memmove:
    dec rdx

loop_backward_memmove:
    cmp rdx, 0
    jl end_memmove
    mov r8b, [rsi + rdx]
    mov [rdi + rdx], r8b
    dec rdx
    jmp loop_backward_memmove

forward_memmove:
    mov rcx, 0

loop_forward_memmove:
    cmp rcx, rdx
    je end_memmove
    mov r8b, [rsi + rcx]
    mov [rdi + rcx], r8b
    inc rcx
    jmp loop_forward_memmove

end_memmove:
    ret
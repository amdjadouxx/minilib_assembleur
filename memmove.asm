BITS 64

;move RDX's caracteres of RSI into RDI

;rdi void ptr (RDI and RSI can be in the same memory's zone)
;rsi void ptr
;rdx size (RSI length)

section .text
    global my_memmove

my_memmove:
    xor rcx, rcx
    mov rcx, rdx
    dec rcx
    xor r8, r8

stack_push_loop_memmove:
    cmp rcx, -1
    je insert_value_memmove
    mov r8b ,byte [rsi + rcx]
    push r8
    dec rcx
    jmp stack_push_loop_memmove

insert_value_memmove:
    mov rcx, 0
    jmp loop_change_val_memmove

loop_change_val_memmove:
    cmp rcx, rdx
    je end_memmove
    pop rax
    mov byte [rdi +rcx], al
    inc rcx
    jmp loop_change_val_memmove

end_memmove:
    ret

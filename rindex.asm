BITS 64

;rdi string ptr
;sti int or char (char to found)

section .text
    global my_rindex
my_rindex:
    xor rax, rax

loop_cmp_rindex:
    cmp byte [rdi], sil
    je change_rax_value
checkpoint_in_loop:
    cmp byte [rdi], 0
    je end_rindex
    inc rdi
    jmp loop_cmp_rindex
change_rax_value:
    mov rax, rdi
    jmp checkpoint_in_loop

end_rindex:
    ret

BITS 64

;search the first occurence of rsi in rdi and move the pointer at the location of the first occurence

section .text
    global my_strchr    
my_strchr:
    mov rax, rdi

loop_strchr:
    cmp byte[rax], 0
    je end_str_strchr
    cmp byte[rax], sil
    je end_strchr
    inc rax
    jmp loop_strchr

end_strchr:
    ret
end_str_strchr:
    mov rax, 0
    ret


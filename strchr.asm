global strchr
section .text

strchr:
    mov rax, rdi
    jmp loop_main_strchr

loop_main_strchr:
    cmp byte[rax], sil
    je end_success
    cmp byte[rax], 0
    je end_failed
    inc rax
    jmp loop_main_strchr

    end_success:
        ret

    end_failed:
        xor rax, rax
        ret
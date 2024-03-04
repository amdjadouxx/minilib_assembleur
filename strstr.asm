BITS 64

section .text
    global strstr

    strstr:
        xor r8b, r8b
        xor r9b, r9b
        jmp set_new_strstr
    check_end_str:
    	cmp r8b, 0
    	je end_null_strstr
    	inc rdi

    set_new_strstr:
    	mov rcx, 0
        mov r8b, [rdi]
    	mov r9b, [rsi]

    loop_main_strstr:
    	mov r8b, [rdi + rcx]
    	mov r9b, [rsi + rcx]
    	cmp r9b, 0
    	je end_found_strstr
    	cmp r8b, r9b
    	jne check_end_str
    	inc rcx
    	jmp loop_main_strstr

    end_found_strstr:
    	lea rax, [rdi]
        ret

    end_null_strstr:
    	mov rax, 0
        ret
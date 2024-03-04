BITS 64

section .text
    global strcasecmp
strcasecmp:
	cmp rdi, 0
	je end_strcasecmp
	cmp rsi, 0
	je end_strcasecmp
	jmp rdi_convert_strcasecmp

to_min_rdi_strcasecmp:
	add al, 32
	jmp rsi_convert_strcasecmp

to_min_rsi_strcasecmp:
	add dl, 32
	jmp cmp_and_relaunch_strcasecmp

rdi_convert_strcasecmp:
	mov al, byte[rdi]
	cmp al, 'A'
	jl rsi_convert_strcasecmp
	cmp al, 'Z'
	jl to_min_rdi_strcasecmp

rsi_convert_strcasecmp:
	mov dl, byte[rsi]
	cmp dl, 'A'
	jl cmp_and_relaunch_strcasecmp
	cmp dl, 'Z'
	jl to_min_rsi_strcasecmp

cmp_and_relaunch_strcasecmp:
	cmp al, 0
	je end_strcasecmp
	cmp dl, 0
	je end_strcasecmp
	cmp al, dl
	jne end_strcasecmp
	inc rsi
	inc rdi
	jmp rdi_convert_strcasecmp

end_strcasecmp:
	sub al, dl
	movsx rax, al
	ret

my_Getnbr:
    xor rax, rax
    xor rcx, rcx

loop_getnbr:
    movzx rdx, byte [rdi + rcx]
    cmp rdx, 0
    je  end_getnbr

    sub rdx, '0'
    imul rax, rax, 10
    add rax, rdx
    inc rcx
    jmp loop_getnbr

end_getnbr:
    ret
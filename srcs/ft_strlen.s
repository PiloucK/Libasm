section .text
        global ft_strlen

    ft_strlen:
        mov rcx, -1
        mov rdx, rdi
        mov al, 0
        repne scasb
        sub rdi, rdx
        dec rdi
        mov rax, rdi
        ret

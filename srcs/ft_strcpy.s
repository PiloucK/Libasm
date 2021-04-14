section .text
        global ft_strcpy

    ft_strcpy:
        mov     rax, rdi
        mov     rdx, rsi

    ft_strcpy_loop:
        mov     cl, byte [rdx]
        mov     byte [rax], cl
        inc     rdx
        inc     rax
        test    cl, cl
        jnz     ft_strcpy_loop

        mov     rax, rdi
        ret

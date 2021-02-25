section .text
        global ft_strcmp

    ft_strcmp:
        mov     rax, rdi
        mov     rdx, rsi

    ft_strcmp_loop:
        mov     cl, byte [rax]
        mov     ch, byte [rdx]
        inc     rdx
        inc     rax
        cmp     cl, ch
        jne     ft_strcmp_end

        test    cl, cl
        jnz     ft_strcmp_loop

    ft_strcmp_end:
        sub     cl, ch
        xor     rax, rax
        movsx   rax, cl
        ret

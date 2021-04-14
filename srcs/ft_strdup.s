extern  malloc
extern  ft_strlen
extern  ft_strcpy

section .text
        global ft_strdup

    ft_strdup:
        push    rdi             ;. save string address on the stack
        call    ft_strlen
        mov     rdi, rax
        call    malloc
        test    rax, rax
        jz      ft_strdup_error

        mov     rdi, rax
        pop     rsi             ;. put saved address to rsi from stack
        call    ft_strcpy

    ft_strdup_error:
        ret

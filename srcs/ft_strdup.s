extern  malloc
extern  ft_strlen
extern  ft_strcpy

section .text
        global ft_strdup

    ft_strdup:
        push    rdi

        call    ft_strlen
        mov     rsi, rdi
        mov     rdi, rax
        call    malloc      ;. deal with errno ?
        mov     rdi, rax
        call    ft_strcpy

        pop     rdi
        ret

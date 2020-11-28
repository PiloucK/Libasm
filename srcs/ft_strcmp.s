extern  ft_strlen

section .text
        global ft_strcmp

    ft_strcmp:
        mov r8, rdi
        mov r9, rsi

        push rbp
        call ft_strlen
        pop rbp

        mov rdi, r8
        mov rsi, r9
        inc rax
        mov rcx, rax
        repe cmpsb

        dec rsi
        dec rdi
        ; xor rax, rax
        
        ; cmovz rax, 0
        ; cmovg rax, 1
        ; cmovb rax, -1
        ret

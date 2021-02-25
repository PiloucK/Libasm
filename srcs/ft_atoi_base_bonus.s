section .text
        global ft_atoi_base

    ft_atoi_base:
        mov     r8, rsi                 ;. set r8 to the start of the base
        mov     r9, 1                 ;. set sign to -1
        xor     rax, rax

    ;. check for any whitespace, minus '-' and plus '+' in the base
    ; description passed as the second parameter
    ;. those are considered invalid and therefore make the function return 0
    base_check_loop:
        mov     cl, byte [r8]           ;. r8 address of the current character
        inc     r8
        test    cl, cl                  ;. check for the end of the base string
        je      base_len_check

        cmp     cl, 32                  ;. compare to ' '
        jbe     done             ;. take any value below or equal to
                                        ; ' ' as a non printable value and
                                        ; consider it as invalid

        cmp     cl, 43                  ;. compare to '+'
        je      done

        cmp     cl, 45                  ;. compare to '-'
        je      done

        mov     rdx, rsi

    ;. check for any repetition in the base going through the base string until
    ; it matches or compares the char with itself
    base_rep_check_loop:
        mov     ch, byte [rdx]
        inc     rdx                     ;. inc before cmp to keep the cmp flags
                                        ; untouched and match indexing between
                                        ; loops (both base_check and base_rep
                                        ; have a pointer on the next char)
        cmp     r8, rdx
        je      base_check_loop         ;. stop before comparison with itself

        cmp     cl, ch
        je      done

        jmp     base_rep_check_loop

    base_len_check:
        dec     r8
        sub     r8, rsi                 ;. r8 keeps the value of the base
        cmp     r8, 1
        jbe     done             ;. exclude bases lower than 2

    skip_whitespace:
        mov     cl, byte [rdi]           ;. r8 address of the current character
        inc     rdi
        test    cl, cl                  ;. check for the end of the number
        je      done

        cmp     cl, 32                  ;. compare to ' '
        jbe     skip_whitespace

        jmp     sign_loop

    minus:
        neg     r9

    plus:
        mov     cl, byte [rdi]
        inc     rdi

    sign_loop:
        cmp     cl, 45
        je      minus

        cmp     cl, 43
        je      plus

        mov     rdx, rsi

    pos_in_base:
        mov     ch, byte [rdx]
        inc     rdx
        test    ch, ch
        je      done

        cmp     cl, ch
        jne     pos_in_base

        dec     rdx
        sub     rdx, rsi
        mov     r10, rdx
        mul     r8
        add     rax, r10
        mov     rdx, rsi
        mov     cl, byte [rdi]
        inc     rdi
        jmp     pos_in_base

    done:
        mul     r9
        ret

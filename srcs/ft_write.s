extern  __errno_location

section .text
        global ft_write

    ft_write:
        mov     rax, 1
        syscall                     ;. in case of error the  syscall
                                    ; returns a value between -1 and
                                    ; -4095
        test    rax, rax            ;. set the SF flag (negative/sign flag)
        js      ft_write_error      ;. if signed

        ret

    ft_write_error:
        neg     rax                 ;. convert to positive value for errno
        mov     rdx, rax            ;. save rax for errno_location call
        call    __errno_location    ;. store in rax locatien of errno variable
        mov     [rax], rdx          ;. change the value of errno
        mov     rax, -1             ;. -1 being the expected error return
        ret

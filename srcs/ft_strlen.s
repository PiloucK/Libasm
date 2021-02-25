; Calculate the length of a NULL terminated C-string excluding the terminating
; null byte '\0'.
;
; Expected input in:    edi = address of the begining of the string
; Expect output in:     eax = length of the string, excluding terminating byte
; Clobbers:             flags, CL

; For learning purposes this implementation is the "loop then sub addresses"
; the idea is to take and test the value of the char at a maintained
; address and increment this address, repeating while the char is not
; the terminating byte.
; The length is then calculated through a substraction of the maintained
; address whith the input address - 1 due to incrementing before testing.
; Optimization discussion and global format of assembly file in
; https://codereview.stackexchange.com/a/213558
section .text
        global ft_strlen

    ft_strlen:
        mov     rax, rdi        ;. copies parameter address to leave it untouched

    ft_strlen_loop:
        mov     cl, byte [rax]  ;. takes the actual char value
        inc     rax             ;. inc before test because it would change the
                                ; value of the zero flag that we are going to
                                ; test and read
        test    cl, cl          ;. set ZF to 1 if cl == 0
        jnz     ft_strlen_loop  ;. jumps if ZF == 0, jne jumps if ZF != 1
                                ; we choose jnz as a better mnemonic

        sub     rax, rdi        ;. calculate the dif between addresses resuting
                                ; in string length + null byte
        dec     rax             ; exclude '\0'
        ret

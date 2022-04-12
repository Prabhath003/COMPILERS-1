.LC0:
        .string "I am inevitable"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 99
        jbe     .L3
        mov     eax, 0
        leave
        ret
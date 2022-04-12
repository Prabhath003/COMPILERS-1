.LC0:
        .string "hello"
.LC1:
        .string "hello2"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        cmp     DWORD PTR [rbp-4], 0
        jne     .L2
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        jmp     .L3
.L2:
        mov     edi, OFFSET FLAT:.LC1
        call    puts
.L3:
        mov     eax, 0
        leave
        ret
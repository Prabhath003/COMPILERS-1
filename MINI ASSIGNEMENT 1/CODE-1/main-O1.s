.LC0:
        .string "max: %d"
main:
        sub     rsp, 8
        mov     esi, 75
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        add     rsp, 8
        ret
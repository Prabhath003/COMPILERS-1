.LC0:
        .string "max: %d"
main:
        sub     rsp, 8
        mov     esi, 75
        mov     edi, OFFSET FLAT:.LC0
        xor     eax, eax
        call    printf
        xor     eax, eax
        add     rsp, 8
        ret
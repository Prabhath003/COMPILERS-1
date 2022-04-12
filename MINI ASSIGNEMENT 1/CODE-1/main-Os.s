.LC0:
        .string "max: %d"
main:
        push    rax
        mov     esi, 75
        mov     edi, OFFSET FLAT:.LC0
        xor     eax, eax
        call    printf
        xor     eax, eax
        pop     rdx
        ret
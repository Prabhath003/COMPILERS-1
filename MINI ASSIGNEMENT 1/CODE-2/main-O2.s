add:
        lea     eax, [rdi+rsi]
        ret
.LC0:
        .string "c: %d\n"
main:
        sub     rsp, 8
        mov     esi, 50
        mov     edi, OFFSET FLAT:.LC0
        xor     eax, eax
        call    printf
        xor     eax, eax
        add     rsp, 8
        ret
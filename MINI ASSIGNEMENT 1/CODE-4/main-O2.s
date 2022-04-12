.LC0:
        .string "I am inevitable"
main:
        push    rbx
        mov     ebx, 100
.L2:
        mov     edi, OFFSET FLAT:.LC0
        call    puts
        sub     ebx, 1
        jne     .L2
        xor     eax, eax
        pop     rbx
        ret
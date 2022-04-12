.LC0:
        .string "%d\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 20
        mov     DWORD PTR [rbp-8], 30
        mov     DWORD PTR [rbp-12], 21
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, DWORD PTR [rbp-12]
        mov     DWORD PTR [rbp-16], eax
        mov     eax, DWORD PTR [rbp-16]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
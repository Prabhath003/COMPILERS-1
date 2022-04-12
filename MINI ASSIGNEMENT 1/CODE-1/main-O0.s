.LC0:
        .string "max: %d"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-32], 75
        mov     DWORD PTR [rbp-28], 56
        mov     DWORD PTR [rbp-24], 25
        mov     DWORD PTR [rbp-20], 36
        mov     DWORD PTR [rbp-16], 42
        mov     eax, DWORD PTR [rbp-32]
        mov     DWORD PTR [rbp-4], eax
        mov     DWORD PTR [rbp-8], 1
        jmp     .L2
.L4:
        mov     eax, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-32+rax*4]
        cmp     DWORD PTR [rbp-4], eax
        jge     .L3
        mov     eax, DWORD PTR [rbp-8]
        mov     eax, DWORD PTR [rbp-32+rax*4]
        mov     DWORD PTR [rbp-4], eax
.L3:
        add     DWORD PTR [rbp-8], 1
.L2:
        cmp     DWORD PTR [rbp-8], 4
        jbe     .L4
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
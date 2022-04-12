.LC0:
        .string "%d\n"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-16], 25
        mov     DWORD PTR [rbp-4], 15
        mov     DWORD PTR [rbp-12], 0
        jmp     .L2
.L3:
        mov     DWORD PTR [rbp-20], 16
        mov     eax, DWORD PTR [rbp-12]
        lea     edx, [rax+rax]
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     edx, DWORD PTR [rbp-20]
        mov     eax, DWORD PTR [rbp-4]
        add     eax, edx
        mov     DWORD PTR [rbp-8], eax
        add     DWORD PTR [rbp-12], 1
.L2:
        mov     eax, DWORD PTR [rbp-16]
        cmp     DWORD PTR [rbp-12], eax
        jb      .L3
        mov     eax, DWORD PTR [rbp-8]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
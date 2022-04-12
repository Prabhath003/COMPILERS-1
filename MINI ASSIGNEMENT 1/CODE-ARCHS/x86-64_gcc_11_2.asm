factorial:
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        cmp     DWORD PTR [rbp-20], 0
        jne     .L2
        mov     eax, 1
        jmp     .L3
.L2:
        mov     eax, DWORD PTR [rbp-20]
        mov     DWORD PTR [rbp-4], eax
        mov     DWORD PTR [rbp-8], 1
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-8]
        imul    eax, DWORD PTR [rbp-4]
        mov     DWORD PTR [rbp-8], eax
        sub     DWORD PTR [rbp-4], 1
.L4:
        mov     ecx, DWORD PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-20]
        mov     edx, 0
        div     ecx
        cmp     DWORD PTR [rbp-20], eax
        jne     .L5
        mov     eax, DWORD PTR [rbp-8]
.L3:
        pop     rbp
        ret
.LC0:
        .string "Factorial of %d is %d"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 5
        mov     eax, DWORD PTR [rbp-4]
        mov     edi, eax
        call    factorial
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, eax
        mov     edi, OFFSET FLAT:.LC0
        mov     eax, 0
        call    printf
        mov     eax, 0
        leave
        ret
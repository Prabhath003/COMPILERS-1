factorial:
        sub     sp, sp, #32
        str     w0, [sp, 12]
        ldr     w0, [sp, 12]
        cmp     w0, 0
        bne     .L2
        mov     w0, 1
        b       .L3
.L2:
        ldr     w0, [sp, 12]
        str     w0, [sp, 28]
        mov     w0, 1
        str     w0, [sp, 24]
        b       .L4
.L5:
        ldr     w1, [sp, 24]
        ldr     w0, [sp, 28]
        mul     w0, w1, w0
        str     w0, [sp, 24]
        ldr     w0, [sp, 28]
        sub     w0, w0, #1
        str     w0, [sp, 28]
.L4:
        ldr     w0, [sp, 28]
        ldr     w1, [sp, 12]
        udiv    w0, w1, w0
        ldr     w1, [sp, 12]
        cmp     w1, w0
        bne     .L5
        ldr     w0, [sp, 24]
.L3:
        add     sp, sp, 32
        ret
.LC0:
        .string "Factorial of %d is %d"
main:
        stp     x29, x30, [sp, -32]!
        mov     x29, sp
        mov     w0, 5
        str     w0, [sp, 28]
        ldr     w0, [sp, 28]
        bl      factorial
        mov     w2, w0
        ldr     w1, [sp, 28]
        adrp    x0, .LC0
        add     x0, x0, :lo12:.LC0
        bl      printf
        mov     w0, 0
        ldp     x29, x30, [sp], 32
        ret
factorial:
        daddiu  $sp,$sp,-48
        sd      $fp,40($sp)
        move    $fp,$sp
        move    $2,$4
        sll     $2,$2,0
        sw      $2,16($fp)
        lw      $2,16($fp)
        bne     $2,$0,.L2
        nop

        li      $2,1                        # 0x1
        b       .L3
        nop

.L2:
        lw      $2,16($fp)
        sw      $2,0($fp)
        li      $2,1                        # 0x1
        sw      $2,4($fp)
        b       .L4
        nop

.L5:
        lw      $3,4($fp)
        lw      $2,0($fp)
        mult    $3,$2
        mflo    $2
        sw      $2,4($fp)
        lw      $2,0($fp)
        addiu   $2,$2,-1
        sw      $2,0($fp)
.L4:
        lw      $2,0($fp)
        lw      $3,16($fp)
        divu    $0,$3,$2
        teq     $2,$0,7
        mfhi    $2
        mflo    $3
        lw      $2,16($fp)
        bne     $2,$3,.L5
        nop

        lw      $2,4($fp)
.L3:
        move    $sp,$fp
        ld      $fp,40($sp)
        daddiu  $sp,$sp,48
        jr      $31
        nop

.LC0:
        .ascii  "Factorial of %d is %d\000"
main:
        daddiu  $sp,$sp,-48
        sd      $31,40($sp)
        sd      $fp,32($sp)
        sd      $28,24($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(main)))
        li      $2,5                        # 0x5
        sw      $2,0($fp)
        lw      $2,0($fp)
        move    $4,$2
        ld      $2,%got_disp(factorial)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

        move    $3,$2
        lw      $2,0($fp)
        move    $6,$3
        move    $5,$2
        ld      $2,%got_page(.LC0)($28)
        daddiu  $4,$2,%got_ofst(.LC0)
        ld      $2,%call16(printf)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

        move    $2,$0
        move    $sp,$fp
        ld      $31,40($sp)
        ld      $fp,32($sp)
        ld      $28,24($sp)
        daddiu  $sp,$sp,48
        jr      $31
        nop
; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_400a

jr_01b_400a:
    inc e
    nop
    inc d
    ld [$0c1a], sp
    dec sp
    inc b
    ld c, $01
    dec d
    ld [bc], a
    jr z, jr_01b_401f

    ld a, [de]
    dec b
    ld l, $15
    ld a, [hl]
    rlca
    or l

jr_01b_401f:
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_402a

jr_01b_402a:
    jr c, jr_01b_402c

jr_01b_402c:
    jr z, @+$12

    ld e, b
    jr nc, @-$26

    jr nc, jr_01b_4083

    and b
    db $20, $c0
    db $10
    ldh [$58], a
    and b
    ld [hl], h
    xor b
    db $76
    add sp, -$53
    ld d, [hl]
    rrca
    ld b, $0f
    ld b, $1b
    ld b, $15
    ld a, [bc]
    daa
    jr @+$30

    add hl, de
    dec a
    ld a, [de]
    dec a
    ld a, [de]
    inc a
    dec de
    ld a, [de]
    dec c
    ld e, $0d
    dec c
    ld b, $0e
    inc bc
    rra
    rlca
    cpl
    inc e
    ld a, $00
    ld a, [hl]
    sbc c
    ld a, [hl]
    jp $ffff


    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_4076:
    ld a, [hl]
    rst $38
    jp $ff3c


    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4083:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ld [hl], h
    jr jr_01b_40cc

    inc c
    ld e, $01
    dec d
    ld [bc], a
    jr z, jr_01b_409f

    ld a, [de]
    dec b
    ld l, $15
    ld a, [hl]
    rlca
    or l

jr_01b_409f:
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_40aa:
    nop
    nop
    ld e, $00
    ld l, $18
    call c, Call_01b_5830
    and b
    jr nz, jr_01b_4076

    db $10
    ldh [$58], a
    and b
    ld [hl], h
    xor b
    db $76
    add sp, -$53
    ld d, [hl]
    ld a, b

jr_01b_40c1:
    nop
    ld [hl], h
    jr jr_01b_4100

    inc c
    ld e, $01
    daa
    nop
    inc c
    inc bc

jr_01b_40cc:
    ld a, [de]
    dec b
    ld c, $05
    ld c, $07
    dec b
    ld [bc], a
    rlca
    ld bc, $040b
    inc de
    rrca
    inc de
    rrca
    scf
    rra
    ld a, a
    scf
    ld e, $00
    ld l, $18
    call c, Call_01b_5830
    and b
    jr nz, jr_01b_40aa

    db $10
    ldh [$50], a
    and b
    ld [hl], b
    and b
    ld [hl], b
    ldh [$a0], a
    ld b, b
    ldh [$80], a
    ret nc

    jr nz, jr_01b_40c1

    ldh a, [$c8]
    ldh a, [$ec]
    ld hl, sp-$02
    db $ec

jr_01b_4100:
    ld a, [bc]
    rlca
    rrca
    ld b, $1f
    ld b, $2f
    ld d, $3b
    ld d, $3d
    ld [de], a
    ccf
    jr jr_01b_413d

    dec e
    rla
    inc c
    add hl, de
    ld b, $0e
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0001
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d

jr_01b_413d:
    add c
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0600
    ld bc, $011e
    cpl
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    jp Jump_01b_4200


    add c
    and l
    jp Jump_01b_43bd


    push hl
    ld a, [de]
    ld d, d
    inc l
    add c
    ld a, [hl]
    and l
    ld e, d
    rst $20
    ld e, d
    rst $20
    ld a, [hl]
    ld e, d
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    ld a, b
    add b
    db $f4
    jr c, @+$7f

    ld [bc], a
    jp $893c


    ld a, [hl]
    push af
    ld a, d
    sbc l
    ld [hl], d
    swap h
    ld a, a
    nop
    dec a
    ld a, [de]
    inc a
    dec de
    ld a, [de]
    dec c
    ld e, $0d
    dec c
    ld b, $0e
    inc bc
    rra
    rlca
    cpl
    inc e
    ld a, $00
    ld a, [hl]
    sbc c
    ld a, [hl]
    jp $ffff


    rst $38
    rst $38
    ld a, [hl]
    rst $38

jr_01b_41ca:
    ld a, [hl]
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    jp $ff3c


    nop
    rst $38
    nop
    nop
    nop
    ld a, b

jr_01b_41e1:
    nop
    ld [hl], h
    jr jr_01b_4220

    inc c
    ld e, $01
    daa
    nop
    inc c
    inc bc
    ld a, [de]
    dec b
    ld c, $05
    ld c, $07
    dec b
    ld [bc], a
    rlca
    ld bc, $040b
    inc de
    rrca
    inc de
    rrca
    scf
    rra
    ld a, a
    scf

Jump_01b_4200:
    ld e, $00
    ld l, $18
    call c, Call_01b_5830
    and b
    jr nz, jr_01b_41ca

    db $10
    ldh [$50], a
    and b
    ld [hl], b
    and b
    ld [hl], b
    ldh [$a0], a
    ld b, b
    ldh [$80], a
    ret nc

    jr nz, jr_01b_41e1

    ldh a, [$c8]
    ldh a, [$ec]
    ld hl, sp-$02
    db $ec

jr_01b_4220:
    ld e, $01
    cpl
    inc e
    ld a, l
    ld [bc], a
    jp $893c


    ld a, [hl]
    push af
    ld a, d
    sbc l
    ld [hl], d
    swap h
    ld a, a
    nop
    add hl, de
    ld b, $0e
    ld bc, $0103
    inc bc
    ld bc, $0103

Jump_01b_423c:
    ld [bc], a
    ld bc, $0001
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    ld b, d
    add c

jr_01b_4258:
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    jp RST_00


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld a, a
    nop
    db $eb
    inc [hl]
    xor l
    ld [hl], d
    sub c
    ld a, [hl]
    sbc a
    ld h, b
    cp l
    ld c, [hl]
    ld [hl], a

Jump_01b_427d:
    jr @+$30

    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    jp Jump_01b_4200


    add c
    inc h
    jp $c33c


    and l
    ld e, d
    ld e, d
    inc a
    sub c
    ld a, [hl]
    rst $20
    jr jr_01b_4258

    ld a, [hl]
    nop
    rst $38
    ld b, d
    cp l
    ld l, $15
    dec e
    ld b, $0f
    nop
    dec e
    ld c, $38
    rra
    jr nc, jr_01b_42cb

    jr nc, jr_01b_42cd

    jr c, jr_01b_42c7

    inc a
    dec de
    inc e
    dec bc
    ld e, $09
    ccf
    inc b
    ld l, $1b
    rla
    rrca
    rrca
    nop
    nop
    nop
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    nop
    rst $38
    nop

jr_01b_42c7:
    rst $38
    add c
    ld a, [hl]
    nop

jr_01b_42cb:
    rst $38
    nop

jr_01b_42cd:
    rst $38
    nop
    rst $38
    ld h, [hl]
    sbc c
    jp $a13c


    ld a, [hl]
    sub c
    ld a, [hl]
    add c
    ld a, [hl]
    db $db
    inc h
    rst $38
    nop
    nop
    nop
    rlca
    nop
    ld b, $01
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    db $eb
    inc [hl]
    xor l
    ld [hl], d
    sub c
    ld a, [hl]
    sbc a
    ld h, c
    cp [hl]
    ld c, e
    add c
    nop
    ld b, d
    add c
    inc a
    jp Jump_01b_5aa5


    ld e, d
    inc a
    sub c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    jp $663c


    jr jr_01b_436f

    inc a
    and l
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    add c
    ld a, [hl]
    ld [hl], a
    ld a, [de]
    dec l
    ld [de], a
    cpl
    db $10
    inc e
    inc bc
    ld [$1807], sp
    rrca
    jr nc, jr_01b_434d

    jr nc, @+$21

    ld sp, $3f1e
    jr jr_01b_4353

    dec c
    rrca
    ld bc, $0103
    inc bc
    ld bc, $0102
    ld bc, $8100
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]

jr_01b_434d:
    sbc c
    jp $813c


    ld a, [hl]
    and c

jr_01b_4353:
    ld a, [hl]
    and c
    ld a, [hl]
    di
    inc a

jr_01b_4358:
    db $d3
    cp l
    rst $30
    sbc c
    ld h, [hl]
    sbc c
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_436f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld a, [de]
    ld bc, $0106
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    ldh a, [rP1]
    ld [hl], b
    and b
    or b
    ld h, b
    ldh a, [$60]
    ld d, b
    ldh [$60], a
    add b
    jr nz, jr_01b_4358

    db $10
    ldh [rNR10], a
    ldh [$88], a
    ld [hl], b
    add a
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_43ab:
    nop
    db $fc
    nop
    inc bc
    db $fc
    add b
    ld a, a
    add b
    ld a, a
    adc a
    ld [hl], b
    sub b
    rst $28
    db $fc
    rst JumpTable
    rst JumpTable
    cp a
    ld a, a

Jump_01b_43bd:
    cp a
    rst $38
    ccf
    ld e, $01
    daa
    nop
    ld [$1607], sp
    dec c
    ld h, e
    dec e
    ld b, e
    ccf
    ld a, h
    dec de
    ld a, a
    nop
    rst $08
    jr nc, jr_01b_43ab

    ld h, a
    sub [hl]
    ld l, a
    sub e
    ld l, a
    pop de
    ld l, $78
    rlca
    rrca
    nop
    nop
    nop
    ld a, [c]
    rrca
    ld e, a
    and e
    ld l, $d7

jr_01b_43e6:
    add hl, hl
    sub $df
    ld hl, $0ff7
    rst $08
    ccf
    ldh [$1f], a
    ld a, a
    jr nz, jr_01b_4472

    ccf
    ccf
    rra
    rla
    rrca
    inc a
    inc bc
    ld d, a
    jr c, @+$81

    nop
    nop
    nop
    ld e, [hl]
    cp a
    cp a
    call c, $deed
    sub a
    xor $7f
    add [hl]
    jp $bf3f


    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_01b_43e6

    and b
    ld b, b
    db $10
    ldh [rNR10], a
    ldh [$90], a
    ldh [$b0], a
    ret nz

    ld [hl], b
    add b
    ret nc

    jr nz, jr_01b_4495

    ret nz

    ldh [$c0], a
    ld [hl], b
    ldh [$fe], a
    ld [hl], b
    db $dd
    ld a, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_4452

jr_01b_4452:
    dec b
    nop
    ld e, $01
    daa
    nop
    ld [$1607], sp
    dec c
    ld h, e
    dec e
    ld b, e
    ccf
    ld hl, sp+$00
    ld a, $c0
    sbc $38
    ld a, h
    ldh a, [rSVBK]
    add b
    jr nz, @-$3e

    db $10
    ldh [$08], a
    ldh a, [$86]
    ld a, b

jr_01b_4472:
    pop bc
    cp $f0
    rrca
    ld e, b
    and a
    ld l, $d3
    cpl
    sub $dd
    ld h, $fe

jr_01b_447f:
    ld bc, $0000
    add b
    nop
    ld h, b
    add b
    jr @-$1e

    add h
    ld a, b
    ld [bc], a
    db $fc
    ld bc, $0dfe
    ld a, [c]
    sub b
    rst $28
    xor $df
    cp a

jr_01b_4495:
    rst JumpTable
    ld a, a
    sbc a
    rst $38
    ld e, a
    rst $28
    rst JumpTable
    rst $38
    rst $08
    ei
    rst $20
    ld a, h
    dec de
    ld a, a
    nop
    rst $08
    jr nc, jr_01b_447f

    ld h, a
    sub [hl]
    ld l, a
    sub e
    ld l, a
    pop de
    ld l, $78
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    rra
    cpl
    rra
    daa
    rra
    jr nc, jr_01b_44d7

jr_01b_44c8:
    ccf
    db $10
    ccf
    rra
    cpl
    rra
    rra
    rrca
    dec de
    rlca
    ld c, $01
    inc bc
    nop
    nop

jr_01b_44d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add $f9
    rra
    ldh [$fc], a
    ld [$182c], sp
    inc l
    jr jr_01b_451f

    ld [$001c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_01b_44c8

    ret nc

    and b
    ldh a, [$a0]
    ld hl, sp-$70
    or h
    ret z

    db $fc
    add sp, -$06
    inc l
    or $6c

jr_01b_4516:
    db $fd
    ld h, [hl]
    rst $30
    ld h, d
    or e
    ld h, b
    ret nc

    jr nz, @+$72

jr_01b_451f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec sp
    nop
    ld d, [hl]
    add hl, sp
    ld a, e
    dec a
    ld a, a
    dec b
    db $dd
    ld a, [hl-]

jr_01b_4536:
    cp e
    ld b, h

jr_01b_4538:
    rst $00
    jr c, jr_01b_4516

    ld h, h
    xor a
    ld [hl], b
    or d
    ld a, l
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld e, $01
    ld h, c
    ld e, $80
    ld a, a
    add e
    ld a, h
    ld a, h
    add e
    ld c, c
    or a
    db $e3
    inc e
    and [hl]
    ld e, c
    inc bc
    db $fc
    ld c, d
    or l
    adc $b5
    call $007a
    nop
    ldh [rP1], a
    db $10
    ldh [$60], a
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    and b
    ld b, b
    jr nz, jr_01b_4536

    jr nz, jr_01b_4538

    or b
    ld b, b
    add sp, $10
    ld a, b
    sub b
    cp h
    ret c

    and d
    ld a, l
    rst $00
    jr c, @+$81

    nop
    ld e, l
    ld a, [hl-]
    ld l, $19
    ld a, [de]
    dec b
    cpl
    inc e
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4596:
    nop
    nop

jr_01b_4598:
    nop
    nop

jr_01b_459a:
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld c, d
    db $fd
    add [hl]
    ld a, c
    cp $82
    ld a, l
    rst $38
    ld bc, $c1bf
    ld a, a
    db $fc
    push bc
    dec sp
    ccf
    nop
    inc c
    inc bc
    jr @+$09

    inc d
    dec bc
    inc e
    inc bc
    dec bc
    rlca
    ld [$0707], sp
    nop
    cp h
    ret c

    db $f4
    ret c

    db $ec
    ret nc

    ld hl, sp-$40
    db $ec
    ret nc

    db $f4
    ret c

    cp h
    ld e, b
    db $fc
    add b
    and b
    ld b, b
    ld h, b
    add b
    jr nz, jr_01b_4596

    jr nz, jr_01b_4598

    jr nz, jr_01b_459a

jr_01b_45da:
    and b
    ret nz

    ld h, b
    add b
    ret nz

    nop
    inc bc
    nop
    ld b, $01
    dec b
    inc bc
    inc b
    inc bc
    rrca
    nop
    dec de
    inc b
    rla
    ld [$021d], sp
    dec de
    ld b, $0f
    ld b, $0b
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0000
    nop
    ldh [rP1], a
    db $10
    ldh [$d0], a
    ldh [$38], a
    ret nz

    jr z, jr_01b_45da

    ret z

    jr nc, @+$3b

    ret nz

    sbc [hl]
    ld h, c
    jp nc, $ad2d

    ld e, $c8
    ccf
    ld h, h
    sbc e
    dec sp
    db $fc
    adc h
    rst $38
    jp nz, $873d

    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    jr nc, @-$3e

    ld h, b
    add b
    ret nz

    nop
    ld a, [hl]
    nop
    rst $10
    inc l
    or l
    ld c, [hl]
    adc c
    ld a, [hl]
    ld sp, hl
    ld b, $fd
    or d
    xor $98
    ld bc, $0f00
    nop
    dec e
    ld c, $38
    rra
    jr nc, jr_01b_4669

    jr nc, jr_01b_466b

    jr c, jr_01b_4665

    jr c, jr_01b_4667

    inc e
    dec bc
    ld d, $09
    rrca
    inc b
    dec sp
    ld b, $2f
    ld a, [de]
    rla
    rrca
    rrca
    nop
    nop
    nop
    inc bc
    db $fd
    ld [bc], a
    db $fd
    inc bc

jr_01b_4665:
    db $fc
    add c

jr_01b_4667:
    ld a, [hl]
    nop

jr_01b_4669:
    rst $38
    nop

jr_01b_466b:
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    add [hl]
    ld a, c
    jp nz, Jump_01b_427d

    db $fd
    inc bc
    db $fc
    ld h, a
    sbc b
    sbc a
    ld h, b
    ldh a, [rP1]
    nop
    nop
    db $f4
    adc b
    call nc, $38e8
    ret nz

    ldh [rP1], a
    sbc b
    ld h, b
    inc e
    ldh a, [$0c]
    ld hl, sp+$1c
    add sp, $1c
    add sp, $34
    ret c

    add sp, $30
    db $fc
    ret nz

    db $f4
    ld a, b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_46a9:
    nop
    nop
    nop
    rst $00
    nop
    add hl, hl
    ld b, $f6
    add hl, bc
    dec sp
    rlca
    ld b, e
    inc a
    or c
    ld l, [hl]
    jr jr_01b_46a9

    sbc a
    ld a, b
    ei
    rlca
    ld a, a
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$c0]
    ldh [$80], a
    add b
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    or b
    ret nz

    adc $f0
    ld b, a
    cp b
    db $fc
    inc bc
    add a
    ld bc, $001f
    daa
    jr jr_01b_4716

    inc e
    dec hl
    inc e
    dec hl
    inc e
    scf
    add hl, bc
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    db $fc
    ldh a, [$7f]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    dec a
    cp $9b
    ld a, h
    rst $08
    ld [hl-], a
    rst $38
    ld c, $ff
    ld a, a
    cp a
    ld a, a

jr_01b_4716:
    ld e, [hl]
    ccf
    ld a, b
    rlca
    xor a
    ld [hl], b
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    nop
    jp nz, $b13d

    ld a, [hl]
    sbc c
    ld a, [hl]
    adc [hl]
    ld [hl], c
    rst $00
    jr c, @+$80

    nop
    ld hl, sp+$00
    ld b, $f8
    ld sp, $40ce
    cp a
    ldh a, [$7f]
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    ld e, [hl]
    cp c
    cpl
    db $dd
    cp $0d
    add a
    ld a, [hl]
    ld a, a
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    db $fc
    ldh [$ba], a
    ld a, h

jr_01b_477e:
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4789:
    nop
    nop
    nop
    rst $00
    nop
    add hl, hl
    ld b, $f6
    add hl, bc
    dec sp
    rlca
    ld b, e
    inc a
    or c
    ld l, [hl]
    jr jr_01b_4789

    jr @+$01

    db $e4
    db $db
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$c0]
    ldh [$80], a
    add b
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    jr c, jr_01b_477e

    ld e, $f0
    rst $30
    cp e
    ld a, a
    add c
    cp e
    inc b
    ld c, l
    ld [hl-], a
    ld d, b
    ccf
    ld d, b
    ccf
    ld d, c
    ld a, $61
    ld e, $3f
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld a, [$dbfc]
    db $fc
    db $db
    ld a, [hl]
    sbc e
    rst $30
    dec sp
    xor l
    ld d, [hl]
    ei
    ld c, h
    ld l, a
    sub d
    rst $38
    ld c, $ff
    ld a, a
    cp a
    ld a, a
    ld e, [hl]
    ccf
    ld a, b
    rlca
    xor a
    ld [hl], b
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    nop
    jp nz, $b13d

    ld a, [hl]
    sbc c
    ld a, [hl]
    adc [hl]
    ld [hl], c
    rst $00
    jr c, jr_01b_489d

    nop
    ld hl, sp+$00
    ld b, $f8
    ld sp, $40ce
    cp a
    ldh a, [$7f]
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    ld e, [hl]
    cp c
    cpl
    db $dd
    cp $0d
    add a
    ld a, [hl]
    ld a, a
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    db $fc
    ldh [$ba], a
    ld a, h
    cp $00
    jr c, jr_01b_4862

jr_01b_4862:
    inc [hl]
    ld [$00de], sp
    rst $30
    ld a, [bc]
    and c
    ld e, [hl]
    ld [hl], a
    ld a, [bc]
    ld [hl], $1d
    dec e
    inc bc
    ld [hl], a
    inc bc
    sbc l
    ld h, a
    bit 6, h
    adc l

jr_01b_4877:
    ld [hl], b
    ld [hl], c
    nop
    rrca
    nop
    dec bc
    rlca
    rlca
    nop
    ld [hl], b
    nop
    xor b
    ld [hl], b
    adc b
    ld [hl], b
    ret z

    jr nc, jr_01b_48ff

    nop
    push de
    ld h, d
    and a
    jp nz, $c2ff

    rst $10
    ld [$ec9b], a
    ld a, [hl-]
    call c, $38fc
    ld [hl], d
    db $fc
    sub a
    ld l, h
    rst $28

jr_01b_489d:
    add d
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    jp c, $be24

    ld h, b
    ld [hl], a
    ld a, [de]
    rst $28
    ld a, [de]
    cp d
    ld b, h
    ld a, a
    jr jr_01b_48cf

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_48ce

jr_01b_48ce:
    inc h

jr_01b_48cf:
    jr jr_01b_48fd

    jr jr_01b_48f1

    nop

jr_01b_48d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rla
    ld de, $8083
    ld sp, $7a30
    ld a, b
    ld a, b
    ld a, b
    add hl, de
    jr jr_01b_4877

    adc b
    nop

jr_01b_48f1:
    nop
    ccf
    nop
    ld h, c
    ld e, $7c
    ccf
    jp z, $c6bd

    ld sp, hl
    ld [hl], l

jr_01b_48fd:
    ld a, d
    rra

jr_01b_48ff:
    rra
    add c
    nop
    ld b, d
    add c
    cp l
    jp $1ae5


    ld [hl], d
    inc c
    pop bc
    ld a, $dd
    ld a, [hl]
    db $dd
    ld [hl], $dd
    ld a, [hl]
    or d
    ld c, h
    rst $30
    jr c, jr_01b_48d4

    ld b, d
    cp l
    ld a, [hl]
    cp h
    ld a, a
    cp $7f
    rst $38
    rst $38
    ldh [rP1], a
    cp $80
    db $db
    inc a
    pop hl
    ld e, $91
    ld l, [hl]
    sbc a
    ld h, b
    or c
    ld c, [hl]
    ld b, e
    inc a
    ld a, [hl]
    nop
    ld d, h
    jr c, @+$3e

    nop
    add sp, -$50

jr_01b_4938:
    db $ec
    inc [hl]
    call c, $386c
    ld hl, sp-$20
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld a, [de]
    ld bc, $0106
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    ldh a, [rP1]
    ld [hl], b
    and b
    or b
    ld h, b
    ldh a, [$60]
    ld d, b
    ldh [$60], a
    add b
    jr nz, jr_01b_4938

    db $10
    ldh [rNR10], a
    ldh [$88], a
    ld [hl], b
    add a
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_498b:
    nop
    db $fc
    nop
    inc bc
    db $fc
    add b
    ld a, a
    add b
    ld a, a
    adc a
    ld [hl], b
    sub b
    rst $28
    db $fc
    rst JumpTable
    rst JumpTable
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    ld e, $01
    daa
    nop
    ld [$1607], sp
    dec c
    ld h, e
    dec e
    ld b, e
    ccf
    ld a, h
    dec de
    ld a, a
    nop
    rst $08
    jr nc, jr_01b_498b

    ld h, a
    sub [hl]
    ld l, a
    sub e
    ld l, a
    pop de
    ld l, $78
    rlca
    rrca
    nop
    nop
    nop
    ld e, [hl]
    cp a
    cp a
    call c, $deed
    sub a
    xor $7f
    add [hl]
    jp $bf3f


    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, @-$3e

    and b
    ld b, b
    db $10
    ldh [rNR10], a
    ldh [$90], a
    ldh [$b0], a
    ret nz

    ld [hl], b
    add b
    ret nc

    jr nz, jr_01b_4a55

    ret nz

    ldh [$c0], a
    ld [hl], b
    ldh [$fe], a
    ld [hl], b
    db $dd
    ld a, $ff
    nop
    ld a, [c]
    rrca
    ld e, a
    and e
    ld l, $d7
    add hl, hl
    sub $de
    ld hl, $0cff

jr_01b_4a0c:
    ld_long a, $ff05
    add hl, hl
    rst $38
    ld l, l
    ld e, a
    inc a
    ccf
    inc bc
    rla
    rrca
    inc a
    inc bc
    ld d, a
    jr c, jr_01b_4a9c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_4a32

jr_01b_4a32:
    dec b
    nop
    ld e, $01
    daa
    nop
    ld [$1607], sp
    dec c
    ld h, e
    dec e
    ld b, e
    ccf
    ld hl, sp+$00
    ld a, $c0
    sbc $38
    ld a, h
    ldh a, [rSVBK]
    add b
    jr nz, jr_01b_4a0c

    db $10
    ldh [$08], a
    ldh a, [$86]
    ld a, b
    pop bc
    cp $f0

jr_01b_4a55:
    rrca
    ld e, b
    and a
    ld l, $d3
    cpl
    sub $dd
    ld h, $fe

jr_01b_4a5f:
    ld bc, $0000
    add b
    nop
    ld h, b
    add b
    jr @-$1e

    add h
    ld a, b
    ld [bc], a
    db $fc
    ld bc, $0dfe
    ld a, [c]
    sub b
    rst $28
    xor $df
    cp a
    rst JumpTable
    ld a, a
    sbc a
    rst $38
    ld e, a
    rst $28
    rst JumpTable
    rst $38
    rst $08
    ei
    rst $20
    ld a, h
    dec de
    ld a, a
    nop
    rst $08
    jr nc, jr_01b_4a5f

    ld h, a

jr_01b_4a88:
    sub [hl]
    ld l, a
    sub e
    ld l, a
    pop de
    ld l, $78
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4a9c:
    nop
    nop
    nop
    nop
    add $f9
    rra
    ldh [$fc], a
    ld [$182c], sp
    inc l
    jr jr_01b_4adf

    ld [$001c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_01b_4abc:
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_01b_4a88

    ret nc

    and b
    ldh a, [$a0]
    ld hl, sp-$70
    or h
    ret z

    db $fc
    add sp, -$06
    inc l
    or $6c
    db $fd
    ld h, [hl]
    rst $30
    ld h, d
    or e
    ld h, b
    ret nc

    jr nz, jr_01b_4b4f

jr_01b_4adf:
    nop
    xor $1d
    scf
    ld c, $3d
    ld [bc], a
    ld a, a
    inc d
    ld a, a
    ld [hl], $2f
    ld e, $3f
    ld bc, $0f1f
    dec de
    rlca
    ld c, $01
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, e
    inc e
    scf
    ld c, $0e
    ld bc, $0102
    inc bc
    ld bc, $0103
    rlca
    nop
    add hl, bc
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld d, b
    jr nz, @+$4a

    jr nc, jr_01b_4b9e

    db $10
    sbc h
    ld h, b
    ld a, [hl+]
    ret nc

    dec b
    ld hl, sp-$6c
    ld l, b
    sbc [hl]
    ld l, b
    sbc l
    ld a, [$ca37]
    cp a
    ld [hl], d
    dec c
    ld b, $1e
    dec c
    ccf

jr_01b_4b45:
    db $10
    dec a
    ld e, $3d
    ld c, $1f
    nop
    inc [hl]
    dec bc
    inc l

jr_01b_4b4f:
    dec de
    inc a
    dec de
    ld a, [hl-]
    dec e
    ld l, $1d
    ld de, $1d0e
    ld [bc], a
    cpl

jr_01b_4b5b:
    inc e
    ld e, a
    jr c, jr_01b_4bdb

    nop
    ld a, [hl]
    add a
    rst $38
    nop
    and c
    ld e, [hl]
    ld b, [hl]
    cp a
    ld c, h
    cp a
    cp b
    ld b, a
    pop af
    ld c, $ff
    ldh [rIE], a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld bc, $86fe
    ld a, c
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    ret z

    jr nc, jr_01b_4b5b

    jr c, jr_01b_4b45

    ld e, b
    cp h
    ld e, b
    cp h
    ld e, b
    or h
    ret c

    ld hl, sp-$50
    ld d, b
    and b
    cp h
    ld b, b
    add $38
    ld a, [$fefc]
    nop
    nop
    nop

jr_01b_4b9e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4ba5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    jp $bd3c


    ld a, [hl]
    cp l
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    db $db
    inc a
    ld a, [hl]
    nop
    ld h, b
    nop
    ld [hl], b
    jr nz, jr_01b_4bfd

    db $10
    inc [hl]
    jr jr_01b_4ba5

    ld [$4cfa], sp
    ld a, [hl]
    inc h
    ld l, [hl]
    inc [hl]
    ld e, l
    ld [hl], $3b
    ld d, $3f
    ld [de], a
    ccf
    ld [de], a
    cpl
    ld [de], a

jr_01b_4bda:
    rla

jr_01b_4bdb:
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    dec b
    ld [bc], a
    add hl, bc
    ld b, $0b
    inc b
    inc c
    inc bc
    dec bc
    rlca
    ld de, $1c0f
    inc bc
    ld [hl], a

jr_01b_4bfd:
    rrca
    call z, $003f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    db $e3
    inc e
    add [hl]
    ld a, b
    ld a, b
    add b
    jr nz, jr_01b_4bda

    ldh [rP1], a
    db $10
    ldh [rOBP0], a
    or b
    ld b, $03
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0100
    nop
    ld b, $01
    ld a, [de]
    dec b
    ld sp, $701e
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    cpl
    ld e, h
    inc sp
    cpl
    jr jr_01b_4cb5

    rlca
    cp a
    ld a, a
    rst $38
    nop
    ld bc, $c0fe
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc hl
    call c, $9e61
    ld c, b
    cp a
    call nz, $e03f
    rra
    ld a, e
    add h
    rst $08
    nop
    and b
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    ldh a, [rP1]
    cp b
    ld [hl], b
    inc e
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$08
    ldh a, [rNR32]
    ldh [$b4], a
    ld c, b
    add sp, $10
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    jp $bd3c


    ld a, [hl]
    cp l
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    db $db
    inc a
    ld a, [hl]
    nop
    ld b, $00
    ld c, $04
    inc e
    ld [$182c], sp
    dec sp
    db $10
    ld e, a
    ld [hl-], a
    ld a, [hl]
    inc h

jr_01b_4cae:
    db $76
    inc l

jr_01b_4cb0:
    cp d
    ld l, h

jr_01b_4cb2:
    call c, $fc68

jr_01b_4cb5:
    ld c, b
    db $fc
    ld c, b
    db $f4
    ld c, b
    add sp, $40
    and b
    ld b, b
    ld b, b
    nop
    ld bc, $0300
    nop
    ld a, [de]
    ld bc, $0305
    dec e
    ld [bc], a
    daa
    nop
    ld [$1607], sp
    dec c
    ld h, e
    dec e
    ld b, e
    ccf
    ld a, h
    dec de
    ccf
    nop
    rlca
    ld bc, $070f
    scf
    rrca
    ld e, a
    cpl
    add b
    nop
    add b
    nop
    add b
    nop
    sbc a
    nop
    db $e3
    inc e
    ld e, [hl]
    cp b
    jr c, jr_01b_4cae

    jr nz, jr_01b_4cb0

    jr nz, jr_01b_4cb2

    jr nz, @-$3e

    and b
    ld b, b
    and b
    ret nz

    sub b
    ldh [$90], a
    ldh [$88], a
    ldh a, [$c4]
    ld hl, sp+$00
    nop
    nop

jr_01b_4d03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0f00
    nop
    jr jr_01b_4d21

    rla
    rrca
    rrca
    nop
    nop
    nop
    dec sp

jr_01b_4d21:
    rla
    ld a, a
    inc [hl]
    ld a, [hl]
    ld hl, $3a7f
    ld a, a

jr_01b_4d29:
    ld a, [de]
    dec a
    ld [bc], a
    ld e, [hl]
    ld hl, $74fb
    ld a, c
    or $fc
    di
    ld h, h
    ei
    add d
    ld a, l
    rst $20
    jr jr_01b_4d03

    ldh a, [rIE]
    nop
    nop
    nop
    pop af
    adc [hl]
    call c, $b623
    ld c, c
    ld a, [bc]

jr_01b_4d47:
    db $fd
    dec bc
    db $fc
    ld a, [bc]
    db $fd
    add a
    ld a, c
    db $fd
    inc bc
    rst $30
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    sbc l
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    adc b
    ld [hl], b
    ld [hl], h

jr_01b_4d69:
    cp b
    db $fc
    jr c, jr_01b_4d69

    jr c, jr_01b_4deb

    cp b
    ld [hl], h
    cp b
    ld l, b
    or b
    ret z

    jr nc, jr_01b_4d47

    jr nz, jr_01b_4d29

    ld b, b
    adc b
    ld [hl], b
    cp h
    ld a, b
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4d85:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    jp $bd3c


    ld a, [hl]
    cp l
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    db $db
    inc a
    ld a, [hl]
    nop
    ld h, b
    nop
    ld [hl], b
    jr nz, @+$3a

    db $10
    inc [hl]
    jr jr_01b_4d85

    ld [$4cfa], sp
    ld a, [hl]
    inc h
    ld l, [hl]
    inc [hl]
    ld e, l
    ld [hl], $3b
    ld d, $3f
    ld [de], a
    ccf
    ld [de], a
    cpl
    ld [de], a
    rla
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    ld bc, $0003
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld bc, $0600
    ld bc, $011e
    cpl
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_4deb:
    nop
    add c
    nop
    ld b, d
    add c
    cp l
    jp $1ae5


    ld d, d
    inc l
    add c
    ld a, [hl]
    and l
    ld e, d
    rst $20
    ld e, d
    rst $20
    ld a, [hl]
    ld e, d
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    ld a, b
    add b
    db $f4
    jr c, jr_01b_4e9e

    ld [bc], a
    jp $893c


    ld a, [hl]
    push af
    ld a, d
    sbc l
    ld [hl], d
    swap h
    ld a, a
    nop
    dec a
    ld a, [de]
    inc a
    dec de
    ld a, [de]
    dec c
    ld e, $0d
    dec c
    ld b, $0e
    inc bc
    rra
    rlca
    cpl
    inc e
    ld a, $00
    ld a, [hl]
    sbc c
    ld a, [hl]
    jp $ffff


    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    jp $ff3c


    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01b_4e88

    jr nz, jr_01b_4e6c

    ld a, [hl]

jr_01b_4e6c:
    rra
    ldh [$3f], a
    ret nz

    ccf
    ld b, b
    rra
    jr nz, jr_01b_4e75

jr_01b_4e75:
    rra
    rrca
    jr nc, jr_01b_4e98

    jr nz, jr_01b_4e82

    jr jr_01b_4e7d

jr_01b_4e7d:
    rlca
    nop
    nop
    nop
    nop

jr_01b_4e82:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_01b_4e88:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $00ff


jr_01b_4e98:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01b_4e9e:
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rlca
    jr jr_01b_4eab

jr_01b_4eab:
    ld a, a
    rrca
    jr nc, jr_01b_4ece

    ldh [$1f], a
    jr nz, jr_01b_4ec2

    stop
    rrca
    inc bc
    inc e
    rlca
    jr jr_01b_4ebe

    inc c
    nop
    inc bc

jr_01b_4ebe:
    nop
    nop
    nop
    nop

jr_01b_4ec2:
    nop
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $00ff


jr_01b_4ece:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0700

jr_01b_4efd:
    ld bc, $070e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld b, c
    add b
    and d
    pop bc
    cp l
    ld b, e
    push hl
    ld a, [de]
    ld d, d
    inc l
    add c
    ld a, [hl]
    and l
    ld e, d
    rst $20
    ld e, d
    rst $20
    ld a, [hl]
    jp c, $0025

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld a, b
    add b
    db $f4
    jr c, jr_01b_4efd

    ld b, b
    dec d
    ld c, $1f
    inc c
    ccf
    nop
    ld l, b
    rla
    ld [hl], e
    inc l
    ld [hl], l

jr_01b_4f4b:
    ld l, $53
    cpl
    ld [hl-], a
    rrca
    ld a, [de]
    rlca
    rrca
    nop
    ld a, [bc]
    dec b
    dec d
    ld c, $1f
    ld c, $1f
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    sbc c
    ld a, [hl]
    jp Jump_01b_7fff


    rst $38
    ccf
    ld a, [hl]
    cp a
    cp $3f
    ld a, h
    cp a
    ld b, c
    cp [hl]
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    jp $ff3c


    nop
    ld a, a
    nop
    nop
    nop
    jp $913c


    ld a, [hl]
    xor a
    ld e, [hl]
    cp c
    ld c, [hl]
    db $d3
    inc l
    ld a, [hl]
    add b
    db $e4
    jr jr_01b_4f4b

    ld e, b
    inc a
    ret c

    ld d, h
    cp b
    ld a, b
    or b
    add sp, $30
    or b
    ld h, b
    db $fc
    ld [hl], b
    ld a, [$3e1c]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rra
    nop
    dec [hl]
    ld a, [de]
    ld d, [hl]
    add hl, sp
    ld c, b
    ccf
    ld e, a
    jr nz, @+$7f

    ld c, $77
    jr jr_01b_4fee

    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld b, c
    add b
    ld [hl+], a
    pop bc
    inc a
    jp Jump_01b_5aa5


    jp c, $913c

    ld a, [hl]
    rst $20
    jr @-$42

    ld a, a
    add d
    db $fd
    ld b, e
    cp l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a

jr_01b_4fee:
    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $10
    inc l
    or l
    ld c, [hl]
    adc c
    ld a, [hl]
    ld sp, hl
    add [hl]
    db $fd
    or d
    ld l, $17
    add hl, de
    ld b, $07
    nop
    rrca
    nop
    inc e
    rrca
    jr c, jr_01b_502b

    jr nc, jr_01b_502d

    jr nc, jr_01b_502f

    jr c, jr_01b_5029

    jr jr_01b_501b

    inc d
    dec bc
    rrca
    inc b
    rrca
    inc bc
    rra

jr_01b_501b:
    ld b, $2f
    inc e
    ccf
    nop
    add e
    ld a, l
    add d
    ld a, l
    inc bc
    db $fc
    ld bc, $81fe

jr_01b_5029:
    ld a, [hl]
    nop

jr_01b_502b:
    rst $38
    nop

jr_01b_502d:
    rst $38
    nop

jr_01b_502f:
    rst $38
    ld [de], a
    db $ed
    ld hl, $49de
    cp [hl]
    call nz, $c03f
    ccf
    and $19
    sbc a
    nop
    nop
    nop
    xor $98
    db $f4
    add sp, $14
    add sp, -$08
    nop
    inc d
    ld hl, sp+$0c

jr_01b_504b:
    ld hl, sp+$1c
    add sp, $1c
    add sp, $38
    ret nc

    ld hl, sp+$10
    db $fc
    jr nz, jr_01b_504b

    ld e, b
    add sp, $70
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0400], sp
    nop
    dec [hl]
    nop
    ld c, $01
    rrca
    nop
    db $10
    rrca
    inc l
    dec de
    add $3b
    add [hl]
    ld a, a
    ld sp, hl
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, h
    add b
    cp h
    ld [hl], b
    ld l, b
    ldh a, [$f0]
    nop
    ld b, b
    add b
    ld l, $c0
    add hl, de
    and $07
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc bc
    db $fc
    nop
    rst $38
    adc b
    ld [hl], a
    ret nc

    cpl
    ld [hl], a
    adc a
    rst $28
    rra
    rst $28
    sbc a
    rst $38
    sbc a
    ld a, a
    nop
    jp nz, $b13d

    ld a, [hl]
    sbc c
    ld a, [hl]
    adc [hl]
    ld [hl], c
    rst $00
    jr c, jr_01b_5149

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    adc b
    ld [hl], a
    db $fd
    ld c, $7b
    cp h
    ld b, [hl]
    cp c
    ei
    rlca

jr_01b_50ea:
    call c, $ef3b
    inc e
    ld a, [hl-]
    dec b
    rst $38
    add hl, hl
    rst $38
    ld l, l
    rst JumpTable
    cp h
    ccf
    pop bc

jr_01b_50f8:
    adc e
    ld [hl], a
    ld h, [hl]
    add hl, de
    dec e
    nop
    nop
    nop
    rst $38
    sbc a
    rst $28
    ld e, a
    rst $38
    rst $28
    cp $f7
    rst $00
    ld hl, sp+$0f
    ldh a, [$f2]
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5118:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_01b_50ea

    and b
    ret nz

    and b
    ret nz

    ldh [$80], a
    ldh a, [rP1]
    xor b
    ld [hl], b
    ld hl, sp-$10
    ret c

    jr nc, jr_01b_5118

    jr nc, jr_01b_50f8

    db $76
    ld a, [hl]
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5149:
    nop
    nop
    nop
    ld [$0400], sp
    nop
    dec [hl]
    nop
    ld c, $01
    rrca
    nop
    db $10
    rrca
    inc l
    dec de
    add $3b
    add [hl]
    ld a, a
    ld sp, hl
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, h
    add b
    cp h
    ld [hl], b
    ld l, b
    ldh a, [$f0]
    nop
    ld b, b
    add b
    ld l, $c0
    add hl, de
    and $07
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc bc
    db $fc
    nop
    rst $38
    ld [$10f7], sp
    rst $28
    or a
    rst $08
    rst $28
    rst JumpTable
    xor a
    rst JumpTable
    ccf
    rst JumpTable
    ld a, a
    nop
    jp nz, $b13d

    ld a, [hl]
    sbc c
    ld a, [hl]
    adc [hl]
    ld [hl], c
    rst $00
    jr c, jr_01b_5229

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0102
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    adc b
    ld [hl], a
    db $fd
    ld c, $7b
    cp h
    ld b, [hl]
    cp c
    ei
    rlca

jr_01b_51ca:
    rst $38
    ccf
    ld e, a
    ccf
    ccf
    rra
    inc l
    rra
    or c
    ld c, $ff
    sub c
    ld a, a
    rst $28

jr_01b_51d8:
    sbc a
    ld [hl], a
    ld h, [hl]
    add hl, de
    dec e
    nop
    nop
    nop
    ld a, a
    sbc a
    rst $28
    ld e, a
    rst $38
    rst $28
    cp $f7
    rst $00
    ld hl, sp+$0f
    ldh a, [$f2]
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_51f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    jr nz, jr_01b_51ca

    and b
    ret nz

    and b
    ret nz

    ldh [$80], a
    ldh a, [rP1]
    xor b
    ld [hl], b
    ld hl, sp-$10
    ret c

    jr nc, jr_01b_51f8

    jr nc, jr_01b_51d8

    db $76
    ld a, [hl]
    ldh [$f0], a
    nop
    db $76
    add hl, bc
    ld l, h
    inc de
    ld h, l
    ld a, [de]
    db $e3
    dec e
    and e

jr_01b_5229:
    ld e, h
    add l
    ld a, e
    and a
    ld e, d
    cp e
    ld b, l
    cp a
    ld e, b
    cp $11
    ld e, h
    inc hl
    ld h, e
    rra
    ld d, d
    dec l
    ld l, b
    scf
    ccf
    nop
    nop
    nop
    call c, Call_01b_6c20
    sub b
    ld c, h
    or b
    adc [hl]
    ld [hl], b
    adc d
    ld [hl], h
    ld b, d
    cp h
    jp z, $bab4

    ld b, h
    ld a, [$fe34]
    db $10
    ld [hl], h
    adc b
    adc [hl]
    ldh a, [$96]
    ld l, b
    ld [hl+], a
    call c, $1cf6
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $010e
    ld [de], a
    dec c
    cpl
    db $10
    add hl, sp
    ld b, $62
    dec e
    db $76
    add hl, bc
    ld l, h
    inc de
    ld h, l
    ld a, [de]
    db $e3
    dec e
    and e
    ld e, h
    add l
    ld a, e
    and a
    ld e, d
    or e
    ld c, l
    cp l
    ld d, d
    sbc $21
    or b
    ld a, a
    add a
    ld a, a
    ld b, [hl]
    add hl, sp
    ld a, b
    rrca
    ccf
    nop
    nop
    nop
    call c, Call_01b_6c20
    sub b
    ld c, h
    or b
    adc [hl]
    ld [hl], b
    adc d
    ld [hl], h
    ld b, d
    cp h
    jp z, $9ab4

    ld h, h
    ld a, d
    sub h
    or $08
    ld a, [de]
    db $fc
    jp nz, $c6fc

    jr c, jr_01b_52f5

    db $e4
    or $0c
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    scf
    nop
    ccf
    ld bc, $013e
    rst $38
    inc c
    ldh a, [$1f]
    pop bc
    ld a, $cf
    ld sp, $255e
    ld d, e
    inc l
    ld [hl], b
    rrca
    jp hl


    ld [hl], $c3
    ld a, l
    or e
    ld c, h
    ldh a, [rIF]
    ld e, c
    ld h, $eb

jr_01b_52f5:
    dec [hl]
    cp a
    ld b, b
    db $fc

jr_01b_52f9:
    inc bc
    cp $01
    inc bc
    nop
    ld bc, $0600
    ld hl, sp-$1a
    jr jr_01b_52f9

    ld c, b
    sub h
    ld l, b
    ld c, $f0
    ld e, $e4
    add d
    ld a, h
    sub [hl]
    ld l, b
    inc e
    ldh [rNR14], a
    add sp, -$4c
    ld c, b
    xor h
    ld d, b

jr_01b_5318:
    jr c, @-$3e

    and b
    ret nz

    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    inc b
    daa
    add hl, de
    ld a, [hl]
    ld bc, $4cbf
    ldh a, [$1f]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [$0003], sp
    scf
    nop
    ccf
    ld bc, $013e
    rst $38
    inc c
    ldh a, [$1f]
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, a
    dec de
    ld a, e
    inc [hl]
    cpl
    inc de
    rla
    add hl, bc
    scf
    ld [$1f70], sp
    ld d, b
    cpl
    ld h, e
    inc e
    ccf
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_5384

jr_01b_5384:
    ld l, a
    db $10
    rst JumpTable
    ld hl, $7e81
    inc bc
    db $fc
    ld b, [hl]
    cp c
    rst $08
    jr nc, jr_01b_5318

    ld a, d
    jp nz, $9e7d

    pop hl
    ld a, e
    add h
    sbc $21
    cp b
    rst $00
    db $fc
    inc bc

jr_01b_539e:
    ld a, e
    nop

jr_01b_53a0:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_53a0

    add $7f
    ldh [$1f], a
    db $ec
    inc de
    db $ed
    scf
    ret z

    xor [hl]
    ld d, a
    ld hl, sp+$0f
    ret nc

    cpl
    sbc a
    ld h, b
    ld sp, hl
    ld [hl], $70
    xor a
    ld sp, hl
    adc [hl]
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, b
    and b
    ld c, h
    or b
    di
    inc a
    db $fd
    ld e, $fe
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, a
    dec de
    ld a, e
    inc [hl]
    cpl
    inc de
    rla
    add hl, bc
    scf
    ld [$1f70], sp
    ld d, b
    cpl
    ld h, e
    inc e
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ei
    rlca
    adc h
    ld [hl], e
    ld [bc], a
    db $fd
    ld b, c
    cp [hl]
    rst $08
    jr nc, jr_01b_539e

    ld [hl], b
    push bc
    ld a, d
    add a
    ld sp, hl
    ld [hl], d
    adc l
    sbc $21
    or e
    call z, $1ee1
    inc sp
    inc e

jr_01b_541e:
    dec a
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_541e

    add $7f
    ldh [$1f], a
    db $ec
    inc de
    db $ed
    scf
    ret z

    ld l, $d7
    ld hl, sp+$0f
    ret nc

    cpl
    sub c
    ld l, [hl]
    db $eb
    ld [hl], h
    cp $f9
    rst $38
    nop
    sbc $00
    call c, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, b
    and b
    db $ec
    db $10
    inc sp
    call c, $ee1d
    ld e, $e0
    or b
    ld h, b
    ld [hl], b
    nop
    ld a, h
    inc bc
    ld h, l
    ld a, [de]
    db $e3
    inc e
    add a
    ld a, d
    and l
    ld e, e
    cp d
    ld b, l
    cp a
    ld e, b
    ld a, [hl]
    ld de, $235f
    ld [hl+], a
    dec e
    jr nc, jr_01b_5485

    ld a, a
    ld [$205f], sp
    ld l, b
    scf
    ccf
    nop
    nop
    nop
    ld a, h
    add b
    ld c, h
    or b
    adc [hl]

jr_01b_5485:
    ld [hl], b
    jp nz, Jump_01b_4abc

    or h
    cp d
    ld b, h
    ld a, [$fc34]

jr_01b_548f:
    db $10
    db $f4
    adc b
    adc h
    ld [hl], b
    inc e
    ldh [$fc], a
    jr nz, jr_01b_548f

    ld [$dc22], sp
    or $1c
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $010e
    ld [de], a
    dec c
    cpl

jr_01b_54bb:
    db $10
    dec sp
    inc b
    ld h, [hl]
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    ld a, [de]
    dec b
    inc [hl]
    dec bc
    daa
    jr @+$71

    ld de, $41be
    rst $28
    inc e
    pop bc
    ld a, $43
    dec a
    ld c, [hl]
    ld sp, $245b
    ld [hl], b
    rrca
    jp hl


    ld [hl], $c3
    ld a, l
    or e
    ld c, h
    ldh a, [rIF]
    ld e, c
    ld h, $eb
    dec [hl]
    cp a
    ld b, b
    db $fc
    inc bc
    cp $01
    inc bc
    nop
    ld bc, $0600
    ld hl, sp-$7c
    ld a, b
    db $e4
    jr jr_01b_54bb

    ld c, b
    ld c, $f0
    ld e, $e4
    add d
    ld a, h
    sub [hl]
    ld l, b
    inc e
    ldh [rNR14], a
    add sp, -$4c
    ld c, b
    xor h
    ld d, b
    jr c, @-$3e

    and b
    ret nz

    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_552a:
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    nop
    ld [hl], h
    dec sp
    sbc d
    ld h, l
    or h
    ld c, e
    rst $20
    jr jr_01b_552a

    ld de, $41be
    rst $28
    inc e
    rrca
    ld [bc], a
    rrca
    inc b
    ld c, $01
    dec [hl]
    ld a, [bc]
    ld [hl], a
    jr jr_01b_559e

    inc l
    ld b, c
    ld a, $3c
    inc bc
    rrca
    ld [bc], a
    rlca
    nop
    rrca
    nop
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    rst $38
    nop
    and b
    rst JumpTable
    pop bc
    ld a, [hl]
    db $d3
    xor h
    ldh [$9f], a
    pop bc
    ld a, [hl]
    rra
    ldh [rTAC], a
    ld a, [$33cc]
    ld a, b
    add a
    di
    inc c
    cp [hl]
    ld bc, $0778
    ld a, h
    inc bc
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_559e:
    ld l, h
    nop

jr_01b_55a0:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_55a0

    ld b, [hl]
    ld a, a
    ldh [$9f], a
    ld l, h
    sub e
    ld l, l
    scf
    ret z

    xor [hl]
    ld d, a
    ld hl, sp+$0f
    ret nc

    cpl
    sbc a
    ld h, b
    ld sp, hl
    ld [hl], $70
    xor a
    ld sp, hl
    adc [hl]
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, b
    and b
    ld c, h
    or b
    di
    inc a
    db $fd
    ld e, $fe
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    db $fc
    jr z, jr_01b_5610

    inc b
    ld c, $01
    dec [hl]
    ld a, [bc]
    ld [hl], a
    jr jr_01b_565c

    inc l
    ld b, c
    ld a, $3c
    inc bc
    rrca
    ld [bc], a

jr_01b_5610:
    rlca
    nop
    rrca
    nop
    ld [$0707], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    and e
    call c, Call_01b_7fc0
    db $d3
    xor h
    pop hl
    sbc [hl]
    ret nz

    ld a, a
    jr @-$17

    rrca
    ldh a, [$c5]
    ld a, [hl-]
    ld a, l
    add e
    ldh a, [rIF]
    cp [hl]
    ld bc, $0c13
    ld hl, $331e
    inc e

jr_01b_563e:
    dec a
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_563e

    ld b, [hl]
    rst $38
    ld h, b
    rra
    db $ec
    sub e
    ld l, l
    or a
    ld c, b
    xor [hl]
    ld d, a
    ld hl, sp+$0f
    ret nc

    cpl
    sub c
    ld l, [hl]
    db $eb
    ld [hl], h
    cp $f9
    rst $38
    nop

jr_01b_565c:
    sbc $00
    call c, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, b
    and b
    db $ec
    db $10
    inc sp
    call c, $ee1d
    ld e, $e0
    or b
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, l
    dec de
    ld a, e
    ld [hl], $2b
    inc d
    ld a, [de]
    dec b
    ld [hl], $09
    ld [hl], b
    rra
    ld d, c
    ld l, $63
    dec e
    ld a, $01
    inc bc
    nop
    nop
    nop
    jr jr_01b_56a4

jr_01b_56a4:
    ld l, a
    db $10
    rst JumpTable
    ld hl, $7e81
    inc bc
    db $fc
    ld b, [hl]
    cp c
    rst $08
    jr nc, jr_01b_5718

    ld a, [$fd42]
    ld [bc], a
    db $fd
    rlca
    ld hl, sp-$72
    ld [hl], c
    ld a, b
    add a
    inc a
    jp $00fb


    db $76
    add hl, bc
    ld l, h
    inc de
    ld h, l
    ld a, [de]
    db $e3
    dec e
    and e
    ld e, h
    add l
    ld a, e
    and a
    ld e, d
    cp e
    ld b, l
    cp a
    ld e, b
    cp $11
    call c, $e3a3
    rst JumpTable
    ld [hl], d
    ld l, l
    jr c, jr_01b_571b

    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $010e
    ld [de], a
    dec c
    cpl
    db $10
    add hl, sp
    ld b, $62
    dec e
    db $76
    add hl, bc
    ld l, h
    inc de
    ld h, l
    ld a, [de]
    db $e3
    dec e
    and e
    ld e, h
    add l
    ld a, e
    and a
    ld e, d
    or e
    ld c, l
    cp l
    ld d, d
    sbc $21
    or b
    rst $38
    add a
    rst $38

jr_01b_5718:
    add $f9
    ld [hl], b

jr_01b_571b:
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $010e
    ld [de], a
    dec c
    cpl
    db $10
    jr c, jr_01b_5743

    ld h, c
    ld e, $62
    dec e
    db $76
    add hl, bc
    ld l, h

jr_01b_5743:
    inc de
    ld h, l
    ld a, [de]
    db $e3
    dec e
    and e
    ld e, h
    add l
    ld a, e
    add a
    ld a, d
    and e
    ld e, l
    cp l
    ld c, [hl]
    sbc $a1
    ret nz

    cp a
    pop hl
    rst JumpTable
    ld [hl], e
    ld l, a
    ld a, [hl-]
    dec [hl]
    rra
    jr jr_01b_576e

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_576e:
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    scf
    nop
    ccf
    ld bc, $013e
    rst $38
    inc c
    ldh a, [$1f]
    pop bc
    ld a, $cf
    ld sp, $255e
    ld d, e
    inc l
    ld [hl], b
    rrca
    jp hl


    ld [hl], $c3
    ld a, l
    or e
    ld c, h
    ldh a, [rIF]
    reti


    and [hl]
    db $eb
    push de
    ld a, a
    ld [hl], b
    inc e
    dec de
    rrca
    rrca

jr_01b_579c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    dec de
    inc b
    daa
    add hl, de
    ld a, [hl]
    ld bc, $4cbf
    ldh a, [$1f]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [$0003], sp
    scf
    nop
    ccf
    ld bc, $013e
    rst $38
    inc c
    ldh a, [$1f]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, a
    dec de
    ld a, e
    inc [hl]
    cpl
    inc de
    rla
    add hl, bc
    scf
    jr z, jr_01b_582b

    ccf
    inc e
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_5808

jr_01b_5808:
    ld l, e
    db $10
    rst JumpTable
    ld hl, $7e81
    inc bc
    db $fc
    ld b, [hl]
    cp c
    rst $08
    jr nc, jr_01b_579c

    ld a, d
    jp nz, $9c7d

    db $e3
    ld a, e
    add h
    sbc $21
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_01b_5824:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_5824

jr_01b_582b:
    add $7f
    ldh [$1f], a
    db $ec

Call_01b_5830:
    inc de
    db $ed
    scf
    ret z

    xor [hl]
    ld d, a
    ld hl, sp+$0f
    ret nc

    cpl
    sbc a
    ld h, b
    ld sp, hl
    ld [hl], $ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, h
    and h
    ld e, h
    xor h
    ld hl, sp+$38

jr_01b_585e:
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, l
    dec de
    ld a, e
    ld [hl], $2b
    inc d
    ld a, [de]
    dec b
    db $76
    ld c, c
    ld h, b
    ld a, a
    add hl, sp
    ld a, $0f
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_5888

jr_01b_5888:
    ld l, e
    db $10
    rst JumpTable
    ld hl, $7e81
    inc bc
    db $fc

jr_01b_5890:
    ld b, [hl]
    cp c
    rst $08
    jr nc, jr_01b_58fc

    ld a, [$fd42]
    ld [bc], a
    db $fd
    rlca
    ld hl, sp-$72
    ld [hl], c
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, a
    dec de
    ld a, e
    inc [hl]
    cpl
    inc de
    rla
    add hl, bc
    scf
    ld [$9ff0], sp
    ret nc

    rst $28
    ld [hl], e
    ld a, h
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ei
    rlca
    adc h
    ld [hl], e
    inc bc
    db $fc
    ld b, c
    cp [hl]
    rst $08
    jr nc, jr_01b_585e

    db $76
    call nz, $867b
    ld sp, hl
    ld [hl], d
    adc l
    rst JumpTable
    jr nz, jr_01b_5890

    call z, $ffff
    nop
    nop

jr_01b_58e2:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_58e2

    add $7f
    ldh [$1f], a
    db $ec
    inc de
    db $ed
    scf
    ret z

    xor [hl]
    ld d, a

jr_01b_58f4:
    ld hl, sp+$0f
    ret nc

    cpl
    sub c
    ld l, [hl]
    db $eb
    ld [hl], h

jr_01b_58fc:
    cp $f9
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, b
    and b
    ld hl, sp+$08
    jr c, jr_01b_58f4

    ld [hl], b
    ldh a, [$c0]
    ret nz

    ld a, h
    inc bc
    ld h, l
    ld a, [de]
    db $e3
    inc e
    add a
    ld a, d
    and l
    ld e, e
    cp d
    ld b, l
    cp a
    ld e, b
    cp $11
    rst JumpTable
    and e
    ld [c], a
    db $dd
    ld [hl], b
    ld c, a
    ld a, a
    ld l, b
    ccf
    jr nz, jr_01b_5973

    scf
    rra
    jr jr_01b_594e

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_594e:
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $010e
    ld [de], a
    dec c
    cpl
    db $10
    dec sp
    inc b
    ld h, [hl]
    add hl, de
    ld a, h
    inc bc
    ld h, l
    ld a, [de]
    db $e3
    inc e
    add a
    ld a, d
    and l
    ld e, e
    cp d
    ld b, l
    cp a
    ld e, b
    cp [hl]
    ld d, c
    rst JumpTable
    inc hl
    or d

jr_01b_5973:
    ld a, l
    add b
    ld a, a
    rst $00
    cp h
    db $e4
    db $db
    ld a, a
    ld [hl], b
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    ld a, [de]
    dec b
    inc [hl]
    dec bc
    daa
    jr jr_01b_5a0a

    ld de, $41be
    rst $28
    inc e
    pop bc
    ld a, $4f
    ld sp, $255e
    ld d, e
    inc l
    ld [hl], b
    rrca
    jp hl


    ld [hl], $c3
    ld a, l
    or e
    ld c, h
    ldh a, [rIF]
    reti


    and [hl]
    db $eb
    push de
    ld a, a
    ld [hl], b
    inc e
    dec de
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_59ca:
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    nop
    ld [hl], h
    dec sp
    sbc d
    ld h, l
    or h
    ld c, e
    rst $20
    jr jr_01b_59ca

    ld de, $41be
    rst $28
    inc e
    nop
    nop
    ld b, $00
    rrca
    ld [bc], a
    rrca
    inc b
    ld c, $01
    dec [hl]
    ld a, [bc]
    ld [hl], a
    jr jr_01b_5a42

    inc l
    ld b, c
    ld a, $3c
    inc bc
    rrca
    ld [bc], a
    rlca
    nop
    rra
    db $10
    jr jr_01b_5a1b

    rrca
    rrca
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    add b
    rst $38
    nop
    and b
    rst JumpTable

jr_01b_5a0a:
    pop bc
    ld a, [hl]
    db $d3
    xor h
    ldh [$9f], a
    pop bc
    ld a, [hl]
    rra
    ldh [rTAC], a
    ld a, [$33cc]
    ld a, b
    add a
    di

jr_01b_5a1b:
    inc c
    cp $c1
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_01b_5a24:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_5a24

    ld b, [hl]
    ld a, a
    ldh [$9f], a
    ld l, h
    sub e
    ld l, l
    scf
    ret z

    xor [hl]
    ld d, a
    ld hl, sp+$0f
    ret nc

    cpl
    sbc a
    ld h, b
    ld sp, hl
    ld [hl], $ff
    rst $38
    nop
    nop

jr_01b_5a42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, h
    and h
    ld e, h
    xor h
    ld hl, sp+$38
    ldh [$e0], a
    nop
    nop
    ld b, $00
    rrca
    ld [bc], a
    rrca
    inc b
    ld c, $01
    dec [hl]
    ld a, [bc]
    ld [hl], a
    jr jr_01b_5ac2

    inc l
    ld b, c
    ld a, $3e
    ld bc, $0d16
    ld [de], a
    dec c
    add hl, bc
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5a81:
    nop
    ret nz

    nop
    ret nz

    add b
    rst $38
    nop
    and b
    rst JumpTable
    pop bc
    ld a, [hl]
    db $d3
    xor h
    ldh [$9f], a
    pop hl
    ld a, [hl]
    rst $08
    ldh a, [rTAC]
    ld a, [$f30c]
    jr jr_01b_5a81

    di
    inc c
    cp $c1
    ld a, a
    ld a, a
    ld b, $00
    rrca
    ld [bc], a
    rrca

Jump_01b_5aa5:
    inc b
    ld c, $01
    dec [hl]
    ld a, [bc]
    ld [hl], a
    jr jr_01b_5b00

    inc l
    ld b, c
    ld a, $3c
    inc bc
    rrca
    ld [bc], a
    rlca
    nop
    rrca
    nop
    jr @+$19

    rra
    jr jr_01b_5acc

    rrca
    nop
    nop
    ret nz

    nop

jr_01b_5ac2:
    ret nz

    add b
    cp $00
    and e
    call c, Call_01b_7fc0
    db $d3
    xor h

jr_01b_5acc:
    pop hl
    sbc [hl]
    ret nz

    ld a, a
    jr @-$17

    rrca
    ldh a, [$c5]
    ld a, [hl-]
    ld a, l
    add e
    ldh a, [rIF]
    cp $41
    di
    db $ec
    ccf
    ccf
    nop
    nop

jr_01b_5ae2:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_5ae2

    ld b, [hl]
    rst $38
    ld h, b
    rra
    db $ec
    sub e
    ld l, l
    scf
    ret z

    xor [hl]
    ld d, a

jr_01b_5af4:
    ld hl, sp+$0f
    ret nc

    cpl
    sub c
    ld l, [hl]
    db $eb
    ld [hl], h
    cp $f9
    rst $38
    rst $38

jr_01b_5b00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    ld l, b
    sub b
    ld e, b
    and b
    ld hl, sp+$08
    jr c, jr_01b_5af4

    ld [hl], b
    ldh a, [$c0]
    ret nz

    rlca
    nop
    dec de
    dec b
    ld [hl-], a
    dec c
    ld l, $11
    ld e, e
    inc h
    ld h, c
    ld e, $5a
    dec h
    ld l, [hl]
    ld de, $1be4
    db $e4
    dec de
    and b
    ld e, a
    sub b
    ld l, a
    ld b, e
    inc a
    ld h, e
    dec e
    ld a, [hl-]
    dec b
    rrca
    nop
    rrca
    nop
    dec sp
    rlca
    ld h, b
    rra
    ld b, h
    dec sp
    add $39
    xor a
    ld d, b
    cp d
    ld b, l
    db $e3
    dec e
    ld [c], a
    dec e
    ld [hl], e
    inc c
    ld e, h
    inc hl
    ld b, a
    jr c, jr_01b_5b79

    rra
    inc sp
    inc c
    dec de
    dec b

jr_01b_5b5e:
    rlca
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0304
    inc b
    inc bc
    ld [$1907], sp
    ld b, $38
    rla
    ld a, $03
    ld e, $03
    dec sp
    dec d
    dec [hl]
    ld a, [de]
    inc a

jr_01b_5b79:
    dec bc
    ld e, $01
    ld bc, $0000
    nop
    ld a, a
    nop
    and a
    ld e, a
    ld a, l
    add e
    call nz, $8c3b
    ld [hl], e
    ld e, $e1
    sub d
    ld l, l
    add l
    ld a, d
    rst $08
    jr nc, jr_01b_5b5e

    inc [hl]
    ld e, e
    xor h
    sbc e
    ld h, h
    rrca
    ldh a, [$4e]
    or c
    sbc e
    ld h, h
    ld a, a
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [$c0]
    ld a, b
    sub b
    ld l, b
    or b
    call z, $9c30
    ld h, b
    db $fc
    ld [$18e4], sp
    db $f4
    ret z

    inc a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$30], a
    ret nz

    ldh [rP1], a
    add b
    nop
    rlca
    nop
    ld a, e
    inc b
    ld h, c
    ld a, $56
    ccf
    add $3b
    sbc b
    ld [hl], a
    jp c, Jump_01b_613d

    ld e, $1f
    nop
    ei
    rlca
    pop hl
    ld e, a
    rst $30
    ld l, b
    ld a, a
    inc bc
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    jr c, jr_01b_5be2

jr_01b_5be2:
    ld a, b
    jr nc, jr_01b_5c5d

    db $10
    ret c

    jr nz, @-$36

    jr nc, @-$62

    ld h, b
    sbc $6c
    cp $6c
    rst $38
    db $ec
    db $fd
    ld [c], a
    ld sp, hl
    or $fb
    inc a
    ld a, [$c59c]
    cp [hl]
    sbc c
    ld h, [hl]
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    sbc $64
    adc d
    ld [hl], h
    ld e, a
    ld a, [hl+]
    db $fd
    ld a, [de]
    sbc $64
    ld [hl], l
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_5c2e

jr_01b_5c2e:
    inc h
    jr jr_01b_5c5d

    jr jr_01b_5c4f

    nop
    nop
    nop
    nop
    nop

jr_01b_5c38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld b, $03
    ld a, $01
    ld a, h
    dec de
    ld a, c

jr_01b_5c4f:
    scf
    dec hl
    ld d, $17
    ld [$0d32], sp
    ld [hl], b
    rra
    ld d, c
    ld l, $63
    inc e
    ccf

jr_01b_5c5d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ei
    rlca
    adc h
    ld [hl], e
    ld [bc], a
    db $fd
    ld bc, $5ffe
    and b
    rst $08
    jr nc, jr_01b_5c38

    ld a, [$e37d]
    or $09
    jp $86bc


    ld a, c

jr_01b_5c7c:
    rst $08
    ld [hl], b
    ld hl, sp+$00

jr_01b_5c80:
    nop
    nop
    ldh a, [rP1]
    rst $10
    jr nz, jr_01b_5c80

    add $7f
    ldh [$1f], a
    db $ec
    inc de
    db $ed
    scf
    ret z

    ld l, $d7
    ld hl, sp+$0f
    pop de
    ld l, $91
    ld l, [hl]
    jp hl


    db $76
    rst $30
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [$80], a
    or b
    ld b, b
    add sp, $10
    cp b
    ld b, b
    inc d
    add sp, $0b
    db $f4
    adc l
    db $76
    sbc $30
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01b_5cec

    dec c
    nop
    sbc a
    adc l
    rra
    ld [$031c], sp
    ld l, e
    rla
    rst $20
    jr c, jr_01b_5c7c

    ld e, h
    add c
    ld a, a
    ld a, c
    rlca
    sbc [hl]
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5cec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01b_5d1c

    adc b
    ld [$0080], sp
    rrca
    nop
    ld e, [hl]
    ld b, c
    ld sp, $7f0e
    nop
    sbc a
    ld h, b
    adc $71
    ei
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5d1c:
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld c, a
    or b
    inc bc
    db $fc
    ld b, a
    cp c
    jp $913c


    ld l, [hl]
    sbc l
    ld [c], a
    adc a
    ldh a, [$cc]
    inc sp
    rst $38
    nop
    rst $30
    inc c
    sbc d
    ld h, l
    rrca
    pop af
    dec de
    rst $20
    ccf
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    nop
    cp $79
    adc [hl]
    ld a, l
    cp $33
    ld a, [hl]
    inc bc
    rra
    rlca
    cpl
    rla
    ld e, a
    ld hl, $2b5f
    and a
    ld e, h
    add e
    ld a, h
    add d
    ld a, l
    add $39
    ld a, h
    inc bc
    inc a
    inc bc
    ld h, h
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc $00
    ld sp, hl
    ld b, $c5
    cp $03
    db $fc
    ld [bc], a
    db $fd
    jp $213c


    cp $81
    cp $81
    cp $3f
    nop
    ld a, a
    ld e, $f1
    ld a, $7f
    sbc h
    ld e, $e0
    ld [$04f0], sp
    ld hl, sp-$7c
    ld a, b
    jp nz, Jump_01b_423c

    cp h
    ld h, d
    sbc h
    add d
    ld a, h
    ld [bc], a
    db $fc
    add h
    ld hl, sp-$24
    ldh [$f6], a
    ld [$3d42], sp
    ld [hl], b
    rrca
    ld a, [$c735]
    ld a, b
    db $db
    ld h, h
    ld e, e
    inc h
    daa
    jr jr_01b_5eab

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $f9
    ld e, $e3
    cp $1f
    db $fc
    rst $38
    ld a, c
    cp $01

jr_01b_5eab:
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $ff3c


    nop
    nop
    nop
    nop
    nop
    ld b, d
    cp h
    ld c, $f0
    ld e, a
    xor h
    db $e3
    ld e, $db
    ld h, $da
    inc h
    db $e4
    jr jr_01b_5f07

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    nop
    cp $79
    adc [hl]
    ld [hl], c
    cp $33
    ld a, [hl]
    rlca
    rra
    rlca
    cpl
    rla
    ld e, a
    ld hl, $2b5f
    and a
    ld e, h
    add e
    ld a, h
    add d
    ld a, l
    add $39
    ld a, h
    inc bc
    inc a
    inc bc
    ld h, h
    dec de
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld a, [hl]

jr_01b_5f07:
    jr c, jr_01b_5f57

    inc a
    ld [hl], $0c
    ccf
    inc e
    rra
    inc b
    inc b
    inc bc
    dec c
    inc bc
    dec bc
    inc b
    add hl, bc
    ld b, $13
    inc c
    ld [hl-], a
    dec c
    ld l, e
    dec e
    ld [hl], d
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jp $003c


    rst $38
    add c
    ld a, [hl]
    and e
    ld e, h
    and c
    ld e, [hl]
    and b
    ld e, a
    pop de
    ld l, $71
    ld c, $d8
    ld h, a
    db $fd
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5f57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    db $db
    inc a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    rst $38
    add c
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    rst $20
    jr @+$01

    nop
    add c
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    db $fd
    ld [bc], a
    rst $38
    ld a, b
    adc a
    ld a, h
    rst $38
    inc a
    ld a, [hl]
    dec b
    rlca
    ld [bc], a
    rrca
    nop
    ld d, $09
    inc h
    dec de
    inc l
    inc de
    jr c, jr_01b_5fa5

    jr c, jr_01b_5fa7

    nop
    nop
    nop
    nop
    nop

jr_01b_5fa5:
    nop
    nop

jr_01b_5fa7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    sbc c
    ld a, [hl]
    ld a, [hl]
    add c
    jp $003c


    rst $38
    ld a, b
    rra
    ld b, b
    ccf
    ld b, h
    dec sp
    ld h, h
    dec de
    ld [hl], $09
    ld l, e
    inc [hl]
    ld h, c
    ld e, $3f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp l
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$b5f7], sp
    ld e, d
    rst $20
    jr @+$3e

    nop
    rrca
    nop
    ld d, $0f
    db $10
    rrca
    ld [hl], b
    rra
    db $76
    add hl, de
    ld a, c
    ccf
    ld a, h
    ccf
    inc a
    rrca
    jr c, jr_01b_6031

    jr jr_01b_601b

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_601b:
    nop
    nop

jr_01b_601d:
    nop
    nop
    nop
    nop

jr_01b_6021:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld [hl], $0f
    ld b, c
    ld a, $71
    ld c, $c8

jr_01b_6031:
    scf
    jr z, @-$07

    jr jr_01b_601d

    db $10
    rst $28
    jr jr_01b_6021

    ld [$08f7], sp
    rst $30
    ld [$00f7], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ld a, $e3
    ld a, h
    cp $78
    db $fc
    ld b, b
    ldh [$80], a
    cp h
    ld b, b
    ld sp, $e3ce
    ld e, $f1
    ld l, a
    ret c

    ld h, a
    ld l, b
    rla

jr_01b_606a:
    ld hl, sp+$07

jr_01b_606c:
    ld sp, hl
    ld c, $7f
    nop

jr_01b_6070:
    nop
    nop

jr_01b_6072:
    nop
    nop

jr_01b_6074:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    db $ec
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    sbc d
    ld h, a
    sub h
    ld l, a
    sub h
    ld l, a
    sub b
    ld l, a
    ldh a, [rIF]
    pop af
    ld e, $ff
    nop
    nop
    nop
    or b
    nop
    ld l, b
    or b
    ld c, b
    or b
    jr nc, jr_01b_606a

    jr nz, jr_01b_606c

    jr nz, @-$3e

    jr nz, jr_01b_6070

    jr nz, jr_01b_6072

    jr nz, jr_01b_6074

    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    db $fc
    nop
    cp $78
    adc a
    ld a, h
    db $fc
    dec sp
    ld a, l
    inc bc
    dec bc
    inc b
    ld de, $130e
    inc c
    ld a, [hl-]
    dec c
    inc sp
    dec e
    ld [hl+], a
    dec e
    inc hl
    inc e
    ld hl, $201e
    rra
    ld sp, $110e
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jp $813c


    ld a, [hl]
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    add hl, de
    ld b, $3f
    ld b, $2f
    ld [de], a
    scf
    jr jr_01b_6139

    rrca
    ld e, $01
    ld b, $03
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $db
    inc a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    jr @+$01

    nop
    rst $38
    jp Jump_01b_7e3c


    add c
    inc a

jr_01b_6139:
    jp $8166


    add c

Jump_01b_613d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld a, l
    inc bc
    ei
    inc [hl]
    pop af
    ld l, [hl]
    db $d3
    ld l, h
    ld a, [$f34d]
    ld e, l
    ld [c], a
    dec e
    inc hl
    inc e
    ld hl, $201e
    rra
    ld sp, $110e
    ld c, $03
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    rst $38
    nop
    cp $79
    adc a
    ld a, h
    cp $3d
    ld a, [hl]
    dec b
    rla
    ld a, [bc]
    daa
    jr @+$2e

    inc de
    jr z, jr_01b_618f

    jr c, jr_01b_6181

    jr c, jr_01b_6183

    inc e
    inc bc
    db $10
    rrca
    nop

jr_01b_6181:
    nop
    nop

jr_01b_6183:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_618f:
    nop
    add c
    nop
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    ld a, [hl]
    add c
    jp $003c


    rst $38
    cp l
    ld a, [hl]
    jr nc, jr_01b_61c1

    ld h, h
    dec sp
    ld b, [hl]
    add hl, sp
    ld b, e
    inc a
    ld h, [hl]
    add hl, de
    add hl, sp
    ld b, $0f
    inc b
    rrca
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_61b5:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_61bb:
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]

jr_01b_61c1:
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_01b_61b5

    inc [hl]
    db $db
    inc h
    db $db
    jr jr_01b_61bb

    nop
    rst $38
    jp Jump_01b_7e3c


    add c
    jp $8100


    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    inc bc
    nop
    ld bc, $0300
    nop
    ld b, $01
    dec bc
    inc b
    ccf
    ld [bc], a
    ld a, a
    inc e
    ld a, [hl]
    add hl, sp
    ld l, h
    dec sp
    ld l, h
    dec sp
    ld l, h
    inc sp
    ld a, b
    rlca
    db $10
    rrca
    nop
    nop
    rra
    nop
    inc l
    rra
    jr nz, jr_01b_6227

    ldh [$3f], a
    db $ec
    inc sp
    ld a, [c]
    ld a, a
    ld hl, sp+$7f
    ld a, b
    rra
    ld [hl], b
    ccf
    ld sp, $1f0e
    nop
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6227:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sub b
    ld h, b
    ld d, b
    ldh [$3c], a
    ret nz

    cpl
    call c, $ce33
    ld de, $10ee
    rst $28
    ld a, a
    nop
    rst $38
    ld a, $e3
    ld a, h
    cp $78
    db $fc
    ld b, b
    ldh [$80], a
    cp b
    ld b, b

jr_01b_624e:
    inc a
    ldh a, [$0e]
    ld hl, sp+$02
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $c1
    ld a, $81
    cp $10
    rst $28
    ld h, b
    sbc a
    ret z

    scf
    call c, $ccb3
    cp e
    add h
    ld a, e
    dec c
    ld a, [c]
    dec de
    push hl
    or $6b
    ld hl, sp+$47
    ld hl, sp+$07
    jr jr_01b_627f

    inc c
    inc bc
    inc bc
    nop
    ld b, $03
    rlca

jr_01b_627f:
    nop
    ld [bc], a
    db $fc
    ld b, $f8
    rrca
    ld a, [c]
    add hl, sp
    add $0e
    ldh a, [$88]
    ld [hl], b
    jr nc, jr_01b_624e

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    db $fc
    ld [hl], b
    db $fc
    cp b
    db $ec
    jr c, jr_01b_631b

    cp b
    ld l, [hl]
    or b
    ld a, d
    and h
    ld [hl], e
    adc h
    ld bc, $01fe
    cp $01
    cp $c1
    ld a, $81
    cp $1e
    nop
    ld [hl], $0c
    ld [hl], $1c
    scf
    inc e
    dec sp
    ld e, $1f
    inc c
    inc c
    inc bc
    dec b
    inc bc
    dec bc
    inc b
    ld de, $330e
    inc l
    ld a, d
    ld l, l
    ld [hl], e
    ld a, l
    ld a, $3d
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jp $813c


    ld a, [hl]
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    db $db
    inc a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jp $813c


    ld a, [hl]
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    jp $ff3c


    db $db
    rst $38
    sbc c
    rst $38
    inc a
    ld a, [hl]

jr_01b_631b:
    rst $20
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld [bc], a
    rlca
    nop
    ld [$1207], sp
    dec c
    ld h, a
    rra
    xor a
    ld d, l
    ld h, a
    rra
    inc de
    ld c, $7f
    ld bc, $5fe0
    di
    ld l, h
    ld a, a
    inc bc
    rlca
    inc bc
    inc bc
    nop
    ld bc, $3000
    nop
    ld a, b
    jr nc, jr_01b_63bd

    db $10
    ret c

    jr nz, jr_01b_6391

    or b
    ld c, h
    or b
    sbc $ac
    rst JumpTable
    ld l, h
    rst JumpTable
    db $ec
    adc l
    ld a, [c]
    add hl, bc
    or $83
    ld a, h
    ld [c], a
    sbc h
    rst $00
    cp b
    sbc l
    ld h, d
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    ld c, [hl]
    inc [hl]
    cp d
    ld [hl], h
    or a
    ld l, d
    ld h, a
    ld a, [de]
    sbc $60
    ld a, h
    jr jr_01b_638f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6387:
    nop
    nop
    nop
    nop
    nop
    jr jr_01b_638e

jr_01b_638e:
    inc [hl]

jr_01b_638f:
    jr jr_01b_63bd

jr_01b_6391:
    db $10
    jr jr_01b_6394

jr_01b_6394:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld a, [hl]
    jr c, jr_01b_63f7

    inc a
    ld [hl], $0c
    ccf
    inc e
    rra
    inc b
    inc b
    inc bc
    dec c
    inc bc
    dec bc
    inc b
    ld sp, $630e
    inc e
    ld [$b31d], a

jr_01b_63bd:
    ld e, l
    and d
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    db $db
    inc a
    nop
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    db $db
    inc a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    nop
    nop
    nop
    nop
    ld a, $00
    ld a, [hl]

jr_01b_63e7:
    inc e
    ld [hl], d

jr_01b_63e9:
    inc a
    ld l, h
    jr nc, jr_01b_63e9

    jr c, jr_01b_63e7

    jr nz, jr_01b_6411

    ret nz

    and b
    ret nz

    ret nc

    jr nz, jr_01b_6387

jr_01b_63f7:
    ld h, b
    ret z

    jr nc, jr_01b_6447

    or b
    sub $b8
    ld c, [hl]
    cp b
    and e
    ld e, h
    pop hl
    ld e, $f1
    ld c, $73
    inc c
    ld a, b
    daa
    ld [hl], b
    rrca
    dec d
    rrca
    rrca
    nop
    nop

jr_01b_6411:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    rst $38
    cp l
    ld a, [hl]
    rst $38
    add c
    cp $7f
    cp l
    ld a, [hl]
    ld h, a
    sbc b
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push bc
    ld a, [hl-]
    add l
    ld a, d
    dec c
    ld a, [c]
    sbc e

jr_01b_6447:
    ld h, h
    ld a, [hl]
    add b
    di
    ld c, $ff
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01b_645c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc

jr_01b_6468:
    db $fd
    ld [bc], a
    rst $38
    ld a, b
    adc a
    ld a, h
    rst $38
    inc a
    ld a, [hl]
    dec b
    rlca
    ld [bc], a
    rrca
    nop
    ld d, $09
    inc d
    dec bc
    inc e
    inc bc
    jr c, jr_01b_649d

    ld b, b
    ccf
    nop
    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    sbc c
    ld a, [hl]
    ld a, [hl]
    add c
    jp $003c


    rst $38
    nop
    rst $38
    cp l
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01b_649d:
    rst $38

jr_01b_649e:
    nop
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_01b_6468

    cp a
    ld b, b
    rst $38
    ld e, $f1
    ld a, $ff
    inc a
    ld a, [hl]
    and b
    ld hl, sp+$40
    db $ec
    db $10
    ld h, h
    sbc b
    inc h
    ret c

    inc [hl]
    ret z

    jr jr_01b_649e

    inc d
    ld hl, sp+$40
    ccf
    ld c, b
    scf
    jr z, jr_01b_64dd

    inc d
    dec bc
    ld c, $01
    rra
    nop
    rra
    nop
    rrca

jr_01b_64cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_64dd:
    nop
    nop
    nop
    jr @-$17

    inc l
    db $db
    inc h
    db $db
    jr jr_01b_64cf

    nop
    rst $38
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld hl, sp+$02
    db $fc
    ld [hl+], a
    call c, $d826
    ld a, h
    add b
    sub $2c
    add [hl]
    ld a, b
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_651d:
    nop
    nop
    nop
    nop

jr_01b_6521:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld [hl], $0f
    ld b, c
    ld a, $71
    ld c, $c8
    scf
    jr z, @-$07

    jr jr_01b_651d

    db $10
    rst $28
    jr jr_01b_6521

    ld [$08f7], sp
    rst $30
    ld [$00f7], sp
    nop
    ld a, a
    nop
    rst $38
    ld a, $e3
    ld a, h
    cp $78
    db $fc
    ld b, b
    ldh [$80], a
    cp h
    ld b, b
    inc de
    db $ec
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    nop
    ld d, $0f
    db $10
    rrca
    ld [hl], b
    rra
    db $76
    add hl, de
    ld a, c
    ccf
    ld a, h
    ccf
    inc a
    rrca
    jr c, jr_01b_6591

    jr jr_01b_657b

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_657b:
    nop
    nop
    nop
    nop
    nop
    ld sp, $e3ce
    ld e, $f1
    ld l, a
    ret c

    ld h, a
    ld l, b
    rla

jr_01b_658a:
    ld hl, sp+$07

jr_01b_658c:
    ld sp, hl
    ld c, $7f
    nop

jr_01b_6590:
    nop

jr_01b_6591:
    nop

jr_01b_6592:
    nop
    nop

jr_01b_6594:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    di
    sbc d
    ld h, a
    sub h
    ld l, a
    sub h
    ld l, a
    sub b
    ld l, a
    ldh a, [rIF]
    pop af
    ld e, $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    ld l, b
    or b
    ld c, b

jr_01b_65c7:
    or b
    jr nc, jr_01b_658a

    jr nz, jr_01b_658c

    jr nz, @-$3e

    jr nz, jr_01b_6590

    jr nz, jr_01b_6592

    jr nz, jr_01b_6594

    ld b, b
    add b
    ld b, b
    add b
    add b

jr_01b_65d9:
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld [hl], $0f
    ld b, c
    ld a, $e1
    ld e, $90
    ld l, a
    ld d, b
    rst $28
    jr nc, jr_01b_65c7

    jr nz, jr_01b_65d9

    jr nc, @-$2f

    db $10
    rst $28
    db $10
    rst $28
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ld a, $e3
    ld a, h
    cp $78
    db $fc
    ld b, b
    ldh [$80], a
    cp h
    ld b, b
    inc de
    db $ec
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rra
    nop
    inc l
    rra
    jr nz, @+$21

    ldh [$3f], a
    db $ec
    inc sp
    ld a, [c]
    ld a, a
    ld hl, sp+$7f
    ld a, b
    rra
    ld [hl], b
    ccf
    ld sp, $0f0e
    nop
    inc b
    inc bc
    dec c
    ld b, $0f
    nop
    rlca
    nop
    db $10
    rst $28
    ld h, h
    sbc e
    adc $39
    add $3d
    jp $873c


    ld a, b

jr_01b_664c:
    sbc a
    ldh [rIE], a
    nop

jr_01b_6650:
    nop
    nop

jr_01b_6652:
    nop
    nop

jr_01b_6654:
    nop
    nop

jr_01b_6656:
    nop
    nop
    nop
    nop

Call_01b_665a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $30
    add hl, bc
    rst $30
    inc e
    db $e3
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    ld l, b
    or b
    ld c, b
    or b
    jr nc, jr_01b_664c

    jr nz, @-$3e

    jr nz, jr_01b_6650

    jr nz, jr_01b_6652

    jr nz, jr_01b_6654

    jr nz, jr_01b_6656

    db $10
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [$f8], a
    jr nz, @-$0e

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01b_66c8

    jr nz, jr_01b_66ac

    ld a, [hl]

jr_01b_66ac:
    rra
    ldh [$3f], a
    ret nz

    ccf
    ld b, b
    rra
    jr nz, jr_01b_66b5

jr_01b_66b5:
    rra
    rrca
    jr nc, jr_01b_66d8

    jr nz, jr_01b_66c2

    jr jr_01b_66bd

jr_01b_66bd:
    rlca
    nop
    nop
    nop
    nop

jr_01b_66c2:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_01b_66c8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $00ff


jr_01b_66d8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rlca
    jr jr_01b_66eb

jr_01b_66eb:
    ld a, a
    rrca
    jr nc, jr_01b_670e

    ldh [$1f], a
    jr nz, jr_01b_6702

    stop
    rrca
    inc bc
    inc e
    rlca
    jr jr_01b_66fe

    inc c
    nop
    inc bc

jr_01b_66fe:
    nop
    nop
    nop
    nop

jr_01b_6702:
    nop
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    inc a
    jp $00ff


jr_01b_670e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ccf
    inc bc
    ld a, h
    rrca
    ldh a, [rIF]
    ldh a, [$03]
    ld a, h
    nop
    ccf
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    cp $78
    adc a
    ld a, h
    rst $38
    jr c, jr_01b_67f5

    inc bc
    dec d
    dec bc
    inc hl
    inc e
    cpl
    db $10
    ld e, [hl]
    dec l
    ld b, [hl]
    dec a
    ld b, e
    dec a
    ld b, e
    inc a
    ld h, $19
    inc e
    inc bc
    inc a
    inc bc
    ld h, h
    dec de
    ld b, d
    dec a
    ld [hl], b
    rrca
    ld a, [$c735]
    ld a, b
    db $db
    ld h, h
    ld e, e
    inc h
    daa
    jr jr_01b_67bb

    nop
    nop
    nop
    ld a, [hl]
    nop
    add c
    ld a, [hl]
    rst $38
    nop
    sbc c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    db $db
    inc a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    rst $38
    ld a, [hl]
    rst $38

jr_01b_67bb:
    add c
    ld a, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $ff3c


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ccf
    inc bc
    ld a, h
    rrca
    ldh a, [rIF]
    ldh a, [$03]
    ld a, h
    nop

jr_01b_67f5:
    ccf
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    db $fd
    ld [bc], a
    rst $38
    ld a, b
    adc a
    ld a, h
    cp $3d
    ld a, [hl]
    dec b
    scf
    ld a, [bc]
    inc hl
    inc e
    ld a, d
    dec b
    cp $31
    call nz, $bc7b
    ld b, e
    db $e4
    dec de
    ld b, h
    dec sp
    ld b, d
    dec a
    ld b, e
    inc a
    ld h, c
    ld e, $38
    rlca
    rra
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    sbc c
    ld a, [hl]
    ld a, [hl]
    add c
    jp $003c


    rst $38
    nop
    rst $38
    inc a

jr_01b_6871:
    rst $38
    ld a, [hl]
    rst $38

jr_01b_6874:
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_01b_6871

    rst $30
    jr jr_01b_6874

    jr jr_01b_68a7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_68a7:
    nop
    nop
    rrca
    nop
    ccf
    inc bc
    ld a, h
    rrca
    ldh a, [rIF]
    ldh a, [$03]
    ld a, h
    nop
    ccf
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $1a
    rlca
    ld hl, $401e
    ccf
    ld h, [hl]
    dec sp
    jr c, jr_01b_6917

    cp $39
    rst $38
    inc [hl]
    ld a, l
    ld d, $18
    rlca
    ld [$0807], sp
    rlca
    dec b
    ld [bc], a
    inc bc
    ld bc, $033c
    inc [hl]
    dec de
    db $10
    rrca
    ld a, [bc]

jr_01b_6917:
    dec b
    add hl, bc
    ld b, $09
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add c
    nop
    db $fd
    nop
    ld e, e
    cp h
    ld hl, $73de
    adc l
    di
    inc a
    ret nz

    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [hl], b
    adc a
    ldh [$1f], a
    or b
    rst $08
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, h
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp $7c
    add $f8
    db $fc
    ldh a, [$f8]
    add b
    ret nz

    nop
    add b
    nop
    ret nz

    add b
    ld h, b
    ret nz

    db $10
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rNR10]
    ldh [$30], a
    ret nz

    ld hl, sp+$10
    ret z

    jr nc, jr_01b_69cd

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    ccf
    rlca
    ld a, b
    rra
    ldh [$3e], a
    ret nz

    ld a, $c0
    rra
    ldh [rTAC], a
    ld a, b
    nop
    ccf
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add c

jr_01b_69cd:
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $070e
    jr c, jr_01b_6a08

    ld h, b
    inc a
    ld b, b
    jr c, @-$3e

    ld [hl], b
    add b
    ld [hl], b
    add b
    jr c, @-$3e

    inc a
    ld b, b
    rra
    ld h, b
    rlca
    jr c, @+$03

    ld c, $00
    inc bc
    nop
    nop
    nop
    ccf
    rra
    ldh [rIE], a
    nop
    ldh [rP1], a

jr_01b_6a08:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rra
    ldh [rP1], a
    ccf
    scf
    rrca
    dec bc
    rlca
    rra
    ld [$113f], sp
    cpl
    db $10
    rra
    nop
    rra
    rrca
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    ldh a, [$d0]
    ldh [$f8], a
    db $10
    db $fc

jr_01b_6a47:
    sbc b
    db $fc
    jr jr_01b_6a47

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    rrca
    dec bc
    rlca
    rlca
    nop
    rrca
    ld bc, $043f
    ccf
    ld b, $1f
    ld [bc], a
    ld c, $01
    ld c, $05
    ld c, $05
    ld c, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    ldh a, [$d0]
    ldh [$e0], a
    nop
    ldh a, [$80]
    ld hl, sp+$20
    ld hl, sp+$60
    ld hl, sp+$40
    ld [hl], b
    add b
    ld [hl], b
    and b
    ld [hl], b
    and b
    ld [hl], b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld bc, $003f
    ld b, b
    ccf
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    ld a, a
    dec d
    ld a, a
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ldh [rP1], a
    and b
    ret nz

    ldh a, [rP1]
    inc c
    ldh a, [$e2]
    inc e
    ld sp, hl
    ld b, $fd
    add d
    rst $38
    adc b
    rst $38
    xor b
    cp $b0
    dec de
    rlca
    dec b
    inc bc
    rrca
    inc b
    rra
    inc c
    rra
    dec b
    rla
    ld [$081f], sp
    rra
    ld [$0a1d], sp
    dec e
    ld [bc], a
    dec e
    ld a, [bc]
    ccf
    ld [$1c7f], sp
    rst $38
    ld a, a
    cp [hl]
    ld b, c
    rst $38
    nop
    or $f8
    rst $28
    or $ff
    ld c, $7e
    ret nz

    cp $00
    db $fc
    add b
    ld hl, sp-$50
    ld hl, sp-$80
    call z, $c6b0
    cp b
    rst $20
    sbc d
    rst $20
    ld e, d
    db $ed
    ld [de], a
    cp $00
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld bc, $003f
    ld b, b
    ccf
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    ld a, a
    dec d
    ld a, a
    dec c
    scf
    rrca
    dec bc
    rlca
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ldh [rP1], a
    and b
    ret nz

    ldh a, [rP1]
    inc c
    ldh a, [$e2]
    inc e
    ld sp, hl
    ld b, $fd
    add d
    rst $38
    adc b
    rst $38
    xor b
    cp $b0
    db $ec
    ldh a, [$d0]
    ldh [$3f], a
    ld [$0d3f], sp
    ld e, a
    inc l
    ld e, l
    inc hl
    ld l, c
    rla
    ld b, h
    dec sp
    jp $e07c


    ld a, a
    cp b
    ld a, a
    ld e, a
    ccf
    scf
    rrca
    ccf
    nop
    jr jr_01b_6b81

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6b81:
    inc a
    inc h
    inc a
    inc a
    inc a
    jr jr_01b_6bc4

    nop
    inc a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_01b_6be0

    nop
    inc a
    nop
    inc a
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    inc a
    nop
    inc a

jr_01b_6bc4:
    nop
    inc a
    inc h
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    ld b, d
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]

jr_01b_6be0:
    ccf
    nop
    rrca
    nop
    rla
    add hl, bc
    rla
    ld [$000f], sp
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6bfd:
    nop
    nop
    nop
    db $fc
    nop
    ldh a, [rP1]
    ld hl, sp-$70
    db $ec
    jr jr_01b_6bfd

    ld [$00f8], sp
    db $fc
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01b_6c20:
    ccf
    nop
    rrca
    nop
    rra
    add hl, bc
    rla
    ld [$001f], sp
    rra
    nop
    rrca
    nop
    ld c, $05
    rrca
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ldh a, [rP1]
    ld hl, sp-$70
    add sp, $10
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    and b
    ldh a, [rP1]
    ret nz

    add b
    ldh [$c0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rlca
    nop
    rrca
    nop
    scf
    ld [$087f], sp

jr_01b_6c76:
    rst $30
    inc c
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    db $fc
    nop
    sbc $20
    rst $38
    jr nz, jr_01b_6c76

    ld h, b
    cp a
    ret nz

    rst $38
    nop
    cp $00
    cp $00
    rra
    nop
    ccf
    jr jr_01b_6ce4

    inc e
    rra
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc c
    inc bc
    add hl, de
    ld b, $38
    rla
    add hl, sp
    ld d, $2c
    inc de
    rra
    nop
    rlca
    nop
    nop
    nop
    cp $00
    ld hl, sp+$00
    db $f4
    ret z

    db $f4

jr_01b_6cc7:
    ld [$00f8], sp
    db $fc
    nop
    db $ec
    jr nc, jr_01b_6cc7

    jr nc, jr_01b_6d4d

    or b
    cp $00
    rlca
    ld a, [$1ae7]
    dec c
    ld a, [c]
    cp $00
    ld hl, sp+$00
    nop
    nop
    ccf
    nop
    rrca
    nop

jr_01b_6ce4:
    rra
    add hl, bc
    ccf
    ld [$205f], sp
    ld e, c
    daa
    ld e, b
    daa
    ld [hl], h
    dec bc
    jp $e07c


    ld a, a
    cp b
    ld a, a
    ld e, a
    ccf
    scf
    rrca
    ccf
    nop
    jr jr_01b_6d05

    rlca
    nop
    rrca
    nop
    rlca
    inc bc
    rlca

jr_01b_6d05:
    inc bc
    rlca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rrca
    ld b, $7f
    inc c
    adc a
    ld [hl], b
    ld a, a
    ld bc, $050f
    rrca

jr_01b_6d4d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6d56:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    rst $20
    nop
    ei
    ld b, $df
    ld l, $fe
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, $00
    ld a, a
    nop
    rrca
    inc bc
    dec c
    ld b, $0e
    ld bc, $0718
    daa
    jr @+$61

    jr nz, jr_01b_6d56

    ld b, h
    cp a
    ld b, l
    rst $38
    inc bc
    ld a, l
    inc bc
    ld e, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp $00
    inc bc
    db $fc
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $10
    db $fc
    db $10
    ld hl, sp-$30
    db $fc
    ret c

    db $fc
    ld hl, sp+$78
    ldh a, [rTAC]
    nop
    inc bc
    nop
    rlca
    ld [bc], a
    dec c
    ld b, $09
    ld b, $0f
    nop
    db $10
    rrca
    jr nz, jr_01b_6def

    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    ld sp, $180f
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rLCDC]
    rst $38
    ret nz

    ld a, [c]
    adc h
    db $e4
    jr jr_01b_6e1f

    ret z

    inc c
    ldh a, [rDIV]

jr_01b_6def:
    ld hl, sp-$02
    db $fc
    rst $38
    cp $ff
    nop
    adc h
    ldh a, [rNR23]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7f00
    nop
    ret nz

    ccf
    sbc a
    ld h, b

jr_01b_6e16:
    cp a
    ld b, b
    ld a, a
    ld [$083f], sp
    rra
    dec bc
    ccf

jr_01b_6e1f:
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01b_6e2a

jr_01b_6e2a:
    ld a, h
    nop
    cp $00
    ldh a, [$c0]
    or b
    ld h, b
    ld [hl], b

jr_01b_6e33:
    add b
    jr jr_01b_6e16

jr_01b_6e36:
    db $e4
    jr jr_01b_6e33

    inc b
    db $fd
    ld [hl+], a
    db $fd
    and d
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01b_6e4c

jr_01b_6e4c:
    cp $00
    rst $38
    ret nz

    cp b
    ld h, b
    ld [hl], b

jr_01b_6e53:
    add b
    jr jr_01b_6e36

    db $e4
    jr jr_01b_6e53

    inc b
    db $fd
    ld [hl+], a
    db $fd
    and d
    rst $38
    ret nz

    ld [hl], b
    nop
    ld e, b
    jr nc, jr_01b_6ee1

    db $10
    ld a, a
    jr jr_01b_6ee8

    dec de
    ld e, a
    jr nc, @+$7a

    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rra
    ld e, $0f
    rrca
    nop
    sbc a
    dec b
    ei
    inc e
    rst $38
    ld b, b
    ld [hl], e
    jr nz, jr_01b_6f06

    inc hl
    rst $20
    ld b, b
    ret z

    add a
    ldh a, [$8f]
    ldh a, [$6f]
    ld hl, sp+$07
    rra
    nop
    rrca
    nop
    nop
    nop
    cp [hl]
    ret nz

    ld a, h
    sbc b
    db $fc
    jr c, jr_01b_6f1f

    add b
    cp $00
    db $fd
    ld b, $e7
    ld [bc], a
    jp $f880


    nop
    ld c, h
    or b
    ld b, h
    cp b
    ld [hl], h
    adc b
    xor h
    ld [hl], b
    db $fc
    ld d, b
    xor b
    ld [hl], b
    ld [hl], b
    nop
    rrca
    nop
    rlca
    inc bc
    rrca
    inc bc
    rra
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

jr_01b_6ee1:
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop

jr_01b_6ee8:
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rrca
    ld b, $7f
    inc c

jr_01b_6f06:
    adc a
    ld [hl], b
    ld a, a
    ld bc, $050f
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6f1f:
    nop
    add b
    nop
    ret nz

    nop
    cp $00
    rst $38
    ld c, $fb
    add [hl]
    rst $00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    ld a, a
    nop
    rst $38
    inc bc
    dec e
    ld b, $0e
    ld bc, $0718
    daa
    jr jr_01b_6fb4

    jr nz, jr_01b_6f16

    ld b, h
    cp a
    ld b, l
    rst $38
    inc bc
    ld a, l
    inc bc
    ld e, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld bc, $003f
    ld b, b
    ccf
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    ld a, a
    dec d
    ld a, a
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ldh [rP1], a
    and b
    ret nz

    ldh a, [rP1]
    inc c
    ldh a, [$e2]
    inc e
    ld sp, hl
    ld b, $fd
    add d
    rst $38
    adc b
    rst $38
    and b
    or $a8
    scf
    rrca
    dec bc
    rlca
    rlca
    nop
    dec c
    inc bc
    rrca
    nop
    rra
    ld [bc], a
    rra
    ld b, $1b
    ld b, $07
    nop
    nop
    nop

jr_01b_6fb4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    ret nc

    ldh a, [$80]
    ldh a, [$60]
    ldh a, [$a0]
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp+$70
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7f00
    nop
    ret nz

    ccf
    sbc a
    ld h, b

jr_01b_6ff4:
    cp a
    ld b, b
    ld a, a
    ld [$083f], sp
    rra
    dec bc
    ccf
    dec de
    ccf
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01b_7008

jr_01b_7008:
    ld a, h
    nop
    cp $00
    ldh a, [$c0]
    or b
    ld h, b
    ld [hl], b

jr_01b_7011:
    add b
    jr jr_01b_6ff4

    db $e4
    jr jr_01b_7011

    inc b
    db $fd
    ld [hl+], a
    db $fd
    and d
    rst $38
    nop
    ld a, [hl]
    add b
    inc bc
    ld bc, $0001
    inc bc
    nop
    rlca
    ld [bc], a
    daa
    inc bc
    adc a
    nop
    ccf
    inc c
    cp e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst JumpTable
    and b
    ldh a, [rP1]
    ld hl, sp-$40
    add sp, -$10
    db $fc
    nop
    db $fc
    nop
    cp $1c
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    rrca
    rrca
    inc bc
    rlca
    nop
    dec bc
    rlca
    rrca
    ld bc, $001f
    dec a
    ld e, $3f
    nop
    inc bc
    nop
    rlca
    inc bc
    ld [$0b07], sp
    inc b
    dec bc
    inc b
    dec bc
    inc b
    rlca
    nop
    nop
    nop

jr_01b_7080:
    db $fc
    ldh [$fc], a
    adc b
    cp $6c
    or $ac
    rst $38
    add h
    sbc a
    ld h, l
    ld a, [hl]
    push hl
    ei
    and $fd
    ld [c], a
    rst $38
    ld hl, sp+$03
    db $fc
    ei
    inc b
    ld e, d
    db $e4
    ld a, [$fc04]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    jr nc, @-$3e

    jr c, jr_01b_7080

    jr c, @-$2e

    ld l, b
    sub b
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    ld bc, $003f
    ld b, b
    ccf
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    ld a, a
    dec d
    ld a, a
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ldh [rP1], a
    and b
    ret nz

    ldh a, [rP1]
    inc c
    ldh a, [$e2]
    inc e
    ld sp, hl
    ld b, $fd
    add d
    rst $38
    adc b
    rst $38
    xor b
    cp $b0
    scf
    rrca
    rrca
    inc bc
    rlca
    nop
    dec b
    ld [bc], a
    rrca
    ld bc, $001f
    dec a
    ld e, $3f
    nop
    ld bc, $0300
    nop
    rlca
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    add sp, -$10
    call c, $fbe0
    inc c
    rst $38
    dec [hl]
    cp $d5
    cp $c5
    rst $28
    ld d, $eb
    ld d, a
    db $fc
    ld b, e
    rst $38
    ldh [rIE], a
    ld hl, sp-$49
    ld c, b
    db $f4
    ld [$00f8], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ret nz

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$b8], a
    ld d, b
    cp b
    ld d, b
    ld l, b
    sub b
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld bc, $1b00
    nop
    daa
    nop
    rlca
    nop
    cpl
    rlca
    ccf
    dec b
    rra
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7f00
    nop

jr_01b_718c:
    jp $803c


    ld a, a
    adc a
    ld [hl], b
    ld c, a
    jr nc, jr_01b_718c

    ld [$02fd], sp
    cp $81
    rst $38
    ld [hl], b
    rst $38
    ld d, h
    rst $38
    ld [hl], h
    nop
    nop
    ld c, b
    nop
    ret c

    nop
    or $00
    db $fc
    nop
    ld hl, sp-$40
    ret nc

    jr nz, jr_01b_721f

    add b
    db $10
    ldh [$c8], a
    jr nc, @-$1a

    jr @-$1c

    inc e
    ld [bc], a
    db $fc
    add [hl]
    ld a, b
    ld a, h
    nop
    ret nz

    nop
    ld l, a
    rra
    rst $30
    ld l, h
    rst $38
    ld [hl], b
    ld a, a
    inc bc
    rra
    nop
    ccf
    jr jr_01b_71f4

    inc e
    inc de
    inc c
    ld c, $00
    inc bc
    nop
    rlca
    ld bc, $0307
    rlca
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    ret c

    ldh [$bd], a
    ret c

    db $fd
    jr c, @+$01

    ld bc, $3cff
    rst $38
    ld a, [hl]
    cp a
    ld b, a
    rst JumpTable
    inc hl
    ld h, c
    rra
    sbc a
    nop

jr_01b_71f4:
    push hl
    ld [bc], a
    rst $20
    jp nz, $c0f3

    sub b
    ldh [$30], a
    ret nz

    ldh [rP1], a
    db $fc
    ld [hl], b
    db $fc
    adc b
    call c, $fc88
    ld [$54ba], sp
    add hl, sp
    sub $91
    ld l, [hl]
    add c
    ld a, [hl]
    pop af
    ld c, $fa
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, [hl]
    inc b
    inc c
    nop
    nop
    nop
    nop

jr_01b_721f:
    nop
    nop
    nop
    nop
    nop

jr_01b_7224:
    ldh a, [rP1]
    cp a
    ld [hl], b
    cp a
    ld e, e
    cp a
    ld c, h
    ld e, [hl]
    inc l
    inc l
    jr jr_01b_724a

    nop
    rrca
    nop
    dec de
    inc b
    rra
    ld [$0817], sp
    ld e, $01
    rrca
    nop

jr_01b_723e:
    rlca
    nop
    inc e
    nop
    ld a, $1c
    rst $38
    ld [hl+], a
    rst $20
    ld b, d
    rst $00
    ld [bc], a

jr_01b_724a:
    rrca
    ld [bc], a
    ccf
    inc b
    cp $00
    di
    inc c
    pop hl
    ld e, $51
    xor $f2
    xor h
    ld e, d
    db $e4
    db $ec
    db $10
    jr jr_01b_723e

    ldh [rP1], a
    nop
    nop
    nop
    nop

jr_01b_7264:
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    add hl, sp
    nop
    ld e, c
    jr nc, jr_01b_7224

jr_01b_7271:
    ld h, b
    rst $38
    ld d, b
    rst $38
    nop
    rra
    inc c
    ccf
    inc e
    ccf
    jr @+$21

    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rrca
    nop
    or a
    ld c, $ff
    cp [hl]
    rst $38
    ld [hl], d
    rst $38
    ld a, a
    rst $38
    ld c, l
    rst $28
    ld e, l
    cp a

jr_01b_7293:
    ld a, [hl]
    rst $08
    cp [hl]
    cp $41
    rst $28
    ld e, $ff
    ld b, $c6
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_01b_7264

jr_01b_72a4:
    sub b
    ld h, b
    ret c

    jr nz, jr_01b_7271

    jr nc, jr_01b_7293

    db $10
    db $ec
    db $10
    xor $90
    xor $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    sub $a0
    sub [hl]
    ld h, b
    inc h
    ret nz

    ret nz

    nop
    rlca
    nop
    ld a, $05

jr_01b_72c4:
    ld a, e
    inc a
    ld [hl], h
    jr jr_01b_7301

    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_01b_72a4

    ret z

    jr nc, jr_01b_731b

    ld [$000c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_7301:
    nop
    nop
    nop

jr_01b_7304:
    nop
    nop
    ld bc, $0300
    ld bc, $0103
    add hl, sp
    nop
    ld e, c
    jr nc, jr_01b_72c4

jr_01b_7311:
    ld h, b
    rst $38
    ld d, b
    rst $38
    nop
    rra
    inc c
    ccf
    inc e
    ccf

jr_01b_731b:
    jr @+$21

    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rrca
    nop
    or a
    ld c, $ff
    cp [hl]
    rst $38
    ld [hl], d
    rst $38
    ld a, a
    rst $38
    ld c, l
    rst $28
    ld e, l
    cp a

jr_01b_7333:
    ld a, [hl]
    rst $08
    cp [hl]
    cp $41
    rst $28
    ld e, $ff
    ld b, $c6
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_01b_7304

    sub b
    ld h, b
    ret c

    jr nz, jr_01b_7311

    jr nc, jr_01b_7333

    db $10
    db $ec
    db $10
    xor $90
    xor $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    sub $a0
    sub [hl]
    ld h, b
    inc h
    ret nz

    ret nz

    nop
    ccf
    nop
    ld a, [hl]
    dec a
    ld [hl], a
    jr jr_01b_739f

    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld [bc], a
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_739f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, $01
    ccf
    ld de, $317f
    ld a, a
    nop
    ld a, a
    jr nc, @+$81

    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    scf
    ld c, $7f
    ld a, $ff
    ld [hl], d
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld e, l
    cp a
    ld a, [hl]
    rst $08
    cp [hl]
    cp $81
    rst JumpTable
    jr c, @+$01

    inc c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    adc [hl]
    ld a, b
    cp a
    ld c, h
    cp a
    ld c, l
    adc a
    ld a, b
    rst $38
    nop
    dec [hl]
    ld c, $7f
    ld a, [bc]
    push af
    ld c, $ee
    ld de, $1de2
    ld a, [c]
    dec c

jr_01b_73fe:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$80], a
    db $fc
    ld b, b
    cp $4c
    rst $38
    ld [hl-], a
    scf
    jp nz, $f20f

    rrca
    db $f4
    ld c, $f0
    jr jr_01b_73fe

    ldh a, [rP1]
    nop
    nop
    nop
    nop

jr_01b_7424:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, $01
    ccf
    ld de, $317f
    ld a, a
    nop
    ld a, a
    jr nc, jr_01b_74ba

    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    scf
    ld c, $7f
    ld a, $ff
    ld [hl], d
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld e, l
    cp a

jr_01b_7453:
    ld a, [hl]
    rst $08
    cp [hl]
    cp $81
    rst JumpTable
    jr c, @+$01

    inc c
    ld c, $00
    nop
    nop
    ldh [rP1], a
    jr nc, jr_01b_7424

    sub b
    ld h, b
    ret c

    jr nz, @-$36

    jr nc, jr_01b_7453

    db $10
    db $ec
    db $10
    xor $90
    xor $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    sub $a0
    sub [hl]
    ld h, b
    inc h
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $03
    ccf
    nop
    ld a, a
    ccf
    rst JumpTable
    ld h, b
    cp a
    ld b, b
    ldh a, [rIF]
    ld h, [hl]
    rra
    cpl
    rra
    ld h, $1f
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    db $ec
    add b
    ld a, d
    db $e4
    db $db
    inc [hl]
    db $ec
    jr @+$38

    call z, $e41e
    ld a, [de]
    db $e4
    ld [hl], $c8

jr_01b_74ba:
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    dec sp
    rlca
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    rrca
    rra
    inc bc
    rla
    rrca
    dec bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    cp $00
    rst $38
    nop
    rst $38
    ld [$e8ff], sp
    cp $30
    db $f4
    ld hl, sp-$38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $037e
    ld [hl], d
    dec a
    ld [hl], e
    inc a
    ld e, c
    ld a, $3c
    rra
    ld a, $0f
    cpl
    rla
    rla
    dec bc
    ld a, [de]
    dec b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    add b
    ld [hl], b
    add b
    db $fc
    db $10
    cp $70
    ld sp, hl
    ld h, [hl]
    ld h, e
    sbc h
    inc d
    add sp, $0c
    ldh a, [$c4]
    ld hl, sp-$04
    ld hl, sp-$44
    ld a, b
    db $fc
    nop
    nop
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    jp $c300


    nop

jr_01b_7608:
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    add c
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $08
    rst $28
    or c
    pop hl
    ld a, [hl]
    sub a
    ld l, [hl]
    db $db
    xor l
    rst $38
    jp $b5eb


    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    jp hl


    ld a, [hl]
    sub c
    ld a, [hl]
    jp $ffbd


    jp $ffff


    rst $38
    jp $8df3


    rst $38
    or b
    rst $38
    sbc $ff
    jr jr_01b_7608

    ld e, d
    rst $38
    jr @+$01

    ld e, d
    cp l
    ld h, [hl]
    db $db
    cp l
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $20
    db $db
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    db $db
    rst $38
    and l
    rst $38
    cp l
    cp l
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    cp l
    ld b, d
    rst $30
    sbc c
    rst $38
    jp $e7ff


    rst $38
    rst $20
    rst $30
    db $db
    rst $20
    db $db
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    set 7, a
    xor l
    di
    ld a, [hl]
    and c
    ld a, [hl]
    add c
    ld a, [hl]
    db $d3
    xor l
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    sbc c
    di
    cp l
    or c
    ld a, [hl]
    add c
    ld a, [hl]
    jp $e7bd


    sbc c
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    pop af
    cp [hl]
    rst JumpTable
    ld h, b
    and e
    ld e, l
    and a
    ld e, c
    rst $38
    inc hl
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    nop
    sbc c
    ld a, [hl]
    sub a
    ld a, b
    db $db
    inc a
    di
    adc l
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $dbff


    ei
    sbc l
    cp c
    ld c, [hl]
    or c
    ld a, [hl]
    jp $ffbd


    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $b5ff


    db $db
    cp [hl]
    db $eb
    sbc $ff
    jr nz, @-$1d

    ld e, [hl]
    and c
    ld e, [hl]
    pop bc
    ld a, $c3
    cp l
    rst $38
    jp $bddb


    jp $ffbd


    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    cp a
    rst $38
    rst JumpTable
    rst $38
    rst $28
    rst $38
    db $ec
    db $fd
    add e
    cp [hl]
    ld [hl], a
    rst $38
    ld a, e
    db $dd
    ld l, e
    rst JumpTable
    ld h, l
    sbc $65
    xor $b5
    cp $bd
    ei
    call c, $e3ff
    rst $38
    pop af
    db $fd
    or $fd
    ld [bc], a
    rst $30
    ret c

    srl l
    ld l, e
    db $fd
    or a
    ei
    rst $10
    ei
    ld c, a
    rst $30
    ld c, a
    rst $30
    rra
    rst $28
    ccf
    rst JumpTable
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    db $fd
    or $fd
    ld [bc], a
    rst $30
    ret c

    srl l
    ld l, e
    db $fd
    rst $38
    sub e
    rst $38
    ld de, $55ab
    cp e
    ld b, l
    rst $00
    add hl, sp
    xor e
    ld d, l
    xor e
    ld d, l
    rst $00
    ld a, l
    rst $10
    xor e
    rst $38
    rst $00
    rst $38
    pop af
    db $fd
    or $fd
    ld [bc], a
    rst $30
    ret c

    srl l
    ld l, e
    db $fd
    or a
    ei
    rst JumpTable
    db $e3
    ld a, a
    db $db
    jp $993c


    ld a, [hl]
    and l
    ld e, d
    and l
    ld e, d
    jp $db7e


    and l
    rst $38
    jp $f1ff


    db $fd
    or $fd
    ld [bc], a
    rst $30
    ret c

    srl l
    ld l, e
    db $fd
    or a
    ei
    rst $10
    ei
    ld l, a
    sub c
    cp l
    ld b, d
    jp $a53c


    ld e, d
    cp l
    ld e, d
    cp l
    ld h, [hl]
    rst $38
    cp l
    rst $38
    jp JumpTable


    inc [hl]
    jr jr_01b_7859

    jr jr_01b_785b

    jr jr_01b_785d

    jr @+$36

    jr @+$36

    jr jr_01b_7863

    jr jr_01b_7865

    jr jr_01b_78b1

    nop
    ld a, [hl]
    inc a
    inc a
    nop
    inc h
    jr @+$26

    jr @+$26

    jr jr_01b_7857

    nop
    jr jr_01b_785a

    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    ld a, [hl]
    ld h, [hl]
    rst $38
    cp l
    rst $38
    add c
    ld h, [hl]

jr_01b_7857:
    ld a, [hl]
    inc h

jr_01b_7859:
    inc a

jr_01b_785a:
    inc h

jr_01b_785b:
    inc a
    inc h

jr_01b_785d:
    inc a
    jr jr_01b_7878

    jr jr_01b_787a

    inc a

jr_01b_7863:
    inc h
    inc a

jr_01b_7865:
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    ld a, [hl]
    ld h, [hl]
    rst $38
    cp l
    rst $38
    add c
    rst $20
    cp l

jr_01b_7878:
    rst $20
    rst $38

jr_01b_787a:
    inc h
    inc a
    inc h
    inc a
    jr jr_01b_7898

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    add c
    ld a, [hl]
    cp l
    ld b, d
    and l
    ld e, d
    and l
    ld e, d
    and l
    ld e, d
    sbc c
    ld h, [hl]
    ld b, d
    inc a

jr_01b_7898:
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    rst $20
    rst $38
    cp l
    rst $38
    add c
    rst $38
    cp l
    db $e3
    cp l
    db $e3

jr_01b_78b1:
    cp l
    db $e3
    cp l
    rst $20
    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $38
    add c
    rst $38
    cp l
    db $e3
    cp l
    db $e3
    cp l
    db $e3
    cp l
    db $e3
    cp l
    rst $20
    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc h
    jr @+$1a

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec c
    rrca
    ld de, $211f
    ccf
    ld sp, $712f
    ld c, a
    ld l, [hl]
    ld d, d
    xor $92
    sbc $a2
    call c, $d8a4
    xor b
    sub b
    ldh a, [$50]
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nc, @+$32

    ld b, d
    ld b, d
    add c
    add c
    rst $20
    rst $20
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    inc a
    jp $c3bd


    rst $20
    sbc c
    rst $20
    sbc c
    rst $38
    sbc c
    db $db
    cp l
    and l
    rst $20
    jp $00c3


    nop
    nop
    nop
    ld [hl], $00
    ld e, l
    ld [hl+], a
    ld a, a
    ld [$1c3e], sp
    ld a, $00
    ld [hl+], a
    inc e
    inc d
    ld [$001c], sp
    inc e
    ld [$081c], sp
    inc e
    ld [$081c], sp
    inc e
    nop
    inc d
    ld [$001c], sp
    nop
    nop
    inc e
    inc e
    ld a, $22
    ld [hl], e
    ld c, l
    ld l, a
    ld a, l
    db $dd
    cp a
    db $eb
    sbc e
    add sp, -$68
    add sp, -$68
    res 7, e
    sbc a
    db $fd
    rst $38
    db $ed
    ld e, l
    ld h, e
    ld [hl+], a
    ld a, $1c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01b_7968

jr_01b_7968:
    ld [hl], h
    jr c, @+$68

    cp b
    sub $68
    rst $10
    ld a, d
    push bc
    ld a, $e1
    ld e, $a3
    ld a, h
    sbc e
    ld h, h
    ld a, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld h, [hl]
    ld a, [hl]
    inc a
    inc h
    inc a
    inc h
    inc a
    inc a
    rst $38
    rst $20
    rst $38
    and l
    db $db
    cp l
    jp $e7bd


    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc h
    jr jr_01b_79b6

    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rla
    add hl, de
    dec l
    inc sp
    ld e, d
    ld h, [hl]
    or h
    call z, $88f8
    ld hl, sp-$78
    or h
    call z, Call_01b_665a

jr_01b_79b6:
    dec l
    inc sp
    rla
    add hl, de
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld d, $1a
    ld a, [hl+]
    ld [hl], $5c
    ld h, h
    or h
    call z, $88f8
    ld hl, sp-$78
    or h
    call z, Call_01b_645c
    ld a, [hl+]
    ld [hl], $16
    ld a, [de]
    add hl, bc
    rrca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld b, $06
    inc c
    inc c
    ld [$1808], sp
    jr jr_01b_7a1f

    inc l
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    sbc a
    rst $28
    sbc a
    adc l
    rst $38
    db $fd
    rst $38
    ld a, d
    rst $38
    ld h, [hl]
    ld a, [hl]
    jr jr_01b_7a38

    nop
    nop
    nop
    nop
    ld [hl], $36
    ld d, l
    ld [hl], a
    ld a, a
    ld e, l
    ld a, a
    ld c, c
    ld a, $36
    inc e
    inc e
    ld [$0808], sp
    ld [$1010], sp
    db $10
    db $10
    ld [$1c08], sp
    inc e
    ld a, [hl-]
    ld h, $22
    ld a, $22
    ld a, $3e

jr_01b_7a1f:
    ld a, $0c
    db $ec
    ld d, d
    or d
    ld b, $e6
    inc e
    inc e
    ld a, $22
    ld a, a
    ld b, c
    rst $38
    push bc
    rst $38
    rst $08
    rst $38
    rst $38
    cp e
    rst $38
    ei
    or a
    or a
    rst $38

jr_01b_7a38:
    rst $38
    rst $38
    sbc $fe
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0117
    dec sp

jr_01b_7a53:
    ld d, $39
    ld d, $2e
    jr jr_01b_7ad0

    ld c, $be
    ld b, b
    or b
    ld b, b
    ld h, b
    nop
    nop
    nop
    ld c, $00
    ld e, $0c
    ld a, [hl-]
    inc e
    ld [hl], h
    jr c, jr_01b_7a53

    ld [hl], b
    ret nc

    ldh [$a0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h

jr_01b_7ad0:
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld c, $ff
    dec de
    rst $38
    ld de, $1bff
    rst $38
    ld a, $ff
    ld h, b
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld c, d
    rst $38
    and e
    db $fd
    rst JumpTable
    xor c
    rst $38
    sub l
    ld a, [hl]
    srl h
    rst $38
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de

Jump_01b_7e3c:
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de

Call_01b_7fc0:
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de

Jump_01b_7fff:
    dec de

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX

    ld e, a
    rst $28
    ld a, a
    ld a, e
    ccf
    ld [hl], e
    rra
    call $b33b
    ld c, h
    ld c, l
    ld [hl-], a
    ccf
    nop
    scf
    ld [$0817], sp
    ld a, b
    nop
    add [hl]
    ld a, b
    add hl, sp
    cp $bf
    ldh [$fd], a
    jp c, $95fb

    ld a, [hl]
    add e
    add sp, $17
    add sp, $17
    db $ec
    inc de
    ld a, d
    add l
    or c

Call_02c_402a:
    adc $b8
    ld b, a
    cp h
    ld c, e
    cp $15
    rst $38
    ld [de], a
    rrca
    nop
    scf
    ld c, $4f
    ccf
    rst $38
    rlca
    cp $5b
    cp $ad
    cp $c1
    rst $38
    add sp, $7f
    add sp, $37
    ret z

    ld e, [hl]
    or c
    db $ec
    ld [hl], e
    call c, $bd63
    ld d, d
    cp $28
    db $fc
    ld c, b
    add b
    nop
    ldh [$80], a
    ldh a, [$60]
    ld hl, sp+$30
    ld a, h
    sbc b
    ld b, h
    cp b
    add $bc
    adc $bc
    cp $1c
    cp l
    ld b, d
    sbc c
    ld h, [hl]
    adc e
    db $76
    rst JumpTable
    ld h, $f7
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    rra
    nop
    rla
    add hl, bc
    daa
    dec de
    dec hl
    dec e
    ld c, d
    dec a
    ld e, c
    ld a, $5d
    ld a, $9c
    ld a, a
    or [hl]
    ld a, a
    or d
    ld a, a
    and d
    ld a, a
    and e
    ld a, [hl]
    ld d, l
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    push de
    ld a, a
    jp hl


    cp a
    ld [hl], a
    rst $28
    inc de
    sbc a
    nop
    adc a
    nop
    adc a
    ld bc, $0d93
    sub c
    ld c, $a1
    ld e, $28
    rra
    jr z, jr_02c_40ca

    ld e, $0f
    inc d
    rrca
    ld [$0707], sp
    nop
    db $f4
    xor b
    cp $10
    cp $64
    rst $38
    ld c, [hl]
    db $eb
    rla
    push af
    inc bc
    db $eb
    ld de, $30cb
    ld c, c
    or b
    ld d, c
    and b
    sub c
    ld h, b
    and b

jr_02c_40ca:
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    nop
    jp nz, $e200

    ret nz

    ldh a, [rP1]
    ld a, b
    ret nc

    ld a, h
    add sp, -$12
    ld [hl], h
    ld l, a
    or [hl]
    cp a
    ld b, [hl]
    ld b, e
    ld a, $21
    ld e, $1f
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld [$0001], sp
    ld b, $01
    add hl, bc
    rlca
    nop
    inc de
    rrca
    ccf
    ld bc, $366f
    ld c, a
    inc sp
    nop
    ld e, a
    dec l
    ld [hl], a
    inc c
    rst $38
    ld e, l
    rst $38
    ld h, e
    inc b
    rst $38
    ld a, [hl]
    rst $38
    ld b, b
    jp $081d


    ld h, d
    nop
    nop
    xor [hl]
    ld b, b
    ld [hl], d
    adc h
    add h
    ld a, b
    rla
    ld hl, sp+$00
    ld [$c4f4], a
    ld hl, sp-$0c
    ld a, b
    ld [c], a
    inc a
    nop
    db $ec
    ld d, b
    ldh a, [rLCDC]
    ldh [rP1], a
    ldh a, [rP1]
    nop
    ld hl, sp+$00
    db $f4
    ld [$10e8], sp
    ld e, $e0
    ld bc, $0eff
    rst $10
    ld c, $49
    add [hl]
    add [hl]
    ld c, d
    db $10
    ret nz

    nop
    adc b
    ld e, l
    db $10
    add hl, de
    ld b, $13
    rrca
    ld h, $1f
    add b
    ld e, a
    sub b
    jr jr_02c_4157

jr_02c_4157:
    add sp, $10
    ld c, b
    or b
    adc h
    nop
    ld [hl], b
    ld a, [hl+]
    db $f4
    db $f4
    add sp, -$3c
    ld hl, sp-$34
    nop
    ldh a, [$ec]
    ld [hl], b
    ld a, [c]
    inc a
    and $58
    ld hl, sp-$80
    ld e, a
    ld [$00f8], sp
    ldh a, [$08]
    xor $10
    sbc c
    nop
    ld h, [hl]
    ld [hl], a
    adc [hl]
    rst $38
    ld c, $de
    nop
    ld b, b
    jr nc, @-$7e

    add b
    ld e, a
    xor b
    cp a
    ld a, b
    dec h
    ld [hl], a
    inc c
    cp a
    nop
    ld b, l
    cp a
    ld b, d
    cp a
    ld b, b
    cp a
    ld b, b
    ld e, a
    ld c, b
    jr nz, jr_02c_4157

    or b
    ret nz

    nop
    ld bc, $5f20
    jr nz, jr_02c_41cf

    nop
    db $10
    ld [hl], e
    inc c
    cp h
    ld h, e
    ld a, a
    inc c
    rrca
    ld [$0200], sp
    ld bc, $5b01
    ld a, b
    add b
    nop
    ld c, $00
    nop
    or $0c
    ld a, [hl]
    cp h
    xor $1c
    sbc h
    call nz, $080b
    rst JumpTable
    nop
    inc hl
    ld [hl-], a
    ld e, a
    inc h
    rst JumpTable
    ld [$ff5c], sp
    nop
    ld h, b
    rst $38
    ld a, h
    rst $38
    ld b, b

jr_02c_41cf:
    rst $00
    ld [bc], a
    nop
    nop
    nop
    ld h, b
    nop
    xor b
    ld b, b
    inc a
    ret z

    ld a, h
    nop
    adc b
    ld a, [hl]
    sbc h
    cp $9c
    cp $98
    ld l, a
    nop
    sub d
    ld a, a
    add [hl]
    ld a, a
    add b
    sbc a
    ld h, b
    pop hl
    ld [$ff1e], sp
    nop
    db $fc
    ld a, a
    ld [$040f], sp
    rrca
    inc b
    nop
    ld a, a
    nop
    cp a
    ld l, h
    ld a, a
    ret nz

    add b
    nop
    nop
    call c, $ee00
    inc e
    cp $3c
    or $0c
    ld l, b
    adc [hl]
    rst $38

jr_02c_420d:
    nop
    add hl, hl
    ld e, a
    add hl, bc
    ld h, d
    ld a, a
    ld d, b
    ld a, h
    adc b
    cp h
    db $10

jr_02c_4218:
    ld c, b
    ld a, $dc
    ld a, a
    db $10
    cp [hl]
    ld d, b
    xor a
    ld d, [hl]
    ld bc, $42bf
    rst $08
    jr nc, jr_02c_4218

    ld c, $fe
    ld h, c
    add hl, bc
    jr nz, jr_02c_420d

    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0314
    nop
    add hl, hl
    rla
    dec hl
    rla
    ld b, a
    ccf
    ld e, a
    jr c, jr_02c_4241

jr_02c_4241:
    ld e, [hl]
    dec [hl]
    inc a
    inc bc
    dec a
    dec de
    ld l, $1d
    nop
    ccf
    ld a, [de]
    rra
    rlca
    rrca
    rlca
    rra
    inc bc
    nop
    ret nz

    nop
    ld h, b
    add b
    ld d, b
    and b
    adc b
    ldh a, [rP1]
    xor b
    ldh a, [$b4]
    add sp, -$14
    ld hl, sp-$06
    inc e
    nop
    ld a, d
    xor h
    ld a, [hl-]
    call nz, $d8bc
    ld [hl], h
    cp b
    nop
    db $fc
    ld e, b
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [$c0]
    nop
    ccf
    ld bc, $205f
    cpl
    db $10
    rla
    dec bc
    nop
    rrca

Jump_02c_4281:
    inc bc
    rrca
    nop
    dec bc
    dec b
    ld b, $01
    ld [$0102], sp
    ld bc, $0000
    ld d, b
    ld hl, sp-$80
    add sp, $00
    db $10
    add sp, $10
    ret c

    ld h, b
    ldh a, [rLCDC]
    ldh a, [rP1]
    nop
    ret nc

    and b
    ld h, b
    add b
    ld b, b
    add b
    add b
    ret nz

    rra
    ld e, b
    ld a, a
    jr nc, jr_02c_42d4

    rla
    ld [hl+], a
    rra
    ld b, h
    ccf
    nop
    ld b, l
    ccf
    ld c, a
    ccf
    cpl
    rra
    scf
    rrca
    nop
    ccf
    rla
    add hl, sp
    rla
    inc e
    inc bc
    rrca
    ld b, $20
    rra
    nop
    ld a, a
    jr nz, jr_02c_430f

    or b
    adc b
    ld [hl], b
    ld c, b
    nop
    ldh a, [$c4]
    ld hl, sp-$3c
    ld hl, sp-$2c
    ld hl, sp-$0c

jr_02c_42d4:
    nop
    ld hl, sp-$14
    ldh a, [$dc]
    add sp, -$64
    add sp, $38
    ld bc, $f0c0
    ld h, b
    ldh a, [rP1]
    ccf
    nop
    ld a, a
    stop
    inc de
    inc c
    inc c
    inc bc
    dec bc
    inc b
    dec bc
    dec b
    dec b
    rlca
    ld bc, $0106
    inc bc
    ld a, a
    ld h, b
    nop
    ld a, a
    stop
    sbc b
    ld h, b
    ld [hl], b
    add b
    ret nc

    jr nz, @-$0e

    add b
    ld b, $e0
    ret nz

    and b
    ret nz

    ret nz

    ld a, a
    ld l, b
    nop
    ld d, b
    inc bc

jr_02c_430f:
    ld [$0700], sp
    inc bc
    ld b, $c1
    ld [$0001], sp
    ld [bc], a
    ret nz

    ret


    ld [$5049], sp

jr_02c_431e:
    ld c, $00
    rla
    ld c, $f1
    rrca
    nop
    ld a, b
    rst $30
    rst $38
    ret nc

    rst $38
    ld [$55ff], a
    nop
    cp a
    ld a, l
    ld a, e
    cp h
    rst JumpTable
    dec sp
    ccf
    dec de
    ld b, b
    rra
    dec de
    jr jr_02c_437b

    nop
    ld l, b
    nop
    xor d
    ld b, b
    nop
    ld d, $e8
    add d
    ld a, h
    add d
    ld a, h
    dec b
    ld hl, sp+$00
    add [hl]
    ld a, b
    add d
    ld a, h
    add h
    ld a, b
    adc d
    ld [hl], h
    nop
    rst $00
    jr c, jr_02c_431e

    jr nc, jr_02c_438c

    ld [$000c], sp
    ld b, $0a
    inc b
    rlca
    ld [bc], a
    inc bc
    ld d, c
    ld [$a000], sp
    rra
    add b
    pop bc
    ld [$20df], sp
    rst $28
    ret nc

    xor $d1
    pop af
    ld [$5f0e], sp
    jr nz, jr_02c_43ac

jr_02c_4375:
    rra
    ld a, b
    sbc b
    nop
    or b
    nop

jr_02c_437b:
    nop
    ret c

    jr nc, jr_02c_43b7

    ldh [$fc], a
    ld a, b
    ld l, b
    jr nc, jr_02c_4375

    ldh a, [$b9]
    ret z

    sbc a
    jr z, @-$17

    rst $38

jr_02c_438c:
    ret c

    rst $30
    inc bc
    call c, Call_02c_59ff
    cp a
    ld h, l
    ld a, a
    sbc a
    jr z, jr_02c_4398

jr_02c_4398:
    nop
    nop
    ld bc, $0700
    nop
    rrca
    inc bc
    nop
    dec de

jr_02c_43a2:
    inc c
    ld a, $1f
    ccf
    rlca
    ld l, a
    ld sp, $4f00
    ld [hl-], a

jr_02c_43ac:
    ld e, a
    dec l
    ld [hl], a
    inc c
    rst $38
    ld e, l
    nop
    rst $38
    ld h, e
    rst $38
    ld a, [hl]

jr_02c_43b7:
    rst $38
    ld b, b
    jp RST_00


    nop
    nop
    ldh [rP1], a
    jr jr_02c_43a2

    call nz, RST_38
    db $e4
    jr @-$0c

    ld l, h
    ld [hl], d
    adc h
    cp d
    call nc, $fe00
    ret nz

    sbc $28
    db $fc
    ld b, b
    ld hl, sp+$40
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $f4
    ld [$2082], sp
    ld [$0300], sp
    nop
    rrca
    ld bc, $c03f
    ldh a, [rP1]
    nop
    ld [$c4f0], sp
    cp b
    ld [c], a
    inc e

jr_02c_43f2:
    ld a, [c]
    nop
    inc c
    ld a, c
    or [hl]
    cp c
    add $f9
    adc $dd
    jr jr_02c_4420

    cp $48
    ld b, c
    ld [$083d], sp
    ldh a, [$08]
    xor $20
    stop
    ld a, l
    ld [$0708], sp
    rra
    nop
    ccf
    nop
    ld a, [bc]
    ccf
    db $10
    ld a, a
    rrca
    ld l, a
    jr jr_02c_4498

    nop
    dec h
    ld a, h
    inc hl
    ld a, l
    dec de

jr_02c_4420:
    ld l, $1d
    ccf
    nop
    ld a, [de]
    rra
    rlca
    rrca
    rlca
    rra
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    jr nc, jr_02c_43f2

    ret c

    jr nz, @-$02

    nop
    ld d, b
    db $fc
    ld [$f0ee], sp
    cp $18
    ld a, [hl]
    nop
    and h
    ld a, $c4
    cp [hl]
    ret c

    ld [hl], h
    cp b
    db $fc
    ld bc, $f858
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ld a, l
    jr jr_02c_4452

jr_02c_4452:
    inc bc
    rla
    rrca
    inc hl
    rra
    jr nz, @+$21

    ld h, b
    nop
    rra
    ld [hl], b
    cpl
    ld a, b
    rlca
    ld a, a
    jr z, jr_02c_44a2

    nop

Jump_02c_4464:
    ld [de], a
    ccf
    ld [$173f], sp
    inc e
    inc bc
    dec c
    jr nz, jr_02c_4474

    rra
    ld a, a
    ld [$00c0], sp
    or b

jr_02c_4474:
    ret nz

    ret c

    nop
    ldh [$8c], a
    ldh a, [$0c]
    ldh a, [$0e]
    ldh a, [$0e]
    nop
    db $f4
    ld e, $e0
    cp $14
    db $fc
    ld c, b

jr_02c_4487:
    db $fc
    nop
    jr nc, jr_02c_4487

    add sp, $38
    ret nz

    or b
    ld h, b
    ldh a, [rP1]
    nop
    ld [bc], a
    nop
    ld b, $00
    dec b

jr_02c_4498:
    ld [bc], a
    inc c
    nop
    inc bc
    dec d
    dec bc
    dec de
    rrca
    ld c, $07

jr_02c_44a2:
    inc c
    ld [bc], a
    inc bc
    inc de
    ld c, $0b
    inc b
    rlca
    ld de, $0108
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $03
    ld a, [bc]
    rlca
    jr c, jr_02c_44b7

jr_02c_44b7:
    nop
    ld b, [hl]
    jr c, jr_02c_4534

    ld a, $ff
    ld h, c
    ld a, a
    nop
    db $db
    ld a, c
    rst $00
    ld hl, sp-$39
    db $f4
    srl d
    nop
    push hl
    ld e, c
    and [hl]
    db $dd
    ld [hl+], a
    rst $38
    inc b
    rst $38
    nop
    ld l, c
    or a
    xor $fb
    ld b, [hl]
    ld c, a
    add b
    inc a
    nop
    nop
    rst JumpTable
    inc a
    cp a
    ld a, l
    ld sp, hl
    ld c, $f9
    nop
    or [hl]
    rst $38
    add $ff
    call nz, $a05f
    or b
    nop
    ld c, a
    ld a, $c1
    ld [hl], e
    add b
    pop af
    ld b, b
    pop af
    ld bc, $d820
    ldh [$bc], a
    ret c

    xor $1c
    rra
    ld de, $8001
    nop
    ret nz

    add b
    ret nz

    add b
    ld b, b
    ld bc, $0008
    ldh [$c0], a
    ldh [rP1], a
    and b
    ld b, b
    and b
    ld b, b
    inc d
    ld b, b
    add b
    ret nz

    dec d
    ld [$1b80], sp
    ld [$070b], sp
    ld de, $0f13
    inc d
    ld bc, $0b08
    rlca
    rlca
    ld a, [hl+]
    db $10
    add b
    nop
    ld a, b
    ld c, e
    add h
    ld c, c
    add [hl]
    ret nc

    adc a
    call nc, $8f01

jr_02c_4534:
    sub [hl]
    rrca
    dec d
    ld c, $09
    ld b, $23
    add b
    nop
    rst $30
    ld [$25db], sp
    sbc l
    ld h, d
    sbc d
    ld h, l
    inc bc
    and l
    ld b, d
    ld [hl+], a
    pop bc
    ld b, c
    add b
    ld d, c
    stop
    ld [hl], b
    add e
    ld a, l
    db $10
    ldh [rLCDC], a
    ldh [rLCDC], a
    ld h, b
    ld a, e
    ld [$8000], sp
    ld b, b
    nop
    nop
    jr z, jr_02c_4580

    nop
    ld h, e
    inc e
    ld b, c
    ld a, $00
    or c
    ld a, a
    pop af
    ld a, [hl]
    and c
    ld a, [hl]
    add c
    ld a, a
    nop
    add e
    ld a, h
    ld b, a
    jr c, jr_02c_45f4

    ld bc, $023f
    jr nz, jr_02c_4588

    ld bc, $301f
    nop
    nop
    ret nz

jr_02c_4580:
    nop
    and b
    nop
    ld b, b
    ldh a, [$60]
    ld hl, sp+$60

jr_02c_4588:
    db $ec
    ld e, b
    db $e4

jr_02c_458b:
    nop
    ld e, b
    db $fc
    add b
    db $fc
    ld c, b
    db $f4
    ld c, b
    db $fc
    ld [$be28], sp
    ld [hl], h
    rrca
    add hl, sp
    ld [$011e], sp
    ccf
    nop
    nop
    ccf
    nop
    ld e, h
    inc hl
    db $e3
    inc e
    inc a
    ret nz

    ld l, $40
    nop
    jr z, jr_02c_458b

    inc a
    rst $38
    nop
    rst $28
    ld d, $00
    ld l, [hl]
    sub h
    inc l
    ret nc

    sbc b
    ld h, b
    ld [hl], b
    add b
    ld h, b
    ldh [$1f], a
    ld a, b
    ld a, l
    ret nz

    add hl, sp
    ld b, $1e
    ld bc, $801f
    ld a, l
    xor b
    rst $38
    ld c, b
    rst $30

jr_02c_45cc:
    ld c, d
    rst $38
    ld h, $f7
    jr @+$0c

    or $08
    inc hl
    db $10
    ld a, l
    db $10
    ld a, a

jr_02c_45d9:
    nop
    ld e, [hl]
    ld [$e121], sp
    ld e, $3e
    ld e, c
    ld a, b
    db $ec
    db $10
    jr z, jr_02c_45e6

jr_02c_45e6:
    ret nc

    adc b
    ld [hl], b
    ret nc

    jr nz, jr_02c_45cc

    nop
    ld d, b
    inc c
    and b
    or b
    ld b, b
    ld h, b
    rra

jr_02c_45f4:
    ld a, b
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    rlca
    ld de, $130f
    rrca
    daa
    jr jr_02c_4631

    db $10
    cpl
    ld de, $176f
    ld [hl], a
    dec bc
    ei
    dec b
    cp l
    ld b, d
    sbc $21
    ld c, [hl]
    ld sp, $0d32
    rrca
    nop
    ret nz

    nop
    jr nz, jr_02c_45d9

    sub b
    ldh [$88], a
    ldh a, [$c8]
    ldh a, [$c4]
    jr c, @-$1a

    jr @-$0a

    adc b
    db $f4
    add sp, -$12
    ret nc

    db $dd
    and d
    cp e
    ld b, h
    ld a, d
    add h
    ld [hl], h
    adc b

jr_02c_4631:
    db $fc
    ld [hl], b
    ld hl, sp+$00
    rra
    nop
    ccf
    rra
    ld a, b
    ccf
    ld [hl], b
    ccf
    jr nc, @+$11

    jr c, jr_02c_4648

    inc a
    inc de
    ld a, h
    dec sp
    ld a, l
    ld a, [hl-]
    ld a, d

jr_02c_4648:
    dec h
    ld a, c
    ld b, $15
    ld a, [bc]

jr_02c_464d:
    ld d, $09
    rra
    nop
    ccf
    inc e
    ccf
    nop
    add b
    nop
    ld h, b
    add b
    ldh a, [$e0]
    jr jr_02c_464d

    inc b
    ld hl, sp+$0c
    ldh a, [rNR30]
    db $fc
    db $76
    adc h
    sbc d
    ld h, h
    ld a, d
    add h
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, d
    add h
    add [hl]
    ld a, b
    db $fc
    nop
    nop
    nop
    rra
    nop
    ccf
    rra
    ld [hl], b
    ccf
    ld h, b
    ccf
    jr c, jr_02c_4688

    inc a
    inc bc
    inc a
    inc de
    ld a, a
    jr c, @+$7e

jr_02c_4688:
    dec sp
    ld a, e
    inc h
    ld a, e
    inc b
    dec de
    inc b
    dec c
    ld [bc], a
    ld e, $01
    rra
    nop
    nop
    nop
    ret nz

    nop
    or b
    ret nz

    ld l, b
    ldh a, [rNR23]
    ldh a, [rDIV]
    ld hl, sp+$0c
    ldh a, [rNR30]
    db $fc
    db $76
    adc h
    sbc d
    ld h, h
    ld a, d
    add h
    db $fc
    nop
    ldh a, [rP1]
    add sp, $10
    inc e
    ldh [$f8], a

jr_02c_46b4:
    nop
    jr c, jr_02c_46b7

jr_02c_46b7:
    ld [hl], h
    jr c, jr_02c_46b4

    ld b, h
    xor d
    ld b, h
    ld [$1404], a
    ld [$1028], sp
    jr z, jr_02c_46d5

    jr c, jr_02c_46c7

jr_02c_46c7:
    ld d, h
    jr c, @+$7e

    jr c, @+$56

    jr c, @+$3a

    nop
    jr z, jr_02c_46e1

    jr z, jr_02c_46e3

    stop

jr_02c_46d5:
    jr jr_02c_46d7

jr_02c_46d7:
    jr z, jr_02c_46e9

    dec l
    db $10
    ld [de], a
    dec c
    ld a, c
    rlca
    and l
    ld e, a

jr_02c_46e1:
    db $ed
    ld e, a

jr_02c_46e3:
    rst $28
    ld a, a
    ld a, e
    ccf
    ld [hl], e
    rra

jr_02c_46e9:
    call $b33b
    ld c, h
    ld c, l
    ld [hl-], a
    ccf
    nop
    scf
    ld [$0817], sp
    ld a, b
    nop
    add [hl]
    ld a, b
    add hl, sp
    cp $bf
    ldh [$fd], a
    jp c, $95fb

    ld a, [hl]
    add e
    add sp, $17
    add sp, $17
    db $ec
    inc de
    ld a, d
    add l
    or c
    adc $b8
    ld b, a
    cp h
    ld c, e
    cp $15
    rst $38
    ld [de], a
    rrca
    nop
    scf
    ld c, $4f
    ccf
    rst $38
    rlca
    cp $5b
    cp $ad
    cp $c1
    rst $38
    add sp, $7f
    add sp, $37
    ret z

    ld e, [hl]
    or c
    db $ec
    ld [hl], e
    call c, $bd63
    ld d, d
    cp $28
    db $fc
    ld c, b
    add b
    nop
    ldh [$80], a
    ldh a, [$60]
    ld hl, sp+$30
    ld a, h
    sbc b
    ld b, h
    cp b
    add $bc
    adc $bc
    cp $1c
    cp l
    ld b, d
    sbc c
    ld h, [hl]
    adc e
    db $76
    rst JumpTable
    ld h, $f7
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    rra
    nop
    rla
    add hl, bc
    daa
    dec de
    dec hl
    dec e
    ld c, d
    dec a
    ld e, c
    ld a, $5d
    ld a, $9c
    ld a, a
    or [hl]
    ld a, a
    or d
    ld a, a
    and d
    ld a, a
    and e
    ld a, [hl]
    ld d, l
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    push de
    ld a, a
    jp hl


    cp a
    ld [hl], a
    rst $28
    inc de
    sbc a
    nop
    adc a
    nop
    adc a
    ld bc, $0d93
    sub c
    ld c, $a1
    ld e, $28
    rra
    jr z, jr_02c_47ac

    ld e, $0f
    inc d
    rrca
    ld [$0707], sp
    nop
    db $f4
    xor b
    cp $10
    cp $64
    rst $38
    ld c, [hl]
    db $eb
    rla
    push af
    inc bc
    db $eb
    ld de, $30cb
    ld c, c
    or b
    ld d, c
    and b
    sub c
    ld h, b
    and b

jr_02c_47ac:
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    nop
    jp nz, $e200

    ret nz

    ldh a, [rP1]
    ld a, b
    ret nc

    ld a, h
    add sp, -$12
    ld [hl], h
    ld l, a
    or [hl]
    cp a
    ld b, [hl]
    ld b, e
    ld a, $21
    ld e, $1f
    nop
    nop
    nop
    ld [bc], a
    nop
    inc hl
    nop
    ld h, l
    ld [bc], a
    xor c
    ld b, [hl]
    xor d
    ld b, a
    ld d, [hl]
    cpl
    scf
    rra
    ld d, [hl]
    ccf
    ld e, h
    ccf
    adc l
    ld a, [hl]
    push bc
    ld a, [hl]
    db $db
    ld [hl], h
    cp [hl]
    ld [hl], c
    add d
    ld a, l
    sub a
    ld l, b
    ld c, [hl]
    jr nc, jr_02c_47f6

jr_02c_47f6:
    nop
    ld b, c
    nop
    ld [c], a
    ld bc, $c37c
    db $fd
    or d
    rst $38
    and b
    rst $38
    add b
    rst $38
    add c
    cp l
    jp $db7f


    ccf
    db $db
    sbc l
    ld h, e
    adc $31
    ei
    inc b
    ld h, l
    sbc e
    adc a
    ld [hl], a
    ld a, b
    nop
    sbc h
    ld a, b
    ld h, [hl]
    sbc h
    ld a, e
    and $9f
    ld a, b
    db $ed
    ld a, [de]
    cp a
    ld h, b
    rst $38
    sbc [hl]
    ei
    call c, $fbff
    rst $38
    ei
    cp $c3
    rst $38
    cp d
    ld a, a
    or b
    rst $38
    ld b, $fb
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$20
    ld a, h
    ldh a, [$3c]
    ldh a, [$9a]
    ld [hl], h
    adc d
    ld [hl], h
    adc c
    db $76
    sub e
    ld l, [hl]
    or a
    ld c, [hl]
    ld [hl], a
    adc [hl]
    db $fd
    ld c, $9f
    ld h, b
    sub [hl]
    ld l, b
    ld h, h
    jr jr_02c_4872

    inc b
    ld b, $00
    inc bc
    nop
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    ld bc, $0001
    add d
    nop
    adc $00
    or d
    ld c, h
    ld e, h
    jr c, jr_02c_48a6

    nop
    nop
    nop
    nop

jr_02c_4872:
    nop
    nop
    nop
    ld a, a
    dec bc
    rrca
    ld [bc], a
    rrca
    nop
    rlca
    nop
    add a
    nop
    sbc e
    dec b
    or e
    inc e
    ld h, h
    dec sp
    ld h, l
    dec sp
    ld c, c
    scf
    ld c, c
    scf
    add hl, sp
    rlca
    add hl, bc
    rlca
    inc b
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    nop
    rst $28
    inc sp
    rst $30
    add hl, de
    ld sp, hl
    nop
    pop af
    nop
    ld [c], a
    ld b, c
    di
    and b
    cp $30
    call c, Call_02c_4cb0

jr_02c_48a6:
    cp b
    add [hl]
    ld a, h
    db $e3
    inc e
    sbc d
    dec b
    add a
    inc bc
    ld b, e
    add c
    ld b, c
    add b
    ldh [rP1], a
    sub d
    ld l, h

Call_02c_48b7:
    db $e4
    sbc b
    add sp, -$30
    or b
    ld h, b
    ld hl, sp+$70
    db $fc
    ld h, b
    ld a, [hl]
    ld [$2a5f], sp
    ld d, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld [hl], $ae
    inc e
    sbc h
    ld [$8048], sp
    ret nz

    add b
    ret nz

    nop
    db $f4
    nop
    nop
    ld bc, $0102
    ld a, [bc]
    ld bc, $0b15
    rla
    dec bc
    dec hl
    rra
    jr z, jr_02c_48e5

jr_02c_48e5:
    ld e, l
    inc l
    rra
    ccf
    dec sp
    ld d, h
    dec sp
    ld a, [hl-]
    dec d
    ld a, [hl+]
    dec d
    ld a, e
    inc h
    cp e
    ld h, h
    sub b
    nop
    ld c, [hl]
    nop
    or c
    rst $28
    ld e, h
    rst JumpTable
    ld a, c
    rst $38
    ld a, c
    or a
    ld a, b
    ld d, a
    cp b
    ld h, a

jr_02c_4904:
    ld hl, sp+$00
    nop
    db $d3
    db $ec

jr_02c_4909:
    reti


    and $4f
    ldh a, [$bc]
    ld h, b
    rst JumpTable
    jr nz, jr_02c_4909

    dec bc
    adc a
    ld [hl], a
    ld a, [hl]
    add a
    ld [$ef02], sp
    inc a
    nop
    rst $00
    jr c, jr_02c_4935

    rst $38
    add [hl]
    sub a
    ld l, b
    inc e
    db $eb
    ld e, [hl]
    xor l
    ld d, [hl]
    ld a, [hl+]
    ld [hl+], a
    rst $38
    rst $28
    db $d3
    add h
    inc hl
    ld l, e
    cp a
    ld [hl], e
    ccf
    rst $28
    sbc l

jr_02c_4935:
    pop hl
    ret nc

    nop
    nop
    ret nz

    ldh [$c0], a
    db $10
    ldh [$f8], a
    ld [hl], b
    ld hl, sp+$30
    ld a, b
    add b
    ld c, b
    or b
    ld de, $c040
    ret z

    jr nc, jr_02c_4904

    ldh a, [rP1]
    ldh [$a0], a
    ldh [$80], a
    ld a, h
    and b
    cp $1c
    ret nc

    nop
    nop
    ld bc, $0103
    rlca
    inc bc
    rrca
    rlca
    ld e, $0f
    add hl, de
    ld c, $31
    ld e, $50
    nop
    inc e
    inc hl
    inc sp
    ld e, [hl]
    dec l
    ld e, [hl]
    dec l
    ld c, [hl]
    ld sp, $2857
    ld d, c
    ld l, $52
    inc l
    ld [$ff02], sp
    ld a, a
    nop
    sbc h
    ld l, a
    sbc $df
    cp l
    rst $08
    add hl, sp
    rst $00
    ld a, b
    rst $20
    ld a, b
    ld [hl], b
    nop
    dec b
    rlca
    rst $30
    ld [$9c63], sp
    ld hl, $7ede
    add b
    db $e3
    nop
    add a
    inc bc
    dec bc
    rrca
    db $f4
    nop
    nop
    ld [bc], a
    ld b, l
    ld [bc], a
    ld d, a
    ld [bc], a
    cp d
    ld b, a
    jp z, $db77

    ld l, a
    ld d, b
    nop
    rrca
    ld a, e
    add hl, de
    ld e, $0d
    daa
    inc e
    ld a, c
    ld d, $bf
    ld d, b
    rst JumpTable
    ld a, b

Call_02c_49b6:
    cp c
    ld a, [hl]
    sub h
    nop
    jr nz, jr_02c_49bc

jr_02c_49bc:
    ld d, h
    ld e, h
    or $28
    xor l
    ld a, d
    cp l
    ld a, d
    sbc l
    ld a, [hl]
    ld c, c
    cp [hl]
    ld d, b
    nop
    ld a, [$b52d]
    ld d, a
    cp b
    ld l, a
    sub b
    ei
    inc b
    dec hl
    call nc, $26d9
    xor [hl]
    nop
    nop
    ld a, a
    nop
    ld a, a
    jr nc, jr_02c_4a35

    add hl, sp
    dec hl
    inc e
    inc e
    inc bc
    inc bc
    push af
    ld bc, $2000
    jr nc, jr_02c_4a1a

    db $10
    inc de
    rrca
    inc c
    inc bc
    inc bc
    sub c
    nop
    add b
    nop
    ld b, b
    ret z

    nop
    ld c, b
    xor h
    ld b, b
    ld d, h
    jr z, jr_02c_4a2a

    jr jr_02c_4a1c

    ld [$0114], sp
    nop
    inc d
    ld [$3008], sp
    ret nc

    jr nz, jr_02c_4a2b

    ret nz

    and b
    ret nz

    ld b, b
    add b
    add b
    db $fd
    ld bc, $0100
    inc bc
    ld bc, $0203
    inc bc

jr_02c_4a1a:
    ld [bc], a
    inc bc

jr_02c_4a1c:
    ld b, b
    ld e, a
    nop
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    ret nc

    nop

jr_02c_4a2a:
    nop

jr_02c_4a2b:
    rra
    ccf
    dec de
    db $fc
    dec de
    rst JumpTable
    ld hl, $2cf3
    ld a, c

jr_02c_4a35:
    or [hl]
    dec a
    jp c, $800a

    rst $38
    ccf
    call z, $13fe
    ld l, h
    ld h, e
    db $ed
    cp a
    ld [hl], c
    cp a
    ld b, d
    ld e, [hl]
    add hl, sp
    db $f4
    nop
    nop
    add b
    ld b, b
    add b
    ldh [$c0], a
    db $e3
    ret nz

    rst $20
    ld [bc], a
    dec l
    add $84
    nop
    ld a, $c4
    cp $0c
    rst $38
    ld h, l
    sbc [hl]
    or d
    call c, $b0fc
    ldh a, [$60]
    ret nc

    ldh [rLCDC], a
    xor d
    ccf
    ld a, a
    ld a, l
    ld a, $4f
    jr nc, jr_02c_4a97

    add hl, de
    nop
    ld [de], a
    add hl, de
    nop
    ld d, d
    inc d
    dec b
    ld c, $0e
    add hl, bc
    ld b, $02
    add hl, bc
    ld b, $0a
    dec bc
    dec bc
    inc b
    ld h, b
    adc b
    ret nz

    and b
    nop
    ldh [$80], a
    ld h, b
    add b
    nop
    add b
    nop
    add b
    ldh [rLCDC], a
    ld b, b
    ld d, $e0
    ld [hl], b
    ld a, b

jr_02c_4a97:
    ldh a, [$58]
    ldh a, [$d8]
    ldh a, [$a8]
    ldh a, [$30]
    stop
    nop
    rlca
    nop
    ld l, l
    ld [hl-], a
    jp c, $9c64

    ld h, b
    ld a, [$fe0c]
    ld b, b
    and b
    ld b, b
    ld h, b
    rst $38
    rst $38
    nop
    nop
    dec d
    ccf
    cp c
    ld h, [hl]
    push de
    ld l, $74
    rrca
    ld h, $1f
    ld l, $1f
    ld c, [hl]
    ld e, e
    ld d, e
    ld bc, $00ff
    ld d, c
    ccf
    ld sp, $2a1f

jr_02c_4acc:
    rra
    rra
    nop
    ld d, b

jr_02c_4ad0:
    ld h, b
    sbc a
    ld b, $2f
    inc e
    cp h
    jr jr_02c_4ad0

    db $10
    ldh a, [$f1]
    ld [hl], e
    and c
    ld h, e
    add c
    nop
    nop
    ld b, [hl]
    add e
    ld c, h
    add a
    sbc b
    rlca
    dec hl
    inc d
    inc a
    jr jr_02c_4b44

    jr nc, @+$73

    jr nz, @+$62

    nop
    dec b
    nop
    nop
    cp [hl]
    ld h, l
    ld a, a
    call nz, $7cfe

jr_02c_4afa:
    rst $38
    jr nz, jr_02c_4afa

    db $db
    cp h

jr_02c_4aff:
    jp $db2c


    nop
    rlca
    nop
    dec hl
    call c, $dd26
    and $1d
    ld b, a
    inc a
    ld c, h
    jr c, jr_02c_4acc

    ld c, b
    ret z

    rlca
    ret nc

jr_02c_4b14:
    nop
    cp a
    ld [de], a
    dec sp
    db $10
    db $10
    ret nz

    ldh [$c0], a
    jr nc, jr_02c_4aff

    ld bc, $00ff
    jr jr_02c_4b14

    ret c

    jr nc, jr_02c_4b37

    ldh [$e0], a
    ld a, [bc]
    nop
    inc h
    ld a, d
    inc b
    ld c, h
    jr nc, jr_02c_4b49

    jr @+$17

    ld [$0917], sp
    rrca

jr_02c_4b37:
    nop
    ld e, $05
    nop
    nop
    ld a, $0b
    ld a, [hl]
    rla
    rst $30
    ld l, $f6
    ld l, l

jr_02c_4b44:
    db $fd
    ld h, d
    jp nz, $847c

jr_02c_4b49:
    ld a, b
    ld hl, sp+$00
    nop

jr_02c_4b4d:
    nop

jr_02c_4b4e:
    rla
    ld c, $1f
    inc c
    inc a
    jr jr_02c_4b4d

    db $10
    ldh a, [$e0]
    pop af
    jr nz, jr_02c_4b4e

    and c
    db $e3
    ld bc, $2008
    ld e, b
    ld b, [hl]
    add e
    call z, $8707
    xor e
    inc d
    inc a
    jr @+$32

    ld [hl], c
    jr nz, jr_02c_4bce

    nop
    ret nc

    nop
    nop
    inc bc
    rrca
    inc bc
    rra
    ld c, $3d
    ld e, $39
    ld e, $63
    inc a
    ld b, e
    inc a
    add c
    nop
    ld h, e
    inc e
    ld a, [hl]
    dec e
    sbc [hl]
    ld l, l
    sbc h
    sub [hl]
    ld l, c
    sub e
    ld l, h
    adc e
    ld [hl], h
    sbc d
    ld [hl], h
    add c
    nop
    db $fc
    nop
    ld [hl], e
    cp h
    db $fd
    ld a, [hl]
    ld a, a
    rra
    ld hl, sp-$71
    ldh a, [$cf]
    ldh a, [rIE]
    ldh [rSB], a
    ld e, a
    nop
    rst $28
    db $10
    ld h, a
    sbc b
    inc hl
    call c, $e0fe
    add b
    db $10
    ld b, b
    ld [$307e], sp
    ld [hl], h
    inc h
    jr jr_02c_4bda

    jr jr_02c_4bcc

    ld a, [bc]
    inc b
    ld b, $00
    ld [bc], a
    nop
    rst $38
    rst $38
    nop
    add b
    add b
    xor a
    ld [hl], h
    rst $30
    dec l
    rst $38
    ld l, $f7
    cpl
    ld [hl], a

jr_02c_4bcc:
    rst $28
    ld [hl], e

jr_02c_4bce:
    db $dd
    ld l, e
    sbc [hl]
    ld l, l
    nop
    and b
    rrca
    ld c, a
    ld [hl], $5f
    inc [hl]

jr_02c_4bd9:
    cpl

jr_02c_4bda:
    jr @+$19

    ld [$0300], sp
    dec bc
    inc b
    inc e
    rlca
    jr nz, @-$7e

    cp $7e
    ret nz

    ld a, h
    rst $30
    ld a, b
    rst $38
    db $f4
    ret nc

    xor $d4
    db $f4
    ret z

    ld [$44f0], sp
    jr nz, @-$3e

    jr nc, jr_02c_4bd9

    nop
    ldh a, [$f0]
    add b
    ldh [rP1], a
    add b
    ldh [rP1], a
    ret nc

    jr nz, jr_02c_4c1a

    nop
    ld e, l
    ld e, e
    inc a

jr_02c_4c09:
    cp d
    cp [hl]
    or [hl]
    sub $3d
    ld d, a
    ld a, $63
    ld e, $2b
    ld d, $40
    ld b, c
    nop
    rra
    inc d
    dec bc

jr_02c_4c1a:
    ld a, [bc]
    dec b
    ld b, $01
    rlca
    rrca
    dec b
    ld c, $01
    inc bc
    nop
    rlca
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ldh a, [rNR41]
    ld hl, sp+$70
    db $fc
    ld c, b
    call c, $0808
    push de
    ld d, a
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    ret nc

    nop
    ld c, $3f
    ld c, $3e
    rla
    nop
    ld d, l
    inc bc
    rra
    dec bc
    rla
    ld c, $1b
    rlca
    rrca
    ld bc, $050c
    rlca
    rlca
    rst $38
    db $fd
    nop
    ldh [rP1], a
    nop
    or b
    ld h, b
    ldh a, [$c0]
    ld l, b
    sub b
    rst JumpTable
    jr nz, jr_02c_4c09

    ld e, l
    ld a, e
    add [hl]
    db $fd
    adc e
    cp $9d
    rst $38
    rst $38
    nop
    db $fd
    inc b
    nop
    add b
    ret nz

    add b
    ld h, b
    ret nz

    ldh [$b0], a
    ld b, b
    ld b, b
    nop
    ld b, b
    rlca
    rlca
    dec bc
    ld c, $17
    dec de
    inc bc
    inc l
    scf
    add hl, sp
    ld a, $3b
    inc l
    ld hl, $f825
    add hl, hl
    dec l
    ld sp, $7b35
    ld bc, $0600
    nop
    ld bc, $033c
    inc a
    dec de
    cpl
    jr @+$41

    nop
    ld bc, $334f
    adc a
    ld [hl], a
    ld hl, sp+$77
    ld a, h
    nop
    inc sp
    ld a, $01
    ccf
    jr jr_02c_4ce3

    dec de
    ccf
    jr @+$05

Call_02c_4cb0:
    inc bc
    ld bc, $003d
    ld a, [bc]
    inc a
    nop
    ld e, d
    inc a
    inc a
    ld a, [hl]

Call_02c_4cbb:
    ld b, c
    dec h
    add hl, hl
    nop
    ld c, $30
    nop
    nop
    jr z, jr_02c_4cd5

    ld e, $08
    dec c
    ld b, $0b
    rlca
    ccf
    rlca
    inc bc
    ld hl, $2925

jr_02c_4cd1:
    dec l
    ld sp, $8435

jr_02c_4cd5:
    ldh [rSB], a
    nop
    ld [bc], a
    ld bc, $0321
    ld bc, $1d0f
    inc bc
    daa
    rra
    inc hl

jr_02c_4ce3:
    daa
    ld l, l
    inc sp
    add c
    nop
    ld [de], a
    jr jr_02c_4ceb

jr_02c_4ceb:
    inc [hl]
    jr @+$26

    jr jr_02c_4d15

    add b
    inc de
    ld c, $1c
    ld [$0c16], sp
    rla
    ld c, $13
    ld b, b
    rrca

jr_02c_4cfc:
    ld hl, $0f11
    ei
    rlca
    rst $38
    ld [hl], h
    nop
    cp [hl]
    ld a, c
    adc h
    ld [hl], e
    db $fc
    rlca
    ld a, l
    ld c, $00
    daa
    inc e
    scf
    ld [$001f], sp
    jr nz, jr_02c_4d15

jr_02c_4d15:
    nop
    ld [hl], b
    jr nz, jr_02c_4cd1

    ld [hl], b
    rst $08
    jr nc, jr_02c_4cfc

    ld [hl+], a
    nop
    push af
    adc [hl]
    reti


    cp [hl]
    ld a, [$f27c]
    ld a, h
    nop
    db $fc
    nop
    sbc $60
    rst $28
    ld [hl], b

jr_02c_4d2e:
    rst $38
    ld [hl], b
    ld bc, $70fe
    db $fc
    jr nc, jr_02c_4d2e

    stop
    ret nz

    nop
    jr jr_02c_4d3c

jr_02c_4d3c:
    ld a, [hl]
    ld [$2c5e], sp
    sbc a
    ld l, [hl]
    inc bc
    cp l
    ld [hl], d
    ld e, d
    inc [hl]
    db $76
    ld [$002d], sp
    ld d, $00
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    nop
    inc e
    rrca
    db $10
    rrca
    jr nz, @+$21

    add hl, sp
    ld e, $20
    ld e, a
    ld l, $1d
    inc c
    ld h, b
    nop
    and b
    ld b, b
    ldh a, [rP1]
    ldh [$d0], a
    ldh [$38], a
    ret nz

    ld c, b
    or b
    ret z

    ld b, b

jr_02c_4d72:
    jr nc, jr_02c_4d9a

    ldh a, [$38]
    ld a, b
    cp b
    ld e, [hl]
    dec l
    jr nz, @+$50

    ld sp, $2b61
    inc d
    jr z, @+$19

    add hl, hl
    nop
    ld d, $1b
    inc b
    dec e
    ld [bc], a
    add hl, bc
    ld b, $04
    inc b
    inc bc
    inc bc
    nop
    ld bc, $a000
    ld a, b
    add b
    ld [$8870], sp
    jr nz, jr_02c_4d72

jr_02c_4d9a:
    inc hl
    ld hl, sp+$00
    add b
    ldh [$d1], a
    daa
    ld hl, $00c0
    ld b, b
    add b
    and b
    jr nz, @+$42

    ld h, b
    pop de
    ld bc, $0b00
    nop
    rla
    ld bc, $1708
    ld a, [bc]
    dec hl
    ld e, $3b
    rra
    ld hl, $5d00
    cpl
    ld l, a
    ccf
    ld [hl], h
    ccf
    sbc d
    ld a, l
    nop
    or e
    ld e, h
    xor e
    ld d, h
    ld l, [hl]
    ld de, $0040
    ld [$40a0], sp
    and b
    ret nz

    ld hl, $c0f0
    ld d, b
    nop
    ldh [rBCPS], a
    ret nc

    xor b
    ld [hl], b
    ldh [$f8], a
    ret nc

    nop
    ld hl, sp-$50
    ret c

    xor b
    ret c

    ld [hl], b
    ret z

    ld e, b
    nop
    and b
    ldh [rNR23], a
    ld hl, sp+$00
    ld l, e
    inc [hl]
    halt
    inc l
    ld d, a
    ld l, $3b

jr_02c_4df4:
    ld b, $0f
    ld [bc], a
    dec c
    ld b, $02
    ld b, $01
    ld bc, $0000
    db $10
    rst $38
    ld d, b
    nop
    ld bc, $0201
    ld bc, $010a
    ld d, b
    nop
    dec bc
    dec d
    dec e
    dec de
    rrca
    inc sp
    rra
    ld l, e
    scf
    ld l, e
    scf
    sub l
    ld l, a
    cp l
    ld c, a
    call nc, RST_00
    ld [$ad18], sp
    jr jr_02c_4e8f

    sbc b
    ld a, e
    adc l
    db $d3
    xor l
    adc e
    rst $30
    ld d, l
    ld d, h
    rst $38
    xor d
    jr z, jr_02c_4e67

    ld [hl], b
    ldh a, [$a0]
    jr nz, jr_02c_4df4

    cp a
    db $f4
    nop
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b
    sub b
    ld b, b
    ld [hl], b
    add b
    ld l, b
    sub b
    ld a, [hl+]
    xor a
    nop
    add b
    ld a, b
    ldh [$e0], a
    ret nz

    add b
    add b
    dec b
    ld bc, $be18
    ld c, l
    db $76
    dec e
    ld [hl], a
    scf
    inc sp
    inc c
    ld e, c
    ld h, $6e
    db $10
    inc h
    db $10
    ld d, h
    nop
    ld a, [hl-]
    inc b
    rlca
    ld [bc], a
    ld bc, $0103

jr_02c_4e67:
    ld bc, $0701
    add hl, bc
    ld b, $00
    rra
    nop
    ret nz

    cp [hl]
    ld b, b
    cp [hl]
    ld h, b
    sbc [hl]
    ldh a, [$0e]
    inc c
    ldh a, [$f0]
    db $f4
    rlca
    nop
    add b
    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    add b
    rst $38
    rst $38
    nop
    sub b
    nop
    ld bc, $0700
    rrca
    inc bc

jr_02c_4e8f:
    ccf
    nop
    ld a, a
    dec b
    ld a, [hl]
    dec h
    ei
    ld b, h
    cp $43
    rst $38
    rst $38
    nop
    ld [$f850], sp
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    call c, $8cf0
    ld d, $2e
    ldh a, [$97]
    ld l, b
    ld [bc], a
    ld [bc], a
    ccf
    push af
    dec bc
    cp $2d
    ld a, a
    ld a, [hl+]
    add hl, de
    rla
    ld a, [bc]
    rra
    inc b
    cpl
    dec de
    dec e
    nop
    ld a, [hl+]
    rra
    cpl
    jr jr_02c_4eda

    inc c
    dec c
    ld b, $0f
    nop
    ld a, [bc]
    rlca
    rrca
    ld a, [bc]
    ld [bc], a
    nop
    and b
    cp $e5
    sbc d
    rst $28
    sub $3f
    jp z, $12ff

    add sp, -$1c

jr_02c_4eda:
    call c, $fc68
    ld b, b
    nop
    ld d, b
    ld b, $be
    ld c, h
    or $0c
    ei
    ld h, [hl]
    rst $38
    ld [hl+], a
    rst $30
    db $fd
    ld [$d4dc], a
    jr z, jr_02c_4f40

    jr z, jr_02c_4f40

    ld sp, hl
    ld sp, hl
    db $dd
    ld l, $95
    ld l, [hl]
    sbc l
    ld h, [hl]
    inc [hl]
    inc [hl]
    ld d, d
    inc l
    inc b
    db $10
    ld d, b
    ld e, h
    jr nz, @-$6a

    ld l, b
    xor b
    or b
    ld b, b
    ldh a, [rP1]
    add sp, -$48
    ld b, b
    ld h, b
    nop
    rst $38
    db $fd
    nop
    ld bc, $1580
    inc bc
    ld bc, $0207
    rlca
    ld bc, $050f
    dec bc
    dec b
    rrca
    ld e, $1e
    db $fd
    nop
    nop
    rlca
    ld e, $07
    ld a, a
    rra
    cp a
    ld a, [hl]
    rst $38
    ld a, c
    ld [bc], a
    ld [bc], a
    ldh [$8f], a
    ld [hl], a
    inc de
    rst $28
    and b
    sbc $d8
    ret nz

    or b
    add b
    ld [hl], b
    ret nz

    jr nz, jr_02c_4f3f

jr_02c_4f3f:
    db $fd

jr_02c_4f40:
    nop
    nop
    add b
    ld h, b
    add b
    sbc b

jr_02c_4f46:
    ldh [$f4], a
    ld [$f4ca], sp
    rrca
    rst $38
    nop
    add d
    ret nz

jr_02c_4f50:
    ld bc, $0a02
    nop
    inc d
    dec d

jr_02c_4f56:
    ld a, [bc]
    ld d, $09
    dec bc
    dec bc
    inc de
    inc c
    ld [de], a
    dec c
    ld a, [de]
    dec b
    ld c, $01

jr_02c_4f63:
    ld b, b
    ld e, a
    nop
    rrca
    ld [$0407], sp
    inc bc
    ld b, $01
    inc bc
    ld bc, $00a0
    ld b, b
    and b
    and b
    jr nz, jr_02c_4f46

    jr nz, jr_02c_4f50

    db $ec
    db $10
    ld hl, sp+$00
    ld h, b
    add b
    ret nz

    nop
    ld l, d
    db $10
    add b
    ld b, b
    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    and b
    ld b, b
    ld h, b
    nop
    rla
    db $f4
    nop
    db $10
    ldh [$e0], a
    jr nc, jr_02c_4f56

    jr nc, @-$3e

    ld d, b
    dec d
    nop
    ret z

    inc b
    ld a, [bc]
    inc b
    ld c, $04
    ld a, [bc]
    inc b
    inc c
    jr @+$62

    jr nc, jr_02c_4fa8

jr_02c_4fa8:
    ld d, b
    jr nz, jr_02c_501e

    jr nz, jr_02c_4f63

    ld h, c
    xor h
    ld [hl], e
    or a
    ld a, b
    sbc e
    ld a, h
    adc a
    ld a, b
    ld c, a
    jr nc, jr_02c_5038

    nop
    ld a, a
    nop
    cp a
    ld b, b
    rst $38
    ld b, b
    ld l, [hl]
    ld sp, $1fee
    cp a
    ld b, b
    rrca
    nop
    ld hl, sp+$07
    add h
    ld a, e
    cp l
    ld b, d
    ld e, [hl]
    cp c
    db $e4
    dec sp
    adc d
    ld [hl], l
    dec de
    db $e4
    ei
    inc b
    rst $30
    inc c
    push hl
    ld e, $e6
    dec de
    db $ec
    ld d, e
    rst $28
    sub h
    rst $28
    inc d
    rst $28
    ld d, $ff
    nop
    db $fc
    rst $38
    cp $01
    rst $00
    ld a, h
    add $7d
    ld l, h
    cp e
    cp d
    rst $10
    ld d, l
    xor $93
    ld l, h
    rst $38
    add d
    rst $38
    nop
    ld a, h
    cp e
    cp $55
    rst $38
    sub $ff
    cp $7d
    add $01
    nop
    rlca

jr_02c_5009:
    nop
    inc c
    inc bc
    ld [$1107], sp
    ld c, $13
    dec c
    ld e, $03
    inc a
    dec de
    scf
    jr @+$69

    dec de
    rst $20
    ld e, e
    sbc a
    ld h, c

jr_02c_501e:
    cp a
    ld c, h
    ld a, [hl]
    dec h

jr_02c_5022:
    ld a, a
    jr nc, @+$36

    inc bc
    ld l, b
    sbc a
    ret nc

    ccf
    ld d, b
    cp a
    ld sp, $f9ce
    ld b, $e6
    sbc c
    ld [hl+], a
    db $dd
    inc hl
    call c, $847b

jr_02c_5038:
    rst $28
    jr jr_02c_5022

    inc e
    jp $633c


    sbc h
    db $76
    xor c

jr_02c_5042:
    db $fd
    ld [hl-], a
    rst $38
    ld h, d
    or $0b
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    cp a
    ld b, b
    rst $28
    jr nc, jr_02c_5042

    rra
    ld [hl], b
    adc a
    sbc l
    ld h, d
    sbc $21
    rst JumpTable
    jr nc, jr_02c_5009

    ld e, a
    ld a, e
    add h
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    xor $11
    cp $01
    cp e
    ld a, h
    ld b, h
    rst $38
    add e
    ld a, h
    rst $38
    nop
    rst $28
    db $10
    cp e
    cp $fd
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    cp e
    ld l, h
    rst $28
    cp $ff
    add hl, sp
    rst $38
    ld de, $fffe
    call c, $fca3
    inc bc
    cp $01

jr_02c_508c:
    ld a, [$fb05]
    inc b
    ei
    inc b
    xor $19
    xor $f1
    dec e
    ld [c], a
    ld [hl], e
    adc h
    rst $30
    ld [$1cf3], sp
    ld l, l
    ld a, [c]
    sbc [hl]
    ld h, c
    rst $28
    db $10
    rst $38
    rrca

jr_02c_50a6:
    ld [hl-], a
    call z, $e45a
    cpl
    ldh a, [$2c]
    di
    ld [$98f7], sp
    ld h, a
    ld sp, hl
    ld b, $c7
    add hl, sp

jr_02c_50b6:
    add h
    ld a, e
    add h
    ld a, e
    sbc $21
    rst $30
    jr jr_02c_50a6

jr_02c_50bf:
    jr c, jr_02c_5104

    cp h
    add $b9
    xor $15
    add b
    nop
    ld b, b
    add b
    jr nz, jr_02c_508c

    jr nz, @-$3e

    and b
    ld b, b
    ldh [$80], a
    ld a, b
    ret nz

    inc a
    ret c

    db $ec
    jr jr_02c_50bf

    ret c

    rst $20
    jp c, $86f9

    db $fd
    ld [hl-], a
    ld a, [hl]
    inc h
    ld a, [hl]
    inc c
    inc c
    nop
    inc b
    inc bc
    inc b
    inc bc
    ld [$0907], sp
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $0000
    nop

jr_02c_5104:
    nop
    nop
    ld a, e
    add l
    ld [hl], e
    adc h
    ld h, h
    sbc a
    ld l, b
    sbc a
    ld hl, sp+$0f
    and b
    ld a, a
    call nz, $a73b
    jr jr_02c_50b6

    nop
    adc a
    nop
    add e
    nop
    sbc h
    inc bc
    xor a
    db $10
    db $dd
    ld h, $7b
    inc c
    rra
    nop
    rst $28
    ldh a, [$fe]
    ld hl, $9d7b
    ccf
    pop bc

jr_02c_512e:
    rlca
    ld sp, hl
    ld c, a
    or c
    rst $38
    ld bc, $00f3
    adc [hl]
    ld [hl], b
    jp $d13c


    ld l, $73
    adc h
    ld c, $f0
    or b
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    rst $38

jr_02c_5147:
    ld a, h
    cp $55
    cp $01
    cp $01
    rst $38
    add hl, sp
    rst $38
    ld b, l
    rst $28
    rst $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$708f], sp
    db $fc
    inc bc
    ld hl, sp+$07
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst JumpTable
    jr nz, jr_02c_512e

    ld c, b
    add b
    ld a, a
    ld h, c
    ld e, $1a
    dec b
    rrca
    nop
    rlca

Call_02c_5181:
    nop
    nop
    nop
    nop
    nop
    cp a
    ld c, h
    ld e, a
    and $3f
    ldh [$2d], a
    ld a, [c]
    dec a
    jp nz, $f619

    sbc l
    ld h, [hl]
    db $ed
    ld b, $8f
    inc b
    rst $38

jr_02c_5199:
    inc b
    jp c, $ee24

    sub b
    ld a, h
    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    add $39
    inc c
    di
    ld [$18f7], sp
    rst $20
    nop
    ccf
    ret nz

    pop bc
    ld a, $0f
    rst $38
    ld bc, $40ff
    nop
    ld b, c
    inc bc
    db $fc
    rrca
    ldh a, [$bf]
    ret nz

    add b
    jr z, jr_02c_5147

    nop
    ld bc, $7d00
    add e
    cp [hl]
    nop
    pop bc
    ld a, [hl]
    add c
    ccf
    ldh [rNR24], a

jr_02c_51d1:
    ldh [$f1], a
    nop
    nop
    cp b
    ret nz

    add sp, -$10
    inc [hl]
    ld hl, sp-$12
    nop
    jr jr_02c_51d1

    inc c
    ei
    inc b
    db $ed
    ld [de], a
    ld [hl], l
    nop
    jp z, $60bf

    di
    nop
    add b
    nop
    ret nz

    ld b, b
    add b
    ld hl, $c0e0
    ld h, b
    ret nz

    ldh [rLCDC], a
    jr jr_02c_5199

    ld b, b
    ret nz

    ld c, a
    nop
    jr nz, jr_02c_5200

    nop

jr_02c_5200:
    ld [bc], a
    ld b, b
    ld bc, $0721
    nop
    rrca
    inc bc
    inc c
    rlca
    jr nz, jr_02c_521d

    ld c, $f3
    inc bc
    nop
    rra
    nop
    ld [hl], $00
    rrca
    ld b, b
    ccf
    ei
    inc b
    ld [hl], a
    ei
    adc h
    nop

jr_02c_521d:
    rst $30
    db $10
    rst $28
    xor [hl]
    ld d, c
    ccf
    ret nz

    add $10
    add hl, sp
    ld b, h
    cp e
    cp a
    ld b, $00
    rrca

Jump_02c_522d:
    ld b, $00
    rra
    ld b, $3f
    inc d
    dec h
    ld a, [de]
    ld [hl], c

jr_02c_5236:
    ld c, $00
    cp c
    db $76
    rst $20
    sbc b

jr_02c_523c:
    call nc, $8aab
    ld [hl], l
    inc bc
    ld a, [hl]
    pop bc
    ld a, b
    and a
    rst $30
    ld l, b
    cp a
    ld h, b
    ld [bc], a
    ld [hl], b
    nop
    ret c

    ld h, b
    inc a
    ret c

    ld hl, $003e
    ret nc

    sbc e
    ld h, [hl]
    ld d, e
    xor h
    scf
    jp z, $082f

    add $6e
    add h
    call nz, $c099
    nop
    ldh [rP1], a
    add b
    ld [hl], b
    ret nz

    ld a, b
    ret nc

    jr z, jr_02c_523c

    ld c, b
    inc b
    or b
    ld [$10f0], sp
    ldh [rNR42], a
    jr nc, jr_02c_5236

    add b
    add hl, hl
    db $ec
    jr @-$08

    inc c
    ei
    ld b, $7f
    inc b
    add b
    rst $38
    nop
    ld a, $c1
    ld h, c
    ld a, [hl]

jr_02c_5287:
    add c
    nop
    ld a, h
    add e
    call z, $fc33
    inc bc
    ld hl, sp-$79
    ld bc, $e718
    rst JumpTable
    jr nz, jr_02c_5287

    ret nz

    ldh [rNR42], a
    inc b
    ld b, b
    ret nz

    nop
    ld l, b
    ldh a, [rNR42]
    inc l
    ldh a, [rSC]
    inc h
    ld hl, sp+$36
    ld hl, sp+$12
    db $fc
    ld hl, $101b
    db $fc

jr_02c_52ae:
    add hl, bc
    cp $e1
    inc bc
    db $fc
    ld c, $f0
    nop
    db $fc
    nop
    rlca
    nop
    dec bc
    inc b
    rla
    add hl, bc
    jr nc, jr_02c_52de

    inc bc
    daa
    nop
    ld d, $1c
    db $e3
    jp $003c


    ld l, [hl]
    sub b
    ld hl, sp+$00
    pop af
    nop
    inc bc
    ld bc, $0340
    rra
    inc de
    xor c
    ld d, [hl]
    rst $38
    nop
    call nz, RST_38
    sbc a
    ld h, b

jr_02c_52de:
    cp [hl]
    ld b, c
    ld [hl], a
    inc c
    dec sp
    ld b, $40
    rra
    rra
    ld de, $00c0
    ld h, b
    add b
    jr nc, jr_02c_52ae

    nop
    db $10
    ldh [rNR23], a
    ldh [$08], a
    ldh a, [$0c]
    ldh a, [$08]
    inc b
    ld hl, sp-$7c
    ld a, b
    ld hl, $7886
    add d
    jr nz, jr_02c_537e

    and d
    ld b, c
    and e
    ld a, h
    or c
    ld a, [hl]
    pop de
    ld b, c
    ld a, $a1
    reti


    ld a, $e9
    ld e, $a9
    ld b, c
    nop
    xor d
    inc e
    ld a, [hl-]
    inc c
    ld [de], a
    inc c
    sub h
    ld [$d400], sp
    ld [$8058], sp
    ret c

    nop
    stop
    ld b, b
    nop
    ret nz

    ld b, $00
    rrca
    ld b, $07
    ld bc, $0f00
    nop
    rra
    rrca
    rra
    nop
    rlca
    inc bc
    ld [hl+], a
    rrca
    inc b
    add hl, hl
    inc bc
    ld bc, $5703
    ld bc, $0010
    ld [bc], a
    ld bc, $1321
    nop
    add hl, sp
    stop
    cp $11
    db $fc
    adc e
    ld a, [hl]
    db $ed
    rst $38
    inc l
    nop
    rst $38
    db $f4
    rst $38
    ld a, $ff
    ld a, e
    rst $38
    add l
    nop
    rst $08
    inc sp
    adc l
    ld [hl], e
    sbc [hl]
    ld h, c
    nop
    nop

jr_02c_5363:
    nop
    or e
    nop
    call $1a33
    rst $20
    ld l, h
    sub a
    nop
    db $e4
    ld e, e
    rst $28
    ld de, $0ef1
    db $fc
    inc bc
    nop
    ei
    inc h
    db $fc
    dec hl
    rst $38
    inc [hl]
    rst $38
    sub e

jr_02c_537e:
    ld [bc], a
    cp a
    push de
    rst $28
    reti


    rst $38
    rst $08
    ccf
    rst $00
    nop
    nop
    add hl, sp
    rst $00
    ccf
    db $e3
    ld [hl], a
    add sp, -$19
    nop
    jp c, $88f7

    rst $28
    ld [hl], b
    cp a
    ret nz

    rst JumpTable
    nop
    inc h
    ccf
    call nc, $2cff
    rst $38
    ret


    db $fd
    inc b
    xor e
    rst $30
    sbc e
    rst $38
    ld [hl], e
    ccf
    add b
    nop
    nop
    ldh [$80], a
    sbc b
    ldh [$fc], a
    ld [$887f], sp
    nop
    ccf
    pop de
    ld a, [hl]
    or a
    ld a, a
    or h
    rst $38
    cpl
    nop
    rst $38
    ld a, h
    rst $38
    sbc $ff
    and c
    ei
    call nz, $b10c
    adc $79
    add [hl]
    ccf
    and b
    ld h, b

jr_02c_53ce:
    nop
    nop
    ldh a, [$60]
    ldh [$80], a
    ldh a, [rP1]
    ld hl, sp-$10
    ld [bc], a
    ld hl, sp+$00
    ldh [$c0], a
    ldh a, [rNR41]
    add hl, hl
    ret nz

jr_02c_53e1:
    jr nz, jr_02c_5363

    ret nz

    ld d, a
    rst $00
    jr c, jr_02c_5451

    ld d, $2f
    ld bc, $3710
    ld [$043b], sp
    inc d
    ld [$1821], sp
    ld a, [bc]
    inc b
    ld b, $53
    nop
    inc c
    rst $38
    ld h, a
    cp l
    nop
    ld [hl], e
    rst $38
    jr c, jr_02c_53e1

    scf
    ccf
    inc bc
    rra
    ld bc, $0f01
    nop
    inc de
    dec c
    ld hl, $211e
    nop
    jr nz, jr_02c_5431

    jr z, jr_02c_5433

    jr jr_02c_5425

    ld d, $0f
    db $10
    ld [$0707], sp
    ccf
    ld h, [hl]
    cp l
    ld c, [hl]
    ld a, [$1c00]
    or $e8

jr_02c_5425:
    db $fc
    add b
    ld hl, sp+$00
    add sp, $04
    db $10
    adc b
    ld [hl], b
    ld [$21f0], sp

jr_02c_5431:
    sub b
    ld h, b

jr_02c_5433:
    add c
    ld hl, $40a0
    ldh [rP1], a
    ret nz

jr_02c_543a:
    nop
    jr nz, jr_02c_543e

    cp l

jr_02c_543e:
    ld [bc], a
    dec bc
    inc b
    dec c
    ld [bc], a
    dec b
    ld b, c
    ld [hl], $02
    nop
    ld hl, $1300
    jr nz, jr_02c_53ce

    ld h, b
    ld bc, $c188

jr_02c_5451:
    inc hl
    nop
    ld h, e
    ld b, c
    ld [hl], a
    nop
    rst $38
    push bc
    add c
    ld h, b
    ld [bc], a
    nop
    rlca
    ld b, c
    ld c, $41
    ld b, h
    add h
    ld b, c
    add b
    nop
    ret nz

    ld b, c
    ldh [rP1], a
    ld a, [de]
    db $f4
    nop
    cp $41
    jr nz, jr_02c_5472

    add c

jr_02c_5472:
    inc bc
    and d
    ld bc, $070b
    ld bc, $0f09
    nop
    rst $38
    ld bc, $800e
    nop
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    ld a, h
    rst $38
    inc a
    ld a, [hl+]
    rst $38
    inc e
    or c
    ccf
    add c
    rra
    ld b, c
    rrca
    add hl, bc
    nop
    rlca
    nop
    inc bc
    ld b, c
    ld bc, $0000
    inc c
    ld b, [hl]
    rst $38
    ld bc, $5f15
    nop
    dec d
    cp [hl]
    ld b, c
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    rlca
    nop
    ld h, a
    ld b, c
    ld b, l
    rst $30
    ld b, c
    or $00
    rst $38
    pop bc
    inc b
    ld bc, $a809
    jr nz, jr_02c_543a

    pop bc
    ld [$9c41], sp
    nop
    rst JumpTable
    adc b
    sbc a
    rlca
    nop
    rrca
    ld b, c
    rra
    nop
    ccf
    jr nz, jr_02c_54cb

jr_02c_54cb:
    ld a, a
    ld hl, $7f04
    ld b, $ff
    rlca
    adc l
    add c
    inc bc
    rst $38
    ld bc, $414f
    rst $38
    ld bc, $5512
    add c
    ld b, c
    jp Jump_02c_4281


    dec l
    rra
    ld bc, $400b
    rrca
    pop bc
    rlca
    nop
    dec b
    nop
    ld bc, $a000
    and b
    rst $38
    ld bc, $7f17
    nop
    ld e, a
    nop
    dec d
    push bc
    ld e, a
    ld h, b
    ld bc, $1300
    ld b, c
    dec sp
    ld b, c
    ld bc, $0039
    jr c, jr_02c_5507

jr_02c_5507:
    sub b
    nop
    call nc, Call_02c_5181
    db $fc
    ld b, c
    cp $9f
    add b
    nop
    ret nz

    add c
    ld de, $00c4
    add [hl]
    ld b, c
    rrca
    nop
    rra
    add c
    dec d
    cp a
    nop
    rst $38
    ld b, c
    ld bc, $0901
    dec b
    ld b, c
    ld a, l
    rlca
    ld b, c
    ccf
    ld hl, $a17f
    rst $38
    ld bc, $0012
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    dec d
    inc a
    rst $38
    ld a, $2d
    rra
    ld b, c
    rrca
    ld b, c
    ld [bc], a
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    ld de, $201c
    rst $38
    nop
    ld bc, $bf0e
    nop
    ccf
    nop
    cpl
    dec c
    nop
    dec bc
    nop
    ld [bc], a
    cp a
    ld b, b
    ld bc, $0581
    ld hl, $3100
    nop
    ld [hl], b
    add c
    jr nz, jr_02c_557e

    dec bc
    pop de
    ld hl, $0c00
    inc b
    ld b, c
    ld c, $00
    rrca
    add c
    ld de, $0007
    ld b, $41
    adc h
    nop
    ld [bc], a
    add c
    ret nc

jr_02c_557e:
    dec l
    ld [hl], e
    cpl
    ld b, c
    ld l, a
    nop
    ld a, a
    inc b
    ld [$077f], sp
    rst $38
    inc bc
    ld b, c
    ld bc, $00ff
    adc e
    ld hl, $0038
    inc a
    ld b, c
    ld a, [hl]
    ld c, c
    ld bc, $060d
    add c
    rst $38
    jp $e7ff


    ld b, c
    ld a, [hl+]
    nop
    rrca
    ld b, c
    rlca
    ld b, c
    inc bc
    ld b, c
    ld bc, $0050
    nop
    ld [de], a
    rst $38
    ld bc, $7f0d
    nop
    ccf
    nop
    rlca
    cpl
    nop
    dec b
    nop
    ld bc, $091f
    ldh [$31], a
    dec b
    inc bc
    nop
    rlca
    nop
    rrca
    ld b, c
    rra
    add c
    ld [hl], c
    ccf
    pop bc
    ld h, b
    inc sp
    ld a, a
    nop
    rst $38
    ld bc, $ac17
    nop
    ld d, $01
    ld b, c
    inc bc
    add c
    nop
    inc c
    rlca
    nop
    ld b, $1f
    nop
    ld a, a
    nop
    rst $38
    ld bc, $e00d
    inc a
    inc a
    nop
    ld a, [hl]
    inc de
    add hl, bc
    add hl, hl
    dec l
    nop
    inc c
    inc bc
    nop
    rla
    rrca
    nop
    rra
    ld b, c
    ccf
    pop bc
    ld l, e
    ld sp, $35d5
    ld h, b
    rlca
    sub a
    ld a, a
    ld b, c
    rst $38
    ld bc, $e00b
    ld l, a
    dec [hl]
    add hl, sp
    rlca
    jr jr_02c_560b

jr_02c_560b:
    jr z, @+$12

    nop
    add hl, sp
    db $10
    ld e, e
    jr nc, jr_02c_566a

    jr c, jr_02c_5674

    jr c, jr_02c_5619

    ld c, a
    inc a

jr_02c_5619:
    ld b, a
    inc a
    rst $20
    jr jr_02c_569c

    cp a
    nop
    ld b, b
    rst $38
    ld b, b
    ld l, [hl]
    ld sp, $1f2e
    ld a, a
    nop
    nop
    inc bc
    nop
    ld a, $01
    ld [c], a
    dec e
    inc a
    nop
    jp $1ce3


    sbc $39
    push hl
    ld a, [hl-]
    adc e
    nop
    ld [hl], l
    dec sp
    push bc
    push af
    ld c, $e6
    rra
    and c
    nop
    ld e, [hl]
    push hl
    ld e, d
    xor $95
    xor [hl]
    ld d, l
    xor $08
    ld d, l
    rst $38
    nop
    ld a, h
    ld [hl+], a
    rst $38
    cp $01
    nop
    rst $00
    ld a, h
    ld l, h
    cp e
    cp e
    ld d, h
    rst $10
    xor e
    inc b
    rst $38
    add e
    rst $38

jr_02c_5662:
    jr c, jr_02c_5662

    dec [hl]
    cp $7d
    ld h, b
    add $33

jr_02c_566a:
    ld hl, $39c6
    inc bc
    nop
    ld e, $00
    ld bc, $1926

jr_02c_5674:
    dec hl
    inc e

jr_02c_5676:
    scf
    inc c
    ld e, a
    nop
    jr nz, jr_02c_560b

    ld [hl], b
    sbc e
    ld h, h

jr_02c_567f:
    ld [hl], c
    ld c, $22

jr_02c_5682:
    nop
    dec e
    inc h
    dec de
    jr jr_02c_568f

    ld [$0707], sp
    stop
    inc b
    inc bc

jr_02c_568f:
    ld hl, $3fd0
    ld [hl], b
    sbc a
    nop
    jr nz, jr_02c_5676

    ld sp, $3fce
    ret nz

    and a

jr_02c_569c:
    ld e, b
    nop
    jp $233c


    call c, Call_02c_6c93
    rst $10
    jr z, jr_02c_56c7

    ld a, a
    add b
    ld hl, $00ff
    cp $01
    ld a, a
    nop
    add d
    ld a, a
    add c
    rst JumpTable
    ld h, $f7
    ld a, [bc]
    rst $30
    nop
    ld [$0cf7], sp
    ld a, e
    add a
    ld a, h
    add e
    ccf
    nop
    ret nz

    rst $38
    ld b, b
    cp a
    ld h, b

jr_02c_56c7:
    or a
    ld e, b
    rst $30
    nop
    rrca
    sbc [hl]
    ld h, c
    ld l, a
    sub b
    rst $38
    dec c
    rst $28
    nop
    ld de, $21de
    cp e
    ld a, h
    rst $00
    jr c, @+$01

    ld bc, $7d00
    cp $bb
    rst $00
    add $39
    dec hl
    add b
    add hl, hl
    rst $28
    db $10
    rst $30
    jr jr_02c_567f

    rst $28
    cp d
    ld bc, $ef6d
    cp $ff
    ld a, l
    rst $38
    ld de, $4724
    jr c, jr_02c_5741

    jr c, jr_02c_5682

    ld a, c
    sub [hl]
    ld a, c
    sbc a
    ld [hl], b
    sbc d
    ld [hl], a
    sbc h
    ld [hl], e
    sbc d
    ld [hl], c
    ld e, c
    jr nc, @+$5a

    jr nc, @+$5a

    jr nc, jr_02c_5737

    db $10
    ld a, [hl+]
    ld de, $021d
    rlca
    nop

Call_02c_5715:
    ld bc, $bf00
    ld e, [hl]
    ccf
    jp nz, $f947

    add e
    db $fc
    add b

jr_02c_5720:
    rst $38
    inc b
    ei
    ld c, a
    or b
    ld a, a
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    dec a
    ld [bc], a
    rst $00
    jr c, jr_02c_5720

    rrca
    db $db
    ld h, h
    cp [hl]
    ret nz

    db $fc
    nop

jr_02c_5737:
    rst $38
    rlca
    rst $28
    dec d
    cp a
    ret nc

    rst $38
    db $10
    ld a, a
    sub e

jr_02c_5741:
    rst $38
    inc d
    cp $1c
    inc a
    nop
    ldh [rP1], a
    jr nc, @-$3e

    db $10
    ldh [$30], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc hl
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    ld sp, $7931
    ld c, c
    db $db
    xor e
    rst $38
    xor a
    cp a
    ld l, b
    xor a
    ld [hl], b
    cp a
    ld [hl], b
    cp [hl]
    ld a, c
    sbc a
    ld a, b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    ld a, d
    add l
    sbc b
    rst $20
    ret nz

    ld a, a
    rst JumpTable
    ccf
    inc de
    inc de
    ld a, a
    ld a, h
    cp $e1
    di
    inc c
    db $db
    dec a
    and l
    ld a, e
    rla
    jp hl


    ld a, e

jr_02c_57a6:
    add l
    pop af
    ld c, $b0
    ld c, a
    xor c
    ld e, [hl]
    dec l
    sbc $20
    rst JumpTable
    ld l, c
    sub $bd
    jp z, $0afd

    rst $38
    rst $38
    rst $38
    nop
    ld a, h
    add e
    rst $00
    ld a, h
    ld l, l
    cp e
    cp e
    rst $10
    rst $10
    xor e
    rst $38
    add e
    rst $38

jr_02c_57c8:
    jr c, jr_02c_57c8

    ld d, l
    rst $38
    cp $7d
    add $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    scf
    ld [hl], $bf
    cp h
    cp h
    cp e
    db $fc
    db $e3
    and $d9
    db $eb
    call c, $ccf7
    rst JumpTable
    and b
    adc a
    ldh a, [$9b]
    db $e4
    pop af
    adc [hl]
    ld [c], a
    db $dd
    ld h, h
    ld e, e
    ld a, b
    ld h, a
    jr c, @+$39

jr_02c_57f5:
    rra
    jr jr_02c_57a6

    rst JumpTable
    rra
    ldh [$80], a
    ld a, a
    ld b, b
    cp a
    ld hl, $3fde
    ret nz

    ld h, $d9
    and d
    ld e, l
    db $d3
    inc l
    inc sp
    call z, Call_02c_48b7
    rst JumpTable
    jr nz, @+$58

    xor c
    ld [hl], a
    adc d
    and a
    ld e, c
    cpl
    pop de
    db $fd
    ld a, [bc]
    rst $38
    inc c
    rst $38
    inc b
    push af
    ld a, [bc]
    or l
    ld c, [hl]
    dec sp
    rst $00
    ld a, $c1
    rra
    ldh [$8d], a
    ld a, [c]
    ld b, l
    ld a, [$7ea1]
    ld h, c
    sbc [hl]
    rst $38
    rrca
    ld a, e
    add l
    db $76
    adc c
    ld l, a
    ret nc

    rst $00
    jr c, jr_02c_57f5

    ld a, h
    rst $38
    nop
    add e
    ld a, h
    ld a, l
    cp $bb

jr_02c_5842:
    rst $00
    ld b, h
    cp e
    rst $00
    jr c, @+$01

    nop
    rst $28
    db $10
    rst $10
    jr c, @+$01

    xor $ef
    ld a, l
    rst $38
    ld de, $fffe
    rst $38
    ld a, h
    ld c, $0d
    add [hl]
    add l
    ld c, [hl]
    ld c, l
    inc l
    dec hl
    inc a
    dec sp
    ld a, $3b
    ld e, $1b
    ld e, $1b
    ld e, $1b
    inc c
    dec bc
    rrca
    inc c
    rlca
    ld b, $21
    ld hl, $1818
    ld c, $0e
    ld bc, $2f01
    ret nc

    jr c, jr_02c_5842

    ld [hl-], a
    rst $08
    ld h, h
    sbc a
    ld [hl], h
    adc a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld d, b
    cp a
    ld h, a
    sbc b
    ld a, a
    and b
    ld a, a
    or c
    rst $38
    add hl, sp
    db $fd
    inc hl
    db $fd
    rst $00
    ld a, e
    ld c, l
    rst $38
    rst $38
    ld e, [hl]
    and c
    ld a, a
    and c
    ccf
    pop hl
    dec sp

jr_02c_589e:
    db $dd
    rlca
    ld sp, hl
    ld h, $d9
    ld l, $d1
    cp $05
    rst $38
    inc c
    adc a
    ld [hl], c
    srl h
    push de
    ld l, $77
    adc [hl]
    cp a
    rst $00
    rst $38
    rst $08
    ld hl, sp-$08
    cp $55

jr_02c_58b9:
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $39
    cp d
    ld b, l
    jr c, jr_02c_589e

    rst $38
    jr c, jr_02c_58b9

    rst $28
    rst $00
    add $83
    add d
    add e
    add d
    add e
    add e
    ld bc, $0001
    nop
    ld b, c
    nop
    ld b, b
    rra
    nop
    ld l, $1f
    ccf
    add c
    nop
    cpl
    rra
    rra
    rrca
    rla
    rrca
    rrca
    rlca
    jr @+$07

    inc bc
    inc bc
    ld a, b
    ret nz

    jr jr_02c_58f1

jr_02c_58f1:
    ld h, $14
    jr @+$2f

    ld e, $b9
    rlca
    add hl, sp
    ld bc, $c001
    dec de
    dec bc
    nop
    add hl, de
    inc bc
    inc bc
    rrca
    ld c, $3f
    nop
    ld b, b
    rst $38
    ld de, $010b
    nop
    ld [bc], a
    nop
    ld b, $00
    nop
    inc c
    ld [$101c], sp
    add hl, sp
    ld hl, $c7ff
    ld c, $ff
    sbc a
    rst $38
    ld a, a
    dec a
    rra
    inc c
    jr nz, jr_02c_5924

    add b

jr_02c_5924:
    ccf
    inc b
    ld e, $18
    ld a, h
    ld [hl], b
    ld sp, hl
    ldh [rP1], a
    or $c4
    cp $98
    db $fc
    ldh [$f8], a
    nop
    ld d, h
    ldh [$d9], a
    add b
    add c
    ret nz

    ld h, c
    ld b, b
    ldh [$84], a
    ld h, c
    ld h, b
    ldh a, [$60]

jr_02c_5943:
    db $f4
    ld h, c
    jr nc, jr_02c_5943

    add d
    ld hl, $fc38
    inc a
    ld a, [hl]
    inc e
    ld b, c
    ld [$3e08], sp
    nop
    rra
    nop
    nop
    rla
    cp l
    nop
    ld b, d
    rlca
    inc a
    add c
    ld a, [hl]
    sbc c
    ld h, [hl]
    ld hl, $2925
    ret nz

    dec l
    nop
    inc c
    inc hl
    nop
    inc e
    inc bc
    db $10
    rrca
    add a
    ld hl, $1e21
    inc hl
    inc e
    ld hl, $6b25
    ldh [$31], a
    dec [hl]
    ld h, b
    add a
    nop
    ld a, b
    rlca
    ld h, b
    nop
    rra
    ld b, b
    ccf
    ld b, e
    inc a
    add a
    ld a, b
    adc a
    ld a, a
    ld [hl], b
    and c
    add hl, hl
    dec l
    ld sp, $3921
    dec a
    add b
    ldh [$80], a
    nop
    ld h, e
    nop
    ld a, h
    inc bc
    jr nz, jr_02c_59fc

    rra
    ld h, c
    add hl, sp
    ld b, c
    ccf
    add e
    ld a, a
    ld hl, $876c
    ld b, c
    rst $38
    rst $38
    ld h, d
    add c
    inc a
    rst $38
    ret nz

    nop
    inc c
    ld b, [hl]
    nop
    add b
    add hl, de
    rlca
    inc bc
    xor b
    nop
    rla
    ret nc

    nop
    ldh [$7a], a
    db $fc
    ld e, a
    ccf
    rla
    rrca
    rlca
    rlca
    inc bc
    ld bc, $2903
    rra
    ld h, $27
    jr z, jr_02c_5a2c

    ld bc, $0b1f
    ld h, b
    add b
    nop
    and b
    ret nz

    add sp, $02
    ldh a, [$f4]
    ld hl, sp-$06
    db $fc
    cp $81
    cp d
    jr nz, @+$7e

    db $fc
    dec de
    add hl, bc
    adc $3f
    dec de
    rlca
    ld [bc], a
    ld [hl], b
    ld bc, $c6ab
    nop
    dec c
    add b
    nop
    ret nc

    ldh [rP1], a
    db $fc
    ld hl, sp-$41
    ld a, [hl]
    ccf
    rra
    rla
    rrca
    nop

jr_02c_59fc:
    ld c, e
    rst $20
    ld [hl], l

Call_02c_59ff:
    dec sp
    ld a, [hl-]
    dec e
    dec e
    ld c, $03
    ld c, $07
    rlca
    inc bc
    inc bc
    ld bc, $e0bf
    nop
    ld b, b
    add b
    and b
    ret nz

    ret nc

    ldh [$e8], a
    ldh a, [rP1]
    db $f4
    ld hl, sp+$7a
    db $fc
    cp [hl]
    ld a, h
    ld a, a
    cp [hl]
    nop
    rst JumpTable
    cp [hl]
    ld [hl], a
    dec sp
    dec a
    dec de
    dec sp
    dec e
    nop
    ld l, $1d
    dec e

jr_02c_5a2c:
    ld c, $1f
    ld c, $17
    ld c, $00
    ld c, $07
    rrca
    rlca
    dec bc
    rlca
    rlca
    inc bc
    add h
    ld h, c
    dec b
    inc bc
    inc bc
    ld bc, $f021
    ldh [$90], a
    ld hl, $f0f8
    ld h, c
    ld [hl], h
    ld hl, sp+$7c
    ld hl, sp+$00
    db $fc
    ld a, b
    ld a, [$ba7c]

jr_02c_5a52:
    ld a, h
    cp [hl]
    ld a, h
    ld [$bc7e], sp
    db $fd
    cp [hl]
    ld hl, $bedd
    rst JumpTable
    add hl, bc
    cp [hl]
    inc bc
    ld bc, $8102
    ld bc, $0100
    ld d, $11
    cp a
    sbc $ff
    ld bc, $df0d
    cp $dd
    add c
    jr nz, jr_02c_5a52

    db $fc
    ld hl, $fcda
    ld a, [$01fc]
    ld [hl], h
    nop
    ld hl, $4142
    inc bc
    add c
    dec b
    inc bc

jr_02c_5a84:
    add h
    ld hl, $0307
    dec bc
    rlca
    ld hl, $070f
    ld [bc], a
    ld d, $0f
    dec e

jr_02c_5a91:
    ld c, $fc
    ld hl, sp+$21
    db $f4
    sub b
    ld b, c
    ld hl, sp-$10
    ld hl, $f0e8
    ldh a, [$e0]
    nop
    ret nc

    ldh [$e0], a
    ret nz

    and b
    ret nz

    ret nz

    add b
    inc c
    ld b, b
    add b
    add b
    nop
    ld hl, $0a00
    ld bc, $1800
    ld [bc], a
    ld bc, $0f07
    dec bc
    ldh [$2a], a
    inc e
    inc [hl]
    nop
    jr jr_02c_5b27

    jr nc, jr_02c_5a91

    ld h, b
    jr nz, jr_02c_5a84

    add b
    ldh [rNR33], a
    inc de
    jr nz, jr_02c_5b1a

    nop
    nop
    ld bc, $2c39
    jr jr_02c_5af7

    inc e
    inc de
    ld c, $c9
    rlca
    db $e4
    ld b, e
    ld a, [c]
    ld b, c
    nop
    rlca
    nop
    ld sp, hl
    ld h, b
    ld a, [hl]
    jr nc, jr_02c_5b41

    inc a
    daa
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    sub b
    nop
    ldh [rP1], a
    ret nc

    add sp, $30
    ld [hl], h
    jr jr_02c_5b26

    inc e
    cp d
    inc c

jr_02c_5af7:
    reti


    adc [hl]
    ld a, c
    adc $14
    nop
    ld a, h
    add hl, sp
    cp $93
    add d
    add l
    ld a, [$f60b]
    ld [hl], a
    adc l
    call c, $1203
    dec c
    rst $38
    rst $38
    nop
    db $f4

jr_02c_5b10:
    nop
    nop
    ldh [rNR10], a
    ldh [$d0], a
    jr nz, jr_02c_5b10

    ld b, b
    db $ec

jr_02c_5b1a:
    sbc b
    ld h, [hl]
    sbc h
    nop
    ld a, a
    nop
    ld [$0c07], sp
    inc bc
    inc b
    inc bc

jr_02c_5b26:
    ld [bc], a

jr_02c_5b27:
    ld bc, $d001
    ld b, b
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0f07
    inc bc
    inc c
    rlca
    ld de, $000e
    nop
    pop hl
    ld e, $61
    cp $03
    db $fc
    dec c

jr_02c_5b41:
    ld a, [c]
    adc e
    ld [hl], h
    rst JumpTable
    jr nz, jr_02c_5bbd

    rrca
    ld b, b
    ccf
    sub b
    nop
    ei
    inc b
    ld [hl], a
    adc h
    rst $30
    db $10
    rst $28
    xor [hl]
    ld d, c
    ccf
    ret nz

    add $39
    ld b, h
    cp e
    sub h
    nop
    ld b, b
    nop
    and b
    ldh [$50], a
    ldh [$50], a
    ldh [$dc], a
    ld h, b
    cp $00
    ld a, $c0
    nop
    nop
    sbc a
    ld h, b
    or $0b
    ld b, [hl]
    cp e
    inc bc
    db $fd
    xor c
    ld e, [hl]
    cp h
    ld b, a
    ld a, $c9
    ld e, a
    db $ec
    rst $38
    rst $38
    nop
    sub b
    nop
    cp b
    nop
    ld e, h
    ld [hl], d
    call z, $d46a
    push bc
    cp d
    cp a
    ld h, b
    cp h
    ld d, b
    ld a, [HeaderTitle]
    ld d, b
    dec e
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    ld [hl], $0d
    ld l, $2a
    ld h, d
    ld b, e
    inc a
    ld b, e
    inc a
    ld a, [bc]
    nop
    add a
    ld b, e
    inc a
    rst $00
    jr c, jr_02c_5c21

    ld a, b
    add [hl]
    ld a, c
    add h
    ld a, e
    add e
    ld a, h
    add b
    ld a, a
    nop
    nop
    add sp, -$69
    ret


    or [hl]
    xor d
    push de

jr_02c_5bba:
    ld a, [$5ec5]

jr_02c_5bbd:
    pop hl
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    add b
    add b
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    cp l
    ld a, [hl]
    add b
    add sp, $17
    ret z

    scf
    call nz, $883b
    ld b, b
    ld c, a
    ldh a, [$27]
    ei

jr_02c_5bdb:
    or [hl]
    rst $38
    ld c, [hl]
    rst $38
    di
    ld l, [hl]
    rst $28
    jr nc, jr_02c_5c61

    add e
    ld [$df01], sp
    or $8f
    cp $81
    jr nz, jr_02c_5bba

    ld [hl], e
    ld l, c
    rst $30
    cpl
    di
    inc d

jr_02c_5bf4:
    db $eb
    jr nz, @+$0a

    and b
    ei
    or $0c
    xor $d8
    and h
    ld a, [$ecad]

jr_02c_5c01:
    inc [hl]
    or $09
    db $f4
    rlc b
    nop
    jr z, jr_02c_5c01

    jr nc, jr_02c_5bdb

    ldh [$1f], a
    inc c
    di
    db $e4
    ei
    inc bc
    db $fc
    inc de
    db $ec
    daa
    ret c

    db $f4
    nop
    nop
    ret nz

    ldh [$80], a
    ld [hl], b
    ret nz

    ld a, b

jr_02c_5c21:
    ret nc

    jr z, jr_02c_5bf4

    ld c, b
    or b
    nop
    nop
    inc c
    ldh a, [rNR21]
    db $ec
    inc de
    xor $3a
    push bc
    ld b, h
    cp e
    db $eb
    inc e
    push af
    ld c, $fa
    rlca
    rst $38
    rst $38
    nop
    db $f4
    ld bc, $c000
    ldh [$c0], a
    or b
    ld h, b
    ldh a, [rNR41]
    sub b
    ld h, b
    ldh [$15], a
    nop
    ld [hl], a
    add b
    ld a, a
    adc b
    adc b
    adc d
    add l

jr_02c_5c51:
    ld a, e
    ld b, h
    dec sp
    ld b, d
    dec a
    ld b, c
    ld a, $50
    nop
    rra

jr_02c_5c5b:
    ld h, b
    jr nz, jr_02c_5c8e

    rrca
    jr c, jr_02c_5c68

jr_02c_5c61:
    db $76
    add hl, bc
    cp c
    ld c, [hl]
    rst $30
    jr jr_02c_5ca6

jr_02c_5c68:
    nop
    nop
    dec d
    rst $38
    ld b, e
    cp h
    ld b, b
    cp a
    jr nz, jr_02c_5c51

    jr jr_02c_5c5b

    rrca
    ldh a, [$80]
    ld b, b
    jr nz, jr_02c_5c7a

jr_02c_5c7a:
    nop
    sub b
    ld a, a
    ld c, h
    cp a
    daa
    rst JumpTable
    add hl, de
    rst $20
    ld b, $f9
    pop bc
    ld a, $78
    rlca
    rrca
    nop
    ld [$0002], sp

jr_02c_5c8e:
    ldh [$1f], a
    ld [hl], b
    adc a
    rst $38
    add e
    ld a, [hl]
    call Call_02c_633e
    sbc h
    ld a, $c1
    rst $38
    ld d, l
    ld b, b
    rst $38
    nop
    nop
    nop
    ldh [$7f], a
    adc $3f

jr_02c_5ca6:
    ccf
    ret nz

    db $fc
    nop
    db $fd
    nop
    nop
    inc bc
    dec b
    ld [bc], a
    rlca
    ld [bc], a
    ld a, [bc]
    rlca
    dec bc
    rlca
    ld d, b
    add b
    rlca
    dec bc
    add hl, bc
    dec b
    ld [bc], a
    inc bc
    nop
    nop
    dec de
    ld b, $3c
    dec de
    inc a
    dec de
    db $f4
    nop
    nop
    inc bc
    inc c
    inc bc
    inc sp
    inc c
    ld e, a
    inc hl
    adc b
    ld [hl], a
    ld [hl], b
    adc a
    jr z, jr_02c_5cd6

jr_02c_5cd6:
    rst $38
    or a
    ret z

    nop
    nop
    cp $31
    cp $31
    or [hl]
    ld e, c
    or [hl]
    ld c, c
    add a
    ld a, b
    ret nc

    nop
    nop
    ld a, a
    add a
    ld a, a
    ld c, a
    or b
    call c, Call_02c_6627
    sbc e
    res 7, l
    dec [hl]
    adc $00
    nop
    ld a, c
    add [hl]
    cp l
    ld e, d
    ld a, a
    ret c

    ld e, a
    ldh [$27], a
    ei
    rrca
    push af
    cpl
    db $dd
    ld l, a
    sbc a
    ld b, b
    ld [bc], a
    dec bc
    ld a, h
    reti


    ld h, [hl]
    jp z, $ec35

    ld d, e
    ld hl, sp+$67
    ld a, b
    daa
    inc l
    inc bc
    inc b
    ld [bc], a
    and b
    inc hl
    ld de, $110e
    ld c, $13
    inc c
    inc e
    inc e
    inc e
    daa
    jr @+$49

    jr c, jr_02c_5d29

jr_02c_5d29:
    ld hl, $8f13
    ld [hl], b
    rst $08
    jr nc, jr_02c_5d67

    adc $20
    rst JumpTable
    ld hl, $edde
    dec sp
    push bc
    rst $28
    nop
    nop
    db $db
    db $e4
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f6
    add hl, bc
    rst $28
    db $10
    cp $21
    rst $38
    ld e, $bf
    ld b, d
    ld a, [bc]
    ld [bc], a
    rst $38

jr_02c_5d4e:
    ld [hl], a
    xor h
    ld a, a
    and b
    jr nc, @+$12

    db $db
    daa
    db $e4
    sbc a
    ld hl, sp-$79
    nop
    nop
    and d
    rst $38
    cp c
    ld a, [hl]
    rst $08
    jr nc, jr_02c_5d4e

    ld d, $fe
    rrca
    rst $10

jr_02c_5d67:
    ld de, $1fef
    dec b
    ld d, b
    ld b, b
    jr c, jr_02c_5db6

    ld b, a
    ld d, [hl]
    add hl, sp
    ld d, [hl]
    add hl, sp
    ld d, a
    ld a, $13
    inc a
    inc de
    ld l, $11
    ld d, h
    rlca
    nop
    dec de
    jr jr_02c_5d8c

    dec b
    ld [bc], a
    dec bc
    inc b
    rrca
    ld bc, $0403
    db $10
    db $fc
    rra

jr_02c_5d8c:
    pop hl
    ld c, a
    ldh a, [$83]
    add b
    rst $38
    ld [bc], a
    db $fd
    inc bc
    ld b, a
    cp b
    ld a, l
    add d
    nop
    rlca
    nop
    ld sp, hl
    ld b, $83
    ld a, h
    and $18
    db $f4
    ld [$c0bc], sp
    ld [hl], b
    add b
    ldh [rP1], a
    rla
    nop
    xor a
    ret nc

    rst $28
    db $10
    rst $28
    db $10
    ld a, a
    sub e
    rst $38
    inc e

jr_02c_5db6:
    cp h
    add b
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    dec h
    nop
    ld b, $01
    nop
    ld bc, $0f0f
    rra
    ld [bc], a
    ld [hl], $19
    ld [hl-], a
    dec c
    dec sp
    inc d
    inc d
    nop
    jr nz, jr_02c_5e02

    nop
    ld d, b
    ld [hl], b

jr_02c_5dd5:
    xor b
    ld [hl], b
    or l
    ld a, b
    cp a
    ld a, b
    sbc [hl]
    ld [hl], c
    ld e, a

jr_02c_5dde:
    inc l
    nop
    inc h
    ld [hl], e
    rst $38
    inc c
    db $ed
    sub [hl]
    dec l
    jp nc, $de21

    inc hl
    call c, $8d8c
    ld [$f4f7], sp
    nop
    nop
    rra
    ld a, b
    rra
    ld hl, sp+$07
    ld l, l
    ld a, [c]
    sub a
    ld a, b
    rst $00
    add hl, sp
    nop
    jr z, @-$10

    ei

jr_02c_5e02:
    dec b
    db $fd
    ld b, $f6
    rrca
    pop hl
    ld e, $e5
    ld a, [de]
    dec d
    sub l
    ld l, $d5
    db $f4
    nop
    nop
    add e
    cp $01
    jr c, jr_02c_5dde

    rst $28
    jr c, jr_02c_5dd5

    ld d, h
    rst $10
    xor e
    add hl, bc

jr_02c_5e1e:
    jr z, jr_02c_5e1e

    rst $38
    add e
    rst $38
    jr c, jr_02c_5e7a

    rst $38
    ld a, l
    add $01
    ld bc, $39c6
    dec b
    ld b, b
    nop
    ld a, $19
    ld e, $09
    dec bc
    ld bc, $0503
    ld [bc], a

jr_02c_5e38:
    dec b
    ld [bc], a
    inc c
    inc bc
    ld d, h
    nop
    rlca
    ld [$1c08], sp
    inc d
    rrca
    inc e
    rrca
    jr jr_02c_5e57

    add hl, de
    ld c, $19
    ld c, $00
    ld d, h
    rst $38
    ld [$0cf7], sp
    di
    ld e, $e1
    di
    inc c

jr_02c_5e57:
    jr nc, jr_02c_5e59

jr_02c_5e59:
    nop
    and c
    ld e, [hl]
    nop
    and d
    rst $38
    rst $20
    jr @+$40

    pop bc
    ld a, a
    add b
    ld a, a
    add b
    nop
    nop
    cp $01
    ld [bc], a
    ld a, [hl+]
    nop
    rst $30
    ld a, a
    add [hl]
    ld c, d
    ld c, b
    call z, $07fb
    db $fc
    inc bc
    cp a
    ld b, b

jr_02c_5e7a:
    cp a
    ld b, b
    nop
    nop
    rra
    ldh [rPCM34], a
    sbc b
    rst $30
    rrca
    call c, $9e23
    ld h, c
    ld l, a
    sub b
    rst $38
    dec c
    rst $28
    ld de, $8880

jr_02c_5e90:
    cp e
    ld a, h
    rst $00
    jr c, @+$01

    nop
    ld a, l
    cp $c7
    add $39
    ld a, h
    rst $38
    nop
    add h
    jr nz, jr_02c_5e90

    db $10
    rst $10
    jr c, jr_02c_5e38

    cp $01
    cp d
    ld l, l
    cp $ff
    ld a, l
    rst $38
    ld de, $4005
    ld b, $19
    ld c, $11
    ld c, $19
    add hl, bc
    add hl, bc
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0f44
    rst $08
    ld bc, $048b
    add hl, bc
    ld b, $14
    jr @-$56

    rra
    or b
    jr nc, jr_02c_5ef0

    rlca
    rst $38
    nop
    ld [hl+], a
    dec e
    inc sp
    inc c
    rra
    add d

jr_02c_5eda:
    nop
    cp $e1
    rst $38
    jr nz, jr_02c_5eda

    dec e
    ld bc, $c13e
    ld b, $f9
    ld l, $d1
    ccf
    ret nz

    nop
    nop

Call_02c_5eec:
    ld a, [hl]
    add c
    db $fc
    inc bc

jr_02c_5ef0:
    ldh a, [rIF]
    jr jr_02c_5efb

    cpl
    db $10
    ld e, l
    ld h, $7b
    inc c
    rra

jr_02c_5efb:
    nop
    adc d
    and b
    cp $ff
    rst $38
    ld d, h
    ld bc, $3901
    ld b, l
    xor $c7
    rst $00
    nop
    dec b
    jr z, jr_02c_5e90

    ld [hl+], a
    pop bc
    inc h
    jp Jump_02c_4464


    ld b, a
    add b
    nop
    nop
    ld bc, $fd00
    nop
    nop
    inc c
    inc d

jr_02c_5f1e:
    ld [$081c], sp
    inc l
    jr @+$2c

    inc e
    nop
    and d
    rst $38
    cpl

jr_02c_5f29:
    inc e
    dec h
    ld e, $61
    ld e, $73
    inc c
    nop
    nop
    cp a
    ld b, b
    ld b, b
    add d
    nop
    db $e3
    nop
    db $fd
    inc bc

jr_02c_5f3b:
    rst $30

jr_02c_5f3c:
    rrca
    inc e
    call z, $df33
    jr nz, jr_02c_5f3b

    rrca
    ldh a, [$1f]
    and b
    nop
    jr nc, jr_02c_5f29

    rst JumpTable
    jr jr_02c_5f3c

    jr c, jr_02c_5f1e

    dec l
    rst $30
    ld d, a
    cp d
    ld [$f21d], a
    dec c
    sub b
    ld [$00e0], sp
    ret c

    inc b
    ld hl, sp-$01
    nop
    ld e, $ff
    jp $9f3f


    ld a, h
    jp RST_00


    ld h, a
    ret c

    ld h, [hl]
    rst JumpTable
    pop bc
    cp a
    and $99
    and e
    ld a, h
    ld d, c
    xor $b9
    add $79
    add [hl]
    rst $38
    ld b, b
    nop
    ret nz

    or b
    ret nz

    ret c

    ldh [$2c], a
    ldh a, [rP1]
    nop
    add [hl]
    ld a, b
    jp Jump_02c_613c


    sbc [hl]
    ld sp, $10ce
    rst $28
    ldh a, [rIF]
    ret nc

    cpl
    ld hl, sp+$27
    rst $38
    ret nc

    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $4140
    nop
    inc bc
    dec b
    ld [bc], a
    ld [$0907], sp
    ld b, $0f
    ld b, $01
    ld [bc], a
    ld bc, $fd03
    nop
    nop
    inc bc
    ccf
    ld bc, $19e7
    ld h, d
    sbc l
    or e
    call z, RST_00
    ld [hl], e
    call z, $05fa
    db $fc
    inc bc
    or d
    ld c, l
    add hl, de
    and $2d
    jp nc, $b847

    add a
    ld a, b

jr_02c_5fcb:
    nop
    nop
    rst $28
    jr nc, jr_02c_5fcb

    rlca
    or h
    ld c, a
    and e
    call c, $b946
    ld a, h
    add e
    inc e
    db $e3
    add hl, sp
    rst $00
    ld [bc], a
    add b
    dec l
    ld sp, hl
    rlca
    ld a, d
    add l
    inc a
    jp $d2d2


    ld l, l
    sub d
    or $09
    rst $38
    ld [$2800], sp
    rst $38
    ld a, d
    sub l
    cp l
    jp nz, Jump_02c_7887

    rst $08
    or a
    rst JumpTable
    xor d
    jp c, Jump_02c_6f5f

    sbc b
    ld b, $28
    rst $38
    ld hl, sp+$07
    ld a, a
    add b
    ld a, $00
    rst $28
    db $fc
    ld a, [hl]
    ld [de], a
    db $fd
    cp $24
    nop
    add sp, -$09
    ld c, b
    rla
    rla
    xor [hl]
    ld d, c
    rst $28
    sub b
    rst JumpTable
    ldh [$df], a
    ldh [rIE], a

jr_02c_601e:
    and b
    and b
    nop
    rst $38
    jr nz, @+$12

    cp e
    ld c, h
    cp e
    ld h, a
    ld c, a
    ldh a, [rSTAT]
    cp $01
    cp $02
    db $fd
    dec b
    nop
    di
    add sp, $37
    xor b
    ld [hl], a
    ld l, h
    call z, $f18e
    sbc d
    ld h, l
    ld a, [$fa05]
    dec b
    ld bc, $e014
    or $09
    rst $38
    ld [$30df], sp
    rst JumpTable
    rst $38
    nop
    rra
    rra
    ccf
    ret nz

    and c
    ld d, h
    add b
    nop
    nop
    ret nz

    nop
    ld b, b
    ld b, b
    ld b, b
    ld h, b
    jr nz, jr_02c_601e

    ld d, l
    nop
    ret nz

    jr nz, @+$22

    ld h, b
    ld [hl], b
    ld d, b
    ldh [$50], a
    ldh [$50], a
    ldh [rSVBK], a
    ldh [$7d], a
    ld d, b
    nop
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld bc, $0094
    inc bc
    ld bc, $0505
    ld a, [bc]
    rlca
    inc d
    rrca
    jr z, jr_02c_60a3

    jp Jump_02c_7e3c


    nop
    nop
    jr z, jr_02c_60c7

    adc a
    ld [hl], b
    rst $38
    nop
    sbc a
    ld h, b
    ld e, $e1
    rra
    ldh [$c3], a
    jp $c739


    nop
    rlca
    nop
    add hl, sp
    rst $00
    ld a, b
    add a
    ld a, h
    add e
    ld [hl], h

jr_02c_60a3:
    adc a
    ld a, b
    add a
    cp $01
    db $e3
    add b
    ld bc, $0ef5
    rst JumpTable
    inc hl
    dec a
    jp nz, $84fb

    rst $30
    ld a, b
    ld a, a
    sub c
    sbc a
    jp hl


    ld c, $00
    and b
    ld a, a
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld l, $d1
    ccf
    jp nz, $8282

jr_02c_60c7:
    di
    rrca
    rst $30
    ld [$0282], sp
    rst $38
    ld d, b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    nop
    cp $71
    cp $89
    cp $8d
    nop
    add b
    ld [$00c7], sp
    cp [hl]
    inc bc
    ld l, b
    scf
    swap h
    rst $28
    sub e
    rst $30
    jp $0302


    nop
    ld bc, $f740
    add [hl]
    ld a, c
    pop hl
    ld e, $99
    ld h, [hl]
    ld c, b
    adc b
    sub b
    rst $28
    add b
    ld a, a
    add b
    ld a, a
    nop
    ld d, d
    jr nc, @+$63

    sbc [hl]
    xor d
    ld [hl], l
    adc d
    ld [hl], l
    cp d
    ld b, l
    rst $38
    ld sp, hl
    ld sp, hl
    jr nz, jr_02c_610d

jr_02c_610d:
    nop
    nop
    ld c, $00
    dec e
    ld c, $34
    dec de
    ld a, $11
    inc [hl]
    dec de
    dec e
    ld c, $0f
    ld [bc], a
    ld b, $03
    ld c, $03
    rra
    dec c
    rra
    dec c
    ccf
    dec b
    ld c, l
    ld [hl-], a
    push hl
    ld e, d
    rst $30
    ld l, b
    ld [bc], a
    nop
    dec b
    ld [bc], a
    rlca
    ld [bc], a
    adc e
    ld b, $8b
    ld b, $8a
    rlca
    adc c
    rlca
    sbc b

Jump_02c_613c:
    rlca
    sbc h
    inc bc
    cp a
    nop
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, [hl]
    sub c
    cp d
    call $c3bc
    cp b
    rst $00
    ld hl, sp+$00
    ld a, a
    add b
    ld a, h
    add e
    ld hl, sp+$07
    di
    inc c
    rst $30
    ld [$e37e], sp
    or [hl]
    sla e
    db $dd
    ld d, l
    xor [hl]
    jp c, $dc27

    dec hl
    cp a
    ld l, h
    cpl
    ldh a, [$33]
    db $dd
    ld h, a
    sbc d
    db $fc
    nop
    db $76
    ld hl, sp+$03
    db $fc
    rst $38
    nop
    rlca
    rst $38
    ldh a, [rIF]
    dec sp
    db $e4

jr_02c_617b:
    scf
    jp hl


    ld h, d
    db $dd
    push de
    cp d
    xor l
    ld [hl], d
    sbc l
    ld l, d
    cp $1b
    ld a, [$e607]
    db $dd
    di
    xor h
    ld a, h
    inc hl
    inc [hl]
    dec bc
    ld [hl], d
    dec l
    ld a, l
    jr nc, jr_02c_61d2

    jr jr_02c_61b0

    nop
    ld bc, $0200
    ld bc, $0304
    add hl, bc
    ld b, $0b
    inc b
    inc de
    inc c
    scf
    ld [$1827], sp
    ld h, a
    jr @+$51

    jr nc, @-$17

    jr jr_02c_617b

jr_02c_61b0:
    inc a
    ld b, a
    cp h
    rst $20
    inc e
    rst $30
    jr z, @+$01

    ld [hl], b
    rst $38
    nop
    ld [hl], l
    sbc d
    push af
    ld a, [de]
    push af
    ld a, [de]
    ld a, [$fa0d]
    dec c
    ld sp, hl
    ld c, $ed
    ld d, $dd
    ld h, $bd
    ld b, [hl]
    ld a, a
    and [hl]
    ld a, a
    and a
    ld a, e

jr_02c_61d2:
    or [hl]
    or a
    ld e, b
    rst $38
    nop
    db $ed
    inc de
    ld [hl], d
    adc a
    ld a, h
    add e
    sbc a
    ld h, b
    db $d3
    ccf
    ld a, a
    add b
    cp l
    ld e, a
    cp a
    ld l, a
    cp a
    ld h, d
    ld e, a
    cp a
    ld a, a
    adc d
    rst $38
    or d

jr_02c_61ef:
    cp $f1
    db $ed
    ld [hl-], a
    ei
    inc b
    rst $30
    ld [$e8d7], sp
    ccf
    add sp, $1f
    add sp, -$01
    ld [$c4bf], sp
    xor $13
    adc $b9
    db $d3
    cp h
    ret nc

    ccf
    ldh [$9f], a
    ldh a, [rIF]
    ld c, a
    jr nc, jr_02c_61ef

    jr nc, @-$61

    ld [hl], d
    sbc l
    ld [hl], e
    sbc d
    ld [hl], a
    sbc [hl]
    ld [hl], e
    sbc b
    ld [hl], a
    sbc b
    ld [hl], a
    ld e, h
    inc sp
    ld e, a
    jr nc, jr_02c_624b

    db $10
    cpl
    db $10
    dec de
    inc b
    rla
    add hl, bc
    ld e, $03
    rlca
    nop
    ld a, [hl]
    add e
    or $8b
    cp $73
    rst $38
    ld de, $8d7b
    rra
    pop hl
    rlca
    ld hl, sp-$71
    ld [hl], b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    dec b
    ld a, [$38c7]
    db $ec
    inc de
    ld a, a
    add b
    rst $20
    inc bc

jr_02c_624b:
    rst $00
    ld [bc], a
    ld e, a
    and b
    cp [hl]
    pop bc
    cp [hl]
    reti


    and a
    call c, $dda3
    sbc $61
    sbc $6d
    sbc $6d
    ld a, a
    xor b
    rst $28
    inc sp
    rst $28
    ld [hl-], a
    ld [hl], a
    jr jr_02c_629a

    jr @+$36

    jr jr_02c_6288

    nop
    dec a
    ld c, $3b
    db $fc
    ld h, c
    cp $00
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    pop bc
    cp [hl]
    ld h, e
    sbc h
    ld a, [hl]
    and b
    sbc b
    ld h, b
    sub b
    ld h, b
    or b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop

jr_02c_6288:
    nop
    nop
    nop
    nop
    nop
    daa
    jr @+$3a

    rlca
    jr c, jr_02c_62a2

jr_02c_6293:
    jr c, jr_02c_62b4

    ld a, h
    ccf
    db $e4
    ccf
    db $ec

jr_02c_629a:
    ld [hl], a
    adc $73
    sbc $63
    sub $63
    db $d3

jr_02c_62a2:
    ld h, c
    db $d3
    ld h, c
    ei
    ld hl, $3069
    ld a, c
    db $10
    jr c, jr_02c_62ad

jr_02c_62ad:
    ret nz

    nop
    ld [hl], b
    add b
    jr jr_02c_6293

    inc c

jr_02c_62b4:
    ldh a, [$c4]
    ld hl, sp-$1a
    jr c, @-$0c

    inc e
    db $db
    inc c
    ld e, l
    add [hl]
    ld c, l
    add [hl]
    ld c, a
    add d
    ld h, a
    add d
    daa
    jp nz, $c0a3

    and b
    ret nz

    ret nz

    nop
    ret nz

    nop
    ldh a, [$80]
    ld [$c4f0], sp
    jr c, @-$42

    ret nz

    ld h, [hl]
    ret c

    inc de
    db $ec
    adc c
    db $76
    cp $01
    rst $08
    ld a, $7d
    add e
    ld [hl], h
    adc e
    ld a, [hl]
    adc c
    ld a, [$2b0d]
    call c, $3cdb
    or e
    ld a, h
    db $e3
    inc a
    and $19
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $30
    inc c
    rst $30
    ld hl, sp-$01
    nop
    ld e, c
    and [hl]
    ld c, b
    or a
    adc b
    ld [hl], a
    inc de
    db $ec
    sub c
    ld l, a
    and b
    ld e, a
    add b
    ld bc, $000c
    inc e
    ld [$081d], sp
    ld a, [hl+]
    dec e
    cpl
    inc e
    dec l
    ld e, $67
    ld e, $73
    xor b
    nop
    rst $38
    nop
    nop
    nop

jr_02c_6324:
    cp a
    ld b, b
    cp a
    ld b, b
    rst JumpTable
    ld h, b
    rst JumpTable
    ccf
    cp a
    ld b, b
    nop
    nop
    ld [hl], a
    nop
    db $fc
    inc sp
    ld b, b
    rst $38
    db $10
    rst $28
    dec [hl]
    set 2, a
    jr z, jr_02c_6324

    add hl, de

Call_02c_633e:
jr_02c_633e:
    db $eb
    dec e
    nop
    nop
    ld sp, hl
    ld c, $f4
    rrca
    reti


    ld h, $ff
    add hl, hl
    cp a
    ld l, c
    ld a, [hl]
    call $867d
    rst $08
    jr nc, jr_02c_6353

jr_02c_6353:
    ld c, b
    rst $10
    rst $30
    nop
    bit 6, a
    adc $79
    ld l, l
    cp d
    jr c, @-$67

    db $ec
    ld a, [hl+]
    rst $38
    add [hl]
    ld a, [bc]
    add b
    rst $38
    cp $01
    db $fd
    ld a, e
    call nc, $fdd5
    ld a, a
    add $fe
    ld bc, $7bb5
    ret nc

    nop
    nop
    add a
    ld c, a
    add a
    ld a, h
    adc a
    and c
    ld e, [hl]
    jp hl


    ld d, $8e
    ld [hl], c
    ld b, l
    cp e
    nop
    nop
    res 6, [hl]
    sub l
    ld l, [hl]

jr_02c_6389:
    ld l, e
    sbc h
    ld d, l
    cp d
    xor a
    ld [hl], b
    ld e, a
    and $a7
    jp nz, $8073

    sub b
    nop
    rlca
    nop
    dec bc
    rla
    inc c
    ld l, $18
    ld c, h
    jr c, jr_02c_63fe

    jr nc, jr_02c_633e

    ld [hl], c
    sbc [hl]
    ld [hl], e
    ld b, c
    nop
    ld a, a
    sbc h
    adc c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld b, b
    cp a
    ld h, b
    rst JumpTable
    cp a
    ld h, b
    ldh a, [rP1]
    ld d, b
    nop
    nop
    add b
    sbc h
    inc [hl]
    jr jr_02c_6423

    jr c, jr_02c_6389

    ld [hl], b
    sub e
    ldh [$27], a
    jp nz, $824f

    nop
    rlca
    nop
    sbc a
    ld b, $7e
    inc c
    ld a, [$e43c]
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    ld d, h
    nop
    inc bc
    inc c
    inc e
    inc a
    jr z, jr_02c_63f7

    ld l, d
    rla
    ld c, d
    scf
    ld c, l
    inc sp
    rst $00
    jr c, @-$56

    nop
    add d
    ld a, l
    ld a, l
    ld a, l
    add e
    ld a, h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    add b

jr_02c_63f7:
    ld a, a
    ld d, b
    ld bc, $26df
    jr z, jr_02c_645e

jr_02c_63fe:
    sbc a
    ld [hl], b
    adc a
    ld c, a
    or b
    ld bc, $0cfe
    rst $38
    ld h, $50
    nop
    cp a
    ld b, d
    ld b, b
    ld b, e
    cp h
    dec h
    db $db
    inc e
    db $e3
    or l
    ld c, d
    db $d3
    dec l
    xor e
    ld [hl], l
    nop
    nop
    dec sp
    rst $00
    ld a, $c1
    ld a, a
    add b
    rst $38
    nop

jr_02c_6423:
    cp $01
    db $fd
    inc bc
    cp d
    ld b, a
    push de
    ld l, $00
    ld a, [bc]
    rst $38
    ld [$d71d], a
    ld a, [hl-]
    xor a
    ld [hl], a
    ld d, a
    xor d
    ld l, a
    sub e
    rst JumpTable
    inc h
    adc h
    add h
    nop
    ld hl, $2b7e
    call c, $b857
    xor a
    ld [hl], b
    ld e, a
    ldh [$bf], a
    ret nz

    add c
    cp [hl]
    ld b, e
    adc l
    ld [bc], a
    add b
    rst $38
    ld c, $f1
    rst $28
    db $10
    rst $30
    add sp, $67

jr_02c_6457:
    call nz, $3bc4
    ret c

    daa
    ret nc

    cpl

jr_02c_645e:
    nop
    nop
    and b
    ld b, b
    sub b
    ld h, b
    ret z

    ld [hl], b
    ld l, b
    or b
    ld [hl], h
    sbc b

jr_02c_646a:
    db $fc
    jr jr_02c_6457

    inc e
    cp $0c
    inc b
    ld b, b
    call nz, $8c76
    or [hl]
    ld c, h
    cp [hl]
    cp $04
    ld a, $da
    db $e4
    ld a, [hl+]
    db $f4
    ld a, [de]
    db $e4
    ld d, b

jr_02c_6482:
    ld [$403f], sp
    ld b, b
    ld hl, $131e
    inc c
    rra
    ld bc, $112f
    inc b
    rrca
    nop
    rst $38
    rst $38
    nop
    ld [$de80], sp
    push bc
    ld a, d
    rst $08
    ld [hl], b
    add hl, hl
    cp [hl]
    db $dd
    ld hl, $2fd0
    jr c, jr_02c_646a

    rst $20
    nop
    rst $38
    rst $38
    nop
    dec b
    ld d, b
    rst $38
    rst $08
    or b
    add e
    ld a, h
    jr c, jr_02c_64c0

    ld bc, $0f00
    ldh a, [$fe]
    nop
    rst $38
    rst $38
    nop
    nop
    rlca

jr_02c_64bc:
    nop
    ret c

    daa
    db $dd

jr_02c_64c0:
    ld [hl+], a
    ld a, a
    add b
    rrca
    ldh a, [$fb]
    db $fc
    ld a, a
    add b
    pop bc
    rst $38
    rst $38
    nop
    and b
    nop
    ld c, $f0
    ldh a, [rNR30]
    ldh [$fa], a
    nop
    db $f4
    ld [$64ba], sp
    sbc $30
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    nop
    db $fd
    ld c, $7e
    inc bc
    pop af
    inc bc
    db $fc
    nop
    nop
    rst $28
    nop
    cp a
    nop
    push af
    nop
    ld e, e

jr_02c_64f2:
    inc b
    nop
    sbc $6f
    rst $20
    ld sp, hl
    ret nz

    rst $38
    ld c, [hl]
    ld bc, $f840
    rrca
    jr z, jr_02c_6482

    ld a, [hl]
    db $fd
    rst $38
    dec hl
    rst $38
    ld bc, $ff1f
    and b
    rra
    pop af
    ld c, $f1
    rrca
    ld [$e400], sp
    ei
    pop af
    rst $38
    rst $08
    rst $38
    db $10
    db $e3
    nop
    inc a
    ret nz

    rst $00
    jr c, jr_02c_64bc

    nop
    ei
    inc b
    nop
    db $ec
    rst $38
    rst $10
    rst $38
    add b
    rst $38
    add hl, bc
    ldh a, [rLCDC]
    ld l, [hl]
    cpl
    jr z, jr_02c_64f2

    db $fc
    pop bc
    cp $11

jr_02c_6534:
    ldh [$08], a
    ld a, [hl-]
    nop
    xor $01
    rrca
    jr nz, jr_02c_6534

    ld bc, $009d
    ld hl, $00f7
    rst $38
    nop
    sbc $00
    ld a, e
    nop
    nop
    rst $38
    rrca
    pop af
    jr @+$09

    inc c
    ld e, [hl]
    nop
    add e
    di
    pop hl
    cp $31
    cp h
    ld c, e
    rst $28
    nop
    rra
    or e
    db $10
    pop af
    sbc [hl]
    sbc $e3
    or $00
    dec sp
    rst $28
    or e
    ld [hl], l
    ei
    ld l, a
    rst $38
    ld [hl], l
    nop
    db $e3
    add $81
    sbc c
    ld b, $fe
    and e
    rst $10
    nop
    rst $28
    xor c
    ret nc

    db $10
    ldh [rHDMA1], a
    and d
    rst JumpTable
    nop
    and e
    cp a
    pop hl
    or h
    db $eb
    pop hl
    or b
    adc $00
    pop bc
    db $d3
    adc a
    ld h, a
    inc e
    rst JumpTable
    jr z, jr_02c_65af

    nop
    jp hl


    ld a, [c]
    sbc [hl]
    rst $30
    db $fc
    ld l, [hl]
    ret nz

    ei
    nop
    ld b, b
    rst $28
    add b
    ld a, [$be00]
    ld bc, $00ef
    ldh a, [rHDMA5]
    jr nc, jr_02c_6622

    db $e4
    xor $00
    dec sp
    ld [$cf40], sp
    nop

jr_02c_65af:
    ld a, d
    ld l, a
    jr c, @-$0f

    ld bc, $003a
    ld b, d
    sbc $02
    ld a, d
    inc bc
    rst $28
    ld bc, $00bb
    inc b
    or $01
    push af
    ld sp, hl
    rst $38
    add b
    ld a, l
    nop
    ld b, b
    db $fd
    ld h, $7b
    ld a, [de]
    dec [hl]
    adc $db
    nop
    and $f9
    rst $20
    or l
    dec de
    ld a, l
    nop

jr_02c_65d8:
    rst $28
    nop
    ld bc, $7af6
    rst JumpTable
    adc d
    ld a, l
    and $d9
    nop
    jr c, jr_02c_65d8

    db $10
    db $f4
    inc hl
    cp $f8
    scf
    nop
    inc c
    ld l, a
    inc d
    sbc [hl]
    ld a, b
    cp [hl]
    ld h, c
    ccf
    ld b, $e0
    push de
    ldh [$ef], a
    sbc a
    ld c, a
    ld [hl], b
    rrca
    nop
    and c
    rra
    nop
    db $d3
    ld sp, $63a4
    db $ec
    ld b, b
    ld b, b
    ret z

    nop
    call c, $8ba8
    sbc h
    cp a
    sbc a
    ld a, e
    db $fc
    nop
    call $9f86
    ld [bc], a
    rra
    ld [c], a
    ld l, d
    rla
    nop
    inc e
    rrca
    srl l
    db $fd
    ei

jr_02c_6622:
    or b
    sub b
    nop
    or a
    sub a

Call_02c_6627:
    rst $10
    or a
    sub c
    pop de
    db $fd
    sbc l
    nop
    ld [hl], l
    call Call_02c_7ca4
    rst JumpTable
    ccf
    dec c
    dec bc
    nop
    jp hl


    rst $28
    jp hl


    rst $28
    adc c
    adc a
    cp l
    cp a
    ld [bc], a
    and d
    cp a
    dec a
    ld a, $f3
    db $fc
    nop
    xor $00
    dec sp
    ld b, b
    rst JumpTable
    nop
    ld a, d
    nop
    nop
    xor $01
    cp a
    nop
    push af
    nop
    ld e, e
    inc b
    nop
    ei
    ld a, h
    dec sp
    ld a, h
    sbc d
    dec a
    ld l, [hl]
    rlca
    db $10
    or e
    ld bc, $0fbc
    jr jr_02c_66d6

    sbc a
    ld [hl], b
    adc a
    nop
    ld [hl], e
    adc a
    rrca
    rst $38
    ld a, [c]
    db $fc
    rlca
    nop
    ld b, b
    db $fd
    rrca
    ld [$cf35], sp
    add hl, de
    rst $20
    pop bc
    rst $38
    inc b
    ld a, [c]
    rst $38
    rra
    rrca
    ldh [rIF], a
    jr @+$40

    rst $38
    nop
    or a
    rst $38
    sub b
    rst $38
    ldh [$fc], a
    rrca
    ldh a, [rLCDC]

jr_02c_6692:
    ccf
    cpl
    jr jr_02c_6715

    sub b
    cp l
    ret z

    jp z, $08fc

    or e
    ld a, h
    dec bc
    db $10
    ld c, a
    jr nz, jr_02c_6692

    ld b, e
    reti


    nop
    ld h, b
    db $fc
    jr c, jr_02c_6727

    ld b, $fa

jr_02c_66ac:
    rrca
    ld [hl], a
    nop
    ld de, $2fe7
    rst $30
    jr c, @-$02

    dec bc
    rst $28
    nop
    sbc a
    ld [hl], e
    ldh a, [$57]
    jr c, jr_02c_66ac

    rra
    pop bc
    nop
    rst $38
    ld e, e
    cp a
    or $cf
    ld l, a
    rst $38
    ld [hl], l
    nop
    db $e3
    add $81
    sbc c
    ld b, $81
    ld a, [hl]
    db $fc
    nop
    rst $38
    ld a, [hl+]
    rst $38

jr_02c_66d6:
    ld d, l
    cp a
    ld d, c
    and d
    rst JumpTable
    nop
    and e
    cp a
    pop hl
    or h
    db $eb
    and h
    ei
    sub c
    nop
    rst $38
    xor a
    rst JumpTable
    dec [hl]
    rst $08
    rst $08
    jr c, jr_02c_6708

    nop
    jp hl


    rst $38
    sub d
    rst $38
    db $fc
    ld [$a7f7], a
    nop
    ld sp, hl
    and l
    ld_long a, $ffb2
    cp $00
    cp e
    nop
    nop
    rst $28
    ldh a, [$da]
    jr nc, jr_02c_6784

    pop hl
    rst $38

jr_02c_6708:
    ld bc, $a580
    ret nz

    ld a, e
    db $e4
    xor $01
    cp a
    stop
    ld a, e
    nop

jr_02c_6715:
    rst $28
    ld bc, $01bf
    push af
    nop
    jr nz, @+$01

    inc a
    rlca
    ld [$f600], sp
    ld bc, $f9f5
    nop
    rlca

jr_02c_6727:
    inc c
    ld e, [hl]
    add e
    di
    pop hl
    cp $31
    nop
    dec [hl]
    adc $db
    and $f9
    rst $20
    or l
    dec de
    nop
    sbc $e3
    or $3b
    rst $28
    or e
    ld [hl], l
    ei
    nop
    ld a, l
    and $d9
    jr c, @-$0b

    db $10
    db $f4
    inc hl
    nop
    cp $a3
    rst $10
    rst $28
    xor c
    ret nc

    db $10
    ldh [rP1], a
    cp [hl]
    ld h, c
    ccf
    ldh [$d5], a
    ldh [$ef], a
    sbc a
    nop
    pop hl
    or b
    adc $c1
    db $db
    add a
    ld [hl], a

jr_02c_6763:
    inc c

jr_02c_6764:
    add b
    rrca
    ld sp, $010e
    ld l, a
    ret nz

    push af
    ld b, b
    db $eb
    ld h, b
    add h
    rra
    ld [hl], c
    rrca
    jr nc, jr_02c_6764

    ld bc, $02be
    or $10
    ld [bc], a
    ld e, d

jr_02c_677c:
    rlca
    rrca
    jr nc, @+$01

    add b
    ld a, l
    ld b, b
    ld a, [bc]

jr_02c_6784:
    db $fd
    ld h, $7b
    ld a, [de]
    rrca
    jr nc, jr_02c_6808

    ld hl, $f608
    db $10
    ld a, d
    rst JumpTable
    adc d
    rrca

jr_02c_6793:
    jr nc, jr_02c_6793

    ld hl, sp+$37
    inc c
    dec bc
    ld l, a
    inc d
    sbc [hl]
    ld a, b
    rrca
    db $10
    rst $08
    ld c, a
    ld l, b
    rrca
    nop
    inc a
    nop
    xor $00
    dec sp
    ld b, b
    rst $08
    nop
    ld a, d
    nop
    nop
    xor $01
    cp a
    nop
    push af
    nop
    ld e, e
    inc b
    nop
    sub $39
    ld a, [hl-]
    ld e, l
    xor $1f
    ld a, c
    rlca
    add b
    rrca
    jr nc, jr_02c_6763

    ld a, a
    sbc a
    ld a, a
    jr nc, @+$01

jr_02c_67c9:
    db $e3
    ld b, b
    db $fc
    rrca
    jr nc, jr_02c_67c9

    rst $38
    cp $ff
    rrca
    rst $38
    ld [$0ff7], sp
    rst $38
    nop
    rrca
    jr nz, jr_02c_677c

    rst $38
    ldh [rSC], a
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp-$02
    rra
    jr z, jr_02c_6816

    ld [bc], a
    ret nz

    dec sp
    ret nz

    rst $28
    nop
    ld a, [$384f]
    ld a, [$0f01]
    ld [hl], a
    ld de, $2fe7
    rst $30
    jr c, jr_02c_680a

    jr nc, jr_02c_67fd

jr_02c_67fd:
    xor $1f
    pop bc
    rst $38
    ld e, e
    cp a
    or $cf
    nop
    ei
    ld a, h

jr_02c_6808:
    ei
    inc a

jr_02c_680a:
    xor $39
    ld l, [hl]
    add hl, sp
    nop
    add c
    ld a, [hl]
    db $fc
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l

jr_02c_6816:
    cp a
    nop
    ld l, [hl]
    sbc a
    ld [hl], b
    adc a
    ld [hl], e
    adc a
    rst $08
    ccf
    nop
    and h
    ei
    sub c
    rst $38
    xor a
    rst JumpTable
    dec [hl]
    rst $08
    nop
    dec [hl]
    rst $08
    add hl, de
    rst $20
    pop bc
    rst $38
    ld a, [c]
    rst $38
    nop
    ld [$a7f7], a
    ld sp, hl
    and l
    ld_long a, $ffb2
    nop
    ld a, $ff
    cp a
    rst $30
    sbc l
    ldh a, [$90]
    rst $38
    nop
    cp $80
    xor e
    ret nz

    ld a, a
    ldh [$7a], a
    sub b
    nop
    cp [hl]
    ret


jr_02c_6850:
    rst $08
    ld hl, sp-$03
    jr nc, jr_02c_6850

    inc b
    nop
    rst $30
    ld bc, $219d
    rst $30
    nop
    rst $38
    inc a
    nop
    rst $28
    ld b, e
    reti


    ld h, b
    db $fc
    jr c, jr_02c_68e4

    ld b, $00
    rlca
    inc c
    ld e, [hl]
    add e
    di
    pop hl
    cp $31
    nop
    db $fc
    dec bc
    rst $28
    sbc a
    ld [hl], e
    ldh a, [$57]
    jr c, jr_02c_687b

jr_02c_687b:
    sbc $e3
    or $3b
    rst $28
    or e
    ld [hl], l
    ei
    nop
    ld l, a
    rst $38
    ld [hl], l
    db $e3
    add $81
    sbc c
    ld b, $00
    cp $a3
    rst $10
    rst $28
    xor c
    ret nc

    db $10
    ldh [rP1], a
    ld d, c
    and d
    rst JumpTable
    and e
    cp a
    pop hl
    or h
    db $eb
    nop
    pop hl
    or b
    adc $c1
    db $db
    add a
    ld [hl], a
    inc c
    nop
    rst $08
    jr c, jr_02c_68c6

    jp hl


    rst $38
    sub d
    rst $38
    db $fc
    nop
    ld l, [hl]
    ret nz

    ei
    ld b, b
    rst $28
    add b
    ld a, [$0000]
    cp [hl]
    ld bc, $f0ef
    push de
    jr nc, jr_02c_693c

    db $e4
    add b
    rra
    ld [hl], c
    rst $28

jr_02c_68c6:
    ld bc, $423a
    sbc $02
    ld a, d
    jr nz, @+$05

    rst $28
    rrca
    ld [$01f6], sp
    push af
    ld sp, hl
    rst $38
    nop
    add b
    ld a, l

jr_02c_68d9:
    ld b, b
    db $fd
    ld h, $7b
    ld a, [de]
    dec [hl]
    nop
    adc $db
    and $f9

jr_02c_68e4:
    rst $20
    or l
    dec de
    ld a, l
    nop

jr_02c_68e9:
    nop
    rst $28
    ld bc, $7af6
    rst JumpTable
    adc d
    ld a, l
    nop
    and $d9
    jr c, jr_02c_68e9

    db $10
    db $f4
    inc hl
    cp $00
    ld hl, sp+$37
    inc c
    ld l, a
    inc d
    sbc [hl]
    ld a, b
    cp [hl]
    ld bc, $3f61
    ldh [$d5], a
    ldh [$ef], a
    sbc a
    ld c, a
    ld [hl], b
    ret nz

    rrca
    nop
    ld b, b
    nop
    xor $00
    dec sp
    ld b, b
    rst $08
    nop
    ld a, d
    nop
    nop
    xor $01
    cp a
    nop
    push af
    nop
    ld e, e
    inc b
    nop
    db $fc

jr_02c_6925:
    db $10
    inc [hl]
    ld e, b
    call nc, Call_02c_7f0e
    inc bc
    add b
    rrca
    jr nc, @+$19

    ld hl, sp+$1f
    rst $38
    jr nc, @+$01

    rst $20
    ld b, b
    ld hl, sp+$0f
    jr nc, jr_02c_6925

    dec e

jr_02c_693c:
    ei
    db $fc
    ld c, $fd
    ld [$07fb], sp
    rst $28
    nop
    rrca
    jr nz, jr_02c_68d9

    cp $17
    rlca
    ld hl, sp-$1d
    db $fc
    ld a, [bc]
    ldh a, [$1f]
    jr nc, jr_02c_69a2

    ld [hl], b
    rrca
    ld [hl], b
    nop
    or $29
    jp nz, $aa6d

    push bc
    xor d
    push bc
    nop
    ei
    add h
    di
    adc h
    ld h, a
    ret c

    or [hl]
    ld a, b
    nop
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    nop
    cp a
    rst $38
    cp h
    rst $38
    cp b
    rst $38
    inc sp
    db $fc
    inc d
    ld a, [$feff]
    ld bc, $fd08
    ld bc, $3d08
    rst $38
    nop
    dec e
    rst $38
    adc $3d
    sub a
    ld hl, sp-$71
    ld hl, sp+$00
    adc e
    db $fc
    add l
    cp $23
    cp $22
    rst $38
    ld [$ffa2], sp
    sbc h
    rst $38
    ld c, a
    ld [hl], b
    ld a, [$770f]
    inc b

jr_02c_69a2:
    ld de, $2fe7
    rst $30
    jr c, jr_02c_6a17

    jr c, jr_02c_69c9

    pop bc
    nop
    rst $38
    ld e, e
    cp a
    or $cf
    ei
    ld a, h
    ei
    nop
    inc a
    xor $39
    ld l, [hl]
    add hl, sp
    add c
    ld a, [hl]
    db $fc
    nop
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    cp a
    ld l, [hl]
    sbc a
    ld [hl], b
    nop
    adc a
    ld [hl], e

jr_02c_69c9:
    adc a
    rst $08
    ccf
    and h
    ei
    sub c
    nop
    rst $38
    xor a
    rst JumpTable
    dec [hl]
    rst $08
    dec [hl]
    rst $08
    add hl, de
    nop
    rst $20
    pop bc
    rst $38
    ld a, [c]
    rst $38
    ld [$a7f7], a
    nop
    ld sp, hl
    and l
    ld_long a, $ffb2
    ld a, $ff
    cp a
    nop
    rst $30
    sbc l
    ldh a, [$9e]
    pop af
    cp $80
    xor e
    nop
    ret nz

    ld a, a
    ldh [$7a], a
    sub b
    cp [hl]
    ret


    rst $08

jr_02c_69fc:
    nop
    ld hl, sp-$03
    jr nc, jr_02c_69fc

    inc b
    rst $30
    ld bc, $009d
    ld hl, $00f7
    rst $38
    inc a
    rst $28
    ld b, e
    reti


    nop
    ld h, b
    db $fc
    jr c, jr_02c_6a90

    ld b, $07
    inc c
    ld e, [hl]

jr_02c_6a17:
    nop
    add e
    di
    pop hl
    cp $31
    db $fc
    dec bc
    rst $28
    nop
    sbc a
    ld [hl], e
    ldh a, [$57]
    jr c, @-$20

    db $e3
    or $00
    dec sp
    rst $28
    or e
    ld [hl], l
    ei
    ld l, a
    rst $38
    ld [hl], l
    nop
    db $e3
    add $81
    sbc c
    ld b, $fe
    and e
    rst $10
    nop
    rst $28
    xor c
    ret nc

    db $10
    ldh [rHDMA1], a
    and d
    rst JumpTable
    nop
    and e
    cp a
    pop hl
    or h
    db $eb
    pop hl
    or b
    adc $00
    pop bc
    db $db
    add a
    ld [hl], a
    inc c
    rst $08
    jr c, @+$1d

    nop
    jp hl


    rst $38
    sub d
    rst $38
    db $fc
    ld l, [hl]
    ret nz

    ei
    nop
    ld b, b
    rst $28
    add b
    ld a, [$be00]
    ld bc, $00ef
    ldh a, [$d5]
    jr nc, jr_02c_6ae8

    db $e4
    rst $28
    ld bc, $023a
    ld b, d
    sbc $02
    ld a, d
    inc bc
    rst $28
    cp a
    ld [$00f6], sp
    ld bc, $f9f5
    rst $38
    add b
    ld a, l
    ld b, b
    db $fd
    nop
    ld h, $7b
    ld a, [de]
    dec [hl]
    adc $db
    and $f9
    nop
    rst $20
    or l

jr_02c_6a90:
    dec de
    ld a, l

jr_02c_6a92:
    nop
    rst $28
    ld bc, $00f6
    ld a, d
    rst JumpTable
    adc d
    ld a, l
    and $d9
    jr c, jr_02c_6a92

    nop
    db $10
    db $f4
    inc hl
    cp $f8
    scf
    inc c
    ld l, a
    nop
    inc d
    sbc [hl]
    ld a, b
    cp [hl]
    ld h, c
    ccf
    ldh [$d5], a
    db $10
    ldh [$ef], a
    sbc a
    and $0c
    cp e
    inc c
    ld sp, hl
    ld c, $5f
    rlca
    xor $01
    cp a
    nop
    push af
    nop
    ld e, e
    inc b
    ld a, h
    db $10
    call c, Call_02c_7430
    ld hl, sp-$7a
    ld hl, sp+$6b
    sbc h
    cp b
    rrca
    rst $30
    rrca
    ld e, a
    nop

jr_02c_6ad5:
    ld d, $f8
    inc d
    ld hl, sp+$18
    rst $38
    ccf
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    add a
    ld hl, sp-$01
    nop
    ld l, d
    dec e
    dec hl

jr_02c_6ae8:
    inc e
    ld e, $fc
    cp $fc
    dec c
    cp $02
    rst $38
    db $fd
    inc bc
    rst $38
    nop
    sbc e
    db $fc
    dec a
    cp $be
    ld a, a
    and a
    ld a, a
    jr nz, @+$01

    ld b, a
    ld hl, sp-$55
    ret nz

    or $08
    sbc $61
    xor a
    ld [hl], b
    ld h, l
    ld hl, sp-$39
    ld hl, sp+$1e
    pop hl
    ld a, a
    nop
    db $ed
    nop
    or a
    ld [$00ee], sp
    cp e
    nop
    rst $38
    inc bc
    ld e, [hl]
    inc b
    db $ec
    ld b, $be
    inc bc
    rst $38
    inc bc
    ld e, h
    ld b, $f6
    add hl, hl
    jp nz, $aa6d

    push bc
    ld a, [bc]
    ld h, l
    dec sp
    ld b, h
    di
    adc h
    ld h, a
    jr jr_02c_6b6a

    jr jr_02c_6ad5

    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp h
    rst $38
    cp b
    rst $38
    inc sp
    db $fc
    ld a, [$feff]
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    adc $3d
    sbc a
    ldh a, [$9f]
    cp $89
    rst $38
    and l
    cp $23
    rst $38
    inc hl
    rst $38
    and c
    rst $38
    sub d
    db $fd
    xor $01
    cp a
    nop
    db $fd

jr_02c_6b6a:
    ret nz

    cp a

jr_02c_6b6c:
    ld h, b
    xor $f1
    rst $08
    ldh a, [rNR33]
    ldh [rIE], a
    add b
    ld a, [$770f]
    ld de, $2fe7
    rst $30
    jr c, jr_02c_6b6c

    ld bc, $00bf
    push af
    nop
    ld e, e
    inc b
    xor $1f
    pop bc
    rst $38
    ld e, e
    cp a
    or $cf
    ei
    ld a, h
    ei
    inc a
    xor $39
    ld l, [hl]
    add hl, sp
    add c
    ld a, [hl]
    db $fc
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    cp a
    ld l, [hl]
    sbc a
    ld [hl], b
    adc a
    ld [hl], e
    adc a
    rst $08
    ccf
    and h
    ei
    sub c
    rst $38
    xor a
    rst JumpTable
    dec [hl]
    rst $08
    dec [hl]
    rst $08
    add hl, de
    rst $20
    pop bc
    rst $38
    ld a, [c]
    rst $38
    ld [$a7f7], a
    ld sp, hl
    and l
    ld_long a, $ffb2
    ld a, $ff
    cp a
    rst $30
    sbc l
    ldh a, [$9e]
    pop af
    cp $80
    xor e
    ret nz

    ld a, a
    ldh [$7a], a
    sub b
    cp [hl]
    ret


jr_02c_6bcf:
    rst $08
    ld hl, sp-$03
    jr nc, jr_02c_6bcf

jr_02c_6bd4:
    inc b
    rst $30
    ld bc, $219d
    rst $30
    nop
    rst $38
    inc a
    rst $28
    ld b, e
    reti


    ld h, b
    db $fc
    jr c, @+$7f

    ld b, $07
    inc c
    ld e, [hl]
    add e
    di
    pop hl
    cp $31
    db $fc
    dec bc
    rst $28
    sbc a
    ld [hl], e
    ldh a, [$57]
    jr c, jr_02c_6bd4

    db $e3
    or $3b
    rst $28
    or e
    ld [hl], l
    ei
    ld l, a
    rst $38
    ld [hl], l
    db $e3
    add $81
    sbc c
    ld b, $fe
    and e
    rst $10
    rst $28
    xor c
    ret nc

    db $10
    ldh [rHDMA1], a
    and d
    rst JumpTable
    and e
    cp a
    pop hl
    or h
    db $eb
    pop hl
    or b
    adc $c1
    db $db
    add a
    ld [hl], a
    inc c
    rst $08
    jr c, jr_02c_6c3b

    jp hl


    rst $38
    sub d
    rst $38
    db $fc
    ld l, [hl]
    ret nz

    ei
    ld b, b
    rst $28
    add b
    ld a, [$be00]
    ld bc, $f0ef
    push de
    jr nc, jr_02c_6caf

    db $e4
    rst $28
    ld bc, $423a
    sbc $02

jr_02c_6c3b:
    ld a, d
    inc bc
    rst $28
    ld bc, $00bf
    or $01
    push af
    ld sp, hl
    rst $38
    add b
    ld a, l
    ld b, b
    db $fd
    ld h, $7b
    ld a, [de]
    dec [hl]
    adc $db
    and $f9
    rst $20
    or l
    dec de

jr_02c_6c55:
    ld a, l
    nop
    rst $28
    ld bc, $7af6
    rst JumpTable
    adc d
    ld a, l
    and $d9
    jr c, jr_02c_6c55

    db $10
    db $f4
    inc hl
    cp $f8
    scf
    inc c
    ld l, a
    inc d
    sbc [hl]
    ld a, b
    cp [hl]
    ld h, c
    ccf
    ldh [$d5], a
    ldh [$ef], a
    sbc a
    xor $1f
    db $d3
    ld sp, $63a4
    db $ec
    ld b, b
    ld b, b
    ret z

    call c, $8ba8
    sbc h
    cp a
    sbc a
    ld a, e
    db $fc
    call $9f86
    ld [bc], a
    rra
    ld [c], a
    ld l, d
    rla
    inc e
    rrca
    srl l

Call_02c_6c93:
    db $fd
    ei
    or b
    sub b
    or a
    sub a
    rst $10
    or a
    sub c
    pop de
    db $fd
    sbc l
    ld [hl], l
    call Call_02c_7ca4
    rst JumpTable
    ccf
    dec c
    dec bc
    jp hl


    rst $28
    jp hl


    rst $28
    adc c
    adc a
    cp l
    cp a

jr_02c_6caf:
    and d
    cp a
    dec a
    ld a, $f3
    db $fc
    ldh a, [rP1]
    nop
    inc c
    ld e, $17
    inc de
    ld a, [de]
    ld d, $54
    cp $bf
    db $fc
    or l
    and [hl]
    nop
    inc d
    ld a, a
    inc bc
    ld bc, $723b
    ld c, d
    ld c, [hl]
    or h
    add $fd
    ld d, [hl]
    scf
    or [hl]
    db $fc
    rst JumpTable
    nop
    inc c
    cp $e0
    ret nz

    ld h, [hl]
    cpl
    add hl, hl
    add hl, sp
    inc de
    or c
    push hl
    or e
    cp [hl]
    db $eb
    ld a, e
    and $c0
    nop
    nop
    jr jr_02c_6d27

    inc h
    ld h, h
    ld c, h
    call nz, $c4dc
    ld l, [hl]
    ld e, a
    rst JumpTable
    ld a, c
    adc a
    ld h, l
    ld bc, $bd80
    xor $a3
    cp e
    rst $28
    ld h, l
    cp $f6
    rst JumpTable
    sbc [hl]
    rst $30
    and a
    ei
    ld l, c
    rst $38
    dec b
    ld [hl], l
    rst $38
    db $ec
    sbc a
    push hl
    cp a
    sub a
    ld e, a
    ld a, a
    ld [hl], a
    db $e3
    inc b
    dec d
    rst $38
    ld [hl], e
    rst $08
    ld l, d
    rst JumpTable
    db $d3
    rst $30
    cp $fe
    db $fd
    db $fd
    adc $87
    ld bc, $fd40
    ld d, l

jr_02c_6d27:
    rst $00
    cp l
    rst $10
    and [hl]
    rst $38
    ld l, a
    ld a, e
    ld a, c
    rst $08
    call $d6bf
    cp a
    ld d, b
    nop
    cp a
    and h
    xor [hl]
    cp d
    cp e
    sbc d
    sbc e
    set 1, e
    ld h, c
    ld h, c
    jr c, jr_02c_6d7b

    ld c, $0e
    dec b
    nop
    db $fd
    or e
    rst JumpTable
    sbc e
    xor $8e
    and [hl]
    and h
    rst $38
    push af
    rst $38
    ld l, a
    ld a, a
    ccf
    ccf
    dec b
    nop
    rst $28
    adc l
    ei
    db $db
    ld [hl], l
    ld sp, $6555
    rst JumpTable
    ld c, a
    rst $38
    ld h, [hl]
    cp $fc
    db $fc
    ld d, b
    nop
    db $fd
    dec h
    ld [hl], l
    ld e, l
    db $dd

Call_02c_6d6e:
jr_02c_6d6e:
    ld e, c
    reti


    db $d3
    db $d3
    add [hl]
    add [hl]
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    ld d, b
    sub b
    rlca

jr_02c_6d7b:
    ld [bc], a
    ld c, $0c
    ld a, [bc]
    inc c
    ld [$0b0c], sp
    inc bc
    nop
    nop
    nop
    dec b
    nop
    jr nz, jr_02c_6d6e

    ccf
    adc $31
    db $db
    pop de
    sub c
    ld h, b
    rst $08
    ldh a, [$30]
    rst $38
    ld l, a
    rra
    inc d
    inc d
    rst $38
    call $08fe
    ld [$7f8c], sp
    add [hl]
    ld a, a
    rlca
    inc e
    rst $20
    ld hl, sp+$14
    db $10
    ldh a, [$5c]
    ldh [$ee], a
    rst JumpTable
    rla
    ld hl, sp+$27
    ld hl, sp-$32
    ld a, h
    add b
    ldh [rP1], a
    db $fc
    nop
    nop
    inc c
    inc c
    ld d, $12
    rra
    rla
    ld e, h
    ld e, [hl]
    or [hl]
    push hl
    ldh a, [rP1]
    nop
    add hl, sp
    add hl, sp
    ld c, [hl]
    ld c, [hl]
    ld [hl], a
    ld b, [hl]
    ei
    sub $7a
    rst $38
    ld a, a
    ld a, a
    ret nz

    nop
    nop
    add b
    add b
    ld b, h
    ld b, h
    xor d
    ld a, [hl+]
    ld [hl], c
    or c
    db $eb
    and l
    xor e
    db $fd
    rst $38
    cp $fc
    nop
    nop
    jr c, jr_02c_6e21

    ld l, h
    ld h, h
    call c, $f6c4
    ld c, [hl]
    sbc a
    ld a, c
    jr nz, jr_02c_6df4

    ei

jr_02c_6df4:
    xor l
    and e
    xor a
    and a
    rst $38
    ld [hl], l
    cp $fe
    cp l
    cp l
    rst JumpTable
    sbc [hl]
    rst $38
    cpl
    nop
    ld e, l
    rst $38
    ld a, [hl]
    rst JumpTable
    call c, $c4af
    cp a
    or l
    rst JumpTable
    ld d, a
    cp a
    rst $30
    pop bc
    dec b
    rst $38
    ld a, [hl]
    rst $20
    ld h, a
    rst JumpTable
    ld d, a
    rst $20
    cp $ee
    db $fd
    db $fd
    sbc $80
    add b
    ld a, a

jr_02c_6e21:
    db $ed
    xor l
    rst $20
    or [hl]
    rst $28
    rst $28
    rst $38
    db $fd
    ld a, e
    db $fd
    ld a, c
    rst $08
    call $14bf
    nop
    cp a
    db $e3
    db $fd
    and l
    and h
    cp d
    cp e
    sbc d
    sbc e
    ld b, c
    ld b, c
    jr nc, @+$32

    inc c
    inc c
    inc d
    nop
    rst JumpTable
    db $e3
    rst $38
    ei
    xor e
    adc a
    cp $ae
    db $fd
    xor $ed
    push hl
    rst $20
    ld [hl], e
    ld [hl], e
    ld b, c
    nop
    rst $38
    adc a
    sbc e
    rst $30
    ld [hl], a
    db $eb
    xor e
    ld l, a
    rst JumpTable
    ld a, a
    rst JumpTable
    ld e, h
    db $fc
    ld hl, sp-$08
    nop
    ret nz

    db $d3
    rst $10
    cp a
    daa
    rst $38
    ld [hl], l
    db $fd
    ld e, l
    db $dd
    ld b, $06
    inc a
    inc a
    ldh a, [$f0]

jr_02c_6e73:
    ld c, d
    ld b, b
    ld b, $07
    rlca
    inc bc
    dec b
    inc b
    inc bc
    dec b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    ld sp, hl
    ccf
    ldh a, [$1f]
    ld h, a
    jr jr_02c_6ef8

    db $10
    ret z

    jr nc, @-$17

    ld hl, sp-$68
    ld a, a
    scf
    rrca
    inc b
    inc b
    rst $38
    cp $f9
    push de
    ei
    ld de, $7f98
    call z, $8f3f
    ld a, a
    jr c, jr_02c_6e73

    ld hl, sp+$14
    db $10
    ldh [$b8], a
    ret nz

    call c, $2ebe
    ldh a, [$4e]
    ldh a, [$9c]
    ld hl, sp-$80
    ret nz

    nop
    ret nz

    nop
    inc bc
    rlca
    dec b
    dec b
    ld b, $15
    rla
    ccf
    cpl
    cpl
    scf
    ccf
    ld [hl], $2b
    ld a, $c0
    nop
    add hl, de
    or [hl]
    and a
    rst $30
    db $eb
    ld a, d
    rst JumpTable
    db $fc
    rst $08
    db $ed
    rst $10
    db $db
    ld a, a
    ld l, a
    cp a
    ret nz

    nop
    ld e, [hl]
    or d
    or d
    and a
    db $eb
    db $db
    rst $38
    ld l, e
    rst $38
    ld l, a
    rst JumpTable
    rst $08
    cp [hl]
    xor [hl]
    db $fd
    ld bc, $f074
    ld [hl], b
    ld [hl], b
    sub b
    sub b
    jr nc, jr_02c_6f41

    ld d, b
    ret nc

    ld [hl], b
    ld a, h
    db $fc
    ld h, b
    nop

jr_02c_6ef8:
    rra
    ld d, $19
    dec l
    ld a, [hl-]
    ld a, [hl+]
    ccf
    dec [hl]
    dec [hl]
    jr jr_02c_6f1b

    ld c, $0e
    inc bc
    inc bc
    ld d, h
    db $10
    rst $38
    cp a
    cp e
    pop af
    db $fd
    rst $28

jr_02c_6f0f:
    db $ed
    rst $10
    rst $10
    ld l, a
    ld l, [hl]
    ld [hl-], a
    inc sp
    dec d
    nop
    rst $38
    db $fc
    ei

jr_02c_6f1b:
    ld a, [$8ecf]
    rst JumpTable
    di
    cp a
    ld l, e
    ld [hl], h
    cp h
    or c
    pop af
    ld [$f040], sp
    ld a, h
    db $f4
    add sp, -$48
    jr nc, jr_02c_6f0f

    and b
    or b
    ld d, b
    ret nc

    jr nz, jr_02c_6f55

    ret nz

    ret nz

    ld [$5840], sp
    jp hl


    sbc a
    ld hl, sp-$71
    ld c, a
    ld d, e
    ld c, h

jr_02c_6f41:
    ld h, h
    ld h, [hl]
    ld a, b
    add hl, de
    ld a, $03
    rrca
    ld bc, $7f50
    rst $38
    and $da
    rst $28
    ld d, e
    rst $38
    and e
    or [hl]
    ld hl, sp+$27

jr_02c_6f55:
    ld hl, sp-$04

jr_02c_6f57:
    ldh [$50], a
    rla
    nop
    add b
    ret nz

    ld h, b
    add b

Jump_02c_6f5f:
    ld h, b
    add b
    ld h, b
    add b
    ret nz

    add b
    ldh a, [rP1]
    nop
    ld bc, $0301
    ld [bc], a
    rra
    ld e, $1f
    ld d, $17
    dec de
    rrca
    rrca
    ret nz

    nop
    nop
    inc c
    inc c
    sbc d
    sub [hl]
    sbc $52
    dec sp
    or a
    cp [hl]
    rst $28
    db $fc
    rst $20
    db $ed
    rst $38
    ret nz

    nop
    nop
    ld b, b
    ld b, b
    db $ec
    xor h
    or [hl]
    ld a, [c]
    rst $30
    db $eb
    ld a, [$6dfe]
    rst $38
    ld l, a
    rst JumpTable
    db $fc
    nop
    nop
    ldh [$e0], a
    ld h, b
    jr nz, jr_02c_6fbe

    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    nop
    inc a
    ld bc, $0f0b
    dec b
    rlca
    inc bc
    inc bc
    dec b
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    add b
    ld b, b
    rst $28
    ccf
    sbc a
    ld a, a
    ld a, a
    ei
    db $db
    push de
    db $ed
    ld [hl], a

jr_02c_6fbe:
    ld [hl], a
    or [hl]
    or a
    sbc e
    sbc d
    jr nz, @+$0a

    xor l
    rst $08
    cp h
    ld_long a, $fff7
    rst JumpTable
    cp $9e
    db $fd
    ld d, h
    rst $38
    ld a, l
    di
    or e
    ret nz

    jr nc, jr_02c_6f57

    or b
    or b
    ldh a, [$d0]
    or b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    jr nz, jr_02c_7025

    inc e
    ld l, c
    ld e, a
    cpl
    jr z, jr_02c_7022

    add hl, de
    ld d, $1b
    ld a, [bc]
    inc c
    dec b
    ld b, $03
    inc bc
    ld bc, $fc02
    cp $e6
    call nc, Call_02c_5eec
    add sp, $43
    and e
    ld a, h
    and e
    ld a, h
    ld c, $f0
    ldh [rIE], a
    nop
    nop
    dec c
    dec c
    rrca
    dec bc
    ld l, [hl]
    ld l, e
    ld_long a, $ffbf
    nop
    nop
    ret nz

    ret nz

    db $d3
    ld d, e
    ccf
    db $ed
    cp l
    db $eb
    ld b, c
    ld b, b
    rst $38
    sub a
    cp e
    rst $30
    ld [hl], a

jr_02c_7022:
    ld a, a
    sbc c
    cp d

jr_02c_7025:
    ld [hl], l
    ld [hl], a
    sbc d
    ld a, [$fab2]
    jr jr_02c_706d

    db $fd
    ld_long $fffe, a
    set 1, d
    cp [hl]
    xor a
    db $ed
    ei
    push af
    rst $38
    sbc $fe
    ld [bc], a
    add b
    inc b
    ld l, e
    ld a, l
    dec e
    ld d, $0d
    ld a, [bc]
    rlca
    rlca

jr_02c_7046:
    dec b
    ld b, $02
    inc bc
    ld bc, $8001
    jr nz, @-$02

    db $ec
    ld hl, sp-$28
    ld [hl], b
    ret nc

    ld c, b
    ldh a, [$ac]
    ld [hl], b
    jr nz, jr_02c_7076

    ld h, b
    ld hl, sp-$40
    ret nz

    nop
    dec e
    ld [de], a
    rra
    db $76
    ld a, a
    ld c, l
    ld a, e
    ld e, d
    ld a, a
    dec sp
    scf
    rla
    ld e, $0e

jr_02c_706d:
    rrca
    add b
    add b
    ret c

    ld e, b
    inc l
    db $f4
    or h
    db $fc

jr_02c_7076:
    ld a, h
    db $fc
    add sp, -$18
    ld hl, sp+$70
    ldh a, [$a0]
    ldh [$2a], a
    xor b
    ld [bc], a
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $d001
    ld b, d
    ldh [$a0], a
    ld h, b
    and b
    ld h, b
    and b
    jr nc, jr_02c_7046

    ld h, b
    or b
    ld b, b
    ret nz

    db $fc
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    dec b
    rlca
    rrca
    rrca
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$f0]
    sub b
    nop
    xor b
    ld [bc], a
    rrca
    add hl, bc
    dec c
    dec bc
    dec bc
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld bc, $0801
    inc d
    ldh [$b0], a
    ret nc

    ld d, b
    ldh a, [$60]
    and b
    ld h, b
    and b
    ld h, b
    jr nz, jr_02c_70f0

    ret nz

    ret nz

    ld [hl], b
    call nc, $0203
    ld b, $05
    dec b
    ld b, $02
    ld [bc], a
    ld bc, $0001
    and h
    ret nz

    ldh a, [$f0]
    or b
    ret nc

    ret nc

    or b
    ldh [$e0], a
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    rst $38
    rst $38

jr_02c_70f0:
    nop
    ret nc

    inc bc
    nop
    ld b, $28
    inc b
    sub c
    ld [$8853], sp
    ld l, $41
    jr z, jr_02c_7101

    ret nc

    inc bc

jr_02c_7101:
    nop
    ld h, b
    inc d
    jr nz, @-$75

    db $10
    jp z, Jump_02c_7411

    add d
    inc d
    ld b, b
    rst $38
    rst $38
    nop
    ld d, l
    ld d, l
    nop
    adc d
    pop bc
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$78
    ld d, l
    ld d, l
    nop
    cp a
    ld d, a
    dec hl
    dec d
    inc bc
    dec b
    ld [bc], a
    ld bc, $5555
    nop
    db $fc
    ld a, h
    cp [hl]
    ld a, a
    cp a
    ld e, a
    cpl
    ld d, l
    ld e, l
    ld d, l
    nop
    ld [bc], a
    ld bc, $8001
    ldh a, [$fc]
    rst $38
    nop
    xor $00

jr_02c_713e:
    dec sp
    ld b, b
    rst $08
    nop
    ld a, d
    nop
    nop
    xor $01
    cp a
    nop
    push af
    nop
    ld e, e
    inc b
    ret nz

    rrca
    jr nc, jr_02c_71ad

    nop
    nop
    rrca
    rst $38
    ld bc, $100f
    stop
    db $10
    ld bc, $0000
    rlca
    inc bc
    dec c
    ld b, $0e
    rra
    ld [hl], $39
    ld [bc], a
    inc l
    ld [hl], e
    ld e, h
    ld h, e
    ld e, [hl]
    pop hl
    ld sp, $01bd
    jp $3ec1


    rra
    ldh [$3f], a
    ret nz

    ld hl, $1c10
    db $e3
    nop
    ld l, $ff
    sbc $e1
    add c
    inc b
    ld a, [hl]
    ld hl, sp+$07
    cp $01
    ld hl, $03fc
    inc c
    ld [hl], b
    adc a
    ldh a, [rIF]
    inc sp
    daa
    db $e3
    rra
    nop
    inc e
    rst $38
    ld h, e
    db $fc
    adc [hl]
    pop af
    inc bc
    db $fc
    add b
    dec l
    ld a, a
    add b
    rlca
    ld hl, sp-$01
    rst $38
    ld h, b
    nop
    sbc a
    add a
    ld a, b
    rra
    ldh [$80], a
    ld a, a

jr_02c_71ad:
    nop
    nop
    nop
    ld h, b
    nop
    inc d
    jr nz, jr_02c_713e

    db $10
    jp z, $1104

    ld [hl], h
    add d
    inc d
    ld b, b

jr_02c_71bd:
    dec l
    rst JumpTable
    nop
    nop
    adc a
    ld h, b
    ld c, d
    inc [hl]
    ld h, h
    sbc c

jr_02c_71c7:
    dec h
    jp c, $8901

    db $76
    xor e
    ld d, h
    ei
    inc b
    rst $38
    jr nz, jr_02c_71d3

jr_02c_71d3:
    ld bc, $39ff
    rst $08
    ld c, a
    db $e4
    rst $20
    and h
    ld [$15e7], sp
    rst $30
    dec a
    ld c, [hl]
    ccf
    inc l
    inc sp
    nop
    ld [hl-], a
    and e
    and d
    and a
    and a
    and l
    and a
    inc l
    ld b, $2f
    inc h
    daa
    rst $38
    cp a
    ld hl, $c722
    jr nz, jr_02c_71c7

    call nz, $359f
    rst $30
    rst $38
    db $fd
    dec a
    ld [bc], a
    ccf
    inc hl
    inc sp
    inc hl
    and e
    and e
    rst JumpTable
    inc b
    nop
    add hl, bc
    ld a, l
    rrca
    ccf
    ld l, a
    ld a, [hl]
    ccf
    ld hl, sp+$00
    ccf
    or [hl]
    ld sp, hl
    ld l, l
    ldh a, [$e2]
    ld a, c
    nop
    nop
    nop
    ld bc, $6301
    ld h, d
    ld [hl], a
    ld d, h
    ld a, a
    nop
    ld c, l
    ld l, a
    ld d, [hl]
    ld [hl], a
    ld c, d
    dec sp
    ld h, $1e
    db $10
    rra
    dec sp
    daa
    daa
    ld a, a
    ld b, h
    ld a, a
    ld a, h
    inc c
    rlca
    inc b
    inc bc
    inc bc
    dec a
    jr nz, jr_02c_71bd

    add b
    nop
    add $46
    xor $2a
    cp $b2
    or $6a
    nop
    xor $52
    call c, Call_02c_7864
    ld hl, sp-$24
    db $e4
    nop
    ld c, [hl]
    ld a, [c]
    ld a, [hl]
    and d
    cp $3e
    ldh [rNR41], a
    ld hl, $c0c0
    dec a
    sbc a
    ldh [$8f], a
    ldh a, [rNR42]
    nop
    add l
    ld a, [$fe81]
    add b
    rst $38
    ret nz

    rst $38
    ld [bc], a
    ld d, b
    rst $38
    nop
    rst $38
    and $19
    ld b, h
    nop
    ld [bc], a
    cp e
    ld b, h
    inc de
    db $ec
    ld bc, $48fe
    rst $38
    add b
    daa
    ccf
    ret nz

    ei
    inc b
    ld sp, hl
    ld b, $b0
    ld b, d
    ld c, a
    ld l, l
    cp $ff
    pop bc
    ccf

jr_02c_728d:
    dec hl
    cp $88
    ld a, [hl-]
    ld bc, $639c
    dec l
    inc bc
    db $fc
    ld [hl], b
    nop
    adc a
    rst $00
    ld hl, sp-$50
    ld a, a
    ld l, h
    sbc a
    ld [hl-], a
    nop
    rst $08
    inc sp
    rst $08
    pop hl
    rra
    add c
    ld a, a
    ld c, $00
    pop af
    db $e3
    rra
    dec c
    cp $36
    ld sp, hl
    ld c, h
    nop
    di
    call z, $87f3
    ld hl, sp-$7f
    cp $7f
    ld bc, $83ff
    db $fc
    sbc a
    ld h, b
    ld a, a
    add b
    ld hl, $3900
    add $00
    rst $38
    ret nz

    ccf
    xor h
    rst $28
    nop
    ret c

    db $db
    sbc b
    sbc e
    cp e
    cp e
    db $ed
    db $ed
    nop
    xor d
    xor $ea
    xor $96
    sub [hl]
    inc sp
    inc sp
    jr nz, jr_02c_728d

    cp e
    ld hl, $3b3b
    ld c, e
    ld c, e
    sbc e
    nop
    sbc e
    or e
    or e
    push de
    rst $30
    and h
    rst $20
    jp nc, $d300

    sub c
    sub c
    or [hl]
    or a
    ld [$adef], a
    inc b
    db $ed
    jp nc, $a1de

    rst $38
    inc sp
    and e
    and e
    ld [bc], a
    xor e
    xor e
    dec sp
    cp e
    ld l, e
    ld a, e
    ld hl, $00db
    db $db
    daa
    rst $20
    ld e, b
    ld h, [hl]
    sub l
    ld [c], a
    ld d, c
    nop
    ld l, [hl]
    ld l, d
    ld [hl], c
    ld l, h
    ldh a, [$57]
    jr c, jr_02c_735b

    nop
    rra
    dec bc
    inc sp

jr_02c_7323:
    call $f838
    db $10
    ld h, c
    nop
    jr nc, jr_02c_7361

    ld hl, $372b
    ccf
    inc e
    rlca

jr_02c_7331:
    ld b, b
    nop
    jr nz, jr_02c_7323

    rra
    db $fc
    nop
    xor b
    ld [hl], b
    nop
    ldh a, [$f8]
    sub h
    ld hl, sp+$0b
    db $fc
    rst $00
    ld a, $00
    rst $38
    inc bc
    ld a, b
    rst $38
    add c
    ld a, [hl]
    ld b, h
    ccf
    nop
    ld c, a
    ccf
    ret


    ccf
    sub b
    ld a, a
    ld h, c
    cp $00
    rst $08
    ldh a, [$d2]
    inc a
    xor [hl]

jr_02c_735b:
    jr jr_02c_7331

    inc c
    nop
    ld a, h
    add h

jr_02c_7361:
    call nc, Call_02c_7cec
    ld hl, sp-$20
    nop
    add b
    jr nz, @-$4c

    rst $38
    sbc a
    rst $38
    add c
    rst $38
    ret nz

    nop
    rst $38
    ld d, b
    ld a, a
    ldh a, [rIE]
    cp l
    cp a
    adc a
    nop
    adc a
    nop
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    rrca
    ld h, d
    rst $38
    daa
    ld hl, $ff20
    pop af
    ld b, l
    daa
    ld [$79ff], sp
    cp $dc
    dec h
    ld hl, sp+$5e
    pop hl
    inc b
    cp $c1
    cp [hl]
    pop bc
    nop
    add b
    ld [bc], a
    ld bc, $0002
    inc bc
    jr nc, jr_02c_73b1

    db $10
    rst $28
    dec a
    jr jr_02c_73bd

    rlca
    jr nz, jr_02c_73c9

    ld b, c
    rst JumpTable
    ld l, e
    ld h, c
    rst $30
    nop
    rrca

jr_02c_73b1:
    db $dd
    ld a, $b3
    ld a, h
    ld h, e
    db $fc
    db $e3
    inc c
    db $fc
    jp $d3fc


jr_02c_73bd:
    ld b, c
    or l
    rlca
    ld hl, sp+$20
    ccf
    ret nz

    adc b
    nop
    or a
    or a
    push de

jr_02c_73c9:
    rst $30
    nop
    or a
    rst $30
    ld l, h
    ld l, h
    ld a, [hl+]
    ld l, $a9
    xor a
    nop
    rst $28
    rst $28
    xor c
    jp hl


    ld [hl], a
    ld [hl], a
    ld h, l
    ld h, a
    nop
    db $eb
    rst $28
    db $ec
    db $ec
    ld l, c
    ld l, c
    rst $10
    rst $30
    jr nz, jr_02c_743c

    ld [hl], a
    ld hl, $02fc
    ld a, [$f404]
    inc a
    ld [$41f0], sp
    dec h
    add hl, hl
    dec l
    nop
    nop
    nop
    ld b, d
    add c
    and l
    ld b, d
    jp $ff3c


    nop
    ret nz

    and c
    jr nz, @+$04

    ld bc, $0e11
    cpl
    db $10
    ld hl, $201f
    ld hl, $205f
    ccf
    ld b, b

Jump_02c_7411:
    ld bc, $e855
    jp z, $daf0

    ldh [$da], a
    ldh [$d0], a
    pop de
    pop de
    push de
    push de
    ld d, h
    nop
    inc d
    ld l, e
    ld l, d
    ld l, d
    ld h, e
    inc e
    ld h, e
    inc e
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    ld d, l

Call_02c_7430:
    ld d, l
    nop
    ld h, c
    ld h, l
    ld h, l
    ld b, l
    ld b, h
    ld c, h
    adc h
    adc l
    ld [bc], a
    add b

jr_02c_743c:
    sub b
    ld l, d
    dec d
    jr z, jr_02c_7498

    sbc b
    ld b, a
    ld c, a
    ld c, a
    sub h
    ld c, e
    call nc, $d40b
    dec bc
    ld [bc], a
    and b
    ld a, [$00ff]
    ei
    inc b
    ei
    inc b
    dec b
    dec b
    dec b
    ld hl, sp+$07
    db $fd
    ld [bc], a
    jr z, jr_02c_745d

jr_02c_745d:
    reti


    ld sp, hl
    rlca
    daa
    daa
    db $db
    dec h
    jp nc, Jump_02c_522d

    xor l
    ld [hl], d
    adc l
    db $76
    adc c
    nop
    ld d, b
    and $c1
    ccf
    pop de
    cpl
    ld d, c
    xor a
    sub b
    rst $28
    sbc c
    add hl, de
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    ld d, l
    ld d, l
    rst $38
    ld l, a
    ld l, a
    db $eb
    xor e
    add hl, hl
    dec l
    dec h
    scf
    ld d, l
    ld d, l
    rst $38
    xor b
    xor b
    xor c
    cp c
    sbc c
    sbc c
    sub c
    sub c
    dec b
    ld d, h
    rst JumpTable
    ld e, e
    rst $38

jr_02c_7498:
    ld e, e
    rst $38
    ld a, a
    ld [hl], a
    scf
    scf
    scf
    rla
    rst $38
    ld a, l
    ld d, l
    rst $38
    cp $fd
    db $fd
    db $fd
    push af
    rst $30
    ld d, l
    ld d, l
    rst $38
    rst $20
    rst $20
    ld h, a
    ld c, a
    ld c, a
    ld c, e
    dec bc
    dec bc
    dec d
    ld d, l
    ldh a, [$e4]
    ld hl, sp-$14
    db $ec
    db $ec
    add sp, -$18
    ret z

    jp z, $00aa

    jp nc, $2c2c

    inc l
    inc l
    jp $c33c


    inc a
    ld h, e
    inc e
    ld l, e
    inc d
    ld d, l
    ld d, l
    nop
    xor c
    and c
    add e
    inc bc
    inc bc
    inc hl
    inc hl
    inc hl
    nop
    and d
    ld b, d
    or h
    dec bc
    or h
    dec bc
    ldh a, [rIF]
    ret nz

    cpl
    dec l
    dec l
    ld d, d
    dec l
    dec a
    db $fd
    ld d, b
    rst $38
    ld a, [$f0f2]
    push hl
    ld a, [$f2ec]
    push de
    nop
    rst $38
    cp $94
    inc d
    sub h
    ld a, a
    and l
    ld e, [hl]
    dec h
    ld e, [hl]
    ld h, e
    inc e
    ret nc

    nop
    rst $38
    ld h, c
    ld b, h
    ei
    sub [hl]
    ld l, c
    sub d
    ld l, c
    xor d
    ld b, c
    db $eb
    nop
    ld h, c
    nop
    ld d, h
    nop
    rst $38
    dec de
    dec bc
    dec bc
    dec de
    rst $28
    sub c
    ld l, a
    sub e
    ld l, l
    jp nc, $f22d

    dec c
    ld d, b
    nop
    rst $38
    inc hl
    ld [hl+], a
    and l
    ei
    push af
    xor e
    ld d, [hl]
    xor c
    db $76
    adc c
    or $09
    rst $30
    ld [$2a00], sp
    db $ec
    sbc e
    rst $38
    sbc c
    rst $38
    call Call_02c_4cbb
    cp e
    ld h, h
    sbc e
    inc de
    inc de
    inc de
    push de
    nop
    rst $38
    ld e, l
    dec c
    dec c
    dec bc
    db $fd
    add e
    ld a, l
    add e
    ld a, l
    pop bc
    ccf
    push af
    ld d, l
    rst $38
    ld [hl], a
    ld a, a
    scf
    scf
    dec [hl]
    dec h
    db $fd
    ld d, l
    rst $38
    cp a
    cp l
    xor l
    xor l
    xor c
    rst $38
    push af
    rst $38
    ld a, e
    ld e, e
    rst $38
    push de
    rst $38
    rst $28
    rst $28
    rst $28
    rst $38
    db $fc
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jp $a5a5


    or l
    and l
    and l
    and l
    xor l
    and l
    dec b
    nop
    ret nz

    and l
    jp $c1a6


    and e
    and b
    sub b
    ldh [$cf], a
    ldh a, [$e0]
    rst $38
    ld a, a
    rst $38
    ret c

    daa
    rst $38
    nop
    nop
    inc b
    nop
    ld b, b
    nop
    nop
    nop
    adc b
    ld [hl+], a
    db $fd
    cp $02
    rst $38
    inc bc
    ld b, e
    ld bc, $0103
    inc bc
    ld [bc], a
    rst $38
    cp $09
    ld b, b
    ld c, a
    ld d, a
    dec sp
    xor e
    rla
    sub a
    or a
    or a
    ld d, a
    cpl
    rra
    cpl
    rrca
    cp a
    nop
    nop
    rlca
    nop
    inc c
    inc bc
    jp nc, $230d

    ld e, c
    adc l
    inc sp
    xor e
    rla
    ld h, a
    sbc a
    xor a
    ld e, a
    nop
    rrca
    rst $38
    add h
    inc bc
    ret z

    ld b, $31
    ld c, h
    sub d
    add hl, hl
    ld l, a
    sbc e
    xor a
    rst JumpTable
    inc d
    nop
    sbc a
    ld e, a
    ccf
    cpl
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    ld sp, $164c
    add hl, hl
    inc h
    ld a, [de]
    ld [bc], a
    inc b
    ret nz

    nop
    rst $38
    ld e, [hl]
    ccf
    ld l, $9f
    ld e, h
    adc [hl]
    add hl, sp
    call z, Call_02c_49b6
    call nc, Call_02c_402a
    inc e
    ld b, b
    ld [$a7ff], sp
    cp h
    ld hl, sp-$0e
    pop af
    rst $28
    rst $20
    rst JumpTable
    rst $08
    adc a
    rst JumpTable
    sbc a
    sbc a
    cp a
    rrca
    rst $38
    nop
    inc a
    ccf
    rrca
    rrca
    nop
    inc a
    ld bc, $ff1f
    ldh [rIE], a
    dec a
    ld a, $06
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nc

    nop
    rst $38
    ld a, l
    adc h
    ld a, a
    rst $20
    rra
    ld a, c
    add a
    ld l, l
    sub e
    and b
    rst JumpTable
    or b
    rst $08
    push de
    ld d, l
    rst $38
    cp $fe
    sbc b
    ld sp, $fb69
    di
    nop
    db $fc
    add b
    rst $38
    rst $38

jr_02c_7642:
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    inc bc
    rst $38
    nop
    cp $fe
    db $fc
    db $fc
    add b
    add b
    xor e
    rst $38
    nop
    dec c
    dec b
    inc b
    nop
    dec bc
    nop
    cp a
    ld b, b
    ccf
    ret nz

    rra
    and b
    rra
    and b
    add hl, bc
    inc h
    ld bc, $010c
    nop
    ld a, [bc]
    nop
    ei
    inc b
    rst JumpTable
    jr nz, @-$08

    add hl, bc
    or h
    ld c, e
    or b
    ld c, a
    ld a, [hl+]
    ld b, l
    dec l
    dec b
    ld b, b
    ld [$ef10], sp
    xor l
    ld d, d
    cp l
    ld b, d
    ld e, c
    and [hl]
    ld c, b
    or a
    ld d, b
    db $fd
    cp l
    ld hl, $0021
    jr nc, jr_02c_7642

    sub d
    ld l, l
    or c
    ld c, a
    sub l
    ld l, a
    ld b, h
    cp $26
    or [hl]
    sub b
    sub b
    nop
    nop
    ld a, [bc]
    nop
    add a
    pop hl
    cp $a5
    ld a, [$f8f8]
    daa
    ret c

    cpl
    ret nc

    cp a
    ld b, b
    rst $38
    nop
    inc c
    nop
    sub c
    rst $20
    daa
    db $d3
    ld d, d
    or a
    or [hl]
    db $ed
    db $ed
    xor $2a
    rst JumpTable
    ld d, c
    rst $38
    jr nz, jr_02c_76c4

    nop
    xor d
    or e
    or d
    and e

jr_02c_76c4:
    and d
    xor e
    cp e
    ld a, e
    ld l, d
    db $db
    jp c, $24e7

    rst $38
    jr jr_02c_76d5

    ld d, l
    db $fc
    rst $00
    rst $38
    db $dd

jr_02c_76d5:
    cp $f2
    ld [c], a
    ld [c], a
    jp nz, $d2d2

    db $f4
    nop
    cp a
    sbc a
    rst $38
    sbc a
    adc a
    rst JumpTable
    ld e, b
    rst $08
    ld b, e
    db $ec
    ld [hl], b
    db $e4
    dec d
    ld d, a
    nop
    rst $38
    rst $38
    adc $9c
    sbc [hl]
    ld b, e
    cp c
    call c, Call_02c_5715
    nop
    rst $38
    rst $38
    ld h, e
    ld hl, sp+$0e
    rst $20
    di
    ld e, $00
    rrca
    ld bc, $e39c
    add $f9
    ld [hl], b
    ld a, a
    inc a
    ccf
    ld b, $07
    inc bc
    inc bc

jr_02c_770f:
    nop
    rrca
    add b
    rst $00
    rst $38
    rrca
    rst $38
    ld a, [hl]
    cp $fc
    db $fc
    ldh [$e0], a
    ret nz

    ret nz

    dec d
    inc bc
    nop
    ret nc

    cpl
    rst $38
    rst $38
    rst $38
    jp $a53c


    ld b, d
    ld b, d
    add c
    adc b
    nop
    db $fd
    db $fc
    rst $38
    ei
    cp $ee
    rst $38
    or $f9
    xor h
    ld [hl], e
    ld e, h
    ld h, e
    ld e, [hl]
    pop hl
    ld d, b
    dec d
    db $fc
    jp nz, $c8ca

    cp $c8
    cp $c0
    cp $e2
    ld [c], a
    ld a, [c]
    nop
    rlca
    rst $38
    sub b
    ld h, b
    add hl, bc
    rlca
    pop hl
    rra
    ld b, e
    cp l
    ld c, d
    cp l
    ld a, [bc]
    db $fd
    rra
    ld bc, $f750
    ld [$1007], sp
    ldh [rIF], a
    ldh a, [rOBP0]
    ld c, h
    ld c, h
    db $e4
    rst $38
    rst $38
    rst $38
    jr nz, @+$52

    rst $38
    rst $28
    rra
    ld bc, $71af
    push af
    ei
    sub e
    dec bc
    add $3f
    cp $03
    ld d, l
    ld b, b
    ldh [$d2], a
    sub d
    sub a
    sub a
    inc bc
    ld b, e
    and b
    rst $00
    jr nz, jr_02c_770f

    ld h, b
    jr z, jr_02c_778b

jr_02c_778b:
    cp d
    ld a, [$4505]
    ld b, l
    cp e
    ld b, h
    or a
    ld c, b
    inc sp
    ret z

    inc sp
    ret z

    ld h, e
    sbc b
    ld b, b
    xor d
    rst $38
    rst JumpTable
    ld a, l
    rst $28
    sub $6d
    cp a
    ld b, b
    nop
    nop
    nop
    nop
    ld a, [bc]
    xor d
    rst $38
    ld [hl], a

jr_02c_77ac:
    add sp, -$09
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld d, l
    rst $38
    ld h, b
    jr nc, jr_02c_77ac

    or b
    ldh a, [$9e]
    cp $f3
    ld sp, $001c
    ld [bc], a
    ld b, b
    rst $08
    rst $20

jr_02c_77c7:
    rra
    call c, $a238
    ld [hl], c
    ld h, a
    ld e, a
    adc a
    rst JumpTable
    rst $38
    sbc a
    sbc a
    cp a
    ld d, b
    dec b
    rst $38
    ld [c], a
    di
    cp l
    ld a, a
    ld a, a
    sbc a
    ccf
    rst JumpTable
    rla
    rst $28
    inc bc
    rra
    ld d, l
    ld d, l
    rst $38
    nop
    ld h, b
    or b
    ld hl, sp-$34
    db $e3
    ld hl, sp-$02
    ld bc, $ff15
    ldh [$e0], a
    or b
    ld [hl], b
    ret c

    jr c, jr_02c_77c7

    inc bc
    cp $01
    nop
    nop
    db $fc
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    cp h
    db $fc
    rrca
    rst $38
    ld bc, $55ff
    ld d, l
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld d, l
    ld d, l
    rst $38
    rst JumpTable
    ld e, a
    ld a, a
    dec l
    or l
    sub h
    sub $f2
    dec b
    ld d, a
    rst $38
    jp nc, $d1fc

    cp $c4
    call nz, $e1c5
    pop af
    jr nz, jr_02c_783a

    db $f4
    or l
    or a
    rst $30
    db $ec
    rst $28
    xor b
    rst $28
    or e
    rst $30
    db $fd
    db $fd

jr_02c_783a:
    and b
    and b
    xor a
    ret nz

    nop
    ld [hl], b
    adc a
    ld bc, $3e01
    ccf
    xor $f3
    and b
    nop
    dec b
    cp $86
    ld c, $0d
    ld a, [hl]
    ld a, c
    or b
    rst $08
    ld [hl], e
    adc h
    rst $00
    jr c, @+$01

    nop
    ld bc, $0640
    and a
    ld b, b
    xor $01
    ld e, h
    add e
    reti


    jp hl


    sub c

Call_02c_7864:
    ld c, $13
    inc c
    dec a
    ld [bc], a
    nop
    nop
    ld b, d
    cp c
    jp nz, $8639

    ld [hl], c
    add d
    ld h, l
    ld a, [hl+]
    push hl
    ld [hl+], a
    db $ed
    ld [hl], $e9
    inc l
    di
    ld d, h
    nop
    nop
    xor c
    xor e
    db $e3
    ld [hl], e
    add b
    ld [hl], e
    add b
    ld h, a
    add b

Jump_02c_7887:
    ld l, [hl]
    add c
    ld l, [hl]
    add c
    ld a, [bc]
    nop
    jr nc, @-$4a

    ld c, e
    or b
    ld c, a
    rst $08
    rst $08
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    jr nz, jr_02c_78a6

    ei
    ccf
    pop bc
    pop af
    nop
    ld hl, sp+$00

jr_02c_78a6:
    ld a, a
    add b
    ld hl, sp-$7f
    ld a, [hl]
    db $e3
    inc e
    ret nc

    nop
    rst $38
    sbc a
    ld [hl], a
    rst $08
    rst JumpTable
    ld h, a
    ld l, a
    inc sp
    ei
    dec e
    ld hl, sp+$0f
    add l
    ld a, [hl]
    ld d, h
    nop
    rst $38
    ldh a, [rNR34]
    rst $00
    ld a, a
    ld a, a
    db $fd
    db $fd
    db $dd
    db $dd
    ld a, d
    ld a, [$fe3e]
    ld d, l
    ret nz

    rst $38
    jr nz, @+$1e

    rlca
    pop hl
    ld d, [hl]
    ld d, [hl]
    ld [de], a
    ld [de], a
    nop
    nop
    dec b
    ld b, b
    cp a
    ld hl, sp-$01
    add c
    cp $c4
    rst $08
    ret


    ret nc

    rst $38
    ld h, c
    cp $2f
    ldh a, [rSTAT]
    ld d, l
    rst $38
    jr nc, jr_02c_78f6

    ld hl, sp+$21
    cp $30
    call c, $0007

jr_02c_78f6:
    nop
    ld d, l
    ld d, l
    rst $38
    rra
    rra
    adc a
    and a
    and a
    or a
    sub a
    bit 2, l
    ld d, l
    rst $38
    ld a, [c]
    ldh a, [$d8]

jr_02c_7908:
    add sp, -$08
    ld hl, sp-$04
    db $db
    ret nz

    ld bc, $0100
    ld bc, $0704
    dec bc
    inc c
    rla
    jr jr_02c_7908

    ldh a, [$3f]
    ret nz

    rst $38
    nop
    ld d, l
    nop
    rst $38
    ld a, a
    ret c

    ldh [rSVBK], a
    add b
    jp nz, $c03c

    add c
    ld bc, $1006
    dec b
    nop
    rst $30
    adc h
    rlca
    ld a, [bc]
    inc b
    inc sp
    inc c
    inc b
    dec sp
    rra
    ldh [$e2], a
    rrca
    ld [hl], l
    nop
    nop
    add h
    inc sp
    add a
    adc $01
    sbc c
    ld b, $63
    inc e
    rst JumpTable
    jr nz, jr_02c_794b

jr_02c_794b:
    inc d
    ld a, h
    ld l, c
    ld d, $e4
    dec de
    ret


    scf
    db $db
    ld h, $f2
    inc l
    and [hl]
    or [hl]
    add hl, sp
    cp $00
    nop
    inc l
    di
    ld c, h
    or e
    xor b
    rlca
    ld a, [de]
    dec b
    ld [de], a
    dec c
    ld [hl], $09
    inc d
    dec bc
    sub l
    ld a, [bc]
    nop
    nop
    xor $01
    cp [hl]
    ld b, c
    cp a
    ld b, b
    inc e
    jp $825d


    db $db
    inc b
    xor d
    dec d
    ld a, h
    inc bc
    nop
    dec b
    cp a
    nop
    rst $38
    ld [$88f7], sp
    ld [hl], a
    sbc b
    ld h, a
    or b
    ld c, a
    ld [hl], b
    adc a
    ld b, d
    ld c, h
    add b
    inc b
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$3f
    ret nz

    inc hl
    call c, $3000
    rst $08
    ld a, [hl+]
    nop
    rst $38
    db $e3
    inc e
    nop
    nop
    nop
    db $e3
    inc e
    pop af
    ld c, $7f

jr_02c_79ae:
    add b
    inc bc
    db $fc
    dec b
    nop
    nop
    db $d3
    rrca
    push hl
    inc bc
    pop hl
    db $fc
    rst $20
    jr jr_02c_79ae

    ld c, $fe
    ld bc, $c639
    ret nz

    nop
    add b
    ldh [$e0], a
    or b
    ldh a, [$d8]
    ld a, b
    db $ec
    ld e, h
    rst $38
    daa
    call $3f33
    ret nz

    ld d, l
    ld [hl], l
    rst $38
    ldh a, [$f4]
    push af
    db $fd
    db $fd
    cp $fe
    ld d, l
    ld d, l
    rst $38
    ret z

    call z, $a0c4
    or b
    sub h
    sub [hl]
    db $dd
    ld d, h
    ld d, l
    rst $38
    rst $08
    ld c, l
    ld h, b
    ld hl, $30fe
    nop
    nop
    nop
    ld d, h
    ld bc, $e9ff
    ld hl, sp-$18
    db $ec
    ld a, a
    db $f4
    ccf
    cp $3f
    ld a, $df
    rra
    ld d, l
    ld d, b
    nop
    ret nz

    ldh a, [$f9]

jr_02c_7a09:
    cp $f8
    rst $38
    ei
    inc b
    rst $00
    jr c, jr_02c_7a66

    ld d, h
    nop
    ld e, $18
    add e
    rra
    ccf
    rst $38
    rst $38
    cp $01
    ld bc, $3f04
    rst $38
    nop
    ld sp, hl
    ld b, $f0
    rrca
    ret nz

    call $3a33
    rst $00
    call z, $fc3b
    inc b
    ld bc, $b6fe
    ld c, a
    dec hl
    rst JumpTable
    dec [hl]
    inc b
    ld hl, sp+$11
    ld hl, sp+$33
    ldh [rIE], a
    ld b, b
    ld a, c
    ld bc, $0054
    db $eb
    db $fc
    ld l, c

jr_02c_7a44:
    sub b
    ld d, b
    jr nz, jr_02c_7a09

    inc bc
    rrca
    adc c
    inc b
    inc bc
    inc d
    nop
    ld c, $f9
    ld b, $b1
    ld [hl], c
    ld [c], a
    dec e
    jp nz, $243d

    db $db
    call z, $d433
    dec hl
    ld b, d
    nop
    inc sp
    ld c, h
    ret c

    daa
    sbc c
    ld h, [hl]

jr_02c_7a66:
    call z, $e916
    inc e
    db $e3
    jr z, jr_02c_7a44

    and b
    ld e, a
    ld a, [bc]
    nop
    dec d
    dec de
    inc d
    add hl, de
    ld d, $1a
    ld a, [de]
    ld de, $031e
    inc e
    ld [bc], a
    dec e
    ld [bc], a
    dec c
    dec b
    ld d, b
    rst $38
    jr @-$17

    rrca
    ldh a, [$c0]
    ld h, [hl]
    inc sp
    cp l
    ld a, [hl]
    ld a, a
    ld d, e
    ld e, a
    nop
    rla
    rst $38
    inc bc
    db $fc
    adc b
    ld [hl], a
    ld hl, sp+$07
    rrca
    ldh a, [$c4]
    ei
    jp $0471


    ld [$dee7], sp
    ld hl, $8c73
    jr jr_02c_7aaa

    db $fc
    scf
    ret z

jr_02c_7aaa:
    inc e
    db $e3
    ld hl, sp-$80
    rst $38
    add h
    ld [bc], a
    rlca
    ld hl, sp-$3d
    inc a
    ld hl, sp+$38
    rst $00
    adc h
    ld [hl], e
    inc c
    di
    db $e3
    rra
    rst $38
    ret nz

    nop
    cp $ff
    rst $38

jr_02c_7ac4:
    ldh a, [$f0]
    rst $00
    ret nz

    sbc b
    add a
    and b
    sbc a
    ld c, e
    inc sp
    cpl
    ld c, a
    ret nz

    nop
    db $f4
    and $e6
    ld [hl], $36
    jp c, $2d1a

    call $ec1c
    ld b, h
    inc [hl]
    xor d
    sub d
    ld b, b
    ld b, b
    rst JumpTable
    jp nc, $9e97

    or l
    cp [hl]
    xor l
    cp [hl]
    call c, Call_02c_6d6e
    ld a, [bc]
    dec c
    add hl, bc
    ld c, $50
    nop
    rst $38
    rla
    ld [$7f84], sp
    ld h, b
    sbc a
    jr c, jr_02c_7ac4

    ld [$0ef7], sp
    pop af
    rlca
    ld hl, sp+$00
    inc a
    nop
    sbc a
    ld h, b
    add hl, sp
    add $10
    rst $28
    ld [bc], a
    ld l, e
    ld [bc], a
    ld b, d
    inc bc
    inc bc
    nop

jr_02c_7b13:
    jr nc, jr_02c_7b50

    ldh a, [rIF]
    ld b, $f9
    ld a, c
    rst $20
    jp nc, $affe

    cp a
    ld e, a
    ld e, [hl]
    rst $38
    db $fc
    inc b
    ld [$c6f0], sp
    ld sp, hl
    jr nc, @+$01

    db $eb
    db $e4
    jp nz, $84c8

    sub b
    adc b
    nop
    adc [hl]
    nop
    rra
    ld d, l
    nop
    or b
    ret nz

    add e
    ld bc, $7e1f
    jr c, jr_02c_7b40

    ld b, b

jr_02c_7b40:
    nop
    ld sp, $cf0e
    jr nc, @-$45

    ld b, b
    inc de
    rst $00
    add e
    inc e
    add hl, bc
    ld [hl], $23
    ld e, h
    dec b

jr_02c_7b50:
    nop
    dec c
    sub c
    ld l, [hl]
    or e
    ld c, h
    jp nc, $25b2

    ld a, [de]
    ld b, h
    dec sp
    ret z

    scf
    add b
    ld a, a
    nop
    ld d, l
    rst $38
    ld [c], a
    dec e

jr_02c_7b65:
    call z, $d03b
    ccf
    add b
    ld a, a
    dec b
    ld b, $0c
    cp b
    ld d, l
    ld b, b
    cp $03
    dec bc
    rra
    dec [hl]
    dec c
    rra
    db $fc
    ld l, a
    db $fc
    rla

jr_02c_7b7c:
    db $fc
    xor b
    nop
    ld a, [hl]
    add c
    add c
    add c
    ld e, h
    and c
    db $dd
    jr nz, jr_02c_7b65

    jr nz, jr_02c_7b13

    ld h, b
    adc e
    ld h, b
    xor b
    nop
    cp d
    dec b
    dec b
    dec b
    ret c

    rlca
    ret c

    rlca
    or h
    inc bc
    or l
    ld [bc], a
    or l
    ld [bc], a
    jr nz, @+$52

    ld e, b
    ret nc

    ccf
    cp a
    ld c, [hl]
    cp l
    ld [bc], a
    db $fd
    and a
    and a
    sub a
    ld l, b
    sub $29
    dec d
    nop
    cp a
    rlca
    rst $38
    ld d, a
    ld d, e
    ld b, e
    dec h
    rst JumpTable
    and l
    ld e, a
    or e
    ld l, a
    and d
    ld a, a
    inc bc
    db $fc
    ld a, a
    rst JumpTable
    rra
    cp a
    ccf
    cp a
    ccf
    rst $38
    rst $38
    nop

jr_02c_7bc9:
    ld d, l
    push af
    jp nz, $f6da

    ld [$ebe7], a
    jp hl


    push hl
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    ld d, l
    ld d, l
    rst $38
    jr nz, jr_02c_7c0c

    db $10
    db $10
    jr jr_02c_7b7c

    adc h
    jp nz, $0880

    inc bc
    db $fc
    nop
    rst $38
    jr nz, jr_02c_7bc9

    db $10
    rst $28
    inc e
    db $e3
    ld b, $f9
    db $fc
    ld bc, $00fe
    ld a, [hl+]
    rst $38
    rrca
    rrca
    add hl, de
    rra
    dec [hl]
    ld a, [hl-]
    ei
    db $e4
    or b
    rst $08
    nop
    nop
    nop
    dec b
    ld d, l
    nop
    ret z

    ldh a, [$a0]
    ld b, b
    add b
    inc c

jr_02c_7c0c:
    cp h
    ldh a, [$80]
    ld h, e
    ld a, a
    ld d, l
    nop
    jr c, jr_02c_7c4d

    ld [hl], b
    ld bc, $d13f
    ld d, l
    nop
    ld bc, $0106
    ld e, $01
    dec sp
    rst $38
    rst $38
    nop
    nop
    ld c, [hl]
    or c
    ld a, c
    add [hl]
    rst $38
    nop
    ld a, [c]
    dec c
    db $e4
    dec de
    ret nc

    cpl
    inc h
    db $db
    ret c

    daa
    nop
    dec d
    rst $38
    pop de
    cpl
    jp hl


    rla
    ld c, e
    or a
    sub l
    ld l, a
    dec l
    rst $10
    dec bc
    dec hl
    ld d, e
    ld d, l

jr_02c_7c46:
    ld d, b
    rst $38
    ld l, b
    db $d3
    rst $00
    adc h
    add hl, sp

jr_02c_7c4d:
    ld a, l
    db $f4
    push af
    and b
    and h
    ld d, l

jr_02c_7c53:
    ld b, b
    db $fc
    ccf
    rst $38
    ei
    dec sp
    ei
    rst $38
    ld hl, sp+$7f
    ld a, b

jr_02c_7c5e:
    rra
    jr jr_02c_7c62

    ld d, l

jr_02c_7c62:
    nop
    jp c, $da20

    jr nz, jr_02c_7c46

    jr nz, jr_02c_7c5e

    db $f4
    push hl
    jp hl


    jp hl


    ld d, l
    ld d, l
    nop
    sub e
    db $d3
    pop bc
    pop bc
    add d
    add d
    inc bc
    ld bc, $0005
    jr nz, jr_02c_7c53

    add hl, hl
    ld l, [hl]
    ld bc, $174f
    adc a
    db $10
    push bc
    jr jr_02c_7cd2

    inc d
    inc sp
    inc b
    nop
    ld b, c
    ld c, a
    db $d3
    ccf

jr_02c_7c8f:
    ld d, l
    cp a
    dec h
    rst JumpTable
    and d
    ld e, a
    or e
    ld l, c
    sub a
    dec [hl]
    res 6, b
    nop
    ld a, [bc]
    adc $f8
    rst $38
    db $db
    rst $30
    cp h
    rst $08

Call_02c_7ca4:
    di
    inc e
    rst $20
    jr c, jr_02c_7c8f

    add hl, sp
    ld [hl], c
    ld [hl], c
    inc bc
    ret nz

    ld a, [$f1f5]
    db $fd
    ld sp, hl
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst JumpTable
    ld d, l
    ld d, l
    rst $38
    ld h, b
    ld l, b
    xor h
    or $6b
    ld a, h
    sbc [hl]
    rst JumpTable
    ld d, l
    ld d, l
    rst $38
    add b
    ld h, b
    nop
    jr nc, jr_02c_7ce6

    inc d
    ld e, e
    ld l, l
    ld d, l

jr_02c_7cd2:
    ld d, b
    nop
    sbc h
    ldh [$80], a

jr_02c_7cd7:
    inc bc
    ld e, $ff
    di
    inc c
    add $39
    ld d, l
    ld d, b
    nop
    inc b
    ld sp, $3fe7
    inc de

jr_02c_7ce6:
    rst $08
    ld sp, hl
    ld b, $80
    ld a, a
    ld d, l

Call_02c_7cec:
    nop
    nop
    ccf
    rst $28
    db $e3
    rrca
    db $dd
    inc bc
    cp [hl]
    ld b, e
    scf
    adc $4c
    cp a
    nop
    nop
    rst $20
    jr jr_02c_7cd7

    daa
    db $f4
    dec bc
    sbc b
    ld h, a
    inc [hl]
    rst $08
    ret


    ccf
    sbc e
    ld a, e
    ld [hl+], a
    ld [$0820], a
    adc b
    ret nz

    ccf
    ld a, a
    ld sp, $75ff
    rst $38
    db $fd
    db $fd
    sbc c
    db $dd
    ret z

    nop
    nop
    nop
    rrca
    nop
    add a
    rst $38
    xor [hl]
    rst $38
    jp c, $d8fa

    ld a, [$b0b0]
    jr nz, jr_02c_7d4c

    ret nz

    add b
    xor e
    xor c
    xor c
    push de
    db $dd
    ld c, e
    rst $08
    xor a
    or a
    or a
    xor [hl]
    cp a
    sub $df
    dec b
    ld b, b
    ld a, [de]
    add hl, bc
    ld c, $0d
    ld a, [bc]
    dec c
    dec d
    dec d
    inc de
    inc e
    inc de
    inc e
    inc de
    inc e

jr_02c_7d4c:
    ld d, l
    ld d, l
    nop
    ret z

    ret c

    or b
    or h
    xor h
    add sp, -$06
    ld a, [c]
    rst $38
    rst $38
    nop
    ld d, l
    ld d, l
    nop
    scf
    dec de
    dec de
    dec bc
    adc c
    add c
    push bc
    ld b, l
    and b
    nop
    sbc d
    ld h, l
    ld h, l
    reti


    ld h, $dc
    inc hl
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    nop
    ld d, l
    ld hl, sp+$7e
    cp $7e
    cp $3a
    ld a, [$78b8]
    jr c, jr_02c_7d9b

    ld e, b
    ld e, b
    ld d, h
    ld a, [hl+]
    rst $38
    add $42
    nop
    ld d, l
    xor d
    ld l, [hl]
    sub c
    nop
    nop
    nop
    ld d, l
    ld [bc], a
    rst $38
    ld a, a
    ccf
    cpl
    add hl, hl
    sbc a
    ld l, l

jr_02c_7d9b:
    jp nc, $fe2d

    ld bc, $fd00
    add b
    rst $38
    cp [hl]
    cp l
    db $db
    cp l
    push af
    dec de
    db $fd
    inc bc
    nop
    nop
    db $dd
    ld [hl+], a
    ld e, l
    and d
    ld e, h
    and e
    ld d, [hl]
    xor c
    ld d, $e9
    ld [hl], $c9
    or [hl]
    ld c, c
    rst $30
    ld [$00a0], sp
    ld [hl], h
    adc e
    adc e
    ld h, h
    sbc e
    ld h, h
    sbc e
    db $e4
    dec de
    pop hl
    rra
    jp hl


    rla
    jp hl


    rla
    ld [$1a80], sp
    ld e, b
    or a
    ld e, d
    or l
    push af
    ld [de], a
    db $fd
    db $fd
    adc e
    ld a, l
    add e
    ld a, l
    pop bc
    ccf
    ld bc, $7f55
    ld e, l
    rst $38
    ld e, l
    rst $38
    ld e, l
    rst $38
    db $fd
    or l
    or l
    rst $20
    rst $20
    ld d, h
    ld bc, $91ff
    pop de
    pop de
    push de
    ei
    call nc, $d4fb
    ei
    db $f4
    ei
    ldh [rHDMA5], a
    nop
    cp a
    ld d, a
    rst $10
    rst $10
    rst $10
    sub a
    rst $38
    sub e
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    ld d, l
    ld d, l
    rst $38
    rst $30
    rst $30
    rst $30
    or $f6
    cp $fe
    cp $55
    ld d, l
    rst $38
    adc e
    xor e
    xor e
    xor e
    db $eb
    db $eb
    rst $28
    rst $28
    ld d, h
    inc b
    nop
    ld a, [c]
    push af
    push af
    ld [hl], l
    add b
    ld a, l
    add b
    ld a, c
    add b
    ei
    cp e
    ld b, b
    ld d, l
    ld d, h
    nop
    db $10
    db $10
    db $10
    ld c, b
    ld c, h
    call nc, $b396
    inc b

Jump_02c_7e3c:
    ld d, l
    ld d, h
    nop
    rlca
    cpl
    cpl
    ld [hl], a
    ld d, a
    rst JumpTable
    cp a
    xor $11
    and b
    nop
    cp $01
    ld bc, $05fa
    ei
    inc b
    ld sp, hl
    ld b, $bd
    ld b, d
    call c, $da23
    dec h
    ld d, b
    db $10
    ld hl, sp+$38
    jr c, @-$66

    ld a, b
    sbc b
    ld a, b
    sbc b
    ld a, b
    ld e, b
    ld d, b
    ldh a, [rSVBK]
    ldh a, [rTIMA]
    ld d, l
    jp $ff3c


    ld e, d
    rst $20
    and l
    and l
    and l
    and l
    xor l
    and l
    call nc, $00df
    jr nc, jr_02c_7ec3

    jr nz, jr_02c_7e8d

    inc b
    ld b, d
    nop
    nop
    ld c, c
    add d
    jr nz, @-$49

    ld b, d
    dec b
    ld b, b
    scf
    inc de
    ld c, b
    jr nz, jr_02c_7ee5

jr_02c_7e8d:
    ld c, d
    jr nc, @+$01

    ret nz

    nop
    ret nc

    ret nc

    ld a, [$cffa]
    rst $38
    rst $08
    db $fc
    nop
    dec bc
    dec bc
    xor b
    xor b
    nop
    rst $38
    nop
    ld d, h
    ld d, h
    ld a, [$0dfa]
    dec c
    rlca
    rlca
    nop
    ccf
    ld bc, $3f3b
    dec c
    rrca
    xor a
    xor a
    rst $38
    rst $38
    db $e3
    db $e3
    ld d, l
    ld e, a
    rst $38
    sbc a
    rst $08
    rst $20
    rst $20
    pop af
    db $fc
    rst $38
    rst $38
    nop

jr_02c_7ec3:
    rst $38
    push af
    nop
    ld [bc], a
    dec b
    ld d, a
    ld d, b
    nop
    inc e
    db $10
    jr nz, @-$66

    ld d, h
    db $e3
    inc e
    adc a
    ld [hl], b
    ld [bc], a
    jp nz, $cafc

    db $fc
    ret z

    cp $21
    ret nz

    db $10
    cp $e2
    db $fc
    ld hl, $fcf2
    sub b

jr_02c_7ee5:
    ld h, b
    nop
    add hl, bc
    rlca
    pop hl
    rra
    ld b, e
    cp l
    ld c, d
    cp l
    ld [$fd0a], sp
    rra
    rst $38
    jr nz, jr_02c_7efe

    rlca
    db $10
    ld [bc], a
    ldh [rIF], a
    ldh a, [rOBP0]
    rst $30

jr_02c_7efe:
    ld c, h
    ld b, c
    db $e4
    and b
    ld c, a
    nop
    ld b, b
    jr nz, jr_02c_7f07

jr_02c_7f07:
    stop
    cp b
    inc bc
    nop
    ld [hl], h
    nop

Call_02c_7f0e:
    cp $00
    ei
    ld l, [hl]
    add b
    nop
    jr z, jr_02c_7f16

jr_02c_7f16:
    ld d, l
    ld [bc], a
    or d
    dec c
    ld a, b
    rlca
    add b
    ld l, e
    ld a, [de]
    nop
    jr nz, jr_02c_7f22

jr_02c_7f22:
    ret nz

    nop
    ld h, b
    inc c
    add b
    ld [hl], h
    add b
    ld a, [hl-]
    ld h, $80
    ld [bc], a
    nop
    nop
    dec d
    nop
    dec l
    ld [bc], a
    cp d
    dec b
    ld [hl], l
    ld a, [bc]
    ret nz

    xor a
    jr nz, @-$0e

    nop
    xor a
    ld d, b
    ld d, l
    xor d
    add hl, hl
    nop
    rst $38
    rst $28
    inc bc
    ld c, d
    ld [bc], a
    db $fd
    inc h
    nop
    rst $20
    rra
    call c, $a238
    ld [hl], c
    rst $08
    ld h, a
    nop
    ld e, a
    rst $08
    adc a
    rst JumpTable
    rst $38
    sbc a
    sbc a
    cp a
    adc c
    add hl, sp
    ld [bc], a
    nop
    dec d
    ld e, e
    xor d
    ld d, l
    ld b, h
    call nz, $2b41
    xor [hl]
    nop
    db $fd
    ld c, b
    xor a
    ld d, b
    ld sp, $fa05
    ld l, a
    ld [hl], $af

jr_02c_7f73:
    nop
    rra
    cp d
    nop
    nop
    cp [hl]
    ld b, c
    ld d, c
    xor [hl]
    ld b, d
    nop
    push af
    nop
    nop
    and d
    nop
    ld b, h
    nop
    cp $00
    db $fd
    nop
    nop
    cp a
    ld b, b
    ld d, l
    xor d
    inc bc
    nop
    ld b, c
    add b
    scf
    nop
    ld [hl], h
    nop
    xor d
    nop
    ld d, a
    nop
    ld c, e
    rst $38
    add c
    ld b, b
    nop
    jr nz, jr_02c_7feb

    ld e, l
    ld l, e
    nop
    ld e, a
    and b
    jp nc, $d1fc

    cp $c4
    rst $38
    add c
    ld hl, $ffc5
    pop hl
    rst $38
    pop af
    rst $38
    jr nz, jr_02c_7fb6

jr_02c_7fb6:
    ld e, e
    nop
    xor a
    db $10
    db $f4
    dec bc
    and b
    ld e, a
    jr nc, @+$42

    cp a
    ld e, [hl]
    ld b, c
    ld b, d
    cp l
    add c
    ld a, [hl]
    pop hl
    xor c
    and c
    ld [hl+], a
    jp nc, $a12d

    ld e, [hl]
    rrca
    ld a, [bc]
    ld [bc], a
    ldh a, [rIF]
    ret nz

    ccf
    and b
    ld e, a
    rrca
    ld a, [bc]
    ld e, a
    inc b
    and b
    cpl
    ret nc

    dec d
    ld [$0fab], a
    rst $38
    ld [bc], a
    inc bc
    rst $38
    cp $01
    ld d, l
    xor d

jr_02c_7feb:
    cp a
    dec b
    inc de
    rst $38
    ld [c], a
    rst $38
    jr nz, jr_02c_7f73

    ld a, a
    ld l, c
    inc hl
    ld bc, $ff0b
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, [c]
    ld c, c
    pop bc

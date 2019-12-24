; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX

    ld a, [$cba0]
    or a
    jr nz, jr_00a_4010

    ld a, $02
    ld [$cbac], a
    ld a, $08
    ld [$cbae], a

jr_00a_4010:
    call Call_00a_401d
    ld e, $42
    ld a, [de]
    or a
    jp nz, $229b

    jp $2689


Call_00a_401d:
    ld e, $44
    ld a, [de]
    rst $00
    dec l
    ld b, b
    ld e, a
    ld b, b
    adc h
    ld b, b
    jp z, $e840

    ld b, b
    add hl, bc
    ld b, c
    ld a, $01
    ld [de], a
    call $15e9
    call $26ac
    ld a, $30
    call $24f5
    ld e, $42
    ld a, [de]
    or a
    jr z, jr_00a_4054

    ld a, $06
    call $248d
    call $149b
    ld [hl], $0f
    ld a, [de]
    call $25cb
    ld e, $71
    jp $1af2


jr_00a_4054:
    ld a, $04
    ld e, $44
    ld [de], a
    ld hl, $49e2
    jp $24fe


    ld c, $18
    call $1f60
    ld e, $42
    ld a, [de]
    jp nc, $25cb

    call $25b8
    ld h, d
    ld l, $71
    ld a, [hl]
    or a
    ret z

    xor a
    ld [hl], a
    inc a
    ld [$cc02], a
    ld [$cca4], a
    ld e, l
    call $1b07
    ld h, d
    ld l, $44
    ld a, $02
    ld [hl-], a
    dec l
    ld a, [hl]
    inc a
    jp $25cb


    call Call_00a_41c9
    call $25b8
    ld e, $42
    ld a, [de]
    and $04
    ld b, a
    ld c, $00
    ld e, $76
    ld a, [de]
    or a
    jr z, jr_00a_40ae

    ld a, $28
    call $30c7
    jr nz, jr_00a_40b0

    ld hl, $c612
    ld a, [hli]
    or [hl]
    jr nz, jr_00a_40b0

jr_00a_40ae:
    ld c, $02

jr_00a_40b0:
    ld a, b
    add c
    ld hl, $40c2
    rst AddAToHL
    ld a, [hli]
    ld h, [hl]
    ld l, a

Call_00a_40b9:
    call $24fe
    ld e, $44
    ld a, $04
    ld [de], a
    ret


    jp z, $c24a

    ld c, d
    ld [c], a
    ld c, d
    and b
    ld c, d
    call $25b8
    ld e, $61
    ld a, [de]
    or a
    ret z

    xor a
    ld [$cc02], a
    ld e, $44
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    or a
    ret z

    call $25cb
    ld e, $71
    jp $1af2


    call Call_00a_41c9
    call $25b8
    call $250c
    ret nc

    xor a
    ld [$cc02], a
    ld [$cca4], a
    ld e, $42
    ld a, [de]
    or a
    ret z

    add $02
    call $25cb
    ld e, $44
    ld a, $03
    ld [de], a
    ret


    call $25b8
    ld e, $45
    ld a, [de]
    rst $00
    ld a, [de]
    ld b, c
    dec l
    ld b, c
    ld e, c
    ld b, c
    and h
    ld b, c
    xor a
    ld b, c
    call $1832
    call $23a0
    xor a
    ld l, $46
    ld [hl], a
    ld l, $47
    ld [hl], $02
    ld a, $04
    jp $25cb


    call $2387
    jr nz, jr_00a_4140

    inc l
    dec [hl]
    jr nz, jr_00a_4140

    xor a
    ldh [rSB], a
    ld hl, $4ad9
    ld b, $80
    jr jr_00a_4198

jr_00a_4140:
    ldh a, [$b8]
    or a
    jp z, $0c4f

    and $01
    add $01
    ldh [$bc], a
    call $23a0
    ld l, $46
    ld [hl], $b4
    ld bc, $3030
    jp $1847


    call function_0c69
    ldh a, [$b8]
    or a
    ret nz

    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    ldh a, [$bb]
    ld b, a
    ld a, [$cbc2]
    ld e, a
    ld a, [$d98d]
    ld c, a
    pop af
    ldh [rSVBK], a
    ld a, b
    or e
    jr nz, jr_00a_4186

    ld e, $7a
    ld a, c
    ld [de], a
    call $2387
    ret nz

    ld hl, $4b0a
    jr jr_00a_4198

jr_00a_4186:
    ld hl, $4ad6
    ld a, e
    cp $8f
    jr z, jr_00a_4198

    ld hl, $4adf
    cp $85
    jr z, jr_00a_4198

    ld hl, $4adc

jr_00a_4198:
    xor a
    ld [$cca4], a
    call Call_00a_40b9
    ld a, $02
    jp $25cb


    call $1832
    ld a, $08
    call $1a76
    jp $23a0


    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    ldh a, [$bb]
    ld b, a
    ld a, [$cbc2]
    ld e, a
    pop af
    ldh [rSVBK], a
    ld a, b
    or e
    jr nz, jr_00a_4186

    ld hl, $4b14
    jr jr_00a_4198

Call_00a_41c9:
    ld a, $2c
    call $1717
    ld a, $00   ; xor a
    rla
    ld e, $76
    ld [de], a
    ld a, [$c6c7]
    inc e
    ld [de], a
    ld hl, $c616
    ld b, $08
    xor a

jr_00a_41df:
    or [hl]
    inc l
    dec b
    jr nz, jr_00a_41df

    inc e
    ld [de], a
    ret


    ld e, $42
    ld a, [de]
    or a
    ld e, $44
    ld a, [de]
    jp nz, Jump_00a_4261

    or a
    jr z, jr_00a_4222

    call Call_00a_4284
    jp c, $3ad9

    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $f0
    jp nc, $3ad9

    call $2387
    ret nz

    ld [hl], $04
    ld l, $71
    dec [hl]
    jr nz, jr_00a_4218

    ld [hl], $08
    ld l, $70
    ld a, [hl]
    cpl
    inc a
    ld [hl], a

jr_00a_4218:
    ld e, $49
    ld a, [de]
    ld l, $70
    add [hl]
    and $1f
    ld [de], a
    ret


jr_00a_4222:
    call Call_00a_4284
    jp c, $3ad9

    call $15e9
    call $239b
    ld l, $50
    ld [hl], $14
    ld l, $46
    ld a, $04
    ld [hli], a
    ld [hl], $b4
    ld l, $71
    inc a
    ld [hl-], a
    call $041a
    and $01
    jr nz, jr_00a_4245

    dec a

jr_00a_4245:
    ld [hl], a
    ld a, [$cc50]
    and $20
    jp nz, $1e30

jr_00a_424e:
    call $042f
    and $07
    cp $05
    jr nc, jr_00a_424e

    sub $02
    and $1f
    ld e, $49
    ld [de], a
    jp $1e1e


Jump_00a_4261:
    or a
    jr z, jr_00a_427c

    ld a, $24
    call $211e
    bit 7, [hl]
    jp z, $3ad9

    call $222f
    call $2387
    ret nz

    ld [hl], $5a
    ld b, $91
    jp $24af


jr_00a_427c:
    call $239b
    ld l, $46
    ld [hl], $1e
    ret


Call_00a_4284:
    ld a, [$cc50]
    and $20
    jp nz, Jump_00a_429d

    call $238c
    ld a, [hl]
    cp $3c
    ret nc

    or a
    scf
    ret z

    ld l, $5a
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


Jump_00a_429d:
    call $1432
    ld hl, $23c3
    call $1ddd
    ccf
    ret


    ld e, $44
    ld a, [de]
    rst $00
    or b
    ld b, d
    add $42
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $07
    call $248d
    ld e, $42
    ld a, [de]
    jr jr_00a_42c0

jr_00a_42c0:
    call $25cb
    jp $1e1e


    ld a, [$cc75]
    or a
    jr nz, jr_00a_42e6

    ld a, [$cc48]
    bit 0, a
    jr nz, jr_00a_42e6

    ld a, [$dc00]
    or a
    jr nz, jr_00a_42e6

    ld e, $42
    ld a, [de]
    cp $02
    ld c, $11
    jr c, jr_00a_42e8

    ld c, $19
    jr jr_00a_42e8

jr_00a_42e6:
    ld c, $0f

jr_00a_42e8:
    call $2054
    ld h, $ce
    ld l, a
    ld [hl], c
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld hl, sp+$42
    ld b, $43
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $40
    set 7, [hl]
    call $15e9
    jp $1e15


    ld h, d
    ld l, $46
    ld a, [hl]
    inc a
    jp z, $25b8

    dec [hl]
    jp nz, $25b8

    jp $3ad9


    ldh [$8b], a
    call $3ac6
    ret nz

    ld [hl], $9f
    ld l, $46
    ldh a, [$8b]
    ld [hl], a
    call $2215
    push hl
    ld a, $50
    call $0c74
    pop hl
    ret


    call $3ac6
    ret nz

    ld [hl], $a0
    inc l
    ldh a, [$8d]
    ld [hli], a
    ldh a, [$8b]
    ld [hl], a
    jp $2215


    ld e, $44
    ld a, [de]
    rst $00
    ld b, l
    ld b, e
    ld h, a
    ld b, e
    ld a, $01
    ld [de], a
    call $26ac
    call $15e9
    ld h, d
    ld b, $03
    ld l, $43
    ld a, [hl]
    or a
    jr nz, jr_00a_4359

    ld b, $1d

jr_00a_4359:
    ld l, $49
    ld [hl], b
    ld l, $50
    ld [hl], $0f
    ld l, $46
    ld [hl], $46
    jp $1e15


    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_00a_436d

jr_00a_436d:
    call $2387
    jp z, $3ad9

    call $1fdb
    ld e, $70
    ld [de], a
    ld a, [$cc00]
    and $07
    ret nz

    push de
    ld h, d
    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld de, $4398
    call $0068
    ld a, [de]
    ld l, $70
    add [hl]
    ld l, $4d
    ld [hl], a
    pop de
    ret


    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop
    ld a, $28
    call $30c7
    jp nz, $3ad9

    call Call_00a_4448
    call Call_00a_43b9
    call Call_00a_445d
    ld hl, $cc69
    res 0, [hl]
    jp $3ad9


Call_00a_43b9:
    ld a, [$cc69]
    bit 0, a
    ret z

    ld hl, $c6db
    ld a, [hl]
    ld a, [hl]
    rst $00
    reti


    ld b, e
    ld [$f243], a
    ld b, e
    db $f4
    ld b, e
    db $fc
    ld b, e
    ld a, [c]
    ld b, e
    ld a, [c]
    ld b, e
    ld [$f443], a
    ld b, e
    db $fc
    ld b, e

jr_00a_43d9:
    ld a, [$c6db]
    ld [$c6da], a
    cp $04
    jp z, Jump_00a_4410

    cp $07
    jp z, Jump_00a_4415

    ret


    ld e, $78
    ld a, [de]
    cp $02
    ret c

    jr jr_00a_43d9

    jr jr_00a_43d9

    ld e, $78
    ld a, [de]
    cp $04
    ret c

    jr jr_00a_43d9

    ld e, $78
    ld a, [de]
    cp $06
    ret c

    jr jr_00a_43d9

    ld hl, $c60f
    ld a, [hl]
    or a
    ret z

    ld a, $05
    ld l, $da
    ld [hli], a
    ld [hli], a

Jump_00a_4410:
    ld hl, $4430
    jr jr_00a_4420

Jump_00a_4415:
    ld a, [$c6de]
    add a
    ld b, a
    add a
    add b
    ld hl, $4436
    rst AddAToHL

jr_00a_4420:
    ld a, [$c60f]

jr_00a_4423:
    cp [hl]
    jr nc, jr_00a_442a

    inc hl
    inc hl
    jr jr_00a_4423

jr_00a_442a:
    inc hl
    ld a, [hl]
    ld [$c6de], a
    ret


    dec bc
    nop
    ld b, $01
    nop
    ld [bc], a
    ld a, [de]
    ld [bc], a
    dec d
    ld bc, $0000
    inc de
    ld [bc], a
    rrca
    nop
    nop
    inc bc
    ld c, $01
    ld a, [bc]
    nop
    nop
    inc bc

Call_00a_4448:
    ld a, $40
    call $1717
    jr c, jr_00a_4450

    xor a

jr_00a_4450:
    ld h, d
    ld l, $78
    ld [hl], $00

jr_00a_4455:
    add a
    jr nc, jr_00a_4459

    inc [hl]

jr_00a_4459:
    or a
    jr nz, jr_00a_4455

    ret


Call_00a_445d:
    ld e, $42
    ld a, [de]
    or a
    ld hl, $4497
    jr z, jr_00a_4469

    ld hl, $44d5

jr_00a_4469:
    ld a, [$c6da]
    cp $04
    jr c, jr_00a_4477

    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [$c6de]

jr_00a_4477:
    rst JumpTable
    ld a, [hli]
    ld b, [hl]
    ld c, a

jr_00a_447b:
    ld a, [bc]
    or a
    ret z

    call $3ac6
    ret nz

    ld a, [bc]
    ld [hli], a
    inc bc
    ld a, [bc]
    ld [hli], a
    inc bc
    ld a, [bc]
    ld [hli], a
    inc bc
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    inc bc
    jr jr_00a_447b

    inc de
    ld b, l
    ld e, $45
    ld a, [hli]
    ld b, l
    dec sp
    ld b, l
    xor e
    ld b, h
    or c
    ld b, h
    or a
    ld b, h
    cp l
    ld b, h
    push bc
    ld b, h
    call Call_00a_4744
    ld b, l
    ld d, d
    ld b, l
    ld e, l
    ld b, l
    ld l, [hl]
    ld b, l
    ld a, [hl]
    ld b, l
    adc [hl]
    ld b, l
    sbc a
    ld b, l
    sbc a
    ld b, l
    and b
    ld b, l
    pop de
    ld b, l
    rst AddAToHL
    ld b, l
    db $dd
    ld b, l
    sbc $45
    dec d
    ld b, [hl]
    jr nz, jr_00a_450f

    ld h, $46
    inc l
    ld b, [hl]
    ld e, c
    ld b, [hl]
    ld h, h
    ld b, [hl]
    ld l, a
    ld b, [hl]
    ld [hl], l
    ld b, [hl]
    dec e
    ld b, l
    inc h
    ld b, l
    dec [hl]
    ld b, l
    ld b, c
    ld b, l
    jp hl


    ld b, h
    rst $28
    ld b, h
    push af
    ld b, h
    ei
    ld b, h
    inc bc
    ld b, l
    dec bc
    ld b, l
    ld l, b
    ld b, l
    ld l, b
    ld b, l
    ld l, b
    ld b, l
    sbc [hl]
    ld b, l
    sbc [hl]
    ld b, l
    sbc [hl]
    ld b, l
    and [hl]
    ld b, l
    or [hl]
    ld b, l
    add $45
    jp hl


    ld b, l
    db $f4
    ld b, l
    rst $38
    ld b, l
    rrca
    ld b, [hl]
    ld [hl-], a
    ld b, [hl]
    jr c, jr_00a_454d

    ld b, e
    ld b, [hl]
    ld c, [hl]
    ld b, [hl]
    add b
    ld b, [hl]
    add [hl]
    ld b, [hl]

jr_00a_450f:
    adc h
    ld b, [hl]
    sub a
    ld b, [hl]
    jr z, jr_00a_4515

jr_00a_4515:
    nop
    ld c, b
    ld c, b
    dec hl
    nop
    nop
    jr c, jr_00a_4595

    nop
    dec hl
    ld bc, $1800
    ld c, b
    nop
    jr z, jr_00a_4527

    nop

jr_00a_4527:
    jr c, jr_00a_4581

    nop
    dec hl
    ld [bc], a
    nop
    jr jr_00a_4577

    dec [hl]
    rlca
    nop
    db $10
    jr c, jr_00a_4535

jr_00a_4535:
    jr z, @+$04

    nop
    jr c, @+$5a

    nop
    dec hl
    inc bc
    nop
    jr c, @+$7a

    nop
    jr z, jr_00a_4546

    nop
    jr c, jr_00a_459e

jr_00a_4546:
    nop
    dec hl
    inc b
    nop
    jr c, jr_00a_45c4

    dec [hl]

jr_00a_454d:
    nop
    ld bc, $6838
    nop
    dec hl
    inc b
    nop
    jr c, @+$7a

    dec [hl]
    ld bc, $3802
    jr jr_00a_455d

jr_00a_455d:
    dec hl
    inc b
    nop
    jr c, jr_00a_45da

    dec [hl]
    ld [bc], a
    inc bc
    jr nz, jr_00a_459f

    nop
    jr z, jr_00a_456e

    nop
    jr c, jr_00a_45c5

    nop

jr_00a_456e:
    dec hl
    dec b
    nop
    jr c, jr_00a_45eb

    jr z, jr_00a_457a

    nop
    ld e, b

jr_00a_4577:
    adc b
    dec [hl]
    nop

jr_00a_457a:
    inc b
    jr c, @+$6a

    nop
    dec hl
    dec b
    nop

jr_00a_4581:
    jr c, jr_00a_45fb

    jr z, @+$07

    nop
    ld e, b
    adc b
    dec [hl]
    ld bc, $3805
    jr jr_00a_458e

jr_00a_458e:
    dec hl
    dec b
    nop
    jr c, jr_00a_460b

    jr z, jr_00a_459a

jr_00a_4595:
    nop
    ld e, b
    adc b
    dec [hl]
    ld [bc], a

jr_00a_459a:
    ld b, $20
    jr c, jr_00a_459e

jr_00a_459e:
    nop

jr_00a_459f:
    nop
    dec [hl]
    ld [bc], a
    add hl, bc
    jr nz, jr_00a_45dd

    nop
    dec hl
    ld b, $00
    ld [hli], a
    ld e, b
    jr z, jr_00a_45b3

    nop
    jr c, @+$5a

    dec [hl]
    nop
    rlca

jr_00a_45b3:
    jr c, @+$4a

    nop
    dec hl
    ld b, $01
    ld [hli], a
    ld e, b
    jr z, @+$08

    nop
    jr c, @+$5a

    dec [hl]
    ld bc, $1808

jr_00a_45c4:
    ld c, b

jr_00a_45c5:
    nop
    dec hl
    ld b, $02
    ld [hli], a
    ld e, b
    jr z, jr_00a_45d3

    nop
    jr c, @+$5a

    nop
    dec [hl]
    inc bc

jr_00a_45d3:
    ld a, [bc]
    inc h
    jr c, jr_00a_45d7

jr_00a_45d7:
    dec [hl]
    inc b
    dec bc

jr_00a_45da:
    ld c, b
    ld b, b
    nop

jr_00a_45dd:
    nop
    dec hl
    rlca
    inc bc
    ld e, b
    adc b
    dec [hl]
    ld b, $0d
    jr c, jr_00a_465e

    nop
    dec hl
    rlca

jr_00a_45eb:
    nop
    ld [hli], a
    ld e, b
    jr z, @+$09

    nop
    jr c, jr_00a_464b

    nop
    dec hl
    rlca
    ld bc, $5822
    jr z, jr_00a_4602

jr_00a_45fb:
    nop
    jr c, @+$5a

    nop
    dec hl
    rlca
    ld [bc], a

jr_00a_4602:
    ld c, b
    jr nc, jr_00a_462d

    rlca
    nop
    jr c, jr_00a_4661

    dec [hl]
    dec b

jr_00a_460b:
    inc c
    ld [hli], a
    ld e, b
    nop
    jr z, @+$09

    nop
    jr c, jr_00a_466c

    nop
    dec hl
    ld [$5800], sp
    adc b
    dec [hl]
    inc bc
    ld c, $44
    ld a, b
    nop
    dec hl
    ld [$3801], sp
    ld a, b
    nop
    dec hl
    ld [$3802], sp
    ld a, b
    nop
    dec [hl]

jr_00a_462d:
    ld b, $11
    inc d
    ld h, $00
    jr z, @+$0a

    nop
    jr c, jr_00a_468f

    nop
    jr z, jr_00a_4642

    nop
    jr c, jr_00a_4695

    dec [hl]
    inc b
    rrca
    jr @+$4a

jr_00a_4642:
    nop
    jr z, jr_00a_464d

    nop
    ld [hl-], a
    ld e, b
    dec [hl]
    dec b
    db $10

jr_00a_464b:
    ld c, b
    ld e, b

jr_00a_464d:
    nop
    jr z, @+$0a

    nop
    jr c, jr_00a_46ab

    dec hl
    ld [$4803], sp
    jr z, jr_00a_4659

jr_00a_4659:
    dec hl
    add hl, bc
    nop
    ld e, b
    adc b

jr_00a_465e:
    dec [hl]
    inc bc
    ld [de], a

jr_00a_4661:
    ld b, h
    ld a, b
    nop
    dec hl
    add hl, bc
    ld bc, $7838
    dec [hl]
    inc b
    inc de

jr_00a_466c:
    ld c, b
    ld b, b
    nop
    dec hl
    add hl, bc
    ld [bc], a
    jr c, jr_00a_46ec

    nop
    dec hl
    add hl, bc
    inc bc
    ld e, b
    ld a, b
    dec [hl]
    ld b, $15
    ld [hl], $68
    nop
    jr z, jr_00a_468b

    nop
    jr c, @+$5a

    nop
    jr z, jr_00a_4691

    nop
    jr c, jr_00a_46e3

jr_00a_468b:
    nop
    jr z, jr_00a_4697

    nop

jr_00a_468f:
    ld [hl-], a
    ld e, b

jr_00a_4691:
    dec [hl]
    dec b
    inc d
    ld c, b

jr_00a_4695:
    ld e, b
    nop

jr_00a_4697:
    jr z, jr_00a_46a2

    nop
    jr c, jr_00a_46f4

    nop
    ld e, $44
    ld a, [de]
    rst $00
    or c

jr_00a_46a2:
    ld b, [hl]
    inc hl
    ld b, a
    dec sp
    ld b, a
    ld l, h
    ld b, a
    sub a
    ld b, a

jr_00a_46ab:
    cp b
    ld b, a
    ld [hl], b
    ld c, b
    dec bc
    ld c, c
    ld e, $42
    ld a, [de]
    inc e
    ld [de], a
    ld hl, $c64a
    call $0205
    jr nz, jr_00a_46e6

    ld e, $7c
    ld a, [de]
    or a
    jr nz, jr_00a_46d3

    ld a, $28
    call $236b
    jr nz, jr_00a_46d3

    ld a, $a2
    ld e, $7c
    ld [de], a
    call $0c74

jr_00a_46d3:
    call $1432
    cp $e0
    ret nz

    call $239b
    ld a, $0a
    call $248d
    ld e, $71

jr_00a_46e3:
    jp $1af2


jr_00a_46e6:
    ld a, [de]
    ld hl, $c64c
    rst AddAToHL
    ld a, [hl]

jr_00a_46ec:
    cp $28
    jr c, jr_00a_4769

    call $3ea7
    ret nz

jr_00a_46f4:
    ld [hl], $17
    inc l
    ld [hl], $01
    ld l, $d6
    ld a, $40
    ld [hli], a
    ld [hl], d
    ld h, d
    ld l, $77
    ld e, $4b
    ld a, [de]
    ld [hli], a
    add $f8
    ld [de], a
    ld e, $4d
    ld a, [de]
    ld [hli], a
    add $08
    ld [de], a
    ld a, $04
    call $248d
    ld l, $44
    ld [hl], $03
    ld l, $42
    ld [hl], $0a
    call $15e9
    jp $1e30


    ld e, $71
    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    ld bc, $3509
    ld a, [$c6ba]
    or a
    jr z, jr_00a_4738

    call $239b
    ld c, $00

jr_00a_4738:
    jp $184b


    ld a, [$cba5]
    or a
    jr z, jr_00a_4745

    ld a, $01
    ld [de], a

Call_00a_4744:
    ret


jr_00a_4745:
    call $1432
    ld c, l
    ld a, $f5
    call $3a52
    ld e, $43
    ld a, [de]
    ld hl, $c64a
    call $020e
    ld a, [de]
    ld l, $4c
    rst AddAToHL
    ld [hl], $00
    ld l, $ba
    ld a, [hl]
    sub $01
    daa
    ld [hl], a
    ld a, $5e
    call $0c74

jr_00a_4769:
    jp $3ad9


    ld e, $6a
    ld a, [de]
    cp $ff
    ret nz

    ld a, $80
    ld [$cca4], a
    ld [$cc02], a
    ld h, d
    ld l, $44
    ld [hl], $04
    ld a, $06
    call $248d
    ld bc, $fec0
    call $2358
    ld l, $50
    ld [hl], $28
    call $1e5a
    ld e, $49
    ld [de], a
    jp $1e15


    ld a, [$cc34]
    or a
    jp nz, $3ad9

    call $1bee
    jr c, jr_00a_47ab

    call $1fdb
    ld c, $20
    jp $1f04


jr_00a_47ab:
    call $239b
    ld l, $5a
    res 7, [hl]
    ld bc, $3501
    jp $184b


    ld hl, $c649
    bit 0, [hl]
    jr nz, jr_00a_47c5

    set 0, [hl]
    ld b, $04
    jr jr_00a_481f

jr_00a_47c5:
    ld c, $00
    ld hl, $c65d
    ld a, [hl-]
    srl a
    jr nz, jr_00a_47db

    ld a, [hl]
    rra
    ld hl, $4978

jr_00a_47d4:
    cp [hl]
    jr nc, jr_00a_47db

    inc hl
    inc c
    jr jr_00a_47d4

jr_00a_47db:
    ld e, $43
    ld a, [de]
    ld hl, $4991
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL
    ld a, c
    add a
    ld c, a
    add a
    add a
    add c
    rst AddAToHL
    call $0440
    ld a, b
    cp $06
    jr nz, jr_00a_4801

    ld a, $2f
    call $1717
    jr nc, jr_00a_480f

    ld hl, $c6a3
    ld a, [hl-]
    ld [hl], a
    jr jr_00a_480f

jr_00a_4801:
    cp $00  ; and a / or a
    jr nz, jr_00a_480f

    ld hl, $c649
    bit 1, [hl]
    jr z, jr_00a_480d

    inc b

jr_00a_480d:
    set 1, [hl]

jr_00a_480f:
    ld hl, $c65c
    ld a, [hl]
    sub $c8
    ld [hli], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    jr nc, jr_00a_481f

    xor a
    ld [hl-], a
    ld [hl], a

jr_00a_481f:
    ld a, b
    ld e, $42
    ld [de], a
    ld hl, $497d
    rst JumpTable
    ld a, [hli]
    ld c, [hl]
    cp $2d
    jr nz, jr_00a_4830

    call $17b9

jr_00a_4830:
    ld b, a
    call $16eb
    ld hl, $cc6a
    ld a, $04
    ld [hli], a
    ld [hl], $01
    ld hl, $d00b
    ld bc, $f300
    call $2232
    call $239b
    ld l, $5a
    set 7, [hl]
    ld e, $42
    ld a, [de]
    cp $00  ; and a / or a
    ld a, $4c
    call nz, $0c74
    call $15e9
    ld e, $42
    ld a, [de]
    ld hl, $4866
    rst AddAToHL
    ld c, [hl]
    ld b, $35
    jp $184b


    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $08
    rlca
    ld hl, $c6a5
    ld a, [$cbe6]
    cp [hl]
    ret nz

    inc l
    ld a, [$cbe7]
    cp [hl]
    ret nz

    ld l, $a2
    ld a, [$cbe4]
    cp [hl]
    ret nz

    ld a, $91
    call $0c74
    ld e, $43
    ld a, [de]
    ld hl, $4b14
    rst AddAToHL
    ld a, [hl]
    push af
    sub $39
    ld [$cc18], a
    ld a, $3d
    call function_0602
    pop af
    cp $3d
    call nz, $0602
    ldh a, [$ad]
    ld d, a
    ld h, d
    ld l, $77
    ld e, $4b
    ld a, [hli]
    ld [de], a
    ld e, $4d
    ld a, [hli]
    ld [de], a
    ld l, $5a
    res 7, [hl]
    call $149b
    xor a
    ld [hli], a
    ld [hl-], a
    ld a, l
    sub $10
    ld l, a
    xor a
    ld [hli], a
    ld [hl-], a
    ld h, a
    ld e, l
    ld a, l
    and $f0
    ld l, a
    ld a, e
    and $0f
    sla l
    rl h
    add l
    ld l, a
    sla l
    rl h
    ld bc, $d800
    add hl, bc
    ld e, $7a
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld bc, $0400
    add hl, bc
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld b, $04

jr_00a_48ed:
    ld c, $04
    push bc

jr_00a_48f0:
    ld a, [hl]
    and $f0
    or $04
    ld [hli], a
    dec c
    jr nz, jr_00a_48f0

    ld bc, $001c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00a_48ed

    pop af
    ldh [rSVBK], a
    call $239b
    ld l, $46
    ld [hl], $08
    ld h, d
    ld l, $46
    ld a, [hl]
    or a
    jr z, jr_00a_4915

    dec a
    ld [hl], a
    ret nz

jr_00a_4915:
    ld a, $08
    ld [hli], a
    ld a, [hl]
    inc a
    ld [hl], a
    cp $0a
    jr nc, jr_00a_4965

    ld hl, $4a9a
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL
    ld e, $7a
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld d, a
    ld e, c
    push hl
    push de
    pop hl
    pop de
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld b, $04

jr_00a_493a:
    ld c, $04
    push bc

jr_00a_493d:
    ld a, [de]
    ld [hli], a
    inc de
    dec c
    jr nz, jr_00a_493d

    ld bc, $001c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00a_493a

    pop af
    ldh [rSVBK], a
    ld a, $29
    call $05b6
    ldh a, [$ad]
    ld d, a
    ld e, $47
    ld a, [de]
    add $1f
    call $05b6
    call $12ba
    ldh a, [$ad]
    ld d, a
    ret


jr_00a_4965:
    xor a
    ld [$cca4], a
    ld [$cc02], a
    ld e, $43
    ld a, [de]
    ld hl, $c64a
    call $0218
    jp $3ad9


    sub [hl]
    ld h, h
    inc a
    inc d
    nop
    dec hl
    ld bc, $002d
    dec l
    ld bc, $022d
    dec l
    inc bc
    dec l
    inc b
    cpl
    ld bc, $0d28
    add hl, hl
    jr jr_00a_49b9

    inc d
    ld b, d
    rrca
    ld c, $a3
    ld [hl], b
    and c
    ld l, [hl]
    pop de
    ld a, [hl-]
    ld l, e
    adc $9b
    ld l, b
    ld h, a
    sbc b
    ret


    ld e, d
    ld b, b
    ld h, $00
    nop
    ld a, [de]
    dec c
    dec c
    inc c
    nop
    ld b, b
    ld h, $26
    nop
    nop
    nop
    ld b, b
    ld h, $0e
    nop
    ld h, $33
    inc sp
    nop

jr_00a_49b9:
    nop
    nop
    ld b, b
    ld h, $0e
    nop
    ld a, [de]
    ld h, $26
    nop
    nop
    nop
    ld b, b
    inc [hl]
    ld h, $00
    inc c
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    ld c, l
    inc sp
    inc sp
    dec c
    ld a, [de]
    ld h, $5a
    inc sp
    nop
    nop
    add hl, de
    dec c
    dec c
    nop
    dec c
    ld a, [de]
    inc sp
    ld b, b
    nop
    nop
    ld h, $33
    dec c
    nop
    ld [$3312], sp
    inc sp
    nop
    nop
    ld h, $33
    ld a, [de]
    dec c
    dec b
    dec c
    ld a, [de]
    dec sp
    nop
    nop
    ld h, $33
    ld h, $1a
    inc bc
    ld [$190f], sp
    nop
    nop
    ld a, [de]
    ld b, b
    ld c, l
    ld h, $00
    nop
    ld h, $4d
    ld h, [hl]
    nop
    dec c
    dec c
    dec c
    nop
    nop
    nop
    ld a, [de]
    ld [hl-], a
    ld c, l
    nop
    inc sp
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    dec c
    ld a, [de]
    ld h, $00
    ld b, b
    inc sp
    inc sp
    dec c
    nop
    nop
    ld [$1a12], sp
    nop
    ld b, b
    inc sp
    inc sp
    ld h, $00
    nop
    inc bc
    dec c
    dec c
    nop
    ld a, [de]
    ld c, e
    ld c, e
    inc sp
    nop
    nop
    nop
    ld e, d
    ld e, d
    nop
    ld a, [de]
    ld a, [de]
    inc c
    inc c
    nop
    nop
    nop
    inc sp
    inc sp
    nop
    inc sp
    inc sp
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    ld h, $26
    nop
    ld h, $33
    inc [hl]
    daa
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    nop
    ld a, [de]
    ld c, l
    ld [hl-], a
    inc sp
    nop
    nop
    nop
    dec c
    dec c
    nop
    ld a, [de]
    ld b, b
    ld b, b
    ld c, h
    nop
    nop
    nop
    ld b, b
    inc [hl]
    nop
    ld h, $26
    ld h, $1a
    nop
    nop
    nop
    ld h, $26
    nop
    ld h, $33
    inc [hl]
    daa
    nop
    nop
    nop
    ld a, [de]
    ld h, $00
    ld h, $33
    inc [hl]
    inc sp
    nop
    nop
    nop
    ld [de], a
    ld a, [de]
    nop
    ld hl, $4033
    ld b, b
    nop
    nop
    nop
    dec c
    dec c
    nop
    dec c
    ld b, b
    ld c, h
    ld c, l
    add hl, bc
    ld [$2617], sp
    dec [hl]
    ld b, h
    ld b, e
    ld d, d
    ld h, c
    jr nz, @+$23

    ld [hli], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hli]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nz, @+$23

    jr nz, jr_00a_4ad9

    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hli]
    dec hl
    jr nz, jr_00a_4aee

    dec l
    ld l, $20
    ld hl, $2120
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hli]
    dec hl
    ld [hli], a
    inc l
    dec l
    inc hl
    jr nz, @+$23

    jr nz, jr_00a_4af9

    ld [hli], a

jr_00a_4ad9:
    inc h
    dec h
    inc hl
    jr nz, jr_00a_4b04

    daa
    ld hl, $2822
    add hl, hl
    inc hl
    jr nz, @+$23

    jr nz, jr_00a_4b09

    ld [hli], a
    inc hl
    ld [hli], a
    inc hl
    jr nz, jr_00a_4b12

jr_00a_4aee:
    dec h
    ld hl, $2622
    daa
    inc hl
    jr nz, jr_00a_4b17

    jr nz, jr_00a_4b19

    ld [hli], a

jr_00a_4af9:
    inc hl
    ld [hli], a
    inc hl
    jr nz, jr_00a_4b1f

    jr nz, jr_00a_4b21

    ld [hli], a
    inc h
    dec h
    inc hl

jr_00a_4b04:
    jr nz, jr_00a_4b27

    jr nz, jr_00a_4b29

    ld [hli], a

jr_00a_4b09:
    inc hl
    ld [hli], a
    inc hl
    jr nz, jr_00a_4b2f

    jr nz, @+$23

    ld [hli], a
    inc hl

jr_00a_4b12:
    ld [hli], a
    inc hl
    dec a
    dec a
    dec a

jr_00a_4b17:
    dec a
    ccf

jr_00a_4b19:
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a

jr_00a_4b1f:
    dec a
    dec a

jr_00a_4b21:
    ld a, $3d
    dec a
    ld e, $44
    ld a, [de]

jr_00a_4b27:
    rst $00
    inc l

jr_00a_4b29:
    ld c, e
    cp b
    dec h
    ld a, $01
    ld [de], a

jr_00a_4b2f:
    call $15e9
    jp $1e27


    ld e, $44
    ld a, [de]
    rst $00
    dec a
    ld c, e
    ld b, [hl]
    ld c, e
    ld a, $01
    ld [de], a
    call $15e9
    jp $1e15


    call $25b8
    ld a, $00   ; xor a
    call $211e
    ld l, $01
    ld a, [hl]
    cp $11
    jp nz, $3ad9

    ld e, $48
    ld a, [de]
    ld l, $08
    cp [hl]
    ld a, [hl]
    jr z, jr_00a_4b75

    ld [de], a
    push af
    ld hl, $4b81
    rst AddAToHL
    ld a, [hli]
    ld e, $5a
    ld [de], a
    pop af
    call $25cb
    ld a, $00   ; xor a
    call $211e
    ld l, $08
    ld a, [hl]

jr_00a_4b75:
    push hl
    ld hl, $4b85
    rst AddAToHL
    ld b, $00
    ld c, [hl]
    pop hl
    jp $2232


    add e
    add e
    add b
    add e
    nop
    dec b
    nop
    ei
    ld e, $42
    ld a, [de]
    ld c, a
    ld hl, $cf00
    ld b, $b0

jr_00a_4b92:
    ld a, [hl]
    cp c
    call z, Call_00a_4b9e
    inc l
    dec b
    jr nz, jr_00a_4b92

    jp $3ad9


Call_00a_4b9e:
    push hl
    push bc
    ld b, l
    ld e, $4d
    ld a, [de]
    and $f0
    swap a
    call Call_00a_4bcd
    jr nz, jr_00a_4bca

    ld e, $4b
    ld a, [de]
    ld [hli], a
    ld e, $4d
    ld a, [de]
    and $0f
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, b
    and $f0
    add $08
    ld [hli], a
    inc l
    ld a, b
    and $0f
    swap a
    add $08
    ld [hl], a

jr_00a_4bca:
    pop bc
    pop hl
    ret


Call_00a_4bcd:
    or a
    jp z, $2e08

    dec a
    jp z, $3ea7

    dec a
    jp z, $3ac6

    ret


    call $23b9
    jr nz, jr_00a_4c46

    ld a, $01
    ld [de], a
    ld e, $41
    ld a, [de]
    cp $8d
    jr nz, jr_00a_4bf9

    ld a, $40
    call $1717
    jp nc, $3ad9

    call $01ea
    cp $02
    jp c, $3ad9

jr_00a_4bf9:
    call $3e3e
    ld e, $42
    ld a, [de]
    cp b
    jp nz, $3ad9

    cp $01
    jr nz, jr_00a_4c20

    ld e, $41
    ld a, [de]
    cp $8b
    jr nz, jr_00a_4c20

    ld a, $16
    call $30c7
    ld b, $5d
    jr nz, jr_00a_4c19

    ld b, $b6

jr_00a_4c19:
    ld a, [$cc4c]
    cp b
    jp nz, $3ad9

jr_00a_4c20:
    call $15e9
    ld e, $49
    ld a, $04
    ld [de], a
    ld e, $41
    ld a, [de]
    ld hl, $4c4c
    cp $8a
    jr z, jr_00a_4c3c

    ld hl, $4c56
    cp $8b
    jr z, jr_00a_4c3c

    ld hl, $4c60

jr_00a_4c3c:
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe

jr_00a_4c46:
    call $250c
    jp $2686


    xor c
    ld [hl], d
    or h
    ld [hl], d
    or a
    ld [hl], d
    cp d
    ld [hl], d
    cp l
    ld [hl], d
    ret nz

    ld [hl], d
    call z, $e372
    ld [hl], d
    and $72
    jp hl


    ld [hl], d
    db $ec
    ld [hl], d
    ld d, $73
    ld d, $73
    add hl, de
    ld [hl], e
    inc e
    ld [hl], e
    ld e, $42
    ld a, [de]
    bit 7, a
    jp nz, Jump_00a_4ef7

    ld a, [$cc34]
    or a
    jp nz, $25b8

    ld e, $44
    ld a, [de]
    rst $00
    adc e
    ld c, h
    or a
    ld c, h
    ret


    ld c, h
    ld l, a
    ld c, l
    rst $30
    ld c, l
    ld b, l
    ld c, [hl]
    add sp, $4d
    ld a, $01
    ld [de], a
    ld a, $02
    call $248d
    call Call_00a_4f21
    ld e, $4b
    ld l, $70
    ld a, [de]
    ld [hli], a
    ld e, $4d
    ld a, [de]
    ld [hl], a
    ld a, c
    ld hl, $4cb3
    rst JumpTable
    ld a, [hli]
    ld e, $72
    ld [de], a
    ld e, $75
    ld a, [hl]
    ld [de], a
    call $15e9
    jp $1e03


    jr jr_00a_4d1d

    ld [$cd48], sp
    cp b
    dec h
    call $2b75
    ld c, $10
    call $1f04
    ret nz

    ld bc, $ff00
    jp $2358


    call $25b8
    ld e, $45
    ld a, [de]
    rst $00
    jp c, $e94c

    ld c, h
    inc c
    ld c, l
    inc hl
    ld c, [hl]
    ld b, h
    ld c, l
    ld a, $01
    ld [de], a
    ld [$ccab], a
    ld [$cc02], a
    ld a, $08
    ld [$cc76], a
    ret


    ld a, [$cc77]
    or a
    ret nz

    ld a, [$cc75]
    and $07
    cp $03
    ret nz

    ld hl, $d008
    ld [hl], $01
    ld a, $01
    ld [$cca4], a
    ld l, $0f
    ld a, [hl]
    dec a
    ld [hl], a
    cp $f8
    ret nz

    ld a, $02
    ld [de], a
    ret


    ld e, $70
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    ld c, a
    push de
    ld de, $d00b
    call $1e67
    pop de
    ld e, $49

jr_00a_4d1d:
    ld [de], a
    call Call_00a_4e99
    ld h, d
    ld l, $70
    ld a, [hli]
    cp b
    ret nz

    ld a, [hli]
    cp c
    ret nz

    ld l, $40
    res 1, [hl]
    ld l, $45
    ld [hl], $04
    ld e, $42
    ld a, [de]
    ld hl, $4d42
    rst AddAToHL
    ld a, [hl]
    ld e, $49
    ld [de], a
    xor a
    ld [$ccab], a
    ret


    ld [$1e01], sp
    ld b, d
    ld a, [de]
    or a
    jr nz, jr_00a_4d6b

    call Call_00a_4e99
    ld l, $0d
    ld a, [hli]
    cp $30
    ret c

    ld l, $0b
    ld a, [hl]
    sub $68
    ld l, $0f
    add [hl]
    ld [hl], a
    ld a, $68
    ld l, $0b
    ld [hl], a
    ld l, $1a
    res 6, [hl]
    ld e, $5a
    ld a, [de]
    res 6, a
    ld [de], a

jr_00a_4d6b:
    call $239b
    ret


    call $25b8
    call Call_00a_4e99
    ld l, $0b
    ld a, [hl]
    cp $58
    jr nc, jr_00a_4d7d

    inc [hl]

jr_00a_4d7d:
    ld l, $0d
    ld e, $75
    ld a, [de]
    cp [hl]
    jr c, jr_00a_4da5

    call Call_00a_4eb7
    ld a, [$cc46]
    and $03
    ret z

    ld bc, $ff50
    ld e, $42
    ld a, [de]
    or a
    jr z, jr_00a_4d9a

    ld bc, $ff30

jr_00a_4d9a:
    call $2358
    ld a, $a0
    call $0c74
    jp $25b8


jr_00a_4da5:
    call Call_00a_4eef
    ld e, $72
    ld a, [de]
    add $08
    cp b
    jr c, jr_00a_4dbb

    ld a, $08
    ld e, $49
    ld [de], a
    ld a, $04
    ld e, $44
    ld [de], a
    ret


jr_00a_4dbb:
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_00a_4ddd

    ld a, [$cd0d]
    ld b, a
    ld l, $0b
    ld a, [hl]
    sub b
    ld l, $0f
    add [hl]
    ld [hl], a
    ld l, $0b
    ld [hl], b
    call $3ac6
    ld a, $8c
    ld [hli], a
    ld [hl], $80
    ld l, $40
    ld a, $03
    ld [hli], a

jr_00a_4ddd:
    ld e, $44
    ld a, $06
    ld [de], a
    ld e, $46
    ld a, $3c
    ld [de], a
    ret


    call $25b8
    call $25b8
    ld e, $46
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    jp Jump_00a_4e23


    call $25b8
    call Call_00a_4e99
    ld e, $75
    ld a, [de]
    add $20
    ld l, $0d
    cp [hl]
    jr z, jr_00a_4e23

    ld a, [hl]
    and $0f
    ret nz

    call Call_00a_4eef
    add $08
    ld l, $0b
    ld [hl], a
    ld l, $0f
    ld a, $f8
    ld [hl], a
    ld l, $1a
    set 6, [hl]
    ld e, $5a
    ld a, [de]
    and $bf
    ld [de], a
    ret


Jump_00a_4e23:
jr_00a_4e23:
    xor a
    ld [$cca4], a
    ld [$cc02], a
    ld hl, $d009
    ld a, $ff
    ld [hl], a
    ld a, $05
    ld e, $44
    ld [de], a
    ld a, $08
    ld e, $73
    ld [de], a
    xor a
    inc e
    ld [de], a
    ld a, $00   ; xor a
    call $25cb
    jp $2b8a


    call $25b8
    ld e, $73
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_00a_4e59

    ld a, $08
    ld [de], a
    inc e
    ld a, [de]
    xor $01
    ld [de], a
    jr jr_00a_4e6b

jr_00a_4e59:
    and $01
    jr nz, jr_00a_4e6b

    ld e, $74
    ld a, [de]
    or a
    ld e, $4f
    ld a, [de]
    jr z, jr_00a_4e69

    inc a
    jr jr_00a_4e6a

jr_00a_4e69:
    dec a

jr_00a_4e6a:
    ld [de], a

jr_00a_4e6b:
    ld e, $70
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    ld c, a
    call $1e62
    ld e, $49
    ld [de], a
    call $1fdb
    ld h, d
    ld l, $70
    ld e, $4b
    ld a, [de]
    cp [hl]
    ret nz

    inc l
    ld e, $4d
    ld a, [de]
    cp [hl]
    ret nz

    ld l, $44
    ld [hl], $01
    ld l, $5a
    set 6, [hl]
    call Call_00a_4f21
    ld a, $01
    jp $25cb


Call_00a_4e99:
    ld hl, $d00b
    ld e, $4b
    ld a, [hli]
    ld [de], a
    inc l
    ld e, $4d
    ld a, [hl]
    ld [de], a
    call $1fdb
    ld hl, $d00b
    ld e, $4b
    ld a, [de]
    ld b, a
    ld [hli], a
    inc l
    ld e, $4d
    ld a, [de]
    ld c, a
    ld [hl], a
    ret


Call_00a_4eb7:
    ld l, $0e
    ld e, $4e
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld c, $20
    call $1f04
    ld hl, $d00e
    ld e, $4e
    ld a, [de]
    ld [hli], a
    inc e
    ld a, [de]
    ld [hl], a
    call Call_00a_4eef
    ld e, $72
    ld a, [de]
    cp b
    jr c, jr_00a_4ede

    sub b
    ld l, $0f
    add [hl]
    ld [hl], a
    ret


jr_00a_4ede:
    ld l, $0f
    ld a, [hl]
    cp $f8
    ret c

    ld a, $f8
    ld [hl], a
    xor a
    ld e, $54
    ld [de], a
    ld e, $55
    ld [de], a
    ret


Call_00a_4eef:
    ld l, $0b
    ld a, [hl]
    ld l, $0f
    add [hl]
    ld b, a
    ret


Jump_00a_4ef7:
    ld hl, $d00f
    ld a, [$cc4c]
    and $f0
    jr nz, jr_00a_4f12

    ld a, [hl]
    or a
    ret nz

    ld l, $0b
    inc [hl]
    ld a, $80
    ld [$cc77], a
    ld a, $82
    ld [$cd02], a
    ret


jr_00a_4f12:
    ld a, [$cd00]
    and $0e
    ret nz

    ld [hl], $e8
    ld l, $0b
    ld [hl], $28
    jp $3ad9


Call_00a_4f21:
    ld l, $42
    ld c, [hl]
    ld l, $50
    ld [hl], $0f
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld sp, $3a4f
    ld c, a
    ld a, $01
    ld [de], a
    call $15e9
    jp $1e1e


    call $25b8
    call $211e
    ld l, $76
    ld a, [hl]
    or a
    jp z, Jump_00a_4f4c

    xor a
    ld [hl], a
    call $25cb

Jump_00a_4f4c:
    call $1e42
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jp nz, $1e39

    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld h, b
    ld c, a
    ld a, e
    ld c, a
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $36
    call $24f5
    ld hl, $731d
    call $24fe
    call Call_00a_4f81
    ld a, $02
    call $25cb
    jr jr_00a_4f7b

jr_00a_4f7b:
    call $250c
    jp $2646


Call_00a_4f81:
    ld a, [$c6bb]
    call $0176
    ld h, d
    ld l, $78
    cp $05
    ld [hl], $00
    ret c

    inc [hl]
    ret


    ld e, $44
    ld a, [de]
    rst $00
    sbc c
    ld c, a
    ld a, [hl-]
    ld d, b
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $522f
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $42
    ld a, [de]
    rst $00
    cp l
    ld c, a
    ret


    ld c, a
    sbc $4f
    sub $4f
    call c, $dc4f
    ld c, a
    push af
    ld c, a
    jr @+$52

    call Call_00a_51a6
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    ret


    call $196b
    jr z, jr_00a_4fd4

    ld e, $4b
    ld a, [de]
    sub $08
    ld [de], a

jr_00a_4fd4:
    jr jr_00a_503a

    call $250c
    call $250c
    jr jr_00a_503a

    call $1956
    and $40
    jr z, jr_00a_4fe6

    ret


jr_00a_4fe6:
    call $3ea7
    ret nz

    ld [hl], $06
    ld l, $cb
    ld [hl], $78
    ld l, $cd
    ld [hl], $78
    ret


    call $1956
    bit 5, [hl]
    jp nz, $3ad9

    call $196b
    jr nz, jr_00a_500f

    ld a, $34
    ld [$ccbd], a
    ld a, $01
    ld [$ccbe], a
    jp $3ad9


jr_00a_500f:
    xor a
    ld [$ccbc], a
    inc a
    ld [$ccbb], a
    ret


    call $196b
    jp z, $3ad9

    call $1956
    bit 7, a
    jp nz, $3ad9

    bit 5, a
    jp z, $3ad9

    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $4d
    inc l
    ld [hl], $01
    jp $21fd


jr_00a_503a:
    ld e, $42
    ld a, [de]
    rst $00
    ld d, l
    ld d, b
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld d, b
    ld c, [hl]
    ld d, b
    inc a
    ld d, c
    sbc b
    ld d, c
    call $250c
    jp c, $3ad9

    ret


    ld e, $45
    ld a, [de]
    rst $00
    ld h, l
    ld d, b
    adc [hl]
    ld d, b
    xor l
    ld d, b
    or h
    ld d, b
    db $eb
    ld d, b
    add hl, hl
    ld d, c
    call Call_00a_51bd
    ret nc

    ld a, [hl]
    call $1702
    ld a, [hl]
    call Call_00a_51ed
    ld a, $81
    ld [$cca4], a
    ld [$cc02], a
    ld a, $4d
    call $0c74
    call $29f4
    xor a
    ld [$d008], a
    call $23a0
    ld hl, $733c
    call $24fe
    call $250c
    ret nc

    ld a, [$c6e1]
    cp $0f
    jr z, jr_00a_50a4

    xor a
    ld e, $45
    ld [de], a
    ld [$cc02], a
    ld [$cca4], a
    ret


jr_00a_50a4:
    call $23a0
    ld hl, $7341
    call $24fe
    call $250c
    ret nc

    jp $23a0


    ld hl, $5119
    ld b, $04

jr_00a_50b9:
    ld a, [hli]
    ldh [$8c], a
    ld a, [hli]
    ldh [$8f], a
    ld a, [hli]
    ldh [$8e], a
    ld a, [hli]
    push hl
    push bc
    call $3a7c
    pop bc
    pop hl
    dec b
    jr nz, jr_00a_50b9

    ldh a, [$ad]
    ld d, a
    call $23a0
    ld l, $46
    ld [hl], $1e
    ld a, $00   ; xor a
    call Call_00a_51ff
    ld a, $73
    call $0c74

Call_00a_50e1:
    ld a, $06
    call $24a7
    ld a, $70
    jp $0c74


    call $2387
    ret nz

    ld hl, $5119
    ld b, $04

jr_00a_50f4:
    ld a, [hli]
    ld c, a
    ld a, [hl]
    push hl
    push bc
    call $3a52
    pop bc
    pop hl
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_00a_50f4

    call Call_00a_50e1
    ld a, $04
    call Call_00a_51ff
    ld a, $73
    call $0c74
    call $23a0
    ld l, $46
    ld [hl], $3c
    ret


    inc d
    xor l
    and b
    inc bc
    dec d
    xor l
    and b
    ld bc, $ad24
    and c
    inc bc
    dec h
    xor l
    and c
    ld bc, $87cd
    inc hl
    ret nz

    xor a
    ld [$cc02], a
    ld [$cca4], a
    ld a, $4d
    call $0c74
    jp $3ad9


    ld e, $45
    ld a, [de]
    rst $00
    ld b, [hl]
    ld d, c
    ld h, d
    ld d, c
    add b
    ld d, c
    ld a, [$ccbc]
    or a
    ret z

    ld a, [$cc34]
    or a
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $1e
    ld a, $80
    ld [$cc02], a
    ld a, $81
    ld [$cca4], a
    ret


    call $2387
    ret nz

    ld bc, $0580
    call $24b1
    ret nz

    ld l, $4b
    ld a, [hl]
    sub $04
    ld [hl], a
    ld a, $85
    call $0c74
    call $23a0
    ld l, $46
    ld [hl], $10
    ret


    call $2387
    ret nz

    ld b, $e3
    call $24af
    ret nz

    ld l, $4b
    ld a, [hl]
    sub $04
    ld [hl], a
    call $1956
    set 5, [hl]
    jp $3ad9


    ld a, $4d
    call $1717
    ret nc

    call $1956
    set 7, [hl]
    jp $3ad9


Call_00a_51a6:
    ld c, $00

jr_00a_51a8:
    ld hl, $c6e1
    ld a, c
    call $0205
    jr z, jr_00a_51b6

    push bc
    call Call_00a_51f6
    pop bc

jr_00a_51b6:
    inc c
    ld a, c
    cp $04
    jr c, jr_00a_51a8

    ret


Call_00a_51bd:
    call $1cde
    ret nc

    ld hl, $d008
    ld a, [hli]
    or a
    ret nz

    ld l, $0b
    ld a, $36
    sub [hl]
    cp $15
    ret nc

    ld l, $0d
    ld c, [hl]
    ld hl, $51e3

jr_00a_51d5:
    inc hl
    ld a, [hli]
    or a
    ret z

    add $01
    sub c
    cp $03
    jr nc, jr_00a_51d5

    ld a, [hl]
    jp $1717


    inc h
    ld c, h
    inc [hl]
    ld c, l
    ld l, h
    ld c, [hl]
    ld a, h
    ld c, a
    nop

Call_00a_51ed:
    sub $4c
    ld c, a
    ld hl, $c6e1
    call $020e

Call_00a_51f6:
    call $3ac6
    ret nz

    ld [hl], $92
    inc l
    ld [hl], c
    ret


Call_00a_51ff:
    ld bc, $521f
    call $007e
    ld a, $04

jr_00a_5207:
    ldh [$8b], a
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    inc bc
    ldh a, [$8b]
    dec a
    jr nz, jr_00a_5207

    ret


    jr @+$4a

    jr @+$5a

    jr z, @+$4a

    jr z, jr_00a_527f

    jr @+$42

    jr @+$62

    jr z, @+$42

    jr z, jr_00a_528f

    inc a
    ld [hl], e
    ld b, l
    ld [hl], e
    ld e, e
    ld [hl], e
    ld a, [hl]
    ld [hl], e
    add d
    ld [hl], e
    adc d
    ld [hl], e
    xor d
    ld [hl], e
    xor d
    ld [hl], e
    call $23b9
    ret nz

    inc a
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $525b
    rst AddAToHL
    ld a, [hl]
    ld h, d
    ld l, $4d
    ld [hl], a
    ld l, $4b
    ld [hl], $2c
    call $15e9
    jp $1e30


    inc h
    inc [hl]
    ld l, h
    ld a, h
    ld e, $42
    ld a, [de]
    rst $00
    ld h, a
    ld d, d
    and e
    ld d, d
    call $23b9
    ret nz

    call Call_00a_5298
    call $1e15
    ld a, [$c6df]
    ld b, $04
    cp $06
    jr z, jr_00a_5286

    cp $07
    jp nz, $3ad9

jr_00a_527f:
    ld a, $01
    call $25cb
    ld b, $08

jr_00a_5286:
    call $3ac6
    ret nz

    ld [hl], $84
    inc l
    ld [hl], $04

jr_00a_528f:
    call $21fd
    ld l, $4b
    ld a, [hl]
    add b
    ld [hl], a
    ret


Call_00a_5298:
    ld a, $ab
    call $04e7
    call $15e9
    jp $239b


    ld e, $44
    ld a, [de]
    rst $00
    xor e
    ld d, d
    jp z, $cd52

    sbc b
    ld d, d
    ld l, $4b
    ld [hl], $65
    ld l, $4d
    ld [hl], $50
    ld l, $4f
    ld [hl], $8b
    ld a, $02
    call $25cb
    ld a, [$cc00]
    cpl
    inc a
    ld e, $78
    ld [de], a
    call Call_00a_5338
    ld h, d
    ld l, $4f
    ld a, [hl-]
    cp $ed
    jp nc, $3ad9

    ld bc, $0080
    ld a, c
    add [hl]
    ld [hli], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld a, [$cc00]
    ld l, $78
    add [hl]
    push af
    and $0f
    call z, Call_00a_52f3
    pop af
    and $3f
    ld a, $83
    call z, $0c74
    jp $229b


Call_00a_52f3:
    call $3ac6
    ret nz

    ld [hl], $84
    inc l
    ld [hl], $03
    ld e, $4b
    ld l, $4b
    ld a, [de]
    ld [hli], a
    inc e
    inc e
    inc l
    ld a, [de]
    ld [hli], a
    ld e, $4f
    ld l, $4b
    call $1fd3
    call $041a
    and $07
    add a
    push de
    ld de, $5328
    call $0068
    ld a, [de]
    ld l, $4b
    add [hl]
    ld [hl], a
    inc de
    ld a, [de]
    ld l, $4d
    add [hl]
    ld [hl], a
    pop de
    ret


    db $10
    ld [bc], a
    db $10
    cp $08
    dec b
    ld [$0cfb], sp
    ld [$f80c], sp
    ld b, $0b
    ld b, $f5

Call_00a_5338:
    ld bc, $8408
    call $24b1
    ret nz

    ld l, $56
    ld a, $40
    ld [hli], a
    ld [hl], d
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld d, h
    ld d, e
    adc b
    ld d, e
    sub e
    ld d, e
    call z, $0e53
    ld d, h
    ld a, $01
    ld [$cc02], a
    ld hl, $d02d
    ld a, [hl]
    or a
    ret nz

    ld a, $01
    ld [de], a
    call $222f
    ld bc, $3850
    call $1e62
    and $1c
    ld e, $49
    ld [de], a
    ld bc, $ff00
    call $2358
    ld l, $50
    ld [hl], $28
    call $15e9
    ld a, [$d01a]
    ld e, $5a
    ld [de], a
    ld a, $57
    jp $0c74


    ld c, $20
    call $1f04
    jp nz, $1fdb

    jp $239b


    ld hl, $d10b
    ld a, [hli]
    ld b, a
    inc l
    ld c, [hl]
    ld a, [$c641]
    and $20
    jr z, jr_00a_53ad

    ld e, $4b
    ld a, [de]
    cp b
    jr nz, jr_00a_53ad

    ld e, $4d
    ld a, [de]
    cp c
    jr z, jr_00a_53b6

jr_00a_53ad:
    call $1e62
    xor $10
    ld [$d109], a
    ret


jr_00a_53b6:
    ld a, $ff
    ld [$d109], a
    call $239b
    call $1e39
    ld a, $5e
    call $0c74
    ld bc, $070a
    jp $184b


    ld a, $04
    ld [$cc6a], a
    ld a, $01
    ld [$cc6b], a
    ld hl, $d00b
    ld bc, $f200
    call $2232
    call $239b
    ld l, $46
    ld [hl], $40
    ld l, $5b
    ld a, [hl]
    and $f8
    ld [hli], a
    ld [hli], a
    ld a, [hl]
    add $02
    ld [hl], a
    ld a, $03
    call $25cb
    ld a, [$d01a]
    ld e, $5a
    ld [de], a
    ld bc, $005c
    call $184b
    ld a, $41
    ld c, $02
    call $16eb
    ld a, $4c
    jp $0c74


    call $2387
    ret nz

    xor a
    ld [$cba0], a
    ld [$cca4], a
    ld a, $02
    ld [$d105], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    add hl, hl
    ld d, h
    cp e
    ld d, h
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    rst $00
    inc a
    ld d, h
    ld c, c
    ld d, h
    ld c, c
    ld d, h
    sbc b
    ld d, h
    sub d
    ld d, h
    sbc [hl]
    ld d, h
    ld a, $16
    call $30c7
    jp z, $3ad9

    ld a, $2d
    call $30cd
    call $15e9
    ld e, $5d
    ld a, $80
    ld [de], a
    ld e, $42
    ld a, [de]
    or a
    jp nz, $1e15

    call $1956
    ld b, a
    xor a
    sla b
    adc $00
    sla b
    adc $00
    ld hl, $55bf
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    call $3ac6
    jr nz, jr_00a_547d

    ld [hl], $96
    inc l
    ld [hl], $01
    ld e, $57
    ld a, h
    ld [de], a

jr_00a_547d:
    call Call_00a_5517
    ld hl, $7ea0
    call $3048
    call $1e30
    xor a
    ld [$cfd0], a
    ld [$cfd1], a
    jr jr_00a_54bb

    ld hl, $73cd
    call $24fe
    call $15e9
    jp $2686


    ld hl, $73d8
    call $24fe
    ld a, $01
    ld [$cc17], a
    ld a, $95
    ld [$cc1d], a
    ld a, $05
    ld [$cc1e], a
    call $15e9
    call $1e1e
    jr jr_00a_54bb

jr_00a_54bb:
    ld e, $42
    ld a, [de]
    rst $00
    bit 2, h
    ld l, l
    ld d, l
    ld [hl], b
    ld d, l
    and c
    ld d, l
    adc b
    ld d, l
    and h
    ld d, l
    ld e, $45
    ld a, [de]
    rst $00
    db $d3
    ld d, h
    add hl, hl
    ld d, l
    ld hl, $cfd0
    ld a, [hl]
    cp $02
    jr nz, jr_00a_54ec

    ld h, d
    ld l, $45
    ld [hl], $01
    ld l, $76
    ld [hl], $00
    ld a, $39
    call $0c74
    jp $2686


jr_00a_54ec:
    inc a
    jp z, $3ad9

    call $250c
    call $25b8
    call $261d
    ld e, $76
    ld a, [de]
    or a
    jr nz, jr_00a_550e

    ld e, $61
    ld a, [de]
    inc a
    ret nz

    ld hl, $cfc0
    ld [hl], $01
    ld h, d
    ld l, $76
    inc [hl]
    ret


jr_00a_550e:
    ld e, $61
    ld a, [de]
    inc a
    ret z

    ld e, $76
    xor a
    ld [de], a

Call_00a_5517:
    call $3ac6
    ret nz

    ld [hl], $97
    ld bc, $0c02
    call $2215
    ld e, $57
    ld l, e
    ld a, [de]
    ld [hl], a
    ret


    ld e, $76
    ld a, [de]
    or a
    jr nz, jr_00a_5557

    ld a, $01
    ld [de], a
    ld e, $4b
    ld a, [de]
    sub $20
    ld b, a
    ld e, $4d
    ld a, [de]
    ld c, a
    ld a, $50
    call Call_00a_5547
    ld hl, $73c9
    jp $24fe


Call_00a_5547:
    ldh [$8b], a
    call $3ac6
    ret nz

    ld [hl], $9f
    ld l, $46
    ldh a, [$8b]
    ld [hl], a
    jp $2215


jr_00a_5557:
    call $250c
    jp c, $3ad9

    call $229b
    ld e, $77
    ld a, [de]
    or a
    ret nz

    call $25b8
    call $25b8
    jr jr_00a_557c

    jp Jump_00a_5730


    call $25b8
    ld hl, $cfd0
    ld a, [hl]
    inc a
    ret nz

    jp $3ad9


Call_00a_557c:
jr_00a_557c:
    ld h, d
    ld l, $61
    ld a, [hl]
    cp $70
    ret nz

    ld [hl], $00
    jp $0c74


    call $250c
    jp c, $3ad9

    ld hl, $cfc0
    bit 0, [hl]
    jr z, jr_00a_55a1

    ld a, [$cc00]
    and $0f
    jr nz, jr_00a_55a1

    ld a, $70
    call $0c74

jr_00a_55a1:
    jp $2686


    call $250c
    jp c, $3ad9

    ld e, $47
    ld a, [de]
    or a
    jr z, jr_00a_55bc

    ld a, [$cc00]
    and $0f
    jr nz, jr_00a_55bc

    ld a, $70
    call $0c74

jr_00a_55bc:
    jp $25b8


    xor e
    ld [hl], e
    or l
    ld [hl], e
    cp a
    ld [hl], e
    ld e, $44
    ld a, [de]
    rst $00
    call $3855
    ld d, [hl]
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    rst $00
    push hl
    ld d, l
    db $ed
    ld d, l
    daa
    ld e, $f5
    ld d, l
    db $fd
    ld d, l
    ld de, $1156
    ld d, [hl]
    ld hl, $57d0

jr_00a_55e8:
    call Call_00a_57ba
    jr jr_00a_5638

    call $1e1e
    ld hl, $57d6
    jr jr_00a_55e8

    ld a, $02
    call $25cb
    jp $1e15


    ld hl, $7421
    call $24fe
    ld e, $43
    ld a, [de]
    or a
    jr z, jr_00a_560a

    inc a

jr_00a_560a:
    inc a
    call $25cb
    jp $2686


    ld e, $43
    ld a, [de]
    ld hl, $57dc
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $43
    ld a, [de]
    ld hl, $5630
    rst JumpTable
    ld a, [hli]
    ld e, $5c
    ld [de], a
    ld a, [hl]
    call $25cb
    jp $2686


    ld [bc], a
    ld [$0a02], sp
    ld bc, $0102
    ld [bc], a

jr_00a_5638:
    ld e, $42
    ld a, [de]
    rst $00
    ld c, d
    ld d, [hl]
    ld c, d
    ld d, [hl]
    jr nc, jr_00a_5699

    ld d, e
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, a
    ld d, a
    ld e, $45
    ld a, [de]
    rst $00
    ld e, [hl]
    ld d, [hl]
    sub b
    ld d, [hl]
    xor b
    ld d, [hl]
    cp e
    ld d, [hl]
    add $56
    ldh a, [rRP]
    inc b
    ld d, a
    rla
    ld d, a
    ld hl, $cfd0
    ld a, [hl]
    cp $02
    jp z, Jump_00a_5768

    inc a
    jp z, $3ad9

    call $250c
    ld e, $42
    ld a, [de]
    or a
    jp z, $2646

    ld e, $47
    ld a, [de]
    or a
    call nz, $25b8
    ld e, $71
    ld a, [de]
    or a
    jr z, jr_00a_568a

    xor a
    ld [de], a
    ld bc, $3801
    call $184b

jr_00a_568a:
    call $25b8
    jp $261d


    call $25b8
    call $25b8
    call $2387

jr_00a_5699:
    jp nz, $1fc6

    ld a, $08
    call $2a16
    ld l, $02
    ld [hl], $09
    jp $23a0


    ld hl, $cfd1
    ld a, [hl]
    or a
    jp z, $2646

    call $23a0
    ld l, $42
    ld a, [hl]
    add $0b
    jp $25cb


    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    ret nz

    jp $23a0


    ld e, $42
    ld a, [de]
    inc a
    ld b, a
    ld hl, $cfd1
    ld a, [hl]
    cp b
    jp nz, $2646

    call $23a0
    ld l, $50
    ld [hl], $28
    ld l, $4d
    ld a, [hl]
    cp $50
    jr z, jr_00a_570a

    ld a, $18
    jr nc, jr_00a_56e7

    ld a, $08

jr_00a_56e7:
    ld e, $49
    ld [de], a
    call $26a3
    jp $25cb


    call $1fdb
    cp $50
    jr nz, jr_00a_56fe

    call $23a0
    ld l, $46
    ld [hl], $05

jr_00a_56fe:
    call $25b8
    jp $25b8


    call $2387
    jp nz, $25b8

jr_00a_570a:
    ld l, $45
    ld [hl], $07
    ld l, $49
    ld [hl], $10
    ld a, $02
    jp $25cb


    call $25b8
    call $25b8
    call $1fdb
    call $2142
    ret c

    ld hl, $cfd1
    ld e, $42
    ld a, [de]
    add $02
    ld [hl], a
    jp $3ad9


Jump_00a_5730:
    call $25b8
    call $23be
    jr nz, jr_00a_5743

    call $2387
    ret nz

    ld l, $50
    ld [hl], $50
    jp $23a0


jr_00a_5743:
    call $25b8
    call Call_00a_557c
    call $1fdb
    call $2142
    ret c

    jp $3ad9


    call $25b8
    ld hl, $cfd0
    ld a, [hl]
    inc a
    ret nz

    jp $3ad9


    call $250c
    jp c, $3ad9

    jp $2686


Jump_00a_5768:
    call $23a0
    ld l, $46
    ld [hl], $20
    ld l, $4b
    ld a, [hl]
    ld b, a
    ld hl, $d00b
    ld a, [hl]
    sub b
    call Call_00a_57ad
    ld h, d
    ld l, $50
    ld [hl], c
    inc l
    ld [hl], b
    ld l, $4d
    ld a, [hl]
    ld b, a
    ld hl, $d00d
    ld a, [hl]
    ld c, a
    ld e, $42
    ld a, [de]
    or a
    ld a, $0c
    jr nz, jr_00a_5794

    ld a, $f4

jr_00a_5794:
    add c
    sub b
    call Call_00a_57ad
    ld h, d
    ld l, $52
    ld [hl], c
    inc l
    ld [hl], b
    call $1e5a
    ld e, $49
    ld [de], a
    call $26a3
    dec e
    ld [de], a
    jp $25cb


Call_00a_57ad:
    ld b, a
    ld c, $00
    ld a, $05

jr_00a_57b2:
    sra b
    rr c
    dec a
    jr nz, jr_00a_57b2

    ret


Call_00a_57ba:
    push hl
    call $1956
    ld b, a
    xor a
    sla b
    adc $00
    sla b
    adc $00
    pop hl
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    jp $24fe


    di
    ld [hl], e
    di
    ld [hl], e
    di
    ld [hl], e
    or $73
    or $73
    or $73
    ld b, e
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld l, c
    ld [hl], h
    ld l, c
    ld [hl], h
    ld e, $44
    ld a, [de]
    rst $00
    db $ec
    ld d, a
    push af
    ld d, a
    ld a, $01
    ld [de], a
    call $15e9
    jp $1e30


    ld hl, $cfd0
    ld a, [hl]
    inc a
    jp z, $3ad9

    ld e, $45
    ld a, [de]
    rst $00
    rlca
    ld e, b
    dec hl
    ld e, b
    ld b, l
    ld e, b
    ld hl, $cfd0
    ld a, [hl]
    cp $02
    ret z

    call $25b8
    ld hl, $cfc0
    bit 1, [hl]
    ret z

    call $23a0
    call $1e1e

jr_00a_581d:
    push de
    ld h, d
    ld l, $57
    ld a, [hl]
    ld d, a
    ld bc, $0301
    call $2215
    pop de
    ret


    ld hl, $cfc0
    bit 3, [hl]
    jr z, jr_00a_5843

    call $23a0
    ld l, $49
    ld [hl], $10
    ld l, $50
    ld [hl], $14
    ld bc, $fe80
    call $2358

jr_00a_5843:
    jr jr_00a_581d

    ld c, $20
    call $1f04
    jp nz, $1fdb

    jp $3ad9


    call $23b9
    jr nz, jr_00a_5875

    inc a
    ld [de], a
    call $15e9
    ld a, $1f
    call $24f5
    ld e, $42
    ld a, [de]
    ld hl, $587b
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    ld h, d
    ld l, $4b
    ld [hl], $38
    ld l, $4d
    ld [hl], $80

jr_00a_5875:
    call $250c
    jp $2646


    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld [hl], h
    adc b
    ld [hl], h
    adc b
    ld [hl], h
    adc b
    ld [hl], h
    ld e, $44
    ld a, [de]
    rst $00
    sub e
    ld e, b
    ld bc, $3e59
    ld d, $cd
    rst $00
    jr nc, @-$34

    reti


    ld a, [hl-]
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    cp $02
    jr z, jr_00a_58ab

    call $15e9
    jp $1e27


jr_00a_58ab:
    ld a, [$cc36]
    or a
    jp z, $3ad9

    xor a
    ld [$cc36], a
    ld a, $12
    call $30d3
    call $1956
    rlca
    jr nc, jr_00a_58df

    ld a, $12
    call $30cd
    xor a
    ld hl, $d100
    ld [hl], a
    ld l, $1a
    ld [hl], a
    push de
    ld de, $59e4
    call Call_00a_59ba
    pop de
    ld e, $42
    ld a, $03
    ld [de], a
    ld a, $b9
    jr jr_00a_58f0

jr_00a_58df:
    call $1956
    call Call_00a_5b65
    ld c, [hl]
    ld a, $03
    ld b, $aa
    call $1963
    ld [hl], c
    ld a, $b4

jr_00a_58f0:
    ld h, d
    ld l, $70
    ld [hl], a
    ld a, $01
    ld [$cca4], a
    ld [$cc02], a
    ld l, $46
    ld [hl], $5a
    ret


    ld e, $42
    ld a, [de]
    rst $00
    dec c
    ld e, c
    db $76
    ld e, c
    add d
    ld e, c
    ldh a, [$59]
    call $25b8
    ld e, $61
    ld a, [de]
    or a
    ret z

    inc a
    jp z, $3ad9

    xor a
    ld [de], a
    ld e, $43
    ld a, [de]
    or a
    ret z

    dec a
    ld hl, $5a5e
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    push de
    ld b, [hl]
    inc hl

jr_00a_592b:
    ld c, [hl]
    inc hl
    ld a, [hli]
    push bc
    push hl
    call $3a52
    pop hl
    pop bc
    dec b
    jr nz, jr_00a_592b

    pop de
    call $042f
    and $03
    add $02
    ld c, a
    ld b, $04

jr_00a_5943:
    call $3ac6
    ret nz

    ld [hl], $9a
    inc l
    ld [hl], $01
    ld a, b
    add a
    add a
    add a
    add c
    and $1f
    ld l, $49
    ld [hl], a
    call $041a
    and $03
    push hl
    ld hl, $5972
    rst AddAToHL
    ld a, [hl]
    pop hl
    ld l, $50
    ld [hl], a
    ld bc, $fe80
    call $2358
    call $21fd
    dec b
    jr nz, jr_00a_5943

    ret


    inc a
    ld b, [hl]
    ld d, b
    ld e, d
    call $1fdb
    ld c, $28
    call $1f04
    jp z, $3ad9

    ret


    ld e, $45
    ld a, [de]
    rst $00
    adc h
    ld e, c
    sub l
    ld e, c
    and [hl]
    ld e, c
    call $268f
    ld a, $01
    ld e, $45
    ld [de], a
    ret


    ld h, d
    ld l, $70
    dec [hl]
    jr nz, jr_00a_59a6

    ld l, $45
    inc [hl]
    push de
    ld de, $59d8
    call Call_00a_59ba
    pop de

jr_00a_59a6:
    xor a
    call Call_00a_5a82
    ret nz

    ld hl, $cc69
    res 1, [hl]
    xor a
    ld [$cca4], a
    ld [$cc02], a
    jp $3ad9


Call_00a_59ba:
    ld b, $03

jr_00a_59bc:
    call $3ac6
    jr nz, jr_00a_59d7

    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hl], a
    ld l, $4b
    ld a, [de]
    inc de
    ld [hli], a
    inc l
    ld a, [de]
    inc de
    ld [hl], a
    ld l, $46
    ld [hl], $0a
    dec b
    jr nz, jr_00a_59bc

jr_00a_59d7:
    ret


    sub l
    ld bc, $7840
    sub [hl]
    ld [bc], a
    ld c, b
    ld l, b
    sub [hl]
    ld [bc], a
    ld c, b
    adc b
    sub l
    ld [bc], a
    ld l, b
    ld a, b
    sub [hl]
    inc bc
    ld h, b
    ld e, b
    sub [hl]
    inc bc
    ld b, b
    ld e, b
    ld e, $45
    ld a, [de]
    rst $00
    db $fc
    ld e, c
    dec b
    ld e, d
    dec d
    ld e, d
    ld c, [hl]
    ld e, d
    call $268f
    ld a, $01
    ld e, $45
    ld [de], a
    ret


    ld h, d
    ld l, $70
    dec [hl]
    jr nz, jr_00a_5a11

    ld l, $45
    inc [hl]
    call $3144

jr_00a_5a11:
    xor a
    jp Jump_00a_5a82


    ld a, [$c4ab]
    or a
    ret nz

    ldh [$a7], a
    dec a
    ldh [$a5], a
    ld [$cfd0], a
    call $23a0
    ld l, $46
    ld [hl], $1e
    ld hl, $d00b
    ld a, $40
    ld [hli], a
    inc l
    ld [hl], $50
    ld a, $80
    ld [$d01a], a
    ld a, $02
    ld [$d008], a
    call $29f4
    push de
    call $1a66
    pop de
    ld c, $02
    ld hl, $5d0d
    ld e, $01
    jp $008a


    call $2387
    ret nz

    ld a, $03
    ld [$cc6a], a
    xor a
    ld [$c6a2], a
    jp $3ad9


    ld l, d
    ld e, d
    ld l, l
    ld e, d
    ld [hl], b
    ld e, d
    ld [hl], e
    ld e, d
    ld a, b
    ld e, d
    ld a, l
    ld e, d
    ld bc, $fd36
    ld bc, $fc48
    ld bc, $fd56
    ld [bc], a
    ld d, a
    ei
    ld e, b
    db $fd
    ld [bc], a

jr_00a_5a79:
    scf
    db $fd
    jr c, jr_00a_5a79

    ld [bc], a
    ld b, [hl]
    ei
    ld b, a
    db $fd

Call_00a_5a82:
Jump_00a_5a82:
    ld h, d
    ld e, $46
    ld l, e
    dec [hl]
    ret nz

    ld hl, $5ac4
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    inc e
    ld a, [de]
    add a
    rst JumpTable
    ld e, $46
    ld a, [hli]
    ld [de], a
    inc a
    ret z

    inc e
    ld a, [de]
    inc a
    ld [de], a
    push de
    ld d, h
    ld e, l
    call $3ac6
    jr nz, jr_00a_5ac0

    ld [hl], $9a
    inc l
    ld [hl], $00
    inc l
    ld a, [de]
    inc de
    ld [hl], a
    ld l, $4b
    ld a, [de]
    ld [hli], a
    inc de
    inc l
    ld a, [de]
    ld [hl], a
    ld a, $6f
    call $0c74
    ld a, $08
    call $24a7

jr_00a_5ac0:
    pop de
    or $01
    ret


    ret z

    ld e, d
    pop hl
    ld e, d
    inc d
    ld bc, $683a
    inc d
    ld [bc], a
    ld b, [hl]
    adc d
    db $10
    inc bc
    ld d, [hl]
    ld l, d
    db $10
    inc b
    ld e, b
    add [hl]
    inc c
    dec b
    ld [hl-], a
    ld a, [hl]
    inc c
    ld b, $48
    ld [hl], e
    rst $38
    ld a, [bc]
    nop
    ld e, b
    add b
    ld a, [bc]
    nop
    jr jr_00a_5b21

    ld a, [bc]
    nop
    ld c, b
    jr nc, @+$0c

    nop
    jr z, jr_00a_5b59

    ld a, [bc]
    nop
    ld l, b
    ld h, b
    ld a, [bc]
    nop
    jr c, @+$42

    ld a, [bc]
    nop
    ld e, b
    add b
    ld a, [bc]
    nop
    jr jr_00a_5b21

    ld a, [bc]
    nop
    ld c, b
    jr nc, @+$0c

    nop
    jr z, @+$6a

    ld a, [bc]
    nop
    ld l, b
    ld h, b
    ld a, [bc]
    nop
    jr c, jr_00a_5b51

    rst $38
    ld e, $44
    ld a, [de]
    rst $00
    ld a, [de]
    ld e, e
    inc h
    ld e, e
    ld a, $01
    ld [de], a
    xor a
    ld [$cfd0], a

jr_00a_5b21:
    ld [$cfd1], a
    ld a, [$cfd0]
    cp $02
    jr nz, jr_00a_5b49

    ld hl, $cfd1
    ld a, [hl]
    cp $03
    ret nz

    ld [$cc02], a
    ld hl, $cc63
    ld a, $80
    ld [hli], a
    ld a, $6f
    ld [hli], a
    ld a, $0f
    ld [hli], a
    ld a, $55
    ld [hli], a
    ld [hl], $03
    jp $3ad9


jr_00a_5b49:
    ld e, $45
    ld a, [de]
    rst $00
    ld d, l
    ld e, e
    ld l, a
    ld e, e

jr_00a_5b51:
    sbc d
    ld e, e
    ret z

    ld e, e
    ld a, [$cfd0]
    or a

jr_00a_5b59:
    ret z

    xor a
    ld [$cbb3], a
    dec a
    ld [$cbba], a
    jp $23a0


Call_00a_5b65:
    bit 6, a
    set 6, [hl]
    ret z

    res 6, [hl]
    set 7, [hl]
    ret


    ld hl, $cbb3
    ld b, $02
    call $2cba
    ret z

    ld hl, $cfd0
    ld [hl], $ff
    push de
    call $1a66
    call $3566
    pop de
    xor a
    ld [$d01a], a
    call $3110
    ld a, $ff
    ldh [$a4], a
    ldh [$a6], a
    call $23a0
    ld l, $46
    ld [hl], $1e
    ret


    ld a, $01
    call Call_00a_5a82
    ret nz

    ld a, $40
    ld [$d00b], a
    ld a, $50
    ld [$d00d], a
    ld a, $80
    ld [$d01a], a
    ld a, $02
    ld [$d008], a
    call $29f4
    call $23a0
    ld l, $46
    ld [hl], $1e
    ld c, $02
    ld hl, $5d0d
    ld e, $01
    jp $008a


    call $2387
    ret nz

    ld a, $12
    call $30d3
    call $1956
    call Call_00a_5b65
    ld c, [hl]
    ld a, $00   ; xor a
    ld b, $6f
    call $1963
    ld [hl], c
    ld a, $03
    ld [$cc6a], a
    xor a
    ld [$c6a2], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    nop
    ld e, h
    dec d
    ld e, h
    ld a, [hl-]
    ld e, h
    adc h
    ld e, h
    or [hl]
    ld e, h
    ret nz

    ld e, h
    push de
    ld e, h
    or [hl]
    ld e, h
    ld a, $01
    ld [de], a
    ld a, [$cc4e]
    or a
    jp nz, $3ad9

    ld a, $06
    call $248d
    call $15e9
    call $1e30
    ld a, [$ccc3]
    or a
    jr z, jr_00a_5c1f

    ld a, $05
    jr jr_00a_5c32

jr_00a_5c1f:
    ld a, [$cc88]
    or a
    ret nz

    ld a, [$cc48]
    rrca
    ret c

    call $1c07
    ret nc

    ld a, $02
    ld [$ccc3], a

jr_00a_5c32:
    ld e, $44
    ld [de], a
    ld a, $01
    jp $25cb


    call $25b8
    ld e, $61
    ld a, [de]
    or a
    ret z

    ld a, [$cc48]
    cp $d0
    jp nz, $5d18

    call $1cde
    jp nc, $5d18

    call $1c07
    jp nc, $5d18

    ld e, $44
    ld a, $03
    ld [de], a
    call $2b57
    call $2b8a
    call $2af0
    ld a, $83
    ld [$cca4], a
    ld [$cc88], a
    call $29f4
    call $26ac
    xor a
    ld e, $61
    call Call_00a_5cf2
    ld e, $4d
    ld a, [de]
    ld [$d00d], a
    xor a
    ld [$d00f], a
    ld a, $52
    call $0c74
    ld a, $02
    jp $25cb


    ld a, $10
    ld [$cc6b], a
    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    jr z, jr_00a_5ca0

    cp $02
    call nc, Call_00a_5cf2
    ret


jr_00a_5ca0:
    ld a, $06
    call Call_00a_5cf2
    xor a
    ld [$cca4], a
    ld e, $44
    ld a, $04
    ld [de], a
    ld a, $06
    ld [$cc6a], a
    jp $1e30


    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    ret nz

    jr @+$5a

    call $25b8
    ld e, $61
    ld a, [de]
    or a
    ret z

    ld a, $52
    call $0c74
    call $239b
    ld a, $02
    jp $25cb


    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    jr nz, jr_00a_5ce8

    ld [de], a
    ld [$ccc3], a
    call $1e30
    jp $239b


jr_00a_5ce8:
    dec a
    ld [$ccc3], a
    cp $02
    ret c

    jp $1e27


Call_00a_5cf2:
    ld hl, $5d08
    rst JumpTable
    xor a
    ld [de], a
    ld e, $4b
    ld a, [de]
    add [hl]
    ld [$d00b], a
    inc hl
    ld e, $5a
    ld a, [de]
    and $f0
    or [hl]
    ld [de], a
    ret


    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld hl, sp+$03
    ld sp, hl
    ld bc, $01fa
    rst $38
    ld bc, $01f0
    nop
    ld bc, $441e
    ld a, $01
    ld [de], a
    dec a
    ld [$ccc3], a
    call $26ac
    res 7, [hl]
    call $1e30
    ld a, $00   ; xor a
    jp $25cb


    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], $5d
    ld b, a
    ld e, [hl]
    ld a, $01
    ld [de], a
    ld a, $28
    call $30c7
    jp nz, $3ad9

    call $15e9
    call $1e27
    ld e, $42
    ld a, [de]
    rst $00
    ld d, a
    ld e, l
    add l
    ld e, l
    cp e
    ld e, l
    call $df5d
    ld e, l
    inc sp
    ld e, [hl]
    ld a, $40
    call $1717
    jp c, $3ad9

    call $1956
    and $40
    jr nz, jr_00a_5d73

    ld a, $1f
    call $0c74
    ld a, [$cc62]
    ld [$cc51], a
    jr jr_00a_5d80

jr_00a_5d73:
    ld h, d
    ld l, $4b
    ld [hl], $28
    inc l
    inc l
    ld [hl], $18
    ld l, $42
    ld [hl], $01

jr_00a_5d80:
    ld hl, $74a9
    jr jr_00a_5ddc

    call Call_00a_7a68
    jp nz, $3ad9

    call Call_00a_7a7b
    jp nz, $3ad9

    ld a, $22
    call $30c7
    jr z, jr_00a_5da0

    ld a, $23
    call $30c7
    jp z, $3ad9

jr_00a_5da0:
    call $196b
    jr z, jr_00a_5db1

    ld a, $1f
    call $30c7
    jp z, Jump_00a_5db1

    ld a, $0c
    jr jr_00a_5dd5

Jump_00a_5db1:
jr_00a_5db1:
    ld a, $40
    call $1717
    call $01ea
    jr jr_00a_5dd5

    call Call_00a_7a68
    jp z, $3ad9

    ld a, $03
    ld e, $7b
    ld [de], a
    call $25cb
    ld a, $08
    jr jr_00a_5dd5

    call Call_00a_7a7b
    jp z, $3ad9

    ld a, $09

jr_00a_5dd5:
    ld hl, $5ec8
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a

jr_00a_5ddc:
    jp $24fe


    call $196b
    jp z, $3ad9

    ld a, $40
    call $1717
    jp nc, $3ad9

    and $02
    jp z, $3ad9

    ld a, $22
    call $30c7
    jp nz, $3ad9

    ld bc, $ff00
    call $2358
    ld hl, $5ec3
    ld a, $0a
    push de
    call $2964
    pop de
    ld hl, $d00b
    ld [hl], $76
    inc l
    inc l
    ld [hl], $56
    call $3ac6
    jr nz, jr_00a_5e26

    ld [hl], $2a
    inc l
    ld [hl], $0a
    ld l, $56
    ld [hl], $40
    inc l
    ld [hl], d
    call $21fd

jr_00a_5e26:
    call $1e39
    call $26ac
    ld a, $0a
    ld [$cc02], a
    jr jr_00a_5dd5

    ld a, $22
    call $30c7
    jp z, $3ad9

    ld a, $23
    call $30c7
    jp nz, $3ad9

    ld a, $0b
    jr jr_00a_5dd5

    call $250c
    ld e, $42
    ld a, [de]
    rst $00
    ld e, d
    ld e, [hl]
    adc e
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    adc [hl]
    ld e, [hl]
    sbc c
    ld e, [hl]
    adc e
    ld e, [hl]
    call $23be
    jr nz, jr_00a_5e76

    inc a
    ld [de], a
    ld a, $08
    call $2a16
    ld l, $02
    ld [hl], $02
    ld l, $0b
    ld [hl], $48
    ld l, $0d
    ld [hl], $58
    ld l, $08
    ld [hl], $00

jr_00a_5e76:
    call $1956
    and $40
    jr z, jr_00a_5e82

    ld e, $42
    ld a, $01
    ld [de], a

jr_00a_5e82:
    call $25b8
    call $261d
    jp $229b


    jp $2646


    ld a, $26
    call $30c7
    jp nz, $2646

    jp $2686


    call $23be
    jr nz, jr_00a_5eb1

    ld a, [$cbc3]
    rlca
    ret nc

    xor a
    ld [$cbc3], a
    inc a
    ld [$cca4], a
    call $23a0
    jp $1e42


jr_00a_5eb1:
    ld a, [$cba0]
    or a
    call nz, Call_00a_6710
    call $2686
    ld e, $47
    ld a, [de]
    or a
    jp nz, $25b8

    ret


    jr nz, jr_00a_5ec5

jr_00a_5ec5:
    ld b, b
    rst $38
    rst $38
    ld sp, hl
    ld [hl], h
    inc bc
    ld [hl], l
    ld b, $75
    db $10
    ld [hl], l
    inc de
    ld [hl], l
    jr nz, jr_00a_5f49

    inc hl
    ld [hl], l
    ld h, $75
    add hl, hl
    ld [hl], l
    scf
    ld [hl], l
    ld c, h
    ld [hl], l
    ld d, b
    ld [hl], l
    ld d, e
    ld [hl], l
    ld e, $44
    ld a, [de]
    rst $00
    ld [$015e], a
    ld e, a
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    call $15e9
    call $239b
    ld bc, $604d
    ld l, $7b
    ld [hl], b
    inc hl
    ld [hl], c
    ret


    ld e, $45
    ld a, [de]
    rst $00
    rrca
    ld e, a
    cpl
    ld e, a
    ccf
    ld e, a
    ld c, [hl]
    ld e, a
    ld l, a
    ld e, a
    call Call_00a_5f8c
    ld e, $79
    ld a, [de]
    cp $ff
    ret nz

    call $23a0
    ld l, $7d
    ld [hl], $28
    ld a, $81
    ld [$cca4], a
    ld a, $80
    ld [$cc02], a
    ld hl, $7556
    jp $24fe


    call Call_00a_5f87
    ret nz

    call $23a0
    ld l, $7d
    ld [hl], $78
    ld a, $b8
    jp $0c74


    call Call_00a_606a
    call Call_00a_5f87
    ret nz

    call $23a0

jr_00a_5f49:
    ld l, $7d
    ld [hl], $01
    ret


    call $250c
    call Call_00a_606a
    call Call_00a_5f87
    ret nz

    call Call_00a_602c
    jr z, jr_00a_5f67

    ld h, d
    ld l, $7d
    ld [hl], $32
    ld a, $6f
    jp $0c74


jr_00a_5f67:
    call $23a0
    ld l, $7d
    ld [hl], $28
    ret


    call Call_00a_5f87
    ret nz

    xor a
    ld [$cc02], a
    ld [$cca4], a
    ld a, $4d
    call $0c74
    call $1956
    set 7, [hl]
    jp $3ad9


Call_00a_5f87:
    ld h, d
    ld l, $7d
    dec [hl]
    ret


Call_00a_5f8c:
    call Call_00a_5fcd
    jr z, jr_00a_5fa9

    call $1cde
    ret nc

    ld a, [$cc46]
    bit 6, a
    jr z, jr_00a_5fa3

    ld c, $01
    ld b, $b0
    jp Jump_00a_5fba


jr_00a_5fa3:
    ld a, [$cc45]
    bit 6, a
    ret nz

jr_00a_5fa9:
    ld h, d
    ld l, $78
    ld a, $00   ; xor a
    cp [hl]
    ret z

    ld c, $00
    ld b, $b1
    call Call_00a_5fba
    jp Jump_00a_6001


Call_00a_5fba:
Jump_00a_5fba:
    ld h, d
    ld l, $78
    ld [hl], c
    ld a, $13
    ld l, $79
    add [hl]
    ld c, a
    ld a, b
    call $3a52
    ld a, $70
    jp $0c74


Call_00a_5fcd:
    ld hl, $5ff4
    ld a, [$d00b]
    ld c, a
    ld a, [$d00d]
    ld b, a

jr_00a_5fd8:
    ld a, [hli]
    or a
    ret z

    add $04
    sub c
    cp $09
    jr nc, jr_00a_5ff0

    ld a, [hli]
    add $03
    sub b
    cp $07
    jr nc, jr_00a_5ff1

    ld a, [hl]
    ld e, $79
    ld [de], a
    or d
    ret


jr_00a_5ff0:
    inc hl

jr_00a_5ff1:
    inc hl
    jr jr_00a_5fd8

    jr nz, jr_00a_602e

    nop
    jr nz, jr_00a_6041

    ld bc, $5820
    ld [bc], a
    jr nz, jr_00a_6067

    inc bc
    nop

Jump_00a_6001:
    ld h, d
    ld l, $7a
    ld a, [hl]
    ld bc, $6024
    call $006d
    ld a, [bc]
    ld b, a
    ld l, $79
    ld a, [hl]
    ld l, $7a
    cp b
    jr nz, jr_00a_601c

    ld a, [hl]
    cp $07
    jr z, jr_00a_601f

    inc [hl]
    ret


jr_00a_601c:
    ld [hl], $00
    ret


jr_00a_601f:
    ld l, $79
    ld [hl], $ff
    ret


    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc bc
    inc bc
    inc bc

Call_00a_602c:
    ld e, $7b

jr_00a_602e:
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld l, a

jr_00a_6033:
    ld a, [hli]
    or a
    jr z, jr_00a_6044

    cp $ff
    jr z, jr_00a_604c

    ld c, a
    ld a, [hli]
    push hl
    call $3a52

jr_00a_6041:
    pop hl
    jr jr_00a_6033

jr_00a_6044:
    ld e, $7b
    ld a, h
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    or d

jr_00a_604c:
    ret


    inc bc
    xor a
    inc de
    and b
    nop
    inc de
    xor a
    inc b
    xor a
    inc d
    and b
    nop
    inc d
    xor a
    dec b
    xor a
    dec d
    and b
    nop
    dec d
    xor a
    ld b, $af
    ld d, $a0
    nop

jr_00a_6067:
    ld d, $af
    rst $38

Call_00a_606a:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, $02
    jp $24a7


    call Call_00a_6358
    call Call_00a_607e
    jp Jump_00a_624c


Call_00a_607e:
    ld e, $44
    ld a, [de]
    sub $08
    jr c, jr_00a_6090

    rst $00
    cp d
    ld h, b
    bit 4, b
    add sp, $60
    dec b
    ld h, c
    ld [hli], a
    ld h, c

jr_00a_6090:
    ld hl, $7a3c
    call $2d7a
    call $15e9
    ld e, $48
    ld a, [de]
    ld hl, $60b0
    rst JumpTable
    ld e, $66
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $48
    ld a, [de]
    call $25cb
    jp $1e27


    add hl, bc
    rrca
    add hl, bc
    rla
    add hl, de
    rlca
    add hl, de
    rrca
    add hl, bc
    rlca
    ld e, $72
    ld a, [de]
    ld h, d
    ld l, $4b
    cp [hl]
    jr nc, jr_00a_60c6

    jp $1fdb


jr_00a_60c6:
    ld a, [de]
    ld [hl], a
    jp Jump_00a_63d5


    ld e, $4d
    ld a, [de]
    ld h, d
    ld l, $73
    cp [hl]
    jr nc, jr_00a_60e3

    ld l, $50
    ld b, [hl]
    ld c, $08
    ld a, [$ccb0]
    cp d
    call z, $22d9
    jp $1fdb


jr_00a_60e3:
    ld a, [hl]
    ld [de], a
    jp Jump_00a_63d5


    ld e, $4b
    ld a, [de]
    ld h, d
    ld l, $72
    cp [hl]
    jr nc, jr_00a_6100

    ld l, $50
    ld b, [hl]
    ld c, $10
    ld a, [$ccb0]
    cp d
    call z, $22d9
    jp $1fdb


jr_00a_6100:
    ld a, [hl]
    ld [de], a
    jp Jump_00a_63d5


    ld e, $73
    ld a, [de]
    ld h, d
    ld l, $4d
    cp [hl]
    jr nc, jr_00a_611d

    ld l, $50
    ld b, [hl]
    ld c, $18
    ld a, [$ccb0]
    cp d
    call z, $22d9
    jp $1fdb


jr_00a_611d:
    ld a, [de]
    ld [hl], a
    jp Jump_00a_63d5


    call $2387
    ret nz

    jp Jump_00a_63d5


    call $25b8
    call Call_00a_6358
    call nz, Call_00a_638d
    call Call_00a_6138
    jp Jump_00a_624c


Call_00a_6138:
    ld e, $44
    ld a, [de]
    sub $08
    jr c, jr_00a_614a

    rst $00
    ld h, h
    ld h, c
    ld [hl], d
    ld h, c
    add b
    ld h, c
    sbc h
    ld h, c
    ld [hli], a
    ld h, c

jr_00a_614a:
    ld hl, $7b2f
    call $2d7a
    call $15e9
    ld h, d
    ld l, $66
    ld [hl], $08
    inc l
    ld [hl], $0c
    ld e, $48
    ld a, [de]
    call $25cb
    jp $1e27


    ld e, $72
    ld a, [de]
    ld h, d
    ld l, $4b
    cp [hl]
    jr c, jr_00a_61aa

    ld a, [de]
    ld [hl], a
    jp Jump_00a_63d5


    ld e, $4d
    ld a, [de]
    ld h, d
    ld l, $73
    cp [hl]
    jr c, jr_00a_61aa

    ld a, [hl]
    ld [de], a
    jp Jump_00a_63d5


    ld e, $4b
    ld a, [de]
    ld h, d
    ld l, $72
    cp [hl]
    jr nc, jr_00a_6197

    ld l, $50
    ld b, [hl]
    ld c, $10
    ld a, [$ccb0]
    cp d
    call z, $22d9
    jr jr_00a_61aa

jr_00a_6197:
    ld a, [hl]
    ld [de], a
    jp Jump_00a_63d5


    ld e, $73
    ld a, [de]
    ld h, d
    ld l, $4d
    cp [hl]
    jr c, jr_00a_61aa

    ld a, [de]
    ld [hl], a
    jp Jump_00a_63d5


jr_00a_61aa:
    call $1fdb
    ld a, [$ccb0]
    cp d
    ret nz

    ld e, $49
    ld a, [de]
    rrca
    rrca
    ld b, a
    ld e, $48
    ld a, [de]
    add b
    ld hl, $61c6
    rst JumpTable
    ld a, [hli]
    ld c, a
    ld b, [hl]
    jp $22d9


    ld [$1814], sp
    inc d
    ld [$1828], sp
    rrca
    ld [$1814], sp
    inc d
    ld [$180f], sp
    jr z, @+$20

    ld b, h
    ld a, [de]
    cp $03
    jr z, jr_00a_61e3

    call Call_00a_6358
    call Call_00a_624c

jr_00a_61e3:
    ld e, $44
    ld a, [de]
    rst $00
    pop af
    ld h, c
    add hl, de
    ld h, d
    inc hl
    ld h, d
    ld [hl], $62
    ccf
    ld h, d
    ld e, $42
    ld a, [de]
    ld hl, $6213
    rst JumpTable
    ld e, $44
    ld a, [hli]
    ld [de], a
    ld e, $46
    ld a, [hl]
    ld [de], a
    ld e, $66
    ld a, $08
    ld [de], a
    inc e
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    cp $02
    jp z, $1e30

    ret


    inc b
    inc a
    inc bc
    ld a, b
    ld bc, $cd3c
    and a
    ld h, e
    ret nz

    ld [hl], $1e
    ld l, e
    inc [hl]
    xor a
    ret


    call Call_00a_63a7
    jr nz, jr_00a_622f

    ld [hl], $96
    ld l, e
    inc [hl]
    jp $1e39


jr_00a_622f:
    ld e, $5a
    ld a, [de]
    xor $80
    ld [de], a
    ret


    call $6219
    ret nz

    ld a, $7b
    jp $0c74


    call Call_00a_63a7
    jr nz, jr_00a_622f

    ld [hl], $78
    ld l, e
    ld [hl], $01
    jp $1e30


Call_00a_624c:
Jump_00a_624c:
    ld a, [$d004]
    cp $01
    ret nz

    call $1c07
    ret nc

    call Call_00a_62dd
    jr c, jr_00a_6275

    call Call_00a_630b
    jp z, Jump_00a_63bd

    call Call_00a_62a8
    ret c

    ld e, $4b
    ld a, [de]
    ld b, a
    ld a, [$d00b]
    cp b
    ld c, $00
    jr nc, jr_00a_62a3

    ld c, $10
    jr jr_00a_62a3

jr_00a_6275:
    call Call_00a_632a
    ld a, [hl]
    or a
    jp z, Jump_00a_63af

    call Call_00a_62a8
    ret c

    ld a, [$ccb0]
    cp d
    jr nz, jr_00a_6295

    ldh a, [$8b]
    cp $03
    jr z, jr_00a_6295

    push af
    call Call_00a_63af
    pop af
    rrca
    jr jr_00a_629d

jr_00a_6295:
    ld e, $4d
    ld a, [de]
    ld b, a
    ld a, [$d00d]
    cp b

jr_00a_629d:
    ld c, $08
    jr nc, jr_00a_62a3

    ld c, $18

jr_00a_62a3:
    ld b, $14
    jp $22d9


Call_00a_62a8:
    ld h, d
    ld l, $66
    ld a, [hl]
    ld b, a
    add a
    inc a
    ld c, a
    ld l, $4b
    ld a, [$d00b]
    sub [hl]
    add b
    cp c
    ret nc

    ld l, $67
    ld a, [hl]
    add $02
    ld b, a
    add a
    inc a
    ld c, a
    ld l, $4d
    ld a, [$d00d]
    sub [hl]
    add b
    cp c
    ret nc

    xor a
    ld l, $49
    bit 3, [hl]
    jr nz, jr_00a_62d3

    inc a

jr_00a_62d3:
    ld [$cc6b], a
    ld a, $11
    ld [$cc6a], a
    scf
    ret


Call_00a_62dd:
    ld a, [$cc77]
    or a
    ld b, $05
    jr z, jr_00a_62e6

    dec b

jr_00a_62e6:
    ld h, d
    ld l, $67
    ld a, [hl]
    add b
    ld b, a
    add a
    inc a
    ld c, a
    ld l, $4d
    ld a, [$d00d]
    sub [hl]
    add b
    cp c
    ret nc

    ld l, $66
    ld a, [hl]
    sub $02
    ld b, a
    add a
    inc a
    ld c, a
    ld l, $4b
    ld a, [$d00b]
    sub [hl]
    add b
    cp c
    ccf
    ret


Call_00a_630b:
    ld l, $4d
    ld a, [$d00d]
    cp [hl]
    ld b, $fb
    jr c, jr_00a_6317

    ld b, $04

jr_00a_6317:
    add b
    ld c, a
    ld a, [$d00b]
    sub $04
    ld b, a
    call $14a5
    ret nz

    ld a, b
    add $08
    ld b, a
    jp $14a5


Call_00a_632a:
    ld h, d
    ld l, $4b
    ld a, [$d00b]
    cp [hl]
    ld b, $fa
    jr c, jr_00a_6337

    ld b, $09

jr_00a_6337:
    add b
    ld b, a
    ld a, [$d00d]
    sub $03
    ld c, a
    call $14a5
    ld hl, $ff8b
    ld [hl], $00
    jr z, jr_00a_634b

    set 1, [hl]

jr_00a_634b:
    ld a, c
    add $05
    ld c, a
    call $14a5
    ld hl, $ff8b
    ret z

    inc [hl]
    ret


Call_00a_6358:
    call $1c07
    jr nc, jr_00a_6384

    ld h, d
    ld l, $4b
    ld a, [hl]
    ld l, $66
    sub [hl]
    sub $02
    ld b, a
    ld a, [$d00b]
    cp b
    jr nc, jr_00a_6384

    call Call_00a_62dd
    jr nc, jr_00a_6384

    ld e, $74
    ld a, [de]
    or a
    jr nz, jr_00a_637e

    ld a, $01
    ld [de], a
    call Call_00a_63dd

jr_00a_637e:
    ld a, d
    ld [$ccb0], a
    xor a
    ret


jr_00a_6384:
    ld e, $74
    ld a, [de]
    or a
    ret z

    ld a, $00   ; xor a
    ld [de], a
    ret


Call_00a_638d:
    ld e, $49
    ld a, [de]
    bit 3, a
    ret z

    ld hl, $d02c
    ld e, $48
    ld a, [de]
    swap a
    add $08
    ld [hl], a
    ld l, $2b
    ld [hl], $fc
    ld l, $2d
    ld [hl], $0c
    ret


Call_00a_63a7:
    ld h, d
    ld l, $46
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_00a_63af:
Jump_00a_63af:
    ld hl, $d026
    ld e, $66
    ld a, [de]
    add [hl]
    ld b, a
    ld l, $0b
    ld e, $4b
    jr jr_00a_63c9

Jump_00a_63bd:
    ld hl, $d027
    ld e, $67
    ld a, [de]
    add [hl]
    ld b, a
    ld l, $0d
    ld e, $4d

jr_00a_63c9:
    ld a, [de]
    cp [hl]
    jr c, jr_00a_63d1

    ld a, b
    cpl
    inc a
    ld b, a

jr_00a_63d1:
    ld a, [de]
    add b
    ld [hl], a
    ret


Jump_00a_63d5:
    call $2d8e
    ld a, [$ccb0]
    cp d
    ret nz

Call_00a_63dd:
    ld e, $4a
    ld a, [de]
    ld [$d00a], a
    ld e, $4c
    ld a, [de]
    ld [$d00c], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld a, [c]
    ld h, e
    ld [de], a
    ld h, h
    call $15e9
    call $239b
    ld l, $49
    ld [hl], $04
    ld a, $3b
    call $24f5
    call Call_00a_6418
    ld hl, $758a
    call $24fe
    call $2686
    ld a, $02
    call $25cb
    call $250c
    jp $2686


Call_00a_6418:
    ld a, $4a
    call $1717
    jr nc, jr_00a_6424

    or a
    ld a, $01
    jr z, jr_00a_643c

jr_00a_6424:
    ld a, $52
    call $1717
    jr nc, jr_00a_642f

    ld a, $02
    jr jr_00a_643c

jr_00a_642f:
    ld a, $28
    call $30c7
    jr nz, jr_00a_643a

    ld a, $00   ; xor a
    jr jr_00a_643c

jr_00a_643a:
    ld a, $03

jr_00a_643c:
    ld e, $7f
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld c, b
    ld h, h
    db $d3
    ld h, h
    ld a, $01
    ld [de], a
    call $15e9
    call $1e03
    ld e, $42
    ld a, [de]
    rst $00
    ld l, c
    ld h, h
    add h
    ld h, h
    adc [hl]
    ld h, h
    and e
    ld h, h
    sub h
    ld h, h
    and e
    ld h, h
    sbc d
    ld h, h
    and h
    ld h, h
    xor d
    ld h, h
    push bc
    ld h, h
    ld h, d
    ld l, $4b
    ld [hl], $00
    inc l
    inc l
    ld [hl], $a0
    ld l, $66
    ld [hl], $20
    inc l
    ld [hl], $08
    ld l, $49
    ld [hl], $10
    ld l, $50
    ld [hl], $14
    jp $12a3


    ld h, d
    ld l, $4b
    ld [hl], $98
    inc l
    inc l
    ld [hl], $a0
    ret


    ld hl, $767c
    jp $24fe


    ld hl, $7680
    jp $24fe


    ld h, d
    ld l, $4b
    ld [hl], $48
    inc l
    inc l
    ld [hl], $80
    ret


    ld hl, $7684
    jp $24fe


    ld a, $28
    call $30c7
    jp z, $3ad9

    ld a, $06
    call $25cb
    ld a, $a5
    ld [$cc1d], a
    ld [$cc17], a
    ld hl, $7685
    jp $24fe


    call $1956
    bit 6, a
    jp nz, $3ad9

    ld hl, $769b
    jp $24fe


    ld e, $42
    ld a, [de]
    rst $00
    db $eb
    ld h, h
    ld h, d
    ld h, l
    ld a, [$0565]
    ld h, [hl]
    jr c, @+$68

    cp b
    dec h
    ld [hl], d
    ld h, [hl]
    ld a, b
    ld h, [hl]
    db $dd
    ld h, [hl]
    db $ed
    ld h, [hl]
    ld e, $45
    ld a, [de]
    rst $00
    rst $38
    ld h, h
    scf
    ld h, l
    ld h, e
    ld h, l
    add [hl]
    ld h, l
    or l
    ld h, l
    rst $00
    ld h, l
    sbc $65
    ldh a, [$65]
    call $25b8
    ld a, [$cc00]
    and $0f
    call z, Call_00a_6521
    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $90
    ret nz

    call $23a0
    xor a
    ld [$cca4], a
    inc a
    ld [$ccab], a
    jp $12ae


Call_00a_6521:
    call $3ac6
    ret nz

    ld [hl], $84
    inc l
    ld [hl], $05
    call $041a
    and $1f
    sub $10
    ld b, $00
    ld c, a
    jp $2215


    call $26e7
    call $261d
    ld c, $20
    call $1f60
    jp nc, $25b8

    ld a, [$cc77]
    or a
    ret nz

    call $23a0
    ld a, $80
    ld [$cca4], a
    ld l, $46
    ld [hl], $32
    ld l, $4d
    ld a, [hl-]
    ld [hl], a
    ld hl, $d008
    ld [hl], $03
    call $29f4
    ret


    call $2387
    jr nz, jr_00a_6576

    call $23a0
    ld hl, $cbb3
    ld [hl], $00
    ld hl, $cbba
    ld [hl], $ff
    ret


jr_00a_6576:
    call $042f
    and $03
    sub $02
    ld h, d
    ld l, $4c
    add [hl]
    inc l
    ld [hl], a
    jp $25b8


    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    call $23a0
    ld l, $46
    ld [hl], $1e
    ld b, $04

jr_00a_6598:
    call $3ac6
    jr nz, jr_00a_65a8

    ld [hl], $a6
    inc l
    ld [hl], b
    dec [hl]
    call $21fd
    dec b
    jr nz, jr_00a_6598

jr_00a_65a8:
    ld a, $05
    call $25cb
    ld a, $8a
    call $0c74
    jp $3110


    call $2387
    ret nz

    call $23a0
    ld l, $50
    ld [hl], $28
    ld l, $60
    ld [hl], $01
    jp $25b8


    call $1fdb
    ld h, d
    ld l, $4b
    ld a, [hl]
    sub $98
    ret nz

    call $23a0
    ld l, $4f
    ld [hl], a
    ld l, $60
    ld [hl], $01
    jp $25b8


    call $25b8
    ld e, $61
    ld a, [de]
    or a
    ret z

    call $23a0
    ld l, $46
    ld [hl], $1e
    jp $2646


    call $2387
    ret nz

    ld a, $01
    ld [$cfdf], a
    ret


    ld a, [$c4ab]
    or a
    ret nz

    call $25b8
    jp $250c


    ld e, $45
    ld a, [de]
    rst $00
    rrca
    ld h, [hl]
    ld hl, $2f66
    ld h, [hl]
    ld a, [$cfc0]
    or a
    jr z, jr_00a_661e

    call $23a0
    ld bc, $ff00
    call $2358

jr_00a_661e:
    jp $25b8


    ld c, $20
    call $1f04
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $0a
    ret


    call $2387
    ret nz

    ld a, $06
    jp $25cb


    ld e, $45
    ld a, [de]
    rst $00
    ld b, d
    ld h, [hl]
    ld e, a
    ld h, [hl]
    ld l, a
    ld h, [hl]
    ld a, [$c4ab]
    or a
    ret nz

    call $25b8
    call $250c
    ret nc

    ld bc, $ff20
    call $2358
    ld l, $49
    ld [hl], $08
    ld l, $50
    ld [hl], $37
    jp $23a0


    call $1fdb
    ld c, $20
    call $1f04
    ret nz

    call $23a0
    ld l, $60
    ld [hl], $20
    jp $25b8


    call $26e7
    jp $25b8


    ld e, $45
    ld a, [de]
    rst $00
    add [hl]
    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    or d
    ld h, [hl]
    rst $00
    ld h, [hl]
    cp b
    dec h
    call $25b8
    ld a, [$cfc0]
    cp $04
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $78
    ld a, $08
    call $25cb
    jp Jump_00a_6717


    call $2387
    jp nz, Jump_00a_6710

    call $23a0
    xor a
    ld l, $4f
    ld [hl], a
    ld l, $46
    ld [hl], $1e
    jp $25b8


    call $2387
    jr nz, jr_00a_66c4

    call $23a0
    ld l, $46
    ld [hl], $3c
    ld bc, $3d09
    call $184b

jr_00a_66c4:
    jp $25b8


    ld a, [$cba0]
    or a
    jr nz, jr_00a_66da

    call $2387
    jr nz, jr_00a_66da

    call $23a0
    ld hl, $cfc0
    ld [hl], $05

jr_00a_66da:
    jp $25b8


    call $250c
    ld e, $78
    ld a, [de]
    or a
    call z, $25b8
    call $261d
    jp $229b


    ld e, $78
    ld a, [de]
    bit 7, a
    jr nz, jr_00a_66fc

    and $7f
    call nz, $25b8
    call $25b8

jr_00a_66fc:
    call $250c
    ret nc

    ld a, $30
    call $30cd
    ld hl, $670b
    jp $1970


    add b
    sub a
    nop
    ld b, h
    add e

Call_00a_6710:
Jump_00a_6710:
    ld c, $20
    call $1f04
    ret nz

    ld h, d

Jump_00a_6717:
    ld bc, $ff00
    jp $2358


    ld e, $44
    ld a, [de]
    rst $00
    dec h
    ld h, a
    ld b, d
    ld h, a
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $42
    ld a, [hl]
    add a
    add a
    add a
    add $04
    ld l, $49
    ld [hl], a
    ld l, $50
    ld [hl], $64
    ld l, $46
    ld [hl], $08
    jp $1e1e


    ld e, $45
    ld a, [de]
    or a
    jr nz, jr_00a_675a

    call $2387
    jr nz, jr_00a_6754

    call $23a0
    ld l, $46
    ld [hl], $14

jr_00a_6754:
    call $1fdb
    jp $1fdb


jr_00a_675a:
    call $2387
    jp z, $3ad9

    ld a, [$cc00]
    xor d
    rrca
    ld l, $5a
    set 7, [hl]
    jr nc, jr_00a_6754

    res 7, [hl]
    jr jr_00a_6754

    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], a
    ld h, a
    or h
    ld h, a
    ld a, $01
    ld [de], a
    call $15e9
    call $1e27
    ld e, $42
    ld a, [de]
    cp $02
    ret nz

    ld a, [$c6da]
    cp $04
    ret c

    ld a, $04
    call $25cb
    call $3ac6
    ret nz

    ld [hl], $35
    inc l
    ld a, [$c6da]
    ld b, $00
    cp $07
    jr c, jr_00a_67a3

    ld b, $03

jr_00a_67a3:
    ld a, [$c6de]
    add b
    ld [hli], a
    add $16
    ld [hl], a
    ld l, $4b
    ld [hl], $38
    inc l
    inc l
    ld [hl], $28
    ret


    ld e, $45
    ld a, [de]
    rst $00
    cp [hl]
    ld h, a
    ret nc

    ld h, a
    sbc $67
    ld a, [$cfc0]
    or a
    jr z, jr_00a_67cd

    call $23a0
    ld bc, $ff00
    call $2358

jr_00a_67cd:
    jp $25b8


    ld c, $20
    call $1f04
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $0a
    ret


    call $2387
    ret nz

    ld a, $03
    jp $25cb


    ld e, $42
    ld a, [de]
    and $0f
    rst $00
    rst $30
    ld h, a
    rst $30
    ld h, a
    rst $30
    ld h, a
    rst $30
    ld h, a
    ld de, $1a68
    and $0f
    add $0f
    ld b, a
    ld a, [de]
    swap a
    and $0f
    ld hl, $d100
    ld [hl], $01
    inc l
    ld [hl], b
    inc l
    ld [hl], a
    call $21fd
    jp $3ad9


    ld hl, $d000
    ld [hl], $03
    call $21fd
    call Call_00a_681f
    jp $3ad9


Call_00a_681f:
    ld e, $42
    ld a, [de]
    swap a
    and $0f
    ld b, a
    rst $00
    inc [hl]
    ld l, b
    ld c, b
    ld l, b
    ld c, b
    ld l, b
    ld c, b
    ld l, b
    ld c, b
    ld l, b
    ld d, e
    ld l, b
    ld hl, $6869
    ld a, $0a

Jump_00a_6839:
    push de
    call $2964
    pop de
    xor a
    ld [$cca4], a
    ld hl, $d001
    ld [hl], $00
    ret


    ld a, b
    add $02

jr_00a_684b:
    ld hl, $d001
    ld [hl], $08
    inc l
    ld [hl], a
    ret


    ld a, d
    ld [$cc48], a
    ld hl, $c6c5
    ld [hl], $3d
    xor a
    ld l, $80
    ld [hli], a
    ld [hl], a
    ld hl, $6874
    ld a, $0a
    jp Jump_00a_6839


    inc a
    nop
    nop
    jr nz, jr_00a_686e

jr_00a_686e:
    add b
    jr nc, jr_00a_6871

jr_00a_6871:
    nop
    rst $38
    rst $38
    ld a, h
    nop
    nop
    ld bc, $2000
    ld l, $00
    nop
    ld bc, $8000
    ld l, $00
    nop
    ld bc, $1000
    ld l, $00
    nop
    ld bc, $4000
    ld l, $00
    nop
    ld bc, $2000
    ld l, $00
    nop
    ld bc, $8000
    ld l, b
    nop
    nop
    ld bc, $4000
    jr c, jr_00a_68a0

jr_00a_68a0:
    nop
    ld bc, $1000
    ret nc

    ld bc, $0100
    nop
    jr nz, jr_00a_684b

    nop
    nop
    ld bc, $0100
    jr nc, jr_00a_68b2

jr_00a_68b2:
    nop
    rst $38
    rst $38
    ld e, $44
    ld a, [de]
    rst $00
    cp l
    ld l, b
    bit 5, b
    ld a, $01
    ld [de], a
    ld e, $50
    ld a, $1e
    ld [de], a
    call $15e9
    jp $1df1


    call $25b8
    ld e, $42
    ld a, [de]
    cp $02
    ret z

    ld e, $45
    ld a, [de]
    rst $00
    db $e4
    ld l, b
    db $f4
    ld l, b
    ld [bc], a
    ld l, c
    rrca
    ld l, c
    dec e
    ld l, c
    ld [hl-], a
    ld l, c
    ld a, [$cfc0]
    or a
    ret z

    call $23a0
    ld l, $42
    ld a, [hl]
    add a
    inc a
    jp $25cb


    ld a, [$cfc0]
    cp $02
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $0a
    ret


    call $2387
    ret nz

    call $23a0
    ld bc, $ff00
    jp $2358


    ld c, $20
    call $1f04
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $50
    ret


    call $2387
    ret nz

    call $23a0
    ld l, $42
    ld a, [hl]
    cp $01
    ld a, $04
    jr z, jr_00a_692e

    xor a

jr_00a_692e:
    ld l, $49
    ld [hl], a
    ret


    ld e, $42
    ld a, [de]
    cp $01
    jr z, jr_00a_6940

    cp $04
    jr z, jr_00a_6940

    cp $05
    ret nz

jr_00a_6940:
    jp $1fdb


    ld e, $44
    ld a, [de]
    rst $00
    ld c, e
    ld l, c
    ld h, c
    ld l, c
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    ld hl, $6967
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    jp $1e27


    call $25b8
    jp $250c


    sbc a
    db $76
    xor l
    db $76
    or a
    db $76
    call c, $1e76
    ld b, h
    ld a, [de]
    rst $00
    ld [hl], a
    ld l, c
    call $3e69
    ld bc, $3e12
    ccf
    call $24f5
    ld e, $42
    ld a, [de]
    ld hl, $6a33
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $42
    ld a, [de]
    rst $00
    sub [hl]
    ld l, c
    or a
    ld l, c
    cp d
    ld l, c
    ld a, $16
    call $30c7
    jp nz, $3ad9

    ld a, [$cc48]
    cp $d0
    jr z, jr_00a_69aa

    ld a, [$d10d]
    jr jr_00a_69ad

jr_00a_69aa:
    ld a, [$d00d]

jr_00a_69ad:
    cp $3d
    jp c, $3ad9

    ld a, $00   ; xor a
    call Call_00a_69e7
    jp Jump_00a_69cd


    ld a, $16
    call $30c7
    jp z, $3ad9

    call $1956
    bit 6, [hl]
    jp nz, $3ad9

    call $10ce

Jump_00a_69cd:
    call $250c
    jp c, $3ad9

    ret


    ld a, $08
    ld [$cc6a], a
    ld hl, $d008
    ld [hl], $02
    ld l, $0b
    ld [hl], $18
    ld l, $0d
    ld [hl], $48
    ret


Call_00a_69e7:
    add a
    ld bc, $6a02
    call $007e
    call $3ac6
    ret nz

    ld [hl], $95
    inc l
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    ret


    inc bc
    ld h, b
    inc h
    nop
    inc b
    ld d, b
    ld c, b
    nop
    ld bc, $6a2b
    ld e, $02

jr_00a_6a0f:
    call $3ac6
    ret nz

    ld [hl], $96
    inc l
    ld [hl], $04
    inc l
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    inc bc
    inc bc
    dec e
    jr nz, jr_00a_6a0f

    ret


    nop
    ld d, [hl]
    jr z, jr_00a_6a2f

jr_00a_6a2f:
    ld bc, $6856
    nop
    dec b
    ld [hl], a
    inc sp
    ld [hl], a
    sub b
    ld [hl], a
    ld e, $44
    ld a, [de]
    rst $00
    ld b, c
    ld l, d
    ld l, h
    ld l, d
    ld a, $01
    ld [de], a
    call $15e9
    call $1e5a
    ld e, $49
    ld [de], a
    ld hl, $779e
    call $24fe
    ld e, $42
    ld a, [de]
    ld hl, $6a67
    rst AddAToHL
    ld a, [hl]
    ld e, $76
    ld [de], a
    ld bc, $ff40
    call $2358
    jp $1e27


    db $10
    jr nz, @+$1a

    jr z, jr_00a_6a74

    ld e, $42
    ld a, [de]
    and $01
    call nz, Call_00a_6ae7

jr_00a_6a74:
    call $2686
    ld e, $45
    ld a, [de]
    rst $00
    add l
    ld l, d
    sub d
    ld l, d
    xor h
    ld l, d
    call $d86a
    ld l, d
    ld a, [$c4ab]
    or a
    ret nz

    ld h, d
    ld l, $76
    dec [hl]
    ret nz

    jp $23a0


    ld a, [$cfc0]
    cp $01
    jr nz, jr_00a_6aa2

    call $23a0
    ld bc, $fe80
    jp $2358


jr_00a_6aa2:
    ld e, $46
    ld a, [de]
    or a
    call nz, $25b8
    jp $250c


    ld c, $20
    call $1f04
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $08
    ld l, $49
    ld a, [hl]
    add $10
    and $1f
    ld [hl], a
    ld l, $50
    ld [hl], $50
    ld l, $42
    ld a, [hl]
    add a
    inc a
    jp $25cb


    call $2387
    ret nz

    ld l, $46
    ld [hl], $40
    jp $23a0


    call $2387
    jp z, $3ad9

    call $1fdb
    call $25b8
    jp $2686


Call_00a_6ae7:
    ld c, $20
    call $1f04
    ret nz

    ld bc, $ff40
    jp $2358


    ld e, $44
    ld a, [de]
    rst $00
    ei
    ld l, d
    ld c, d
    ld l, e
    ld a, $01
    ld [de], a
    ld e, $43
    ld a, [de]
    or a
    jr nz, jr_00a_6b22

    ld h, d
    ld l, $42
    ld a, [hl]
    ld hl, $6cd7
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call Call_00a_6c6f
    ld e, $42
    ld a, [de]
    ld hl, $6cc7
    rst JumpTable
    ld a, [hli]
    ld e, $72
    ld [de], a
    ld a, [hli]
    ld e, $47
    ld [de], a
    ret


jr_00a_6b22:
    call $15e9
    ld h, d
    ld l, $70
    ld [hl], $14
    ld l, $50
    ld [hl], $50
    ld l, $47
    ld a, [hl]
    call $25cb
    ld h, d
    ld l, $42
    ld a, [hl]
    or a
    ld bc, $f018
    jr z, jr_00a_6b41

    ld bc, $0008

jr_00a_6b41:
    ld l, $4d
    ld [hl], b
    ld l, $49
    ld [hl], c
    jp $1e27


    ld a, $01
    ld [de], a
    ld e, $43
    ld a, [de]
    or a
    jp nz, Jump_00a_6c91

    ld a, [$c4ab]
    or a
    ret nz

    ld e, $45
    ld a, [de]
    rst $00
    ld h, e
    ld l, e
    add d
    ld l, e
    ld b, c
    ld l, h
    ld h, d
    ld l, $70
    call $0237
    ret nz

    call Call_00a_6c4d

Jump_00a_6b6d:
    ld e, $70
    ld a, [de]
    rlca
    ret nc

    ld b, $01
    rlca
    jr nc, jr_00a_6b79

    ld b, $02

jr_00a_6b79:
    ld h, d
    ld l, $46
    ld [hl], $b4
    ld l, $45
    ld [hl], b
    ret


    ld e, $73
    ld a, [de]
    rst $00
    adc [hl]
    ld l, e
    sub a
    ld l, e
    push hl
    ld l, e
    pop af
    ld l, e
    call $2387
    ret nz

    ld h, d
    ld l, $73
    inc [hl]
    ret


    ld a, [$cc00]
    and $03
    ret nz

    ld h, d
    ld l, $46
    ld a, [hl]
    cp $10
    jr nz, jr_00a_6bbb

    ld l, $73
    inc [hl]
    ld l, $58
    ld a, [hl]
    sub $03
    ld [hli], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    call Call_00a_6c6a
    ld h, d
    ld l, $46
    ld [hl], $1e
    ret


jr_00a_6bbb:
    ldh a, [rSVBK]
    push af
    ld l, $46
    ld a, [hl]
    ld b, a
    ld a, $04
    ldh [rSVBK], a
    ld a, b
    ld hl, $d000
    rst JumpTable
    ld b, $30

jr_00a_6bcd:
    xor a
    ld [hli], a
    ld [hl], a
    ld a, $1f
    rst AddAToHL
    dec b
    jr nz, jr_00a_6bcd

    push de
    ld a, $09
    call $05b6
    pop de
    pop af
    ldh [rSVBK], a
    ld h, d
    ld l, $46
    inc [hl]
    ret


    call $2387
    ret nz

    ld l, $73
    inc [hl]
    ld l, $46
    ld [hl], $10
    ret


    ld a, [$cc00]
    and $03
    ret nz

    call $2387
    jr nz, jr_00a_6c06

    xor a
    ld l, $45
    ld [hl], a
    ld l, $73
    ld [hl], a
    jp Jump_00a_6b6d


jr_00a_6c06:
    push de
    ldh a, [rSVBK]
    push af
    ld a, [hl]
    ld b, a
    ld a, b
    ld hl, $d000
    rst JumpTable
    ld a, b
    ld de, $d800
    call $0072
    ld b, $30

jr_00a_6c1a:
    push bc
    ld a, $03
    ldh [rSVBK], a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, $04
    ldh [rSVBK], a
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $1f
    ld c, a
    rst AddAToHL
    ld a, c
    call $0068
    pop bc
    dec b
    jr nz, jr_00a_6c1a

    ld a, $09
    call $05b6
    pop af
    ldh [rSVBK], a
    pop de
    ret


    call $2387
    ret nz

    ld hl, $cfde
    ld [hl], $01
    jp $3ad9


Call_00a_6c4d:
Jump_00a_6c4d:
    call $3ac6
    jr nz, jr_00a_6c66

    ld [hl], $ae
    inc l
    ld e, $72
    ld a, [de]
    ld [hli], a
    ld [hl], $01
    ld l, $46
    ld e, l
    ld a, [de]
    inc e
    ld [hli], a
    ld a, [de]
    ld [hl], a
    call $21fd

jr_00a_6c66:
    ld h, d
    ld l, $47
    inc [hl]

Call_00a_6c6a:
    ld l, $58
    ld a, [hli]
    ld h, [hl]
    ld l, a

Call_00a_6c6f:
    ld a, [hli]
    ld e, $70
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    ld a, [hli]
    ld e, $46
    ld [de], a
    ld a, [hli]
    ld e, $4b
    ld [de], a
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $71
    ld a, [de]
    or a
    ret nz

    dec e
    ld a, [de]
    or a
    ret nz

    jp Jump_00a_6c4d


Jump_00a_6c91:
    ld a, [$c4ab]
    or a
    ret nz

    ld e, $45
    ld a, [de]
    rst $00
    sbc [hl]
    ld l, h
    cp e
    ld l, h
    ld h, d
    ld l, $70
    dec [hl]
    jr nz, jr_00a_6cb5

    call $23a0
    ld b, $a0
    ld l, $42
    ld a, [hl]
    or a
    jr z, jr_00a_6cb1

    ld b, $50

jr_00a_6cb1:
    ld l, $4d
    ld [hl], b
    ret


jr_00a_6cb5:
    call $1fdb
    jp $1fdb


    ld e, $46
    ld a, [de]
    inc a
    ret z

    call $2387
    jp z, $3ad9

    ret


    nop
    nop
    ld bc, $0004
    dec bc
    ld bc, $0013
    nop
    ld bc, $0004
    dec bc
    ld bc, $e713
    ld l, h
    ld hl, sp+$6c
    ld d, $6d
    jr c, jr_00a_6d4c

    rst $20
    ld l, h
    ld hl, sp+$6c
    ld d, $6d
    jr c, jr_00a_6d54

    jr nz, jr_00a_6ce9

jr_00a_6ce9:
    rst $38
    ld hl, sp+$30
    nop
    ldh a, [rNR23]
    jr nz, jr_00a_6cf1

jr_00a_6cf1:
    ldh a, [$38]
    jr nz, jr_00a_6cf5

jr_00a_6cf5:
    ldh a, [$50]
    rst $38
    jr nz, jr_00a_6cfa

jr_00a_6cfa:
    rst $38
    ld hl, sp+$20
    nop
    ld hl, sp+$18
    stop
    add sp, $38
    stop
    ret c

    ld e, b
    add b
    nop
    nop
    rst $38
    stop
    nop
    rst $38
    jr z, jr_00a_6d12

jr_00a_6d12:
    nop
    rst $38
    ld d, b
    rst $38
    jr nz, jr_00a_6d18

jr_00a_6d18:
    cp $f8
    stop
    add sp, $18
    ld a, [bc]
    nop
    ret c

    jr c, jr_00a_6d2d

    nop
    ret z

    ld e, b
    add b
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop

jr_00a_6d2d:
    rst $38
    jr jr_00a_6d30

jr_00a_6d30:
    nop
    rst $38
    jr c, jr_00a_6d34

jr_00a_6d34:
    nop
    rst $38
    ld e, b
    rst $38
    jr nz, jr_00a_6d3a

jr_00a_6d3a:
    ld hl, sp-$08
    jr nz, jr_00a_6d3e

jr_00a_6d3e:
    ret c

    jr jr_00a_6d41

jr_00a_6d41:
    nop
    ret c

    jr c, jr_00a_6d45

jr_00a_6d45:
    nop
    ret c

    ld e, b
    add b
    nop
    nop
    rst $38

jr_00a_6d4c:
    ld hl, sp+$00
    nop
    rst $38
    jr jr_00a_6d52

jr_00a_6d52:
    nop
    rst $38

jr_00a_6d54:
    jr c, jr_00a_6d56

jr_00a_6d56:
    nop
    rst $38
    ld e, b
    rst $38
    ld e, $44
    ld a, [de]
    rst $00
    ld h, d
    ld l, l
    ld [hl], a
    ld l, l
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_00a_6d71

    ld hl, $6dd2
    jp Jump_00a_6db4


jr_00a_6d71:
    ld h, d
    ld l, $50
    ld [hl], $14
    ret


    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_00a_6dbc

    ld a, [$c4ab]
    or a
    ret nz

    ld h, d
    ld l, $70
    call $0237
    ret nz

    call Call_00a_6d99
    ld e, $70
    ld a, [de]
    inc a
    ret nz

    ld hl, $cfde
    ld [hl], $01
    jp $3ad9


Call_00a_6d99:
    call $3ac6
    jr nz, jr_00a_6dab

    ld [hl], $af
    inc l
    ld [hl], $01
    inc l
    ld e, $46
    ld a, [de]
    ld [hl], a
    call $21fd

jr_00a_6dab:
    ld h, d
    ld l, $46
    inc [hl]
    ld a, [hl]
    ld hl, $6dd2
    rst JumpTable

Jump_00a_6db4:
    ld a, [hli]
    ld e, $70
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    ret


jr_00a_6dbc:
    ld a, [$c4ab]
    or a
    ret nz

    call $1fdb
    ld h, d
    ld l, $4b
    ld a, [hli]
    ld b, a
    or a
    jp z, $3ad9

    inc l
    ld c, [hl]
    jp $3e6e


    jr nz, jr_00a_6dd4

jr_00a_6dd4:
    ldh [rP1], a
    jr nz, jr_00a_6dd9

    db $10

jr_00a_6dd9:
    ld bc, $00f0
    ld h, b
    ld bc, $00f0
    jr nz, jr_00a_6de3

    ld [hl], b

jr_00a_6de3:
    ld bc, $0170
    ld h, b
    ld bc, $0140
    ld d, b
    ld bc, $0110
    ld h, b
    ld bc, $01a0
    rst $38
    ld e, $44
    ld a, [de]
    rst $00
    db $fd
    ld l, l
    cp b
    dec h
    ld e, a
    ld l, [hl]
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    cp $0b
    call nc, $239b
    or a
    jr nz, jr_00a_6e13

    ld a, $b0
    ld [$cc1d], a
    ld [$cc17], a

jr_00a_6e13:
    call $15e9
    call $26ac
    ld l, $42
    ld a, [hl]
    ld b, a
    cp $08
    jr c, jr_00a_6e2c

    call $1956
    and $80
    jp nz, $3ad9

    ld a, [de]
    sub $05

jr_00a_6e2c:
    add a
    add a
    add a
    ld l, $60
    add [hl]
    ld [hl], a
    ld a, b
    ld hl, $6e43
    rst JumpTable
    ld a, [hli]
    ld e, $4b
    ld [de], a
    inc e
    inc e
    ld a, [hl]
    ld [de], a
    jp $1e03


    ld [hl-], a
    ld a, b
    ld d, b
    add b
    ld d, b
    ld [hl], b
    ld b, b
    xor b
    ld b, b
    ld c, b
    db $10
    ld a, b
    ld c, b
    jr nc, jr_00a_6e9a

    ld [hl], b
    ld d, b
    xor b
    ld d, b
    ld c, b
    jr nz, jr_00a_6ed1

    ld d, b
    xor b
    ld d, b
    ld c, b
    jr nz, @+$7a

    call $25b8
    ld a, [$cc00]
    rrca
    jp c, $1e42

    jp $1e39


    ld e, $44
    ld a, [de]
    rst $00
    adc b
    ld l, [hl]
    rst JumpTable
    ld l, [hl]
    db $ed
    ld l, [hl]
    ei
    ld l, [hl]
    rlca
    ld l, a
    dec h
    ld l, a
    dec sp
    ld l, a
    ld e, $44
    ld a, [de]
    rst $00
    cp [hl]
    ld l, [hl]
    db $ed
    ld l, [hl]
    rst JumpTable
    ld l, [hl]
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $6b
    ld [hl], $00
    ld l, $49
    ld [hl], $ff
    ld e, $42
    ld a, [de]

jr_00a_6e9a:
    ld b, a
    cp $18
    ld a, $4e
    jr c, jr_00a_6ea3

    ld a, $4d

jr_00a_6ea3:
    call $24f5
    ld a, b
    ld hl, $6f4b
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    call $1e03
    call $250c
    call $250c
    jp c, $3ad9

    ret


    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    ld hl, $6f81
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe

jr_00a_6ed1:
    call $1e03
    ld a, $4e
    call $24f5
    call $250c
    jp $250c


    ld c, $20
    call $1f04
    call $250c
    jp c, $3ad9

    jp $2646


    ld c, $20
    call $1f04
    call $250c
    jp c, $3ad9

    jp $25b8


    ld a, $10
    call $24a7
    call $250c
    jp c, $3ad9

    ret


    ld c, $20
    call $1f04
    call $25b8
    call $250c
    jp c, $3ad9

    ld a, [$cc00]
    and $07
    ret nz

    ld e, $48
    ld a, [de]
    inc a
    and $03
    ld [de], a
    jp $25cb


    call $261d
    call $25b8
    call $250c
    jp c, $3ad9

    ld a, [$cc00]
    rrca
    jp c, $1e39

    jp $1e42


    ld a, [$cfc0]
    or a
    jp nz, $3ad9

    call $250c
    jp c, $3ad9

    jp $1e39


    ret c

    ld b, l
    xor c
    ld [hl], a
    call nz, $1177
    ld a, b
    ld de, $1178
    ld a, b
    ld de, $2278
    ld a, b
    dec hl
    ld a, b
    ld a, $78
    ld d, [hl]
    ld a, b
    sub a
    ld a, b
    db $d3
    ld a, b
    rst $30
    ld a, b
    rst $30
    ld a, b
    ret c

    ld b, l
    rst $38
    ld a, b
    ld b, $79
    dec c
    ld a, c
    rrca
    ld a, c
    ld de, $1379
    ld a, c
    dec d
    ld a, c
    ret c

    ld b, l
    rla
    ld a, c
    inc a
    ld a, c
    ld c, l
    ld a, c
    ld d, l
    ld a, c
    ld [hl], h
    ld a, c
    add l
    ld a, c
    and b
    ld a, c
    ld e, $44
    ld a, [de]
    rst $00
    sub c
    ld l, a
    add hl, de
    ld [hl], b
    ld e, $42
    ld a, [de]
    rst $00
    sbc a
    ld l, a
    xor a
    ld l, a
    rst $00
    ld l, a
    rst AddAToHL
    ld l, a
    rst $28
    ld l, a
    call $196b
    jp nz, $3ad9

    ld a, $1c
    call $30c7
    jp nz, $3ad9

    jr jr_00a_6ffd

    call $196b
    jp nz, $3ad9

    ld a, $1d
    call $30c7
    jp nz, $3ad9

    ld a, $36
    call $1717
    jp nc, $3ad9

    jr jr_00a_6ffd

    call $196b
    jp z, $3ad9

    ld a, $1e
    call $30c7
    jp nz, $3ad9

    jr jr_00a_6ffd

    call $196b
    jp z, $3ad9

    ld a, $1f
    call $30c7
    jp nz, $3ad9

    ld a, $36
    call $1717
    jp nc, $3ad9

    jr jr_00a_6ffd

    call $196b
    jp z, $3ad9

    ld a, $20
    call $30c7
    jp nz, $3ad9

jr_00a_6ffd:
    ld h, d
    ld l, $44
    ld [hl], $01
    ld hl, $cfc0
    ld [hl], $00
    ld a, $50
    call $24f5
    ld e, $42
    ld a, [de]
    ld hl, $7020
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    call $250c
    jp c, $3ad9

    ret


    or h
    ld a, c
    ld [$2a79], a
    ld a, d
    scf
    ld a, d
    inc a
    ld a, d
    ld e, $44
    ld a, [de]
    rst $00
    ld [hl-], a
    ld [hl], b
    ret nz

    ld [hl], b
    ld e, $42
    ld a, [de]
    rst $00
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    ld [hl], b
    ld d, d
    ld [hl], b
    ld d, d
    ld [hl], b
    ld h, d
    ld [hl], b
    db $76
    ld [hl], b
    add [hl]
    ld [hl], b
    sub l
    ld [hl], b
    call Call_00a_70a4
    ld l, $42
    ld a, [hl]
    call Call_00a_7266
    jp Jump_00a_70c0


    call Call_00a_70a4
    ld l, $4f
    ld [hl], $fb
    ld l, $42
    ld a, [hl]
    call Call_00a_7266
    jp Jump_00a_70c0


    call Call_00a_70a4
    ld l, $4f
    ld [hl], $f0
    ld a, $04
    call Call_00a_7266
    ld a, $04
    call $25cb
    jp Jump_00a_70c0


    call Call_00a_70a4
    ld a, $04
    call Call_00a_7266
    ld a, $01
    call $25cb
    jp Jump_00a_70c0


    call Call_00a_70a4
    ld l, $4f
    ld [hl], $00
    ld a, $05
    call $25cb
    jp Jump_00a_70c0


    call Call_00a_70a4
    ld l, $4f
    ld [hl], $00
    ld a, $06
    call $25cb
    jp Jump_00a_70c0


Call_00a_70a4:
    call $15e9
    call $1df1
    call $26ac
    call Call_00a_71ba
    call $239b
    ld l, $50
    ld [hl], $50
    ld l, $4f
    ld [hl], $f8
    ld l, $48
    ld [hl], $ff
    ret


Jump_00a_70c0:
    ld e, $42
    ld a, [de]
    rst $00
    call nc, $d470
    ld [hl], b
    call nc, $d470
    ld [hl], b
    sub [hl]
    ld [hl], c
    sub [hl]
    ld [hl], c
    or h
    ld [hl], c
    or h
    ld [hl], c
    ld e, $45
    ld a, [de]
    rst $00
    ld [c], a
    ld [hl], b
    dec d
    ld [hl], c
    ld [hl], $71
    ld d, l
    ld [hl], c
    sub e
    ld [hl], c
    call Call_00a_71ee
    call Call_00a_7220
    call Call_00a_720a
    call c, Call_00a_7232
    jp nc, Jump_00a_71b7

    ld h, d
    ld l, $45
    ld [hl], $01
    ld l, $47
    ld [hl], $28
    ld l, $42
    ld a, [hl]
    cp $02
    jr nz, jr_00a_7105

    ld a, $00   ; xor a
    jr jr_00a_710f

jr_00a_7105:
    cp $03
    jr nz, jr_00a_710d

    ld a, $01
    jr jr_00a_710f

jr_00a_710d:
    ld a, $02

jr_00a_710f:
    call $25cb
    jp Jump_00a_71b7


    call Call_00a_71ce
    call Call_00a_71b7
    call $238c
    ret nz

    ld l, $45
    inc [hl]
    ld l, $47
    ld [hl], $28

Call_00a_7126:
    ld hl, $cfc6
    inc [hl]
    ld a, [hl]
    cp $02
    ret nz

    ld [hl], $00
    ld hl, $cfc0
    set 0, [hl]
    ret


    call Call_00a_71ce
    call Call_00a_71b7
    ld a, [$cfc0]
    bit 0, a
    ret nz

    call $238c
    ret nz

    ld l, $45
    inc [hl]
    ld l, $48
    ld [hl], $ff
    ld l, $42
    ld a, [hl]
    add $04
    jp Jump_00a_7266


    ld e, $42
    ld a, [de]
    cp $02
    jr c, jr_00a_7167

jr_00a_715c:
    call Call_00a_71ee
    call Call_00a_720a
    call c, Call_00a_7232
    jr c, jr_00a_717a

jr_00a_7167:
    call Call_00a_71ee
    ld e, $42
    ld a, [de]
    cp $04
    call nz, Call_00a_7220
    call Call_00a_720a
    call c, Call_00a_7232
    jr nc, jr_00a_71b7

jr_00a_717a:
    ld e, $42
    ld a, [de]
    cp $02
    jr c, jr_00a_7185

    cp $04
    jr c, jr_00a_718b

jr_00a_7185:
    call Call_00a_7126
    jp $3ad9


jr_00a_718b:
    call Call_00a_7126
    ld h, d
    ld l, $45
    inc [hl]
    ret


    jp Jump_00a_71b7


    ld e, $45
    ld a, [de]
    rst $00
    sbc [hl]
    ld [hl], c
    or d
    ld [hl], c
    call Call_00a_71ce
    call Call_00a_71b7
    ld a, [$cfc0]
    bit 0, a
    ret z

    call $23a0
    ld l, $48
    ld [hl], $ff
    ret


    jr jr_00a_715c

    jp Jump_00a_71b7


Call_00a_71b7:
Jump_00a_71b7:
jr_00a_71b7:
    jp $25b8


Call_00a_71ba:
    ld e, $42
    ld a, [de]
    ld hl, $71c6
    rst AddAToHL
    ld a, [hl]
    ld e, $5c
    ld [de], a
    ret


    ld [bc], a
    ld bc, $0102
    nop
    ld bc, $0102

Call_00a_71ce:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld hl, $71e6
    rst AddAToHL
    ld e, $4f
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop

Call_00a_71ee:
    ld h, d
    ld l, $7c
    ld a, [hl]
    add a
    ld b, a
    ld e, $7f
    ld a, [de]
    ld l, a
    ld e, $7e
    ld a, [de]
    ld h, a
    ld a, b
    rst AddAToHL
    ld b, [hl]
    inc hl
    ld c, [hl]
    call $1e62
    ld e, $49
    ld [de], a
    jp $1fdb


Call_00a_720a:
    call Call_00a_7253
    ld l, $4b
    ld a, [bc]
    sub [hl]
    add $01
    cp $05
    ret nc

    inc bc
    ld l, $4d
    ld a, [bc]
    sub [hl]
    add $01

jr_00a_721d:
    cp $05
    ret


Call_00a_7220:
    ld h, d
    ld l, $49
    ld a, [hl]
    swap a
    and $01
    xor $01
    ld l, $48
    cp [hl]
    ret z

    ld [hl], a
    jp $25cb


Call_00a_7232:
    call Call_00a_7242
    ld h, d
    ld l, $7d
    ld a, [hl]
    ld l, $7c
    inc [hl]
    cp [hl]
    ret nc

    ld [hl], $00
    scf
    ret


Call_00a_7242:
    call Call_00a_7253
    ld l, $4a
    xor a
    ld [hli], a
    ld a, [bc]

jr_00a_724a:
    ld [hl], a
    inc bc
    ld l, $4c
    xor a
    ld [hli], a
    ld a, [bc]
    ld [hl], a
    ret


Call_00a_7253:
    ld h, d
    ld l, $7c
    ld a, [hl]
    add a
    push af
    ld e, $7f
    ld a, [de]
    ld c, a
    ld e, $7e
    ld a, [de]
    ld b, a
    pop af
    call $006d
    ret


Call_00a_7266:
Jump_00a_7266:
    add a
    add a
    ld hl, $7279
    rst AddAToHL
    ld e, $7f
    ld a, [hli]
    ld [de], a
    ld e, $7e

jr_00a_7272:
    ld a, [hli]
    ld [de], a
    ld e, $7d
    ld a, [hli]
    ld [de], a
    ret


    sbc c
    ld [hl], d
    ld [$ab00], sp
    ld [hl], d
    ld [$e500], sp
    ld [hl], d
    dec bc

jr_00a_7284:
    nop
    db $fd
    ld [hl], d
    dec bc
    nop
    cp l
    ld [hl], d
    add hl, bc
    nop
    pop de
    ld [hl], d
    add hl, bc
    nop
    dec d
    ld [hl], e
    inc b
    nop
    rra
    ld [hl], e
    inc b
    nop
    ld [hli], a
    ld l, b
    jr z, jr_00a_721d

    ld l, $8a
    inc [hl]
    sub b
    ld a, [hl-]
    adc d
    ld b, b
    add b
    ld b, [hl]
    ld l, b
    ld c, d
    ld d, b
    ld d, b
    jr z, jr_00a_72ce

    jr c, jr_00a_72d6

    jr nz, jr_00a_72de

    ld d, $34
    db $10
    ld a, [hl-]
    ld d, $40
    jr nz, @+$48

    jr c, jr_00a_7304

    ld d, b
    ld d, b
    ld a, b
    ld d, h
    jr jr_00a_7318

    ld c, $60
    ld [$0c68], sp
    ld [hl], d
    jr @+$7a

    jr z, jr_00a_724a

    ld c, b
    adc b
    ld l, b
    sub b

jr_00a_72ce:
    add b
    and b
    and b
    ld d, h
    adc b
    ld e, b
    sub d
    ld h, b

jr_00a_72d6:
    sbc b
    ld l, b
    sub h
    ld [hl], d
    adc b
    ld a, b
    ld a, b
    add b

jr_00a_72de:
    ld e, b
    adc b
    jr c, jr_00a_7272

    jr nz, jr_00a_7284

    nop
    ld bc, $2940
    jr @+$3b

    db $10
    ld b, l
    inc c
    ld d, c
    db $10
    ld h, c
    jr jr_00a_7363

    jr z, @+$79

    jr c, jr_00a_736f

    ld c, b
    ld [hl], a
    ld e, b
    ld [hl], c
    ld l, b
    ld h, c
    ld a, b
    ld bc, $2960
    adc b
    add hl, sp
    sub b
    ld b, l

jr_00a_7304:
    sub h
    ld d, c
    sub b
    ld h, c
    adc b
    ld [hl], c
    ld a, b
    ld [hl], a
    ld l, b
    ld a, c
    ld e, b
    ld [hl], a
    ld c, b
    ld [hl], c
    jr c, jr_00a_7375

    jr z, @+$5f

    sub b
    ld c, l

jr_00a_7318:
    sbc b
    add hl, sp
    sub b
    dec l
    ld a, b
    add hl, hl
    ld h, b
    ld e, l
    db $10
    ld c, l
    ld [$1039], sp
    dec l
    jr z, @+$2b

    ld b, b
    ld e, $44
    ld a, [de]
    rst $00
    ld sp, $5573
    ld [hl], e
    ld a, $01
    ld [de], a
    call $1956
    bit 6, a
    jp nz, $3ad9

    set 6, [hl]
    call $10ce
    ld a, $09
    ld [$c6df], a
    xor a
    ld [$cba0], a
    ld a, $78
    ld e, $46
    ld [de], a
    ld bc, $5878
    jp $291f


    ld e, $45
    ld a, [de]
    rst $00
    ld e, a
    ld [hl], e
    ld [hl], l
    ld [hl], e
    sub a
    ld [hl], e
    call $2387
    ret nz

jr_00a_7363:
    call $23a0
    ld l, $46
    ld [hl], $08
    ld hl, $cbb3
    ld [hl], $00

jr_00a_736f:
    ld hl, $cbba
    ld [hl], $ff
    ret


jr_00a_7375:
    ld e, $46
    ld a, [de]
    or a
    jr nz, jr_00a_7383

    call $29f4
    ld hl, $d01a
    set 7, [hl]

jr_00a_7383:
    call $2387
    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    call $23a0
    ld a, $03
    jp $315c


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    ld [$cca4], a
    ld [$cc02], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    xor [hl]
    ld [hl], e
    ei
    ld [hl], e
    call $196b
    jp z, $3ad9

    call Call_00a_740a
    ld e, $42
    ld a, [de]
    cp $03
    jr z, jr_00a_73cb

    ld hl, $73f6
    rst AddAToHL
    ld e, $7e
    ld a, [de]
    cp [hl]
    jp nz, $3ad9

    jr jr_00a_73d3

jr_00a_73cb:
    ld a, $13
    call $30c7
    jp nz, $3ad9

jr_00a_73d3:
    call $15e9
    call $239b
    ld e, $42
    ld a, [de]
    ld hl, $7432
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    ld a, $3a
    call $24f5
    call $1e15
    ld a, $02
    call $25cb
    jp Jump_00a_7407


    nop
    ld bc, $0002
    inc bc
    call $250c
    ld e, $7f
    ld a, [de]
    or a
    jr nz, jr_00a_7407

    jp $2646


Jump_00a_7407:
jr_00a_7407:
    jp $25b8


Call_00a_740a:
    ld a, $13
    call $30c7
    jr nz, jr_00a_742c

    ld a, $40
    call $1717
    jr c, jr_00a_7419

    xor a

jr_00a_7419:
    cp $10
    jr nc, jr_00a_7428

    cp $04
    jr nc, jr_00a_7424

    xor a
    jr jr_00a_742e

jr_00a_7424:
    ld a, $01
    jr jr_00a_742e

jr_00a_7428:
    ld a, $02
    jr jr_00a_742e

jr_00a_742c:
    ld a, $03

jr_00a_742e:
    ld e, $7e
    ld [de], a
    ret


    ld b, c
    ld a, d
    ld d, c
    ld a, d
    ld h, c
    ld a, d
    ld [hl], c
    ld a, d
    ld a, a
    ld a, d
    ld e, $44
    ld a, [de]
    rst $00
    ld b, h
    ld [hl], h
    ld sp, hl
    ld [hl], h
    ld a, $01
    ld [de], a
    call $15e9
    call $1e03
    call $1e39
    ld e, $42
    ld a, [de]
    ld b, a
    ld hl, $74cb
    rst AddAToHL
    ld a, [hl]
    ld e, $46
    ld [de], a
    ld a, b
    ld hl, $74d3
    rst JumpTable
    ld b, [hl]
    inc hl
    ld a, [hl]
    ld c, a
    ld e, $76
    ld [de], a
    call $1e62
    ld e, $49
    ld [de], a
    ld e, $50
    ld a, $28
    ld [de], a
    ld e, $42
    ld a, [de]
    rst $00
    add a
    ld [hl], h
    sub h
    ld [hl], h
    sub h
    ld [hl], h
    and c
    ld [hl], h
    xor h
    ld [hl], h
    xor h
    ld [hl], h

jr_00a_7483:
    xor h
    ld [hl], h
    push bc
    ld [hl], h
    ld e, $49
    ld a, $04
    ld [de], a
    ld h, d
    ld l, $46
    ld [hl], $e0
    inc hl
    ld [hl], $01

Call_00a_7494:
Jump_00a_7494:
    ld e, $42
    ld a, [de]
    ld hl, $74e3
    rst JumpTable
    ld c, [hl]
    inc hl
    ld b, [hl]
    jp $2358


    call Call_00a_7494
    ld e, $50
    ld a, $3c
    ld [de], a
    jp Jump_00a_74b4


    call Call_00a_7494
    ld e, $50
    ld a, $0a
    ld [de], a

Jump_00a_74b4:
    ld e, $42
    ld a, [de]
    sub $03
    ld hl, $74f1
    rst JumpTable
    ld e, $4f
    ld a, [hli]
    ld [de], a
    dec e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $7a81
    jp $24fe


    and $5a
    ld a, b
    cp [hl]
    ret z

    jp nc, $fadc

    ld e, b
    jr c, @+$4a

    ld b, b
    ld c, h
    ld h, b
    ld c, b
    ld a, b
    ld a, [de]
    inc l
    db $10
    jr c, jr_00a_74ea

    ld b, h
    jr jr_00a_7483

    ld b, b
    rst $38
    ldh [$fe], a
    nop
    rst $38
    ret nz

jr_00a_74ea:
    rst $38
    ld [hl], $00
    ld [hl], $00
    ld [hl], $00
    add sp, -$01
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ld e, $45
    ld a, [de]
    rst $00
    inc bc
    ld [hl], l
    dec c
    ld [hl], l
    ld e, [hl]
    ld [hl], l
    call $2387
    ret nz

    call $1e42
    jp $23a0


    call $25b8
    call $1fdb
    ld h, d
    ld l, $4d
    ld a, [hl]
    ld l, $76
    cp [hl]
    jr nz, jr_00a_752b

    call $23a0
    ld l, $4f
    ld [hl], $00
    ld l, $42
    ld a, [hl]
    add a
    inc a
    jp $25cb


jr_00a_752b:
    ld e, $42
    ld a, [de]
    rst $00
    ccf
    ld [hl], l
    ccf
    ld [hl], l
    ccf
    ld [hl], l
    ld c, d
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, c
    ld [hl], l
    ld c, $20
    call $1f04
    ret nz

    ld e, $42
    jp Jump_00a_7494


    ld c, $10

jr_00a_754c:
    ld e, $77
    ld a, [de]
    or a
    ret nz

    call $1f04
    ret nz

    ld h, d
    ld l, $77
    inc [hl]
    ret


    ld c, $01
    jr jr_00a_754c

    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_00a_7573

    ld b, a
    ld h, d
    ld l, $46
    call $0237
    jr nz, jr_00a_757f

    ld hl, $cfdf
    ld [hl], $01
    ret


jr_00a_7573:
    cp $07
    jr nz, jr_00a_757f

    call $250c
    ld e, $47
    ld a, [de]
    or a
    ret z

jr_00a_757f:
    jp $25b8


    ld e, $42
    ld a, [de]
    rst $00
    jp $8e75


    ld [hl], l
    adc [hl]
    ld [hl], l
    and l
    ld [hl], l
    ld e, $44
    ld a, [de]
    rst $00
    sub [hl]
    ld [hl], l
    sbc a
    ld [hl], l
    call Call_00a_7867
    ld l, $43
    ld a, [hl]
    call $25cb
    call $250c
    jp Jump_00a_7886


    ld e, $44
    ld a, [de]
    rst $00
    xor l
    ld [hl], l
    or b
    ld [hl], l
    call Call_00a_7867
    call $250c
    jp c, $3ad9

    jp Jump_00a_7886


    ld e, $42
    ld a, [de]
    rst $00
    jp $2c75


    db $76
    inc l
    db $76
    ld e, $44
    ld a, [de]
    rst $00
    pop de
    ld [hl], l
    jp c, $ec75

    ld [hl], l
    nop
    db $76
    dec e
    db $76
    call Call_00a_7867
    ld l, $43
    ld a, [hl]
    call $25cb
    call $250c
    call Call_00a_7886
    ld a, [$cfc0]
    bit 7, a
    ret z

    call Call_00a_788e
    jp $239b


    call $250c
    call Call_00a_7886
    call Call_00a_7862
    ret nz

    ld l, $44
    inc [hl]
    ld l, $7c
    ld [hl], $0a
    jp Jump_00a_78c3


    call $250c
    call Call_00a_7886
    call Call_00a_7862
    ret nz

    ld l, $44
    inc [hl]
    ld l, $50
    ld [hl], $28
    ld l, $7c
    ld [hl], $58
    call $78b3
    ld a, $d2
    jp $0c74


    call Call_00a_7862
    jp z, $3ad9

    call $1fdb
    call $250c
    jp Jump_00a_7886


    ld e, $44
    ld a, [de]
    rst $00
    inc [hl]
    db $76
    ld d, b
    db $76
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $42
    ld a, [hl]
    ld b, $02
    cp $03
    jr z, jr_00a_7646

    ld b, $00

jr_00a_7646:
    ld l, $5c
    ld [hl], b
    ld l, $46
    ld [hl], $78
    jp $1dfa


    ld e, $45
    ld a, [de]
    rst $00
    ld l, h
    db $76
    add [hl]
    db $76
    xor b
    db $76
    or d
    db $76
    ret z

    db $76
    sub $76
    ld [hl], l
    ld [hl], a
    adc h
    ld [hl], a
    and d
    ld [hl], a
    or c
    ld [hl], a
    rst $00
    ld [hl], a
    db $db
    ld [hl], a
    call $2387
    ret nz

    ld [hl], $66
    ld l, $50
    ld [hl], $32
    ld l, $49
    ld [hl], $18
    call $23a0

Call_00a_767d:
Jump_00a_767d:
    ld e, $49
    ld a, [de]
    call $26a3
    jp $25cb


    call Call_00a_769f
    call $2387
    ret nz

    call $041a
    and $0f
    add $1e
    ld [hl], a
    ld l, $49
    ld [hl], $08
    call Call_00a_767d
    jp $23a0


Call_00a_769f:
    call $25b8
    call $25b8
    jp $1fdb


    call $2387
    ret nz

    call Call_00a_77eb
    jp $23a0


    call Call_00a_77e5
    ld a, [$cfd0]
    cp $01
    ret nz

    ld e, $4f
    ld a, [de]
    or a
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $1e
    ret


    call $2387
    ret nz

    ld l, $50
    ld [hl], $50
    call Call_00a_772e
    jp $23a0


    ld a, [$cfd0]
    cp $02
    jr nz, jr_00a_76f1

    ld e, $4f
    ld a, [de]
    or a
    jr nz, jr_00a_76f1

    call $23a0
    ld l, $46
    ld [hl], $0a
    ld l, $49
    ld [hl], $18
    jp Jump_00a_767d


jr_00a_76f1:
    ld e, $77
    ld a, [de]
    rst $00
    ei
    db $76
    ld [de], a
    ld [hl], a
    ld e, $77
    call Call_00a_769f
    call $2387
    ret nz

    ld [hl], $0a
    ld l, $77
    inc [hl]
    cp $68
    ld a, $01
    jr c, jr_00a_770f

    ld a, $03

jr_00a_770f:
    jp $25cb


    call $2387
    ret nz

    ld [hl], $1e
    ld l, $77
    inc [hl]
    jp Jump_00a_77eb


    call Call_00a_77e5
    call $2387
    ret nz

    xor a
    ld l, $4e
    ld [hli], a
    ld [hl], a
    ld l, $77
    ld [hl], $00

Call_00a_772e:
    ld e, $42
    ld a, [de]
    dec a
    ld b, a
    swap a
    sra a
    add b
    ld hl, $775a
    rst AddAToHL
    ld e, $47
    ld a, [de]
    rst JumpTable
    ld a, [hli]
    ld b, [hl]
    inc l
    ld e, $46
    ld [de], a
    ld e, $49
    ld a, b
    ld [de], a
    ld e, $47
    ld a, [de]
    ld b, a
    inc b
    ld a, [hl]
    or a
    jr nz, jr_00a_7755

    ld b, $00

jr_00a_7755:
    ld a, b
    ld [de], a
    jp Jump_00a_767d


    ld a, [de]
    add hl, bc
    ld d, $1f
    rla
    rla
    inc c
    rrca
    nop
    inc c
    add hl, bc
    jr @+$0c

    ld d, $18
    ld [de], a
    rra
    nop
    dec e
    ld [$1619], sp
    jr jr_00a_777c

    ld b, $01
    nop
    call $2387
    ret nz

    ld e, $42
    ld a, [de]

jr_00a_777c:
    ld b, $34
    cp $03
    jr z, jr_00a_7784

    ld b, $20

jr_00a_7784:
    ld [hl], b
    ld l, $50
    ld [hl], $3c
    jp $23a0


    call Call_00a_769f
    call $2387
    ret nz

    call $041a
    and $07
    inc a
    ld [hl], a
    ld a, $01
    call $25cb
    jp $23a0


    ld a, [$cfd0]
    cp $03
    ret nz

    call $2387
    ret nz

    call $23a0
    jr jr_00a_77eb

    call Call_00a_77e5
    ld a, [$cfd0]
    cp $04
    ret nz

    ld e, $4f
    ld a, [de]
    or a
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $0c
    ret


    call $2387
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $50
    ld l, $50
    ld [hl], $3c
    ld a, $03
    jp $25cb


    call Call_00a_769f
    call $2387
    jp z, $3ad9

    ret


Call_00a_77e5:
    ld c, $20
    call $1f04
    ret nz

Call_00a_77eb:
Jump_00a_77eb:
jr_00a_77eb:
    ld bc, $ff20
    jp $2358


    ld e, $42
    ld a, [de]
    rst $00
    jp $ff75


    ld [hl], a
    rra
    ld a, b
    inc l
    db $76
    inc [hl]
    ld a, b
    ld e, $44
    ld a, [de]
    rst $00
    rlca
    ld a, b
    add hl, de
    ld a, b
    call Call_00a_7867
    ld e, $41
    ld a, [de]
    cp $bd
    jr nz, jr_00a_7819

    ld a, $01
    ld e, $7b
    ld [de], a
    call $25cb

jr_00a_7819:
    call $250c
    jp $2686


    ld e, $44
    ld a, [de]
    rst $00
    daa
    ld a, b
    add hl, de
    ld a, b
    call Call_00a_7867
    ld a, $02
    ld e, $7b
    ld [de], a
    call $25cb
    jr jr_00a_7819

    ld e, $44
    ld a, [de]
    rst $00
    inc a
    ld a, b
    ld e, h
    ld a, b
    call $196b
    jp z, $3ad9

    call Call_00a_78ce
    ld e, $78
    ld a, [de]
    or a
    jp z, $3ad9

    call $15e9
    call $239b
    ld l, $7e
    ld [hl], $02
    ld hl, $5779
    call $24fe
    call $250c
    jp $2646


Call_00a_7862:
    ld h, d
    ld l, $7c
    dec [hl]
    ret


Call_00a_7867:
    call $15e9
    ld e, $41
    ld a, [de]
    sub $ba
    ld hl, $78e1
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $24fe
    call $1e1e
    jp $239b


Call_00a_7886:
Jump_00a_7886:
    ld e, $7d
    ld a, [de]
    or a
    ret nz

    jp $25b8


Call_00a_788e:
    ld e, $41
    ld a, [de]
    sub $ba
    ld hl, $78a9
    rst JumpTable
    ld a, [hli]
    ld e, $7c
    ld [de], a
    ld a, [hl]
    ld e, $49
    ld [de], a
    add $04
    and $18
    swap a
    rlca
    jp $25cb


    ld d, b
    ld e, $01
    ld [bc], a
    inc a
    ld d, $28
    inc e
    ld a, b
    jr @-$31

    add $3a
    ret nz

    ld [hl], $4b
    inc l
    ld [hl], $02
    ld l, $46
    ld [hl], $78
    jp $21fd


Jump_00a_78c3:
    call $3ea7
    ret nz

    ld [hl], $27
    inc l
    inc [hl]
    jp $21fd


Call_00a_78ce:
    ld a, $40
    call $1717
    jr c, jr_00a_78d6

    xor a

jr_00a_78d6:
    ld h, d
    ld l, $78
    cp $07
    ld [hl], $00
    ret c

    ld [hl], $01
    ret


    db $eb
    ld a, b
    di
    ld a, b
    push af
    ld a, b
    ei
    ld a, b
    ld bc, $9179
    ld a, d
    sub d
    ld a, d
    sub c
    ld a, d
    or a
    ld a, d
    sub c
    ld a, d
    sub c
    ld a, d
    add $7a
    push de
    ld a, d
    sub c
    ld a, d
    jp c, $df7a

    ld a, d
    sub c
    ld a, d
    db $e4
    ld a, d
    jp hl


    ld a, d
    ld e, $44
    ld a, [de]
    rst $00
    rrca
    ld a, c
    inc e
    ld a, c
    call $15e9
    call $239b
    ld l, $46
    ld [hl], $3c
    jp $1e15


    ld e, $45
    ld a, [de]
    rst $00
    ld h, $79
    dec sp
    ld a, c
    ld e, c
    ld a, c
    call $2387
    jr z, jr_00a_7935

    ld a, [$cc00]
    rrca
    jp nc, $1e39

    jp $1e42


jr_00a_7935:
    ld l, $45
    inc [hl]
    jp $1e42


    ld h, d
    ld l, $42
    ld a, [hl]
    or a
    jr nz, jr_00a_7950

    ld a, [$cfc0]
    bit 0, a
    ret z

    ld l, $45
    inc [hl]
    ld a, $02
    jp $25cb


jr_00a_7950:
    ld a, [$cfc0]
    bit 7, a
    jp nz, $3ad9

    ret


    ld a, [$cfc0]
    bit 1, a
    jp nz, $3ad9

    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld l, d
    ld a, c
    add a
    ld a, c
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $46
    ld [hl], $86
    inc l
    ld [hl], $01
    ld l, $76
    ld [hl], $06
    ld l, $49
    ld [hl], $15
    ld l, $50
    ld [hl], $78
    jp $1e27


    ld e, $45
    ld a, [de]
    rst $00
    sub c
    ld a, c
    sbc a
    ld a, c
    xor e
    ld a, c
    ld h, d
    ld l, $46
    call $0237
    ret nz

    ld l, $46
    ld [hl], $28
    jp $23a0


    call Call_00a_79bc
    jr nz, jr_00a_79c5

    ld l, $60
    ld [hl], $01
    jp $23a0


    call $25b8
    call Call_00a_79d1
    call $1fdb
    ld e, $61
    ld a, [de]
    inc a
    jp z, $3ad9

    ret


Call_00a_79bc:
    call Call_00a_79d1
    call $1fdb
    jp $2387


jr_00a_79c5:
    ret


    ld a, [$cc00]
    and $01
    jp z, $1e39

    jp $1e42


Call_00a_79d1:
    ld h, d
    ld l, $76
    dec [hl]
    ret nz

    ld [hl], $06
    ld bc, $8405
    jp $24b1


    ld e, $44
    ld a, [de]
    rst $00
    and $79
    push af
    ld a, c
    ld a, $01
    ld [de], a
    call $15e9
    ld hl, $7aee
    call $24fe
    jp $2686


    call $250c
    jp $2686


    ld e, $44
    ld a, [de]
    rst $00
    inc bc
    ld a, d
    cpl
    ld a, d
    call $23be
    jr nz, jr_00a_7a23

    ld a, $22
    call $30c7
    jp z, $3ad9

    ld a, $23
    call $30c7
    jp nz, $3ad9

    ld hl, $63dd
    ld e, $15
    call $008a
    jp $23a0


jr_00a_7a23:
    call $268f
    call $239b
    ld hl, $7aff
    call $24fe
    jp $250c


    call Call_00a_7a68
    ld a, $00   ; xor a
    jr nz, jr_00a_7a41

    call Call_00a_7a7b
    jp z, $3ad9

    ld a, $01

jr_00a_7a41:
    ld hl, $7a8e
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld b, [hl]
    inc l
    push de
    ld d, h
    ld e, l

jr_00a_7a4d:
    call $3ac6
    jr nz, jr_00a_7a64

    ld a, [de]
    ld [hli], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld l, $4b
    ld a, [de]
    ld [hli], a
    inc de
    inc l
    ld a, [de]
    ld [hl], a
    inc de
    dec b
    jr nz, jr_00a_7a4d

jr_00a_7a64:
    pop de
    jp $3ad9


Call_00a_7a68:
    call $196b
    ret z

    ld a, $19

jr_00a_7a6e:
    call $30c7
    jp z, Jump_00a_7a76

    xor a
    ret


Jump_00a_7a76:
    ld a, $1e
    jp $30c7


Call_00a_7a7b:
    call $196b
    ret z

    ld a, $1f
    call $30c7
    jp z, Jump_00a_7a89

    xor a
    ret


Jump_00a_7a89:
    ld a, $19
    jp $30c7


    sub d
    ld a, d
    and a
    ld a, d
    dec b
    ld b, h
    rlca
    jr z, @+$4a

    sbc l
    ld [bc], a
    jr nc, jr_00a_7afb

    cp h
    ld bc, $6048
    cp [hl]
    ld bc, $3048
    cp l
    ld bc, $3030
    inc bc
    cp h
    ld [bc], a
    ld c, b
    ld h, b
    cp [hl]
    ld [bc], a
    ld c, b
    jr nc, jr_00a_7a6e

    ld [bc], a
    jr nc, jr_00a_7ae4

    ld e, $44
    ld a, [de]
    rst $00
    cp [hl]
    ld a, d
    rst $08
    ld a, d
    ld a, [c]
    ld a, d
    call $1956
    and $20
    jp nz, $3ad9

    call $239b
    ld bc, $7b16
    jp Jump_00a_7b3b


    ld a, [$ccba]
    or a
    ret z

    ld a, $f1
    call Call_00a_7aea
    ld a, $4d
    call $0c74
    ld e, $47
    ld a, $20
    ld [de], a
    dec e

jr_00a_7ae4:
    ld a, $10
    ld [de], a
    jp $239b


Call_00a_7aea:
    ld c, $2c
    call $3a52
    jp $24ad


    ld a, [$cc00]
    rrca
    ret c

    call $2387
    ret nz

jr_00a_7afb:
    inc l
    ld a, [hl-]
    ld [hli], a
    rrca
    cp $04
    jr z, jr_00a_7b04

    ld [hl], a

jr_00a_7b04:
    call Call_00a_7b42
    ld a, [hli]
    ld c, a
    call Call_00a_7b49
    ld a, c
    or a
    jp z, $3ad9

    ld a, $f4
    jp $224c


    sbc l
    adc l
    adc h
    sbc e
    ld a, e
    adc d
    adc c
    sbc b
    ld [hl], a
    db $76
    add [hl]
    sub [hl]
    ld [hl], h
    add e
    ld [hl], d
    add c
    ld h, c
    ld hl, $2211
    ld d, d
    inc sp
    inc d
    ld b, h
    dec [hl]
    dec d
    ld d, $47
    scf
    daa
    rla
    jr jr_00a_7b7f

    ld c, c
    add hl, sp
    add hl, de
    nop

Jump_00a_7b3b:
    ld h, d
    ld l, $58
    ld [hl], c
    inc l
    ld [hl], b
    ret


Call_00a_7b42:
    ld h, d
    ld l, $58
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ret


Call_00a_7b49:
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld e, a
    ld a, e
    ld l, b
    ld a, e
    add [hl]
    ld a, e
    and c
    ld a, e
    call $3e7b
    ld bc, $ea12
    cp e
    call z, $e9c3
    dec d
    ld a, [$ccbc]
    or a
    ret z

    ld a, $81
    ld [$cbca], a
    ld [$cca4], a
    call $239b
    call $26ac
    ld l, $50
    ld [hl], $0a

jr_00a_7b7f:
    ld l, $46
    ld [hl], $20
    jp $1e15


    call $2387
    jp nz, $1fdb

    call $239b
    ld a, $05
    ld c, $01
    call $16eb
    ld a, $4c
    call $0c74
    ld bc, $001c
    jp $184b


    ld a, [$cba0]
    or a
    ret nz

    call $239b
    call $1e39
    ld e, $46
    ld a, $5a
    ld [de], a
    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $05
    inc l
    ld [hl], $03
    ld a, [$d00b]
    ld l, $4b
    ld [hli], a
    inc l
    ld a, [$d00d]
    ld [hl], a
    ld a, $fb
    jp $0c74


    call $2387
    ret nz

    call $1956
    set 5, [hl]
    ld hl, $7be4
    call $1970
    ld a, $b4
    call $0c74
    jp $3ad9


    add b
    call nc, $5400
    add e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

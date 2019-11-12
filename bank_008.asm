; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX

    ld e, $44
    ld a, [de]
    rst $00
    ld [$5140], sp
    ld b, b
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $50
    ld [hl], $14
    ld l, $42
    bit 1, [hl]
    call z, $26ac
    call Call_008_407e
    ld e, $41
    ld a, [de]
    ld hl, $4037
    rst JumpTable
    ld e, $42
    ld a, [de]
    rlca
    ld a, [hl+]
    ld e, [hl]
    call nc, $0c74
    ld a, e
    rst $00
    dec d
    ld e, $1e
    ld e, $27
    ld e, $30
    ld e, $6d
    inc bc
    ld l, l
    inc bc
    nop
    nop
    add a
    inc bc
    add a
    inc bc
    sbc b
    nop
    and l
    nop
    ld d, b
    nop
    ld [hl], e
    nop
    nop
    inc bc
    nop
    inc bc
    ld [hl], l
    ld [bc], a
    and l
    nop
    ld h, d
    ld l, $61
    bit 7, [hl]
    jp nz, $3ad9

    ld l, $42
    bit 0, [hl]
    jr z, jr_008_406c

    ld a, [$cc00]
    xor d
    rrca
    ld l, $5a
    set 7, [hl]
    jr nc, jr_008_406c

    res 7, [hl]

jr_008_406c:
    ld e, $41
    ld a, [de]
    cp $0a
    jr nz, jr_008_407b

    ld c, $60
    call $1f04
    call $1fdb

jr_008_407b:
    jp $25b8


Call_008_407e:
    ld e, $41
    ld a, [de]
    or a
    jr z, jr_008_4093

    cp $0a
    ret nz

    ld bc, $fdc0
    call $2358
    ld e, $48
    ld a, [de]
    jp $25cb


jr_008_4093:
    ld a, [$cc52]
    and $03
    or $08
    ld e, $5b
    ld [de], a
    inc e
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    xor d
    ld b, b
    ret nc

    ld b, b
    nop
    ld b, c
    call $15e9
    call $26ac
    call $239b
    ld e, $42
    ld a, [de]
    add [hl]
    ld [hl], a
    ld l, $50
    ld [hl], $0f
    dec a
    jr z, jr_008_40c5

    call $25cb
    jp $1e15


jr_008_40c5:
    inc e
    ld a, [de]
    rlca
    ld a, $59
    call nc, $0c74
    jp $1e30


    ld h, d
    ld l, $61
    bit 7, [hl]
    jr nz, jr_008_410d

    ld l, $4b
    ld a, [hl+]
    ldh [$8f], a
    add $05
    and $f0
    add $08
    ld b, a
    inc l
    ld a, [hl]
    ldh [$8e], a
    and $f0
    add $08
    ld c, a
    cp [hl]
    jr nz, jr_008_40f4

    ldh a, [$8f]
    cp b
    jr z, jr_008_40fd

jr_008_40f4:
    call $1e6f
    ld e, $49
    ld [de], a
    call $1fdb

jr_008_40fd:
    jp $25b8


    ld h, d
    ld l, $5a
    ld a, [hl]
    xor $80
    ld [hl], a
    ld l, $61
    bit 7, [hl]
    jr z, jr_008_40fd

jr_008_410d:
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    jr jr_008_4157

    dec sp
    ld b, c
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $55
    call $24f5
    ld hl, $45de
    call $24fe
    ld a, $2c
    call $30d3
    ld a, $08
    ld [$cbae], a
    ld a, $02
    ld [$cbac], a
    jp $1e27


    ld bc, $1406
    call $2495
    call $250c
    jp $25b8


    ld hl, $59b7
    ld e, $3f
    jp $008a


    ld e, $42
    ld a, [de]
    rst $00
    ld e, a
    ld b, c
    cp [hl]
    ld b, c

jr_008_4157:
    reti


    ld b, c
    di
    ld b, c
    inc bc
    ld b, d
    ld c, e
    ld b, d
    call $23b9
    jr nz, jr_008_4197

    ld a, [$cd00]
    and $02
    jp z, $3ad9

    ld a, [$d00b]
    cp $78
    jp c, $3ad9

    call $239b
    ld a, $08
    call $248d
    call $2d17
    ld a, [$cc55]
    cp $07
    jr nz, jr_008_418b

    ld a, $05
    ld [$cc31], a

jr_008_418b:
    ld a, [$cc55]
    cp $08
    jr nz, jr_008_4197

    ld a, $01
    ld [$cc33], a

jr_008_4197:
    call $1bf4
    ret nc

    ld a, [$cc55]
    ld hl, $41ae
    rst $10
    ld c, [hl]
    ld b, $02
    call $184b
    call $10ce
    jp $3ad9


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    call $268f
    ld e, $44
    ld a, [de]
    rst $00
    ret


    ld b, c
    jp nc, $3e41

    ld bc, $2112
    ld l, h
    ld b, [hl]
    call $24fe

jr_008_41d2:
    call $250c
    jp c, $3ad9

    ret


    ld e, $44
    ld a, [de]
    rst $00
    db $e3
    ld b, c
    jp nc, $ee41

    ld b, c
    ld a, $01
    ld [de], a
    ld hl, $4672
    call $24fe
    jr jr_008_41d2

    call $261d
    jr jr_008_41d2

    call $23b9
    jr nz, jr_008_41d2

    ld a, $01
    ld [de], a
    ld hl, $4680
    call $24fe
    jr jr_008_41d2

    call $268f
    call $1956
    bit 7, a
    jp nz, $3ad9

    ld a, [$cc30]
    or a
    ret nz

    ld a, $4d
    call $0c74
    call $1956
    set 7, [hl]
    ld bc, $cfaf

jr_008_4220:
    ld a, [bc]
    sub $40
    cp $04
    call c, Call_008_422c
    dec c
    jr nz, jr_008_4220

    ret


Call_008_422c:
    push bc
    push hl
    ld hl, $423c
    rst $10
    ld a, [hl]
    call $3a52
    call Call_008_4240
    pop hl
    pop bc
    ret


    ld b, [hl]
    ld b, a
    ld b, h
    ld b, l

Call_008_4240:
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $4b
    jp $2077


    ld e, $44
    ld a, [de]
    rst $00
    ld d, l
    ld b, d
    ld e, [hl]
    ld b, d
    ld a, e
    ld b, d
    ld a, $01
    ld [de], a
    call $15e9
    call $1e27
    ld hl, $dd00
    ld a, [hl]
    or a
    ret nz

    ld [hl], $01
    inc l
    ld [hl], $29
    call $21fd
    ld e, $56
    ld l, $16
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld e, $44
    ld a, $02
    ld [de], a
    ret


    jp $3ad9


    call $2697
    call $268f
    ld e, $44
    ld a, [de]
    rst $00
    sub b
    ld b, d
    xor c
    ld b, d
    pop bc
    ld b, d
    sub $42
    ld h, d
    ld l, $44
    ld [hl], $01
    call $2054
    ld l, $58
    ld [hl], a
    ld c, a
    ld b, $cf
    ld a, [bc]
    inc l
    ld [hl], a
    ld a, $1d
    ld [bc], a
    ld hl, $cc30
    inc [hl]
    ret


    ld a, [$cc30]
    ld b, a
    ld e, $42
    ld a, [de]
    cp b
    ret c

    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $58
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, $cf
    ld [bc], a
    ret


    ld e, $58
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, $cf
    cp [hl]
    ret z

    ld e, $44
    ld a, $03
    ld [de], a
    ld e, $46
    ld a, $1e
    ld [de], a
    ret


    call $2387
    ret nz

    xor a
    ld [$cc30], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    db $eb
    ld b, d
    scf
    ld b, e
    ld [hl], c
    ld b, e
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $70
    ld a, [de]
    ld c, a
    ld b, $cf
    ld a, [bc]
    ld e, $71
    ld [de], a
    call $22f6
    ld a, $06
    call $248d
    call Call_008_43d2
    ld h, d
    ld l, $74
    ld a, [hl]
    and $02
    jr z, jr_008_4313

    ld e, $44
    ld a, $02
    ld [de], a

jr_008_4313:
    bit 2, [hl]
    ld a, $01
    call nz, $25cb
    ld h, d
    ld bc, $1420
    ld l, $50
    ld [hl], b
    ld l, $46
    ld [hl], c
    ld l, $49
    ld a, [hl]
    or $80
    ld [$ccc0], a
    call Call_008_43c2
    call $1e27
    ld a, $71
    call $0c74
    call $43aa
    call $1fdb
    call $261d
    call $2387
    ret nz

jr_008_4344:
    call $21e0
    jp c, $3ad9

    call $2054
    ld e, $70
    ld [de], a
    ld e, $73
    ld a, [de]
    or a
    jr z, jr_008_435f

    ld b, a
    ld e, $70
    ld a, [de]
    ld c, a
    ld a, b
    call $3a52

jr_008_435f:
    ld e, $74
    ld a, [de]
    rlca
    jr nc, jr_008_436e

    xor a
    ld [$cca4], a
    ld a, $4d
    call $0c74

jr_008_436e:
    jp $3ad9


    call $43aa
    ld e, $50
    ld a, $46
    ld [de], a
    call $1fdb
    call $261d
    call Call_008_438a
    ret z

    ld a, $50
    call $0c74
    jr jr_008_4344

Call_008_438a:
    ld e, $49
    ld a, [de]
    call $26a3
    ld hl, $43a2
    rst JumpTable
    ld e, $4b
    ld a, [de]
    add [hl]
    ld b, a
    inc hl
    ld e, $4d
    ld a, [de]
    add [hl]
    ld c, a
    jp $14a5


    ld hl, sp+$00
    nop
    ld [$0008], sp
    nop
    ld hl, sp-$06
    ld d, b
    call z, $18e6
    ret z

    call $2054
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp $0c
    ld a, $fe
    jr z, jr_008_43be

    xor a

jr_008_43be:
    ld e, $4f
    ld [de], a
    ret


Call_008_43c2:
    ld e, $70
    ld a, [de]
    ld c, a
    call $15c6
    jp nc, $3a52

    ld e, $72
    ld a, [de]
    jp $3a52


Call_008_43d2:
    ld a, [$cc49]
    ld hl, $43f5
    rst $10
    ld a, [hl]
    rst $10
    ld e, $71
    ld a, [de]
    ld b, a

jr_008_43df:
    ld a, [hl+]
    or a
    ret z

    cp b
    jr z, jr_008_43ea

    inc hl
    inc hl
    inc hl
    jr jr_008_43df

jr_008_43ea:
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    ret


    ld [$0a07], sp
    ld a, [bc]
    add hl, bc
    ld [$3e3f], sp
    sub $04
    sbc h
    ld bc, $1800
    and b
    dec e
    ld bc, $a019
    dec e
    ld bc, $a01a
    dec e
    ld bc, $a01b
    dec e
    ld bc, $a01c
    dec e
    ld bc, $a02a
    ld a, [hl+]
    ld bc, $a02c
    inc l
    ld bc, $a02d
    dec l
    ld bc, $a010
    db $10
    ld bc, $a011
    db $10
    ld bc, $a012
    db $10
    ld bc, $0d13
    db $10
    ld bc, $a025
    dec h
    ld bc, $8c2f
    cpl
    ld [bc], a
    nop
    ld e, $44
    ld a, [de]
    rst $00
    ld b, a
    ld b, h
    db $76
    ld b, h
    cp a
    ld b, h
    reti


    ld a, [hl-]
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $06
    call $248d
    ld l, $46
    ld [hl], $04
    ld a, $5f
    call $1444
    ld h, d
    ld l, $48
    xor $02
    ld [hl+], a
    swap a
    rrca
    ld [hl-], a
    ld a, [hl]
    and $01
    call $25cb
    call $308c
    call $307e
    ld a, $03
    call z, $30a3
    call $2297
    ld a, [$cc77]
    add a
    jr c, jr_008_4483

    call $261d
    ret nc

jr_008_4483:
    ld a, [$d00f]
    or a
    jr nz, jr_008_44b9

    call $1cde
    jr nc, jr_008_44b9

    call $26b2
    jr nc, jr_008_44b9

    ld a, $01
    ld [$cc81], a
    call $2387
    ret nz

    call $239b
    ld a, $81
    ld [$cc77], a
    ld hl, $d010
    ld [hl], $14
    ld l, $14
    ld [hl], $40
    inc l
    ld [hl], $fe
    call $1e5a
    xor $10
    ld [$d009], a
    ret


jr_008_44b9:
    ld e, $46
    ld a, $04
    ld [de], a
    ret


    ld hl, $d00f
    ld a, [hl]
    cp $fa
    ret c

    ld l, $15
    bit 7, [hl]
    ret nz

    ld a, $03
    ld [de], a
    ld hl, $d100
    ld [hl+], a
    ld [hl], $0a
    ld e, $48
    ld l, $08
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    call $21fd
    jp $308c


    ld e, $44
    ld a, [de]
    rst $00
    db $ed
    ld b, h
    rrca
    ld b, l
    inc e
    ld b, l
    call $239b
    ld l, $4f
    ld [hl], $fc
    ld l, $46
    ld [hl], $08
    ld l, $42
    ld a, [hl]
    ld hl, $4525
    call $1ddd
    ld e, $42
    ld [de], a
    call $15e9
    call $1e15
    ld a, $5e
    jp $0c74


    call $2387
    ret nz

    ld [hl], $14
    ld l, $4f
    ld [hl], $f8
    jp $239b


    call $2387
    ret nz

    ld [hl], $0f
    jp $3ad9


    ld sp, $3245
    ld b, l
    inc [hl]
    ld b, l
    inc [hl]
    ld b, l
    dec [hl]
    ld b, l
    inc [hl]
    ld b, l
    nop
    db $ec
    nop
    nop
    ld e, $00
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    ld [hl], h
    ld bc, $0175
    db $76
    ld bc, $0177
    nop
    ld e, $44
    ld a, [de]
    rst $00
    ld d, d
    ld b, l
    ld h, h
    ld b, l
    ld [hl], a
    ld b, l
    call $239b
    ld bc, $fe00
    call $2358
    call $26ac
    call $15e9
    jp $1e15


    ld c, $28
    call $1f04
    ld e, $55
    ld a, [de]
    bit 7, a
    ret nz

    ld e, $46
    ld a, $3c
    ld [de], a
    jp $239b


    call $2387
    ret nz

    jp $3ad9


    call $23b9
    jp nz, $250c

    ld a, $28
    call $30c7
    jr nz, jr_008_4591

    call $196b
    jp z, $3ad9

jr_008_4591:
    call $15e9
    call $1e30
    ld hl, $4685
    call $24fe
    jp $239b


    ld e, $44
    ld a, [de]
    rst $00
    xor b
    ld b, l
    rst $00
    ld b, l
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld b, a
    add a
    add b
    ld hl, $45c1
    rst $10
    ld a, [hl+]
    ld e, $70
    ld [de], a
    ld a, [hl+]
    ld e, $71
    ld [de], a
    ld a, [hl]
    inc e
    ld [de], a
    ret


    inc hl
    ldh a, [$c8]
    inc [hl]
    ld hl, sp-$38
    ld a, [$ccb4]
    cp $3c
    jr z, jr_008_45d1

    cp $3d
    ret nz

jr_008_45d1:
    ld h, d
    ld l, $70
    ld a, [hl]
    ld a, [$ccb3]
    sub [hl]
    ld b, a
    ld l, $71
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    swap a
    and $0f
    rst $10
    ld a, b
    and $0f
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    or [hl]
    ld [hl], a
    call $041a
    and $0f
    ld hl, $4617
    rst $10
    ld c, [hl]
    ld a, $26
    call $236b
    jr z, jr_008_4608

    ld a, $24
    call $236b
    jr nz, jr_008_4609

jr_008_4608:
    inc c

jr_008_4609:
    ld a, $28
    call $16eb
    ld a, [$ccb3]
    ld c, a
    ld a, $a0
    jp $3a52


    ld bc, $0404
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    call $2697
    call $268f
    ld e, $44
    ld a, [de]
    rst $00
    add hl, sp
    ld b, [hl]
    ld l, c
    ld b, [hl]
    ld [hl], h
    ld b, [hl]
    add $46
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $4d
    ld e, $7f
    ld a, [hl]
    ld [de], a
    and $07
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    ld l, $7d
    ld [hl], a
    ld l, $4b
    ld e, $7e
    ld a, [hl]
    ld [de], a
    ld l, $4b
    call $2076
    ld e, $42
    ld a, [de]
    ld hl, $476e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call Call_008_471b

Jump_008_4669:
    call $250c
    jp c, $3ad9

    ld e, $45
    xor a
    ld [de], a
    ret


    ld a, [$c4ab]
    or a
    ret nz

    ld e, $45
    ld a, [de]
    rst $00
    add c
    ld b, [hl]
    or [hl]
    ld b, [hl]
    call $14b5
    jr nc, jr_008_46f4

jr_008_4686:
    ld a, $70
    call Call_008_4743
    ld e, $49
    ld a, [de]
    ld hl, $474e
    rst $10
    ld e, $7e
    ld a, [de]
    ldh [$8c], a
    ld a, [hl+]
    ldh [$8f], a
    ld a, [hl+]
    ldh [$8e], a
    and $03
    call $3a7c
    ldh a, [$ad]
    ld d, a
    ld h, d
    ld l, $45
    inc [hl]
    ld l, $46
    ld [hl], $06
    ld l, $7e
    ld c, [hl]
    ld b, $cf
    ldh a, [$8f]
    ld [bc], a
    ret


    call $2387
    ret nz

    call Call_008_4724
    ld e, $49
    ld a, [de]
    ld hl, $474e
    rst $10
    jr jr_008_46e7

    ld e, $45
    ld a, [de]
    rst $00
    adc $46
    push de
    ld b, [hl]
    call $14b5
    jr c, jr_008_46f4

    jr jr_008_4686

    call $2387
    ret nz

    call Call_008_46ff
    call Call_008_472f
    ld e, $49
    ld a, [de]
    ld hl, $474e
    rst $10
    inc hl

jr_008_46e7:
    ld e, $7e
    ld a, [de]
    ld c, a
    ld a, [hl]
    call $3a52
    ld a, $70
    call Call_008_4743

jr_008_46f4:
    ld e, $44
    ld a, $01
    ld [de], a
    inc e
    xor a
    ld [de], a
    jp Jump_008_4669


Call_008_46ff:
    ld a, [$d00b]
    and $f0
    ld b, a
    ld a, [$d00d]
    swap a
    and $0f
    or b
    ld b, a
    ld e, $7e
    ld a, [de]
    cp b
    ret nz

    ld a, $02
    ld [$cd15], a
    jp $2a2a


Call_008_471b:
    ld e, $7e
    ld a, [de]
    ld c, a
    ld b, $ce
    ld a, [bc]
    or a
    ret nz

Call_008_4724:
    ld e, $42
    ld a, [de]
    cp $04
    ret c

    ld hl, $ccad
    inc [hl]
    ret


Call_008_472f:
    ld e, $42
    ld a, [de]
    cp $04
    ret c

    ld hl, $ccad
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ld a, [hl]
    and $7f
    ret nz

    res 7, [hl]
    ret


Call_008_4743:
    ldh [$8b], a
    call $2142
    ret nc

    ldh a, [$8b]
    jp $0c74


    and b
    ld [hl], b
    and b
    ld [hl], c
    and b
    ld [hl], d
    and b
    ld [hl], e
    and b
    ld [hl], h
    and b
    ld [hl], l
    and b
    db $76
    and b
    ld [hl], a
    and b
    ld a, b
    and b
    ld a, c
    and b
    ld a, d
    and b
    ld a, e
    ld e, [hl]
    ld a, h
    ld e, l
    ld a, l
    ld e, [hl]
    ld a, [hl]
    ld e, l
    ld a, a
    sbc a
    ld b, [hl]
    ret c

    ld b, l
    ret c

    ld b, l
    ret c

    ld b, l
    and d
    ld b, [hl]
    xor c
    ld b, [hl]
    or b
    ld b, [hl]
    or a
    ld b, [hl]
    rst $20
    ld b, [hl]
    pop af
    ld b, [hl]
    ei
    ld b, [hl]
    dec b
    ld b, a
    dec hl
    ld b, a
    ld [hl-], a
    ld b, a
    add hl, sp
    ld b, a
    ld b, b
    ld b, a
    ld c, [hl]
    ld b, a
    ld d, l
    ld b, a
    ld e, h
    ld b, a
    ld h, e
    ld b, a
    ld a, a
    ld b, a
    adc b
    ld b, a

Call_008_479a:
    ld a, [$cd00]
    cp $02
    ret z

    ld hl, $ccea
    bit 2, [hl]
    ret z

    res 2, [hl]
    push de
    ld a, $11
    call $05b6
    pop de
    ret


    call Call_008_479a
    call Call_008_47b9
    jp $2686


Call_008_47b9:
    ld e, $44
    ld a, [de]
    rst $00
    bit 0, a
    rrca
    ld c, b
    ret z

    ld c, b
    rra
    ld c, c
    dec h
    ld c, c
    sub e
    ld c, c
    and l
    ld c, b
    ld a, $01
    ld [de], a
    ld e, $40
    ld a, [de]
    or $80
    ld [de], a
    ld a, $80
    ld [$ccbc], a
    call $15e9
    ld e, $49
    ld a, $04
    ld [de], a
    ld bc, $0614
    call $2495
    ld l, $42
    ld a, [hl]
    cp $01
    jr nz, jr_008_47f9

    ld a, [$c63f]
    and $0f
    cp $0f
    jr nz, jr_008_47f9

    set 7, [hl]

jr_008_47f9:
    ld a, $53
    call $1717
    jr nc, jr_008_4805

    ld e, $7e
    ld a, $01
    ld [de], a

jr_008_4805:
    ld a, $0e
    call $24f5
    ld e, $71
    jp $1af2


    call $1832
    ld e, $71
    ld a, [de]
    or a
    jr nz, jr_008_4885

    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_008_4835

    ld e, $7d
    ld a, [de]
    or a
    jr nz, jr_008_4835

    ld bc, $3008
    call $2495
    call $1c07
    jr nc, jr_008_4835

    ld e, $44
    ld a, $03
    ld [de], a
    ret


jr_008_4835:
    ld e, $42
    ld a, [de]
    or a
    ld hl, $d00d
    jr nz, jr_008_4844

    ld e, $4d
    ld a, [de]
    cp [hl]
    jr nc, jr_008_4898

jr_008_4844:
    ld l, $0b
    ld e, $42
    ld a, [de]
    and $01
    ld c, $69
    ld b, [hl]
    ld a, $69
    jr z, jr_008_4857

    ld b, $27
    ld c, [hl]
    ld a, $27

jr_008_4857:
    ld l, a
    ld a, c
    cp b
    jr nc, jr_008_487f

    ld a, [$cc75]
    or a
    jr z, jr_008_487f

    ld a, $81
    ld [$cca4], a
    ld a, l
    ld hl, $d00b
    ld [hl], a
    ld bc, $0606
    call $2495
    ld e, $42
    ld a, [de]
    ld hl, $4ab9
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_008_490d


jr_008_487f:
    ld bc, $0614
    jp $2495


jr_008_4885:
    xor a
    ld [de], a
    call $1b07
    call Call_008_4aab
    ld a, $81
    ld [$cca4], a
    ld e, $44
    ld a, $02
    ld [de], a
    ret


jr_008_4898:
    ld a, $06
    call $248d
    ld l, $44
    ld [hl], $06
    ld l, $7d
    ld [hl], d
    ret


    ld e, $71
    ld a, [de]
    or a
    jr nz, jr_008_48b6

    ld hl, $d00d
    ld e, $4d
    ld a, [de]
    cp [hl]
    ret nc

    jp Jump_008_496e


jr_008_48b6:
    xor a
    ld [de], a
    call $1b07
    ld a, $81
    ld [$cca4], a
    ld e, $44
    ld a, $02
    ld [de], a
    jp Jump_008_4aab


    ld e, $42
    ld a, [de]
    and $80
    jr nz, jr_008_4915

    ld a, $05
    call $1717
    ld hl, $4986
    jr nc, jr_008_490d

    ld a, [$cc75]
    or a
    jr z, jr_008_48fb

    ld a, [$d019]
    ld h, a
    ld e, $7b
    ld [de], a
    ld l, $42
    ld a, [hl]
    ld e, $77
    ld [de], a
    call Call_008_4a33
    ld e, $77
    ld a, [de]
    call Call_008_4a54
    ld hl, $47b8
    jp Jump_008_490d


jr_008_48fb:
    call Call_008_4a93
    jr nz, jr_008_490d

    ld e, $42
    ld a, [de]
    cp $02
    ld hl, $47af
    jr nz, jr_008_490d

    ld hl, $47b2

Jump_008_490d:
jr_008_490d:
    ld e, $44
    ld a, $04
    ld [de], a
    jp $24fe


jr_008_4915:
    ld a, $0c
    call Call_008_4a33
    ld hl, $48ba
    jr jr_008_490d

    ld hl, $4791
    jp Jump_008_490d


    ld e, $42
    ld a, [de]
    and $80
    ld a, $0c
    call nz, Call_008_4a33
    call $250c
    ret nc

    xor a
    ld [$cca4], a
    ld e, $7f
    ld a, [de]
    or a
    jr z, jr_008_4950

    ld c, a
    xor a
    ld [de], a
    call $17b9
    ld b, c
    ld c, $00
    call $26fb
    ld a, $01
    ld [$cca4], a
    jr jr_008_496e

jr_008_4950:
    ld e, $7a
    ld a, [de]
    or a
    jr z, jr_008_496e

    inc a
    ld c, $04
    jr z, jr_008_4962

    ld c, $03
    ld a, $81
    ld [$cca4], a

jr_008_4962:
    xor a
    ld [de], a
    ld e, $7b
    ld a, [de]
    ld h, a
    ld l, $44
    ld [hl], c
    call $2b8a

Jump_008_496e:
jr_008_496e:
    ld e, $44
    ld a, $01
    ld [de], a
    ld hl, $d00d
    ld e, $4d
    ld a, [de]
    cp [hl]
    jr nc, jr_008_4984

    ld bc, $0614
    call $2495
    jr jr_008_4989

jr_008_4984:
    ld a, $06
    call $248d

jr_008_4989:
    ld a, $01
    call $25cb
    ld e, $71
    jp $1af2


    ld e, $45
    ld a, [de]
    rst $00
    sbc a
    ld c, c
    or l
    ld c, c
    ld d, $4a
    dec hl
    ld c, d
    ld a, $01
    ld [de], a
    call $041a
    and $01
    ld e, $79
    ld [de], a
    call Call_008_4a48
    xor a
    ld [$ccbc], a
    ld e, $7f
    ld [de], a
    ret


    ld e, $71
    ld a, [de]
    or a
    jr z, jr_008_49c3

    xor a
    ld [de], a
    ld hl, $496e
    jp Jump_008_490d


jr_008_49c3:
    ld a, [$ccbc]
    or a
    ret z

    ld e, $45
    xor a
    ld [de], a
    ld a, $f1
    call $15ba
    ld a, [$ccbc]
    sub l
    rlca
    xor $01
    and $01
    ld h, d
    ld l, $79
    xor [hl]
    ld l, $7c
    jr nz, jr_008_49e9

    ld [hl], a
    ld hl, $490d
    jp Jump_008_490d


jr_008_49e9:
    add [hl]
    ld [hl], a
    call $3ac6
    ld [hl], $60
    ld l, $42
    ld [hl], $28
    inc l
    ld [hl], $08
    ld l, $71
    ld [hl], $03
    ld l, $79
    ld [hl], $01
    ld e, $79
    ld a, [de]
    ld bc, $4abf
    call $006d
    ld l, $4b
    ld [hl], $20
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    ld hl, $4921
    jp Jump_008_490d


    ld e, $49
    ld a, [de]
    swap a
    and $01
    ld h, d
    ld l, $79
    xor [hl]
    jr nz, jr_008_4a2b

    call Call_008_4a48
    ld e, $45
    ld a, $03
    ld [de], a

jr_008_4a2b:
    call $250c
    ret nc

    ld e, $45
    xor a
    ld [de], a

Call_008_4a33:
    ld hl, $4c93
    rst $10
    ld a, [hl]
    call $1739
    ld [$ccec], a
    ld [$cbad], a
    ld hl, $cba8
    ld [hl], c
    inc l
    ld [hl], b
    ret


Call_008_4a48:
    ld a, [$ccbc]
    bit 7, a
    ld c, a
    ld a, $f1
    jp z, $3a52

    ret


Call_008_4a54:
    ld b, a
    xor a
    ld e, $78
    ld [de], a
    ld e, $42
    ld a, [de]
    ld e, $78
    or a
    ret nz

    ld h, $c6
    ld a, b
    cp $13
    ret z

    cp $03
    jr z, jr_008_4a85

    cp $11
    jr z, jr_008_4a85

    cp $12
    jr z, jr_008_4a85

    cp $0d
    jr z, jr_008_4a89

    ld l, $aa
    cp $04
    jr z, jr_008_4a7e

    ld l, $a2

jr_008_4a7e:
    ld a, [hl+]
    cp [hl]
    ret nz

jr_008_4a81:
    ld a, $01
    ld [de], a
    ret


jr_008_4a85:
    ld a, $01
    jr jr_008_4a8b

jr_008_4a89:
    ld a, $0e

jr_008_4a8b:
    call $1717
    ld e, $78
    ret nc

    jr jr_008_4a81

Call_008_4a93:
    ld hl, $d240

jr_008_4a96:
    ld l, $40
    ld a, [hl+]
    or a
    jr z, jr_008_4aa0

    ld a, [hl]
    cp $47
    ret z

jr_008_4aa0:
    inc h
    ld a, h
    cp $e0
    jr c, jr_008_4a96

    ld hl, $47b5
    or d
    ret


Call_008_4aab:
Jump_008_4aab:
    call $1e5a
    ld e, $49
    ld [de], a
    call $26a3
    dec e
    ld [de], a
    jp $25cb


    sbc e
    ld c, b
    xor l
    ld c, b
    sbc e
    ld c, b
    ld a, b
    ld e, b
    ld e, $44
    ld a, [de]
    rst $00
    pop de
    ld c, d
    ld [hl], l
    dec hl
    ld [hl], c
    ld c, e
    ldh [rWX], a
    adc d
    ld c, e
    ld h, e
    ld c, e
    ld a, [$ccea]
    and $02
    ret z

    ld a, $01
    ld [de], a
    ld a, $05
    call $1717
    jp nc, Jump_008_4b6d

    ld e, $42
    ld a, [de]
    cp $03
    jr nz, jr_008_4af1

    call $196b
    jr z, jr_008_4af1

    ld a, $13
    ld [de], a

jr_008_4af1:
    ld a, $0e
    call $1717
    jr c, jr_008_4b0f

    ld a, [$c643]
    bit 5, a
    jr nz, jr_008_4b0f

    ld a, [$c6bb]
    bit 1, a
    jr z, jr_008_4b0f

    call $196b
    jr nz, jr_008_4b0f

    ld c, $08
    jr jr_008_4b11

jr_008_4b0f:
    ld c, $00

jr_008_4b11:
    ld a, [$c640]
    and $f7
    or c
    ld [$c640], a
    ld a, $0d
    call $1717
    ld c, $10
    jr c, jr_008_4b25

    ld c, $20

jr_008_4b25:
    ld a, [$c640]
    and $cf
    or c
    ld [$c640], a

jr_008_4b2e:
    ld e, $42
    ld a, [de]
    add a
    ld hl, $4cf6
    rst JumpTable
    ld a, [hl+]
    ld c, a
    ld b, $c6
    ld a, [bc]
    and [hl]
    jr z, jr_008_4b4c

    inc hl
    ld a, [hl+]
    bit 7, a
    jr nz, jr_008_4b6d

    ld [de], a
    ld e, $4d
    ld a, [de]
    add [hl]
    ld [de], a
    jr jr_008_4b2e

jr_008_4b4c:
    call $15e9
    ld a, $07
    call $248d
    ld l, $70
    ld e, $4b
    ld a, [de]
    ld [hl+], a
    ld e, $4d
    ld a, [de]
    ld [hl+], a
    call $1e30
    jr jr_008_4bb8

    call $1832
    xor a
    ld [$cca4], a
    ld [$cc02], a

Jump_008_4b6d:
jr_008_4b6d:
    pop af
    jp $3ad9


    ld e, $45
    ld a, [de]
    rst $00
    ld a, c
    ld c, e
    add [hl]
    ld c, e
    ld a, $01
    ld [de], a
    ld a, $08
    ld [$cc76], a
    call $1e15
    jr jr_008_4ba6

    call Call_008_4ca7
    ret nz

    ld h, d
    ld e, $4b
    ld l, $70
    ld a, [hl+]
    ld [de], a
    ld e, $4d
    ld a, [hl]
    ld [de], a
    ld l, $4f
    ld [hl], $00
    ld l, $44
    ld [hl], $01
    call Call_008_4bb8
    call $1e30
    jp $2b8a


jr_008_4ba6:
    call Call_008_4c24
    ret nc

    push hl
    ld a, $03
    rst $10
    ld a, $20
    ld [hl+], a
    inc l
    ld [hl+], a
    inc l
    ld [hl+], a
    pop hl
    jr jr_008_4bbc

Call_008_4bb8:
jr_008_4bb8:
    call Call_008_4c24
    ret nc

jr_008_4bbc:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a

jr_008_4bca:
    ld a, [hl+]
    ld [de], a
    set 2, d
    ld a, [hl+]
    ld [de], a
    res 2, d
    inc de
    dec b
    jr nz, jr_008_4bca

    pop de
    pop af
    ldh [rSVBK], a
    ld hl, $ccea
    set 2, [hl]
    ret


    ld e, $42
    ld a, [de]
    ld hl, $4c93
    rst $10
    ld a, [hl+]
    call $1751
    ld e, $42
    ld a, [de]
    ld hl, $4cce
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    cp $00
    jr nz, jr_008_4bfb

    call $17b9

jr_008_4bfb:
    call $16eb
    ld e, $42
    ld a, [de]
    or a
    call z, $17e5
    ld e, $44
    ld a, $05
    ld [de], a
    ld a, $04
    ld [$cc6a], a
    ld a, $01
    ld [$cc6b], a
    ld e, $42
    ld a, [de]
    ld hl, $4d46
    rst $10
    ld a, [hl]
    ld c, a
    or a
    ld b, $00
    jp nz, $184b

    ret


Call_008_4c24:
    ld e, $42
    ld a, [de]
    ld c, a
    ld hl, $4c6b
    rst JumpTable
    ld a, [hl+]
    cp $ff
    ret z

    push de
    ld e, a
    ld d, [hl]
    ld a, c
    ld hl, $4c93
    rst $10
    ld a, [hl]
    call $175a
    ld hl, $cec0
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld e, $03
    ld d, $30
    ld a, $02
    ld [hl+], a
    ld a, b
    or a
    jr z, jr_008_4c54

    dec l
    inc [hl]
    inc l
    call Call_008_4c64

jr_008_4c54:
    ld a, c
    swap a
    call Call_008_4c64
    ld a, c
    call Call_008_4c64
    ld hl, $cec0
    pop de
    scf
    ret


Call_008_4c64:
    and $0f
    add d
    ld [hl+], a
    ld [hl], e
    inc l
    ret


    ld h, [hl]
    ret c

    ld l, a
    ret c

    ld l, d
    ret c

    ld l, h
    ret c

    ld l, c
    ret c

    ld l, [hl]
    ret c

    ld l, d
    ret c

    ld l, b
    ret c

    ld l, l
    ret c

    ld l, e
    ret c

    ld l, a
    ret c

    ld h, a
    ret c

    rst $38
    rst $38
    ld l, a
    ret c

    ld h, a
    ret c

    ld l, e
    ret c

    ld l, a
    ret c

    ld l, h
    ret c

    ld l, h
    ret c

    ld l, h
    ret c

    db $10
    inc b
    db $10
    rlca
    dec b
    dec c
    ld de, $1010
    db $10
    db $10
    inc c
    inc b
    rrca
    inc c
    inc c
    inc c
    dec bc
    inc de
    rlca

Call_008_4ca7:
    ld a, [$cc46]
    and $03
    jr z, jr_008_4ccc

    ld e, $71
    ld a, [de]
    sub $0d
    ld b, a
    add $1a
    ld hl, $d00d
    cp [hl]
    jr c, jr_008_4ccc

    ld a, b
    cp [hl]
    jr nc, jr_008_4ccc

    ld l, $0b
    ld a, [hl]
    cp $3d
    jr nc, jr_008_4ccc

    ld l, $08
    ld a, [hl]
    or a
    ret


jr_008_4ccc:
    or d
    ret


    add hl, de
    ld bc, $0c29
    inc [hl]
    ld bc, $0101
    inc bc
    db $10
    ld c, e
    ld bc, HeaderTitle
    cpl
    ld bc, HeaderTitle
    cpl
    ld bc, HeaderTitle
    dec c
    dec b
    nop
    nop
    ld c, $0d
    inc [hl]
    ld bc, $332d
    nop
    ld bc, $0201
    ld bc, $3403
    ld bc, HeaderManufacturerCode
    rst $38
    nop
    ld b, b
    ld [$040d], sp
    ccf
    ld [bc], a
    ld b, $00
    xor c
    ld [bc], a
    ld de, $3f00
    nop
    rst $38
    nop
    ccf
    ld [$00ff], sp
    ccf
    inc b
    rst $38
    nop
    ld b, b
    db $10
    add hl, bc
    jr jr_008_4d57

    db $10
    ld a, [bc]
    db $10
    ccf
    nop
    rst $38
    nop
    ccf
    ld b, b
    rst $38
    nop
    ld b, b
    jr nz, @+$01

    nop
    ccf
    nop
    rst $38
    nop
    ld b, b
    nop
    rst $38
    nop
    ld b, b
    ld bc, $00ff
    ld b, b
    ld [bc], a
    rst $38
    nop
    ld b, b
    inc b
    rst $38
    nop
    xor c
    ld bc, $0012
    xor c
    nop
    rst $38
    nop
    ccf
    jr nz, jr_008_4d48

    nop
    ld b, [hl]
    ld c, h

jr_008_4d48:
    ld c, e
    rra
    ld c, l
    ld l, h
    ld c, e
    ld l, l
    ld c, e
    ld l, l
    ld c, e
    ld [hl-], a
    nop
    dec sp
    ld c, e
    ld d, h
    ld d, h

jr_008_4d57:
    jr nz, jr_008_4d7a

    ld c, e
    ld e, $44
    ld a, [de]
    rst $00
    ld h, d
    ld c, l
    ld b, a
    ld c, [hl]
    call Call_008_4ddc
    ld e, $42
    ld a, [de]
    rst $00
    ld a, a
    ld c, l
    ld a, a
    ld c, l
    ld a, a
    ld c, l
    sub l
    ld c, l
    push de
    ld c, l
    call c, $dc4d
    ld c, l
    sub l
    ld c, l
    daa

jr_008_4d7a:
    ld e, $a8
    ld c, l
    sub l
    ld c, l
    call $3ac6
    jr nz, jr_008_4d92

    ld [hl], $4a
    inc l
    ld [hl], $04
    inc l
    ld e, $42
    ld a, [de]
    inc a
    ld [hl], a
    call Call_008_4f5d

jr_008_4d92:
    jp $1e27


    ld e, $43
    ld a, [de]
    add a
    add a
    ld h, d
    ld l, $60
    add [hl]
    ld [hl], a
    call $26ac
    call Call_008_4de3
    jp $1e15


    ld e, $43
    ld a, [de]
    ld hl, $4dcf
    rst JumpTable
    ld a, [hl+]
    ld e, $4b
    ld [de], a
    inc e
    inc e
    ld a, [hl]
    ld [de], a
    ld b, $03

jr_008_4db9:
    call $3ac6
    jr nz, jr_008_4dcc

    ld [hl], $4a
    inc l
    ld [hl], $0a
    inc l
    ld [hl], b
    dec [hl]
    call Call_008_4f5d
    dec b
    jr nz, jr_008_4db9

jr_008_4dcc:
    jp $1e27


    ld b, b
    ld a, b
    ld b, b
    ld c, b
    jr @+$62

    call $1e30
    xor $80
    ld [de], a
    ret


Call_008_4ddc:
    ld h, d
    ld l, $44
    inc [hl]
    jp $15e9


Call_008_4de3:
    call $211e
    call $222f
    push bc
    ld e, $42
    ld a, [de]
    ld hl, $4e29
    cp $03
    jr z, jr_008_4e06

    cp $0a
    jr z, jr_008_4e06

    ld hl, $4e2f
    ld e, $47
    ld a, [de]
    inc a
    ld [de], a
    and $03
    ld c, a
    add a
    add c
    rst JumpTable

jr_008_4e06:
    ld e, $43
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    call Call_008_4e1f
    ld b, a
    ld e, $4b
    ld a, [de]
    add b
    ld [de], a
    ld a, [hl]
    call Call_008_4e1f
    ld h, d
    ld l, $4d
    add [hl]
    ld [hl], a
    pop bc
    ret


Call_008_4e1f:
    ld b, a
    call $041a
    and $03
    sub $02
    add b
    ret


    db $fc
    db $fc
    rlca
    rst $38
    rst $38
    ld b, $f4
    db $f4
    ld c, $fe
    ld a, [$fb09]
    ldh a, [$09]
    rst $38
    inc b
    ld c, $06
    ld hl, sp-$0c
    ld [$070a], sp
    dec bc
    ld a, [$00f4]
    inc bc
    ld a, [bc]
    ld e, $42
    ld a, [de]
    cp $05
    jr nc, jr_008_4e56

    ld a, [$cbb9]
    cp $04
    jp z, $3ad9

jr_008_4e56:
    ld a, [de]
    rst $00
    ld l, [hl]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    jr z, jr_008_4eaf

    ld [hl-], a
    ld c, a
    ld [hl-], a
    ld c, a
    ld [hl-], a
    ld c, a
    ld d, $4f
    ld c, [hl]
    ld c, a
    cp b
    dec h
    jr z, jr_008_4ebd

    ld e, $45
    ld a, [de]
    rst $00
    ld a, [hl]
    ld c, [hl]
    sbc d
    ld c, [hl]
    call z, $e24e
    ld c, [hl]
    ld [bc], a
    ld c, a
    cp b
    dec h
    ld a, [$cbb9]
    cp $01
    jp nz, $25b8

    ld b, $00
    ld e, $42
    ld a, [de]
    cp $01
    jr z, jr_008_4e91

    ld b, $0a

jr_008_4e91:
    call $2c8f
    call $23a0
    ld l, $46
    ld [hl], b
    call $2387
    jp nz, $25b8

    ld l, $42
    ld a, [hl]
    cp $01
    jr nz, jr_008_4eb3

    ld l, $49
    ld [hl], $00
    ld l, $50
    ld [hl], $05

jr_008_4eaf:
    ld b, $01
    jr jr_008_4ec3

jr_008_4eb3:
    or a
    ld a, $18
    jr z, jr_008_4eba

    ld a, $08

jr_008_4eba:
    ld l, $49
    ld [hl], a

jr_008_4ebd:
    ld l, $50
    ld [hl], $05
    ld b, $0b

jr_008_4ec3:
    call $2c8f
    call $23a0
    ld l, $46
    ld [hl], b
    call $2387
    jr nz, jr_008_4edc

    ld b, $02
    call $2c8f
    call $23a0
    ld l, $46
    ld [hl], b

jr_008_4edc:
    call $1fdb
    jp $25b8


    call $2387
    jp nz, $25b8

    ld b, $03
    call $2c8f
    call $23a0
    ld l, $46
    ld [hl], b
    ld e, $42
    ld a, [de]
    cp $01
    jr z, jr_008_4efd

    jp $23a0


jr_008_4efd:
    ld a, $5c
    jp $0c74


    call $25b8
    call $2387
    ret nz

    call $23a0
    ld a, $02
    ld [$cbb9], a
    ld a, $7c
    jp $0c74


    call $1e42
    ld e, $43
    ld a, [de]
    and $01
    ld b, a
    ld a, [$cbb7]
    and $01
    xor b
    call z, $1e39
    ld e, $61
    ld a, [de]
    inc a
    call z, Call_008_4de3
    jp $25b8


    call $25b8
    ld a, $00
    call $211e
    call $222f
    ld e, $43
    ld a, [de]
    ld h, d
    ld l, $60
    cp [hl]
    ld l, $5a
    jr nz, jr_008_4f4b

    set 7, [hl]
    ret


jr_008_4f4b:
    res 7, [hl]
    ret


    ld a, [$c486]
    or a
    jp z, $3ad9

    ld b, a
    ld e, $4a
    ld a, [de]
    sub b
    inc e
    ld [de], a
    ret


Call_008_4f5d:
    ld l, $56
    ld [hl], $40
    inc l
    ld [hl], d
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], h
    ld c, a
    ld [$2e4f], a
    ld d, b
    ld d, e
    ld d, b
    ld a, h
    ld d, b
    adc c
    ld d, b
    ld e, $45
    ld a, [de]
    rst $00
    ld a, [hl]
    ld c, a
    sub l
    ld c, a
    and e
    ld c, a
    call $26ac
    ld l, $45
    ld [hl], $01
    ld l, $46
    ld [hl], $01
    ld l, $4f
    ld [hl], $00
    ld a, $0f
    ld [$cc51], a
    jp $0c74


    call $2387
    ret nz

    ld l, $45
    ld [hl], $02
    ld l, $46
    ld [hl], $10
    jr jr_008_4fd0

    call $2387
    ret nz

    call $15e9
    call $1e15
    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $45
    ld [hl], $00
    ld l, $43
    ld a, [hl]
    or a
    jr nz, jr_008_4fc6

    ld l, $46
    ld [hl], $78
    call Call_008_4fd3
    jp Jump_008_5079


jr_008_4fc6:
    ld l, $46
    ld [hl], $3c
    call Call_008_4fd8
    jp Jump_008_5079


Call_008_4fd0:
jr_008_4fd0:
    jp $24ad


Call_008_4fd3:
    ld bc, $8400
    jr jr_008_4fe7

Call_008_4fd8:
    ld bc, $8407
    call $24b1
    ld e, $46
    ld a, [de]
    ld l, e
    ld [hl], a
    ret


Call_008_4fe4:
    ld bc, $8401

jr_008_4fe7:
    jp $24b1


    call Call_008_50f6
    call $2387
    jr z, jr_008_4fff

    call Call_008_5079
    ld a, [$cc00]
    rrca
    jp nc, $1e39

    jp $1e42


jr_008_4fff:
    ld l, $43
    ld a, [hl]
    or a
    jr z, jr_008_5013

    ld l, $44
    ld [hl], $05
    ld hl, $cfc0
    set 1, [hl]
    call $1e42
    jr jr_008_5079

jr_008_5013:
    ld l, $44
    inc [hl]
    ld l, $4f
    ld [hl], $00
    ld l, $7a
    ld [hl], $30
    ld l, $49
    ld [hl], $00
    ld l, $50
    ld [hl], $14
    call $1e42
    ld a, $4f
    call $0c74
    call $1fdb
    ld h, d
    ld l, $4b
    ld a, [hl]
    cp $10
    jr nc, jr_008_5079

    ld l, $44
    inc [hl]
    ld l, $46
    ld [hl], $04
    ld l, $7b
    ld [hl], $00
    ld a, [$d00b]
    ld l, $4b
    ld [hl], a
    ld a, [$d00d]
    ld l, $4d
    ld [hl], a
    call Call_008_50b4
    call Call_008_50dd
    jr c, jr_008_5071

    call Call_008_5099
    call Call_008_50c2
    ld a, [de]
    ld e, $7b
    call $20cc
    call Call_008_50d0
    ld a, [$cc00]
    and $07
    call z, Call_008_4fe4
    jr jr_008_5079

jr_008_5071:
    ld l, $44
    inc [hl]
    ld hl, $cfc0
    set 1, [hl]

Call_008_5079:
Jump_008_5079:
jr_008_5079:
    jp $25b8


    call Call_008_50f6
    ld a, [$cfc0]
    cp $07
    jp z, $3ad9

    jr jr_008_5079

    call Call_008_50f6
    ld a, [$cfc0]
    cp $07
    jr nz, jr_008_5079

    call Call_008_4fd0
    jp $3ad9


Call_008_5099:
    ld l, $4b
    ld e, $78
    ld a, [de]
    ld [hl+], a
    inc l
    inc e
    ld a, [de]
    ld [hl], a
    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a
    call $1e62
    ld e, $49
    ld [de], a
    call $1fdb

Call_008_50b4:
    ld h, d
    ld l, $4b
    ld e, $78
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc l
    inc e
    ld a, [hl]
    ld [de], a
    ld c, a
    ret


Call_008_50c2:
    ld e, $7a
    ld a, [de]
    or a
    ret z

    call $2387
    ret nz

    ld [hl], $04
    ld l, e
    dec [hl]
    ret


Call_008_50d0:
    ld a, [$cc00]
    rrca
    ret nc

    ld e, $7b
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    ret


Call_008_50dd:
    ld h, d
    ld l, $4b
    ld a, [$d00b]
    add $f0
    sub [hl]
    add $04
    cp $09
    ret nc

    ld l, $4d
    ld a, [$d00d]
    sub [hl]
    add $02
    cp $05
    ret


Call_008_50f6:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld hl, $510d
    rst $10
    ld e, $4f
    ld a, [hl]
    ld [de], a
    ret


    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop
    call $23b9
    jr z, jr_008_5124

    ld e, $61
    ld a, [de]
    inc a
    jp nz, $25b8

    jp $3ad9


jr_008_5124:
    inc a
    ld [de], a
    call $15e9
    ld a, $6f
    call $0c74
    ld e, $43
    ld a, [de]
    rrca
    jp c, $1e1e

    jp $1e27


    ld a, [$cc02]
    ld b, a
    ld a, [$cc34]
    or b
    jr nz, jr_008_5169

    ld a, [$cc49]
    or a
    jr nz, jr_008_5169

    ld hl, $c6b0
    ld a, [hl]
    add a
    jr z, jr_008_5169

    ld a, [$cc4e]

jr_008_5152:
    inc a
    and $03
    ld b, a
    call $0205
    ld a, b
    jr z, jr_008_5152

    call $3a9c
    ld a, $5c
    call $0c74
    ld a, $02
    ld [$c4ad], a

jr_008_5169:
    jp $3ad9


    ld e, $42
    ld a, [de]
    rst $00
    adc h
    ld d, c
    adc h
    ld d, c
    or [hl]
    ld d, c
    or [hl]
    ld d, c
    or [hl]
    ld d, c
    dec [hl]
    ld d, d
    dec [hl]
    ld d, d
    dec [hl]
    ld d, d
    ld l, e
    ld d, d
    ld l, e
    ld d, d
    ld l, e
    ld d, d
    ld l, e
    ld d, d
    ld l, e
    ld d, d
    xor [hl]
    ld d, d
    call $23b9
    jr nz, jr_008_519f

    ld a, [$cd00]
    and $01
    ret z

    ld a, $01
    ld [de], a
    call $1432
    ld [hl], $20

jr_008_519f:
    ld a, [$cc77]
    or a
    ret nz

    call $1432
    ld a, [$ccb3]
    cp l
    ret nz

    ld [hl], $eb
    ld a, $81
    ld [$cca4], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ret nz

    ld d, c
    db $fd
    ld d, c
    dec hl
    ld d, d

Call_008_51c0:
    ld e, $42
    ld a, [de]
    sub $02
    add a
    ld hl, $51e5
    rst JumpTable
    ld e, $70
    ld b, $03
    call $0462
    ld e, $67
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, $0a
    ld [de], a
    call $1bee
    ld a, $01
    jr nc, jr_008_51e1

    inc a

jr_008_51e1:
    ld e, $44
    ld [de], a
    ret


    dec b
    cp h
    sub a
    db $10
    dec b
    cp l
    sub a
    jr @+$07

    dec c
    sub a
    jr jr_008_51f2

jr_008_51f2:
    ld l, $61
    nop
    nop
    ld l, $75
    nop
    nop
    ld e, d
    ld d, h
    nop
    ld a, d
    ld [$ccaa], a
    ld a, [$cc48]
    cp $d1
    ret nz

    call $1bee
    ret nc

    xor a
    ld [$cc65], a

jr_008_520f:
    ld h, d
    ld l, $70
    ld a, [hl+]
    ld [$cc63], a
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl]
    ld [$cc66], a
    ld a, $03
    ld [$cc67], a
    ld a, $01
    ld [$cd00], a
    jp $3ad9


    call $1bee
    ret c

    ld e, $44
    ld a, $01
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ccf
    ld d, d
    ld c, c
    ld d, d
    ld c, c
    ld d, d
    call Call_008_51c0
    xor a
    ld [$cc51], a
    jp $26ac


    ld a, d
    ld [$ccab], a
    ld a, [$cc48]
    cp $d1
    ret nz

    xor a
    ld [$ccab], a
    ld a, [$cd00]
    and $01
    ret nz

    xor a
    ld [$cd00], a
    ld a, $ff
    ld [$cca4], a
    ld [$cc51], a
    jr jr_008_520f

    call $23b9
    jr nz, jr_008_5278

    ld a, $01
    ld [de], a
    ld a, $02
    call $248d

jr_008_5278:
    ld a, [$cc78]
    rlca
    ret nc

    call $1bee
    ret nc

    ld e, $42
    ld a, [de]
    sub $08
    ld hl, $52a4
    rst JumpTable
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl]
    ld [$cc66], a
    ld a, $87
    ld [$cc63], a
    ld a, $01
    ld [$cc65], a

jr_008_529c:
    ld a, $03
    ld [$cc67], a
    jp $3ad9


    ldh [rSC], a
    pop hl
    dec bc
    db $e4
    ld [bc], a
    and $02
    rst $20
    dec c
    call $23b9
    jr nz, jr_008_52bb

    ld a, $01
    ld [de], a
    ld a, $02
    call $248d

jr_008_52bb:
    ld a, [$cc78]
    rlca
    ret nc

    call $1bee
    ret nc

    ld hl, $cc63
    ld [hl], $85
    inc l
    ld [hl], $12
    inc l
    ld [hl], $05
    inc l
    ld [hl], $29
    jr jr_008_529c

    call $2697
    ld e, $44
    ld a, [de]
    rst $00
    pop hl
    ld d, d
    ld a, [bc]
    ld d, e
    rlca
    ld d, e
    ld a, $01
    ld [de], a
    xor a
    ld [$cfc1], a
    ld [$cfc2], a
    ld a, [$cc55]
    cp $ff
    jp z, $3ad9

    ld hl, $5311
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    jp $250c


    call $261d
    call $250c
    ret nc

    jp $3ad9


    add hl, hl
    ld d, e
    dec l
    ld d, e
    dec [hl]
    ld d, e
    dec sp
    ld d, e
    ld b, l
    ld d, e
    ld d, l
    ld d, e
    ld e, l
    ld d, e
    ld a, e
    ld d, e
    sbc c
    ld d, e
    or c
    ld d, e
    or l
    ld d, e
    or l
    ld d, e
    ld [hl], a
    ld c, e
    ld a, b
    ld c, e
    ld l, c
    ld c, e
    ld a, b
    ld c, e
    ld a, b
    ld c, e
    add h
    ld c, e
    sub a
    ld c, e
    ld l, c
    ld c, e
    and [hl]
    ld c, e
    cp c
    ld c, e
    call nz, $ca4b
    ld c, e
    reti


    ld c, e
    add sp, $4b
    db $ec
    ld c, e
    ei
    ld c, e
    ei
    ld c, e
    add hl, bc
    ld c, h
    add h
    ld c, e
    ld l, c
    ld c, e
    ld c, $4c
    rla
    ld c, h
    jr nz, jr_008_53a3

    dec h
    ld c, h
    ld l, c
    ld c, e
    add h
    ld c, e
    dec hl
    ld c, h
    inc [hl]
    ld c, h
    ld b, a
    ld c, h
    ld d, b
    ld c, h
    ld e, b
    ld c, h
    ld h, e
    ld c, h
    ld l, e
    ld c, h
    ld l, c
    ld c, e
    ld l, a
    ld c, h
    sub b
    ld c, h
    sub h
    ld c, h
    and l
    ld c, h
    or l
    ld c, h
    ret nz

    ld c, h
    rst $08
    ld c, h
    and $4c
    ld a, [c]
    ld c, h
    ld l, c
    ld c, e
    add h
    ld c, e
    dec b
    ld c, l
    ld [de], a
    ld c, l
    ld d, $4d
    jr z, @+$4f

    inc l
    ld c, l
    jr nc, @+$4f

    ld b, h
    ld c, l
    ld d, e
    ld c, l
    add sp, $4c
    db $d3
    ld c, h
    call c, $5b4c
    ld c, l
    ld h, h
    ld c, l
    ld l, l
    ld c, l
    dec hl
    ld c, h
    ld a, d
    ld c, l

jr_008_53a3:
    adc h
    ld c, l
    sub [hl]
    ld c, l
    ld l, c
    ld c, e
    add h
    ld c, e
    xor e
    ld c, l
    or h
    ld c, l
    cp e
    ld c, l
    jp nz, $c94d

    ld c, l
    dec hl
    ld c, h
    ld a, b
    ld c, e
    call $164d
    ld c, l
    db $db
    ld c, l
    rst JumpTable
    ld c, l
    call nc, $1e4d
    ld b, h
    ld a, [de]
    rst $00
    pop de
    ld d, e
    inc c
    dec h
    db $ec
    ld d, e
    ld bc, $3754
    ld d, h
    call $1956
    bit 7, a
    jp nz, $3ad9

    ld e, $44
    ld a, $01
    ld [de], a
    ld a, $01
    ld [$ccaa], a
    call Call_008_5469
    ld hl, $4dea
    jp $24fe


    call $239b
    ld l, $46
    ld [hl], $1e
    call $29f4
    ld a, [$cca4]
    or $80
    ld [$cca4], a
    call Call_008_545d
    call Call_008_54ae
    call $2387
    jr nz, jr_008_545d

    ld l, $47
    ld a, [hl]
    cp $04
    jr nc, jr_008_5428

    inc [hl]
    ld a, [hl]
    call Call_008_549d
    ld a, $82
    call $0c74
    ld e, $47
    ld a, [de]
    ld hl, $542d
    rst JumpTable
    dec e
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    or a
    jr z, jr_008_5463

jr_008_5428:
    ld l, $44
    inc [hl]
    jr jr_008_5463

    ld e, $00
    inc a
    nop
    dec l
    nop
    jr z, jr_008_5435

jr_008_5435:
    inc hl
    nop
    ld a, $09
    ld hl, $5482
    ld bc, $5494
    call Call_008_5471
    xor a
    ld [$ccaa], a
    ld [$cca4], a
    ld [$cc02], a
    ld a, $4d
    call $0c74
    ld a, [$cc62]
    ld [$cc51], a
    call $0c74
    jp $3ad9


Call_008_545d:
jr_008_545d:
    ld a, $0f
    ld [$cd19], a
    ret


jr_008_5463:
    ld a, $04
    ld [$cd18], a
    ret


Call_008_5469:
    ld a, $09
    ld hl, $5482
    ld bc, $548b

Call_008_5471:
    ld d, $ce
    ld e, a

jr_008_5474:
    push de
    ld a, [hl+]
    ld e, a
    ld a, [bc]
    inc bc
    ld [de], a
    pop de
    dec e
    jr nz, jr_008_5474

    ldh a, [$ad]
    ld d, a
    ret


    inc hl
    inc h
    dec h
    inc sp
    inc [hl]
    dec [hl]
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc c
    ld [$0301], sp
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca

Call_008_549d:
    ld hl, $54a9
    rst $10
    ld a, [hl]
    call $379c
    ldh a, [$ad]
    ld d, a
    ret


    jr nz, jr_008_54cc

    ld [hl+], a
    inc hl
    inc b

Call_008_54ae:
    ld a, [$cc00]
    and $01
    ret nz

    call $042f
    ld e, a
    call $3ac6
    ret nz

    ld [hl], $4b
    inc l
    ld a, [$cc00]
    and $06
    rrca
    ld bc, $54e4
    call $006d
    ld a, [bc]

jr_008_54cc:
    ld [hl], a
    ld l, $4b
    ld a, e
    and $07
    sub $04
    add $48
    ld [hl+], a
    inc l
    ld a, e
    and $f8
    swap a
    rlca
    sub $10
    add $48
    ld [hl], a
    ret


    nop
    ld bc, $0000
    ld e, $44
    ld a, [de]
    rst $00
    ld a, [c]
    ld d, h
    ld [hl], b
    ld d, l
    ld [hl], a
    ld d, l
    ld e, $42
    ld a, [de]
    cp $08
    jr z, jr_008_552c

    cp $09
    jr z, jr_008_5543

    jr nc, jr_008_5551

    call $1956
    and $40
    jp nz, $3ad9

    call $55f5
    jp z, $3ad9

    call $268f
    call Call_008_555e
    call $250c
    call $250c
    ld e, $42
    ld a, [de]
    cp $07
    jr z, jr_008_5525

    call $3e20
    jr jr_008_5570

jr_008_5525:
    ld hl, $c6e5
    ld [hl], $16
    jr jr_008_5570

jr_008_552c:
    call $1956
    and $40
    jp nz, $3ad9

    ld a, $07
    call $1717
    jp nc, $3ad9

    ld a, [$c6b0]
    add a
    jp z, $3ad9

jr_008_5543:
    call Call_008_555e
    call $250c
    call $250c
    call $3e20
    jr jr_008_5570

jr_008_5551:
    call $1956
    and $80
    jp nz, $3ad9

    call Call_008_555e
    jr jr_008_5570

Call_008_555e:
    ld e, $44
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $564f
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $24fe


jr_008_5570:
    call $250c
    jp c, $3ad9

    ret


    ld e, $45
    ld a, [de]
    rst $00
    ld a, a
    ld d, l
    cp b
    ld d, l
    ld hl, $55e5
    ld b, $04

jr_008_5584:
    ld a, [hl+]
    ldh [$8c], a
    ld a, [hl+]
    ldh [$8f], a
    ld a, [hl+]
    ldh [$8e], a
    ld a, [hl+]
    push hl
    push bc
    call $3a7c
    pop bc
    pop hl
    dec b
    jr nz, jr_008_5584

    ldh a, [$ad]
    ld d, a
    ld e, $45
    ld a, $01
    ld [de], a
    ld e, $46
    ld a, $1e
    ld [de], a
    xor a
    call Call_008_561f
    ld a, $73
    call $0c74

jr_008_55ae:
    ld a, $06
    call $24a7
    ld a, $70
    jp $0c74


    call $2387
    ret nz

    ld hl, $55e5
    ld b, $04

jr_008_55c1:
    ld a, [hl+]
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
    jr nz, jr_008_55c1

    ld e, $44
    ld a, $01
    ld [de], a
    xor a
    inc e
    ld [de], a
    ld a, $04
    call Call_008_561f
    ld a, $73
    call $0c74
    jr jr_008_55ae

    inc d
    cp a
    and b
    inc bc
    dec d
    cp a
    and b
    ld bc, $a924
    and c
    inc bc
    dec h
    xor d
    and c
    ld bc, $403e
    call $1717
    jr nc, jr_008_560e

    ld e, $7e
    ld [de], a
    call Call_008_5610
    ld c, a
    ld e, $42
    ld a, [de]
    ld hl, $00f8
    add l
    ld l, a
    ld a, c
    and [hl]
    ret


jr_008_560e:
    xor a
    ret


Call_008_5610:
    push af
    ld hl, $c6df
    ld [hl], $00

jr_008_5616:
    add a
    jr nc, jr_008_561a

    inc [hl]

jr_008_561a:
    or a
    jr nz, jr_008_5616

    pop af
    ret


Call_008_561f:
    ld bc, $563f
    call $007e
    ld a, $04

jr_008_5627:
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
    jr nz, jr_008_5627

    ret


    jr @+$4a

    jr @+$5a

    jr z, jr_008_568d

    jr z, @+$5a

    jr @+$42

    jr jr_008_56ab

    jr z, jr_008_568d

    jr z, jr_008_56af

    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    rst $30
    ld c, l
    ld a, [$874d]
    ld c, [hl]
    ld e, $45
    ld a, [de]
    rst $00
    ld l, l
    ld d, [hl]
    sbc [hl]
    ld d, [hl]
    ld a, $01
    ld [de], a
    ld a, $08
    call $24f5
    ld e, $42
    ld a, [de]
    ld b, a
    swap a
    and $0f
    ld e, $43
    ld [de], a
    ld hl, $56a5
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    and $0f
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]

jr_008_568d:
    ld l, a
    call $24fe
    ld e, $7e
    ld a, [$c6df]
    cp $09
    ld a, $00
    jr c, jr_008_569d

    inc a

jr_008_569d:
    ld [de], a
    call $250c
    jp c, $3ad9

    ret


    xor a
    ld d, [hl]
    xor a
    ld d, [hl]
    xor a
    ld d, [hl]

jr_008_56ab:
    xor a
    ld d, [hl]
    or e
    ld d, [hl]

jr_008_56af:
    xor c
    ld c, [hl]
    xor l
    ld c, [hl]
    and l
    ld c, [hl]
    ld e, $44
    ld a, [de]
    rst $00
    cp l
    ld d, [hl]
    xor e
    ld d, a
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $42
    ld a, [hl+]
    bit 7, a
    jr z, jr_008_56cc

    ld [hl-], a
    and $7f
    ld [hl], a

jr_008_56cc:
    call Call_008_57b9
    jr nz, jr_008_56d6

    jp nc, $3ad9

    jr jr_008_56e2

jr_008_56d6:
    call Call_008_5866
    jr nz, jr_008_56e6

    ld e, $42
    ld a, [de]
    cp b
    jp nz, $3ad9

jr_008_56e2:
    ld e, $42
    ld a, b
    ld [de], a

jr_008_56e6:
    call $15e9
    ld e, $41
    ld a, [de]
    cp $24
    jr nz, jr_008_56f6

    call Call_008_5777
    jp z, $3ad9

jr_008_56f6:
    sub $24
    ld hl, $594a
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $41
    ld a, [de]
    cp $38
    jp z, Jump_008_574e

    cp $2c
    jp z, Jump_008_5732

    cp $33
    call z, Call_008_572c
    ld e, $41
    ld a, [de]
    cp $36
    call z, Call_008_572c

Jump_008_5723:
    xor a
    ld h, d
    ld l, $78
    ld [hl+], a
    ld [hl], a
    jp $2686


Call_008_572c:
    call $250c
    jp $250c


Jump_008_5732:
    call $1956
    and $40
    jr z, jr_008_573c

    jp Jump_008_5723


jr_008_573c:
    call $3ea7
    jr nz, jr_008_574b

    ld [hl], $06
    ld l, $cb
    ld [hl], $38
    ld l, $cd
    ld [hl], $68

jr_008_574b:
    jp Jump_008_5723


Jump_008_574e:
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_008_5769

    ld a, [$cc55]
    dec a
    bit 7, a
    jr z, jr_008_575d

    xor a

jr_008_575d:
    ld hl, $576c
    rst $10
    ld e, $72
    ld a, [hl]
    ld [de], a
    inc e
    ld a, $33
    ld [de], a

jr_008_5769:
    jp Jump_008_5723


    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a

Call_008_5777:
    ld e, $42
    ld a, [de]
    ld b, a
    call $196b
    jr z, jr_008_5790

    ld a, $1e
    call $30c7
    jr z, jr_008_579e

    ld a, $1f
    call $30c7
    jr z, jr_008_57a9

    jr jr_008_579e

jr_008_5790:
    ld a, $28
    call $30c7
    jr z, jr_008_579e

    ld a, b
    cp $03
    jr nz, jr_008_57a9

    jr jr_008_57a3

jr_008_579e:
    ld a, b
    cp $03
    jr z, jr_008_57a9

jr_008_57a3:
    ld e, $41
    ld a, [de]
    xor $01
    ret


jr_008_57a9:
    xor a
    ret


    call $250c
    ld e, $43
    ld a, [de]
    and $80
    jp nz, $2686

    jp $2646


Call_008_57b9:
    ld e, $41
    ld a, [de]
    ld b, $00
    cp $2d
    jr z, jr_008_57db

    inc b
    cp $37
    jr nz, jr_008_57d2

    ld e, $42
    ld a, [de]
    cp $06
    jr nz, jr_008_57db

    ld b, $0b
    jr jr_008_57f6

jr_008_57d2:
    inc b
    cp $3c
    jr z, jr_008_57db

    inc b
    cp $3d
    ret nz

Call_008_57db:
jr_008_57db:
    ld a, b
    ld hl, $58a7
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_008_57f8
    pop hl
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_008_57ef:
    ld a, [hl+]
    or a
    ret z

    dec a
    cp b
    jr nz, jr_008_57ef

jr_008_57f6:
    scf
    ret


Call_008_57f8:
    ld a, $28
    call $30c7
    ld b, $0a
    jr nz, jr_008_5813

    ld a, $40
    call $1717
    jr c, jr_008_5815

    ld a, $18
    call $30c7
    ld b, $01
    jr nz, jr_008_5813

    ld b, $00

jr_008_5813:
    xor a
    ret


jr_008_5815:
    ld c, a
    call $0176
    ldh [$8b], a
    ld a, c
    call $01ea
    ld c, a
    call $196b
    jr nz, jr_008_5838

jr_008_5825:
    ld a, c
    ld b, $05
    cp $07
    ret nc

    dec b
    ldh a, [$8b]
    cp $05
    ret nc

    ld a, c
    dec b
    cp $01
    ret nc

    dec b
    ret


jr_008_5838:
    ld a, $1f
    call $30c7
    ld b, $08
    ret nz

    ld a, $19
    call $30c7
    ld b, $07
    ret nz

    ld a, $1e
    call $30c7
    ld b, $06
    ret nz

    ld a, c
    cp $00
    jr z, jr_008_5825

    ldh a, [$8b]
    cp $05
    jr nc, jr_008_5825

    ld b, $09
    ld a, $23
    call $30c7
    ret z

    ld b, $03
    ret


Call_008_5866:
    ld e, $41
    ld a, [de]
    cp $36
    jr z, jr_008_5874

    cp $39
    jr z, jr_008_5874

    ld a, $ff
    ret


Call_008_5874:
jr_008_5874:
    ld a, $28
    call $30c7
    ld b, $04
    jr nz, jr_008_58a5

    ld a, $1f
    call $30c7
    ld b, $03
    jr nz, jr_008_58a5

    ld a, $40
    call $1717
    ld b, $00
    jr nc, jr_008_58a5

    ld c, a
    call $196b
    jr z, jr_008_5895

jr_008_5895:
    ld a, c
    call $01ea
    ld b, $02
    cp $07
    ret nc

    dec b
    ld a, c
    and $08
    jr nz, jr_008_58a5

    dec b

jr_008_58a5:
    xor a
    ret


    or a
    ld e, b
    rst $10
    ld e, b
    db $f4
    ld e, b
    db $f4
    ld e, b
    add hl, de
    ld e, c
    ld [bc], a
    ld e, c
    db $f4
    ld e, b
    inc sp
    ld e, c
    push bc
    ld e, b
    rst $00
    ld e, b
    call z, $ce58
    ld e, b
    ret nc

    ld e, b
    db $d3
    ld e, b
    push de
    ld e, b
    ld bc, $0200
    inc bc
    inc b
    ld a, [bc]
    nop
    dec b
    nop
    ld b, $00
    rlca
    ld [$0900], sp
    nop
    dec bc
    nop
    db $e3
    ld e, b
    rst $20
    ld e, b
    jp hl


    ld e, b
    db $eb
    ld e, b
    db $ed
    ld e, b
    rst $28
    ld e, b
    ld bc, $0b02
    nop
    inc bc
    nop
    inc b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld b, $07
    ld [$0009], sp
    or $58
    ld bc, $0302
    inc b
    ld a, [bc]
    dec b
    ld b, $07
    ld [$0b09], sp
    nop
    ld a, [bc]
    ld e, c
    dec c
    ld e, c
    inc d
    ld e, c
    rla
    ld e, c
    ld bc, $0002
    inc bc
    inc b
    ld a, [bc]
    dec b
    ld b, $0b
    nop
    rlca
    ld [$0900], sp
    nop
    inc hl
    ld e, c
    daa
    ld e, c
    add hl, hl
    ld e, c
    dec hl
    ld e, c
    cpl
    ld e, c
    ld bc, $0302
    nop
    inc b
    nop
    ld a, [bc]
    nop
    dec b
    ld b, $0b
    nop
    rlca
    ld [$0009], sp
    dec sp
    ld e, c
    ld b, c
    ld e, c
    ld b, e
    ld e, c
    ld c, b
    ld e, c
    ld bc, $0302
    inc b
    ld a, [bc]
    nop
    dec b
    nop
    ld b, $07
    ld [$0009], sp
    dec bc
    nop
    add d
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    adc d
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    adc h
    ld e, c
    adc [hl]
    ld e, c
    add d
    ld e, c
    and h
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    and [hl]
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    or d
    ld e, c
    cp h
    ld e, c
    call nc, $d659
    ld e, c
    add d
    ld e, c
    add d
    ld e, c
    ldh [$59], a
    or $59
    add d
    ld e, c
    inc c
    ld e, d
    ret z

    ld c, a
    ret z

    ld c, a
    ret z

    ld c, a
    db $e4
    ld c, a
    ld b, c
    ld d, b
    ld [hl], d
    ld d, b
    xor b
    ld d, b
    xor e
    ld d, b
    xor e
    ld d, b
    xor e
    ld d, b
    xor [hl]
    ld d, b
    or c
    ld d, b
    or h
    ld d, b
    or h
    ld d, b
    or a
    ld d, b
    xor e
    ld d, b
    cp d
    ld d, b
    cp l
    ld d, b
    ld [bc], a
    ld d, c
    ld [$0b51], sp
    ld d, c
    ld de, $0851
    ld d, c
    ld [$1451], sp
    ld d, c
    ld a, [hl+]
    ld d, c
    ld b, [hl]
    ld d, c
    ld c, e
    ld d, c
    ld d, b
    ld d, c
    ld d, l
    ld d, c
    ld d, l
    ld d, c
    ld e, b
    ld d, c
    ld e, [hl]
    ld d, c
    ld h, c
    ld d, c
    ld h, h
    ld d, c
    ld h, a
    ld d, c
    ld h, a
    ld d, c
    ld l, d
    ld d, c
    ld e, e
    ld d, c
    ld l, l
    ld d, c
    ld [hl], b
    ld d, c
    db $76
    ld d, c
    ld a, [hl]
    ld d, c
    add c
    ld d, c
    add h
    ld d, c
    add a
    ld d, c
    add h
    ld d, c
    adc d
    ld d, c
    adc d
    ld d, c
    adc l
    ld d, c
    adc l
    ld d, c
    and h
    ld d, c
    and a
    ld d, c
    xor d
    ld d, c
    xor d
    ld d, c
    xor l
    ld d, c
    adc l
    ld d, c
    or b
    ld d, c
    or e
    ld d, c
    call nz, $c951
    ld d, c
    adc $51
    ret c

    ld d, c
    db $dd
    ld d, c
    ld [c], a
    ld d, c
    ld [c], a
    ld d, c
    rst $20
    ld d, c
    db $d3
    ld d, c
    db $ec
    ld d, c
    pop af
    ld d, c
    ld e, $44
    ld a, [de]
    rst $00
    jr @+$5c

    add e
    ld e, d
    sub e
    ld e, d
    call $15e9
    ld a, $0b
    call $24f5
    ld e, $41
    ld a, [de]
    cp $26
    jr z, jr_008_5a3d

    call $1956
    and $40
    ld e, $42
    ld a, [de]
    jr nz, jr_008_5a37

    or a
    jp nz, $3ad9

    jr jr_008_5a65

jr_008_5a37:
    or a
    jp z, $3ad9

    jr jr_008_5a65

jr_008_5a3d:
    call $1956
    and $40
    ld e, $42
    ld a, [de]
    jr nz, jr_008_5a56

    or a
    jp nz, $3ad9

    call Call_008_5a78
    ld a, $00
    call $25cb
    jp Jump_008_5a96


jr_008_5a56:
    or a
    jp z, $3ad9

    call Call_008_5a78
    ld a, $02
    call $25cb
    jp Jump_008_5a96


jr_008_5a65:
    ld h, d
    ld l, $44
    ld [hl], $01
    ld hl, $5225
    call $24fe
    ld a, $02
    call $25cb
    jp Jump_008_5a96


Call_008_5a78:
    ld h, d
    ld l, $44
    ld [hl], $02
    ld hl, $5227
    jp $24fe


    call $250c
    ld a, [$cceb]
    or a
    jp z, $2646

    call Call_008_5a99
    jp Jump_008_5a96


    call $250c

Jump_008_5a96:
    jp $2686


Call_008_5a99:
    ld e, $78
    ld a, [de]
    rst $00
    and l
    ld e, d
    jp nz, $d45a

    ld e, d
    xor $5a
    ld h, d
    ld l, $78
    ld [hl], $01
    ld l, $49
    ld [hl], $08
    ld l, $50
    ld [hl], $28
    ld l, $54
    ld [hl], $00
    inc hl
    ld [hl], $fe
    ld l, $79
    ld [hl], $04
    ld a, $07
    jp $25cb


    ld h, d
    ld l, $79
    dec [hl]
    ret nz

    ld l, $78
    inc [hl]
    ld a, $08
    call $25cb
    ld a, $53
    jp $0c74


    ld c, $28
    call $1f04
    jp nz, $1fdb

    ld h, d
    ld l, $78
    inc [hl]
    ld l, $79
    ld [hl], $04
    ld a, $07
    call $25cb
    ld a, $57
    jp $0c74


    ld h, d
    ld l, $79
    dec [hl]
    ret nz

    xor a
    ld [$cceb], a
    ld a, $02
    jp $25cb


    ld e, $44
    ld a, [de]
    rst $00
    inc b
    ld e, e
    ld a, e
    ld e, e
    ld a, $01
    ld [de], a
    ld a, $28
    call $30c7
    jp nz, $3ad9

    ld a, $52
    call $24f5
    call $15e9
    ld e, $42
    ld a, [de]
    rst $00
    ld a, [hl+]
    ld e, e
    ld b, e
    ld e, e
    ld h, d
    ld e, e

jr_008_5b21:
    call $250c
    call $250c
    jp $1e03


    ld a, [$c6b0]
    and $02
    jr nz, jr_008_5b3b

    ld a, $71
    call $1959
    bit 6, a
    jp nz, $3ad9

jr_008_5b3b:
    ld hl, $526d
    call $24fe
    jr jr_008_5b21

    ld a, [$c6b0]
    and $08
    jr z, jr_008_5b59

    call $1956
    bit 6, a
    jr nz, jr_008_5b59

    ld hl, $52fa
    call $24fe
    jr jr_008_5b21

jr_008_5b59:
    ld hl, $7e4a
    call $3048
    jp $3ad9


    call $1956
    ld a, [$c6b0]
    and $02
    jr z, jr_008_5b71

    res 6, [hl]
    jp $3ad9


jr_008_5b71:
    set 6, [hl]
    ld hl, $5358
    call $24fe
    jr jr_008_5b21

    ld e, $42
    ld a, [de]
    rst $00
    add l
    ld e, e
    pop bc
    ld e, e
    db $dd
    ld e, e
    call $250c
    call $2686
    ld a, $19
    call $1717
    ret nc

    call $1956
    bit 6, [hl]
    jr z, jr_008_5b9f

    ld e, $43
    ld a, [de]
    or a
    jr nz, jr_008_5bb4

    ret


jr_008_5b9f:
    ld a, [$d00d]
    cp $78
    ret c

    ld a, [$d00b]
    cp $3c
    ret c

    cp $60
    ret nc

Call_008_5bae:
    ld e, $77
    ld a, $01
    ld [de], a
    ret


jr_008_5bb4:
    ld a, [$cc00]
    and $3f
    ret nz

    ld b, $f4
    ld c, $fa
    jp $2745


    call $2686
    call $250c
    jp c, $3ad9

    call $23be
    ret nz

    ld a, [$d00d]
    cp $18
    ret c

    call $23a0
    call Call_008_5bae
    jp Jump_008_5dfe


    ld a, [$cca4]
    and $01
    call z, $3d30
    call $2686
    jp $250c


    ld e, $44
    ld a, [de]
    rst $00
    di
    ld e, e
    ld b, d
    ld e, h
    call $15e9
    call $239b
    ld e, $42
    ld a, [de]
    ld hl, $5c87
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $42
    ld a, [de]
    rst $00
    ld e, $5c
    ld [hl-], a
    ld e, h
    ld [hl-], a
    ld e, h
    ld [hl-], a
    ld e, h
    ld [hl-], a
    ld e, h
    ld a, [hl-]
    ld e, h
    ld [hl-], a
    ld e, h
    ld [hl-], a
    ld e, h
    ld [hl-], a
    ld e, h
    ld [hl-], a
    ld e, h
    ld h, d
    ld l, $50
    ld [hl], $28
    ld l, $49
    ld [hl], $18
    ld l, $7a
    ld a, $04
    ld [hl], a
    call $25cb
    jp Jump_008_5c66


    ld a, $03
    call $25cb
    jp Jump_008_5c66


    ld a, $02
    call $25cb
    jp Jump_008_5c66


    ld e, $42
    ld a, [de]
    rst $00
    ld e, d
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    call Call_008_5c6c
    call $250c
    jp Jump_008_5c63


Jump_008_5c63:
    call $25b8

Jump_008_5c66:
    call $261d
    jp $229b


Call_008_5c6c:
    call $1fdb
    ld e, $4d
    ld a, [de]
    sub $28
    cp $30
    ret c

    ld h, d
    ld l, $49
    ld a, [hl]
    xor $10
    ld [hl], a
    ld l, $7a
    ld a, [hl]
    xor $01
    ld [hl], a
    jp $25cb


    ld a, [hl]
    ld d, e
    sub e
    ld d, e
    sub e
    ld d, e
    sub e
    ld d, e
    sub e
    ld d, e
    and d
    ld d, e
    sub e
    ld d, e
    sub e
    ld d, e
    sub e
    ld d, e
    sub e
    ld d, e
    call $23b9
    jr nz, jr_008_5d02

    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    cp $0a
    jr z, jr_008_5cee

    cp $0b
    jr nz, jr_008_5cc6

    ld a, $22
    call $30c7
    jp z, $3ad9

    ld a, $23
    call $30c7
    jp nz, $3ad9

    ld hl, $53d6
    jr jr_008_5cc9

jr_008_5cc6:
    ld hl, $53b8

jr_008_5cc9:
    call $24fe
    call $042f
    and $01
    ld e, $48
    ld [de], a
    call $25cb
    call $26ac
    ld l, $76
    ld [hl], $1e
    call Call_008_5dfe
    ld l, $42
    ld a, [hl]
    ld l, $72
    ld [hl], a
    ld l, $73
    ld [hl], $32
    jp $1e27


jr_008_5cee:
    call $26ac
    ld l, $46
    ld [hl], $b4
    ld l, $50
    ld [hl], $19
    call Call_008_5dfe
    call $1e27
    jp $1e39


jr_008_5d02:
    ld e, $42
    ld a, [de]
    cp $0a
    jr z, jr_008_5d5c

    call $250c
    ld e, $45
    ld a, [de]
    rst $00
    inc d
    ld e, l
    ld b, c
    ld e, l
    ld e, $77
    ld a, [de]
    or a
    jr z, jr_008_5d25

    call $23a0
    ld l, $48
    ld a, [hl]
    add $02
    jp $25cb


jr_008_5d25:
    call Call_008_5df2
    jr nz, jr_008_5d3e

    ld l, $76
    ld [hl], $1e
    call $041a
    and $07
    jr nz, jr_008_5d3e

    ld l, $48
    ld a, [hl]
    xor $01
    ld [hl], a
    jp $25cb


jr_008_5d3e:
    jp $2686


    call $25b8
    ld e, $77
    ld a, [de]
    or a
    jp nz, Jump_008_5df7

    ld l, $76
    ld [hl], $3c
    ld l, $45
    ld [hl], a
    ld l, $4e
    ld [hl+], a
    ld [hl], a
    ld l, $48
    ld a, [hl]
    jp $25cb


jr_008_5d5c:
    ld e, $45
    ld a, [de]
    rst $00
    ld l, d
    ld e, l
    ld a, h
    ld e, l
    and c
    ld e, l
    or e
    ld e, l
    adc $5d
    ld a, [$cbc3]
    or a
    ret nz

    call $2387
    ret nz

    ld l, $45
    inc [hl]
    call Call_008_5e04
    jp $1e42


    call $2686
    call Call_008_5df7
    ld a, [$cc00]
    and $07
    call z, Call_008_5e04
    ld c, $10
    call Call_008_5e22
    jp nc, $1fdb

    ld h, d
    ld l, $45
    inc [hl]
    ld l, $46
    ld [hl], $14
    ld l, $4f
    ld [hl], $00
    jp Jump_008_5dfe


    call $2686
    call $2387
    ret nz

    ld l, $45
    inc [hl]
    ld l, $78
    ld a, [hl]
    add $02
    jp $25cb


    call $2686
    call Call_008_5de5
    ld e, $4f
    ld a, [de]
    or a
    ret nz

    ld c, $18
    call Call_008_5e22
    ret c

    ld h, d
    ld l, $45
    inc [hl]
    call Call_008_5dfe
    jp Jump_008_5e04


    call $2686
    call Call_008_5df7
    ld a, [$cc00]
    and $07
    call z, Call_008_5e04
    call $1fdb
    call $2142
    jp nc, $3ad9

Call_008_5de5:
    ld c, $10
    call $1f04
    ret nz

    ld h, d
    ld bc, $fec0
    jp $2358


Call_008_5df2:
    ld h, d
    ld l, $76
    dec [hl]
    ret


Call_008_5df7:
Jump_008_5df7:
    ld c, $20
    call $1f04
    ret nz

    ld h, d

Call_008_5dfe:
Jump_008_5dfe:
    ld bc, $ff40
    jp $2358


Call_008_5e04:
Jump_008_5e04:
    call $211e
    ld l, $4b
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]
    call $1e62
    ld e, $49
    ld [de], a
    and $10
    swap a
    xor $01
    ld h, d
    ld l, $78
    cp [hl]
    ret z

    ld [hl], a
    jp $25cb


Call_008_5e22:
    ld e, $4b
    ld a, [de]
    ld b, a
    call $211e
    ld l, $4b
    ld a, [hl]
    sub b
    cp c
    ret


    ld e, $44
    ld a, [de]
    rst $00
    scf
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    call $15e9
    ld a, $44
    call $24f5
    call $239b
    ld e, $42
    ld a, [de]
    ld hl, $5e86
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $42
    ld a, [de]
    rst $00
    ld h, a
    ld e, [hl]
    ld h, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld h, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld l, a
    ld e, [hl]
    ld a, $00
    call $25cb
    jp Jump_008_5e80


    ld a, $04
    call $25cb
    jp Jump_008_5e80


    call $250c
    jp Jump_008_5e7d


Jump_008_5e7d:
    call $25b8

Jump_008_5e80:
    call $261d
    jp $229b


    ld [$2653], a
    ld d, h
    jp nc, $de54

    ld d, h
    ld c, $55
    db $10
    ld d, l
    ld [de], a
    ld d, l
    or c
    ld d, l
    jp $d555


    ld d, l
    ld e, $44
    ld a, [de]
    rst $00
    and d
    ld e, [hl]
    ld [c], a
    ld e, [hl]
    ld a, $01
    ld [de], a
    call Call_008_5874
    ld e, $42
    ld a, [de]
    cp b
    jp nz, $3ad9

    call $15e9
    ld a, [$cc4c]
    cp $6d
    jr z, jr_008_5ec1

    ld a, $01
    ld e, $48
    ld [de], a
    call $25cb

jr_008_5ec1:
    ld e, $42
    ld a, [de]
    ld hl, $5f7e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call $3ac6
    jr nz, jr_008_5ee0

    ld [hl], $8e
    inc l
    ld [hl], $00
    ld l, $57
    ld [hl], d
    ld l, $49
    call Call_008_5f4e

jr_008_5ee0:
    jr jr_008_5ef1

    call $250c
    ld e, $43
    ld a, [de]
    rst $00
    pop af
    ld e, [hl]
    nop
    ld e, a
    ld d, $5f
    ld d, $5f

jr_008_5ef1:
    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    jr nz, jr_008_5efd

Call_008_5efa:
    call Call_008_5f70

jr_008_5efd:
    jp $2689


    call $25b8
    ld e, $61
    ld a, [de]
    or a
    jr z, jr_008_5efd

    call Call_008_5f65
    call $042f
    and $03
    jr nz, jr_008_5f3b

    inc a
    jr jr_008_5f3b

    call $25b8
    ld e, $61
    ld a, [de]
    cp $02
    jr nz, jr_008_5efd

    call Call_008_5f65
    call $3ea7
    jr nz, jr_008_5f32

    ld [hl], $32
    inc l
    ld [hl], $01
    ld l, $c9
    call Call_008_5f4e

jr_008_5f32:
    call $042f
    and $03
    sub $02
    ret c

    inc a

jr_008_5f3b:
    ld b, a

jr_008_5f3c:
    call $3ea7
    ret nz

    ld [hl], $32
    inc l
    ld [hl], $00
    ld l, $c9
    call Call_008_5f4e
    dec b
    jr nz, jr_008_5f3c

    ret


Call_008_5f4e:
    push bc
    ld e, $48
    ld a, [de]
    rrca
    ld c, $f8
    ld a, $1c
    jr nc, jr_008_5f5d

    ld c, $0a
    ld a, $06

jr_008_5f5d:
    ld [hl], a
    ld b, $02
    call $2215
    pop bc
    ret


Call_008_5f65:
    ld e, $48
    ld a, [de]
    and $01
    call $25cb
    call Call_008_5efa

Call_008_5f70:
    ld e, $76
    ld a, $01
    ld [de], a
    call $042f
    and $03
    ld e, $43
    ld [de], a
    ret


    rst $20
    ld d, l
    ld [$ea55], a
    ld d, l
    push af
    ld d, l
    ld [$1e55], a
    ld b, h
    ld a, [de]
    rst $00
    sbc b
    ld e, a
    jp c, $f35f

    ld e, a
    inc d
    ld h, b
    rra
    ld h, b
    dec hl
    ld h, b
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $6b
    ld [hl], $00
    ld l, $49
    ld [hl], $ff
    ld l, $42
    ld a, [hl]
    cp $25
    jr nz, jr_008_5fc1

    call $196b
    jp z, $3ad9

    ld a, $0d
    call $30c7
    jp z, $3ad9

    ld e, $7e
    ld a, $03
    ld [de], a

jr_008_5fc1:
    ld e, $42
    ld a, [de]
    ld hl, $607f
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call $250c
    call $250c
    jp c, $3ad9

    jp $1e27


    ld a, [$cc49]
    dec a
    jr nz, jr_008_5fe5

    call $1432
    ld [hl], $00

jr_008_5fe5:
    ld c, $20
    call $1f04
    call $250c
    jp c, $3ad9

    jp $2646


    call $1bee
    call c, Call_008_600e

jr_008_5ff9:
    call $25b8
    call $25b8
    call $250c
    ld c, $60
    call $1f04
    ret nz

    ld bc, $fe00
    jp $2358


Call_008_600e:
    ld hl, $cfc0
    set 1, [hl]
    ret


    call $1e5a
    ld e, $49
    ld [de], a
    call $1fdb
    jr jr_008_5ff9

    ld c, $20
    call $1f04
    call $250c
    jp c, $3ad9

    ret


    call $250c
    ld e, $45
    ld a, [de]
    rst $00
    ld a, [hl-]
    ld h, b
    ld d, [hl]
    ld h, b
    ld h, h
    ld h, b
    ld h, h
    ld h, b

jr_008_603a:
    ld a, [$cfc0]
    call $01ea
    ret nc

    cp $03
    jr nz, jr_008_604b

    ld e, $44
    ld a, $04
    ld [de], a
    ret


jr_008_604b:
    ld b, a
    inc a
    ld e, $45
    ld [de], a
    ld a, b
    add $04
    jp $25cb


    call $25b8
    ld a, [$cfc0]
    or a
    ret z

    ld e, $45
    xor a
    ld [de], a
    jr jr_008_603a

    call $25b8
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jr z, jr_008_6074

    ld [hl], $00
    ld l, $4d
    add [hl]
    ld [hl], a

jr_008_6074:
    ld a, [$cfc0]
    or a
    ret z

    ld l, $45
    ld [hl], $00
    jr jr_008_603a

    ld hl, sp+$55
    rst $38
    ld d, l
    rst $38
    ld d, l
    add hl, bc
    ld d, [hl]
    inc c
    ld d, [hl]
    ld [de], a
    ld d, [hl]
    jr jr_008_60e3

    dec hl
    ld d, [hl]
    ld a, $56
    ld c, h
    ld d, [hl]
    ld e, d
    ld d, [hl]
    ld l, b
    ld d, [hl]
    ld a, a
    ld d, [hl]
    sbc c
    ld d, [hl]
    and e
    ld d, [hl]
    xor l
    ld d, [hl]
    or b
    ld d, [hl]
    rst $20
    ld d, [hl]
    ld hl, sp+$56
    db $fc
    ld d, [hl]
    ld d, $57
    inc e
    ld d, a
    inc hl
    ld d, a
    dec l
    ld d, a
    jr nc, @+$59

    inc sp
    ld d, a
    dec a
    ld d, a
    ld b, b
    ld d, a
    ld b, e
    ld d, a
    ld c, c
    ld d, a
    ld c, a
    ld d, a
    ld d, l
    ld d, a
    ld e, b
    ld d, a
    ld e, [hl]
    ld d, a
    ld l, l
    ld d, a
    ld [hl], b
    ld d, a
    ld [hl], e
    ld d, a
    db $76
    ld d, a
    cp l
    ld d, a
    ld e, $42
    ld a, [de]
    rst $00
    reti


    ld h, b
    inc e
    ld h, c
    sbc d
    ld h, d
    reti


    ld h, b
    ld e, $44
    ld a, [de]
    rst $00
    pop hl
    ld h, b
    ld d, $61
    ld a, $01

jr_008_60e3:
    ld [de], a
    call $15e9
    ld a, $0b
    call $30c7
    jp nz, $3ad9

    ld h, d
    ld l, $6b
    ld [hl], $00
    ld l, $49
    ld [hl], $ff
    ld a, $0c
    call $30c7
    jr nz, jr_008_6104

    ld e, $77
    ld a, $04
    ld [de], a

jr_008_6104:
    ld hl, $5813
    call $24fe
    ld a, $29
    call $24f5
    call $1432
    ld [hl], $00
    jr jr_008_6119

    call $250c

jr_008_6119:
    jp $2646


    ld e, $44
    ld a, [de]
    rst $00
    jr z, jr_008_6183

    ld d, [hl]
    ld h, c
    ei
    ld h, c
    ld l, h
    ld h, d
    ld a, $01
    ld [de], a
    call $15e9
    call $180b
    call $26ac
    call $1e4b
    ld l, $73
    ld [hl], $01
    ld l, $70
    ld e, $4b
    ld a, [de]
    ld [hl+], a
    ld e, $4d
    ld a, [de]
    ld [hl+], a
    ld e, $48
    ld a, [$d008]
    ld [de], a
    ld [hl], $00
    call $25cb
    call $1e0c
    jp $229b


    call $229b
    call Call_008_61a4
    ret c

    ld c, $20
    call $1f04
    call z, Call_008_6182
    call Call_008_628e
    ld h, d
    ld l, $4b
    ld a, [hl]
    ld b, a
    ld l, $70
    cp [hl]
    jr nz, jr_008_617a

    ld l, $4d
    ld a, [hl]
    ld c, a
    ld l, $71
    cp [hl]
    ret z

jr_008_617a:
    ld l, $70
    ld [hl], b
    inc l
    ld [hl], c
    jp $25b8


Call_008_6182:
    ld h, d

jr_008_6183:
    ld l, $46
    ld a, [hl]
    or a
    jr z, jr_008_6191

    dec [hl]
    ret nz

    ld bc, $fe40
    jp $2358


jr_008_6191:
    ld a, [$cc77]
    or a
    ret z

    ld a, [$cca4]
    and $81
    ret nz

    ld a, [$cc02]
    or a
    ret nz

    ld [hl], $10
    ret


Call_008_61a4:
    ld a, [$cc49]
    cp $06
    jr nc, jr_008_61d7

    ld a, [$cc4c]
    ld hl, $61dd
    call $1dbc
    ret nc

    rst $00
    cp h
    ld h, c
    jp nc, $d761

    ld h, c
    ld e, $73
    ld a, [de]
    or a
    jr nz, jr_008_61d0

    ld a, [$cd00]
    and $01
    jr z, jr_008_61d0

    ld e, $44
    ld a, $02
    ld [de], a
    scf
    ret


jr_008_61d0:
    xor a
    ret


    ld e, $73
    xor a
    ld [de], a
    ret


jr_008_61d7:
    ld e, $44
    ld a, $03
    ld [de], a
    ret


    db $ed
    ld h, c
    xor $61
    db $ed
    ld h, c
    di
    ld h, c
    ld hl, sp+$61
    ld a, [$ed61]
    ld h, c
    db $ed
    ld h, c
    nop
    ld h, a
    ld bc, $0077
    nop
    adc d
    ld [bc], a
    or c
    ld [bc], a
    nop
    ldh a, [rSC]
    nop
    ld e, $45
    ld a, [de]
    rst $00
    dec b
    ld h, d
    dec h
    ld h, d
    ld b, e
    ld h, d
    ld a, $01
    ld [de], a
    call $181f
    ld a, $0b
    call $30d3
    ld a, $01
    ld [$cca4], a
    ld a, $02
    ld [$d008], a
    ld a, $29
    call $24f5
    ld hl, $5855
    jp $24fe


    ld c, $20
    call $1f04
    call $25b8
    call $229b
    call $250c
    ret nc

    ld e, $45
    ld a, $02
    ld [de], a
    ld bc, $4858
    call $1e62
    ld e, $49
    ld [de], a
    ret


    call $25b8
    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $48
    ret c

    ld h, d
    ld l, $42
    ld b, $06
    call $044b
    ld l, $40
    ld [hl], $01
    xor a
    ld [$cca4], a
    call $1432
    ld [hl], $00
    ld a, $28
    ld [$cc51], a
    jp $0c74


    call $268f
    ld e, $45
    ld a, [de]
    rst $00
    ld [hl], a
    ld h, d
    adc b
    ld h, d
    ld a, $01
    ld [de], a
    call $181f
    ld a, $0b
    call $30d3
    ld bc, $291a
    jp $184b


    call $1832
    jp $3ad9


Call_008_628e:
    ld h, d
    ld l, $48
    ld a, [hl]
    ld l, $72
    cp [hl]
    ret z

    ld [hl], a
    jp $25cb


    ld e, $44
    ld a, [de]
    rst $00
    and d
    ld h, d
    db $db
    ld h, d
    ld a, $01
    ld [de], a
    ld a, $0e
    call $30c7
    jp nz, $3ad9

    ld a, [$cc9e]
    or a
    jp nz, $3ad9

    ld a, d
    ld [$cc9e], a
    ld h, d
    ld l, $40
    set 1, [hl]
    call $041a
    and $03
    ld hl, $62d3
    rst JumpTable
    ld e, $70
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, $ff
    ld e, $72
    ld [de], a
    ret


    ld h, l
    ld d, a
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    daa
    db $76
    inc h
    ld e, $72
    ld a, [de]
    ld b, a
    ld a, [$cc4c]
    cp b
    ret z

    ld [de], a
    ld b, a
    ld e, $70
    ld a, [de]
    cp b
    jr nz, jr_008_62fd

    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $45
    ld e, $71
    ld a, [de]
    ld l, $4b
    jp $2076


jr_008_62fd:
    ld a, $45
    call $1717
    jr c, jr_008_630f

    ld a, b
    cp $60
    ret nc

jr_008_6308:
    xor a
    ld [$cc9e], a
    jp $3ad9


jr_008_630f:
    ld a, $0e
    call $30cd
    jr jr_008_6308

    ld e, $44
    ld a, [de]
    rst $00
    ld e, $63
    ld b, l
    ld h, e
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $6b
    ld [hl], $00
    ld l, $49
    ld [hl], $ff
    ld l, $42
    ld a, [hl]
    ld hl, $6369
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call $250c
    call $250c
    jp c, $3ad9

    jr jr_008_6366

    ld a, [$cc49]
    dec a
    jr nz, jr_008_6350

    call $1432
    ld [hl], $00

jr_008_6350:
    call $250c
    ld c, $28
    call $1f60
    jr c, jr_008_635c

    ld a, $04

jr_008_635c:
    ld l, $49
    cp [hl]
    jr z, jr_008_6366

    ld [hl], a
    rrca
    call $25cb

jr_008_6366:
    jp $2686


    ld h, c
    ld e, b
    ld h, h
    ld e, b
    ld l, e
    ld e, b
    ld [hl], c
    ld e, b
    ld [hl], h
    ld e, b
    ld [hl], a
    ld e, b
    ld h, c
    ld e, b
    ld h, c
    ld e, b
    call $23b9
    jr nz, jr_008_6384

    ld a, $01
    ld [de], a
    call $15e9

jr_008_6384:
    call $2686
    ld e, $61
    ld a, [de]
    cp $ff
    ret nz

    ld a, $50
    jp $0c74


    ld e, $44
    ld a, [de]
    rst $00
    sbc d
    ld h, e
    ld l, b
    ld h, h
    call Call_008_6537
    call $15e9
    call $239b
    ld e, $43
    ld a, [de]
    ld hl, $66c4
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $43
    ld a, [de]
    rst $00
    xor $63
    db $fc
    ld h, e
    ld hl, $3a64
    ld h, h
    db $fc
    ld h, e
    ld hl, $3a64
    ld h, h
    rst $30
    ld h, e
    jr z, jr_008_642a

    ld a, [hl-]
    ld h, h
    ld b, e
    ld h, h
    ld b, a
    ld h, h
    ld h, b
    ld h, h
    ld h, h
    ld h, h
    ld b, e
    ld h, h
    ld c, [hl]
    ld h, h
    ld h, b
    ld h, h
    ld h, h
    ld h, h
    ld b, e
    ld h, h
    ld b, a
    ld h, h
    ld h, b
    ld h, h
    ld h, h
    ld h, h
    jr @+$66

    xor $63
    ld a, [hl-]
    ld h, h
    ld b, e
    ld h, h
    xor $63
    xor $63
    ld h, h
    ld h, h
    ld e, $77
    ld a, [de]
    call $25cb
    jp Jump_008_651f


    ld a, $02
    call Call_008_6618

Call_008_63fc:
    ld h, d
    ld l, $79
    ld [hl], $01
    ld l, $50
    ld [hl], $3c
    ld l, $49
    ld [hl], $18
    ld a, $00

jr_008_640b:
    ld h, d
    ld l, $7a
    ld [hl], a
    ld l, $77
    add [hl]
    call $25cb
    jp Jump_008_651f


    call Call_008_63fc
    ld h, d
    ld l, $50
    ld [hl], $28
    ret


    ld a, $00
    call Call_008_6618
    jr jr_008_642d

    ld a, $01

jr_008_642a:
    call Call_008_6618

jr_008_642d:
    ld h, d
    ld l, $79
    ld [hl], $01
    ld l, $50
    ld [hl], $50
    ld a, $00
    jr jr_008_640b

    ld h, d
    ld l, $79
    ld [hl], $02
    ld a, $00
    jr jr_008_640b

    ld a, $00
    jr jr_008_640b

    ld a, $03
    call Call_008_6618
    jr jr_008_6453

    ld a, $04
    call Call_008_6618

jr_008_6453:
    ld h, d
    ld l, $79
    ld [hl], $01
    ld l, $50
    ld [hl], $14
    ld a, $00
    jr jr_008_640b

    ld a, $03
    jr jr_008_640b

    ld a, $00
    jr jr_008_640b

    ld e, $43
    ld a, [de]
    rst $00
    or d
    ld h, h
    and [hl]
    ld h, h
    cp e
    ld h, h
    jp c, $a664

    ld h, h
    cp e
    ld h, h
    jp c, $c664

    ld h, h
    cp e
    ld h, h
    jp c, $e764

    ld h, h
    add $64
    xor a
    ld h, h
    nop
    ld h, l
    rst $20
    ld h, h
    add $64
    xor a
    ld h, h
    nop
    ld h, l
    rst $20
    ld h, h
    add $64
    xor a
    ld h, h
    nop
    ld h, l
    or l
    ld h, h
    or d
    ld h, h
    db $e4
    ld h, h
    rst $20
    ld h, h
    or d
    ld h, h
    or d
    ld h, h
    nop
    ld h, l
    ld e, $46
    ld a, [de]
    or a
    jr nz, jr_008_64af

    call Call_008_654b

jr_008_64af:
    call $250c
    jp Jump_008_651c


    call Call_008_657f
    jp Jump_008_651c


    ld e, $46
    ld a, [de]
    or a
    jr nz, jr_008_64c4

    call Call_008_6593

jr_008_64c4:
    jr jr_008_6516

    ld e, $46
    ld a, [de]
    or a
    jr nz, jr_008_64d8

    call Call_008_65b3
    call Call_008_65f4
    call Call_008_65cf
    call c, Call_008_660c

jr_008_64d8:
    jr jr_008_6516

    call Call_008_667b
    ld e, $7d
    ld a, [de]
    or a
    call z, $250c
    jp Jump_008_651c


    ld a, [$cc00]
    and $1f
    jr nz, jr_008_64fe

    ld e, $61
    ld a, [de]
    and $01
    ld c, $08
    jr nz, jr_008_64f9

    ld c, $fc

jr_008_64f9:
    ld b, $f4
    call $2745

jr_008_64fe:
    jr jr_008_6516

    ld a, [$cc00]
    and $1f
    jr nz, jr_008_6516

    ld e, $48
    ld a, [de]
    or a
    ld c, $fc
    jr z, jr_008_6511

    ld c, $00

jr_008_6511:
    ld b, $fc
    call $2745

jr_008_6516:
    call $250c
    jp Jump_008_651c


Jump_008_651c:
    call $25b8

Jump_008_651f:
    ld e, $79
    ld a, [de]
    cp $01
    jr z, jr_008_6531

    cp $02
    jp z, $229b

    call $261d
    jp $229b


jr_008_6531:
    call $22c9
    jp $229b


Call_008_6537:
    ld e, $42
    ld a, [de]
    ld hl, $6543
    rst $10
    ld a, [hl]
    ld e, $77
    ld [de], a
    ret


    nop
    ld [bc], a
    dec b
    ld [$110b], sp
    dec d
    rla

Call_008_654b:
    call $1fdb
    ld h, d
    ld l, $4d
    ld a, [hl]
    sub $29
    cp $40
    ret c

    bit 7, a
    jr nz, jr_008_655d

    dec [hl]
    dec [hl]

jr_008_655d:
    inc [hl]
    ld l, $7c
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ld bc, $657b
    call $006d
    ld a, [bc]
    ld l, $49
    ld [hl], a

jr_008_656f:
    ld l, $7a
    ld a, [hl]
    xor $01
    ld [hl], a
    ld l, $77
    add [hl]
    jp $25cb


    jr jr_008_6587

    jr jr_008_6585

Call_008_657f:
    call $1fdb
    ld e, $4d
    ld a, [de]

jr_008_6585:
    sub $14

jr_008_6587:
    cp $28
    ret c

    ld h, d
    ld l, $49
    ld a, [hl]
    xor $10
    ld [hl], a
    jr jr_008_656f

Call_008_6593:
    ld e, $45
    ld a, [de]
    rst $00
    sbc e
    ld h, l
    and h
    ld h, l
    ld c, $18
    call $1f60
    ret nc

    call $23a0
    call Call_008_65b3
    call Call_008_65cf
    ret nc

    ld h, d
    ld l, $45
    ld [hl], $00
    jp Jump_008_660c


Call_008_65b3:
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
    rst $10
    ld b, [hl]
    inc hl
    ld c, [hl]
    call $1e62
    ld e, $49
    ld [de], a
    jp $1fdb


Call_008_65cf:
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
    ld l, $4b
    ld a, [bc]
    sub [hl]
    add $01
    cp $03
    ret nc

    inc bc
    ld l, $4d
    ld a, [bc]
    sub [hl]
    add $01
    cp $03
    ret


Call_008_65f4:
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
    ld l, $7a
    add [hl]
    ld l, $77
    add [hl]
    jp $25cb


Call_008_660c:
Jump_008_660c:
    ld h, d
    ld l, $7d
    ld a, [hl]
    ld l, $7c
    inc [hl]
    cp [hl]
    ret nc

    ld [hl], $00
    ret


Call_008_6618:
    add a
    add a
    ld hl, $662b
    rst $10
    ld e, $7f
    ld a, [hl+]
    ld [de], a
    ld e, $7e
    ld a, [hl+]
    ld [de], a
    ld e, $7d
    ld a, [hl+]
    ld [de], a
    ret


    ccf
    ld h, [hl]
    rlca
    nop
    ld c, a
    ld h, [hl]
    inc bc
    nop
    ld d, a
    ld h, [hl]
    dec bc
    nop
    ld l, a
    ld h, [hl]
    ld bc, $7300
    ld h, [hl]
    inc bc
    nop
    ld l, b
    jr @+$6a

    ld l, b
    jr z, @+$6a

    ld l, b
    jr jr_008_6680

    jr jr_008_66b2

    ld l, b
    jr z, @+$6a

    jr c, @+$1a

    jr @+$1a

    ld e, b
    jr @+$5a

    ld c, b
    jr @+$4a

    jr z, @+$4a

    jr @+$46

    jr jr_008_6685

    jr nz, @+$1a

    inc l
    inc c
    jr c, jr_008_666b

    ld b, h
    inc c
    ld d, b
    jr jr_008_66c0

    jr z, jr_008_66c2

    ld b, h

jr_008_666b:
    ld c, b
    ld c, b
    jr c, jr_008_66bb

    ld c, b
    jr @+$4a

    ld l, b
    jr jr_008_66a5

    ld e, b
    jr nc, jr_008_66d0

    ld c, b
    jr @+$4a

Call_008_667b:
    ld e, $45
    ld a, [de]
    rst $00
    add l

jr_008_6680:
    ld h, [hl]
    and e
    ld h, [hl]
    cp l
    ld h, [hl]

jr_008_6685:
    ld h, d
    ld l, $50
    ld [hl], $28
    ld l, $49
    ld [hl], $18

jr_008_668e:
    ld h, d
    ld l, $45
    ld [hl], $01
    ld l, $7d
    ld [hl], $01
    ld l, $54
    ld [hl], $00
    inc hl
    ld [hl], $fb
    ld a, $53
    jp $0c74


    ld c, $50

jr_008_66a5:
    call $1f04
    jp nz, $1fdb

    call $23a0
    ld l, $7d
    ld [hl], $00

jr_008_66b2:
    ld l, $7c
    ld [hl], $78
    ld l, $49
    ld a, [hl]
    xor $10

jr_008_66bb:
    ld [hl], a
    ret


    ld h, d
    ld l, $7c

jr_008_66c0:
    dec [hl]
    ret nz

jr_008_66c2:
    jr jr_008_668e

    ld a, d
    ld e, b
    ld a, e
    ld e, b
    add d
    ld e, b
    adc c
    ld e, b
    sub b
    ld e, b
    sbc e
    ld e, b

jr_008_66d0:
    and [hl]
    ld e, b
    or c
    ld e, b
    push hl
    ld e, b
    add hl, de
    ld e, c
    ld c, l
    ld e, c
    ld e, b
    ld e, c
    ld h, e
    ld e, c
    ld l, [hl]
    ld e, c
    ld a, c
    ld e, c
    ld [hl], $5a
    sbc d
    ld e, d
    ret nz

    ld e, d
    push hl
    ld e, d
    daa
    ld e, e
    ld [hl], l
    ld e, e
    adc l
    ld e, e
    ld a, d
    ld e, b
    ld a, d
    ld e, b
    ld a, d
    ld e, b
    ld a, d
    ld e, b
    ld a, d
    ld e, b
    ld a, d
    ld e, b
    ld a, d
    ld e, b
    call $23b9
    jr nz, jr_008_6756

    ld a, $01
    ld [de], a
    xor a
    ldh [$8d], a
    ld a, $41
    call $1717
    jr nc, jr_008_6718

    cp $05
    jr c, jr_008_6718

    ld a, $01
    ldh [$8d], a

jr_008_6718:
    ld h, d
    ld l, $42
    ld a, [hl]
    ld b, a
    and $0f
    ld [hl+], a
    ld c, a
    ld a, b
    swap a
    and $0f
    ld [hl], a
    ld a, c
    ld c, $37
    cp $07
    jr nz, jr_008_673a

    ld a, [$cc01]
    ld b, a
    ldh a, [$8d]
    and b
    jp z, $3ad9

    ld c, $53

jr_008_673a:
    ld a, c
    call $24f5
    call $15e9
    ld hl, $6808
    ldh a, [$8d]
    or a
    jr z, jr_008_674c

    ld hl, $6818

jr_008_674c:
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe

jr_008_6756:
    ld e, $43
    ld a, [de]
    rst $00
    ld h, b
    ld h, a
    ld h, [hl]
    ld h, a
    cp [hl]
    ld h, a
    call $250c
    jp $2646


    call $250c
    ld e, $45
    ld a, [de]
    rst $00
    ld [hl], l
    ld h, a
    adc d
    ld h, a
    sbc d
    ld h, a
    or c
    ld h, a
    ld c, $28
    call $1f60
    jr nc, jr_008_6787

    call $23a0
    call Call_008_67fc
    add $06
    call $25cb

jr_008_6787:
    jp $2686


    ld e, $61
    ld a, [de]
    inc a
    jr nz, jr_008_6797

    call $23a0
    ld l, $49
    ld [hl], $ff

jr_008_6797:
    jp $2686


    ld c, $28
    call $1f60
    jr c, jr_008_67ae

    call $23a0
    call Call_008_67fc
    add $07
    call $25cb
    jr jr_008_67bb

jr_008_67ae:
    jp $2646


    ld e, $61
    ld a, [de]
    inc a
    jr nz, jr_008_67bb

    ld e, $45
    xor a
    ld [de], a

jr_008_67bb:
    jp $2686


    call $25b8
    call $25b8
    call $23be
    jr nz, jr_008_67f0

    ld e, $71
    ld a, [de]
    or a
    jr z, jr_008_67ea

    xor a
    ld [de], a
    call $1e5a
    add $04
    add a
    swap a
    and $03
    ld e, $48
    ld [de], a
    call $25cb
    ld bc, $3700
    call $184b
    call $23a0

jr_008_67ea:
    call $250c
    jp $2689


jr_008_67f0:
    ld e, $76
    ld a, [de]
    call $25cb
    ld e, $45
    xor a
    ld [de], a
    jr jr_008_67ea

Call_008_67fc:
    ld e, $4d
    ld a, [de]
    ld hl, $d00d
    cp [hl]
    ld a, $02
    ret c

    xor a
    ret


    xor a
    ld e, e
    jp nc, $d65b

    ld e, e
    sbc $5b
    db $ec
    ld e, e
    ldh a, [$5b]
    ld a, [c]
    ld e, e
    jr z, jr_008_6874

    xor a
    ld e, e
    call nc, $d65b
    ld e, e
    db $e4
    ld e, e
    xor $5b
    ldh a, [$5b]
    ld a, [c]
    ld e, e
    jr z, @+$5e

    call $23b9
    jp nz, Jump_008_68f5

    ld a, $01
    ld [de], a
    ld h, d
    ld l, $42
    ld a, [hl]
    ld b, a
    and $0f
    ld [hl+], a
    ld a, b
    and $f0
    swap a
    ld [hl], a
    cp $03
    jr nz, jr_008_6865

    call Call_008_5874
    ld e, $42
    ld a, [de]
    cp b
    jp nz, $3ad9

    cp $01
    jr nz, jr_008_686e

    ld a, $16
    call $30c7
    ld a, $6e
    jr nz, jr_008_685c

    ld a, $5e

jr_008_685c:
    ld hl, $cc4c
    cp [hl]
    jp nz, $3ad9

    jr jr_008_686e

jr_008_6865:
    add $04
    ld b, a
    call Call_008_57db
    jp nc, $3ad9

jr_008_686e:
    ld e, $42
    ld a, b
    ld [de], a
    inc e
    ld a, [de]

jr_008_6874:
    rst $00
    ld a, l
    ld l, b
    sbc e
    ld l, b
    jp nz, $9b68

    ld l, b
    call Call_008_689b
    call $3ac6
    jr nz, jr_008_6899

    ld [hl], $83
    ld bc, $00fd
    call $2215
    ld l, $4b
    ld a, [hl]
    ld l, $76
    ld [hl], a
    ld l, $4d
    ld a, [hl]
    ld l, $77
    ld [hl], a

jr_008_6899:
    jr jr_008_68e9

Call_008_689b:
    ld h, d
    ld l, $42
    ld a, [hl+]
    push af
    ld a, [hl-]
    ld [hl], a
    call $15e9
    pop af
    ld e, $42
    ld [de], a
    inc e
    ld a, [de]
    ld hl, $6ac9
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call $250c
    jp $1e27


    ld a, [$cc4e]
    cp $03
    jp z, $3ad9

    call Call_008_689b
    ld a, [$cc4e]
    cp $00
    ret nz

    ld h, d
    ld l, $49
    ld [hl], $08
    ld l, $50
    ld [hl], $28
    ld l, $4b
    ld [hl], $62
    ld l, $4d
    ld [hl], $28
    ld a, $06
    jp $25cb


Call_008_68e9:
jr_008_68e9:
    call $041a
    and $3f
    add $78
    ld h, d
    ld l, $76
    ld [hl], a
    ret


Jump_008_68f5:
    ld e, $43
    ld a, [de]
    rst $00
    ld bc, $3969
    ld l, c
    ld e, d
    ld l, c
    ld d, h
    ld l, c
    ld e, $45
    ld a, [de]
    rst $00
    add hl, bc
    ld l, c
    jr nz, jr_008_6972

    call Call_008_6abc
    jr nz, jr_008_691d

    ld l, $60
    ld [hl], $01
    call $23a0
    ld hl, $cceb
    ld [hl], $01
    call $25b8

jr_008_691d:
    jp Jump_008_6933


    ld a, [$cceb]
    cp $02
    jr nz, jr_008_6933

    call Call_008_68e9
    ld l, $45
    ld [hl], $00
    ld a, $08
    call $25cb

Jump_008_6933:
jr_008_6933:
    call $250c
    jp $2689


    ld h, d
    ld l, $42
    ld a, [hl]
    cp $02
    jr c, jr_008_6954

    call $23be
    jr nz, jr_008_6951

    call $23a0
    xor a
    ld l, $4e
    ld [hl+], a
    ld [hl], a
    call Call_008_5dfe

jr_008_6951:
    call Call_008_5df7

Jump_008_6954:
jr_008_6954:
    call $250c
    jp $2686


    ld a, [$cc4e]
    cp $00
    jp nz, Jump_008_6954

    ld e, $45
    ld a, [de]
    rst $00
    add b
    ld l, c
    xor h
    ld l, c
    cp e
    ld l, c
    ret c

    ld l, c
    db $e4
    ld l, c
    ld b, $6a

jr_008_6972:
    ld a, [de]
    ld l, d
    ld hl, $496a
    ld l, d
    ld e, e
    ld l, d
    ld c, c
    ld l, d
    ld a, a
    ld l, d
    and [hl]
    ld l, d
    call $1bee
    jr nc, jr_008_698a

    ld h, d
    ld l, $77
    ld [hl], $0c

jr_008_698a:
    call Call_008_6ac1
    jp nz, Jump_008_6ab6

    call $1fdb
    cp $4b
    jr c, jr_008_69a9

    call $23a0
    ld bc, $fe80
    call $2358
    ld l, $50
    ld [hl], $14
    ld a, $09
    call $25cb

jr_008_69a9:
    jp Jump_008_6ab3


    ld a, [$ccc3]
    or a
    ret nz

    inc a
    ld [$ccc3], a
    call $23a0
    jp $1e03


    ld c, $20
    call $1f04
    jp nz, $1fdb

    call $23a0
    ld l, $76
    ld [hl], $28
    call $2099
    ld l, $4b
    ld a, [hl]
    sub $05
    ld [hl], a
    ld a, $06
    jp $25cb


    call Call_008_6abc
    ret nz

    call $23a0
    ld a, $05
    jp $25cb


    ld e, $4f
    ld a, [$ccc3]
    ld [de], a
    or a
    ret nz

    call $23a0
    ld bc, $fd40
    call $2358
    ld l, $4f
    ld [hl], $f6
    ld l, $50
    ld [hl], $28
    ld l, $49
    ld [hl], $00
    ld a, $53
    jp $0c74


    ld c, $20
    call $1f04
    jp nz, $1fdb

    call $23a0
    ld l, $76
    ld [hl], $10
    ld l, $71
    ld [hl], $00
    ret


    call Call_008_6abc
    ret nz

    jp $23a0


    call $1bee
    jr nc, jr_008_6a2b

    ld h, d
    ld l, $77
    ld [hl], $0c

jr_008_6a2b:
    call Call_008_6ac1
    jp nz, Jump_008_6ab6

    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $28
    jr nc, jr_008_6a46

    call $23a0
    ld l, $76
    ld [hl], $06
    ld l, $49
    ld [hl], $18

jr_008_6a46:
    jp Jump_008_6ab3


    call Call_008_6abc
    ret nz

    ld l, $49
    ld a, [hl]
    swap a
    rlca
    add $05
    call $25cb
    jp $23a0


    call $1bee
    jr nc, jr_008_6a65

    ld h, d
    ld l, $77
    ld [hl], $0c

jr_008_6a65:
    call Call_008_6ac1
    jr nz, jr_008_6ab6

    call $1fdb
    cp $18
    jr nc, jr_008_6a7c

    call $23a0
    ld l, $76
    ld [hl], $06
    ld l, $49
    ld [hl], $10

jr_008_6a7c:
    jp Jump_008_6ab3


    call $1bee
    jr nc, jr_008_6a89

    ld h, d
    ld l, $77
    ld [hl], $0c

jr_008_6a89:
    call Call_008_6ac1
    jr nz, jr_008_6ab6

    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $62
    jr c, jr_008_6aa3

    call $23a0
    ld l, $76
    ld [hl], $06
    ld l, $49
    ld [hl], $08

jr_008_6aa3:
    jp Jump_008_6ab3


    call Call_008_6abc
    ret nz

    ld l, $45
    ld [hl], $00
    ld a, $06
    jp $25cb


Jump_008_6ab3:
    call $25b8

Jump_008_6ab6:
jr_008_6ab6:
    call $250c
    jp $229b


Call_008_6abc:
    ld h, d
    ld l, $76
    dec [hl]
    ret


Call_008_6ac1:
    ld h, d
    ld l, $77
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


    pop de
    ld l, d
    rst $20
    ld l, d
    db $fd
    ld l, d
    inc de
    ld l, e
    ld b, [hl]
    ld e, h
    ld c, c
    ld e, h
    ld c, c
    ld e, h
    ld d, h
    ld e, h
    ld e, d
    ld e, h
    ld e, d
    ld e, h
    ld e, l
    ld e, h
    ld e, l
    ld e, h
    ld h, b
    ld e, h
    ld d, a
    ld e, h
    ld e, d
    ld e, h
    ld h, e
    ld e, h
    ld h, e
    ld e, h
    ld l, [hl]
    ld e, h
    ld l, [hl]
    ld e, h
    add l
    ld e, h
    adc b
    ld e, h
    adc e
    ld e, h
    sbc a
    ld e, h
    xor c
    ld e, h
    ld l, [hl]
    ld e, h
    adc b
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    push bc
    ld e, h
    push bc
    ld e, h
    push bc
    ld e, h
    push bc
    ld e, h
    push bc
    ld e, h
    or e
    ld e, h
    ret z

    ld e, h
    bit 3, h
    jp nc, $e65c

    ld e, h
    jp hl


    ld e, h
    and $5c
    ld e, $44
    ld a, [de]
    rst $00
    dec h
    ld l, e
    or c
    ld l, e
    ld e, $42
    ld a, [de]
    rst $00
    ld b, a
    ld l, e
    ld c, d
    ld l, e
    ld c, d
    ld l, e
    ld c, d
    ld l, e
    ld c, d
    ld l, e
    ld c, d
    ld l, e
    ld c, d
    ld l, e
    ld d, a
    ld l, e
    ld d, a
    ld l, e
    ld c, d
    ld l, e
    ld a, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld l, e
    call Call_008_6c3c
    ld a, $13
    call $30c7
    jp nz, $3ad9

    call $1432
    ld [hl], $00
    call Call_008_6b91
    ld a, $04
    jr jr_008_6b8b

    ld a, $13
    call $30c7
    jp z, $3ad9

    ld a, $17
    call $30c7
    jp nz, $3ad9

    call Call_008_6b91
    ld e, $42
    ld a, [de]
    cp $0d
    ld a, $00
    jr z, jr_008_6b7c

    ld a, $04

jr_008_6b7c:
    jr jr_008_6b8b

    call $1956
    bit 6, [hl]
    jp nz, $3ad9

    call Call_008_6b91
    ld a, $04

jr_008_6b8b:
    call $25cb
    jp Jump_008_6bc4


Call_008_6b91:
    call $15e9
    ld h, d
    ld l, $44
    ld [hl], $01
    ld a, $3a
    call $24f5
    call Call_008_6c29
    ld e, $42
    ld a, [de]
    ld hl, $6cbf
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    jp $250c


    ld e, $42
    ld a, [de]
    cp $08
    jr nz, jr_008_6bbb

    call Call_008_6c51

jr_008_6bbb:
    call $250c
    jp c, $3ad9

    jp Jump_008_6bc4


Jump_008_6bc4:
    call $25b8
    ld e, $7c
    ld a, [de]
    or a
    jr nz, jr_008_6be9

    ld e, $60
    ld a, [de]
    dec a
    jr nz, jr_008_6be3

    call $042f
    and $1f
    ld hl, $6c09
    rst $10
    ld a, [hl]
    or a
    jr z, jr_008_6be3

    ld e, $60
    ld [de], a

jr_008_6be3:
    call $261d
    jp $229b


jr_008_6be9:
    ld e, $50
    ld a, [de]
    cp $28
    jr z, jr_008_6bf5

    cp $50
    jr z, jr_008_6bfd

    ret


jr_008_6bf5:
    ld e, $60
    ld a, [de]
    cp $09
    ret nz

    jr jr_008_6c03

jr_008_6bfd:
    ld e, $60
    ld a, [de]
    cp $0c
    ret nz

jr_008_6c03:
    ld e, $60
    ld a, $01
    ld [de], a
    ret


    nop
    nop
    inc b
    inc b
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    db $10
    stop
    nop
    nop
    jr nz, jr_008_6c46

    nop
    nop
    nop

Call_008_6c29:
    ld a, $40
    call $1717
    jr c, jr_008_6c31

    xor a

jr_008_6c31:
    cp $20
    ld a, $01
    jr nc, jr_008_6c38

    xor a

jr_008_6c38:
    ld e, $7a
    ld [de], a
    ret


Call_008_6c3c:
    ld a, $4a
    call $1717
    jr c, jr_008_6c46

    xor a
    jr jr_008_6c4d

jr_008_6c46:
    or a
    ld a, $01
    jr z, jr_008_6c4d

    ld a, $02

jr_008_6c4d:
    ld e, $7b
    ld [de], a
    ret


Call_008_6c51:
    call Call_008_6c8b
    jr z, jr_008_6c6a

    ld a, [$cc46]
    bit 6, a
    jr z, jr_008_6c64

    ld c, $01
    ld b, $db
    jp Jump_008_6c78


jr_008_6c64:
    ld a, [$cc45]
    bit 6, a
    ret nz

jr_008_6c6a:
    ld h, d
    ld l, $7e
    ld a, $00
    cp [hl]
    ret z

    ld c, $00
    ld b, $d9
    jp Jump_008_6c78


Jump_008_6c78:
    ld h, d
    ld l, $7e
    ld [hl], c
    ld a, $05
    ld l, $7f
    add [hl]
    ld c, a
    ld a, b
    call $3a52
    ld a, $70
    jp $0c74


Call_008_6c8b:
    ld hl, $6cb2
    ld a, [$d00b]
    ld c, a
    ld a, [$d00d]
    ld b, a

jr_008_6c96:
    ld a, [hl+]
    or a
    ret z

    add $04
    sub c
    cp $09
    jr nc, jr_008_6cae

    ld a, [hl+]
    add $03
    sub b
    cp $07
    jr nc, jr_008_6caf

    ld a, [hl]
    ld e, $7f
    ld [de], a
    or d
    ret


jr_008_6cae:
    inc hl

jr_008_6caf:
    inc hl
    jr jr_008_6c96

    jr @+$5a

    nop
    jr @+$6a

    ld bc, $7818
    ld [bc], a
    jr @-$76

    inc bc
    nop
    db $ec
    ld e, h
    add l
    ld e, l
    add l
    ld e, l
    add l
    ld e, l
    add l
    ld e, l
    cp h
    ld e, l
    cp h
    ld e, l
    db $dd
    ld e, l
    ld c, e
    ld e, [hl]
    ld [hl], h
    ld e, [hl]
    db $76
    ld e, [hl]
    sub e
    ld e, [hl]
    sub a
    ld e, [hl]
    ret


    ld e, [hl]
    push hl
    ld e, [hl]
    ld e, $44
    ld a, [de]
    rst $00
    push hl
    ld l, h
    ld c, $6d
    ld a, $13
    call $30c7
    ld b, $00
    jr nz, jr_008_6cef

    inc b

jr_008_6cef:
    ld e, $42
    ld a, [de]
    cp b
    jp z, $3ad9

    call $15e9
    call $239b
    ld l, $42
    ld a, [hl]
    ld hl, $6d14
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld a, $02
    call $25cb
    call $250c
    jp $2646


    inc e
    ld e, a
    rra
    ld e, a
    call Call_008_479a
    call Call_008_6d21
    jp $2686


Call_008_6d21:
    ld e, $44
    ld a, [de]
    rst $00
    dec hl
    ld l, l
    ld c, a
    ld l, l
    push bc
    ld l, l
    ld a, $01
    ld [de], a
    call $15e9
    call $26ac
    ld l, $66
    ld [hl], $12
    inc l
    ld [hl], $07
    ld e, $71
    call $1af2
    call $1956
    and $40
    ld hl, $5f22
    jr z, jr_008_6d4d

    ld hl, $5f50

jr_008_6d4d:
    jr jr_008_6dbd

    ld e, $71
    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    ld a, $81
    ld [$cca4], a
    ld a, [$cc75]
    or a
    jr z, jr_008_6db0

    ld a, [$d019]
    ld h, a
    ld e, $7c
    ld [de], a
    ld l, $42
    ld a, [hl]
    push af
    ld b, a
    sub $07
    ld e, $78
    ld [de], a
    ld a, b
    ld hl, $4c93
    rst $10
    ld a, [hl]
    call $1739
    ld e, $79
    ld [de], a
    ld [$cbad], a
    pop af
    cp $07
    jr z, jr_008_6d9e

    cp $09
    jr z, jr_008_6d9e

    cp $0b
    jr z, jr_008_6d93

    ld a, [$c6ba]
    jr jr_008_6d96

jr_008_6d93:
    ld a, [$c6ad]

jr_008_6d96:
    cp $99
    ld a, $01
    jr nc, jr_008_6da8

    jr jr_008_6da7

jr_008_6d9e:
    ld a, $2f
    call $1717
    ld a, $01
    jr c, jr_008_6da8

jr_008_6da7:
    xor a

jr_008_6da8:
    ld e, $7a
    ld [de], a
    ld hl, $5f68
    jr jr_008_6dbd

jr_008_6db0:
    call Call_008_4a93
    jr z, jr_008_6dba

    ld hl, $5f64
    jr jr_008_6dbd

jr_008_6dba:
    ld hl, $5f60

jr_008_6dbd:
    ld e, $44
    ld a, $02
    ld [de], a
    jp $24fe


    call $250c
    ret nc

    xor a
    ld [$cca4], a
    ld e, $7b
    ld a, [de]
    or a
    jr z, jr_008_6de6

    inc a
    ld c, $03
    jr nz, jr_008_6dda

    ld c, $04

jr_008_6dda:
    xor a
    ld [de], a
    ld e, $7c
    ld a, [de]
    ld h, a
    ld l, $44
    ld [hl], c
    call $2b8a

jr_008_6de6:
    ld e, $44
    ld a, $01
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    db $f4
    ld l, l
    ld h, d
    ld l, [hl]
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld b, a
    ld hl, $6ea3
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld a, b
    or a
    jr z, jr_008_6e19

    cp $08
    jr z, jr_008_6e46

    cp $09
    jr z, jr_008_6e50

jr_008_6e11:
    call $1e27
    call $15e9
    jr jr_008_6e62

jr_008_6e19:
    ld a, $b0
    ld [$cc1d], a
    ld [$cc17], a
    call $1956
    bit 7, a
    jr z, jr_008_6e3c

    ld a, $01
    ld [$ccab], a
    ld a, [$cc51]
    or a
    jr z, jr_008_6e3c

    xor a
    ld [$cc51], a
    ld a, $38
    call $0c74

jr_008_6e3c:
    ld hl, $cbb3
    ld b, $10
    call $044b
    jr jr_008_6e11

jr_008_6e46:
    call $3d3d
    bit 7, c
    jp nz, $3ad9

    jr jr_008_6e11

jr_008_6e50:
    ld a, $23
    call $30c7
    jp z, $3ad9

    ld a, $1e
    call $30c7
    jp nz, $3ad9

    jr jr_008_6e11

jr_008_6e62:
    ld e, $42
    ld a, [de]
    rst $00
    ld a, d
    ld l, [hl]
    ld a, d
    ld l, [hl]
    ld a, d
    ld l, [hl]
    ld a, d
    ld l, [hl]
    ld a, d
    ld l, [hl]
    add b
    ld l, [hl]
    adc e
    ld l, [hl]
    sub h
    ld l, [hl]
    sbc d
    ld l, [hl]
    sub h
    ld l, [hl]

jr_008_6e7a:
    call $250c
    jp $25b8


    call $250c
    ld e, $47
    ld a, [de]
    or a
    jp nz, $25b8

    ret


    call $250c
    jp c, $3ad9

    jp $25b8


jr_008_6e94:
    call $250c
    jp $2646


    ld a, $26
    call $30c7
    jr nz, jr_008_6e94

    jr jr_008_6e7a

    jp $de5f


    ld e, a
    ld [c], a
    ld e, a
    and $5f
    and $5f
    ld [$ee5f], a
    ld e, a
    inc e
    ld h, b
    rra
    ld h, b
    ld d, [hl]
    ld h, b
    ld e, $44
    ld a, [de]
    rst $00
    pop bc
    ld l, [hl]
    ld [$336f], sp
    ld l, a
    call $15e9
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_008_6eee

    call $1956
    and $40
    jp nz, $3ad9

    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $79
    ld [hl], $01
    ld a, $0b
    call $24f5
    ld hl, $6075
    call $24fe
    ld a, $03
    call $25cb
    jp $2686


jr_008_6eee:
    ld h, d
    ld l, $44
    ld [hl], $02
    ld l, $78
    ld [hl], $ff
    call Call_008_6f3c
    ld a, $0b
    call $24f5
    ld hl, $60a4
    call $24fe
    jp $2686


    ld e, $79
    ld a, [de]
    or a
    jr z, jr_008_6f1e

    ld a, [$cc00]
    and $3f
    jr nz, jr_008_6f1e

    ld a, $01
    ld b, $fa
    ld c, $0a
    call $273f

jr_008_6f1e:
    call $250c
    jp c, $3ad9

    call $25b8
    ld e, $7a
    ld a, [de]
    or a
    jr nz, jr_008_6f30

    call $261d

jr_008_6f30:
    jp $229b


    call $250c
    call Call_008_6f3c
    jp $2686


Call_008_6f3c:
    ld c, $28
    call $1f60
    jr nc, jr_008_6f4d

    ld e, $78
    ld a, [de]
    cp $06
    ret z

    ld a, $06
    jr jr_008_6f55

jr_008_6f4d:
    ld e, $78
    ld a, [de]
    cp $05
    ret z

    ld a, $05

jr_008_6f55:
    ld [de], a
    jp $25cb


    ld e, $44
    ld a, [de]
    rst $00
    ld h, l
    ld l, a
    ld [hl], a
    ld l, a
    sub [hl]
    ld l, a
    ret nz

    ld l, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $7a
    ld [hl], $01
    ld l, $42
    ld a, [hl]
    or a
    ret z

    ld l, $44
    inc [hl]
    jp $15e9


    ld h, d
    ld l, $7a
    dec [hl]
    ret nz

    call $3ac6
    ret nz

    ld [hl], $48
    ld e, $43
    ld a, [de]
    ld l, e
    ld [hl], a
    dec l
    ld e, $46
    ld a, [de]
    inc a
    ld [de], a
    ld [hl], a
    cp $03
    jp z, $3ad9

    jp Jump_008_7002


    ld a, $03
    ld [de], a
    ld h, d
    ld l, $42
    ld a, [hl+]
    add [hl]
    ld hl, $701e
    rst JumpTable
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    ld e, $4d
    ld a, [hl+]
    ld [de], a
    call Call_008_7012
    ld hl, $702c
    call Call_008_6fee
    ld a, $83
    call $0c74
    ld a, $70
    ld e, $7c
    ld [de], a
    jp $1e15


    call $1fdb
    ld h, d
    ld l, $7c
    ld a, [hl]
    or a
    jr z, jr_008_6fd0

    dec [hl]
    ld a, $83
    call z, $0c74

jr_008_6fd0:
    ld l, $4d
    ld a, [hl]
    and $f0
    cp $f0
    jp z, $3ad9

    ld l, $7b
    dec [hl]
    call z, Call_008_7018
    call $2387
    ret nz

    ld l, $78
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    inc a
    jp z, $3ad9

Call_008_6fee:
    ld e, $49
    ld a, [hl+]
    ld [de], a
    ld e, $46
    ld a, [hl+]
    ld [de], a
    ld e, $50
    ld a, [hl+]
    ld [de], a
    ld e, $78
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


Jump_008_7002:
    ld e, $46
    ld a, [de]
    ld hl, $700e
    rst $10
    ld a, [hl]
    ld e, $7a
    ld [de], a
    ret


    ld bc, $323c
    rst $38

Call_008_7012:
jr_008_7012:
    ld e, $7b
    ld a, $0b
    ld [de], a
    ret


Call_008_7018:
    ld bc, $8402
    call $24b1
    jr jr_008_7012

    nop
    xor b
    ret c

    ret nz

    ld [$12c8], sp
    call $e5ea
    ld a, [de]
    db $ed
    ld [de], a
    ld a, [bc]
    ld a, b
    inc de
    add hl, bc
    ld a, b
    inc d
    ld [$156e], sp
    ld [$166e], sp
    ld [$1764], sp
    ld b, $50
    jr jr_008_7044

    ld b, [hl]
    ld a, [de]
    inc b
    ld b, [hl]

jr_008_7044:
    inc e
    dec b
    inc a
    ld e, $05
    inc a
    nop
    ld b, $3c
    ld [bc], a
    ld b, $3c
    inc b
    dec b
    ld [hl-], a
    ld b, $04
    ld [hl-], a
    ld [$3202], sp
    ld a, [bc]
    ld bc, $0c32
    ld [bc], a
    ld [hl-], a
    ld c, $04
    inc a
    db $10
    inc b
    inc a
    ld [de], a
    ld b, $46
    inc d
    ld b, $50
    dec d
    ld a, [bc]
    ld d, b
    ld d, $0c
    ld h, h
    rla
    ld d, $78
    rst $38
    call Call_008_707b
    jp Jump_008_7089


Call_008_707b:
    ld e, $44
    ld a, [de]
    rst $00
    sub l
    ld [hl], b
    cp d
    ld [hl], b
    dec bc
    ld [hl], c
    dec h
    ld [hl], c
    dec a
    ld [hl], c

Jump_008_7089:
    ld e, $7d
    ld a, [de]
    or a
    jr z, jr_008_7092

    call $25b8

jr_008_7092:
    jp $1e15


    call $1956
    and $40
    jp z, $3ad9

    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $66
    ld [hl], $06
    inc l
    ld [hl], $06
    ld l, $50
    ld [hl], $19
    call Call_008_7164
    ld e, $71
    call $1af2
    jp Jump_008_7184


    call Call_008_715d
    call Call_008_716a
    ld hl, $d00b
    ld c, $69
    ld b, [hl]
    ld a, $69
    ld l, a
    ld a, c
    cp b
    ret nc

    ld a, [$cc75]
    or a
    ret z

    ld e, $7c
    ld a, $02
    ld [de], a
    ld a, $80
    ld [$cca4], a
    ld a, l
    ld hl, $d00b
    ld [hl], a
    jp Jump_008_718f


    xor a
    ld [de], a
    ld e, $7d
    ld [de], a
    ld e, $7c
    ld a, $01
    ld [de], a
    ld a, [$cc75]
    or a
    jr z, jr_008_7100

    ld a, [$d019]
    ld h, a
    ld e, $7a
    ld [de], a
    ld hl, $60a6
    jp Jump_008_7103


jr_008_7100:
    ld hl, $60a6

Jump_008_7103:
    ld e, $44
    ld a, $04
    ld [de], a
    jp $24fe


    call Call_008_715d
    call $1fdb
    ld e, $4d
    ld a, [de]
    sub $0c
    ld hl, $d00d
    cp [hl]
    ret nc

    ld e, $7d
    xor a
    ld [de], a
    ld hl, $60aa
    jp Jump_008_7103


    call Call_008_715d
    call $1fdb
    ld e, $4d
    ld a, [de]
    cp $78
    ret c

    xor a
    ld [$cca4], a
    ld e, $44
    ld a, $01
    ld [de], a
    jp Jump_008_7184


    call $250c
    ret nc

    ld e, $7c
    ld a, [de]
    cp $02
    jr z, jr_008_715a

    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $7c
    ld [hl], $00
    ld l, $7d
    ld [hl], $01
    xor a
    ld [$cca4], a
    ret


jr_008_715a:
    jp Jump_008_71ad


Call_008_715d:
    ld c, $20
    call $1f04
    ret nz

    ld h, d

Call_008_7164:
    ld bc, $ff40
    jp $2358


Call_008_716a:
    call $1fdb
    ld e, $4d
    ld a, [de]
    sub $68
    cp $20
    ret c

    ld e, $49
    ld a, [de]
    xor $10
    ld [de], a
    ld e, $7e
    ld a, [de]
    xor $01
    ld [de], a
    jp $25cb


Jump_008_7184:
    ld h, d
    ld l, $7c
    ld [hl], $00
    ld l, $50
    ld [hl], $14
    jr jr_008_7198

Jump_008_718f:
    ld h, d
    ld l, $44
    ld [hl], $02
    ld l, $50
    ld [hl], $50

jr_008_7198:
    ld l, $7d
    ld [hl], $01
    ld l, $49
    ld [hl], $18
    xor a
    ld l, $4e
    ld [hl+], a
    ld [hl], a
    ld l, $7e
    ld a, $00
    ld [hl], a
    jp $25cb


Jump_008_71ad:
    ld h, d
    ld l, $44
    ld [hl], $03
    ld l, $50
    ld [hl], $50
    ld l, $7d
    ld [hl], $01
    ld l, $49
    ld [hl], $08
    xor a
    ld l, $4e
    ld [hl+], a
    ld [hl], a
    ld l, $7e
    ld a, $01
    ld [hl], a
    jp $25cb


    ld e, $44
    ld a, [de]
    rst $00
    db $dd
    ld [hl], c
    add sp, $71
    di
    ld [hl], c
    db $fd
    ld [hl], c
    ld b, h
    ld [hl], d
    ld d, c
    ld [hl], d
    ld d, a
    ld [hl], d
    ld e, $42
    ld a, [de]
    add a
    inc a
    ld e, $44
    ld [de], a
    jp $15e9


    ld a, $02
    ld [de], a
    ld a, $6f
    call $0c74
    jp $1e1e


    ld e, $61
    ld a, [de]
    inc a
    jp z, $3ad9

    jp $25b8


    ld a, $04
    ld [de], a
    call $042f
    ld b, a
    and $60
    swap a
    ld hl, $7260
    rst $10
    ld e, $54
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, b
    and $03
    ld hl, $7268
    rst $10
    ld e, $50
    ld a, [hl]
    ld [de], a
    call $042f
    ld b, a
    and $30
    swap a
    ld hl, $726c
    rst $10
    ld e, $70
    ld a, [hl]
    ld [de], a
    ld a, b
    and $0f
    ld hl, $7270
    rst $10
    ld e, $49
    ld a, [hl]
    ld [de], a
    inc a
    and $07
    cp $03
    jp c, $1e27

    jp $1e15


    call $1fdb
    ld e, $70
    ld a, [de]
    call $1f03
    ret nz

    jp $3ad9


    ld a, $06
    ld [de], a
    jp $1e1e


    call $2387
    jp z, $3ad9

    jp $25b8


    ret nz

    cp $a0
    cp $a0
    cp $80
    cp $05
    ld a, [bc]
    ld a, [bc]
    inc d
    dec c
    ld c, $0f
    stop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld bc, $0302
    dec b
    ld b, $07
    ld [bc], a
    ld b, $1e
    ld b, d
    ld a, [de]
    rst $00
    cp b
    ld [hl], d
    xor h
    ld [hl], d
    xor h
    ld [hl], d
    xor h
    ld [hl], d
    add hl, sp
    ld [hl], e
    add hl, sp
    ld [hl], e
    or d
    ld [hl], d
    db $ed
    ld [hl], d
    ld b, $73
    inc h
    ld [hl], e
    or d
    ld [hl], d
    or d
    ld [hl], d
    or d
    ld [hl], d
    or d
    ld [hl], d
    call Call_008_72de
    jp $1e15


    call Call_008_72de
    jp $1e1e


    call Call_008_72de
    jp $1e27


    call Call_008_72de
    jp $1e30


    call $23b9
    jr nz, jr_008_72ca

    ld h, d
    ld l, e
    inc [hl]
    ld l, $40
    set 7, [hl]
    call $15e9
    jp $1e15


jr_008_72ca:
    call $1956
    bit 6, [hl]
    jr z, jr_008_72db

    ld e, $60
    ld a, [de]
    cp $10
    jr nz, jr_008_72db

    ld a, $02
    ld [de], a

jr_008_72db:
    jp $25b8


Call_008_72de:
    call $23b9
    jr nz, jr_008_72e9

    ld a, $01
    ld [de], a
    jp $15e9


jr_008_72e9:
    pop hl
    jp $25b8


    call $23b9
    jr nz, jr_008_7303

    ld a, $01
    ld [de], a
    call $26ac
    ld a, $9b
    call $04e7
    call $15e9
    call $1e27

jr_008_7303:
    jp $25b8


    call $23b9
    jr nz, jr_008_7317

    ld a, $01
    ld [de], a
    call $26ac
    call $15e9
    call $1e15

jr_008_7317:
    call $25b8
    ld a, [$cc00]
    rrca
    jp c, $1e39

    jp $1e42


    call $23b9
    ret nz

    call $1956
    and $40
    jp z, $3ad9

    call $15e9
    call $239b
    jp $1e30


    call $23b9
    jr nz, jr_008_735d

    ld a, $01
    ld [de], a
    call $26ac
    ld bc, $fe00
    call $2358
    ld l, $49
    ld [hl], $01
    ld l, $50
    ld [hl], $28
    ld a, $51
    call $0c74
    call $15e9
    jp $1df1


jr_008_735d:
    call $1fdb
    ld c, $20
    call $1f04
    ret nz

    ld a, $77
    call $0c74
    jp $3ad9


    ld e, $42
    ld a, [de]
    rst $00
    db $76
    ld [hl], e
    add h
    ld [hl], h
    ld e, $44
    ld a, [de]
    rst $00
    add b
    ld [hl], e
    cp [hl]
    ld [hl], e
    db $fd
    ld [hl], e
    ld a, $01
    ld [de], a
    ld a, $1b
    call $30c7
    jp z, $3ad9

    ld c, $4d
    call $2283
    jr nz, jr_008_739d

    ld a, h
    cp d
    jp nz, $3ad9

    call $228f
    jp z, $3ad9

jr_008_739d:
    ld a, $4a
    call $1717
    jr c, jr_008_73ad

    call $041a
    and $03
    inc a
    ld e, $78
    ld [de], a

jr_008_73ad:
    ld a, $4d
    call $24f5
    ld hl, $60ae
    call $24fe
    call $15e9
    jp $1e03


    ld e, $45
    ld a, [de]
    rst $00
    add $73
    call z, $cd73
    dec e
    ld h, $c3
    inc c
    dec h
    ld e, $7a
    ld a, [de]
    or a
    jr z, jr_008_73eb

    ld b, a
    inc e
    ld a, [de]
    ld c, a
    push bc
    call $1ba1
    pop bc
    jr c, jr_008_73f4

    call $1e62
    ld e, $49
    ld [de], a
    ld e, $50
    ld a, $14
    ld [de], a
    call $1fdb

jr_008_73eb:
    ld h, d
    ld l, $7a
    xor a
    ld [hl+], a
    ld [hl], a
    jp $2b75


jr_008_73f4:
    ld bc, $4d0a
    call $184b
    jp $3ad9


    ld e, $45
    ld a, [de]
    rst $00
    add hl, bc
    ld [hl], h
    ld a, [de]
    ld [hl], h
    dec a
    ld [hl], h
    ld d, c
    ld [hl], h
    ld h, d
    ld l, e
    inc [hl]
    xor a
    ld [$cc76], a
    ld l, $79
    ld [hl], a
    inc a
    call $25cb
    jp $1dfa


    ld hl, $ccc1
    bit 7, [hl]
    ld e, $78
    ld a, [de]
    ld [hl], a
    jr nz, jr_008_742f

    ld e, $46
    ld a, $14
    ld [de], a
    ld a, $01
    jp $25cb


jr_008_742f:
    call $25b8
    call $2387
    ret nz

    ld [hl], $14
    ld a, $7e
    jp $0c74


    call $215d
    jp nc, $3ad9

    call $21e0
    jr c, jr_008_747e

    ld h, d
    ld l, $40
    res 1, [hl]
    ld l, $79
    ld [hl], d
    ret


    ld c, $20
    call $1f04
    ret nz

    call $21e0
    jr c, jr_008_747e

    call $2142
    jp nc, $3ad9

    ld h, d
    ld l, $40
    res 1, [hl]
    ld l, $44
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld l, $79
    ld a, [hl]
    or a
    ld bc, $4d06
    call nz, $184b
    xor a
    call $25cb
    jp $1e27


jr_008_747e:
    ld bc, $4d09
    jp $184b


    ld e, $44
    ld a, [de]
    rst $00
    sub h
    ld [hl], h
    or e
    ld [hl], h
    rst $00
    ld [hl], h
    ld [c], a
    ld [hl], h
    db $fc
    ld [hl], h
    dec c
    ld [hl], l
    ld a, $01
    ld [de], a
    call $1956
    and $20
    jp nz, $3ad9

    ld a, $01
    ld [$cca4], a
    ld a, [$d00b]
    ld e, $4b
    ld [de], a
    ld a, [$d00d]
    ld e, $4d
    ld [de], a
    jp $15e9


    ld a, [$d00f]
    or a
    ret nz

    ld a, $02
    ld [de], a
    call $2130
    ld e, $4f
    ld [de], a
    call $29f4
    jp $1dfa


    ld c, $20
    call $232b
    ret nz

    call $239b
    ld l, $50
    ld [hl], $14
    ld l, $49
    ld [hl], $10
    ld a, $02
    ld [$cc6b], a
    ld a, $ca
    jp $0c74


    call $1fdb
    ld c, $20
    call $232b
    push af
    ld a, $ca
    call z, $0c74
    pop af
    ret nc

    call $239b
    ld l, $46
    ld [hl], $28
    jp $1e27


    call $2387
    ret nz

    ld l, $44
    inc [hl]
    xor a
    ld [$cca4], a
    ld bc, $4d07
    jp $184b


    ld a, [$cfc0]
    or a
    ret z

    call $24ad
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    jr nz, jr_008_7593

    ld a, l
    ld [hl], l
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    cp $0b
    jr nz, jr_008_754f

    call $1956
    and $40
    jp nz, Jump_008_754c

    ld hl, $7e4e
    call $3048
    ld hl, $cc1d
    ld [hl], $4e
    inc hl
    ld [hl], $06
    xor a
    ld hl, $cfd0
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $03
    call $0c89

Jump_008_754c:
    jp $3ad9


jr_008_754f:
    call $15e9
    ld e, $42
    ld a, [de]
    cp $05
    jr nz, jr_008_7562

    ld e, $66
    ld a, $06
    ld [de], a
    inc e
    ld [de], a
    jr jr_008_757a

jr_008_7562:
    ld hl, $770a
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $42
    ld a, [de]
    cp $07
    jp nz, Jump_008_757a

    call $26ac
    jp $1e15


Jump_008_757a:
jr_008_757a:
    call $1e30
    ld e, $42
    ld a, [de]
    rst $00
    xor c
    ld [hl], l
    xor c
    ld [hl], l
    xor c
    ld [hl], l
    xor c
    ld [hl], l
    xor c
    ld [hl], l
    sub a
    ld [hl], l
    inc l
    db $76
    or a
    db $76
    xor c
    ld [hl], l

jr_008_7593:
    xor c
    ld [hl], l
    rst $30
    db $76
    ld a, [$cfd0]
    or a
    jr nz, jr_008_75a3

    call $25b8
    jp $2689


jr_008_75a3:
    call $24ad
    jp $3ad9


    ld e, $45
    ld a, [de]
    rst $00
    or l
    ld [hl], l
    push bc
    ld [hl], l
    ld [$0575], a
    db $76

Call_008_75b5:
Jump_008_75b5:
    ld a, [$cfd0]
    or a
    call nz, $23a0

Jump_008_75bc:
    call $25b8

Call_008_75bf:
Jump_008_75bf:
    call $250c
    jp $2689


    ld e, $42
    ld a, [de]
    ld hl, $00f8
    add l
    ld l, a
    ld b, [hl]
    ld a, [$cfd1]
    and b
    jr z, jr_008_75df

    call $23a0
    ld l, $46
    ld [hl], $20
    ld l, $4d
    ld a, [hl-]
    ld [hl], a

jr_008_75df:
    ld e, $42
    ld a, [de]
    cp $05
    call z, $25b8
    jp Jump_008_75bf


    call $2387
    jr nz, jr_008_75f5

    call Call_008_7612
    jp $23a0


jr_008_75f5:
    call $042f
    and $0f
    sub $08
    ld h, d
    ld l, $4c
    add [hl]
    inc l
    ld [hl], a
    jp Jump_008_75bf


    call $1fdb
    call $1fdb
    call $2142
    ret c

    jp $3ad9


Call_008_7612:
    ld e, $42
    ld a, [de]
    ld hl, $7622
    rst JumpTable
    ld a, [hl+]
    ld e, $49
    ld [de], a
    ld a, [hl+]
    ld e, $50
    ld [de], a
    ret


    inc b
    ld a, b
    dec e
    ld a, b
    ld e, $78
    dec b
    ld a, b
    dec d
    ld a, b
    ld e, $45
    ld a, [de]
    rst $00
    ld a, $76
    ld c, a
    db $76
    ld e, [hl]
    db $76
    ld a, h
    db $76
    add a
    db $76
    sub l
    db $76
    and a
    db $76
    ld a, [$cfd3]
    cp $3f
    jp nz, Jump_008_75b5

    call $23a0
    ld hl, $612d
    call $24fe
    call Call_008_75b5
    ld a, [$cfd3]
    and $40
    ret z

    call $313b
    jp $23a0


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $80
    ld [$cfd3], a
    ld a, $06
    ld [$cc04], a
    ld a, $08
    call $2a16
    ld l, $02
    ld [hl], $01
    ld l, $19
    ld [hl], d
    jp $23a0


    ld a, [$cfd0]
    or a
    ret nz

    call Call_008_75bf
    jp $23a0


    ld a, [$cfd0]
    cp $04
    ret nz

    call $23a0
    ld a, $0d
    jp $25cb


    ld a, [$cfd0]
    cp $07
    ret nz

    call $23a0
    ld l, $50
    ld [hl], $0a
    ld l, $49
    ld [hl], $08
    ret


    call $1fdb
    ld a, [$cfd1]
    rlca
    ret nc

    ld hl, $cfd0
    ld [hl], $08
    jp $3ad9


    ld e, $45
    ld a, [de]
    rst $00
    pop bc
    db $76
    ret nc

    db $76
    db $e3
    db $76
    call $250c
    jr nc, jr_008_76e9

    call $23a0
    ld hl, $cfd0
    ld [hl], $04
    jr jr_008_76e9

    call Call_008_76e9
    ld hl, $cfd0
    ld a, [hl]
    cp $06
    ret nz

    call $23a0
    ld hl, $6146
    jp $24fe


    call $250c
    jp c, $3ad9

Call_008_76e9:
jr_008_76e9:
    call $25b8
    ld a, [$cc00]
    and $3f
    ret nz

    ld a, $d3
    jp $0c74


    call $23be
    jr nz, jr_008_7707

    call $23a0
    ld a, $28
    call $30c7
    jp z, $3ad9

jr_008_7707:
    jp Jump_008_75bc


    rst $00
    ld h, b
    call nc, $e860
    ld h, b
    push af
    ld h, b
    ld [bc], a
    ld h, c
    dec de
    ld h, c
    dec de
    ld h, c
    ld b, d
    ld h, c
    dec de
    ld h, c
    dec de
    ld h, c
    ld c, d
    ld h, c
    ld e, $44
    ld a, [de]
    rst $00
    jr z, jr_008_779d

    call nz, $cd77
    sbc e
    inc hl
    call $15e9
    ld e, $42
    ld a, [de]
    rst $00
    ld a, $77
    ld b, a
    ld [hl], a
    ld e, $1e
    ld d, b
    ld [hl], a
    ld l, d
    ld [hl], a
    ld a, e
    ld [hl], a
    ld hl, $6160
    call $24fe
    jp $1e03


    ld hl, $6164
    call $24fe
    jp $1e27


    call Call_008_77ba
    ld e, $43
    ld a, [de]
    add a
    add a
    add $10
    and $1f
    ld e, $49
    ld [de], a
    ld e, $50
    ld a, $78
    ld [de], a
    call $1e15
    jp $1e39


    ld e, $43
    ld a, [de]
    or a
    jr z, jr_008_7778

    ld a, $05
    call $25cb
    jp $1e27


jr_008_7778:
    jp $1e30


    ld hl, $6172
    call $24fe
    jp $1e27


Call_008_7784:
    ld e, $43
    ld a, [de]
    add $06
    ld b, a
    ld e, $72
    ld a, [de]
    or a
    ld a, b
    jr z, jr_008_7793

    add $0b

jr_008_7793:
    jp $25cb


Call_008_7796:
    ld h, d
    ld l, $70
    ld e, $72
    ld a, [de]
    or a

jr_008_779d:
    jr nz, jr_008_77b1

    ld e, $43
    ld a, [de]
    add a
    add a
    ld e, $48
    ld [de], a
    ld b, [hl]
    inc l
    ld c, [hl]
    ld a, $38
    ld e, $48
    jp $20cc


jr_008_77b1:
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    inc e
    inc e
    ld a, [hl]
    ld [de], a
    ret


Call_008_77ba:
    call $041a
    and $07
    inc a
    ld e, $47
    ld [de], a
    ret


    ld e, $42
    ld a, [de]
    rst $00
    call nc, $e977
    ld a, c
    cp $77
    sbc d
    ld a, c
    pop de
    ld a, c
    inc [hl]
    ld a, d
    ld a, [$cfd0]
    cp $0e
    jp z, $3ad9

    cp $0d
    jr nz, jr_008_77f8

    call $23be
    jr nz, jr_008_77f5

    call $23a0
    ld l, $4b
    ld [hl], $4a
    inc l
    inc l
    ld [hl], $81
    ld a, $0e
    call $25cb

jr_008_77f5:
    call $26e7

jr_008_77f8:
    call $25b8
    jp $250c


    ld e, $45
    ld a, [de]
    rst $00
    inc d
    ld a, b
    dec sp
    ld a, b
    ld e, [hl]
    ld a, b
    ld l, d
    ld a, b
    add a
    ld a, b
    and b
    ld a, b
    push bc
    ld a, b
    ld bc, $1579
    ld a, c
    call $23a0
    ld a, $7c
    call Call_008_7957
    ld e, $43
    ld a, [de]
    add a
    ld hl, $784e
    rst JumpTable
    ld e, $49
    ld a, [hl+]
    ld [de], a
    ld e, $70
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    xor a
    call Call_008_791f
    ld e, $46
    ld a, $3c
    ld [de], a
    call $2387
    ld e, $5a
    jr nz, jr_008_7849

    ld a, [de]
    or $80
    ld [de], a
    jp $23a0


jr_008_7849:
    ld a, [de]
    xor $80
    ld [de], a
    ret


    inc e
    jr nc, @+$3e

    ld e, d
    inc b
    jr nc, @+$48

    ld d, b
    inc e
    ld h, b
    ld d, b
    ld b, [hl]
    inc b
    ld h, b
    ld e, d
    inc a
    ld h, d
    ld l, $71
    dec [hl]
    ret nz

    ld l, $50
    ld [hl], $78
    jp $23a0


    call $1fdb
    ld e, $70
    ld a, [de]
    ld b, a
    ld e, $4b
    ld a, [de]
    ld c, a
    cp b
    ld e, $43
    ld a, [de]
    jr nc, jr_008_7882

    xor a
    call Call_008_7941
    jp $23a0


jr_008_7882:
    or a
    ret nz

    jp Jump_008_7a1e


    ld h, d
    ld l, $72
    dec [hl]
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $a0
    ld l, $43
    ld a, [hl]
    or a
    ld bc, $4882
    ld a, $fe
    call z, Call_008_7968
    ret


    call $2387
    jr nz, jr_008_78b4

    call $1e42
    ld l, $46
    ld [hl], $28
    ld a, $04
    call Call_008_791f
    jp $23a0


jr_008_78b4:
    ld l, $49
    inc [hl]
    ld a, [hl]
    and $1f
    ld [hl], a
    ld a, $20
    ld e, $49
    ld bc, $4882
    jp $20cc


    call $2387
    ret nz

    ld l, $50
    ld [hl], $14
    ld l, $46
    ld [hl], $3c
    ld a, $04
    call Call_008_7941
    ld b, $02

jr_008_78d8:
    call $3ac6
    jr nz, jr_008_78fe

    ld [hl], $4f
    inc l
    ld [hl], $04
    inc l
    ld a, b
    dec a
    ld [hl], a
    ld l, $46
    ld [hl], $0a
    jr z, jr_008_78ee

    ld [hl], $14

jr_008_78ee:
    call $21fd
    ld e, $49
    ld l, e
    ld a, [de]
    ld [hl], a
    ld e, $50
    ld l, e
    ld a, [de]
    ld [hl], a
    dec b
    jr nz, jr_008_78d8

jr_008_78fe:
    jp $23a0


    call $1fdb
    call $2387
    ret nz

    ld hl, $cfd0
    ld [hl], $0c
    ld a, $79
    call Call_008_7957
    jp $23a0


    ld hl, $cfd0
    ld a, [hl]
    cp $0d
    ret nz

    jp $3ad9


Call_008_791f:
    ld b, a
    ld e, $43
    ld a, [de]
    add b
    ld hl, $7931
    rst JumpTable
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    inc de
    inc de
    ld a, [hl+]
    ld [de], a
    ret


    ld h, b
    sbc b
    ld h, b
    ld l, b
    sub b
    sbc b
    sub b
    ld l, b
    jr nc, @+$6a

    jr nc, @-$66

    ld h, b
    ld l, b
    ld h, b
    sbc b

Call_008_7941:
    ld b, a
    ld e, $43
    ld a, [de]
    add b
    ld hl, $794f
    rst $10
    ld e, $49
    ld a, [hl]
    ld [de], a
    ret


    inc e
    inc b
    inc d
    inc c
    inc c
    inc d
    inc b
    inc e

Call_008_7957:
    ld b, a
    ld e, $43
    ld a, [de]
    or a
    ret nz

    ld a, b
    jp $0c74


    ld hl, $ff8c
    ld [hl], $01
    jr jr_008_796d

Call_008_7968:
    ld hl, $ff8c
    ld [hl], $00

jr_008_796d:
    ldh [$8b], a
    ld a, $08
    ldh [$8d], a

jr_008_7973:
    call $3ac6
    ret nz

    ld [hl], $4f
    inc l
    ld [hl], $03
    ld l, $46
    ldh a, [$8b]
    ld [hl], a
    ld l, $70
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $72
    ldh a, [$8c]
    ld [hl], a
    ldh a, [$8d]
    dec a
    ldh [$8d], a
    ld l, $43
    ld [hl], a
    jr nz, jr_008_7973

    ld a, $5c
    jp $0c74


    ld h, d
    ld l, $46
    ld a, [hl]
    inc a
    jr z, jr_008_79a5

    dec [hl]
    jp z, $3ad9

jr_008_79a5:
    ld e, $45
    ld a, [de]
    or a
    jr nz, jr_008_79bb

    call $238c
    ret nz

    call Call_008_7784
    call Call_008_7796
    call $1e42
    jp $23a0


jr_008_79bb:
    call $1fdb
    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    ret nz

    ld h, d
    ld l, $45
    ld [hl], $00
    call Call_008_77ba
    jp $1e39


    call $23be
    jr nz, jr_008_79dd

    call $2387
    ret nz

    jp $23a0


jr_008_79dd:
    ld hl, $cfd0
    ld a, [hl]
    cp $0c
    jp z, $3ad9

    jp $1fdb


    ld e, $45
    ld a, [de]
    rst $00
    di
    ld a, c
    inc c
    ld a, d
    inc c
    dec h
    call $250c
    jr c, jr_008_79fd

    call $25b8
    jr jr_008_7a00

jr_008_79fd:
    jp $23a0


Call_008_7a00:
jr_008_7a00:
    ld h, d
    ld l, $61
    ld a, [hl]
    cp $70
    ld [hl], $00
    ret nz

    jp $0c74


    ld a, [$cfd0]
    cp $0e
    ret nz

    call $1e39
    ld hl, $6168
    call $24fe
    jp $23a0


Jump_008_7a1e:
    ld a, [$c486]
    ld b, a
    ld a, c
    sub b
    sub $40
    ld b, a
    ld a, [$c486]
    add b
    cp $10
    ret nc

    ld [$c486], a
    ldh [$a8], a
    ret


    call $25b8
    call Call_008_7a00
    jp $250c


    call $23b9
    jr z, jr_008_7a83

    ld a, [$cc00]
    and $0f
    ld a, $b3
    call z, $0c74
    ld a, [$cd18]
    or a
    jr nz, jr_008_7a59

    ld a, [$cd19]
    or a
    call z, Call_008_7a9a

jr_008_7a59:
    call $2387
    ret nz

    call Call_008_7abe
    ld e, $42
    ld a, [de]
    or a
    ld c, $07
    jr z, jr_008_7a6a

    ld c, $0f

jr_008_7a6a:
    call $041a
    and c
    srl c
    inc c
    sub c
    ld c, a
    call $3ea7
    ret nz

    ld [hl], $11
    ld e, $42
    inc l
    ld a, [de]
    ld [hl], a
    ld b, $00
    jp $2215


jr_008_7a83:
    inc a
    ld [de], a
    ld [$ccae], a
    ld e, $42
    ld a, [de]
    ld hl, $7acb
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


Call_008_7a9a:
    ld h, d
    ld l, $58
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_008_7aa9

    pop hl
    jp $3ad9


jr_008_7aa9:
    ld [$cd18], a
    ld a, [hl+]
    ld [$cd19], a
    ld e, $70
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a

Call_008_7abe:
    call $042f
    ld h, d
    ld l, $70
    and [hl]
    inc l
    add [hl]
    ld l, $46
    ld [hl], a
    ret


    rst $08
    ld a, d
    add sp, $7a
    nop
    rrca
    nop
    rst $38
    rrca
    nop
    nop
    rst $38
    sub [hl]
    nop
    rrca
    ld [$5a5a], sp
    rlca
    inc bc
    nop
    inc a
    rra
    stop
    ld a, b
    nop
    rst $38
    rst $38
    nop
    ld e, $00
    rst $38
    ld e, $00
    nop
    rst $38
    or h
    or h
    rrca
    ld [$3c3c], sp
    rra
    db $10
    ld e, $00
    nop
    rst $38
    nop
    ld a, b
    nop
    rst $38
    rrca
    rrca
    nop
    rst $38
    rst $38
    ld e, $44
    ld a, [de]
    rst $00
    dec c
    ld a, e
    inc h
    ld a, e
    ld a, $01
    ld [de], a
    call $15e9
    call $26ac
    call $1e27
    ld a, $0b
    call $24f5
    ld hl, $6176
    jp $24fe


    call $25b8
    jp $250c


    ld e, $42
    ld a, [de]
    rst $00
    ld [hl-], a
    ld a, e
    ld l, b
    ld a, e
    ld e, $44
    ld a, [de]
    rst $00
    inc a
    ld a, e
    ld d, l
    ld a, e
    ld e, [hl]
    ld a, e
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    ld e, $44
    ld a, $01
    ld [de], a
    call $15e9
    ld hl, $6264
    call $24fe
    jp $1e27


    call $250c
    call $261d
    jp $2646


    call $25b8
    call $250c
    jp c, $3ad9

    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], h
    ld a, e
    ld d, l
    ld a, e
    ld e, [hl]
    ld a, e
    adc l
    ld a, e
    ld a, $0d
    call $30c7
    jp z, $3ad9

    ld e, $44
    ld a, $01
    ld [de], a
    call $15e9
    ld hl, $628b
    call $24fe
    jp $1e27


    xor a
    ld [$cfc0], a
    call $250c
    ld e, $45
    ld a, [de]
    rst $00
    and b
    ld a, e
    and b
    ld a, e
    jp $c37b


    ld a, e
    call $25b8
    ld a, [$cfc0]
    call $01ea
    ret nc

    cp $03
    jr nz, jr_008_7bb4

    ld e, $44
    ld a, $01
    ld [de], a
    ret


jr_008_7bb4:
    ld b, a
    inc b
    ld h, d
    ld l, $45
    ld [hl], b
    ld l, $43
    ld [hl], $08
    add $04
    jp $25cb


    call $25b8
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jr z, jr_008_7bd3

    ld [hl], $00
    ld l, $4d
    add [hl]
    ld [hl], a

jr_008_7bd3:
    ld l, $43
    dec [hl]
    ret nz

    ld l, $45
    ld [hl], $01
    ret


    ld e, $44
    ld a, [de]
    rst $00
    and $7b
    ld a, [de]
    ld a, h
    daa
    ld e, $3e
    ld bc, $cd12
    ld a, [de]
    inc b
    and $0f
    ld hl, $7c0a
    rst $10
    ld a, [hl]
    ld e, $42
    ld [de], a
    ld bc, $fe40
    call $2358
    ld l, $50
    ld [hl], $28
    ld l, $49
    ld [hl], $08
    call $15e9
    jp $1dfa


    dec c
    ld c, $10
    ld a, [hl-]
    ld b, b
    ld d, h
    db $76
    ld d, a
    dec de
    ld e, l
    ld b, e
    inc bc
    ld sp, $2e13
    inc hl
    call $1fdb
    ld c, $20
    call $1f04
    ret nz

    ld e, $44
    ld a, $02
    ld [de], a
    jp $21e0


    ld e, $42
    ld a, [de]
    rst $00
    inc sp
    ld a, h
    rst $00
    ld a, h
    ld e, $44
    ld a, [de]
    rst $00
    dec a
    ld a, h
    ld l, h
    ld a, h
    xor [hl]
    ld a, h
    call Call_008_7d1c
    cp $07
    jp c, $3ad9

    call $15e9
    ld hl, $6310
    call $24fe
    ld a, $06
    call $248d
    ld l, $46
    ld [hl], $3c
    ld e, $71
    call $1af2
    call $1956
    and $40
    ld a, $02
    jr nz, jr_008_7c66

    dec a

jr_008_7c66:
    ld e, $44
    ld [de], a
    jp $1e03


    ld e, $45
    ld a, [de]
    rst $00
    ld [hl], h
    ld a, h
    sbc e
    ld a, h
    call $25b8
    call $261d
    call $229b
    ld e, $71
    ld a, [de]
    or a
    jr nz, jr_008_7c93

    call $2387
    ret nz

    ld l, $45
    inc [hl]
    call $1e03
    ld hl, $62f1
    jp $24fe


jr_008_7c93:
    xor a
    ld [de], a
    ld bc, $3c00
    jp $184b


    call $261d
    call $25b8
    call $250c
    ret nc

    ld h, d
    ld l, $46
    ld [hl], $3c
    ld l, $45
    dec [hl]
    ret


    ld c, $60
    call $1f04
    jr nz, jr_008_7cbb

    ld bc, $fe00
    call $2358

jr_008_7cbb:
    call $261d
    call $25b8
    call $229b
    jp $250c


    ld e, $44
    ld a, [de]
    rst $00
    rst $08
    ld a, h
    rlca
    ld a, l
    call Call_008_7d1c
    cp $07
    jp c, $3ad9

    call $1956
    and $40
    jp nz, $3ad9

    ld a, [$cca7]
    or a
    ret nz

    ld a, [$cfc0]
    or a
    ret z

    call $1ce6
    ret nc

    ld a, $01
    ld [$cca4], a
    ld [$cc02], a
    ld [$ccab], a
    ld a, $5a
    call $24a7
    ld e, $44
    ld a, $01
    ld [de], a
    ld a, $fb
    jp $0c74


    ld a, [$cd18]
    or a
    ret nz

    call $1956
    set 6, [hl]
    ld a, $0b
    ld [$cc04], a
    call $3144
    jp $3ad9


Call_008_7d1c:
    ld a, [$c6bb]
    jp $0176


    ld e, $44
    ld a, [de]
    rst $00
    inc l
    ld a, l
    ld c, d
    ld a, l
    ld d, e
    ld a, l
    call $15e9
    call $26ac

jr_008_7d32:
    ld h, d
    ld l, $44
    ld [hl], $01
    ld a, $0b
    call $24f5
    ld hl, $6325
    call $24fe
    ld a, $02
    call $25cb
    jp Jump_008_7d99


    call Call_008_7d5a
    call $250c
    jp $2646


    call $250c
    jr c, jr_008_7d32

    jr jr_008_7d84

Call_008_7d5a:
    ld a, [$d00b]
    sub $20
    ret nc

    ld a, $22
    ld [$d00b], a
    ld a, [$cc77]
    or a
    ret nz

    ld a, $80
    ld [$cca4], a
    ld a, $01
    ld [$cc02], a
    ld hl, $6362
    call $24fe
    ld h, d
    ld l, $44
    ld [hl], $02
    inc l
    ld [hl], $00
    pop bc
    ret


jr_008_7d84:
    call $25b8
    ld e, $7e
    ld a, [de]
    or a
    jr z, jr_008_7d99

    ld e, $60
    ld a, [de]
    cp $0d
    jr nz, jr_008_7d99

    ld e, $60
    ld a, $01
    ld [de], a

Jump_008_7d99:
jr_008_7d99:
    call $261d
    jp $229b


    ld e, $44
    ld a, [de]
    rst $00
    and a
    ld a, l
    call nc, $cd7d
    jp hl


    dec d
    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $7c
    ld [hl], $01
    ld l, $77
    ld [hl], $78
    ld l, $7b
    ld [hl], $01
    ld l, $79
    ld [hl], $01
    ld l, $50
    ld [hl], $0f
    call Call_008_7e20
    ld a, $0b
    call $24f5
    ld hl, $63ad
    call $24fe
    jp Jump_008_7ddc


    call $250c
    call Call_008_7deb
    jr jr_008_7ddc

Jump_008_7ddc:
jr_008_7ddc:
    ld e, $79
    ld a, [de]
    or a
    jr z, jr_008_7de5

    call $25b8

jr_008_7de5:
    call $261d
    jp $229b


Call_008_7deb:
    ld e, $78
    ld a, [de]
    rst $00
    di
    ld a, l
    jr c, @+$80

    ld e, $7b
    ld a, [de]
    or a
    jr z, jr_008_7e0f

    ld h, d
    ld l, $77
    dec [hl]
    ret nz

    ld [hl], $78
    ld l, $49
    ld a, [hl]
    xor $10
    ld [hl], a
    ld l, $7a
    ld a, [hl]
    xor $02
    ld [hl], a
    jp $25cb


jr_008_7e0f:
    ld h, d
    ld l, $78
    ld [hl], $01
    ld l, $79
    ld [hl], $00
    ld a, [$d00d]
    ld l, $4d
    cp [hl]
    jr nc, jr_008_7e2c

Call_008_7e20:
    ld l, $49
    ld [hl], $18
    ld l, $7a
    ld a, $03
    ld [hl], a
    jp $25cb


jr_008_7e2c:
    ld l, $49
    ld [hl], $08
    ld l, $7a
    ld a, $01
    ld [hl], a
    jp $25cb


    ld e, $7b
    ld a, [de]
    or a
    ret z

    ld h, d
    ld l, $78
    ld [hl], $00
    ld l, $79
    ld [hl], $01
    ld l, $77
    ld [hl], $78
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld d, e
    ld a, [hl]
    adc c
    ld a, [hl]
    call $1956
    and $40
    jp nz, $3ad9

    ld a, $05
    call $1717
    jr nc, jr_008_7e6c

    cp $03
    jp nc, $3ad9

    sub $01
    ld e, $42
    ld [de], a

jr_008_7e6c:
    call $15e9
    call $239b
    call $1e42
    call $1e15
    ld hl, $63ff
    call $24fe
    ld a, $4d
    call $0c74
    ld bc, $8404
    jp $24b1


    call $250c
    jp c, $3ad9

    ret


    ld e, $44
    ld a, [de]
    rst $00
    sbc h
    ld a, [hl]
    xor l
    ld a, [hl]
    ret z

    ld a, [hl]
    inc c
    dec h
    ld a, $01
    ld [de], a
    call $26ac
    ld a, $23
    call $24f5
    ld hl, $6425
    call $24fe
    call $250c
    ret nc

    ld h, d
    ld l, $40
    ld [hl], $01
    ld l, $44
    ld [hl], $02
    ld a, $02
    ld [$cced], a
    xor a
    ld [$ccec], a
    inc a
    ld [$ccc9], a
    ret


    call Call_008_7eef
    ret z

    call $0c8e
    call $26ac
    ld l, $44
    ld [hl], $03
    ld a, $03
    ld [$cced], a
    xor a
    ld [$cca7], a
    call $2af0
    xor a
    ld [$ccc9], a
    ld hl, $649a
    call $24fe
    jp $250c


Call_008_7eef:
    ld hl, $c680
    ld a, [$cca7]
    or [hl]
    inc l
    or [hl]
    ld a, $03
    jr nz, jr_008_7f13

    ld a, $0b
    call $211e
    call Call_008_7f18
    ld a, $01
    jr nc, jr_008_7f13

    ld hl, $d00b
    call Call_008_7f18
    ld a, $02
    jr nc, jr_008_7f13

    xor a

jr_008_7f13:
    ld [$ccec], a
    or a
    ret


Call_008_7f18:
    ld a, [hl+]
    sub $16
    cp $4c
    ret nc

    inc l
    ld a, [hl]
    sub $22
    cp $5c
    ret


    ld e, $44
    ld a, [de]
    rst $00
    dec l
    ld a, a
    ld c, h
    ld a, a
    call $15e9
    ld a, $86
    call $04e7
    call $26ac
    ld a, $0b
    call $24f5
    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $49
    ld [hl], $04
    ld hl, $6506
    call $24fe
    call $250c
    call Call_008_7f55
    jp $2686


Call_008_7f55:
    ld e, $79
    ld a, [de]
    rst $00
    ld e, l
    ld a, a
    ld l, l
    ld a, a
    ld h, d
    ld l, $77
    ld a, [hl]
    cp $04
    ret nz

    ld l, $79
    ld [hl], $01
    ld a, $3d
    jp $0c74


    ret


    ld e, $44
    ld a, [de]
    rst $00
    db $76
    ld a, a
    adc e
    ld a, a
    call $15e9
    call $239b
    ld l, $49
    ld [hl], $04
    ld a, $0b
    call $24f5
    ld hl, $654a
    call $24fe
    call $250c
    ld e, $7f
    ld a, [de]
    or a
    jp z, $2646

    call $25b8
    jp $229b


    ld e, $44
    ld a, [de]
    rst $00
    and e
    ld a, a
    or c
    ld a, a
    call $15e9
    ld a, $06
    call $248d
    ld l, $44
    inc [hl]
    jp $1df1


    ld e, $42
    ld a, [de]
    ld hl, $cfde
    call $0205
    jp nz, $3ad9

    jp $261d


    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    db $08

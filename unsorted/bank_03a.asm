; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03a", ROMX

    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    rst AddAToHL
    dec sp
    dec bc
    inc a
    dec bc
    dec sp
    dec bc
    inc a
    dec bc
    dec sp
    dec bc
    ld h, b
    dec b
    db $d3
    dec sp
    ld b, $d7
    scf
    dec bc
    ld h, b
    dec b
    db $d3
    scf
    ld b, $d7
    inc [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    inc [hl]
    ld b, $d7
    scf
    dec bc
    ld h, b
    dec b
    db $d3
    scf
    ld b, $d7
    add hl, sp
    dec bc
    ld a, [hl-]
    dec bc
    add hl, sp
    dec bc
    ld a, [hl-]
    dec bc
    add hl, sp
    dec bc
    ld h, b
    dec b
    db $d3
    add hl, sp
    ld b, $d6
    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    ld b, $d6
    ld [hl-], a
    dec bc
    ld h, b
    dec b
    db $d3
    ld [hl-], a
    ld b, $d6
    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    ld b, $d7
    dec sp
    dec bc
    inc a
    dec bc
    dec sp
    dec bc
    inc a
    dec bc
    dec sp
    dec bc
    ld h, b
    dec b
    db $d3
    dec sp
    ld b, $d7
    scf
    dec bc
    ld h, b
    dec b
    db $d3
    scf
    ld b, $d7
    inc [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    inc [hl]
    ld b, $d7
    scf
    dec bc
    ld h, b
    dec b
    db $d3
    scf
    ld b, $d7
    add hl, sp
    dec bc
    ld a, [hl-]
    dec bc
    add hl, sp
    dec bc
    ld a, [hl-]
    dec bc
    add hl, sp
    dec bc
    ld h, b
    dec b
    db $d3
    add hl, sp
    ld b, $d6
    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    ld b, $d6
    ld [hl-], a
    dec bc
    ld h, b
    dec b
    db $d3
    ld [hl-], a
    ld b, $d6
    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    ld b, $d6
    scf
    dec bc
    jr c, jr_03a_40b7

    sub $37
    dec bc
    sub $38
    dec bc
    sub $37
    dec bc
    ld h, b
    dec b

jr_03a_40b7:
    db $d3
    scf
    ld b, $d6
    inc sp
    dec bc
    ld h, b
    dec b
    db $d3
    inc sp
    ld b, $d6
    jr nc, jr_03a_40d0

    ld h, b
    dec b
    db $d3
    jr nc, jr_03a_40d0

    sub $37
    dec bc
    ld h, b
    dec b
    db $d3

jr_03a_40d0:
    scf
    ld b, $d6
    dec [hl]
    dec bc
    scf
    dec bc
    dec [hl]
    dec bc
    scf
    dec bc
    push de
    dec [hl]
    dec bc
    ld h, b
    dec b
    jp nc, $0635

    sub $32
    dec bc
    ld h, b
    dec b
    db $d3
    ld [hl-], a
    ld b, $d6
    ld l, $0b
    ld h, b
    dec b
    db $d3
    ld l, $06
    sub $32
    dec bc
    ld h, b
    dec b
    db $d3
    ld [hl-], a
    ld b, $d6
    jr nc, @+$44

    sub $2d
    dec bc
    ld h, b
    dec b
    db $d3
    dec l
    ld b, $d6
    jr nc, jr_03a_4114

    ld h, b
    dec b
    db $d3
    jr nc, jr_03a_4114

    sub $35
    dec bc
    ld h, b
    dec b
    db $d3

jr_03a_4114:
    dec [hl]
    ld b, $d8
    scf
    ld e, b
    push de
    ld b, e
    inc bc
    ld h, b
    inc bc
    call nc, $0543
    ld h, b
    inc bc
    call nc, $0343
    ld h, b
    dec de
    cp $07
    ld b, b
    rst $38
    or $08
    scf
    dec bc
    add hl, sp
    dec bc
    scf
    dec bc
    add hl, sp
    dec bc
    scf
    inc bc
    ld h, b
    inc bc
    scf
    dec b
    ld h, b
    inc bc
    call nc, $0337
    ld h, b
    dec b
    sub $34
    inc bc
    ld h, b
    inc bc
    call nc, $0534
    ld h, b
    inc bc
    call nc, $0334
    ld h, b
    dec b
    sub $2f
    inc bc
    ld h, b
    inc bc
    call nc, $052f
    ld h, b
    inc bc
    call nc, $032f
    ld h, b
    dec b
    sub $2b
    inc bc
    ld h, b
    inc bc
    call nc, $052b
    ld h, b
    inc bc
    call nc, $032b
    ld h, b
    dec b
    sub $35
    dec bc
    scf
    dec bc
    dec [hl]
    dec bc
    scf
    dec bc
    dec [hl]
    inc bc
    ld h, b
    inc bc
    call nc, $0535
    ld h, b
    inc bc
    call nc, $0335
    ld h, b
    dec b
    sub $32
    inc bc
    ld h, b
    inc bc
    push de
    ld [hl-], a
    dec b
    ld h, b
    inc bc
    call nc, $0332
    ld h, b
    dec b
    sub $2e
    inc bc
    ld h, b
    inc bc
    call nc, $052e
    ld h, b
    inc bc
    db $d3
    ld l, $03
    ld h, b
    dec b
    sub $29
    inc bc
    ld h, b
    inc bc
    call nc, $0529
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc bc
    ld h, b
    dec b
    sub $37
    dec bc
    add hl, sp
    dec bc
    scf
    dec bc
    add hl, sp
    dec bc
    scf
    inc bc
    ld h, b
    inc bc
    push de
    scf
    dec b
    ld h, b
    inc bc
    call nc, $0337
    ld h, b
    dec b
    sub $34
    inc bc
    ld h, b
    inc bc
    call nc, $0534
    ld h, b
    inc bc
    call nc, $0334
    ld h, b
    dec b
    sub $2f
    inc bc
    ld h, b
    inc bc
    call nc, $052f
    ld h, b
    inc bc
    call nc, $032f
    ld h, b
    dec b
    sub $2b
    inc bc
    ld h, b
    inc bc
    call nc, $052b
    ld h, b
    inc bc
    call nc, $032b
    ld h, b
    dec b
    sub $35
    dec bc
    scf
    dec bc
    dec [hl]
    dec bc
    scf
    dec bc
    dec [hl]
    inc bc
    ld h, b
    inc bc
    call nc, $0535
    ld h, b
    inc bc
    call nc, $0335
    ld h, b
    dec b
    sub $32
    inc bc
    ld h, b
    inc bc
    push de
    ld [hl-], a
    dec b
    ld h, b
    inc bc
    call nc, $0332
    ld h, b
    dec b
    sub $2e
    inc bc
    ld h, b
    inc bc
    push de
    ld l, $05
    ld h, b
    inc bc
    call nc, $032e
    ld h, b
    dec b
    sub $29
    inc bc
    ld h, b
    inc bc
    push de
    add hl, hl
    dec b
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc bc
    ld h, b
    dec b
    rst AddAToHL
    inc sp
    dec bc
    sub $35
    dec bc
    inc sp
    dec bc
    dec [hl]
    dec bc
    inc sp
    inc bc
    ld h, b
    inc bc
    push de
    inc sp
    dec b
    ld h, b
    inc bc
    db $d3
    inc sp
    inc bc
    ld h, b
    dec b
    sub $30
    inc bc
    ld h, b
    inc bc
    push de
    jr nc, jr_03a_4261

    ld h, b
    inc bc
    db $d3
    jr nc, @+$05

jr_03a_4261:
    ld h, b
    dec b
    sub $2c
    inc bc
    ld h, b
    inc bc
    push de
    inc l
    dec b
    ld h, b
    inc bc
    call nc, $032c
    ld h, b
    dec b
    sub $27
    inc bc
    ld h, b
    inc bc
    push de
    daa
    dec b
    ld h, b
    inc bc
    call nc, $0327
    ld h, b
    dec b
    sub $32
    dec bc
    inc sp
    dec bc
    ld [hl-], a
    dec bc
    inc sp
    dec bc
    ld [hl-], a
    inc bc
    ld h, b
    inc bc
    push de
    ld [hl-], a
    dec b
    ld h, b
    inc bc
    call nc, $0332
    ld h, b
    dec b
    sub $2e
    inc bc
    ld h, b
    inc bc
    push de
    ld l, $05
    ld h, b
    inc bc
    call nc, $032e
    ld h, b
    dec b
    sub $29
    inc bc
    ld h, b
    inc bc
    push de
    add hl, hl
    dec b
    ld h, b
    inc bc
    call nc, $0329
    ld h, b
    dec b
    sub $26
    inc bc
    ld h, b
    inc bc
    call nc, $0526
    ld h, b
    inc bc
    db $d3
    ld h, $03
    ld h, b
    dec b
    sub $27
    dec bc
    ld h, $0b
    sub $24
    inc bc
    ld h, b
    inc bc
    push de
    inc h
    dec b
    ld h, b
    inc bc
    db $d3
    inc h
    inc bc
    ld h, b
    dec b
    sub $27
    inc bc
    ld h, b
    inc bc
    push de
    daa
    dec b
    ld h, b
    inc bc
    db $d3
    daa
    inc bc
    ld h, b
    dec b
    sub $29
    inc bc
    ld h, b
    inc bc
    push de
    add hl, hl
    dec b
    ld h, b
    inc bc
    push de
    add hl, hl
    inc bc
    ld h, b
    dec b
    sub $2d
    inc bc
    ld h, b
    inc bc
    sub $2d
    dec b
    ld h, b
    inc bc
    push de
    dec l
    inc bc
    ld h, b
    dec b
    sub $30
    inc bc
    ld h, b
    inc bc
    push de
    jr nc, jr_03a_4313

    ld h, b
    inc bc
    call nc, $0330

jr_03a_4313:
    ld h, b
    dec b
    rst AddAToHL
    cpl
    dec bc
    ld h, b
    inc bc
    sub $2f
    inc bc
    ld h, b
    dec b
    push de
    cpl
    inc bc
    ld h, b
    inc bc
    call nc, $052f
    ld h, b
    dec bc
    sub $30
    dec bc
    ld h, b
    inc bc
    push de
    jr nc, @+$05

    ld h, b
    dec b
    call nc, $0330
    ld h, b
    inc bc
    call nc, $0530
    ld h, b
    dec bc
    sub $32
    rlca
    ld h, b
    inc b
    call nc, $0332
    ld h, b
    inc bc
    call nc, $0532
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc bc
    ld h, b
    db $10
    cp $2e
    ld b, c
    rst $38
    or $02
    sub $24
    dec bc
    db $d3
    inc h
    dec bc
    sub $2b
    dec bc
    db $d3
    dec hl
    dec bc
    sub $2f
    dec bc
    db $d3
    cpl
    dec bc
    sub $34
    dec bc
    db $d3
    inc [hl]
    ld d, $60
    ld hl, $22d6
    dec bc
    db $d3
    ld [hli], a
    dec bc
    sub $29
    dec bc
    db $d3
    add hl, hl
    dec bc
    sub $2d
    dec bc
    db $d3
    dec l
    dec bc
    sub $32
    dec bc
    db $d3
    ld [hl-], a
    ld d, $60
    ld hl, $24d6
    dec bc
    db $d3
    inc h
    dec bc
    sub $2b
    dec bc
    db $d3
    dec hl
    dec bc
    sub $2f
    dec bc
    db $d3
    cpl
    dec bc
    sub $34
    dec bc
    db $d3
    inc [hl]
    ld d, $60
    ld hl, $22d6
    dec bc
    db $d3
    ld [hli], a
    dec bc
    sub $29
    dec bc
    db $d3
    add hl, hl
    dec bc
    sub $2d
    dec bc
    db $d3
    dec l
    dec bc
    sub $32
    dec bc
    db $d3
    ld [hl-], a
    ld d, $60
    ld hl, $20d6
    dec bc
    db $d3
    jr nz, jr_03a_43d0

    sub $27
    dec bc
    db $d3
    daa
    dec bc
    sub $2b
    dec bc
    db $d3
    dec hl

jr_03a_43d0:
    dec bc
    sub $30
    dec bc
    db $d3
    jr nc, jr_03a_43ed

    ld h, b
    ld hl, $1fd6
    dec bc
    db $d3
    rra
    dec bc
    sub $26
    dec bc
    db $d3
    ld h, $0b
    sub $2b
    dec bc
    db $d3
    dec hl
    dec bc
    sub $2e

jr_03a_43ed:
    dec bc
    db $d3
    ld l, $16
    ld h, b
    ld hl, $1dd6
    dec bc
    db $d3
    dec e
    dec bc
    sub $24
    dec bc
    db $d3
    inc h
    dec bc
    sub $29
    dec bc
    db $d3
    add hl, hl
    dec bc
    sub $2d
    dec bc
    db $d3
    dec l
    ld d, $60
    ld hl, $1fd6
    dec bc
    db $d3
    rra
    dec bc
    sub $23
    dec bc
    db $d3
    inc hl
    dec bc
    sub $26
    dec bc
    db $d3
    ld h, $0b
    sub $2b
    dec bc
    db $d3
    dec hl
    dec bc
    sub $26
    dec bc
    db $d3
    ld h, $0b
    sub $23
    dec bc
    db $d3
    inc hl
    dec bc
    cp $57
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
    or $02
    ret c

    ld l, $18
    jp nc, $142e

    ld h, b
    db $10
    ldh [rSC], a
    ret c

    ld l, $09
    ldh [$03], a
    call nc, $032e
    ldh [rSC], a
    ret c

    ld l, $09
    ldh [$03], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ld l, $03
    jp nc, $032e

    ret c

    ld l, $02
    jp nc, $042e

    ret c

    ldh [rSC], a
    ld l, $09
    ldh [$03], a
    call nc, $092e
    ldh [rP1], a
    ret c

    ldh [rSB], a
    inc l
    ld b, $e0
    nop
    ld l, $12
    jp nc, $092e

    pop de
    ld l, $09
    ret c

    ldh [rSC], a
    ld l, $09
    ldh [$03], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ldh [rSC], a
    ld l, $09
    ldh [$03], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ld l, $03
    jp nc, $032e

    ret c

    ld l, $03
    jp nc, $032e

    ret c

    ldh [rSC], a
    ld l, $09
    call nc, $03e0
    ld l, $09
    ldh [rP1], a
    ret c

    ldh [rSB], a
    inc l
    ld b, $e0
    nop
    ld l, $12
    jp nc, $092e

    pop de
    ld l, $09
    ret c

    ldh [rSC], a
    ld l, $09
    ldh [$03], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ldh [rSC], a
    ld l, $09
    ldh [$03], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ld l, $03
    jp nc, $032e

    ret c

    ld l, $03
    jp nc, $032e

    jp c, $01e0

    ld l, $09
    ldh [$03], a
    db $d3
    ld l, $03
    ret c

    ldh [rSB], a
    add hl, hl
    ld b, $29
    ld b, $da
    ldh [rSB], a
    add hl, hl
    ld [$03e0], sp
    db $d3
    add hl, hl
    inc b
    ret c

    ldh [rSB], a
    add hl, hl
    ld b, $29
    ld b, $da
    ldh [rSB], a
    add hl, hl
    ld [$03e0], sp
    db $d3
    add hl, hl
    inc b
    ret c

    ldh [rSB], a
    add hl, hl
    ld b, $29
    ld b, $d8
    ldh [rSC], a
    add hl, hl
    ld [$03e0], sp
    db $d3
    add hl, hl
    inc b
    ret c

    ldh [rSB], a
    add hl, hl
    add hl, bc
    ldh [rP1], a
    call nc, $0329
    jp c, $01e0

    ld d, $0c
    ld [hli], a
    jr @+$24

    inc c
    ldh [rSC], a
    ld d, $0c
    ldh [rSB], a
    ld [hli], a
    jr jr_03a_455d

    inc c
    inc d
    inc c
    ldh [rSB], a
    jr nz, jr_03a_455a

    jr nz, jr_03a_4550

    inc d
    inc c
    ldh [rSB], a
    jr nz, @+$1a

    jr nz, jr_03a_4558

    ld [de], a
    inc c
    ldh [rSB], a

jr_03a_4550:
    ld e, $18
    ld e, $0c
    ld [de], a
    inc c
    ldh [rSB], a

jr_03a_4558:
    ld e, $18

jr_03a_455a:
    ld e, $0c
    add hl, de

jr_03a_455d:
    inc c
    ldh [rSB], a
    dec h
    jr jr_03a_4588

    inc c
    add hl, de
    inc c
    ldh [rSB], a
    dec h
    jr @+$27

    inc c
    rla
    inc c
    ldh [rSB], a
    inc hl
    jr jr_03a_4596

    inc c
    rla
    inc c
    ldh [rSB], a
    inc hl
    jr jr_03a_459e

    inc c
    ld d, $0c
    ldh [rSB], a
    ld [hli], a
    jr jr_03a_45a5

    inc c
    ld d, $0c
    ldh [rSB], a

jr_03a_4588:
    ld [hli], a
    jr jr_03a_45ad

    inc c
    jr jr_03a_459a

    inc h
    jr @+$26

    inc c
    jr jr_03a_45a0

    inc h
    inc c

jr_03a_4596:
    ld l, $0c
    inc h
    inc c

jr_03a_459a:
    ld sp, hl
    nop
    ldh [$03], a

jr_03a_459e:
    dec e
    inc c

jr_03a_45a0:
    ret c

    ldh [rP1], a
    ld l, $03

jr_03a_45a5:
    ldh [rSB], a
    call nc, $032e
    ret c

    ldh [rP1], a

jr_03a_45ad:
    ld l, $03
    ldh [rSB], a
    call nc, $032e
    jp c, $00e0

    ld l, $03
    ldh [rSB], a
    call nc, $032e
    ldh [rP1], a
    jp nc, $062e

    ret c

    ld l, $03
    ldh [rSB], a
    call nc, $032e
    jp c, $00e0

    ld l, $03
    ldh [rSB], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ld l, $08
    call nc, $042e
    ret c

    jr @+$05

    ldh [rSB], a
    call nc, $0318
    ret c

    ldh [rP1], a
    jr @+$05

    ldh [rSB], a
    call nc, $0318
    jp c, $00e0

    jr @+$05

    ldh [rSB], a
    call nc, $0318
    ldh [rP1], a
    jp nc, $0618

    ret c

    jr @+$05

    ldh [rSB], a
    call nc, $0318
    jp c, $00e0

    jr @+$05

    ldh [rSB], a
    call nc, $0318
    ldh [rP1], a
    ret c

    dec e
    ld [$1dd4], sp
    inc b
    ret c

    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    ret c

    ldh [rP1], a
    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    jp c, $00e0

    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    ldh [rP1], a
    jp nc, $062d

    ret c

    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    jp c, $00e0

    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    ldh [rP1], a
    ret c

    dec l
    ld [$2dd4], sp
    inc b
    jp c, $01e0

    ld de, $da06
    ld de, $da06
    ld de, $da06
    ld [de], a
    dec b
    pop de
    ld [de], a
    ld bc, $13da
    dec b
    pop de
    inc de
    ld bc, $15da
    dec b
    pop de
    dec d
    ld bc, $29fe
    ld b, l
    rst $38
    or $02
    ret c

    ld h, $18
    jp nc, $1426

    ld h, b
    db $10
    ret c

    ldh [rSC], a
    ld h, $09
    ldh [rDIV], a
    db $d3
    ld h, $03
    ret c

    ldh [rSC], a
    ld h, $09
    ldh [rDIV], a
    db $d3
    ld h, $03
    ret c

    ld h, $03
    jp nc, $0326

    ret c

    ld h, $03
    jp nc, $0326

    ret c

    ldh [rSC], a
    inc h
    add hl, bc
    ldh [rDIV], a
    db $d3
    inc h
    add hl, bc
    ldh [rP1], a
    ret c

    inc h
    inc b
    jp nc, $0224

    rst AddAToHL
    inc h
    ld [de], a
    db $d3
    inc h
    add hl, bc
    pop de
    inc h
    add hl, bc
    ret c

    ret c

    ldh [rSC], a
    inc h
    add hl, bc
    ldh [rDIV], a
    db $d3
    inc h
    inc bc
    ret c

    ldh [rSC], a
    inc h
    add hl, bc
    ldh [rDIV], a
    db $d3
    inc h
    inc bc
    ret c

    ldh [rSB], a
    inc h
    ld b, $e0
    ld bc, $0624
    ret c

    ldh [rSC], a
    dec h
    add hl, bc
    ldh [$03], a
    call nc, $0925
    ret c

    ldh [rP1], a
    dec h
    inc bc
    jp nc, $0325

    rst AddAToHL
    dec h
    ld [de], a
    db $d3
    dec h
    add hl, bc
    pop de
    dec h
    add hl, bc
    ret c

    ldh [rSC], a
    dec h
    add hl, bc
    ldh [rDIV], a
    db $d3
    dec h
    inc bc
    ret c

    ldh [rSC], a
    dec h
    add hl, bc
    ldh [rDIV], a
    db $d3
    dec h
    inc bc
    ldh [rP1], a
    ret c

    dec h
    inc bc
    jp nc, $0325

    ret c

    dec h
    inc bc
    jp nc, $0325

    jp c, $01e0

    dec h
    add hl, bc
    ldh [$03], a
    db $d3
    dec h
    inc bc
    ldh [rP1], a
    ret c

    ldh [rSB], a
    ld hl, $e006
    ld bc, $0621
    jp c, $01e0

    ld hl, $e008
    inc bc
    db $d3
    ld hl, $d804
    ldh [rSB], a
    ld hl, $e006
    ld bc, $0621
    jp c, $01e0

    ld hl, $e008
    inc bc
    db $d3
    ld hl, $d804
    ldh [rSB], a
    ld hl, $e006
    ld bc, $0621
    ld sp, hl
    nop
    ret c

    ldh [rSC], a
    ld hl, $e009
    inc bc
    db $d3
    ld hl, $d803
    ldh [rSC], a
    ld hl, $e009
    inc bc
    db $d3
    ld hl, $d003
    jr nz, jr_03a_47d4

    ldh [rP1], a
    sub $3a
    ld b, $60
    ld b, $3a
    inc bc
    ld h, b
    inc bc
    inc a
    inc bc
    ld h, b
    inc bc
    ld a, $03
    ld h, b
    inc bc
    ccf
    inc bc
    ld h, b
    inc bc
    ldh [rTAC], a
    ld b, c
    ld c, b
    ldh [rP1], a
    dec a
    inc bc
    ld h, b
    inc bc
    ld b, d
    inc bc
    ld h, b
    inc bc
    ld b, h
    inc bc
    ld h, b
    inc bc
    ld b, [hl]
    inc bc
    ld h, b
    inc bc
    ldh [rTAC], a
    ld c, c
    ld d, h
    ldh [rP1], a
    dec a
    inc bc
    ld h, b
    inc bc
    ccf
    inc bc
    ld h, b
    inc bc
    ld b, c
    ld b, $60
    ld b, $3d
    ld b, $60
    ld b, $e0
    rlca
    jr c, jr_03a_47eb

    ldh [rP1], a
    ccf
    ld [bc], a
    ld h, b
    inc b
    ld b, c
    ld [bc], a
    ld h, b
    inc b
    ld b, d
    ld [bc], a
    ld h, b
    ld a, [bc]
    ccf
    ld [bc], a
    ld h, b
    inc b
    ld b, c
    ld [bc], a
    ld h, b
    inc b
    ldh [rDIV], a
    ld b, d
    inc a
    ldh [rP1], a
    dec a
    ld [bc], a
    ld h, b
    inc b
    ccf
    ld [bc], a
    ld h, b
    inc b
    ld b, c

jr_03a_47d4:
    ld [bc], a
    ld h, b
    ld a, [bc]
    dec a
    ld [bc], a
    ld h, b
    inc b
    ccf
    ld [bc], a
    ld h, b
    inc b
    ldh [rDIV], a
    ld b, c
    inc a
    ldh [rP1], a
    inc a
    ld [bc], a
    ld h, b
    inc b
    ld a, $02

jr_03a_47eb:
    ld h, b
    inc b
    ld b, b
    ld [bc], a
    ld h, b
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld h, b
    inc b
    ld b, c
    ld [bc], a
    ld h, b
    inc b
    ld b, e
    ld [bc], a
    ld h, b
    inc b
    ld b, l
    ld [bc], a
    ld h, b
    inc b
    ld b, [hl]
    ld [bc], a
    ld h, b
    inc b
    ld c, b
    ld [bc], a
    ld h, b
    inc b
    ld b, l
    ld b, $60
    ld b, $d8
    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0327

    jp nc, $0327

    pop de
    daa
    ld b, $d8
    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0827

    db $d3
    daa
    ld a, [bc]
    pop de
    daa
    ld a, [bc]
    ld h, b
    jr nz, @-$26

    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0327

    jp nc, $0327

    pop de
    daa
    ld b, $d8
    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0827

    db $d3
    daa
    ld a, [bc]
    pop de
    daa
    ld a, [bc]
    ld h, b
    inc d
    cp $65
    ld b, a
    rst $38
    ld h, b
    inc h
    or $0e
    ld d, $05
    or $0f
    ld d, $01
    or $0e
    ld d, $05
    or $0f
    ld d, $01
    or $0e
    ld d, $0c
    or $0f
    ld d, $12
    ld h, b
    ld [hl], $f6
    ld c, $14
    dec b
    or $0f
    inc d
    ld bc, $0ef6
    inc d
    dec b
    or $0f
    inc d
    ld bc, $0ef6
    inc d
    inc c
    or $0f
    inc d
    ld [de], a
    ld h, b
    ld [hl], $f6
    ld c, $12
    dec b
    or $0f
    ld [de], a
    ld bc, $0ef6
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $0ef6
    ld [de], a
    inc c
    or $0f
    ld [de], a
    ld [de], a
    ld h, b
    ld e, d
    or $0e
    ld de, $f60c
    ld c, $13
    dec b
    or $0f
    inc de
    ld bc, $0ef6
    dec d
    dec b
    or $0f
    dec d
    ld bc, $01f6
    ld l, $06
    ld h, b
    ld [de], a
    add hl, hl
    ld e, $60
    inc c
    ld l, $04
    ld h, b
    ld [bc], a
    ld l, $06
    jr nc, jr_03a_48e2

    ld h, b
    inc bc
    ld [hl-], a

jr_03a_48e2:
    inc bc
    ld h, b
    inc bc
    inc sp
    inc bc
    ld h, b
    inc bc
    dec [hl]
    ld a, [hli]
    ld h, b
    ld [de], a
    dec [hl]
    add hl, bc
    ld h, b
    inc bc
    dec [hl]
    inc c
    ld [hl], $03
    ld h, b
    inc bc
    jr c, jr_03a_48fc

    ld h, b
    inc bc
    ld a, [hl-]

jr_03a_48fc:
    ld a, [hli]
    ld h, b
    ld [de], a
    ld a, [hl-]
    add hl, bc
    ld h, b
    inc bc
    ld a, [hl-]
    inc c
    jr c, @+$05

    ld h, b
    inc bc
    ld [hl], $03
    ld h, b
    inc bc
    jr c, jr_03a_4915

    ld h, b
    inc c
    ld [hl], $06
    dec [hl]
    inc h

jr_03a_4915:
    ld h, b
    inc c
    dec [hl]
    jr jr_03a_494d

    inc c
    ld h, b
    ld b, $35
    ld b, $36
    inc h
    ld h, b
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    ld sp, $600c
    ld b, $33
    ld b, $35
    inc h
    ld h, b
    inc c
    inc sp
    inc c
    ld sp, $300c
    inc c
    ld h, b
    ld b, $32
    ld b, $34
    inc h
    ld h, b
    inc c
    scf
    jr jr_03a_4977

    ld [$b860], sp
    cp $cd
    ld c, b
    rst $38
    or $02
    rst AddAToHL
    ld b, e

jr_03a_494d:
    inc bc
    sub $42
    inc bc
    push de
    ld b, c
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    ld a, $03
    sub $3d
    inc bc
    inc a
    inc bc
    dec sp
    inc bc
    ld a, [hl-]
    inc bc
    rst AddAToHL
    add hl, sp

jr_03a_4965:
    inc bc
    jr c, jr_03a_496b

    scf
    inc bc
    ret c

jr_03a_496b:
    ld [hl], $03
    dec [hl]
    inc bc
    rst AddAToHL
    inc [hl]
    inc bc
    ldh [rSC], a
    call c, $00f6

jr_03a_4977:
    inc hl
    ld b, $23
    ld b, $23
    ld b, $db
    ldh [rSB], a
    ld [hli], a
    ld b, $60
    jr jr_03a_4965

    inc b
    ld hl, $e012
    ld [bc], a
    jr nz, @+$14

    ld h, b
    inc c
    inc hl
    ld b, $23
    ld b, $23
    ld b, $e0
    ld bc, $0622
    ld h, b
    jr @-$1e

    inc b
    ld hl, $e012
    ld [bc], a
    jr nz, jr_03a_49b4

    ld h, b
    inc c
    dec h
    ld b, $25
    ld b, $25
    ld b, $e0
    ld bc, $24da
    ld b, $60
    jr @-$1e

    inc b
    inc hl

jr_03a_49b4:
    ld [de], a
    ldh [rSC], a
    ld [hli], a
    ld [de], a
    ld h, b
    inc c
    dec h
    ld b, $25
    ld b, $25
    ld b, $db
    ldh [rSB], a
    jp c, $0624

    ld h, b
    jr @-$1e

    inc b
    inc hl
    ld [de], a
    ldh [rSC], a
    ld [hli], a
    ld [de], a
    ld h, b
    inc c
    ldh [rP1], a
    or $01
    push de

jr_03a_49d8:
    inc [hl]
    ld [de], a
    inc sp
    ld [de], a
    inc [hl]
    ld b, $35
    ld b, $36
    ld b, $37
    ld b, $e0
    ld [bc], a
    or $00
    jp c, $0627

    daa
    ld b, $27
    ld b, $db

jr_03a_49f0:
    ldh [rSB], a
    jp c, $0626

    ld h, b
    jr jr_03a_49d8

    inc b
    dec h
    ld [de], a
    ldh [rSC], a
    inc h
    ld [de], a
    ld h, b
    inc c
    daa
    ld b, $27
    ld b, $27
    ld b, $db

jr_03a_4a08:
    ldh [rSB], a
    jp c, $0626

    ld h, b
    jr jr_03a_49f0

    inc b
    dec h
    ld [de], a
    ldh [rSC], a
    inc h
    ld [de], a
    ld h, b
    inc c
    add hl, hl
    ld b, $29
    ld b, $29
    ld b, $db

jr_03a_4a20:
    ldh [rSB], a
    jp c, $0628

    ld h, b
    jr jr_03a_4a08

    inc b
    daa
    ld [de], a
    ldh [rSC], a
    ld h, $12
    ld h, b
    inc c
    add hl, hl
    ld b, $29
    ld b, $29
    ld b, $db
    ldh [rSB], a
    jp c, $0628

    ld h, b
    jr jr_03a_4a20

    inc b
    daa
    ld [de], a
    ldh [rSC], a
    ld h, $12
    ld h, b
    ld l, h
    ldh [rP1], a
    or $02
    ld b, e
    inc bc
    sub $42
    inc bc
    push de
    ld b, c
    inc bc
    ld b, b
    inc bc
    ccf
    inc bc
    ld a, $03
    dec a
    inc bc
    sub $3c
    inc bc
    dec sp
    inc bc
    ld a, [hl-]
    inc bc
    rst AddAToHL

jr_03a_4a65:
    add hl, sp
    inc bc
    jr c, jr_03a_4a6c

    scf
    inc bc
    ret c

jr_03a_4a6c:
    ld [hl], $03
    dec [hl]
    inc bc
    rst AddAToHL
    inc [hl]
    inc bc
    ldh [rSC], a
    or $00
    db $db
    inc hl
    ld b, $23
    ld b, $23

jr_03a_4a7d:
    ld b, $e0
    ld bc, $0622
    ld h, b
    jr jr_03a_4a65

    inc b
    ld hl, $e012
    ld [bc], a
    jr nz, jr_03a_4a9e

    ld h, b
    inc c
    inc hl
    ld b, $23
    ld b, $23
    ld b, $db
    ldh [rSB], a
    jp c, $0622

    ld h, b
    jr jr_03a_4a7d

    inc b

jr_03a_4a9e:
    ld hl, $e012
    ld [bc], a
    jr nz, jr_03a_4ab6

    ld h, b
    inc c
    cp $a4
    ld c, c
    rst $38
    or $02
    rst AddAToHL
    ld a, $03
    sub $3d
    inc bc
    push de
    inc a
    inc bc
    dec sp

jr_03a_4ab6:
    inc bc
    ld a, [hl-]
    inc bc
    add hl, sp
    inc bc
    sub $38
    inc bc
    scf
    inc bc
    ld [hl], $03
    dec [hl]
    inc bc
    rst AddAToHL

jr_03a_4ac5:
    inc [hl]
    inc bc
    inc sp
    inc bc
    ld [hl-], a
    inc bc
    ret c

    ld sp, $3003
    inc bc
    cpl
    inc bc
    ldh [rSC], a
    or $00
    inc e
    ld b, $1c
    ld b, $1c
    ld b, $d9
    ldh [rSB], a
    ret c

    dec de
    ld b, $60
    jr jr_03a_4ac5

    inc b
    ld a, [de]
    ld [de], a
    ldh [rSC], a
    add hl, de
    ld [de], a
    ld h, b
    inc c
    ldh [rSC], a
    inc e
    ld b, $1c
    ld b, $1c

jr_03a_4af5:
    ld b, $d9
    ldh [rSB], a
    dec de
    ld b, $60
    jr @-$1e

    inc b
    ld a, [de]
    ld [de], a
    ldh [rSC], a
    add hl, de
    ld [de], a
    ld h, b
    inc c
    ld e, $06
    ld e, $06
    ld e, $06

jr_03a_4b0d:
    reti


    ldh [rSB], a
    dec e
    ld b, $60
    jr jr_03a_4af5

    inc b
    inc e
    ld [de], a
    ldh [rSC], a
    dec de
    ld [de], a
    ld h, b
    inc c
    ld e, $06
    ld e, $06
    ld e, $06
    reti


    ldh [rSB], a
    ret c

    dec e
    ld b, $60
    jr jr_03a_4b0d

    inc b
    inc e
    ld [de], a
    ldh [rSC], a
    dec de
    ld [de], a
    ld h, b
    inc c
    ldh [rP1], a
    or $02
    reti


jr_03a_4b3b:
    jr @+$14

    rla
    ld [de], a
    jr @+$08

    add hl, de
    ld b, $1a
    ld b, $1b
    ld b, $e0
    ld [bc], a
    or $00
    ret c

    jr nz, @+$08

    jr nz, jr_03a_4b56

    jr nz, @+$08

    jp c, $01e0

    reti


jr_03a_4b56:
    rra
    ld b, $60
    jr jr_03a_4b3b

    inc b
    ld e, $12
    ldh [rSC], a
    dec e
    ld [de], a
    ld h, b
    inc c
    jr nz, @+$08

    jr nz, jr_03a_4b6e

    jr nz, @+$08

    reti


jr_03a_4b6b:
    ldh [rSB], a
    ret c

jr_03a_4b6e:
    rra
    ld b, $60
    jr @-$1e

    inc b
    ld e, $12
    ldh [rSC], a
    dec e
    ld [de], a
    ld h, b
    inc c
    ld [hli], a
    ld b, $22
    ld b, $22
    ld b, $d9

jr_03a_4b83:
    ldh [rSB], a
    ret c

    ld hl, $6006
    jr jr_03a_4b6b

    inc b
    jr nz, @+$14

    ldh [rSC], a
    rra
    ld [de], a
    ld h, b
    inc c
    ld [hli], a
    ld b, $22
    ld b, $22
    ld b, $d9
    ldh [rSB], a
    ret c

    ld hl, $6006
    jr jr_03a_4b83

    inc b
    jr nz, jr_03a_4bb8

    ldh [rSC], a
    rra
    ld [de], a
    ld h, b
    ld l, h
    ldh [rP1], a
    or $02
    ld a, $03
    sub $3d
    inc bc
    push de
    inc a
    inc bc

jr_03a_4bb8:
    dec sp
    inc bc
    ld a, [hl-]
    inc bc
    add hl, sp
    inc bc
    sub $38
    inc bc
    scf
    inc bc
    ld [hl], $03
    dec [hl]
    inc bc
    rst AddAToHL
    inc [hl]

jr_03a_4bc9:
    inc bc
    inc sp
    inc bc
    ld [hl-], a
    inc bc
    ret c

    ld sp, $3003
    inc bc
    rst AddAToHL
    cpl
    inc bc
    ldh [rSC], a
    reti


    or $00
    inc e
    ld b, $1c
    ld b, $1c
    ld b, $e0
    ld bc, $1bd8
    ld b, $60
    jr jr_03a_4bc9

    inc b
    ld a, [de]
    ld [de], a
    ldh [rSC], a
    add hl, de
    ld [de], a
    ld h, b
    inc c
    inc e
    ld b, $1c
    ld b, $1c
    ld b, $d9
    ldh [rSB], a
    ret c

    dec de
    ld b, $60
    jr @-$1e

    inc b
    ld a, [de]
    ld [de], a
    ldh [rSC], a
    add hl, de
    ld [de], a
    ld h, b
    inc c
    ldh [rDIV], a
    cp $07
    ld c, e
    rst $38
    or $12
    ld h, b
    jr nc, @+$19

    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $f6
    ld [de], a
    dec c
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $0d
    ld b, $19
    ld b, $f6
    ld bc, $122f
    ld l, $12
    cpl
    ld b, $30
    ld b, $31
    ld b, $32
    ld b, $f6
    ld [de], a
    rrca
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $0f
    ld b, $09
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $05
    ld b, $11
    ld b, $60
    sub b
    rla
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $17
    ld b, $12
    ld b, $fe
    ld d, h
    ld c, h
    rst $38
    ld h, b
    jr nc, @-$2b

    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    inc e
    ld bc, $27d2
    inc bc
    ld h, b
    ld [bc], a
    reti


    jr z, jr_03a_4dfd

    pop de

jr_03a_4dfd:
    daa
    inc bc
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    sub $28
    ld bc, $27d1
    inc bc
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    sub $28
    ld bc, $27d1
    inc bc
    ld h, b
    ld [bc], a
    sub $28
    ld bc, $27d1
    inc bc
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    sub $28
    ld bc, $27d1
    inc bc
    ld h, b
    ld [bc], a
    sub $28
    ld bc, $27d2
    inc bc
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    call c, $0128
    jp nc, $0327

    ld h, b
    ld [bc], a
    db $dd
    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    reti


    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    reti


    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    call nc, $0426
    ld h, b
    ld [bc], a
    ld h, $09
    ld h, b
    inc bc
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    call nc, $0426
    ld h, b
    ld [bc], a
    ld h, $04
    ld h, b
    ld [bc], a
    ld h, $04
    ld h, b
    ld [bc], a
    ld h, $04
    ld h, b
    ld [bc], a
    rst AddAToHL
    jr z, jr_03a_5068

    push de

jr_03a_5068:
    daa
    inc bc
    ld h, b
    ld [bc], a
    reti


    jr z, jr_03a_5070

    push de

jr_03a_5070:
    daa
    inc bc
    ld h, b
    ld [bc], a
    ret c

    jr z, jr_03a_5078

    push de

jr_03a_5078:
    daa
    inc bc
    ld h, b
    ld [bc], a
    db $dd
    jr z, jr_03a_5080

    push de

jr_03a_5080:
    daa
    inc bc
    ld h, b
    ld [hl-], a
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    db $d3
    ld d, d
    inc b
    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0827

    ld h, b
    inc bc
    ret c

Call_03a_50f8:
    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    rst AddAToHL
    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    ret c

    jr z, @+$03

    jp nc, $0327

    ld h, b
    ld [bc], a
    cp $09
    ld c, [hl]
    rst $38
    or $02
    ldh [$03], a
    ret c

    ld b, b
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, b
    add hl, bc
    ld h, b
    dec b
    jp nc, $0940

    ret c

    dec sp
    add hl, bc
    ld h, b
    inc b
    push de
    dec sp
    add hl, bc
    ld h, b
    dec b
    jp nc, $093b

    ld h, b
    inc h
    ret c

    ld b, b
    inc b
    ld h, b
    dec b
    ld b, d
    inc b
    ld h, b
    dec b
    ld b, h
    inc b
    ld h, b
    dec b
    ld b, l
    inc b
    ld h, b
    dec b
    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    add hl, bc
    ld h, b
    dec b
    jp nc, $0947

    ld h, b
    inc b
    pop de
    ld b, a
    add hl, bc
    ld h, b
    dec sp
    ret c

    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    dec b
    ret c

    ld c, b
    add hl, bc
    ld c, d
    add hl, bc
    ld c, h
    add hl, bc
    ld h, b
    inc b
    push de
    ld c, h
    add hl, bc
    ld h, b
    dec b
    jp nc, $094c

    ld h, b
    inc b
    pop de
    ld c, h
    add hl, bc
    ld h, b
    dec sp
    ret c

    ld c, h
    add hl, bc
    ld h, b
    inc b
    push de
    ld c, h
    dec b
    ret c

    ld c, d
    add hl, bc
    ld c, b
    add hl, bc
    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    add hl, bc
    ld h, b
    dec b
    jp nc, $0947

    ld h, b
    inc b
    pop de
    ld b, a
    add hl, bc
    ld h, b
    dec sp
    ret c

    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    add hl, bc
    ld h, b
    dec b
    jp nc, $0947

    ret c

    ld b, l
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, l
    dec b
    ret c

    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    dec b
    ret c

    ld c, b
    add hl, bc
    ld h, b
    inc b
    push de
    ld c, b
    add hl, bc
    ld h, b
    dec b
    jp nc, $0948

    ld h, b
    inc b
    pop de
    ld c, b
    add hl, bc
    ld h, b
    rla
    ret c

    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    dec b
    ret c

    ld b, l
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, l
    dec b
    ret c

    ld b, e
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, e
    dec b
    ret c

    ld b, l
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, l
    dec b
    ret c

    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    add hl, bc
    ld h, b
    dec b
    jp nc, $0947

    ld h, b
    inc h
    ret c

    ld b, l
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, l
    dec b
    ret c

    ld b, e
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, e
    dec b
    ret c

    ld b, d
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, d
    dec b
    ret c

    ld b, h
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, h
    dec b
    ret c

    ld b, [hl]
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, [hl]
    add hl, bc
    ld h, b

Jump_03a_5230:
    dec b
    jp nc, $0946

    ld h, b
    inc h
    ret c

    ld c, c
    add hl, bc
    ld h, b
    inc b
    push de
    ld c, c
    add hl, bc
    ld h, b
    dec b
    jp nc, $0949

    ret c

    ld b, a
    add hl, bc
    ld h, b
    inc b
    push de
    ld b, a
    add hl, bc
    ld h, b
    dec b
    jp nc, $0947

    ld h, b
    inc b
    pop de
    ld b, a
    add hl, bc
    ld h, b
    ld e, a
    cp $27
    ld d, c
    rst $38
    or $02
    ldh [$03], a
    ret nc

    jr nz, @+$14

    sub $2c
    ld [de], a
    cpl
    ld [de], a
    inc [hl]
    ld [de], a
    jr c, jr_03a_527d

    ld h, b
    ld c, b
    ld a, [hli]
    ld [de], a
    cpl
    ld [de], a
    inc sp
    ld [de], a
    ld [hl], $12
    dec sp
    ld [de], a
    ld h, b
    ld [hl], $34
    ld [de], a
    scf
    ld [de], a

jr_03a_527d:
    inc a
    ld [de], a
    ld b, b
    ld [de], a
    inc a
    ld [de], a
    scf
    ld [de], a
    inc [hl]
    ld [de], a
    ld h, b
    ld [de], a
    cpl
    ld [de], a
    inc [hl]
    ld [de], a
    ld [hl], $12
    inc sp
    ld [de], a
    ld h, b
    ld [hl], $35
    ld [de], a
    jr nc, jr_03a_52a9

    dec [hl]
    ld [de], a
    add hl, sp
    ld [de], a
    inc a
    ld [de], a
    ld h, b
    ld [hl], $40
    ld [de], a
    dec sp
    ld [de], a
    scf
    ld [de], a
    inc [hl]
    ld [de], a
    cpl
    ld [de], a

jr_03a_52a9:
    ld h, b
    ld [de], a
    inc [hl]
    ld [de], a
    ld h, b
    ld [de], a
    ld [hl], $12
    ld sp, $2f12
    ld [de], a
    ld sp, $2e12
    ld [de], a
    ld sp, $2a12
    ld [de], a
    ld sp, $3b12
    ld [de], a
    cpl
    ld [de], a
    inc [hl]
    ld [de], a
    ld [hl], $12
    inc sp
    ld [de], a
    ld h, b
    ld [hl], $fe
    ld e, a
    ld d, d
    rst $38
    ld h, b
    add hl, bc
    or $08
    ld b, b
    ld [de], a
    ld h, b
    ld [de], a
    dec sp
    ld [de], a
    ld h, b
    ld [hl], $40
    add hl, bc
    ld b, d
    add hl, bc
    ld b, h
    add hl, bc
    ld b, l
    add hl, bc
    ld b, a
    ld [de], a
    ld h, b
    ld e, d
    ld b, a
    ld [de], a
    ld c, c
    add hl, bc
    ld h, b
    add hl, bc
    ld c, h
    ld [de], a
    ld h, b
    ld e, d
    ld c, h
    ld [de], a
    ld c, d
    add hl, bc
    ld c, b
    add hl, bc
    ld b, a
    ld [de], a
    ld h, b
    ld e, d
    ld b, a
    ld [de], a
    ld h, b
    ld [de], a
    ld b, l
    ld [de], a
    ld b, a
    ld [de], a
    ld c, b
    ld [de], a
    ld h, b
    ld [hl], $47
    ld [de], a
    ld b, l
    ld [de], a
    ld b, e
    ld [de], a
    ld b, l
    ld [de], a
    ld b, a
    ld [de], a
    ld h, b
    ld [hl], $45
    ld [de], a
    ld b, e
    ld [de], a
    ld b, d
    ld [de], a
    ld b, h
    ld [de], a
    ld b, [hl]
    ld [de], a
    ld h, b
    ld [hl], $49
    ld [de], a
    ld h, b
    ld [de], a
    ld b, a
    ld [de], a
    ld h, b
    ld [hl], l

jr_03a_5327:
    cp $cf
    ld d, d
    rst $38
    rst $38
    rst $38
    or $02
    ldh [rTMA], a
    sub $17
    inc c
    add hl, de
    inc c
    ld a, [de]
    inc c
    ldh [rDIV], a
    ld hl, $600c

jr_03a_533d:
    inc h
    ldh [rTIMA], a
    cpl
    inc c
    cpl
    jr jr_03a_53a5

    jr jr_03a_5327

    ld b, $17
    inc c
    add hl, de
    inc c
    ld a, [de]
    inc c
    ldh [rDIV], a
    jr nz, @+$0e

    ld h, b

jr_03a_5353:
    inc h
    ldh [rTIMA], a
    ld l, $0c
    ld l, $18
    ld h, b
    jr jr_03a_533d

    ld b, $19
    inc c
    dec de
    inc c
    inc e
    inc c
    ldh [rDIV], a
    inc hl
    inc c
    ld h, b

jr_03a_5369:
    inc h
    ldh [rTIMA], a
    ld sp, $310c
    jr jr_03a_53d1

    jr jr_03a_5353

    ld b, $19
    inc c
    dec de
    inc c
    inc e
    inc c
    ldh [rDIV], a
    ld [hli], a
    inc c
    ld h, b
    inc h
    ldh [rTIMA], a
    jr nc, @+$0e

    jr nc, jr_03a_539e

    ld h, b
    jr jr_03a_5369

    ld b, $1e
    inc c
    jr nz, jr_03a_539a

    ld hl, $e00c
    inc b
    jr z, @+$0e

    ld h, b
    inc h
    ldh [rTIMA], a
    inc [hl]
    inc c

jr_03a_539a:
    ldh [rTMA], a
    rra
    inc c

jr_03a_539e:
    ld hl, $220c
    inc c
    ldh [rDIV], a
    add hl, hl

jr_03a_53a5:
    inc c
    ld h, b
    inc h
    ldh [rTIMA], a
    dec [hl]
    inc c
    inc hl
    inc c
    dec h
    inc c
    ld h, $0c
    add hl, sp
    inc c
    ldh [rDIV], a
    jr c, @+$0e

    scf
    inc c
    ld [hl], $0c
    ldh [rP1], a
    push de
    dec [hl]
    ld [$9460], sp
    cp $2f
    ld d, e
    rst $38
    or $02
    ret nc

    jr nz, @+$18

    ldh [rTIMA], a
    db $d3
    rla
    inc c

jr_03a_53d1:
    add hl, de
    inc c
    ld a, [de]
    inc c
    ldh [rDIV], a
    ld hl, $600c
    ld c, $d6
    ldh [$03], a
    add hl, hl
    inc c
    add hl, hl
    jr jr_03a_5443

    ld l, $d3
    ldh [rTIMA], a
    rla
    inc c
    add hl, de
    inc c
    ld a, [de]
    inc c
    ldh [rDIV], a
    jr nz, jr_03a_53fd

    ld h, b
    ld c, $d6
    ldh [$03], a
    jr z, jr_03a_5404

    jr z, @+$1a

    ld h, b
    ld l, $d3

jr_03a_53fd:
    ldh [rTIMA], a
    add hl, de
    inc c
    dec de
    inc c
    inc e

jr_03a_5404:
    inc c
    ldh [rDIV], a
    inc hl
    inc c
    ld h, b
    ld c, $d6
    ldh [$03], a
    dec hl
    inc c
    dec hl
    jr jr_03a_5473

    ld l, $d3
    ldh [rTIMA], a
    add hl, de
    inc c
    dec de
    inc c
    inc e
    inc c
    ldh [rDIV], a
    ld [hli], a
    inc c
    ld h, b
    ld c, $d6
    ldh [$03], a
    ld a, [hli]
    inc c
    ld a, [hli]
    jr jr_03a_548b

    ld l, $d3
    ldh [rTIMA], a
    ld e, $0c
    jr nz, @+$0e

    ld hl, $e00c
    inc b
    jr z, jr_03a_5445

    ld h, b
    ld c, $d6
    ldh [$03], a
    ld l, $0c
    ld h, b
    ld d, $d3

jr_03a_5443:
    ldh [rTIMA], a

jr_03a_5445:
    rra
    inc c
    ld hl, $220c
    inc c
    ldh [rDIV], a
    add hl, hl
    inc c
    ld h, b
    ld c, $d6
    ldh [$03], a
    cpl
    inc c
    ld h, b
    ld d, $d3
    ldh [rDIV], a
    inc hl
    inc c
    dec h
    inc c
    ld h, $02
    sub $e0
    inc b
    dec [hl]
    inc c
    inc [hl]
    inc c
    inc sp
    inc c
    ldh [rP1], a
    push de
    ld [hl-], a
    ld [$9460], sp
    cp $c9

jr_03a_5473:
    ld d, e
    rst $38
    or $00
    db $db
    add hl, sp
    ld b, $d1
    add hl, sp
    inc b
    db $db
    ld a, [hl-]
    ld b, $d1
    ld a, [hl-]
    inc bc
    db $db
    dec sp
    ld b, $d1
    dec sp
    ld [bc], a
    db $db
    inc a

jr_03a_548b:
    ld b, $d1
    inc a
    ld [bc], a
    db $db
    dec a
    ld b, $d1
    dec a
    ld [bc], a
    db $db
    ldh [rP1], a
    ld sp, hl
    pop hl
    ld a, $52
    rst $38
    or $00
    call c, $0630
    pop de
    jr nc, jr_03a_54a9

    call c, $0631
    pop de

jr_03a_54a9:
    ld sp, $dc03
    ld [hl-], a
    ld b, $d1
    ld [hl-], a
    ld [bc], a
    call c, $0633
    pop de
    inc sp
    ld [bc], a
    call c, $0634
    pop de
    inc [hl]
    ld [bc], a
    call c, $00e0
    ld sp, hl
    pop hl
    dec [hl]
    ld d, d
    rst $38
    or $0a
    dec e
    ld b, $60
    inc b
    ld e, $06
    ld h, b
    inc bc
    rra
    ld b, $60
    ld [bc], a
    jr nz, jr_03a_54db

    ld h, b
    ld [bc], a
    ld hl, $6006
    ld [bc], a

jr_03a_54db:
    ld [hli], a
    ld c, e
    rst $38
    ret nc

    jr nc, jr_03a_54fc

    push de
    jr nc, jr_03a_54e8

    ret nc

    jr nc, jr_03a_54eb

    db $d3

jr_03a_54e8:
    jr nc, @+$06

    ret nc

jr_03a_54eb:
    jr nc, jr_03a_54f1

    jp nc, Jump_03a_5230

    rst $38

jr_03a_54f1:
    or $02
    ret c

    dec sp
    inc b
    sub $40
    ld bc, $45db
    inc b

jr_03a_54fc:
    push de
    dec sp
    inc b
    call nc, $0140
    sub $45
    inc b
    db $d3
    dec sp
    inc b
    jp nc, $0140

    call nc, $0445
    pop de
    dec sp
    inc b
    pop de
    ld b, b
    ld bc, $45d2
    inc b
    pop de
    dec sp
    inc b
    ld b, b
    ld bc, $45d1
    inc b
    rst $38
    or $02
    rst JumpTable
    ldh [rSB], a
    ld b, d
    ld [$0841], sp
    ld a, $08
    dec sp
    ld [$0837], sp
    ccf
    ld [$0843], sp
    ldh [rSB], a
    ld b, a
    rrca
    rst $38
    or $01
    db $db
    jr nc, jr_03a_5547

    ld sp, $320a
    ld a, [bc]
    inc sp
    ld [hl-], a
    rst $38
    or $01
    reti


jr_03a_5547:
    add hl, sp
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    dec sp
    ld a, [bc]
    inc a
    ld [hl-], a
    rst $38
    or $01
    add hl, hl
    ld a, [bc]
    ld a, [hli]
    ld a, [bc]
    dec hl
    ld a, [bc]
    inc l
    ld [hl-], a
    rst $38
    ldh a, [rP1]
    nop
    ld d, b
    rst $38
    or $02
    db $db
    dec hl
    ld [bc], a
    cpl
    ld [bc], a
    ld l, $02
    jr nc, @+$04

    jp c, $022f

    ld sp, $3002
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    reti


    ld sp, $3302
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    inc [hl]
    ld [bc], a
    ret c

    inc sp
    ld [bc], a
    dec [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld [hl], $02
    rst AddAToHL
    dec [hl]
    ld [bc], a
    scf
    ld [bc], a
    sub $36
    ld [bc], a
    jr c, jr_03a_5592

    push de
    scf

jr_03a_5592:
    ld [bc], a
    add hl, sp
    ld [bc], a
    call nc, $0238
    db $d3
    ld a, [hl-]
    ld [bc], a
    jp nc, $023c

    pop de
    ld b, c
    ld [bc], a
    rst $38
    or $00
    db $dd
    ld d, b
    ld bc, $60d0
    inc bc
    db $db
    ldh [rSB], a
    ld d, h
    ld a, [bc]
    rst $38
    or $02
    db $dd
    pop hl
    nop
    ld hl, sp-$0c
    ld a, $0a
    ld hl, sp+$00
    ret c

    ldh [rSB], a
    ld hl, sp-$20
    jr nc, jr_03a_55ca

    rst $38
    or $02
    db $dd
    ld hl, sp+$7f
    db $10
    dec b

jr_03a_55ca:
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp-$7f
    add hl, de
    dec b
    rst $38
    or $02
    call c, $02e0
    ld hl, sp+$10
    ld h, $14
    rst $38
    or $00
    db $dd
    ld hl, sp-$7f
    add hl, hl
    inc b
    ld hl, sp+$00
    call c, $0213
    sbc $f8
    ld a, a
    inc de
    rlca
    rst $38
    or $02
    reti


    ld [hl-], a
    ld bc, $0137
    ld a, $01
    rst $38
    or $00
    reti


    ldh [rSB], a
    ld b, [hl]
    ld a, [bc]
    rst $38
    or $02
    reti


    ld hl, sp-$0a
    dec l
    inc d
    ld hl, sp+$00
    jp nc, $f4f8

    dec l
    inc d
    rst $38
    or $01
    sbc $1b
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $1bde
    ld [bc], a
    ret nc

    ld h, b
    ld a, [bc]
    sbc $1b
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $1bde
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $1bde
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $1bde
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $1bde
    ld [bc], a
    rst $38
    or $02
    ldh [rSC], a
    db $dd
    ld b, d
    db $10
    db $db
    ld a, $12
    scf
    inc d
    db $dd
    ld b, e
    jr @+$01

    or $02
    ldh [rSC], a
    ret nc

    ld h, b
    ld [$41dc], sp
    db $10
    db $db
    dec sp
    inc de
    call c, $163f
    ldh [rSC], a
    sbc $47
    inc hl
    rst $38
    or $01
    db $dd
    ld c, e
    inc b
    ret nc

    ld h, b
    ld bc, $4ddd
    inc b
    ret nc

    ld h, b
    ld bc, $4fdd
    inc b
    ret nc

    ld h, b
    ld bc, $52dd
    inc b
    ret nc

    ld h, b
    ld [bc], a
    sub $52
    inc b
    ret nc

    ld h, b
    ld [bc], a
    jp nc, $0452

    rst $38
    rst $38
    db $fd
    db $fd
    or $2d
    ld de, $f801
    rst $20
    jr nc, jr_03a_5692

    ld hl, sp+$00
    db $fd

jr_03a_5692:
    nop
    rst $38
    or $02
    db $db
    dec sp
    ld [bc], a
    ret nc

    ld h, b
    ld [bc], a
    db $dd
    ld b, a
    inc b
    reti


    dec sp
    ld [bc], a
    ret nc

    ld h, b
    ld [bc], a
    sub $47
    inc bc
    rst $38
    or $00
    ldh [$03], a
    db $dd
    ld d, b
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $58df
    ld [bc], a
    reti


    ld d, b
    ld [bc], a
    rst AddAToHL
    ld e, b
    inc bc
    call nc, $0250
    jp nc, $0358

    rst $38
    or $00
    db $db
    ld hl, sp+$05
    ld b, a
    ld b, $f8
    nop
    call nc, $05f8
    ld b, a
    ld a, [bc]
    rst $38
    ldh a, [$f0]
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], h
    rlca
    ld [hl], l
    inc bc
    rst $38
    ldh a, [$b0]
    rla
    ld bc, $0125
    daa
    ld bc, $0135
    scf
    ld bc, $0145
    ld b, a
    ld bc, $f0ff
    ld b, b
    rlca
    ld bc, $50f0
    inc d
    ld [bc], a
    ldh a, [$60]
    ld d, $02
    ldh a, [rSVBK]
    inc h
    ld [bc], a
    ldh a, [$80]
    ld h, $02
    ldh a, [$90]
    inc [hl]
    ld [bc], a
    ldh a, [$a0]
    dec [hl]
    ld [bc], a
    ldh a, [$b0]
    ld [hl], $02
    ldh a, [$b0]
    scf
    ld [bc], a
    ldh a, [$a0]
    ld [hl], $02
    ldh a, [$90]
    dec [hl]
    ld [bc], a
    ldh a, [$80]
    inc [hl]
    ld [bc], a
    ldh a, [rSVBK]
    ld h, $02
    ldh a, [$60]
    inc h
    ld [bc], a
    ldh a, [$50]
    ld d, $02
    ldh a, [rLCDC]
    inc d
    ld [bc], a
    ldh a, [$30]
    rlca
    ld bc, $f0ff
    ldh a, [$37]
    ld bc, $f0f0
    ld h, h
    ld [bc], a
    ldh a, [rP1]
    nop
    inc b
    ldh a, [$f0]
    ld b, h
    ld bc, $b0f0
    ld b, h
    ld [bc], a
    rst $38
    ldh a, [$60]
    inc [hl]
    inc b
    ldh a, [rP1]
    nop
    ld [bc], a
    ldh a, [$50]
    ld b, $04
    ldh a, [rP1]
    nop
    ld [bc], a
    ldh a, [rLCDC]
    ld b, $04
    ldh a, [rP1]
    nop
    ld [bc], a
    ldh a, [$30]
    ld b, $04
    ldh a, [rP1]
    nop
    ld [bc], a
    ldh a, [rNR41]
    ld b, $04
    rst $38
    ldh a, [$71]
    inc h
    inc b
    ldh a, [rP1]
    nop
    ld [$61f0], sp
    dec h
    inc b
    ldh a, [rP1]
    nop
    ld [$42f0], sp
    daa
    inc b
    ldh a, [rP1]
    nop
    ld [$24f0], sp
    inc [hl]
    inc b
    rst $38
    ldh a, [$c0]
    inc h
    inc bc
    dec h
    ld bc, $0126
    inc [hl]
    ld bc, $0136
    scf
    ld bc, $0244
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, a
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, h
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, a
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    ld [bc], a
    ld h, h
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, [hl]
    ld [bc], a
    ld h, a
    ld [bc], a
    ld [hl], h
    ld [bc], a
    ld h, a
    ld bc, $c7f0
    ld h, [hl]
    inc b
    ld h, h
    ld b, $66
    ld b, $74
    ld b, [hl]
    rst $38
    ldh a, [rNR41]
    ld d, $02
    ldh a, [$50]
    dec h
    ld bc, $80f0
    inc [hl]
    ld bc, $c0f0
    scf
    ld bc, $f0f0
    ld b, h
    ld bc, $f6ff
    nop
    db $dd
    ld hl, sp+$00
    ldh [rSB], a
    ld c, b
    rrca
    sub $e0
    ld [bc], a
    ld c, b
    rrca
    rst $38
    or $00
    ret nc

    ld hl, sp+$00
    ldh [rP1], a
    ld c, b
    ld bc, $f8df
    nop
    ldh [rSB], a
    inc c
    ld bc, $f8de
    nop
    ldh [rSB], a
    ld c, b
    ld bc, $48d0
    ld [bc], a
    rst $38
    ldh a, [rNR10]
    ld h, $01
    ldh a, [rSVBK]
    inc h
    ld bc, $00f0
    ld [hl], $01
    rst $38
    ldh a, [$30]
    daa
    ld bc, $60f0
    daa
    ld bc, $90f0
    rla
    ld bc, $c0f0
    rla
    ld bc, $f0f0
    rlca
    ld bc, $f0ff
    jr nz, jr_03a_58ba

    ld bc, $20f0
    ld b, [hl]
    ld bc, $30f0
    ld b, l
    ld bc, $40f0
    ld b, h
    ld bc, $50f0
    scf
    ld bc, $70f0
    dec [hl]
    ld bc, $90f0
    daa
    ld bc, $b0f0
    ld h, $01
    ldh a, [$c0]
    dec h
    ld bc, $f0ff
    db $d3
    scf
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, $0154
    ld d, l
    ld bc, $0156
    ld d, a
    ld [bc], a
    ld d, [hl]
    ld bc, $0155
    ld d, h
    ld bc, $0447
    ld b, [hl]
    inc bc
    ldh a, [rNR41]
    ld d, l
    inc b
    ld d, h
    inc b
    ld b, a

jr_03a_58ba:
    inc b
    ld b, [hl]
    inc b
    rst $38
    or $01
    rst JumpTable
    db $e3
    nop
    ld hl, sp+$23
    jr @+$18

    rst $38
    or $02
    rst JumpTable
    db $e3
    nop
    ld hl, sp+$2c
    inc c
    ld d, $ff
    or $02
    db $dd
    pop hl
    nop
    ld hl, sp-$2d
    dec hl
    add hl, bc
    rst $38
    or $01
    db $dd
    pop hl
    nop
    ld hl, sp-$20
    dec hl
    add hl, bc
    rst $38
    or $00
    pop de
    ld c, h
    ld bc, $014f
    ld d, d
    ld bc, $4cd1
    ld bc, $014f
    ld d, d
    ld bc, $4cd1
    ld bc, $014f
    ld d, d
    ld bc, $4cd1
    ld bc, $014f
    ld d, d
    ld bc, $f8d2
    ld bc, HeaderMaskROMVersion
    ld c, a
    ld bc, $0152
    jp nc, HeaderMaskROMVersion

    ld c, a
    ld bc, $0152
    jp nc, HeaderMaskROMVersion

    ld c, a
    ld bc, $0152
    jp nc, HeaderMaskROMVersion

    ld c, a
    ld bc, $0152
    ld hl, sp+$00
    db $d3
    ld hl, sp+$03
    ld c, h
    ld bc, $014f
    ld d, d
    ld bc, $4dd3
    ld bc, $014f
    ld d, d
    ld bc, $4dd3
    ld bc, $014f
    ld d, d
    ld bc, $4dd3
    ld bc, $014f
    ld d, d
    ld bc, $00f8
    call nc, $05f8
    ld c, l
    ld bc, $0150
    ld d, d
    ld bc, $4dd4
    ld bc, $0150
    ld d, d
    ld bc, $4dd4
    ld bc, $0150
    ld d, d
    ld bc, $4dd4
    ld bc, $0150
    ld d, d
    ld bc, $00f8
    sub $f8
    rlca
    ld c, l
    ld bc, $0150
    ld d, e
    ld bc, $4dd5
    ld bc, $0150
    ld d, e
    ld bc, $4dd5
    ld bc, $0150
    ld d, e
    ld bc, $4dd5
    ld bc, $0150
    ld d, e
    ld bc, $00f8
    ret c

    ld hl, sp+$09
    ld c, [hl]
    ld bc, $0150
    ld d, e
    ld bc, $4ed6
    ld bc, $0150
    ld d, e
    ld bc, $4ed6
    ld bc, $0150
    ld d, e
    ld bc, $4ed6
    ld bc, $0150
    ld d, e
    ld bc, $00f8
    reti


    ld hl, sp+$0b
    ld c, [hl]
    ld bc, $0151
    ld d, e
    ld bc, $4ed7
    ld bc, $0151
    ld d, e
    ld bc, $4ed7
    ld bc, $0151
    ld d, e
    ld bc, $4ed7
    ld bc, $0151
    ld d, e
    ld bc, $00f8
    jp c, $0df8

    ld c, [hl]
    ld bc, $0151
    ld d, h
    ld bc, $4ed8
    ld bc, $0151
    ld d, h
    ld bc, $4ed8
    ld bc, $0151
    ld d, h
    ld bc, $4ed8
    ld bc, $0151
    ld d, h
    ld bc, $00f8
    db $db
    ld hl, sp+$0e
    ld c, a
    ld bc, $0151
    ld d, h
    ld bc, $4fd9
    ld bc, $0151
    ld d, h
    ld bc, $4fd9
    ld bc, $0151
    ld d, h
    ld bc, $4fd9
    ld bc, $0151
    ld d, h
    ld bc, $00f8
    call c, $0ff8
    ld c, a
    ld bc, $0152
    ld d, h
    ld bc, $4fda
    ld bc, $0152
    ld d, h
    ld bc, $4fda
    ld bc, $0152
    ld d, h
    ld bc, $4fda
    ld bc, $0152
    ld d, h
    ld bc, $00f8
    db $dd
    ld hl, sp+$10
    ld c, a
    ld bc, $0152
    ld d, l
    ld bc, $4fdb
    ld bc, $0153
    ld d, l
    ld bc, $4fdb
    ld bc, $0153
    ld d, l
    ld bc, $4fdb
    ld bc, $0153
    ld d, l
    ld bc, $00f8
    db $db
    ld c, a
    ld bc, $0153
    ld d, l
    ld bc, $f6ff
    nop
    db $dd
    dec sp
    ld bc, $31d8
    ld bc, $012e
    jr c, @+$03

    ld l, $01
    inc l
    ld bc, $0135
    inc l
    ld bc, $012b
    inc sp
    ld bc, $012b
    add hl, hl
    ld bc, $3bd9
    ld bc, $31d5
    ld bc, $012e
    jr c, @+$03

    ld l, $01
    inc l
    ld bc, $0135
    inc l
    ld bc, $012b
    inc sp
    ld bc, $012b
    add hl, hl
    ld bc, $3bd6
    ld bc, $31d3
    ld bc, $012e
    jr c, @+$03

    ld l, $01
    inc l
    ld bc, $0135
    inc l
    ld bc, $012b
    inc sp
    ld bc, $012b
    add hl, hl
    ld bc, $3bd3
    ld bc, $31d2
    ld bc, $012e
    jr c, @+$03

    ld l, $01
    inc l
    ld bc, $0135
    inc l
    ld bc, $012b
    inc sp
    ld bc, $012b
    add hl, hl
    ld bc, $3bd1
    ld bc, $31d1
    ld bc, $012e
    jr c, @+$03

    ld l, $01
    inc l
    ld bc, $0135
    inc l
    ld bc, $012b
    inc sp
    ld bc, $012b
    add hl, hl
    ld bc, $f6ff
    inc bc
    ld sp, hl
    ld [$36d9], sp
    dec b
    add hl, sp
    dec b
    inc a
    dec b
    reti


    dec [hl]
    dec b
    jr c, jr_03a_5ae6

    dec sp
    dec b
    reti


    inc [hl]
    dec b

jr_03a_5ae6:
    scf
    dec b
    ld a, [hl-]
    dec b
    reti


    inc sp
    dec b
    ld [hl], $05
    add hl, sp
    dec b
    reti


    ld [hl-], a
    dec b
    dec [hl]
    dec b
    jr c, jr_03a_5afd

    reti


    ld sp, $3405
    dec b

jr_03a_5afd:
    scf
    dec b
    reti


    jr nc, jr_03a_5b07

    inc sp
    dec b
    ld [hl], $05
    reti


jr_03a_5b07:
    cpl
    dec b
    ld [hl-], a
    dec b
    dec [hl]
    dec b
    db $d3
    ld a, [hli]
    ld [bc], a
    rst $38
    or $03
    inc a
    ld [bc], a
    dec sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    dec sp
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    jr c, jr_03a_5b25

    add hl, sp
    ld [bc], a

jr_03a_5b25:
    ld a, [hl-]
    ld [bc], a
    add hl, sp
    ld [bc], a
    scf
    ld [bc], a
    jr c, jr_03a_5b2f

    add hl, sp
    ld [bc], a

jr_03a_5b2f:
    jr c, jr_03a_5b33

    ld [hl], $02

jr_03a_5b33:
    scf
    ld [bc], a
    jr c, jr_03a_5b39

    scf
    ld [bc], a

jr_03a_5b39:
    dec [hl]
    ld [bc], a
    ld [hl], $02
    scf
    ld [bc], a
    ld [hl], $02
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    ld [hl], $02
    dec [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    inc sp
    ld [bc], a
    inc [hl]
    ld [bc], a
    inc sp
    ld [bc], a
    rst $38
    or $02
    jp nc, $0241

    or $02
    db $db
    ld b, c
    ld bc, $f0ff
    inc a
    rst JumpTable
    inc b
    ld d, $01
    rst JumpTable
    ld b, $0b
    ld bc, $04df
    add h
    ld bc, $06df
    ld b, d
    ld bc, $04df
    push hl
    ld bc, $06df
    ld [hl], e
    ld bc, $05df
    inc a
    ld bc, $06df
    sbc [hl]
    ld bc, $05df
    adc d
    ld bc, $06df
    push bc
    ld bc, $05df
    adc $01
    rst JumpTable
    ld b, $e7
    ld bc, $05df
    xor h
    ld bc, $06df
    sub $01
    rst JumpTable
    dec b
    adc d
    ld bc, $06df
    push bc
    ld bc, $05df
    ld h, h
    ld bc, $06df
    or d
    ld bc, $05df
    inc a
    ld bc, $06df
    sbc [hl]
    ld bc, $05df
    ld [de], a
    ld bc, $06df
    adc c
    ld bc, $04df
    push hl
    ld bc, $06df
    ld [hl], e
    ld bc, $04df
    or [hl]
    ld bc, $06df
    ld e, e
    ld bc, $04df
    add h
    ld bc, $06df
    ld b, d
    ld bc, $04df
    ld c, a
    ld bc, $06df
    daa
    ld bc, $03df
    sbc e
    ld bc, $05df
    adc $01
    sub $05
    xor h
    ld bc, $06d6
    sub $01
    sub $05
    adc d
    ld bc, $06d6
    push bc
    ld bc, $05d6
    ld h, h
    ld bc, $06d6
    or d
    ld bc, $05d6
    inc a
    ld bc, $06d6
    sbc [hl]
    ld bc, $05d6
    ld [de], a
    ld bc, $06d6
    adc c
    ld bc, $04d6
    push hl
    ld bc, $06d6
    ld [hl], e
    ld bc, $04d6
    or [hl]
    ld bc, $06d6
    ld e, e
    ld bc, $04d6
    add h
    ld bc, $06d6
    ld b, d
    ld bc, $04d6
    ld c, a
    ld bc, $06d6
    daa
    ld bc, $03d6
    sbc e
    ld bc, $05d6
    adc $01
    rst $38
    ldh a, [$f1]
    ld h, h
    ld bc, $f1f0
    ld d, [hl]
    ld bc, $f1f0
    ld b, a
    ld [bc], a
    ldh a, [$f1]
    ld d, h
    inc bc
    ldh a, [$f1]
    ld d, l
    inc b
    ldh a, [$c0]
    ld d, [hl]
    inc b
    ldh a, [$85]
    ld d, [hl]
    ld a, [bc]
    ldh a, [$65]
    ld d, [hl]
    ld a, [bc]
    ldh a, [rLYC]
    ld d, [hl]
    ld a, [bc]
    ldh a, [rNR51]
    ld d, [hl]
    ld a, [bc]
    rst $38
    or $01
    ret nc

    ld h, b
    ld [bc], a
    sub $24
    ld bc, $0ff8
    inc h
    dec b
    ld hl, sp+$00
    rst $38
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$b0]
    ld b, [hl]
    ld bc, HeaderCartridgeType
    ld d, h
    ld bc, $0155
    ld d, [hl]
    ld bc, $0157
    ldh a, [rP1]
    nop
    ld bc, $60f0
    inc h
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    dec b
    ldh a, [rNR41]
    inc h
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    dec b
    rst $38
    ldh a, [$60]
    ld h, l
    ld [bc], a
    ldh a, [$80]
    ld h, l
    ld [bc], a
    ldh a, [$a0]
    ld h, l
    ld [bc], a
    ldh a, [$b0]
    ld h, l
    ld [bc], a
    ldh a, [$d0]
    ld h, l
    ld [bc], a
    ldh a, [$50]
    ld d, l
    dec b
    ldh a, [$d0]
    ld h, l
    inc bc
    ld d, a
    ld [bc], a
    ldh a, [$d0]
    ld d, l
    dec b
    ldh a, [$d0]
    ld h, l
    inc b
    rst $38
    ldh a, [$30]
    ld h, a
    ld bc, $40f0
    ld h, [hl]
    ld bc, $50f0
    ld h, l
    ld bc, $60f0
    ld h, h
    ld bc, $70f0
    ld d, a
    ld bc, $80f0
    ld d, l
    ld bc, $90f0
    ld d, h
    ld bc, $a1f0
    ld b, a
    ld bc, $a0f0
    ld b, [hl]
    ld bc, $0145
    ld b, [hl]
    ld bc, HeaderCartridgeType
    ld d, l
    ld bc, $80f0
    ld d, a
    ld bc, $0164
    ldh a, [$50]
    ld h, l
    ld [bc], a
    ld h, [hl]
    ld [bc], a
    rst $38
    or $01
    ld sp, hl
    dec bc
    call c, $36f8
    jr @+$0a

    ld hl, sp+$00
    reti


    jr c, jr_03a_5d06

    cpl

jr_03a_5d06:
    ld bc, $f8d9
    jr jr_03a_5d2a

    ld b, $f8
    nop
    rst AddAToHL
    jr c, jr_03a_5d12

    cpl

jr_03a_5d12:
    ld bc, $f8d7
    jr jr_03a_5d36

    ld b, $f8
    nop
    rst AddAToHL
    jr c, jr_03a_5d1e

    cpl

jr_03a_5d1e:
    ld bc, $f0ff
    sub c
    ld b, h
    ld bc, $70f0
    ld [hl], $01
    ldh a, [rP1]

jr_03a_5d2a:
    nop
    ld bc, $91f0
    daa
    ld bc, $61f0
    dec [hl]
    ld [bc], a
    ldh a, [rNR41]

jr_03a_5d36:
    ld b, h
    inc bc
    ldh a, [$91]
    ld b, h
    ld bc, $70f0
    ld [hl], $01
    ldh a, [rP1]
    nop
    ld bc, $91f0
    daa
    ld bc, $61f0
    dec [hl]
    ld [bc], a
    ldh a, [rNR52]
    ld b, h
    inc c
    rst $38
    or $00
    rst JumpTable
    rrca
    inc bc
    ret nc

    ld h, b
    ld bc, $0fdf
    ld bc, $0fdf
    ld [bc], a
    ret nc

    ld h, b
    ld bc, $e0df
    ld bc, $0a0c
    rst $38
    ldh a, [$f1]
    ld d, l
    inc bc
    ldh a, [rSB]
    ld d, l
    ld bc, $f1f0
    dec [hl]
    ld bc, $f1f0
    ld b, [hl]
    ld [bc], a
    ldh a, [rSB]
    ld d, l
    ld bc, $f1f0
    ld [hl], $01
    ldh a, [$f6]
    ld d, l
    ld a, [bc]
    ldh a, [$96]
    ld d, a
    ld b, [hl]
    rst $38
    or $00
    ret nc

    ld h, b
    dec b
    rst JumpTable
    inc c
    ld bc, $0dde
    ld bc, $0cdd
    ld bc, $0edc
    ld bc, $0ddb
    ld bc, $10da
    ld bc, $0cd9
    ld bc, $0ed8
    ld bc, $0dd7
    ld bc, $0fd6
    ld bc, $0cd5
    ld bc, $0fd4
    ld bc, $0dd3
    ld bc, $0fd2
    ld bc, $f0ff
    pop af
    ld d, d
    ld bc, $0356
    ldh a, [rSB]
    nop
    ld bc, $f1f0
    ld d, d
    ld bc, $0356
    ld h, h
    inc b
    ld d, a
    ld b, $f0
    ld b, e
    ld d, a
    ld e, $ff
    or $00
    sub $2f
    inc b
    ld [hl-], a
    inc b
    rst AddAToHL
    ld [hl], $04
    ld a, [hl-]
    inc b
    ret c

    dec sp
    inc b
    ld a, $04
    reti


    ld b, d
    inc b
    ld b, [hl]
    inc b
    push de
    dec sp
    inc b
    ld a, $04
    ld b, d
    inc b
    ld b, [hl]
    inc b
    pop de
    dec sp
    inc b
    ld a, $04
    ld b, d
    inc b
    ld b, [hl]
    inc b
    rst $38
    or $02

jr_03a_5dfd:
    rst JumpTable
    ld [c], a
    nop
    ld hl, sp+$0b
    inc de
    jr jr_03a_5dfd

    nop
    ldh [rTIMA], a
    ld hl, sp-$08
    rla
    inc sp
    ld hl, sp+$00
    rst $38
    or $02
    db $dd
    inc [hl]
    ld bc, $60d0
    inc bc
    jp c, $0139

    ret nc

    ld h, b
    inc bc
    ret c

    dec sp
    ld bc, $60d0
    inc bc
    jp c, $0139

    ret nc

    ld h, b
    inc bc
    db $dd
    inc [hl]
    ld bc, $f6ff
    ld bc, $f8d9
    ld h, h
    rla
    inc b
    ld hl, sp+$00
    db $db
    ld hl, sp+$64
    rla
    inc b
    ld hl, sp+$00
    sbc $f8
    ld h, h
    rla
    inc b
    ld hl, sp+$00
    reti


    ld hl, sp+$64
    rla
    inc b
    ld hl, sp+$00
    ret c

    ld hl, sp+$64
    rla
    inc b
    ld hl, sp+$00
    rst AddAToHL
    ld hl, sp+$64
    rla
    inc b
    ld hl, sp+$00
    sub $f8
    ld h, h
    rla
    inc b
    ld hl, sp+$00
    push de
    ld hl, sp+$64
    rla
    inc b
    ld hl, sp+$00
    call nc, Call_03a_64f8
    rla
    inc b
    ld hl, sp+$00
    db $d3
    ld hl, sp+$64
    rla
    inc b
    ld hl, sp+$00
    cp $2f
    ld e, [hl]
    rst $38
    or $02
    db $dd
    inc h
    ld bc, $0130
    rra
    ld bc, $012b
    jr nc, jr_03a_5e87

    inc h

jr_03a_5e87:
    ld bc, $012e
    ld [hli], a
    ld bc, $012d
    ld hl, $2b01
    ld bc, $011f
    add hl, hl
    ld bc, $011d
    daa
    ld bc, $011b
    db $db
    dec h
    ld bc, $19da
    ld bc, $23d9
    ld bc, $17d8
    ld bc, $0cd5
    ld bc, $0118
    inc c
    ld bc, $0118
    inc c
    ld bc, $0118
    inc c
    ld bc, $0118
    inc c
    ld bc, $0118
    inc c
    ld bc, $0118
    inc c
    ld bc, $0118
    inc c
    ld bc, $0118
    rst $38
    or $00
    rst JumpTable
    jr jr_03a_5ed0

    ret nc

jr_03a_5ed0:
    ld h, b
    ld bc, $18df
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $1adf
    ld bc, $60d0
    ld bc, $1adf
    ld bc, $60d0
    ld bc, $1bdf
    ld bc, $60d0
    ld bc, $1bdf
    ld bc, $60d0
    ld bc, $1cdf
    ld bc, $60d0
    ld bc, $1cdf
    ld bc, $60d0
    ld bc, $1ddf
    ld bc, $60d0
    ld bc, $1ddf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1fdf
    ld bc, $60d0
    ld bc, $1fdf
    ld bc, $60d0
    ld bc, $1fdf
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $21df
    ld bc, $60d0
    ld bc, $21df
    ld bc, $60d0
    ld bc, $20df
    ld bc, $60d0
    ld bc, $20df
    ld bc, $60d0
    ld bc, $1fdf
    ld bc, $60d0
    ld bc, $1fdf
    ld bc, $60d0
    ld bc, $1fdf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1edf
    ld bc, $60d0
    ld bc, $1ddf
    ld bc, $60d0
    ld bc, $1ddf
    ld bc, $60d0
    ld bc, $1cdf
    ld bc, $60d0
    ld bc, $1cdf
    ld bc, $60d0
    ld bc, $1bdf
    ld bc, $60d0
    ld bc, $1bdf
    ld bc, $60d0
    ld bc, $1adf
    ld bc, $60d0
    ld bc, $1adf
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $17df
    ld bc, $60d0
    ld bc, $17df
    ld bc, $60d0
    ld bc, $16df
    ld bc, $60d0
    ld bc, $16df
    ld bc, $60d0
    ld bc, $1fd3
    ld bc, $60d0
    ld bc, $1ed3
    ld bc, $60d0
    ld bc, $1dd3
    ld bc, $60d0
    ld bc, $1cd3
    ld bc, $60d0
    ld bc, $1bd3
    ld bc, $60d0
    ld bc, $1ad3
    ld bc, $60d0
    ld bc, $19d3
    ld bc, $60d0
    ld bc, $18d3
    ld bc, $60d0
    ld bc, $17d3
    ld bc, $60d0
    ld bc, $16d3
    ld bc, $60d0
    ld bc, $f0ff
    ldh a, [rP1]
    ld bc, $80f0
    inc h
    ld [bc], a
    ldh a, [$f0]
    nop
    ld [bc], a
    ldh a, [$80]
    dec d
    ld bc, $0217
    ldh a, [$f0]
    ld [bc], a
    ld [bc], a
    ldh a, [$a0]
    ld h, $02
    inc d
    ld bc, $0217
    ldh a, [$f0]
    ld h, $01
    daa
    ld bc, $0435
    inc h
    inc bc
    ld h, $03
    dec h
    inc b
    dec [hl]
    ld [bc], a
    ldh a, [$f2]
    ld [hl], $02
    scf
    dec b
    ld [hl], $01
    ld b, h
    ld [bc], a
    inc [hl]
    ld bc, $0155
    ld [hl], $03
    ld b, h
    ld bc, $0337
    ld b, [hl]
    ld [bc], a
    ld b, h
    ld bc, $0237
    ld b, a
    ld [bc], a
    ld d, h
    ld bc, $f0ff
    ld b, b
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $60f0
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $80f0
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $90f0
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $b0f0
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $90f0
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $70f0
    scf
    ld bc, $0136
    dec [hl]
    ld bc, HeaderTitle
    daa
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $56f0
    ld [hl], $03
    dec [hl]
    inc bc
    inc [hl]
    inc bc
    daa
    add hl, de
    rst $38
    or $00
    reti


    ld hl, sp+$7f
    ld a, [de]
    inc bc
    ld hl, sp+$00
    ld hl, sp-$7f
    ld hl, $f803
    nop
    rst JumpTable
    ld hl, sp-$11
    dec d
    ld [hl-], a
    rst $38
    ldh a, [rLCDC]
    ld b, h
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ldh a, [rLCDC]
    ld b, [hl]
    jr z, jr_03a_61ac

    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    ld [bc], a
    rst $38
    or $00
    call c, $20f8
    dec l
    ld bc, $00f8
    rst AddAToHL
    jr nc, jr_03a_617c

    inc sp

jr_03a_617c:
    ld bc, $31d6
    ld bc, HeaderTitle
    push de
    ld sp, $3401
    ld bc, $31d4
    ld bc, HeaderTitle
    db $d3
    ld [hl-], a
    ld bc, $0135
    jp nc, $0132

    dec [hl]
    ld bc, $33d1
    ld bc, $0136
    rst $38
    ldh a, [$f0]
    inc [hl]
    ld bc, $e0f0
    inc [hl]
    ld bc, $b5f0
    inc h
    ld bc, $0224
    inc h
    ld [bc], a

jr_03a_61ac:
    rla
    ld [bc], a
    rla
    inc bc
    ld d, $28
    rst $38
    or $00
    reti


    ld [de], a
    ld bc, $60d0
    ld bc, $16db
    ld bc, $60d0
    ld bc, $18dd
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $19df
    ld bc, $60d0
    ld bc, $18df
    ld bc, $60d0
    ld bc, $16df
    ld bc, $60d0
    ld bc, $15df
    ld bc, $60d0
    ld bc, $14df
    ld bc, $60d0
    ld bc, $13df
    ld bc, $60d0
    ld bc, $12df
    ld bc, $60d0
    ld bc, $11df
    ld bc, $60d0
    ld bc, $10df
    ld bc, $60d0
    ld bc, $0fdf
    ld bc, $60d0
    ld bc, $0edf
    ld bc, $60d0
    ld bc, $0ddf
    ld bc, $60d0
    ld bc, $0cdf
    ld bc, $60d0
    ld bc, $12d5
    ld bc, $60d0
    ld bc, $16d5
    ld bc, $60d0
    ld bc, $18d5
    ld bc, $60d0
    ld bc, $19d5
    ld bc, $60d0
    ld bc, $19d5
    ld bc, $60d0
    ld bc, $19d5
    ld bc, $60d0
    ld bc, $18d5
    ld bc, $60d0
    ld bc, $16d5
    ld bc, $60d0
    ld bc, $15d5
    ld bc, $60d0
    ld bc, $14d5
    ld bc, $60d0
    ld bc, $13d5
    ld bc, $60d0
    ld bc, $12d5
    ld bc, $60d0
    ld bc, $11d5
    ld bc, $60d0
    ld bc, $10d5
    ld bc, $60d0
    ld bc, $0fd5
    ld bc, $60d0
    ld bc, $0ed5
    ld bc, $60d0
    ld bc, $0dd5
    ld bc, $60d0
    ld bc, $0cd5
    ld bc, $60d0
    ld bc, $f6ff
    nop
    ldh a, [$df]
    rlca
    ret c

    dec b
    db $dd
    rlca
    sbc $03
    rst AddAToHL
    rlca
    pop hl
    inc bc
    push de
    rlca
    db $e3
    dec b
    db $db
    rlca
    ret c

    dec b
    reti


    rlca
    sbc $03
    sub $07
    pop hl
    inc bc
    call nc, $e307
    dec b
    reti


    rlca
    ret c

    dec b
    ret c

    rlca
    sbc $03
    push de
    rlca
    pop hl
    inc bc
    db $d3
    rlca
    db $e3
    dec b
    jp nc, $d807

    dec b
    pop de
    ldh [$03], a
    rlca
    sbc $04
    rst $38
    or $02
    ldh a, [$d9]
    rlca
    and b
    inc bc
    pop de
    rlca
    and b
    dec b
    rst $38
    or $02
    rst JumpTable
    ld hl, sp-$32
    dec d
    ld b, $f8
    nop
    sbc $f8
    ld d, b
    ld de, $f806
    nop
    jp c, $cef8

    dec d
    ld b, $f8
    nop
    ret c

    ld hl, sp+$50
    ld de, $f806
    nop
    rst AddAToHL
    ld hl, sp-$32
    dec d
    ld b, $f8
    nop
    sub $f8
    ld d, b
    ld de, $f806
    nop
    push de
    ld hl, sp-$32
    dec d
    ld b, $f8
    nop
    call nc, Call_03a_50f8
    ld de, $f806
    nop
    db $d3
    ldh [$03], a
    ld hl, sp-$32
    dec d
    ld b, $f8
    nop
    rst $38
    or $02
    rst AddAToHL
    dec l
    ld bc, $022f
    rst AddAToHL
    ld l, $01
    jr nc, jr_03a_632a

    rst AddAToHL
    cpl

jr_03a_632a:
    ld bc, $0231
    rst AddAToHL
    jr nc, jr_03a_6331

    ld [hl-], a

jr_03a_6331:
    ld [bc], a
    sub $31
    ld bc, $0233
    push de
    ld [hl-], a
    ld bc, $0234
    call nc, $0133
    dec [hl]
    ld [bc], a
    db $d3
    inc [hl]
    ld bc, $0236
    jp nc, $013c

    ld b, d
    ld bc, $60d0
    rrca
    rst AddAToHL
    jr nc, jr_03a_6352

    ld [hl-], a

jr_03a_6352:
    ld [bc], a
    rst AddAToHL
    ld sp, $3301
    ld [bc], a
    rst AddAToHL
    ld [hl-], a
    ld bc, $0234
    rst AddAToHL
    inc sp
    ld bc, $0235
    sub $34
    ld bc, $0236
    push de
    dec [hl]
    ld bc, $0237
    call nc, $0136
    jr c, jr_03a_6373

    db $d3
    scf

jr_03a_6373:
    ld bc, $0239
    jp nc, $0244

    ld c, l
    ld [bc], a
    ld c, b
    ld bc, $f6ff
    ld bc, $22d1
    ld bc, $15d1
    ld bc, $20d1
    ld bc, $23d1
    ld bc, $16d1
    ld bc, $21d1
    ld bc, $24d2
    ld bc, $17d1
    ld bc, $22d1
    ld bc, $25d3
    ld bc, $18d1
    ld bc, $23d1
    ld bc, $26d4
    ld bc, $19d2
    ld bc, $24d2
    ld bc, $27d5
    ld bc, $1ad3
    ld bc, $25d3
    ld bc, $28d6
    ld bc, $1bd4
    ld bc, $26d4
    ld bc, $29d7
    ld bc, $1cd5
    ld bc, $27d5
    ld bc, $2ad8
    ld bc, $1dd6
    ld bc, $28d6
    ld bc, $2bd9
    ld bc, $1ed7
    ld bc, $29d7
    ld bc, $2cda
    ld bc, $1fd8
    ld bc, $2ad8
    ld bc, $2ddb
    ld bc, $20d9
    ld bc, $2bd9
    ld bc, $2edc
    ld bc, $21da
    ld bc, $2cda
    ld bc, $2fdd
    ld bc, $22db
    ld bc, $2cda
    ld bc, $30de
    ld bc, $23dc
    ld bc, $2dd9
    ld bc, $31dd
    ld bc, $24db
    ld bc, $2ed8
    ld bc, $32dc
    ld bc, $25da
    ld bc, $2fd7
    ld bc, $33db
    ld bc, $26d9
    ld bc, $30d6
    ld bc, $34da
    ld bc, $27d8
    ld bc, $31d5
    ld bc, $35d9
    ld bc, $28d7
    ld bc, $32d4
    ld bc, $36d8
    ld bc, $29d6
    ld bc, $33d3
    ld bc, $37d7
    ld bc, $2ad5
    ld bc, $34d2
    ld bc, $38d6
    ld bc, $2bd4
    ld bc, $35d1
    ld bc, $39d5
    ld bc, $2cd3
    ld bc, $36d1
    ld bc, $3ad4
    ld bc, $2dd2
    ld bc, $37d1
    ld bc, $3bd3
    ld bc, $2ed1
    ld bc, $3cd2
    ld bc, $2fd1
    ld bc, $3dd1
    ld bc, $30d1
    ld bc, $3ed1
    ld bc, $ffff
    rst $38
    rst $38
    or $00
    db $d3
    ld b, a
    ld [bc], a
    ret c

    ld b, a
    ld [bc], a
    jp c, $0247

    jp c, $033b

    reti


    dec [hl]
    inc bc
    ret c

    jr nc, jr_03a_6491

    rst AddAToHL
    ld [hl], $03

jr_03a_6491:
    call nc, $0335
    call nc, $0330
    call nc, $0336
    jp nc, $0335

    jp nc, $0330

    jp nc, $0336

    rst $38
    or $00
    ldh a, [$d9]
    ld b, $0b
    ld bc, $0d06
    ld bc, $0f06
    ld bc, $1106
    ld bc, $1306
    ld bc, $1506
    ld bc, $1706
    ld bc, $1906
    ld bc, $1b06
    ld bc, $1d06
    ld bc, $1f06
    ld bc, $2106
    ld bc, $2306
    ld bc, $2506
    ld bc, $2706
    ld bc, $2806
    ld bc, $2a06
    ld bc, $2c06
    ld bc, $2e06
    ld bc, $3006
    ld bc, $3206
    ld bc, $3406
    ld bc, $3606
    ld bc, $3806
    ld bc, $3a06
    ld bc, $3c06
    ld bc, $3e06

Call_03a_64f8:
    ld bc, $4006
    ld bc, $4206
    ld bc, $4406
    ld bc, $4606
    ld bc, $4806
    ld bc, $4a06
    ld bc, $4c06
    ld bc, $4e06
    ld bc, $5006
    ld bc, $5206
    ld bc, $5406
    ld bc, $5606
    ld bc, $5806
    ld bc, $5a06
    ld bc, $5c06
    ld bc, $5e06
    ld bc, $6006
    ld bc, $6206
    ld bc, $6406
    ld bc, $6606
    ld bc, $6806
    ld bc, $6a06
    ld bc, $6c06
    ld bc, $6e06
    ld bc, $7006
    ld bc, $7206
    ld bc, $7406
    ld bc, $7606
    ld bc, $7806
    ld bc, $7a06
    ld bc, $7c06
    ld bc, $7e06
    ld bc, $8006
    ld bc, $8206
    ld bc, $8406
    ld bc, $8606
    ld bc, $8806
    ld bc, $8a06
    ld bc, $8c06
    ld bc, $8e06
    ld bc, $9006
    ld bc, $9206
    ld bc, $9406
    ld bc, $9606
    ld bc, $9806
    ld bc, $9a06
    ld bc, $9c06
    ld bc, $9e06
    ld bc, $a006
    ld bc, $a206
    ld bc, $a406
    ld bc, $a606
    ld bc, $a806
    ld bc, $aa06
    ld bc, $ac06
    ld bc, $ae06
    ld bc, $b006
    ld bc, $b206
    ld bc, $b406
    ld bc, $b606
    ld bc, $b806
    ld bc, $ba06
    ld bc, $bc06
    ld bc, $be06
    ld bc, $c006
    ld bc, $c206
    ld bc, $c406
    ld bc, $c606
    ld bc, $c806
    ld bc, $ca06
    ld bc, $cc06
    ld bc, $ce06
    ld bc, $d006
    ld bc, $d206
    ld bc, $d406
    ld bc, $d606
    ld bc, $d806
    ld bc, $da06
    ld bc, $dc06
    ld bc, $de06
    ld bc, $e006
    ld bc, $e206
    ld bc, $e406
    ld bc, $e606
    ld bc, $e806
    ld bc, $ea06
    ld bc, $ec06
    ld bc, $ee06
    ld bc, $f006
    ld bc, $f206
    ld bc, $f406
    ld bc, $f606
    ld bc, $f806
    ld bc, $f6ff
    ld bc, $04e2
    rst AddAToHL
    ld hl, sp+$09
    db $fd
    db $fc
    inc hl
    ld b, c
    ret nc

    ld h, b
    ld de, $03e3
    call nc, $f8f8
    inc [hl]
    scf
    rst $38
    ret nc

    ld h, b
    pop af
    rst $38
    ret nc

    or $02
    ld h, b
    rra
    jp nc, $053c

    ld b, c
    inc b
    ld b, e
    dec b
    ld c, b
    ld b, [hl]
    ret nc

    ld c, b
    ld c, $d2
    ld b, [hl]
    dec b
    ld c, b
    inc b
    ld b, [hl]
    dec b
    ld b, l
    ld c, $41
    ld c, $43
    inc b
    ret nc

    ld b, e
    ld a, [bc]
    jp nc, $383c

    rst $38
    or $16
    inc a
    inc b
    ld b, c
    dec b
    ld b, e
    dec b
    ld c, b
    ld b, [hl]
    ld h, b
    ld c, $46
    inc b
    ld c, b
    dec b
    ld b, [hl]
    dec b
    ld b, l
    ld c, $41
    ld c, $43
    inc bc
    ld h, b
    dec bc
    inc a
    jr c, jr_03a_66cd

    rra
    rst $38
    ldh a, [rP1]
    nop
    pop af
    rst $38
    ret nc

    ld h, b
    pop af
    rst $38
    ret nc

    ld h, b
    rra
    or $02
    jp nc, $0532

    scf
    inc b
    add hl, sp
    dec b
    inc a
    ld b, [hl]
    ld h, b
    ld c, $3b
    dec b
    inc a
    inc b
    dec sp
    dec b
    scf
    ld c, $39
    ld d, h
    rst $38
    or $16
    ld [hl-], a
    inc b
    scf
    dec b
    add hl, sp
    dec b
    inc a
    ld b, [hl]
    ld h, b
    ld c, $3b
    inc b
    inc a
    dec b
    dec sp
    dec b
    scf
    ld c, $39
    ld d, h
    ld h, b
    rra
    rst $38
    ldh a, [rP1]
    nop
    pop af
    rst $38
    ret nc

    ld h, b
    push hl
    rst $38
    ret nc

    ld h, b
    dec c
    or $02
    jp nc, $123f

    ld a, [hl-]
    ld [de], a
    ld b, [hl]
    dec de
    ld h, b
    add hl, bc
    ld b, e
    ld [de], a
    ccf
    ld [de], a
    ld c, b
    dec de
    ld h, b
    add hl, bc
    ld b, [hl]
    ld c, b

jr_03a_66cd:
    rst $38
    or $16
    ccf
    ld [de], a
    ld a, [hl-]
    ld [de], a
    ld b, [hl]
    dec de
    ld h, b
    add hl, bc
    ld b, e
    ld [de], a
    ccf
    ld [de], a
    ld c, b
    dec de
    ld h, b
    add hl, bc
    ld b, [hl]
    ld c, b
    ld h, b
    dec c
    rst $38
    ldh a, [rP1]
    nop
    push hl
    rst $38
    ret nc

    jr nz, jr_03a_66f4

    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02

jr_03a_66f4:
    sub $2b
    ld c, $60
    inc bc
    db $d3
    dec hl
    dec bc
    sub $26
    dec d
    dec hl
    rlca
    jr nc, @+$10

    cpl
    ld c, $2d
    ld c, $2b
    ld c, $2d
    inc e
    ld h, $0e
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $24
    rlca
    ld h, $2a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld h, $0e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $28
    ld c, $60
    inc bc
    db $d3
    jr z, jr_03a_6735

    sub $28
    add hl, bc
    inc h
    add hl, bc
    jr z, jr_03a_673b

    ld a, [hli]
    ld c, $60
    inc bc

jr_03a_6735:
    db $d3
    ld a, [hli]
    dec bc
    sub $2a
    add hl, bc

jr_03a_673b:
    sub $28
    add hl, bc
    ld a, [hli]
    ld a, [bc]
    dec hl
    ld c, $60
    inc bc
    db $d3
    dec hl
    dec bc
    sub $2b
    add hl, bc
    ld a, [hli]
    add hl, bc
    dec hl
    ld a, [bc]
    cpl
    ld c, $60
    rlca
    db $d3
    cpl
    rlca
    sub $2d
    ld c, $60
    rlca
    db $d3
    dec l
    rlca
    sub $32
    ld c, $60
    inc bc
    db $d3
    ld [hl-], a
    dec bc
    sub $32
    ld c, $60
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $32
    rlca
    jr nc, jr_03a_6780

    cpl
    ld c, $2d
    ld c, $2b
    ld c, $2f
    inc e
    dec l
    dec d
    dec hl
    rlca
    dec l
    ld a, [hli]

jr_03a_6780:
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec l
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $2b
    ld c, $60
    rlca
    db $d3
    dec hl
    rlca
    sub $2b
    add hl, bc
    daa
    add hl, bc
    dec hl
    ld a, [bc]
    dec l
    ld c, $60
    rlca
    db $d3
    dec l
    rlca
    sub $2d
    add hl, bc
    add hl, hl
    add hl, bc
    dec l
    ld a, [bc]
    ld l, $0e
    ld h, b
    rlca
    db $d3
    ld l, $07
    sub $2e
    add hl, bc
    dec hl
    add hl, bc
    ld l, $0a
    dec l
    ld c, $2e
    ld c, $30
    ld c, $31
    ld c, $f6
    ld bc, $0e32
    ld h, b
    rlca
    db $d3
    ld [hl-], a
    rlca
    sub $32
    ld c, $60
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $32
    rlca
    inc sp
    ld c, $32
    ld c, $30
    ld c, $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2e
    inc e
    dec l
    ld c, $60
    inc bc
    db $d3
    dec l
    inc b
    sub $2b
    rlca
    add hl, hl
    inc e
    db $d3
    add hl, hl
    inc e
    sub $2e
    ld c, $60
    rlca
    db $d3
    ld l, $07
    sub $2e
    ld c, $60
    inc bc
    db $d3
    ld l, $04
    sub $2e
    rlca
    jr nc, jr_03a_6814

    ld l, $0e
    jr nc, jr_03a_6818

    ld l, $0e
    jr nc, jr_03a_6815

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03a_681a

    ld h, b

jr_03a_6814:
    inc b

jr_03a_6815:
    sub $32
    inc bc

jr_03a_6818:
    ld h, b
    inc b

jr_03a_681a:
    ld [hl-], a
    jr c, @-$05

    ld bc, $00e0
    db $d3
    ld [hl-], a
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $34
    rlca
    ld h, b
    inc bc
    db $d3
    inc [hl]
    rlca
    ld h, b
    inc b
    pop de
    inc [hl]
    rlca
    sub $34
    rlca
    ld h, b
    inc bc
    db $d3
    inc [hl]
    rlca
    ld h, b
    inc b
    sub $34
    inc b
    ld h, b
    inc bc
    inc [hl]
    rlca
    ld h, b
    inc bc
    db $d3
    inc [hl]
    rlca
    ld h, b
    inc b
    pop de
    inc [hl]
    rlca
    sub $2d
    inc b
    cpl
    dec b
    ld sp, $3205
    inc b
    inc sp
    dec b
    inc [hl]
    dec b
    ld [hl], $07
    ld h, b
    inc bc
    db $d3
    ld [hl], $07
    ld h, b
    inc b
    pop de
    ld [hl], $07
    sub $36
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl], $07
    ld h, b
    inc b
    sub $36
    inc b
    ld h, b
    inc bc
    ld [hl], $07
    ld h, b
    inc bc
    db $d3
    ld [hl], $07
    ld h, b
    inc b
    pop de
    ld [hl], $07
    ld h, b
    inc e
    sub $37
    ld c, $60
    inc bc
    db $d3
    scf
    dec bc
    sub $37
    add hl, bc
    inc sp
    add hl, bc
    scf
    ld a, [bc]
    add hl, sp
    ld c, $60
    inc bc
    db $d3
    add hl, sp
    dec bc
    sub $39
    add hl, bc
    dec [hl]
    add hl, bc
    add hl, sp
    ld a, [bc]
    ld a, [hl-]
    ld c, $60
    inc bc
    db $d3
    ld a, [hl-]
    dec bc
    sub $3a
    add hl, bc
    scf
    add hl, bc
    ld a, [hl-]
    ld a, [bc]
    inc a
    ld c, $60
    inc bc
    db $d3
    inc a
    dec bc
    sub $3c
    add hl, bc
    add hl, sp
    add hl, bc
    inc a
    ld a, [bc]
    ld a, $07
    ld h, b
    inc bc
    db $d3
    ld a, $07
    ld h, b
    inc b
    pop de
    ld a, $07
    sub $3e
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, $07
    ld h, b
    inc b
    sub $3e
    inc bc
    ld h, b
    inc b
    ld a, $38
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, $1c
    ld h, b
    ld d, h
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $3e
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, $07
    ld h, b
    inc b
    pop de
    ld a, $07
    sub $3e
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, $07
    ld h, b
    inc b
    sub $3e
    inc bc
    ld h, b
    inc b
    ld a, $38
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, $1c
    ld h, b
    ld d, h
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    cp $f4
    ld h, [hl]
    rst $38
    ret nc

    jr nz, jr_03a_6923

    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02

jr_03a_6923:
    ld h, b
    inc e
    sub $17
    inc e
    ld a, [de]
    inc e
    rra
    inc e
    dec e
    ld sp, $071c
    ld a, [de]
    inc e
    db $d3
    ld a, [de]
    ld c, $d6
    ld hl, $2007
    rlca
    rra
    ld c, $d3
    rra
    ld c, $d6
    rra
    add hl, bc
    inc e
    add hl, bc
    rra
    ld a, [bc]
    ld hl, $d30e
    ld hl, $d60e
    ld hl, $1e09
    add hl, bc
    ld hl, $230a
    ld c, $d3
    inc hl
    ld c, $d6
    inc hl
    add hl, bc
    ld hl, $2309
    ld a, [bc]
    ld h, $0e
    db $d3
    ld h, $0e
    sub $26
    rlca
    inc h
    rlca
    inc hl
    rlca
    ld hl, $2307
    ld c, $60
    inc bc
    db $d3
    inc hl
    dec bc
    sub $23
    ld c, $60
    inc bc
    db $d3
    inc hl
    inc b
    sub $23
    rlca
    ld hl, $1f0e
    inc b
    ld hl, $1f05
    dec b
    ld e, $0e
    inc e
    ld c, $1a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [de]
    rlca
    ld h, b
    inc b
    pop de
    ld a, [de]
    rlca
    sub $1e
    dec d
    inc e
    rlca
    ld e, $07
    ld h, b
    inc bc
    db $d3
    ld e, $04
    sub $21
    ld c, $23
    ld c, $24
    ld c, $26
    jr c, jr_03a_69d3

    jr c, jr_03a_69d7

    jr c, jr_03a_69d7

    ld c, $26
    ld c, $27
    ld c, $28
    ld c, $29
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $22
    rlca
    dec e
    rlca
    ld [hli], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hli], a
    inc b
    sub $22
    rlca
    ld hl, $d607
    ld [hli], a
    rlca
    ld h, b

jr_03a_69d3:
    inc bc
    db $d3
    ld [hli], a
    inc b

jr_03a_69d7:
    sub $22
    rlca
    ld hl, $2207
    rlca
    inc h
    rlca
    ld h, $07
    ld [hli], a
    rlca
    dec e
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1d
    rlca
    inc e
    rlca
    dec e
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1d
    rlca
    rra
    rlca
    ld hl, $6007
    inc bc
    db $d3
    ld hl, $d604
    ld hl, $2207
    rlca
    inc h
    rlca
    ld hl, $2207
    rlca
    inc h
    rlca
    ld h, $0e
    ld h, b
    inc bc
    db $d3
    ld h, $0b
    sub $1f
    ld c, $60
    inc bc
    db $d3
    rra
    inc b
    sub $1f
    rlca
    ld hl, $600e
    inc bc
    db $d3
    ld hl, $d60b
    ld hl, $1f07
    rlca
    dec e
    rlca
    inc h
    rlca
    ld h, $07
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $22
    rlca
    ld hl, $2207
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hli], a
    inc b
    sub $22
    rlca
    ld hl, $2207
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hli], a
    inc b
    sub $22
    rlca
    ld hl, $2207
    rlca
    inc h
    rlca
    ld h, $07
    ld [hli], a
    rlca
    dec h
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    rlca
    ld h, b
    inc b
    pop de
    dec h
    rlca
    sub $25
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    rlca
    ld h, b
    inc b
    sub $25
    inc b
    ld h, b
    inc bc
    dec h
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    rlca
    ld h, b
    inc b
    pop de
    dec h
    rlca
    sub $2d
    inc b
    inc l
    dec b
    dec hl
    dec b
    ld a, [hli]
    inc b
    add hl, hl
    dec b
    jr z, jr_03a_6a97

    ld h, $07
    ld h, b
    inc bc
    db $d3

jr_03a_6a97:
    ld h, $07
    ld h, b
    inc b
    pop de
    ld h, $07
    sub $26
    rlca
    ld h, b
    inc bc
    db $d3
    ld h, $07
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc bc
    ld h, $07
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $26
    rlca
    jr z, jr_03a_6ac0

    ld a, [hli]
    rlca
    ld h, $07
    jr z, jr_03a_6ac6

    ld a, [hli]

jr_03a_6ac0:
    rlca
    daa
    ld c, $60
    inc bc
    db $d3

jr_03a_6ac6:
    daa
    dec bc
    sub $27
    add hl, bc
    ld [hli], a
    add hl, bc
    daa
    ld a, [bc]
    add hl, hl
    ld c, $60
    inc bc
    db $d3
    add hl, hl
    dec bc
    sub $29
    add hl, bc
    inc h
    add hl, bc
    add hl, hl
    ld a, [bc]
    dec hl
    ld c, $60
    inc bc
    db $d3
    dec hl
    dec bc
    sub $2b
    add hl, bc
    daa
    add hl, bc
    dec hl
    ld a, [bc]
    dec l
    ld c, $2e
    ld c, $30
    ld c, $31
    ld c, $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    rlca
    ld h, b
    inc b
    pop de
    ld [hl-], a
    rlca
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hli]
    rlca
    ld h, b
    inc b
    sub $2a
    inc bc
    ld h, b
    inc b
    ld a, [hli]
    ld sp, $0760
    sub $26
    ld c, $21
    rlca
    rra
    rlca
    ld a, [de]
    rlca
    rra
    rlca
    ld hl, $2407
    rlca
    ld h, $0e
    ld hl, $1f07
    rlca
    ld a, [de]
    rlca
    rra
    rlca
    ld hl, $2407
    rlca
    ld a, [hli]
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hli]
    rlca
    ld h, b
    inc b
    pop de
    ld a, [hli]
    rlca
    sub $2b
    add hl, bc
    ld a, [hli]
    add hl, bc
    dec hl
    ld a, [bc]
    dec l
    ld sp, $0760
    sub $26
    ld c, $21
    rlca
    rra
    rlca
    ld a, [de]
    rlca
    rra
    rlca
    ld hl, $2407
    rlca
    ld h, $07
    inc h
    rlca
    inc hl
    rlca
    ld hl, $1f07
    rlca
    ld e, $07
    inc e
    rlca
    ld a, [de]
    rlca
    cp $23
    ld l, c
    rst $38
    ld h, b
    rlca
    ld a, [c]
    or $0e
    inc de
    rlca
    or $0f
    inc de
    rlca
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60
    ld c, l
    or $0e
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    ld c, $07
    or $0f
    ld c, $0e
    ld h, b
    ld c, l
    or $0e
    inc c
    inc e
    or $0f
    inc c
    ld c, $f6
    ld c, $0c
    rlca
    or $0f
    inc c
    rlca
    or $0e
    ld c, $1c
    or $0f
    ld c, $0e
    or $0e
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    inc c
    inc hl
    or $0f
    inc c
    rlca
    or $0e
    inc c
    rlca
    or $0f
    inc c
    rlca
    or $0e
    ld c, $07
    or $0f
    ld c, $0e
    ld h, b
    rlca
    or $0e
    ld c, $07
    db $10
    rlca
    ld [de], a
    rlca
    ld c, $07
    or $0e
    inc de
    rlca
    or $0f
    inc de
    rlca
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60
    ccf
    or $0e
    inc de
    ld c, $f6
    ld c, $0e
    rlca
    or $0f
    ld c, $07
    or $0e
    ld c, $07
    or $0f
    ld c, $0e
    ld h, b
    ld sp, $0ef6
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    ld c, $07
    dec c
    rlca
    or $0e
    rrca
    inc hl
    or $0f
    rrca
    rlca
    or $0e
    rrca
    ld c, $f6
    ld c, $11
    inc hl
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $0f
    inc hl
    or $0f
    rrca
    rlca
    or $0e
    rrca
    ld c, $f6
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    inc e
    or $0e
    ld d, $12
    or $0f
    ld d, $0a
    or $0e
    ld de, $f612
    rrca
    ld de, $f60a
    ld c, $16
    ld c, $f6
    rrca
    ld d, $0e
    or $0e
    ld de, $f60e
    rrca
    ld de, $f60e
    ld c, $11
    ld c, $f6
    rrca
    ld de, $f60e
    ld c, $13
    ld c, $f6
    rrca
    inc de
    ld c, $f6
    ld c, $15
    ld c, $f6
    rrca
    dec d
    ld c, $f6
    ld c, $11
    inc e
    or $0e
    inc de
    rlca
    or $0f
    inc de
    rlca
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60
    dec d
    or $0e
    ld de, $f607
    rrca
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $600e
    dec d
    or $0e
    ld d, $0e
    or $0f
    ld d, $0e
    or $0e
    ld de, $f60e
    rrca
    ld de, $f60e
    ld c, $0e
    ld c, $f6
    rrca
    ld c, $0e
    or $0e
    ld a, [bc]
    ld c, $f6
    rrca
    ld a, [bc]
    ld c, $f6
    ld c, $15
    dec d
    or $0f
    dec d
    rlca
    or $0e
    dec d
    ld c, $f6
    rrca
    dec d
    rlca
    or $0e
    dec d
    inc bc
    or $0f
    dec d
    inc b
    or $0e
    dec d
    inc e
    or $0f
    dec d
    ld c, $60
    ld c, $f6
    ld c, $0e
    ld c, $f6
    rrca
    ld c, $0e
    or $0e
    ld c, $0e
    or $0f
    ld c, $07
    or $0e
    ld c, $03
    or $0f
    ld c, $04
    or $0e
    ld c, $1c
    or $0f
    ld c, $0e
    ld h, b
    ld c, $f6
    ld c, $0f
    ld c, $f6
    rrca
    rrca
    ld c, $f6
    ld c, $0f
    ld c, $f6
    rrca
    rrca
    ld c, $f6
    ld c, $11
    ld c, $f6
    rrca
    ld de, $f60e
    ld c, $11
    ld c, $f6
    rrca
    ld de, $f60e
    ld c, $13
    ld c, $f6
    rrca
    inc de
    ld c, $f6
    ld c, $13
    ld c, $f6
    rrca
    inc de
    ld c, $f6
    ld c, $15
    ld c, $f6
    rrca
    dec d
    ld c, $f6
    ld c, $15
    ld c, $f6
    rrca
    dec d
    ld c, $f6
    ld c, $0e
    ld c, $f6
    rrca
    ld c, $0e
    or $0e
    ld c, $0a
    or $0f
    ld c, $0b
    or $0e
    ld c, $03
    or $0f
    ld c, $04
    or $0e
    ld c, $38
    or $0f
    ld c, $24
    ld h, b
    ld c, h
    or $0e
    ld c, $0e
    or $0f
    ld c, $0e
    or $0e
    ld c, $0a
    or $0f
    ld c, $0b
    or $0e
    ld c, $03
    or $0f
    ld c, $04
    or $0e
    ld c, $38
    or $0f
    ld c, $24
    ld h, b
    ld c, h
    cp $6c
    ld l, e
    rst $38
    ld a, [c]
    db $d3
    ld h, $02
    jp nc, $0226

    jp nc, $0326

    call nc, $0e26
    ld h, $2a
    ld h, $1c
    push de
    ld h, $03
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    ld h, $23
    db $d3
    ld h, $02
    db $d3
    ld h, $02
    call nc, $0326
    call nc, $0e26
    push de
    ld h, $1c
    db $d3
    ld h, $07
    call nc, $0726
    push de
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    push de
    ld h, $0e
    db $d3
    ld h, $0e
    push de
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    push de
    ld h, $03
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    ld h, $23
    db $d3
    ld h, $02
    db $d3
    ld h, $02
    call nc, $0326
    call nc, $0e26
    ld h, $0e
    ld h, $03
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    call nc, $0426
    call nc, $0e26
    ld h, $23
    call nc, $0226
    call nc, $0226
    call nc, $0326
    push de
    ld h, $0e
    ld h, $1c
    call nc, $0326
    db $d3
    ld h, $04
    jp nc, $0326

    call nc, $0426
    call nc, $0e26
    ld h, $23
    db $d3
    ld h, $02
    db $d3
    ld h, $02
    call nc, $0326
    call nc, $0e26
    call nc, $1c26
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    call nc, $0426
    call nc, $0e26
    ld h, $23
    db $d3
    ld h, $02
    db $d3
    ld h, $02
    call nc, $0326
    call nc, $1c26
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $0e26
    call nc, $0426
    call nc, $0526
    call nc, $0526
    push de
    ld h, $0e
    ld h, $07
    ld h, $07
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    jp nc, $0426

    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $07
    jp nc, $0726

    db $d3
    ld h, $07
    jp nc, $0726

    db $d3
    ld h, $07
    jp nc, $0726

    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $03
    jp nc, $0426

    jp nc, $0326

    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $07
    jp nc, $0726

    db $d3
    ld h, $07
    jp nc, $0726

    db $d3
    ld h, $07
    db $d3
    ld h, $07
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $03
    jp nc, $0426

    jp nc, $0326

    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    jp nc, $0426

    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    cp $94
    ld l, l
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $23
    ld [de], a
    ld [hli], a
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    ld h, $12
    dec h
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    inc hl
    ld [de], a
    ld [hli], a
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    ld h, $06
    ld h, b
    inc bc
    db $d3
    ld h, $03
    sub $26
    ld b, $25
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    inc hl
    ld [de], a
    ld [hli], a
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    ld h, $12
    dec h
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    inc hl
    ld [de], a
    ld [hli], a
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    ld h, $06
    ld h, b
    inc bc
    db $d3
    ld h, $03
    sub $26
    ld b, $25
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $d6
    dec h
    inc bc
    ld h, $03
    daa
    inc bc
    jr z, jr_03a_7269

    add hl, hl
    inc bc
    ld a, [hli]

jr_03a_7269:
    ld [de], a
    jr z, jr_03a_7272

    ld h, b
    inc bc
    db $d3
    jr z, jr_03a_7277

    ld h, b

jr_03a_7272:
    inc bc
    pop de
    jr z, jr_03a_727c

    ld h, b

jr_03a_7277:
    ld b, $d6
    dec hl
    ld [de], a
    ld a, [hli]

jr_03a_727c:
    ld b, $60
    inc bc
    db $d3
    ld a, [hli]
    ld b, $60
    inc bc
    pop de
    ld a, [hli]
    ld b, $60
    ld b, $d6
    ld a, [hli]
    ld [de], a
    jr z, jr_03a_7294

    ld h, b
    inc bc
    db $d3
    jr z, jr_03a_7299

    ld h, b

jr_03a_7294:
    inc bc
    pop de
    jr z, jr_03a_729e

    ld h, b

jr_03a_7299:
    ld b, $d6
    dec hl
    inc c
    dec l

jr_03a_729e:
    ld b, $2a
    ld b, $60
    inc bc
    db $d3
    ld a, [hli]
    ld b, $60
    inc bc
    pop de
    ld a, [hli]
    ld b, $60
    ld b, $d6
    ld a, [hli]
    ld [de], a
    sub $28
    ld b, $60
    inc bc
    db $d3
    jr z, jr_03a_72be

    ld h, b
    inc bc
    pop de
    jr z, jr_03a_72c3

    ld h, b

jr_03a_72be:
    ld b, $d6
    dec hl
    ld [de], a
    ld a, [hli]

jr_03a_72c3:
    ld b, $60
    inc bc
    db $d3
    ld a, [hli]
    ld b, $60
    inc bc
    pop de
    ld a, [hli]
    ld b, $60
    ld b, $d6
    ld a, [hli]
    ld [de], a
    jr z, jr_03a_72db

    ld h, b
    inc bc
    db $d3
    jr z, jr_03a_72e0

    ld h, b

jr_03a_72db:
    inc bc
    pop de
    jr z, jr_03a_72e5

    ld h, b

jr_03a_72e0:
    ld b, $d6
    dec hl
    ld b, $2d

jr_03a_72e5:
    ld b, $2a
    ld b, $2b
    ld b, $28
    ld b, $2a
    ld b, $27
    ld b, $28
    ld b, $2a
    ld b, $2b
    ld b, $2c
    ld b, $2d
    ld b, $60
    inc bc
    db $d3
    dec l
    ld b, $60
    inc bc
    pop de
    dec l
    ld b, $60
    ld b, $d6
    dec l
    ld b, $2e
    ld b, $2f
    ld b, $30
    ld b, $60
    inc bc
    db $d3
    jr nc, jr_03a_731a

    ld h, b
    inc bc
    pop de
    jr nc, @+$08

    ld h, b

jr_03a_731a:
    ld b, $d6
    jr nc, @+$08

    ld sp, $3206
    ld b, $33
    ld b, $60
    inc bc
    db $d3
    inc sp
    ld b, $60
    inc bc
    pop de
    inc sp
    ld b, $60
    ld b, $d6
    inc sp
    ld b, $34
    ld b, $35
    ld b, $36
    ld b, $60
    inc bc
    db $d3
    ld [hl], $06
    ld h, b
    inc bc
    pop de
    ld [hl], $06
    ld h, b
    ld b, $d6
    ld [hl], $06
    ld h, b
    inc bc
    db $d3
    ld [hl], $03
    sub $38
    inc bc
    add hl, sp
    inc bc
    ld a, [hl-]
    inc bc
    dec sp
    inc bc
    inc a
    inc a
    ld h, b
    ld b, $39
    ld b, $3c
    ld b, $36
    ld b, $39
    ld b, $33
    ld b, $36
    ld b, $30
    ld b, $33
    ld b, $2d
    ld b, $30
    ld b, $2a
    ld b, $2d
    ld b, $27
    ld b, $2a
    ld b, $24
    ld b, $27
    ld b, $21
    ld b, $fe
    call z, $ff71
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $1f
    ld [de], a
    ld e, $06
    ld h, b
    inc bc
    db $d3
    ld e, $06
    ld h, b
    inc bc
    pop de
    ld e, $06
    ld h, b
    ld b, $d6
    inc hl
    ld [de], a
    ld [hli], a
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    rra
    ld [de], a
    ld e, $06
    ld h, b
    inc bc
    db $d3
    ld e, $06
    ld h, b
    inc bc
    pop de
    ld e, $06
    ld h, b
    ld b, $d6
    inc hl
    ld b, $60
    inc bc
    db $d3
    inc hl
    inc bc
    sub $23
    ld b, $22
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    rra
    ld [de], a
    ld e, $06
    ld h, b
    inc bc
    db $d3
    ld e, $06
    ld h, b
    inc bc
    pop de
    ld e, $06
    ld h, b
    ld b, $d6
    inc hl
    ld [de], a
    ld [hli], a
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $60
    inc bc
    pop de
    ld [hli], a
    ld b, $60
    ld b, $d6
    rra
    ld [de], a
    ld e, $06
    ld h, b
    inc bc
    db $d3
    ld e, $06
    ld h, b
    inc bc
    pop de
    ld e, $06
    ld h, b
    ld b, $d6
    inc hl
    ld b, $60
    inc bc
    db $d3
    inc hl
    inc bc
    sub $23
    ld b, $22
    ld b, $60
    inc bc
    db $d3
    ld [hli], a
    ld b, $d6
    ld [hli], a
    inc bc
    inc hl
    inc bc
    inc h
    inc bc
    dec h
    inc bc
    ld h, $03
    daa
    ld [de], a
    dec h
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    jr z, jr_03a_7448

    daa
    ld b, $60
    inc bc
    db $d3
    daa
    ld b, $60
    inc bc
    pop de
    daa
    ld b, $60
    ld b, $d6
    daa
    ld [de], a
    dec h

jr_03a_7448:
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    jr z, jr_03a_7464

    jr z, jr_03a_7460

    daa
    ld b, $60
    inc bc
    db $d3
    daa

jr_03a_7460:
    ld b, $60
    inc bc
    pop de

jr_03a_7464:
    daa
    ld b, $60
    ld b, $d6
    daa
    ld [de], a
    dec h
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    jr z, jr_03a_748e

    daa
    ld b, $60
    inc bc
    db $d3
    daa
    ld b, $60
    inc bc
    pop de
    daa
    ld b, $60
    ld b, $d6
    daa
    ld [de], a
    dec h

jr_03a_748e:
    ld b, $60
    inc bc
    db $d3
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    ld b, $d6
    jr z, @+$08

    ld a, [hli]
    ld b, $27
    ld b, $28
    ld b, $25
    ld b, $27
    ld b, $23
    ld b, $25
    ld b, $27
    ld b, $28
    ld b, $29
    ld b, $2a
    ld b, $60
    inc bc
    db $d3
    ld a, [hli]
    ld b, $60
    inc bc
    pop de
    ld a, [hli]
    ld b, $60
    ld b, $d6
    ld a, [hli]
    ld b, $2b
    ld b, $2c
    ld b, $2d
    ld b, $60
    inc bc
    db $d3
    dec l
    ld b, $60
    inc bc
    pop de
    dec l
    ld b, $60
    ld b, $d6
    dec l
    ld b, $2e
    ld b, $2f
    ld b, $30
    ld b, $60
    inc bc
    db $d3
    jr nc, jr_03a_74e9

    ld h, b
    inc bc
    pop de
    jr nc, @+$08

    ld h, b

jr_03a_74e9:
    ld b, $d6
    jr nc, @+$08

    ld sp, $3206
    ld b, $33
    ld b, $60
    inc bc
    db $d3
    inc sp
    ld b, $60
    inc bc
    pop de
    inc sp
    ld b, $60
    ld b, $d6
    inc sp
    ld b, $60
    inc bc
    db $d3
    inc sp
    inc bc
    sub $34
    inc bc
    ld [hl], $03
    scf
    inc bc
    jr c, jr_03a_7513

    add hl, sp
    inc a
    db $d3

jr_03a_7513:
    add hl, sp
    inc c
    reti


    ld hl, $2006
    ld b, $1f
    ld b, $1e
    ld b, $1d
    ld b, $1c
    ld b, $1b
    ld b, $1a
    ld b, $19
    ld b, $18
    ld b, $17
    ld b, $16
    ld b, $15
    ld b, $14
    ld b, $13
    ld b, $12
    ld b, $fe
    add a
    ld [hl], e
    rst $38
    ld a, [c]
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $0f
    ld [de], a
    ld [bc], a
    or $12
    inc de
    ld a, [bc]
    or $0f
    inc de
    ld [bc], a
    or $12
    ld [de], a
    dec b
    or $0f
    ld [de], a
    ld bc, $12f6
    inc de
    dec b
    or $0f
    inc de
    ld bc, $12f6
    inc d
    dec b
    or $0f
    inc d
    ld bc, $12f6
    dec d
    dec b
    or $0f
    dec d
    ld bc, $12f6
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    rla
    ld a, [bc]
    or $0f
    rla
    ld [bc], a
    or $12
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    ld d, $05
    or $0f
    ld d, $01
    or $12
    rla
    dec b
    or $0f
    rla
    ld bc, $12f6
    rla
    ld b, $19
    ld b, $1a
    ld b, $1b
    ld b, $f6
    rrca
    dec de
    inc c
    or $0c
    dec de
    inc c
    or $12
    dec de
    ld b, $1c
    ld b, $1d
    ld b, $1e
    ld b, $f6
    rrca
    ld e, $0c
    or $0c
    ld e, $0c
    or $12
    ld e, $06
    rra
    ld b, $20
    ld b, $21
    ld b, $f6
    rrca
    ld hl, $f60c
    inc c
    ld hl, $f60c
    ld [de], a
    ld hl, $2206
    ld b, $23
    ld b, $24
    ld b, $f6
    rrca
    inc h
    inc c
    or $0c
    inc h
    inc c
    or $12
    inc hl
    ld [bc], a
    ld [hli], a
    ld [bc], a
    ld hl, $2002
    ld [bc], a
    rra
    ld [bc], a
    ld e, $02
    dec e
    ld [bc], a
    inc e
    ld [bc], a
    dec de
    ld [bc], a
    ld a, [de]
    ld [bc], a
    add hl, de
    ld [bc], a
    jr jr_03a_789f

    rla
    inc a

jr_03a_789f:
    ld h, b
    ld l, h
    cp $3b
    ld [hl], l
    rst $38
    ld a, [c]
    push de
    rst AddAToHL
    jr z, jr_03a_78ab

    db $d3

jr_03a_78ab:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_78b1

    db $d3

jr_03a_78b1:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_78b8

    db $d3

jr_03a_78b8:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_78bf

    db $d3

jr_03a_78bf:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_78c6

    db $d3

jr_03a_78c6:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_78cd

    db $d3

jr_03a_78cd:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_78d4

    db $d3

jr_03a_78d4:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_78da

    db $d3

jr_03a_78da:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_78e1

    db $d3

jr_03a_78e1:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_78e8

    db $d3

jr_03a_78e8:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_78ee

    db $d3

jr_03a_78ee:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_78f5

    db $d3

jr_03a_78f5:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_78fc

    db $d3

jr_03a_78fc:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7902

    db $d3

jr_03a_7902:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7909

    db $d3

jr_03a_7909:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7910

    db $d3

jr_03a_7910:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7917

    db $d3

jr_03a_7917:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_791e

    db $d3

jr_03a_791e:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7925

    db $d3

jr_03a_7925:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_792b

    db $d3

jr_03a_792b:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7932

    db $d3

jr_03a_7932:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7939

    db $d3

jr_03a_7939:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7940

    db $d3

jr_03a_7940:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7947

    db $d3

jr_03a_7947:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_794e

    db $d3

jr_03a_794e:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7955

    db $d3

jr_03a_7955:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_795b

    db $d3

jr_03a_795b:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7962

    db $d3

jr_03a_7962:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7969

    db $d3

jr_03a_7969:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7970

    db $d3

jr_03a_7970:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7977

    db $d3

jr_03a_7977:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_797e

    db $d3

jr_03a_797e:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7984

    db $d3

jr_03a_7984:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_798b

    db $d3

jr_03a_798b:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7992

    db $d3

jr_03a_7992:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7998

    db $d3

jr_03a_7998:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_799f

    db $d3

jr_03a_799f:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79a6

    db $d3

jr_03a_79a6:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_79ac

    db $d3

jr_03a_79ac:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_79b3

    db $d3

jr_03a_79b3:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79ba

    db $d3

jr_03a_79ba:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79c1

    db $d3

jr_03a_79c1:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_79c8

    db $d3

jr_03a_79c8:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79cf

    db $d3

jr_03a_79cf:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_79d5

    db $d3

jr_03a_79d5:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_79dc

    db $d3

jr_03a_79dc:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79e3

    db $d3

jr_03a_79e3:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_79e9

    db $d3

jr_03a_79e9:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79f0

    db $d3

jr_03a_79f0:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79f7

    db $d3

jr_03a_79f7:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_79fe

    db $d3

jr_03a_79fe:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7a04

    db $d3

jr_03a_7a04:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a0b

    db $d3

jr_03a_7a0b:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a12

    db $d3

jr_03a_7a12:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a19

    db $d3

jr_03a_7a19:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a20

    db $d3

jr_03a_7a20:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a27

    db $d3

jr_03a_7a27:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7a2d

    db $d3

jr_03a_7a2d:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a34

    db $d3

jr_03a_7a34:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a3b

    db $d3

jr_03a_7a3b:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7a41

    db $d3

jr_03a_7a41:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a48

    db $d3

jr_03a_7a48:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a4f

    db $d3

jr_03a_7a4f:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a56

    db $d3

jr_03a_7a56:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a5d

    db $d3

jr_03a_7a5d:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a64

    db $d3

jr_03a_7a64:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a6b

    db $d3

jr_03a_7a6b:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a72

    db $d3

jr_03a_7a72:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a79

    db $d3

jr_03a_7a79:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7a7f

    db $d3

jr_03a_7a7f:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7a86

    db $d3

jr_03a_7a86:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a8d

    db $d3

jr_03a_7a8d:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7a93

    db $d3

jr_03a_7a93:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7a9a

    db $d3

jr_03a_7a9a:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7aa1

    db $d3

jr_03a_7aa1:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7aa8

    db $d3

jr_03a_7aa8:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7aae

    db $d3

jr_03a_7aae:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7ab5

    db $d3

jr_03a_7ab5:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7abc

    db $d3

jr_03a_7abc:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7ac3

    db $d3

jr_03a_7ac3:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7aca

    db $d3

jr_03a_7aca:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7ad1

    db $d3

jr_03a_7ad1:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7ad7

    db $d3

jr_03a_7ad7:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7ade

    db $d3

jr_03a_7ade:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7ae5

    db $d3

jr_03a_7ae5:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7aeb

    db $d3

jr_03a_7aeb:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7af2

    db $d3

jr_03a_7af2:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7af9

    db $d3

jr_03a_7af9:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7aff

    db $d3

jr_03a_7aff:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7b06

    db $d3

jr_03a_7b06:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b0d

    db $d3

jr_03a_7b0d:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b14

    db $d3

jr_03a_7b14:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7b1b

    db $d3

jr_03a_7b1b:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b22

    db $d3

jr_03a_7b22:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7b28

    db $d3

jr_03a_7b28:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7b2f

    db $d3

jr_03a_7b2f:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b36

    db $d3

jr_03a_7b36:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7b3c

    db $d3

jr_03a_7b3c:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b43

    db $d3

jr_03a_7b43:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b4a

    db $d3

jr_03a_7b4a:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b51

    db $d3

jr_03a_7b51:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7b57

    db $d3

jr_03a_7b57:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7b5e

    db $d3

jr_03a_7b5e:
    daa
    dec b
    push de
    inc h
    ld b, $24
    ld b, $24
    ld b, $d5
    inc h
    ld b, $d7
    jr z, jr_03a_7b6e

    db $d3

jr_03a_7b6e:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b75

    db $d3

jr_03a_7b75:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7b7c

    db $d3

jr_03a_7b7c:
    daa
    dec b
    push de
    ld h, $06
    ld h, $06
    ld h, $06
    ld h, $06
    push de
    rst AddAToHL
    jr z, jr_03a_7b8c

    db $d3

jr_03a_7b8c:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b93

    db $d3

jr_03a_7b93:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7b9a

    db $d3

jr_03a_7b9a:
    daa
    dec b
    push de
    push de
    rst AddAToHL
    jr z, jr_03a_7ba2

    db $d3

jr_03a_7ba2:
    daa
    dec b
    push de
    ld a, [hli]
    ld b, $2a
    ld b, $d5
    ld a, [hli]
    ld b, $d5
    ld a, [hli]
    ld b, $d7
    jr z, jr_03a_7bb3

    db $d3

jr_03a_7bb3:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7bba

    db $d3

jr_03a_7bba:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7bc0

    db $d3

jr_03a_7bc0:
    daa
    dec b
    push de
    rst AddAToHL
    jr z, jr_03a_7bc7

    db $d3

jr_03a_7bc7:
    daa
    dec b
    push de
    inc h
    ld b, $24
    ld b, $24
    ld b, $24
    ld b, $d7
    jr z, jr_03a_7bd6

    db $d3

jr_03a_7bd6:
    daa
    dec bc
    push de
    rst AddAToHL
    jr z, jr_03a_7bdd

    db $d3

jr_03a_7bdd:
    daa
    inc bc
    rst AddAToHL
    jr z, jr_03a_7be3

    db $d3

jr_03a_7be3:
    daa
    inc bc
    rst AddAToHL
    jr z, jr_03a_7be9

    db $d3

jr_03a_7be9:
    daa
    inc bc
    ld l, $18
    ld a, [hli]
    ld b, $2a
    ld b, $2e
    ld b, $2a
    ld b, $2a
    ld b, $2a
    ld b, $2e
    ld b, $2a
    ld b, $d7
    jr z, jr_03a_7c01

    db $d3

jr_03a_7c01:
    daa
    dec b
    rst AddAToHL
    jr z, jr_03a_7c07

    db $d3

jr_03a_7c07:
    daa
    dec b
    ret c

    jr z, jr_03a_7c0d

    db $d3

jr_03a_7c0d:
    daa
    dec b
    ret c

    jr z, jr_03a_7c13

    db $d3

jr_03a_7c13:
    daa
    ld de, $28d9
    ld bc, $27d3
    dec b
    reti


    jr z, jr_03a_7c1f

    db $d3

jr_03a_7c1f:
    daa
    dec b
    jp c, $0128

    db $d3
    daa
    dec b
    jp c, $0128

    db $d3
    daa
    ld de, $28da
    ld bc, $27d3
    dec b
    db $db
    jr z, jr_03a_7c37

    db $d3

jr_03a_7c37:
    daa
    dec b
    db $db
    jr z, jr_03a_7c3d

    db $d3

jr_03a_7c3d:
    daa
    dec b
    db $db
    jr z, jr_03a_7c43

    db $d3

jr_03a_7c43:
    daa
    dec b
    cp $a6
    ld a, b
    rst $38
    or $02
    push de
    pop hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$04
    ld b, e
    dec b
    db $d3
    ldh [rTAC], a
    ld sp, hl
    nop
    ld hl, sp-$01
    ld c, b
    scf
    rst $38
    or $08
    ld sp, hl
    nop
    ld hl, sp+$04
    ld b, e
    dec b
    ld sp, hl
    nop
    ld hl, sp-$01
    ld c, b
    jr z, @+$01

    ldh a, [rNR41]
    ld d, $12
    rla
    ld bc, $20f0
    ld d, $14
    ldh a, [rNR50]
    ld d, $1e
    rst $38
    or $02
    pop de
    ld c, l
    ld bc, $0152
    ld d, [hl]
    ld bc, HeaderComplementCheck
    ld b, [hl]
    ld bc, $0156
    jp nc, HeaderComplementCheck

    ld d, d
    ld bc, $0156
    ld c, l
    ld bc, HeaderSGBFlag
    ld d, [hl]
    ld bc, $4dd3
    ld bc, $0151
    ld d, [hl]
    ld bc, HeaderComplementCheck
    ld b, l
    ld bc, $0156
    call nc, HeaderComplementCheck
    ld d, c
    ld bc, $0156
    ld c, l
    ld bc, $0145
    ld d, [hl]
    ld bc, $4dd5
    ld bc, $0150
    ld d, [hl]
    ld bc, HeaderComplementCheck
    ld b, h
    ld bc, $0156
    sub $4e
    ld bc, $0150
    ld d, [hl]
    ld bc, HeaderGlobalChecksum
    ld b, h
    ld bc, $0156
    rst AddAToHL
    ld c, [hl]
    ld bc, $014f
    ld d, [hl]
    ld bc, HeaderGlobalChecksum
    ld b, e
    ld bc, $0156
    sub $4e
    ld bc, $014f
    ld d, [hl]
    ld bc, HeaderGlobalChecksum
    ld b, e
    ld bc, $0156
    push de
    ld c, [hl]
    ld bc, HeaderGlobalChecksum
    ld d, [hl]
    ld bc, HeaderGlobalChecksum
    ld b, d
    ld bc, $0156
    call nc, HeaderGlobalChecksum
    ld c, [hl]
    ld bc, $0156
    ld c, [hl]
    ld bc, $0142
    ld d, [hl]
    ld bc, $4fd3
    ld bc, HeaderComplementCheck
    ld d, [hl]
    ld bc, $014f
    ld b, c
    ld bc, $0156
    ld c, a
    ld bc, HeaderComplementCheck
    ld d, [hl]
    ld bc, $4fd2
    ld bc, $0141
    ld d, [hl]
    ld bc, $014f
    ld c, h
    ld bc, $0156
    ld c, a
    ld bc, $0140
    ld d, [hl]
    ld bc, $4fd1
    ld bc, HeaderMaskROMVersion
    ld d, [hl]
    ld bc, $014f
    ld b, b
    ld bc, $0156
    ld c, a
    ld bc, HeaderOldLicenseeCode
    ldh [rSB], a
    ld d, [hl]
    ld bc, $f6ff
    nop
    ldh [rSB], a
    db $db
    ld hl, sp+$09
    ld a, $07
    ld hl, sp+$00
    ret nc

    ld h, b
    inc b
    reti


    ld hl, sp+$08
    ld a, $08
    ld hl, sp+$00
    ret nc

    ld h, b
    inc bc
    rst AddAToHL
    ld hl, sp+$08
    dec a
    ld [$00f8], sp
    ret nc

    ld h, b
    ld [bc], a
    push de
    ld hl, sp+$09
    inc a
    ld a, [bc]
    ld hl, sp+$00
    call nc, $0af8
    ld a, [hl-]
    ld a, [bc]
    ld hl, sp+$00
    rst $38
    or $0a
    ld hl, sp+$1e
    jr @+$07

    ld h, b
    ld [bc], a
    ld hl, sp+$2e
    jr @+$0a

    ld h, b
    ld [$e2f8], sp
    jr nz, @+$0a

    ld h, b
    ld b, $f8
    ret c

    jr nz, @+$0a

    rst $38
    or $01
    rst JumpTable
    ccf
    inc bc
    db $db
    ldh [rTMA], a
    ccf
    inc a
    rst $38
    ldh a, [rSTAT]
    dec d
    ld bc, $f6ff
    nop
    db $dd
    pop hl
    nop
    ld hl, sp-$0f
    ld b, c
    dec b
    ld hl, sp+$00
    ld h, b
    ld [bc], a
    sbc $e1
    nop
    ld hl, sp-$0f
    ld b, c
    dec b
    ld hl, sp+$00
    rst $38
    ldh a, [rNR10]
    dec h
    ld [bc], a
    ldh a, [rNR41]
    dec h
    ld bc, $30f0
    dec h
    ld [bc], a
    ldh a, [rLCDC]
    dec h
    ld bc, $50f0
    dec h
    ld [bc], a
    ldh a, [$60]
    dec h
    ld bc, $70f0
    dec h
    ld [bc], a
    ldh a, [$90]
    dec h
    ld bc, $a0f0
    dec h
    ld [bc], a
    ldh a, [$b0]
    dec h
    rst $38
    cp $d1
    ld a, l
    rst $38
    or $03
    ld hl, sp+$0c
    scf
    dec b
    ret nc

    ld h, b
    ld [$fef8], sp
    ld a, $05
    ld hl, sp+$00
    scf
    ld bc, $0cf8
    scf
    dec b
    ret nc

    ld h, b
    ld a, [bc]
    ld hl, sp-$02
    ld a, $0f
    rst $38
    or $00
    pop de
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    ldh [rP1], a
    jp nc, $02f8

    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    db $d3
    ld hl, sp+$02
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    call nc, $03f8
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    push de
    ld hl, sp+$03
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    sub $f8
    inc bc
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    rst AddAToHL
    ld hl, sp+$04
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    rst AddAToHL
    ld hl, sp+$04
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    rst AddAToHL
    ld hl, sp+$04
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    sub $f8
    dec b
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    sub $f8
    dec b
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    sub $f8
    dec b
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    push de
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    push de
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    push de
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    call nc, $05f8
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    call nc, $05f8
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    call nc, $05f8
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    db $d3
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    db $d3
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    db $d3
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    jp nc, $05f8

    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    jp nc, $05f8

    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    jp nc, $05f8

    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    pop de
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    pop de
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    pop de
    ld hl, sp+$05
    ld c, e
    ld [bc], a
    ld hl, sp+$00
    pop de
    ldh [rSB], a
    ld hl, sp+$02
    ld c, e
    ld bc, $00f8
    ldh [rP1], a
    rst $38
    ldh a, [rNR41]
    ld b, [hl]
    ld bc, $40f0
    ld b, [hl]
    ld bc, $60f0
    ld b, [hl]
    ld [bc], a
    ldh a, [$b0]
    ld b, [hl]
    inc b
    ldh a, [rP1]
    nop
    ld [$70f0], sp
    ld d, [hl]
    inc bc
    ldh a, [$f1]
    ld h, h
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

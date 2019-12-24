; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX

    dec b
    rst $30
    inc b

Jump_01f_4003:
    ld [hl], d

Jump_01f_4004:
    dec b
    ld a, c
    ld [hl-], a
    ld [bc], a
    dec e
    ld l, $01
    ld [bc], a
    rlc h
    or c
    ld e, c
    ld h, l
    ld [hl], b
    inc bc
    cp a
    ld [hl], b
    ld h, l
    nop
    dec b
    sbc l
    inc bc
    db $76
    ld [bc], a
    ld c, b
    ld [hl], e
    ld [hl], a
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    jr nz, @+$59

    dec b
    and e
    inc bc
    and l
    ld b, c
    inc b
    jr c, jr_01f_4059

    jr nz, jr_01f_4078

    jr nz, jr_01f_4036

    dec c
    ld bc, $5f03
    ld l, e

jr_01f_4036:
    ld h, l
    ld a, c
    add hl, bc
    nop
    inc bc
    or b
    dec b
    ld [bc], a
    ld bc, $9403
    ld h, [hl]
    ld [bc], a
    and b
    ld [hl], e
    ld hl, $0400
    xor $02
    ld b, b
    inc bc
    add h
    ld bc, $2049
    inc b
    jp hl


    inc bc
    cp [hl]
    inc bc
    ld d, b
    inc bc
    ld d, l
    inc b

jr_01f_4059:
    add hl, de
    ld bc, $9403
    ld h, [hl]
    ld [bc], a
    and b
    ld [hl], e
    inc bc
    and h
    ld [bc], a
    ld b, h
    inc bc
    ld b, b
    ld [hl], h
    ld l, a
    ld bc, $9403
    inc bc
    ld [hl], e
    ld [bc], a
    db $d3
    inc bc
    ld [$7570], sp
    ld h, h
    ld h, h
    ld l, h
    ld h, l

jr_01f_4078:
    ld bc, $7103
    ld l, $00
    ld b, h
    ld l, c
    ld h, h
    ld [bc], a
    push de
    dec b
    ld [bc], a
    ld bc, $9403
    ld h, [hl]
    ld [bc], a
    and b
    ld [hl], e
    inc bc
    rst $20
    inc bc
    or c
    db $76
    dec b
    ld [hl], b
    ld [bc], a
    ld a, h
    ld bc, $0f05
    dec b
    rst $20
    inc b
    ld h, a
    inc b
    db $e3
    ld l, [hl]
    ld bc, $6e69
    ld [bc], a
    or [hl]
    ld hl, $0a00
    nop
    ld hl, $4120
    ld [hl], d
    ld h, l
    ld bc, $d203
    dec b
    add c
    ld [bc], a
    call nz, $e703
    ld b, c
    inc b
    jr c, @+$2e

    jr nz, jr_01f_40c0

    ld c, a
    ld bc, $9403
    ld l, [hl]

jr_01f_40c0:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    inc bc
    ld l, d
    add hl, bc
    inc bc
    dec b
    adc l
    inc bc
    or $02
    ld bc, $012e
    dec b
    ld b, c
    add hl, bc
    inc bc
    ld b, h
    ld l, c
    ld l, [hl]
    inc b
    rst $08
    ld l, [hl]
    ld l, a
    ld bc, $0464
    dec d
    ld [hl], d
    jr nz, jr_01f_4146

    ld l, c
    inc b
    daa
    ld l, $01
    ld d, e
    ld l, b
    ld h, l
    inc bc
    add hl, hl
    inc b
    jr c, jr_01f_40f3

    ld d, [hl]
    inc bc
    sub h
    ld [bc], a
    ccf

jr_01f_40f3:
    ld bc, $8402
    dec b
    ld l, $77
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    ld [hl], e
    jr nz, @+$07

Jump_01f_4100:
    ld e, h
    ld [hl], d
    ld l, a
    ld l, h
    ld bc, $6704
    ld [bc], a
    xor h
    dec b
    daa
    ld [hl], e
    ld bc, $7a05
    ld l, [hl]
    inc bc
    ccf
    ld l, $20
    ld [bc], a
    dec c
    ld bc, $6168
    ld [hl], e
    jr nz, jr_01f_4189

    ld [bc], a
    cp c
    ld bc, $1803
    ld [hl], e
    ld [bc], a
    sbc b
    ld [hl], h
    ld l, a
    ld l, h
    ld h, h
    ld bc, $7a05
    ld h, c
    jr nz, @+$65

    ld [hl], l
    ld [hl], d
    ld [hl], h
    dec b
    db $db
    inc bc
    pop de
    inc b
    ld e, e
    jr nz, jr_01f_419d

    ld [hl], d
    ld h, c
    ld [hl], a
    inc bc
    rst $00
    ld h, c
    inc bc
    cp h
    jr nz, @+$04

    ld b, d
    ld l, $01

jr_01f_4146:
    ld c, c
    inc bc
    ld l, h
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    dec b
    ld a, l
    dec b
    ld a, c
    inc bc
    ld h, c
    ld l, b
    ld h, l
    ld [hl], d
    inc bc
    or d
    ld [bc], a
    ret nz

    inc bc
    and $02
    xor e
    inc bc
    and h
    rrca
    ld [bc], a
    dec b
    ld d, [hl]
    rlca
    inc bc
    ld a, [bc]
    nop
    ld hl, $4120
    ld [hl], d
    ld h, l
    ld bc, $d203
    dec b
    add c
    ld [bc], a
    call nz, HeaderManufacturerCode
    inc bc
    ld d, b
    ld [hl], a
    dec b
    db $76
    jr nz, @+$04

    dec c
    ld bc, $de05
    ld h, l
    ld [hl], e
    ld h, c
    ld [hl], a

jr_01f_4189:
    jr nz, @+$04

    db $fc
    ld bc, $7905
    dec b
    ld de, $a503
    rrca
    ld de, $5605
    rlca
    inc bc
    ld [bc], a
    dec c
    jr nz, jr_01f_4204

jr_01f_419d:
    ld h, c
    db $76
    inc b
    cp b
    ld bc, $3a03
    inc bc
    di
    ld [bc], a
    db $76
    ld b, d
    ld [hl], l
    ld [hl], h
    inc l
    jr nz, @+$71

    ld [hl], a
    ld hl, $0304
    inc bc
    add [hl]
    ld [hl], a
    dec b
    db $10
    ld h, l
    ld h, h
    inc l
    ld bc, $e903
    ld c, c
    ld [bc], a
    ld a, d
    ld h, d
    ld h, l
    ld bc, $a402
    inc bc
    ld e, h
    ld bc, $de05
    inc bc
    dec l
    inc bc
    ld a, [bc]
    ld [bc], a
    db $76
    ld a, [bc]
    nop
    inc l
    jr nz, @+$4b

    inc bc
    adc h
    ld bc, $6e04
    ld [hl], a
    ld l, b
    ld a, c
    ld [bc], a
    push de
    dec b
    ld a, [$6c01]
    ld a, c
    dec b
    ld a, e
    ld [bc], a
    ld c, b
    inc b
    adc c
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    inc bc
    and l
    dec b
    sbc l
    ld [bc], a
    pop hl
    ld [bc], a
    ld b, d
    inc bc
    sbc a
    ld bc, $0566
    and d
    ld h, h
    inc bc
    or b
    inc b
    ld h, [hl]
    ld l, $01

jr_01f_4204:
    ld c, c
    ld h, [hl]
    ld [bc], a
    xor h
    ld b, $57
    jr nz, @+$71

    ld l, [hl]
    ld [bc], a
    ld l, d
    inc b
    dec c
    inc bc
    push hl
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    inc l
    jr nz, jr_01f_428e

    ld [bc], a
    cp b
    ld bc, $fe03
    ld [bc], a
    xor h
    dec b
    ld a, [de]
    ld bc, $6877
    ld l, a
    ld [bc], a
    push bc
    inc b
    ld h, e
    ld bc, $9403
    inc bc
    ld [hl], l
    ld l, $01
    ld [bc], a
    jp hl


    ld hl, $5520
    ld [hl], e
    ld h, l
    ld [bc], a
    ld l, d
    inc bc
    jr jr_01f_4241

    or b
    ld h, c
    ld l, c

jr_01f_4241:
    ld h, h
    ld bc, $4202
    ld hl, $0200
    jp hl


    jr nz, jr_01f_424e

    ld h, c
    ld l, l
    ld a, c

jr_01f_424e:
    ld bc, $656d
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, a
    ld h, l
    ld [bc], a
    ld b, e
    ld [bc], a
    add hl, sp
    inc bc
    and $09
    inc bc
    ld [bc], a
    inc d
    inc b
    jr z, jr_01f_4266

    or c
    ld [bc], a
    add hl, sp

jr_01f_4266:
    ld bc, $7369
    ld [bc], a
    xor h
    inc b
    ld l, l
    ld bc, $7a05
    inc b
    rlca
    ld [bc], a
    rla
    ld l, $01
    ld d, e
    inc b
    add d
    dec b
    ldh [$03], a
    or h
    inc b
    cp d
    ld l, $00
    ld b, a
    ld l, a
    ld [bc], a
    adc b
    ld h, e
    ld h, c
    ld [hl], l
    inc b
    ccf
    ld hl, $4100
    dec b

jr_01f_428e:
    push de
    ld h, a
    inc b
    ld a, [c]
    ld [hl], d
    ld l, a
    ld l, a
    ld [hl], h
    inc b
    ld d, d
    ld b, a
    ld l, a
    jr nz, @+$75

    ld [hl], h
    ld [hl], d
    ld h, c
    inc b
    dec h
    ld [bc], a
    db $d3
    inc b
    sub l
    ld l, $20
    inc bc
    adc l
    dec b
    di
    ld bc, $ac03
    dec b
    reti


    ld [bc], a
    ld a, h
    ld l, $01
    rlca
    inc b
    inc bc
    or c
    inc b
    ld sp, $7265
    ld l, [hl]
    ld bc, $8904
    ccf
    jr nz, jr_01f_42c6

    add sp, $05
    rla

jr_01f_42c6:
    ld bc, $9403
    add hl, bc
    inc bc
    ld d, a
    ld l, a
    ld l, a
    ld h, h
    inc bc
    dec sp
    inc bc
    ld a, [hl]
    add hl, bc
    nop
    inc l
    ld [bc], a
    call nz, HeaderManufacturerCode
    inc bc
    cp e
    ld l, h
    ld l, c
    ld h, l
    jr nz, jr_01f_42e5

    ld sp, $012c
    dec b

jr_01f_42e5:
    sbc h
    ld l, [hl]
    inc bc
    ld bc, $032c
    pop de
    ld [bc], a
    ld b, [hl]
    ld l, $01
    rlca
    inc b
    ld d, e
    ld [hl], a
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    jr nz, jr_01f_42fd

    add sp, $05
    rla

jr_01f_42fd:
    ld bc, $0309
    ld [bc], a
    ld hl, $5204
    dec b
    or b
    dec b
    jp nc, $0103

    ld bc, $7704
    dec b
    ld e, $03
    pop de
    ld [bc], a
    ld b, [hl]
    inc bc
    and h
    ld [bc], a
    db $ec
    inc bc
    rst $38
    ld [bc], a
    sbc a
    inc bc
    ld e, c
    jr nz, jr_01f_4321

    pop de
    ld h, l

jr_01f_4321:
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    inc b
    or b
    inc b
    dec l
    daa
    db $76
    ld h, l
    ld bc, $b805
    dec b
    db $d3
    jr nz, jr_01f_439b

    ld h, c
    ld [hl], d
    ld l, $01
    rlca
    inc b
    add hl, bc
    inc bc
    ld [bc], a
    daa
    add hl, bc
    nop
    inc bc
    and l
    ld c, c
    daa
    db $76
    ld h, l
    inc bc
    rlca
    ld h, h
    inc bc
    db $e3
    ld h, c
    ld bc, $9604
    ld [bc], a
    ld c, b
    inc b
    ld sp, $202e
    ld d, h
    ld [hl], d
    ld a, c
    ld [bc], a
    ld a, h
    ld hl, $0701
    inc b
    ld b, c
    ld [hl], e
    ld l, e
    jr nz, jr_01f_4367

    rrca
    ld [hl], e
    ld [bc], a

jr_01f_4367:
    ld [c], a
    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_01f_43d6

    ld h, [hl]
    jr nz, jr_01f_43e9

    ld [bc], a
    ld e, d
    ld l, $01
    ld d, b
    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    inc l
    jr nz, jr_01f_4381

    ld b, b
    ld bc, $6e61

jr_01f_4381:
    ld l, c
    ld l, l
    ld h, c
    ld l, h
    ld [hl], e
    inc l
    dec b
    call Call_01f_7573
    ld [hl], d
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    inc bc
    add hl, de
    ld bc, $0407
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_43ff

    inc b

jr_01f_439b:
    inc sp
    dec l
    ld bc, $4c04
    ld h, h
    jr nz, jr_01f_440f

    dec b
    db $e4
    ccf
    ld bc, $0249
    ldh [rDIV], a
    inc l
    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    ld bc, $3104
    jr nz, jr_01f_4424

    ld h, [hl]
    inc bc
    ld c, $2e
    ld bc, $0407
    ld c, b
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01f_43c6

    add e
    ld l, $2e
    inc bc

jr_01f_43c6:
    rst $20
    ld d, b
    inc bc
    dec d
    ld bc, $0309
    inc b
    ret nc

    inc b
    ld d, d
    inc bc
    cp e
    ld l, h
    ld l, c
    ld h, l

jr_01f_43d6:
    jr nz, jr_01f_443e

    ld h, c
    ld [hl], d
    inc bc
    or d
    dec b
    sbc h
    inc bc
    ld bc, $1e05
    ld l, $01
    rlca
    inc b
    ld b, c
    jr nz, @+$66

jr_01f_43e9:
    inc b
    ld a, [hl]
    ccf
    ld bc, $0349
    adc h
    dec b
    push de
    ld d, e
    ld h, c
    ld l, l
    ld h, c
    ld [hl], e
    ld h, c
    ld bc, $0444
    ld a, [hl]
    dec b
    add sp, $65

jr_01f_43ff:
    ld a, b
    ld [hl], h
    dec b
    rst $38
    ld [hl], e
    ld bc, $3104
    jr nz, jr_01f_440c

    ld b, d
    inc b
    sub [hl]

jr_01f_440c:
    ld l, $01
    rlca

jr_01f_440f:
    inc b
    ld b, d
    ld [hl], l
    ld [hl], h
    inc b
    ld h, $05
    call nc, $0365
    ld l, $05
    ld a, a
    ld [hl], d
    inc b
    rst AddAToHL
    dec b
    sub $74
    ld [bc], a
    add c

jr_01f_4424:
    dec b
    sbc a
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld [hl], l
    ld l, h
    ld [hl], h
    inc l
    ld bc, $7562
    ld [hl], h
    ld [bc], a
    jr nc, jr_01f_4457

    inc b
    ld a, a
    ld l, c
    ld [hl], h
    ld hl, $0220

jr_01f_443e:
    add [hl]
    dec b
    sbc [hl]
    nop
    ld c, c
    ld [hl], h
    dec b
    rst JumpTable
    inc bc
    db $ec
    inc bc
    rst $00
    inc bc
    jp nz, $0569

    or $02
    add [hl]
    ld hl, $4900
    jr nz, jr_01f_44c8

    ld [hl], l

jr_01f_4457:
    ld h, l
    ld [bc], a
    sub a
    ld h, h
    ld h, c
    ld a, c
    ld hl, $0201
    dec c
    ld [bc], a
    ld d, b
    inc b
    sub h
    ld l, [hl]
    jr nz, jr_01f_446d

    and c
    ld [bc], a
    or h
    db $76
    dec b

jr_01f_446d:
    adc h
    ld [hl], d
    ld [hl], e
    ld [bc], a
    sub [hl]
    inc bc
    add [hl]
    ld h, d
    ld h, l
    dec b
    and d
    ld l, [hl]
    ld bc, $3e05
    jr nz, jr_01f_44e2

    inc bc
    dec b
    inc bc
    and e
    ld a, [bc]
    nop
    ld hl, $0501
    sbc l
    inc bc
    ld l, e
    inc b
    ld a, $04
    or l
    ld bc, $6f68
    ld [hl], b
    ld h, l
    ld hl, $0520
    or b
    ld bc, $0d02
    inc l
    jr nz, jr_01f_44a1

    ld bc, $0021
    ld d, a

jr_01f_44a1:
    ld [bc], a
    db $f4
    ld h, e
    ld h, c
    ld l, [hl]
    ld [bc], a
    or h
    ld [bc], a
    ld e, $02
    ld a, [de]
    inc b
    and h
    inc bc
    dec [hl]
    ld l, $2e
    ccf
    ld bc, $6f44
    ld h, l
    ld [hl], e
    jr nz, @+$70

    ld l, a
    inc b
    ld h, $01
    ld [bc], a
    push af
    ld h, c
    jr nz, jr_01f_4526

    ld l, h
    ld [hl], l
    ld h, l
    ccf
    nop

jr_01f_44c8:
    inc b
    rst $00
    jr nz, jr_01f_44ce

    inc b
    inc l

jr_01f_44ce:
    ld bc, $6f6e
    ld [hl], a
    jr nz, jr_01f_44d6

    rla
    inc bc

jr_01f_44d6:
    ld d, d
    ld [bc], a
    ld [hl], e
    jr nz, jr_01f_453c

    ld l, [hl]
    jr nz, jr_01f_4546

    inc b
    ld h, l
    dec b
    ld a, d

jr_01f_44e2:
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, d
    ld [hl], l
    ld l, h
    ld h, c
    inc b
    ccf
    ld hl, $0a01
    nop
    inc l
    dec b
    ld d, [hl]
    ld c, c
    jr nz, jr_01f_44f8

    inc d
    jr nz, @+$04

jr_01f_44f8:
    ld [hl], e
    ld bc, $d203
    dec b
    sbc c
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, h
    inc bc
    and l
    ld b, d
    ld [hl], l
    ld [hl], h
    ld [bc], a
    ld a, h
    inc b
    ld h, c
    ld l, [hl]
    ld l, a
    ld bc, $ad04
    ld h, l
    ld l, h
    ld [hl], e
    ld h, l
    ld [bc], a
    rst $00
    ld bc, $6f63
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$07

    or $02
    jp hl


    ld hl, $5720
    dec b
    pop de

jr_01f_4526:
    ld [bc], a
    jp nz, Jump_01f_6572

    ld [hl], e
    ld h, e
    ld [hl], l
    ld h, l
    jr nz, jr_01f_4532

    ld b, d
    ccf

jr_01f_4532:
    nop
    inc c
    ld hl, $ec02
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, c

jr_01f_453c:
    ld h, d
    ld l, h
    ld h, l
    ld hl, $0901
    inc bc
    ld b, c
    jr nz, jr_01f_4548

jr_01f_4546:
    ld a, e
    inc l

jr_01f_4548:
    ld [hli], a
    dec b
    ld a, a
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    inc l
    jr nz, jr_01f_45b8

    dec b
    and e
    inc bc
    sub l
    ld bc, $0309
    ld [bc], a
    add e
    inc bc
    jr c, jr_01f_45b3

    ld l, l
    ld l, l
    inc l
    inc bc
    sbc h
    dec b
    add b
    ld h, c
    jr nz, jr_01f_456a

    ld a, e
    ld [hli], a

jr_01f_456a:
    inc bc
    rst $20
    add hl, bc
    inc bc
    ld [bc], a
    add e
    add hl, bc
    nop
    inc bc
    add hl, hl
    ld bc, $ab02
    inc bc
    inc b
    ld l, $01
    rlca
    inc bc
    inc c
    ld hl, $2021
    ld hl, $2120
    jr nz, jr_01f_458b

    ld b, $05
    reti


    dec b
    add b

jr_01f_458b:
    inc b
    ld e, c
    inc bc
    and [hl]
    ld l, l
    ld h, l
    ld hl, $0c00
    ld hl, $6d55
    ld l, l
    dec b
    ld d, l
    ld c, c
    inc l
    inc bc
    dec c
    inc l
    ld bc, $0d05
    jr nz, jr_01f_45a6

    inc e
    inc bc

jr_01f_45a6:
    and h
    ld c, c
    jr nz, jr_01f_4617

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ld e, b
    ld bc, $9905
    ld [bc], a

jr_01f_45b3:
    xor e
    inc l
    ld bc, $9002

jr_01f_45b8:
    jr nz, jr_01f_461c

    ld h, l
    inc bc
    rst $00
    dec b
    cp b
    dec b
    sbc [hl]
    nop
    ld b, l
    dec b
    ld h, e
    inc b
    xor l
    ld [hl], a
    dec b
    rst AddAToHL
    inc bc
    or d
    ld h, a
    ld h, c
    inc b
    daa
    jr nz, jr_01f_4644

    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, @+$63

    ld [hl], h
    ld bc, $9403
    ld [bc], a
    ld a, e
    ld [hli], a
    inc b
    ld [hl], d
    ld l, [hl]
    inc b
    adc a
    ld l, $00
    ld d, h
    ld [bc], a
    db $f4
    inc b
    inc h
    inc b
    ld [c], a
    dec l
    ld bc, $6973
    ld a, d
    dec b
    sbc e
    ld [hl], d
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    inc bc
    db $ec
    ld bc, $9403
    ld [bc], a
    ld a, e
    ld [hli], a
    ld bc, $7075
    inc bc
    ld bc, $002e
    ld b, $1c
    ld c, l
    ld h, l
    ld l, h
    inc bc
    sbc e
    dec b
    ld [hl], e
    ld b, $1c
    ld hl, $5401
    dec b

jr_01f_4617:
    ld [hl-], a
    ld h, [hl]
    inc b
    ld e, b
    ld [hl], e

jr_01f_461c:
    ld bc, $5f05
    dec b
    cp $04
    or b
    ld bc, $656d
    ld [hl], h
    ld h, c
    ld l, h
    ld hl, $5200
    inc bc
    add e
    ld l, [hl]
    ld l, a
    ld [hl], a
    inc bc
    ld a, [c]
    dec b
    cp $05
    ld a, e
    ld [bc], a
    call c, Call_01f_696d
    ld a, b
    inc bc
    and [hl]
    ld [hl], h
    ld [hl], a
    ld l, a
    jr nz, jr_01f_4648

    ld [hl], l

jr_01f_4644:
    ld [hl], e
    ld bc, $7a05

jr_01f_4648:
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $00
    ld [bc], a
    ld b, h
    inc bc
    ld b, b
    ld [hl], h
    ld l, a
    ld bc, $9c05
    inc bc
    ld bc, $7265
    ld l, [hl]
    ld bc, $7b02
    ld [hli], a
    ld [bc], a
    db $d3
    inc b
    sub l
    ld l, $00
    inc bc
    ld [de], a
    ld h, a
    ld h, c
    inc b
    daa
    inc bc
    rst $00
    ld h, e
    inc b
    ld c, b
    inc bc
    db $e3
    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $7905
    dec b
    cp $02
    ld c, b
    ld h, [hl]
    inc b
    ld e, b
    ld [hl], e
    ld l, $00
    inc bc
    or c
    ld l, a
    ld [hl], d
    ld h, l
    inc bc
    add hl, hl
    ld l, h
    ld l, h
    ld bc, $9905
    ld h, e
    inc b
    ld c, b
    ld l, $00
    ld [bc], a
    ld h, d
    inc bc
    ldh a, [rSB]
    inc bc
    ld a, [hl-]
    ld l, a
    ld [hl], d
    ld h, l
    dec l
    inc bc
    rst $38
    ld bc, $6f72
    ld h, e
    ld l, e
    ld [bc], a
    adc h
    ld l, c
    ld [hl], h
    dec b
    add b
    ld [hl], h
    ld l, a
    ld l, a
    jr nz, @+$07

    ld a, [bc]
    ld l, $01
    ld b, c
    jr nz, jr_01f_46b9

    scf
    jr nz, jr_01f_46ff

jr_01f_46b9:
    inc bc
    sbc c
    dec b
    ld a, a
    inc bc
    xor e
    inc bc
    ldh a, [rTIMA]
    dec sp
    ld h, d
    ld [hl], l
    ld [hl], h
    inc b
    ld a, [de]
    jr nz, jr_01f_46cf

    rst $08
    dec b
    ld h, c
    dec b
    sbc c

jr_01f_46cf:
    dec b
    rst $00
    ld l, $20
    dec b
    ld b, $01
    ld h, a
    ld [hl], l
    ld a, c
    jr nz, jr_01f_46df

    jp nc, Jump_01f_7301

    ld h, c

jr_01f_46df:
    ld a, c
    ld [hl], e
    dec b
    ldh [rNR41], a
    ld [hl], e
    ld h, c
    ld [hl], a
    ld bc, $d905
    inc l
    jr nz, jr_01f_4761

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $00
    inc b
    xor $02
    ld b, b
    ld h, c
    ld bc, $3703
    jr nz, jr_01f_4744

    inc bc

jr_01f_46ff:
    sbc c
    inc bc
    db $e4
    inc bc
    ld e, b
    ld hl, $4f20
    ld c, e
    inc l
    ld bc, $656c
    ld [hl], h
    dec b
    sbc d
    inc bc
    ldh a, [rTIMA]
    jp nc, $0021

    inc bc
    ld d, b
    ld [hl], a
    ld h, c
    ld [hl], e
    ld [bc], a
    rst JumpTable
    ld hl, $0401
    and b
    ld [hl], a
    ld h, l
    ld [bc], a
    sub [hl]
    ld [hl], b
    ld l, h
    dec b
    rst AddAToHL
    ld a, c
    inc l
    inc bc
    rra
    ld bc, $6f74
    inc bc
    add hl, de
    jr nz, jr_01f_477c

    ld h, [hl]
    ld [bc], a
    jp nz, $2e04

    jr nz, jr_01f_473d

    cp l
    ld h, c
    ld l, [hl]

jr_01f_473d:
    ld a, c
    ld bc, $726f
    inc b
    cp b
    ld l, h

jr_01f_4744:
    ld [hl], h
    ld h, l
    ld h, h
    inc l
    jr nz, jr_01f_474d

    push af
    ld [bc], a
    ld e, c

jr_01f_474d:
    ld h, [hl]
    inc b
    ld e, b
    ld [hl], e
    ld l, $00
    dec b
    sbc l
    inc bc
    adc a
    dec b
    sbc e
    ld [hl], l
    ld [hl], e
    ld bc, $1003
    inc b
    ld c, [hl]
    inc bc

jr_01f_4761:
    push af
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_01f_47dc

    ld [hl], e
    ld [bc], a
    ld d, l
    inc bc
    cp l
    dec b
    xor d
    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $fe05
    ld h, l
    ld h, h
    ld l, $00
    inc bc
    ld a, [de]
    ld h, [hl]
    inc b

jr_01f_477c:
    ld e, b
    inc bc
    or h
    dec b
    cp $04
    or b
    jr nz, jr_01f_47f4

    ld [hl], d
    ld h, l
    ld bc, $3e05
    jr nz, jr_01f_47f8

    ld l, c
    ld [hl], c
    ld [hl], l
    ld l, c
    ld h, h
    jr nz, jr_01f_47fa

    ld l, a
    ld l, a
    ld l, $00
    inc bc
    xor $05
    cp b
    dec b
    cp d
    inc bc
    scf
    jr nz, jr_01f_47e7

    inc bc
    sbc c
    inc b
    jr z, jr_01f_47a9

    xor h
    ld l, c
    ld [hl], h

jr_01f_47a9:
    jr nz, jr_01f_480c

    ld [hl], h
    dec b
    push de
    ld c, h
    ld h, c
    db $76
    ld h, c
    ld bc, $054c
    db $e4
    dec b
    add sp, $04
    jp nc, $002e

    ld d, a
    ld [bc], a
    db $dd
    inc b
    push hl
    ccf
    ld bc, $cd02
    dec b
    ld a, [hli]
    ld l, $01
    inc bc
    add hl, bc
    inc bc
    sbc d
    ld [bc], a
    jp nz, $3a03

    add hl, bc
    ld bc, $726f
    ld h, l
    add hl, bc
    nop
    inc bc
    inc c
    ld l, c
    ld [hl], h

jr_01f_47dc:
    ld hl, $0301
    ld e, b
    ld hl, $0c00
    ld [hli], a
    inc bc
    xor d
    ld h, a

jr_01f_47e7:
    ld l, a
    jr nz, jr_01f_484c

    ld [hl], l
    ld [hl], d
    ld a, c
    ld bc, $a104
    jr nz, jr_01f_4866

    ld [bc], a
    ld l, b

jr_01f_47f4:
    ld l, $00
    inc c
    ld [hli], a

jr_01f_47f8:
    ld c, l
    dec b

jr_01f_47fa:
    db $e4
    jr nz, @+$07

    di
    jr nz, jr_01f_486e

    ld l, a
    ld bc, $d905
    inc b
    ld b, $73
    jr nz, @+$77

    ld [hl], e
    ld l, $01

jr_01f_480c:
    ld c, c
    ld h, [hl]
    inc b
    ld [hl], $01
    dec b
    ld d, c
    inc l
    jr nz, jr_01f_4888

    ld [hl], l
    ld l, [hl]
    ld hl, $0200
    ld b, b
    inc b
    and $21
    ld bc, $b604
    jr nz, jr_01f_4829

    or $03
    xor d
    ld h, a
    ld l, a

jr_01f_4829:
    jr nz, jr_01f_482f

    ld a, a
    inc b
    inc e
    ld [hl], h

jr_01f_482f:
    ld [bc], a
    ld l, b
    ld hl, $4400
    ld l, a
    ld l, b
    ld hl, $0520
    ld b, $05
    reti


    dec b
    add b
    inc b
    sub l
    ld hl, $5220
    ld [hl], l
    ld l, [hl]
    dec b
    sbc [hl]
    nop
    ld d, a
    dec b
    pop de
    inc b

jr_01f_484c:
    ld [hl], $04
    ld b, $01
    ld [hl], l
    ld [hl], e
    ld [bc], a
    sub a
    inc b
    or h
    ccf
    nop
    inc bc
    ld [de], a
    ld c, a
    ld c, e
    ld l, $01
    inc bc
    xor d
    ld h, a
    ld l, a
    ld l, $00
    inc bc
    cp e

jr_01f_4866:
    ld [hl], h
    ld l, a
    ld l, a
    ld l, e
    ld [bc], a
    ld l, d
    inc bc
    ld c, d

jr_01f_486e:
    dec b
    jp nc, $6d65

    ccf
    ld bc, $f005
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$05

    inc d
    ld bc, $7075
    inc bc
    or b
    ld l, [hl]
    ld l, a
    inc bc
    ld d, c
    ld hl, $5401

jr_01f_4888:
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01f_48f4

    ld l, a
    inc b
    call Call_01f_7001
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_01f_490a

    ld h, c
    ld [hl], h
    ld [hl], e
    inc bc
    ld b, c
    ld h, [hl]
    ld h, c
    ld l, l
    ld l, a
    ld [hl], l
    ld [hl], e
    ld [bc], a
    sub d
    ld bc, $9504
    inc bc
    and h
    ld c, c
    ld [bc], a
    xor l
    ld [hl], e
    ld h, c
    ld [hl], a
    inc bc
    inc l
    ld bc, $6903
    ld h, c
    jr nz, jr_01f_491c

    ld l, c
    ld [hl], d
    ld [hl], h
    ld a, c
    ld bc, $0109
    ld h, [hl]
    inc bc
    ld d, h
    add hl, bc
    nop
    ld l, $20
    ld d, a
    ld l, b
    ld l, a
    ld bc, $0477
    xor e
    inc bc
    db $76
    inc bc
    sbc b
    ccf
    nop
    ld d, h
    ld [hl], a
    ld l, a
    jr nz, jr_01f_48da

    add hl, de
    ld [hl], e

jr_01f_48da:
    ccf
    ld bc, $e803
    dec b
    rla
    jr nz, jr_01f_48e6

    call nz, $0501
    ld a, [hli]

jr_01f_48e6:
    ld l, a
    ld [hl], e
    dec b
    ld l, $63
    inc bc
    ld hl, sp+$02
    adc a
    ld bc, $e903
    inc bc
    rrca

jr_01f_48f4:
    jr nz, jr_01f_496a

    ld [hl], d
    ld h, c
    ld [hl], e
    ld l, b
    ccf
    ld bc, $bb03
    dec b
    ld d, d
    ld [bc], a
    ld c, b
    dec b
    ld a, [hli]
    jr nz, jr_01f_496e

    dec b
    push af
    inc bc
    or d

jr_01f_490a:
    inc bc
    sub h
    dec b
    ld e, $2e
    nop
    inc bc
    ld d, b
    dec b
    ld d, b
    jr nz, jr_01f_491b

    rst $30
    ld bc, $5902
    ld [bc], a

jr_01f_491b:
    ld a, e

jr_01f_491c:
    ld l, $22
    nop
    ld d, a
    ld l, b
    ld l, a
    inc bc
    inc bc
    inc bc
    db $76
    ld bc, $2061
    ld h, h
    ld l, c
    ld [hl], d
    ld [hl], h
    ld a, c
    dec b
    call nc, $0366
    ld d, h
    add hl, bc
    nop
    ccf
    nop
    ld [bc], a
    inc [hl]
    inc b
    ld h, c
    dec b
    or a
    ld bc, $7905
    ld h, d
    ld h, l
    ld [bc], a
    xor h
    dec b
    ld b, a
    ld l, $00
    ld c, l
    ld a, c
    inc b
    add b
    dec b
    sbc d
    ld [bc], a
    ld e, a
    inc bc
    and h
    ld c, l
    ld a, c
    jr nz, jr_01f_495a

    ld [hli], a
    ld l, c
    ld [hl], h
    ld h, l

jr_01f_495a:
    ld bc, $5202
    jr nz, jr_01f_4964

    ld sp, $7d05
    dec b
    pop hl

jr_01f_4964:
    inc bc
    or b
    ld [hl], e
    ld h, l
    ld h, c
    inc bc

jr_01f_496a:
    and l
    ld c, c
    inc l
    inc bc

jr_01f_496e:
    dec c
    inc l
    inc bc
    db $76
    dec b
    ld a, l
    dec b
    ld a, c
    ld h, a
    ld l, a
    jr nz, @+$67

    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $9403
    ld [bc], a
    ld a, e
    inc l
    ld [hli], a
    ld bc, $7304
    ld [bc], a
    add hl, hl
    ld h, a
    ld l, a
    ld bc, $e105
    jr nz, @+$04

    xor a
    ld hl, $0300
    ld a, [hli]
    ld h, c
    jr nz, jr_01f_49fe

    ld [hl], l
    ld [hl], h
    ld h, l
    ld bc, $5202
    ld l, $01
    ld c, c
    ld [hl], e
    dec b
    jp nc, $0c03

    ld l, l
    ld h, l
    ccf
    ld bc, $b104
    ld e, c
    ld h, l
    ld [hl], b
    inc bc
    cp a
    ld [hl], b
    ld h, l
    nop
    ld c, a
    ld l, b
    ld l, b
    dec b
    sub $2c
    inc bc
    dec c
    inc l
    ld bc, $6005
    dec b
    ld a, [hl]
    ld [bc], a
    ld d, d
    ld hl, $5700
    ld l, a
    ld [hl], a
    ld hl, $4c20
    ld l, c
    ld l, e
    ld h, l
    inc l
    ld bc, $c105
    inc bc
    dec de
    nop
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01f_49e2

    or l
    ld [hl], e

jr_01f_49e2:
    ld l, a
    ld bc, $e204
    inc l
    ld [bc], a
    xor c
    ld h, a
    ld l, a
    inc b
    sub e
    ld h, c
    jr nz, jr_01f_4a54

    dec b
    and d
    ld [bc], a
    adc b
    dec b
    inc d
    ld bc, $aa03
    ld h, a
    ld l, a
    inc bc
    or [hl]
    inc bc

jr_01f_49fe:
    and $03
    ld [$7b02], sp
    ld l, $22
    nop
    ld b, h
    ld l, a
    ld [bc], a
    push de
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01f_4a78

    ld l, a
    ld bc, $6e6f
    dec b
    ld a, [hl]
    ld h, h
    dec b
    and d
    ccf
    ld bc, $bb05
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_4a26

    ld c, l
    nop

jr_01f_4a26:
    ld c, a
    ld c, e
    ld hl, $a902
    inc b
    ld e, c
    ld bc, $1405
    nop
    inc b
    rra
    ld c, c
    inc bc
    db $76
    ld [bc], a
    jp nz, Jump_01f_6f74

    inc b
    add hl, sp
    inc b
    inc a
    ld hl, $0300
    add hl, bc
    inc b
    ld e, c
    ld [bc], a
    jp nz, Jump_01f_6e61

    ld a, c
    inc bc
    add h
    ld l, $00
    ld b, c
    ld [hl], e
    inc bc
    db $db
    jr nz, jr_01f_4ab4

    ld [hl], e

jr_01f_4a54:
    jr nz, jr_01f_4acd

    ld h, l
    inc b
    and e
    ld [hl], h
    ld l, a
    ld h, a
    ld h, l
    inc b
    daa
    inc l
    ld [bc], a
    rst $00
    ld bc, $0109
    ld [hl], l
    ld l, [hl]
    dec b
    and [hl]
    add hl, bc
    nop
    inc b
    or b
    jr nz, jr_01f_4a74

    and a
    ld bc, $7c05
    inc bc

jr_01f_4a74:
    db $76
    dec b
    and b
    dec b

jr_01f_4a78:
    jp c, $002e

    ld b, h
    ld l, a
    ld h, l
    ld [hl], e
    ld [bc], a
    sub a
    ld [bc], a
    ld d, d
    ld bc, $6205
    inc bc
    ld d, c
    inc b
    or e
    ld l, l
    ld h, l
    ccf
    nop
    ld d, a
    ld [bc], a
    db $f4
    dec b
    rst $08
    ld [bc], a
    jp nz, Jump_01f_6f67

    dec b
    ld a, e
    ccf
    nop
    ld [bc], a
    ld h, c
    inc bc
    sbc $02
    ld e, a
    jr nz, @+$04

    inc e
    ld bc, $6873
    ld h, l
    inc bc
    dec c
    ld [hl], e
    inc b
    db $ed
    ld [hl], e
    ld l, b
    inc bc
    and d
    ld h, h
    ld h, c
    ld [hl], h

jr_01f_4ab4:
    inc b
    cp b
    ld l, $00
    ld c, c
    inc bc
    rlca
    ld h, h
    jr nz, @+$04

    ld e, a
    ld bc, $0d05
    dec b
    ldh [$72], a
    jr nz, @+$04

    ld d, d
    ld l, $01
    ld c, c
    daa
    ld l, l

jr_01f_4acd:
    inc bc
    or [hl]
    dec b
    ld a, e
    ld [bc], a
    ld [c], a
    ld [bc], a
    inc e
    jr nz, jr_01f_4b3c

    ld l, h
    ld [hl], e
    ld h, l
    ld bc, $6873
    ld h, l
    daa
    ld l, h
    ld l, h
    inc bc
    dec c
    ld l, $00
    ld [bc], a
    ld b, h
    jr nz, @+$06

    ld a, a
    ld [bc], a
    adc [hl]
    ld bc, $6902
    ld [hl], e
    dec b
    and c
    ld [hl], e
    ld bc, $0361
    cp h
    inc bc
    ld c, $2e
    nop
    ld c, c
    jr nz, jr_01f_4b03

    xor a
    jr nz, jr_01f_4b4a

    ld [bc], a
    db $eb

jr_01f_4b03:
    ld bc, $6f67
    inc b
    or e
    ld h, c
    jr nz, @+$66

    dec b
    and d
    ld bc, $6903
    ld [bc], a
    ld e, a
    jr nz, jr_01f_4b17

    db $ed
    ld l, a
    ld l, [hl]

jr_01f_4b17:
    ld h, e
    inc b
    xor b
    jr nz, jr_01f_4b20

    cpl
    ld l, b
    ld l, a
    ld [hl], a

jr_01f_4b20:
    ld bc, $6f64
    jr nz, jr_01f_4b6e

    inc bc
    ld b, b
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $6e69
    ld [hl], h
    ld h, l
    inc b
    db $ec
    ld h, l
    ld h, h
    ccf
    nop
    add hl, bc
    ld bc, $6f52
    ld [hl], e
    ld h, c
    dec b

jr_01f_4b3c:
    sbc d
    ld l, e
    ld h, l
    ld a, c
    add hl, bc
    nop
    inc bc
    or h
    dec b
    ld [bc], a
    inc b
    or b
    jr nz, jr_01f_4b4f

jr_01f_4b4a:
    and a
    inc l
    ld bc, $4004

jr_01f_4b4f:
    inc b
    ld h, $73
    ld [bc], a
    ld c, b
    ld [bc], a
    ld a, e
    ld l, $22
    nop
    ld [bc], a
    ld e, a
    inc l
    ld [bc], a
    xor h
    ld [hl], b
    ld l, a
    ld [hl], b
    ld bc, $7473
    ld h, c
    ld [hl], d
    inc l
    ld [bc], a
    ld d, b
    dec b
    cp b
    ld [bc], a
    sub d
    inc bc

jr_01f_4b6e:
    ld c, $01
    ld h, c
    jr nz, jr_01f_4bdf

    ld l, a
    ld [hl], h
    dec b
    add hl, sp
    ld l, h
    ld a, c
    ld l, $00
    inc bc
    add sp, $77
    dec b
    rst AddAToHL
    inc b
    or e
    ld h, c
    ld bc, $0564
    and d
    ld [bc], a
    adc b
    ld [bc], a
    ld e, a
    ccf
    ld bc, $a702
    ccf
    ccf
    ld bc, $6102
    inc bc
    sbc $02
    ld e, a
    dec b
    ld a, [hl]
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    dec b
    rst AddAToHL
    ld bc, $a105
    inc bc
    ld b, b
    ld l, b
    ld h, l
    ld [hl], d
    inc bc
    or d
    ld h, a
    ld l, a
    inc b
    or e
    ld h, c
    jr nz, jr_01f_4c15

    dec b
    and d
    ld bc, $6903
    ld l, l
    ld h, l
    inc bc
    ld e, [hl]
    nop
    ld [bc], a
    ld e, a
    ld [bc], a
    ld d, b
    dec b
    rst $20
    inc b
    jp z, $0420

    ld l, $01
    inc bc
    and b
    inc bc
    dec l
    jr nz, jr_01f_4c34

    ld [hl], l
    ld a, c
    ld bc, $0567
    ret nc

    dec b
    ldh [$72], a
    jr nz, jr_01f_4c39

    dec b
    rra
    ld bc, $5202
    ld l, $01

jr_01f_4bdf:
    inc b
    cpl
    ld c, c
    inc bc
    rlca
    ld h, h
    jr nz, @+$07

    dec [hl]
    ld h, c
    dec b
    jp c, $6174

    ld l, h
    jr nz, jr_01f_4c54

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $00
    ld [bc], a
    ld b, h
    jr nz, jr_01f_4c5d

    ld l, c
    ld h, a
    inc b
    ld [hl], d
    ld [hl], h
    ld [bc], a
    ld l, b
    jr nz, jr_01f_4c71

    ld l, [hl]
    ld [bc], a
    adc d
    ld h, d
    ld h, l
    ld h, c
    ld h, e
    inc bc
    cp c
    ld bc, $8e02
    ld hl, $0200
    ld e, a
    inc b
    ld b, $6d

jr_01f_4c15:
    ld [hl], e
    inc b
    db $ed
    ld [hl], e
    ld h, c
    ld h, h
    dec b
    add hl, sp
    ld l, h
    ld a, c
    inc bc
    and l
    ld c, c
    ld [hl], e
    dec b
    ld c, e
    jr nz, jr_01f_4c2b

    sbc c
    inc bc
    rst $00
    inc b

jr_01f_4c2b:
    sub c
    ld [bc], a
    cp e
    ccf
    ld bc, $9502
    inc bc
    inc hl

jr_01f_4c34:
    ld bc, $7469
    daa
    ld [hl], e

jr_01f_4c39:
    inc bc
    add hl, de
    ld l, $3f
    nop
    ld [bc], a
    dec sp
    ld l, l
    ld l, c
    ld a, b
    dec b
    call nc, $0552
    ld a, l
    ld c, a
    ld [hl], d
    ld h, l
    add hl, bc
    nop
    ld [bc], a
    call c, $be02
    inc l
    inc b
    ld h, h

jr_01f_4c54:
    dec b
    ld [de], a
    ld [hl], e
    jr nz, @+$04

    inc [hl]
    ld l, $00
    inc b

jr_01f_4c5d:
    ld e, a
    dec b
    sbc l
    inc b
    and e
    ld h, h
    ld h, c
    ld [hl], h
    inc bc
    and [hl]
    ld [bc], a
    ld e, a
    ccf
    ld bc, $2a03
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e

jr_01f_4c71:
    dec b
    rst AddAToHL
    dec b
    ld c, c
    ld bc, $d203
    inc b
    ld hl, $6568
    ld [hl], d
    ccf
    nop
    inc bc
    xor [hl]
    jr nz, @+$6c

    ld h, l
    ld h, c
    ld l, h
    ld l, a
    ld [hl], l
    ld [hl], e
    ld hl, $0201
    ld h, d
    ld h, h
    dec b
    and d
    ld bc, $5f02
    dec b
    sbc [hl]
    nop
    dec b
    sbc l
    ld [bc], a
    pop hl
    ld [bc], a
    ld e, a
    ccf
    ld bc, $6f4e
    dec b
    ld h, a
    inc bc
    and e
    ld [bc], a
    ld b, l
    inc b
    ld l, [hl]
    ld l, a
    ld l, [hl]
    dec b
    cp d
    ld h, h
    dec b
    and d
    inc l
    inc bc
    ld l, e
    dec b
    ld a, h
    ccf
    ld hl, $003f
    inc b
    ld e, d
    ld [hl], e
    inc bc
    add c
    ld bc, $7566
    ld l, [hl]
    ld l, $20
    ld c, c
    inc bc
    add a
    ld bc, $7c05
    daa
    ld l, h
    ld l, h
    inc b
    add hl, sp
    ld bc, $e105
    ld [bc], a
    ld [hl], l
    ld l, $00
    ld e, c
    ld [bc], a
    ld c, c
    dec b
    call nc, $0352
    ei
    dec b
    ld a, a
    inc bc
    jp hl


    ld [bc], a
    cp [hl]
    ld hl, $4401
    ld l, c
    ld h, h
    ld [bc], a
    push de
    ld [bc], a
    ld [hl], e
    ld bc, $696d
    ld a, b
    ld [bc], a
    xor h
    ld [hl], h
    ld [hl], a
    ld l, a
    inc bc
    or d
    ld h, e
    inc b
    add hl, bc
    ld h, l
    jr nz, jr_01f_4cff

    inc [hl]
    ccf

jr_01f_4cff:
    ld bc, $b104
    ld e, c

Call_01f_4d03:
    ld h, l
    ld [hl], b
    jr nz, jr_01f_4d0a

    cp a
    ld [hl], b
    ld h, l

jr_01f_4d0a:
    nop
    ld c, c
    ld [hl], e
    ld [bc], a
    sbc b
    ld [hl], e
    ld l, a
    ccf
    nop
    inc bc
    inc a
    ld [hl], a
    inc bc
    and d
    dec b
    ld h, h
    ld [hl], d
    inc bc
    add e
    ld l, a
    ld l, [hl]
    dec b
    dec b
    nop
    inc c
    ld [hli], a
    ld c, a
    ld c, e
    inc l
    jr nz, jr_01f_4d2b

    db $f4
    dec b

jr_01f_4d2b:
    rst $30
    ld hl, $0300
    ld [hl], h
    ld [bc], a
    inc [hl]
    inc bc
    push hl
    ld h, h
    dec b
    reti


    ld l, $20
    ld d, a
    inc b
    ld h, d
    inc b
    inc a
    ld hl, $0201
    db $ec
    ld l, b
    ld l, a
    ld [hl], h
    ld l, $00
    inc b
    dec a
    inc b
    ld [$e605], a
    jr nz, jr_01f_4d54

    ld a, [bc]
    ld bc, $fe05
    dec b

jr_01f_4d54:
    and $20
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $4100
    jr nz, @+$65

    ld [hl], l
    ld [hl], h
    ld h, l
    jr nz, @+$04

    ld d, d
    ld bc, $0802
    ld [bc], a
    adc [hl]
    ld l, $01
    rlca
    dec bc
    ld d, d
    inc b
    inc h
    ld d, b
    inc b
    sbc d
    jr nz, jr_01f_4dc8

    ld [hl], h
    dec b
    ld e, l
    ld [bc], a
    ld [$5004], sp
    ld [bc], a
    add hl, bc
    ld bc, $a105
    ld bc, $0109
    ld sp, $2030
    inc b
    ld a, c
    jr nz, @+$04

    ld d, e
    ld l, $01
    rlca
    dec bc
    ld b, c
    dec b
    call nc, Call_01f_6942
    ld h, a
    jr nz, jr_01f_4d9d

    xor e
    jr nz, jr_01f_4ddd

    ld h, c
    ld h, a

jr_01f_4d9d:
    dec b
    ld a, a
    ld [bc], a
    ld [$0109], sp
    ld sp, $2030
    inc b
    ld b, a
    add hl, bc
    nop
    ld [bc], a
    call c, $5004
    ld c, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_4df6

    inc b
    ld c, b
    ld l, $05
    ld a, a
    rlca
    dec bc
    ld b, c
    dec b
    call nc, $0473
    ld c, a
    jr nz, jr_01f_4e34

    inc bc
    rst $00
    ld [bc], a
    ld [$5004], sp

jr_01f_4dc8:
    ld [bc], a
    add hl, bc
    ld l, $01
    rlca
    dec bc
    ld d, e
    ld l, c
    ld l, h
    db $76
    ld h, l
    ld [hl], d
    jr nz, @+$07

    ld c, $01
    ld [bc], a
    ld [$5004], sp
    ld [bc], a

jr_01f_4ddd:
    add hl, bc
    ld bc, $a105
    ld bc, $0109
    ld [hl-], a
    jr nc, jr_01f_4e07

    ld d, e
    dec b
    ld b, b
    jr nz, @+$04

    ld d, e
    ld l, $01
    rlca
    dec bc
    ld b, c
    jr nz, jr_01f_4e57

    ld [hl], l
    ld [hl], h

jr_01f_4df6:
    ld [hl], h
    inc bc
    and [hl]
    ld h, d
    ld l, a
    ld h, c
    ld [hl], d
    ld h, h
    ccf
    ld bc, $0802

Call_01f_4e02:
    add hl, bc
    ld bc, $2035
    inc b

jr_01f_4e07:
    ld a, c
    jr nz, @+$04

    ld d, e
    ld l, $01
    rlca
    dec bc
    inc sp
    jr nz, jr_01f_4e62

    inc b
    sbc d
    ld h, l
    ld [hl], e
    ld bc, $0802
    inc b
    ld d, b
    ld [bc], a
    add hl, bc
    ld l, $01
    rlca
    dec bc
    ld sp, $2030
    inc b
    ld b, a
    ld bc, $0802
    inc b
    ld d, b
    ld [bc], a
    add hl, bc
    ld l, $01
    rlca
    dec bc
    ld sp, $2030

jr_01f_4e34:
    ld c, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_4e7c

    inc b
    ld c, b
    ld bc, $0802
    add hl, bc
    ld bc, $3032
    jr nz, @+$07

    pop af
    jr nz, @+$04

    ld d, e
    ld l, $01
    rlca
    dec bc
    inc [hl]
    jr nz, jr_01f_4e53

    ld a, c
    ld [bc], a
    cp d
    ld [bc], a

jr_01f_4e53:
    ld [$5004], sp
    ld [bc], a

jr_01f_4e57:
    add hl, bc
    ld l, $01
    rlca
    dec bc
    ld sp, $2030
    ld [bc], a
    ldh a, [rSC]

jr_01f_4e62:
    cp d
    ld [bc], a
    ld [$5004], sp
    ld [bc], a
    add hl, bc
    ld l, $01
    rlca
    dec bc
    nop
    inc b
    db $fc
    ld [bc], a
    adc e
    inc b
    or a
    ld [bc], a
    cp $03
    cp a
    nop
    ld d, h
    ld [hl], d
    ld h, c

jr_01f_4e7c:
    ld h, h
    dec b
    ld a, e
    inc bc
    inc bc
    inc b
    and h
    ld h, c
    dec b
    ld l, e
    ld [hl], h
    ld h, l
    inc l
    inc b
    or b
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $00
    ld c, a
    ld c, e
    inc l
    jr nz, jr_01f_4f05

    dec b
    db $e3
    inc b
    ld [hl], d
    inc bc
    ld a, [hl-]
    add hl, bc
    ld bc, $0552
    sbc e
    dec b
    xor e
    add hl, bc
    nop
    ld l, $00
    ld [bc], a
    ld b, h
    ld [bc], a
    db $e3
    ld bc, $1c04
    ld [bc], a
    ld c, [hl]
    inc b
    dec b
    ld l, $01
    ld d, b
    ld l, h
    ld [hl], l
    ld [hl], e
    ld [bc], a
    push de
    dec b
    ld h, h
    ld h, [hl]
    dec b
    ld [c], a
    jr nz, @+$04

    ld c, [hl]
    ld l, $00
    ld [bc], a
    dec sp
    dec b
    ld h, b
    ld bc, $1c02
    inc l
    ld bc, $6577
    inc bc
    ld d, $03
    sbc d
    ld l, $00
    ld [bc], a
    db $ec
    ld [hl], e
    ld l, b
    ld l, c
    ld l, [hl]
    ld a, c
    ld [bc], a
    call c, Call_01f_7469
    inc bc
    adc c
    ld [hli], a
    ld c, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    dec b
    add b
    ld b, e
    ld h, c
    ld [hl], d
    ld h, h
    ld [hli], a
    inc b
    or e
    ld l, c
    ld [hl], h
    ld l, $01
    ld [bc], a
    ld [hl], c
    inc b
    sbc b
    inc bc
    and l
    ld [bc], a
    ld [$5004], sp
    ld [bc], a
    add hl, bc
    ld l, $01
    rlca
    dec bc

jr_01f_4f05:
    ld c, c
    jr nz, jr_01f_4f0b

    sbc d
    ld h, h
    inc bc

jr_01f_4f0b:
    ldh [rSB], a
    inc b
    rlca
    dec b
    add d
    inc bc
    call c, $012e
    inc bc
    add hl, bc
    ld [bc], a
    push af
    dec b
    ld b, d
    ld bc, $056c
    and d
    ld [hl], d
    ld l, $20
    ld b, a
    ld l, a
    jr nz, jr_01f_4f8e

    ld l, a
    ld l, l
    ld h, l
    ld l, $00
    ld [bc], a
    ld a, $02
    sub [hl]
    inc bc
    inc [hl]
    inc bc
    or b
    inc bc
    sbc d
    ld l, $00
    ld b, c
    ld c, b
    ld c, b
    ld hl, $2120
    jr nz, jr_01f_4f60

    ld bc, $e803
    inc b
    ld a, b
    ld l, h
    dec b
    sbc e
    ld l, l
    inc bc
    sub c
    inc bc
    ld a, [hl]
    jr nz, jr_01f_4fc1

    ld h, l
    ld [hl], h
    ld [hl], e
    inc bc
    and $05
    add c
    inc bc
    db $e3
    ld h, c
    jr nz, jr_01f_4fcd

    ld [hl], l
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    inc l

jr_01f_4f60:
    ld bc, $7704
    dec b
    ld [hl], e
    inc b
    jr nc, @+$65

    ld l, b
    ld l, c
    ld l, l
    ld l, [hl]
    ld h, l
    ld a, c
    jr nz, jr_01f_4f75

    ld b, e
    ld [hl], e
    ld [bc], a
    db $76
    ld [bc], a

jr_01f_4f75:
    ld b, l
    dec b
    inc c
    ld d, e
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld hl, $0220
    ld a, $01
    ld [hl], e
    ld h, e
    inc b
    inc h
    dec b
    dec bc
    inc b
    and b
    inc b
    sub h
    ld [bc], a
    adc d

jr_01f_4f8e:
    add hl, bc
    ld bc, $0573
    ld h, $09
    nop
    ld [bc], a
    pop hl
    ld h, e
    ld l, h
    dec b
    call c, $0301
    sub h
    ld [hl], e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01f_4fa7

    ld b, d
    ld l, l
    ld a, c

jr_01f_4fa7:
    ld bc, $6177
    ld l, h
    ld l, e
    ld [hl], a
    ld h, c
    ld a, c
    ld hl, $4b20
    ld h, l
    ld h, l
    ld [hl], b
    ld bc, $5f03
    ld [hl], e
    dec b
    ld h, $09
    nop
    ld [bc], a
    jp nc, $b502

jr_01f_4fc1:
    ld h, h
    dec b
    reti


    ld l, $00
    ld [bc], a
    ld [hl], d
    ld [hl], e
    dec b
    ld h, $01
    dec b

jr_01f_4fcd:
    add d
    ld [hl], a
    ld h, c
    ld l, h
    ld l, e
    ld [hl], a
    ld h, c
    ld a, c
    ccf
    nop
    inc bc
    add sp, $63
    ld l, h
    ld h, l
    dec b
    rst $08
    ld h, h
    ld [bc], a
    or h
    ld [hl], e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld hl, $0320
    ld e, b
    ld hl, $0201
    ld b, h
    jr nz, @+$63

    ld l, h
    ld [hl], e
    ld l, a
    inc b
    xor d
    ld bc, $0803
    add hl, bc
    ld bc, $0573
    ld h, $09
    nop
    inc bc
    or d

Jump_01f_5000:
    ld h, h
    ld l, c
    ld h, a
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_01f_507c

    ld [bc], a
    ld l, b
    inc bc
    and h
    ld d, h
    ld [hl], d
    ld a, c
    inc b
    inc l
    inc b
    ld l, $79
    dec l
    ld bc, $6877
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld h, a
    ld l, a
    dec b
    sbc [hl]
    nop
    nop
    inc b
    inc c
    jr nz, jr_01f_506d

    dec b
    and d
    dec b
    ld d, [hl]
    ld d, e
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_01f_5033

    dec e
    inc bc
    or d

jr_01f_5033:
    ld h, a
    ld h, c
    dec b
    sbc c
    dec b
    ld de, $6761
    ld h, l
    ld hl, $5600
    ld h, c
    ld [hl], e
    ld h, l
    ld [hl], e
    inc bc
    db $76
    ld h, l
    ld h, h
    ld hl, $2001
    ld c, c
    ld l, [hl]
    ld h, a
    ld l, a
    inc l
    jr nz, jr_01f_5094

    inc bc
    ld hl, sp+$6f
    ld [hl], d
    nop
    ld b, [hl]
    ld l, h
    ld a, c
    inc bc
    and [hl]
    ld b, e
    ld [hl], l
    ld h, e
    ld h, e
    ld l, a
    dec b
    ld d, [hl]
    ld b, [hl]
    ld l, h
    ld h, c
    ld [hl], b
    ld [hl], e
    jr nz, jr_01f_506c

    adc d
    ld l, b
    ld h, l

jr_01f_506c:
    ld l, h

jr_01f_506d:
    ld h, h
    ld l, $01
    ld c, a
    inc b
    daa
    ld [hl], a
    ld l, c
    ld [hl], e
    ld h, l
    inc l
    ld bc, $c604
    inc b

jr_01f_507c:
    jp c, $756f

    ld [hl], e
    ld l, $00
    dec d
    jr nz, @+$04

    ld hl, $1801
    jr nz, jr_01f_50cf

    inc b
    inc sp
    jr nz, jr_01f_50da

    dec b
    db $e4
    ld bc, $2016
    ld [bc], a

jr_01f_5094:
    inc d
    nop
    dec d
    jr nz, @+$04

    add hl, de
    ld bc, $2020
    jr nz, @+$4a

    ld l, a
    ld [hl], h
    jr nz, jr_01f_50a5

    sbc $73

jr_01f_50a5:
    ld bc, $2016
    ld [bc], a
    add hl, de
    ld bc, $2020
    jr nz, jr_01f_5102

    ld h, l
    ld h, c
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    nop
    jr jr_01f_50d8

    ld b, [hl]
    inc b
    ld e, b
    ld [hl], e
    nop
    rla
    jr nz, @+$04

    add hl, de
    ld bc, $2020
    jr nz, jr_01f_510e

    ld l, a
    ld [hl], h
    jr nz, jr_01f_50cc

    sbc $73

jr_01f_50cc:
    ld bc, $2016

jr_01f_50cf:
    ld [bc], a
    add hl, de
    ld bc, $2020
    jr nz, jr_01f_511a

    inc b
    dec d

jr_01f_50d8:
    jr nz, jr_01f_5122

jr_01f_50da:
    dec b
    add c
    nop
    dec d
    jr nz, jr_01f_50e4

    ret nc

    ld bc, $2017

jr_01f_50e4:
    ld [bc], a
    ld hl, $5300
    ld h, c
    ld l, l
    ld h, c
    ld [hl], e
    ld h, c
    jr nz, jr_01f_5133

    inc b
    ld a, [hl]
    ld bc, $6841
    ld h, l
    ld h, c
    ld h, h
    nop
    ld d, h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h
    inc bc
    ld l, d
    ld [bc], a
    add h
    nop

jr_01f_5102:
    ld d, e
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, c
    jr nz, jr_01f_510c

    ret nz

    dec b
    sbc [hl]

jr_01f_510c:
    nop
    rla

jr_01f_510e:
    jr nz, @+$04

    ld hl, $2001
    jr nz, jr_01f_5135

    ld d, e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h

jr_01f_511a:
    ld h, e
    ld [hl], l
    ld [hl], h
    nop
    dec d
    jr nz, @+$4f

    ld a, c

jr_01f_5122:
    jr nz, jr_01f_5128

    rst JumpTable
    dec b
    ld d, [hl]
    dec b

jr_01f_5128:
    or c
    jr nz, jr_01f_5194

    ld l, [hl]
    ld [bc], a
    or [hl]
    ld bc, $8a03
    db $76
    dec b

jr_01f_5133:
    ld [hl], b
    inc bc

jr_01f_5135:
    sbc l
    ld l, $00
    ld a, [bc]
    nop
    inc bc
    and l
    ld [bc], a
    ld b, l
    dec b
    add d
    dec b
    ld b, a
    ld bc, $7563
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, l
    dec b
    ld [hl], d
    ld [bc], a
    ld l, $01
    ld [bc], a
    db $db
    dec b
    scf
    ld l, $01
    jr nz, jr_01f_51ac

    ld h, c
    ld [hl], e
    ld [hl], l
    nop
    jr jr_01f_517c

    inc bc
    ld a, [hl]
    jr nz, @+$48

    ld l, a
    inc b
    db $ec
    ld bc, $2016
    ld [bc], a
    inc d
    nop
    ld d, a
    ld h, l
    ld [bc], a
    db $e3
    ld bc, $0254
    ld l, b
    jr nz, @+$4f

    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, $01
    jr nz, jr_01f_51c2

    ld l, a
    ld [hl], d

jr_01f_517c:
    ld l, a
    ld l, [hl]
    dec b
    call nz, $0400
    and b
    dec b
    rst AddAToHL
    ld h, l
    inc bc
    ld a, $6d
    ld a, c
    ld bc, $6f64
    ld l, l
    dec b
    db $db
    ld hl, $2001
    ld [bc], a

jr_01f_5194:
    cp h
    nop
    inc bc
    xor $67
    dec b
    reti


    inc bc
    or d
    ld [hl], h
    ld [hl], d
    dec b
    db $db
    ld l, $01
    jr nz, jr_01f_51a8

    jp c, $1500

jr_01f_51a8:
    jr nz, jr_01f_51f7

    dec b
    xor [hl]

jr_01f_51ac:
    jr nz, @+$54

    ld [hl], l
    ld [hl], l
    ld l, h
    dec b
    add b
    jr nz, jr_01f_51d5

    ld d, d
    ld h, l
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $2018
    inc bc

jr_01f_51c2:
    or c
    inc b
    inc c
    nop
    jr jr_01f_51e8

    ld [bc], a
    inc d
    ld bc, $2017
    inc bc
    ld a, b
    nop
    ld c, [hl]
    ld l, a
    jr nz, @+$06

    nop

jr_01f_51d5:
    ld [hl], e
    ld hl, $0321
    and e
    ld c, [hl]
    ld l, a
    jr nz, jr_01f_5242

    ld h, l
    ld h, [hl]
    dec b
    db $ed
    inc bc
    rst $00
    ld [hl], e
    inc b
    sub b
    inc b

jr_01f_51e8:
    xor a
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    ld hl, $1800
    jr nz, jr_01f_5236

    ld h, c
    ld l, [hl]
    ld h, a
    dec b
    ld [hl], d

jr_01f_51f7:
    jr nz, @+$22

    dec b
    ld [hli], a
    ld [hl], e
    ld hl, $1800
    jr nz, jr_01f_5247

    ld h, c
    ld [hl], d
    inc l
    jr nz, jr_01f_526c

    ld h, c
    ld [hl], d
    jr nz, @+$06

    ld sp, $013a
    jr nz, jr_01f_522f

    ld [bc], a
    daa
    dec b
    ld d, [hl]
    ld [bc], a
    db $ec
    ld h, [hl]
    ld h, c
    ld [hl], d
    ld l, $20
    ld d, h
    ld [hl], d
    ld a, c
    inc bc
    or d
    inc bc
    rst AddAToHL
    ld h, c
    jr nz, jr_01f_5296

    ld l, c
    ld h, h
    ld h, l
    ld l, $00
    inc bc
    or c
    ld b, d
    ld l, h
    ld h, c
    ld h, e

jr_01f_522f:
    ld l, e
    jr nz, jr_01f_5274

    inc b
    ld sp, $0401

jr_01f_5236:
    db $ec
    ld [hl], e
    inc bc
    ld c, $2e
    nop
    jr jr_01f_525e

    ld d, d
    ld l, a
    ld h, e
    ld l, e

jr_01f_5242:
    jr nz, jr_01f_5291

    inc bc
    jr nz, @+$75

jr_01f_5247:
    ld bc, $2020
    jr z, @+$52

    ld h, l
    ld [hl], h
    ld [hl], d
    ld l, c
    jr nz, jr_01f_5298

    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    add hl, hl
    ld bc, $0550
    db $e3
    inc b
    inc d

jr_01f_525e:
    ld h, [hl]
    inc b
    inc hl
    inc b
    or l
    ld l, $00
    dec d
    jr nz, jr_01f_5295

    inc b
    reti


    jr nz, @+$48

jr_01f_526c:
    dec b
    add c
    ld [hl], e
    dec l
    dec b
    ld d, [hl]
    ld c, b
    ld h, l

jr_01f_5274:
    ld h, c
    ld h, h
    inc b
    add [hl]
    ld [hl], e
    inc bc
    and $02
    daa
    nop
    ld c, a
    ld h, [hl]
    ld h, [hl]
    inc bc
    or b
    ld c, h
    ld h, c
    ld h, d
    ld [hl], d
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld hl, $2001
    ld b, d
    ld l, c
    ld [hl], b

jr_01f_5291:
    dec b
    sbc c
    ld h, $20

jr_01f_5295:
    inc b

jr_01f_5296:
    di
    nop

jr_01f_5298:
    rla
    jr nz, @+$04

    ld hl, $1601
    jr nz, jr_01f_52e2

    ld l, h
    dec b
    db $db
    ld l, a
    dec b
    sbc d
    ld b, a
    ld a, c
    ld l, l
    nop
    ld b, a
    ld [hl], d
    ld l, a
    ld [hl], a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld hl, $0201
    ld b, h
    inc b
    ld l, [hl]
    dec b
    ld de, $0021
    ld c, l
    ld a, c
    jr nz, jr_01f_532c

    inc b
    dec h
    ld l, c
    ld h, l
    ld [hl], e
    ld [hl], h
    inc bc
    pop de
    dec b
    inc l
    ld [hl], e
    ld [bc], a
    call c, $046d
    dec h
    ld l, c
    ld h, l
    ld [hl], e
    ld [hl], h
    inc bc
    pop de
    inc b
    nop
    ld [hl], e
    ld [bc], a
    add l
    ld h, e
    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld l, b
    inc bc
    dec de
    nop

jr_01f_52e2:
    ld [bc], a
    ld [hl], d
    ld [hl], e
    ld h, l
    ld h, l
    ld bc, $d702
    inc b
    jr nc, @+$05

    jr jr_01f_532e

    ld hl, $003f
    ld c, [hl]
    ld c, a
    inc bc
    and e
    ld c, l
    ld a, c
    jr nz, jr_01f_5367

    inc b
    dec h
    ld a, c
    jr nz, jr_01f_5303

    nop
    ld bc, $e505

jr_01f_5303:
    inc bc
    add d
    inc bc
    and l
    inc bc
    ld h, $70
    ld h, c
    ld a, c
    ld [bc], a
    ld [c], a
    inc b
    db $fd
    dec b
    sbc [hl]
    nop
    inc c
    ld [hli], a
    ld d, e
    ld l, a
    inc l
    jr nz, jr_01f_5324

    nop
    inc bc
    and e
    ld [bc], a
    ld h, b
    inc bc
    ld l, l
    ld bc, $0472

jr_01f_5324:
    sbc d
    ld h, l
    ld h, h
    ld [bc], a
    or h
    ld h, c
    ld l, h
    ld [hl], h

jr_01f_532c:
    ld h, c
    ld [hl], d

jr_01f_532e:
    ld hl, $4220
    inc bc
    rrca
    ld hl, $5701
    ld h, l
    jr nz, jr_01f_533d

    dec e
    ld [bc], a
    sub [hl]
    inc bc

jr_01f_533d:
    jp nc, Jump_01f_6373

    ld h, c
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], d
    inc bc
    rst $00
    ld [bc], a
    adc e
    ld [hl], l
    ld [hl], b
    inc bc
    ld c, $21
    ld bc, $6f53
    jr nz, jr_01f_53ca

    ld h, l
    daa
    db $76
    ld h, l
    jr nz, jr_01f_53bd

    ld [hl], d
    ld h, c
    ld h, a
    ld h, a
    dec b
    ld a, l
    inc bc
    jp nc, Jump_01f_6e69

    inc bc
    ld c, $2e
    nop

jr_01f_5367:
    inc c
    ld [hli], a
    ld d, h
    ld [bc], a
    ld e, [hl]
    inc bc
    dec sp
    inc b
    ld [bc], a
    inc l
    ld bc, $0244
    rra
    ld [bc], a
    call c, $0344
    dec b
    jr nz, jr_01f_5381

    inc e
    ld bc, $0362
    push de

jr_01f_5381:
    ld l, h
    ld a, c
    inc b
    jr jr_01f_5387

    inc bc

jr_01f_5387:
    jr nc, jr_01f_538b

    cpl
    ld [bc], a

jr_01f_538b:
    ld c, e
    jr nz, @+$04

    ld c, a
    ld bc, $f405
    ld l, a
    ld h, c
    dec b
    ld bc, $202e
    ld c, a
    ld [hl], l
    ld [hl], d
    ld bc, $5c02
    inc bc
    pop de
    ld [bc], a
    dec c
    inc bc
    add hl, hl
    ld l, h
    ld l, h
    ld bc, $0803
    ld [hl], d
    inc b
    rst AddAToHL
    ld hl, $0501
    ld c, [hl]
    inc b
    and l
    ld h, e
    inc b
    inc hl
    add hl, bc
    inc bc
    ld b, a
    ld h, c
    ld l, [hl]
    ld l, a
    ld l, [hl]
    inc b

jr_01f_53bd:
    rst $08
    ld [hl], e
    ld [hl], b
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld bc, $6e69
    ld [bc], a
    ld e, c
    db $76

jr_01f_53ca:
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, h
    inc l
    ld bc, $7469
    ld [bc], a
    push bc
    dec b
    sbc a
    ld h, h
    ld l, a
    ld l, [hl]
    inc bc
    sub c
    ld [bc], a
    ld b, h
    daa
    ld [hl], h
    jr nz, @+$07

    inc bc
    ld bc, $7375
    ld hl, $5020
    ld [hl], d
    ld h, l
    ld [hl], b
    dec b
    rst $08
    inc bc
    or d
    inc b
    ld h, [hl]
    ld [bc], a
    add b
    ld h, h
    ld l, a
    ld l, a
    ld l, l
    ld hl, $0c00
    ld [hli], a
    ld c, a
    dec b
    inc hl
    ld hl, $4901
    dec b
    ld c, c
    jr nz, jr_01f_5474

    ld l, a
    ld [hl], h
    ld [bc], a
    ldh [rSB], a
    dec b
    ld a, h
    inc bc
    inc bc
    inc b
    ld a, h
    dec b
    rst $20
    ld h, [hl]
    ld h, c
    ld [hl], d
    dec b
    ld d, l
    nop
    inc c
    ld [hli], a
    inc b
    cpl
    ld c, c
    jr nz, jr_01f_5422

    add $05

jr_01f_5422:
    inc c
    inc b
    sbc l
    inc bc
    dec c
    jr nz, @+$04

    ld sp, $0301
    jp hl


    ld [bc], a
    or e
    ld hl, $5320
    ld h, l
    ld h, l
    ld bc, $796d
    inc bc
    db $f4
    ld [bc], a
    adc c
    ld hl, $0c00
    ld [hli], a
    ld d, a
    inc bc
    and d
    ld [bc], a
    ld e, h
    ld bc, $d203
    ld [hl], e
    ld l, a
    ld [bc], a
    xor h
    ld b, l
    db $76
    ld l, c
    ld l, h
    ld bc, $034b
    and [hl]
    ld h, e
    ld h, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    ld hl, $0c00
    ld [hli], a
    ld c, b
    ld l, a
    ld l, b
    jr nz, jr_01f_54c9

    ld l, a
    ld l, b
    ld hl, $d505
    ld b, a
    ld h, c
    ld l, [hl]
    ld l, a
    ld l, [hl]
    inc bc
    or $03
    jr nc, jr_01f_5473

    ld l, h
    ld h, d
    ld [hl], l

jr_01f_5473:
    ld [hl], h

jr_01f_5474:
    ld bc, $2061
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], b
    inc bc
    ldh [rNR42], a
    ld bc, $000a
    ld hl, $4901
    ld [hl], h
    dec b
    rst JumpTable
    inc bc
    ld [$6704], a
    ld hl, $4f01
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_5504

    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [bc], a
    sub [hl]
    ld h, [hl]
    ld h, c
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    ld [bc], a
    adc h
    ld h, d
    ld a, c
    ld bc, $6173
    ld h, e
    ld [hl], d
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, e
    dec b
    ld a, e
    ld [bc], a
    adc d
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    inc l
    jr nz, @+$04

    ld c, a
    ld bc, $0577
    pop de
    ld [bc], a
    ld e, b
    ld hl, $4101
    ld l, [hl]
    ld h, h
    inc b
    dec l
    ld [bc], a
    ld c, d
    ld h, h
    ld h, l
    ld [hl], e

jr_01f_54c9:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld a, c
    ld h, l
    ld h, h
    inc bc
    and e
    ld b, l
    ld [bc], a
    ld a, [bc]
    nop
    inc c
    ld [hli], a
    ld b, a
    ld [hl], a
    ld l, a
    dec b
    inc hl
    inc bc
    and l
    ld b, a
    ld [hl], a
    ld h, c
    ld l, b
    jr nz, jr_01f_554c

    ld h, c
    ld l, b
    jr nz, jr_01f_5550

    ld h, c
    ld l, b
    inc bc
    and l
    ld b, h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld a, c
    dec b
    ld d, l
    dec b
    add c
    inc bc
    and l
    ld c, e
    dec b
    pop de
    jr nz, jr_01f_553f

    ld c, h
    ld c, h
    dec b
    sbc [hl]

Jump_01f_5502:
    nop
    inc c

jr_01f_5504:
    ld [hli], a
    ld b, a
    ld [hl], a
    ld l, a
    dec b
    inc hl
    ld hl, $0301
    adc l
    ld [bc], a
    ld c, a
    inc bc
    and l
    inc bc
    or c
    ld [bc], a
    ld c, e
    dec b
    ld d, l
    nop
    inc c
    ld [hli], a
    inc bc
    xor $67
    ld l, a
    ld [hl], h
    inc bc
    dec de
    nop
    inc c
    ld [hli], a
    ld c, [hl]
    ld h, c
    ld [bc], a
    cp a
    dec b
    ld d, [hl]
    ld [bc], a
    sub h
    ld d, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    inc b
    ld [hl], l
    dec b
    sbc b
    inc b
    rst $08
    ld l, h
    ld l, a
    ld a, c
    ld h, c
    ld l, h
    ld bc, $6568

jr_01f_553f:
    ld l, [hl]
    ld h, e
    ld l, b
    ld l, l
    ld h, c
    ld l, [hl]
    ld hl, $0201
    ld sp, $8903
    inc b

jr_01f_554c:
    ld c, l
    dec b
    ld a, l
    ld l, l

jr_01f_5550:
    inc bc
    add l
    dec b
    inc bc
    inc bc
    dec de
    ld bc, $6f53
    inc l
    jr nz, @+$05

    xor $05
    jr nz, @+$66

    ld bc, $5f03
    ld d, b
    ld a, c
    ld [hl], d
    ld h, c
    ld l, l
    ld l, c
    ld h, h
    ld bc, $7453
    dec b
    reti


    dec b
    add sp, $68
    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$71

    ld l, [hl]
    ld [hl], h
    ld l, a
    ld bc, $3a03
    dec b
    ret z

    ld hl, $4701
    ld h, l
    ld [hl], h
    dec b
    jp nc, Jump_01f_5502

    ld h, e
    ld h, c
    ld l, [hl]
    ld hl, $4220
    ld a, c
    ld [bc], a
    xor h
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    ld bc, $0574
    ld [hl-], a
    inc b
    sbc l
    ld [hl], e
    jr nz, @+$68

    ld l, h
    ld l, a
    ld [hl], a
    ld bc, $4203
    add hl, bc
    inc bc
    inc b
    reti


    ld bc, $6943
    ld [hl], h
    ld a, c
    add hl, bc
    nop
    ld l, $20
    ld c, c
    ld h, [hl]
    ld [bc], a
    jp nz, $1d04

    inc b
    ld b, [hl]
    inc l
    ld [bc], a
    jp nz, $1d04

    inc bc
    ld b, b
    dec b
    ld [hl], e
    ld bc, $9c05
    ld l, l
    ld hl, $4701
    ld h, c
    ld [bc], a
    cp a
    nop
    ld b, a
    ld h, c
    ld [bc], a
    cp a
    dec b
    ld d, [hl]
    ld [bc], a
    sub h
    ld d, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    inc b
    ld [hl], l
    dec b
    sbc b
    inc b
    rst $08
    ld l, h
    ld l, a
    ld a, c
    ld h, c
    ld l, h
    ld bc, $6568
    ld l, [hl]
    ld h, e
    ld l, b
    ld l, l
    ld h, c
    ld l, [hl]
    ld hl, $4901
    inc bc
    rlca
    ld h, h
    jr nz, @+$04

    cp e
    ld bc, $b405
    ld [hl], h
    ld [hl], d
    ld a, c
    inc bc
    and [hl]
    ld [hl], h
    ld l, a
    ld bc, $0305
    jr nz, @+$04

    ld sp, $aa02
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    xor l
    inc b
    and c
    ld bc, $696b
    ld h, h
    inc bc
    and e
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $c702
    ld bc, $0568
    and c
    ld l, h
    ld h, l
    inc bc
    dec de
    nop
    ld b, a
    ld h, c
    ld [hl], d
    jr nz, jr_01f_5693

    ld h, c
    ld [bc], a
    cp a
    ld bc, $3405
    ld c, [hl]
    ld l, a
    dec b
    ld h, a
    ld hl, $5401
    ld [bc], a
    ld l, e
    ld l, [hl]
    ld l, a
    dec b
    ld h, a
    ld bc, $7c05
    ld [bc], a
    db $eb
    jr nz, jr_01f_5649

    ld l, $01
    inc bc
    rst AddAToHL

jr_01f_5649:
    ld l, l
    ld a, c
    inc bc
    and l
    dec b
    ld d, l
    ld b, c
    ld l, b
    inc l
    inc bc
    sbc h
    inc b
    ld l, $21
    ld bc, $5702
    jr nz, jr_01f_56be

    ld [hl], d
    dec b
    db $db
    ld [hl], e
    inc l
    ld bc, $7304
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_01f_566d

    ld c, c
    ld bc, $7262

jr_01f_566d:
    ld h, c
    ld [hl], a
    ld l, [hl]
    ccf
    jr nz, jr_01f_5677

    or [hl]
    jr nz, @+$71

    ld l, [hl]

jr_01f_5677:
    ld hl, $0c00
    jr c, @+$51

    ld d, l
    ld b, e
    ld c, b
    ld hl, $5020
    ld h, l
    ld [hl], e
    ld l, e
    ld a, c
    jr nz, jr_01f_56f3

    ld l, c
    ld h, h
    ld hl, $0201
    ld l, $21
    nop
    inc c
    jr c, jr_01f_56d5

jr_01f_5693:
    ld [hl], l
    ld l, h
    ld l, h
    ld a, c
    ld [bc], a
    db $ed
    ld l, c
    ld [hl], h
    ld hl, $ba03
    ld [hl], e
    ld h, l
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    ld hl, $0c00
    jr c, jr_01f_56f0

    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $0420
    rst $20
    ld h, d
    ld a, c
    ld h, l
    ld hl, $0c00
    jr c, jr_01f_5708

    ld d, l
    ld b, e
    ld c, b
    ld l, $2e

jr_01f_56be:
    inc bc
    and e
    ld c, c
    jr nz, @+$72

    ld h, c
    ld l, c
    ld h, h
    inc bc
    inc c
    ld l, l
    ld a, c
    ld bc, $6704
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]

jr_01f_56d5:
    ld h, e
    ld h, l
    inc l
    ld bc, $7562
    ld [hl], h
    ld [bc], a
    xor c
    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld bc, $3a03
    dec b
    ld a, c
    ld [bc], a
    ld sp, $0121
    ld b, a
    ld h, c
    ld [bc], a

jr_01f_56f0:
    cp a
    nop
    inc c

jr_01f_56f3:
    jr c, jr_01f_573e

    ld l, l
    dec b
    ld d, l
    ld l, c
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    ld hl, $4e01
    ld l, a
    ld [hl], h
    dec b

jr_01f_5708:
    jr c, jr_01f_570c

    xor d
    ld [hl], h

jr_01f_570c:
    ld [hl], a
    ld l, c
    ld h, e
    ld h, l
    ld l, $2e
    ld hl, $0220
    or e
    inc l
    ld bc, $3102
    inc bc
    and l
    inc bc
    xor [hl]
    ld [hl], d
    ld [hl], d
    ld a, c
    inc bc
    and l
    inc b
    rst $20
    ld h, d
    ld a, c
    ld h, l
    ld hl, $3300
    jr nz, @+$4e

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    inc l
    ld bc, $2032
    ld d, d
    ld h, l
    ld h, a
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], d
    ld l, $00

jr_01f_573e:
    ld c, c
    inc bc
    db $76
    dec b
    ld a, [hl]
    inc b
    ld [c], a
    ld bc, $7274
    ld l, a
    ld [hl], b
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld bc, $6176
    ld h, e
    ld h, c
    inc b
    ccf
    ld l, $00
    ld b, [hl]
    ld h, l
    ld h, l
    ld l, h
    jr nz, @+$6f

    ld a, c
    inc b
    jr nz, @+$2e

    ld bc, $7473
    ld h, l
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_01f_57d1

    ld h, c
    ld a, d
    ld h, l
    dec b
    sbc [hl]
    nop
    dec b
    inc [hl]
    ld b, h
    ld l, c
    ld h, h
    jr nz, @+$4b

    dec b
    ld hl, sp+$01
    inc b
    push hl
    ccf
    nop
    ld [bc], a
    and a
    jr nz, @+$4b

    jr nz, jr_01f_5789

    rla
    inc l
    ld bc, $db04

jr_01f_5789:
    inc bc
    sbc b
    ld hl, $4900
    jr nz, jr_01f_5795

    xor a
    jr nz, jr_01f_57dc

    ld [bc], a
    db $eb

jr_01f_5795:
    ld bc, $6f67
    inc bc
    or b
    ld h, c
    jr nz, jr_01f_5811

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld bc, $6f73
    ld [hl], l
    inc b
    daa
    ld l, [hl]
    dec b
    rst JumpTable
    inc b
    ld [$002e], sp
    ld [bc], a
    ld h, d
    ld [hl], d
    ld l, c
    ld h, h
    ld h, l
    ld bc, $2061
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, l
    ld l, $01
    ld b, c
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld [bc], a
    db $f4
    ld l, c
    ld [hl], e
    ld bc, $6966
    ld l, [hl]
    ld h, l
    ld l, $00
    inc bc

jr_01f_57d1:
    xor [hl]
    jr nz, jr_01f_57d8

    rla
    ld a, c
    ld l, $00

jr_01f_57d8:
    ld b, h
    ld l, a
    jr nz, jr_01f_57df

jr_01f_57dc:
    adc e
    ld l, c
    ld l, [hl]

jr_01f_57df:
    inc bc
    and e
    ld [bc], a
    sub h
    ld d, [hl]
    ld h, c
    ld [hl], e
    ld [hl], l
    add hl, bc
    nop
    inc l
    ld [bc], a
    or h
    ld l, d
    inc bc
    ld a, l
    ld l, $20
    ld c, c
    ld [hl], e
    ld [bc], a
    adc d
    inc bc
    dec bc
    inc b
    add c
    inc bc
    ld a, [bc]
    ccf
    ld bc, $3c03
    ld l, h
    inc bc
    rst $28
    ld bc, $f604
    jr nz, jr_01f_5871

    ld h, l
    ld [hl], a
    ld h, l
    ld l, h
    ld [hl], d
    ld a, c
    ld l, $01
    rlca
    ld a, [hl-]

jr_01f_5811:
    ld b, e
    dec b
    db $ec
    inc bc
    and [hl]
    ld h, c
    jr nz, @+$04

    ld a, [hli]
    ld bc, $5105
    jr nz, jr_01f_588d

    ld [bc], a
    jp $012e


    ld [bc], a
    sub l
    ld [bc], a
    ret z

    ld bc, $6f74
    inc b
    add hl, de
    ld [bc], a
    or h
    ld c, c
    ld [hl], h
    ld h, l
    ld l, l
    ld [bc], a
    ret c

    ld bc, $e903
    dec b
    add hl, bc
    dec b
    dec b
    nop
    inc bc
    xor $02
    ld b, a
    ld h, h
    ld bc, $8105
    ld [bc], a
    add b
    inc b
    ld d, c
    ld [hl], e
    ld hl, $4400
    ld l, a
    jr nz, jr_01f_5852

    adc e
    ld l, c
    ld l, [hl]

jr_01f_5852:
    ld hl, $5701
    ld h, l
    ld l, h
    ld [bc], a
    ld [hl], e
    ld bc, $6803
    ld c, d
    inc bc
    ld a, l
    ld [hl], e
    inc bc
    and h
    inc b
    sbc [hl]
    inc bc
    ld d, $49
    jr nz, jr_01f_58cd

    ld l, a
    inc bc
    rst $20
    dec b
    cp e
    ld b, c
    inc bc
    xor c

jr_01f_5871:
    ld h, l
    dec b
    cp e
    dec b
    ld d, e
    ld bc, $bb05
    ld d, c
    ld [hl], l
    ld l, c
    ld [hl], h
    nop
    ld d, a
    dec b
    db $76
    inc b
    ld h, $02
    add l
    ld c, c
    jr nz, jr_01f_588a

    ld b, a
    ccf

jr_01f_588a:
    nop
    ld [bc], a
    db $ec

jr_01f_588d:
    ld [hl-], a
    ld [bc], a
    dec e
    ld hl, $0501
    cp e
    ld b, c
    inc bc
    xor c
    ld h, l
    dec b
    cp e
    ld d, c
    ld [hl], l
    ld l, c
    ld [hl], h
    nop
    ld [bc], a
    ld a, $02
    sub [hl]
    inc bc
    inc [hl]
    ld l, $20
    inc b
    add a
    ld l, $00
    ld e, c
    ld [bc], a
    ld c, c
    ld [bc], a
    adc d
    inc b
    xor l
    inc bc
    ld [hl], d
    inc l
    ld bc, $6f73
    ld [bc], a
    xor c
    ld h, d
    ld [hl], l
    ld a, c
    inc b
    ld h, h
    inc b
    sub c
    inc sp
    ld [bc], a
    dec e
    ld l, $00
    add hl, bc
    ld bc, $0552
    ld a, e
    ld [hl], e
    dec b

jr_01f_58cd:
    add sp, $64
    ld l, a
    jr nz, jr_01f_5940

    ld [bc], a
    jp Jump_01f_7501


    ld l, [hl]
    inc b
    sbc h
    jr nz, jr_01f_5952

    ld l, a
    ld [hl], d
    ld l, [hl]
    ld hl, $0200
    sub h
    ld d, d
    dec b
    sbc e
    inc bc
    jr z, jr_01f_58eb

    and h
    ld b, c
    ld l, [hl]

jr_01f_58eb:
    ld h, h
    ld [bc], a
    push de
    inc bc
    ld e, $01
    ld h, c
    ld [hl], e
    ld l, e
    jr nz, jr_01f_58fa

    ld c, c
    ld [bc], a
    inc de
    ccf

jr_01f_58fa:
    ld bc, $2020
    ld [bc], a
    ld [bc], a
    nop
    ld b, c
    inc bc
    xor c
    ld h, c
    ld l, h
    dec b
    xor b
    ld d, d
    inc bc
    and [hl]
    ld b, d
    ld l, a
    ld a, b
    ld h, l
    ld [hl], e
    inc bc
    and l
    ld d, a
    dec b
    db $76
    inc b
    ld h, $3f
    ld bc, $100c
    ld b, c
    inc bc
    xor c
    ld h, c
    ld l, h
    dec b
    cp e
    ld b, d
    ld l, a
    ld a, b
    nop
    ld d, h
    ld [bc], a
    db $f4
    dec b
    rst $08
    inc bc
    db $eb
    ld bc, $046d
    ld d, [hl]
    ld [bc], a
    inc de
    inc bc
    and $03
    ld a, [hl-]
    inc b
    ld [$aa02], sp
    inc b
    add h
    dec b
    and l
    inc bc
    and [hl]

jr_01f_5940:
    dec b
    ld e, l
    dec b
    ld d, c
    inc bc
    ld [$de03], a
    inc bc
    jp nc, Jump_01f_7469

    ld [hl], e
    ld [bc], a
    adc c
    ld [hl], e
    inc bc
    and h

jr_01f_5952:
    ld d, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    dec b
    ld a, [hl]
    ld [bc], a
    ld a, [hli]
    inc bc
    ld d, d
    inc bc
    add [hl]
    ld [bc], a
    ld b, a
    ld h, h
    ld bc, $e903
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [bc], a
    adc c
    ld bc, $0475
    db $10
    inc l
    inc b
    ld h, h
    ld [bc], a
    xor b
    ld h, d
    ld h, l
    inc b
    xor d
    ld h, h
    inc bc
    and h
    inc bc
    ld l, b
    dec b
    ld d, c
    ld bc, $0361
    xor c
    ld h, c
    ld l, h
    ld [hl], e
    ld l, $20
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $4702
    ld h, h
    inc l
    jr nz, @+$72

    dec b
    db $e3
    ld bc, $a502
    jr nz, jr_01f_599e

    ld d, e
    ld bc, $9403
    dec b

jr_01f_599e:
    reti


    ld [hl], e
    ld [bc], a
    jp nz, Jump_01f_6005

    jr nz, jr_01f_5a0f

    ld l, [hl]
    ld [bc], a
    ld l, d
    ld [bc], a
    inc h
    inc bc
    and h
    dec b
    ld b, c
    ld [bc], a
    and d
    inc bc
    or d
    dec b
    add hl, bc
    ld [bc], a
    xor h
    ld [bc], a
    ld a, [hli]
    ld bc, $7c05
    ld [bc], a
    push bc
    ld [hl], l
    ld [hl], e
    ld h, l
    ld l, $01
    dec b
    ld d, a
    inc bc
    add hl, hl
    ld l, h
    ld l, h
    inc bc
    and h
    rlca
    ld d, $54
    ld l, a
    ld [bc], a
    db $e3
    ld bc, $4702
    ld h, h
    ld [bc], a
    inc de
    inc l
    ld bc, $0279
    ld e, d
    ld [bc], a
    sub [hl]
    ld h, c
    jr nz, jr_01f_59e3

    inc h
    inc bc

jr_01f_59e3:
    and h
    ld d, b
    dec b
    db $e3
    inc b
    dec l
    ld [hl], d
    ld [bc], a
    inc de
    ld bc, $a502
    jr nz, jr_01f_59f6

    ld d, e
    ld bc, $e903
    ld [hl], b

jr_01f_59f6:
    ld [hl], l
    ld [hl], h
    inc bc
    inc l
    ld bc, $6e69
    ld [bc], a
    add b
    add hl, bc
    ld bc, $6f62
    ld a, b
    add hl, bc
    nop
    inc bc
    and h
    dec b
    ld b, [hl]
    ld [bc], a
    jr nc, jr_01f_5a0e

    dec b

jr_01f_5a0e:
    ld [bc], a

jr_01f_5a0f:
    ld [bc], a
    xor h
    ld c, c
    ld [hl], h
    ld h, l
    ld l, l
    ld bc, $6353
    dec b
    ccf
    jr nz, @+$63

    ld [hl], h
    inc b
    or b
    ld bc, $6974
    ld l, l
    inc bc
    add l
    dec b
    add hl, bc
    dec b
    cp d
    ld [bc], a
    ld a, [hli]
    inc bc
    and h
    ld b, a
    ld l, c
    db $76
    ld h, l
    inc b
    inc l
    ld h, c
    jr nz, jr_01f_5aaa

    ld [hl], d
    ld a, c
    inc bc
    and h
    rlca
    ld d, $54
    dec b
    db $e4
    ld [bc], a
    add b
    ld [hl], b
    dec b
    db $e3
    ld l, $01
    dec b
    cp e
    ld b, [hl]
    inc bc
    ld [hl], $05
    cp e
    dec b
    cp c
    nop
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld [bc], a
    db $76
    ld d, l
    ld [hl], e
    ld h, l
    dec b
    ld a, [hl]
    ld [bc], a
    or c
    ld bc, $0263
    and h
    inc b
    rst $30
    ld bc, $7905
    ld h, c
    ld l, [hl]
    inc bc
    rrca
    ld bc, $7d02
    inc bc
    and h
    inc b
    and b
    dec b
    ld [hl], $03
    inc e
    ld bc, $6669
    ld [bc], a
    add b
    ld [bc], a
    pop bc
    ld bc, $e505
    inc b
    ld a, d
    inc bc
    and h
    ld c, a
    ld c, e
    dec b
    ld e, [hl]
    ld [hl], a
    ld [bc], a
    ld [c], a
    inc bc
    dec bc
    add hl, bc
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], $03
    jr c, jr_01f_5ae3

    ld l, [hl]
    jr nz, jr_01f_5ab9

    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    inc l
    ld [hli], a
    ld [bc], a
    add sp, $67
    ld l, a
    inc b
    ld b, $02
    ld l, d
    ld [bc], a
    pop bc
    ld l, $20

jr_01f_5aaa:
    ld c, a
    ld l, [hl]
    ld bc, $0522
    or c
    ld a, c
    inc l
    ld [hli], a
    ld [bc], a
    jp nz, $6f62

    ld [hl], h
    ld l, b

jr_01f_5ab9:
    jr nz, jr_01f_5b1e

    dec b
    cp a
    ld l, $01
    dec b
    or c
    ld a, c
    inc b
    or c
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld hl, $4900
    inc b
    ld d, $73
    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, e
    ld bc, $1505
    ld h, a
    ld [bc], a
    xor h
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $01
    ld c, c
    ld [hl], e
    ld [bc], a
    add b
    inc b

jr_01f_5ae3:
    adc [hl]
    ld bc, $f704
    ld h, l
    ld h, h
    ccf
    ld bc, $e902
    jr nz, jr_01f_5af4

    ld [hl], $05
    dec sp
    inc b
    ld [hl], a

jr_01f_5af4:
    ld [hl], h
    ld [hl], d
    ld a, c
    ld [bc], a
    ld [hl], l
    ld hl, $4300
    ld [bc], a
    jr z, jr_01f_5b00

    inc bc

jr_01f_5b00:
    daa
    ld l, $00
    ld b, c
    inc bc
    xor c
    ld h, l
    inc bc
    or e
    ccf
    ld bc, $0202
    nop
    ld c, [hl]
    ld l, a
    ld hl, $0220
    ld b, h
    daa
    ld [hl], h
    ld bc, $2f05
    jr nz, jr_01f_5b90

    ld l, [hl]
    ld [hl], h
    ld l, c

jr_01f_5b1e:
    ld l, h
    jr nz, jr_01f_5b6a

    ld bc, $4702
    dec b
    jp nc, $0021

    inc bc
    add hl, bc
    ld [bc], a
    ld b, a
    inc b
    ld h, h
    inc b
    sub c
    ld h, [hl]
    dec b
    ld [c], a
    ld [bc], a
    adc d
    inc b
    or h
    ld [bc], a
    adc h
    inc bc
    and c
    ld bc, $fd04
    inc l
    dec b
    jp nc, $4a02

    ld [hl-], a
    ld [bc], a
    dec e
    jr nz, jr_01f_5bb8

    ld h, l
    ld [hl], d
    ld bc, $2a02
    ld l, $20
    ld [bc], a
    dec sp
    dec b
    ld h, h
    ld [hl], h
    ld [hl], a
    ld l, a
    jr nz, jr_01f_5b5a

    ld a, c
    ld [hl], e

jr_01f_5b5a:
    ld h, c
    ld l, l
    ld h, l
    ld bc, $2a02
    inc l
    ld [bc], a
    xor c
    ld h, d
    ld [hl], l
    ld a, c
    ld bc, $d905
    ld [bc], a

jr_01f_5b6a:
    ld [c], a
    inc sp
    ld [bc], a
    dec e
    inc bc
    and h
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    ld [bc], a
    xor h
    dec b
    ld d, e
    ld hl, $4101
    inc bc
    xor c
    ld h, l
    ld h, h
    ld [bc], a
    inc de
    ld bc, $0f05
    ld h, c
    ld h, h
    ld h, h
    ld h, l
    ld h, h
    ld [bc], a
    ld b, e
    dec b
    ld d, e
    ld l, $20
    ld d, a

jr_01f_5b90:
    ld [bc], a
    cp b
    ld bc, $6005
    dec b
    ld a, [hl]
    ld [bc], a
    ld a, [hli]
    inc l
    ld bc, $2005
    dec b
    jp nc, $d302

    inc bc
    dec bc
    dec b
    ld d, e
    inc bc
    or d
    inc bc
    dec bc
    add hl, bc
    ld bc, $6f62
    ld a, b
    inc b
    jr z, @+$56

    ld h, c
    ld l, h
    ld l, e
    inc bc
    or b
    ld l, l
    ld h, l

jr_01f_5bb8:
    inc bc
    or d
    ld [hl], e
    ld h, l
    ld h, l
    ld [bc], a
    add b
    dec b
    ld d, e
    ld l, $01
    inc bc
    xor d
    inc bc
    ld h, c
    ld h, c
    ld bc, $6570
    ld h, l
    ld l, e
    jr nz, @+$63

    inc bc
    sbc e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $00
    inc b
    xor $41
    ld l, h
    ld l, h
    ld [bc], a
    ld l, d
    ld [bc], a
    pop af
    jr nz, jr_01f_5be3

    push af
    inc b

jr_01f_5be3:
    cp e
    ld [bc], a
    ld b, a
    ld h, h
    ld l, $00
    inc b
    xor $02
    ld a, $01
    ld [bc], a
    push af
    ld h, c
    ld l, [hl]
    ld a, c
    ld [bc], a
    inc de
    ld bc, $6e69
    ld [bc], a
    add b
    dec b
    ld d, e
    ld hl, $4400
    ld l, a
    ld [bc], a
    push de
    dec b
    ld h, b
    ld bc, $6f74
    inc bc
    rlca
    inc bc
    dec hl
    ccf
    ld bc, $0220
    ld [bc], a
    nop
    ld [bc], a
    ld b, b
    inc b
    add sp, $02
    sbc c
    ld [bc], a
    ld a, [hli]
    dec b
    rst JumpTable
    ld l, $02
    add sp, $61
    ld h, h
    ld h, h
    inc bc
    ld d, e
    ld [bc], a
    ld l, d
    dec b
    ld d, e
    ld hl, $0200
    sub h
    ld d, d
    dec b
    sbc e
    inc bc
    jr z, jr_01f_5c52

    ld bc, $8d03
    dec b
    ld [$7265], sp
    inc bc
    pop de
    add hl, bc
    ld bc, $3e03
    ld [bc], a
    xor e
    ld [hl], e
    inc bc
    db $e4
    ld d, e
    ld h, c
    ld a, c
    dec b
    ld a, [hl]
    ld [bc], a
    xor e
    inc l
    ld bc, $726f
    jr nz, jr_01f_5cb1

    ld [hl], e
    ld l, e

jr_01f_5c52:
    jr nz, jr_01f_5c56

    adc e
    ld h, c

jr_01f_5c56:
    ld bc, $ab02
    ld l, $20
    ld c, l
    dec b
    db $e4
    ld bc, $0b03
    ld h, e
    ld l, b
    ld l, a
    ld l, c
    ld h, e
    inc bc
    sub c
    dec b
    cp e
    ld d, e
    ld h, c
    ld a, c
    dec b
    cp e
    ld b, c
    ld [hl], e
    ld l, e
    ld bc, $bb05
    ld d, c
    ld [hl], l
    ld l, c
    ld [hl], h
    nop
    ld [hli], a
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_01f_5cc1

    ld h, d
    dec b
    pop hl
    ld bc, $0352
    and [hl]
    inc b
    rst JumpTable
    ld [hl], e
    ld l, $22
    ld bc, $a803
    nop
    ld [bc], a
    dec sp
    inc b
    ld h, e
    ld [bc], a
    or h
    ld [bc], a
    db $10
    ld [bc], a
    xor h
    add hl, bc
    inc bc
    ld d, d
    dec b
    ld a, l
    inc bc
    jr z, @+$07

    jp c, Jump_01f_646c

    ld [bc], a
    jp nz, $9905

    ld h, c
    ld l, [hl]
    jr nz, @+$04

    ccf
    ld bc, $1805

jr_01f_5cb1:
    jr nz, jr_01f_5d1a

    ld h, c
    ld l, l
    ld h, l
    ld [bc], a
    jp nz, $0405

    ld h, l
    ld h, h
    inc l
    ld [bc], a
    pop hl
    inc b
    ld l, b

jr_01f_5cc1:
    ld bc, $7469
    jr nz, jr_01f_5cc8

    ld e, c
    add hl, bc

jr_01f_5cc8:
    inc bc
    ld d, d
    dec b
    ld a, l
    inc bc
    jr z, jr_01f_5cd2

    ld c, $2c
    dec b

jr_01f_5cd2:
    ld d, [hl]
    ld [bc], a
    jp z, Jump_01f_7262

    inc bc
    rst $00
    ld [bc], a
    pop af
    ld [bc], a
    ld a, b
    ld l, c
    ld l, [hl]
    ld bc, $0b03
    ld [bc], a
    ccf
    ld bc, $1805
    jr nz, jr_01f_5d50

    ld h, c
    ld l, l
    ld h, l
    inc bc
    ld c, $2e
    ld bc, $6e49
    ld [bc], a
    xor h
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    dec b
    ld h, a
    inc l
    ld bc, $ca02
    inc b
    dec de
    ld [bc], a
    pop af
    jr nz, jr_01f_5d6a

    ld [hl], d
    ld l, a
    ld l, l
    inc bc
    ld c, $01
    ld [hl], h
    ld l, a
    ld [bc], a
    add b
    ld c, a
    dec b
    jp z, $0501

    ld a, d
    dec b
    jr @+$22

    ld h, a
    ld h, c
    ld l, l

jr_01f_5d1a:
    ld h, l
    inc bc
    and h
    inc b
    rst $20
    dec b
    rra
    ld [hl], e
    inc bc
    and e
    dec b
    inc de
    dec b
    ld a, [hl]
    ld [bc], a
    or c
    ld bc, $8e04
    ld [bc], a
    pop hl
    ld [hl], h
    ld [hl], a
    ld l, a
    ld bc, $7d02
    ld bc, $f804
    inc l
    ld [bc], a
    jr nc, jr_01f_5d3d

    ld h, d

jr_01f_5d3d:
    inc b
    ld d, c
    ld [bc], a
    inc de
    inc bc
    ld c, $01
    ld [bc], a
    sub b
    jr nz, jr_01f_5dbb

    ld h, c
    db $76
    inc bc
    rst $00
    dec b
    ld a, h
    ld [hl], d
    ld [bc], a

jr_01f_5d50:
    ld b, $03
    and e
    jr nz, jr_01f_5d75

    dec l
    ld c, [hl]
    ld c, a
    ld d, h
    ld b, l
    ld hl, $2d21
    ld bc, $3b02
    ld l, b
    inc bc
    ld sp, hl
    ld bc, $4d03
    ld [bc], a
    ld l, d
    inc bc
    di

jr_01f_5d6a:
    jr nz, jr_01f_5ddb

    ld [hl], d
    inc b
    xor d
    ld h, h
    dec b
    cp d
    ld [bc], a
    db $10
    inc bc

jr_01f_5d75:
    or b
    dec b
    push bc
    ld bc, $1702
    inc l
    ld [bc], a
    ld l, d
    add hl, bc
    ld bc, $3e03
    ld [bc], a
    xor e
    add hl, bc
    nop
    ld [bc], a
    add c
    inc b
    ld l, [hl]
    inc b
    ld [$002e], a
    ld c, a
    ld l, b
    inc l
    inc b
    ret nz

    ld l, h
    ld a, c
    ccf
    ld bc, $1007
    inc bc
    inc de
    jr nz, @+$4b

    inc b
    ld b, $21
    ld bc, $2049
    ld h, e
    dec b
    add c
    ld [bc], a
    sub a
    inc b
    and a
    rrca
    db $fd
    ld hl, $4c00
    inc b
    ret z

    inc bc
    adc [hl]
    inc bc
    and e
    ld a, [bc]
    ld [bc], a
    ld bc, $030a
    dec b

jr_01f_5dbb:
    ld d, [hl]
    ld c, h
    inc b
    ret z

    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    ld [hl], c
    inc b
    sbc b
    ld bc, $e504
    ld [bc], a
    ld b, $2e
    ld bc, $0243
    jr z, jr_01f_5df5

    inc bc
    and c
    ld bc, $046c
    ret z

jr_01f_5ddb:
    dec b
    ld a, e
    ld [bc], a
    ld [hl], l
    ld bc, $7905
    dec b
    sbc h
    ld [bc], a
    ld b, $01
    dec b
    ld a, h
    inc bc
    rlca
    ld h, h
    inc bc
    and $02
    ccf
    jr nz, jr_01f_5df7

    jr jr_01f_5e22

    nop

jr_01f_5df5:
    ld [bc], a
    sub h

jr_01f_5df7:
    dec b
    jr z, jr_01f_5dfd

    jr z, @+$05

    and h

jr_01f_5dfd:
    ld c, c
    jr nz, jr_01f_5e04

    ld hl, $0309
    ld [hl], d

jr_01f_5e04:
    inc bc
    rst $00
    ld h, [hl]
    inc bc
    ld [hl], $73
    inc b
    jr z, @+$59

    inc b
    xor e
    ld [bc], a
    push de
    inc b
    ld e, $61
    ld bc, $0309
    inc bc
    ld a, $66
    inc bc
    ld [hl], $04
    ld d, d
    ld [bc], a
    ld [bc], a
    nop
    ld [hli], a

jr_01f_5e22:
    ld d, d
    inc bc
    and [hl]
    dec b
    cp c
    ld bc, $6142
    ld [hl], e
    ld l, c
    ld h, e
    ld [hl], e
    ld [hli], a
    ld bc, $a803
    nop
    inc b
    db $fc
    ld h, e
    ld h, c
    ld l, [hl]
    ld [bc], a
    push de
    ld h, h
    ld l, a
    ld bc, $2061
    ld [bc], a
    pop bc
    inc b
    ld [hl], h
    ld bc, $0366
    ld [hl], $20
    ld h, d
    ld a, c
    ld bc, $4803
    ccf
    ld bc, $0454
    adc l
    ld [bc], a
    adc b
    ld h, c
    ld bc, $c102
    ld l, $00
    inc bc
    ld [hl], h
    add hl, bc
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], $02
    call nc, Call_01f_4d03
    inc b
    jr jr_01f_5e69

    ld [bc], a

jr_01f_5e69:
    ld a, [hli]
    jr nz, jr_01f_5ede

    ld h, l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    dec b
    rst AddAToHL
    ld [hl], e
    ld bc, $0b03
    ld [bc], a
    pop bc
    inc b
    ld [hl], h
    ld l, $01
    ld b, h
    ld l, a
    inc bc
    ld [$9f05], a
    ld h, c
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld a, c
    inc l
    ld bc, $6f6e
    jr nz, jr_01f_5e93

    sub b
    inc bc
    sbc h
    ld l, $00

jr_01f_5e93:
    ld [bc], a
    sub h
    dec b
    jr z, jr_01f_5e9b

    jr z, @+$05

    and h

jr_01f_5e9b:
    ld c, c
    jr nz, jr_01f_5f0b

    ld h, c
    ld l, [hl]
    ld h, c
    ld h, a
    ld h, l
    ld [bc], a
    or h
    ld [bc], a
    or c
    jr nz, jr_01f_5ead

    adc [hl]
    ld l, $01
    inc bc

jr_01f_5ead:
    ld a, [hli]
    ld [bc], a
    add $49
    jr nz, @+$66

    ld l, a
    inc bc
    rst $20
    dec b
    cp e
    ld b, [hl]
    inc bc
    ld [hl], $04
    or c
    dec b
    cp c
    ld bc, $bb05
    ld c, [hl]
    ld [bc], a
    jp Jump_01f_5000


    dec b
    db $e3
    dec b
    ld a, [hl]
    ld [hl], h
    ld l, a
    ld [hl], b
    ld l, c
    ld h, e
    inc bc
    and h
    dec b
    cp e
    ld b, [hl]
    inc bc
    ld [hl], $05
    cp e
    dec b
    cp c
    ld bc, $bb05

jr_01f_5ede:
    ld c, [hl]
    ld [bc], a
    jp Jump_01f_4100


    ld h, d
    dec b
    pop hl
    ld [bc], a
    ret nc

    jr nz, jr_01f_5eef

    cp c
    ld [hl], e
    dec b
    ld d, [hl]
    dec b

jr_01f_5eef:
    inc de
    dec b
    ld a, [hl]
    ld [bc], a
    or c
    ld bc, $8e04
    ld [bc], a
    pop hl
    ld [hl], h
    ld [hl], a
    ld l, a
    ld bc, $7d02
    ld bc, $f804
    inc l
    ld [bc], a
    jr nc, jr_01f_5f07

    ld h, d

jr_01f_5f07:
    inc bc
    ld a, $05
    sbc h

jr_01f_5f0b:
    ld [bc], a
    inc de
    ld bc, $7c05
    ld [bc], a
    ld a, b
    dec b
    sbc c
    ld h, c
    ld l, [hl]
    ld bc, $3f02
    jr nz, jr_01f_5f20

    jr jr_01f_5f1e

    ld h, a

jr_01f_5f1e:
    ld h, c
    ld l, l

jr_01f_5f20:
    inc bc
    add l
    ld [bc], a
    rla
    ld bc, $9002
    jr nz, jr_01f_5f9c

    ld h, c
    db $76
    inc bc
    rst $00
    dec b
    ld a, h
    ld [hl], d
    ld [bc], a
    ld b, $03
    and h
    ld c, c
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    ld [bc], a
    ld l, d
    ld [bc], a
    ccf
    jr nz, jr_01f_5f45

    jr jr_01f_5f43

    ld b, a

jr_01f_5f43:
    ld h, c
    ld l, l

jr_01f_5f45:
    ld h, l
    jr nz, jr_01f_5f98

    ld h, c
    ld l, e
    inc bc
    sub l
    ld bc, $6e61
    inc bc
    rrca
    jr nz, jr_01f_5f57

    rrca
    ld b, e
    ld l, a
    ld l, h

jr_01f_5f57:
    ld l, a
    ld [hl], d
    inc l
    jr nz, jr_01f_5fc5

    ld l, [hl]
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    dec b
    cp d
    ld [bc], a
    or c
    jr nz, @+$06

    adc [hl]
    inc l
    ld bc, $e903
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [bc], a
    or h
    inc bc
    jr @+$22

    ld c, a
    ld c, [hl]
    ld [bc], a
    xor d
    ld [bc], a
    ld [$0370], a
    sub [hl]
    ld h, c
    ld l, [hl]
    ld a, c
    ld bc, $7a03
    ld [hl], e
    inc bc
    and h
    dec b
    ld b, [hl]
    inc l
    jr nz, @+$07

    inc b
    ld bc, $3f02
    ld bc, $8402
    inc l
    jr nz, jr_01f_600a

    ld h, c
    ld l, h

jr_01f_5f98:
    ld l, e
    inc bc
    or d
    add hl, bc

jr_01f_5f9c:
    inc bc
    dec b
    jr z, @+$05

    jr z, @+$04

    call c, $0563
    cp a
    jr nz, jr_01f_5fad

    cp c
    inc bc
    or d
    ld h, d
    inc b

jr_01f_5fad:
    ld d, c
    ld [bc], a
    inc de
    ld bc, $4204
    jr nz, jr_01f_601e

    ld l, [hl]
    inc bc
    dec h
    ld bc, $7a05
    dec b
    jr jr_01f_5fc3

    jp c, $0e03

    inc bc
    and h

jr_01f_5fc3:
    ld c, c
    ld l, [hl]

jr_01f_5fc5:
    ld [bc], a
    xor h
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    dec b
    ld h, a
    inc l
    ld bc, $ca02
    inc b
    dec de
    ld [bc], a
    pop af
    ld [bc], a
    ld a, b
    inc b
    sub l
    ld bc, $7905
    ld h, c
    ld l, [hl]
    jr nz, @+$04

    ccf
    ld bc, $1805
    jr nz, jr_01f_604d

    ld h, c
    ld l, l
    ld h, l
    ld [bc], a
    jp nz, $2404

    dec b
    inc b
    dec b
    ld a, e
    inc bc
    and h
    jr nz, jr_01f_6015

    jr nz, jr_01f_6024

    dec l
    ld c, [hl]
    ld c, a
    ld d, h
    ld b, l
    dec b
    sbc [hl]
    dec l
    dec l
    ld bc, $3b02
    ld l, b
    inc bc

Jump_01f_6005:
    ld sp, hl
    ld bc, $4d03
    ld [bc], a

jr_01f_600a:
    adc d
    inc bc
    di
    jr nz, jr_01f_6012

    db $10
    dec b
    xor b

jr_01f_6012:
    inc bc
    adc e
    ld h, d

jr_01f_6015:
    ld a, c
    ld [bc], a
    ld b, $01
    dec b
    ld a, c
    ld [bc], a
    rla
    inc l

jr_01f_601e:
    ld bc, $d203
    ld [bc], a
    xor b
    add hl, bc

jr_01f_6024:
    ld bc, $b605
    add hl, bc
    nop
    inc bc
    and h
    dec b
    or c
    inc bc
    dec hl
    ccf
    ld bc, $0202
    nop
    inc bc
    inc de
    jr nz, jr_01f_6087

    ld c, e
    ld l, $01
    ld [bc], a
    sub c
    ld h, d
    ld [hl], d
    inc b
    add l
    ld bc, $7c05
    ld [hl], d
    ld [bc], a
    inc de
    ld [bc], a
    db $d3
    ld [bc], a
    inc b
    inc l
    inc b

jr_01f_604d:
    db $ed
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_01f_6056

    ld l, b
    ld [hl], h
    ld l, a

jr_01f_6056:
    ld bc, $3605
    ld [bc], a
    add b
    dec b
    ld d, e
    ld l, $00
    ld c, a
    ld c, e
    inc bc
    and h
    dec b
    cp c
    ld [bc], a
    add b
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    ld bc, $6f42
    ld a, c
    jr nz, jr_01f_60b4

    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    ld [bc], a
    ld b, e
    inc bc
    rrca
    ld l, $01
    ld c, c
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    dec b
    ld a, [hl]
    ld b, a
    ld h, c
    ld l, l
    ld h, l

jr_01f_6087:
    ld bc, $6150
    ld l, e
    inc bc
    sub l
    ld [bc], a
    or h
    inc bc
    rrca
    jr nz, jr_01f_6097

    rrca
    ld b, e
    ld l, a
    ld l, h

jr_01f_6097:
    ld l, a
    ld [hl], d
    ld l, $01
    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01f_6115

    ld [bc], a
    ld d, h
    ld bc, $4e4f
    ld l, $01
    ld b, e
    dec b
    cp a
    jr nz, jr_01f_60ef

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld bc, $8a03

jr_01f_60b4:
    inc b
    ld a, d
    ld hl, $2001
    jr nz, jr_01f_60bf

    or c
    ld b, d
    ld h, l
    ld h, a

jr_01f_60bf:
    ld l, c
    ld l, [hl]
    ld hl, $5700
    dec b
    db $76
    jr nz, jr_01f_612c

    ld h, c
    ld [hl], h
    ld h, c
    ld [bc], a
    add c
    inc bc
    jp nc, Jump_01f_7375

    ld h, l
    ccf
    nop
    ld [bc], a
    add hl, hl
    inc b
    ld a, a
    ld [bc], a
    ccf
    jr nz, jr_01f_60e1

    jr jr_01f_60df

    ld h, h

jr_01f_60df:
    ld h, c
    ld [hl], h

jr_01f_60e1:
    ld h, c
    inc bc
    or b
    dec b
    or [hl]
    dec b
    jp c, $0021

    inc bc
    ld d, b
    ld h, [hl]
    ld l, c
    ld l, h

jr_01f_60ef:
    ld h, l
    inc bc
    adc c
    ld l, [hl]
    ld l, a
    ld bc, $3602
    ld hl, $0200
    ld b, l
    ld l, h
    ld h, l
    ld h, c
    db $76
    dec b
    ld a, e
    ccf
    ld bc, $b604
    ld [bc], a
    ld [hl], l
    ld l, $00
    ld b, h
    ld l, a
    inc bc
    ld [$6572], a
    dec b
    jr nz, jr_01f_6113

    inc bc

jr_01f_6113:
    sub h
    inc b

jr_01f_6115:
    adc [hl]
    jr nz, jr_01f_611c

    cp a
    ld bc, $8d03

jr_01f_611c:
    inc b
    ld [$4a05], a
    nop
    inc b
    and b
    dec b
    or [hl]
    inc b
    and [hl]
    ld bc, $9502
    ld [hl], d
    ld h, l

jr_01f_612c:
    dec b
    jr nz, jr_01f_6130

    inc bc

jr_01f_6130:
    sub h
    inc b
    adc [hl]
    ld l, $00
    inc bc
    or c
    dec b
    or [hl]
    jr nz, @+$68

    ld h, c
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    inc bc
    and e
    ld c, c
    ld [hl], e
    ld [bc], a
    xor h
    ld [bc], a
    or c
    ld bc, $8e04
    jr nz, jr_01f_6151

    rst $30
    ld h, l
    ld h, h
    ccf

jr_01f_6151:
    ld bc, $0449
    db $e4
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01f_61ab

    ld h, c
    ld l, e
    ld bc, $6e69
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    ld h, l
    ld h, h

Call_01f_6166:
    ld [bc], a
    ld c, b
    inc bc
    rrca
    jr nz, jr_01f_6170

    rrca
    ld b, e
    ld l, a
    ld l, h

jr_01f_6170:
    ld l, a
    ld [hl], d
    ccf
    jr nz, @+$4b

    ld [hl], e
    ld [bc], a
    or h
    inc bc
    jr jr_01f_619b

    ld c, a
    ld c, [hl]
    ccf
    ld bc, $0243
    jr z, jr_01f_61a3

    inc bc
    and c
    ld bc, $d203
    dec b
    ld [hl], $03
    sbc b
    ld hl, $0500
    cp c
    jr nz, jr_01f_6195

    jp nz, $9103

jr_01f_6195:
    inc bc
    add sp, $6d
    ld h, c
    ld a, c
    inc b

jr_01f_619b:
    dec b
    ld bc, $6572
    dec b
    jr nz, jr_01f_61a4

    or h

jr_01f_61a3:
    ld [bc], a

jr_01f_61a4:
    or c
    jr nz, jr_01f_61ab

    adc [hl]
    ld l, $00
    ld d, l

jr_01f_61ab:
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    inc b
    dec l
    daa
    db $76
    ld h, l
    jr nz, jr_01f_621e

    ld h, c
    ld h, h
    ld bc, $2061
    ld [bc], a
    ld a, [hli]
    jr nz, jr_01f_61c1

    ld b, a
    ld h, h

jr_01f_61c1:
    ld bc, $e903
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [bc], a
    adc c
    ld bc, $6572
    db $76
    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    inc l
    ld [bc], a
    jp nz, $a802

    dec b
    add hl, bc
    dec b
    jp nc, $a403

    inc bc
    xor d
    ld [bc], a
    ld b, a
    ld bc, $7469
    ld hl, $0500
    dec de
    ld l, l
    ld a, c
    ld hl, $7104
    inc b
    and e
    ld h, c
    ld l, l
    ld h, c
    ld a, d
    inc b
    and [hl]
    nop
    ld [bc], a
    ld l, $20
    ld [bc], a
    ld a, [hli]
    ld hl, $0f00
    inc [hl]
    dec b
    ld d, [hl]
    ld e, c
    ld [bc], a
    ld c, c
    jr nz, jr_01f_6279

    ld l, h
    dec b
    db $db
    ld bc, $3031
    jr nc, @+$32

    jr nz, @+$04

    jp c, $2173

    ld bc, $3507
    rrca
    inc [hl]
    dec b
    ld d, [hl]
    ld [bc], a
    ld h, b
    ld h, e
    inc bc

jr_01f_621e:
    ld hl, sp+$05
    ld a, l
    ld sp, $2c30
    jr nc, jr_01f_6256

    ld [bc], a
    dec e
    ld hl, $0701
    dec [hl]
    rrca
    inc [hl]
    dec b
    ld d, [hl]
    ld [bc], a
    ld h, b
    ld l, b
    ld h, c
    ld h, h
    jr nz, jr_01f_6268

    jr nc, @+$32

    ld bc, $5104
    ld [hl], e
    jr nz, jr_01f_6241

    ld b, a
    ld h, h

jr_01f_6241:
    ld hl, $0301
    ld l, b
    dec b
    db $f4
    ld h, l
    ld h, e
    ld l, c
    dec b
    and d
    ld [hl], e
    ld bc, $0b03
    ld h, d
    inc b
    scf
    ld hl, $0701

jr_01f_6256:
    dec [hl]
    rrca
    inc [hl]
    dec b
    ld d, [hl]
    ld e, c
    ld [bc], a
    ld c, c
    jr nz, @+$06

    ld h, e
    ld h, h
    ld bc, $9403
    inc bc
    ld [hl], l
    ld [bc], a

jr_01f_6268:
    and $04
    inc h
    ld h, c
    inc bc
    db $f4
    inc bc
    dec a
    ld hl, $0701
    dec [hl]
    add hl, bc
    ld bc, $0552
    ld a, e

jr_01f_6279:
    ld [hl], e
    dec b
    add sp, $05
    or d
    ld [bc], a
    db $d3
    add hl, bc
    ld bc, $024d
    cp c
    jr nz, @+$04

    ld d, e
    ld bc, $f502
    inc b
    ld a, e
    ld l, l
    ld [bc], a
    cp c
    ld [bc], a
    adc c
    ld [hl], e
    ld l, $01
    ld [bc], a
    dec sp
    dec b
    add hl, bc
    inc b
    ld h, $2c
    ld bc, $7469
    ld [hl], e
    jr nz, jr_01f_630f

    ld [bc], a
    cp c
    ld bc, $1803
    ld [bc], a
    ld c, d
    dec b
    ld de, $9b05
    ld [hl], h
    ld l, a
    inc bc
    add hl, de
    ld bc, $2f04
    ld a, c
    ld [bc], a
    ld e, d
    ld bc, $0805
    inc b
    inc l
    ld l, c
    ld l, [hl]
    ld [bc], a
    ld l, d
    ld [bc], a
    inc h
    ld l, $01
    inc bc
    or c
    ld l, l
    ld [bc], a
    cp c
    ld bc, $1803
    ld [bc], a
    add c
    ld h, a
    ld [hl], d
    ld h, c
    ld h, h
    ld [hl], l
    dec b
    add c
    ld a, c
    jr nz, jr_01f_634f

    ld h, l
    dec b
    db $e4
    ld l, [hl]
    ld bc, $a105
    ld [bc], a
    push de
    ld [hl], a
    inc bc
    or a
    dec b
    sbc a
    ld [bc], a
    and h
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $7469
    ld l, $20
    ld d, l
    inc b
    db $10
    ccf
    ld bc, $0202
    nop
    inc b
    xor $02
    ld a, $01
    ld [bc], a
    push af
    ld h, c
    jr nz, jr_01f_6304

    inc h
    ccf

jr_01f_6304:
    ld bc, $0349
    dec c
    inc b
    dec l
    inc l
    inc b
    db $ed
    inc b
    sub l

jr_01f_630f:
    ld hl, $0220
    ld l, $01
    ld [bc], a
    inc h
    ld l, $00
    inc b
    sbc [hl]
    ld hl, $0520
    dec de
    ld l, [hl]
    ld l, a
    ld hl, $2000
    ld [bc], a
    ret nc

    jr nz, jr_01f_636d

    inc bc
    ld [hl], $73
    dec b
    ld d, [hl]
    ld d, h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    dec b
    ld a, [hl]
    add hl, bc
    inc bc
    ld d, d
    inc bc
    rst $00
    ld b, [hl]
    inc bc
    ld [hl], $09
    nop
    ld [bc], a
    push de
    dec b
    and c
    ld bc, $2061
    ld [bc], a
    pop bc
    jr nz, jr_01f_634e

    sbc d
    ld bc, $0f05

jr_01f_634e:
    ld h, c

jr_01f_634f:
    jr nz, @+$04

    ld a, [hli]
    jr nz, @+$63

    ld [hl], e
    ld bc, $2061
    dec b
    ld e, e
    jr nz, jr_01f_63cb

    ld h, [hl]
    ld [bc], a
    ld l, d
    ld [bc], a
    pop bc
    inc b
    ld [hl], h
    ld [bc], a
    jp nc, Jump_01f_7c05

    ld [bc], a
    pop hl
    ld h, c
    jr nz, @+$04

    pop bc

jr_01f_636d:
    ld bc, $7375
    ld h, l
    dec b
    ld a, [hl]

Jump_01f_6373:
    ld [bc], a
    or c
    ld bc, $0263
    and h
    dec b
    or [hl]
    ld bc, $7774
    ld l, a
    jr nz, jr_01f_6385

    rrca
    ld b, e
    ld l, a
    ld l, h

jr_01f_6385:
    ld l, a
    ld [hl], d
    jr nz, jr_01f_638d

    ld hl, sp+$03
    and h
    ld d, h

jr_01f_638d:
    ld h, c
    ld l, h
    ld l, e
    inc bc
    or b
    add hl, bc
    inc bc
    ld b, d
    ld l, h
    ld [hl], l
    ld h, l
    ld bc, $2803
    jr nz, @+$05

    and c
    ld bc, $f704
    dec b
    ld a, e
    ld [bc], a
    ld l, d
    ld [bc], a
    ld a, l
    ld bc, $f804
    inc bc
    or b
    dec b
    or [hl]
    inc bc
    and h
    dec b
    call z, $0520
    ld [hl], $03
    rst $00
    inc bc
    dec bc
    add hl, bc
    inc bc
    ld h, [hl]
    inc bc
    ld [hl], $04
    ld [hl], l
    ld l, b
    ld h, l
    daa
    ld l, h
    ld l, h
    ld [bc], a
    ld c, h
    ld bc, $9a04
    dec b

jr_01f_63cb:
    ld a, [hl]
    ld [bc], a
    ld a, [hli]
    ld [bc], a
    sbc c
    ld [hl], e
    ld [hl], l
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [bc], a
    ld l, d
    ld [bc], a
    pop bc
    inc b
    ld [hl], h
    inc bc
    and h
    jr nz, jr_01f_63ff

    jr nz, jr_01f_640e

    dec l
    ld d, a
    ld h, c
    ld [hl], d
    ld l, [hl]
    dec b
    ld a, e
    dec l
    dec l
    ld bc, $4402
    inc b
    ld l, [hl]
    ld h, h
    ld l, a
    ld bc, $7469
    jr nz, jr_01f_63fb

    dec d
    ld h, l
    inc bc
    and h
    ld e, c

jr_01f_63fb:
    ld [bc], a
    ld e, d
    jr nz, @+$66

jr_01f_63ff:
    ld l, a
    inc b
    ld h, h
    inc bc
    ld l, c
    ld h, c
    jr nz, jr_01f_644e

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01f_645c

    ld h, c
    ld l, e

jr_01f_640e:
    ld bc, $2061
    ld [bc], a
    pop bc
    inc bc
    ld d, d
    dec b
    inc b
    ld h, l
    ld h, h
    inc bc
    and h
    dec b
    or c
    jr nz, jr_01f_6422

    rrca
    ld [hl], e
    ccf

jr_01f_6422:
    ld bc, $a803
    nop
    inc b
    rst $20
    inc bc
    inc e
    inc bc
    dec de
    ld bc, $6557
    ld l, h
    ld [bc], a
    ld [hl], e
    ld bc, $6803
    ld c, d
    inc bc
    ld a, l
    ld [hl], e
    ld l, $00
    ld [bc], a
    ld l, $20
    ld [bc], a
    ld a, [hli]
    ld bc, $0461
    db $e4
    dec b
    ld e, e
    inc bc
    db $e3
    inc b
    ld h, l
    ld [bc], a
    pop bc
    inc b
    ld [hl], h

jr_01f_644e:
    ld l, $00
    ld b, [hl]
    ld [hl], d
    ld l, c
    dec b
    rst $38
    inc b
    ld [hl], h
    ld [bc], a
    ret nc

    nop
    ld d, b
    ld l, a

jr_01f_645c:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [bc], a
    ld h, a
    ld sp, $5000
    ld l, a

Call_01f_6465:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [bc], a
    ld h, a
    ld [hl-], a
    nop

Jump_01f_646c:
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [bc], a
    ld h, a
    inc sp
    nop
    ld b, c
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld [bc], a
    ld h, a
    ld sp, $4100
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld [bc], a
    ld h, a
    ld [hl-], a
    nop
    ld b, c
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld [bc], a
    ld h, a
    inc sp
    nop
    ld d, d
    ld h, l
    ld h, h
    ld [bc], a
    ret nc

    nop
    ld b, d
    ld l, h
    ld [hl], l
    ld h, l
    ld [bc], a
    ret nc

    nop
    ld b, a
    dec b
    ccf
    ld [bc], a
    ret nc

    nop
    ld b, e
    dec b
    ld c, h
    ld h, h
    ld [bc], a
    ret nc

    nop
    ld b, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    ret nc

    nop
    ld b, d
    dec b
    or e
    ld [bc], a
    ret nc

    nop
    ld d, d
    ld h, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld h, a
    ld sp, $4700
    ld b, d
    ld b, c
    jr nz, jr_01f_64cd

    and h
    ld [bc], a
    ret nc

    nop
    ld c, l

jr_01f_64cd:
    ld h, c
    ld [hl], b
    ld l, h
    ld h, l
    daa
    ld [hl], e
    ld [bc], a
    ret nc

    nop
    ld d, e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ld h, [hl]
    ld h, c
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ret nc

    nop
    ld [bc], a
    ldh a, [rSC]
    ret nc

    nop
    ld d, h
    ld l, a
    ld [hl], e
    ld [hl], e
    ld [bc], a
    ret nc

    nop
    inc bc
    sub $02
    ld h, a
    ld sp, $0300
    sub $02
    ld h, a
    ld [hl-], a
    nop
    ld d, e
    ld [hl], a
    ld l, c
    ld l, l
    ld l, l
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    ld [bc], a
    ret nc

    nop
    ld b, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [bc], a
    ret nc

    nop
    ld c, h
    inc b
    dec h
    ld [bc], a
    ld h, a
    ld sp, $4c00
    inc b
    dec h
    ld [bc], a
    ld h, a
    ld [hl-], a
    nop
    dec b
    xor e
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    ld [bc], a
    ret nc

    nop
    ld b, a
    dec b
    ccf
    jr nz, jr_01f_6577

    ld [hl], l
    ld h, e
    ld l, e
    ld [bc], a
    ret nc

    nop
    dec b
    jr z, jr_01f_6580

    ld [hl], l
    ld h, e
    ld l, e
    ld [bc], a
    ret nc

    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_01f_658c

    ld [hl], l
    ld h, e
    ld l, e
    ld [bc], a
    ret nc

    nop
    ld d, d
    dec b
    sbc e
    ld c, h
    ld [hl], l
    ld h, e
    ld l, e
    ld [bc], a
    ret nc

    nop
    ld b, a
    dec b
    ccf
    jr nz, jr_01f_659d

    ld l, a
    ld l, h
    ld a, c
    ld [bc], a
    ret nc

    nop
    dec b
    jr z, jr_01f_65a6

    ld l, a
    ld l, h
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld d, d
    dec b
    sbc e
    ld c, b
    ld l, a
    ld l, h
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld d, e
    ld l, [hl]
    ld l, a
    ld [hl], a

Jump_01f_6572:
    ld [hl], e
    ld l, b
    ld l, a
    ld h, l
    ld [bc], a

jr_01f_6577:
    ret nc

    nop
    ld d, d
    ld l, a
    ld h, e
    daa
    ld [hl], e
    ld [bc], a
    ret nc

jr_01f_6580:
    nop
    ld d, c
    ld [hl], l
    dec b
    db $e3
    ld [hl], e
    dec b
    and c
    ld [bc], a
    ret nc

    nop
    ld d, d

jr_01f_658c:
    dec b
    sbc e
    ld c, d
    ld l, a
    ld a, c
    ld [bc], a
    ret nc

    nop
    dec b
    jr z, jr_01f_65e1

    ld l, a
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld b, a

jr_01f_659d:
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_01f_65ec

    ld l, a
    ld a, c
    ld [bc], a
    ret nc

jr_01f_65a6:
    nop
    ld b, a
    dec b
    ccf
    jr nz, jr_01f_65f6

    ld l, a
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld b, h
    ld l, c
    ld [hl], e
    ld h, e
    inc b
    ld h, a
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld d, d
    ld h, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld h, a
    ld [hl-], a
    nop
    ld c, a
    ld h, e
    ld [hl], h
    ld l, a
    ld [bc], a
    ret nc

    nop
    inc b
    ret c

    ld [bc], a
    ret nc

    nop
    dec b
    ld [hli], a
    ld [bc], a
    ret nc

    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ret nc

    nop
    inc b
    rst $00
    jr nz, jr_01f_6624

    ld h, l
    ld l, [hl]
    ld [bc], a
    ret nc

jr_01f_65e1:
    nop
    ld d, e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld [bc], a
    ret nc

    nop
    dec b
    xor e
    ld [hl], b

jr_01f_65ec:
    ld [hl], d
    ld l, a
    ld l, a
    ld h, [hl]
    ld [bc], a
    ret nc

    nop
    ld b, l
    ld l, [hl]
    ld h, l

jr_01f_65f6:
    ld [hl], d
    ld h, a
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld b, h
    ld h, d
    ld l, h
    ld l, $20
    ld b, l
    ld h, h
    ld h, a
    ld h, l
    ld [bc], a
    ret nc

    nop
    ld b, a
    ld b, d
    ld b, c
    jr nz, jr_01f_665b

    inc bc
    ccf
    ld [bc], a
    ret nc

    nop
    ld d, e
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    ld [bc], a
    ret nc

    nop
    inc b
    ld b, c
    ld [bc], a
    ret nc

    nop
    ld d, [hl]
    ld l, c

jr_01f_6624:
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld [bc], a
    ret nc

    nop
    ld d, e
    ld l, c
    ld h, a
    ld l, [hl]
    ld [bc], a
    ret nc

    nop
    ld sp, $3030
    ld [hl], h
    ld l, b
    ld [bc], a
    ret nc

    nop
    ld d, a
    ld l, b
    ld l, c
    ld [hl], e
    ld [hl], b
    ld [bc], a
    ret nc

    nop
    ld b, a
    ld h, c
    ld [hl], e
    ld l, b
    ld h, c
    ld [bc], a
    ret nc

    nop
    ld d, b
    ld h, l
    ld h, c
    ld h, e
    ld h, l
    ld [bc], a
    ret nc

    nop
    ld e, d
    ld l, a
    ld [hl], d
    ld h, c
    ld [bc], a
    ret nc

    nop
    ld b, [hl]

jr_01f_665b:
    ld l, c
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ret nc

    nop
    ld d, a
    ld l, b
    ld l, c
    ld l, l
    ld [hl], e
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [bc], a
    ret nc

    nop
    ld d, b
    ld [hl], d
    ld l, a
    ld [hl], h
    ld h, l
    ld h, e
    inc b
    ccf
    ld [bc], a
    ret nc

    nop
    ld d, e
    ld a, c
    ld l, l
    ld h, d
    ld l, a
    ld l, h
    inc bc
    db $e3
    ld h, c
    ld bc, $6604
    dec b
    ld a, e
    nop
    ld [bc], a
    inc c
    dec d
    ld bc, $1502
    dec d
    nop
    ld [bc], a
    inc c
    dec d
    dec d
    ld bc, $1502
    dec d
    dec d
    nop
    ld [bc], a
    inc c
    dec d
    dec d
    dec d
    ld bc, $1502
    dec d
    dec d
    dec d
    nop
    ld [bc], a
    dec d
    ld d, $01
    ld [bc], a
    inc c
    ld d, $00
    ld [bc], a
    dec d
    ld d, $16
    ld bc, $0c02
    ld d, $16
    nop
    ld [bc], a
    dec d
    ld d, $16
    ld d, $01
    ld [bc], a
    inc c
    ld d, $16
    ld d, $00
    ld [bc], a
    inc c
    ld a, b
    jr nz, jr_01f_66fa

    nop
    ld b, h
    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$06

    sub h
    ld l, [hl]
    dec a
    ld sp, $322f
    nop
    ld [bc], a
    inc c
    dec d
    ld bc, $1502
    ld d, $00
    ld sp, $322f
    jr nz, @+$06

    ld b, e
    jr nz, jr_01f_66ec

    ldh [rSB], a
    ld [bc], a
    dec d

jr_01f_66ec:
    ld a, b
    jr nz, @+$34

    nop
    ld d, b
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld l, b
    jr nz, jr_01f_66fa

    adc d
    dec b
    inc c

jr_01f_66fa:
    ld h, l
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    nop
    dec b

Call_01f_6704:
    xor e
    jr nz, jr_01f_670b

    ldh [rNR41], a
    dec d
    nop

jr_01f_670b:
    ld [bc], a
    ld e, e
    ld bc, $e004
    jr nz, @+$17

    nop
    dec b
    db $eb
    jr nz, @+$05

    ld [hli], a
    ld h, h
    ld hl, $4d00
    ld h, c
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_01f_6726

    ld h, [hl]
    dec b
    ld a, e
    ld [hl], e

jr_01f_6726:
    jr nz, jr_01f_673d

    nop
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, jr_01f_6799

    ld l, [hl]
    inc b
    cp [hl]
    ld bc, $9f04
    jr nz, jr_01f_673a

    sbc h
    nop
    ld c, h
    ld h, l

jr_01f_673a:
    ld l, [hl]
    ld h, a
    inc b

jr_01f_673d:
    ld [hl], a
    ld [bc], a
    ldh a, [rSB]
    dec b
    ld c, $20
    inc b
    db $dd
    nop
    ld d, h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], a
    inc bc
    rst $00
    ld h, h
    ld l, c
    ld [hl], e
    ld [hl], h
    inc b
    dec d
    jr nz, jr_01f_676b

    nop
    ld d, e
    ld l, h
    ld l, a
    ld [hl], a
    ld l, h
    ld a, c
    jr nz, jr_01f_67d1

    ld h, l
    ld h, e
    inc b
    ld h, a
    ld bc, $0d05
    jr nz, jr_01f_676b

    sub $73
    nop

jr_01f_676b:
    ld d, d
    ld h, l
    ld h, e
    inc b
    ld h, a
    jr nz, jr_01f_6777

    dec c
    ld bc, $d603
    ld [hl], e

jr_01f_6777:
    nop
    ld d, e
    ld [hl], a
    ld l, c
    ld l, l
    ld l, l
    inc bc
    and [hl]
    ld [hl], e
    ld [hl], b
    ld h, l
    dec b
    sbc e
    dec d
    nop
    ld d, e
    ld [hl], b
    dec b
    sbc c
    ld b, c
    inc b
    ld b, h
    ld bc, $6863
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], e
    inc bc
    jp z, $0400

jr_01f_6799:
    ld b, e
    jr nz, jr_01f_67fe

    ld h, l
    ld h, c
    ld l, l
    ld [hl], e
    ld bc, $7461
    jr nz, jr_01f_67d2

    ld [hl-], a
    jr nz, jr_01f_67ab

    sub $73
    nop

jr_01f_67ab:
    inc b
    ld b, e
    jr nz, jr_01f_6811

    ld h, l
    ld h, c
    ld l, l
    ld [hl], e
    ld bc, $7461
    jr nz, @+$2f

    inc sp
    inc bc
    rlca
    ld [hl], h
    ld [hl], e
    nop
    ld d, e
    ld h, l
    ld [hl], h
    jr nz, jr_01f_6837

    ld [hl], a
    ld l, a
    jr nz, jr_01f_67cb

    ld b, a
    ld bc, $7461

jr_01f_67cb:
    dec b
    jr c, jr_01f_67ce

jr_01f_67ce:
    ld sp, $322f

jr_01f_67d1:
    ld [bc], a

jr_01f_67d2:
    dec h
    ld [hl], h
    ld [hl], d
    ld h, c
    ld [hl], b
    ld [hl], e
    nop
    ld sp, $322f
    ld [bc], a
    dec h
    ld h, d
    ld h, l
    ld h, c
    ld l, l
    ld [hl], e
    nop
    ld sp, $322f
    ld [bc], a
    dec h
    inc b
    sbc l
    ld [hl], e
    nop
    ld sp, $322f
    ld [bc], a
    dec h
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, e
    dec b
    sbc e
    ld h, [hl]
    ld l, h
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], e

jr_01f_67fe:
    nop
    ld c, [hl]
    ld l, a
    ld [bc], a
    dec h
    ld h, l
    dec b
    db $ed
    ld [hl], d
    ld l, c
    dec b
    ld [hl], a
    nop
    ld c, [hl]
    ld l, a
    ld [bc], a
    dec h
    ld e, d
    ld l, a

jr_01f_6811:
    ld [hl], d
    ld h, c
    dec b
    sbc d
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    nop
    ld c, [hl]
    ld l, a
    ld [bc], a
    dec h
    ld [hl], e
    ld l, l
    inc b
    rlca
    ld [hl], d
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_01f_689f

    ld l, h
    ld l, c
    ld h, h
    inc bc
    and [hl]
    ld l, a
    ld l, [hl]
    ld bc, $6369
    ld h, l

jr_01f_6837:
    nop
    ld b, e
    ld [hl], d
    ld h, c
    ld h, e
    ld l, e
    dec b
    sbc e
    ld h, [hl]
    ld l, h
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], e
    ld bc, $ea02
    ld h, e
    ld [hl], d
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_01f_68c7

    ld l, c
    ld l, [hl]
    ld l, e
    inc bc
    and [hl]
    ld l, c
    ld l, [hl]
    ld bc, $7571
    dec b
    db $e3
    ld [hl], e
    dec b
    and c
    nop
    ld b, d
    inc b
    ld sp, $2073
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld bc, $0364
    ret c

    ld [bc], a
    adc a
    nop
    ld b, d
    inc b
    ld sp, $2073
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld bc, $0364
    ret c

    jr nz, jr_01f_6886

    sub $73
    nop

jr_01f_6886:
    dec b
    or b
    jr nz, jr_01f_68ee

    inc bc
    ret c

    ld bc, $cc04
    nop
    dec b
    or b
    jr nz, jr_01f_68f8

    inc bc
    ret c

    ld bc, $724f
    ld h, l
    jr nz, jr_01f_68df

    inc b
    ld c, b
    nop

jr_01f_689f:
    ld d, e
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    dec b
    db $d3
    ld h, [hl]
    ld [hl], h
    ld bc, $dc05
    ld [hl], h
    ld l, b
    inc bc
    db $ec
    ld h, d
    ld a, c
    nop
    ld [bc], a
    ld e, e
    ld bc, $e004
    jr nz, jr_01f_68ce

    dec d
    nop
    ld b, d
    ld h, l
    inc bc
    adc e
    ld h, c
    ld l, [hl]
    ld bc, $634f
    ld [hl], h
    ld l, a
    ld [hl], d

jr_01f_68c7:
    ld l, a
    ld l, e
    nop
    ld b, d
    ld h, l
    inc bc
    adc e

jr_01f_68ce:
    ld h, c
    ld bc, $d804
    nop
    ld b, d
    ld h, l
    inc bc
    adc e
    ld h, c
    ld bc, $2205
    nop
    ld b, d
    ld h, l
    inc bc

jr_01f_68df:
    adc e
    ld h, c
    ld bc, $1902
    nop
    ld b, d
    ld h, l
    inc bc
    push af
    ld [bc], a
    inc e
    nop
    ld b, h
    inc bc

jr_01f_68ee:
    ret c

    jr nz, jr_01f_6944

    ld [hl], b
    ld l, c
    ld l, [hl]
    ld bc, $0441
    ld b, h

jr_01f_68f8:
    nop
    ld c, [hl]
    ld l, a
    ld [bc], a
    dec h
    inc bc
    dec bc
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01f_6908

    ld b, a
    nop
    ld b, d
    ld h, l

jr_01f_6908:
    ld h, c
    ld l, l
    jr nz, @+$74

    ld h, l
    dec b
    dec l
    ld [hl], e
    ld bc, $7053
    dec b
    sbc c
    ld b, c
    inc b
    ld b, h
    nop
    ld [bc], a
    inc c
    dec d
    ld bc, $7562
    ld [hl], h
    ld [bc], a
    push de
    dec b
    rrca
    ld l, b
    ld [hl], l
    ld [hl], d
    ld [hl], h
    nop
    ld sp, $3030
    jr nc, jr_01f_694e

    inc bc
    ld e, c
    ld bc, $6c73
    dec b
    db $db
    nop
    ld sp, $2c30
    jr nc, @+$32

    ld [bc], a
    dec e
    ld bc, $0363
    ld hl, sp+$65

Call_01f_6942:
    ld h, h
    nop

jr_01f_6944:
    inc bc
    or c
    ld [bc], a
    ld c, e
    ld bc, $4f02
    jr nz, jr_01f_6950

    add b

jr_01f_694e:
    ld h, l
    ld h, h

jr_01f_6950:
    nop
    ld sp, $3030
    jr nz, jr_01f_695b

    ld e, e
    ld [hl], e
    ld bc, $8203

jr_01f_695b:
    nop
    ld sp, $3030
    jr nz, @+$06

    ld d, c
    ld [hl], e
    ld bc, $4702
    ld h, h
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_01f_6970

    db $dd

Call_01f_696d:
    ld bc, $4203

jr_01f_6970:
    ld l, d
    ld l, c
    ld l, [hl]
    ld a, b
    ld h, l
    ld [hl], e
    nop
    ld b, a
    ld [hl], d
    ld l, a
    ld [hl], a
    ld [bc], a
    rst JumpTable
    ld bc, $6147
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, @+$56

    dec b
    ld [c], a
    ld [hl], e
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_01f_69f2

    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6669
    jr nz, jr_01f_699e

    ld [hl], b
    inc bc
    and [hl]
    dec b

jr_01f_699e:
    xor e
    nop
    ld b, h
    ld l, c
    db $76
    ld h, l
    jr nz, @+$04

    sub b
    ld bc, $7262
    ld h, l
    ld h, c
    inc bc
    add hl, sp
    nop
    ld d, b
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld l, b
    jr nz, jr_01f_69b9

    adc d
    dec b
    inc c

jr_01f_69b9:
    ld h, l
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    nop
    ld [bc], a
    inc c
    ld d, $01
    dec b
    ld b, $04
    or h
    ld [hl], e
    jr nz, jr_01f_6a31

    ld h, l
    ld h, c
    ld h, h
    ld l, h
    ld a, c
    nop
    ld [bc], a
    dec d
    ld l, c
    ld [hl], e
    ld bc, $1403
    inc b
    ld h, $20
    inc bc
    sub $00
    nop
    rrca
    db $fd
    ld bc, $fc0f
    nop
    inc b
    dec a
    add hl, bc
    inc bc
    ld d, d
    ld [hl], l
    ld [hl], l
    ld l, h
    add hl, bc
    nop
    inc l

jr_01f_69f2:
    jr nz, @+$6f

    dec b
    xor [hl]
    ld bc, $7a05
    inc bc
    ld c, a
    ld [bc], a
    or d
    inc bc
    and h
    ld b, h
    ld l, a
    jr nz, jr_01f_6a7c

    ld [bc], a
    ld c, c
    inc b
    or b
    ld bc, $0e02
    ld [hl], e
    add hl, bc
    nop
    inc bc
    rst $20
    ld [bc], a
    dec sp
    inc bc
    pop hl
    inc b
    ld h, $01
    dec b
    sbc c
    inc b
    db $d3
    inc l
    ld bc, $7469
    ld [bc], a
    push bc
    inc b
    db $e3
    ld bc, $3e05
    dec b
    ld a, [hl]
    ld [hl], h
    dec b
    ld [c], a
    ld [bc], a
    sbc c
    ld h, d
    dec b
    call c, $0573

jr_01f_6a31:
    call nc, $756e
    ld [hl], h
    ld [hl], e
    inc bc
    db $e4
    ld c, c
    inc b
    adc h
    jr nz, @+$06

    call nz, $0901
    ld bc, $756e
    ld [hl], h
    ld [hl], e
    add hl, bc
    nop
    inc l
    dec b
    ld a, h
    daa
    ld l, h
    ld l, h
    ld bc, $d703
    inc b
    rlca
    ld [hl], e
    ld l, a
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld bc, $7a05
    inc bc
    add hl, sp
    ld [hl], e
    ld hl, $0201
    call Call_01f_7566
    ld l, [hl]
    jr nz, jr_01f_6aaf

    ld bc, $1d04
    inc bc
    adc a
    ld bc, $796d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    inc bc
    and h
    rlca
    inc c
    rrca
    ld a, [bc]
    dec b
    ld d, [hl]
    inc bc
    or c

jr_01f_6a7c:
    ld l, l
    dec b
    xor [hl]
    inc bc
    push hl
    ld h, [hl]
    ld h, c
    ld [hl], e
    ld h, e
    ld l, c
    ld l, [hl]
    dec b
    and d
    ld h, h
    ld [bc], a
    sbc a
    add hl, bc
    ld bc, $6147
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, jr_01f_6ae3

    ld [hl], l
    ld [hl], h
    ld [hl], e
    add hl, bc
    nop
    inc b
    dec b
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    inc bc
    inc b
    inc l
    ld bc, $e103
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6ab0

    and c
    ld [bc], a
    or h
    inc bc

jr_01f_6aaf:
    pop hl

jr_01f_6ab0:
    ld h, l
    ld [hl], d
    dec b
    sbc d
    ld h, h
    inc b
    sub b
    ld bc, $6661
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    inc bc
    sbc h
    ld [bc], a
    or h
    ld l, [hl]
    ld [hl], l
    ld [hl], h
    jr nz, jr_01f_6aca

    ld l, [hl]
    ld [hl], e
    inc bc

jr_01f_6aca:
    and h
    inc bc
    or c
    ld l, l
    dec b
    xor [hl]
    jr nz, jr_01f_6ad6

    ld b, d
    ld bc, $0361

jr_01f_6ad6:
    ld d, c
    inc bc
    inc b
    ld bc, $6572
    dec b
    ld b, b
    ld l, h
    ld a, c
    inc b
    ld c, [hl]
    ld l, b

jr_01f_6ae3:
    ld h, l
    ld bc, $e505
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01f_6af2

    jp z, $002e

    ld c, [hl]

jr_01f_6af2:
    ld h, l
    ld h, l
    ld h, h
    inc b
    or b
    inc bc
    add hl, sp
    ccf
    ld bc, $0202
    nop
    inc b
    add a
    ld l, $03
    cp d
    ld h, d
    ld [hl], l
    ld [hl], e
    ld a, c
    ld l, $00
    ccf
    ccf
    ccf
    jr nz, jr_01f_6b10

    ld b, b
    ld l, a

jr_01f_6b10:
    ld h, h
    ld h, h
    ld hl, $0400
    rst $20
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    inc bc
    and e
    ld [bc], a
    or a
    ld l, l
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, a
    ld h, l
    ld bc, $4203
    dec b
    add d
    ld [bc], a
    pop bc
    ld bc, $9905
    ld [bc], a
    inc b
    ld hl, $0301
    ld e, b
    jr nz, @+$75

    inc bc
    add c
    ld hl, $0301
    add hl, bc
    ld l, l
    inc bc
    ld [hl-], a
    inc b
    db $ed
    ld [bc], a
    jp z, $0563

    db $ec
    ld bc, $4004
    inc bc
    dec hl
    ld [bc], a
    inc de
    ld hl, $4100
    ld l, [hl]
    ld h, h
    ld [bc], a
    xor c
    inc bc
    pop af
    ld bc, $d203
    dec b
    sbc h
    ld [bc], a
    ld b, $01
    ld [hl], h
    ld l, a
    ld [bc], a
    db $e3
    dec b
    ld a, e
    inc bc
    dec hl
    ld bc, $f102
    inc bc
    and $02
    inc b
    inc bc
    ld e, [hl]
    dec b
    ld d, [hl]
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld b, h
    ld l, c
    ld h, h
    ld [bc], a
    push de
    dec b
    rrca
    inc b
    or a
    ld [bc], a
    ld [bc], a
    nop
    ld b, c
    ld [hl], e
    ld l, e
    dec b
    and b
    ld [bc], a
    ld [hl], l
    dec b
    rlca
    inc bc
    jp nc, $c802

    ld [bc], a
    or h
    ld [bc], a
    db $10
    ld l, $00
    ld c, h
    inc bc
    rst $28
    inc b
    ld b, $02
    ld l, d
    ld [bc], a
    inc h
    inc bc
    and l
    ld c, b
    ld [hl], l
    ld l, b
    ld hl, $5920
    ld h, c
    ld l, b
    ld hl, $4820
    ld h, c
    ld l, b
    inc b
    db $eb
    dec b
    ld d, $05
    ld d, $05
    ld d, $03
    and l
    ld c, b
    ld l, a
    ld [hl], a
    daa
    ld [hl], e
    inc bc
    sbc b
    ccf
    nop
    ld [bc], a
    ld a, $02
    sub [hl]
    ld h, c
    jr nz, jr_01f_6bc9

    inc h
    ccf

jr_01f_6bc9:
    ld bc, $3c03
    dec b
    ld h, [hl]
    ld [bc], a
    sub [hl]
    ld [hl], h
    ld l, a
    ld [bc], a
    ld c, h
    ld bc, $7805
    ld h, d
    ld l, a
    ld a, b
    dec b
    ret c

    nop
    ld [bc], a
    dec hl
    inc b
    and a
    ld l, l
    dec b
    xor [hl]
    dec b
    sbc d
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    ld l, $00
    rrca
    nop
    dec b
    ld d, [hl]
    ld [bc], a
    ld a, $03
    adc h
    ld bc, $8b02
    inc bc
    ld c, [hl]
    ld [bc], a
    ld d, e
    ccf
    ccf
    ccf
    inc b
    ld [hl], c
    inc b
    and e
    ld l, l
    ld l, c
    ld [hl], e
    ld [hl], e
    inc bc
    and [hl]
    dec b
    pop hl
    inc bc
    and e
    dec b
    ld h, [hl]
    ld [bc], a
    ld c, h
    inc b
    jr nc, jr_01f_6c17

    pop bc
    ld h, h
    jr nz, jr_01f_6c1a

jr_01f_6c17:
    ld c, [hl]
    ld d, e
    inc b

jr_01f_6c1a:
    ld c, a
    inc bc
    or b
    ld [hl], a
    ld h, l
    ld l, h
    inc bc
    push af
    dec b
    ld a, h
    inc bc
    or b
    inc b
    sub [hl]
    ld l, $00
    ld d, h
    ld [bc], a
    ld l, e
    inc b
    and c
    ld bc, $d304
    jr nz, jr_01f_6c37

    db $ed
    inc bc
    ld [hl], c

jr_01f_6c37:
    ld l, $20
    ld d, b
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $7469
    ld [bc], a
    ld a, h
    ld l, $00
    ld [bc], a
    ld d, $05
    cp d
    add hl, bc
    ld bc, $1a05
    dec b
    sbc d
    dec b
    ld a, [hl-]
    inc b
    ld d, d
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    ld h, h
    jr nz, jr_01f_6cd1

    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld [hl], e
    ccf
    ld bc, $0702
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    inc b
    and a
    add hl, bc
    ld bc, $024d
    cp c
    jr nz, jr_01f_6c78

    ld d, e
    ccf

jr_01f_6c78:
    ld bc, $0702
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    ld [bc], a
    ld c, [hl]
    ccf
    ld bc, $0702
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    add hl, bc
    ld bc, $cc04
    inc b
    ld d, d
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    add hl, bc
    ld bc, $616d
    ld [hl], b
    ld [hl], e
    inc b
    ld d, d
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    add hl, bc
    ld bc, $6173
    db $76
    dec b
    ld a, e
    inc b
    ld d, d
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    add hl, bc
    ld bc, $7702
    inc b
    ld d, d
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    inc b
    and a
    add hl, bc
    ld bc, $1104
    ld [hl], e

jr_01f_6cd1:
    inc b
    ld d, d
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld d, $01
    ld [bc], a
    adc e
    ld [bc], a
    dec [hl]
    ccf
    ld bc, $0702
    nop
    ld b, c
    jr nz, @+$07

    ld a, [hl-]
    inc bc
    inc c
    ld h, c
    ld bc, $1d03
    ld l, a
    ld [hl], l
    ld [hl], e
    inc bc
    dec a
    inc bc
    and e
    ld d, b
    dec b
    nop
    ld [bc], a
    pop hl
    inc b
    ld [hl], b
    ld bc, $5f03
    ld [hl], e
    inc bc
    ld b, $20

Call_01f_6d01:
Jump_01f_6d01:
    inc bc
    ld a, d
    ld bc, $7905
    inc b
    ld h, e
    ld [bc], a
    adc c
    inc l
    ld bc, $7704
    ld [hl], d
    ld h, l
    ld l, h
    dec b
    rst $28
    inc b
    ld h, h
    dec b
    ld a, c
    inc b
    db $f4
    dec b
    cp d
    ld [hl], e
    ld [hl], b
    dec b
    sbc c
    ld h, c
    inc b
    ld b, h
    ld hl, $4400
    ld h, l
    ld h, [hl]
    dec b
    db $ed
    jr nz, @+$67

    ld l, [hl]
    ld h, l
    ld l, l
    ld a, c
    ld bc, $0461
    ld b, h
    ld [hl], e
    jr nz, jr_01f_6d3a

    cp a
    ld bc, $0570

jr_01f_6d3a:
    nop
    ld [bc], a
    and e
    ld [bc], a
    ld h, h
    jr nz, jr_01f_6d44

    ld a, d
    ld l, $00

jr_01f_6d44:
    ld d, h
    ld [bc], a
    db $f4
    inc b
    inc h
    ld h, [hl]
    ld l, c
    db $76
    ld h, l
    ld bc, $7505
    inc bc
    dec sp
    add hl, bc
    ld bc, $024d
    cp c
    jr nz, @+$04

    ld d, e
    ld l, $01
    inc bc
    cp e
    inc b
    ld e, l
    inc bc
    and $03
    ld h, [hl]
    ld bc, $7702
    inc l
    ld [bc], a
    call c, $9a04
    dec b
    call nc, $0473
    ld c, a
    jr nz, jr_01f_6de7

    ld a, c
    ld [hl], b
    ld h, l
    ld bc, $6168
    inc b
    db $e4
    ld [hl], l
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld bc, $dd04
    inc bc
    and h
    ld [bc], a
    ld b, h
    daa
    ld [hl], h
    ld [bc], a
    db $e3
    ld bc, $4102
    jr nz, jr_01f_6d93

    sub b
    dec b

jr_01f_6d93:
    cp d
    add hl, bc
    ld bc, $0473
    ld h, d
    ld h, l
    ld l, h
    add hl, bc
    nop
    ld l, $00
    dec b
    call z, Call_01f_7420
    ld h, c
    ld l, e
    inc bc
    and [hl]
    ld h, c
    ld bc, $3703
    add hl, bc
    nop
    inc b
    inc a
    inc l
    jr nz, @+$72

    dec b
    nop
    ld bc, $9403
    inc bc
    ld a, d
    ld [bc], a
    ld [hl], l
    ld bc, $6f74
    inc bc
    inc b
    dec b
    dec b
    ld bc, $0350
    sub [hl]
    add hl, bc
    add h
    ld b, $80

jr_01f_6dca:
    add hl, bc
    nop
    inc bc
    or d
    dec b
    add $05
    ld a, [hl]
    inc bc
    scf
    add hl, bc
    nop
    inc bc
    and $03
    ld [$6964], sp
    ld [hl], d
    ld h, l
    ld h, e
    inc b
    ccf
    ld l, $01
    ld d, b
    dec b
    nop
    ld [bc], a

jr_01f_6de7:
    xor h
    inc bc
    ld a, d
    ld bc, $6761
    dec b
    db $db
    inc bc
    or b
    ld [hl], b
    dec b
    db $e3
    inc b
    ld [hl], d
    ld h, c
    inc bc
    inc b
    ld h, h
    jr nz, jr_01f_6dff

    scf
    add hl, bc
    nop

jr_01f_6dff:
    ld l, $00
    ld d, e
    ld h, l
    ld [hl], h
    jr nz, jr_01f_6e0a

    call z, $b003
    cp b

jr_01f_6e0a:
    cp c
    ld bc, $726f
    jr nz, jr_01f_6dca

    cp e
    ld [bc], a
    add d
    inc b
    ld de, $1804
    ld bc, $756e
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc bc
    db $e3
    inc b
    call z, $0401
    ld e, $02
    ld b, c
    ld [bc], a
    call c, Call_01f_4e02
    jr nz, jr_01f_6e91

    ld h, l
    ld h, e
    ld [hl], d
    dec b
    rst $28
    ld bc, $6903
    inc b
    sbc d
    inc b
    xor d
    inc l
    ld bc, $e705
    dec b
    ld [$7420], sp
    ld [hl], d
    ld h, c
    ld h, e
    ld l, e
    inc bc
    pop de
    ld l, b
    ld l, a
    ld [hl], a
    inc bc
    db $eb
    ld [bc], a
    jp nz, $0568

    ret nc

    ld l, $00
    ld d, b
    inc bc
    sub [hl]
    inc b
    push de
    inc bc
    or d
    db $76
    ld l, c
    ld h, l
    ld [hl], a
    ld [bc], a
    xor h
    ld l, l

Jump_01f_6e61:
    ld h, c
    ld [hl], b
    ld l, $01
    ld c, l
    ld l, a
    db $76
    ld h, l

Jump_01f_6e69:
    ld [bc], a
    xor h
    ld h, e
    ld [hl], l
    ld [hl], d
    ld [hl], e

Call_01f_6e6f:
    ld l, a
    ld [hl], d
    ld bc, $e903
    ld [hl], b
    inc bc
    sub [hl]
    cp b
    cp c
    inc bc
    or d
    ld [hl], e
    ld h, l
    ld h, l
    inc bc
    inc b
    inc b
    add b
    ld [hl], e
    ld l, $01
    ld b, h
    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_01f_6efd

    ld h, l
    ld h, a
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01f_6e91:
    inc bc
    ld b, c
    dec b
    reti


    ld [hl], e
    jr nz, jr_01f_6f11

    ld [bc], a
    ld c, c
    ld bc, $6e04
    ld a, c
    ld h, l
    ld [hl], h
    jr nz, jr_01f_6ea7

    push bc
    ld h, l
    ld h, h
    ld l, $00

jr_01f_6ea7:
    dec b
    xor c
    ld [bc], a
    xor h
    ld d, e
    ld [hl], l
    ld h, d
    dec l
    ld bc, $6373
    dec b
    ccf
    ld [bc], a
    pop hl
    ld [hl], b
    dec b
    nop
    ld bc, $d504
    jr nz, jr_01f_6f32

    ld [hl], a
    ld l, c
    ld h, e
    ld h, l
    inc bc
    or d
    ld [hl], e
    ld h, l
    ld h, l
    ld [bc], a
    xor h
    ld b, l
    inc bc
    ld l, $01
    ld d, e
    ld h, e
    dec b
    ccf
    ld l, $20
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    ld bc, $0563
    cp a
    jr nz, @+$55

    dec b
    ret nc

    ld [bc], a
    call c, $0370
    sub [hl]
    cp b
    cp c
    inc bc
    inc e
    ld bc, $9403
    ld d, e
    dec b
    ret nc

    ld [bc], a
    ret c

    ld l, $00
    ld [bc], a
    rla
    inc bc
    ld d, d
    ld h, [hl]
    inc b
    ld a, $02
    ld [hl], a
    ld a, [hl-]

jr_01f_6efd:
    ld bc, $7073
    inc b
    ld d, c
    inc l
    ld [bc], a
    or [hl]
    ld bc, $9d04
    ld [bc], a
    pop hl
    ld [bc], a
    rst $38
    ld l, $01
    inc bc
    or c
    inc bc

jr_01f_6f11:
    ld [hl], l
    ld bc, $2f03
    ld [hl], e
    ld [bc], a
    sbc a
    ld [hl], h
    ld [bc], a
    jr jr_01f_6f4a

    ld bc, $6e49
    ld [bc], a
    sub $2c
    jr nz, @+$64

    dec b
    or e
    ld bc, $c705
    ld [hl], e
    inc bc
    ld d, $73
    dec b
    rst $38
    ld bc, $d203

jr_01f_6f32:
    ld l, b
    ld l, c
    ld h, a
    ld l, b
    ld [bc], a
    ld c, b
    ld h, c
    ld l, c
    ld [hl], d
    dec sp
    ld [bc], a
    or [hl]
    ld bc, $6572
    db $76
    ld h, l
    ld h, c
    ld l, h
    ld [hl], e
    jr nz, @+$65

    dec b
    ld [c], a

jr_01f_6f4a:
    ld l, e
    ld bc, $6562
    ld h, h
    ld [hl], e

Call_01f_6f50:
    ld [bc], a
    pop hl
    ld l, h
    dec b
    db $e4
    ld bc, $6f62
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, l
    ld [hl], e
    ld l, $01
    ld c, c
    ld l, [hl]
    jr nz, jr_01f_6f67

    sbc l
    inc l
    jr nz, jr_01f_6f6c

Jump_01f_6f67:
jr_01f_6f67:
    cpl
    ld [hl], e
    ld bc, $0205

jr_01f_6f6c:
    dec b

Jump_01f_6f6d:
    rra
    jr nz, jr_01f_6fe0

    ld h, c
    ld [hl], h
    ld l, b
    ld [hl], e

Jump_01f_6f74:
    ld bc, $e903
    ld l, l
    inc bc
    jr nz, jr_01f_6fee

    ld bc, $2404
    inc b
    ld a, d
    inc bc
    or b
    ld h, d
    ld h, l
    ld bc, $0570
    db $e3
    ld h, l
    ld h, h
    ld l, $20
    ld c, c
    ld l, [hl]
    ld bc, $ff02
    inc l
    jr nz, jr_01f_7007

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $0562
    and [hl]
    ld [hl], e
    jr nz, jr_01f_7012

    ld [hl], d
    ld h, c
    ld l, c
    ld l, h
    ld [hl], e
    ld bc, $e903
    ld l, h
    dec b
    db $e4
    ld [hl], e
    ld bc, $0566
    ld [c], a
    ld a, d
    ld h, l
    ld l, $00
    ld d, b
    inc bc
    sub [hl]
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    inc bc
    or d
    ld h, c
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [bc], a
    or h
    inc b
    ld de, $ad03
    ld bc, $0370
    sub [hl]
    inc b
    push de
    inc bc
    or d
    ld [hl], e
    ld h, e
    ld [hl], d
    ld l, a
    ld l, h
    ld l, h
    jr nz, @+$04

    rst AddAToHL
    ld bc, $6373
    dec b
    ccf
    ld [hl], e
    inc bc

jr_01f_6fe0:
    and h
    inc b
    rst $00
    dec b
    rst JumpTable
    ld [bc], a
    or h
    ld c, c
    ld [hl], h
    ld h, l
    ld l, l
    ld [bc], a
    ret c

    inc l

jr_01f_6fee:
    ld bc, $9c05
    ld l, [hl]
    ld [bc], a
    xor h
    ld d, c
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $7453
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], e
    ld [bc], a

Call_01f_7001:
    ret c

    inc l
    ld bc, $9c05
    ld l, [hl]

jr_01f_7007:
    ld [bc], a
    or h
    ld b, l
    inc bc
    ld l, $02
    ret c

    inc bc
    and h
    ld c, a
    ld l, [hl]

jr_01f_7012:
    ld [bc], a
    xor h
    ld d, c
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $7453
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], e
    ld [bc], a
    ret c

    inc l
    ld bc, $ca02
    ld [hl], b
    dec b
    db $e3
    dec b
    cp d
    ld [bc], a
    ld a, [hli]
    inc bc
    or b
    dec b
    add hl, bc
    ld l, $00
    ld d, l
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01f_703d

    ld b, b
    ld [bc], a
    adc d
    add hl, bc

jr_01f_703d:
    inc bc
    inc bc
    ld b, h
    ld b, d
    ld l, c
    ld [hl], d
    ld h, h
    add hl, bc
    nop
    inc bc
    adc h
    ld [hl], e
    ld bc, $696c
    ld [hl], h
    ld [hl], h
    ld l, h
    inc bc
    ld l, d
    ld [bc], a
    dec [hl]
    ld l, $00
    ld d, d
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01f_70c9

    inc bc
    add e
    ld [hl], h
    ld l, a
    ld bc, $6e75
    ld l, h
    ld l, c
    ld [hl], h
    dec b
    jp c, $0572

    ld bc, $0021
    inc b
    sbc [hl]
    ld [bc], a
    push de
    ld [hl], e
    ld h, l
    ld h, l

Call_01f_7075:
    ld l, e
    ld bc, $e505
    ld [bc], a
    ld l, c
    ld h, l
    ld a, c
    ld h, l
    ld l, $00
    ld [bc], a
    dec hl
    inc b
    and a
    add hl, bc
    inc bc
    inc bc
    ld a, b
    add hl, bc
    nop
    inc bc
    and h
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    inc b
    or e
    ld l, c
    ld h, [hl]
    ld bc, $d203
    ld [hl], h
    dec b
    ld b, h
    ld [bc], a
    ld l, d
    dec b
    ld a, [hl-]
    ld [hl], e
    ld l, $00
    ld [bc], a
    ld h, b
    ld h, h
    dec b
    reti


    inc bc
    adc [hl]
    ld bc, $7905
    ld l, l
    inc bc
    ld [hl-], a
    ld [bc], a
    adc d
    ld h, [hl]
    ld h, c
    ld [hl], d
    inc l
    jr nz, jr_01f_711c

    ld [hl], l
    ld [hl], h
    ld [bc], a
    ld a, h
    ld bc, $0469
    db $e4
    inc b
    call c, Call_01f_7274
    ld l, c
    ld h, c
    ld l, h

jr_01f_70c9:
    ld bc, $de05
    ld [bc], a
    xor h
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, l
    ld bc, $1a05
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_01f_713e

    ld l, a
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld bc, $0236
    dec e
    ld l, $01
    ld [bc], a
    ld l, h
    ld [hl], h
    ld [hl], d
    ld a, c
    ccf
    ld bc, $0202
    nop
    dec b
    xor c
    ld [bc], a
    xor h
    dec b
    ld bc, $7374
    ld bc, $6902
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d
    ld bc, $4d04
    inc b
    jr jr_01f_716f

    ld [hl], d
    ld bc, $6f6c
    ld h, e
    ld h, c
    inc b
    ccf
    ld [hl], e
    jr nz, jr_01f_7116

    jr nc, jr_01f_7114

    ld h, c

jr_01f_7114:
    jr nz, @+$65

jr_01f_7116:
    ld l, h
    ld [hl], l
    ld h, l
    ld l, $20
    ld c, h

jr_01f_711c:
    ld l, a
    ld l, a
    ld l, e
    ld bc, $7003
    ld l, h
    ld a, c
    ld l, $00
    inc bc
    inc a
    dec b
    ld b, e
    ld [bc], a
    ld [hl], l
    ld l, $00
    dec b
    ei
    jr nz, jr_01f_7193

    inc bc
    dec a
    inc bc
    ld d, d
    inc bc
    cp l
    dec b
    ld a, d
    ld l, l
    dec b
    reti


    ld a, c

jr_01f_713e:
    ld l, $01
    ld d, e
    dec b
    ret nc

    jr nz, @+$77

    ld [hl], b
    inc bc
    xor l
    ld bc, $3003
    ld l, $00
    ld c, c
    ld l, [hl]
    ld h, e
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    ld hl, $5901
    ld [bc], a
    ld c, c
    dec b
    and b
    ld [hl], h
    ld bc, $9403
    ld h, e
    ld l, b
    dec b
    add c
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld hl, $0500
    ld c, a
    ld [bc], a

jr_01f_716f:
    xor h
    inc bc
    ld d, [hl]
    ld bc, $6964
    db $76
    ld h, l
    ld [hl], d
    ld hl, $5420
    ld l, a
    jr nz, jr_01f_71e0

    ld h, l
    inc bc
    push af
    dec b
    add d
    inc b
    adc $2c
    jr nz, jr_01f_71ef

    ld l, a
    inc bc
    or d
    inc bc
    sub h
    dec b
    ld sp, hl
    jr nz, jr_01f_71f4

    dec b
    ret nc

jr_01f_7193:
    ld bc, $e903
    dec b
    ld [bc], a
    jr nz, @+$06

    inc hl
    ld h, [hl]
    inc b
    ld a, $05
    ld l, l
    inc bc
    and $61
    jr nz, jr_01f_7218

    dec b
    ld a, e
    ld l, h
    ld h, l
    jr nz, jr_01f_721e

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld hl, $0501
    ld b, c
    ld h, d
    inc bc
    ld a, $04
    sbc a
    ld bc, $7270
    ld l, a
    ld l, a
    ld h, [hl]
    ld [bc], a
    sbc b
    dec b
    ld a, h
    ld bc, $f502
    ld h, h
    inc b
    xor l
    ld [hl], e
    ld l, a
    ld hl, $4f00
    ld l, b
    ld l, b
    inc b
    db $eb
    ld [bc], a
    ld b, b
    ld l, l
    ld a, c
    ld bc, $0109
    ld [bc], a
    push hl
    dec b
    ld hl, $e403
    ld [bc], a

jr_01f_71e0:
    ld h, b
    dec b
    ld de, $7d05
    inc b
    ld a, [hl-]
    ld hl, $5601
    ld h, l
    ld [hl], d
    ld a, c
    inc bc
    adc [hl]

jr_01f_71ef:
    inc bc
    xor l
    ld hl, $4901

jr_01f_71f4:
    jr nz, jr_01f_7257

    ld h, e
    ld h, e
    ld h, l
    ld [hl], b
    ld [hl], h
    ld [bc], a
    push de
    ld h, c
    ld [hl], e
    ld bc, $8205
    inc b
    adc $21
    jr nz, @+$56

    dec b
    db $e4
    ld bc, $0574
    ld [hl-], a
    add hl, bc
    ld bc, $6a04
    dec b
    ret c

    nop
    ld b, c
    ld [hl], d
    ld [bc], a
    ld [hl], h

jr_01f_7218:
    dec b
    di
    ld bc, $7c05
    ld [bc], a

jr_01f_721e:
    ld a, d
    ld h, d
    ld h, l
    inc b
    jr nc, jr_01f_7228

    adc $3f
    jr nz, @+$04

jr_01f_7228:
    and a
    ld bc, $0254
    ld l, e
    ld l, [hl]
    ld l, a
    dec b
    ld h, a
    ccf
    nop
    ld c, c
    inc bc
    rlca
    ld h, h
    ld [bc], a
    sbc c
    ld [bc], a
    dec c
    inc b
    ld c, e
    ld [bc], a
    or b
    ld l, $20
    inc b
    sbc [hl]
    ld bc, $2404
    ld [hl], a
    inc bc
    add l
    ld h, h
    ld l, a
    ccf
    nop
    ld [bc], a
    inc l
    ld bc, $8205
    ld [bc], a
    xor e
    jr nz, jr_01f_72c8

    dec b

jr_01f_7257:
    pop hl
    ld h, l
    ld bc, $7905
    ld [bc], a
    sbc [hl]
    ld hl, $5401
    ld [bc], a

Jump_01f_7262:
    ld l, e
    ld h, c
    jr nz, jr_01f_72ca

    ld l, c
    db $76
    inc bc
    rst $00
    dec b
    ld d, b
    jr nz, jr_01f_72cf

    ld l, l
    ld l, a
    ld l, [hl]
    ld h, a
    ld [bc], a
    or h

Call_01f_7274:
    dec b
    ld [c], a
    ld h, [hl]
    ld [hl], e
    inc b
    inc d
    inc b
    sub [hl]
    ld l, $01
    ld d, l
    ld [hl], e
    ld h, l
    ld [bc], a
    xor h
    inc b
    ld l, d
    ld bc, $2049
    ld h, a
    dec b
    ret nc

    inc bc
    add hl, de
    nop
    ld [bc], a
    ld b, h
    jr nz, jr_01f_7295

    pop hl
    dec b
    cp d

jr_01f_7295:
    ld [bc], a
    ld c, $04
    jr z, jr_01f_729e

    or c
    ld d, b
    ld l, h
    ld h, c

jr_01f_729e:
    ld l, [hl]
    ld [hl], h
    dec b
    cp e
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [bc], a
    dec de
    ld bc, $0109
    ld b, a
    ld h, c
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, jr_01f_7302

    ld [hl], l
    ld [hl], h
    inc bc
    db $e4
    ld b, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    inc bc
    sbc h
    dec b
    add b
    ld l, c
    inc b
    adc h
    ld hl, $0100
    ld l, c

jr_01f_72c8:
    inc b
    adc h

jr_01f_72ca:
    ld hl, $4900
    inc b
    adc h

jr_01f_72cf:
    inc bc
    ld l, h
    ld h, c
    jr nz, jr_01f_72d5

    add hl, bc

jr_01f_72d5:
    ld bc, $6950
    ld h, l
    ld h, e
    inc bc
    ld l, d
    inc bc
    sub $05
    ret c

    inc c
    jr z, jr_01f_72e4

    ld b, e

jr_01f_72e4:
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    dec b
    jp nc, $8202

    inc b
    ld de, $002e
    ld b, c
    jr nz, jr_01f_72f5

    ld a, [hli]
    dec b

jr_01f_72f5:
    ld l, e
    rlca
    ld [bc], a
    ld b, c
    dec b
    call nc, Call_01f_6f50
    inc b
    ccf
    add hl, bc
    nop

Jump_01f_7301:
    dec b

jr_01f_7302:
    ld l, e
    rlca
    ld [bc], a
    add hl, bc
    ld bc, $3032
    ld [bc], a
    dec e
    add hl, bc
    nop
    inc bc
    sbc a
    rlca
    ld [bc], a
    add hl, bc
    ld bc, $0335
    rlca
    ld [hl], h
    ld [hl], e
    add hl, bc
    nop
    inc bc
    sbc a
    rlca
    ld [bc], a
    ld b, c
    dec b
    call nc, Call_01f_6166
    ld l, c
    ld [hl], d
    ld a, c
    add hl, bc
    nop
    dec b
    ld l, e
    rlca
    ld [bc], a
    inc bc
    ld a, [de]
    inc b
    db $d3
    ld bc, $7369
    ld [bc], a
    rst JumpTable
    ld [bc], a
    ld [c], a
    inc bc
    pop hl
    inc bc
    and [hl]
    ld [bc], a
    ld b, c
    ld l, $00
    inc bc
    ld [hl], h
    ld l, d
    ld h, l
    ld [hl], a
    ld h, l
    ld l, h
    ld [hl], e
    jr nz, jr_01f_73af

    ld l, c
    ld [hl], h
    ld bc, $6570
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c
    ld hl, $5300
    ld l, a
    ld l, c
    ld l, h
    inc l
    inc bc
    ld a, [bc]
    inc l
    jr nz, jr_01f_73d4

    ld [hl], l
    ld l, [hl]
    inc l
    ld bc, $0572
    db $db
    inc l
    jr nz, jr_01f_73e2

    ld h, c
    ld [hl], d
    ld l, l
    ld [hl], h
    ld l, b
    inc bc
    and l
    ld c, c
    jr nz, @+$63

Jump_01f_7375:
    inc b
    sbc c
    inc b
    ld h, $05
    ld l, $04
    sbc b
    ld [hl], e
    inc bc
    db $eb
    ld bc, $3502
    dec b
    ld d, l
    nop
    ld c, a
    ld l, b
    jr nz, jr_01f_738f

    ld [$7265], sp
    inc bc
    pop de

jr_01f_738f:
    inc bc
    sub h
    ld [bc], a
    dec [hl]
    ld hl, $0201
    sub c
    ld h, c
    inc b
    sbc c
    dec b
    ld a, l
    inc bc
    dec bc
    ld h, c
    ld [hl], d
    ld [hl], d
    ld l, c
    db $76
    ld h, c
    ld l, h
    ld hl, $4901
    ld [bc], a
    ld c, h
    inc bc
    or e
    ld hl, $0200

jr_01f_73af:
    sub c
    ld l, [hl]
    ld [bc], a
    jp Jump_01f_6d01


    ld l, a
    ld [hl], d
    inc bc
    add l
    dec b
    ld b, l
    ld l, $01
    ld b, d
    ld h, l
    jr nz, jr_01f_7430

    ld l, [hl]
    ld [bc], a
    add b
    ld [hl], a
    ld h, c
    ld a, c
    ld hl, $4f00
    ld [hl], a
    ld [hl], a
    ld hl, $0420
    add a
    ld hl, $0201
    ld l, h

jr_01f_73d4:
    dec b
    sbc $03
    sbc $6d
    ld h, l
    jr nz, jr_01f_7445

    ld h, [hl]
    jr nz, jr_01f_7428

    jr nz, @+$05

    pop af

jr_01f_73e2:
    ld bc, $d203
    ld [bc], a
    inc e
    inc bc
    rst $20
    ld [bc], a
    dec sp
    inc b
    inc h
    dec b
    dec c
    ld bc, $6902
    inc b
    adc c
    inc l
    ld bc, $5c03
    jr nz, jr_01f_73ff

    ld e, $2c
    ld bc, $0573

jr_01f_73ff:
    pop hl
    ld l, b
    inc l
    jr nz, jr_01f_7408

    ld sp, $012c
    dec b

jr_01f_7408:
    sbc h
    ld l, [hl]
    inc bc
    ld bc, $012c
    ld [hl], h
    ld h, c
    ld l, e
    inc bc
    and [hl]
    inc b
    sbc d
    jr nz, jr_01f_748a

    ld [hl], h
    ld h, l
    ld [hl], b
    ld bc, $6e69
    dec b
    ld a, [hl]
    ld [hl], a

Call_01f_7420:
    ld h, c
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $0373

jr_01f_7428:
    call nc, Call_01f_7420
    ld l, b
    ld h, c
    ld l, [hl]
    ld [bc], a
    or h

jr_01f_7430:
    dec b
    or e
    ld l, $00
    ld c, $c7
    ld d, a
    ld h, l
    ld l, h
    ld [bc], a
    ld [hl], e
    ld bc, $0309
    inc bc
    ld a, e
    ld c, l
    ld [bc], a
    and [hl]
    add hl, bc
    nop

jr_01f_7445:
    inc bc
    and h
    ld [bc], a
    db $ec
    ld [hl], h
    ld l, a
    ld l, a
    inc b
    jr nz, jr_01f_7452

    or d
    ld h, a
    ld l, a

jr_01f_7452:
    jr nz, jr_01f_7457

    ld [hl], c
    inc l
    inc b

jr_01f_7457:
    db $ed
    inc b
    dec a
    inc b
    rlca
    dec b
    pop hl
    ld bc, $7a05
    inc b
    ld c, h
    ld l, $00
    ld c, $c7
    ld [bc], a
    inc sp

Call_01f_7469:
Jump_01f_7469:
    ld l, a
    ld h, [hl]
    ld bc, $5f03
    inc bc
    ld a, e
    ld d, [hl]
    ld h, c
    ld [hl], e
    ld h, l
    add hl, bc
    nop
    inc bc
    rst $20
    ld b, c
    ld l, h
    ld l, h
    jr nz, @+$65

    inc bc
    ld hl, sp+$6f
    ld [hl], d
    ld [hl], e
    ld bc, $1e03
    jr nz, jr_01f_7489

    push af
    ld l, c

jr_01f_7489:
    ld [hl], h

jr_01f_748a:
    ld hl, $0e00
    rst $00
    add hl, bc
    inc bc
    ld [bc], a
    ld e, l
    ld [bc], a
    call nc, $e705
    ld h, d
    ld l, c
    ld h, a
    dec b
    ldh [rNR41], a
    inc b
    dec e
    ld bc, $6966
    ld [hl], h
    inc b
    inc d
    inc b
    ld a, $63
    dec b
    ret nc

    ld l, $01
    ld b, d
    ld [hl], l
    ld [hl], h
    inc bc
    sbc [hl]
    dec b
    db $d3
    inc b
    jr nz, jr_01f_74b6

    inc bc

jr_01f_74b6:
    ld [hl], c
    inc bc
    and l
    inc bc
    or c
    ld [hl], b
    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_01f_74c6

    add hl, hl
    ld l, $00
    ld c, $c7

jr_01f_74c6:
    add hl, bc
    inc bc
    inc bc
    ld a, e
    ld c, l
    ld [bc], a
    and [hl]
    dec b
    ld a, a
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01f_74d7

    inc d
    jr nz, jr_01f_753f

jr_01f_74d7:
    ld h, c
    ld h, h
    ld bc, $ff02
    jr nz, @+$7b

    dec b
    call c, $012d
    inc bc
    cp h
    ld [bc], a
    adc h
    inc b
    ld l, $01
    inc bc
    and b
    ld [bc], a
    xor h
    add hl, bc
    inc bc
    ld d, h
    inc b
    ld a, l
    ld bc, $7a05
    ld [bc], a
    ld a, [de]
    jr nz, jr_01f_756c

    ld h, c
    ld l, [hl]
    ld l, e
    inc l
    ld bc, $c604
    ld h, a

Jump_01f_7501:
    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_750c

    ld b, b
    ld bc, $6f63

jr_01f_750c:
    ld l, h
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $20
    ld [bc], a
    ld b, h
    ld bc, $0463
    ld h, d
    inc b
    jr nz, @+$22

    inc bc
    db $ed
    ld h, a
    ld l, a
    inc bc
    and [hl]
    inc bc
    ld [hl], c
    ld l, $00
    ld c, $c7
    add hl, bc
    inc bc
    ld [bc], a
    ld e, l
    ld [bc], a
    call nc, Call_01f_7075
    jr nz, @+$63

    ld h, d
    ld l, a
    db $76
    ld h, l
    ld [bc], a
    adc h
    ld l, b
    ld h, l
    ld bc, $6168
    ld [hl], e
    jr nz, @+$63

jr_01f_753f:
    inc b
    jr nz, @+$2e

    inc b
    db $ed
    dec b
    sbc a
    ld [hl], c
    ld [hl], l
    ld l, c
    ld h, l
    ld [hl], h
    ld l, $00
    ld c, $c7
    ld c, h
    ld h, c
    db $76
    ld h, c
    inc b
    ld sp, hl
    ld c, c
    jr nz, jr_01f_75c0

    dec b
    and d
    ld [bc], a
    xor h
    ld h, e
    ld l, a
    ld l, h
    ld h, h
    ld l, $00
    ld c, $c7
    dec b
    ld [hl], h

Call_01f_7566:
    jr nz, jr_01f_75d0

    ld h, c
    ld h, h
    ld [bc], a
    or h

jr_01f_756c:
    add hl, bc
    ld bc, $7b03
    ld d, [hl]

Call_01f_7571:
    ld h, c
    ld [hl], e

Call_01f_7573:
    ld h, l
    inc b
    ld [hl], l
    ld c, c
    inc bc
    inc bc
    inc b
    ld l, a
    inc bc
    sbc d
    ld bc, $7469
    inc bc
    inc c
    ld sp, $3030
    jr nz, jr_01f_758c

    sub c
    ld l, $00
    ld c, $c7

jr_01f_758c:
    inc bc
    ld a, [de]
    ld a, c
    dec b
    call c, $e503
    ld [hl], e
    ld l, a
    inc bc
    ld a, h
    inc bc
    and h
    ld [bc], a
    ld sp, hl
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_75a3

    rst $38
    dec b

jr_01f_75a3:
    rst JumpTable
    inc l
    ld bc, $c604
    inc bc
    sub b
    jr nz, jr_01f_75b0

    cp e
    inc bc
    ld a, [hl-]
    ld h, e

jr_01f_75b0:
    ld l, a
    ld l, h
    ld h, h
    inc bc
    and l
    ld [bc], a
    xor [hl]
    inc bc
    push hl
    dec b
    ld h, e
    jr nz, @+$79

    ld [hl], d
    ld l, a
    ld l, [hl]

jr_01f_75c0:
    ld h, a
    ld l, $00
    ld c, $c7
    inc b
    rst $20
    jr nz, @+$05

    add hl, sp
    ld bc, $0309
    ld [bc], a
    ld e, l
    ld [bc], a

jr_01f_75d0:
    call nc, Call_01f_6704
    jr nz, jr_01f_763d

    ld l, c
    ld [hl], e
    inc b
    jr nz, @+$30

    nop
    ld c, $c7
    ld [bc], a
    call $696e
    ld h, e
    inc bc
    ld l, d
    dec b
    ld a, h
    inc bc
    or b
    inc bc
    adc e
    inc b
    inc hl
    inc bc
    sub h
    ld [hl], a
    ld h, c
    ld a, c
    inc bc
    ld c, $01
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    inc bc
    inc e
    jr nz, jr_01f_7601

    dec bc
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e

jr_01f_7601:
    ld [bc], a
    ld [hl], h
    ld h, h
    ld l, c
    ld h, h
    inc l
    ld bc, $c602
    ld c, c
    jr nz, jr_01f_767a

    inc bc
    ld [hl-], a
    ld bc, $6f73
    ld [bc], a
    jr nc, @+$04

    db $e3
    ld bc, $4205
    ld [bc], a
    inc de
    ccf
    ld bc, $0420
    inc b
    ld hl, $bf03
    nop
    ld c, $c7
    inc bc
    inc a
    ld l, h
    inc bc
    rst $28
    ld bc, $6573
    ld h, l
    ld [bc], a
    add b
    add hl, bc
    ld bc, $6f62
    ld a, b
    add hl, bc
    nop
    inc bc
    and h
    ld b, h
    ld l, a
    ld [bc], a

jr_01f_763d:
    sub a
    inc b
    sub l
    inc bc
    and l
    dec b
    ld d, a
    ld [bc], a
    ld a, h
    ld [bc], a
    db $76
    ld c, a
    ld c, e
    ld hl, $ba03
    ld h, h
    dec b
    reti


    ld hl, $0e00
    rst $00
    ld c, h
    ld l, c
    db $76
    inc bc
    and [hl]
    dec b
    dec d
    ld h, l
    inc bc
    push hl
    inc b
    ld [c], a
    ld [bc], a
    adc h
    ld l, c
    ld [hl], h
    inc bc
    or h
    dec b
    rrca
    ld l, h
    dec b
    reti


    ld l, h
    ld a, c
    dec b
    ld d, l
    nop
    ld c, $c7
    ld c, l
    ld l, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    add b
    ld l, a
    ld [hl], a

jr_01f_767a:
    ld l, [hl]
    ld bc, $0462
    scf
    ld [bc], a
    db $76
    ld c, c
    ld [hl], e
    inc bc
    sbc b
    ld [bc], a
    ld l, d
    ld h, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld [hl], h
    ld [hl], l
    ld h, h
    ld h, l
    ld l, $2e
    ccf
    nop
    dec b
    ld d, l
    ld b, d
    ld [hl], l
    ld [hl], h
    ld [bc], a
    push de
    ld h, h
    inc bc
    or a
    ld [bc], a
    push af
    ld h, c
    jr nz, @+$04

    inc h
    ld l, $01
    ld b, e
    ld [bc], a
    jr z, @+$04

    jp nc, $0279

    ld c, c
    inc b
    ld h, $2e
    nop
    ld c, $c7
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, a
    ld [bc], a
    and e
    add hl, bc
    ld bc, $0467
    add hl, bc
    jr nz, jr_01f_7733

    inc bc
    ld b, $03
    add hl, hl
    ld bc, $c904
    ld [hl], h
    ld h, c
    ld [hl], e
    ld l, e
    ld l, $01
    add hl, bc
    inc bc
    ld [bc], a
    ld e, l
    dec b
    add sp, $04
    dec e
    ld bc, $4004
    jr nz, jr_01f_773e

    ld l, a
    inc b
    inc l
    ld l, c
    ld h, [hl]
    dec b
    ldh [rSB], a
    ld l, c
    ld [hl], e
    inc b
    ld l, a
    inc b
    sub d
    inc bc
    rst $00
    ld l, b
    dec b
    push hl
    dec b
    ld b, a
    ld l, $00
    ld c, $c7
    inc bc
    or c
    ld [hl], a
    inc bc
    ld d, h
    inc bc
    push hl
    inc b
    sbc a
    inc bc
    or b
    dec b
    sub h
    inc l
    ld bc, $7304
    ld c, c
    jr nz, jr_01f_770a

    xor a
    ld l, b
    dec b

jr_01f_770a:
    and d
    ld bc, $9403
    ld h, e
    ld l, a
    ld l, h
    ld h, h
    ld l, $00
    ld b, d
    ld [hl], a
    ld h, l
    inc b
    xor b
    jr nz, jr_01f_7763

    ld l, a
    ld l, a
    ld l, l
    ld [bc], a
    db $76
    inc bc
    or c
    ld [hl], b
    ld l, a
    ld l, a
    ld [hl], d
    ld bc, $0309
    ld [bc], a
    cp h
    inc b
    jr z, jr_01f_7776

    ld h, c
    db $76
    inc bc
    and [hl]
    dec b

jr_01f_7733:
    ld a, c
    inc bc
    db $dd
    ld [bc], a
    ld c, [hl]
    inc bc
    ld c, $05
    ld d, l
    nop
    ld b, d

jr_01f_773e:
    ld [hl], a
    ld h, l
    ld h, l
    inc bc
    and l
    ld d, a
    inc bc
    and d
    inc b
    ld h, a
    inc bc
    push af
    ld [hl], h
    dec b
    ld [hl-], a
    ld [hl], h
    ld [hl], d
    inc bc
    ret c

    ld [hl], e
    ld bc, $e903
    ld h, e
    inc b
    add hl, bc
    inc b
    sub a
    ld l, [hl]
    ld h, l
    ld [hl], a
    dec b
    jp c, Jump_01f_6f6d

    ld [hl], d
    ld [hl], d

jr_01f_7763:
    ld l, a
    ld [hl], a
    ld hl, $4200
    ld [hl], a
    ld h, l
    ld h, l
    ld [bc], a
    db $76
    ld c, l
    ld a, c
    ld [bc], a
    rst JumpTable
    dec b
    push de
    ld l, h
    ld h, c
    ld l, c

jr_01f_7776:
    ld [hl], d
    dec b
    ld a, a
    ld l, c
    ld [hl], e
    inc b
    inc d
    inc b
    add e
    dec b
    sub $01
    ld [bc], a
    push af
    dec b
    ld a, c
    inc b
    ld a, b
    ld bc, $4203
    ld [hl], e
    ld h, e
    ld [hl], d
    inc b
    ld h, d
    inc bc
    and l
    inc b
    cpl
    ld [hl], a
    ld l, b
    ld a, c
    dec b
    ld c, c
    ld [bc], a
    adc d
    inc bc
    nop
    inc bc
    or b
    ld l, l
    ld h, l
    ccf
    ld hl, $003f
    ld b, d
    ld [hl], a
    ld h, l
    ld h, l
    ld [bc], a
    db $76
    ld c, b
    ld l, a
    ld [hl], a
    inc bc
    db $eb
    inc bc
    dec hl
    ld bc, $4e02
    ld [bc], a
    push bc
    ld l, c
    ld [hl], h
    ld bc, $6103
    dec b
    ld a, c
    ld [hl], d
    ld h, l
    dec b
    cp [hl]
    ld bc, $3e04
    add hl, bc
    inc bc
    ld l, h
    ld h, c
    ld l, c
    ld [hl], d
    inc b
    ld d, d
    dec b
    call z, $9c03
    jr nz, jr_01f_77d6

    db $ed
    inc bc
    nop

jr_01f_77d6:
    ld h, l
    ld h, h
    inc l
    inc b
    inc bc
    dec b
    dec c
    inc b
    xor a
    inc bc
    add a
    ld l, $00
    inc c
    ld [hli], a
    inc bc
    ld c, h
    ld hl, $5301
    ld l, a
    inc b
    inc l
    ld [hl], a
    ld h, c
    ld [hl], e
    inc bc
    dec de
    ld bc, $2603
    ld [hl], b
    ld h, c
    ld a, c
    ld hl, $0321
    and e
    ld [hli], a
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_7866

    ld a, c
    ld h, l
    ld [bc], a
    ld [c], a
    ld h, c
    ld l, [hl]
    jr nz, @+$67

    ld a, c
    ld h, l
    ld hl, $0022
    ld b, d
    ld [hl], a
    ld h, l
    ld h, l
    inc bc
    and l
    inc b
    dec a
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, h
    ld [bc], a
    db $76
    ld [bc], a
    ld [hl], c
    inc b
    sbc b
    jr nz, jr_01f_788b

    ld l, a
    ld [hl], a
    ld bc, $056d
    xor d
    ld [bc], a
    ld c, [hl]
    inc b
    inc bc
    dec b
    or d
    ld l, $01
    ld d, a
    ld h, l
    jr nz, jr_01f_7838

    ld d, l
    inc b
    and h

jr_01f_7838:
    dec b
    adc a
    jr nz, jr_01f_78a0

    ld l, a
    ld l, [hl]
    inc b
    xor b
    nop
    dec b
    ld c, [hl]
    ld [bc], a
    xor h
    ld l, l
    dec b
    pop hl
    ld l, b
    ld bc, $0205
    ld [hl], e
    inc l
    jr nz, jr_01f_78b1

    inc b
    ld b, h
    ld bc, $4203
    ld [hl], a
    ld l, c
    inc b
    or d
    ld l, $01
    inc bc
    inc a
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    dec l
    ld bc, $7568

jr_01f_7866:
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, @+$05

    ld c, c
    ld bc, $6203
    ld [hl], b
    ld [hl], d
    ld h, l
    db $76
    ld h, c
    ld l, c
    ld l, h
    ld l, $00
    ld b, c
    jr nz, jr_01f_78e2

    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    dec b
    sbc e
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    ld bc, $0477
    ld h, d
    ld h, l
    ld [hl], e

jr_01f_788b:
    ld [bc], a
    sbc a
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    dec b
    sbc e
    dec b
    ld l, l
    ld l, $00
    ld d, d
    ld h, l
    ld h, e
    dec b
    add c
    ld [bc], a

jr_01f_78a0:
    xor h
    inc b
    ld c, l
    ld bc, $d203
    ld [hl], e
    ld l, h
    ld h, c
    ld a, c
    ld [bc], a
    or h
    ld l, e
    ld l, [hl]
    inc b
    dec h
    ld [hl], e

jr_01f_78b1:
    jr nz, @+$6b

    ld l, [hl]
    ld l, $00
    ld b, c
    jr nz, jr_01f_792c

    ld l, c
    ld l, h
    dec b
    rst AddAToHL
    jr nz, jr_01f_7936

    inc b
    ld h, d
    ld bc, $fe03
    jr nz, jr_01f_7934

    ld h, l
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    ld l, $00
    inc bc
    or c
    ld l, l
    inc b
    ld d, [hl]
    jr nz, jr_01f_793d

    ld h, e
    ld h, l
    ld bc, $0566
    ld [c], a
    ld a, d
    ld h, l
    ld [hl], e
    inc b
    xor a
    ld l, $00
    inc bc

jr_01f_78e2:
    or c
    ld [hl], a
    ld h, l
    ld h, c
    ld l, e
    ld [bc], a
    add l
    inc b
    ld l, [hl]
    dec b
    jr nz, jr_01f_78f0

    or h
    ld h, d

jr_01f_78f0:
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $00
    ld c, c
    jr nz, jr_01f_7902

    add $62

jr_01f_7902:
    ld h, l
    ld bc, $0b03
    ld h, a
    ld [hl], l
    ld l, c
    ld h, h
    ld h, l
    ld l, $00
    ld b, h
    ld l, a
    inc bc
    ld [$c802], a
    ld bc, $7905
    inc b
    ld hl, $656d
    ld bc, $3802
    ld l, $00
    ld c, c
    ld l, [hl]
    jr nz, @+$06

    add [hl]
    inc l
    dec b
    jp nc, $e503

    ld l, c
    ld l, [hl]
    db $76

jr_01f_792c:
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, c
    ld h, d
    ld l, h
    inc b
    xor b

jr_01f_7934:
    nop
    inc bc

jr_01f_7936:
    or c
    ld [hl], e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld h, e
    inc bc

jr_01f_793d:
    ld l, d
    inc bc
    sub h
    ld h, e
    dec b
    ld c, h
    inc bc
    push hl
    inc bc
    dec [hl]
    inc bc
    and $02
    ld d, [hl]
    ld l, $00
    inc b
    rst $20
    jr nz, jr_01f_79b5

    ld h, l
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    inc bc
    push hl
    inc bc
    sub h
    dec b
    ld b, a
    jr nz, jr_01f_79ce

    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld bc, $6761
    dec b
    db $db
    ld [hl], e
    ld [hl], h
    jr nz, @+$75

    ld [hl], b
    ld l, c
    ld l, e
    ld h, l
    ld [hl], e
    ld l, $00
    ld c, d
    ld [hl], l
    ld l, l
    ld [hl], b
    inc bc
    and [hl]
    ld [hl], l
    ld [hl], b
    ld [bc], a
    call c, Call_01f_6e6f
    ld [bc], a
    push bc
    ld [hl], e
    dec b
    rst $38
    ld [bc], a
    jp nz, Jump_01f_4004

    jr nz, jr_01f_79f4

    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d
    ld l, $00
    ld b, a
    inc b
    add hl, bc
    ld h, l
    ld [hl], d
    jr nz, jr_01f_7a0d

    ld [hl], b
    ld h, l
    dec b
    ld a, l
    dec b
    ld b, l
    ld [hl], e
    ld [bc], a
    rst JumpTable
    ld h, l
    ld [hl], d
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    inc b
    dec d
    ld l, $00
    ld c, c
    ld h, e
    ld a, c
    jr nz, jr_01f_7a16

    ld l, a
    ld [hl], d

jr_01f_79b5:
    ld h, l
    ld [hl], e
    jr nz, jr_01f_79bc

    db $dd
    ld [hl], b
    ld l, c

jr_01f_79bc:
    ld h, l
    ld [hl], d
    ld h, e
    inc bc
    and [hl]
    ld h, d
    ld l, h
    ld h, c
    ld h, h
    ld h, l
    ld [hl], e
    ld l, $00
    ld b, d
    ld h, l
    ld l, h
    ld l, a
    ld [hl], a

jr_01f_79ce:
    dec b
    and b
    inc l
    jr nz, jr_01f_7a45

    ld h, l
    ld h, h
    ld l, $01
    ld c, l
    ld a, c
    ld [bc], a
    call nz, $202c
    ld [hl], d
    ld h, l
    ld h, h
    ld l, $01
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, @+$4b

    ld [bc], a
    add l
    ld [hl], e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_7a53

    ld l, h
    ld [hl], l
    ld h, l

jr_01f_79f4:
    ld l, $00
    ld b, d
    ld l, h
    ld [hl], l
    ld h, l
    inc b
    ld b, $64
    ld [hl], e
    ld [bc], a
    add c
    ld h, a
    ld l, c
    db $76
    ld [bc], a
    ld [hl], h
    ld [hl], e
    ld [hl], b
    ld h, l
    ld h, l
    ld h, h
    ld l, $00
    ld c, c

jr_01f_7a0d:
    ld [hl], h
    inc bc
    ld l, h
    dec b
    rst $20
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_01f_7a16:
    ld l, l
    ld a, c
    ld bc, $0803
    ld [bc], a
    ld l, a
    jr nz, jr_01f_7a24

    dec c
    ld bc, $9c05
    ld [bc], a

jr_01f_7a24:
    scf
    dec b
    ldh [rTIMA], a
    cp h
    inc bc
    ld b, d
    ld h, c
    jr nz, @+$04

    db $db
    ld bc, $bb02
    ld l, $01
    ld [bc], a
    ld b, b
    ld h, c
    jr nz, jr_01f_7a9b

    ld l, c
    ld [hl], h
    jr nz, jr_01f_7aac

    daa
    ld bc, $7274
    inc bc
    ret c

    dec b
    ld d, l

jr_01f_7a45:
    nop
    dec b
    ld d, a
    ld [bc], a
    scf
    dec b
    ldh [rTIMA], a
    cp h
    inc bc
    ld b, d
    daa
    dec b
    push hl

jr_01f_7a53:
    ld [bc], a
    db $db
    ld bc, $bb02
    inc bc
    ld l, h
    ld [hl], e
    ld l, a
    ld bc, $4405
    ld a, c
    ld l, $20
    ld b, c
    ld a, c
    ld h, l
    inc bc
    and l
    ld c, c
    daa
    ld h, h
    jr nz, jr_01f_7a71

    sbc a
    ld l, l
    ld h, c
    ld h, h
    inc bc

jr_01f_7a71:
    ld e, [hl]
    nop
    ld c, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_7a7c

    ld [hl], h
    dec b
    cp h
    ld h, e

jr_01f_7a7c:
    dec b
    inc a
    inc b
    inc d
    ld h, c
    ld bc, $7473
    ld l, a
    ld [hl], d
    ld l, l
    ld [bc], a
    pop hl
    ld [hl], e
    ld h, c
    ld l, [hl]
    ld l, e
    ld l, $01
    dec b
    ld c, [hl]
    inc b
    and l
    ld [hl], a
    ld l, a
    ld l, e
    ld h, l
    inc l
    ld bc, $6527

jr_01f_7a9b:
    ld [hl], d
    ld h, l
    jr nz, jr_01f_7b16

    ld h, l
    inc bc
    sbc a
    ld l, $01
    ld d, a
    ld [bc], a
    db $f4
    inc b
    inc h
    ld [hl], a
    ld h, l
    ccf

jr_01f_7aac:
    ld bc, $7449
    inc b
    xor a
    inc bc
    or [hl]
    ld [hl], e
    inc b
    db $ed
    dec b
    ld a, [hli]
    ld l, $00
    ld c, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a
    sub a
    inc b
    and a
    inc bc
    and c
    inc b
    rst $38
    ccf
    jr nz, jr_01f_7b0b

    ld a, c
    ld h, l
    inc l
    ld bc, $6f6e
    jr nz, jr_01f_7b49

    ld l, a
    inc b
    cp $04
    ld h, h
    dec b
    ld h, d
    ld [hl], e
    dec b
    db $d3
    inc bc
    ld a, h
    ld hl, $4f01
    ld [hl], d
    ld h, l
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    dec b
    and $01
    inc b
    rlca
    daa
    inc bc
    cp h
    dec b
    ld d, l
    nop
    dec b
    inc de
    ld [bc], a
    xor h
    ld [bc], a
    ld l, a
    ld bc, $9905
    dec b
    db $fc
    dec b
    ld a, [hl]
    ld [hl], e
    ld [hl], h
    dec b
    and d
    inc l
    ld bc, $0377
    and d
    inc bc
    sub b

jr_01f_7b0b:
    inc b
    ld a, h
    inc bc
    sub h
    inc b
    ld [hl], h
    inc b
    inc a
    ld hl, $0500

jr_01f_7b16:
    ld d, a
    ld [bc], a
    scf
    dec b
    call $6205
    jr nz, jr_01f_7b24

    ld b, h
    ld a, c
    ld [bc], a
    xor d
    inc b

jr_01f_7b24:
    add $61
    inc b
    ld c, d
    jr nz, jr_01f_7b8c

    ld l, c
    ld [hl], h
    ld bc, $276f
    jr nz, jr_01f_7b35

    ld [$002e], a
    inc bc

jr_01f_7b35:
    ld d, b
    ld h, d
    ld l, h
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_01f_7bb4

    ld h, l
    ld bc, $0573
    rst AddAToHL
    inc bc
    or [hl]
    dec b
    and $02
    ld [c], a
    dec b

jr_01f_7b49:
    sbc h
    ld [bc], a
    scf
    jr nz, @+$29

    ld h, c
    ld [hl], e
    dec b
    ld h, c
    ld h, e
    ld [bc], a
    jr z, @+$30

    jr nz, jr_01f_7ba1

    ld bc, $c304
    daa
    ld l, c
    ld l, l
    dec b
    ldh [rSB], a
    inc b
    add l
    ld [hl], h
    ld h, c
    dec b
    ld l, a
    ld [hl], d
    ld h, e
    ld l, b
    ld bc, $9403
    inc b
    ld [hl], h
    dec b
    ld d, l
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01f_7b7a

    sub h
    ld [hl], e
    inc b
    ret nz

jr_01f_7b7a:
    ld bc, $3a05
    dec b
    jp c, Jump_01f_4003

    ld h, c
    ld bc, $d003
    inc bc
    or l
    inc bc
    or d
    ld l, c
    ld [hl], h
    ld [hl], e

jr_01f_7b8c:
    jr nz, jr_01f_7bfd

    ld [hl], d
    ld l, c
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    ld bc, $6f63
    ld l, [hl]
    ld h, h
    ld l, c
    inc b
    ccf
    dec b
    jr c, jr_01f_7ba1

    inc b

jr_01f_7ba1:
    add $05
    ld b, h
    ld h, l
    ld h, h
    ld l, $00
    daa
    ld b, c
    db $76
    ld [bc], a
    ld [hl], h
    dec b
    cp b
    ld bc, $3e04
    inc b
    ld [hl], h

jr_01f_7bb4:
    ccf
    inc bc
    ld sp, $6704
    jr nz, @+$64

    ld a, c
    ld [bc], a
    or h
    ld h, a
    ld [hl], d
    dec b
    ret nc

    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld d, a
    ld h, l
    jr nz, @+$29

    inc bc
    ld sp, hl
    jr nz, jr_01f_7c36

    ld l, c
    ld a, b
    dec b
    ld a, l
    ld l, c
    ld [hl], h
    inc l
    dec b
    db $d3
    inc bc
    sbc [hl]
    inc bc
    and $02
    ei
    jr nz, jr_01f_7be5

    ld c, h
    ld l, $00
    ld [bc], a

jr_01f_7be5:
    ld l, a
    inc b
    ld d, $61
    ld bc, $db02
    jr nz, @+$04

    cp e
    ld bc, $6568
    jr nz, jr_01f_7bf8

    dec e
    jr nz, @+$04

    ret z

jr_01f_7bf8:
    ld l, $01
    ld d, a
    ld [bc], a
    db $dd

jr_01f_7bfd:
    dec b
    ld b, d
    inc l
    ld bc, $6873
    inc b
    and d

Jump_01f_7c05:
    dec b
    or a
    inc bc
    or b
    ld h, d
    ld h, l
    ld bc, $9403
    ld [hl], c
    ld [hl], l
    ld h, l
    ld h, l
    ld l, [hl]
    inc bc
    pop de
    inc b
    and c
    ld [bc], a
    rst JumpTable
    jr nz, jr_01f_7c1f

    ld [$002e], sp
    ld c, c

jr_01f_7c1f:
    ld [hl], e
    dec b
    ldh [rDIV], a
    xor a
    ld [bc], a
    call nz, HeaderManufacturerCode
    inc bc
    ld d, b
    ld h, d
    ld l, h
    ld l, a
    ld l, e
    inc b
    and d
    ld [hl], e
    ld l, a
    ld bc, $c802
    ld h, [hl]

jr_01f_7c36:
    ld [hl], l
    ld l, h
    dec b
    ld d, l
    nop
    ld b, c
    ld [hl], d
    ld h, l
    inc b
    and l
    dec b
    jp nz, $a404

    dec b
    add c
    ld [bc], a
    call nz, $203f
    ld d, a
    ld h, l
    inc b
    and e
    dec b
    rst $20
    ld [bc], a
    ret z

    ld h, [hl]
    ld [hl], l
    ld l, h
    dec b
    ld d, l
    nop
    inc b
    and b
    ld l, b
    ld l, a
    ld [hl], a
    daa
    ld h, h
    ld bc, $0803
    ld h, a
    ld l, a
    ccf
    nop
    ld b, c
    ld a, c
    ld h, l
    inc l
    jr nz, jr_01f_7ce0

    ld [bc], a
    db $dd
    ld l, c
    ld [hl], h
    inc bc
    and h
    ld c, [hl]
    ld l, a
    inc b
    or d
    daa
    ld hl, $4620
    ld l, a
    ld [hl], d
    dec b
    ld h, h
    ld l, c
    ld [hl], h
    ld hl, $4120
    ld [bc], a
    cp a
    nop
    ld [bc], a
    call Call_01f_7571
    ld l, c
    ld h, l
    ld [hl], h
    ld bc, $7305
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [bc], a
    db $76
    ld b, l
    db $76
    daa
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    inc b
    and d
    ld h, a
    dec b
    reti


    ccf
    ld bc, $6557
    daa
    ld [hl], d
    ld h, l
    ld [bc], a
    xor h
    inc b
    or l
    ld bc, $d905
    ld [hl], e
    jr nz, jr_01f_7cb9

    jp hl


    ccf
    ccf
    ccf

jr_01f_7cb9:
    nop
    ld b, c
    ld a, c
    ld h, l
    inc l
    jr nz, jr_01f_7cc4

    push af
    ld bc, $3d04

jr_01f_7cc4:
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    inc bc
    or b
    inc b
    rst $38
    ld bc, $6527
    ld [hl], d
    ld h, l
    inc b
    dec b
    ld l, $00
    ld c, b
    ld l, a
    ld [hl], a
    inc bc
    db $db
    jr nz, @+$66

    ld l, a
    ld bc, $9c05

jr_01f_7ce0:
    ld a, c
    jr nz, @+$72

    ld l, h
    ld h, c
    ld l, [hl]
    inc b
    sub e
    ld [hl], e
    ld [hl], h
    ld h, c
    ld a, c
    dec b
    ld a, e
    inc bc
    ld c, $21
    ccf
    ld hl, $0200
    sub l
    inc bc
    inc hl
    ld bc, $b502
    dec b
    jp nz, Jump_01f_7301

    ld [hl], h
    ld h, c
    ld a, c
    jr nz, jr_01f_7d06

    db $f4
    ld l, [hl]

jr_01f_7d06:
    ld l, a
    ld [hl], a
    ld hl, $0200
    ld h, d
    dec b
    ld h, h
    inc b
    sbc a
    inc bc
    or b
    inc b
    rlca
    ld l, l
    ld h, l
    ld bc, $056d
    and d
    ld [hl], e
    ld [bc], a
    pop hl
    ld h, h
    ld l, c
    ld h, a
    ld bc, $9403
    inc b
    ld [hl], h
    jr nz, @+$68

    dec b
    ld [c], a
    inc l
    ld bc, $7304
    ld [bc], a
    ld l, a
    jr nz, jr_01f_7d36

    or a
    inc l
    ld bc, $0222

jr_01f_7d36:
    sub l
    ld h, e
    ld [bc], a
    jr z, jr_01f_7d3c

    daa

jr_01f_7d3c:
    ld [hl], h
    ld l, c
    ld l, h
    jr nz, @+$7b

    ld h, c
    ld [bc], a
    db $e4
    ld l, l
    ld h, l
    ld bc, $d003
    ld [hli], a
    inc bc
    and e
    ld b, e
    ld h, c
    inc b
    ld l, a
    ld [bc], a
    cp e
    ld bc, $6103
    ld l, l
    ld h, l
    inc bc
    inc b
    ld l, $2e
    ccf
    nop
    inc bc
    ld h, $05
    ld h, d
    ld [bc], a
    ld [c], a
    dec b
    sbc h
    ld [bc], a
    scf
    ccf
    ld hl, $e703
    dec b
    ld b, [hl]
    ld [bc], a
    rst $00
    jr nz, jr_01f_7dd8

    ld l, a
    ld bc, $9f04
    ld hl, $0420
    ld [de], a
    nop
    inc c
    jr nz, jr_01f_7d81

    ld a, [hli]
    ld hl, $0400

jr_01f_7d81:
    and b
    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    dec b
    ld a, e
    inc l
    ld bc, $6f02
    inc bc
    sub a
    ld bc, $7404
    dec b
    sbc d
    inc b
    inc hl
    ld h, [hl]
    ld l, c
    ld a, b
    ld h, l
    ld h, h
    dec b
    ld c, b
    inc bc
    or h
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, jr_01f_7e18

    ld h, c
    ld l, c
    ld l, h
    ld bc, $2703
    ld hl, $5500
    ld [hl], e
    ld h, l
    inc b
    sbc h
    jr nz, @+$68

    ld l, a
    ld l, a
    ld l, h
    ld [hl], e
    ld hl, $4301
    ld h, c
    inc b
    ld l, a
    ld [bc], a
    cp e
    ld bc, $d703
    ld l, l
    ld h, l
    ld [bc], a
    scf
    inc bc
    rst $20
    ld b, c
    ld a, c
    ld h, l
    ccf
    inc b
    ld [hl], c
    ld l, $2e
    ccf
    nop
    rrca
    ld d, $05
    ld d, [hl]
    ld b, c

jr_01f_7dd8:
    ld [hl], d
    inc l
    jr nz, jr_01f_7e44

    ld h, c
    ld [hl], d
    inc l
    jr nz, jr_01f_7e49

    ld h, c
    ld [hl], d
    ld hl, $0201
    sub l
    dec b
    sbc a
    ld [hl], e
    dec b
    pop de
    ld a, c
    ld hl, $0301
    add sp, $61
    ld l, c
    inc b
    ld l, a
    ld h, c
    ld l, [hl]
    ld bc, $7865
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    dec b
    ld a, l
    dec b
    adc c
    ld h, l
    ld [hl], d
    jr nz, jr_01f_7e82

    ld h, l
    ld [hl], h
    ld hl, $0201
    dec sp
    daa
    inc bc
    ld sp, hl
    ld bc, $7461
    jr nz, jr_01f_7e83

    inc b

jr_01f_7e18:
    ld sp, $7020
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    ld l, [hl]
    ld bc, $0b03
    dec b
    adc c
    dec b
    and $01
    dec b
    ld a, [hl-]
    ld [hl], e
    jr nz, jr_01f_7e8f

    ld a, c
    inc b
    ld b, $05
    and $01
    inc bc
    sub h
    ld l, c
    inc b
    adc h
    jr nz, jr_01f_7ea9

    daa
    ld bc, $a104
    jr nz, jr_01f_7e44

    add e
    inc l
    inc b
    inc bc

jr_01f_7e44:
    ld l, [hl]
    ld l, a
    inc b
    xor d
    inc bc

jr_01f_7e49:
    inc c
    dec b
    ld a, h
    ld hl, $0f00
    ld d, $05
    ld d, [hl]
    ld b, c
    ld a, c
    ld h, l
    inc l
    ld [bc], a
    rst $00
    inc b
    ld b, $01
    ld l, c
    ld [hl], h
    jr nz, @+$6b

    ld l, [hl]
    ld [bc], a
    add b
    dec b
    ld l, l
    ld l, $01
    ld [bc], a
    ld b, l
    ld h, c
    ld bc, $6f63
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], h
    dec b
    rst AddAToHL
    ld bc, $8905
    ld h, l
    ld [hl], d
    inc bc
    and l
    ld c, a
    ld c, e
    ld hl, $4720
    ld l, a
    inc bc
    ld b, b
    ld l, c

jr_01f_7e82:
    ld [hl], h

jr_01f_7e83:
    ld hl, $0501
    or b
    dec b
    and b
    ld [bc], a
    scf
    ld hl, $0301
    add hl, bc

jr_01f_7e8f:
    dec b
    sbc a
    inc b
    sbc c
    dec b
    and $21
    nop
    ld b, l
    ld l, b
    ccf
    inc b
    ld [hl], c
    ld [bc], a
    call z, Call_01f_6d01
    ld h, l
    ld [bc], a
    scf
    ccf
    ld bc, $1204
    jr nz, jr_01f_7ef5

jr_01f_7ea9:
    ld h, l
    ld [hl], h
    dec b
    add b
    inc bc
    ld h, c
    ld h, c
    jr nz, jr_01f_7f19

    ld h, c
    inc b
    cp $21
    nop
    rrca
    dec de
    dec b
    ld d, [hl]
    inc b
    xor $53
    inc b
    add d
    inc bc
    or e
    dec l
    dec b
    ld d, [hl]
    ld b, c
    ld [hl], d
    ld hl, $0320
    ld a, [de]
    inc bc
    add hl, sp
    dec b
    add b
    dec b
    ld b, h
    dec b
    sbc e
    ld [bc], a
    inc e
    ld bc, $7761
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld hl, $0320
    ld a, [hli]
    dec b
    rst $08
    ld bc, $d203
    ld [hl], b
    ld [hl], l
    ld l, h
    ld l, h
    dec b
    and $3f
    ld bc, $5a05
    ld [bc], a
    ld a, d
    ld h, h
    ld l, a
    ld hl, $4701

jr_01f_7ef5:
    ld l, a
    inc bc
    ld b, b
    ld l, c
    ld [hl], h
    ld bc, $0470
    call Call_01f_6465
    ld hl, $0f00
    dec de
    dec b
    ld d, [hl]
    ld b, c
    ld [hl], d
    ld hl, $5420
    ld [bc], a
    ld l, e
    ld l, [hl]
    ld l, a
    ld bc, $696d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, e
    dec b
    and $05

jr_01f_7f19:
    jp nc, $a303

    dec b
    ld e, d
    ld [bc], a
    scf
    inc bc
    push hl
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    jr nz, jr_01f_7f97

    daa
    ld bc, $656d
    ld l, l
    ld l, a
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    dec l
    dec l
    ld h, d
    ld [hl], l
    ld [hl], h
    ld bc, $0803
    ld [bc], a
    ld [$1705], a
    ld bc, $9c05
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01f_7f4b

    inc hl
    inc b
    and $21

jr_01f_7f4b:
    jr nz, @+$55

    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $4e01
    ld l, a
    ld [hl], a
    inc bc
    cp d
    inc b
    inc hl
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    ld l, $03
    ld sp, $6f6e
    ld [hl], h
    inc bc
    dec c
    dec b
    and b
    ld l, $00
    inc bc
    ld [de], a
    ld l, a
    ld h, [hl]
    ld h, [hl]
    inc l
    ld bc, $3b04
    jr nz, jr_01f_7fcc

    ld l, a
    dec b
    ld l, a
    ld hl, $0c00
    jr nz, jr_01f_7f85

    sub l
    ccf
    ccf
    inc bc
    rst $20

jr_01f_7f85:
    ld c, [hl]
    inc b
    xor [hl]
    daa
    ld [hl], h
    dec b
    push hl
    ld c, c
    ld [bc], a
    sbc c
    ld l, l
    ld [hl], l
    ld [hl], e
    ld [hl], h
    inc b
    and h
    inc bc
    cp b

jr_01f_7f97:
    dec b
    and $04
    db $eb
    ld c, c
    jr nz, jr_01f_7fa1

    sub b
    jr nz, @+$76

jr_01f_7fa1:
    ld l, b
    inc b
    add l
    ld bc, $6577
    daa
    ld h, h
    jr nz, @+$06

    ld h, [hl]
    ld [bc], a
    ld [hl], l
    ld bc, $a103
    dec b
    db $d3
    inc bc
    db $db
    ld hl, $0c00
    jr nz, jr_01f_7fbf

    ei
    inc b
    dec b
    inc l
    ld [bc], a

jr_01f_7fbf:
    jp nc, $0249

    ldh [$03], a
    db $e3
    inc b
    ld h, l
    dec b
    ld [hl], c
    dec b
    ld a, e
    inc l

jr_01f_7fcc:
    inc b
    ld h, h
    ld [hl], b
    dec b
    db $db
    ld [hl], e
    jr nz, @+$6f

    ld a, c
    inc bc
    rlca
    ld [hl], h
    ld l, $01
    ld d, h
    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    inc bc
    db $eb
    ld bc, $0579
    call c, $2073
    daa
    dec b
    ret nc

    jr nz, @+$69

    dec b
    ld e, l
    ld h, d
    ld a, c
    jr nz, jr_01f_7ff6

    and b
    jr nz, @+$07

jr_01f_7ff6:
    sbc h
    ld l, [hl]
    inc l
    ld bc, $7c05
    inc bc
    ld l, e
    ld h, c
    ld [hl], e

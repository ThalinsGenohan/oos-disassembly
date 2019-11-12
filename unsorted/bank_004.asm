; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX

    ld h, b
    ld l, e
    ld b, $04

jr_004_4004:
    ld e, $00
    ld a, [hl+]
    ld [de], a
    ld e, $20
    ld a, [hl+]
    ld [de], a
    ld e, $40
    ld a, [hl+]
    ld [de], a
    ld e, $60
    ld a, [hl+]
    ld [de], a
    ld e, $80
    ld a, [hl+]
    ld [de], a
    ld e, $a0
    ld a, [hl+]
    ld [de], a
    ld e, $c0
    ld a, [hl+]
    ld [de], a
    ld e, $e0
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4004

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4032:
    ld e, $01
    ld a, [hl+]
    ld [de], a
    ld e, $21
    ld a, [hl+]
    ld [de], a
    ld e, $41
    ld a, [hl+]
    ld [de], a
    ld e, $61
    ld a, [hl+]
    ld [de], a
    ld e, $81
    ld a, [hl+]
    ld [de], a
    ld e, $a1
    ld a, [hl+]
    ld [de], a
    ld e, $c1
    ld a, [hl+]
    ld [de], a
    ld e, $e1
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4032

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4060:
    ld e, $02
    ld a, [hl+]
    ld [de], a
    ld e, $22
    ld a, [hl+]
    ld [de], a
    ld e, $42
    ld a, [hl+]
    ld [de], a
    ld e, $62
    ld a, [hl+]
    ld [de], a
    ld e, $82
    ld a, [hl+]
    ld [de], a
    ld e, $a2
    ld a, [hl+]
    ld [de], a
    ld e, $c2
    ld a, [hl+]
    ld [de], a
    ld e, $e2
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4060

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_408e:
    ld e, $03
    ld a, [hl+]
    ld [de], a
    ld e, $23
    ld a, [hl+]
    ld [de], a
    ld e, $43
    ld a, [hl+]
    ld [de], a
    ld e, $63
    ld a, [hl+]
    ld [de], a
    ld e, $83
    ld a, [hl+]
    ld [de], a
    ld e, $a3
    ld a, [hl+]
    ld [de], a
    ld e, $c3
    ld a, [hl+]
    ld [de], a
    ld e, $e3
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_408e

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_40bc:
    ld e, $04
    ld a, [hl+]
    ld [de], a
    ld e, $24
    ld a, [hl+]
    ld [de], a
    ld e, $44
    ld a, [hl+]
    ld [de], a
    ld e, $64
    ld a, [hl+]
    ld [de], a
    ld e, $84
    ld a, [hl+]
    ld [de], a
    ld e, $a4
    ld a, [hl+]
    ld [de], a
    ld e, $c4
    ld a, [hl+]
    ld [de], a
    ld e, $e4
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_40bc

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_40ea:
    ld e, $05
    ld a, [hl+]
    ld [de], a
    ld e, $25
    ld a, [hl+]
    ld [de], a
    ld e, $45
    ld a, [hl+]
    ld [de], a
    ld e, $65
    ld a, [hl+]
    ld [de], a
    ld e, $85
    ld a, [hl+]
    ld [de], a
    ld e, $a5
    ld a, [hl+]
    ld [de], a
    ld e, $c5
    ld a, [hl+]
    ld [de], a
    ld e, $e5
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_40ea

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4118:
    ld e, $06
    ld a, [hl+]
    ld [de], a
    ld e, $26
    ld a, [hl+]
    ld [de], a
    ld e, $46
    ld a, [hl+]
    ld [de], a
    ld e, $66
    ld a, [hl+]
    ld [de], a
    ld e, $86
    ld a, [hl+]
    ld [de], a
    ld e, $a6
    ld a, [hl+]
    ld [de], a
    ld e, $c6
    ld a, [hl+]
    ld [de], a
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4118

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4146:
    ld e, $07
    ld a, [hl+]
    ld [de], a
    ld e, $27
    ld a, [hl+]
    ld [de], a
    ld e, $47
    ld a, [hl+]
    ld [de], a
    ld e, $67
    ld a, [hl+]
    ld [de], a
    ld e, $87
    ld a, [hl+]
    ld [de], a
    ld e, $a7
    ld a, [hl+]
    ld [de], a
    ld e, $c7
    ld a, [hl+]
    ld [de], a
    ld e, $e7
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4146

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4174:
    ld e, $08
    ld a, [hl+]
    ld [de], a
    ld e, $28
    ld a, [hl+]
    ld [de], a
    ld e, $48
    ld a, [hl+]
    ld [de], a
    ld e, $68
    ld a, [hl+]
    ld [de], a
    ld e, $88
    ld a, [hl+]
    ld [de], a
    ld e, $a8
    ld a, [hl+]
    ld [de], a
    ld e, $c8
    ld a, [hl+]
    ld [de], a
    ld e, $e8
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4174

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_41a2:
    ld e, $09
    ld a, [hl+]
    ld [de], a
    ld e, $29
    ld a, [hl+]
    ld [de], a
    ld e, $49
    ld a, [hl+]
    ld [de], a
    ld e, $69
    ld a, [hl+]
    ld [de], a
    ld e, $89
    ld a, [hl+]
    ld [de], a
    ld e, $a9
    ld a, [hl+]
    ld [de], a
    ld e, $c9
    ld a, [hl+]
    ld [de], a
    ld e, $e9
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_41a2

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_41d0:
    ld e, $0a
    ld a, [hl+]
    ld [de], a
    ld e, $2a
    ld a, [hl+]
    ld [de], a
    ld e, $4a
    ld a, [hl+]
    ld [de], a
    ld e, $6a
    ld a, [hl+]
    ld [de], a
    ld e, $8a
    ld a, [hl+]
    ld [de], a
    ld e, $aa
    ld a, [hl+]
    ld [de], a
    ld e, $ca
    ld a, [hl+]
    ld [de], a
    ld e, $ea
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_41d0

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_41fe:
    ld e, $0b
    ld a, [hl+]
    ld [de], a
    ld e, $2b
    ld a, [hl+]
    ld [de], a
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    ld e, $6b
    ld a, [hl+]
    ld [de], a
    ld e, $8b
    ld a, [hl+]
    ld [de], a
    ld e, $ab
    ld a, [hl+]
    ld [de], a
    ld e, $cb
    ld a, [hl+]
    ld [de], a
    ld e, $eb
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_41fe

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_422c:
    ld e, $0c
    ld a, [hl+]
    ld [de], a
    ld e, $2c
    ld a, [hl+]

Call_004_4233:
    ld [de], a
    ld e, $4c

Call_004_4236:
    ld a, [hl+]
    ld [de], a
    ld e, $6c
    ld a, [hl+]
    ld [de], a
    ld e, $8c
    ld a, [hl+]
    ld [de], a
    ld e, $ac
    ld a, [hl+]
    ld [de], a
    ld e, $cc
    ld a, [hl+]
    ld [de], a
    ld e, $ec
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_422c

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_425a:
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    ld e, $2d
    ld a, [hl+]
    ld [de], a
    ld e, $4d
    ld a, [hl+]
    ld [de], a
    ld e, $6d
    ld a, [hl+]
    ld [de], a
    ld e, $8d
    ld a, [hl+]
    ld [de], a
    ld e, $ad
    ld a, [hl+]
    ld [de], a
    ld e, $cd
    ld a, [hl+]
    ld [de], a
    ld e, $ed
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_425a

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4288:
    ld e, $0e
    ld a, [hl+]
    ld [de], a
    ld e, $2e
    ld a, [hl+]
    ld [de], a
    ld e, $4e
    ld a, [hl+]
    ld [de], a
    ld e, $6e
    ld a, [hl+]
    ld [de], a
    ld e, $8e
    ld a, [hl+]
    ld [de], a
    ld e, $ae
    ld a, [hl+]
    ld [de], a
    ld e, $ce
    ld a, [hl+]
    ld [de], a
    ld e, $ee
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4288

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_42b6:
    ld e, $0f
    ld a, [hl+]
    ld [de], a
    ld e, $2f
    ld a, [hl+]
    ld [de], a
    ld e, $4f
    ld a, [hl+]
    ld [de], a
    ld e, $6f
    ld a, [hl+]
    ld [de], a
    ld e, $8f
    ld a, [hl+]
    ld [de], a
    ld e, $af
    ld a, [hl+]
    ld [de], a
    ld e, $cf
    ld a, [hl+]
    ld [de], a
    ld e, $ef
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_42b6

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_42e4:
    ld e, $10
    ld a, [hl+]
    ld [de], a
    ld e, $30
    ld a, [hl+]
    ld [de], a
    ld e, $50
    ld a, [hl+]
    ld [de], a
    ld e, $70
    ld a, [hl+]
    ld [de], a
    ld e, $90
    ld a, [hl+]
    ld [de], a
    ld e, $b0
    ld a, [hl+]
    ld [de], a
    ld e, $d0
    ld a, [hl+]
    ld [de], a
    ld e, $f0
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_42e4

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4312:
    ld e, $11
    ld a, [hl+]
    ld [de], a
    ld e, $31
    ld a, [hl+]
    ld [de], a
    ld e, $51
    ld a, [hl+]
    ld [de], a
    ld e, $71
    ld a, [hl+]
    ld [de], a
    ld e, $91
    ld a, [hl+]
    ld [de], a
    ld e, $b1
    ld a, [hl+]
    ld [de], a
    ld e, $d1
    ld a, [hl+]
    ld [de], a
    ld e, $f1
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4312

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4340:
    ld e, $12
    ld a, [hl+]
    ld [de], a
    ld e, $32
    ld a, [hl+]
    ld [de], a
    ld e, $52
    ld a, [hl+]
    ld [de], a
    ld e, $72
    ld a, [hl+]
    ld [de], a
    ld e, $92
    ld a, [hl+]
    ld [de], a
    ld e, $b2
    ld a, [hl+]
    ld [de], a
    ld e, $d2
    ld a, [hl+]
    ld [de], a
    ld e, $f2
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4340

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_436e:
    ld e, $13
    ld a, [hl+]
    ld [de], a
    ld e, $33
    ld a, [hl+]
    ld [de], a
    ld e, $53
    ld a, [hl+]
    ld [de], a
    ld e, $73
    ld a, [hl+]
    ld [de], a
    ld e, $93
    ld a, [hl+]
    ld [de], a
    ld e, $b3
    ld a, [hl+]
    ld [de], a
    ld e, $d3
    ld a, [hl+]
    ld [de], a
    ld e, $f3
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_436e

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_439c:
    ld e, $14
    ld a, [hl+]
    ld [de], a
    ld e, $34
    ld a, [hl+]
    ld [de], a
    ld e, $54
    ld a, [hl+]
    ld [de], a
    ld e, $74
    ld a, [hl+]
    ld [de], a
    ld e, $94
    ld a, [hl+]
    ld [de], a
    ld e, $b4
    ld a, [hl+]
    ld [de], a
    ld e, $d4
    ld a, [hl+]
    ld [de], a
    ld e, $f4
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_439c

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_43ca:
    ld e, $15
    ld a, [hl+]
    ld [de], a
    ld e, $35
    ld a, [hl+]
    ld [de], a
    ld e, $55
    ld a, [hl+]
    ld [de], a
    ld e, $75
    ld a, [hl+]
    ld [de], a
    ld e, $95
    ld a, [hl+]
    ld [de], a
    ld e, $b5
    ld a, [hl+]
    ld [de], a
    ld e, $d5
    ld a, [hl+]
    ld [de], a
    ld e, $f5
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_43ca

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_43f8:
    ld e, $16
    ld a, [hl+]
    ld [de], a
    ld e, $36
    ld a, [hl+]
    ld [de], a
    ld e, $56
    ld a, [hl+]
    ld [de], a
    ld e, $76
    ld a, [hl+]
    ld [de], a
    ld e, $96
    ld a, [hl+]
    ld [de], a
    ld e, $b6
    ld a, [hl+]
    ld [de], a
    ld e, $d6
    ld a, [hl+]
    ld [de], a
    ld e, $f6
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_43f8

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4426:
    ld e, $17
    ld a, [hl+]
    ld [de], a
    ld e, $37
    ld a, [hl+]
    ld [de], a
    ld e, $57
    ld a, [hl+]
    ld [de], a
    ld e, $77
    ld a, [hl+]
    ld [de], a
    ld e, $97
    ld a, [hl+]
    ld [de], a
    ld e, $b7
    ld a, [hl+]
    ld [de], a
    ld e, $d7
    ld a, [hl+]
    ld [de], a
    ld e, $f7
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4426

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4454:
    ld e, $18

Call_004_4456:
    ld a, [hl+]
    ld [de], a
    ld e, $38

Jump_004_445a:
    ld a, [hl+]
    ld [de], a
    ld e, $58
    ld a, [hl+]
    ld [de], a
    ld e, $78
    ld a, [hl+]
    ld [de], a
    ld e, $98
    ld a, [hl+]
    ld [de], a
    ld e, $b8
    ld a, [hl+]
    ld [de], a
    ld e, $d8
    ld a, [hl+]
    ld [de], a
    ld e, $f8
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4454

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4482:
    ld e, $19
    ld a, [hl+]
    ld [de], a
    ld e, $39
    ld a, [hl+]
    ld [de], a
    ld e, $59
    ld a, [hl+]
    ld [de], a
    ld e, $79
    ld a, [hl+]
    ld [de], a
    ld e, $99
    ld a, [hl+]
    ld [de], a
    ld e, $b9
    ld a, [hl+]
    ld [de], a
    ld e, $d9
    ld a, [hl+]
    ld [de], a
    ld e, $f9
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4482

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_44b0:
    ld e, $1a
    ld a, [hl+]
    ld [de], a
    ld e, $3a
    ld a, [hl+]
    ld [de], a
    ld e, $5a
    ld a, [hl+]
    ld [de], a
    ld e, $7a
    ld a, [hl+]
    ld [de], a
    ld e, $9a
    ld a, [hl+]
    ld [de], a
    ld e, $ba
    ld a, [hl+]
    ld [de], a
    ld e, $da
    ld a, [hl+]
    ld [de], a
    ld e, $fa
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_44b0

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_44de:
    ld e, $1b
    ld a, [hl+]
    ld [de], a
    ld e, $3b
    ld a, [hl+]
    ld [de], a
    ld e, $5b
    ld a, [hl+]
    ld [de], a
    ld e, $7b
    ld a, [hl+]
    ld [de], a
    ld e, $9b
    ld a, [hl+]
    ld [de], a
    ld e, $bb
    ld a, [hl+]
    ld [de], a
    ld e, $db
    ld a, [hl+]
    ld [de], a
    ld e, $fb
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_44de

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_450c:
    ld e, $1c
    ld a, [hl+]
    ld [de], a
    ld e, $3c
    ld a, [hl+]
    ld [de], a
    ld e, $5c
    ld a, [hl+]
    ld [de], a
    ld e, $7c
    ld a, [hl+]
    ld [de], a
    ld e, $9c
    ld a, [hl+]
    ld [de], a
    ld e, $bc
    ld a, [hl+]
    ld [de], a
    ld e, $dc
    ld a, [hl+]
    ld [de], a
    ld e, $fc
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_450c

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_453a:
    ld e, $1d
    ld a, [hl+]
    ld [de], a
    ld e, $3d
    ld a, [hl+]
    ld [de], a
    ld e, $5d
    ld a, [hl+]
    ld [de], a
    ld e, $7d
    ld a, [hl+]
    ld [de], a
    ld e, $9d
    ld a, [hl+]
    ld [de], a
    ld e, $bd
    ld a, [hl+]
    ld [de], a
    ld e, $dd
    ld a, [hl+]
    ld [de], a
    ld e, $fd
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_453a

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4568:
    ld e, $1e
    ld a, [hl+]
    ld [de], a
    ld e, $3e
    ld a, [hl+]
    ld [de], a
    ld e, $5e
    ld a, [hl+]
    ld [de], a
    ld e, $7e
    ld a, [hl+]
    ld [de], a
    ld e, $9e
    ld a, [hl+]
    ld [de], a
    ld e, $be
    ld a, [hl+]
    ld [de], a
    ld e, $de
    ld a, [hl+]
    ld [de], a
    ld e, $fe
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4568

    ld l, c
    ld h, $c4
    jp $0a5a


    ld h, b
    ld l, e
    ld b, $04

jr_004_4596:
    ld e, $1f
    ld a, [hl+]
    ld [de], a
    ld e, $3f
    ld a, [hl+]
    ld [de], a
    ld e, $5f
    ld a, [hl+]
    ld [de], a
    ld e, $7f
    ld a, [hl+]
    ld [de], a
    ld e, $9f
    ld a, [hl+]
    ld [de], a
    ld e, $bf
    ld a, [hl+]
    ld [de], a
    ld e, $df
    ld a, [hl+]
    ld [de], a
    ld e, $ff
    ld a, [hl+]
    ld [de], a
    inc d
    dec b
    jr nz, jr_004_4596

    ld l, c
    ld h, $c4
    jp $0a5a


    pop hl
    ld a, [hl+]
    ldh [rVBK], a
    ld a, [hl+]
    ld e, a
    ld b, $cd
    ld d, $98
    ld a, [hl+]
    ld h, [hl]
    inc l
    ld c, l
    ld l, a
    jp hl


    ld a, [$cc63]
    bit 7, a
    jr nz, jr_004_460c

    and $0f
    cp $02
    jr nz, jr_004_45ee

    ld hl, $6d4e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc64]
    ld b, a
    ld a, [$c6df]
    add b
    jr jr_004_45f8

jr_004_45ee:
    ld hl, $6d4e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc64]

jr_004_45f8:
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl+]
    ld [$cc66], a
    ld a, [hl+]
    or $80
    ld [$cc65], a

jr_004_460c:
    ld a, $0a
    ld [$cc6a], a
    ld a, [$cc49]
    ldh [$8b], a
    ld a, [$cc63]
    and $07
    ld [$cc49], a
    ld a, [$cc64]
    ld [$cc4c], a
    ld hl, $d000
    ld [hl], $03
    ld a, [$cc66]
    ld b, a
    and $f0
    or $08
    ld l, $0b
    ld [hl+], a
    inc l
    ld a, b
    and $0f
    swap a
    or $08
    ld [hl+], a
    ld a, [$cc63]
    bit 6, a
    jr nz, jr_004_465f

    ld a, [$cc49]
    or a
    jr nz, jr_004_465f

    ldh a, [$8b]
    cp $03
    jr c, jr_004_4659

    jr z, jr_004_465f

    ld a, [$cc55]
    cp $ff
    jr z, jr_004_465f

jr_004_4659:
    call $32dc
    jp $3ab2


jr_004_465f:
    jp $32dc


    ld a, [$cc49]
    ld hl, $7457
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld b, a

jr_004_4670:
    ld a, [hl+]
    bit 7, a
    jr nz, jr_004_4693

    bit 6, a
    jr nz, jr_004_4686

    and $0f
    jr nz, jr_004_4681

    ld a, [hl]
    cp b
    jr z, jr_004_4693

jr_004_4681:
    inc hl
    inc hl
    inc hl
    jr jr_004_4670

jr_004_4686:
    ld a, [hl]
    cp b
    jr nz, jr_004_4681

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$8d]
    ld b, a
    jr jr_004_4670

jr_004_4693:
    inc hl
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl+]
    ld b, a
    swap a
    and $0f
    ld [$cc63], a
    ld a, b
    and $0f
    ld [$cc65], a
    ret


    ld a, [$cd00]
    and $04
    ret z

    ld a, [$cd02]
    rrca
    ret c

    call Call_004_4722
    ld hl, $00f8
    add l
    ld l, a
    ld b, [hl]
    ld a, [$cc49]
    ld hl, $7457
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld c, a

jr_004_46ca:
    ld a, [hl+]
    bit 7, a
    ret nz

    bit 6, a
    jr nz, jr_004_46df

    ld e, a
    ld a, [hl+]
    cp c
    jr nz, jr_004_46db

    ld a, e
    and b
    jr nz, jr_004_46e8

jr_004_46db:
    inc hl
    inc hl
    jr jr_004_46ca

jr_004_46df:
    ld a, [hl+]
    cp c
    jr nz, jr_004_46db

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_004_46ca

jr_004_46e8:
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl+]
    ld b, a
    swap a
    and $0f
    ld [$cc63], a
    ld a, b
    and $0f
    ld b, a
    ld a, [$cd02]
    rlca
    swap a
    and $40
    or b
    ld [$cc65], a
    ld a, [$cc48]
    cp $d0
    call nz, Call_004_4712
    xor a
    ld [$cec0], a
    ret


Call_004_4712:
    push hl
    call $32f1
    ld a, $01
    ld [$cc65], a
    ld a, $01
    ld [$cc67], a
    pop hl
    ret


Call_004_4722:
    ld a, [$cd02]
    ld b, a
    ld a, [$cc49]
    cp $04
    ld a, [$d00d]
    jr nc, jr_004_4736

    cp $60
    ld a, b
    ret c

    inc a
    ret


jr_004_4736:
    cp $80
    ld a, b
    ret c

    inc a
    ret


    jr jr_004_4756

    jr jr_004_475d

    inc e
    inc e
    inc e
    inc e
    ld d, $16
    ld d, $15
    dec d
    dec d
    dec d
    dec d
    jr jr_004_4766

    jr jr_004_476d

    inc e
    inc e
    inc e
    inc e
    ld d, $16

jr_004_4756:
    ld d, $15
    dec d
    dec d
    dec d
    dec d
    rla

jr_004_475d:
    jr @+$1a

    dec e
    inc e
    inc e
    inc e
    inc e
    ld d, $16

jr_004_4766:
    ld d, $15
    dec d
    dec d
    dec d
    dec d
    rla

jr_004_476d:
    rla

Jump_004_476e:
    rla
    dec e
    dec e
    inc e
    inc e
    inc e
    ld d, $16
    ld d, $15
    dec d
    dec d
    dec d
    dec d
    rla
    rla
    rla
    rla
    dec e
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    dec d
    dec d
    rla
    rla
    rla
    rla
    inc d
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    dec d
    dec d
    inc de
    inc de
    inc de
    rla
    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    dec d
    dec d
    inc de
    inc de
    inc de
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    rst $38
    rst $38
    rst $38
    ld de, $1212
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc d
    inc d
    inc d
    inc d
    db $10
    db $10
    db $10
    ld de, $1211
    ld [de], a
    ld de, $1313
    inc de
    inc d
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld [de], a
    ld de, $1313
    inc de
    inc d
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $1311
    inc de
    inc de
    inc d
    inc d
    inc d
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1911
    add hl, de
    add hl, de
    inc de
    inc de
    inc de
    dec de
    dec de
    nop
    nop
    nop
    nop
    ldh a, [rNR11]
    ld de, $1911
    add hl, de
    add hl, de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    nop
    nop
    nop
    nop
    ld de, $1911
    add hl, de
    add hl, de
    add hl, de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    nop
    nop
    nop
    nop
    ld de, $1911
    add hl, de
    add hl, de
    add hl, de
    dec de
    dec de
    dec de
    dec de
    dec de
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld c, h
    ld c, b
    ld c, h
    ld c, c
    ld c, h
    ld c, c
    ld c, h
    ld c, c
    ld c, h
    ld c, d
    ld c, h
    ld c, e
    ld c, h
    ld c, d
    ld c, h
    ld c, e
    dec b
    dec b
    dec b
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b
    ld a, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b
    ld a, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    inc c
    dec b
    dec b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    inc c
    inc c
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    inc c
    inc c
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    inc c
    inc c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec [hl]
    dec [hl]
    dec [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec b
    inc bc
    inc bc
    inc bc
    dec [hl]
    dec [hl]
    dec [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec a
    inc bc
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    dec [hl]
    dec [hl]
    dec [hl]
    jr z, jr_004_4976

    jr z, jr_004_4978

    jr z, jr_004_497a

    jr z, jr_004_497c

    jr z, jr_004_497e

    jr z, jr_004_4976

    ld e, $1e
    jr z, jr_004_4984

    jr z, jr_004_4986

    jr z, jr_004_4988

    jr z, jr_004_498a

    jr z, jr_004_498c

    jr z, jr_004_498e

    jr z, jr_004_4986

    ld e, $1e
    jr z, jr_004_4994

    jr z, jr_004_4996

    jr z, jr_004_4998

    jr z, jr_004_499a

    jr z, jr_004_499c

    jr z, jr_004_499e

jr_004_4976:
    jr z, jr_004_4996

jr_004_4978:
    ld e, $1e

jr_004_497a:
    jr z, jr_004_49a4

jr_004_497c:
    jr z, jr_004_49a6

jr_004_497e:
    jr z, jr_004_49a8

    jr z, jr_004_49aa

    jr z, jr_004_49ac

jr_004_4984:
    jr z, jr_004_49ae

jr_004_4986:
    jr z, jr_004_49a6

jr_004_4988:
    ld e, $1e

jr_004_498a:
    ld e, $28

jr_004_498c:
    jr z, jr_004_49b6

jr_004_498e:
    jr z, jr_004_49b8

    jr z, jr_004_49ba

    jr z, jr_004_49bc

jr_004_4994:
    jr z, jr_004_49be

jr_004_4996:
    jr z, jr_004_49b6

jr_004_4998:
    ld e, $1e

jr_004_499a:
    ld e, $28

jr_004_499c:
    jr z, jr_004_49c6

jr_004_499e:
    jr z, jr_004_49c8

    jr z, jr_004_49ca

    jr z, jr_004_49cc

jr_004_49a4:
    jr z, jr_004_49ce

jr_004_49a6:
    jr z, jr_004_49c6

jr_004_49a8:
    ld e, $1e

jr_004_49aa:
    ld e, $28

jr_004_49ac:
    jr z, jr_004_49d6

jr_004_49ae:
    jr z, jr_004_49d8

    jr z, jr_004_49da

    jr z, jr_004_49dc

    jr z, jr_004_49de

jr_004_49b6:
    jr z, jr_004_49d6

jr_004_49b8:
    jr z, jr_004_49e2

jr_004_49ba:
    jr z, jr_004_49e4

jr_004_49bc:
    jr z, @+$2a

jr_004_49be:
    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

    jr z, @+$2a

jr_004_49c6:
    jr z, @+$20

jr_004_49c8:
    jr z, @+$2a

jr_004_49ca:
    jr z, @+$2a

jr_004_49cc:
    ld c, $0e

jr_004_49ce:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e

jr_004_49d6:
    inc hl
    inc hl

jr_004_49d8:
    ld c, $0e

jr_004_49da:
    ld c, $0e

jr_004_49dc:
    ld c, $0e

jr_004_49de:
    ld c, $0e
    ld c, $26

jr_004_49e2:
    ld h, $26

jr_004_49e4:
    dec c
    ld c, $0e
    ld c, $3c
    ld c, $0e
    ld c, $26
    ld h, $26
    ld c, $0e
    ld c, $0e
    ld c, $0d
    ld c, $0e
    ld c, $0d
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    add hl, sp
    add hl, sp
    inc a
    ld c, $0d
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec c
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec c
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec c
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $16
    ld d, $16
    dec c
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $17
    rla
    rla
    rla
    dec c
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    jr jr_004_4b10

    jr jr_004_4b12

    jr jr_004_4b14

    jr jr_004_4b16

    jr jr_004_4b18

    jr jr_004_4b1a

    jr jr_004_4b1c

    jr jr_004_4b1e

    jr jr_004_4b20

    jr jr_004_4b22

    jr jr_004_4b24

    jr jr_004_4b26

    jr jr_004_4b28

jr_004_4b10:
    jr jr_004_4b2a

jr_004_4b12:
    jr jr_004_4b2c

jr_004_4b14:
    jr jr_004_4b2e

jr_004_4b16:
    jr jr_004_4b30

jr_004_4b18:
    jr jr_004_4b32

jr_004_4b1a:
    jr jr_004_4b34

jr_004_4b1c:
    jr jr_004_4b36

jr_004_4b1e:
    jr jr_004_4b38

jr_004_4b20:
    jr jr_004_4b3a

jr_004_4b22:
    jr @+$1a

jr_004_4b24:
    jr @+$1a

jr_004_4b26:
    jr @+$1a

jr_004_4b28:
    jr @+$1a

jr_004_4b2a:
    jr @+$1a

jr_004_4b2c:
    ld [hl], $36

jr_004_4b2e:
    ld [hl], $36

jr_004_4b30:
    ld [hl], $36

jr_004_4b32:
    ld [hl], $36

jr_004_4b34:
    dec c
    dec c

jr_004_4b36:
    dec c
    rrca

jr_004_4b38:
    ld c, $0f

jr_004_4b3a:
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $36
    ld [hl], $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    ld c, $0e
    ld c, $13
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    ld c, $0e
    ld c, $36
    ld c, $0f
    ld c, $36
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec c
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec c
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec a
    dec a
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $3e
    ld [hl], $36
    ld a, $3e
    ld [hl], $36
    ld [hl], $36
    ld [hl], $23
    ld [hl], $36
    ld [hl], $36
    inc hl
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld bc, $0616
    ld [hl], b
    ld hl, $4e04
    nop
    ld bc, $0616
    ld [hl], d
    ld [hl+], a
    inc d
    ld c, e
    nop
    ld bc, $0616
    ld [hl], h
    inc hl
    inc b
    ld c, c
    nop
    ld bc, $0616
    db $76
    inc h
    ld h, c
    ld b, l
    nop
    ld bc, $0616
    ld a, b
    dec h
    ld e, c
    ld b, d
    nop
    nop
    jr jr_004_4c77

jr_004_4c77:
    ld b, b
    dec h
    and a
    ld a, d
    nop
    nop
    jr jr_004_4c7f

jr_004_4c7f:
    ld d, d
    ld h, $93
    ld a, d
    nop
    rst $38
    sbc h
    ld c, a
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp h
    ld c, a
    nop
    nop
    nop
    nop
    nop
    rst $38
    call c, $004f
    nop
    nop
    nop
    nop
    rst $38
    db $fc
    ld c, a
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc e
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, h
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, h
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc h
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp h
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    call c, TimerOverflowInterrupt
    nop
    nop
    nop
    nop
    rst $38
    db $fc
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc e
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc a
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, h
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, h
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc h
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp h
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    call c, $0051
    nop
    nop
    nop
    nop
    rst $38
    db $fc
    ld d, c
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc e
    ld d, d
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc a
    ld d, d
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, h
    ld d, d
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, h
    ld d, d
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc h
    ld d, d
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp h
    ld d, d
    nop
    nop
    nop
    nop
    nop
    rst $38
    call c, $0052
    nop
    nop
    nop
    nop
    rrca
    ld bc, $4110
    db $10
    ld de, $0401
    rrca
    ld bc, $4111
    db $10
    ld [de], a
    ld bc, $0f05
    ld bc, $4110
    db $10
    dec [hl]
    ld bc, $0f04
    ld bc, $4f00
    ld d, [hl]
    ld c, $01
    inc bc
    rrca
    ld bc, $441f
    ld d, h
    dec bc
    inc bc
    dec c
    rra
    add c
    nop
    ld d, b
    ld e, d
    inc e
    inc b
    db $10
    rra
    add c
    rla
    ld d, b
    ld e, b
    dec de
    inc b
    db $10
    rra
    add c
    rla
    ld d, b
    ld e, c
    dec de
    inc b
    db $10
    rra
    add c
    rla
    ld d, b
    ld e, a
    dec de
    inc b
    db $10
    rra
    add c
    jr jr_004_4df8

    ld e, d
    inc e
    inc b
    db $10
    rra
    add c
    add hl, de
    ld d, b
    ld e, e
    dec e
    inc b
    db $10
    rra
    add c
    ld a, [de]
    ld d, b
    ld e, h
    ld e, $04
    db $10
    rra
    add c
    dec de
    ld d, b
    ld e, l
    rra
    inc b
    db $10
    rra
    add c
    inc e
    ld d, b
    ld e, [hl]
    jr nz, jr_004_4dcf

    ld de, $022f
    dec e

jr_004_4dcf:
    ld [hl], b
    ld d, b
    inc sp
    inc b
    rst $38
    cpl
    ld [bc], a
    ld e, $70
    ld d, b
    inc sp
    inc b
    rst $38
    cpl
    ld [bc], a
    nop
    ld [hl], c
    ld d, c
    inc [hl]
    inc b
    rst $38
    ccf
    inc b
    nop
    ld a, h
    ld [hl], b
    ld l, $04
    jr jr_004_4e2c

    inc b
    nop
    ld a, h
    ld [hl], c
    ld l, $04
    jr jr_004_4e34

    inc b
    nop
    ld a, h

jr_004_4df8:
    ld [hl], d
    ld l, $04
    jr jr_004_4e3c

    inc b
    nop
    ld a, h
    ld [hl], h
    ld l, $04
    jr @+$41

    inc b
    nop
    ld a, h
    db $76
    ld l, $04
    jr jr_004_4e4c

    inc b
    nop
    ld a, l
    ld [hl], a
    cpl
    inc b
    jr @+$41

    inc b
    nop
    ld a, l
    ld a, d
    cpl
    inc b
    jr @+$41

    inc b
    nop
    ld a, l
    ld a, e
    cpl
    inc b
    jr @+$41

    inc b
    nop
    ld a, a
    ld a, h
    ld sp, $1804

jr_004_4e2c:
    ccf
    inc b
    nop
    ld a, a
    ld [hl], d
    ld sp, $1804

jr_004_4e34:
    ld b, b
    ld [$6000], sp
    ld b, b
    ld hl, $1805

jr_004_4e3c:
    ld b, c
    ld [$6100], sp
    ld b, c
    ld [hl+], a
    dec b
    jr @+$44

    ld [$6200], sp
    ld b, d
    inc hl
    dec b
    add hl, de

jr_004_4e4c:
    ld b, e
    ld [$6300], sp
    ld b, e
    inc h
    dec b
    jr jr_004_4e99

    ld [$6400], sp
    ld b, h
    dec h
    dec b
    jr jr_004_4ea2

    ld [$6500], sp
    ld b, l
    ld h, $05
    jr @+$48

    ld [$6600], sp
    ld b, [hl]
    daa
    dec b
    add hl, de
    ld [hl], $04
    ld c, $40
    db $10
    jr z, @+$06

    rst $38
    ld b, a
    ld [$6700], sp
    ld b, a
    add hl, hl
    ld b, $18
    ld b, a
    ld [$6727], sp
    ld b, a
    add hl, hl
    ld b, $18
    ld b, a
    ld [$6728], sp
    ld c, l
    add hl, hl
    ld b, $18
    ld c, b
    ld [$6800], sp
    ld c, b
    ld a, [hl+]
    ld b, $18
    ld c, b
    ld [$6c00], sp
    ld c, [hl]

jr_004_4e99:
    ld a, [hl+]
    ld b, $18
    ld c, b
    ld [$6c26], sp
    ld c, a
    ld a, [hl+]

jr_004_4ea2:
    ld b, $18
    ld c, c
    ld [$6900], sp
    ld c, c
    dec hl
    ld b, $18
    ld c, d
    ld [$6a00], sp
    ld c, d
    inc l
    ld b, $18
    ld c, d
    ld [$6a00], sp
    adc [hl]
    inc l
    ld b, $18
    ld c, e
    ld [$6000], sp
    ld b, b
    ld hl, $1806
    ld c, a
    stop
    ld a, l
    ld [hl], a
    cpl
    dec b
    jr jr_004_4f1c

    stop
    ld a, l
    ld a, b
    cpl
    dec b
    jr jr_004_4f24

    stop
    ld a, l
    ld a, c
    cpl
    dec b
    jr jr_004_4f2c

    stop
    ld a, h
    ld [hl], l
    ld l, $05
    jr jr_004_4f34

    stop
    ld a, a
    ld a, h
    ld sp, $1805
    ld c, a
    stop
    ld a, h
    ld [hl], b
    ld l, $06
    jr jr_004_4f44

    stop
    ld a, h
    ld [hl], e
    ld l, $06
    jr jr_004_4f4c

    stop
    ld a, l
    ld [hl], a
    cpl
    ld b, $18
    ld c, a
    stop
    ld a, l
    ld a, c
    cpl
    ld b, $18
    ld c, a
    stop
    ld a, l
    ld h, b
    cpl
    ld b, $18
    ld c, a
    stop
    ld a, l
    ld h, c
    cpl
    ld b, $18

jr_004_4f1c:
    ld c, a
    stop
    ld a, l
    ld h, d
    cpl
    ld b, $18

jr_004_4f24:
    ld c, a
    stop
    ld a, l
    ld h, e
    cpl
    ld b, $18

jr_004_4f2c:
    ld d, b
    jr z, jr_004_4f2f

jr_004_4f2f:
    ld l, l
    inc a
    ld [hl-], a
    dec b
    ld a, [de]

jr_004_4f34:
    ld d, c
    jr z, jr_004_4f37

jr_004_4f37:
    ld l, l
    dec a
    ld [hl-], a
    dec b
    ld a, [de]
    ld d, d
    jr z, jr_004_4f3f

jr_004_4f3f:
    ld l, l
    ld l, b
    ld [hl-], a
    dec b
    ld a, [de]

jr_004_4f44:
    ld d, e
    jr z, jr_004_4f47

jr_004_4f47:
    ld l, l
    ld a, $32
    dec b
    ld a, [de]

jr_004_4f4c:
    ld d, h
    jr z, jr_004_4f4f

jr_004_4f4f:
    ld l, l
    ld l, c
    ld [hl-], a
    dec b
    ld a, [de]
    ld d, l
    jr z, jr_004_4f57

jr_004_4f57:
    ld l, l
    ld l, d
    ld [hl-], a
    dec b
    ld a, [de]
    ld e, b
    jr z, jr_004_4f5f

jr_004_4f5f:
    ld l, l
    ld l, e
    ld [hl-], a
    ld b, $1a
    ld e, b
    jr z, jr_004_4f67

jr_004_4f67:
    ld l, l
    ld l, h
    ld [hl-], a
    ld b, $1a
    ld e, c
    jr z, jr_004_4f6f

jr_004_4f6f:
    ld l, l
    adc l
    ld [hl-], a
    ld b, $1a
    ld e, a
    jr nz, jr_004_4f77

jr_004_4f77:
    ld l, l
    ld l, l
    ld [hl-], a
    ld b, $1a
    ld e, a
    jr nz, jr_004_4f7f

jr_004_4f7f:
    ld l, l
    ld l, [hl]
    ld [hl-], a
    ld b, $1a
    ld e, a
    jr nz, jr_004_4f87

jr_004_4f87:
    ld l, l
    ld l, a
    ld [hl-], a
    ld b, $1a
    ld e, a
    jr nz, jr_004_4fa4

    ld c, b
    jr nc, jr_004_4fa8

    inc b
    nop
    ld e, c
    jr z, jr_004_4f97

jr_004_4f97:
    sub [hl]
    adc l
    ld [hl-], a
    ld b, $ff
    rrca
    ld bc, $4001
    stop
    nop
    nop

jr_004_4fa4:
    rrca
    ld bc, $4101

jr_004_4fa8:
    ld de, $0100
    nop
    rrca
    ld bc, $4201
    ld [de], a
    nop
    ld [bc], a
    nop
    rrca
    ld bc, $4301
    inc de
    nop
    inc bc
    nop
    rrca
    ld bc, $4002
    db $10
    ld bc, $0000
    rrca
    ld bc, $4102
    ld de, $0101
    nop
    rrca
    ld bc, $4202
    ld [de], a
    ld bc, $0002
    rrca
    ld bc, $4302
    inc de
    ld bc, $0003
    rrca
    ld bc, $4003
    db $10
    ld [bc], a
    nop
    nop
    rrca
    ld bc, $4103
    ld de, $0102
    nop
    rrca
    ld bc, $4203
    ld [de], a
    ld [bc], a
    ld [bc], a
    nop
    rrca
    ld bc, $4303
    inc de
    ld [bc], a
    inc bc
    nop
    rrca
    ld bc, $4004
    db $10
    inc bc
    nop
    nop
    rrca
    ld bc, $4104
    ld de, $0103
    nop
    rrca
    ld bc, $4204
    ld [de], a
    inc bc
    ld [bc], a
    nop
    rrca
    ld bc, $4304
    inc de
    inc bc
    inc bc
    nop
    rrca
    ld bc, $4005
    db $10
    dec b
    nop
    nop
    rrca
    ld bc, $4105
    ld de, $0105
    nop
    rrca
    ld bc, $4205
    ld [de], a
    dec b
    ld [bc], a
    nop
    rrca
    ld bc, $4305
    inc de
    dec b
    inc bc
    nop
    rrca
    ld bc, $4006
    inc d
    ld b, $00
    ld [bc], a
    rrca
    ld bc, $4106
    dec d
    ld b, $01
    ld [bc], a
    rrca
    ld bc, $4206
    ld d, $06
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $4306
    rla
    ld b, $03
    ld [bc], a
    rrca
    ld bc, $4007
    inc d
    rlca
    nop
    ld bc, $010f
    rlca
    ld b, c
    dec d
    rlca
    ld bc, $0f01
    ld bc, $4207
    ld d, $07
    ld [bc], a
    ld bc, $010f
    rlca
    ld b, e
    rla
    rlca
    inc bc
    ld bc, $010f
    ld [$2440], sp
    ld [$0000], sp
    rrca
    ld bc, $4108
    dec h
    ld [$0001], sp
    rrca
    ld bc, $4208
    ld h, $08
    ld [bc], a
    nop
    rrca
    ld bc, $4308
    daa
    ld [$0003], sp
    rrca
    ld bc, $4009
    db $10
    add hl, bc
    nop
    ld [bc], a
    rrca
    ld bc, $4109
    ld de, $0109
    ld [bc], a
    rrca
    ld bc, $4209
    ld [de], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $4309
    inc de
    add hl, bc
    inc bc
    ld [bc], a
    rrca
    ld bc, $4009
    jr @+$0b

    nop
    ld [bc], a
    rrca
    ld bc, $4109
    add hl, de
    add hl, bc
    ld bc, $0f02
    ld bc, $4209
    ld a, [de]
    add hl, bc
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $4309
    dec de
    add hl, bc
    inc bc
    ld [bc], a
    rrca
    ld bc, $400a
    db $10
    ld a, [bc]
    nop
    ld [bc], a
    rrca
    ld bc, $410a
    ld de, $010a
    ld [bc], a
    rrca
    ld bc, $420a
    ld [de], a
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $430a
    inc de
    ld a, [bc]
    inc bc
    ld [bc], a
    rrca
    ld bc, $400a
    inc e
    ld a, [bc]
    nop
    ld [bc], a
    rrca
    ld bc, $410a
    dec e
    ld a, [bc]
    ld bc, $0f02
    ld bc, $420a
    ld e, $0a
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $430a
    rra
    ld a, [bc]
    inc bc
    ld [bc], a
    rrca
    ld bc, $400b
    db $10
    inc c
    nop
    ld [bc], a
    rrca
    ld bc, $410b
    ld de, $010c
    ld [bc], a
    rrca
    ld bc, $420b
    ld [de], a
    inc c
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $430b
    inc de
    inc c
    inc bc
    ld [bc], a
    rrca
    ld bc, $4009
    jr nz, jr_004_514b

    nop
    ld [bc], a
    rrca
    ld bc, $4109
    ld hl, $0109

jr_004_514b:
    ld [bc], a
    rrca
    ld bc, $4209
    ld [hl+], a
    add hl, bc
    ld [bc], a
    ld [bc], a
    rrca
    ld bc, $4309
    inc hl
    add hl, bc
    inc bc
    ld [bc], a
    rrca
    ld bc, $400c
    db $10
    dec c
    nop
    nop
    rrca
    ld bc, $410c
    ld de, $010d
    nop
    rrca
    ld bc, $420c
    ld [de], a
    dec c
    ld [bc], a
    nop
    rrca
    ld bc, $430c
    inc de
    dec c
    inc bc
    nop
    rrca
    ld bc, $400d
    inc h
    ld c, $00
    inc bc
    rrca
    ld bc, $410d
    dec h
    ld c, $01
    inc bc
    rrca
    ld bc, $420d
    ld h, $0e
    ld [bc], a
    inc bc
    rrca
    ld bc, $430d
    daa
    ld c, $03
    inc bc
    rrca
    ld bc, $400e
    db $10
    rrca
    nop
    inc bc
    rrca
    ld bc, $410e
    ld de, $010f
    inc bc
    rrca
    ld bc, $420e
    ld [de], a
    rrca
    ld [bc], a
    inc bc
    rrca
    ld bc, $430e
    inc de
    rrca
    inc bc
    inc bc
    rrca
    ld bc, $400f
    jr z, jr_004_51d2

    nop
    rst $38
    rrca
    ld bc, $410f
    add hl, hl
    db $10
    ld bc, $0fff
    ld bc, $420f
    ld a, [hl+]
    db $10

jr_004_51d2:
    ld [bc], a
    rst $38
    rrca
    ld bc, $430f
    dec hl
    db $10
    inc bc
    rst $38
    rrca
    ld bc, $4012
    db $10
    inc de
    nop
    ld b, $0f
    ld bc, $4112
    ld de, $0113
    ld b, $0f
    ld bc, $4212
    ld [de], a
    inc de
    ld [bc], a
    ld b, $0f
    ld bc, $4312
    inc de
    inc de
    inc bc
    ld b, $0f
    ld bc, $4013
    inc l
    inc d
    nop
    rlca
    rrca
    ld bc, $4113
    dec l
    inc d
    ld bc, $0f07
    ld bc, $4213
    ld l, $14
    ld [bc], a
    rlca
    rrca
    ld bc, $4313
    cpl
    inc d
    inc bc
    rlca
    rrca
    ld bc, $4014
    db $10
    dec d
    nop
    ld b, $0f
    ld bc, $4114
    ld de, $0115
    ld b, $0f
    ld bc, $4214
    ld [de], a
    dec d
    ld [bc], a
    ld b, $0f
    ld bc, $4314
    inc de
    dec d
    inc bc
    ld b, $0f
    ld bc, $4800
    jr nc, jr_004_5258

    nop
    nop
    rrca
    ld bc, $4900
    ld sp, $0116
    nop
    rrca
    ld bc, $4a00
    ld [hl-], a
    ld d, $02
    nop
    rrca
    ld bc, $4b00

Jump_004_5258:
jr_004_5258:
    inc sp
    ld d, $03
    nop
    rrca
    ld bc, $4815
    jr nc, jr_004_5278

    nop
    nop
    rrca
    ld bc, $4915
    ld sp, $0116
    nop
    rrca
    ld bc, $4a15
    ld [hl-], a
    ld d, $02
    nop
    rrca
    ld bc, $4b15

jr_004_5278:
    inc sp
    ld d, $03
    nop
    rrca
    ld bc, $4815
    jr nc, jr_004_5298

    nop
    ld [$010f], sp
    dec d
    ld c, c

Jump_004_5288:
    ld sp, $0116
    ld [$010f], sp
    dec d
    ld c, d
    ld [hl-], a
    ld d, $02
    ld [$010f], sp
    dec d
    ld c, e

jr_004_5298:
    inc sp
    ld d, $03
    ld [$010f], sp
    ld d, $48
    inc [hl]
    rla
    nop
    nop
    rrca
    ld bc, $4916
    dec [hl]
    rla
    ld bc, $0f00
    ld bc, $4a16
    ld [hl], $17
    ld [bc], a
    nop
    rrca
    ld bc, $4b16
    scf
    rla
    inc bc
    nop
    rrca
    ld bc, $4816
    jr c, jr_004_52d9

    nop
    nop
    rrca
    ld bc, $4916
    add hl, sp
    rla
    ld bc, $0f00
    ld bc, $4a16
    ld a, [hl-]
    rla
    ld [bc], a
    nop
    rrca
    ld bc, $4b16
    dec sp

jr_004_52d9:
    rla
    inc bc
    nop
    rrca
    ld bc, $4c00
    ld h, h
    jr jr_004_52e3

jr_004_52e3:
    nop
    rrca
    ld bc, $4c00
    ld h, h
    jr jr_004_52eb

jr_004_52eb:
    nop
    rrca
    ld bc, $4d00
    ld h, l
    add hl, de
    ld bc, $0f0a
    ld bc, $4e00
    ld h, [hl]
    ld a, [de]
    ld [bc], a
    dec b
    rrca
    ld bc, $4800
    jr nc, jr_004_5318

    inc b
    ld [$010f], sp
    nop
    ld c, c
    ld sp, $0416
    ld [$010f], sp
    nop
    ld c, d
    ld [hl-], a
    ld d, $04
    ld [$010f], sp
    nop
    ld c, e

jr_004_5318:
    inc sp
    ld d, $04
    ld [$010f], sp
    nop
    ld c, h
    ld h, h
    jr @+$05

    nop
    rrca
    ld bc, $4c00
    ld h, h
    jr @+$05

    nop
    rrca
    ld bc, $4d00
    ld h, l
    add hl, de
    inc bc
    ld a, [bc]
    rrca
    ld bc, $4e00
    ld h, [hl]
    ld a, [de]
    inc bc
    dec b
    ld c, h
    ld d, e
    ld c, h
    ld d, h
    ld c, h
    ld d, h
    ld c, h
    ld d, h
    ld c, h
    ld d, l
    ld c, h
    ld d, [hl]
    ld c, h
    ld d, l
    ld c, h
    ld d, [hl]
    ld de, $1091
    add hl, de
    rla
    rla
    rla
    rla
    rra
    adc c
    add hl, bc
    add hl, bc
    adc c
    dec c
    adc c
    add hl, bc
    db $10
    db $10
    db $10
    add hl, de
    ld d, $16
    ld d, $16
    sbc a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    adc c
    adc c
    add hl, bc
    adc a
    db $10
    db $10
    add hl, de
    ld d, $16
    ld d, $16
    ld [$0808], sp
    ld [$8808], sp
    dec c
    adc c
    rrca
    rrca
    rrca
    jr jr_004_5396

    rla
    ld d, $16
    ld [$0808], sp
    ld [$0a08], sp
    adc d
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    jr @-$7e

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_004_5396:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    adc d
    ld a, [bc]
    rrca
    rrca
    rrca
    adc a
    ld bc, $1a01
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    adc d
    inc c
    adc d
    dec b
    dec b
    dec b
    rlca
    add b
    add b
    add b
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    adc d
    ld a, [bc]
    dec b
    dec b
    dec b
    add l
    nop
    nop
    nop
    nop
    add b
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc b
    inc b
    inc b
    inc b
    add l
    add l
    add l
    dec b
    nop
    nop
    add b
    nop
    ld bc, $0e80
    add b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $80
    nop
    add b
    inc bc
    add b
    add b
    ld c, $80
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $00
    add b
    add b
    add b
    add b
    add b
    ld c, $0e
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $80
    add b
    ld bc, $8001
    ld c, $0e
    add b
    add b
    add b
    dec de
    sbc e
    dec e
    ld b, $06
    ld b, $80
    add b
    ld bc, $8080
    ld bc, $801e
    nop
    nop
    dec de
    dec de
    sbc e
    inc de
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    add b
    ld bc, $0280
    ld [bc], a
    add b
    dec de
    dec de
    sbc e
    dec de
    inc de
    inc de
    ld [de], a
    ld [de], a
    sub d
    ld [de], a
    nop
    add b
    nop
    add b
    add b
    nop
    dec de
    sbc e
    inc e
    sbc e
    sub d
    ld [de], a
    ld [de], a
    ld [de], a
    inc d
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    dec de
    dec de
    sbc e
    dec de
    daa
    and h
    jr nz, @+$27

    dec h
    dec h
    inc h
    inc h

jr_004_5454:
    ld hl, $22a1
    dec hl
    dec hl
    add hl, hl
    inc h
    inc h
    and h
    inc h
    jr nz, jr_004_5480

    jr nz, jr_004_5482

    jr nz, jr_004_5488

    and c
    ld hl, $29a1
    add hl, hl
    add hl, hl
    inc h
    inc hl
    inc h
    jr nz, jr_004_5494

    dec h
    dec h
    jr nz, jr_004_5497

    inc h
    ld hl, $22a1
    add hl, hl
    add hl, hl
    add hl, hl
    inc h
    inc hl
    inc h
    jr nz, jr_004_549f

    dec h

jr_004_5480:
    dec h
    and a

jr_004_5482:
    and h
    and h
    ld hl, $2121
    ld a, [hl+]

jr_004_5488:
    ld a, [hl+]

Call_004_5489:
    ld a, [hl+]
    ld a, [hl+]
    inc h
    inc h
    jr nz, @+$22

    jr nz, jr_004_54b6

    daa
    jr nz, jr_004_54b8

jr_004_5494:
    and h
    ld h, $a4

jr_004_5497:
    xor c
    xor c
    xor c
    xor c
    inc h
    jr nz, @+$27

    dec h

jr_004_549f:
    jr nz, jr_004_54c6

    jr nz, @+$22

    inc h
    and h
    ld h, $a6
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc h
    jr z, jr_004_54ce

    jr nz, jr_004_5454

    jr z, jr_004_54da

    jr z, jr_004_54dc

    inc h
    inc h

jr_004_54b6:
    inc h
    add hl, hl

jr_004_54b8:
    inc h
    inc h
    inc h
    inc h
    jr z, @+$2a

    inc h
    inc h
    jr z, jr_004_54ea

    jr z, jr_004_54ec

    inc h
    inc h

jr_004_54c6:
    inc h
    add hl, hl
    inc h
    inc h
    inc h
    inc h
    inc l
    dec l

jr_004_54ce:
    dec l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc [hl]
    inc [hl]
    inc l
    inc l

jr_004_54da:
    inc [hl]
    inc [hl]

jr_004_54dc:
    inc l
    inc l
    inc l
    inc l
    dec l
    inc [hl]
    inc [hl]
    inc [hl]
    dec a
    jr nc, jr_004_5514

    dec l
    inc l
    inc l

jr_004_54ea:
    inc [hl]
    inc l

jr_004_54ec:
    inc [hl]
    inc [hl]
    inc [hl]
    inc l
    inc l
    inc l
    inc l
    inc l
    ld sp, $2f34
    ld sp, $3333
    inc l
    inc l
    inc l
    dec [hl]
    dec [hl]
    inc l
    inc l
    inc l
    inc l
    ld sp, $3232
    inc sp
    inc l
    inc sp
    inc sp
    inc l
    inc l
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c

jr_004_5514:
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld [hl], $55
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $56
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    ld d, a
    ld d, a
    jr c, jr_004_55a5

    jr c, jr_004_55a7

    jr c, jr_004_55a9

    jr c, jr_004_55ab

    jr c, jr_004_55ad

    jr c, jr_004_55af

    jr c, jr_004_55b1

    jr c, jr_004_55b3

    jr c, jr_004_55b5

    jr c, jr_004_55b7

    jr c, jr_004_55b9

    jr c, jr_004_55bb

    jr c, jr_004_55bd

    jr c, jr_004_55df

    ld e, b
    ld e, b
    ld e, b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_004_55a5:
    add hl, sp
    add hl, sp

jr_004_55a7:
    add hl, sp
    ld e, c

jr_004_55a9:
    ld e, c
    ld a, [hl-]

jr_004_55ab:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55ad:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55af:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55b1:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55b3:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55b5:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55b7:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55b9:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55bb:
    ld a, [hl-]
    ld a, [hl-]

jr_004_55bd:
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    dec sp
    dec sp
    dec sp
    ld e, d
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp

jr_004_55df:
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld e, d
    ld e, d
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, e
    ld c, e
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, d
    ld c, h
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, d
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld a, $4e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, [hl]
    ld d, b
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $47
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ccf
    ccf
    ld a, $40
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3f
    ld a, $40
    ld a, $3e
    ld a, $40
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ccf
    ld e, h
    ld e, h
    ld b, d
    ld b, d
    ld e, e
    ld e, e
    ld e, e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, e
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld a, $5d
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $4d
    ld c, l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld d, b
    ld d, b
    ld d, b
    ld c, a
    ld c, a
    ld c, a
    ld d, b
    ld c, a
    ld c, a
    ld c, l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld h, b
    ld h, b
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld a, $3e
    ld a, $3e
    ld a, $54
    ld d, h
    ld d, h
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld a, $3e
    ld a, $62
    ld a, [$cd25]
    cp $ff
    ret z

    call $3600
    call Call_004_579a

jr_004_5758:
    call Call_004_5773
    jr nz, jr_004_5758

    ret


    ld hl, $cd30
    res 6, [hl]
    ld a, [$cd25]
    inc a
    ret z

    ld a, [$cd00]
    and $01
    ret z

    call Call_004_5773
    jr jr_004_579a

Call_004_5773:
    ld a, [$ccfa]
    ld b, a
    ld a, [$ccfb]
    cp b
    ret z

    inc b
    ld a, b
    and $1f
    ld [$ccfa], a
    ld hl, $db90
    rst $10
    ld a, $02
    ldh [rSVBK], a
    ld b, [hl]
    xor a
    ldh [rSVBK], a
    ld a, b
    call Call_004_580f
    ld hl, $cd30
    set 6, [hl]
    or h
    ret


Call_004_579a:
jr_004_579a:
    ld hl, $cd31
    ld a, [$cd30]
    bit 0, a
    call nz, Call_004_57cf
    ld hl, $cd34
    ld a, [$cd30]
    bit 1, a
    call nz, Call_004_57cf
    ld hl, $cd37
    ld a, [$cd30]
    bit 2, a
    call nz, Call_004_57cf
    ld hl, $cd3a
    ld a, [$cd30]
    bit 3, a
    call nz, Call_004_57cf
    ld a, [$cd30]
    and $7f
    ld [$cd30], a
    ret


Call_004_57cf:
    ld a, [$cd30]
    bit 7, a
    jr nz, jr_004_57d8

    dec [hl]
    ret nz

jr_004_57d8:
    push hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld a, [hl+]
    cp $ff
    jr nz, jr_004_57e8

    ld b, a
    ld c, [hl]
    add hl, bc
    ld a, [hl+]

jr_004_57e8:
    ld c, l
    ld b, h
    pop hl
    ld [hl+], a
    ld [hl], c
    inc hl
    ld [hl], b
    ld b, e
    ld a, [$ccfb]
    inc a
    and $1f
    ld e, a
    ld a, [$ccfa]
    cp e
    ret z

    ld a, e
    ld [$ccfb], a
    ld a, $02
    ldh [rSVBK], a
    ld a, e
    ld hl, $db90
    rst $10
    ld [hl], b
    xor a
    ldh [rSVBK], a
    or h
    ret


Call_004_580f:
    ld c, $06
    call $019d
    ld bc, $5a48
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push de
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld b, [hl]
    pop hl
    jp $0566


    ld l, l
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $6e1f
    ld c, d
    sub b
    sub [hl]
    ld bc, $ae1f
    ld c, h
    ld [hl-], a
    sub [hl]
    ld bc, $2c1f
    ld l, d
    or l
    sub [hl]
    ld bc, $6e1f
    ld c, [hl]
    add hl, hl
    sub [hl]
    ld bc, $6e1f
    ld c, a
    rst $08
    sub [hl]
    ld bc, $ae1f
    ld d, c
    add h
    sub [hl]
    ld bc, $ee1f
    ld d, e
    ld l, b
    sub [hl]
    ld bc, $009f
    ld d, l
    xor [hl]
    ld d, h
    and e
    sub [hl]
    ld bc, $6e1f
    ld d, [hl]
    ld h, h
    sub [hl]
    ld bc, $ae1f
    ld e, d
    db $d3
    sub [hl]
    ld bc, $ae1f
    ld e, h
    or a
    sub [hl]
    ld bc, $ee1f
    ld e, [hl]
    or l
    sub [hl]
    ld bc, $ee1f
    ld h, b
    rla
    sub [hl]
    ld bc, $6e1f
    ld h, c
    ld d, h
    sub [hl]
    ld bc, $ae1f
    ld h, e
    ld [hl], $96
    ld bc, $ae1f
    ld h, l
    inc hl
    sub [hl]
    ld bc, $ae1f
    ld h, [hl]
    rst $20
    sub [hl]
    ld bc, $189f
    ld h, a
    ld b, b
    adc b
    pop bc
    inc bc
    xor [hl]
    ld l, b
    cp [hl]
    sub [hl]
    ld bc, $189f
    ld h, a
    ld b, b
    adc b
    pop bc
    inc bc
    ld l, $6a
    and h
    sub [hl]
    ld bc, $6d1f
    ld a, b
    db $e4
    sub [hl]
    ld bc, $ae1f
    ld b, l
    rra
    sub d
    ld bc, $6ebf
    ld c, b
    jp $0196


    rra
    ld l, [hl]
    db $76
    ld a, c
    adc e
    ld bc, $aeaf
    ld a, c
    inc e
    adc [hl]
    ld bc, $ae9f
    ld a, d
    db $e4
    sub b
    ld bc, $eebf
    ld a, [hl]
    ld e, d
    sub h
    ld bc, $af3f
    ld b, c
    adc c
    adc e
    ld bc, $afaf
    ld b, h
    ld h, [hl]
    adc [hl]
    ld bc, $6f9f
    ld b, [hl]
    ld b, a
    sub b
    ld bc, $af9f
    ld c, b
    dec e
    sub l
    or c
    inc h
    ld l, a
    ld c, d
    ld c, b
    sub h
    ld b, c
    dec sp
    ld l, a
    ld c, l
    xor d
    sub h
    pop bc
    inc sp
    ld l, a
    ld d, b
    ld d, b
    sub h
    add c
    scf
    ld l, a
    ld d, e
    daa
    sub h
    ld bc, $6f9f
    ld d, h
    ld d, l
    sub [hl]
    ld bc, $ac1f
    ld [hl], h
    ld de, $418c
    cp e
    xor h
    ld [hl], a
    dec a
    sub b
    ld bc, $acbf
    ld a, e
    inc bc
    sub h
    ld bc, $00bf
    ld d, d
    xor h
    ld a, [hl]
    adc a
    adc a
    ld bc, $6c87
    ld a, [hl]
    call nc, $0190
    cp a
    ld l, l
    ld b, c
    or [hl]
    sub h
    ld bc, $00bf
    ld d, d
    jr jr_004_599c

    ld b, b
    adc b
    add c
    rlca
    db $ec
    ld h, h
    pop hl
    sub [hl]
    ld bc, $ec1f
    ld h, [hl]
    ld b, [hl]
    sub [hl]
    ld bc, $ec1b
    ld h, a
    and l
    sub [hl]
    ld bc, $ec1b
    ld l, c
    ld de, $0196
    dec de
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld b, a
    nop
    ld c, l
    jr z, jr_004_59b8

    jr z, jr_004_59ba

    ld l, $58
    inc [hl]
    ld e, b
    ld a, [hl-]
    ld e, b
    ld b, b
    ld e, b
    ld b, [hl]
    ld e, b
    ld c, h
    ld e, b
    ld d, d
    ld e, b
    ld e, d
    ld e, b
    ld h, b
    ld e, b
    ld h, [hl]
    ld e, b
    ld l, h
    ld e, b
    ld [hl], d
    ld e, b
    ld a, b
    ld e, b
    ld a, [hl]
    ld e, b
    add h
    ld e, b
    adc d
    ld e, b
    sub b
    ld e, b
    sbc h
    ld e, b
    xor b
    ld e, b
    xor [hl]
    ld e, b
    or h
    ld e, b
    ret nz

    ld e, b
    ret c

    ld e, b
    ldh a, [$58]
    or $58
    db $fc
    ld e, b
    ld [bc], a
    ld e, c
    ld c, $59
    ld [hl+], a
    ld e, c

jr_004_599c:
    ld [hl], $59
    inc a
    ld e, c
    ld b, d
    ld e, c
    ld c, b
    ld e, c
    ld c, [hl]
    ld e, c
    ld d, h
    ld e, c
    ld d, [hl]
    ld e, c
    ld e, b
    ld e, c
    ld e, d
    ld e, c
    ld e, h
    ld e, c
    and $59
    db $eb
    ld e, c
    ldh a, [$59]
    push af
    ld e, c

jr_004_59b8:
    ld hl, sp+$59

jr_004_59ba:
    rst $38
    ld e, c
    inc b
    ld e, d
    and $59
    ld c, $5a
    inc de
    ld e, d
    ld d, $5a
    dec e
    ld e, d
    jr nz, jr_004_5a24

    inc hl
    ld e, d
    ld h, $5a
    and $59
    add hl, hl
    ld e, d
    ld l, $5a
    and $59
    and $59
    and $59
    and $59
    and $59
    and $59
    inc sp
    ld e, d
    inc a
    ld e, d
    ld b, l
    ld e, d
    add e
    sub h
    ld e, h
    sbc [hl]
    ld e, h
    add e
    sub h
    ld e, h
    db $e4
    ld e, h
    add e
    sub h
    ld e, h
    xor b
    ld e, h
    add c
    sub h
    ld e, h
    add a
    sub h
    ld e, h
    add $5c
    jp c, $835c

    sub h
    ld e, h
    jp c, $875c

    sub h
    ld e, h
    ret nc

    ld e, h
    cp h
    ld e, h
    add c
    sub h
    ld e, h
    add e
    ld hl, sp+$5c
    ld [bc], a
    ld e, l
    add c
    inc c
    ld e, l
    add a
    sub h
    ld e, h
    xor b
    ld e, h
    xor $5c
    add c
    ld d, $5d
    add c
    ld a, [de]
    ld e, l
    add c

jr_004_5a24:
    ld e, $5d
    add c
    inc h
    ld e, l
    add e
    ld l, $5d
    jr c, jr_004_5a8b

    add e
    ld l, $5d
    ld c, d
    ld e, l
    adc a
    ld e, [hl]
    ld e, l
    ld l, b
    ld e, l
    ld [hl], d
    ld e, l
    add b
    ld e, l
    adc a
    ld e, [hl]
    ld e, l
    ld l, b
    ld e, l
    ld [hl], d
    ld e, l
    adc d
    ld e, l
    add c
    ld d, h
    ld e, l
    jr @+$67

    ld b, b
    adc b
    add c
    inc bc
    jr @+$67

    add b
    adc b
    add c
    inc bc
    jr @+$67

    ret nz

    adc b
    add c
    inc bc
    jr jr_004_5ac2

    nop
    adc b
    add c
    inc bc
    jr jr_004_5ac9

    ld h, b
    adc b
    pop bc
    ld bc, $6718
    and b
    adc b
    pop bc
    ld bc, $6718
    ldh [$88], a
    pop bc
    ld bc, $6818
    jr nz, @-$76

    pop bc
    ld bc, $6718
    ld b, b
    sub [hl]
    ld bc, $1803
    ld h, a
    add b
    sub [hl]
    ld bc, $1803
    ld h, a
    ret nz

    sub [hl]
    ld bc, $1803

jr_004_5a8b:
    ld l, b
    nop
    sub [hl]
    ld bc, $1803
    ld h, a
    ld b, b
    adc b
    pop bc
    inc bc
    jr jr_004_5aff

    add b
    adc b
    pop bc
    inc bc
    jr jr_004_5b05

    ret nz

    adc b
    pop bc
    inc bc
    jr jr_004_5b0c

    nop
    adc b
    pop bc
    inc bc
    jr jr_004_5b10

    ld b, b
    adc b
    pop bc
    inc bc
    jr jr_004_5b16

    add b
    adc b
    pop bc
    inc bc
    jr jr_004_5b1c

    ret nz

    adc b
    pop bc
    inc bc
    jr jr_004_5b23

    nop
    adc b
    pop bc
    inc bc
    jr jr_004_5b2b

jr_004_5ac2:
    ld b, b
    sub [hl]
    add c
    ld bc, $6918
    ld h, b

jr_004_5ac9:
    sub [hl]
    add c
    ld bc, $6918
    add b
    sub [hl]
    add c
    ld bc, $6918
    and b
    sub [hl]
    add c
    ld bc, $6918
    ld b, b
    sub [hl]
    ld sp, $1801
    ld l, c
    ld h, b
    sub [hl]
    ld sp, $1801
    ld l, c
    add b
    sub [hl]
    ld sp, $1801
    ld l, c
    and b
    sub [hl]
    ld sp, $1801
    ld l, b
    ld b, b
    adc b
    pop bc
    inc bc
    jr jr_004_5b60

    add b
    adc b
    pop bc
    inc bc
    jr jr_004_5b66

    ret nz

jr_004_5aff:
    adc b
    pop bc
    inc bc
    jr jr_004_5b6d

    nop

jr_004_5b05:
    adc b
    pop bc
    inc bc
    jr jr_004_5b76

    nop
    adc b

jr_004_5b0c:
    pop bc
    inc bc
    jr jr_004_5b7c

jr_004_5b10:
    ld b, b
    adc b
    pop bc
    inc bc
    jr jr_004_5b82

jr_004_5b16:
    add b
    adc b
    pop bc
    inc bc
    jr jr_004_5b88

jr_004_5b1c:
    ret nz

    adc b
    pop bc
    inc bc
    jr jr_004_5b8e

    nop

jr_004_5b23:
    sub e
    add c
    inc bc
    jr jr_004_5b94

    ld b, b
    sub e
    add c

jr_004_5b2b:
    inc bc

jr_004_5b2c:
    jr jr_004_5b9a

    add b
    sub e
    add c
    inc bc

jr_004_5b32:
    jr jr_004_5ba0

    ret nz

    sub e
    add c
    inc bc
    jr jr_004_5ba3

    ldh [$88], a
    and c
    inc b
    jr @+$6c

    ld [hl], b
    adc b
    and c
    inc b
    jr jr_004_5bb1

    nop
    adc b
    and c
    inc b
    jr jr_004_5bb7

    sub b
    adc b
    and c
    inc b
    jr jr_004_5bbb

    ret nz

    adc b
    add c
    ld bc, $6a18
    ld d, b
    adc b
    add c
    ld bc, $6a18
    ldh [$88], a

jr_004_5b60:
    add c
    ld bc, $6b18
    ld [hl], b
    adc b

jr_004_5b66:
    add c
    ld bc, $6918
    ret nz

    adc b
    add c

jr_004_5b6d:
    inc bc
    jr @+$6c

    ld d, b
    adc b
    add c
    inc bc
    jr @+$6c

jr_004_5b76:
    ldh [$88], a
    add c
    inc bc
    jr jr_004_5be7

jr_004_5b7c:
    ld [hl], b
    adc b
    add c
    inc bc
    jr @+$66

jr_004_5b82:
    ld b, b
    adc b
    add c
    rlca
    jr @+$66

jr_004_5b88:
    ret nz

    adc b
    add c
    rlca
    jr @+$66

jr_004_5b8e:
    nop
    sub b
    sub c
    nop
    jr @+$66

jr_004_5b94:
    db $10
    sub b
    sub c
    nop
    jr @+$66

jr_004_5b9a:
    jr nz, jr_004_5b2c

    sub c
    nop
    jr @+$66

jr_004_5ba0:
    jr nc, jr_004_5b32

    sub c

jr_004_5ba3:
    nop
    jr jr_004_5c17

    add b
    adc l
    add c
    ld b, $18
    ld [hl], d
    add b
    adc l
    add c
    ld b, $18

jr_004_5bb1:
    ld [hl], e
    add b
    adc l
    add c
    ld b, $18

jr_004_5bb7:
    ld [hl], h
    add b
    adc l
    add c

jr_004_5bbb:
    ld b, $18
    ld [hl], c
    ldh a, [$8d]
    pop af
    nop
    jr jr_004_5c36

    ldh a, [$8d]
    pop af

jr_004_5bc7:
    nop
    jr @+$75

    ldh a, [$8d]
    pop af
    nop
    jr jr_004_5c44

    ldh a, [$8d]
    pop af
    nop
    jr jr_004_5c48

    nop
    adc a
    ld bc, $1800
    ld [hl], e
    nop
    adc a
    ld bc, $1800
    ld [hl], h
    nop
    adc a
    ld bc, $1800

jr_004_5be7:
    ld [hl], l
    nop
    adc a
    ld bc, $1800
    ld [hl], d
    nop
    adc a
    ld bc, $1804
    ld [hl], e
    nop
    adc a
    ld bc, $1804
    ld [hl], h
    nop
    adc a
    ld bc, $1804
    ld [hl], l
    nop
    adc a
    ld bc, $1804
    ld l, l
    nop
    adc c
    ld bc, $180a
    ld l, l
    or b
    adc c
    ld bc, $180a
    ld l, [hl]
    ld h, b
    adc c
    ld bc, $180a

jr_004_5c17:
    ld l, a
    db $10
    adc c
    ld bc, $180a
    ld l, a
    ret nz

    adc c
    or c
    nop
    jr @+$71

    ret nc

    adc c
    or c
    nop
    jr @+$71

    ldh [$89], a
    or c
    nop
    jr jr_004_5c9f

    ldh a, [$89]
    or c
    nop
    jr jr_004_5ca6

jr_004_5c36:
    nop
    adc c
    pop bc
    ld bc, $7018
    jr nz, jr_004_5bc7

    pop bc
    ld bc, $7018
    ld b, b
    adc c

jr_004_5c44:
    pop bc
    ld bc, $7018

jr_004_5c48:
    ld h, b
    adc c
    pop bc
    ld bc, $7018
    add b
    adc c
    pop hl
    ld bc, $7018
    and b
    adc c
    pop hl
    ld bc, $7018
    ret nz

    adc c
    pop hl
    ld bc, $7018
    ldh [$89], a
    pop hl
    ld bc, $7118
    nop
    adc c
    pop hl
    ld bc, $7118
    jr nz, @-$75

    pop hl
    ld bc, $7118
    ld b, b
    adc c
    pop hl
    ld bc, $7118
    ld h, b
    adc c
    pop hl
    ld bc, $7518
    add b
    adc l
    ld bc, $180d
    db $76
    add b
    adc l
    ld bc, $180d
    ld [hl], a
    add b
    adc l
    ld bc, $180d
    ld a, b
    add b
    adc l
    ld bc, $0f0d
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rst $38
    rst $30
    rrca

jr_004_5c9f:
    inc b
    rrca
    dec b
    rrca
    ld b, $0f
    rlca

jr_004_5ca6:
    rst $38
    rst $30
    ld [$0810], sp
    ld de, $1208
    ld [$ff13], sp
    rst $30
    rrca
    inc d
    rrca
    dec d
    rrca
    ld d, $0f
    rla
    rst $38
    rst $30
    rrca
    jr jr_004_5cce

    add hl, de
    rrca
    ld a, [de]
    rrca
    dec de
    rst $38
    rst $30
    rrca
    ld [$090f], sp
    rrca
    ld a, [bc]
    rrca
    dec bc

jr_004_5cce:
    rst $38
    rst $30
    rrca
    inc c
    rrca
    dec c
    rrca
    ld c, $0f
    rrca
    rst $38
    rst $30
    inc b
    inc e
    inc b
    dec e
    inc b
    ld e, $04
    rra
    rst $38
    rst $30
    ld b, $20
    ld b, $21
    ld b, $22
    ld b, $23
    rst $38
    rst $30
    ld b, $24
    ld b, $25
    ld b, $26
    ld b, $27
    rst $38
    rst $30
    rrca
    jr z, jr_004_5d0a

    add hl, hl
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rst $38
    rst $30
    ld [$082c], sp
    dec l
    ld [$082e], sp
    cpl

jr_004_5d0a:
    rst $38
    rst $30
    rrca
    jr nc, jr_004_5d1e

    ld sp, $320f
    rrca
    inc sp
    rst $38
    rst $30
    rrca
    inc [hl]
    rst $38
    db $fd
    rrca
    dec [hl]
    rst $38
    db $fd

jr_004_5d1e:
    rrca
    inc [hl]
    rrca
    dec [hl]
    rst $38
    ei
    ld [bc], a
    ld [hl], $02
    scf
    ld [bc], a
    jr c, jr_004_5d2d

    add hl, sp
    rst $38

jr_004_5d2d:
    rst $30
    rrca
    ld a, [hl-]
    rrca
    dec sp
    rrca
    inc a
    rrca
    dec a
    rst $38
    rst $30
    inc b
    ld a, $04
    ld b, d
    inc b
    ccf
    inc b
    ld b, e
    inc b
    ld b, b
    inc b
    ld b, h
    inc b
    ld b, c
    inc b
    ld b, l
    rst $38
    rst $28
    rrca
    ld b, [hl]
    rrca
    ld b, a
    rrca
    ld c, b
    rrca
    ld c, c
    rst $38
    rst $30
    ld e, $5e
    ld e, $5f
    ld e, $60
    ld e, $61
    rst $38
    rst $30
    rrca
    ld c, d
    rrca
    ld c, e
    rrca
    ld c, h
    rrca
    ld c, l
    rst $38
    rst $30
    ld [$084e], sp
    ld c, a
    ld [$0850], sp
    ld d, c
    rst $38
    rst $30
    rrca
    ld d, d
    rrca
    ld d, e
    rrca
    ld d, h
    rrca
    ld d, l
    rrca
    ld d, h
    rrca
    ld d, e
    rst $38
    di
    rrca
    ld d, [hl]
    rrca
    ld d, a
    rrca
    ld e, b
    rrca
    ld e, c
    rst $38
    rst $30
    rrca
    ld e, d
    rrca
    ld e, e
    rrca
    ld e, h
    rrca
    ld e, l
    rst $38
    rst $30
    call Call_004_5fda
    call Call_004_5de8
    call Call_004_5f53
    ld a, [$cc49]
    cp $02
    jr z, jr_004_5db7

    cp $04
    jr nc, jr_004_5dae

    call Call_004_5dbc
    jp Jump_004_60ab


jr_004_5dae:
    call Call_004_5ebd
    call Call_004_5f62
    jp Jump_004_60ab


jr_004_5db7:
    ld e, $03
    jp $1632


Call_004_5dbc:
    ld a, [$c63a]
    cp $01
    ret nz

    ld e, $06
    jp $1632


Call_004_5dc7:
Jump_004_5dc7:
jr_004_5dc7:
    ld a, [de]
    or a
    ret z

    ld b, a
    inc de
    ld a, [de]
    inc de
    call $15ba
    jr nz, jr_004_5dc7

    ld [hl], b
    ld c, a
    ld a, l
    or a
    jr z, jr_004_5dc7

jr_004_5dd9:
    dec l
    ld a, c
    call $15be
    jr nz, jr_004_5dc7

    ld [hl], b
    ld c, a
    ld a, l
    or a
    jr z, jr_004_5dc7

    jr jr_004_5dd9

Call_004_5de8:
    call $1956
    ldh [$8b], a
    ld hl, $5e26
    bit 0, a
    call nz, Call_004_5e1b
    ld hl, $5e36
    ldh a, [$8b]
    bit 1, a
    call nz, Call_004_5e1b
    ld hl, $5e46
    ldh a, [$8b]
    bit 2, a
    call nz, Call_004_5e1b
    ld hl, $5e56
    ldh a, [$8b]
    bit 3, a
    call nz, Call_004_5e1b
    ld hl, $5e66
    ldh a, [$8b]
    bit 7, a
    ret z

Call_004_5e1b:
    ld a, [$cc49]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, l
    ld d, h
    jr jr_004_5dc7

    db $76
    ld e, [hl]
    db $76
    ld e, [hl]
    db $76
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    add b
    ld e, [hl]
    add b
    ld e, [hl]
    add c
    ld e, [hl]
    add c
    ld e, [hl]
    add c
    ld e, [hl]
    add d
    ld e, [hl]
    add d
    ld e, [hl]
    add d
    ld e, [hl]
    adc d
    ld e, [hl]
    adc d
    ld e, [hl]
    adc e
    ld e, [hl]
    adc e
    ld e, [hl]
    adc e
    ld e, [hl]
    adc h
    ld e, [hl]
    adc h
    ld e, [hl]
    adc h
    ld e, [hl]
    sub h
    ld e, [hl]
    sub h
    ld e, [hl]
    sub l
    ld e, [hl]
    sub l
    ld e, [hl]
    sub l
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sub [hl]
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    sbc a
    ld e, [hl]
    xor l
    ld e, [hl]
    xor [hl]
    ld e, [hl]
    xor a
    ld e, [hl]
    or b
    ld e, [hl]
    or b
    ld e, [hl]
    cp h
    ld e, [hl]
    cp h
    ld e, [hl]
    nop
    inc [hl]
    jr nc, jr_004_5eae

    jr c, @-$5e

    ld [hl], b
    and b
    ld [hl], h
    nop
    nop
    nop
    dec [hl]
    ld sp, $3935
    and b
    ld [hl], c
    and b
    ld [hl], l
    nop
    nop
    ld [hl], $32
    ld [hl], $3a
    and b
    ld [hl], d
    and b
    halt
    nop
    scf
    inc sp
    scf
    dec sp
    and b
    ld [hl], e
    and b
    ld [hl], a
    nop
    rst $20
    pop bc
    ldh [$c6], a
    ldh [$c2], a
    ldh [$e3], a
    and $c5
    rst $20
    set 5, b
    ld [c], a
    nop

jr_004_5eae:
    nop
    nop
    and b
    ld e, $44
    ld b, d
    ld b, l
    ld b, e
    ld b, [hl]
    ld b, b
    ld b, a
    ld b, c
    ld b, l
    adc l
    nop

Call_004_5ebd:
    ld a, [$cc55]
    inc a
    ret z

    ld bc, $cfae

jr_004_5ec5:
    ld a, [bc]
    push bc
    sub $78
    cp $08
    call c, Call_004_5ed3
    pop bc
    dec c
    jr nz, jr_004_5ec5

    ret


Call_004_5ed3:
    ld de, $5f43
    call $0072
    ld a, [de]
    ldh [$8b], a
    inc de
    ld a, [de]
    ld e, a
    ld a, [$cd00]
    and $08
    jr z, jr_004_5f30

    ld a, [$cc48]
    ld h, a
    ld a, [$cd02]
    xor $02
    ld d, a
    ld a, e
    and $03
    cp d
    ret nz

    ld a, [$cd02]
    bit 0, a
    jr nz, jr_004_5f11

    and $02
    ld l, $0d
    ld a, [hl]
    jr nz, jr_004_5f0b

    and $f0
    swap a
    or $a0
    jr jr_004_5f20

jr_004_5f0b:
    and $f0
    swap a
    jr jr_004_5f20

jr_004_5f11:
    and $02
    ld l, $0b
    ld a, [hl]
    jr nz, jr_004_5f1c

    and $f0
    jr jr_004_5f20

jr_004_5f1c:
    and $f0
    or $0e

jr_004_5f20:
    cp c
    jr nz, jr_004_5f30

    push bc
    ld c, a
    ld a, [bc]
    sub $78
    cp $08
    jr nc, jr_004_5f2f

    ldh a, [$8b]
    ld [bc], a

jr_004_5f2f:
    pop bc

jr_004_5f30:
    ld a, e
    bit 7, a
    ret nz

    and $7f
    ld e, a
    call $3ac6
    ret nz

    ld [hl], $1e
    inc l
    ld [hl], e
    ld l, $4b
    ld [hl], c
    ret


    and b
    add b
    and b
    add c
    and b
    add d
    and b
    add e
    ld e, [hl]
    inc c
    ld e, l
    dec c
    ld e, [hl]
    ld c, $5d
    rrca

Call_004_5f53:
    call $1956
    bit 5, a
    ret z

    call $109a
    ld d, $cf
    ld a, $f0
    ld [de], a
    ret


Call_004_5f62:
    ld hl, $5f90
    ld a, [$cc49]
    sub $04
    jr z, jr_004_5f71

    dec a
    ret nz

    ld hl, $5fd1

jr_004_5f71:
    ld a, [$cc4c]
    ld b, a
    ld a, [$cc32]
    ld c, a
    ld d, $cf

jr_004_5f7b:
    ld a, [hl+]
    or a
    ret z

    cp b
    jr nz, jr_004_5f8b

    ld a, [hl+]
    and c
    jr z, jr_004_5f8c

    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld [de], a
    jr jr_004_5f7b

jr_004_5f8b:
    inc hl

jr_004_5f8c:
    inc hl
    inc hl
    jr jr_004_5f7b

    rrca
    ld bc, $330b
    rrca
    ld bc, $745a
    ld l, a
    ld bc, $8c0b
    ld l, a
    ld bc, $295c
    ld [hl], b
    ld [bc], a
    dec bc
    jr z, jr_004_6015

    ld [bc], a
    ld e, e
    ld d, d
    ld [hl], b
    inc b
    dec bc
    ld e, c
    ld [hl], b
    inc b
    ld e, e
    add h
    db $76
    ld [$170b], sp
    db $76
    ld [$255d], sp
    ld a, [hl]
    db $10
    dec bc
    ld d, [hl]
    ld a, [hl]
    db $10
    ld e, h
    ld h, [hl]
    and b
    ld bc, $445e
    and b
    ld [bc], a
    ld e, [hl]
    scf
    and b
    ld bc, $830b
    and b
    ld [bc], a
    dec bc
    ld a, b
    nop
    ld a, [hl]
    ld bc, $2b5c
    ld a, [hl]
    ld bc, $780b
    nop

Call_004_5fda:
    ld a, [$cc4c]
    ld b, a
    call $1956
    ld c, a
    ld d, $cf
    ld a, [$cc49]
    ld hl, $6005
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_004_5fee:
    ld a, [hl+]
    cp b
    jr nz, jr_004_5ffd

    ld a, [hl]
    and c
    jr z, jr_004_5ffd

    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld [de], a
    jr jr_004_5fee

jr_004_5ffd:
    ld a, [hl]
    or a
    ret z

    inc hl
    inc hl
    inc hl
    jr jr_004_5fee

    dec d
    ld h, b
    ccf
    ld h, b
    ld [hl], l
    ld h, b
    ld [hl], l
    ld h, b
    ld [hl], l
    ld h, b
    add e
    ld h, b
    xor c
    ld h, b
    xor c
    ld h, b

jr_004_6015:
    sbc d
    ld b, b
    inc sp
    push bc
    ld d, d
    ld b, b
    ld [bc], a
    ret nc

    ld d, d
    ld b, b
    ld bc, $526b
    ld b, b
    inc bc
    ld b, l
    jp hl


    ld bc, $0448
    jp hl


    ld [bc], a
    ld e, b
    inc b
    ld bc, $6680
    inc b
    ld bc, $6580
    sbc h
    ld bc, $6640
    inc b
    ld bc, $6740
    sbc h
    nop
    nop
    ld a, [bc]
    add b
    ld [hl-], a
    pop hl
    ld a, [bc]
    add b
    inc sp
    pop hl
    ld a, [bc]
    add b
    inc [hl]
    pop hl
    ld [$5340], sp
    add sp, $12
    ld b, b
    ld e, b
    add sp, $35
    ld b, b
    ld b, [hl]
    add sp, $13
    ld bc, $0425
    ld b, d
    ld bc, $0657
    ld b, h
    ld bc, $0656
    ld c, b
    ld bc, $0435
    ld d, l
    ld bc, $0452
    ld d, l
    ld [bc], a
    ld h, d
    inc b
    ld l, c
    jr nz, jr_004_609a

    pop hl
    nop
    nop
    add hl, sp
    add b
    rlca
    and b
    add hl, sp
    add b
    inc h
    add hl, bc
    add hl, sp
    add b
    ld a, [hl+]
    add hl, bc
    nop
    nop
    ldh a, [rLCDC]
    ld [hl], a
    ld l, d
    cp h
    jr nz, jr_004_60b4

    ld d, e
    ld a, $80
    ld e, h
    dec b
    ld [hl], e
    add b
    ld b, l
    and b
    ld [hl], e
    add b
    inc [hl]
    ld h, $99
    add b
    sbc l

jr_004_609a:
    ld b, h
    sbc d
    add b
    ld h, [hl]
    ld b, l
    sbc [hl]
    add b
    sbc l
    ld b, h
    daa
    add b
    ld d, a
    ld c, a
    nop
    nop
    nop
    nop

Jump_004_60ab:
    ld a, [$cc4c]
    ld hl, $6114
    call $1dbc

jr_004_60b4:
    ret nc

    rst $00
    sub l
    ld h, c
    sbc a
    ld h, c
    dec d
    ld h, d
    jr nc, jr_004_6120

    ld d, b
    ld h, d
    ld hl, $6862
    ld h, d
    ld e, h
    ld h, d
    adc c
    ld h, c
    ld [hl], a
    ld h, d
    or c
    ld h, e
    ldh [$62], a
    add h
    ld h, e
    or c
    ld h, e
    or c
    ld h, e
    sub $63
    ld a, [c]
    ld h, e
    cp $63
    ld a, [bc]
    ld h, h
    dec l
    ld h, h
    ld c, c
    ld h, h
    ld e, e
    ld h, h
    ld l, l
    ld h, h
    adc c
    ld h, h
    or d
    ld h, h
    jp nz, $fb64

    ld h, h
    inc b
    ld h, l
    ld hl, $2b64
    ld h, [hl]
    or h
    ld h, c
    di
    ld h, c
    ld d, $65
    ld e, [hl]
    ld h, l
    adc c
    ld h, l
    and a
    ld h, l
    or l
    ld h, l
    jp $d265


    ld h, c
    ei
    ld h, l
    rlca
    ld h, [hl]
    add $61
    ld [hl], e
    ld h, [hl]
    ld a, [hl-]
    ld h, [hl]
    dec c
    ld h, l
    ld a, [c]
    ld h, h
    jp hl


    ld h, h
    inc h
    ld h, c
    ld d, c
    ld h, c
    ld e, b
    ld h, c
    ld e, b
    ld h, c
    ld h, c
    ld h, c
    ld l, [hl]
    ld h, c

jr_004_6120:
    add a
    ld h, c
    add a
    ld h, c
    push bc
    nop
    reti


    ld bc, $1054
    ld a, a
    ld de, $1262
    ld h, b
    inc de
    ld h, c
    inc d
    ld [hl], b
    dec d
    ld [hl], c
    ld d, $81
    rla
    dec c
    jr jr_004_6158

    add hl, de
    ld h, e
    ld e, $e4
    ld h, $f4
    rra
    ld l, a
    jr nz, jr_004_6187

    ld hl, $22fc
    xor $25
    ld d, [hl]
    jr z, jr_004_6198

    dec e
    or $08
    nop
    dec [hl]
    daa
    ld h, h
    inc hl
    ld [hl], h
    inc h
    nop

jr_004_6158:
    and h
    add hl, hl
    xor e
    ld a, [hl+]
    or b
    inc bc
    or l
    inc e
    nop
    ld h, c
    ld l, $78
    ld [bc], a
    ld l, $04
    ld h, h
    dec b
    adc c
    ld b, $bb
    rlca
    nop
    dec sp
    dec l
    ld h, l
    add hl, bc
    ld h, [hl]
    ld a, [bc]
    ld h, a
    dec bc
    ld l, b
    inc c
    ld l, d
    dec c
    ld l, e
    ld c, $86
    rrca
    ld a, d
    ld a, [de]
    ld a, b
    dec de
    adc [hl]
    inc l
    sbc [hl]
    dec hl
    nop

jr_004_6187:
    nop
    ret


    ld a, $28
    call $30c7
    ret z

    ld hl, $cf33
    ld [hl], $f2
    ret


    ldh a, [$96]
    rlca

jr_004_6198:
    ret nc

    ld hl, $cf14
    ld [hl], $ea
    ret


    call $1956
    bit 7, [hl]
    ret z

    ld hl, $cf14
    ld a, $bf
    ld [hl+], a
    ld [hl], a
    ld l, $24
    ld a, $a9
    ld [hl+], a
    inc a
    ld [hl], a
    ret


    call $1956
    bit 7, [hl]
    ret z

    ld hl, $cf14
    ld a, $ad
    ld [hl+], a
    ld [hl], a
    ld l, $24
    ld [hl+], a
    ld [hl], a
    ret


    call $1956
    and $40
    ret z

    ld hl, $cf36
    ld [hl], $09
    ret


    call $1956
    and $40
    jr z, jr_004_61df

    ld hl, $cf77
    ld [hl], $a1
    ret


jr_004_61df:
    ld hl, $61ee
    ld d, $cf

jr_004_61e4:
    ld a, [hl+]
    or a
    ret z

    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    jr jr_004_61e4

    ld h, l
    db $fd
    ld [hl], l
    db $fd
    nop
    call $1956
    bit 6, [hl]
    ret z

    bit 5, [hl]
    jr nz, jr_004_6202

    ld hl, $cf45
    ld [hl], $f1

jr_004_6202:
    ld hl, $cf22
    ld [hl], $0f
    inc l
    ld [hl], $11
    ld l, $32
    ld [hl], $11
    inc l
    ld [hl], $0f
    inc l
    ld [hl], $11
    ret


    call $1956
    bit 7, [hl]
    ret nz

    ld hl, $cf39
    ld [hl], $b0
    ret


    call $1956
    bit 7, [hl]
    ret z

    ld de, $622d
    jp Jump_004_5dc7


    add hl, bc
    ld [$fa00], sp
    ccf
    add $e6
    rrca
    cp $0f
    ret nz

    ld hl, $624c
    call Call_004_669d
    ld a, $f1
    ld hl, $cf25
    ld [hl], a
    ld l, $27
    ld [hl], a
    ld l, $32
    ld [hl], $a0
    ret


    inc de
    inc bc
    ld b, $a0
    ld hl, $cf23
    ld bc, $0808
    ld de, $c8f0
    jp Jump_004_66b7


    ld hl, $cf34
    ld bc, $0808
    ld de, $c8f8
    jp Jump_004_66b7


    call $1956
    bit 5, [hl]
    ret z

    ld de, $6274
    jp Jump_004_5dc7


    ldh a, [rNR51]
    nop
    call $1956
    bit 6, [hl]
    jr z, jr_004_6287

    call Call_004_63cb
    ld hl, $6294
    call Call_004_6690

jr_004_6287:
    call $1956
    inc l
    bit 6, [hl]
    ret z

    ld hl, $62c8
    jp Jump_004_6690


    rst $10
    ld de, $1817
    ld hl, $2827
    ld sp, $4137
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, c
    ld d, d
    ld d, e
    ld d, l
    ld h, c
    ld h, d
    ld h, h
    ld h, [hl]
    ld h, a
    ld l, b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    sub c
    sub d
    sub h
    sub l
    sub [hl]
    and c
    and d
    and e
    and h
    and l
    and [hl]
    rst $38
    rst $10
    ld l, l
    ld l, [hl]
    ld a, h
    ld a, l
    ld a, [hl]
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    rst $38
    ld a, $65
    call $1959
    bit 6, [hl]
    jr z, jr_004_62ef

    ld hl, $630c
    call Call_004_6690

jr_004_62ef:
    ld a, $66
    call $1959
    bit 6, [hl]
    jr z, jr_004_62fe

    ld hl, $632d
    call Call_004_6690

jr_004_62fe:
    ld a, $6a
    call $1959
    bit 6, [hl]
    ret z

    ld hl, $6340
    jp Jump_004_6690


    rst $10
    ld bc, $0302
    inc b
    dec b
    ld b, $11
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $21
    ld [hl+], a
    inc hl
    ld sp, $3332
    ld b, c
    ld b, d
    ld b, e
    ld d, c
    ld d, d
    ld d, e
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $38
    rst $10
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $19
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $2a
    dec hl
    dec l
    ld l, $3e
    rst $38
    rst $10
    dec h
    ld h, $27
    dec [hl]
    ld [hl], $37
    jr c, jr_004_6382

    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h

jr_004_6382:
    xor l
    rst $38
    ld a, $66
    call $1959
    bit 6, [hl]
    jr z, jr_004_6395

    ld hl, $cf00
    ld b, $70
    call Call_004_63a2

jr_004_6395:
    ld a, $6b
    call $1959
    bit 6, [hl]
    ret z

    ld hl, $cf70
    ld b, $00

Call_004_63a2:
jr_004_63a2:
    ld a, [hl]
    sub $61
    cp $05
    jr nc, jr_004_63ab

    ld [hl], $d7

jr_004_63ab:
    inc l
    ld a, l
    cp b
    jr nz, jr_004_63a2

    ret


    call $1956
    bit 6, [hl]
    ret z

    call Call_004_63cb
    ld de, $63c0
    jp Jump_004_5dc7


    rst $10
    ld h, c
    rst $10
    ld h, d
    rst $10
    ld h, e
    rst $10
    ld h, h
    rst $10
    ld h, l
    nop

Call_004_63cb:
    ld de, $63d1
    jp Jump_004_5dc7


    push de
    call nc, Call_004_67d7
    nop
    call $1956
    bit 7, [hl]
    ret z

    ld de, $63ef
    call Call_004_5dc7
    ld hl, $cf4d
    ld a, $2f
    ld [hl], a
    ld l, $5d
    ld [hl], a
    ld l, $6d
    ld [hl], a
    ret


    adc h
    cpl
    nop
    ld a, [$c643]
    bit 6, a
    ret z

    ld hl, $cf34
    ld [hl], $f2
    ret


    ld a, [$cc4e]
    cp $03
    ret nz

    ld hl, $cf47
    ld [hl], $ea
    ret


    ld h, $c8
    ld l, $b5
    bit 6, [hl]
    ret nz

    ld hl, $641d
    call Call_004_669d
    ld hl, $cf27
    ld [hl], $fd
    ret


    ld h, $02
    inc bc
    ld a, [$56cd]
    add hl, de
    bit 6, [hl]
    ret nz

    ld hl, $cf37
    ld [hl], $fa
    ret


    ld a, $81
    call $1959
    bit 7, [hl]
    ret nz

    ld hl, $6441
    call Call_004_669d
    ld hl, $6445
    jp Jump_004_669d


    inc h
    ld b, $03
    db $fd
    ld b, a
    inc b
    inc bc
    db $fd
    ld a, $81
    call $1959
    bit 7, [hl]
    ret nz

    ld hl, $6457
    jp Jump_004_669d


    ld b, b
    inc b
    rlca
    db $fd
    ld a, $81
    call $1959
    bit 7, [hl]
    ret nz

    ld hl, $6469
    jp Jump_004_669d


    inc b
    inc b
    ld b, $fd
    ld a, $81
    call $1959
    bit 7, [hl]
    ret nz

    ld hl, $6481
    call Call_004_669d
    ld hl, $6485
    jp Jump_004_669d


    nop
    inc b
    rlca
    db $fd
    ld b, h
    inc b
    inc bc
    db $fd
    call $1956
    bit 7, [hl]
    jr nz, jr_004_6496

    ld hl, $64a6
    jp Jump_004_669d


jr_004_6496:
    ld hl, $64ae
    ld a, [$cc4e]
    cp $03
    jr z, jr_004_64a3

    ld hl, $64aa

jr_004_64a3:
    jp Jump_004_669d


    inc b
    ld bc, $fd03
    inc d
    ld bc, $fa03
    inc d
    ld bc, $dc03
    call $1956
    bit 7, [hl]
    ret nz

    ld hl, $64be
    jp Jump_004_669d


    ld h, d
    ld [bc], a
    inc bc
    rst $38
    call $1956
    bit 7, [hl]
    ret nz

    ld hl, $64d9
    call Call_004_669d
    ld l, $13
    ld a, $fe
    ld [hl], a
    ld l, $22
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    ld [bc], a
    inc bc
    inc bc
    rst $38
    ret


jr_004_64de:
    call $1956
    bit 7, [hl]
    ret z

    ld h, b
    ld l, c
    jp Jump_004_669d


    ld bc, $64ee
    jr jr_004_64de

    ld e, c
    ld bc, $6d03
    ld bc, $64f7
    jr jr_004_64de

    ld [hl], a
    ld bc, $6d04
    ld bc, $6500
    jr jr_004_64de

    inc a
    ld b, $01
    ld l, d
    ld bc, $6509
    jr jr_004_64de

    add d
    ld bc, $6d07
    ld bc, $6512
    jr jr_004_64de

    dec de
    rlca
    ld bc, $cd6a
    ld d, [hl]
    add hl, de
    and $c0
    ret z

    ld de, $6555
    ld a, $12
    call $30c7
    jr nz, jr_004_6537

    ld a, [$cc69]
    bit 1, a
    jr nz, jr_004_6532

    ld de, $654c
    jr jr_004_6537

jr_004_6532:
    ld a, $12
    call $30cd

jr_004_6537:
    ld hl, $cf36
    ld b, $03

jr_004_653c:
    ld c, $03

jr_004_653e:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_004_653e

    ld a, $0d
    add l
    ld l, a
    dec b
    jr nz, jr_004_653c

    ret


    db $fd
    db $fd
    db $fc
    ei
    db $fd
    db $fc
    db $fd
    ei
    db $fd
    xor b
    db $eb
    and l
    or e
    or h
    or l
    and e
    xor $a4
    ld hl, $cf44
    ld [hl], $9c
    call $1956
    and $80
    jr z, jr_004_6571

    ld hl, $cf55
    ld [hl], $bc
    jr jr_004_6576

jr_004_6571:
    ld hl, $cf54
    ld [hl], $d6

jr_004_6576:
    call $1956
    and $40
    jr z, jr_004_6583

    ld hl, $cf65
    ld [hl], $bc
    ret


jr_004_6583:
    ld hl, $cf64
    ld [hl], $d6
    ret


    call $1956
    bit 7, [hl]
    ret z

    ld hl, $cf03
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $0d
    rst $10
    ld a, $af
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_004_65a2:
    ld a, $17
    jp $30c7


    call Call_004_65a2
    ret z

    ld hl, $65b1
    jp Jump_004_669d


    ld b, h
    inc b
    dec b
    rrca
    call Call_004_65a2
    ret z

    ld hl, $65bf
    jp Jump_004_669d


    inc b
    inc b
    dec b
    rrca
    call Call_004_65a2
    ret z

    ld hl, $65e2
    ld de, $cf23
    ld bc, $0505

jr_004_65d0:
    push de
    push bc

jr_004_65d2:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_004_65d2

    pop bc
    pop de
    ld a, e
    add $10
    ld e, a
    dec c
    jr nz, jr_004_65d0

    ret


    xor a
    xor a
    xor a
    xor a
    xor a
    xor l
    xor l
    xor [hl]
    xor [hl]
    xor a
    xor l
    xor l
    xor [hl]
    xor [hl]
    xor a
    cp l
    cp l
    cp [hl]
    cp [hl]
    xor a
    cp l
    cp l
    cp [hl]
    cp [hl]
    xor a
    ld a, [$c9f9]
    and $04
    ret z

    ld hl, $cf43
    ld [hl], $e8
    ret


    xor a
    ld [$cc32], a
    ld a, [$c610]
    cp $0c
    ret z

    call $1956
    and $40
    jr nz, jr_004_6625

    ld a, $fd
    ld hl, $cf43
    ld [hl+], a
    ld [hl], a
    ld hl, $cf53
    ld [hl+], a
    ld [hl], a
    ret


jr_004_6625:
    ld a, $b0
    ld [$cf66], a
    ret


    ld a, $16
    call $30c7
    ret z

    ld hl, $cf73
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [$ccc4]
    or a
    ret z

    dec a
    jr z, jr_004_666b

    dec a
    jr z, jr_004_665e

    dec a
    jr z, jr_004_6656

    xor a
    ld [$ccc4], a
    ld hl, $6652
    jp Jump_004_669d


    nop
    dec bc
    rrca
    xor d

jr_004_6656:
    ld [$ccc4], a
    ld a, $b9
    jp $0602


jr_004_665e:
    ld [$ccc4], a
    ld hl, $6667
    jp Jump_004_669d


    ld de, $0d09
    adc h

jr_004_666b:
    ld [$ccc4], a
    ld a, $b8
    jp $0602


    call $1956
    and $40
    ret z

    ld hl, $cf14
    ld a, $6d
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $6a
    ld l, $47
    ld [hl], a
    ld l, $37
    ld [hl], a
    ld l, $27
    ld [hl], a
    ld l, $17
    ld [hl], a
    ret


Call_004_6690:
Jump_004_6690:
    ld d, $cf
    ld a, [hl+]
    ld c, a

jr_004_6694:
    ld a, [hl+]
    cp $ff
    ret z

    ld e, a
    ld a, c
    ld [de], a
    jr jr_004_6694

Call_004_669d:
Jump_004_669d:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld h, $cf

jr_004_66a7:
    ld a, d
    ld l, e
    push bc

jr_004_66aa:
    ld [hl+], a
    dec c
    jr nz, jr_004_66aa

    ld a, e
    add $10
    ld e, a
    pop bc
    dec b
    jr nz, jr_004_66a7

    ret


Jump_004_66b7:
jr_004_66b7:
    ld a, [de]
    inc de
    push bc

jr_004_66ba:
    rrca
    jr nc, jr_004_66bf

    ld [hl], $a0

jr_004_66bf:
    inc l
    dec b
    jr nz, jr_004_66ba

    ld a, l
    add $08
    ld l, a
    pop bc
    dec c
    jr nz, jr_004_66b7

    ret


Call_004_66cc:
    ld c, $00
    ld hl, $66df

jr_004_66d1:
    cp [hl]
    jr z, jr_004_66d8

    inc hl
    inc c
    jr jr_004_66d1

jr_004_66d8:
    ld a, c
    ld hl, $c64a
    jp $0205


    rra
    ld [hl+], a
    jr c, jr_004_671e

    ld b, h
    ccf
    ld [hl], l
    add b
    adc c
    sub l
    and [hl]
    xor h
    ret nz

    rst $28
    ldh a, [$c8]
    ld a, [$cc4c]
    ld hl, $671a
    call $1dbc
    ret nc

    rst $00
    db $10
    ld l, b
    ld [hl], h
    ld l, b
    ld c, a
    ld [hl], $ba
    ld l, b
    jp c, $916a

    ld l, c
    sub $69
    db $fd
    ld l, c
    ld a, [de]
    ld l, d
    db $76
    ld h, a
    sbc l
    ld h, a
    and c
    ld h, a
    ret z

    ld h, a
    jp hl


    ld h, a
    ld h, d
    ld l, c
    ld [$2a6a], sp
    ld h, a
    ld h, l
    ld h, a

jr_004_671e:
    ld h, l
    ld h, a
    ld h, l
    ld h, a
    ld [hl], b
    ld h, a
    ld [hl], l
    ld h, a
    ld [hl], l
    ld h, a
    ld [hl], l
    ld h, a
    sbc b
    inc bc
    ld a, b
    ld b, $e8
    rlca
    ld [c], a
    nop
    ld a, [c]
    ld bc, $081f
    ld [hl+], a
    ld [$0838], sp
    dec sp
    ld [$0844], sp
    ccf
    ld [$0875], sp
    add b
    ld [$0889], sp
    sub l
    ld [$08a6], sp
    xor h
    ld [$08c0], sp
    rst $28
    ld [$08f0], sp
    ret z

    ld [$0967], sp
    ld [hl], d
    ld a, [bc]
    db $10
    dec bc
    ld e, a
    inc c
    sbc [hl]
    dec c
    sub a
    ld c, $d9
    rrca
    jp hl


    rrca
    nop
    sbc h
    inc b
    and [hl]
    inc b
    or b
    inc b
    xor a
    inc b
    xor d
    dec b
    nop
    push bc
    ld [bc], a
    add $02
    nop
    nop
    ld a, $07

jr_004_6778:
    call $1646
    ld hl, $6781
    jp Jump_004_6a66


    adc b
    ret c

    inc bc
    inc b
    jr nz, @+$04

    ld hl, $2202
    ld [bc], a
    inc hl
    ld [bc], a
    inc h
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    daa
    ld [bc], a
    jr z, jr_004_679a

    add hl, hl
    inc bc
    ld a, [hl+]

jr_004_679a:
    inc bc
    dec hl
    inc bc
    ld a, $08
    jr jr_004_6778

    ld hl, $67ac

jr_004_67a4:
    call Call_004_6a66
    ld a, $09
    jp $1646


    ld c, b
    ret c

    inc bc
    inc b
    jr nz, @+$04

    ld hl, $2202
    ld [bc], a
    inc hl
    ld [bc], a
    inc h
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    daa
    ld [bc], a
    jr z, jr_004_67c6

    add hl, hl
    inc bc
    ld a, [hl+]
    inc bc

jr_004_67c6:
    dec hl
    inc b
    ld hl, $67cd
    jr jr_004_67a4

    add [hl]
    ret c

    inc bc
    inc b
    jr nz, @+$04

    ld hl, $2202
    ld [bc], a

Call_004_67d7:
    inc hl
    ld [bc], a
    inc h
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    daa
    ld [bc], a
    jr z, jr_004_67e7

    add hl, hl
    inc bc
    ld a, [hl+]
    inc bc

jr_004_67e7:
    dec hl
    inc b
    ld a, $0a
    call $1646
    ld hl, $67f4
    jp Jump_004_6a66


    adc b
    ret c

    inc bc
    inc b
    jr nz, @+$04

    ld hl, $2202
    ld [bc], a
    inc hl
    ld [bc], a
    inc h
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    daa
    ld [bc], a
    jr z, jr_004_680c

    add hl, hl
    ld [bc], a

jr_004_680c:
    ld a, [hl+]
    inc bc
    dec hl
    ld [bc], a
    ld a, $17
    call $30c7
    ret z

    ld e, $00
    call $1632
    ld a, $55
    call $0602
    ld hl, $6832
    call Call_004_6a8b
    ld hl, $6838
    call Call_004_6a8b
    ld hl, $683e
    jp Jump_004_6abc


    ld a, [bc]
    ld a, [bc]
    ret z

    ret c

    nop
    ret nc

    ld a, [bc]
    ld a, [bc]
    ret z

    call c, $d400
    inc [hl]
    rst $08
    dec b
    dec b
    xor a
    nop
    xor a
    nop
    nop
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    nop
    ei
    rlca
    nop
    ld c, $00
    inc c
    nop
    dec c
    ei
    dec bc
    nop
    ld c, $00
    rrca
    rst $20
    nop
    nop
    nop
    nop
    dec c
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld a, $17
    call $30c7
    ret z

    ld e, $00
    call $1632
    ld a, $56
    call $0602
    ld hl, $6896
    call Call_004_6a8b
    ld hl, $689c
    call Call_004_6a8b
    ld hl, $68a2
    jp Jump_004_6abc


    inc d
    ld a, [bc]
    ld [$40d8], sp
    pop de
    inc d
    ld a, [bc]
    ld [$40dc], sp
    push de
    inc b
    rst $08
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call $1956
    and $40
    ret nz

    xor a
    ld [$cf14], a
    ld [$cf24], a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld de, $691d

Jump_004_68d1:
    ld a, $03
    ldh [rSVBK], a

jr_004_68d5:
    ld a, [de]
    ld l, a
    inc de
    or a
    jr z, jr_004_68f8

    ld a, [de]
    ld h, a
    inc de

jr_004_68de:
    ld a, [de]
    ld b, a
    inc de
    or a
    jr z, jr_004_68d5

    ld a, [de]
    ld c, a
    inc de
    push hl
    ld [hl], b
    set 2, h
    ld [hl], c
    ld a, $20
    rst $10
    inc b
    ld [hl], c
    res 2, h
    ld [hl], b
    pop hl
    inc hl
    jr jr_004_68de

jr_004_68f8:
    ld l, e
    ld h, d
    ld d, $ce

jr_004_68fc:
    ld a, [hl+]
    or a
    jr z, jr_004_690e

    ld e, a
    ld a, $0f
    bit 7, e
    jr z, jr_004_690b

    res 7, e
    ld a, $05

jr_004_690b:
    ld [de], a
    jr jr_004_68fc

jr_004_690e:
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ld a, $02
    jp $1646


    ld c, $d8
    ld [hl], $24
    inc [hl]
    inc h
    ld [hl-], a
    inc b
    nop
    ld d, b
    ret c

    inc [hl]
    inc b
    ld [hl], $04
    nop
    ld a, [bc]
    reti


    jr nc, jr_004_6935

    jr nc, jr_004_6957

    nop
    adc e

jr_004_6935:
    reti


    ld [hl-], a
    inc b
    jr nz, jr_004_693e

    ld [hl+], a
    inc b
    inc h
    inc b

jr_004_693e:
    ld h, $04
    nop
    jp z, $32d9

    inc b
    nop
    call z, $28d9
    dec b
    ld a, [hl+]
    dec b
    inc l
    dec b
    ld l, $05
    inc [hl]
    inc b
    ld [hl], $04
    nop
    nop
    rlca

jr_004_6957:
    ld [$4518], sp
    push hl
    ld h, [hl]
    ld h, a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    ld a, $0a
    call $30c7
    ret nz

    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld de, $6975
    jp Jump_004_68d1


    ld c, d
    reti


    jr nz, jr_004_697d

    ld [hl+], a
    inc b
    inc h
    inc b

jr_004_697d:
    ld h, $04
    nop
    adc d
    reti


    jr z, @+$07

    ld a, [hl+]
    dec b
    inc l
    dec b
    ld l, $05
    nop
    nop
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    nop
    ld a, $16
    call $30c7
    ret z

    ld e, $08
    call $1632
    ld hl, $69a2
    jp Jump_004_6a66


    ld c, h
    ret c

    inc b
    ld b, $42
    inc c
    adc b
    ld b, $81
    ld b, $81
    ld h, $88
    ld h, $43
    inc c
    ld d, d
    inc c
    add d
    ld b, $89
    ld b, $89
    ld b, $82
    ld h, $53
    inc c
    add [hl]
    ld b, $83
    ld b, $89
    ld b, $89
    ld b, $83
    ld h, $86
    ld h, $87
    ld b, $84
    ld b, $85
    ld b, $85
    ld h, $84
    ld h, $87
    ld h, $3e
    ld bc, $46cd
    ld d, $21
    pop hl
    ld l, c
    jp Jump_004_6a66


    ld c, e
    ret c

    inc bc
    inc b
    jr nz, jr_004_69e7

jr_004_69e7:
    ld hl, $2200
    nop
    inc hl
    nop
    inc h
    nop
    dec h
    nop
    ld h, $00
    daa
    nop
    jr z, jr_004_69f7

jr_004_69f7:
    add hl, hl
    nop
    ld a, [hl+]
    nop
    dec hl
    nop
    ld a, $01
    call $1646
    ld hl, $6a0e
    call Call_004_6a66
    ld a, $01
    ld [$ccf4], a
    ret


    jp z, $02d8

    ld [bc], a
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    ld a, [$cc4c]
    call Call_004_66cc
    ret z

    ld a, $e0
    call $15ba
    ret nz

    ld e, l
    ld d, $cf
    ld a, c
    ld hl, $c64c
    rst $10
    ld a, [hl]
    cp $14
    jr c, jr_004_6a3d

    ld a, e
    sub $10
    ld e, a
    ld hl, $6a4a
    jr jr_004_6a40

jr_004_6a3d:
    ld hl, $6a46

jr_004_6a40:
    call Call_004_6ac0
    jp Jump_004_6ae4


    ld bc, $f501
    nop
    ld [bc], a
    ld [bc], a
    ld [hl], l
    rrca
    db $76
    rrca
    add l
    rrca
    add [hl]
    rrca

Call_004_6a54:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    jr jr_004_6a70

Call_004_6a66:
Jump_004_6a66:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    call Call_004_6a54

jr_004_6a70:
    push bc

jr_004_6a71:
    ld a, [hl+]
    ld [de], a
    set 2, d
    ld a, [hl+]
    ld [de], a
    res 2, d
    inc de
    dec c
    jr nz, jr_004_6a71

    pop bc
    ld a, $20
    sub c
    call $0068
    dec b
    jr nz, jr_004_6a70

    pop af
    ldh [rSVBK], a
    ret


Call_004_6a8b:
    ldh a, [rSVBK]
    push af
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_004_6a99:
    push bc

jr_004_6a9a:
    ld a, $02
    ldh [rSVBK], a
    ld a, [hl+]
    ld b, a
    ld a, $03
    ldh [rSVBK], a
    ld a, b
    ld [de], a
    inc de
    dec c
    jr nz, jr_004_6a9a

    pop bc
    ld a, $20
    sub c
    call $0068
    ld a, $20
    sub c
    rst $10
    dec b
    jr nz, jr_004_6a99

    pop af
    ldh [rSVBK], a
    ret


Jump_004_6abc:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a

Call_004_6ac0:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a

jr_004_6ac4:
    push bc

jr_004_6ac5:
    ld a, [hl+]
    ld [de], a
    dec d
    ld a, [hl+]
    ld [de], a
    inc d
    inc de
    dec c
    jr nz, jr_004_6ac5

    pop bc
    ld a, $10
    sub c
    call $0068
    dec b
    jr nz, jr_004_6ac4

    ret


    ld hl, $ccea
    set 1, [hl]
    ld a, $03
    jp $1646


Jump_004_6ae4:
    ld a, $03
    ldh [rSVBK], a
    ld hl, $cf00
    ld de, $d800
    ld c, $0b

jr_004_6af0:
    ld b, $10

jr_004_6af2:
    push bc
    ld a, [hl+]
    push hl
    call $3a4a
    push de
    call Call_004_6b16
    pop de
    set 2, d
    call Call_004_6b16
    res 2, d
    ld a, e
    sub $1f
    ld e, a
    pop hl
    pop bc
    dec b
    jr nz, jr_004_6af2

    ld a, $20
    call $0068
    dec c
    jr nz, jr_004_6af0

    ret


Call_004_6b16:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    ld a, [$cd00]
    and $0e
    ret nz

    ld b, $04

jr_004_6b2d:
    push bc
    call Call_004_6b39
    pop bc
    dec b
    jr nz, jr_004_6b2d

    xor a
    ldh [rSVBK], a
    ret


Call_004_6b39:
    ld a, [$ccf5]
    ld b, a
    ld a, [$ccf6]
    cp b
    ret z

    inc b
    ld a, b
    and $1f
    ld [$ccf5], a
    ld hl, $dac0
    rst JumpTable
    ld a, $02
    ldh [rSVBK], a
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld a, c
    ldh [$8c], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    call Call_004_6b7c
    ld a, b
    call $3a4a
    push hl
    push de
    call Call_004_6b16
    pop de
    ld a, $04
    add d
    ld d, a
    call Call_004_6b16
    ldh a, [$8c]
    pop hl
    call Call_004_6c17
    pop af
    ldh [rSVBK], a
    ret


Call_004_6b7c:
    ld a, c
    swap a
    and $0f
    ld hl, $6b90
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    and $0f
    add a
    rst $10
    ld e, l
    ld d, h
    ret


    nop
    ret c

    ld b, b
    ret c

    add b
    ret c

    ret nz

    ret c

    nop
    reti


    ld b, b
    reti


    add b
    reti


    ret nz

    reti


    nop
    jp c, $da40

    add b
    jp c, $8be0

    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ldh a, [$8f]
    call $3a4a
    ld de, $cec8
    ld b, $08

jr_004_6bb9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_6bb9

    ldh a, [$8e]
    call $3a4a
    ld de, $cec8
    ldh a, [$8b]
    bit 0, a
    jr nz, jr_004_6bed

    bit 1, a
    jr nz, jr_004_6bd8

    inc hl
    inc hl
    call Call_004_6be6
    jr jr_004_6bdd

jr_004_6bd8:
    inc de
    inc de
    call Call_004_6be6

jr_004_6bdd:
    inc hl
    inc hl
    inc de
    inc de
    call Call_004_6be6
    jr jr_004_6c0b

Call_004_6be6:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ret


jr_004_6bed:
    bit 1, a
    jr nz, jr_004_6bf7

    inc de
    call Call_004_6c02
    jr jr_004_6bfb

jr_004_6bf7:
    inc hl
    call Call_004_6c02

jr_004_6bfb:
    inc hl
    inc de
    call Call_004_6c02
    jr jr_004_6c0b

Call_004_6c02:
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ret


jr_004_6c0b:
    ldh a, [$8c]
    ld hl, $cec8
    call Call_004_6c17
    pop af
    ldh [rSVBK], a
    ret


Call_004_6c17:
    push hl
    call Call_004_6c47
    add $20
    ld c, a
    ldh a, [$a3]
    ld l, a
    ld h, $c4
    ld a, [$0a65]
    ld [hl+], a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld e, l
    ld d, h
    pop hl
    ld b, $02

jr_004_6c30:
    call Call_004_6c40
    ld a, c
    ld [de], a
    inc e
    call Call_004_6c40
    dec b
    jr nz, jr_004_6c30

    ld a, e
    ldh [$a3], a
    ret


Call_004_6c40:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ret


Call_004_6c47:
    ld e, a
    and $f0
    swap a
    ld d, a
    ld a, e
    and $0f
    add a
    ld e, a
    ld a, [$cd09]
    swap a
    add a
    add e
    and $1f
    ld e, a
    ld a, [$cd08]
    swap a
    add d
    and $0f
    ld hl, $367b
    rst JumpTable
    ld a, [hl+]
    add e
    ld e, a
    ld d, [hl]
    ret


    call Call_004_6ce6
    jr c, jr_004_6ca3

    call Call_004_6d17
    jr c, jr_004_6ca3

    ld a, [$cc49]
    ld hl, $533c
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    rst $10
    ld a, [hl]
    and $80
    ldh [$8b], a
    ld a, [hl]
    and $7f
    call $01b7
    ld hl, $4c84
    add hl, bc
    ld a, [hl]
    inc a
    jr nz, jr_004_6ca3

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4e]
    call $01b7
    add hl, bc

jr_004_6ca3:
    ld a, [hl+]
    ld e, a
    and $0f
    cp $0f
    jr nz, jr_004_6cad

    ld a, $ff

jr_004_6cad:
    ld [$cc55], a
    ld a, e
    swap a
    and $0f
    ld [$cc4f], a
    ld a, [hl+]
    ld [$cc50], a
    ld b, $06
    ld de, $cd20

jr_004_6cc1:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_004_6cc1

    ld e, $20
    ld a, [de]
    ld b, a
    ldh a, [$8b]
    or b
    ld [de], a
    ld a, [$cc49]
    or a
    ret nz

    ld a, [$cc4c]
    cp $96
    ret nz

    call $1956
    and $80
    ret nz

    ld a, $20
    ld [$cd20], a
    ret


Call_004_6ce6:
    ld a, $15
    call $30c7
    ret z

    call Call_004_6cff
    ret nc

    ld a, [$cc4e]
    call $01b7
    ld hl, $52fc
    add hl, bc

jr_004_6cfa:
    xor a
    ldh [$8b], a
    scf
    ret


Call_004_6cff:
    ld a, [$cc49]
    or a
    ret nz

    ld a, [$cc4c]
    cp $14
    jr c, jr_004_6d15

    sub $04
    cp $30
    ret nc

    and $0f
    cp $04
    ret


jr_004_6d15:
    xor a
    ret


Call_004_6d17:
    ld a, [$cc49]
    or a
    ret nz

    call Call_004_6d36
    ret nc

    ld a, $16
    call $30c7
    ret z

    ld a, [$c610]
    sub $0a
    and $03
    call $01b7
    ld hl, $531c
    add hl, bc
    jr jr_004_6cfa

Call_004_6d36:
    ld a, [$cc4c]
    ld b, $05
    ld hl, $6d49

jr_004_6d3e:
    cp [hl]
    jr z, jr_004_6d47

    inc hl
    dec b
    jr nz, jr_004_6d3e

    xor a
    ret


jr_004_6d47:
    scf
    ret


    ld e, e
    ld e, h
    ld l, e
    ld l, h
    ld a, e
    ld e, [hl]
    ld l, l
    jp nc, Jump_004_476e

    ld l, a
    ei
    ld l, a
    rst JumpTable
    ld [hl], b
    or $71
    ld b, $74
    ld [hl], $74
    call nc, $0154
    sub [hl]
    ld b, h
    ld bc, $248d
    ld bc, $2560
    ld bc, $131d
    ld bc, $258a
    ld bc, $3400
    ld bc, $34d0
    ld bc, $4503
    ld c, $00
    ld b, h
    ld bc, $4400
    ld bc, $1388
    ld bc, $02b3
    ld bc, $11b6
    ld bc, $11c5
    ld bc, $14c5
    ld bc, $44c8
    ld bc, $43d7
    ld bc, $45e8
    ld bc, $24f6
    ld bc, $26f6
    ld bc, $18b5
    ld bc, $33f9
    ld bc, $25f9
    ld bc, $45e6
    ld bc, $ffd9
    di
    sbc d
    inc sp
    ld bc, $35b0
    ld bc, $541e
    ld bc, $22b9
    ld bc, $2225
    ld bc, $3704
    ld bc, $42a3
    ld bc, $3678
    ld bc, $3462
    ld bc, $2762
    ld bc, $2160
    ld bc, $127d
    ld bc, $188d
    inc b
    adc [hl]
    ld [de], a
    inc b
    adc [hl]
    ld b, e
    ld bc, $488e
    ld bc, $65da
    ld bc, $15ea
    ld bc, $07ea
    ld bc, $477f
    ld bc, $124f
    ld bc, $271b
    ld bc, $280b
    ld bc, $111c
    ld bc, $150f
    ld bc, $550f
    ld bc, $371f
    ld bc, $37aa
    ld bc, $0816
    ld bc, $1306
    ld bc, $1606
    ld bc, $1307
    ld bc, $2704
    ld bc, $0415
    ld bc, $1718
    ld bc, $1328
    ld bc, $1139
    ld bc, $2609
    ld bc, $0619
    ld bc, $0819
    ld bc, $2219
    ld bc, $5719
    ld bc, $1729
    ld bc, $24d2
    ld bc, $16d2
    ld bc, $1843
    ld bc, $114d
    ld bc, $663d
    ld bc, $154d
    ld bc, $1802
    ld bc, $6110
    ld bc, $445e
    ld bc, $573f
    ld bc, $465d
    ld bc, $326d
    ld bc, $576f
    ld bc, $33f7
    ld bc, $335b
    ld bc, $355b
    ld bc, $66e2
    ld bc, $55ee
    ld bc, $16dc
    ld bc, $14e0
    ld bc, $4487
    ld bc, $3187
    ld bc, $1431
    ld bc, $47e1
    ld bc, $06f1
    ld bc, $47fd
    ld bc, $36ff
    ld bc, $15bf
    ld bc, $15bf
    ld bc, $11cc
    ld bc, $5651
    ld bc, $07c2
    ld bc, $28a7
    ld bc, $06d3
    ld bc, $121e
    ld bc, $181d
    ld bc, $5228
    ld bc, $5566
    ld bc, $2397
    ld bc, $12d2
    ld bc, $62f9
    ld bc, $1802
    ld bc, $328f
    ld bc, $56a4
    ld bc, $3257
    ld bc, $6569
    ld bc, $4879
    ld bc, $5559
    ld bc, $545a
    ld bc, $1749
    ld bc, $14d7
    ld bc, $1557
    ld bc, $27a6
    ld bc, $117e
    ld bc, $55b6
    inc b
    nop
    inc hl
    ld bc, $6703
    ld bc, $6704
    ld bc, $3111
    ld bc, $2558
    ld bc, $5258
    ld bc, $2405
    ld bc, $2257
    ld bc, $6353
    ld bc, $344a
    ld bc, $2713
    ld bc, $3220
    ld bc, $2472
    ld bc, $2424
    ld bc, $4823
    ld bc, $4633
    ld bc, $4344
    ld bc, $4345
    ld c, $26
    ld d, [hl]
    ld bc, $2851
    ld bc, $3152
    ld bc, $6549
    ld bc, $245a
    ld bc, $3222
    ld bc, $3272
    ld bc, $5372
    ld bc, $5812
    ld bc, $4335
    ld bc, $4635
    ld bc, $2774
    ld bc, $6454
    ld bc, $5528
    ld bc, $444a
    ld bc, $441a
    ld bc, $4509
    ld c, $28
    ld b, e
    ld bc, $5308
    ld bc, $230a
    ld bc, $472a
    ld bc, $ff0b
    sub e
    inc c
    rst $38
    sub e
    ld a, e
    rst $38
    sub e
    dec hl
    rst $38
    sub e
    inc l
    rst $38
    sub e
    dec l
    rst $38
    sub e
    ld e, e
    rst $38
    sub e
    ld e, h
    rst $38
    sub e
    ld e, l
    rst $38
    sub e
    ld e, [hl]
    rst $38
    sub e
    dec bc
    ld b, h
    ld bc, $440c
    ld bc, $367b
    ld bc, $362b
    ld bc, $362c
    ld bc, $362d
    ld bc, $365b
    ld bc, $365c
    ld bc, $365d
    ld bc, $365e
    ld bc, $440b
    ld bc, $440c
    ld bc, $566b
    ld bc, $561b
    ld bc, $561c
    ld bc, $561d
    ld bc, $564b
    ld bc, $564c
    ld bc, $564d
    ld bc, $564e
    ld bc, $440b
    ld bc, $440c
    ld bc, $566b
    ld bc, $061b
    ld bc, $061c
    ld bc, $061d
    ld bc, $064b
    ld bc, $064c
    ld bc, $064d
    ld bc, $064d
    ld bc, $440b
    ld bc, $440c
    ld bc, $566b
    ld bc, $561b
    ld bc, $561c
    ld bc, $561d
    ld bc, $533b
    ld bc, $533c
    ld bc, $533d
    ld bc, $533e
    ld bc, $675e
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    ld e, [hl]
    ld h, a
    inc b
    add b
    rst $38
    sub e
    add c
    rst $38
    sub e
    add d
    rst $38
    sub e
    add e
    rst $38
    sub e
    add h
    rst $38
    sub e
    add l
    rst $38
    sub e
    adc b
    rst $38
    sub e
    adc c
    di
    sub e
    adc d
    rst $38
    sub e
    adc d
    ld de, $8b04
    ld de, $8b04
    ld h, c
    inc b
    adc h
    rst $38
    sub e
    adc h
    ld h, c
    inc b
    adc h
    ld l, b
    inc b
    adc l
    rst $38
    sub e
    adc l
    ld de, $8d04
    jr jr_004_7035

    adc l
    ld h, c
    inc b
    adc a

jr_004_7035:
    rst $38
    sub e
    sub b
    rst $38
    sub e
    sub c
    rst $38
    sub e
    sub d
    rst $38
    sub e
    sub e
    rst $38
    sub e
    sub h
    rst $38
    sub e
    sub l
    jr jr_004_704d

    sub [hl]
    rst $38
    sub e
    sub a

jr_004_704d:
    di
    sub e
    sbc b
    ld h, c
    ld bc, $ff99
    sub e
    sbc d
    jr jr_004_705c

    sbc e
    ld l, b
    inc b
    sbc h

jr_004_705c:
    rst $38
    sub e
    sbc l
    rst $38
    sub e
    sbc [hl]
    rst $30
    sub e
    sbc a
    rst $38
    sub e
    and b
    rst $38
    sub e
    and c
    rst $38
    sub e
    and d
    di
    sub e
    and e
    rst $38
    sub e
    and e
    inc b
    rlca
    and h
    rst $38
    sub e
    and l
    di
    sub e
    and [hl]
    rst $38
    sub e
    and [hl]
    ld sp, $a704
    ld de, $a704
    ld sp, $a804
    inc d
    inc b
    xor b
    rst $38
    sub e
    xor c
    rst $38
    sub e
    xor d
    rst $38
    sub e
    xor e
    ld h, [hl]
    inc b
    xor e
    ld b, h
    inc b
    xor h
    rst $38
    di
    xor l
    rst $38
    sub e
    xor [hl]
    rst $38
    sub e
    xor a
    rst $38
    sub e
    or b
    ld de, $b104
    ld hl, sp-$6d
    or d
    rst $38
    sub e
    or e
    rst $38
    sub e
    or h
    rst $38
    sub e
    or l
    rst $38
    sub e
    or [hl]
    rst $38
    sub e
    or [hl]
    ld e, b
    inc b
    or a
    jr jr_004_70c5

    cp b
    di
    sub e
    cp b

jr_004_70c5:
    rst $30
    sub e
    cp b
    dec [hl]
    inc b
    cp c
    ld l, b
    inc b
    cp d
    ld h, c
    inc b
    cp e
    rst $38
    sub e
    cp h
    rst $38
    sub e
    cp l
    rst $38
    sub e
    cp [hl]
    rst $38
    sub e
    cp a
    rst $38
    sub e
    inc b
    rst $38
    sub e
    dec b
    ld l, l
    dec b
    inc e
    rst $38
    sub e
    add hl, sp
    rst $38
    sub e
    ld c, e
    rst $38
    sub e
    add c
    rst $38
    sub e
    and a
    rst $38
    sub e
    cp d
    rst $38
    sub e
    rlca
    ld a, c
    inc b
    ld a, [bc]
    ld d, a
    inc b
    rra
    ld de, $3204
    ld e, e
    inc b
    inc sp
    sub c
    inc b
    scf
    sbc l
    inc b
    ld a, $5b
    inc b
    ccf
    ld d, d
    inc b
    ccf
    ld e, l
    inc b
    ld b, c
    dec e
    inc b
    ld b, c
    ld hl, $4304
    inc d
    inc b
    ld b, h
    ld l, l
    inc b
    ld c, b
    sbc l
    inc b
    ld c, d
    ld h, a
    inc b
    ld c, a
    ld d, d
    inc b
    ld d, d
    dec e
    inc b
    ld d, e
    inc d
    inc b
    ld d, a
    sbc l
    inc b
    ld e, c
    ld h, a
    inc b
    ld h, l
    ld de, $7704
    ld de, $6904
    ld [hl+], a
    inc b
    ld h, c
    ld [hl+], a
    inc b
    ld h, [hl]
    ld [hl+], a
    inc b
    ld a, c
    ld de, $6804
    sub c
    inc b
    ld l, l
    ld d, l
    inc b
    adc [hl]
    rla
    inc b
    sub b
    sub a
    inc b
    sub b
    sbc l
    inc b
    sub e
    ld c, h
    inc b
    sbc e
    dec hl
    inc b
    and c
    rla
    inc b
    xor d
    rlca
    inc b
    xor h
    ld bc, $ad04
    jr jr_004_716a

    or h
    inc c
    inc b
    cp h

jr_004_716a:
    rlca
    inc b
    cp [hl]
    ld bc, $bf04
    jr jr_004_7176

    call nz, $040c
    push bc

jr_004_7176:
    sub c
    inc b
    call $049d
    adc $91
    inc b
    db $d3
    ld h, d
    inc b
    call nc, $049d
    push de
    rlca
    inc b
    sub $62
    inc b
    ldh [rIE], a
    sub e
    pop hl
    push af
    sub e
    db $e3
    ld [de], a
    inc b
    db $e3
    adc h
    inc b
    push hl
    ld a, e
    inc b
    push hl
    add [hl]
    inc b
    and $66
    inc b
    rst $20
    ld c, d
    inc b
    add sp, -$04
    sub e
    add sp, $0c
    ld bc, $fce9
    sub e
    jp hl


    inc c
    ld bc, $ffea
    sub e
    db $eb
    rst $38
    sub e
    db $ec
    add hl, hl
    inc b
    db $ed
    rst $38
    sub e
    xor $ff
    sub e
    rst $28
    rst $38
    sub e
    ldh a, [rIE]
    sub e
    pop af
    rst $38
    sub e
    ld a, [c]
    add hl, de
    inc b
    ld a, [c]
    rst $38
    sub e
    di
    rst $38
    sub e
    db $f4
    daa
    inc b
    db $f4
    ld [hl], a
    inc b
    push af
    ld b, [hl]
    inc b
    push af
    scf
    inc b
    or $2a
    inc b
    or $ff
    sub e
    rst $30
    ld [hl], c
    inc b
    ld hl, sp-$66
    inc b
    ld sp, hl
    db $f4
    sub e
    ld sp, hl
    ld a, [$fa93]
    rst $38
    sub e
    ei
    rst $38
    sub e
    db $fc
    rst $38
    sub e
    ld e, e
    rst $38
    sub e
    add a
    rst $38
    sub e
    sub a
    rst $38
    sub e
    sbc l
    rst $38
    sub e
    jr nc, @+$01

    sub e
    scf
    sub a
    inc b
    add hl, sp
    dec hl
    inc b
    inc a
    dec d
    inc b
    ld b, e
    ld de, $4304
    ld d, $04
    ld b, e
    dec de
    inc b
    ld b, e
    ld b, c
    inc b
    ld b, e
    ld b, h
    inc b
    ld b, e
    ld b, [hl]
    inc b
    ld b, e
    ld c, b
    inc b
    ld b, e
    ld c, h
    inc b
    ld b, e
    ld h, [hl]
    inc b
    ld b, e
    ld l, c
    inc b
    ld b, e
    ld [hl], e
    inc b
    ld b, e
    ld a, e
    inc b
    ld b, e
    sbc l
    inc b
    ld b, e
    sub c
    inc b
    ld b, [hl]
    ld d, a
    inc b
    ld b, a
    sub a
    inc b
    ld c, d
    dec hl
    inc b
    ld c, e
    add d
    inc b
    ld c, e
    adc h
    inc b
    ld c, h
    dec d
    inc b
    ld d, c
    ld de, $5104
    ld d, $04
    ld d, c
    dec de
    inc b
    ld d, c
    ld b, c
    inc b
    ld d, c
    ld b, h
    inc b
    ld d, c
    ld b, [hl]
    inc b
    ld d, c
    ld c, b
    inc b
    ld d, c
    ld c, h
    inc b
    ld d, c
    ld h, [hl]
    inc b
    ld d, c
    ld l, c
    inc b
    ld d, c
    ld [hl], e
    inc b
    ld d, c
    ld a, e
    inc b
    ld d, c
    sbc l
    inc b
    ld d, c
    sub c
    inc b
    ld d, e
    ld d, a
    inc b
    ld d, a
    add d
    inc b
    ld d, a
    adc h
    inc b
    ld e, [hl]
    inc l
    inc b
    ld h, e
    adc h
    inc b
    ld l, b
    ld a, d
    inc b
    ld l, c
    inc l
    inc b
    ld l, d
    adc h
    inc b
    ld l, e
    ld d, l
    inc b
    ld l, h
    ld a, d
    inc b
    ld l, [hl]
    inc sp
    inc b
    ld [hl], c
    inc e
    inc b
    ld [hl], e
    sub c
    inc b
    ld [hl], h
    dec [hl]
    inc b
    ld [hl], h
    ld l, l
    inc b
    ld [hl], a
    inc l
    inc b
    ld a, b
    ld [hl+], a
    inc b
    add h
    adc e
    inc b
    add [hl]
    rla
    inc b
    adc b
    adc h
    inc b
    adc c
    ld d, l
    inc b
    adc d
    ld a, d
    inc b
    adc e
    inc hl
    inc b
    adc h
    inc e
    inc b
    adc l
    sub c
    inc b
    adc [hl]
    dec [hl]
    inc b
    adc [hl]
    ld l, l
    inc b
    ld h, a
    inc l
    inc b
    add e
    inc l
    inc b
    sbc d
    ld h, [hl]
    inc b
    sbc l
    ld d, a
    inc b
    sbc [hl]
    sbc l
    inc b
    ld sp, $041c
    inc sp
    inc e
    inc b
    cpl
    adc l
    inc b
    add hl, hl
    adc l
    inc b
    jr z, jr_004_72fe

    inc b
    jr nz, jr_004_732b

    inc b
    inc h
    ld [hl+], a
    inc b
    ld h, $22
    inc b
    inc l
    ld [hl+], a
    dec b
    daa
    ld d, a
    inc b
    inc [hl]
    sub a
    inc b
    or b
    push af
    sub e
    or b
    inc hl
    inc b
    or b
    dec a
    inc b

jr_004_72fe:
    or c
    ld a, b
    inc b
    or c
    inc hl
    inc b
    or d
    ld a, [$b293]
    ld b, e
    inc b
    or e
    di
    sub e
    or e
    db $fc
    sub e
    or h
    di
    sub e
    or l
    rst $38
    sub e
    or [hl]
    rst $38
    sub e
    or a
    inc h
    inc b
    or a
    ld [hl], h
    inc b
    cp b
    inc h
    inc b
    cp c
    ld sp, hl
    sub e
    cp d
    inc h
    inc b
    cp d
    db $f4
    sub e

jr_004_732b:
    cp e
    rst $38
    sub e
    cp [hl]
    inc [hl]
    inc b
    cp [hl]
    ld c, b
    inc b
    cp a
    inc [hl]
    inc b
    cp a
    ld a, d
    inc b
    ret nz

    ld a, d
    inc b
    pop bc
    db $f4
    sub e
    pop bc
    inc l
    inc b
    jp nz, $0422

    jp nz, $042c

    jp $0433


    call nz, $933b
    push bc
    rst $38
    sub e
    add $ff
    sub e
    rst $00
    rst $38
    sub e
    ret z

    ei
    sub e
    ret z

    inc sp
    inc b
    ret


    rst $38
    sub e
    ret


    inc e
    inc b
    ret


    sbc l
    inc b
    jp z, $93f6

    jp z, $0424

    set 6, h
    sub e
    set 7, h
    sub e
    rr h
    inc b
    call z, $93f6
    call z, $044c
    rst $08
    ld d, $04
    rst $08
    sub a
    inc b
    call nc, $0497
    ret nc

    ld [hl], h
    inc b
    pop de
    ld [hl], h
    inc b
    jp nc, $0474

    db $d3
    scf
    inc b
    db $d3
    rst $38
    sub e
    ld bc, $047b
    ld [bc], a
    ld a, e
    inc b
    inc bc
    ld a, e
    inc b
    inc b
    ld a, e
    inc b
    dec b
    ld a, e
    inc b
    ld b, $7b
    inc b
    rlca
    ld a, e
    inc b
    ld [$047b], sp
    add hl, bc
    rst $38
    sub e
    ld a, [bc]
    add a
    inc b
    dec bc
    rst $38
    sub e
    inc c
    sbc c
    inc b
    dec c
    rst $38
    sub e
    ld c, $52
    sub e
    rrca
    sbc l
    inc b
    db $10
    add a
    inc b
    ld de, $047b
    ld [de], a
    di
    sub e
    di
    rst $38
    sub e
    or $ff
    sub e
    ld sp, hl
    rst $38
    sub e
    ldh a, [rIE]
    sub e
    di
    daa
    inc b
    db $f4
    daa
    inc b
    db $f4
    add a
    inc b
    push af
    add a
    inc b
    or $27
    inc b
    rst $30
    daa
    inc b
    rst $30
    add a
    inc b
    ld hl, sp-$79
    inc b
    ld sp, hl
    daa
    inc b
    ld a, [$0427]
    ld a, [$0487]
    ei
    add a
    inc b
    ldh a, [$27]
    inc b
    pop af
    daa
    inc b
    pop af
    add a
    inc b
    ld a, [c]
    add a
    inc b
    ld bc, $f302
    add hl, bc
    ld [bc], a
    di
    dec e
    ld [bc], a
    di
    ld e, $0c
    di
    ld a, [hl-]
    ld bc, $3bf3
    dec c
    di
    inc a
    ld bc, $3df3
    dec c
    di
    ld e, h
    ld [bc], a
    di
    ld e, l
    inc c
    di
    add h
    ld bc, $85f3
    ld bc, $86f3
    dec c
    di
    add a
    dec c
    di
    xor b
    ld bc, $a9f3
    dec c
    di
    ld e, h
    ld [bc], a
    di
    ld e, l
    inc c
    di
    ld h, b
    ld [bc], a
    di
    ld h, d
    dec c
    di
    ldh [rSC], a
    di
    pop hl
    dec bc
    di
    ld [c], a
    ld bc, $e3f3
    rlca
    di
    db $e4
    ld bc, $e5f3
    rlca
    di
    add sp, $06
    di
    ld h, a
    ld [hl], h
    sbc e
    db $76
    ld b, e
    ld [hl], a
    rst $30
    ld [hl], a
    rlca
    ld a, c
    add a
    ld a, d
    adc e
    ld a, l
    rst $08
    ld a, l
    ld b, b
    call nc, Call_004_764b
    nop
    sub [hl]
    ld [bc], a
    ld b, h
    ld b, b
    adc l
    ld d, a
    db $76
    ld b, b
    ld h, b
    ld l, e
    halt
    dec e
    dec b
    ld b, h
    nop
    adc d
    ld b, $44
    nop
    nop
    rlca
    ld b, h
    nop
    ret nc

    nop
    ld d, h
    nop
    inc bc
    ld [bc], a
    ld d, h
    nop
    nop
    inc bc
    ld d, h
    nop
    nop
    inc b
    ld d, h
    nop
    adc b
    nop
    inc [hl]
    nop
    or [hl]
    ld [bc], a
    inc [hl]
    ld b, b
    rst $10
    db $e3
    ld [hl], l
    ld b, b
    push bc
    inc bc
    halt
    ret z

    dec b
    inc [hl]
    ld b, b
    jp nc, Jump_004_763f

    nop
    add sp, $15
    inc [hl]
    ld b, b
    or $23
    halt
    or l
    jr jr_004_74eb

    nop
    ld c, l
    dec e
    inc [hl]
    nop
    db $10
    rra
    inc [hl]
    nop
    ld e, [hl]
    jr nz, jr_004_74f7

    nop
    ccf
    ld hl, $0034
    ld l, l
    inc hl
    inc [hl]
    nop
    ld l, a
    ld [hl-], a
    inc [hl]
    ld b, b
    ld a, a
    scf
    db $76
    ld b, b
    ld sp, hl
    dec hl
    halt
    and $2b
    inc [hl]
    nop
    inc b
    jr nc, @+$36

    nop
    rst $30
    inc sp
    inc [hl]
    nop
    and e
    inc a
    inc [hl]
    nop
    ld a, b
    dec a
    inc [hl]

jr_004_74eb:
    ld b, b
    ld h, d
    dec de
    halt
    ld e, l
    ccf
    inc [hl]
    nop
    ld b, e
    ld b, c
    inc [hl]

jr_004_74f7:
    ld b, b
    ld e, e
    dec bc
    halt
    sbc d
    ld b, $18
    nop
    or b
    rlca
    jr jr_004_7544

    ld e, $fb
    ld [hl], l
    nop
    cp c
    add hl, bc
    jr jr_004_750c

jr_004_750c:
    dec h
    ld a, [bc]
    jr jr_004_7510

jr_004_7510:
    inc b
    dec bc
    jr jr_004_7515

    reti


jr_004_7515:
    nop
    inc hl
    ld [bc], a
    reti


    nop
    inc hl
    nop
    ld a, l
    ld e, [hl]
    ld d, h
    ld b, b
    adc [hl]
    ld e, a
    halt
    jp c, Jump_004_5258

    ld b, b
    ld [$7673], a
    nop
    ld c, a
    ld e, a
    ld d, h
    nop
    dec de
    ld h, b
    ld d, h
    nop
    dec bc
    ld h, d
    ld d, h
    nop
    inc e
    ld h, h
    ld d, h
    ld b, b
    rrca
    add e
    halt
    rra
    ld h, a
    ld d, h
    nop

jr_004_7544:
    xor d
    ld l, c
    ld d, h
    nop
    ld d, $6d
    ld d, h
    ld b, b
    ld b, $7b
    halt
    rlca

jr_004_7551:
    ld l, a
    ld d, h
    nop
    dec d
    ld [hl], l
    ld d, h
    nop
    jr jr_004_75d0

    ld d, h
    ld b, b
    jr z, jr_004_7551

    ld [hl], l
    nop
    add hl, sp
    ld a, e
    ld d, h
    nop
    add hl, bc
    ld a, a
    ld d, h
    ld b, b
    add hl, de
    adc e
    halt
    add hl, hl
    add b
    ld d, h
    nop
    ld sp, $4448
    nop
    pop af
    ld c, a
    ld b, h
    nop
    db $fd
    ld d, b
    ld b, h
    nop
    rst $38
    ld d, d
    ld b, h
    ld b, b
    cp a
    inc de
    halt
    call z, Call_004_4456
    nop
    ld d, c
    ld d, a
    ld b, h
    nop
    jp nz, Jump_004_445a

    nop
    and a
    ld e, e
    ld b, h
    nop
    or e
    add hl, sp
    ld b, h
    nop
    add a
    ld a, [hl-]
    ld b, h
    nop
    db $d3
    ld e, h
    ld b, h
    nop
    ld [c], a
    add h
    ld d, h
    nop
    xor $83
    ld d, h
    nop
    call c, Call_004_5489
    nop
    ld h, [hl]
    adc e
    ld d, h
    nop
    sub a
    adc h
    ld d, h
    nop
    ld [bc], a
    adc a
    ld d, h
    nop
    adc a
    sub b
    ld d, h
    nop
    and h
    sub c
    ld d, h
    ld b, b
    ld d, a
    db $eb
    ld [hl], l
    nop
    ld l, c
    sub e
    ld d, h
    nop
    ld a, c
    sub h
    ld d, h
    nop
    ld e, c
    sub l
    ld d, h
    nop

jr_004_75d0:
    ld c, c
    sub a
    ld d, h
    nop
    and [hl]
    sbc d
    ld d, h
    nop
    ldh [rDMA], a
    inc [hl]
    nop
    ld a, [hl]
    sbc e
    ld d, h
    add b
    or [hl]
    ld a, e
    inc b
    nop
    ld b, e
    inc bc
    inc [hl]
    add b
    inc d
    sbc b
    ld d, h
    nop
    ld [hl-], a
    sub d
    ld d, h
    add b
    dec d
    sbc c
    ld d, h
    nop
    inc de
    ld a, b
    ld d, h
    add b
    ld d, d
    adc d
    ld d, h
    nop
    ld [de], a
    ld b, [hl]
    ld b, h
    nop
    ld d, h
    ld [$0018], sp
    ld de, $3404
    add b
    inc d
    jr c, jr_004_763f

    nop
    inc sp
    ld b, d
    inc [hl]
    add b
    dec [hl]
    ld b, e
    inc [hl]
    nop
    jr jr_004_766a

    ld b, h
    add b
    ld b, [hl]
    ld d, l
    ld b, h
    nop
    daa
    ld b, b
    ld b, h
    add b
    inc [hl]
    ld a, $34
    nop
    inc h
    ld d, $34
    add b
    ld h, $17
    inc [hl]
    nop
    ld h, d
    adc [hl]
    ld d, h
    nop
    inc sp
    add hl, hl
    inc [hl]
    add b
    dec h
    ld a, [hl+]
    inc [hl]
    nop
    ld b, a
    daa
    inc [hl]
    add b
    daa
    jr z, jr_004_7678

Jump_004_763f:
jr_004_763f:
    nop
    ld [de], a
    adc l
    ld d, h
    nop
    inc h
    ld b, $34
    add b
    ld d, $07
    inc [hl]

Call_004_764b:
    nop
    ld d, a
    ld bc, $8049
    ld d, h
    nop
    ld b, h
    nop
    ld d, a
    ld d, d
    ld e, c
    nop
    inc h
    inc bc
    ld b, h
    add b
    jr jr_004_766a

    ld b, d
    nop
    ld [de], a
    dec c
    ld b, d
    nop
    ld b, e
    ld e, h
    ld d, h
    add b
    ld c, b
    ld e, l

jr_004_766a:
    ld d, h
    nop
    ld hl, $443b
    add b
    dec h
    inc b
    ld b, h
    nop
    dec d
    ld d, l
    ld d, h
    add b

jr_004_7678:
    rlca
    ld e, d
    ld d, h
    nop
    inc de
    ld [hl], c
    ld d, h
    add b
    ld d, $72
    ld d, h
    nop
    dec d
    ld h, l
    ld d, h
    add b
    ld d, l
    ld h, [hl]
    ld d, h
    nop
    ld b, $7d
    ld d, h
    nop
    ld [$547e], sp
    nop
    ld [hl+], a
    ld [hl], e
    ld d, h
    add b
    ld d, a
    add c
    ld d, h
    nop
    nop
    ld bc, $0054
    add hl, bc
    ld c, b
    inc [hl]
    ld b, b
    jr z, jr_004_76d9

    ld [hl], a
    nop
    ld [$549d], sp
    nop
    ld a, [bc]
    sbc [hl]
    ld d, h
    nop
    ld a, [hl+]
    sbc a
    ld d, h
    nop
    dec b
    ld a, [de]
    ld [$5700], sp
    dec de
    ld [$5300], sp
    inc e
    ld [$4a00], sp
    dec e
    ld [$1300], sp
    ld e, $08
    nop
    jr nz, jr_004_76f9

    jr c, jr_004_76cc

jr_004_76cc:
    ld [de], a
    ld [hl], h
    ld d, h
    ld b, b
    dec [hl]
    dec sp
    ld [hl], a
    ld b, b
    ld [hl], d
    daa
    ld [hl], a
    nop
    ld [hl+], a

jr_004_76d9:
    inc de
    inc [hl]
    nop
    inc h
    add hl, de
    inc [hl]
    nop
    inc hl
    ld a, [de]
    inc [hl]
    nop
    inc sp
    dec de
    inc [hl]
    nop
    ld c, c
    ld [hl+], a
    inc [hl]
    nop
    ld b, l
    inc h
    inc [hl]
    nop
    ld b, h
    dec h
    inc [hl]
    nop
    ld h, $26
    inc [hl]
    nop
    ld e, d

jr_004_76f9:
    ld sp, $0034
    ld d, c
    ld a, [hl-]
    inc [hl]
    nop
    ld d, d
    dec sp
    inc [hl]
    nop
    ld d, h
    ld b, $74
    nop
    inc bc
    ld c, d
    ld b, h
    nop
    inc b
    ld c, e
    ld b, h
    nop
    ld de, $444c
    ld b, b
    ld e, b
    rra
    ld [hl], a
    nop
    ld [hl], h
    add d
    ld d, h
    add b
    or [hl]
    ld a, e
    inc b
    nop
    dec h
    ld c, l
    ld b, h
    add b
    ld d, d
    ld c, [hl]
    ld b, h
    nop
    inc h
    inc [hl]
    jr c, jr_004_772c

jr_004_772c:
    ld [hl-], a
    dec bc
    inc [hl]
    add b
    ld d, e
    ld [$0034], sp
    ld b, e
    sbc h
    ld d, h
    add b
    ld d, l
    rlca
    ld [hl], h
    nop
    ld b, e
    ld e, b
    ld b, h
    add b
    ld b, [hl]
    ld e, c
    ld b, h
    inc b
    dec bc
    add hl, de
    inc bc
    ld [$190b], sp
    inc bc
    inc b
    inc c
    add hl, de
    inc bc
    ld [$190c], sp
    inc bc
    inc b
    ld a, e
    add hl, de
    inc bc
    ld [$197b], sp
    inc bc
    inc b
    dec hl
    add hl, de
    inc bc
    ld [$192b], sp
    inc bc
    inc b
    inc l
    add hl, de
    inc bc
    ld [$192c], sp
    inc bc
    inc b
    dec l
    add hl, de
    inc bc
    ld [$192d], sp
    inc bc
    inc b
    ld e, e
    add hl, de
    inc bc
    ld [$195b], sp
    inc bc
    inc b
    ld e, h
    add hl, de
    inc bc
    ld [$195c], sp
    inc bc
    inc b
    ld e, l
    add hl, de
    inc bc
    ld [$195d], sp
    inc bc
    inc b
    ld e, [hl]
    add hl, de
    inc bc
    ld [$195e], sp
    inc bc
    nop
    ld a, e
    ld b, c
    ld b, h
    nop
    dec hl
    ld b, c
    ld b, h
    nop
    inc l
    ld b, c
    ld b, h
    nop
    dec l
    ld b, c
    ld b, h
    nop
    ld e, e
    ld b, c
    ld b, h
    nop
    ld e, h
    ld b, c
    ld b, h
    nop
    ld e, l
    ld b, c
    ld b, h
    ld b, b
    ld e, [hl]
    rst $20
    ld [hl], a
    ld b, b
    ld l, e
    rst $28
    ld [hl], a
    ld b, b
    dec de
    rst $28
    ld [hl], a
    ld b, b
    inc e
    rst $28
    ld [hl], a
    ld b, b
    dec e
    rst $28
    ld [hl], a
    ld b, b
    ld c, e
    rst $28
    ld [hl], a
    ld b, b
    ld c, h
    rst $28
    ld [hl], a
    ld b, b
    ld c, l
    rst $28
    ld [hl], a
    ld b, b
    ld c, [hl]
    rst $28
    ld [hl], a
    nop
    dec sp
    ld c, c
    ld b, h
    nop
    inc a
    ld c, c
    ld b, h
    nop
    dec a
    ld c, c
    ld b, h
    nop
    ld a, $49
    ld b, h
    add b
    or [hl]
    ld a, e
    inc b
    nop
    ld h, $41
    ld b, h
    add b
    ld h, a
    ld c, b
    ld d, h
    nop
    ld b, $45
    ld b, h
    add b
    ld d, [hl]
    ld b, e
    ld b, h
    inc b
    add b
    dec bc
    inc bc
    inc b
    add c
    inc c
    inc bc
    inc b
    add d
    dec c
    inc bc
    inc b
    add e
    ld de, $0403
    add h
    ld c, $03
    inc b
    add l
    db $10
    inc bc
    inc b
    adc b
    ld b, l
    inc bc
    inc b
    adc c
    ld b, [hl]
    inc bc
    inc b
    adc d
    add hl, de
    inc de
    nop
    adc d
    ld a, [bc]
    ld [hl-], a
    ld b, b
    adc e
    rst $30
    ld a, b
    inc b
    adc a
    rla
    inc de
    inc b
    sub c
    ld [de], a
    inc bc
    inc b
    sub d
    inc de
    inc bc
    inc b
    sub e
    inc d
    inc bc
    inc b
    sub h
    dec d
    inc bc
    nop
    sub l
    dec c
    ld [de], a
    inc b
    sub [hl]
    ld c, $13
    inc b
    sub a
    rrca
    inc de
    nop
    sbc b
    scf
    ld b, d
    inc b
    sbc c
    ld c, b
    inc bc
    nop
    sbc d
    ld c, e
    ld [bc], a
    nop
    sbc e
    ld c, h
    ld [bc], a
    inc b
    sbc h
    ld c, l
    inc bc
    inc b
    sbc l
    ld c, [hl]
    inc bc
    ld [$159e], sp
    inc de
    inc b
    sbc a
    ld d, b
    inc bc
    inc b
    and b
    ld de, $0413
    and c
    db $10
    inc de
    inc b
    and d
    ld [de], a
    inc de
    inc b
    and e
    dec l
    inc bc
    inc b
    and h
    ld d, $03
    inc b
    and l
    rla
    inc bc
    inc b
    and [hl]
    jr @+$05

    nop
    and [hl]
    ld l, $32
    ld b, b
    and a
    rst $28
    ld a, b
    inc b
    xor b
    ld a, [hl-]
    inc bc
    nop
    xor b
    dec bc
    jr jr_004_7894

    xor c
    ld d, $13
    inc b

jr_004_7894:
    xor d
    ld d, c
    inc bc
    ld b, b
    xor e
    rst $38
    ld a, b
    inc b
    xor a
    rrca
    inc bc
    nop
    or b
    dec l
    ld [hl-], a
    ld [$13b1], sp
    inc de
    inc b
    or d
    inc d
    inc de
    inc b
    or e
    jr nz, @+$05

    inc b
    or h
    ld hl, $0403
    or l
    ld [hl+], a
    inc bc
    inc b
    or [hl]
    ld c, a
    inc bc
    nop
    or [hl]
    ld a, [bc]
    ld [hl], d
    nop
    or a
    ld b, a
    ld [bc], a
    inc b
    cp b
    ld d, e
    inc bc
    ld [$54b8], sp
    inc bc
    nop
    cp b
    ld b, l
    ld [hl-], a
    nop
    cp c
    ld b, h
    ld [hl-], a
    nop
    cp d
    ld e, b
    ld [bc], a
    ld bc, $49ac
    inc sp
    ld [bc], a
    xor h
    ld c, c
    inc sp
    inc b
    cp l
    dec [hl]
    inc sp
    ld [$35bd], sp
    inc sp
    inc b
    cp h
    ld [hl+], a
    inc de
    add b
    or [hl]
    ld a, e
    inc b
    nop
    ld de, $3239
    add b
    ld sp, $322c
    nop
    ld de, $3209
    add b
    ld h, c
    jr jr_004_7911

    nop
    ld h, [hl]
    ld d, d
    inc b
    add b
    ld b, h
    inc c
    jr jr_004_790c

    inc b
    nop
    inc bc
    inc b

jr_004_790c:
    inc e
    ld bc, $0403
    add hl, sp

jr_004_7911:
    ld [bc], a
    inc bc
    inc b
    ld c, e
    inc bc
    inc bc
    inc b
    add c
    inc b
    inc bc
    inc b
    and a
    dec b
    inc bc
    inc b
    cp d
    ld b, $03
    nop
    rlca
    nop
    ld h, d
    nop
    ld a, [bc]
    ld bc, $0062
    rra
    ld [bc], a
    ld h, d
    nop
    ld [hl-], a
    inc bc
    ld h, d
    nop
    inc sp
    ld h, $02
    nop
    scf
    daa
    ld [bc], a
    nop
    ld a, $05
    ld h, d
    ld b, b
    ccf
    ld e, a
    ld a, d
    ld b, b
    ld b, c
    ld h, a
    ld a, d
    nop
    ld b, e
    add hl, de
    ld b, d
    nop
    ld b, h
    ld b, $62
    nop
    ld c, b
    ld a, [de]
    ld b, d
    nop
    ld c, d
    dec de
    ld b, d
    nop
    ld c, a
    rrca
    ld b, d
    nop
    ld d, d
    ld de, $0042
    ld d, e
    inc de
    ld b, d
    nop
    ld d, a
    dec d
    ld b, d
    nop
    ld e, c
    ld d, $42
    nop
    ld [hl], a
    inc e
    ld b, d
    nop
    ld h, l
    dec e
    ld b, d
    nop
    ld h, c
    ld e, $42
    nop
    ld l, c
    rra
    ld b, d
    nop
    ld a, c
    jr nz, jr_004_79c1

    nop
    ld h, [hl]
    ld hl, $0042
    ld l, b
    ld [$0062], sp
    ld l, l
    add hl, bc
    ld h, d
    nop
    adc [hl]
    dec bc
    ld h, d
    ld b, b
    sub b
    ld l, a
    ld a, d
    nop
    sub e
    ld a, [bc]
    ld h, d
    nop
    and c
    inc c
    ld h, d
    nop
    sbc e
    rrca
    ld h, d
    nop
    xor d
    ld l, $42
    nop
    xor h
    cpl
    ld b, d
    nop
    xor l
    jr nc, @+$44

    nop
    or h
    ld sp, $0042
    cp h
    ld a, [hl+]
    ld b, d
    nop
    cp [hl]
    dec hl
    ld b, d
    nop
    cp a
    inc l
    ld b, d
    nop
    call nz, $422d
    nop
    push bc

jr_004_79c1:
    inc [hl]
    ld b, d
    nop
    call Call_004_4236
    nop
    adc $32
    ld b, d
    nop
    db $d3
    jr c, @+$44

    nop
    call nc, Call_004_4233
    nop
    push de
    inc e
    ld [hl-], a
    nop
    sub $35
    ld b, d
    inc b
    ldh [$0c], a
    inc bc
    inc b
    pop hl
    ld e, d
    inc bc
    ld b, b
    db $e3
    ld [hl], a
    ld a, d
    ld b, b
    push hl
    ld a, a
    ld a, d
    nop
    and $3d
    ld b, d
    nop
    rst $20
    inc hl
    ld [bc], a
    ld [$0ae8], sp
    inc hl
    nop
    add sp, $44
    ld b, d
    ld [$14e9], sp
    inc hl
    nop
    jp hl


    ld b, d
    ld b, d
    inc b
    ld [$231e], a
    inc b
    db $eb
    ld h, a
    inc bc
    inc b
    db $ed
    ld e, e
    inc bc
    inc b
    xor $28
    inc hl
    inc b
    rst $28
    ld bc, $0413
    ldh a, [rSC]
    inc de
    inc b
    pop af
    inc bc
    inc de
    nop
    ld a, [c]
    inc b
    ld [de], a
    inc b
    ld a, [c]
    dec b
    inc de
    inc b
    di
    ld e, l
    inc bc
    nop
    di
    ld e, h
    inc b
    nop
    db $f4
    ld e, [hl]
    inc b
    nop
    push af
    ld e, a
    inc b
    nop
    or $60
    inc b
    inc b
    or $61
    inc bc
    nop
    rst $30
    ld h, d
    inc b
    nop
    ld hl, sp+$63
    inc b
    inc b
    ld sp, hl
    dec de
    inc de
    ld [$1cf9], sp
    inc de
    inc b
    ld a, [$0364]
    inc b
    ei
    ld h, l
    inc bc
    inc b
    db $fc
    ld h, [hl]
    inc bc
    add b
    or [hl]
    ld a, e
    inc b
    nop
    ld d, d
    rla
    ld b, d
    add b
    ld e, l
    rlca
    ld h, d
    nop
    dec e
    jr jr_004_7aad

    add b
    ld hl, $6204
    nop
    sub a
    ld c, $62
    add b
    sbc l
    dec c
    ld h, d
    nop
    ld [de], a
    inc h
    ld [bc], a
    add b
    ld a, h
    ld a, $42
    nop
    ld a, e
    ccf
    ld b, d
    add b
    add [hl]
    inc a
    ld b, d
    inc b
    ld e, e
    rlca
    inc bc
    inc b
    add a
    nop
    inc de
    inc b
    sub a
    ld [$0403], sp
    sbc l
    add hl, bc
    inc bc
    nop
    scf
    rla
    ld d, d
    nop
    add hl, sp
    jr jr_004_7af1

    nop
    inc a
    dec de
    ld d, d
    ld b, b
    ld b, e
    db $db
    ld a, h
    nop
    ld b, [hl]
    ld a, [hl+]
    ld d, d
    nop
    ld b, a

jr_004_7aad:
    dec b
    ld d, d
    nop
    ld c, d
    ld b, $52
    ld b, b
    ld c, e
    ld c, e
    ld a, l
    nop
    ld c, h
    rlca
    ld d, d
    ld b, b
    ld d, c
    inc de
    ld a, l
    nop
    ld d, e
    ld d, $52
    ld b, b
    ld d, a
    ld d, e
    ld a, l
    nop
    ld e, [hl]
    add hl, sp
    ld d, d
    nop
    ld h, e
    ld bc, $0072
    ld l, b
    dec sp
    ld d, d
    nop
    ld l, c
    nop
    ld [hl], d
    nop
    ld l, d
    dec a
    ld d, d
    nop
    ld l, e
    ld a, $52
    nop
    ld l, h
    ccf
    ld d, d
    nop
    ld l, [hl]
    ld b, b
    ld d, d
    nop
    ld [hl], c
    ld b, c
    ld d, d
    nop
    ld [hl], e
    ld b, d
    ld d, d
    ld b, b
    ld [hl], h

jr_004_7af1:
    ld e, e
    ld a, l
    nop
    ld [hl], a
    dec l
    ld d, d
    nop
    ld a, b
    ld [bc], a
    ld [hl], d
    nop
    add h
    cpl
    ld d, d
    nop
    add [hl]
    inc bc
    ld [hl], d
    nop
    adc b
    ld sp, $0052
    adc c
    ld [hl-], a
    ld d, d
    nop
    adc d
    inc sp
    ld d, d
    nop
    adc e
    inc [hl]
    ld d, d
    nop
    adc h
    dec [hl]
    ld d, d
    nop
    adc l
    ld [hl], $52
    ld b, b
    adc [hl]
    ld h, e
    ld a, l
    nop
    ld h, a
    ld b, [hl]
    ld d, d
    nop
    add e
    ld b, l
    ld d, d
    nop
    sbc d
    ld c, c
    ld d, d
    nop
    sbc l
    ld [hl-], a
    ld [hl+], a
    nop
    sbc [hl]
    ld b, a
    ld d, d
    inc b
    jr nc, jr_004_7b36

jr_004_7b36:
    inc bc
    nop
    ld sp, $524b
    nop
    inc sp
    ld c, d
    ld d, d
    nop
    cpl
    ld c, l
    ld d, d
    nop
    add hl, hl
    ld c, h
    ld d, d
    nop
    jr z, jr_004_7b99

    ld d, d
    nop
    jr nz, jr_004_7b9c

    ld d, d
    nop
    inc h
    ld d, c
    ld d, d
    nop
    ld h, $50
    ld d, d
    nop
    daa
    ld d, h
    ld d, d
    nop
    inc [hl]
    ld d, e
    ld d, d
    inc b
    or b
    dec hl
    inc bc
    ld b, b
    or b
    and e
    ld a, h
    ld b, b
    or c
    xor e
    ld a, h
    ld [$2cb2], sp
    inc bc
    nop
    or d
    ld d, a
    ld d, d
    inc b
    or e
    jr z, jr_004_7b7a

    ld [$29b3], sp

jr_004_7b7a:
    inc bc
    inc b
    or h
    dec h
    inc bc
    inc b
    or l
    ld l, $03
    inc b
    or [hl]
    cpl
    inc bc
    ld b, b
    or a
    ld l, e
    ld a, l
    nop
    cp b
    ld h, c
    ld d, d
    ld [$31b9], sp
    inc bc
    nop
    cp d
    ld [hl-], a
    ld [bc], a
    inc b
    cp d

jr_004_7b99:
    inc sp
    inc bc
    inc b

jr_004_7b9c:
    cp e
    inc [hl]
    inc bc
    ld b, b
    cp [hl]
    ld [hl], e
    ld a, l
    ld b, b
    cp a
    ld a, e
    ld a, l
    nop
    ret nz

    ld l, e
    ld d, d
    inc b
    pop bc
    ld [hl], $02
    nop
    pop bc
    ld [hl], b
    ld d, d
    ld b, b
    jp nz, Jump_004_7d83

    nop
    jp $0237


    nop
    call nz, $0238
    inc b
    add $1a
    inc de
    inc b
    rst $00
    dec sp
    inc bc
    ld [$3cc8], sp
    inc bc
    inc b
    ret


    dec a
    inc bc
    inc b
    jp z, $033e

    nop
    ret z

    ld a, c
    ld d, d
    ld b, b
    ret


    or e
    ld a, h
    nop
    jp z, $527a

    inc b
    bit 0, b
    inc bc
    ld [$41cb], sp
    inc bc
    nop
    srl a
    ld [bc], a
    inc b
    call z, $0344
    nop
    call z, $0243
    inc b
    push bc
    ld b, d
    inc bc
    ld b, b
    rst $08
    sbc e
    ld a, h
    nop
    call nc, $0255
    nop
    ret nc

    adc b
    ld d, d
    nop
    pop de
    adc b
    ld d, d
    nop
    jp nc, Jump_004_5288

    nop
    db $d3
    add l
    ld d, d
    inc b
    db $d3
    ld d, a
    inc bc
    nop
    ld bc, $0269
    nop
    ld [bc], a
    ld l, d
    ld [bc], a
    nop
    inc bc
    ld l, e
    ld [bc], a
    nop
    inc b
    ld l, h
    ld [bc], a
    nop
    dec b
    ld l, l
    ld [bc], a
    nop
    ld b, $6e
    ld [bc], a
    nop
    rlca
    ld l, a
    ld [bc], a
    nop
    ld [$0270], sp
    inc b
    add hl, bc
    ld [hl], c
    inc bc
    nop
    ld a, [bc]
    ld [hl], d
    ld [bc], a
    inc b
    dec bc
    ld [hl], e
    inc bc
    nop
    inc c
    ld [hl], h
    ld [bc], a
    nop
    ld c, $76
    ld [bc], a
    nop
    rrca
    ld [hl], a
    ld [bc], a
    nop
    db $10
    ld a, b
    ld [bc], a
    nop
    ld de, $0279
    inc b
    ld [de], a
    ld a, d
    inc bc
    inc b
    di
    inc hl
    inc de
    inc b
    or $24
    inc de
    inc b
    ld sp, hl
    dec h
    inc de
    inc b
    ldh a, [rNR52]
    inc de
    nop
    di
    and c
    ld d, d
    ld b, b
    db $f4
    jp $007c


    push af
    and d
    ld d, d
    nop
    or $a5
    ld d, d
    ld b, b
    rst $30
    bit 7, h
    nop
    ld hl, sp-$5a
    ld d, d
    nop
    ld sp, hl
    xor c
    ld d, d
    ld b, b
    ld a, [$7cd3]
    nop
    ei
    xor d
    ld d, d
    nop
    ldh a, [$ad]
    ld d, d
    ld b, b
    pop af
    cp e
    ld a, h
    nop
    ld a, [c]
    xor [hl]
    ld d, d
    add b
    or [hl]
    ld a, e
    inc b
    nop
    sub a
    ld d, [hl]
    ld [bc], a
    add b
    ld d, $1d
    ld [de], a
    nop
    inc hl
    ld e, c
    ld d, d
    add b
    dec a
    ld e, e
    ld d, d
    nop
    inc hl
    ld d, [hl]
    ld d, d
    add b
    ld a, b
    ld a, [hl+]
    ld [bc], a
    nop
    inc e
    ld [hl], a
    ld d, d
    add b
    sbc l
    ld a, h
    ld d, d
    nop
    daa
    xor h
    ld d, d
    add b
    add a
    xor a
    ld d, d
    nop
    daa
    and b
    ld d, d
    add b
    add a
    and e
    ld d, d
    nop
    daa
    and h
    ld d, d
    add b
    add a
    and a
    ld d, d
    nop
    daa
    xor b
    ld d, d
    add b
    add a
    xor e
    ld d, d
    nop
    ld de, $521c
    nop
    ld d, $1d
    ld d, d
    nop
    dec de
    ld e, $52
    nop
    ld b, c
    rra
    ld d, d
    nop
    ld b, h
    jr nz, jr_004_7d41

    nop
    ld b, [hl]
    ld hl, $0052
    ld c, b
    ld [hl+], a
    ld d, d
    nop
    ld c, h
    inc hl
    ld d, d
    nop
    ld h, [hl]
    inc h
    ld d, d
    nop
    ld l, c
    dec h
    ld d, d
    nop
    ld [hl], e
    ld h, $52
    nop
    ld a, e
    daa
    ld d, d
    nop
    sbc l
    jr z, jr_004_7d61

    add b
    sub c
    add hl, hl
    ld d, d
    nop
    ld de, $5208
    nop
    ld d, $09
    ld d, d
    nop
    dec de
    ld a, [bc]
    ld d, d
    nop
    ld b, c
    dec bc
    ld d, d
    nop
    ld b, h
    inc c
    ld d, d
    nop
    ld b, [hl]
    dec c
    ld d, d
    nop
    ld c, b
    ld c, $52
    nop
    ld c, h
    rrca
    ld d, d
    nop
    ld h, [hl]
    db $10
    ld d, d
    nop
    ld l, c
    ld de, $0052
    ld [hl], e
    ld [de], a
    ld d, d
    nop
    ld a, e

jr_004_7d41:
    inc de
    ld d, d
    nop
    sbc l
    inc d
    ld d, d
    add b
    sub c
    dec d
    ld d, d
    nop
    add d
    dec hl
    ld d, d
    add b
    adc h
    inc l
    ld d, d
    nop
    add d
    add hl, de
    ld d, d
    add b
    adc h
    ld a, [de]
    ld d, d
    nop
    dec [hl]
    ld b, e
    ld d, d
    add b
    ld l, l

jr_004_7d61:
    ld b, h
    ld d, d
    nop
    dec [hl]
    scf
    ld d, d
    add b
    ld l, l
    jr c, jr_004_7dbd

    nop
    inc h
    ld h, e
    ld d, d
    add b
    ld [hl], h
    jr nc, jr_004_7d75

    nop
    inc [hl]

jr_004_7d75:
    ld l, d
    ld d, d
    add b
    ld c, b
    dec [hl]
    ld [bc], a
    nop
    inc [hl]
    ld l, b
    ld d, d
    add b
    ld a, d
    ld l, h
    ld d, d

Jump_004_7d83:
    nop
    ld [hl+], a
    add hl, sp
    ld [bc], a
    add b
    dec sp
    ld l, [hl]
    ld d, d
    ld bc, $0801
    ld b, e
    ld bc, $0909
    ld b, e
    ld bc, $0a1d
    ld b, e
    ld [bc], a
    ld e, $0b
    ld b, e
    ld bc, $123a
    ld b, e
    ld [bc], a
    dec sp
    ld c, $43
    ld bc, $143c
    ld b, e
    ld [bc], a
    dec a
    db $10
    ld b, e
    ld bc, $225c
    ld b, e
    ld [bc], a
    ld e, l
    inc hl
    ld b, e
    ld bc, $2784
    ld b, e
    ld bc, $2485
    ld b, e
    ld [bc], a
    add [hl]

jr_004_7dbd:
    add hl, hl
    ld b, e
    ld [bc], a
    add a
    ld h, $43
    ld bc, $25a8
    ld b, e
    ld [bc], a
    xor c
    jr z, jr_004_7e0e

    add b
    or [hl]
    ld a, e
    inc b
    ld bc, $305c
    ld d, e
    ld [bc], a
    ld e, l
    ld l, $53
    ld bc, $3a60
    ld d, e
    ld [bc], a
    ld h, d
    inc a
    ld d, e
    ld bc, $49e0
    inc bc
    ld [bc], a
    pop hl
    ld c, d
    inc bc
    ld bc, $1ee2
    inc de
    ld bc, $1fe3
    inc de
    ld bc, $68e4
    inc bc
    ld bc, $51e6
    ld b, e
    ld [bc], a
    rst $20
    ld d, e
    ld b, e
    ld bc, $40e8
    inc sp
    add b
    or [hl]
    ld a, e
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_004_7e0e:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

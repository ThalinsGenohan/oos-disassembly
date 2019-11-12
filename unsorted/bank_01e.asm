; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX

UnknownDinnerText::
    db "<TEXT3>",$21
    db "<TEXT4>",$82
    db "dinner\n"
    db "<TEXT3>",$91
    db "it--"
    db "<TEXT4>",$91
    db "!@"
UnknownVaseText::
    db "Gasp! Tha-tha"
    db $03,$a3
    db $03,$50
    db $09,$01
    db "vase"
    db $03,$38
    db "Giv"
    db "<TEXT3>",$b8
    db $02,$99
    db $09,$01
    db "vase"
    db $09,$00
    db ", "
    db "<TEXT3>",$01
    db "!\n"
    db "<TEXT3>",$3d
    db "begg"
    db "<TEXT4>",$7b
    db $03,$1b
    db "\n"
    db $02,$fe
    db $02,$4d
    db "@"

    db "It"
    jr nz, jr_01e_405c

    rst $30
    ld [bc], a
    call nz, $e603

jr_01e_405c:
    dec b
    add d
    ld h, e
    inc bc
    ld hl, sp+$69
    dec b
    or $49
    ld l, [hl]
    inc bc
    rra
    inc l
    inc bc
    ld c, $21
    ld bc, $0554
    db $e4
    inc b
    cp c
    ld h, h
    ld l, c
    ld l, [hl]
    ld l, [hl]

jr_01e_4076:
    ld h, l
    ld [hl], d
    dec l
    dec l
    ld bc, $8205
    dec b
    or e
    jr nz, jr_01e_4086

    sub c
    ld hl, $4900
    inc b

jr_01e_4086:
    adc b
    jr nz, jr_01e_40ff

    ld h, c
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [bc], a
    db $76
    ld c, c
    ld [bc], a
    xor l
    ld h, h
    inc bc
    or a
    ld [hl], l
    ld [bc], a
    jr nz, @+$22

    ld l, b
    ld l, a
    ld [hl], a
    ld bc, $e702
    inc bc
    or h
    inc bc
    ldh a, [$03]
    inc l
    ld hl, $5700
    ld h, c
    ld h, c
    ld l, b
    ld hl, $213f
    ld bc, $6f48
    ld [hl], a
    inc bc
    rlca
    ld [hl], h
    inc b
    sbc h
    ld hl, $5300
    ld h, e
    ld [hl], d
    ld h, c
    ld l, l
    ld hl, $0201
    sub l
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    inc b
    jr nc, jr_01e_4140

    ld h, c
    ld [hl], e
    ld h, l
    ld [hl], e
    dec b
    sub $20
    ld [hl], e
    dec b
    add hl, bc
    ld hl, $4c00
    ld l, a
    ld l, a
    ld l, e
    dec b
    ld e, [hl]
    jr nz, jr_01e_40e3

    sub b
    ld bc, $6f68
    ld [hl], a

jr_01e_40e3:
    jr nz, jr_01e_4152

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01e_4133

    jr nz, @+$65

    inc b
    inc hl
    ld l, b
    ld h, l
    ld [hl], d
    inc l
    inc b
    cp c
    inc bc
    ld c, d
    ld bc, $c303
    jr nz, jr_01e_4172

    inc bc
    or a
    inc bc
    adc e

jr_01e_40ff:
    dec b
    ld [hl], e
    dec b
    sub $66
    ld bc, $b504
    jr nz, jr_01e_410d

    ld e, d
    ld l, b
    ld h, l
    ld [hl], d

jr_01e_410d:
    ld bc, $2204
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01e_4189

    inc b
    add hl, bc
    dec l
    dec l
    ld bc, $6946
    ld [hl], e
    ld l, b
    dec b
    ld d, l
    nop
    ld c, b
    ld h, l
    ld a, c
    ld [bc], a
    ld a, h
    ld [bc], a
    and $02
    push af
    dec b
    ld a, b
    ld b, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    inc bc
    db $e4
    ld [bc], a

jr_01e_4133:
    db $ec
    inc bc
    jp $0127


    inc b
    ld [hl+], a
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01e_41a5

    ld l, a

jr_01e_4140:
    ld l, a
    ld h, h
    ld hl, $4901
    ld [hl], e
    ld [bc], a
    sbc b
    inc b
    sub c
    ld l, b
    ld h, l
    ld [hl], d
    ccf
    ld bc, $b104
    ld c, a

jr_01e_4152:
    ld h, [hl]
    jr nz, jr_01e_41b8

    ld l, a
    dec b
    ld c, h
    inc bc
    cp a
    nop
    inc b
    xor $02
    ld de, $7301
    inc bc
    add c
    inc bc
    and e
    inc bc
    jp $0121


    dec b
    ld h, l
    inc l
    jr nz, jr_01e_4171

    jp $0021


jr_01e_4171:
    ld c, l

jr_01e_4172:
    ld h, l
    ld l, a
    ld [hl], a
    ld hl, $0300
    jp $2021


    ld c, a
    ld l, b
    inc l
    ld bc, $e604
    jr nz, @+$6d

    ld l, c
    ld [hl], h
    ld [hl], h
    ld a, c
    inc bc
    and e

jr_01e_4189:
    ld [bc], a
    ld de, $2021
    ld c, a
    ld l, b
    ld hl, $5901
    ld h, l
    ld [hl], e
    ld hl, $4120
    jr nz, @+$74

    ld h, l
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    inc bc
    and l
    inc b
    ld e, [hl]
    ld [bc], a
    ld l, $01

jr_01e_41a5:
    add hl, bc
    ld bc, $6303
    dec b
    ret c

    nop
    inc bc
    jp $2021


    ld b, h
    inc bc
    or a
    dec b
    sbc a
    dec b
    rst $20
    ld [hl], a

jr_01e_41b8:
    ld h, l
    ld h, e
    ld l, e
    ld [hl], a
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $00
    ld c, c
    inc bc
    ld l, h
    ld h, c
    jr nz, jr_01e_422d

    ld l, a
    ld l, a
    ld l, h
    inc bc
    or d
    inc b
    or d
    ld l, e
    jr nz, jr_01e_41d4

    rrca
    ld [hl], a
    ld l, c

jr_01e_41d4:
    ld [hl], e
    ld h, l
    ld l, $00
    ld e, d
    ld e, d
    ld e, d
    dec b
    ld d, l
    inc bc
    sub h
    ld [hl], e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $5505
    ld l, c
    ld [hl], h
    jr nz, @+$64

    dec b
    and [hl]
    ld [hl], e
    ld bc, $6874
    inc b
    xor b
    ld e, d
    ld e, d
    ld e, d
    dec b
    ld d, l
    nop
    ld c, b
    ld h, l
    jr nz, jr_01e_4201

    ld d, c
    ld l, [hl]
    daa
    ld [hl], h
    inc b

jr_01e_4201:
    ld b, $6d
    ld bc, $6f74
    inc bc
    rlca
    inc bc
    add hl, de
    ld l, $2e
    nop
    rrca
    add hl, sp
    ld bc, $0557
    db $e4
    dec b
    dec e
    ld [bc], a
    sbc a
    inc bc
    ld e, a
    inc bc
    ld h, e
    dec b
    add sp, $09
    add h
    ld b, $88
    inc b
    ld d, d
    inc b
    or c
    ld d, a
    dec b
    db $e4
    dec b
    dec e
    inc bc
    cp a
    nop

jr_01e_422d:
    dec b
    inc [hl]
    inc b
    ld e, a
    ld d, a
    ld l, b
    ld l, a
    inc bc
    rst $20
    dec b
    ld e, d
    ld [bc], a
    ld a, d
    ld h, h
    ld l, a
    ld hl, $4901
    jr nz, jr_01e_42b4

    ld l, h
    ld h, l
    ld [hl], b
    ld [hl], h
    jr nz, jr_01e_42aa

    ld l, h
    ld h, l
    ld h, c
    ld l, [hl]
    ld bc, $d702
    jr nz, jr_01e_4252

    rst $38
    inc bc

jr_01e_4252:
    and e
    inc b
    and b
    ld [bc], a
    add hl, hl
    dec b
    ld h, h
    ld [bc], a
    ld e, c
    dec b
    sub d
    inc bc
    and l
    ld c, a
    ld l, b
    inc l
    inc bc
    adc [hl]
    ld l, $01
    inc bc
    add hl, bc
    ld h, a
    ld l, a
    inc bc
    or l
    ld bc, $6f68
    ld l, l
    inc bc
    add l
    add hl, bc
    inc bc
    ld c, l
    dec b
    dec d
    inc b
    jr z, jr_01e_427d

    add hl, bc
    inc b
    sub h

jr_01e_427d:
    ld [bc], a
    sbc c
    add hl, bc
    ld bc, $6303
    add hl, bc
    nop
    ld [bc], a
    ld d, l
    ld [bc], a
    ld [$bd03], a
    ld l, c
    ld [hl], h
    ld l, $01
    ld c, b
    dec b
    ret nc

    jr nz, jr_01e_4299

    ld a, b
    ld c, l
    inc bc
    jr nz, jr_01e_429e

jr_01e_4299:
    ld a, a
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h

jr_01e_429e:
    ld h, l
    ld h, c
    ld h, h
    ld hl, $5a00
    ld e, d
    ld e, d
    dec b
    ld d, l
    add hl, bc
    inc bc

jr_01e_42aa:
    ld c, l
    dec b
    dec d
    add hl, bc
    nop
    inc bc
    and l
    dec b
    push hl
    inc b

jr_01e_42b4:
    sbc c
    dec b
    ld c, d
    ld l, $2e
    ld e, d
    ld e, d
    ld e, d
    nop
    inc c
    ld [hl+], a
    ld c, c
    ld h, [hl]
    jr nz, jr_01e_42c5

    di
    inc bc

jr_01e_42c5:
    sbc a
    ld bc, $9504
    inc l
    jr nz, jr_01e_4315

    daa
    ld h, h
    jr nz, jr_01e_4343

    dec b
    rst $38
    ld bc, $6568
    ld [hl], d
    inc bc
    or b
    ld [bc], a
    sbc [hl]
    ld bc, $9104
    add hl, bc
    ld bc, $034d
    jr nz, jr_01e_4356

    inc b
    ld [hl], l
    inc b
    ld [hl], e
    inc bc
    and b
    dec b
    ld c, e
    ld bc, $6168
    ld [hl], e
    inc b
    ld l, a
    inc bc
    push af
    inc b
    sbc a
    inc l
    ld bc, $2902
    dec b
    ld [de], a
    inc b
    jr nc, jr_01e_4307

    ld bc, $4503
    dec b
    ret c

    nop
    inc c
    ld [hl+], a
    ld d, e

jr_01e_4307:
    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld h, [hl]
    inc l
    jr nz, jr_01e_4381

    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld h, [hl]
    inc b
    db $eb
    inc bc

jr_01e_4315:
    ld d, b
    ld [hl], e
    dec b
    ld b, b
    ld hl, $0321
    and e
    ld e, c
    ld h, c
    daa
    db $76
    ld h, l
    inc b
    ld d, $61
    ld bc, $0109
    ld c, l
    inc bc
    jr nz, jr_01e_432f

    db $e4
    inc bc
    add hl, bc

jr_01e_432f:
    inc bc
    sbc d
    inc b
    jr nc, jr_01e_433d

    ld bc, $7703
    inc bc
    db $e4
    inc b
    db $fc
    ld [bc], a
    adc e

jr_01e_433d:
    inc b
    or a
    inc bc
    adc b
    ld [bc], a
    ld c, l

jr_01e_4343:
    nop
    inc c
    ld [hl+], a
    ld b, l
    ld h, l
    inc l
    dec b
    ldh [$65], a
    inc l
    dec b
    ldh [$65], a
    dec b
    sub $01
    dec b
    ld e, a
    inc bc

jr_01e_4356:
    ld l, l
    jr nz, jr_01e_435c

    db $dd
    dec b
    add d

jr_01e_435c:
    add hl, bc
    ld bc, $4503
    inc b
    jr z, jr_01e_43aa

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [bc], a
    xor c
    dec b
    ld [bc], a
    ld bc, $9403
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], b
    dec b
    db $d3
    ld l, a
    ld l, [hl]
    ld l, $00
    inc c
    ld [hl+], a
    inc b
    cpl
    ld [hl], a
    ld [bc], a
    ld l, e
    inc b
    push hl

jr_01e_4381:
    ld bc, $f302
    dec b
    ld l, e
    ld [hl], h
    inc bc
    rst $00
    ld l, b
    ld h, l
    ld [hl], d
    inc bc
    ld a, [bc]
    inc bc
    ldh [$3f], a
    nop
    inc c
    ld [hl+], a
    ld c, b
    ld l, l
    ld [hl], b
    ld l, b
    ld hl, $4320
    ld h, c
    dec b
    ld h, c
    ld [bc], a
    cp e
    jr nz, @+$06

    ld hl, $656d
    ld bc, $2061
    ld c, l
    inc bc

jr_01e_43aa:
    jr nz, jr_01e_43eb

    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld h, d
    inc bc
    db $dd
    ld h, c
    jr nz, jr_01e_43f9

    ld [hl], l
    ld h, e
    ld l, e
    ld l, a
    ld l, a
    jr nz, jr_01e_4400

    dec b
    and [hl]
    ld bc, $5b03
    inc b
    ld d, a
    dec b
    xor d
    inc bc
    db $10
    ld [bc], a
    xor d
    ld [bc], a
    add hl, hl
    inc bc
    rst $10
    ld h, c
    ld bc, $0109
    inc bc
    ld [hl], a
    dec b
    ld a, a
    inc bc
    ld [$0349], sp
    dec c
    inc bc
    and l
    ld c, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01e_4456

    ld [bc], a
    db $dd
    inc bc
    db $ed
    ld h, d
    inc b
    add hl, bc
    ld l, b
    ld [hl], h

jr_01e_43eb:
    ld h, c
    ld l, e
    dec b
    ld c, d
    ld l, $2e
    nop
    inc c
    ld [hl+], a
    dec b
    sbc l
    ld hl, $0220

jr_01e_43f9:
    ld b, b
    ld h, c
    ld l, [hl]
    ld bc, $6d61
    ld h, c

jr_01e_4400:
    ld a, d
    inc bc
    and [hl]
    ld h, d
    ld l, c
    ld [hl], d
    ld h, h
    ld [bc], a
    jp nz, $0568

    ret nc

    ld hl, $4d20
    ld h, c
    ld a, c
    jr nz, jr_01e_445c

    ccf
    ld bc, $fe02
    ld [bc], a
    ld c, l
    nop
    inc c
    ld [hl+], a
    ld b, d
    inc b
    add hl, bc
    ld l, b
    ld [hl], h
    ld h, c
    ld l, e
    inc b
    and [hl]
    ld bc, $5e04
    ld [bc], a
    ld l, $21
    nop
    inc c
    ld [hl+], a
    ld b, l
    dec b
    ld h, e
    inc b
    xor l
    inc b
    ld b, l
    ld bc, $6966
    ld h, h
    ld h, h
    ld l, h
    dec b
    ld a, e
    ld [bc], a
    sbc a
    ld h, l
    ld l, [hl]
    ld h, a
    dec b
    ld [hl], b
    ld hl, $0c00
    ld [hl+], a
    ld [bc], a
    ld [hl], c
    dec b
    rla
    inc bc
    or d
    ld h, c
    ld [hl], e
    ld l, e
    dec b
    jp c, $8103

    dec b

jr_01e_4456:
    ld d, l
    nop
    ld b, a
    ld l, a
    ld [bc], a
    sub d

jr_01e_445c:
    inc l
    ld bc, $6f67
    ld [bc], a
    sub d
    ld hl, $0501
    ld [hl], h
    ld [bc], a
    db $eb
    jr nz, jr_01e_446d

    db $ed
    ld l, a
    ld l, c

jr_01e_446d:
    ld l, h
    dec b
    jp nc, $042c

    ld h, h
    ld [hl], a
    inc b
    xor e
    jr nz, jr_01e_44df

    ld l, a
    ld [bc], a
    sub d
    ld bc, $4205
    inc bc
    jp z, Jump_01e_5505

    nop
    add hl, bc
    ld bc, $2904
    dec b
    add sp, $09
    add h
    ld b, $8b
    inc b
    ld d, d
    ld d, a
    dec b
    pop de
    ld [bc], a
    sbc b
    inc bc
    db $dd
    ld l, c
    ld [hl], h
    jr nz, jr_01e_4501

    ld l, a
    inc bc
    jp z, HeaderManufacturerCode

    inc c
    db $10
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    inc b
    ld d, h
    nop
    ld [bc], a
    and a
    jr nz, @+$56

    dec b
    db $e4
    ld bc, $8205
    add hl, bc
    ld bc, $c803
    dec b
    ret c

    nop
    ld b, a
    ld l, a
    ld [bc], a
    sub d
    inc l
    ld bc, $6f67
    ld [bc], a
    sub d
    ld hl, $4901
    ld [hl], e
    inc b
    inc l
    ld h, a
    ld l, a
    inc bc
    rst $00
    ld [hl], h
    ld l, a
    ld l, a
    jr nz, jr_01e_4537

    ld h, c
    ld [hl], e
    ld [hl], h
    ccf
    nop
    ld [bc], a
    db $ec
    ld l, [hl]
    ld l, a
    inc bc
    ld d, c
    dec b
    rlca
    ld l, c

jr_01e_44df:
    ld [hl], h
    ld [bc], a
    ld a, d
    ld h, a
    ld l, a
    ld hl, $0c00
    ld [hl+], a
    ld c, $c6
    dec b
    db $dd
    dec b
    ld d, [hl]
    ld c, b
    ld [hl], d
    ld l, l
    inc bc
    and e
    dec b
    sbc l
    ld [bc], a
    ld a, d
    dec b
    inc b
    ld bc, $9104
    ld l, l
    ld h, l
    ccf
    jr nz, @+$48

jr_01e_4501:
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $0c00
    ld [hl+], a
    ld c, $c6
    dec b
    db $dd
    dec b
    ld d, [hl]
    ld b, h
    ld h, l
    ld h, l
    ccf
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    db $ec
    ld [hl], e
    ld [hl], h
    ld h, c
    inc bc
    ld a, $61
    ld [hl], h
    ld bc, $0479
    ld h, l
    add hl, bc
    ld bc, $c803
    dec b
    add sp, $09
    add h
    ld b, $8c
    inc b
    jr z, jr_01e_453b

    db $10
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    inc b
    inc l
    inc c

jr_01e_4537:
    db $10
    ld b, h
    ld l, a
    ld l, [hl]

jr_01e_453b:
    daa
    ld [hl], h
    nop
    inc c
    ld [hl+], a
    ld c, $c6
    ld b, h
    ld h, l
    ld h, l
    ld hl, $0320
    ld a, [hl+]
    ld h, c
    ld bc, $7574
    ld l, [hl]
    ld h, l
    dec b
    sub $04
    adc b
    inc bc
    cp [hl]
    ld [bc], a
    inc l
    ld bc, $9403
    ld [hl], a
    ld h, c
    ld a, c
    inc bc
    or b
    ld l, l
    ld a, c
    ld bc, $0309
    inc b
    rst JumpTable
    jr nz, jr_01e_45bb

    ld [hl], b
    ld l, a
    ld [hl], h
    inc bc
    jr c, jr_01e_45b7

    ld h, [hl]
    jr nz, @+$76

    ld h, l
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], d
    inc bc
    ccf
    ld [hl], e
    ld bc, $6972
    ld [hl], e
    ld h, l
    jr nz, jr_01e_45e1

    ld [hl], e
    ld [bc], a
    push de
    ld h, a
    ld l, a
    ld bc, $6166
    ld [hl], d
    jr nz, jr_01e_458d

    ld e, c
    dec b

jr_01e_458d:
    ld e, $2c
    ld bc, $7c05
    daa
    ld l, h
    ld l, h
    ld [bc], a
    db $e4
    ld l, c
    ld [hl], h
    ld hl, $5900
    ld h, c
    ld l, b
    ld l, a
    ld l, a
    ld hl, $0e00
    rst $00
    ld [bc], a
    ld h, d
    inc b
    push bc
    ld bc, $0261
    rst JumpTable
    jr nz, jr_01e_45b3

    inc l
    ld bc, $1e04
    inc b

jr_01e_45b3:
    call nz, $b402
    dec b

jr_01e_45b7:
    add hl, hl
    ld [hl], e
    inc bc
    db $e3

jr_01e_45bb:
    ld l, a
    ld l, h
    ld h, h
    ld bc, $cf05
    inc bc
    adc h
    ld l, [hl]
    jr nz, jr_01e_45cb

    sbc $2e
    ld bc, $7542

jr_01e_45cb:
    ld [hl], h
    ld [bc], a
    xor c
    inc bc
    sub b
    ld bc, $9f05
    ld [bc], a
    and h
    inc b
    push bc
    ld bc, $7469
    jr nz, @+$72

    ld [hl], d
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d

jr_01e_45e1:
    ld l, h
    ld a, c
    ld bc, $9002
    ld bc, $5d02
    dec b
    add b
    ld [bc], a
    db $10
    ld l, $01
    ld [bc], a
    inc sp
    inc b
    or a
    inc b
    inc b
    inc bc
    cp a
    nop
    ld c, $c7
    ld c, a
    inc bc
    cp c
    dec b
    ld d, [hl]
    ld b, e
    ld [bc], a
    jr z, jr_01e_4605

    ld d, l
    ld h, [hl]

jr_01e_4605:
    ld l, c
    ld h, a
    ld [hl], l
    ld [hl], d
    ld h, l
    inc b
    inc l
    dec b
    pop hl
    ld l, $00
    ld c, $c7
    ld [bc], a
    and a
    ld bc, $e902
    jr nz, @+$05

    inc hl
    ld hl, $0e00
    rst $00
    ld d, e
    ld l, a
    ld hl, $0220
    ld b, b
    ld l, b
    ld l, a
    ld [hl], a
    ld bc, $d203
    inc b
    push bc
    inc bc
    cp [hl]
    ld c, c
    ld [bc], a
    ldh [rSC], a
    xor c
    ld [hl], h
    ld [hl], d
    ld a, c
    ld bc, $7469
    inc b
    dec b
    ld l, $20
    ld c, b
    ld h, c
    ld l, [hl]
    ld h, a
    jr nz, @+$07

    or $04
    rst $00
    inc l
    jr nz, jr_01e_464e

    add hl, hl
    ld bc, $7453
    ld h, l

jr_01e_464e:
    ld h, l
    ld l, h
    dec b
    ld d, l
    nop
    ld c, $c7
    inc bc
    add sp, $05
    sbc $67
    ld l, a
    ld [hl], h
    dec b
    jp nc, $003f

    ld c, $c7
    ld [bc], a
    ld b, b
    ld l, c
    ld [hl], h
    inc bc
    sub a
    ld bc, $2905
    dec b
    sbc d
    add hl, bc
    ld bc, $0447
    add hl, bc
    ld bc, $4304
    ld [bc], a
    call nc, $6572
    inc b
    push bc
    ld h, h
    ld hl, $e802
    ld h, e
    inc b
    rlca
    ld l, c
    ld [hl], h
    ld bc, $0109
    ld [bc], a
    ld e, l
    dec b
    add b
    ld d, e
    inc bc
    ld b, $03
    and e
    inc bc
    add sp, $05
    or d
    ld [bc], a
    adc d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    inc l
    dec b
    db $d3
    ld [bc], a
    jp nz, Jump_01e_6567

    ld [hl], h
    ld [bc], a
    xor h
    inc b
    add c
    ld bc, $d905
    ld hl, $0e00
    rst $00
    inc bc
    add hl, bc
    inc bc
    pop af
    ld [bc], a
    or h
    ld [bc], a
    db $10
    inc bc
    pop de
    ld [bc], a
    ld e, l
    ld [bc], a
    sbc c
    inc bc
    ld h, d
    ld l, h
    ld h, l
    ld [hl], h
    ld [bc], a
    push de
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $0109
    ld [bc], a
    ld e, l
    dec b
    sbc d
    ld d, e
    inc bc
    ld b, $01
    dec b
    sbc c
    ld [bc], a
    inc b
    inc bc
    and h
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld c, b
    dec b
    call c, $d205
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $0002
    nop
    ld c, $c7
    ld b, e
    ld [bc], a
    jr z, jr_01e_46f2

    ld d, l
    ld [bc], a

jr_01e_46f2:
    ret z

    ld [bc], a
    or h
    ld [bc], a
    db $10
    ld l, $00
    ld [bc], a
    ld b, l
    ld h, c
    ld [hl], a
    ld h, c
    ld l, e
    inc bc
    sub c
    ld [bc], a
    jp hl


    ld hl, $5220
    ld h, l
    ld l, h
    ld h, c
    ld a, b
    dec l
    dec l
    ld bc, $6f4a
    dec b
    sbc c
    inc b
    ld a, $6a
    ld l, a
    db $76
    ld l, c
    ld h, c
    ld l, h
    ld bc, $7274
    ld l, a
    ld [hl], l
    ld [hl], b
    ld h, l
    inc bc
    db $e3
    ld bc, $6570
    ld [hl], d
    dec b
    sbc $6d
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [bc], a
    ld [c], a
    ld h, c
    jr nz, jr_01e_4793

    ld l, c
    ld [hl], h
    ld hl, $0200
    ld b, d
    inc bc
    add hl, hl
    jr nz, jr_01e_47ab

    ld l, a
    ld [hl], b
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], d
    ld bc, $0464
    dec d
    ld [hl], d
    ld l, $20
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6573
    ld h, l
    inc bc
    and [hl]
    ld l, b
    ld h, l
    ld [hl], d
    inc bc
    inc sp
    ld bc, $6172
    ld l, c
    ld [hl], e
    ld h, l
    ld [hl], e
    inc b
    ld h, $05
    add b
    inc b
    dec [hl]
    ld hl, $0200
    ld b, d
    ld [bc], a
    ld d, b
    ld h, e
    ld h, c
    inc bc
    ld a, $05
    sbc $02
    jp nz, $a003

    dec b
    ld c, e
    jr nz, jr_01e_477c

    ld b, d
    ld bc, $1405

jr_01e_477c:
    jr nz, @+$55

    dec b
    dec [hl]
    ld [bc], a
    pop de
    dec l
    ld [hl], a
    dec b
    pop de
    dec b
    ld a, l
    inc b
    ld [hl], e
    inc b
    ld a, e
    dec b
    ld [hl], l
    inc b
    xor h
    ld [hl], h
    ld h, l
    ld h, h

jr_01e_4793:
    ld l, $00
    ld b, c
    inc bc
    cp c
    ld [bc], a
    ld b, d
    jr nz, @+$05

    inc d
    ld bc, $6205
    ld [hl], e
    dec b
    db $d3
    inc b
    adc b
    ld l, h
    ld a, c
    ld hl, $0401
    cpl

jr_01e_47ab:
    ld [hl], e
    ld l, b
    ld h, l
    inc b
    ld b, $6d
    ld [hl], e
    ld bc, $6d73
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [bc], a
    sbc a
    dec b
    inc d
    inc bc
    ld a, [c]
    ld l, d
    ld h, l
    ld h, c
    ld l, h
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $00
    inc b
    xor $03
    ld [hl], h
    dec b
    ld l, l
    ld bc, $f502
    dec b
    ld [bc], a
    ld h, l
    ld h, h
    ld hl, $4101
    ld [hl], d
    ld [bc], a
    ld [hl], h
    inc b
    inc hl
    inc bc
    push de
    inc bc
    rst $20
    ld [bc], a
    sub h
    ld c, c
    ld l, l
    ld [hl], b
    ld h, c
    add hl, bc
    nop
    inc l
    ld [bc], a
    or h
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    inc b
    and d
    ld h, e
    ld l, a
    ld l, a
    ld l, e
    ld l, $01
    ld b, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    push de
    dec b
    rst $08
    inc bc
    rst $20
    ld a, [bc]
    nop
    ccf
    jr nz, jr_01e_4851

    inc b
    ld b, $03
    and h
    ld [bc], a
    ld b, d
    inc l
    ld [bc], a
    xor h
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, e
    inc bc
    rst $00
    dec b
    ld l, b
    inc l
    ld [bc], a
    ld a, b
    dec b
    ld a, h
    ld bc, $6f63
    ld l, h
    ld l, h
    ld h, c
    ld [hl], b
    ld [hl], e
    ld h, l
    ld h, h
    ld [bc], a
    ld c, b
    inc b
    adc c
    ld l, $01
    ld d, e
    ld l, b
    inc b
    and d
    ld h, e
    dec b
    rst $08
    ld h, h
    ld [bc], a
    ld [c], a
    inc bc
    jp nc, $d702

    ld bc, $0b03
    ld l, [hl]
    inc b
    dec h
    ld l, l
    dec b
    rst $08
    ld [hl], e
    ld l, $00
    ld [bc], a
    ld h, b
    dec b
    add a
    inc bc
    and e
    inc b
    rst $20
    dec b

jr_01e_4851:
    sub $03
    call Call_01e_7701
    ld l, b
    ld l, c
    ld l, h
    ld [bc], a
    ld [hl], h
    ld [hl], e
    ld l, h
    ld h, l
    ld [hl], b
    ld [hl], h
    inc bc
    and e
    ld [bc], a
    ld b, l
    ld a, [bc]
    nop
    inc l
    ld bc, $d503
    inc bc
    rst $20
    inc b
    db $fc
    ld h, h
    ld l, a
    ld [bc], a
    push de
    ld h, h
    ld l, a
    inc l
    ld bc, $000a
    ccf
    ld bc, $8d03
    ld [bc], a
    ld b, d
    ld l, $20
    ld c, c
    ld bc, $6173
    ld [hl], a
    dec b
    ld a, [hl]
    ld [hl], d
    dec b
    sbc e
    ld h, [hl]
    ld l, h
    ld h, c
    ld [hl], e
    ld l, b
    ld bc, $6902
    inc b
    adc c
    inc l
    ld bc, $e903
    inc bc
    adc d
    ld c, c
    ld bc, $0577
    rst $10
    inc bc
    inc e
    ld bc, $6877
    ld h, c
    inc bc
    sbc e
    ld [hl], a
    ld h, c
    ld [hl], e
    inc bc
    and l
    dec b
    sbc l
    inc bc
    sbc a
    jr nz, jr_01e_491e

    ld a, c
    inc bc
    rst $00
    inc b
    daa
    ld h, l
    inc bc
    and h
    ld c, l
    ld a, c
    inc b
    xor c
    ld a, c
    ld bc, $7573
    ld [hl], d
    inc bc
    cp h
    ld [hl], e
    inc b
    dec l
    inc l
    ld bc, $000a
    ld l, $01
    ld c, c
    daa
    ld l, l
    ld [bc], a
    xor l
    ld h, a
    ld l, h
    ld h, c
    ld h, h
    ld bc, $b502
    inc bc
    ld e, e
    inc bc
    and e
    inc b
    or [hl]
    ld hl, $5720
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a
    jp nz, $0464

    dec d
    ld [bc], a
    adc b
    ld l, l
    ld h, l
    ccf
    nop
    ld [bc], a
    sub l
    dec b
    sbc a
    ld [hl], e
    ld l, b
    ld a, c
    ld hl, $4401
    ld h, c
    ld l, [hl]
    ld h, e
    dec b
    ld a, e
    ld [bc], a
    add c
    dec b

Call_01e_4904:
    sbc a
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld hl, $4800
    ld a, c
    ld h, c
    inc bc
    ld h, h
    ld bc, $2749
    db $76
    ld h, l
    ld [bc], a
    ld a, b
    dec b
    ld c, l
    ld bc, $4202
    inc l
    inc bc
    dec h

jr_01e_491e:
    ld bc, $3a02
    ld hl, $0301
    add sp, $68
    ld l, c
    ld h, h
    jr nz, @+$05

    ld c, b
    ld bc, $0577
    and e
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    ld [bc], a
    jp nz, $a802

    ld h, l
    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    ld bc, $3102
    inc l
    jr nz, @+$05

    ld l, a
    ld bc, $7a05
    ld [bc], a
    adc $21
    nop
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, jr_01e_4952

    ld a, [c]
    ld l, l

jr_01e_4952:
    ld a, c
    ld bc, $0477
    xor [hl]
    ld h, d
    ld l, a
    ld a, c
    ld hl, $0f00
    nop
    ld bc, $4002
    inc b
    add h
    inc b
    ld h, l
    ld h, a
    ld [hl], l
    ld l, c
    ld [hl], e
    ld h, l
    ld l, $02
    rst $00
    daa
    ld [hl], h
    ld bc, $6173
    ld a, c
    inc bc
    ld d, e
    ld l, a
    jr nz, jr_01e_49e4

    ld l, a
    ld [hl], l
    ld h, h
    inc l
    ld bc, $7304
    ld [hl], a
    ld h, l
    daa
    ld [hl], d
    ld h, l
    inc b
    ret nz

    ld l, h
    ld a, c
    ld bc, $0309
    ld c, b
    ld a, c
    ld l, h
    ld l, c
    ld h, c
    ld l, [hl]
    dec b
    add sp, $4b
    ld l, [hl]
    inc b
    dec h
    ld [hl], e
    ld l, $00
    inc bc
    adc l
    ld l, a
    ld l, [hl]
    dec b
    ld a, [hl]
    ld [bc], a
    xor e
    ld bc, $696d
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$77

    inc b
    cp $01
    inc bc
    sub h
    inc b
    ld c, l
    inc bc
    dec sp
    ld [bc], a
    ld bc, $012e
    ld d, e
    ld h, l
    ld h, l
    inc bc
    and [hl]
    ld [bc], a
    ld b, d
    inc bc
    inc sp
    ld bc, $7369
    dec b
    db $d3
    jr nz, jr_01e_4a36

    ld l, a
    db $76
    dec b
    ld c, d
    ld bc, $0249
    ld a, d
    ld l, h
    ld h, l
    ld [hl], h
    inc b
    or b
    ld bc, $6168
    ld [hl], d
    ld l, l
    jr nz, jr_01e_4a3f

    ld h, l
    ld h, [hl]
    inc b
    rlca
    ld l, b
    ld h, l
    ld [hl], d

jr_01e_49e4:
    ld hl, $0200
    ld b, d
    ld [bc], a
    ld d, b
    ld h, e
    ld h, c
    inc bc
    ld a, $05
    sbc $02
    jp nz, $2e04

    jr nz, jr_01e_49f9

    and b
    dec b
    ld c, e

jr_01e_49f9:
    ld bc, $4204
    inc bc
    add hl, de
    ld l, $2e
    ld bc, $6853
    inc b
    and d
    ld [bc], a
    pop de
    dec l
    ld bc, $0577
    pop de
    ld h, l
    ld h, h
    ld [bc], a
    adc h
    inc b
    ld a, e
    dec b
    ld [hl], l
    ld l, $20
    ld c, c
    jr nz, jr_01e_4a86

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $0805
    dec b
    ldh [$72], a
    ld [bc], a
    db $d3
    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    ld l, $00
    ld d, h
    ld l, b
    ld h, l
    inc bc
    dec h
    inc bc
    add hl, hl
    ld bc, $6f6c
    db $76
    ld h, l

jr_01e_4a36:
    ld l, h
    ld a, c
    inc bc
    inc sp
    ld [hl], d
    ld l, $00
    ld a, [bc]
    nop

jr_01e_4a3f:
    ld [bc], a
    and $02
    push af
    dec b
    add a
    ld hl, $0201
    db $ec
    ld l, l
    ld h, l
    inc l
    dec b
    push de
    ld c, c
    ld l, l
    ld [hl], b
    ld h, c
    add hl, bc
    nop
    inc bc
    and l
    add hl, bc
    inc bc
    dec b
    dec hl
    inc b
    rst $08
    ld l, [hl]
    dec b
    ld c, h
    ld l, $01
    ld [bc], a
    ld b, d
    inc l
    ld [bc], a
    xor h
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, e
    inc bc
    rst $00
    dec b
    ld l, b
    inc l
    ld [bc], a
    ld a, b
    dec b
    ld a, h
    ld bc, $6f63
    ld l, h
    ld l, h
    ld h, c
    ld [hl], b
    ld [hl], e
    ld h, l
    ld h, h
    ld [bc], a
    add d
    ld h, [hl]
    ld l, a
    inc b
    db $ec
    jr nz, jr_01e_4aeb

    ld l, h

jr_01e_4a86:
    ld l, a
    ld l, a
    ld [hl], d
    ld l, $01
    ld d, e
    ld l, b
    ld h, l
    jr nz, @+$65

    dec b
    rst $08
    ld h, h
    ld [bc], a
    ld [c], a
    inc bc
    jp nc, $d702

    ld [bc], a
    ld l, d
    ld l, [hl]
    inc b
    dec h
    ld l, l
    dec b
    rst $08
    ld [hl], e
    inc bc
    and h
    ld b, c
    ld [hl], d
    ld [bc], a
    ld [hl], h
    inc bc
    ld e, e
    inc bc
    rst $20
    inc bc
    inc a
    ld l, h
    inc b
    ret z

    inc l
    ld bc, $000a
    ld l, $01
    dec b
    ld c, [hl]
    jr nz, jr_01e_4b04

    ld [bc], a
    ld e, b
    dec b
    ld a, l
    dec b
    ld a, c
    ld [bc], a
    ret nz

    inc l
    jr nz, @+$04

    dec c
    ld bc, $c304
    ld l, l
    ld h, l
    ld [bc], a
    sbc b
    ld l, c
    ld l, [hl]
    ld bc, $6461
    ld h, h
    ld l, c
    inc b
    ccf
    inc bc
    or d
    inc bc
    ld h, a
    inc l
    jr nz, jr_01e_4ae0

    ld b, d
    inc l

jr_01e_4ae0:
    ld [bc], a
    or h
    ld [bc], a
    ccf
    ld bc, $8402
    inc l
    inc b
    ld c, e
    ld h, c

jr_01e_4aeb:
    ld l, h
    ld [hl], e
    ld l, a
    inc b
    inc d
    inc b
    jp c, $012e

    ld d, e
    ld l, a
    inc l
    jr nz, jr_01e_4b5a

    ld [hl], e
    dec b
    ld c, e
    ld bc, $6572
    inc bc
    di
    ld h, l
    ld h, h
    inc bc

jr_01e_4b04:
    and l
    ld d, a
    ld h, l
    daa
    db $76
    ld h, l
    jr nz, jr_01e_4b7c

    ld l, a
    ld [hl], e
    dec b
    sbc e
    ld h, c
    ld [hl], e
    dec b
    cp d
    inc bc
    ld e, h
    inc bc
    and [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    ld h, l
    ld bc, $e705
    ld [hl], a
    ld h, l
    inc bc
    ld d, $73
    ld l, [hl]
    ld h, l
    ld h, c
    ld l, e
    ld bc, $4202
    inc bc
    sub l
    jr nz, @+$04

    ret nz

    ld l, $00
    ld [bc], a
    ld h, b
    dec b
    add a
    inc bc
    and e
    inc b
    rst $20
    dec b
    sub $03
    call $0301
    sub h
    ld [hl], a
    dec b
    ld d, b
    inc bc
    ld a, [bc]
    ld bc, $d203
    ld [hl], e
    ld l, h
    ld h, l
    ld [hl], b
    ld [hl], h
    ld hl, $0201
    ld b, l
    ld a, [bc]
    nop
    inc l
    ld bc, $d503

jr_01e_4b5a:
    inc bc
    rst $20
    inc b
    db $fc
    ld h, h
    ld l, a
    ld [bc], a
    push de
    ld h, h
    ld l, a
    inc l
    ld bc, $000a
    ccf
    ld bc, $8d03
    ld [bc], a
    ld b, d
    ld l, $01
    ld [bc], a
    ld b, l
    inc bc
    sub h
    dec b
    ld e, l
    ld [hl], a
    ld l, b
    ld l, a
    jr nz, jr_01e_4b7f

    ld h, e

jr_01e_4b7c:
    ld h, h
    jr nz, @+$05

jr_01e_4b7f:
    ld h, a
    inc l
    ld bc, $9403
    ld [bc], a
    ccf
    ld bc, $1805
    inc l
    inc bc
    and $02
    inc b
    inc bc
    and h
    inc bc
    xor h
    ld h, c
    jr nz, jr_01e_4c07

    dec b
    ld a, l
    ld h, [hl]
    ld l, h
    ld h, c
    ld [hl], e
    ld l, b
    ld [bc], a
    ld c, b
    inc b
    adc c
    inc l
    jr nz, jr_01e_4ba8

    and c
    ld [bc], a
    jp nc, $2049

jr_01e_4ba8:
    ld [hl], a
    dec b
    rst $10
    inc bc
    inc e
    ld bc, $6877
    ld h, c
    inc bc
    sbc e
    ld [hl], a
    ld h, c
    ld [hl], e
    inc l
    ld [bc], a
    jp nz, $fa05

    jr nz, @+$6e

    ld a, c
    inc bc
    rst $00
    inc b
    daa
    ld h, l
    inc bc
    and h
    inc b
    dec a
    ld h, a
    ld l, h
    ld h, c
    ld h, h
    inc b
    dec l
    inc b
    and e
    inc b
    sub d
    inc bc
    and [hl]
    inc bc
    ld e, e
    inc bc
    and e
    inc b
    or [hl]
    ld hl, $5720
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a
    jp nz, $0464

    dec d
    ld [bc], a
    adc b
    ld l, l
    ld h, l
    ccf
    nop
    ld [bc], a
    sub l
    dec b
    sbc a
    ld [hl], e
    ld l, b
    ld a, c
    ld hl, $4401
    ld h, c
    ld l, [hl]
    ld h, e
    dec b
    ld a, e
    ld [bc], a
    add c
    dec b
    rst $28
    ld [bc], a
    add b
    inc b
    xor h
    ld [hl], h
    ld hl, $4800
    ld a, c

jr_01e_4c07:
    ld h, c
    inc bc
    ld h, h
    ld bc, $2749
    db $76
    ld h, l
    ld [bc], a
    ld a, b
    dec b
    ld c, l
    ld bc, $4202
    ld hl, $0301
    add sp, $68
    ld l, c
    ld h, h
    jr nz, @+$05

    ld c, b
    ld bc, $0577
    and e
    ld [bc], a
    adc h
    dec b
    ld a, h
    ld bc, $a802
    ld h, l
    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    ld bc, $3102
    inc l
    jr nz, @+$05

    ld l, a
    ld bc, $7a05
    ld [bc], a
    adc $21
    nop
    ld d, e
    ld l, a
    ld hl, $0220
    ld b, l
    inc b
    and a
    ld h, d
    ld l, a
    ld a, c
    jr nz, jr_01e_4cc3

    ld l, b
    ld l, a
    jr nz, jr_01e_4c53

    add b
    dec b
    ld a, l

jr_01e_4c53:
    ld [bc], a
    or e
    inc l
    jr nz, jr_01e_4cab

    ld l, a
    ld [hl], d
    ld h, e
    ld h, l
    dec b
    nop
    ld bc, $7a05
    ld d, e
    ld l, b
    ld h, c
    ld h, h
    ld l, a
    ld [hl], a
    ld [hl], e
    ld hl, $0301
    add hl, bc
    inc b
    ld l, [hl]
    ld h, [hl]
    inc b
    rlca
    ld h, c
    ld [hl], e
    ld bc, $6165
    ld [hl], e
    ld l, c
    ld l, h
    ld a, c
    jr nz, jr_01e_4cdd

    ld [hl], e
    dec b
    ld c, e
    ld hl, $0c00
    ld [hl+], a
    ld c, b
    ld b, c
    ld b, c
    ld b, c
    ld hl, $0a20
    nop
    ld hl, $0c00
    jr nz, jr_01e_4cd5

    ld h, l
    ld h, l
    dec b
    ldh [$65], a
    dec b
    ldh [$65], a
    ld hl, $0321
    and e
    ld [bc], a
    or e
    inc l
    jr nz, jr_01e_4cf4

    ld l, a
    ld [hl], d
    ld h, e
    ld h, l
    dec b
    nop
    ld bc, $7a05
    ld d, e

jr_01e_4cab:
    ld l, b
    ld h, c
    ld h, h
    ld l, a
    ld [hl], a
    ld [hl], e
    ld hl, $0201
    rrca
    ld [bc], a
    add c
    inc b
    ld l, [hl]
    ld l, h
    ld h, l
    ld [hl], h
    ld [bc], a
    ld l, d
    ld h, h
    inc b
    sub b
    jr nz, jr_01e_4d25

jr_01e_4cc3:
    ld h, l
    dec b
    ld l, e
    ld [hl], h
    ld h, l
    ld h, h
    inc bc
    and e
    ld c, h
    ld l, a
    ld l, a
    ld l, e
    inc l
    jr nz, jr_01e_4cd4

    or e
    inc bc

jr_01e_4cd4:
    and e

jr_01e_4cd5:
    inc bc
    or c
    ld [hl], h
    ld [hl], d
    inc bc
    ret c

    ld [hl], e
    ld [bc], a

jr_01e_4cdd:
    jp nz, Jump_01e_6163

    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    inc b
    dec b
    jr nz, @+$07

    inc e
    ld bc, $7361
    jr nz, $4d62

    ld [bc], a
    ld e, [hl]
    inc bc
    pop de
    inc b
    ld [bc], a

jr_01e_4cf4:
    ld hl, $0501
    ld c, [hl]
    jr nz, jr_01e_4d6e

    ld [bc], a
    ld e, [hl]
    ld [hl], e
    ld bc, $7a05
    ld b, h
    ld [bc], a
    rra
    ld bc, $e903
    ld b, h
    inc bc
    dec b
    inc bc
    ld b, c
    ld l, h
    ld l, c
    ld [hl], h
    inc l
    jr nz, jr_01e_4d88

    ld h, l
    ld [bc], a
    add c
    dec b
    jr nc, @+$22

    ld [hl], l
    ld [hl], b
    jr nz, jr_01e_4d1f

    ld h, l
    ld [bc], a
    ld e, h
    inc l

jr_01e_4d1f:
    ld [bc], a
    call c, $9403
    ld h, h
    ld h, c

jr_01e_4d25:
    ld [hl], d
    ld l, e
    jr nz, @+$74

    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld bc, $7902
    ld b, a
    ld h, l
    ld [hl], d
    ld [hl], l
    ld h, h
    ld l, a
    ld bc, $6203
    ld h, d
    ld h, l
    ld bc, $c203
    inc bc
    sub c
    dec b
    ld b, [hl]
    ld [bc], a
    xor h
    ld b, l
    db $76
    ld l, c
    ld l, h
    ld bc, $054b
    ld a, e
    ld [bc], a
    add l
    inc bc
    jr nc, jr_01e_4d72
    nop

AcceptOurQuestText::
    db "<0c>",$22, "Accept ", TEXT_OUR, TEXT_QUEST, ",", TEXT_HERO, "!@"

    db $03
    ld d, b
    dec b
    or h
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld hl, $0201

jr_01e_4d6e:
    ld b, l
    ld h, c
    inc bc
    ld d, c

jr_01e_4d72:
    ld bc, $0464
    dec d
    ld [hl], d
    ld hl, $3103
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    inc bc
    dec l
    inc bc
    ld a, [bc]
    ld bc, $a003
    jr nz, @+$06

    ld e, d

jr_01e_4d88:
    dec b
    db $fc
    ld bc, $7566
    ld l, [hl]
    ld hl, $0420
    rra
    ld e, c
    inc b
    ld h, l
    inc b
    dec c
    dec b
    sub $74
    ld bc, $6168
    inc b
    db $e4
    ld b, $57
    inc b
    or e
    ld l, c
    ld [hl], h
    ld l, $01
    dec b
    ld d, a
    inc bc
    add hl, hl
    jr nz, jr_01e_4db0

    ld a, [$6d01]

jr_01e_4db0:
    ld h, c
    ld [hl], d
    ld l, e
    inc b
    inc d
    ld [bc], a
    ret nz

    ld l, $01
    ld c, c
    ld h, [hl]
    inc bc
    sbc [hl]
    ld [bc], a
    xor h
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, l
    ld bc, $5c04
    inc l
    jr nz, jr_01e_4e3d

    ld [bc], a
    cp b
    ld bc, $2404
    ld h, c
    inc bc
    dec a
    ld [bc], a
    sbc a
    ld h, c
    jr nz, @+$04

    db $db
    jr nz, jr_01e_4e3f

    dec b
    and d
    inc l
    ld bc, $000a
    inc bc
    and h
    ld b, c
    jr nz, @+$04

    db $db
    jr nz, jr_01e_4e4d

    ld h, c
    ld [hl], h
    inc bc
    sub c
    ld a, [bc]
    nop
    inc l
    jr nz, @+$4b

    ld [bc], a
    db $76
    ld d, l
    ld l, l
    ld l, l
    dec b
    ld d, $4e
    ld [bc], a
    jp $0121


    inc bc
    db $fd
    inc bc
    inc sp
    ld hl, $0300
    ld d, b
    dec b
    or h
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld hl, $0201
    ld b, l
    ld h, c
    inc bc
    ld d, c
    ld bc, $0464
    dec d
    ld [hl], d
    ld hl, $3103
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    inc bc
    dec l
    inc bc
    ld a, [bc]
    ld bc, $a003
    jr nz, jr_01e_4e28

    xor $68
    ld h, c

jr_01e_4e28:
    ld h, h
    ld bc, $fc05
    jr nz, jr_01e_4e94

    ld [hl], l
    ld l, [hl]
    ld hl, $0401
    rra
    inc bc
    ld [hl], h
    inc b
    jp hl


    ld bc, $0568
    and c
    inc bc

jr_01e_4e3d:
    adc c
    ld h, c

jr_01e_4e3f:
    jr nz, @+$08

    ld d, a
    ld bc, $6e6f
    dec b
    jp nc, $2021

    inc bc
    ld d, b
    ld l, c
    ld [hl], e

jr_01e_4e4d:
    ld bc, $2061
    inc bc
    ld a, [$0420]
    ld e, h
    ld bc, $9905
    dec b
    adc l
    ld l, $01
    ld c, c
    ld h, [hl]
    inc bc
    sbc [hl]
    ld [bc], a
    xor h
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, l
    ld bc, $5c04
    inc l
    jr nz, @+$76

    ld [bc], a
    cp b
    ld bc, $2404
    ld h, c
    inc bc
    dec a
    ld [bc], a
    sbc a
    ld h, c
    jr nz, @+$04

    db $db
    jr nz, jr_01e_4ee2

    dec b
    and d
    inc l
    ld bc, $000a
    inc bc
    and h
    ld c, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$05

    ld h, a
    inc l
    jr nz, jr_01e_4e93

    ld c, a
    ld bc, $6c61
    ld [hl], e

jr_01e_4e93:
    ld l, a

jr_01e_4e94:
    dec b
    ld a, [hl]
    ld [hl], h
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    inc l
    ld bc, $7304
    ld c, c
    jr nz, jr_01e_4f15

    ld h, l
    ld h, [hl]
    ld [hl], l
    ld [hl], e
    ld h, l
    inc bc
    or d
    inc b
    sbc l
    inc l
    jr nz, @+$70

    ld l, a
    jr nz, jr_01e_4eb7

    sub b
    ld bc, $9403
    ld h, l

jr_01e_4eb7:
    ld l, [hl]
    ld h, l
    ld l, l
    ld a, c
    ld hl, $0501
    ld b, c
    ld l, l
    ld a, c
    inc bc
    rlca
    ld [hl], h
    ld bc, $696c
    ld h, [hl]
    ld [hl], h
    ld [hl], e
    ld [bc], a
    jp nc, $000a

    ld bc, $e505
    ld h, d
    ld h, l
    ld [hl], e
    ld l, c
    ld h, h
    inc b
    cp b
    ld hl, $0120
    inc bc
    db $fd
    inc bc
    inc sp
    ld hl, $0c00

jr_01e_4ee2:
    ld [hl+], a
    dec b
    ld c, a
    ld [bc], a
    xor h
    ld b, a
    inc b
    add hl, bc
    ld bc, $6957
    ld [hl], h
    ld h, e
    ld l, b
    dec b
    push de
    dec b
    jp $0009


    ld [bc], a
    call c, $3a03
    ld l, c
    ld [hl], e
    inc b
    jr nc, jr_01e_4f08

    ld bc, $6f50
    inc b
    ccf
    add hl, bc
    nop
    dec b
    dec a

jr_01e_4f08:
    ld [hl], b
    ld l, $01
    ld b, d
    inc bc
    ld a, $6d
    ld h, l
    inc bc
    sbc h
    ld bc, $7c05

jr_01e_4f15:
    inc bc
    db $76
    ld l, $00
    inc c
    ld [hl+], a
    add hl, bc
    ld bc, $4503
    dec b
    ld a, a
    inc sp
    jr nc, @+$04

    dec e
    jr nz, jr_01e_4f2b

    sbc d
    ld l, $01
    ld [bc], a

jr_01e_4f2b:
    nop
    ld [$000d], sp
    inc c
    ld [hl+], a
    ld [bc], a
    ld b, b
    add hl, bc
    inc bc
    dec b
    jp $f603


    ld l, l
    ld h, c
    ld h, a
    ld l, c
    ld h, e
    jr nz, jr_01e_4faf

    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, l
    dec b
    rst $10
    ld l, $01
    ld d, a
    ld l, a
    ld [hl], d
    ld l, e
    ld [hl], e
    ld [bc], a
    rst JumpTable
    ld [bc], a
    jp nc, $7c05

    ld [hl], d
    inc bc
    rlca
    ld [hl], h
    ld [hl], e
    jr nz, @+$74

    ld [hl], l
    ld l, [hl]
    ld bc, $e105
    ld l, $00
    inc c
    ld [hl+], a
    ld c, c
    jr nz, jr_01e_4fce

    ld l, a
    ld [hl], b
    ld [bc], a
    ld [hl], h
    ld [hl], a
    inc bc
    or a
    ld l, h
    ld l, c
    db $76
    inc bc
    add l
    dec b
    sub e
    ld bc, $7469
    ld hl, $4820
    ld h, l
    ld h, l
    inc l
    dec b
    ldh [$65], a
    ld hl, $0c00
    ld [hl+], a
    ld c, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01e_4ff9

    ld l, a
    inc b
    ccf
    ld bc, $6570
    ld [hl], d
    jr nz, jr_01e_4ff5

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, l
    dec b
    ld [hl], d
    inc b
    or [hl]
    jr nz, jr_01e_5004

    ld h, l
    ld [hl], h
    inc bc
    dec hl
    dec b
    rlca
    inc bc
    jp nc, Jump_01e_7572

    ld l, [hl]
    inc b
    inc a
    ld l, $00
    inc c
    ld [hl+], a
    ld [bc], a

jr_01e_4faf:
    ld c, $05
    ld a, a
    inc sp
    jr nc, @+$04

    dec e
    jr nz, jr_01e_4fbc

    sbc d
    ld hl, $0201

jr_01e_4fbc:
    nop
    ld [$000e], sp
    inc c
    ld [hl+], a
    ld [bc], a
    or a
    inc bc
    ld c, d
    ld bc, $0e02
    add hl, bc
    nop
    ld l, $20
    ld c, d

jr_01e_4fce:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $9904
    inc bc
    inc c
    ld l, c
    ld [hl], h
    inc bc
    or d
    ld h, d
    dec b
    call c, $f703
    ld hl, $0c00
    ld [hl+], a
    inc bc
    add sp, $67
    dec b
    ld [c], a
    ld h, h
    ld a, c
    jr nz, jr_01e_5057

    ld l, c
    ld h, h
    ld hl, $0201
    ld b, h
    daa
    ld [hl], h
    ld [bc], a

jr_01e_4ff5:
    db $e3
    ld bc, $6e61

jr_01e_4ff9:
    ld a, c
    inc bc
    dec hl
    ld l, $01
    inc b
    add a
    ld hl, $0c00
    ld [hl+], a

jr_01e_5004:
    ld [bc], a
    add hl, hl
    ld [hl], e
    dec b
    and e
    inc b
    ld h, h
    ld [hl], h
    ld l, a
    inc b
    ld h, $02
    adc b
    ld l, [hl]
    ld l, a
    ld bc, $4104
    ld [hl], e
    ld l, $00
    inc c
    ld hl, $7453
    ld l, a
    ld [hl], b
    ld hl, $5420
    ld l, b
    ld l, c
    ld h, l
    ld h, [hl]
    ld [bc], a
    and $04
    dec e
    inc bc
    ld b, b
    ld h, d
    ld a, c
    dec b
    and b
    ld hl, $0c00
    ld [hl+], a
    inc bc
    scf
    ld h, e
    ld l, b
    ld [hl], l
    dec b
    ld a, a
    dec [hl]
    inc bc
    inc c
    ld sp, $0230
    dec e
    ld bc, $0002
    ld [$0011], sp
    inc c
    ld [hl+], a
    inc bc
    ld [de], a
    ld h, e
    dec b
    ld l, h
    ld h, h
    ld hl, $0c00
    ld [hl+], a
    inc bc
    ld a, [de]
    ld l, [hl]

jr_01e_5057:
    ld h, l
    ld [hl], a
    jr nz, jr_01e_50cf

    ld a, c
    ld [hl], b
    inc bc
    ld l, d
    inc bc
    scf
    dec b
    add sp, $72
    ld [hl], l
    ld l, [hl]
    ld [hl], e
    ld [bc], a
    sub d
    ld bc, $a103
    ld [bc], a
    push de
    ld [hl], e
    ld h, l
    ld [hl], h
    ld bc, $7469
    ld l, $00
    inc bc
    ret nz

    dec b
    sla c
    ld bc, $0342
    ld a, $6d
    ld h, l
    inc b
    or b
    ld bc, $7469
    ld h, l
    ld l, l
    ld [bc], a
    push de
    dec b
    xor a
    ld bc, $7905
    ld [hl], b
    ld [hl], l
    ld [hl], d
    ld h, e
    ld l, b
    ld h, c
    ld [hl], e
    ld h, l
    ld l, $00
    inc bc
    xor [hl]
    ld [hl], d
    ld [hl], d
    ld a, c
    dec b
    rlc e
    and h
    ld [bc], a
    ld b, h
    inc b
    ld l, [hl]
    dec b
    rst $10
    ld h, l
    ld [hl], d
    ld bc, $f402
    ld [bc], a
    sub b
    dec b
    cp d
    add hl, bc
    ld bc, $9b02
    inc b
    jr z, jr_01e_50f9

    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld h, e
    ld [hl], l
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    ccf
    ld bc, $0257
    db $dd
    inc b
    sbc a
    ld bc, $0274
    db $f4
    ld l, c
    inc b

jr_01e_50cf:
    db $e4
    ld bc, $ab02
    ld hl, $4801
    ld h, l
    ld l, b
    dec b
    ldh [rBCPS], a
    dec b
    ldh [rBCPS], a
    ld hl, $0900
    ld bc, $2033
    inc bc
    sub $73
    inc bc
    ld [c], a
    jr nz, jr_01e_511c

    ld [bc], a
    dec e
    ld bc, $0002
    ld [$000f], sp
    add hl, bc
    ld bc, $d604
    ld [bc], a
    reti


jr_01e_50f9:
    inc bc
    ld [c], a
    jr nz, jr_01e_5130

    ld [bc], a
    dec e
    ld bc, $0002
    ld [$000f], sp
    add hl, bc
    ld bc, $3031
    jr nz, @+$06

    ld b, a
    inc bc
    ld [c], a
    jr nz, jr_01e_5142

    ld [bc], a
    dec e
    ld bc, $0002
    ld [$000f], sp
    ld e, c
    ld [bc], a
    ld c, c
    dec b

jr_01e_511c:
    dec b
    jr nz, jr_01e_516e

    ld l, [hl]
    ld h, l
    ld bc, $4205
    ld [bc], a
    ld a, d
    inc b
    cp d
    ld l, $00
    ld [bc], a
    ld a, $02
    sub [hl]
    inc bc
    inc [hl]

jr_01e_5130:
    ld [bc], a
    adc a
    ld l, $00
    inc b
    rra
    ld [bc], a
    sub l
    inc bc
    db $ed
    inc bc
    ld h, c
    inc bc
    add hl, sp
    ld [hl], e
    ld hl, $5401

jr_01e_5142:
    ld l, b
    ld l, c
    ld h, l
    ld h, [hl]
    ld hl, $4720
    ld l, c
    db $76
    ld h, l
    ld [bc], a
    sbc c
    inc b
    sbc a
    ld [bc], a
    call nz, $0504
    ld hl, $0300
    ret nz

    dec b
    sra [hl]
    ld bc, $0259
    ld e, d
    inc bc
    dec c
    ld bc, $796d
    dec b
    dec a
    ld [hl], b
    ld l, $00
    add hl, bc
    ld bc, $6942
    ld h, a

jr_01e_516e:
    jr nz, jr_01e_5175

    ld c, $20
    ld [bc], a
    ld l, [hl]
    dec b

jr_01e_5175:
    ld d, [hl]
    jr nz, jr_01e_51ad

    jr nc, @+$04

    dec e
    ld bc, $0002
    ld [$000f], sp
    add hl, bc
    ld bc, $2031
    inc bc
    ret


    inc bc
    ld [c], a
    jr nz, jr_01e_51c0

    jr nc, @+$04

    dec e
    ld bc, $0002
    ld [$000f], sp
    add hl, bc
    ld bc, $0254
    ld l, b
    jr nz, jr_01e_51e8

    ld h, c
    ld [hl], b
    inc bc
    ld [c], a
    jr nz, @+$34

    jr nc, @+$04

    dec e
    ld bc, $0002
    ld [$000f], sp
    inc bc
    xor [hl]
    ld [hl], d

jr_01e_51ad:
    ld [hl], d
    ld a, c
    dec b
    rlc e
    and e
    ld c, a
    ld l, b
    ld hl, $023f
    db $ed
    dec b
    ld a, b
    ld [bc], a
    sbc e
    inc bc
    db $e4
    ld [bc], a

jr_01e_51c0:
    ld b, l
    ld h, c
    dec b
    and b
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ccf
    ld bc, $6150
    ld [hl], d
    ld h, h
    ld l, a
    ld l, [hl]
    dec b
    and b
    ld l, $01
    inc bc
    add sp, $6d
    ld h, c
    ld a, c
    jr nz, jr_01e_51e0

    ld e, h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l

jr_01e_51e0:
    ld bc, $5902
    ld [hl], d
    dec b
    call c, $002e

jr_01e_51e8:
    ld d, a
    ld h, l
    jr nz, jr_01e_525e

    ld h, c
    ld l, [hl]
    inc b
    inc a
    inc bc
    pop de
    inc b
    and $73
    inc b
    ld c, [hl]
    ld [hl], a
    ld h, l
    inc b
    and e
    dec b
    sbc c
    ld h, c
    dec b
    rra
    jr nz, jr_01e_526e

    ld l, c
    ld l, [hl]
    ld h, l
    ld bc, $7a05
    ld h, d
    inc b
    scf
    inc b
    dec b
    ld l, $01
    rlca
    rrca
    ld c, b
    dec b
    and e
    ld l, a
    ld l, $01
    ld c, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01e_521e

    ld a, [c]
    ld [hl], h

jr_01e_521e:
    ld [hl], a
    ld l, a

Jump_01e_5220:
    ld bc, $0105
    ld [hl], h
    ld [hl], e
    jr nz, @+$79

    dec b
    pop de
    ld [bc], a
    sub [hl]
    ld [hl], h
    ld [bc], a
    ld l, b
    ld l, $04
    ld [hl], c
    daa
    ld l, h
    ld l, h
    ld bc, $0f05
    ld h, c
    jr nz, @+$06

    ld [c], a
    dec b
    scf
    ld bc, $6669
    ld [bc], a
    jr nc, jr_01e_5247

    add hl, de
    ld bc, $9c05

jr_01e_5247:
    ld [bc], a
    call nz, $0520
    ld bc, $0174
    inc bc
    reti


    inc bc
    ld a, [bc]
    ld [hl], e
    inc bc
    and $61
    jr nz, jr_01e_52ca

    ld l, a
    ld [hl], a
    ld hl, $4501
    ld h, c

jr_01e_525e:
    ld h, e
    ld l, b
    jr nz, jr_01e_52d6

    ld [hl], d
    ld a, c
    jr nz, @+$65

    ld l, a
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld bc, $0231
    dec e

jr_01e_526e:
    ld l, $01
    ld [bc], a
    nop
    nop
    ld c, a
    ld c, e
    ld hl, $4220
    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld hl, $4900
    inc bc
    add a
    inc bc
    ld c, e
    dec b
    ld b, e
    ld [bc], a
    ld [hl], l
    ld l, $00
    inc bc
    sub d
    ld c, a
    ld c, e
    ld hl, $4420
    inc bc
    ret c

    dec b
    xor b
    ld l, [hl]
    ld [bc], a
    jp $202e


    ld c, c
    ld h, [hl]
    ld [bc], a
    jp nz, Jump_01e_6f64

    dec b
    jp nc, $7502

    inc l
    ld bc, $7c05
    daa
    ld l, h
    ld l, h
    inc bc
    ld b, b
    ld h, c
    ld bc, $db02
    dec b
    scf
    ld hl, $0201
    nop
    nop
    ld b, [hl]
    ld h, l
    ld h, l
    ld l, h
    inc bc
    and [hl]
    inc bc
    db $d3
    ccf
    ld bc, $0550
    db $e3
    ld [bc], a
    add b
    dec b
    ld bc, $2174

jr_01e_52ca:
    nop
    ld c, a
    ld l, b
    ccf
    jr nz, jr_01e_52d5

    ld b, [hl]
    inc bc
    and l
    rlca
    rra

jr_01e_52d5:
    ld c, d

jr_01e_52d6:
    ld h, c
    ld h, e
    ld l, e
    ld [hl], b
    ld l, a
    ld [hl], h
    ld hl, $0301
    sub d
    ld [bc], a
    dec hl
    ld a, c
    inc b
    ld h, l
    inc b
    call c, Call_01e_6863
    inc b
    dec d
    ld hl, $0201
    dec sp
    ld h, a
    ld h, l
    ld [hl], h
    ld [bc], a
    adc d
    inc bc
    push de
    inc l
    inc bc
    ld c, e
    dec b
    rrca
    ld h, c
    ld l, [hl]
    jr nz, @+$63

    ld [hl], a
    ld h, l
    inc b
    and c
    ld bc, $6967
    ld h, [hl]
    ld [hl], h
    ld hl, $0201
    nop
    nop
    inc bc
    sub d
    rlca
    rra
    ld d, h
    ld l, a
    ld l, a
    dec b
    jp hl


    ld l, $20
    ld d, a
    dec b
    pop de
    ld bc, $d203
    ld [hl], h
    ld [hl], d
    ld a, c
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $0002
    nop
    dec b
    ld e, d
    inc bc
    ld a, [bc]
    ld [bc], a
    add c
    dec b
    sbc a
    dec b
    ld a, [bc]
    ld h, l
    ld [hl], d
    ld l, $00
    ld d, e
    ld l, c
    ld [hl], d
    ld hl, $5920
    ld [bc], a
    ld c, c
    dec b
    ld h, c
    ld h, e
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, [hl]
    jr nz, @+$7b

    ld h, l
    ld [hl], h
    ld hl, $0301
    add hl, bc
    ld [hl], a
    ld h, c
    ld [hl], d
    ld l, [hl]
    ld [bc], a
    jp nz, $b504

    dec b
    jr c, jr_01e_5387

    nop
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01e_53d6

    ld [hl], b
    ld hl, $0900
    ld bc, $9a02
    inc bc
    ld [c], a
    jr nz, @+$33

    dec [hl]
    ld [bc], a
    dec e
    ld bc, $0002
    ld [$000f], sp
    inc bc
    ld a, [de]
    ld [hl], e
    inc b
    ld h, d
    ld h, l
    ld l, h
    ld bc, $7004
    ld [hl], e
    jr nz, @+$6e

    ld l, a
    ld [hl], h
    inc bc
    dec sp
    ld [bc], a

jr_01e_5387:
    ld b, c
    ld l, $03
    ld sp, $3033
    ld [bc], a
    dec e
    ld l, $01
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld c, $03
    ld [c], a
    inc c
    ld [$8f02], sp
    ld bc, $0002
    nop
    ld d, h
    ld [bc], a
    ld l, b
    jr nz, jr_01e_53f2

    ld h, c
    ld [hl], b
    ld bc, $7449
    jr nz, jr_01e_53af

    cp $20
    dec b

jr_01e_53af:
    or [hl]
    dec b
    ld a, l
    ld [bc], a
    ld e, c
    ld l, h
    inc bc
    ld b, a
    ld bc, $8304
    inc bc
    and l
    ld [hl-], a
    jr nc, @+$04

    dec e
    ld bc, $0002
    nop
    inc bc
    ld [hl], h
    ld h, a
    ld l, c
    ld h, [hl]
    ld [hl], h
    inc bc
    add hl, hl
    ld bc, $2a02
    ld [bc], a
    adc h
    inc b
    add sp, $01
    dec b
    ld [hl], l

jr_01e_53d6:
    inc bc
    db $e3
    ld [bc], a
    ld a, [hl+]
    inc b
    ld h, h
    ld l, c
    ld [hl], e
    inc bc
    add hl, hl
    jr nz, @+$04

    xor e
    ld l, $00
    inc bc
    ret nz

    dec b
    rlc d
    db $76
    ld [bc], a
    ld e, c
    ld sp, $3030
    jr nz, jr_01e_53f6

jr_01e_53f2:
    ld b, c
    ld bc, $2203

jr_01e_53f6:
    dec b
    call nz, $012e
    inc b
    dec a
    ld h, c
    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld h, h
    ld [bc], a
    jp nz, $4204

    jr nz, @+$77

    ld [hl], e
    dec b
    ld c, b
    inc b
    and e
    inc b
    ld b, d
    jr nz, jr_01e_5415

    or l
    inc b
    sub e
    inc b

jr_01e_5415:
    rrca
    inc bc
    ld [hl+], a
    ld hl, $4501
    ld [bc], a
    xor $03
    push hl
    ld sp, $0230
    dec e
    inc bc
    and h
    ld [bc], a
    sub l
    ld l, h
    ld h, l
    ld [hl], h
    jr nz, jr_01e_5430

    ld h, l
    ld [bc], a
    xor e
    inc b

jr_01e_5430:
    inc a
    ld hl, $0400
    xor $49
    ld [hl], e
    ld [bc], a
    add b
    inc b
    rst $38
    ld bc, $2203
    ld h, h
    ccf
    ld bc, $794d
    jr nz, jr_01e_5449

    rst $38
    dec b
    add b
    inc bc

jr_01e_5449:
    ld [hl+], a
    ld h, h
    ld hl, $4601
    ld [hl], d
    ld l, a
    ld l, l
    inc b
    dec b
    jr nz, jr_01e_54c4

    ld l, [hl]
    inc l
    ld bc, $c604
    inc bc
    ld [hl+], a
    ld hl, $0900
    ld bc, $2031
    inc bc
    ret


    inc bc
    ld [c], a
    jr nz, @+$22

    ld sp, $0230
    dec e
    ld bc, $0002
    ld [$000f], sp
    add hl, bc
    ld bc, $2203
    ld [bc], a
    ret nc

    inc bc
    ld [c], a
    jr nz, jr_01e_54ad

    jr nc, @+$04

    dec e
    ld bc, $0002
    ld [$000f], sp
    ld [bc], a
    ld de, $a303
    ld c, b
    dec b
    ret nc

    ld [bc], a
    xor h
    ld l, d
    inc bc
    ld a, l
    ld bc, $4702
    dec b
    dec b
    nop
    add hl, bc
    ld bc, $044d
    ld d, [hl]
    ld [bc], a
    ret nc

    inc b
    jr z, jr_01e_54a3

    sbc h
    ld [bc], a

jr_01e_54a3:
    ld a, [hl+]
    inc b
    inc l
    ld l, c
    ld [hl], e
    inc bc
    push hl
    ld h, c
    jr nz, jr_01e_54af

jr_01e_54ad:
    xor e
    inc bc

jr_01e_54af:
    and h
    ld sp, $0230
    dec e
    ld bc, $0002
    ld [$000f], sp
    ld [bc], a
    ld h, b
    ld h, d
    inc b
    add l
    ld bc, $7469
    inc b
    xor a

jr_01e_54c4:
    inc l
    dec b
    db $d3
    inc bc
    ld a, [c]
    ld h, e
    ld l, h
    ld l, a
    ld [hl], e
    inc bc
    and [hl]
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], b
    ld l, $00
    ld d, [hl]
    ld l, c
    ld h, l
    ld [hl], a
    dec b
    jp nc, $8202

    ld c, l
    ld h, c
    ld [hl], b
    ld [bc], a
    ret c

    ld l, $01
    ld d, e
    ld [hl], b
    ld h, c
    ld [hl], d
    ld l, e
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01e_555b

    ld h, c
    ld [hl], d
    ld l, e
    ld bc, $3503
    jr nz, jr_01e_556a

    ld [bc], a
    ld l, b
    ld l, $00
    inc bc
    ld [de], a
    ld l, [hl]
    ld l, a
    ld [hl], h
    inc b
    add hl, de
    ld l, $01
    ld b, e
    ld [bc], a

Jump_01e_5505:
    jr z, jr_01e_550c

    add hl, sp
    ld [hl], d
    ld l, $00
    add hl, bc

jr_01e_550c:
    ld bc, $7249
    ld l, a
    ld l, [hl]
    ld [bc], a
    reti


    inc bc
    ld [c], a
    jr nz, jr_01e_554c

    ld [bc], a
    dec e
    ld bc, $0002
    ld [$000f], sp
    add hl, bc
    ld bc, $694d
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    ld [bc], a
    reti


    inc bc
    ld [c], a
    jr nz, jr_01e_5565

    ld [bc], a
    dec e
    ld bc, $0002
    ld [$000f], sp
    ld d, h
    ld [bc], a
    jr jr_01e_553c

    ld b, c
    ld h, c
    dec b

jr_01e_553c:
    and b
    ld [hl], e
    ld [hl], e
    ld hl, $0320
    ld a, [hl]
    ld bc, $f705
    jr nz, jr_01e_55bb

    ld [hl], h
    ld [hl], d
    ld h, c
    inc b

jr_01e_554c:
    dec h
    ld bc, $3e05
    ld [bc], a
    or [hl]
    inc bc
    and l
    ld d, a
    ld [bc], a
    db $dd
    ld h, a
    ld l, a
    inc bc
    and [hl]

jr_01e_555b:
    ld l, a
    ld l, [hl]
    ccf
    nop
    inc bc
    xor h
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_55d4

jr_01e_5565:
    ld h, h
    ld h, h
    ld bc, $6805

jr_01e_556a:
    inc b
    inc d
    ld [bc], a
    sub e
    ld bc, $6167
    ld [hl], d
    ld h, d
    ld [bc], a
    db $e3
    inc bc
    and [hl]
    ld h, c
    ld bc, $5202
    inc bc
    and h
    ld d, e
    ld l, b
    ld h, l
    inc bc
    ld l, h
    inc b
    ld sp, $0501
    ld a, d
    inc b
    sub [hl]
    inc bc
    and l
    ld c, c
    ld [bc], a
    ldh [$2e], a
    nop
    ld c, c
    inc bc
    rlca
    inc bc
    dec l
    ld bc, $6e61
    ld l, c
    ld l, l
    ld h, c
    ld l, h
    ld [hl], e
    ld [bc], a
    ld c, b
    ld [hl], a
    ld l, c
    ld l, h
    ld h, h
    inc bc
    ld l, e
    ld [hl], l
    ld [hl], e
    dec b
    ld a, l
    dec b
    ld a, c
    ld [bc], a
    rst $20
    ld l, $01
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    ld [bc], a
    jr nc, jr_01e_55b8

    dec b

jr_01e_55b8:
    ld [de], a
    jr nz, jr_01e_55bd

jr_01e_55bb:
    pop bc
    ld [hl], e

jr_01e_55bd:
    ld hl, $4d00
    ld h, c
    ld a, c
    dec b
    sbc a
    ld [hl], e
    ld l, b
    inc b
    and d
    ld h, c
    ld bc, $0370
    inc h
    ld [bc], a
    db $d3
    ld h, c
    jr nz, jr_01e_55d7

    sbc $65

jr_01e_55d4:
    ld l, c
    ld h, a
    ld l, [hl]

jr_01e_55d7:
    jr nz, jr_01e_55dd

    ld [$012e], sp
    ld c, c

jr_01e_55dd:
    jr nz, jr_01e_55e3

    jp Jump_01e_6568


    ld [hl], d

jr_01e_55e3:
    inc bc
    sbc [hl]
    ld bc, $da04
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, h
    ld bc, $4602
    ld [bc], a
    xor d
    ld [hl], e
    ld l, b
    ld h, l
    jr nz, jr_01e_5600

    jp hl


    inc b
    or b
    ld [hl], a

jr_01e_5600:
    ld h, c
    ld a, c
    ld l, $00
    ld d, h
    ld [bc], a
    db $f4
    inc b
    inc h
    ld h, l
    inc b
    dec h
    ld bc, $3903
    ld [hl], e
    jr nz, @+$05

    ld e, d
    ld bc, $3502
    ld bc, $3503
    jr nz, jr_01e_561f

    ld d, l
    ld bc, $3a03

jr_01e_561f:
    inc b
    ld [$012e], sp
    inc bc
    ld a, [hl+]
    inc bc
    nop
    ld [hl], e
    dec b
    rlca
    dec b
    sbc h
    ld a, c
    daa
    ld [hl], d
    ld h, l
    ld [bc], a
    call z, $7401
    ld l, a
    ld h, a
    ld h, l
    inc b
    daa
    ccf
    nop
    ld c, b
    ld l, a
    ld [hl], a
    inc bc
    db $db
    ld [bc], a
    add c
    ld [hl], h
    ld [bc], a
    jr jr_01e_5666

    ld [hl], e
    ld [hl], h
    ld h, c
    ld a, c
    ld bc, $af02
    ccf
    jr nz, jr_01e_5699

    ld [hl], h
    ld bc, $1205
    ld [hl], e
    dec b
    and b
    inc b
    db $ed
    ld h, h
    ld h, l
    ld [hl], b
    dec b
    nop
    ld h, l
    ld h, h
    ld l, $00
    ld c, c
    jr nz, jr_01e_5669

    sub d

jr_01e_5666:
    dec b
    ld a, [hl]
    ld l, h

jr_01e_5669:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $5b03
    inc l
    inc bc
    rra
    ld bc, $7905
    add hl, bc
    inc bc
    ld d, b
    inc bc
    inc h
    ld bc, $2b05
    dec b
    ret c

    nop
    ld [bc], a
    ld bc, $0501
    or h
    inc b
    sub h
    ld l, [hl]
    inc bc
    ldh [rSB], a
    ld h, d
    ld a, c
    inc bc
    dec l
    jr nz, jr_01e_56f5

    inc b
    ld sp, $a503
    ld d, a
    ld [bc], a

jr_01e_5699:
    db $dd
    ld h, a
    ld l, a
    inc bc
    and [hl]
    ld [hl], h
    ld l, a
    ld bc, $0003
    inc b
    dec b
    ccf
    nop
    inc bc
    xor [hl]
    jr nz, jr_01e_5712

    ld l, h
    ld h, c
    ld h, h
    ld [bc], a
    or h
    db $76
    dec b
    adc h
    dec b
    rst JumpTable
    inc bc
    or l
    ld bc, $7905
    dec b
    sub h
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    ld bc, $6877
    ld l, a
    jr nz, jr_01e_56ca

    cpl
    ld h, h
    ld [bc], a

jr_01e_56ca:
    or h
    ld [bc], a
    ld [hl], a
    ld [bc], a
    sub d
    inc l
    ld bc, $e903
    ld [hl], a
    ld l, b
    ld a, c
    ccf
    nop
    ld [bc], a
    inc sp
    ld l, a
    ld h, [hl]
    ld bc, $9403
    add hl, bc
    inc bc
    inc bc
    ld a, b
    dec b
    ld a, a
    ld l, [hl]
    dec b
    call c, $ac02
    ld d, a
    ld h, l
    inc b
    xor c
    ld l, [hl]
    ld bc, $6f43
    ld h, c
    ld [hl], e
    ld [hl], h

jr_01e_56f5:
    ccf
    ld bc, $b103
    add hl, bc
    ld bc, $6548
    ld [hl], d
    ld l, a
    dec b
    sbc d
    ld d, e
    inc bc
    ld b, $01
    dec b
    push hl
    dec b
    or a
    inc bc
    or b
    ld h, d
    ld h, l
    ld bc, $3503
    ld [bc], a
    ld a, h

jr_01e_5712:
    inc l
    ld bc, $7304
    ld l, [hl]
    ld l, a
    inc b
    ld h, $03
    ld d, d
    inc b
    ld l, $02
    ld a, b
    ld l, c
    ld [hl], h
    ld l, $00
    ld d, h
    ld [bc], a
    ld l, e
    ld h, c
    dec b
    push de
    ld h, a
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $6f72
    ld l, a
    ld [hl], h
    add hl, bc
    nop
    inc bc
    ld bc, $d103
    inc b
    sub [hl]
    ld l, $20
    ld c, c
    jr nz, jr_01e_57b8

    ld l, a
    inc b
    cp $01
    inc b
    add sp, $03
    sbc [hl]
    jr nz, jr_01e_57b1

    ld [hl], d
    ld l, a
    ld l, l
    ld l, $00
    inc bc
    or c
    dec b
    rst $08
    ld h, c
    ld [bc], a
    ld b, e
    inc b
    ld sp, $2903
    ld [hl], a
    ld h, c
    ld [hl], e
    ld l, b
    inc bc
    and $67
    dec b
    ccf
    dec b
    sub $27
    ld h, h
    jr nz, jr_01e_57d1

    ld l, a
    ld bc, $0570
    db $db
    inc bc
    sbc e
    ld l, c
    ld h, [hl]
    jr nz, @+$4b

    ld bc, $fa05
    inc b
    dec l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    dec b
    ld d, l
    nop
    inc b
    push af
    inc b
    ld b, $03
    rst $00
    ld [hl], e
    ld h, e
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01e_5793

    ld b, d
    inc b
    inc hl

jr_01e_5793:
    ld [hl], h
    ld [bc], a
    jr jr_01e_579a

    push hl
    dec b
    ld [hl], l

jr_01e_579a:
    inc bc
    db $e3
    ld l, [hl]
    ld l, c
    ld h, e
    inc b
    xor b
    nop
    ld c, c
    jr nz, jr_01e_5817

    ld h, l
    dec b
    ld b, b
    ld l, h
    ld a, c
    jr nz, @+$75

    ld h, c
    ld [hl], a
    dec b
    cp d
    inc b

jr_01e_57b1:
    ld c, $20
    dec b
    ld l, b
    ld bc, $2749

jr_01e_57b8:
    ld h, h
    jr nz, @+$05

    sub b
    inc b
    ld b, $6e
    ld bc, $1003
    ld l, $20
    ld c, c
    ld [hl], e
    dec b
    ld c, e
    ld bc, $7266
    ld l, a
    ld l, l
    ld [bc], a
    sub a
    inc b
    sub [hl]

jr_01e_57d1:
    ccf
    nop
    ld d, l
    ld [hl], b
    inc bc
    ld bc, $2903
    ld bc, $2d05
    inc bc
    db $e3
    ld [bc], a
    sub e
    ld bc, $1803
    ld [bc], a
    sbc b
    dec b
    inc bc
    ld [hl], e
    ld bc, $aa05
    ld [hl], a
    ld l, b
    ld l, a
    inc bc
    inc bc
    ld bc, $f405
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    inc bc
    and h
    inc b
    cpl
    ld l, c
    ld [hl], h
    inc bc
    ld l, h
    inc bc
    sub b
    ld bc, $0274
    db $f4
    inc bc
    db $10
    ld l, $00
    ld b, d
    ld h, l
    dec b
    sbc $65
    inc b
    and l
    ld l, e
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld bc, $7469

jr_01e_5817:
    inc l
    jr nz, @+$06

    ld a, $04
    ld l, l
    ld bc, $7267
    ld h, l
    ld [hl], a
    dec b
    db $d3
    jr nz, jr_01e_5888

    ld l, c
    ld h, a
    inc bc
    and l
    ld [bc], a
    call $9302
    ld l, $00
    ld [bc], a
    dec c
    dec b
    rst JumpTable
    ld [bc], a
    sbc a
    dec b
    ld a, h
    inc bc
    and h
    ld b, l
    ld [bc], a
    xor $02
    add c
    ld h, d
    ld h, l
    inc b
    ld c, d
    inc b
    dec b
    ld l, $00
    ld c, c
    ld [hl], h
    inc bc
    ld l, h
    dec b
    add d
    inc b
    or l
    ld bc, $af05
    ld [bc], a
    adc h
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $0d02
    jr nz, jr_01e_585f

    or b
    inc l

jr_01e_585f:
    ld bc, $c604
    ld [hl], h
    ld l, a
    ld l, a
    jr nz, jr_01e_58d3

    ld h, c
    ld [hl], h
    inc b
    xor b
    nop
    ld d, h
    ld [bc], a
    jr @+$06

    ld b, $6d
    ld bc, $7905
    ld l, b
    dec b
    ret nc

    ld [bc], a
    ld e, b
    dec b
    ld a, l
    dec b
    ld a, c
    dec b
    sub h
    ld l, $03
    ld sp, $6e61
    inc bc
    rrca
    dec b

jr_01e_5888:
    scf
    ld bc, $a502
    jr nz, jr_01e_5892

    sub [hl]
    dec b
    add b
    inc b

jr_01e_5892:
    ld l, l
    ld hl, $4f00
    ld [hl], l
    ld [hl], d
    jr nz, @+$06

    ld l, l
    inc l
    ld bc, $9403
    ld [bc], a
    add hl, sp
    inc l
    ld bc, $7473
    dec b
    and c
    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, h
    ld bc, $9403
    ld h, a
    dec b
    and d
    ld [bc], a
    ld b, e
    inc b
    ld sp, $e303
    inc b
    sub [hl]
    inc bc
    and h
    ld [bc], a
    db $ec
    dec b
    or a
    jr nz, jr_01e_5926

    inc bc
    dec a
    ld bc, $6903
    ld h, c
    jr nz, jr_01e_58d2

    inc l
    ld bc, $6203
    ld [bc], a

jr_01e_58d2:
    ld [hl], e

jr_01e_58d3:
    ld bc, $7073
    ld h, l
    ld h, c
    ld l, e
    ld [bc], a
    adc b
    ld l, b
    ld l, c
    ld l, l
    ld l, $01
    ld [bc], a
    rst $28
    ld l, c
    ld h, [hl]
    inc bc
    sbc [hl]
    ld bc, $7274
    ld [hl], l
    inc b
    xor b
    nop
    inc bc
    or c
    inc bc
    ld [hl], l
    inc b
    ld b, $6d
    ld [hl], e
    ld bc, $e705
    db $76
    ld h, c
    ld [hl], e
    ld [hl], h
    inc bc
    and l
    dec b
    ld h, l
    inc b
    inc d
    inc bc
    ld c, a
    ld [bc], a
    or d
    inc l
    ld [bc], a
    or h
    ld [bc], a
    ld [hl], a
    jr nz, jr_01e_590f

    push af
    inc b

jr_01e_590f:
    inc hl
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    jr nz, @+$63

    ld l, l
    ld [hl], l
    ld h, e
    ld l, e
    ld l, $20
    ld c, c
    ld bc, $6f77
    inc b
    cp $20
    ld l, c
    ld h, [hl]
    inc bc
    sbc [hl]

jr_01e_5926:
    ld bc, $9403
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    inc bc
    and $03
    rrca
    jr nz, jr_01e_5937

    ld [$0573], sp
    ld d, l

jr_01e_5937:
    nop
    ld d, h
    ld h, c
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01e_5943

    ld l, b
    inc bc
    db $e3
    ld h, c

jr_01e_5943:
    ld bc, $7563
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, @+$71

    ld h, d
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $7003
    ld l, h
    ld a, c
    jr nz, @+$05

    dec [hl]
    ld bc, $6564
    ld h, l
    ld [hl], b
    jr nz, jr_01e_59d8

    ld l, c
    inc b
    or d
    ld bc, $9403
    add hl, bc
    inc bc
    inc b
    ret c

    inc bc
    or $09
    inc bc
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    add hl, bc
    nop
    ld l, $00
    inc bc
    or c
    ld h, e
    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    ld [hl], e
    inc b
    ld [hl], d
    ld l, [hl]
    inc b
    adc a
    inc bc
    ld l, e
    ld l, l
    ld l, a
    db $76
    inc bc
    rst $00
    dec b
    sbc c
    ld [bc], a
    sub e
    dec b
    ld h, a
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_01e_599d

    ld b, l
    ld [hl], e
    jr nz, jr_01e_5a09

    inc b

jr_01e_599d:
    sub a
    ld h, d
    ld h, c
    ld h, h
    jr nz, @+$06

    sub d
    dec b
    ld c, d
    ld l, $2e
    nop
    inc b
    db $db
    ld bc, $1c02
    dec b
    jp hl


    ld bc, $0477
    xor e
    jr nz, jr_01e_59b9

    nop
    dec b
    ld d, l

jr_01e_59b9:
    nop
    dec b
    call z, Call_01e_7420
    ld [hl], d
    inc bc
    ret c

    ld [hl], e
    ld bc, $696c
    ld l, e
    ld h, l
    inc bc
    sbc b
    inc l
    ld [bc], a
    jp nz, Jump_01e_7274

    ld [hl], l
    ld l, h
    ld a, c
    jr nz, jr_01e_59d8

    db $f4
    ld h, l
    ld h, e
    ld l, c
    dec b

jr_01e_59d8:
    and d
    ld bc, $036e
    ccf
    daa
    ld [hl], e
    dec b
    scf
    ld [hl], e
    ld l, $00
    ld c, c
    ld [hl], h
    jr nz, jr_01e_59ed

    rst $30
    jr nz, jr_01e_59ee

    ld b, d
    ld l, b

jr_01e_59ed:
    ld l, a

jr_01e_59ee:
    ld [hl], h
    ld bc, $6f74
    inc b
    jr nz, @+$06

    inc d
    ld h, c
    ld bc, $6c66
    ld h, c
    ld [hl], e
    ld l, b
    inc b
    jr jr_01e_5a01

    ld [bc], a

jr_01e_5a01:
    ld [hl], a
    inc bc
    ld b, c
    dec b
    sbc c
    ld [hl], l
    ld [hl], h
    ld [hl], h

jr_01e_5a09:
    ld h, l
    ld [hl], d
    inc b
    ld h, b
    ld hl, $0401
    sbc [hl]
    ld [bc], a
    push bc
    ld l, c
    ld [hl], h
    jr nz, jr_01e_5a7b

    ld l, a
    ld bc, $6f74
    ld [bc], a
    sub a
    ld a, c
    dec b
    call c, $8005
    ld l, b
    ld h, c
    ld [hl], d
    db $76
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $2e
    ccf
    nop
    ld [bc], a
    inc sp
    ld l, a
    ld h, [hl]
    ld bc, $3a03
    inc b
    ld [$8005], sp
    ld l, l
    ld [bc], a
    cp c
    ld [bc], a
    inc de
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    and a
    jr nz, jr_01e_5a9d

    dec b
    and e
    inc l
    ld bc, $8205
    ld h, a
    ld [hl], d
    dec b
    and c
    ld [hl], b
    ld h, c
    dec b
    add b
    ld [hl], a
    ld h, l
    ld h, h
    ld h, h
    inc bc
    and [hl]
    inc bc
    ld a, $69
    ld [hl], e
    ld bc, $3403
    inc bc
    inc c
    ld l, l
    ld h, l
    ld l, $00
    ld d, a
    dec b
    and e
    dec b
    ld d, $49
    ld h, [hl]
    ld [bc], a
    jp nz, $ea02

    dec b
    add hl, bc
    ld [bc], a
    ld l, d
    ld [bc], a
    pop af
    inc l
    jr nz, jr_01e_5a7f

jr_01e_5a7b:
    cp l
    ld bc, $1803

jr_01e_5a7f:
    ld [hl], e
    jr nz, jr_01e_5af9

    inc bc
    or a
    inc b
    cp d
    inc bc
    add hl, de
    jr nz, jr_01e_5ad3

    ld h, [hl]
    ld [bc], a
    jp nz, $1e03

    inc bc
    adc h
    ld bc, $4205
    inc l
    jr nz, jr_01e_5afe

    ld l, a
    inc b
    ld b, $01
    inc bc
    sub h

jr_01e_5a9d:
    ld l, d
    inc bc
    ld a, l
    ld l, $00
    ld d, h
    ld l, a
    ld [bc], a
    xor h
    ld l, [hl]
    inc b
    adc a
    ld bc, $0469
    db $e4
    inc b
    ret


    ld h, d
    inc b
    ld sp, $0401
    ld e, $6e
    inc b
    xor l
    inc bc
    rrca
    ld l, $01
    ld c, b
    ld h, c
    db $76
    ld [bc], a
    ld [hl], h
    dec b
    cp b
    ld bc, $7469
    ccf
    nop
    ld [bc], a
    ld sp, hl
    ld l, l
    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01e_5b19

    jr nz, jr_01e_5b46

    dec b

jr_01e_5ad3:
    pop de
    ld [bc], a
    or h
    ld h, [hl]
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    inc l
    inc b
    cp c
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], e
    ld bc, $6f77
    ld l, [hl]
    daa
    ld [hl], h
    inc bc
    sbc l
    dec b
    ld d, l
    nop
    ld c, c
    inc bc
    ld d, a
    inc b
    ld [$0520], a
    ld a, [bc]
    ld bc, $7905

jr_01e_5af9:
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], b
    dec b

jr_01e_5afe:
    rst $08
    ld [bc], a
    ld [c], a
    inc bc
    sub h
    ld h, h
    ld h, c
    ld a, c
    jr nz, @+$04

    dec c
    ld bc, $3003
    ld [hl], e
    ld l, $00
    inc b
    sbc [hl]
    ld [bc], a
    push bc
    inc bc
    nop
    ld bc, $6f74
    ld [bc], a

jr_01e_5b19:
    sub a
    inc bc
    ld [hl], l
    ccf
    nop
    dec b
    db $eb
    inc bc
    ld d, d
    inc bc
    jr nc, jr_01e_5b8a

    ld h, h
    ld [bc], a
    ld b, e
    inc b
    ld [$2021], sp
    ld c, a
    ld [hl], l
    ld [hl], d
    ld bc, $6168
    ld [hl], d
    db $76
    ld h, l
    ld [hl], e
    ld [hl], h
    inc bc
    push hl
    inc b
    ld h, e
    ld h, h
    ld hl, $0200
    dec sp
    dec b
    rrca
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, a

jr_01e_5b46:
    ld bc, $9403
    ld h, [hl]
    inc bc
    sbc c
    inc l
    ld [bc], a
    jp nz, Jump_01e_6163

    ld l, [hl]
    dec b
    dec a
    ld l, a
    ld [hl], h
    inc b
    ld [hl], d
    inc bc
    sub h
    dec b
    ret z

    inc bc
    ld [bc], a
    ld bc, $7449
    jr nz, jr_01e_5b67

    ld [$2073], a
    inc b

jr_01e_5b67:
    or l
    ld bc, $6e69
    ld [bc], a
    sub $02
    jp nc, $0366

    sbc c
    ld [hl], e
    jr nz, jr_01e_5b7a

    rst $00
    inc l
    ld bc, $6f73

jr_01e_5b7a:
    inc bc
    cp d
    ld h, a
    ld h, l
    ld [hl], h
    ld [hl], h
    inc bc
    rst $00
    dec b
    add d
    ld h, [hl]
    dec b
    pop de
    inc bc
    db $e3
    ld l, c

jr_01e_5b8a:
    ld [hl], h
    ld hl, $4e00
    ld l, a
    ld [hl], a
    inc bc
    sbc [hl]
    ld [bc], a
    xor l
    ld h, c
    ld bc, $7562
    ld h, h
    ld [bc], a
    adc h
    ld l, c
    ld [hl], h
    daa
    ld l, h
    ld l, h
    ld bc, $6562
    dec b
    ld a, [hl]
    inc b
    ret


    ld h, [hl]
    inc bc
    sbc c
    ld bc, $6e69
    ld [bc], a
    sub $2e
    ld bc, $3b02
    ld h, e
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    inc b
    sub e
    inc bc
    ld [$0366], sp
    sbc c
    inc bc
    and l
    ld [bc], a
    add hl, hl
    inc b
    sbc c
    ld hl, $0300
    ld a, [de]
    ld h, [hl]
    inc bc
    sbc c
    inc bc
    push hl
    ld h, e
    ld l, a
    ld l, a
    ld l, h
    dec b
    sub $6e
    ld [bc], a
    sub $2c
    ld bc, $7469
    jr nz, jr_01e_5c50

    inc b
    db $76
    ld [bc], a
    jp nz, Jump_01e_6e69

    ld [bc], a
    ld e, c
    ld h, c
    ld l, c
    ld [hl], d
    ld hl, $0400
    dec a
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, h
    inc bc
    pop de
    inc bc
    sub h
    ld h, [hl]
    inc bc
    sbc c
    ld l, $00
    inc b
    rra
    ld b, e
    daa
    ld l, l
    dec b
    or $50
    ld l, h
    ld h, c
    ld a, c
    ld [bc], a
    adc b
    ld l, l
    ld h, l
    ld hl, $0200
    dec hl
    inc b
    and a
    ld l, b
    dec b
    push af
    ld [bc], a
    cpl
    ld [hl], a
    ld l, c
    ld [hl], e
    ld h, l
    dec b
    push de
    inc bc
    ld b, h
    ld b, d
    ld l, c
    ld [hl], d
    ld h, h
    ld [hl], e
    inc b
    jr z, jr_01e_5c77

    ld h, l
    ld h, l
    inc bc
    inc l
    ld [bc], a
    ld d, l
    ld [bc], a
    push af
    inc bc
    di
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld hl, $5400
    ld [bc], a
    jr jr_01e_5c39

    ld [bc], a

jr_01e_5c39:
    db $f4
    inc bc
    cpl
    ld bc, $696c
    ld l, e
    ld h, l
    ld [bc], a
    xor h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $01
    ld [bc], a
    db $ec
    ld [bc], a
    sub e
    dec b
    ld d, l
    nop

jr_01e_5c50:
    ld [bc], a
    inc sp
    ld l, a
    ld h, [hl]
    ld bc, $9403
    ld c, a
    ld [hl], a
    ld l, h
    jr nz, jr_01e_5caf

    ld [hl], h
    dec b
    reti


    ld [hl], e
    ccf
    ld bc, $0202
    nop
    inc b
    db $db
    inc bc
    cp [hl]
    ld [bc], a
    ld b, b
    ld h, e
    ld l, a
    ld l, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld bc, $9804
    ld l, h
    ld h, l
    ld h, h

jr_01e_5c77:
    ld h, a
    ld h, l
    inc b
    dec b
    ld l, $00
    ld b, c
    ld l, b
    ld h, l
    ld l, l
    inc bc
    sub a
    ld l, [hl]
    ld [bc], a
    add sp, $03
    pop af
    inc bc
    add hl, de
    dec b
    ld d, [hl]
    ld c, a
    ld [hl], a
    ld l, h
    jr nz, jr_01e_5ce4

    ld [hl], h
    dec b
    reti


    ld [hl], e
    inc bc
    ld b, c
    ld l, l
    ld a, c
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, e
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld [hl], e
    ld bc, $0803
    inc b
    ld hl, $6461
    db $76
    ld l, c
    ld h, e

jr_01e_5caf:
    ld h, l
    ld bc, $8a03
    ld h, c
    jr nz, @+$65

    ld h, l
    ld [hl], d
    ld [hl], h
    dec b
    db $db
    ld bc, $0109
    ld [hl], e
    inc b
    ld c, a
    dec b
    rst JumpTable
    inc bc
    inc b
    ld h, h
    ld bc, $6e6f
    inc bc
    inc l
    ld hl, $0500
    ld c, [hl]
    jr nz, jr_01e_5d1a

    inc bc
    sbc l
    jr nz, jr_01e_5d4a

    ld [hl], b
    inc l
    dec b
    ld d, [hl]
    ld [bc], a
    ld h, c
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $0803
    ld b, h
    ld h, c

jr_01e_5ce4:
    ld [hl], d
    ld l, e
    ld bc, $6f03
    jr nz, @+$69

    ld [hl], l
    ld a, c
    ld bc, $7905
    ld h, c
    jr nz, jr_01e_5d63

    ld [hl], l
    ld l, h
    ld [hl], b
    ld hl, $0300
    cp e
    ld [hl], e
    ld h, c
    ld a, c
    dec b
    cp d
    ld [hl], b
    inc bc
    inc h
    inc b
    add b
    ld h, h
    ld bc, $0d02
    jr nz, jr_01e_5d0f

    ld d, d
    ld [hl], e
    ld bc, $6166

jr_01e_5d0f:
    ld [hl], d
    inc bc
    ldh [$2e], a
    jr nz, jr_01e_5d5e

    inc bc
    add a
    ld bc, $7905

jr_01e_5d1a:
    inc b
    ld h, [hl]
    dec b
    ldh [$72], a
    ld l, $01
    ld [bc], a
    rst $28
    ld l, c
    ld h, [hl]
    dec b
    ld c, e
    ld bc, $0464
    dec d
    ld [hl], e
    jr nz, jr_01e_5d8f

    ld [hl], e
    inc bc
    adc [hl]
    ld bc, $7361
    jr nz, @+$04

    ld b, d
    jr nz, jr_01e_5d3e

    ld d, c
    ccf
    nop
    ld d, e
    ld h, l

jr_01e_5d3e:
    ld h, l
    inc bc
    and [hl]
    add hl, bc
    inc bc
    ld d, b
    inc bc
    inc h
    ld bc, $2b05
    dec b

jr_01e_5d4a:
    add sp, $05
    ld [de], a
    ld [hl], e
    dec b
    add hl, de
    inc b
    jp z, $2d03

    ld l, b
    ld l, a
    ld [hl], a
    ld l, $00
    ld b, a
    ld l, c
    db $76
    ld h, l
    dec b

jr_01e_5d5e:
    dec e
    inc b
    ld h, $02
    ld [c], a

jr_01e_5d63:
    ld l, l
    ld h, l
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    db $ec
    ld [bc], a
    ei
    ld hl, $4d01
    ld a, c
    jr nz, jr_01e_5dd6

    dec b
    call c, $d505
    ld d, b
    inc bc
    inc h
    ld bc, $2b05
    add hl, bc
    nop
    inc b
    ld h, c
    ld h, a
    dec b
    reti


    ld hl, $4d01
    ld a, c
    jr nz, jr_01e_5d8c

    cp b
    ld [hl], e
    ld [bc], a

jr_01e_5d8c:
    sub [hl]
    inc b
    rlca

jr_01e_5d8f:
    ld h, [hl]
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    dec b
    sbc [hl]
    nop
    ld c, c
    ld l, [hl]
    ld [bc], a
    xor h
    dec b
    ld e, $20
    dec b
    ld [hl], c
    ld bc, $7a05
    inc b
    sub [hl]
    jr nz, jr_01e_5dac

    rst $08
    ld [bc], a
    or h
    add hl, bc
    inc bc

jr_01e_5dac:
    inc bc
    ld b, h
    ld b, d
    ld l, c
    ld [hl], d
    ld h, h
    ld [hl], e
    inc b
    jr z, jr_01e_5e09

    ld h, l
    ld h, l
    inc bc
    inc l
    ld [bc], a
    ld d, l
    ld [bc], a
    push af
    ld h, c
    jr nz, jr_01e_5dc4

    di
    ld l, c
    ld l, a

jr_01e_5dc4:
    ld l, [hl]
    ld l, $00
    ld [bc], a
    ld b, h
    jr nz, jr_01e_5dd0

    inc e
    ld bc, $6d73
    inc b

jr_01e_5dd0:
    rlca
    inc b
    ld l, c
    ld hl, $0501

jr_01e_5dd6:
    inc sp
    dec b
    sbc a
    inc bc
    ld [hl], b
    ld bc, $6977
    ld [hl], h
    ld l, b
    ld [bc], a
    xor h
    ld h, [hl]
    dec b
    or l
    ld hl, $0500
    ld b, $20
    inc b
    adc d
    jr nz, jr_01e_5e50

    dec b
    call c, $0901
    ld bc, $5302
    jr nz, @+$05

    rrca
    ld bc, $7702
    inc l
    jr nz, jr_01e_5e03

    inc c
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_01e_5e03:
    ld [bc], a
    sub $2e
    nop
    ld c, c
    inc bc

jr_01e_5e09:
    add a
    inc b
    cp c
    ld [hl], e
    ld l, c
    inc b
    xor c
    ld bc, $7369
    inc b
    xor a
    ld [bc], a
    call nz, $a403
    ld d, e
    ld l, b
    ld h, l
    jr nz, jr_01e_5e23

    or a
    dec b
    ld c, e
    inc b
    ld c, e

jr_01e_5e23:
    dec b
    ld h, d
    dec b
    ld a, e
    ld [bc], a
    ld [c], a
    ld [bc], a
    cp e
    ld [bc], a
    xor d
    inc bc
    ld l, c
    ld [bc], a
    ld b, [hl]
    ld bc, $7361
    inc b
    inc l
    ld l, c
    ld [hl], e
    inc l
    ld bc, $2749
    ld l, l
    inc bc
    call $002e
    ld c, l
    ld a, c
    jr nz, jr_01e_5ea9

    ld l, a
    ld h, a
    dec b
    sbc d
    inc bc
    adc $46
    ld l, h
    ld h, c
    ld [hl], e
    ld l, b

jr_01e_5e50:
    ld hl, $4820
    ld h, l
    daa
    ld [hl], e
    inc bc
    ld d, c
    ld bc, $7461
    jr nz, jr_01e_5ec3

    ld h, l
    ld [hl], h
    ld h, e
    ld l, b
    inc b
    and [hl]
    nop
    inc bc
    cp e
    ld [hl], e
    ld h, c
    ld a, c
    jr nz, jr_01e_5ecc

    ld [bc], a
    rst JumpTable
    ld bc, $d905
    inc bc
    adc c
    ld [bc], a
    ld [hl], e
    ld bc, $4602
    ld hl, $5720
    ld l, b
    ld l, a
    ld bc, $ab03
    ld l, c
    ld [hl], h
    jr nz, jr_01e_5ee5

    ld h, l
    ccf
    nop
    ld d, h
    dec b
    ld [hl-], a
    ld h, c
    ld h, h
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    inc bc
    ld b, c
    inc b
    rlca
    ld [hl], e
    ld l, b
    dec b
    pop hl
    dec b
    and $01
    ld [bc], a
    adc e
    inc b
    and c
    inc b
    or d
    daa
    inc l
    ld bc, $7304
    ld c, c
    jr nz, jr_01e_5f0c

    inc bc

jr_01e_5ea9:
    or a
    inc b
    sbc b
    inc bc
    sbc h
    ld hl, $0200
    dec hl
    inc bc
    ld c, a
    ld [bc], a
    or d
    inc bc
    and e
    inc b
    rra
    inc bc
    xor $03
    sub b
    ld bc, $b805
    ld [bc], a
    push de

jr_01e_5ec3:
    inc bc
    db $10
    ld l, $01
    inc bc
    or c
    ld [bc], a
    add hl, sp
    ccf

jr_01e_5ecc:
    ld bc, $6548
    ld h, c
    ld h, h
    jr nz, jr_01e_5ed7

    ld sp, $002e
    ld d, h

jr_01e_5ed7:
    ld [bc], a
    jr jr_01e_5edd

    ld b, c
    inc b
    rlca

jr_01e_5edd:
    ld l, l
    ld h, l
    ld [hl], e
    ld [hl], e
    dec b
    sbc e
    ld [hl], l
    ld [hl], b

jr_01e_5ee5:
    ld l, $01
    ld [bc], a
    db $ec
    ld h, d
    ld h, c
    ld h, h
    inc bc
    inc c
    ld l, l
    ld a, c
    ld bc, $6b73
    ld l, c
    ld l, [hl]
    dec b
    ld d, l
    nop
    ld c, h
    dec b
    and c
    ld [hl], e
    jr nz, @+$05

    ld [hl], c
    ld bc, $4602
    inc bc
    ld b, c
    inc bc

Jump_01e_5f05:
    rst $38
    ld [bc], a
    sbc a
    ld [bc], a
    jp c, $2173

jr_01e_5f0c:
    inc bc
    ld a, [c]
    ld [hl], h
    ld l, a
    ld l, a
    jr nz, jr_01e_5f86

    ld h, e
    ld h, c
    ld [hl], d
    inc bc
    ld a, a
    ld h, a
    ld l, a
    inc b
    inc a
    jr nz, jr_01e_5f23

    dec d
    ld h, l
    ld hl, $0200

jr_01e_5f23:
    sub c
    ld h, c
    ld bc, $0109
    ld [bc], a
    sbc e
    inc b
    jr z, @+$05

    ld d, b
    inc bc
    call c, $e503
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, h
    dec l
    ld h, d
    ld l, a
    ld h, a
    ld h, a
    ld l, h
    inc b
    and [hl]
    nop
    ld c, l
    ld a, c
    jr nz, jr_01e_5f48

    xor a
    dec b
    rst JumpTable
    ld [bc], a
    ld [c], a

jr_01e_5f48:
    inc bc
    ld [hl], l
    jr nz, jr_01e_5f50

    adc e
    ld l, $01
    ld [bc], a

jr_01e_5f50:
    ld [hl], c
    dec b
    ld h, b
    ld bc, $6e61
    ld a, c
    inc bc
    dec hl
    inc bc
    ld a, h
    ld bc, $3903
    ld [hl], e
    inc bc
    or d
    inc bc
    nop
    ld l, $00
    ld [bc], a
    sub c
    ld [hl], h
    ld l, a
    inc b
    ld b, $01
    ld [bc], a
    ld bc, $0121
    inc bc
    add hl, bc
    inc bc
    sub b
    jr nz, jr_01e_5f79

    sbc $75
    ld [hl], b

jr_01e_5f79:
    inc bc
    add a
    ld hl, $4900
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    xor l
    ld b, c
    ld d, a
    ld b, [hl]

jr_01e_5f86:
    ld d, l
    ld c, h
    ld hl, $0201
    ld bc, $0501
    or h
    ld [bc], a
    or b
    ld hl, $0301
    ld a, [hl+]
    ld h, h
    ld l, a
    inc b
    and l
    ld h, h
    ld l, a
    ccf
    nop
    ld [bc], a
    dec hl
    inc bc
    ld c, a
    ld [bc], a
    or d
    ld hl, $4820
    ld h, l
    ld a, c
    ld hl, $4901
    jr nz, jr_01e_6015

    inc bc
    ld sp, hl
    inc b
    ld b, $6e
    ld bc, $d203
    ld l, c
    ld l, [hl]
    dec b
    ld a, [hl]
    inc b
    cp a
    ld hl, $0c00
    ld [hl+], a
    ld c, b
    ld [hl], a
    ld h, c
    ld h, c
    ld h, c
    dec b
    ld d, l
    inc bc
    and l
    ld d, a
    ld l, b
    dec l
    ld [hl], a
    ld l, b
    ld l, a
    daa
    ld [hl], e
    inc bc
    sbc b
    inc bc
    rst $20
    ld b, h
    ld l, c
    ld h, h
    ld [bc], a
    push de
    ld [hl], a
    ld h, c
    ld l, e
    inc b
    cp b
    ccf
    ld bc, $6857
    ld l, a
    inc bc
    ld l, e
    dec b
    ld a, h
    inc bc
    rst $20
    inc bc
    inc de
    jr nz, @+$06

    sbc [hl]
    ccf
    ld hl, $e703
    ld [bc], a
    ld b, d
    inc bc
    ld l, h
    inc b
    sub h
    ld l, [hl]
    ld bc, $bf04
    jr nz, jr_01e_6047

    jr nz, jr_01e_6073

    ld l, h
    ld h, l
    ld [hl], b
    ld [hl], h
    ccf
    ld bc, $0254
    ld l, e
    ld l, [hl]
    ld l, a
    jr nz, jr_01e_6012

    ld e, e
    ld bc, $7902
    add hl, bc

jr_01e_6012:
    inc bc
    ld d, h
    inc b

jr_01e_6015:
    ld a, l
    ld bc, $7a05
    ld [bc], a
    ld a, [de]
    ccf
    ld hl, HeaderManufacturerCode
    ld [bc], a
    dec hl
    ld h, c
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld l, h
    inc b
    db $eb
    ld b, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    ld [bc], a
    and e
    ld l, a
    dec b
    jp z, $df05

    inc b
    jr nc, jr_01e_609b

    ld [hl], l
    ld [hl], h
    ld a, c
    ld [bc], a
    db $76
    ld b, c
    ld l, h
    ld h, c
    ld [hl], e
    inc l
    jr nz, jr_01e_60ab

    ld l, a
    ld [hl], a
    inc b
    inc bc

jr_01e_6047:
    ld [hl], a
    ld l, c
    inc b
    daa
    ld h, l
    ld h, h
    ld hl, $0c00
    ld [hl+], a
    ld d, a
    ld [bc], a
    db $dd
    ld [hl], h
    ld l, a
    inc b
    and h
    ld h, h
    dec b
    reti


    inc l
    jr nz, jr_01e_6068

    nop
    ccf
    ld bc, $1305
    jr nz, @+$76

    ld [bc], a
    jr jr_01e_6069

jr_01e_6068:
    ld l, c

jr_01e_6069:
    ld l, [hl]
    inc b
    ld h, b
    inc l
    ld [bc], a
    or h
    ld l, h
    inc bc
    jp hl


    dec b

jr_01e_6073:
    push hl
    ld [hl], d
    ld l, a
    ld h, d
    ld h, d
    dec b
    ld a, l
    ld [bc], a
    ld a, c
    inc b
    ld a, e
    ld h, l
    inc bc
    ld l, $03
    pop de
    ld l, [hl]
    inc bc
    ccf
    inc l
    jr nz, jr_01e_60ed

    ld [hl], d
    dec b
    db $db
    inc bc
    rst $00
    dec b
    add c
    inc bc
    db $e3
    dec b
    add d
    ld l, l
    inc b
    dec h
    ld hl, $0201
    ld [hl], d

jr_01e_609b:
    inc b
    ld h, e
    jr nz, @+$04

    ld b, d
    ld bc, $6e69
    inc b
    cp c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ccf

jr_01e_60ab:
    ld bc, $7449
    inc bc
    add hl, hl
    ld l, h
    ld l, h
    ld [bc], a
    adc d
    ld [bc], a
    add hl, sp
    inc bc
    ld d, d
    inc b
    ld l, $20
    ld h, c
    ld [hl], e
    ld l, e
    ld h, l
    ld h, h
    inc bc
    and e
    ld c, c
    jr nz, jr_01e_6138

    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    jr nz, jr_01e_60d0

    ld a, [c]
    inc b
    sub e
    inc bc
    sub h

jr_01e_60d0:
    add hl, bc
    inc bc
    ld c, [hl]
    ld l, a
    ld [hl], d
    inc b
    daa
    ld l, [hl]
    ld bc, $6550
    ld h, c
    ld l, e
    add hl, bc
    nop
    inc l
    jr nz, jr_01e_60e5

    add h
    ld [bc], a
    or h

jr_01e_60e5:
    ld [bc], a
    ld e, $02
    ld a, [de]
    jr nz, @+$06

    db $ec
    ld h, l

jr_01e_60ed:
    ld h, h
    ld hl, $0201
    ld sp, $8903
    ld h, e
    ld h, c
    ld [hl], e
    ld [hl], h
    ld bc, $2061
    inc b
    ld e, e
    ld [bc], a
    add d
    add hl, bc
    inc bc
    ld c, [hl]
    ld l, a
    ld [hl], d
    inc b
    daa
    ld l, [hl]
    jr nz, jr_01e_6159

    ld h, l
    ld h, c
    ld l, e
    inc b
    jr z, jr_01e_6158

    ld [bc], a
    ldh [rDIV], a
    dec l
    ld [bc], a
    add c
    inc bc
    rst $10
    ld l, b
    ld l, c
    ld l, l
    ld [bc], a
    ld a, h
    ld l, $01
    inc bc
    ld h, $6e
    ld h, l
    ld h, l
    ld h, h
    ld [bc], a
    or h
    ld h, l
    inc bc
    add e
    ld [bc], a
    ld a, a
    ld bc, $7a05
    ld c, [hl]
    inc bc
    ccf
    add hl, bc
    nop
    ld [bc], a
    sbc c
    ld l, h
    ld l, c
    ld h, l

jr_01e_6138:
    jr nz, jr_01e_613e

    rla
    inc bc
    and [hl]
    ld l, c

jr_01e_613e:
    ld l, [hl]
    ld bc, $1702
    ld l, $01
    ld b, a
    ld h, c
    dec b
    sbc h
    inc bc
    ld a, $04
    inc hl
    ld h, l
    inc bc
    add e
    ld l, c
    ld [hl], e
    ld [bc], a
    or h
    inc b
    or l
    jr nz, @+$71

    ld [hl], b

jr_01e_6158:
    inc b

jr_01e_6159:
    ccf
    inc b
    jr jr_01e_615e

    ld [bc], a

jr_01e_615e:
    dec [hl]
    jr nz, jr_01e_61d1

    ld l, a
    ld [hl], e

Jump_01e_6163:
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], e
    ld bc, $9403
    inc bc
    ld a, [$8902]
    ld bc, $7a05
    ld l, [hl]
    inc bc
    ccf
    inc l
    ld [bc], a
    sbc a
    ld [hl], a
    dec b
    db $76
    ld [bc], a
    jr nc, jr_01e_617e

    inc bc

jr_01e_617e:
    ldh a, [rSC]
    xor h
    inc b
    ld e, e
    ld bc, $6162
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], d
    ld [bc], a
    pop hl
    inc b
    ld h, e
    ld bc, $4202
    inc bc
    and h
    ld d, e
    ld l, b
    inc b
    rlca
    ld c, c
    jr nz, @+$74

    ld h, l
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $b704
    ld [bc], a
    ld [bc], a
    nop
    inc c
    ld [hl+], a
    inc bc
    inc a
    ld c, c
    jr nz, jr_01e_61b0

    sbc $05
    ld a, h

jr_01e_61b0:
    ld [bc], a
    sub a
    add hl, bc
    ld bc, $656b
    ld a, c
    inc b
    jr z, jr_01e_6201

    ld l, a
    jr nz, jr_01e_61bf

    ld e, c
    add hl, bc

jr_01e_61bf:
    inc bc
    ld h, a
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $6f72
    ld l, a
    ld [hl], h
    add hl, bc
    nop
    inc bc
    db $ec
    ld [bc], a
    or h
    ld l, h

jr_01e_61d1:
    dec b
    db $e4
    jr nz, jr_01e_624a

    ld [hl], b
    inc bc
    ld bc, $a303
    inc bc
    or c
    inc b
    add c
    ld bc, $0109
    ld h, l
    inc bc
    ld l, $05
    add sp, $03
    ld d, l
    ld bc, $6562
    ld [bc], a
    ld a, h
    ld [bc], a
    xor d
    ld c, c
    daa
    ld h, h
    jr nz, jr_01e_6259

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    inc bc
    dec l
    ld bc, $6572
    ld [hl], e
    ld l, c
    ld [hl], e

jr_01e_6201:
    ld [hl], h
    inc b
    dec d
    ld l, $01
    ld b, d
    ld h, l
    jr nz, @+$05

    ld [hl], b
    ld hl, $0301
    add hl, bc
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    dec l
    dec l
    ld h, c
    ld l, b
    ld l, b
    ld l, l
    inc l
    ld bc, $ec04
    jr nz, jr_01e_6294

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    dec l
    dec l
    ld l, a
    ld l, b
    ld l, b
    inc l
    ld bc, $6f6e
    jr nz, jr_01e_6293

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    dec b
    ld d, l
    ld e, d
    ld e, d
    ld e, d
    nop
    inc c
    ld [hl+], a
    ld c, b
    ld [hl], a
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    inc bc
    and l
    inc bc
    or c
    add hl, bc
    inc bc
    ld h, a
    ld l, c
    ld h, c

jr_01e_624a:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01e_62c0

    ld l, a
    ld l, a
    ld [hl], h
    inc bc
    db $e4
    ld b, d
    ld h, l
    jr nz, jr_01e_625a

    ld [hl], b
    inc bc

jr_01e_6259:
    and l

jr_01e_625a:
    ld c, b
    ld l, a
    ld l, b
    ld l, b
    ld l, l
    dec b
    ld d, l
    ld e, d
    ld e, d
    ld e, d
    nop
    ld c, b
    ld [hl], a
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    inc bc
    and l
    ld [bc], a
    db $ec
    ld l, l
    ld h, l
    inc l
    ld [bc], a
    or h
    add hl, bc
    inc bc
    inc b
    inc c
    add hl, bc
    inc b
    ld l, $01
    dec b
    ld b, $02
    cpl
    add hl, bc
    ld [bc], a
    inc bc
    ld b, e
    add hl, bc
    inc b
    ld bc, $6168
    ld [hl], e
    jr nz, jr_01e_628e

    ld [hl], e
    dec b

jr_01e_628e:
    and b
    inc l
    ld bc, $6f74

jr_01e_6293:
    ld l, a

jr_01e_6294:
    ld l, $20
    ld c, c
    jr nz, @+$05

    ld [hl], d
    ld bc, $9204
    jr nz, jr_01e_62a1

    pop de
    ld h, l

jr_01e_62a1:
    ld [hl], d
    inc bc
    and h
    ld c, a
    ld l, b
    inc l
    inc b
    inc d
    ld l, l
    ld a, c
    ld bc, $b803
    ld [hl], e
    inc l
    jr nz, @+$4b

    jr nz, jr_01e_6327

    ld h, c
    ld [hl], a
    ld bc, $9403
    ld [bc], a
    ld e, $02
    add h
    add hl, bc
    inc b
    inc b

jr_01e_62c0:
    inc d
    ld h, c
    ld bc, $9302
    jr nz, @+$06

    ld [$4901], sp
    jr nz, jr_01e_6330

    ld l, a
    jr nz, jr_01e_633d

    ld l, a
    ld [hl], h
    inc bc
    adc h
    ld l, $01
    ld d, h
    ld [bc], a
    db $f4
    inc bc
    xor h
    ld h, c
    ld bc, $4a03
    dec b
    jp nc, Jump_01e_6d65

    ld bc, $e504
    ld [bc], a
    push bc
    ld h, c
    ld l, c
    ld h, h
    ld bc, $4d05
    jr nz, @+$0c

    nop
    ld l, $01
    dec b
    ld d, a
    inc bc
    add hl, hl
    ld l, h
    ld l, h
    jr nz, @+$4b

    ld bc, $6163
    ld l, [hl]
    inc b
    ld b, $04
    dec b
    inc bc
    and l

Call_01e_6304:
    ld c, b
    ld l, a
    ld l, b
    ld l, l
    dec b
    ld d, l
    ld l, b
    ld l, l
    ld l, l
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld l, l
    inc bc
    or c
    ld [bc], a
    ld e, $02
    ld a, [de]
    inc l
    jr nz, jr_01e_6327

    nop
    ld l, $01
    ld b, c
    jr nz, @+$05

    ld c, d
    ld bc, $7469

jr_01e_6327:
    ld h, l
    ld l, l
    dec b
    ld d, $49
    ld [hl], h
    ld [bc], a
    add c
    ld h, c

jr_01e_6330:
    ld l, c
    ld h, h
    inc bc
    add hl, de
    ld l, $2e
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld l, l
    ld d, l
    ld [hl], e

jr_01e_633d:
    ld h, l
    ld [bc], a
    xor h
    ld [bc], a
    rst $08
    ld bc, $1a02
    ld l, $20
    ld b, a
    ld l, a
    ld bc, $5902
    ld b, l
    ld h, c
    inc b
    xor c
    ld l, [hl]
    ld bc, $6f57
    ld l, a
    ld h, h
    ld [hl], e
    ld hl, $4820
    ld l, a
    ld l, b
    ld l, b
    ld l, l
    dec b
    ld d, l
    nop
    ld [bc], a
    ld de, $012c
    ld a, [bc]
    nop
    inc bc
    and h
    ld [bc], a
    db $fd
    ld [hl], d
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    dec b
    ld a, l
    dec b
    ld [hl], c
    ld [bc], a
    cpl
    add hl, bc
    ld [bc], a
    ld b, a
    ld l, c
    ld h, [hl]
    ld [hl], h
    inc bc
    db $e3
    dec b
    and h
    add hl, bc
    inc b
    ld hl, $4901
    ld [bc], a
    xor l
    inc bc
    ld h, l
    ld bc, $0309
    ld [bc], a
    ld hl, $0409
    inc b
    inc a
    ld bc, $1e05
    ld l, $20
    ld [bc], a
    xor [hl]
    ld bc, $e505
    ld h, c
    ld h, [hl]
    ld l, a
    ld l, a
    ld [hl], h
    ld [bc], a
    ld a, h
    inc bc
    and h
    ld b, d
    ld [hl], l
    ld [hl], h
    ld [bc], a
    rst $00
    inc b
    ld b, $20
    ld l, [hl]
    ld l, a
    ld bc, $6f6d
    ld [hl], d
    inc b
    xor b
    jr nz, jr_01e_6400

    ld l, a
    ld l, b
    ld l, b
    ld l, l
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld l, l
    add hl, bc
    inc bc
    ld [bc], a
    ld hl, $0009
    inc b
    inc a
    ld bc, $1e05
    dec l
    dec l
    ld [bc], a
    inc e
    ld bc, $e505
    ld h, c
    ld h, [hl]
    ld l, a
    ld l, a
    ld [hl], h
    dec b
    ld d, l
    ld e, d
    ld e, d
    ld e, d
    nop
    ld c, b
    ld [hl], a
    ld h, c
    ld h, c
    ld l, b
    ld [bc], a
    db $76
    ld [bc], a
    ld de, $012c
    ld a, [bc]
    nop
    ld l, $01
    ld [bc], a
    db $fd
    inc b
    sub d
    ld [bc], a
    or h
    add hl, bc
    ld [bc], a
    ld [bc], a
    cp l
    add hl, bc
    inc b
    inc bc
    and e
    ld c, c
    jr nz, jr_01e_6403

jr_01e_6400:
    cp b
    ld [hl], h
    ld [bc], a

jr_01e_6403:
    cpl
    ld [bc], a
    add a
    ld [bc], a
    add d
    ld l, l
    ld [bc], a
    and [hl]
    inc bc
    ld bc, $0501
    ld a, d
    add hl, bc
    inc bc
    ld [bc], a
    daa
    add hl, bc
    inc b
    ld l, $01
    ld d, b
    inc bc
    dec d
    ld [bc], a
    xor h
    dec b
    ld sp, hl
    ld bc, $8d02
    dec b
    rst JumpTable
    inc bc
    db $ec
    ld bc, $2704
    inc b
    xor b
    nop
    inc c
    ld [hl+], a
    ld c, b
    ld a, c
    ld h, c
    ld h, c
    ld l, b
    inc bc
    and l
    rrca
    dec h
    ld bc, $0b02
    nop
    dec b
    dec de
    ld a, [bc]
    nop
    inc bc
    and l
    rrca
    ld h, $01
    ld [bc], a
    dec bc
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld l, l
    rrca
    daa
    ld bc, $0b02
    nop
    ld [bc], a
    ld l, l
    rrca
    jr z, jr_01e_6457

    ld [bc], a

jr_01e_6457:
    dec bc
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld l, l
    rrca
    add hl, hl
    ld bc, $0b02
    nop
    dec b
    dec de
    ld a, [bc]
    nop
    ld [bc], a
    db $76
    rrca
    ld a, [hl+]
    ld bc, $0b02
    nop
    rrca
    dec hl
    ld bc, $0b02
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld l, l
    rrca
    inc l
    ld bc, $0b02
    nop
    rrca
    dec l
    ld bc, $0b02
    nop
    inc c
    ld [hl+], a
    ld c, b
    ld [hl], a
    ld h, c
    ld h, c
    ld l, b
    ld [bc], a
    db $76
    rrca
    ld l, $01
    ld [bc], a
    dec bc
    nop
    ld [bc], a
    ld l, l
    rrca
    cpl
    ld bc, $3c02
    dec b
    add d
    inc bc
    ld c, c
    inc bc
    push hl
    inc bc
    jr nc, jr_01e_64a8

    and [hl]
    jr nz, jr_01e_64ab

    rst $20

jr_01e_64a8:
    ld bc, $756c

jr_01e_64ab:
    ld h, e
    ld l, e
    inc l
    jr nz, jr_01e_64ba

    nop
    ld hl, $0c00
    ld [hl+], a
    ld a, [bc]
    nop
    ld hl, $4220

jr_01e_64ba:
    ld h, l
    ld bc, $6177
    ld [hl], d
    ld a, c
    dec b
    sub $74
    daa
    ld [hl], e
    ld [bc], a
    or h
    inc b
    call c, $0109
    ld b, l
    inc bc
    ld l, $01
    dec b
    ld a, d
    ld c, [hl]
    inc bc
    ccf
    dec b
    ret c

    nop
    ld a, [bc]
    nop
    ld [bc], a
    and $03
    ld [hl], d
    jr nz, jr_01e_6547

    dec b
    ret nc

    ld [bc], a
    or h
    ld h, l
    inc b
    dec h
    ld l, b
    jr nz, @+$04

    adc l
    ld hl, $0301
    or c
    add hl, bc
    ld [bc], a
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    inc bc
    rst $00
    ld [bc], a
    add h
    add hl, bc
    inc b
    ld [bc], a
    sub [hl]
    inc bc
    rst $38
    dec b
    and b
    ld [bc], a
    sbc a
    dec b
    add d
    dec b
    sbc $6d
    ld h, l
    ld [hl], d
    ld [bc], a
    adc c
    ld hl, $0201
    sub c
    ld [bc], a
    inc e
    ld bc, $6f74
    ld [bc], a
    ld c, h
    inc b
    dec b
    inc l
    ld bc, $e705
    inc bc
    adc e
    ld [hl], e
    ld h, l
    inc b
    cp b
    ld hl, $0c00
    ld [hl+], a
    ld a, [bc]
    nop
    inc bc
    and e
    ld [bc], a
    ld h, b
    inc bc
    ld l, l
    ld bc, $6167
    inc b
    daa
    dec b
    sbc e
    inc b
    inc hl
    ld h, l
    inc bc
    add e
    ld [bc], a
    ld a, a
    ld bc, $7a05
    ld c, [hl]
    inc bc
    ccf
    inc b
    jr z, jr_01e_6548

    ld h, b

Call_01e_6547:
jr_01e_6547:
    ld h, d

jr_01e_6548:
    ld h, l
    inc bc
    push af
    ld h, c
    inc bc
    db $f4
    inc bc
    dec a
    dec b
    ld l, $75
    ld [bc], a
    jr nz, @+$75

    ld [bc], a
    or h
    ld [bc], a
    ld a, a
    inc bc
    pop de
    ld c, [hl]
    inc bc
    ccf
    inc b
    jr z, jr_01e_6567

Call_01e_6562:
    sbc l
    inc bc

Call_01e_6564:
    ld l, e
    ld l, b
    ld l, a

Jump_01e_6567:
jr_01e_6567:
    ld [hl], b

Jump_01e_6568:
    ld h, l
    ld [bc], a
    ld [c], a
    dec b

Call_01e_656c:
    add c

Jump_01e_656d:
    ld [bc], a
    sbc b
    dec b
    ld d, d
    ld hl, $0201
    ld l, $05
    call nc, $0473
    ld c, a
    ld hl, $0c00
    ld [hl+], a
    ld a, [bc]
    nop
    ld hl, $5301
    inc b
    add d
    inc b
    dec b
    ld [bc], a
    jp nz, Jump_01e_5f05

    inc bc
    add b
    jr nz, @+$04

    ld sp, $012c
    inc bc
    sub h
    inc bc
    ld l, a
    inc bc
    pop de
    ld [bc], a
    adc $2c
    ld [bc], a
    call c, $0566
    ld [c], a
    jr nz, jr_01e_65a4

    ld b, d
    inc l

jr_01e_65a4:
    inc bc
    dec h
    ld bc, $3a02
    ld hl, $0c00
    ld hl, $7747
    inc bc
    ld b, [hl]
    ld hl, $0501
    ld b, $03
    dec a
    dec b
    sbc [hl]
    nop
    inc c
    inc hl
    inc b
    or [hl]
    ld [bc], a
    ld d, l
    ld h, h
    dec b
    rst $08
    inc l
    jr nz, @+$0c

    nop
    ld hl, $0201
    dec sp
    inc b
    inc h
    inc b
    cp l
    ld bc, $6f73
    dec l
    inc bc
    ld e, d
    inc bc
    dec a
    inc l
    ld bc, $7704
    inc b
    cp l
    inc bc
    dec a
    ld bc, $e505
    ld l, [hl]
    ld l, a
    jr nz, jr_01e_6653

    inc b
    ld h, d
    ld bc, $9104
    ld l, l
    ld a, c
    ld [bc], a
    adc c
    ld [hl], e
    ld bc, $7a05
    ld [bc], a
    ld d, [hl]
    ld l, $01
    ld b, a
    ld [hl], a
    inc bc
    ld b, [hl]
    ld hl, $0200
    ld de, $012c
    ld a, [bc]
    nop
    ld hl, $0201
    db $fd
    inc b
    sub d
    ld [bc], a
    or h
    add hl, bc
    ld [bc], a
    ld [bc], a
    cp l
    add hl, bc
    inc b
    ld l, $01
    inc b
    cpl
    ld [hl], h
    ld [bc], a
    ld d, h
    ld [hl], e
    ld bc, $7a05
    ld [bc], a
    ld d, [hl]
    jr nz, jr_01e_6684

    ld l, a
    ld bc, $6e04
    ld [hl], a
    ld h, l
    dec b
    db $e4
    ld l, [hl]
    inc bc
    and l
    ld c, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    inc l
    inc b
    ld a, [de]
    ld bc, $e304
    jr nz, jr_01e_663c

    pop de
    ld h, l

jr_01e_663c:
    ld [hl], d
    inc bc
    and l
    inc b
    db $fc
    ld h, e
    ld h, c
    ld l, [hl]
    ld [bc], a
    sub a
    ld h, d
    ld h, l
    inc bc
    rst $20
    ld a, [bc]
    nop
    inc bc
    and e
    ld c, c
    jr nz, jr_01e_6654

    cp b
    ld [hl], h

jr_01e_6653:
    ld [bc], a

jr_01e_6654:
    cpl
    ld [bc], a
    add a
    ld [bc], a
    add d
    ld l, l
    ld [bc], a
    and [hl]
    inc bc
    ld bc, $0501
    ld a, d
    add hl, bc
    inc bc
    ld [bc], a
    daa
    add hl, bc
    inc b
    ld l, $01

Jump_01e_6669:
    ld d, b
    inc bc
    dec d
    ld [bc], a
    xor h
    dec b
    ld sp, hl
    ld bc, $8d02
    dec b
    rst JumpTable
    inc bc
    db $ec
    ld bc, $2704
    inc b
    xor b
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    xor [hl]
    dec b
    sbc d
    dec b

jr_01e_6684:
    inc c
    inc bc
    push de
    ld [bc], a
    add d
    ld l, l
    ld [bc], a
    and [hl]
    inc bc
    ld bc, $0501
    ld a, d
    add hl, bc
    inc bc
    ld [bc], a
    daa
    add hl, bc
    nop
    ld l, $00
    ld [bc], a
    db $fd
    inc b
    db $e3
    inc bc
    and $6d
    inc bc
    add e
    ld [hl], l
    inc b
    cp $02
    or h
    add hl, bc
    ld [bc], a
    ld d, e
    ld l, a
    ld [bc], a
    jp Jump_01e_5220


    dec b
    db $db
    add hl, bc
    inc b
    ld hl, $0520
    ld d, [hl]
    inc b
    ld e, d
    ld h, c
    ld l, [hl]
    inc bc
    rrca
    ld bc, $6976
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld [bc], a
    xor l
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $01
    inc bc
    xor h
    ld h, c
    jr nz, jr_01e_673c

    dec b
    db $e4
    ld bc, $4c04
    ld h, h
    inc bc
    dec c
    ld bc, $0465
    inc sp
    ld h, l
    ld [hl], e
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    inc bc
    xor h
    ld b, l
    inc b
    inc sp
    ld bc, $054c
    db $e4
    inc b
    inc d
    ld l, l
    ld a, c
    ld bc, $b803
    dec b
    ld d, l
    nop
    add hl, bc
    ld [bc], a
    dec b
    cp l
    inc bc
    ld a, $04
    call nc, $0409
    ld bc, $6168
    ld [hl], e
    ld [bc], a
    call z, $1905
    ld h, d
    ld h, c
    ld l, h
    dec b
    add d
    ld [hl], a
    inc bc
    ld d, h
    inc l
    ld bc, $6f74
    ld l, a
    ld hl, $4901
    jr nz, jr_01e_671d

    ld h, l
    dec b
    cp d

jr_01e_671d:
    inc b
    ret


    ld [bc], a
    add a
    ld bc, $6902
    ld l, l
    ld [bc], a
    and [hl]
    ld [hl], e
    ld bc, $046e
    adc a
    inc bc
    db $e3
    add hl, bc
    inc bc
    inc b
    reti


    ld bc, $6943
    ld [hl], h
    ld a, c
    add hl, bc
    inc b
    inc bc
    and l
    ld [bc], a

jr_01e_673c:
    xor [hl]
    dec b
    call Call_01e_6562
    ld [bc], a
    ld a, h
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    ld c, c
    jr nz, jr_01e_674e

    ld h, l
    dec b
    cp d

jr_01e_674e:
    inc b
    ret


    ld [bc], a
    add a
    ld bc, $6902
    ld l, l
    ld [bc], a
    and [hl]
    ld [hl], e
    ld bc, $046e
    adc a
    inc bc
    db $e3
    add hl, bc
    inc bc
    inc b
    reti


    ld bc, $6943
    ld [hl], h
    ld a, c
    add hl, bc
    inc b
    inc bc
    and l
    ld [bc], a
    xor [hl]
    dec b
    call Call_01e_6562
    ld [bc], a
    ld a, h
    dec b
    ld d, l
    nop
    add hl, bc
    ld [bc], a
    dec b
    cp l
    inc bc
    ld a, $04
    call nc, $0409
    ld bc, $6168
    ld [hl], e
    ld [bc], a
    call z, $1905
    inc bc
    ld c, c
    ld hl, $0301
    xor h
    ld h, c
    jr nz, @+$05

    cp b
    ld bc, $7a05
    ld a, [bc]
    nop
    ld bc, $0469
    adc h
    jr nz, jr_01e_6814

    ld h, c
    ld [hl], e
    ld [hl], h
    ld bc, $8304
    ld l, $20
    ld d, b
    inc bc
    dec d
    ld bc, $6e61
    jr nz, jr_01e_67b0

    adc l
    inc bc

jr_01e_67b0:
    push hl
    inc bc
    dec [hl]
    jr nz, jr_01e_681e

    ld l, [hl]
    inc bc
    dec l
    ld l, $00
    ld [bc], a
    db $fd
    inc b
    db $e3
    ld bc, $046d
    dec h
    ld a, c
    jr nz, jr_01e_683a

    inc b
    cp $02
    or h
    add hl, bc
    ld [bc], a
    ld d, e
    ld l, a
    ld [bc], a
    jp Jump_01e_5220


    dec b
    db $db
    add hl, bc
    inc b
    inc bc
    and e
    ld c, c
    ld [bc], a
    xor l
    inc bc
    cp b
    ld [hl], h
    ld bc, $7a05
    ld a, [bc]
    nop
    ld bc, $6205
    inc bc
    and [hl]
    ld [bc], a
    rst $10
    ld bc, $8304
    ld l, $20
    ld d, b
    inc bc
    dec d
    ld bc, $d905
    ld [bc], a
    cpl
    add hl, bc
    ld [bc], a
    ld h, l
    inc bc
    ld l, $73
    add hl, bc
    inc b
    inc bc
    push hl
    inc bc
    dec [hl]
    jr nz, @+$6b

    ld l, [hl]
    inc bc
    dec l
    ld l, $00
    inc c
    ld [hl+], a
    ld b, c
    ld l, [hl]
    dec b
    call nc, $0365
    ld l, $09
    nop

jr_01e_6814:
    inc bc
    and l
    dec b
    sbc c
    inc b
    add e
    dec b
    ld d, l
    nop
    ld d, e

jr_01e_681e:
    inc b
    xor [hl]
    ld a, [bc]
    nop
    inc bc
    and e
    inc bc
    or c
    add hl, bc
    ld [bc], a
    ld b, d
    ld l, h
    ld l, a
    ld [hl], a
    inc bc
    and [hl]
    ld d, a
    ld l, c
    ld l, [hl]
    ld h, h
    add hl, bc
    inc b
    ld bc, $0472
    sbc d
    ld h, l
    ld [hl], e

jr_01e_683a:
    dec b
    and b
    inc bc
    ld [bc], a
    ld bc, $2049
    inc bc
    ld h, l
    dec b
    cp d
    ld h, e
    ld h, l
    ld l, l
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01e_6854

    ld e, $03
    pop de
    add hl, bc
    inc bc

jr_01e_6854:
    ld [bc], a
    inc d
    add hl, bc
    inc b
    ld l, $01
    ld b, e
    inc b
    xor e
    jr nz, jr_01e_68c0

    ld l, [hl]
    jr nz, @+$04

    adc l

Call_01e_6863:
    ld bc, $696c
    ld h, l
    ld [bc], a
    ld a, h
    ld l, $2e
    ccf
    ld bc, $6f54
    jr nz, jr_01e_68d8

    ld h, l
    ld [hl], h
    ld [bc], a

Call_01e_6874:
    ld a, h
    inc l
    ld bc, $d703
    ld h, c
    dec b
    ld h, a
    ld bc, $5504
    ld [bc], a
    xor h
    ld [hl], e
    ld h, l
    ld h, c
    ld l, $00
    inc c
    ld [hl+], a
    ld b, e
    inc b
    xor e
    ld [bc], a
    ld a, h
    inc b
    and h
    ld h, c
    ld l, [hl]
    dec b
    call nc, $0365
    ld l, $09
    nop
    inc bc
    and $03
    sub h
    ld h, e
    ld h, l
    ld l, l
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c
    ccf
    ld bc, $2f04
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_01e_6910

    ld h, c
    ld l, [hl]
    ld [bc], a
    jp nz, Jump_01e_7263

    ld l, a
    ld [hl], e
    ld [hl], e
    ld [bc], a
    xor h
    ld [hl], e
    ld h, l
    ld h, c
    ccf
    nop
    ld d, e
    inc b
    xor [hl]

jr_01e_68c0:
    ld a, [bc]
    nop
    inc bc
    and e
    inc bc
    or c
    add hl, bc
    ld [bc], a
    dec b
    ld c, $03
    pop de
    dec b
    db $eb
    add hl, bc
    inc b
    inc bc
    adc c
    dec b
    ld b, l
    ld l, [hl]
    ld bc, $656d

jr_01e_68d8:
    dec b
    rra
    jr nz, @+$05

    ld c, c
    ld hl, $4e01
    ld l, a
    ld [hl], a
    ld [bc], a
    and c
    jr nz, jr_01e_68eb

    or e
    ld bc, $0209
    ld [bc], a

jr_01e_68eb:
    ld h, $4e
    inc bc
    ccf
    add hl, bc
    inc b
    ld hl, $4201
    ld [hl], l
    ld [hl], h
    ld [bc], a
    sub a
    inc b
    or h
    dec b
    ld l, [hl]
    ld [hl], e
    ld h, c
    ld [hl], a
    jr nz, jr_01e_696f

    ld l, a
    jr nz, jr_01e_6907

    cp b
    ld [hl], e
    inc bc

jr_01e_6907:
    and l
    ld d, e
    ld l, a
    jr nz, jr_01e_6955

    jr nz, jr_01e_6980

    ld h, l
    ld l, h

jr_01e_6910:
    ld a, c
    inc b
    sub e
    dec b
    ld c, l
    jr nz, jr_01e_6921

    nop
    ld l, $01
    ld c, c
    ld [hl], h
    dec b
    rst JumpTable
    inc bc
    dec l
    inc bc

jr_01e_6921:
    add h
    ld bc, $9905
    add hl, bc
    inc bc
    inc bc
    rrc c
    inc b
    ld l, $01
    ld [bc], a
    add [hl]
    ld hl, $0c00
    ld [hl+], a
    ld d, e
    inc b
    xor [hl]
    ld a, [bc]
    nop
    inc bc
    and e
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld [bc], a
    and c
    jr nz, jr_01e_6946

    or e
    ld bc, $0109
    ld [bc], a

jr_01e_6946:
    ld h, $4e
    inc bc
    ccf
    inc bc
    db $e4
    ld c, c
    inc bc
    ld d, a
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    inc b
    sub e

jr_01e_6955:
    dec b
    ld c, l
    jr nz, jr_01e_6963

    nop
    ld hl, $4901
    ld [hl], h
    jr nz, jr_01e_69cc

    ld l, c
    ld h, l
    ld [hl], e

jr_01e_6963:
    jr nz, @+$05

    dec [hl]
    ld bc, $9905
    add hl, bc
    inc bc
    inc bc
    rrc c
    inc b

jr_01e_696f:
    ld l, $01
    ld [bc], a
    add [hl]
    ld hl, $0c00
    ld [hl+], a
    ld a, [bc]
    nop
    inc l
    ld bc, $c704
    jr nz, jr_01e_69f8

    ld [bc], a

jr_01e_6980:
    ld e, d
    ld bc, $8003
    jr nz, @+$04

    ld sp, $012c
    inc bc
    ld l, a
    inc bc
    pop de
    ld [bc], a
    adc $2c
    ld [bc], a
    call c, Call_01e_6304
    ld [bc], a
    xor h
    ld c, a
    dec b
    jp z, $0201

    ld a, [hl-]
    inc l
    jr nz, @+$04

    ld b, d
    ld hl, $0501
    inc de
    dec b
    push de
    ld b, h
    dec b
    and $73
    add hl, bc
    nop
    inc bc
    adc a
    inc l
    ld bc, $0370
    dec d
    ld [bc], a
    jr nc, jr_01e_69b7

    ld [hl], d

jr_01e_69b7:
    inc b
    sbc d
    jr nz, jr_01e_69bd

    rrca
    inc bc

jr_01e_69bd:
    and e
    ld [bc], a
    add [hl]
    inc l
    ld bc, $000a
    ld hl, $5300
    ld l, a
    ld [bc], a
    xor h
    ld l, c
    ld [hl], h

jr_01e_69cc:
    ld h, l
    ld l, l
    inc b
    ld c, e
    ld h, c
    inc b
    jr c, jr_01e_69d6

    or h
    add hl, bc

jr_01e_69d6:
    ld [bc], a
    ld d, d
    ld l, a
    ld h, h
    jr nz, jr_01e_69de

    ld a, [hl-]
    add hl, bc

jr_01e_69de:
    inc b
    ld hl, $4e01
    ld h, l
    ld [hl], a
    jr nz, jr_01e_6a58

    ld l, a
    ld h, c
    ld h, h
    ld [hl], e
    ld [bc], a
    add c
    ld [hl], e
    inc b
    add d
    inc b
    add hl, de
    ld [bc], a
    sbc a
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [bc], a
    adc c

jr_01e_69f8:
    dec b
    sub $01
    inc bc
    ld h, l
    jr nz, jr_01e_6a03

    adc c
    ld bc, $6902

jr_01e_6a03:
    inc b
    ld sp, $a503
    ld d, h
    ld [bc], a
    db $f4
    inc bc
    cp $05
    ld [$8d02], a
    ld [bc], a
    ld a, h
    ld hl, $0a01
    nop
    inc l
    inc bc
    or h
    inc bc
    jp nc, Jump_01e_6f67

    inc bc
    inc c
    ld l, l
    ld h, l
    ccf
    nop
    inc c
    ld [hl+], a
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    jr nz, jr_01e_6a37

    nop
    inc bc
    and e
    ld d, h
    ld [bc], a
    ld d, h
    inc bc
    dec sp
    ld [bc], a
    ld d, [hl]

jr_01e_6a37:
    inc bc
    ld b, c
    ld [hl], e
    ld [hl], b
    dec b
    pop de
    inc bc
    and [hl]
    ld h, [hl]
    inc b
    adc a
    ld hl, $0301
    add sp, $03
    ld d, l
    inc b
    and h
    ld [bc], a
    and h
    ld [hl], d
    inc b
    sbc d
    ld bc, $9403
    dec b
    rst $10
    ld [hl], d
    inc b
    dec d
    inc bc

jr_01e_6a58:
    or d
    ld [bc], a
    ld a, [$6c20]
    ld h, c
    ld l, c
    ld [hl], d
    ld hl, $0201
    ld bc, $6e01
    inc b
    sub b
    inc bc
    dec de
    ld hl, $0021
    inc c
    ld [hl+], a
    ld a, [bc]
    nop
    ld hl, $5920
    ld [bc], a
    ld e, d
    ld bc, $6e04
    ld h, [hl]
    inc b
    rlca
    ld [hl], b
    ld [hl], d
    ld h, l
    ld a, c
    inc bc
    or d
    ld [bc], a
    ld a, [$7401]
    ld [hl], d
    dec b
    db $e3
    ld h, l
    ld [hl], d
    ld a, c
    inc bc
    and e
    ld d, a
    ld h, l
    inc bc
    ld d, a
    inc b
    ld l, [hl]
    ld h, d
    ld h, l
    ld bc, $6e04
    ld l, l
    ld l, c
    ld [hl], e
    ld l, h
    dec b
    sbc e
    ld h, d
    ld a, c
    dec b
    ld [$6165], a
    ld [hl], e
    ld a, c
    jr nz, jr_01e_6b19

    ld h, c
    ld [hl], h
    ld l, b
    inc bc
    and e
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    jr nz, jr_01e_6ac0

    nop
    ld hl, $5401
    ld [bc], a
    ld d, h
    inc bc
    dec sp
    ld [bc], a
    ld d, [hl]

jr_01e_6ac0:
    inc bc
    sbc l
    ld bc, $2e04
    jr nz, jr_01e_6ac9

    pop de
    dec b

jr_01e_6ac9:
    ld [hl], d
    inc bc
    or c
    dec b
    ld de, $6761
    ld h, l
    jr nz, jr_01e_6b34

    ld [hl], h
    ld bc, $8205
    ld [hl], d
    ld l, a
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, @+$05

    ld d, l
    ld bc, $6174
    ld l, e
    ld [bc], a
    ld [hl], h
    ld [hl], h
    ld l, a
    ld bc, $0f02
    ld hl, $0201
    add [hl]
    inc l
    ld bc, $000a
    ld hl, $0c00
    ld [hl+], a
    ld [bc], a
    ld l, l
    ld d, e
    inc b
    xor [hl]
    ld a, [bc]
    nop
    ld hl, $4101
    ld [hl], e
    jr nz, jr_01e_6b07

Call_01e_6b03:
    adc e
    ld [bc], a
    ld e, b
    ld [hl], e

jr_01e_6b07:
    ld bc, $7905
    ld [bc], a
    rla
    inc l
    ld bc, $e705
    ld c, c
    ld [bc], a
    ld e, b
    inc bc
    or d
    inc b
    adc e
    ld h, [hl]
    ld [hl], l

jr_01e_6b19:
    ld l, h
    jr nz, jr_01e_6b20

    db $ec
    ld hl, $4d00

jr_01e_6b20:
    ld a, c
    jr nz, jr_01e_6b8b

    ld [hl], l
    ld [hl], e
    ld h, d
    dec b
    and c
    inc bc
    ld l, h
    ld h, c
    ld bc, $5603
    jr nz, jr_01e_6b94

    ld l, c
    db $76
    dec b
    ld [hl], d

jr_01e_6b34:
    ld b, d
    ld [hl], l
    ld [hl], h
    inc b
    dec b
    jr nz, jr_01e_6b40

    dec [hl]
    ld l, a
    ld l, h
    ld h, h
    inc l

jr_01e_6b40:
    ld [bc], a
    pop hl
    dec b
    dec [hl]
    inc bc
    dec [hl]
    jr nz, jr_01e_6bb0

    ld l, c
    ld [hl], e
    ld bc, $6964
    db $76
    inc bc
    and [hl]
    ld h, a
    dec b
    call c, $dc02
    ld h, a
    inc b
    xor l
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld bc, $a104
    inc bc
    add h
    ld l, $00
    ld c, b
    ld h, c
    db $76
    ld [bc], a
    ld [hl], h
    dec b
    cp b
    ld bc, $8205
    ld l, b
    ld [hl], l
    ld [hl], e

Jump_01e_6b6f:
    ld h, d
    dec b
    and c
    ccf
    jr nz, jr_01e_6bbe

    ld bc, $6e6b
    ld h, l
    ld [hl], a
    dec b
    ldh [$27], a
    ld h, h
    inc bc
    dec c
    ld bc, $1405
    nop
    inc bc
    or c
    dec b
    ld [hl], a
    inc b
    ld h, c
    ld [hl], e

jr_01e_6b8b:
    ld l, a
    ld bc, $7571
    ld l, c
    ld h, l
    ld [hl], h
    dec b
    add hl, sp

jr_01e_6b94:
    ld l, h
    ld a, c
    inc bc
    and l
    inc bc
    ld a, [hl+]
    inc bc
    nop
    ld h, l
    ld h, h
    ccf
    nop
    inc bc
    cp e
    ld [hl], e
    ld h, c
    ld a, c
    ld [bc], a
    or h
    ld [bc], a
    add hl, sp
    inc bc
    and $09
    inc bc
    ld [bc], a
    inc d
    dec b

jr_01e_6bb0:
    ld a, a
    inc bc
    ld l, [hl]
    ld [hl], e
    dec b
    call nc, $046d
    ld d, [hl]
    ld bc, $0473
    sub b
    dec b

jr_01e_6bbe:
    add sp, $61
    ld [hl], h
    inc bc
    ld a, [bc]
    ld [hl], e
    inc bc
    and h
    ld [bc], a
    sbc h
    ld [bc], a
    ld b, c
    ld [bc], a
    db $eb
    ld bc, $9c05
    ld a, c
    jr nz, jr_01e_6c34

    ld h, l
    ccf
    nop
    ld b, a
    inc b
    add hl, bc
    jr nz, @+$04

    add hl, sp
    ld bc, $7a05
    inc bc
    ld c, a
    ld [bc], a
    or d
    ld hl, $0220
    jp hl


    inc l
    ld bc, $686f
    jr nz, jr_01e_6bf0

    ld bc, $202c
    inc b

jr_01e_6bf0:
    ld h, e
    ld bc, $0d02
    ld hl, $4d00
    ld a, c
    jr nz, @+$6a

    ld [hl], l
    ld [hl], e
    ld h, d
    dec b
    and c
    ld bc, $6d03
    jr nz, jr_01e_6c67

    ld h, c
    ld l, l
    ld h, l
    ld bc, $9f04
    jr nz, jr_01e_6c74

    ld l, a
    ld l, l
    ld h, l
    ld hl, $4d00
    ld a, c
    jr nz, jr_01e_6c85

    ld l, a
    ld [hl], b
    dec b
    sbc d
    ld h, c
    ld bc, $5603
    jr nz, jr_01e_6c83

    ld l, c
    db $76
    dec b
    ld [hl], d
    ld c, b
    ld h, l
    jr nz, jr_01e_6c8f

    ld h, c
    ld h, h
    dec b
    ld a, [hl]
    ld [bc], a
    xor e
    ld bc, $6964
    db $76
    inc bc
    and [hl]
    dec b

jr_01e_6c34:
    db $fd
    ld [bc], a
    xor d
    ld l, b
    ld h, l
    jr nz, jr_01e_6c3e

    sub b
    jr nz, @+$06

jr_01e_6c3e:
    jp Jump_01e_656d


    ld bc, $0277
    db $f4
    ld l, c
    ld [hl], h
    dec b
    ld l, e
    inc bc
    and h
    ld d, e
    ld [hl], h
    dec b
    ld a, e
    ld a, c
    jr nz, jr_01e_6cb9

    ld [hl], l
    ld a, c
    dec b
    ld d, l
    nop
    dec b
    ld h, [hl]
    ld [bc], a
    db $e4
    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $ab02
    jr nz, jr_01e_6c68

    db $fd
    ld bc, $a104

jr_01e_6c67:
    ld h, h

jr_01e_6c68:
    ld h, c
    ld a, c
    ld [bc], a
    and $02
    ld [$9804], a
    inc l
    ld bc, $6f64

jr_01e_6c74:
    inc b
    dec l
    ccf
    nop
    ld d, b
    ld l, a
    ld [hl], b
    jr nz, @+$05

    ld l, l
    ld bc, $f405
    ld l, a
    db $76

jr_01e_6c83:
    ld h, l
    ld h, h

jr_01e_6c85:
    inc b
    jr nc, jr_01e_6c8d

    ld a, [hl-]
    ld [hl], e
    ld [bc], a
    pop hl
    ld l, h

jr_01e_6c8d:
    ld h, l
    ld [hl], h

jr_01e_6c8f:
    ld bc, $6e69
    inc b
    or e
    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $ab02
    ld hl, $0420
    and b
    ld c, c
    ld bc, $5f05
    ld h, d
    ld h, l
    ld [bc], a
    xor h
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld bc, $5603
    ld hl, $5200
    ld h, l
    dec b
    ld b, b
    ld l, h
    ld a, c
    inc bc
    dec l
    ld bc, $da02

jr_01e_6cb9:
    ld [hl], e
    jr nz, @+$75

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, h
    dec b
    ld a, l
    dec b
    sbc c
    ld [bc], a
    ld b, [hl]
    ld l, $01
    dec b
    ldh a, [rSC]
    xor l
    ld [hl], e
    ld l, c
    ld [hl], h
    ld bc, $0274
    db $f4
    ld l, l
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    dec b
    ld a, e
    inc l
    ld bc, $616d
    ld l, e
    inc bc
    and [hl]
    ld [bc], a
    ld c, [hl]
    dec b
    ld d, l
    nop
    dec b
    inc sp
    inc bc
    adc d
    ld l, l
    ld a, c
    ld bc, $b404
    jr nz, @+$07

    ld b, e
    ld [hl], e
    inc l
    ld bc, $0102
    ld bc, $6567
    ld [hl], h
    ld [hl], e
    jr nz, jr_01e_6d00

    or b
    inc bc

jr_01e_6d00:
    rst $20
    inc bc
    xor [hl]
    inc bc
    call $012c
    ld [bc], a
    add hl, hl
    ld [hl], e
    ld [hl], a
    ld l, c
    ld l, l
    ld hl, $0200
    ld h, c
    inc b
    rlc c
    dec b
    ld a, c
    inc b
    ld [hl], b
    inc b
    jr nc, @+$64

    inc b
    add hl, bc
    ld l, b
    ld [bc], a
    xor h
    ld [hl], a
    ld h, c
    ld a, c
    ld bc, $6f50
    ld [hl], b
    dec b
    ld c, c
    ld hl, $4900
    inc bc
    rlca
    jr nz, jr_01e_6da4

    ld [bc], a
    ld l, e
    ld h, c
    ld bc, $7263
    ld h, l
    inc bc
    ccf
    ld [bc], a
    sbc c
    ld h, e
    ld h, c
    ld l, [hl]
    inc b
    ld b, [hl]
    inc b
    ld [hl], d
    ld [bc], a
    add a
    ld [hl], e
    ld hl, $0201
    sbc h
    ld h, e
    ld [hl], d
    ld h, l
    inc bc
    ccf
    inc b
    ld h, c
    ld l, c
    ld [hl], h
    ccf
    nop
    ld c, c
    inc bc
    db $76
    dec b
    ld a, [hl]
    ld [hl], b
    ld h, l
    ld [hl], h
    dec l
    dec l
    ld bc, $d905
    inc bc
    sbc b
    ld [bc], a
    add c

Jump_01e_6d65:
    inc bc
    inc d
    jr nz, @+$07

    sbc a
    ld h, c
    ld [hl], h
    inc b
    jr nc, jr_01e_6de2

    ld l, c
    ld h, h
    ld h, l
    ld hl, $0200
    rst $28
    inc bc
    add h
    ld bc, $9403
    ld [bc], a
    jp c, $9902

    ld h, e
    ld h, c
    ld l, l
    inc bc
    add l
    inc b
    sub [hl]
    ld bc, $6163
    ld l, l
    ld h, l
    jr nz, jr_01e_6df3

    ld [hl], d
    ld l, a
    ld l, l
    ccf
    ld bc, $0349
    add a
    jr nz, @+$79

    ld h, l
    inc bc
    or h
    dec b
    sbc a
    ld [bc], a
    pop bc
    ld [hl], e
    ld hl, $0300
    cp e
    dec b

jr_01e_6da4:
    or a
    dec b
    ld a, [hl]
    ld h, d
    ld h, c
    ld h, h
    ld bc, $7567
    ld a, c
    jr nz, @+$04

    or b
    ld bc, $0102
    ld l, $01
    dec b
    ld [hl], h
    daa
    ld h, h
    jr nz, jr_01e_6dc0

    cp e
    inc b
    daa
    ld h, l

jr_01e_6dc0:
    inc l
    jr nz, jr_01e_6e0c

    daa
    ld h, h
    ld [bc], a
    sub [hl]
    dec b
    inc bc
    ld [hl], b
    dec b
    sbc e
    ld l, c
    ld [hl], h
    ld hl, $4c00
    ld h, l
    ld h, a
    dec b
    rst $38
    ld [hl], e
    dec b
    ld hl, sp+$01
    inc b
    and c
    dec b
    db $d3
    ld [hl], d
    ld [hl], h
    inc bc
    pop de
    ld [hl], h

jr_01e_6de2:
    ld [bc], a
    ld l, b
    jr nz, @+$06

    rla
    ld [hl], e
    ld bc, $6e6f
    ld [bc], a
    xor h
    dec b
    sub d
    ld hl, $0201
    or a

jr_01e_6df3:
    ld h, d
    ld l, a
    ld a, c
    dec b
    add b
    inc bc
    cp b
    dec b
    sub $02
    ldh [rSB], a
    ld [bc], a
    adc e
    ld l, c
    ld [hl], h
    jr nz, jr_01e_6e78

    inc bc
    add c
    ld bc, $2902
    inc b
    rla

jr_01e_6e0c:
    ld hl, $0300
    or c
    add hl, bc
    inc bc
    ld l, l
    ld a, c
    inc b
    xor c
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    ld bc, $0574
    ld [c], a
    dec b
    add sp, $6f
    ld l, [hl]
    ld [bc], a
    xor h
    ld h, l
    ld h, h
    ld h, a
    ld h, l
    ld bc, $7a05
    inc b
    sub [hl]
    jr nz, jr_01e_6e91

    dec b
    call c, $0173
    add hl, bc
    ld bc, $f105
    jr nz, @+$04

    ld d, e
    ld l, $01
    dec b
    ldh a, [$27]
    ld l, h
    ld l, h
    jr nz, @+$06

    sub h
    ld [bc], a
    jp nz, Jump_01e_6e61

    ld a, c
    ld [hl], a
    ld [bc], a
    db $f4
    dec b
    sbc c
    ld h, c
    ld bc, $6c66
    ld h, c
    ld [hl], e
    ld l, b
    inc bc
    sub a
    ld a, c
    inc b
    and e
    ld h, c
    jr nz, jr_01e_6ebf

    ld l, c
    ld h, a
    inc bc
    adc a

Jump_01e_6e61:
    ld hl, $0300
    cp e
    ld [hl], e
    ld h, c
    ld a, c
    ld [bc], a

Jump_01e_6e69:
    ld a, h
    dec b
    add b
    ld h, c
    jr nz, jr_01e_6e73

    ret


    ld [hl], h
    dec b

Jump_01e_6e72:
    ld [c], a

jr_01e_6e73:
    inc bc
    and $09
    inc bc
    ld [bc], a

jr_01e_6e78:
    inc d
    inc b
    jr z, jr_01e_6e81

    ld b, $64
    ld h, c
    ld a, c
    inc bc

jr_01e_6e81:
    ld a, [c]
    dec b
    jp nz, $aa04

    dec b
    call nc, $f105
    ld bc, $5302
    inc bc
    or b
    ld h, a
    ld l, a

jr_01e_6e91:
    ld bc, $6573
    ld h, l
    dec b
    dec b
    ld l, $2e
    nop
    ld c, c
    inc bc
    rlca
    ld h, h
    jr nz, @+$04

    rrca
    ld bc, $b002
    ld bc, $0102
    inc l
    ld bc, $7562
    ld [hl], h
    inc bc
    sbc h
    inc b
    sub e
    dec b
    call c, Call_01e_6874
    jr nz, jr_01e_6ebb

    sbc $2e
    ld l, $3f
    nop

jr_01e_6ebb:
    inc bc
    or c
    ld [hl], a
    dec b

jr_01e_6ebf:
    ld d, b
    jr nz, jr_01e_6ec7

    ld [hl], a
    dec b
    add b
    ld h, [hl]
    ld l, h

jr_01e_6ec7:
    ld l, a
    ld l, a
    ld h, h
    ld h, l
    ld h, h
    ld [bc], a
    xor d
    inc bc
    and b
    ld [bc], a
    rst $00
    daa
    ld [hl], h
    ld bc, $7773
    ld l, c
    ld l, l
    inc l
    inc bc
    cp d
    inc bc
    db $ed
    ld [bc], a
    db $f4
    ld h, d
    ld l, h
    ld l, a
    ld [hl], a
    inc bc
    rst $00
    ld h, d
    ld [hl], l
    ld h, d
    ld h, d
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $00
    ld d, a
    ld [bc], a
    db $dd
    ld h, l
    inc bc
    ld l, $3f
    ld bc, $0257
    db $dd
    ld [bc], a
    ld d, [hl]
    ccf
    ld bc, $0257
    db $dd
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_6f0a

    ld a, [c]
    ld bc, $056b
    ld a, e

jr_01e_6f0a:
    ccf
    ld bc, $cd02
    dec b
    ld a, [bc]
    dec b
    ld d, l
    nop
    ld d, a
    ld l, b
    ld l, a
    daa
    ld [hl], e
    ld [bc], a
    or h
    ld l, a
    dec b
    jp z, $203f

    ld d, a
    ld l, b
    ld l, a
    dec b
    add b
    ld [bc], a
    ld b, d
    ccf
    jr nz, jr_01e_6f80

    ld l, b
    ld l, a
    dec b
    sbc d
    ld [bc], a
    ld sp, HeaderManufacturerCode
    ld [bc], a
    call Call_01e_6564
    ld h, l
    ld [hl], b
    dec b
    ld d, l
    nop
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_6f88

    jr nz, jr_01e_6f44

    xor a
    ld [hl], e
    ld l, b

jr_01e_6f44:
    ld l, a
    ld [hl], a
    ld bc, $3a03
    ld h, d
    ld [hl], l
    ld h, d
    ld h, d
    ld l, h
    ld h, l
    inc bc
    or d
    ld [bc], a
    ld bc, $003f
    dec b
    inc de
    jr nz, jr_01e_6fcd

    ld [bc], a
    jr jr_01e_6f5d

    ld [bc], a

jr_01e_6f5d:
    ld a, [c]
    inc b
    ld c, l
    inc l
    ld bc, $9403

Jump_01e_6f64:
    ld l, l
    ld [bc], a
    and [hl]

Jump_01e_6f67:
    ld bc, $6e73
    ld l, a
    ld [hl], a
    ld [hl], e
    dec b
    and b
    ld l, h
    ld [hl], h
    dec b
    ld a, l
    ld [hl], e
    ld [hl], l
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    ld l, h
    ld a, c
    inc l
    ld bc, $6c66
    ld l, a

jr_01e_6f80:
    ld l, a
    ld h, h
    inc bc
    and [hl]
    inc b
    sub [hl]
    ld l, $01

jr_01e_6f88:
    ld [bc], a
    add hl, hl
    inc b
    ld b, b
    ld bc, $2f05
    ld [bc], a
    xor h
    ld l, b
    dec b
    push af
    ld hl, $0201
    db $ec
    ld [bc], a
    ei
    ld hl, $4400
    dec b
    adc b
    dec b
    call nc, $de02
    ld bc, $8b05
    ld [hl], e
    inc bc
    db $e4
    ld d, h
    ld [bc], a
    ld l, e
    ld h, c
    jr nz, jr_01e_7023

    dec b
    ld [c], a
    ld bc, $6e6f
    ld [bc], a
    xor h
    ld [hl], h
    ld l, a
    ld [hl], b
    inc bc
    pop de
    ld [bc], a
    sbc [hl]
    ld [bc], a
    xor d
    inc bc
    ld l, c
    ld [hl], h
    ld [bc], a
    jr jr_01e_6fc6

    ld [bc], a

jr_01e_6fc6:
    xor a
    inc l
    ld [bc], a
    ld a, h
    ld bc, $fe03

jr_01e_6fcd:
    jr nz, @+$70

    ld l, a
    inc bc
    rst $30
    ld l, $00
    ld c, c
    ld [hl], h
    jr nz, jr_01e_7045

    ld h, c
    ld a, c
    ld [bc], a
    xor l
    ld h, d
    inc b
    sub a
    ld [hl], d
    ld [hl], l
    ld l, l
    ld l, a
    ld [hl], d
    ld [bc], a
    adc h
    dec b
    sbc h
    ld a, c
    ld bc, $6173
    ld a, c
    jr nz, jr_01e_7063

    ld [bc], a
    ld l, e
    ld h, c
    ld bc, $6967
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01e_706f

    ld [hl], b
    ld [bc], a
    ld c, b
    ld l, l
    ld [bc], a
    and [hl]
    ld [hl], e
    ld l, $01
    ld c, b
    ld h, l
    jr nz, jr_01e_707a

    dec b
    db $10
    ld [hl], e
    jr nz, @+$75

    ld h, e
    ld h, c
    ld [hl], d
    ld a, c
    inc l
    ld bc, $7304
    ld c, c
    jr nz, jr_01e_701a

    ld e, $01
    inc b

jr_01e_701a:
    ld h, [hl]
    dec b
    dec e
    ld hl, $4900
    daa
    ld l, l
    ld [bc], a

jr_01e_7023:
    ldh [$03], a
    and [hl]
    ld l, a
    ld h, [hl]
    ld bc, $6f6d
    db $76
    inc bc
    and [hl]
    dec b
    pop hl
    inc bc
    pop de
    inc b
    sub [hl]
    ld [bc], a
    adc h
    ld c, c
    ld bc, $ea02
    inc b
    sbc b
    ld bc, $0277
    db $f4
    ld [hl], h
    ld l, a
    dec b
    ld d, l
    nop

jr_01e_7045:
    ld c, c
    ld [hl], h
    jr nz, jr_01e_70bc

    dec b
    db $10
    ld [hl], e
    inc bc
    dec c
    ld bc, $0102
    ld bc, $b405
    ld [bc], a
    or b
    ld l, $01
    inc b
    db $fc
    ld h, [hl]
    inc bc
    push de
    ld h, [hl]
    ld [hl], l
    ld l, h
    dec b
    ld d, l
    nop

jr_01e_7063:
    ld c, c
    jr nz, jr_01e_70c9

    ld h, c
    ld l, l
    ld h, l
    inc bc
    ld c, $02
    db $d3
    add hl, bc
    inc bc

jr_01e_706f:
    ld [bc], a
    daa
    add hl, bc
    nop
    ld [bc], a
    xor d
    ld [bc], a
    add hl, hl
    ld h, a
    ld h, l
    ld [hl], h

jr_01e_707a:
    inc b
    xor d
    ld h, h
    ld bc, $6f74
    inc bc
    ld [$6168], a
    db $76
    inc bc
    rst $00
    inc b
    add [hl]
    ld [bc], a
    sub d
    ld l, $00
    inc c
    jr nz, jr_01e_7093

    ld a, [hl+]
    ld h, h
    ld l, a

jr_01e_7093:
    ld [bc], a
    push de
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ld bc, $7905
    ld h, h
    ld l, a
    ld [bc], a
    adc b
    ld l, l
    ld h, l
    ccf
    ld hl, $003f
    ld b, c
    ld [hl], e
    ld [bc], a
    push de
    inc b
    sbc b
    inc l
    dec b
    ld d, [hl]
    ld l, c
    ld h, [hl]
    jr nz, jr_01e_70fc

    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]

jr_01e_70bc:
    ld bc, $9403
    ld [bc], a
    ccf
    ld bc, $8402
    ld [bc], a
    pop hl
    ld h, d
    ld [hl], l
    ld [hl], d

jr_01e_70c9:
    ld a, c
    ld bc, $9403
    ld [hl], h
    inc b
    ld a, l
    ld [bc], a
    sbc c
    ld l, b
    dec b
    push af
    ld [hl], e
    ld [bc], a
    or h
    add hl, bc
    inc bc
    ld d, e
    inc bc
    call nc, $0320
    ld de, $0473
    ld [hl], l
    ld [hl], h
    ld [bc], a
    jr jr_01e_70ea

    pop de
    ld [bc], a
    rla

jr_01e_70ea:
    ld [bc], a
    ld c, d
    ld h, e
    ld h, c
    ld [hl], e
    ld [hl], h
    inc bc
    sub l
    inc b
    ld h, b
    inc l
    ld bc, $9403
    ld h, d
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01e_70fc:
    ld [hl], h
    ld l, c
    dec b
    ld e, b
    ld h, a
    ld l, c
    ld h, [hl]
    ld [hl], h
    ld [hl], e
    inc bc
    db $e3
    ld l, [hl]
    inc bc
    ccf
    ld bc, $6203
    ld [hl], d
    ld l, a
    ld [hl], h
    inc l
    ld [bc], a
    call c, $0704
    ld l, h
    ld l, c
    db $76
    inc bc
    rst $00
    inc bc
    add hl, sp
    ld [hl], e
    jr nz, jr_01e_718f

    ld h, l
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, b
    dec b
    sbc [hl]
    nop
    inc c
    jr nz, jr_01e_7139

    ld bc, $5605
    inc bc
    ld d, b
    ld l, c
    ld [hl], e
    ld [bc], a
    or h
    inc bc
    ld [hl], l
    inc bc
    pop de
    ld [bc], a
    ld d, [hl]

jr_01e_7139:
    ld [bc], a
    sbc c
    ld c, c
    inc bc
    db $db
    jr nz, @+$07

    sbc $21
    nop
    inc c
    jr nz, @+$50

    ld l, a
    inc l
    jr nz, @+$04

    ld sp, $2021
    jr nz, jr_01e_719d

    ld l, a
    ld hl, $0c00
    jr nz, jr_01e_719c

    ld d, a
    ld b, c
    ld c, b
    inc l
    jr nz, jr_01e_71a3

    ld b, c
    ld c, b
    inc l
    jr nz, jr_01e_71a8

    ld b, c
    ld c, b
    ld hl, $0c00
    ld [hl+], a
    ld e, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld hl, $0c00
    jr nz, jr_01e_71b5

    ld l, a
    ld [hl], a
    ld l, [hl]
    inc l
    jr nz, jr_01e_7179

    ld e, $02

jr_01e_7179:
    ld a, [de]
    inc b
    db $eb
    ld [bc], a
    sbc $2c
    ld [bc], a
    or [hl]
    inc l
    ld bc, $9d04
    inc l
    jr nz, jr_01e_718a

    rst $38
    inc bc

jr_01e_718a:
    and l
    ld b, [hl]
    dec b
    add c
    inc bc

jr_01e_718f:
    sub l
    inc b
    ld h, b
    ld hl, $0f00
    ld bc, $5605
    inc bc
    inc a
    ld [hl], h
    ld [bc], a

jr_01e_719c:
    ld e, [hl]

jr_01e_719d:
    ld bc, $7a05
    ld b, h
    ld [bc], a
    rra

jr_01e_71a3:
    ld bc, $c602
    dec b
    inc e

jr_01e_71a8:
    ld [bc], a
    sbc a
    ld [hl], h
    ld [bc], a
    ld e, [hl]
    inc bc
    pop de
    inc b
    ld [bc], a
    inc l
    jr nz, jr_01e_71b9

    and c

jr_01e_71b5:
    ld [bc], a
    or h
    ld [bc], a
    ld c, e

jr_01e_71b9:
    ld [bc], a
    add l
    inc bc
    jr nc, @+$23

    nop
    inc c
    jr nz, jr_01e_71c4

    ld c, e
    ccf

jr_01e_71c4:
    jr nz, jr_01e_7214

    ld l, a
    ld hl, $0c00
    jr nz, jr_01e_7214

    ld h, c
    ld l, b
    inc l
    jr nz, jr_01e_7239

    ld h, c
    ld l, b
    ld [bc], a
    and $02
    ld [$4004], a
    inc bc
    adc h
    ld hl, $4900
    jr nz, @+$07

    pop bc
    ld [bc], a
    push de
    dec b
    sbc $01
    ld [hl], b
    ld h, c
    ld a, c
    inc bc
    and [hl]
    dec b
    ld a, c
    ld h, [hl]
    ld l, c
    ld a, b
    ld bc, $8205
    dec b
    and a
    ld l, $00
    ld [bc], a
    sub l
    ld h, h
    ld l, a
    inc b
    ld h, h
    ld h, c
    ld h, a
    dec b
    db $db
    ld l, $00
    dec b
    ld d, l
    ld c, c
    daa
    ld h, h
    inc bc
    dec c
    inc bc
    or d
    ld [hl], e
    ld h, c
    ld a, c
    inc bc
    sbc b
    ld [bc], a
    adc h
    ld c, c

jr_01e_7214:
    ld bc, $a802
    inc bc
    ld h, c
    inc b
    add sp, $01
    inc bc
    jp nc, Jump_01e_6f64

    inc bc
    ld [$0568], a
    ret nc

    ld l, $01
    rlca
    ld bc, $6853
    ld l, b
    ld hl, $0220
    sub l
    inc b
    ld l, b
    ld hl, $0200
    dec sp
    dec b
    ld h, b
    inc bc

jr_01e_7239:
    db $f4
    ld bc, $1803
    inc bc
    xor l
    jr nz, @+$75

    ld l, h
    ld h, c
    ld a, c
    ld bc, $9403
    ld h, [hl]
    inc b
    ld a, $05
    adc [hl]
    ld bc, $5903
    ld [bc], a
    sbc b
    ld [hl], d
    ld l, a
    ld h, c
    ld l, l
    ld bc, $9403
    inc b
    ld [$202e], sp
    inc bc
    inc a
    ld c, c
    ld bc, $c602
    ld h, a

Jump_01e_7263:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    inc b
    jr nc, @+$05

    jr @+$07

    jp c, $1903

    ld bc, $6f53
    jr nz, jr_01e_72da

Jump_01e_7274:
    ld h, c
    ld [hl], d
    inc l
    inc b
    dec l
    daa
    db $76
    ld h, l
    ld bc, $6c73
    ld h, c
    dec b
    sbc c
    add hl, bc
    inc b
    inc c
    ld [$0009], sp
    ld l, $00
    ld e, c
    ld [bc], a
    ld c, c
    jr nz, jr_01e_7302

    ld l, h
    dec b
    db $db
    ld bc, $0704
    ld h, [hl]
    inc b
    ld a, $05
    adc [hl]
    ld bc, $5903
    ld hl, $5320
    ld l, c
    ld [hl], d
    inc l
    ld [bc], a
    jp nz, $2404

    ld [hl], a
    inc b
    adc a
    ld a, c
    inc bc
    pop de
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, l
    ld [bc], a
    adc c
    ld l, $01
    ld d, h
    inc bc
    ld [hl-], a
    ld hl, $4800
    ld l, a
    ld [hl], a
    ld [bc], a
    push de
    ld [hl], l
    ld [hl], e
    ld h, l
    ld [bc], a
    or h
    inc bc
    jr jr_01e_72cb

    ld h, c
    ld [hl], l
    ld [hl], b
    inc bc

jr_01e_72cb:
    or d
    dec b
    ld a, h
    ld [bc], a
    adc h
    ld h, h
    ld l, a
    jr nz, jr_01e_72d9

    inc c
    dec b
    sbc a
    ld [hl], h
    ld h, l

jr_01e_72d9:
    ld l, l

jr_01e_72da:
    ld [hl], b
    ld [hl], h
    inc bc
    ld a, a
    ld h, c
    ld h, d
    ld [hl], l
    ld [hl], e
    ld h, l
    dec b
    dec b
    ld l, $2e
    nop
    ld [bc], a
    sub c
    ld l, [hl]
    ld [bc], a
    jp $0501


    ld b, d
    inc bc
    inc c
    dec b
    inc d
    nop
    inc c
    ld [hl+], a
    ld c, $c3
    inc b
    dec a
    add hl, bc
    inc bc
    inc bc
    jp c, $3803

    rlca

jr_01e_7302:
    dec bc
    inc c
    ld [hl+], a
    ld c, $c3
    ld d, h
    ld l, b
    dec l
    inc b
    call nz, Call_01e_6b03
    ld l, l
    ld a, c
    ld bc, $0109
    ld h, a
    inc b
    ld b, l
    inc bc
    db $e4
    dec b
    sbc l
    ld [bc], a
    call z, $2c03
    ld bc, $9f04
    ccf
    jr nz, @+$04

    ld de, $0021
    inc c
    ld [hl+], a
    ld c, $c3
    ld c, c
    ld l, [hl]
    jr nz, jr_01e_7394

    ld a, b
    inc bc
    cpl
    inc bc
    and l
    rlca
    add hl, bc
    ld c, $c3
    ld d, a
    ld h, l
    jr nz, jr_01e_7341

    or d
    inc bc
    cp [hl]
    add hl, bc
    inc bc

jr_01e_7341:
    ld [bc], a
    ld hl, $d402
    ld [hl], l
    ld [hl], b
    jr nz, jr_01e_73aa

    ld l, b
    ld h, l
    ld h, c
    ld h, h
    ld l, $03
    ld a, [c]
    ld h, a
    ld l, a
    inc bc
    and [hl]
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    inc l
    inc b
    db $ed
    ld [bc], a
    jp z, $d703

    ld l, l
    ld h, l
    ld bc, $2704
    ld h, l
    dec b
    add [hl]
    ld hl, $0e00
    jp Jump_01e_7745


    dec b
    sub $74
    jr nz, jr_01e_73e5

    ld l, l
    dec b
    and e
    ld [hl], e
    ld bc, $1e04
    ld l, l
    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, l
    inc bc
    and l
    ld [bc], a
    add hl, hl
    ld [hl], e
    ld [hl], h
    dec b
    and c
    ld bc, $7469
    dec b
    add [hl]
    dec b
    ld d, l
    nop
    ld c, $c3
    ld d, b

jr_01e_7394:
    inc bc
    sub [hl]
    cp b
    cp c
    inc bc
    or d
    ld [hl], b
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld l, b
    inc l
    jr nz, jr_01e_7411

    ld [hl], d
    jr nz, jr_01e_73a9

    ld h, e
    ld bc, $1803

jr_01e_73a9:
    inc bc

jr_01e_73aa:
    or b
    inc b
    db $f4
    ld bc, $0561
    jp c, Jump_01e_6e72

    ld h, c
    ld h, h
    ld l, a
    ld l, $02
    rst $00
    ld bc, $6c61
    dec b
    rst $20
    ld l, d
    ld [hl], l
    ld l, l
    ld [hl], b
    jr nz, jr_01e_7437

    ld l, l
    inc b
    inc hl
    dec b
    ld d, b
    ld [hl], e
    jr nz, jr_01e_743b

    ld [hl], d
    jr nz, jr_01e_73d4

    ret z

    ld [hl], e
    ld l, $00
    inc c

jr_01e_73d4:
    ld [hl+], a
    ld c, $c3
    inc b
    cpl
    ld l, c
    ld h, [hl]
    ld [bc], a
    push de
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $cf03
    inc l

jr_01e_73e5:
    jr nz, jr_01e_7460

    ld [bc], a
    ld e, d
    ld bc, $9f05
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20
    inc b
    sbc [hl]
    dec b
    add b
    inc bc
    dec bc
    dec b
    ld l, d
    inc bc
    rst $20
    ld a, [bc]
    nop
    ccf
    jr nz, jr_01e_7445

    ld l, a
    ld l, a
    ld l, h
    ld bc, $6a05
    ld hl, $ba03
    add hl, bc
    inc bc
    inc bc
    jp c, $2804

jr_01e_7411:
    ld c, [hl]
    ld l, c
    ld h, e
    inc bc
    add l
    inc b
    ld h, [hl]
    jr nz, jr_01e_7493

    ld h, c
    ld hl, $0501
    ld h, l
    inc l

Call_01e_7420:
    jr nz, @+$0c

    nop
    inc l
    ld bc, $9404
    ld [bc], a
    sub a
    add hl, bc
    ld bc, $0366
    ld h, b
    ld l, $01
    ld [bc], a
    dec sp
    inc bc
    cp l
    ld l, l
    ld h, l
    inc l

jr_01e_7437:
    ld bc, $8404
    dec b

jr_01e_743b:
    inc b
    ld [bc], a
    or h
    add hl, bc
    ld bc, $0366
    ld h, b
    ld l, $02

jr_01e_7445:
    xor c
    ld [hl], h
    ld [hl], d
    ld a, c
    ld bc, $6f74
    ld [bc], a
    db $e4
    dec b
    inc d
    nop
    inc c
    ld [hl+], a
    ld c, $c3
    inc b
    rst $00
    inc l
    inc bc
    add hl, bc
    inc b
    dec de
    dec b
    ld a, h
    inc bc
    or b

jr_01e_7460:
    add hl, bc
    inc bc
    ld d, e
    ld [hl], b
    ld l, a
    ld l, a
    ld l, h
    ld bc, $7753
    ld h, c
    ld l, l
    ld [hl], b
    add hl, bc
    nop
    ld l, $20
    ld b, a
    ld h, l
    ld [hl], h
    inc bc
    and $05
    add d
    ld [hl], b
    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    ld hl, $0c00
    ld [hl+], a
    ld c, $c3
    ld a, [bc]
    nop
    inc bc
    and e
    ld d, a
    ld l, a
    ld [hl], a
    ld hl, $5420
    ld l, a
    ld [bc], a
    ldh [rSB], a
    ld [hl], a
    ld h, l

jr_01e_7493:
    daa
    ld h, h
    jr nz, jr_01e_749b

    ld h, [hl]
    inc bc
    ld c, $21

jr_01e_749b:
    ld bc, $220c
    ld c, $c3
    add hl, bc
    inc bc
    ld [bc], a
    ld hl, $d402
    ld l, l
    ld a, c
    inc bc
    or l
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld [bc], a
    dec sp
    ld h, a
    ld l, a
    dec b
    db $d3
    ld [hl], l
    ld [hl], h
    ld l, b
    ld bc, $7266
    ld l, a
    ld l, l
    inc bc
    ld c, $03
    xor l
    ld bc, $0361
    cp h
    ld [bc], a
    pop hl
    inc b
    sbc a
    ld bc, $7075
    inc l
    ld [bc], a
    ld a, h
    inc b
    inc l
    ld l, c
    ld [hl], e
    ld l, $01
    ld c, c
    daa
    ld h, h
    jr nz, @+$69

    ld l, a
    ld [bc], a
    adc b
    dec b
    ld c, l
    ld bc, $7304
    ld [bc], a
    add hl, hl
    ld h, h
    ld l, a
    dec b
    cp d
    inc bc
    add hl, sp
    jr nz, jr_01e_74ef

    sub b
    inc b

jr_01e_74ef:
    jr nc, jr_01e_74fa

    ld bc, $0467
    ld b, l
    add hl, bc
    nop
    ld [bc], a
    db $76
    ld b, c

jr_01e_74fa:
    jr nz, jr_01e_7563

    ld [hl], l
    ld a, c
    inc b
    add b
    ld h, h
    ld bc, $cf03
    dec b
    jp c, Jump_01e_6b6f

    inc bc
    inc l
    ld bc, $8a03
    ld c, c
    jr nz, jr_01e_7515

    dec c
    dec b
    cp d
    ld l, l
    inc b

jr_01e_7515:
    ld h, d
    inc bc
    or b
    ld l, b
    ld l, c
    ld l, l
    ld l, $00
    inc c
    ld [hl+], a
    ld c, $c3
    inc b
    cpl
    ld l, c
    ld h, [hl]
    ld [bc], a
    push de
    ld h, d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $cf03
    inc l
    jr nz, jr_01e_75aa

    ld [bc], a
    ld e, d
    ld bc, $9f05
    ld [bc], a
    pop de
    ld hl, $0701
    rlca
    ld c, $c3
    ld [bc], a
    dec sp
    dec b
    jr nz, jr_01e_7544

    ld [hl], h

jr_01e_7544:
    ld l, a
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    dec b
    ld a, [hl]
    dec b
    ld d, b
    inc l
    ld bc, $6605
    ld [bc], a
    xor l
    ld l, d
    ld [hl], l
    ld l, l
    ld [hl], b
    ld bc, $0372
    add e
    inc b
    ld h, a
    ld l, $01
    ld c, c
    inc bc
    ld d, $63

jr_01e_7563:
    ld l, h
    dec b
    call c, $2604
    ld bc, $5005
    jr nz, jr_01e_75d2

    ld h, c
    ld [hl], e
    ld a, c
    ld l, $01

Jump_01e_7572:
    ld b, a
    ld l, c
    db $76
    ld h, l
    inc b
    inc l
    ld h, c
    jr nz, jr_01e_75ef

    ld [hl], d
    ld a, c
    ld l, $00
    ld c, $c3
    ld b, c
    jr nz, @+$07

    ret z

    inc bc
    dec c
    ld bc, $0803
    ld l, c
    ld [hl], e
    inc b
    ld h, $01
    ld l, h
    ld h, l
    ld h, c
    ld [hl], b
    ld l, $02
    xor c
    ld l, d
    ld [hl], l
    ld l, l
    ld [hl], b
    ld bc, $6669
    ld [bc], a
    push de
    dec b
    jr nz, jr_01e_75a6

    ld [hl], d
    dec b
    ld a, c
    ld l, c

jr_01e_75a6:
    ld [hl], h
    inc b
    ld c, [hl]
    inc bc

jr_01e_75aa:
    sbc $69
    ld [hl], h
    dec b
    ld a, [hl]
    ld [hl], h
    ld [hl], d
    ld a, c
    ld l, $00
    inc c
    ld [hl+], a
    inc bc
    ld e, l
    ld c, c
    jr nz, jr_01e_75bf

    ld b, d
    ld bc, $a104

jr_01e_75bf:
    inc b
    or d
    daa
    inc bc
    ld a, h
    ld hl, $0c00
    ld [hl+], a
    ld c, c
    ld h, [hl]
    inc b
    and l
    ld h, e
    inc b
    ld h, d
    inc b
    ld h, h
    inc bc

jr_01e_75d2:
    jp hl


    ld [hl], e
    dec b
    and e
    dec b
    dec sp
    ld [hl], a
    inc bc
    and d
    dec b
    sbc a
    ld [hl], d
    ld l, c
    ld h, e
    ld l, b
    dec b
    sbc [hl]
    nop
    inc c
    ld [hl+], a
    ld b, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    xor h
    add hl, bc
    inc bc
    ld b, a
    inc b

jr_01e_75ef:
    add hl, bc
    ld bc, $d804
    add hl, bc
    nop
    ld [bc], a
    ld c, d
    dec b
    ld h, e
    jr nz, jr_01e_75ff

    ld bc, $0564
    sbc [hl]

jr_01e_75ff:
    nop
    inc c
    ld [hl+], a
    ld c, $c4
    ld b, h
    ld h, l
    ld h, l
    ld hl, $4420
    ld h, l
    ld h, l
    ld hl, $0300
    ld e, l
    ld c, h
    ld h, l
    inc bc
    sbc e
    ld h, a
    ld l, a
    inc bc
    rst $20
    dec b
    ld b, [hl]
    ld [bc], a
    jr nc, jr_01e_761e

    ld [hl], b

jr_01e_761e:
    ld h, c
    ld a, c
    jr nz, jr_01e_7697

    ld [hl], e
    inc bc
    inc c
    ld l, c
    ld [hl], h
    ld hl, $3501
    ld [bc], a
    dec e
    ld hl, $0301
    adc b
    ld [bc], a
    ld c, l
    ld [$001f], sp
    ld [bc], a
    ld b, l
    ld [hl], e
    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld hl, $0401
    cpl
    dec [hl]
    ld [bc], a
    dec e
    inc bc
    push hl
    ld [hl], h
    ld l, a
    ld l, a
    jr nz, jr_01e_76ad

    ld l, b
    ld h, l
    ld h, c
    ld [hl], b
    ld hl, $4720
    ld l, c
    db $76
    ld h, l
    ld bc, $656d
    jr nz, jr_01e_768c

    jr nc, @+$05

    dec hl
    ld hl, $0301
    adc b
    ld [bc], a
    ld c, l
    ld [$0012], sp
    inc bc
    ld e, l
    dec b
    sbc l
    daa
    ld l, h
    ld l, h
    ld bc, $9305
    dec b
    jp nc, $202c

    ld l, e
    ld l, c
    ld h, h
    ld hl, $0300
    ld e, l
    ld d, e
    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    inc l
    ld bc, $696b
    ld h, h
    ld hl, $0320
    ld e, b
    ld hl, $0300
    ld c, h

jr_01e_768c:
    dec l
    ld l, b
    ld h, l
    ld h, l
    ld hl, $0301
    ld [de], a
    ld [hl], d
    ld l, c
    ld h, e

jr_01e_7697:
    ld l, b
    ld hl, $0300
    ld c, h
    dec l
    ld l, b
    ld h, l
    ld h, l
    ld hl, $5601
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01e_7718

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    inc b

jr_01e_76ad:
    and [hl]
    nop
    ld c, $c4
    inc bc
    add sp, $04
    ld h, e
    ld h, h
    jr nz, jr_01e_76bd

    dec bc
    inc b
    dec a
    ld [bc], a
    ld h, [hl]

jr_01e_76bd:
    ld l, $01
    inc bc
    ld a, [hl+]
    ld [bc], a
    adc e
    dec b
    ld a, h
    inc bc
    rst $20
    ld a, [bc]
    nop
    ccf
    jr nz, jr_01e_76d1

    ld d, a
    dec b
    add b
    ld h, c
    inc bc

jr_01e_76d1:
    ld a, h
    inc b
    add b
    inc bc
    and h
    inc b
    cpl
    inc b
    ld a, b
    inc bc
    rst $00
    ld [hl], h
    ld l, a
    ld h, h
    inc b
    xor [hl]
    ld a, [bc]
    nop
    ld bc, $7369
    inc b
    cp c
    ld [bc], a
    pop bc
    ld l, $01
    ld [bc], a
    dec sp
    dec b
    inc b
    ld [bc], a
    sbc c
    add hl, bc
    ld bc, $9a02
    inc b
    ld [hl], l
    inc bc
    add hl, bc
    ld [hl], h
    ld [hl], d
    ld a, c
    inc bc
    or b
    inc bc
    push af

Call_01e_7701:
    dec b
    and l
    inc bc
    add hl, de
    nop
    ld d, a
    ld h, l
    dec b
    db $d3
    ld l, h
    ld h, h
    inc bc
    cp [hl]
    inc bc
    ld [de], a
    ld [hl], d
    ld l, c
    ld h, e
    ld l, b
    ld hl, $0300
    or c

jr_01e_7718:
    add hl, bc
    inc bc
    ld [bc], a
    cp h
    dec b
    ld a, a
    inc bc
    ld h, d

Jump_01e_7720:
    dec b
    sbc a
    inc b
    ld bc, $2164
    nop
    inc c
    ld [hl+], a
    ld c, b
    ld l, a
    ld l, b
    dec b
    sub $20
    inc b
    ld b, d
    ld bc, $1c02
    inc bc
    ld a, h
    ld hl, $0c00
    ld [hl+], a
    ld [bc], a
    or a
    ld [bc], a
    jp c, $0121

    ld c, c
    ld [hl], h
    jr nz, @+$65

    ld h, c

Jump_01e_7745:
    ld l, l
    ld h, l
    inc bc
    or d
    ld h, c
    inc b
    ld b, h
    ld [bc], a
    or h
    dec b
    ld [hl], a
    dec l
    dec l
    ld l, c
    ld [hl], h
    dec b
    ld c, c
    ld hl, $0c00
    ld [hl+], a
    ld d, a
    ld h, l
    inc bc
    ld d, a
    inc bc
    pop bc
    ld bc, $9403
    dec b
    ld [hl], a
    ld hl, $4801
    ld h, c
    ld l, b
    ld hl, $5420
    dec b
    db $e4
    inc bc
    sbc b
    ld hl, $0300
    ld [de], a
    inc bc
    pop bc
    inc bc
    rst $00
    inc bc
    sub h
    dec b
    ld [hl], a
    ld hl, $4220
    ld [hl], l
    ld [hl], h
    ld bc, $9002
    jr nz, jr_01e_77fe

    ld h, l
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $6577
    daa
    ld [hl], d
    ld h, l
    inc bc
    adc a
    inc b
    sbc h
    ld l, $00
    ld d, h
    ld [bc], a
    ld l, e
    ld l, [hl]
    ld [bc], a
    jp $0501


    ld a, c
    ld h, [hl]
    dec b
    call c, $0504
    ld hl, $0301
    xor d
    ld h, a
    ld l, a
    inc b
    inc a
    inc b
    sub e
    ld [hl], b
    ld h, c
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    dec b
    sbc [hl]
    nop
    ld c, b
    ld l, a
    ld l, b
    ld hl, $0300
    ld a, [hl+]
    ld [bc], a
    adc e
    inc b
    and a
    dec b
    ld [hl], a
    dec b
    sbc d
    ld [hl], e
    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], h
    ld a, c
    ccf
    nop
    ld c, $c4
    ld a, [bc]
    nop
    inc bc
    and e
    inc bc
    xor $03
    add [hl]
    ld [hl], h
    ld [hl], d
    ld a, c
    inc bc
    rst $00
    ld [hl], h
    ld l, a
    ld [bc], a
    db $e4
    dec b
    inc d
    ld bc, $1203
    ld [bc], a
    pop bc
    ld [hl], e
    ld hl, $0501
    sbc l
    inc bc
    adc a
    dec b
    and b
    inc bc
    and l
    ld c, c
    inc bc
    adc a
    inc b
    dec l
    inc bc
    ld e, [hl]

jr_01e_77fe:
    ld bc, $3b02
    inc bc
    cp l
    ld l, l
    ld h, l
    inc l
    ld bc, $0405
    ld [bc], a
    sub a
    add hl, bc
    ld bc, $0366
    ld h, b
    ld l, $01
    dec b
    ld [hl], h
    inc bc
    rlca
    dec b
    dec sp
    inc bc
    add hl, bc
    dec b
    ld b, e
    ld l, $00
    ld d, a
    ld h, l
    daa
    ld [hl], d
    ld h, l
    ld [bc], a
    xor h
    dec b
    ld [hl], a
    dec b
    add b
    ld d, e
    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], h
    ld a, c
    jr nz, jr_01e_7881

    ld h, c
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld hl, $5700
    ld h, l
    jr nz, jr_01e_783e

    add $03

jr_01e_783e:
    pop bc
    ld bc, $9403
    dec b
    ld [hl], a
    ld hl, $0300
    or c
    ld [bc], a
    jp c, Jump_01e_7720

    dec b
    rst $10
    ld bc, $666f
    ld h, [hl]
    inc bc
    dec l
    inc bc
    add h
    ld l, $00
    ld c, c
    ld [hl], h
    inc b
    ld d, $73
    ld h, e
    ld h, c
    ld [hl], d
    dec b
    ld a, l
    inc bc
    jp hl


    ld [hl], d
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_78d8

    ld h, [hl]
    ld h, [hl]
    ld hl, $0500
    ld b, c
    ld [hl], a
    ld h, l
    inc bc
    sbc a
    ld bc, $c205
    jr nz, jr_01e_78e4

    ld h, l
    ld [hl], h
    inc b
    ld h, h
    ld l, d
    ld l, a
    ld [bc], a
    ld l, c
    ld d, e

jr_01e_7881:
    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], h
    ld a, c
    ld bc, $6150
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    inc bc
    ld e, [hl]
    nop
    inc bc
    ld e, l
    ld [bc], a
    ld a, $01
    ld [bc], a
    push af
    inc bc
    inc [hl]
    ld hl, $4400
    ld l, a
    jr nz, jr_01e_7918

    ld [bc], a
    ld c, c
    ld bc, $4e02
    ccf
    ld bc, $0202
    ld [$0013], sp
    ld c, c
    jr nz, jr_01e_7911

    ld l, b
    ld l, a
    ld l, l
    ld [hl], b
    jr nz, @+$79

    ld [bc], a
    cp b
    ld bc, $0370
    sub [hl]
    cp b
    cp c
    inc bc
    and h
    dec b
    ld b, c
    ld c, c
    inc b
    ld b, [hl]
    inc bc
    dec c
    ld bc, $2061
    ld h, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    dec l
    dec l
    inc b
    ld b, b
    inc b
    ld [hl], d
    ld [bc], a
    add a
    ld [hl], e
    ld l, $04
    ld [hl], c

jr_01e_78d8:
    ld bc, $5f05
    ld h, c
    ld l, h
    ld [hl], e
    ld l, a
    ld [bc], a
    db $e3
    ld bc, $656d

jr_01e_78e4:
    jr nz, jr_01e_795b

    ld [hl], e
    ld [bc], a
    and e
    add hl, bc
    ld bc, $f702
    add hl, bc
    nop
    ld l, $00
    ld c, $c4
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld [bc], a
    sbc b
    ld [hl], a
    ld h, c
    ld a, c
    ld hl, $0e00
    call nz, Call_01e_6547
    ld [hl], h
    inc b
    or e
    ld l, l
    ld a, c
    inc bc
    or l
    ld l, $00
    ld c, $c4
    inc bc
    add sp, $04
    ld h, e
    ld h, h

jr_01e_7911:
    dec b
    and b
    ld l, $01
    inc bc
    adc l
    ld [bc], a

jr_01e_7918:
    ld h, [hl]
    ld l, $01
    ld [bc], a
    ld b, h
    daa
    ld [hl], h
    inc b
    ld b, [hl]
    ccf
    ld bc, $0349
    ld d, $04
    ld b, b
    inc b
    ld b, [hl]
    ld bc, $7075
    jr nz, jr_01e_7931

    add a
    ld [hl], e

jr_01e_7931:
    ld l, $01
    dec b
    sbc l
    inc bc
    adc a
    dec b
    sbc e
    ld l, l
    ld h, l
    inc l
    ld bc, $6f6e
    ld [hl], a
    jr nz, @+$4b

    inc bc
    adc a
    inc bc
    add hl, de
    nop
    ld c, $c4
    ld [bc], a
    ld b, h
    ld [bc], a
    db $e3
    ld bc, $e903
    dec b
    add $05
    add hl, de
    ld [hl], a
    ld [bc], a
    cp b
    inc b
    xor d
    ld [bc], a
    or h

jr_01e_795b:
    add hl, bc
    ld bc, $f702
    inc b
    jr z, jr_01e_79b9

    ld h, c
    ld l, [hl]
    ld [hl], h
    inc bc
    or b
    ld [hl], h
    ld [hl], d
    ld a, c
    ccf
    nop
    ld c, $c4
    ld c, c
    jr nz, jr_01e_7975

    ld b, b
    inc b
    ld b, [hl]
    inc b

jr_01e_7975:
    ld [hl], d
    ld [bc], a
    add a
    ld [hl], e
    ld l, $01
    ld d, h
    inc b
    adc l
    ld hl, $0c00
    ld hl, $5d03
    ld b, a
    ld l, c
    db $76
    inc b
    cp b
    ld bc, $0803
    add hl, bc
    ld bc, $0362
    add $21
    nop
    inc c
    ld hl, $b103
    add hl, bc
    inc bc
    ld [bc], a
    cp h
    dec b
    ld a, a
    inc b
    ld b, l
    dec b
    call nc, $de02
    ld bc, $8b05
    ld [hl], e
    dec b
    ret c

    nop
    inc c
    ld hl, $5d03
    ld b, d
    ld h, l
    jr nz, jr_01e_7a13

    inc bc
    ld d, c
    ld bc, $696b
    ld h, h
    ld [bc], a

jr_01e_79b9:
    pop hl
    ld l, b
    inc bc
    jp hl


    ld l, c
    ld [hl], h
    ld bc, $6704
    dec l
    dec l
    ld l, a
    ld [hl], d
    inc bc
    ld c, e
    inc b
    ld h, [hl]
    dec b
    ld a, [hl]
    ld [hl], e
    ld h, c
    ld h, h
    jr nz, @+$68

    dec b
    and d
    ld hl, $0c00
    ld hl, $c50e
    inc b
    ld d, e
    ld b, a
    ld d, l
    ld c, h
    ld d, b
    ld hl, $0c00
    ld hl, $5d03
    ld c, b
    ld h, l
    jr nz, jr_01e_79ee

    and d
    dec b
    jp nc, $0021

jr_01e_79ee:
    inc c
    ld hl, $6547
    ld [hl], h
    dec b
    dec e
    ld hl, $0c00
    ld hl, $5d03
    inc bc
    ld c, h
    ld h, l
    ld hl, $0c00
    ld hl, $4c03
    ld h, l
    ld hl, $4801
    ld h, l
    inc b
    ld d, $6d
    ld h, l
    ld hl, $0c00
    ld hl, $2b02

jr_01e_7a13:
    dec b
    ld e, l
    ld h, d
    ld [hl], d
    ld h, c
    ld a, d
    ld h, l
    ld l, [hl]
    jr nz, @+$64

    dec b
    call c, $0021
    inc c
    ld hl, $4c03
    ld h, l
    ld hl, $4801
    ld h, l
    inc b
    ld d, $05
    dec bc
    ld d, a
    inc bc
    and d
    dec b
    ret nc

    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $fd04
    ld hl, $0e00
    push bc
    ld [bc], a
    sub h
    inc bc
    push bc
    inc bc
    and h
    ld c, c
    inc b
    ld d, $04
    ld a, b
    ld l, h
    dec b
    ld a, l
    inc bc
    adc d
    dec b
    sbc h
    ld a, c
    jr nz, @+$63

    ld [hl], e
    ld l, e
    dec b
    ld a, l
    inc b
    sub c
    dec b
    add d
    add hl, bc
    ld bc, $0362
    add $2e
    ld bc, $7241
    ld h, l
    inc b
    ld a, [de]
    jr nz, jr_01e_7ab7

    ld c, e
    ccf
    inc bc
    ld a, [c]
    dec b
    ld [hl], l
    jr nz, jr_01e_7adf

    ld h, [hl]
    inc bc
    call $002e
    ld b, d
    ld h, l
    dec b
    sbc $65
    jr nz, jr_01e_7af3

    ld h, l
    ld bc, $c802
    inc l
    jr nz, @+$79

    ld h, l
    inc bc
    db $76
    ld bc, $3e04
    ld [hl], d
    inc b
    ld b, b
    ld h, a
    ld h, l
    ld hl, $4701
    ld h, l
    ld [hl], h
    jr nz, @+$06

    ld a, d
    dec l
    dec l
    ld bc, $6f62
    ld [hl], h
    ld l, b
    jr nz, jr_01e_7b0e

    ld h, [hl]
    inc bc
    dec de
    nop
    dec b
    ld d, l
    ld c, c
    ld [hl], e
    inc b
    inc l
    inc b
    ld h, a
    ccf
    ld bc, $7742
    ld h, l
    ld h, l
    ld hl, $0521
    ld c, b
    jr nz, jr_01e_7abc

jr_01e_7ab7:
    dec c
    ld hl, $4e01
    ld h, l

jr_01e_7abc:
    ld a, b
    ld [hl], h
    inc bc
    ld a, [bc]
    daa
    ld l, h
    ld l, h
    inc b
    and h
    inc bc
    ld h, [hl]
    ld hl, $5201
    ld h, l
    ld [hl], h
    inc b
    add hl, bc
    inc b
    db $eb
    ld b, d
    ld [hl], a
    ld h, l
    ld h, l
    ld hl, $0e00
    push bc
    ld [bc], a
    ld de, $e202
    inc b
    cp d
    inc bc

jr_01e_7adf:
    and [hl]
    ld l, l
    ld h, l
    inc b
    inc a
    ld l, $01
    ld d, h
    dec b
    and e
    dec b
    and b
    ld [bc], a
    ld l, d
    dec b
    ld l, d
    inc bc
    and h
    ld a, [bc]
    nop

jr_01e_7af3:
    dec b
    ld d, $55
    ld l, l
    ld l, l
    ld hl, $4901
    jr nz, jr_01e_7aff

    and d
    ld h, l

jr_01e_7aff:
    ld h, h
    inc bc
    cp [hl]
    ld c, c
    inc bc
    ld d, $04
    cp d
    ld [bc], a
    jp nz, Jump_01e_6669

    ld [bc], a
    push de
    ld l, h

jr_01e_7b0e:
    ld l, c
    ld l, e
    ld h, l
    ld l, $01
    dec b
    ld [hl], h
    inc bc
    rlca
    ld [bc], a
    ld l, d
    add hl, bc
    ld bc, $9a02
    inc b
    ld [hl], l
    inc bc
    add hl, bc
    inc bc
    adc e
    inc b
    ld a, a
    dec b
    inc d
    nop
    ld c, [hl]
    ld l, a
    ld [hl], h
    dec b
    db $d3
    jr nz, jr_01e_7b95

    ld h, c
    ld [hl], e
    ld [hl], h
    ld hl, $5701
    inc bc
    and d
    ld h, a
    ld h, l
    ld [hl], h
    inc bc
    dec de
    nop
    ld c, $c5
    inc b
    xor $57
    dec b
    and d
    ld [hl], d
    inc l
    jr nz, jr_01e_7b4c

    add [hl]
    ld bc, $2e04

jr_01e_7b4c:
    ld a, c
    inc bc
    add h
    ld hl, $4901
    inc bc
    ld d, a
    dec b
    cpl
    ld bc, $fc05
    dec b
    ld a, [hl]
    ld h, [hl]
    inc bc
    push de
    dec b
    ld e, b
    dec b
    dec l
    ld hl, $5520
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    ld bc, $f905
    inc bc
    ld a, [bc]
    dec b
    ld d, l
    nop
    ld c, $c5
    ld d, e
    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $5320
    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $5401
    ld [bc], a
    ld l, e
    dec b
    ld a, b
    ld [bc], a
    sbc $01
    ld b, d
    inc bc
    add $20
    ld [hl], h
    dec b
    ld [c], a
    inc b
    ld [hl], d
    inc b
    daa
    ld h, l

jr_01e_7b95:
    ld l, $20
    inc b
    cpl
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    ld bc, $9403
    ld d, d
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_01e_7bed

    inc bc
    sbc c
    ld [hl], e
    ld bc, $c705
    jr nz, jr_01e_7c18

    ld l, [hl]
    ld [bc], a
    sub $2c
    ld bc, $2902
    ld h, e
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    inc b
    ld [hl], d
    ld [hl], h

jr_01e_7bbe:
    ld l, a
    dec b
    dec b
    ld l, $2e
    jr nz, jr_01e_7c08

    ld h, c
    ld l, [hl]
    ld bc, $026e
    jp $0520


    sbc a
    ld h, h
    dec b
    reti


    ccf
    nop
    ld c, $c5
    dec b
    sbc l
    ld [bc], a
    call z, $1905
    dec b
    ld a, b
    ld [bc], a
    sbc $20
    ld b, d
    inc bc
    add $21
    ld bc, $7349
    dec b
    jp nc, $0c03

    ld l, l
    ld h, l

jr_01e_7bed:
    ccf
    jr nz, @+$4b

    ld bc, $6168
    ld [hl], b
    ld [hl], b
    ld l, c
    ld l, h
    ld a, c
    jr nz, jr_01e_7c5b

    ld h, e
    ld h, e
    ld h, l
    ld [hl], b
    ld [hl], h
    ld hl, $5400
    ld h, c
    ld [hl], b
    jr nz, jr_01e_7bbe

    cp c
    inc bc

jr_01e_7c08:
    or b
    ld l, b
    inc b
    ld h, a
    inc l
    ld bc, $726f
    jr nz, @+$06

    ld [hl], b
    inc bc
    ld d, e
    ld bc, $6304

jr_01e_7c18:
    ld [bc], a
    adc c
    ld [bc], a
    ld [c], a
    ld h, c
    jr nz, jr_01e_7c86

    inc bc
    cp h
    jr nz, jr_01e_7c93

    dec b
    db $10
    inc bc
    and h
    inc b
    cpl
    inc b
    add [hl]
    dec b
    rst JumpTable
    inc b
    jr nc, jr_01e_7ca7

    ld h, l
    ld h, c
    ld l, e
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    inc b
    jr jr_01e_7c3b

    ld [hl], e

jr_01e_7c3b:
    ld l, b
    dec b
    add c
    ld l, a
    ld [hl], a
    jr nz, jr_01e_7c45

    call c, $e503

jr_01e_7c45:
    inc b
    xor l
    inc bc
    add hl, sp
    ld [bc], a
    adc h
    ld c, c
    ld bc, $1d04
    jr nz, jr_01e_7c54

    ld h, c
    ld h, h
    ld h, l

jr_01e_7c54:
    ld h, l
    ld [hl], b
    ld bc, $8604
    inc b
    ld c, [hl]

jr_01e_7c5b:
    ld h, d
    ld h, l
    ld bc, $7003
    ld l, $00
    dec b
    ld h, [hl]
    ld [bc], a
    ld c, h
    dec b
    cp d
    ld [hl], d
    ld l, c
    ld h, h
    ld h, l
    inc b
    or b
    inc bc
    add h
    ld l, $00
    ld c, $c5
    ld a, [bc]
    nop
    ld hl, $5720
    ld l, b
    ld a, c
    ld bc, $7261
    ld [bc], a
    ld [hl], h
    inc b
    sub l
    ccf
    ld bc, $0249

jr_01e_7c86:
    db $e4
    ld l, l
    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld bc, $6e61
    inc bc
    rrca
    dec b

jr_01e_7c93:
    call nc, $0362
    add $2c
    ld bc, $2049
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    inc bc
    sub l
    ld bc, $000a
    inc bc
    and l
    ld [bc], a
    or a

jr_01e_7ca7:
    ld h, d
    ld [hl], l
    ld [hl], e
    ld a, c
    jr nz, jr_01e_7d11

    ld h, c
    ld a, c
    ld l, $00
    ld c, $c5
    ld [bc], a
    ld de, $e202
    inc b
    cp d
    inc bc
    and [hl]
    ld l, l
    ld h, l
    inc bc
    and h
    ld a, [bc]
    nop
    dec b
    add b
    inc bc
    inc d
    inc b
    inc a
    ld [bc], a
    call c, Call_01e_4904
    ld l, $02
    rst $00
    ld bc, $ba04
    inc bc
    add hl, de
    ld bc, $7405
    inc bc
    rlca
    ld [bc], a
    ld l, d
    add hl, bc
    ld bc, $0366
    ld h, b
    inc l
    ld [bc], a
    add sp, $05
    ld b, e
    ld [bc], a
    db $e4
    dec b
    inc d
    nop
    ld c, $c5
    inc b
    ld d, e
    ld b, a
    ld d, l
    ld c, h
    ld d, b
    ld hl, $5320
    ld l, a
    jr nz, @+$76

    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    ld hl, $0301
    ld d, b
    ld [hl], a
    ld h, c
    ld [hl], e
    ld [bc], a
    rst JumpTable
    ld l, $01
    ld [bc], a
    sub h
    inc bc
    push bc
    ld l, $01
    inc bc
    add sp, $66
    dec b
    sbc e

jr_01e_7d11:
    ld l, l
    ld h, l
    inc l
    inc b
    db $ed
    inc bc
    add hl, bc
    inc b
    cp d
    inc bc
    add hl, de

jr_01e_7d1c:
    ld bc, $1307
    nop
    ld c, $c5
    dec b
    xor $20
    cp b
    cp c
    dec b
    jp c, $8902

    ld bc, $7075
    ld l, $20
    ld [bc], a
    dec sp
    dec b
    cp [hl]
    ld bc, $3403
    ld [bc], a
    adc c
    ld [bc], a
    call c, Call_01e_656c
    inc bc
    sbc e
    ld h, a
    ld l, a
    inc l
    ld [bc], a
    add sp, $70
    dec b
    db $10
    ld [bc], a
    or h
    ld h, a
    inc bc
    cp h
    ld l, $20
    ld d, h
    inc b
    adc l
    ld l, $00
    ld c, $c5
    ld c, c
    inc bc
    ld d, $05
    ld sp, $6901
    ld h, [hl]
    ld [bc], a
    push de
    ld [hl], h
    ld h, c
    ld [hl], b
    jr nz, jr_01e_7d1c

    cp c
    ld l, $01
    ld [bc], a
    dec sp
    dec b
    jr nz, jr_01e_7d8c

    ld h, c
    ld [hl], e
    ld bc, $2049
    dec b
    ld sp, $022c
    jr nc, jr_01e_7d78

    dec b

jr_01e_7d78:
    ld sp, $0420
    ld d, l
    ld bc, $6970
    ld [hl], h
    ld [hl], e
    ld l, $20
    ld d, h
    inc b
    adc l
    ld l, $00
    ld c, $c5
    inc b
    ld d, e

jr_01e_7d8c:
    ld b, a
    ld d, l
    ld c, h
    ld d, b
    ld hl, $4420
    dec b
    adc b
    ld hl, $0a01
    nop
    inc l
    ld bc, $656c
    ld [hl], h
    dec b
    sbc d
    ld h, a
    ld l, a
    ld hl, $0400
    dec a
    ld h, h
    ld h, c
    jr nz, jr_01e_7e16

    inc bc
    ld b, a
    ld bc, $6863
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$05

    rst $08
    ld hl, $0501
    sbc l
    inc bc
    db $76
    ld bc, $6f73
    ld l, l
    ld [hl], h
    daa
    dec b
    and $3f
    ld bc, $6544
    ld l, [hl]
    jr nz, @+$07

    call c, $056e
    jp nc, $e603

    ld h, h
    ld h, c
    jr nz, jr_01e_7dd9

    ld d, c
    ld hl, $0201

jr_01e_7dd9:
    ld l, h
    ld h, d
    ld h, l
    ld [hl], h
    ld bc, $080c
    ld [bc], a
    adc a
    ccf
    ld bc, $8803
    dec b
    cp e
    ld c, [hl]
    ld h, c
    ld l, b
    nop
    inc b
    pop de
    ld l, $01
    ld b, h
    ld h, c
    ld [hl], h
    inc bc
    ld l, h
    ld [hl], e
    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $00
    inc b
    pop de
    ld hl, $0301
    ld h, $04
    rlc e
    and l
    ld c, h
    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, [hl]
    jr nz, jr_01e_7e83

    ld [hl], b
    dec b
    ld c, b
    ld bc, $9a03
    jr nz, jr_01e_7e86

jr_01e_7e16:
    ld [hl], l
    ld l, [hl]
    dec b
    ld bc, $2701
    ld [hl], h
    ld l, c
    ld l, h
    inc b
    ld h, $03
    db $e3
    ld [hl], l
    ld [hl], e
    ld bc, $6567
    ld [hl], h
    ld [hl], e
    jr nz, jr_01e_7e97

    ld l, [hl]
    inc b
    cp [hl]
    ld bc, $e105
    ld [hl], h
    ld h, c
    jr nz, jr_01e_7e9a

    ld h, c
    jr nz, jr_01e_7e3d

    ld d, c
    ld l, $01
    dec b

jr_01e_7e3d:
    ld b, c
    ld l, [hl]
    ld l, a
    jr nz, jr_01e_7e46

    call z, $0121
    ld [bc], a

jr_01e_7e46:
    dec sp
    inc bc
    ldh a, [rNR41]
    ld h, h
    ld h, c
    ld bc, $7572
    ld l, h
    ld h, l
    ld [hl], e
    dec b
    jr c, jr_01e_7e81

    jr nz, jr_01e_7ebb

    ld h, c
    ld bc, $f905
    jr nz, @+$6f

    inc b
    ld h, d
    inc bc
    push hl
    inc b
    sub c
    ld [hl-], a
    ld [bc], a
    dec e
    ld l, $01
    dec b
    ld b, c
    ld l, [hl]
    ld l, a
    ld [bc], a
    inc de
    ld hl, $4f01
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01e_7edc

    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], e
    ld hl, $0201
    rlc l
    cp e
    ld b, a

jr_01e_7e81:
    ld l, a
    inc bc

jr_01e_7e83:
    sbc e
    inc c
    db $10

jr_01e_7e86:
    ld c, [hl]
    ld l, a
    nop
    inc bc
    add sp, $61
    ld l, c
    inc b
    ld l, a
    ld h, a
    ld l, a
    ld [hl], h
    ld bc, $6e65
    ld [hl], l
    ld h, [hl]

jr_01e_7e97:
    ld h, [hl]
    ld [bc], a
    adc a

jr_01e_7e9a:
    ld l, $01
    ld [bc], a
    sub l
    dec b
    inc b
    ld bc, $7274
    dec b
    db $e3
    ld [hl], e
    inc l
    jr nz, jr_01e_7f14

    ld l, c
    ld h, h
    ld l, $00
    inc bc
    add sp, $04
    ld a, d
    ccf
    ld bc, $2743
    ld l, l
    ld l, a
    ld l, [hl]
    ld hl, $4320

jr_01e_7ebb:
    daa
    ld l, l
    ld l, a
    ld l, [hl]
    ld hl, $4800
    ld a, c
    ld [hl], l
    ld l, b
    dec b
    sbc [hl]
    jr nz, jr_01e_7f12

    jr nz, jr_01e_7ed0

    dec c
    ld hl, $5901
    ld h, l

jr_01e_7ed0:
    ld [hl], d
    jr nz, jr_01e_7f39

    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], e
    inc bc
    ld b, c
    dec b
    adc [hl]
    inc l

jr_01e_7edc:
    jr nz, jr_01e_7f49

    ld l, c
    ld h, h
    ld [bc], a
    and $64
    ld h, c
    dec b
    rra
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0401
    ld e, [hl]
    ld d, h
    dec b
    db $e4
    jr nz, jr_01e_7f59

    ld h, l
    ld [hl], e
    ld h, l
    ld l, $00
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld h, l
    ld [hl], d
    jr nz, jr_01e_7f6f

    ld h, c
    ld h, h
    inc l
    jr nz, jr_01e_7f0b

    ld l, b
    ld bc, $7469

jr_01e_7f0b:
    inc bc
    or b
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_01e_7f78

jr_01e_7f12:
    ld l, c
    ld [hl], e

jr_01e_7f14:
    ld [hl], h
    ld [hl], e
    ld hl, $0701
    inc c
    inc bc
    ld a, [hl+]
    ld [hl], l
    ld h, a
    ld l, h
    ld a, c
    jr nz, jr_01e_7f27

    sbc $6d
    ld hl, $5701

jr_01e_7f27:
    ld l, b
    ld l, a
    dec b
    sbc d
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$65

    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ccf
    ld bc, $0c07
    ld e, c

jr_01e_7f39:
    ld l, a
    inc l
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [bc], a
    and $02
    ld [hl], e
    jr nz, @+$68

    inc b
    dec h

jr_01e_7f49:
    ccf
    ld bc, $6144
    jr nz, jr_01e_7fbf

    dec b
    ld c, h
    inc bc
    push hl
    inc sp
    ld [bc], a
    dec e
    ld l, $01
    rlca

jr_01e_7f59:
    ld bc, $7948
    ld [hl], l
    ld l, b
    dec b
    sub $20
    dec b
    ld l, h
    ld l, $01
    ld [bc], a
    ld b, l
    inc b
    and $21
    ld bc, $0557
    and e
    inc l

jr_01e_7f6f:
    jr nz, jr_01e_7f73

    ld l, e
    ld a, c

jr_01e_7f73:
    ld h, l
    ld [hl], d
    ld bc, $0233

jr_01e_7f78:
    dec e
    ld l, $00
    dec b
    inc [hl]
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    inc bc
    dec hl
    ccf
    ld bc, $0420
    or c
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    ld [bc], a
    ld c, l
    nop
    inc b
    pop de
    ld hl, $0301
    ld h, $04
    rlc e
    and l
    ld c, h
    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, [hl]
    jr nz, @+$77

    ld [hl], b
    dec b
    ld c, b
    ld bc, $9a03
    jr nz, @+$72

    ld [hl], l
    ld l, [hl]
    dec b
    ld bc, $2701
    ld [hl], h
    ld l, c
    ld l, h
    inc b
    ld h, $03
    db $e3
    ld [hl], l
    ld [hl], e
    ld bc, $6567
    ld [hl], h
    ld [hl], e
    jr nz, @+$6d

jr_01e_7fbf:
    ld l, [hl]
    inc b
    cp [hl]
    ld bc, $e105
    ld [hl], h
    ld h, c
    jr nz, @+$66

    ld h, c
    jr nz, jr_01e_7fd0

    ld d, c
    ld l, $01
    dec b

jr_01e_7fd0:
    ld b, c
    ld l, [hl]
    ld l, a
    jr nz, jr_01e_7fd9

    call z, $0121
    ld b, h

jr_01e_7fd9:
    ld h, c
    ld [hl], h
    jr nz, jr_01e_7fe2

    rla
    ld [hl], e
    jr nz, @+$70

    ld l, a

jr_01e_7fe2:
    ld bc, $5104
    ld [hl], e
    inc l
    jr nz, @+$70

    ld h, l
    ld l, c
    inc b
    daa
    ld hl, $0301
    add sp, $63
    ld l, b
    ld h, l
    dec b
    and d
    ld h, h
    inc l
    inc b
    db $ed
    inc bc
    sub h
    ld h, d
    ld h, l
    ld [hl], h
    db $20

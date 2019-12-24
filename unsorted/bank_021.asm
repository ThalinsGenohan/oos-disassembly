; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX

    ld l, a
    ld l, a
    ld l, [hl]
    ld bc, $6f6e
    inc b
    ld h, $02
    ld c, d
    ld [bc], a
    and h
    dec b
    inc bc
    ld [bc], a
    or h
    inc bc
    jr nc, jr_021_4016

    db $e3
    ld [bc], a
    ld c, a

jr_021_4016:
    ld l, $01
    dec b
    ei
    inc b
    dec l
    ld [bc], a
    add l
    dec b
    sbc a
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld a, c
    ld h, l
    ld h, h
    dec l
    dec l
    ld bc, $7962
    jr nz, @+$04

    ld sp, $0021
    rrca
    rra
    dec b
    ld d, [hl]
    inc bc
    or c
    ld [bc], a
    ld c, e
    ld bc, $4f02
    ld [bc], a
    ld e, b
    ld [hl], e
    inc b
    db $eb

Call_021_4043:
    ld b, c
    ld l, b
    inc l
    jr nz, @+$6a

    ld h, c
    ld l, b
    dec b
    ld d, l
    ld b, a
    ld [hl], l
    ld [hl], d
    ld h, a
    ld l, b
    ld hl, $4700
    inc bc
    ld b, [hl]
    ld hl, $4e01
    ld l, a
    ld [hl], h
    dec b
    jp hl


    jr nz, jr_021_40c0

    ld [hl], h
    inc b
    xor a
    ld hl, $4201
    ld [hl], l
    ld [hl], h
    inc bc
    cp d
    ld h, h
    dec b
    ld e, l
    ld [hl], h
    ld l, a
    ld a, c
    dec b
    ld a, e
    ld [bc], a
    adc b
    dec b
    ld a, h
    inc bc
    and e
    ld c, c
    ld [bc], a
    push bc
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], a
    ld [bc], a
    jp nz, Jump_021_796d

    inc bc
    db $f4
    jr nz, jr_021_40f3

    inc b
    dec h
    dec b
    sbc [hl]
    nop
    inc bc
    add sp, $03
    cp l
    ld h, c
    jr nz, jr_021_4096

    ei
    ld bc, $de05

jr_021_4096:
    ld [bc], a
    sub a
    dec b
    and a
    ld hl, $0300
    ld a, [de]
    inc bc
    ld [hl], e
    ld bc, $e505
    inc bc
    ld h, [hl]
    ld hl, $0500
    inc [hl]
    inc bc
    ld a, [de]
    ld h, d
    dec b
    and [hl]
    ld bc, $6168
    inc b
    db $e4
    inc bc
    ld [hl], e
    ld l, $00
    ld c, a
    ld l, a
    ld h, [hl]
    ld hl, $0220
    db $ec
    ld l, b
    ld h, l

jr_021_40c0:
    ld h, c
    db $76
    ld a, c
    ld hl, $4f00
    ld l, a
    ld h, [hl]
    ld hl, $0220
    db $ec
    ld l, b
    ld h, l
    ld h, c
    db $76
    ld a, c
    inc l
    ld bc, $1e04
    ld h, c
    jr nz, jr_021_414a

    ld l, a
    ld h, e
    ld l, e
    ld hl, $0300
    ld a, [de]
    ld h, d
    dec b
    and [hl]
    inc bc
    ld d, d
    ld h, e
    ld [hl], d
    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    inc b
    inc d
    ld l, c
    ld [hl], h
    ld l, $01
    rlca
    rlca
    inc bc

jr_021_40f3:
    ld a, [de]
    ld [hl], a
    dec b
    add c
    inc bc
    push hl
    ld h, e
    ld [hl], d
    ld h, c
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    inc bc
    or [hl]
    ld [hl], e
    inc bc
    dec c
    inc b
    ld h, h
    inc bc
    xor e
    dec b
    sbc a
    inc bc
    add d
    ld hl, $0300
    ld a, [de]
    ld [hl], h
    ld l, a
    ld [hl], d
    ld h, e
    ld l, b
    ld bc, $046e
    sub b
    jr nz, jr_021_418c

    inc b
    dec h
    dec b
    ld c, d
    nop
    dec b
    inc [hl]
    inc bc
    ld a, [de]
    ld l, b
    ld h, c
    ld [hl], e
    dec b
    cp d
    inc bc
    ld [hl], e
    ld l, $00
    ld c, a
    ld l, a
    ld h, [hl]
    ld hl, $0220
    db $ec
    ld [hl], h
    ld l, a
    ld l, a
    ld bc, $6568
    ld h, c
    db $76
    ld a, c
    inc bc
    or b
    dec b
    jr nz, jr_021_4168

    nop
    inc bc
    ld [hl], h

jr_021_414a:
    ld [bc], a
    ld h, h
    ld bc, $b405
    ld h, l
    dec b
    and d
    ld l, [hl]
    ld hl, $0300
    ld [hl], h
    add hl, bc
    ld bc, $0566
    xor h
    inc bc
    or $05
    ld d, h
    jr nz, jr_021_41c8

    dec b
    and e
    jr nz, jr_021_41cc

    ld l, h
    ld h, c

jr_021_4168:
    ld [hl], h
    ld l, $00
    ld c, c
    ld [hl], h
    ld [bc], a
    ld a, d
    dec b
    ld [bc], a

Jump_021_4171:
    ld bc, $7266
    ld l, a
    ld l, l
    ld [bc], a
    sub a
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld hl, $0200
    ld b, h
    daa
    ld [hl], h
    jr nz, jr_021_41f6

    ld h, l
    ld h, c
    ld h, h
    ld bc, $7469
    jr nz, @+$68

jr_021_418c:
    ld [hl], d
    ld l, a
    ld l, l
    inc bc
    ld c, $21
    nop
    inc bc
    ld [hl], h
    dec b
    ld d, h
    jr nz, jr_021_419c

    db $ed
    ld h, l
    ld h, e

jr_021_419c:
    ld l, b
    ld l, a
    ld h, l
    ld [hl], e
    dec b
    ld d, l
    nop
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    inc l
    inc b
    dec l
    ld l, [hl]
    ld h, a
    ld bc, $5c03
    ld h, l
    ld [hl], d
    inc bc
    and h
    inc b
    dec a
    ld h, c
    jr nz, jr_021_422f

    ld h, c
    inc b
    cp $03
    rst $00
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld h, l
    ld [hl], h
    inc l
    dec b
    push de
    ld d, e

jr_021_41c8:
    ld l, a
    ld l, e
    ld [hl], d
    ld h, c

jr_021_41cc:
    inc b
    jr z, jr_021_4210

    ld l, b
    ld l, b
    dec b
    ld d, l
    ld c, c
    jr nz, jr_021_41da

    sub d
    inc bc
    cp [hl]
    ld [bc], a

jr_021_41da:
    sbc $2c
    ld [bc], a
    or [hl]
    inc l
    ld bc, $0561
    dec h
    inc l
    jr nz, @+$04

    rst $38
    ld hl, $0301
    or c
    ld h, [hl]
    inc b
    ld a, $04
    dec [hl]
    ld bc, $2404
    ld h, e
    dec b
    add c

jr_021_41f6:
    dec b
    ld a, e
    inc bc
    dec de
    ld bc, $054d
    db $e4
    jr nz, jr_021_426e

    ld l, a
    jr nz, jr_021_4270

    ld l, c
    ld [hl], e
    inc b
    sub h
    ld hl, $0301
    or c
    ld [bc], a
    ld e, $02
    ld a, [de]
    inc b

jr_021_4210:
    ld h, c
    ld [hl], e
    ld [hl], h
    dec b
    pop de
    ld bc, $3503
    jr nz, jr_021_4283

    ld l, [hl]
    ld [bc], a
    adc d
    inc bc
    ld [hl], l
    inc bc
    and e
    ld c, c
    ld h, [hl]
    ld [bc], a
    jr nc, jr_021_4246

    inc b
    ld a, a
    inc bc
    sub h
    ld [hl], h
    inc b
    ld a, l
    inc bc
    xor l

jr_021_422f:
    ld bc, $6170
    ld a, c
    dec b
    ld a, [hl]
    dec b
    push bc
    inc bc
    or d
    inc bc
    sub h
    inc b
    dec [hl]
    dec b
    ld l, $05
    ld d, d
    ld [bc], a
    ld a, h
    ld l, $01
    ld d, e

jr_021_4246:
    inc b
    add d
    inc b
    ld a, [de]
    inc bc
    or h
    inc b
    cp d
    ld l, $20
    ld b, [hl]
    dec b
    rst $08
    ld [hl], a
    dec b
    and e
    ld hl, $4900
    ld h, [hl]
    ld [bc], a
    sbc b
    ld [bc], a
    rst $08
    ld bc, $1a02
    dec b
    ldh [$6c], a
    ld h, h
    ld [bc], a
    or h
    inc bc
    jr @+$75

    ld [bc], a
    cpl
    add hl, bc
    inc bc

jr_021_426e:
    ld d, e
    inc bc

jr_021_4270:
    call nc, $0320
    ld de, $0473
    ld [hl], l
    dec b
    ld a, h
    ld [bc], a
    db $eb
    jr nz, @+$05

    cpl
    ld bc, $0274
    jr jr_021_42a4

jr_021_4283:
    nop
    ld e, d
    ld e, d
    ld e, d
    dec b
    ld d, l
    nop
    ld d, h
    ld [bc], a
    jr jr_021_4291

    pop de
    ld [bc], a
    rla

jr_021_4291:
    inc bc
    ld l, e
    inc b
    inc hl
    dec b
    sbc c
    ld h, h
    ld l, c
    ld [hl], e
    inc b
    ld c, l
    ld l, $01
    ld [bc], a
    sbc $2c
    ld [bc], a
    or [hl]
    dec l

jr_021_42a4:
    dec l
    ld bc, $e804
    ld [bc], a
    push bc
    inc bc
    push af
    ld l, a
    ld h, [hl]
    inc b
    inc l
    dec b
    add c
    ccf
    jr nz, jr_021_42ba

    ei
    ld bc, $2049
    ld [bc], a

jr_021_42ba:
    xor b
    ld [hl], e
    ld h, l
    inc b
    xor b
    nop
    ld [bc], a
    ld b, b
    ld l, c
    ld [hl], h
    ld hl, $5900
    ld [bc], a
    ld c, c
    ld [bc], a
    or h
    ld [bc], a
    rst $08
    jr nz, @+$04

    ld a, [de]
    ld hl, $0f00
    ld bc, $0401
    cpl
    ld c, c
    inc b
    ld b, $05
    jp nc, Jump_021_5203

    inc b
    or l
    ld [bc], a
    xor h
    add hl, bc
    ld bc, $1803
    ld bc, $7a05
    ld [bc], a
    rst $38
    inc b
    jr z, jr_021_42f1

    inc de
    jr nz, jr_021_4344

jr_021_42f1:
    ld [hl], a
    ld [bc], a
    and e
    add hl, bc
    ld bc, $6f72
    ld h, h
    dec b
    add sp, $03
    ld b, d
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], b
    ld bc, $0803
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, l
    ld [hl], b
    ld l, $20
    ld c, c
    ld [hl], h
    ld [hl], e
    ld bc, $1803
    ld [bc], a
    ld c, d
    inc b
    db $f4
    ld h, l
    ld h, h
    ld hl, $4420
    ld l, a
    ld bc, $d203
    ld [hl], l
    ld [bc], a
    jr nz, jr_021_4361

    ld bc, $0702
    nop
    ld c, c
    ld h, [hl]
    ld [bc], a
    xor h
    ld [bc], a
    ld e, $02
    ld a, [de]
    inc bc
    adc c
    ld [hl], e
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld bc, $3e05
    inc bc
    dec l
    jr nz, jr_021_433f

    ld [$0301], sp
    ld e, d

jr_021_433f:
    dec b
    push de
    ld [bc], a
    add e
    inc b

jr_021_4344:
    ld [hl], l
    ld [hl], h
    ld [bc], a
    db $f4
    ld l, l
    ld [hl], l
    ld [hl], e
    ld [hl], h
    inc b
    and h
    inc bc
    rrca
    jr nz, jr_021_4357

    rst AddAToHL
    ld [hl], d
    inc b
    dec d
    ld [hl], e

jr_021_4357:
    ld bc, $5902
    add hl, bc
    inc bc
    ld [bc], a
    add hl, de
    ld bc, $0804

jr_021_4361:
    inc b
    rst $28
    ld e, c
    ld [bc], a
    ld e, d
    ld bc, $a505
    inc bc
    inc l
    ld hl, $5001
    inc bc
    dec d
    inc b
    dec l
    ld [bc], a
    add c
    inc b
    ld b, b
    jr nz, @+$69

    ld l, a
    ld [bc], a
    ld b, e
    ld [bc], a
    ld e, $02
    ld a, [de]
    ld [bc], a
    ld [hl], l
    ld l, $01
    ld d, e
    ld l, a
    inc b
    and l
    dec b
    ld [hl], c
    ld hl, $0500
    inc sp
    ld h, c
    ld [hl], e
    jr nz, jr_021_43da

    inc l
    ld bc, $0309
    ld d, e
    ld l, a
    ld l, e
    ld [hl], d
    ld h, c
    inc b
    ld [hl], l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    inc l
    ld [bc], a
    or h
    inc b
    or h
    jr nz, @+$04

    db $fc
    ld bc, $8a03
    ld h, c
    dec b
    rra
    ld bc, $0109
    ld d, b
    inc bc
    call z, $1a02
    ld bc, $e505
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    inc bc
    and h
    inc bc
    ld a, [de]
    dec b
    rla
    ld [hl], e
    ld bc, $0279
    ld e, d
    ld [bc], a
    db $e4
    ld h, c
    ld bc, $a705
    ld [hl], a
    ld h, c
    ld a, c
    ld [bc], a
    ld b, e

jr_021_43da:
    add hl, bc
    inc bc
    ld [bc], a
    add hl, de
    jr nz, jr_021_43e4

    ld [$7f05], sp
    inc bc

jr_021_43e4:
    jp hl


    ld h, a
    ld l, a
    ld [bc], a
    ld b, e
    ld [bc], a
    ld e, $02
    ld a, [de]
    ld l, $00
    ld b, $1c
    ld [bc], a
    ld bc, $4801
    ld l, a
    ld [hl], b
    ld h, l
    inc bc
    inc c
    dec b
    add c
    ld b, $1c
    ld bc, $1c06
    ld b, c
    ld l, h
    ld h, c
    ld [hl], e
    ld hl, $0201
    ld h, b
    inc b
    cp e
    jr nz, @+$06

    sub h
    ld l, [hl]
    ld hl, $1c06
    nop
    inc bc
    adc l
    inc bc
    ld e, h
    inc bc
    rst $00
    inc bc
    sub h
    inc b
    ld [$2073], sp
    ld [hl], l
    inc b
    cp $01
    add hl, bc
    inc bc
    ld c, e
    inc bc
    and [hl]
    ld e, d
    ld l, a
    ld [hl], d
    ld h, c
    inc bc
    or $04
    ld c, l
    ld [hl], e
    dec b
    jp c, $e402

    ld h, c
    ld bc, $656e
    ld [hl], a
    jr nz, @+$66

    ld l, a
    ld l, l
    dec b
    db $db
    ld [bc], a
    xor d
    ld l, [hl]
    ld l, a
    inc bc
    inc b
    jr nz, jr_021_44ad

    ld a, b
    ld h, e
    inc b
    sub b
    ld bc, $2d02
    dec b
    ld l, a
    ld [hl], e
    ld l, $01
    ld d, e
    ld l, a
    ld [bc], a
    push bc
    dec b
    ld a, h
    inc bc
    rlca
    ld bc, $8205
    ld [hl], d
    ld h, l
    inc bc
    di
    ccf
    ld bc, $0202
    nop
    ld c, c
    daa
    ld h, h
    jr nz, jr_021_44d9

    ld l, c
    ld l, e
    ld [bc], a
    ld [hl], h
    ld [hl], h
    ld l, a
    ld bc, $6804
    inc bc
    or e
    ld [bc], a
    ld b, $01
    inc bc
    jp hl


    dec b
    add d
    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    inc bc
    or d
    add hl, bc
    inc bc
    ld c, e
    inc bc
    and [hl]
    ld e, d
    ld l, a
    ld [hl], d
    ld h, c
    add hl, bc
    nop
    inc bc
    and $02
    dec l
    dec b
    ld l, a
    ld [hl], e
    ld l, $01
    ld d, l
    inc b
    db $10
    ccf
    ld bc, $0202
    nop
    dec b
    ld h, l
    dec b
    rst JumpTable
    ld [bc], a
    or h
    ld [bc], a
    db $10
    inc bc
    and h

jr_021_44ad:
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld d, l
    inc b
    db $10
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    ld de, $002e
    ld c, [hl]
    ld l, a
    ccf
    jr nz, jr_021_44c4

    ld b, b
    inc b

jr_021_44c4:
    ld a, e
    dec b
    sub e
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld l, $00
    ld c, c
    ld [bc], a
    ld a, b
    dec b
    ld a, h
    ld hl, $0201
    ld b, l
    ld a, [bc]
    nop

jr_021_44d9:
    ccf
    ld bc, $2049
    ld [hl], e
    ld h, c
    ld [hl], a
    ld [bc], a
    xor h
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld h, l
    ld bc, $9905
    add hl, bc
    inc bc
    ld c, h
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    add hl, bc
    nop
    inc l
    ld [bc], a
    pop hl
    ld c, c
    ld bc, $6168
    ld h, h
    inc bc
    or b
    inc b
    ld h, [hl]
    inc bc
    add hl, de
    ld bc, $6e49
    jr nz, jr_021_456f

    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], d
    inc bc
    db $e3
    inc b
    ld h, l
    inc b
    ld h, [hl]
    dec b
    ld a, e
    inc l
    ld [bc], a
    rst $00
    ld bc, $f103
    inc b
    dec l
    ld [bc], a
    or h
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    dec b
    ld [hl], b
    ld [hl], e
    ld [bc], a
    ld b, $01
    inc b
    push hl
    ld [bc], a
    xor h
    add hl, bc
    inc bc
    ld h, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    dec b
    ld a, a
    dec b
    sbc c
    ld [bc], a
    dec l
    ld bc, $0309
    ld b, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld a, c
    dec b
    sbc d
    ld d, a
    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    dec b
    ld a, a
    ld [hl], h
    dec b
    inc a
    dec b
    and b
    ld l, $01
    inc bc
    ld a, [hli]
    ld h, h
    ld l, a
    ld [bc], a
    push de
    ld [hl], e
    ld h, c
    ld a, c
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    dec hl
    inc bc
    db $ed
    inc bc
    and b
    jr nz, jr_021_456a

    or l
    ld [hl], e

jr_021_456a:
    ld l, a
    ld bc, $6f63
    ld l, a

jr_021_456f:
    ld l, h
    inc l
    jr nz, jr_021_457d

    nop
    ld hl, $0701
    dec bc
    inc bc
    db $fc
    ld [bc], a
    or h
    ld [bc], a

jr_021_457d:
    db $10
    inc bc
    and e
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld [bc], a
    rlc d
    ld [bc], a
    nop
    inc b
    and b
    ld [hl], a
    ld h, l
    inc bc
    ld d, $62
    ld l, a
    ld [hl], h
    ld l, b
    ld bc, $9f05
    inc b
    jp z, $0021

    inc b
    ld e, a
    ld [bc], a
    db $ec
    ld c, a
    ld c, e
    ld l, $01
    ld [bc], a
    ld [hl], c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $00
    ld [bc], a
    dec sp
    inc b
    ld l, b
    ld [bc], a
    adc d
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    dec b
    ld [hl], b
    ld [hl], e
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld e, c
    add hl, bc
    inc bc
    ld h, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    dec b
    ld a, a
    dec b
    sbc c
    ld [bc], a
    inc b
    inc l
    ld bc, $ca02
    dec b
    sbc a
    inc b
    ld b, b
    ld bc, $6168
    ld [hl], b
    ld [hl], b
    ld l, c
    ld h, l
    ld [hl], d
    ld hl, $0220
    rlc d
    ld [bc], a
    nop
    dec b
    ld c, a
    ld [bc], a
    xor h
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, a
    ld [hl], d
    ld bc, $ce04
    inc bc
    db $e3
    add hl, bc
    inc bc
    ld d, h
    ld [hl], d
    ld l, a
    ld a, c
    inc b
    ld [hl], l
    ld [bc], a
    dec l
    ld bc, $6962
    ld l, a
    ld l, h
    ld l, a
    ld h, a
    ld l, c
    ld [hl], e
    ld [hl], h
    ld hl, $4c01
    inc b
    ret z

    inc bc
    or b
    ld l, l
    ld a, c
    ld bc, $6572
    inc bc
    di
    ld hl, $0301
    adc b
    ld [bc], a
    ld c, l
    nop
    inc b
    dec a
    dec b
    ld h, e
    jr nz, jr_021_4682

    ld [hl], l
    ld [hl], e
    ld a, c
    inc l
    ld bc, $e705
    ld c, c
    inc bc
    db $76
    ld [bc], a
    push de
    ld [hl], h
    ld l, a
    ld bc, $6804
    inc bc
    or e
    ld [bc], a
    ld b, $01
    dec b
    ld a, c
    add hl, bc
    inc bc
    ld b, h
    ld [hl], d
    ld l, $20
    ld d, h
    ld [hl], d
    ld l, a
    ld a, c
    add hl, bc
    nop
    inc b
    ld [hl], d
    ld l, a
    ld l, [hl]
    dec b
    push de
    ld d, d
    ld l, a
    ld l, h
    ld l, h
    inc bc
    and [hl]
    ld d, d
    ld l, c
    ld h, h
    ld h, a
    ld h, l
    dec b
    ld a, a
    dec b
    sbc c
    ld [bc], a
    inc b
    ld hl, $0201
    ld d, a
    inc bc
    sbc b
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    dec hl
    ld l, c
    ld [hl], h
    inc bc
    and e
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld d, l
    ld [bc], a
    jr nz, jr_021_46b3

    ld bc, $0202
    nop
    inc b
    dec a
    ld h, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    inc bc
    rst $00
    ld l, a

jr_021_4682:
    ld l, [hl]
    inc bc
    dec de
    nop
    ld d, e
    ld [hl], h
    dec b
    ld a, e
    ld a, c
    dec b
    sbc [hl]
    nop
    inc b
    rra
    ld b, e
    ld h, c
    ld l, [hl]
    inc b
    sbc $01
    inc bc
    jp nc, $2061

    inc b
    ld [hli], a
    ccf
    ld bc, $0202
    nop
    add hl, bc
    inc bc
    ld c, l
    dec b
    xor [hl]
    jr nz, jr_021_46f8

    ld l, h
    ld h, l
    ld l, [hl]
    add hl, bc
    nop
    ld l, c
    ld l, [hl]
    ld bc, $2d02
    dec b

jr_021_46b3:
    push de
    ld c, h
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld bc, $6943
    ld [hl], h
    ld a, c
    add hl, bc
    nop
    inc bc
    adc c
    ld h, h
    dec b
    ld e, l
    ld [hl], e
    inc bc
    add c
    inc bc
    inc c
    dec b
    dec bc
    ld [bc], a
    ld h, d
    dec b
    pop bc
    ld bc, $6968
    ld l, l
    ld [bc], a
    adc h
    inc b
    dec a
    ld [hl], h
    ld l, a
    ld l, a
    ld bc, $6d65
    ld h, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    inc bc
    ld a, a
    ld h, h
    ld l, a
    inc b
    inc l
    ld l, l
    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    inc bc
    and l
    ld [bc], a
    ld [hl], d
    inc b
    ld l, b
    dec b

jr_021_46f8:
    dec e
    ld bc, $fd04
    ld [bc], a
    ld b, $3f
    ld bc, $0202
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [bc], a
    ld b, $04
    ld a, [$020a]
    dec b
    ld d, [hl]
    ld [bc], a
    ld [hl], d
    inc b
    ld l, b
    ld bc, $6968
    ld l, l
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    ld de, $0021
    ld c, c
    dec b
    ld c, c
    dec b
    ld h, c
    inc b
    or d
    ld l, e
    dec b
    db $d3
    dec b
    ld d, l
    nop
    ld [bc], a
    ld [hl], d
    inc b
    xor h
    ld bc, $8205
    dec b
    sub e
    ccf
    ld bc, $0202
    nop
    ld c, c
    jr nz, jr_021_4741

    ld [$6465], a
    inc bc

jr_021_4741:
    and $09
    inc bc
    ld l, h
    ld l, c
    ld h, d
    ld [hl], d
    ld h, c
    ld [hl], d
    ld a, c
    add hl, bc
    nop
    inc bc
    and $02
    inc b
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    inc bc
    ld a, [bc]
    jr nz, @+$63

    ld h, a
    ld l, a
    inc bc
    and h
    dec b
    inc sp
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_021_47b2

    ld bc, $ac04
    ld [bc], a
    ld b, $2c
    ld bc, $2049
    ld h, d
    ld h, l
    inc bc
    adc e
    inc b
    db $fd
    inc bc
    and l
    ld d, h
    ld l, a
    jr nz, jr_021_47f1

    ld h, l
    ld [hl], h
    dec b
    jp nc, $c402

    inc l
    ld bc, $0349
    db $76
    ld [bc], a
    push de
    ld [hl], h
    ld l, a
    ld bc, $ac04
    ld [bc], a
    ld b, $2e
    ld bc, $0548
    call c, Call_021_6d20
    ld a, c
    ld [bc], a
    ld b, $21
    ld bc, $e803
    ld [hl], l
    ld [bc], a
    jr nz, jr_021_47e3

    ld bc, $0202
    nop
    inc bc
    ld a, [de]
    ld [hl], a
    ld h, c
    ld [hl], e
    ld [bc], a
    ld b, $03
    and e
    ld a, [bc]

jr_021_47b2:
    ld [bc], a
    dec b
    ld d, [hl]
    ld d, l
    ld [bc], a
    jr nz, jr_021_47f8

    ld bc, $0202
    nop
    inc bc
    ld a, [de]
    dec b
    ld h, e
    inc l
    jr nz, jr_021_47c8

    ld a, e
    ld l, a
    ld l, h
    ld h, h

jr_021_47c8:
    jr nz, jr_021_483d

    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    dec b
    ld d, l
    nop
    dec b
    ld d, l
    dec b
    ld d, l
    nop
    inc bc
    ld e, l
    ld a, [bc]
    nop
    ld hl, $0401
    dec a
    ld l, [hl]
    ld l, a
    jr nz, jr_021_4847

    ld l, [hl]

jr_021_47e3:
    ld h, l
    ld l, l
    ld a, c
    ld hl, $4901
    inc bc
    rlca
    ld h, h
    dec b
    ld a, [hl]
    ld [hl], d
    dec b
    rst $08

jr_021_47f1:
    ld bc, $1002
    ld l, $20
    ld b, h
    ld l, a

jr_021_47f8:
    ld [bc], a
    jp nz, $1e03

    inc bc
    rlca
    jr nz, jr_021_4804

    or a
    ld [bc], a
    ld [bc], a
    nop

jr_021_4804:
    dec b
    ld e, d
    ld [bc], a
    ld b, $03
    push hl
    ld [hl], d
    ld h, l
    ld l, h
    dec b
    and d
    ld h, h
    ld [bc], a
    ld b, e
    ld d, h
    ld l, a
    ld l, e
    ld h, c
    ld a, c
    jr nz, jr_021_481b

    rst $20
    inc bc

jr_021_481b:
    and $02
    inc b
    ld hl, $5501
    ld [bc], a
    jr nz, jr_021_4863

    ld bc, $100c
    ld e, c
    ld h, l
    ld [hl], e
    dec b
    cp e
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    inc bc
    dec hl
    nop
    ld [bc], a
    dec hl
    ld l, c
    ld [hl], h
    inc bc
    and e

Call_021_4839:
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]

jr_021_483d:
    ld d, l
    ld [bc], a
    jr nz, jr_021_4880

    ld bc, $0202
    nop
    ld d, a
    ld h, c

jr_021_4847:
    ld [hl], e
    ld [hl], h
    ld h, l
    jr nz, jr_021_48bb

    ld h, [hl]
    inc bc
    ld a, [bc]
    ld hl, $4600
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $4900
    daa
    ld l, l
    ld [bc], a
    xor h
    ld l, l
    inc bc
    rrca
    ld bc, $7a05
    add hl, bc

jr_021_4863:
    inc bc
    ld c, l
    ld h, c
    ld l, l
    ld h, c
    ld l, l
    ld [hl], l
    jr nz, @+$5b

    ld h, c
    ld l, [hl]
    inc b
    ld [hl], l
    ld [bc], a
    dec l
    dec b
    jp c, $0170

    ld h, h
    ld l, a
    ld h, a
    jr nz, jr_021_48dd

    dec b
    ld [c], a
    ld h, h
    ld h, l
    ld [hl], d

jr_021_4880:
    inc bc
    and h
    inc bc
    ld a, [de]
    ld h, [hl]
    dec b
    and e
    ld l, a
    ld [hl], a
    dec b
    add b
    inc bc
    ld b, d
    ld [bc], a
    inc b
    inc l
    ld bc, $6f74
    ld l, a
    ld [bc], a
    adc h
    ld [hl], a
    inc b
    cp b
    ld [hl], h
    ld bc, $f402
    ld h, d
    ld a, c
    jr nz, jr_021_4904

    ld l, b
    inc b
    dec d
    ld l, $01
    ld [bc], a
    ld [hl], d
    inc b
    cp d
    dec b
    and b
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    ld [hl], d
    inc b
    ld l, b
    ld bc, $fd04
    ld [bc], a
    ld b, $03

jr_021_48bb:
    or d
    dec b
    add d
    ld h, h
    dec b

Jump_021_48c0:
    inc a
    ld h, l
    ld [hl], d
    inc l
    ld bc, $0309
    ld c, l
    ld h, c
    ld l, l
    ld h, c
    ld l, l
    ld [hl], l
    jr nz, jr_021_4928

    ld h, c
    ld l, [hl]
    add hl, bc
    nop
    inc l
    inc bc
    and $02
    inc b
    ccf
    ld bc, $0202
    nop

jr_021_48dd:
    ld d, h
    ld l, b
    ld h, l
    ld [bc], a
    ld b, $04
    ld a, [$020a]
    dec b
    ld d, [hl]
    ld c, a
    ld c, e
    ccf
    ld bc, $8803
    inc bc
    cp a
    ld [hl], h
    jr nz, jr_021_4942

    ld c, e
    nop
    ld [bc], a
    jp hl


    jr nz, jr_021_48fd

    ld l, b
    inc b
    jr nc, jr_021_4961

jr_021_48fd:
    dec b
    inc a
    ld h, l
    ld [hl], d
    ld l, $00
    ld c, c

jr_021_4904:
    inc b
    ld b, $05
    ld d, l
    nop
    ld a, [bc]
    nop
    ld hl, $4701
    inc b
    add hl, bc
    jr nz, jr_021_4986

    ld l, c
    ld l, l
    inc b
    and [hl]
    ld bc, $6143
    ld l, [hl]
    inc b
    sbc $05
    cp d
    inc b
    ld [hli], a
    inc bc
    db $e3
    dec b
    ld a, h
    ccf
    ld bc, $0202

jr_021_4928:
    nop
    ld d, h
    ld [bc], a
    ld l, e
    ld h, c
    jr nz, jr_021_499c

    ld h, c
    ld l, [hl]
    ld bc, $6a05
    ld h, h
    dec b
    push de
    ld d, h
    dec b
    ld a, e
    ld l, h
    ld h, l
    add hl, bc
    nop
    inc b
    sub e
    inc bc
    sub h

jr_021_4942:
    ld h, l
    ld h, h
    ld h, a
    inc bc
    ld l, d
    add hl, bc
    inc bc
    ld c, h
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, @+$04

    or d
    ld bc, $6877
    ld l, a
    ld [bc], a
    ldh [$73], a
    jr nz, jr_021_495f

    dec [hl]
    ld h, c
    jr nz, jr_021_49c4

    ld h, c

jr_021_495f:
    ld l, c
    ld [hl], d

jr_021_4961:
    ld a, c
    ld l, $20
    ld c, c
    inc bc
    db $76
    ld bc, $7c05
    inc bc
    or b
    inc b
    ld l, b
    dec b
    dec e
    ld bc, $0261
    ld b, $2e
    ld bc, $0255
    jr nz, jr_021_49b9

    ld bc, $0202
    nop
    ld [bc], a
    dec hl
    ld l, c
    ld [hl], h
    ld a, [hl-]
    dec b
    ld d, [hl]
    ld a, [bc]

jr_021_4986:
    ld [bc], a
    dec b
    ld d, [hl]
    ld d, l
    ld [bc], a
    jr nz, jr_021_49cc

    ld bc, $0202
    nop
    ld [bc], a
    sub l
    ld [bc], a
    ret z

    ld hl, $4f00
    ld l, b
    ld l, $20
    ld [bc], a

jr_021_499c:
    and a
    nop
    ld c, l
    ld a, c
    jr nz, jr_021_49a6

    dec d
    ld [hl], e
    ld [hl], h
    ld l, a

jr_021_49a6:
    ld [hl], d
    dec b
    add b
    ld h, h
    ld l, c
    ld h, c
    ld [hl], d
    ld a, c
    dec b
    ld hl, sp+$73
    dec b
    ldh [rSB], a
    ld h, e
    ld h, c
    ld l, l
    inc bc
    add l

jr_021_49b9:
    add hl, bc
    inc bc
    dec b
    add hl, hl
    ld bc, $024d
    and [hl]
    add hl, bc
    nop
    ld [bc], a

jr_021_49c4:
    db $d3
    ld [bc], a
    inc b
    inc bc
    db $db
    ld bc, $6761

jr_021_49cc:
    ld l, a
    ld l, $20
    dec b
    ld [hl], h
    ld [bc], a
    db $eb
    ld bc, $6604
    dec b
    dec e
    inc l
    jr nz, jr_021_4a24

    daa
    ld h, h
    ld bc, $7361
    ld l, e
    dec b
    dec e
    ld [bc], a
    or h
    dec b
    rla
    dec b
    ld a, e
    ld [bc], a
    cpl
    ld [bc], a
    db $10
    ld [bc], a
    ld c, b
    ld h, h
    ld l, c
    ld h, c
    ld [hl], d
    ld a, c
    ld l, $20
    ld b, e
    inc b
    xor e
    ld [bc], a
    jp nz, Jump_021_6572

    ld [hl], e
    dec b
    call c, $6863

Jump_021_4a02:
    inc bc
    or e
    ccf
    ld bc, $fe02
    dec b
    cp e
    inc b
    add a
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [bc], a
    ld b, $04
    ld a, [$020a]
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

jr_021_4a24:
    ld b, c
    ld [hl], b
    ld [hl], b
    dec b
    rst $08
    ld l, [hl]
    ld [hl], h
    ld l, h
    ld a, c
    inc l
    inc b
    jr nc, jr_021_4a35

    dec d
    ld [hl], e
    ld [hl], h
    ld l, a

jr_021_4a35:
    ld [hl], d
    dec b
    ld l, e
    ld [bc], a
    or h
    inc bc
    ld a, e
    ld b, l
    ld l, h
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $00
    ld e, c
    ld [bc], a
    ld c, c
    jr nz, jr_021_4ab6

    ld l, a
    ld bc, $6573
    ld l, [hl]
    inc b
    or h
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    ld l, $00
    ld c, b
    ld l, c
    inc l
    jr nz, jr_021_4a67

    nop
    ld hl, $4301
    ld h, c
    ld l, [hl]
    inc b
    sbc $03
    dec l

jr_021_4a67:
    dec l
    ld bc, $3903
    inc bc
    db $e3
    dec b
    ld a, h
    ccf
    ld bc, $0202
    nop
    ld c, c
    inc bc
    db $76
    ld [bc], a
    push de
    ld [hl], h
    ld l, a
    ld bc, $6804
    dec b
    ld a, [hl]
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    inc bc
    rst $00
    ld [bc], a
    db $10
    ld [bc], a
    ld b, e
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], e
    inc bc
    db $e3
    ld l, l
    ld a, c
    ld bc, $2204
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_021_4b00

    ld l, a
    ld l, a
    ld l, e
    inc bc
    and h
    inc bc
    or c
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], e
    inc bc
    ld b, c
    ld [hl], h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_021_4b2c

    ld l, b

jr_021_4ab6:
    ld l, a
    jr nz, jr_021_4abe

    ld d, d
    ld h, h
    ld bc, $9905

jr_021_4abe:
    ld [bc], a
    dec l
    ld bc, $0309
    ld d, e
    ld a, c
    ld l, l
    ld l, l
    ld h, l
    ld [hl], h
    ld [hl], d
    ld a, c
    jr nz, @+$45

    ld l, c
    ld [hl], h
    ld a, c
    inc b
    ld [hl], l
    ld h, d
    ld [hl], l
    ld [hl], h
    ld [bc], a
    xor h
    ld h, d
    ld l, a
    ld l, a
    ld l, e
    inc b
    ld c, e
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    dec b
    db $d3
    inc bc
    db $db
    ld bc, $6761
    ld l, a
    inc l
    inc b
    ld a, [de]
    jr nz, jr_021_4af4

    cp $01
    ld h, a

jr_021_4af4:
    dec b
    reti


    ld l, $20
    ld c, a
    ld c, e
    ccf
    ld bc, $0202
    nop
    ld d, h

jr_021_4b00:
    ld l, b
    ld h, l
    ld [bc], a
    ld b, $04
    ld a, [$020a]
    dec b
    ld d, [hl]
    ld d, l
    ld [bc], a
    jr nz, jr_021_4b4d

    ld bc, $0202
    nop
    ld [bc], a
    ld de, $0021
    ld c, a
    ld l, b
    dec b
    ld d, l
    nop
    inc bc
    ret nz

    inc l
    ld bc, $000a
    ld l, $01
    ld [bc], a
    sub h
    ld b, [hl]
    ld h, c
    ld [hl], d
    ld l, a
    ld [hl], d
    ld h, l
    inc b

jr_021_4b2c:
    ld [hl], l
    add hl, bc
    ld bc, $3f02
    ld bc, $df04
    ld [hl], e
    add hl, bc
    nop
    ld l, $20
    dec b
    ld e, d
    ld bc, $7369
    ld [bc], a
    xor h
    add hl, bc
    inc bc
    ld c, b
    dec b
    add c
    inc bc
    pop de
    inc b
    rst JumpTable
    ld [hl], e
    add hl, bc
    nop
    inc l

jr_021_4b4d:
    jr nz, @+$05

    add h
    ld bc, $0b03
    ld [bc], a
    ld [hl], $01
    inc bc
    ld h, c
    dec b
    sbc $6d
    ld l, $00
    rrca
    nop
    ld bc, $7441
    inc bc
    ld a, [bc]
    ld [hl], e
    ld [bc], a
    call c, $2d05
    ld [hl], e
    inc l
    inc b
    dec l
    ld [bc], a
    add c
    inc b
    xor h
    ld [bc], a
    adc c
    dec b
    ld e, b
    ld [bc], a
    ld [hl], $2e
    ld bc, $7441
    jr nz, jr_021_4b81

    call nz, $0a03
    ld [hl], e

jr_021_4b81:
    inc l
    ld bc, $8b03
    ld [hl], e
    ld h, l
    inc b
    cp b
    ld l, $01
    ld c, c
    inc bc
    ld d, $03
    sbc $04
    ld c, h
    ld [bc], a
    pop hl
    dec b
    sbc $6d
    ld bc, $6f74
    ld [bc], a
    add b
    ld [bc], a
    ld [hl], $21
    nop
    rrca
    nop
    ld bc, $3302
    ld h, c
    ld l, [hl]
    ld a, c
    ld bc, $3602
    ccf
    ld bc, $0202
    nop
    inc bc
    inc a
    ld h, e
    ld [bc], a
    jr z, jr_021_4bb7

    inc bc

jr_021_4bb7:
    and c
    jr nz, jr_021_4c33

    ld [bc], a
    ld c, c
    ld bc, $ac04
    ld h, h
    inc bc
    dec l
    ld l, $00
    ld [bc], a
    dec hl
    inc b
    and a
    ld [bc], a
    db $10
    ld [bc], a
    push de
    ld [hl], e
    ld h, l
    ld h, l
    ld l, e
    ld l, $00
    ld b, e
    ld [bc], a
    jr z, jr_021_4bd7

    inc bc

jr_021_4bd7:
    daa
    ld l, $00
    ld c, c
    inc bc
    ld d, $04
    ld hl, $4c04
    ld bc, $6f74
    ld [bc], a
    adc c
    dec b
    ld e, b
    ld [bc], a
    ld [hl], $02
    sbc c
    ld c, c
    jr nz, jr_021_4bf1

    and d
    inc bc

jr_021_4bf1:
    and h
    ld [bc], a
    inc sp
    inc b
    and a
    ld [bc], a
    db $10
    inc bc
    or b
    ld l, l
    ld l, a
    db $76
    inc bc
    rst $00
    ld [bc], a
    rst AddAToHL
    inc bc
    ld a, [bc]
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    and a
    jr nz, @+$07

    ld b, [hl]
    ld bc, $0263
    jr z, jr_021_4c13

    inc bc

jr_021_4c13:
    daa
    jr nz, @+$05

    and c
    ld bc, $d203
    inc b
    rlc e
    dec l
    ld bc, $3602
    ld l, $00
    inc bc
    ld [hl], h
    ld [bc], a
    ld [hl], $01
    ld [bc], a
    push af
    inc bc
    ld e, d
    ld bc, $0466
    adc a
    dec b
    rra
    ld [bc], a

jr_021_4c33:
    adc c
    ld hl, $0401
    or [hl]
    ld [bc], a
    ld [hl], l
    ld bc, $2703
    ld l, $00
    ld c, a
    ld l, [hl]
    ld h, l
    ld [bc], a
    ld b, $03
    ld d, d
    inc bc
    ld [hl], d
    jr nz, jr_021_4c4e

    cp e
    dec b
    ld b, l
    ld l, [hl]

jr_021_4c4e:
    jr nz, jr_021_4c54

    ld c, h
    ld l, $01
    ld b, a

jr_021_4c54:
    ld l, a
    inc bc
    ld b, b
    ld l, c
    ld [hl], h
    inc bc
    xor l
    ld bc, $8b03
    inc bc
    inc hl
    ld bc, $6e61
    inc bc
    rrca
    ld [bc], a
    ld b, $2e
    nop
    ld d, h
    dec b
    and e
    inc bc
    sbc b
    ld [bc], a
    ld b, $01
    dec b
    sbc c
    ld [bc], a
    inc b
    inc l
    ld bc, $6f6e
    ld [hl], h
    inc bc
    ld c, $2e
    nop
    inc bc
    add sp, $04
    jp $656d


    ld [bc], a
    adc d
    ld [bc], a
    db $10
    jr nz, jr_021_4c8d

    ld [hl], d
    ld l, $01

jr_021_4c8d:
    rlca
    dec b
    inc c
    inc hl
    ld d, e
    dec b
    ret nc

    ld [bc], a
    pop hl
    ld [hl], c
    ld [hl], l
    inc b
    or a
    jr nz, jr_021_4c9f

    cp a
    inc b
    inc b

jr_021_4c9f:
    nop
    inc c
    inc hl
    ld [bc], a
    dec sp
    ld h, h
    inc bc
    or a
    inc b
    ld h, e
    inc l
    dec b
    jp nc, Jump_021_4a02

    ld h, c
    ld [hl], e
    jr nz, @+$6b

    ld h, [hl]
    ld [bc], a
    push de
    ld [hl], h
    ld l, a
    ld l, h
    ld h, h
    ld bc, $656d
    jr nz, jr_021_4d2c

    ld l, a
    jr nz, jr_021_4cc3

    ld [hl], $2e

jr_021_4cc3:
    ld bc, $7349
    ld [bc], a
    sub a
    ld c, a
    ld c, e
    ccf
    ld bc, $0320
    cp a
    inc b
    inc b
    nop
    inc c
    jr c, jr_021_4d17

    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    or h
    jr nz, jr_021_4d21

    dec b
    and [hl]
    dec b
    call nz, $0c00
    jr c, jr_021_4d2d

    ld [hl], d
    dec b
    ret nc

    ld [bc], a
    adc b
    ld l, [hl]
    ld l, a
    ld bc, $0220
    sbc $20
    ld b, [hl]
    inc bc
    sbc c
    ld [hl], e
    nop
    inc c
    jr c, jr_021_4d4e

    ld l, a
    jr nz, jr_021_4d44

    ld [hl], l
    ld a, c
    jr nz, @+$50

    dec b
    call c, Call_021_5401
    ld l, b
    dec b
    ld [c], a
    dec b
    push de
    ld [bc], a
    add hl, de
    ld bc, $0556
    add l
    add hl, bc
    nop
    nop
    inc c
    jr c, jr_021_4d6a

    ld l, a

jr_021_4d17:
    jr nz, @+$04

    push hl
    jr nz, jr_021_4d60

    ld l, c
    db $76
    ld h, l
    ld [hl], d
    nop

jr_021_4d21:
    inc c
    jr c, jr_021_4d78

    ld l, a
    ld [bc], a
    xor h
    ld [bc], a
    push hl
    ld bc, $5320

jr_021_4d2c:
    ld l, l

jr_021_4d2d:
    ld l, c
    ld [hl], h
    ld l, b
    nop
    inc c
    jr c, jr_021_4d77

    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    ld [bc], a
    and c
    ld bc, $5520
    ld l, [hl]
    inc bc
    db $d3
    jr nz, jr_021_4d95

    ld h, c
    ld l, c

jr_021_4d44:
    ld l, h
    ld l, a
    ld [hl], d
    nop
    inc c
    jr c, jr_021_4d54

    inc bc
    ld d, e
    inc bc

jr_021_4d4e:
    call nc, $0320
    ld de, $f603

jr_021_4d54:
    jr nz, jr_021_4dad

    dec b
    and d
    ld [hl], d
    ld h, [hl]
    inc b
    rlca
    ld d, d
    ld l, a
    ld l, a
    ld l, l

jr_021_4d60:
    nop
    inc c
    jr c, jr_021_4dbb

    ld h, l
    ld [hl], e
    ld [hl], h
    dec b
    push de
    ld [bc], a

jr_021_4d6a:
    daa
    dec b
    ld a, a
    jr nz, jr_021_4d73

    pop hl
    inc b
    rst $08
    ld d, e

jr_021_4d73:
    ld l, a
    ld l, [hl]
    ld h, a
    nop

jr_021_4d77:
    inc c

jr_021_4d78:
    jr c, jr_021_4dbb

    ld h, h
    db $76
    ld l, c
    ld h, e
    ld h, l
    ld [bc], a
    ld [c], a
    dec b
    push de
    ld [bc], a
    ld e, l
    add hl, bc
    nop
    nop
    inc c
    jr c, jr_021_4ddf

    ld l, a
    jr nz, @+$4f

    dec b
    xor [hl]
    dec b
    push de
    ld d, d
    ld [hl], l
    ld [hl], l

jr_021_4d95:
    ld l, h
    add hl, bc
    nop
    nop
    ld b, h
    ld l, a
    ld [bc], a
    push de
    inc bc
    ld e, $01
    inc b
    sbc b
    ld [bc], a
    or h
    add hl, bc
    ld bc, $ab02
    inc bc
    or b
    ld h, a
    ld l, a
    inc bc

jr_021_4dad:
    rst $00
    dec b
    ld a, c
    ld c, h
    ld h, c
    ld h, d
    ld [hl], d
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    inc b
    ld d, d
    ld [bc], a

jr_021_4dbb:
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    ld bc, $030a
    nop
    ld b, [hl]
    ld h, c
    ld [hl], d
    ld l, a
    ld [hl], d
    inc b
    and d
    ld c, l
    ld h, l
    ld l, l
    ld l, a
    ld [hl], d
    ld a, c
    ld bc, $b105
    ld [bc], a
    sub a
    ld h, d
    ld l, a
    ld l, a
    ld l, e
    ccf
    ld bc, $0202
    nop
    dec b

jr_021_4ddf:
    ld d, a
    ld [bc], a
    ld b, $03
    push hl
    ld l, [hl]

Call_021_4de5:
    ld l, a
    ld [hl], h
    inc b
    inc d
    ld l, l
    ld a, c
    ld bc, $656d
    ld l, l
    ld l, a
    ld [hl], d
    ld a, c
    inc b
    ld c, [hl]
    ld c, c
    ld bc, $a802
    inc bc
    sbc $73
    ld l, b
    ld h, c
    ld [hl], b
    inc bc
    add l
    ld l, c
    ld [hl], h
    ld l, $00
    ld b, h
    xor b
    cp b
    and a
    xor e
    or h
    xor h
    xor c
    or b
    xor b
    cp b
    cp b
    and c
    and a
    cp d
    add c
    xor b
    xor c
    xor d
    cp b
    xor l
    and a
    or h
    nop
    and [hl]
    xor b
    or h
    xor c
    xor [hl]
    cp b
    xor l
    or a
    ld de, $bdb5
    rst $28
    cp [hl]
    xor c
    xor [hl]
    cp b
    cp $b2
    xor l
    ld hl, sp-$4e
    and b
    cp b
    xor l
    ldh [$bc], a
    or d
    or d

jr_021_4e38:
    cpl
    cpl
    or c
    rrca
    cp h
    or b
    cp b
    ld b, l
    ld d, h
    ccf
    ld d, h
    ld b, [hl]
    cp b
    rra
    ld a, h
    cp b
    ld sp, $3030
    jr nc, jr_021_4e7d

    ld d, d
    ret nz

    ld bc, $a230
    or d
    or e
    and d
    cp b
    ld sp, $a432
    or d
    and d
    or d
    cp b
    ld d, d
    ldh [rP1], a
    or d
    push hl
    push hl
    and l
    or e
    and d
    cp b
    scf
    inc d
    ld d, $17
    and l
    and e
    and d
    inc bc
    ld [$2fb2], sp
    cpl
    ret c

    ld a, [de]
    ld bc, $9c17
    and h
    and d
    cp b
    ld b, a
    push hl

jr_021_4e7d:
    push hl
    nop
    rst $00
    ld b, b
    jr @+$1b

    sub $a5
    and e
    and d
    cp b
    ld h, d
    ld e, b
    rst $08
    ld d, a
    rst $38
    ld bc, $3430
    and d
    or e
    and [hl]
    ld a, [de]
    ld c, $19
    jr nc, jr_021_4ed8

    or d
    ret c

    jp z, Jump_021_53cb

    and d
    and [hl]
    ld a, [de]
    inc e
    ret c

    inc b
    inc b
    ld d, e
    and d
    ld bc, $b203
    ld b, e
    ld [hl], $d0
    dec [hl]
    ld b, b
    ld b, b
    ld h, e
    or h
    ld d, e
    ld b, [hl]
    ret nc

    ld d, b
    ld d, h
    jr nz, jr_021_4e38

    ld d, e
    ld d, h
    ld b, [hl]
    and d
    or d
    or [hl]
    ld b, a
    dec c
    inc e
    or l
    and d
    ld c, b
    or d
    or [hl]
    dec d
    ret nz

    ld a, c
    ld b, b
    ld d, d
    inc e
    or l
    and e
    or [hl]
    ld d, e
    ld h, e
    ld h, d
    ld h, e
    add a
    rrca
    ld d, d
    sub b
    sub c

jr_021_4ed8:
    sub d
    sub e
    scf
    sub h
    sub l
    sub [hl]
    inc a
    ldh a, [rHDMA2]
    sub a
    jr c, jr_021_4f2e

    sbc b
    sbc c
    sbc d
    sbc e
    ld c, d
    ld hl, $4a84
    ld b, c
    xor $ef
    ld b, d
    dec [hl]
    ld [hl], $35
    ld [hl], $a5
    and l
    and l
    and l
    rlca
    jr jr_021_4f5d

    scf
    ld b, a
    ld a, [hl-]
    and l
    and l
    add hl, sp
    ld c, b
    jr c, jr_021_4f4e

    and e
    and h
    inc bc
    inc c
    ret nc

    and e
    and h
    ld c, d
    ld h, d
    scf
    ld c, d
    and e
    and h
    and e
    and h
    ld c, d
    jr c, jr_021_4f55

    and d
    scf
    ld c, c
    ld a, [hl]
    and d
    jr c, jr_021_4f54

    ldh a, [$a2]
    ld b, a
    ld c, c
    ld c, b
    jr c, jr_021_4f46

    ld c, d
    and d
    ld h, a
    rst $28
    ld l, c
    and d
    and h
    ld [hl], b
    cp h
    or e

jr_021_4f2e:
    or l
    and d
    ld c, d
    ld c, d
    ld e, $49
    scf
    ld b, a

jr_021_4f36:
    ld a, [hl-]
    cp h
    ld a, b
    cp h
    add hl, sp
    ld c, b
    ld c, e
    ld h, a
    ld h, d
    ret nc

    ld l, c
    ld h, a
    ld l, c
    ld l, h
    dec sp
    dec a

jr_021_4f46:
    cp h
    dec sp
    dec sp
    ld h, h
    ldh a, [rOBP1]
    rrca
    ld c, d

jr_021_4f4e:
    cp h
    ld b, a
    rst $38
    and d
    ld [hl], a
    and d

jr_021_4f54:
    and h

jr_021_4f55:
    and h
    adc b
    and h
    or e
    or l
    and d
    or e
    or h

jr_021_4f5d:
    or l
    ld l, $b4
    or e
    or d
    scf
    ld c, c
    rst $38
    ld c, c
    cp $bc
    ld c, b
    ei
    cp h
    xor h
    ccf
    cp h
    scf
    ld c, c
    ld hl, sp+$49
    ld a, [hl-]
    rst $08
    add hl, sp
    cp $58
    ld c, b
    ld a, h
    ld c, c
    and d
    scf
    jr c, jr_021_4f85

    and d
    ld c, d
    cp h
    rst $20
    xor h
    cp h
    ld [hli], a

jr_021_4f85:
    ld c, d
    rst $20
    and d
    and d
    scf
    cp h
    cp h
    ld b, $bc
    xor h
    ld c, d
    jr c, jr_021_4f36

    ld c, b
    ld b, a
    add hl, bc
    ld a, [hl-]
    cp h
    add hl, sp
    cp h
    ld c, e
    ld c, d
    or h
    ld [de], a

jr_021_4f9d:
    ld h, a
    cp h
    ld l, c
    ret nc

    ld l, c
    ret nc

    ld l, h
    inc a
    cp h
    ld b, a
    ld c, c
    dec sp
    dec sp
    ldh a, [rOBP1]
    cp h
    cp h
    cp h
    cp h
    inc a
    ld c, c
    ld c, b
    ld b, a
    ld e, b
    ld e, b
    di
    ld e, b
    ld e, c
    ld d, a
    ld a, b
    ld c, c
    and d
    and d
    scf
    jr c, jr_021_4fd0

    and d
    ld c, d
    rst $20
    cp h
    cp h
    inc a
    and d
    cp h
    ld c, d
    ld c, d
    cp h
    rlca
    cp h
    ld c, d
    and d

jr_021_4fd0:
    and d
    or l

Jump_021_4fd2:
    and h
    ld e, $bc
    ld c, d
    ld c, d
    and h
    and d
    ld a, b
    cp h
    ld c, c
    ld c, c
    ld c, b
    ld c, d
    db $fc
    cp h
    or h
    or d
    ldh a, [rOBP1]
    cp h
    ld c, d
    jr c, jr_021_4f9d

    rlca
    ld c, c
    ld c, b
    ld c, d
    jr c, jr_021_5047

    ld e, b
    rra
    ld e, b
    ld e, c
    ld c, d
    ld c, d
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4

Call_021_5004:
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]

jr_021_5047:
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    ccf
    db $fc
    xor l
    ld sp, $3030
    jr nc, jr_021_5047

    jp Jump_021_52ad


    ld a, [c]
    ld e, l
    rrca
    ld d, d
    ld e, a
    rst $20
    rrca
    ldh [$80], a
    rrca
    and h
    and h
    xor l
    xor l
    ld d, d
    or l
    or e
    or h
    or h
    or l
    and h
    ld d, d
    nop
    ld c, $40
    rrca
    rrca
    and d
    and b
    and c
    and d
    and b
    and c
    ld h, d
    or d
    or c
    or d
    or c
    jr c, @-$1e

    ld d, h
    or d
    or c
    ld b, l
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    ld b, l
    ld a, b
    ldh [$ad], a
    jr nc, jr_021_50c2

    inc [hl]
    ld sp, $3030
    rrca
    rrca
    ld d, e
    inc a
    ldh a, [rIF]
    xor l
    ld d, d
    ld d, e
    xor l
    xor l
    xor l
    xor l
    ld d, d
    ret nz

    inc bc
    rrca
    ld d, e
    and h
    xor l
    xor l
    xor l
    ld d, d
    ld d, e
    or h
    or l
    and h
    or e
    ld e, c
    nop
    inc a
    ld d, h
    adc $57
    ld b, b
    ld b, b
    ld h, e
    and c
    and d
    and b
    and c
    ld b, l
    ld b, [hl]
    or c

jr_021_50c2:
    ldh a, [$c0]

Call_021_50c4:
    ld d, h
    or d
    or c
    or d
    ld b, l
    ld b, [hl]
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld b, l
    rra
    jr nc, jr_021_5106

Jump_021_50d2:
    xor l
    xor l
    inc e
    rrca
    xor l
    xor l
    db $ec
    ld l, a
    ld d, e
    rrca
    xor l
    rrca
    rrca
    ld l, a
    ld l, [hl]
    inc e
    xor l
    ld h, h
    ld d, e
    and l
    rrca
    ld e, [hl]
    ret nz

    jr nc, jr_021_514f

    ld h, h
    ld c, l
    ld d, e
    xor l
    ld sp, $401f
    ld h, e
    and h
    ld d, d
    nop
    ld de, $540f
    ld b, [hl]
    cp e
    cp h
    cp l
    ld l, e
    sub b
    ld d, h
    and b
    ld d, d
    rrca
    ld de, $4546

jr_021_5106:
    jr nc, jr_021_5117

jr_021_5108:
    ld b, [hl]
    ld l, e
    or c
    ld d, d
    ld d, h
    ld b, [hl]
    ret nz

    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld l, e
    ld [hl], d
    ld h, d
    rlca

jr_021_5117:
    dec de
    xor l
    ld sp, $3030
    jr nc, jr_021_5152

    and h
    ld d, d
    rrca
    rrca
    ld bc, $0f07
    ld d, e
    xor l
    xor l
    or h
    or l
    and h
    ld d, d
    ld d, e
    xor l
    xor l
    jr nc, jr_021_5161

    inc b
    ld de, $300f
    ld [hl-], a
    xor b
    ret nc

    ld e, h
    xor l
    and h
    ld l, [hl]
    di
    ld l, l
    ld d, e
    ret nc

    ld l, e
    jr c, @-$7e

    ld h, h
    and l
    or h
    ld e, [hl]
    ld e, l
    ld d, e
    ret nc

    ld l, e
    and c
    and d
    rrca
    ld e, a

jr_021_514f:
    ld c, [hl]
    ld b, b
    ld [bc], a

jr_021_5152:
    ld e, b

Jump_021_5153:
    ld e, l
    ld d, e
    ret nc

    ld l, e
    or d
    or c
    adc $57
    adc $5a
    ret nc

    ld l, e
    add d
    ld [hl], d

jr_021_5161:
    rrca
    ld a, $ad
    ld sp, $3030
    jr nc, jr_021_519d

    ld d, d
    rst $20

jr_021_516b:
    ld hl, sp-$20
    xor l
    xor c
    xor d
    ld d, e
    ld d, d
    rrca
    cp c
    cp d
    ld d, e
    jr c, jr_021_5178

jr_021_5178:
    rrca
    and h
    ld sp, $5352
    inc [hl]
    or l
    and l
    or h
    ld d, d
    ld h, d
    ld e, b
    adc $57
    jr nz, jr_021_5108

    ld d, d
    ld h, e
    ld d, e
    and b
    and c
    and d
    ld d, b
    add sp, $54
    ld d, h
    ld d, c
    ld d, e
    or d
    or c
    or d
    rra
    ld a, h
    rrca
    ld d, e
    add d
    ld [hl], d

jr_021_519d:
    add d
    ld d, d
    ld d, e
    ld a, d
    nop
    ld d, h
    ld b, l
    and a
    and a
    ld d, c
    ld h, l
    ld b, a
    ld d, $a7
    jp Jump_021_7473


    ld b, d
    ld [$c3a7], sp
    inc b
    ld h, h
    ld d, d
    ld c, $c3
    add e
    add h
    jp $b3b5


    ld d, d
    ld c, $00
    and b
    add hl, de
    or a
    jp $1715


    jp $a4b7


    and d
    ld d, d
    dec de
    dec de
    sbc h
    jr jr_021_516b

    ret nz

    ld bc, $a41b
    or d
    ld d, d
    sub [hl]
    sub [hl]
    ld a, [de]
    inc e
    and l
    and d
    ld d, d
    rlc h
    ld c, h
    add b
    pop hl
    ld b, b
    ret nc

    ret nc

    ld c, e
    inc b
    inc b
    and l
    ld h, d
    ld h, e
    ret nc

    ret nc

    ld h, d
    or h
    db $d3
    ld d, h
    jr nc, jr_021_5237

    and c
    and c
    ld h, h
    ld d, b
    or c
    ld b, $00
    ld d, h
    or c
    ld l, c
    and [hl]
    inc b
    rra
    jr nz, jr_021_5222

    inc de
    inc l

Jump_021_5203:
    jr jr_021_5212

    ld d, d
    and d
    and [hl]
    jr nz, jr_021_524a

    dec c
    ld [hli], a
    inc hl
    inc h
    jr jr_021_5226

    dec de
    ld d, d

jr_021_5212:
    or d
    and d
    or e
    or e
    and [hl]
    ld a, [de]
    add hl, de
    inc [hl]
    ldh [$b2], a
    ret c

    ld d, d
    and d
    and d
    and [hl]
    ld a, [de]

jr_021_5222:
    inc e
    ret c

    ld d, d
    and d

jr_021_5226:
    ld bc, $b21e
    and d
    or e
    and [hl]
    and a
    ld d, d
    ld b, d
    and d
    and d
    and d
    and a
    ld d, d
    db $e3
    add hl, bc
    ld d, h

jr_021_5237:
    and c
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld l, d
    or c
    ld d, c
    or l
    or d
    ld b, c
    sbc [hl]
    or d
    or e
    and [hl]
    ld c, b
    ld d, e
    or l
    and d
    and d

jr_021_524a:
    ld d, e
    ld d, e
    inc a
    cp h
    or d
    and d
    and d
    or h
    ld d, e
    ld d, e
    and a
    and d
    ldh [$85], a
    or d
    and d
    ld d, e
    ld d, e
    and a
    and d
    and d
    ld d, e
    ld d, e
    and a
    and h
    rla
    inc a
    or d
    and d
    ld d, e
    ld d, e
    and a
    and h
    and d
    or h
    ld d, e
    ld bc, $4a06
    xor d
    or e
    or h
    ret nc

    ret nc

    or e
    or h
    xor d
    xor d
    xor b
    xor b
    and l
    and l
    ret nz

    rrca
    xor [hl]
    xor c
    xor c
    xor d
    ld c, d
    ld c, d
    xor l
    xor e
    ld c, d
    ld c, d
    cp l
    nop
    ld c, d
    xor h
    cp b
    cp [hl]
    cp d
    cp d
    cp [hl]
    cp c
    cp e
    ld c, d
    ld c, d
    xor b
    and l
    and l
    xor c
    ld b, $18
    ld c, d
    xor h
    cp h
    and l
    cp h
    and l
    and l
    cp h
    and l
    cp h
    xor b
    xor b
    xor b
    inc e
    ld [hl], b
    xor c

Jump_021_52ad:
    and l
    and l
    ld c, d
    ld c, d
    xor b
    xor b
    xor b
    and l
    and l
    ld c, d
    add hl, bc
    ld c, d
    ld h, h
    rrca
    cp h
    ld d, a
    ld e, b
    ld e, b
    inc h
    ld c, d
    ld e, b
    ld e, b

Jump_021_52c3:
    di

Call_021_52c4:
    rrca
    cp h
    ld h, a
    rrca
    ld l, b
    ld c, d
    di
    ld h, h
    ld c, d
    ccf
    cp h
    ld c, d
    di
    db $fc
    cp h
    di
    ld c, d
    ret nz

    cp h
    ld c, d
    ld h, h
    di
    ld b, a
    ld c, c
    jr c, jr_021_52e1

    cp h
    ld c, d
    di

jr_021_52e1:
    di
    ld h, a
    ld l, b
    ld c, e
    inc c
    ld c, c
    cp h
    add hl, sp
    ld c, d
    cp d
    dec sp
    call nz, Call_021_6830
    cp e
    ld l, h
    ret nc

    ld h, a
    ld c, d
    cp c
    ld hl, sp-$44
    ld c, d
    cp d
    xor c
    ld hl, sp+$0f
    ld l, b

Call_021_52fd:
    ld e, b
    ld e, b
    ld e, c
    ld l, c
    rrca
    rrca
    rrca
    and [hl]
    dec c
    rrca
    ld h, h
    ld [hl], b
    xor c
    di
    ld h, h
    ld [hl], b
    ld [hl], d
    cp h
    cp d
    ld d, $02
    rrca
    di
    ld h, h
    cp a
    add b
    add c
    xor c
    ld h, h
    ld h, h
    scf

Call_021_531c:
    ld c, c
    ld a, [hl-]
    call z, $1880
    ld l, b
    add hl, sp
    ld c, c
    ld c, c
    jr c, jr_021_538b

    rrca
    ld c, d
    cp l
    sub l
    cp [hl]
    ld c, d
    xor b
    xor c
    ld a, b
    jp $4abc


    rrca
    xor e
    ld c, d
    ld c, d
    rrca
    xor c
    xor c
    ld c, a
    ld l, b
    ld l, c
    ld h, a
    or [hl]
    ld hl, sp+$0f
    xor $b7
    ld [hl], c
    pop bc
    rrca
    ld [hl], b

Jump_021_5347:
    ld [hl], c
    ld [hl], b
    add d
    ld [hl], c
    rlca
    rrca
    add b
    add d
    ld [hl], d
    add b
    add c
    ccf
    rrca
    add b
    add d
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, @+$1e

    ld l, b
    ld [hl], b
    ld [hl], d
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    add b
    add c
    cp c
    ld b, a
    cp h
    ld c, d
    cp d
    xor c
    xor c
    call c, $0fbc
    xor c
    ld c, d
    ld a, a
    ld l, b
    ld l, c
    ld hl, sp+$0f
    ld c, d
    ld c, d
    ld [hl], c
    db $e3
    rrca
    ld c, d
    ld c, d
    add c
    adc c
    rrca
    ld [hl], b
    ld [hl], c
    ld c, d
    ld c, d
    ld [hl], c
    daa
    rrca

jr_021_538b:
    add b
    add c
    ld c, d
    ld c, d
    db $fc
    rrca
    add d
    ld [hl], c
    ldh [rIF], a
    ld c, d
    ld c, d
    add b
    add c
    cp e
    inc c
    ld c, d
    cp a
    rrca
    xor d
    cp d
    xor c
    scf
    ret nz

    cp h
    ld c, c
    ld a, [hl-]
    call z, Call_021_4839
    ld c, d
    add d
    ld c, d
    cp h
    ld e, b
    xor l
    sub h
    xor [hl]
    ld e, c
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4

Call_021_53c3:
    db $f4

Call_021_53c4:
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4

Jump_021_53cb:
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28

Jump_021_53e5:
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4

Call_021_5401:
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    ld e, $30
    ld h, a
    ld l, b
    ld b, l
    ld d, h
    ld a, b
    rrca
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ldh [rIF], a
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld d, d
    add c
    rrca
    jr c, @+$52

    add sp, $54
    ld d, h
    ld d, d
    rla
    rrca
    ld h, $5e
    inc b
    ld h, h
    ret nz

    rrca
    ld h, d
    ld b, b
    ld [hl], $d0
    dec [hl]
    ld c, d
    sub b
    ld d, c
    ld c, [hl]
    ld h, h
    ld b, l
    ld d, h
    ret nc

    ld d, b
    push hl
    rrca
    ld de, $475f
    cpl
    rrca
    ld de, $4062
    rrca
    ld b, b
    ld b, d
    rrca
    rrca
    rrca
    ld a, b
    jr nc, jr_021_54a4

    ld d, h
    ld b, [hl]
    ld b, l
    rlca

Jump_021_5454:
    ld d, h
    add sp, $46
    ld de, $095e
    inc a
    ld d, h
    ld a, [$5145]
    ld de, $5430
    ld l, [hl]
    add hl, bc
    ld a, [$6450]
    ld l, l
    ldh a, [$fa]
    ld l, a
    ld l, [hl]
    inc b
    add hl, bc
    ld e, $04
    ld h, h
    add hl, bc
    ld a, [$0cfa]
    ld e, a
    ld a, [$4efa]
    ld h, h
    inc b
    ld c, h
    ld d, b
    rrca
    rst $38
    ld c, e

jr_021_5480:
    ld a, [$11fa]
    ld e, a
    jr nc, jr_021_5480

    ld e, a
    ld d, e
    rst $38
    ld d, d
    ld de, $c60f
    ld b, b
    ld b, e
    ld h, e
    rst $38
    ld h, d
    ret nz

    jr nc, jr_021_54e9

    ld b, [hl]
    or [hl]
    or a
    cp b
    ld l, e
    ret nc

    ld l, e
    jr nc, @+$6a

    ld d, h
    ld b, [hl]
    xor $07
    db $fd
    ld d, e

jr_021_54a4:
    ld d, h
    ld b, [hl]
    ld l, e
    call z, $fd9c
    ld l, e
    ld l, e
    ld d, e
    ld a, [$fd3f]
    dec b
    ld d, e
    db $fc
    ld b, $fa
    dec b
    nop
    jp $fa53


    ld [$1f04], sp
    jr nz, @+$23

    ld b, c
    inc b
    push hl
    push hl
    ld d, e
    ld a, [$2208]
    ret nz

    ld b, b
    inc hl
    inc h
    inc b
    jp Jump_021_53e5


    ld [hl], c
    ld b, b
    ld e, b
    rst $08
    ld d, a
    ld h, e
    rra
    ld l, h
    ld d, h
    ld b, [hl]
    ret nc

    ld l, e
    jr nc, jr_021_550d

    add sp, $46
    ldh a, [rSB]
    ld d, h
    ret nc

    ld l, e
    rrca
    rrca
    ld b, [hl]
    ret nc

    ld l, e

jr_021_54e9:
    rrca
    ld de, $0f47
    add c
    nop
    rrca
    ld c, b
    ld d, h
    ld b, [hl]
    ret nc

    ld l, h
    ld de, $5862
    adc $5a
    ld d, h
    ld b, [hl]
    ld e, [hl]
    ld h, h
    jr jr_021_5560

    ld d, h
    ld l, l
    ld de, $4645
    and $48
    ld e, [hl]
    ld h, h
    sub [hl]
    ld l, l
    ld b, l
    cp [hl]

jr_021_550d:
    add b
    rlca
    ld d, h
    adc $5a
    ld de, $964e
    ld h, h
    ld b, l
    ld b, [hl]
    ld de, $5f11
    ld e, a
    ldh a, [rSB]
    rrca
    jr nc, jr_021_5551

    jr nc, jr_021_5575

    ld d, e
    ld e, [hl]
    ld [de], a
    ld [de], a
    ld h, d
    ld b, b
    ld b, d
    rlca
    ld b, b
    rrca
    ld d, e
    ld e, [hl]
    ldh [rNR12], a
    ld b, l
    ld d, h
    ld h, d
    ld b, b
    ld e, b
    adc $5a
    ld e, a
    ld d, h
    db $10
    ld d, h
    ld e, a
    ld b, l
    ld b, l
    add sp, $46
    ld de, $6f6f
    ld d, b
    ld b, l
    ld l, c
    rrca
    jr jr_021_557a

    ld h, h
    rrca
    ld c, b
    ld l, [hl]
    ld a, [c]
    ld e, l
    ld b, l

jr_021_5551:
    ld d, d
    rrca
    rrca
    ld d, e
    ld [de], a
    ld c, l
    ld bc, $0f08
    ld d, b
    ld h, d
    ld e, b
    adc $5a
    ld e, a

jr_021_5560:
    ld c, [hl]
    ld h, h
    ld e, l
    ld de, $5445
    ld d, h
    ld b, [hl]
    ld b, l
    ld d, h
    and c
    ld b, [hl]
    ret nc

    ret nc

    ld b, l
    and c
    ld d, h
    ld d, h
    ld b, a
    ld l, d
    or c

jr_021_5575:
    ld d, c
    jr jr_021_5591

    ld d, b
    or c

jr_021_557a:
    ld l, c
    ld l, d
    ld d, d
    ld d, e
    jp $18c3


    add hl, de
    jp Jump_021_52c3


    ld d, e
    ld d, d
    ld d, e
    jp $1b15


    inc e
    jp Jump_021_52c3


    ld d, e
    ld d, d

jr_021_5591:
    ld d, e
    jp $9c13


    sbc h
    jp Jump_021_52c3


    ld d, e
    ld d, d
    ld d, e
    jp $161a


    ld d, $14
    rla
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    jp $189c


    add hl, de
    sbc h
    inc de
    ld h, d
    ld h, e
    ld d, b
    ld d, c
    dec d
    ld d, $01
    ld bc, $1916
    ld d, b
    ld d, c
    or h
    ldh a, [$b2]
    ld d, d
    and h
    and d
    and d
    and a
    ld h, d
    ld d, d
    and d
    add e
    rlca
    or d
    or a
    ld d, b
    ld d, d
    and l
    and d
    and d
    and d
    or e
    ld d, d
    inc b
    ld a, b
    ldh [$b2], a
    and l
    and e
    and d
    and d
    ld d, d
    di
    dec d
    rla
    and h
    ld bc, $b20b
    and d
    ld d, d
    di
    ld a, [de]
    inc e
    and l
    and d
    and d
    ld d, d
    di
    di
    di
    add b
    rst $38
    ld b, b
    inc b
    and l
    or d
    and e
    and d
    and d
    ld h, d
    ldh [rP1], a
    or d
    ld h, e
    and a
    and l
    and e
    and d
    and d
    ld d, e
    ld d, c
    or a
    ld c, $0d
    and l
    and e
    ld b, b
    dec b
    dec c
    and e
    and d
    or h
    ld d, e
    and d
    and [hl]
    ld c, $0e
    and l
    and d
    ld d, e
    or d
    or d
    inc h
    ld [$a60e], sp
    dec c
    dec de
    dec de
    and l
    ld d, e
    or d
    and d
    or h
    add hl, de
    db $e3
    inc b
    jr jr_021_5666

    ld b, $1b
    ld c, $53
    and d
    or d
    or d
    and [hl]
    inc d
    inc d
    ld d, e
    and e
    or d
    and d
    and e
    ret nz

    ld a, a
    ld b, b
    and [hl]
    jp z, $caca

    jp z, $6353

    ld c, $38
    xor b
    ld c, d
    and l
    and l
    xor c
    xor c
    xor c

jr_021_5648:
    ld c, d
    ld c, d
    and l
    and l
    rlca
    inc c

jr_021_564e:
    xor c
    ld c, d
    ld [hl], a
    and a
    xor b
    xor b
    and l
    and l
    and [hl]
    ld a, b
    add a
    or a
    inc c
    jr nc, @-$59

    xor b
    ld [hl-], a
    ld [hl-], a
    xor c
    or [hl]
    adc b
    xor h
    xor h
    xor b

jr_021_5666:
    ld sp, $a931
    ret nc

    and d
    and l
    xor h
    xor h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    sbc l
    ld [hl-], a
    jr nz, jr_021_5648

    sbc a
    and l
    and l
    and l
    ld [hl-], a
    and l
    sbc l
    sbc l
    ld sp, $d09d
    ret nc

    ld sp, $0bfa
    cp h
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    cp c
    rrca
    cp b
    rrca
    jr nc, jr_021_564e

    ld c, d
    xor c
    ld c, d
    rra
    jr nz, jr_021_56b9

    cp e
    xor c
    ld c, d
    call nz, Call_021_78c0
    ld c, c
    ld c, d
    ld [hli], a
    inc hl
    inc h
    xor b
    scf
    ld c, d
    push hl
    ld b, a
    ld c, b
    db $e3
    ld bc, $4a68
    call nz, Call_021_6967
    cp c
    cp h
    ld c, d
    xor c
    cp c
    cp h
    add b
    rst $38
    ld c, c

jr_021_56b9:
    cp h
    xor c
    jp $0fc3


    cp c
    ld b, a
    dec c
    cp h
    ld c, d
    ld c, d
    rrca
    rrca
    xor c
    scf
    cp h
    ld c, d
    ld c, d
    ld [hl], b
    sbc h
    cp h
    ld [hl], c
    xor c
    ld c, d
    and $00
    ld c, d
    add b
    add c
    xor e
    xor c
    ld h, h
    ld c, c
    ld b, a
    ei
    ld c, c
    ld c, b
    pop hl
    ld l, b
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    inc sp

jr_021_56e5:
    ld l, b
    cp h
    ld h, a
    ld l, c
    call nz, $bcf8
    call nz, $a90f
    dec c
    xor c
    xor b
    cp h
    cp h
    ld c, c
    ld c, c
    ld hl, $383c
    cp h
    cp h
    scf
    ld c, c
    ld c, c
    ld [hl], c
    add a
    cp h
    cp c
    rrca
    xor c
    ld c, d
    xor b
    xor c
    scf
    ld a, [hl-]
    inc c
    ret nz

    ld c, c
    add hl, sp
    ld b, a
    ld h, h
    cp h
    cp h
    ld c, d
    ld l, c
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ret nz

    rlca
    ld l, b
    ld c, c
    ld c, b
    call nz, $0f0f
    ld h, a
    ld l, c
    call nz, $1f0f
    jr nz, jr_021_5743

    jr nc, jr_021_56e5

    ld hl, $ba70
    cp d
    cp c
    ld [hli], a
    inc hl
    inc h
    add b
    xor c
    cp b
    ret nz

    rst $38
    ld c, c
    cp d
    cp h
    xor d
    xor b
    cp e
    rrca
    nop
    inc e
    ld c, c
    cp h
    cp h
    cp h

jr_021_5743:
    ld c, d
    ld l, b
    cp l
    sub l
    cp [hl]
    ld l, c
    ld c, d
    ld c, b
    ld [hl], b
    ld [hl], c
    rlca
    db $10
    rrca
    ld c, d
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    add b
    add c
    ld [hl], b
    ld [hl], c
    ld c, d
    ld l, b
    ld l, b
    ld c, h
    ld hl, sp+$0f
    ld l, b
    ld l, c
    add b
    add c
    ld c, d
    ld [hl], c
    jp $f1c3


    pop af
    rrca
    ld c, d
    add c
    jp $c3c3


    ld c, d
    ret nz

    ld a, a
    ld c, c
    rrca
    rrca
    jp $c3c3


    ld c, d
    ld c, b
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    ld a, $f8
    ld d, h
    ld b, l
    ld d, d
    rrca
    rrca
    rrca
    ld d, b
    ld c, [hl]
    inc bc
    rrca
    ld d, d
    rst $30
    ld e, l
    ld de, $ce59
    ld d, a
    ld b, b
    ld e, a
    ld de, $3e07
    ld de, $450f
    ld d, h
    ld d, h
    ld d, h
    ld l, a
    ld d, b
    ld d, h
    db $10
    adc b
    rrca
    ld d, h
    ld d, h
    rst $30
    ld e, l
    ld de, $1111
    ld e, [hl]
    inc l
    ld e, l
    ld b, b
    ld b, b
    ld b, d
    dec d
    jr nz, jr_021_5819

    rrca
    ld e, a
    ld l, a
    ld d, h
    ld d, h
    ld h, d
    ld b, b
    ld b, b
    ld b, d
    rrca
    ld e, [hl]
    ld h, h
    jr jr_021_5879

    ld d, h
    rrca
    rrca

jr_021_5819:
    ld d, e
    ld b, [hl]
    cp $45
    rrca
    rrca
    ld d, e
    ld d, c
    inc c
    ret nz

    ld d, h
    db $fd
    ld d, b
    ld b, b
    ld b, b
    ld h, e
    ld a, [c]
    inc b
    add hl, bc
    db $fd
    db $fd
    ld [$0418], sp
    db $10
    inc b
    ld b, [hl]
    ld c, [hl]
    add hl, bc
    db $fd
    db $fd
    ld [$5418], sp
    ld d, h
    ld d, c
    ld e, [hl]
    add hl, bc
    dec l
    dec l
    inc d
    jr nz, @+$11

    ld [$111a], sp
    ld e, [hl]
    inc b
    add hl, bc
    ld l, $2e
    ld [$6f04], sp
    ld de, $0c11
    ldh a, [$fd]
    ld c, [hl]
    add hl, bc
    ld a, [bc]
    dec bc
    ld h, h
    ld e, l
    ld de, $5e11
    add hl, bc
    rst $38
    ld d, h
    dec c
    ld d, h
    ld b, [hl]
    ld l, c
    rrca
    rrca
    ld l, d
    rlca
    ld d, h
    ld d, c
    ld bc, $620e
    ld e, b
    jr nc, jr_021_5874

    adc $5a
    ld c, $19

jr_021_5874:
    ld c, $01
    ld b, $54
    ld d, b

jr_021_5879:
    ld d, c
    dec c
    ld bc, $0417
    inc bc
    dec de
    add hl, de
    ret c

    inc b
    ret c

    jr @+$03

    ldh [rNR14], a
    ld c, $43
    inc b
    inc b
    ld a, [de]
    ldh a, [$0b]
    dec de
    ld c, $01
    ld d, e
    inc bc
    dec bc
    ld e, $18
    dec c
    ld d, e
    db $fd
    db $fd
    rrca
    db $fd
    ld [$0118], sp
    ld d, e
    ld e, $54
    ld d, b
    ld d, c
    ld de, $036f
    ld de, $1f64
    jr nz, jr_021_58ce

    inc b
    ld e, l
    ld [de], a
    inc b
    ld e, [hl]
    ld l, l
    ld de, $2322
    inc h
    ret nc

    inc b
    ld c, l
    ld de, $4e11
    ld l, l
    inc a
    ld de, $5f4d
    ld c, [hl]
    inc b
    rst $38
    ld b, b
    inc bc
    ld b, b
    ld b, [hl]
    cp e
    cp l
    ld b, l
    ld d, h
    ld d, h

jr_021_58ce:
    rrca
    ld d, h
    ld b, [hl]
    rst $38
    rst $38
    ld l, e
    jr nc, @+$56

    cp e
    cp h
    cp l
    ld b, l
    ld b, [hl]
    rst $38
    dec e
    rst $38
    ld l, e
    ld b, l
    ld d, h
    ld d, h
    ld hl, $6e11
    ld h, h
    ld l, l
    ld l, a
    ld d, b
    ld d, h
    jr nc, jr_021_5950

    ld d, h
    ld c, b
    ld e, [hl]
    inc b
    ret c

    ld l, l
    rlca
    ld l, a
    ld d, e
    ld l, [hl]
    inc b
    ret c

    ret c

    ld c, b
    inc b
    ld h, h
    ld h, h
    ret c

    ret c

    ld d, e
    ld c, l
    ld e, h
    inc b
    ld e, a
    ld c, [hl]
    ld h, h
    ld d, e
    inc bc
    ld b, b
    ld b, d
    ld de, $4e5f
    inc b
    ret c

    ldh [rNR11], a
    ret c

    ld d, e
    ld d, h
    ld d, h
    ld d, d
    jr nc, jr_021_596c

    ld c, [hl]
    ret c

    ret c

    ld d, e
    ld h, d
    ld b, b
    rra
    ld b, b
    ld h, e
    ld d, h
    ld d, h
    ld a, [hl]
    ld d, h
    ld b, l
    ld b, [hl]
    ld [hl], b
    ld [hl], c
    jr jr_021_5946

    ld bc, $1b0e
    add hl, de
    ld [hl], b
    ld [hl], c
    add b
    add c
    inc de
    sbc h
    jr jr_021_5950

    sbc h
    inc de
    add b
    add c
    ld [hl], c
    dec d
    ld bc, $0e14
    ld bc, $0114
    rla
    ld [hl], b
    add c

jr_021_5946:
    jr @+$1b

    sbc h
    jr jr_021_5964

    sbc h
    jr @+$1b

    add b
    ld [hl], c

jr_021_5950:
    jr jr_021_5960

    inc d
    ld bc, $1401
    ld c, $19
    ld [hl], b
    add c
    ld a, [de]
    add hl, de
    sbc h
    jr @+$1b

    sbc h

jr_021_5960:
    jr jr_021_597e

    add b
    ld [hl], b

jr_021_5964:
    ld [hl], c
    ld a, [de]
    ld d, $0e
    ld bc, $1c16
    ld [hl], b

jr_021_596c:
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], c
    jr @+$03

    ld c, $19
    ld [hl], b
    ld [hl], d
    add d
    cp $bb
    ld d, h
    ld b, l
    ld d, b
    ld [c], a
    rrca

jr_021_597e:
    nop
    ld d, h
    ld [hl], c
    inc b
    jr @+$1b

    inc b
    ld a, [de]
    dec de
    ld bc, $0e01
    add c
    dec d
    jp $0114


    rla
    inc b
    inc b
    ld a, [de]
    ld [hl], c
    jr jr_021_59a4

    rla
    inc b
    inc b
    ldh a, [$80]
    ld bc, $b91a
    add c
    ld a, [de]
    ld d, $17
    inc b
    and e

jr_021_59a4:
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld c, $74
    ld bc, $160e
    and e
    ld [hl], d
    add c
    inc b
    jr @+$10

    and e
    rst $38
    db $fd
    ld d, h
    ld b, [hl]
    rlca
    nop
    ld d, h
    ld d, c
    ld bc, $9619
    jp $1f04


    jr nz, jr_021_59e4

    cp c
    cp e
    ld bc, $0419
    ldh [rDIV], a
    sub [hl]
    jp $2322


    inc h
    and e
    and h
    cp d
    cp d
    cp e
    ld d, $17
    ld h, b
    ld b, b
    ld bc, $a4a3
    and l
    or d
    or h
    ld d, $16
    ld d, $a3
    and h
    and h

jr_021_59e4:
    ld c, $0e
    add hl, bc
    ld a, [de]
    ld bc, $0e0d
    and e
    and h
    and h

jr_021_59ee:
    dec c
    ld c, $0e
    ld c, $a3
    and h
    jr nc, jr_021_59ee

    rrca
    sbc l
    sbc l
    cp h
    sbc l
    sbc a
    cp h
    sbc a
    sbc a
    sbc l
    ld h, a
    ld a, $0f
    sbc a
    sbc h
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ret


    inc a
    rrca
    add b
    add c
    ld [hl], b
    ld [hl], c
    add b
    add c
    add b
    add c
    db $e3
    rrca
    rrca
    ld [hl], b
    ld [hl], c
    sbc h
    add b
    add d
    ld [hl], c
    ld [hl], b
    add b
    xor d
    add b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    sbc h
    add c
    add c
    add c
    add c
    cp $03
    ld l, b
    ld h, a
    sbc h
    rrca
    sbc h
    rrca
    ld [hl], b
    ld [hl], c
    ldh a, [$90]
    rrca
    ld [hl], b
    ld [hl], c
    rst $30
    rst $30
    add b
    add c
    add b
    add c
    inc b
    inc b
    push bc
    dec bc
    rrca
    inc b
    di
    di
    di
    inc b
    inc b
    di
    di
    di
    add hl, sp
    add b
    inc b
    rrca
    rrca
    rrca
    sbc h
    sbc h
    di
    rst $30
    rst $30
    ld [hl], c
    sbc h
    rrca
    ld b, $16
    rrca
    inc b
    sbc h
    ld [hl], b
    ld [hl], c
    add c
    ld [hl], b
    ld [hl], c
    inc b
    ld [hl], b
    ld [hl], d
    add c
    call z, Call_021_684a
    ld l, b
    cp h
    cp h
    inc bc
    ld l, b
    rst $30
    rst $30
    ld b, a
    ld c, b
    cp h
    cp h
    nop
    ld b, a
    ld c, b
    xor c
    ld [hl], b
    rrca
    cp b
    ld h, a
    ld l, c
    add e
    cp h
    ld h, a
    ld l, c
    ld a, [c]
    add b
    rrca
    ld e, [hl]
    cp h
    cp c
    xor c
    rrca
    ld [hl], b
    cp h
    inc b
    rrca
    rrca
    cp c
    cp d
    ld [de], a
    xor d
    cp d
    rst $30
    rst $30
    cp b
    xor c
    cp e
    add hl, bc
    rrca
    xor e
    inc b
    ld [hl], b
    ld [hl], c
    push hl
    push hl
    inc c
    call nz, $e5e5
    rrca
    inc b
    add b
    add c
    cp $40
    ld b, e
    ccf
    nop
    ld l, b
    and [hl]
    and a
    ld d, h
    ld d, h
    ld [hl], c
    ld h, h
    ld h, h
    rrca
    rrca
    inc b
    ld c, l
    ld c, d
    rrca
    inc b
    add c
    ld h, h
    ld [hl], b
    ld [hl], c
    inc b
    inc b
    inc b
    inc b
    ld a, b
    cp a
    inc b
    di
    add b
    add c
    rrca
    rrca
    ld [hl], a
    and e
    inc b
    rrca
    di
    rrca
    ld h, h
    rrca
    rrca
    ret nz

    rst $38
    ld b, b
    rrca
    inc b
    inc b
    rrca
    ld h, h
    ld h, h
    rst $38
    ld bc, $5154
    rrca
    inc b
    rrca
    di
    ld h, h
    ld h, h
    ld [de], a
    or b
    inc b
    rrca
    rst $30
    rst $30
    rrca
    di
    ld h, h
    ld h, h
    ld h, h
    rrca
    rrca
    rrca
    sub l
    cp a
    inc b
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [c]
    add c
    inc b
    rrca
    ld h, h
    rrca
    rrca
    rrca
    rrca
    ld h, h
    rrca
    rrca
    ret nz

    rst $38
    ld b, b
    rrca
    inc b
    rrca
    inc b
    rst $30
    rst $30
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    dec de
    ld h, b
    ld d, h
    ld b, l
    ld d, d
    rrca
    rrca
    ld l, [hl]
    ld h, h
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, d
    ld c, b
    add b
    ld h, h
    rrca
    ld l, [hl]
    inc b
    ld [hl], d
    add c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld b, d
    ret c

    ret c

    inc b
    add c
    ld bc, $1216
    add b
    add c
    ld b, l
    ld d, d
    ret c

    ret c

    ld c, l
    rst $30
    ret nz

    ld b, l
    ld d, d
    ret c

    inc c
    ld h, b
    ld [de], a
    ret c

    ld e, l
    ret nz

    jp nz, Jump_021_48c0

    ld d, d
    ret c

    ret c

    ld l, l
    rst $30
    ret nz

    ld hl, sp+$07
    ld b, b
    ld [de], a
    ld d, e
    ld h, d
    ld h, e
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    inc c
    jr nc, jr_021_5bcc

    ld h, h
    ld e, l
    ld e, [hl]
    add hl, bc
    db $fd
    db $fd
    db $fd
    db $fd
    ld h, h
    ld e, l
    ld e, [hl]
    add hl, bc
    ret nz

    add c
    ld de, $fdfd

jr_021_5bcc:
    dec b
    ld b, $04
    ld e, l
    ld b, e
    ld [hl], $ff
    dec [hl]
    ld b, b
    ld e, a
    ld bc, $1103
    ld l, a
    ld l, a
    ld d, e
    ld b, [hl]
    rst $38
    ld b, l
    ld d, h
    ld e, [hl]
    ret c

    ret c

    ld d, e
    ld b, [hl]
    rst $38
    nop
    ldh a, [rLCDC]
    ld b, l
    ld d, h
    ld de, $5e11
    ret c

    ret c

    ld d, e
    ld d, c
    cp $50
    ld d, h
    ret nz

    rlca
    ld d, h
    ld b, b
    ld h, e
    ld c, a
    db $fd
    db $fd
    db $fd
    ld b, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld sp, $fd3f
    ld [$3c18], sp
    ld b, $01
    ld d, e
    rlca
    db $fd
    nop
    ld [$0e18], sp
    ld d, e
    ld e, b
    call $4057
    nop
    ld [hl], $ff
    dec [hl]
    ld b, d
    ld bc, $5453
    sub h
    inc bc
    ld d, h
    ld b, [hl]
    rst $38
    ld b, l
    ld d, d
    ld c, $53
    dec c
    ld d, h
    sub h
    ld b, [hl]
    rst $38
    ld b, l
    ld h, d
    inc [hl]
    ld d, h
    ld b, b
    ld h, e
    sub h
    ld d, c
    cp $f0
    db $fd
    ld d, b
    ld b, l
    ld d, h
    ld b, [hl]
    rlca
    db $fd
    ld b, l
    ld d, h
    ld b, [hl]
    jr nc, jr_021_5c72

    inc e
    ld c, a
    jr nc, jr_021_5c7a

    ld d, b
    ld d, h
    ld d, c
    db $76
    cp $47
    ld l, h
    ld d, b
    ld hl, sp-$03
    ld d, h
    ld d, h
    ld d, d
    db $e3
    db $fd
    ld a, [$52fa]
    adc a
    db $fd
    ld a, [$52fa]
    ccf
    db $fd
    ld a, [$1efa]
    db $fd
    ld d, d
    ld a, [$fafa]
    ld a, b
    db $fd
    ld a, [$52fa]
    ld a, [$fa0f]
    ld d, d
    db $fd
    db $fd

jr_021_5c72:
    db $fd
    jr nc, jr_021_5c7b

    db $fd
    ld a, [$05fa]
    ld d, d

jr_021_5c7a:
    db $fd

jr_021_5c7b:
    rlca
    db $fd
    ld a, [$08fa]
    ld b, e
    ld b, b
    ei
    pop hl
    ld d, h
    ld b, l
    ld b, [hl]
    ld a, [$45fa]
    add a
    rra
    ld d, h
    ld b, [hl]
    ld a, [$50fa]
    ld c, b
    ld a, [$01fa]
    rlca
    ld a, [$0408]
    inc b
    xor b
    db $eb
    xor d
    ld d, e
    ld [$04c6], sp
    cp b
    cp c
    inc e
    ret nz

    ld a, [$53ba]
    ld a, [bc]
    dec bc
    dec bc
    xor c
    xor $a9
    ld d, e
    ld b, $07
    rra
    ld a, h
    db $fd
    ld d, e
    ld b, b
    ld b, d
    ld c, a
    ld c, a
    ld d, e
    add d
    ld [hl], d
    add c
    jr @+$03

    ld c, $19
    add b
    add d
    ld [hl], d
    ld [hl], d
    add c
    jp $0d18


    dec c
    add hl, de
    jp $8280


    add c
    jp $1b15


    dec de
    dec de
    dec c
    rla
    jp $1680


    ld d, $19
    rra
    jr nz, @+$23

    jr jr_021_5ced

    ld d, $16
    dec de
    dec de
    add hl, de
    ld [hli], a
    inc hl
    inc h
    jr jr_021_5cf7

    dec de
    dec de
    ld [hl], c

jr_021_5ced:
    jp $161a


    ld d, $16
    dec c
    inc e
    jp $8270


jr_021_5cf7:
    ld [hl], c
    jp $0d18


    dec c
    add hl, de
    jp Jump_021_7270


    ld [hl], d
    add d
    ld [hl], c
    jr @+$03

    ld c, $19
    ld [hl], b
    ld [hl], d
    add d
    add d
    ld [hl], c
    inc b
    jr jr_021_5d10

    dec c

jr_021_5d10:
    ld bc, $1b0e
    and e
    ld [hl], d
    add c
    dec d
    dec de
    dec de
    ld bc, $1c01
    inc b
    and e
    add c
    dec d
    add hl, de
    di
    inc b
    ld a, [de]
    add hl, de
    jp $a3f3


    ld d, $01
    ld bc, $1716
    di
    jr jr_021_5d47

    jp $1ba3


    dec de
    dec de
    ld bc, $141b
    dec de
    ld bc, $a316
    ld [hl], c
    jp $13f3


    di
    inc b
    di
    jr jr_021_5d46

    and e

jr_021_5d46:
    add d

jr_021_5d47:
    ld [hl], c
    jp $0413


    inc b
    dec d
    ld c, $01
    and e
    ld [hl], d
    add d
    ld [hl], c
    ld a, [de]
    inc d
    ld d, $01
    dec c
    ld c, $a3
    jp nc, $a401

jr_021_5d5d:
    ld c, $0e
    dec c
    sub b
    ld bc, $b5a3
    and h
    ld c, $0d
    ld c, $e0
    cp d
    dec de
    dec de
    and e
    and d
    or l
    inc c
    dec bc
    cp d
    cp e
    and e
    and d
    and l
    or d
    add a
    or d
    or h
    db $fd
    db $fd
    or e
    ld h, b
    db $fd
    and h
    rra
    jr nz, jr_021_5da4

    add hl, bc
    ld c, a
    nop
    ld [$a41a], sp
    ld [hli], a
    inc hl
    inc h
    add hl, bc
    ld c, a
    add sp, $04
    ld c, a
    db $fd
    ld [$0ca4], sp
    db $fd
    add hl, bc
    ld c, a
    ld [$a404], sp
    xor [hl]
    inc e
    ld b, b
    ret nc

    dec [hl]
    ld e, b
    call $f057

jr_021_5da4:
    and a
    cp d
    cp d
    cp d
    xor b
    jr jr_021_5d5d

    and a
    cp b
    and l
    or h
    jp $c0c3


    ld bc, $0496
    rst $20
    or a
    and h
    dec c
    inc bc
    ld d, $17
    sub [hl]
    sub [hl]
    or a
    or h
    ld bc, $0105
    ld c, $0d
    add hl, de
    jp $bdb9


    dec hl

Jump_021_5dca:
    ld bc, $0e0e
    inc e
    jp $1b78


    and e
    and h
    ld a, [de]
    inc e
    ld [hl], c
    inc b
    jp $b4b3


    jp $c30b


    inc b
    ld b, e
    ld [hl], $40
    ld e, b
    ld [hli], a
    ld d, a
    rst $08
    ld b, b
    ld e, b
    call $4663
    ld e, b
    ld b, b
    rrca
    ld [hl], b
    ld [hl], d
    add c
    inc b
    add b
    add d
    ld [hl], c
    add b
    add d
    ld [hl], c
    inc b
    inc b
    add c
    ld a, [bc]
    rrca
    sbc h
    add b
    add c
    ld [hl], b
    ld [hl], d
    add c
    inc b
    inc b
    ld [hl], b
    ld [hl], c
    add b
    add c
    ld e, $a8
    inc b
    rrca
    sbc h
    add b
    add c
    ld [hl], b
    ld [hl], c

Call_021_5e11:
    sbc h
    db $e3
    rrca
    pop bc
    rlca
    inc b
    sbc h
    add b
    add c
    rrca
    rrca
    rst $30
    ld [hl], b
    ld [hl], c
    sbc h
    rrca
    ld a, [hl-]
    nop
    inc b
    rrca
    rrca
    add b
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    rst $30
    ld hl, sp+$0b
    ld d, h
    ld b, e
    ld b, b
    ld h, e
    ld d, e
    ld d, c
    db $fd
    db $fd
    db $fd
    rst $28
    cp a
    db $fd
    ld d, e
    ld d, e
    rst $38
    ldh [$fd], a
    inc sp
    jr nc, jr_021_5e76

    jr nc, @+$36

    inc bc
    ld c, $fd
    rst $30
    rst $30
    jp z, $33ca

    jr nc, jr_021_5e86

    ld de, $5f11
    ld e, a
    nop
    ldh [$30], a
    ld e, a
    ld c, [hl]
    ld d, e
    db $fd
    db $fd
    db $fd
    rst $30
    rst $30
    ld e, l
    ld de, $5e0f
    inc sp
    rst $38
    ld d, h
    db $fc
    db $fd
    ld d, h
    ld d, h
    rst $38
    db $fd
    ld a, $30
    ld sp, $fdfd
    ld hl, sp-$08
    db $fd

jr_021_5e76:
    db $fd
    ld d, d
    rrca
    db $fd
    ld d, d
    ld hl, sp-$08
    ld hl, sp+$3c
    db $fd
    ld hl, sp-$08
    ld h, d
    ld e, b
    ldh a, [$fd]

jr_021_5e86:
    rst $08
    rst $08
    ld d, a
    ld b, b
    ld a, $54
    ld b, l
    jr nc, jr_021_5ebf

    ld hl, sp-$08
    inc [hl]
    db $fd
    ld b, a
    rst $38
    ld d, h
    db $fc
    db $fd
    ld d, h
    ld d, h
    ldh a, [$30]
    db $fd
    db $fd
    db $fd
    db $fd
    ccf
    jr nc, @-$06

    ld hl, sp+$1e
    call nz, $f8f8
    ld hl, sp-$08
    ld a, b
    call nz, $f8f8
    ld hl, sp-$08
    db $fc
    ld b, b
    ld hl, sp-$08
    ldh a, [rHDMA4]
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    rra
    ld d, h
    ld d, d
    ld hl, sp-$08

jr_021_5ebf:
    rra
    ld hl, sp+$70
    ld [hl], c
    ld h, d
    rra
    ld d, h
    ld d, c
    ret nc

    ret nc

    db $fc
    db $fd
    ld d, b
    ld d, h
    ldh a, [$30]
    db $fd
    db $fd
    db $fd
    db $fd
    ccf
    jr nc, @-$06

    ld hl, sp-$0d
    ld hl, sp-$3c
    call nz, $c43c
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    call nz, $f8f8
    ld [hl], b
    ld [hl], c
    ld hl, sp-$3f
    call nz, $f8f8
    ld hl, sp-$80
    add c
    ccf
    ld hl, sp+$40
    ld b, b
    rst $38
    ld b, b
    cp a
    ld d, h
    ld l, c
    db $fc
    db $fd
    ld d, h
    ld d, h
    ldh a, [$30]
    ld d, d
    rst $20
    ld de, $3811
    ld b, b
    inc [hl]
    db $fd
    ld b, c
    ld hl, sp-$08
    ld hl, sp-$03
    ld hl, sp-$08
    ld d, e
    rrca
    ld hl, sp+$33
    ld l, b
    ret nc

    ret nc

    ld a, h
    ld hl, sp+$65
    jr nc, jr_021_5f6c

    ldh a, [$f8]
    dec d
    rla
    inc b
    ld [hl], b
    add c
    ld hl, sp+$53
    jr jr_021_5f3d

    inc b
    add b
    ld [hl], $07
    ld hl, sp+$53
    jr jr_021_5f45

    ld [hl], b
    ld [hl], c
    rst $38
    ld d, h
    db $fc
    ld de, $5454
    rrca
    ld de, $4040
    ld b, b
    ld b, b
    ccf
    ld b, b
    db $fd

jr_021_5f3d:
    db $fd
    rst $38
    db $fd
    rst $38
    jr nc, @-$0e

    ld d, $30

jr_021_5f45:
    jr nc, @+$73

    dec d
    inc c
    ld [de], a
    ld d, $17
    add c
    ld a, [de]
    ld bc, $300d
    ld [de], a
    ld bc, $1b1b
    inc e
    ld [hl], b
    ld [hl], c
    jr z, jr_021_5fca

    jr jr_021_5f5d

    add hl, de

jr_021_5f5d:
    ld [hl], c
    ld [hl], c
    dec [hl]
    sbc a
    ld d, h
    ld c, b
    ld b, l
    ld a, h
    ld de, $5454
    ld d, e
    ld c, $54
    ld d, b

jr_021_5f6c:
    ld b, b
    ld d, [hl]
    ret nc

    ret nc

    db $fc
    db $fd
    ld d, l
    ld b, h
    rst $38
    db $fd
    rst $38
    jr nc, jr_021_5f95

    ld [de], a
    jr nc, @+$32

    ld l, l
    ld de, $c811
    ld [de], a
    ld de, $6e11
    ld c, l
    ld c, [hl]
    ld b, $11
    ld e, l
    ld e, [hl]
    ld [de], a
    ld c, l
    ld b, b
    ld b, b
    pop af
    ld b, b
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rra
    ld d, h

jr_021_5f95:
    ld b, [hl]
    ld c, a
    db $fd
    ld a, h
    ld d, h

jr_021_5f9a:
    ld c, a
    ld d, d
    ld d, c
    push af
    db $fd
    ld c, a
    ld d, d
    rst JumpTable
    db $fd
    ld d, d
    ld a, a
    db $fd
    ld d, d
    rst $38
    jr nc, jr_021_5f9a

    ld de, $5230
    ld [de], a
    ld l, l
    ld [hli], a
    ld [de], a
    ld l, [hl]
    ld e, l
    ld d, d
    ld c, [hl]
    ld e, l
    ld de, $1111
    ld l, [hl]
    ld [de], a
    ld c, l
    ld d, d
    ld b, b
    ld b, b
    ld h, b
    ld de, $4040
    ld [hl], $12
    ld c, l
    ld d, d
    rlca
    xor [hl]
    ld d, e

jr_021_5fca:
    db $fd
    ld c, a
    db $fd
    ld c, a
    inc d
    or $a6
    and a
    ld [$4f53], a
    db $fd
    ld d, b
    rst $30
    and [hl]
    and a
    or [hl]
    or a
    dec hl
    ld d, e
    ld de, $fd4f
    or [hl]
    or a
    db $fd
    cp e
    ret nc

    sub h
    ld c, a
    dec [hl]
    ld h, e
    db $fd
    db $fd
    db $fd
    ldh a, [$fd]
    ld d, e
    ret nc

    ld d, b
    ld d, c
    jp nz, $fafd

    ld d, e
    inc b
    ld a, [c]
    add hl, bc
    rlca
    ld a, [$53fd]
    dec bc
    dec bc
    inc c
    rra
    ld a, [$53fd]
    db $fd
    ld a, b
    ld a, [$fdfd]
    db $fd
    db $fd
    ld e, $fd
    ld d, d
    ld a, [$08fa]
    jr c, @+$01

    ld d, e
    ld d, h
    ld e, e
    dec [hl]
    ld b, b
    ldh [rIE], a
    ld e, b
    rst $08
    ld e, d
    ld d, h
    ld l, e
    ld c, $54
    ld b, l
    ld b, [hl]
    ld c, a
    ld l, h
    cp $38
    ld d, h
    cp $fe
    ld d, b
    ld d, c
    db $fd
    rrca
    db $fd
    ld [$201f], sp
    ld hl, $fd3e
    add hl, bc
    ld a, [bc]
    ld [hli], a
    ld hl, sp-$03
    inc hl
    inc h
    inc c
    pop af
    db $fd
    ld a, [bc]
    dec bc
    inc c
    ld a, a
    db $fd
    ld c, a
    ldh a, [$c1]
    db $fd
    ld d, h
    ld h, d
    ld b, b
    ld b, d
    ld d, e
    ld d, h
    ld l, e
    db $ed
    ld d, d
    ld bc, $fdc0
    dec b
    ld b, $53
    ld c, a
    ld l, h
    call z, $ff5b
    rst $38
    rst $38
    cp h
    call $015a
    rlca
    db $fd
    ld l, e
    rst $38
    rst $38
    rst $38
    ld b, l
    sub h
    ld b, [hl]
    ld l, h
    cp $fe
    cp $50
    db $fc
    pop af
    db $fd
    sub h
    ld l, c
    ld [$5204], sp
    rlca
    ld h, b
    db $fd
    ld a, [bc]
    dec bc
    ld d, d
    and [hl]

Jump_021_6080:
    and a
    and [hl]
    and a
    and [hl]
    and a
    ld c, a
    ld d, d
    add d
    ld [bc], a
    add b
    add c
    add c
    jr @+$03

    ld c, $19
    add c
    cp d
    cp d
    cp e
    ld c, $0d
    ld hl, sp-$80
    rlca
    ld hl, sp+$0e
    cp c
    cp d
    cp d
    and l
    or d
    or h
    or e
    or d
    or d
    and h
    ld c, $af
    cp $f8
    dec c
    ld c, $a4
    pop af
    add e
    ld hl, sp+$01
    and h
    dec c
    ld c, $b9
    or l
    cp e
    ld c, $00
    ccf
    cp d
    dec c
    ld hl, sp-$08
    ld c, $b9
    or [hl]
    and d
    or l
    or [hl]
    and d
    ret nz

    add b
    ld bc, $8081
    add c
    inc b
    inc b
    jr jr_021_60dc

    and e
    cp d
    cp d
    cp e
    inc b
    dec d
    ld b, $8e
    ld bc, $a30d
    or d
    or d
    or h

jr_021_60dc:
    ld d, $0e
    ld c, $a3
    ld c, $46
    nop
    ld bc, $1b0e
    dec de
    dec de
    and e
    ld hl, sp+$0e
    ld hl, sp+$0e
    inc e
    jp $0404


    ret nz

    inc b
    jp $a31a


    cp d
    cp e
    ld bc, $cb19
    inc b
    and e
    and d
    and h
    dec c
    ld bc, $7f00
    cp d
    rla
    inc b
    jp $15c3


    and e
    and d
    or l
    or [hl]
    db $fc
    ld [hl], d
    ld d, h
    and h
    ld b, l
    sub h
    and h
    ld d, b
    cp [hl]
    ld b, c
    inc b
    inc b
    ld l, d
    sub l
    ld d, h
    and h
    jp $1ac3


    daa
    ld d, e
    ld bc, $a41c
    jp $0893


    inc b
    jp Jump_021_5347


    add hl, de
    and h
    jp $15c3


    ld e, e
    ret nc

    ld e, h
    ld [$1680], sp
    inc e
    ld [hl], b
    and h
    rla
    sub $18
    ld l, h
    ret nc

    ld l, h
    inc b
    add b
    and h
    ld c, $01
    add b
    ccf
    cp d
    ld bc, $0e01
    add hl, de
    inc b
    ld [hl], b
    or l
    cp e
    add b
    cp a
    db $fc
    ld d, h
    sub h
    ld b, [hl]
    ld d, c
    or b
    call nz, $9504
    ld d, h
    ld d, c
    ld [hl], b
    inc l
    ld [hl], b
    ld [hl], c
    jp $80c3


    ld [hl], e
    ld [bc], a
    inc b
    add b
    add c
    ld [hl], b
    ld [hl], c
    sub b
    sub c
    ld [hl], b
    ld [hl], c
    rra
    jr nz, @+$44

    nop
    add b
    ld hl, $9681
    dec a
    ld a, $81
    ld [hli], a
    inc hl
    inc h
    ld [hl], b
    ld [hl], c
    di
    inc b
    xor c
    sub b
    jr nz, jr_021_61f5

    xor d
    inc b
    xor c
    xor e
    ld [hl], d
    add c
    ld [hl], c
    xor l
    xor d
    xor e
    xor d
    ld [hl], d
    add c
    xor d
    ld [hl], d
    ld [hl], b
    add d
    add d
    add d
    xor b
    add c
    add d
    ld [hl], c
    ld [hl], d
    add b
    add b
    dec b
    add b
    add c
    add d
    add d
    ld [hl], c
    cp c
    dec d
    ld h, b
    ld [hl], d
    inc d
    ld d, $17
    cp c
    ld [hl], b
    add c
    ld hl, $13b9
    inc b
    jr jr_021_61ce

    add b
    add d
    add h
    cp c
    add d
    ld [hl], c
    ld a, [de]
    ld d, $01
    inc e
    ld b, $72
    ld [hl], b
    add c
    cp d
    cp e
    jr jr_021_61e0

    and b
    ld [hl], c
    cp d
    cp e
    add b
    add d
    add d

jr_021_61ce:
    ld [hl], b
    inc d
    ld [hl], b
    jr jr_021_61ec

    ld [hl], c
    ld [hl], d
    add b
    add c
    ld de, $8180
    jr jr_021_61f5

    add d
    ld [hl], d
    add d
    add c

jr_021_61e0:
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld e, l
    rrca
    ld de, $645e
    ld [hl], c
    ld [hl], d
    add c
    ld l, l

jr_021_61ec:
    ld de, $5e0f
    ld hl, $6480
    add b
    add d
    ld [hl], d

jr_021_61f5:
    add c
    ld [de], a
    ld l, l
    ld de, $125e
    ld a, [c]
    add b
    add c
    ld [hl], c
    inc bc
    ld c, $12
    ld e, l
    ld de, $4e5f
    rst $30
    rst $30
    add c
    ld e, l
    rrca
    ld de, $0011
    adc a
    ld l, a
    ld e, a

jr_021_6211:
    ld e, a
    ld [hl], c
    ld [de], a
    ld c, l
    ld e, a
    ld de, $8111
    ld c, l
    ld de, $e000
    ld b, b
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [de], a
    rst $30
    rst $30
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld b, e
    ld [hl], $d0
    dec [hl]
    ldh [$f8], a
    ld [hl], c
    ld h, h
    ld d, e
    db $fd
    ld d, d
    add e
    ld hl, sp-$7e
    ld [hl], c
    ld d, e
    db $fd
    ld d, d
    rrca
    ld hl, sp-$80
    add c
    ld d, e
    db $fd
    jr jr_021_6211

    ld h, d
    ld b, b
    ld [hl], $35
    rst $30
    rst $30
    add h
    ld d, b
    inc a
    db $fd
    ld d, h
    ld d, c
    ret nc

    ret nc

    inc a
    dec l
    ld e, a
    ld e, a
    ld d, $01
    ldh a, [$2e]
    add hl, de
    inc b
    ld l, a
    ld l, a
    ld b, $01
    dec de
    inc d
    rst $30
    rst $30
    ld c, h
    db $fd
    ret nz

    ld b, b
    db $fd
    ld c, e
    or c
    ld a, [de]
    inc e
    inc b
    sub b
    ld [hl], b
    ld h, e
    db $fd
    db $fd
    ld d, d
    ld [hl], c
    inc b
    ld a, a
    ld hl, sp-$80
    db $fc
    ld hl, sp-$7f
    ld d, b
    ldh a, [rLCDC]
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, $f8
    ld b, d
    ld d, h
    ld d, h
    ldh [$f8], a
    add sp, $54
    ld d, d
    ld [hl], b
    ld [hl], c
    dec bc
    inc b
    inc de
    ld d, d
    add b
    add c
    ld hl, sp+$0c
    inc d
    ld hl, sp-$08
    inc e
    inc b
    ld h, d
    ld b, b
    ldh a, [rDIV]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, $54
    ld d, b
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $38
    ld d, h
    inc a
    ld hl, sp+$54
    ld d, h
    call nz, Call_021_70c4
    ld hl, sp-$3c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    call nz, $c407
    add b
    add c
    add b
    ld hl, sp-$08
    rrca
    call nz, $0404
    ld [hl], b
    ld [hl], c
    ldh [rDIV], a
    ld hl, sp-$08
    call nz, $c4c4
    ld a, h
    ld b, b
    add b
    add c
    ld e, b
    ldh a, [rHDMA4]
    rst $08
    rst $08
    ld d, a
    ld b, b
    ccf
    ld d, h
    ld [hl], c
    ld [hl], b
    add d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    rst $30
    jr @+$1b

    rst $30
    ld e, $78
    ld hl, sp+$51
    ld d, e
    jr jr_021_6306

    add b
    add d
    ld [hl], c
    ld d, e
    ldh [rSB], a
    ld hl, sp+$18
    add hl, de
    inc b
    add b
    add c
    ld d, e
    jr jr_021_6315

    ld sp, $9030
    rst $08
    nop
    ld e, $54
    rst $08
    ld d, a
    ld b, b

jr_021_6306:
    ld h, e
    jr @+$1b

    ld d, d
    ld [hl], b
    ld d, e
    ld d, c
    di
    di
    ld [hl], b
    nop
    ld d, $52
    add b
    ld h, e

jr_021_6315:
    dec d
    di
    call nz, Call_021_52c4
    ld [hl], b
    ld d, c
    jr @+$03

    ld bc, $3800
    jr nc, jr_021_633e

    di
    call nz, Call_021_52c4
    add b
    ld [hl], c
    ld a, [de]
    ld bc, $3119
    ld [hl-], a
    ld [hl], b
    ld b, d
    dec b
    add c
    ld [hl], d
    jr jr_021_6336

    add hl, de

jr_021_6336:
    add b
    add b
    ld b, a
    ld h, h
    ld a, [de]
    dec de
    dec de
    inc d

jr_021_633e:
    ldh a, [$03]
    jr nc, jr_021_6356

    rla
    inc b
    ld d, d
    inc [hl]
    dec c
    rla
    ld d, d
    ld [hl], c
    ld hl, sp+$0e
    jr c, @-$3a

    ld hl, sp+$53
    ld a, [de]
    ld bc, $8152
    ld hl, sp-$08

jr_021_6356:
    ld d, e

Call_021_6357:
    ld h, h
    ret z

    jr nz, @-$06

    jr jr_021_63af

    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    dec d
    dec c
    ld d, d
    add c
    add b
    add c
    add e
    inc c
    ld hl, sp+$53
    ld c, $1c
    ld h, d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    add hl, de
    inc b
    ld b, l
    ld bc, $7605
    add [hl]
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld [hl], l
    add [hl]
    ld l, d
    cp c
    sbc h
    sbc [hl]
    sbc [hl]
    sbc [hl]
    inc d
    ld d, b
    db $76
    sbc a
    cp c
    ld d, e
    cp c
    xor h
    xor l
    sbc l
    xor [hl]
    ld [hl], a
    cp c
    ld d, e
    cp c

jr_021_6394:
    jr nz, jr_021_6394

    cp c
    cp h
    rst $28
    sbc [hl]
    rst $28
    add a
    db $76
    ld d, e
    db $76
    ld hl, sp+$03
    cp c
    db $76
    ld d, e
    add [hl]
    add [hl]
    ld d, e
    ld b, b
    ld b, b
    ld [hl], $d0
    inc bc
    ld c, $d0
    dec [hl]

jr_021_63af:
    ld b, b
    ld b, b
    ld h, e
    ld d, h
    ld d, h
    ld b, [hl]
    ld b, l
    ld d, h
    ld d, h
    ld b, [hl]
    rrca
    nop
    ld d, h
    ld c, b
    ld [de], a
    ld l, l
    ld de, $5211
    add [hl]
    or d
    add [hl]
    add [hl]
    jr c, @+$50

    inc b
    ld [bc], a

jr_021_63ca:
    ld de, $6d12
    ld h, d
    or d
    cp c
    and b
    and c
    ld h, $4e
    ld [de], a
    ld l, l
    ld d, b
    add [hl]
    cp c
    jr jr_021_643b

    ld de, $b8b7
    ld h, $4e
    ld [de], a
    rst $30
    or d
    cp c
    add [hl]
    add [hl]
    or e
    ld l, [hl]
    jr c, jr_021_63ca

    cp c
    ld [de], a
    ld [de], a
    db $76
    ld h, $11
    ld l, [hl]
    ld [de], a
    ld [de], a
    rst $30
    add [hl]
    add b
    inc bc
    cp c
    ld h, $6e
    ld [de], a
    ld c, l
    ld e, a
    ld sp, $48b2
    ld [de], a
    ld c, l
    ld de, $5211
    ld e, $42
    db $fd
    ld d, e
    ld a, [$fafa]
    ld a, [$0663]
    ld b, $07
    ld a, [$3007]
    ld a, [$51fd]
    inc b
    inc b
    add hl, bc
    db $fd
    xor b
    db $eb
    xor d
    rst $30
    inc b
    ld bc, $0407
    add hl, bc
    db $fd
    cp b
    cp c
    cp d
    ld a, [$09fa]
    db $fd
    xor c
    xor $a9
    add e
    rrca
    ld a, [$04f7]
    inc b
    add hl, bc
    db $fd
    inc [hl]
    dec bc
    dec bc
    inc c

jr_021_643b:
    or c
    rst $00
    db $fd
    ld a, [$fafa]
    ld d, e
    ld a, [$fafa]
    rst $38
    db $fd
    db $fd
    db $fd
    ld c, a
    rlca
    db $fd
    ld c, a
    ld a, [$31fa]
    jr nc, jr_021_6471

    jr nc, jr_021_6488

    ld a, [$30fa]
    jp $a052


    and c
    and d
    jr jr_021_64b1

    inc bc
    ld a, [$b052]
    db $ed
    or d
    ld [de], a
    dec d
    ldh [rNR12], a
    dec c
    ld d, e
    ld a, [$52fa]
    ld b, $01
    dec d
    ld d, e

jr_021_6471:
    db $fd
    db $fd
    ld d, d
    ld d, $14
    ld c, $16
    ld d, $01
    ld d, e
    db $fd
    db $fd
    ld a, d
    ld bc, $0d52
    ld d, e
    ld de, $b680
    and d
    or d
    or a

jr_021_6488:
    and d
    and a
    db $fd
    db $fd
    ld d, d
    and [hl]
    or d
    or a
    dec b
    rlca
    ld b, $10
    db $fd
    or a
    ld d, d
    or [hl]
    or a
    dec b
    ld [hl], e
    ld [hl], h
    rlca
    and [hl]
    and a
    ld d, d
    and [hl]
    and a
    nop
    ldh [$fa], a
    ld a, [bc]
    add e
    add h
    inc c
    or [hl]
    or a
    db $fd
    ld d, d
    or [hl]
    and d
    and a
    ld a, [bc]

jr_021_64b1:
    inc c
    pop hl
    rlca
    ld a, [$a652]
    or d
    or a
    ld d, d
    or [hl]
    or a
    db $fd
    db $fd
    rlca
    rra
    db $fd
    ld a, [$52fa]

Call_021_64c4:
    and [hl]
    and a
    ld a, [$52fa]
    cp $03
    ld b, b
    ld b, e
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    and h
    and l
    ld c, $00
    ld d, h
    and [hl]
    ld d, e
    rst $20
    ld h, h
    ld l, d
    or h
    rst $28
    or [hl]
    ld l, c
    rrca
    rrca
    ld d, e
    ld e, a
    inc d
    ld d, b
    ld d, h
    ld e, a
    ld d, e
    sub h
    ld h, d
    ld b, b
    ld b, b
    ld d, e
    ld de, $5311
    sub l
    ld b, l
    ret nz

    ld b, c
    rrca
    ld d, h
    ld d, h
    ld d, e
    ld de, $5311
    ld d, b
    ld d, h
    ld d, h
    ld d, e
    ld de, $0e53
    dec c
    ld de, $fa0f
    ld a, [$0f53]
    ld d, e
    rrca
    ld a, [$fafa]
    rst $38
    ld b, b
    db $fc
    ld d, h
    ld b, b
    ld b, b
    ldh a, [rIF]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    scf
    rrca
    ld de, $4040
    jr @+$42

    ld [hl], $d0
    dec [hl]
    ld b, d
    rrca
    ld de, $5463
    ld b, [hl]
    ret nc

    ld b, l
    ld d, d
    adc h
    ld d, h
    ld de, $510f
    ret nc

    ld d, b
    inc c
    ld b, $54
    ld d, d
    ld a, [$08fc]
    inc b
    rlca
    push hl
    ld d, d
    dec hl
    dec hl
    ld a, [$1efa]
    inc b
    ld [$2b52], sp
    ld [hl], b
    rst $38
    ld b, b
    inc e
    ld d, h
    ld b, b
    ld b, d
    and c
    db $eb
    and e
    rlca
    ld d, h
    ld d, d
    rrca
    ld [$b1c0], sp
    inc d
    rrca
    or d
    or e
    rst $20
    ld d, d
    ld de, $7008
    ld de, $f604
    ld [$52f6], a
    ret nz

    ld b, $0f
    ld [$f7c0], sp
    dec hl
    inc b
    jr jr_021_6576

Jump_021_6572:
    ld b, $62
    ld b, $f7

jr_021_6576:
    dec hl
    rst $30
    ldh a, [$2b]
    rst $30
    rst $30
    rst $30
    ld d, b
    sub h
    ld [hl], b
    dec hl
    inc b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [bc]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], d
    add c
    ld a, b
    xor l
    and d
    and e
    and h
    and l
    ret nz

    and b
    and [hl]
    and a
    or d
    or e
    or h
    and a
    nop
    and d
    or l
    or [hl]
    or a
    xor h
    or d
    cp b
    xor b
    inc bc
    and c
    cp h
    cp l
    or a
    xor h
    xor [hl]
    cp c
    inc c
    xor l
    cp d
    cp e
    cp c
    cp d
    cp e
    xor [hl]
    db $fc
    xor l
    ld b, d
    ld a, [c]
    cp c
    xor l
    xor [hl]
    ld d, d
    xor [hl]
    ldh [rLCDC], a
    xor [hl]
    xor l
    xor l
    xor [hl]
    ld h, d
    rlca
    ld b, b
    ld [hl], $2b
    dec [hl]
    ld d, b
    ld d, h
    rra
    ld d, h
    ld d, c
    dec hl
    ld d, b
    ld b, e
    ld [hl], $70
    ld [hl], c
    jr jr_021_65ef

    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    ld d, e
    ld d, c
    add b
    add c
    jr jr_021_65f9

    add b
    add c
    add b
    add d
    ld d, e
    call nz, $0404
    jr jr_021_65eb

    rla

jr_021_65eb:
    inc b
    inc b
    add b
    ld d, e

jr_021_65ef:
    call nz, $1504
    dec de
    ld bc, $1401
    inc d
    inc d
    ld d, e

jr_021_65f9:
    inc b
    dec d
    add hl, de
    inc b
    ld a, [de]
    ld bc, $4043
    ld b, b
    ld d, e
    inc b
    ld a, [de]
    ld bc, $0417
    ld a, [de]
    ld d, e
    ld d, h
    ld d, h
    ld h, e
    inc b
    inc b
    ld a, [de]
    ld bc, $0417
    ld d, e
    db $fd
    db $fd
    ld d, c
    inc b
    inc b
    inc b
    jr @+$03

    ld d, $53
    db $fd
    db $fd
    add b
    inc bc
    ld d, h
    add c
    ld e, l
    ld e, [hl]
    ld d, e
    ld d, c
    ret nc

    ld d, b
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld d, e
    ld a, [bc]
    inc c
    rrca
    rlca
    db $fd
    add c
    ld l, l
    ld l, [hl]
    jr c, jr_021_6671

    jr nc, jr_021_666a

    inc d
    inc d
    ld a, $00   ; xor a
    cpl
    inc d
    inc d
    inc d
    ld b, b
    ld b, b
    ld b, b
    ld c, d
    db $fd
    db $fd
    db $fd
    ld c, c
    ret nz

    pop af
    db $fd
    ld b, b
    ld b, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    rst $38
    rst $38
    db $fd
    inc bc
    ld d, h
    ld d, c
    db $fd
    db $fd
    ld d, d
    add b
    add c
    ld a, h
    db $fd
    inc b
    add b
    ld d, d
    ldh a, [$30]
    inc b
    rst $30

jr_021_666a:
    inc b
    rst $30
    ret nz

    inc d
    jr nc, jr_021_66a2

    inc b

jr_021_6671:
    rst $30
    di
    rst $30
    rra
    inc d
    ld d, $19
    ld [hl], b
    ld sp, $3640
    ret nc

    dec [hl]
    ld b, d
    dec c
    nop
    add hl, de
    add b
    ld d, h
    ld d, c
    ret nc

    ld b, a

jr_021_6687:
    jp z, $81cb

    ld d, d
    ld bc, $7019
    db $fd
    db $fd
    ld [$5f03], sp
    ld d, d
    ld c, $1c
    add b
    db $fd
    db $fd
    inc c
    ld de, $5208
    ld d, d
    add hl, de
    inc b
    ld [hl], b
    xor d

jr_021_66a2:
    ld [bc], a
    add b
    add c
    add c
    add c
    add c
    add c
    ld [hl], b
    ld [hl], c
    inc b
    dec d
    inc d
    inc d
    ld [bc], a
    add b
    inc b
    rla
    ld [hl], b
    ld [hl], c
    add b
    add c
    dec d
    inc e
    ld [hl], e
    ld [hl], h
    ld a, [de]
    rla
    add b
    add c
    ld [hl], c
    ld [de], a
    jr nc, jr_021_6687

    inc de
    add e
    add h
    inc de
    inc b
    dec d
    add c
    inc b
    ld a, [de]
    rla
    dec d
    inc e
    add hl, de
    ld b, [hl]
    inc b
    ld a, [de]
    ld [hl], c
    jr jr_021_66ec

    ld d, $19
    ld [hl], b
    add d
    ld [hl], c
    ld a, [de]
    db $10
    ld de, $0d70
    ld c, $1c
    inc b
    ld [hl], d
    ld [hl], d
    add c
    ld [hl], c
    jr jr_021_6702

    ld [hl], c
    add b
    add d

jr_021_66ec:
    dec d
    add c
    add b
    add b
    rst $30
    jr @+$1b

    ret nz

    ld d, $f7
    add b
    ld [hl], b
    ld [hl], c
    dec d
    inc d
    nop
    ld bc, $c319
    ld [hl], b
    add b
    add c

jr_021_6702:
    inc de
    ld a, [c]
    ret nz

    ld d, $18
    ld bc, $1c1b
    jp $e080


    ld b, b
    ld bc, $0116
    add hl, de
    ld b, e
    dec e
    dec de
    ld bc, $531c
    db $fd
    jr nc, jr_021_671f

    db $fd
    db $fd
    ld [hl], c
    inc de

jr_021_671f:
    call nz, $0ec4
    db $fd
    ld d, e
    add c
    inc de
    inc b
    call nz, $fd38
    call nz, Call_021_53c4
    ld [hl], c
    dec hl
    ldh [$fd], a
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    ret nz

    add c
    ld h, h
    add c
    inc b
    jr jr_021_6756

    ld d, d
    ld hl, sp-$80

jr_021_6740:
    ld [hl], c
    inc b
    jr jr_021_675d

    ld d, d
    rrca
    jr nc, jr_021_6740

    add c
    ld h, h
    jr @+$1e

    ld d, d
    call nz, $c4c4
    ld b, b
    ld b, d
    ld e, d
    call nz, $f3c4

jr_021_6756:
    ld d, d
    ld h, h
    ld [hl], b
    db $fd

jr_021_675a:
    ld d, d
    di
    ld d, d

jr_021_675d:
    ld hl, sp-$80
    rlca
    ld hl, sp-$3c
    add b
    db $fd
    ld d, d
    di
    call nz, Call_021_7052
    db $fd
    ld d, d
    jr jr_021_6784

    ld e, $78
    ld hl, sp+$52
    add b
    db $fd
    ld d, d
    jr jr_021_678f

    ld d, d
    ld [hl], b
    ld [hl-], a
    call z, $81f8
    add b
    add c
    ld d, e
    ld c, $17
    ld b, a
    ld [hl], b
    ld [hl], c

jr_021_6784:
    jr nc, jr_021_6789

    ld hl, sp+$53
    ld a, [de]

jr_021_6789:
    dec c
    ld d, d
    add b
    add c
    ld d, e
    ld h, h

jr_021_678f:
    jr jr_021_67e3

    ld [hl], c
    ld [hl], b
    inc c
    jr c, jr_021_675a

    ld [hl], c
    ld h, h
    ld d, e
    dec d
    ld c, $52
    add c
    add b
    add c
    ld d, e
    dec c
    ret nz

    ldh [$f8], a
    inc e
    ld d, d
    ld [hl], c
    call nz, $c4c4
    ld d, e
    add hl, de
    ld h, h
    ld d, d
    add c
    add e
    rrca
    ld hl, sp+$53
    dec de
    rla
    ld h, d
    ld [hl], c
    ld d, e
    inc b
    inc de
    ld b, l
    nop
    ld hl, sp-$47
    ld d, h
    ld d, h
    ld d, c
    ret nc

    ret nc

    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld d, c
    db $76
    xor a
    cp e
    cp c
    db $76
    db $76
    db $76
    db $76
    xor $fe
    cp c
    add [hl]
    add [hl]
    db $76
    db $fc
    rlca
    add [hl]
    cp c
    cp c
    cp c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    rrca
    ld d, h

jr_021_67e3:
    ld b, b
    ld b, b
    ld b, d
    cp c
    cp c
    cp c
    ld d, d
    cp c
    ld d, l
    ld b, b
    ld c, $0c
    cp c
    or d
    jr c, jr_021_6840

    ld de, $1111
    ld d, d
    and b
    and c
    ld h, $6d
    rlca
    jr jr_021_680f

    ld d, d
    cp c
    cp c
    or a
    cp b
    ld h, $12
    ld l, l
    ld d, d
    cp c
    add [hl]
    ld b, b
    jr nz, @+$13

    ld b, e
    ld b, b
    ld c, d

jr_021_680f:
    ld c, [hl]
    ld [de], a
    ld l, l
    ld d, d
    cp c
    or d
    ld d, e
    ld d, h
    ld d, c
    ld c, [hl]
    ld [de], a
    ldh [$81], a
    ld de, $526d
    cp c
    ld b, e
    ld h, e
    ld c, [hl]
    ld [de], a
    ld d, d
    cp c
    ld d, e
    ld d, c
    dec c
    nop
    ld de, $5f6f
    ld d, d
    ld b, b
    ld h, e

Call_021_6830:
    rst $30
    ld e, l
    ld e, [hl]
    rst $30
    ld b, e
    ld b, b
    ld [hl], $52
    ld e, $03
    db $fd

jr_021_683b:
    ld d, e
    ld a, [$fafa]
    ld d, e

jr_021_6840:
    xor b
    db $eb
    xor d
    ld a, [$07fa]
    db $10

jr_021_6847:
    ld a, [$53fd]

Call_021_684a:
    cp b
    cp c
    cp d
    ld b, $06
    ld b, $07
    db $fd
    ld d, e
    or $20
    add b
    add hl, bc
    ld [$16f6], a
    ld d, $17
    ld a, [$53fd]
    jp $1b1a


    ld bc, $190d
    jr jr_021_6847

    call nz, $fdfa
    ld d, e
    jp $011a


    add hl, de
    add hl, bc
    ld a, [$53fd]
    add b
    rst $38
    jr nc, jr_021_683b

    ld a, [de]
    inc e
    add hl, bc
    ld a, [$33fa]
    ld [hl], b
    ld bc, $fdfd
    ld d, d
    ld c, $0d
    ld h, c
    ld bc, $fd53
    db $fd
    ld d, d
    dec c
    inc bc
    ld bc, $530e
    db $fd
    db $fd
    ld h, d
    ld b, b
    rra
    ld b, b
    ld h, e
    db $fd
    db $fd
    ld a, [hl]
    ld d, h
    ld d, b
    ld d, c
    rst $38
    db $fd
    ld a, a
    db $fd
    ld a, [$faf3]
    db $fd
    db $fd
    dec sp
    ld a, [$30fd]
    jr nc, @+$01

    jr nc, jr_021_6929

    db $fd
    or [hl]
    or a
    ld a, [$fdf0]
    ld a, [$a652]
    and a
    ld b, $fa
    db $fd
    ld d, d
    or [hl]
    and d
    and a
    db $fd
    ld e, $fa
    db $fd
    ld d, d
    ld c, a
    or [hl]
    ld b, $fd
    or a
    ld a, [$eba8]
    xor d
    ld d, d
    rra
    db $fd
    ld a, [$b9b8]
    ld a, h
    db $fd
    cp d
    ld d, d
    ld a, [$faf0]
    xor c
    xor $a9
    ld d, d
    rra
    ld a, [$3052]
    jr nc, @+$81

    jr nc, jr_021_6917

    ld [hl], d
    nop
    rrca
    ld d, e
    ld de, $fa53
    ld a, [$53fa]
    ld de, $5311
    ld b, $06
    inc c
    jr nc, @-$04

    ld b, $07
    ld d, e
    ld de, $530f
    rra
    jr nz, @+$23

    add hl, bc
    ld d, e
    rrca
    nop
    ldh a, [$30]
    ld de, $2253
    inc hl
    inc h
    add hl, bc
    ei
    ld a, [$1153]
    rrca
    inc sp
    ret c

    pop hl
    ld de, $3030

jr_021_6917:
    ld d, e
    rrca
    rrca
    ld [$5304], sp
    jr nc, jr_021_692f

    inc b
    ld de, $050f
    ld b, $53
    rrca
    ld de, $0511

jr_021_6929:
    ld b, $70
    ld [hl], c
    ld [hl], b
    ld a, b
    nop

jr_021_692f:
    inc b
    ld a, [$08fa]
    ld d, d
    dec hl
    add b
    ld a, [$0afa]
    dec bc
    dec bc
    dec bc
    ldh a, [$c3]
    ld a, [$520b]
    dec hl
    ld [hl], b
    db $fc
    ld d, d
    inc de
    add b
    rra
    ld [hl], b
    ld a, [$1352]
    ld [hl], b
    jr nc, jr_021_697f

    jr nc, jr_021_698b

    scf
    inc e
    ld [hl], b

jr_021_6954:
    inc b
    inc de
    add b
    jr z, jr_021_6954

    ld a, [$27fa]
    inc de
    ld [hl], b
    jr z, jr_021_6967

    inc e
    ld a, [$1327]
    add b
    ld [hl], c
    ld [hl], b

Call_021_6967:
jr_021_6967:
    ld [hl], c
    ld c, b
    ld b, a
    inc de
    ld [hl], b
    ld d, h
    ld [$8281], sp
    ld [hl], d
    add b
    add b
    add b
    add d
    ld [hl], c
    ld [hl], d
    dec d
    inc d
    inc d
    inc d
    and b
    inc d
    inc b
    inc d

jr_021_697f:
    rla
    add b
    add d
    add c
    inc de
    ld [hl], e
    ld [hl], h
    inc de
    add b
    ld [hl], c
    dec d
    sub d

jr_021_698b:
    jr nc, @+$06

    add hl, de
    add e
    add h
    jr jr_021_69a9

    add c
    ld a, [de]
    dec de
    rla
    dec d
    dec de
    inc d
    add h
    ld [hl], c
    dec de
    inc d
    ld [hl], b
    ld a, [de]
    ld d, $16
    inc e
    ld [hl], b
    ld [hl], b
    add d
    ld [hl], d
    add d
    ld l, b
    nop

jr_021_69a9:
    ld [hl], d
    jr jr_021_69c5

    ld [hl], b
    add d
    add c
    add b
    add c
    jr jr_021_69cc

    add b
    add c
    add b
    add d
    ld d, l
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec hl
    ld [hl], d
    add d
    ld [hl], d
    add c
    add b
    add c

jr_021_69c5:
    add hl, hl
    nop
    add b
    add c
    dec hl
    add c
    add c

jr_021_69cc:
    call nz, Call_021_70c4
    ld [hl], c
    jp Jump_021_702b


    inc b
    inc b
    nop
    adc [hl]
    ld d, $04
    inc b
    call nz, $8180
    jp $802b


    inc d
    rla
    ld a, [c]
    dec d
    add c
    rlca
    dec hl
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld bc, $010d
    add b
    add d
    ld [hl], c
    jr jr_021_69f3

    add hl, bc

jr_021_69f3:
    ld [de], a
    ld bc, $0e2b
    add hl, de
    ld [hl], b
    ld [hl], d
    add c
    jr jr_021_6a0b

jr_021_69fd:
    dec hl
    dec c
    inc e
    add b
    ld c, $18
    inc b
    ld [hl], c
    jr jr_021_6a08

    dec de

jr_021_6a08:
    ld d, e
    db $fd
    db $fd

jr_021_6a0b:
    add c
    dec d
    dec c
    add hl, de

jr_021_6a0f:
    inc c
    jr nc, jr_021_6a0f

    inc b
    ld d, e
    ld [hl], c
    inc b
    dec d
    ld c, $01
    inc e
    inc b
    ld d, e
    add d
    ld [hl], c
    rlca
    db $10
    di
    sub b
    sub c
    ld d, e
    db $fd
    db $fd
    ld [hl], d
    add c
    jr jr_021_6a2b

    dec a

jr_021_6a2b:
    ld a, $53
    adc b
    ld h, c
    inc b
    db $fd
    db $fd
    add c
    ld a, [de]
    ld bc, $5319
    db $fd
    db $fd
    ld [hl], c
    ld a, [de]
    jr nc, jr_021_69fd

    db $fd
    ld bc, $0417
    ld d, e
    add c
    dec d
    rla
    inc b
    jr @+$03

    ld d, $53
    rst $38
    rrca
    db $fd
    ld sp, $3030
    jr nc, @+$3e

    ldh a, [$fd]
    jr nc, @+$36

    ld d, d
    jp $c4c4


    jp $0053


    ld a, b
    ld d, $52
    call nz, $c4c6
    call nz, $fd53
    db $fd
    db $fd
    db $fd
    ld d, d
    ld d, e
    rrca
    inc a
    db $fd
    ld h, d
    ld b, b
    ld b, b
    ld [hl], $d0
    ld e, h
    ld d, b
    ld d, h
    ldh a, [rIE]
    db $fd
    ld d, h
    ld d, c
    ret nc

    ld l, h
    db $fd
    db $fd
    ld [$1152], sp
    ld de, $1952
    inc b
    add b
    db $fd
    db $fd
    ld [$1152], sp
    ld de, $0152
    rla
    ld [hl], b
    db $fd
    db $fd
    ld [$cc59], sp
    ld d, a
    ld d, d
    ld c, $19
    add b
    db $fd
    db $fd
    ld [$9550], sp
    ld d, h
    ld d, d
    dec de
    dec c
    ld d, $fd
    db $fd
    ld [$011a], sp
    inc e
    ld d, d
    inc b
    ld a, [de]
    ld bc, $fdfd
    ld a, [bc]
    ld e, $13
    inc b
    ld d, d
    inc b
    inc b
    ld a, [de]
    db $fd
    db $fd
    db $fd
    ld [$0413], sp
    ld d, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    db $fd
    db $fd
    db $fd
    ld [$1718], sp
    ld d, d
    add b
    add c
    add b
    adc b
    ld [$8281], sp
    ld [hl], c
    add b
    jr @+$1b

    add b
    ld [hl], b
    ld [hl], d
    ld [hl], d
    dec d
    ld d, $01
    dec c
    add b
    ld a, [bc]
    ld bc, $1716
    add b
    add d
    add c
    dec d
    dec de
    ld c, $1b
    rla
    add b
    ld d, $19
    ld de, $04cc
    ld a, [de]
    ld bc, $1a19
    inc e
    ld [hl], b
    ld bc, $181c
    add hl, de
    add hl, de
    ld h, $04
    add b
    inc e
    dec d
    dec c
    ld bc, $7017
    ld [hl], c
    dec d
    ld bc, $1407
    ld hl, sp+$17
    inc b
    add b
    add c
    dec d
    ld bc, $0e0d
    ld bc, $7017
    add hl, hl
    add c
    dec hl
    add b
    add b
    inc sp
    jr nc, jr_021_6b95

    dec hl
    jr nc, jr_021_6b50

    ld [hl], c
    and [hl]
    ret nz

    ld hl, sp-$59
    xor b
    ld [hl], b
    ld [hl], c
    add c
    dec hl
    nop
    ld hl, sp-$4a
    or a
    cp b
    add b
    add c
    ld [hl], c
    dec hl
    rlca
    ld hl, sp-$0a
    ld [$70f6], a
    ld [hl], c
    ld [c], a
    dec hl
    add c
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$80
    add c
    ld [hl], c
    dec hl
    ld [c], a
    dec hl
    ld hl, sp+$70
    ld [hl], c
    add c
    rrca
    dec hl
    add b
    add c

jr_021_6b50:
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ldh [$81], a
    ld hl, sp+$30
    ld [hl-], a
    jr jr_021_6b78

    ld d, d
    add b
    ld [hl], b
    ld [hl], c
    jr jr_021_6b7e

    ld d, d
    rlca
    ld c, $f8
    ld [hl], b
    add b
    add c
    jr @+$1b

    ld d, d
    ld h, h
    add b
    ld [hl], b
    ld [hl], c
    nop
    ldh [rHDMA4], a
    ld a, [de]
    inc e

jr_021_6b78:
    ld e, c
    rst $08
    rst $08
    ld d, a
    ld b, b
    ld b, b

jr_021_6b7e:
    add b
    add c
    call nz, Call_021_5004
    ret nz

    add hl, bc
    inc b
    add sp, $54
    ld [hl], b
    ld [hl], c
    call nz, Call_021_64c4
    inc de
    add b
    add c
    call nz, $80c4
    xor d
    ld [hl], b

jr_021_6b95:
    inc b
    inc b
    ld h, h
    ld h, h
    ld a, [de]
    inc d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, $f8
    ld hl, sp-$7f
    ld d, e
    inc b
    inc de
    ld d, b
    ld [hl], c
    ret nz

    inc bc
    ld hl, sp+$53
    ld d, $01
    ld d, $81
    ld h, h
    ld d, e
    ld c, $01
    dec c
    ld b, b
    ld e, b
    nop
    ccf
    ld d, h
    rst $08
    rst $08
    ld d, a
    ld b, b
    ld h, e
    ld bc, $011b
    ld d, c
    inc e
    ld c, l
    ld b, $04
    jr jr_021_6be2

    inc e
    call nz, $18c4
    inc d
    inc d
    inc e
    call nz, $5540
    ld [hl], c
    call nz, $c4c4
    inc b
    inc b
    ld a, [de]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld sp, $000f

jr_021_6be2:
    ld d, h
    or h
    jr nc, jr_021_6c18

    cp c
    or d
    or d
    ld d, $16
    inc d
    ld d, $25
    and h
    ld b, $18
    cp c
    and l
    or d
    dec c
    inc e
    ld a, [c]
    ld a, [de]
    dec h
    or l
    or [hl]
    or d
    add hl, de
    inc b
    inc bc
    nop
    inc b
    ld c, c
    ld b, b
    ld b, b
    ld [hl], $d0
    ld c, e
    add hl, de
    dec e
    dec bc
    dec bc
    ld d, b
    ld d, h
    ld d, h
    ld d, c
    ret nz

    rlca
    db $fd
    ret nc

    ld d, d
    add hl, de
    add hl, bc
    ld c, a
    ld c, a

jr_021_6c18:
    ld d, d
    inc e
    inc c
    cpl
    cpl
    sbc b
    dec a
    ld c, a
    sbc e
    db $fd
    db $fd
    ld d, d
    inc [hl]
    db $fd
    db $fd
    ld h, d
    ld l, d
    ld d, c
    rst $30
    ld e, l
    ld e, [hl]
    rst $30
    ld d, e
    ld d, h
    ld d, c
    ld h, d
    ld d, e
    ld b, a
    ld [de], a
    ld l, l
    ld de, $535f
    jp $50c3


    ld d, e
    ld d, d
    ld [de], a
    ld [de], a
    ld e, l
    ld de, $1553
    rla
    rst $30
    ld d, e
    ld h, d
    ld b, b
    ld b, b
    ld e, b
    adc $5a
    ld a, [de]
    dec de
    inc d
    ld d, e
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    sub b
    sub c
    rst $30
    ld d, e
    rra
    jr nz, jr_021_6c7f

    inc de
    inc l
    inc de
    dec a
    ld a, $70
    ld d, e
    ld [hli], a
    inc hl
    inc h
    jr jr_021_6c80

    ld bc, $1716
    add b
    ld h, e
    dec d
    ld d, $16
    ld bc, $0101
    dec de
    inc e
    and b
    rst $38
    ld b, b
    db $ec
    ld d, h
    ld b, b
    ld b, b
    ld [c], a

jr_021_6c7f:
    rrca

jr_021_6c80:
    ld d, h
    rst $30
    jp $c313


    ld d, $c4
    inc b
    inc b
    ld [hl], b
    inc d
    ld d, $06
    ld d, $01
    rla
    di
    dec d
    rla

jr_021_6c93:
    add b
    xor h
    ld bc, $18f7
    dec c
    ld d, $61
    ld bc, $7116
    jr jr_021_6c93

    dec c
    pop bc
    dec de
    ld bc, $010e
    add c
    jr jr_021_6cda

    dec de
    inc e
    di
    ld a, [de]
    and d
    inc de
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ccf
    ld b, b
    ld b, d
    ld d, h
    rst $30
    ld d, h
    add sp, $0c
    ld de, $0f52
    ld [hl], c
    jr jr_021_6cda

    rra
    jr jr_021_6cd5

    jr nz, jr_021_6ce9

    ld d, d
    ld de, $1881
    nop
    inc e
    ld [hli], a
    inc hl
    inc h
    ld h, d
    ld [hl], $d0
    dec [hl]

jr_021_6cd5:
    ld hl, $1916
    sub b
    sub c

jr_021_6cda:
    dec d
    ld d, b
    ld d, c
    add h
    ld bc, $50d0
    add hl, de
    dec a
    ld a, $18
    rlca
    ld bc, $1b0e

jr_021_6ce9:
    dec de
    inc d
    inc d
    ccf
    dec de
    ld [hl], b
    ld [hl], c
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld hl, sp+$40
    ld d, h
    ld d, h
    ld b, e
    ldh [rHDMA4], a
    ld b, b
    ld b, b
    ld de, $380f
    rrca
    ld d, h
    ld de, $2611
    inc b
    ret nz

    ld b, b
    call nz, $acc4
    db $eb
    xor [hl]
    ld [hl], b
    inc c
    call nz, $044a
    cp h
    cp l
    cp [hl]
    add b
    inc bc
    ld d, h
    ld d, c
    inc b
    call nz, $f6f2
    xor c

Call_021_6d20:
    ldh [rNR21], a
    or $70
    ld bc, $0e01
    ldh a, [rNR31]
    rla
    dec hl
    jp Jump_021_6080


    ld [hl], b
    dec de
    ld bc, $c319
    jp Jump_021_4171


    ld [hl], b
    ld [hl], c
    rst $30
    jr @+$1b

    rst $30
    ld [hl], d
    ld c, $70
    ld de, $0a53
    dec bc
    ld e, $80
    add c
    add b
    ld h, e
    rrca
    rrca
    ld h, b
    add hl, bc
    rrca
    ld a, [bc]

jr_021_6d4e:
    dec bc
    ld e, $04
    ld b, [hl]
    ld de, $1111
    ld a, [bc]
    ld e, $47
    ld b, $00
    ld e, $04
    ld b, $06
    rlca
    rrca
    ld de, $0f11
    ld [$0752], sp
    ld de, $1811
    ld h, b
    call nz, $0a11
    ld d, d
    jp nz, $0904

    rrca
    ld de, $0f11
    ld d, d
    inc b
    add b
    rst $38
    ld b, b
    inc b
    inc b
    rlca
    rrca
    ld de, $6211
    ld [hl], b
    nop
    ld a, [$8081]
    add c
    ld d, e
    ld d, d
    inc de
    add b
    inc b
    dec d
    db $ec
    ld d, e
    and b
    and b
    db $10
    ret nz

    inc b
    and b
    ld d, d
    inc de
    ld [hl], b
    ld a, [de]
    dec de
    ld d, e
    db $fd
    db $fd
    db $fd
    ld d, d
    inc de
    add b
    inc e
    ld [hl], b
    db $fd
    inc b
    ld d, e
    ld d, d
    inc de
    inc b
    dec bc
    dec bc
    dec bc
    ld d, e
    ld d, d
    inc e
    ld [hl], b
    rrca
    ld bc, $5316
    db $fd
    db $fd
    db $fd
    ld d, d
    ld bc, $5301
    rlca
    inc e
    db $fd
    ld d, d
    ld bc, $400e
    ld b, b

Jump_021_6dc3:
    ld b, b
    ld h, e
    ld h, d
    ld b, b
    ld b, b
    db $10
    ld b, b
    jr jr_021_6d4e

    ld [hl], c
    ld [hl], b
    ld [hl], c
    add hl, de
    ld sp, $3430
    add b
    ld [hl], d
    add c
    add b
    add c
    add hl, de
    ld h, b
    ret z

    inc b
    ld d, d
    ld a, [c]
    ld d, e
    ld [hl], b
    add c
    dec d
    ld c, $19
    ld d, d
    ld d, e
    add b
    ld b, $14
    ld bc, $1915
    ld e, c
    call Call_021_705a
    ld d, $16
    dec c
    inc e
    ld b, l
    sub h
    inc [hl]
    or b
    ld bc, $8046
    ld c, $19
    ld a, [c]
    ld d, b
    sub l
    ld d, c
    ld [hl], b
    dec c
    ret nz

    ccf
    ld b, b
    ld bc, $0116
    inc e
    inc b
    add b
    ld b, d
    rst $30
    add d
    ld [hl], c
    jr @+$03

    ld c, $2b
    ld bc, $0419
    ld [hl], b
    ld [hl], d
    add c
    jr @+$03

    ld bc, $012b
    add hl, de
    inc b
    add b
    add c
    jp $0118


    dec hl
    dec hl
    dec hl
    ld bc, $7017
    ld [hl], c
    jp $011a


    dec hl
    dec c
    dec hl
    ld c, $19
    add b
    add c
    jp $1804


    dec hl
    dec c
    dec hl
    ld bc, $7019
    ld [hl], c
    jp $1804


    dec hl
    dec hl
    dec hl
    ld bc, $801c
    add c
    jp $1804


    dec hl
    ld c, $01
    inc e
    inc b
    ld [hl], b
    rst $30
    rst $30
    inc b
    jr @+$2d

    ld bc, $f719
    inc b
    add b
    ld [$0418], sp
    ld [hl], c
    ld a, [de]
    inc e
    jr jr_021_6e67

    dec de

jr_021_6e67:
    ld d, e
    db $fd
    db $fd
    add c
    dec d
    ld bc, $c019
    add a
    di
    inc b
    ld d, e
    db $fd
    db $fd
    ld [hl], c
    inc b
    inc sp
    jr nc, jr_021_6eaa

    add c
    add b
    jr nc, jr_021_6e82

    di
    add hl, de
    di
    ld a, [de]

jr_021_6e82:
    ld bc, $1c0d
    ld [hl], c
    dec d
    dec c
    inc e
    jr jr_021_6ea4

    pop hl
    jr nz, jr_021_6e92

    dec d
    add c
    ld a, [de]
    add hl, de

jr_021_6e92:
    ld a, [de]
    ld bc, $0116
    ld [hl], c
    ld a, [de]
    inc d
    add h
    inc bc
    inc b
    ld d, $17
    jr jr_021_6ea1

    dec de

jr_021_6ea1:
    add c
    jr @+$03

jr_021_6ea4:
    ld d, $01
    add hl, de
    ld [hl], b
    rst $38
    rst $38

jr_021_6eaa:
    db $fd
    rrca
    inc a
    db $fd
    jr nc, @+$32

    jr nc, jr_021_6ee2

    jr nc, jr_021_6ee8

    inc b
    inc b
    ldh a, [$c0]
    db $fd
    jp $c304


    ld d, e
    ld d, $17
    inc b
    push hl
    inc b
    ld d, e
    inc bc
    rrca
    db $fd
    ld bc, $1701
    inc b
    jp $1b53


    dec de
    inc e
    jp $f03c


    db $fd
    jp Jump_021_7153


    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    rlca
    inc e
    db $fd
    ld [$0e18], sp
    ld d, d

jr_021_6ee2:
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [$011a], sp

jr_021_6ee8:
    ld [hl], b
    ret nz

    db $fd
    ld d, d
    add b
    add c
    add b
    ld [$1a04], sp
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld bc, $fd87
    ld [$9604], sp
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld [$9604], sp
    inc c
    rra
    ldh a, [$fd]
    ld a, [bc]
    dec bc
    inc c
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rst $38
    rst $38
    db $fd
    ld a, h
    ld d, b
    ld hl, sp+$71
    jr jr_021_6f24

    add hl, de
    add b
    add c
    jr jr_021_6f29

    ld c, $04
    ld [bc], a
    add hl, de
    dec de
    ld bc, $4070

jr_021_6f24:
    ld b, b
    ld b, d
    ld hl, sp-$08
    inc b

jr_021_6f29:
    ld a, [de]
    inc e
    add b
    ld d, h
    add sp, $0c
    nop
    ld bc, $1b52
    rla
    inc b
    call nz, $fd70
    db $fd
    ld d, d
    call nz, $0d1a
    ld c, $17
    ld hl, $c404
    add b
    ld c, a
    ld c, a
    ld d, d
    inc b
    ld a, [de]
    dec de
    inc e
    ld [hl], b
    db $fd
    db $fd
    ld d, d
    ld [hl], b
    ld c, $10
    inc b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    db $fd
    db $fd
    ld d, d
    add b
    add c
    rst $30
    rst $30
    add b
    add d
    and b
    ld [de], a
    add b
    add d
    ld [hl], d
    add d
    or [hl]
    ld [hl], d
    add c
    add c
    ld [hl], d
    add c
    db $ed
    add c
    cp d
    ld [hli], a
    sub b
    cp c
    cp d
    cp e
    ld [hl], b
    add c
    jp $c313


    inc b
    jp $80c3


    ld [hl], c
    ld [bc], a
    jr nc, jr_021_6f80

    dec d

jr_021_6f80:
    ld d, $17
    jp $b904


    ld [hl], b
    add c
    cp c
    ld a, [de]
    dec de
    rla
    jp $0409


    cp c
    add b
    ld [hl], c
    jp $1ac3


    dec de
    dec de
    rla
    ld [hl], b
    add c
    cp d
    cp d
    cp d
    add b
    adc d
    ld [hl], b
    cp c
    cp e
    cp e
    jr jr_021_6fbb

    add b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [de]
    inc e
    xor d
    ld [bc], a
    add b
    add c
    add c
    add c
    add c
    add c
    ld [hl], c
    inc b
    jp $c4e5


    push hl
    ld c, $14

jr_021_6fbb:
    ld [de], a
    jp $c381


    inc b
    call nz, $c4e3
    jp Jump_021_714d


    inc b
    db $10
    ld d, b
    ld [de], a
    inc b
    push hl
    call nz, Call_021_4de5
    ld e, a
    ld de, $0481
    ld c, l
    ld c, [hl]
    jp $135d


    add $11
    ld [hl], c
    ld c, l
    ld e, [hl]
    ld [de], a
    ld [de], a
    ld c, l
    ld l, a
    add c
    ld e, l
    inc c
    rra
    ld de, $5f5f
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld [hl], b
    ld [hl], d
    add c
    add b
    xor h
    xor c
    and [hl]
    and a
    xor b
    xor c
    xor l
    ld b, c
    ld c, l
    ld e, a
    cp h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp l
    ld [hl], b
    ld de, $5211
    and e
    and h

Call_021_7008:
    rst $28
    cp d
    xor e
    ld d, e
    add b
    ld de, $5211
    or e
    xor a
    ld de, $bbbf
    ld d, e
    ld [hl], b
    ld de, $5b11
    ret nc

    dec [hl]
    ld e, b
    adc $57
    ld h, e
    add b
    ld l, a
    ld l, a
    ld l, h
    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld [hl], b

Jump_021_702b:
    ld [hl], c
    ld [de], a
    sub [hl]
    sub [hl]
    sub [hl]
    ld [de], a
    ld [de], a
    ld h, h
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [de], a
    ld [hl], b
    ld [hl], d
    add d
    or [hl]
    ld c, a
    ld b, h
    ld a, [$21fa]
    ld c, a
    ld d, b
    ld [hl], c
    ld b, $07
    ld a, [$00fa]
    ld c, a
    dec b
    ld b, $15
    add c

Call_021_7052:
    inc b
    add hl, bc
    ld a, [$fa07]
    ld [$1a04], sp

Call_021_705a:
    ld [hl], c
    inc b
    ld e, $fa
    add hl, bc
    ld [$701d], sp
    ld a, b

jr_021_7063:
    ld b, $81
    inc b
    inc b
    inc b
    pop af
    inc b
    add b
    ld [hl], c
    jp $c3c4


    inc b
    inc b

Jump_021_7071:
    ld [hl], b
    add d
    ld [hl], c
    inc bc
    inc b
    jp Jump_021_70c3


    ld [hl], d
    ld [hl], d

jr_021_707b:
    add d
    ld a, [hli]

jr_021_707d:
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    jr @+$32

    ld bc, $1851
    dec c
    dec de
    inc e
    inc b
    inc b
    and e
    ld d, $0e
    add hl, de
    inc b
    rlca
    inc b
    inc b
    and e

Jump_021_7096:
    dec de
    ld bc, $0d01
    add hl, de
    di
    di
    di
    and e
    ld [hl], c

jr_021_70a0:
    jr jr_021_70ea

    ldh [rDIV], a
    ld bc, $1901
    di
    di
    or b
    add c
    jr @+$03

    ld bc, $0119
    inc c
    inc b
    rst $30
    ld [hl], c
    jr jr_021_70c3

    ld bc, $141b
    ld d, $17
    add c
    jr jr_021_70bf

    add hl, de

jr_021_70bf:
    add h
    db $10
    jr jr_021_7063

Jump_021_70c3:
jr_021_70c3:
    and d

Call_021_70c4:
    add hl, de
    inc b
    rst $30
    ld [hl], c
    ld bc, $a319
    and h
    add hl, de
    ld [hl], b
    ld [hl], c
    jr c, jr_021_707b

    and h
    inc de
    xor b
    xor e
    ld h, a
    inc bc
    jr nc, jr_021_707d

    inc de
    or a
    cp b
    cp c
    cp d

jr_021_70de:
    nop
    cp e
    ld d, d
    rst $20
    jr @-$49

    and d
    ld d, b
    or e
    nop
    rst $28
    or h

jr_021_70ea:
    ld d, c
    ld h, d
    ld b, d
    jr jr_021_70a0

    or d
    ld c, $ad
    call nz, Call_021_50c4
    ld h, d
    ld b, b
    jr z, jr_021_70de

    rst $30
    rst $30
    inc b
    call nz, $0d15
    ldh [rNR21], a

Call_021_7101:
    ld d, b
    ld d, h
    inc b
    ret nz

    dec d
    ld a, [bc]
    ld bc, $0e0e
    rst $30
    rst $30
    ld a, [de]
    dec de
    ccf
    dec de
    ld [hl], b
    ld [hl], c
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $38
    jr nc, jr_021_711b

jr_021_711b:
    jr nc, jr_021_7185

    add hl, de
    pop af
    rst $20
    push hl
    ret nz

    inc b
    nop
    rra
    jr nz, @+$23

    ld d, e
    ld bc, $1716
    push hl
    ret nz

    ld b, b
    ret nz

    inc b
    ld [hli], a
    inc hl
    inc h
    ld d, e

jr_021_7134:
    ld h, e
    ld b, b
    ld e, b
    call Call_021_6357
    rst AddAToHL
    ld d, h
    add sp, -$6b
    ld [hl], b
    db $fd
    add sp, $51
    add hl, de
    add hl, bc
    ld [$0424], sp
    jp Jump_021_7096


    inc e
    ld b, $06

Jump_021_714d:
    ld c, $04
    ld b, $96
    add b
    ld [hl], b

Jump_021_7153:
    ld [hl], c
    ld d, c
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], c
    ld [hl], c
    sub b
    rst $30
    add b
    add d
    ld [hl], d
    add c
    jr @+$1b

    ld [de], a
    add d
    add b
    ld [hl], b
    ld [hl], d
    ld [hl], c
    inc b
    ld a, [de]
    ld e, b
    add b
    dec de
    ld d, $17

Call_021_7170:
    add c
    add d
    ld h, d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    jr jr_021_7191

    ld [hl], c
    add d
    add b
    res 0, d
    ld [hl], d
    add c
    jr @+$1b

    ld de, $8180
    inc b

jr_021_7185:
    jp z, $1581

    dec c
    ldh [rNR21], a
    add hl, de
    ld [hl], b
    ld [hl], c
    jp z, $0315

jr_021_7191:
    ld bc, $8019
    add c
    jp z, $0d18

    add hl, bc
    ld bc, $1b1b
    add hl, de
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld hl, $0118
    add hl, de
    ld [hl], b
    ld [hl], c
    add hl, de
    add b
    cp $54
    ld b, l
    ld a, b
    jp Jump_021_5454


    ld b, a
    jr jr_021_7134

    inc b
    inc e
    ld l, l
    ld de, $c352
    jp $041c


    dec d
    inc e
    ld e, l
    ld d, d
    inc d
    jr jr_021_71c6

    rla
    jp $3513


jr_021_71c6:
    ld b, b
    ld b, b
    jr z, jr_021_71e0

    ld d, d
    jp $0118


    rla
    ld d, b
    and b

Jump_021_71d1:
    ld bc, $6954

Call_021_71d4:
    ld d, d
    inc d
    dec de
    ld c, $18
    ld d, d
    ld bc, $1716
    ld [hl], b
    ld [hl], c
    ld a, [de]

jr_021_71e0:
    rrca
    dec de
    add hl, de
    ld d, d
    ld d, d
    add b
    ld a, [hli]
    ld [hl], c
    add d
    ld [hl], b
    ld [hl], b
    inc de
    ld d, d
    rlca
    inc bc
    ld d, h
    ld b, [hl]
    db $fd
    db $fd
    db $fd
    ld d, b
    ld de, $044e
    ld c, b
    db $fd
    db $fd
    rlca
    rra
    db $fd
    and a
    ld de, $5f11
    ld d, e
    or a
    ld e, b
    adc $78
    ret nc

    db $fd
    adc $5a
    and d
    and a
    ld l, d
    ld d, h
    ld d, h
    ld d, c
    or d
    pop bc
    add h
    db $fd
    or a
    ld d, e
    inc b
    add hl, bc
    and d
    or d
    or d
    or d
    ld d, e
    inc b
    add hl, bc
    rra
    or d
    db $fd
    and d
    inc sp
    jr nc, jr_021_725b

    and a
    xor b
    or d
    rst $38
    nop
    ld d, h
    ld h, d
    ld b, b
    xor b
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    and e
    rrca
    db $fd
    ld b, l
    ld d, h
    cp b
    or d
    ld b, a
    ld [hl], b
    xor b
    and d
    ccf
    db $fc
    db $fd
    ld d, d
    add b
    and l
    xor b
    ldh a, [$e3]

jr_021_7249:
    db $fd
    ld d, d
    ld [hl], b
    or a
    cp b
    ld d, d
    add b
    or d
    rst $08
    ccf
    db $fd
    ld d, d
    ld [hl], b
    ld d, d
    add b
    db $10
    ldh [$2b], a

jr_021_725b:
    ld b, b
    ld b, d
    jr @+$03

    ld bc, $4c19
    inc b
    ld [hl], b
    ld d, h
    ld d, d
    ld a, [de]
    add b
    inc bc
    call z, Call_021_531c
    inc b
    add b
    ld [hl], c
    ld h, d

Jump_021_7270:
    ld e, b
    ld d, a
    ld h, e
    inc b
    ld [hl], b
    add c
    ld d, b
    nop
    add $f7
    ld d, h
    sub l
    sub l
    sub l
    ld d, h
    ld d, c
    di
    add b
    ld [hl], c
    dec hl
    dec hl
    dec hl
    ld bc, $f306
    ld [hl], b
    add c
    rra
    jr nz, @+$23

    dec hl
    ld d, $17
    add b
    ld [hl], c
    ld [hli], a
    inc hl
    inc h
    ld [bc], a
    ld [$2b01], sp
    add hl, de
    di
    di
    ld [hl], b
    add c
    inc b
    dec d
    ld d, $2b
    add hl, de
    ld [hl], b
    ld [hl], c
    add b
    ld c, $38
    inc b
    ld [hl], c
    jr jr_021_72ba

    dec de
    ld bc, $801c
    add c
    jr @+$1e

    dec h
    db $10
    inc b
    inc de
    ld [hl], b
    ld [hl], c

jr_021_72ba:
    dec d
    inc d
    inc e
    dec d
    ld d, $19
    add b
    add c
    dec d
    jr jr_021_7249

    ld bc, $0419
    dec d
    dec c
    rla
    ld [hl], b
    ld [hl], c
    jr jr_021_72e5

    ld c, $1b
    dec de
    ld bc, $1940
    add b
    add c
    jr jr_021_72e6

    dec de
    inc e
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld bc, $7116
    ld a, [de]
    inc b
    add c
    inc b

jr_021_72e5:
    inc b

jr_021_72e6:
    add b
    add d
    ld [hl], c
    ld a, [de]
    dec de
    add c
    jr jr_021_7305

    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ret nz

    inc bc
    db $fd
    add c
    add b
    add c
    add b
    add c
    ld d, e
    ld [hl], c
    jp $c304


    jp $0f53


    inc a
    db $fd

jr_021_7305:
    add c
    inc b
    call nz, $04c3
    ld d, e
    ld [hl], c
    call nz, $c0f0
    db $fd
    db $e3
    call nz, Call_021_53c3
    add c
    jp $04c4


    ld b, e
    ld h, e
    inc bc
    rrca
    db $fd
    ld d, $17
    inc b
    jp Jump_021_5153


    dec de
    inc e
    jp $3e04


    ld hl, sp-$03
    ld d, e
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld b, e
    ld h, e
    rst $38
    rlca
    db $fd
    ld sp, $3030
    jr nc, jr_021_7368

    inc e
    ld [hl], b
    db $fd
    jr nc, jr_021_7371

    ld d, d
    ld de, $a4a3
    and l
    db $ec
    ld d, e
    ld d, d
    ld de, $1144
    or e
    or h

jr_021_734a:
    or l
    jr c, jr_021_734a

    db $fd
    db $fd
    ld d, d
    and c
    rst $28
    and d
    dec l
    ldh a, [$c1]
    ld de, $2d2d
    db $fd
    ld d, d
    ld l, $2e
    ld l, $fd
    ld d, d
    ld [hl], b
    ret nz

    db $fd
    ld de, $1111
    ld c, b
    ld e, e

jr_021_7368:
    ret nc

    dec [hl]
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    and b
    rst $30
    db $fd

jr_021_7371:
    db $fd
    ld d, d
    ld [hl], b
    ld [hl], c
    inc b
    inc c
    db $fd
    ld [hl], b
    ld [hl], d
    ld d, d
    add b
    add c

jr_021_737d:
    rst $30
    jr nc, jr_021_737d

    inc b
    rst $30
    add b
    add c
    ld d, d
    rlc [hl]
    ret nz

    jp z, $04f2

    dec d
    db $fd
    db $fd
    ld l, b
    ld d, $37
    call nz, $1415
    dec de
    rlca
    dec l
    push hl
    jr jr_021_73b6

    inc b
    ld a, [de]
    inc e
    ld l, $1c
    inc b
    push hl
    inc de
    inc b
    add a
    inc b
    dec d
    db $fd
    db $fd
    ld b, a
    ld e, $04
    inc de
    ld a, [de]
    db $fd
    db $fd
    and b
    ld [hl], b
    ld d, d
    dec d
    ld c, $16
    rla

jr_021_73b6:
    ld [hl], c
    jr z, jr_021_73bf

    add b
    add d
    ld [hl], d
    add c
    add c
    add c

jr_021_73bf:
    inc b
    inc b
    add c
    inc b
    rra
    jr nz, @+$23

    ld b, h
    db $10
    inc b
    dec d
    rla
    ld [hl], b
    ld d, $17
    ld [hli], a
    inc hl
    inc h
    ld a, [de]
    add hl, de
    add b
    dec de
    ld bc, $391e
    inc b
    rla
    jr jr_021_73f3

    ld [hl], b
    jr jr_021_73f8

    dec d
    ld bc, $04a0
    ld [de], a
    inc e
    add b
    ld d, $01
    add hl, de
    inc b
    ld a, [de]
    inc e
    ld [hl], b
    dec de
    dec de
    inc e
    inc b
    dec e
    ld a, b

jr_021_73f3:
    ld [de], a
    inc b
    add b
    ld [hl], c
    ld [hl], b

jr_021_73f8:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld a, h
    ldh [rNR11], a
    add c
    ld e, l
    ld l, [hl]
    add b
    add c
    ld [hl], c
    ld l, l
    ld l, a
    ld c, $20
    ld [de], a
    ld e, [hl]
    add c
    jp Jump_021_6dc3


    ld de, $1111
    ld e, a
    ld c, [hl]
    ld [hl], c
    inc b
    ld a, b
    ret nz

    ld de, $0404
    ld l, l
    ld e, a
    add c
    rra
    jr nz, jr_021_7442

    inc b
    ld e, l
    add e
    rrca
    ld de, $2271
    inc hl
    inc h
    ld c, l
    add c
    inc b
    inc b
    ld c, l
    ld hl, $1186
    ld b, e
    ld b, b
    ld b, b
    ld b, d
    ld [hl], c
    ld c, l
    ld e, a
    ld d, e
    db $fd
    db $fd
    ld d, d
    sub l
    add b
    add c
    add c
    add c

jr_021_7442:
    ld [de], a
    sbc h
    ld [de], a
    add c
    add b
    di
    ret nz

    adc $f7
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rst $30
    ld c, l
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld c, $c4
    rst $30
    ld c, l
    ld e, a
    ld de, $386e
    call nz, Call_021_5e11
    rst $30
    ld e, l
    ld de, $c460
    ld l, [hl]
    rst $30
    ld de, $f75e
    ld c, l
    ld sp, $5e11
    ld [de], a
    rst $30
    ld b, e
    ld b, b
    rra
    ld b, b

Jump_021_7473:
    ld b, d
    ld de, $7e11
    db $fd
    ld d, e
    ld d, d
    ld a, [hli]
    ld [bc], a
    add b
    add c
    add c
    add c
    add d
    ld [hl], d
    add c
    rst $30
    jp $1f04


    jr nz, @+$23

    ld [hl], b
    ret nz

    inc b
    add b
    add c
    dec bc
    dec bc
    ld [hli], a
    inc hl
    inc h
    ld a, [c]
    add hl, bc
    db $fd
    db $fd
    rlca
    ld b, $04
    dec e
    dec bc
    inc c
    ld a, [$f7fd]
    ld [hl], b
    ld [hl], c
    add hl, bc
    ld a, [$18fa]
    ldh [rDIV], a
    ld a, [$f7fd]
    add b
    add c
    add hl, bc
    ld a, [$fafa]
    db $fd
    rst $30
    inc bc
    inc sp
    inc b
    ld b, $06
    ld b, $06
    ld [hl], b
    ld [hl], c
    dec d
    rla
    dec d
    ld d, $81
    ld a, [de]
    dec de
    add hl, de
    and e
    and h
    jr @+$1b

    add b
    add c
    dec bc
    dec bc
    ld e, $13
    and e
    and h
    ld a, [de]
    dec de
    ld d, $16
    db $fd
    db $fd
    ld [$b013], sp
    or d
    ld [hl], b
    ld [hl], c
    ld a, [de]
    dec de
    db $fd
    db $fd
    ld [$141a], sp
    rla
    add b
    add c
    ld [hl], b
    ld [hl], c
    db $fd
    db $fd
    ld a, [bc]
    dec bc
    ld e, $18
    ld d, $17
    add b
    add c
    db $fd
    db $fd
    db $fd
    db $fd
    ld [$0118], sp
    ld bc, $1616
    ld b, $06
    ld b, $a0
    and c
    and c
    and c
    and d
    dec de
    dec de
    ld d, $16
    ld d, $a3
    and a
    and a
    and a
    and h
    ld [hl], b
    ld [hl], c
    ld d, l
    add b
    add c
    add c
    add c
    add c
    ld a, h
    ld d, $80
    add d
    rla
    ldh a, [rNR31]
    call nz, Call_021_70c4
    ld [hl], d
    nop
    ld bc, $170d
    call nz, $8180
    ld [hl], b
    ld [hl], c
    nop
    ld [hl], b
    ld [hl], c
    ld a, [de]
    dec de
    ld bc, $1716
    rst $30
    dec b
    add b
    add c
    add c
    ld [hl], b
    ld [hl], c
    jr @+$03

    ld e, $16
    ld bc, $8017
    add c
    jr c, @+$1d

    jr @+$0f

    ld bc, $1901
    ld b, c
    ld [hl], b
    ld [hl], c
    jr jr_021_754e

    add hl, de

jr_021_754e:
    rst $30
    ld [hl], c
    ld de, $1918
    add b
    add c
    ld bc, $7019
    dec b
    add hl, bc
    ld [hl], d
    add d
    add c
    jr jr_021_7578

    add b
    add d
    add d
    add d
    add c
    dec d
    dec de
    dec de
    ld a, [de]
    nop
    add b
    rla
    add c
    add c
    dec d
    inc e
    ld [hl], e
    ld [hl], h
    ld a, [de]
    rla
    call nz, $f770
    inc b
    ld [de], a

jr_021_7578:
    jr nc, jr_021_757e

    inc de
    add e
    add h
    inc de

jr_021_757e:
    call nz, $1680
    rla
    ld a, [de]
    rla
    dec d
    inc e
    ld [bc], a
    and h
    ld [hl], b
    call nz, $1c1b
    inc b
    ld a, [de]
    inc d
    inc d
    inc e
    inc b
    ld [hl], d
    rst $30
    ld [hl], c
    db $10
    xor d
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    add d
    ld [hl], c
    add b
    add d
    add d
    add d
    add d
    ld [hl], d
    add c
    jr jr_021_75a8

    add hl, de

jr_021_75a8:
    add b
    add c
    ld a, [de]
    inc e
    ld [hl], b
    add c
    dec d
    dec de
    dec de
    ld bc, $7017
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], c
    inc de
    ld [hl], b
    ld [hl], c
    jr jr_021_75d6

    add b
    add c
    add b
    add d
    add c
    inc de
    add b
    add c
    jr jr_021_75e2

    ld d, $17
    inc b
    add b
    ld [hl], c
    ld a, [de]
    ld d, $16
    add hl, de
    inc b
    ld a, [de]
    dec de
    rla
    ld [hl], b
    add c

jr_021_75d6:
    inc b
    ld a, [de]
    dec de
    inc e
    inc b
    ld [hl], b
    ld [hl], c
    inc de
    add b
    ld [hl], c
    dec e
    dec bc

jr_021_75e2:
    dec bc
    dec bc
    ld e, $80
    add c
    inc de
    and b
    add c
    add hl, bc
    ld a, [$fafa]
    ld [$1615], sp
    add hl, de
    and e
    ld d, d
    ld [hl], b
    ld [hl], d
    add c
    add b
    add d
    ld [hl], d
    add c
    inc de
    ld d, d
    ld d, d
    add b
    add c
    jp $80c3


    add d
    ld [hl], c
    inc de
    ld h, d
    ld d, d
    dec d
    inc d
    inc d
    inc d
    rla
    add b
    add c
    inc de
    ld d, b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], c
    ld c, e
    inc de
    ld c, h
    inc b
    jr jr_021_762f

    ld d, d
    inc de
    add b
    add c
    ld e, c
    rst $08
    ld e, d
    inc b
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, h
    ld d, c
    inc b
    inc de
    add b

jr_021_762f:
    ld d, d
    inc de
    add b
    add d
    ld [hl], c
    ld a, [de]
    inc d
    inc d
    add hl, de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    inc de
    add b
    ret z

    jp nz, $43fd

    ld b, b
    ld h, e
    or a
    cp b
    and d
    ld h, e
    ld d, h
    ld d, c
    or d
    ld c, $3a
    db $fd
    or d
    ld d, c
    jr jr_021_7670

    ld b, $07

jr_021_7659:
    and d
    inc d
    dec de
    ld hl, sp+$00
    db $fd
    inc e
    inc b
    add hl, bc
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld h, h
    ld h, h
    ld b, $06
    rlca
    inc bc
    inc c
    db $fd
    add d
    ld [hl], d
    add c

jr_021_7670:
    di
    di
    inc b
    inc b
    add hl, bc
    ld [hl], d
    add c
    dec d
    rla
    ld a, [bc]
    inc b
    ld [hl], b
    ld h, h
    ld [hl], c
    ld [hl], c
    and a
    add d
    ld [hl], c
    jr jr_021_769d

    ld [hl], d
    add d
    ld [hl], d
    and l
    or l
    rst $38
    call c, Call_021_52fd
    ld [hl], b
    or d
    ld [hl], e
    rst $08
    db $fd
    ld d, d
    add b
    and d
    ld d, d
    ld [hl], b
    ccf
    rst $38
    db $fd
    ld d, d
    add b
    db $fc

jr_021_769d:
    inc bc
    db $fd
    ld d, d
    ld [hl], b
    ld d, d
    add b
    xor b
    and a
    xor b
    and a
    ld b, b
    dec b
    and l
    xor b
    db $fd
    db $fd
    db $fd
    ld h, d
    ld b, b
    or l
    or l
    xor b
    jp nc, Jump_021_50d2

    ld d, h
    jr z, jr_021_7659

    ld bc, $0471
    jr @+$2d

    add hl, de
    add b
    add c
    ld [hl], b
    add c
    inc b
    jr jr_021_76f1

    inc b
    jr nc, jr_021_76cd

    ld bc, $8017
    ld [hl], c

jr_021_76cd:
    and [hl]
    db $eb
    xor b
    dec hl
    dec hl
    dec hl
    add hl, de
    add c
    or [hl]
    inc c
    jr nc, jr_021_769d

    or a
    cp b
    dec hl
    ld bc, $1616
    ld [hl], c
    or $ea
    or $2b
    dec de
    ldh a, [rSB]
    dec hl
    ld bc, $8101
    jp $1a04


    ld bc, $c342

jr_021_76f1:
    jp $1cc3


    sub b
    inc b
    jp $1ac3


    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    dec d
    rla
    ld [de], a
    inc b
    ld [hl], c
    jr @+$1b

    add b
    add c
    add b
    dec b
    add c
    add b
    inc b
    ld a, [de]
    ld bc, $c417
    ld [hl], b
    inc b
    call nz, Call_021_4043
    ld b, b
    jr jr_021_7749

    ld d, h
    ld bc, $c417
    ld d, e
    ld d, $14
    ret nz

    db $fd
    ld d, $01
    dec de
    inc e
    jp z, $3253

    inc b
    add hl, de
    ld a, [de]
    inc e
    jp z, $f053

    inc b
    db $fd
    db $fd
    ld bc, $3017
    ld bc, $53cb
    db $fd
    db $fd
    rla
    inc b
    ld b, $c4
    inc b
    ld d, e
    db $fd
    db $fd
    jr jr_021_7746

    ret nz

jr_021_7746:
    db $fd
    ld b, e
    ld b, b

jr_021_7749:
    ld [hl], $d0
    dec [hl]
    ld h, e
    ldh [$83], a
    db $fd
    add c
    add b
    add c
    ld d, e
    ld d, c
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    ld c, a
    rrca
    rst $38
    db $fd
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    db $fd
    ld c, a
    ld sp, $c130
    rlca
    db $fd
    ld sp, $3030
    ld [hl-], a
    ld [hl], b
    ld d, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld d, h
    db $fd
    ld l, h
    ret nc

    ld d, b
    ld d, c
    rst $00
    db $fd
    ld a, [bc]
    dec bc
    inc c
    rst $38
    db $fd
    rst $38
    db $fd
    cp $30
    ld sp, $04e8
    db $fd
    db $fd
    ld d, d
    call nz, $0403
    jr nc, jr_021_77c4

    ld [hl-], a
    call nz, $c4e0
    rst $20
    inc b
    dec d
    ld [hl], c
    ld b, $04
    call nz, $1615
    ld bc, $7182
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    dec d

jr_021_77a9:
    ld bc, $0d0e
    inc bc
    inc c
    db $fd
    ld d, d
    jr @+$03

    ld bc, $8019
    add c
    add b
    ld d, d
    jr jr_021_77bb

    dec c

jr_021_77bb:
    jr nc, jr_021_77ed

    db $fd
    add hl, de
    ld b, e
    ld b, b
    ld b, b
    ld d, d
    ld a, [de]

jr_021_77c4:
    dec de
    dec de
    inc e
    ld d, e
    jr nc, jr_021_77fa

    ld a, [de]
    db $10
    call nz, $0432
    ld d, e
    db $fd
    db $fd
    inc b
    dec d
    ld d, $17
    dec d
    rla
    ld d, e
    jr c, jr_021_780b

    ld bc, $fdfd
    ld d, $14
    dec de
    inc e
    ld d, e
    db $fd
    db $fd
    ld c, $1c
    jr nc, jr_021_77a9

    db $fd
    inc b
    inc b
    dec d

jr_021_77ed:
    ld d, e
    dec c
    ld bc, $0419
    dec d
    ld d, $01
    ld d, e
    ldh [$81], a
    ld [de], a
    add c

jr_021_77fa:
    add b
    add c
    add b
    add c
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ldh a, [$c0]
    db $fd
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl], b

jr_021_780b:
    ld d, d

jr_021_780c:
    ld [hl], b
    ld [hl], c
    ld c, l
    ld c, [hl]
    add b
    inc bc
    rrca
    db $fd
    ld d, d
    add b
    add c
    di
    di
    ld [hl], b
    ld d, d
    ld e, a
    ld e, a
    ld de, $f03c
    db $fd
    ld e, [hl]
    add b
    ld b, c
    ld b, b
    ld d, [hl]
    ret nc

    ret nc

    ld d, l
    rst $38
    rst $38
    db $fd
    inc c
    ld [de], a
    ld de, $5d81
    ld l, a
    ld d, e
    db $fd
    db $fd
    ld d, d
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld [de], a
    ld d, e
    inc bc
    inc c
    db $fd
    ld d, d
    ld l, l
    add c
    ld l, l
    ld de, $125e
    ld d, e
    ld d, d
    ld [de], a
    ld [hl], c
    ld [de], a
    jr nc, jr_021_780c

    db $fd
    ld l, l
    ld de, $534e
    ld d, d
    ld [de], a
    add c
    jp z, Jump_021_5dca

    ld de, $0053
    di
    db $fd
    ld d, d
    ld c, [hl]
    ld b, b
    ld b, b
    ld d, [hl]
    ret nc

    ld d, l
    ld b, h
    ld d, d
    ld de, $3fcf
    db $fd
    ld d, d
    ld de, $1152
    ld hl, sp-$1f
    db $fd
    ld de, $5311
    ld d, d
    ld de, $5311
    add a
    rra
    db $fd
    ld d, d
    ld l, l
    ld de, $5253
    ld [de], a
    ld l, l
    ld a, h
    ldh a, [$fd]
    inc sp
    inc [hl]
    ld d, d
    ld [de], a
    ld [de], a
    ld l, l
    ld d, e
    pop bc
    rlca
    db $fd
    ld d, d
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld d, e
    ld d, d
    ld de, $4043
    ld b, h
    rra
    ld a, a
    db $fd
    ld d, d
    ld de, $5253
    call z, $0410
    add b
    add c
    jr @+$1e

    ld a, [de]
    dec de
    ld [hl], b
    ld [hl], c
    dec d
    add hl, de
    dec e
    add hl, bc
    nop
    dec bc
    ld [hl], b
    ld [hl], c
    add b
    add c
    inc b
    ld a, [de]
    inc e
    add hl, bc
    ld a, [$8180]
    ld a, [$7170]
    ldh a, [rP1]

Call_021_78c0:
    ld a, [$7004]
    ld [hl], c
    add hl, bc
    add b
    add c
    inc b
    add b
    add c
    inc b
    ld b, $06
    jr nc, @+$46

    inc b
    ld b, $06
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], b
    ld [hl], c
    dec d
    add b
    add c
    dec d
    db $10
    ld a, c
    inc b
    ld bc, $801c
    add c
    jr jr_021_7955

    ld [hl], c
    jr jr_021_7901

    jr @+$72

    nop
    or c
    dec de
    dec de
    ld bc, $b2b0
    add b
    add d
    dec bc
    ld e, $18
    add hl, de
    jp $07c4


    ld d, $c4
    add b
    ld a, [$1808]
    add hl, de

jr_021_7901:
    inc b
    add $70
    ld a, [$7808]
    ret nz

    call nz, $0118
    rla
    add b
    ld b, $15
    ld bc, $1c01
    jp $83c0


    inc b
    call nz, $1670
    ld c, $01
    inc e
    jp $0180


    ld bc, $201c
    ld b, l
    ld [hl], b
    inc b
    inc b
    inc b
    jp $01c3


    add hl, de
    ld [hl], c
    ld [hl], c
    dec d
    rla
    ld [hl], d
    ld b, h
    jr jr_021_79a5

    add c
    add hl, de
    ld [hl], b
    ld [hl], c
    dec c
    ld hl, $8019
    add c
    dec d
    ld bc, $8180
    ld b, d
    ld bc, $1918
    ld [hl], b
    ld [hl], c
    jr jr_021_7961

    add h
    jr jr_021_79bb

    ld [hl], c
    ld bc, $8019
    add c
    ld b, d
    add hl, de
    ld bc, $8180

jr_021_7955:
    jr jr_021_7964

    ld [hl], b
    call nz, Call_021_7101
    jr @+$0f

    ld d, $16
    ldh [rSB], a

jr_021_7961:
    add hl, de
    add b
    add c

jr_021_7964:
    ld a, [de]
    dec de
    ld b, $01
    dec c
    ld d, $71
    ld [hl], b
    ld [hl], c

Jump_021_796d:
    ld a, [de]
    ccf
    dec de
    add d
    ld [hl], d
    xor d
    ld [hl], b
    add c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    add c
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add d
    ld [hl], c
    jp $15c3


    ld d, $17
    dec e
    dec bc
    dec bc
    ld [hl], d
    add c
    sub b
    sub c
    jr @+$0f

    add hl, de
    add hl, bc
    ld a, [$81fa]
    jp $3e3d


    ld a, [de]

jr_021_79a5:
    dec de
    inc e
    add hl, bc
    ld a, [$16fa]
    rla
    sub b
    sub c
    rra
    jr nz, @+$23

    and b
    and c
    and c
    dec de
    inc e
    dec a
    ld a, $22
    inc hl
    inc h

jr_021_79bb:
    and e
    and a
    and a
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    and e
    and a
    and a
    inc e
    ld a, [$0971]
    ld [$1b1a], sp
    ld [hl], b
    ld a, [$a31c]
    add c
    add hl, bc
    ld a, [bc]
    rla
    dec bc
    and e
    inc c
    ld a, [$1efa]
    db $fd
    ld a, [$faa3]
    ld a, [$fd78]
    ld a, [$fafa]
    and e
    ld hl, sp-$03
    ld a, [$fafa]
    pop hl
    db $fd
    and e
    and d
    ld a, [$e6fa]
    ld b, $05
    and e
    and h
    jr jr_021_79fe

    ld b, $06
    ret nz

    and e

jr_021_79fe:
    and h
    ld [hl], b
    ld d, l
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    and e
    ld d, d
    inc de
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], d
    add c
    add b
    add c
    ld [hl], b
    ld [hl], c
    add b
    ld d, d
    di
    add b
    add c
    dec d
    inc d
    rla
    add b
    add c
    ld [hl], b
    ld d, d
    call nz, Call_021_7170
    inc de
    and $18
    inc d
    rla
    add b
    ld d, d
    call nz, $8180
    ld a, [de]
    inc d
    inc e
    inc b
    inc de
    ld [hl], b
    ld d, d
    di
    ld [hl], b
    ld [hl], c
    ld [hl], b

jr_021_7a3d:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ret nz

    add b
    ld d, d
    inc de
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], c
    inc de

jr_021_7a55:
    add b
    ld [bc], a
    inc b
    add c
    ld [hl], d
    jr jr_021_7a75

    add b
    xor c
    cp c
    or h
    or a
    cp b
    dec d
    ld c, $1c
    and e
    cp c
    inc c
    jr c, jr_021_7a3d

    or h
    jp nc, $f371

    di
    and e
    cp c
    or h
    jp nc, $f381

jr_021_7a75:
    ld [hl], b
    ld b, b
    db $d3
    and e
    cp c
    or h
    jp nc, Jump_021_71d1

    add hl, bc
    or e
    or h
    jp nc, $a6d2

    inc bc
    inc c
    pop de
    add c
    inc b
    rlca
    jp nc, $d2d2

    call nc, Call_021_71d4
    inc b
    add hl, bc
    jp nc, $fe3c

    call nc, $d2d2
    add c
    inc b
    add hl, bc
    dec b
    jr nz, jr_021_7a55

    cp b
    and l
    or l
    cp b
    jp nc, Jump_021_4fd2

    ld c, a
    db $d3
    db $d3
    db $d3
    cp b
    jp nc, $b1fc

    db $d3
    jp nc, $d2d2

    jp nc, $d1d2

    rst $08
    ld a, $d3
    jp nc, $d1d2

    ld sp, $f830
    nop
    db $d3
    jr nc, jr_021_7af1

    pop de
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    call nc, $d1d1
    dec b
    jr c, @-$5e

    ld d, h
    ld b, $06
    ld b, l
    call nc, $d1d1
    ld [$7170], sp
    ld b, l
    ld l, d
    ld a, [de]
    ld d, h
    ld d, b
    add sp, $52
    inc b
    ld a, [de]
    inc e
    db $fd
    dec de
    ld d, $4f
    ld c, a
    ld d, d
    ldh a, [$fd]
    inc b
    inc b
    inc b
    jr jr_021_7b29

    ld b, b
    db $fd
    ld h, d
    db $fd

jr_021_7af1:
    db $fd
    ldh a, [rHDMA4]
    db $fd
    db $fd
    db $fd
    ld d, b
    db $fc
    db $fd
    inc [hl]
    ld c, a
    db $eb
    db $fd
    ld h, e
    ld c, a
    rrca
    db $fd
    ld b, [hl]
    jr nc, jr_021_7b35

    jr nc, jr_021_7b46

    jr nc, jr_021_7b4f

    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    inc bc
    ld bc, $5453
    ld d, c
    ret nc

    ld d, b
    ld d, c
    ret nz

    ld hl, sp-$03
    db $fd
    ld bc, $530e
    ld a, [c]
    ld c, $fd
    add hl, bc
    ld b, b
    ld b, b
    ld h, e
    ld hl, sp+$38
    db $fd

jr_021_7b29:
    ld hl, sp-$08
    add hl, bc
    ld d, h
    ld d, h
    ld c, $0b
    ld d, c
    inc c
    db $fd
    db $fd
    db $fd

jr_021_7b35:
    rst $38
    db $fd
    rst $38
    db $fd
    ldh a, [$30]
    db $fd
    db $fd
    db $fd
    ld sp, $301f
    ld [hl-], a
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b

jr_021_7b46:
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rra
    ld a, h
    db $fd
    ld d, d
    add b

jr_021_7b4f:
    add d
    or [hl]
    ld [hl], d
    ld d, d
    ldh a, [$c0]
    db $fd
    ld h, h
    add b
    db $ed
    add d
    ld sp, $0432
    ld h, h
    inc de
    add b
    inc bc
    rrca
    db $fd
    ld d, d
    ld h, h
    inc b
    inc b
    inc de
    ld [hl], b
    ld d, d
    inc b
    ld h, h
    inc b
    nop
    inc bc
    inc b
    inc de
    add b
    jr nc, jr_021_7bda

    ret nc

    ld h, l
    ld [hl-], a
    ld h, h
    inc de
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld a, [de]
    inc d
    rrca
    nop
    inc d
    inc e
    add b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    jr z, @+$12

    add c
    add d
    or [hl]
    ld [hl], d
    add b
    jr @-$06

    ld bc, $720d
    db $ed
    jp $15c3


    ld [$f80a], sp
    ld c, $01
    ld c, $81
    inc de
    inc b
    inc b
    dec d
    dec c
    ld b, e
    ld b, b
    ld [hl], c
    jr jr_021_7bca

    ld hl, sp-$08
    ld d, $16
    ld c, $53
    db $fd
    add c
    jr @+$10

    ld h, b
    ld bc, $53f8
    db $fd
    ld [hl], c
    ld a, [de]
    dec c
    ld c, $0d
    ld d, e
    db $fd
    add c
    jp $1b1a


    add b
    and b

jr_021_7bca:
    ld [hl], b
    ld bc, $1bf8
    dec de
    inc sp
    jr nc, jr_021_7c43

    ld [hl], c
    rst $30
    jr jr_021_7bef

    rst $30
    ld [hl], c
    ld [hli], a
    add h

jr_021_7bda:
    ld bc, $190d
    inc b
    jr jr_021_7bee

    ld d, e
    db $fd
    db $fd
    ld c, $19
    inc b
    jr jr_021_7c29

    dec b
    ld bc, $fd38
    db $fd
    ld b, b

jr_021_7bee:
    ld b, d

jr_021_7bef:
    ld d, $0d
    cpl
    cpl
    cpl
    db $fd
    ld d, d
    inc e
    nop
    ld bc, $1b1b
    ld c, b
    db $fd
    db $fd
    db $fd
    ld d, d
    jp $1a04


    dec de
    ld c, $53
    rlca
    inc c
    db $fd
    ld d, d
    jp Jump_021_70c3


    ld [hl], c
    ld a, [de]
    ld d, e
    jr nc, jr_021_7c44

    ld [hl], b
    ld [hl], c
    ld b, b
    inc d
    ld [hl], c
    add b
    add c
    inc b
    ld d, e
    db $fd
    db $fd
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], b
    inc sp
    jr nc, jr_021_7c54

    rst $38
    db $fd
    ldh a, [$30]
    db $fd

jr_021_7c29:
    db $fd
    db $fd
    add hl, sp
    jr nc, jr_021_7c5d

    jr nc, jr_021_7c64

    db $fd
    db $fd
    ld [de], a
    di
    ld [hl], b
    db $fd
    ld [de], a
    di
    ld [de], a
    ld d, e
    ld b, a
    inc c
    ld h, h
    di
    pop af
    di
    ld d, e
    db $fd
    db $fd

jr_021_7c43:
    ld [hl], b

jr_021_7c44:
    di
    db $fd
    ld d, d
    ret nz

    ld [de], a
    ld d, e
    ldh a, [rLCDC]
    db $fd
    db $fd
    db $fd
    ld b, c
    db $fc
    db $fd
    ld b, b
    ld b, h

jr_021_7c54:
    ccf
    db $fd
    jr nc, @+$32

    rst $38
    jr nc, @+$01

    inc b
    db $fd

jr_021_7c5d:
    ld d, d
    ld l, l
    ld sp, $3030
    jr nc, jr_021_7c94

jr_021_7c64:
    inc h
    sub b
    ld d, d
    inc [hl]
    db $fd
    ld [de], a
    db $fd
    and $f2
    sub [hl]
    sub [hl]
    ld d, e
    db $fd
    ld [de], a
    db $fd
    inc bc
    inc c
    ld [de], a
    sub [hl]
    sub [hl]
    ld d, e
    db $fd
    ld d, d
    ld c, [hl]
    db $fd
    ld d, d
    sub [hl]
    sub [hl]
    ld d, e
    db $fd
    inc b
    ld a, [c]
    db $fd
    ld d, d
    ld de, $5641
    ret nc

    ld d, l
    ld b, b
    ld b, h
    ld d, d
    ld l, a
    ret nz

jr_021_7c90:
    ccf
    jr nc, jr_021_7c90

    db $fd

jr_021_7c94:
    db $fd
    db $fd
    ld d, d
    ld [hl], b
    ld [hl-], a
    add b
    db $fc
    pop af
    db $fd
    ld de, $5253
    ld l, l
    ld d, e
    rst $00
    rlca
    db $fd
    ld d, d
    ld [de], a
    ld d, e
    ld sp, $3230
    ld [de], a
    ld d, e
    rra
    nop
    db $fd
    ld d, d
    ld [hl], b
    ld [hl], c
    ld e, a
    inc sp
    jr nc, jr_021_7d1d

    ret nc

    ret nc

    ld h, l
    ld [hl-], a
    ld hl, sp+$00
    ld de, $8180
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, l
    ld l, a
    ld l, a
    ld [$7015], sp
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [hl], d
    add c
    add d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], c
    add b
    add c
    inc b
    jr jr_021_7cde

    inc d

jr_021_7cde:
    inc d
    ld d, $16
    ld bc, $7170
    inc b
    jr jr_021_7d00

    ld [hl], b
    ld [hl], c
    jr jr_021_7cec

    dec de

jr_021_7cec:
    add b
    add c
    inc b
    jr jr_021_7d0a

    add b
    add c
    ld a, [de]
    inc e
    ld [hl], b
    ld [hl], b
    ld [hl], c
    dec d
    ld bc, $041c
    inc b
    inc b
    ld a, [c]
    add b

jr_021_7d00:
    add b
    add c
    jr jr_021_7d1d

    ld [hl], b
    ld [hl], c
    inc b
    dec d
    ld d, $14

jr_021_7d0a:
    ld [hl], b
    ld [hl], c
    ld a, [de]
    add hl, de
    add b
    add c
    inc b
    jr jr_021_7d2c

    inc b
    add b
    add c
    inc b
    ld a, [de]
    ld d, $16
    ld d, $1b
    inc e

jr_021_7d1d:
    ld [hl], b
    ld [hl], b
    ld [hl], c
    inc b
    inc b
    jr jr_021_7d32

    inc e
    ld [hl], b
    ld [hl], c
    add b
    nop
    ld bc, $801c

jr_021_7d2c:
    add d
    ld [hl], d
    add c
    jr jr_021_7d4a

    adc b

jr_021_7d32:
    inc b
    dec [hl]
    ld b, d
    inc e
    ld [hl], b
    ld [hl], d
    add c
    nop
    jr jr_021_7d55

    ld d, b
    ld d, d
    ld [hl], c
    ld [hl], b
    ld [hl], d
    add c
    inc bc
    inc b
    jr jr_021_7d5f

    call nz, $8152
    add b

jr_021_7d4a:
    nop
    add c
    inc b
    dec d
    ld d, $01
    inc e
    call nz, $0752
    inc d

jr_021_7d55:
    ld d, $0e
    ld bc, $041c
    inc e
    inc b
    call nz, $1a52

jr_021_7d5f:
    dec de
    inc e
    and b
    ld [hl], b
    inc b
    call nz, Call_021_52c4
    ld [hl], c
    ld [hl], c
    dec d
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld d, d
    add c
    add b
    ld d, l
    add c
    add b
    add b
    add b
    ld d, d
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    rst $38
    rst $28
    inc b
    db $f4
    cp [hl]
    ei
    inc b
    db $f4
    db $f4
    db $f4
    ldh [$bb], a
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp [hl]
    inc b
    db $f4
    db $f4
    db $f4
    ei
    rst $38
    inc b
    db $f4
    ld [bc], a
    add hl, bc
    inc de
    ld d, d
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    ld [hl], b
    ld d, d
    jp $8280


    ld [hl], d
    add d
    inc b
    jp $1381


    add b
    ld d, d
    jr jr_021_7e00

    add b
    add c
    dec d
    add hl, de
    ld [hl], b
    ld d, d
    jr jr_021_7e12

    ld c, b
    ld bc, $0417
    inc b
    dec d
    add hl, de
    add b
    ld d, d
    ld a, [de]
    dec de

jr_021_7dfc:
    ld d, $16
    ld c, $40

jr_021_7e00:
    inc bc
    ld bc, $7019
    ld d, d
    inc b
    inc b
    jr jr_021_7dfc

    add hl, de
    add b
    ld d, d
    jp nz, $1804

    add b
    rst $38
    ld b, b

jr_021_7e12:
    dec c
    ld bc, $01f3
    ld bc, $6216
    ld hl, sp-$2c
    ld [hl], c
    inc b
    add hl, bc
    db $e3
    call nc, $0481
    add hl, bc
    rrca
    call nc, $0471
    inc b
    ld b, $3f
    ld b, $81
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor d
    add b
    ld [hl], c
    add c
    add c
    add c
    dec b
    add c
    add b
    inc b
    jp $1715


    jp $1678


    jp $15f3


    ld c, $c0
    ld b, b
    add hl, de
    di
    jp $18c3


    ld c, $ff

jr_021_7e50:
    ld b, b
    ld b, $18
    pop de
    call nc, $8008
    add c
    ld d, b
    ld [c], a
    ld d, e
    ld d, h
    call nc, Call_021_7008
    ld [hl], c
    add e
    inc c
    inc b
    ld d, e
    ld [hl], b
    ld b, $06
    ld b, $80
    add c
    ld d, e
    add b
    ld [hl], c

jr_021_7e6d:
    dec d
    add h
    nop
    ld [hl], b
    ld d, $17
    ld [hl], c
    sub b
    sub c
    ld d, e
    add c
    jr jr_021_7e6d

    add hl, de
    add b
    add c
    dec a
    ld a, $c0
    inc bc
    jp $8053


    ld d, $01
    ld bc, $5319
    ld [hl], b
    ld bc, $0d0e
    add hl, de
    ret nz

    ccf
    ld b, b
    jp $c3c3


    jp $8053


    ld h, e
    ld [hl], b
    xor d
    add b
    ld d, c
    add c
    add c
    add c
    add sp, -$3d
    add c
    add b
    ld [hl], c
    inc b
    jr z, jr_021_7eab

    dec d
    ld d, $17
    add c

jr_021_7eab:
    jp $1815


    ld bc, $f317
    jr jr_021_7ec9

    ld [hl], c
    jp $01b6


    dec d
    ld d, $0d
    ld l, b
    ld bc, $f381
    jr jr_021_7ecd

    di
    add d
    ld bc, $711b
    jp $1b1a


    di

jr_021_7ec9:
    db $e4
    inc b
    dec c
    inc e

jr_021_7ecd:
    jr jr_021_7e50

    sub b
    inc b
    ld a, [de]
    dec de
    inc e
    di
    jr jr_021_7f48

    db $fc
    ld b, b
    inc b
    dec [hl]
    xor d
    nop
    add b
    add c
    add c
    add c
    add c
    add d
    ld [hl], d
    inc b
    inc b
    ld a, [c]
    jp z, $caca

    ret nz

    inc e
    inc b
    jp z, $80ca

    add c
    ld d, $17
    dec d
    rla
    rst $30
    ld bc, $e001
    ldh [$2b], a
    ld d, $16
    dec de
    inc e
    inc b
    dec c
    ld bc, $1901
    inc b
    inc a
    ld d, b
    ld bc, $f704
    rla
    inc b
    inc b
    inc b
    inc b
    ld [hl], b
    ld c, $0d
    ld b, b
    db $fc
    ld b, b
    ld bc, $1716
    jp $80c3


    ld e, b
    adc $57
    ccf
    and a
    add c
    add b
    or h
    or $81
    add b
    ld [$e0b7], a
    dec hl
    jp $15c3


    ld d, $f7
    rst $38
    dec hl
    ccf
    dec de
    ld bc, $7c01
    dec bc
    rst $30
    dec e
    ld e, $f0
    ld hl, sp+$18
    ld bc, $0971
    pop bc
    ld hl, sp+$08
    jr jr_021_7f46

    add c

jr_021_7f46:
    add hl, bc
    rlca

jr_021_7f48:
    ld hl, sp+$08
    ld a, [de]
    dec de
    ld b, b
    ld b, b
    ccf
    ld b, b
    ld b, d
    ld [hl], b
    nop
    inc a
    ld d, $81
    add b
    add c
    rst $30
    jr jr_021_7f74

    rst $30
    add b
    add c
    add b
    ld bc, $f001
    ccf
    dec hl
    ld d, $16
    ld d, $16
    ld bc, $1419
    nop
    dec de
    ld d, l
    ld b, d
    dec hl
    ld b, e
    ld d, [hl]
    jr jr_021_7f81

jr_021_7f74:
    ld bc, $6217
    ld e, b
    adc $57
    ld h, e
    ld c, $68
    ld bc, $1915
    ld d, b

jr_021_7f81:
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    jr jr_021_7fa2

    ld d, $20
    ld [hl], a
    ld bc, $2c17
    dec d
    ld d, $0e
    ld [hl], c
    jr jr_021_7fa9

    dec c
    dec d
    add c
    add b
    add b
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], b
    jp z, Jump_021_7071

    ld d, $17
    add b

jr_021_7fa2:
    ret nz

    ld d, $81
    add b
    add c
    add b
    dec hl

jr_021_7fa9:
    dec hl
    ccf
    ld d, $0e
    dec hl
    rst $38
    dec hl
    ld h, b
    dec de
    ld c, $01
    dec c
    ld d, l
    ld b, d
    dec hl
    inc e
    ld bc, $1b1b
    add hl, de
    ld h, d
    ld b, b
    ld d, b
    ld bc, $d036
    dec [hl]
    ld b, b
    ld c, $19
    ld de, $5450
    ld d, c
    ret nc

    ld d, h
    dec c
    ld bc, $161c
    ld bc, $2b01
    ld [hl], b
    ld [hl], c
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor b
    add b
    ld [hl], c
    ld [hl], b
    add c
    add c
    add c
    ld [hl], b
    ld d, $81
    add b
    add d
    ld [hl], d
    and e
    ret nz

    dec hl
    db $eb
    and h
    db $eb
    and l
    add b
    add d
    inc e
    or h
    dec hl
    or e
    or l
    and a
    add b
    add sp, -$0a
    dec de
    ld bc, $ea2b
    db $f0

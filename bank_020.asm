; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX

    ld bc, $0e04

Jump_020_4003:
    jr nz, jr_020_4066

    ld [hl], e
    ld bc, $2e04
    dec b
    ld d, l
    nop
    inc c
    jr nz, jr_020_4014

    sub l
    ld [bc], a
    db $76
    ld c, c
    inc bc

jr_020_4014:
    inc bc
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld a, c
    ld bc, $6527
    ld [hl], d
    ld h, l
    ld [bc], a
    adc b
    dec b
    ld a, h
    ld bc, $6669
    jr nz, jr_020_4071

    ld [bc], a
    db $eb
    inc l
    ld bc, $7562
    ld [hl], h
    dec b
    ld d, l
    jr z, jr_020_40a6

    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld hl, $0029
    inc c
    jr nz, @+$07

    dec de
    dec b
    sub l
    ld hl, $0c00
    jr nz, jr_020_4086

    ld [hl], d
    ld hl, $5320
    ld h, l
    ld [hl], h
    jr nz, jr_020_40c0

    ld h, c
    ld l, c
    ld l, h
    inc l
    ld bc, $3b04
    nop
    ld d, h
    ld l, a
    ld [bc], a
    xor h
    inc b
    ld [hl], h
    ld hl, $0c00
    jr nz, @+$05

    ld a, [hl+]
    ld h, c
    jr nz, jr_020_4068

    ld c, $01

jr_020_4066:
    ld [hl], e
    dec b

jr_020_4068:
    db $10
    inc l
    ld [bc], a
    sbc c
    db $76
    ld l, a
    ld l, c
    ld h, e
    ld h, l

jr_020_4071:
    ld hl, $4320
    inc b
    xor e
    ld bc, $7469
    jr nz, jr_020_40dd

    ld h, l
    ccf
    nop
    inc c
    jr nz, @+$04

    ld l, a
    ld hl, $4120
    ld l, l

jr_020_4086:
    jr nz, jr_020_40d1

    ld bc, $b803
    dec b
    ld a, e
    inc bc
    rst $20
    inc bc
    xor $03
    add [hl]
    ld l, a
    ld l, [hl]
    dec b
    ld [$7965], a
    ld h, l
    dec l
    dec b
    ld [bc], a
    inc bc
    rst $00
    ld l, d
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld a, c

jr_020_40a6:
    jr nz, @+$04

    rst $10
    ld bc, $b404
    ld [bc], a
    adc h
    inc bc
    sub b
    ld bc, $6964
    ld h, h
    jr nz, @+$4b

    jr nz, @+$67

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    inc bc
    or d
    inc b

jr_020_40c0:
    ld h, [hl]
    inc b
    dec l
    ld [bc], a
    ld [hl], l
    inc l
    ld bc, $0265
    db $db
    ld l, h
    ld a, c
    inc bc
    ld c, $21
    nop
    inc c

jr_020_40d1:
    jr nz, jr_020_4121

    ld h, c
    ld a, c
    ld hl, $7104
    inc bc
    ld b, c
    ld [hl], l
    ld l, [hl]
    inc bc

jr_020_40dd:
    cpl
    ld h, h
    ld hl, $4520
    inc b
    ld a, e
    ld h, d
    ld l, c
    ld [hl], h
    ld [bc], a
    xor h
    ld l, l
    ld h, c
    ld l, [hl]
    ld [bc], a
    jp nz, $fa05

    dec l
    dec l
    ld l, c
    ld h, [hl]
    inc bc
    ld [$0161], a
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_020_4104

    or d
    ld hl, $0c00

jr_020_4104:
    jr nz, jr_020_4109

    add sp, $03
    cp l

jr_020_4109:
    dec b
    inc c
    inc b
    or $2d
    dec l
    ld c, c
    ld bc, $0275
    jr nz, @+$30

    ld bc, $9d05
    inc bc
    ld l, e
    ld h, c
    ld bc, $6573
    ld h, c
    ld h, [hl]
    ld h, c

jr_020_4121:
    inc bc
    ld a, $6d
    ld h, c
    ld l, [hl]
    ld bc, $e903
    ld [bc], a
    xor b
    dec b
    ld d, d
    ld bc, $0b03
    inc b
    rst $38
    inc b
    sub e
    inc b
    ld [$a503], sp
    ld d, e
    ld l, a
    jr nz, jr_020_4185

    jr nz, jr_020_4140

    add $62

jr_020_4140:
    ld h, l
    ld bc, $0b03
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    inc bc
    pop de
    ld h, e
    dec b
    add c
    inc l
    jr nz, jr_020_4154

    sbc c
    inc bc
    rst $00
    inc bc

jr_020_4154:
    inc d
    ld [bc], a
    ld [c], a
    dec b
    ld a, h
    ld [hl], d
    ld [bc], a
    ld e, b
    ld hl, $0c00
    jr nz, jr_020_4166

    dec de
    ld [bc], a
    ld l, a
    dec b
    sbc [hl]

jr_020_4166:
    nop
    dec b
    sbc l
    inc bc
    sbc a
    dec b
    ld h, c
    ld [hl], e
    daa
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    inc bc
    inc e
    ld bc, $656d
    jr nz, jr_020_417d

    xor a
    inc d

jr_020_417d:
    ld hl, $0500
    ld [hl], h
    daa
    ld h, h
    inc bc
    adc h

jr_020_4185:
    ld l, [hl]
    ld bc, $9c05
    ld [bc], a
    ld b, $03
    or d
    ld h, d
    ld h, l
    dec b
    and $20
    inc bc
    db $d3
    inc l
    ld [bc], a
    or h
    ld h, d
    ld l, a
    ld h, c
    ld [hl], h
    inc bc
    inc bc
    dec b
    ld h, c
    daa
    dec b
    ret nc

    jr nz, @+$75

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld [bc], a
    pop hl
    ld c, c
    ld bc, $0477
    xor e
    inc b
    ld l, a
    daa
    dec b
    ret nc

    ld bc, $8603
    inc b
    jp hl


    ld bc, $6562
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $20
    ld b, h
    ld l, a
    jr nz, jr_020_423e

    ld h, c
    ld bc, $9804
    ld [bc], a
    xor h
    ld [bc], a
    xor e
    ccf
    ld bc, $0202
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_020_424f

    ld h, c
    jr nz, jr_020_423d

    inc bc
    or a
    inc b
    sbc b
    inc l
    inc bc
    ld c, e
    inc b
    ld h, [hl]
    ld [bc], a
    sbc a
    dec b
    pop de
    jr nz, @+$6e

    ld [hl], l
    ld h, e
    ld l, e
    inc bc
    ld e, [hl]
    nop
    inc bc
    inc a
    ld a, c
    ld h, l
    ld [hl], d
    dec b
    ld a, [hl]
    ld bc, $d303
    jr nz, jr_020_425c

    ld l, h
    ld l, a
    ld l, e
    ld h, l
    ld hl, $5401
    inc b
    sbc d
    dec b
    and b
    ld hl, $0400
    ld [de], a
    jr nz, jr_020_4259

    ld l, a
    ld [hl], a
    ld bc, $3d04
    inc bc
    db $d3
    dec b
    sub $27
    ld h, h
    ld bc, $696c
    ld l, e
    inc bc
    add l
    inc b
    ld hl, $6179
    ld bc, $a104
    inc b
    or d
    daa
    jr nz, @+$05

    db $d3
    ld bc, $6e69
    ld [bc], a
    ld e, b
    inc bc
    and l
    inc b
    cpl
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_020_42a3

    ld [hl], l
    ld h, e
    ld l, e
    ld bc, $6573

jr_020_423d:
    ld h, l

jr_020_423e:
    ld l, l
    ld [hl], e
    inc bc
    or b
    daa
    dec b
    ret nc

    ld bc, $7572
    ld l, [hl]
    inc b
    inc a
    inc bc
    and l
    inc b
    sbc [hl]

jr_020_424f:
    ld [bc], a
    add l
    ld [hl], a
    ld h, l
    jr nz, @+$66

    ld l, a
    inc bc
    rst $20
    ld b, c

jr_020_4259:
    ld a, c
    ld h, l
    dec b

jr_020_425c:
    sub $03
    adc h
    ld hl, $4720
    ld h, l
    ld [hl], h
    ld bc, $3737
    scf
    dec b
    call nc, $0902
    ld hl, $5301
    dec b
    db $10
    ld [hl], e
    jr nz, @+$05

    db $d3
    inc l
    ld bc, $ea02
    inc b
    or a
    dec b
    ld b, [hl]
    ld [bc], a
    xor c
    ld [hl], e
    ld l, b
    dec b
    rst $08
    ld bc, $8205
    ld l, h
    ld [hl], l
    ld h, e
    ld l, e
    ld [bc], a
    adc b
    ld a, c
    ld h, c
    ld hl, $5900
    ld h, l
    ld [hl], d
    dec b
    call nc, $0902
    ld bc, $cf05
    inc b
    ld l, a
    dec b
    rst $20
    inc bc
    db $d3
    ld l, $01
    ld c, c

jr_020_42a3:
    ld h, [hl]
    jr nz, jr_020_431f

    ld h, c
    inc bc
    ld b, b
    scf
    scf
    scf
    inc l
    ld bc, $6179
    daa
    ld l, h
    ld l, h
    jr nz, @+$07

    sbc a
    inc bc
    db $d3
    ld hl, $5900
    ld h, c
    daa
    db $76
    ld h, l
    dec b
    cp h
    scf
    scf
    scf
    dec b
    call nc, $0902
    ld hl, $5701
    ld l, a
    ld [hl], a
    ld hl, $5920
    ld h, l
    ld [hl], d
    inc b
    db $ed
    inc bc
    db $d3
    ld hl, $4c20
    inc bc
    rst $28
    ld bc, $2104
    ld a, c
    ld h, c
    ld [bc], a
    adc d
    inc bc
    db $d3
    dec b
    scf
    ld hl, $0300
    add hl, bc
    inc bc
    pop af
    jr nz, jr_020_4367

    ld h, c
    ld bc, $9c05
    ld [bc], a
    ld b, $02
    ld [c], a
    ld h, d
    inc b
    ld d, c
    dec b
    and $20
    ld a, c
    ld h, l
    ld [hl], d
    ld bc, $756c
    ld h, e
    ld l, e
    ld [bc], a
    adc b
    ld a, c
    ld h, c
    ld bc, $7905
    ld [bc], a
    inc b
    ld l, $01
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld b, a
    ld l, a
    ld [hl], h
    inc bc
    sbc b
    ccf
    ld bc, $0202
    nop
    inc b
    or [hl]

jr_020_431f:
    inc b
    add hl, sp
    ld bc, $6761
    ld h, c
    dec b
    sbc c
    ld l, c
    ld h, [hl]
    jr nz, @+$7b

    ld h, c
    ld bc, $c802
    ld [bc], a
    or h
    ld [bc], a
    db $10
    ld l, $00
    ld d, a
    ld l, b
    ld a, c
    inc l
    jr nz, jr_020_4345

    nop
    ld hl, $0301
    ld a, [hl+]
    ld h, d
    inc b
    ld d, c
    ld [hl], e
    ld [bc], a

jr_020_4345:
    jp nz, $9504

    ccf
    inc b
    sbc $05
    ld a, l
    inc bc
    ld h, a
    inc bc
    or b
    ld [hl], e
    dec b
    rst $38
    dec b
    add hl, de
    ld l, a
    ld l, [hl]
    jr nz, jr_020_43bb

    ld l, [hl]
    jr nz, jr_020_43c2

    ld a, c
    ld h, l
    dec l
    ld bc, $0205
    inc bc
    and [hl]
    ld l, d
    ld l, a

jr_020_4367:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld a, c
    ld bc, $7905
    inc bc
    ld h, [hl]
    ld bc, $0804
    ld [hl], e
    ld [bc], a
    call c, Call_020_6603
    jr nz, jr_020_43dc

    ld h, a
    ld h, l
    ld [hl], e
    ld hl, $5401
    ld [hl], d
    dec b
    ret nc

    ld l, h
    inc bc
    and [hl]
    dec b
    dec d
    ld h, l
    ld bc, $e505
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
    inc bc
    sbc e
    dec b
    push hl
    ld l, a
    ld l, [hl]
    inc bc
    ld l, d
    ld h, c
    jr nz, jr_020_4416

    ld [hl], l
    ld h, l
    ld h, l
    ld l, [hl]
    daa
    ld [hl], e
    inc bc
    db $eb
    ld bc, $6f72
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $01
    ld c, b
    ld l, a
    ld [hl], a
    inc b
    ld l, $05

jr_020_43bb:
    ld d, l
    nop
    inc bc
    ld a, [de]
    ld [bc], a
    rla
    inc bc

jr_020_43c2:
    push hl
    ld h, c
    jr nz, jr_020_43c8

    sub e
    inc bc

jr_020_43c8:
    inc b
    ld l, $01
    ld d, h
    ld [bc], a
    jr jr_020_43d2

    ld c, $01
    inc b

jr_020_43d2:
    inc h
    dec b
    rst $20
    ld h, [hl]
    dec b
    db $e3
    ld l, h
    ld h, l
    ld l, $01

jr_020_43dc:
    ld c, c
    ld [hl], h
    inc bc
    ld d, a
    ld [hl], e
    inc b
    add d
    ld bc, $0362
    ld a, $05
    ld a, [bc]
    inc b
    ld [hl], h
    ld bc, $5902
    ld [bc], a
    rst $20
    dec b
    ld d, l
    nop
    inc b
    cpl
    ld l, c
    ld [hl], e
    inc b
    ld l, a
    inc b
    reti


    ld bc, $6943
    ld [hl], h
    ld a, c
    dec b
    db $d3
    jr nz, @+$67

    ld l, h
    ld h, l
    ld h, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    ccf
    ld bc, $0350
    dec d
    jr nz, jr_020_445a

    ld [bc], a
    add l
    dec b
    ld [de], a
    inc b

jr_020_4416:
    cp c
    ld [hl], b
    ld h, c
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld bc, $7573
    ld l, [hl]
    ld l, e
    ld h, l
    ld l, [hl]
    inc bc
    ld [bc], a
    nop
    ld b, c
    ld [hl], e
    jr nz, jr_020_4474

    jr nz, jr_020_44a0

    ld [hl], h
    dec b
    and c
    inc bc
    ld c, $01
    ld [hl], a
    inc b
    ld h, d
    ld [bc], a
    and e
    ld [hl], e
    ld h, l
    ld h, c
    inc l
    jr nz, jr_020_4487

    jr nz, jr_020_44b2

    ld h, l
    ld h, e
    inc b
    inc hl
    ld l, b
    ld l, c
    ld l, l
    ld l, $20
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    ld bc, $0803
    ld [hl], e
    ld h, l
    ld h, c
    ld h, [hl]
    ld h, c
    ld [hl], d
    inc bc
    rst $00
    ld l, l
    ld h, c

jr_020_445a:
    ld l, [hl]
    ld l, $20
    inc b
    cpl
    ld h, c
    ld bc, $2061
    inc bc
    rst JumpTable
    inc bc
    dec c
    ld bc, $7c05
    inc bc
    inc bc
    dec b
    ld h, c
    ld [hl], l
    ld [bc], a
    jr nz, jr_020_4473

    dec b

jr_020_4473:
    add d

jr_020_4474:
    inc b
    sub d
    dec b
    ld a, e
    ld [hl], e
    ld l, $00
    rrca
    dec [hl]
    ld bc, $3607
    rrca
    dec [hl]
    ld bc, $3707
    rrca
    dec [hl]

jr_020_4487:
    ld bc, $3807
    ld d, a
    ld h, l
    ld l, h
    ld [bc], a
    ld [hl], e
    ld bc, $9403
    ld [bc], a
    add hl, de
    ld bc, $6d53
    ld l, c
    ld [hl], h
    ld l, b
    ld a, c
    dec b
    ld c, b
    jr nz, jr_020_4503

    ld l, a

jr_020_44a0:
    ld bc, $9403
    ld h, [hl]
    dec b
    ld [hl], b
    ld [hl], h
    jr nz, jr_020_44ad

    ld [$0201], a
    ld l, c

jr_020_44ad:
    inc b
    ld [$aa02], sp
    ld [hl], a

jr_020_44b2:
    ld h, l
    jr nz, jr_020_44b8

    ld h, c
    ld l, a
    ld l, [hl]

jr_020_44b8:
    jr nz, jr_020_44be

    or l
    ld bc, $6f6a

jr_020_44be:
    ld h, d
    ld [hl], e
    ld [bc], a
    sbc c
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    inc b
    db $ec
    jr nz, @+$77

    ld [hl], e
    inc bc
    and e
    inc bc
    or c
    ld [hl], h
    ld [hl], a
    ld l, a
    jr nz, jr_020_453d

    ld l, [hl]
    inc bc
    or l
    ld bc, $2404
    inc bc
    ld d, [hl]
    inc bc
    dec sp
    inc bc
    sub h
    inc bc
    sbc d
    ld l, $03
    ld a, [c]
    inc b
    add h
    ld h, c
    jr nz, jr_020_4557

    ld h, c
    ld l, [hl]
    ld h, c
    ld h, a
    ld h, l
    ld [hl], d
    ld l, $00
    ld c, b
    ld l, l
    ld l, l
    ccf
    jr nz, jr_020_454c

    ld l, b
    ld h, l
    ld bc, $e502
    jr nz, jr_020_4572

    ld [hl], b
    ld h, l
    ld h, c
    ld l, e

jr_020_4503:
    ld [hl], e
    dec b
    ld d, l
    nop
    inc bc
    inc de
    ld bc, $7349
    ld [bc], a
    sbc b
    ld [hl], e
    ld l, a
    ccf
    nop
    rrca
    dec d
    dec b
    ld d, [hl]
    ld c, b
    ld h, l
    dec b
    ld hl, sp+$73
    ld [bc], a
    push de
    inc b
    ld [hl], b
    ld bc, $0261
    scf
    jr nz, @+$71

    ld h, [hl]
    ld [bc], a
    rst JumpTable
    ld bc, $6176
    ld l, h
    ld [hl], l
    ld h, l
    inc bc
    and h
    ld c, b
    ld h, l
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    dec b
    ld h, c
    dec b
    jr nc, jr_020_453e

    ld a, a
    ld [hl], b

jr_020_453d:
    inc b

jr_020_453e:
    call $d205
    ld [bc], a
    xor d
    inc bc
    ld d, l
    dec b
    ldh [$3f], a
    ld bc, $bb05
    ld [bc], a

jr_020_454c:
    jp hl


    dec b
    cp e
    ld b, h
    ld l, a
    dec b
    jp nc, $0021

    ld [hl+], a
    ld [bc], a

jr_020_4557:
    jp hl


    ld [hl+], a
    dec l
    dec l
    ccf
    ld hl, $e703
    ld c, c
    ld [hl], e
    ld [bc], a
    sbc b
    ld l, b
    ld l, a
    ld [hl], a
    ld [bc], a
    jp nz, Jump_020_7361

    ld l, e
    inc bc
    inc c
    ld h, c
    jr nz, jr_020_4574

    ld [hl+], a
    inc bc

jr_020_4572:
    rst $20
    ld [bc], a

jr_020_4574:
    ld [hl-], a
    nop
    ld [bc], a
    ld [hl-], a
    nop
    ld d, e
    ld [hl], b
    ld l, h
    dec b
    rst $38
    ld l, c
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld [hl], e
    ld [hl], a
    ld h, l
    ld [hl], d
    inc bc
    and e
    ld d, e
    ld [hl], h
    ld [hl], d
    ld h, c
    inc b
    dec h
    ld [bc], a
    pop hl
    ld [hl], h
    ld l, a
    ld bc, $9403
    ld [hl], b
    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld hl, $0200
    push hl
    ld hl, $4401
    ld l, a
    dec b
    jp nc, $0504

    ld hl, $0400
    add a
    ld [bc], a
    and c
    ld bc, $9904
    inc bc
    and e
    ld [bc], a
    dec hl
    ld [hl], a
    ld l, b
    ld a, c
    jr nz, jr_020_45be

    dec [hl]
    ld h, c
    jr nz, @+$05

    ld d, [hl]

jr_020_45be:
    ld hl, $0301
    or c
    ld h, [hl]
    dec b
    ld [hl], b
    ld [hl], h
    jr nz, jr_020_45cc

    ld [$6901], a
    ld l, [hl]

jr_020_45cc:
    inc b
    xor a
    ld [bc], a
    xor h
    inc b
    ld [$a303], sp
    ld d, h
    inc bc
    ld [hl-], a
    ld hl, $5420
    inc b
    add hl, bc
    ld bc, $7469
    inc bc
    dec c
    dec b
    ld [$6568], a
    ld l, c
    ld [hl], d
    ld l, h
    ld l, a
    ld l, a
    ld l, l
    ld hl, $5400
    inc b
    add hl, bc
    dec b
    jp nc, $0d03

    dec b
    ld [$6568], a
    ld l, c
    ld [hl], d
    ld l, h
    ld l, a
    ld l, a
    ld l, l
    ld hl, $0f00
    inc d
    ld bc, $6f53
    inc bc
    sbc h
    daa
    ld l, h
    ld l, h
    inc b
    inc l
    ld bc, $6562
    inc bc
    rst $20
    dec b
    cp e
    ld c, l
    inc bc
    ld [hl-], a
    inc b
    ld c, d
    ld hl, $0501
    cp e
    ld b, h
    ld l, a
    inc bc
    sbc h
    inc b
    ld l, $2e
    nop
    ld [hl+], a
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $2d22
    dec l
    ccf
    ld hl, $e703
    inc bc
    add sp, $70
    ld [hl], l
    ld [hl], h
    dec b
    jp c, $8103

    ld bc, $6176
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_020_46b1

    ld l, [hl]
    ld [bc], a
    ld l, d
    ld h, d
    ld h, l
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    dec b
    ld a, e
    ld [hl], e
    inc bc
    and e
    ld [bc], a
    ld [hl-], a
    nop
    ld [hl+], a
    ld b, h
    ld l, a
    inc bc
    sbc h
    inc b
    ld l, $22
    ccf
    ccf
    inc bc
    rst $20
    ld d, e
    ld h, c
    ld a, c
    jr nz, @+$70

    ld l, a
    inc bc
    dec hl
    ld hl, $0200
    push hl
    ld hl, $4820
    ld h, l
    dec b
    ld hl, sp+$73
    ld bc, $6f64
    inc bc
    sbc h
    inc b
    ld l, $21
    nop
    rrca
    dec d
    dec b
    ld d, [hl]
    ld c, b
    ld h, c
    ld [hl], e
    inc b
    ld [hl], $05
    jp c, Jump_020_646c

    ld bc, $d203
    dec b
    sbc h
    ld [bc], a
    ld b, $01
    inc b
    sub c
    ld h, a
    ld h, l
    ld [hl], h
    ld [hl], h
    dec b
    ld a, e
    ld [bc], a
    ld l, d
    ld [bc], a
    ld h, h
    jr nz, @+$06

    push bc
    ld h, h
    ccf
    ld bc, $0202
    nop
    inc bc
    inc a
    inc bc
    inc hl
    ld hl, $5000
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_020_4715

jr_020_46b1:
    ld [hl], l
    ld l, l
    ld h, d
    dec b
    rlca
    dec b
    ld a, h
    inc bc
    dec c
    ld l, $00
    ld c, b
    ld [hl], l
    ld l, b
    ccf
    ld bc, $e502
    dec b
    ld hl, sp+$73
    inc l
    ld bc, $0222
    ld b, b
    ld [hl], a
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld hl, $0122
    ld [bc], a
    ld [hl-], a
    nop
    inc bc
    inc de
    ld bc, $e502
    dec b
    ld hl, sp+$73
    inc l
    ld bc, $4322
    dec b
    ld l, h
    jr nz, jr_020_46e9

    inc [hl]
    ld l, $22

jr_020_46e9:
    dec b
    ld d, [hl]
    ld d, a
    inc bc
    and d
    ld h, h
    ld l, a
    dec b
    jp nc, $0021

    rrca
    inc d
    ld bc, $7542
    ld [hl], h
    dec b
    ld d, $02
    ld a, $01
    ld [bc], a
    push af
    ld h, c
    jr nz, @+$04

    ld h, h
    ld hl, $0201
    ld [hl-], a
    nop
    inc bc
    or c
    ld [bc], a
    push hl
    ld bc, $696d
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e

jr_020_4715:
    jr nz, @+$70

    ld [bc], a
    jp $a303


    inc bc
    ld d, b
    ld [bc], a
    inc [hl]
    ld bc, $ab03
    dec b
    ld [de], a
    ld [bc], a
    ld l, d
    ld h, e
    ld l, b
    ld h, l
    ld h, c
    ld [hl], b
    jr nz, @+$04

    ld h, h
    ld bc, $6d61
    ld h, c
    ld a, d
    dec b
    ld a, e
    ld l, h
    ld a, c
    inc b
    ld c, d
    ld hl, $0300
    or c
    ld [bc], a
    push hl
    dec b
    add b
    dec b
    ld l, l
    jr nz, jr_020_4747

    xor b
    ld h, d

jr_020_4747:
    ld h, l
    ld bc, $6564
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld h, l
    ld h, h
    ld hl, $0200
    inc l
    ld bc, $9c05
    ld [bc], a
    ld b, $03
    or d
    ld [hl], h
    ld h, c
    ld l, e
    dec b
    ld a, e
    ld [bc], a
    ld l, d
    inc b
    push bc
    ld h, h
    jr nz, @+$04

    ld h, h
    ld bc, $7905
    ld [bc], a
    inc b
    inc bc
    and h
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld [bc], a
    rlc d
    ld [bc], a
    nop
    ld [bc], a
    dec sp
    ld [bc], a
    ret z

    ld bc, $9c05
    ld [bc], a
    ld b, $2c
    ld bc, $8404
    ld h, c
    ld [hl], e
    ld l, e
    ld l, $00
    ld [bc], a
    dec hl
    ld l, [hl]
    ld l, a
    inc bc
    inc b
    ld bc, $de05
    inc b
    ld h, $02
    adc b
    ld l, [hl]
    ld l, a
    ld bc, $6402
    inc bc
    or b
    ld h, e
    ld l, a
    dec b
    dec bc
    ld [bc], a
    ld [hl-], a
    nop
    inc bc
    ld a, [de]
    ld [hl], e
    inc b
    db $76
    jr nz, @+$71

    ld h, [hl]
    ld h, [hl]
    ld bc, $0420
    ret


    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    inc b
    ld [$2173], a
    nop
    inc bc
    add sp, $64
    ld l, c
    ld h, h
    inc bc
    cp [hl]
    ld b, e
    ld l, a
    ld l, a
    ld l, h
    dec b
    sbc [hl]
    nop
    ld [bc], a
    ld de, $012c
    ld a, [bc]
    nop
    inc bc
    and e
    inc b
    db $db
    ld [bc], a
    jp nz, $ab03

    inc b
    ld h, e
    dec b
    and b
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld [bc], a
    sbc b
    dec b
    ld c, a
    ld bc, $0566
    ld [c], a
    ld [bc], a
    ld [hl], l
    inc l
    ld [bc], a
    or h
    ld [bc], a
    ld [hl], a
    jr nz, @+$05

    ld d, l
    ld bc, $3003
    inc bc
    or d
    dec b
    sub h
    ld hl, $0300
    or c
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    ld [hl], e
    ld [bc], a
    jp nz, Jump_020_6166

    ld h, e
    ld h, l
    ld h, h
    inc bc
    or b
    ld h, e
    inc bc
    ld hl, sp+$01
    inc bc
    sub h
    ld [bc], a
    ld a, a
    inc bc
    pop de
    ld c, [hl]
    inc bc
    ccf
    dec b
    add sp, $02
    push af
    dec b
    or d
    ld bc, $d203
    ld h, c
    inc bc
    db $f4
    inc bc
    dec a
    inc bc
    and e
    ld b, c
    dec b
    rra
    jr nz, jr_020_48a3

    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    ld bc, $c602
    ld h, e
    dec b
    add c
    ld [bc], a
    jp nz, Jump_020_7761

    ld h, c
    ld a, c
    dec b
    db $d3
    ld l, a
    ld l, [hl]
    ld [bc], a
    xor d
    ld [hl], a
    ld h, l
    inc bc
    dec h
    ld [hl], e
    ld [bc], a
    add c
    inc bc
    inc d
    jr nz, jr_020_48c7

    inc b
    ld h, d
    ld bc, $6704
    ld [bc], a
    push de
    ld l, c
    ld l, [hl]
    ld bc, $ab02
    inc l
    jr nz, jr_020_48c8

    ld l, [hl]
    inc bc
    add a
    ld bc, $0803
    ld [bc], a
    ld d, [hl]
    inc bc
    push hl
    ld l, e
    ld h, l
    ld [hl], b
    ld [hl], h
    jr nz, @+$04

    and l
    ld bc, $ac04
    ld [hl], h
    inc bc
    dec sp
    ld l, l
    ld h, c
    ld l, [hl]
    dec b
    ld [hl], l
    ld l, $00
    inc c
    inc hl
    inc bc
    db $fd
    ld [bc], a
    ld e, b
    inc bc
    or d
    add hl, bc
    inc bc
    ld [bc], a
    inc d
    dec b
    ld a, a
    inc bc
    jp hl


    inc b
    ld h, [hl]
    ld [bc], a
    or h
    inc bc
    rrca
    ld [hl], e
    ld hl, $0c00
    jr nz, jr_020_48e4

    ld a, c
    ld h, c
    inc bc
    ld h, h
    ld bc, $000a
    inc bc
    and e
    ld [bc], a

jr_020_48a3:
    sub l
    inc b
    or d
    ld l, e
    ld [bc], a
    adc d
    ld l, c
    ld [hl], e
    ld [bc], a
    xor h
    dec b
    rst $38
    dec b
    ld d, l
    nop
    inc c
    inc hl
    ld [bc], a
    ld sp, $8903
    inc b
    sbc l
    ld h, l
    ld l, [hl]
    inc l
    ld bc, $7562
    ld [hl], h
    ld [bc], a
    xor h
    inc b
    ldh [rSB], a
    ld l, b

jr_020_48c7:
    ld h, l

jr_020_48c8:
    inc bc
    adc c
    ld h, h
    dec b
    reti


    inc bc
    or d
    inc bc
    ld a, [hl-]
    ld l, h
    inc bc
    jp hl


    dec b
    inc e
    ld [hl], e
    ld bc, $6e6f
    inc b
    inc d
    ld [hl], h
    ld [bc], a
    ld e, [hl]
    ld bc, $7a05
    ld b, h
    ld [bc], a

jr_020_48e4:
    rra
    inc bc
    and e
    dec b
    ld c, [hl]
    ld [bc], a
    sub a
    ld h, [hl]
    dec b
    or l
    ld bc, $046c
    dec h
    ld [hl], e
    ld [bc], a
    xor h
    ld h, h
    ld h, c
    ld [hl], d
    ld l, e
    inc l
    ld bc, $3e04
    dec b
    xor a
    ld [bc], a
    add l
    dec b
    sbc a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h
    ld hl, $4801
    ld a, c
    ld h, c
    inc l
    jr nz, jr_020_497a

    ld h, c
    inc bc
    ld h, h
    nop
    inc c
    ld [hl+], a
    dec b
    ld d, l
    ld a, [bc]
    nop
    inc bc
    and e
    dec b
    ld d, l
    ld c, b
    ld h, c
    ld [hl], e
    inc b
    inc l
    dec b
    rst $38
    ld h, l
    ld h, h
    ccf
    ld bc, $1102
    inc l
    ld bc, $000a
    ld l, $01
    inc bc
    add sp, $68
    ld h, c
    ld l, h
    ld [hl], h
    ld h, l
    ld h, h
    ld [bc], a
    or h
    inc bc
    jp nz, Jump_020_6f69

    ld l, [hl]
    ld bc, $7902
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld bc, $e504
    inc bc
    inc bc
    ld [bc], a
    sub [hl]
    dec b
    adc $05
    sbc e
    ld [bc], a
    ld c, a
    inc bc
    and e
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    inc b
    ld a, [de]
    ld [bc], a
    db $eb
    ld bc, $6e04
    ld [bc], a
    ld e, h
    ld bc, $656d
    inc b
    inc d
    inc b
    cp l
    ld bc, $dc04
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    inc l
    ld bc, $0274
    ld d, h

jr_020_497a:
    inc bc
    dec sp
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    db $eb
    ld bc, $b504
    jr nz, jr_020_498a

    adc $04
    sub a
    ld l, l
    ld l, c

jr_020_498a:
    ld l, [hl]
    ld h, h
    inc b
    sbc h
    inc l
    jr nz, jr_020_4a03

    ld h, c
    ld h, a
    inc bc
    rst $00
    ld [bc], a
    ld c, a
    inc bc
    and h
    dec b
    sbc l
    ld [hl], d
    ld [bc], a
    adc c
    inc l
    ld bc, $9605
    ld [bc], a
    call c, $1d03
    inc bc
    sbc a
    ld bc, $a402
    ld [hl], b
    ld [hl], d
    inc b
    ld b, b
    ld [hl], h
    ld bc, $fa02
    jr nz, jr_020_4a25

    ld l, h
    ld h, c
    ld l, [hl]
    ld bc, $7905
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $4f02
    inc bc
    and h
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc bc
    add a
    ld [bc], a
    call c, $8b04
    jr nz, jr_020_4a37

    ld h, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    ld bc, $5902
    inc b
    xor h
    ld [hl], h
    inc bc
    dec sp
    inc bc
    sub h
    ld [bc], a
    rst $20
    ld l, $01
    ld [bc], a
    ld de, $e602
    inc b
    inc h
    ld h, c
    inc bc
    db $f4
    inc bc
    dec a
    ld hl, $0301
    db $fd
    ld [bc], a
    ld e, b
    ld bc, $5902
    inc bc
    rrca
    ld [hl], e
    ld hl, $0c00
    ld [hl+], a
    ld [bc], a
    ld h, b

jr_020_4a03:
    ld h, h
    inc b
    xor l
    ld l, c
    ld [hl], h
    inc l
    ld bc, $000a
    ld hl, $0301
    adc l
    dec b
    ld h, e
    jr nz, jr_020_4a84

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, h
    ld hl, $0401
    cpl
    ld h, c
    ld [hl], d
    ld [bc], a
    ld [hl], h
    dec b
    inc c
    dec b
    add hl, bc
    ld a, c

jr_020_4a25:
    inc bc
    rst $20
    ld c, l
    ld a, c
    ld [bc], a
    adc c
    ld [bc], a
    add l
    ld [hl], h
    ld h, c
    ld l, e
    ld [bc], a
    ld [hl], h
    inc b
    sbc a
    ld bc, $7905

jr_020_4a37:
    ld [bc], a
    ld b, [hl]
    ld hl, $0c00
    ld [hl+], a
    ld d, e
    ld h, l
    ld h, l
    inc l
    jr nz, jr_020_4a4d

    nop
    inc bc
    rst $20
    ld [bc], a
    sub c
    ld l, l
    ld h, c
    ld l, [hl]
    ld h, c
    ld h, a

jr_020_4a4d:
    dec b
    ld a, l
    ld [hl], h
    ld l, a
    inc bc
    adc a
    inc bc
    ld e, [hl]
    nop
    inc c
    jr nz, @+$04

    ld bc, $0121
    inc bc
    adc l
    ld h, a
    ld l, h
    ld h, c
    ld h, h
    inc bc
    inc e
    ld bc, $7c05
    ld [bc], a
    ld e, b
    ld bc, $6173
    ld h, [hl]
    ld h, l
    ld l, h
    ld a, c
    ld hl, $0a20
    nop
    ld hl, $0501
    sbc l
    inc bc
    ld l, e
    inc b
    rlca
    ld c, c
    ld bc, $7865
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h

jr_020_4a84:
    ld h, l
    ld h, h
    dec b
    sub $01
    inc bc
    inc d
    jr nz, @+$64

    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    dec b
    ld a, l
    ld l, c
    ld l, [hl]
    inc bc
    dec de
    nop
    inc c
    jr nz, @+$06

    db $db
    ld [bc], a
    jp nz, $0477

    xor e
    ld [bc], a
    db $e4
    ld h, c
    ld bc, $0477
    xor [hl]
    ld a, [bc]
    nop
    inc bc
    and e
    inc bc
    db $fd
    inc bc
    inc sp
    ld bc, $6f74
    ld h, a
    ld h, l
    inc b
    daa
    ld [bc], a
    ld [hl], l
    ld hl, $0c00
    jr nz, jr_020_4b16

    ld h, l
    ld l, h
    ld h, e
    ld [bc], a
    jr z, jr_020_4af1

    ld bc, $0102
    ld hl, $5701
    ld h, l
    ld l, h
    ld h, e
    ld [bc], a
    jr z, jr_020_4afd

    ld bc, $000a
    inc bc
    and e
    inc b
    and b
    dec b
    add c
    inc bc
    push hl
    inc bc
    ld c, l
    ld hl, $0c00
    jr nz, jr_020_4aed

    nop
    ld [bc], a
    db $76
    inc bc
    or c
    inc bc
    reti


    jr nz, jr_020_4af2

    ld d, a

jr_020_4aed:
    ld bc, $6e6f
    ld [bc], a

jr_020_4af1:
    add b

jr_020_4af2:
    inc b
    jp hl


    ld bc, $0368
    jp hl


    inc b
    ld e, h
    ld l, c
    ld a, d
    ld h, l

jr_020_4afd:
    ld bc, $1803
    inc l
    jr nz, jr_020_4b08

    sub [hl]
    ld bc, $e903
    inc bc

jr_020_4b08:
    dec e
    dec l
    dec l
    ld bc, $0574
    ld [hl-], a
    dec b
    rst $08
    ld [bc], a
    or h
    ld l, l
    ld h, c
    ld [hl], d

jr_020_4b16:
    ld l, e
    jr nz, jr_020_4b1b

    ld a, c
    dec b

jr_020_4b1b:
    ld a, [de]
    ld bc, $6877
    ld l, a
    inc b
    ld h, c
    ld h, [hl]
    ld h, c
    ld [hl], h
    inc bc
    ld a, a
    inc b
    ld e, l
    ld [bc], a
    jp nc, $8b04

    jr nz, jr_020_4b92

    ld [hl], d
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $9905
    ld [bc], a
    ret nz

    inc bc
    and h
    dec b
    inc de
    ld [bc], a
    or h
    ld [bc], a
    ld a, a
    inc bc
    pop de
    ld c, [hl]
    inc bc
    ccf
    ld [bc], a
    pop hl
    dec b
    and h
    inc bc
    ld [c], a
    dec b
    and c
    ld [bc], a
    xor h
    inc bc
    dec e
    ld bc, $d203
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], e
    inc l
    ld [bc], a
    jp nz, $f502

    ld h, [hl]
    inc b
    add l
    inc bc
    or l
    ld bc, $0274
    ld d, h
    inc bc
    dec sp
    dec b
    ld a, [c]
    inc bc
    sub a
    ld bc, $7567
    ld l, c
    ld h, h
    inc b
    dec d
    ld [bc], a
    cpl
    ld d, h
    ld [hl], d
    ld l, c
    dec b
    daa
    inc bc
    ld d, d
    ld l, l
    ld h, c
    ld h, h
    ld [bc], a
    ld [hl], h
    dec b
    ld a, $01
    inc bc
    ld a, [hl-]
    ld l, h
    inc bc
    ld b, a
    ld bc, $1a05

jr_020_4b92:
    ld hl, $0220
    ld de, $012c
    ld a, [bc]
    nop
    ld l, $00
    inc c
    ld [hl+], a
    dec b
    dec de
    ld l, [hl]
    ld l, a
    ld hl, $0321
    and e
    inc bc
    or c
    ld h, e
    dec b
    xor l
    ld h, l
    inc bc
    push hl
    ld h, e
    ld [hl], d
    ld [hl], l
    ld l, l
    ld h, d
    ld l, h
    inc bc
    and [hl]
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $0803
    ld [hl], h
    ld [bc], a
    ld d, h
    ld [hl], e
    ld bc, $7a05
    inc b
    ld e, e
    jr nz, jr_020_4c3e

    ld h, c
    ld l, [hl]
    inc bc
    sub c
    ld d, a
    ld h, l
    inc bc
    ld d, a
    dec b
    ld h, h
    ld [bc], a
    ld a, [c]
    inc b
    sub l
    ld hl, $0c00
    ld [hl+], a
    ld hl, $2120
    jr nz, jr_020_4bff

    ld bc, $2a03
    ld h, h
    ld l, a
    inc b
    and l
    ld h, h
    ld l, a
    ld l, $2e
    ccf
    nop
    inc c
    ld [hl+], a
    inc bc
    add sp, $64
    ld l, c
    ld h, h
    dec b
    dec sp
    ld a, [bc]
    nop
    ld l, $01
    inc bc
    xor [hl]
    jr nz, jr_020_4c6c

    ld [hl], d
    ld l, a
    ld [hl], l

jr_020_4bff:
    ld h, h
    ld hl, $0321
    and e
    ld c, h
    ld h, l
    dec b
    ret nc

    ld [bc], a
    sub a
    ld [hl], h
    ld l, a
    ld bc, $656d
    ld hl, $0200
    add [hl]
    inc l
    ld bc, $000a
    ld l, $01
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c
    ld [bc], a
    jr nc, jr_020_4c21

    inc bc

jr_020_4c21:
    add b
    jr nz, jr_020_4c26

    rrca
    inc bc

jr_020_4c26:
    and e
    ld d, e
    inc b
    add d
    ld [bc], a
    or h
    inc bc
    jr jr_020_4ca2

    ld [bc], a
    cpl
    ld h, l
    inc bc
    add e
    ld [bc], a
    dec [hl]
    ld bc, $6203
    ld h, c
    ld l, c
    ld h, h
    inc bc
    dec de

jr_020_4c3e:
    nop
    ld a, [bc]
    nop
    ld hl, $0201
    ld b, l
    ld [hl], e
    ld h, c
    ld h, [hl]
    inc bc
    sub c
    ld [bc], a
    inc a
    inc b
    adc e
    jr nz, @+$04

    db $fc
    ld bc, $5902
    inc b
    ld [$d103], sp
    ld [bc], a
    rla
    ld hl, $4c01
    ld l, a
    ld l, a
    ld l, e
    inc bc
    sub a
    jr nz, @+$04

    rst $20
    ld bc, $2404
    inc b
    jp z, $0121

jr_020_4c6c:
    inc bc
    db $fd
    inc bc
    inc sp
    ld bc, $6f74
    ld h, a
    ld h, l
    inc b
    daa
    ld [bc], a
    ld [hl], l
    inc l
    ld bc, $000a
    ld hl, $4201
    ld a, c
    ld [bc], a
    xor h
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    ld bc, $0309
    ld c, c
    ld l, l
    ld [hl], b
    ld h, c
    dec b
    add sp, $72
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    dec b
    ld a, l
    ld h, c
    jr nz, @+$6e

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$05

jr_020_4ca2:
    ld b, d
    ld h, c
    ld bc, $6f68
    ld l, l
    inc bc
    and [hl]
    ld [hl], b
    ld l, c
    ld h, a
    ld h, l
    ld l, a
    ld l, [hl]
    ld bc, $e903
    ld l, c
    ld l, l
    ld l, l
    ld h, l
    ld h, h
    ld l, c
    dec b
    and d
    ld l, h
    ld a, c
    ld bc, $5c03
    dec b
    sbc e
    ld l, a
    ld l, [hl]
    inc bc
    or d
    ld [bc], a
    inc b
    inc bc
    and $68
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_020_4d48

    dec b
    db $10
    dec b
    sbc e
    ld h, c
    ld [hl], e
    dec b
    rlca
    inc b
    rlca
    dec b
    push hl
    ld l, [hl]
    ld l, a
    ld [hl], h
    inc bc
    adc [hl]
    ld l, $01
    inc b
    sbc [hl]
    ld [bc], a
    db $eb
    inc b
    and h
    inc bc
    nop
    inc bc
    and [hl]
    ld l, c
    ld l, [hl]
    ld bc, $0402
    ccf
    ld bc, $9102
    ld h, c
    dec b
    jp hl


    ld bc, $9204
    inc bc
    and [hl]
    inc b
    ld c, c
    ld bc, $7469
    ld l, $00
    ld [bc], a
    ld b, d
    inc b
    ld h, c
    dec b
    db $fc
    dec b
    cp d
    inc bc
    jr jr_020_4d7b

    ld [hl], l
    ld l, h
    inc bc
    inc sp
    ld [hl], d
    ld hl, $4a01
    ld [hl], l
    ld [hl], e
    ld [hl], h
    inc b
    ld b, $03
    and [hl]
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $4505
    ld [hl], e
    inc b
    ld h, $03
    add a
    ld l, $00
    ld c, c
    jr nz, jr_020_4d37

    xor a
    ld l, b
    inc bc

jr_020_4d37:
    ld sp, hl
    ld bc, $6562
    ld h, l
    ld l, [hl]
    ld [bc], a
    sbc b
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $01
    inc b
    sbc [hl]
    daa
    ld [hl], e

jr_020_4d48:
    ld [bc], a
    ld a, h
    ccf
    nop
    ld c, h
    dec b
    and d
    ld l, h
    ld a, c
    ld [bc], a
    xor h
    ld l, h
    ld h, c
    db $76
    ld h, c
    ld bc, $6574
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], d
    inc bc
    ccf
    inc bc
    ld d, d
    inc bc
    add [hl]
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], b
    dec b
    ld c, d
    nop
    ld d, h
    ld l, b
    dec b
    ld a, e
    ld [hl], e
    jr nz, jr_020_4ddb

    inc bc
    ld sp, hl
    ld bc, $6562
    ld h, l
    ld l, [hl]
    ld [bc], a

jr_020_4d7b:
    call nz, $0420
    ld l, $01
    inc bc
    and b
    ld [bc], a
    sbc c
    ld [bc], a
    ld a, e
    ld [hl+], a
    jr nz, jr_020_4def

    dec b
    and e
    ld l, $00
    ld d, a
    ld l, b
    ld l, a
    ld h, c
    ld hl, $4120
    jr nz, jr_020_4d98

    ld a, e
    ld [hl+], a

jr_020_4d98:
    ld bc, $0566
    and e
    inc bc
    sub l
    ld [bc], a
    or h
    add hl, bc
    inc bc
    ld b, l
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$52

    ld l, h
    ld h, c
    ld a, d
    ld h, c
    add hl, bc
    nop
    ld l, $00
    ld c, l
    ld a, c
    ld hl, $0320
    ld a, [hl+]
    ld [bc], a
    sub e
    ld bc, $6c63
    ld l, a
    dec b
    sbc h
    ld [hl], e
    ld hl, $5701
    ld [bc], a
    db $f4
    ld h, h
    ld l, c
    ld h, h
    ld [bc], a
    jp nz, $a505

    inc bc
    inc l
    ccf
    nop
    ld b, c
    ld l, b
    ld l, b
    ld l, b
    inc bc
    and l
    ld c, c
    ld [hl], h
    jr nz, jr_020_4ddd

    sub d
    ld [hl], e

jr_020_4ddb:
    inc bc
    ld d, c

jr_020_4ddd:
    ld hl, $4500
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_020_4de8

    and b
    ld [bc], a
    or h

jr_020_4de8:
    ld [bc], a
    ld a, e
    ld [hl+], a
    jr nz, jr_020_4e53

    dec b
    and e

jr_020_4def:
    inc l
    ld bc, $9403
    ld l, h
    ld h, c
    db $76
    ld h, c
    jr nz, jr_020_4e65

    ld h, l
    db $76
    ld h, l
    ld l, h
    ld bc, $6168
    ld [hl], e
    jr nz, jr_020_4e07

    inc [hl]
    ld l, $01
    ld d, e

jr_020_4e07:
    ld l, a
    ld l, a
    ld l, [hl]
    inc l
    inc b
    and l
    ld [hl], a
    inc bc
    or a
    ld [bc], a
    push af
    ld h, c
    ld l, [hl]
    ld a, c
    inc bc
    or b
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $4100
    ld l, b
    ld l, b
    inc bc
    cp c
    inc b
    sbc [hl]
    ld bc, $0467
    add hl, bc
    jr nz, jr_020_4e95

    ld h, c
    db $76
    ld h, c
    ld hl, $4101
    jr nz, @+$6e

    ld h, c
    db $76
    ld h, c
    jr nz, @+$64

    ld h, c
    ld [hl], h
    ld l, b
    inc bc
    push hl
    inc bc
    sub h
    dec b
    ld b, a
    jr nz, @+$05

    add hl, sp
    ld bc, $a103
    jr nz, jr_020_4eb7

    inc b
    jp nz, $0363

    rst $00
    inc bc
    sub h
    ld [bc], a
    add hl, de
    ld bc, $0444

jr_020_4e53:
    dec d
    ld hl, $0300
    or c
    db $76
    dec b
    add l
    ld bc, $f502
    inc bc
    add [hl]
    ld h, c
    ld h, e
    ld [hl], h
    inc bc
    rst $00

jr_020_4e65:
    ld [hl], l
    ld [hl], b
    jr nz, jr_020_4ecb

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    inc bc
    ld l, d
    inc bc
    sub h
    ld [bc], a
    ld a, e
    ld l, $22
    nop
    ld [bc], a
    ld b, h
    inc bc
    ld b, b
    ld h, c
    ld bc, $6f6c
    ld [hl], h
    jr nz, jr_020_4ef1

    ld h, [hl]
    inc bc
    ld d, c
    ld bc, $0109
    ld [bc], a
    add hl, bc
    ld bc, $0361
    cp h
    inc bc
    ld c, $2e
    nop
    ld [bc], a
    ld b, h
    ld [bc], a

jr_020_4e95:
    db $e4
    add hl, bc
    ld bc, $724f
    ld h, l
    ld bc, $0443
    ld c, b
    add hl, bc
    nop
    inc bc
    db $ec
    ld h, d
    ld a, c
    ld l, $01
    ld [bc], a
    db $ec
    dec b
    add d
    ld [bc], a
    xor e
    ld bc, $fd05
    inc b
    ld c, [hl]
    ld h, h
    inc bc
    or a
    inc b
    ld l, b

jr_020_4eb7:
    inc b
    ld [hl], $21
    nop
    add hl, bc
    ld bc, $0b04
    ld [bc], a
    call nc, $e705
    ld h, h
    dec b
    adc b
    ld hl, $4f01
    ld l, [hl]
    ld h, l

jr_020_4ecb:
    jr nz, jr_020_4f40

    ld l, c
    ld [hl], b
    jr nz, jr_020_4f40

    ld h, [hl]
    ld [bc], a
    sbc c
    ld h, e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    inc b
    or b
    inc b
    jr nz, jr_020_4eff

    nop
    ld [bc], a
    dec sp
    ld h, h
    ld l, c
    ld h, a
    inc b
    ld [hl], d
    inc bc
    sub h
    ld h, a
    inc bc
    cp h
    inc bc
    db $ec
    ld bc, $9504
    inc l

jr_020_4ef1:
    ld [bc], a
    jr nc, jr_020_4ef5

    dec b

jr_020_4ef5:
    rrca
    add hl, bc
    ld bc, $0902
    ld l, $01
    dec b
    ld b, $20

jr_020_4eff:
    dec b
    db $fd
    ld [hl], e
    ld bc, $6e03
    jr nz, jr_020_4f73

    ld l, a
    ld [hl], h
    inc bc
    dec sp
    add hl, bc
    ld bc, $0902
    ld hl, $4900
    ld h, [hl]
    ld [bc], a
    jr nc, jr_020_4f36

    ld h, h
    ld l, a
    ld bc, $9403
    ld [bc], a
    add hl, de
    ld bc, $0444
    dec d
    inc bc
    adc [hl]
    inc l
    ld [bc], a
    jp nz, $6163

    ld l, [hl]
    inc bc
    ld b, b
    ld h, c
    ld bc, $0109
    ld [bc], a
    ld e, e
    add hl, bc
    nop
    ld l, $00
    inc b

jr_020_4f36:
    dec a
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_020_4fa0

    ld [hl], l
    ld [hl], e

jr_020_4f40:
    ld a, c
    ld hl, $5401
    inc b
    sub l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$6e

    ld l, a
    ld [hl], h
    inc bc
    dec sp
    inc b
    and $05
    call nc, $0902
    ld bc, $7461
    ld [bc], a
    xor h
    ld [bc], a
    ld a, e
    ld [hl+], a
    ld bc, $6902
    inc b
    ld sp, $002e
    ld c, b
    ld h, c
    db $76
    dec b
    ld a, e
    ld [bc], a
    adc a
    ld bc, $5105
    inc b
    ld l, a
    ld h, h
    ld l, a
    ld [bc], a

jr_020_4f73:
    jp nz, $6e61

    ld a, c
    inc bc
    ld d, c
    ld l, $04
    ld [hl], c
    ld bc, $bd03
    add hl, bc
    ld bc, $0902
    ld hl, $5600
    ld l, a
    ld l, h
    ld h, e
    ld h, c
    ld l, [hl]
    ld l, a
    dec b
    dec a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [hl], e
    ld bc, $9204
    dec b
    db $d3
    ld [bc], a
    rst JumpTable
    ld hl, $0600
    inc e
    ld b, h
    ld l, c
    ld h, a

jr_020_4fa0:
    ld h, a
    dec b
    and $02
    sub d
    ld bc, $9104
    add hl, bc
    ld bc, $0902
    ld b, $1c
    ld bc, $1c06
    ld b, h
    ld l, c
    ld h, a
    ld h, a
    dec b
    and $20
    dec b
    ld [hl], e
    ld bc, $de05
    inc bc
    dec hl
    jr nz, jr_020_5024

    inc b
    ld c, b
    ld b, $1c
    nop
    ld c, c
    inc bc
    adc h
    ld [bc], a
    ld a, h
    dec b
    add b
    ld [hl], h
    ld [bc], a
    ld l, b
    ld [bc], a
    sub d
    ld bc, $f402
    inc b
    and c
    inc bc
    add h
    inc l
    ld bc, $a105
    inc bc
    cp d
    dec b
    jp nz, $0301

    rst $10
    ld l, c
    ld [hl], h
    ld hl, $4900
    jr nz, jr_020_505e

    ld l, l
    dec b
    and e
    dec b
    call nc, Call_020_724f
    ld h, l
    ld bc, $0443
    ld c, b
    add hl, bc
    nop
    inc bc
    db $ec
    ld h, d
    ld a, c
    dec b
    ld d, l
    nop
    ld d, d

Call_020_5001:
    ld [hl], l
    ld l, l
    ld l, a
    ld [hl], d
    ld [hl], e
    jr nz, jr_020_500c

    ld l, b
    inc bc
    pop de
    inc bc

jr_020_500c:
    ld c, d
    ld bc, $0109
    ld d, d
    inc bc
    ei
    add hl, bc
    nop
    ld [bc], a
    call c, $be02
    inc bc
    and h
    ld [bc], a
    dec sp
    ld l, l
    ld l, c
    ld a, b
    ld [bc], a
    or h
    ld [hl], h
    ld [hl], a

jr_020_5024:
    ld l, a
    inc l
    ld [bc], a
    push de
    dec b
    ld h, h
    ld [hl], l
    ld l, [hl]
    ld h, d
    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    ld bc, $0a05
    jr nz, @+$71

    ld [hl], d
    inc bc
    sub c
    ld b, d
    ld [hl], l
    ld [hl], h
    inc bc
    sbc [hl]
    dec b
    cp d
    ld [bc], a
    xor e
    ld hl, $0500
    ld b, $03
    ld a, h
    jr nz, @+$69

    ld [hl], l
    ld a, c
    ld [hl], e
    ld bc, $5a03
    dec b
    push de
    ld d, b
    ld l, c
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, c
    ld h, c

jr_020_505e:
    ld l, [hl]
    ld [hl], e
    dec b
    ld a, a
    ld [bc], a
    push af
    ld [hl], e
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, h
    dec b
    ld a, l
    inc b
    jp nc, $002e

    ld c, h
    dec b
    and d
    ld l, h
    ld a, c
    inc l
    jr nz, @+$04

    add e
    ld bc, $614d
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], h
    inc bc
    adc c
    ld h, d
    ld h, l
    ld h, a
    ld [hl], l
    ld l, [hl]
    ld bc, $0563
    db $ec
    inc bc
    and [hl]
    ld l, h
    ld l, a
    ld [hl], h
    ld [hl], e
    ld bc, $666f
    inc bc
    ld a, h
    jr nz, jr_020_509a

    add hl, sp
    ld [hl], e
    inc bc

jr_020_509a:
    and h
    ld c, c
    ld [bc], a
    ldh [rDIV], a
    ld a, [de]
    inc b
    ld a, h
    ld l, c
    ld [hl], h
    jr nz, @+$06

    rlca
    ld [bc], a
    and l
    ld bc, $7b02
    ld l, $22
    nop
    ld b, a
    ld [hl], d
    ld h, c
    ld h, d
    jr nz, jr_020_50b9

    call z, $012c
    ld l, b

jr_020_50b9:
    ld l, c
    ld [hl], h
    jr nz, jr_020_5130

    ld [hl], a
    ld l, c
    ld [hl], h
    dec b
    ld bc, $0301
    jp hl


    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, [hl]
    jr nz, @+$05

    ld e, c
    ld bc, $4203
    ld h, [hl]
    ld h, c
    ld [hl], d
    inc bc
    ldh [rSC], a
    db $76
    add hl, bc
    ld bc, $5b02
    ld [hl], e
    add hl, bc
    nop
    inc bc
    ld b, c
    ld [hl], e
    ld l, a
    inc b
    xor d
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld hl, $0900
    inc bc
    ld d, d
    ld l, a
    ld [hl], e
    ld h, c
    inc b
    rst $08
    ld l, l
    ld [bc], a
    cp c
    ld bc, $656e
    ld h, e
    ld l, e
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    inc b
    add hl, de
    ld [hl], e
    ld bc, $046c
    cp [hl]
    jr nz, jr_020_510a

    and a
    ld [hl], e
    ld l, $01
    ld b, e

jr_020_510a:
    ld h, l
    ld l, h
    ld h, l
    ld h, d
    ld [hl], d
    ld l, c
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    inc b
    ld a, h
    inc bc
    sub h
    dec b
    ld b, a
    dec b
    jp c, Jump_020_7379

    ld hl, $5300
    ld l, c
    ld l, l
    ld [hl], b
    ld l, h
    ld a, c
    jr nz, jr_020_518c

    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $4901

jr_020_5130:
    ld l, l
    ld [hl], b
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    inc b
    ld c, d
    ld hl, $4701
    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_020_51ab

    ld h, l
    dec b
    ld e, e
    ld hl, $4e01
    ld l, a
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    jr nz, jr_020_515a

    ld [hl], l
    ld hl, $5301
    ld l, c

jr_020_515a:
    ld h, a
    ld l, [hl]
    ld [hl], e
    dec b
    sbc [hl]
    nop
    ld c, b
    ld h, c
    db $76
    ld [bc], a
    ld [hl], h
    inc bc
    add d
    ld bc, $aa05
    dec b
    ld e, e
    ld [hl], e
    ld hl, $4f20
    ld h, [hl]
    ld bc, $6f63
    dec b
    ld c, h
    jr nz, jr_020_51e6

    ld l, a
    ld [hl], h
    ld hl, $5720
    ld l, b
    ld l, a
    ld bc, $0463
    xor e
    ccf
    jr nz, jr_020_518b

    ldh a, [rDIV]
    and e
    ld [hl], e
    ld l, a

jr_020_518b:
    inc b

jr_020_518c:
    adc b
    ld l, h
    ld a, c
    ld hl, $0501
    sbc l
    ld [bc], a
    pop hl
    ld c, c
    inc b
    ld b, $01
    ld h, l
    ld a, c
    inc bc
    add l
    ld h, l
    ld a, c
    ld h, l
    ld hl, $0200
    ld h, b
    inc bc
    add d
    ld bc, $7e02
    ld c, b
    ld l, a

jr_020_51ab:
    ld [hl], a
    ld [bc], a
    db $eb
    ld [bc], a
    push de
    ld h, d
    ld h, l
    ld bc, $e705
    ld h, e
    ld [hl], d
    ld [hl], l
    ld h, l
    ld l, h
    ld l, $2e
    ccf
    nop
    ld [bc], a
    ld h, b
    inc bc
    add d
    ld bc, $7e02
    inc bc
    ld h, $70
    ld h, c
    ld a, c
    dec b
    rlca
    inc bc
    jp nc, $0805

    inc b
    inc l
    ld [hl], l
    ld [hl], b
    ld hl, $0200
    ld h, b
    inc bc
    add d
    ld bc, $7e02
    ld [bc], a
    xor [hl]
    jr nz, jr_020_5242

    ld [hl], a
    dec b
    ld e, b
    inc bc
    ld h, d

jr_020_51e6:
    inc bc
    nop
    dec b
    rlca
    inc bc
    jp nc, $ea02

    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld hl, $0200
    ld h, b
    inc bc
    add d
    ld bc, $7e02
    ld [bc], a
    ld b, b
    ld h, c
    ld [hl], e
    jr nz, @+$68

    ld h, c
    ld [hl], d
    jr nz, jr_020_5266

    ld [hl], e
    ld bc, $d203
    ld h, a
    ld l, a
    dec b
    ld e, [hl]
    ld bc, $4205
    dec l
    dec l
    ld l, a
    ld [hl], d
    jr nz, jr_020_527b

    ld l, h
    ld [hl], e
    ld h, l
    ld hl, $0200
    ld h, b
    inc bc
    add d
    ld bc, $7e02
    ld c, c
    jr nz, jr_020_529c

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    inc b
    dec l
    inc l
    ld bc, $7562
    ld [hl], h
    inc b
    dec b
    ld l, $2e
    ld hl, $4801
    ld l, a
    ld [hl], a
    ld [bc], a
    db $eb
    ld [bc], a
    jp nz, $9f05

    ld [hl], e
    ld l, a

jr_020_5242:
    inc b
    jr nz, jr_020_5248

    and e
    ld d, b
    ld [hl], d

jr_020_5248:
    ld h, l
    ld [hl], b
    dec b
    rst $08
    ld bc, $4803
    inc bc
    and e
    inc bc
    ld h, $70
    ld h, c
    ld a, c
    ld hl, $5300
    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    ld h, h
    inc bc
    rst $20
    ld [bc], a
    ld h, b
    inc b

jr_020_5266:
    rlc l
    ld a, l
    inc bc
    dec bc
    inc b
    sbc h
    ld l, a
    ld l, [hl]
    inc b
    dec b
    ld hl, $0501
    sbc l
    ld [bc], a
    ld a, d
    inc bc
    ldh a, [rSB]
    ld h, c

jr_020_527b:
    ld l, [hl]
    ld a, c
    inc bc
    dec hl
    jr nz, jr_020_5286

    ld e, e
    ld [hl], e
    ld l, $01
    ld [bc], a

jr_020_5286:
    ld l, $20
    ld [bc], a
    ld a, [hl+]
    ld bc, $7905
    ld [hl], d
    ld h, l
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    push de
    ld l, a
    ld h, [hl]
    ld bc, $0b03
    ld l, l
    ld l, c

jr_020_529c:
    ld [hl], e
    inc b
    sub h
    ld hl, $4100
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld [hl], h
    inc b
    add hl, bc
    inc bc
    rst $00
    dec b
    ld e, e
    ld [hl], e
    jr nz, jr_020_531f

    ld [hl], d
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, h
    ld a, c
    ccf
    nop
    rrca
    ld a, [de]
    dec b
    ld d, [hl]
    rlca
    dec de
    rrca
    ld a, [de]
    dec b
    ld d, [hl]
    rlca
    inc e
    rrca
    ld a, [de]
    dec b
    ld d, [hl]
    rlca
    dec e
    rrca
    ld a, [de]
    dec b
    ld d, [hl]
    rlca
    ld e, $0f
    ld a, [de]
    dec b
    ld d, [hl]
    rlca
    rra
    rrca
    ld a, [de]
    dec b
    ld d, [hl]
    rlca
    ld [hl+], a
    ld d, h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_020_5357

    ld [hl], a
    ld l, a
    inc bc
    sbc a
    ld bc, $7568
    ld [hl], d
    ld [hl], d
    ld a, c
    inc bc
    and [hl]
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    ld l, $01
    ld [bc], a
    rst $28
    ld l, c
    ld h, [hl]
    inc b
    ld a, [de]
    ld bc, $4204
    inc bc
    dec l
    jr nz, @+$05

    rrca
    ld bc, $2a05
    jr nz, jr_020_530b

    add hl, sp
    dec b
    ld d, l

jr_020_530b:
    nop
    inc c
    jr nz, jr_020_5314

    sbc l
    ld hl, $7104
    inc l

jr_020_5314:
    dec b
    ld l, c
    inc bc
    and e
    ld [bc], a
    dec hl
    inc b
    and a
    add hl, bc
    inc bc
    ld [bc], a

jr_020_531f:
    cp h
    inc bc
    or $72
    ld h, l
    ld h, c
    ld l, h
    ld l, l
    dec b
    sub $66
    ld [bc], a
    jp nz, $af05

    dec b
    jp c, Jump_020_4003

    ld h, d
    ld a, c
    ld bc, $0561
    ld d, d
    inc l
    jr nz, @+$72

    ld h, c
    ld a, c
    inc b
    jr nc, @+$76

    ld l, a
    ld l, h
    ld l, h
    ld hl, $4820
    ld h, c
    ld l, b
    inc l
    dec b
    ldh [rBCPS], a
    ld hl, $0c00
    jr nz, jr_020_5392

    ld l, b
    ld hl, $0220
    ld b, l
    inc b

jr_020_5357:
    sbc a
    ld hl, $0401
    ld b, a
    inc bc
    ldh [rTIMA], a
    sbc [hl]
    nop
    inc c
    jr nz, jr_020_5369

    sbc l
    ld hl, $7104
    inc l

jr_020_5369:
    dec b
    ld l, c
    ld hl, $0501
    ld d, l
    dec b
    sbc [hl]
    jr nz, jr_020_5377

    ld [hl], c
    ld hl, $213f

jr_020_5377:
    ld bc, $7241
    ld [bc], a
    ld [hl], h
    ld [bc], a
    db $f4
    ld [hl], h
    ld l, a
    ld bc, $6168
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    dec b
    and b
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $2f04
    ld l, l
    ld a, c
    ld [bc], a

jr_020_5392:
    adc c
    inc bc
    ld d, d
    inc b
    db $e3
    ld l, [hl]
    ld hl, $7104
    daa
    ld l, h
    ld l, h
    ld bc, $9003
    inc bc
    ld b, b
    ld l, c
    inc b
    adc h
    ld bc, $8205
    dec b
    sbc $74
    dec b
    nop
    ld hl, $4901
    jr nz, jr_020_53b5

    add $67

jr_020_53b5:
    ld h, l
    ld [hl], h
    inc b
    jr nc, jr_020_542c

    inc b
    ld b, b
    ld h, a
    ld h, l
    ld hl, $0401
    ld b, a
    inc bc
    ldh [rTIMA], a
    sbc [hl]
    nop
    inc c
    ld [hl+], a
    ld d, e
    ld l, a
    inc l
    ld [bc], a
    xor h
    ld [hl], b
    ld h, l
    ld [hl], e
    ld l, e
    ld a, c
    ld bc, $696b
    ld h, h
    jr nz, jr_020_53db

    db $fc
    inc bc

jr_020_53db:
    and e
    ld c, c
    ld [bc], a
    ld a, d
    ld l, h
    ld h, l
    ld [hl], h
    ld [bc], a
    jp nz, Jump_020_7473

    inc bc
    jp hl


    ld [hl], l
    ld [hl], b
    inc bc
    or b
    ld l, l
    ld h, l
    ld bc, $6e61
    ld a, c
    dec b
    ld b, d
    ld hl, $0520
    ld e, d
    ld bc, $b404
    inc l
    jr nz, jr_020_5474

    ld l, c
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld bc, $6203
    dec b
    sbc a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, l
    ld hl, $0c00
    jr nz, @+$4a

    ld h, c
    ld l, e
    ld hl, $4820
    ld h, c
    ld l, e
    ld hl, $4820
    ld l, a
    ld [hl], a
    ld bc, $0463
    xor e
    ld [bc], a
    sub a
    inc bc
    rst JumpTable
    ld bc, $8003
    dec b
    and b
    ccf

jr_020_542c:
    ld hl, HeaderManufacturerCode
    ld b, c
    ld [hl], d
    ld h, a
    ld l, b
    ld hl, $e802
    ld [bc], a
    and d
    inc bc
    or e
    ld hl, $4901
    jr nz, jr_020_5441

    add $67

jr_020_5441:
    ld h, l
    ld [hl], h
    inc b
    jr nc, jr_020_54b8

    inc b
    ld b, b
    ld h, a
    ld h, l
    dec b
    sbc [hl]
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    ld b, h
    daa
    ld [hl], h
    jr nz, jr_020_54b7

    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $656d
    ld [bc], a
    sub a
    ld [hl], a
    ld h, c
    ld a, c
    inc bc
    and e
    ld c, c
    jr nz, jr_020_5467

    xor b
    ld h, d

jr_020_5467:
    ld h, l
    ld bc, $8003
    dec b
    sbc e
    ld h, c
    ld [hl], e
    inc bc
    db $db
    ld bc, $7361

jr_020_5474:
    jr nz, jr_020_5478

    ld [hl], c
    ld h, h

jr_020_5478:
    ld [hl], d
    ld l, a
    ld [hl], b
    ld bc, $8205
    inc bc
    scf
    dec b
    add sp, $62
    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    ld bc, $656d
    ld [bc], a
    pop hl
    inc b
    ld a, b
    ld bc, $2061
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    ld hl, $0400
    xor $59
    ld [bc], a
    ld c, c
    ld bc, $0109
    ld d, d
    inc bc
    ei
    add hl, bc
    nop
    ld [bc], a
    call c, $be02
    ld [bc], a
    ld a, h
    ld hl, $5301
    ld l, b
    inc b
    rlca
    ld c, c
    jr nz, jr_020_54b7

    db $dd
    ld [bc], a
    inc [hl]

jr_020_54b7:
    ccf

jr_020_54b8:
    ld bc, $0202
    nop
    dec b
    dec de
    ld c, a
    ld c, e
    ld l, $00
    dec b
    ld b, [hl]
    ld [bc], a
    xor c
    ld h, a
    ld h, l
    ld [hl], h
    inc b
    sub e
    ld l, c
    ld [hl], h
    ld [bc], a
    call nz, $e003
    ld hl, $0500
    ld h, l
    inc b
    inc l
    dec b
    rst $30
    ld hl, $0500
    ld h, l
    dec b
    rst JumpTable
    ld [bc], a
    ld l, d
    ld [bc], a
    inc [hl]
    ld hl, $0201
    db $ec
    ld l, b
    ld l, a
    ld [hl], h
    inc b
    ld c, [hl]
    ld h, d
    ld h, l
    ld bc, $7003
    ld l, $00
    ld [bc], a
    ld h, c
    dec b
    cp $01
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_020_5501

    rlca
    ld h, h
    ld h, c
    ld a, c

jr_020_5501:
    ld hl, $0c00
    ld [hl+], a

Jump_020_5505:
    ld c, h
    inc bc
    rst $28
    jr nz, jr_020_550f

    rst $28
    ld [bc], a
    ld l, d
    dec b
    add hl, bc

jr_020_550f:
    dec b
    ld [hl], b
    ld [hl], e
    ld l, $20
    ld b, e
    dec b
    ld l, h
    ld bc, $0b03
    dec b
    ld l, l
    dec b
    ld d, l
    nop
    ld [bc], a
    dec hl
    inc bc
    sub h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    ld bc, $6863
    ld h, c
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [bc], a
    ld c, b
    ld [bc], a
    ld e, $02
    ld a, [de]
    ld l, $01
    ld c, b
    ld h, c
    db $76
    ld [bc], a
    ld [hl], h
    inc b
    and c
    ld bc, $7265
    ld [hl], d
    dec b
    and c
    ccf
    ld bc, $0202
    nop
    inc bc
    inc a
    inc b
    ld bc, $6401
    ld h, l
    dec b
    ld [hl], c
    ld l, $00
    ld b, c
    ld l, b
    inc l
    jr nz, @+$7b

    ld h, l
    ld [hl], e
    inc bc
    and l
    ld c, c
    jr nz, jr_020_55d5

    ld [bc], a
    jr nz, @+$05

    and h
    ld [bc], a
    ld de, $012c
    ld l, l
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld [bc], a
    db $d3
    ld [bc], a
    inc b
    ld l, $01
    ld c, c
    ld [bc], a
    ld c, h
    ld [bc], a
    adc d
    ld l, c
    ld l, [hl]
    inc bc
    rra
    ld l, $00
    ld c, b
    dec b
    ret nc

    ld [bc], a
    xor h
    ld l, d
    inc bc
    ld a, l
    ld bc, $9905
    add hl, bc
    inc bc
    ld [bc], a
    inc d
    dec b
    ld a, a
    ld [bc], a
    ld b, a
    dec b
    dec b
    nop
    inc c
    ld [hl+], a
    inc b
    or [hl]
    inc b
    ld b, $05
    add hl, de
    ld [hl], a
    ld l, b
    ld h, l
    inc bc
    sub b
    ld [bc], a
    ld l, d
    inc bc
    di
    inc bc
    adc c
    dec b
    or d
    ld bc, $d203
    dec b
    add hl, bc
    ld a, c
    ld l, $00
    ld c, c
    dec b
    ld d, $03
    adc l
    inc bc
    ld e, d
    ld bc, $0309
    ld a, [bc]
    ld bc, $0009
    ld [bc], a
    db $76
    ld hl, $2120
    jr nz, jr_020_55eb

    jr nz, jr_020_55ed

    jr nz, jr_020_55ef

    jr nz, jr_020_55f1

    ld bc, $6f4f
    ld [hl], b
    ld [hl], e

jr_020_55d5:
    dec b
    sub $20
    ld [hl], e
    ld [hl], b
    ld l, a
    ld l, e
    ld h, l
    inc bc
    or d
    ld h, c
    jr nz, jr_020_55e4

    sub e
    ld [hl], d

jr_020_55e4:
    ld hl, $0200
    ld b, l
    ld a, [bc]
    nop
    inc bc

jr_020_55eb:
    rst $20
    inc b

jr_020_55ed:
    dec a
    add hl, bc

jr_020_55ef:
    inc bc
    ld a, [bc]

jr_020_55f1:
    ld bc, $e403
    ld c, [hl]
    ld l, a
    dec b
    ld h, a
    ld hl, $4100
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld [bc], a
    pop de
    ccf
    ld bc, $0202
    nop
    inc bc
    add hl, bc
    dec b
    sbc a
    ld [bc], a
    pop de
    inc l
    ld bc, $6f74
    ld l, a
    inc l
    dec b
    db $d3
    ld [bc], a
    rst $00
    ld bc, $c103
    inc b
    jr nc, jr_020_5688

    ld l, a
    ld l, l
    ld [bc], a
    pop hl
    ld h, h
    ld h, c
    ld h, h
    ld hl, $4800
    ld [hl], l
    ld l, b
    ccf
    ccf
    ccf
    ld bc, $6e41
    ld h, h
    inc b
    inc l
    dec b
    ld d, c
    dec b
    ld h, c
    ld h, d
    inc bc
    rrca
    inc b
    dec l
    ccf
    ld hl, $003f
    ld [bc], a
    add hl, hl
    inc b
    sbc c
    inc bc
    or d
    dec b
    sbc a
    ld h, c
    inc bc
    sbc l
    ld l, [hl]
    dec l
    ld [hl], l
    ld [hl], b
    ld l, $00
    ld [bc], a
    sub h
    ld b, d
    ld l, c
    ld [hl], b
    ld l, c
    ld l, [hl]
    add hl, bc
    nop
    inc l
    ld [bc], a
    or h
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_020_56c3

    ld [hl], d
    ld h, d
    ld l, a
    ld [hl], d
    ld l, c
    ld [hl], e
    ld [hl], h
    ld hl, $4901
    inc bc
    adc h
    jr nz, jr_020_56e0

    ld l, h
    dec b
    rst $10
    ld a, c
    ld bc, $8b02
    inc b
    adc d
    ld l, $01
    inc b
    and b
    ld l, h
    inc bc
    rst $28
    jr nz, jr_020_5686

    ld l, b
    ld bc, $7c05

jr_020_5686:
    inc bc
    dec l

jr_020_5688:
    inc b
    or d
    daa
    inc bc
    and e
    add hl, bc
    inc bc
    inc b
    di
    add hl, bc
    nop
    ld [bc], a
    pop hl
    ld c, c
    ld bc, $8404
    ld l, b
    ld h, c
    ld h, h
    jr nz, @+$06

    ld h, l
    inc b
    add c
    jr nz, @+$05

    rst JumpTable
    ld hl, $5901
    ld h, l
    ld [hl], e
    dec b
    ld c, b
    dec b
    ld c, c
    ld hl, $0321
    and e
    ld c, b
    dec b
    ret nc

    jr nz, jr_020_5717

    inc bc
    or [hl]
    ld hl, $5300
    ld l, a
    inc l
    ld [bc], a
    xor h
    inc bc
    adc $64
    ld h, l

jr_020_56c3:
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    ld h, h
    ld hl, $0901
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc l
    inc b
    inc l
    ld l, c
    ld [hl], e
    ld hl, $0201
    or a
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld bc, $6a05

jr_020_56e0:
    dec b
    sub $03
    add a
    dec b
    ldh [rSB], a
    inc b
    db $e3
    ld [hl], e
    inc bc
    or b
    ld h, d
    inc b
    sub a
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, @+$05

    rst JumpTable
    ld hl, $4800
    ld h, l
    ld a, c
    inc l
    jr nz, jr_020_5708

    nop
    inc bc
    and e
    ld c, l
    ld a, c
    dec b
    ld l, c
    inc b
    ld h, c
    dec b

jr_020_5708:
    pop de
    inc l
    ld bc, $7304
    inc bc
    xor a
    ld c, c
    ld [bc], a
    sub [hl]
    ld [bc], a
    inc e
    inc bc
    or d
    inc bc

jr_020_5717:
    pop af
    inc bc
    add hl, de
    nop
    ld c, l
    ld a, c
    dec b
    ld l, c
    dec b
    rst JumpTable
    inc bc
    adc [hl]
    inc l
    ld bc, $6f73
    ld [bc], a
    rst $00
    jr nz, jr_020_572f

    db $ec
    ld hl, $5401

jr_020_572f:
    ld l, a
    ld h, h
    inc b
    xor [hl]
    ld c, c
    ld [bc], a
    sub [hl]
    ld l, l
    ld l, a
    ld [hl], d
    inc bc
    add l
    inc bc
    pop af
    ld hl, $4800
    ld h, l
    ld a, c
    inc l
    jr nz, jr_020_574f

    nop
    ld hl, $0901
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc bc

jr_020_574f:
    sbc l
    ld [hl], e
    ld bc, $7962
    ld [bc], a
    xor h
    ld h, h
    ld h, c
    ld a, c
    inc l
    ld [bc], a
    call c, $6f74
    ld h, h
    inc b
    xor [hl]
    ld c, c
    ld [bc], a
    sub [hl]
    ld l, l
    ld l, a
    ld [hl], d
    inc bc
    add l
    inc bc
    pop af
    ld hl, $0a00
    nop
    ld hl, $3103
    inc bc
    add [hl]
    ld [hl], h
    ld l, a
    ld l, a
    inc bc
    db $db
    ld hl, $4901
    inc l
    dec b
    jp c, $2c6f

    ld [bc], a
    sub [hl]
    ld [bc], a
    ld [hl], e
    ld [bc], a
    adc d
    db $76
    dec b
    adc h
    ld hl, $3103
    inc b
    ld [c], a
    inc bc
    inc e
    ld bc, $2061
    ld h, [hl]
    ld h, c
    ld l, l
    ld l, c
    ld l, h
    ld l, c
    ld h, c
    ld [hl], d
    jr nz, jr_020_5804

    ld h, c
    ld h, e
    ld h, l
    ld hl, $4800
    ld h, l
    ld a, c
    inc l
    jr nz, jr_020_57b3

    nop
    ld hl, $0901
    inc bc
    ld a, [bc]
    ld bc, $d402
    ld h, h

jr_020_57b3:
    ld l, a
    dec b
    ld a, e
    inc bc
    adc [hl]
    ld hl, $4101
    ld l, [hl]
    ld h, h
    ld [bc], a
    rst $00
    jr nz, @+$05

    pop af
    ld bc, $d203
    ld h, l
    ld [bc], a
    xor $01
    ld [bc], a
    adc e
    inc b
    adc d
    ld hl, $4800
    ld h, l
    ld a, c
    inc l
    jr nz, jr_020_57df

    nop
    inc bc
    and e
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $d402
    dec b

jr_020_57df:
    add c
    inc bc
    sbc l
    ld l, [hl]
    jr nz, jr_020_585a

    ld [hl], b
    ld [bc], a
    call c, Call_020_666f
    ld h, [hl]
    inc b
    or e
    ld l, b
    dec b
    push hl
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld hl, $0201
    inc l
    ld bc, $0265
    xor $01
    ld [bc], a
    adc e
    inc b
    adc d
    ld hl, $0300
    or c

jr_020_5804:
    dec b
    ld e, h
    dec b
    rst $10
    inc bc
    dec sp
    dec b
    ld a, b
    ld b, a
    ld h, c
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, @+$50

    ld [hl], l
    ld [hl], h
    dec b
    ld a, a
    ld h, h
    ld h, l
    ld [hl], b
    dec b
    rst $38
    inc b
    or e
    inc bc
    add h
    ld bc, $5f03
    ld [hl], e
    inc b
    ld c, a
    inc b
    ld c, e
    inc bc
    pop hl
    ld h, l
    ld h, h
    ld l, $20
    ld c, c
    ld h, [hl]
    ld [bc], a
    jp nz, $d703

    ld h, c
    inc bc
    ld d, c
    ld bc, $fd05
    inc l
    jr nz, @+$05

    inc hl
    ld hl, $4900
    inc b
    adc h
    dec b
    ld a, [hl]
    inc bc
    ld c, [hl]
    ld c, [hl]
    ld [hl], l
    ld [hl], h
    add hl, bc
    nop
    ccf
    jr nz, jr_020_589c

    ld l, a
    ld [hl], d
    ld h, l
    inc b
    ld d, a
    ld h, c
    ld l, [hl]
    ld a, c
    inc bc
    add hl, sp
    inc l

jr_020_585a:
    ld [bc], a
    jp nz, $d703

    add hl, bc
    ld bc, $614d
    ld h, a
    ld l, c
    ld h, e
    ld bc, $0552
    ld a, e
    ld [hl], e
    add hl, bc
    nop
    ld [bc], a
    xor d
    inc b
    and c
    inc b
    or h
    ld [hl], e
    ld [bc], a
    jp nz, $a505

    ld [bc], a
    adc a
    ld bc, $726f
    jr nz, @+$05

    sub $73
    ld l, $00
    ld c, c
    daa
    db $76
    ld h, l
    inc bc
    rlca
    ld h, h
    ld bc, $0803
    dec b
    ld a, b
    ld l, [hl]
    ld [hl], l
    ld [hl], h
    inc bc
    or $05
    ld e, h
    dec b
    rst $10
    ld [hl], e
    jr nz, @+$66

    ld h, l
    ld [hl], b

jr_020_589c:
    dec b
    rst $38
    ld bc, $6e6f
    ld [bc], a
    xor h
    ld h, c
    ld h, e
    inc b
    ccf
    ld [hl], e
    ld bc, $7902
    inc bc
    pop hl
    ld h, l
    ld [hl], d
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    inc bc
    dec hl
    dec b
    ldh [rSB], a
    inc bc
    ld e, h
    ld [hl], e
    jr nz, jr_020_58c3

    and c
    ld [bc], a
    or h
    inc b
    inc e

jr_020_58c3:
    inc bc
    ld e, c
    dec b
    ldh [rSB], a
    ld [hl], e
    ld l, h
    ld h, c
    ld a, c
    ld [hl], e
    inc l
    ld [bc], a
    or h
    inc bc
    ld e, e
    jr nz, @+$6a

    ld l, c
    ld [hl], e
    ld bc, $756e
    ld [hl], h
    ld [bc], a
    push bc
    ld h, h
    ld l, a
    ld hl, $0500
    or b
    inc bc
    and [hl]
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld bc, $2d05
    ld [hl], e
    inc bc
    or b
    inc bc
    pop hl
    ld bc, $0e02
    ld [hl], e
    add hl, bc
    nop
    ld [bc], a
    call c, $a505
    inc bc
    and [hl]
    ld [bc], a
    xor e
    ld bc, $7473
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    inc b
    ld b, $6d
    ld [hl], e
    ld bc, $7905
    ld h, d
    ld h, l
    inc bc
    ld d, c
    ld [bc], a
    ld [c], a
    add hl, bc
    ld bc, $6147
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, jr_020_596b

    ld [hl], l
    ld [hl], h
    ld [hl], e
    add hl, bc
    nop
    ld l, $00
    ld b, c
    ld l, [hl]
    ld h, h
    inc bc
    adc a
    inc bc
    rst $00
    inc b
    call nz, $1404
    ld l, [hl]
    ld h, l
    dec b
    ld a, l
    ld l, c
    ld [hl], e
    inc bc
    ld d, c
    ld [bc], a
    ld [c], a
    add hl, bc
    ld bc, $6147
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, jr_020_5990

    ld [hl], l
    ld [hl], h
    ld [hl], e
    add hl, bc
    nop
    ld l, $00
    dec b
    or b
    inc bc
    and [hl]
    dec b
    db $fd
    ld [hl], e
    inc bc
    or d
    inc bc
    pop hl
    jr nz, jr_020_5959

    ld c, [hl]
    ld [bc], a
    ld d, e

jr_020_5959:
    inc b
    ld h, c
    dec b
    ld a, [bc]
    ld l, $01
    ld b, h
    ld l, c
    ld h, a
    jr nz, jr_020_5969

    ld d, b
    ld [hl], e
    inc l
    jr nz, jr_020_596e

jr_020_5969:
    jr nz, jr_020_596c

jr_020_596b:
    ld [hl], d

jr_020_596c:
    ld l, a
    ld h, e

jr_020_596e:
    ld l, e
    ld [hl], e
    ld l, $00
    ld c, l
    ld a, c
    jr nz, jr_020_59db

    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $7004
    ld [hl], e
    ld [bc], a
    sbc c
    inc bc
    pop hl
    inc bc
    and [hl]
    inc bc
    ld c, [hl]
    ld [bc], a
    ld d, e
    inc b
    inc d
    ld [bc], a

jr_020_5990:
    sub e
    ld bc, $fd05
    ld [hl], e
    jr nz, @+$05

    ld l, [hl]
    ld [hl], e
    ld bc, $1c04
    ld [hl], d
    dec b
    rst $08
    ld [bc], a
    call c, Call_020_6e75
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    jr nz, jr_020_5a1c

    ld h, l
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    ld hl, $4100
    jr nz, jr_020_59b8

    ld e, h
    ld h, l
    ld [hl], d

jr_020_59b8:
    dec b
    jr c, jr_020_59bc

    inc b

jr_020_59bc:
    jp Jump_020_656d


    ld [bc], a
    or h
    inc b
    or h
    inc b
    inc l
    inc b
    sub h
    ld [hl], e
    ld bc, $9104
    ld h, c
    jr nz, jr_020_59d1

    pop hl
    dec b
    ld a, l

jr_020_59d1:
    ld [bc], a
    ld c, $09
    nop
    inc bc
    or d
    ld l, l
    inc bc
    ccf
    inc bc

jr_020_59db:
    sub l
    dec b
    cp d
    ld [hl], h
    dec b
    ld [c], a
    inc b
    ld h, c
    ld [hl], d
    ld h, l
    ld l, h
    ld h, c
    ld [hl], h
    dec b
    ld a, l
    dec b
    ld a, c
    ld l, b
    ld l, a
    ld [hl], a
    inc bc
    db $eb
    ld bc, $da02
    ld [hl], e
    ld [bc], a
    jp nz, Jump_020_6c73

    ld h, c
    ld a, c
    ld l, $20
    ld b, e
    inc b
    xor e
    ld bc, $3a03
    ld h, d
    ld h, l
    inc bc
    db $f4
    ccf
    nop
    ld [bc], a
    sub h
    inc b
    di
    add hl, bc
    nop
    inc bc
    and h
    ld [bc], a
    dec hl
    dec b
    add d
    inc b
    add c
    ld bc, $df03
    dec l
    dec l

jr_020_5a1c:
    ld b, c
    dec b
    ldh [$61], a
    ld l, h
    ld [hl], h
    ld l, b
    ld a, c
    ld bc, $6162
    ld h, d
    ld a, c
    dec b
    ld l, c
    ld hl, $0401
    cpl
    inc bc
    adc l
    ld l, b
    ld h, c
    db $76
    inc bc
    rst $00
    ld [hl], h
    ld [hl], d
    inc bc
    ret c

    jr nz, jr_020_5a9f

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    inc bc
    rst $00
    ld h, c
    inc b
    add b
    ld l, $20
    ld b, e
    ld h, c
    ld l, [hl]
    ld [bc], a
    jp nz, $ba04

    dec b
    and b
    ld [bc], a
    ldh [rSB], a
    ld l, a
    ld h, [hl]
    inc b
    ld h, $3f
    jr nz, jr_020_5a5e

    sbc [hl]
    ld bc, $0477

jr_020_5a5e:
    xor e
    ld [bc], a
    push de
    ld h, e
    inc b
    inc hl
    ld l, b
    ld l, c
    ld l, l
    ccf
    nop
    dec b
    sbc l
    inc bc
    inc bc
    inc b
    add b
    ld bc, $6968
    ld l, l
    dec b
    push de
    ld a, [bc]
    ld bc, $5204
    inc b
    inc b
    inc b
    ld d, h
    nop
    ld [bc], a
    or a
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld bc, $6a05
    ld [bc], a
    db $ed
    inc b
    add sp, $02
    xor c
    ld h, e
    inc b
    inc hl
    ld l, b
    ld l, c
    ld l, l
    ld hl, $4820
    ld h, l
    inc b
    ld b, $6d
    ld [hl], e
    ld bc, $ca04
    dec b

jr_020_5a9f:
    jp c, $9602

    ld l, c
    ld [hl], h
    ld hl, $0420
    or [hl]
    jr nz, @+$07

    push bc
    ld bc, $7375
    jr nz, jr_020_5ab3

    daa
    ld l, $00

jr_020_5ab3:
    ld c, c
    inc bc
    add a
    dec b
    push de
    ld a, [bc]
    ld bc, $7f05
    inc bc
    ld h, d
    inc b
    db $e3
    jr nz, @+$04

    pop de
    ld bc, $e903
    ld l, b
    ld h, l
    ld h, c
    ld l, h
    ld [hl], h
    ld l, b
    ld a, c
    inc l
    ld bc, $696c
    ld l, e
    ld h, l
    inc bc
    add hl, de
    nop
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_020_5b4c

    inc bc
    dec d
    ld [bc], a
    jp nz, $5503

    jr nz, @+$06

    ld hl, $7469
    ld bc, $1c04
    ld [hl], h
    ld l, b
    inc b
    add l
    ld l, $00
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc bc
    or [hl]
    ld [hl], e
    ld bc, $2061
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_020_5b05

    ld [bc], a

jr_020_5b05:
    sub e
    inc bc
    and h
    ld [bc], a
    ld h, d
    inc b
    dec de
    ld l, b
    ld l, c
    ld l, l
    inc bc
    or b
    ld h, c
    jr nz, @+$66

    ld l, a
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    inc l
    ld bc, $7304
    ld [hl], a
    ld h, l
    jr nz, jr_020_5b23

    push af
    ld l, [hl]

jr_020_5b23:
    ld l, a
    ld bc, $4104
    ld [hl], e
    inc bc
    and l
    ld b, e
    inc b
    xor e
    ld [bc], a
    push de
    inc b
    ld bc, $6c01
    dec b
    rst $38
    jr nz, jr_020_5bac

    ld [hl], e
    inc bc
    dec l
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    and a
    jr nz, jr_020_5b47

    db $fc
    ld l, l
    ld [hl], l
    ld h, e

jr_020_5b47:
    ld l, b
    ld bc, $6163
    ld l, [hl]

jr_020_5b4c:
    ld [bc], a
    push de
    ld l, h
    dec b
    rst $38
    jr nz, jr_020_5bc8

    ld [hl], e
    ccf
    ld bc, $bb05
    ld sp, $3035
    dec b
    cp e
    dec [hl]
    jr nc, jr_020_5b61

    dec b

jr_020_5b61:
    cp e
    ld sp, $0430
    or c
    ld sp, $0200
    ld de, $012c
    ld a, [bc]
    nop
    ld hl, $0501
    sbc l
    inc bc
    ld l, e
    ld h, c
    inc bc
    db $f4
    ld bc, $6173
    ld l, l
    ld h, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld hl, $0200
    ld de, $012e
    inc bc
    ld a, [de]
    inc bc
    ld d, l
    inc b
    and h
    inc b
    add h
    inc bc
    inc [hl]
    ld l, $00
    inc bc
    ld e, b
    inc bc
    and l
    inc bc
    add hl, bc
    ld [bc], a
    push af
    dec b
    ld a, c
    ld h, h
    ld l, a
    ld bc, $1c02
    jr nz, jr_020_5ba8

    ld c, c
    ld bc, $9403

jr_020_5ba8:
    inc b
    db $ec
    dec b
    ld d, l

jr_020_5bac:
    nop
    ld a, [bc]
    nop
    ld [bc], a
    and $04
    inc h
    ld l, [hl]
    ld l, a
    jr nz, jr_020_5c29

    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_020_5c29

    ld h, c
    ld l, [hl]
    ld l, $01
    inc bc
    ld [hl], h
    ld [hl], e
    ld a, c
    ld l, l
    ld [hl], b
    ld h, c
    ld [hl], h

jr_020_5bc8:
    ld l, b
    ld a, c
    ld bc, $6203
    ld h, h
    ld l, a
    inc b
    ld c, d
    ld l, $00
    ld c, c
    jr nz, jr_020_5c4b

    ld [bc], a
    jr nz, jr_020_5bde

    ld d, l
    nop
    add hl, bc
    inc bc
    ld a, [bc]

jr_020_5bde:
    ld bc, $0009
    inc bc
    ld d, d
    ld h, a
    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, @+$05

    ld e, e
    ld hl, $0201
    ld de, $0021
    ld c, l
    ld a, c
    jr nz, jr_020_5c58

    ld h, c
    ld h, d
    ld a, c
    jr nz, @+$05

    sub b
    ld bc, $1704
    ld [hl], e
    ld l, $20
    ld a, [bc]
    nop
    inc l

Jump_020_5c05:
    dec b
    ld d, [hl]
    ld l, b
    ld l, a
    ld [hl], a
    inc bc
    ld d, $49
    inc b
    ld a, h
    ld l, b
    ld l, c
    ld l, l
    inc bc
    or b
    inc b
    rla
    ccf
    ld bc, $bb05
    ld d, e
    inc bc
    and [hl]
    ld h, c
    jr nz, jr_020_5c25

    ld d, h
    ld bc, $bb05
    ld d, b

jr_020_5c25:
    ld l, h
    ld h, c
    ld a, c
    ld [bc], a

jr_020_5c29:
    adc b
    ld l, b
    ld l, c
    ld l, l
    nop
    ld c, c
    inc bc
    dec c
    inc bc
    or b
    ld [hl], e
    inc b
    and [hl]
    ld bc, $0903
    ld [hl], h
    inc b
    adc l
    ld hl, $4900
    inc b
    ld b, $05
    sub $66
    jr nz, @+$79

    ld h, l
    ld bc, $6c70
    inc b

jr_020_5c4b:
    xor [hl]
    ld l, b
    inc bc
    and d
    dec b
    ld h, h
    inc b
    rlca
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, h

jr_020_5c58:
    inc b
    inc a
    ld l, $01
    ld [bc], a
    ld de, $0021
    ld d, a
    dec b
    and e
    ccf
    jr nz, jr_020_5caf

    ld [hl], e
    inc b
    ld l, a
    ld l, b
    inc b
    sub a
    ld h, h
    ld h, c
    ld [hl], d
    ld l, h
    inc bc
    and [hl]
    ld h, d
    ld h, c
    ld h, d
    ld a, c
    ccf
    nop
    ld d, e
    ld h, l
    ld h, l
    ld hl, $d505
    ld a, [bc]
    ld bc, $7f05
    ld l, b
    ld h, c
    ld [hl], e
    inc bc
    sbc l
    ld l, [hl]
    ld hl, $0a00
    nop
    ld hl, $5701
    ld h, l
    jr nz, jr_020_5c96

    ld h, [hl]
    ld [bc], a
    ld [hl], l
    inc bc

jr_020_5c96:
    and e
    ld b, h
    ld [bc], a
    dec a
    ld [bc], a
    ret


    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $5204
    ld c, b
    inc b
    and d
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    inc bc
    adc [hl]
    ld hl, $0900

jr_020_5caf:
    inc bc
    ld a, [bc]
    ld bc, $d402
    dec b
    rst $20
    ld l, b
    ld a, c
    ld [hl], b
    ld h, l
    inc b
    jp nz, $0376

    sub c
    ld d, a
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld h, c
    ld bc, $7968
    ld [hl], b
    ld h, l
    inc b
    jp nz, Jump_020_6576

    ld bc, $df03
    inc l
    jr nz, @+$0c

    nop
    ccf
    ld bc, $0202
    nop
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $d402
    dec b
    ld h, e
    jr nz, jr_020_5d57

    ld l, b
    ld a, c
    inc bc
    and h
    ld [bc], a
    sbc h
    inc bc
    rst JumpTable
    inc bc
    sbc a
    inc b
    dec l
    inc l
    ld bc, $000a
    inc bc
    rst $20
    ld b, c
    ld l, [hl]
    jr nz, jr_020_5d5f

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld l, c
    ld h, e
    ld bc, $d905
    ccf
    ld bc, $0202
    nop
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc b
    ld h, c
    dec b
    db $fc
    ld bc, $2061
    ld h, e
    ld [hl], l
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_020_5d23

    rst JumpTable
    inc bc
    and h

jr_020_5d23:
    ld [bc], a
    sbc h
    inc bc
    rst JumpTable
    inc bc
    sbc a
    inc b
    dec l
    inc l
    ld bc, $000a
    inc bc
    rst $20
    ld b, c
    ld l, [hl]
    jr nz, @+$67

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld l, c
    ld h, e
    ld bc, $d905
    ccf
    ld bc, $0202
    nop
    ld c, a
    ld l, b
    ccf
    jr nz, jr_020_5d93

    jr nz, jr_020_5dae

    ld h, l
    ld [hl], h
    ld [bc], a
    jp nz, $fa05

    jr nz, jr_020_5dc5

    ld [hl], l
    ld l, c
    ld [hl], h

jr_020_5d57:
    inc b
    sub a
    ld l, l
    ld l, c
    ld [hl], e
    ld h, e
    ld l, b
    ld l, c

jr_020_5d5f:
    ld h, l
    db $76
    ld l, a
    ld [hl], l
    ld [hl], e
    dec b
    ld l, c
    ld l, $00
    ld d, c
    ld [hl], l
    ld l, c
    ld h, l
    ld [hl], h
    inc l
    jr nz, @+$72

    inc bc
    dec d
    ccf
    ld bc, $0202
    nop
    ld [bc], a
    and a
    jr nz, jr_020_5dd4

    ld [bc], a
    ld e, d
    ld bc, $f502
    inc bc
    add [hl]
    ld h, e
    ld [hl], l
    ld [hl], h
    ld h, l
    ld hl, $5700
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], h
    dec b
    ld a, [hl+]
    ccf
    ld bc, $0202

jr_020_5d93:
    nop
    dec b
    sbc l
    inc bc
    sbc a
    ccf
    jr nz, jr_020_5de4

    ld bc, $9003
    inc bc
    inc bc
    ld bc, $f502
    ld h, a
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    dec b
    ld d, l
    nop
    inc b

jr_020_5dae:
    push af
    inc bc
    sbc [hl]
    ld bc, $0a05
    inc bc
    or b
    ld [hl], e
    ld [hl], l
    ld l, l
    ld bc, $7469
    jr nz, jr_020_5e33

    ld [hl], b
    inc b
    inc d
    ld h, c
    jr nz, jr_020_5e3b

    ld l, a

jr_020_5dc5:
    ld [hl], d
    ld h, h
    ld l, $00
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $d402
    dec b
    rst $20
    ld l, b
    ld a, c
    ld [hl], b

jr_020_5dd4:
    ld h, l
    inc b
    jp nz, Jump_020_6576

    ld hl, $0900
    inc bc
    ld a, [bc]
    ld bc, $d402
    ld [hl], h
    ld l, a
    ld l, a

jr_020_5de4:
    jr nz, jr_020_5e59

    ld l, b
    ld a, c
    ld l, $00
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc bc
    add hl, hl
    ld bc, $9302
    jr nz, @+$05

    rst JumpTable
    inc l
    ld bc, $7304
    ld l, b
    inc bc
    and d
    ld h, d
    inc b
    sub a
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_020_5e76

    ld h, [hl]
    ld [bc], a
    rst JumpTable
    ld bc, $0464
    sub b
    ld hl, $0a00
    nop
    inc bc
    and e
    ld b, h
    ld [bc], a
    dec a
    ld [bc], a
    ret


    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $5204
    ld c, b
    ld h, l
    daa
    ld [hl], e
    inc bc
    sbc l
    ld l, [hl]
    inc bc
    sub l
    ld bc, $0461
    ld c, d
    jr nz, @+$6f

    ld h, c
    ld l, [hl]
    ld hl, $0a00

jr_020_5e33:
    nop
    inc bc
    and e
    ld b, h
    ld [bc], a
    dec a
    ld [bc], a
    ret


jr_020_5e3b:
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $0009
    ccf
    jr nz, @+$4a

    ld h, l
    dec b
    add b
    ld h, c
    jr nz, @+$05

    ld d, [hl]
    ld bc, $7261
    ld h, d
    ld l, a
    ld [hl], d
    ld l, c
    ld [hl], e
    ld [hl], h
    inc bc
    ld [bc], a
    nop
    ld a, [bc]
    nop

jr_020_5e59:
    inc bc
    and e
    ld b, h
    ld [bc], a
    dec a
    ld [bc], a
    ret


    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $5204
    ld c, b
    inc b
    and d
    ld h, c
    jr nz, jr_020_5ed2

    ld h, c
    ld l, l
    dec b
    ld a, l
    ld l, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld l, c

jr_020_5e76:
    ld h, c
    ld l, [hl]
    inc b
    dec b
    ld hl, $0900
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc bc
    and l
    ld c, b
    ld h, l
    daa
    ld [hl], e
    inc bc
    sbc l
    ld l, [hl]
    jr nz, jr_020_5f02

    ld [hl], b
    inc l
    ld bc, $7304
    ld l, b
    ld h, l
    jr nz, jr_020_5eff

    ld h, h
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $6968
    ld [hl], e
    inc bc
    ld a, [bc]
    inc bc
    ldh [$03], a
    and h
    inc bc
    ld a, [hl+]
    ld h, c
    ld l, l
    jr nz, jr_020_5ef3

    inc bc
    or b
    ld h, h
    ld l, a
    ccf
    nop
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc l
    inc b
    jr nc, jr_020_5f2d

    ld l, a
    ld l, [hl]
    inc l
    inc bc
    rlca
    ld h, h
    inc bc
    pop de
    inc bc
    dec bc
    ld h, h
    inc b
    sub b
    inc l
    ld [bc], a
    call c, Call_020_7369
    inc b
    dec b
    jr nz, jr_020_5f44

    ld [hl], d
    ld a, c

jr_020_5ed2:
    inc bc
    rst $00
    dec b
    ld a, c
    ld h, d
    ld h, l
    inc bc
    adc e
    ld h, c
    ld bc, $1a05
    inc l
    dec b
    dec e
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $00
    inc bc
    ld d, b
    inc bc
    rst JumpTable
    inc bc
    ld d, d
    ld l, b
    ld l, c
    ld h, a
    ld l, b
    inc bc
    add a

jr_020_5ef3:
    ld [hl], e
    ld [bc], a
    call c, Call_020_6962
    ld h, a
    jr nz, jr_020_5efe

    cp b
    ld [hl], e
    dec b

jr_020_5efe:
    sbc [hl]

jr_020_5eff:
    nop
    add hl, bc
    inc bc

jr_020_5f02:
    ld a, [bc]
    ld bc, $e805
    dec b
    or a
    ld bc, $6568
    inc b
    ld h, c
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    inc bc
    and [hl]
    ld h, c
    ld bc, $5405
    jr nz, jr_020_5f1d

    ld c, c
    ld [bc], a
    ld l, d
    ld h, h

jr_020_5f1d:
    inc b
    sub b
    ld hl, $0900
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc bc
    and l
    ld c, b
    ld h, l
    daa
    ld [hl], e

jr_020_5f2d:
    inc bc
    sbc l
    ld l, [hl]
    jr nz, jr_020_5fa7

    ld [hl], b
    inc l
    ld bc, $7304
    ld l, b
    ld h, l
    jr nz, jr_020_5fa4

    ld h, h
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $6968
    ld [hl], e
    inc bc

jr_020_5f44:
    ld a, [bc]
    inc bc
    ldh [$03], a
    and h
    inc bc
    ld a, [hl+]
    ld h, c
    ld l, l
    jr nz, jr_020_5f98

    inc bc
    or b
    ld h, h
    ld l, a
    ccf
    nop
    ld c, l
    ld a, c
    dec b
    db $d3
    ld l, [hl]
    dec b
    rst JumpTable
    inc b
    dec b
    dec b
    cp d
    ld h, a
    inc b
    add hl, bc
    inc bc
    dec a
    inc bc
    ld e, [hl]
    nop
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $0009
    inc bc
    ld d, d
    inc b
    ld e, c
    ld h, l
    ld h, h
    inc bc
    and $09
    inc bc
    ld b, d
    ld l, c
    ld [hl], b
    ld l, c
    ld l, [hl]
    inc bc
    or $66
    ld l, a
    ld l, a
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], b
    ld [hl], e
    ld l, $01
    inc bc
    ld [de], a
    dec b
    rst $20
    inc b
    jp z, $0021

    ld c, b
    ld h, c
    db $76
    ld [bc], a
    ld [hl], h
    inc b

jr_020_5f98:
    xor h
    ld h, h
    ld bc, $0309
    ld a, [bc]
    ld bc, $0009
    dec b
    add b
    dec b

jr_020_5fa4:
    ld d, h
    ld [hl], e
    ccf

jr_020_5fa7:
    jr nz, jr_020_5fae

    ldh a, [rDIV]
    and e
    ld [hl], c
    ld [hl], l

jr_020_5fae:
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_020_5fb7

    ld [c], a
    ld l, $00
    ld [bc], a

jr_020_5fb7:
    ld de, $5e05
    ld [hl], a
    ld bc, $0349
    ld d, $03
    ld h, c
    ld l, b
    ld l, c
    ld l, l
    ld bc, $5902
    ld h, h
    ld l, a
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $00
    ld c, c
    ld [hl], h
    inc bc
    or [hl]
    ld [hl], e
    inc bc
    dec c
    ld bc, $d203
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a
    sub [hl]
    inc bc
    inc [hl]
    ld [bc], a
    adc a
    ld l, $00
    ld c, $c6
    ld [bc], a
    sbc l
    ld c, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    dec b
    ld l, [hl]
    inc bc
    sub e
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
    jr nz, jr_020_6008

    ld e, $2c
    ld bc, $7704

jr_020_6008:
    ld [hl], e
    dec b
    pop hl
    ld l, b
    inc l
    ld bc, $3104
    ld [bc], a
    pop hl
    ld l, [hl]
    inc b
    adc a
    inc l
    ld bc, $6174
    ld l, e
    inc bc
    and [hl]
    inc b
    sbc d
    jr nz, jr_020_6093

    ld [hl], h
    ld h, l
    ld [hl], b
    ld bc, $6e69
    dec b
    ld a, [hl]
    ld [hl], a
    ld h, c
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $0373
    call nc, $002e
    ld c, $c6
    ld [bc], a
    sbc l
    ld c, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    inc l
    ld bc, $6b02
    ld h, c
    jr nz, jr_020_60b7

    ld l, c
    ld [hl], b
    ld hl, $4f01
    ld l, [hl]
    ld [bc], a
    xor h
    dec b
    sub d
    ld bc, $7902
    ld l, l
    ld [bc], a
    and [hl]
    ld bc, $6902
    inc b
    ld sp, $4103
    add hl, bc
    ld bc, $de02
    jr nz, jr_020_6065

    adc e
    ld [hl], e
    inc bc
    db $e4
    ld c, l

jr_020_6065:
    dec b
    xor d
    ld [bc], a
    rst $20
    ld [bc], a
    add c
    dec b
    ld h, b
    inc bc
    inc l
    ld hl, $0e00
    add $03
    ld a, c
    ld [bc], a
    db $ec
    ld l, l
    ld [hl], l
    ld h, e
    ld l, b
    jr nz, @+$06

    ld [c], a
    ld [hl], d
    ld bc, $0361
    cp h
    inc bc
    ld c, $01
    inc bc
    and b
    ld [bc], a
    sbc b
    ld h, l
    ld a, c
    ld h, l
    dec l
    ld bc, $6f73
    ld [hl], d
    ld h, l

jr_020_6093:
    inc bc
    db $e3
    ld h, c
    jr nz, @+$64

    dec b
    call c, $0401
    jp hl


    ld l, $02
    rst $00
    inc b
    dec b
    ld bc, $6f64
    jr nz, jr_020_6109

    inc b
    scf
    inc bc
    and $04
    adc e
    ld hl, $0401
    and b
    dec b
    sbc h
    ld l, [hl]
    inc bc
    and l
    rlca

jr_020_60b7:
    ld a, [bc]
    ld c, $c6
    ld [bc], a
    sbc l
    ld c, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    dec b
    ld l, [hl]
    inc bc
    sub e
    dec b
    ei
    jr nz, @+$6b

    ld h, [hl]
    jr nz, jr_020_6144

    ld [bc], a
    ld c, c
    ld bc, $2061
    inc b
    ei
    inc l
    ld [bc], a
    push de
    ld [hl], e
    ld [hl], h
    dec b
    pop de
    ld bc, $bd03
    ld h, c
    jr nz, @+$05

    ld [hl], e
    ld hl, $4601
    ld l, a
    inc b
    call $6220
    ld [hl], d
    inc bc
    rrca
    ld hl, $0301
    or c
    inc bc
    ld [hl], e
    inc bc
    push hl
    ld l, a
    ld l, [hl]
    ld [bc], a
    xor h
    dec b
    sub d
    ld hl, $0e00
    add $02
    sbc l
    ld c, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    dec b
    ld l, [hl]
    inc bc
    sub e
    dec b
    ei

jr_020_6109:
    jr nz, jr_020_6174

    ld h, [hl]
    jr nz, jr_020_6187

    ld [bc], a
    ld c, c
    ld bc, $2061
    inc bc
    ld [hl], e
    inc l
    ld [bc], a
    jp nz, $af03

    inc bc
    cp l
    ld h, c
    ld bc, $fb04
    ld l, $20
    ld c, l
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld l, c
    ld h, e
    ld bc, $7262
    inc bc
    rrca
    inc bc
    sub a
    jr nz, jr_020_6136

    ei
    ld bc, $e505

jr_020_6136:
    ld [bc], a
    ld l, c
    db $76
    dec b
    add c
    ld h, l
    ld a, c
    ld bc, $6902
    dec b
    ld e, $2e
    nop

jr_020_6144:
    ld c, $c6
    ld [bc], a
    ld de, $0021
    ld c, $c6
    inc bc
    inc a
    dec b
    sbc a
    ld h, a
    dec b
    reti


    ld hl, $0e00
    add $02
    ld a, $02
    sub [hl]
    inc bc
    inc [hl]
    ld [bc], a
    adc a
    ld hl, $0e00
    add $03
    add sp, $03

Jump_020_6166:
    ld [hl], d
    ld bc, $f502
    ld l, c
    ld [hl], h
    ld hl, $0e00
    add $03
    ld a, c
    ld c, h
    inc bc

jr_020_6174:
    rst $28
    jr nz, jr_020_61ea

    ld l, b
    dec b
    rst $08
    ld bc, $8205
    dec b
    sub [hl]
    ld hl, $5301
    dec b
    pop hl
    ld l, b
    ld [bc], a
    cpl

jr_020_6187:
    ld h, [hl]
    ld [bc], a
    and b
    ld [hl], e
    inc bc
    add hl, hl
    ld bc, $9302
    jr nz, jr_020_6208

    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, l
    ld a, b
    ld hl, $4901
    ld [hl], h
    inc b
    ld b, $6d
    ld [hl], e
    inc bc
    or b
    ld h, d
    ld h, l
    ld bc, $b605
    inc bc
    ld a, a
    ld h, c
    ld l, [hl]
    inc bc
    rrca
    jr nz, @+$05

    ld [hl], l
    ld hl, $4901
    jr nz, @+$07

    jr nc, jr_020_621b

    ld h, h
    inc b
    jr nc, jr_020_61bf

    sub [hl]
    inc l
    dec b
    db $d3
    inc bc

jr_020_61bf:
    and l
    ld b, d
    ld [hl], l
    ld a, c
    jr nz, @+$04

    inc e
    ld hl, $4101
    dec b
    call nc, Call_020_6853
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    add hl, bc
    nop
    ld [bc], a
    ld [c], a
    inc c
    ld [$8f02], sp
    ccf
    ld bc, $0002
    nop
    ld c, $c6
    inc bc
    ld a, c
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld [bc], a
    ld [hl], h
    ld h, e
    ld h, c

jr_020_61ea:
    ld l, l
    ld h, l
    inc l
    ld bc, $0a07
    ld c, $c6
    inc bc
    ld a, c
    inc bc
    db $fc
    dec b
    ld a, [hl]
    ld h, h
    ld h, l
    ld h, c
    ld l, h
    ld hl, $3101
    jr nc, jr_020_6221

    inc b
    ld a, c
    ld [bc], a
    cp d
    inc b
    sub c
    ld [hl-], a

jr_020_6208:
    ld [bc], a
    dec e
    ld hl, $0201
    nop
    nop
    ld c, $c6
    inc bc
    ld a, c
    inc bc
    db $fc
    dec b
    ld a, [hl]
    ld h, h
    ld h, l
    ld h, c
    ld l, h

jr_020_621b:
    ld hl, $0901
    ld bc, $3031

jr_020_6221:
    jr nz, jr_020_6227

    ld b, a
    dec b
    ld a, a
    inc b

jr_020_6227:
    sub c
    inc sp
    ld [bc], a
    dec e
    ld hl, $0201
    nop
    nop
    ld c, c
    inc l
    dec b
    push de
    ld a, [bc]
    ld bc, $0009
    inc l
    jr nz, jr_020_629c

    ld l, l
    ld bc, $7277
    ld l, c
    ld [hl], h
    inc bc
    and [hl]
    ld h, c
    jr nz, jr_020_624b

    ld d, h
    ld bc, $7905
    ld [hl], b

jr_020_624b:
    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, @+$0c

    nop
    inc l
    ld bc, $9c05
    ld [bc], a
    rst JumpTable
    inc bc
    dec a
    ld hl, $4d00
    ld a, c
    jr nz, jr_020_6266

    ld d, h
    inc bc
    push hl
    dec b
    adc a

jr_020_6266:
    jr nz, jr_020_626b

    ld c, l
    inc bc
    and e

jr_020_626b:
    ld d, e
    inc b
    xor [hl]
    ld [hl], a
    dec b
    db $76
    inc bc
    push hl
    inc b
    inc e
    ld l, c
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $6f6c
    db $76
    ld h, l
    jr nz, jr_020_62f5

    ld [hl], d
    jr nz, @+$05

    dec e
    ccf
    ld bc, $b104
    ld c, h
    ld l, a
    db $76
    ld h, l
    dec b
    cp e
    ld b, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    nop

jr_020_629c:
    ld c, l
    ld a, c
    jr nz, jr_020_62a5

    ld d, h
    inc bc
    push hl
    dec b
    adc a

jr_020_62a5:
    jr nz, jr_020_62aa

    jp nz, $9103

jr_020_62aa:
    ld c, c
    ld [bc], a
    ldh [$03], a
    ld c, e
    inc b
    ld e, $69
    ld [hl], h
    ld l, $00
    ld b, [hl]
    ld l, c
    ld l, [hl]
    dec b
    add c
    ld a, c
    ld hl, $4d20
    ld a, c
    jr nz, jr_020_62c6

    ld d, h
    ld bc, $7369
    inc b

jr_020_62c6:
    dec b
    jr nz, jr_020_62cc

    ld c, l
    inc bc
    and e

jr_020_62cc:
    ld [bc], a
    ld l, h
    ld l, h
    inc b
    ret z

    ccf
    ld bc, $0202
    nop
    ld c, b
    ld l, a
    ld [hl], a
    inc bc
    ld l, h
    ld l, c
    ld [hl], h
    ccf
    nop
    ld d, d
    ld h, l
    dec b
    add c
    ld a, c
    ld l, $2e
    ccf
    ld bc, $b604
    jr nz, jr_020_6358

    inc b
    ret z

    ld bc, $2703
    ld hl, $4900
    inc l

jr_020_62f5:
    dec b
    push de
    ld a, [bc]
    ld bc, $0009
    inc l
    jr nz, jr_020_635f

    ld l, l
    ld bc, $7277
    ld l, c
    ld [hl], h
    inc bc
    and [hl]
    ld h, c
    jr nz, jr_020_630e

    ld d, h
    ld bc, $7905
    ld [hl], b

jr_020_630e:
    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, @+$0c

    nop
    inc l
    ld bc, $9c05
    ld [bc], a
    rst JumpTable
    inc bc
    dec a
    ld hl, $5700
    ld [bc], a
    db $f4
    ld l, b
    dec b
    ret nc

    ld [bc], a
    jp nz, Jump_020_6562

    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_020_6339

    nop
    ccf
    ld bc, $0244
    dec a
    ld l, l
    ld h, l
    inc bc
    rst $20

jr_020_6339:
    ld [bc], a
    db $ec
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $3803
    ld c, l
    ld l, a
    ld l, l
    ld [bc], a
    pop hl
    ld b, h
    ld h, c
    ld h, h
    inc bc
    ld b, c
    ld h, h
    ld l, a
    dec b
    ld a, e
    inc bc
    adc [hl]
    inc bc
    ld [bc], a
    nop
    ld b, h
    ld l, a
    jr nz, jr_020_63d1

jr_020_6358:
    ld [bc], a
    ld c, c
    ld bc, $2061
    dec b
    ld l, b

jr_020_635f:
    ld [bc], a
    pop bc
    ccf
    ld bc, $0202
    nop
    dec b
    ld d, l
    ld b, c
    inc b
    jr c, @+$2e

    ld bc, $9102
    ld [bc], a
    cp e
    ld bc, $0349
    dec c
    inc l
    dec b
    jp c, $026f

    xor d
    ld [bc], a
    ld [$6804], a
    ld hl, $0500
    ld d, l
    inc b
    push af
    ld [bc], a
    jp nz, $cf05

    inc b
    ld l, a
    inc b
    ld a, d
    ld l, $00
    ld [bc], a
    add hl, hl
    inc b
    sbc c
    inc bc
    or d
    inc b
    db $e3
    jr nz, jr_020_640e

    ld [hl], b
    ld hl, $4900
    inc l
    dec b
    push de
    ld a, [bc]
    ld bc, $7504
    ld [bc], a
    push af
    ld h, h
    ld h, l
    ld h, e
    ld l, c
    ld h, h
    inc bc
    ld a, a
    inc b
    sub h
    ld [bc], a
    xor h
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    ld bc, $0574
    ld [c], a
    dec l
    ld l, h
    ld l, c
    ld l, [hl]
    dec b
    sbc e
    ld [hl], b
    ld h, c
    ld [hl], h
    ld l, b
    ld bc, $7361
    inc b
    cp c
    ld h, [hl]
    ld h, c
    inc b
    daa
    ld hl, $0500
    ld b, $64

jr_020_63d1:
    ld h, c
    ld a, c
    jr nz, jr_020_641e

    ld [bc], a
    add l
    ld h, [hl]
    dec b
    pop de
    ld [bc], a
    xor h
    inc bc
    ld [hl], l
    ld bc, $6903
    dec b
    add d
    inc b
    adc d
    inc bc
    and e
    ld c, c
    inc bc
    adc h
    ld hl, $0201
    ld b, h
    inc bc
    adc a
    jr nz, jr_020_63f7

    dec bc
    dec b
    ld h, l
    dec b
    sbc [hl]

jr_020_63f7:
    nop
    dec b
    inc de
    inc bc
    or e
    inc l
    ld [bc], a
    jp nz, $5f05

    ld h, c
    ld h, h
    ld h, h
    ld [bc], a
    ld b, e
    ld h, a
    dec b
    ccf
    ld h, l
    ld [hl], d
    ld a, c
    inc bc
    ld [bc], a

jr_020_640e:
    nop
    dec b
    ld b, $64
    inc b
    xor [hl]
    ld c, c
    ld [bc], a
    add l
    ld h, [hl]
    dec b
    pop de
    ld [bc], a
    xor h
    inc bc
    ld [hl], l

jr_020_641e:
    ld bc, $6903
    dec b
    add d
    inc b
    adc d
    ld hl, $0200
    ld b, h
    inc b
    add hl, sp
    ld bc, $6e61
    ld a, c
    inc bc
    add hl, sp
    jr nz, jr_020_6437

    ld c, c
    ld bc, $8a04

jr_020_6437:
    ld l, $00
    add hl, bc
    ld bc, $3802
    dec b
    ld a, a
    inc b
    inc h
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld hl, $5301
    ld [hl], b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, h
    ld h, l
    inc bc
    inc l
    inc b
    sub e
    ld h, c
    jr nz, jr_020_64ba

    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], e
    inc bc
    inc c
    ld h, c
    ld bc, $e604
    jr nz, jr_020_64d0

    ld h, c
    ld [hl], l
    ld h, a
    ld l, b
    ld hl, $4d00
    ld l, a

Jump_020_646c:
    ld [hl], e
    ld [hl], h
    jr nz, jr_020_6474

    ldh a, [rSB]
    dec b
    inc bc

jr_020_6474:
    jr nz, jr_020_64e3

    ld l, a
    db $76
    dec b
    ld a, e
    ld [bc], a
    jp nc, $d203

    ld l, b
    ld l, c
    ld [hl], h
    inc bc
    inc l
    ld bc, $6903
    add hl, bc
    ld bc, $f002
    ld bc, $5302
    ld [bc], a
    adc h
    dec b
    inc c
    ld [bc], a
    pop de
    inc b
    ld h, $73
    ld l, $00
    add hl, bc
    ld bc, $3802
    dec b
    ld a, a
    inc b
    inc h
    ld h, c
    ld l, l
    ld h, c
    ld a, d
    dec b
    ld a, e
    inc bc
    and e
    dec b
    ldh a, [$03]
    ld d, $04
    dec de
    inc bc
    sub h
    ld [hl], e
    ld l, b
    ld l, a
    ld h, e
    ld l, e
    inc b
    inc a
    ld bc, $7a05

jr_020_64ba:
    ld h, l
    dec b
    db $ed
    ld [hl], d
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld bc, $5903
    ld l, $00
    ld c, c
    inc bc
    ld d, a
    ld h, h
    ld l, c
    ld h, a
    jr nz, jr_020_64d4

    ld d, b

jr_020_64d0:
    ld [hl], e
    ld bc, $7905

jr_020_64d4:
    inc bc
    pop hl
    jr nz, @+$06

    adc d
    inc l
    ld bc, $7562
    ld [hl], h
    inc bc
    dec l
    inc b
    or h
    ld [hl], e

jr_020_64e3:
    dec b
    ld l, [hl]
    dec b
    and l
    ld [bc], a
    adc a
    ld hl, $4800
    ld h, c
    db $76
    ld [bc], a
    ld [hl], h
    inc b
    xor h
    ld h, h
    ld bc, $7a05
    add hl, bc
    ld bc, $f105
    jr nz, jr_020_64fe

    ld d, e
    inc bc

jr_020_64fe:
    rst $20
    inc bc
    cp e
    ld [hl], l
    ld [hl], e
    ld [hl], l
    dec b
    add c
    ld a, c
    ld bc, $0362
    ld a, $75
    ld [hl], b
    dec b
    cp d
    ld [hl], h
    ld [hl], a
    ld l, c
    inc b
    xor c
    ld [bc], a
    adc h
    dec b
    ld a, h
    ld bc, $6163
    ld l, [hl]
    inc b
    xor d
    inc bc
    inc l
    ld bc, $7905
    ld h, d
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_020_652d

    ldh a, [rSB]
    ld h, [hl]
    ld h, c

jr_020_652d:
    ld [hl], d
    inc bc
    ldh [$03], a
    ld [bc], a
    nop
    add hl, bc
    ld bc, $3802
    dec b
    ld a, a
    inc b
    inc h
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld hl, $5301
    ld [hl], b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, h
    ld h, l
    inc bc
    inc l
    inc b
    sub e
    ld h, c
    jr nz, @+$65

    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], e
    inc bc
    inc c
    ld h, c
    ld bc, $e604
    jr nz, jr_020_65ca

    ld h, c
    ld [hl], l
    ld h, a
    ld l, b

Jump_020_6562:
    ld hl, $4d00
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, @+$04

    jp c, $0173

Jump_020_656d:
    dec b
    inc bc
    jr nz, jr_020_65de

    ld l, a

Call_020_6572:
    db $76
    dec b
    ld a, e
    ld [bc], a

Jump_020_6576:
    jp nc, $d203

    ld l, b
    ld l, c
    ld [hl], h
    inc bc
    inc l
    ld bc, $6903
    add hl, bc
    ld bc, $f002
    ld bc, $5302
    ld [bc], a
    adc h
    dec b
    inc c
    ld [bc], a
    pop de
    inc b
    ld h, $73
    ld l, $00
    add hl, bc
    ld bc, $3802
    dec b
    ld a, a
    inc b
    inc h
    ld h, c
    ld l, l
    ld h, c
    ld a, d
    dec b
    ld a, e
    inc bc
    and e
    dec b
    ldh a, [$03]
    ld d, $04
    dec de
    inc bc
    sub h
    ld [hl], e
    ld l, b
    ld l, a
    ld h, e
    ld l, e
    inc b
    inc a
    ld bc, $7a05
    ld h, l
    dec b
    db $ed
    ld [hl], d
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld bc, $5903
    ld l, $00
    ld c, l
    ld a, c
    jr nz, jr_020_65c9

    adc $09
    inc bc

jr_020_65c9:
    ld a, [bc]

jr_020_65ca:
    ld bc, $2804
    ld c, c
    ld [hl], e
    ld l, [hl]
    daa
    inc bc
    sbc e
    ld h, a
    ld [hl], d
    ld l, a
    ld l, a
    db $76
    ld a, c
    ccf
    nop
    inc b
    rra
    ld a, [bc]

jr_020_65de:
    nop
    inc bc
    and e
    ld d, d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    dec b
    and b
    ccf
    ld bc, $ec02
    add hl, bc
    inc bc
    ld a, [bc]
    ld bc, $e403
    ld b, c
    ld l, h
    ld l, h
    ld [bc], a
    call nz, $0121
    ld d, a
    ld h, l
    jr nz, @+$06

    ld h, [hl]
    ld [bc], a
    ld [hl], l

Call_020_6603:
    ld hl, $5700
    dec b
    db $76
    inc bc
    ld l, h
    inc b
    add c
    inc l
    ld bc, $9403
    ld h, e
    ld l, b
    dec b
    db $e3
    ld h, l
    ld l, [hl]
    dec b
    xor b
    inc bc
    sub h
    ld h, l
    ld h, a
    ld h, a
    ccf
    ld bc, $b104
    ld b, e
    ld l, b
    dec b
    db $e3
    ld h, l
    ld l, [hl]
    dec b
    cp e
    ld b, l
    ld h, a
    ld h, a
    nop
    inc bc
    inc de
    ld bc, $3c03
    ld l, b
    ld l, a
    ld [hl], a
    dec b
    ld c, c
    ld bc, $0803
    ld h, e
    ld l, b
    dec b
    db $e3
    ld h, l
    ld l, [hl]
    ld bc, $0468
    ld h, d
    ccf
    nop
    inc bc
    inc de
    ld bc, $3c03
    ld [hl], a
    ld l, b
    ld l, a
    jr nz, jr_020_66bc

    ld h, c
    ld l, c
    ld h, h
    ld bc, $0803
    ld h, l
    ld h, a
    ld h, a
    ccf
    nop
    ld [bc], a
    add hl, hl
    inc b
    sbc c
    ld bc, $6f74
    inc bc
    sbc l
    jr nz, jr_020_66db

    ld [hl], b
    ld hl, $4d00
    ld a, c
    jr nz, jr_020_6670

    adc $09

Call_020_666f:
    inc bc

jr_020_6670:
    ld a, [bc]
    ld bc, $2804
    inc bc
    adc l
    ld [hl], h
    ld [hl], d
    dec b
    db $db
    inc bc
    rst $00
    inc b
    ld l, $79
    jr nz, jr_020_66e5

    ld h, c
    ld a, c
    inc bc
    or d
    dec b
    sbc a
    ld h, c
    inc bc
    dec a
    inc bc
    dec c
    ld bc, $4d05
    jr nz, @+$0c

    nop
    ld hl, $0500
    ld b, $20
    ld h, h
    ld h, c
    ld a, c
    jr nz, jr_020_66e5

    ld [bc], a
    add c
    inc bc
    ld e, h
    ld [bc], a
    xor h
    inc b
    ld [$0173], sp
    inc bc
    jp hl


    inc b
    ld h, e
    ld [bc], a
    or h
    inc bc
    ld [hl], l
    dec b
    sbc d
    ld [bc], a
    rst $20
    ld [hl], e
    inc l
    ld bc, $1e04
    ld l, l
    ld a, c
    inc bc
    dec a
    inc l

jr_020_66bc:
    ld bc, $000a
    inc bc
    and e
    ld d, e
    ld l, a
    jr nz, jr_020_6728

    ld h, c
    ld l, [hl]
    ld [bc], a
    push de
    inc bc
    sbc $6d
    ld h, l
    inc bc
    dec l
    jr nz, jr_020_6732

    ld h, h
    db $76
    ld l, c
    ld h, e
    ld h, l
    inc bc
    rst $20
    inc b
    sbc [hl]
    ld [bc], a

jr_020_66db:
    push bc
    inc bc
    db $dd
    ld l, l
    ld h, l
    jr nz, @+$6f

    inc b
    dec h
    ld l, c

jr_020_66e5:
    ld h, l
    ld [hl], d
    ccf
    ld bc, $7254
    dec b
    db $db
    inc bc
    and [hl]
    ld h, h
    ld h, c
    ld l, c
    ld l, h
    ld a, c
    ccf
    ld bc, $0202
    nop
    ld c, [hl]
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, h
    jr nz, @+$76

    ld h, c
    ld l, h
    dec b
    rst $10
    ccf
    ld bc, $0202
    nop
    ld b, c
    jr nz, @+$65

    ld h, c
    inc b
    ld d, c
    inc bc
    rlca
    ld [hl], h
    ccf
    ld bc, $0202
    nop
    inc bc
    inc de
    inc bc
    ld sp, $0a05
    inc l
    dec b
    rst JumpTable
    inc b
    ld l, a
    ld l, c
    ld [hl], h
    ccf
    nop

jr_020_6728:
    ld c, c
    inc b
    ld b, $05
    sub $02
    sub [hl]
    inc b
    bit 4, l

jr_020_6732:
    ld h, h
    dec b
    ld a, [hl]
    ld l, h
    ld l, a
    ld [hl], h
    ld hl, $0500
    inc de
    ld [bc], a
    add b
    inc b
    cp d
    inc l
    ld bc, $2049
    ld [bc], a
    add $62
    inc b
    sub a
    ld h, a
    inc b
    add hl, bc
    inc bc
    dec a
    ld hl, $0400
    ld e, [hl]
    ld c, c
    ld [bc], a
    ld c, h
    ld bc, $3a03
    ld l, c
    ld l, [hl]
    inc bc
    rra
    ld hl, $4900
    ld [bc], a
    push bc

Jump_020_6761:
    dec b
    ld e, h
    ld l, c
    ld l, [hl]
    ld [hl], l
    ld h, l
    ld bc, $8205
    ld [hl], h
    ld [hl], d
    dec b
    db $db
    inc b
    and [hl]
    ld hl, $0021
    ld c, l
    ld a, c
    jr nz, jr_020_677a

    adc $09
    inc bc

jr_020_677a:
    ld a, [bc]
    ld bc, $e403
    ld c, c
    ld [hl], e
    ld l, [hl]
    daa
    inc bc
    sbc e
    ld h, c
    jr nz, @+$65

    ld l, a
    ld l, a
    ld l, h
    ld bc, $6a05
    ccf
    ld bc, $6559
    ld h, c
    ld l, b
    dec b
    sub a
    ld hl, $0200
    ld h, c
    inc b
    ld h, e
    ld bc, $8205
    ld l, l
    dec b
    reti


    ld a, c
    ld [bc], a
    call c, Call_020_6f67
    inc b
    inc a
    inc bc
    sub l
    ld [bc], a
    or h
    inc bc
    ld [hl], l
    inc bc
    and e
    ld d, e
    ld l, a
    jr nz, jr_020_6817

    ld h, c
    ld l, [hl]
    ld [bc], a
    push de
    inc bc
    db $dd
    ld h, c
    jr nz, jr_020_67c2

    ld e, h
    ld [hl], d
    ld l, c
    ld h, d
    ld [hl], l

jr_020_67c2:
    inc b
    ccf
    ccf
    ld bc, $0202
    nop
    inc b
    db $fc
    ld l, l
    ld [hl], l
    ld h, e
    ld l, b
    inc bc
    or h
    inc bc
    jp nc, Jump_020_5c05

    ld [hl], d
    ld l, c
    ld h, d
    ld [hl], l
    ld [hl], h
    ld h, l
    ccf
    ld bc, $bb05
    ld sp, $3030
    dec b
    cp e
    dec [hl]
    jr nc, jr_020_67e8

    dec b

jr_020_67e8:
    cp e
    ld sp, $0430
    or c
    ld sp, $0200
    ld b, l
    ld [hl], e
    ld [hl], h
    dec b
    ld a, e
    ld a, c
    inc l
    ld bc, $7564
    ld h, h
    ld h, l
    ld l, $00
    inc bc
    ld e, b
    dec b

Call_020_6801:
    sub a
    ld hl, $0301
    add hl, bc
    inc bc
    sub b
    ld bc, $c802
    ld [bc], a
    adc d
    inc b
    ld [hl+], a
    ld hl, $0200
    ld b, b
    ld l, c
    ld [hl], h
    dec b
    sub a

jr_020_6817:
    ccf
    ld bc, $5505
    ld d, l
    ld l, b
    inc l
    inc bc
    rra
    dec b
    sbc [hl]
    nop
    ld [bc], a
    db $ec
    inc bc
    ld e, e
    inc b
    ld d, a
    ld l, [hl]
    ld l, a
    inc b
    or d
    daa
    ld hl, $0320
    ld e, b
    ld hl, $0200
    ld b, l
    ld [hl], e
    ld [hl], h
    dec b
    ld a, e
    ld a, c
    inc l
    ld bc, $7564
    ld h, h
    ld h, l
    ld hl, $4c20
    dec b
    and d
    ld [hl], d
    ld hl, $0200
    add hl, hl
    ld h, d
    ld [hl], l
    ld a, c
    ld bc, $6e61
    ld a, c
    inc bc

Call_020_6853:
    add hl, sp
    dec b
    sub a
    ld hl, $5701
    ld l, a
    ld [hl], d
    ld h, h
    ld [hl], e
    inc bc
    ld l, e
    ld [hl], a
    inc b
    adc a
    ld bc, $4205
    ld hl, $0200
    rst $28
    inc b
    add sp, $05
    add b
    inc bc
    nop
    dec b
    and $04
    inc a
    ld bc, $2704
    ld h, l
    ld [bc], a
    ld c, b
    inc bc
    ld [hl], l
    dec b
    ld d, l
    nop
    ld a, [bc]
    nop
    inc l
    ld bc, $0277
    db $dd
    ld [hl], l
    ld [hl], b
    ccf
    ld bc, $ee03
    inc bc
    add [hl]
    dec b
    pop hl
    ld bc, $6902
    inc bc
    ld [hl], l
    ld bc, $be05
    inc bc
    rst $00
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    dec b
    ld [hl], d
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_020_690d

    ld [hl], l
    ld h, h
    inc bc
    sub c
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld [bc], a
    ld [hl], h
    ld h, a
    dec b
    ret nc

    ld bc, $656d
    dec b
    ld a, [hl]
    ld h, h
    ld l, a
    ld l, [hl]
    ld h, c
    inc b
    ccf
    inc l
    ld bc, $9504
    dec b
    sbc [hl]
    nop
    ld b, h
    ld [hl], l
    ld h, h
    ld h, l
    inc l
    jr nz, jr_020_68d2

    ld b, d
    ld l, [hl]
    ld l, a

jr_020_68d2:
    ld [hl], a
    ld bc, $6e6f
    jr nz, jr_020_694f

    ld h, l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$64

    ld [hl], l
    ld h, h
    ld [hl], e
    ld hl, $4400
    ld l, c
    ld h, h
    ld [bc], a
    push de
    inc bc
    cp l
    ld l, l
    ld h, l
    ccf
    ld bc, $0202
    nop
    ld b, d
    ld h, l
    jr nz, jr_020_695c

    dec b
    reti


    ld [bc], a
    ld d, l
    ld [bc], a
    push af
    ld l, [hl]
    ld l, a
    jr nz, jr_020_6964

    ld [hl], d
    ld [hl], d
    dec b
    and c
    ld l, $00

Call_020_6905:
    inc b
    xor $41
    dec b
    and b
    ld [hl], e
    ld [hl], e
    ld h, c

jr_020_690d:
    ld h, a
    ld h, l
    ld bc, $a502
    jr nz, @+$71

    ld l, h
    ld h, h
    jr nz, jr_020_6980

    ld h, c
    ld h, a
    ld bc, $9905
    ld [bc], a
    inc b
    inc bc
    and l
    ld c, c
    ld l, [hl]
    ld [bc], a
    sbc b
    ld h, e
    ld h, c
    ld [hl], e
    ld h, l
    inc l
    ld bc, $6103
    inc b
    ld a, [hl-]
    ld l, $01
    ld [bc], a
    dec sp
    dec b
    ld de, $6e05
    ld [hl], e
    ld l, b
    dec b
    add c
    ld [bc], a
    ld c, h
    ld [hl], d
    ld bc, $0109
    ld [hl], e
    inc bc
    ld b, $05
    rra
    ld [bc], a
    adc c
    ld hl, $0201
    ld l, h
    ld [hl], h
    ld [hl], d
    ld a, c

jr_020_694f:
    ccf
    ld bc, $0202
    nop
    inc c
    ld [hl+], a
    ld c, c
    inc b
    ld b, $03
    and l
    ld [bc], a

jr_020_695c:
    ld b, b
    ld [hl], h
    ld l, a
    ld l, a
    dec b
    jp hl


Call_020_6962:
    ld l, $00

jr_020_6964:
    inc bc
    inc a
    ld l, h
    inc bc
    rst $28
    ld bc, $f604
    inc bc
    and e
    ld c, c
    ld l, [hl]
    dec b
    ld a, [hl]
    ld l, l
    ld l, a
    ld l, l
    dec b
    rst $10
    inc l
    ld bc, $3231
    jr nz, jr_020_6980

    ld e, c
    ld [bc], a
    add c

jr_020_6980:
    inc b
    ld e, l
    ld l, $20
    ld e, c
    ld [bc], a
    ld e, d
    ld bc, $6c73
    ld h, c
    ld a, c
    inc bc
    inc l
    inc b
    xor a
    inc bc
    and $33
    jr nc, @+$22

    ld [hl], e
    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ld [hl], e
    inc l
    ld bc, $9002
    jr nz, jr_020_6a04

    ld h, l
    inc bc
    rst $00
    ld [hl], e
    ld l, h
    ld h, c
    dec b
    sbc c
    inc bc
    ld c, b
    inc l
    ld bc, $7a05
    ld h, e
    ld l, a
    dec b
    ld c, h
    ld l, $01
    ld [bc], a
    rlc d
    ld [bc], a
    nop
    inc bc
    inc a
    ld h, d
    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    dec b
    sbc [hl]
    nop
    inc c
    ld hl, $7449
    dec b
    jp c, Jump_020_6b6f

    ld [bc], a
    jp nz, $0409

    inc c
    ld [$0c3a], sp
    jr nc, jr_020_69e0

    nop
    dec b
    sbc [hl]
    nop
    inc c
    ld hl, $4002
    ld [hl], h

jr_020_69e0:
    ld l, a
    ld l, a
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    dec b
    ld d, l
    nop
    inc c
    ld hl, $0454
    adc l
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $0202
    nop
    inc c
    ld hl, $070f
    ld bc, $b103
    ld l, b
    ld h, c
    ld h, a
    inc bc
    ld d, d
    ld h, e
    ld l, b

jr_020_6a04:
    ld l, a
    ld [hl], e
    ld h, l
    ld l, [hl]
    inc bc
    adc [hl]
    ld hl, $0c00
    ld hl, $7341
    dec b
    inc h
    inc l
    ld bc, $6605
    ld [bc], a
    ld c, h
    ld [hl], d
    ld bc, $0109
    ld [hl], e
    inc bc
    ld b, $05
    rra
    ld [bc], a
    adc c
    ld hl, $0c00
    ld [hl+], a
    ld [bc], a
    inc l
    dec b
    cp d
    ld [bc], a
    db $10
    inc bc
    sbc b
    ld [bc], a
    add c
    dec b
    ld b, l
    inc bc
    or e
    ld [bc], a
    adc c
    ld bc, $6f74
    ld [bc], a
    add b
    add hl, bc
    ld bc, $0373
    ld b, $03
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
    ld c, c
    inc bc
    ld d, $72
    ld h, l
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], h
    inc bc
    cp [hl]
    inc c
    db $10
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    inc bc
    cp a
    inc bc
    rra
    nop
    inc c
    ld [hl+], a
    ld b, e
    ld [bc], a
    jr z, jr_020_6a6e

    rlca
    inc bc
    jp nc, $c802

jr_020_6a6e:
    ld [bc], a
    or h
    ld [bc], a
    db $10
    ld l, $00
    ld b, c
    ld [hl], d
    ld [bc], a
    ld [hl], h
    inc b
    ld a, d
    inc bc
    or d
    inc bc
    ld h, c
    inc b
    ld a, [hl-]
    ccf
    ld bc, $0202
    nop
    ld b, h
    ld h, l
    ld h, l
    dec l
    ld h, h
    ld l, a
    ld l, a
    dec l
    ld h, h
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    inc bc
    and e
    inc b
    rra
    ld d, a
    ld l, b
    ld a, c
    jr nz, jr_020_6aa0

    rst $08
    ld [bc], a
    jp nz, Jump_020_6e69

jr_020_6aa0:
    inc b
    cp c
    ld h, d
    ld h, l
    ld h, h
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ccf
    ld bc, $7241
    ld [bc], a
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld bc, $a104
    jr nz, jr_020_6b1b

    ld [hl], d
    ld [hl], d
    dec b
    and c
    ccf
    ld bc, $0202
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_020_6b31

    ld l, a
    ld [hl], h
    inc bc
    xor l
    ld bc, $0805
    inc b
    inc a
    ld hl, $0400
    ld e, a
    inc b
    sbc [hl]
    inc bc
    rst $20
    ld b, c
    ld l, [hl]
    jr nz, jr_020_6b41

    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e
    inc b
    ccf
    ld bc, $4203
    ld [bc], a
    cp e
    inc bc
    and $02
    inc b
    ccf
    ld bc, $e803
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_020_6b67

    ld [hl], l
    ld [hl], d
    inc bc
    ld l, d
    inc bc
    dec bc
    ld l, d
    ld [hl], l
    ld h, h
    ld h, a
    ld l, l
    dec b
    rst $10
    ld hl, $5301
    ld l, a
    jr nz, jr_020_6b7e

    ld l, b
    ld a, c
    inc bc
    ld [$1b04], a
    inc b
    ld a, [hl-]
    ccf
    jr nz, @+$4b

    ld h, [hl]
    ld [bc], a
    jp nz, $6f64

    inc bc
    adc [hl]
    inc l
    ld [bc], a

jr_020_6b1b:
    add sp, $69
    ld l, [hl]
    ld h, e
    ld [hl], d
    dec b
    rst $28
    ld [bc], a
    ld l, d
    inc bc
    ld c, c
    ld hl, $0701
    inc d
    ld c, c
    jr nz, @+$66

    inc bc
    or a
    ld [hl], l
    inc b

jr_020_6b31:
    cp $74
    dec b
    and c
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    dec b
    ld b, [hl]
    ld [bc], a
    xor h
    ld h, l
    ld a, b
    ld l, c

jr_020_6b41:
    ld [hl], h
    ld bc, $7369
    ld [bc], a
    call nz, Call_020_7c02
    ld hl, $0200
    ld l, h
    ld [hl], h
    inc b
    adc l
    ccf
    ld bc, $0202
    nop
    inc bc
    inc a
    ld l, h
    inc bc
    rst $28
    ld bc, $f604
    inc bc
    and h
    add hl, bc
    ld bc, $6552
    ld h, h
    add hl, bc
    nop
    ld [bc], a

jr_020_6b67:
    pop hl
    add hl, bc
    inc bc
    ld h, d
    ld l, h
    ld [hl], l
    ld h, l
    dec b

Jump_020_6b6f:
    ld a, a
    ld h, e
    ld l, a
    ld [hl], b
    ld l, c
    ld h, l
    ld [hl], e
    inc bc
    db $e3
    ld l, l
    ld h, l
    ld bc, $6203
    inc b

jr_020_6b7e:
    ld e, l
    ld l, $20
    ld d, b
    ld h, c
    ld a, c
    ld bc, $0563
    ld l, h
    jr nz, jr_020_6beb

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    inc b
    ccf
    ld l, $01
    dec b
    call z, $1a04
    ld bc, $6176
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    inc l
    jr nz, jr_020_6be9

    ld [bc], a
    add c
    ld h, c
    ld [hl], e
    ld l, e
    ld [bc], a
    push de
    ld [hl], a
    dec b
    db $76
    ld bc, $0274
    db $f4
    dec b
    ld a, [$2b03]
    ld bc, $666f
    inc l
    jr nz, jr_020_6c2a

    dec b
    sbc e
    ld l, a
    ld [hl], d
    jr nz, jr_020_6c20

    ld l, h
    ld [hl], l
    ld h, l
    ld l, $01
    ld b, c
    ld l, [hl]
    ld [hl], e
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_020_6c2e

    ld l, a
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c
    ld bc, $7905
    dec b
    ld de, $a403
    ld c, b
    ld l, a
    ld [hl], a
    inc b
    ld l, $2c
    ld [bc], a
    ld a, h
    ld bc, $2404
    inc bc
    reti


    jr nz, jr_020_6c5d

jr_020_6be9:
    ld h, l
    ld [hl], e

jr_020_6beb:
    ld [hl], h
    ld [hl], e
    ld bc, $6e69
    inc b
    xor a
    inc b
    ld c, [hl]
    ld h, h
    inc bc
    or a
    ld l, h
    ld h, l
    ld [hl], h
    jr nz, jr_020_6c01

    ld de, $a603
    dec b
    ld e, l

jr_020_6c01:
    ld h, a
    ld l, a
    dec b
    jp c, $8002

    ld l, b
    ld h, l
    ld h, c
    ld h, h
    ld l, $01
    ld [bc], a
    ld d, a
    jr nz, jr_020_6c15

    or a
    ld [bc], a
    ld [bc], a
    nop

jr_020_6c15:
    inc c
    ld hl, $6505
    inc b
    and l
    ld h, a
    ld l, a
    ld hl, $0c00

jr_020_6c20:
    ld hl, $a004
    dec b
    sbc h
    ld l, [hl]
    inc l
    jr nz, @+$79

    dec b

jr_020_6c2a:
    db $76
    ld bc, $fa05

jr_020_6c2e:
    ld [bc], a
    ld a, h
    inc bc
    dec hl
    ld bc, $666f
    inc l
    dec b
    call nc, Call_020_6572
    ld h, h
    dec b
    add sp, $6f
    ld [hl], d
    dec b
    push de
    ld h, d
    ld l, h
    ld [hl], l
    ld h, l
    inc b
    ld d, d
    inc b
    or c
    add hl, bc
    ld bc, $6552
    ld h, h
    add hl, bc
    nop
    dec b
    cp e
    add hl, bc
    inc bc
    ld b, d
    ld l, h
    ld [hl], l
    ld h, l
    nop
    inc c
    ld hl, $7257

jr_020_6c5d:
    ld l, a
    ld l, [hl]
    ld h, a
    dec b
    ld c, b
    ld [hl], d
    ld h, l
    ld [bc], a
    ld l, d
    dec b
    ld l, l
    jr nz, jr_020_6c6e

    ld b, b
    inc b
    add hl, de
    ccf

jr_020_6c6e:
    ld bc, $6157
    ld l, [hl]
    ld l, [hl]

Jump_020_6c73:
    ld h, c
    jr nz, jr_020_6cea

    ld [hl], d
    ld a, c
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $0202
    nop
    inc c
    ld hl, $4002
    inc bc
    push de
    ld hl, $0401
    and b
    ld l, a
    ld l, [hl]
    inc b
    and l
    ld h, a
    ld l, a
    ld hl, $0c00
    ld hl, $4002
    inc bc
    push de
    inc bc
    and e
    ld [bc], a
    ld b, b
    inc bc
    sub h
    dec b
    rst $38
    ld bc, $7902
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    inc l
    ld [bc], a
    call c, $9403
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    dec b
    dec a
    ld [hl], a
    ld bc, $0803
    ld a, c
    ld [bc], a
    ld c, c
    dec b
    cp d
    ld [hl], e
    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], b
    jr nz, jr_020_6d29

    ld a, c
    ld h, l
    ld hl, $4101
    ld [hl], e
    dec b
    inc h
    dec b
    ld l, [hl]
    ld [bc], a
    add $05
    ld [de], a
    ld [bc], a
    jp nz, $d102

    ld h, l
    ld [hl], d
    ld hl, $4820
    ld h, c
    db $76
    inc b
    sub a
    add hl, bc
    ld bc, $2202
    dec b
    ret c

    nop
    inc c
    ld [hl+], a
    ld [bc], a
    inc l

jr_020_6cea:
    dec b
    cp d
    ld [bc], a
    db $10
    dec b
    db $d3
    ld [bc], a
    jp nz, $6163

    ld l, [hl]
    inc bc
    ld b, b
    dec b
    ld a, b
    inc bc
    sub $01
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    dec b
    db $db
    ld h, l
    ld [hl], d
    add hl, bc
    nop
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
    ld [bc], a
    rlc d
    ld [bc], a
    nop
    inc c
    ld [hl+], a
    ld b, e
    ld [bc], a
    jr z, jr_020_6d1f

    ld d, l
    ld [bc], a

jr_020_6d1f:
    ret z

    dec b
    dec b
    ld bc, $e704
    jr nz, @+$07

    ld l, l
    ld [bc], a

jr_020_6d29:
    pop hl
    ld h, c
    ld bc, $e604
    dec b
    and b
    ld l, l
    ld l, a
    ld [hl], d
    ld a, c
    inc bc
    ld b, c
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld [bc], a
    xor h
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    ld l, $00
    dec b
    sbc l
    inc bc
    db $76
    inc bc
    ld a, a
    ld [hl], e
    ld h, c
    ld a, c
    jr nz, jr_020_6d4e

    inc e
    ccf

jr_020_6d4e:
    ld bc, $0202
    nop
    ld [bc], a
    and a
    ld bc, $794d
    jr nz, @+$6f

    ld l, c
    ld [hl], e
    inc b
    sub h
    dec b
    ld d, l
    nop
    ld c, c
    jr nz, jr_020_6d67

    dec e
    ld bc, $0275

jr_020_6d67:
    jr nz, jr_020_6d6c

    add hl, de
    nop
    ld c, b

jr_020_6d6c:
    ld l, a
    ld l, b
    inc bc
    cp c
    inc bc
    inc de
    ld bc, $2b04
    inc bc
    and l
    ld d, e
    ld l, a
    jr nz, jr_020_6de3

    inc b
    and d
    ld h, h
    ld l, a
    inc bc
    rst $00
    ld [hl], a
    dec b
    and e
    inc b
    ld sp, hl
    inc bc
    ld e, b
    ld [bc], a
    and c
    ld bc, $656e
    ld [hl], a
    ld [hl], e
    ld hl, $5320
    ld h, c
    ld a, c
    inc l
    ld [bc], a
    db $eb
    ld bc, $d203
    ld h, h
    ld l, a
    dec b
    and b
    inc b
    ld h, $01
    inc b
    inc e
    inc b
    ld [hl+], a
    ccf
    ld bc, $0202
    nop
    ld c, a
    inc bc
    cp c
    ld b, e
    ld [bc], a
    jr z, jr_020_6db2

    ld l, c

jr_020_6db2:
    ld h, [hl]
    ld [bc], a
    push de
    inc bc
    cpl
    ld bc, $0b03
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $00
    ld [bc], a
    ld [hl], d
    ld h, e
    ld [hl], l
    ld [hl], h
    jr nz, jr_020_6dcb

    inc hl
    inc bc
    sub h
    ld h, a

jr_020_6dcb:
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    inc bc
    and $03
    ld a, [hl-]
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    inc bc
    rst $20
    dec b
    ld d, l
    dec b
    inc de
    ld [bc], a
    ld l, d
    add hl, bc
    ld bc, $5b02

jr_020_6de3:
    inc b
    ld d, d
    dec b
    ld d, l
    ld c, c
    ld l, [hl]
    jr nz, jr_020_6def

    or l
    jr nz, @+$05

    reti


jr_020_6def:
    ld bc, $c605
    ld [hl], e
    ccf
    ccf
    ccf
    ld bc, $7202
    ld h, h
    ld l, a
    jr nz, jr_020_6e01

    or a
    ld [bc], a
    ld [bc], a
    nop

jr_020_6e01:
    inc b
    or [hl]
    ld [bc], a
    sub a
    ld [hl], a
    ld h, c
    ld a, c
    dec b
    ld d, l
    nop
    ld c, a
    ld c, e
    ld hl, $4720
    ld l, a
    jr nz, jr_020_6e74

    ld l, b
    ld h, l
    ld h, c
    ld h, h
    ld l, $00
    inc b
    dec a
    ld h, c
    jr nz, jr_020_6e22

    ld [c], a
    jr nz, jr_020_6e88

    ld [hl], l

jr_020_6e22:
    ld a, c
    inc l
    ld bc, $e705
    dec b
    ld h, [hl]
    ld [bc], a
    ld c, h
    ld bc, $6e61
    inc bc
    rrca
    jr nz, jr_020_6e95

    ld l, b
    inc b
    dec d
    ld l, $01
    inc b
    db $fc
    ld [bc], a
    adc e
    inc b
    or a
    inc bc
    adc b
    inc b
    ld d, h
    nop
    inc b
    dec a
    inc b
    sbc c
    inc b
    and [hl]
    nop
    inc bc
    add sp, $64
    ld l, c
    ld h, h
    inc b
    ld l, a
    ld h, e
    ld [hl], l
    ld [hl], h
    ld bc, $8105
    ld [bc], a
    xor h
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    ld hl, $0701
    ld h, $04
    ld e, a
    ld d, h
    inc b
    sub l
    dec b
    add b
    ld [hl], e

Jump_020_6e69:
    ld [hl], h
    dec b
    pop de
    inc bc
    dec l
    jr nz, jr_020_6e74

    jp hl


    ld l, $00
    ld e, c

jr_020_6e74:
    ld h, l

Call_020_6e75:
    ld h, c
    ld l, b
    ld hl, $0320
    add sp, $63
    ld [hl], l
    ld [hl], h
    ld bc, $8105
    ld [bc], a
    xor h
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e

jr_020_6e88:
    dec b
    sbc [hl]
    nop
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld [bc], a
    ld [hl], h
    ld h, h
    ld l, c
    ld h, h
    dec b

jr_020_6e95:
    add hl, de
    ld h, c
    jr nz, @+$06

    ld [hl+], a
    inc l
    inc bc
    ld c, $2c
    ld bc, $6103
    inc b
    db $fd
    ld hl, $0200
    inc l
    ld bc, $9c05
    ld [bc], a
    ld b, $03
    or d
    ld [hl], l
    ld [hl], e
    inc bc
    and [hl]
    inc bc
    scf
    ld h, e
    ld l, b
    ld [hl], l
    dec b
    ld a, a
    dec b
    sbc c
    ld [bc], a
    inc b
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
    ld b, e
    ld [bc], a
    jr z, jr_020_6ece

    ld d, l
    ld [bc], a

jr_020_6ece:
    ret z

    ld [bc], a
    or h
    ld [bc], a
    db $10
    ld l, $00
    ld d, b
    ld [hl], l
    ld [hl], b
    ld l, c
    ld l, h
    ld hl, $4420
    ld l, a
    ld [bc], a
    jp nz, $bd03

    ld [bc], a
    inc e
    ccf
    ld bc, $0202
    nop
    ld c, a
    ld l, b
    inc l
    inc b
    cp c
    ld l, l
    ld l, c
    ld [hl], e
    inc b
    sub h
    ld l, $00
    ld b, e
    ld [bc], a
    jr z, jr_020_6efa

    inc bc

jr_020_6efa:
    daa
    ld l, $00
    ld c, b
    ld l, l
    ld [hl], b
    ld l, b
    ld hl, $0401
    dec hl
    inc bc
    and l
    ld [bc], a
    inc b
    inc b
    ld sp, hl
    ld c, b
    inc b
    and d
    dec b
    add d
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, a
    ld [hl], d
    ld bc, $ce04
    ld l, $20
    ld [bc], a
    db $ec
    inc b
    ld [c], a
    ld bc, $6168
    db $76
    inc bc
    and [hl]
    inc b
    adc $73
    ld bc, $0704
    inc b
    ld h, a
    ld hl, $ba03
    ld l, c
    ld l, [hl]
    ld bc, $0361
    ld d, c
    jr nz, jr_020_6fa5

    ld l, a
    ld l, a
    ld h, h
    inc l
    ld bc, $e705
    ld [bc], a
    sub c
    ld h, c
    ld bc, $6967
    ld h, [hl]
    ld [hl], h
    inc bc
    inc c
    dec b
    ld a, h
    inc bc
    and l
    ld c, c
    ld h, [hl]
    ld [bc], a
    jr nc, jr_020_6f72

    dec b
    ld de, $0401
    ld a, [hl-]
    ld hl, $5720
    dec b
    pop de
    ld bc, $d203
    ld [hl], h
    ld [hl], d
    ld a, c
    ccf
    ld bc, $8803
    inc bc

Call_020_6f67:
    cp a
    nop

Jump_020_6f69:
    ld c, c
    jr nz, jr_020_6fe0

    ld l, b
    inc b
    add l
    inc b
    dec l
    daa

jr_020_6f72:
    ld h, h
    ld bc, $6f64
    dec b
    jp nc, $0c03

    dec b
    di
    ld l, $01
    ld c, a
    ld l, b
    inc l
    inc bc
    adc [hl]
    dec b
    ld d, l
    nop
    ld c, a
    ld c, e
    ld l, $20
    inc bc
    db $fc
    jr nz, jr_020_6ff6

    ld l, a
    ld [hl], a
    ld bc, $7469
    jr nz, jr_020_6f99

    ld [$2e73], a
    nop

jr_020_6f99:
    inc b
    rst $00
    inc l
    jr nz, jr_020_7005

    ld l, a
    jr nz, jr_020_6fa6

    ld [hl], e
    ld bc, $9403

jr_020_6fa5:
    ld [hl], e

jr_020_6fa6:
    ld [hl], h
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    inc bc
    ld a, [c]
    ld [bc], a
    adc e
    ld [hl], h
    ld l, a
    inc b
    add hl, de
    inc bc
    and h
    ld c, c
    jr nz, jr_020_702a

    ld [hl], l
    ld [hl], h
    jr nz, @+$04

    inc e
    ld bc, $6177
    ld a, c
    jr nz, jr_020_6fc7

    ld l, c
    inc b

jr_020_6fc7:
    sbc a
    ld l, $01
    ld c, c
    ld h, [hl]
    ld [bc], a
    jr nc, @+$06

    ld a, h
    ld l, c
    ld [hl], h
    jr nz, jr_020_6fd7

    db $10
    inc bc
    ld a, [bc]

jr_020_6fd7:
    ld bc, $7572
    ld l, [hl]
    ld [hl], e
    inc b
    inc a
    inc l
    inc bc

jr_020_6fe0:
    ld c, e
    dec b
    rrca
    ld h, c
    jr nz, jr_020_6fea

    pop bc
    ld hl, $0201

jr_020_6fea:
    nop
    nop
    ld c, b
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_020_6ff7

    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld h, c

jr_020_6ff6:
    ld l, c

jr_020_6ff7:
    ld [hl], d
    ld [hl], e
    ld hl, $5900
    ld [bc], a
    ld c, c
    ld bc, $3033
    jr nz, jr_020_7076

    ld h, l
    ld h, e

jr_020_7005:
    ld l, a
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $01
    dec b
    or c
    ld a, c
    ccf
    jr nz, @+$55

    ld h, l
    ld [hl], h
    inc bc
    and e
    ld b, a
    ld l, a
    ld hl, $0900
    inc b
    inc bc
    add sp, $74
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_020_702f

    ld [$0c3a], sp
    jr nc, jr_020_702b

    db $e4
    ld d, h

jr_020_702a:
    ld l, a

jr_020_702b:
    ld l, a
    dec b
    jp hl


    inc b

jr_020_702f:
    db $eb
    ld b, h
    ld l, a
    ld [bc], a
    push de
    inc bc
    ld e, $01
    ld [hl], h
    inc b
    adc l
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $0202
    nop
    add hl, bc
    inc b
    inc c
    ld [$0c3a], sp
    jr nc, jr_020_7052

    nop
    inc b
    db $eb
    ld d, a
    ld h, c
    ld a, c
    inc bc
    or b
    ld h, a

jr_020_7052:
    ld l, a
    ld hl, $4f00
    ld l, [hl]
    ld l, h
    ld a, c
    inc b
    cp c
    inc b
    adc $01
    inc bc
    xor e
    ld h, h
    ld l, a
    dec b
    jp nc, $a303

    inc bc
    db $fc
    ld [bc], a
    xor h
    inc b
    pop bc
    ld bc, $0549
    inc h
    inc bc
    dec de
    nop
    ld [bc], a
    sub l
    ld [bc], a

jr_020_7076:
    ret z

    inc bc
    or d
    ld [hl], h
    inc bc
    ld [hl-], a
    ld [bc], a
    ld b, e
    ld c, d
    inc bc
    ld a, l
    inc b
    inc d
    inc bc
    ld c, a
    ld [bc], a
    or d
    dec b
    ld d, l
    nop
    ld [bc], a
    ld l, h
    inc b
    dec de
    dec b
    add d
    ld h, e
    ld l, b
    dec b
    add c
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ccf
    ld bc, $0202
    nop
    inc bc
    add sp, $74
    ld l, b
    ld [hl], d
    ld h, l
    ld [hl], a
    ld [bc], a
    or h
    add hl, bc
    ld bc, $5b02
    dec b
    ld a, a
    ld [hl], h
    ld l, a
    ld l, a
    inc bc
    db $eb
    inc bc
    ld a, [bc]
    ld [hl], e
    ld hl, $0701
    ld h, $05
    inc sp
    ld h, c
    jr nz, jr_020_7130

    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ld l, $00
    ld c, $c6
    ld [bc], a
    add hl, hl
    ld [bc], a
    and d
    ld bc, $9403
    dec b
    or e
    jr nz, jr_020_7139

    ld h, c
    ld l, h
    ld h, [hl]
    inc bc
    pop de
    ld [hl+], a
    ld c, h
    ld l, a
    db $76
    ld h, l
    ld [bc], a
    xor h
    dec b
    ld c, $2c
    ld [hl+], a
    ld bc, $9403
    ld l, b
    ld l, c
    ld [hl], h
    ld [bc], a
    ld b, $01
    ld h, c
    ld l, l
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_020_7166

    ld [hl], e
    jr nz, jr_020_70f8

    pop hl
    ld bc, $c905

jr_020_70f8:
    ld [hl], e
    inc b
    jr z, jr_020_711e

    ld b, $1c
    ld c, h
    ld l, a
    db $76
    ld h, l
    inc l
    inc b
    adc b
    ld bc, $9403
    dec b
    ld e, c
    ld hl, $1c06
    ld [hl+], a
    ld bc, $9e04
    daa
    ld [hl], e
    ld [bc], a
    or h
    dec b
    ld sp, hl
    jr nz, jr_020_711e

    ld [hl], c
    ccf
    ld bc, $3302

jr_020_711e:
    inc b
    or a
    ld [bc], a
    ld [bc], a
    nop
    ld c, $c6
    ld [bc], a
    ld b, l
    ld l, [hl]
    ld l, a
    inc bc
    adc a
    ld hl, $0401
    rst $20
    dec l

jr_020_7130:
    ld h, d
    ld a, c
    ld h, l
    ld hl, $0e00
    add $59
    ld h, l

jr_020_7139:
    ld [hl], e
    ld hl, $5920
    ld h, l
    ld [hl], e
    ld [bc], a
    db $ed
    ld l, c
    ld [hl], h
    dec b
    sub $74
    dec b
    jp c, $0575

    ld bc, $6d01
    ld h, l
    jr nz, jr_020_7154

    ld l, $79
    inc b
    or h

jr_020_7154:
    jr nz, @+$4b

    ld bc, $ac04
    inc bc
    cp [hl]
    ld c, $c6
    ld c, c
    ld l, [hl]
    ld [bc], a
    ld e, b
    inc l
    ld [bc], a
    add sp, $6d
    inc bc

jr_020_7166:
    ld [hl-], a
    dec b
    db $d3
    ld [bc], a
    jp nz, $6163

    ld l, [hl]
    ld [bc], a
    db $e3
    inc bc
    dec hl
    ld bc, $4102
    ld hl, $4320
    ld [bc], a
    jr z, jr_020_717c

    inc bc

jr_020_717c:
    ld l, c
    ld a, c
    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, [hl]
    jr nz, jr_020_71ea

    ld [hl], l
    ld l, h
    ld l, h
    ld bc, $6903
    inc b
    rlca
    ld h, [hl]
    ld l, c
    db $76
    ld h, l
    ld bc, $7505
    ld [hl], e
    inc bc
    db $e3
    ld [bc], a
    ld b, c
    ld hl, $0e00
    add $49
    ld [hl], e
    jr nz, jr_020_7219

    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, [hl]
    jr nz, jr_020_720c

    ld [hl], l
    ld l, h
    ld l, h
    inc bc
    rst $20
    dec b
    ld b, [hl]
    ld [bc], a
    xor c
    inc bc
    db $dd
    ld l, c
    ld [hl], h
    ld [bc], a
    db $e3
    inc bc
    dec hl
    ld hl, $4801
    ld h, l
    ld h, l
    dec l
    ld a, c
    ld h, c
    ld l, b
    ld hl, $0e00
    add $41
    ld l, [hl]
    ld h, h
    inc bc
    sbc [hl]
    jr nz, jr_020_7231

    ld [hl], l
    ld l, h
    ld l, h
    ld bc, $7a05
    ld [bc], a
    ld b, c
    ld hl, $0e00
    add $4e
    ld l, a
    ld [hl], a
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

jr_020_71ea:
    dec b
    ld a, e
    inc bc
    dec hl
    ld bc, $4102
    inc bc
    and $02
    inc b
    inc bc
    and h
    ld a, [bc]
    ld [bc], a
    dec b
    ld d, [hl]
    ld c, c
    inc bc
    ld d, $72
    ld h, l
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], h
    inc bc
    cp [hl]
    ld [bc], a
    nop
    nop
    ld c, $c6
    ld [bc], a

jr_020_720c:
    dec sp
    ld [bc], a
    ret z

    ld bc, $9c05
    ld [bc], a
    ld b, $2c
    jr nz, jr_020_7278

    ld [hl], e
    ld l, e

jr_020_7219:
    ld hl, $0f00
    ld c, d
    ld bc, $9502
    inc bc
    jp nc, Jump_020_6761

    dec b
    ld [c], a
    ccf
    ld bc, $0220
    ld [bc], a
    nop
    ld c, $c6
    inc bc
    db $fc
    dec b

jr_020_7231:
    ld a, [hl]
    ld l, b
    ld [hl], l
    ld l, l
    ld h, c
    ld l, [hl]
    ld bc, $2049
    ld [hl], l
    ld [bc], a
    jr nz, jr_020_725f

    ld bc, $034c
    rst $28
    jr nz, jr_020_72aa

    dec b
    pop de
    ld [bc], a
    ld l, d
    add hl, bc
    ld bc, $0473
    ld h, d
    ld h, l
    ld l, h

Call_020_724f:
    add hl, bc
    nop
    inc bc
    inc c
    dec b
    ld a, h
    ld hl, $0e00
    add $22
    ld b, $1c
    ld c, h
    ld l, a
    db $76

jr_020_725f:
    ld h, l
    inc l
    inc b
    adc b

Call_020_7263:
    ld bc, $9403
    dec b
    ld e, c
    ld hl, $1c06
    ld [hl+], a
    ld bc, $2a03
    ld h, c
    ld [bc], a
    rst JumpTable
    ld bc, $5405
    ld hl, $0c00

jr_020_7278:
    jr nz, jr_020_72bb

    ld [hl], d
    ld h, a
    inc bc
    cp c
    ld d, h
    ld l, b
    ld h, l
    ld bc, $7404
    dec b
    sbc d
    ld h, d
    ld l, a
    ld [hl], a
    inc bc
    push hl
    ld [bc], a
    ld l, c
    ld h, h
    inc b
    ld a, [hl]
    ccf
    ld bc, $5003
    dec b
    rla
    ld [hl], e
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    ld b, c
    ld l, b
    ld l, a
    ld a, c
    ld hl, $0520
    ld c, [hl]
    jr nz, jr_020_72ef

    inc b
    ld c, e
    ld [hl], e
    dec b

jr_020_72aa:
    call c, $6863
    ld [bc], a
    and e
    ld h, h
    inc b
    ld a, [hl]
    ld [bc], a
    and c
    ld bc, $d003
    inc l
    jr nz, jr_020_7303

    dec b

jr_020_72bb:
    cp h
    ld h, e
    dec b
    inc a
    inc b
    inc d
    ld h, c
    ld bc, $0573
    and c
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, l
    ld l, $20
    ld c, c
    ld bc, $7761
    ld l, a
    ld l, e
    ld h, l
    jr nz, @+$04

    xor a
    ld hl, $0201
    add hl, hl
    ld h, a
    ld l, a
    jr nz, jr_020_734e

    ld l, [hl]
    inc bc
    or d
    inc bc
    sub h
    inc bc
    and c
    inc b
    rst $38
    ld [bc], a
    db $76
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld h, c

jr_020_72ef:
    jr nz, jr_020_7361

    ld l, c
    ld [hl], h
    ld a, c
    dec b
    and b
    inc l
    ld bc, $ba04
    dec b
    and b
    jr nz, jr_020_7302

    ld a, a
    inc b
    push hl
    ld [bc], a

jr_020_7302:
    scf

jr_020_7303:
    ld hl, $4d01
    ld h, l
    jr nz, @+$75

    ld l, e
    ld [hl], l
    ld l, h
    ld l, h
    inc bc
    push hl
    ld [hl], d
    ld l, a
    ld l, h
    ld l, h
    dec b
    and $04
    inc a
    inc bc
    and $03
    sub h
    ld h, h
    inc b
    ld a, [hl]
    ld l, $01
    dec b
    or b
    ld [bc], a
    sbc b
    inc b
    add c
    ld l, $00
    ld c, c
    jr nz, jr_020_732e

    add [hl]
    inc b
    sbc c

jr_020_732e:
    dec b
    and $2c
    ld bc, $056d
    and d
    ld a, c
    ld hl, $0420
    and b
    ld l, h
    ld h, l
    ld [hl], h
    dec b
    add b
    dec b
    and l
    inc bc
    sbc b
    ld [bc], a
    scf
    ld l, $01
    rlca
    inc bc
    ld b, e
    dec b
    db $ec
    dec b
    and b

jr_020_734e:
    ld [bc], a
    sub d
    ld l, $01
    inc bc
    add hl, bc
    inc b
    ld l, b
    jr nz, jr_020_73d1

    ld h, c
    dec b
    rlca
    ld c, c
    ld [bc], a
    ldh [rNR41], a
    ld [hl], a
    ld h, l

Jump_020_7361:
jr_020_7361:
    inc b
    and e
    ld h, e
    dec b
    ld l, h
    ld l, $00
    ld b, c

Call_020_7369:
    ld [hl], d
    ld h, a
    ld l, b
    ld hl, $4220
    ld h, l
    jr nz, jr_020_73d9

    dec b
    rst $10
    ld l, h
    ld h, l
    ld hl, $4900

Jump_020_7379:
    dec b
    jp c, Jump_020_6b6f

    dec b
    db $d3
    inc bc
    db $db
    ld bc, $7905
    ld [hl], d
    inc b
    sbc d
    ld [bc], a
    or h
    inc bc
    and c
    inc b
    rst $38
    inc l
    inc bc
    ld a, [c]
    inc b
    ld l, [hl]
    dec b
    di
    jr nz, jr_020_73df

    ld bc, $9804
    jr nz, jr_020_7403

    ld l, a
    ld [hl], a
    dec b
    jp c, Jump_020_5505

    nop
    ld d, b
    ld [hl], h
    ld l, b
    ld l, b
    dec b
    sub $04
    ld d, $73
    dec b
    and c
    ld bc, $9905
    ld l, l
    ld h, l
    jr nz, jr_020_7421

    dec b
    pop hl
    ld l, b
    ld hl, $0c00
    jr nz, jr_020_73be

    ld b, b
    ld l, c

jr_020_73be:
    ld [hl], h
    dec b
    ld e, [hl]
    ld bc, $6f64
    ld [hl], l
    ld h, d
    ld [hl], h
    jr nz, jr_020_73cb

    adc e
    ld l, c

jr_020_73cb:
    ld [hl], h
    ld hl, $0c00
    jr nz, jr_020_7426

jr_020_73d1:
    ld l, b
    dec l
    ld l, a
    ld l, b
    ld [bc], a
    db $ed
    add hl, bc
    inc bc

jr_020_73d9:
    ld b, e
    ld h, c
    ld [hl], b
    daa
    ld l, [hl]
    daa

jr_020_73df:
    ld [hl], e
    add hl, bc
    nop
    ld [bc], a
    scf
    inc l
    ld bc, $7304
    ld c, c
    inc bc
    add a
    ld bc, $e504
    daa
    ld l, h
    ld l, h
    jr nz, jr_020_7457

    ld l, a
    inc bc
    and h
    ld [bc], a
    db $ec
    ld h, c
    ld [hl], a
    dec b
    ld e, b
    dec b
    ld b, h
    ld a, c
    ld hl, $0401
    dec hl

jr_020_7403:
    ld [bc], a
    db $76
    ld d, a
    dec b
    and e
    inc l
    jr nz, jr_020_746c

    ld [hl], h
    jr nz, jr_020_747a

    inc b
    ld sp, $4920
    ld bc, $5f05
    ld h, a
    ld l, a
    jr nz, jr_020_7488

    ld l, [hl]
    ld [bc], a
    ld b, e
    inc bc
    and c
    inc b
    rst $38
    inc b

jr_020_7421:
    dec b
    ld hl, $0301
    or c

jr_020_7426:
    inc b
    db $ec
    inc bc
    push hl
    ld [hl], l
    ld [hl], b
    dec b
    jp c, $1b03

    nop
    ld d, e
    ld l, [hl]
    ld h, [hl]
    dec b
    sub $04
    ld d, $04
    add [hl]
    ld bc, $7075
    dec b
    and b
    jr nz, jr_020_74af

    ld l, a
    ld [hl], e
    ld h, l
    ld hl, $4100
    ld [hl], d
    ld h, a
    ld l, b
    ld hl, $5920
    ld h, c
    ld bc, $3404
    dec b
    and b
    ld hl, $0c00
    ld [hl+], a

jr_020_7457:
    ld b, c
    ld a, c
    ld h, l
    ld hl, $0320
    ld [de], a
    ld l, a
    ld h, [hl]
    ld h, [hl]
    inc l
    ld bc, $3b04
    ld bc, $6e41
    ld h, e
    ld l, b
    ld l, a
    ld [hl], d

jr_020_746c:
    ld [hl], e
    jr nz, jr_020_74d0

    ld [hl], a
    ld h, l
    ld l, c
    ld h, a

Jump_020_7473:
    ld l, b
    ld hl, $0200
    ld l, a
    dec b
    sbc [hl]

jr_020_747a:
    jr nz, jr_020_74c0

    inc b
    ld a, [hl]
    inc l
    ld bc, $6564
    ld h, c
    ld h, h
    jr nz, jr_020_74e7

    ld l, b
    ld h, l

jr_020_7488:
    ld h, c
    ld h, h
    dec b
    sbc [hl]
    nop
    dec b
    xor $20
    daa
    ld h, l
    ld [hl], d
    jr nz, jr_020_7508

    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld hl, $5401
    ld l, a
    dec b
    ld l, a
    inc l
    jr nz, jr_020_74a7

    dec sp
    nop
    ld b, d
    ld [hl], l

jr_020_74a7:
    ld [hl], h
    inc bc
    sbc [hl]
    inc bc
    and l
    ld l, c
    ld l, l
    ld [hl], b

jr_020_74af:
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d
    ld l, h
    inc b
    xor b
    nop
    ld b, [hl]
    ld l, a
    ld l, a
    ld l, h
    ld hl, $0220
    db $ec

jr_020_74c0:
    ld h, h
    ld l, a
    dec b
    xor b
    ld h, h
    ld l, c
    ld h, l
    ld hl, $5720
    inc bc
    and d
    inc bc
    db $dd
    ld l, c
    ld [hl], h

jr_020_74d0:
    jr nz, jr_020_753b

    ld h, [hl]
    inc b
    and l
    inc bc
    sbc $27
    ld h, l
    ld [hl], d
    jr nz, @+$06

    rlca
    ld [hl], a
    ld h, l
    jr nz, jr_020_7548

    ld l, a
    ld [hl], h
    ld hl, $4100
    dec l

jr_020_74e7:
    inc b
    ld a, [hl+]
    ld hl, $2801
    daa
    ld b, l
    ld l, h
    ld [hl], b
    jr nz, jr_020_7567

    ld [hl], e
    inc b
    xor a
    ld hl, $0029
    ld d, a
    ld h, l
    jr nz, jr_020_7501

    or d
    dec b
    dec sp
    ld [bc], a
    ld l, a

jr_020_7501:
    inc bc
    sub a
    dec b
    ld l, a
    ld hl, $0c00

jr_020_7508:
    ld [hl+], a
    ld b, d
    ld a, c
    jr nz, jr_020_7557

    ld l, a
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$54

    ld l, a
    ld h, a
    dec b
    ld [hl], d
    ld b, c
    ld a, c
    ld h, l
    ld hl, $4720
    ld l, a
    inc l
    jr nz, jr_020_7525

    dec sp
    ld bc, $2b02

jr_020_7525:
    ld l, c
    ld [hl], h
    dec b
    sbc [hl]
    nop
    ld b, c
    ld e, c
    ld b, l
    inc l
    jr nz, @+$43

    ld e, c
    ld b, l
    inc l
    jr nz, jr_020_7588

    ld c, c
    ld d, d
    dec b
    sbc [hl]
    nop
    inc c

jr_020_753b:
    jr nz, jr_020_757e

    ld [hl], d
    ld h, a
    ld l, b
    inc bc
    sub a
    dec b
    ld l, a
    inc bc
    push hl
    ld [hl], h
    ld [hl], d

jr_020_7548:
    ld [hl], l
    ld l, h
    ld a, c
    dec b
    and b
    jr nz, @+$6a

    ld l, a
    dec b
    dec bc
    ld c, l
    ld h, l
    inc bc
    rlca
    ld [hl], h

jr_020_7557:
    dec b
    sbc d
    inc bc
    push af
    ld h, c
    dec b
    ld d, d
    ld hl, $4120
    ld a, c
    ld h, l
    ld hl, $5301
    dec b

Call_020_7567:
jr_020_7567:
    db $10
    jr nz, @+$07

    sbc h
    ld [bc], a
    scf
    ld hl, $0c00
    ld hl, $6f4f
    ld l, a
    ld l, b
    inc bc
    and l
    ld d, l
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, [hl]
    dec b

jr_020_757e:
    ld d, l
    nop
    ld [bc], a
    ld [hl], c
    inc b
    sub d
    ld bc, $6f73
    inc bc

jr_020_7588:
    ld d, c
    dec b
    ld d, l
    nop
    inc c
    ld hl, $6855
    ld [hl], a
    ld h, c
    ld [hl], l
    ld h, a
    ld l, b
    ld hl, $4900
    jr nz, jr_020_759d

    add [hl]
    ld l, a
    ld l, [hl]

jr_020_759d:
    jr nz, jr_020_75a3

    ld [$7301], sp
    ld l, a

jr_020_75a3:
    inc bc
    db $db
    dec b
    ld d, $49
    inc bc
    and l
    ld c, c
    inc b
    ld d, $73
    ld h, l
    ld h, c
    ld [hl], e
    dec b
    db $e3
    ld hl, $0c00
    ld hl, $6f4f
    ld l, a
    ld l, b
    inc bc
    and l
    ld d, l
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, [hl]
    dec b
    ld d, l
    nop
    ld [bc], a
    db $ec
    ld l, [hl]
    ld l, a
    inc b
    xor d
    ld hl, $5401
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_020_75d7

    adc e
    ld l, c

jr_020_75d7:
    ld [hl], h
    ld hl, $5701
    ld h, l
    jr nz, jr_020_763f

    ld l, c
    inc b
    ld l, a
    ld [hl], e
    ld h, c
    ld l, c
    ld l, h
    dec b
    ld a, l
    inc bc
    and b
    inc b
    and l
    ld h, h
    ld l, c
    ld h, l
    ld h, h
    ld l, $00
    inc c
    jr nz, jr_020_75f7

    add sp, $63
    inc b

jr_020_75f7:
    rlca
    dec b
    ld a, h
    ld [hl], d
    dec l
    ld bc, $6573
    ld l, h
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_020_7675

    ld l, c
    ld [hl], d
    dec b
    and d
    ld [hl], e
    ccf
    ld bc, $6853
    ld h, c
    ld l, l
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_020_767c

    ld l, a
    ld l, a
    ld l, h
    ld [hl], e
    ld hl, $4701
    ld h, l
    ld [hl], h
    ld [hl], h
    inc bc
    and [hl]
    ld [hl], e
    dec b
    db $e3
    ld [bc], a
    or h
    ld l, l
    ld l, a
    ld l, l
    dec b
    rst $10
    ld [bc], a
    push de
    ld [hl], e
    ld h, l
    ld [hl], h
    ld bc, $6173
    ld l, c
    ld l, h
    ccf
    jr nz, jr_020_7682

    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    db $76
    ld c, a

jr_020_763f:
    ld l, a
    ld l, a
    inc bc
    cp c
    ld d, l
    ld l, b
    ld l, [hl]
    ld l, [hl]
    ld [bc], a
    db $76
    ld [bc], a
    db $ec
    ld l, [hl]
    ld l, a
    inc b
    xor d
    ld hl, $5001
    ld [hl], l
    ld [hl], h
    jr nz, jr_020_767d

    ld h, l
    ld [hl], d
    jr nz, jr_020_76bb

    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $5500
    ld l, b
    ld l, b
    ld l, [hl]
    inc bc
    and l
    inc b
    ld a, [hl+]
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    ld c, a
    ld l, a
    ld l, a
    ld l, b
    inc bc
    and l
    ld d, e

jr_020_7675:
    dec l
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, jr_020_76dc

    ld l, [hl]

jr_020_767c:
    ld h, e

jr_020_767d:
    ld l, b
    ld l, a
    ld [hl], d
    dec b
    ld d, l

jr_020_7682:
    nop
    ld b, c
    ld a, c
    ld h, l
    inc l
    inc b
    and l
    ld h, a
    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, c
    ld bc, $0f05
    inc b
    ld a, $73
    ld h, l
    ld h, c
    ld bc, $656c
    ld h, a
    ld [hl], e
    ld l, $20
    ld d, a
    inc bc
    and d
    inc b
    db $ec
    ld bc, $f402
    ld h, c
    jr nz, jr_020_770a

    ld l, c
    ld [hl], h
    ld l, $00
    ld b, c
    ld [hl], h
    jr nz, @+$6e

    inc b
    ld sp, $a005
    jr nz, jr_020_76ba

    ld [hl], h
    ld bc, $e505

jr_020_76ba:
    inc bc

jr_020_76bb:
    xor a
    ld h, c
    ld [hl], h
    dec b
    ld l, a
    ld l, $01
    inc bc
    adc l
    ld h, c
    dec b
    ld l, a
    ld h, [hl]
    ld h, c
    ld [hl], d
    inc bc
    rst $00
    ld l, l
    ld h, c
    ld l, [hl]
    inc l
    jr nz, jr_020_76d5

    and c
    inc b
    xor a

jr_020_76d5:
    ld hl, $5300
    ld l, c
    ld [hl], h
    ld [hl], h
    dec b

jr_020_76dc:
    and $20
    ld l, c
    inc b
    adc h
    ld bc, $8105
    ld [bc], a
    xor h
    inc b
    or h
    ld bc, $616d
    ld h, h
    inc b
    cp b
    jr nz, @+$75

    dec b
    db $e3
    ld hl, $5700
    ld l, b
    ld a, c
    ccf
    inc bc
    cp d
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld [bc], a
    or h
    inc b
    ld [hl], h
    ld [bc], a
    adc h
    ld c, c
    daa
    ld l, l
    ld bc, $af03
    dec b

jr_020_770a:
    ld [c], a
    ld l, h
    dec b
    and $2e
    nop
    ld c, c
    ld [hl], h
    inc bc
    ld l, h
    ld [hl], h
    ld l, a
    inc bc
    add c
    ld l, $01
    ld c, c
    jr nz, jr_020_7780

    ld h, c
    ld l, [hl]
    inc bc
    rlca
    dec b
    add hl, de
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    jr nz, jr_020_778c

    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    dec b
    and $21
    nop
    ld c, c
    ld [hl], e
    inc b
    inc l
    ld l, l
    ld h, l
    inc l
    jr nz, jr_020_77a9

    ld [hl], d
    inc bc
    push hl
    ld [bc], a
    cp e
    jr nz, jr_020_77ae

    ld l, c
    ld [hl], e
    ld [hl], e
    dec b
    and $3f
    nop
    ld d, l
    ld l, b
    ld l, b
    ld l, b
    ld l, [hl]
    inc bc
    and l
    ld c, c
    ld h, [hl]
    jr nz, jr_020_77cc

    ld h, c
    inc b
    add hl, sp
    inc l
    ld bc, $ff04
    jr nz, @+$63

    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld h, l

Jump_020_7761:
    ld bc, $b405
    inc bc
    ld e, e
    ld l, $00
    ld b, c
    ld l, b
    ld l, a
    ld a, c
    ld hl, $4420
    ld l, a
    jr nz, jr_020_77eb

    ld h, c
    ld bc, $a202
    dec b
    and b
    inc bc
    rst $20
    ld e, c
    ld h, c
    ld [bc], a
    ld a, b
    inc b
    and a

jr_020_7780:
    inc bc
    ret nc

    inc bc
    inc c
    dec b
    dec bc
    inc b
    ld [de], a
    nop
    inc bc
    add sp, $05

jr_020_778c:
    ld [$b402], sp
    inc bc
    ret nc

    jr nz, jr_020_77ba

    ld [hl], h
    ld l, c
    ld l, h
    inc b
    and l
    ld [hl], e
    ld h, l
    ld [hl], h
    ld bc, $6173
    ld l, c
    ld l, h
    ld [bc], a
    ld [hl], l
    ld l, $20
    dec b
    ld [hl], h
    ld bc, $4505

jr_020_77a9:
    inc bc
    ld d, e
    ld bc, $6f02

jr_020_77ae:
    inc l
    dec b
    ldh [rTIMA], a
    call Call_020_7263
    ld a, c
    ld [bc], a
    ld [hl], l
    ld l, $00

jr_020_77ba:
    ld [bc], a
    rrca
    jr nz, @+$05

    ld e, d
    ld bc, $3102
    ld [bc], a
    pop hl
    ld [bc], a
    or e
    ld bc, $0466
    adc a
    jr nz, @+$04

jr_020_77cc:
    and l
    ld bc, $5602
    inc b
    jr @+$6b

    ld [hl], d
    ld bc, $696d
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    inc bc
    ld l, h
    ld [hl], h
    ld l, a
    ld bc, $0573
    rst $38
    ld [bc], a
    or h
    ld [bc], a
    ld a, a
    inc bc
    pop de
    ld c, [hl]

jr_020_77eb:
    inc bc
    ccf
    ld [bc], a
    pop hl
    dec b
    and h
    dec b
    ld a, a
    dec b
    ld a, $04
    ld h, b
    inc l
    inc b
    ld a, [de]
    ld bc, $6577
    ld [hl], d
    inc bc
    add l
    ld l, b
    dec b
    and c
    inc bc
    or d
    ld [bc], a
    rrca
    ld [bc], a
    or h
    ld [hl], e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_020_7876

    ld h, l
    ld [hl], b
    ld h, c
    ld l, c
    ld [hl], d
    ld bc, $e903
    ld h, h
    ld [bc], a
    rra
    ld bc, $7902
    ld [bc], a
    rst $20
    ld l, $01
    inc b
    cpl
    dec b
    add c
    inc bc
    adc c
    dec b
    inc c
    dec b
    rst $38
    dec b
    sbc e
    ld a, c
    ld h, l
    ld [hl], h
    ld l, $01
    ld [bc], a
    rrca
    inc bc
    ld d, d
    ld [bc], a
    dec c
    ld l, $20
    ld b, a
    ld l, a
    inc bc
    or d
    ld l, b
    ld h, l
    ld [hl], d
    inc l
    inc bc
    jp z, $0121

    ld c, c
    jr nz, jr_020_78bf

    ld h, l
    ld l, [hl]
    ld [hl], e
    inc b
    sub a
    ld [bc], a
    ei
    jr nz, jr_020_785a

    ld a, [c]
    dec b
    ld d, l
    dec c
    inc a

jr_020_785a:
    nop
    inc c
    ld hl, $b103
    ld l, b
    inc b
    ld h, l
    ld [bc], a
    db $fc
    ld hl, $4800
    ld l, a
    ld [bc], a
    ld d, c
    dec b
    ld d, [hl]
    ld d, h
    ld [bc], a
    ld e, [hl]
    inc bc
    pop de
    ld b, h
    inc bc
    dec b
    jr nz, jr_020_787b

jr_020_7876:
    inc e
    ld [hl], e
    ld hl, $0300

jr_020_787b:
    ld e, b
    inc bc
    or b
    ld [bc], a
    or e
    ld bc, $e903
    ld [bc], a
    ld sp, $022c
    or h
    ld b, [hl]
    dec b
    or l
    ld [hl], e
    inc bc
    db $e3
    inc b
    ld [bc], a
    ld bc, $e903
    ld b, h
    ld [bc], a
    rra
    ld bc, $7203
    jr nz, @+$68

    ld l, h
    dec b
    db $e3
    dec b
    ld [hl], d
    dec b
    ld b, c
    inc bc
    adc d
    ld [hl], a
    ld h, l
    ld bc, $6163
    ld [hl], b
    ld [hl], h
    ld [hl], l
    ld [hl], d
    dec b
    sbc e
    ld [bc], a
    dec c
    inc l
    ld bc, $9403
    ld h, [hl]
    ld l, a
    inc b
    call Call_020_6801
    ld [hl], l
    ld l, l
    ld h, c
    ld l, [hl]

jr_020_78bf:
    ld [hl], e
    jr nz, jr_020_7929

    dec b
    ret nc

    jr nz, jr_020_793b

    ld [hl], e
    ld bc, $0364
    dec b
    inc bc
    and e
    dec b
    dec de
    ld b, [hl]
    dec b
    or l
    ld [hl], e
    ld bc, $7a05
    ld b, h
    inc bc
    dec b
    inc l
    ld bc, $0244
    rra
    ld [bc], a
    call c, $0204
    inc l
    jr nz, jr_020_78ea

    inc e
    ld bc, $6903
    ld [hl], h

jr_020_78ea:
    ld [bc], a
    ld d, h
    ld bc, $7a05
    inc b
    ld a, $05
    ld a, [c]
    ld bc, $0464
    sub b
    ld hl, $5900
    ld [bc], a
    ld a, [bc]
    ld bc, $b604
    ld hl, $0420
    or [hl]
    ld hl, $4601
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld [bc], a
    xor h
    ld l, h
    inc b
    dec h
    ld bc, $7902
    inc bc
    reti


    ld bc, $0566
    or l
    ld [hl], e
    ld hl, $4520
    ld l, l
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    ld bc, $6f6e
    ld [hl], a
    jr nz, @+$04

    and l

jr_020_7929:
    ld bc, $6164
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_020_7997

    ld h, l
    ld [hl], b
    ld [hl], h
    ld l, b
    ld [hl], e
    inc bc
    and e
    ld b, l

jr_020_793b:
    ld l, l
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    jr nz, jr_020_7944

    ld c, a
    inc l

jr_020_7944:
    ld bc, $6547
    ld [hl], d
    ld [hl], l
    ld h, h
    ld l, a
    jr nz, jr_020_7998

    inc b
    and [hl]
    ld hl, $0021
    inc c
    ld hl, $2049
    ld [bc], a
    add $61
    ld l, c
    ld h, h
    inc bc
    dec de
    nop
    inc c
    ld [hl+], a
    ld c, a
    ld l, b
    inc l
    inc bc
    dec a
    ld [bc], a
    cpl
    ld [bc], a
    dec [hl]
    inc l
    ld bc, $0264
    dec a
    inc bc
    ld h, a
    inc l
    jr nz, @+$04

    ccf
    ld bc, $1805
    ccf
    inc b
    ld [hl], c
    daa
    db $76
    ld h, l
    ld bc, $6562
    dec b
    and d
    ld l, [hl]
    jr nz, @+$04

    ld sp, $aa02
    ld [bc], a
    ld a, [$7020]
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], e
    ld bc, $f502
    inc b
    ld l, [hl]
    ld h, [hl]
    ld h, c

jr_020_7997:
    ld l, c

jr_020_7998:
    ld l, h
    ld h, l
    ld h, h
    inc bc
    and e
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    ld hl, $0301
    or c
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], d
    inc bc
    pop de
    inc bc
    sub h
    ld [bc], a
    ld c, e
    dec b
    add b
    inc bc
    jr nc, @+$07

    rst JumpTable
    inc bc
    db $ec
    ld hl, $0c00
    ld [hl+], a
    ld d, h
    ld [bc], a
    ld d, h
    inc bc
    pop de
    dec b
    sbc h
    inc bc
    dec h
    ld [hl], e
    jr nz, jr_020_7a3f

    dec b
    pop de
    dec b
    ld d, [hl]
    ld h, a
    ld [hl], l
    ld l, c
    ld h, h
    ld [bc], a
    ld [hl], h
    ld [hl], h
    ld l, a
    ld bc, $0102
    ld hl, $5901
    ld [bc], a
    ld e, d
    jr nz, @+$05

    add b
    ld bc, $0f02
    inc bc
    or d
    ld [hl], b
    ld [hl], d
    inc b
    ld b, b
    ld [hl], h
    dec b
    push de
    ld b, a
    ld h, c
    ld l, [hl]
    ld l, a
    ld l, [hl]
    inc bc
    or $05
    adc $61
    ld l, h
    inc bc
    and e
    dec b
    sbc l
    ld [bc], a
    add c
    ld [hl], e
    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld h, l
    ld h, h
    inc l
    jr nz, jr_020_7a10

    nop
    ld hl, $5901
    ld [bc], a
    ld e, d
    dec b
    ld d, l
    nop
    inc c

jr_020_7a10:
    ld hl, $614d
    ld a, c
    ld [bc], a
    xor h
    ld h, h
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, l
    ld bc, $c103
    ld l, c
    ld l, a
    ld l, [hl]
    inc bc
    pop de
    inc bc
    sub h
    ld d, h
    ld [hl], d
    ld l, c
    dec b
    daa
    inc b
    and h
    inc bc
    ld l, c
    dec b
    ld c, l
    inc b
    dec l
    ld l, [hl]
    ld h, a
    ld bc, $1a05
    ld [bc], a
    cpl
    ld [bc], a
    ld a, a
    ld bc, $7a05

jr_020_7a3f:
    ld c, [hl]
    inc bc
    ccf
    ld [bc], a
    call c, $a405
    dec b
    ret c

    nop
    inc bc
    ld [hl], h
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    inc bc
    push hl
    inc bc
    rst $38
    ld [bc], a
    adc b
    ld h, c
    ld bc, $026d
    cp c
    ld [bc], a
    adc c
    ld hl, $4800
    ld [bc], a
    ld a, [bc]
    ld bc, $000a
    dec b
    ld d, l
    nop
    ld c, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    inc bc
    or e
    inc l
    ld bc, $6f66
    inc b
    call Call_020_6905
    ld hl, $0201
    dec sp
    inc b
    ld h, e
    jr nz, jr_020_7a7f

    ld b, d
    inc l

jr_020_7a7f:
    ld bc, $9403
    inc bc
    ld [hl], l
    ld [bc], a
    add c
    dec b
    sbc a
    inc bc
    rst $38
    ld [bc], a
    sbc a
    ld h, h
    ld [bc], a
    rra
    inc l
    ld bc, $6f73
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    ld [bc], a
    call c, $0364
    dec b
    ld l, $20
    ld c, a
    ld [hl], l
    ld [hl], d
    ld bc, $0467
    add hl, bc
    jr nz, @+$04

    ld e, h
    ld bc, $6203
    dec b
    sbc a
    dec b
    jr nc, jr_020_7b15

    ld h, h
    inc l
    ld bc, $a105
    ld [bc], a
    xor h
    ld b, l
    db $76
    ld l, c
    ld l, h
    ld bc, $034b
    and [hl]
    dec b
    adc $65
    ld h, h
    inc b
    db $eb
    inc bc
    inc a
    ld [bc], a
    rst $20
    ld [bc], a
    add c
    inc b
    sbc b
    inc bc
    db $f4
    jr nz, @+$72

    dec b
    db $db
    inc l
    ld bc, $7361
    jr nz, @+$04

    ld d, [hl]
    ld bc, $9d04
    ld [hl], e
    jr nz, jr_020_7ae4

    ld d, l
    ld bc, $9403

jr_020_7ae4:
    inc b
    ld [$2e73], sp
    ld bc, $0245
    ld a, [bc]
    ld bc, $6f48
    ld [bc], a
    ld d, c
    nop
    inc c
    ld [hl+], a
    ld b, c
    ld l, h
    ld l, h
    ld [bc], a
    ld c, d
    inc b
    sub c
    ld l, [hl]
    dec b
    inc a
    ld hl, $4801
    ld l, a
    ld [bc], a
    ld d, c
    nop
    ld b, c
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld [hl], e
    ld l, b
    inc b
    cp [hl]
    ccf
    ld bc, $6557
    inc bc
    ld l, e
    ld [bc], a
    rrca

jr_020_7b15:
    inc l
    ld bc, $6547
    ld [hl], d
    ld [hl], l
    ld h, h
    ld l, a
    jr nz, @+$79

    ld l, c
    ld [hl], h
    dec b
    ld bc, $0121
    ld c, b
    ld l, a
    ld [bc], a
    ld d, c
    nop
    ld d, e
    ld l, a
    ld l, a
    ld l, [hl]
    jr nz, jr_020_7ba4

    ld [bc], a
    ld e, [hl]
    ld bc, $7a05
    ld b, h
    ld [bc], a
    rra
    ld bc, $c602
    dec b
    inc e
    inc l
    ld [bc], a
    call c, $8a03
    ld l, c
    ld [hl], h
    jr nz, jr_020_7b4b

    ld d, c
    inc l
    ld bc, $6f6e

jr_020_7b4b:
    inc b
    ld h, $03
    ld d, $05
    ld [$7501], sp
    ld [hl], e
    jr nz, jr_020_7b59

    ld b, d
    inc b
    ld [hl], b

jr_020_7b59:
    inc bc
    rst $00
    inc b
    ld a, $72
    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld hl, $4400
    ld h, l
    ld [hl], e
    ld [hl], b
    ld l, c
    ld [hl], h
    ld h, l
    ld [bc], a
    ld l, d
    inc b
    ld l, $79
    jr nz, jr_020_7bd7

    ld h, [hl]
    dec b
    sbc $74
    inc l
    ld bc, $9403
    ld [bc], a
    ld c, e
    ld bc, $6873
    dec b
    add c
    ld [bc], a
    ld e, b
    inc bc
    or d
    ld [hl], e
    ld [hl], b
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    jr nz, @+$04

    ld d, [hl]
    ld bc, $5504
    ld [bc], a
    xor h
    inc b
    ld [$0021], sp
    ld b, l
    ld [bc], a
    ld a, [bc]
    nop
    ld [bc], a
    dec hl
    ld h, c
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld l, h
    inc bc
    and e

jr_020_7ba4:
    add hl, bc
    inc bc
    ld d, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], d
    ld l, a
    db $76
    ld h, c
    add hl, bc
    inc b
    inc bc
    push hl
    ld h, d
    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_020_7bbf

    sbc b
    add hl, bc
    inc b
    inc bc
    and l

jr_020_7bbf:
    ld a, [bc]
    nop
    ld hl, $0221
    and $6d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_020_7bcf

    ld h, e
    dec b
    push de
    ld b, h

jr_020_7bcf:
    ld l, c
    ld l, [hl]
    add hl, bc
    inc b
    ld hl, $4500
    ld [bc], a

jr_020_7bd7:
    ld a, [bc]
    dec b
    ld d, [hl]
    ld b, h
    inc bc
    dec b
    inc l
    ld bc, $000a
    inc bc
    and l
    inc bc
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, a
    ld h, a
    ld l, h
    ld h, l
    ld [hl], e
    ld bc, $cf05
    inc bc
    rst $30
    inc b
    sbc h
    ld hl, $4401
    ld h, l
    ld h, e
    inc b
    xor [hl]
    ld [bc], a
    ld [hl], a
    ld hl, $5301
    ld [hl], h

Call_020_7c02:
    ld h, l
    ld h, c
    ld l, h
    ld [bc], a
    xor h
    ld h, [hl]
    ld [hl], d
    ld [hl], l
    ld l, c
    ld [hl], h
    ld [hl], e
    ld bc, $7902
    ld [hl], d
    ld h, c
    db $76
    ld h, c
    ld h, a
    dec b
    ld a, l
    inc b
    ld [$3b03], sp
    add hl, bc
    inc bc
    inc bc
    rrc c
    inc b
    inc bc
    and l
    ld d, d
    ld h, c
    ld a, d
    ld h, l
    ld [bc], a
    xor h
    dec b
    call c, $6874
    ld hl, $4f01
    ld l, b
    ld [bc], a
    ld d, c
    nop
    inc c
    inc hl
    ld c, b
    ld l, a
    ld [bc], a
    ld d, c
    ld bc, $b103
    inc b
    ld [$2073], sp
    ld [hl], d
    ld l, a
    ld [hl], h
    inc l
    ld bc, $e903
    ld [hl], h
    ld [bc], a
    ld e, [hl]
    inc bc
    pop de
    ld b, h
    ld [bc], a
    rra
    ld bc, $1c05
    ld [hl], e
    ld hl, $0c00
    inc hl
    ld d, h
    ld [bc], a
    ld e, [hl]
    inc bc
    dec sp
    inc b
    ld [bc], a
    ld [bc], a
    call c, $0244
    rra
    inc bc
    ld b, c
    ld l, h
    ld l, c
    ld [hl], h
    dec b
    ld e, [hl]
    ld [hl], a
    inc l
    jr nz, jr_020_7c73

    or l
    ld bc, $0274

jr_020_7c73:
    ld e, [hl]
    inc bc
    pop de
    ld b, h
    inc bc
    dec b
    jr nz, jr_020_7ced

    inc b
    rst $10
    ld hl, $4501
    ld [bc], a
    ld a, [bc]
    nop
    inc c
    inc hl
    ld c, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$04

    ld e, h
    ld bc, $6203
    dec b
    adc $65
    ld [bc], a
    or h
    ld [bc], a
    ld c, e
    ld [bc], a
    call c, Call_020_7567
    ld l, c
    ld h, h
    ld h, l
    dec b
    dec e
    ld [bc], a
    ld b, e
    ld l, h
    inc b
    dec h
    ld [bc], a
    cpl
    inc bc
    reti


    jr nz, jr_020_7d0f

    dec b
    or l
    ld [hl], e
    ld hl, $0c00
    inc hl
    ld c, a
    ld l, b
    ld [bc], a
    ld d, c
    nop
    ld [bc], a
    dec c
    dec b
    ld e, [hl]
    ld hl, $0f00
    dec c
    dec b
    ld d, [hl]
    ld [bc], a
    sub l
    dec b
    cpl
    ld bc, $9403
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld h, l
    ld hl, $4e01
    ld l, a
    ld [hl], h
    inc b
    dec b
    ld hl, $4c00
    ld h, l
    ld [hl], h
    jr nz, jr_020_7d41

    ld l, a
    inc bc
    db $e3
    dec b
    dec bc
    ld c, c
    jr nz, jr_020_7ce4

    xor b
    ld [hl], e

jr_020_7ce4:
    ld [hl], h
    dec b
    and c
    ld bc, $7962
    jr nz, jr_020_7cf0

    cp a

jr_020_7ced:
    ld [bc], a
    or h
    ld [bc], a

jr_020_7cf0:
    rst $20
    jr nz, jr_020_7cf8

    ld d, d
    ld bc, $9905
    ld h, [hl]

jr_020_7cf8:
    dec b
    call c, $d103
    ld h, h
    ld [bc], a
    rra
    ld hl, $0200
    ld sp, hl
    ld h, [hl]
    inc bc
    push de
    ld h, l
    ld l, [hl]
    inc bc
    and [hl]
    ld l, c
    ld [hl], h
    ld bc, $7369

jr_020_7d0f:
    inc l
    jr nz, jr_020_7d8b

    ld [bc], a
    ld e, d
    jr nz, jr_020_7d1b

    inc c
    dec b
    ld l, h
    inc bc
    add a

jr_020_7d1b:
    ld hl, $4820
    ld l, a
    ld [hl], b
    ld h, l
    ld bc, $7369
    ld [bc], a
    xor h
    inc b
    xor l
    inc bc
    add hl, sp
    ld bc, $0803
    dec b
    ld e, a
    ld l, h
    ld h, l
    ld h, c
    ld h, h
    ld bc, $7c05
    inc bc
    or b
    inc b
    adc e
    ld hl, $0c00
    ld hl, $684f
    ld [bc], a

jr_020_7d41:
    ld d, c
    dec b
    ld d, [hl]
    ld d, a
    dec b
    and c
    ld h, l
    inc bc
    ld a, $04
    ld c, c
    ccf
    ld bc, $6f46
    inc b
    call Call_020_5001
    inc bc
    inc h
    ld hl, $0c00
    ld hl, $0245
    ld a, [bc]
    ld bc, $6557
    daa
    db $76
    ld h, l
    ld [bc], a
    ld a, b
    dec b
    ld c, l
    ld bc, $0102
    ld hl, $0c00
    ld hl, $6f48
    ld [hl], b
    ld h, l
    ld [bc], a
    and c
    ld bc, $e702
    ccf
    ld bc, $0357
    and d
    ld [hl], e
    ld l, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    inc b
    ld h, h
    dec b
    pop hl
    ld hl, $0c00
    ld hl, $6e41

jr_020_7d8b:
    ld h, h
    inc b
    dec l
    ld [bc], a
    add l
    ld l, h
    inc bc
    add e
    ld [hl], h
    ld [bc], a
    ld e, [hl]
    ld bc, $7a05
    ld b, h
    inc bc
    dec b
    ld hl, $4501
    ld [bc], a
    ld a, [bc]
    nop
    ld b, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    ld l, b
    ld l, b
    ld hl, $0300
    or c
    ld [bc], a
    ld e, h
    inc bc
    push hl
    dec b
    sbc c
    inc b
    ld a, $67
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], b
    dec b
    ld d, l
    nop
    dec b
    ld c, [hl]
    jr nz, jr_020_7dc5

    dec c
    inc l

jr_020_7dc5:
    ld [bc], a
    or h
    ld l, b
    ld l, a
    ld [hl], b
    ld h, l
    ld [bc], a
    cpl
    ld [bc], a
    rst $20
    inc l
    jr nz, @+$78

    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld [hl], e
    ld bc, $4203
    inc bc
    ld c, a
    ld [bc], a
    or d
    inc l
    ld [bc], a
    adc d
    inc b
    ld [$4a02], sp
    ld [hl], e
    ld [hl], h
    ld [hl], d
    dec b
    db $e3
    ld h, l
    ld l, [hl]
    ld [bc], a
    sbc a
    ld h, h
    inc bc
    dec b
    ld l, $00
    inc c
    inc hl
    ld c, c
    ld [hl], h
    dec b
    rst JumpTable
    inc bc
    ld a, [bc]
    ld hl, $5401
    ld [bc], a
    ld e, [hl]
    inc bc
    dec sp
    inc b
    ld [bc], a
    ld [bc], a
    call c, $0244
    rra
    ld bc, $a105
    ld [bc], a
    xor h
    ld h, a
    inc b
    add hl, bc
    ld bc, $5c02
    inc bc
    ld b, c
    ld [hl], l
    ld l, [hl]
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    ld hl, $0c00
    inc hl
    ld c, c
    ld h, [hl]
    inc b
    and l
    ld [bc], a
    ld e, h
    ld bc, $0d02
    inc l
    inc b
    xor a
    ld [bc], a
    add c
    inc b
    sbc l
    inc bc
    sub l
    jr nz, jr_020_7e37

    ld h, h

jr_020_7e37:
    inc bc
    dec b
    ld [bc], a
    db $76
    ld c, b
    ld l, a
    ld [bc], a
    ld d, c
    nop
    inc c
    inc hl
    ld b, c
    ld l, h
    inc b
    dec h
    inc l
    jr nz, @+$48

    dec b
    or l
    ld bc, $7a05
    ld b, h
    inc bc
    dec b
    ld hl, $4101
    ld [hl], a
    dec b
    db $e4
    ld l, [hl]
    inc l
    jr nz, jr_020_7e5d

    ld c, a
    inc l

jr_020_7e5d:
    ld bc, $4b02
    ld hl, $4501
    ld [bc], a
    ld a, [bc]
    nop
    ld d, h
    ld [bc], a
    ld d, h
    inc bc
    pop de
    ld [bc], a
    ld d, [hl]
    jr nz, jr_020_7ee6

    inc bc
    or a
    ld l, h
    ld h, l
    ld [hl], h
    ld [bc], a
    push de
    ld h, a
    ld l, a
    inc b
    or b
    ld bc, $7566
    ld [hl], d
    inc b
    daa
    ld hl, $0c00
    ld [hl+], a
    inc bc
    or c
    ld h, d
    ld l, a
    ld a, c
    jr nz, jr_020_7e90

    ld b, e
    ld [hl], e
    ld hl, $4901

jr_020_7e90:
    inc l
    jr nz, @+$04

    ld sp, $202c
    inc bc
    ld l, a
    ld bc, $7a05
    ld [bc], a
    adc $2c
    ld bc, $6d69
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    dec b
    sbc e
    ld [bc], a
    ld b, d
    ld bc, $e903
    ld h, e
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$04

    ld [hl], a
    ld bc, $3e05
    inc b
    ld h, b
    ld l, $04
    ld [hl], c
    ld bc, $6c66
    ld l, c
    ld [hl], h
    jr nz, jr_020_7ec7

    db $10
    dec b
    add hl, de

jr_020_7ec7:
    inc b
    ld e, $61
    jr nz, @+$68

    ld l, h
    ld a, c
    inc bc
    and e
    inc bc
    add hl, bc
    ld h, e
    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld l, b
    inc bc
    dec de
    nop
    inc c
    ld [hl+], a
    ld d, l
    ld l, b
    ld l, b
    ld l, [hl]
    ld l, [hl]
    ld [bc], a
    db $76
    ld [bc], a
    sub l
    inc b

jr_020_7ee6:
    or d
    ld l, e
    inc b
    inc bc
    inc bc
    add [hl]
    ld h, d
    ld h, l
    dec b
    and d
    ld l, [hl]
    ld hl, $0201
    ld [hl], d
    dec b
    ld [$7204], sp
    inc bc
    ld a, [hl-]
    ld h, [hl]
    inc b
    dec h
    ccf
    nop
    ld b, a
    ld [hl], a
    ld h, c
    ld l, b
    jr nz, jr_020_7f6e

    ld h, c
    ld l, b
    jr nz, @+$6a

    ld h, c
    ld l, b
    ld hl, $4901
    inc bc
    ld l, h
    ld [hl], e
    ld [hl], l
    ld l, l
    ld l, l
    ld l, a
    ld l, [hl]
    dec b
    ld a, l
    ld [bc], a
    and l
    jr nz, jr_020_7f61

    ld h, c
    ld [hl], d
    ld l, e
    ld bc, $6552
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_020_7f8a

    ld a, c
    ld bc, $0f02
    ld l, $01
    ld d, e
    ld h, l
    ld h, l
    jr nz, @+$6f

    ld a, c
    inc bc
    db $f4
    ld bc, $de05
    ld l, l
    ld hl, $4620
    ld h, l
    ld h, l
    ld l, h
    ld [bc], a
    or h
    ld l, l
    inc bc
    add e
    dec b
    ld a, d
    ld h, c
    ld bc, $6164
    ld [hl], d
    ld l, e
    jr nz, jr_020_7fb3

    dec b
    ret nz

    ld hl, $4700
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld h, a
    inc bc
    cp c
    ld c, [hl]
    ld l, a
    inc bc
    and l
    ld [bc], a
    db $ec

jr_020_7f61:
    ld [hl], h
    ld l, a
    ld l, a
    dec b
    add hl, sp
    ld l, $01
    ld c, l
    ld a, c
    jr nz, jr_020_7f70

    ld c, l
    ld [hl], e

jr_020_7f6e:
    inc bc
    sbc a

jr_020_7f70:
    ld bc, $7905
    ld h, e
    ld h, c
    ld [hl], b
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_020_7fc0

    ld l, c
    ld l, [hl]
    ld bc, $e903
    ld h, h
    ld h, l
    dec b
    ld d, d
    ld [hl], d
    ld [bc], a
    or h
    ld h, h
    ld h, l

jr_020_7f8a:
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    ld bc, $1803
    inc bc
    db $e3
    ld h, c
    ld bc, $0373
    call nc, $9c04
    jr nz, jr_020_7fa5

    ld [$0501], sp
    ld a, c

jr_020_7fa5:
    ld [bc], a
    rrca
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, @+$63

    ld [hl], e
    ld [bc], a
    or h
    ld b, [hl]

jr_020_7fb3:
    ld l, h
    ld h, c
    ld l, l
    inc bc
    ld l, d
    ld b, h
    ld [bc], a
    rra
    inc l
    ld bc, $e504
    ld [bc], a

jr_020_7fc0:
    adc c
    inc bc
    push hl
    ld [hl], e
    ld h, l
    ld [hl], h
    inc bc
    or b
    ld h, h
    ld h, l
    db $76
    inc b
    ld h, l
    inc bc
    ld a, [hl-]
    inc b
    ld [$a303], sp
    ld b, a
    inc bc
    ld b, [hl]
    dec b
    ld d, l
    nop
    inc c
    ld [hl+], a
    ld [bc], a
    db $ec
    ld [hl], h
    ld l, a
    ld l, a
    dec b
    add hl, sp
    inc l
    ld bc, $000a
    inc bc
    and h
    ld [bc], a
    dec c
    dec l
    dec l
    inc b
    ld h, l
    ld [bc], a
    ld e, h
    dec l
    dec l
    ld l, c
    ld [hl], e
    inc bc
    and $04
    ld a, $67
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], b
    ld l, $20
    ld d, e

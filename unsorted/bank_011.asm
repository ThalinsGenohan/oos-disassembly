; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $011", ROMX

    ld a, [c]
    ld de, $7801
    ld e, b
    ld de, $7811
    ld e, b
    ld de, $7821
    ld e, b
    ld de, $7831
    ld e, b
    ld de, $7841
    ld e, b
    ld de, $7851
    ld e, b
    ld de, $7861
    ld e, b
    ld de, $7871
    ld e, b
    rst $38
    ld a, [c]
    ld b, h
    nop
    ld b, d
    ld a, b
    pop af
    or b
    ld [$09b0], sp
    or b
    ld a, [bc]
    rst $38
    pop af
    or b
    dec bc
    or b
    inc c
    or b
    dec c
    rst $38
    or $24
    ld [hl-], a
    nop
    cp $f2
    rst $00
    inc b
    rrca
    inc d
    cp $f2
    rst $00
    inc b
    rrca
    dec d
    cp $f2
    rst $00
    inc b
    rrca
    add hl, de
    cp $f2
    rst $00
    cp h
    cpl
    db $10
    cp $f2
    rst $00
    and b
    ld b, $10
    cp $f2
    rst $00
    ld [$1006], sp
    cp $f7
    inc bc
    ld e, c
    rlca
    jr z, jr_011_40de

    ld e, c
    ld [$4858], sp
    ld e, c
    add hl, bc
    ld e, b
    xor b
    ld hl, sp+$28
    nop
    ld b, [hl]
    jr z, jr_011_4074

jr_011_4074:
    ld h, a
    cp $f7
    inc bc
    ld e, c
    dec b
    ld e, b
    ld c, b
    ld e, c
    ld b, $58
    xor b
    ld hl, sp+$28
    nop
    ld b, [hl]
    jr z, jr_011_4086

jr_011_4086:
    ld h, a
    cp $f6
    ld h, h
    scf
    nop
    cp $f6
    jr nz, jr_011_40c6

    nop
    cp $f6
    add b
    ld [hl], $00
    cp $f6
    ld h, b
    ld [hl], $00
    or $20
    inc sp
    nop
    cp $f8
    jr z, jr_011_40a3

jr_011_40a3:
    ld b, e
    jr z, jr_011_40a6

jr_011_40a6:
    ld d, [hl]
    cp $f9
    ld bc, $0127
    nop

jr_011_40ad:
    jr @+$3a

    cp $f7
    ld [bc], a
    ld e, c
    dec b
    ld a, b
    adc b
    cp $f7
    nop
    jr c, jr_011_40bb

jr_011_40bb:
    ld c, b
    ld a, b
    cp $f7
    ld [bc], a
    ld e, c
    nop
    ld e, b

jr_011_40c3:
    jr c, jr_011_40c3

    rst $30

jr_011_40c6:
    nop
    dec de
    ld bc, $c828
    inc [hl]
    nop
    ld a, b
    sbc b
    inc [hl]
    nop
    adc b
    sbc b
    or $44
    ld [hl-], a
    nop

jr_011_40d7:
    cp $f7
    nop
    dec de
    ld bc, $a818

jr_011_40de:
    inc [hl]
    nop
    ld e, b
    ld l, b
    inc [hl]
    nop
    ld e, b
    xor b
    cp $f7
    nop
    dec de
    ld bc, $d878
    inc [hl]
    nop
    ld e, b
    ld c, b
    inc [hl]
    nop
    ld e, b
    ld l, b
    cp $f6
    add b
    ld [hl-], a
    nop
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    rst $30
    nop
    ld a, [hl-]
    nop
    jr z, jr_011_40ad

    ld a, [hl-]
    nop
    ld l, b
    ret z

    inc [hl]
    nop

jr_011_410b:
    ld c, b
    ld e, b
    inc [hl]
    nop
    ld l, b

jr_011_4110:
    jr z, jr_011_4110

    or $44
    ld [hl-], a
    nop
    or $40
    inc [hl]
    nop
    cp $f8
    dec h
    ld [bc], a
    inc h
    dec h
    ld [bc], a
    ld h, $25
    ld [bc], a

jr_011_4124:
    jr z, jr_011_4124

    rst $30
    nop
    inc [hl]
    ld bc, $7818
    inc [hl]
    ld bc, $d888
    inc [hl]
    nop
    ld e, b
    ld e, b
    inc [hl]
    nop
    ld e, b
    ld l, b
    cp $f7
    nop
    inc [hl]
    nop
    jr jr_011_40d7

    inc [hl]
    nop
    jr c, jr_011_410b

    ld [hl-], a
    nop
    ld c, b
    ld l, b
    ld [hl-], a
    nop
    ld c, b
    adc b
    ld [hl-], a
    nop
    ld c, b
    xor b
    ld [hl-], a
    nop
    ld l, b
    ld l, b
    ld [hl-], a
    nop
    ld l, b
    adc b
    ld [hl-], a
    nop
    ld l, b
    xor b
    cp $f7
    nop
    dec de
    ld bc, $7878

jr_011_4162:
    ld c, a
    nop
    sbc b
    ld e, b
    or $40
    inc [hl]
    nop
    cp $f7
    nop
    dec de
    ld bc, $9838
    dec de
    ld bc, $d878
    rst $30
    ld [bc], a
    ld e, c
    nop
    ld e, b

jr_011_417a:
    jr c, jr_011_417a

    or $40
    inc [hl]
    nop
    cp $f6
    add b
    inc h
    nop
    cp $f2
    adc $03
    ld c, b
    ld a, b
    cp $f7
    nop
    dec h
    nop
    ld l, b
    sbc b
    dec h
    nop
    ld a, b
    ld c, b
    dec h
    nop
    adc b

jr_011_4199:
    jr z, jr_011_4199

    rst $30
    nop
    dec h
    nop
    ld l, b
    ld c, b
    dec h
    nop
    ld a, b
    adc b
    dec h
    nop
    ld e, b
    cp b
    cp $f7
    nop
    dec de
    ld bc, $6838
    dec de
    ld bc, $7878
    cp $f6
    ld h, b
    inc [hl]
    nop
    cp $f8
    jr z, jr_011_41bd

jr_011_41bd:
    ld [hl], $28
    nop
    jr c, @+$2a

    nop
    ld d, [hl]
    jr z, jr_011_41c6

jr_011_41c6:
    ld e, b
    cp $f8
    inc de
    dec e
    ld c, b
    cp $f9
    ld bc, $002c
    ld b, b
    ld c, b
    ld e, b
    ld bc, $012c
    ld b, b
    jr c, jr_011_4162

    ld bc, $012c
    ld b, b
    jr @-$56

    cp $f9
    ld bc, $002c
    add b
    ld l, b
    ret c

    ld bc, $002c
    jr nc, jr_011_421d

    ld e, b
    cp $f9
    ld bc, $002c
    ld d, b
    ld e, b
    xor b
    ld bc, $002c
    jr nc, jr_011_4263

    ld e, b
    ld bc, $012c
    jr nz, jr_011_4235

    call nz, $f9fe
    ld bc, $012c
    jr nc, @+$2a

    jr nc, jr_011_420c

    inc l

jr_011_420c:
    nop
    ld b, b
    ld l, b
    ld a, b
    ld bc, $002c
    ld b, b
    ld e, b
    sbc b
    cp $f9
    ld bc, $012c
    ld d, b
    ld c, b

jr_011_421d:
    xor b

jr_011_421e:
    ld bc, $002c
    ld h, b
    jr c, @-$66

    ld bc, $002c
    ld b, b
    jr z, @+$7a

    ld bc, $012c
    ld h, b
    jr c, @-$26

    ld bc, $002c

jr_011_4233:
    jr nz, @+$6a

jr_011_4235:
    ld c, b
    ld bc, $002c
    ld b, b
    ld a, b
    ld e, b
    cp $f9
    ld bc, $012c
    ld b, b
    ld c, b
    ld e, b
    ld bc, $012c
    ld d, b
    jr c, @+$6a

    ld bc, $012c
    jr nc, jr_011_42b7

    or b
    ld bc, $002c
    ld b, b
    jr c, jr_011_421e

    ld bc, $002c
    jr nc, jr_011_42a3

    ret c

    cp $f6
    ld b, b
    ld c, d
    nop
    cp $f7

jr_011_4263:
    nop
    rlca
    nop
    jr nz, @+$52

    cp $f6
    ld b, b
    dec c
    ld bc, $f6fe
    ld b, b
    jr nc, jr_011_4272

jr_011_4272:
    or $24
    dec bc
    ld bc, $f7fe
    nop
    dec bc
    ld bc, $6818
    cp $f0
    ld [bc], a
    or $40
    inc h
    nop
    ldh a, [rDIV]
    rst $30
    nop
    dec h
    nop
    jr c, jr_011_42c4

    dec h
    nop
    ld c, b
    ld l, b
    dec h
    nop
    ld e, b
    ld a, b
    dec h
    nop
    jr jr_011_42e0

    ld a, [hl-]
    nop
    ld c, b
    ld e, b
    cp $f0
    ld [bc], a
    or $60
    jr jr_011_42a3

jr_011_42a3:
    ldh a, [rDIV]
    rst $30
    nop
    dec h
    nop
    jr z, jr_011_4233

    dec h
    nop
    ld e, b
    jr z, jr_011_42d5

    nop
    jr c, jr_011_42fb

    dec h
    nop
    ld c, b
    ld e, b

jr_011_42b7:
    ldh a, [$08]
    or $40
    dec bc
    ld bc, $20f6
    jr nc, @+$03

    cp $f0
    ld [bc], a

jr_011_42c4:
    or $60
    jr jr_011_42c8

jr_011_42c8:
    or $20
    inc h
    nop
    ldh a, [rDIV]
    rst $30
    nop
    ld a, [hl-]
    nop
    ld c, b
    ld e, b
    ld a, [hl-]

jr_011_42d5:
    nop
    ld e, b
    ld l, b
    ldh a, [$08]
    or $40
    dec bc
    ld bc, $f0fe

jr_011_42e0:
    ld [bc], a
    or $60
    jr jr_011_42e5

jr_011_42e5:
    ldh a, [rDIV]
    rst $30
    nop
    dec h
    nop
    jr c, jr_011_4365

    dec h
    nop
    ld e, b
    ld c, b
    dec h
    nop
    jr jr_011_431d

    ld a, [hl-]
    nop
    ld c, b
    ld c, b
    ldh a, [$08]

jr_011_42fb:
    or $60
    dec bc
    ld bc, $f0fe
    ld [bc], a
    or $40
    inc h
    nop
    ldh a, [rDIV]
    rst $30

jr_011_4309:
    nop
    dec h
    nop
    ld e, b
    ld e, b
    dec h
    nop
    ld c, b
    ld c, b
    dec h
    nop
    jr c, jr_011_438e

    dec h
    nop
    ld e, b
    jr c, @+$3c

    nop
    ld c, b

jr_011_431d:
    jr c, @+$3c

    nop
    ld e, b
    ld l, b
    ldh a, [$08]
    or $60
    dec bc
    ld bc, $20f6

jr_011_432a:
    jr nc, jr_011_432c

jr_011_432c:
    cp $f0
    ld [bc], a
    rst $30
    nop
    inc h
    nop
    ld c, b
    ld l, b
    inc h

jr_011_4336:
    nop
    ld e, b
    ld l, b
    ldh a, [rDIV]
    rst $30
    nop
    ld a, [hl-]
    nop
    jr z, @+$7a

    ld a, [hl-]
    nop
    ld c, b
    jr c, jr_011_4336

    ld [$00f7], sp
    jr nc, jr_011_434b

jr_011_434b:
    ld c, b
    ld l, b
    jr nc, jr_011_434f

jr_011_434f:
    ld e, b
    ld l, b
    cp $f0
    ld [bc], a
    or $40
    jr jr_011_4358

jr_011_4358:
    or $20
    inc h
    nop
    ldh a, [rDIV]
    rst $30
    nop
    dec h
    nop
    jr @-$76

    ld a, [hl-]

jr_011_4365:
    nop
    jr z, @+$4a

    ld a, [hl-]
    nop
    ld c, b
    ld a, b
    ldh a, [$08]
    or $60
    dec bc

Call_011_4371:
    ld bc, $f0fe
    ld [bc], a
    or $20
    jr jr_011_4379

jr_011_4379:
    ldh a, [rDIV]
    rst $30
    nop
    dec h
    nop
    jr jr_011_4309

    ld a, [hl-]
    nop
    jr c, @+$4a

    ld a, [hl-]
    nop
    ld e, b

jr_011_4388:
    jr z, jr_011_4388

    ldh a, [rDIV]
    rst $30
    nop

jr_011_438e:
    dec h
    nop
    jr z, @+$6a

    dec h
    nop
    jr c, jr_011_440e

    dec h
    nop
    ld c, b
    ld c, b
    ld a, [hl-]
    nop
    jr c, @+$7a

    ld a, [hl-]
    nop
    jr c, jr_011_432a

    ldh a, [$08]
    or $40
    dec bc
    ld bc, $f0fe
    ld [bc], a
    or $60
    jr jr_011_43af

jr_011_43af:
    ldh a, [$08]
    or $40
    dec bc
    ld bc, $f0fe
    ld [bc], a
    or $60
    jr jr_011_43bc

jr_011_43bc:
    cp $f0
    ld [bc], a
    or $60
    inc h
    nop
    ldh a, [$08]
    or $40
    dec bc
    ld bc, $f0fe
    ld [bc], a
    or $20
    inc h
    nop
    ldh a, [$08]
    or $60
    dec bc
    ld bc, $40f6
    jr nc, @+$03

    cp $f0
    ld [bc], a
    or $80
    jr jr_011_43e1

jr_011_43e1:
    ldh a, [$08]
    or $60
    dec bc
    ld bc, $40f6
    jr nc, @+$03

    cp $f6
    ld h, b
    add hl, bc
    ld bc, $f7fe
    nop
    add hl, bc
    nop
    ld c, b
    ld l, b
    or $24
    ld [$fe00], sp
    or $40
    add hl, bc
    ld bc, $f6fe
    jr nz, jr_011_440d

    ld bc, $f7fe
    nop
    add hl, bc
    nop
    jr c, jr_011_4444

    add hl, bc

jr_011_440d:
    nop

jr_011_440e:
    jr @+$5a

    cp $f6
    ld b, b
    add hl, bc
    nop
    ldh a, [rSB]
    or $20
    ld c, b
    ld [bc], a
    cp $f6
    ld b, b
    ld a, [de]
    nop
    cp $f6
    ld b, b
    inc c
    nop
    or $20
    inc h
    nop
    cp $f6
    ld b, b
    inc c
    nop
    cp $f7
    nop
    jr c, jr_011_4433

jr_011_4433:
    jr c, @+$52

    cp $f6
    jr nz, @+$0e

    nop
    or $44
    ld a, $00   ; xor a
    cp $f7
    ld [bc], a
    ld e, c
    dec b
    ld c, b

jr_011_4444:
    jr c, jr_011_449f

    dec b
    ld c, b
    ld e, b
    ldh a, [rDIV]
    rst $30
    nop
    inc c
    ld [bc], a
    ld e, b
    ld c, b
    cp $f7
    nop
    inc c
    nop
    ld e, b
    ld e, b
    rst $30
    ld [bc], a
    ld e, c
    ld bc, $3818
    ld e, c
    ld bc, $3828
    cp $f6
    ld h, b
    inc c
    nop
    cp $f6
    jr nz, jr_011_4474

    inc bc
    or $20
    inc c
    nop
    cp $f7
    nop
    inc c

jr_011_4474:
    nop
    jr c, jr_011_44af

    cp $f6
    jr nz, jr_011_4486

    nop
    or $20
    dec bc
    ld bc, $f8fe
    inc de
    inc d
    ld [hl], $fe

jr_011_4486:
    or $20
    inc c
    nop
    or $20
    inc c
    ld bc, $f6fe
    ld b, b
    add hl, bc
    nop
    or $20
    add hl, bc
    inc bc
    cp $f6
    ld b, b
    jr nz, jr_011_449c

jr_011_449c:
    cp $f6
    ld b, b

jr_011_449f:
    inc c
    nop
    cp $f6
    ld b, b
    add hl, bc
    nop
    cp $f7
    nop
    inc h
    nop
    jr z, @+$4a

    inc h
    nop

jr_011_44af:
    jr c, @+$4a

    inc h
    nop
    ld c, b
    ld l, b
    inc h
    nop
    ld c, b
    ld a, b
    cp $f6
    jr nz, jr_011_44dd

    nop
    or $44
    ld a, $00   ; xor a
    cp $f6
    jr nz, jr_011_44e6

    nop
    or $20
    add hl, bc
    nop
    or $20
    add hl, bc
    inc bc
    cp $f7
    nop
    ld c, d
    ld bc, $5858
    cp $f7
    nop
    add hl, bc
    nop
    jr c, @+$4a

jr_011_44dd:
    add hl, bc
    nop
    ld e, b
    ld l, b
    cp $f7
    nop
    jr nz, jr_011_44e6

jr_011_44e6:
    ld e, b
    ld e, b
    jr nz, jr_011_44eb

    ld c, b

jr_011_44eb:
    ld e, b
    cp $f7
    ld [bc], a
    ld e, c
    ld bc, $4868
    ld e, c
    ld bc, $5868

jr_011_44f7:
    ld e, c
    ld bc, $6868
    cp $f7
    nop
    dec de
    inc bc
    jr c, @+$2a

    cp $fe
    or $40
    ld a, $01
    cp $fe
    rst $30
    nop
    dec de
    nop
    ld e, b
    jr c, @-$08

    ld b, b
    ld a, $00   ; xor a
    cp $fe
    rst $30
    nop
    ld c, h
    nop
    jr z, jr_011_457c

    ld c, h
    nop
    ld l, b
    db $10
    cp $fe
    or $44
    ld [$fe00], sp
    or $40
    jr jr_011_452b

jr_011_452b:
    or $40

jr_011_452d:
    add hl, bc
    ld bc, $f6fe
    ld b, b
    scf
    nop
    cp $f2
    adc $00
    jr @+$7a

    rst $30
    nop
    dec de
    nop
    ld l, b
    jr c, @-$08

    ld b, b
    jr nc, jr_011_4544

jr_011_4544:
    cp $f7
    nop
    dec de
    inc bc
    jr z, @+$1a

    or $40
    jr nc, jr_011_454f

jr_011_454f:
    cp $f7
    nop
    cp $f6
    inc h
    ld [$f600], sp
    jr nz, @+$1a

    nop
    rst $30
    ld [bc], a
    ld e, c
    nop
    ld c, b

jr_011_4560:
    jr c, jr_011_4560

    or $40
    ld a, $00   ; xor a
    cp $f0
    ld [bc], a
    rst $30
    nop
    dec h
    nop
    jr jr_011_44f7

    dec h
    nop
    jr c, jr_011_45cb

    dec h
    nop
    jr c, @+$7a

    ldh a, [rTAC]
    rst $30
    nop
    dec h

jr_011_457c:
    nop
    ld e, b
    ld e, b
    ld a, [hl-]
    nop
    ld c, b
    ld l, b
    ld a, [hl-]
    nop
    ld c, b
    ld a, b
    cp $f6
    jr nz, jr_011_4594

    ld [bc], a
    or $40
    jr jr_011_4590

jr_011_4590:
    cp $f0
    dec b
    rst $30

jr_011_4594:
    nop
    ld a, [hl-]
    nop
    jr c, jr_011_45f1

    ld a, [hl-]
    nop
    jr c, jr_011_4605

    ldh a, [rSC]
    rst $30
    nop
    dec h
    nop
    jr jr_011_452d

    dec h
    nop
    jr z, jr_011_4601

    ldh a, [rTAC]
    rst $30
    nop
    dec h
    nop
    jr jr_011_4609

    cp $f0
    ld [bc], a
    rst $30
    nop
    dec h
    nop
    jr z, jr_011_4602

    dec h
    nop
    ld l, b
    ld e, b
    ldh a, [rTAC]
    rst $30
    nop
    dec h
    nop
    jr c, jr_011_460e

    dec h
    nop
    ld c, b
    ld e, b
    ld a, [hl-]

jr_011_45cb:
    nop
    jr z, jr_011_4626

    ld a, [hl-]
    nop
    jr c, jr_011_460a

    ld a, [hl-]
    nop
    ld e, b
    ld c, b
    ld a, [hl-]
    nop
    ld e, b
    ld a, b
    ldh a, [$08]
    or $60
    add hl, bc
    ld [bc], a
    cp $f7
    nop
    ld a, [hl-]
    nop
    jr z, @+$5a

    ld a, [hl-]
    nop
    jr c, @+$3a

    or $24
    ld [$fe00], sp
    rst $30

jr_011_45f1:
    nop
    ld a, [hl-]
    nop
    jr c, @+$4a

    ld a, [hl-]
    nop
    ld c, b
    ld c, b
    ld a, [hl-]
    nop
    ld c, b
    ld e, b
    cp $f7
    nop

jr_011_4601:
    ld b, l

jr_011_4602:
    nop
    ld l, b
    ld l, b

jr_011_4605:
    ldh a, [rSC]
    or $20

jr_011_4609:
    add hl, bc

jr_011_460a:
    inc b
    cp $f7
    nop

jr_011_460e:
    ld b, l
    nop
    ld e, b
    ld a, b
    ld b, l
    nop
    ld l, b
    ld e, b
    cp $f7
    nop
    ld b, l
    nop
    ld c, b

jr_011_461c:
    jr z, jr_011_461c

    ldh a, [rTAC]
    or $40
    jr nz, jr_011_4624

jr_011_4624:
    or $20

jr_011_4626:
    inc h
    nop
    ldh a, [$08]
    or $20
    ld c, d
    nop
    cp $f6
    jr nz, jr_011_467c

    nop
    ldh a, [rTAC]
    or $40
    inc h
    nop
    cp $f7
    ld [bc], a
    ld e, c
    ld bc, $7858
    ld e, c
    ld bc, $8858
    ld e, c
    ld bc, $8868
    cp $f6
    inc h
    ld b, c
    ld bc, $04f0
    or $24
    ld b, c
    ld bc, $f9fe
    ld bc, $0027
    inc b
    jr z, jr_011_46b3

    rst $30
    nop
    jr nc, jr_011_465f

jr_011_465f:
    ld e, b
    ld c, b
    cp $f9
    ld bc, $0027
    inc bc
    jr z, jr_011_46b1

    cp $f0
    rlca
    or $20
    jr nc, jr_011_4670

jr_011_4670:
    cp $f0
    rlca
    rst $30
    nop
    ld [$6800], sp

jr_011_4678:
    jr z, jr_011_4678

    ldh a, [rTAC]

jr_011_467c:
    rst $30
    nop
    ld e, $00
    jr z, jr_011_46aa

    ld e, $00
    ld c, b
    ld l, b
    ld e, $00
    jr c, jr_011_46d2

    cp $f7
    nop
    dec e
    nop
    sbc h
    inc b
    cp $f7
    nop
    ld e, c
    ld bc, $3818
    ld e, c
    ld bc, $5818
    ld e, c
    ld bc, $3838
    ld e, c
    ld bc, $5838
    ldh a, [rTAC]
    or $60
    jr jr_011_46aa

jr_011_46aa:
    cp $f6
    jr nz, @+$4c

    nop
    or $20

jr_011_46b1:
    dec bc
    nop

jr_011_46b3:
    or $20
    dec bc
    ld bc, $f0fe
    dec b
    or $40

jr_011_46bc:
    ld [$fe00], sp
    ldh a, [rTIMA]
    or $20
    ld [$f700], sp
    nop
    ld e, $00
    ld l, b
    jr c, jr_011_46bc

    ld [$00f7], sp
    ld e, $00
    ld l, b

jr_011_46d2:
    ld c, b
    cp $f7
    nop
    ld e, c
    ld bc, $2838
    ld e, c
    ld bc, $3838
    ld e, c
    ld bc, $2868
    ld e, c
    ld bc, $3868
    cp $f6
    jr nz, jr_011_4735

    nop
    cp $f6
    ld h, b
    ld hl, $fe01
    rst $30
    nop
    dec e
    nop
    sbc h
    inc b
    cp $f6
    ld b, b
    ld hl, $f600
    ld b, b
    inc h
    nop
    cp $f6
    ld b, b
    ld c, b
    nop
    cp $f6
    ld h, b
    inc h
    nop
    cp $f6
    ld h, b
    add hl, bc
    ld bc, $f6fe
    daa
    inc h
    ld bc, $f0fe
    ld bc, $00f7
    ld b, l
    nop
    jr z, @+$3a

    ld b, l
    nop
    ld e, b
    ld l, b
    ld b, l
    nop
    jr c, @+$5a

    cp $f0
    rlca
    rst $30
    ld bc, $0048
    jr c, jr_011_4746

    ld c, b
    nop
    jr z, jr_011_477a

    ldh a, [$08]
    rst $30

jr_011_4735:
    nop
    dec c
    ld [bc], a
    jr c, @+$5a

    cp $f6
    daa
    inc h
    ld bc, $c3f6
    inc h
    nop
    cp $f6
    daa

jr_011_4746:
    inc h
    ld bc, $f6fe
    ld hl, $020b
    or $20
    ld de, $fe00
    or $20
    ld de, $f600
    ld b, c
    dec bc
    ld [bc], a
    cp $f7
    nop
    ld e, c
    ld bc, $7828
    ld e, c
    ld bc, $7838
    ld e, c
    ld bc, $8838
    ld e, c
    ld bc, $8848
    rst $30
    nop
    rla
    nop
    jr c, @+$5a

    cp $f6
    jr nz, @+$13

    nop
    or $41

jr_011_477a:
    dec bc
    ld [bc], a
    cp $f7
    nop
    ld de, $2800

jr_011_4782:
    jr z, jr_011_4782

    rst $30
    nop
    ld de, $2800

jr_011_4789:
    jr jr_011_4789

    or $20
    dec c
    ld bc, $fefe
    or $20
    dec c
    nop
    or $20
    dec c
    ld bc, $f7fe
    nop
    dec c
    nop
    ld c, b
    ld c, b
    dec c
    ld bc, $7848
    cp $f6
    ld h, b
    jr nc, @+$03

    cp $f7
    nop
    ld c, b
    nop
    jr c, @+$3a

    ld c, b
    ld bc, $4848
    or $64
    ld b, c
    ld bc, $f6fe
    ld h, h
    ld b, c
    ld bc, $f7fe
    nop
    ld e, c
    ld [$1848], sp
    ldh a, [rTAC]
    rst $30
    nop
    ld c, b
    ld bc, $1868
    cp $f0
    rlca
    rst $30
    nop
    ld c, b
    ld bc, $2878
    ld c, b
    ld bc, $6868
    ldh a, [$08]
    rst $30
    nop
    ld c, b
    ld bc, $2878
    ld c, b
    ld bc, $6868
    inc h
    nop
    jr jr_011_4861

    cp $f6
    jr nz, @+$32

    nop
    or $60
    jr nc, @+$03

    cp $f7
    nop
    ld c, e
    nop
    ld c, b

jr_011_47f8:
    jr c, jr_011_47f8

    rst $30
    ld bc, $0759
    ld l, b
    jr c, jr_011_485a

    rlca
    ld l, b
    ld c, b
    rst $30
    nop
    ld e, c
    ld bc, $2868
    ld e, c
    ld bc, $5868
    or $40
    dec c
    nop
    cp $f6
    ld b, b

jr_011_4815:
    dec c
    nop
    cp $f6
    ld b, b
    jr nc, jr_011_481c

jr_011_481c:
    or $40
    jr nc, @+$03

    cp $f6
    jr nz, @+$4a

    ld bc, $20f6
    ld c, b
    nop
    cp $f7
    nop
    jr c, jr_011_482e

jr_011_482e:
    ld c, b
    ld d, b
    cp $f7
    nop
    dec l
    nop
    jr @+$6a

    dec l
    nop
    ld c, b
    ld e, b
    cp $f7
    nop
    dec l
    nop
    ld c, b

jr_011_4841:
    jr jr_011_4841

    rst $30
    nop
    dec l
    nop
    ld c, b

jr_011_4848:
    jr z, jr_011_4848

    or $24
    ld [hl-], a
    nop
    cp $f6
    ld b, h
    ld [hl-], a
    nop
    rst $30
    nop
    ld b, e
    nop
    ld e, b
    ld c, b
    ld b, e

jr_011_485a:
    nop
    jr c, jr_011_4815

    ld b, e
    nop
    ld a, b
    cp b

jr_011_4861:
    cp $f7
    nop
    ld [hl-], a
    nop
    ld [$3248], sp
    nop
    ld [$3258], sp
    nop
    jr jr_011_48b8

    ld [hl-], a
    nop
    jr jr_011_48cc

    cp $f6

jr_011_4876:
    ld h, h
    ld [hl-], a
    nop
    cp $f7
    nop
    ld b, e
    nop
    jr jr_011_48a8

    ld b, e
    nop
    jr c, @-$76

    ld b, e
    nop
    ld c, b
    ret z

    ld b, e
    nop
    adc b
    sbc b
    inc [hl]
    nop
    ld a, b
    ld e, b
    inc [hl]
    nop
    ld e, b
    cp b
    cp $f6
    and h
    add hl, sp
    nop
    cp $f7
    nop
    dec c
    ld bc, $9858
    dec c
    ld bc, $6858
    dec c
    ld bc, $6868

jr_011_48a8:
    cp $f7
    nop
    inc d
    nop
    adc b
    xor b
    inc d
    nop
    adc b
    cp b
    inc d
    nop
    adc b
    ret z

    inc d

jr_011_48b8:
    nop
    adc b
    ret c

    stop
    sbc b

jr_011_48be:
    jr z, jr_011_48be

    rst $30
    nop
    dec c
    nop
    ld c, b
    ld l, b
    dec c
    nop
    ld c, b
    adc b
    cp $f6

jr_011_48cc:
    ld b, b
    ld [$fe00], sp
    or $40
    ld [$f700], sp
    nop
    ld a, [hl-]
    nop
    ld e, b
    ld c, b
    ld a, [hl-]
    nop
    jr c, jr_011_4876

    ld a, [hl-]
    nop
    sbc b
    sbc b
    cp $f6
    ld b, b
    ld [$fe00], sp
    or $e4
    ld [hl-], a
    nop
    cp $f7
    nop
    jr z, jr_011_48f1

jr_011_48f1:
    rst $38
    nop
    cp $f7
    nop
    inc [hl]
    nop
    ld a, b
    ld l, b
    inc [hl]
    nop
    ld l, b
    ld a, b
    inc [hl]
    nop

jr_011_4900:
    adc b
    ld a, b
    inc [hl]
    nop
    ld a, b
    adc b
    cp $f6
    ld b, b
    ld c, c
    nop
    cp $f7
    nop
    ld c, l
    nop
    ld l, b
    ld c, b
    ld c, l

jr_011_4913:
    nop
    sbc b
    ld c, b
    cp $f7
    nop
    ld [hl], b
    nop
    jr z, jr_011_4965

    cp $f7
    inc bc
    ld c, $01
    jr @+$1a

    ld c, $01
    jr jr_011_4900

    ld c, $01
    sbc b
    jr jr_011_493b

    ld bc, $d898
    cp $f7
    inc bc
    ld c, $01
    jr jr_011_494f

    ld c, $01
    jr jr_011_4913

jr_011_493b:
    ld c, $02
    jr c, @-$26

    ld c, $00
    sbc b
    jr z, jr_011_4952

    dec b
    ld l, b
    ld c, b
    ld c, $01
    adc b
    ret c

    ld e, c
    nop
    ld c, b
    ld a, b

jr_011_494f:
    ld e, c
    nop
    ld c, b

jr_011_4952:
    adc b
    cp $f7
    inc bc

jr_011_4956:
    ld c, $01
    jr @+$3a

    ld c, $01
    sbc b
    jr c, jr_011_4956

    nop
    ld a, [bc]
    nop
    jr jr_011_49bc

    ld a, [bc]

jr_011_4965:
    nop
    ld e, b
    ld e, b
    cp $f8
    dec b
    ld bc, $f633
    and h
    ld [hl-], a
    nop
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    rst $30
    dec b
    ld c, $00
    ld l, b
    sbc b
    cp $f7
    nop
    ld a, b
    nop
    ld d, b
    or b
    cp $f6
    ld h, b
    ld a, [bc]
    nop
    cp $f7
    nop
    inc [hl]
    ld bc, $4838
    inc [hl]
    ld bc, $a838
    inc [hl]
    ld bc, $3858
    inc [hl]
    ld bc, $8878
    rst $30
    inc bc

jr_011_499d:
    ld e, c
    dec b
    jr jr_011_49d9

    ld e, c
    dec b
    adc b
    jr jr_011_499d

    ld [bc], a
    ld e, c
    nop
    sbc b

jr_011_49aa:
    jr z, jr_011_49aa

    rst $30
    nop

jr_011_49ae:
    dec [hl]
    nop
    ld b, b
    nop
    cp $f7
    nop
    dec [hl]
    nop
    ld b, b
    nop
    ld e, c
    nop
    sbc b

jr_011_49bc:
    sbc b
    ld e, c
    nop
    sbc b
    cp b
    cp $f6
    add b
    ld sp, $fe00
    rst $30
    inc bc
    ld e, c
    nop
    sbc b
    ld e, b
    ld e, c
    nop
    sbc b
    sbc b
    cp $f6
    add b
    ld sp, $f700
    inc bc
    ld e, c

jr_011_49d9:
    dec b
    sbc b
    jr jr_011_4a36

    dec b
    sbc b
    ret c

    rst $30
    ld [bc], a
    ld e, c
    nop
    jr jr_011_49ae

    cp $f6
    inc h
    ld [hl-], a
    ld bc, $f7fe
    ld [bc], a
    ld l, $00
    ld c, b
    ld a, b
    ld l, $00
    ld c, b
    adc b
    ld l, $00
    ld c, b
    sbc b
    ld l, $00
    ld c, b
    xor b
    or $44

Call_011_4a00:
    ld [hl-], a
    nop
    cp $f7
    ld [bc], a
    cpl
    nop
    jr nc, jr_011_4a39

    or $64
    ld [hl-], a
    nop
    cp $f7
    nop
    inc [hl]
    nop
    ld c, b
    ld a, b
    inc [hl]
    nop
    ld a, b
    xor b
    or $44
    ld [hl-], a
    nop
    cp $f7
    ld [bc], a
    ld e, c
    ld bc, $d828
    ld e, c
    inc b
    jr c, @-$26

    or $84
    ld [hl-], a
    ld bc, $f6fe
    ld hl, $0071
    cp $f6
    ld b, h
    ld [hl-], a
    nop
    rst $30

jr_011_4a36:
    nop
    inc c
    nop

jr_011_4a39:
    ld c, b
    adc b
    rst $30
    ld [bc], a
    ld e, c
    inc b
    adc b
    cp b
    cp $f7
    inc bc
    inc de
    nop
    jr jr_011_4aa0

    inc de
    nop
    sbc b
    ld e, b
    or $40
    ld sp, $fe00
    rst $30
    nop
    stop
    adc b
    sbc b
    stop
    jr c, jr_011_4a93

    stop
    jr c, @-$76

    stop
    ld a, b
    adc b
    stop
    ld e, b
    ld h, b
    rst $30
    inc bc

jr_011_4a69:
    ld c, $01

jr_011_4a6b:
    jr z, jr_011_4a85

    ld c, $01
    adc b
    jr jr_011_4a69

    ld [bc], a
    ld e, c
    ld bc, $c818
    ld e, c
    ld bc, $c828
    cp $f7

jr_011_4a7d:
    inc bc
    ld d, b
    ld bc, $0009
    rst $30
    nop
    inc hl

jr_011_4a85:
    nop
    ld l, b
    xor b
    inc hl
    nop
    ld c, b
    xor b
    inc hl
    nop
    ld l, b
    ld c, b
    inc hl
    nop
    ld c, b

jr_011_4a93:
    ld c, b
    cp $f7
    ld [bc], a
    ld e, c
    ld bc, $2868
    ld e, c
    ld bc, $2888
    ld e, c

jr_011_4aa0:
    add hl, bc
    jr jr_011_4a6b

    rst $30
    nop
    stop
    ld l, b
    jr c, jr_011_4aba

    nop
    adc b
    ld a, b
    ld hl, sp+$13
    dec c
    dec de
    cp $f7
    nop
    ld a, c
    nop
    jr z, jr_011_4b30

    cp $f7

jr_011_4aba:
    ld bc, $0020
    jr z, jr_011_4b27

    jr nz, jr_011_4ac1

jr_011_4ac1:
    ld a, b
    ld l, b
    cp $f6
    ld b, b
    ld c, l
    nop
    cp $fe
    or $60
    stop
    or $40
    inc c
    nop
    cp $f6
    ld b, b
    inc [hl]
    ld bc, $60f6
    db $10
    ld bc, $f7fe

jr_011_4add:
    inc bc
    ld a, [hli]
    inc bc
    ld [hl], b
    and b
    ld a, [hli]
    ld [bc], a
    sub b
    jr nz, jr_011_4add

    ld b, h
    ld [hl-], a
    nop
    cp $f7
    ld bc, $0959
    jr jr_011_4b59

    ld e, c
    inc b
    jr jr_011_4a7d

jr_011_4af5:
    ld e, c
    inc b
    jr z, @+$6a

    ld e, c
    inc b
    jr z, jr_011_4a85

    or $60
    stop
    cp $f7
    ld [bc], a
    ld e, c
    ld bc, $6838
    ld e, c
    ld bc, $8838
    rst $30
    nop
    stop
    ld c, b
    ld l, b
    stop
    ld c, b
    sbc b
    inc [hl]
    nop
    ld l, b
    xor b
    inc [hl]
    nop
    ld a, b
    ld a, b
    cp $f6
    add b
    stop
    cp $f7
    inc bc
    ld d, b

jr_011_4b27:
    ld bc, $0009
    rst $30

jr_011_4b2b:
    nop
    inc [hl]
    nop
    jr z, @+$7a

jr_011_4b30:
    inc [hl]
    nop
    ld e, b
    ld e, b
    cp $f6
    add c
    db $10
    ld bc, $f6fe
    ld h, h
    ld [hl-], a
    ld bc, $f7fe
    nop
    inc [hl]

jr_011_4b42:
    nop
    ld e, b
    ld a, b
    inc [hl]
    nop
    ld c, b
    jr jr_011_4b7e

    nop
    jr c, jr_011_4af5

    rst $30
    inc bc
    ld c, $01
    jr z, jr_011_4b2b

    ld c, $01
    adc b
    ret c

    cp $f7

jr_011_4b59:
    ld [bc], a
    ld e, c
    dec b
    jr z, jr_011_4b86

    ld e, c
    dec b
    jr z, @-$26

    ld e, c
    dec b
    jr c, jr_011_4b7e

    ld e, c
    dec b
    jr c, jr_011_4b42

    ld e, c
    ld bc, $1878
    ld e, c
    ld bc, $d878
    ld e, c

Call_011_4b73:
    ld bc, $2888
    cp $f6
    add h
    ld [hl-], a
    nop
    cp $f7
    inc bc

jr_011_4b7e:
    cpl
    nop
    ld b, b
    jr c, jr_011_4bb2

    nop
    ld b, b
    or b

jr_011_4b86:
    cp $f8
    inc de
    jr @+$59

    cp $f7
    nop
    ld a, $00   ; xor a
    ld c, b
    adc b
    ld a, $00   ; xor a
    sbc b
    sbc b
    ld a, [hl-]
    nop
    jr c, jr_011_4c12

    ld a, [hl-]
    nop
    sbc b
    adc b
    cp $f7
    nop
    ld e, c

jr_011_4ba2:
    add hl, bc
    ld a, b
    cp b
    ld e, c
    ld bc, $b888
    rst $30
    nop
    ld c, a
    nop
    ld l, b
    ld a, b
    ld c, a
    nop
    ld e, b

jr_011_4bb2:
    sbc b
    cp $f7
    nop
    inc d
    nop
    adc b
    ld c, b
    inc d
    nop
    sbc b
    sbc b
    cp $f8
    add hl, bc
    add b
    sub l
    rst $30
    nop
    dec [hl]
    nop
    ld b, b
    nop
    cp $f8
    inc de
    rla
    inc e
    rst $30
    inc bc
    ld a, [hli]
    inc bc
    sub b

jr_011_4bd3:
    jr nz, jr_011_4bd3

    or $60
    inc d
    nop
    rst $30
    inc bc
    ld e, c
    ld bc, $3838
    ld e, c
    ld bc, $5838
    ld e, c
    add hl, bc
    ld e, b
    ld a, b
    ld e, c
    ld bc, $5878
    ld e, c
    add hl, bc
    ld a, b
    ld a, b
    cp $f6
    ld h, b
    ld [hl], d
    nop
    cp $f8
    inc de
    dec d
    dec de
    add hl, bc
    nop
    ld l, h
    rst $30
    inc bc
    ld e, c

jr_011_4bff:
    ld bc, $1858
    ld e, c
    ld bc, $1878
    ld c, $05
    jr z, jr_011_4ba2

    cp $f6
    inc hl
    add hl, de
    nop
    or $60
    ld c, [hl]

jr_011_4c12:
    nop
    cp $f6
    ld b, b
    inc [hl]
    nop
    cp $f7
    nop
    inc [hl]
    nop

jr_011_4c1d:
    ld c, b
    sbc b
    cp $f7
    inc bc
    ld c, $03
    ld d, a
    jr nc, jr_011_4c1d

    add b
    ld c, [hl]
    nop
    cp $f6
    ld b, b
    ld c, l
    nop
    or $60
    inc [hl]
    nop
    ld e, b
    adc b
    cp $f7
    nop
    ld a, d
    nop
    ld d, b
    ld a, b
    cp $f6
    ld h, b
    inc [hl]
    nop
    rst $30
    nop
    add hl, de
    nop
    jr c, jr_011_4bff

    add hl, de
    nop
    ld e, b
    ret z

    cp $f6
    add b
    ld a, $00   ; xor a
    rst $30

jr_011_4c51:
    inc bc
    ld e, c
    ld bc, $d818
    ld e, c
    ld bc, $d828
    cp $f7
    nop
    inc hl
    nop
    ld c, b
    sbc b
    inc hl

jr_011_4c62:
    nop
    adc b
    ld e, b
    cp $f6
    ld h, [hl]
    ld [hl-], a
    nop
    cp $f6
    add h
    ld [hl-], a
    nop
    cp $f7
    nop
    ld a, e
    nop
    sbc b
    ret z

    cp $f7
    inc bc
    add hl, de
    nop
    ld e, b
    ld c, b
    add hl, de
    nop
    ld e, b
    xor b
    rst $30
    nop
    ld b, b
    nop
    ld c, b
    ld e, b
    ld b, b
    nop
    ld a, b
    ld e, b
    rst $30
    ld [bc], a
    ld e, c
    ld bc, $2898
    ld hl, sp+$13
    ld c, $37
    cp $f7
    nop
    ld c, c
    nop
    ld c, b
    ld l, b
    rst $30
    ld [bc], a
    ld e, c
    ld bc, $6858
    ld e, c
    ld bc, $7858
    ld e, c
    dec b
    jr z, jr_011_4c62

    ld e, c
    rlca
    jr c, @-$46

    or $40
    ld b, b
    ld bc, $f7fe
    ld [bc], a
    ld e, c
    ld bc, $1888
    ld e, c
    ld bc, $2898
    ld e, c
    ld bc, $1898
    ld c, c
    nop
    ld l, b
    jr c, @+$4b

    nop
    jr z, jr_011_4c51

    rst $30
    inc bc
    add hl, de
    nop
    ld e, b
    ld a, b
    cp $f7
    nop
    inc [hl]
    nop
    ld e, b
    cp b
    inc [hl]
    ld bc, $3868
    ld sp, $7802
    xor b
    cp $f7
    nop
    ld b, b
    nop
    jr jr_011_4d5d

    ld b, b
    nop
    adc b
    ret z

    or $64
    ld [hl-], a
    nop
    cp $f7
    inc bc
    add hl, de
    nop
    ld c, b
    jr c, jr_011_4d0e

    nop
    ld l, b
    ld a, b
    cp $f7
    ld [bc], a
    ld e, c
    inc b
    adc b
    ld l, b
    ld e, c
    ld bc, $7888
    or $84
    ld [hl-], a
    nop
    or $43
    add hl, de
    nop
    cp $f7
    inc bc

jr_011_4d0e:
    ld d, $00
    ld e, b
    sbc b
    rst $30
    nop
    inc [hl]
    nop
    ld l, b
    ld c, b
    inc [hl]
    nop
    ld e, b
    jr c, jr_011_4d51

    ld bc, $7838
    inc [hl]
    ld bc, $b878
    inc [hl]
    ld bc, $a828
    cp $f6
    jr nz, @+$75

    nop
    cp $f2
    jr c, jr_011_4d31

jr_011_4d31:
    ld c, b
    ld a, b
    rst $30
    ld [bc], a
    ld e, c
    ld bc, $2818
    ld e, c
    ld bc, $2828
    ld e, c
    ld bc, $c818
    ld e, c
    ld bc, $c828
    ld e, c
    ld bc, $3888
    ld e, c
    ld bc, $3898
    ld e, c
    ld bc, $b888

jr_011_4d51:
    ld e, c
    ld bc, $b898
    cp $f7
    nop
    ld a, [hl-]
    nop
    jr z, jr_011_4d84

    ld a, [hl-]

jr_011_4d5d:
    nop
    sbc b
    ld a, b
    ld a, [hl-]
    nop
    ld a, b
    cp b
    inc h
    nop
    ld e, b
    ld a, b
    cp $f8
    ld [$5001], sp
    cp $f6
    ld h, b
    ld b, b
    ld bc, $f8fe

jr_011_4d74:
    dec b
    ld bc, $f78c
    inc bc
    ld c, $05
    adc b
    jr z, jr_011_4d74

    ld h, b
    ld sp, $fe00
    ld hl, sp+$05

jr_011_4d84:
    ld [bc], a
    jr z, jr_011_4d8c

    inc b
    ld e, c
    or $64
    ld [hl-], a

jr_011_4d8c:
    nop
    cp $f8
    dec b
    db $10
    ld d, [hl]
    or $84
    ld [hl-], a
    nop

jr_011_4d96:
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    cp $f7
    inc bc
    ld d, $00
    ld e, b
    ld a, b
    or $60
    ld sp, $fe02
    rst $30
    nop
    ld a, [hl-]

jr_011_4daa:
    nop
    ld c, b
    ld a, b
    or $40
    inc h
    nop
    cp $f6
    add h
    ld [hl-], a
    nop
    cp $f7
    inc bc
    add hl, de
    nop
    ld e, b
    cp b
    rst $30
    nop

jr_011_4dbf:
    ld sp, $5803
    adc b
    ld sp, $4803

jr_011_4dc6:
    jr jr_011_4dc6

    rst $30
    ld [bc], a
    ld e, c
    rlca
    jr z, jr_011_4d96

    ld e, c
    rlca
    jr z, jr_011_4daa

    ld e, c
    add hl, bc
    adc b
    ret c

    rst $30
    nop
    ld c, c
    nop
    ld l, b
    ld c, b
    ld [hli], a
    nop
    ld c, b
    ret c

    ld [hli], a
    nop
    ld a, b
    xor b
    ld hl, sp+$13
    add hl, de
    ld c, b
    cp $f7
    nop
    ld a, [hl-]
    nop
    ld c, b
    ld a, b
    ld a, [hl-]
    nop
    ld a, b
    ld e, b
    ld a, [hl-]
    nop
    jr z, jr_011_4dbf

    cp $f6
    ld h, h
    ld [hl-], a
    nop
    rst $30
    nop
    ld [hli], a
    nop
    jr jr_011_4daa

    ld [hli], a
    nop
    adc b
    xor b
    cp $f8
    add hl, bc
    add b
    ld [hli], a
    add hl, bc
    add c
    daa
    add hl, bc
    add d
    inc l
    add hl, bc
    add e
    ld d, d
    add hl, bc
    add h
    ld e, h
    add hl, bc
    add l
    add d
    add hl, bc
    add [hl]
    add a
    add hl, bc
    add a
    adc h
    cp $f7

jr_011_4e22:
    ld [bc], a
    ld e, c
    rlca
    jr jr_011_4e4f

    ld e, c
    rlca
    jr z, @+$1a

    rst $30
    nop
    inc h
    nop
    adc b
    jr jr_011_4e46

    nop
    adc b
    sbc b
    or $44
    ld [hl-], a
    nop
    cp $f8
    add hl, bc
    add b
    ld de, $00f7
    ld a, [hl-]
    nop
    jr z, jr_011_4ebc

    ld a, [hl-]
    nop

jr_011_4e46:
    ld a, b
    ld a, b
    or $40
    inc [hl]
    nop
    cp $f7
    nop

jr_011_4e4f:
    ld [hli], a
    nop

Call_011_4e51:
    ld c, b
    ld a, b
    ld [hli], a
    nop
    ld e, b
    sbc b
    cp $f9
    ld bc, $030f
    ldh a, [$38]

jr_011_4e5e:
    jr jr_011_4e61

    rrca

jr_011_4e61:
    ld bc, $8895
    ld l, b
    rst $30
    nop
    inc [hl]
    nop
    ld a, b

jr_011_4e6a:
    jr z, @-$07

    ld [bc], a
    ld e, c
    ld bc, $3888
    ld e, c
    ld bc, $3898
    cp $f7
    ld [bc], a
    ld e, c
    inc b
    sbc b
    ret c

    or $63
    add hl, de
    nop
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    or $60
    ld sp, $fe03
    ld hl, sp+$24
    nop
    ld b, h
    inc h
    nop
    ld d, h
    inc h
    nop
    ld [hl], a
    inc h
    nop
    add a
    cp $f7
    ld [bc], a
    cpl
    nop
    jr nc, jr_011_4e5e

    cpl
    nop
    jr nc, jr_011_4e22

    cp $f8
    inc hl
    ld bc, $2312
    nop
    dec d
    cp $f8
    add hl, bc
    add b
    adc e
    or $84
    ld [hl-], a
    nop
    cp $f7
    nop
    ld a, [hl-]
    nop
    jr z, jr_011_4f32

    ld a, [hl-]
    nop

jr_011_4ebc:
    ld l, b
    ld c, b
    ld a, $00   ; xor a
    jr jr_011_4e6a

    ld a, $00   ; xor a
    ld e, b
    xor b
    ld a, $00   ; xor a
    ld l, b
    adc b
    rst $30
    inc bc
    add hl, de
    nop
    jr c, jr_011_4f18

    cp $f7
    nop
    ld a, h
    nop
    ld e, b
    ld a, b
    cp $f7
    nop
    ld a, $00   ; xor a
    ld c, b
    jr z, jr_011_4f1d

    nop
    ld l, b
    sbc b
    ld a, $00   ; xor a
    adc b
    sbc b
    ld a, $00   ; xor a
    sbc b
    ld l, b
    cp $f7
    ld [bc], a
    ld e, c
    inc b
    ld c, b
    ld a, b
    ld e, c
    ld bc, $6868
    ld e, c
    ld bc, $8868
    or $40
    ld c, a
    nop
    or $43
    dec d
    nop
    cp $f6
    ld b, b
    ld [de], a
    nop
    or $40
    inc [hl]
    ld bc, $f7fe
    ld [bc], a
    ld e, c
    ld bc, $3888
    ld e, c
    ld bc, $3898
    or $84
    ld [hl-], a

jr_011_4f18:
    nop
    cp $f7
    nop
    dec e

jr_011_4f1d:
    ld bc, $a326
    cp $f8
    inc de
    rrca
    rla
    or $40
    ld c, a
    nop
    or $40
    inc e
    nop
    cp $f8
    add hl, bc
    add b
    ld b, e

jr_011_4f32:
    cp $f7
    inc bc
    ld e, h
    nop
    ld [$5c38], sp
    ld bc, $4808
    ld e, h
    nop
    ld [$5c58], sp
    ld bc, $6808
    cp $f6
    add b
    inc a
    nop
    cp $f7
    inc bc
    ld d, $00
    ld e, b
    ld e, b
    or $40
    ld hl, $fe00
    or $84
    ld [hl-], a
    nop
    cp $f6
    ld b, h
    ld [hl-], a
    nop
    rst $30
    ld [bc], a
    ld e, c
    dec b
    ld c, b
    ld c, b
    ld e, c
    ld bc, $4828
    ld e, c
    ld bc, $4818
    rst $30
    nop
    ld [de], a
    nop
    ld a, b
    xor b
    cp $f6
    ld b, h
    ld [hl-], a
    nop
    rst $30
    nop
    inc [hl]
    ld bc, $9848
    inc [hl]
    ld bc, $a818
    inc [hl]
    ld bc, $1888
    cp $f8
    add hl, bc
    add b
    rla
    rst $30
    nop
    ld hl, $2800

jr_011_4f90:
    jr jr_011_4f90

    rst $30
    nop
    inc [hl]
    nop
    sbc b
    jr c, jr_011_4fcd

    nop
    ld l, b
    adc b
    inc [hl]
    nop
    jr z, @+$6a

    rst $30
    inc bc
    inc de
    nop
    jr c, jr_011_500e

    inc de
    nop
    ld a, b
    cp b
    rst $30
    ld [bc], a
    ld e, c
    ld bc, $1818
    ld e, c
    ld bc, $1828
    ld e, c
    ld bc, $1838
    cp $f7
    nop
    ld c, a
    nop
    ld l, b
    sbc b
    inc e
    nop
    ld c, b
    xor b
    inc e
    nop
    ld l, b
    ld a, b
    inc e
    nop
    ld e, b
    ld c, b
    rst $30
    ld [bc], a

jr_011_4fcd:
    ld e, c
    ld bc, $d818
    ld e, c
    ld bc, $d828
    ld e, c
    ld bc, $d838
    ld e, c
    ld bc, $d848
    cp $f7
    nop
    inc e
    nop
    ld e, b
    jr jr_011_5001

    nop
    jr jr_011_5060

    inc e
    nop
    adc b
    sbc b
    ld e, c
    ld bc, $1888
    ld e, c
    inc b
    adc b
    jr z, jr_011_504e

    ld bc, $3888
    rst $30
    ld bc, $0559
    jr @+$6a

    cp $f6
    add h

jr_011_5001:
    ld [hl-], a
    nop
    cp $f6
    ld b, b
    inc [hl]
    ld bc, $f7fe
    nop
    ld [hl], h
    nop
    ld e, b

jr_011_500e:
    ld a, b
    cp $f7
    nop
    inc [hl]
    ld bc, $2868
    inc [hl]
    ld bc, $8868
    inc [hl]
    ld bc, $b888
    ld c, a
    nop
    ld c, b

Call_011_5021:
jr_011_5021:
    jr z, jr_011_5021

    rst $30
    nop
    ld a, $00   ; xor a
    jr jr_011_50a1

    ld a, $00   ; xor a
    ld e, b
    adc b
    ld a, [hl-]
    nop
    ld l, b

jr_011_5030:
    ld l, b
    ld a, [hl-]
    nop
    ld l, b
    sbc b
    cp $f7
    nop
    ld sp, $7800
    jr z, jr_011_506e

    nop
    adc b
    ld e, b
    ld sp, $7800
    ld a, b

jr_011_5044:
    cp $f7
    nop
    ld c, a
    nop
    ld c, b
    xor b
    inc [hl]
    nop
    adc b

jr_011_504e:
    cp b
    inc [hl]
    nop
    adc b

jr_011_5052:
    jr z, jr_011_5052

    rst $30
    inc bc
    inc de
    nop
    jr c, @+$4a

    inc de
    nop
    ld l, b
    ld a, b
    cp $f7

jr_011_5060:
    nop
    dec e
    nop
    ld h, $a0
    cp $f8
    add hl, bc
    nop
    dec a
    rst $30
    nop
    ld c, l
    nop

jr_011_506e:
    ld l, b
    ld l, b
    rst $30
    ld [bc], a
    inc de
    nop
    sbc b
    ret c

    cp $f8
    add hl, bc
    add b
    ld b, l
    rst $30
    ld [bc], a
    inc de
    nop
    jr z, jr_011_50d9

    rst $30
    nop
    stop
    ld a, b
    jr jr_011_5098

    nop
    ld a, b

jr_011_508a:
    jr c, jr_011_508a

    rst $30
    inc bc
    ld d, $00
    ld c, b
    ld l, b
    rst $30
    ld [bc], a
    ld e, c
    inc b
    jr z, jr_011_5030

jr_011_5098:
    ld e, c
    inc b
    jr z, jr_011_5044

    cp $f8
    add hl, bc
    nop
    rla

jr_011_50a1:
    or $84
    ld [hl-], a
    nop
    cp $f8
    add hl, bc
    nop
    add e
    rst $30
    inc bc
    ld c, $00
    jr jr_011_50c8

    ld c, $00
    ld a, b

jr_011_50b3:
    ld c, b
    ld c, $00
    ld c, b
    jr z, jr_011_50c7

    ld bc, $3898
    cp $f6
    add b
    ld [de], a
    nop
    cp $f6
    and b
    stop
    rst $30

jr_011_50c7:
    ld [bc], a

jr_011_50c8:
    inc de
    nop
    jr @-$66

    cp $f6
    add b
    ld [de], a
    nop
    rst $30
    inc bc
    ld c, $01
    jr @+$1a

    ld c, $01

jr_011_50d9:
    jr jr_011_50b3

    ld c, $01
    sbc b
    jr jr_011_50ee

    ld bc, $d898
    cp $f7
    nop

jr_011_50e6:
    inc d
    nop
    adc b
    jr z, jr_011_50ff

    nop
    adc b
    ld c, b

jr_011_50ee:
    cp $f6
    ret nz

    stop
    cp $f8
    add hl, bc
    add b
    sub h
    or $64
    ld [hl-], a
    nop
    cp $f6
    ld h, b

jr_011_50ff:
    ld [de], a
    nop
    rst $30
    inc bc
    ld d, b
    nop
    dec hl
    nop
    cp $f7
    ld [bc], a
    ld e, c
    inc b
    jr jr_011_50e6

    ld e, c
    inc b
    jr z, @-$26

    or $80
    stop
    cp $f7
    ld [bc], a
    ld e, c
    dec b
    sbc b
    ld e, b
    ld e, c
    nop
    sbc b
    ld l, b
    ld e, c
    dec b
    sbc b
    ld a, b
    ld e, c
    nop
    sbc b
    adc b
    ld e, c
    dec b
    sbc b
    sbc b
    or $44
    ld [hl-], a
    nop
    rst $30
    nop
    ld c, l
    nop
    ld a, b
    ld c, b
    ld c, l
    nop
    ld a, b
    xor b
    cp $f8
    add hl, bc
    nop
    dec e
    rst $30
    inc bc
    ld c, $03
    ld d, l
    ld b, b
    ld c, $04
    ld e, c
    ld b, b
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    rst $30
    inc bc
    ld c, $00
    jr @+$7a

    ld c, $00

jr_011_5157:
    adc b
    ret c

    ld c, $01
    jr jr_011_51b5

    ld c, $01
    sbc b
    ld e, b
    cp $f6
    ld h, b
    ld [de], a
    nop
    rst $30
    inc bc
    ld d, b
    nop
    dec hl
    nop
    cp $f9
    ld [bc], a
    dec bc
    nop
    inc b
    jr c, jr_011_518c

    ld hl, sp+$25
    ld [bc], a
    add hl, bc
    dec h
    ld [bc], a
    ld a, [bc]
    dec h
    ld [bc], a
    inc c
    dec h
    ld [bc], a
    dec c
    or $84
    ld [hl-], a
    nop
    cp $f7
    nop
    ld [hli], a
    nop
    jr c, jr_011_51a4

jr_011_518c:
    ld c, c
    nop
    adc b
    jr jr_011_51da

    nop
    ld e, b
    sbc b
    cp $f7
    nop
    inc d
    nop
    jr z, @+$4a

    inc d
    nop
    jr c, jr_011_5157

    inc d
    nop
    ld l, b
    jr c, jr_011_51b8

jr_011_51a4:
    nop
    adc b
    ld e, b
    cp $f6
    ld b, h
    ld [hl-], a
    nop
    rst $30
    nop
    dec e
    nop
    ld h, $a0
    cp $f7
    ld [bc], a

jr_011_51b5:
    ld e, c
    rlca
    ld c, b

jr_011_51b8:
    xor b
    ld e, c
    nop

jr_011_51bb:
    ld c, b
    cp b
    rst $30
    ld [bc], a
    inc de
    nop
    ld e, b
    jr jr_011_51bb

    nop
    ld c, b
    nop
    ld b, b
    jr nc, @+$4a

    nop
    sbc b

jr_011_51cc:
    jr z, jr_011_51cc

    or $84
    ld [hl-], a
    nop
    cp $f6
    ld b, b
    ld c, c
    nop
    or $40
    ld [hli], a

jr_011_51da:
    nop
    cp $f7
    nop
    ld [hl], l
    nop
    ld e, b
    ld a, b
    cp $f8
    dec h
    ld [bc], a
    ld [de], a
    dec h
    ld [bc], a
    inc d
    dec h
    ld [bc], a
    ld d, $25
    nop
    sub e
    dec h
    nop
    sub l
    inc l
    inc bc
    ld c, d
    inc l
    inc bc
    ld l, d
    rst $30
    inc bc
    ld c, $01
    jr z, jr_011_5217

    ld c, $01
    adc b
    jr @+$10

    ld bc, $8828
    ld c, $01
    adc b
    ld a, b
    cp $f8
    add hl, bc
    nop

jr_011_520f:
    dec e
    ld sp, hl
    ld bc, $010f
    rst $38
    jr z, @+$5a

jr_011_5217:
    ld bc, $010f
    rst $38
    ld l, b
    ld c, b
    or $64
    ld [hl-], a
    nop
    cp $f7
    ld [bc], a
    ld e, c
    nop
    jr jr_011_52a0

    or $c0
    stop
    cp $f7
    nop
    ld c, b
    nop
    ld a, b
    ld a, b
    ld c, b
    nop
    jr jr_011_520f

    cp $f8
    add hl, bc
    add b
    ld [hl], l

jr_011_523c:
    add hl, bc
    add c
    ld a, c
    cp $f6
    add b
    ld c, c
    nop
    cp $f7
    nop
    ld c, e
    nop
    ld d, b
    ld [hl], b
    cp $f7
    nop
    dec e
    nop
    ld h, $a0

jr_011_5252:
    cp $f9
    ld [bc], a
    dec bc
    ld bc, $3808
    jr jr_011_525d

    dec bc
    ld [bc], a

jr_011_525d:
    db $10

jr_011_525e:
    ld c, b
    jr jr_011_5263

    dec bc
    inc bc

jr_011_5263:
    jr nz, jr_011_52bd

    jr jr_011_525e

    nop
    ld c, b
    ld bc, $b828
    ld c, b
    ld bc, $9868
    ld b, b
    nop
    ld c, b
    cp b
    cp $f7
    nop
    ld c, l
    nop
    ld a, b
    ld c, b
    ld c, l
    nop
    ld a, b
    xor b
    cp $f6
    ld b, b
    ld c, c
    nop
    cp $f7
    nop
    dec [hl]
    nop
    ld b, b
    nop
    cp $f7
    nop
    ld a, l
    nop
    ld e, b
    ld a, b
    cp $f9
    ld [bc], a
    dec bc
    inc b
    ld b, b
    jr jr_011_5252

    rst $30
    ld [bc], a
    ld e, c
    nop
    jr jr_011_52f8

jr_011_52a0:
    ld e, c
    nop
    jr jr_011_523c

    or $64
    ld [hl-], a
    nop
    cp $f8
    add hl, bc
    nop
    ld [hl-], a
    add hl, bc
    ld bc, $0952
    ld [bc], a
    sub l
    add hl, bc
    inc bc
    sub a

jr_011_52b6:
    cp $f6
    jr nz, jr_011_530c

    nop
    rst $30
    nop

jr_011_52bd:
    ld e, c
    ld bc, $1888
    ld e, c
    ld bc, $1898
    cp $f6
    ld h, b
    inc a
    nop
    cp $f6
    add h
    ld [hl-], a
    nop
    cp $f7
    nop
    ld c, b
    nop
    ld l, b
    cp b
    ld hl, $4800
    jr z, jr_011_52fc

    ld bc, $5848
    cp $f6

jr_011_52e0:
    jr nz, jr_011_5334

    ld bc, $f7fe
    nop
    ld [hli], a
    nop
    jr z, jr_011_5312

    ld c, c
    nop

jr_011_52ec:
    jr z, jr_011_52b6

    ld c, c
    nop
    ld a, b
    ld a, b
    or $40

jr_011_52f4:
    ld b, b
    ld bc, $f7fe

jr_011_52f8:
    nop
    ld e, c
    rlca
    sbc b

jr_011_52fc:
    jr jr_011_5357

    add hl, bc
    sbc b

jr_011_5300:
    jr z, jr_011_5300

    rst $30
    nop
    ld c, a
    nop
    ld e, b
    ld e, b
    ld c, a
    nop
    ld e, b
    adc b

jr_011_530c:
    rst $30
    inc bc
    ld e, c
    nop
    jr @+$6a

jr_011_5312:
    ld e, c
    dec b
    jr z, @+$6a

    ld e, c
    dec b
    jr z, @+$5a

    cp $f7
    inc bc
    ld e, c
    rlca
    jr z, @+$5a

    ld e, c
    rlca
    ld l, b
    xor b
    ld e, c
    dec b
    sbc b
    jr jr_011_5383

    dec b
    sbc b
    ret c

    cp $f7
    nop
    db $76
    ld bc, $3858

jr_011_5334:
    ld a, [hl]
    ld bc, $6858
    cp $f6
    add b
    ld b, b
    ld [bc], a
    cp $f7
    nop
    inc [hl]
    nop
    jr jr_011_52ec

    inc [hl]
    nop
    jr z, jr_011_52e0

    inc [hl]
    nop
    jr c, jr_011_52f4

    inc [hl]
    nop
    ld c, b
    ret z

    inc [hl]
    nop
    ld d, b
    xor b
    cp $f7
    inc bc

jr_011_5357:
    ld d, b
    ld bc, $0009
    or $40
    ld sp, $f603
    ld b, b

Call_011_5361:
    ld sp, $fe01
    rst $30
    inc bc
    ld d, b
    ld bc, $0009
    rst $30
    nop
    ld sp, $6801
    adc b
    ld sp, $6800
    sbc b
    cp $f7
    nop
    ld c, c
    ld bc, $6838
    ld c, c
    nop
    jr c, jr_011_53a7

    rst $30
    inc bc
    add hl, de
    nop

jr_011_5383:
    ld l, b
    and b
    ld e, c
    rlca
    ld e, b
    ld c, b
    ld e, c
    rlca
    ld e, b
    ld e, b
    cp $f9
    ld bc, $010f
    ld [hl], l
    ld e, b
    ld l, b
    ld bc, $010f
    ld h, b
    ld e, b

jr_011_539a:
    jr jr_011_539a

    ld hl, sp+$08
    ld bc, $fe50
    rst $30
    ld bc, $0006
    inc e
    ld a, b

jr_011_53a7:
    cp $f7
    nop
    ld e, c
    nop
    ld l, b
    ret c

    ld e, c
    nop
    ld a, b
    ret c

    or $80
    ld b, b
    ld bc, $f6fe
    ld h, b
    ld b, b
    ld bc, $20f6
    ld b, b
    ld [bc], a
    cp $f6
    ld b, e
    add hl, de
    nop
    cp $f8
    inc de
    inc e
    rla
    cp $f7
    nop
    ld c, c
    nop
    ld l, b
    ld a, b
    ld sp, $3802
    jr z, @+$33

    ld [bc], a
    ld e, b
    jr @+$1b

    nop
    ld a, b
    jr jr_011_53f6

    nop
    sbc b
    jr z, @-$07

    inc bc
    dec d
    nop
    ld e, b
    adc b
    cp $f7
    nop
    ld sp, $6801
    cp b
    add hl, de
    nop
    adc b
    cp b
    ld sp, $9802
    ld c, b
    ld e, c

jr_011_53f6:
    ld bc, $a898
    ld e, c
    ld bc, $b898
    ld e, c
    ld bc, $c898
    ld e, c
    ld bc, $d898
    ld hl, sp+$13
    ld d, $19
    cp $f6
    ld b, b
    inc [hl]
    ld bc, $40f6
    ld [hli], a
    nop
    or $20
    ld c, c
    nop
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    rst $30
    nop
    add hl, hl
    nop
    adc h
    ld e, b
    add hl, hl
    nop
    adc h
    adc b
    add hl, hl
    nop
    adc h
    cp b
    cp $f7
    nop
    dec hl
    inc b
    ld d, l
    ld [hl-], a
    dec hl
    inc bc
    ld e, b
    ld [hl-], a
    or $64
    ld [hl-], a
    nop
    cp $f6
    ld h, b
    stop

jr_011_543d:
    or $64
    ld [hl-], a
    nop
    cp $f7
    ld [bc], a
    cpl
    nop
    ld b, b
    ld [hl], b
    cpl
    nop
    ld b, b
    or b
    or $44
    ld [hl-], a
    nop
    cp $f7
    ld [bc], a
    ld c, $02
    sbc b
    ret c

    ld c, $02
    sbc b

jr_011_545a:
    jr jr_011_545a

    ld hl, sp-$09
    ld [bc], a
    ld c, $02
    sbc b
    jr jr_011_5472

    ld [bc], a
    sbc b
    ret z

    or $64
    ld [hl-], a
    nop
    cp $f9
    ld bc, $020f
    ldh a, [$30]

jr_011_5472:
    ld l, b
    ld bc, $020f
    ldh a, [$60]
    xor b

jr_011_5479:
    rst $30
    nop
    jr z, jr_011_547d

jr_011_547d:
    rst $38
    ld a, b
    or $44
    ld [hl-], a
    nop
    cp $f7
    nop
    ld a, a
    nop
    ld e, b
    ld a, b
    cp $f6
    and h
    add hl, sp
    nop
    rst $30
    nop
    ld e, c
    rlca
    jr jr_011_543d

    ld e, c
    ld bc, $b818
    ld e, c
    ld bc, $c818
    ld e, c
    rlca
    jr jr_011_5479

    cp $f6
    ld h, h
    add hl, sp
    nop
    rst $30
    ld [bc], a
    ld e, c
    nop
    adc b
    adc b
    cp $f6
    ld b, h
    add hl, sp
    nop
    cp $f7
    nop
    ld c, c
    nop
    sbc b
    ld e, b
    or $84
    add hl, sp
    nop
    cp $f9
    ld bc, $010f
    sub b
    jr c, jr_011_54ec

    rst $30
    nop
    inc [hl]
    ld bc, $b848
    inc [hl]
    ld bc, $1878
    cp $f6
    ld h, h
    add hl, sp
    nop
    rst $30
    nop
    ld c, c
    nop
    ld l, b

jr_011_54d8:
    jr nc, jr_011_54d8

    or $64
    ld [hl-], a
    nop
    cp $f8
    add hl, bc
    nop
    dec l
    rst $30
    inc bc
    ld a, [hli]
    inc bc
    ld d, b
    jr nc, @+$2c

    inc bc
    sub b

jr_011_54ec:
    sub b
    or $64
    add hl, sp
    nop
    cp $f6
    ld b, b
    inc a
    nop
    or $40
    inc [hl]
    ld bc, $fefe
    rst $30

jr_011_54fd:
    ld [bc], a
    ld e, c
    add hl, bc

jr_011_5500:
    sbc b
    jr jr_011_555c

    add hl, bc
    sbc b
    jr z, jr_011_5560

    dec b
    sbc b
    xor b
    ld e, c
    dec b
    sbc b
    cp b
    ld e, c

jr_011_550f:
    ld bc, $c898
    ld e, c
    ld bc, $d898
    ld e, c
    ld bc, $e898
    ld hl, sp+$13
    ld a, [de]
    ld h, [hl]
    cp $f7
    nop
    ld [hl], a
    nop
    ld e, b
    ld a, b
    cp $f7
    nop
    inc [hl]
    nop
    ld e, b
    ld a, b
    inc [hl]
    nop
    jr c, jr_011_54d8

    ld b, b
    ld bc, $8888
    ld b, b
    nop
    jr z, jr_011_5500

    or $64
    ld [hl-], a
    nop
    ld hl, sp+$13
    db $10
    inc e
    cp $f7
    nop
    ld c, e
    ld bc, $9858
    ld e, c
    ld bc, $4818
    ld e, c
    rlca
    sbc b
    cp b
    rst $30
    inc bc
    dec d
    nop
    jr z, jr_011_54fd

    dec d
    nop
    ld a, b
    sbc b
    cp $f7
    nop

jr_011_555c:
    ld c, l
    nop
    ld c, b
    ld c, b

jr_011_5560:
    inc [hl]
    ld bc, $4888
    inc [hl]
    ld bc, $8878
    inc [hl]
    ld bc, $7848
    cp $f6
    ld h, h
    ld [hl-], a
    nop
    rst $30
    inc bc
    inc de
    nop
    jr z, jr_011_559f

    inc de
    nop
    adc b
    jr z, jr_011_558f

    nop
    ld l, b
    ld e, b
    inc de
    nop
    ld c, b
    ld e, b
    inc de
    nop
    jr c, jr_011_550f

    cp $f7
    nop
    inc [hl]
    nop
    ld e, b
    ld a, b
    inc [hl]

jr_011_558f:
    nop
    adc b
    xor b
    cp $f8
    add hl, bc
    nop
    ld a, c
    rst $30
    nop
    ld c, a
    nop
    ld e, b
    ld e, b
    ld c, a
    nop

jr_011_559f:
    ld l, b
    sbc b
    ld c, a
    nop
    jr c, @-$66

    cp $f7

jr_011_55a7:
    nop
    ld c, $03
    ld d, a
    ld b, b
    ld c, $04
    ld d, a
    jr nc, jr_011_55a7

    ld h, b
    ld b, b
    ld bc, $f7fe
    nop
    ld [de], a
    ld bc, $9818
    ld [de], a
    ld bc, $5848
    db $10
    ld bc, $3828
    db $10
    ld bc, $7838
    db $10
    ld bc, $a828
    cp $f7
    ld [bc], a
    ld e, c
    ld bc, $6858
    ld e, c
    inc b
    ld e, b
    ld a, b
    ld e, c
    ld bc, $8858
    or $60
    inc a
    nop
    cp $f8
    add hl, bc
    add b
    ld e, b
    rst $30

jr_011_55e4:
    nop

jr_011_55e5:
    inc hl
    nop
    ld c, b
    jr z, jr_011_560d

    nop
    adc b
    jr jr_011_55e4

    ld h, h
    ld [hl-], a
    nop
    cp $f8
    dec b
    ld bc, $f678
    ld b, b
    ld b, b
    ld bc, $20f6
    ld b, b
    ld [bc], a
    cp $f7
    nop
    ld sp, $3801
    jr c, @+$33

    nop
    jr jr_011_5671

    cp $f7
    nop
    ld c, e

jr_011_560d:
    ld bc, $a858
    cp $f7
    inc bc
    add hl, de
    nop
    ld e, b
    ld c, b
    or $60
    ld b, b
    ld bc, $f7fe
    inc bc
    ld e, c
    nop
    ld e, b
    cp b
    cp $f7
    inc bc
    ld d, $00
    ld e, b
    ld a, b
    or $40
    inc d
    nop
    cp $f7
    nop
    inc [hl]
    ld bc, $4870
    inc [hl]
    ld bc, $a828
    ld hl, sp+$13
    ld de, $fe1a
    rst $30
    ld bc, $001d
    ld h, $a0
    rst $30
    inc bc
    inc de
    nop
    ld e, b
    ld a, b
    inc de
    nop
    jr jr_011_55e5

    cp $f7
    ld bc, $001d
    ld h, $a0
    or $40
    ld c, c
    nop
    cp $f6
    add b
    inc [hl]
    nop
    cp $f7
    inc bc
    inc de
    nop
    ld e, b
    ld c, b
    inc de
    nop
    ld e, b
    jr z, jr_011_567c

    nop
    ld l, b

jr_011_566b:
    jr c, jr_011_566b

    or $64
    ld [hl-], a
    nop

jr_011_5671:
    or $40
    inc d
    nop
    cp $f7
    inc bc
    dec d
    nop
    sbc b
    adc b

jr_011_567c:
    dec d
    nop
    jr c, @-$76

    rst $30
    nop
    ld c, b
    nop
    ld e, b
    jr z, jr_011_56cf

    ld bc, $4898
    rst $30
    ld [bc], a
    ld e, c
    inc b
    ld a, b
    ret c

    ld e, c
    inc b
    adc b
    ret c

    ld e, c
    inc b
    adc b
    ret z

    ld e, c
    inc b
    sbc b
    cp b
    ld e, c
    inc b
    sbc b
    ret z

    ld e, c
    inc b
    sbc b
    ret c

    cp $f7
    ld bc, $001d
    ld h, $a0
    rst $30
    nop
    dec d
    nop
    jr jr_011_5719

    dec d
    nop
    ld e, b
    xor b
    inc [hl]
    ld bc, $4858
    inc [hl]
    ld bc, $a828
    cp $f8
    add hl, bc
    nop
    scf
    or $64
    add hl, sp
    nop
    cp $f2
    ld e, $12
    and a

jr_011_56cb:
    nop
    ld hl, sp+$4f
    nop

jr_011_56cf:
    nop
    cp $f7
    ld [bc], a

jr_011_56d3:
    ld e, c
    ld bc, $1818
    ld e, c
    ld bc, $1828
    ld e, c
    ld bc, $1838
    ld e, c
    ld bc, $1848
    ld e, c
    inc b
    ld a, b
    jr @+$5b

    inc b
    adc b
    jr jr_011_5745

    nop
    sbc b
    jr jr_011_5749

    rlca
    jr jr_011_56cb

    ld e, c
    dec b
    jr z, jr_011_56cf

    ld e, c
    add hl, bc
    jr c, jr_011_56d3

    ld e, c
    rlca
    ld c, b
    ret c

    ld e, c
    add hl, bc
    ld a, b
    jr jr_011_575d

    dec b
    adc b
    jr jr_011_5761

    rlca
    sbc b
    ret c

    cp $f6
    ld hl, $0171
    cp $f6
    ld b, c
    ld hl, $f600
    ld hl, $0048

jr_011_5719:
    rst $30
    ld bc, $0035
    jr nc, @+$22

    cp $f6
    ld b, c
    ld b, b
    ld bc, $41f6
    ld b, b
    ld [bc], a

jr_011_5728:
    or $21
    ld b, b
    nop
    cp $f8
    jr z, jr_011_5730

jr_011_5730:
    jr c, jr_011_5728

    jr nz, @+$54

    ld [bc], a
    cp $f8
    jr z, jr_011_5739

jr_011_5739:
    ld d, [hl]
    or $20
    ld d, d
    inc bc
    cp $f6
    jr nz, jr_011_5745

    nop
    cp $5e

jr_011_5745:
    ld d, a
    ld [hl], h
    ld d, a
    ld a, [hl]

jr_011_5749:
    ld d, a
    adc l
    ld d, a
    sub a
    ld d, a
    rst $00
    ld d, a
    db $dd
    ld d, a
    db $eb
    ld d, a
    daa

jr_011_5755:
    ld e, b
    ld d, l
    ld e, b
    ld [hl], e
    ld e, b
    ld a, l
    ld e, b
    dec c

jr_011_575d:
    ld e, b

jr_011_575e:
    ld a, [c]
    and a
    nop

jr_011_5761:
    ld e, b
    ld d, b
    and a
    ld bc, $2048
    and a
    ld [bc], a
    ld c, b
    jr nc, @+$4e

    rlca
    ld a, $50
    ld c, h
    ld [$5038], sp
    rst $38
    ld a, [c]
    xor b
    nop
    ld c, b
    ld b, b
    ld [hl], d
    ld bc, $6848
    rst $38
    rst $30
    nop
    rla
    ld bc, $1838
    rla
    ld bc, $5848
    rla
    ld bc, $3868
    rst $38
    ld a, [c]
    xor b
    inc bc
    jr z, jr_011_57da

    ld b, e
    add b
    ld h, b
    ld e, b
    rst $38
    ld a, [c]
    xor b
    inc b
    add sp, $58
    and l
    ld [bc], a
    push hl
    ld c, b
    xor c
    nop
    ld [$a978], sp
    ld bc, $3818
    xor c
    ld [bc], a
    jr z, jr_011_5814

    xor c
    inc bc
    jr @-$76

    xor c
    inc b
    ld e, b
    jr jr_011_575e

    dec b
    ld l, b
    jr z, jr_011_5755

    nop
    ld e, b
    ld e, b
    rst $30
    nop
    ld [hl], $01
    ld l, b

jr_011_57c1:
    ld [hl], b
    inc sp
    ld bc, $8070
    rst $38
    ld a, [c]
    xor b
    inc de
    ld d, b
    ld c, b
    add a
    ld bc, $5026
    xor b
    inc d
    ld e, b
    ld e, b
    and l
    inc bc
    ld e, b
    ld c, b
    and a
    inc bc

jr_011_57da:
    ld e, b
    jr c, @+$01

    ld a, [c]
    xor d
    nop
    jr c, jr_011_582a

    and l
    inc b
    ret z

    ld e, b
    xor b
    inc h
    cp b
    ld e, b
    rst $38
    ld a, [c]
    xor b
    inc [hl]
    jr c, jr_011_5848

    and l
    dec b
    jr c, jr_011_583c

jr_011_57f4:
    xor l
    nop
    ld c, b
    jr z, @-$51

    ld bc, $7848
    xor l
    ld [bc], a

jr_011_57fe:
    ld [$ad58], sp

Call_011_5801:
    ld [bc], a

Call_011_5802:
    jr jr_011_586c

    xor l
    inc bc
    jr z, @+$2a

    xor l

Call_011_5809:
    inc b
    ld l, b
    jr c, @+$01

    ld a, [c]
    xor b
    ld b, h
    ld e, b
    ld c, b
    and l
    rlca

jr_011_5814:
    ld l, b
    jr z, jr_011_57c1

    ld [bc], a
    ld l, b
    ld a, b
    xor d
    inc bc
    ld e, b
    ld a, b

jr_011_581e:
    ld b, h
    ld bc, $5858
    add a
    ld [bc], a
    ld h, $50
    rst $38
    ld a, [c]
    and l
    inc bc

jr_011_582a:
    jr z, jr_011_587c

    cp c
    nop
    adc b
    ld [$01b9], sp
    ld c, h
    ld hl, sp-$47
    ld [bc], a
    ld e, b
    xor b
    cp c
    inc bc
    ld c, b
    xor b

jr_011_583c:
    cp c
    inc b
    ld a, [de]
    inc c
    cp c
    dec b
    db $10
    jr jr_011_57fe

    ld b, $0a
    inc h

jr_011_5848:
    cp c
    rlca
    jr jr_011_57f4

    ld c, [hl]
    add hl, bc
    jr c, jr_011_5880

    ld c, [hl]
    ld [$6838], sp
    rst $38
    ld a, [c]
    rst JumpTable
    nop
    ld b, h
    or b
    rst JumpTable
    ld bc, $b02c
    cp e
    ld bc, $d048
    cp e
    ld [bc], a
    jr c, jr_011_581e

    cp h
    inc bc
    dec h
    call nz, $074c

jr_011_586c:
    or $50
    ld c, h
    ld [$50f0], sp
    rst $38
    ld a, [c]
    xor b
    ld d, h
    ld c, b
    ld d, b
    xor b
    ld [bc], a
    add sp, $28

jr_011_587c:
    rst $38
    ld a, [c]
    ld b, h
    dec b

jr_011_5880:
    ld e, h
    xor b
    pop bc
    nop
    ldh [$a8], a
    rst $38
    ld a, [c]
    call nc, Call_011_4a00
    ld c, b
    call nc, $5111
    jr z, @-$2a

    ld sp, $234b
    call nc, Call_011_4e51
    dec l
    call nc, $3b31
    ld c, d
    call nc, $3e41
    ld c, a
    call nc, Call_011_4371
    ld d, e
    call nc, $5651
    ld l, l
    call nc, Call_011_5021
    ld [hl], b
    call nc, Call_011_5361
    db $76
    call nc, $8402
    add d
    rst $38
    xor a
    ld [$cc30], a
    ld [$cfc0], a
    ld hl, $cec0
    ld b, $20
    call $044b
    call $30de
    call $30ed
    ld a, [$cc49]
    ld hl, $5b3b
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hli]
    ld d, [hl]
    ld e, a

Jump_011_58df:
jr_011_58df:
    ld a, [de]
    cp $fe
    jr nz, jr_011_58e5

    pop de

jr_011_58e5:
    ld a, [de]
    cp $ff
    ret z

    inc de
    and $0f
    rst $00
    daa
    ld e, c
    ld e, h
    ld e, c
    ld [hl], h
    ld e, c
    cp l
    ld e, c
    call nz, $d259
    ld e, c
    ldh [$59], a
    scf
    ld e, d
    ld a, l
    ld e, d
    sbc [hl]
    ld e, d
    jr jr_011_58df

jr_011_5903:
    ld e, l

Call_011_5904:
    ld d, h
    jr jr_011_58df

    ld [bc], a
    nop
    ld bc, $0102
    inc b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0103
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld a, [$cc4e]
    ld hl, $00f8
    add l
    ld l, a
    ld a, [hl]
    ld b, a
    ld a, [de]
    inc de
    and b
    jp nz, Jump_011_58df

    ld b, $00
    ld l, e
    ld h, d

jr_011_593b:
    ld a, [hl]
    cp $f0
    jr z, jr_011_5903

    cp $fe
    jr z, jr_011_5903

    cp $ff
    ret z

    and $0f
    ld de, $5907
    call $0072
    ld a, [de]
    ld c, a
    add hl, bc
    inc de
    ld a, [de]
    ld c, a

jr_011_5955:
    add hl, bc
    bit 7, [hl]
    jr nz, jr_011_593b

    jr jr_011_5955

jr_011_595c:
    call $5ace
    call $3ac6
    jr nz, jr_011_5969

    call Call_011_5ad6
    jr jr_011_595c

Jump_011_5969:
jr_011_5969:
    inc de
    inc de
    ld a, [de]
    cp $f0
    jp c, Jump_011_5969

    jp Jump_011_58df


jr_011_5974:
    call $5ace
    call $3ac6
    jr nz, jr_011_5986

    call Call_011_5ad6
    ld l, $4b
    call Call_011_5add
    jr jr_011_5974

Jump_011_5986:
jr_011_5986:
    inc de
    inc de
    inc de
    inc de
    ld a, [de]
    cp $f0
    jp c, Jump_011_5986

    jp Jump_011_58df


Call_011_5993:
    ld a, [$cc9f]
    bit 7, a
    jr z, jr_011_59a8

    and $03
    ld b, a
    xor a
    ld [$cc9f], a
    ld a, [$cd02]
    cp b
    ret z

jr_011_59a6:
    or d
    ret


jr_011_59a8:
    or a
    jr z, jr_011_59a6

    xor a
    ret


jr_011_59ad:
    inc de
    inc de
    jp Jump_011_58df


jr_011_59b2:
    ld l, e
    ld h, d
    inc de
    inc de
    push de
    ld a, [hli]
    ld d, [hl]
    ld e, a
    jp Jump_011_58df


    call Call_011_5993
    jr z, jr_011_59ad

    jr jr_011_59b2

    call Call_011_5993
    jr z, jr_011_59ad

    call $1956
    bit 7, a
    jr nz, jr_011_59ad

    jr jr_011_59b2

    call Call_011_5993
    jr z, jr_011_59ad

    call $1956
    bit 7, a
    jr z, jr_011_59ad

    jr jr_011_59b2

    ld a, [de]
    inc de
    ld b, a
    and $1f
    ldh [$8b], a
    ld a, b
    swap a
    rrca
    and $07
    ldh [$8c], a
    ld a, [de]
    inc de
    ldh [$8f], a
    ld a, [de]
    inc de
    ldh [$8e], a

jr_011_59f7:
    ld a, $01
    ldh [$8d], a
    ldh a, [$8b]
    and $01
    jr nz, jr_011_5a06

    call Call_011_5b1b
    jr nc, jr_011_5a2d

jr_011_5a06:
    call $2e08
    jp nz, Jump_011_58df

    call Call_011_5ae5
    ldh a, [$8f]
    ld [hli], a
    ldh a, [$8e]
    ld [hli], a
    ld a, h
    ldh [$91], a
    push de
    call Call_011_5b06
    pop de
    ldh a, [$91]
    ld h, a
    jr nc, jr_011_5a28

    ld l, $80
    ld [hl], $00
    jr jr_011_5a2d

jr_011_5a28:
    ld l, $80
    ldh a, [$8d]
    ld [hl], a

jr_011_5a2d:
    ldh a, [$8c]
    dec a
    ldh [$8c], a
    jr nz, jr_011_59f7

    jp Jump_011_58df


    ld a, [de]
    inc de
    ldh [$8b], a

jr_011_5a3b:
    ld a, [de]
    bit 7, a
    jp nz, Jump_011_58df

    ld a, $01
    ldh [$8d], a
    ldh a, [$8b]
    and $01
    jr nz, jr_011_5a56

    call Call_011_5b1b
    jr c, jr_011_5a56

    inc de
    inc de
    inc de
    inc de
    jr jr_011_5a3b

jr_011_5a56:
    call $2e08
    jp nz, Jump_011_5986

    call Call_011_5ae5
    call Call_011_5ad6
    ld l, $8b
    call Call_011_5add
    ld a, [hl-]
    and $f0
    swap a
    ld c, a
    dec l
    ld a, [hl]
    and $f0
    or c
    ld c, a
    call Call_011_5af2
    ld l, $80
    ldh a, [$8d]
    ld [hl], a
    jr jr_011_5a3b

jr_011_5a7d:
    ld a, [de]
    bit 7, a
    jp nz, Jump_011_58df

    call $3ea7
    jp nz, Jump_011_5a99

    call Call_011_5ad6
    ld a, [de]
    ld c, a
    inc de
    ld l, $cb
    call $2076
    call Call_011_5af2
    jr jr_011_5a7d

Jump_011_5a99:
    inc de
    inc de
    inc de
    jr jr_011_5a7d

jr_011_5a9e:
    call $5ace
    call Call_011_5ac6
    jr nz, jr_011_5abf

    inc de
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hli], a
    ld a, l
    and $c0
    add $0b
    ld l, a
    ld a, [de]
    inc de
    ld [hli], a
    inc l
    ld a, [de]
    inc de
    ld [hl], a
    jr jr_011_5a9e

jr_011_5abf:
    ld a, $06
    call $0068
    jr jr_011_5a9e

Call_011_5ac6:
    ld a, [de]
    rst $00
    add $3a
    dec d
    ld l, $a7
    ld a, $1a
    cp $f0
    ret c

    pop bc
    jp Jump_011_58df


Call_011_5ad6:
    ld a, [de]
    inc de
    ld [hli], a
    ld a, [de]
    inc de
    ld [hl], a
    ret


Call_011_5add:
    ld a, [de]
    inc de
    ld [hli], a
    inc l
    ld a, [de]
    inc de
    ld [hl], a
    ret


Call_011_5ae5:
    ldh a, [$8b]
    and $02
    ret z

    ld a, [$cc30]
    dec a
    ld [$cc30], a
    ret


Call_011_5af2:
    push hl
    ld a, [$cec1]
    ld hl, $ced0
    rst AddAToHL
    ld [hl], c
    ld a, [$cec1]
    inc a
    and $0f
    ld [$cec1], a
    pop hl
    ret


Call_011_5b06:
    call $30f2
    ret c

    ld a, [$cec2]
    ld c, a
    call Call_011_5af2
    ldh a, [$91]
    ld h, a
    ld l, $8b
    call $2077
    xor a
    ret


Call_011_5b1b:
    ld a, [$ceca]
    cp $07
    jr nc, jr_011_5b39

    inc a
    ld [$ceca], a
    ld hl, $00f8
    add l
    ld l, a
    ld a, [$cec9]
    and [hl]
    ret nz

    ld a, [$ceca]
    swap a
    or $01
    ldh [$8d], a

jr_011_5b39:
    scf
    ret


    ld c, e
    ld e, e
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, l
    ld c, e
    ld e, a
    ld c, e
    ld h, c
    ld c, e
    ld e, a
    ld c, e
    ld h, c
    and e
    ld l, e
    xor l
    ld l, e
    ld c, e
    ld h, e
    or [hl]
    ld l, e
    ld c, e
    ld h, e
    cp d
    ld l, e
    cp [hl]
    ld l, e
    jp nz, $dc6b

    ld l, c
    ld c, e
    ld h, e
    dec a
    ld l, c
    ld c, e
    ld h, e
    ld [c], a
    ld l, c
    ld b, c
    ld l, c
    ld c, e
    ld h, e
    ld b, a
    ld l, c
    ld b, [hl]
    ld l, d
    add hl, sp
    ld l, d
    ld b, d
    ld l, d
    add $6b
    jp z, $d16b

    ld l, e
    push de
    ld l, e
    pop de
    ld l, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, l
    ld l, c
    ld d, a
    ld l, c
    ld e, e
    ld l, c
    ld e, a
    ld l, c
    ld l, h
    ld l, c
    add sp, $69
    ld c, l
    ld l, d
    ld d, c
    ld l, d
    ld d, l
    ld l, d
    reti


    ld l, e
    db $dd
    ld l, e
    db $e4
    ld l, e
    xor $6b
    push af
    ld l, e
    ld a, [c]
    ld l, c
    or $69
    ld [hl], l
    ld l, c
    ld a, e
    ld l, c
    add h
    ld l, c
    adc b
    ld l, c
    sub c
    ld l, c
    sbc e
    ld l, c
    ld e, e
    ld l, d
    ld h, d
    ld l, d
    ld h, [hl]
    ld l, d
    db $fc
    ld l, e
    nop
    ld l, h
    inc b
    ld l, h
    ld [$0c6c], sp
    ld l, h
    ld a, [$0069]
    ld l, d
    ld c, e
    ld h, e
    and [hl]
    ld l, c
    inc b
    ld l, d
    db $10
    ld l, h
    xor h
    ld l, c
    rst AddAToHL
    ld h, h
    ld l, d
    ld l, d
    ld l, [hl]
    ld l, d
    ld [hl], d
    ld l, d
    ld a, h
    ld l, d
    ld d, $6c
    inc hl
    ld l, h
    jr nz, jr_011_5c40

    inc h
    ld h, a
    jr z, jr_011_5c44

    inc l
    ld h, a
    jr nc, jr_011_5c48

    rst $28
    ld h, h
    ld c, e
    ld h, e
    add hl, hl
    ld l, h
    db $dd
    ld h, h
    db $e3
    ld h, h
    add b
    ld l, d
    add h
    ld l, d
    adc b
    ld l, d
    sub c
    ld l, d
    jp hl


    ld h, h
    ld c, e
    ld h, e
    inc [hl]
    ld h, a
    ld b, c
    ld h, a
    ld b, l
    ld h, a
    ld c, c
    ld h, a
    push af

Jump_011_5c00:
    ld h, h
    ld bc, $0b65
    ld h, l
    dec d
    ld h, l
    ld b, b
    ld h, l
    or b
    ld l, c
    ld a, [hl-]
    ld l, b
    ld b, b
    ld l, b
    ld b, h
    ld l, b
    sub a
    ld l, d
    ld c, b
    ld l, b
    ld c, e
    ld h, e
    ld c, a
    ld l, b
    ld e, h
    ld l, b
    ld h, [hl]
    ld l, b
    ld c, l
    ld h, a
    ld d, c
    ld h, a
    ld c, e
    ld h, e
    ld e, [hl]
    ld h, l
    or a
    ld l, c
    call z, $d669
    ld l, c
    ld c, e
    ld h, e
    ld l, d
    ld l, b
    ld [hl], b
    ld l, b
    ld a, d
    ld l, b
    add e
    ld l, b
    adc h
    ld l, b
    sub d
    ld l, b
    sub [hl]
    ld l, b
    sbc a
    ld l, b
    ld d, l
    ld h, a
    ld e, c

jr_011_5c40:
    ld h, a
    ld h, e
    ld h, l
    ld l, b

jr_011_5c44:
    ld h, l
    or d
    ld h, a
    or [hl]

jr_011_5c48:
    ld h, a
    xor $6d
    and e
    ld l, b
    xor h
    ld l, b
    or d
    ld l, b
    ld l, [hl]
    ld h, l
    cp e
    ld l, b
    cp a
    ld l, b
    jp $c768


    ld l, b
    ld c, e
    ld h, e
    dec b
    ld l, d
    ld c, $6a
    inc d
    ld l, d
    cp d
    ld h, a
    cp [hl]
    ld h, a
    rst $00
    ld h, a
    bit 4, a
    ld [hl], d
    ld h, l
    ret nc

    ld l, b
    call nc, $e768
    ld l, b
    db $ed
    ld l, b
    pop af
    ld l, b
    ld e, l
    ld h, a
    ld h, a
    ld h, a
    ld l, e
    ld h, a
    jr @+$6c

    inc e
    ld l, d
    rst $08
    ld h, a
    push de
    ld h, a
    reti


    ld h, a
    db $dd
    ld h, a
    rst $20
    ld h, a
    ld c, e
    ld h, e
    ld a, [$0368]
    ld l, c
    ld c, e
    ld h, e
    rlca
    ld l, c
    dec bc
    ld l, c
    ld [hl], d
    ld h, a
    ld a, e
    ld h, a
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    db $eb
    ld h, a
    db $ec
    ld h, a
    ldh a, [$67]
    ld sp, hl
    ld h, a
    ld c, e
    ld h, e
    db $fd
    ld h, a
    rrca
    ld l, c
    dec d
    ld l, c
    ld c, e
    ld h, e
    dec de
    ld l, c
    rra
    ld l, c
    ld c, e
    ld h, e
    add c
    ld h, a
    call nc, $2263
    ld l, d
    ld h, $6a
    cpl
    ld l, d
    inc bc
    ld l, b
    rlca
    ld l, b
    and c
    ld l, d
    xor [hl]
    ld l, d
    cp d
    ld l, d
    inc hl
    ld l, c
    inc l
    ld l, c
    jr nc, jr_011_5d3a

    adc e
    ld h, a
    adc h
    ld h, a
    and $63
    db $f4
    ld h, e
    ld c, e
    ld h, e
    ld d, $64
    inc sp
    ld l, d
    dec bc
    ld l, b
    rrca
    ld l, b
    ld d, $68
    ret nz

    ld l, d
    call nc, $e56a
    ld l, d
    inc e
    ld h, h
    ld [hli], a
    ld h, h
    ld c, e
    ld h, e
    sub b
    ld h, a
    sub h
    ld h, a
    and c
    ld h, a
    dec hl
    ld h, h
    ld d, c
    ld h, h
    ld d, a
    ld h, h
    ld c, h
    ld h, e
    rra
    ld l, b
    ld c, e
    ld h, e
    ld a, [c]
    ld l, d
    cp $6a
    ld c, $6b
    ld e, $6b
    ld l, $6b
    scf
    ld l, e
    ld d, l
    ld l, e
    ld c, e
    ld h, e
    and l
    ld h, a
    xor [hl]
    ld h, a
    xor [hl]
    ld h, h
    ld h, c
    ld h, h
    ld [hl], e
    ld h, h
    ld [hl], h
    ld h, h
    dec l
    ld l, b
    ld [hl], $68
    ld b, a
    ld l, e
    ld c, [hl]
    ld l, e
    ld [hl], e
    ld l, e
    dec sp
    ld l, e
    ld h, e
    ld l, e
    ld c, e
    ld h, e
    ld l, c
    ld l, e
    ld c, e
    ld h, e
    and c
    ld h, h
    ld c, e
    ld h, e
    or h
    ld h, h
    cp d

jr_011_5d3a:
    ld h, h
    bit 4, h
    ld c, e
    ld h, e
    adc l
    ld l, e
    sub e
    ld l, e
    sbc c
    ld l, e
    ld a, l
    ld l, e
    ld c, e
    ld h, e
    adc c
    ld l, e
    ld d, a
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld l, c
    ld l, [hl]
    ld c, e
    ld h, e
    ld [hl], e
    ld l, [hl]
    add l
    ld l, [hl]
    sub a
    ld l, [hl]
    and c
    ld l, [hl]
    ld c, e
    ld h, e
    and d
    ld l, [hl]
    ld e, d
    ld h, e
    ld e, d
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    xor h
    ld l, [hl]
    or d
    ld l, [hl]
    cp b
    ld l, [hl]
    cp c
    ld l, [hl]
    jp $d16e


    ld l, [hl]
    ld c, e
    ld h, e
    rst AddAToHL
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    db $dd
    ld l, [hl]
    ld [hl], d
    ld h, e
    ld a, h
    ld h, e
    add [hl]
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    db $e3
    ld l, [hl]
    ld c, e
    ld h, e
    pop af
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    rst $30
    ld l, [hl]
    dec b
    ld l, a
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    dec bc
    ld l, a
    ld de, $5a6f
    ld h, e
    ld e, d
    ld h, e
    ld e, d
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    rla
    ld l, a
    dec e
    ld l, a
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    daa
    ld l, a
    dec l
    ld l, a
    ld c, e
    ld h, e
    ld l, $6f
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    inc [hl]
    ld l, a
    sbc [hl]
    ld h, e
    xor b
    ld h, e
    or [hl]
    ld h, e
    or [hl]
    ld h, e
    ld c, e
    ld h, e
    ld a, [hl-]
    ld l, a
    ld b, b
    ld l, a
    ld b, [hl]
    ld l, a
    ld e, b
    ld l, a
    ld e, [hl]
    ld l, a
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld h, h
    ld l, a
    ld l, [hl]
    ld l, a
    ld c, e
    ld h, e
    ld [hl], h
    ld l, a
    sub h
    ld h, e
    call nz, $ce63
    ld h, e
    adc $63
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld a, d
    ld l, a
    ld a, [hl]
    ld l, a
    add a
    ld l, a
    sub c
    ld l, a
    sub a
    ld l, a
    and l
    ld l, a
    xor a
    ld l, a
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld e, d
    ld h, e
    ld e, d
    ld h, e
    ld e, d
    ld h, e
    ld l, b
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    cp l
    ld l, a
    jp $cd6f


    ld l, a
    db $d3
    ld l, a
    rst AddAToHL
    ld l, a
    add sp, $6f
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    xor $6f
    ld c, e
    ld h, e
    ei
    ld l, a
    add hl, bc
    ld [hl], b
    rrca
    ld [hl], b
    dec d
    ld [hl], b
    db $e4
    ld l, a
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld e, d
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    add l
    ld h, l
    ld c, e
    ld h, e
    adc [hl]
    ld h, l
    sbc b
    ld h, l
    sbc [hl]
    ld h, l
    ret z

    ld h, l
    jp nc, $d865

    ld h, l
    sbc $65
    ld c, e
    ld h, e
    ld l, e
    ld [hl], b
    sub c
    ld [hl], b
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    sbc a
    ld [hl], b
    cp e
    ld [hl], b
    ld c, e
    ld h, e
    db $e4
    ld h, l
    ld a, [$0065]
    ld h, [hl]
    ld c, $66
    dec de
    ld [hl], b
    rra
    ld [hl], b
    add hl, sp
    ld [hl], b
    ld b, e
    ld a, b
    inc c
    ld h, a
    rst JumpTable
    ld l, h
    ld c, e
    ld h, e
    ld d, $67
    inc d
    ld h, [hl]
    ld [hli], a
    ld h, [hl]
    inc l
    ld h, [hl]
    ld b, a
    ld [hl], b
    ld h, c
    ld [hl], b
    ld c, e
    ld h, e
    db $e4
    ld l, l
    ld b, d
    ld h, [hl]
    ld c, e
    ld h, e
    ld c, b
    ld h, [hl]
    ld c, e
    ld h, e
    ld e, d
    ld h, [hl]
    ld h, e
    ld h, [hl]
    ld l, c
    ld h, [hl]
    ld l, a
    ld h, [hl]
    ld a, l
    ld h, [hl]
    sub e
    ld h, [hl]
    ld c, e
    ld h, e
    sbc c
    ld h, [hl]
    xor a
    ld h, [hl]
    ld c, e
    ld h, e
    or c
    ld [hl], b
    pop bc
    ld h, [hl]
    bit 4, [hl]
    pop de
    ld h, [hl]
    rst $20
    ld h, [hl]
    push af
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    db $fd
    ld h, [hl]
    ld b, $67
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    pop bc
    ld [hl], b
    ld c, e
    ld h, e
    rst $00
    ld [hl], b
    call nc, $dd70
    ld [hl], b
    rst $28
    ld [hl], b
    push af
    ld [hl], b
    ld [bc], a
    ld [hl], c
    rrca
    ld [hl], c
    dec d
    ld [hl], c
    add hl, de
    ld [hl], c
    ld l, $71
    ld c, e
    ld h, e
    ld [hl-], a
    ld [hl], c
    ccf
    ld [hl], c
    ld c, b
    ld [hl], c
    ld c, h
    ld [hl], c
    ld e, c
    ld [hl], c
    ld l, d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld a, c
    ld [hl], c
    adc l
    ld [hl], c
    sub e
    ld [hl], c
    sub a
    ld [hl], c
    sbc e
    ld [hl], c
    xor h
    ld [hl], c
    pop bc
    ld [hl], c
    push de
    ld [hl], c
    rst JumpTable
    ld [hl], c
    db $e3
    ld [hl], c
    rst $20
    ld [hl], c
    db $f4
    ld [hl], c
    ld bc, $1672
    ld [hl], d
    ld a, [de]
    ld [hl], d
    ld e, $72
    ld [hli], a
    ld [hl], d
    ld l, $72
    inc [hl]
    ld [hl], d
    ld c, c
    ld [hl], d
    ld e, d
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    ld a, d
    ld [hl], d
    add e
    ld [hl], d
    adc c
    ld [hl], d
    adc a
    ld [hl], d
    sub e
    ld [hl], d
    and b
    ld [hl], d
    xor l
    ld [hl], d
    or c
    ld [hl], d
    or l
    ld [hl], d
    jp nz, $cf72

    ld [hl], d
    db $d3
    ld [hl], d
    ldh [$72], a
    pop af
    ld [hl], d
    push af
    ld [hl], d
    ld b, $73
    rrca
    ld [hl], e
    dec e
    ld [hl], e
    ld h, $73
    inc sp
    ld [hl], e
    inc a
    ld [hl], e
    ld b, d
    ld [hl], e
    ld c, b
    ld [hl], e
    ld c, h
    ld [hl], e
    ld d, l
    ld [hl], e
    ld h, d
    ld [hl], e
    ld l, b
    ld [hl], e
    ld [hl], c
    ld [hl], e
    ld [hl], l
    ld [hl], e
    ld a, [hl]
    ld [hl], e
    adc [hl]
    ld [hl], e
    sub l
    ld [hl], e
    sbc c
    ld [hl], e
    and h
    ld [hl], e
    or d
    ld [hl], e
    or [hl]
    ld [hl], e
    ret z

    ld [hl], e
    call z, Call_011_4b73
    ld h, e
    push de
    ld [hl], e
    sbc $73
    db $eb
    ld [hl], e
    db $f4
    ld [hl], e
    ld hl, sp+$73
    db $fc
    ld [hl], e
    nop
    ld [hl], h
    add hl, bc
    ld [hl], h
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    dec c
    ld [hl], h
    ld a, [de]
    ld [hl], h
    ld c, h
    ld [hl], h
    ld d, l
    ld [hl], h
    ld h, [hl]
    ld [hl], h
    ld l, h
    ld [hl], h
    ld a, d
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    add a
    ld [hl], h
    sub b
    ld [hl], h
    sub h
    ld [hl], h
    sbc b
    ld [hl], h
    sbc h
    ld [hl], h
    and b
    ld [hl], h
    and h
    ld [hl], h
    call nz, $c874
    ld [hl], h
    pop de
    ld [hl], h
    push de
    ld [hl], h
    sbc $74
    rst $20
    ld [hl], h
    db $f4
    ld [hl], h
    ld c, e
    ld h, e
    ld hl, sp+$74
    dec b
    ld [hl], l
    add hl, bc
    ld [hl], l
    ld [de], a
    ld [hl], l
    rra
    ld [hl], l
    inc hl
    ld [hl], l
    inc l
    ld [hl], l
    dec [hl]
    ld [hl], l
    add hl, sp
    ld [hl], l
    ld b, d
    ld [hl], l
    ld b, [hl]
    ld [hl], l
    ld c, a
    ld [hl], l
    ld e, b
    ld [hl], l
    ld e, h
    ld [hl], l
    ld h, b
    ld [hl], l
    ld l, e
    ld [hl], l
    ld l, a
    ld [hl], l
    ld a, h
    ld [hl], l
    adc c
    ld [hl], l
    adc l
    ld [hl], l
    sub c
    ld [hl], l
    sub a
    ld [hl], l
    sbc l
    ld [hl], l
    and [hl]
    ld [hl], l
    xor d
    ld [hl], l
    cp b
    ld [hl], l
    ret


    ld [hl], l
    call $d175
    ld [hl], l
    jp c, $de75

    ld [hl], l
    push hl
    ld [hl], l
    xor $75
    ei
    ld [hl], l
    rst $38
    ld [hl], l
    inc c
    db $76
    db $10
    db $76
    inc d
    db $76
    jr jr_011_60f5

    inc e
    db $76
    dec l
    db $76
    ld sp, $4b76
    ld h, e
    ld a, $76
    ld b, a
    db $76
    ld d, b
    db $76
    ld h, h
    db $76
    ld l, b
    db $76
    ld a, l
    db $76
    add c
    db $76
    add l
    db $76
    adc c
    db $76
    adc l
    db $76
    sbc b
    db $76
    sbc h
    db $76
    and [hl]
    db $76
    or e
    db $76
    cp h
    db $76
    push bc
    db $76
    and $76
    db $ed
    db $76
    or $76
    ld a, [$0076]
    ld [hl], a
    inc b
    ld [hl], a
    ld [$2077], sp
    ld [hl], a
    dec l
    ld [hl], a
    ld [hl], $77
    ccf
    ld [hl], a
    ld c, b
    ld [hl], a
    ld c, h
    ld [hl], a
    ld d, a
    ld [hl], a
    ld e, e
    ld [hl], a
    ld e, a
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], h
    ld [hl], a
    ld a, b
    ld [hl], a
    add l
    ld [hl], a
    adc [hl]
    ld [hl], a
    sub a
    ld [hl], a
    sbc e
    ld [hl], a
    and d
    ld [hl], a
    xor e
    ld [hl], a
    xor a
    ld [hl], a
    cp b
    ld [hl], a
    call $d177
    ld [hl], a
    jp c, $de77

    ld [hl], a
    ld [c], a
    ld [hl], a
    db $eb
    ld [hl], a
    ld hl, sp+$77
    ld bc, $0a78
    ld a, b
    rla
    ld a, b
    jr nz, jr_011_616b

    add hl, hl
    ld a, b

jr_011_60f5:
    dec l
    ld a, b
    ld a, [hl-]
    ld a, b
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    dec sp
    ld l, h
    ccf
    ld l, h
    ld b, e
    ld l, h
    ld b, a
    ld l, h
    ld c, e
    ld l, h
    ld c, e
    ld h, e
    ld c, a
    ld l, h
    ld e, d
    ld l, h
    ld c, e
    ld h, e
    ld h, h
    ld l, h
    ld l, b
    ld l, h
    ld c, e
    ld h, e
    ld l, b
    ld l, h
    ld l, h
    ld l, h
    add b
    ld l, h
    adc d
    ld l, h
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    sub b
    ld l, h
    sub [hl]
    ld l, h
    ld a, h
    ld l, h
    ld c, e
    ld h, e
    sbc h
    ld l, h
    ld c, e
    ld h, e
    and d
    ld l, h
    xor b
    ld l, h
    ld l, b
    ld l, h
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    xor [hl]
    ld l, h
    or l
    ld l, h
    cp h
    ld l, h
    jp $ca6c


    ld l, h
    pop de
    ld l, h
    ret c

    ld l, h
    push hl
    ld l, h
    ld l, b
    ld l, h
    ld l, b
    ld l, h
    ld [hl], b
    ld l, h
    db $76
    ld l, h
    db $ec
    ld l, h
    push af
    ld l, h
    inc bc
    ld l, l

jr_011_616b:
    ld l, b
    ld l, h
    add hl, bc
    ld l, l
    rrca
    ld l, l
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    rlca
    ld a, h
    dec h
    ld a, h
    scf
    ld a, h
    ld e, d
    ld a, h
    ld h, a
    ld a, h
    add b
    ld a, h
    or d
    ld a, h
    call $db7c
    ld a, h
    ldh a, [$7c]
    nop
    ld a, l
    add hl, bc
    ld a, l
    dec d
    ld a, l
    inc l
    ld a, l
    ld b, l
    ld a, l
    ld e, a
    ld a, l
    ld a, h
    ld a, l
    adc a
    ld a, l
    or h
    ld a, l
    cp [hl]
    ld a, l
    bit 7, l
    ld c, c
    ld a, b
    ld d, d
    ld a, b
    ld d, [hl]
    ld a, b
    ld e, a
    ld a, b
    ld a, l
    ld a, b
    add [hl]
    ld a, b
    sub b
    ld a, b
    sbc c
    ld a, b
    and d
    ld a, b
    xor e
    ld a, b
    cp [hl]
    ld a, b
    rst $00
    ld a, b
    reti


    ld a, b
    and $78
    cp $78
    ld [bc], a
    ld a, c
    dec bc
    ld a, c
    inc e
    ld a, c
    ld a, [hli]
    ld a, c
    jr c, jr_011_6256

    ld b, c
    ld a, c
    ld c, [hl]
    ld a, c
    ld d, d
    ld a, c
    ld l, c
    ld a, c
    ld [hl], b
    ld a, c
    db $76
    ld a, c
    add d
    ld a, c
    adc b
    ld a, c
    sbc c
    ld a, c
    sbc l
    ld a, c
    and a
    ld a, c
    cp h
    ld a, c
    push bc
    ld a, c
    ret


    ld a, c
    sub $79
    rst JumpTable
    ld a, c
    db $e3
    ld a, c
    rst $20
    ld a, c
    ldh a, [$79]
    ei
    ld a, c
    inc b
    ld a, d
    ld [$0c7a], sp
    ld a, d
    ld [de], a
    ld a, d
    ld d, $7a
    inc hl
    ld a, d
    daa
    ld a, d
    dec hl
    ld a, d
    inc a
    ld a, d
    ld b, l
    ld a, d
    ld c, [hl]
    ld a, d
    ld d, d
    ld a, d
    ld d, [hl]
    ld a, d
    ld e, d
    ld a, d
    ld h, e
    ld a, d
    ld l, h
    ld a, d
    ld [hl], l
    ld a, d
    ld a, [hl]
    ld a, d
    add d
    ld a, d
    adc b
    ld a, d
    adc h
    ld a, d
    sbc a
    ld a, d
    or a
    ld a, d
    ret nz

    ld a, d
    call nz, $cd7a
    ld a, d
    pop de
    ld a, d
    push de
    ld a, d
    sbc $7a
    ld [c], a
    ld a, d
    db $ed
    ld a, d
    or $7a
    dec bc
    ld a, e
    ld e, $7b
    dec hl
    ld a, e
    jr c, jr_011_62c8

    ld b, l
    ld a, e
    ld c, c
    ld a, e
    ld d, [hl]
    ld a, e
    ld e, d
    ld a, e
    ld l, e

jr_011_6256:
    ld a, e
    ld l, a
    ld a, e
    ld [hl], l
    ld a, e
    add b
    ld a, e
    add a
    ld a, e
    adc [hl]
    ld a, e
    sub d
    ld a, e
    sub [hl]
    ld a, e
    sbc d
    ld a, e
    sbc [hl]
    ld a, e
    ld c, e
    ld h, e
    and l
    ld a, e
    and [hl]
    ld a, e
    xor d
    ld a, e
    xor [hl]
    ld a, e
    or l
    ld a, e
    cp h
    ld a, e
    jp $cc7b


    ld a, e
    push de
    ld a, e
    sbc $7b
    rst JumpTable
    ld a, e
    ldh a, [$7b]
    or $7b
    ld a, [$037b]
    ld a, h
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    add hl, de
    ld l, l
    rra
    ld l, l
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    jr z, jr_011_6326

    ld l, $6d
    ld [hl-], a
    ld l, l
    ld [hl], $6d
    ld a, [hl-]
    ld l, l
    ld a, $6d
    ld c, a
    ld l, l
    ld e, c
    ld l, l
    ld l, [hl]

jr_011_62c8:
    ld l, l
    ld [hl], d
    ld l, l
    db $76
    ld l, l
    ld a, d
    ld l, l
    ld a, [hl]
    ld l, l
    add d
    ld l, l
    add [hl]
    ld l, l
    sub b
    ld l, l
    ld c, e
    ld h, e
    adc d
    ld l, l
    sub [hl]
    ld l, l
    and h
    ld l, l
    ld c, e
    ld h, e
    or [hl]
    ld l, l
    cp d
    ld l, l
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld de, $be6e
    ld l, l
    jp nz, $c66d

    ld l, l
    ld c, e
    ld h, e
    rra
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    call nc, $d86d
    ld l, l
    dec h
    ld [hl], b
    cpl
    ld [hl], b
    ld c, e
    ld h, e

jr_011_6315:
    ld hl, sp+$6d
    call c, $e06d
    ld l, l
    cp $6d
    inc b
    ld l, [hl]
    ld [$4b6e], sp
    ld h, e

jr_011_6323:
    ld c, e
    ld h, e
    ld c, e

jr_011_6326:
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    dec [hl]
    ld l, [hl]

jr_011_632d:
    ld c, e
    ld h, e
    ccf
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld b, l
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld d, c
    ld l, [hl]
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    rst $38
    ld a, [c]
    ld [hli], a
    ld a, [bc]
    jr nc, jr_011_63a1

    dec l
    add h
    ld c, b
    ld l, b
    scf
    add h
    ld c, b
    ld l, b
    rst $38
    ld a, [c]
    add a
    nop
    ld h, $50
    sbc l
    inc bc
    and b
    ld l, b
    ld b, h
    ld [$6890], sp
    rst $38
    ld a, [c]
    add a
    nop
    ld h, $50
    pop hl
    ld bc, $7868
    rst $38
    ld a, [c]
    ld l, e
    add hl, de
    ld l, b
    ld d, b
    ld c, h
    ld [bc], a
    jr c, jr_011_638b

    rst $38
    ld a, [c]
    ld c, h
    ld [bc], a
    jr c, jr_011_6391

    ld c, h
    inc bc
    jr z, jr_011_6315

    rst $38
    ld a, [c]
    ld l, e
    add hl, de
    ld c, b
    ld c, b

jr_011_638b:
    ld c, h
    ld [bc], a
    jr z, jr_011_639f

    ld c, h
    inc bc

jr_011_6391:
    jr jr_011_6323

    rst $38
    ld a, [c]
    ld c, h
    ld [bc], a
    jr z, jr_011_63a9

    ld c, h
    inc bc
    jr jr_011_632d

jr_011_639d:
    rst $38
    ld a, [c]

jr_011_639f:
    sub e
    nop

jr_011_63a1:
    jr nc, jr_011_63f3

    ld c, h
    ld [bc], a
    ld a, b
    db $10
    rst $38
    ld a, [c]

jr_011_63a9:
    sub e
    nop
    jr nc, jr_011_63fd

    ld l, e
    add hl, de
    ld l, b
    ld l, b
    ld c, h
    ld [bc], a
    ld l, b
    db $10
    rst $38
    ld a, [c]
    ld c, h
    ld [bc], a
    ld e, b
    db $10
    ld c, h
    inc bc
    ld c, b
    sub b
    ld c, h
    inc bc
    ld a, b
    sub b
    rst $38
    ld a, [c]
    ld c, h
    ld [bc], a
    jr jr_011_63d9

    ld c, h
    inc bc
    ld [$ff90], sp
    ld a, [c]
    ld c, h
    ld [bc], a
    ld [$ff10], sp
    ld a, [c]
    ld h, $00
    ld c, b
    ld l, b

jr_011_63d9:
    ld h, $01
    ld c, b
    ld l, b
    dec h
    nop
    ld d, l
    ld d, b
    dec h
    ld bc, $6a55
    rst $38
    ld a, [c]
    inc a
    add b
    ld c, b
    ld c, b
    ld a, $10
    jr z, jr_011_6417

    or $40
    ld d, e
    nop

jr_011_63f3:
    rst $38
    ld a, [c]
    sbc h
    nop
    ld l, b
    ld e, b
    ld a, $20
    ld h, [hl]
    ld c, b

jr_011_63fd:
    dec l
    add b
    jr jr_011_6479

jr_011_6401:
    dec l
    add [hl]
    jr @+$6a

    scf
    add c
    jr c, jr_011_6451

    add b
    ld [bc], a
    jr jr_011_6445

    sbc l
    dec b
    jr jr_011_6489

    ld a, [hli]
    dec bc
    jr jr_011_639d

    rst $38
    ld a, [c]

jr_011_6417:
    or [hl]
    rrca
    ld l, b
    ld a, b
    rst $38
    ld a, [c]
    ld [hli], a
    ld b, $38
    ld c, b
    rst $38
    ld a, [c]
    ld l, e
    ld a, [bc]
    jr jr_011_643f

    di
    ld e, e
    ld b, a
    rst $38
    ld a, [c]
    scf
    add b
    jr c, jr_011_6458

    dec l
    add c
    ld e, b
    jr z, jr_011_6462

    add e
    jr c, jr_011_6460

    dec l
    add l
    jr c, jr_011_64a4

    ld a, $04
    ld c, b

jr_011_643f:
    ld a, b
    ld a, $11
    ld c, b

jr_011_6443:
    ld l, b
    and l

jr_011_6445:
    ld [$5848], sp
    ld c, [hl]
    ld a, [bc]
    ld e, b
    jr z, jr_011_6443

    ld h, b
    ld d, e
    ld [bc], a
    rst $38

jr_011_6451:
    ld a, [c]
    ld l, e
    dec de
    jr jr_011_649e

    rst $38
    ld a, [c]

jr_011_6458:
    ld l, e
    ld a, [bc]
    jr jr_011_64d4

    adc d
    inc b

jr_011_645e:
    ld e, b
    ld c, b

jr_011_6460:
    rst $38
    ld a, [c]

jr_011_6462:
    dec a
    add b
    ld e, b
    ld d, b
    ret c

    nop
    jr c, jr_011_64d2

    ld c, h
    rlca
    ld a, $50
    ld c, h
    ld [$5038], sp
    rst $38
    rst $38
    ld a, [c]
    daa
    nop
    jr z, jr_011_6401

jr_011_6479:
    scf
    add e
    jr c, jr_011_64b5

    add b
    ld bc, $7868
    ld l, e
    dec bc
    ld c, b
    ld bc, $0b6b
    ld e, b
    ld [bc], a

jr_011_6489:
    ld a, $00   ; xor a
    ld l, b
    ld a, b
    ld a, $01

jr_011_648f:
    jr @+$7a

    ld a, $03
    jr c, jr_011_650d

    ld a, $12
    ld d, b
    ld c, b
    ld a, $13
    ld c, b
    jr c, jr_011_648f

jr_011_649e:
    call nz, $ff00
    ld a, [c]
    sub b
    inc bc

jr_011_64a4:
    ld c, b
    ld e, b
    ld sp, hl
    ld [bc], a
    dec hl
    nop
    nop
    jr nc, jr_011_64e9

    rst $38
    ld a, [c]
    dec l
    add d
    ld e, b
    ld c, b
    rst $38
    ld a, [c]

jr_011_64b5:
    ld a, $02
    ld c, b
    ld a, b
    rst $38
    ld a, [c]
    add b
    nop
    ld c, b
    ld e, b
    add b
    inc bc
    ld c, b
    ld e, b
    scf
    add l
    ld c, b
    ld e, b
    pop af
    call c, $ff0b
    rst $30
    nop
    ld e, d
    nop
    jr nz, jr_011_6521

    ld a, [c]

jr_011_64d2:
    scf
    add d

jr_011_64d4:
    jr c, jr_011_645e

    rst $38
    ld a, [c]
    or [hl]
    dec b
    ld c, b
    ld c, b
    rst $38
    ld a, [c]
    ret nc

    inc bc

jr_011_64e0:
    rrca
    jr nc, @+$01

    ld a, [c]
    ret nc

    inc bc
    rra
    jr nc, @+$01

jr_011_64e9:
    pop af
    ld e, a
    ld bc, $0371
    rst $38
    ld a, [c]
    ld [hl], h
    inc c
    ld [hl], b
    ld c, a
    rst $38
    ldh a, [rDIV]
    ld a, [c]
    rra
    inc b
    ld c, b
    ld c, b
    di
    xor c
    ld b, e
    rst $38
    rst $38
    ld a, [c]
    xor e
    ld [bc], a
    ld c, b
    ld c, b
    db $db
    nop
    jr c, jr_011_6552

    rst $38
    ld a, [c]
    xor e

jr_011_650d:
    nop
    ld b, b
    ld [hl], b
    ld hl, sp+$2d
    nop
    inc sp
    rst $38
    pop af
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [$36f2], sp
    add b
    ld b, l
    adc b
    ld [hl], $83

jr_011_6521:
    jr z, @+$3a

    adc e
    ld bc, $7858
    adc e
    ld [bc], a
    ld e, b
    ld e, b
    adc e
    inc bc
    ld e, b
    ld a, b
    adc e
    inc b
    ld b, [hl]
    adc b
    ld l, $00
    jr jr_011_656f

    ld l, $01
    jr z, jr_011_6553

    ld l, $04
    jr z, @+$1a

    rst $38
    ld a, [c]
    ld a, $30
    ld e, b
    jr c, jr_011_6584

    ld sp, $7848
    ld a, $32
    ld e, b
    jr c, jr_011_658c

    inc sp
    ld e, b
    jr c, jr_011_6590

jr_011_6552:
    inc [hl]

jr_011_6553:
    ld e, b
    jr c, jr_011_64e0

    ld bc, $6848
    cp b
    ld bc, $5858
    rst $38
    ld hl, sp+$2d
    nop
    inc hl
    rst $38
    ld hl, sp+$2d
    ld [bc], a
    ld h, $ff
    ld a, [c]
    sbc h
    nop
    ld e, b
    ld e, b
    rst $38
    pop af

jr_011_656f:
    ld [hl], c
    nop
    rst $38
    pop af
    ld e, a
    inc bc
    ld [hl], c
    ld bc, $73f2
    nop
    jr z, jr_011_65b4

    ld [hl], e
    ld bc, $4818
    ld [hl], e
    ld [bc], a
    jr jr_011_659c

jr_011_6584:
    rst $38
    ld a, [c]
    cpl
    add b
    jr c, jr_011_65e2

    di
    sub a

jr_011_658c:
    ld b, b
    rst $38
    ld a, [c]
    sbc l

jr_011_6590:
    ld bc, $3838
    ld b, h
    add hl, bc
    jr z, @+$62

    rst $38
    ld a, [c]
    ccf
    add b
    dec l

jr_011_659c:
    jr c, @+$01

    ld a, [c]
    ld a, [hli]
    ld [$1861], sp
    ld a, [hli]
    add hl, bc
    ld h, c
    adc b
    ld a, [hli]
    ld b, $51
    jr @+$2c

    rlca
    ld d, c
    adc b
    ld a, [hli]
    inc b
    ld b, c
    adc b
    ld a, [hli]

jr_011_65b4:
    dec b
    ld b, c
    jr jr_011_65e2

    ld [bc], a
    ld sp, $2a18
    inc bc
    ld sp, $2a88
    nop
    ld hl, $2a18
    ld bc, $8821
    rst $38
    ld a, [c]
    jp nz, $4800

    ld e, b
    inc h
    inc bc
    jr c, @+$6a

    rst $38
    ld a, [c]
    inc h
    nop
    jr z, jr_011_662f

    rst $38
    ld a, [c]
    ld l, e
    add hl, de

jr_011_65db:
    jr jr_011_6615

    rst $38
    ld a, [c]
    rlc e
    ld c, b

jr_011_65e2:
    ld a, b
    rst $38
    ld a, [c]
    adc c
    nop
    jr z, @+$52

    adc c
    ld bc, $3838
    adc c
    ld b, $38
    ld l, b
    push hl
    nop
    ld c, b
    jr z, jr_011_65db

    ld bc, $7848
    rst $38
    ld a, [c]
    xor h
    nop
    ld e, b
    jr c, @+$01

    ld a, [c]
    ld c, h
    ld bc, $6828
    ld c, h
    ld bc, $6838
    xor h
    ld bc, $3858
    rst $38
    ld a, [c]
    adc a
    nop
    jr c, jr_011_6663

    rst $38
    ld a, [c]

jr_011_6615:
    adc d
    nop
    jr z, jr_011_6661

    adc d
    ld [bc], a
    jr z, @+$4a

    adc d
    inc bc
    jr z, jr_011_6649

    rst $38
    ld a, [c]
    jr nc, jr_011_6627

    ld e, b
    adc b

jr_011_6627:
    jr nc, jr_011_662c

    jr z, jr_011_6673

    rst $38

jr_011_662c:
    ld a, [c]
    add hl, sp
    nop

jr_011_662f:
    jr c, @+$5a

    add hl, sp
    ld bc, $4828
    add hl, sp
    ld [bc], a
    ld c, b
    jr jr_011_6673

    inc bc
    jr z, jr_011_66b5

    add hl, sp
    inc b
    jr c, jr_011_6699

    rst $38
    ld a, [c]
    inc l
    nop
    jr nc, @+$52

    rst $38
    ld a, [c]

jr_011_6649:
    ld b, a
    ld bc, $8028
    ld b, a
    inc bc
    jr z, jr_011_66b9

    ld b, a
    inc b
    jr z, @+$52

    ld b, [hl]
    nop
    ld c, b
    jr z, @+$01

    ld a, [c]
    pop hl
    nop
    jr jr_011_66a7

    di
    and b

jr_011_6661:
    ld b, b
    rst $38

jr_011_6663:
    ld a, [c]
    jr nc, jr_011_668c

    jr z, jr_011_6690

    rst $38
    ld a, [c]
    sub l
    nop
    jr z, @+$7a

    rst $38
    ld a, [c]
    pop hl
    nop
    ld c, b

jr_011_6673:
    ld c, b
    ld l, e
    rla
    nop
    nop
    ld hl, sp+$05
    ld bc, $ff52
    ld a, [c]
    ld c, h

jr_011_667f:
    ld a, [bc]
    ld [hl], a
    add hl, de
    ld c, h
    dec bc
    ld a, [bc]
    add hl, de
    ld c, h
    dec c
    ld [$4c88], sp
    inc c

jr_011_668c:
    ld [hl], a
    adc b
    and $00

jr_011_6690:
    nop
    nop
    rst $38
    ld a, [c]
    push de
    nop
    jr nz, jr_011_66e8

    rst $38

jr_011_6699:
    ld a, [c]
    ld b, a
    ld c, $28
    ld b, h
    ld b, a
    rrca
    jr z, jr_011_6706

    ld b, a
    db $10
    jr z, @-$7a

    ld b, [hl]

jr_011_66a7:
    ld [bc], a
    ld c, b
    jr z, jr_011_66e2

    add [hl]
    ld e, b
    ld a, b
    rst $38
    ld a, [c]
    ld b, a
    nop
    jr z, jr_011_66f4

    ld b, a

jr_011_66b5:
    ld [bc], a
    jr z, jr_011_6718

    ld b, a

jr_011_66b9:
    dec b
    jr z, @-$7e

    ld b, [hl]
    ld bc, $1858
    rst $38
    ld a, [c]
    add hl, hl
    nop
    ld c, b
    jr z, jr_011_667f

    nop
    jr c, jr_011_66e2

    rst $38
    ld a, [c]
    ld e, d
    nop
    ld b, b
    ld d, b
    rst $38
    ld a, [c]
    ld l, e
    nop
    ld c, b
    jr z, jr_011_6742

    ld bc, $7838
    ld l, e
    inc b
    jr c, jr_011_6756

    db $db
    ld bc, $3818

jr_011_66e2:
    ld hl, sp+$05
    ld bc, $ff68
    ld a, [c]

jr_011_66e8:
    adc e
    nop
    jr jr_011_6754

    adc e
    ld bc, $6818
    call $3800
    ld d, b

jr_011_66f4:
    rst $38
    di
    xor b
    ld b, b
    rst $38
    di
    ld e, l
    ld b, d
    rst $38
    ld a, [c]
    xor e
    ld bc, $5038
    di
    ld h, d
    ld b, d
    rst $38

jr_011_6706:
    ld a, [c]
    rlc b
    ld e, $50
    rst $38
    ld a, [c]
    ld d, a
    nop
    ld c, b
    ld a, b
    ld c, h
    add hl, bc
    ld [$ff58], sp
    ld a, [c]
    ld b, e

jr_011_6718:
    add b
    jr z, jr_011_673b

    ld c, c
    add b
    ld l, b
    ld a, b
    rst $38
    di
    ld a, [hl]
    ld b, d
    rst $38
    di
    sbc l
    ld b, d
    rst $38
    di
    jp nz, $ff42

    di
    rst JumpTable
    ld b, d
    rst $38
    di
    nop
    ld b, e
    rst $38
    ld a, [c]
    ld l, e
    ld de, $6868
    sbc b
    nop

jr_011_673b:
    ld a, b
    adc b
    di
    dec l
    ld b, e
    rst $38
    di

jr_011_6742:
    ld d, d
    ld b, e
    rst $38
    di
    ld [hl], e
    ld b, e
    rst $38
    di
    adc d
    ld b, e
    rst $38
    di
    or [hl]
    ld b, e
    rst $38
    di
    cp l
    ld b, e

jr_011_6754:
    rst $38
    di

jr_011_6756:
    jp z, $ff43

    di
    db $db
    ld b, e
    rst $38
    ld a, [c]
    ld [hli], a
    nop
    ld c, b
    ld c, b
    ld hl, $2800
    ld l, b
    rst $38
    pop af
    add l
    nop
    rst $38
    pop af
    ld c, [hl]
    dec bc
    push af
    db $ec
    ld b, e
    rst $38
    di
    pop af
    ld b, e
    ld a, [c]
    or [hl]
    ld a, [bc]
    ld e, b
    ld c, b
    rst $38
    ld a, [c]
    and l
    add hl, bc
    ld hl, sp+$48
    rst $38
    ld a, [c]
    sbc l
    nop
    jr z, jr_011_67ae

    sbc l
    inc b
    jr jr_011_67a2

    rst $38
    rst $38
    di
    ld bc, $ff44
    di
    db $fc
    ld b, e
    rst $38
    ld a, [c]
    call c, Call_011_5801
    ld c, b
    call c, Call_011_5802
    ld a, b
    di
    ld b, $44
    rst $38
    di

jr_011_67a2:
    ld de, $ff44
    ld a, [c]
    sub b
    ld [bc], a
    ld a, b
    ld a, b
    di
    inc e
    ld b, h
    rst $38

jr_011_67ae:
    di
    inc e
    ld b, h
    rst $38
    di
    ld hl, $ff44
    di
    ld a, [hli]
    ld b, h
    rst $38
    di
    ld [hl], $44
    rst $38
    ld a, [c]
    ld [hli], a
    ld bc, $4828
    di
    ccf
    ld b, h
    rst $38
    di
    ld d, d
    ld b, h
    rst $38
    di
    ld h, e
    ld b, h
    rst $38
    ld a, [c]
    daa
    ld bc, $4813
    rst $38
    di
    ld [hl], c
    ld b, h
    rst $38
    di
    ld a, b
    ld b, h
    rst $38
    rst $30
    nop
    ld e, d
    ld bc, $5030
    di
    add c
    ld b, h
    rst $38
    di
    add [hl]
    ld b, h
    rst $38
    rst $38
    di
    adc a
    ld b, h
    rst $38
    ld a, [c]
    or [hl]
    dec bc
    jr z, jr_011_686d

    di
    sbc b
    ld b, h
    rst $38
    di
    sbc l
    ld b, h
    rst $38
    ld a, [c]
    ld l, e
    ld a, [bc]
    ld l, b
    adc b
    rst $38
    di
    and d
    ld b, h
    rst $38
    di
    and a
    ld b, h
    rst $38
    di
    cp d
    ld b, h
    rst $38
    pop af
    ld l, h
    nop
    push af
    jp $ff44


    ld a, [c]
    sbc h
    nop
    ld c, b
    ld l, b
    di
    ret nc

    ld b, h
    rst $38
    ld a, [c]
    ld c, h
    nop
    jr c, jr_011_687c

    ld e, b
    nop
    ld d, [hl]
    ld e, b
    cp h
    inc b
    ld l, b
    ld a, b
    rst $38
    ld a, [c]
    sbc b
    nop
    ld a, b
    ld c, b
    di
    rst AddAToHL
    ld b, h
    rst $38
    di
    ld [c], a
    ld b, h
    rst $38
    ld a, [c]
    ld [hli], a
    ld [bc], a
    jr z, jr_011_6897

    rst $38
    di
    db $ed
    ld b, h
    rst $38
    di
    db $fc
    ld b, h
    rst $38
    pop af
    ld e, a
    ld b, $f3
    inc bc
    ld b, l
    rst $38
    ld a, [c]
    sbc b
    ld bc, $8808
    ld l, e
    ld a, [de]
    jr jr_011_68a0

    di
    inc b
    ld b, l
    rst $38
    rst $30
    nop
    ld e, d
    ld [bc], a
    jr nc, jr_011_68b2

    di
    add hl, bc
    ld b, l
    rst $38
    di
    ld a, [bc]
    ld b, l
    rst $38
    ld a, [c]
    daa
    ld [bc], a

jr_011_686d:
    ld l, b
    jr nz, @+$01

    rst $30
    nop
    ld e, d
    inc bc
    jr nc, jr_011_68c6

    di
    dec d
    ld b, l
    rst $38
    ld a, [c]
    sbc b

jr_011_687c:
    ld bc, $8808
    di
    ld d, $45
    rst $38
    ld a, [c]
    ret nc

    nop
    jr c, jr_011_68b8

    di
    ld hl, $ff45
    ld a, [c]
    or [hl]
    ld b, $38
    ld c, b
    rst $38
    di
    ld [hli], a
    ld b, l
    rst $38
    ld a, [c]

jr_011_6897:
    jp $5800


    ld d, b
    di

jr_011_689c:
    daa
    ld b, l
    rst $38
    di

jr_011_68a0:
    jr nc, jr_011_68e7

    rst $38
    ld a, [c]
    or [hl]
    rlca
    ld e, b
    jr c, jr_011_689c

    dec [hl]
    ld b, l
    rst $38
    ld a, [c]
    ld l, e
    ld [bc], a
    jr jr_011_68d9

    rst $38

jr_011_68b2:
    ld a, [c]
    ld l, e
    jr jr_011_68de

    ld a, b
    di

jr_011_68b8:
    ld b, l
    ld b, l
    rst $38
    di
    ld d, b
    ld b, l
    rst $38
    di
    ld d, e
    ld b, l
    rst $38
    di
    ld [hli], a
    ld b, l

jr_011_68c6:
    rst $38
    pop af
    ld [hl], c
    add hl, bc
    ld l, e
    inc de
    di
    ld h, d
    ld b, l
    rst $38
    di
    ld h, a
    ld b, l
    rst $38
    pop af
    ld e, a
    ld [bc], a
    ld [hl], c
    inc b

jr_011_68d9:
    ld a, [c]
    ld [hl], e
    nop
    jr z, jr_011_6946

jr_011_68de:
    ld [hl], e
    ld bc, $7818
    ld [hl], e
    ld [bc], a
    jr z, jr_011_693e

    rst $38

jr_011_68e7:
    ld a, [c]
    ret nc

    ld bc, $4828
    rst $38
    di
    adc b
    ld b, l

jr_011_68f0:
    rst $38
    ld a, [c]
    or [hl]

jr_011_68f3:
    add hl, bc
    jr c, jr_011_691e

    di
    ld [hli], a
    ld b, l
    rst $38
    ld a, [c]
    ret nc

    inc b
    ld e, e
    jr nc, jr_011_68f3

    sub c
    ld b, l
    rst $38
    di
    or d
    ld b, l

jr_011_6906:
    rst $38
    di
    adc b
    ld b, l
    rst $38
    di
    pop hl
    ld b, l
    rst $38
    ld a, [c]
    pop hl
    nop
    jr c, jr_011_696c

    rst $38
    ld a, [c]
    ld l, e
    ld a, [bc]
    ld c, b
    ld a, b
    rst $38
    di

jr_011_691c:
    ldh a, [rLYC]

jr_011_691e:
    rst $38
    di
    db $eb
    ld b, l
    rst $38
    ld a, [c]
    or [hl]
    inc c
    ld l, b
    jr jr_011_691c

    rst $38
    ld b, l
    rst $38
    di
    inc c
    ld b, [hl]
    rst $38
    ld a, [c]
    ret nc

    ld [bc], a
    ld c, b
    jr nc, jr_011_6906

    dec b
    ld c, b
    ld e, b
    di
    rla
    ld b, [hl]
    rst $38
    di

jr_011_693e:
    ld l, c
    ld b, d
    rst $38
    ld a, [c]
    ld l, e
    inc bc
    jr jr_011_697e

jr_011_6946:
    rst $38
    ld a, [c]
    ld l, e
    ld hl, $701c
    rst $38
    ld a, [c]
    ld l, e
    dec b
    jr z, jr_011_698a

    ret nc

    ld b, $49
    ld e, b
    rst $38
    di
    ld e, $46
    rst $38
    di
    cpl
    ld b, [hl]
    rst $38
    ld a, [c]
    ld [hli], a
    inc bc
    jr z, jr_011_69bc

    rra
    ld a, [bc]
    jr jr_011_68f0

    di
    ld a, [hl-]
    ld b, [hl]
    rst $38

jr_011_696c:
    ld a, [c]
    pop hl
    nop
    ld e, b
    ld c, b
    di
    ld c, c
    ld b, [hl]
    rst $38
    ld a, [c]
    ret nc

    dec b
    ld c, b
    ld e, b
    rst $38
    ld a, [c]
    sbc h
    nop

jr_011_697e:
    ld e, b
    ld a, b
    di
    ld d, h
    ld b, [hl]
    rst $38
    di
    ld h, d
    ld b, [hl]
    rst $38
    ld a, [c]
    ld l, e

jr_011_698a:
    ld a, [bc]
    jr jr_011_69c5

    di
    ld l, d
    ld b, [hl]
    rst $38
    ld a, [c]

jr_011_6992:
    rra
    ld [bc], a
    ld e, b
    jr nz, jr_011_69b6

    inc bc
    ld l, b
    ld e, b
    rst $38
    ld a, [c]
    adc $06
    ld e, b
    jr c, jr_011_6992

    ld e, a
    dec b
    ld [hl], c
    ld b, $ff
    ld a, [c]
    or [hl]
    inc bc
    ld e, b
    jr c, @+$01

    di
    ld a, d
    ld b, [hl]
    rst $38
    rst $30
    nop
    ld e, d
    inc b
    jr nc, jr_011_69f6

jr_011_69b6:
    rst $38
    ld a, [c]
    ld l, $02
    ld c, b
    ld a, b

jr_011_69bc:
    ld l, $03
    ld c, b
    ld a, b
    pop af
    ld e, a
    inc b
    ld [hl], c
    dec b

jr_011_69c5:
    halt
    db $76
    ld bc, $0276
    rst $38
    ld a, [c]
    rra
    dec c
    ld l, b
    ld l, b
    ld a, $31
    jr @+$6a

    rst $38
    pop af
    sbc d
    ld [bc], a
    ld [hl], c
    rlca
    rst $38
    ld a, [c]
    ld d, d
    nop
    jr c, jr_011_6a31

    rst $38
    ld a, [c]
    adc h
    nop
    jr z, jr_011_69ff

    rst $38
    ld a, [c]
    or [hl]
    nop
    jr z, jr_011_6a05

    adc h
    ld bc, $2868
    rst $38
    di
    ld [hl], d
    ld b, d
    rst $38

jr_011_69f6:
    di
    ld l, [hl]
    ld b, d
    rst $38
    ld a, [c]
    or [hl]
    ld [bc], a
    jr z, jr_011_6a57

jr_011_69ff:
    rst $38
    di
    ld [hl], a
    ld b, d
    rst $38
    rst $38

jr_011_6a05:
    ld a, [c]
    or [hl]
    ld [$4828], sp
    di
    sub d
    ld b, [hl]
    rst $38
    ld a, [c]
    ld [hli], a
    inc b
    jr z, jr_011_6a6b

    rst $38
    di
    cpl
    ld b, h
    rst $38
    di
    xor e
    ld b, [hl]
    rst $38
    ld a, [c]
    pop hl
    nop
    jr c, @+$3a

    rst $38
    di
    cp b
    ld b, [hl]
    rst $38
    ld a, [c]
    pop hl
    nop
    jr z, @+$2a

    di
    cp a
    ld b, [hl]
    rst $38
    di
    cp b

jr_011_6a31:
    ld b, [hl]
    rst $38
    ld a, [c]
    ld e, c
    nop
    dec l
    ld c, b
    rst $38
    ld a, [c]
    sbc h
    nop
    jr z, jr_011_6aa6

    di
    rst $20
    ld b, [hl]
    rst $38
    di
    db $ec
    ld b, [hl]
    rst $38
    rst $30
    nop
    ld e, d
    dec b
    jr nz, jr_011_6a9c

    rst $38
    di
    pop af
    ld b, [hl]
    rst $38
    di
    ld hl, sp+$46
    rst $38
    ld a, [c]
    or [hl]

jr_011_6a57:
    ld bc, $5848
    rst $38
    pop af
    ld l, e
    ld [$f1f3], sp
    ld b, [hl]
    rst $38
    di
    ld b, $47
    rst $38
    di
    dec bc
    ld b, a
    rst $38
    di

jr_011_6a6b:
    db $10
    ld b, a
    rst $38
    di
    dec d
    ld b, a
    rst $38
    ld a, [c]
    ld l, e
    rlca
    add b
    ld d, l
    ld l, e
    rlca
    ld b, b
    ld h, l
    rst $38
    di
    ld h, $47
    rst $38
    di

jr_011_6a81:
    dec sp
    ld b, a
    rst $38
    di
    ld b, h
    ld b, a
    rst $38
    ld a, [c]
    ld l, e
    ld b, $58
    jr c, jr_011_6a81

    adc e
    ld b, [hl]
    rst $38
    ld a, [c]
    sbc h
    nop
    jr z, jr_011_6abe

    rst $38
    ld a, [c]
    sbc b
    nop
    ld a, b
    adc b

jr_011_6a9c:
    sub b
    nop
    jr z, jr_011_6af0

    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    ld b, b
    ld [hl], b

jr_011_6aa6:
    ld e, [hl]

jr_011_6aa7:
    ld bc, $3060
    di
    ld c, [hl]
    ld b, b
    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    ld d, b
    jr nc, jr_011_6aa7

    ld c, [hl]
    ld b, b
    di
    ld c, c
    ld b, a
    rst $38
    ld a, [c]
    ld c, l
    nop
    ld l, b

jr_011_6abe:
    adc b
    rst $38
    ld a, [c]

jr_011_6ac1:
    ld e, [hl]
    nop
    jr nz, jr_011_6b05

    ld e, [hl]
    nop
    ld b, b
    add b
    ld e, [hl]
    nop
    ld h, b
    jr nc, jr_011_6ac1

    ld c, [hl]
    ld b, b
    di
    ld d, [hl]
    ld b, a
    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    jr nz, jr_011_6b39

    ld e, [hl]
    nop
    ld b, b
    jr nz, jr_011_6b3c

    nop
    ld h, b
    add b
    di
    ld d, [hl]
    ld b, a
    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    ld d, b
    jr nz, jr_011_6b49

jr_011_6aeb:
    nop
    ld h, b
    ld h, b
    di
    ld d, [hl]

jr_011_6af0:
    ld b, a
    rst $38
    ld a, [c]
    ld e, [hl]
    ld [bc], a
    ld b, b
    jr nc, jr_011_6aeb

    ld c, [hl]
    ld b, b
    di

jr_011_6afb:
    ld [hl], h
    ld b, a
    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    ld b, b
    add b
    ld e, [hl]
    inc bc

jr_011_6b05:
    ld d, b
    jr nc, jr_011_6afb

    ld c, [hl]
    ld b, b
    di

jr_011_6b0b:
    ld d, [hl]
    ld b, a
    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    jr nz, jr_011_6b73

    ld e, [hl]
    nop
    ld b, b
    jr nz, jr_011_6b0b

    ld c, [hl]
    ld b, b
    di

jr_011_6b1b:
    ld d, [hl]
    ld b, a
    rst $38
    ld a, [c]
    ld e, [hl]
    nop
    jr nz, jr_011_6b93

    ld e, [hl]
    inc b
    ld d, b
    jr nc, jr_011_6b1b

    ld c, [hl]
    ld b, b
    di
    ld a, b
    ld b, a
    rst $38
    ld a, [c]
    ld l, e
    inc e
    jr jr_011_6b7b

    di
    ld l, l
    ld b, a
    rst $38
    di
    ld l, l

jr_011_6b39:
    ld b, a
    rst $38
    ld a, [c]

jr_011_6b3c:
    or [hl]
    dec c
    ld l, b
    ld l, b
    di
    ld c, [hl]
    ld b, b
    di
    ld a, l
    ld b, a
    rst $38
    di
    ld c, [hl]

jr_011_6b49:
    ld b, b
    di
    ld a, b
    ld b, a
    rst $38
    di
    ld c, [hl]
    ld b, b
    di
    ld d, d
    ld b, a
    rst $38
    ld a, [c]
    ld [hl], h
    inc b
    jr nz, jr_011_6bc2

    or d
    ld [bc], a
    ld l, b
    ld a, b
    or c
    db $10
    jr jr_011_6b7a

    rst $38
    ld a, [c]
    or [hl]
    ld c, $28
    jr z, @+$01

    ld a, [c]
    ld [hl], h
    rlca
    jr nz, jr_011_6bd6

    or c
    ld de, $1838
    rst $38

jr_011_6b73:
    ld a, [c]
    ld [hl], h
    ld [bc], a
    db $10
    ld e, b
    ld l, e
    dec d

jr_011_6b7a:
    ld d, b

jr_011_6b7b:
    ld d, b
    rst $38
    ld a, [c]
    ld e, [hl]
    dec b
    ld d, b
    ld h, b
    di
    ld c, [hl]
    ld b, b
    di
    add h
    ld b, a
    rst $38
    di
    ld a, b
    ld b, a
    rst $38
    ld a, [c]
    sbc b
    ld bc, $4808
    rst $38

jr_011_6b93:
    ld a, [c]
    cp b
    ld [bc], a
    ld c, b
    jr c, @+$01

    ld a, [c]
    sbc [hl]
    nop
    ld b, b
    ld d, b
    ld b, b
    ld a, [bc]
    inc h
    ld l, b
    rst $38
    ld a, [c]
    or e
    nop
    ld c, b
    ld c, b
    ld [hli], a
    dec b
    ld c, b
    ld c, b
    rst $38
    ld a, [c]
    ld l, e
    db $10
    ld l, b
    ld l, b
    di
    call nc, $ff46
    pop af
    adc b
    ld bc, $f3ff
    adc e
    ld b, a
    rst $38
    di
    sub b
    ld b, a
    rst $38

jr_011_6bc2:
    di
    sub c
    ld b, a
    rst $38
    di
    sub c
    ld b, a
    rst $38
    pop af
    call c, $f30e
    and l
    ld b, a
    rst $38
    pop af
    call c, $ff0e
    di

jr_011_6bd6:
    xor d
    ld b, a
    rst $38
    pop af
    ld l, e
    ld [de], a
    rst $38
    pop af
    call c, $f30e
    cp [hl]
    ld b, a
    rst $38
    ld a, [c]
    pop hl
    nop
    jr z, jr_011_6c11

    rst $38
    di
    call $ff47
    pop af
    call c, $f30e
    ld_long $ff47, a
    pop af
    call c, $f30e
    sbc d
    ld b, a
    rst $38
    pop af
    ld l, e
    ld e, $ff
    di
    di
    ld b, a
    rst $38
    di
    ld_long a, $ff47
    di
    inc de
    ld c, b
    rst $38
    di
    jr jr_011_6c57

    rst $38
    ld a, [c]

jr_011_6c11:
    rra
    ld [$6868], sp
    rst $38
    ld a, [c]
    sbc b
    inc bc
    ld l, b
    sbc b
    or [hl]
    inc b
    ld c, b
    ld c, b
    di
    ld hl, $ff48
    ld a, [c]
    sbc b
    ld [bc], a
    ld l, b
    ld [$f2ff], sp
    ld [hl], $81
    ld e, b
    ld l, b
    ld [hl], $82
    ld e, b
    ld l, b
    ld [hl], $84
    ld e, b
    ld l, b
    rra
    add hl, bc
    jr jr_011_6c92

    rst $38
    di
    adc h
    ld b, c
    rst $38
    di
    sbc e
    ld b, c
    rst $38
    di
    xor d
    ld b, c
    rst $38
    di
    ld a, h
    ld b, c
    rst $38
    di
    or l
    ld b, c
    rst $38
    pop af
    call c, $f800
    add hl, bc
    add b
    ld l, e
    di

jr_011_6c57:
    ret z

    ld b, c
    rst $38
    ld a, [c]
    stop
    jr z, jr_011_6cb7

    inc e
    nop
    jr c, jr_011_6c9b

    rst $38
    di
    db $76
    ld b, b
    rst $38
    di
    or a
    ld b, b
    rst $38
    di
    ld h, b
    ld b, b
    rst $38
    ld a, [c]
    sub $00
    ld c, b
    ld a, b
    rst $38
    ld a, [c]
    sub $02
    ld c, b
    ld a, b
    rst $38
    di
    cp d
    ld b, c
    rst $38
    ld a, [c]
    ld d, l
    nop
    ld l, b
    ld e, b
    ld d, l
    ld bc, $5868
    rst $38
    ld a, [c]
    call z, $4800

jr_011_6c8e:
    ld a, b
    rst $38
    ld a, [c]
    rra

jr_011_6c92:
    dec bc
    ld a, b
    ld a, b
    rst $38
    ld a, [c]
    rra
    inc c
    jr c, jr_011_6d13

jr_011_6c9b:
    rst $38
    ld a, [c]
    ld e, e
    add b
    ld c, b
    ld a, b
    rst $38
    ld a, [c]
    sub b
    inc b

jr_011_6ca5:
    ld e, b
    ld a, b
    rst $38
    ld a, [c]
    sub b
    dec b
    ld e, b
    ld a, b
    rst $38
    pop af
    sbc c
    nop
    di
    or b
    ld b, b
    rst $38
    pop af
    sbc c

jr_011_6cb7:
    ld bc, $b0f3
    ld b, b
    rst $38
    pop af
    sbc c
    ld [bc], a
    di
    or b
    ld b, b
    rst $38
    pop af
    sbc c
    inc bc
    di
    or b
    ld b, b
    rst $38
    pop af
    sbc c
    inc b
    di
    or b
    ld b, b
    rst $38
    pop af
    sbc c
    dec b
    di
    or b

jr_011_6cd6:
    ld b, b
    rst $38
    pop af
    sbc c
    ld b, $f3
    or b
    ld b, b
    rst $38
    ld a, [c]
    sbc c
    nop
    ld b, [hl]
    jr @+$01

    pop af
    sbc c
    rlca
    di
    or b
    ld b, b
    rst $38
    pop af
    rra
    rlca
    ld a, [c]
    sub $01
    ld c, b
    ld a, b
    rst $38
    ld a, [c]
    ld a, c
    ld [$4848], sp
    ld a, c
    db $10
    ld e, b
    adc b
    ld a, c
    ld [$8868], sp
    rst $38
    ld a, [c]
    jp z, $4800

    ld a, b
    rst $38
    ld a, [c]
    db $dd
    nop
    jr c, jr_011_6c8e

    rst $38
    ld a, [c]
    sub b
    ld b, $38

jr_011_6d13:
    jr z, jr_011_6ca5

    rlca
    ld a, h
    ld a, b
    rst $38
    ld a, [c]
    ld l, e
    ld a, [bc]
    jr c, jr_011_6cd6

    rst $38
    ld a, [c]
    push de
    ld bc, $3838
    di
    cp [hl]
    ld b, b
    rst $38
    ld a, [c]

jr_011_6d29:
    ld b, l
    nop
    ld l, b
    ld e, b
    rst $38
    di
    push bc

jr_011_6d30:
    ld b, b

jr_011_6d31:
    rst $38
    di
    ret c

    ld b, b

jr_011_6d35:
    rst $38
    di
    rst $20
    ld b, b
    rst $38
    di
    or $40
    rst $38
    ld a, [c]
    ld a, c
    dec b
    add b
    ld a, b
    ld l, e
    dec c
    ld c, b
    adc b
    ld hl, sp+$09
    nop
    ld b, [hl]
    di
    or $40
    rst $38
    ld a, [c]
    rra
    dec b
    nop
    nop
    ld l, e
    ld c, $28
    xor b
    rst $38
    pop af
    rra
    ld b, $f2
    adc l
    nop
    jr z, jr_011_6d29

    adc l
    ld bc, $c828
    adc l
    ld [bc], a
    jr z, jr_011_6d31

    adc l
    inc bc
    jr z, jr_011_6d35

    rst $38
    di
    ei
    ld b, b
    rst $38
    di
    ld [de], a
    ld b, c
    rst $38
    di
    dec de
    ld b, c
    rst $38
    di
    ld h, $41
    rst $38
    di
    or $40
    rst $38
    di
    add hl, sp
    ld b, c
    rst $38
    di
    ld e, h
    ld b, c
    rst $38
    ld a, [c]
    ld l, e
    ld a, [bc]
    jr z, jr_011_6e07

    rst $38
    ld a, [c]
    dec sp
    ld d, $78
    ld a, b
    rst $38
    ld a, [c]
    dec sp
    inc d
    ld c, b
    ld e, b
    dec sp
    dec d
    ld e, b
    jr jr_011_6ddb

    rlca
    adc b
    cp b
    rst $38
    ld a, [c]
    dec sp
    jr nz, jr_011_6d30

    sbc b
    dec sp
    ld de, $5828
    dec sp
    ld [bc], a
    ld l, b
    xor b
    dec sp
    inc de
    ld a, b
    jr @+$01

    di
    ld l, e
    ld b, c
    rst $38
    di
    ld a, h
    ld b, c
    rst $38
    di
    add c
    ld b, c
    rst $38
    di
    add [hl]
    ld b, c
    rst $38
    ld a, [c]
    ld l, e
    inc c
    jr c, @+$7a

    ld l, e
    rrca
    jr c, jr_011_6e47

    ld c, l
    ld bc, $0000
    rst $38
    di
    call $ff41
    di
    pop hl
    ld b, c

jr_011_6ddb:
    rst $38
    di
    rst $28
    ld b, c
    rst $38
    di
    inc bc
    ld b, d
    rst $38
    ld a, [c]
    ld [hl], b
    nop
    jr c, jr_011_6e41

    db $db
    ld [bc], a
    ld e, b
    ld l, b
    rst $38
    ld a, [c]
    rra
    nop
    jr z, @+$7a

    ld [hl], b
    ld bc, $0000
    rst $38
    ld a, [c]
    sub b
    ld bc, $d822
    rst $38
    ld a, [c]
    call $3801
    ld d, b
    rst $38
    di
    rla
    ld b, d

jr_011_6e07:
    rst $38
    ld a, [c]
    call $1802
    ret z

    di
    dec a
    ld b, d
    rst $38
    ld a, [c]

jr_011_6e12:
    or c
    jr @+$5a

    ld l, b
    or c
    add hl, de
    ld c, b
    ld d, b
    or c
    ld a, [de]
    ld c, b
    sbc b
    rst $38
    ld a, [c]
    or c
    ld [de], a
    ld e, b
    ld l, b
    or c
    inc de
    ld c, b
    adc b
    or c
    inc d
    jr c, jr_011_6e84

    or c
    dec d
    jr z, jr_011_6ea8

    or c
    ld d, $78
    adc b
    rst $38
    ld a, [c]
    inc hl
    jr nc, @-$66

    ld a, b
    ld hl, sp+$03
    nop
    ld d, a
    rst $38
    ld a, [c]
    inc hl

jr_011_6e41:
    ld sp, $7030
    rst $38
    ld a, [c]
    inc hl

jr_011_6e47:
    ld bc, $7030
    rst $38
    ld a, [c]
    inc hl
    ld de, $7030
    rst $38
    ld a, [c]
    inc hl
    ld hl, $7030
    rst $38
    ld a, [c]
    or e
    ld [bc], a
    jr z, jr_011_6e94

    ld [hli], a
    rlca
    jr c, jr_011_6e98

    ld [c], a
    nop
    add hl, de
    jr nc, jr_011_6e47

    nop
    add hl, de
    ld b, b
    rst $38
    ld a, [c]
    jr nc, jr_011_6e81

    jr jr_011_6e96

    jr nc, jr_011_6e86

    jr jr_011_6eaa

    rst $38
    ld a, [c]
    pop hl
    nop
    jr z, jr_011_6ec0

    jr nc, jr_011_6e91

    ld c, b
    ld a, b
    jr nc, jr_011_6e96

    ld c, b
    adc b
    ld l, e

jr_011_6e81:
    ld h, $48
    ld a, h

jr_011_6e84:
    rst $38
    ld a, [c]

jr_011_6e86:
    ld l, e
    add hl, bc
    jr jr_011_6e12

    inc sp
    add b
    jr z, jr_011_6ec6

    inc sp
    add c
    ld c, b

jr_011_6e91:
    ld e, b
    inc sp
    add d

jr_011_6e94:
    ld e, b
    ld a, b

jr_011_6e96:
    rst $38
    ld a, [c]

jr_011_6e98:
    ld l, e
    add hl, bc
    jr jr_011_6ed4

    ld d, c
    nop
    ld [$ff50], sp
    rst $38
    ld a, [c]
    ld d, e
    nop
    ld c, b
    jr c, jr_011_6ed8

jr_011_6ea8:
    nop
    ld l, b

jr_011_6eaa:
    ld a, b
    rst $38
    ld a, [c]
    ld d, c
    nop
    ld e, b
    ld [hl], b
    rst $38
    ld a, [c]
    ld [hl-], a
    ld bc, $1858
    rst $38
    rst $38
    ld a, [c]
    pop hl
    nop
    jr z, jr_011_6f36

    ld l, e
    dec bc

jr_011_6ec0:
    dec h
    ld bc, $f2ff
    inc sp
    add e

jr_011_6ec6:
    ld e, b
    ld c, b
    inc sp
    add h
    jr c, jr_011_6ed4

    inc sp
    add l
    jr z, jr_011_6f08

    rst $38
    ld a, [c]
    jr nc, @+$1b

jr_011_6ed4:
    ld c, b
    ld e, b
    rst $38
    ld a, [c]

jr_011_6ed8:
    ld [hl-], a
    ld [bc], a
    ld l, b
    jr z, @+$01

    ld a, [c]
    ld [hl-], a
    nop
    jr c, @+$7a

    rst $38
    ld a, [c]
    ld l, e
    add hl, bc
    ld l, b
    adc b
    pop hl
    nop
    jr c, @+$2a

    jr nc, jr_011_6f08

    ld h, h
    ld e, b
    rst $38
    ld a, [c]
    jr nc, jr_011_6f0f

    ld c, b
    ld c, b
    rst $38
    ld a, [c]
    jr nc, jr_011_6f16

    jr @+$5a

    ret z

    nop
    jr c, @+$6a

    ld [hl-], a
    inc bc
    ld l, b
    ld a, b
    rst $38
    ld a, [c]
    jr nc, @+$1f

jr_011_6f08:
    ld e, b
    jr z, @+$01

    ld a, [c]
    inc hl
    ld b, b
    ld d, b

jr_011_6f0f:
    ld d, b
    rst $38
    ld a, [c]
    ld [hli], a
    ld [$7848], sp

jr_011_6f16:
    rst $38
    ld a, [c]
    ld d, c
    nop
    jr jr_011_6f5c

    rst $38
    ld a, [c]
    jr nc, jr_011_6f3e

    ld c, b
    jr z, @+$53

    nop
    ld [$ff30], sp
    ld a, [c]
    ld d, c
    ld bc, $4820
    rst $38
    rst $38
    ld a, [c]
    ld [hl-], a
    inc b
    jr z, jr_011_6f5b

    rst $38
    ld a, [c]
    ld l, e

jr_011_6f36:
    add hl, bc
    ld c, b
    ld l, b
    rst $38
    ld a, [c]
    ld l, e

jr_011_6f3c:
    jr jr_011_6fa6

jr_011_6f3e:
    jr @+$01

    ld a, [c]
    jr nc, jr_011_6f62

    jr z, jr_011_6f9d

    rst $38
    ld a, [c]
    ld l, e
    add hl, bc
    jr @+$4a

    jr nc, jr_011_6f6d

    jr c, jr_011_6f77

    ld l, e
    dec bc
    ld d, a
    ld bc, $0051
    jr c, @+$52

    rst $38
    ld a, [c]
    jr nc, jr_011_6f69

jr_011_6f5b:
    ld e, b

jr_011_6f5c:
    ld c, b
    rst $38
    ld a, [c]
    ld l, e
    dec bc
    ld d, [hl]

jr_011_6f62:
    ld bc, $f2ff
    ld l, e
    add hl, bc
    jr c, @+$3a

jr_011_6f69:
    ld [hl-], a
    dec b
    ld c, b
    ld e, b

jr_011_6f6d:
    rst $38
    ld a, [c]
    ld l, e
    dec bc
    dec [hl]
    ld bc, $f2ff
    pop hl
    nop

jr_011_6f77:
    jr c, @+$4a

    rst $38
    pop af
    ld l, l
    nop
    rst $38
    pop af
    ld l, [hl]
    ld [bc], a
    ld a, [c]
    jr nc, jr_011_6fa5

    jr c, jr_011_6ffe

    rst $38
    ld a, [c]
    pop hl
    nop
    ld l, b
    jr c, jr_011_6ffb

    ld bc, $4023
    rst $38
    ld a, [c]
    jr nc, jr_011_6fa3

    jr z, jr_011_6fde

    rst $38
    ld a, [c]
    jr nc, jr_011_6fbc

    jr z, jr_011_7014

    ld l, e

jr_011_6f9d:
    dec bc
    ld d, d
    ld bc, $0b6b
    ld h, d

jr_011_6fa3:
    ld [bc], a
    rst $38

jr_011_6fa5:
    ld a, [c]

jr_011_6fa6:
    jr nc, jr_011_6fb2

    ld e, b
    adc b
    jr nc, @+$0d

    jr z, @+$2a

    rst $38
    ld a, [c]
    ld l, e
    add hl, bc

jr_011_6fb2:
    jr c, jr_011_6f3c

    pop hl
    nop
    jr z, jr_011_6fe0

    ld d, c
    ld bc, $5840

jr_011_6fbc:
    rst $38
    ld a, [c]
    jr nc, jr_011_6fc7

    jr c, jr_011_700a

    rst $38
    ld a, [c]
    jr nc, jr_011_6fce

    ld e, b

jr_011_6fc7:
    jr c, @+$33

    ld [bc], a
    nop
    nop
    rst $38
    ld a, [c]

jr_011_6fce:
    jr nc, jr_011_6ff4

    jr z, @-$76

    rst $38
    di
    ld sp, $ff48
    ld a, [c]
    ld l, a
    nop

jr_011_6fda:
    jr z, @-$76

    jr nc, jr_011_7003

jr_011_6fde:
    jr @+$7a

jr_011_6fe0:
    di
    inc a
    ld c, b
    rst $38
    di
    ld b, e
    ld c, b
    rst $38
    ld a, [c]
    ld d, c
    ld bc, $6820
    rst $38
    ld a, [c]
    pop hl
    nop
    jr z, jr_011_703b

    ld b, b

jr_011_6ff4:
    add hl, bc
    jr z, jr_011_702f

    pop af
    call c, $ff0b

jr_011_6ffb:
    ld a, [c]
    ld b, c
    dec bc

jr_011_6ffe:
    ld c, b
    jr c, @+$42

    dec c
    inc e

jr_011_7003:
    ld e, b

jr_011_7004:
    ld b, b
    ld c, $38
    ld l, b
    rst $38
    ld a, [c]

jr_011_700a:
    jr nc, jr_011_7015

    jr jr_011_7046

    rst $38
    ld a, [c]
    jr nc, @+$08

    jr jr_011_708c

jr_011_7014:
    rst $38

jr_011_7015:
    ld a, [c]
    ld sp, $4800
    ld c, b
    rst $38
    pop af
    ld l, d
    nop
    rst $38
    ld a, [c]
    jr nc, @+$25

    ld c, b
    ld l, b
    rst $38
    ld a, [c]
    and c
    nop
    ld c, b
    ld e, d
    and c
    ld bc, $a648
    rst $38

jr_011_702f:
    ld a, [c]
    ld l, e
    add hl, de
    sbc b
    sbc b
    and c
    ld [bc], a
    ld c, b
    ld b, b
    rst $38
    ld a, [c]
    inc [hl]

jr_011_703b:
    nop
    ld c, b
    adc b
    inc [hl]
    ld bc, $7068
    and h
    nop
    jr c, jr_011_7076

jr_011_7046:
    rst $38
    ld a, [c]
    jr nc, jr_011_7056

    jr z, jr_011_709c

    add c
    nop
    jr z, jr_011_7078

    add c
    inc b
    jr c, jr_011_707c

    add c
    ld a, [bc]

jr_011_7056:
    ld c, b
    jr z, jr_011_6fda

    inc c
    ld e, b
    jr z, jr_011_6fde

    dec c
    ld l, b
    jr z, @+$01

    ld a, [c]
    jr nc, jr_011_7071

    jr c, jr_011_70be

    ld l, e
    add hl, de
    jr jr_011_7082

    rst $38
    ld a, [c]
    ld b, c
    nop
    jr c, jr_011_70c0

    ld b, b

jr_011_7071:
    ld bc, $6848
    ld b, b
    ld [bc], a

jr_011_7076:
    ld e, b
    adc b

jr_011_7078:
    ld b, b
    inc bc
    jr jr_011_7004

jr_011_707c:
    ld b, b
    inc b
    jr jr_011_70d8

    ld b, b
    dec b

jr_011_7082:
    jr z, @+$2a

    ld b, b
    ld b, $68
    jr c, jr_011_70cb

    ld bc, $5838

jr_011_708c:
    cp b
    inc b
    ld c, b
    ld a, b
    rst $38
    ld a, [c]
    ld b, b
    rlca
    jr c, jr_011_70ce

    ld b, b
    ld [$6848], sp
    ld b, d
    nop

jr_011_709c:
    ld e, b
    jr z, @+$01

    ld a, [c]
    ld d, e
    ld bc, $5848
    jr nc, jr_011_70aa

    ld l, b
    ld a, b
    jr nc, jr_011_70af

jr_011_70aa:
    ld c, b
    jr c, jr_011_7118

    ld [hli], a
    inc e

jr_011_70af:
    ld [hl], b
    rst $38
    ld a, [c]
    jr nc, jr_011_70c6

    jr z, jr_011_70fe

    jr nc, jr_011_70cb

    jr z, @+$5a

    rst $38
    ld a, [c]
    ld e, h
    nop

jr_011_70be:
    ld c, b
    ld h, b

jr_011_70c0:
    rst $38
    ld a, [c]
    ld l, e
    rra
    ld c, b
    adc b

jr_011_70c6:
    rst $38
    ld a, [c]
    jr nz, jr_011_70cb

    ld e, b

jr_011_70cb:
    cp b
    ld hl, sp+$09

jr_011_70ce:
    nop
    ld e, l
    di
    ld c, a
    ld c, b
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b

jr_011_70d8:
    ld a, b
    di
    ld h, d
    ld c, b
    rst $38
    ld a, [c]
    inc de
    ld bc, $5848
    ld e, $08
    rlca
    nop
    ld e, $0a
    and a
    nop
    ld e, $0b
    ld d, b
    nop
    rst $38
    ld a, [c]
    add $00
    jr nz, jr_011_716c

    rst $38
    ld a, [c]
    inc de
    ld bc, $3838
    ld [de], a
    inc b
    nop
    nop

jr_011_70fe:
    di
    ld [hl], l
    ld c, b
    rst $38
    ld a, [c]
    ld e, $04
    rlca
    nop
    ld hl, sp+$09
    nop
    inc d
    di
    ld a, d
    ld c, b
    rst $38
    ld a, [c]
    ld l, e
    jr nz, jr_011_716b

    ld l, b
    rst $38
    di
    ld e, $49

jr_011_7118:
    rst $38

jr_011_7119:
    ld a, [c]
    jr nz, jr_011_711c

jr_011_711c:
    ld l, b
    add b
    ld a, [hl]
    nop
    ld e, b
    ld a, b
    ld e, $0b
    ld d, b
    nop
    ld e, $0a
    and a
    nop
    db $f4
    rla
    ld c, c
    rst $38
    di
    ld sp, $ff49
    ld a, [c]
    inc de
    ld bc, $4858
    ld e, $0b
    ld d, b
    nop
    di
    ld d, h
    ld c, c
    rst $38
    ld a, [c]
    ld a, b
    ld bc, $1374
    di
    ld l, c
    ld c, c
    rst $38
    di
    ld l, l
    ld c, c
    rst $38
    ld a, [c]
    jr nz, jr_011_7151

    jr z, jr_011_7119

jr_011_7151:
    ld hl, sp+$09
    nop
    ld e, h
    di
    ld [hl], d
    ld c, c
    rst $38
    ld a, [c]
    jr nz, @+$05

    nop
    nop
    ld e, $09
    ld e, [hl]
    nop
    ld e, $0a
    and a
    nop
    db $f4
    ld a, l
    ld c, c
    rst $38
    ld a, [c]

jr_011_716b:
    ld a, a

jr_011_716c:
    nop
    jr z, jr_011_71e7

    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    add h
    ld c, c
    rst $38
    ld a, [c]
    ld e, $0a
    and a
    nop
    ld e, $15
    ld d, b
    nop
    ld a, [hl]
    nop
    ld e, b
    ld a, b
    di
    ld e, d
    ld b, b
    di
    adc c
    ld c, c
    rst $38
    ld a, [c]
    jr c, jr_011_7190

jr_011_7190:
    jr c, jr_011_720a

    rst $38
    di
    xor h
    ld c, c
    rst $38
    di
    or e
    ld c, c
    rst $38
    ld a, [c]
    ld e, $08
    rlca
    nop
    ld e, $09
    ld e, [hl]
    nop
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    jp nz, $ff49

    ld a, [c]
    inc de
    ld bc, $9838
    ld e, $08
    rlca
    nop
    ld e, $09
    ld e, [hl]
    nop
    ld e, $0a
    and a
    nop
    di
    rst $00
    ld c, c
    rst $38
    ld a, [c]
    ld e, $14
    rlca
    nop
    ld [de], a
    ld bc, $7858
    ld e, $0b
    ld d, b
    nop
    di
    ld e, d
    ld b, b
    di
    jp nc, $ff49

    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    ld [c], a
    ld bc, $0000
    rst $38
    di
    db $ec
    ld c, c
    rst $38
    di
    inc bc
    ld c, d
    rst $38

jr_011_71e7:
    ld a, [c]
    ld a, d
    nop
    jr nz, jr_011_7244

    ld a, d
    nop
    ld b, b
    ld c, b
    di
    ld c, $4a
    rst $38
    ld a, [c]
    ld a, d
    ld [bc], a
    ld b, b
    ld c, b
    ld a, d
    ld bc, $9868
    di
    dec e
    ld c, d
    rst $38
    ld a, [c]
    ld a, [hl]
    nop
    ld e, b
    ld a, b
    jr nz, jr_011_7209

    add b

jr_011_7209:
    ld a, b

jr_011_720a:
    ld e, $08
    inc c
    nop
    ld e, $09
    ld c, [hl]
    nop
    db $f4
    inc l
    ld c, d
    rst $38
    di
    ld sp, $ff4a
    di
    ld b, d
    ld c, d
    rst $38
    di
    ld d, c
    ld c, d
    rst $38
    ld a, [c]
    ld e, $09
    ld e, [hl]
    nop
    di
    inc a
    ld b, b
    di
    ld a, h
    ld c, d
    rst $38
    ld a, [c]
    ld a, l
    nop
    ld d, a
    ld bc, $f2ff
    ld a, c
    dec b
    jr nc, @+$62

    ld a, c
    add hl, bc
    ld d, b
    jr z, @+$7b

    dec d
    add b
    ld [hl], b
    ld a, c
    dec de
    ld l, b

jr_011_7244:
    sub b
    di
    add hl, bc
    ld c, d
    rst $38
    ld a, [c]
    ld a, c
    inc h
    jr c, jr_011_7296

    ld a, c
    inc l
    ld c, b
    ld l, b
    ld a, c
    inc [hl]
    ld e, b
    adc b
    di
    sub l
    ld c, d
    rst $38
    ld a, [c]
    jr nz, jr_011_725f

    ld e, b
    ld a, b

jr_011_725f:
    ld e, $0b
    ld [hl], b
    nop
    ld e, $0a
    xor e
    nop
    di
    inc a
    ld b, b
    db $f4
    or d
    ld c, d
    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a
    ld e, b
    cp b
    di
    inc a
    ld b, b
    di
    cp c
    ld c, d
    rst $38
    ld a, [c]
    ld e, $0b
    ld d, b
    nop
    di
    call nz, $ff4a
    ld a, [c]
    ld a, a
    nop
    jr z, jr_011_72f0

    rst $38
    ld a, [c]
    jr nz, jr_011_728c

jr_011_728c:
    ld e, b
    ld a, b
    rst $38
    pop af
    dec e
    nop
    rst $38
    ld a, [c]
    ld e, $09

jr_011_7296:
    ld e, [hl]
    nop
    ld e, $0a
    and a
    nop
    di
    jp z, $ff4a

    ld a, [c]
    inc de
    ld bc, $a858
    ld e, $09
    ld l, $00
    di
    db $d3
    ld c, d
    rst $38
    di
    call c, $ff4a
    di

jr_011_72b2:
    db $eb
    ld c, d
    rst $38
    ld a, [c]
    adc $09
    jr c, jr_011_72d2

    call c, $980c
    jr jr_011_72b2

jr_011_72bf:
    ld [bc], a
    ld c, e
    rst $38
    ld a, [c]
    ld [de], a
    ld bc, $7858
    ld e, $0a
    and a
    nop
    di
    rra
    ld c, e
    rst $38
    di
    inc h
    ld c, e

jr_011_72d2:
    rst $38
    ld a, [c]
    inc de
    ld bc, $9858
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    dec [hl]
    ld c, e
    rst $38
    ld a, [c]
    ld a, d
    ld [bc], a
    jr nc, jr_011_733d

    ld a, d
    ld [bc], a
    add b
    xor b
    call c, $980c
    ret c

    di
    ld a, [hl-]
    ld c, e

jr_011_72f0:
    rst $38
    di
    ccf
    ld c, e
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    ld a, [hl]
    nop
    ld e, b
    ld a, b
    ld l, e
    dec e
    nop
    nop
    di
    ld e, b
    ld c, e
    rst $38
    ld a, [c]
    and c
    inc bc
    sbc b
    and b
    di
    ld [hl], a
    ld c, e
    rst $38
    ld a, [c]
    and c
    inc b
    ld c, b
    add b
    and c
    dec b
    ld a, b
    ld b, b
    and c
    ld b, $98
    or b
    rst $38
    ld a, [c]
    and c
    rlca
    sbc b
    ld a, b
    di
    ld a, h
    ld c, e
    rst $38
    ld a, [c]
    and c
    inc de
    adc b
    ld d, b
    and c
    inc d
    jr z, jr_011_72bf

    di
    ld [hl], a
    ld c, e
    rst $38
    ld a, [c]
    ld a, h
    nop
    jr c, @+$5a

    di
    add a
    ld c, e
    rst $38
    ld a, [c]

jr_011_733d:
    ld a, h
    nop
    ld e, b
    ld a, b
    rst $38
    ld a, [c]
    ld a, a
    nop
    jr c, jr_011_73bf

    rst $38
    di
    adc h
    ld c, e
    rst $38
    ld a, [c]
    ld a, c
    add hl, bc
    ld e, b
    ld c, b
    di
    sbc a
    ld c, e
    rst $38
    ld a, [c]
    ld a, h
    nop
    ld e, b
    ld a, b
    jr nz, jr_011_7360

    nop
    nop
    di
    or h

jr_011_7360:
    ld c, e
    rst $38
    ld a, [c]
    ld a, c
    ld bc, $9860
    rst $38
    ld a, [c]
    ld e, $06
    xor b
    nop
    di
    cp a
    ld c, e
    rst $38
    di
    jp z, $ff4b

    ld a, [c]
    ld e, $08
    ld [$f300], sp
    push de
    ld c, e
    rst $38
    ld a, [c]
    ld e, $09
    ld l, [hl]
    nop
    jr nz, jr_011_7387

    sbc b
    ret c

jr_011_7387:
    pop af
    ld a, [hl]
    nop
    db $f4
    ldh a, [rWX]
    rst $38
    pop af
    jr nz, jr_011_7391

jr_011_7391:
    di
    push af
    ld c, e
    rst $38
    di
    dec bc
    ld c, h
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    pop af
    ld [c], a
    ld bc, $007e
    rst $38
    ld a, [c]
    ld a, d
    ld bc, $9838
    ld a, d
    ld bc, $5858
    ld a, d
    nop
    add b
    ld l, b
    rst $38
    di
    inc d
    ld c, h
    rst $38
    ld a, [c]
    ld a, d
    nop
    jr nz, jr_011_7413

    ld a, d
    ld bc, $3858

jr_011_73bf:
    ld a, d
    ld bc, $b858

jr_011_73c3:
    ld a, d
    nop
    sub b
    sbc b

jr_011_73c7:
    rst $38
    di
    add hl, de
    ld c, h
    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    jr nz, jr_011_7420

    rst $38
    ld a, [c]
    ld a, c
    ld de, $6860
    di
    dec hl
    ld c, h
    rst $38

jr_011_73de:
    ld a, [c]
    ld e, $0a
    and a
    nop

jr_011_73e3:
    jr nz, jr_011_73e8

    jr jr_011_742f

    db $f4

jr_011_73e8:
    ld [hl], $4c
    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a
    ld e, b
    ld e, b
    di
    xor c
    ld c, e
    rst $38
    di
    dec a
    ld c, h
    rst $38
    di
    xor c
    ld c, e
    rst $38
    di
    ld c, h
    ld c, h
    rst $38
    ld a, [c]
    ld e, $07
    ld d, b
    nop
    pop af
    jr nz, jr_011_7409

    rst $38

jr_011_7409:
    di
    ld e, e
    ld c, h
    rst $38
    ld a, [c]
    and c
    ld [$7888], sp
    and c

jr_011_7413:
    add hl, bc
    jr c, jr_011_73de

    di
    ld h, [hl]
    ld c, h
    rst $38
    ld a, [c]
    and e
    nop
    ld a, b
    jr jr_011_73c3

jr_011_7420:
    nop
    ld l, b
    jr c, jr_011_73c7

    nop
    ld c, b
    ld l, b
    and e
    nop
    adc b
    ld l, b
    and e
    ld bc, $2858

jr_011_742f:
    and e
    ld bc, $4878
    and e
    ld bc, $5858
    and e
    ld bc, $9858
    and e
    ld [bc], a
    adc b
    jr z, jr_011_73e3

    ld [bc], a
    ld c, b
    ld c, b
    and e
    ld [bc], a
    adc b
    ld e, b
    and e
    ld [bc], a
    ld a, b
    ld a, b
    rst $38
    ld a, [c]
    ld a, c
    dec b
    sub b
    ret nc

    di
    ld l, e
    ld c, h
    rst $38
    ld a, [c]
    jr nz, jr_011_745c

    ld e, b
    ld a, b
    ld e, $0b

jr_011_745c:
    jr nz, jr_011_745e

jr_011_745e:
    ld e, $09
    adc [hl]
    nop
    db $f4
    ld [hl], b
    ld c, h
    rst $38
    ld a, [c]
    ld a, a
    nop
    jr z, jr_011_74e3

    rst $38
    pop af
    jr nz, jr_011_7476

    ld hl, sp+$06
    nop
    inc a
    ld b, $00
    ld a, h

jr_011_7476:
    di
    ld [hl], a
    ld c, h
    rst $38
    di
    sub [hl]
    ld c, h
    rst $38
    ld a, [c]
    adc $0a
    jr jr_011_74eb

    di
    or e
    ld c, h
    rst $38
    ld a, [c]
    jr nz, jr_011_748c

    sbc b
    ld e, b

jr_011_748c:
    di
    ld e, d
    ld b, b
    rst $38
    di
    ret nc

    ld c, h
    rst $38
    di
    rst JumpTable
    ld c, h
    rst $38
    di
    xor $4c
    rst $38
    di
    ld sp, hl
    ld c, h
    rst $38
    di
    inc c
    ld c, l
    rst $38
    ld a, [c]
    ld e, $08
    dec b
    nop
    ld e, $09
    ld e, [hl]
    nop
    ld e, $0a
    and a
    nop
    jr nz, jr_011_74b8

    ld e, b
    ld a, b
    ld a, [hl]
    nop
    nop

jr_011_74b8:
    nop
    di
    ld b, d
    ld b, b
    ld hl, sp+$08
    ld bc, $f468
    add hl, hl
    ld c, l
    rst $38
    di

jr_011_74c5:
    ld l, $4d
    rst $38
    ld a, [c]
    jr nz, jr_011_74ce

    ld e, b
    adc b
    di

jr_011_74ce:
    ld d, [hl]
    ld c, l
    rst $38
    di
    ld l, c
    ld c, l
    rst $38
    ld a, [c]
    ld e, $08
    inc c
    nop
    di
    ld l, [hl]
    ld c, l
    rst $38
    ld a, [c]
    ld a, b
    ld bc, $0329

jr_011_74e3:
    di
    ld [hl], e
    ld c, l
    rst $38
    ld a, [c]
    ld a, b
    ld [bc], a
    ld d, d

jr_011_74eb:
    ld b, $78
    inc b
    add h
    ld b, $f3
    add d
    ld c, l
    rst $38
    di
    sub d
    ld c, l
    rst $38
    ld a, [c]
    push bc
    nop
    jr z, jr_011_74c5

    ld hl, sp+$09
    nop
    ld e, d
    di
    sub a
    ld c, l
    rst $38
    di
    sbc h
    ld c, l
    rst $38
    ld a, [c]
    ld [de], a
    ld bc, $6858
    di
    and a
    ld c, l
    rst $38
    ld a, [c]
    ld a, b
    ld [$0825], sp
    ld hl, sp+$05
    ld [$f317], sp
    or d
    ld c, l
    rst $38
    di
    or a
    ld c, l
    rst $38
    ld a, [c]
    jr nz, jr_011_7526

jr_011_7526:
    jr c, @-$66

    di
    ret z

    ld c, l
    rst $38
    ld a, [c]
    ld e, $0a
    xor b
    nop
    di
    jp hl


    ld c, l
    rst $38
    di
    ld hl, sp+$4d
    rst $38
    ld a, [c]
    jr nz, jr_011_7542

    ld e, b
    ld a, b
    di
    rlca
    ld c, [hl]
    rst $38

jr_011_7542:
    di
    ld hl, $ff4e
    ld a, [c]
    ld e, $04
    ld [$f300], sp
    ld a, [hl-]
    ld c, [hl]
    rst $38
    ld a, [c]
    ld a, b
    db $10
    ld h, [hl]
    inc bc
    di
    adc [hl]
    ld c, l
    rst $38
    di
    ld c, l
    ld c, [hl]
    rst $38
    di
    ld e, b
    ld c, [hl]
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    pop af
    ld [c], a
    ld bc, $007e
    rst $38
    di
    db $76
    ld c, [hl]
    rst $38
    ld a, [c]
    inc de
    ld bc, $b858
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    add c
    ld c, [hl]
    rst $38
    ld a, [c]
    and c
    dec bc
    jr z, @+$7a

    and c
    inc c
    jr c, @-$3e

    di
    adc d
    ld c, [hl]
    rst $38
    di
    sbc b
    ld c, [hl]
    rst $38
    di
    and e
    ld c, [hl]
    rst $38
    ld a, [c]
    and d
    nop
    jr c, jr_011_75ce

    rst $38
    ld a, [c]
    ld a, a
    nop
    jr z, jr_011_7614

    rst $38
    ld a, [c]
    ld e, $05
    ld a, [hl]
    nop
    di
    xor e
    ld c, [hl]
    rst $38
    di
    or h
    ld c, [hl]
    rst $38
    ld a, [c]
    jr nz, jr_011_75ad

jr_011_75ad:
    ld c, b
    ret nc

    and d
    ld bc, $5028
    and d
    ld [bc], a
    adc b
    add b
    rst $38
    ld a, [c]
    ld e, $08
    rlca
    nop
    ld e, $0a
    and a
    nop
    jr nz, jr_011_75c6

    ld e, b
    ld a, b
    db $f4

jr_011_75c6:
    pop de
    ld c, [hl]
    rst $38
    di
    ret c

    ld c, [hl]
    rst $38
    di

jr_011_75ce:
    db $eb
    ld c, [hl]
    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    ld [bc], a
    ld c, a
    rst $38
    di
    dec bc
    ld c, a
    rst $38
    pop af
    ld h, d
    nop
    di
    ld a, [de]
    ld c, a
    rst $38
    ld a, [c]
    ld e, $0b
    ld d, b
    nop
    di
    ld hl, $ff4f
    ld a, [c]
    ld e, $06
    xor e
    nop
    ld h, e
    nop
    ld l, b
    ld e, b
    di
    ld l, $4f
    rst $38
    di
    inc sp
    ld c, a
    rst $38
    ld a, [c]
    ld e, $0b
    ld d, b
    nop
    ld e, $09
    ld e, [hl]
    nop
    di
    ld b, [hl]
    ld c, a
    rst $38
    di
    ld c, e
    ld c, a
    rst $38
    di
    ld d, [hl]
    ld c, a
    rst $38

jr_011_7614:
    di
    ld e, e
    ld c, a
    rst $38
    di
    ld [hl], h
    ld c, a
    rst $38
    ld a, [c]
    ld e, $04
    inc b
    nop
    inc de
    ld bc, $7878
    jr nz, jr_011_7628

    ld a, b

jr_011_7628:
    ld a, b
    di
    add a
    ld c, a
    rst $38
    di
    ld d, [hl]
    ld c, a
    rst $38
    ld a, [c]
    ld e, $04
    inc c
    nop
    ld hl, sp+$09
    nop
    rla
    di
    sub d
    ld c, a
    rst $38
    ld a, [c]
    ld e, $0b
    jr nc, jr_011_7643

jr_011_7643:
    di
    cp c
    ld c, a
    rst $38
    ld a, [c]
    ld a, e
    nop
    ld e, b
    ld l, b
    di
    sbc $4f
    rst $38
    ld a, [c]
    ld a, b
    ld bc, $0f44
    ld a, b
    ld [bc], a
    scf
    inc c
    ld hl, sp+$05
    ld bc, $0583
    ld [bc], a
    ld a, b
    di

jr_011_7661:
    rst $38
    ld c, a
    rst $38
    di
    inc b
    ld d, b
    rst $38
    ld a, [c]
    ld e, $08
    rlca
    nop
    ld e, $0b
    ld d, b
    nop
    jr nz, jr_011_7675

    ld e, b
    ld a, b

jr_011_7675:
    ld a, [hl]
    nop
    nop
    nop

jr_011_7679:
    db $f4
    add hl, bc
    ld d, b
    rst $38
    di
    db $10
    ld d, b
    rst $38
    di
    inc hl
    ld d, b
    rst $38
    di
    ld [hl], $50
    rst $38
    di
    ld b, l
    ld d, b
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    pop af
    ld [c], a
    ld bc, $007e
    rst $38
    di
    ld d, h
    ld d, b
    rst $38
    ld a, [c]
    and c
    dec c
    ld e, b
    jr nc, jr_011_7643

    ld c, $78
    ld [hl], b
    rst $38
    ld a, [c]
    jr nz, @+$03

    ld [$f878], sp
    inc bc
    nop
    inc de
    di
    ld e, a
    ld d, b
    rst $38
    ld a, [c]
    jr nz, jr_011_76b6

jr_011_76b6:
    ld l, b
    sbc b
    di
    ld h, [hl]
    ld d, b
    rst $38
    ld a, [c]
    jr nz, @+$04

    ld [$f318], sp
    ld [hl], a
    ld d, b
    rst $38
    ld a, [c]
    ld a, c
    nop
    jr @+$3a

    ld a, c
    ld [$8838], sp
    ld a, c
    jr jr_011_7749

    jr jr_011_774c

    jr nz, jr_011_774d

    jr c, jr_011_7750

    jr z, jr_011_7661

    ld e, b
    ld a, c
    jr nc, jr_011_7675

    ld e, b
    ld a, c
    jr c, jr_011_7679

    ret z

    di
    adc h
    ld d, b
    rst $38
    pop af
    jr nz, jr_011_76f5

    di
    sbc l
    ld d, b
    rst $38
    ld a, [c]
    ld e, $04
    rlca
    nop
    di
    and [hl]
    ld d, b

jr_011_76f5:
    rst $38
    di
    cp l
    ld d, b
    rst $38
    ld a, [c]
    ld a, l
    nop
    ld d, a
    ld bc, $f3ff
    jp nz, $ff50

    di
    call $ff50
    ld a, [c]
    ld a, c
    ld b, b
    jr z, @-$3e

    ld a, c
    ld c, b
    sbc b
    or b
    jr nz, jr_011_7717

    ld [$7cc8], sp
    nop

jr_011_7717:
    jr jr_011_7731

    di
    ld e, d
    ld b, b
    di
    db $e4
    ld d, b
    rst $38
    ld a, [c]
    inc de
    ld bc, $a868
    ld e, $09
    ld a, [hl]
    nop
    di
    rst $28
    ld d, b
    rst $38
    ld a, [c]
    ld e, $07
    ld [hl], b

jr_011_7731:
    nop
    di
    db $f4
    ld d, b
    rst $38
    ld a, [c]
    ld e, $10
    rlca
    nop
    di
    db $fd
    ld d, b
    rst $38
    ld a, [c]
    ld e, $10
    rlca
    nop
    di
    ld [$ff51], sp
    di

jr_011_7749:
    rla
    ld d, c
    rst $38

jr_011_774c:
    ld a, [c]

jr_011_774d:
    ld [de], a
    nop
    adc b

jr_011_7750:
    ld a, b
    pop af

jr_011_7752:
    ld [c], a
    ld bc, $007e
    rst $38
    pop af
    dec e
    ld bc, $f3ff
    cp l
    ld d, b
    rst $38
    ld a, [c]
    ld e, $07
    ld d, b
    nop
    ld e, $06
    and a
    nop
    jr nz, jr_011_776f

    nop
    nop
    di
    inc a
    ld d, c

jr_011_776f:
    rst $38
    di
    ld c, e
    ld d, c
    rst $38
    di
    ld h, d
    ld d, c
    rst $38
    ld a, [c]
    jr nz, jr_011_7781

    nop
    nop
    ld e, $06
    xor b
    nop

jr_011_7781:
    di
    ld l, l
    ld d, c
    rst $38
    ld a, [c]
    ld a, h

jr_011_7787:
    nop
    jr jr_011_7752

    di
    add [hl]
    ld d, c
    rst $38
    ld a, [c]
    ld a, h
    nop
    adc b
    jr z, jr_011_7787

    sub l
    ld d, c
    rst $38
    di
    xor b
    ld d, c
    rst $38
    pop af
    jr nz, jr_011_77ac

    di
    or e
    ld d, c
    rst $38
    ld a, [c]
    jr nz, jr_011_77b2

    jr c, jr_011_77df

    di
    adc $51
    rst $38
    di

jr_011_77ac:
    adc $51
    rst $38
    ld a, [c]
    ld e, $08

jr_011_77b2:
    rlca
    nop
    di
    db $d3
    ld d, c
    rst $38
    ld a, [c]
    jr nz, @+$09

    ld e, b
    ld a, b
    ld a, [hl]
    nop
    nop
    nop
    ld e, $09
    ld e, [hl]
    nop
    ld e, $0a
    and d
    nop
    db $f4
    call c, $ff51
    di
    db $e3
    ld d, c
    rst $38
    ld a, [c]
    ld e, $06
    xor h
    nop
    di
    inc c
    ld d, d
    rst $38
    di
    ld [hli], a
    ld d, d
    rst $38
    di

jr_011_77df:
    dec l
    ld d, d
    rst $38
    ld a, [c]
    jr nz, jr_011_77ed

    sbc b
    ret c

    di
    jr c, @+$54

    rst $38
    ld a, [c]
    inc de

jr_011_77ed:
    ld bc, $4838
    ld e, $08
    rlca
    nop
    di
    ld b, b
    ld d, d
    rst $38

jr_011_77f8:
    ld a, [c]
    ld e, $10
    rlca
    nop
    di
    ld b, l
    ld d, d
    rst $38
    ld a, [c]
    ld e, $0b
    ld d, b
    nop
    di
    ld c, h
    ld d, d
    rst $38
    ld a, [c]
    jr nz, jr_011_7816

    nop
    nop
    ld e, $06
    xor e
    nop
    di
    ld d, e
    ld d, d

jr_011_7816:
    rst $38
    ld a, [c]
    ld e, $0b
    ld [hl], b
    nop
    di
    ld [hl], l
    ld d, d
    rst $38
    ld a, [c]
    ld a, h
    nop
    ld a, b
    ld a, b
    di
    add b
    ld d, d
    rst $38
    di
    add l
    ld d, d
    rst $38
    ld a, [c]
    ld e, $0a
    and a
    nop
    jr nz, @+$0d

    ld e, b
    ld a, b
    db $f4
    adc h
    ld d, d
    rst $38
    ld a, [c]
    jr nz, jr_011_7847

    ld l, b
    jr z, @-$0b

    sub e
    ld d, d
    rst $38
    ld a, [c]
    ld a, a
    nop
    inc l

jr_011_7847:
    ld d, b
    rst $38
    ld a, [c]
    ld h, [hl]
    nop
    ld e, b
    ld a, b
    di
    xor c
    ld d, d
    rst $38
    di
    or a
    ld d, d
    rst $38
    ld a, [c]
    jr nz, jr_011_785a

    adc b

jr_011_785a:
    ret z

    di
    add $52
    rst $38
    ld a, [c]
    ld a, h
    ld bc, $1868

jr_011_7864:
    ld a, h
    nop
    ld l, b
    ld c, b
    ld a, e
    add h
    jr z, @+$4a

    ld a, e
    add h
    jr c, jr_011_77f8

    ld a, e
    add h
    ld e, b
    ret z

    ld a, e
    add h
    ld a, b
    sbc b
    ld hl, sp+$03
    inc b
    add l
    rst $38
    ld a, [c]
    ld a, c
    dec b
    ld d, b
    or b
    di
    bit 2, d
    rst $38
    ld a, [c]
    jr nz, jr_011_7889

jr_011_7889:
    ld e, b
    ld a, b
    ld hl, sp+$09
    nop
    dec e
    rst $38
    ld a, [c]
    jr nz, @+$0d

    ld a, b
    ld a, b
    di
    ret nc

    ld d, d
    rst $38
    ld a, [c]
    ld a, c
    dec hl
    sbc b
    jr nz, @-$0b

    rst JumpTable
    ld d, d
    rst $38
    ld a, [c]
    ld [de], a
    ld bc, $7868
    di
    db $e4
    ld d, d
    rst $38
    ld a, [c]
    ld l, e
    inc hl
    ld e, b
    ret z

    ld hl, sp+$09
    nop
    jr c, jr_011_78be

    ld bc, $0958
    ld [bc], a
    ld a, b
    di
    rst $30
    ld d, d
    rst $38

jr_011_78be:
    ld a, [c]
    ld e, $0a
    and l
    nop
    di
    ld [bc], a
    ld d, e
    rst $38
    ld a, [c]
    ld a, e
    nop
    jr z, jr_011_7864

    ld a, e
    nop
    ld c, b
    ld e, b
    ld a, e
    nop
    ld e, b
    ld a, b
    ld a, c
    add hl, bc
    sub b
    jr @+$01

    ld a, [c]
    ld e, $05
    ld e, [hl]
    nop
    ld hl, sp+$09
    nop
    ld e, c
    di
    dec de
    ld d, e
    rst $38
    ld a, [c]
    jr nz, jr_011_78eb

    ld e, b
    ld a, b

jr_011_78eb:
    ld a, [hl]
    nop
    nop
    nop
    ld e, $0b
    ld d, b
    nop
    ld e, $09
    ld e, [hl]
    nop
    di
    ld b, d
    ld b, b
    db $f4
    ld l, $53
    rst $38
    di
    add hl, sp
    ld d, e
    rst $38
    ld a, [c]

jr_011_7903:
    ld a, c
    inc de
    ld a, b
    or b
    di
    bit 2, d
    rst $38
    ld a, [c]
    jr nz, @+$0e

    jr c, jr_011_7968

    jr nz, jr_011_7920

    jr z, @+$4a

    ld hl, sp+$09
    nop
    ld a, [de]
    di
    ld a, $53
    rst $38
    ld a, [c]
    ld e, $06
    and a

jr_011_7920:
    nop
    jr nz, jr_011_7928

    ld e, b
    ld a, b
    ld hl, sp+$09
    add b

jr_011_7928:
    ld a, c
    rst $38
    ld a, [c]
    jr nz, jr_011_7933

    ld l, b
    jr @+$7b

    dec de
    jr z, jr_011_7903

jr_011_7933:
    ld hl, sp+$09
    add b
    sub h
    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a
    ld e, b
    ld a, b
    di
    ld d, l
    ld d, e
    rst $38
    ld a, [c]
    ld e, $08
    rlca
    nop
    ld a, h
    nop
    jr z, jr_011_7972

    di

jr_011_794b:
    ld h, h
    ld d, e
    rst $38
    di
    ld [hl], l
    ld d, e
    rst $38
    ld a, [c]
    ld e, $04
    rlca
    nop
    ld l, e
    inc h
    nop
    nop
    ld hl, sp+$03
    add b
    ld [hli], a
    inc bc
    add c
    ld b, d
    inc bc
    add d
    inc l
    inc bc
    add e
    ld c, h

jr_011_7968:
    rst $38
    pop af
    jr nz, jr_011_7976

    di
    adc [hl]
    ld d, e
    rst $38
    ld a, [c]
    ld a, h

jr_011_7972:
    nop
    ld e, b
    ld a, b
    rst $38

jr_011_7976:
    ld a, [c]
    jr nz, jr_011_7981

    ld e, b
    ld a, b
    di
    ld b, d
    ld b, b
    di
    sbc h
    ld d, e

jr_011_7981:
    rst $38
    ld a, [c]
    ld a, a
    nop
    jr z, @-$76

    rst $38
    ld a, [c]
    jr nz, @+$05

    ld e, b
    ld a, b
    ld e, $09
    ld a, [hl]
    nop
    ld e, $0b
    ld [hl], b
    nop
    db $f4
    and c
    ld d, e
    rst $38
    di
    xor b
    ld d, e
    rst $38
    ld a, [c]
    jr nz, @+$0f

    jr z, jr_011_79ea

    ld hl, sp+$09

jr_011_79a4:
    nop
    ld d, e

jr_011_79a6:
    rst $38
    pop af
    jr nz, jr_011_79b3

    ld a, [c]
    ld a, d
    ld bc, $3828
    ld a, d
    nop
    jr nz, jr_011_794b

jr_011_79b3:
    ld a, d
    nop
    ld d, b
    cp b
    ld a, d
    nop
    ld h, b
    jr c, @+$01

    ld a, [c]
    ld [de], a
    ld [bc], a
    ld c, b
    ld l, b
    di
    or a
    ld d, e
    rst $38
    di
    ret nz

    ld d, e
    rst $38
    ld a, [c]
    jr nz, jr_011_79d3

    jr jr_011_79a6

    ld hl, sp+$08
    nop
    ld l, b
    di

jr_011_79d3:
    ld b, d
    ld b, b
    rst $38
    ld a, [c]
    ld a, c
    dec h
    add b
    and b
    di
    push bc
    ld d, e
    rst $38
    di
    jp z, $ff53

    di
    rst $20
    ld d, e
    rst $38
    ld a, [c]
    ld [de], a
    ld [bc], a

jr_011_79ea:
    jr z, jr_011_79a4

    di
    ld a, [bc]
    ld d, h
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    pop af
    ld [c], a
    ld bc, $007e
    rst $38
    ld a, [c]
    and c
    rrca
    ld l, b
    adc b
    di
    rla
    ld d, h
    rst $38
    di
    ld a, [hli]
    ld d, h
    rst $38
    di
    add hl, sp
    ld d, h
    rst $38
    ld a, [c]
    ld a, a
    nop
    jr z, jr_011_7a89

    rst $38
    di
    ld b, d
    ld d, h
    rst $38
    ld a, [c]
    and d
    inc bc
    adc b
    ld b, b
    and d
    inc b
    ld a, b
    and b
    di
    ld d, c
    ld d, h
    rst $38
    di
    ld e, h
    ld d, h
    rst $38
    di
    ld l, h
    ld d, h
    rst $38
    ld a, [c]
    ld e, $0a
    and e
    nop
    ld e, $08
    rlca
    nop
    jr nz, jr_011_7a3e

    ld e, b
    ld a, b
    db $f4
    add h
    ld d, h
    rst $38
    ld a, [c]
    ld l, c

jr_011_7a3e:
    nop
    inc h
    nop
    di
    adc e
    ld d, h
    rst $38
    ld a, [c]
    ld l, c
    nop
    rla
    ld bc, $a2f3
    ld d, h
    rst $38
    di
    xor l
    ld d, h
    rst $38
    di
    cp b
    ld d, h
    rst $38
    di
    cp l
    ld d, h
    rst $38
    ld a, [c]
    ld l, c
    nop
    daa
    ld [bc], a
    di
    or d
    ld d, h
    rst $38

jr_011_7a63:
    ld a, [c]
    ld l, c
    nop
    ld l, c
    inc bc
    di
    rst $08
    ld d, h
    rst $38
    ld a, [c]
    jr nz, @+$06

    ld a, b
    xor b
    di
    jp c, $ff54

    ld a, [c]
    ld e, $05
    adc [hl]
    nop
    di
    rst JumpTable
    ld d, h
    rst $38
    di
    ld a, [c]
    ld d, h
    rst $38
    ld a, [c]
    ld a, l
    nop
    ld h, a
    ld bc, $f3ff

jr_011_7a89:
    ei
    ld d, h
    rst $38
    ld hl, sp+$0d
    nop
    dec e
    dec c
    ld bc, $0d3d
    ld [bc], a
    ld e, l
    ld a, [c]
    jr nz, jr_011_7aa3

    jr jr_011_7a63

    di
    db $fc
    ld d, h
    rst $38
    ld a, [c]
    ld e, $0b
    add b

jr_011_7aa3:
    nop
    ld e, $08
    rlca
    nop
    ld a, [hl]
    nop
    nop
    nop
    jr nz, jr_011_7ab5

    ld e, b
    ld a, b
    di
    ld c, b
    ld b, b
    db $f4
    rra

jr_011_7ab5:
    ld d, l
    rst $38
    ld a, [c]
    jr nz, jr_011_7abc

    ld c, b
    ld e, b

jr_011_7abc:
    di
    ld h, $55
    rst $38
    di
    ld b, c
    ld d, l
    rst $38
    ld a, [c]
    ld [de], a
    ld bc, $5868
    di
    ld e, d
    ld d, l
    rst $38
    di
    ld l, l
    ld d, l
    rst $38
    di
    adc b
    ld d, l
    rst $38
    ld a, [c]
    jr nz, jr_011_7ae1

    adc b
    sbc b
    di
    sub e
    ld d, l
    rst $38
    di
    and [hl]
    ld d, l

jr_011_7ae1:
    rst $38
    pop af
    jr nz, jr_011_7ae5

jr_011_7ae5:
    ld hl, sp+$03
    nop
    ld [hl], a
    di
    or l
    ld d, l
    rst $38
    ld a, [c]
    ld e, $08
    rlca
    nop
    di
    call z, $ff55
    ld a, [c]
    ld a, c
    dec d
    ld b, b
    ld d, b
    ld a, c
    dec e
    ld [hl], b
    ret nz

    ld e, $0a
    and e
    nop
    ld e, $06
    xor h
    nop
    di
    rst JumpTable
    ld d, l
    rst $38
    ld a, [c]
    jr nz, jr_011_7b19

    ld c, b
    ld a, b
    ld hl, sp+$0d
    nop
    jr z, @+$0f

    ld bc, $0d48
    ld [bc], a

jr_011_7b19:
    ld l, b
    di
    db $ed
    ld d, l
    rst $38
    ld a, [c]
    ld a, b
    ld bc, $032b
    jr nz, jr_011_7b2a

    nop
    nop
    di
    ld a, [c]
    ld d, l

jr_011_7b2a:
    rst $38
    ld a, [c]
    ld h, a
    nop
    sbc b
    ret z

    jr nz, jr_011_7b37

    nop
    nop
    di
    rst $38
    ld d, l

jr_011_7b37:
    rst $38
    ld a, [c]
    ld e, $08
    inc bc
    nop
    ld e, $08
    inc c
    nop
    di
    ld a, [bc]
    ld d, [hl]
    rst $38
    di
    ld de, $ff56
    ld a, [c]
    jr nz, @+$05

    ld c, b
    ld l, b
    ld hl, sp+$0d
    add b
    inc d
    di
    inc e
    ld d, [hl]
    rst $38
    di
    inc hl
    ld d, [hl]
    rst $38
    ld a, [c]
    ld l, b
    nop
    jr @+$5a

    ld l, b
    nop
    jr jr_011_7bdb

    ld l, b
    nop
    jr z, jr_011_7bcf

    di
    ld l, $56
    rst $38
    di
    dec a
    ld d, [hl]
    rst $38
    ld a, [c]
    jr nz, jr_011_7b78

    jr @+$7a

    rst $38
    ld a, [c]
    ld [de], a
    nop

jr_011_7b78:
    adc b
    ld a, b
    pop af
    ld [c], a
    ld bc, $007e
    rst $38
    pop af
    jr nz, jr_011_7b88

    di
    ld c, [hl]
    ld d, [hl]
    rst $38
    pop af

jr_011_7b88:
    jr nz, jr_011_7b8f

    di
    ld e, c
    ld d, [hl]
    rst $38
    di

jr_011_7b8f:
    ld e, [hl]
    ld d, [hl]
    rst $38
    di
    ld l, l
    ld d, [hl]
    rst $38
    di
    db $76
    ld d, [hl]
    rst $38
    di
    and l

jr_011_7b9c:
    ld d, [hl]
    rst $38
    pop af
    jr nz, jr_011_7ba2

    di

jr_011_7ba2:
    cp [hl]
    ld d, [hl]
    rst $38
    rst $38
    db $f4
    rst $00
    ld d, [hl]
    rst $38
    di
    pop de
    ld d, [hl]
    rst $38
    pop af
    jr nz, jr_011_7bb1

jr_011_7bb1:
    di
    inc c
    ld d, a
    rst $38
    pop af
    jr nz, jr_011_7bb8

jr_011_7bb8:
    di
    ld de, $ff57
    pop af
    jr nz, jr_011_7bbf

jr_011_7bbf:
    di
    jr nz, jr_011_7c19

    rst $38
    ld a, [c]
    ld e, $09
    ld e, [hl]
    nop
    di
    dec l
    ld d, a
    rst $38
    ld a, [c]
    ld [de], a
    nop

jr_011_7bcf:
    adc b
    ld a, b
    pop af
    jr nz, jr_011_7bd5

    rst $38

jr_011_7bd5:
    ld a, [c]
    ld e, $0b
    ld d, b
    nop
    di

jr_011_7bdb:
    ld [hl], $57
    rst $38
    rst $38
    ld a, [c]

jr_011_7be0:
    ld b, h
    nop
    ld b, d
    ld a, b
    jp c, Jump_011_5c00

    ld a, b
    pop af
    or b
    ld [$09b0], sp
    or b
    ld a, [bc]
    rst $38
    pop af
    ld [c], a
    ld bc, $086b
    rst $38
    pop af
    ld [c], a
    inc bc
    rst $38
    pop af
    or l
    nop
    ld a, [c]
    pop hl
    ld bc, $7858
    rst $38
    db $f4
    ccf
    ld d, a
    rst $38
    ld a, [c]
    pop hl
    ld bc, $6848
    ld a, e
    nop
    jr z, jr_011_7c38

    ld a, e
    nop
    jr z, jr_011_7b9c

    ld a, e
    nop
    jr z, jr_011_7be0

    ld a, e

jr_011_7c19:
    nop
    adc b
    jr z, jr_011_7c98

    nop
    adc b
    ld l, b
    ld a, e
    nop
    adc b
    xor b
    rst $38
    ld a, [c]
    ld a, e
    nop
    ld c, b
    ld c, b
    ld a, e
    nop
    ld c, b
    adc b
    ld a, e
    nop
    ld e, b
    ret z

    ld a, e
    nop
    adc b

jr_011_7c35:
    ld c, b
    rst $38
    ld a, [c]

jr_011_7c38:
    jr nz, jr_011_7c3f

    ld e, b
    ld a, b
    call c, $5807

jr_011_7c3f:
    ld a, b
    ld hl, sp+$09
    nop
    daa
    add hl, bc
    ld bc, $0939
    ld [bc], a
    ld e, d
    add hl, bc
    inc bc
    ld a, c
    add hl, bc
    inc b
    add a
    add hl, bc
    dec b
    ld [hl], l
    add hl, bc
    ld b, $54
    add hl, bc
    rlca
    dec [hl]
    rst $38
    ld a, [c]
    call c, $8806
    ld l, b
    ld hl, sp+$03
    ld b, $59
    di
    sub l
    ld c, b
    rst $38
    ld a, [c]
    call c, $380f
    ld bc, $04dc
    ld d, a
    inc b
    ld a, [hl]
    ld [bc], a
    ld e, b
    ld a, b
    pop hl
    ld bc, $2828
    ld hl, sp+$09
    add b
    dec e
    di
    sbc d
    ld c, b
    rst $38
    ld a, [c]
    jr nz, jr_011_7c87

    nop
    nop
    ld e, $07

jr_011_7c87:
    add b
    nop
    ld sp, hl
    ld [bc], a
    dec bc
    dec b
    ld bc, $3838
    ld [bc], a
    dec bc
    ld b, $02
    ld c, b
    jr c, jr_011_7c99

    dec bc

jr_011_7c98:
    rlca

jr_011_7c99:
    inc b
    ld e, b
    jr c, @+$04

    dec bc
    ld [$6808], sp
    jr c, jr_011_7ca5

    dec bc
    add hl, bc

jr_011_7ca5:
    db $10
    ld a, b
    jr c, jr_011_7cab

    dec bc
    ld a, [bc]

jr_011_7cab:
    jr nz, jr_011_7c35

    jr c, @-$0b

    xor c
    ld c, b
    rst $38
    ld a, [c]
    call c, $0f03
    nop
    ld e, $04
    rlca
    rlca
    pop hl
    ld bc, $2828
    ld hl, sp+$09
    add b
    dec d
    add hl, bc
    add c
    add hl, de
    add hl, bc
    add d
    ld h, $09
    add e
    jr z, @+$01

    ld a, [c]
    call c, Call_011_5809
    ld a, b
    call c, RST_08
    nop
    db $e4
    nop
    sbc b
    ld a, b
    rst $38
    ld a, [c]
    jr nz, jr_011_7ce4

    jr @-$26

    call c, Call_011_5904
    inc bc

jr_011_7ce4:
    ld a, [hl]
    ld [bc], a
    ld e, b
    sbc b
    pop hl
    ld bc, $c818
    di

jr_011_7ced:
    ld e, d
    ld b, b
    rst $38
    ld a, [c]
    pop hl
    ld bc, $d888
    jr nz, @+$04

    ld l, b
    jr z, jr_011_7ced

    ld e, d
    ld b, b
    di
    bit 1, b
    rst $38
    ld a, [c]
    ld [de], a
    ld bc, $7858
    di
    ret nc

    ld c, b
    rst $38
    ld a, [c]
    ld e, $15
    add b
    nop
    di
    ld e, d
    ld b, b
    di
    db $e3
    ld c, b
    rst $38
    pop af
    call c, $f20d
    call c, $0303
    nop
    ld e, $05
    ld a, [hl]
    rlca
    ld hl, sp+$09
    add b
    ld l, l
    add hl, bc
    add c
    adc l
    di
    add sp, $48
    rst $38
    ld a, [c]
    call c, $0303
    nop
    ld e, $06
    and [hl]
    rlca
    ld a, d
    ld bc, $3838
    ld a, d
    ld bc, $9848
    ld hl, sp+$09
    add b
    adc c
    add hl, bc
    add c
    sbc c
    rst $38
    ld a, [c]
    call c, $0f03
    nop
    ld e, $05
    ld e, [hl]
    rlca
    ld hl, sp+$09
    nop
    ld de, $0109
    dec e
    add hl, bc
    ld [bc], a
    sub c
    add hl, bc
    inc bc
    sbc l
    di
    db $ed
    ld c, b
    rst $38
    ld a, [c]
    jr nz, jr_011_7d63

    ld a, b

jr_011_7d63:
    ld a, b
    call c, $9504
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    sbc b
    ld e, b
    pop hl
    ld bc, $d888
    ld a, d
    ld bc, $2828
    ld hl, sp+$09
    nop
    dec l
    di
    db $f4
    ld c, b
    rst $38
    ld a, [c]
    ld [de], a
    nop
    adc b
    ld a, b
    ld a, [hl]
    ld bc, $7838
    jr c, jr_011_7d87

jr_011_7d87:
    ld e, b
    ld a, b
    pop af
    ld [c], a
    ld bc, $0adc
    rst $38
    ld a, [c]
    call c, $9d04
    ld bc, $027e
    sbc b
    ret c

    pop hl
    ld bc, $c818
    call c, $0005
    nop
    ld hl, sp+$09
    add b
    ld [hl], $09
    add c
    ld b, [hl]
    add hl, bc
    add d
    ld d, h
    add hl, bc
    add e
    ld d, l
    add hl, bc
    add h
    ld d, [hl]
    di
    rlca
    ld c, c
    rst $38
    ld a, [c]

jr_011_7db5:
    jr nz, jr_011_7db7

jr_011_7db7:
    jr jr_011_7df1

    ld hl, sp+$09
    nop
    ld b, e
    rst $38
    ld a, [c]
    pop hl
    ld bc, $c818
    rst $20
    nop
    jr @-$76

    di
    inc c
    ld c, c
    rst $38
    ld a, [c]
    call c, $1704
    dec b
    ld a, [hl]
    ld [bc], a
    jr jr_011_7e4c

    pop hl
    ld bc, $7898
    rst $38
    rst $30
    ld [bc], a
    ld e, e
    nop
    inc [hl]
    ld b, h
    ld e, e
    nop
    jr nc, jr_011_7e39

    ld e, e
    nop
    jr nc, jr_011_7e4f

    ld e, e
    nop
    jr nc, jr_011_7e65

    ld e, e
    nop
    inc [hl]
    adc h
    rst $38
    ld a, [c]

jr_011_7df1:
    ld [hl], h
    nop
    jr z, jr_011_7e6d

    or c
    rlca
    ld hl, sp-$08
    rst $38
    ld a, [c]
    ld [hl], h
    ld bc, $68f8
    ld [hl], h
    inc bc
    ld a, b
    ld l, b
    ld [hl], h
    ld [$50a8], sp
    ld [hl], h
    add hl, bc
    xor b
    add b
    ld [hl], h
    dec b
    ld hl, sp+$68
    ld [hl], h
    ld b, $18
    sbc b
    rst $38
    ld a, [c]
    or c
    ld bc, $0000
    or d
    nop
    ld e, b
    ld h, b
    or c
    inc bc
    ld c, b
    adc b
    or c
    inc bc
    jr c, jr_011_7e7d

    or c
    inc bc
    jr z, jr_011_7ea1

    or c
    inc bc
    jr z, jr_011_7db5

    rst $38
    ld a, [c]
    or c
    ld [$00f8], sp
    or c
    add hl, bc
    ld hl, sp+$00
    or c
    dec c

jr_011_7e39:
    jr z, jr_011_7eb3

    or c
    ld c, $28
    adc b
    rst $38
    ld a, [c]
    or e
    ld bc, $5048
    or e
    inc bc
    ld c, b
    ld d, b
    rst $38
    di
    ld l, b

jr_011_7e4c:
    ld b, h
    rst $38
    ld a, [c]

jr_011_7e4f:
    ld c, [hl]
    nop
    add hl, hl
    jr jr_011_7ea2

    ld bc, $5259
    ld c, [hl]
    ld [bc], a
    ld c, c
    ld [hl], h
    ld c, [hl]
    inc bc
    ld e, c
    ld [hl], h
    ld c, [hl]
    inc b
    ld l, b
    jr c, @+$50

    dec b

jr_011_7e65:
    ld b, l
    ld e, b
    ld c, [hl]
    ld b, $10
    ld c, b
    rst $38
    ld a, [c]

jr_011_7e6d:
    ld l, d
    ld bc, $8838
    ld l, d
    ld [bc], a
    ld hl, $6a00
    ld [bc], a
    ld b, c
    ld bc, $026a
    ld h, c
    ld [bc], a

jr_011_7e7d:
    ld l, d
    ld [bc], a
    ld h, e
    inc bc
    ld l, d
    ld [bc], a
    ld h, l
    inc b
    ld l, d
    ld [bc], a
    ld d, [hl]
    dec b
    ld l, d
    ld [bc], a
    ld d, $06
    ld l, d
    ld [bc], a
    inc d
    rlca
    ld l, d
    ld [bc], a
    ld [de], a
    ld [$f2ff], sp
    ld e, $14
    rlca
    nop
    ld hl, sp+$08
    nop
    nop
    rst $38
    pop af

jr_011_7ea1:
    sbc e

jr_011_7ea2:
    nop
    ld a, [c]
    sub [hl]
    nop
    jr z, @+$2a

    ld sp, hl
    ld [bc], a
    ld d, $00
    nop
    ld l, b
    add b
    rst $38
    ld de, $1111

jr_011_7eb3:
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111

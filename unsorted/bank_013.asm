; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $013", ROMX

    ld bc, $0413
    jr nz, jr_013_400d

    ld [bc], a
    ld de, $2401
    ld [$0711], sp
    inc h

jr_013_400d:
    ld [$1102], sp
    ld bc, $0924
    ld de, $2407
    add hl, bc
    ld [bc], a
    ld d, $03
    ld [hli], a
    ld [$0516], sp
    ld [hli], a
    jr z, @+$04

    ld de, $2401
    dec bc
    ld de, $2407
    dec bc
    ld [bc], a
    ld de, $2401
    jr z, @+$13

    rlca
    inc h
    jr z, @+$04

    ld de, $2401
    add hl, hl
    ld de, $2407
    add hl, hl
    ld [bc], a
    ld d, $02
    ld [hli], a
    ld [$0616], sp
    ld [hli], a
    jr z, @+$04

    ld de, $2401
    dec hl
    ld de, $2407
    dec hl
    ld [bc], a
    rla
    ld bc, $0822
    rla
    rlca
    ld [hli], a
    jr z, jr_013_4059

    jr jr_013_4059

jr_013_4059:
    ld [hli], a
    ld [$0818], sp
    ld [hli], a
    jr z, jr_013_4077

    ld b, b
    dec sp
    ld b, b
    ld c, l
    ld b, b
    ld d, [hl]
    ld b, b
    nop
    ld bc, $00fc
    ld d, $00
    ld bc, $f80b
    jr @+$42

    ld bc, $0815
    ld d, $20

jr_013_4077:
    ld bc, $1105
    jr jr_013_407c

jr_013_407c:
    ld bc, $08fc
    ld d, $20
    ld bc, $110b
    jr jr_013_40c6

    ld bc, $0015
    ld d, $00
    ld bc, $f805
    jr jr_013_4090

jr_013_4090:
    ld bc, $0408
    ld b, $00
    ld bc, $0506
    stop
    ld bc, $0408
    nop
    nop
    ld bc, $0408
    nop
    jr nz, @+$03

    ld [$0204], sp
    nop
    ld bc, $0408
    inc b
    nop
    ld bc, $0408
    ld b, $00
    ld bc, $040d
    nop
    nop
    ld bc, $040d
    nop
    rlca
    ld bc, $0406
    nop
    nop
    ld bc, $0507
    nop

jr_013_40c6:
    nop
    ld bc, $0608
    nop
    nop
    ld bc, $0509
    nop
    nop
    ld bc, $040a
    nop
    nop
    ld bc, $0309
    nop
    nop
    ld bc, $0208
    nop
    nop
    ld bc, $0307
    nop
    nop
    ld bc, $0408
    ld [$0100], sp
    ld [$0a04], sp
    nop
    ld bc, $0408
    inc c
    nop
    ld bc, $0408
    inc c
    jr nz, @+$03

    ld a, [$00ff]
    nop
    ld bc, $fef8
    nop
    nop
    ld bc, $09fa
    nop
    nop
    ld bc, $0af8
    nop
    nop
    ld bc, $0008
    nop
    nop
    ld bc, $040b
    nop
    nop
    ld bc, $030b
    ld [bc], a
    nop
    ld bc, $030a
    inc b
    nop
    ld bc, $040b
    nop
    jr nz, jr_013_4128

    dec bc

jr_013_4128:
    dec b
    ld [bc], a
    jr nz, jr_013_412d

    ld a, [bc]

jr_013_412d:
    dec b
    inc b
    jr nz, @+$04

    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [bc], a
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [bc], a
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld [bc], a
    ld [$1000], sp
    nop
    ld [$1208], sp
    nop
    ld [bc], a
    ld [$1200], sp
    jr nz, jr_013_416b

    ld [$2010], sp
    ld [bc], a
    ld [$1200], sp
    nop

jr_013_416b:
    ld [$1408], sp
    nop
    ld [bc], a
    ld [$1400], sp
    nop
    ld [$1608], sp
    nop
    ld [bc], a
    ld [$1600], sp
    jr nz, jr_013_4186

    ld [$2014], sp
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop

jr_013_4186:
    ld a, [bc]
    ld [$2000], sp
    ld [bc], a
    ld [$00fe], sp
    nop
    ld [$000a], sp
    jr nz, jr_013_4196

    ld b, $fc

jr_013_4196:
    nop
    nop
    ld b, $0c
    nop
    jr nz, jr_013_419f

    ld b, $03

jr_013_419f:
    nop
    nop
    ld b, $05
    nop
    nop
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld bc, $0605
    nop
    ld bc, $0402
    ld bc, $0700
    inc b
    rlca
    nop
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop
    inc bc
    ld [$0000], sp
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld bc, $0902
    nop
    ld bc, $0302
    cp $00  ; and a / or a
    rlca
    inc bc
    ld a, [bc]
    nop
    rlca
    ld [bc], a
    inc b
    db $fd
    nop
    nop
    inc b
    dec bc
    nop
    nop
    ld [bc], a
    dec b
    db $fc
    nop
    ld bc, $0c05
    nop
    ld bc, $0602
    ei
    nop
    rlca
    ld b, $0d
    nop
    rlca
    ld [bc], a
    ld [$00fa], sp
    nop
    ld [$000e], sp
    nop
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, jr_013_4202

    ld a, [bc]
    nop

jr_013_4202:
    nop
    nop
    ld a, [bc]
    ld [$0002], sp
    ld [bc], a
    ld [$0800], sp
    nop
    ld [$0808], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    jr nz, @+$04

    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$3200], sp
    jr nz, jr_013_4231

    ld [$2030], sp
    ld [bc], a
    ld [$3000], sp
    nop

jr_013_4231:
    ld [$3208], sp
    nop
    ld [bc], a
    ld [$0e00], sp
    nop
    ld [$0e08], sp
    ld h, b
    ld [bc], a
    ld [$1000], sp
    nop
    ld [$1008], sp
    ld h, b
    ld [bc], a
    ld [$0e08], sp
    jr nz, @+$0a

    nop
    ld c, $40
    ld [bc], a
    ld [$1008], sp
    jr nz, jr_013_425e

    nop
    db $10
    ld b, b
    ld [bc], a
    ld [$0000], sp
    nop

jr_013_425e:
    ld [$0008], sp
    jr nz, @+$04

    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0200], sp
    jr nz, @+$0a

    ld [$2000], sp
    ld [bc], a
    ld [$0600], sp
    jr nz, jr_013_4282

    ld [$2004], sp
    ld [bc], a
    ld [$0e00], sp
    inc bc

jr_013_4282:
    ld [$1008], sp
    inc bc
    ld [bc], a
    ld [$0e01], sp
    inc bc
    ld [$1009], sp
    inc bc
    ld [bc], a
    ld [$1200], sp
    inc bc
    ld [$1408], sp
    inc bc
    ld [bc], a
    ld [$1000], sp
    inc hl
    ld [$0e08], sp
    inc hl
    ld [bc], a
    ld [$10ff], sp
    inc hl
    ld [$0e07], sp
    inc hl
    ld [bc], a
    ld [$1400], sp
    inc hl
    ld [$1208], sp
    inc hl
    ld [bc], a
    ld [$0a00], sp
    jr nz, @+$0a

    ld [$2008], sp
    ld [bc], a
    ld [$0e00], sp
    jr nz, jr_013_42ca

    ld [$200c], sp
    ld [bc], a
    ld [$0600], sp
    nop

jr_013_42ca:
    ld [$0608], sp
    ld h, b
    ld [bc], a
    ld [$0600], sp
    ld b, b
    ld [$0608], sp
    jr nz, @+$04

    ld [$1800], sp
    nop
    ld [$1608], sp
    nop
    ld [bc], a
    ld [$1408], sp
    jr nz, @+$0a

    nop
    ld d, $20
    ld [bc], a
    ld [$1a08], sp
    jr nz, @+$0a

    nop
    inc e
    jr nz, @+$04

    ld [$0800], sp
    ld b, $08
    ld [$2608], sp
    ld [bc], a
    ld [$0400], sp
    jr nz, jr_013_4309

    ld [$2000], sp
    ld [bc], a
    ld [$0000], sp
    nop

jr_013_4309:
    ld [$0408], sp
    nop
    ld [bc], a
    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0a00], sp
    inc hl
    ld [$0808], sp
    inc hl
    ld [bc], a
    ld [$0e00], sp
    inc hl
    ld [$0c08], sp
    inc hl
    ld [bc], a
    ld [$1a00], sp
    inc b
    ld [$1a08], sp
    inc h
    ld [bc], a
    ld [$1a00], sp
    dec b
    ld [$1a08], sp
    dec h
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    jr nz, @+$04

    ld [$0c00], sp
    nop
    ld [$0c08], sp
    jr nz, @+$04

    ld [$0c00], sp
    rlca
    ld [$0c08], sp
    daa
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0200], sp
    nop
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0408], sp
    ld h, b
    ld [bc], a
    ld [$0600], sp
    nop
    ld [$0608], sp
    ld h, b
    ld [bc], a
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [bc], a
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    ld [bc], a
    ld [$0600], sp
    nop
    ld [$0608], sp
    ld h, b
    ld [bc], a
    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$04fe], sp
    nop
    ld [$0606], sp
    nop
    ld [bc], a
    ld [$08fe], sp
    nop
    ld [$0606], sp
    nop
    ld [bc], a
    ld [$1208], sp
    jr nz, jr_013_43c6

    nop
    inc d
    jr nz, @+$04

    ld [$0000], sp
    nop

jr_013_43c6:
    ld a, [bc]
    ld [$2000], sp
    ld [bc], a
    ld [$0004], sp
    jr nz, @+$10

    ld [$2000], sp
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    ld [$0008], sp
    jr nz, @+$04

    ld [$0006], sp
    nop
    ld c, $08
    nop
    nop
    ld [bc], a
    db $fc
    nop
    ld d, $00
    or $0b
    ld d, $00
    ld [bc], a
    db $fc
    ld [$0016], sp
    or $fd
    ld d, $00
    ld [bc], a
    ld [$0e00], sp
    nop
    ld [$0e08], sp
    jr nz, @+$04

    ld [$04ff], sp
    nop
    ld [$0607], sp
    nop
    ld [bc], a
    ld [$0008], sp
    jr nz, @+$0a

    nop
    ld [bc], a
    jr nz, @+$04

    ld [$0409], sp
    jr nz, @+$0a

    ld bc, $2006
    ld [bc], a
    ld [$0c09], sp
    jr nz, jr_013_4429

    ld bc, $200e
    ld [bc], a
    ld [$1800], sp
    inc bc

jr_013_4429:
    ld [$1a08], sp
    inc bc
    inc bc
    dec c
    inc bc
    inc e
    ld [bc], a
    ld [$0000], sp
    ld bc, $0808
    ld [bc], a
    ld bc, $0d03
    ld [bc], a
    ld e, $02
    ld [$0400], sp
    ld bc, $0808
    ld b, $01
    inc bc
    add hl, bc
    cp $12
    inc bc
    ld [$1400], sp
    nop
    ld [$1608], sp
    nop
    inc bc
    rlca
    ei
    ld [de], a
    inc bc
    ld [$1400], sp
    nop
    ld [$1608], sp
    nop
    inc bc
    add hl, bc
    cp $12
    inc bc
    ld [$1800], sp
    ld [bc], a
    ld [$1a08], sp
    ld [bc], a
    inc bc
    rlca
    ei
    ld [de], a
    inc bc
    ld [$1800], sp
    ld [bc], a
    ld [$1a08], sp
    ld [bc], a
    inc bc
    ld [$0000], sp
    ld [bc], a
    ld [$0208], sp
    ld [bc], a
    ld hl, sp+$05
    inc b
    ld [bc], a
    inc bc
    ld [$1a00], sp
    ld [bc], a
    ld [$1c08], sp
    ld [bc], a
    ld sp, hl
    dec b
    inc b
    ld [bc], a
    inc bc
    add hl, bc
    ld a, [bc]
    ld [de], a
    inc hl
    ld [$1600], sp
    jr nz, jr_013_44a7

    ld [$2014], sp
    inc bc
    rlca
    dec c
    ld [de], a
    inc hl

jr_013_44a7:
    ld [$1600], sp
    jr nz, jr_013_44b4

    ld [$2014], sp
    inc bc
    dec c
    dec b
    inc e
    ld [hli], a

jr_013_44b4:
    ld [$0008], sp
    ld hl, $0008
    ld [bc], a
    ld hl, $0d03
    dec b
    ld e, $22
    ld [$0408], sp
    ld hl, $0008
    ld b, $21
    inc bc
    ld [$00f8], sp
    nop
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    inc bc
    ld [$00f8], sp
    ld bc, $0008
    ld [bc], a
    inc bc
    ld [$0408], sp
    inc bc
    inc bc
    ld [$06f8], sp
    nop
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    inc bc
    ld [$06f8], sp
    ld bc, $0008
    ld [$0803], sp
    ld [$030a], sp
    inc bc
    ld [$0cf8], sp
    nop
    ld [$0e00], sp
    nop
    ld [$1008], sp
    nop
    inc bc
    ld [$0400], sp
    jr nz, jr_013_4518

    ld [$2002], sp
    ld [$0010], sp
    jr nz, jr_013_451b

jr_013_4518:
    ld [$0400], sp

jr_013_451b:
    inc hl
    ld [$0208], sp
    inc hl
    ld [$0010], sp
    ld hl, $0803
    nop
    ld a, [bc]
    jr nz, jr_013_4532

    ld [$2008], sp
    ld [$0610], sp
    jr nz, jr_013_4535

jr_013_4532:
    ld [$0a00], sp

jr_013_4535:
    inc hl
    ld [$0808], sp
    inc hl
    ld [$0610], sp
    ld hl, $0803
    nop
    ld a, [bc]
    ld bc, $0808
    inc c
    ld bc, $04f9
    ld c, $01
    inc bc
    ld [$0a08], sp
    ld hl, $0008
    inc c
    ld hl, $04f9
    ld c, $21
    inc bc
    ld [$00ff], sp
    ld bc, $0708
    ld [bc], a
    ld bc, $03fa
    ld c, $01
    inc b
    ld [$04f8], sp
    ld bc, $0008
    ld b, $01
    ld [$0808], sp
    ld bc, $04fa
    ld c, $01
    inc bc
    ld [$1000], sp
    ld bc, $0808
    ld [de], a
    ld bc, $04fa
    ld c, $01
    inc bc
    ld [$14ff], sp
    ld bc, $0708
    ld d, $01
    ld sp, hl
    inc b
    ld c, $01
    inc bc
    ld [$1008], sp
    ld hl, $0008
    ld [de], a
    ld hl, $04fa
    ld c, $21
    inc bc
    ld [$1409], sp
    ld hl, $0108
    ld d, $21
    ld sp, hl
    inc b
    ld c, $21
    inc bc
    stop
    inc d
    nop
    nop
    ld [$0016], sp
    db $10
    ld [$0018], sp
    inc bc
    db $10
    ld [$2014], sp
    nop
    nop
    ld d, $20
    stop
    jr @+$22

    inc bc
    ld [$1000], sp
    ld [bc], a
    ld [$1208], sp
    ld [bc], a
    ld hl, sp+$04
    inc d
    ld [bc], a
    inc bc
    ld [$1008], sp
    ld [hli], a
    ld [$1200], sp
    ld [hli], a
    ld hl, sp+$04
    inc d
    ld [hli], a
    inc bc
    ld [$1600], sp
    nop
    ld [$1808], sp
    nop
    ld sp, hl
    inc b
    ld a, [de]
    nop
    inc bc
    ld [$1608], sp
    jr nz, jr_013_45f9

    nop
    jr @+$22

    ld sp, hl
    inc b
    ld a, [de]
    jr nz, jr_013_45fc

jr_013_45f9:
    ld [$0cff], sp

jr_013_45fc:
    nop
    ld [$0e07], sp
    nop
    ld a, [$1a03]
    nop
    inc bc
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld hl, sp+$05
    nop
    nop
    inc bc
    ld [$0800], sp
    jr nz, jr_013_4620

    ld [$2006], sp
    ld hl, sp+$03
    nop
    nop
    inc bc

jr_013_4620:
    ld [$0a00], sp
    nop
    ld [$0c08], sp
    nop
    ld hl, sp+$03
    ld [bc], a
    nop
    inc bc
    ld [$0c00], sp
    jr nz, jr_013_463a

    ld [$200a], sp
    ld hl, sp+$05
    ld [bc], a
    nop
    inc bc

jr_013_463a:
    ld [$0e00], sp
    nop
    ld [$1008], sp
    nop
    ld hl, sp+$07
    inc b
    nop
    inc bc
    ld [$1200], sp
    nop
    ld [$1408], sp
    nop
    ld hl, sp+$06
    inc b
    nop
    inc bc
    ld [$1000], sp
    jr nz, jr_013_4661

    ld [$200e], sp
    ld hl, sp+$01
    inc b
    jr nz, jr_013_4664

jr_013_4661:
    ld [$1400], sp

jr_013_4664:
    jr nz, jr_013_466e

    ld [$2012], sp
    ld hl, sp+$02
    inc b
    jr nz, jr_013_4671

jr_013_466e:
    ld [$0000], sp

jr_013_4671:
    nop
    ld [$0208], sp
    nop
    ld sp, hl
    rlca
    stop
    inc bc
    ld [$0200], sp
    jr nz, jr_013_4688

    ld [$2000], sp
    ld sp, hl
    ld bc, $0010
    inc bc

jr_013_4688:
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld a, [$1002]
    nop
    inc bc
    ld [$0600], sp
    jr nz, jr_013_46a2

    ld [$2004], sp
    ld a, [$1006]
    jr nz, jr_013_46a5

jr_013_46a2:
    ld [$0800], sp

jr_013_46a5:
    nop
    ld [$0a08], sp
    nop
    ld sp, hl
    rlca
    stop
    inc bc
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld hl, sp+$07
    stop
    inc bc
    ld [$0a00], sp
    jr nz, jr_013_46c9

    ld [$2008], sp
    ld sp, hl
    ld bc, $2010
    inc bc

jr_013_46c9:
    ld [$0e00], sp
    jr nz, jr_013_46d6

    ld [$200c], sp
    ld hl, sp+$01
    db $10
    jr nz, jr_013_46d9

jr_013_46d6:
    ei
    inc b
    db $10

jr_013_46d9:
    dec b
    ld [$0000], sp
    inc bc
    ld [$0208], sp
    inc bc
    inc bc
    ei
    dec b
    db $10
    dec h
    ld [$0009], sp
    inc hl
    ld [$0201], sp
    inc hl
    inc bc
    ld [$0400], sp
    inc bc
    ld [$0608], sp
    inc bc
    ei
    inc b
    db $10
    dec b
    inc bc
    ld [$0409], sp
    inc hl
    ld [$0601], sp
    inc hl
    ei
    dec b
    db $10
    dec h
    inc bc
    ei
    ld [bc], a
    ld [de], a
    dec b
    ld [$0800], sp
    inc bc
    ld [$0a08], sp
    inc bc
    inc bc
    db $fc
    ld [bc], a
    ld [de], a
    dec b
    ld [$0c00], sp
    inc bc
    ld [$0e08], sp
    inc bc
    inc bc
    ei
    ld b, $12
    dec h
    ld [$0808], sp
    inc hl
    ld [$0a00], sp
    inc hl
    inc bc
    db $fc
    ld b, $12
    dec h
    ld [$0c08], sp
    inc hl
    ld [$0e00], sp
    inc hl
    inc bc
    ld [$2a00], sp
    inc bc
    ld [$2e08], sp
    inc bc
    db $fd
    rst $38
    inc d
    dec b
    inc bc
    ld [$2e08], sp
    inc bc
    ld [$2c00], sp
    inc bc
    db $fd
    rst $38
    inc d
    dec b
    inc bc
    ld a, [$1005]
    dec b
    ld [$3000], sp
    inc bc
    ld [$3208], sp
    inc bc
    inc bc
    ei
    inc b
    ld [de], a
    dec b
    ld [$1600], sp
    inc bc
    ld [$1808], sp
    inc bc
    inc bc
    db $fc
    ld [$0512], sp
    ld [$1a00], sp
    inc bc
    ld [$1c08], sp
    inc bc
    inc bc
    ei
    inc b
    db $10
    dec b
    ld [$2000], sp
    inc bc
    ld [$2208], sp
    inc bc
    inc bc
    ld bc, $280d
    dec b
    ld [$2400], sp
    inc bc
    ld [$2608], sp
    inc bc
    inc bc
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [$2af8], sp
    inc b
    inc bc
    ld [$0a00], sp
    jr nz, jr_013_47b3

    ld [$2008], sp
    ld [$2a10], sp
    inc h
    inc bc

jr_013_47b3:
    ld [bc], a
    ld [$2004], sp
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    inc bc
    ld [bc], a
    ld b, $04
    jr nz, jr_013_47cd

    nop
    ld [$0820], sp
    ld [$2006], sp
    inc bc

jr_013_47cd:
    inc bc
    rst $38
    inc b
    nop
    ld [$0c00], sp
    jr nz, jr_013_47de

    ld [$200a], sp
    inc bc
    inc b
    rst $38
    inc b
    nop

jr_013_47de:
    ld [$1000], sp
    jr nz, jr_013_47eb

    ld [$200e], sp
    inc bc
    nop
    nop
    inc b
    nop

jr_013_47eb:
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc bc
    nop
    rst $38
    inc b
    nop
    ld [$0200], sp
    jr nz, @+$0a

    ld [$2000], sp
    inc bc
    inc bc
    add hl, bc
    inc b
    jr nz, jr_013_480e

    nop
    ld a, [bc]
    nop
    ld [$0c08], sp
    nop
    inc bc

jr_013_480e:
    inc b
    add hl, bc
    inc b
    jr nz, jr_013_481b

    nop
    ld c, $00
    ld [$1008], sp
    nop
    inc bc

jr_013_481b:
    inc c
    ld a, [bc]
    jr @+$07

    ld [$0000], sp
    inc bc
    ld [$0208], sp
    inc bc
    inc bc
    ld [$0200], sp
    inc hl
    ld [$0008], sp
    inc hl
    inc c
    add hl, bc
    jr @+$27

    inc bc
    inc c
    cp $18
    dec b
    ld [$0400], sp
    inc bc
    ld [$0608], sp
    inc bc
    inc bc
    ld [$0600], sp
    inc hl
    ld [$0408], sp
    inc hl
    inc c
    cp $18
    dec h
    inc bc
    inc c
    ld b, $18
    dec b
    ld [$0800], sp
    inc bc
    ld [$0a08], sp
    inc bc
    inc bc
    dec bc
    ld b, $18
    dec b
    ld [$0c00], sp
    inc bc
    ld [$0e08], sp
    inc bc
    inc bc
    ld [$00fc], sp
    nop
    ld [$0204], sp
    nop
    ld [$000c], sp
    jr nz, jr_013_4879

    ld [$04fc], sp

jr_013_4879:
    nop
    ld [$0604], sp
    nop
    ld [$040c], sp
    jr nz, jr_013_4886

    ld [$08fc], sp

jr_013_4886:
    nop
    ld [$0a04], sp
    nop
    ld [$080c], sp
    jr nz, jr_013_4893

    ld [$0cfc], sp

jr_013_4893:
    nop
    ld [$0e04], sp
    nop
    ld [$0c0c], sp
    jr nz, @+$05

    inc c
    ld [$4000], sp
    inc c
    nop
    nop
    ld b, b
    ld [$0004], sp
    ld b, b
    inc bc
    inc c
    ld [$0000], sp
    inc c
    nop
    nop
    nop
    ld [$0004], sp
    nop
    inc bc
    ld [$1e00], sp
    ld [bc], a
    ld [$2008], sp
    ld [bc], a
    ld hl, sp+$03
    ld [hli], a
    ld [bc], a
    inc bc
    ld [$1e08], sp
    ld [hli], a
    ld [$2000], sp
    ld [hli], a
    ld hl, sp+$05
    ld [hli], a
    ld [hli], a
    inc bc
    ld [$2408], sp
    ld [hli], a
    ld [$2600], sp
    ld [hli], a
    rlca
    ei
    inc l
    ld [hli], a
    inc bc
    ld [$2808], sp
    ld [hli], a
    ld [$2a00], sp
    ld [hli], a
    ld [$2cfc], sp
    ld [hli], a
    inc bc
    ld [$0000], sp
    ld [bc], a
    ld [$0208], sp
    ld [bc], a
    ld hl, sp+$05
    inc b
    ld [bc], a
    inc bc
    ld [$0008], sp
    ld [hli], a
    ld [$0200], sp
    ld [hli], a
    ld hl, sp+$03
    inc b
    ld [hli], a
    inc bc
    ld [$2400], sp
    ld [bc], a
    ld [$2608], sp
    ld [bc], a
    rlca
    dec c
    inc l
    ld [bc], a
    inc bc
    ld [$2800], sp
    ld [bc], a
    ld [$2a08], sp
    ld [bc], a
    ld [$2c0c], sp
    ld [bc], a
    inc bc
    ld [$1a00], sp
    ld [bc], a
    ld [$1c08], sp
    ld [bc], a
    ld sp, hl
    dec b
    inc b
    ld [bc], a
    inc bc
    ld [$0408], sp
    ld [hli], a
    ld [$0600], sp
    ld [hli], a
    rlca
    ei
    inc c
    ld [hli], a
    inc bc
    ld [$0808], sp
    ld [hli], a
    ld [$0a00], sp
    ld [hli], a
    ld [$0cfc], sp
    ld [hli], a
    inc bc
    ld [$10fd], sp
    jr nz, jr_013_4953

    ld [$2008], sp
    ld [$0a00], sp
    jr nz, jr_013_4956

jr_013_4953:
    ld [$200d], sp

jr_013_4956:
    ld hl, $0808
    ld [de], a
    jr nz, jr_013_4964

    nop
    inc d
    jr nz, jr_013_4963

    ld [$3a00], sp

jr_013_4963:
    ld [bc], a

jr_013_4964:
    ld [$3c08], sp
    ld [bc], a
    rlca
    ld c, $2c
    ld [bc], a
    inc bc
    ld [$2608], sp
    ld [bc], a
    ld [$3800], sp
    ld [bc], a
    rlca
    dec c
    inc l
    ld [bc], a
    inc bc
    ld hl, sp+$03
    nop
    nop
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    inc bc
    ld hl, sp+$05
    nop
    jr nz, jr_013_4994

    ld [$2002], sp
    ld [$0400], sp
    jr nz, jr_013_4997

jr_013_4994:
    ld [$00fc], sp

jr_013_4997:
    nop
    ld [$0204], sp
    nop
    ld [$040c], sp
    nop
    inc bc
    ld [$00fc], sp
    ld b, b
    ld [$0204], sp
    ld b, b
    ld [$040c], sp
    ld b, b
    inc bc
    ld [$00fc], sp
    inc bc
    ld [$0604], sp
    inc bc
    ld [$080c], sp
    inc bc
    inc bc
    ld [$000c], sp
    inc hl
    ld [$0604], sp
    inc hl
    ld [$08fc], sp
    inc hl
    inc bc
    ldh a, [rTIMA]
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    ld [$000e], sp
    inc bc
    ldh a, [rDIV]
    ld [bc], a
    nop
    nop
    nop
    stop
    nop
    ld [$0012], sp
    inc bc
    ldh a, [rDIV]
    ld [$0000], sp
    nop
    jr jr_013_49ea

jr_013_49ea:
    nop
    ld [$001a], sp
    inc bc
    ldh a, [rDIV]
    ld a, [bc]
    nop
    nop
    nop
    inc e
    nop
    nop
    ld [$001e], sp
    inc bc
    ld bc, $0c0a
    ld bc, $0000
    nop
    ld [bc], a
    nop
    ld [$0202], sp
    inc bc
    nop
    ld a, [bc]
    inc c
    ld bc, $0800
    nop
    ld [hli], a
    nop
    nop
    ld [bc], a
    ld [hli], a
    inc bc
    ld bc, $0c02
    ld bc, $0000
    inc b
    ld [bc], a
    nop
    ld [$0206], sp
    inc bc
    nop
    ld [bc], a
    inc c
    ld bc, $0000
    ld [$0002], sp
    ld [$020a], sp
    inc bc
    nop
    ld [$2204], sp
    nop
    nop
    ld b, $22
    cp $06
    inc c
    ld hl, $0003
    ld [$2208], sp
    nop
    nop
    ld a, [bc]
    ld [hli], a
    db $fd
    ld b, $0c
    ld hl, $0803
    nop
    inc b
    nop
    ld [$0608], sp
    nop
    nop
    ld [$0014], sp
    inc bc
    ld [$0600], sp
    jr nz, jr_013_4a64

    ld [$2004], sp
    cp $08
    inc d
    nop
    inc bc

jr_013_4a64:
    rrca
    nop
    inc d
    ld b, b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc bc
    ld de, $1400
    ld b, b
    ld [$0200], sp
    jr nz, jr_013_4a82

    ld [$2000], sp
    inc bc
    ld hl, sp+$05
    jr jr_013_4a82

jr_013_4a82:
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc bc
    ld sp, hl
    dec b
    jr jr_013_4a8f

jr_013_4a8f:
    ld [$1000], sp
    nop
    ld [$1208], sp
    nop
    inc bc
    ld hl, sp+$03
    jr jr_013_4abc

    ld [$0c08], sp
    jr nz, @+$0a

    nop
    ld c, $20
    inc bc
    ld [$1008], sp
    jr nz, jr_013_4ab2

    nop
    ld [de], a
    jr nz, @-$05

    inc bc
    jr @+$22

    inc bc

jr_013_4ab2:
    ld [$1000], sp
    ld bc, $0808
    ld [de], a
    ld bc, $fc07

jr_013_4abc:
    jr @+$07

    inc bc
    ld [$1400], sp
    ld bc, $0808
    ld d, $01
    ld [$18fc], sp
    dec b
    inc bc
    rlca
    inc b
    jr @+$07

    ld [$0000], sp
    ld bc, $0808
    ld [bc], a
    ld bc, $0803
    ld [$2110], sp
    ld [$1200], sp
    ld hl, $0c07
    jr jr_013_4b0a

    inc bc
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld hl, sp+$08
    ld [$0300], sp
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld sp, hl
    rlca
    ld [$0300], sp
    ld [$0008], sp
    jr nz, jr_013_4b0d

    nop
    ld [bc], a
    jr nz, @-$06

    nop

jr_013_4b0a:
    ld [$0320], sp

jr_013_4b0d:
    ld [$0408], sp
    jr nz, jr_013_4b1a

    nop
    ld b, $20
    ld sp, hl
    ld bc, $2008
    inc bc

jr_013_4b1a:
    ld [$00fc], sp
    nop
    ld [$0204], sp
    nop
    ld [$000c], sp
    jr nz, jr_013_4b2a

    ld [$04fc], sp

jr_013_4b2a:
    nop
    ld [$0604], sp
    nop
    ld [$040c], sp
    jr nz, jr_013_4b37

    ld [$08fc], sp

jr_013_4b37:
    nop
    ld [$0a04], sp
    nop
    ld [$080c], sp
    jr nz, @+$05

    rrca
    inc b
    ld b, $04
    rrca
    nop
    ld [bc], a
    rlca
    rrca
    ld [$0704], sp
    inc bc
    ld [$0af8], sp
    jr nz, jr_013_4b5b

    nop
    ld [$0820], sp
    ld [$2006], sp
    inc bc

jr_013_4b5b:
    ld [$10f8], sp
    jr nz, jr_013_4b68

    nop
    ld c, $20
    ld [$0c08], sp
    jr nz, jr_013_4b6b

jr_013_4b68:
    ld [$00fe], sp

jr_013_4b6b:
    nop
    ld [$0206], sp
    nop
    ld [$040e], sp
    nop
    inc bc
    ld [$04fa], sp
    jr nz, jr_013_4b82

    ld [bc], a
    ld [bc], a
    jr nz, jr_013_4b86

    ld a, [bc]
    nop
    jr nz, jr_013_4b85

jr_013_4b82:
    ld [$0600], sp

jr_013_4b85:
    nop

jr_013_4b86:
    ld [$0808], sp
    nop
    ld [$0a10], sp
    nop
    inc bc
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld [$1010], sp
    nop
    inc b
    inc b
    db $fc
    nop
    nop
    dec b
    inc b
    nop
    ld h, b
    rlca
    ld b, $00
    nop
    inc bc
    ld a, [bc]
    nop
    jr nz, jr_013_4bb1

    inc bc
    rst $38
    nop
    nop

jr_013_4bb1:
    inc bc
    inc b
    nop
    ld h, b
    ld a, [bc]
    ld b, $00
    nop
    inc b
    rlca
    nop
    jr nz, @+$06

    ld [bc], a
    nop
    nop
    jr nz, jr_013_4bc5

    ld [bc], a
    nop

jr_013_4bc5:
    ld h, b
    ld b, $04
    nop
    jr nz, jr_013_4bd7

    rlca
    nop
    jr nz, jr_013_4bd3

    nop
    ld bc, $2000

jr_013_4bd3:
    ld c, $01
    nop
    ld h, b

jr_013_4bd7:
    ld b, $05
    nop
    jr nz, @+$10

    rlca
    nop
    jr nz, @+$06

    rst $38
    nop
    nop
    jr nz, jr_013_4bf3

    cp $00  ; and a / or a
    ld h, b
    ld a, [bc]
    ld [$2000], sp
    db $10
    add hl, bc
    nop
    jr nz, jr_013_4bf5

    cp $ff

jr_013_4bf3:
    nop
    nop

jr_013_4bf5:
    ld c, $fa
    nop
    ld b, b
    ld a, [bc]
    add hl, bc
    nop
    jr nz, jr_013_4c0f

    ld a, [bc]
    nop
    nop
    inc b
    db $fd
    cp $00  ; and a / or a
    nop
    dec c
    ld sp, hl
    nop
    ld b, b
    ld a, [bc]
    inc c
    nop
    nop
    inc de

jr_013_4c0f:
    dec bc
    nop
    nop
    inc b
    db $fc
    db $fd
    nop
    nop
    dec bc
    rst $30
    nop
    ld b, b
    dec bc
    dec c
    nop
    nop
    ld de, $000c
    nop
    inc b
    inc b
    db $fc
    nop
    nop
    dec b
    inc b
    nop
    ld h, d
    rlca
    ld b, $00
    nop
    inc bc
    ld a, [bc]
    nop
    ld [hli], a
    inc b
    inc bc
    rst $38
    nop
    nop
    inc bc
    inc b
    nop
    ld h, d
    ld a, [bc]
    ld b, $00
    nop
    inc b
    rlca
    nop
    ld [hli], a
    inc b
    inc b
    nop
    nop
    ld h, d
    ld b, $04
    nop
    ld [hli], a
    ld [bc], a
    nop
    nop
    jr nz, jr_013_4c5f

    rlca
    nop
    jr nz, jr_013_4c5b

    nop
    ld bc, $2000

jr_013_4c5b:
    ld a, [bc]
    cp $00  ; and a / or a
    ld h, d

jr_013_4c5f:
    ld b, $05
    nop
    ld [hli], a
    ld c, $07
    nop
    jr nz, @+$06

    rst $38
    nop
    nop
    jr nz, @+$0f

    db $fd
    nop
    ld h, d
    ld a, [bc]
    ld [$2200], sp
    db $10
    add hl, bc
    nop
    jr nz, jr_013_4c7d

    cp $ff
    nop
    nop

jr_013_4c7d:
    ld c, $fa
    nop
    ld b, d
    ld a, [bc]
    add hl, bc
    nop
    ld [hli], a
    ld de, $000a
    nop
    inc b
    db $fd
    cp $00  ; and a / or a
    nop
    dec c
    ld sp, hl
    nop
    ld b, d
    ld a, [bc]
    inc c
    nop
    ld [bc], a
    inc de
    dec bc
    nop
    nop
    inc b
    db $fc
    db $fd
    nop
    nop
    dec bc
    rst $30
    nop
    ld b, d
    dec bc
    dec c
    nop
    ld [bc], a
    ld de, $000c
    nop
    inc b
    inc b
    rst $38
    nop
    nop
    inc bc
    ld [$0000], sp
    dec c
    db $fd
    nop
    nop
    inc c
    rlca
    nop
    nop
    inc b
    ld [bc], a
    db $fd
    nop
    nop
    ld bc, $000a
    nop
    dec c
    db $fc
    nop
    nop
    inc c
    add hl, bc
    nop
    nop
    inc b
    ld bc, $00fc
    nop
    nop
    inc c
    nop
    nop
    ld c, $fa
    nop
    nop
    dec c
    dec bc
    nop
    nop
    inc b
    inc bc
    ld a, [$0000]
    ld [bc], a
    ld c, $00
    nop
    db $10
    ld hl, sp+$00
    nop
    rrca
    dec c
    nop
    nop
    inc b
    ld c, $fc
    ld [$0e01], sp
    inc b
    ld [$0221], sp
    inc b
    ld [$0201], sp
    inc c
    ld [$0421], sp
    ld c, $fc
    ld [$0e00], sp
    inc b
    ld [$0220], sp
    inc b
    ld [$0200], sp
    inc c
    ld [$0420], sp
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    jr nz, @+$12

    ld [$0000], sp
    db $10
    stop
    jr nz, jr_013_4d27

    nop
    ld hl, sp+$00
    nop

jr_013_4d27:
    nop
    nop
    nop
    jr nz, jr_013_4d3c

    ld [$0000], sp
    db $10
    stop
    jr nz, jr_013_4d38

    ld [$0efc], sp
    nop

jr_013_4d38:
    nop
    inc b
    ld c, $00

jr_013_4d3c:
    db $10
    inc b
    ld c, $00
    ld [$0e0c], sp
    nop
    inc b
    ld bc, $0001
    ld [bc], a
    ld bc, $0007
    ld [hli], a
    rrca
    ld bc, $4200
    rrca
    rlca
    nop
    ld h, d
    inc b
    nop
    nop
    nop
    ld bc, $0800
    nop
    ld hl, $0010
    nop
    ld b, c
    db $10
    ld [$6100], sp
    inc b
    or $00
    ld [$0406], sp
    nop
    ld b, $05
    or $08
    ld [$0426], sp
    ld [$2506], sp
    inc b
    ld a, [$0800]
    ld b, $08
    nop
    ld b, $05
    ld a, [$0808]
    ld h, $08
    ld [$2506], sp
    inc b
    ld [bc], a
    nop
    ld [$0806], sp
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld [$2608], sp
    ld [$0208], sp
    dec h
    inc b
    cp $00  ; and a / or a
    ld [$fe06], sp
    ld [$2608], sp
    ld [$0400], sp
    dec b
    ld [$0408], sp
    dec h
    inc b
    ld a, [$0a00]
    ld b, $08
    nop
    ld b, $05
    ld a, [$0a08]
    ld h, $08
    ld [$2506], sp
    inc b
    or $00
    ld a, [bc]
    ld b, $04
    nop
    ld b, $05
    or $08
    ld a, [bc]
    ld h, $04
    ld [$2506], sp
    inc b
    ld hl, sp+$00
    nop
    inc bc
    ld hl, sp+$08
    ld [bc], a
    inc bc
    ld [$0400], sp
    ld [bc], a
    ld [$0608], sp
    ld [bc], a
    inc b
    ld hl, sp+$00
    ld [$f803], sp
    ld [$030a], sp
    ld [$0c00], sp
    ld [bc], a
    ld [$0e08], sp
    ld [bc], a
    inc b
    ld hl, sp+$00
    ld [bc], a
    inc hl
    ld hl, sp+$08
    nop
    inc hl
    ld [$0600], sp
    ld [hli], a
    ld [$0408], sp
    ld [hli], a
    inc b
    ld [$0afe], sp
    inc bc
    ld [$0c06], sp
    inc bc
    ld [$0e0e], sp
    inc bc
    ld hl, sp+$04
    ld [$0403], sp
    ld [$0c06], sp
    inc bc
    ld [$0e0e], sp
    inc bc
    ld hl, sp+$04
    ld [$0803], sp
    cp $10
    inc bc
    inc b
    nop
    nop
    ld b, $02
    nop
    ld [$0208], sp
    stop
    ld a, [bc]
    ld [bc], a
    db $10
    ld [$020c], sp
    inc b
    dec b
    nop
    ld c, $02
    dec b
    ld [$0210], sp
    dec b
    db $10
    ld [de], a
    ld [bc], a
    dec d
    ld b, $14
    ld [bc], a
    inc b
    nop
    nop
    ld d, $02
    nop
    ld [$0218], sp
    db $10
    ld [$220a], sp
    stop
    inc c
    ld [hli], a
    inc b
    dec b
    ld [$220e], sp
    dec b
    nop
    db $10
    ld [hli], a
    dec b
    ld hl, sp+$12
    ld [hli], a
    dec d
    ld [bc], a
    inc d
    ld [hli], a
    inc b
    nop
    nop
    jr nz, jr_013_4e6e

    nop
    ld [$0422], sp

jr_013_4e6e:
    stop
    inc h
    inc b
    db $10
    ld [$0426], sp
    inc b
    nop
    nop
    jr z, jr_013_4e7f

    nop
    ld [$042a], sp

jr_013_4e7f:
    stop
    inc l
    inc b
    db $10
    ld [$042e], sp
    inc b
    nop
    nop
    jr nc, jr_013_4e90

    nop
    ld [$0432], sp

jr_013_4e90:
    stop
    inc [hl]
    inc b
    db $10
    ld [$0436], sp
    inc b
    nop
    nop
    ld [hl-], a
    inc h
    nop
    ld [$2430], sp
    stop
    ld [hl], $24
    db $10
    ld [$2434], sp
    inc b
    nop
    nop
    ld a, [hli]
    inc h
    nop
    ld [$2428], sp
    stop
    ld l, $24
    db $10
    ld [$242c], sp
    inc b
    add hl, bc
    rst $38
    ld a, [bc]
    ld bc, $fc08
    nop
    inc bc
    ld [$0204], sp
    inc bc
    ld [$040c], sp
    inc bc
    inc b
    add hl, bc
    rst $38
    inc c
    ld bc, $fc08
    nop
    inc bc
    ld [$0604], sp
    inc bc
    ld [$080c], sp
    inc bc
    inc b
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld hl, $0c08
    nop
    inc hl
    ld [$0204], sp
    inc hl
    ld [$04fc], sp
    inc hl
    inc b
    add hl, bc
    add hl, bc
    inc c
    ld hl, $0c08
    nop
    inc hl
    ld [$0604], sp
    inc hl
    ld [$08fc], sp
    inc hl
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    inc b
    nop
    nop
    ld [bc], a
    jr nz, jr_013_4f15

jr_013_4f15:
    ld [$2000], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    inc b
    nop
    nop
    inc b
    nop
    nop
    ld [$0006], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    inc b
    nop
    nop
    ld b, $20
    nop
    ld [$2004], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    inc b
    nop
    nop
    ld b, $00
    nop
    ld [$0008], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    inc b
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld [$000c], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    inc b
    ld [$00f8], sp
    nop
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    ld [$0610], sp
    nop
    inc b
    ld [$06f8], sp
    jr nz, @+$0a

    nop
    inc b
    jr nz, jr_013_4f87

    ld [$2002], sp
    ld [$0010], sp
    jr nz, jr_013_4f8b

jr_013_4f87:
    ld [$00f8], sp
    nop

jr_013_4f8b:
    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, jr_013_4f9c

    stop
    jr nz, jr_013_4f9c

    inc c
    nop
    nop
    nop

jr_013_4f9c:
    inc c
    ld [$2000], sp
    ld [$02f7], sp
    nop
    ld [$02ff], sp
    jr nz, jr_013_4fad

    dec bc
    inc bc
    nop
    nop

jr_013_4fad:
    dec bc
    dec bc
    nop
    jr nz, @+$0c

    ld a, [$0002]
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    jr nz, jr_013_4fbe

    ld a, [bc]
    ld b, $00
    nop

jr_013_4fbe:
    ld a, [bc]
    ld c, $00
    jr nz, jr_013_4fce

    db $fd
    ld [bc], a
    nop
    dec bc
    dec b
    ld [bc], a
    jr nz, jr_013_4fcf

    ld [$0009], sp

jr_013_4fce:
    nop

jr_013_4fcf:
    ld [$0011], sp
    jr nz, jr_013_4fe0

    nop
    ld [bc], a
    nop
    inc c
    ld [$2002], sp
    inc b
    db $fd
    ld bc, $2216

jr_013_4fe0:
    db $fd
    add hl, bc
    inc d
    ld [hli], a
    ld [$0a00], sp
    inc hl
    ld [$0808], sp
    inc hl
    inc b
    db $fc
    nop
    ld d, $22
    db $fc
    ld [$2214], sp
    ld [$0e00], sp
    inc hl
    ld [$0c08], sp
    inc hl
    inc b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp+$08
    ld b, $00
    inc b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    rst $30
    ld bc, $2006
    rst $30
    add hl, bc
    inc b
    jr nz, jr_013_5024

    ld [$0c00], sp
    nop

jr_013_5024:
    ld [$0e08], sp
    nop
    ld hl, sp+$03
    inc l
    inc b
    ld [$28f8], sp
    inc b
    inc b
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [$2af8], sp
    inc b
    ld [$2ef0], sp
    dec b
    inc b
    ld [$0e00], sp
    jr nz, @+$0a

    ld [$200c], sp
    ld hl, sp+$05
    inc l
    inc h
    ld [$2810], sp
    inc h
    inc b
    ld [$0a00], sp
    jr nz, @+$0a

    ld [$2008], sp
    ld [$2a10], sp
    inc h
    ld [$2e18], sp
    dec h
    inc b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    jr jr_013_506e

jr_013_506e:
    ld a, [bc]
    nop
    jr @+$0a

    inc c
    nop
    inc b
    ld [$0000], sp
    nop
    ld [$0408], sp
    nop
    jr jr_013_507f

jr_013_507f:
    ld a, [bc]
    nop
    jr @+$0a

    inc c
    nop
    inc b
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    jr jr_013_5090

jr_013_5090:
    ld a, [bc]
    nop
    jr jr_013_509c

    inc c
    nop
    inc b
    ld [$0200], sp
    jr nz, jr_013_50a4

jr_013_509c:
    ld [$2000], sp
    jr jr_013_50a1

jr_013_50a1:
    inc c
    jr nz, jr_013_50bc

jr_013_50a4:
    ld [$200a], sp
    inc b
    ld [$0400], sp
    jr nz, jr_013_50b5

    ld [$2000], sp
    jr jr_013_50b2

jr_013_50b2:
    inc c
    jr nz, jr_013_50cd

jr_013_50b5:
    ld [$200a], sp
    inc b
    ld [$0800], sp

jr_013_50bc:
    jr nz, jr_013_50c6

    ld [$2006], sp
    jr jr_013_50c3

jr_013_50c3:
    inc c
    jr nz, @+$1a

jr_013_50c6:
    ld [$200a], sp
    inc b
    ld hl, sp+$00
    inc d

jr_013_50cd:
    nop
    ld hl, sp+$08
    ld d, $00
    ld [$1800], sp
    nop
    ld [$1a08], sp
    nop
    inc b
    ld hl, sp+$00
    ld d, $20
    ld hl, sp+$08
    inc d
    jr nz, jr_013_50ec

    nop
    ld a, [de]
    jr nz, @+$0a

    ld [$2018], sp
    inc b

jr_013_50ec:
    ld hl, sp+$08
    nop
    jr nz, @-$06

    nop
    ld [bc], a
    jr nz, jr_013_50fd

    ld [$2004], sp
    ld [$0600], sp
    jr nz, @+$06

jr_013_50fd:
    ld hl, sp+$08
    ld [$f820], sp
    nop
    ld a, [bc]
    jr nz, jr_013_510e

    ld [$200c], sp
    ld [$0e00], sp
    jr nz, jr_013_5112

jr_013_510e:
    ld hl, sp+$00
    nop
    nop

jr_013_5112:
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    inc b
    ld hl, sp+$00
    ld [$f800], sp
    ld [$000a], sp
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc b
    ld [$1a00], sp
    nop
    ld [$1c08], sp
    nop
    cp $f7
    stop
    cp $ff
    ld [de], a
    nop
    inc b
    ld [$1a08], sp
    jr nz, @+$0a

    nop
    inc e

jr_013_5148:
    jr nz, jr_013_5148

    ld de, $2010
    cp $09
    ld [de], a
    jr nz, @+$06

    ld b, $00
    ld [$0806], sp
    nop
    nop
    dec b
    ld b, $08
    ld [$0826], sp
    ld [$2500], sp
    inc b
    db $fd
    nop
    nop
    dec b
    db $fd
    ld [$2500], sp
    dec c
    nop
    inc b
    inc b
    dec c
    ld [$0406], sp
    inc b
    db $fd
    nop
    nop
    dec b
    db $fd
    ld [$2500], sp
    dec c
    nop
    inc b
    dec b
    dec c
    ld [$0506], sp
    inc b
    nop
    nop
    inc [hl]
    inc bc
    nop
    ld [$0336], sp
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc b
    nop
    ld [$2334], sp
    nop
    nop
    ld [hl], $23
    ld [$0008], sp
    jr nz, jr_013_51ab

    nop
    ld [bc], a
    jr nz, jr_013_51ab

    ld [bc], a
    nop
    jr c, @+$05

jr_013_51ab:
    ld [bc], a
    ld [$033a], sp
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    inc b
    ld [bc], a
    ld [$2338], sp
    ld [bc], a
    nop
    ld a, [hl-]
    inc hl
    ld [$0408], sp
    jr nz, jr_013_51cd

    nop
    ld b, $20
    inc b
    ld [bc], a
    rst $38
    inc a
    inc bc

jr_013_51cd:
    ld [bc], a
    rlca
    ld a, $03
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    inc b
    ld bc, $3c00
    inc bc
    ld bc, $3e08
    inc bc
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc b
    ld [bc], a
    add hl, bc
    inc a
    inc hl
    ld [bc], a
    ld bc, $233e
    ld [$0808], sp
    jr nz, jr_013_5200

    nop
    ld a, [bc]
    jr nz, jr_013_5200

    ld bc, $3c08
    inc hl

jr_013_5200:
    ld bc, $3e00
    inc hl
    ld [$0c08], sp
    jr nz, jr_013_5211

    nop
    ld c, $20
    inc b
    nop
    nop
    nop
    dec b

jr_013_5211:
    stop
    ld [bc], a
    inc b
    nop
    ld [$2500], sp
    db $10
    ld [$2402], sp
    inc b
    add hl, bc
    nop
    ld [hl], h
    inc bc
    add hl, bc
    ld [$0376], sp
    add hl, de
    nop
    ld a, b
    inc bc
    add hl, de
    ld [$037a], sp
    inc b
    add hl, bc
    nop
    ld a, h
    inc bc
    add hl, bc
    ld [$037e], sp
    add hl, de
    nop
    nop
    dec bc
    add hl, de
    ld [$0b02], sp
    inc b
    add hl, bc
    nop
    inc b
    dec bc
    add hl, bc
    ld [$0b06], sp
    add hl, de
    nop
    ld [$190b], sp
    ld [$0b0a], sp
    inc b
    add hl, bc
    nop
    inc c
    dec bc
    add hl, bc
    ld [$0b0e], sp
    add hl, de
    nop
    db $10
    dec bc
    add hl, de
    ld [$0b12], sp
    inc b
    dec bc
    nop
    inc d
    dec bc
    dec bc
    ld [$0b16], sp
    dec de
    nop
    jr jr_013_5279

    dec de
    ld [$0b1a], sp
    inc b
    nop
    nop
    nop
    nop
    stop

jr_013_5279:
    nop
    nop
    nop
    ld [$2000], sp
    db $10
    ld [$2000], sp
    inc b
    ld [$00f8], sp
    nop
    ld [$0000], sp
    jr nz, jr_013_5295

    ld [$0000], sp
    ld [$0010], sp
    jr nz, @+$06

jr_013_5295:
    rst $38
    cp $0a
    ld bc, $06ff
    inc c
    ld bc, $0008
    ld a, [de]
    inc b
    ld [$1a08], sp
    inc h
    inc b
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld hl, $02ff
    inc c
    ld hl, $0008
    ld a, [de]
    inc b
    ld [$1a08], sp
    inc h
    inc b
    cp $fb
    ld c, $01
    cp $03
    db $10
    ld bc, $0008
    ld a, [de]
    inc b
    ld [$1a08], sp
    inc h
    inc b
    cp $fd
    ld [de], a
    ld bc, $05fe
    inc d
    ld bc, $0008
    ld a, [de]
    inc b
    ld [$1a08], sp
    inc h
    inc b
    cp $fd
    ld d, $01
    cp $05
    jr @+$03

    ld [$1a00], sp
    inc b
    ld [$1a08], sp
    inc h
    inc b
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld [hli], a
    rst $38
    ld [bc], a
    inc c
    ld [hli], a
    ld [$1a00], sp
    dec b
    ld [$1a08], sp
    dec h
    inc b
    rst $38
    cp $0a
    ld [bc], a
    rst $38
    ld b, $0c
    ld [bc], a
    ld [$1a00], sp
    dec b
    ld [$1a08], sp
    dec h
    inc b
    cp $0d
    ld c, $22
    cp $05
    db $10
    ld [hli], a
    ld [$1a00], sp
    dec b
    ld [$1a08], sp
    dec h
    inc b
    cp $0b
    ld [de], a
    ld [hli], a
    cp $03
    inc d
    ld [hli], a
    ld [$1a00], sp
    dec b
    ld [$1a08], sp
    dec h
    inc b
    cp $0b
    ld d, $22
    cp $03
    jr jr_013_5358

    ld [$1a00], sp
    dec b
    ld [$1a08], sp
    dec h
    inc b
    ld [$00f8], sp
    nop
    ld [$0200], sp
    nop
    ld [$0008], sp
    nop
    ld [$0210], sp
    nop
    inc b
    ld [$00f8], sp
    nop
    ld [$0200], sp
    nop

jr_013_5358:
    ld [$0408], sp
    nop
    ld [$0610], sp
    nop
    inc b
    ld [$08f8], sp
    nop
    ld [$0a00], sp
    nop
    ld [$0a08], sp
    ld h, b
    ld [$0810], sp
    ld h, b
    inc b
    ld [$0cf8], sp
    nop
    ld [$0e00], sp
    nop
    ld [$0e08], sp
    ld h, b
    ld [$0c10], sp
    ld h, b
    inc b
    ld [$10f8], sp
    nop
    ld [$1200], sp
    nop
    ld [$1208], sp
    ld h, b
    ld [$1010], sp
    ld h, b
    inc b
    nop
    nop
    ld b, b
    inc b
    nop
    ld [$0442], sp
    stop
    ld b, h
    inc b
    db $10
    ld [$0446], sp
    inc b
    nop
    nop
    ld c, b
    inc b
    nop
    ld [$044a], sp
    stop
    ld c, h
    inc b
    db $10
    ld [$044e], sp
    inc b
    nop
    nop
    ld d, b
    inc b
    nop
    ld [$0452], sp
    stop
    ld d, h
    inc b
    db $10
    ld [$0456], sp
    inc b
    nop
    ld [$2450], sp
    nop
    nop
    ld d, d
    inc h
    db $10
    ld [$2454], sp
    stop
    ld d, [hl]
    inc h
    inc b
    nop
    ld [$2448], sp
    nop
    nop
    ld c, d
    inc h
    db $10
    ld [$244c], sp
    stop
    ld c, [hl]
    inc h
    inc b
    nop
    nop
    ld b, $02
    nop
    ld [$0208], sp
    stop
    ld a, [bc]
    ld [bc], a
    db $10
    ld [$020c], sp
    inc b
    nop
    nop
    ld b, $00
    nop
    ld [$0008], sp
    stop
    ld a, [bc]
    nop
    db $10
    ld [$000c], sp
    inc b
    nop
    ld [$2006], sp
    nop
    nop
    ld [$1020], sp
    ld [$200a], sp
    stop
    inc c
    jr nz, jr_013_5420

    nop
    ld [$213e], sp

jr_013_5420:
    ld [$2608], sp
    ld [bc], a
    ld [$3800], sp
    ld [bc], a
    rlca
    dec c
    inc l
    ld [bc], a
    inc b
    inc b
    ld [$213e], sp
    ld [$2608], sp
    ld [bc], a
    ld [$3800], sp
    ld [bc], a
    rlca
    dec c
    inc l
    ld [bc], a
    inc b
    ld b, $08
    ld a, $21
    ld [$2608], sp
    ld [bc], a
    ld [$3800], sp
    ld [bc], a
    rlca
    dec c
    inc l
    ld [bc], a
    inc b
    rlca
    ld [$213e], sp
    ld [$2608], sp
    ld [bc], a
    ld [$3800], sp
    ld [bc], a
    rlca
    dec c
    inc l
    ld [bc], a
    inc b
    nop
    nop
    ld a, [de]
    nop
    nop
    ld [$201a], sp
    ld [$18f8], sp
    nop
    ld [$1810], sp
    jr nz, jr_013_5475

    ld [$0000], sp
    nop

jr_013_5475:
    ld [$0008], sp
    nop
    ld [$0200], sp
    ld b, $08
    ld [$0602], sp
    inc b
    ldh a, [rP1]
    inc b
    nop
    ldh a, [$08]
    ld b, $00
    nop
    nop
    inc d
    nop
    nop
    ld [$0016], sp
    inc b
    ld hl, sp+$00
    ld b, b
    nop
    ld hl, sp+$08
    ld b, d
    nop
    ld [$0408], sp
    nop
    ld b, $01
    jr jr_013_54a3

jr_013_54a3:
    inc b
    ld hl, sp+$00
    ld b, h
    nop
    ld hl, sp+$08
    ld b, [hl]
    nop
    ld [$0a08], sp
    nop
    ld b, $01

jr_013_54b2:
    jr jr_013_54b4

jr_013_54b4:
    inc b
    ld hl, sp+$08
    ld b, b
    jr nz, jr_013_54b2

    nop
    ld b, d
    jr nz, jr_013_54c6

    nop
    inc b
    jr nz, jr_013_54c8

    rlca

jr_013_54c3:
    jr jr_013_54e5

    inc b

jr_013_54c6:
    ld hl, sp+$08

jr_013_54c8:
    ld b, h
    jr nz, jr_013_54c3

    nop
    ld b, [hl]
    jr nz, jr_013_54d7

    nop
    ld a, [bc]
    jr nz, jr_013_54d9

    rlca
    jr jr_013_54f6

    inc b

jr_013_54d7:
    or $00

jr_013_54d9:
    ld c, b
    nop
    or $08
    ld c, d
    nop
    ld b, $00
    inc h
    nop

jr_013_54e3:
    ld b, $08

jr_013_54e5:
    ld h, $00
    inc b
    or $08
    ld c, b
    jr nz, jr_013_54e3

    nop
    ld c, d
    jr nz, @+$08

    ld [$2024], sp
    ld b, $00

jr_013_54f6:
    ld h, $20
    inc b
    or $00
    ld c, h
    nop
    or $08
    ld c, [hl]
    nop
    ld b, $00
    inc l
    nop

jr_013_5505:
    ld b, $08
    ld l, $00
    inc b
    or $08
    ld c, h
    jr nz, jr_013_5505

    nop
    ld c, [hl]
    jr nz, @+$08

    ld [$202c], sp
    ld b, $00

jr_013_5518:
    ld l, $20
    inc b
    ld hl, sp+$08
    add b
    jr nz, jr_013_5518

    nop
    add d
    jr nz, jr_013_552c

    ld [$2084], sp
    ld [$8600], sp
    jr nz, @+$06

jr_013_552c:
    ld hl, sp+$08
    adc b
    jr nz, @-$06

    nop
    adc d
    jr nz, jr_013_553d

    ld [$208c], sp
    ld [$8e00], sp
    jr nz, jr_013_5541

jr_013_553d:
    ld hl, sp+$00
    add b
    nop

jr_013_5541:
    ld hl, sp+$08
    add d
    nop
    ld [$8400], sp
    nop
    ld [$8608], sp
    nop
    inc b
    ld hl, sp+$00
    adc b
    nop
    ld hl, sp+$08
    adc d
    nop
    ld [$8c00], sp
    nop
    ld [$8e08], sp
    nop
    inc b
    ld [$1208], sp
    jr nz, jr_013_556c

    db $10
    db $10
    jr nz, jr_013_5570

    nop
    ld a, [bc]
    jr nz, @+$0a

jr_013_556c:
    ld [$2008], sp
    inc b

jr_013_5570:
    ld [$120a], sp
    jr nz, @+$0a

    ld [de], a
    db $10
    jr nz, jr_013_5581

    nop
    ld c, $20
    ld [$0c08], sp
    jr nz, jr_013_5585

jr_013_5581:
    ld [$0800], sp
    nop

jr_013_5585:
    ld [$0a08], sp
    nop
    ld [$10f8], sp
    nop
    ld [$1200], sp
    nop
    inc b
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld [$10f6], sp
    nop
    ld [$12fe], sp
    nop
    inc b
    inc c
    ld [bc], a
    ld [$0c00], sp
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0000], sp
    ld [bc], a
    ld [$0208], sp
    ld [bc], a
    inc b
    dec c
    ld [bc], a
    ld [$0d00], sp
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0400], sp
    ld [bc], a
    ld [$0608], sp
    ld [bc], a
    inc b
    inc c
    ld b, $08
    jr nz, jr_013_55d6

    cp $0a
    jr nz, jr_013_55d6

    ld [$2200], sp
    ld [$0200], sp
    ld [hli], a
    inc b

jr_013_55d6:
    dec c
    ld b, $08
    jr nz, @+$0f

    cp $0a
    jr nz, jr_013_55e7

    ld [$2204], sp
    ld [$0600], sp
    ld [hli], a
    inc b

jr_013_55e7:
    ld [$10f8], sp
    nop
    ld [$1200], sp
    nop
    ld [$1408], sp
    nop
    ld a, [$1a04]
    nop
    inc b
    ld hl, sp+$00
    inc d
    nop
    ld hl, sp+$08
    inc d
    jr nz, jr_013_5609

    nop
    inc b
    nop
    ld [$0608], sp
    nop
    inc b

jr_013_5609:
    ld hl, sp+$08
    inc d
    jr nz, @-$06

    nop
    inc d
    nop
    ld [$0408], sp
    jr nz, jr_013_561e

    nop
    ld b, $20
    inc b
    ld hl, sp+$00
    ld d, $00

jr_013_561e:
    ld hl, sp+$08
    ld d, $20
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    inc b
    ld hl, sp+$08
    ld d, $20
    ld hl, sp+$00
    ld d, $00
    ld [$0808], sp
    jr nz, jr_013_5640

    nop
    ld a, [bc]
    jr nz, jr_013_5640

    ld [$0c00], sp
    inc b

jr_013_5640:
    ld [$0c08], sp
    inc h
    ld [$0800], sp
    rlca
    ld [$0a08], sp
    rlca
    dec b
    ldh a, [$fc]
    nop
    nop
    ldh a, [rDIV]
    ld [bc], a
    nop
    ldh a, [$0c]

jr_013_5657:
    inc b
    nop
    nop
    nop

jr_013_565b:
    ld b, $00
    nop
    ld [$0008], sp
    dec b
    ldh a, [$fc]
    inc b
    jr nz, jr_013_5657

    inc b
    ld [bc], a
    jr nz, jr_013_565b

    inc c
    nop
    jr nz, jr_013_566f

jr_013_566f:
    nop
    ld [$0020], sp
    ld [$2006], sp
    dec b
    ld hl, sp-$08
    ld c, $04
    nop
    nop
    db $10
    ld [bc], a
    nop
    ld [$0212], sp
    ldh a, [rTAC]
    inc d
    ld [bc], a
    ld hl, sp+$10
    ld d, $04
    dec b
    ld hl, sp+$10
    ld c, $24
    nop
    ld [$2210], sp
    nop
    nop
    ld [de], a
    ld [hli], a
    ldh a, [rSB]
    inc d
    ld [hli], a
    ld hl, sp-$08
    ld d, $24
    dec b
    db $fd
    nop
    db $10
    ld [bc], a
    db $fd
    ld [$0212], sp
    inc c
    ld a, [bc]
    jr @+$07

    ld [$0000], sp
    inc bc
    ld [$0208], sp
    inc bc
    dec b
    db $fd
    ld [$2210], sp
    db $fd
    nop
    ld [de], a
    ld [hli], a
    ld [$0200], sp
    inc hl
    ld [$0008], sp
    inc hl
    inc c
    add hl, bc
    jr @+$27

    dec b
    inc c
    cp $18
    dec b
    ld [$0400], sp
    inc bc
    ld [$0608], sp
    inc bc
    db $fd
    ld bc, $0210
    db $fd
    add hl, bc
    ld [de], a
    ld [bc], a
    dec b
    ld [$0600], sp
    inc hl
    ld [$0408], sp
    inc hl
    db $fd
    nop
    ld [de], a
    ld [hli], a
    db $fd
    ld [$2210], sp
    inc c
    cp $18
    dec h
    dec b
    inc c
    ld b, $18
    dec b
    db $fd
    rst $38
    inc d
    ld [bc], a
    db $fd
    rlca
    ld d, $02
    ld [$0800], sp
    inc bc
    ld [$0a08], sp
    inc bc
    dec b
    dec bc
    ld b, $18
    dec b
    db $fc
    nop
    inc d
    ld [bc], a
    db $fc
    ld [$0216], sp
    ld [$0c00], sp
    inc bc
    ld [$0e08], sp
    inc bc
    dec b
    add hl, bc
    ei
    ld a, [de]
    inc b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    rlca
    dec c
    ld a, [de]
    inc h
    ld hl, sp+$08
    inc e
    ld bc, $0905
    ld a, [$041a]
    ld [$0200], sp
    jr nz, @+$0a

    ld [$2000], sp
    rlca
    inc c
    ld a, [de]
    inc h
    ld hl, sp+$08
    ld e, $01
    dec b
    add hl, bc
    ld a, [$041a]
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    rlca
    inc c
    ld a, [de]
    inc h
    ld hl, sp+$00
    inc e
    ld hl, $0905
    ei
    ld a, [de]
    inc b
    ld [$0600], sp
    jr nz, @+$0a

    ld [$2004], sp
    rlca
    dec c
    ld a, [de]
    inc h
    ld hl, sp+$00
    ld e, $21
    dec b
    ld [$1af9], sp
    inc b
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [$1a0b], sp
    inc h
    ld hl, sp+$08
    inc e
    ld bc, $0705
    ld a, [$041a]
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    rlca
    inc c
    ld a, [de]
    inc h
    ld hl, sp+$08
    ld e, $01
    dec b
    ld [$1a0f], sp
    inc h
    ld [$0a00], sp
    jr nz, @+$0a

    ld [$2008], sp
    ld [$1afd], sp
    inc b
    ld hl, sp+$00
    inc e
    ld hl, $0705
    ld c, $1a
    inc h
    ld [$0e00], sp
    jr nz, @+$0a

    ld [$200c], sp
    rlca
    db $fc
    ld a, [de]
    inc b
    ld hl, sp+$00
    ld e, $21
    dec b
    ld de, $08fa
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    dec b
    ld [de], a

jr_013_57dd:
    ei
    ld [$f800], sp
    nop
    ld [bc], a
    jr nz, jr_013_57dd

    ld [$2000], sp
    ld [$0600], sp
    jr nz, jr_013_57f5

    ld [$2004], sp
    dec b
    ld [$1ef0], sp
    inc b

jr_013_57f5:
    ld [$20f8], sp
    inc b
    ld [$2200], sp
    inc b
    ld [$2408], sp
    inc b
    ld [$2610], sp
    inc b
    dec b
    db $f4
    dec b
    nop
    inc bc
    inc b
    db $fd
    ld [bc], a
    ld bc, $0504
    inc b
    ld bc, $fe08
    ld b, $00
    ld [$0806], sp
    nop
    dec b
    db $f4
    inc b
    nop
    inc bc
    inc b
    db $fc
    ld [bc], a
    ld bc, $0404
    inc b
    ld bc, $fe08
    ld b, $00
    ld [$0806], sp
    nop
    dec b
    db $f4
    inc bc
    nop
    inc hl
    inc b
    dec bc
    ld [bc], a
    ld hl, $0304
    inc b
    ld hl, $0a08
    ld b, $20
    ld [$0802], sp
    jr nz, jr_013_584a

    db $f4
    inc b
    nop
    inc hl
    inc b

jr_013_584a:
    inc c
    ld [bc], a
    ld hl, $0404
    inc b
    ld hl, $0a08
    ld b, $20
    ld [$0802], sp
    jr nz, jr_013_585f

    ld a, [bc]
    ld hl, sp+$10
    inc b
    ld a, [bc]

jr_013_585f:
    nop
    db $10
    inc h
    rlca
    ei
    db $10
    inc b
    ld [$0c02], sp
    nop
    ld [$0e0a], sp
    nop
    dec b
    ld a, [bc]
    ldh a, [rNR10]
    inc b
    ld a, [bc]
    ld hl, sp+$10
    inc h
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    rlca
    ld sp, hl
    db $10
    inc b
    dec b
    ld a, [bc]
    rst $20
    db $10
    inc b
    ld a, [bc]
    rst $28
    db $10
    inc h
    ld [$08ff], sp
    nop
    ld [$0a07], sp
    nop
    rlca
    ld hl, sp+$10
    inc b
    dec b
    inc c
    ret


    ld b, b
    ld bc, $db0c
    ld b, d
    ld bc, $ec0c
    ld b, h
    ld bc, $fe0c
    ld b, [hl]
    ld bc, $100c
    ld c, b
    ld bc, $1005
    db $dd
    inc d
    nop
    db $10
    push hl
    jr nc, jr_013_58b6

jr_013_58b6:
    db $10
    db $ed
    inc e
    nop
    db $10
    push af
    ld e, $00
    db $10
    ei
    stop
    inc b
    rst $38
    nop
    inc [hl]
    inc bc
    rst $38
    ld [$0336], sp
    ld [$3200], sp
    jr nz, @+$0a

    ld [$2030], sp
    dec b
    dec bc
    rst $38
    ld a, [de]
    ld bc, $0905
    inc e
    dec b
    ld [$1600], sp
    ld [bc], a
    ld [$1808], sp
    ld [bc], a
    ld sp, hl
    dec b
    ld e, $02
    dec b
    inc b
    ld a, [bc]
    inc e
    dec h
    dec bc
    rst $38
    ld a, [de]
    ld hl, $0808
    ld d, $22
    ld [$1800], sp
    ld [hli], a
    ld sp, hl
    inc bc
    ld e, $22
    dec b
    dec b
    rst $38
    inc e
    dec h
    dec bc
    add hl, bc
    ld a, [de]
    ld hl, $0808
    ld d, $22
    ld [$1800], sp
    ld [hli], a
    ld sp, hl
    inc bc
    ld e, $22
    dec b
    dec bc
    add hl, bc
    ld a, [de]
    ld bc, $fe04
    inc e
    dec b
    ld [$1600], sp
    ld [bc], a
    ld [$1808], sp
    ld [bc], a
    ld sp, hl
    dec b
    ld e, $02
    ld b, $08

jr_013_5929:
    ldh a, [$0a]
    nop
    ld [$0a18], sp
    jr nz, jr_013_5929

    inc b
    ld [$1800], sp
    inc b
    ld [$0840], sp
    ld hl, sp+$0c
    nop
    ld [$0c10], sp
    nop
    ld b, $00
    db $fc
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    db $10
    inc b
    ld [$1000], sp
    inc c
    ld a, [bc]
    nop
    ld b, $08
    nop
    ld b, $00
    ld [$0608], sp
    ld h, b
    nop
    inc b
    nop
    nop
    db $10
    inc b
    nop
    nop
    ld [$000c], sp
    nop
    ld [$00fc], sp
    nop
    ld b, $08
    nop
    ld b, $40
    ld [$0608], sp
    jr nz, jr_013_597e

    cp $00  ; and a / or a

jr_013_597e:
    nop
    ld c, $0a
    nop
    nop
    ld c, $fe
    nop
    nop
    ld [bc], a
    ld a, [bc]
    nop
    nop
    ld b, $08
    ld hl, sp+$02
    nop
    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, @+$0a

    db $10
    ld [bc], a
    jr nz, @-$06

    nop
    nop
    nop
    ld hl, sp+$08
    nop
    jr nz, @+$08

    ld [$00f8], sp
    inc bc
    ld [$0200], sp
    inc bc
    db $fd
    ld c, $0e
    nop
    ld [$0400], sp
    ld [bc], a
    ld [$0608], sp
    ld bc, $1008
    ld [$0601], sp
    ld [$00f8], sp
    inc bc
    ld [$0200], sp
    inc bc
    db $fd
    ld c, $0e
    nop
    ld [$0a00], sp
    ld [bc], a
    ld [$0c08], sp
    ld bc, $1008
    ld [$0601], sp
    ld [$00f0], sp
    nop
    ld [$02f8], sp
    nop
    db $fd
    ld b, $0e
    nop
    ld [$04f8], sp
    nop
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld b, $08
    ldh a, [rP1]
    nop
    ld [$02f8], sp
    nop
    db $fd
    ld b, $0e
    nop
    ld [$0af8], sp
    nop
    ld [$0c00], sp
    nop
    ld [$0808], sp
    nop
    ld b, $08
    nop
    inc b
    nop
    ld [$0608], sp
    nop
    ld [$1006], sp
    inc b
    ld [$100c], sp
    inc h
    inc bc
    db $fc
    db $10
    inc b
    inc bc
    inc b
    db $10
    inc h
    ld b, $08
    nop
    ld b, $20
    ld [$0408], sp
    jr nz, jr_013_5a33

    dec b
    db $10
    inc b
    ld [$100d], sp
    inc h
    inc bc

jr_013_5a33:
    db $fc
    db $10
    inc b
    inc bc
    inc b
    db $10
    inc h
    ld b, $0a
    dec b
    db $10
    inc b
    ld a, [bc]
    dec c
    db $10
    inc h
    ld [$0a00], sp
    jr nz, jr_013_5a50

    ld [$2008], sp
    add hl, bc
    dec bc
    db $10
    inc b
    add hl, bc

jr_013_5a50:
    inc de
    db $10
    inc h
    ld b, $0a
    inc b
    db $10
    inc b
    ld a, [bc]
    inc c
    db $10
    inc h
    ld [$0e00], sp
    jr nz, jr_013_5a69

    ld [$200c], sp
    add hl, bc
    dec bc
    db $10
    inc b
    add hl, bc

jr_013_5a69:
    inc de
    db $10
    inc h
    ld b, $0c
    inc b
    db $10
    inc b
    inc c
    inc c
    db $10
    inc h
    dec bc
    ld hl, sp+$10
    inc b
    dec bc
    nop
    db $10
    inc h
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld b, $0c
    inc b
    db $10
    inc b
    inc c
    inc c
    db $10
    inc h
    dec bc
    ld a, [$0410]
    dec bc
    ld [bc], a
    db $10
    inc h
    ld [$0200], sp
    jr nz, jr_013_5aa3

    ld [$2000], sp
    ld b, $09
    db $fc
    db $10
    inc b

jr_013_5aa3:
    add hl, bc
    inc b
    db $10
    inc h
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld a, [bc]
    ld sp, hl
    db $10
    inc b
    ld a, [bc]
    ld bc, $2410
    ld b, $09
    db $fc
    db $10
    inc b
    add hl, bc
    inc b
    db $10
    inc h
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld a, [bc]
    ld a, [$0410]
    ld a, [bc]
    ld [bc], a
    db $10
    inc h
    ld b, $08
    ld sp, hl
    ld [$0000], sp
    ld a, [bc]
    ld [$0c60], sp
    dec b
    ld [$0800], sp
    ld bc, $6008
    nop
    ld [bc], a
    ld [$0c00], sp
    dec c
    ld [$0660], sp
    add hl, bc
    nop
    inc l
    add hl, bc
    add hl, bc
    ld [$092e], sp
    add hl, bc
    nop
    inc e
    ld a, [bc]
    add hl, bc
    ld [$2a1c], sp
    add hl, de
    nop
    ld h, $0a
    add hl, de
    ld [$0a28], sp
    ld b, $09
    nop
    ld e, $0a
    add hl, bc
    ld [$2a1e], sp
    add hl, de
    nop
    ld a, [hli]
    ld a, [bc]
    add hl, de
    ld [$0a40], sp
    add hl, bc
    nop
    jr nc, jr_013_5b20

    add hl, bc
    ld [$0932], sp
    ld b, $19
    nop
    ld b, d
    ld a, [bc]

jr_013_5b20:
    add hl, de
    ld [$0a44], sp
    add hl, bc
    nop
    jr nz, @+$0c

    add hl, bc
    ld [$2a20], sp
    add hl, bc
    nop
    inc [hl]
    add hl, bc
    add hl, bc
    ld [$0936], sp
    ld b, $09
    nop
    ld [hli], a
    ld a, [bc]
    add hl, bc
    ld [$2a22], sp
    add hl, bc
    nop
    jr c, jr_013_5b4a

    add hl, bc
    ld [$093a], sp
    add hl, de
    nop
    ld b, [hl]
    ld a, [bc]
    add hl, de

jr_013_5b4a:
    ld [$0a48], sp
    ld b, $0b
    nop
    inc h
    ld a, [bc]
    dec bc
    ld [$2a24], sp
    dec bc
    nop
    inc a
    add hl, bc
    dec bc
    ld [$093e], sp
    dec de
    nop
    ld c, d
    ld a, [bc]
    dec de
    ld [$0a4c], sp
    ld b, $f8
    nop
    nop
    nop
    ld [$0000], sp
    nop
    jr jr_013_5b71

jr_013_5b71:
    nop
    nop
    ld hl, sp+$08
    nop
    jr nz, jr_013_5b80

    ld [$2000], sp
    jr @+$0a

    nop
    jr nz, @+$08

jr_013_5b80:
    ld [$00f0], sp
    nop
    ld [$00f8], sp
    jr nz, jr_013_5b91

    nop
    nop
    nop
    ld [$0008], sp
    jr nz, jr_013_5b99

jr_013_5b91:
    stop
    nop
    ld [$0018], sp
    jr nz, jr_013_5b9f

jr_013_5b99:
    inc b
    db $fc
    nop
    nop
    inc b
    inc b

jr_013_5b9f:
    ld [bc], a
    nop
    inc b
    inc c
    nop
    jr nz, @+$0e

    db $fc
    nop
    ld b, b
    inc c
    inc b
    ld [bc], a
    ld b, b
    inc c
    inc c
    nop
    ld h, b
    ld b, $10
    db $10
    ld a, [bc]
    jr nz, jr_013_5bc7

    ld [$200c], sp
    rrca
    ld hl, sp+$0a
    nop
    rrca
    nop
    inc c
    nop
    nop
    nop
    ld c, $00
    nop

jr_013_5bc7:
    ld [$200e], sp
    ld b, $10
    db $10
    ld a, [bc]
    jr nz, jr_013_5be0

    ld [$200c], sp
    db $10
    ld hl, sp+$0a
    nop
    stop
    inc c
    nop
    nop
    nop
    stop
    nop

jr_013_5be0:
    ld [$2010], sp
    ld b, $0f
    rrca
    ld a, [bc]
    jr nz, jr_013_5bf8

    rlca
    inc c
    jr nz, @+$12

    ld sp, hl
    ld a, [bc]
    nop
    db $10
    ld bc, $000c
    nop
    nop
    ld [de], a
    nop

jr_013_5bf8:
    nop
    ld [$2012], sp
    ld b, $10
    rrca
    ld a, [bc]
    jr nz, jr_013_5c12

    rlca
    inc c
    jr nz, @+$12

    ld hl, sp+$0a
    nop
    stop
    inc c
    nop
    nop
    nop
    stop
    nop

jr_013_5c12:
    ld [$2010], sp
    ld b, $10
    rrca
    ld a, [bc]
    jr nz, jr_013_5c2b

    rlca
    inc c
    jr nz, @+$12

    ld sp, hl
    ld a, [bc]
    nop
    db $10
    ld bc, $000c
    nop
    nop
    stop
    nop

jr_013_5c2b:
    ld [$2010], sp
    ld b, $10
    ld hl, sp+$0a
    nop
    stop
    inc c
    nop
    db $10
    db $10
    ld a, [bc]
    jr nz, @+$12

    ld [$200c], sp
    nop
    nop
    stop
    nop
    ld [$2010], sp
    ld b, $10
    rrca
    ld a, [bc]
    jr nz, jr_013_5c5d

    rlca
    inc c
    jr nz, @+$12

    ld sp, hl
    ld a, [bc]
    nop
    db $10
    ld bc, $000c
    nop
    nop
    ld c, $00
    nop

jr_013_5c5d:
    ld [$200e], sp
    ld b, $08
    ldh a, [rP1]
    nop
    ld [$02f8], sp
    nop
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [$0010], sp
    nop
    ld [$0218], sp
    nop
    ld b, $f8
    nop
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    jr jr_013_5c8c

jr_013_5c8c:
    nop
    nop
    jr @+$0a

    ld [bc], a
    nop
    ld b, $00
    db $fc
    ld [bc], a
    ld bc, $0400
    inc b
    ld bc, $0c00
    ld [bc], a
    ld hl, $fc10
    ld [bc], a
    ld b, c
    db $10
    inc b
    inc b
    ld b, c
    db $10
    inc c
    ld [bc], a
    ld h, c
    ld b, $10
    ret c

    jr jr_013_5cb0

jr_013_5cb0:
    db $10
    sbc $10
    nop
    db $10
    db $e3
    ld a, [de]
    nop
    db $10
    db $eb
    inc e
    nop
    db $10
    di
    ld [bc], a
    nop
    db $10
    ei
    ld [$0600], sp
    db $10
    ret c

    nop
    nop
    db $10
    ldh [rNR50], a
    nop
    db $10
    add sp, $00
    nop
    db $10
    ldh a, [$08]
    nop
    db $10
    rst $30
    ld [hl], $00
    db $10
    cp $1a
    nop
    ld a, [bc]
    db $10
    ret z

    ld b, b
    ld bc, $d010
    ld b, d
    ld bc, $d810
    ld b, h
    ld bc, $e010
    ld b, [hl]
    ld bc, $e810
    ld c, b
    ld bc, $f010
    ld c, d
    ld bc, $f810
    ld c, h
    ld bc, $0010
    ld c, [hl]
    ld bc, $0810
    ld d, b
    ld bc, $1010
    ld d, d
    ld bc, $100a
    ret z

    ld b, b
    ld bc, $d010
    ld b, d
    ld bc, $d810
    ld d, h
    ld bc, $e010
    ld d, [hl]
    ld bc, $e810
    ld e, b
    ld bc, $f010
    ld e, d
    ld bc, $f810
    ld e, h
    ld bc, $0010
    ld e, [hl]
    ld bc, $0810
    ld d, b
    ld bc, $1010
    ld d, d
    ld bc, $1006
    reti


    jr jr_013_5d34

jr_013_5d34:
    db $10
    pop hl
    jr c, jr_013_5d38

jr_013_5d38:
    db $10
    jp hl


    nop
    nop
    db $10
    pop af
    inc e
    nop
    db $10
    ld sp, hl
    inc d
    nop
    db $10
    rst $38
    stop
    ld b, $10
    ret c

    jr nc, jr_013_5d4d

jr_013_5d4d:
    db $10
    ldh [rNR32], a
    nop
    db $10
    add sp, $14
    nop
    db $10
    ldh a, [rNR32]
    nop
    db $10
    ld hl, sp+$1e
    nop
    stop
    inc e
    nop
    ld b, $f8
    ld a, [$0000]
    ld hl, sp+$02
    ld [bc], a
    nop
    ld hl, sp+$0a
    inc b
    nop
    ld [$06fa], sp
    nop
    ld [$0802], sp
    nop
    ld [$0a0a], sp
    nop
    ld b, $f8
    ld a, [$0000]
    ld hl, sp+$02
    ld [bc], a
    nop
    ld hl, sp+$0a
    inc b
    nop
    ld [$0cfa], sp
    nop
    ld [$0802], sp
    nop
    ld [$0e0a], sp
    nop
    rlca
    ldh a, [$fc]
    ld b, b
    nop
    ldh a, [rDIV]
    ld b, d
    nop
    ldh a, [$0c]
    ld b, h
    nop
    nop
    ei
    ld b, [hl]
    nop
    nop
    inc bc
    ld c, b
    nop
    nop
    dec bc
    ld c, d
    nop
    nop
    inc de
    ld c, h
    nop
    rlca
    ldh a, [$fc]
    ld c, [hl]
    nop
    ldh a, [rDIV]
    ld d, b
    nop
    ldh a, [$0c]
    ld d, d
    nop
    nop
    ei
    ld d, h
    nop
    nop
    inc bc
    ld d, [hl]
    nop
    nop
    dec bc
    ld e, b
    nop
    nop
    inc de
    ld e, d
    nop
    ld [$c80c], sp
    ld b, b
    ld bc, $d10c
    ld b, d
    ld bc, $db0c
    ld b, h
    ld bc, $e50c
    ld b, [hl]
    ld bc, $ef0c
    ld b, [hl]
    ld bc, $f90c
    ld c, b
    ld bc, $020c
    ld c, d
    ld bc, $0d0c
    ld h, b
    ld bc, $fb07
    inc d
    ld l, b
    dec b
    ld bc, $6406
    inc bc
    ld bc, $660e
    inc bc
    or $00
    ld c, b
    ld [bc], a
    or $08
    ld c, d
    ld [bc], a
    ld b, $00
    inc h
    ld [bc], a
    ld b, $08
    ld h, $02
    rlca
    ei
    inc d
    ld l, b
    dec b
    ld bc, $6406
    inc bc
    ld bc, $660e
    inc bc
    or $08
    ld c, b

jr_013_5e1b:
    ld [hli], a
    or $00
    ld c, d
    ld [hli], a
    ld b, $08
    inc h
    ld [hli], a
    ld b, $00
    ld h, $22
    rlca
    jr jr_013_5e1b

    nop
    ld b, $20
    ld hl, sp+$02
    ld b, $20
    nop
    inc b
    ld b, $20
    ld [$0606], sp
    db $10
    ld hl, sp+$08
    rlca
    stop
    ld a, [bc]
    rlca
    db $10
    ld [$070c], sp
    ld [$f5fd], sp
    nop
    nop
    db $fd
    db $fd
    ld [bc], a
    nop
    db $fd
    inc de

jr_013_5e50:
    nop
    jr nz, jr_013_5e50

    dec bc
    ld [bc], a
    jr nz, jr_013_5e6a

    push af
    nop
    ld b, b
    inc de
    db $fd
    ld [bc], a
    ld b, b
    inc de
    inc de
    nop
    ld h, b
    inc de
    dec bc
    ld [bc], a
    ld h, b
    ld [$f800], sp
    nop

jr_013_5e6a:
    nop
    nop
    nop
    nop
    jr nz, jr_013_5e70

jr_013_5e70:
    ld [$0000], sp
    nop
    stop
    jr nz, jr_013_5e88

    ld hl, sp+$00
    nop
    stop
    nop
    jr nz, jr_013_5e90

    ld [$0000], sp
    db $10
    stop
    jr nz, jr_013_5e90

jr_013_5e88:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop

jr_013_5e90:
    nop
    ld [$2002], sp
    nop
    stop
    jr nz, @+$12

    ld hl, sp+$00
    ld b, b
    stop
    ld [bc], a
    ld b, b
    db $10
    ld [$6002], sp
    db $10
    stop
    ld h, b
    ld [$f901], sp
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0701
    ld [bc], a
    ld hl, $0f01
    nop
    ld hl, $f911
    nop
    ld b, c
    ld de, $0201
    ld b, c
    ld de, $0207
    ld h, c
    ld de, $000f
    ld h, c
    ld [$f800], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    nop
    db $10
    ld b, $00
    db $10
    ld hl, sp+$06
    ld h, b
    stop
    inc b
    ld h, b
    db $10
    ld [$6002], sp
    db $10
    stop
    ld h, b
    ld [$f800], sp
    ld [$0000], sp
    nop
    ld a, [bc]
    nop
    nop
    ld [$000c], sp
    nop
    db $10
    ld c, $00
    db $10
    ld hl, sp+$0e
    ld h, b
    stop
    inc c
    ld h, b
    db $10
    ld [$600a], sp
    db $10
    db $10
    ld [$0860], sp
    nop
    ld hl, sp+$10
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    ld [$0014], sp
    nop
    db $10
    ld d, $00
    db $10
    ld hl, sp+$16
    ld h, b
    stop
    inc d
    ld h, b
    db $10
    ld [$6012], sp
    db $10
    db $10
    db $10
    ld h, b
    ld [$e008], sp
    inc b
    nop
    ld [$06e8], sp
    nop
    nop
    ret c

    nop
    nop
    nop
    ldh [rSC], a
    nop
    ld [$0428], sp
    jr nz, jr_013_5f4a

    jr nz, jr_013_5f4a

    jr nz, jr_013_5f46

jr_013_5f46:
    jr nc, jr_013_5f48

jr_013_5f48:
    jr nz, jr_013_5f4a

jr_013_5f4a:
    jr z, jr_013_5f4e

    jr nz, jr_013_5f56

jr_013_5f4e:
    ld [$0ce0], sp
    nop
    ld [$0ee8], sp
    nop

jr_013_5f56:
    nop
    ret c

    ld [$0000], sp
    ldh [$0a], a
    nop
    ld [$0c28], sp
    jr nz, jr_013_5f6b

    jr nz, @+$10

    jr nz, jr_013_5f67

jr_013_5f67:
    jr nc, jr_013_5f71

    jr nz, jr_013_5f6b

jr_013_5f6b:
    jr z, jr_013_5f77

    jr nz, jr_013_5f77

    db $f4
    nop

jr_013_5f71:
    ld a, [bc]
    ld b, $02
    nop
    ld b, $05

jr_013_5f77:
    db $f4
    nop
    ld a, [bc]
    ld b, $02
    nop
    ld b, $05
    db $f4
    nop
    ld a, [bc]
    ld b, $02
    nop
    ld b, $05
    db $f4
    ld [$260a], sp
    ld [bc], a
    ld [$2506], sp
    ld [$fb00], sp
    ld [$0300], sp
    ld de, $6008
    dec c
    rst $30
    ld [$1000], sp
    dec c
    ld [$0060], sp
    inc bc
    ld [$0360], sp
    add hl, bc
    ld [$0d00], sp
    rst $38
    ld [$1060], sp
    dec b
    ld [$0800], sp
    cp $0f
    ld a, [bc]
    jr nz, jr_013_5fc4

    ld de, $200a
    nop
    cp $0a
    jr nz, jr_013_5fce

    nop
    ld a, [bc]

jr_013_5fc0:
    jr nz, jr_013_5fc0

    rlca
    ld a, [bc]

jr_013_5fc4:
    ld b, b
    ld c, $09
    ld a, [bc]
    ld b, b
    nop
    or $0a
    ld b, b
    db $10

jr_013_5fce:
    ld hl, sp+$0a
    ld b, b
    ld [$fd11], sp
    inc c
    ld b, b
    ld b, $f8
    inc c
    ld b, b
    dec bc
    ld [$400c], sp
    rst $38
    inc bc
    inc c
    ld b, b
    ld de, $0c05
    jr nz, jr_013_5fed

    nop
    inc c
    jr nz, jr_013_5ff6

    db $10
    inc c

jr_013_5fed:
    jr nz, @+$01

    dec bc
    inc c
    jr nz, jr_013_5ffb

    ld bc, $02fa

jr_013_5ff6:
    ld [bc], a
    ld bc, $0401
    ld [bc], a

jr_013_5ffb:
    ld bc, $020e
    ld [hli], a
    ld bc, $0407
    ld [hli], a
    rrca
    ld a, [$4202]
    rrca
    ld bc, $4204
    rrca
    ld c, $02
    ld h, d
    rrca
    rlca
    inc b
    ld h, d
    ld [$f800], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    ld [bc], a
    db $10
    ld hl, sp+$02
    ld b, d
    stop
    inc b
    ld b, d
    nop
    db $10
    ld [bc], a
    ld [hli], a
    nop
    ld [$2204], sp
    db $10
    db $10
    ld [bc], a
    ld h, d
    db $10
    ld [$6204], sp
    ld [$f800], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    ld [bc], a
    db $10
    ld hl, sp+$02
    ld b, d
    stop
    inc b
    ld b, d
    nop
    db $10
    ld [bc], a
    ld [hli], a
    nop
    ld [$2204], sp
    db $10
    db $10
    ld [bc], a
    ld h, d
    db $10
    ld [$6204], sp
    ld [$0004], sp
    ld a, [de]
    inc b
    inc b
    ld [$041c], sp
    ld hl, sp-$04
    db $10
    ld bc, $0400
    ld [de], a
    ld bc, $fc08
    inc d
    ld bc, $0410
    ld d, $22
    ld hl, sp+$0c
    db $10
    ld hl, $0c08
    inc d
    ld hl, $0408
    ld [$241a], sp
    inc b
    nop
    inc e
    inc h
    ld hl, sp-$04
    db $10
    ld bc, $0400
    ld [de], a
    ld bc, $fc08
    inc d
    ld bc, $0410
    ld d, $02
    ld hl, sp+$0c
    db $10
    ld hl, $0c08
    inc d
    ld hl, $0408
    nop
    jr jr_013_60a0

    inc b
    ld [$2418], sp

jr_013_60a0:
    ld hl, sp-$04
    db $10
    ld bc, $0400
    ld [de], a
    ld bc, $fc08
    inc d
    ld bc, $0410
    ld d, $22
    ld hl, sp+$0c
    db $10
    ld hl, $0c08
    inc d
    ld hl, $0208
    ld a, [$000c]
    ld [bc], a
    ld [bc], a
    inc c
    jr nz, jr_013_60c4

    ld b, $0c

jr_013_60c4:
    nop
    ld [bc], a
    ld c, $0c
    jr nz, jr_013_60d4

    ld a, [$000c]
    ld a, [bc]
    ld [bc], a
    inc c
    jr nz, @+$0c

    ld b, $0c

jr_013_60d4:
    nop
    ld a, [bc]
    ld c, $0c
    jr nz, jr_013_60e2

    nop
    ld hl, sp+$0e
    nop
    nop
    nop
    ld c, $20

jr_013_60e2:
    nop
    ld [$000e], sp
    nop
    db $10
    ld c, $20
    db $10
    ld hl, sp+$0e
    nop
    stop
    ld c, $20
    db $10
    ld [$000e], sp
    db $10
    db $10
    ld c, $20
    ld [$f8f0], sp
    jr nz, jr_013_60ff

jr_013_60ff:
    ldh a, [rP1]
    ld [hli], a
    nop
    ldh a, [$08]
    inc h
    nop
    ldh a, [rNR10]
    ld h, $00
    nop
    ld hl, sp+$28
    nop
    nop
    nop
    ld a, [hli]
    nop
    nop
    ld [$002c], sp
    nop
    db $10
    ld l, $00
    ld [$11f0], sp
    jr nz, @+$22

    ldh a, [$09]
    ld [hli], a
    jr nz, @-$0e

    ld bc, $2024
    ldh a, [$f9]
    ld h, $20
    nop
    ld de, $2028
    nop
    add hl, bc
    ld a, [hli]
    jr nz, jr_013_6135

jr_013_6135:
    ld bc, $202c
    nop
    ld sp, hl
    ld l, $20
    ld [$f8f0], sp
    jr nc, jr_013_6141

jr_013_6141:
    ldh a, [rP1]
    ld [hl-], a
    nop
    ldh a, [$08]
    inc [hl]
    nop
    ldh a, [rNR10]
    ld [hl], $00
    nop
    ld hl, sp+$38
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld [$003c], sp
    nop
    db $10

jr_013_615b:
    ld a, $00   ; xor a
    ld [$12f0], sp
    jr nc, jr_013_6182

    ldh a, [$0a]
    ld [hl-], a
    jr nz, @-$0e

    ld [bc], a
    inc [hl]
    jr nz, jr_013_615b

    ld a, [$2036]
    nop
    ld [de], a
    jr c, jr_013_6192

    nop
    ld a, [bc]
    ld a, [hl-]
    jr nz, jr_013_6177

jr_013_6177:
    ld [bc], a
    inc a
    jr nz, jr_013_617b

jr_013_617b:
    ld a, [$203e]
    ld [$f800], sp
    nop

jr_013_6182:
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    nop
    db $10
    ld b, $00
    db $10
    ld hl, sp+$08

jr_013_6192:
    nop
    stop
    ld a, [bc]
    nop
    db $10
    ld [$000c], sp
    db $10
    db $10
    ld c, $00
    ld [$1000], sp
    nop
    jr nz, jr_013_61a5

jr_013_61a5:
    ld [$2002], sp
    nop
    nop
    inc b
    jr nz, jr_013_61ad

jr_013_61ad:
    ld hl, sp+$06
    jr nz, jr_013_61c1

    db $10
    ld [$1020], sp
    ld [$200a], sp
    stop
    inc c
    jr nz, jr_013_61cd

    ld hl, sp+$0e
    jr nz, jr_013_61c9

jr_013_61c1:
    nop
    ld hl, sp+$10
    nop
    nop
    nop
    ld [de], a
    nop

jr_013_61c9:
    nop
    ld [$0014], sp

jr_013_61cd:
    nop
    db $10
    ld d, $00
    db $10
    ld hl, sp+$18
    nop
    stop
    ld a, [de]
    nop
    db $10
    ld [$001c], sp
    db $10
    db $10
    ld e, $00
    ld [$1000], sp
    db $10
    jr nz, jr_013_61e7

jr_013_61e7:
    ld [$2012], sp
    nop
    nop
    inc d
    jr nz, jr_013_61ef

jr_013_61ef:
    ld hl, sp+$16
    jr nz, jr_013_6203

    db $10
    jr jr_013_6216

    db $10
    ld [$201a], sp
    stop
    inc e
    jr nz, jr_013_620f

    ld hl, sp+$1e
    jr nz, jr_013_620b

jr_013_6203:
    db $10
    ret nc

    jr nc, jr_013_6207

jr_013_6207:
    db $10
    ret c

    inc e
    nop

jr_013_620b:
    db $10
    add sp, $10
    nop

jr_013_620f:
    db $10
    ldh a, [rNR14]
    nop
    db $10
    ld hl, sp+$08

jr_013_6216:
    nop
    stop
    ld b, $00
    db $10
    ld [$0000], sp
    db $10
    ldh [$34], a
    nop
    ld [$d010], sp
    ld [$1000], sp
    ret c

    ld b, $00
    db $10
    ldh [$38], a
    nop
    db $10
    add sp, $0e
    nop
    db $10
    ldh a, [rNR32]
    nop
    db $10
    rst $30
    ld a, [de]
    nop
    db $10
    rst $38
    ld b, $00
    db $10
    rlca
    nop
    nop
    ld [$d310], sp
    jr nc, jr_013_6249

jr_013_6249:
    db $10
    db $db
    inc e
    nop
    db $10
    db $e3
    inc h
    nop
    db $10
    db $eb
    ld c, $00
    db $10
    pop af
    stop
    db $10
    rst $30
    ld d, $00
    db $10
    db $fd
    stop
    db $10
    dec b
    jr jr_013_6265

jr_013_6265:
    ld [$d110], sp
    inc h
    nop
    db $10
    reti


    ld c, $00
    db $10
    rst JumpTable
    stop
    db $10
    push hl
    jr jr_013_6276

jr_013_6276:
    db $10
    db $eb
    stop
    db $10
    pop af
    ld h, $00
    db $10
    ld hl, sp+$00
    nop
    db $10
    rst $38
    ld a, [de]
    nop
    ld [$d010], sp
    inc d
    nop
    db $10
    sub $10
    nop
    db $10
    call c, $0014
    db $10
    db $e4
    jr z, jr_013_6297

jr_013_6297:
    db $10
    db $ec
    ld h, $00
    db $10
    di
    nop
    nop
    db $10
    ld a, [$001a]
    stop
    stop
    ld [$d110], sp
    jr jr_013_62ac

jr_013_62ac:
    db $10
    reti


    jr c, jr_013_62b0

jr_013_62b0:
    db $10
    pop hl
    nop
    nop
    db $10
    jp hl


    ld b, $00
    db $10
    pop af
    nop
    nop
    db $10
    ld sp, hl
    inc b
    nop
    db $10
    ld bc, $000e
    db $10
    rlca
    stop
    ld [$e0f8], sp
    nop
    inc b
    ld hl, sp-$18
    ld [bc], a
    inc b
    ld hl, sp-$10
    inc b
    inc b
    ld hl, sp-$08
    ld b, $04
    ld hl, sp+$00
    ld [$f804], sp
    ld [$040a], sp
    ld hl, sp+$10
    inc c
    inc b
    ld hl, sp+$18
    ld c, $04
    add hl, bc
    ldh a, [rP1]
    nop
    rlca
    ldh a, [$08]
    ld [bc], a
    rlca
    nop
    ld hl, sp+$04
    rlca
    nop
    nop
    ld b, $27
    db $10
    ld hl, sp+$08
    rlca
    stop

jr_013_6300:
    ld a, [bc]
    rlca
    jr nz, @-$06

    inc c
    rlca
    jr nc, jr_013_6300

    inc c
    rlca
    ldh a, [$80]
    ld c, $07
    add hl, bc
    ldh a, [$08]
    nop
    daa
    ldh a, [rP1]
    ld [bc], a
    daa
    nop
    db $10
    inc b
    daa
    nop
    ld [$0706], sp
    db $10
    db $10
    ld [$1027], sp
    ld [$270a], sp
    jr nz, jr_013_6339

    inc c
    daa
    jr nc, jr_013_633d

    inc c
    daa
    ldh a, [$88]
    ld c, $27
    add hl, bc
    ld hl, sp+$07
    ld e, $25
    db $10

jr_013_6339:
    db $10
    inc e
    dec h
    nop

jr_013_633d:
    dec bc
    nop
    jr nz, jr_013_6341

jr_013_6341:
    inc bc
    ld [bc], a
    jr nz, jr_013_6345

jr_013_6345:
    ei
    inc b
    jr nz, jr_013_6359

    inc c
    ld b, $20
    db $10
    inc b
    ld [$1020], sp
    db $fc
    ld a, [bc]
    jr nz, jr_013_6365

    db $f4
    inc c
    jr nz, jr_013_6362

jr_013_6359:
    ld [de], a
    ld de, $251c
    ld sp, hl
    ld [$251e], sp
    nop

jr_013_6362:
    inc c
    ld c, $20

jr_013_6365:
    nop
    inc b
    db $10
    jr nz, jr_013_636a

jr_013_636a:
    db $fc
    ld [de], a
    jr nz, jr_013_637e

    dec c
    inc d
    jr nz, jr_013_6382

    dec b
    ld d, $20
    db $10
    db $fd
    jr jr_013_6399

    db $10
    push af
    ld a, [de]
    jr nz, jr_013_6387

jr_013_637e:
    nop
    rst $30
    stop

jr_013_6382:
    nop
    rst $38
    ld [de], a
    nop
    nop

jr_013_6387:
    rlca
    inc d
    nop
    nop
    rrca
    ld d, $00
    db $10
    rst $30
    jr jr_013_6392

jr_013_6392:
    db $10
    rst $38
    ld a, [de]
    nop
    db $10
    rlca
    inc e

jr_013_6399:
    nop
    db $10
    rrca
    ld e, $00
    ld sp, hl
    inc b
    ld b, d
    dec b
    add hl, bc
    nop
    ld sp, hl
    ld d, $20
    nop
    ld bc, $2014
    nop
    add hl, bc
    ld [de], a
    jr nz, jr_013_63b0

jr_013_63b0:
    ld de, $2010
    db $10
    ld sp, hl
    ld e, $20
    db $10
    ld bc, $201c
    db $10
    add hl, bc
    ld a, [de]
    jr nz, jr_013_63d0

    ld de, $2018
    ld sp, hl
    inc b
    ld b, d
    dec h
    add hl, bc
    db $10
    adc $00
    nop
    db $10
    call nc, $0034

jr_013_63d0:
    db $10
    db $db
    inc e
    nop
    db $10
    db $e3
    ld c, $00
    db $10
    ld [$001a], a
    db $10
    ldh a, [rNR10]
    nop
    db $10
    or $24
    nop
    db $10
    cp $0e
    nop
    db $10
    inc b
    stop
    ld a, [bc]
    ldh a, [$f8]
    nop
    ld b, $00
    ld hl, sp+$02
    ld b, $e0
    nop
    inc b
    ld b, $f0
    nop
    ld b, $06
    nop
    nop
    ld [$f006], sp
    stop
    ld h, $00
    db $10
    ld [bc], a
    ld h, $e0
    ld [$2604], sp
    ldh a, [$08]
    ld b, $26
    nop
    ld [$2608], sp
    ld a, [bc]
    ldh a, [$f8]
    nop
    ld b, $00
    ld hl, sp+$02
    ld b, $e0
    nop
    inc b
    ld b, $f0
    nop
    ld b, $06
    nop
    nop
    ld [$0006], sp
    ld [$060a], sp
    ldh [$08], a
    inc b
    ld h, $f0
    ld [$2606], sp
    ldh a, [rNR10]
    inc c
    ld b, $00
    db $10
    ld c, $06
    ld a, [bc]
    ldh a, [rNR11]
    nop
    ld h, $00
    ld de, $2602
    ldh [$09], a
    inc b
    ld h, $f0
    add hl, bc
    ld b, $26
    nop
    add hl, bc
    ld [$0026], sp
    ld bc, $260a
    ldh [rSB], a
    inc b
    ld b, $f0
    ld bc, $0606
    ldh a, [$f9]
    inc c
    ld h, $00
    ld sp, hl
    ld c, $26
    ld a, [bc]
    ld sp, hl
    db $fd
    jr nz, jr_013_646c

jr_013_646c:
    nop
    inc b
    ld [$e003], sp
    db $f4
    inc d
    inc bc
    ldh [$fc], a
    ld d, $03
    ldh a, [$f4]
    jr jr_013_647f

    ldh a, [$fc]
    ld a, [de]

jr_013_647f:
    inc bc
    ldh [rNR14], a
    inc d
    inc hl
    ldh [$0c], a
    ld d, $23
    ldh a, [rNR14]
    jr jr_013_64af

    ldh a, [$0c]
    ld a, [de]
    inc hl
    ld a, [bc]
    ld hl, sp-$03
    jr nz, jr_013_6495

jr_013_6495:
    rst $38
    inc b
    ld [$e003], sp
    db $f4
    inc d
    inc bc
    ldh [$fc], a
    ld d, $03
    ldh a, [$f4]
    jr jr_013_64a8

    ldh a, [$fc]
    ld a, [de]

jr_013_64a8:
    inc bc
    ldh [rNR14], a
    inc d
    inc hl
    ldh [$0c], a

jr_013_64af:
    ld d, $23
    ldh a, [rNR14]
    jr jr_013_64d8

    ldh a, [$0c]
    ld a, [de]
    inc hl
    ld a, [bc]
    db $10
    ret z

    ld c, h
    nop
    db $10
    ret nc

    ld c, [hl]

jr_013_64c1:
    nop
    db $10
    ret c

    ld d, b
    nop
    db $10
    ldh [rHDMA2], a
    nop
    db $10
    add sp, $54

jr_013_64cd:
    nop
    db $10
    ldh a, [rRP]
    nop
    db $10
    ld hl, sp+$58
    nop
    stop

jr_013_64d8:
    ld e, d
    nop
    db $10
    ld [$005c], sp
    db $10
    db $10
    ld e, [hl]

jr_013_64e1:
    nop
    ld a, [bc]
    jr nz, jr_013_64c1

    inc h
    nop
    jr nz, jr_013_64cd

    jr z, jr_013_64eb

jr_013_64eb:
    jr nz, jr_013_64e1

jr_013_64ed:
    inc b
    nop
    jr nz, jr_013_64ed

jr_013_64f1:
    ld c, $00
    jr nz, @+$06

    inc e
    nop
    db $10
    call z, $0016
    db $10
    call nc, RST_08
    db $10
    call c, RST_08
    jr nz, jr_013_64f1

    jr c, jr_013_6507

jr_013_6507:
    jr nz, @+$0e

    ld d, $00
    ld a, [bc]
    inc c
    ret z

    ld h, b
    ld bc, $d00c
    ld h, d
    ld bc, $d80c
    ld h, h
    ld bc, $e00c
    ld h, [hl]
    ld bc, $e80c
    ld l, b
    ld bc, $f00c
    ld l, d
    ld bc, $f80c
    ld l, h
    ld bc, $000c
    ld l, [hl]
    ld bc, $080c
    ld [hl], b
    ld bc, $100c
    ld [hl], d
    ld bc, $100a
    jp z, RST_30

    db $10
    ret nc

    inc [hl]
    nop
    db $10
    jp c, $000a

    db $10
    ld [c], a
    jr z, jr_013_6545

jr_013_6545:
    db $10
    ld [$0012], a
    db $10
    ldh a, [rNR10]
    nop
    db $10
    ld hl, sp+$14
    nop
    stop
    nop
    nop
    db $10
    ld [$002c], sp
    db $10
    stop
    nop
    ld a, [bc]
    nop
    ld hl, sp+$02
    ld b, $10
    ld [$2608], sp
    db $10
    db $10
    ld b, $26
    db $10
    ld hl, sp+$0c
    ld b, $10
    nop
    ld c, $06
    nop
    db $10
    jr jr_013_659c

    ldh a, [rP1]
    nop
    ld b, $f0
    ld [$2600], sp
    nop
    ld [$261a], sp
    nop
    nop
    inc b
    ld b, $0a
    nop
    ld de, $2602
    db $10
    ld bc, $0608
    db $10
    ld sp, hl
    ld b, $06
    db $10
    ld de, $260c
    db $10
    add hl, bc
    ld c, $26
    nop

jr_013_659c:
    ld sp, hl
    jr @+$08

    ldh a, [$09]
    nop
    ld h, $f0
    ld bc, $0600
    nop
    ld bc, $061a
    nop
    add hl, bc
    inc b
    ld h, $0a
    ldh a, [rP1]
    nop
    ld b, $10
    nop
    ld [$1006], sp
    ld [$2608], sp
    db $10
    ld hl, sp+$06
    ld b, $10
    db $10
    ld b, $26
    nop
    db $10
    jr jr_013_65ee

    nop
    ld hl, sp+$18
    ld b, $00
    nop
    ld a, [de]
    ld b, $f0
    ld [$2600], sp
    nop
    ld [$261a], sp
    ld a, [bc]
    ld sp, hl
    inc bc
    ld b, d
    dec b
    db $10
    ld [bc], a
    ld b, b
    dec b
    nop
    rst $30
    nop
    nop
    nop
    rst $38
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop

jr_013_65ee:
    rrca
    ld b, $00
    db $10
    rst $30
    ld [$1000], sp
    rst $38
    ld a, [bc]
    nop
    db $10
    rlca
    inc c
    nop
    db $10
    rrca
    ld c, $00
    ld a, [bc]
    ld sp, hl
    dec b
    ld b, d
    dec h
    db $10
    ld b, $40
    dec h
    nop
    ld sp, hl
    ld b, $20
    nop
    ld bc, $2004
    nop
    add hl, bc
    ld [bc], a
    jr nz, jr_013_6617

jr_013_6617:
    ld de, $2000
    db $10
    ld sp, hl
    ld c, $20
    db $10
    ld bc, $200c
    db $10
    add hl, bc
    ld a, [bc]
    jr nz, jr_013_6637

    ld de, $2008
    dec bc
    di
    nop

jr_013_662d:
    nop
    dec b
    di
    ld [$0502], sp
    di
    db $10
    inc b
    dec b

jr_013_6637:
    nop
    ld hl, sp+$18
    ld b, $00
    nop
    ld a, [de]
    ld b, $00
    ld [$061c], sp
    nop
    db $10

jr_013_6645:
    ld e, $06
    ldh a, [$f8]
    ld [de], a
    ld b, $f0
    nop
    inc d
    ld b, $f0

jr_013_6650:
    ld [$0616], sp

jr_013_6653:
    ldh [rSC], a
    db $10
    ld b, $0b
    db $10
    swap b
    nop

jr_013_665c:
    db $10
    jp nc, $0034

    jr nz, jr_013_662d

    ld h, $00
    jr nz, @-$2b

    inc h
    nop
    jr nz, jr_013_6645

    jr z, jr_013_666c

jr_013_666c:
    jr nz, jr_013_6650

    ld a, [de]
    nop

jr_013_6670:
    jr nz, jr_013_665c

    nop
    nop

jr_013_6674:
    jr nz, jr_013_6670

    nop

jr_013_6677:
    nop
    jr nz, jr_013_667c

    inc d
    nop

jr_013_667c:
    jr nz, jr_013_6686

    stop
    jr nz, jr_013_6674

    ld [hl-], a

jr_013_6683:
    nop
    dec bc
    db $10

jr_013_6686:
    ret z

    jr jr_013_6689

jr_013_6689:
    jr nz, jr_013_6653

    ld b, b
    nop
    jr nz, @-$2e

jr_013_668f:
    ld b, d
    nop
    jr nz, @-$26

    ld b, h
    nop
    jr nz, jr_013_6677

    ld b, [hl]
    nop
    jr nz, jr_013_6683

jr_013_669b:
    ld c, b
    nop
    jr nz, jr_013_668f

    ld c, d
    nop
    jr nz, jr_013_669b

    ld c, h
    nop
    jr nz, jr_013_66a7

jr_013_66a7:
    ld c, [hl]
    nop
    jr nz, jr_013_66b3

    ld d, b
    nop
    jr nz, jr_013_66bf

    ld d, d
    nop
    dec bc
    db $10

jr_013_66b3:
    ret z

jr_013_66b4:
    ld a, [hl-]
    nop
    jr nz, @+$12

    ld a, [hl-]
    nop
    db $10
    ret nc

    ld e, $00
    db $10

jr_013_66bf:
    ret c

jr_013_66c0:
    jr z, jr_013_66c2

jr_013_66c2:
    db $10
    ldh [rNR43], a
    nop
    db $10
    add sp, $08
    nop
    jr nz, jr_013_66b4

jr_013_66cc:
    inc h
    nop
    jr nz, jr_013_66c0

    inc e
    nop
    jr nz, jr_013_66cc

    jr z, jr_013_66d6

jr_013_66d6:
    jr nz, @+$01

    ld a, [de]
    nop
    jr nz, @+$09

    ld b, $00
    inc c
    ld [$44d1], sp
    ld bc, $df08
    ld c, d
    ld bc, $ed08
    ld b, d
    ld bc, $fb08
    ld c, h
    ld bc, $0908
    ld c, [hl]
    ld bc, $c818
    ld d, b
    ld bc, $d418
    ld d, d
    ld bc, $e018
    ld d, d
    ld bc, $0418
    ld d, h
    ld bc, $ec18
    ld d, b
    ld bc, $f818
    ld d, [hl]
    ld bc, $1118
    ld e, b
    ld bc, $f20b
    inc c
    ld c, $00
    ld [bc], a
    inc c
    stop
    ld [de], a
    inc c
    ld [de], a
    nop
    inc d
    inc b
    ld a, [bc]
    nop
    inc h
    inc b
    inc c
    nop
    db $f4
    inc b
    ld b, $00
    inc b
    inc b
    ld [$1600], sp
    db $fc
    ld [bc], a
    nop
    ld h, $fc
    inc b
    nop
    ld b, $fc
    nop
    nop
    or $fc
    ld a, [de]
    nop
    dec bc
    ld a, [c]
    db $fc
    ld c, $20
    ld [bc], a
    db $fc
    db $10
    jr nz, @+$14

jr_013_6746:
    db $fc
    ld [de], a
    jr nz, jr_013_675e

    inc b
    ld a, [bc]
    jr nz, jr_013_6772

    inc b
    inc c
    jr nz, jr_013_6746

    inc b
    ld b, $20
    inc b
    inc b
    ld [$1620], sp
    inc c
    ld [bc], a

jr_013_675c:
    jr nz, jr_013_6784

jr_013_675e:
    inc c
    inc b
    jr nz, jr_013_6768

    inc c
    nop
    jr nz, jr_013_675c

    inc c
    ld a, [de]

jr_013_6768:
    jr nz, jr_013_6776

    ld c, $f0
    inc b
    nop
    ld c, $f8
    ld b, $00

jr_013_6772:
    ld [bc], a
    jr @+$06

    ld h, b

jr_013_6776:
    ld [bc], a
    db $10
    ld b, $60
    ld hl, sp-$06
    ld c, $00
    ld hl, sp+$02
    stop
    jr jr_013_6792

jr_013_6784:
    ld c, $60
    jr jr_013_678e

    db $10
    ld h, b
    ld [$12fd], sp
    nop

jr_013_678e:
    ld [$120b], sp
    ld h, b

jr_013_6792:
    inc de
    nop
    inc d
    nop
    db $fd
    ld [$6014], sp
    inc c
    ld [bc], a
    ldh a, [rDIV]
    ld b, b
    ld [bc], a
    ld hl, sp+$06
    ld b, b
    ld c, $18
    inc b
    jr nz, @+$10

    db $10
    ld b, $20
    jr @-$04

    ld c, $40
    jr jr_013_67b3

    db $10
    ld b, b

jr_013_67b3:
    ld hl, sp+$0e
    ld c, $20
    ld hl, sp+$06
    db $10
    jr nz, jr_013_67c4

    db $fd
    ld [de], a
    ld b, b
    ld [$120b], sp
    jr nz, @-$01

jr_013_67c4:
    nop
    inc d
    ld b, b
    inc de
    ld [$2014], sp
    inc c
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    ld [$00f8], sp
    nop
    ld [$0200], sp
    nop
    jr @-$06

    nop
    nop
    jr jr_013_67e2

jr_013_67e2:
    ld [bc], a
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$10
    ld [bc], a
    nop
    ld [$0008], sp
    nop
    ld [$0210], sp
    nop
    jr @+$0a

    nop
    nop
    jr @+$12

    ld [bc], a
    nop
    inc c
    ld bc, $06f3
    ld [bc], a
    ld bc, $08fa
    ld [bc], a
    ld bc, $0a01
    ld [bc], a
    ld bc, $0615
    ld [hli], a
    ld bc, $080e
    ld [hli], a
    ld bc, $0a07
    ld [hli], a
    rrca
    di
    ld b, $42
    rrca
    ld a, [$4208]
    rrca
    ld bc, $420a
    rrca
    dec d
    ld b, $62
    rrca
    ld c, $08
    ld h, d
    rrca
    rlca
    ld a, [bc]
    ld h, d
    inc c
    nop
    ldh a, [rTMA]
    ld [bc], a
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    jr jr_013_6843

    ld [hli], a
    nop
    db $10
    ld [$0022], sp

jr_013_6843:
    ld [$220a], sp
    db $10
    ldh a, [rTMA]
    ld b, d
    db $10
    ld hl, sp+$08
    ld b, d
    stop
    ld a, [bc]
    ld b, d
    db $10
    jr jr_013_685b

    ld h, d
    db $10
    db $10
    ld [$1062], sp

jr_013_685b:
    ld [$620a], sp
    inc c
    rst $38
    db $ed
    ld b, $02
    rst $38
    or $08
    ld [bc], a
    rst $38
    rst $38
    ld a, [bc]
    ld [bc], a
    ld de, $06ed
    ld b, d
    ld de, $08f6
    ld b, d
    ld de, $0aff
    ld b, d
    rst $38
    dec de
    ld b, $22
    rst $38
    ld [de], a
    ld [$ff22], sp
    add hl, bc
    ld a, [bc]
    ld [hli], a
    ld de, $061b
    ld h, d
    ld de, $0812
    ld h, d
    ld de, $0a09
    ld h, d
    inc c
    ld hl, sp-$03
    jr nz, jr_013_6894

jr_013_6894:
    rst $38
    inc b
    ld [$0c03], sp
    nop
    ld a, [bc]
    inc bc
    inc c
    ld [$230a], sp
    db $e3
    db $f4
    ld [hli], a
    inc bc
    db $e3
    db $fc
    inc h
    inc bc
    di
    db $f4
    ld h, $03
    di
    db $fc
    jr z, jr_013_68b3

    db $e3
    inc d
    ld [hli], a

jr_013_68b3:
    inc hl
    db $e3
    inc c
    inc h
    inc hl
    di
    inc d
    ld h, $23
    di
    inc c
    jr z, @+$25

    dec c
    ld c, l
    dec h
    ld [de], a
    nop
    ld c, l
    dec l
    inc d
    nop
    ld c, l
    dec [hl]
    ld d, $00
    ld d, b
    pop af
    stop
    ld d, b
    jp hl


    ld c, $00
    scf
    ld d, [hl]
    inc c
    nop
    scf
    ld c, [hl]
    ld a, [bc]
    nop
    ld [hl], $46
    ld [$3500], sp
    ld a, $06
    nop
    dec [hl]
    ld [hl], $04
    nop
    dec sp
    xor $00
    nop
    ld a, [hl-]
    or $02
    nop
    dec a
    and $18
    nop
    dec c
    ld hl, sp-$03
    jr nz, jr_013_68fa

jr_013_68fa:
    rst $38
    inc b
    ld [$e103], sp
    db $f4
    nop
    inc bc
    pop hl
    db $fc
    ld [bc], a
    inc bc
    pop af
    db $f4
    inc b
    inc bc
    pop af
    db $fc
    ld b, $03
    pop hl
    inc d
    nop
    inc hl
    pop hl
    inc c
    ld [bc], a
    inc hl
    pop af
    inc d
    inc b
    inc hl
    pop af
    inc c
    ld b, $23
    ld [$0c0c], sp
    inc hl
    ld [$0e04], sp
    inc bc
    ld [$0cfc], sp
    inc bc
    dec c
    ld hl, sp-$03
    jr nz, jr_013_692f

jr_013_692f:
    rst $38
    inc b
    ld [$e103], sp
    db $f4
    nop
    inc bc
    pop hl
    db $fc
    ld [bc], a
    inc bc
    pop af
    db $f4
    inc b
    inc bc
    pop af
    db $fc
    ld b, $03
    pop hl
    inc d
    nop
    inc hl
    pop hl
    inc c
    ld [bc], a
    inc hl
    pop af
    inc d
    inc b
    inc hl
    pop af
    inc c
    ld b, $23
    ld [$10fc], sp
    inc bc
    ld [$1204], sp
    inc bc
    ld [$100c], sp
    inc hl
    dec c
    ld hl, sp-$03
    jr nz, jr_013_6964

jr_013_6964:
    rst $38
    inc b
    ld [$0803], sp
    inc c
    inc c
    inc hl
    ld [$0e04], sp
    inc bc
    ld [$0cfc], sp
    inc bc
    ldh [$f4], a
    inc d
    inc bc
    ldh [$fc], a
    ld d, $03
    ldh a, [$f4]
    inc e
    inc bc
    ldh a, [$fc]
    ld e, $03
    ldh [rNR14], a
    inc d
    inc hl
    ldh [$0c], a
    ld d, $23
    ldh a, [rNR14]
    inc e
    inc hl
    ldh a, [$0c]
    ld e, $23
    dec c
    ld hl, sp-$03
    jr nz, jr_013_6999

jr_013_6999:
    rst $38
    inc b
    ld [$e003], sp
    db $f4
    inc d
    inc bc
    ldh [$fc], a
    ld d, $03
    ldh a, [$f4]
    jr jr_013_69ac

    ldh a, [$fc]
    ld a, [de]

jr_013_69ac:
    inc bc
    ldh [rNR14], a
    inc d
    inc hl
    ldh [$0c], a
    ld d, $23
    ldh a, [rNR14]
    jr jr_013_69dc

    ldh a, [$0c]
    ld a, [de]
    inc hl
    ld [$10fc], sp
    inc bc
    ld [$1204], sp
    inc bc
    ld [$100c], sp
    inc hl
    dec c
    db $10
    ret z

    inc h
    nop
    db $10
    ret nc

jr_013_69d0:
    ld c, $00
    db $10
    sub $10
    nop
    db $10
    call c, $0002

jr_013_69da:
    db $10
    db $e4

jr_013_69dc:
    nop
    nop
    db $10
    db $ec
    inc d
    nop
    db $10
    ld a, [c]

jr_013_69e4:
    stop
    jr nz, jr_013_69d0

    ld c, $00
    jr nz, jr_013_69da

    stop
    jr nz, jr_013_69e4

jr_013_69f0:
    ld [hli], a
    nop
    jr nz, jr_013_69f0

    inc e
    nop
    jr nz, jr_013_69fc

    inc d
    nop
    jr nz, @+$0c

jr_013_69fc:
    stop
    ld c, $ef
    ld [$0506], sp
    db $f4
    db $10
    ld [$f405], sp
    jr jr_013_6a14

    dec b
    db $e4
    rrca
    inc c
    dec b
    db $e4
    rla
    ld c, $05
    nop

jr_013_6a14:
    nop
    ld a, [hli]
    ld b, $00
    ld [$062c], sp
    nop
    db $10
    ld l, $06
    nop
    jr @+$32

    ld b, $f0
    nop
    inc h
    ld b, $f0
    ld [$0626], sp
    ldh a, [rNR10]
    jr z, @+$08

    ldh [$0e], a
    ld [hli], a
    ld b, $f1
    ld hl, sp+$20
    ld b, $0e
    rst $28
    ld [$0506], sp
    db $f4
    db $10
    ld [$f405], sp
    jr jr_013_6a4d

    dec b
    db $e4
    rrca
    inc c
    dec b
    db $e4
    rla
    ld c, $05
    nop

jr_013_6a4d:
    nop
    ld a, [hli]
    ld b, $00
    ld [$062c], sp
    nop
    db $10
    ld l, $06
    nop
    jr @+$32

    ld b, $f0
    db $10
    jr z, @+$08

    ldh [$0e], a
    ld [hli], a
    ld b, $f0
    ld hl, sp+$32
    ld b, $f0
    nop
    inc [hl]
    ld b, $f0
    ld [$0636], sp
    ld c, $ef
    ld [$0506], sp
    db $f4
    db $10
    ld [$f405], sp
    jr jr_013_6a86

    dec b
    db $e4
    rrca
    inc c
    dec b
    db $e4
    rla
    ld c, $05
    nop

jr_013_6a86:
    nop
    ld a, [hli]
    ld b, $00
    ld [$062c], sp
    nop
    db $10
    ld l, $06
    nop
    jr jr_013_6ac4

    ld b, $f0
    db $10
    jr z, @+$08

    ldh [$0e], a
    ld [hli], a
    ld b, $f0
    ld hl, sp+$42
    ld b, $f0
    nop
    ld b, h
    ld b, $f0
    ld [$0646], sp
    ld c, $f8
    ld hl, sp+$0c
    inc b
    ld hl, sp+$00
    ld c, $04
    ld [$10f0], sp
    inc b
    ld [$12f8], sp
    inc b
    ld [$0a00], sp
    inc b
    ld hl, sp+$10
    inc c
    inc h
    ld hl, sp+$08

jr_013_6ac4:
    ld c, $24
    ld [$1018], sp
    inc h
    ld [$1210], sp
    inc h
    ld [$0a08], sp
    inc h
    jr @-$06

    inc c
    ld b, h
    jr jr_013_6ad8

jr_013_6ad8:
    ld c, $44
    jr @+$12

    inc c
    ld h, h
    jr @+$0a

    ld c, $64
    ld c, $f8
    ld hl, sp+$0c
    dec b
    ld hl, sp+$00
    ld c, $05
    ld [$10f0], sp
    dec b
    ld [$12f8], sp
    dec b
    ld [$0a00], sp
    dec b
    ld hl, sp+$10
    inc c
    dec h
    ld hl, sp+$08
    ld c, $25
    ld [$1018], sp
    dec h
    ld [$1210], sp
    dec h
    ld [$0a08], sp
    dec h
    jr @-$06

    inc c
    ld b, l
    jr jr_013_6b11

jr_013_6b11:
    ld c, $45
    jr jr_013_6b25

    inc c
    ld h, l
    jr jr_013_6b21

    ld c, $65
    ld c, $10
    ret z

    inc h
    nop
    db $10

jr_013_6b21:
    ret nc

    ld c, $00
    db $10

jr_013_6b25:
    sub $10
    nop

jr_013_6b28:
    db $10
    db $db
    ld a, [de]
    nop
    db $10
    db $e3
    jr nc, jr_013_6b30

jr_013_6b30:
    db $10
    ld [$0000], a

jr_013_6b34:
    jr nz, @-$24

    inc d
    nop
    jr nz, @-$1c

    jr z, jr_013_6b3c

jr_013_6b3c:
    jr nz, jr_013_6b28

    inc l
    nop

jr_013_6b40:
    jr nz, jr_013_6b34

    nop
    nop
    jr nz, jr_013_6b40

    ld [de], a
    nop
    jr nz, @+$01

    stop
    jr nz, jr_013_6b53

    jr jr_013_6b50

jr_013_6b50:
    jr nz, @+$0f

    nop

jr_013_6b53:
    nop
    rrca
    rst $28
    ld [$0506], sp
    db $f4
    db $10
    ld [$f405], sp
    jr jr_013_6b6a

    dec b
    db $e4
    rrca
    inc c
    dec b
    db $e4
    rla
    ld c, $05
    nop

jr_013_6b6a:
    ld [$062c], sp
    nop
    db $10
    ld l, $06
    nop
    jr jr_013_6ba4

    ld b, $f0
    db $10
    jr z, @+$08

    ldh [$0e], a
    ld [hli], a
    ld b, $f0
    ld hl, sp+$38
    ld b, $f0
    nop
    ld a, [hl-]

jr_013_6b84:
    ld b, $f0
    ld [$063c], sp
    db $f4
    ld hl, sp+$3e
    ld b, $00
    nop
    ld b, b
    ld b, $0f
    ld [$0600], sp
    ld bc, $0808
    ld [$0802], sp
    db $10
    ld a, [bc]
    ld [bc], a
    ld [$0c18], sp
    ld [bc], a
    jr jr_013_6b84

jr_013_6ba4:
    ld d, $03
    jr c, @-$1e

    ld a, [de]
    ld bc, $e048

jr_013_6bac:
    inc e
    ld bc, $08f8
    db $10
    ld [bc], a
    ld hl, sp+$10
    ld [de], a
    ld [bc], a
    ld hl, sp+$18
    inc d
    ld [bc], a
    ld [$0e20], sp
    ld bc, $e808
    nop
    inc bc
    ld [$02f0], sp
    inc bc
    ld [$04f8], sp
    inc bc
    jr z, jr_013_6bac

    jr jr_013_6bcf

    db $10

jr_013_6bcf:
    ld bc, $06f3
    ld [bc], a
    ld bc, $08fa
    ld [bc], a
    ld bc, $0a01
    ld [bc], a
    ld bc, $0615
    ld [hli], a
    ld bc, $080e
    ld [hli], a
    ld bc, $0a07
    ld [hli], a
    rrca
    di
    ld b, $42
    rrca
    ld a, [$4208]
    rrca
    ld bc, $420a
    rrca
    dec d
    ld b, $62
    rrca
    ld c, $08
    ld h, d
    rrca
    rlca
    ld a, [bc]
    ld h, d
    ld bc, $0001
    ld [bc], a
    ld bc, $0007
    ld [hli], a
    rrca
    ld bc, $4200
    rrca
    rlca
    nop
    ld h, d
    stop
    ldh a, [rTMA]
    ld [bc], a
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    nop
    nop
    ld bc, $1800
    ld b, $22
    nop
    db $10
    ld [$0022], sp
    ld [$220a], sp
    nop
    ld [$2100], sp
    db $10
    ldh a, [rTMA]
    ld b, d
    db $10
    ld hl, sp+$08
    ld b, d
    stop
    ld a, [bc]
    ld b, d
    stop
    nop
    ld b, c
    db $10
    jr jr_013_6c49

    ld h, d
    db $10
    db $10
    ld [$1062], sp

jr_013_6c49:
    ld [$620a], sp
    db $10
    ld [$6100], sp
    ld c, $08
    push af
    ld d, d
    inc b
    ld [$54fd], sp
    inc b
    ld [$5605], sp

jr_013_6c5c:
    inc b
    ld [$580d], sp
    inc b
    ld [$5a15], sp
    inc b
    jr jr_013_6c5c

    ld e, h
    ld bc, $fd18
    ld e, [hl]
    inc b
    jr jr_013_6c74

    ld h, b
    nop
    jr jr_013_6c80

    ld h, d

jr_013_6c74:
    nop
    jr @+$17

    ld h, h
    nop
    jr jr_013_6c98

    ld h, [hl]
    nop
    jr jr_013_6ca4

    ld l, b

jr_013_6c80:
    nop
    jr jr_013_6cb0

    ld l, d
    inc b
    jr jr_013_6cbc

    ld l, h
    inc b
    ld [de], a
    dec d
    ld hl, sp+$00
    ld b, $15
    nop
    ld [bc], a
    ld b, $25
    ld hl, sp+$04
    ld b, $25
    nop

jr_013_6c98:
    ld b, $06
    dec d
    stop
    ld h, $15
    ld [$2602], sp
    dec h
    db $10

jr_013_6ca4:
    inc b
    ld h, $25
    ld [$2606], sp
    inc bc
    db $fc
    ld h, b
    ld [$0403], sp

jr_013_6cb0:
    ld h, d
    ld [$0c03], sp
    ld h, h
    ld [$fc13], sp
    ld h, [hl]
    ld [$0413], sp

jr_013_6cbc:
    ld l, b
    ld [$0c13], sp
    ld l, d
    ld [$f523], sp
    ld c, [hl]
    ld [$fd23], sp
    ld d, b
    ld [$1323], sp
    ld c, [hl]
    jr z, @+$25

    dec bc
    ld d, b
    jr z, jr_013_6ce5

    dec d
    ld hl, sp+$08
    ld b, $15
    nop
    ld a, [bc]
    ld b, $25
    ld hl, sp+$0c
    ld b, $25
    nop
    ld c, $06
    dec d
    db $10

jr_013_6ce5:
    ld [$1526], sp
    ld [$260a], sp
    dec h
    db $10
    inc c
    ld h, $25
    ld [$260e], sp
    ld [bc], a
    db $fc
    ld h, b
    ld [$0402], sp
    ld h, d
    ld [$0c02], sp
    ld h, h
    ld [$fc12], sp
    ld h, [hl]
    ld [$0412], sp
    ld l, b
    ld [$0c12], sp
    ld l, d
    ld [$f522], sp
    ld c, [hl]
    ld [$fd22], sp
    ld d, b
    ld [$1322], sp
    ld c, [hl]
    jr z, @+$24

    dec bc
    ld d, b
    jr z, jr_013_6d2e

    inc d
    ld hl, sp+$10
    ld b, $14
    nop
    ld [de], a
    ld b, $24
    ld hl, sp+$14
    ld b, $24
    nop
    ld d, $06
    inc d
    db $10

jr_013_6d2e:
    db $10
    ld h, $14
    ld [$2612], sp
    inc h
    db $10
    inc d
    ld h, $24
    ld [$2616], sp
    ld [bc], a
    db $fd
    ld h, b
    ld [$0502], sp
    ld h, d
    ld [$0d02], sp
    ld h, h
    ld [$fd12], sp
    ld h, [hl]
    ld [$0512], sp
    ld l, b
    ld [$0d12], sp
    ld l, d
    ld [$f522], sp
    ld c, [hl]
    ld [$fd22], sp
    ld d, b
    ld [$1322], sp
    ld c, [hl]
    jr z, @+$24

    dec bc
    ld d, b
    jr z, jr_013_6d77

    rla
    ld hl, sp+$18
    ld b, $17
    nop
    ld a, [de]
    ld b, $27
    ld hl, sp+$1c
    ld b, $27
    nop
    ld e, $06
    rla
    db $10

jr_013_6d77:
    jr jr_013_6d9f

    rla
    ld [$261a], sp
    daa
    db $10
    inc e
    ld h, $27
    ld [$261e], sp
    inc bc
    db $fc
    ld h, b
    ld [$0403], sp
    ld h, d
    ld [$0c03], sp
    ld h, h
    ld [$fc13], sp
    ld h, [hl]
    ld [$0413], sp
    ld l, b
    ld [$0c13], sp
    ld l, d
    ld [$f525], sp

jr_013_6d9f:
    ld c, [hl]
    ld [$fd25], sp
    ld d, b
    ld [$1325], sp
    ld c, [hl]
    jr z, jr_013_6dcf

    dec bc
    ld d, b
    jr z, jr_013_6dc0

    rla
    ld hl, sp+$20
    ld b, $17
    nop
    ld [hli], a
    ld b, $27
    ld hl, sp+$24
    ld b, $27
    nop
    ld h, $06
    rla
    db $10

jr_013_6dc0:
    jr nz, jr_013_6de8

    rla
    ld [$2622], sp
    daa
    db $10
    inc h
    ld h, $27
    ld [$2626], sp
    dec b

jr_013_6dcf:
    db $fc
    ld h, b
    ld [$0405], sp
    ld h, d
    ld [$0c05], sp
    ld h, h
    ld [$fc15], sp
    ld h, [hl]
    ld [$0415], sp
    ld l, b
    ld [$0c15], sp
    ld l, d
    ld [$f526], sp

jr_013_6de8:
    ld c, [hl]
    ld [$fd26], sp
    ld d, b
    ld [$1326], sp
    ld c, [hl]
    jr z, jr_013_6e19

    dec bc
    ld d, b
    jr z, @+$14

    ld hl, sp-$10
    nop
    dec b
    ld hl, sp-$08
    ld [bc], a
    dec b
    ld hl, sp+$00
    inc b
    dec b
    ld [$06f0], sp
    dec b
    ld [$08f8], sp
    dec b
    ld [$0a00], sp
    dec b
    ld hl, sp+$18
    nop
    dec h
    ld hl, sp+$10

jr_013_6e15:
    ld [bc], a
    dec h
    ld hl, sp+$08

jr_013_6e19:
    inc b
    dec h
    ld [$0618], sp
    dec h
    ld [$0810], sp
    dec h
    jr jr_013_6e15

    nop
    ld b, l
    jr @-$06

    ld [bc], a
    ld b, l
    jr jr_013_6e2d

jr_013_6e2d:
    inc b
    ld b, l
    jr @+$1a

    nop
    ld h, l
    jr @+$12

    ld [bc], a
    ld h, l
    jr @+$0a

    inc b
    ld h, l
    ld [$0a08], sp
    dec b
    inc d
    ld bc, $02fa
    ld [bc], a
    ld bc, $0401
    ld [bc], a
    ld bc, $020e
    ld [hli], a
    ld bc, $0407
    ld [hli], a
    rrca
    ld a, [$4202]
    rrca
    ld bc, $4204
    rrca
    ld c, $02
    ld h, d
    rrca
    rlca
    inc b
    ld h, d
    nop
    db $ed
    ld b, $02
    nop
    or $08
    ld [bc], a
    nop
    rst $38
    ld a, [bc]
    ld [bc], a
    db $10
    db $ed
    ld b, $42
    db $10
    or $08
    ld b, d
    db $10
    rst $38
    ld a, [bc]
    ld b, d
    nop
    dec de
    ld b, $22
    nop
    ld [de], a
    ld [$0022], sp
    add hl, bc
    ld a, [bc]
    ld [hli], a
    db $10
    dec de
    ld b, $62
    db $10
    ld [de], a
    ld [$1062], sp
    add hl, bc
    ld a, [bc]
    ld h, d
    ld [hli], a
    dec b
    rlca
    jr z, jr_013_6e9b

    dec b
    rrca
    ld a, [hli]
    ld b, $15
    rlca

jr_013_6e9b:
    inc l
    ld b, $15
    rrca
    ld l, $06
    dec h
    rlca
    jr nc, jr_013_6eab

    dec h
    rrca
    ld [hl-], a
    ld b, $05
    nop

jr_013_6eab:
    jr z, jr_013_6ed3

    dec b
    ld hl, sp+$2a
    ld h, $15
    nop
    inc l
    ld h, $15
    ld hl, sp+$2e
    ld h, $25
    nop
    jr nc, jr_013_6ee3

    dec h
    ld hl, sp+$32
    ld h, $f0
    ld hl, sp+$60
    ld [$00f0], sp
    ld h, d
    ld [$08f0], sp
    ld h, h
    ld [$10f0], sp
    ld h, [hl]
    ld [$f500], sp

jr_013_6ed3:
    ld l, b
    ld [$fd00], sp
    ld l, d
    ld [$0500], sp
    ld l, h
    ld [$0d00], sp
    ld l, [hl]
    ld [$1500], sp

jr_013_6ee3:
    ld [hl], b
    ld [$f510], sp
    ld [hl], d
    ld [$fd10], sp
    ld [hl], h
    ld [$0510], sp
    db $76
    ld [$0d10], sp
    ld a, b
    ld [$1510], sp
    ld a, d
    ld [$ef2a], sp
    ld l, b
    nop
    ld a, [hli]
    rst $30
    ld l, d
    nop
    ld a, [de]
    rst $28
    ld h, h
    nop
    ld a, [de]
    rst $30
    ld h, [hl]
    nop
    add hl, de
    dec c
    ld l, h
    nop
    add hl, de
    dec d
    ld l, [hl]
    nop
    add hl, hl
    dec c
    ld [hl], b
    nop
    add hl, hl
    dec d
    ld [hl], d
    nop
    inc hl
    dec b
    rlca
    inc [hl]
    ld b, $05
    rrca
    ld [hl], $06
    dec d
    rlca
    jr c, jr_013_6f2c

    dec d
    rrca
    ld a, [hl-]
    ld b, $25
    rlca

jr_013_6f2c:
    inc a
    ld b, $25
    rrca
    ld a, $06
    dec b
    nop
    inc [hl]
    ld h, $05
    ld hl, sp+$36
    ld h, $15
    nop
    jr c, jr_013_6f64

    dec d
    ld hl, sp+$3a
    ld h, $25

jr_013_6f43:
    nop
    inc a
    ld h, $25

jr_013_6f47:
    ld hl, sp+$3e
    ld h, $18
    rst $28
    ld h, h
    nop
    jr jr_013_6f47

    ld h, [hl]
    nop
    jr z, jr_013_6f43

    ld l, b
    nop
    jr z, @-$07

    ld l, d
    nop
    jr jr_013_6f69

    ld l, h
    nop
    jr jr_013_6f75

    ld l, [hl]
    nop
    jr z, jr_013_6f71

jr_013_6f64:
    ld [hl], b
    nop
    jr z, jr_013_6f7d

    ld [hl], d

jr_013_6f69:
    nop
    ldh a, [$f5]
    ld h, b
    ld [$fdf0], sp
    ld h, d

jr_013_6f71:
    ld [$05f0], sp
    ld h, h

jr_013_6f75:
    ld [$0df0], sp
    ld h, [hl]
    ld [$15f0], sp
    ld l, b

jr_013_6f7d:
    ld [$f500], sp
    ld l, d
    ld [$fd00], sp
    ld l, h
    ld [$0500], sp
    ld l, [hl]
    ld [$0d00], sp
    ld [hl], b
    ld [$1500], sp
    ld [hl], d
    ld [$f510], sp
    ld [hl], h
    ld [$fd10], sp
    db $76
    ld [$0510], sp
    ld a, b
    ld [$0d10], sp
    ld a, d
    ld [$1510], sp
    ld a, h
    ld [$0523], sp
    rlca
    ld b, b
    ld b, $05
    rrca
    ld b, d
    ld b, $15
    rlca
    ld b, h
    ld b, $15
    rrca
    ld b, [hl]
    ld b, $25
    rlca
    ld c, b
    ld b, $25
    rrca
    ld c, d
    ld b, $05
    nop
    ld b, b
    ld h, $05
    ld hl, sp+$42
    ld h, $15
    nop
    ld b, h
    ld h, $15
    ld hl, sp+$46
    ld h, $25
    nop
    ld c, b
    ld h, $25
    ld hl, sp+$4a
    ld h, $17
    rst $28
    ld h, h
    nop
    rla
    rst $30
    ld h, [hl]
    nop
    daa
    rst $28
    ld l, b
    nop
    daa
    rst $30
    ld l, d
    nop
    rla
    inc c
    ld l, h
    nop
    rla
    inc d
    ld l, [hl]
    nop
    daa
    inc c
    ld [hl], b
    nop
    daa
    inc d
    ld [hl], d
    nop
    ldh a, [$f5]
    ld h, b
    ld [$fdf0], sp
    ld h, d
    ld [$05f0], sp
    ld h, h
    ld [$0df0], sp
    ld h, [hl]
    ld [$15f0], sp
    ld l, b
    ld [$f500], sp
    ld l, d
    ld [$fd00], sp
    ld l, h
    ld [$0500], sp
    ld l, [hl]
    ld [$0d00], sp
    ld [hl], b
    ld [$1500], sp
    ld [hl], d
    ld [$f510], sp
    ld [hl], h
    ld [$fd10], sp
    db $76
    ld [$0510], sp
    ld a, b
    ld [$0d10], sp
    ld a, d
    ld [$1510], sp
    ld a, h
    ld [$0523], sp
    rlca
    ld c, h
    ld b, $05
    rrca
    ld c, [hl]
    ld b, $15
    rlca
    ld d, b
    ld b, $15
    rrca
    ld d, d
    ld b, $25
    rlca
    ld d, h
    ld b, $25
    rrca
    ld d, [hl]
    ld b, $05
    nop
    ld c, h
    ld h, $05
    ld hl, sp+$4e
    ld h, $15
    nop
    ld d, b
    ld h, $15
    ld hl, sp+$52
    ld h, $25

jr_013_705d:
    nop
    ld d, h
    ld h, $25

jr_013_7061:
    ld hl, sp+$56
    ld h, $18
    rst $28
    ld h, h
    nop
    jr jr_013_7061

    ld h, [hl]
    nop
    jr z, jr_013_705d

    ld l, b
    nop
    jr z, @-$07

    ld l, d
    nop
    jr jr_013_7082

    ld l, h
    nop
    jr jr_013_708e

    ld l, [hl]
    nop
    jr z, jr_013_708a

    ld [hl], b
    nop
    jr z, jr_013_7096

jr_013_7082:
    ld [hl], d
    nop
    ldh a, [$f5]
    ld h, b
    ld [$fdf0], sp

jr_013_708a:
    ld h, d
    ld [$05f0], sp

jr_013_708e:
    ld h, h
    ld [$0df0], sp
    ld h, [hl]
    ld [$15f0], sp

jr_013_7096:
    ld l, b
    ld [$f500], sp
    ld l, d
    ld [$fd00], sp
    ld l, h
    ld [$0500], sp
    ld l, [hl]
    ld [$0d00], sp
    ld [hl], b
    ld [$1500], sp
    ld [hl], d
    ld [$f510], sp
    ld [hl], h
    ld [$fd10], sp
    db $76
    ld [$0510], sp
    ld a, b
    ld [$1210], sp
    ld [hl], h
    jr z, @+$12

    ld a, [bc]
    db $76
    jr z, jr_013_70e3

    ld [$5807], sp
    ld b, $08
    rrca
    ld e, d
    ld b, $18
    rlca
    ld e, h
    ld b, $18
    rrca
    ld e, [hl]
    ld b, $28
    rlca
    ld h, b
    ld b, $28
    rrca
    ld h, d
    ld b, $08
    nop
    ld e, b
    ld h, $08
    ld hl, sp+$5a
    ld h, $18
    nop

jr_013_70e3:
    ld e, h
    ld h, $18
    ld hl, sp+$5e
    ld h, $28
    nop
    ld h, b
    ld h, $28
    ld hl, sp+$62
    ld h, $1a
    rst $28
    ld h, h
    nop
    ld a, [de]
    rst $30
    ld h, [hl]
    nop
    ld a, [hli]
    rst $28
    ld l, b
    nop
    ld a, [hli]
    rst $30
    ld l, d
    nop
    ld a, [de]
    dec c
    ld l, h
    nop
    ld a, [de]
    dec d
    ld l, [hl]
    nop
    ld a, [hli]
    dec c
    ld [hl], b
    nop
    ld a, [hli]
    dec d
    ld [hl], d
    nop
    ld a, [c]
    or $60
    ld [$fef2], sp
    ld h, d
    ld [$06f2], sp
    ld h, h
    ld [$0ef2], sp
    ld h, [hl]
    ld [$f502], sp
    ld l, b
    ld [$fd02], sp
    ld l, d
    ld [$0502], sp
    ld l, h
    ld [$0d02], sp
    ld l, [hl]
    ld [$1502], sp
    ld [hl], b
    ld [$f512], sp
    ld [hl], d
    ld [$fd12], sp
    ld [hl], h
    ld [$0512], sp
    db $76
    ld [$1212], sp
    ld [hl], d
    jr z, @+$14

    ld a, [bc]
    ld [hl], h
    jr z, jr_013_714e

    nop
    nop
    nop
    nop

jr_013_714e:
    nop
    ld [$0002], sp
    stop
    nop
    nop
    db $10
    ld [$0002], sp
    inc b
    nop
    nop
    inc b
    nop
    nop
    ld [$0006], sp
    stop
    inc b
    nop
    db $10
    ld [$0006], sp
    inc b
    nop
    nop
    ld [$0000], sp
    ld [$2008], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    ld b, $f8
    nop
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    jr jr_013_718f

jr_013_718f:
    nop
    nop
    jr @+$0a

    ld [bc], a
    nop
    ld b, $f8
    nop
    inc b
    nop
    ld hl, sp+$08
    ld b, $00
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    jr jr_013_71a8

jr_013_71a8:
    inc b
    nop
    jr jr_013_71b4

    ld b, $00
    ld b, $f8
    nop
    ld [$f800], sp

jr_013_71b4:
    ld [$2008], sp
    ld [$0800], sp
    nop
    ld [$0808], sp
    jr nz, jr_013_71d8

    nop
    ld [$1800], sp
    ld [$2008], sp
    ld [$00f0], sp
    nop
    nop
    ldh a, [$08]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp

jr_013_71d8:
    stop
    nop
    nop
    db $10
    ld [$0002], sp
    jr nz, jr_013_71e2

jr_013_71e2:
    nop
    nop
    jr nz, @+$0a

    ld [bc], a
    nop
    ld [$00f0], sp
    inc b
    nop
    ldh a, [$08]
    ld b, $00
    nop
    nop
    inc b
    nop
    nop
    ld [$0006], sp
    stop
    inc b
    nop
    db $10
    ld [$0006], sp
    jr nz, jr_013_7203

jr_013_7203:
    inc b
    nop
    jr nz, jr_013_720f

    ld b, $00
    ld [$00f0], sp
    ld [$f000], sp

jr_013_720f:
    ld [$2008], sp
    nop
    nop
    ld [$0000], sp
    ld [$2008], sp
    stop
    ld [$1000], sp
    ld [$2008], sp
    jr nz, jr_013_7224

jr_013_7224:
    ld [$2000], sp
    ld [$2008], sp
    inc b
    ld bc, $1405
    dec b
    ld [$00fd], sp
    inc bc
    ld [$0205], sp
    inc bc
    ld [$000c], sp
    inc hl
    inc b
    ld [bc], a
    dec b
    inc d
    dec b
    ld [$04fd], sp
    inc bc
    ld [$0605], sp
    inc bc
    ld [$040c], sp
    inc hl
    inc b
    ld [bc], a
    dec b
    inc d
    dec b
    ld a, [bc]
    db $fd
    nop
    inc bc
    ld a, [bc]
    dec b
    ld [bc], a
    inc bc
    ld a, [bc]
    inc c
    nop
    inc hl
    inc b
    ld [bc], a
    dec b
    inc d
    dec b
    ld [$08fd], sp
    inc bc
    ld [$0a05], sp
    inc bc
    ld [$080c], sp
    inc hl
    ld [bc], a
    dec b
    nop
    inc c
    inc bc
    dec b
    ld [$230c], sp
    ld [bc], a
    ld b, $00
    inc c
    inc bc
    ld b, $08
    inc c
    inc hl
    inc b
    rlca
    ei
    ld c, $03
    rlca
    inc bc
    db $10
    inc bc
    rlca
    dec c
    ld c, $23
    rlca
    dec b
    db $10
    inc hl
    ld [bc], a
    inc bc
    ld bc, $0312
    inc bc
    rlca
    ld [de], a
    inc hl
    ld [bc], a
    inc b
    nop
    ld [de], a
    inc bc
    inc b
    ld [$2312], sp
    inc b
    ld [bc], a
    dec b
    inc d
    dec b
    rlca
    db $fd
    ld [$0703], sp
    dec b
    ld a, [bc]
    inc bc
    rlca
    inc c
    ld [$0423], sp
    ld bc, $1405
    dec b
    ld [$00fd], sp
    inc bc
    ld [$0205], sp
    inc bc
    ld [$000c], sp
    inc hl
    inc b
    ld [bc], a
    dec b
    inc d
    dec b
    ld [$04fd], sp
    inc bc
    ld [$0605], sp
    inc bc
    ld [$040c], sp
    inc hl
    inc b
    inc bc
    dec b
    inc d
    dec b
    ld a, [bc]
    db $fd
    nop
    inc bc
    ld a, [bc]
    dec b
    ld [bc], a
    inc bc
    ld a, [bc]
    inc c
    nop
    inc hl
    inc bc
    nop
    ld b, $00
    nop
    db $10
    ld [$000a], sp
    stop
    ld a, [bc]
    jr nz, jr_013_72f9

    db $10
    ld [$000a], sp

jr_013_72f9:
    stop
    ld a, [bc]
    jr nz, jr_013_72fe

jr_013_72fe:
    ld b, $02
    nop
    nop
    ld c, $04
    nop
    inc b
    db $10
    ld [$000a], sp
    stop
    ld a, [bc]
    jr nz, jr_013_730f

jr_013_730f:
    ld b, $06
    nop
    nop
    ld c, $08
    nop
    inc bc
    nop
    inc b
    inc c
    nop
    stop
    ld c, $00
    db $10
    ld [$200e], sp
    inc b
    db $10
    ld hl, sp+$10
    nop
    dec b
    nop
    ld [de], a
    nop
    ld hl, sp+$08
    inc d
    nop
    ldh a, [rNR10]

jr_013_7332:
    ld d, $00
    inc b
    db $10
    db $10
    db $10
    jr nz, jr_013_733f

    ld [$2012], sp
    ld hl, sp+$00

jr_013_733f:
    inc d
    jr nz, jr_013_7332

    ld hl, sp+$16
    jr nz, @+$03

    ld [$0004], sp
    nop
    ld bc, $040b
    nop
    nop
    ld bc, $0408
    nop
    ld bc, $0801
    inc b
    nop
    rlca
    ld bc, $0408
    nop
    jr nz, @+$03

    ld [$0204], sp
    nop
    ld bc, $0408
    ld [bc], a
    ld b, b
    ld bc, $0408
    inc b
    nop
    ld bc, $0408
    inc b
    ld bc, $0801
    inc b
    inc b
    rlca
    ld bc, $0408
    inc b
    ld b, b
    ld bc, $0406
    inc b
    nop
    ld bc, $0408
    ld b, $00
    ld bc, $0408
    ld b, $40
    ld bc, $0408
    ld [$0100], sp
    ld [$0a04], sp
    nop
    ld bc, $0408
    inc c
    nop
    ld bc, $0408
    inc c
    jr nz, @+$04

    ld [$0000], sp
    nop
    ld [$0008], sp
    jr nz, @+$04

    ld [$0000], sp
    ld bc, $0808
    nop
    ld hl, $0802
    nop
    nop
    dec b
    ld [$0008], sp
    dec h
    ld [bc], a
    ld [$0000], sp
    rlca
    ld [$0008], sp
    daa
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    jr nz, @+$04

    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0200], sp
    ld bc, $0808
    ld [bc], a
    ld hl, $0802
    nop
    ld [bc], a
    rlca
    ld [$0208], sp
    daa
    ld [bc], a
    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, @+$04

    ld [$0400], sp
    ld bc, $0808
    inc b
    ld hl, $0802
    nop
    inc b
    rlca
    ld [$0408], sp
    daa
    ld [bc], a
    ld [$0400], sp
    ld b, b
    ld [$0408], sp
    ld h, b
    ld [bc], a
    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, @+$04

    ld [$0600], sp
    ld b, b
    ld [$0608], sp
    ld h, b
    ld [bc], a
    ld [$0800], sp
    nop
    ld [$0808], sp
    jr nz, @+$04

    ld [$0800], sp
    ld bc, $0808
    ld [$0221], sp
    ld [$0800], sp
    rlca
    ld [$0808], sp
    daa
    ld [bc], a
    ld [$0c00], sp
    nop
    ld [$0c08], sp
    jr nz, @+$04

    ld [$0c00], sp
    rlca
    ld [$0c08], sp
    daa
    ld [bc], a
    ld [$0e00], sp
    nop
    ld [$0e08], sp
    jr nz, @+$04

    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [bc], a
    ld [$0000], sp
    ld bc, $0808
    ld [bc], a
    ld bc, $0802
    nop
    nop
    rlca
    ld [$0208], sp
    rlca
    ld [bc], a
    ld [$0000], sp
    inc bc
    ld [$0208], sp
    inc bc
    ld [bc], a
    ld b, $11
    nop
    nop
    ld b, $19
    ld [bc], a
    nop
    ld [bc], a
    ld [$0200], sp
    jr nz, @+$0a

    ld [$2000], sp
    ld [bc], a
    ld [$0200], sp
    ld hl, $0808
    nop
    ld hl, $0802
    nop
    ld [bc], a
    daa
    ld [$0008], sp
    daa
    ld [bc], a
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$0004], sp
    nop
    ld [bc], a
    ld b, $ef
    ld [bc], a
    jr nz, @+$08

    rst $30
    nop
    jr nz, @+$04

    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [bc], a
    ld [$0400], sp
    ld b, b
    ld [$0608], sp
    ld b, b
    ld [bc], a
    ld b, $11
    inc b
    nop
    ld b, $19
    ld b, $00
    ld [bc], a
    ld [$0600], sp
    jr nz, jr_013_74e8

    ld [$2004], sp
    ld [bc], a
    ld b, $ef
    ld b, $20

jr_013_74e8:
    ld b, $f7
    inc b
    jr nz, @+$04

    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [bc], a
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld [bc], a
    ld [$1000], sp
    nop
    ld [$1208], sp
    nop
    ld [bc], a
    ld [$1004], sp
    nop
    db $fc
    inc b
    ld [de], a
    nop
    ld [bc], a
    ld hl, sp+$04
    ld b, $00
    ld [$0804], sp
    nop
    ld [bc], a
    ld hl, sp+$04
    ld a, [bc]
    nop
    ld [$0c04], sp
    nop
    ld [bc], a
    ld hl, sp+$04
    ld c, $00
    ld [$1004], sp
    nop
    ld [bc], a
    ld [$1200], sp
    nop
    ld [$1408], sp
    nop
    ld [bc], a
    ld [$0e00], sp
    nop
    ld [$0e08], sp
    ld h, b
    ld [bc], a
    ld [$1000], sp
    nop
    ld [$1008], sp
    ld h, b
    ld [bc], a
    ld [$0e08], sp
    jr nz, @+$0a

    nop
    ld c, $40
    ld [bc], a
    ld [$1008], sp
    jr nz, jr_013_755d

    nop
    db $10
    ld b, b
    inc bc
    ld [$04fc], sp
    nop

jr_013_755d:
    ld [$0604], sp
    nop
    ld [$040c], sp
    jr nz, jr_013_7569

    ld [$02fc], sp

jr_013_7569:
    nop
    ld [$0404], sp
    nop
    ld [$020c], sp
    jr nz, jr_013_7576

    add sp, $04
    inc b

jr_013_7576:
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$0004], sp
    nop
    inc bc
    ld [$0cfc], sp
    nop
    ld [$0e04], sp
    nop
    ld [$0c0c], sp
    jr nz, jr_013_7590

    ld hl, sp+$04
    nop

jr_013_7590:
    nop
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc bc
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$1000], sp
    nop
    ld [$1208], sp
    nop
    inc bc
    ld hl, sp+$04
    ld b, $00
    ld [$1800], sp
    nop
    ld [$1a08], sp
    nop
    inc bc
    ld hl, sp+$04
    ld [$0800], sp
    nop
    inc e
    nop
    ld [$1e08], sp
    nop
    inc bc
    ld hl, sp+$04
    inc b
    nop
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    inc bc
    ld bc, $00f8
    ld bc, $0001
    ld [bc], a
    ld bc, $0801
    inc b
    ld bc, $0103
    stop
    ld hl, $0801
    ld [bc], a
    ld hl, $0001
    inc b
    ld hl, $0e04
    db $fc
    inc c
    nop
    ld c, $04
    inc c
    jr nz, jr_013_75f3

    inc b
    inc c

jr_013_75f3:
    nop
    ld [bc], a
    inc c
    inc c
    jr nz, @+$06

    ld c, $fc
    inc c
    ld bc, $040e
    inc c
    ld hl, $0402
    inc c
    ld bc, $0c02
    inc c
    ld hl, $0004
    ld hl, sp+$04
    inc bc
    nop
    nop
    inc b
    inc hl
    db $10
    ld [$0304], sp
    db $10
    db $10
    inc b
    inc hl
    inc b
    ld [$04f8], sp
    nop
    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, jr_013_7630

    db $10
    inc b
    jr nz, jr_013_7630

    ld b, $01
    nop
    nop

jr_013_7630:
    dec b
    ld b, $00
    nop
    dec bc
    rst $38
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    inc b
    inc b
    rst $38
    nop
    ld bc, $0803
    nop
    ld bc, $fd0d
    nop
    ld bc, $070c
    nop
    ld bc, $0204
    db $fd
    nop
    rlca
    ld bc, $000a
    rlca
    dec c
    db $fc
    nop
    rlca
    inc c
    add hl, bc
    nop
    rlca
    inc b
    ld bc, $00fc
    nop
    nop
    inc c
    nop
    nop
    ld c, $fa
    nop
    nop
    dec c
    dec bc
    nop
    nop
    inc b
    inc bc
    ld a, [$0100]
    ld [bc], a
    ld c, $00
    ld bc, $f810
    nop
    ld bc, $0d0f
    nop
    ld bc, $d804
    inc b
    ld [bc], a
    nop
    add sp, $04
    inc b
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$0004], sp
    nop
    inc b
    add sp, $04
    nop
    ld b, b
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, jr_013_76a7

    ld hl, sp+$04
    nop
    ld b, b

jr_013_76a7:
    ld [$08fc], sp
    nop
    ld [$0a04], sp
    nop
    ld [$080c], sp
    jr nz, jr_013_76b8

    ld hl, sp+$00
    inc b
    nop

jr_013_76b8:
    ld hl, sp+$08
    ld b, $00
    ld [$1400], sp
    nop
    ld [$1608], sp
    nop
    inc b
    ld hl, sp+$00
    ld a, [bc]
    nop
    ld hl, sp+$08
    inc c
    nop
    ld [$0e00], sp
    nop
    ld [$1008], sp
    nop
    inc b
    inc b
    rst $38
    nop
    nop
    inc bc
    ld [$0000], sp
    dec c
    db $fd
    nop
    nop
    inc c
    rlca
    nop
    nop
    inc b
    ld [bc], a
    db $fd
    nop
    nop
    ld bc, $000a
    nop
    dec c
    db $fc
    nop
    nop
    inc c
    add hl, bc
    nop
    nop
    inc b
    inc bc
    ld a, [$0000]
    ld [bc], a
    ld c, $00
    nop
    db $10
    ld hl, sp+$00

jr_013_7703:
    nop
    rrca
    dec c
    nop
    nop
    inc b
    ldh a, [$f0]
    ld [bc], a
    nop
    ldh a, [rNR41]
    ld [bc], a
    nop
    jr nz, jr_013_7703

    ld [bc], a
    nop
    jr nz, jr_013_7737

    ld [bc], a
    nop
    inc b
    or $f6
    ld [bc], a
    nop
    or $1a
    ld [bc], a
    nop
    ld a, [de]
    or $02
    nop
    ld a, [de]
    ld a, [de]
    ld [bc], a
    nop
    inc b
    db $fc
    db $fc
    ld [bc], a
    nop
    db $fc
    inc d
    ld [bc], a
    nop
    inc d
    db $fc
    ld [bc], a
    nop

jr_013_7737:
    inc d
    inc d
    ld [bc], a
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld c, $02
    nop
    ld c, $02
    ld [bc], a
    nop
    ld c, $0e
    ld [bc], a
    nop
    inc b
    db $fc
    nop
    nop
    nop
    db $fc
    ld [$0002], sp
    inc c
    nop
    inc b
    nop
    inc c
    ld [$0006], sp
    inc b
    db $fc
    nop
    ld [$fc00], sp
    ld [$000a], sp
    inc c
    nop
    inc c
    nop
    inc c
    ld [$000e], sp
    inc b
    db $fc
    nop
    stop
    db $fc
    ld [$0012], sp
    inc c
    nop
    inc d
    nop
    inc c
    ld [$0016], sp
    inc b
    nop
    cp $0a
    nop
    db $10
    cp $0c
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    jr nz, @+$12

    ld a, [bc]
    inc c
    jr nz, jr_013_7795

    nop
    ld a, [$000a]

jr_013_7795:
    db $10
    ld a, [$000c]
    nop
    ld c, $0a
    jr nz, @+$12

    ld c, $0c
    jr nz, jr_013_77a6

    nop
    or $0a
    nop

jr_013_77a6:
    db $10
    or $0c
    nop
    nop
    ld [de], a
    ld a, [bc]
    jr nz, jr_013_77bf

    ld [de], a
    inc c
    jr nz, jr_013_77b8

    ret z

    inc b
    nop
    ld b, b
    ret c

jr_013_77b8:
    inc b
    ld [bc], a
    nop
    add sp, $04
    inc b
    nop

jr_013_77bf:
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$0004], sp
    nop
    dec b
    ret c

    inc b
    nop
    ld b, b
    add sp, $04
    ld [bc], a
    nop
    ld hl, sp+$04
    inc b
    nop
    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, @+$08

    ld [$0c00], sp
    nop
    ld [$0c08], sp
    jr nz, @+$12

    ld hl, sp+$0e
    nop
    stop
    ld c, $20
    nop
    ld [$000e], sp
    nop
    db $10
    ld c, $20
    ld b, $08
    nop
    inc b
    nop
    ld [$0408], sp
    jr nz, @+$12

    ld hl, sp+$06
    nop
    stop
    ld b, $20
    nop
    ld [$0006], sp
    nop
    db $10
    ld b, $20
    ld b, $07
    ld hl, sp+$14
    nop
    rlca
    nop
    ld d, $00
    rlca
    ld [$0018], sp
    rlca
    db $10
    ld a, [de]
    nop
    rst $30
    nop
    inc e
    nop
    rst $30
    ld [$001e], sp
    ld b, $fc
    db $fc
    ld [bc], a
    nop
    inc c
    db $fc
    inc b
    nop
    inc b
    inc b
    ld b, $00
    inc d
    inc b
    ld [$fc00], sp
    inc c
    ld [bc], a
    jr nz, jr_013_7849

    inc c
    inc b
    jr nz, jr_013_7847

    cp $fc
    inc b
    nop
    cp $04

jr_013_7847:
    ld b, $00

jr_013_7849:
    cp $0c
    ld [$0c00], sp
    db $fc
    inc b
    nop
    inc c
    inc b
    ld b, $00
    inc c
    inc c
    ld [$0600], sp
    db $fc
    db $fc
    inc b
    nop
    db $fc
    inc b
    ld b, $00
    db $fc
    inc c
    ld [$0e00], sp
    db $fc
    inc b
    nop
    ld c, $04
    ld b, $00
    ld c, $0c
    ld [$0600], sp
    ld a, [$04fc]
    nop
    ld a, [$0604]
    nop
    ld a, [$080c]
    nop
    db $10
    db $fc
    inc b
    nop
    db $10
    inc b
    ld b, $00
    db $10
    inc c
    ld [$0600], sp
    cp $fc
    ld [$fe20], sp
    inc b
    ld b, $20
    cp $0c
    inc b
    jr nz, jr_013_78a5

    db $fc
    ld [$0c20], sp
    inc b
    ld b, $20
    inc c
    inc c
    inc b
    jr nz, jr_013_78ab

jr_013_78a5:
    db $fc
    db $fc
    ld [$fc20], sp
    inc b

jr_013_78ab:
    ld b, $20
    db $fc
    inc c
    inc b
    jr nz, @+$10

    db $fc
    ld [$0e20], sp
    inc b
    ld b, $20
    ld c, $0c
    inc b
    jr nz, jr_013_78c4

    ld a, [$08fc]
    jr nz, @-$04

    inc b

jr_013_78c4:
    ld b, $20
    ld a, [$040c]
    jr nz, jr_013_78db

    db $fc
    ld [$1020], sp
    inc b
    ld b, $20
    db $10
    inc c
    inc b
    jr nz, jr_013_78dd

    nop
    db $fc
    ld b, $00

jr_013_78db:
    nop
    inc b

jr_013_78dd:
    ld [$0000], sp
    inc c
    ld b, $20
    db $10
    db $fc
    ld b, $40
    db $10
    inc b
    ld [$1040], sp
    inc c
    ld b, $60
    ld b, $00
    db $fc
    ld b, $01
    nop
    inc b
    ld [$0001], sp
    inc c
    ld b, $21
    db $10
    db $fc
    ld b, $41
    db $10
    inc b
    ld [$1041], sp
    inc c
    ld b, $61
    ld [$f810], sp
    inc c
    nop
    stop
    inc c
    jr nz, jr_013_7912

jr_013_7912:
    ld [$000c], sp
    nop
    db $10
    inc c
    jr nz, jr_013_791a

jr_013_791a:
    ld hl, sp+$0e
    nop
    nop
    nop
    ld c, $20
    db $10
    ld [$000e], sp
    db $10
    db $10
    ld c, $20
    ld [$f800], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$2002], sp
    nop
    stop
    jr nz, @+$12

    ld hl, sp+$00
    ld b, b
    stop
    ld [bc], a
    ld b, b
    db $10
    ld [$6002], sp
    db $10
    stop
    ld h, b
    ld [$f4fc], sp
    nop
    nop
    db $fc
    db $fc
    ld [bc], a
    nop
    db $fc

jr_013_7954:
    inc c
    ld [bc], a
    jr nz, jr_013_7954

    inc d
    nop
    jr nz, jr_013_7970

    db $f4
    nop
    ld b, b
    inc d
    db $fc
    ld [bc], a
    ld b, b
    inc d
    inc c
    ld [bc], a
    ld h, b
    inc d
    inc d
    nop
    ld h, b
    ld [$f4fc], sp
    inc b
    nop

jr_013_7970:
    db $fc

jr_013_7971:
    db $fc
    inc b
    jr nz, jr_013_7971

    inc c
    inc b
    nop
    db $fc
    inc d
    inc b
    jr nz, jr_013_7991

    db $f4
    inc b
    nop
    inc d
    db $fc
    inc b
    jr nz, jr_013_7999

    inc c
    inc b
    nop
    inc d
    inc d
    inc b
    jr nz, @+$0a

    db $10
    ld hl, sp+$04
    nop

jr_013_7991:
    stop
    inc b
    jr nz, jr_013_7996

jr_013_7996:
    ld [$0004], sp

jr_013_7999:
    nop
    db $10
    inc b
    jr nz, jr_013_799e

jr_013_799e:
    ld hl, sp+$06
    nop
    nop
    nop
    ld b, $20
    db $10
    ld [$0006], sp
    db $10
    db $10
    ld b, $20
    ld [$fa02], sp
    inc c
    nop
    ld [bc], a
    ld [bc], a
    inc c
    jr nz, jr_013_79b9

    ld b, $0c

jr_013_79b9:
    nop
    ld [bc], a
    ld c, $0c
    jr nz, jr_013_79c9

    ld a, [$000c]
    ld a, [bc]
    ld [bc], a
    inc c
    jr nz, @+$0c

    ld b, $0c

jr_013_79c9:
    nop
    ld a, [bc]
    ld c, $0c
    jr nz, jr_013_79d7

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop

jr_013_79d7:
    nop
    ld [$2002], sp
    nop
    stop
    jr nz, @+$12

    ld hl, sp+$00
    ld b, b
    stop
    ld [bc], a
    ld b, b
    db $10
    ld [$6002], sp
    db $10
    stop
    ld h, b
    ld [$f800], sp
    ld c, $00
    nop
    nop
    ld c, $20
    nop
    ld [$000e], sp
    nop
    db $10
    ld c, $20
    db $10
    ld hl, sp+$0e
    nop
    stop
    ld c, $20
    db $10
    ld [$000e], sp
    db $10
    db $10
    ld c, $20
    dec bc
    db $ec
    ld a, [$0106]
    db $ec
    ld [bc], a
    ld [$ec01], sp
    ld a, [bc]
    ld a, [bc]
    ld bc, $07fc
    inc c
    ld bc, $0ffc
    ld c, $01
    inc c
    rlca
    db $10
    ld bc, $0f0c
    ld [de], a
    ld bc, $071c
    inc d
    ld bc, $0f1c
    ld d, $01
    inc l
    rst $38
    jr jr_013_7a3a

    inc l

jr_013_7a3a:
    rlca
    ld a, [de]
    ld bc, $ec0b
    ld c, $06
    ld hl, $06ec
    ld [$ec21], sp
    cp $0a
    ld hl, $01fc
    inc c
    ld hl, $f9fc
    ld c, $21
    inc c
    ld bc, $2110
    inc c
    ld sp, hl
    ld [de], a
    ld hl, $011c
    inc d
    ld hl, $f91c
    ld d, $21
    inc l
    add hl, bc
    jr jr_013_7a87

    inc l
    ld bc, $211a
    ld [$e8f0], sp
    nop
    nop
    ldh a, [$f0]

jr_013_7a71:
    nop
    ld h, b
    ldh a, [rNR23]
    nop
    ld b, b
    ldh a, [rNR41]
    nop
    jr nz, @+$22

    add sp, $00
    ld b, b
    jr nz, jr_013_7a71

    nop
    jr nz, @+$22

    jr jr_013_7a86

jr_013_7a86:
    nop

jr_013_7a87:
    jr nz, jr_013_7aa9

    nop
    ld h, b
    ld [$eef6], sp
    ld [bc], a
    nop
    or $f6
    ld [bc], a
    ld h, b
    or $12
    ld [bc], a
    ld b, b
    or $1a
    ld [bc], a
    jr nz, jr_013_7ab7

    xor $02
    ld b, b
    ld a, [de]
    or $02
    jr nz, jr_013_7abf

    ld [de], a
    ld [bc], a
    nop
    ld a, [de]

jr_013_7aa9:
    ld a, [de]
    ld [bc], a
    ld h, b
    ld [$f4fc], sp
    nop
    nop
    db $fc
    db $fc
    nop
    ld h, b
    db $fc
    inc c

jr_013_7ab7:
    nop
    ld b, b
    db $fc
    inc d
    nop
    jr nz, jr_013_7ad2

    db $f4

jr_013_7abf:
    nop
    ld b, b
    inc d
    db $fc
    nop
    jr nz, jr_013_7ada

    inc c
    nop
    nop
    inc d
    inc d
    nop
    ld h, b
    ld [$fa02], sp
    ld [bc], a
    nop

jr_013_7ad2:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld b, $02
    ld b, b

jr_013_7ada:
    ld [bc], a
    ld c, $02
    jr nz, jr_013_7aed

    ld a, [$4002]
    ld c, $02
    ld [bc], a
    jr nz, jr_013_7af5

    ld b, $02
    nop
    ld c, $0e
    ld [bc], a

jr_013_7aed:
    ld h, b
    inc c
    nop
    ld hl, sp+$0c
    nop
    nop
    nop

jr_013_7af5:
    inc c
    jr nz, @+$12

jr_013_7af8:
    ld [$000c], sp
    db $10
    db $10
    inc c
    jr nz, jr_013_7af8

    nop
    ld c, $00
    ld hl, sp+$08
    ld c, $20
    ld [$0ef0], sp
    nop
    ld [$0ef8], sp
    jr nz, jr_013_7b18

    db $10
    ld c, $00
    ld [$0e18], sp
    jr nz, @+$1a

jr_013_7b18:
    nop
    ld c, $00
    jr jr_013_7b25

    ld c, $20
    inc c
    nop
    ld hl, sp+$04
    nop
    nop

jr_013_7b25:
    nop
    inc b
    jr nz, @+$12

jr_013_7b29:
    ld [$0004], sp
    db $10
    db $10
    inc b
    jr nz, jr_013_7b29

    nop
    ld b, $00
    ld hl, sp+$08
    ld b, $20
    ld [$06f0], sp
    nop
    ld [$06f8], sp
    jr nz, jr_013_7b49

    db $10
    ld b, $00
    ld [$0618], sp
    jr nz, @+$1a

jr_013_7b49:
    nop
    ld b, $00
    jr @+$0a

    ld b, $20
    db $10
    ld hl, sp+$00
    inc c
    nop
    ld hl, sp+$08
    inc c
    jr nz, jr_013_7b62

    ldh a, [$0c]
    nop
    ld [$0cf8], sp
    jr nz, jr_013_7b6a

jr_013_7b62:
    db $10
    inc c
    nop
    ld [$0c18], sp
    jr nz, jr_013_7b82

jr_013_7b6a:
    nop
    inc c
    nop
    jr jr_013_7b77

    inc c
    jr nz, @-$02

    db $f4
    ld c, $00
    db $fc
    db $fc

jr_013_7b77:
    ld c, $20
    db $fc
    inc c
    ld c, $00
    db $fc
    inc d
    ld c, $20
    inc d

jr_013_7b82:
    db $f4
    ld c, $00
    inc d
    db $fc
    ld c, $20
    inc d
    inc c
    ld c, $00
    inc d
    inc d
    ld c, $20
    db $10
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp+$08
    inc b
    jr nz, jr_013_7ba3

    ldh a, [rDIV]
    nop
    ld [$04f8], sp
    jr nz, jr_013_7bab

jr_013_7ba3:
    db $10
    inc b
    nop
    ld [$0418], sp
    jr nz, jr_013_7bc3

jr_013_7bab:
    nop
    inc b
    nop
    jr jr_013_7bb8

    inc b
    jr nz, @-$02

    db $f4
    ld b, $00
    db $fc
    db $fc

jr_013_7bb8:
    ld b, $20
    db $fc
    inc c
    ld b, $00
    db $fc
    inc d
    ld b, $20
    inc d

jr_013_7bc3:
    db $f4
    ld b, $00
    inc d
    db $fc
    ld b, $20
    inc d
    inc c
    ld b, $00
    inc d
    inc d
    ld b, $20
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

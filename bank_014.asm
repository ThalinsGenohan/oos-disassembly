; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX

    jr nz, @+$42

    ld h, c
    ld b, b
    adc $40
    ccf
    ld b, c
    ld [hl], d
    ld b, h
    cp b
    ld b, e
    add hl, de
    ld b, h
    sbc l
    ld b, l
    ld a, $46
    rst $08
    ld b, [hl]
    cp h
    ld b, c
    db $db
    ld b, h
    ld l, b
    ld b, l
    add hl, sp
    ld b, d
    sbc d
    ld b, d
    scf
    ld b, e
    db $10
    xor e
    ldh [rLCDC], a
    ld bc, $eaab
    ld b, d
    ld bc, $f4ab
    ld b, h
    ld bc, $feab
    ld b, [hl]
    ld bc, $1cab
    ld c, b
    ld bc, $08ab
    ld c, h
    ld bc, $12ab
    ld c, [hl]
    ld bc, $27ab
    ld d, [hl]
    ld bc, $e9d0
    ld a, [bc]
    nop
    ret nc

    pop af
    ld d, $00
    ret nc

    ld sp, hl
    nop
    nop
    ret nc

    ld bc, $000c
    ret nc

    add hl, bc
    inc h
    nop
    ret nc

    ld de, $000e
    ret nc

    rla
    stop
    ret nc

    dec e
    ld e, $00
    dec de
    xor b
    jp hl


    ld c, d
    ld bc, $f2a8
    ld c, h
    ld bc, $fca8
    ld c, [hl]
    ld bc, $04a8
    ld c, h
    ld bc, $16a8
    ld d, b
    ld bc, $20a8
    ld d, d
    ld bc, $29a8
    ld c, [hl]
    ld bc, $eeb8
    ld l, d
    ld bc, $f8b8
    ld l, h
    ld bc, $01b8
    ld l, [hl]
    ld bc, $09b8
    ld [hl], b
    ld bc, $13b8
    ld [hl], d
    ld bc, $1cb8
    ld [hl], h
    ld bc, $e0a8
    ld b, d
    ld bc, $0ea8
    ld b, d
    ld bc, $dcd0
    jr nc, jr_014_40a2

jr_014_40a2:
    ret nc

    db $e4
    jr z, jr_014_40a6

jr_014_40a6:
    ret nc

    db $ec
    inc h
    nop
    ret nc

    db $f4
    jr z, jr_014_40ae

jr_014_40ae:
    ret nc

    db $fc
    inc d
    nop
    ret nc

    inc b
    ld [$e000], sp
    inc b
    ld a, [de]
    nop
    ldh [$0c], a
    nop
    nop
    ldh [rNR14], a
    inc d
    nop
    ldh [rNR32], a
    nop
    nop
    ldh [rNR44], a
    ld a, [de]
    nop
    ldh [$2b], a
    inc e
    nop
    inc e
    xor b
    ldh [rHDMA2], a
    ld bc, $e8a8
    ld d, h
    ld bc, $faa8
    ld d, b
    ld bc, $04a8
    ld d, [hl]
    ld bc, $0da8
    ld c, [hl]
    ld bc, $1ea8
    ld c, h
    ld bc, $28a8
    ld e, b
    ld bc, $eeb8
    ld l, d
    ld bc, $f8b8
    ld l, h
    ld bc, $01b8
    ld l, [hl]
    ld bc, $09b8
    ld [hl], b
    ld bc, $13b8
    ld [hl], d
    ld bc, $1cb8
    ld [hl], h
    ld bc, $f1a8
    ld c, b
    ld bc, $15a8
    ld c, b
    ld bc, $f4d0
    nop
    nop
    ret nc

    db $fc
    jr z, jr_014_4113

jr_014_4113:
    ret nc

    inc b
    inc c
    nop
    ret nc

    inc c
    ld [$d000], sp
    inc de
    ld a, [de]
    nop
    add sp, -$17
    jr nc, jr_014_4123

jr_014_4123:
    add sp, -$0f
    inc [hl]
    nop
    add sp, -$07
    ld h, $00
    add sp, $00
    nop
    nop
    add sp, $07
    ld a, [de]
    nop
    add sp, $0f
    nop
    nop
    add sp, $17
    inc d
    nop
    add sp, $1f
    nop
    nop
    rra
    call nc, $0ef9
    nop
    call nc, $1c01
    nop
    call nc, $2609
    nop
    call nc, $2611
    nop
    call nc, $0018
    nop
    ld b, $f4
    ld h, $00
    ld b, $fc
    ld [$0600], sp
    inc b
    ld [hl-], a
    nop
    ld b, $0c
    jr z, jr_014_4164

jr_014_4164:
    ld b, $14
    inc d
    nop
    ld b, $1c
    nop
    nop
    call nc, Call_014_70f0
    ld [$ec06], sp
    ld [hl], b
    ld [$ecee], sp
    ld [hl], d
    ld [$f6ee], sp
    jr nc, jr_014_417c

jr_014_417c:
    xor $fe
    nop
    nop
    xor $06
    jr jr_014_4184

jr_014_4184:
    xor $0e
    nop
    nop
    xor $16
    ld b, $00
    xor $1e
    nop
    nop
    xor b
    inc bc
    ld e, d
    ld bc, $0ba8
    ld d, d
    ld bc, $14a8
    ld c, [hl]
    ld bc, $eeb0
    ld e, h
    ld bc, $f3a8
    ld b, b
    ld bc, $fbb0
    ld h, b
    ld bc, $18b8
    ld l, [hl]
    ld bc, $ffb8
    ld l, [hl]
    ld bc, $f7b8
    ld [hl], b
    ld bc, $07b8
    ld h, h
    ld bc, $0fb8
    ld l, b
    ld bc, $b01f
    add sp, $4c
    add hl, bc
    or b
    ldh a, [$4e]
    add hl, bc
    or b
    ld hl, sp+$50
    add hl, bc
    or b
    nop
    ld d, d
    add hl, bc
    or b
    ld [$0954], sp
    or b
    db $10
    ld d, [hl]
    add hl, bc
    or b
    jr @+$5a

    add hl, bc
    or b
    jr nz, @+$5c

    add hl, bc
    ret nc

    pop hl
    jr jr_014_41e1

jr_014_41e1:
    ret nc

    jp hl


    stop
    ret nc

    ldh a, [rNR30]
    nop
    ret nc

    ld sp, hl
    inc e
    nop
    ret nc

    ld bc, $0022
    ret nc

    add hl, bc
    jr z, jr_014_41f5

jr_014_41f5:
    ldh [$09], a
    nop
    nop
    ldh [rNR11], a
    ld [hl+], a
    nop
    ldh [rNR24], a
    nop
    nop
    ldh [rNR42], a
    inc d
    nop
    ldh [$29], a
    nop
    nop
    ldh [$31], a
    inc l
    nop
    db $f4
    db $ed
    jr jr_014_4211

jr_014_4211:
    db $f4
    push af
    stop
    db $f4
    db $fd
    inc d
    nop
    db $f4
    dec b
    ld [$0400], sp
    dec b
    ld a, [bc]
    nop
    inc b
    dec c
    jr z, jr_014_4225

jr_014_4225:
    inc b
    dec d
    inc d
    nop
    inc b
    dec e
    jr z, jr_014_422d

jr_014_422d:
    inc b
    dec h
    ld b, $00
    inc b
    dec l
    nop
    nop
    ldh [$39], a
    nop
    nop
    jr @-$52

    ldh [$5a], a
    ld bc, $eaac
    ld c, [hl]
    ld bc, $f5ac
    ld d, [hl]
    ld bc, $ffac
    ld d, h
    ld bc, $1eac
    ld d, d
    ld bc, $29ac
    ld c, [hl]
    ld bc, $0ab4
    ld h, b
    ld bc, $14ac
    ld b, d
    ld bc, $d0d0
    ld a, [de]
    nop
    ret nc

    ret c

    inc e
    nop
    ret nc

    ldh [rNR43], a
    nop
    ret nc

    and $10
    nop
    ret nc

    db $ec
    ld h, $00
    ret nc

    di
    nop
    nop
    ret nc

    ei
    inc d
    nop
    ldh [$03], a
    ld a, [bc]
    nop
    ldh [$0b], a
    jr z, jr_014_427e

jr_014_427e:
    ldh [rNR12], a
    ld a, [de]
    nop
    ldh [rNR31], a
    nop
    nop
    ldh [rNR44], a
    jr jr_014_428a

jr_014_428a:
    ldh [$29], a
    stop
    ldh [$2f], a
    ld [hl-], a
    nop
    ldh [$37], a
    jr z, jr_014_4296

jr_014_4296:
    ret nc

    inc bc
    nop
    nop
    daa
    ret nc

    call nc, $0024
    ret nc

    call c, $000e
    ret nc

    ld [c], a
    stop
    ret nc

    add sp, $0c
    nop
    ret nc

    ldh a, [$08]
    nop
    ret nc

    ld hl, sp+$22
    nop
    ret nc

    nop
    jr z, jr_014_42b7

jr_014_42b7:
    ldh [rP1], a
    jr jr_014_42bb

jr_014_42bb:
    ldh [$0c], a
    jr nc, jr_014_42bf

jr_014_42bf:
    ldh [rTMA], a
    stop
    ldh [rNR13], a
    nop
    nop
    ldh [rNR31], a
    jr jr_014_42cb

jr_014_42cb:
    ldh [rNR44], a
    inc e
    nop
    ldh [$2b], a
    ld h, $00
    ldh [$33], a
    inc e
    nop
    ld hl, sp-$29
    jr nc, jr_014_42db

jr_014_42db:
    ld hl, sp-$21
    inc e
    nop
    ld hl, sp-$19

jr_014_42e1:
    inc h
    nop
    ld hl, sp-$11
    ld c, $00
    ld hl, sp-$0b
    stop
    ld hl, sp-$05
    inc d
    nop
    ld hl, sp+$01
    stop
    ld [$1c01], sp
    nop
    ld [$1409], sp
    nop
    ld [$0011], sp
    nop
    ld [$1819], sp
    nop
    ld [$1c21], sp
    nop
    ld [$2629], sp
    nop
    ld [$1c31], sp
    nop
    or b
    ldh [rNR12], a
    add hl, bc
    or b
    add sp, $14
    add hl, bc
    or b
    ldh a, [rNR21]
    add hl, bc
    or b
    ld hl, sp+$18
    add hl, bc
    or b
    nop
    ld a, [de]
    add hl, bc
    or b
    ld [$091c], sp
    or b
    db $10
    ld e, $09
    or b
    jr jr_014_434e

    add hl, bc
    or b
    jr nz, @+$24

    add hl, bc
    or b
    jr z, jr_014_435a

    add hl, bc
    jr nz, jr_014_42e1

    rst JumpTable
    ld d, d
    ld bc, $e8b0
    ld a, [hl]
    ld bc, $f1a8
    ld d, d
    ld bc, $0ca8
    ld d, b
    ld bc, $1fa8
    ld e, h
    ld bc, $29a8

jr_014_434e:
    ld d, d
    ld bc, $feb8
    ld l, d
    ld bc, $1bb8
    ld l, h
    ld bc, $faa8

jr_014_435a:
    ld b, d
    ld bc, $04b0
    ld h, b
    ld bc, $16a8
    ld c, b
    ld bc, $08b8
    ld h, b
    ld bc, $d5d0
    ld c, $00
    ret nc

    db $db
    stop
    ret nc

    pop hl
    ld [hl+], a
    nop
    ret nc

    jp hl


    inc e
    nop
    ret nc

    pop af
    inc h
    nop
    ret nc

    ld sp, hl
    ld c, $00
    ret nc

    rst $38
    stop
    ldh [rIE], a
    jr nc, jr_014_4388

jr_014_4388:
    ldh [rTMA], a
    nop
    nop
    ldh [$0e], a
    jr jr_014_4390

jr_014_4390:
    ldh [rNR21], a
    nop
    nop
    ldh [rNR34], a
    jr z, jr_014_4398

jr_014_4398:
    ldh [rNR52], a
    inc b
    nop
    ldh [$2e], a
    ld c, $00
    ldh [$34], a
    stop
    cp b
    db $e3
    ld h, d
    ld bc, $ecb8
    ld l, b
    ld bc, $f6b8
    ld h, h
    ld bc, $11b8
    ld h, [hl]
    ld bc, $24b8
    ld l, b
    ld bc, $d818
    db $ec
    inc d
    nop
    ret c

    db $f4
    inc [hl]
    nop
    ret c

    db $fc
    inc d
    nop
    ret c

    inc b
    inc e
    nop
    ret c

    inc c
    ld a, [de]
    nop
    ret c

    inc d
    ld b, $00
    ret c

    inc e
    inc e
    nop
    xor b
    ldh [$38], a
    add hl, bc
    xor b
    add sp, $3a
    add hl, bc
    xor b
    ldh a, [$3c]
    add hl, bc
    xor b
    ld hl, sp+$3e
    add hl, bc
    or b
    nop
    ld b, b
    add hl, bc
    or b
    ld [$0942], sp
    xor b
    db $10
    ld b, h
    add hl, bc
    xor b
    jr @+$48

    add hl, bc
    xor b
    jr nz, jr_014_4440

    add hl, bc
    xor b
    jr z, @+$4c

    add hl, bc
    ret nz

    db $ec
    ld a, d
    ld bc, $f4c0
    ld l, d
    ld bc, $fcb8
    ld e, h
    ld bc, $04c0
    ld [hl], b
    ld bc, $0cc0
    ld l, [hl]
    ld bc, $14c0
    ld l, h
    ld bc, $1cc0
    ld l, b
    ld bc, $a816
    db $ec
    ld e, d
    ld bc, $f4a8
    ld e, b
    ld bc, $fca8
    ld c, h
    ld bc, $04a8
    ld b, [hl]
    ld bc, $0ca8
    ld b, [hl]
    ld bc, $14a8
    ld b, h
    ld bc, $1ca8
    ld c, [hl]
    ld bc, $ecb8
    ld l, [hl]
    ld bc, $f4b8
    ld h, b
    ld bc, $fcb8

jr_014_4440:
    ld h, d
    ld bc, $04b8
    ld h, d
    ld bc, $0cb8
    ld h, h
    ld bc, $14b8
    ld l, b
    ld bc, $1cb8
    db $76
    ld bc, $e8d0
    ld a, [de]
    nop
    ret nc

    ldh a, [rNR32]
    nop
    ret nc

    ld hl, sp+$24
    nop
    ret nc

    nop
    ld [$d000], sp
    ld [$0026], sp
    ret nc

    stop
    nop
    ret nc

    jr jr_014_4481

    nop
    ret nc

    jr nz, @+$0a

    nop
    ld a, [de]
    ret nc

    add sp, $18
    nop
    ret nc

    ldh a, [$34]
    nop
    ret nc

    ld hl, sp+$1a
    nop
    ret nc

    nop

jr_014_4481:
    nop
    nop
    ret nc

    ld [$0022], sp
    ret nc

    db $10
    stop
    ret nc

    jr jr_014_44b4

    nop
    ret nc

    jr nz, jr_014_4492

jr_014_4492:
    nop
    add sp, -$18
    inc d
    nop
    add sp, -$10
    inc [hl]
    nop
    add sp, -$08
    jr jr_014_449f

jr_014_449f:
    add sp, $00
    stop
    add sp, $08
    ld [hl-], a
    nop
    add sp, $10
    jr z, jr_014_44ab

jr_014_44ab:
    add sp, $18
    inc d
    nop
    add sp, $20
    stop
    nop

jr_014_44b4:
    db $ec
    jr nc, jr_014_44b7

jr_014_44b7:
    nop
    di
    nop
    nop
    nop
    ei
    jr jr_014_44bf

jr_014_44bf:
    nop
    inc bc
    nop
    nop
    nop
    dec bc
    inc h
    nop
    nop
    inc de
    ld c, $00
    nop
    add hl, de
    stop
    nop
    rra
    ld h, $00
    nop
    dec h
    nop
    nop
    nop
    db $e4
    ld [hl], d
    ld [$cc23], sp
    add sp, $1c
    nop
    call z, $22f0
    nop
    call z, $10f8
    nop
    call z, $0c00
    nop
    call z, $1008
    nop
    call z, $1a10
    nop
    call z, $0018
    nop
    call z, $1620
    nop
    db $f4
    db $f4
    inc h
    nop
    db $f4
    inc b
    ld e, $00
    db $f4
    db $fc
    jr z, jr_014_4508

jr_014_4508:
    db $f4
    inc c
    ld [$f400], sp
    inc d
    ld [hl+], a
    nop
    inc b
    ld [c], a
    jr jr_014_4514

jr_014_4514:
    inc b
    ld a, [c]
    ld [hl+], a
    nop
    inc b
    ld [$0000], a
    inc b
    ld a, [$0010]
    inc b
    ld [bc], a
    inc e
    nop
    inc b
    ld c, $04
    nop
    inc b
    ld d, $16
    nop
    inc b
    ld e, $28
    nop
    inc b
    ld h, $02
    nop
    call c, Call_014_5cde
    ld [$e6dc], sp
    ld e, [hl]
    ld [$eedc], sp
    ld h, b
    ld [$f6dc], sp
    ld h, d
    ld [$fedc], sp
    ld h, h
    ld [$06dc], sp
    ld h, [hl]
    ld [$0edc], sp
    ld l, b

jr_014_454f:
    ld [$16dc], sp
    ld l, d
    ld [$1edc], sp
    ld l, h
    ld [$26dc], sp
    ld l, [hl]
    ld [$fcb4], sp
    nop
    nop
    or h
    inc b
    ld [bc], a
    nop
    or h
    inc c
    jr z, jr_014_4568

jr_014_4568:
    dec c
    cp b
    db $fc
    ld a, [de]
    nop
    cp b
    inc b
    inc e
    nop
    cp b
    inc c
    nop
    nop
    ret z

    db $dd
    ld b, $00
    ret z

    push hl
    ld [$c800], sp
    db $ed
    ld [bc], a
    nop
    ret z

    push af
    jr z, jr_014_4585

jr_014_4585:
    ret z

    db $fd
    inc c
    nop
    ret z

    inc c

jr_014_458b:
    inc h
    nop
    ret z

    inc d
    ld h, $00

jr_014_4591:
    ret z

    inc e
    nop
    nop
    ret z

    inc h

jr_014_4597:
    ld a, [bc]
    nop
    ret z

    inc l
    ld a, [bc]
    nop
    jr z, jr_014_454f

    ldh [$c0], a
    add hl, bc
    or b
    add sp, -$3e
    add hl, bc
    or b
    ldh a, [$c4]
    add hl, bc
    or b
    ld hl, sp-$3a
    add hl, bc
    or b
    nop
    ret z

    add hl, bc
    or b
    ld [$09ca], sp
    or b
    db $10
    call z, $b009
    jr jr_014_458b

    add hl, bc
    or b
    jr nz, jr_014_4591

    add hl, bc
    or b
    jr z, jr_014_4597

    add hl, bc
    adc $e0
    call nc, $ce09
    add sp, -$2a
    add hl, bc
    adc $f0
    ret c

    add hl, bc
    adc $f8
    jp c, $ce09

    nop
    call c, $ce09
    ld [$09de], sp
    adc $10
    ldh [$09], a
    adc $18
    ld [c], a
    add hl, bc
    adc $20
    db $e4
    add hl, bc
    sbc $e0
    and $09
    sbc $e8
    add sp, $09
    sbc $f0
    ld [$de09], a
    ld hl, sp-$14
    add hl, bc
    sbc $00
    xor $09
    sbc $08
    ldh a, [$09]
    sbc $10
    ld a, [c]
    add hl, bc
    sbc $18
    db $f4
    add hl, bc
    sbc $20
    or $09
    sbc $28
    ld hl, sp+$09
    adc $28
    ld hl, sp+$09
    ld hl, sp-$1b
    ld [bc], a
    nop
    ld hl, sp-$13
    stop
    ld hl, sp-$0b
    ld d, $00
    ld hl, sp-$03
    ld d, $00
    ld [$26fd], sp
    nop
    ld [$2205], sp
    nop
    ld [$100d], sp
    nop
    ld [$1a15], sp
    nop
    ld [$081d], sp
    nop
    ld [$1a24], sp
    nop
    inc h
    xor b
    ld hl, sp+$50
    ld bc, $00a8
    ld d, d
    ld bc, $08b0
    ld a, [hl]
    ld bc, $10a8
    ld d, b
    ld bc, $ecb8
    ld l, h
    ld bc, $f4b8
    ld l, d
    ld bc, $fcb8
    ld [hl], b
    ld bc, $04b8
    db $76
    ld bc, $0cb8
    ld h, h
    ld bc, $1cb8
    ld l, [hl]
    ld bc, $14b8
    ld l, b
    ld bc, $d8d0
    ld h, $00
    ret nc

    ldh [$08], a
    nop
    ret nc

    add sp, $22
    nop
    ret nc

    ldh a, [$08]
    nop
    ret nc

    ld hl, sp+$24
    nop
    ret nc

    nop
    nop
    nop
    ldh [$fa], a
    ld d, $00
    ldh [rSB], a
    stop
    ldh [$08], a
    ld d, $00
    ldh [rNR10], a
    ld d, $00
    ldh [rNR23], a
    jr nc, jr_014_4697

jr_014_4697:
    ldh [rNR41], a
    inc c
    nop
    ldh [$28], a
    ld [hl+], a
    nop
    ldh [$30], a
    ld [$e000], sp
    scf
    ld a, [de]
    nop
    ld hl, sp-$1d
    inc h
    nop
    ld hl, sp-$0d
    nop
    nop
    ld hl, sp-$15
    ld c, $00
    ld hl, sp-$05
    ld [hl+], a
    nop
    ld hl, sp+$03
    stop
    ld [$0203], sp
    nop
    ld [$220b], sp
    nop
    ld [$1c13], sp
    nop
    ld [$2c1b], sp
    nop
    ld [$1a23], sp
    nop
    jr z, @-$56

    ldh [$e6], a
    add hl, bc
    xor b
    add sp, -$18
    add hl, bc
    xor b
    ldh a, [$ea]

jr_014_46db:
    add hl, bc
    xor b
    ld hl, sp-$14
    add hl, bc
    xor b

jr_014_46e1:
    db $10
    ld a, [c]
    add hl, bc
    xor b
    jr jr_014_46db

jr_014_46e7:
    add hl, bc
    xor b
    jr nz, jr_014_46e1

    add hl, bc
    xor b
    jr z, jr_014_46e7

    add hl, bc
    xor b
    nop
    ld a, [$a809]
    ld [$09fc], sp
    cp b
    add sp, $7a
    ld bc, $f0b8
    ld [hl], h
    ld bc, $f8b8
    ld a, d
    ld bc, $00b8
    ld [hl], d
    ld bc, $08b8
    ld l, h
    ld bc, $20b8
    ld [hl], h
    ld bc, $28b8
    db $76
    ld bc, $dcd4
    ld d, $00
    call nc, $08e4
    nop
    call nc, $24ec
    nop
    call nc, $16f4
    nop
    call nc, $10fc
    nop
    call nc, $0804
    nop
    call nc, $2414
    nop
    call nc, $2c1c
    nop
    call nc, $0024
    nop
    call nc, $1a2c
    nop
    ldh a, [$dc]
    ld [de], a
    nop
    ldh a, [$e4]
    ld [$f000], sp
    db $ec
    ld a, [bc]
    nop
    ldh a, [$f4]
    ld a, [bc]
    nop
    ldh a, [rDIV]
    jr jr_014_4750

jr_014_4750:
    ldh a, [$0c]
    stop
    ldh a, [rNR14]
    ld d, $00
    ldh a, [rNR32]
    ld d, $00
    ldh a, [rNR50]

jr_014_475e:
    ld [$f000], sp
    inc l
    ld [hl+], a
    nop
    cp b
    ldh [$fe], a
    add hl, bc
    cp b
    db $10
    cp $09
    cp b
    jr jr_014_47db

    ld bc, $e3f5
    sub [hl]
    sbc b
    ld a, [bc]
    nop
    db $e3
    rst $08
    rst $10
    jr nc, jr_014_475e

    ld [hl], d
    rst $20
    ld b, [hl]
    ld [$30d7], sp
    db $e3
    ld [hl], d
    rst $20
    ld c, b
    ld [$d0e0], sp
    ld sp, $30d7
    db $e3
    ld [hl], d
    rst $20
    ld l, b
    ld [$d4e0], sp
    ld sp, $30d7
    db $e3
    ld [hl], d
    rst $20
    ld h, [hl]
    ld [$30d7], sp
    db $e3
    adc l
    ldh [$6d], a
    ld d, l
    nop
    push af
    db $e3
    sub [hl]
    sbc b
    ld a, [bc]
    nop
    db $e3
    rst $08
    rst $10
    jr nc, @-$1b

    ld [hl], d
    rst $20
    dec [hl]
    ld [$30d7], sp
    db $e3
    ld [hl], d
    rst $20
    add hl, sp
    ld [$d0e0], sp
    ld sp, $30d7
    db $e3
    ld [hl], d
    rst $20
    ld a, c
    ld [$d4e0], sp
    ld sp, $30d7
    db $e3
    ld [hl], d
    rst $20
    ld [hl], l
    ld [$30d7], sp
    db $e3
    adc l
    ldh [$6d], a
    ld d, l
    nop
    adc $d5
    xor c
    call z, $e302
    sub [hl]

jr_014_47db:
    ld hl, sp-$7b
    ld a, [hl]
    nop
    ld c, b
    ret z

    or $98
    ld a, [bc]
    ld bc, $d2f6
    or c
    ld b, b
    cp c
    nop
    adc $d5
    xor c
    call z, $e304
    sub [hl]
    ld hl, sp-$7b
    halt
    ld e, b
    ld a, b
    or $98
    ld a, [bc]
    inc bc
    or $d2

jr_014_47fe:
    or c
    ld b, b
    nop
    add h
    ld e, $13
    jr nc, jr_014_4806

jr_014_4806:
    add h
    dec b
    nop
    jr jr_014_4853

    db $f4
    rst $20
    inc d
    and b
    add h
    dec b
    nop
    jr c, jr_014_485c

    db $f4
    rst $20
    inc [hl]
    and b
    add h
    dec b
    nop
    jr z, @+$4a

    db $f4
    rst $20
    inc h
    and b
    add h
    dec b
    nop
    ld c, b
    ld c, b
    db $f4
    rst $20
    ld b, h
    and b
    add h
    ld h, l
    nop
    nop
    nop
    nop
    adc $8d
    ld [$d020], sp
    cp l
    db $e4
    dec c
    sbc b
    nop
    or $98
    ld bc, $98f6
    ld [bc], a
    or $98
    inc bc
    db $e4
    rst $38
    or c
    ld b, b
    cp [hl]
    nop
    adc $d5
    inc b
    ret nc

    ld bc, $d5f3
    ld sp, $01cc

jr_014_4853:
    adc b
    ld a, b
    ld a, b
    rst $10
    inc c
    ld [c], a
    ld a, [c]
    add sp, $6a

jr_014_485c:
    db $e3
    ld c, l
    or c
    ld b, b
    nop
    adc $8e
    ld e, h
    ld bc, $ebc0
    ld d, [hl]
    and b
    ldh [$cb], a
    ld e, b
    adc h

jr_014_486d:
    ld l, b
    and d
    ldh [$fa], a
    dec e
    adc e
    jr z, jr_014_47fe

    ld [$dce0], sp
    ld e, b
    and e
    adc a
    ld bc, $0380
    ret nc

    add b
    ld [bc], a
    ldh [$eb], a
    ld e, b
    or $ac
    adc a

jr_014_4887:
    inc bc
    adc e
    ld d, b
    adc c
    jr jr_014_486d

    ld l, b
    ld e, c
    pop af
    ldh [$b9], a
    ld e, b
    sbc b
    nop
    ld [hl], $be
    db $e4
    rst $38
    nop
    or l
    rrca
    ret c

    ld b, l
    adc [hl]
    ld e, h
    ld [bc], a
    ret nz

    db $eb
    ld d, [hl]
    adc a
    ld [bc], a
    cp d
    ld hl, sp-$6b
    nop
    db $fd
    sbc b
    jr z, jr_014_48af

jr_014_48ae:
    xor b

jr_014_48af:
    and c
    adc a
    inc bc
    adc h

jr_014_48b3:
    ld b, b
    nop
    pop hl
    pop de
    ld h, e
    ld [bc], a

jr_014_48b9:
    or $98
    jr nz, jr_014_48b3

    sbc b
    ld hl, $98f6
    jr z, jr_014_48b9

    sbc b
    ld [hl+], a
    or $98
    add hl, hl
    or $98
    inc hl
    ldh [rNR34], a
    ld e, $8b
    inc d
    xor $09
    or $98
    ld a, [hl+]
    xor d
    or $98
    inc h
    or $5d
    ld [hl], $9e
    cp b
    sbc b
    inc c
    or $8e
    ld a, h
    ld bc, $508b
    db $ec
    dec d
    pop af
    adc a
    nop
    adc c
    ld [$098c], sp
    pop af
    ret nz

    ld e, c
    ld e, [hl]
    ret nz

    ld e, c
    ld e, [hl]
    adc a
    nop
    adc c
    jr jr_014_4887

    add hl, bc
    pop af
    ret nz

    ld e, c
    ld e, [hl]
    adc a
    nop
    adc c
    jr @-$72

    add hl, bc
    pop af
    ret nz

    ld e, c
    ld e, [hl]
    ret nz

    ld e, c
    ld e, [hl]
    adc a
    nop
    adc c
    ld [$198c], sp
    pop af
    ret nz

    ld e, c
    ld e, [hl]
    ret nz

    ld e, c
    ld e, [hl]
    ret nz

    ld e, c

jr_014_491c:
    ld e, [hl]
    adc a
    nop
    adc c
    jr jr_014_48ae

    ld de, $eef1
    dec d
    adc [hl]
    ld a, h
    nop
    or $98
    dec c
    or $b9
    ld e, [hl]
    ld d, b
    cp l
    ldh [$67], a
    ld e, d
    sub c
    xor d
    call z, $f801
    ldh [rNR42], a

jr_014_493b:
    ld e, d
    and b
    ret nz

    ld a, [bc]

jr_014_493f:
    ld e, a
    or $98
    dec h
    or $a9
    adc [hl]
    ld a, h
    ld bc, $1ee0
    ld e, $8b
    jr z, jr_014_493b

    ld b, c
    pop af
    adc e
    jr z, jr_014_493f

    rra
    ret nz

    ld bc, $e05f
    ld h, c
    ld e, d
    and d
    ldh [rLYC], a
    ld e, d
    cp c
    db $d3
    rlca
    jp $b8cb


    push af
    ldh [$5b], a
    ld e, d
    sub c
    jp $00cb


    ld hl, sp-$46
    sub c
    inc b
    call z, $000c
    ldh [$39], a
    ld e, $d5
    ret nz

    rst $08
    ld bc, $42e0
    ld e, $d5
    ret nz

    rst $08
    ld b, $8f
    inc bc
    ld a, [c]
    sub c
    ret nz

    rst $08
    rlca
    sbc b
    dec a
    inc c
    di
    adc a
    rlca

jr_014_498e:
    adc c
    jr jr_014_491c

    dec b
    adc h
    ld e, $91
    ret nz

    rst $08
    ld [$f800], sp
    adc b
    jr jr_014_49b5

    adc e

jr_014_499e:
    jr z, jr_014_498e

    ld de, $edf1
    add hl, sp
    pop af
    xor $11
    pop af
    sbc b
    ld d, b
    dec c
    or $84
    cp d
    ld bc, $1818
    and b
    adc h
    ld d, c
    xor c

jr_014_49b5:
    nop
    adc a
    ld [bc], a
    and [hl]
    adc a
    inc bc
    db $f4
    adc a
    ld bc, $8ff4
    ld [bc], a
    and l
    ldh [$c8], a
    ld e, d
    db $e3
    ld d, b
    nop
    adc a
    inc bc
    ei
    adc e

jr_014_49cc:
    inc d

jr_014_49cd:
    adc c
    jr @-$72

    ret nz

    ld a, [$008f]
    rst $10
    sub [hl]
    sub c
    rst JumpTable
    rst $08
    ld bc, $bd00
    add h
    ld e, l
    rlca
    ld l, b
    ld e, b
    adc [hl]
    ld a, c
    nop
    db $e3
    ld l, c
    adc a
    inc b
    rst $30
    sub c
    sbc $cf
    add b
    adc a
    ld [bc], a
    sbc b
    dec sp
    sub c
    rst JumpTable
    rst $08
    ld bc, $41de
    ld [$40b1], sp
    ldh [$d1], a
    ld e, d

jr_014_49fd:
    or $8e
    ld a, d
    ld bc, $508b
    adc c
    ld [$118c], sp
    adc a
    ld bc, $1089
    adc h
    add hl, hl
    cp [hl]
    nop
    adc b
    ld [hl], b
    jr jr_014_499e

    ld d, b
    db $e4
    ld hl, $89fa
    ld [$118c], sp
    sub d
    pop de
    rst $08
    db $10
    push af
    adc h
    dec c
    rst $30
    adc c
    nop
    adc h
    ld [$d192], sp
    rst $08
    ld [bc], a
    rst $30
    adc c
    ld [$138c], sp
    sub d
    pop de
    rst $08
    ld [$89f7], sp
    nop
    adc h
    ld a, [bc]
    sub d
    pop de
    rst $08
    inc b
    rst $30
    adc c
    jr jr_014_49cd

    jr nc, jr_014_49cc

    nop
    adc h
    dec c
    sub d
    pop de
    rst $08
    ld bc, $8900
    ld [$148c], sp
    sub d
    pop de
    rst $08
    ld b, b
    push de
    ret nc

    rst $08
    rlca
    adc h
    ld d, $92
    pop de
    rst $08
    add b
    push de
    ret nc

    rst $08
    ld a, [bc]
    ld sp, hl
    adc c
    nop
    adc h
    jr z, @-$6d

    ret nc

    rst $08
    dec bc
    or c
    add b
    nop
    adc b
    ldh [$80], a
    or $8b
    jr z, jr_014_49fd

    nop
    adc a
    ld [bc], a
    adc h
    ld e, b
    adc a
    ld bc, $98f8
    ld e, $00
    di
    sbc b
    ld e, $02
    di
    sbc b
    ld e, $03
    di
    sbc b
    ld e, $04
    di
    sub c
    ret nc

    rst $08
    dec bc
    nop
    adc b
    nop
    ld h, b
    adc e
    inc d
    adc c
    db $10
    adc h
    add b
    adc a
    db $10
    ld hl, sp-$68
    rla
    ld a, [de]
    ld hl, sp-$57
    nop
    or [hl]
    ld e, b
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    ld d, l
    pop hl
    push af
    ld e, d
    dec bc
    ldh [rLY], a
    ld sp, $f8d1
    ldh [$71], a
    ld sp, $e1d1
    push af
    ld e, d
    dec c
    sbc b
    ld d, a
    pop hl
    push af
    ld e, d
    dec bc
    ldh [$0c], a
    ld e, e
    or $e0
    adc l
    ld h, h
    di
    db $e3
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $f5d1
    pop hl
    ld e, h
    ld sp, $d104
    sbc $0c
    nop
    ld hl, sp-$4a
    ld h, d
    ld h, d
    ld b, h
    cp e
    cp d
    add b
    rst $38
    sbc b
    ld a, [hl+]
    ld [bc], a
    db $e4
    ldh a, [$8b]
    jr z, @-$11

    ld de, $21ec
    rst $30
    ldh [$59], a
    ld e, e
    rst $30
    ldh [$5d], a
    ld e, e
    ld hl, sp-$6a
    db $10
    ldh [$8f], a
    ld e, e
    ldh [$2d], a

jr_014_4b09:
    ld e, e
    xor $11
    or $91
    ld [$00d0], sp
    ld hl, sp-$68
    ld a, [hl+]
    inc bc
    db $e4
    ld sp, $7dd7
    add b
    inc bc
    ret nz

    or c
    ld h, d
    ret nz

    or c
    ld h, d
    rst $10
    add $c0
    or c
    ld h, d
    ret nz

    or c
    ld h, d

jr_014_4b29:
    ldh [$64], a
    ld e, e
    db $e3
    ld a, c
    or $e0
    or b
    ld e, e
    ldh [$73], a
    ld e, e

jr_014_4b35:
    db $e4
    ldh a, [$f8]
    db $e3
    ld c, l
    xor e
    xor a
    ld hl, sp-$68
    ld a, [hl+]
    inc b
    add b

jr_014_4b41:
    ld bc, $1096
    db $e4
    rst $38
    or c
    ld b, b
    cp [hl]
    sub a
    ld a, [hl+]
    dec b
    sbc b

jr_014_4b4d:
    daa
    ld [$1be0], sp
    ld e, e
    adc a
    nop
    ld hl, sp-$7c
    ld l, a

jr_014_4b57:
    ld bc, $3838
    db $e3
    ld l, h
    db $f4
    add b
    rst $38
    adc e
    ld d, b
    xor $11
    db $ed
    add hl, de
    db $f4
    sub [hl]
    jr jr_014_4b09

    ldh [rNR51], a
    ld e, e
    sub c
    ld [$00d0], sp

jr_014_4b70:
    rst $28
    add hl, de
    db $ec
    add hl, de
    push af
    sub [hl]
    ld [$96f5], sp
    jr jr_014_4b70

    xor c
    ldh a, [$96]
    db $10
    sbc b
    daa
    add hl, bc
    xor d
    adc h
    ld sp, $0891
    ret nc

    ld [bc], a
    cp [hl]
    ldh [$d5], a
    ld e, e
    nop
    or $98
    ld hl, $7f8e
    ld bc, $508b
    rst $28
    ld de, $6ee3
    adc e
    jr z, jr_014_4b29

    ld de, $508b
    adc h
    add hl, bc
    db $ec
    dec d
    db $e3
    ret nc

    adc c
    jr jr_014_4b35

    dec b
    db $e3
    ret nc

    adc c
    ld [$098c], sp
    db $e3
    ret nc

    adc c
    jr jr_014_4b41

    add hl, bc
    db $e3
    ret nc

    adc c
    ld [$098c], sp
    db $e3
    ret nc

    adc c
    jr jr_014_4b4d

    dec b
    xor $15
    db $ed
    add hl, bc
    db $e3
    ld l, [hl]
    adc e
    jr z, jr_014_4b57

    ld de, $508b
    adc h
    ld de, $008f
    sbc b
    ld [hl+], a
    adc a
    ld [bc], a
    sbc b
    inc hl
    cp l
    sbc $41
    inc b
    or c
    ld b, b
    adc [hl]
    ld a, a
    nop
    cp [hl]
    ld h, l
    ld l, h
    sbc b
    ld bc, $b102
    add b
    cp b
    sub c
    ld [$03d0], sp
    add b
    rst $38
    adc e
    ld d, b
    rst $28
    ld hl, $1096
    or $8b
    jr z, @-$1e

    ld b, l
    ld e, l
    adc h
    ld a, [bc]
    adc a
    inc b
    or $8f
    ld [bc], a
    add b
    rst $38
    nop
    sub c
    rst JumpTable
    rst $08
    nop
    add h
    ld l, d
    inc bc
    nop
    nop
    adc a
    dec b
    sub c
    rst JumpTable
    rst $08
    ld bc, $98f2
    ld bc, $8f05
    dec b
    db $e3
    jp z, $20e0

    ld e, l
    push de
    pop de
    rst $08
    nop
    rst $10
    ld [hl-], a
    adc a
    ld b, $91
    rst JumpTable
    rst $08
    ld [bc], a
    ld a, [c]
    sbc b
    ld bc, $8f06
    ld b, $e3
    set 4, b
    add hl, hl
    ld e, l
    push de
    pop de
    rst $08
    nop
    rst $10
    ld [hl-], a
    adc a
    inc b
    sub c
    rst JumpTable
    rst $08
    inc bc
    ld a, [c]
    sbc b
    ld bc, $8f07
    inc b
    db $e3
    call $32e0
    ld e, l
    push de
    pop de
    rst $08
    nop
    rst $10
    ld [hl-], a
    sub c
    rst JumpTable
    rst $08
    rst $38
    adc a
    ld bc, $0198
    ld [$01c3], sp
    ld b, c
    ld h, [hl]
    sbc b
    ld bc, $d509
    and b
    rlc b
    ld h, [hl]
    dec sp
    ld bc, $021e
    ld [hl], b
    inc b
    inc d
    db $fd
    and b
    ld [bc], a
    inc b
    dec d
    db $fd
    and b
    ld [bc], a
    inc b
    ld d, $fd
    and b
    ld [bc], a
    ld bc, $021e
    ld [hl], b
    dec b
    inc bc
    inc d
    db $fd
    ld bc, $021e
    jp nz, $0307

    inc b
    cp $00
    ld bc, $050f
    inc bc
    inc b
    cp $01
    rrca
    rlca
    inc bc
    inc d
    cp $00
    dec b
    inc bc
    inc b
    rst $38
    ld bc, $050f
    inc bc
    inc d
    cp $01
    rrca
    rlca
    inc bc
    inc h
    cp $00
    dec b
    inc bc
    inc d
    rst $38
    ld bc, $050f
    inc bc
    inc h
    cp $01
    rrca
    rlca
    inc bc
    inc [hl]
    cp $00
    dec b
    inc bc
    inc h
    rst $38
    ld bc, $050f
    inc bc
    inc [hl]
    cp $01
    rrca
    rlca
    inc bc
    ld b, h
    cp $00
    dec b
    inc bc
    inc [hl]
    rst $38
    ld bc, $050f
    inc bc
    ld b, h
    cp $01
    rrca
    rlca
    inc bc
    ld d, h
    cp $00
    dec b
    inc bc
    ld b, h
    rst $38
    ld bc, $050f
    inc bc
    ld d, h
    cp $01
    rrca
    rlca
    inc bc
    ld h, h
    cp $00
    dec b
    inc bc
    ld d, h
    rst $38
    ld bc, $050f
    inc bc
    ld h, h
    cp $01
    rrca
    rlca
    inc bc
    ld [hl], h
    cp $00
    dec b
    inc bc
    ld h, h
    rst $38
    ld bc, $050f
    inc bc
    ld [hl], h
    cp $01
    rrca
    dec b
    inc bc
    ld [hl], h
    rst $38
    ld bc, $013c
    rrca
    rlca
    inc bc
    inc b
    ld a, [$0100]
    rrca
    dec b
    inc bc
    inc b
    ld a, [$0f01]
    rlca
    inc bc
    inc d
    ld a, [$0100]
    rrca
    dec b
    inc bc
    inc d
    ld a, [$0f01]
    rlca
    inc bc
    inc h
    ld a, [$0100]
    rrca
    dec b
    inc bc
    inc h
    ld a, [$0f01]
    rlca
    inc bc
    inc [hl]
    ld a, [$0100]
    rrca
    dec b
    inc bc
    inc [hl]
    ld a, [$0f01]
    rlca
    inc bc
    ld b, h
    ld a, [$0100]
    rrca
    dec b
    inc bc
    ld b, h
    ld a, [$0f01]
    rlca
    inc bc
    ld d, h
    ld a, [$0100]
    rrca
    dec b
    inc bc
    ld d, h
    ld a, [$0f01]
    rlca
    inc bc
    ld h, h
    ld a, [$0100]
    rrca
    dec b
    inc bc
    ld h, h
    ld a, [$0f01]
    rlca
    inc bc
    ld [hl], h
    ld a, [$0100]
    rrca
    dec b
    inc bc
    ld [hl], h
    ld a, [$b401]
    ld [bc], a
    pop af
    nop
    ld [bc], a
    jp nz, $1401

    inc b
    ld h, d
    ld b, l
    rst $38
    ld [bc], a
    inc b
    ld h, e
    ld d, h
    rst $38
    ld [bc], a
    inc b
    ld h, h
    ld b, [hl]
    rst $38
    ld [bc], a
    ld bc, $0314
    ld h, d
    ld b, l
    inc bc
    ld h, e
    ld d, h
    inc bc
    ld h, h
    ld b, [hl]
    ld bc, $0414
    ld [hl], d
    ld b, l
    rst $38
    ld [bc], a
    inc b
    ld [hl], e
    ld d, h
    rst $38
    ld [bc], a
    inc b
    ld [hl], h
    ld b, [hl]
    rst $38
    ld [bc], a
    ld bc, $0314
    ld [hl], d
    ld b, l
    inc bc
    ld [hl], e
    ld d, h
    inc bc
    ld [hl], h
    ld b, [hl]
    ld bc, $000a
    inc b
    ld [bc], a
    or [hl]
    rst $38
    ld [bc], a
    inc b
    inc bc
    or a
    rst $38
    ld [bc], a
    inc b
    inc b
    cp b
    rst $38
    ld [bc], a
    ld bc, $0314
    ld [bc], a
    or [hl]
    inc bc
    inc bc
    or a
    inc bc
    inc b
    cp b
    ld bc, $0414
    ld [de], a
    ld l, e
    rst $38
    ld [bc], a
    inc b
    inc de
    xor $ff
    ld [bc], a
    inc b
    inc d
    ld l, e
    rst $38
    ld [bc], a
    ld bc, $0314
    ld [de], a
    ld l, e
    inc bc
    inc de
    xor $03
    inc d
    ld l, e
    ld bc, $0414
    ld [hl+], a
    ld l, e
    rst $38
    ld [bc], a
    inc b
    inc hl
    call z, $02ff
    inc b
    inc h
    ld l, e
    rst $38
    ld [bc], a
    ld bc, $0314
    ld [hl+], a
    ld l, e
    inc bc
    inc hl
    call z, $2403
    ld l, e
    ld bc, $003c
    ld bc, $0228
    ld [hl], b
    inc b
    ld b, e
    db $fd
    dec l
    inc bc
    inc b
    ld b, h
    db $fd
    dec l
    ld bc, $5304
    db $fd
    ld l, $03
    inc b
    ld d, h
    db $fd
    ld l, $01
    ld bc, $0228
    ld [hl], b
    inc bc
    ld b, e
    dec l
    inc bc
    ld b, h

jr_014_4e33:
    dec l
    inc bc
    ld d, e
    ld l, $03
    ld d, h
    ld l, $01
    jr z, jr_014_4e3f

    ld c, l

jr_014_4e3e:
    nop

jr_014_4e3f:
    adc b
    ld c, b
    or b
    or c
    ld b, b
    ld hl, sp-$7f
    inc bc
    adc e
    ld d, b
    rst $28

jr_014_4e4a:
    add hl, sp
    db $ec
    add hl, de
    add c
    ld [bc], a
    adc a
    ld [bc], a

jr_014_4e51:
    sbc b

jr_014_4e52:
    ld h, $00
    ld h, a
    inc hl
    adc e
    ld d, b
    adc a
    ld [bc], a
    add c
    ld [bc], a

jr_014_4e5c:
    ld hl, sp-$68
    ld h, $02
    ld h, a
    inc hl
    db $ec

jr_014_4e63:
    jr nz, jr_014_4e52

    db $10
    ret nz

    add b
    ld h, a
    xor $30

jr_014_4e6b:
    rst $28
    ld b, b
    ret nz

    sub [hl]

jr_014_4e6f:
    ld h, a
    db $ec
    jr nc, jr_014_4e33

    ld [hl], l
    ld h, a
    db $ec
    ld b, h
    xor b
    nop
    db $ec
    jr nz, jr_014_4e6b

    jr nc, jr_014_4e3e

jr_014_4e7e:
    sub [hl]
    ld h, a
    xor $30
    ret nz

    adc e
    ld h, a
    db $ed

jr_014_4e86:
    ld b, b
    db $ec
    jr nc, jr_014_4e4a

    ld [hl], l
    ld h, a
    db $ec

jr_014_4e8d:
    jr nc, jr_014_4e7e

    jr nc, jr_014_4e51

    sub [hl]
    ld h, a
    db $ec

jr_014_4e94:
    inc h
    xor b
    nop
    db $ec
    db $10
    db $ed
    jr nc, jr_014_4e5c

    add b
    ld h, a
    xor $30
    rst $28
    jr nc, jr_014_4e63

    sub [hl]
    ld h, a
    rst $28
    jr nc, jr_014_4e94

    ld d, b
    ret nz

    ld [hl], l

jr_014_4eab:
    ld h, a
    db $ed
    jr nc, jr_014_4e6f

    add b
    ld h, a
    xor $10

jr_014_4eb3:
    db $ed
    ld b, b
    ret nz

    add b

jr_014_4eb7:
    ld h, a
    db $ec
    jr nc, @-$3e

    ld [hl], l
    ld h, a
    db $ec
    inc d

jr_014_4ebf:
    xor b
    nop
    db $ec
    jr nc, jr_014_4eb3

    jr nc, jr_014_4e86

    sub [hl]
    ld h, a
    xor $50
    db $ed
    jr nc, jr_014_4e8d

    add b
    ld h, a
    db $ec
    jr nc, jr_014_4ebf

    jr nc, jr_014_4e94

    add b
    ld h, a
    xor $30

jr_014_4ed8:
    rst $28
    jr nc, @-$3e

    sub [hl]
    ld h, a
    db $ec
    ld d, b
    ret nz

    ld [hl], l
    ld h, a
    db $ec
    inc [hl]
    xor b
    nop
    db $ec
    jr nz, jr_014_4ed8

    jr nc, jr_014_4eab

    sub [hl]
    ld h, a
    xor $30
    db $ed
    ld b, b
    ret nz

jr_014_4ef2:
    add b
    ld h, a
    db $ec
    jr nc, jr_014_4eb7

    ld [hl], l
    ld h, a
    rst $28
    ld b, b
    ret nz

    sub [hl]
    ld h, a
    rst $28
    inc [hl]
    ld h, a
    ld l, c
    db $ec
    jr nz, jr_014_4ef2

    db $10
    ret nz

    add b
    ld h, a
    xor $30
    rst $28
    ld b, b
    ret nz

    sub [hl]
    ld h, a
    db $ec
    ld b, b
    xor $10
    ret nz

    sub [hl]
    ld h, a
    rst $28
    inc [hl]

jr_014_4f19:
    ld h, a
    ld l, c
    or $ed
    inc d
    or $c0
    ld [hl], l
    ld h, a
    rst $28
    inc d

jr_014_4f24:
    xor b
    nop
    cp l

jr_014_4f27:
    db $e4
    rst $38
    db $e3
    ld c, l

jr_014_4f2b:
    ldh [$b7], a
    ld e, l
    add c
    inc bc

jr_014_4f30:
    adc e
    jr z, @-$68

    jr jr_014_4f2b

    rst $28
    jr nz, jr_014_4f24

    jr nz, @-$6f

    ld [bc], a
    or $e3
    adc l
    add sp, -$3b
    or c
    ld b, b
    cp [hl]
    nop
    add c
    ld [bc], a
    cp b
    adc e
    ld d, b
    sub [hl]
    db $10
    sbc b
    ld h, $01
    add c
    dec b
    nop
    xor $40
    ret nz

    dec bc
    ld l, d

jr_014_4f56:
    db $ed
    jr nc, jr_014_4f19

    jr nz, @+$6c

    xor $18
    ret nz

    dec bc
    ld l, d
    xor $20
    xor c

jr_014_4f63:
    nop
    db $ec
    jr nz, jr_014_4f27

    cp $69
    db $ed
    jr nc, @-$10

    db $10
    db $ed
    jr nc, jr_014_4f30

    jr nz, jr_014_4fdc

    rst $28
    jr nc, jr_014_4f63

    jr nz, @-$0f

jr_014_4f77:
    jr nc, @-$3e

    inc de
    ld l, d
    xor $40
    xor c

jr_014_4f7e:
    nop
    adc b

jr_014_4f80:
    jr z, @-$76

jr_014_4f82:
    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    jr jr_014_4f80

    rst $28
    db $10

jr_014_4f8a:
    xor $20
    ret nz

jr_014_4f8d:
    dec bc
    ld l, d
    xor $10

jr_014_4f91:
    rst $28
    jr nc, jr_014_4f82

    jr nz, jr_014_4f56

    dec bc
    ld l, d
    rst $28
    jr nc, @-$12

    jr nc, jr_014_4f8a

    jr nz, @-$12

    jr nc, @-$3e

jr_014_4fa1:
    cp $69

jr_014_4fa3:
    db $ed
    db $10
    xor $80
    xor c

jr_014_4fa8:
    nop
    adc b
    ld a, b
    jr c, jr_014_4f8d

    ld c, [hl]
    ld e, [hl]
    sub [hl]
    ld [$edf8], sp
    jr nc, jr_014_4fa1

jr_014_4fb5:
    jr nz, jr_014_4f77

    cp $69
    rst $28
    jr nz, jr_014_4fa8

    jr nc, jr_014_4f7e

    cp $69
    ld sp, hl
    db $ed
    jr nc, @-$10

    jr nc, jr_014_4fb5

    db $10
    xor $40
    xor c
    nop
    adc b

jr_014_4fcc:
    jr c, jr_014_4f56

    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    jr jr_014_4fcc

    rst $28
    ld d, b
    sub [hl]

jr_014_4fd7:
    ld [$96f8], sp
    jr jr_014_4fd7

jr_014_4fdc:
    rst $28
    db $10
    db $ec

jr_014_4fdf:
    db $10
    rst $28
    jr nz, jr_014_4fa3

    inc de
    ld l, d
    rst $28
    jr nz, jr_014_4f91

    nop

jr_014_4fe9:
    adc b

jr_014_4fea:
    jr c, jr_014_5014

    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    jr jr_014_4fea

    rst $28

jr_014_4ff3:
    db $10
    ret nz

jr_014_4ff5:
    inc de

jr_014_4ff6:
    ld l, d

jr_014_4ff7:
    db $ec
    jr nz, jr_014_4fe9

    db $10
    ret nz

    inc de
    ld l, d
    db $ed
    jr nz, @-$12

    db $10
    db $ed
    jr nc, jr_014_4ff3

    jr nc, jr_014_4ff6

    jr nc, jr_014_4ff5

    db $10
    rst $28
    jr nz, @-$3e

    inc de
    ld l, d
    rst $28
    jr nz, @-$55

    nop
    adc b

jr_014_5014:
    jr c, jr_014_505e

    ldh [$4e], a
    ld e, [hl]
    sub [hl]

jr_014_501a:
    nop

jr_014_501b:
    ld hl, sp-$14
    jr nz, jr_014_4fdf

    cp $69
    ei
    db $ed
    ld b, b
    ret nz

    jr nz, jr_014_5091

    ld hl, sp-$12
    jr nz, jr_014_501a

    jr nz, jr_014_501b

    db $10
    ret nz

    dec bc
    ld l, d

jr_014_5031:
    rst $28
    ld d, b

jr_014_5033:
    ret nz

jr_014_5034:
    inc de
    ld l, d

jr_014_5036:
    db $ec
    ld h, b

jr_014_5038:
    xor c

jr_014_5039:
    nop
    adc b
    ld [$e018], sp
    ld c, [hl]
    ld e, [hl]
    sub [hl]
    db $10
    ld hl, sp-$12
    jr nc, jr_014_5033

    jr nz, jr_014_5034

    jr nz, jr_014_5039

    jr nz, jr_014_5038

    jr nz, jr_014_4ff7

    nop
    adc b
    ld [$e038], sp
    ld c, [hl]
    ld e, [hl]
    sub [hl]
    ld [$edf8], sp
    ld b, b

jr_014_505a:
    xor $60
    ret nz

jr_014_505d:
    dec bc

jr_014_505e:
    ld l, d
    rst $28
    ld h, b
    ret nz

    inc de

jr_014_5063:
    ld l, d
    db $ec
    ld h, b
    ret nz

    cp $69
    db $ec
    jr nz, @-$55

    nop
    adc b

jr_014_506e:
    ld [$e088], sp
    ld c, [hl]
    ld e, [hl]
    sub [hl]
    jr jr_014_506e

    xor $60
    ret nz

jr_014_5079:
    dec bc
    ld l, d
    rst $28
    ld [hl], b
    ret nz

    inc de
    ld l, d
    db $ec
    ld h, b
    ret nz

    cp $69
    db $ec
    jr nz, jr_014_5031

    nop
    adc b
    jr jr_014_5014

jr_014_508c:
    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    db $10

jr_014_5091:
    ld hl, sp-$12
    ld h, b
    ret nz

    dec bc

jr_014_5096:
    ld l, d
    rst $28
    jr nc, jr_014_505a

    inc de
    ld l, d
    db $ec
    jr nc, jr_014_508c

    db $10
    db $ec
    jr nc, jr_014_5063

    cp $69
    db $ed

jr_014_50a6:
    jr nz, jr_014_5096

    add b
    xor c
    nop
    adc b
    jr jr_014_5036

    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    db $10
    ld hl, sp-$12

jr_014_50b5:
    jr nc, jr_014_50a6

    jr nc, jr_014_5079

    inc de
    ld l, d
    xor $30
    ret nz

    dec bc
    ld l, d
    db $ed
    jr nc, @-$12

    jr nc, @-$0f

    jr nc, jr_014_50b5

    ld d, b
    xor c
    nop
    adc b
    ld c, b
    jr c, jr_014_505d

    inc bc
    and b
    xor $50
    nop
    adc $a0
    sub c
    xor e
    call z, $f801
    db $e3
    ld c, l
    ld hl, sp-$1d
    ld [hl], e
    pop hl
    or h
    ld h, c
    inc b
    di
    db $e3
    ld [hl], e
    pop hl
    or h
    ld h, c
    dec b
    pop hl
    or h
    ld h, c
    inc bc
    di
    db $e3
    ld [hl], e
    pop hl
    or h
    ld h, c
    ld bc, $b4e1
    ld h, c
    rlca
    di
    db $e3
    ld [hl], e
    pop hl
    or h
    ld h, c
    nop
    pop hl
    or h
    ld h, c
    ld [$e3f3], sp
    ld [hl], e
    pop hl
    or h
    ld h, c
    ld [bc], a
    pop hl
    or h
    ld h, c
    ld b, $f3
    db $e3
    ld [hl], e
    pop hl
    or h
    ld h, c
    ld bc, $b4e1
    ld h, c
    dec b
    pop hl
    or h
    ld h, c
    inc bc
    pop hl
    or h
    ld h, c
    rlca
    di
    db $e3
    ld [hl], e
    pop hl
    or h
    ld h, c
    inc b
    pop hl
    or h
    ld h, c
    nop
    pop hl
    or h
    ld h, c
    ld [bc], a
    pop hl
    or h
    ld h, c
    ld b, $e1
    or h
    ld h, c
    ld [$22e7], sp
    rrca
    rst $20
    inc hl
    ld de, $32e7
    ld de, $33e7

jr_014_5144:
    rrca
    rst $20
    inc [hl]
    ld de, $e3f4
    ld [hl], e
    pop hl
    or h
    ld h, c
    ld bc, $b4e1
    ld h, c
    dec b
    pop hl
    or h
    ld h, c
    inc bc
    pop hl
    or h
    ld h, c
    rlca
    rst $10
    ld b, $e3
    ld h, a

jr_014_515f:
    sub c
    ret nz

    rst $08
    nop
    ldh [$dc], a
    ld h, c
    db $e3
    ld [hl], e
    pop hl
    or h
    ld h, c
    inc b
    pop hl
    or h
    ld h, c

jr_014_516f:
    nop
    pop hl
    or h
    ld h, c
    ld [bc], a
    pop hl
    or h
    ld h, c
    ld b, $e1
    or h
    ld h, c
    ld [$2de4], sp
    sub c
    xor e
    call z, $a000
    db $e3
    ld c, l
    db $e4
    rst $38
    ld [c], a
    push af
    cp e

jr_014_518a:
    add sp, -$0f
    or c
    ld b, b
    cp h
    nop
    adc [hl]
    ld [hl], a
    ld bc, $508b
    rst $20
    ld d, $a2
    rst $20
    rla
    and d
    rst $20
    jr @-$5c

    rst $20
    ld h, $a2
    rst $20
    daa

jr_014_51a3:
    and d

jr_014_51a4:
    rst $20
    jr z, @-$5c

    ldh [$eb], a
    ld h, c
    rst $10
    ld d, b
    sbc b
    jr c, jr_014_51b3

    adc [hl]
    ld [hl], a
    nop
    adc c

jr_014_51b3:
    jr jr_014_5144

    ld [bc], a
    adc h
    ld d, $d7
    ld b, $89
    db $10
    adc a
    ld bc, $308c
    sub c
    pop de
    rst $08
    ld bc, $fb00
    adc e
    jr z, jr_014_515f

    db $10
    adc h
    jr nz, jr_014_51a4

    ld b, $96
    ld [$408c], sp
    rst $10
    ld b, $96
    db $10
    adc h
    inc d
    or $98
    dec b
    nop
    adc [hl]
    ld c, a
    nop
    or $96
    jr jr_014_516f

    db $10
    di
    sub [hl]
    db $10
    adc h
    ld e, b
    cp [hl]

jr_014_51ea:
    adc [hl]
    ld e, d
    nop
    or [hl]
    ld [hl+], a
    nop
    ld hl, sp-$75
    jr z, jr_014_518a

    db $10

jr_014_51f5:
    adc h
    ld a, [bc]
    sub c
    ret nz

    rst $08
    ld bc, $1b8c
    rst $10
    ld b, $91
    ret nz

    rst $08
    ld [bc], a
    rst $10
    ld l, [hl]
    sub c
    rst JumpTable
    rst $08
    ld bc, $8b00
    jr z, jr_014_51a3

    nop
    adc h
    add b
    rst $10
    ld b, $96
    jr jr_014_51ea

    ret nz

    rst $08
    ld [bc], a
    adc a
    rlca
    nop
    push de
    rrca
    ret nc

    nop
    ld a, [$148b]
    xor $3c
    di
    adc [hl]
    ld a, b
    add b
    pop hl
    db $d3
    ld h, d
    ld e, $f7
    ret nz

    ld a, [bc]
    ld e, a
    rst $10
    ld b, $8e
    ld a, b
    ld bc, $288b
    xor $13
    adc [hl]
    ld a, b
    add b
    di
    adc [hl]
    ld a, b
    ld bc, $b6f8
    jr nc, jr_014_51f5

    ld b, b
    nop
    cp l
    sub c
    xor e
    call z, $f601
    db $e4
    dec l
    or $98
    dec b
    inc b
    or $91
    ret nz

    rst $08
    ld bc, $3ed7
    sbc b
    dec b
    dec b
    ldh [$8e], a
    inc c
    or $91
    ret nz

    rst $08
    ld [bc], a
    rst $10
    add b
    db $e3
    ret z

    rst $30
    sub c
    ret nz

    rst $08
    inc bc
    rst $10
    ld [bc], a
    db $e4
    dec l
    cp [hl]
    jp nc, $bdf6

    ldh [$8e], a
    inc c
    push af
    db $e3
    ret z

    push af
    db $e3
    ret z

    push af
    db $e3
    ret z

    or $91
    ret nz

    rst $08
    inc b
    ldh [$c7], a
    ld h, e
    push de
    ld bc, $00d0
    or $e1
    pop de
    ld h, e
    nop
    db $e4
    add hl, sp
    sub c
    ret nz

    rst $08
    dec b
    rst $10
    ld b, d
    sbc b
    dec b
    ld b, $91
    ret nz

    rst $08
    ld b, $d7
    inc h
    sub c
    ret nz

    rst $08
    rlca
    push af
    pop hl
    pop de
    ld h, e
    inc bc
    rst $10
    ld b, [hl]
    sbc b
    dec b
    rlca
    ldh [$d8], a
    ld h, e
    sub c
    ret nz

    rst $08
    ld [$91f7], sp
    ret nz

    rst $08
    add hl, bc
    pop hl
    pop de
    ld h, e
    ld [bc], a
    rst $10
    ld [hl-], a
    sbc b
    dec b
    ld [$c091], sp
    rst $08
    ld a, [bc]
    or $98
    dec b
    add hl, bc
    di
    pop hl
    pop bc
    ld h, e
    dec h
    or $98
    dec b
    ld a, [bc]
    or $91
    ret nz

    rst $08
    dec bc
    rst $10
    ld b, b
    db $e4
    rst $38
    or [hl]
    inc hl
    sub c
    xor e
    call z, $be00
    nop
    adc b
    ld b, b
    ld d, b
    adc l
    ld [bc], a
    inc b
    ret nc

    cp l
    ldh [$39], a
    ld [hl], c
    rst $10
    add d
    db $e3
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $f5d1
    add h
    and $02
    jr c, jr_014_535d

    pop hl
    ld e, h
    ld sp, $d104
    db $d3
    nop
    db $eb
    call z, $30e1
    ld [hl], c
    ld [bc], a
    rst $30
    sbc b
    ld [$e410], sp
    ei
    ld sp, hl
    db $e4
    rst $38
    cp [hl]
    nop
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    rst $00
    ld d, [hl]
    ret


    ld d, [hl]
    bit 2, [hl]
    call $cf56
    ld d, [hl]
    pop de
    ld d, [hl]
    db $d3
    ld d, [hl]
    rst $08
    ld d, [hl]
    push de
    ld d, [hl]
    db $dd
    ld d, [hl]
    rst $08
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    db $e3
    ld e, b
    ld e, c
    ld d, a
    sub a
    ld e, c
    pop hl
    ld d, [hl]
    push bc
    ld d, [hl]
    pop hl
    ld d, [hl]
    push bc
    ld d, [hl]
    ld b, l
    ld d, a
    add hl, de
    ld d, a
    add hl, de
    ld d, a
    push bc
    ld d, [hl]
    ld l, e
    ld e, c
    push bc
    ld d, [hl]

jr_014_535d:
    pop hl
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    ld e, c
    ld d, a
    adc c
    ld d, a
    sbc e
    ld d, a
    and c
    ld d, a
    or l
    ld d, a
    ld e, c
    ld d, a
    pop bc
    ld d, a
    ret


    ld d, a
    rst JumpTable
    ld d, a
    add a
    ld e, b
    and e
    ld e, b
    add a
    ld e, b
    ld [hl], e
    ld d, a
    jp hl


    ld d, a
    ld e, c
    ld d, a
    ld sp, hl
    ld d, a
    inc bc
    ld e, b
    rlca
    ld e, b
    scf
    ld e, b
    ccf
    ld e, b
    ld e, c
    ld d, a
    ld e, c
    ld d, a
    push bc
    ld d, [hl]
    ld c, c
    ld e, b
    ld e, l
    ld e, b
    push de
    ld d, a
    db $eb
    ld d, [hl]
    ld l, e
    ld e, b
    ld e, c
    ld d, a
    add a
    ld e, b
    ld e, c
    ld d, a
    and a
    ld e, b
    sub c
    ld e, b
    ld a, c
    ld e, b
    ld e, c
    ld d, a
    add hl, de
    ld d, a
    xor c
    ld e, b
    or c
    ld e, b
    or l
    ld e, b
    push bc
    ld e, b
    bit 3, b
    rst JumpTable
    ld e, b
    rst $20
    ld e, b
    inc bc
    ld e, c
    ld h, a
    ld e, b
    push bc
    ld d, [hl]
    dec [hl]
    ld e, c
    ld [hl], e
    ld d, a
    add hl, de
    ld d, a
    ld e, c
    ld d, a
    db $e3
    ld e, c
    dec a
    ld e, c
    ld c, c
    ld e, c
    ld e, c
    ld e, c
    push bc
    ld d, [hl]
    ld e, e
    ld e, c
    ld e, c
    ld d, a
    pop hl
    ld d, [hl]
    pop hl
    ld d, [hl]
    push bc
    ld d, [hl]
    add hl, de
    ld d, a
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    pop hl
    ld d, [hl]
    push bc
    ld d, [hl]
    pop hl
    ld d, [hl]
    ld e, c
    ld d, a
    add hl, de
    ld d, a
    ld h, l
    ld e, c
    ld [hl], e
    ld d, a
    ld l, l
    ld e, c
    jp hl


    ld d, a
    ld [hl], e
    ld d, a
    or c
    ld e, b
    cpl
    ld d, a
    ld e, c
    ld d, a
    pop hl
    ld d, [hl]
    ld [hl], e
    ld e, c
    ld e, c
    ld d, a
    ld a, l
    ld e, c
    adc e
    ld e, c
    ld e, c
    ld d, a
    dec [hl]
    ld d, a
    push bc
    ld d, [hl]
    rst $38
    ld d, [hl]
    dec bc
    ld d, a
    rla
    ld d, a
    add a
    ld d, a
    db $e3
    ld d, [hl]
    inc sp
    ld d, a
    add hl, sp
    ld d, a
    ld e, c
    ld d, a
    add hl, de
    ld d, a
    db $eb
    ld d, [hl]
    pop hl
    ld d, [hl]
    sub a
    ld e, c
    push bc
    ld d, [hl]
    and c
    ld e, c
    and e
    ld e, c
    ld b, c
    ld d, a
    xor l
    ld e, c
    ld e, c
    ld d, a
    ld e, c
    ld d, a
    or c
    ld e, b
    ld e, l
    ld e, b
    cp a
    ld e, c
    ld e, c
    ld d, a
    push bc
    ld d, [hl]
    add hl, de
    ld d, a
    add hl, de
    ld d, a
    pop bc
    ld e, c
    add hl, de
    ld d, a
    rst $00
    ld e, c
    ld e, c
    ld d, a
    reti


    ld e, c
    db $db
    ld e, c
    ld e, c
    ld d, a
    db $e3
    ld e, c
    push bc
    ld d, [hl]
    rst $20
    ld e, c
    db $ed
    ld e, c
    push bc
    ld d, [hl]
    ld h, a
    ld e, b
    add hl, sp
    ld d, a
    rst $30
    ld e, c
    rst $38
    ld e, c
    pop hl
    ld d, [hl]
    ld e, c
    ld d, a
    inc bc
    ld e, d
    add hl, sp
    ld d, a
    dec d
    ld e, d
    push bc
    ld d, [hl]
    rra
    ld e, d
    scf
    ld e, d
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    ld c, a
    ld e, d
    ld h, e
    ld e, d
    ld h, e
    ld e, d
    sbc c
    ld e, d
    ld e, c
    ld d, a
    add a
    ld e, b
    push bc
    ld d, [hl]
    and l
    ld e, d
    push bc
    ld d, [hl]
    add hl, de
    ld d, a
    or e
    ld e, d
    ld e, c
    ld d, a
    or a
    ld e, d
    rst $10
    ld e, d
    db $eb
    ld d, [hl]
    pop hl
    ld e, d
    db $eb
    ld e, d
    pop hl
    ld e, d
    push af
    ld e, d
    ld h, e
    ld e, d
    ei
    ld e, d
    add a
    ld e, b
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    add hl, de
    ld d, a
    push bc
    ld d, [hl]
    ld e, c
    ld d, a
    db $fd
    ld e, d
    ld e, c
    ld d, a
    rst $38
    ld e, d
    ld e, c
    ld d, a
    ld e, l
    ld e, b
    ld bc, $0d5b
    ld e, e
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    inc de
    ld e, e
    dec de
    ld e, e
    ld h, e
    ld e, d
    ld h, a
    ld e, b
    ld e, e
    ld e, c
    push bc
    ld d, [hl]
    ld e, c
    ld d, a
    push bc
    ld d, [hl]
    push bc
    ld d, [hl]
    rra
    ld e, e
    push bc
    ld d, [hl]
    ld e, c
    ld d, a
    add hl, de
    ld d, a
    add hl, hl
    ld e, e
    rst $38
    ld d, [hl]
    ld l, e
    ld e, c
    ld c, c
    ld d, a
    dec [hl]
    ld e, e
    ld e, c
    ld d, a
    pop hl
    ld d, [hl]
    add hl, sp
    ld e, e
    ld e, c
    ld d, a
    and a
    ld h, a
    or a
    ld h, a
    rst $00
    ld h, a
    reti


    ld h, a
    rst JumpTable
    ld h, a
    di
    ld h, a
    ld sp, hl
    ld h, a
    add hl, bc
    ld l, b
    dec c
    ld l, b
    ld sp, hl
    ld h, a
    ld bc, $4f68
    ld l, b
    ld sp, hl
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    ld de, $c56b
    ld l, b
    sub c
    ld l, b
    ld b, l
    ld l, b
    and a
    ld h, a
    ld sp, $a768
    ld h, a
    or c
    ld l, b
    ld c, a
    ld l, b
    ld c, a
    ld l, b
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    ld d, a
    ld l, b
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    push bc
    ld l, b
    dec bc
    ld l, c
    add hl, de
    ld l, c
    daa
    ld l, c
    ld b, e
    ld l, c
    ld d, e
    ld l, c
    ld h, e
    ld l, c
    ld l, a
    ld l, c
    ld a, a
    ld l, c
    ld e, e
    ld l, d
    ld e, e
    ld l, d
    ld e, e
    ld l, d
    db $eb
    ld l, b
    ret


    ld l, c
    jp hl


    ld l, c
    ld sp, hl
    ld l, c
    db $fd
    ld l, c
    ld e, a
    ld l, d
    add hl, bc
    ld l, d
    ld de, $c56a
    ld l, b
    push bc
    ld l, b
    and a
    ld h, a
    dec d
    ld l, d
    add hl, hl
    ld l, d
    ld sp, $8b6a
    ld l, c
    dec sp
    ld l, d
    sub c
    ld l, d
    adc l
    ld l, d
    push bc
    ld l, b
    and c
    ld l, d
    xor e
    ld l, c
    ld b, a
    ld l, d
    sbc e
    ld l, c
    ld c, a
    ld l, b
    and a
    ld l, d
    xor a
    ld l, d
    or a
    ld l, d
    push hl
    ld l, d
    pop af
    ld l, d
    dec [hl]
    ld l, d
    rla
    ld l, e
    ld e, e
    ld l, e
    dec [hl]
    ld l, d
    and a
    ld h, a
    rst $00
    ld l, e
    scf
    ld l, h
    ld c, a
    ld l, b
    push bc
    ld l, b
    jp hl


    ld l, h
    bit 5, e
    rst JumpTable
    ld l, e
    di
    ld l, e
    and a
    ld h, a
    push af
    ld l, e
    push bc
    ld l, b
    ld d, a
    ld l, b
    ld c, a
    ld l, b
    and a
    ld h, a
    ld c, a
    ld l, b
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    ld b, l
    ld l, b
    and a
    ld h, a
    ld sp, $0768
    ld l, h
    ld d, a
    ld l, b
    dec bc
    ld l, h
    db $eb
    ld l, b
    cpl
    ld l, h
    ret


    ld l, c
    db $eb
    ld l, b
    ld c, c
    ld l, h
    ld c, l
    ld l, h
    push bc
    ld l, b
    ld d, e
    ld l, h
    ld d, l
    ld l, h
    push bc
    ld l, b
    ld e, e
    ld l, [hl]
    sub e
    ld l, e
    push bc
    ld l, b
    push hl
    ld l, b
    and a
    ld h, a
    ld l, l
    ld l, b
    inc sp
    ld l, b
    ld b, a
    ld l, b
    dec b
    ld l, c
    add hl, de
    ld l, b
    ld a, c
    ld l, b
    ld a, l
    ld l, b
    ld e, e
    ld l, d
    ld c, a
    ld l, b
    add a
    ld l, b
    adc a
    ld l, b
    sub c
    ld l, b
    and a
    ld h, a
    and a
    ld l, b
    ld l, e
    ld l, h
    ld a, c
    ld l, h
    ld a, l
    ld l, h
    push bc
    ld l, b
    push bc
    ld l, b
    xor a
    ld l, d
    sbc l
    ld l, h
    and c
    ld l, h
    push bc
    ld l, b
    and a
    ld h, a
    ld c, a
    ld l, b
    ld c, a
    ld l, b
    and a
    ld l, h
    ld c, a
    ld l, b
    xor l
    ld l, h
    push bc
    ld l, b
    db $db
    ld l, h
    pop hl
    ld l, h
    push bc
    ld l, b
    jp hl


    ld l, h
    and a
    ld h, a
    push af
    ld l, h
    rrca
    ld l, l
    and a
    ld h, a
    dec h
    ld l, l
    ld c, a
    ld l, b
    cpl
    ld l, l
    scf
    ld l, l
    ld l, l
    ld l, b
    push bc
    ld l, b
    ccf
    ld l, l
    ld c, a
    ld l, b
    ld [hl], a
    ld l, l
    and a
    ld h, a
    adc e
    ld l, l
    or e
    ld l, l
    and a
    ld h, a
    and a
    ld h, a
    db $e3
    ld l, l
    dec bc
    ld l, [hl]
    and a
    ld h, a
    ccf
    ld l, [hl]
    sub c
    ld l, d
    adc l
    ld l, d
    and a
    ld h, a
    ld [hl], c
    ld l, [hl]
    and a
    ld h, a
    ld c, a
    ld l, b
    adc l
    ld l, [hl]
    sbc e
    ld l, [hl]
    xor e
    ld l, [hl]
    rst $10
    ld l, [hl]
    rst $20
    ld l, [hl]
    rst $30
    ld l, [hl]
    rlca
    ld l, a
    rla
    ld l, a
    daa
    ld l, a
    inc sp
    ld l, a
    dec sp
    ld l, a
    ld e, e
    ld l, d
    and a
    ld h, a
    and a
    ld h, a
    and a
    ld h, a
    ld c, a
    ld l, b
    and a
    ld h, a
    push bc
    ld l, b
    ld b, e
    ld l, a
    push bc
    ld l, b
    ld c, e
    ld l, a
    push bc
    ld l, b
    sbc l
    ld l, h
    ld c, a
    ld l, a
    ld e, l
    ld l, a
    and a
    ld h, a
    and a
    ld h, a
    ld h, e
    ld l, a
    ld l, e
    ld l, a
    ld [hl], a
    ld l, a
    ld a, l
    ld l, a
    push af
    ld l, e
    and a
    ld h, a
    push bc
    ld l, b
    and a
    ld h, a
    and a
    ld h, a
    add c
    ld l, a
    and a
    ld h, a
    push bc
    ld l, b
    ld c, a
    ld l, b
    sbc c
    ld l, a
    jp hl


    ld l, b
    daa
    ld l, h
    or l
    ld l, b
    xor c
    ld l, a
    push bc
    ld l, b
    ld d, a
    ld l, b
    xor a
    ld l, a
    cp c
    ld l, a
    ccf
    ld e, e
    ld e, d
    ld e, e
    ld a, b
    ld e, e
    adc l
    ld e, e
    xor [hl]
    ld e, e
    rst $08
    ld e, e
    add h
    ld e, e
    sbc $5b
    jp nz, $c85c

    ld e, h
    adc $5c
    call nc, $f65c
    ld e, e
    rst $38
    ld e, e
    jp c, $085c

    ld e, h
    ld a, [de]
    ld e, h
    inc l
    ld e, h
    ld a, [hl-]
    ld e, h
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    ld c, h
    ld e, l
    ld h, a
    ld e, l
    adc a
    ld e, l
    sbc a
    ld e, l
    jp hl


    ld e, h
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    jp hl


    ld e, h
    xor $5c
    or $5c
    ld c, b
    ld e, h
    ld d, h
    ld e, h
    ld h, b
    ld e, h
    ld l, h
    ld e, h
    ld a, b
    ld e, h
    add h
    ld e, h
    sub b
    ld e, h
    jp c, $af5c

    ld e, h
    jp hl


    ld e, h
    xor $5c
    or $5c
    ld c, h
    ld e, l
    ei
    ld e, h
    nop
    ld e, l
    call c, $0564
    ld e, l
    ld sp, hl
    ld h, c
    ld c, h
    ld e, l
    db $e4
    ld e, h
    cp d
    ld e, h
    jp c, $df5c

    ld e, h
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    and c
    ld e, h
    ld a, [bc]
    ld e, l
    ld [de], a
    ld e, l
    jp c, $df5c

    ld e, h
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    jp hl


    ld e, h
    xor $5c
    or $5c
    ei
    ld e, h
    nop
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    sub a
    ld e, l
    di
    ld e, h
    di
    ld e, h
    cp l
    ld e, l
    push bc
    ld e, l
    push de
    ld e, l
    push hl
    ld e, l
    inc d
    ld h, [hl]
    dec h
    ld h, [hl]
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    dec c
    ld e, [hl]
    ld hl, $2c5e
    ld e, [hl]
    scf
    ld e, [hl]
    ld a, [hl-]
    ld e, [hl]
    dec a
    ld e, [hl]
    ld b, b
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld [hl], c
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld h, e
    ld e, [hl]
    di
    ld e, h
    di
    ld e, h
    or $5c
    ei
    ld e, h
    adc l
    ld e, [hl]
    and c
    ld e, [hl]
    ret


    ld e, [hl]
    rst $10
    ld e, [hl]
    rst JumpTable
    ld e, [hl]
    rst $20
    ld e, [hl]
    or c
    ld h, b
    xor $5c
    or $5c
    cpl
    ld e, a
    ccf
    ld e, a
    scf
    ld e, [hl]
    dec a
    ld e, [hl]
    ld c, a
    ld e, a
    ld d, h
    ld e, a
    ld e, c
    ld e, a
    ld h, [hl]
    ld e, a
    ld l, [hl]
    ld e, a
    db $76
    ld e, a
    ld e, a
    ld e, l
    adc [hl]
    ld e, a
    ld a, [hl]
    ld e, a
    add [hl]
    ld e, a
    sub [hl]
    ld e, a
    sbc [hl]
    ld e, a
    and [hl]
    ld e, a
    xor e
    ld e, a
    or b
    ld e, a
    cp b
    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ld e, a
    ld e, l
    jp hl


    ld e, h
    ld e, a
    ld e, l
    db $e4
    ld e, h
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    cp l
    ld e, l
    daa
    ld e, a
    scf
    ld e, a
    ld b, a
    ld e, a
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ret z

    ld e, a
    ld [c], a
    ld e, a
    db $fc
    ld e, a
    inc b
    ld h, b
    inc c
    ld h, b
    inc d
    ld h, b
    add hl, de
    ld h, b
    ld e, $60
    ld h, $60
    dec hl
    ld h, b
    jr nc, jr_014_5879

    jr c, @+$62

    dec a
    ld h, b
    ld b, d
    ld h, b
    ld c, d
    ld h, b
    ld d, d
    ld h, b
    ld d, a
    ld h, b
    ld e, h
    ld h, b
    ld h, c
    ld h, b
    ld h, [hl]
    ld h, b
    ld l, e
    ld h, b
    ld [hl], b
    ld h, b
    ld a, b
    ld h, b
    add b
    ld h, b
    adc b
    ld h, b
    sub b
    ld h, b
    ld e, h
    ld e, l
    and [hl]
    ld h, b
    ld e, a
    ld e, l
    xor c
    ld h, b
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, c
    ld e, a
    rst $20
    ld e, [hl]
    di
    ld h, b
    or c
    ld h, b
    push bc
    ld h, b
    sub $60
    cp c
    ld h, b
    jp nz, $ca60

    ld h, b
    db $d3
    ld h, b
    ld e, c
    ld e, a
    rst $20
    ld e, [hl]
    ld e, c
    ld e, a
    ld e, c
    ld e, a
    rst $28
    ld e, [hl]
    ld c, h
    ld e, l
    xor h
    ld h, [hl]
    ret nz

    ld e, a
    db $db
    ld h, b
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    db $e4
    ld e, h
    or $5c

jr_014_5879:
    jp c, $e35c

    ld h, b
    db $eb
    ld h, b
    di
    ld h, b
    ei
    ld h, b
    ld e, a
    ld e, l
    inc bc
    ld h, c
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    sub a
    ld e, l
    ccf
    ld h, c
    ld b, h
    ld h, c
    ld e, e
    ld h, c
    dec b
    ld e, l
    dec bc
    ld h, c
    rra
    ld h, c
    ld b, l
    ld h, h
    ld l, h
    ld h, c
    ld l, a
    ld h, c
    ld [hl], d
    ld h, c
    ld [hl], l
    ld h, c
    ld c, h
    ld e, l
    ld h, a
    ld e, l
    ld a, b
    ld h, c
    ld a, b
    ld h, c
    add [hl]
    ld h, c
    sub h
    ld h, c
    and l
    ld h, c
    or [hl]
    ld h, c
    call nz, $c761
    ld h, c
    rst $00
    ld h, c
    ret nc

    ld h, c
    ld a, [bc]
    ld h, d
    db $d3
    ld h, c
    jp hl


    ld e, h
    xor $5c
    or $5c
    ei
    ld e, h
    nop
    ld e, l
    sbc $61
    db $ec
    ld h, c
    ld sp, hl
    ld h, c
    db $f4
    ld h, c
    jp c, $e35c

    ld h, b
    cp $61
    ld a, b
    ld e, e
    jr nc, jr_014_594b

    jr c, jr_014_594d

    ld b, b
    ld h, d
    ld c, b
    ld h, d
    ld d, b
    ld h, d
    ld e, b
    ld h, d
    ld a, [hl]
    ld h, d
    and h
    ld h, d
    xor h
    ld h, d
    ret nz

    ld h, d
    ret z

    ld h, d
    ret nc

    ld h, d
    ret c

    ld h, d
    sbc [hl]
    ld h, b
    ldh [$62], a
    xor $62
    di
    ld h, d
    ei
    ld h, d
    cp $62
    ld bc, $0463
    ld h, e
    db $10
    ld h, e
    inc e
    ld h, e
    jr z, jr_014_597a

    inc b
    ld h, e
    db $10
    ld h, e
    inc e
    ld h, e
    jr z, @+$65

    ld h, h
    ld h, e
    ld [hl], l
    ld h, e
    ld a, l
    ld h, e
    inc [hl]
    ld h, e
    ld b, b
    ld h, e
    ld c, h
    ld h, e
    ld e, b
    ld h, e
    inc [hl]
    ld h, e
    ld b, b
    ld h, e
    ld c, h
    ld h, e
    ld e, b
    ld h, e
    ld d, $64
    ld e, $64
    jp c, $df5c

    ld e, h
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l

Call_014_5943:
    and a
    ld e, l
    xor $5c
    cp l
    ld e, l
    ld d, h
    ld e, l

jr_014_594b:
    ld d, h
    ld e, l

jr_014_594d:
    ld l, a
    ld e, l
    ld l, a
    ld e, l
    ld d, h
    ld e, l
    ld l, a
    ld e, l
    cpl
    ld h, h
    ld a, [hl-]
    ld h, h
    jp c, $6a5c

    ld h, h
    ld d, e
    ld h, h
    ld e, h
    ld h, h
    ld h, c
    ld h, h
    ld l, a
    ld h, h
    jp c, $865c

    ld h, h
    sub h
    ld h, h
    cp b
    ld h, h
    add $64
    rst JumpTable
    ld e, h
    call nc, Call_014_5f64
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a

jr_014_597a:
    ld e, l
    xor a
    ld e, l
    and l
    ld h, e
    xor $5c
    or $5c
    jp hl


    ld e, h
    ei
    ld e, h
    nop
    ld e, l
    or b
    ld h, e
    cp e
    ld h, e
    call z, $dd63
    ld h, e
    xor $63
    rst $38
    ld h, e
    inc de
    ld h, h
    dec h
    ld e, l
    ldh a, [$64]
    ld bc, $1a65
    ld e, l
    dec l
    ld e, l
    dec [hl]
    ld e, l
    ld h, $65
    rrca
    ld h, l
    rla
    ld h, l
    ld sp, $ee65
    ld e, h
    scf
    ld h, l
    ld d, c
    ld h, l
    ld e, h
    ld h, l
    ld h, a
    ld h, l
    ld [hl], b
    ld h, l
    ld a, [hl]
    ld h, l
    add e
    ld h, l
    adc [hl]
    ld h, l
    sbc c
    ld h, l
    inc sp
    ld h, c
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    ret


    ld h, l
    call nc, $dc65
    ld h, l
    db $e4
    ld h, l
    db $ec
    ld h, l
    db $f4
    ld h, l
    db $fc
    ld h, l
    inc b
    ld h, [hl]
    inc c
    ld h, [hl]
    ld [hl], $66
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    jp hl


    ld e, h
    ld c, l
    ld h, [hl]
    ld h, d
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld l, b
    ld h, [hl]
    ld a, l
    ld h, [hl]
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    sub a
    ld e, l
    ret z

    ld h, [hl]
    bit 4, [hl]
    adc $66
    pop de
    ld h, [hl]
    call nc, $e266
    ld h, [hl]
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    ld h, h
    ld h, e
    add d
    ld h, e
    ld a, [hl]
    ld h, d
    adc [hl]
    ld h, e
    ld [hl], l
    ld h, e
    ret nz

    ld e, a
    ld h, c
    ld e, a
    db $db
    ld h, b
    or c
    ld h, b
    cp l
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    adc a
    ld e, l
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    or l
    ld e, [hl]
    scf
    ld e, [hl]
    scf
    ld e, a
    ld b, a
    ld e, a
    db $ed
    ld e, l
    push af
    ld e, l
    ld e, a
    ld e, l
    cp d
    ld h, [hl]
    and a
    ld e, l
    push bc
    ld h, b
    db $ed
    ld e, l
    push af
    ld e, l
    db $fd
    ld e, l
    dec b
    ld e, [hl]
    push bc
    ld e, l
    push de
    ld e, l
    ld e, a
    ld e, l
    ld b, a
    ld e, a
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    cp l
    ld e, l
    daa
    ld e, a
    scf
    ld e, a
    ld b, a
    ld e, a
    db $ed
    ld e, l
    push af
    ld e, l
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    jp hl


    ld e, h
    xor $5c
    or $5c
    ei
    ld e, h
    nop
    ld e, l
    xor a
    ld e, l
    jp z, $3760

    ld e, [hl]
    ld a, [hl-]
    ld e, [hl]
    dec a
    ld e, [hl]
    dec b
    ld e, l
    ld sp, hl
    ld h, c
    db $f4
    ld h, l
    rst $30
    ld h, l
    db $fc
    ld h, l
    rst $38
    ld h, l
    ld l, e
    ld h, b
    ld a, b
    ld h, b
    ld a, e
    ld h, b
    sub b
    ld h, b
    sub l
    ld h, b
    sbc b
    ld h, b
    sbc e
    ld h, b
    sub b
    ld h, b
    ld e, c
    ld e, a
    rst $20
    ld e, [hl]
    ldh a, [$66]
    dec a
    ld h, b
    daa
    ld e, a
    scf
    ld e, a
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    cp l
    ld e, l
    call $dd5d
    ld e, l
    ld bc, $1267
    ld h, a
    push bc
    ld e, l
    push bc
    ld e, l
    ld e, a
    ld e, l
    add hl, hl
    ld h, a
    and a
    ld e, l
    scf
    ld h, a
    db $ed
    ld e, l
    push af
    ld e, l
    push de
    ld e, l
    ld b, a
    ld e, a
    push de
    ld e, l
    ld b, a
    ld e, a
    push de
    ld e, l
    ld b, a
    ld e, a
    db $fd
    ld e, l
    db $fd
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    and a
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    ld e, a
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    add a
    ld e, l
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    ld b, l
    ld h, a
    ld d, h
    ld h, a
    ld e, a
    ld e, l
    jp c, Jump_014_625c

    ld h, a
    ld [hl], l
    ld h, a
    ld l, l
    ld h, a
    ld h, l
    ld h, a
    ei
    ld e, h
    add b
    ld h, a
    add e
    ld h, a
    add [hl]
    ld h, a
    jp c, $df5c

    ld e, h
    db $e4
    ld e, h
    jp hl


    ld e, h
    sub c
    ld h, a
    sbc h
    ld h, a
    ld e, a
    ld e, l
    add a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    cp l
    ld e, l
    ld a, a
    ld e, l
    ld [hl], a
    ld e, l
    sub a
    ld e, l
    and a
    ld e, l
    ld e, a
    ld e, l
    add d
    ld e, l
    ld e, a
    ld e, l
    ld a, [hl]
    ld e, a
    dec h
    ld e, l
    db $e4
    ld e, h
    and c
    ld e, h
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    inc b
    inc c
    nop
    inc b
    ld c, $00
    ld a, a
    ld c, $ff
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    inc b
    inc c
    nop
    inc b
    ld c, $00
    inc b
    stop
    ld a, a
    db $10
    rst $38
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    ld a, a
    inc b
    rst $38
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld [$0200], sp
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    nop
    ld [bc], a
    ld c, $00
    ld [bc], a
    stop
    ld [bc], a
    ld [de], a
    nop
    ld a, a
    ld [de], a
    rst $38
    ld b, $00
    nop
    ld [$0002], sp
    inc b
    inc b
    nop
    ld a, a
    inc b
    rst $38
    inc b
    ld b, $00
    inc b
    ld [$0300], sp
    ld b, $00
    rlca
    ld a, [bc]
    nop
    ld [$000c], sp
    ld [$000e], sp
    add b
    ld c, $ff
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    ld a, a
    ld b, $ff
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$0200], sp
    ld a, [bc]
    nop
    ld a, a
    ld a, [bc]
    rst $38
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld a, a
    ld [bc], a
    rst $38
    inc b
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld a, a
    nop
    rst $38
    rrca
    nop
    nop
    inc b
    ld b, $01
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc b
    nop
    inc b
    ld a, a
    nop
    rst $38
    rrca
    nop
    nop
    inc b
    ld [bc], a
    rrca
    inc b
    inc b
    ld c, $04
    ld b, $0d
    inc b
    nop
    inc c
    ld a, a
    nop
    rst $38
    inc c
    ld [$0c00], sp
    ld a, [bc]
    nop
    inc c
    inc c
    nop
    inc c
    ld c, $00
    rst $38
    di
    inc c
    stop
    inc c
    ld [de], a
    nop
    inc c
    inc d
    nop
    inc c
    ld d, $00
    rst $38
    di
    ld a, [bc]
    nop
    nop
    inc c
    ld [bc], a
    nop
    ld a, [bc]
    inc b
    nop
    ld a, a
    nop
    rst $38
    ld a, [bc]
    nop
    nop
    inc c
    inc b
    nop
    ld a, [bc]
    ld [bc], a
    nop
    ld a, a
    nop
    rst $38
    ld a, [bc]
    ld b, $00
    inc c
    ld [$0a00], sp
    ld a, [bc]
    nop
    ld a, a
    ld b, $ff
    ld a, [bc]
    ld b, $00
    inc c
    ld a, [bc]
    nop
    ld a, [bc]
    ld [$7f00], sp
    ld b, $ff
    ld a, [bc]
    inc c
    nop
    inc c
    ld c, $00
    ld a, [bc]
    stop
    ld a, a
    inc c
    rst $38
    ld a, [bc]
    inc c
    nop
    inc c
    stop
    ld a, [bc]
    ld c, $00
    ld a, a
    inc c
    rst $38
    ld e, $00
    nop
    rrca
    ld [bc], a
    ld bc, $0404
    ld [bc], a
    inc bc
    ld b, $03
    ld bc, $ff00
    rst $38
    ldh a, [rSC]
    ld b, $00
    ld [bc], a
    ld [$0201], sp
    ld b, $00
    ld [bc], a
    ld [$ff01], sp
    di
    stop
    nop
    db $10
    ld [bc], a
    nop
    db $10
    inc b
    nop
    rst $38
    or $09
    nop
    nop
    add hl, bc
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    ld c, $00
    nop
    ld a, a
    nop
    rst $38
    ld c, $02
    nop
    ld a, a
    ld [bc], a
    rst $38
    ld c, $04
    nop
    ld a, a
    inc b
    rst $38
    ld c, $06
    nop
    ld a, a
    ld b, $ff
    ld a, a
    nop
    nop
    rst $38

Call_014_5cde:
    db $fc
    ld a, a
    ld [bc], a
    nop
    rst $38
    db $fc
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld a, a
    ld b, $00
    rst $38
    db $fc
    ld a, a
    ld [$ff00], sp
    db $fc
    ld a, a
    ld [$7fff], sp
    ld a, [bc]
    nop
    rst $38
    db $fc
    ld a, a
    inc c
    nop
    rst $38
    db $fc
    ld a, a
    ld c, $00
    rst $38
    db $fc
    ld a, a
    ld a, [de]
    nop
    rst $38
    db $fc
    dec b
    nop
    nop
    ld a, a
    nop
    rst $38
    rst $38
    db $fc
    dec b
    ld [bc], a
    nop
    ld a, a
    ld [bc], a
    rst $38
    rst $38
    db $fc
    ld b, $04
    nop
    ld b, $06
    nop
    ld b, $08
    nop
    rst $38
    or $04
    nop
    nop
    inc b
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    inc b
    nop
    nop
    inc b
    inc d
    nop
    rst $38
    ld sp, hl
    ld b, $00
    nop
    ld b, $02
    nop
    ld b, $04
    nop
    ld b, $06
    nop
    ld b, $08
    nop
    dec b
    ld [bc], a
    nop
    ld bc, $ff00
    rst $38
    ld [$0008], a
    nop
    ld [$0002], sp
    rst $38
    ld sp, hl
    inc c
    nop
    nop
    inc c
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    db $10
    inc b
    nop
    stop
    nop
    db $10
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    ld [$0004], sp
    ld [$0006], sp
    rst $38
    ld sp, hl
    inc c
    inc b
    nop
    inc c
    ld b, $00
    rst $38
    ld sp, hl
    ld a, [bc]
    inc b
    nop
    add b
    ld b, $00
    rst $38
    db $fc
    ld a, [bc]
    inc b
    nop
    add b
    nop
    nop
    rst $38
    db $fc
    db $10
    inc b
    nop
    db $10
    ld b, $00
    rst $38
    ld sp, hl
    ld [$0008], sp
    ld [$000a], sp
    rst $38
    ld sp, hl
    db $10
    ld [$1000], sp
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    ld [$000c], sp
    ld [$000e], sp
    rst $38
    ld sp, hl
    db $10
    inc c
    nop
    db $10
    ld c, $00
    rst $38
    ld sp, hl
    ld a, a
    stop
    inc bc
    ld [de], a
    nop
    inc d
    inc d
    nop
    ld bc, $0114
    rst $38
    di
    db $10
    stop
    db $10
    ld [de], a
    nop
    rst $38
    ld sp, hl
    db $10
    inc d
    nop
    db $10
    ld d, $00
    rst $38
    ld sp, hl
    jr jr_014_5de3

    nop
    jr jr_014_5de8

    nop
    rst $38
    ld sp, hl
    db $10
    jr jr_014_5dd8

jr_014_5dd8:
    db $10
    ld a, [de]
    nop
    rst $38
    ld sp, hl
    jr jr_014_5df7

    nop
    jr jr_014_5dfc

    nop

jr_014_5de3:
    rst $38
    ld sp, hl
    db $10
    inc e
    nop

jr_014_5de8:
    db $10
    ld e, $00
    rst $38
    ld sp, hl
    db $10
    jr nz, jr_014_5df0

jr_014_5df0:
    db $10
    ld [hl+], a
    nop
    rst $38
    ld sp, hl
    db $10
    inc h

jr_014_5df7:
    nop
    db $10
    ld h, $00
    rst $38

jr_014_5dfc:
    ld sp, hl
    db $10
    jr z, jr_014_5e00

jr_014_5e00:
    db $10
    ld a, [hl+]
    nop
    rst $38
    ld sp, hl
    db $10
    inc l
    nop
    db $10
    ld l, $00
    rst $38
    ld sp, hl
    ld [bc], a
    ld [$0200], sp
    inc c
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld [$7f00], sp
    stop
    rst $38
    db $fc
    inc bc
    inc b
    ld [bc], a
    dec b
    ld b, $fe
    ld a, a
    ld b, $00
    rst $38
    db $fc
    inc bc
    inc c
    cp $05
    ld c, $02
    ld a, a
    ld c, $00
    rst $38
    db $fc
    ld a, a
    inc d
    nop
    ld a, a
    ld d, $00
    ld a, a
    jr jr_014_5e40

jr_014_5e40:
    inc b
    nop
    nop
    ld [$0002], sp
    ld [bc], a
    nop
    nop
    ld [HeaderLogo], sp
    ld [bc], a
    nop
    nop
    ld b, $02
    nop
    ld [bc], a
    nop
    nop
    inc b
    inc b
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    rst $38
    db $fc
    ld e, $00
    nop
    db $10
    ld [bc], a
    nop
    stop
    nop
    ld [hl-], a
    ld [bc], a
    nop
    rst $38
    di
    ld e, $04
    nop
    db $10
    ld b, $00
    db $10
    inc b
    nop
    ld [hl-], a
    ld b, $00
    rst $38
    di
    ld e, $0c
    nop
    db $10
    ld c, $00
    db $10
    inc c
    nop
    ld [hl-], a
    ld c, $00
    rst $38
    di
    ld [hl-], a
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [bc]
    nop
    nop
    ld e, $02
    nop
    rst $38
    db $ed
    ld [hl-], a
    inc b
    nop
    ld a, [bc]
    ld b, $00
    ld a, [bc]
    inc b
    nop
    ld a, [bc]
    ld b, $00
    ld a, [bc]
    inc b
    nop
    ld e, $06
    nop
    rst $38
    db $ed
    ld [hl-], a
    stop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    stop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    stop
    ld e, $12
    nop
    rst $38
    db $ed
    ld e, $0a
    nop
    db $10
    inc c
    nop
    db $10
    ld a, [bc]
    nop
    db $10
    inc c
    nop
    rst $38
    di
    inc a
    nop
    nop
    inc a
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    inc a
    stop
    inc a
    ld [de], a
    nop
    rst $38
    ld sp, hl
    jr jr_014_5eed

    nop
    jr jr_014_5ef2

    nop

jr_014_5eed:
    rst $38
    ld sp, hl
    jr @+$04

    nop

jr_014_5ef2:
    jr jr_014_5ef4

jr_014_5ef4:
    nop
    jr @+$04

    nop
    jr jr_014_5efa

jr_014_5efa:
    nop
    jr @+$04

    nop
    jr jr_014_5f00

jr_014_5f00:
    nop
    jr @+$04

    nop
    jr jr_014_5f06

jr_014_5f06:
    nop
    jr @+$04

    nop
    jr jr_014_5f12

    nop
    jr jr_014_5f13

    nop
    jr jr_014_5f18

jr_014_5f12:
    nop

jr_014_5f13:
    jr jr_014_5f19

    nop
    jr jr_014_5f1e

jr_014_5f18:
    nop

jr_014_5f19:
    jr jr_014_5f1f

    nop
    jr jr_014_5f24

jr_014_5f1e:
    nop

jr_014_5f1f:
    jr jr_014_5f25

    nop
    jr jr_014_5f2a

jr_014_5f24:
    nop

jr_014_5f25:
    rst $38
    ret


    db $10
    inc d
    nop

jr_014_5f2a:
    db $10
    ld d, $00
    rst $38
    ld sp, hl
    ld [$0014], sp
    ld [$0016], sp
    rst $38
    ld sp, hl
    db $10
    jr jr_014_5f3a

jr_014_5f3a:
    db $10
    ld a, [de]
    nop
    rst $38
    ld sp, hl
    ld [$0018], sp
    ld [$001a], sp
    rst $38
    ld sp, hl
    db $10
    inc e
    nop
    db $10
    ld e, $00
    rst $38
    ld sp, hl
    ld a, a
    nop
    nop
    rst $38
    db $fc
    ld a, a
    ld [bc], a
    nop
    rst $38
    db $fc
    jr jr_014_5f5b

jr_014_5f5b:
    nop
    jr jr_014_5f60

    nop
    rst $38

jr_014_5f60:
    ld sp, hl
    ld a, a
    inc b
    nop

Call_014_5f64:
    rst $38
    db $fc
    jr jr_014_5f6c

    nop
    jr @+$08

    nop

jr_014_5f6c:
    rst $38
    ld sp, hl
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    inc b
    inc c
    nop
    inc b
    ld c, $00
    rst $38
    ld sp, hl
    db $10
    inc b
    nop
    db $10
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    db $10
    ld a, [bc]
    nop
    db $10
    ld [$ff00], sp
    ld sp, hl
    db $10
    ld b, $00
    db $10
    ld [$ff00], sp
    ld sp, hl
    jr nz, jr_014_5f98

jr_014_5f98:
    nop
    jr nz, jr_014_5f9d

    nop
    rst $38

jr_014_5f9d:
    ld sp, hl
    jr nz, jr_014_5fa4

    nop
    jr nz, jr_014_5fa9

    nop

jr_014_5fa4:
    rst $38
    ld sp, hl
    jr nz, jr_014_5fb0

    nop

jr_014_5fa9:
    rst $38
    db $fc
    jr nz, jr_014_5fb7

    nop
    rst $38
    db $fc

jr_014_5fb0:
    jr nz, jr_014_5fba

    nop
    jr nz, jr_014_5fbf

    nop
    rst $38

jr_014_5fb7:
    ld sp, hl
    jr nz, jr_014_5fc6

jr_014_5fba:
    nop
    jr nz, jr_014_5fcb

    nop
    rst $38

jr_014_5fbf:
    ld sp, hl
    jr nz, jr_014_5fc2

jr_014_5fc2:
    nop
    jr nz, jr_014_5fc7

    nop

jr_014_5fc6:
    rst $38

jr_014_5fc7:
    ld sp, hl
    stop
    nop

jr_014_5fcb:
    ld [$0002], sp
    ld bc, $ff04
    rlca
    inc b
    nop
    stop
    nop
    ld [$0002], sp
    ld bc, $ff04
    rra
    inc b
    nop
    rst $38
    rst $20
    db $10
    ld b, $00
    ld [$0008], sp
    ld bc, $ff0a
    rlca
    ld a, [bc]
    nop
    db $10
    ld b, $00
    ld [$0008], sp
    ld bc, $ff0a
    rra
    ld a, [bc]
    nop
    rst $38
    rst $20
    ld b, $00
    nop
    ld b, $02
    nop
    rst $38
    ld sp, hl
    ld b, $04
    nop
    ld b, $06
    nop
    rst $38
    ld sp, hl
    inc c
    ld [$0c00], sp
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    ld a, a
    ld [$ff00], sp
    db $fc
    ld a, a
    ld a, [bc]
    nop
    rst $38
    db $fc
    inc c
    inc c
    nop
    inc c
    ld c, $00
    rst $38
    ld sp, hl
    ld a, a
    inc c
    nop
    rst $38
    db $fc
    ld a, a
    ld c, $00
    rst $38
    db $fc
    inc c
    stop
    inc c
    ld [de], a
    ld bc, $f9ff
    ld a, a
    stop
    rst $38
    db $fc
    ld a, a
    ld [de], a
    nop
    rst $38
    db $fc
    inc c
    inc d
    nop
    inc c
    ld d, $00
    rst $38
    ld sp, hl
    inc c
    jr jr_014_604d

jr_014_604d:
    inc c
    ld a, [de]
    nop
    rst $38
    ld sp, hl
    ld a, a
    inc d
    nop
    rst $38
    db $fc
    ld a, a
    ld d, $00
    rst $38
    db $fc
    ld a, a
    jr jr_014_605f

jr_014_605f:
    rst $38
    db $fc
    ld a, a
    ld a, [de]
    nop
    rst $38
    db $fc
    ld a, a
    inc h
    nop
    rst $38
    db $fc
    ld a, a
    ld h, $00
    rst $38
    db $fc
    jr jr_014_6096

    nop
    jr jr_014_609b

    nop
    rst $38
    ld sp, hl
    jr jr_014_60a2

    nop
    jr jr_014_60a7

    nop
    rst $38
    ld sp, hl
    inc c
    inc e
    nop
    inc c
    ld e, $01
    rst $38
    ld sp, hl
    inc c
    jr nz, jr_014_608b

jr_014_608b:
    inc c
    ld [hl+], a
    ld bc, $f9ff
    ld a, a
    inc l
    nop
    rst $38
    db $fc
    ld a, a

jr_014_6096:
    ld l, $00
    ld a, a
    jr nc, jr_014_609b

jr_014_609b:
    ld a, a
    ld [hl-], a
    nop
    ld a, a
    ld b, d
    nop
    rst $38

jr_014_60a2:
    db $fc
    ld a, a
    nop
    rst $38
    db $10

jr_014_60a7:
    ld b, $00
    db $10
    ld [bc], a
    nop
    stop
    nop
    rst $38
    ld sp, hl
    jr jr_014_60bf

    nop
    jr @+$10

    nop
    rst $38
    ld sp, hl
    db $10
    stop
    ld c, $0e
    nop

jr_014_60bf:
    ld a, a
    ld c, $ff
    db $10
    ld c, $00
    ld a, a
    db $10
    rst $38
    rst $38
    db $fc
    db $10
    ld [de], a
    nop
    ld c, $06
    nop
    ld a, a
    ld b, $ff
    db $10
    ld b, $00
    ld a, a
    ld [de], a
    rst $38
    rst $38
    db $fc
    jr nz, jr_014_60e3

    nop
    jr nz, jr_014_60e8

    nop
    rst $38
    ld sp, hl

jr_014_60e3:
    ld b, $00
    nop
    ld b, $02

jr_014_60e8:
    nop
    rst $38
    ld sp, hl
    ld b, $04
    nop
    ld b, $06
    nop
    rst $38
    ld sp, hl
    jr jr_014_60fd

    nop
    jr jr_014_6102

    nop
    rst $38
    ld sp, hl
    inc c
    inc c

jr_014_60fd:
    nop
    inc c
    ld c, $00
    rst $38

jr_014_6102:
    ld sp, hl
    db $10
    stop
    db $10
    ld [de], a
    nop
    rst $38
    ld sp, hl
    ld d, b
    nop
    nop
    stop
    nop
    stop
    ld bc, $0046
    ld [bc], a
    ld b, $00
    nop
    ld bc, $ff00
    rst $38
    db $ed
    ld d, b
    ld [bc], a
    nop
    db $10
    ld [bc], a
    nop
    db $10
    ld [bc], a
    ld bc, $0246
    ld [bc], a
    ld b, $02
    nop
    ld bc, $ff02
    rst $38
    db $ed
    ld d, b
    nop
    ld bc, $0020
    nop
    ld b, [hl]
    ld [bc], a
    nop
    ld a, a
    inc b
    nop
    ld a, a
    stop
    rst $38
    db $fc
    ld d, b
    stop
    ld [$0012], sp
    ld [$0010], sp
    ld [$0012], sp
    ld [$0010], sp
    ld [hl-], a
    ld [de], a
    nop
    ld a, a
    inc d
    rst $38
    rst $38
    db $fc
    sub h
    inc c
    nop
    rrca
    ld d, $00
    ld e, $0c
    nop
    ld b, $04
    nop
    ld a, a
    jr @+$01

    rst $38
    db $fc
    ld a, a
    nop
    nop
    ld a, a
    ld [bc], a
    nop
    ld a, a
    inc b
    nop
    ld a, a
    ld b, $00
    ld b, $00
    nop
    ld b, $02
    nop
    ld b, $04
    nop
    ld b, $06
    nop
    rst $38
    di
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    nop
    ld a, [bc]
    inc c
    nop
    ld a, [bc]
    ld c, $00
    rst $38
    di
    add hl, bc
    stop
    add hl, bc
    ld [de], a
    nop
    add hl, bc
    inc d
    nop
    ld [$0016], sp
    ld bc, $ff16
    rst $38
    ldh a, [$09]
    jr jr_014_61a8

jr_014_61a8:
    ld [$001a], sp
    ld [$001c], sp
    rlca
    ld e, $00
    ld bc, $ff1e
    rst $38
    ldh a, [$03]
    jr nz, jr_014_61b9

jr_014_61b9:
    inc bc
    ld [hl+], a
    nop
    inc bc
    jr nz, jr_014_61bf

jr_014_61bf:
    inc bc
    ld [hl+], a
    nop
    rst $38
    di
    ld a, a
    inc h
    nop
    ld [$0000], sp
    ld [$0002], sp
    ld a, a
    ld [bc], a
    rst $38
    ld a, a
    inc b
    nop
    stop
    nop
    db $10
    ld [bc], a
    nop
    db $10
    inc b
    nop
    rst $38
    or $0c
    stop
    inc c
    ld [de], a
    nop
    inc c
    inc d
    nop
    inc c
    ld d, $00
    rst $38
    di
    ld b, $18
    nop
    ld b, $1a
    nop
    rst $38
    ld sp, hl
    ld a, a
    ld e, $00
    rst $38
    db $fc
    ld a, a
    inc e
    nop
    rst $38
    db $fc
    ld [$0000], sp
    inc c
    ld [bc], a
    nop
    inc c
    inc b
    nop
    ld a, a
    inc b
    rst $38
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld [$0a00], sp
    ld b, $00
    ld a, [bc]
    ld [$0a00], sp
    ld b, $00
    rst $38
    db $db
    rrca
    nop
    nop
    rrca
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    rrca
    ld a, $00
    rrca
    ld b, b
    nop
    rst $38
    ld sp, hl
    rrca
    inc b
    nop
    ld a, [bc]
    ld b, $00
    rst $38
    ld sp, hl
    rrca
    inc c
    nop
    rrca
    ld c, $00
    rst $38
    ld sp, hl
    rrca
    ld h, $00
    rrca
    jr z, jr_014_6256

jr_014_6256:
    rst $38
    ld sp, hl
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]

Jump_014_625c:
    inc d
    nop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    inc d
    nop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    inc d
    nop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    inc d
    nop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    stop
    ld a, [bc]
    ld [de], a
    nop
    ld a, [bc]
    stop
    rst $38
    db $db
    inc d
    ld a, [de]
    nop
    ld [$001c], sp
    ld [$001e], sp
    ld [$0020], sp
    ld [$0022], sp
    ld [$001c], sp
    inc d
    ld e, $00
    ld [$001c], sp
    ld [$0022], sp
    ld [$0020], sp
    ld [$001e], sp
    ld [$001c], sp
    rst $38
    db $db
    ld b, $2a
    nop
    ld b, $2c
    nop
    rst $38
    ld sp, hl
    inc d
    ld a, [de]
    nop
    ld [$001c], sp
    ld [$001e], sp
    ld [$0020], sp
    ld [$0022], sp
    ld [$001c], sp
    rst $38
    db $ed
    rrca
    ld l, $00
    rrca
    jr nc, jr_014_62c6

jr_014_62c6:
    rst $38
    ld sp, hl
    rrca
    ld [hl-], a
    nop
    rrca
    inc [hl]
    nop
    rst $38
    ld sp, hl
    rrca
    ld d, $00
    rrca
    jr jr_014_62d6

jr_014_62d6:
    rst $38
    ld sp, hl
    rrca
    ld a, [hl-]
    nop
    rrca
    inc a
    nop
    rst $38
    ld sp, hl
    dec l
    nop
    nop
    rrca
    ld [bc], a
    nop
    rrca
    nop
    nop
    rrca
    ld [bc], a
    nop
    rst $38
    di
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld d, $06
    ld [hl], b
    ld d, $08
    ld [hl], b
    rst $38
    ld sp, hl
    ld a, a
    ld a, [bc]
    nop
    ld a, a
    inc c
    nop
    ld a, a
    ld c, $00
    ld b, $24
    nop
    ld b, $22
    nop
    dec b
    jr nz, jr_014_630d

jr_014_630d:
    ld bc, $ff20
    ld b, $30
    nop
    ld b, $2e
    nop
    dec b
    inc l
    nop
    ld bc, $ff2c
    ld b, $1e
    nop
    ld b, $1c
    nop
    dec b
    ld a, [de]
    nop
    ld bc, $ff1a
    ld b, $2a
    nop
    ld b, $28
    nop
    ld b, $26
    nop
    ld bc, $ff26
    ld b, $20
    nop
    ld b, $22
    nop
    ld b, $24
    nop
    ld bc, $ff24
    ld b, $2c
    nop
    ld b, $2e
    nop
    dec b
    jr nc, jr_014_6349

jr_014_6349:
    ld bc, $ff30
    ld b, $1a
    nop
    ld b, $1c
    nop
    dec b
    ld e, $00
    ld bc, $ff1e
    ld b, $26
    nop
    ld b, $28
    nop
    dec b
    ld a, [hl+]
    nop
    ld bc, $ff2a
    ld d, b
    stop
    inc b
    ld [de], a
    nop
    inc b
    inc d
    nop
    inc b
    ld d, $00
    inc b
    jr jr_014_6373

jr_014_6373:
    rst $38
    ldh a, [rNR23]
    inc [hl]
    ld [hl], b
    jr @+$38

    ld [hl], b
    rst $38
    ld sp, hl
    ld a, a
    ld [hl-], a
    nop
    rst $38
    db $fc
    ld a, a
    ld h, $00
    ld a, a
    inc h
    nop
    jr nz, @+$0a

    nop
    ld a, a
    ld [$7f01], sp
    jr z, jr_014_6391

jr_014_6391:
    jr z, jr_014_63bd

    nop
    ld [$002c], sp
    ld [$002e], sp
    ld [$0030], sp
    ld [$0032], sp
    ld a, a
    ld a, [hl+]
    nop
    rst $38
    db $fc
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    rst $38
    or $08
    stop
    ld [$0012], sp
    ld [$0014], sp
    rst $38
    or $09
    inc c

jr_014_63bd:
    nop
    add hl, bc
    ld c, $00
    add hl, bc
    stop
    add hl, bc
    ld [de], a
    nop
    add hl, bc
    inc d
    nop
    rst $38
    ldh a, [$09]
    ld d, $00
    add hl, bc
    jr jr_014_63d2

jr_014_63d2:
    add hl, bc
    ld a, [de]
    nop
    add hl, bc
    inc e
    nop
    add hl, bc
    ld e, $00
    rst $38
    ldh a, [$09]
    jr nz, jr_014_63e1

    add hl, bc

jr_014_63e1:
    ld [hl+], a
    ld [bc], a
    add hl, bc
    inc h
    inc bc
    add hl, bc
    ld h, $04
    add hl, bc
    jr z, @+$07

    rst $38
    ldh a, [$0a]
    ld a, [hl+]
    ld b, $0a
    inc l
    rlca
    ld a, [bc]
    ld l, $08
    ld a, [bc]
    jr nc, jr_014_6403

    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    rst $38
    ldh a, [$0a]
    ld [$0700], sp

jr_014_6403:
    nop
    nop
    rlca
    ld [bc], a
    nop
    rlca
    inc b
    nop
    ld b, $06
    nop
    ld bc, $ff06
    rst $38
    ldh a, [$7f]
    ld a, [bc]
    nop
    inc d
    nop
    nop
    inc d
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    ld a, b
    nop
    nop
    ld a, b
    nop
    nop
    ld [$0002], sp
    ld [$0000], sp
    ld [$0002], sp
    rst $38
    ldh a, [rIF]
    ld [$0f00], sp
    ld a, [bc]
    nop
    rrca
    inc c
    rst $38
    rst $38
    db $fc
    rrca
    ld c, $00
    rrca
    stop
    rrca
    ld [de], a
    rst $38
    rst $38
    db $fc
    rrca
    nop
    nop
    rrca
    ld [bc], a
    nop
    rrca
    inc b
    nop
    rrca
    ld [bc], a
    nop
    rst $38
    di
    dec b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    ld bc, $ff04
    ld a, a
    ld b, $00
    rst $38
    db $fc
    dec b
    inc b
    nop
    inc b
    ld [bc], a
    nop
    ld bc, $ff02
    ld a, a
    nop
    nop
    rst $38
    db $fc
    inc c
    ld b, $00
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    inc b
    inc c
    nop
    inc b
    ld c, $00
    inc bc
    stop
    ld bc, $ff10
    rst $38
    ld [$0202], a
    nop
    ld [bc], a
    inc b
    ld bc, $0202
    nop
    ld [bc], a
    inc b
    ld bc, $f3ff
    inc bc
    ld b, $00
    inc bc
    ld [$0300], sp
    ld a, [bc]
    nop
    inc bc
    inc c
    nop
    inc bc
    ld c, $00
    inc bc
    stop
    inc bc
    ld [de], a
    nop
    inc bc
    inc d
    nop
    inc bc
    ld d, $00
    inc bc
    jr jr_014_64b2

jr_014_64b2:
    ld [bc], a
    ld a, [de]
    nop
    ld bc, $ff1a
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    rst $38
    di
    jr z, jr_014_64c8

jr_014_64c8:
    nop
    inc d
    ld [bc], a
    nop
    inc d
    nop
    nop
    inc d
    ld [bc], a
    nop
    rst $38
    di
    inc b
    inc b
    nop
    inc b
    ld b, $00
    rst $38
    ld sp, hl
    inc b
    stop
    inc b
    ld [de], a
    nop
    inc bc
    stop
    rlca
    inc d
    nop
    ld [$0016], sp
    ld [$0018], sp
    rst $38
    db $fc
    add hl, bc
    inc b
    nop
    add hl, bc
    ld b, $00
    add hl, bc
    ld [$0800], sp
    ld a, [bc]
    nop
    ld bc, $ff0a
    rst $38
    db $fc
    ld e, $0c
    nop
    ld [de], a
    ld c, $00
    ld bc, $0010
    ld bc, $0012
    rst $38
    ld sp, hl
    dec c
    ld b, $00
    dec c
    ld [$ff00], sp
    ld sp, hl
    ld [$0008], sp
    db $10
    ld a, [bc]
    nop
    ld a, [de]
    inc c
    nop
    ld e, $00
    nop
    ld a, a
    nop
    rst $38
    ld e, d
    ld [bc], a
    nop
    ld d, b
    nop
    nop
    inc d
    ld [bc], a
    nop
    rst $38
    or $6c
    inc b
    nop
    ld a, a
    inc b
    rst $38
    stop
    ld bc, $0210
    nop
    stop
    nop
    db $10
    ld [bc], a
    nop
    db $10
    inc b
    nop
    db $10
    ld b, $00
    db $10
    inc b
    nop
    db $10
    ld b, $00
    rst $38
    rst $20
    ld bc, $0008
    db $10
    ld a, [bc]
    nop
    db $10
    inc c
    nop
    rst $38
    ld sp, hl
    ld [$000e], sp
    ld [$0010], sp
    ld [$0012], sp
    rst $38
    ld sp, hl
    ld [$0010], sp
    ld [$000e], sp
    db $10
    ld a, [bc]
    ld bc, $1008
    nop
    ld [$000e], sp
    ld [$000a], sp
    ld bc, $0008
    rst $38
    db $fc
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld bc, $0014
    db $10
    ld d, $00
    db $10
    jr jr_014_658c

jr_014_658c:
    rst $38
    ld sp, hl
    ld [$001a], sp
    ld [$001c], sp
    ld [$001e], sp
    rst $38
    ld sp, hl
    ld [$001c], sp
    ld [$001a], sp
    db $10
    ld d, $01
    ld [de], a
    nop
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    inc b
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    nop
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    inc b
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    ld b, $00
    ld [de], a
    ld [$1200], sp
    ld a, [bc]
    nop
    ld [de], a
    ld b, $00
    ld [de], a
    ld [$1200], sp
    ld a, [bc]
    nop
    ld [de], a
    inc c
    nop
    ld d, b
    inc c
    rst $38
    rst $38
    rst $08
    inc c
    ld c, $00
    inc c
    db $10
    ld [hl], b
    rst $38
    ld sp, hl
    inc c
    ld [de], a
    nop
    inc c
    inc d
    ld [hl], b
    rst $38
    ld sp, hl
    inc c
    ld d, $00
    inc c
    jr @+$72

    rst $38
    ld sp, hl
    jr jr_014_6608

    nop
    jr jr_014_660d

    nop
    rst $38
    ld sp, hl
    inc c
    ld e, $00
    inc c
    jr nz, jr_014_65fa

jr_014_65fa:
    rst $38
    ld sp, hl
    inc c
    ld [hl+], a
    nop
    inc c
    inc h
    nop
    rst $38
    ld sp, hl
    db $10
    ld h, $00
    db $10

jr_014_6608:
    jr z, jr_014_660a

jr_014_660a:
    rst $38
    ld sp, hl
    db $10

jr_014_660d:
    ld a, [hl+]
    nop
    db $10
    inc l
    nop
    rst $38
    ld sp, hl
    inc d
    inc b
    nop
    jr z, jr_014_6621

    nop
    ld [$0004], sp
    ld a, b
    nop
    nop
    ld a, a

jr_014_6621:
    nop
    rst $38
    rst $38
    db $fc
    inc d
    inc c
    nop
    jr z, jr_014_6632

    nop
    ld [$000c], sp
    ld a, b
    nop
    nop
    ld a, a

jr_014_6632:
    nop
    rst $38
    rst $38
    db $fc
    and d
    nop
    nop
    ld [de], a
    ld [bc], a
    nop
    inc h
    nop
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    nop
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [de], a
    inc b
    nop
    rst $38
    db $fc
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc bc
    nop
    nop
    rlca
    inc b
    nop
    ld [$0106], sp
    ld [$0008], sp
    ld a, a
    ld [$7fff], sp
    ld a, [bc]
    nop
    ld a, a
    inc d
    nop
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    ld [$0000], sp
    ld [$0002], sp
    rlca
    inc b
    nop
    ld bc, $ff04
    ld c, $06
    ld bc, $080e
    ld [bc], a
    ld c, $0a
    inc bc
    ld c, $0c
    inc b
    ld c, $0e
    rst $38
    ld c, $10
    nop
    ld c, $12
    nop
    ld [$0014], sp
    ld [$0016], sp
    ld [$0018], sp
    ld a, a
    inc d
    rst $38
    ld [$0006], sp
    inc d
    stop
    ld [$0112], sp
    ld a, a
    inc d
    nop
    rst $38
    db $fc
    ld [bc], a
    ld [$0200], sp
    ld b, $00
    ld [bc], a
    ld [$0200], sp
    inc b
    nop
    rst $38
    di
    ld [$0004], sp
    inc d
    ld b, $00
    ld [$0108], sp
    ld a, a
    ld a, [bc]
    nop
    rst $38
    db $fc
    ld a, a
    nop
    nop
    ld a, a
    ld [bc], a
    nop
    ld a, a
    inc b
    nop
    ld a, a
    ld b, $00
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    ld [$0006], sp
    rst $38
    di
    ld [$0006], sp
    ld [$0004], sp
    ld [$0002], sp
    ld [$0000], sp
    rst $38
    di
    ld b, $08
    nop
    ld b, $0a
    nop
    ld b, $0c
    nop
    ld b, $0e
    nop
    ld b, $10
    nop
    rst $38
    ldh a, [$c8]
    inc c
    nop
    ld a, [bc]
    nop
    nop
    inc d
    inc c
    nop
    ld a, [bc]
    ld [bc], a
    nop
    inc d
    inc c
    nop
    rst $38
    di
    ret z

    inc c
    nop
    ld a, [bc]
    inc c
    nop
    ld a, [bc]
    inc b
    nop
    ld a, [bc]
    ld b, $00
    ld a, [bc]
    inc c
    nop
    ld a, [bc]
    ld [$0a00], sp
    ld a, [bc]
    nop
    rst $38
    db $ed
    jr nz, jr_014_672f

    nop
    ld [$0006], sp

jr_014_672f:
    ld [$0008], sp
    ld [$0000], sp
    rst $38
    di
    jr nz, jr_014_6743

    nop
    ld [$000c], sp
    ld [$0010], sp
    ld [$0012], sp

jr_014_6743:
    rst $38
    di
    ld a, a
    ld [bc], a
    nop
    ld b, $02
    nop
    ld b, $04
    nop
    dec b
    ld b, $00
    ld bc, $ff06
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld b, $01
    rst $38
    di
    jr z, @+$04

    ld bc, $0414
    ld bc, $0214
    ld bc, $f9ff
    inc d
    ld [bc], a
    ld bc, $007f
    nop
    rst $38
    db $fc
    db $10
    ld b, $02
    db $10
    ld [$ff02], sp
    ld sp, hl
    inc h
    nop
    nop
    ld [$0002], sp
    ld [$0000], sp
    ld [$0004], sp
    ld [$0002], sp
    ld [$0004], sp
    rst $38
    db $ed
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    rst $38
    or $04
    ld b, $00
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    rst $38
    or $9b
    ld c, e
    xor h
    ld c, e
    cp l
    ld c, e
    adc $4b
    rst JumpTable
    ld c, e
    ldh a, [rWX]
    ld bc, $124c
    ld c, h
    inc hl
    ld c, h
    inc [hl]
    ld c, h
    ld b, l
    ld c, h
    ld d, [hl]
    ld c, h
    ld h, a
    ld c, h
    ld a, b
    ld c, h
    adc c
    ld c, h
    sbc d
    ld c, h
    ld [$d042], sp
    ld e, d
    adc a
    ld e, a
    or b
    ld e, a
    pop de
    ld e, a
    inc sp
    ld c, l
    sub b
    ld b, b
    ld de, $1a42
    ld b, d
    add c
    ld b, c
    adc d
    ld b, c
    sub e
    ld b, c
    sbc h
    ld b, c
    and l
    ld b, c
    xor [hl]
    ld b, c
    or a
    ld b, c
    ret nz

    ld b, c
    ret


    ld b, c
    jp nc, $db41

    ld b, c
    db $e4
    ld b, c
    db $ed
    ld b, c
    ld h, d
    ld b, d
    or $41
    sbc d
    ld b, b
    xor e
    ld c, h
    cp h
    ld c, h
    call $de4c
    ld c, h
    pop bc
    ld b, e
    jp z, $d343

    ld b, e
    call c, Call_014_5943
    ld b, d
    ld h, d
    ld b, d
    rst $28
    ld c, h
    nop
    ld c, l
    ld de, $224d
    ld c, l
    ld e, c
    ld b, d
    ld h, d
    ld b, d
    ld b, l
    ld e, [hl]
    ld l, c
    ld h, a
    daa
    ld e, c
    sbc d
    ld h, a
    ld l, b
    ld b, b
    ld l, l
    ld b, b
    ld [hl], d
    ld b, b
    ld [hl], a
    ld b, b
    ld a, h
    ld b, b
    add c
    ld b, b
    add [hl]
    ld b, b
    adc e
    ld b, b
    rst $38
    ld b, c
    ld c, c
    ld [hl], c
    ld e, d
    ld [hl], c
    ld l, e
    ld [hl], c
    ld a, h
    ld [hl], c
    sub l
    ld [hl], c
    xor [hl]
    ld [hl], c
    rst $00
    ld [hl], c
    add sp, $71
    add hl, bc
    ld [hl], d
    jr nc, jr_014_6888

    ld a, [hl-]
    ld b, e
    adc e
    ld b, e
    sub h
    ld b, e
    ld b, d
    ld b, c
    sbc d
    ld b, b
    and h
    ld b, b
    xor c
    ld b, b
    ld e, c
    ld b, d
    jr nc, jr_014_689a

    ld h, d
    ld d, c
    dec c
    ld b, e
    sbc h
    ld c, b
    ld c, h
    ld b, e
    ld d, l
    ld b, e
    cp b
    ld h, b
    add a
    ld e, [hl]
    reti


    ld h, b
    xor c
    ld c, b
    dec sp
    ld d, [hl]
    ld e, c
    ld b, d
    ld [hl], d
    ld d, d
    ld h, [hl]
    ld e, e
    add e
    ld d, d
    ld a, a
    ld e, e
    ld h, [hl]
    ld e, [hl]
    ld e, c
    ld e, c
    ld [hl], d
    ld e, c
    adc e
    ld e, c
    jr nc, jr_014_68c2

    ld e, c
    ld b, d
    add a
    ld e, [hl]
    xor b
    ld e, [hl]
    ld l, e

jr_014_6888:
    ld b, d
    ei
    ld b, d
    jr nc, @+$43

    inc b
    ld b, e
    or e
    ld b, b
    or $6d
    xor c
    ld l, d
    sbc d
    ld b, b
    and h
    ld b, b
    xor c

jr_014_689a:
    ld b, b
    xor [hl]
    ld b, b
    sbc b
    ld e, e
    or $41
    push bc
    ld b, d
    adc $42
    ld [c], a
    ld l, d
    sbc d
    ld b, b
    push hl
    ld b, b
    push bc
    ld b, d
    ld h, d
    ld b, d
    or $41
    jr nc, @+$43

    or $41
    cp l
    ld b, b
    jp nz, $c740

    ld b, b
    call z, $d140
    ld b, b
    sub $40
    db $db

jr_014_68c2:
    ld b, b
    ldh [rLCDC], a
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6910

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    ld c, c
    ld c, d
    ld d, [hl]
    ld c, d
    ld e, [hl]
    ld d, l
    ld l, a
    ld d, l
    ld h, e
    ld c, d
    ld [hl], b
    ld c, d
    add b
    ld d, l
    sub c
    ld d, l
    ldh a, [$57]
    sub c
    ld l, e
    ld h, h
    ld c, a
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6936

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    inc hl
    ld b, d
    inc l
    ld b, d
    ld d, l
    ld h, b
    db $76
    ld h, b
    sub a
    ld h, b
    ld e, c
    ld b, d
    ld h, d
    ld b, d
    or $41
    add hl, sp
    ld b, c
    ld b, d
    ld b, c
    ld [hl], h

jr_014_6910:
    ld b, d
    or e
    ld b, d
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    ld l, e
    ld b, d
    ret


    ld b, h
    db $e3
    ld b, h
    ld a, [bc]
    ld b, l
    inc h
    ld b, l
    inc h
    ld b, l
    ld c, e
    ld b, c
    cp h
    ld b, d
    cp d
    ld c, [hl]
    bit 1, [hl]
    ld a, l
    ld b, d
    adc a
    ld b, d
    xor l
    ld c, c
    cp d
    ld c, c
    sbc b
    ld b, d
    xor d

jr_014_6936:
    ld b, d
    call c, $ed4e
    ld c, [hl]
    ld a, l
    ld b, d
    add [hl]
    ld b, d
    sbc b
    ld b, d
    and c
    ld b, d
    ld a, $45
    ld c, e
    ld b, l
    ld e, b
    ld b, l
    ld h, l
    ld b, l
    db $76
    ld b, l
    add e
    ld b, l
    sub b
    ld b, l
    sbc l
    ld b, l
    rra
    ld b, [hl]
    inc l
    ld b, [hl]
    ld d, e
    ld b, [hl]
    ld h, b
    ld b, [hl]
    dec b
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    add hl, sp
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    jr nc, jr_014_69a6

    add hl, sp
    ld b, c
    ld b, d
    ld b, c
    ld l, e
    ld b, d
    ld [hl], h
    ld b, d
    or e
    ld b, d
    ret


    ld b, h
    db $e3
    ld b, h
    ld a, [bc]
    ld b, l
    inc h
    ld b, l
    ld c, e
    ld b, c
    dec de
    ld b, h
    ld d, h
    ld b, c
    ld l, a
    ld b, c
    cp $4e
    rrca
    ld c, a
    jr nz, jr_014_69d4

    ld sp, $424f
    ld c, a
    ld d, e
    ld c, a
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_69d6

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add a
    ld b, [hl]
    sub h
    ld b, [hl]
    cp e
    ld b, [hl]
    ret z

    ld b, [hl]
    ld l, l
    ld b, [hl]
    ld a, d

jr_014_69a6:
    ld b, [hl]
    and c
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    rst $28
    ld b, [hl]
    db $fc
    ld b, [hl]
    inc hl
    ld b, a
    jr nc, jr_014_69fa

    push de
    ld b, [hl]
    ld [c], a
    ld b, [hl]
    add hl, bc
    ld b, a
    ld d, $47
    dec a
    ld b, a
    ld c, d
    ld b, a
    ld d, a
    ld b, a
    ld h, h
    ld b, a
    ld [hl], c
    ld b, a
    ld a, [hl]
    ld b, a
    adc e
    ld b, a
    jp z, $df56

    ld d, [hl]
    db $db
    ld c, a
    db $ec
    ld c, a
    and b
    ld d, [hl]
    or l

jr_014_69d4:
    ld d, [hl]
    db $f4

jr_014_69d6:
    ld d, [hl]
    add hl, bc
    ld d, a
    inc [hl]
    ld c, b
    ld b, c
    ld c, b
    ld d, $43
    rra
    ld b, e
    ld a, [de]
    ld c, b
    daa
    ld c, b
    ld c, [hl]
    ld c, b
    ld e, e
    ld c, b
    ld c, b
    ld d, a
    ld e, l
    ld d, a
    sbc h
    ld d, a
    or c
    ld d, a
    ld e, $57
    inc sp
    ld d, a
    ld [hl], d
    ld d, a
    add a
    ld d, a
    db $fd

jr_014_69fa:
    ld c, a
    ld c, $50
    rra
    ld d, b
    jr nc, jr_014_6a51

    sbc b
    ld b, a
    and l
    ld b, a
    ld b, c
    ld d, b
    ld d, d
    ld d, b
    jr nc, jr_014_6a4c

    ld l, e
    ld b, d
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    jr nc, jr_014_6a54

    ld l, e
    ld b, d
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, @+$43

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    ld d, h
    ld b, c
    ld e, l
    ld b, c
    sub $44
    ldh a, [rLY]
    rla
    ld b, l
    ld sp, $a445
    ld e, c
    cp l
    ld e, c
    ld e, c
    ld b, d
    ld h, d
    ld b, d
    ld h, a
    ld b, b
    ld h, e
    ld d, b
    ld [hl], h
    ld d, b
    add l
    ld d, b
    sub [hl]
    ld d, b
    and a
    ld d, b
    cp b
    ld d, b
    jr nc, @+$43

    ld l, e
    ld b, d
    ld [hl], h

jr_014_6a4c:
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d

jr_014_6a51:
    ld e, l
    ld b, c
    ret


jr_014_6a54:
    ld d, b
    jp c, $3950

    ld b, c
    ld b, d
    ld b, c
    jr nc, jr_014_6a9e

    ld l, e
    ld b, d
    jr nc, @+$43

    nop
    ld b, h
    add hl, bc
    ld b, h
    ld [de], a
    ld b, h
    ld b, d
    ld b, c
    or e
    ld b, d
    ld c, e
    ld b, c
    cp h
    ld b, d
    call nz, $d145
    ld b, l
    db $d3
    ld e, b
    add sp, $58
    db $fd
    ld e, b
    ld [de], a
    ld e, c
    and d
    ld d, l
    or e
    ld d, l
    call nz, $d555
    ld d, l
    sbc $45
    db $eb
    ld b, l
    ld hl, sp+$45
    and $55
    inc h
    ld b, h
    add $57
    db $db
    ld d, a
    or d
    ld b, a
    cp a
    ld b, a
    call z, $d947
    ld b, a
    and $47
    di
    ld b, a
    nop

jr_014_6a9e:
    ld c, b
    dec c
    ld c, b
    call z, $dd4d
    ld c, l
    xor $4d
    jr nc, jr_014_6aea

    add hl, sp
    ld b, c
    ld l, e
    ld b, d
    ld [hl], h
    ld b, d
    jr nc, jr_014_6af2

    add hl, sp
    ld b, c
    ld l, e
    ld b, d
    ld [hl], h
    ld b, d
    jr nc, jr_014_6afa

    add hl, sp
    ld b, c
    push hl
    ld b, b
    ld [hl], h
    ld b, d
    ld b, b
    ld e, c
    rst $38
    ld c, l
    dec [hl]
    ld b, d
    rst $38
    ld c, l
    sbc d
    ld b, b
    and h
    ld b, b
    xor c
    ld b, b
    xor [hl]
    ld b, b
    sbc d
    ld b, b
    ld h, d
    ld b, d
    or $41
    dec [hl]
    ld b, d
    add a
    ld e, [hl]
    xor b
    ld e, [hl]
    ret nz

    ld l, b
    rst $38
    ld c, l
    ld c, h
    ld d, [hl]
    rst $38
    ld c, l
    ld b, b
    ld e, c
    ld e, c
    ld b, d
    ld h, d
    ld b, d
    sbc d

jr_014_6aea:
    ld b, b
    pop de
    ld b, b
    ld h, d
    ld b, d
    or $41
    ret


jr_014_6af2:
    ld e, [hl]
    ld [$0b5e], a
    ld e, a
    jr nc, jr_014_6b3a

    ld h, h

jr_014_6afa:
    ld c, a
    ld [hl], l
    ld c, a
    add [hl]
    ld c, a
    sbc d
    ld b, b
    ld l, b
    ld c, b
    ld [hl], l
    ld c, b
    add d
    ld c, b
    adc a
    ld c, b
    sbc d
    ld b, b
    and h
    ld b, b
    ld b, b
    ld e, c
    ld e, c
    ld b, d
    push bc
    ld b, d
    push hl
    ld b, b
    sbc d
    ld b, b
    dec l
    ld b, h
    ld a, [hl-]
    ld b, h
    rst $38
    ld c, l
    db $10
    ld c, [hl]
    ld b, a
    ld b, h
    ld d, h
    ld b, h
    ld h, c
    ld b, h
    ld l, [hl]
    ld b, h
    pop de
    ld b, b
    ld h, d
    ld b, d
    or $41
    jr nc, jr_014_6b70

    ld l, e
    ld b, d
    ld a, e
    ld b, h
    ld hl, $324e
    ld c, [hl]
    ld b, e
    ld c, [hl]
    ld d, h

jr_014_6b3a:
    ld c, [hl]
    adc b
    ld b, h
    sub l
    ld b, h
    and d
    ld b, h
    ld c, h
    ld d, [hl]
    ld h, c
    ld d, [hl]
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6b90

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    xor a
    ld b, h
    cp h
    ld b, h
    inc b
    ld c, c
    db $76
    ld d, [hl]
    adc e
    ld d, [hl]
    db $ec
    ld h, e
    dec d
    ld h, h
    ld a, $64
    sbc d
    ld b, b
    and h
    ld b, b
    xor c
    ld b, b
    ld h, l
    ld c, [hl]
    db $76
    ld c, [hl]
    add a

jr_014_6b70:
    ld c, [hl]
    sbc b
    ld c, [hl]
    xor c
    ld c, [hl]
    sbc d
    ld b, b
    ld h, d
    ld b, d
    or $41
    xor [hl]
    ld b, b
    push hl
    ld b, b
    ld [$ef40], a
    ld b, b
    dec [hl]
    ld b, d
    ld a, $42
    db $f4
    ld b, b
    ld b, a
    ld b, d
    ld d, b
    ld b, d
    xor a
    ld h, l
    ld e, l

jr_014_6b90:
    ld h, l
    add [hl]
    ld h, l
    cp $69
    scf
    ld l, d
    ld d, h
    ld l, e
    ld [hl], b
    ld l, d
    ld a, [hl+]
    ld h, [hl]
    ld d, b
    ld l, h
    dec e
    ld d, d
    ld l, $52
    ccf
    ld d, d
    ld d, b
    ld d, d
    ld h, c
    ld d, d
    jp hl


    ld e, d
    ld [bc], a
    ld e, e
    dec de
    ld e, e
    inc [hl]
    ld e, e
    ld c, l
    ld e, e
    adc c
    ld l, h
    jp nc, $1b6c

    ld l, l
    ld h, h
    ld l, l
    xor l
    ld l, l
    sub b
    ld l, [hl]
    add hl, de
    ld l, a
    and [hl]
    ld l, a
    inc sp
    ld [hl], b
    ret nz

    ld [hl], b
    inc l
    ld e, a
    ld c, l
    ld e, a
    ld c, e
    ld b, c
    cp h
    ld b, d
    ld e, l
    ld b, c
    ld a, b
    ld b, c
    ld b, d
    ld b, c
    or e
    ld b, d
    ld d, h
    ld b, c
    ld l, a
    ld b, c
    dec c
    ld d, c
    db $eb
    ld d, b
    db $eb
    ld d, b
    db $fc
    ld d, b
    dec c
    ld d, c
    ld e, $51
    ld l, a
    ld b, c
    rst $10
    ld b, d
    cpl
    ld d, c
    ldh [rSCY], a
    jp hl


    ld b, d
    ld b, b
    ld d, c
    jr nc, jr_014_6c36

    ld a, [c]
    ld b, d
    ld d, c
    ld d, c
    adc b
    ld c, l
    sbc c
    ld c, l
    xor d
    ld c, l
    cp e
    ld c, l
    ld l, [hl]
    ld e, a
    ld h, [hl]
    ld c, l
    ld [hl], a
    ld c, l
    jr nc, jr_014_6c4a

    add hl, sp
    ld b, c
    jr nc, jr_014_6c4e

    add a
    ld e, [hl]
    xor b
    ld e, [hl]
    ld b, h
    ld c, l
    ld d, l
    ld c, l
    ld a, [c]
    ld e, a
    inc de
    ld h, b
    adc $6b
    rrca
    ld l, h
    ccf
    ld l, [hl]
    inc [hl]
    ld h, b
    db $fc
    ld h, a
    dec l
    ld l, b
    ld e, [hl]
    ld l, b
    ld e, [hl]
    ld b, e
    ld h, a
    ld b, e
    ld [hl], b
    ld b, e
    ld a, c
    ld b, e
    jr nc, jr_014_6c72

    ld l, e
    ld b, d
    ld a, [hl-]
    ld b, e
    ld b, e

jr_014_6c36:
    ld b, e
    and [hl]
    ld d, c
    or a
    ld d, c
    ld [$fb51], a
    ld d, c
    add h
    ld d, c
    sub l
    ld d, c
    ret z

    ld d, c
    reti


    ld d, c
    jp nz, $9a58

jr_014_6c4a:
    ld b, b
    sbc a
    ld b, b
    ld h, d

jr_014_6c4e:
    ld d, c
    ld [hl], e
    ld d, c
    inc c
    ld d, d
    jr nc, @+$43

    ld [$215a], sp
    ld e, d
    ld a, [hl-]
    ld e, d
    ld d, e
    ld e, d
    ld l, h
    ld e, d
    add l
    ld e, d
    sbc [hl]
    ld e, d
    or a
    ld e, d
    ld e, c
    ld e, b
    ld l, [hl]
    ld e, b
    add e
    ld e, b
    ld h, a
    ld h, h
    sub b
    ld h, h
    adc a
    ld l, b
    push af

jr_014_6c72:
    ld l, b
    ld a, [hl+]
    ld l, c
    ld e, a
    ld l, c
    sub h
    ld l, c
    jp hl


    ld h, d
    ld c, $63
    dec b
    ld e, b
    ld a, [de]
    ld e, b
    cpl
    ld e, b
    ld b, h
    ld e, b
    jr z, jr_014_6cca

    sub h
    ld d, d
    and l
    ld d, d
    or [hl]
    ld d, d
    rst $00
    ld d, d
    ret c

    ld d, d
    ld sp, $e943
    ld d, d
    ld a, [$0b52]
    ld d, e
    inc e
    ld d, e
    dec l
    ld d, e
    ld a, c
    ld c, c
    add [hl]
    ld c, c
    xor c
    ld b, b
    and h
    ld b, b
    sbc d
    ld b, b
    cp b
    ld b, b
    ld b, b
    ld c, e
    dec sp
    ld d, [hl]
    or c
    ld e, e
    jp z, $e35b

    ld e, e
    db $fc
    ld e, e
    dec d
    ld e, h
    ld l, $5c
    ld b, a
    ld e, h
    ld a, [$1b60]
    ld h, c
    sub e
    ld e, l
    or b
    ld e, l
    inc a
    ld h, c
    ld e, l
    ld h, c
    inc sp
    ld h, e
    ld e, b

jr_014_6cca:
    ld h, e
    ld a, [hl]
    ld h, c
    sbc a
    ld h, c
    ret nz

    ld h, c
    pop hl
    ld h, c
    ret c

    ld h, l
    ld bc, $7d66
    ld h, e
    and d
    ld h, e
    and [hl]
    ld b, e
    xor a
    ld b, e
    jr nc, jr_014_6d22

    sub e
    ld c, c
    and b
    ld c, c
    ld sp, hl
    ld d, e
    ld a, [bc]
    ld d, h
    ld c, h
    ld b, e
    ld d, l
    ld b, e
    cp b
    ld h, b
    add a
    ld e, [hl]
    reti


    ld h, b
    sbc d
    ld b, b
    ld a, [hl+]
    ld [hl], d
    dec sp
    ld [hl], d
    ld c, h
    ld [hl], d
    ld e, l
    ld [hl], d
    ld l, [hl]
    ld [hl], d
    ld [hl], a
    ld [hl], d
    add b
    ld [hl], d
    sub c
    ld [hl], d
    sbc d
    ld [hl], d
    and e
    ld [hl], d
    or h
    ld [hl], d
    push bc
    ld [hl], d
    sub $72
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6d5a

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    ld b, l
    ld c, c
    ld d, d

jr_014_6d22:
    ld c, c
    cp b
    ld b, e
    ld e, c
    ld b, d
    ld h, d
    ld b, d
    ld d, l
    ld c, l
    sub d
    ld e, h
    ld h, a
    ld b, b
    ld a, $53
    ld h, b
    ld e, h
    ld a, c
    ld e, h
    bit 4, a
    ld c, a
    ld d, e
    ld h, b
    ld d, e
    ld [hl], c
    ld d, e
    add d
    ld d, e
    or [hl]
    ld c, b
    jp $d048


    ld c, b
    db $dd
    ld c, b
    ld [$f748], a
    ld c, b
    inc b
    ld c, c
    ld de, $9349
    ld d, e
    and h
    ld d, e
    or l
    ld d, e
    add $53
    rst $10
    ld d, e
    ld a, e

jr_014_6d5a:
    ld b, h
    ld hl, $324e
    ld c, [hl]
    ld b, e
    ld c, [hl]
    ld d, h
    ld c, [hl]
    add sp, $53
    ld e, $49
    ld e, a
    ld c, c
    ld l, h
    ld c, c
    dec de
    ld d, h
    inc l
    ld d, h
    dec a
    ld d, h
    ld c, [hl]
    ld d, h
    dec hl
    ld c, c
    jr c, jr_014_6dc0

    and h
    ld e, c
    cp l
    ld e, c
    ld a, $45
    ret


    ld b, h
    db $e3
    ld b, h
    db $e3
    ld b, h
    sbc b
    ld b, d
    xor d
    ld b, d
    ld c, e
    ld b, c
    cp h
    ld b, d
    jr nc, jr_014_6dce

    ld l, e
    ld b, d
    jr nc, jr_014_6dd2

    ld l, e
    ld b, d
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    add hl, sp
    ld b, c
    ld b, d
    ld b, c
    ret


    ld b, h
    db $e3
    ld b, h
    ld c, e
    ld b, c
    ld c, e
    ld b, c
    jr nc, jr_014_6de6

    ld l, e
    ld b, d
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    dec b
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    rra
    ld b, [hl]
    inc l
    ld b, [hl]
    jr nc, jr_014_6df6

    ld l, e
    ld b, d
    or e
    ld b, d
    ld b, l
    ld c, c
    ld d, d
    ld c, c
    cp b
    ld b, e
    push de

jr_014_6dc0:
    ld b, [hl]
    ld [c], a
    ld b, [hl]
    ld a, [hl]
    ld b, a
    jr nc, jr_014_6e08

    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h

jr_014_6dce:
    ld b, d
    ld b, d
    ld b, c
    ld c, e

jr_014_6dd2:
    ld b, c
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6e1e

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    or e
    ld b, d
    cp h

jr_014_6de6:
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    jr nc, @+$43

    add hl, sp
    ld b, c
    ld l, e
    ld b, d
    ld [hl], h
    ld b, d
    jr nc, jr_014_6e36

    ld l, e

jr_014_6df6:
    ld b, d
    add hl, sp
    ld b, c
    add hl, sp
    ld b, c
    ld l, e
    ld b, d
    ei
    ld b, d
    jr nc, jr_014_6e42

    inc b
    ld b, e
    ld [hl], h
    ld b, d
    or e
    ld b, d
    add hl, sp

jr_014_6e08:
    ld b, c
    ld b, d
    ld b, c
    call $b95d
    ld h, h
    ld [bc], a
    ld h, d
    ld [c], a
    ld h, h
    dec bc
    ld h, l
    inc hl
    ld h, d
    ld b, h
    ld h, d
    inc [hl]
    ld h, l
    ld h, l
    ld h, d
    ld d, a

jr_014_6e1e:
    ld h, [hl]
    add h
    ld h, [hl]
    db $dd
    ld e, h
    add [hl]
    ld h, d
    xor e
    ld e, h
    ret


    ld l, c
    ld b, $5d
    rst $00
    ld h, e
    call nz, $1b5c
    ld l, e
    sbc b
    ld e, b
    xor l
    ld e, b
    and a

jr_014_6e36:
    ld h, d
    or c
    ld h, [hl]
    sbc $66
    cpl
    ld e, l
    ld c, b
    ld e, l
    db $eb
    ld d, b
    db $fc

jr_014_6e42:
    ld d, b
    dec c
    ld d, c
    ld e, $51
    rst $00
    ld c, c
    call nc, $8149
    ld d, h
    pop hl
    ld c, c
    xor $49
    dec a
    ld b, a
    jr nc, jr_014_6e96

    ld l, e
    ld b, d
    ld [$f748], a
    ld c, b
    rst $20
    ld [hl], d
    db $f4
    ld [hl], d
    dec b
    ld [hl], e
    ld d, $73
    ld e, a
    ld d, h
    ld [hl], b
    ld d, h
    inc hl
    ld [hl], e
    inc [hl]
    ld [hl], e
    dec c
    ld b, c
    adc e
    ld b, e
    add d
    ld b, e
    sub d
    ld d, h
    and e
    ld d, h
    or h
    ld d, h
    push bc
    ld d, h
    sub $54
    rst $20
    ld d, h
    ld hl, sp+$54
    add hl, bc
    ld d, l
    xor $5d
    dec bc
    ld e, [hl]
    ld a, [de]
    ld d, l
    dec hl
    ld d, l
    inc a
    ld d, l
    ld c, l
    ld d, l
    push hl
    ld b, e
    xor $43
    ld sp, hl
    ld b, b
    cp $40
    inc bc

jr_014_6e96:
    ld b, c
    ld [$6741], sp
    ld b, b
    add hl, de
    ld d, [hl]
    ld a, [hl+]
    ld d, [hl]
    sub a
    ld c, d
    and h
    ld c, d
    rst $30
    ld d, l
    ld [$7d56], sp
    ld c, d
    adc d
    ld c, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6ef2

    ld c, e
    ld b, c
    add hl, sp
    ld b, c
    jr nc, jr_014_6ef8

    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add hl, sp
    ld b, c
    or e
    ld b, d
    ld l, e
    ld b, d
    ei
    ld b, d
    or e
    ld b, d
    ld [hl], h
    ld b, d
    ld l, e
    ld b, d
    ld [hl], h
    ld b, d
    jr nc, jr_014_6f0e

    jr nc, @+$43

    add hl, sp
    ld b, c
    ld b, d
    ld b, c
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6f22

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6f32

    ld l, e

jr_014_6ef2:
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add hl, sp

jr_014_6ef8:
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6f42

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h

jr_014_6f0e:
    ld b, d
    jr nc, @+$43

    ld l, e
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6f62

    ld l, e

jr_014_6f22:
    ld b, d
    ld b, d
    ld b, c
    ld c, e
    ld b, c
    ei
    ld c, c
    ld [$154a], sp
    ld c, d
    ld [hl+], a
    ld c, d
    cpl
    ld c, d
    inc a

jr_014_6f32:
    ld c, d
    ld l, e
    ld b, d
    jr nc, @+$43

    jr nc, jr_014_6f7a

    ld l, e
    ld b, d
    push hl
    ld b, b
    xor c
    ld b, b
    and h
    ld b, b
    sbc d

jr_014_6f42:
    ld b, b
    ld h, d
    ld b, d
    sbc a
    ld b, b
    sbc l
    ld b, e
    sbc d
    ld b, b
    jr nc, jr_014_6f8e

    add hl, sp
    ld b, c
    ld h, a
    ld b, b
    jr nc, jr_014_6f94

    ld l, e
    ld b, d
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    rst $30
    ld b, e
    jr nc, @+$43

    ret


    ld b, h
    db $e3
    ld b, h
    db $fd

jr_014_6f62:
    ld b, h
    xor d
    ld b, l
    or a
    ld b, l
    rrca
    ld h, a
    inc a
    ld h, a
    ld [de], a
    ld b, c
    rla
    ld b, c
    inc e
    ld b, c
    ld hl, $2641
    ld b, c
    dec hl
    ld b, c
    jr z, jr_014_6fd7

    sbc d

jr_014_6f7a:
    ld b, b
    ret z

    ld h, d
    ld h, c
    ld e, l
    ld a, d
    ld e, l
    add hl, sp
    ld b, c
    ld [hl], h
    ld b, d
    or e
    ld b, d
    cp h
    ld b, d
    jr nc, jr_014_6fcc

    ld l, e
    ld b, d
    ld b, d

jr_014_6f8e:
    ld b, c
    ld c, e
    ld b, c
    jr nc, jr_014_6fd4

    ld l, e

jr_014_6f94:
    ld b, d
    jr nc, jr_014_6fd8

    ld l, e
    ld b, d
    or c
    ld c, d
    cp [hl]
    ld c, d
    bit 1, d
    ret c

    ld c, d
    push hl
    ld c, d
    ld a, [c]
    ld c, d
    rst $38
    ld c, d
    inc c
    ld c, e
    add hl, de
    ld c, e
    ld h, $4b
    inc sp
    ld c, e
    ld e, c
    ld b, d
    ld h, d
    ld b, d
    sbc d
    ld b, b
    add a
    ld e, [hl]
    xor b
    ld e, [hl]
    ld h, [hl]
    ld b, c
    cp b
    ld b, e
    ld c, l
    ld c, e
    ld e, d
    ld c, e
    ld h, a
    ld c, e
    ld [hl], h
    ld c, e
    add c
    ld c, e
    adc [hl]
    ld c, e
    inc d
    inc d
    inc d

jr_014_6fcc:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

jr_014_6fd4:
    inc d
    inc d
    inc d

jr_014_6fd7:
    inc d

jr_014_6fd8:
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

Call_014_70f0:
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
    inc d

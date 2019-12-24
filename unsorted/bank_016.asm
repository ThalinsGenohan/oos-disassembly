; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX

    ld e, c
    ld [hl], a
    or h
    ld h, d
    xor e
    ld b, c
    ld b, $31
    rst $38
    ld a, a
    reti


    ld a, [hl]
    ld c, [hl]
    ld a, c
    dec b
    ld [hl], h
    rst $38
    ld a, a
    ld e, $0f
    ld l, [hl]
    ld c, l
    inc bc
    ld e, h
    xor [hl]
    ld de, $77ff
    jp c, $1402

    nop
    sbc $7f
    ld d, [hl]
    ld a, a
    ret nc

    ld a, [hl]
    ld c, d
    ld a, [hl]
    xor [hl]
    ld de, $77ff
    jp c, $0b02

    ld bc, $11ae
    rst $38
    ld [hl], a
    jp c, $1402

    nop
    ret c

    ld bc, $77ff
    jp c, $1402

    nop
    xor [hl]
    ld de, $7e4a
    jp c, $1402

    nop
    sub a
    ld bc, $77ff
    jp c, $1402

    nop
    xor [hl]
    ld de, $77ff
    jp c, Jump_016_4a02

    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld b, b
    ld d, l
    ld [hl], b
    ld c, d
    rst JumpTable
    rra
    ld c, h
    ld a, [hl]
    ld c, h

Jump_016_4063:
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]

Jump_016_406c:
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    sbc a
    ld a, c
    db $fc
    ld c, h
    xor a
    jr z, jr_016_40c5

    ld a, [hl]
    ld l, c
    scf
    ld h, [hl]

Call_016_407d:
    ld h, $41
    dec e
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld c, h
    ld a, [hl]
    ld l, c
    scf
    ld c, c
    ld a, [hli]
    ld b, c
    dec e
    ld c, h
    ld a, [hl]
    and $76
    rst $00
    ld d, c
    sub $40
    db $ec
    nop
    rst $38
    nop
    rst $38
    scf
    nop
    nop
    add hl, sp
    ld [bc], a
    sub a
    ld l, h
    dec bc
    inc [hl]
    nop
    nop
    rst $38
    scf
    ld c, d
    add hl, sp
    add h
    jr nz, jr_016_40af

jr_016_40af:
    nop
    rst $38
    scf
    add hl, sp
    ld [bc], a
    ld c, h
    ld bc, $0000
    rst $38
    ld a, a
    ld b, b
    ld a, [hl]
    xor [hl]
    inc bc
    nop
    nop
    rst $38
    scf
    ld b, b
    ld a, [hl]
    ld c, h

jr_016_40c5:
    ld bc, $0000
    rst $38
    scf
    xor [hl]
    inc bc
    ld c, h
    ld bc, $0000
    ld b, b
    ld a, [hl]
    sub a
    ld l, h
    dec bc
    inc [hl]
    nop
    nop
    ld d, d
    ld c, d
    adc d
    ld [bc], a
    cp h
    inc de
    nop
    nop
    ld d, d
    ld c, d
    ld d, e
    ld [hl], l
    ld [$0050], sp
    nop
    ld d, d
    ld c, d
    ld c, $7d
    inc b
    ld d, h
    nop
    nop
    ld d, d
    ld c, d
    ld sp, hl
    dec d
    adc $00
    nop
    nop
    ld d, d
    ld c, d
    ld b, $12
    rrca
    dec c
    nop
    nop
    ld d, d
    ld c, d
    sbc a
    nop
    or b
    nop
    nop
    nop
    ld d, d
    ld c, d
    ccf
    ld [bc], a
    inc a
    nop
    nop
    nop
    ld d, d
    ld c, d
    rst $38
    scf
    rra
    nop
    nop
    nop
    db $ec
    nop
    rst $38
    nop
    rst $38
    scf
    nop
    nop
    rst JumpTable
    ld bc, $09ec
    ld l, c
    nop
    nop
    nop
    rst JumpTable
    ld bc, $600b
    dec b
    jr nc, jr_016_412f

jr_016_412f:
    nop
    rst JumpTable
    ld bc, $0913
    ld l, c
    nop
    nop
    nop
    rst JumpTable
    ld bc, $007a
    ld l, c
    nop
    nop
    nop
    db $ec
    add hl, bc
    ld a, d
    nop
    ld l, c
    nop
    nop
    nop
    inc de
    add hl, bc
    ld a, d
    nop
    ld l, c
    nop
    nop
    nop
    ld a, d
    nop
    rrca
    nop
    ld l, c
    nop
    nop
    nop
    ld d, d
    ld c, d
    db $eb
    ld [bc], a
    add e
    ld bc, $0000
    ld d, d
    ld c, d
    ld d, e
    ld [hl], l
    ld [$0050], sp
    nop
    ld d, d
    ld c, d
    pop de
    ld a, h
    ld [$0054], sp
    nop
    ld d, d
    ld c, d
    ld sp, hl
    dec d
    adc $00
    nop
    nop
    ld d, d
    ld c, d
    ld a, [hl-]
    inc bc
    adc l
    ld bc, $0000
    ld d, d
    ld c, d
    sbc a
    nop
    or b
    nop
    nop
    nop
    ld d, d
    ld c, d
    sub b
    ld a, [hl]
    and h
    ld a, l
    nop
    nop
    ld d, d
    ld c, d
    sub b
    ld a, [hl]
    and h
    ld a, l
    nop
    nop
    dec [hl]
    ld a, [bc]
    rst $38
    ld h, a
    ccf
    inc d
    ld b, l
    nop
    ld [hl], h
    ld [bc], a
    ldh a, [rSB]
    ld a, [hli]
    ld bc, $0022
    dec [hl]
    ld a, [bc]
    dec hl
    ld bc, $0085
    nop
    nop
    ret c

    ld c, d
    ldh [rPCM34], a
    ld h, b
    add hl, sp
    ld b, l
    nop
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    nop
    nop
    ld d, d
    ld c, d
    ld d, e
    ld [hl], l
    ld [$0050], sp
    nop
    ld d, d
    ld c, d
    ld c, $7d
    inc b
    ld d, h
    nop
    nop
    ld d, d
    ld c, d
    ld sp, hl
    dec d
    adc $00
    nop
    nop
    ld d, d
    ld c, d
    ld b, $12
    rrca
    dec c
    nop
    nop
    ld d, d
    ld c, d
    sbc a
    nop
    or b
    nop
    nop
    nop
    ld d, d
    ld c, d
    sbc a
    scf
    rst $20
    ld a, l
    nop
    nop
    ld d, d
    ld c, d
    rst $38
    ld d, e
    sbc a
    nop
    nop
    nop
    cp a
    ld h, a
    ei
    ld l, [hl]
    db $76
    db $76
    pop af
    ld a, l
    sbc $00
    add hl, hl
    inc bc
    add [hl]
    ld [bc], a
    ld h, b
    nop
    add h
    ld bc, $0353
    add [hl]
    ld [bc], a
    ld h, b
    nop
    rst $28
    rlca
    add hl, hl
    inc bc
    add [hl]
    ld [bc], a
    and e
    dec [hl]
    dec de
    ld a, e
    cp b
    ld [hl], d
    ld [hl], l
    ld a, d
    inc sp
    db $76
    dec de
    ld a, e
    cp b
    ld [hl], d
    inc c
    ld e, [hl]
    and e
    dec [hl]
    rst $28
    rlca
    add hl, hl
    inc bc
    add [hl]
    ld [bc], a
    push hl
    ld bc, $2b1f
    add hl, hl
    inc bc
    add [hl]
    ld [bc], a
    ld h, b
    nop
    rst $38
    ld a, a
    nop
    nop
    and d
    ld [hli], a
    ld e, [hl]
    ld d, a
    rst $38
    ld a, a
    and l
    inc d
    inc h
    ld e, $d9
    ld h, $ff
    ld a, a
    and l
    inc d
    sub d
    ld hl, $3257
    rst $38
    ld a, a
    ret


    add hl, sp
    ld c, l
    ld c, d
    pop de
    ld e, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    ld d, d
    add hl, de
    ld e, c
    ld h, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    inc [hl]
    ld a, a
    rst $38
    ld a, a
    ld a, [de]
    dec sp
    nop
    nop
    rst $38
    ld a, a
    or h
    dec h
    cp l
    ld [bc], a
    nop
    nop
    inc [hl]
    ld a, a
    ld a, [de]
    dec sp
    rst $28
    inc c
    nop
    nop
    inc [hl]
    ld a, a
    rst $38
    ld b, [hl]
    or h
    dec h
    nop
    nop
    ld a, [de]
    ld b, a
    inc sp
    ld a, [hl-]
    add hl, de
    inc bc
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld b, [hl]
    xor d
    ld [hli], a
    nop
    nop
    inc [hl]
    ld a, a
    ld [hl-], a
    ld [bc], a
    xor d
    ld [hli], a
    nop
    nop
    add hl, de
    inc bc
    ld [hl-], a
    ld [bc], a
    rst $28
    inc c
    nop
    nop
    ld [hl], $7f
    db $db
    ld a, a
    rst $08
    ld d, d
    db $d3
    ld a, [hl]
    sub d
    ld [hl], e
    db $ec
    ld e, [hl]
    daa
    ld b, [hl]
    and h
    dec a
    add hl, bc
    ld a, [hl-]
    inc de
    ld h, e
    ld l, h
    ld b, [hl]
    and d
    dec h
    ld [hl], $7f
    rst $28
    ld d, [hl]
    adc h
    ld c, d
    ld c, c
    ld a, $ba
    ld [hl], a
    inc de
    ld h, e
    adc h
    ld c, d
    jp $ba31


    ld [hl], a
    inc de
    ld h, e
    ld l, l
    ld c, d
    jp $3029


    daa
    adc e
    ld [hli], a
    jr z, jr_016_42fc

    and d
    ld hl, $228b
    adc h
    ld c, d
    jr z, jr_016_4304

    ld l, l
    ld c, d
    rst $38
    ld a, a
    nop
    nop

jr_016_42fc:
    or h
    dec h
    cp l
    ld a, $d2
    ld a, [hl]
    nop
    nop

jr_016_4304:
    xor d
    ld [hli], a
    sbc e
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    or h
    dec h
    cp l
    ld [bc], a
    cp l
    ld a, $00   ; xor a
    nop
    or h
    dec h
    xor d
    ld [hli], a
    xor d
    ld [hli], a
    nop
    nop
    ld [hl-], a
    ld [bc], a
    rst $38

jr_016_431f:
    ld a, a
    jp nc, $007e

    nop
    or h
    dec h
    cp l
    ld [bc], a
    cp l
    ld a, $00   ; xor a
    nop
    or h
    dec h
    jp nc, $d27e

    ld a, [hl]
    rst $28
    inc c
    ld [hl-], a
    ld [bc], a
    nop
    nop
    ld c, d
    ld a, [hl]
    cp [hl]
    ld a, a
    ld e, a
    ld [hl], $f8
    jr z, jr_016_431f

    ld a, a
    ld d, [hl]
    ld a, a
    ret nc

    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld c, d
    ld a, [hl]
    rst $38
    ld a, a
    ldh [rP1], a
    ret nc

    ld a, [hl]
    ret nc

    ld a, [hl]
    or e
    dec h
    ld c, l
    dec h
    ld b, a
    dec h
    ret nc

    ld a, [hl]
    call z, $2826
    ld a, [de]
    ld b, a
    dec h
    jr c, jr_016_4388

    or e
    dec h
    ld c, l
    dec h
    ld b, a
    dec h
    jr c, jr_016_4390

    or e
    dec h
    ld c, l
    dec h
    ret nc

    ld a, [hl]
    sbc $7f
    call z, $2826
    ld a, [de]
    ld d, [hl]
    ld a, a
    rst $38
    ld a, a
    rra
    nop
    or h
    dec h

Call_016_437e:
    db $f4
    nop
    nop
    ld a, h
    inc [hl]
    ld a, a
    or h
    dec h
    rst $38
    ld a, a

jr_016_4388:
    rst $38
    ld a, a
    cp l
    ld [bc], a
    push de
    ld bc, $4069

jr_016_4390:
    rst $38
    ld a, [hl]
    adc c
    ld a, l
    rst $38
    ld a, a
    nop
    ld d, h
    rst $38
    ld a, a
    jr nc, jr_016_439f

    ret z

    dec d
    db $f4

jr_016_439f:
    nop
    rst $38
    ld a, a
    push af
    ld [bc], a
    xor d
    ld [hli], a
    ld [hl-], a
    ld [bc], a
    rst $38
    ld a, a
    or h
    dec h
    ld d, b
    ld [bc], a
    push af
    ld [bc], a
    rst $38
    ld a, a
    ld a, [de]
    ld b, a
    inc sp
    ld a, [hl-]
    ld l, c
    ld b, b
    rst $38
    ld a, a
    db $76
    ld d, $b1
    ld bc, $0a0e
    rst $38
    ld a, a
    or c
    ld bc, $010c
    add a
    nop
    rst $38
    ld a, a
    sbc b
    ld [hl], a
    adc h
    ld c, d
    ld c, c
    ld a, $ff
    ld a, a
    ld [hl], $7f
    db $d3
    ld a, [hl]
    rst $08
    ld d, d
    rst $38
    ld a, a
    db $76
    ld d, $b1
    ld bc, $010c
    rst $38
    ld a, a
    inc b
    ld bc, $1e82
    db $fd
    ld c, [hl]
    rst $38
    ld a, a
    ld h, a
    inc b
    db $10
    ld de, $2658
    rst $38
    ld a, a
    ld l, [hl]
    ld a, [hl]
    ld c, d
    add hl, hl
    nop
    nop
    adc a
    ld a, [hl]
    sbc $7f
    ld d, [hl]
    ld a, a
    ret nc

    ld a, [hl]
    adc a
    ld a, [hl]
    rra
    nop
    rra
    nop
    ld b, a
    dec h
    pop af
    ld a, [hl]
    call z, $2826
    ld a, [de]
    ld b, a
    dec h
    jp nc, $4f5e

    ld c, [hl]
    add e
    dec l
    ldh [rNR14], a
    ld e, d
    ld a, [hl-]
    sub b
    add hl, hl
    add e
    dec l
    ldh [rNR14], a
    sub e
    ld [hl-], a
    adc $29
    add e
    dec l
    ldh [rNR14], a
    call $d25a
    ld a, d
    inc sp
    ld l, a
    adc h
    ld e, d
    call $895a
    ld a, $1a
    ld a, [hl-]
    adc h
    ld e, d
    ld h, e
    ld hl, $3e89
    daa
    ld [hl-], a
    call nz, Call_016_6329
    ld hl, $0a67
    inc b
    ld a, [bc]
    add b
    add hl, bc
    rst $38
    ld a, a
    ld c, a
    ld c, [hl]
    add e
    dec l
    ldh [rNR14], a
    rst $38
    ld a, a
    sub b
    add hl, hl
    add e
    dec l
    ld e, d
    ld a, [hl-]
    rst $38
    ld a, a
    adc $29
    add e
    dec l
    sub e
    ld [hl-], a
    rst $38
    ld a, a
    ld h, a
    ld a, [bc]
    inc b
    ld a, [bc]
    add b
    add hl, bc
    rst $38
    ld a, a
    nop
    nop
    ld sp, hl
    ld bc, $3fff
    add a
    nop
    jp $ca01


    ld [bc], a
    sub c
    inc bc
    add a
    nop
    rst $38
    ld [bc], a
    or a
    add hl, bc
    sub c
    inc bc
    add a
    nop
    rst $38
    ld [bc], a
    jp z, $b702

    add hl, bc
    add a
    nop
    inc c
    ld a, a
    db $fd
    ld a, a
    sub c
    inc bc
    add a
    nop
    adc $14
    or a
    add hl, bc
    sub c
    inc bc
    add a
    nop
    adc $14
    ld e, h
    inc d
    sub c
    inc bc
    add a
    nop
    adc $14
    dec de
    ld c, b
    sub c
    inc bc
    add a
    nop
    adc $14
    dec de
    ld c, b
    ld a, a
    ld [hl], c
    add b
    ld a, $c3
    ld bc, $02ca
    sub c
    inc bc
    add b
    ld a, $18
    ld h, $1f
    ld b, a
    rst $38
    ld [hl], a
    add b
    ld a, $18
    ld h, $1f
    ld b, a
    jp $8001


    ld a, $df
    ld e, e
    ld de, $3a0d
    ld [de], a
    add b
    ld a, $ce
    inc d
    or a
    add hl, bc
    rst $38
    ld [bc], a
    add b
    ld a, $64
    ld [hl], l
    sbc b
    ld a, a
    ld d, $00
    add b
    ld a, $0c
    ld a, a
    db $fd
    ld a, a
    rst $20
    ld a, l
    rlca
    ld c, [hl]
    ld b, [hl]
    dec [hl]
    ld h, d
    inc l
    nop
    inc d
    ld l, c
    dec l
    ld h, [hl]
    dec [hl]
    ld h, d
    inc l
    nop
    inc d
    rlca
    ld c, [hl]
    ld l, c
    dec l
    push bc
    jr nz, jr_016_44ff

jr_016_44ff:
    inc d
    rlca
    ld c, [hl]
    add e
    add hl, sp
    add d
    jr nc, jr_016_4507

jr_016_4507:
    inc d
    ld d, d
    nop
    dec de
    ld c, $55
    ld bc, $0000
    jr jr_016_453e

    ld e, a
    nop
    ld d, d
    nop
    nop
    nop
    ld e, a
    nop
    dec de
    ld c, $52
    nop
    nop
    nop
    ld e, a
    nop
    ld d, l
    ld bc, $2c18
    nop
    nop
    rst $38
    ld a, a
    sbc [hl]
    ld c, d
    reti


    dec [hl]
    nop
    nop
    sbc [hl]
    ld c, d
    ld l, c
    ld [bc], a
    add e
    ld bc, $0000
    reti


    dec [hl]
    add e
    ld bc, $029f

jr_016_453e:
    nop
    nop
    ld d, d
    nop
    inc a
    ld c, $55
    ld bc, $0000
    inc a
    ld c, $5f
    nop
    ld d, d
    nop
    nop
    nop
    reti


    dec [hl]
    sbc a
    ld [bc], a
    add e
    ld bc, $0000
    rst JumpTable
    ld c, d
    sbc a
    ld [bc], a
    reti


    dec [hl]
    nop
    nop
    ld b, b

jr_016_4561:
    ld a, [hl]
    ld d, d
    nop
    ld l, e
    nop
    nop
    nop
    reti


    dec [hl]
    ld l, c
    ld [bc], a
    add e
    ld bc, $0000
    rst $38
    ld a, a
    ld a, a
    dec sp
    ld d, d
    nop
    nop
    nop
    rst $38
    ld a, a
    ld a, a
    inc bc
    ld hl, sp+$01
    rrca
    ld bc, $7e1f
    ld e, h
    ld e, e
    ld [de], a
    nop
    sbc a
    ld [bc], a
    rst $38
    ld a, a
    ld a, a
    inc bc
    ld hl, sp+$01
    or c
    ld bc, $7fff
    ld d, d
    nop
    ld d, [hl]
    ld [bc], a
    or c
    ld bc, $7fff
    rst $38
    ld a, a
    ld l, [hl]
    ld a, [hl]
    dec b
    ld h, c
    rra
    ld a, [hl]
    rst $38
    ld a, a
    ld a, a
    inc bc
    nop
    nop
    or $7f
    ld a, a
    dec sp
    ld d, d
    nop
    nop
    nop
    nop
    nop
    daa
    dec l
    and h
    jr jr_016_4561

    dec a
    push de
    ld a, d
    ld sp, $aa5e
    dec a
    nop
    nop
    ld a, [hl]
    ld a, a
    push de
    ld a, d
    ld sp, $005e
    nop
    rst $38
    ld a, a
    sub $5a
    add hl, hl
    dec h
    nop
    nop
    ccf
    dec sp
    jr jr_016_45f2

    ld [hl], d
    ld de, $0009
    jr jr_016_45f8

    ld d, a
    ld a, [hl-]
    ld [hl], d
    ld de, $0009
    ccf
    dec sp
    ld a, c
    ld hl, $1172
    add hl, bc
    nop
    ld a, c
    ld hl, $1e18
    ld [hl], d
    ld de, $0009
    ccf
    dec sp

jr_016_45f2:
    ld a, [c]
    dec a
    adc [hl]
    add hl, sp
    add hl, bc
    nop

jr_016_45f8:
    ld a, [c]
    dec a
    jr jr_016_461a

    ld [hl], d
    ld de, $0009
    ld [hl], e
    ld [hl-], a
    ldh a, [$31]
    ld [hl], d
    ld de, $0009
    ccf
    dec sp
    ld [hl], e
    ld [hl-], a
    ldh a, [$31]
    nop
    nop
    nop
    ld h, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld h, h

jr_016_461a:
    ldh [$7f], a
    nop
    ld b, d
    nop
    nop
    ccf
    dec sp
    add hl, sp
    ld [hli], a
    ld d, c
    ld de, $0009
    ccf
    dec sp
    add hl, sp
    ld [hli], a
    ld d, c
    ld de, $0000
    ccf
    dec sp
    add hl, sp
    ld [hli], a
    add hl, bc
    nop
    nop
    nop
    add hl, sp
    ld [hli], a
    ld d, c
    ld de, $0009
    nop
    nop
    nop
    ld h, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld h, h
    ldh [$7f], a
    nop
    ld b, d
    nop
    nop
    nop

Jump_016_4651:
    ld h, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld h, h
    ldh [$7f], a
    nop
    ld b, d
    nop
    nop
    nop
    ld h, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld h, h
    ldh [$7f], a
    nop
    ld b, d
    nop
    nop
    nop
    ld h, h
    rst $38
    ld a, a
    xor l
    dec [hl]

jr_016_4676:
    nop
    nop
    nop
    ld h, h
    ldh [$7f], a
    nop
    ld b, d
    nop
    nop
    dec b
    inc a
    cp e
    ld a, [hl-]
    sub h
    add hl, sp
    ret


    jr c, jr_016_468e

    inc a
    dec h
    ld c, d
    ld h, h
    ld e, c

jr_016_468e:
    call nz, $054c
    inc a
    ld [de], a
    ld c, c
    xor l
    ld d, b
    adc c
    ld c, h
    dec b
    inc a
    ld a, [hli]
    ld c, h
    add hl, bc
    ld b, h
    rlca
    inc a
    ld l, h
    ld h, b
    ld a, [hli]
    ld c, h
    ld b, $40
    inc b
    inc [hl]
    inc b
    inc [hl]
    inc c
    ld d, [hl]
    ld l, d
    ld b, c
    call nz, Call_016_5228
    ld e, [hl]
    inc c
    ld d, [hl]
    ld l, d
    ld b, c
    inc b
    inc [hl]
    dec b
    jr nc, jr_016_4676

    ld a, [hl-]
    sub h
    add hl, sp
    ret


    jr c, @-$44

    ld a, a
    ld d, l
    ld a, a
    rst $08
    ld a, [hl]
    ld l, d
    ld a, [hl]
    ld d, l
    ld a, a
    jp hl


    ld d, d
    ld h, e
    ld b, d
    ret nz

    dec l
    ld a, [$832a]
    ld b, [hl]
    ld [hli], a
    ld a, [hl-]
    ret nz

    dec l
    ld d, l
    ld a, a
    add d
    ld b, [hl]
    dec hl
    ld h, d
    ret nz

    dec l
    ld d, l
    ld a, a
    adc a
    ld h, [hl]
    dec hl
    ld h, d
    cp d
    ld a, a
    nop
    ld h, h
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    nop
    ld h, h
    ldh [$7f], a
    nop
    ld b, d
    nop
    nop
    nop
    ld h, h
    rst $38
    ld a, a
    ld [hl], d
    ld a, a
    xor h
    ld a, d
    nop
    ld h, h
    rst $38
    db $76
    rst AddAToHL
    ld a, [hl]
    or c
    ld a, [hl]
    scf
    ld a, e
    call z, $2745
    ld sp, $2d06
    sbc a
    ld d, $3f
    ld d, $fd
    ld de, $059b
    rra
    inc hl
    sbc a
    ld d, $fd
    ld de, $4b7f
    db $fd
    ld de, $1556
    ld [de], a
    dec c
    nop
    nop
    cp a
    ld h, e
    db $fd
    add hl, hl
    ld [de], a
    dec c
    rst $28
    inc c
    sbc a
    ld d, $fd
    ld de, $0d12
    rst $28
    inc c
    rra
    inc hl
    sbc a
    ld d, $fd
    ld de, $0d12
    cp e
    ld a, a
    ld d, [hl]
    ld a, a
    pop de
    ld a, [hl]
    ld l, h
    ld a, d
    ld d, [hl]
    ld a, a
    rst $20
    ld c, [hl]
    ld h, a
    ld b, d
    ld l, b
    ld sp, $7fbb
    ld [hl], e
    ld [hl], $ff
    ld [bc], a
    ld l, b
    ld sp, $0066
    ld l, h
    ld a, d
    call nc, $2b15
    dec b
    ld h, [hl]
    nop
    ld d, [hl]
    ld a, a
    rst $38
    ld [bc], a
    inc de
    ld c, $66
    nop
    ld a, [bc]
    rlca
    rst $38
    ld [bc], a
    inc de
    ld c, $ea
    ld [$7f56], sp
    rst $38
    ld [bc], a
    sbc a
    ld c, a
    ld h, [hl]
    nop
    ld a, [bc]
    inc bc
    ld b, [hl]
    ld [bc], a
    add e
    ld bc, $6400
    rst JumpTable
    ld c, a
    db $db
    ld [hl], $73
    ld hl, $6400
    ld [hl], e
    ld [hl], $ff
    ld [bc], a
    ld b, a
    ld a, $ff
    ld a, a
    xor e
    ld a, [hl]
    ld b, [hl]
    ld [bc], a
    db $eb
    nop
    rst $38
    ld a, a
    dec hl
    dec b
    rst $38
    ld [bc], a
    inc de
    ld c, $00
    ld h, h
    rst $38
    ld a, a
    sub d
    ld a, a
    db $ec
    ld a, [hl]
    nop
    ld h, h
    rra
    ld [hl], a
    rst $30
    ld a, [hl]
    pop de
    ld a, [hl]
    ld [hl], a
    ld a, a
    inc c
    ld c, d
    ld h, a
    dec [hl]
    ld b, [hl]
    ld sp, $7fff
    inc d
    ld bc, $00ab
    rst $38
    inc sp
    reti


    ld a, a
    ld [hl], e
    ld a, e
    db $ed
    ld a, [hl]
    ld b, a
    ld a, d
    ld c, h
    ld a, a
    and d
    ld a, [hl]
    ld b, h
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    db $dd
    ld a, a
    ld [bc], a
    ld a, [hl]
    jp nz, $8275

    ld [hl], c
    db $dd
    ld a, a
    add d
    ld [hl], c
    add d
    ld e, c
    ld h, e
    ld c, l
    db $dd
    ld a, a
    nop
    nop
    or l
    ld d, [hl]
    rst $38
    ld a, a
    sub a
    ld a, e
    ld b, a
    ld a, d
    dec b
    ld l, d
    db $e4
    ld h, l
    rst $38
    ld b, a
    dec hl
    dec h
    db $f4
    ld sp, $537e
    rst $38
    ld b, a
    ld h, d
    ld l, h
    xor b
    ld a, [hl]
    reti


    ld a, a
    rst $38
    ld a, a
    xor a
    ld e, d
    pop af
    dec h
    dec hl
    ld b, c
    rst $38
    ld a, a
    xor a
    ld e, d
    sub [hl]
    ld [hl], a
    dec hl
    ld b, c
    rst $38
    ld a, a
    ld a, h
    ld b, $d6
    dec b
    ld c, a
    add hl, hl
    rst $38
    ld a, a
    db $10
    rla
    ld l, l
    ld [bc], a
    xor e
    add hl, bc
    rst $38
    ld a, a
    or [hl]
    ld h, [hl]
    rst $08
    ld c, c
    dec hl
    ld b, c
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst $38
    ld a, a
    dec l
    inc d
    dec a
    inc c
    ld e, a
    ld b, a
    nop
    nop
    ld b, [hl]
    ld bc, $024f
    ld h, b
    inc h
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    and d
    ld [hli], a
    ld e, a
    ld b, a
    rst $38
    ld a, a
    nop
    nop
    inc bc
    ld a, [hl]
    ld e, a
    ld b, a
    rst $38
    ld a, a
    nop
    nop
    ccf
    inc d
    ld e, a
    ld b, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    dec b
    ld e, a
    ld b, a
    rst $38
    ld a, a
    xor [hl]
    ld a, [hl]
    nop
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    rst JumpTable
    ld a, [de]
    dec de
    nop
    nop
    nop
    rst JumpTable
    ld de, $7ea4
    add sp, $03
    nop
    nop
    dec a
    inc c
    and h
    ld a, [hl]
    ld e, a
    ld b, a
    nop
    nop
    add sp, $03
    and h
    ld a, [hl]
    ld e, $02
    nop
    nop
    rst $38
    ld a, a
    add h
    db $10
    rst $28
    dec a
    sbc h
    ld [hl], e
    rst $38
    ld b, a
    nop
    nop
    and d
    ld [hli], a
    ccf
    inc d
    rst $38
    ld b, a
    ld [hli], a
    nop
    inc d
    add hl, bc
    sbc a
    ld e, e
    rst $38
    ld a, a
    nop
    nop
    and b
    ld d, [hl]
    rst $38
    ld b, [hl]
    db $eb
    ld c, l
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld b, a
    nop
    nop
    ld b, b
    ld [bc], a
    ld sp, hl
    ld h, a
    rst $38
    ld b, a
    nop
    nop
    ld [hli], a
    ld b, [hl]
    rst $38
    ld b, [hl]
    inc sp
    ld h, d
    nop
    nop
    ld h, a
    ld a, [hl-]
    push af
    ld h, e
    rst $38
    ld a, a
    nop
    nop
    ld [hl], h
    ld bc, $3b9f
    rst $38
    ld a, a
    and [hl]
    db $10
    jp nc, $ff29

    ld h, a
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, a
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    inc c
    db $10
    dec de
    inc d
    ld e, a
    ld b, a
    nop
    nop
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    jr nz, jr_016_48fa

jr_016_48fa:
    sbc e
    ld [bc], a
    sub l
    ld bc, $00cb
    nop
    nop
    jp nc, $9829

    ld a, [hl-]
    rst $38
    ld h, a
    nop
    nop
    dec de
    nop
    jp nc, $ff29

    ld h, a
    nop
    nop
    dec l
    dec [hl]
    jp nc, $ff29

    ld h, a
    nop
    nop
    dec l
    dec [hl]
    jp nc, $9829

    ld a, [hl-]
    nop
    nop
    jp z, $2d28

    dec [hl]
    jp nc, $b329

    ld a, a
    ld c, [hl]
    ld e, d
    ld c, b
    dec a
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    rst $38
    ld a, a
    add d
    jr @+$01

    ccf
    nop
    nop
    ldh [$7f], a
    nop
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    ldh [$7f], a
    nop
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    ldh [$7f], a
    rst $38
    ld a, a
    rst $38
    ccf
    nop
    nop
    ldh [$7f], a
    rst $38
    ld a, a
    rst $38
    ccf
    nop
    nop
    ldh [$7f], a
    rst $38
    ld a, a
    rst $38
    ccf
    nop
    nop
    ldh [$7f], a
    rst $38
    ld a, a
    rst $38
    ccf
    nop
    nop
    rst $38
    dec sp
    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    jr jr_016_49c8

    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    rst $38
    dec sp
    jr jr_016_49d2

    db $ec
    nop
    nop
    nop

jr_016_49c8:
    rst $38
    dec sp
    db $f4
    inc de
    and l
    ld [bc], a
    nop
    nop
    rst $38
    ld h, e

jr_016_49d2:
    call nz, Call_016_607e
    ld e, l
    nop
    nop
    rst $38
    dec sp
    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    cp $1f
    ld hl, $812b
    dec c
    nop
    nop
    jr c, jr_016_49fc

    ld hl, $812b
    dec c
    nop
    nop
    cp $1f
    jr c, jr_016_4a06

    ld l, $11
    nop
    nop
    cp $1f
    inc b
    inc bc

jr_016_49fc:
    ldh [rSB], a
    nop
    nop
    rst $38
    ld e, e

Jump_016_4a02:
    add e
    ld a, l
    ld h, b
    ld b, h

jr_016_4a06:
    nop
    nop
    add c
    dec c
    cp $1f
    ld l, $11
    nop
    nop
    cp a
    ccf
    sbc [hl]
    ld de, $0015
    nop
    nop
    sub a
    dec e
    sbc [hl]
    ld de, $0015
    nop
    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    cp a
    ccf
    ld e, h
    ld [bc], a
    sub h
    ld bc, $0000
    sbc b
    ld [hl], a
    inc bc
    ld d, [hl]
    jp nz, $0034

    nop
    cp a
    ccf
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $415e
    add hl, sp
    nop
    nop
    or $41
    call nz, $415e
    add hl, sp
    nop
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    rst JumpTable
    ld a, a
    sub h
    ld a, d
    adc h
    ld [hl], l
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    nop
    nop
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$2270], a
    inc a
    rst $38
    dec sp
    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    jr jr_016_4a88

    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    rst $38
    dec sp
    jr jr_016_4a92

    db $ec
    nop
    nop
    nop

jr_016_4a88:
    rst $38
    dec sp
    db $f4
    inc de
    and l
    ld [bc], a
    nop
    nop
    rst $38
    ld h, e

jr_016_4a92:
    call nz, $267e
    ld a, [hl-]
    nop
    nop
    rst $38
    dec sp
    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    cp $1f
    ld hl, $812b
    dec c
    nop
    nop
    jr c, jr_016_4abc

    ld hl, $812b
    dec c
    nop
    nop
    cp $1f
    jr c, jr_016_4ac6

    ld l, $11
    nop
    nop
    cp $1f
    inc b
    inc bc

jr_016_4abc:
    ldh [rSB], a
    nop
    nop
    rst $38
    ld e, e
    add e
    ld a, l
    add b
    add hl, hl

jr_016_4ac6:
    nop
    nop
    add c
    dec c
    cp $1f
    ld l, $11
    nop
    nop
    cp a
    ccf
    sbc [hl]
    ld de, $0015
    nop
    nop
    sub a
    dec e
    sbc [hl]
    ld de, $0015
    nop
    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    cp a
    ccf
    ld e, h
    ld [bc], a
    sub h
    ld bc, $0000
    sbc b
    ld [hl], a
    inc bc
    ld d, [hl]
    ld h, l
    dec l
    nop
    nop
    cp a
    ccf
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $415e
    add hl, sp
    nop
    nop
    or $41
    call nz, $415e
    add hl, sp
    nop
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    rst JumpTable
    ld a, a
    sub h
    ld a, d
    adc h
    ld [hl], l
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $827d
    ld b, b
    nop
    nop
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$2270], a
    inc a
    rst $38
    dec sp
    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    jr jr_016_4b48

    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    rst $38
    dec sp
    jr jr_016_4b52

    db $ec
    nop
    nop
    nop

jr_016_4b48:
    rst $38
    dec sp
    db $f4
    inc de
    and l
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a

jr_016_4b52:
    call nz, Call_016_607e
    ld e, l
    ld l, h
    ld b, a
    rst $38
    dec sp
    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    cp $1f
    ld hl, $812b
    dec c
    nop
    nop
    jr c, jr_016_4b7c

    ld hl, $812b
    dec c
    nop
    nop
    cp $1f
    jr c, jr_016_4b86

    ld l, $11
    nop
    nop
    cp $1f
    inc b
    inc bc

jr_016_4b7c:
    ldh [rSB], a
    nop
    nop
    rst $38
    ld e, e
    add e
    ld a, l
    ld h, b
    ld b, h

jr_016_4b86:
    inc c
    ld e, a
    add c
    dec c
    cp $1f
    ld l, $11
    nop
    nop
    cp a
    ccf
    sbc [hl]
    ld de, $0015
    nop
    nop
    sub a
    dec e
    sbc [hl]
    ld de, $0015
    nop
    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    cp a
    ccf
    ld e, h
    ld [bc], a
    sub h
    ld bc, $0000
    sbc b
    ld [hl], a
    inc bc
    ld d, [hl]
    jp nz, $8c34

    ld [hl], d
    cp a
    ccf
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $415e
    add hl, sp
    nop
    nop
    or $41
    call nz, $415e
    add hl, sp
    nop
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    rst JumpTable
    ld a, a
    sub h
    ld a, d
    adc h
    ld [hl], l
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    ld [hl], c
    ld a, [hl]
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$2270], a
    inc a
    rst $38
    dec sp
    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    jr jr_016_4c08

    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    rst $38
    dec sp
    jr jr_016_4c12

    db $ec
    nop
    nop
    nop

jr_016_4c08:
    rst $38
    dec sp
    db $f4
    inc de
    and l
    ld [bc], a
    nop
    nop
    rst $38
    ld h, e

jr_016_4c12:
    call nz, $057e
    ld l, $00
    nop
    rst $38
    dec sp
    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    cp $1f
    ld hl, $812b
    dec c
    nop
    nop
    jr c, jr_016_4c3c

    ld hl, $812b
    dec c
    nop
    nop
    cp $1f
    jr c, jr_016_4c46

    ld l, $11
    nop
    nop
    cp $1f
    inc b
    inc bc

jr_016_4c3c:
    ldh [rSB], a
    nop
    nop
    rst $38
    ld e, e
    add e
    ld a, l
    ret nz

    dec [hl]

jr_016_4c46:
    nop
    nop
    add c
    dec c
    cp $1f
    ld l, $11
    nop
    nop
    cp a
    ccf
    sbc [hl]
    ld de, $0015
    nop
    nop
    sub a
    dec e
    sbc [hl]
    ld de, $0015
    nop
    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    cp a
    ccf
    ld e, h
    ld [bc], a
    sub h
    ld bc, $0000
    sbc b
    ld [hl], a
    inc bc
    ld d, [hl]
    ld h, l
    dec l
    nop
    nop
    cp a
    ccf
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $415e
    add hl, sp
    nop
    nop
    or $41
    call nz, $415e
    add hl, sp
    nop
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    rst JumpTable
    ld a, a
    sub h
    ld a, d
    adc h
    ld [hl], l
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    nop
    nop
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$2270], a
    inc a
    rst $38
    dec sp
    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    rst $38
    ld a, a
    call nz, Call_016_607e
    ld e, l
    nop
    nop
    rst $38
    dec sp
    jr jr_016_4cd2

    db $ec
    nop
    nop
    nop
    rst $38
    dec sp
    db $f4
    inc de
    and l
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a

jr_016_4cd2:
    call nz, Call_016_607e
    ld e, l
    ld l, h
    ld b, a
    rst $38
    dec sp
    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    cp $1f
    ld hl, $812b
    dec c
    nop
    nop
    rst $38
    ld a, a
    add e
    ld a, l
    ld h, b
    ld b, h
    nop
    nop
    cp $1f
    jr c, jr_016_4d06

    ld l, $11
    nop
    nop
    cp $1f
    inc b
    inc bc
    ldh [rSB], a
    nop
    nop
    rst $38
    ld a, a
    add e
    ld a, l
    ld h, b
    ld b, h

jr_016_4d06:
    inc c
    ld e, a
    add c
    dec c
    cp $1f
    ld l, $11
    nop
    nop
    cp a
    ccf
    sbc [hl]
    ld de, $0015
    nop
    nop
    db $76
    ld a, a
    inc bc
    ld d, [hl]
    jp nz, $0034

    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    cp a
    ccf
    ld e, h
    ld [bc], a
    sub h
    ld bc, $0000
    ld [hl], a
    ld [hl], e
    inc bc
    ld d, [hl]
    jp nz, $8c34

    ld [hl], d
    cp a
    ccf
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $415e
    add hl, sp
    nop
    nop
    rst JumpTable

jr_016_4d49:
    ld a, a
    call nz, Call_016_407d
    ld c, b
    nop
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    rst JumpTable
    ld a, a
    sub h
    ld a, d
    adc h
    ld [hl], l
    nop
    nop
    ld a, h
    ld a, e
    call nz, Call_016_407d
    ld c, b
    ld [hl], c
    ld a, [hl]
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$2270], a
    inc a
    ret


    jr jr_016_4d49

    dec a
    ld c, a
    dec e
    nop
    nop
    ld e, [hl]
    dec sp
    ld a, b
    ld h, $4f
    dec e
    nop
    nop
    rst JumpTable
    ld a, a
    sub $3d
    dec bc
    dec h
    nop
    nop
    or b
    ld a, l
    ld a, b
    ld h, $8d
    ld c, $00
    nop
    rst $08
    ld a, l
    ld a, h
    ld a, e
    ld c, a
    dec e
    nop
    nop
    jp hl


    ld hl, $2678
    ld c, a
    dec e
    nop
    nop
    ld d, $3f
    ld l, h
    ld c, $66
    ld bc, $0000
    ldh a, [rNR42]
    ld l, h
    ld c, $66
    ld bc, $0000
    ld d, $3f
    ldh a, [rNR42]
    ld a, [bc]
    dec c
    nop
    nop
    ld d, $3f
    ld [hl], b
    ld h, $c9
    ld de, $0000
    inc c
    ld [hl], e
    ld [$2365], a
    add hl, sp
    nop
    nop
    ld d, $3f
    db $10
    dec de
    dec e
    ld d, c
    nop
    nop
    push af
    ld a, [hl-]
    ld c, d
    ld h, $65
    ld de, $0000
    adc $15
    ld c, d
    ld h, $65
    ld de, $0000
    push af
    ld a, [hl-]
    adc $15
    rlca
    add hl, de
    nop
    nop
    push af
    ld a, [hl-]
    ld c, d
    ld e, $64
    add hl, bc
    nop
    nop
    ret


    ld [hl], d
    db $e3
    ld c, c
    nop
    dec l
    nop
    nop
    ld h, l
    ld de, $3af5
    rlca
    add hl, de
    nop
    nop
    ld a, b
    ld b, [hl]
    or h
    dec l
    xor h
    inc e
    nop
    nop
    or d
    add hl, de
    or h
    dec l
    xor l
    jr nz, jr_016_4e0f

jr_016_4e0f:
    nop
    ld a, b
    ld b, [hl]
    or d
    add hl, de
    ld a, [bc]
    add hl, de
    nop
    nop
    ld a, b
    ld b, [hl]
    db $f4
    ld hl, $092e
    nop
    nop
    ld l, l
    ld [hli], a
    add [hl]
    ld de, $1124
    nop
    nop
    ld a, b
    ld b, [hl]
    ld e, e
    nop
    dec c
    inc de
    nop
    nop
    ld hl, sp+$6a
    dec c
    ld c, [hl]
    ld h, $2d
    nop
    nop
    ret nc

    ld b, c
    dec c
    ld c, [hl]
    ld h, $2d
    nop
    nop
    ld hl, sp+$6a
    ret nc

    ld b, c
    add hl, bc
    dec h
    nop
    nop
    ld hl, sp+$6a
    jr nc, jr_016_4eaa

    ld l, c
    ld c, c
    nop
    nop
    ld l, l
    ld h, d
    and l
    ld b, c
    ld b, e
    dec h
    nop
    nop
    ld hl, sp+$6a
    ld sp, $4b62
    ld h, c
    ld h, d
    jr nc, @+$01

    dec sp
    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    rst $38
    dec sp
    ld d, l
    ld d, d
    ld c, [hl]
    ld sp, $0000
    rst $38
    dec sp
    jr jr_016_4e82

    db $ec
    nop
    nop
    nop
    rst $38
    dec sp
    db $f4
    inc de
    and l
    ld [bc], a
    nop
    nop
    rst $38
    ld h, e

jr_016_4e82:
    call nz, Call_016_607e
    ld e, l
    ld l, h
    ld b, a
    rst $38
    dec sp
    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    cp $1f
    ld hl, $812b
    dec c
    nop
    nop
    rst $38
    rra
    or l
    ld b, d
    adc h
    dec h
    nop
    nop
    cp $1f
    jr c, jr_016_4eb6

    ld l, $11
    nop
    nop
    cp $1f

jr_016_4eaa:
    inc b
    inc bc
    ldh [rSB], a
    nop
    nop
    rst $38
    ld a, a
    add e
    ld a, l
    ld h, b
    ld b, h

jr_016_4eb6:
    inc c
    ld e, a
    add c
    dec c
    cp $1f
    ld l, $11
    nop
    nop
    cp a
    ccf
    sbc [hl]
    ld de, $0015
    nop
    nop
    cp a
    ccf
    sub c
    ld b, [hl]
    adc c
    dec l
    nop
    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    cp a
    ccf
    ld e, h
    ld [bc], a
    sub h
    ld bc, $0000
    sbc b
    ld [hl], a
    inc bc
    ld d, [hl]
    jp nz, $8c34

    ld [hl], d
    cp a
    ccf
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, $415e
    add hl, sp
    nop
    nop
    rst JumpTable
    ld a, a
    sub d
    ld e, [hl]
    jr z, jr_016_4f37

    nop
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    rst JumpTable
    ld a, a
    sub h
    ld a, d
    adc h
    ld [hl], l
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    ld [hl], c
    ld a, [hl]
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$2270], a
    inc a
    inc [hl]
    ld d, d
    jr nc, jr_016_4f6e

    daa
    ld sp, $0000
    inc [hl]
    ld d, d
    sub b
    ld d, c
    ret


    inc l
    nop
    nop
    inc [hl]
    ld d, d
    ld d, d
    dec a
    xor d
    inc h
    nop

jr_016_4f37:
    nop
    inc [hl]
    ld d, d
    inc l
    ld [hl], $68
    dec e
    nop
    nop
    rst $38
    ld h, e
    and h
    ld a, [hl]
    ld b, b
    ld e, c
    nop
    nop
    inc [hl]
    ld d, d
    db $ed
    ld l, $bf
    ld d, h
    nop
    nop
    ld l, a
    ld d, [hl]
    and [hl]
    ld b, c
    db $e4
    inc h
    nop
    nop
    ld l, a
    ld d, [hl]
    adc h
    ld c, l
    ld [$0035], sp
    nop
    ld l, a
    ld d, [hl]
    adc [hl]
    ld c, l
    ld [$002c], a
    nop
    ld l, a
    ld d, [hl]
    jp hl


    dec l
    daa
    dec e

jr_016_4f6e:
    nop
    nop
    rst $38
    ld e, e
    inc bc
    ld a, l
    nop
    inc a
    nop
    nop
    dec b
    dec h
    ld l, a
    ld d, [hl]
    dec bc
    ld sp, $0000
    jp c, $f545

    inc a
    ld l, h
    inc l
    nop
    nop
    jp c, $d345

    ld c, b
    ld l, d
    inc h
    nop
    nop
    jp c, $d345

    jr c, jr_016_5001

    inc l
    nop
    nop
    jp c, $5445

    dec [hl]
    rst $08
    inc l
    nop
    nop
    ld [hl], a
    ld [hl], e
    db $e3
    ld d, c
    and d
    jr nc, jr_016_4fa7

jr_016_4fa7:
    nop
    jp c, $1d45

    ld d, b
    xor d
    ld [hli], a
    nop
    nop
    inc sp
    ld h, d
    ld l, c
    ld d, c
    and h
    jr nc, jr_016_4fb7

jr_016_4fb7:
    nop
    inc sp
    ld h, d
    ld l, [hl]
    ld d, l
    xor c
    inc [hl]
    nop
    nop
    inc sp
    ld h, d
    ld d, c
    ld d, c
    adc c
    jr nc, jr_016_4fc7

jr_016_4fc7:
    nop
    inc sp
    ld h, d
    sub b
    ld d, c
    ld [$0048], a
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    nop
    nop
    inc sp
    ld h, d
    ld c, l
    ld e, l
    xor d
    ld e, b
    ld [hli], a
    inc [hl]
    jr jr_016_4ff0

    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop

jr_016_4ff0:
    rst $38
    dec sp
    jr jr_016_5002

    db $ec
    nop
    nop
    nop
    ret c

    ld l, d
    cpl
    ld c, c
    ld l, d
    inc e
    nop
    nop
    rst $38

jr_016_5001:
    ld h, e

jr_016_5002:
    call nz, Call_016_607e
    ld e, l
    ld l, h
    ld b, a
    jr jr_016_5018

    ld c, [hl]
    inc de
    cp [hl]
    ld d, b
    nop
    nop
    jr c, jr_016_5024

    ld hl, $812b
    dec c
    nop
    nop

jr_016_5018:
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    cp $1f
    jr c, jr_016_5036

jr_016_5024:
    ld l, $11
    nop
    nop
    ret c

    ld l, d
    cpl
    ld c, c
    ld l, d
    inc e
    nop
    nop
    rst $38
    ld a, a
    add e
    ld a, l
    ld h, b
    ld b, h

jr_016_5036:
    db $ed
    ld a, [hl]
    add c
    dec c
    jr c, @+$14

    ld l, $11
    nop
    nop
    sub a
    dec e
    sbc [hl]
    ld de, $0015
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    cp a
    ccf
    sub a
    dec e
    rst $28
    inc d
    nop
    nop
    ret c

    ld l, d
    cpl
    ld c, c
    ld l, d
    inc e
    nop
    nop
    sbc b
    ld [hl], a

Jump_016_5062:
    inc bc
    ld d, [hl]
    jp nz, $8c34

    ld [hl], d
    sub a
    dec e
    rra
    nop
    ld l, e
    inc de
    nop
    nop
    or $41
    call nz, $415e
    add hl, sp
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst JumpTable
    ld a, a
    or $41
    inc l
    add hl, hl
    nop
    nop
    ret c

    ld l, d
    cpl
    ld c, c
    ld l, d
    inc e
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    xor l
    ld a, [hl]
    rst JumpTable
    ld a, a
    ld [de], a
    ld a, [hl]
    ld [$c170], a
    inc [hl]
    jr jr_016_50b0

    ld l, [hl]
    dec bc
    ld b, $02
    nop
    nop
    jr jr_016_50b8

    ld l, [hl]
    dec bc

Jump_016_50ac:
    ld b, $02
    nop
    nop

jr_016_50b0:
    rst $38
    scf
    jr jr_016_50c2

    db $ec
    nop
    nop
    nop

jr_016_50b8:
    cp [hl]
    ld a, [hl]
    ld a, [c]
    ld e, b
    ld l, e
    inc e
    nop
    nop
    rst $38
    ld a, a

jr_016_50c2:
    and h
    ld a, [hl]
    ld b, b
    ld e, c
    ld c, h
    ld b, e
    jr jr_016_50d8

    xor [hl]
    inc bc
    rra
    ld d, h
    nop
    nop
    jr jr_016_50e4

    ld bc, $2123
    add hl, bc
    nop
    nop

jr_016_50d8:
    jr jr_016_50ec

    ld bc, $2123
    add hl, bc
    nop
    nop
    rst $38
    rra
    jr jr_016_50f6

jr_016_50e4:
    ld c, $11
    nop
    nop
    cp [hl]
    ld a, [hl]
    ld a, [c]
    ld e, b

jr_016_50ec:
    ld l, e
    inc e
    nop
    nop
    rst $38
    ld a, a
    inc bc
    ld a, l
    nop
    inc a

jr_016_50f6:
    xor l
    ld a, [hl]
    ret nz

    ld bc, $1218
    ld l, e
    inc e
    nop
    nop
    db $76
    add hl, de
    ld a, l
    ld de, $0014
    nop
    nop
    db $76
    add hl, de
    ld a, l
    ld de, $0014
    nop
    nop
    sbc a
    ccf
    db $76
    add hl, de
    adc $10
    nop
    nop
    cp [hl]
    ld a, [hl]
    ld a, [c]
    ld e, b
    ld l, e
    inc e
    nop
    nop
    db $76
    ld a, a
    ld h, l
    ld e, c
    and d
    jr nc, jr_016_5193

    ld l, [hl]
    db $76
    add hl, de
    rra
    nop
    dec hl
    inc de
    nop
    nop
    sub $3d
    and h
    ld e, d
    ld hl, $0035
    nop
    sub $3d
    and h
    ld e, d
    ld hl, $0035
    nop
    rst JumpTable
    ld a, a
    sub $3d
    dec bc
    dec h
    nop
    nop
    ret c

    ld l, d
    cpl
    ld c, c
    ld l, d
    inc e
    nop
    nop
    rst JumpTable
    ld a, a
    call nz, Call_016_407d
    ld c, b
    xor l
    ld a, [hl]
    rst JumpTable
    ld a, a
    sub d
    ld a, [hl]
    adc c
    ld h, c
    pop bc
    inc [hl]
    jr jr_016_5170

    adc [hl]
    dec bc
    ld h, $02
    nop
    nop
    adc h
    inc h
    cp b
    ld a, d
    ld d, d

jr_016_516d:
    ld d, c

jr_016_516e:
    nop
    nop

jr_016_5170:
    rst $38
    dec sp
    jr @+$10

    db $ec
    nop
    nop
    nop
    cp b
    ld a, d
    ld d, d
    ld d, c
    adc h
    inc h
    nop
    nop
    ld [bc], a
    jr z, jr_016_516e

    jr c, @-$76

    inc l
    inc hl
    jr @+$01

    ld h, e
    call nz, Call_016_607e
    ld e, l
    ld l, a
    ld a, a
    db $fc
    add hl, hl
    and [hl]

jr_016_5193:
    ld d, c
    inc b
    add hl, sp
    nop
    nop
    adc b
    inc a
    rrca
    ld e, l
    adc c
    inc a

jr_016_519e:
    nop
    nop
    di
    add hl, hl
    adc a
    ld hl, $112b
    nop
    nop
    rrca
    ld e, l
    adc c
    inc a
    dec h
    inc h
    nop
    nop
    ld [bc], a
    jr z, jr_016_519e

    jr c, @-$76

    inc l
    inc hl
    jr @+$01

    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    nop
    nop
    push de
    add hl, hl
    ld [hl], h
    add hl, sp
    adc [hl]
    jr nz, jr_016_51c7

jr_016_51c7:
    nop
    adc b
    inc a
    rrca
    ld e, l
    adc c
    inc a

jr_016_51ce:
    nop
    nop
    di
    add hl, hl
    adc a
    ld hl, $112b
    nop
    nop
    rrca
    ld e, l
    adc c
    inc a
    dec h
    inc h
    nop
    nop
    ld [bc], a
    jr z, jr_016_51ce

    jr c, jr_016_516d

    inc l
    inc hl
    jr @+$01

    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    nop
    nop
    push de
    add hl, hl
    and [hl]
    ld d, c
    inc b
    add hl, sp
    nop
    nop
    ld b, a
    inc l
    ld d, c
    ld h, l
    xor e
    ld b, h
    nop
    nop
    dec sp
    ld [hl], a
    pop de
    dec a
    jp hl


    inc d
    nop
    nop
    ld d, c
    ld h, l
    xor e
    ld b, h
    ld b, a
    inc l
    nop
    nop
    dec b
    inc l
    dec c
    ld b, c
    xor d
    inc [hl]
    inc hl
    jr jr_016_5254

    ld [hl], a
    ld d, b
    ld a, [hl]
    ld c, b
    ld h, c
    pop bc
    inc [hl]
    or e
    ld [hl], c
    inc c
    ld c, l
    adc b
    inc l
    nop
    nop

Call_016_5228:
    nop
    ld b, h
    ld l, [hl]
    dec a
    dec bc
    dec l
    ld h, [hl]
    inc l
    inc c
    ld c, l
    or e
    ld [hl], c
    inc c
    ld c, l
    nop
    nop
    dec sp
    ld a, e
    ld d, h
    ld e, [hl]
    ld l, [hl]
    dec a
    rst $00
    jr nz, jr_016_5251

    ld d, [hl]
    db $db
    ld b, [hl]
    dec d
    ld a, $91
    ld b, c
    ld d, h
    ld e, [hl]
    dec sp
    ld a, e
    ld d, h

Jump_016_524d:
    ld e, [hl]
    rst $00
    jr nz, jr_016_5270

jr_016_5251:
    inc bc
    ld c, a
    dec bc

jr_016_5254:
    nop
    ld [bc], a
    nop
    nop
    ld sp, hl
    dec c
    ld c, a
    dec bc
    nop
    ld [bc], a
    nop
    nop
    rra
    inc bc
    ld sp, hl
    dec c
    xor [hl]
    nop
    nop
    nop
    rra
    inc bc
    cpl
    inc bc
    ld b, $02
    nop
    nop

jr_016_5270:
    sbc e
    ld a, e
    add e
    ld a, [hl]
    ld h, b
    ld e, l
    nop
    nop
    rra
    inc bc
    cp h
    ld b, h
    ld [de], a
    inc l
    nop
    nop
    rra
    inc bc
    ld c, a
    dec bc
    nop
    ld [bc], a
    nop
    nop
    ld sp, hl
    dec c
    ld c, a
    dec bc
    nop
    ld [bc], a
    nop
    nop
    rra
    inc bc
    ld sp, hl
    dec c
    xor [hl]
    nop
    nop
    nop
    rra
    inc bc
    cpl
    inc bc
    ld b, $02
    nop
    nop
    sbc e
    ld a, e
    add e
    ld a, [hl]
    ld h, b
    ld e, l
    nop
    nop
    rra
    inc bc
    cp h
    ld b, h
    ld [de], a

Jump_016_52ad:
    inc l
    nop
    nop
    rra
    inc bc
    ld c, a
    dec bc
    nop
    ld [bc], a
    nop
    nop
    ld sp, hl
    dec c
    ld c, a
    dec bc
    nop
    ld [bc], a
    nop
    nop
    rra
    inc bc
    ld sp, hl
    dec c
    xor [hl]
    nop
    nop
    nop
    rra
    inc bc
    cpl
    inc bc
    ld b, $02
    nop
    nop
    sbc e
    ld a, e
    add e
    ld a, [hl]
    ld h, b
    ld e, l
    nop
    nop
    rra
    inc bc
    cp h
    ld b, h
    ld [de], a
    inc l
    nop
    nop
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    cp a
    ld de, $0c7a
    ld c, d
    ld [$0000], sp
    ld a, a
    inc bc
    or $01
    dec c
    ld bc, $0000
    call nc, $0a7c
    ld d, b
    ld b, $38
    nop
    nop
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    cp a
    ld de, $0c7a
    ld c, d
    ld [$0000], sp
    call z, $a403
    ld [bc], a
    ld h, d
    ld bc, $0000
    rra
    inc bc
    ld a, a
    ld bc, $0010
    nop
    nop
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    ld [$b900], sp
    db $10
    ld l, l
    ld [$0000], sp
    call nc, $0c55
    ld sp, $086d
    nop
    nop
    cp c
    db $10
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop

Jump_016_5378:
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    ld [$b900], sp
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    nop
    nop
    cp c
    db $10
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    ld [$b900], sp
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    nop
    nop
    cp c
    db $10
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    ld [$b900], sp
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    nop
    nop
    cp c
    db $10
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    rst $38
    dec e
    cp c
    db $10
    ld l, l
    ld [$0000], sp
    ld l, c
    ld d, l
    inc sp
    ld de, $0caa
    nop
    nop
    ld a, [hl-]
    ld [hli], a
    inc sp
    ld de, $0caa
    nop
    nop
    inc sp
    ld de, $1133
    xor d
    inc c
    nop
    nop
    rst $38
    dec e
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    ld e, a
    scf
    or $21
    jr nc, jr_016_545f

    nop
    nop
    sbc d
    ld d, a
    ld c, [hl]
    ld l, $4c
    ld hl, $0000
    call z, $a403
    ld [bc], a
    ld h, d
    ld bc, $0000
    rra
    inc bc
    ld a, a
    ld bc, $0010
    nop

jr_016_545f:
    nop
    ld [hl-], a
    ld b, d
    ld l, [hl]
    ld e, d
    ld b, b
    dec a
    nop
    nop
    dec sp
    inc hl
    dec [hl]
    ld a, [bc]
    dec bc
    ld bc, $0000
    ld [hl-], a
    ld b, d
    ld l, [hl]
    add hl, sp
    ret


    inc l
    nop
    nop
    rst $38
    ld b, a
    ld a, [de]
    ld a, l
    ld de, $0024
    nop
    rst $38
    ld b, a
    ld e, h
    ld [bc], a
    inc de
    add hl, bc
    nop
    nop
    rst $08
    ld a, d
    and [hl]
    ld e, c
    ldh [$3c], a
    nop
    nop
    ld [hl], l
    ld [de], a
    ret c

    dec l
    ld [hl], e
    inc c
    nop
    nop
    ld l, l
    ld e, $a7
    ld bc, $0102
    nop
    nop
    ld [hl], l
    ld [de], a
    ret nc

    ld bc, $010b
    nop
    nop
    rst $38
    ld b, a
    dec hl
    ld e, [hl]
    ld [hli], a
    add hl, sp
    nop
    nop
    rst $38
    ld b, a
    ld e, a
    ld [bc], a
    ret nc

    nop
    nop
    nop
    ld [hl], l
    ld [de], a
    nop
    nop
    and d
    ld [hli], a
    ld e, a
    ld b, a
    ld hl, sp+$59
    adc $2e
    add l
    ld bc, $0000
    inc sp
    ld h, d
    ld c, $5d
    adc d
    ld c, b
    nop
    nop
    ld hl, sp+$59
    ld [hl-], a
    ld b, l
    ld l, h
    inc l
    nop
    nop
    rst $38
    ld b, a
    sbc a
    ld [bc], a
    ld a, [c]
    nop
    nop
    nop
    rst $38
    ld b, a
    ld a, d
    add hl, hl
    ld [hl], c
    inc c
    nop
    nop
    ld hl, sp+$59
    nop
    nop
    and d
    ld [hli], a
    ld e, a
    ld b, a
    ld d, $2b
    sub b
    ld d, l
    db $eb
    inc a
    nop
    nop
    pop de
    ld [hl], d
    dec c
    ld h, [hl]
    jr z, jr_016_553f

    nop
    nop
    ld d, $2b
    cpl
    ld b, $48
    dec c
    nop
    nop
    rst $38
    ld b, a
    ld a, [hl-]
    ld e, $32
    dec d
    nop
    nop
    rst $38
    ld b, a
    ld [hl], l
    ld c, c
    adc a
    inc l
    nop
    nop
    ld d, $2b
    dec d
    nop
    inc c
    db $10
    ld hl, $ee00
    ld [bc], a
    ld a, [hl-]
    ld e, $32
    dec d
    nop
    nop
    ld d, d
    ld c, d
    adc h
    ld sp, $2108
    nop
    nop
    xor $02
    jp hl


    ld bc, $0123
    nop
    nop
    rst $38
    ld b, a
    dec hl
    ld e, [hl]
    nop
    ld b, c
    nop

jr_016_553f:
    nop
    rst $38
    ld b, a
    ld a, [de]
    ld e, [hl]
    or b
    inc [hl]
    nop
    nop
    xor $02
    nop
    nop
    and d
    ld [hli], a
    rst $38
    ld b, [hl]
    inc d
    ld h, [hl]
    ret c

    ld a, [de]
    ld l, l
    dec b
    nop
    nop
    sbc c
    dec l
    call nc, $0d1c
    nop
    nop
    nop
    inc d
    ld h, [hl]
    ld c, [hl]
    ld c, l
    adc b
    jr nc, jr_016_5567

jr_016_5567:
    nop
    rst $38
    ld b, a
    adc $2e
    ld h, h
    ld bc, $0000
    rst $38
    ld b, a
    ld a, $0e
    adc a
    nop
    nop
    nop
    rst $38
    ld b, a
    ld l, l
    ld [hl], d
    ld [hli], a
    ld b, c
    nop
    nop
    ret c

    ld c, $3f
    inc bc
    push de
    nop
    nop
    nop
    ld [hl], $22
    ld [hl], c
    ld bc, $0089
    nop
    nop
    ret c

    ld c, $f3
    dec b
    dec hl
    ld bc, $0000
    rst $38
    ld b, a
    di
    ld h, c
    jp z, RST_38

    nop
    rst $38
    ld b, a
    sbc c
    ld sp, $1094
    nop
    nop
    rst $38
    ld b, a
    nop
    nop
    ld h, b
    ld a, [de]
    rst $38
    ld b, [hl]
    adc [hl]
    ld b, c
    dec c
    ld l, [hl]
    inc h
    ld d, c
    nop
    nop
    dec sp
    ld h, d
    dec [hl]
    ld c, c
    inc l
    inc h
    nop
    nop
    ld [de], a
    ld d, d
    adc [hl]
    ld b, c
    jp hl


    inc l
    nop
    nop
    rst $38
    ld b, a
    adc $2e
    ld h, h
    ld bc, $0000
    rst $38
    ld b, a
    sbc c
    ld c, $4c
    ld bc, $0000
    ld d, $7f
    dec c
    ld l, [hl]
    inc h
    ld d, c
    nop
    nop
    adc [hl]
    ld b, c
    dec c
    ld l, [hl]
    inc h
    ld d, c
    nop
    nop
    dec sp
    ld h, d
    dec [hl]
    ld c, c
    inc l
    inc h
    nop
    nop
    ld [de], a
    ld d, d
    adc [hl]
    ld b, c
    jp hl


    inc l
    nop
    nop
    rst $38
    ld b, a
    adc $2e
    ld h, h
    ld bc, $0000
    rst $38
    ld b, a
    sbc c
    ld c, $4c
    ld bc, $0000
    adc [hl]
    ld b, c
    nop
    nop
    and d
    ld [hli], a
    rst $38
    ld b, [hl]
    ld c, [hl]
    ld h, d
    cp a
    ld [bc], a
    ld sp, $0001
    nop
    or e
    ld a, a
    ld c, [hl]
    ld e, d
    ld l, c
    ld b, c
    nop
    nop
    ld c, [hl]
    ld h, d
    jp z, Jump_016_4651

    ld b, c
    nop
    nop
    rst $38
    ld b, a
    sub [hl]
    ld a, [de]
    ld c, e
    ld bc, $0000
    rst $38
    ld b, a
    rst $38
    ld a, l
    or b
    inc [hl]
    nop
    nop
    rst $38
    ld b, a
    dec de
    inc d
    inc c
    db $10
    ld hl, $f900
    ld b, [hl]
    rst $38
    inc bc
    ld a, [c]
    nop
    nop
    nop
    sbc h
    ld a, [bc]
    rst AddAToHL
    add hl, bc
    ld c, h
    nop
    nop
    nop
    ld sp, hl
    ld b, [hl]
    xor $1d
    db $ec
    jr c, jr_016_5657

jr_016_5657:
    nop
    rst $38
    ld b, a
    sub d
    ld d, $09
    dec d
    nop
    nop
    rst $38
    ld b, a
    adc a
    ld e, d
    push bc
    jr nc, jr_016_5667

jr_016_5667:
    nop
    rst $38
    ld b, a
    dec de
    inc d
    inc c
    db $10
    ld hl, $f900
    ld b, [hl]
    rst $38
    inc bc
    ld a, [c]
    nop
    nop
    nop
    sbc h
    ld a, [bc]
    rst AddAToHL
    add hl, bc
    ld c, h
    nop
    nop
    nop
    ld sp, hl
    ld b, [hl]
    xor $1d
    db $ec
    jr c, jr_016_5687

jr_016_5687:
    nop
    rst $38
    ld b, a
    sub d
    ld d, $09
    dec d
    nop
    nop
    rst $38
    ld b, a
    adc a
    ld e, d
    push bc
    jr nc, jr_016_5697

jr_016_5697:
    nop
    ld sp, hl
    ld b, [hl]
    nop
    nop
    and d
    ld [hli], a
    ld e, a
    ld b, a
    dec hl
    dec h
    db $10
    inc bc
    ret z

    ld bc, $0000
    ccf
    inc bc
    or l
    ld bc, $00a9
    nop
    nop
    ld d, h
    ld a, $af
    add hl, sp
    dec hl
    dec h
    nop
    nop
    rst $38
    ld b, a
    jr c, @+$4f

    ld c, a
    inc h
    nop
    nop
    rst $38
    ld b, a
    dec a
    ld b, $92
    inc d
    nop
    nop
    rst $38
    ld b, a
    dec hl
    ld e, [hl]
    nop
    ld b, c
    nop
    nop
    sub h
    ld [hl-], a
    ld e, h
    ld [bc], a
    db $10
    add hl, bc
    nop
    nop
    rst $38
    ld b, a
    ld d, a
    ld [hli], a
    inc l
    add hl, bc
    nop
    nop
    rst $38
    ld b, a
    sub h
    ld [hl-], a
    adc d
    ld hl, $0000
    sub h
    ld [hl-], a
    jr c, jr_016_5739

    ld [hl], b
    jr z, jr_016_56ef

jr_016_56ef:
    nop
    rst $38
    ld b, a
    ld [hl], h
    ld e, c
    dec l
    jr c, jr_016_56f7

jr_016_56f7:
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    nop
    ld a, d
    call $007e
    ld b, c
    add b
    ld h, c
    call $007e
    ld b, c
    add b
    ld h, c
    nop
    ld a, d
    nop
    ld b, c
    add b
    ld h, c
    nop
    ld a, d
    call $807e
    ld h, c
    nop
    ld a, d
    call $007e
    ld b, c
    nop
    ld a, d
    call $007e
    ld b, c
    add b
    ld h, c
    call $007e
    ld b, c
    add b
    ld h, c
    nop
    ld a, d
    nop
    ld b, c
    add b
    ld h, c
    nop
    ld a, d
    call $807e

jr_016_5739:
    ld h, c
    nop
    ld a, d
    call $007e
    ld b, c
    ld h, b
    ld a, [hl]
    dec c
    ld a, a
    ld b, b
    ld c, c
    ret nz

    ld l, c
    dec c
    ld a, a
    ld b, b
    ld c, c
    ret nz

    ld l, c
    ld h, b
    ld a, [hl]
    ld b, b
    ld c, c
    ret nz

    ld l, c
    ld h, b
    ld a, [hl]
    dec c
    ld a, a
    ret nz

    ld l, c
    ld h, b
    ld a, [hl]
    dec c
    ld a, a
    ld b, b
    ld c, c
    sub d
    ld l, $5c
    ld [bc], a
    db $10
    add hl, bc
    nop
    nop
    rst $38
    ld b, a
    ld d, a
    ld h, $2c

Jump_016_576d:
    add hl, bc
    nop
    nop
    rst $38
    ld b, a
    sub d
    ld l, $aa
    dec e
    nop
    nop
    rst $38
    ld b, a
    ld l, a
    ld [hl], $ab
    dec h
    nop
    nop
    ld e, a
    ld b, a
    sub d
    ld l, c
    call $0044
    nop
    sbc $7b
    ld c, [hl]
    ld d, [hl]
    ld h, a
    ld b, c
    nop
    nop
    or c
    ld hl, $067d
    ld sp, $000d
    nop
    rst $38
    ld b, a
    ld e, d
    ld b, $0d
    dec b
    nop
    nop
    db $db
    ld [hl], $12
    ld [hli], a
    add hl, bc
    dec c
    nop
    nop
    rst $38
    ld b, a
    ld l, a
    ld [hl], $ab
    dec h
    nop
    nop
    ld e, a
    ld b, a
    ld [de], a
    dec bc
    call $0001
    nop
    sbc $7b
    ld c, [hl]
    ld d, [hl]
    ld h, a
    ld b, c
    nop
    nop
    or c
    ld hl, $067d
    ld sp, $000d
    nop
    rst $38
    ld b, a
    ld e, d
    ld b, $0d
    dec b
    nop
    nop
    db $db
    ld [hl], $12
    ld [hli], a
    add hl, bc
    dec c
    nop
    nop
    rst $38
    ld b, a
    ld l, a
    ld [hl], $ab
    dec h
    nop
    nop
    ld e, a
    ld b, a
    ld [de], a
    dec bc
    call $0001
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    or c
    ld hl, $067d
    ld sp, $000d
    nop
    rst $38
    ld b, a
    ld e, d
    ld b, $0d
    dec b
    nop
    nop
    db $db
    ld [hl], $12
    ld [hli], a
    add hl, bc
    dec c
    nop
    nop
    add hl, hl
    ld a, e
    add hl, hl
    ld e, [hl]
    jr nz, @+$4f

    nop
    nop
    ld e, a
    ld b, a
    ld [de], a
    dec bc
    call $0001
    nop
    pop af
    dec e
    nop
    nop
    and d
    ld [hli], a
    rst $38
    ld b, [hl]
    inc de
    ld l, a
    rst $38
    ld a, a
    ret


    ld d, c
    nop
    nop
    rst $38
    ld a, a
    ld l, a
    ld e, d
    ld b, [hl]
    dec a
    nop
    nop
    db $db
    ld a, a
    di
    ld h, [hl]
    bit 0, l
    nop
    nop
    rst $38
    ld b, a
    ld d, e
    ld c, d
    adc d
    ld hl, $0000
    ld e, a
    ld b, a
    db $76
    dec a
    xor [hl]
    inc e
    nop
    nop
    sbc $7b
    ld [hl], c
    ld h, l
    xor h
    ld b, b
    nop
    nop
    ld d, d
    ld a, [hli]
    cp $33
    or e
    ld bc, $0000
    rst $38
    ld b, a
    ld [hl], $22
    dec bc
    dec b
    nop
    nop
    rst $38
    ld b, a
    ld d, d
    ld a, [hli]
    ld l, c
    dec e
    nop
    nop
    ld d, d
    ld a, [hli]
    sbc h
    ld a, c
    ld [hl], $04
    nop
    nop
    ld d, d
    ld a, [hli]
    dec b
    scf
    and b
    dec e
    nop
    nop
    sbc $7b
    dec l
    ld d, d
    ld b, [hl]
    dec a
    nop
    nop
    inc de
    ld [hl-], a
    ld e, a
    ld b, a
    ret nc

    nop
    nop
    nop
    cp h
    ld e, $f7
    ld bc, $00ce
    nop
    nop
    inc de
    ld [hl-], a
    ld l, $25
    ld l, c
    inc d
    nop
    nop
    dec [hl]
    ld d, a
    adc b
    ld e, [hl]
    add e
    add hl, sp
    nop
    nop
    inc de
    ld [hl-], a
    db $d3
    ld [bc], a
    and [hl]
    add hl, bc
    nop
    nop
    inc de
    ld [hl-], a
    nop
    nop
    and d
    ld [hli], a
    rst $38
    ld b, [hl]
    sub b
    dec e
    ld e, h
    ld [bc], a
    db $10
    add hl, bc
    nop
    nop
    ld a, b
    ld a, a
    dec h
    ld h, d
    ld [hli], a
    ld c, c
    nop
    nop
    ld a, b
    ld a, a
    dec bc
    scf
    dec bc
    ld a, [hli]
    nop
    nop
    rst $38
    ld b, a
    ld c, [hl]
    ld [hl-], a
    adc d
    ld hl, $0000
    ld sp, hl
    ld a, a
    ld c, d
    ld h, [hl]
    ld b, $45
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    ld d, l
    ld a, [hl-]
    ld e, a
    ld b, a
    pop af
    inc b
    nop
    nop
    cp $26
    add hl, sp
    ld a, [bc]
    rst $28
    inc b
    nop
    nop
    ld d, l
    ld a, [hl-]
    ld [hl], b
    dec l
    adc d
    jr jr_016_58f7

jr_016_58f7:
    nop
    dec [hl]
    ld d, a
    adc b
    ld e, [hl]
    add e
    add hl, sp
    nop
    nop
    ld e, a
    ld b, a
    db $f4
    ld b, $c7
    dec c
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    ld [hl], h
    ld a, [hli]
    ld e, a
    ld b, a
    ret nc

    nop
    nop
    nop
    push af
    ld d, [hl]
    rrca
    ld c, d
    ld [$0021], sp
    nop
    ld [hl], h
    ld a, [hli]
    xor h
    add hl, de
    push bc
    ld [$0000], sp
    rst $38
    ld b, a
    ld sp, hl
    ld d, c
    ld d, $30
    nop
    nop
    xor h
    add hl, de
    sbc l
    ld bc, $0091
    nop
    nop
    rrca
    ld c, d
    rst JumpTable
    ld a, [de]
    dec de
    nop
    nop
    nop
    sub d
    ld e, [hl]
    ld sp, hl
    ld a, a
    inc c
    dec a
    nop
    nop
    di
    ld a, a
    sub d
    ld e, [hl]
    jr z, jr_016_5987

    nop
    nop
    ld a, b
    ld a, a
    ld c, e
    ld d, d
    ld h, [hl]
    dec a
    nop
    nop
    ld sp, hl
    ld a, a
    adc l
    ld a, [hl]
    rst $20
    ld l, c
    jr nz, jr_016_59a9

    ld sp, hl
    ld a, a
    sub c
    ld h, [hl]
    db $ec
    ld c, l
    ld h, $35
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    cp c
    ld a, [hli]
    rrca
    ld h, d
    ld [$003c], a
    nop
    ld a, a
    ld h, $58
    dec b
    ld l, l
    inc b
    nop
    nop
    rst $38
    ld b, a
    cp c
    ld a, [hli]
    rrca
    dec e
    nop

jr_016_5987:
    nop
    cp c
    ld a, [hli]
    ld l, $0e
    xor h
    ld [$0000], sp
    ld e, a
    ld b, a
    or e
    ld l, l
    xor h
    ld b, b
    nop
    nop
    jp c, $1100

    nop
    ld [$0000], sp
    nop
    ld [hl], a
    ld [hli], a
    xor $5d
    ret


    jr c, jr_016_59a7

jr_016_59a7:
    nop
    ld a, a

jr_016_59a9:
    ld h, $37
    ld bc, $004c
    nop
    nop
    rst $38
    ld b, a
    ld [hl], a
    ld [hli], a
    xor $1c
    nop
    nop
    rst $38
    ld b, a
    scf
    ld bc, $004c
    nop
    nop
    ld e, a
    ld b, a
    ld [hl], c
    ld h, l
    xor h
    ld b, b
    nop
    nop
    ld [hl], a
    ld [hli], a
    ldh a, [rNR11]
    db $eb
    inc c
    nop
    nop
    ld l, c
    ld d, d
    ret


    add hl, sp
    jr nz, jr_016_5a07

    nop
    nop
    ld c, [hl]
    ld c, $68
    ld bc, HeaderLogo
    nop
    nop
    ret nc

    add hl, hl
    dec c
    dec d
    daa
    inc c
    nop
    nop
    ld e, d
    ld [bc], a
    ld d, e
    ld bc, $088c
    nop
    nop
    sub h
    ld h, d
    xor e
    ld c, c
    ldh [$30], a
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    ld d, h
    ld a, e
    ld b, a
    ld d, d
    ld b, b
    dec a
    nop

jr_016_5a07:
    nop
    db $10
    ld a, e
    ldh [rOBP1], a
    add b
    ld b, h
    nop
    nop
    ld [hl], a
    ld c, d
    ld c, e
    ld a, [bc]
    ld b, h
    add hl, bc
    nop
    nop
    jp c, $1425

    dec h
    xor h
    jr nz, jr_016_5a1f

jr_016_5a1f:
    nop
    ld d, h
    ld a, e
    ld b, a
    ld d, d
    ld b, b
    dec a
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    ld a, [$123e]
    ld a, [hl-]
    db $10
    add hl, hl
    nop
    nop
    ld [hl], d
    ld a, [hl-]
    call $2409
    dec d
    nop
    nop
    ld [de], a
    ld a, [hl-]
    adc a
    add hl, de
    add a
    nop
    nop
    nop
    ld e, l
    ld b, e
    cp d
    ld e, $32
    dec d
    nop
    nop
    ld d, l
    ld h, a
    dec hl
    ld e, [hl]
    nop
    ld b, c
    nop
    nop
    cp a
    ld [bc], a
    ld e, c
    dec b
    xor l
    inc b
    nop
    nop
    ld [de], a
    ld b, e
    jp hl


    ld hl, $30e0
    nop
    nop
    inc de
    ld d, e
    ldh [$39], a
    ldh [$30], a
    nop
    nop
    sbc c
    ld b, [hl]
    ld d, h
    ld b, c
    ldh [$30], a
    nop
    nop
    jp c, $1425

    dec h
    xor h
    jr nz, jr_016_5a7f

jr_016_5a7f:
    nop
    sub h
    ld h, d
    xor e
    ld c, c
    ldh [$30], a
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    call nc, $0e4a
    ld [hl-], a
    ld hl, $0021
    nop
    sub h
    ld c, [hl]
    adc h
    ld sp, $1cc7
    nop
    nop
    jr nc, jr_016_5ac0

    call $e719
    jr jr_016_5aa7

jr_016_5aa7:
    nop
    inc e
    ld l, $35
    add hl, hl
    call $0024
    nop
    ld [de], a
    ld b, e
    inc l
    ld a, [hli]
    ld b, b
    add hl, de
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop

jr_016_5ac0:
    ld e, d
    ld [bc], a
    ld [hl], e
    ld bc, $084b
    nop
    nop
    ld [hl], e
    ld c, [hl]
    xor l
    dec [hl]
    add hl, hl
    dec h
    nop
    nop
    rrca
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld b, h
    add hl, bc
    nop
    nop
    sub $6a
    dec c
    ld d, d
    ld [hli], a
    add hl, sp
    nop
    nop
    sub $6a
    dec c
    ld d, d
    ld [hli], a
    add hl, sp
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    ld d, h
    ld c, e
    ld l, [hl]
    ld [hl], $81
    ld hl, $0000
    cp h
    ld a, [hl]
    sub d
    ld e, l
    xor b
    inc [hl]
    nop
    nop
    sbc c
    ld b, [hl]
    sub d
    ld e, l
    ld [$0035], sp
    nop
    inc e
    ld l, $56
    dec l
    call $0024
    nop
    inc de
    ld [hl], e
    ldh [$5d], a
    ldh [$38], a
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    sbc e
    ld a, [hl]
    ld sp, $c959
    jr c, jr_016_5b27

jr_016_5b27:
    nop
    sbc e
    ld a, [hl]
    ld sp, $c959
    jr c, jr_016_5b2f

jr_016_5b2f:
    nop
    ei
    ld [hl], c
    dec d
    ld d, b
    dec l
    jr nc, jr_016_5b37

jr_016_5b37:
    nop
    cp a
    ld [bc], a
    ld e, c
    dec b
    xor l
    inc b
    nop
    nop
    nop
    nop
    ld e, c
    dec b
    xor l
    inc b
    cp a
    ld [bc], a
    rst $38
    ld b, a
    ccf
    ld [bc], a
    inc d
    inc d
    nop
    nop
    ld [de], a
    ld b, e
    jp hl


    ld hl, $30e0
    nop
    nop
    inc de
    ld d, e
    ldh [$39], a
    ldh [$30], a
    nop
    nop
    sbc c
    ld b, [hl]
    ld d, h
    ld b, c
    ldh [$30], a
    nop
    nop
    jp c, $1425

    dec h
    xor h
    jr nz, jr_016_5b6f

jr_016_5b6f:
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    sub h
    ld h, d
    xor e
    ld c, c
    ldh [$30], a
    nop
    nop
    rst $38
    ld b, a
    or l
    ld h, l
    xor h
    ld b, b
    nop
    nop
    dec [hl]
    ld a, [bc]
    dec l
    ld bc, $0088
    nop
    nop
    ld [hl], h
    ld [bc], a
    xor h
    ld bc, $0105
    nop
    nop
    rst $38
    ld b, a
    ld sp, hl
    ld d, c
    ld d, $30
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    cp a
    ld [bc], a
    jr c, jr_016_5bad

    adc h

jr_016_5bad:
    nop
    nop
    nop
    ld [de], a
    ld b, e
    jp hl


    ld hl, $30e0
    nop
    nop
    inc de
    ld d, e
    ldh [$39], a
    ldh [$30], a
    nop
    nop
    sbc c
    ld b, [hl]
    ld d, h
    ld b, c
    ldh [$30], a
    nop
    nop
    jp c, $1425

    dec h
    xor h
    jr nz, jr_016_5bcf

jr_016_5bcf:
    nop
    sub h
    ld h, d
    xor e
    ld c, c
    ldh [$30], a
    nop
    nop
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    sbc e
    ld a, [hl]
    ld d, d
    ld e, l
    ret


    inc [hl]
    nop
    nop
    sbc e
    ld a, [hl]
    ld d, d
    ld e, l
    ret


    inc [hl]
    nop
    nop
    jp c, Jump_016_576d

    ld e, b
    ld c, [hl]
    jr c, jr_016_5bf7

jr_016_5bf7:
    nop
    cp a
    ld [bc], a
    jr c, jr_016_5bfd

    adc h

jr_016_5bfd:
    nop
    nop
    nop
    nop
    nop
    ld e, c
    dec b
    xor l
    inc b
    cp a
    ld [bc], a
    ld a, a
    inc bc
    sbc l
    ld bc, $0091
    nop
    nop
    ldh a, [$03]
    add b
    ld d, $20
    ld hl, $0060
    jr nz, jr_016_5c3b

    sub [hl]
    ld bc, $00cc
    nop
    nop
    db $fd
    ld h, $96
    ld bc, $00cc
    nop
    nop
    add b
    ld d, $96
    ld bc, $00cc
    nop
    nop
    ld h, b
    ld a, l
    sub [hl]
    ld bc, $00cc
    nop
    nop
    ld h, b
    ld a, l
    db $ed

jr_016_5c3b:
    ld a, d
    db $dd
    ld a, a
    nop
    nop
    ldh a, [$03]
    add b
    ld d, $20
    ld hl, $0060
    jr nz, jr_016_5c6b

    sub [hl]
    ld bc, $00cc
    nop
    nop
    db $fd
    ld h, $96
    ld bc, $00cc
    nop
    nop
    add b
    ld d, $96
    ld bc, $00cc
    nop
    nop
    add b
    ld d, $20
    ld hl, $00cc
    nop
    nop
    db $fd
    ld h, $fd

jr_016_5c6b:
    ld h, $fd
    ld h, $fd
    ld h, $ff
    ld a, a
    and b
    ld [bc], a
    ld b, b
    ld bc, $0060
    rst $38
    ld a, a
    call Call_016_437e
    ld a, l
    db $fc
    ld a, a
    nop
    nop
    db $ec
    nop
    jr @+$10

    nop
    nop
    db $fd
    ld [hl], $dc
    ld a, [hl]
    xor a
    jr nc, jr_016_5c8f

jr_016_5c8f:
    nop
    rst $38
    ld a, a
    ld d, e
    ld de, $47ff
    nop
    nop
    sbc l
    scf
    inc de
    ld c, $0c
    ld bc, $0000
    adc h
    ld c, l
    ld a, h
    daa
    ld a, b
    ld a, $b1
    dec a
    db $eb
    ld b, l
    ld a, a
    cpl
    ld d, b
    ld [bc], a
    nop
    nop
    ld a, e
    ld b, a
    ldh a, [rSC]
    and l
    ld bc, $0000
    sub h
    ld d, [hl]
    db $eb
    ld b, l
    ld [$0021], sp
    nop
    rst JumpTable
    ld e, a
    ld a, a
    cpl
    ld d, b
    ld [bc], a
    nop
    nop
    ccf
    ld a, a
    cp [hl]
    ld l, c
    ld [hl], l
    ld e, b
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    adc e
    ld d, l
    dec sp
    cpl
    cp d
    ld bc, $0000
    ld a, l
    ld [bc], a
    ld e, c
    ld bc, $00d0
    nop
    nop
    ld d, h
    ld e, d
    ld l, l
    ld c, l
    ret z

    jr nz, jr_016_5cef

jr_016_5cef:
    nop
    rst JumpTable
    ld e, e
    dec sp
    cpl
    cp d
    ld bc, $0000
    rst $38
    ld a, [hli]
    ld a, [de]
    ld bc, $0013
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    ld d, d
    ld a, [hli]
    inc e
    inc bc
    db $10
    add hl, bc
    nop
    nop
    ld a, [hl]
    scf
    ld [hl], $22
    dec bc
    dec b
    nop
    nop
    add hl, sp
    ld b, a
    ld d, d
    ld a, [hli]
    ld l, c
    dec e
    nop
    nop
    rst $38
    ld b, a
    ld e, h
    ld [bc], a
    db $10
    add hl, bc
    nop
    nop
    ld e, a
    ld b, a
    ld [hl-], a
    ld d, c
    dec c
    inc [hl]
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    ld d, b
    ld c, d
    jr jr_016_5dbb

    ld c, [hl]
    ld b, c
    nop
    nop
    ld [hl], h
    ld a, a
    sub b
    ld h, d
    jr z, jr_016_5d7f

    nop
    nop
    rla
    ld h, a
    ld d, b
    ld c, d
    ld l, d
    ld sp, $0000
    ld sp, hl
    ld a, a
    ld [hl], e
    ld a, [hl]
    inc c
    dec a
    nop
    nop
    ld sp, hl
    ld a, a
    ldh a, [$66]
    ld h, b
    ld d, l
    nop
    nop
    sbc b
    nop
    stop
    ld [$0000], sp
    nop
    sub b
    dec e
    ld e, b
    ld [hl-], a
    sub b
    dec d
    nop
    nop
    ld e, a
    ld l, e
    push af
    ld b, l
    db $ed
    jr c, jr_016_5d77

jr_016_5d77:
    nop
    jr nc, jr_016_5da8

    adc h
    dec e
    add sp, $08
    nop

jr_016_5d7f:
    nop
    rst $38
    ld b, a
    ld c, [hl]
    ld [hl-], a
    adc d
    ld hl, $0000
    adc h
    dec e
    nop
    nop
    and d
    ld [hli], a
    ld e, a
    ld b, a
    sbc $7b
    pop de
    ld a, [bc]
    adc h
    ld bc, $0000
    ld c, d
    add hl, hl
    cp a
    dec hl
    ld d, $00
    nop
    nop
    ld c, d
    add hl, hl
    ld a, [bc]
    ld [bc], a
    xor a
    inc bc
    nop
    nop

jr_016_5da8:
    rst $38
    ld a, a
    nop
    nop
    ld sp, hl
    ld bc, $3fff
    nop
    nop
    ld c, d
    add hl, hl
    or l
    ld d, [hl]
    rst $38
    ld a, a
    ld e, e
    ld a, [hli]
    rst AddAToHL

jr_016_5dbb:
    ld bc, $050d
    nop
    nop
    dec sp
    rrca
    ld d, l
    ld a, [bc]
    ld l, h
    ld bc, $0000
    ld a, a
    ld bc, $001b
    ld de, $0000
    nop
    nop
    nop
    add e
    inc bc
    add e
    inc bc
    dec sp
    rrca
    rst $38
    ld a, a
    dec de
    inc d
    dec sp
    rrca
    nop
    nop
    ld e, e
    ld a, [hli]
    rst AddAToHL
    ld bc, $050d
    nop
    nop
    ret nc

    ld l, [hl]
    ld a, [bc]
    ld e, d
    ld l, b
    dec [hl]
    nop
    nop
    db $db
    inc d
    cp $00  ; and a / or a
    ret nc

    ld b, h
    nop
    nop
    nop
    nop
    add e
    inc bc
    add e
    inc bc
    ret nc

    ld l, [hl]
    rst $38
    ld a, a
    dec de
    inc d
    ret nc

    ld l, [hl]
    nop
    nop
    or c
    dec a
    ld d, l
    ld d, d
    inc l
    ld sp, $0c24
    ld a, l
    rrca
    sub [hl]
    ld a, [bc]
    adc l
    ld bc, $0064
    push de
    ld bc, $0151
    call z, $0600
    nop
    inc b
    nop
    add e
    inc bc
    add e
    inc bc
    push de
    ld bc, $7bff
    sbc e
    ld [bc], a
    sub l
    ld bc, $00cb
    rst $38
    ld a, a
    ld a, a
    dec b
    or a
    nop
    db $ed
    inc [hl]
    rst $38
    ld a, a
    dec sp
    ld l, [hl]
    inc sp
    ld c, l
    db $ed
    inc [hl]
    rst $38
    ld a, a
    dec hl
    ld a, a
    ld hl, $e07e
    ld a, h
    rst $38
    ld a, a
    dec de
    ld d, d
    inc d
    inc l
    nop
    nop
    rst $38
    ld a, a
    or l
    ld d, [hl]
    ld c, d
    add hl, hl
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
    inc c
    inc c
    inc c
    rrca
    rrca
    inc c
    inc c
    inc c
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    inc c
    rrca
    inc bc
    inc bc
    rrca
    inc c
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rrca
    rrca
    rrca
    db $10
    stop
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld bc, $0704
    dec bc
    rrca
    nop
    rrca
    nop
    dec b
    inc b
    ld bc, $0203
    nop
    ld a, [bc]
    ld [$0000], sp
    nop
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc bc
    inc bc
    rrca
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$000a], sp
    nop
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, de
    ld a, [de]
    dec de
    nop
    nop
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    inc e
    nop
    dec d
    dec d
    dec d
    dec d
    dec d
    rrca
    rrca
    jr jr_016_5f4e

    rrca
    rrca
    rrca
    rrca
    nop
    nop
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    inc bc
    inc bc
    rrca
    nop
    inc c
    nop
    inc c
    inc c

jr_016_5f4e:
    inc c
    rrca
    rrca
    nop
    inc c
    inc c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    dec d
    dec d
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    nop
    inc c
    rrca
    inc bc
    inc bc
    rrca
    nop
    inc c
    inc c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    jr jr_016_5f9e

    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    rrca
    dec bc
    nop
    nop
    dec b
    nop
    nop
    nop
    rrca
    rrca

jr_016_5f9e:
    nop
    nop
    nop
    nop
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rrca
    rrca
    rrca
    dec b
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    ld [$0a05], sp
    inc b
    inc c
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    rrca
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec b
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    dec d
    dec d
    dec d
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    inc c
    nop
    inc c
    rrca
    rrca
    rrca
    rrca
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    jr jr_016_6026

    jr jr_016_601f

    nop
    rrca
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
    dec d

jr_016_601f:
    dec d
    dec d
    dec d
    rrca
    rrca
    rrca
    nop

jr_016_6026:
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    stop
    rrca
    nop
    nop
    nop
    ld a, [de]
    dec de
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    ld bc, $1503
    dec d
    dec d
    dec d

Call_016_6050:
    dec d
    dec d
    dec d
    dec d
    dec d
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    inc c
    rrca
    inc c
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rlca
    rrca
    rrca
    dec bc
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    nop
    dec b

Call_016_607e:
    ld a, [bc]
    rlca
    ld bc, $0203
    nop
    dec b
    inc c
    inc c
    nop
    nop
    ld a, [de]
    dec de
    add hl, de
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    nop
    ld bc, $0704
    dec bc
    nop
    nop
    nop
    nop
    dec d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    dec d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec d
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    rrca
    nop
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca

Jump_016_60f4:
    rrca
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, de
    nop
    nop
    rrca
    nop
    ld c, $0f
    rrca
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    dec b
    rrca
    ld a, [bc]
    dec b
    rrca
    nop
    nop
    rrca
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    rrca

Jump_016_6156:
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    db $10
    db $10

Jump_016_615d:
    db $10
    db $10
    db $10
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    db $10
    rrca
    nop
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    nop
    ld bc, $0704
    dec bc
    rrca
    ld a, [bc]
    nop
    inc bc
    inc c
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    stop
    nop
    stop
    nop
    rrca
    rrca
    dec b
    ld a, [bc]
    rrca
    rrca
    inc b
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    inc bc
    inc bc
    inc e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    ld de, $0f0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld de, $0f0f
    rrca
    rrca
    inc bc
    nop
    nop
    nop
    nop
    rrca
    rrca
    dec d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec b
    ld a, [bc]
    nop
    rrca
    ld [$0f0f], sp
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    rrca
    rrca
    inc c
    nop
    nop
    rrca
    rrca
    ld c, $00
    rrca
    rrca
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    nop
    inc c
    rrca
    inc bc
    inc bc
    rrca
    inc c
    nop
    inc c
    nop
    rrca
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
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    db $10
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    inc c
    nop
    inc c
    rrca
    rrca
    nop
    inc c
    inc c
    ld bc, $0704
    dec bc
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    nop
    ld bc, $0704
    dec bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    inc b
    ld [$0000], sp
    nop
    inc c
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rlca
    rrca
    rrca
    ld [bc], a
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    ld a, [bc]
    nop
    nop
    nop
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc c
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    dec d
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    inc bc
    inc bc
    rrca
    nop
    nop
    nop
    inc c
    inc c
    inc c
    rrca
    rrca
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_6329:
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    inc c
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    ld a, [bc]
    dec b
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    dec d
    dec d
    rrca
    rrca
    rrca
    rrca
    dec d
    dec d
    dec c
    ld c, $03
    ld [bc], a
    dec b
    ld a, [bc]
    inc c
    ld [$0f00], sp
    inc c
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    rrca
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    rrca
    ld a, [bc]
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    dec d
    dec d
    dec d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    inc c
    nop
    ld a, [bc]
    dec b
    ld a, [bc]
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    dec b
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    ld bc, $0700
    dec bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    dec b
    nop
    nop
    jr jr_016_6412

    jr jr_016_6414

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    rrca
    nop
    nop
    db $10

jr_016_6412:
    rrca
    rrca

jr_016_6414:
    nop
    nop
    nop
    nop
    nop
    db $10
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    dec b
    dec bc
    rlca
    nop
    nop
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    rrca

Call_016_6450:
    rrca
    rrca
    inc c
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    ld de, $0f0f
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec d
    nop
    nop
    rrca
    nop
    jr jr_016_6490

    jr @+$1a

    jr jr_016_6494

    dec b
    dec bc
    rlca
    inc bc
    nop
    rrca
    rrca
    nop
    nop
    nop
    inc c
    rrca
    rrca
    nop
    inc c
    inc c
    add hl, bc
    nop
    ld b, $00

jr_016_6490:
    nop
    ld b, $00
    add hl, bc

jr_016_6494:
    rrca
    rrca
    inc b
    rrca
    rrca
    nop
    nop
    nop
    nop
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rrca
    inc c
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rrca
    rrca
    rrca
    nop
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    rrca
    rrca
    dec d
    dec d
    dec d
    dec d
    rrca
    rrca
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    rrca
    rrca
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    jp nz, $c390

    rst $38
    sub b
    jp Jump_016_5062


    or b
    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ccf
    jr nc, jr_016_6509

    ld e, l

jr_016_6509:
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h

jr_016_651a:
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    jp nz, Jump_016_6156

    rst $38
    reti


    ld [hl], h
    sbc [hl]
    jp nz, Jump_016_50ac

    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    bit 0, e
    ld a, $40
    ld bc, $405d
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    add d
    inc c
    ld [hl], e
    rst $38
    ld h, [hl]
    and h
    or $a3
    ld h, h
    jr nc, jr_016_651a

    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    inc bc
    ccf
    jr nc, jr_016_65d4

    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    sub d
    inc sp
    ld d, h
    rst $38
    ld hl, sp-$7d
    db $f4
    jp Jump_016_4063


    or b
    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    db $10
    ld sp, $3d03
    ld d, b
    ld e, l
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    jp nz, Jump_016_524d

    rst $38
    sub b

jr_016_65d4:
    jp $82a5


    xor h
    ld d, b
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    db $10
    ld sp, $503d
    ld bc, $405d
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    add d
    ld [c], a
    ld [hl], l
    rst $38
    rst $08
    ld d, d
    or a
    ld h, c
    adc [hl]
    add b
    xor h
    ld d, b
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rst $30
    jr nc, jr_016_661d

    dec a
    ld d, b
    ld e, l

jr_016_661d:
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld a, [c]
    inc e
    add c
    rst $38
    res 2, c
    ld l, a
    ld [hl], e
    xor [hl]
    jr nc, jr_016_667c

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    ccf
    jr nc, jr_016_6653

    ld e, l

jr_016_6653:
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld [hl], d
    sbc l
    ld b, d
    rst $38
    or b
    ld d, l
    ld l, [hl]
    or e
    ret c

jr_016_667c:
    sub h
    xor [hl]
    jr nc, jr_016_66b4

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    inc bc
    ccf
    jr nc, jr_016_66e8

    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    db $f4
    ld d, c
    rst $38
    inc d
    ld d, [hl]
    call nc, Call_016_6450

jr_016_66b4:
    ld [hl], d
    dec c
    ld [hl], e
    or b
    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    adc l
    ld b, d
    ld a, $40
    cp l
    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    adc [hl]
    sub b

jr_016_66e8:
    rst $38
    or l
    jr nc, jr_016_667c

    and e
    reti


    add h
    xor [hl]
    jr nc, jr_016_6726

    ld h, c
    ld h, c

jr_016_66f4:
    add h
    ld [hl], d
    ld b, [hl]
    adc l
    ld b, d
    inc bc
    ld a, $40
    cp l
    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    sbc c
    ld hl, $5105
    inc bc
    ld b, c
    rst $38
    ld e, l
    ld [hl], d
    sbc [hl]
    add d

jr_016_6725:
    reti


jr_016_6726:
    ld [hl], h
    ld l, a
    ld [hl], e
    xor [hl]
    jr nc, jr_016_6760

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    ld e, [hl]
    ld d, c
    ccf
    jr nc, jr_016_66f4

    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    sub d
    call z, $ffa4
    rlca
    ld h, h
    db $d3
    db $e4
    xor [hl]

jr_016_6760:
    jr nc, jr_016_6796

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    adc l
    ld b, d
    ld a, $40
    ld bc, $45bd
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    jr nz, jr_016_6725

    rst $38
    ld l, h
    ld h, d
    ld b, $75
    reti


jr_016_6796:
    add h
    xor [hl]
    jr nc, jr_016_67ce

jr_016_679a:
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    db $10
    ld sp, $3d03
    ld d, b
    ld e, l
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    reti


    sub h
    rst $38
    ei
    ld b, h
    ld l, [hl]
    ld [hl], e
    and d

jr_016_67ce:
    add d
    xor h
    ld d, b
    inc [hl]
    ld h, c
    ld h, c

jr_016_67d4:
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    inc bc
    ccf
    jr nc, jr_016_679a

    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    add l
    ld d, b
    rst $38
    inc hl
    ld h, b
    add b
    ld b, b
    db $fc
    ld h, c
    ld c, l
    ld h, d
    xor [hl]
    jr nc, jr_016_6840

jr_016_680c:
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    ld e, [hl]
    ld d, c
    ccf
    jr nc, jr_016_67d4

    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    add d
    sub $94
    rst $38
    ld h, h
    ld [hl], c
    ld c, h
    ld d, d
    ld l, a

jr_016_6840:
    ld [hl], e
    xor [hl]
    jr nc, jr_016_6878

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    inc bc
    ccf
    jr nc, jr_016_680c

    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    cp h
    ld d, b
    rst $38
    rst $20
    add c
    adc $61
    ld b, b

jr_016_6878:
    ld sp, $730d
    or b
    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    ld e, [hl]
    ld d, c
    ccf
    jr nc, @+$39

    sub h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    db $ec
    ld d, c
    rst $38
    add b
    ld d, h
    ld a, b
    ld d, h
    inc a
    ld [hl], c
    dec c
    ld [hl], e
    or b
    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    db $10
    ld sp, $503d
    cp c
    ld b, d
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    ld a, a
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    jp nc, $ff11

    rst $00
    or h
    dec b
    add h
    ld c, l
    ld h, d
    xor [hl]
    jr nc, jr_016_6923

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    ld e, [hl]
    ld d, c
    inc bc
    ccf
    jr nc, jr_016_6931

    sub h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d

jr_016_690f:
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    sub h
    ld h, d
    rst $38
    jp nc, $d0b4

    ld h, h
    ld l, a

jr_016_6923:
    ld [hl], e
    xor [hl]
    jr nc, @+$36

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    db $10
    ld sp, $3d03
    ld d, b

jr_016_6931:
    scf
    sub h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    or d
    add hl, bc
    ld b, $ff
    ld h, $70
    ld a, $46
    or $a3
    ld h, h
    jr nc, jr_016_690f

    db $10
    inc [hl]
    ld h, c
    ld h, c

jr_016_6963:
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    ld e, [hl]
    ld d, c
    ccf
    jr nc, jr_016_69a3

    sub h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    sub b
    ld d, b
    inc bc
    ld d, e
    sub b
    ld [hl], b
    rst AddAToHL
    ld [hl], h
    ld a, h
    ld h, d
    cp h
    ld d, b
    rst $38
    rst $20
    add c
    adc $61
    ld b, b
    ld sp, $730d
    or b
    db $10
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    rlca
    ld e, [hl]
    ld d, c

jr_016_69a3:
    ccf
    jr nc, jr_016_6963

    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    inc b
    add c
    and b
    jp nc, Jump_016_406c

    rst $38
    ld c, h
    ld d, d
    ld e, l
    ld d, c
    ld c, h
    ld d, d
    ld a, a
    sub d
    cp $43
    ld e, a
    ld b, b
    ld l, [hl]
    jp Jump_016_70bf


    rst $38
    and [hl]
    inc sp
    sbc h
    ld sp, $6438
    ld h, [hl]
    ld b, [hl]
    db $ec
    jp nz, Jump_016_5378

    inc [hl]
    ld h, c
    ld h, c
    add h
    rrca
    or e
    inc [hl]
    or $40
    dec a
    ld d, b
    ld e, l
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    inc b
    add c
    and b
    jp nc, Jump_016_406c

    rst $38
    ld c, h
    ld d, d
    ld e, l
    ld d, c
    ld c, h
    ld d, d
    ld a, a
    sub d
    cp $43
    ld e, a
    ld b, b
    ld l, [hl]
    jp $82a5


    cp $00  ; and a / or a
    ld h, l
    ld d, $0d
    ld b, c
    ld h, d
    jr nc, jr_016_6a76

    ld d, l
    jr nz, jr_016_6a82

    dec c
    ld [hl], e
    ret nc

    db $10
    ccf
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld b, h
    ld b, c
    rst $30
    jr nc, jr_016_6a5c

    ld d, b
    cp l
    ld b, l
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    jp c, Jump_016_60f4

    ld [hl], h
    ldh a, [$f3]
    ld l, [hl]
    add e
    and c
    and d
    dec a
    ld b, d
    rst $38
    ld l, a
    ld [hl], e
    xor [hl]
    jr nc, jr_016_6a7e

    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    db $10
    ld sp, $503d
    ld e, l
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c

jr_016_6a5c:
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e
    jp c, Jump_016_60f4

    ld [hl], h
    ret nc

    ld [hl], h
    rst AddAToHL
    add h
    dec c
    ld [hl], e
    ld l, h

jr_016_6a76:
    db $e3
    rst $38
    reti


    add h
    xor [hl]
    jr nc, jr_016_6ab1

    ld h, c

jr_016_6a7e:
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]

jr_016_6a82:
    db $10
    ld sp, $503d
    ld e, l
    ld b, b
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    push hl
    add c
    ld [hl], c
    ld b, l
    inc l
    ld d, d
    sub b
    jp $92a4


    adc h
    or b
    rst $38
    ld a, [hl]
    and d
    ld [hl], b
    and e

jr_016_6a9e:
    jp c, Jump_016_60f4

    ld [hl], h
    adc e
    ld [hl], d
    rst AddAToHL
    add h
    sub b
    sub e
    adc [hl]
    ld h, b
    rst $38
    sub h
    ld h, d
    dec c
    ld [hl], e
    or b
    db $10

jr_016_6ab1:
    inc [hl]
    ld h, c
    ld h, c
    add h
    ld [hl], d
    ld b, [hl]
    db $10
    ld sp, $503d
    ld bc, $405d
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld [bc], a
    and l
    sub b
    jp Jump_016_7090


    or d
    ld b, e
    rst $38
    sub b
    ld h, b
    ld b, d

jr_016_6ad3:
    jp Jump_016_7090


    inc bc
    db $e3
    sub b
    jp $c390


    sub b
    or e
    add e
    ld h, d
    rst $38
    dec h
    ld d, d
    ld d, l
    ld b, b
    call c, Call_016_6050
    sub c
    inc b
    jr nz, @-$15

    ld b, e
    nop
    ld h, h
    ld l, c
    ld b, h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    sub $94
    call nz, $9050
    di
    sub b
    jp $90ff


    jp $82a5


    inc bc
    sub e

jr_016_6b09:
    ld h, c
    db $10
    ld l, a
    ld hl, $b2a2
    sub b
    jp Jump_016_615d


    rst $38
    ld a, [c]
    add e
    dec h
    ld d, d
    ld d, l
    ld b, b
    or h
    sub c
    jr z, jr_016_6a9e

    inc de
    ld [hl], c
    ld bc, $6954
    ld b, h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    sub $94
    call nz, $9050
    di
    sub b
    jp $90ff


    jp $807f


    ld l, l
    ld h, [hl]
    call c, Call_016_7d62

jr_016_6b3f:
    dec h
    ld [hl], d
    inc [hl]
    dec sp
    ld [hl], h
    ld a, [hl-]
    ld [hl], d
    rst $38
    ld a, c
    sub d
    push hl
    ld h, c
    dec h
    ld d, d
    ld d, l
    ld b, b
    or h
    sub c
    jr z, jr_016_6ad3

    rst $20
    ld b, e
    ld c, d
    ld hl, $0603
    ld d, e
    add hl, sp
    ld [hl], h
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    sub $94
    call nz, $9050
    di
    sub b
    jp $90ff


    jp $84d7


    ld [hl], a
    ld h, b
    ld [hli], a
    ld h, c
    db $ed

jr_016_6b77:
    or d
    adc l
    ld b, b
    reti


    and h
    res 2, c
    rst $38
    cp d
    ld b, c
    ld h, $42
    ld d, l

jr_016_6b84:
    ld b, b
    or h
    sub c
    jr z, jr_016_6b09

    inc de
    ld d, c
    ld [hl], e
    jr nc, @+$49

    ld d, e
    ld bc, $61ce
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    sub $94
    call nz, $9050
    di
    sub b
    jp $90ff


    jp $84d6


    ld [hl], a
    ld d, b
    add [hl]
    ld h, e
    adc b
    ld h, b
    ld a, h
    ld h, d
    ld a, l
    sub b
    pop af
    sub e
    rst $38
    ld a, [c]
    add e
    dec h
    ld d, d
    ld d, l
    ld b, b
    or h
    sub c
    jr z, jr_016_6b3f

    rst $20
    ld b, e
    ld c, d
    ld hl, $5306
    ld bc, $7439
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    sub $94
    call nz, $9050
    di
    sub b
    jp $90ff


    jp $5094


    nop
    ld d, e
    cp $80
    add hl, hl
    ld [hl], b
    and h
    sub d
    ld e, [hl]
    ld [hl], c
    adc e
    inc h
    rst $38
    ld e, d
    ld h, c
    nop
    ld d, b
    dec h
    ld d, d
    ld d, l
    ld b, b
    or h

jr_016_6bf4:
    sub c
    jr z, jr_016_6b77

    inc de
    ld b, c
    ld l, [hl]
    jr nz, @+$05

    ld b, $43
    jr c, jr_016_6b84

    rst $38
    jr nz, jr_016_6c57

    ld d, h
    add c
    xor $a2
    cp a
    ld h, b
    cp [hl]
    add b
    ccf
    or h
    ld a, [c]
    add e
    ld a, [c]
    add e
    rst $38
    inc [hl]
    ld d, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa
    jr nc, jr_016_6c57

    ld d, l
    ld b, h
    ld d, d
    rst $38
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, [c]
    add e
    nop

jr_016_6c2e:
    ld d, b
    ld d, e
    dec h
    call nc, $0365
    ld [hl], l
    ld h, b
    ld a, [hl-]
    inc sp
    rst $38
    push af
    sub e
    dec e
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6bf4

    add c
    rst $38
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa

jr_016_6c57:
    jr nc, jr_016_6c91

    ld d, l
    rst $38
    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, [c]
    add e
    nop
    ld d, b

jr_016_6c69:
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    dec e
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6c2e

    add c
    rst JumpTable
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $e4
    ld d, c
    sub b
    jp $340f


    db $76

jr_016_6c91:
    daa
    jr nc, @+$01

    jr c, jr_016_6ceb

    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, [c]
    add e
    nop

jr_016_6ca3:
    ld d, b
    rrca
    ld d, e
    dec h
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $20ff
    ld d, h
    add hl, de
    push bc
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6c69

    add c
    rst $38
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa
    jr nc, jr_016_6d06

    ld d, l
    rst $38
    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, [c]
    add e
    nop

jr_016_6cdd:
    ld d, b
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    dec e

jr_016_6ceb:
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6ca3

    add c
    rst $38
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa

jr_016_6d06:
    jr nc, jr_016_6d40

    ld d, l
    rst $38
    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, [c]
    add e
    nop

jr_016_6d17:
    ld d, b
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $20ff
    ld d, h
    add hl, de
    push bc
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6cdd

    add c
    rst $38
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa

jr_016_6d40:
    jr nc, jr_016_6d7a

    ld d, l
    rst $38
    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    sub c
    ld [hl], b
    ld a, [c]
    add e
    ld a, [c]
    add e
    nop
    ld d, b
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    dec e
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6d17

    add c
    rst $38
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa

jr_016_6d7a:
    jr nc, @+$3a

    ld d, l
    rst $38
    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, [c]

jr_016_6d89:
    add e
    nop
    ld d, b
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    dec e
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld b, d
    add h
    ld a, [c]
    add e
    ld a, [c]
    add e
    rst $38
    inc [hl]
    ld d, b
    and $71
    rst $30
    sub e
    sub b
    ld [hl], b
    ld a, [c]
    sub e
    nop
    db $10
    jr c, jr_016_6e0a

    sub b
    ld d, l
    rst $38
    ld a, [c]
    add e
    push de
    and h
    pop de
    add h
    ld a, [bc]
    ld sp, $9236
    ld a, [c]

jr_016_6dc3:
    add e
    ld c, b
    add l
    rst $38
    ld d, b
    inc bc
    ld [hl], a
    ld d, b
    db $76
    ld sp, $dcff
    ld d, c
    add hl, de
    push bc
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6d89

    add c
    rst $38
    and e
    dec h
    sbc h
    ld d, b
    add h
    ld d, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa
    jr nc, jr_016_6e26

    ld d, l
    rst $38
    ld b, h
    ld d, d
    cp $80
    push de
    and h
    jp c, $f2a4

    add e
    ld a, [c]
    add e
    nop

jr_016_6dfd:
    ld d, b
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $20ff
    ld d, h

jr_016_6e0a:
    add hl, de
    push bc
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6dc3

    add c
    rst $38
    and e
    dec [hl]
    sbc l
    ld b, b
    ld l, h
    ld d, [hl]
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa

jr_016_6e26:
    jr nc, jr_016_6e60

    ld d, l
    rst $38
    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    ld a, [c]
    add e
    ld a, h
    ld h, d
    push hl
    ld [hl], c

jr_016_6e38:
    ld d, e
    dec h
    rlca
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    dec e
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6dfd

    add c
    rst JumpTable
    and e
    dec [hl]
    sbc l
    ld b, b
    add h
    ld d, c
    db $e4
    ld d, c
    sub b
    jp $340f


    ld d, [hl]

jr_016_6e60:
    ld a, [hl]
    ld d, b
    rst $38
    jr c, jr_016_6eba

    ld b, h
    ld d, d
    set 0, h
    and h
    sub d
    db $dd
    ld [hl], h
    scf
    sub h
    ld a, [c]
    add e
    nop
    ld b, b
    rrca

jr_016_6e74:
    ld d, e
    dec h
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    dec e
    add l
    and h
    sub d
    add hl, hl
    add c
    ld a, h
    ld h, d
    ld e, e
    add c
    inc b
    jr nc, jr_016_6e38

    add c
    rst $38
    and e
    ld [hl], l
    ld sp, $8510
    ld b, c
    db $fc
    and b
    and l
    add d
    inc [hl]
    db $76
    daa
    jr nc, jr_016_6ed5

    ld d, l
    rst $38
    jr z, jr_016_6ef5

    dec e
    and c
    adc l
    and b
    sub b
    ld h, b
    jp $c022


    ld d, e
    ld a, [c]
    add e
    nop

jr_016_6eae:
    ld d, b
    rrca
    ld d, e
    dec h
    inc h
    ld d, [hl]
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff

jr_016_6eba:
    sub e
    dec e
    ld [hl], l
    adc [hl]

jr_016_6ebe:
    sub b
    and l
    add d
    adc $84
    ld e, h
    ld [hl], c
    inc b
    jr nc, jr_016_6e74

    add c
    rst $38
    and e
    dec h
    inc b
    ld h, d
    ld e, l
    ld h, [hl]
    push hl
    and c
    and $71
    and l

jr_016_6ed5:
    ld b, c
    sub b
    ld d, b
    jr c, @+$57

    rst $38
    jr z, @+$55

    ld a, b
    and d
    inc bc
    ld [de], a
    sub b
    jp $c390


    pop af
    sub e
    inc hl
    jr nz, jr_016_6efa

    ld d, l

jr_016_6eeb:
    rlca
    jr nc, jr_016_6f41

    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e

jr_016_6ef5:
    dec e
    push bc
    ld l, [hl]
    ld [hl], e
    cp a

jr_016_6efa:
    ld h, b
    rst $08
    ld [hl], h
    ld e, h
    ld [hl], c
    inc b
    jr nc, jr_016_6eae

    add c
    cp a
    and e
    ld [hl], l
    add c
    ld h, c
    ld b, l
    db $10
    ld e, $36
    db $db
    ld [hl], e
    rst $30
    sub e
    ld [$159c], sp
    rst $38
    nop
    jr nz, jr_016_6f4f

    ld d, l
    jr jr_016_6ebe

    rst $30
    ld h, h
    adc [hl]
    sub b
    sub b
    jp Jump_016_52ad


    sbc $42
    rra
    adc h
    ld h, c
    sbc c
    ld b, l
    ld l, h
    ld d, d
    ld [hl], h
    add b
    db $76
    ld sp, $f5ff
    sub e
    rra
    add c
    ld l, [hl]
    sub e
    ld a, [c]
    add e
    rst $08
    ld [hl], h
    ld e, h
    ld [hl], c
    inc b
    jr nc, jr_016_6eeb

    add c
    rst $38

jr_016_6f41:
    and e
    dec h
    ld b, c
    ld h, l
    ld [hl], a
    ld d, b
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld c, a
    ld [hl], e
    sub b
    ld b, b

jr_016_6f4f:
    jr c, @+$57

    rst $38
    ld c, h
    ld d, b
    ld a, b
    and d
    rst AddAToHL
    add h
    sub b
    or e
    ld a, $05
    and h
    sub d
    dec bc
    inc [hl]
    ld b, e
    dec h
    rrca
    db $e4
    ld d, b
    db $ec
    add l
    ld [hl], a
    ld d, b
    db $76
    ld sp, $f2ff
    add e
    ld hl, sp-$7d
    di
    db $d3
    sub b
    jp $c390


    sub b
    jp $836e


    sub b
    jp $dcff


    ld h, d
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ccf
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    xor b
    ld d, l
    ld a, [c]
    add e
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    sbc $62
    pop af
    ld h, e
    sub b
    jp $836e


    sub b
    jp $c390


    rst $38
    sub b
    ld [hl], b
    adc [hl]
    sub b

jr_016_6fb0:
    sub b
    and e
    ret c

    ld b, l
    and h
    sub d
    inc e
    ld b, e
    sbc a
    ld b, c
    sub b
    ld [hl], b
    rst $38
    adc $73
    call c, $f284
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld h, $30
    db $76
    ld [hl], $f2
    add e

jr_016_6fcd:
    ld bc, $83f2
    rst $38
    ld a, [c]
    add e
    ld a, [c]
    add e
    rst $08
    add h
    ld a, [c]
    add e
    ld a, $a4
    adc $51
    dec d
    ld b, d
    pop de
    and h
    rst $38
    dec bc
    ld [hl], e
    ld c, a
    ld h, h
    ld a, h
    ld h, c
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    ld a, [c]
    add e
    rst $38
    add $84
    or $a3
    reti


    sub e
    ld a, [c]
    add e
    ld a, [c]

jr_016_6ffc:
    add e
    inc h
    ld d, b
    ld [de], a
    jr nc, @-$0c

    add e
    ld bc, $83f2
    nop
    ld b, b
    ld b, c
    add b
    adc b
    add b
    rst $08
    add b
    ld de, $4c41
    ld b, c
    ld [hl], h
    ld b, c
    or [hl]
    ld b, c
    pop af
    add c
    rrca
    add d
    dec l
    add d
    ld c, e
    add d
    adc c
    add d
    bit 0, d
    ld [de], a
    add e
    ld e, l
    add e
    sbc h
    add e
    jp hl


    add e
    jr nc, jr_016_6fb0

    ld l, d
    add h
    or e
    ld b, h
    or $84
    ld [hl], $45
    ld [hl], c
    ld b, l
    xor [hl]
    add l
    call z, $ea85
    add l
    ld [$4946], sp
    ld b, [hl]
    adc [hl]
    ld b, [hl]
    pop de
    add [hl]
    jr jr_016_6fcd

    ld h, h
    rlca
    or h
    add a
    pop af
    add a
    dec sp
    adc b
    add c
    adc b
    cp h
    ld c, b
    ld a, [$3988]
    adc c
    db $76
    adc c
    sub h
    adc c
    or d
    adc c
    ret nc

    adc c
    db $10
    adc d
    ld e, d
    ld c, d
    sbc l
    ld c, d
    sbc $4a
    inc hl
    dec bc
    ld [hl], e
    adc e
    xor a
    adc e
    ldh a, [$8b]
    jr z, jr_016_6ffc

    ld h, a
    ld c, h
    xor h
    adc h
    rst JumpTable
    adc h
    inc d
    adc l
    ld [hl-], a
    adc l
    ld d, b
    adc l
    ld l, [hl]
    adc l
    or h
    adc l
    rst $38
    ld c, l
    ld b, l
    ld c, [hl]
    ld a, [hl]
    adc [hl]
    or [hl]
    ld c, $06
    rrca
    ld d, [hl]
    ld c, a
    sbc a
    ld c, a
    and $8f

Jump_016_7090:
    inc l
    sub b
    ld h, d
    ld d, b
    sub b
    ld d, b
    ret nz

    ld d, b
    pop af
    ld d, b
    ld a, [hli]
    ld d, c
    ld e, h
    ld d, c
    adc a
    ld d, c
    jp $0851


    ld d, d
    ld b, d
    sub d
    add e
    sub d
    ret nz

    sub d
    add hl, bc
    sub e
    ld c, l
    sub e
    adc [hl]
    ld d, e
    db $db
    sub e
    daa
    ld d, h
    ld l, a
    ld d, h
    xor b
    ld d, h
    ld [c], a
    sub h
    dec hl
    sub l
    ld [hl], c
    sub l
    or l

Jump_016_70bf:
    sub l
    ld bc, $4196
    ld d, [hl]
    ld a, [hl]
    sub [hl]
    push bc
    sub [hl]
    ld a, [bc]
    ld d, a
    ld b, l
    ld d, a
    adc c
    ld d, a
    call z, $1c17
    sbc b
    ld d, l
    ld e, b
    sbc l
    sbc b
    add sp, $58
    ld [hl-], a
    sbc c
    ld [hl], h
    sbc c
    or a
    sbc c
    jp hl


    sbc c
    inc [hl]
    sbc d
    ld a, c
    ld e, d
    xor b
    ld e, d
    pop hl
    sbc d
    add hl, hl
    sbc e
    ld l, b
    sbc e
    or e
    sbc e
    db $fd
    sbc e
    ld b, [hl]
    sbc h
    ld a, c
    inc e
    ret


    sbc h
    ld de, $545d
    sbc l
    sbc h
    sbc l
    call c, $249d
    ld e, $74
    ld e, [hl]
    or c
    ld e, [hl]

jr_016_7104:
    ld a, [c]
    ld e, [hl]
    add hl, sp
    sbc a
    ld a, l
    sbc a
    call nz, $0a9f
    jr nz, jr_016_7169

    and b
    and h
    and b
    rst AddAToHL
    and b
    dec c
    and c
    ld e, d
    and c
    and a
    and c
    db $eb
    ld hl, $623b
    ld a, a
    and d
    bit 4, d
    inc d
    ld h, e
    ld d, a
    ld h, e
    and h
    ld h, e
    jp hl


    and e
    ld h, $a4
    ld d, h
    and h
    and e
    and h
    rst $28
    and h
    inc l
    and l
    ld l, d
    ld h, l
    or e
    and l
    ld hl, sp-$5b
    add hl, sp
    ld h, [hl]
    db $76
    and [hl]
    cp h
    ld h, $0c
    ld h, a
    ld d, h
    and a
    sbc a
    daa
    rst $28
    daa
    ccf
    xor b
    add l
    xor b
    or e
    xor b
    db $fd
    ld l, b
    ld c, c
    xor c
    ld [hl], e
    ld l, c
    xor b
    xor c
    ld a, [c]
    xor c
    jr z, jr_016_7104

    ld l, c
    xor d
    sbc e
    xor d
    push hl
    xor d
    inc l
    ld l, e
    ld [hl], h
    dec hl
    call nz, $026b
    inc l
    ld d, d

jr_016_7169:
    xor h
    sub a
    xor h
    call nc, $0c6c
    ld l, l
    ld b, [hl]
    xor l
    adc c
    xor l
    call nc, $20ad
    ld l, [hl]
    ld d, [hl]
    xor [hl]
    sub [hl]
    xor [hl]
    call nc, $242e
    ld l, a
    ld [hl], d
    xor a
    sub b
    xor a
    xor [hl]
    xor a
    call z, $15af
    ld [hl], b
    ld c, l
    or b
    sub l
    ld [hl], b
    rst AddAToHL
    or b
    ld a, [de]
    ld [hl], c
    ld c, [hl]
    or c
    sub b
    ld [hl], c
    jp nc, $1871

    ld [hl], d
    ld h, d
    ld [hl], d
    xor e
    or d
    rst $20
    or d
    daa
    or e
    ld b, l
    or e
    ld h, e
    or e
    add c
    ld [hl], e
    jp nz, $02b3

    or h
    ld d, b
    or h
    sub b
    or h
    cp a
    ld [hl], h
    ld a, [c]
    ld [hl], h
    ld [hl-], a
    ld [hl], l
    ld [hl], d
    or l
    cp d
    ld [hl], l
    inc bc
    or [hl]
    ld c, a
    or [hl]
    sbc c
    or [hl]
    or a
    or [hl]
    push de
    or [hl]
    di
    or [hl]
    ld de, $50b7
    or a
    adc c
    or a
    or h
    or a
    di
    or a
    rrca
    cp b
    dec [hl]
    cp b
    ld a, c
    cp b

jr_016_71d6:
    xor d
    ld a, b
    db $ed
    ld a, b
    inc sp
    ld a, c
    ld a, h
    cp c
    push bc
    cp c
    db $e3
    cp c
    ld bc, $1fba
    cp d
    dec a
    cp d
    ld l, [hl]
    cp d
    sbc [hl]
    cp d
    pop bc
    cp d
    rst $28
    cp d
    jr nc, jr_016_726d

    ld h, a
    cp e
    and d
    ld a, e
    db $db
    ld a, e
    inc d
    ld a, h
    ld e, h
    cp h
    ld a, d
    cp h
    sbc b
    cp h
    or [hl]
    cp h
    call nc, $f2bc
    cp h
    nop
    ld b, b
    ld b, c
    add b
    adc b
    add b
    rst $08
    add b
    di
    ld b, b
    ld l, $41
    ld d, [hl]
    ld b, c
    sbc b
    ld b, c
    db $d3
    add c
    rst $30
    add c
    dec de
    add d
    ccf
    add d
    ld a, l
    add d
    cp a
    ld b, d
    ld b, $83
    ld d, c
    add e
    sub b
    add e
    db $db
    add e
    ld [hli], a
    add h
    ld e, h
    add h
    add b
    ld b, h
    jp $0284


    ld b, l
    dec a
    ld b, l
    ld a, d
    add l
    sbc [hl]
    add l
    jp nz, $e685

    ld b, l
    daa
    ld b, [hl]
    ld l, h
    ld b, [hl]
    xor [hl]
    add [hl]
    push af
    add [hl]
    ld b, c
    rlca
    sub c
    add a
    adc $87
    jr jr_016_71d6

    inc a
    adc b
    ld [hl], a
    ld c, b
    or l
    adc b
    db $f4
    ld c, b
    ld a, [hli]
    adc c
    ld c, [hl]
    adc c
    ld [hl], d
    adc c
    sub [hl]
    adc c
    sub $89
    jr nz, jr_016_72ac

    ld h, e
    ld c, d
    and h
    ld c, d
    jp hl


    ld a, [bc]
    add hl, sp
    adc e
    ld [hl], l
    adc e
    or l

jr_016_726d:
    adc e
    reti


    adc e
    jr jr_016_72be

    ld e, l
    adc h
    sub b
    adc h
    push bc
    adc h
    jp hl


    adc h
    dec c
    adc l
    ld sp, $778d
    adc l
    jp nz, $0b4d

    ld c, [hl]
    ld b, h
    adc [hl]
    ld a, h
    ld c, $cc
    adc [hl]
    dec de
    ld c, a
    ld h, h
    ld c, a
    xor d
    adc a
    ldh a, [$8f]
    ld h, $90
    ld b, [hl]
    sub b
    ld [hl], e
    ld d, b
    xor b
    sub b
    ret nc

    sub b
    db $ec
    ld d, b
    ld a, [de]
    ld d, c
    ld c, [hl]
    ld d, c
    sub e
    ld d, c
    call $0e91
    sub d
    ld c, e
    ld d, d
    sub c
    sub d

jr_016_72ac:
    rst AddAToHL
    sub d
    add hl, de
    ld d, e
    ld h, [hl]
    sub e
    or d
    sub e
    ld a, [c]
    sub e
    inc h
    sub h
    ld e, e
    sub h
    add h
    sub h
    cp c
    sub h

jr_016_72be:
    db $fd
    sub h
    ld c, c
    sub l
    adc c
    ld d, l
    add $95
    dec c
    sub [hl]
    ld d, e
    ld d, [hl]
    adc [hl]
    ld d, [hl]
    jp nc, $1556

    rla
    ld h, l
    sub a
    sbc [hl]
    ld d, a
    and $97
    ld sp, $7b58
    sbc b
    or [hl]
    sbc b
    ld a, [$2c98]
    sbc c
    ld [hl], a
    sbc c
    cp e
    ld e, c
    ld [$2359], a
    sbc d
    ld l, e
    sbc d
    xor d
    sbc d
    push af
    ld e, d
    dec a
    sbc e
    add [hl]
    sbc e
    cp c
    dec de
    add hl, bc
    sbc h
    ld d, c
    ld e, h
    sub h
    sbc h
    pop de
    ld e, h
    inc de
    sbc l
    ld e, e
    dec e
    xor e
    ld e, l
    jp hl


    ld e, l
    add hl, hl
    ld e, [hl]
    ld [hl], b
    sbc [hl]
    or h
    sbc [hl]
    ei
    sbc [hl]
    ld b, b
    rra
    sub b
    sbc a
    jp c, $0d9f

    and b
    ld b, e
    and b
    sub b
    and b
    call c, $18a0
    ld hl, $6168
    and a
    and c
    di
    ld h, c
    inc a
    ld h, d
    add b
    ld h, d
    call $1162
    and e
    ld d, h
    and e
    adc l
    and e
    call c, $28a3
    and h
    ld h, l
    and h
    and e
    ld h, h
    db $ec
    and h
    ld sp, $72a5
    ld h, l

jr_016_733c:
    xor a
    and l
    push af
    dec h
    ld b, l
    ld h, [hl]
    adc l
    and [hl]
    ret c

    ld h, $28
    daa
    ld a, b
    and a
    ret nz

    and a
    ei
    and a
    ld b, e
    ld l, b
    adc a
    xor b
    cp c
    ld l, b
    ld sp, hl
    xor b
    ld b, a
    xor c
    adc e
    ld l, c
    push de
    xor c
    dec de
    xor d
    ld h, l
    xor d
    xor d
    ld l, d
    db $f4
    ld a, [hli]
    ld b, h
    ld l, e
    add d
    dec hl
    jp nc, $15ab

    xor h
    ld b, l
    ld l, h
    ld a, l
    ld l, h
    or a
    xor h
    ld a, [$45ac]
    xor l
    sub h
    xor l
    call nc, $1dad
    xor [hl]
    ld h, a
    ld l, $b7
    ld l, [hl]
    dec b
    ld l, a
    ld b, d
    xor a
    ld l, l
    ld l, a
    xor l
    xor a
    rst $30
    xor a
    jr nc, jr_016_733c

    ld [hl], a
    ld [hl], b
    or [hl]
    or b
    ld sp, hl
    ld [hl], b
    inc l
    or c
    ld l, [hl]
    ld [hl], c
    or b
    ld [hl], c
    or $71
    ld b, b
    or d
    add l
    or d
    pop bc
    or d
    ld bc, $41b3
    or e
    add b
    or e
    cp e
    ld [hl], e
    db $fc
    or e
    jr c, jr_016_73e0

    adc b
    or h
    ret z

    or h
    rst $30
    ld [hl], h
    ld a, [hli]
    ld [hl], l
    ld l, d
    ld [hl], l
    xor d
    or l
    ld a, [c]
    ld [hl], l
    dec sp
    or [hl]
    add a
    or [hl]
    pop de
    db $76
    inc bc
    or a
    cpl
    or a
    ld h, d
    or a
    sbc e
    or a
    db $d3
    or a
    ld b, $b8
    ld sp, $70b8
    cp b
    adc h
    cp b
    or d
    cp b
    or $b8
    daa
    ld a, c
    ld l, d
    ld a, c
    or b
    ld a, c
    ld sp, hl
    cp c
    ld b, c
    cp d

jr_016_73e0:
    ld h, e
    cp d
    ld [hl], l
    cp d
    sub h
    cp d
    or [hl]
    cp d
    jp hl


    cp d
    add hl, de
    cp e
    inc a
    cp e
    ld l, d
    cp e
    xor e
    ld a, e
    pop hl
    cp e
    inc e
    ld a, h
    ld e, h
    ld a, h
    sub l
    ld a, h
    db $dd
    cp h
    rla
    ld a, l
    ld a, $bd
    ld l, e
    cp l
    sbc l
    cp l
    cp e
    cp l
    nop
    ld b, b
    ld b, c
    add b
    adc b
    add b
    rst $08

jr_016_740d:
    add b
    xor $40
    add hl, hl
    ld b, c
    ld d, c
    ld b, c
    sub e
    ld b, c
    adc $81
    db $ed
    add c
    inc c
    add d
    dec hl
    add d
    ld l, c
    add d
    xor e
    ld b, d
    ld a, [c]
    add d
    dec a
    add e
    ld a, h
    add e
    rst $00
    add e
    ld c, $84
    ld c, b
    add h
    ld h, a
    ld b, h
    xor d
    add h
    db $ec
    ld b, h
    inc l
    ld b, l
    ld l, [hl]
    add l
    adc l
    add l
    xor h
    add l

jr_016_743c:
    bit 0, l
    inc c
    ld b, [hl]
    ld d, c
    ld b, [hl]
    sub e
    add [hl]
    jp c, $2686

    add a
    ld [hl], c
    add a
    xor [hl]
    add a
    ld hl, sp-$79
    rla
    adc b
    ld d, d
    ld c, b
    sub b
    adc b
    rst $08
    ld c, b
    ld a, [bc]
    adc c
    add hl, hl
    adc c
    ld c, b
    adc c
    ld h, a
    adc c
    and a
    adc c
    pop af
    ld c, c
    inc [hl]
    ld c, d
    ld [hl], l
    ld c, d
    cp d
    adc d
    ld [$428b], sp
    adc e
    ld a, d
    adc e
    sbc c
    adc e
    ret c

    ld c, e
    dec e
    adc h
    ld d, b
    adc h
    add l
    adc h
    and h
    adc h
    jp $e28c


    adc h
    jr z, jr_016_740d

    ld [hl], e
    ld c, l
    cp c
    ld c, l
    ld a, [c]
    adc l
    ld a, [hli]
    adc [hl]
    ld a, c
    adc [hl]
    or a
    ld c, [hl]
    ei
    ld c, [hl]
    ld a, [hl-]
    adc a
    add b
    adc a
    or [hl]
    adc a
    db $e4
    ld c, a
    dec de
    ld d, b
    ld c, a
    ld d, b
    adc e
    ld d, b
    cp h
    ld d, b
    rst $28
    ld d, b
    dec h
    ld d, c
    ld l, d
    ld d, c
    and h
    sub c
    push hl
    sub c
    jr nz, jr_016_743c

    ld h, c
    sub d
    and c
    sub d
    ldh [rHDMA2], a
    dec l
    sub e
    ld a, c
    sub e
    cp a
    ld d, e
    cp $93
    ld b, [hl]
    ld d, h
    adc [hl]
    ld d, h
    rst $08
    sub h
    inc de
    sub l
    ld e, a
    sub l
    sbc a
    ld d, l
    call c, $2395
    sub [hl]
    ld l, b
    ld d, [hl]
    and e
    ld d, [hl]
    rst $20
    ld d, [hl]
    ld a, [hli]
    rla
    ld a, d
    sub a
    or e
    ld d, a
    ei
    sub a
    ld b, [hl]
    ld e, b
    sub b
    ld e, b
    call nc, $1758
    sbc c
    ld c, c
    sbc c
    sub h
    sbc c
    ret c

    ld e, c
    rlca
    ld e, d
    ld b, b
    sbc d
    adc b
    sbc d
    rst $00
    sbc d
    ld [de], a
    ld e, e
    ld d, [hl]
    sbc e
    sbc a
    sbc e
    jp nc, $221b

    sbc h
    ld l, d
    ld e, h
    xor l
    sbc h
    ld a, [c]
    ld e, h
    inc a
    sbc l
    add h
    dec e
    call nc, $125d
    ld e, [hl]
    ld d, e
    ld e, [hl]
    sbc d
    sbc [hl]
    sbc $9e
    dec h
    sbc a
    ld l, e
    sbc a
    xor [hl]
    sbc a
    ld hl, sp-$61
    dec hl
    and b
    ld h, c
    and b
    xor [hl]
    and b
    ld a, [$36a0]
    ld hl, $6186
    push bc
    ld h, c
    ld de, $5a62
    ld h, d
    sbc h
    ld h, d
    jp hl


    ld h, d
    dec l
    and e
    ld [hl], b
    and e
    xor c
    and e
    ld hl, sp-$5d
    ld b, h
    and h
    add c
    and h
    cp a
    ld h, h
    ld [$4da5], sp
    and l
    adc [hl]
    ld h, l
    res 4, l
    ld de, $6126
    ld h, [hl]
    xor c
    and [hl]
    db $f4
    ld h, $44
    daa
    sub h
    and a
    call c, $17a7
    xor b
    ld e, e
    ld l, b
    and a
    xor b
    pop de
    ld l, b
    ld b, $a9
    ld d, b
    xor c
    add [hl]
    xor c
    rst $00
    xor c
    ld sp, hl
    xor c
    ld b, e
    xor d
    adc b
    ld l, d
    rst $08
    ld a, [hli]
    rra
    ld l, e
    ld e, l
    dec hl
    xor l
    xor e
    ldh a, [$ab]
    jr nz, jr_016_75da

    ld e, b
    xor h
    sub d
    xor h
    push de
    xor h
    ld hl, $6dad
    ld l, l
    and e
    xor l
    db $e3
    xor l
    ld hl, $712e
    ld l, [hl]
    cp a
    xor [hl]
    sbc $ae
    db $fd
    xor [hl]
    inc e
    xor a
    ld h, l
    ld l, a
    sbc l
    xor a
    ld [c], a
    ld l, a
    ld hl, $65b0
    ld [hl], b
    sbc b
    or b
    jp c, $1c70

    ld [hl], c
    ld h, d
    ld [hl], c
    xor h
    or c
    pop af
    or c
    dec l
    or d
    ld l, l
    or d
    adc h
    or d
    xor e
    or d
    jp z, $0b72

    or e
    ld b, a
    inc sp
    sub a
    or e
    rst AddAToHL
    or e
    ld b, $74
    add hl, sp
    ld [hl], h
    ld a, c
    or h
    cp d
    or h
    ld bc, $4a75
    or l
    sub [hl]
    or l
    ldh [$b5], a
    rst $38
    or l
    ld e, $b6
    dec a
    or [hl]
    ld e, h
    or [hl]
    sub h
    or [hl]
    rst $00
    or [hl]
    ld a, [c]
    or [hl]
    ld sp, $4db7
    or a
    ld [hl], e
    or a
    or a
    or a
    add sp, $77
    dec hl
    ld a, b

jr_016_75da:
    ld [hl], b
    ld a, b
    cp c
    cp b
    ld bc, $20b9
    cp c
    ccf
    cp c
    ld e, [hl]
    cp c
    ld a, l
    cp c
    xor [hl]
    cp c
    sbc $b9
    ld bc, $2fba
    cp d
    ld [hl], b
    ld a, d
    and [hl]
    cp d
    pop hl
    cp d
    ld [hli], a
    ld a, e
    ld e, e
    ld a, e
    and e
    cp e
    jp nz, $e1bb

    cp e
    nop
    cp h
    rra
    cp h
    ld a, $bc
    nop
    ld b, b
    ld b, c
    add b
    adc b
    add b
    db $d3

jr_016_760d:
    add b
    dec e
    ld b, c
    ld e, b
    ld b, c
    add b
    ld b, c
    jp nz, $fd41

    add c
    ld b, [hl]
    ld b, d
    ld a, e
    ld b, d
    xor a
    add d
    db $ed
    add d
    cpl
    ld b, e
    db $76
    add e
    pop bc
    add e
    nop
    add h
    ld c, l
    add h
    sub h
    add h
    db $db
    add h
    inc h
    ld b, l
    ld h, a
    add l
    xor l
    ld b, l
    add sp, $45
    dec h
    add [hl]
    ld h, c
    ld b, [hl]
    and [hl]
    add [hl]
    add sp, $46
    ld a, [hli]
    ld b, a
    ld [hl], c
    add a
    or [hl]
    add a
    rst $38
    add a
    ld c, e
    ld [$889b], sp
    sub $48
    ld e, $89
    ld h, h
    ld c, c
    and h
    ld c, c
    db $e4
    adc c

jr_016_7654:
    daa
    adc d

jr_016_7656:
    ld h, h
    adc d
    xor e
    adc d
    db $eb
    adc d
    inc sp
    adc e
    ld [hl], e
    adc e
    cp l
    ld c, e
    nop
    ld c, h
    ld b, c
    ld c, h
    add [hl]
    inc c
    sub $8c
    ld [de], a
    adc l
    ld d, c
    adc l
    adc c
    adc l
    ret z

    ld c, l
    dec c
    adc [hl]
    ld b, b
    adc [hl]
    ld [hl], l
    adc [hl]
    cp c
    adc [hl]
    ld a, [c]
    ld c, [hl]
    jr c, jr_016_760d

    add b
    adc a
    bit 1, a
    inc de
    ld d, b
    ld c, h
    sub b
    add h
    db $10
    call nc, $1390
    ld d, c
    ld e, b
    ld d, c
    sbc [hl]
    sub c
    db $e4
    sub c
    ld a, [de]
    sub d
    dec [hl]
    sub d
    ld d, c
    sub d
    ld l, l
    sub d
    adc c
    sub d
    and l
    sub d
    pop bc
    sub d
    db $dd
    ld d, d
    rra
    ld d, e

jr_016_76a4:
    ld h, d
    sub e
    and e
    sub e
    pop hl
    sub e
    ld a, [hli]
    sub h
    ld [hl], d
    sub h
    or e
    ld d, h
    nop
    ld d, l
    ld c, e
    sub l
    ld h, a
    sub l
    add e
    sub l
    sbc a
    sub l
    cp e
    sub l
    rst AddAToHL
    sub l
    jr jr_016_7656

    ld h, [hl]
    sub [hl]
    and d
    ld d, [hl]
    push hl
    sub [hl]
    inc l
    sub a
    ld [hl], c
    ld d, a
    xor h
    ld d, a
    ldh a, [$57]
    inc sp
    jr jr_016_7654

    sbc b
    cp h
    ld e, b
    inc b
    sbc c
    ld c, a
    ld e, c
    sbc c
    sbc c
    or l
    sbc c
    pop de
    sbc c
    dec bc
    sbc d
    ld e, b
    sbc d
    sbc l
    ld e, d
    jp c, $139a

    sbc e
    ld e, e
    sbc e
    sbc c
    sbc e
    db $e4
    sbc e
    ld l, $9c
    ld [hl], a
    sbc h
    xor d
    inc e
    ld a, [$429c]
    ld e, l
    add l
    sbc l
    and c

jr_016_76fb:
    sbc l
    cp l
    sbc l
    rlca
    ld e, $57
    ld e, [hl]
    sub [hl]
    ld e, [hl]

jr_016_7704:
    rst AddAToHL
    ld e, [hl]
    ld [hli], a
    sbc a
    ld h, [hl]
    sbc a
    xor l
    sbc a
    di
    rra
    ld b, e
    jr nz, jr_016_76a4

    and b
    add $a0
    db $fc
    and b
    ld c, b
    and c
    sub l
    and c
    jp c, $2a21

    ld h, d
    ld l, [hl]
    ld h, d
    cp d
    ld h, d
    inc bc
    ld h, e
    ld b, [hl]
    inc hl
    sub [hl]
    ld h, e
    ret c

    and e
    dec d
    and h
    ld b, e
    and h
    sub d
    and h
    db $dd
    and h
    ld a, [de]
    and l
    ld e, b
    ld h, l
    and c
    and l
    and $a5
    daa
    ld h, [hl]
    ld h, h
    and [hl]
    xor c
    ld h, [hl]
    db $f4
    ld h, [hl]
    ld a, [hl-]
    and a
    add l
    daa
    push de
    daa
    dec h
    xor b
    ld l, e
    xor b
    and d
    xor b
    db $ec
    ld l, b
    jr c, jr_016_76fb

    ld h, d
    ld l, c
    sub a
    xor c
    pop hl
    xor c
    jr nz, jr_016_7704

    ld h, [hl]
    xor d
    sbc b
    xor d
    ld [c], a
    xor d
    daa
    xor e
    ld l, [hl]
    dec hl
    cp [hl]
    ld l, e
    db $fd
    dec hl
    ld c, l
    xor h
    sub e
    xor h
    call nc, $0c6c
    ld l, l
    ld b, [hl]
    xor l
    adc c
    xor l
    push de
    xor l
    ld [hli], a
    ld l, [hl]
    ld e, h
    xor [hl]
    and b
    xor [hl]
    sbc $2e
    ld l, $2f
    ld a, [hl]
    xor a
    sbc d
    xor a
    or [hl]
    xor a
    jp nc, $1baf

    ld [hl], b
    ld d, e
    or b
    sbc d
    or b
    sbc $b0
    ld [hli], a
    ld [hl], c
    ld d, [hl]
    or c
    sbc h
    ld [hl], c
    sbc $71
    inc h
    ld [hl], d
    ld l, l
    or d
    or a
    or d
    ld a, [c]
    or d
    ld [hl-], a
    or e
    ld c, [hl]
    or e
    ld l, d
    or e
    add [hl]
    ld [hl], e
    add $b3
    rlca
    or h
    ld d, [hl]
    or h
    sub [hl]
    or h
    push bc
    ld [hl], h
    ld hl, sp-$4c
    inc a
    ld [hl], l
    ld a, h
    ld [hl], l
    push bc
    or l
    ld de, $5db6
    or [hl]
    and [hl]
    or [hl]
    jp nz, $deb6

    or [hl]
    ld a, [$16b6]
    or a
    ld d, [hl]
    or a
    sub b
    or a
    cp e
    or a
    ld a, [$16b7]
    cp b
    inc a
    ld a, b
    ld a, e
    cp b
    xor h
    ld a, b
    pop af
    cp b
    ld [hl-], a
    ld a, c
    ld a, e
    ld a, c
    jp $dfb9


    cp c
    ei
    cp c
    rla
    cp d
    inc sp
    cp d
    ld h, h
    cp d
    sub h
    cp d
    or a
    cp d
    push hl
    cp d

jr_016_77f0:
    ld h, $7b
    ld e, l
    cp e
    sbc b
    ld a, e
    jp nc, $0b7b

    ld a, h
    ld d, b
    cp h
    ld l, h
    cp h
    adc b
    cp h
    and h
    cp h
    ret nz

    cp h
    call c, $00bc
    nop
    ld d, b
    ld b, b
    sbc e
    ld b, b
    db $e3
    ld b, b
    ld l, $81
    ld a, b
    ld b, c
    push bc
    add c
    ld [de], a
    ld [bc], a
    ld h, d
    add d
    xor l
    ld [bc], a
    db $fd
    add d
    ld b, b
    inc bc
    sub b
    inc bc
    ldh [$83], a
    rst $28
    add e
    cp $83
    dec c
    add h
    ld d, [hl]
    inc b
    and [hl]
    inc b
    or $84
    ld b, h
    ld b, l
    adc h
    ld b, l
    ret nc

    dec b
    jr nz, jr_016_783c

    ld [hl], b
    add [hl]
    and d
    add [hl]
    jp hl


    add [hl]

jr_016_783c:
    inc hl
    add a
    ld l, h
    add a
    or l
    ld b, a
    ld bc, $1088
    adc b
    rra
    adc b
    ld l, b
    ld [$08b8], sp
    ld [$5809], sp
    ld c, c
    and d
    ld c, c
    db $ec
    adc c
    ld a, [hl-]
    ld c, d
    add e
    ld c, d
    rst $00
    adc d
    ld b, $8b
    ld c, b
    dec bc
    sbc b
    dec bc
    add sp, $0b
    jr c, jr_016_77f0

jr_016_7864:
    ld b, a
    adc h
    ld d, [hl]
    ld c, h
    sub a
    ld c, h
    rst JumpTable
    ld c, h
    ld [hli], a
    dec c
    ld [hl], d
    adc l
    cp a
    ld c, l
    rlca
    adc [hl]
    ld d, c
    adc [hl]
    sub [hl]
    ld c, [hl]
    pop de
    adc [hl]
    jr jr_016_78cb

    ld e, e
    rrca
    xor e
    rrca
    ei
    rrca
    ld c, e
    db $10
    sbc e
    sub b
    xor d
    ld d, b
    ld [$3190], a
    ld de, $5181
    call z, $0e51
    ld [de], a
    ld e, [hl]
    sub d
    and e
    sub d
    ldh [$92], a
    inc h
    sub e
    ld [hl], b
    sub e
    xor l
    ld d, e
    ld sp, hl
    sub e
    ld b, h
    ld d, h
    adc l
    ld d, h
    sub $94
    push hl
    ld d, h
    cpl
    dec d
    ld a, a
    dec d
    rst $08
    ld d, l
    rrca
    sub [hl]
    ld d, [hl]
    sub [hl]
    sbc e
    sub [hl]
    and $16

jr_016_78b6:
    ld [hl], $57
    ld [hl], e
    rla
    jp $0357


    jr jr_016_7912

    jr jr_016_7864

    jr jr_016_78b6

    jr jr_016_7908

    sbc c
    ld d, d
    add hl, de
    and d
    add hl, de
    ld a, [c]

jr_016_78cb:
    sbc c
    inc a
    sbc d
    ld [hl], d
    sbc d
    xor e
    sbc d
    pop de
    sbc d
    rlca
    sbc e
    inc [hl]
    sbc e
    ld a, [hl]
    sbc e
    push bc
    dec de
    dec d
    sbc h
    ld e, [hl]

jr_016_78df:
    sbc h
    ld l, l
    sbc h
    ld a, h
    sbc h
    adc e
    sbc h
    sbc d
    sbc h
    adc $9c
    ld b, $5d
    ld b, h
    sbc l
    ld [hl], a
    ld e, l
    or d
    sbc l
    ldh [$5d], a
    dec b
    sbc [hl]
    dec sp
    sbc [hl]
    add l
    sbc [hl]
    ret z

    sbc [hl]
    db $10
    rra
    ld h, b
    sbc a
    ld l, a
    sbc a
    ld a, [hl]
    sbc a
    adc l
    sbc a
    sbc h
    ld e, a

jr_016_7908:
    call c, $045f
    ld h, b
    add hl, sp
    ld h, b
    ld [hl], e
    ld h, b
    and a
    ld h, b

jr_016_7912:
    jp c, $0da0

    and c
    ld c, h
    and c
    add [hl]
    and c
    push bc
    ld h, c
    ld [$4162], sp
    ld h, d
    ld h, l
    ld h, d

jr_016_7922:
    and b
    and d
    pop hl
    and d
    inc l
    ld h, e
    ld h, l
    ld h, e
    and e
    ld h, e
    sub $a3
    dec bc
    ld h, h
    jr c, jr_016_7996

    ld [hl], b
    and h
    xor d
    ld h, h
    ldh [$64], a
    jr z, jr_016_78df

    ld l, d
    ld h, l
    sub l
    ld h, l
    ret


    ld h, l
    ld a, [$3a65]
    and [hl]
    ld a, a
    and [hl]
    push bc
    and [hl]
    ld b, $67
    ld b, e
    and a
    add c
    and a
    cp l
    ld h, a
    ld hl, sp-$59
    scf
    ld l, b
    ld l, l
    xor b
    adc h
    xor b
    adc $68
    ld a, [bc]
    xor c
    inc a
    ld l, c
    add d
    xor c
    add $a9
    rrca
    ld l, d
    ld b, c
    ld l, d
    ld a, c
    ld l, d
    xor c
    xor d
    ldh [rOCPS], a
    jr jr_016_79d9

    ld e, d
    ld l, e
    sbc [hl]
    ld l, e
    db $dd
    xor e
    jr nz, jr_016_7922

    ld d, h
    ld l, h
    add [hl]
    ld l, h
    xor a
    ld l, h
    ldh [$ac], a
    rst $28
    xor h
    cpl
    xor l
    ld [hl], b
    xor l
    ld a, a
    xor l
    adc [hl]
    xor l
    sbc l
    xor l
    xor h
    xor l
    cp e
    xor l
    jp z, $d9ad

    xor l
    add sp, -$53
    rst $30
    xor l

jr_016_7996:
    ld b, $ae
    dec d
    xor [hl]
    inc h
    xor [hl]
    inc sp
    xor [hl]
    ld b, d
    xor [hl]
    ld d, c
    xor [hl]
    ld h, b
    xor [hl]
    ld l, a
    xor [hl]
    ld a, [hl]
    ld l, [hl]
    res 5, [hl]
    inc de
    ld l, a
    ld e, b
    xor a
    and c
    ld l, a
    xor $af
    ld [hl], $70
    ld a, e
    or b
    call nz, $1170
    or c
    ld e, c
    ld [hl], c
    sbc [hl]
    or c
    rst $20
    ld [hl], c
    inc [hl]
    or d
    ld a, h
    ld [hl], d
    pop bc
    or d
    ld a, [bc]
    or e
    ld d, c
    ld [hl], e
    sub e
    or e
    ret c

    ld [hl], e
    rra
    or h
    ld h, [hl]
    ld [hl], h
    xor b
    or h
    db $ed
    ld [hl], h
    inc [hl]
    or l
    ld a, e

jr_016_79d9:
    ld [hl], l
    cp l
    or l
    ld [bc], a
    db $76
    ld c, c
    or [hl]
    sub b
    db $76
    jp nc, $17b6

    ld [hl], a
    ld e, [hl]
    or a
    ld l, l
    or a
    ld a, h
    or a
    adc e
    or a
    sbc d
    or a
    xor c
    or a
    cp b
    or a
    rst $00
    or a
    sub $b7
    push hl
    or a
    db $f4
    or a
    inc bc
    cp b
    ld [de], a
    cp b
    ld hl, $30b8
    cp b
    ccf
    cp b
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
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16

Call_016_7d62:
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

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX

    jp c, $9e5a

    halt
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

Call_017_4010:
    inc bc
    nop
    inc bc
    inc b
    nop
    inc b
    dec b
    nop
    dec b
    ld b, $00
    ld b, $07
    nop
    rlca
    ld [$0800], sp
    add hl, bc
    nop
    ld [$000a], sp
    add hl, bc
    dec bc
    nop
    add hl, bc
    inc c
    nop
    ld a, [bc]
    dec c
    nop
    ld a, [bc]
    ld c, $00
    dec bc
    rrca
    nop
    nop
    stop
    nop
    ld de, $0000
    ld [de], a
    nop
    inc c
    inc de
    nop
    ld a, [bc]
    inc d
    nop
    dec c
    inc d
    nop
    nop
    dec d
    nop
    ld a, [bc]

Call_017_404c:
    ld d, $00
    ld c, $17
    nop

Jump_017_4051:
    rrca
    jr jr_017_4054

jr_017_4054:
    db $10
    add hl, de
    nop
    ld c, $1a
    nop
    ld de, $001b
    ld [de], a
    inc e
    nop
    inc de
    dec e
    nop
    inc d
    ld e, $00
    ld c, $1f
    nop
    rrca
    jr nz, jr_017_406c

jr_017_406c:
    db $10
    ld hl, $0e00
    ld [hl+], a
    nop
    dec d
    inc hl
    nop
    ld d, $24
    nop
    ld a, [bc]
    dec h
    nop
    ld c, $26
    nop
    ld c, $27
    nop
    ld c, $28
    nop
    ld c, $29
    nop
    inc bc
    ld a, [hl+]
    nop
    inc bc
    dec hl
    nop
    inc bc
    inc l
    nop
    inc bc
    dec l
    nop
    inc bc
    ld l, $00
    inc bc
    cpl
    nop
    rla
    jr nc, jr_017_409c

jr_017_409c:
    jr jr_017_40cf

    nop
    rla
    ld [hl-], a
    nop
    inc bc
    ld sp, $0300
    ld [hl-], a
    nop
    add hl, de
    inc sp
    nop
    db $10
    inc [hl]
    nop
    rrca
    inc sp
    nop
    ld c, $34
    nop
    ld c, $35
    nop
    inc bc
    ld [hl], $00
    add hl, de
    scf
    nop
    inc bc
    jr c, jr_017_40c0

jr_017_40c0:
    add hl, de
    add hl, sp
    nop
    add hl, de
    ld a, [hl-]
    nop
    ld a, [de]
    dec sp
    nop
    inc bc
    inc a
    nop
    nop
    dec a
    nop

jr_017_40cf:
    inc c
    ld a, $00
    inc c
    ccf
    nop
    inc c
    ld b, b
    nop
    inc c
    ld b, c
    nop
    inc c
    ld b, d
    nop
    inc c
    ld b, e
    nop
    inc c
    ld b, h
    nop
    dec c
    ld b, l
    nop
    ld [$0046], sp
    dec de
    ld b, a
    nop
    inc e
    ld c, b
    nop
    add hl, de
    ld c, c
    nop
    dec e
    ld c, d
    nop
    ld e, $4b
    nop
    rra
    ld c, h
    nop
    jr nz, @+$4f

    nop
    ld hl, $004e
    ld [hl+], a
    ld c, a
    nop
    rra
    ld d, b
    nop
    inc hl
    ld d, c
    nop
    ld hl, $0052
    inc h
    ld d, e
    nop
    rra
    ld d, h
    nop
    dec h
    ld d, l
    nop
    ld hl, $0056
    ld h, $57
    nop
    rra
    ld e, b
    nop
    dec h
    ld e, c
    nop
    ld hl, $005a
    ld h, $5b
    nop
    daa
    ld e, h
    nop
    jr z, jr_017_418b

    nop
    add hl, hl
    ld e, [hl]
    nop
    ld a, [hl+]
    ld e, a
    nop
    dec hl
    ld h, b
    nop
    inc l
    ld h, c
    nop
    dec l
    ld h, d
    nop
    ld l, $63
    nop
    cpl
    ld h, h
    nop
    add hl, bc
    ld h, l
    nop
    jr nc, jr_017_41af

    nop
    ld c, $67
    nop
    ld sp, $0068
    ld [hl-], a
    ld l, c
    nop
    inc sp
    ld l, d
    nop
    inc [hl]
    ld l, e
    nop
    dec [hl]
    ld l, h
    nop
    ld [hl], $6d
    nop
    scf
    ld l, [hl]
    nop
    jr c, jr_017_41d3

    nop
    add hl, sp
    ld [hl], b
    nop
    ld a, [hl-]
    ld [hl], c
    nop
    dec sp
    ld [hl], d
    nop
    inc a
    ld [hl], e
    nop
    dec a
    ld [hl], h
    nop
    inc bc
    ld [hl], l
    nop
    inc bc
    halt
    ld a, $77
    nop
    ccf
    cpl
    nop
    inc bc
    ld a, b
    nop
    inc bc
    nop
    nop
    ld c, $79
    nop
    ld c, $7a

jr_017_418b:
    nop
    ld c, $7b
    nop
    ld sp, $0003
    ld c, $00
    nop
    ld sp, $007c
    ld b, b
    ld a, l
    nop
    db $10
    ld a, [hl]
    nop
    rrca
    ld a, a
    nop
    ld c, $80
    nop
    ld c, $81
    nop
    rrca
    add d
    nop
    db $10
    add e
    nop
    ld b, b
    add h

jr_017_41af:
    nop
    ld b, c
    add l
    nop
    ld b, d
    add [hl]
    nop
    ld b, e
    add a
    nop
    ld b, h
    adc b
    nop
    inc bc
    adc c
    nop
    add hl, de
    adc d
    nop
    rla
    adc e
    nop
    inc bc
    adc h
    nop
    ld b, l
    adc l
    nop
    ld b, [hl]
    adc [hl]
    nop
    ld b, a
    adc a
    nop
    ld c, b
    sub b

jr_017_41d3:
    nop
    ld sp, $0091
    ld c, c
    sub d
    nop
    ld c, d
    sub e
    nop
    ld c, e
    sub h
    nop
    ld c, h
    sub l
    nop
    rra
    sub [hl]
    nop
    ld c, l
    sub a
    nop
    add hl, de
    sbc b
    nop
    dec c
    sbc c
    nop
    dec c
    sbc d
    nop
    dec c
    sbc e
    nop
    dec c
    sbc h
    nop
    dec c
    sbc l
    nop
    dec c
    sbc [hl]
    nop

Call_017_41fe:
    dec c
    sbc a

Jump_017_4200:
    nop
    inc b
    and b
    nop
    inc b
    and c
    nop
    dec c
    and d
    nop
    inc bc
    ld a, e
    nop
    add hl, de
    and e
    nop
    ld c, [hl]
    and h
    nop
    ld c, a
    and l
    nop
    add hl, de
    and [hl]
    nop
    inc c
    and a
    nop
    inc c
    xor b
    nop
    ld d, b
    xor c
    nop
    ld d, b
    xor d
    nop
    ld d, b
    xor e
    nop
    ld sp, $00ac
    ld a, [bc]
    dec h
    nop
    inc bc
    ld h, $00
    inc bc
    cpl
    nop
    ld a, $ad
    nop
    ld sp, $0033
    ld d, c
    inc [hl]
    nop
    ld d, d
    inc sp
    nop
    ld a, [bc]
    inc [hl]
    nop
    ld a, [bc]
    adc b
    nop
    dec c
    xor [hl]
    nop
    ld d, e
    ld [hl], a
    nop
    ld a, $af
    nop
    inc bc
    or b
    nop
    add hl, de
    or c
    nop
    rla
    or d
    nop
    inc bc
    or e
    nop
    ld d, h
    or h
    nop
    ld b, a
    or l
    nop
    inc c
    xor a
    nop
    inc c
    or d
    nop
    inc c
    or [hl]
    nop
    ld d, l
    or a
    nop
    ld d, [hl]
    cp b
    nop
    ld d, a
    cp c
    nop
    ld e, b
    cp d
    nop
    ld e, c
    sbc h
    nop
    ld e, d
    sbc l
    nop
    nop
    sbc [hl]
    nop
    nop
    and [hl]
    nop
    dec c
    and a
    nop
    dec c
    ld sp, $5b00
    ld [hl-], a
    nop
    dec c
    ld sp, $0d00
    ld [hl-], a
    nop
    ld e, h
    ld h, e
    nop
    ld e, l
    cp e
    nop
    ld a, $bc
    nop
    ld c, $76
    nop
    jr jr_017_42ce

    nop
    ld e, [hl]
    add h
    nop
    ld e, a
    add l
    nop
    ld h, b
    add [hl]
    nop
    ld h, c
    add a
    nop
    ld e, $b6
    nop
    ld h, d
    or a
    nop
    ld h, e
    cp b
    nop
    ld h, h
    cp c
    nop
    ld h, l
    cp d
    nop
    ld h, [hl]
    sbc h
    nop
    ld h, a
    and e
    nop
    ld l, b
    and h
    nop
    ld l, c
    and [hl]
    nop
    nop
    and a
    nop
    nop
    cp l
    nop
    ld [bc], a

jr_017_42ce:
    cp [hl]
    nop
    ld [bc], a
    inc d
    nop
    ld a, [bc]
    inc d
    nop
    inc c
    cp e
    nop
    ld e, [hl]
    ld l, b
    nop
    ld l, d
    ld l, c
    nop
    ld l, e
    ld l, d
    nop
    ld l, h
    ld l, e
    nop
    ld l, l
    ld l, h
    nop
    ld l, [hl]
    ld l, l
    nop
    ld l, a
    ld l, [hl]
    nop
    ld [hl], b
    ld l, a
    nop
    ld [hl], c
    ld [hl], b
    nop
    ld [hl], d
    ld [hl], c
    nop
    ld [hl], e
    ld [hl], d
    nop
    ld [hl], h
    ld [hl], e
    nop
    ld [hl], l
    halt

Call_017_4300:
    ccf
    and [hl]
    nop
    ld c, $a7
    nop
    ld c, $45
    nop
    ld de, $0046
    db $76
    ld b, a
    nop
    ld [hl], a
    ld c, b
    nop
    rrca
    ld c, c
    nop
    ld a, b
    ld c, d
    nop
    ld a, c
    ld [hl], l
    nop
    ld c, $bf
    nop
    ld a, $76
    nop
    ld a, d
    inc sp
    nop
    rla
    inc [hl]
    nop
    add hl, de
    inc sp
    nop
    inc bc
    inc [hl]
    nop
    inc bc
    xor a
    nop
    nop
    ld e, e
    nop
    ld a, e
    ld e, h
    nop
    ld [$005d], sp
    ld a, h
    ld e, [hl]
    nop
    ld a, l
    ld e, a
    nop
    ld a, [hl]
    ld h, b
    nop
    ld a, a
    ld h, c
    nop
    add b
    ld h, d
    nop
    add c
    ld h, e
    nop
    add d
    ret nz

    nop
    ld c, $c1
    nop
    ld sp, $00ae
    add e
    xor [hl]
    nop
    ld [bc], a
    jp nz, $4100

    jp Jump_017_4200


    call nz, Call_017_4300
    push bc
    nop
    ld b, h
    add $00
    dec c
    rst $00
    nop
    dec c
    ret z

    nop
    dec c
    ret


    nop
    add h
    jp z, Jump_017_6600

    rlc b
    inc c
    call z, RST_00
    ld h, h
    nop
    rra
    ld h, l
    nop
    ld hl, $0030
    ccf
    cp h
    nop
    inc bc
    add h
    nop
    add l
    add l
    nop
    add [hl]
    add [hl]
    nop
    add a
    add a
    nop
    ld a, c
    sub h
    nop
    adc b
    call $0b00
    adc $00
    ld c, $cf
    nop
    rrca
    ret nc

    nop
    db $10
    pop de
    nop
    ld c, $d2
    nop
    ld de, $00d3
    ld [de], a
    call nc, $1300
    push de
    nop
    inc d
    sub $00
    ld c, $d7
    nop
    rrca
    ret c

    nop
    db $10
    reti


    nop
    ld c, $da
    nop
    dec d
    db $db
    nop
    ld d, $dc
    nop
    adc c
    db $dd
    nop
    ld [$00de], sp
    ld a, $df
    nop
    ld sp, $00e0
    nop
    pop hl
    nop
    inc c
    ld [c], a
    nop
    inc c
    db $e3
    nop
    inc c
    db $e4
    nop
    inc c
    push hl
    nop
    inc c
    inc bc
    nop
    nop
    ld [hl], l
    nop
    ld sp, $00e6
    ld l, d
    rst $20
    nop
    ld l, e
    add sp, $00
    ld l, h
    jp hl


    nop
    ld l, l
    ld [$6e00], a
    db $eb
    nop
    ld l, a
    db $ec
    nop
    ld [hl], b
    db $ed
    nop
    ld [hl], c
    xor $00
    ld [hl], d
    rst $28
    nop
    ld [hl], h
    ldh a, [rP1]
    ld [hl], l
    pop af
    nop
    adc d
    ld a, [c]
    nop
    adc e
    di
    nop
    adc h
    db $f4
    nop
    adc l
    push af
    nop
    ccf
    or $00
    ld a, $f7
    nop
    ccf
    ld hl, sp+$00
    ld c, $f9
    nop
    ld sp, $00fa
    ld b, b
    ei
    nop
    db $10
    db $fc
    nop
    rrca
    db $fd
    nop
    ld c, $fe
    nop
    ld c, $ff
    nop
    rrca
    nop
    db $10
    db $10
    ld bc, $4010
    ld [bc], a
    db $10
    adc [hl]
    inc bc
    db $10
    ld e, $7b
    nop
    nop
    inc b
    db $10
    adc a
    dec b
    db $10
    sub b
    ld b, $10
    sub c
    rlca
    db $10
    sub d
    ld [$0310], sp
    add hl, bc
    db $10
    inc bc
    ld a, [bc]
    db $10
    ld [$100b], sp
    sub e
    inc c
    db $10
    sub h
    dec c
    db $10
    sub l
    ld c, $10
    sub [hl]
    rrca
    db $10
    sub a
    db $10
    db $10
    ld e, a
    ld de, $9810
    ld a, e
    nop
    dec c
    push af
    nop
    inc bc
    ld [de], a
    db $10
    inc bc
    inc de
    db $10
    ld [$1014], sp
    inc bc
    dec d
    db $10
    ld [$1016], sp
    sbc c
    add $00
    inc bc
    rla
    db $10
    ld b, $18
    db $10
    sbc c
    or [hl]
    nop
    sbc d
    or a
    nop
    sbc e
    cp b
    nop
    sbc h
    cp c
    nop
    sbc l
    cp d
    nop
    sbc [hl]
    sbc h
    nop
    nop
    ld [de], a
    nop
    dec c
    inc sp
    nop
    dec c
    inc a
    nop
    inc bc
    ld b, l
    nop
    add hl, bc
    ld b, [hl]
    nop
    sbc a
    ld b, a
    nop
    and b
    ld c, b
    nop
    and c
    ld c, c
    nop
    and d
    ld c, d
    nop
    ld b, h
    jr nc, jr_017_44b9

jr_017_44b9:
    and e
    rrca
    nop
    inc bc
    add hl, de
    db $10
    ld [bc], a
    ld a, [de]
    db $10
    ld [bc], a
    dec d
    nop
    ld c, $1b
    db $10
    inc c
    inc e
    db $10
    inc c
    dec e
    db $10
    ld c, $1e
    stop
    rra
    db $10
    add l
    jr nz, jr_017_44e7

    add [hl]
    ld hl, $8710
    ld [hl+], a
    db $10
    ld a, c
    or l
    nop
    ld sp, $00b2
    dec c
    cp [hl]
    nop
    rra

jr_017_44e7:
    ld [bc], a
    nop
    rra
    inc hl
    db $10
    ld c, $23
    db $10
    inc bc
    or [hl]
    nop
    and h
    or a
    nop
    and l
    cp b
    nop
    and [hl]
    cp c
    nop
    and a
    cp d
    nop
    xor b
    sbc h
    nop
    xor c
    and [hl]
    nop
    rrca
    and a
    nop
    rrca
    inc h
    db $10
    ld e, [hl]
    ld [hl], a
    nop
    ld a, d
    dec h
    db $10
    ld b, c
    ld h, $10
    ld b, d
    daa
    db $10
    ld b, e
    jr z, jr_017_4529

    ld b, h
    rst $00
    nop
    nop
    or b
    nop
    ld e, h
    add hl, hl
    db $10
    ld e, h
    or [hl]
    nop
    ld l, a
    or a
    nop
    ld l, [hl]

jr_017_4529:
    cp b
    nop
    ld [hl], l
    cp c
    nop
    ld [hl], h
    cp d
    nop
    ld l, h
    sbc h
    nop
    inc bc
    ld l, $00
    ld c, $23
    db $10
    ld e, [hl]
    ld h, [hl]
    nop
    nop
    ld a, [hl+]
    db $10
    ld a, $68
    nop
    xor d
    ld l, c
    nop
    xor e
    ld l, d
    nop
    ld c, b
    ld l, e
    nop
    xor h
    ld l, h
    nop
    xor l
    ld l, l
    nop
    ld b, l
    ld l, [hl]
    nop
    xor [hl]
    ld l, a
    nop
    xor a
    ld [hl], b
    nop
    or b
    dec hl
    db $10
    or c
    inc l
    db $10
    or d
    dec l
    db $10
    ld c, $2e
    db $10
    or e
    cpl
    db $10
    rla
    jr nc, jr_017_457d

    ld a, d
    ld sp, $b410
    ld sp, $a310
    ld [hl-], a
    db $10
    or l
    inc sp
    db $10
    or [hl]
    add h
    nop
    db $76

jr_017_457d:
    inc [hl]
    db $10
    ld b, d
    dec [hl]
    db $10
    ld b, e
    ld [hl], $10
    ld b, h
    scf
    stop
    jr c, jr_017_459b

    or a
    add hl, sp
    db $10
    cp b
    ld a, [hl-]
    db $10
    ld l, [hl]
    dec sp
    db $10
    cp c
    inc a
    db $10
    cp d
    dec a
    db $10
    ld l, [hl]

jr_017_459b:
    jp nc, $1f00

    ld a, $10
    cp d
    ccf
    db $10
    inc [hl]
    ld b, b
    db $10
    cp e
    ld b, c
    db $10
    cp h
    ld b, d
    db $10
    cp l
    ld b, e
    db $10
    cp [hl]
    ld b, h
    db $10
    db $10
    ld b, l
    db $10
    cp a
    or b
    nop
    ret nz

    ld b, [hl]
    db $10
    pop bc
    ld b, a
    db $10
    ld sp, $0004
    jp nz, $0005

    jp $000f


    ld c, $ac
    nop
    inc c
    ld c, b
    db $10
    rra
    ld c, c
    db $10
    rra
    ld c, d
    db $10
    rra
    ld c, b
    db $10
    add hl, bc
    ld c, c
    db $10
    add hl, bc
    ld c, d
    db $10
    add hl, bc
    ld c, b
    db $10
    jr z, jr_017_462a

    db $10
    jr z, jr_017_462e

    db $10
    jr z, jr_017_4632

    db $10
    inc b
    ld c, h
    db $10
    call nz, $104d
    push bc
    ld [hl], h
    nop
    add hl, de
    ld a, [hl+]
    db $10
    and e
    ld c, [hl]
    db $10
    add $4f
    db $10
    dec bc
    ld c, [hl]
    db $10
    ld a, [bc]
    ld d, b
    db $10
    ld a, [bc]
    ld d, c
    db $10
    rst $00
    ld d, d
    db $10
    ld a, [bc]
    ld d, e
    db $10
    ret z

    ld d, h
    db $10
    ld a, [bc]
    ld d, l
    db $10
    ld d, d
    ld d, [hl]
    db $10
    ret


    ld d, a
    db $10
    jp z, $1058

    jr z, @+$5b

    db $10
    jr z, jr_017_4677

    db $10
    ld sp, $105b
    inc [hl]
    ld e, h
    db $10
    jr c, jr_017_4683

    db $10
    ld [hl], $5e
    db $10

jr_017_462a:
    scf
    ld e, a
    db $10
    add hl, sp

jr_017_462e:
    ld h, b
    db $10
    dec sp
    ld h, c

jr_017_4632:
    db $10
    dec [hl]
    ld h, d
    db $10
    ld a, [hl-]
    ld h, e
    db $10
    bit 4, h
    db $10
    xor [hl]
    ld h, l
    db $10
    call z, $1066
    call $0037
    inc c
    ld [hl], $00
    ret nz

    ld h, a
    db $10
    rra
    ld l, b
    db $10
    dec c
    sbc [hl]
    nop
    ld a, [bc]
    ld l, c
    db $10
    ld c, $6a
    db $10
    ld c, $6b
    db $10
    ld c, $6c
    db $10
    ret nz

    ld l, l
    db $10
    ret nz

    ld l, [hl]
    db $10
    inc c
    dec sp
    nop
    inc c
    ld l, a
    db $10
    ld e, e
    ld [hl], b
    db $10
    sbc e
    ld [hl], c
    db $10
    ld e, [hl]
    ld [hl], d
    db $10
    adc $75
    nop
    dec c
    xor [hl]

jr_017_4677:
    nop
    nop
    ld [hl], e
    stop
    xor [hl]
    nop
    ld c, $74
    db $10
    ld c, $3a

jr_017_4683:
    nop
    ld a, $75
    db $10
    inc bc
    ld [hl], e
    db $10
    ld a, [bc]
    db $76
    db $10
    rst $00
    ld [hl], a
    db $10
    ld l, e
    ld a, b
    db $10
    rst $08
    ld a, c
    db $10
    ret nc

    ld a, d
    db $10
    pop de
    ld a, e
    db $10
    ld [hl], b
    ld a, h
    db $10
    ld l, [hl]
    ld a, l
    db $10
    ld l, h
    ld a, [hl]
    db $10
    ld l, a
    cp d
    nop
    ld c, $7f
    db $10
    rrca
    sub d
    nop
    db $10
    add b
    db $10
    ld c, $81
    db $10
    ld b, b
    add d
    db $10
    db $10
    add e
    db $10
    rrca
    add h
    db $10
    ld c, $85
    db $10
    ld c, $86
    db $10
    rrca
    add a
    db $10
    db $10
    adc b
    db $10
    ld b, b
    add $00
    inc c
    rst $00
    nop
    inc c
    nop
    nop
    ret nz

    adc c
    db $10
    jp nc, $108a

    ret nz

    adc e
    db $10
    db $d3
    adc h
    db $10
    inc c
    adc l
    db $10
    call nc, $108e
    push de
    adc a
    db $10
    sub $90
    db $10
    rst $10
    sub c
    db $10
    ld c, $92
    db $10
    ld c, $93
    db $10
    ret c

    sub h
    db $10
    reti


    sub l
    db $10
    jp c, $1096

    ld c, b
    sub a
    db $10
    db $db
    sbc b
    db $10
    ld c, b
    sbc c
    db $10
    jp c, $109a

    db $db
    ld e, h
    db $10
    db $d3
    sbc e
    db $10
    call c, $109c
    db $dd
    sbc l
    db $10
    sbc $9e
    db $10
    rst JumpTable
    sbc a
    db $10
    ld b, c
    and b
    db $10
    ld c, $a1
    db $10
    ldh [$a2], a
    db $10
    ld e, h
    ld a, e
    nop
    ld bc, $10a3
    pop hl
    and h
    db $10
    ld [c], a
    stop
    ld a, [bc]
    and l
    db $10
    inc c
    xor [hl]
    nop
    ld sp, $1030
    jr @+$5e

    nop
    db $e3
    and [hl]
    db $10
    db $e4
    ld c, l
    nop
    inc de
    and a
    db $10
    ld l, h
    xor b
    db $10
    ld [hl], b
    xor c
    db $10
    ld l, [hl]
    xor d
    db $10
    ld l, a
    xor e
    db $10
    ld [hl], c
    xor h
    db $10
    ld [hl], e
    xor l
    db $10
    ld l, l
    xor [hl]
    db $10
    ld [hl], d
    xor a
    db $10
    and c
    dec sp
    nop
    nop
    or b
    db $10
    and c
    or c
    stop
    or d
    db $10
    push hl
    or e
    stop
    or h
    db $10
    and $b5
    db $10
    rst $20
    or [hl]
    db $10
    sbc d
    or a
    db $10
    ld hl, $009c
    ld hl, $0042
    dec c
    ld b, e
    nop
    dec c
    cp b
    db $10
    add sp, -$47
    db $10
    dec c
    ld a, e
    nop
    ld c, $ba
    db $10
    dec c
    cp e
    db $10
    inc bc
    cp h
    db $10
    jp hl


    cp l
    db $10
    ld [$10be], a
    db $eb
    cp a
    db $10
    db $ec
    ret nz

    db $10
    ld c, $c1
    db $10
    rrca
    jp nz, $1010

    jp $0e10


    call nz, Call_017_4010
    push bc
    db $10
    db $10
    add $10
    rrca
    rst $00
    db $10
    ld c, $c8
    db $10
    ld c, $c9
    db $10
    rrca
    jp z, $1010

    rl b
    ld b, b
    adc $00
    nop
    call z, $0c10
    ld l, d
    db $10
    inc c
    inc bc
    nop
    ld a, [bc]
    xor a
    nop
    ld c, $50
    db $10
    ld c, $cd
    db $10
    ld c, $ce
    db $10
    db $10
    ld b, d
    nop
    db $ed
    ld b, e
    nop
    db $ed
    rst $08
    db $10
    ld h, h
    ld l, c
    db $10
    dec c
    ret nc

    db $10
    ld a, $d1
    db $10
    ld l, [hl]
    jp nc, $ee10

    db $d3
    db $10
    jp c, $10d4

    db $db
    push de
    db $10
    pop bc
    sub $10
    rst $28
    rst $10
    db $10
    ldh a, [$d8]
    db $10
    pop af
    reti


    db $10
    ld a, [c]
    jp c, Jump_017_6c10

    db $db
    db $10
    ld b, b
    call c, $0c10
    db $dd
    db $10
    ld a, [c]
    sbc $10
    ld de, $00a6
    ld e, h
    rst JumpTable
    db $10
    ld sp, $0006
    di
    rlca
    nop
    db $f4
    ld d, b
    db $10
    inc bc
    ld d, c
    db $10
    inc bc
    ld d, d
    db $10
    inc bc
    ld d, e
    db $10
    add hl, de
    ldh [rNR10], a
    push af
    ld h, a
    db $10
    ld [$1068], sp
    inc bc
    ld l, c
    db $10
    ld a, [bc]
    ld l, d
    db $10
    ld a, [bc]
    ld l, e
    db $10
    ld a, [bc]
    ld l, h
    db $10
    and c
    ld l, l
    db $10
    add hl, de
    ld l, [hl]
    db $10
    inc bc
    dec bc
    nop
    ld a, [bc]
    ld a, [hl-]
    nop
    ccf
    ld a, [hl-]
    nop
    ld a, d
    ld a, [hl-]
    nop
    ld e, [hl]
    xor [hl]
    nop
    ld a, [bc]
    sbc a
    db $10
    or $e1
    db $10
    ld b, d
    ld [c], a
    db $10
    rst $30
    db $e3
    db $10
    ld b, h
    db $e4
    db $10
    ld c, $e5
    db $10
    ld c, $e6
    db $10
    ld hl, sp-$19
    db $10
    or d
    add sp, $10
    ld sp, hl
    jp hl


    db $10
    ld a, [$10ea]
    ld l, b
    db $eb
    db $10

jr_017_4876:
    ei
    db $ec
    db $10
    ld l, b
    db $ed
    db $10
    inc bc
    xor $10
    db $fc
    rst $28
    db $10
    db $fd
    ldh a, [rNR10]
    cp $f1
    db $10
    rst $38
    ld a, [c]
    db $10
    cp $f3
    db $10
    rst $38
    db $f4
    db $10
    xor e
    push af
    ld de, $f600
    ld de, $f701
    db $10
    inc c
    ld hl, sp+$11
    ld [bc], a
    ld sp, hl
    db $10
    inc bc
    ld a, [$0311]
    ei
    db $10
    inc bc
    db $fc
    ld de, $fd03
    ld de, $fe04
    ld de, $ff05
    ld de, $0006
    ld hl, $8807
    nop
    ld c, $01
    jr nz, jr_017_48cb

    adc e
    nop
    ld c, $89
    nop
    rrca
    or l
    nop
    ld c, $02
    jr nz, jr_017_48d7

jr_017_48c8:
    inc bc
    jr nz, jr_017_4876

jr_017_48cb:
    inc b
    jr nz, jr_017_48c8

    dec b
    jr nz, @-$37

    nop
    nop
    ld a, [bc]
    ld a, e
    nop
    ld a, [bc]

jr_017_48d7:
    ld b, $20
    ld a, [bc]
    rlca
    jr nz, jr_017_48e7

    ld [$0821], sp
    add hl, bc
    ld hl, $0a09
    ld hl, $0b08

jr_017_48e7:
    ld hl, $0c0a
    ld hl, $0d0b
    ld hl, $0e0c
    ld hl, $0f08
    ld hl, $1008
    jr nz, @+$5c

    ld de, $0a20
    ld [de], a
    ld hl, $130d
    ld hl, $140e
    jr nz, @+$0c

    dec d
    ld hl, $1608
    jr nz, jr_017_4914

    rla
    jr nz, jr_017_4917

    jr jr_017_492f

    ld a, [bc]
    add hl, de
    jr nz, jr_017_491d

    ld a, [de]

jr_017_4914:
    jr nz, jr_017_4920

    or c

jr_017_4917:
    db $10
    ld a, [bc]
    dec de
    jr nz, jr_017_4926

    inc e

jr_017_491d:
    jr nz, jr_017_4929

    dec e

jr_017_4920:
    jr nz, @+$0c

    ld e, $20
    ld a, [bc]
    rra

jr_017_4926:
    jr nz, @+$0c

    dec [hl]

jr_017_4929:
    nop

jr_017_492a:
    ld a, [bc]
    jr nz, jr_017_494d

jr_017_492d:
    ld a, [bc]
    dec sp

jr_017_492f:
    nop
    ld a, [bc]
    ld hl, $1520

jr_017_4934:
    ld [hl+], a
    ld hl, $230f
    jr nz, jr_017_492a

    inc h
    jr nz, jr_017_492d

    dec h
    ld hl, $2610
    ld hl, $2711
    ld hl, $2811
    ld hl, $2911
    ld hl, $f912

jr_017_494d:
    db $10
    ld c, $2a
    ld hl, $2b13
    jr nz, jr_017_4963

    inc l
    jr nz, @+$13

    dec l
    ld hl, $2e14
    jr nz, jr_017_496d

    cpl
    jr nz, jr_017_4964

    jr nc, jr_017_4983

jr_017_4963:
    ld [hl], b

jr_017_4964:
    ld sp, $f020
    ld [hl-], a
    jr nz, @-$0e

    inc sp
    jr nz, jr_017_4934

jr_017_496d:
    inc [hl]
    ld hl, $3511
    ld hl, $3611
    ld hl, $3715
    jr nz, @-$02

    jr c, jr_017_499b

    ret


jr_017_497c:
    add hl, sp
    ld hl, $3a16
    jr nz, @-$01

    dec sp

jr_017_4983:
    jr nz, jr_017_4994

    inc a
    jr nz, jr_017_499d

    dec a
    ld hl, $3e0f
    jr nz, jr_017_4991

    ccf
    jr nz, jr_017_4994

jr_017_4991:
    adc $10
    inc bc

jr_017_4994:
    ld b, b
    jr nz, jr_017_499a

    ld b, c
    jr nz, jr_017_499d

jr_017_499a:
    ld b, d

jr_017_499b:
    jr nz, jr_017_49a0

jr_017_499d:
    ld b, e
    jr nz, @+$10

jr_017_49a0:
    ld b, h
    jr nz, @+$10

    ld b, l
    jr nz, @-$02

    ld b, [hl]
    jr nz, jr_017_497c

    ld b, a
    jr nz, jr_017_49b6

    ld c, b
    jr nz, jr_017_49b9

    rlca
    jr nz, jr_017_49e3

    ld c, c
    ld hl, $4a17

jr_017_49b6:
    ld hl, $4b18

jr_017_49b9:
    ld hl, $4c19
    jr nz, jr_017_49c1

    ld c, l
    jr nz, jr_017_49c4

jr_017_49c1:
    ld c, [hl]
    jr nz, jr_017_49c7

jr_017_49c4:
    ld c, a
    jr nz, jr_017_49ca

jr_017_49c7:
    ld d, b
    jr nz, @+$05

jr_017_49ca:
    ld d, c
    ld hl, $521a
    jr nz, @+$10

jr_017_49d0:
    ld d, e
    jr nz, @+$10

jr_017_49d3:
    ld d, h
    jr nz, jr_017_49e0

    ld d, l
    jr nz, jr_017_49e3

    ld d, [hl]
    jr nz, jr_017_49eb

    ld d, a
    jr nz, jr_017_49ee

    ld e, b

jr_017_49e0:
    ld hl, $591b

jr_017_49e3:
    ld hl, $5a1c
    jr nz, jr_017_49eb

    ld e, e
    jr nz, @-$0e

jr_017_49eb:
    ld e, h
    jr nz, jr_017_49c1

jr_017_49ee:
    ld e, l
    ld hl, $5e1d
    jr nz, @+$0e

    ld e, a
    ld hl, $601e
    ld hl, $611f
    jr nz, jr_017_4a0c

    ld h, d
    ld hl, $6320
    jr nz, @+$11

    ld h, h
    jr nz, @+$11

    ld h, l
    jr nz, jr_017_49d0

    ld h, [hl]
    jr nz, jr_017_49d3

jr_017_4a0c:
    ld h, a
    jr nz, @+$05

    ld l, b
    ld hl, $6921
    ld hl, $6a22
    ld hl, $6b23
    ld hl, $6c1a
    ld hl, $6d10
    jr nz, jr_017_4a2b

    ld l, [hl]
    jr nz, @+$2c

    ld l, a
    jr nz, jr_017_4a31

    ld [hl], b
    jr nz, jr_017_4a39

    ld [hl], h

jr_017_4a2b:
    nop
    rrca
    ld [hl], c
    ld hl, $7224

jr_017_4a31:
    ld hl, $731d
    ld hl, $7425
    jr nz, jr_017_4aa9

jr_017_4a39:
    ld [hl], l
    jr nz, jr_017_4a3f

    db $76
    jr nz, @+$05

jr_017_4a3f:
    ld [hl], a
    ld hl, $7826
    ld hl, $7927
    jr nz, jr_017_4a4b

    ld a, d
    jr nz, @+$05

jr_017_4a4b:
    ld a, e
    ld hl, $7c28
    ld hl, $7d29
    jr nz, jr_017_4a7c

    ld a, [hl]
    ld hl, $7f0c
    ld hl, $802a
    jr nz, jr_017_4ac9

    add c
    jr nz, jr_017_4aa8

    add d
    ld hl, $832b
    jr nz, jr_017_4ad2

    add h
    jr nz, jr_017_4a6c

    add l
    jr nz, jr_017_4a6f

jr_017_4a6c:
    add [hl]
    jr nz, jr_017_4a72

jr_017_4a6f:
    add a
    jr nz, jr_017_4a75

jr_017_4a72:
    adc b
    jr nz, jr_017_4a78

jr_017_4a75:
    nop
    nop
    inc c

jr_017_4a78:
    adc c
    jr nz, jr_017_4a7e

    adc d

jr_017_4a7c:
    jr nz, jr_017_4a81

jr_017_4a7e:
    adc e
    jr nz, jr_017_4ac9

jr_017_4a81:
    adc h
    jr nz, jr_017_4a8e

    adc l
    jr nz, jr_017_4aaf

    adc [hl]
    jr nz, jr_017_4a94

    adc a
    ld hl, $902c

jr_017_4a8e:
    jr nz, @+$73

    sub c
    jr nz, jr_017_4b05

    sub d

jr_017_4a94:
    jr nz, @+$76

    sub e

jr_017_4a97:
    ld hl, $9421
    jr nz, jr_017_4a9f

    jr jr_017_4abe

    inc bc

jr_017_4a9f:
    sub l
    ld hl, $532d
    jr nz, jr_017_4a97

    dec hl
    jr nz, jr_017_4ab5

jr_017_4aa8:
    sub [hl]

jr_017_4aa9:
    ld hl, $972e
    jr nz, jr_017_4a75

    sbc b

jr_017_4aaf:
    ld hl, $9910
    jr nz, jr_017_4abe

    sbc d

jr_017_4ab5:
    jr nz, jr_017_4adf

    sbc e
    jr nz, jr_017_4ac7

    sbc h
    jr nz, jr_017_4aca

    sbc l

jr_017_4abe:
    jr nz, jr_017_4acd

    sbc [hl]
    jr nz, jr_017_4ad0

    sbc a
    jr nz, @+$0a

    and b

jr_017_4ac7:
    jr nz, jr_017_4ad3

jr_017_4ac9:
    and c

jr_017_4aca:
    jr nz, @-$56

    and d

jr_017_4acd:
    jr nz, @+$0a

    and e

jr_017_4ad0:
    jr nz, @+$0a

jr_017_4ad2:
    and h

jr_017_4ad3:
    jr nz, jr_017_4b06

    and l
    ld hl, $a60e
    jr nz, jr_017_4ae5

    and a
    jr nz, jr_017_4ae8

    xor b

jr_017_4adf:
    ld hl, $a92f
    ld hl, $aa08

jr_017_4ae5:
    ld hl, $ab08

jr_017_4ae8:
    jr nz, jr_017_4b12

    xor h
    ld hl, $ad08
    ld hl, $ae30
    jr nz, jr_017_4af6

    xor a
    jr nz, @+$05

jr_017_4af6:
    or b
    ld hl, $b131
    ld hl, $b232
    jr nz, jr_017_4b02

    or e
    jr nz, jr_017_4b05

jr_017_4b02:
    or h
    jr nz, jr_017_4b08

jr_017_4b05:
    or l

jr_017_4b06:
    jr nz, @+$05

jr_017_4b08:
    or [hl]
    ld hl, $b733
    jr nz, jr_017_4b11

    cp b
    jr nz, @+$05

jr_017_4b11:
    cp c

jr_017_4b12:
    ld hl, $ba34
    ld hl, $bb32
    ld hl, $bc29
    jr nz, jr_017_4b20

    cp l
    jr nz, jr_017_4b23

jr_017_4b20:
    cp [hl]
    jr nz, jr_017_4b26

jr_017_4b23:
    cp a
    jr nz, @+$05

jr_017_4b26:
    ret nz

    ld hl, $c135
    ld hl, $c236
    jr nz, jr_017_4b32

    jp $0320


jr_017_4b32:
    call nz, $0320
    push bc
    jr nz, jr_017_4ae8

    add $20
    ld d, l
    rst $00
    ld hl, $c837
    jr nz, @+$6f

    ret


    jr nz, jr_017_4b47

    jp z, $0320

jr_017_4b47:
    sla b
    inc bc
    call z, $3821
    call $3921
    adc $21
    ld a, [hl-]
    rst $08
    ld hl, $d03b
    jr nz, jr_017_4bce

    pop de
    ld hl, $d23c
    ld hl, $d33d
    ld hl, $d43e
    ld hl, $d537
    jr nz, jr_017_4bd4

    sub $20
    inc [hl]
    rst $10
    jr nz, jr_017_4b71

    jr nz, jr_017_4b90

    inc bc

jr_017_4b71:
    dec sp
    nop
    dec a
    ret c

    ld hl, $d93f
    jr nz, @+$77

    jp c, $4021

    db $db
    ld hl, $dc3e
    ld hl, $dd41
    ld hl, $de42
    ld hl, $df43
    ld hl, $e044
    jr nz, @+$0a

    nop

jr_017_4b90:
    nop
    dec c
    ld b, $20
    dec c
    rlca
    jr nz, jr_017_4ba5

    pop hl
    jr nz, @+$0f

    ld [c], a
    jr nz, jr_017_4bab

    db $e3

jr_017_4b9f:
    jr nz, @+$21

    db $e4
    jr nz, jr_017_4bb1

    push hl

jr_017_4ba5:
    jr nz, @+$21

    and $20
    dec c
    rst $20

jr_017_4bab:
    jr nz, jr_017_4bba

jr_017_4bad:
    add sp, $20
    rra
    jp hl


jr_017_4bb1:
    jr nz, jr_017_4bb6

    ld [$0320], a

jr_017_4bb6:
    db $eb
    jr nz, @+$19

    db $ec

jr_017_4bba:
    jr nz, jr_017_4b9f

    db $ed
    jr nz, jr_017_4be3

    xor $21
    ld b, l
    rst $28
    jr nz, jr_017_4bd2

    ldh a, [rNR41]
    sbc c
    pop af
    ld hl, $f246
    jr nz, jr_017_4bdb

jr_017_4bce:
    di

jr_017_4bcf:
    jr nz, jr_017_4bf0

    db $f4

jr_017_4bd2:
    jr nz, @-$65

jr_017_4bd4:
    push af
    jr nz, jr_017_4c46

    or $20
    inc bc
    rst $30

jr_017_4bdb:
    ld hl, $f847

jr_017_4bde:
    jr nz, jr_017_4c55

    ld sp, hl
    jr nz, jr_017_4be6

jr_017_4be3:
    ld a, [$4821]

jr_017_4be6:
    ei
    ld hl, $fc49
    jr nz, @+$0a

    db $fd
    ld hl, $fe4a

jr_017_4bf0:
    ld hl, $ff4b
    jr nz, jr_017_4bf8

    nop
    jr nc, jr_017_4c64

jr_017_4bf8:
    ld bc, $0330
    ld [bc], a
    ld sp, $034c
    jr nc, jr_017_4c04

    inc b
    jr nc, jr_017_4c07

jr_017_4c04:
    dec b
    jr nc, @+$05

jr_017_4c07:
    dec bc
    ld de, $064d
    jr nc, @+$61

    rlca
    ld sp, $084e
    ld sp, $094f
    ld sp, $0a50
    jr nc, @-$6f

    dec bc
    jr nc, jr_017_4bad

    inc c
    ld sp, $0d4f
    ld sp, $0e50
    jr nc, @-$50

    rrca
    jr nc, @-$50

    db $10

jr_017_4c29:
    ld de, $1051
    jr nc, @-$6c

jr_017_4c2e:
    ld de, $5231
    ld [de], a
    ld sp, $1353
    jr nc, jr_017_4bcf

    inc d
    jr nc, jr_017_4c3d

    dec d
    jr nc, jr_017_4c45

jr_017_4c3d:
    ld d, $31
    ld d, h
    rla
    jr nc, jr_017_4c61

    jr @+$33

jr_017_4c45:
    ld d, l

jr_017_4c46:
    add hl, de
    ld sp, $1a56
    ld sp, $1b54
    jr nc, jr_017_4c6d

    inc e
    ld sp, $1d57
    jr nc, jr_017_4bde

jr_017_4c55:
    ld e, $30
    nop
    rra
    jr nc, @+$05

    jr nz, @+$32

    ld [$1002], sp
    ld h, b

jr_017_4c61:
    ld hl, $0330

jr_017_4c64:
    ld [hl+], a
    jr nc, @+$61

    inc hl
    ld sp, $244e
    jr nc, @+$61

jr_017_4c6d:
    dec h
    ld sp, $2658
    ld sp, $2755
    ld sp, $2859
    ld sp, $295a
    ld sp, $2a59
    jr nc, @+$1c

    dec hl
    jr nc, jr_017_4c85

    inc l
    jr nc, jr_017_4c88

jr_017_4c85:
    dec l
    jr nc, @-$6e

jr_017_4c88:
    ld l, $31
    ld e, e
    ld de, $5c11
    cpl
    jr nc, jr_017_4c94

    jr nc, @+$32

    sub b

jr_017_4c94:
    ld sp, $5d31
    ld [hl-], a
    jr nc, jr_017_4c29

    inc sp
    jr nc, jr_017_4c2e

    inc [hl]
    ld sp, $355e
    ld sp, $365f

jr_017_4ca4:
    jr nc, @+$0a

    scf
    jr nc, @+$0a

    jr c, jr_017_4cdc

    ld h, b
    add hl, sp
    ld sp, $3a61
    jr nc, jr_017_4d2f

    dec sp
    jr nc, jr_017_4cbf

    inc a
    jr nc, jr_017_4cc2

    dec a
    ld sp, $3e08
    jr nc, jr_017_4cc8

    ccf

jr_017_4cbf:
    jr nc, jr_017_4ccb

    ld b, b

jr_017_4cc2:
    jr nc, jr_017_4cce

    ld b, c
    jr nc, jr_017_4cd1

jr_017_4cc7:
    ld sp, hl

jr_017_4cc8:
    ld de, $4262

jr_017_4ccb:
    jr nc, @+$52

    ld b, e

jr_017_4cce:
    ld sp, $4463

jr_017_4cd1:
    ld sp, $4564
    jr nc, @+$10

    ld b, [hl]
    jr nc, @+$10

    ld b, a
    jr nc, @+$10

jr_017_4cdc:
    ld c, b
    jr nc, @+$10

    ld c, c
    jr nc, @+$10

    ld c, d
    ld sp, $4b65
    ld sp, $4c66
    jr nc, jr_017_4cf5

    ld c, l
    jr nc, @-$50

    ld c, [hl]
    ld sp, $4f66
    jr nc, @-$50

    ld d, b

jr_017_4cf5:
    jr nc, @-$50

    ld d, c
    jr nc, @+$52

    ld d, d
    ld sp, $5367
    ld sp, $5468
    ld sp, $5569
    jr nc, jr_017_4d12

    ld d, [hl]
    ld sp, $571e
    ld sp, $fb6a
    db $10
    ld a, [bc]
    ld sp, hl
    db $10
    ld a, [bc]

jr_017_4d12:
    ld e, b
    jr nc, jr_017_4d18

    ld e, c
    jr nc, jr_017_4d1b

jr_017_4d18:
    ld e, d
    jr nc, jr_017_4ca4

jr_017_4d1b:
    ld e, e
    jr nc, jr_017_4cc7

    ld e, h
    ld sp, $5d6b
    jr nc, @+$52

    rst JumpTable
    nop
    inc c
    ld e, [hl]
    ld sp, $5f6c

jr_017_4d2b:
    ld sp, $0d6a

jr_017_4d2e:
    nop

jr_017_4d2f:
    inc bc
    sub [hl]
    jr nz, jr_017_4d3f

    ld h, b
    ld sp, $611e
    ld sp, $626a
    jr nc, jr_017_4d3c

jr_017_4d3c:
    ret nz

    db $10
    inc b

jr_017_4d3f:
    ld h, e
    jr nc, jr_017_4d4b

    ld h, d
    jr nc, jr_017_4d4f

    ld h, h
    jr nc, jr_017_4d52

    ld h, e
    jr nc, jr_017_4d73

jr_017_4d4b:
    ld h, l
    jr nc, jr_017_4d7f

    ld h, [hl]

jr_017_4d4f:
    jr nc, jr_017_4d82

    ld h, a

jr_017_4d52:
    jr nc, jr_017_4d58

    ld l, b
    jr nc, jr_017_4d8a

    ld l, c

jr_017_4d58:
    jr nc, jr_017_4d92

    ld l, d
    ld sp, $6b6d
    jr nc, jr_017_4d63

    ld l, h
    jr nc, jr_017_4d7c

jr_017_4d63:
    ld l, l
    jr nc, @+$0a

    ld l, [hl]
    jr nc, jr_017_4d69

jr_017_4d69:
    ld l, a
    jr nc, jr_017_4d6c

jr_017_4d6c:
    ld [hl], b
    jr nc, jr_017_4d78

    ld l, [hl]
    jr nc, jr_017_4d7c

    ld [hl], c

jr_017_4d73:
    jr nc, jr_017_4d7f

    ld [hl], b
    jr nc, jr_017_4da0

jr_017_4d78:
    ld [hl], d
    jr nc, jr_017_4dac

    ld [hl], e

jr_017_4d7c:
    jr nc, jr_017_4daf

    ld [hl], h

jr_017_4d7f:
    jr nc, jr_017_4d85

    ld [hl], l

jr_017_4d82:
    jr nc, jr_017_4d9e

    ld [hl], l

jr_017_4d85:
    jr nc, jr_017_4da0

    ld [hl], l
    jr nc, jr_017_4d8d

jr_017_4d8a:
    db $76
    jr nc, jr_017_4d90

jr_017_4d8d:
    ld [hl], a
    jr nc, jr_017_4da9

jr_017_4d90:
    rst $30
    nop

jr_017_4d92:
    ld [$3078], sp
    inc bc
    sub d
    db $10
    inc c
    sub d
    db $10
    ld a, [bc]
    xor h

jr_017_4d9d:
    nop

jr_017_4d9e:
    xor [hl]
    ld a, c

jr_017_4da0:
    jr nc, jr_017_4d2b

    ld a, d
    jr nc, jr_017_4d2e

    ld a, e
    jr nc, @+$05

    ld a, h

jr_017_4da9:
    ld sp, $7d28

jr_017_4dac:
    jr nc, jr_017_4ddf

    ld a, [hl]

jr_017_4daf:
    jr nc, jr_017_4db1

jr_017_4db1:
    ld a, a
    jr nc, jr_017_4db4

jr_017_4db4:
    add b
    jr nc, jr_017_4db7

jr_017_4db7:
    add c
    jr nc, jr_017_4dba

jr_017_4dba:
    add d
    jr nc, @+$10

    add e
    jr nc, @+$52

    ld e, b
    jr nc, jr_017_4dcf

    add h
    jr nc, jr_017_4dd3

    add hl, de
    nop
    inc c
    add l
    jr nc, @+$1c

    add [hl]
    jr nc, jr_017_4dd2

jr_017_4dcf:
    add a
    jr nc, jr_017_4e30

jr_017_4dd2:
    adc b

jr_017_4dd3:
    jr nc, @+$0a

    adc b
    ld sp, $896e
    jr nc, @+$0a

    adc d
    jr nc, @+$0a

    adc e

jr_017_4ddf:
    jr nc, jr_017_4de5

    adc h
    jr nc, jr_017_4de8

    adc l

jr_017_4de5:
    jr nc, @+$0a

    adc [hl]

jr_017_4de8:
    jr nc, jr_017_4e48

    adc a
    jr nc, @+$13

    sub b
    jr nc, @+$0a

    sub c
    jr nc, jr_017_4df6

    sub d
    jr nc, @+$0f

jr_017_4df6:
    sub e
    jr nc, jr_017_4df9

jr_017_4df9:
    sub h
    jr nc, jr_017_4d9d

    sub l

jr_017_4dfd:
    jr nc, jr_017_4dff

jr_017_4dff:
    sub [hl]
    jr nc, jr_017_4e02

jr_017_4e02:
    ld [$0000], sp
    sub a
    jr nc, jr_017_4e39

    sbc b
    ld sp, $996f
    jr nc, jr_017_4e0f

    sbc d

jr_017_4e0f:
    jr nc, jr_017_4e42

    sbc e
    jr nc, jr_017_4e45

    sbc h
    jr nc, jr_017_4e1b

    ld [hl], l
    ld sp, $9d70

jr_017_4e1b:
    jr nc, jr_017_4e4e

    sbc [hl]
    ld sp, $9f55
    jr nc, jr_017_4e54

    and b
    ld sp, $a16f
    jr nc, @+$07

    and d
    jr nc, jr_017_4e5d

    and e
    jr nc, jr_017_4e60

    and h

jr_017_4e30:
    jr nc, jr_017_4e36

    and l
    jr nc, jr_017_4e5d

    and [hl]

jr_017_4e36:
    jr nc, jr_017_4e40

    ld [hl-], a

jr_017_4e39:
    db $10
    ld a, [de]
    ld [hl-], a
    db $10
    add hl, de
    ld [hl-], a
    db $10

jr_017_4e40:
    inc bc
    and a

jr_017_4e42:
    ld sp, $a86e

jr_017_4e45:
    jr nc, jr_017_4e4a

    xor c

jr_017_4e48:
    jr nc, jr_017_4e4d

jr_017_4e4a:
    xor d
    jr nc, jr_017_4e50

jr_017_4e4d:
    xor e

jr_017_4e4e:
    jr nc, jr_017_4eb9

jr_017_4e50:
    xor h
    jr nc, jr_017_4ebc

    xor l

jr_017_4e54:
    jr nc, jr_017_4e59

    xor [hl]
    jr nc, jr_017_4e5c

jr_017_4e59:
    xor a
    jr nc, jr_017_4e50

jr_017_4e5c:
    or b

jr_017_4e5d:
    jr nc, jr_017_4e78

    or c

jr_017_4e60:
    jr nc, jr_017_4e65

    or d
    jr nc, jr_017_4e68

jr_017_4e65:
    or e
    jr nc, jr_017_4e81

jr_017_4e68:
    or h
    jr nc, @+$6a

    or l
    jr nc, jr_017_4e71

    or [hl]
    jr nc, jr_017_4e74

jr_017_4e71:
    or a
    jr nc, jr_017_4dfd

jr_017_4e74:
    cp b
    jr nc, @+$6a

    cp c

jr_017_4e78:
    jr nc, jr_017_4e7d

    cp d
    jr nc, jr_017_4e80

jr_017_4e7d:
    cp e
    jr nc, jr_017_4e83

jr_017_4e80:
    cp h

jr_017_4e81:
    jr nc, jr_017_4e86

jr_017_4e83:
    cp l
    jr nc, jr_017_4e89

jr_017_4e86:
    cp [hl]
    jr nc, jr_017_4e8c

jr_017_4e89:
    cp a
    jr nc, jr_017_4e8f

jr_017_4e8c:
    ret nz

    jr nc, jr_017_4e92

jr_017_4e8f:
    pop bc
    jr nc, jr_017_4e95

jr_017_4e92:
    jp nz, $0330

jr_017_4e95:
    jp $0330


    call nz, $0e31
    push bc
    jr nc, jr_017_4ea8

    xor a
    nop
    ld a, [bc]
    add $30
    dec bc
    rst $00
    jr nc, @+$0c

    ret z

jr_017_4ea8:
    ld sp, $c971
    jr nc, @+$0c

    jp z, $0a30

    swap b
    inc bc
    call z, $0830
    call $0330

jr_017_4eb9:
    adc $31
    ld [hl], d

jr_017_4ebc:
    rst $08
    jr nc, jr_017_4ec9

    ld bc, $0a30
    ret nc

    jr nc, @+$2a

    pop de
    ld sp, $d273

jr_017_4ec9:
    jr nc, @+$0c

    db $d3
    jr nc, jr_017_4ed8

jr_017_4ece:
    call nc, $0330
    push de
    jr nc, @+$1b

    sub $31
    ld [hl], h
    rst $10

jr_017_4ed8:
    ld sp, $d875
    jr nc, jr_017_4ee0

    reti


    jr nc, jr_017_4ee3

jr_017_4ee0:
    jp c, $8930

jr_017_4ee3:
    db $db
    ld sp, $dc72

jr_017_4ee7:
    jr nc, @+$1b

    db $dd
    jr nc, @+$0c

    sbc $30
    ld a, [bc]
    rst JumpTable
    jr nc, jr_017_4f1a

    ldh [$30], a
    ld [$30cc], sp
    add hl, de
    pop hl
    jr nc, jr_017_4efb

jr_017_4efb:
    ld [c], a
    jr nc, jr_017_4f07

    db $e3
    jr nc, jr_017_4f1a

    sub $00
    ld a, [de]
    db $e4
    jr nc, jr_017_4f0a

jr_017_4f07:
    push hl
    jr nc, @-$75

jr_017_4f0a:
    and $30
    inc bc
    rst $20
    jr nc, @-$47

    add sp, $31
    db $76
    jp hl


    jr nc, jr_017_4ece

    ld [$1930], a
    db $eb

jr_017_4f1a:
    jr nc, @+$05

    db $ec
    ld sp, $cc77
    jr nc, jr_017_4f25

    db $eb
    jr nc, jr_017_4f25

jr_017_4f25:
    db $ed
    jr nc, jr_017_4f32

    xor $30
    ld d, d
    rst $28
    jr nc, jr_017_4f2e

jr_017_4f2e:
    ldh a, [$30]
    rra
    pop af

jr_017_4f32:
    jr nc, jr_017_4f34

jr_017_4f34:
    ld a, [c]
    jr nc, jr_017_4ed8

    rst $28
    jr nc, jr_017_4f44

    ld [$a130], a
    di
    ld sp, $f478
    ld sp, $f579

jr_017_4f44:
    jr nc, jr_017_4ee7

    or $30
    nop
    rst $30
    jr nc, @-$5d

    push af
    jr nc, jr_017_4fa1

    ld hl, sp+$30
    inc bc
    ld sp, hl
    jr nc, jr_017_4f58

    ld a, [$0830]

jr_017_4f58:
    ei
    jr nc, jr_017_4f5e

    db $fc
    jr nc, @+$0a

jr_017_4f5e:
    db $fd
    jr nc, jr_017_4f69

    cp $31
    ld a, d
    rst $38
    ld sp, $0028
    ld b, c

jr_017_4f69:
    ld a, e
    add d
    jr nc, jr_017_4f70

    ld bc, $0340

jr_017_4f70:
    ld [bc], a
    ld b, b
    inc bc
    rst $00
    nop
    inc bc
    inc bc
    ld b, b
    inc bc
    inc b
    ld b, b
    inc bc
    dec b
    ld b, c
    ld a, h
    ld b, $40
    ld [$4007], sp
    add hl, de
    ld [$0340], sp
    add hl, bc
    ld b, b
    inc bc
    ld a, [bc]
    ld b, b
    inc bc
    dec bc
    ld b, b
    inc bc
    inc c
    ld b, b
    inc bc
    dec c
    ld b, b
    inc bc
    ld c, [hl]
    ld sp, $0e7d
    ld b, c
    ld a, [hl]
    rrca
    ld b, c
    db $76
    db $10

jr_017_4fa1:
    ld b, b
    cp b
    ld de, $a140
    ld [de], a
    ld b, b
    and c
    inc de
    ld b, c
    ld a, a
    inc d
    ld b, c
    add b
    sub l
    jr nc, jr_017_4fbc

    sub h
    jr nc, jr_017_5007

    dec d
    ld b, c
    ld d, e
    ld l, e
    ld sp, $6c81

jr_017_4fbc:
    ld sp, $1682
    ld b, b
    adc c
    ld a, e
    nop
    and c
    db $eb
    jr nc, @+$0c

    ld [$5230], a
    rla
    ld b, c
    add e
    nop
    nop
    and c
    jr jr_017_5012

    and c
    add hl, de
    ld b, b
    inc bc
    ld a, [de]
    ld b, b
    db $f4
    dec de
    ld b, c
    ld [hl], d
    db $76
    ld sp, $771a
    ld sp, $1c84
    ld b, c
    add l
    dec e
    ld b, c
    add [hl]
    ld e, $41
    add a
    rra
    ld b, b
    adc c
    inc bc
    nop
    dec c
    jr nz, jr_017_5033

    inc bc
    ld hl, $a840
    ld [hl+], a
    ld b, b
    ld [$4123], sp
    adc b
    inc h
    ld b, b
    ld [hl], l
    dec h
    ld b, b
    and a
    ld h, $40
    nop
    daa

jr_017_5007:
    ld b, b
    and c
    jr z, jr_017_504c

    adc c
    rlca
    ld b, b
    and c
    add hl, hl
    ld b, b
    nop

jr_017_5012:
    ld a, [hl+]
    ld b, b
    add hl, bc
    dec hl
    ld b, b
    add hl, bc
    inc l
    ld b, c
    adc d
    dec l
    ld b, b
    and c
    ld l, $41
    add e

Jump_017_5021:
    cpl
    ld b, b
    nop
    jr nc, @+$42

    add hl, bc
    add d
    jr nc, jr_017_502a

jr_017_502a:
    ld sp, $a140
    ld [hl-], a
    ld b, b
    nop
    inc sp
    ld b, b
    nop

jr_017_5033:
    inc [hl]
    ld b, b
    add hl, bc
    dec [hl]
    ld b, c
    ld e, b
    ld [hl], $41
    ld c, [hl]
    scf
    ld b, b
    xor b
    sub $00

Jump_017_5041:
    add hl, bc
    jr c, jr_017_5085

    adc b
    add hl, sp
    ld b, b
    nop
    ld a, [hl-]
    ld b, b
    nop
    dec sp

jr_017_504c:
    ld b, c
    adc e
    inc a
    ld b, b
    dec c

Jump_017_5051:
    dec a
    ld b, b
    dec c
    ld a, $40
    dec c
    ccf
    ld b, b
    ld e, h
    ld b, b
    ld b, c
    adc h
    ld b, c
    ld b, c
    ld b, l
    ld b, d
    ld b, c
    adc l
    ld b, e
    ld b, b
    ld c, $1a
    jr nc, jr_017_50c9

    ld b, h
    ld b, c
    adc [hl]
    ld b, l
    ld b, c
    adc a
    ld b, [hl]
    ld b, c
    sub b
    ld b, a
    ld b, b
    dec c
    ld c, b
    ld b, c
    sub c
    add $01
    sub d
    rst $00
    ld bc, $0792
    ld b, c
    sub e
    add hl, hl
    ld de, $4993

jr_017_5085:
    ld b, c
    sub h
    ld c, d
    ld b, c
    ld b, l
    ld e, b
    ld sp, $df92
    ld bc, $4b95
    ld b, b
    ld c, $4c
    ld b, b
    ld c, $4d
    ld b, c
    sub [hl]
    ld c, [hl]
    ld b, c
    sub a
    ld c, a
    ld b, c
    sbc b
    ld d, b
    ld b, c
    sub e
    ld d, c
    ld b, c
    sub c
    ld d, d
    ld b, b
    nop
    ld d, e
    ld b, b
    push hl
    ld d, h
    ld b, b
    nop
    ld d, l
    ld b, b
    push hl
    ld d, [hl]
    ld b, c
    sbc c
    ld d, a
    ld b, c
    sbc d
    ld e, b
    ld b, c
    sbc e
    ld e, c
    ld b, c
    sbc h
    ld e, d
    ld b, c
    sbc l
    ld e, e
    ld b, c
    sbc [hl]
    ld e, h
    ld b, c
    sbc a
    ld e, l
    ld b, c
    and b

jr_017_50c9:
    ld d, e
    jr nz, @+$05

    xor a
    nop
    ld sp, $00b2
    ld sp, $00c6
    ld sp, $00c7
    ld sp, $31eb
    and c
    jp nc, $0400

    jr c, @+$43

    dec e
    ld e, [hl]
    ld b, c
    ld e, d
    ld e, a
    ld b, c
    ld e, c
    ld h, b
    ld b, b
    add hl, de
    ld h, c
    ld b, c
    and d
    xor a
    nop
    xor [hl]
    ld h, d
    ld b, c
    ld h, [hl]
    ld h, e
    ld b, c
    ld h, l
    ld h, h
    ld b, c
    ld h, [hl]
    ld h, l
    ld b, c
    and e
    ld h, [hl]
    ld b, c
    ld a, h
    ld h, a
    ld b, c
    ld e, c
    ld l, b
    ld b, b
    ld l, b
    ld l, h
    ld sp, $6ba4
    jr nc, jr_017_516a

    ld l, c
    ld b, b
    inc bc
    ld l, d
    ld b, b

Call_017_5110:
    inc bc
    ld l, e
    ld b, b
    ld h, b
    ld l, h
    ld b, c
    and l
    ld l, l
    ld b, b
    inc bc
    ret nz

    db $10
    ld a, [de]
    adc $00
    ld [$406e], sp
    dec bc
    ld l, a

Call_017_5124:
    ld b, b

Call_017_5125:
    ld a, [bc]
    ld [hl], b
    ld b, b
    ld a, [bc]
    ld [hl], c
    ld b, c
    ld [hl], c
    jp nc, $0800

    ld [hl], d
    ld b, c
    ld [hl], e
    ld [hl], e
    ld b, b
    ld a, [bc]
    ld [hl], h
    ld b, b
    dec bc
    ld [hl], l
    ld b, b
    ld a, [bc]
    db $76
    ld b, c
    ld c, $77
    ld b, b
    ld a, [bc]
    ld a, b
    ld b, c
    ld [hl], l
    ld a, c
    ld b, c
    ld e, [hl]
    ld a, d
    ld b, b
    inc bc
    ld a, e
    ld b, b
    inc bc
    ld [hl-], a
    db $10
    ld [$407c], sp
    adc a
    ld a, l
    ld b, b
    inc bc
    ld a, [hl]
    ld b, b
    inc bc
    and l
    jr nc, jr_017_5164

    ld a, a
    ld b, c
    and [hl]
    add b
    ld b, b
    ld [hl], b
    add c
    ld b, c

jr_017_5164:
    and a
    add d
    ld b, b

Jump_017_5167:
    or b
    add e
    ld b, b

jr_017_516a:
    ld c, $84

Call_017_516c:
    ld b, b
    rrca
    add l
    ld b, b
    ld c, $86
    ld b, b
    ld c, $87
    ld b, c
    xor b
    adc b
    ld b, b
    ld c, $89
    ld b, b
    ld c, $8a
    ld b, b
    xor l
    adc e
    ld b, c
    xor c
    adc h
    ld b, c
    xor d
    adc l
    ld b, c
    xor e
    and [hl]
    jr nc, jr_017_519d

    adc [hl]
    ld b, b
    ld de, $306c
    rrca
    ld l, e
    jr nc, jr_017_51a3

    adc a
    ld b, b
    ld c, $90
    ld b, c
    xor h
    sub c
    ld b, b

jr_017_519d:
    xor [hl]
    sub d
    ld b, b
    ld c, $93
    ld b, b

jr_017_51a3:
    ld c, $94
    ld b, b
    inc bc
    sub l
    ld b, c
    add c
    sub [hl]
    ld b, c
    add d
    sub l
    ld b, b
    ld a, [bc]
    sub [hl]
    ld b, b
    ld d, d
    ld a, [hl]
    jr nc, jr_017_51b9

    ld a, a
    jr nc, jr_017_51bc

jr_017_51b9:
    ld a, [hl+]
    ld b, b
    ld a, [de]

jr_017_51bc:
    db $eb
    ld sp, $971a
    ld b, c
    xor l
    sbc b
    ld b, b
    inc bc
    add b
    jr nc, jr_017_51cb

    add c
    jr nc, jr_017_51ce

jr_017_51cb:
    adc b
    nop
    nop

jr_017_51ce:
    sbc c
    ld b, b
    nop
    sbc d
    ld b, b
    inc bc
    sbc e
    ld b, b
    di
    sbc h
    ld b, c
    xor [hl]
    ld l, l
    ld sp, $9daf
    ld b, c
    or b
    sub $01
    xor a
    sbc [hl]
    ld b, b
    ld l, b
    sbc [hl]
    ld b, b
    db $f4
    sbc a
    ld b, b
    inc bc
    and b
    ld b, b
    adc c
    and c
    ld b, c
    or c
    and d
    ld b, c
    or d
    and e
    ld b, b
    xor c
    and h
    ld b, c
    or e
    and l
    ld b, c
    or h
    and [hl]
    ld b, b
    adc c
    ld [hl-], a
    db $10
    inc b
    and a
    ld b, b
    ld [c], a
    xor l
    nop
    ld a, [bc]
    xor b
    ld b, b
    ld d, d
    xor c
    ld b, b
    ld a, [bc]
    xor d
    ld b, b
    jr z, jr_017_5288

    ld b, b
    ld a, [de]
    ld l, e
    ld sp, $6c1a
    ld sp, $ab84
    ld b, b
    ld a, [bc]
    xor h
    ld b, b
    ld a, [bc]
    xor l
    ld b, b
    jr z, jr_017_5257

    ld b, b
    add hl, de
    xor [hl]
    ld b, b
    nop
    xor a
    ld b, b
    nop
    or b
    ld b, c
    or l
    or c
    ld b, b
    inc bc
    or d
    ld b, c
    or [hl]
    or e
    ld b, c
    or a
    or h
    ld b, b
    add hl, de
    or l
    ld b, b
    inc bc
    or [hl]
    ld b, b
    rla
    or a
    ld b, c
    cp b
    daa
    ld b, b
    rrca
    add $00
    ld c, $b8
    ld b, b
    ld de, $40b9
    add hl, de
    cp d
    ld b, c
    cp c
    cp e
    ld b, b

jr_017_5257:
    inc bc
    call z, $1a30
    cp h
    ld b, b
    inc bc
    cp l
    ld b, b
    inc bc
    cp [hl]
    ld b, b
    inc bc
    cp a
    ld b, b
    ld de, $1029
    rrca
    ld sp, $1a10
    ret nz

    ld b, b
    set 0, c
    ld b, b
    inc bc
    jp nz, $0340

    jp $0340


    call nz, $0340
    db $ed
    jr nc, jr_017_5282

    push bc
    ld b, b
    inc bc

jr_017_5282:
    add $40
    inc bc
    rst $00
    ld b, b
    inc bc

jr_017_5288:
    ret z

    ld b, b
    ld [$40c9], sp
    inc bc
    jp z, $0840

    bit 0, b
    inc bc
    call z, $0340
    call $0840
    db $eb
    jr nz, jr_017_52a0

    ld bc, $0d40

jr_017_52a0:
    adc $40
    ld [$40cf], sp
    ld [$40d0], sp
    ld [$40d1], sp
    inc bc
    jp nc, Jump_017_7c41

    db $d3
    ld b, b
    inc bc
    call nc, $0340
    push de
    ld b, c
    ld c, c
    sub $40
    ld [$40d7], sp
    inc bc
    dec b
    ld de, $d8ba
    ld b, b
    sbc c
    reti


    ld b, b
    rra
    jp c, $bb41

    db $db
    ld b, c
    ld l, h
    call c, $bc41
    db $dd
    ld b, b
    dec c

Jump_017_52d3:
    sbc $41
    cp l

jr_017_52d6:
    rst JumpTable
    ld b, b
    dec c
    ldh [rLCDC], a
    rra
    pop hl
    ld b, b
    sbc c
    ld [c], a
    ld b, c
    ld b, l
    ld d, b
    ld b, b
    ld e, h
    ld e, b
    jr nc, jr_017_52f5

    db $e3
    ld b, c
    cp [hl]
    db $e4
    ld b, b
    dec c
    push hl
    ld b, c
    cp a
    sub $01
    ret nz

    reti


jr_017_52f5:
    nop
    dec c
    and $40
    rlca
    rst $20
    ld b, b
    rra
    ld a, e
    nop
    inc c
    ld c, d
    jr nc, jr_017_52d6

    ld c, e
    ld sp, $e8c1
    ld b, b
    dec c
    jp hl


    ld b, b
    dec c

jr_017_530c:
    rst $08
    nop

jr_017_530e:
    dec c
    ld [$0d40], a

jr_017_5312:
    db $eb
    ld b, b

jr_017_5314:
    db $e3

jr_017_5315:
    db $ec
    ld b, b
    dec c
    ld c, h
    jr nc, jr_017_5327

    dec a
    ld sp, $3b1d
    ld sp, $3cc2
    ld sp, $edc3
    ld b, b
    dec c

jr_017_5327:
    ld [hl], l
    jr nc, jr_017_5337

    xor b
    ld b, b
    dec c
    xor $40
    dec c
    rst $28
    ld b, c
    ld b, l
    sub l
    jr nc, jr_017_5343

    ld b, e

jr_017_5337:
    jr nc, jr_017_5345

    ld b, h
    jr nc, jr_017_5348

    ld c, d
    jr nc, @-$37

    ld c, e
    jr nc, jr_017_530e

    ld c, l

jr_017_5343:
    jr nc, jr_017_530c

jr_017_5345:
    ld c, [hl]
    jr nc, jr_017_5314

jr_017_5348:
    ld c, a
    jr nc, jr_017_5312

    ld d, b
    jr nc, jr_017_5315

    ld d, d
    jr nc, jr_017_535d

    ld d, e
    jr nc, @+$52

    ld d, h
    jr nc, jr_017_53a7

    ldh a, [rLCDC]
    inc bc
    pop af
    ld b, c
    ld d, a

jr_017_535d:
    ld a, [c]
    ld b, b
    dec c
    di
    ld b, b
    rlca
    ld b, e
    ld b, b
    and c
    db $f4
    ld b, c
    ld a, a
    push af
    ld b, c
    add b
    sub l
    ld b, b
    ld l, e
    or $40
    ld [hl], d
    rst $30
    ld b, b
    ld l, h
    ld hl, sp+$40
    add sp, -$07
    ld b, b
    ld [hl], c
    ld a, [$7340]
    cpl
    jr nc, jr_017_538e

    ei
    ld b, b
    dec c
    db $fc
    ld b, b
    dec c
    db $fd
    ld b, c
    call nz, Call_017_41fe
    add e
    rst $38

jr_017_538e:
    ld b, b
    and c
    nop
    ld d, b
    rlca
    ld bc, $0d50
    ld [bc], a
    ld d, b
    ld [hl], b
    inc bc
    ld d, b
    db $e4
    inc b
    ld d, b
    ld l, l
    dec b
    ld d, b
    ld [hl], d
    ld bc, $0d30
    ld b, $50

jr_017_53a7:
    rlca
    rlca
    ld d, b
    dec c
    ld [$f450], sp
    xor h
    nop
    rst $00
    add hl, bc
    ld d, b
    adc c
    ld a, [bc]
    ld d, b
    ld l, h
    ld a, l
    jr nc, jr_017_53c7

    dec bc
    ld d, b
    inc c
    add [hl]
    jr nc, jr_017_53cd

    call c, $9900
    xor a
    nop
    dec c
    inc c

jr_017_53c7:
    ld d, b
    db $e3
    adc $00
    db $e3
    adc a

jr_017_53cd:
    jr nc, jr_017_53f7

    ld c, b
    db $10
    ld c, $96
    jr nc, @+$10

    dec c
    ld d, c
    ld bc, $500e
    ld c, $0f
    ld d, c
    push bc
    db $10
    ld d, c
    add $61
    jr nz, jr_017_5440

    ld de, $5c50
    ld [de], a
    ld d, b
    dec c
    ld sp, hl
    db $10
    dec c
    inc de
    ld d, b
    ld e, h
    ld l, $20
    ld e, h
    ld [hl], h
    db $10
    dec c
    sub d

jr_017_53f7:
    db $10
    dec c
    inc d
    ld d, b
    ld e, h
    dec d
    ld d, b
    ld e, h
    sub [hl]
    jr nz, jr_017_540f

    ld a, [de]
    jr nz, jr_017_5412

    ld d, $50
    ld [$5017], sp
    ld [$5018], sp
    nop
    ld e, c

jr_017_540f:
    jr nc, jr_017_5411

jr_017_5411:
    rlca

jr_017_5412:
    jr nz, jr_017_5414

jr_017_5414:
    add hl, de
    ld d, b
    dec c
    ld a, [de]
    ld d, b
    ld e, h
    dec de
    ld d, b
    dec c
    inc e
    ld d, c
    rst $00
    dec e
    ld d, c
    ret z

    ld bc, $5c40
    ld e, $51
    ret


    ld c, $51
    jp z, $501f

    dec c
    dec c
    ld d, c
    sla b
    ld d, c
    jp z, Jump_017_5021

    nop
    ld [hl+], a
    ld d, b
    nop
    or c
    db $10
    dec c
    or b
    db $10

jr_017_5440:
    ld e, h
    inc hl
    ld d, b
    rra
    inc h
    ld d, c
    call z, Call_017_5124
    call Call_017_5125
    call Call_017_5110
    adc $26
    ld d, b
    rlca
    rrca
    ld d, c
    rst $08
    daa
    ld d, c
    adc $28
    ld d, c
    ret nc

    ld [hl], h
    ld bc, $03d1
    ld bc, $a6d2
    ld sp, $27d3
    ld b, b
    ret nz

    add hl, hl
    ld d, b
    ld [$502a], sp
    inc c
    dec hl
    ld d, b
    ret nz

    inc l
    ld d, b
    inc c
    dec l
    ld d, b
    inc c
    ld l, $50
    inc bc
    cpl
    ld d, c
    ret nc

    jr nc, jr_017_54cf

    db $d3
    ld sp, $0850
    ld [hl-], a
    ld d, b
    inc c
    inc sp
    ld d, b
    ld a, [bc]
    inc [hl]
    ld d, b
    ld d, d
    dec [hl]
    ld d, c
    ld a, [de]
    ld [hl], $51
    add h
    scf
    ld d, b
    ld a, $38
    ld d, c
    cp h
    add hl, sp
    ld d, b
    inc c
    ld a, [hl-]
    ld d, b
    inc c
    dec sp
    ld d, b
    inc c
    inc a
    ld d, b
    inc bc
    dec a
    ld d, b
    inc bc
    ld a, $50
    inc bc
    ccf
    ld d, b
    inc bc
    ld b, b
    ld d, b
    add hl, de
    ld b, c
    ld d, b
    add hl, de
    ld b, d
    ld d, b
    add hl, de
    ld b, e
    ld d, b
    add hl, de
    ld b, h
    ld d, b
    inc bc
    ld b, l
    ld d, b
    add hl, de
    ld b, [hl]
    ld d, c
    cp h
    ld b, a
    ld d, b
    inc c
    ld c, b
    ld d, b
    inc c
    ld c, c
    ld d, b
    ld [c], a
    ld c, d
    ld d, b
    dec b
    ld c, e

jr_017_54cf:
    ld d, c
    and l
    ld c, h
    ld d, b
    sub b
    ld c, l
    ld d, b
    add hl, de
    ld c, [hl]
    ld d, b
    ld l, b
    ld c, a
    ld d, b
    ld l, c
    ld d, b
    ld d, b
    inc bc
    ld d, c
    ld d, b
    inc bc
    ld d, d
    ld d, b
    ret nz

    ld d, e
    ld d, b
    ret nz

    ld d, h
    ld d, b
    inc c
    xor b
    jr nc, jr_017_54ef

jr_017_54ef:
    ld d, l
    ld d, b
    nop
    ld d, [hl]
    ld d, b
    nop
    ld d, a
    ld d, b
    nop
    ld e, b
    ld d, b
    ld d, b
    ld e, c
    ld d, c
    ld d, l
    ld e, d
    ld d, c
    call nc, $515b
    ccf
    dec e
    ld b, c
    push de
    ld e, h
    ld d, c
    sub $33
    ld d, b
    nop
    ld e, l
    ld d, c

jr_017_550f:
    rst $10
    ld e, [hl]
    ld d, b
    ret nz

    ld e, a
    ld d, b
    adc a
    ld h, b
    ld d, b
    sub c
    ld h, c
    ld d, b
    nop
    ld h, d
    ld d, b
    nop
    ld h, e
    ld d, b
    nop
    ld h, h
    ld d, b
    nop
    ld h, l

jr_017_5526:
    ld d, b
    ld [c], a

jr_017_5528:
    ld h, [hl]
    ld d, b
    dec b
    ld d, $11
    ld [$20e1], sp
    ldh a, [$e2]
    jr nz, jr_017_5526

    db $e3
    jr nz, jr_017_5528

    db $e4
    ld hl, $e5d8
    ld hl, $e6d9
    ld hl, $e731
    jr nz, jr_017_550f

    add sp, $21
    jp c, Jump_017_5167

    db $db
    jr jr_017_555c

    ld [$20ae], sp
    nop
    ld l, b
    ld d, b
    inc bc
    ld l, c
    ld d, b
    inc bc
    ld l, d
    ld d, b
    inc bc
    db $ec
    jr nz, jr_017_5566

    db $ed

jr_017_555c:
    jr nz, @+$2c

    xor $21
    cpl
    rst $28
    jr nz, jr_017_556e

    ldh a, [rNR42]

jr_017_5566:
    ld [$21f1], sp
    ld c, $f2
    jr nz, jr_017_5577

    dec c

jr_017_556e:
    ld de, $0e0c
    ld de, $0f09
    ld de, $6b0b

jr_017_5577:
    ld d, c
    call c, Call_017_516c
    db $dd
    ld l, l
    ld d, b
    inc bc
    ld l, [hl]
    ld d, b
    add hl, de
    ld l, a
    ld d, b
    inc bc
    ld [hl], b
    ld d, b
    ld [$5071], sp
    ld a, [de]
    ld [hl], d
    ld d, b
    inc bc
    ld [hl], e
    ld d, b
    ld a, [de]
    ld [hl], h
    ld d, b
    inc bc
    ld [hl], l
    ld d, b
    inc bc
    db $76
    ld d, b
    ld a, [de]
    ld [hl], a
    ld d, b
    inc bc
    ld a, b
    ld d, b
    ld a, [de]
    ld a, c
    ld d, b
    inc bc
    ld a, d
    ld d, b
    inc bc
    ld a, e
    ld d, b
    nop
    ld a, h
    ld d, b
    ld e, [hl]
    ld a, l
    ld d, b
    dec c
    ld a, [hl]
    ld d, b
    dec c
    ld l, d
    db $10
    dec c
    ld a, a
    ld d, b
    ld e, h
    ld a, [hl]
    ld d, b
    ld e, h
    add b
    ld d, b
    ld e, h
    ld a, [hl]
    ld d, b
    ld a, [bc]
    add c
    ld d, b
    inc c
    add d
    ld d, c
    ld l, h
    add e
    ld d, b
    ld d, b
    add h
    ld d, b
    nop
    add l
    ld d, b
    nop
    add [hl]
    ld d, b
    add hl, bc
    add h
    ld d, b
    inc c
    add l
    ld d, b
    inc c
    add [hl]
    ld d, b
    ld d, b
    dec l
    nop
    dec c
    add a
    ld d, b
    dec c
    adc b
    ld d, b
    dec c
    adc c
    ld d, b
    sbc c
    add a
    ld d, b
    ld e, h
    adc d
    ld d, b
    ld e, h
    adc e
    ld d, b
    dec c
    adc h
    ld d, b
    inc c
    adc l
    ld d, c
    dec e
    adc [hl]
    ld d, b
    ld d, b
    adc a
    ld d, b
    nop
    sub b
    ld d, b
    nop
    sub c
    ld d, b
    add hl, bc
    sub d
    ld d, b
    inc c
    sub e
    ld d, b
    inc c
    sub h
    ld d, b
    ld d, b
    ld e, $20
    dec c
    sub l
    ld d, c
    sbc $96
    ld d, c
    rst JumpTable
    add l
    jr nc, jr_017_566a

    sub a
    ld d, b
    ld e, h
    sbc b
    ld d, c
    adc l
    sbc c
    ld d, b
    nop
    sbc d
    ld d, b
    or a
    sbc e
    ld d, b
    add hl, bc
    sbc h
    ld d, b
    nop
    sbc l
    ld d, b
    nop
    sbc [hl]
    ld d, b
    add hl, bc
    sbc a
    ld d, b
    inc c
    and b
    ld d, b
    inc c
    and c
    ld d, b
    ld d, b
    and d
    ld d, c
    add [hl]
    and e
    ld d, c
    add [hl]
    and h
    ld d, c
    sbc $a5
    ld d, c
    rst JumpTable
    and [hl]
    ld d, b
    ld a, [bc]
    and a
    ld d, c
    ldh [$a8], a
    ld d, c
    pop hl
    xor c
    ld d, b
    nop
    xor d
    ld d, c
    adc c
    xor e
    ld d, b
    add hl, bc
    xor h
    ld d, c
    ld [c], a
    xor l
    ld d, c
    db $e3
    xor [hl]
    ld d, b
    ld a, [bc]
    ld a, [hl]
    ld d, b
    ld d, d
    rlca
    ld b, c
    db $e4
    rst $00
    ld bc, $af3b

jr_017_566a:
    ld d, b
    dec c
    or b
    ld d, b
    dec c
    ld [hl], e
    db $10
    dec c
    or c
    ld d, b
    dec c
    or d
    ld d, b
    dec c
    or e
    ld d, b
    dec c
    or h
    ld d, b
    dec c
    or l
    ld d, b
    dec c
    or [hl]
    ld d, b
    dec c
    or a
    ld d, b
    dec c
    cp b
    ld d, b
    dec c
    cp c
    ld d, b
    ld c, $ba
    ld d, b
    ld c, $bb
    ld d, b
    ld c, $bc
    ld d, b
    ld c, $bd
    ld d, b
    ld c, $be
    ld d, b
    dec c
    cp a
    ld d, b
    dec c
    ret nz

    ld d, c
    push hl
    pop bc
    ld d, b
    inc bc
    pop bc
    ld d, b
    ld a, [bc]
    sla b
    dec c
    jp nz, $0d50

    jp $0d50


    call nz, $0d50
    push bc
    ld d, b
    dec c
    add $50
    dec c
    add l
    jr nc, jr_017_56c7

    rst $00
    ld d, b
    dec c
    ld e, l
    jr nc, @+$0f

    ret z

    ld d, b
    dec c
    ld a, [de]

jr_017_56c7:
    nop
    dec c
    ret


    ld d, b
    dec c
    jp z, $0d50

    bit 2, b
    dec c
    call z, Call_017_6150
    call $e651
    adc $51
    rst $20
    rst $08

Call_017_56dc:
    ld d, c
    and $d0
    ld d, b
    add hl, de
    pop de
    ld d, b
    inc bc
    jp nc, $8950

    db $d3
    ld d, b
    add hl, de
    call nc, Call_017_5751
    push de
    ld d, c
    cp c
    sub $51
    add sp, -$29
    ld d, c
    add sp, -$28
    ld d, c
    jp hl


    ld d, b
    ld b, b
    dec c
    reti


    ld d, b
    dec c
    jp c, $ea51

    db $db
    ld d, b
    ld c, a
    call c, $eb51
    db $dd
    ld d, c
    db $ec
    sbc $51
    db $ed
    rst JumpTable
    ld d, b
    dec e
    ldh [rHDMA1], a
    xor $d3
    ld d, b
    rla
    pop hl
    ld d, c
    or a
    ld [c], a

Call_017_571b:
    ld d, c
    or [hl]
    db $e3
    ld d, c
    add sp, -$1c
    ld d, c
    ld [hl], d
    push hl
    ld d, c
    rst $28
    and $50
    dec c
    rst $20
    ld d, b
    dec c
    add sp, $50
    dec c
    jp hl


    ld d, b
    rra
    ld [$5c50], a
    db $eb
    ld d, b
    ld e, h
    db $ec
    ld d, b
    dec c
    db $ed
    ld d, b
    dec c
    xor $50
    add [hl]
    rst $28
    ld d, c
    ldh a, [$f0]
    ld d, c
    pop af
    pop af
    ld d, b
    xor e
    ld a, [c]
    ld d, b
    xor [hl]
    di
    ld d, b
    xor d
    db $f4

Call_017_5751:
    ld d, c
    ld a, [c]
    push af
    ld d, c
    sbc $f6
    ld d, c
    sbc $f7
    ld d, c
    ld a, [c]
    ld hl, sp+$51
    add $f9
    ld d, c
    di
    ld a, [$f351]
    ei
    ld d, c
    db $f4
    db $fc
    ld d, c
    db $f4
    db $fd
    ld d, b
    ld sp, $50fe
    ld sp, $50ff
    dec c
    nop
    ld h, b
    dec c
    ld bc, $0d60
    jr z, jr_017_577c

jr_017_577c:
    inc bc
    ld [bc], a
    ld h, b
    dec c
    inc bc
    ld h, c
    push af
    inc b
    ld h, b
    ld e, h
    dec b
    ld h, b
    ld e, h
    inc bc
    jr nc, jr_017_5794

    ld d, [hl]
    db $10
    inc bc
    ld b, $60
    inc bc
    rlca
    ld h, c

jr_017_5794:
    or $08
    ld h, c
    ld [$0011], sp
    inc bc
    add hl, bc
    ld h, b
    inc bc
    ld a, [bc]
    ld h, b
    rst $00
    dec bc
    ld h, b
    rra
    rst $20
    ld b, b
    db $e3
    inc c
    ld h, c
    dec sp
    dec c

Call_017_57ab:
    ld h, b
    inc b
    ld c, $60
    inc b
    rrca
    ld h, b
    inc bc
    adc h
    jr nc, jr_017_57be

    adc h
    jr nc, jr_017_57ca

    sub d
    jr nc, jr_017_57c6

    db $10
    ld h, b

jr_017_57be:
    ld c, $11
    ld h, b
    ld c, $12
    ld h, b
    ld c, $13

jr_017_57c6:
    ld h, b
    ld c, $14
    ld h, b

jr_017_57ca:
    sub d
    dec d

Call_017_57cc:
    ld h, b
    sbc b
    ld d, $60
    ld a, l
    rla
    ld h, c
    rst $30
    jr jr_017_5836

    inc bc
    add hl, de
    ld h, b
    ld [$611a], sp
    ld hl, sp+$1b
    ld h, c
    ld sp, hl
    inc e
    ld h, b
    ld l, c
    daa
    ld sp, $1dfa
    ld h, b
    adc a
    ld e, $60
    sub c
    rra
    ld h, b
    ld [$3086], sp
    ld a, [bc]
    cpl
    jr nc, @+$0c

    jr nz, jr_017_5857

    ld a, [bc]
    ld hl, $0a60
    ld [hl+], a
    ld h, b
    inc bc
    ld [hl], $41
    ei
    inc hl
    ld h, b
    ld a, [bc]
    inc h
    ld h, b
    ld a, [bc]
    dec h
    ld h, b
    dec c
    ld h, $60
    ld e, h
    daa
    ld h, c
    and h
    jr z, jr_017_5873

    db $fc
    add hl, hl
    ld h, c
    db $fd
    ld a, [hl+]
    ld h, c
    cp $2b
    ld h, b
    ld c, $2c
    ld h, c
    rst $38
    dec l
    ld h, b
    scf
    ld l, $60
    dec c
    cpl
    ld h, b
    ld c, $30
    ld h, b
    ld e, h
    ld sp, $0062
    ld [hl-], a
    ld h, d
    ld bc, $6033
    dec c
    inc [hl]
    ld h, b

jr_017_5836:
    dec c
    dec [hl]
    ld h, c
    rst $28
    inc c
    ld d, b
    ld sp, $30eb
    ld sp, $6036
    inc bc
    scf
    ld h, b
    ld a, [de]
    jr c, jr_017_58a8

    ld a, [de]
    add hl, sp
    ld h, b
    inc bc
    ld a, [hl-]
    ld h, b
    ld a, [de]
    dec sp
    ld h, b
    ld a, [de]
    ld [$8960], sp
    inc a
    ld h, b

jr_017_5857:
    ld [$603d], sp
    ld a, [de]
    ld a, $60
    inc bc
    ccf
    ld h, b
    ld [hl], d
    ld b, b
    ld h, b
    ld l, l
    ld b, c
    ld h, d
    ld [bc], a
    ld e, l
    jr nc, jr_017_5872

    ld b, d
    ld h, c
    ld l, a
    ld a, [de]
    nop
    ld [$6043], sp

jr_017_5872:
    dec b

jr_017_5873:
    ld b, h
    ld h, b
    ld [c], a
    ld b, l
    ld h, d
    inc bc
    ld b, [hl]
    ld h, d
    inc b
    rst $20
    ld b, b
    ld [$00d6], sp
    ld [$6047], sp
    ld [$6148], sp
    and c
    dec h
    ld h, b
    ld sp, $4020
    ld sp, $6049
    ld sp, $604a
    ld bc, $604b
    ld sp, $604c
    ld sp, $614d
    ld l, a
    ld c, [hl]
    ld h, c
    and c
    ld c, a
    ld h, b
    add l
    ld d, b
    ld h, d
    dec b
    ld d, c
    ld h, b

jr_017_58a8:
    add hl, de
    inc c
    ld b, b
    add hl, de
    ld d, d
    ld h, c
    and c
    ld d, e
    ld h, b
    ld sp, $6154
    and c
    ld d, l
    ld h, b
    add l
    ld d, [hl]
    ld h, d
    ld b, $57
    ld h, d
    rlca
    ld e, b
    ld h, b
    ld a, [de]
    ld e, c
    ld h, d
    ld [$625a], sp
    add hl, bc
    ld e, e
    ld h, d
    ld a, [bc]
    ld e, h
    ld h, b
    ld sp, $625d
    dec bc
    ld e, [hl]
    ld h, d
    inc c
    ld e, a
    ld h, d
    dec c
    ld h, b
    ld h, b
    ld sp, $6061
    add hl, de
    ld l, l
    jr nc, jr_017_58f8

    ld h, d
    ld h, b
    add l
    ld h, e
    ld h, b
    add l
    ld h, h
    ld h, d
    ld c, $76
    jr nc, jr_017_58f8

    ld h, l
    ld h, d
    rrca
    ld h, [hl]
    ld h, b
    ld sp, $20cc
    ld sp, $20cd
    inc bc
    ld h, a

jr_017_58f8:
    ld h, b
    ld [$6068], sp
    add hl, de
    ld l, c
    ld h, b
    ld sp, $606a
    ld sp, $606b
    ld bc, $606c
    ld bc, $30ed
    ld l, l
    xor $32
    ld [bc], a
    ld l, l
    ld h, d
    db $10
    ld l, [hl]
    ld h, b
    dec b
    sub d
    jr nz, jr_017_5949

    ld l, a
    ld h, b
    ld bc, $402a
    ld [$3295], sp
    ld de, $3194
    jp hl


    ld [hl], b
    ld h, d
    ld [de], a
    ld [hl], c
    ld h, c
    call nz, Call_017_6172
    call nz, Call_017_6073
    nop
    ld [hl], h
    ld h, b
    nop
    ld [hl], l
    jr nc, jr_017_5936

jr_017_5936:
    ld [hl], l
    ld h, c
    db $76
    db $76
    ld h, c
    db $76
    ld [hl], a
    ld h, d
    ld [de], a
    ld a, b
    ld h, b
    nop
    ld a, c
    ld h, b
    nop
    ld a, d
    ld h, d
    inc de
    ld a, e

jr_017_5949:
    ld h, b
    and c
    ld a, h
    ld h, d
    ld [de], a
    ld a, l
    ld h, b
    nop
    ld a, [hl]
    ld h, d
    inc d
    ld a, a
    ld h, d
    dec d
    add b

Call_017_5958:
    ld h, c
    ld a, a
    add c
    ld h, b
    and c
    adc $00
    push hl
    add d
    ld h, b
    nop
    add e
    ld h, b
    nop
    add b
    ld h, d
    ld d, $07
    ld b, b
    ld e, h
    ld l, l
    jr nc, jr_017_598e

    add h
    ld h, b
    add hl, bc
    add l
    ld h, d
    rla
    add [hl]
    ld h, c
    add b
    add a
    ld h, b
    push hl
    adc b
    ld h, b
    nop
    adc c
    ld h, b
    nop
    adc d
    ld h, d
    ld d, $8b
    ld h, b
    nop
    ld l, e
    jr nc, jr_017_598a

jr_017_598a:
    adc h
    ld h, c
    adc c
    nop

jr_017_598e:
    ld [bc], a
    jr @-$71

    ld h, b
    ld b, c
    adc [hl]
    ld h, d
    add hl, de
    adc a
    ld h, c
    rra
    sub b
    ld h, c
    ld e, $91
    ld h, c
    dec e
    sub d
    ld h, d
    ld a, [de]
    sub e
    ld h, d
    dec de
    sub h
    ld h, d
    inc e
    sub l
    ld h, d
    dec e
    sub [hl]
    ld h, c
    dec e
    sub a
    ld h, d
    ld e, $98
    ld h, d
    ld e, $99
    ld h, d
    ld e, $9a
    ld h, d
    rra
    sbc e
    ld h, b
    rra
    sbc h
    ld h, b
    ld [$609d], sp
    dec c
    sbc [hl]
    ld h, b
    dec c
    sbc a
    ld h, b
    ld c, $a0
    ld h, b
    ld c, $a1
    ld h, b
    inc bc
    and d
    ld h, b
    dec c
    and e
    ld h, b
    ld c, $06
    jr nz, jr_017_59e6

    and h
    ld h, b
    ld c, $a5
    ld h, b
    inc bc
    and [hl]
    ld h, b
    xor [hl]
    and a
    ld h, b
    ld l, b
    xor b
    ld h, b

jr_017_59e6:
    nop
    xor c
    ld h, b
    nop
    xor d
    ld h, b
    nop

jr_017_59ed:
    xor e
    ld h, b
    dec c
    xor e

jr_017_59f1:
    ld h, b
    ld c, $35
    ld d, b
    ld a, [bc]
    xor h
    ld h, b
    ld c, $ac
    ld h, c
    sbc e
    xor l
    ld h, c
    sbc e
    xor [hl]
    ld h, c
    sbc e
    xor a
    ld h, b
    ld c, $af
    ld h, b
    ld a, [bc]
    or b
    ld h, b
    rrca
    or c
    ld h, b
    rrca
    or d
    ld h, b
    ld c, $b3
    ld h, b
    ld c, $b4
    ld h, c
    db $db
    or l

jr_017_5a18:
    ld h, b
    ld a, [bc]
    or [hl]
    ld h, c
    ld [hl], c
    or a
    ld h, c
    ld [hl], c
    cp b
    ld h, b
    ld a, [bc]
    cp c
    ld h, c
    db $db
    cp d
    ld h, b
    ld a, [bc]
    cp e
    ld h, b
    ld a, [bc]
    cp h
    ld h, b
    jr z, jr_017_59ed

    ld h, b
    jr z, jr_017_59f1

    ld h, b
    dec c
    cp a
    ld h, b
    ld c, $c0
    ld h, b
    db $10
    pop bc
    ld h, b
    inc bc
    jp nz, $2860

    ld [hl], l
    db $10
    ld a, [bc]
    jp $0e61


    call nz, $2860
    push bc
    ld h, b
    jr z, @-$38

    ld h, d
    jr nz, jr_017_5a18

    ld h, c
    db $db
    ld b, a
    db $10
    ld a, [bc]
    ret z

    ld h, b
    ld a, [bc]
    ret


    ld h, c
    ld [$61ca], sp
    ld [$60cb], sp
    inc c
    call z, $0c60
    call $0c60
    adc $60
    inc c
    rst $08
    ld h, c
    adc a
    ret nc

    ld h, d
    ld hl, $61d1
    inc l
    jp nc, $0a60

    db $d3
    ld h, c
    ld [hl], c
    call nc, Call_017_7161
    push de
    ld h, d
    ld hl, $61d6
    ld [$60d7], sp
    ld a, [bc]
    ret c

    ld h, c
    sub d
    daa
    ld bc, $2892
    ld bc, $d992
    ld h, c
    sub d
    jp c, $0360

    db $db
    ld h, b
    ld e, a
    call c, $1f62
    db $dd
    ld h, d
    ld [hl+], a
    sbc $60
    ld a, [bc]
    ld c, h
    ld h, b
    ld a, [bc]
    rst JumpTable
    ld h, b
    ld d, d
    ldh [$60], a
    ld a, [bc]
    pop hl
    ld h, b
    ld a, [bc]
    ld [c], a
    ld h, b
    ld a, [bc]
    db $e3
    ld h, b
    ld a, [bc]
    db $e4
    ld h, b
    ld a, [bc]
    push hl
    ld h, b
    ld d, d
    and $60
    ld a, [bc]
    rst $20
    ld h, b
    ld a, [bc]
    add sp, $60
    ld a, [bc]
    jp hl


    ld h, b
    ld a, [bc]
    ld [$0a60], a
    db $eb
    ld h, b
    ld a, [bc]
    db $ec
    ld h, b
    ld a, [bc]
    db $ed
    ld h, b
    ld a, [bc]
    xor $60
    inc bc
    rst $28
    ld h, b
    inc bc
    ldh a, [$60]
    inc bc
    add b
    add b
    add b
    add b
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld b, b
    ld b, c
    ld d, b
    ld d, c
    xor b
    xor b
    add [hl]
    add [hl]
    sub c
    sub b
    add [hl]
    add [hl]
    add e
    add d
    add h
    add h
    add d
    add e
    add h
    add h
    adc h
    adc h
    adc l
    adc l
    adc [hl]
    adc [hl]
    adc a
    adc a
    ld h, $26
    ld [hl], $36
    daa
    daa
    scf
    scf
    and b
    and d
    and c
    and e
    or h
    or [hl]
    or l
    or a
    and [hl]
    and [hl]
    and a
    and a
    or b
    or d
    or c
    or e
    cp h
    cp [hl]
    cp l
    cp a
    adc b
    adc d
    adc c
    adc e
    ret z

    jp z, $cbc9

    cp b
    cp d
    cp c
    cp e
    xor h
    xor [hl]
    xor l
    xor a
    ret c

    jp c, $dbd9

    ld c, b
    ld c, b
    ld e, b
    ld e, b
    ld c, e
    ld c, d
    ld c, e
    ld c, d
    ld e, b
    ld e, b
    ld c, b
    ld c, b
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, c
    ld c, c
    ld e, c
    ld e, c
    ld e, e
    ld e, d
    ld e, e
    ld e, d
    ld e, c
    ld e, c
    ld c, c
    ld c, c
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld c, h
    ld c, h
    ld e, h
    ld e, h
    ld e, l
    ld c, l
    ld e, l
    ld c, l
    ld e, h
    ld e, h
    ld c, h
    ld c, h
    ld c, l
    ld e, l
    ld c, l
    ld e, l
    ld b, b
    sbc [hl]
    ld d, b
    sbc a
    sbc [hl]
    ld b, c
    sbc a
    ld d, c
    call z, $dccd
    db $dd
    ldh [$e1], a
    ldh a, [$f1]
    ld [c], a
    db $e3
    ld a, [c]
    di
    db $ec
    db $ed
    db $fc
    db $fd
    xor $ef
    cp $ff
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    and $e7
    or $f7
    ld b, d
    ld b, e
    ld d, d
    ld d, e
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    dec d
    dec d
    dec d
    dec d
    ld d, $16
    ld d, $16
    sub h
    sub h
    sub h
    sub h
    sub l
    sub l
    sub l
    sub l
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    add hl, bc
    ld [$1819], sp
    ld [$1809], sp
    add hl, de
    dec bc
    ld a, [bc]
    dec de
    ld a, [de]
    dec c
    inc c
    dec e
    inc e
    rla
    rla
    rla
    rla
    ld c, $0f
    ld e, $1f
    sbc l
    sbc l
    sbc l
    sbc l
    sub [hl]
    sub a
    sbc c
    sbc d
    sbc c
    sbc d
    sub [hl]
    sub a
    sub a
    sub [hl]
    sbc d
    sbc c
    sbc d
    sbc c
    sub a
    sub [hl]
    sbc d
    sub a
    sbc b
    sbc d
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc [hl]
    sbc [hl]
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add c
    add c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add c
    add c
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl+]
    add c
    ld a, [hl-]
    add c
    add c
    ld a, [hl+]
    add c
    ld a, [hl-]
    ret nz

    ret nz

    ret nc

    ret nc

    pop de
    pop bc
    pop de
    pop bc
    ret nc

    ret nc

    ret nz

    ret nz

    pop bc
    pop de
    pop bc
    pop de
    call nz, $d4c4
    call nc, $c5d5
    push de
    push bc
    call nc, $c4d4
    call nz, $d5c5
    push bc
    push de
    add $c6
    sub $d6
    rst $10
    jp $c3d7


    sub $d6
    add $c6
    jp $c3d7


    rst $10
    jp nz, $d2c2

    jp nc, $c3d3

    db $d3
    jp $d2d2


    jp nz, $c3c2

    db $d3
    jp $87d3


    inc h
    inc sp
    inc [hl]
    dec h
    dec h
    dec [hl]
    dec [hl]
    inc h
    add a
    inc [hl]
    inc sp
    ld sp, $3132
    ld [hl-], a
    ld [hl-], a
    ld sp, $3132
    inc sp
    inc [hl]
    add a
    inc h
    dec [hl]
    dec [hl]
    dec h
    dec h
    inc [hl]
    inc sp
    inc h
    add a
    inc l
    inc a
    inc a
    inc a
    dec hl
    dec hl
    dec sp
    dec sp
    dec sp
    dec sp
    dec hl
    dec hl
    ld l, h
    ld l, [hl]
    ld l, l
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    add a
    add a
    ld d, b
    add a
    add a
    add a
    add a
    ld d, c
    ld b, b
    ld b, c
    add a
    add a
    ld b, b
    ld b, c
    add a
    ld d, c
    ld b, b
    add a
    ld d, b
    add a
    add a
    ld b, c
    add a
    ld d, c
    add a
    add a
    ld d, b
    ld d, c
    add a
    ld b, c
    ld d, b
    ld d, c
    ld b, b
    ld b, c
    ld d, b
    add a
    ld b, b
    add a
    ld d, b
    ld d, c
    ld b, b
    add a
    add a
    add a
    add a
    ld b, c
    add a
    add a
    ld b, c
    ld b, b
    ld d, c
    ld d, b
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld h, h
    ld h, l
    ld h, d
    ld h, e
    ld a, [$fafa]
    ld a, [$fbfb]
    ei
    ei
    add c
    add c
    add c

jr_017_5cc9:
    add c
    ld e, [hl]
    ld e, h

jr_017_5ccc:
    ld e, l
    ld c, [hl]
    ld e, h

jr_017_5ccf:
    ld e, [hl]
    ld c, [hl]
    ld e, l
    ld e, l
    ld c, [hl]
    ld e, [hl]
    ld e, h
    ld c, [hl]
    ld e, l
    ld e, h
    ld e, [hl]
    ld c, a
    ld c, h
    ld c, l
    ld e, a
    ld c, h
    ld c, a
    ld e, a
    ld c, l
    ld c, l
    ld e, a
    ld c, a
    ld c, h
    ld e, a
    ld c, l
    ld c, h
    ld c, a
    sbc h
    sbc h
    ld h, b
    ld h, b
    ld h, c
    sbc h
    ld h, c
    sbc h
    ld h, b
    ld h, b
    sbc h
    sbc h
    sbc h
    ld h, c
    sbc h
    ld h, c
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, l
    ld h, h
    ld h, a
    ld h, [hl]
    ld h, d
    ld h, e
    ld h, b
    ld h, c
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, d
    ld c, h
    ld a, e
    ld e, h
    ld e, l
    ld c, l
    ld a, c
    ld a, b
    ld a, e
    ld e, h
    ld a, d
    ld c, h
    ld c, l
    ld e, l
    ld a, b
    ld a, c
    ld l, b
    ld l, c
    ld e, b
    ld e, c
    jr nc, @+$32

    jr nc, jr_017_5d42

    jr nc, jr_017_5d54

    jr nz, jr_017_5d46

    jr nc, jr_017_5d58

    jr nz, jr_017_5d5a

    jr nc, jr_017_5d4c

    add sp, -$17
    ld hl, $2221
    ld [hl+], a
    jr nz, jr_017_5d64

    jp hl


    add sp, -$07
    ld hl, sp-$15
    ld [$2087], a
    add a
    jr nz, @+$22

    add a
    jr nz, jr_017_5cc9

jr_017_5d42:
    add a
    jr nz, jr_017_5ccc

    add a

jr_017_5d46:
    jr nz, jr_017_5ccf

    add a
    add a
    jr nz, jr_017_5d6c

jr_017_5d4c:
    jr nz, @+$22

    dec l
    ld l, $3d
    ld a, $ce
    rst $08

jr_017_5d54:
    sbc $df
    xor d
    xor d

jr_017_5d58:
    xor e
    xor e

jr_017_5d5a:
    xor c
    xor c
    xor e
    xor e
    jr z, jr_017_5d8f

    jr c, jr_017_5da1

    db $e4
    push hl

jr_017_5d64:
    db $f4
    push af
    nop
    nop
    add c
    add c
    add c
    add c

jr_017_5d6c:
    ld bc, $0001
    nop
    ld bc, $9201
    sub d
    sub d
    sub d
    sub e
    sub e
    sub e
    sub e
    db $10
    db $10
    ld de, $1211
    ld [de], a
    inc de
    inc de
    dec b
    dec b
    ld b, $06
    db $10
    db $10
    db $10
    db $10
    and h
    and [hl]
    and l
    and a
    ld l, d

jr_017_5d8f:
    ld l, e
    ld a, d
    ld a, e
    inc d
    inc d
    inc d
    inc d
    ld h, b
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, e
    ld h, d
    ld [hl], e
    ld [hl], d
    ld [hl], b
    ld [hl], c
    ld h, b

jr_017_5da1:
    ld h, c
    ld h, d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld c, h
    ld [hl], l
    ld e, h
    ld [hl], l
    ld e, h
    ld [hl], h
    ld c, h
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    jr nc, jr_017_5dd4

    jr nc, jr_017_5dd6

    jr nz, jr_017_5de8

    jr nz, jr_017_5dea

    jr nc, jr_017_5ddc

    jr nc, jr_017_5dee

    jr nz, jr_017_5df0

    jr nc, jr_017_5df2

    jr nz, jr_017_5de4

    jr nc, jr_017_5df6

    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, l
    ld h, l
    ld h, h
    ld h, h
    ld h, h
    ld h, h

jr_017_5dd4:
    ld h, l
    ld h, l

jr_017_5dd6:
    ret c

    ret c

    ret c

    ret c

    ld c, h
    ld c, [hl]

jr_017_5ddc:
    ld c, l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    sbc h
    sbc h

jr_017_5de4:
    ld l, [hl]
    ld l, [hl]
    ld l, a
    sbc h

jr_017_5de8:
    ld l, a
    sbc h

jr_017_5dea:
    ld l, [hl]
    ld l, [hl]
    sbc h
    sbc h

jr_017_5dee:
    sbc h
    ld l, a

jr_017_5df0:
    sbc h
    ld l, a

jr_017_5df2:
    ld h, h
    ld h, l
    ld [hl], h
    ld [hl], l

jr_017_5df6:
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    db $76
    ld [hl], a
    ld c, h
    ld c, h
    ld l, b
    ld l, c
    ld b, a
    ld b, a
    ld l, b
    ld l, c
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    or [hl]
    or [hl]
    or a
    or a
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, e
    ld l, d
    ld l, e
    ld l, d
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    ld l, d
    ld l, e
    ld l, d
    ld l, e
    ld l, c
    ld l, c
    ld a, c
    ld a, c
    ld a, e
    ld a, d
    ld a, e
    ld a, d
    ld a, c
    ld a, c
    ld l, c
    ld l, c
    ld a, d
    ld a, e
    ld a, d
    ld a, e
    ld l, h
    ld l, h
    ld a, h
    ld a, h
    ld a, l
    ld l, l
    ld a, l
    ld l, l
    ld a, h
    ld a, h
    ld l, h
    ld l, h
    ld l, l
    ld a, l
    ld l, l
    ld a, l
    ld h, b
    sbc [hl]
    ld [hl], b
    sbc a
    sbc [hl]
    ld h, c
    sbc a
    ld [hl], c
    db $dd
    db $dd
    add $c7
    cp l
    cp l
    call Call_017_77cd
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    sub a
    sub a
    sub a
    sub a
    sbc b
    sbc d
    sbc c
    sbc e
    sbc e
    sbc b
    sbc d
    sbc c
    sbc c
    sbc e
    sbc b
    sbc d
    sbc d
    sbc c
    sbc e
    sbc b
    sbc c
    sbc d
    sbc d
    sbc c
    add a
    add a
    ld [hl], b
    add a
    add a
    add a
    add a
    ld [hl], c
    ld h, b
    ld h, c
    add a
    add a
    ld h, b
    ld h, c
    add a
    ld [hl], c
    ld h, b
    add a
    ld [hl], b
    add a
    add a
    ld h, c
    add a
    ld [hl], c
    add a
    add a
    ld [hl], b
    ld [hl], c
    add a
    ld h, c
    ld [hl], b
    ld [hl], c
    ld h, b
    ld h, c
    ld [hl], b
    add a
    ld h, b
    add a
    add a
    add a
    add a
    ld h, c
    add a
    add a
    sub d
    sub d
    ld e, [hl]
    ld e, [hl]
    ld e, a
    sub d
    ld e, a
    sub d
    ld e, [hl]
    ld e, [hl]
    sub d
    sub d
    sub d
    ld e, a
    sub d
    ld e, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    sbc a
    sbc a
    sbc a
    sbc a
    ld a, [hl]
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, h
    ld a, [hl]
    ld l, [hl]
    ld a, l
    ld a, l
    ld l, [hl]
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld a, l
    ld a, h
    ld a, [hl]
    ld l, a
    ld l, h
    ld l, l
    ld a, a
    ld l, h
    ld l, a
    ld a, a
    ld l, l
    ld l, l
    ld a, a
    ld l, a
    ld l, h
    ld a, a
    ld l, l
    ld l, h
    ld l, a
    rlca
    inc de
    rlca
    inc de
    inc de
    rlca
    inc de
    rlca
    jr jr_017_5f05

    rlca
    ld bc, $1919
    ld [bc], a
    ld [bc], a
    add hl, de
    jr jr_017_5ef6

    rlca

jr_017_5ef6:
    rlca
    ld bc, $1605
    ld l, a
    ld h, a
    ld l, a
    ld h, a
    ld l, a
    ld h, a
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld l, a
    ld h, a

jr_017_5f05:
    ld l, a
    ld [$0213], sp
    db $10
    inc de
    ld [$0210], sp
    ld c, $0d
    rrca
    ld e, $81
    dec c
    ld e, $1e
    add c
    ld c, $1e
    rrca
    ld [bc], a
    ld [bc], a
    rla
    ld d, $01
    rlca
    rla
    dec b
    ld a, [hl]
    ld a, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld l, a
    ld h, a
    ld l, a
    ld a, [hl]
    ld a, [hl]
    ld l, a
    ld h, a
    ld h, a
    ld l, a
    ld l, [hl]
    ld l, a
    add b
    and e
    and e
    add b
    adc d
    dec c
    dec c
    adc e
    add c
    dec c
    dec c
    add c
    ld a, h
    ld a, h
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, h
    ld a, h
    sbc c
    sbc d
    sbc b
    sub a
    sub a
    sbc c
    sbc d
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr nc, jr_017_5f84

    jr nc, jr_017_5f86

    sbc h
    sbc h
    ld [hl], h
    ld [hl], h
    ld [hl], l
    sbc h
    ld [hl], l
    sbc h
    ld [hl], h
    ld [hl], h
    sbc h
    sbc h
    sbc h
    ld [hl], l
    sbc h
    ld [hl], l
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    sbc h
    sbc h
    ld l, b
    ld l, b
    ld l, c
    sbc h
    ld l, c
    sbc h
    ld l, b
    ld l, b
    sbc h
    sbc h
    sbc h
    ld l, c
    sbc h
    ld l, c
    ld h, l
    ld h, h
    ld [hl], l
    ld [hl], h
    add l
    add l

jr_017_5f84:
    add l
    add l

jr_017_5f86:
    ld h, c
    sbc h
    ld [hl], c
    ld a, a
    ld h, c
    ld c, h
    ld [hl], c
    ld e, h
    ld c, h
    ld h, c
    ld e, h
    ld [hl], c
    sbc h
    ld h, c
    ld a, a
    ld [hl], c
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld [hl], a
    sbc h
    ld [hl], a
    sbc h
    db $76
    db $76
    sbc h
    sbc h
    sbc h
    ld [hl], a
    sbc h
    ld [hl], a
    ld h, [hl]
    ei
    ld [hl], h
    ld [hl], l
    ei
    ei
    ld [hl], l
    ld [hl], l
    ei
    ld h, [hl]
    ld [hl], l
    ld [hl], h
    ld b, b
    ld l, d
    ld d, b
    ld l, e
    ld h, a
    ld h, a
    add c
    add c
    ld l, d
    ld b, c
    ld l, e
    ld d, c
    ld b, b
    ld l, b
    ld d, b
    ld a, b
    ld l, b
    ld b, c
    ld a, b
    ld d, c
    ld b, b
    ld b, c
    ld h, h
    ld h, l
    ld b, b
    ld b, c
    ld h, l
    ld h, l
    ld b, b
    ld b, c
    ld h, l
    ld h, h
    ld [hl], c
    ld a, a
    ld h, c
    sbc h
    ld [hl], c
    ld e, h
    ld h, c
    ld c, h
    ld e, h
    ld [hl], c
    ld c, h
    ld h, c
    ld a, a
    ld [hl], c
    sbc h
    ld h, c
    call nc, $c441
    ld d, c
    xor [hl]
    xor a
    cp [hl]
    cp a
    adc b
    adc b
    adc c
    adc c
    adc d
    adc d
    adc e
    adc e
    xor [hl]
    xor [hl]
    cp [hl]
    cp [hl]
    xor a
    xor a
    cp a
    cp a
    ld b, c
    sbc [hl]
    ld d, c
    sbc a
    sbc [hl]
    ld b, b
    sbc a
    ld d, b
    sub h
    sub l
    sub h
    sub l
    sub l
    sub h
    sub l
    sub h
    ret z

    ret


    ret c

    reti


    ret c

    reti


    ld d, b
    ld d, c
    ret z

    ret


    jp z, $cbcb

    jp z, Jump_017_5051

    ret nz

    pop bc
    ret nc

    pop de
    pop bc
    ret nz

    pop de
    ret nc

    add sp, -$17
    ld hl, sp-$07
    db $eb
    db $eb
    ld [$acea], a
    xor h
    cp h
    cp h
    xor l
    xor l
    cp l
    cp l
    adc e
    adc e
    adc e
    adc e
    ld b, b
    ld b, c
    jp c, $dada

    jp c, $5150

    ld b, b
    jp c, $da50

    jp c, $da41

    ld d, c
    jp c, Jump_017_5041

    ld d, c
    ld b, b
    jp c, $5150

    ld b, b
    ld b, c
    jp c, Jump_017_4051

    ld b, c
    ld d, b
    jp c, $dbdb

    dec hl
    inc l
    dec sp
    inc a
    ld d, b
    ld d, c
    ld a, [hl-]
    ld a, [hl-]
    ld d, b
    ld d, c
    dec sp

Call_017_6073:
    inc a
    ld a, [hl+]
    ld a, [hl+]
    ld [$1808], sp
    jr jr_017_6088

    rrca
    dec e
    rra
    push bc
    add $d5
    sub $c6
    rst $00
    sub $d7
    push bc
    rst $00

jr_017_6088:
    push de
    rst $10
    inc c
    dec bc
    inc e
    dec de
    ld c, $0e
    ld e, $1e
    dec c
    ld c, $1d
    ld e, $87
    add a
    add a
    add a
    add a
    ld b, l
    add a
    ld d, l
    or b
    or b
    or b
    or b
    ld b, b
    ld b, c
    db $db
    db $db
    jp nz, $d2c3

    db $d3
    inc h
    dec h
    inc [hl]
    dec [hl]
    xor h
    xor l
    cp h
    cp l
    jp nc, Jump_017_52d3

    ld d, e
    dec b
    ld b, $07
    inc d
    ld b, $05
    inc d
    rlca
    rlca
    inc d
    dec b
    ld b, $14
    rlca
    ld b, $05
    ld b, $06
    inc d
    inc d
    inc d
    rlca
    inc d
    rlca
    inc d
    inc d
    ld b, $06
    rlca
    inc d
    rlca
    inc d
    ld sp, $3121
    ld hl, $3121
    ld hl, $3231
    jr nc, jr_017_6112

    ld [hl+], a
    jr nc, jr_017_6116

    ld [hl+], a
    ld sp, $2231
    ld [hl-], a
    jr nc, jr_017_610d

    ld sp, $3230
    inc hl
    jr nz, jr_017_6112

    inc sp
    jr nz, jr_017_6117

    inc sp
    ld hl, $3321
    inc hl
    jr nz, jr_017_612e

    ld hl, $2320
    ld b, b
    ld b, c
    ld l, c
    ld l, c
    add b
    ld a, b

jr_017_6104:
    add b
    ld a, b
    ld l, c
    ld l, c
    ld d, b
    ld d, c
    ld a, b
    add b
    ld a, b

jr_017_610d:
    add b
    ld b, b
    ld b, c
    ld l, b
    ld l, c

jr_017_6112:
    ld b, b
    ld b, c
    ld l, c
    ld l, b

jr_017_6116:
    ld l, b

jr_017_6117:
    ld l, c
    ld d, b
    ld d, c
    ld l, c
    ld l, b
    ld d, b
    ld d, c
    jp c, $dada

    jp c, $2726

    ld [hl], $37
    call nz, $d441
    dec l
    ld b, b
    call nz, $d42e

jr_017_612e:
    ld e, h
    call nz, $d44c
    ld b, c
    ld b, b
    dec l
    ld l, $c4
    ld e, h
    call nc, Call_017_404c
    ld b, c
    ld l, $2d
    jr nc, jr_017_6104

    jr nz, jr_017_6116

    call nz, $d430
    jr nz, @+$42

    call nc, $c450
    call nz, $d4c3
    jp nz, $c3c2

Call_017_6150:
    jp $c2c2


    call nz, $d4c3
    sbc h
    sbc h
    db $10
    db $10
    cpl
    ccf
    cpl
    ccf
    cpl
    ccf
    ld l, d
    ld l, e
    cp d
    cp b
    cp e
    cp c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    sub b
    sub c
    add [hl]
    add [hl]
    add sp, -$16
    jp hl


    db $eb

Call_017_6172:
    add hl, de
    jr nc, jr_017_61a5

    add hl, de
    add hl, de
    add hl, de
    jr nc, jr_017_61aa

    jr nc, @+$32

    add hl, de
    add hl, de
    add hl, de
    jr nc, @+$1b

    jr nc, @+$32

    add hl, de
    jr nc, jr_017_619f

    jr nc, @+$1b

    add hl, de
    add hl, de
    add hl, de
    jr nc, jr_017_61a6

    add hl, de
    add hl, de
    add hl, de
    jr nc, jr_017_61ab

    add hl, de
    add hl, de
    add hl, de
    jr nc, jr_017_61a6

    ld c, $1f
    ld e, $2f
    ld l, $3f
    ld a, $2e

jr_017_619f:
    cpl
    ld a, $3f
    dec l
    inc c
    dec a

jr_017_61a5:
    inc e

jr_017_61a6:
    dec c
    dec l
    dec e
    dec a

jr_017_61aa:
    dec a

jr_017_61ab:
    ld sp, $3132
    inc a
    ld sp, $312c
    ld sp, $313c
    inc l
    ld [hl+], a
    ld [hl+], a
    ld hl, $3021
    add hl, de
    add hl, de
    jr nc, jr_017_623c

    ld a, l
    ld a, l
    ld a, l
    jp z, $dacb

    db $db
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    sbc h
    sbc h
    ld a, [hl]
    ld a, [hl]
    ld a, a
    sbc h
    ld a, a
    sbc h
    ld a, [hl]
    ld a, [hl]
    sbc h
    sbc h
    sbc h
    ld a, a
    sbc h
    ld a, a
    ld h, h
    ld h, h
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld h, l
    ld [hl], l
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, h
    ld h, h
    ld h, l
    ld [hl], l
    ld h, l
    ld [hl], l
    db $76
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld [hl], h
    db $76
    ld h, [hl]
    ld [hl], l
    ld [hl], l
    ld h, [hl]
    db $76
    ld [hl], h
    ld h, [hl]
    ld [hl], l
    ld [hl], h
    db $76
    ld h, a
    ld h, h
    ld h, l
    ld [hl], a
    ld h, h
    ld h, a
    ld [hl], a
    ld h, l
    ld h, l
    ld [hl], a
    ld h, a
    ld h, h
    ld [hl], a
    ld h, l
    ld h, h
    ld h, a
    call nz, $d4c5
    push de
    db $10
    ld de, $1312
    ret c

    reti


    ret z

    ret


    ld sp, $313d
    ld [hl-], a
    ld hl, $2121
    ld hl, $216e
    ld l, a
    rla
    ld hl, $186e
    ld l, a
    ld e, h
    ld l, h
    ld c, h
    ld l, l
    ld l, h
    ld e, h
    ld l, l
    ld c, h
    ld [hl], h
    ld l, [hl]
    ld h, h
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, a
    ld h, h
    ld l, [hl]
    ld b, b
    ld l, a
    ld [$6e40], sp

jr_017_623c:
    add hl, bc
    ld l, a
    ld b, b
    ld b, b
    ld [$1909], sp
    add hl, de
    rla
    jr jr_017_62b6

    ld l, a
    ld l, [hl]
    ld l, [hl]
    pop bc
    jp nz, $d2d1

    add hl, de
    add hl, de
    ld [$c709], sp
    rst $00
    rst $10
    rst $10
    ld h, $26
    ld h, $26
    jp nz, $c2c3

    jp $9c11


    ld de, $109c
    db $10
    sbc h
    sbc h
    sbc h
    ld de, $119c
    add sp, -$18
    inc d
    inc d
    inc d
    ld sp, hl
    inc d
    ld sp, hl
    inc d
    inc d
    add sp, -$18
    ld sp, hl
    inc d
    ld sp, hl
    inc d
    ld [hl], $4c
    add hl, hl
    jr z, @+$4e

    ld c, h
    jr z, jr_017_62de

    add hl, sp
    jr c, jr_017_62d5

    ld d, c
    jr c, jr_017_629c

    inc d
    inc d
    dec [hl]
    inc [hl]
    ld d, b
    ld d, c
    ld b, b
    ld h, $50
    ld [hl], $4c
    sbc e
    ld e, h
    sbc e
    sbc e
    ld c, h
    sbc e
    ld e, h
    ld a, [hl+]
    dec hl

jr_017_629c:
    ld a, [hl-]
    sbc b
    dec hl
    ld a, [hl+]
    sub [hl]
    ld a, [hl-]
    inc l
    dec l
    inc a
    sbc e
    dec l
    inc l
    sbc e
    inc a
    ld c, a
    ld c, h
    ld c, l
    jr z, jr_017_62fd

    jr c, jr_017_630d

    ld e, [hl]
    ld c, h
    ld c, h
    ld a, $3f

jr_017_62b6:
    sbc e
    sbc c
    sbc e
    sub [hl]
    ld e, e
    ld e, e
    ld c, h
    ld c, h
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    inc h
    dec h
    rla
    rla
    jr nz, jr_017_62e9

    jr nc, jr_017_62fb

    jr nc, jr_017_62fd

    rla
    rla
    call nz, $d441
    ld [$c440], a
    db $eb

jr_017_62d5:
    call nc, $14c4
    call nc, $14ea
    call nz, $d4eb

jr_017_62de:
    ld h, c
    ld h, b
    ld h, e
    ld h, d
    ld l, c
    ld l, b
    ld l, e
    ld l, d
    ld l, h
    ld l, l
    ld l, [hl]

jr_017_62e9:
    ld l, a
    ld l, l
    ld l, h
    ld l, a
    ld l, [hl]
    inc d
    inc d
    ld [$82eb], a
    add d
    add d
    add d
    add e
    add e
    add e
    add e
    add b

jr_017_62fb:
    adc c
    adc c

jr_017_62fd:
    add b
    add c
    adc d
    xor [hl]
    xor [hl]
    cp $fe
    adc c
    add b
    xor [hl]
    xor [hl]
    adc c
    add b
    add c
    xor l
    xor [hl]

jr_017_630d:
    xor a
    xor l
    adc d
    xor a
    xor [hl]
    ld a, a
    adc c
    ld a, [hl]
    ld a, a
    ld a, [hl]
    adc c
    adc c
    ld a, a
    ld a, a
    adc c
    push hl
    ld a, a
    ld a, a
    rst $20
    ld a, [hl]
    ld a, a
    add c
    xor a
    xor a
    push hl
    db $e4
    adc c
    db $e4
    ld a, [hl]
    add b
    db $e4
    adc c
    db $e4
    add b
    adc c
    and $e6
    add sp, -$18
    adc c
    ld a, [hl]
    ld e, b
    ld e, c
    ld l, b
    ld l, c
    ld e, d
    ld e, e
    ld l, d
    ld l, e
    add b
    dec hl
    add b
    dec sp
    inc l
    dec l
    inc a
    dec a
    ld l, e
    or $20
    ld de, $03f7
    ld [de], a
    inc de
    inc b
    dec b
    inc d
    dec d
    ld b, $07
    ld d, $17
    ld [$1836], sp
    add hl, de
    inc c
    dec c
    inc e
    dec e
    xor c
    ld a, l
    nop
    ldh [$7d], a
    ld hl, sp-$20
    nop
    call nc, $f8d5
    ld a, l
    sub $d7
    xor c
    ld a, l
    db $e3
    ld [c], a
    ld [bc], a
    ld bc, $dbda
    ld a, l
    ld hl, sp-$24
    db $dd
    ld a, l
    ld hl, sp-$22
    sbc $7d
    ld hl, sp-$7e
    ld hl, $3130
    ld h, $27
    add e
    scf
    jr z, jr_017_63b1

    jr c, jr_017_63c3

    ld a, [hl+]
    jr z, jr_017_63c7

    jr c, @+$29

    ld h, $37
    add e
    dec h
    inc h
    dec [hl]
    inc [hl]
    ld a, [$fbfb]
    ld a, [$f7f6]
    ei
    ld a, [$d1d0]
    ld hl, sp+$7d
    jp nc, $a9d3

    ld a, l
    ld [c], a
    db $e3
    ld [bc], a
    ld bc, $7372
    ld a, l
    ld hl, sp+$74
    ld [hl], l
    ld a, l

jr_017_63b1:
    ld hl, sp+$76
    ld [hl], a
    ld a, l
    ld hl, sp+$46
    add e
    ld d, [hl]
    add e
    ld c, b
    ld c, c
    add e
    add e
    ld c, d
    ld c, b
    add e
    add e
    add e

jr_017_63c3:
    ld b, [hl]
    add e
    ld d, [hl]
    ld b, l

jr_017_63c7:
    ld b, h
    ld d, l
    ld d, h
    nop
    ldh [rP1], a

Call_017_63cd:
    ldh [$e0], a
    nop
    ldh [rP1], a
    call nc, $c4d5
    push bc
    sub $d7
    add $c7
    jp c, $cadb

    set 3, h
    db $dd
    call z, $decd
    sbc $ce
    rst $08
    ld h, b
    ld h, c
    ldh a, [$f1]
    ld h, d
    ld h, e
    ld a, [c]
    di
    ld h, h
    add e
    db $f4
    add e
    add e
    add e
    ld h, [hl]
    ld h, a
    ld b, a
    add c
    add c
    ld a, c
    add c
    add c
    ld a, d
    ld a, e
    add e
    ld h, h
    ld h, h
    db $f4
    nop
    pop hl
    db $10
    ld bc, $00e1
    ld [bc], a
    db $10
    ret nc

    pop de
    call nz, $d2c5
    db $d3
    add $c7
    ld [hl], b
    ld [hl], c
    ret z

    ret


    ld [hl], d
    ld [hl], e
    jp z, Jump_017_74cb

    ld [hl], l
    call z, Call_017_76cd
    ld [hl], a
    adc $cf
    ld e, h
    ld e, l
    ld l, h
    ld l, l
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld d, a
    add c
    ld c, h
    ld c, l
    add c
    add c
    ld c, [hl]
    ld c, a
    ld h, e
    ld h, d
    di
    ld a, [c]
    ld h, c
    ld h, b
    pop af
    ldh a, [rP1]
    ld a, l
    db $10
    db $10
    ld a, l
    nop
    db $10
    db $10
    call nc, $d0d5
    pop de
    ld [hl], d
    ld [hl], e
    xor c
    ld a, l
    add e
    add e
    ld c, $0f
    ld a, h
    ld c, e
    add b
    add b
    ld a, [hl]
    ld a, a
    add b
    add b
    and a
    xor b
    xor d
    xor d
    xor b
    and a
    xor d
    xor d
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld hl, $3182
    jr nc, jr_017_64c6

    ld e, [hl]
    ld l, a
    ld l, [hl]
    ld e, l
    ld e, h
    ld l, l
    ld l, h
    ld [c], a
    ld [c], a
    ld [bc], a
    ld bc, $a5a4
    and b
    inc bc
    ret nc

    pop de
    inc b
    dec b
    ld de, $813e
    ld h, a
    add b
    ld [$8080], a
    db $eb
    db $ec
    add b
    db $fc
    db $76
    ld [hl], a
    ld c, $0f
    and l
    and h
    inc e
    and e
    rst $38
    add l
    sub h
    sub l
    ld b, $07
    xor [hl]
    xor [hl]
    ld e, h
    add l
    sub h
    sub l
    ld b, e
    ld b, d
    ld d, e
    ld d, d
    ld a, a
    ld a, [hl]
    add b
    add b
    ld c, e
    ld a, h
    add b
    add b
    xor [hl]
    xor [hl]
    jr nz, jr_017_64cb

    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    inc d
    dec d
    inc h
    dec h
    ld d, $17
    ld h, $27
    db $ed
    xor $fd
    add b
    rst $28
    add b
    add b
    add b
    ld [hl], h
    ld [hl], l
    inc l
    dec l
    ld e, $1f
    ld l, $2f

jr_017_64c6:
    ld [$8212], sp
    dec e
    xor [hl]

jr_017_64cb:
    xor [hl]
    inc c
    dec c
    add [hl]
    ld e, h
    sub [hl]
    sub h
    rlca
    ld b, $ae
    xor [hl]
    add c
    scf
    adc d
    ldh a, [$78]
    ld a, c
    pop af
    ld a, [c]
    ld a, d
    ld a, e
    di
    db $f4
    ld a, h
    add c
    push af
    adc d
    jr nc, jr_017_6519

    ld b, b
    ld b, c
    ld [hl-], a
    inc sp
    ld b, d
    ld b, e
    inc [hl]
    dec [hl]
    ld b, h
    ld b, l
    ld [hl], $82
    ld b, [hl]
    ld b, a
    ld [hl], b
    ld [hl], c
    ld c, b
    ld c, c
    ld [hl], d
    ld [hl], e
    ld c, d
    ld c, e
    add d
    ccf
    ld c, [hl]
    ld c, a
    ld a, [bc]
    dec bc
    jr jr_017_651f

    add d
    add d
    ld a, [de]
    dec de
    add h
    add l
    sub h
    sub l
    add [hl]
    add h
    sub [hl]
    sub h
    add a
    adc b
    sub a
    sbc b
    adc b
    add a
    sbc c

jr_017_6519:
    sbc d
    ld d, b
    ld d, c
    ld h, b
    ld h, c
    ld d, d

jr_017_651f:
    ld d, e
    ld h, d
    ld h, e
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, a
    add c
    ld h, a
    ld e, b
    ld e, c
    ld l, b
    add b
    add e
    ld e, l
    ld l, h
    ld l, l
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    dec sp
    and h
    and l
    and b
    and c
    and l
    and h
    and d
    and e
    and [hl]
    add l
    sub h
    sub l
    add [hl]
    and [hl]
    sub [hl]
    sub h
    adc e
    adc h
    sbc e
    sbc h
    xor e
    xor h
    sbc e
    sbc h
    xor e
    xor h
    sbc l
    sbc [hl]
    adc e
    adc h
    sbc l
    sbc [hl]
    adc a
    adc a
    sbc a
    sbc a
    sub b
    sub d
    sub c
    sub e
    jp hl


    jp hl


    adc l
    adc [hl]
    add hl, bc
    add hl, bc
    ld sp, hl
    ld sp, hl
    jp hl


    jp hl


    ld sp, hl
    ld sp, hl
    inc a
    dec a
    ld c, h
    ld c, l
    xor l
    adc d
    xor l
    add c
    add c
    xor l
    adc d
    xor l
    xor [hl]
    xor [hl]
    adc d
    add c
    xor a
    xor [hl]
    xor l
    add c
    xor [hl]
    xor a
    adc d
    xor l
    add b
    adc c
    xor a
    xor [hl]
    add b
    adc c
    xor [hl]
    xor a
    add c
    adc d
    adc d
    add c
    and h
    cp d
    and b
    jp z, $bcbb

    set 1, h
    cp l
    cp [hl]
    call $bfce
    and h
    rst $08
    and e
    ld c, l
    xor l
    ld e, l
    xor l
    inc bc
    inc b
    inc de
    inc d
    dec b
    ld b, $15
    ld d, $07
    ld [$1817], sp
    add hl, bc
    ld a, [bc]
    add hl, de
    ld a, [de]
    xor [hl]
    or d
    pop bc
    jp nz, $b4b3

    jp $b5c4


    or [hl]
    push bc
    add $b7
    xor [hl]
    rst $00
    ret z

    ld [bc], a
    xor l
    ld [de], a
    xor l
    xor a
    xor [hl]
    ld sp, $2332
    inc h
    inc sp
    inc [hl]
    dec h
    ld h, $35
    ld [hl], $27
    jr z, jr_017_660c

    jr c, jr_017_6600

    ld a, [hl+]
    add hl, sp
    ld a, [hl-]
    xor [hl]
    xor a
    dec sp
    inc a
    add c
    ret nc

    adc d
    ldh [$d1], a
    jp nc, $e2e1

    db $d3
    call nc, $e4e3
    push de
    sub $e5
    and $d7
    ret c

    rst $20
    add sp, -$27
    adc d
    jp hl


    add c
    xor l
    ld b, b
    xor l
    ld d, b
    ld b, c
    ld b, d
    ld d, c
    ld d, d
    ld b, e
    ld b, h

Jump_017_6600:
jr_017_6600:
    ld d, e
    ld d, h
    ld b, l
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld b, a
    ld c, b
    ld d, a
    ld e, b
    ld c, c
    ld c, d

jr_017_660c:
    ld e, c
    ld e, d
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    add c
    ldh a, [$8a]
    add c
    pop af
    ld a, [c]
    adc d
    add c
    di
    db $f4
    or b
    or c
    push af
    or $b8
    cp c
    rst $30
    ld hl, sp-$76
    add c
    ld sp, hl
    adc d
    adc d
    add c
    xor l
    jp c, $eaad

    db $db
    call c, $eceb
    db $dd
    sbc $ed
    xor $df
    dec bc
    rst $28
    dec de
    nop
    ld bc, $1110
    rst $38
    dec hl
    ld a, [$2cfb]
    dec l
    db $fc
    db $fd
    ld l, $8a
    adc d
    add c
    db $e4
    rst $38
    rst $20
    add sp, -$01
    db $e4
    add sp, -$19
    push hl
    and $e4
    rst $38
    and $e5
    rst $38
    db $e4
    ld a, [$f9fa]
    ld sp, hl
    dec bc
    inc c
    dec de
    add b
    inc c
    inc c
    and e
    add b
    inc c
    dec bc
    and e
    dec de
    dec de
    and e
    dec de
    add b
    add b
    dec de
    and e
    dec de
    dec de
    and e
    inc e
    dec e
    add b
    and e
    dec e
    dec e
    add b
    dec de
    dec e
    inc e
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    call z, $cccc
    call z, $dbdb
    db $db
    db $db
    ld c, $0e
    ld c, $0e
    ld e, $1e
    ld e, $1e
    rrca
    ld e, $0e
    add c
    ld e, $1e
    dec c
    add c
    ld e, $0f
    dec c
    ld c, $0e
    dec c
    ld c, $81
    add c
    ld c, $0d
    ld c, $80
    and e
    and e
    and d
    add b
    and e
    and d
    add b
    add b
    sbc b
    and e
    xor b
    sbc c
    sbc d
    xor c
    xor d
    sbc b
    and e
    xor e
    add b
    add b
    cp b
    and e
    add b
    cp c
    cp d
    ret


    jp z, $a3bb

    and e
    add b
    rlca
    call z, $cc07
    call z, $cc07
    rlca
    rlca
    and e
    rlca
    add b
    add b
    rlca
    and e
    rlca
    add hl, de
    add hl, de
    call z, $19cc
    add hl, de
    and e
    add b
    call c, $dcdc
    call c, $a380
    ld e, [hl]
    ld e, a
    cp a
    cp a
    rst $08
    rst $08
    rst $08
    rst $08
    rst JumpTable
    rst JumpTable
    cp a
    cp a
    rst JumpTable
    rst JumpTable
    ld de, $0502
    ld d, $02
    ld de, $0517
    rlca
    inc de
    rlca
    ld [de], a
    inc de
    rlca
    ld [de], a
    rlca
    jr @+$1b

    rlca
    ld de, $1819
    ld de, $0707
    inc de
    dec d
    ld [de], a
    inc de
    rlca
    ld [de], a
    dec d
    ld b, b
    ld b, c
    db $fc
    db $fd
    ld b, d
    ld b, e
    cp $ff
    rlca
    ld bc, $1715
    ld [bc], a
    nop
    add hl, bc
    inc de
    nop
    ld [bc], a
    inc de
    add hl, bc
    ld bc, $1607
    dec d
    dec b
    rla
    dec b
    ld d, $16
    dec b
    rla
    dec b
    rlca
    inc bc
    rlca
    inc de
    inc bc
    rlca
    inc de
    rlca
    rlca
    ld de, $1605
    ld de, $1707
    dec b
    jr jr_017_6747

    rlca
    inc de
    inc bc

jr_017_6747:
    jr jr_017_675c

    rlca
    cp h
    sbc h
    xor h
    call z, $bc9c
    call z, $9bac
    set 1, e
    sbc e
    dec b
    rla
    dec d
    ld d, $16
    dec b

jr_017_675c:
    rla
    dec d
    ld d, $17
    rla
    ld d, $11
    ld [bc], a
    dec d
    ld d, $02
    ld de, $1517
    ld de, $1702
    ld d, $02
    ld de, $1617
    rlca
    ld [de], a
    dec b
    ld d, $12
    rlca
    rla
    dec b
    rlca
    ld [de], a
    dec b
    dec b
    ld [de], a
    rlca
    dec b
    dec b
    xor h
    call z, $ccac
    call z, $ccac
    xor h
    sbc h
    sbc h
    call z, $18cc
    add hl, de
    ld de, $1902
    jr @+$04

    ld de, $b3b2
    jp nz, $19c3

    add hl, de
    ld de, $1902
    add hl, de
    ld [bc], a
    ld de, $1906
    rlca
    ld bc, $0619
    ld bc, $0907
    inc bc
    rlca
    inc de
    inc bc
    add hl, bc
    inc de
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec d
    dec d
    xor h
    call z, $9cbc
    call z, $9cac
    cp h
    call z, $9ccc
    sbc h
    ldh a, [$f1]
    db $f4
    push af
    ld a, [c]
    di
    or $f7
    ld a, [c]
    ei
    or $f7
    ret nc

    pop de
    call nc, $d2d5
    db $d3
    sub $d7
    ldh [$e1], a
    db $e4
    push hl
    ld [c], a
    db $e3
    and $e7
    inc a
    inc a
    ld c, l
    ld e, l
    inc a
    dec a
    ld c, l
    add b
    ld a, $3d
    add b
    add b
    adc d
    adc e
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc d
    adc e
    adc e
    adc d
    adc [hl]
    adc l
    adc [hl]
    adc l
    adc e
    adc d
    adc [hl]
    adc e
    adc h
    adc [hl]
    ld hl, sp-$07
    db $fc
    db $fd
    ld a, [$fef8]
    rst $38
    ei
    pop af
    db $f4
    push af
    ret c

    reti


    db $ec
    db $ed
    jp c, $eed8

    rst $28
    add sp, -$17
    db $ec
    db $ed
    ld [$eeeb], a
    rst $28
    ld e, l
    ld c, l
    ld c, l
    ld e, l
    ld e, l
    add b
    ld c, l
    add b
    add b
    ld c, l
    add b
    ld e, l
    ld a, $3c
    add b
    ld e, l
    inc l
    dec l
    ld a, [hl-]
    dec sp
    ld l, $2d
    dec hl
    dec sp
    ld l, $2c
    dec hl
    ld a, [hl+]
    ld c, b
    ld c, c
    ld e, b
    ld e, c
    ld c, [hl]
    ld c, a
    ld e, [hl]
    ld e, a
    inc [hl]
    inc h
    inc h
    dec h
    inc [hl]
    inc h
    dec [hl]
    dec [hl]
    add b
    ld hl, $31a3
    ld c, d
    ld c, d
    ld e, d
    ld e, d
    ld c, h
    ld c, e
    ld e, h
    ld e, h
    ld c, h
    ld c, d
    ld e, e
    ld e, d
    dec sp
    dec hl
    dec hl
    dec sp
    dec sp
    ld a, [hl-]
    dec hl
    ld a, [hl+]
    ld h, c
    ld h, d
    ld [hl], b
    ld h, b
    ld h, d
    ld h, c
    ld h, b
    ld [hl], b
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld h, h
    ld h, l
    ld [hl], e
    ld h, e
    ld h, l
    ld h, l
    ld h, e
    ld h, e
    ld h, l
    ld h, h
    ld h, e
    ld [hl], e
    ld [hl], b
    ld h, b
    ld [hl], c
    ld h, a
    ld h, b
    ld h, b
    ld l, b
    ld l, c
    ld h, b
    ld [hl], b
    ld l, d
    ld [hl], c
    ld l, h
    ld l, l
    ld a, h
    ld a, l
    ld l, l
    ld l, h
    ld a, l
    ld a, h
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], b
    ld h, b
    ld [hl], c
    ld [hl], d
    adc h
    adc l
    adc h
    adc l
    ld h, b
    ld [hl], b
    ld [hl], d
    ld [hl], c
    ld h, b
    ld h, b
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld h, e
    ld [hl], h
    ld [hl], l
    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], l
    ld h, e
    ld [hl], e
    ld [hl], l
    ld [hl], h
    ld l, e
    ld l, e
    ld a, e
    ld a, e
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld a, a
    ld l, a
    ld l, [hl]
    ld a, a
    ld a, [hl]
    sub h
    sub [hl]
    sub l
    sub a
    ccf
    ccf
    inc h
    dec h
    cpl
    cpl
    inc h
    dec h
    call z, $17cc
    ld d, $80
    and e
    rla
    ld d, $1f
    rra
    rra
    rra
    adc h
    adc h
    adc h
    adc h
    adc l
    adc l
    adc l
    adc l
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc a
    adc a
    adc a
    adc a
    ld l, b
    ld l, c
    ld a, b
    ld a, c
    and b
    and b
    and c
    and c
    ld b, b
    jr nz, jr_017_691d

    ld d, c
    add hl, hl
    add hl, hl
    add hl, sp
    add hl, sp
    or b
    or c
    ret nz

    pop bc
    cp h
    cp h
    cp h
    cp h
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    sbc a
    sbc a
    xor a
    xor a
    sbc [hl]
    sbc [hl]
    xor [hl]
    xor [hl]
    sbc $de
    adc $ce
    cp [hl]
    cp [hl]
    adc $ce
    call nz, $c5c4
    push bc
    db $dd
    db $dd
    db $dd
    db $dd
    jr z, jr_017_6940

    jr c, jr_017_6952

    sbc l
    sbc l
    xor l

jr_017_691d:
    xor l
    inc b
    inc b
    inc d
    inc d
    add h
    add [hl]
    add l
    add a
    adc c
    adc c
    adc c
    adc c
    ld l, d
    ld l, c
    ld a, d
    ld a, c
    ld l, c
    ld l, d
    ld a, c
    ld a, d
    adc b
    adc b
    adc b
    adc b
    ld h, h
    ld h, l
    ld a, c
    ld h, a
    ld l, d
    ld l, d
    ld l, b
    ld l, c
    ld h, l
    ld h, h

jr_017_6940:
    ld h, a
    ld a, c
    ld h, h
    ld h, l
    ld a, c
    add c
    ld h, l
    ld h, l
    add c
    add c
    ld h, l
    ld h, h
    add c
    ld a, c
    inc bc
    inc bc
    ld [de], a
    ld [de], a

jr_017_6952:
    rlca
    ld [de], a
    dec d
    ld d, $79
    ld [hl], a
    ld [hl], h
    ld [hl], l
    ld a, b
    ld a, b
    ld [hl], l
    ld [hl], l
    ld [hl], a
    ld a, c
    ld [hl], l
    ld [hl], h
    ld a, c
    add c
    ld [hl], h
    ld [hl], l
    add c
    add c
    ld [hl], l
    ld [hl], l
    add c
    ld a, c
    ld [hl], l
    ld [hl], h
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld a, d
    ld a, d
    ld a, [de]
    ld a, [de]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, e
    ld a, d
    ld h, c
    ld h, d
    ld a, e
    ld a, d
    ld h, e
    ld h, h
    ld a, e
    ld a, d
    ld h, h
    ld h, e
    ld a, e
    ld a, d
    ld h, d
    ld h, c
    ld [hl], l
    db $76
    ld h, a
    ld l, b
    ld a, e
    ld a, d
    ld l, c
    ld a, e
    ld a, e
    ld a, d
    ld a, d
    ld l, c
    db $76
    ld [hl], l
    ld l, b
    ld h, a
    ld [hl], c
    ld [hl], d
    ld a, d
    ld a, e
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, [hl]
    ld [hl], h
    ld [hl], e
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], c
    ld a, d
    ld a, e
    ld [hl], a
    ld a, b
    ld a, d
    ld a, e
    ld a, c
    ld a, d
    ld a, d
    ld a, e
    ld a, e
    ld a, c
    ld a, d
    ld a, e
    ld a, b
    ld [hl], a
    ld a, d
    ld a, e
    ld a, e
    ld a, d
    ld a, d
    ld a, e
    ld h, [hl]
    ld h, a
    ld h, b
    ld h, c
    ld l, d
    ld l, e
    ld h, h
    ld h, l
    call z, $cccc
    ld a, b
    call z, Call_017_79cc
    ld a, d
    call z, Call_017_7bcc
    call z, Call_017_7372
    ld l, h
    ld l, l
    ld [hl], h
    ld [hl], l
    ld l, [hl]
    ld l, a
    db $76
    ld [hl], a
    ld [hl], b
    ld [hl], c
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld l, b
    ld l, c
    ld h, d
    ld h, e
    ld h, c
    ld h, b
    ld [hl], c
    add c
    ld h, b
    ld h, b
    ld [hl], b
    add c
    ld [hl], c
    ld [hl], b
    ld [hl], c
    add c
    add c
    ld [hl], c
    ld [hl], b
    ld [hl], c
    add c
    ld [hl], b
    ld [hl], b
    ld [hl], d
    add c
    ld [hl], b
    ld [hl], d
    add c
    add c
    ld [hl], b
    ld [hl], b
    add c
    jr jr_017_6a21

    rlca
    ld h, h
    ld l, a
    ld l, a
    ld a, a
    ld a, a
    add hl, de
    add hl, de
    ld h, l
    ld h, l
    add hl, de
    jr jr_017_6a79

    rlca
    ld l, l
    ld l, [hl]
    ld l, h
    ld a, c
    ld l, [hl]
    ld l, l
    ld a, c
    ld l, h
    ld [hl], c
    ld [hl], b
    ld h, e

jr_017_6a21:
    ld h, d
    add c
    ld [hl], b
    ld h, d
    ld h, d
    add c
    ld [hl], c
    ld h, d
    ld h, e
    db $76
    ld [hl], a
    ld a, d
    ld a, e
    ld [hl], a
    db $76
    ld a, e
    ld a, d
    add c
    ld [hl], d
    ld [hl], b
    add c
    ld [hl], d
    ld [hl], b
    ld [hl], b
    add c
    rlca
    ld [hl], h
    dec b
    ld d, $75
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld [hl], e
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, a
    ld h, [hl]
    ld [hl], h
    rlca
    rla
    dec b
    ld l, h
    ld a, c
    ld a, l
    ld a, [hl]
    ld a, c
    ld a, c
    ld a, [hl]
    ld a, [hl]
    ld a, c
    ld l, h
    ld a, [hl]
    ld a, l
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld h, d

Call_017_6a5f:
    ld h, e
    ld [hl], l
    ld h, l
    ld h, e
    ld h, d
    ld h, l
    ld [hl], l
    ld l, [hl]
    ld l, l
    ld a, [hl]
    ld a, l
    ld l, l
    ld l, [hl]
    ld a, l
    ld a, [hl]
    ld d, $05
    rla
    ld d, $05
    rla
    rla
    ld d, $75
    ld h, l
    ld [hl], d

jr_017_6a79:
    ld [hl], e
    ld h, l
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], l
    ld [hl], e
    ld [hl], d
    ld l, b
    ld h, a
    ld a, b
    ld [hl], a
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    ld l, e
    ld l, e
    inc l
    dec l
    ld l, e
    ld l, h
    ld a, e
    ld a, h
    ld l, h
    ld l, e
    ld a, h
    ld a, e
    ld h, [hl]
    ld l, h
    ld a, e
    ld a, h
    ld h, l
    ld h, l
    ld [hl], l
    ld [hl], l
    ld h, d
    ld l, h
    ld a, e
    ld a, h
    ld l, h
    ld h, d
    ld a, h
    ld a, e
    ld l, l
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld l, [hl]
    ld l, l
    ld [hl], h
    ld [hl], e
    ld l, h
    ld h, [hl]
    ld a, h
    ld a, e
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld l, [hl]
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld h, c
    ld h, c
    ld h, e
    ld h, e
    ld [hl], h
    add c
    ld h, e
    ld h, d
    add c
    ld l, d
    ld h, d
    ld h, e
    ld l, d
    add c
    ld h, e
    ld h, e
    add c
    ld [hl], h
    ld l, l
    ld h, [hl]
    ld a, l
    db $76
    add b
    and e
    ld h, c
    add b
    add b
    and e
    ld h, c
    ld h, c
    ld h, c
    and e
    and e
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, h
    ld h, l
    ld a, b
    ld a, c
    ld l, d
    add c
    ld [hl], d
    ld [hl], e
    add c
    ld [hl], l
    ld [hl], e
    ld [hl], e
    ld [hl], l
    add c
    ld [hl], e
    ld [hl], e
    add c
    ld l, d
    ld [hl], e
    ld [hl], d
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld l, h
    ld h, a
    ld a, h
    ld [hl], a
    ld a, d
    ld l, e
    ld h, c
    ld h, c
    ld l, e
    ld l, e
    ld h, c
    ld h, c
    ld l, e
    ld a, e
    ld h, c
    ld h, c
    ld h, [hl]
    ld l, [hl]
    db $76
    ld a, [hl]
    ld h, a
    ld l, a
    ld [hl], a
    ld a, a
    jr nz, jr_017_6b35

    and e
    ld sp, $6261
    add e
    add e
    ld [hl], c
    ld [hl], c
    add e
    add e
    ld h, d
    ld h, c
    add e
    add e
    add c
    add c
    ld h, b
    add c
    add c
    add c
    ld h, b
    ld [hl], b
    add c
    add c
    add c
    ld [hl], b
    nop
    ld de, $0913
    dec b
    dec b
    dec b

jr_017_6b35:
    ld d, $81
    ld [hl], b
    ld h, b
    add b
    ld h, b
    add c
    add b
    ld [hl], b
    dec b
    rla
    dec b
    ld h, l
    ld d, $17
    ld h, [hl]
    ld h, [hl]
    ld d, $05
    ld h, l
    dec b
    ld [hl], d
    add e
    adc [hl]
    adc a
    add e
    add e
    adc [hl]
    adc a
    add e
    ld [hl], d
    adc [hl]
    adc a
    ld d, $15
    rla
    ld d, $63
    ld h, h
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], d
    add e
    add e
    ld [hl], l
    ld [hl], l
    db $76
    db $76
    ld [hl], d
    ld [hl], d
    inc l
    dec l
    add b
    cp b
    and d
    add b
    cp e
    and e
    and e
    and d
    ld l, a
    ld h, a
    db $76
    ld [hl], a
    ld h, c
    ld h, b
    ld [hl], c
    ld [hl], b
    ld l, e
    ld l, d
    ld [hl], d
    ld [hl], e
    ld l, d
    ld l, e
    ld l, [hl]
    add c
    ld l, l
    ld l, l
    ld a, l
    ld a, l
    ld l, e
    ld l, d
    add c
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, a
    ld l, a
    ld [hl], a
    db $76
    ld [hl], e
    ld l, a
    ld a, d
    ld [hl], h
    ld h, d
    ld h, e
    ld a, e
    ld a, e
    ld h, h
    ld l, [hl]
    ld [hl], h
    ld a, d
    ld l, c
    ld l, b
    ld a, c
    ld a, b
    ld l, [hl]
    add c
    ld a, d
    ld a, e
    add c
    add c
    ld a, e
    ld a, e
    add c
    ld l, [hl]
    ld a, e
    ld a, d
    ld de, $0511
    ld d, $11
    ld de, $0505
    ld a, [hl]
    ld a, [hl]
    add e
    add e
    ld a, [hl]
    ld a, [hl]
    inc l
    dec l
    ld h, l
    adc c
    ld [hl], l
    adc c
    adc c
    ld h, l
    adc c
    ld [hl], l
    add b
    add b
    ld c, [hl]
    ld c, a
    add b
    add b

Call_017_6bcc:
    add b
    ld b, e
    add b
    ld a, c
    ld b, h
    ld b, l
    ld a, d
    ld a, e
    ld b, [hl]
    ld b, a
    ld a, e
    ld a, d
    ld b, a
    ld b, [hl]
    ld a, c
    add b
    ld b, l
    ld b, h
    add b
    add b
    ld b, e
    add b
    ld h, b
    add c
    ld [hl], b
    add c
    add c
    add c
    ld [hl], d
    add c
    ld l, c
    add d
    ld d, l
    ld d, h
    add c
    add c
    add c
    ld [hl], d
    add c
    ld h, b
    add c
    ld [hl], b
    add b
    add b
    add b
    ld h, c
    ld d, d
    ld d, e
    ld h, d
    add c
    ld d, e
    ld d, d
    add c
    ld h, d
    add b
    add b
    ld h, c
    add b
    add c
    add c
    adc b
    adc c
    add c
    ld c, h
    adc d
    adc e
    ld c, h
    add c

Jump_017_6c10:
    adc e
    adc d
    add c
    add c
    adc c
    adc b
    ld c, e
    ld c, d
    ld e, e
    ld e, d
    ld c, c
    ld c, b
    ld e, c
    ld e, b
    add b
    ld [hl], c
    ld d, b
    ld d, c
    add c
    ld l, b
    add c
    ld a, b
    ld l, b
    add c
    ld a, b
    add c
    add c
    ld h, e
    add c
    ld [hl], e
    ld h, e
    add c
    ld [hl], e
    add c
    ld [hl], c
    add b
    ld d, c
    ld d, b
    add d
    ld l, c
    ld d, h
    ld d, l
    ld l, d
    ld l, e
    ld d, [hl]
    ld d, a
    adc h
    adc l
    ld a, h
    ld a, l
    adc [hl]
    adc a
    ld a, [hl]
    ld a, a
    adc a
    adc [hl]
    ld a, a
    ld a, [hl]
    adc l
    adc h
    ld a, l
    ld a, h
    ld l, e
    ld l, d
    ld d, a
    ld d, [hl]
    rlca
    ld [de], a
    dec d
    dec d
    ld [de], a
    rlca
    dec d
    dec d
    ld a, b
    ld [hl], a
    ld l, e
    ld l, d
    ld a, [$66f8]
    ld h, l
    ld a, [$65f8]
    ld h, [hl]
    ld hl, sp-$07
    add hl, de
    add hl, de
    ld a, [$06f8]
    add hl, de
    ld a, [$19f8]
    ld b, $7b
    call z, $cccc
    ld [de], a
    rlca
    rla
    dec d
    ld a, d
    ld a, c
    call z, Call_017_77cc
    ld a, b
    ld l, d
    ld l, e
    ld a, c
    ld a, d
    call z, $07cc
    ld bc, $1307
    ld bc, $1307
    rlca
    call z, $cc7b
    call z, Call_017_7075
    ld [hl], l
    add c
    add c
    ld [hl], l
    ld [hl], b
    ld [hl], l
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld h, e
    ld h, d
    add c
    ld [hl], l
    ld h, d
    ld h, e
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld h, b
    ld h, l
    ld [hl], d
    ld [hl], l
    ld h, l
    ld h, b
    ld [hl], l
    add c
    ld h, b
    ld h, l
    ld [hl], b
    ld [hl], l
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], l
    add hl, bc
    inc bc
    rlca
    ld [de], a
    ld h, a
    ld h, a
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, a
    ld h, a
    ld a, a
    jr jr_017_6ce5

    rlca
    inc bc
    ld h, a
    ld a, a
    ld h, a
    ld a, a
    ld h, a
    ld a, a
    ld l, [hl]
    ld a, a
    add hl, de
    jr jr_017_6cdc

    rlca
    add e
    add e

jr_017_6cdc:
    ld [hl], a
    ld [hl], a
    ld a, e
    rlca
    ld l, e
    rlca
    jr jr_017_6cfd

    rlca

jr_017_6ce5:
    ld l, b
    ld a, c
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld l, l
    ld l, h
    ld a, a
    ld a, h
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld l, h
    ld l, l
    ld a, h
    ld a, a
    add hl, de
    jr jr_017_6d61

    rlca
    ld a, c
    ld h, [hl]
    ld a, b

jr_017_6cfd:
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld h, [hl]
    ld a, c
    rlca
    ld a, e
    rlca
    ld a, e
    ld a, e
    rlca
    ld a, e
    rlca
    ld l, b
    rlca
    rla
    dec b
    rlca
    ld l, b
    dec b
    ld d, $63
    ld h, e
    ld [hl], e
    ld [hl], e
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld a, c
    add hl, de
    add hl, de
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    rla
    ld d, $79
    ld h, [hl]
    ld a, b
    db $76
    ld h, [hl]
    ld l, h
    db $76
    ld a, c
    ld l, [hl]
    ld l, a
    ld l, e
    ld a, e
    ld h, l
    ld h, [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    ld h, l
    db $76
    ld [hl], l
    ld l, b
    ld h, h
    ld a, b
    ld [hl], h
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld l, e
    ld h, a
    ld a, e
    ld l, b
    ld h, a
    ld l, e
    ld l, b
    ld a, e
    ld l, [hl]
    ld h, l
    ld [hl], h
    ld [hl], l
    ld h, l
    ld l, a
    ld [hl], l
    ld [hl], h
    ld a, l
    ld a, l
    ld l, b
    ld l, b
    ld a, b
    ld l, a
    ld a, [hl]
    ld a, a
    ld l, [hl]
    ld a, b
    ld a, [hl]
    ld a, a
    ld l, [hl]
    ld [hl], a
    ld a, [hl]

jr_017_6d61:
    ld [hl], b
    ld h, h
    ld [hl], e
    ld [hl], c
    ld l, l
    ld [hl], d
    ld [hl], d
    ld l, l
    ld l, l
    ld [hl], e
    ld h, h
    ld l, l
    ld [hl], c
    ld [hl], a
    ld l, a
    ld [hl], b
    ld a, a
    set 1, e
    call z, Call_017_63cd
    ld h, h
    ld [hl], b
    ld [hl], b

Call_017_6d7a:
    ld l, e
    ld l, d
    ld a, e
    ld a, d
    ld h, c
    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, d
    ld h, c
    ld [hl], h
    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld [hl], c
    ld [hl], d
    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld [hl], d
    ld [hl], h
    ld [hl], e
    ld [hl], d
    ld [hl], c
    adc h
    adc l
    adc [hl]
    adc a
    adc [hl]
    adc a
    adc [hl]
    adc a
    ld h, d
    and e
    ld [hl], d
    ld [hl], e
    ld h, e
    ld h, [hl]
    ld l, b
    db $76
    ld a, h
    ld a, d
    ld l, h
    ld a, e
    ld a, d
    ld a, h
    ld a, e
    ld l, h
    ld l, h
    ld l, e
    ld l, h
    ld l, e
    ld l, e
    ld l, h
    ld l, e
    ld l, h
    ld a, d
    ld a, d
    ld l, d
    ld l, d
    add b
    ld h, d
    ld [hl], e
    ld [hl], d
    ld h, a
    ld h, h
    ld [hl], a
    ld [hl], h
    ld h, [hl]
    ld h, e
    db $76
    ld l, b
    ld l, h
    ld a, e
    ld a, h
    ld a, d
    ld a, e
    ld l, h
    ld a, d
    ld a, h

jr_017_6dca:
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]

jr_017_6dcd:
    ld l, [hl]
    ld d, $17
    ld l, d
    ld l, e
    ld l, d
    ld l, d
    ld a, d
    ld a, d
    ld h, h
    ld h, a
    ld [hl], h
    ld [hl], a
    ld l, c
    ld l, c
    ld a, b
    ld a, c
    ld l, c
    ld h, c
    ld a, c
    ld [hl], c
    ld h, d
    ld a, b
    ld [hl], d
    ld [hl], e
    ld l, b
    ld l, c
    call z, $cc79
    ld l, d
    call z, Call_017_6d7a
    ld [hl], h
    ld a, l
    ld h, l
    dec bc
    inc c
    dec de
    call z, $0c0c
    ld d, [hl]
    call z, $0b0c
    ld d, [hl]
    dec de
    dec de
    call z, Call_017_571b
    ld b, [hl]
    dec de
    call z, $1b1b
    ld b, a
    inc e
    dec e
    call z, $1d47
    dec e
    call z, $1d1b
    inc e
    dec bc
    dec bc
    inc e
    inc e
    dec bc
    dec bc
    dec de
    dec de
    dec de
    dec de
    inc e
    inc e
    ld b, [hl]
    sbc b
    call z, $98a8
    call z, Call_017_57ab
    ld b, [hl]
    cp b
    call z, $bb57
    call z, Call_017_57cc
    rlca
    call z, $5707
    ld b, [hl]
    rlca
    call z, $1907
    add hl, de
    call z, $6257
    ld h, d
    ld h, h
    ld h, l
    ld b, d
    ld b, d
    ld d, d
    ld d, d
    inc de
    ld [$0200], sp
    add c
    ld b, e
    jr nz, jr_017_6dca

    jr nz, jr_017_6dcd

    add b
    ld b, e
    ld l, [hl]
    ld l, h
    ld l, l
    ld l, a
    ld l, h
    ld l, [hl]
    ld l, a
    ld a, l
    ld l, [hl]
    ld l, h
    ld a, [hl]
    ld a, h
    ld l, h
    ld l, [hl]
    ld a, h
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, l
    ld a, l
    ld l, h
    ld l, h
    ld l, a
    ld l, a
    ld bc, $1707
    jr jr_017_6ed8

    ld a, a
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, l
    ld a, h
    ld a, [hl]
    ld l, l
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, l
    ld a, a
    ld l, l
    ld l, a
    ld a, a
    ld a, l
    ld l, a
    ld a, l
    ld l, c
    ld l, d
    ld l, c
    ld l, d
    ld l, c
    ld l, e
    ld a, c
    ld a, e
    ld l, e
    ld h, e
    ld a, e
    ld [hl], e
    ld h, h
    ld l, e
    ld [hl], e
    ld a, e
    inc h
    dec h
    inc h
    dec h
    inc h
    dec h
    dec [hl]
    dec [hl]
    ld l, c
    jr nz, jr_017_6f0e

    jr nc, jr_017_6f10

    jr nc, @+$7b

    ld [hl+], a
    add c
    add c
    ld [hl], d
    ld h, d
    add c
    add c
    add c
    ld h, d
    db $76
    rla
    rla
    ld [hl], h
    ld b, [hl]
    call z, $dcdc
    call c, $cc47
    call c, $ccdc
    ld d, [hl]
    ld d, a
    ld b, [hl]
    call c, $5756
    ld l, e
    jr nc, jr_017_6f34

    jr nz, jr_017_6efc

    ld l, e
    ld hl, $726b
    ld h, d
    add b
    add b
    add c
    ld h, d
    ld [hl], d
    add b
    ld [hl], d
    add c

jr_017_6ed8:
    add b
    ld h, d
    ld l, e
    ld b, $7b
    ld a, [de]
    ld a, [bc]
    ld l, e
    ld a, [de]
    ld a, e
    call c, Call_017_56dc
    ld d, a
    call z, $dcdc
    ld d, a
    call z, $dc47
    ld d, a
    ld b, [hl]
    ld b, a
    ld b, a
    call c, $306b
    ld a, e
    ld [hl+], a
    ld sp, $226b
    ld a, e
    ld b, [hl]
    ld b, a

jr_017_6efc:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc h
    dec h
    call z, Call_017_6bcc
    ld l, e
    ld c, d
    ld c, e
    ld a, [hl-]
    dec sp
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a

jr_017_6f0e:
    db $76
    ld h, [hl]

jr_017_6f10:
    ld h, a
    ld [hl], b
    ld h, [hl]
    db $76
    ld [hl], b
    ld h, a
    ld [hl], a
    ld [hl], c
    ld h, d
    ld h, d
    ld [hl], c
    ld [hl], a
    ld h, d
    ld h, d
    ld hl, $3121
    jr nc, @+$23

    ld hl, $3130
    daa
    ld h, $37
    ld [hl], $2d
    inc l
    dec a
    inc a
    dec hl
    ld a, [hl+]
    dec sp
    ld a, [hl-]
    ld b, h
    ld b, h

jr_017_6f34:
    ld d, h
    ld d, h
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld l, $2f
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $53
    ld d, e
    ld d, e
    ld d, e
    ld l, [hl]
    ld l, h
    ld h, a
    ld [hl], b
    ld l, h
    ld l, [hl]
    ld [hl], b
    ld h, a
    db $76
    db $76
    db $76
    db $76
    ld [hl], d
    ld [hl], e
    ld h, h
    ld h, l
    ld h, b
    ld l, b
    ld [hl], b
    ld a, b
    ld c, d
    ld c, e
    add b
    add b
    ld e, d
    ld e, e
    add b
    add b
    ld l, $2e
    ld a, $3e
    ld [hl], c
    ld [hl], c
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld d, e
    ld d, e
    ld [hl], h
    ld [hl], l
    ld h, e
    ld h, e
    ld [hl], c
    ld [hl], c
    ld h, d
    ld h, d
    call z, $2acc
    dec hl
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld l, b
    ld l, a
    ld a, [hl]
    ld e, a
    ld l, a
    ld l, [hl]
    ld c, a
    ld c, [hl]
    ld a, l
    ld a, h
    ld c, h
    ld c, l
    ld l, [hl]
    ld l, a
    ld c, [hl]
    ld c, a
    inc a
    dec a
    ld a, $3f
    ld e, [hl]
    ld e, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, h
    ld e, h
    ld l, h
    ld l, h
    ld h, h
    ld l, a
    ld a, [hl]
    ld a, a
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec [hl]
    inc [hl]
    scf
    ld [hl], $38
    add hl, sp
    ld a, [hl-]
    dec sp
    add hl, sp
    jr c, jr_017_6ff0

    ld a, [hl-]
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, a
    ld a, h
    ld d, d
    ld d, c
    ld a, l
    ld a, h
    ld d, l
    ld d, [hl]
    ld a, l
    ld a, h
    ld a, h
    ld a, l
    ld l, [hl]
    ld l, a
    ld d, c
    ld d, d
    ld b, b
    ld b, c
    ld b, e
    ld b, h
    ld b, d
    ld [hl], h
    ld b, l
    ld [hl], l
    ld b, [hl]
    ld b, a
    ld c, c
    ld c, d
    ld c, b
    ld d, b
    ld c, e
    ld e, c
    ld [hl], h
    ld b, d
    ld [hl], l
    ld b, l
    ld b, c
    ld b, b
    ld b, h
    ld b, e
    ld d, b
    ld c, b
    ld e, c
    ld c, e
    ld b, a
    ld b, [hl]
    ld c, d
    ld c, c
    ld a, b
    ld l, c
    ld a, d
    ld a, e
    ld l, c
    ld a, b

jr_017_6ff0:
    ld a, e
    ld a, d
    ld l, a
    ld d, a
    ld e, a
    ld a, [hl]
    ld e, b
    ld a, h
    ld d, e
    ld d, [hl]
    ld a, l
    ld h, a
    ld d, l
    ld d, h
    ld sp, $3332
    inc sp
    ld [hl-], a
    ld sp, $3333
    inc bc
    rlca
    ld [de], a
    rlca
    ld b, $19
    ld de, $7902
    ld a, b
    ld a, e
    ld a, d
    ld [hl], a
    db $76
    ld a, d
    ld a, e
    db $76
    ld [hl], a
    ld a, e
    ld a, d
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld l, a
    ld h, h
    ld a, a
    ld a, [hl]
    ld l, a
    ld l, [hl]
    ld e, a
    ld a, [hl]
    ld l, [hl]
    ld l, a
    ld a, [hl]
    ld e, a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld e, l
    ld e, l
    ld l, l
    ld l, l
    jr jr_017_7051

    dec d
    ld d, $11
    jr jr_017_705c

    dec d
    inc sp
    add e
    adc [hl]
    adc a
    add e
    inc sp
    adc [hl]
    adc a
    jr jr_017_7068

    rlca

jr_017_7051:
    inc bc
    ld l, a
    ld l, [hl]
    ld d, d
    ld d, c
    jr jr_017_7071

    dec d
    ld de, $1819

jr_017_705c:
    ld de, $3815
    jr c, jr_017_7099

    jr c, jr_017_709c

    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]

jr_017_7068:
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    dec sp
    dec sp
    dec sp
    add hl, sp
    ld a, [hl-]
    dec sp

jr_017_7071:
    dec sp
    ld a, [hl-]
    add hl, sp
    dec sp

Call_017_7075:
    dec sp
    jp c, $0d0d

    db $db
    db $fc
    db $fc
    db $fc
    db $fc
    db $ed
    db $ed
    db $ed
    db $ed
    db $ec
    db $ec
    db $ec
    db $ec
    add b
    and e
    and e
    rra
    add b
    and e
    rra
    add b
    dec bc
    inc c
    inc e
    dec e
    inc c
    dec bc
    dec e
    inc e
    inc c
    inc c
    dec e

jr_017_7099:
    dec e
    dec de
    dec de

jr_017_709c:
    dec de
    dec de
    sbc d
    sbc d
    sbc d
    sbc d
    sbc b
    sbc b
    sbc e
    sbc e
    sbc c
    sbc b
    sbc d
    db $ed
    sbc b
    sbc b
    db $ed
    db $ed
    sbc b
    sbc c
    db $ed
    sbc d
    sbc d
    db $ed
    sbc d
    db $ed
    db $ed
    sbc d
    db $ed
    sbc d
    sbc d
    db $ed
    sbc h
    sbc e
    db $ed
    db $ed
    sbc e
    sbc e
    db $ed
    sbc d
    sbc e
    sbc h
    ld e, a
    ld e, [hl]
    set 1, h
    xor d
    xor d
    xor d
    xor d
    dec b
    call nz, $c425
    xor b
    xor b
    xor b
    xor b
    rst $00
    add $d7
    sub $c4
    dec b
    call nz, $4625
    jr nc, @+$48

    ld a, [hl+]
    ld sp, $2b32
    dec hl
    inc sp
    ld b, [hl]
    inc l
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    jr nz, jr_017_7134

    ld b, l
    ld hl, $4522
    ld b, h
    inc hl
    ld b, [hl]
    push de
    push de
    ld a, b
    ld a, b
    db $e4
    push hl
    or d
    or e
    push hl
    db $e4
    or d
    or e
    rst $20
    and $f7
    or $49
    ld c, c
    ld c, c
    ld c, c
    ld b, [hl]
    ld a, [hl-]
    ld d, h
    ld d, l
    dec sp
    dec sp
    ld d, l
    ld d, l
    inc a
    ld b, [hl]
    ld d, l
    ld d, h
    ld b, [hl]
    jr nc, jr_017_715f

    ld b, b
    ld sp, $4132
    ld b, d
    inc sp
    ld b, [hl]
    ld b, e
    ld b, [hl]
    ld b, [hl]
    jr nc, jr_017_716b

    ld h, b
    ld sp, $6132
    ld h, d
    inc sp
    ld b, [hl]
    ld h, e
    ld b, [hl]
    db $dd
    or b
    ret c

    ret nz

    or c
    reti


jr_017_7134:
    pop bc
    sbc $07
    ld b, $17
    ld d, $e1
    reti


    reti


    sbc $46
    jr nc, jr_017_7187

    dec l
    ld sp, $2e32
    ld l, $33
    ld b, [hl]
    cpl
    ld b, [hl]
    ld b, [hl]
    ld d, b
    ld d, h
    ld d, l
    ld d, c
    ld d, d
    ld d, l
    ld d, l
    ld d, e
    ld b, [hl]
    ld d, l
    ld d, h
    ld b, [hl]
    ld [hl], b
    ld d, h
    ld d, l
    ld [hl], c
    ld [hl], d
    ld d, l
    ld d, l
    ld [hl], e

jr_017_715f:
    ld b, [hl]
    ld d, l

Call_017_7161:
    ld d, h
    ld h, $27
    ret c

    reti


    jr z, jr_017_7190

    db $dd
    sbc $de

jr_017_716b:
    ret nc

    reti


    ldh [$d1], a
    db $dd
    pop hl
    ret c

    pop af
    ld a, [c]
    di
    db $f4
    daa
    ld h, $dc
    db $dd
    sbc $e0

jr_017_717c:
    db $dd
    call c, $3d46
    ld d, h
    ld d, l
    ld a, $3e
    ld d, l
    ld d, l
    ccf

jr_017_7187:
    ld b, [hl]
    ld d, l
    ld d, h
    ld h, h
    ld l, l
    ld [hl], h
    ld a, l
    ld l, l
    ld h, h

jr_017_7190:
    ld a, l
    ld [hl], h
    dec [hl]
    ld [hl], $37
    jr c, jr_017_717c

    push hl
    or d
    inc h
    push hl
    push hl
    inc b
    or e
    ld b, a
    ld h, l
    ld d, a
    ld [hl], l
    ld l, a
    ld c, b
    ld a, a
    ld e, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    ld e, a
    ld e, [hl]
    ld e, d
    ld e, d
    ld c, d
    ld c, d
    ld c, a
    ld c, [hl]
    ld c, e
    ld e, e
    ld e, h
    ld e, l
    ld c, d
    ld c, l
    ld e, d
    ld e, l
    ld b, a
    ld c, c
    ld b, a
    ld c, c
    ret c

    reti


    db $dd
    sbc $dd
    sbc $d8
    reti


    reti


    ret c

    sbc $dd
    sbc $dd
    reti


    ret c

    sbc $d9
    call c, $c2de
    inc [hl]
    jp nc, $14d3

    jp $d3d2


    ld [c], a
    db $e3
    sbc $dd
    xor c
    xor c
    xor c
    xor c
    ld e, a
    ld e, e
    ld c, a
    ld e, e
    ld c, e
    ld e, [hl]
    ld c, e
    ld c, [hl]
    ld c, h
    ld c, l
    ld c, e
    ld e, e
    ld c, h
    ld c, d
    ld e, h
    ld e, d
    ld b, a
    ld c, c
    ld d, a
    ld e, c
    ld c, e
    ld e, [hl]
    ld e, h
    ld e, d
    ld e, a
    ld e, e
    ld e, d
    ld e, l
    ld c, c
    ld c, b
    ld c, c
    ld c, b
    ld c, c
    ld h, l
    ld e, c
    ld [hl], l
    ld l, a
    ld c, c
    ld a, a
    ld e, c
    ld l, d
    ld l, c
    ld [bc], a
    ld [bc], a
    ld l, d
    ld l, h
    ld bc, $137b
    ld a, d
    nop
    ld [bc], a
    ld l, d
    ld a, h
    ld bc, $6b7b
    ld a, e
    ld a, e
    ld l, e
    ld a, e
    ld l, e
    ld l, e
    ld a, e
    ld a, d
    ld l, c
    ld l, e
    ld a, d
    ld l, d
    ld l, c
    ld l, c
    ld l, d
    ld l, h
    ld l, e
    ld l, c
    ld a, h
    ld l, e
    ld l, h
    ld a, h
    ld l, c
    inc bc
    ld l, e
    inc de
    ld a, e
    inc de
    ld l, e
    inc de
    ld a, e
    ld [bc], a
    ld bc, $137a
    ld e, h
    ld e, l
    ld d, a
    ld e, b
    ld a, d
    ld a, e
    ld l, c
    ld a, d
    ld [bc], a
    ld [bc], a
    ld l, c
    ld l, d
    ld bc, $696b
    ld l, h
    nop
    ld [bc], a
    inc de
    ld a, d
    ld l, h
    ld l, c
    ld a, e
    ld bc, $136b
    ld a, e
    inc de
    ld a, e
    ld a, d
    ld a, d
    ld l, d
    ld l, d
    ld a, h
    ld l, h
    ld a, e
    ld a, h
    ld l, c
    ld a, e
    ld l, h
    inc de
    ld l, e
    ld [de], a
    ld a, e
    ld l, d
    ld a, d
    ld a, d
    ld l, e
    ld a, d
    inc de
    ld [bc], a
    ld bc, $b5b4
    call nz, $b5a8
    or [hl]
    xor b
    add $b7
    ld c, h
    rst $00
    ld c, e
    ld c, l
    or a
    ld e, e
    rst $00
    or [hl]
    or l
    add $a8
    or l
    or h
    xor b
    call nz, $a8c4
    call nc, $a8d5
    sub $d5
    push de
    call c, $dd77
    ld d, [hl]
    ld [hl], a
    ret c

    ld d, [hl]
    sbc $dd
    ld b, h
    ld d, b
    ld d, c
    ret c

    reti


    call c, $dc47
    db $dd
    ld c, b
    ld c, b
    sbc $d8
    ld b, [hl]
    reti


    db $dd
    sbc $d8
    ld e, e
    db $dd
    ld h, b
    reti


    ld [hl], b
    sbc $63
    ret c

    ld [hl], e
    reti


    db $dd
    ret c

    ld e, [hl]
    sbc $d9
    ld e, a
    ld e, a
    ret c

    sbc $5e
    sbc $d8
    sbc $5b
    reti


    ld h, b
    reti


    ld [hl], b
    db $dd
    ld h, e
    sbc $73
    call c, $acac
    xor h
    xor h
    xor l
    xor l
    xor l
    xor l
    ld c, h
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, e
    ld e, e
    ld c, e
    ld e, e
    ld c, d
    ld c, l
    ld c, a
    ld e, e
    rst $10
    ld e, h
    push de
    push de
    ld e, l
    rst $10
    push de
    push de
    sub $a8
    push de
    push de
    xor b
    call nz, $d4d5
    sub [hl]
    sub a
    and [hl]
    and a
    xor e
    xor e
    xor e
    xor e
    cp [hl]
    cp [hl]
    and b
    and c
    db $ed
    db $ed
    rla
    ld d, $80
    add b
    rla
    ld d, $ea
    ld [$fafa], a
    push hl
    push hl
    add e
    add e
    sbc l
    sbc l
    ret z

    ret z

    cp b
    cp b
    ret z

    ret z

    adc h
    adc [hl]
    adc l
    adc a
    di
    db $f4
    pop af
    ld a, [c]
    pop af
    ld a, [c]
    pop af
    ld a, [c]
    rst JumpTable
    rst JumpTable
    ldh a, [$f0]
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rlca
    ld bc, $17c4
    ld bc, $1607
    call nz, $0404
    db $fd
    db $fd
    db $fd
    db $fd
    inc d
    inc d
    dec b
    rla
    call nz, $1616
    dec b
    rla
    call nz, $0102
    add hl, bc
    inc de
    ld bc, $1302
    add hl, bc
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld b, $19
    rlca
    ld de, $0619
    ld de, $0507
    dec b
    call nz, $b4c4
    or c
    ret nz

    pop bc
    or d
    or a
    jp nz, $9ec3

    sbc a
    xor [hl]
    xor a
    ret nc

    pop de
    ldh [$e1], a
    jp nc, $e2d3

    db $e3
    ld h, c
    ld h, d
    ld [hl], c
    ld [hl], d

Call_017_7372:
    ld h, d
    ld h, c
    ld [hl], d
    ld [hl], c
    ld [bc], a
    ld de, $6a69
    ld de, $6902
    ld l, d
    ld l, d
    ld l, c
    ld [bc], a
    ld de, $696a
    ld de, $d902
    db $dd
    rst JumpTable
    rst JumpTable
    ld d, $92
    rla
    sub e
    sub d
    rla
    sub e
    ld d, $66
    db $76
    ld e, h
    ld e, l
    reti


    ret c

    rst JumpTable
    rst JumpTable
    db $76
    ld h, [hl]
    ld e, l
    ld e, h
    db $dd
    or l
    rst $00
    push bc
    or [hl]
    sbc $c6
    rst $00
    call nc, $e4d5
    push hl
    sub $d7
    and $e7
    add hl, bc
    inc de
    ld [bc], a
    ld bc, $9594
    and h
    and l
    sbc c
    sbc b
    sbc h
    sbc e
    sbc c
    sbc c
    sbc h
    sbc h
    sbc b
    sbc c
    sbc e
    sbc h
    sbc d
    sbc d
    sbc h
    sbc h
    sbc c
    sbc c
    sbc d
    sbc d
    db $eb
    db $eb
    ei
    ei
    sub b
    sub b
    sub c
    sub c
    ld b, l
    ld b, l
    ld d, d
    ld c, h
    ld c, a
    ld c, [hl]
    ld c, l
    ld c, e
    ld d, e
    ld d, h
    ld d, [hl]
    ld d, a
    ld d, h
    ld d, e
    ld d, a
    ld d, [hl]
    ld l, c
    ld l, d
    ld a, e
    add c
    ld l, d
    ld l, c
    add c
    ld a, e
    ld a, e
    add c
    ld a, c
    ld a, d
    add c
    add c
    ld a, d
    ld a, d
    add c
    ld a, e
    ld a, d
    ld a, c
    ld d, l
    ld d, l
    ld e, b
    ld e, b
    ld d, h
    ld h, b
    ld e, l
    ld [hl], b
    ld h, l
    ld d, h
    ld [hl], l
    ld e, l
    ld e, l
    ld a, c
    ld e, b
    ld d, a
    ld d, [hl]
    ld e, c
    ld d, a
    ld d, a
    ld e, c
    ld e, c
    ld d, a
    ld d, a
    ld e, c
    ld d, [hl]
    ld d, a
    ld d, a
    ld e, l
    ld d, b
    ld e, l
    ld e, d
    ld c, l
    ld c, [hl]
    db $dd
    sbc $4f
    ld e, l
    ld d, l
    ld e, l
    ld l, a
    ld a, h
    ld l, a
    ld a, h
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld d, c
    ld c, h
    ld e, e
    ld e, h
    ld e, l
    ld d, l
    ld e, l
    ld d, l
    ld c, l
    ld c, [hl]
    ret c

    reti


    call c, $dd52
    ld d, l
    ld d, [hl]
    ld e, l
    add c
    ld e, l
    ld l, a
    ld l, h
    ld l, a
    ld l, h
    ld a, h
    ld a, h
    ld b, $03
    reti


    sbc $59
    ld e, c
    reti


    ld d, l
    ld e, c
    ld l, d
    add c
    ld e, l
    ld d, a
    ld e, b
    ld e, l
    ld d, [hl]
    ld e, l
    ld l, c
    ld d, d
    ld e, a
    ld d, l
    db $dd
    ld e, [hl]
    ld d, l
    sbc $55
    ld l, c
    ld e, l
    ld a, c
    ld e, l
    ld l, a
    ld h, [hl]
    ld a, a
    db $76
    ld e, [hl]
    ld e, a
    db $dd
    sbc $5e
    ld e, a
    ret c

    reti


    add hl, de
    ld c, [hl]
    ld [bc], a
    ld e, [hl]
    ld c, [hl]
    add hl, de
    ld e, [hl]
    ld [bc], a
    ld a, b
    ld c, b
    ld d, a
    ld e, b
    ld c, l
    ld c, l
    ld e, l
    ld e, l
    ld c, h
    ld c, e
    ld e, h
    ld e, e
    ld d, b
    ld h, [hl]
    ld h, b
    ld d, c
    ld h, a
    ld l, b
    ld d, d
    ld d, e
    ld l, b
    ld h, a
    ld d, e
    ld d, d
    ld h, [hl]
    ld d, b
    ld d, c
    ld h, b
    ld h, e
    ld h, d
    ld [hl], h
    ld [hl], l
    ld h, c
    ld h, b
    db $76
    ld [hl], b
    ld d, l
    ld d, h
    ld h, l
    ld h, h
    ld l, d
    ld l, e
    ld l, d
    ld a, e
    ld [hl], l
    ld e, d
    ld d, a
    ld d, [hl]
    ld a, c
    ld a, c
    ld d, [hl]
    ld d, [hl]
    ld e, d
    ld [hl], l
    ld d, [hl]
    ld d, a
    ld l, e
    ld l, d
    ld a, e
    ld l, d
    cp e
    cp h
    ld e, b
    ld [hl], e
    cp e
    cp h
    ld [hl], d
    ld [hl], c
    cp e
    cp h
    ld [hl], b
    ld [hl], b
    cp e
    cp h
    ld [hl], c
    ld [hl], d
    cp e
    cp h
    ld [hl], e
    ld e, b
    ld e, c
    ld d, c
    ld l, d
    ld e, l
    ld h, e
    ld h, d
    ld e, h
    ld e, e
    ld c, d

Jump_017_74cb:
    ld c, e
    ld e, e
    ld e, e
    ld h, d
    ld h, e
    ld e, e
    ld e, h
    ld d, c
    ld e, c
    ld e, l
    ld l, d
    db $dd
    or l
    call nz, Call_017_7ac5
    ld l, e
    ld l, d
    ld a, e
    ld d, e
    ld d, d
    ld d, l
    ld d, h
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld l, e
    ld a, d
    ld a, e
    ld l, d
    or $f6
    rst $30
    rst $30
    ld h, c
    ld h, b
    ld l, d
    ld a, e
    ld h, b
    ld h, b
    ld h, l
    ld e, d
    ld h, b
    ld h, b
    ld l, c
    ld l, c
    ld h, b
    ld h, b
    ld e, d
    ld h, l
    ld h, b
    ld h, c
    ld a, e
    ld a, d
    ld l, d
    ld e, [hl]
    ld l, [hl]
    call z, Call_017_6a5f
    bit 5, a
    ld d, b
    ld d, b
    ld c, h
    ld c, l
    add e
    add e
    add sp, -$17
    jp nc, $94d3

    sub l
    push de
    call nc, $d7d6
    call nc, $d7d5
    sub $83
    rst $10
    add e
    add e
    rst $10
    add e
    add e
    add e
    add e
    add e
    add e
    push de
    sub $d6
    call nc, $83d4
    add e
    push de
    add e
    sub $d6
    add e
    add e
    ret c

    reti


    ret c

    reti


    jp c, $d8db

    reti


    call c, $d8dd
    reti


    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld a, [c]
    ld a, [c]
    ld [bc], a
    ld [bc], a
    di
    di
    inc bc
    inc bc
    ld a, [de]
    dec de
    inc e
    dec e
    ld d, $17
    jr jr_017_756f

    inc h
    dec h
    ld h, $27
    jr nz, jr_017_757d

    ld [hl+], a
    inc hl
    sub b
    sub c
    sub b
    sub c
    sub d
    sub e
    sub d
    sub e
    ld [$0809], sp
    add hl, bc
    pop de
    pop de
    add d
    add d
    inc c

jr_017_756f:
    dec c
    ld c, $0f
    add d
    add d
    ld c, $0f
    rrca
    ld c, $0e
    rrca
    ld b, l
    ld b, [hl]
    ld b, [hl]

jr_017_757d:
    ld b, l
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    adc [hl]
    adc a
    sbc [hl]
    sbc a
    sub [hl]
    sub a
    sbc b
    sbc c
    inc b
    dec b
    sbc b
    sbc c
    db $f4
    push af
    sbc b
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    and e
    and d
    and a
    and [hl]
    and c
    and b
    and l
    and h
    and b
    and c
    and h
    and l
    and d
    and e
    and [hl]
    and a
    xor c
    xor b
    xor [hl]
    cp h
    xor b
    xor c
    cp h
    cp l
    xor b
    xor c
    cp h
    cp [hl]
    ld [de], a
    inc de
    xor [hl]
    cp h
    ld [de], a
    inc de
    cp h
    cp l
    inc de
    ld [de], a
    cp h
    cp [hl]
    xor b
    xor c
    cp b
    cp c
    ld [de], a
    inc de
    inc d
    dec d
    xor b
    xor b
    cp [hl]
    cp [hl]
    ld [de], a
    ld [de], a
    cp [hl]
    cp [hl]
    ldh a, [$f1]
    nop
    ld bc, $abaa
    cp d
    cp e
    cp d
    cp e
    xor d
    xor e
    jr z, jr_017_7609

    ld a, [hl+]
    dec hl
    cp [hl]
    xor h
    xor [hl]
    cp h
    xor l
    xor [hl]
    cp l
    xor a
    cp [hl]
    xor h
    xor [hl]
    cp [hl]
    xor h
    xor h
    cp h
    cp [hl]
    xor l
    xor l
    cp [hl]
    cp l
    xor l
    xor [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    xor l
    cp h
    cp l
    xor h
    cp [hl]
    cp h
    cp l
    cp [hl]
    cp [hl]
    cp h
    cp l
    or d
    ld b, c
    xor h

jr_017_7609:
    xor l
    ld b, b
    ld b, c
    xor h
    xor l
    or b
    rst $30
    xor h
    xor l
    or $f7
    xor h
    xor l
    sub [hl]
    sub a
    ld d, h
    ld d, h
    cp [hl]
    xor h
    cp c
    cp b
    xor l
    xor h
    cp b
    cp c
    xor l
    cp a
    cp b
    cp c
    cp [hl]
    cp a
    cp b
    cp b
    cp [hl]
    cp a
    inc d
    inc d
    cp [hl]
    xor h
    dec d
    inc d
    xor l
    xor h
    inc d
    dec d
    xor l
    cp a
    inc d
    dec d
    ld [$faeb], a
    ei
    ld d, l
    db $eb
    ld a, [$8cfb]
    adc l
    sbc h
    sbc l
    add e
    add e
    sbc h
    sbc l
    or h
    or l
    call nz, $b5c5
    or h
    push bc
    call nz, Call_017_5958
    ld d, [hl]
    ld d, a
    ld e, c
    ld e, b
    ld d, a
    ld d, [hl]
    or d
    or e
    ld [c], a
    rst $00
    or d
    or e
    add $e3
    or d
    or e
    add $c7
    or d
    or e
    ld [c], a
    db $e3
    ldh [$b7], a
    ld [c], a
    rst $00
    or a
    or [hl]
    rst $00
    add $b6
    or a
    add $c7
    or [hl]
    pop hl
    add $e3
    ldh [$e1], a
    jp nz, $e0c3

    pop hl
    ld [c], a
    db $e3
    ldh [$b7], a
    add $c7
    or [hl]
    pop hl
    add $c7
    ld e, $1f
    db $10
    ld de, $2d2c
    ld l, $2f
    jr nc, @+$33

    inc [hl]
    dec [hl]
    ld [hl-], a
    inc sp
    ld [hl], $37
    ld b, d
    ld b, e
    ld b, h
    dec [hl]
    ld c, $0e
    ld c, $0e
    jr z, jr_017_76cc

    jr z, jr_017_76ce

    ld c, h
    ld l, h
    inc c
    inc l
    inc c
    inc c
    inc c
    inc c
    ld [$0828], sp
    jr z, jr_017_76db

    jr z, jr_017_76bd

    jr z, jr_017_76e4

    dec l
    dec c
    dec l
    dec c
    dec c
    dec c

jr_017_76bd:
    dec l
    inc c
    inc l
    inc c
    inc l
    ld c, $2e
    ld c, $2e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_017_76cc:
    ld a, [hl+]

Call_017_76cd:
    ld a, [bc]

jr_017_76ce:
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl

jr_017_76db:
    dec hl
    dec hl
    dec hl
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    dec bc
    dec hl

jr_017_76e4:
    dec bc
    dec hl
    ld l, e
    ld l, e
    dec hl
    dec hl
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    dec bc
    dec bc
    inc c
    ld a, [bc]
    inc c
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    inc c
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld a, [bc]
    ld a, [hl+]
    ld c, d
    ld l, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc c
    inc l
    inc c
    ld [$0c08], sp
    inc l
    inc c
    inc l
    ld [$2c08], sp
    ld [$082c], sp
    ld [$082c], sp
    inc l
    dec c
    dec l
    dec c
    dec l
    ld l, l
    ld l, l
    dec l
    dec l
    ld c, l
    ld l, l
    ld c, l
    ld l, l
    ld c, l
    ld c, l
    dec c
    dec c
    dec l
    dec l
    ld l, l
    ld l, l
    dec c
    dec c
    ld c, l
    ld c, l
    ld l, l
    dec l
    dec l
    ld l, l
    dec c
    ld c, l
    ld c, l
    dec c
    dec l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    dec l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld c, d
    ld a, [hl+]
    ld a, [hl+]
    ld l, d
    ld l, d
    ld c, d
    ld c, d
    dec l
    ld c, d
    ld c, d
    ld l, d
    ld c, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    dec l
    ld a, [bc]
    ld l, d
    ld a, [bc]
    ld a, [hl+]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld l, [hl]
    ld [$0808], sp
    ld [$0e0e], sp
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    ld c, $0e
    inc c
    inc c
    ld c, $0c
    inc c
    ld c, $0c
    ld c, $0e
    inc c
    ld c, $0c
    ld c, $0e
    inc c
    inc c
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0c
    ld c, $0c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    ld c, $0e
    dec c
    dec l
    ld c, l
    ld l, l
    ld c, $2e
    ld c, [hl]
    ld l, [hl]
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld [$0e08], sp
    ld c, $0e
    ld [$080e], sp
    ld c, [hl]
    ld c, [hl]
    ld [$0808], sp
    ld l, $08
    ld l, $0b
    inc c
    dec bc
    inc c
    inc l
    inc l
    dec hl
    dec hl
    ld c, e
    ld c, h
    ld c, e
    ld c, h
    inc c
    inc c
    dec bc
    dec bc
    ld c, $0e
    ld c, $0d
    ld c, $0e
    dec c
    dec l
    ld c, $0e

Call_017_77cc:
    dec l

Call_017_77cd:
    ld c, $0e
    dec c
    inc c
    inc c
    dec l
    ld c, $2c
    inc l
    inc l
    inc l
    ld [$0808], sp
    ld [$2c2c], sp
    rrca
    cpl
    rrca
    cpl
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld c, [hl]
    ld l, [hl]
    ld c, $2e
    dec hl
    inc c
    dec hl
    inc c
    ld c, $2a
    ld c, $0a
    ld a, [bc]
    ld l, $2a
    ld l, $0e
    ld a, [hl+]
    ld c, $0e
    ld a, [bc]
    ld l, $0e
    ld l, $0a
    ld a, [hl+]
    ld c, $0e
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    dec l
    dec l
    dec l
    dec l
    ld c, $6e
    ld c, $2e
    inc c
    inc l
    ld c, h
    ld l, h
    ld [$0c08], sp
    inc c
    inc c
    ld [$080c], sp
    ld c, h
    ld c, h
    ld [$0d08], sp
    ld l, $0d
    ld c, $0e
    dec l
    ld l, $2d
    dec c
    ld l, $0d
    dec c
    ld c, $2d
    dec c
    dec l
    ld c, $2e
    dec c
    dec c
    ld c, $2e
    ld l, $0e
    inc l
    inc l
    inc c
    inc c
    inc c
    inc c
    inc l
    inc l
    dec c
    dec c
    inc c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    dec c
    dec c
    inc c
    inc c
    dec c
    inc c
    inc c
    dec c
    inc c
    dec c
    dec c
    inc c
    dec c
    inc c
    dec c
    dec c
    inc c
    inc c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    inc c
    dec c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    inc c
    dec c
    dec c
    ld [$0b08], sp
    dec hl
    dec bc
    dec hl
    ld [$2b08], sp
    ld [$082b], sp
    ld [$082b], sp
    dec hl
    dec bc
    dec hl
    ld c, e
    ld l, e
    dec l
    inc c
    inc c
    inc c
    inc l
    dec l
    inc l
    inc l
    inc c
    inc c
    ld c, h
    ld c, h
    inc l
    inc l
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    dec l
    ld c, h
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    dec l
    dec c
    ld l, l
    dec c
    dec l
    ld c, e
    ld l, e
    dec bc
    dec hl
    dec bc
    dec bc
    dec c
    dec c
    ld [$0b08], sp
    dec bc
    dec bc
    ld [$080b], sp
    ld c, e
    ld c, e
    ld [$0e08], sp
    ld c, l
    inc c
    inc c
    inc c
    inc l
    inc c
    inc c
    ld l, b
    ld l, b
    inc c
    inc c
    inc c
    ld l, b
    inc c
    ld l, b
    ld c, h
    ld c, h
    ld l, b
    ld l, b
    ld l, b
    ld l, h
    ld l, b
    ld l, h
    inc c
    jr z, @+$0e

    jr z, jr_017_78e7

    inc c
    inc c
    ld [$0c0c], sp
    ld [$0c08], sp
    inc l
    jr z, jr_017_7912

    inc c

jr_017_78e7:
    ld c, b
    inc c
    inc c
    inc c
    jr z, jr_017_78f5

    jr z, jr_017_78f7

    inc l
    ld [$2d08], sp
    dec l
    ld c, l

jr_017_78f5:
    ld c, l
    dec c

jr_017_78f7:
    dec l
    ld c, l
    ld c, l
    dec c
    dec c
    ld c, l
    ld l, l
    ld l, b
    inc l
    inc c
    inc l
    dec c
    dec l
    dec c
    dec c
    dec c
    ld c, $0d
    ld c, $0e
    dec c
    ld c, $0d
    dec c
    ld c, $0d
    dec c

jr_017_7912:
    ld c, $0d
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    ld [$0e08], sp
    ld l, $0e
    ld l, $08
    ld [$2e2e], sp
    ld l, $2e
    ld l, $08
    ld l, $08
    rrca
    cpl
    ld c, a
    ld l, a
    dec c
    inc l
    dec c
    inc c
    inc c
    dec l
    inc l
    dec l
    dec c
    inc l
    dec c
    dec c
    inc c
    dec l
    dec c
    dec l
    inc c
    inc l
    dec c
    dec c
    inc c
    inc l
    inc l
    inc c
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    dec bc
    jr z, jr_017_7970

    dec hl
    dec hl
    dec bc
    dec hl
    dec bc
    jr z, jr_017_7997

    dec hl
    dec hl
    cpl
    ld l, a

jr_017_7970:
    rrca
    ld c, a
    dec bc
    dec hl
    inc c
    inc l
    ld c, h
    ld l, h
    ld c, e
    ld l, e
    ld c, $0e
    ld c, $2e
    ld c, $2e
    ld l, $2e
    dec c
    dec l
    ld [$2d08], sp
    inc c
    dec l
    inc c
    inc c
    inc c
    ld c, $2e
    inc c
    inc c
    ld l, $2e
    ld c, e
    ld l, e
    ld c, e
    ld l, b
    ld l, e

jr_017_7997:
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ld l, e
    ld l, b
    ld l, e
    cpl
    cpl
    cpl
    cpl
    ld c, e
    inc c
    ld c, e
    inc c
    ld [$0e28], sp
    ld l, $28
    jr z, jr_017_79bb

    ld l, $2c
    rrca
    inc l
    rrca
    rrca
    inc l
    rrca
    inc l
    ld c, d
    ld a, [hl+]
    ld c, d
    ld a, [hl+]
    ld a, [bc]

jr_017_79bb:
    ld a, [bc]
    inc c
    inc c
    ld a, [hl+]
    ld a, [hl+]
    inc l
    inc l
    dec bc
    dec bc
    rrca
    rrca
    cpl
    rrca
    rrca
    cpl
    dec hl
    dec bc

Call_017_79cc:
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    inc c
    inc c
    dec bc
    dec bc
    ld a, [bc]
    ld a, [hl+]
    inc c
    inc c
    ld l, e
    ld c, e
    dec l
    dec l
    inc l
    dec l
    ld c, l
    ld c, h
    ld c, l
    ld c, l
    ld l, h
    ld l, l
    ld l, l
    ld l, l
    inc c
    inc c
    ld c, a
    ld c, a
    rrca
    rrca
    inc c
    inc c
    inc c
    inc c
    rrca
    ld c, a
    inc c
    inc c
    ld c, a
    cpl
    ld c, a
    rrca
    inc c
    inc c
    rrca
    ld l, a
    inc c
    inc c
    dec bc
    inc l
    dec bc
    dec bc
    inc l
    dec hl
    dec bc
    dec hl
    ld c, e
    dec bc
    ld c, e
    dec bc
    dec hl
    ld c, e
    dec hl
    ld c, e
    inc c
    ld c, e
    inc c
    ld c, e
    dec bc
    dec hl
    dec bc
    ld c, e
    dec hl
    dec hl
    ld c, e
    ld c, e
    dec hl
    dec hl
    ld c, e
    dec hl
    ld c, e
    dec bc
    dec bc
    dec bc
    ld l, h
    inc l
    inc l
    inc c
    ld [$0808], sp
    jr z, jr_017_7a58

    dec c
    dec l
    dec c
    inc c
    dec c
    dec c
    inc c
    ld l, $0e
    ld l, $0e
    ld c, $2d
    dec l
    dec l
    ld l, $2d
    ld l, $2d
    dec c
    inc c
    inc c
    dec c
    jr z, jr_017_7a6c

    dec c
    dec c
    dec c
    jr z, jr_017_7a56

    jr z, jr_017_7a98

    ld c, l
    jr z, jr_017_7a76

    jr z, jr_017_7abd

    jr z, jr_017_7abf

    adc l
    adc l
    adc l
    adc l

jr_017_7a56:
    dec l
    inc l

jr_017_7a58:
    dec c
    inc l
    inc l
    ld c, e
    inc l
    ld c, e
    inc c
    inc c
    inc c
    ld a, [bc]
    inc c
    inc l
    ld a, [bc]
    inc l
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    inc l
    inc l

jr_017_7a6c:
    inc c
    inc l
    inc c
    inc c
    inc c
    inc l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]

jr_017_7a76:
    ld [$2e08], sp
    ld c, $6e
    ld c, [hl]
    ld [$0b08], sp
    dec bc
    ld c, e
    ld c, e
    inc c
    dec bc
    inc l
    inc l
    dec hl
    dec hl
    inc l
    dec hl
    inc l
    ld l, $2e
    ld l, $0b
    rrca
    dec bc
    rrca
    rrca
    dec hl
    rrca
    dec hl
    dec bc
    dec bc

jr_017_7a98:
    dec bc
    rrca
    dec hl
    dec hl
    rrca
    dec hl
    dec bc
    inc c
    dec bc
    dec bc
    dec hl
    dec hl
    dec hl
    dec bc
    dec hl
    dec bc
    ld c, e
    ld c, e
    inc c
    inc c
    ld c, e
    ld l, e
    dec bc
    inc l
    dec bc
    inc c
    inc l
    dec hl
    inc c
    dec hl
    dec bc
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    dec hl
    inc c

jr_017_7abd:
    dec hl
    ld a, [bc]

jr_017_7abf:
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld c, d

Call_017_7ac5:
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld l, d
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    ld c, d
    ld a, [bc]
    ld l, d
    ld l, d
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    inc l
    ld a, [hl+]
    inc l
    ld a, [hl+]
    ld a, [hl+]
    inc c
    inc c
    inc c
    inc c
    ld a, [hl+]
    inc l
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    dec bc
    dec hl
    dec hl
    dec hl
    rrca
    inc c
    dec bc
    ld a, [hl+]
    inc l
    dec bc
    dec hl
    rrca
    rrca
    rrca
    dec hl
    dec hl
    dec hl
    inc c
    ld a, [bc]
    inc c
    inc c
    ld a, [hl+]
    inc l
    inc c
    inc l
    inc c
    dec bc
    inc c
    inc c
    inc c
    ld c, d
    inc c
    inc l
    ld l, d
    inc l
    inc c
    inc l
    rrca
    cpl
    rrca
    rrca
    rrca
    rrca
    cpl
    rrca
    cpl
    cpl
    cpl
    rrca
    dec hl
    ld a, [bc]
    dec hl
    dec hl
    dec c
    dec c
    ld a, [bc]
    dec c
    rrca
    ld c, $0f
    rrca
    ld c, $0e
    rrca
    ld c, $2f
    cpl
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    dec c
    inc c
    ld c, $0e
    ld c, $0f
    ld c, $0f
    rrca
    rrca
    dec c
    dec l
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    dec c
    ld a, [hl+]
    dec c
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld [$0a0b], sp
    inc c
    dec bc
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    ld a, [hl+]
    inc c
    inc c
    ld c, $0a
    ld c, $0a
    ld a, [bc]
    inc c
    dec c
    inc c
    inc c
    ld a, [bc]
    inc c
    dec c
    ld a, [bc]
    ld a, [hl+]
    dec c
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    dec c
    ld a, [hl+]
    dec c
    ld a, [hl+]
    dec c
    ld c, $0c
    dec c
    inc c
    inc c
    dec c
    inc c
    ld c, $0a
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    inc c
    ld c, $0d
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $2a
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    ld c, $0e
    inc c
    dec bc
    ld c, $0e
    ld a, [bc]
    ld [$0a0a], sp
    ld [$0a2a], sp
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$2a0a], sp
    ld [$0d2a], sp
    dec c
    dec l
    dec c
    dec l
    dec l
    dec l
    dec c
    inc l
    dec l
    inc c
    dec c
    inc c
    dec l
    dec c
    dec c
    ld c, h
    inc c
    ld c, h
    inc c
    ld c, h
    dec l
    ld c, h
    dec c
    dec c
    inc l

Call_017_7bcc:
    dec c
    inc l
    dec c
    dec l
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [$2808], sp
    ld [$0c28], sp
    inc l
    ld c, h
    ld [$080c], sp
    ld [$282c], sp
    inc l
    jr z, jr_017_7c0c

    inc c
    inc c
    jr z, @+$0a

    inc l
    ld [$2828], sp
    ld [$0c0c], sp
    ld [$084c], sp
    inc c
    ld [$0c0c], sp
    jr z, jr_017_7c24

    inc l
    inc l
    inc c
    inc c
    inc l
    inc c
    ld [$0c28], sp
    inc c
    ld [$0c2c], sp
    inc l
    inc c
    ld [$2c0c], sp
    inc c
    inc l

jr_017_7c0c:
    ld [$6828], sp
    inc l
    inc l
    inc l
    inc c
    inc c
    ld [$2c28], sp
    ld [$084c], sp
    ld [$080c], sp
    inc l
    inc l
    inc c
    ld c, h
    ld c, h
    inc c
    inc c

jr_017_7c24:
    ld c, h
    ld l, h
    adc h
    inc c
    adc h
    inc c
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    dec c
    dec c
    dec bc
    ld a, [bc]
    inc c
    inc c
    ld a, [bc]
    dec hl
    inc c
    inc c
    rrca
    dec c
    rrca
    dec c
    dec c
    cpl
    dec c

Jump_017_7c41:
    cpl
    rrca
    cpl
    dec c
    cpl
    rrca
    cpl
    cpl
    cpl
    dec c
    adc h
    dec c
    adc h
    rrca
    rrca
    rrca
    cpl
    ld c, $2e
    inc c
    ld l, $0a
    ld a, [hl+]
    inc c
    inc l
    ld [$0828], sp
    ld [$2d0d], sp
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    inc c
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld l, d
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld l, $2e
    inc l
    inc c
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld a, [hl+]
    ld a, [hl+]
    ld l, $2e
    dec c
    dec l
    inc c
    dec c
    inc c
    dec l
    dec c
    inc c
    inc l
    inc c
    inc c
    inc c
    dec bc
    dec hl
    inc c
    inc c
    adc h
    adc h
    dec c
    adc h
    ld l, $2e
    ld c, $2e
    ld l, $2e
    ld l, $0e
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec hl
    dec hl
    ld a, [hl+]
    dec hl
    ld l, $0e
    ld c, $2e
    dec hl
    inc l
    inc l
    inc l
    inc c
    dec c
    dec bc
    dec bc
    dec c
    dec c
    dec bc
    dec bc
    dec c
    inc l
    dec bc
    dec bc
    inc c
    inc l
    rrca
    rrca
    ld c, $2e
    ld c, $0e
    ld c, $0e
    ld c, [hl]
    ld c, [hl]
    dec c
    dec c
    ld c, $2e
    dec l
    dec c
    dec l
    dec l
    dec c
    dec bc
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    dec hl
    dec hl
    dec bc
    dec bc
    dec bc
    dec hl
    dec bc
    dec l
    dec bc
    dec hl
    dec c
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec hl
    dec hl
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec l
    dec bc
    dec l
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec hl
    dec bc
    dec hl
    dec hl
    dec bc
    dec bc
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    dec l
    dec c
    dec hl
    dec l
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    cpl
    cpl
    ld a, [hl+]
    ld a, [hl+]
    cpl
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    dec hl
    jr z, jr_017_7d2c

    jr z, jr_017_7d2e

    ld a, [bc]
    dec hl
    inc l
    inc l
    ld a, [bc]
    dec hl

jr_017_7d2c:
    inc c
    inc l

jr_017_7d2e:
    jr z, jr_017_7d58

    inc l
    inc l
    jr z, jr_017_7d60

    jr z, jr_017_7d62

    inc c
    inc l
    ld [$2b2c], sp
    inc l
    ld c, e
    inc l
    inc c
    inc l
    dec hl
    inc l
    dec hl
    inc l
    dec hl
    inc l
    ld l, e
    inc l
    inc l
    inc l
    inc c
    ld c, e
    inc c
    inc c
    inc c
    inc c
    ld c, e
    ld c, e
    dec hl
    inc c
    inc l
    inc c
    inc c
    adc h

jr_017_7d58:
    adc h
    adc h
    adc h
    xor h
    adc h
    xor h
    xor h
    inc c

jr_017_7d60:
    xor h
    xor h

jr_017_7d62:
    inc c
    adc h
    inc c
    inc c
    adc h
    adc h
    inc c
    inc l
    xor h
    xor h
    inc c
    inc l
    xor h
    inc c
    inc l
    inc c
    dec bc
    dec l
    dec bc
    dec bc
    ld l, h
    ld c, h
    inc l
    ld l, h
    ld c, h
    ld c, h
    ld c, h
    inc c
    dec c
    dec hl
    dec hl
    dec hl
    inc l
    inc l
    inc l
    inc c
    inc c
    inc c
    jr z, jr_017_7db2

    ld [$682c], sp
    ld [$0f2f], sp
    cpl
    cpl
    dec c
    dec l
    dec l
    dec c
    ld l, b
    inc l
    inc c
    ld l, h
    dec l
    dec c
    dec c
    dec l
    dec c
    dec c
    dec l
    dec l
    rrca
    cpl
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    rrca
    ld l, $0e
    ld l, $2e

jr_017_7db2:
    dec hl
    dec bc
    dec c
    dec l
    dec bc
    dec bc
    dec c
    dec l
    dec c
    dec c
    dec hl
    dec bc
    dec c
    dec l
    dec bc
    dec bc
    db $eb
    adc e
    db $eb
    adc e
    adc e
    adc e
    adc e
    adc e
    xor e
    xor e
    xor e
    adc e
    adc e
    adc e
    dec l
    dec l
    adc e
    adc e
    dec c
    dec c
    adc e
    adc e
    dec c
    dec l
    xor e
    adc e
    dec c
    dec l
    inc c
    inc c
    rrca
    rrca
    dec l
    jr z, jr_017_7e12

    dec l
    ld [$0d0d], sp
    dec c
    rrca
    cpl
    cpl
    rrca
    jr z, jr_017_7e1c

    inc c
    inc l
    dec c
    dec c
    ld c, $0e
    dec c
    inc l
    ld c, $0e
    inc c
    inc l
    inc c
    ld [$2a0c], sp
    inc c
    ld a, [bc]
    ld a, [bc]
    inc l
    ld a, [bc]
    inc l
    ld a, [bc]
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    inc l

jr_017_7e12:
    ld a, [bc]
    ld a, [hl+]
    inc c
    ld a, [bc]
    dec bc
    dec c
    dec bc
    dec c
    dec c
    dec bc

jr_017_7e1c:
    dec c
    dec bc
    dec l
    dec l
    dec bc
    dec bc
    dec bc
    dec c
    dec bc
    dec bc
    adc l
    xor l
    adc l
    xor l
    xor l
    xor l
    xor l
    xor l
    dec l
    dec l
    ld a, [hl+]
    ld a, [hl+]
    dec c
    dec c
    dec hl
    dec hl
    ld c, h
    ld c, h
    jr z, @+$0e

    ld [$684c], sp
    ld [$0c08], sp
    ld [$280c], sp
    jr z, jr_017_7e71

    jr z, jr_017_7eb3

    inc l
    ld c, h
    ld l, h
    ld l, b
    inc c
    inc l
    inc c
    jr z, jr_017_7e58

    ld [$6c0c], sp
    ld c, h
    inc l
    ld [$4c0c], sp

jr_017_7e58:
    ld c, h
    ld c, h
    ld l, h
    ld [$6808], sp
    jr z, jr_017_7e6b

    jr z, jr_017_7e6d

    dec bc
    inc c
    dec c
    inc c
    dec bc
    dec bc
    dec bc
    dec c
    dec bc

jr_017_7e6b:
    dec bc
    dec l

jr_017_7e6d:
    dec bc
    dec l
    dec bc
    dec l

jr_017_7e71:
    dec bc
    dec c
    dec l
    dec l
    dec l
    inc l
    inc c
    ld l, h
    ld c, h
    ld c, h
    ld c, h
    inc c
    inc c
    jr z, jr_017_7ea8

    inc l
    ld [$2808], sp
    ld [$080c], sp
    inc l
    inc l
    inc l
    ld [$0c68], sp
    inc l
    ld [$2c28], sp
    inc l
    ld c, h
    ld c, h
    jr z, jr_017_7ebe

    ld c, h
    ld c, h
    ld [$0c28], sp
    ld l, $0c
    ld l, $0b
    dec c
    dec l
    dec c
    dec c
    dec bc
    dec c
    dec c
    inc l
    inc l

jr_017_7ea8:
    inc l
    dec l
    ld [$2808], sp
    jr z, jr_017_7eb7

    jr z, @+$2a

    jr z, jr_017_7ebb

jr_017_7eb3:
    ld [$0828], sp
    dec bc

jr_017_7eb7:
    jr z, jr_017_7ec4

    jr z, jr_017_7ee3

jr_017_7ebb:
    ld [$0808], sp

jr_017_7ebe:
    inc l
    inc l
    inc c
    ld [$0b0b], sp

jr_017_7ec4:
    ld [$0b08], sp
    ld [$2808], sp
    jr z, @+$0a

    jr z, jr_017_7ef6

    ld [$0808], sp
    dec bc
    ld [$0b28], sp
    jr z, jr_017_7ee3

    dec c
    ld [$2d0d], sp
    inc c
    dec l
    ld [$2828], sp
    ld [$0808], sp

jr_017_7ee3:
    ld [$0c08], sp
    ld c, $0e
    ld l, $0e
    ld l, $2f
    ld l, $2e
    rrca
    ld c, $0e
    ld c, $0b
    dec c
    dec c
    dec c

jr_017_7ef6:
    ld l, $0e
    ld c, $0e
    ld l, $2e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    dec bc
    dec bc
    rrca
    rrca
    cpl
    cpl
    ld l, a
    ld l, a
    rrca
    ld l, a
    ld l, a
    ld c, a
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rrca
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc h
    adc h
    adc h
    adc h
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    xor h
    xor h
    xor h
    xor h
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

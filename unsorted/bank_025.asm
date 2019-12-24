; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $025", ROMX

    ccf
    db $fd
    cpl
    ld l, a
    ld de, $1248
    ld l, l
    cp $f8
    db $fd
    ld d, e
    ld b, b
    ld b, b
    ld h, e
    db $e3
    rst $38
    db $fd
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    db $38, $e0
    ld de, $fdfd
    scf
    ld d, e
    db $fd
    db $fd
    db $fd
    cpl
    cpl
    cpl
    ld a, $f8
    db $fd
    ld d, e
    ld b, a
    ld de, $1111
    ld d, e
    ldh [$83], a
    db $fd
    ld d, d
    ld de, $1111
    ld d, e
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    rrca
    cp $fd
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    cp a
    rlca
    db $fd
    and a
    ld sp, $3030
    jr nc, jr_025_40b5

    jr jr_025_40b1

    db $fd
    and a
    ld h, l
    inc [hl]
    ld d, d
    and d
    and e
    and h
    ld a, [c]
    ld de, $530f
    ld d, d
    db $10
    call z, $b20f
    or e
    or h
    ld de, $5311

jr_025_4067:
    db $fd
    db $fd
    ld d, d
    ld de, $5011
    jp nz, Jump_025_530f

    db $fd
    db $fd
    ld d, d
    ld de, $1111
    ld d, e
    db $fd
    db $fd
    ld d, d
    nop
    ccf
    ld b, b
    ld de, $0f11
    rrca
    ld d, e
    db $fd
    db $fd
    ld b, c
    ld b, h
    db $fd
    cp $30
    ld sp, $c4e0
    ld [hl-], a
    add b
    ld d, d
    pop af

jr_025_4090:
    sub [hl]
    daa
    ld hl, sp+$16
    ld d, d
    sub [hl]
    call nz, $f81c
    call nz, $01c4
    ld h, d
    ld b, d
    ld c, $c4
    reti


    ld hl, sp-$08
    ld hl, sp+$01
    jr c, @-$3a

    ld d, b
    ld d, d
    reti


Jump_025_40aa:
    ld hl, sp-$08
    ldh a, [rLCDC]
    ld hl, sp+$01
    or c

jr_025_40b1:
    ld h, d
    rrca
    ld b, b
    or c

jr_025_40b5:
    ld d, b
    ld d, h
    ld d, h
    ccf
    ld d, h
    or c
    or c
    rst $38
    or c
    inc b
    ld de, $812b
    jr jr_025_4067

    db $eb
    and h
    db $eb
    and l
    ld c, $16
    ld bc, $b4b3
    or h
    jr jr_025_4090

    ld bc, $b5b4
    dec hl
    ld c, $2b
    or $ea
    or $ea
    or $2b
    ld c, $55
    db $fc
    dec hl
    ld c, $0e
    ld c, $43
    ld c, $01
    db $fc
    rlca
    ld b, b
    dec hl
    ld d, e
    ld h, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ret nz

    rst $38
    or c
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld l, [hl]
    ld bc, $0e0e
    ld c, $74

jr_025_40ff:
    ld bc, $8019
    ld c, $0e
    or e
    ld bc, $7019
    ld c, $0f
    dec de
    inc e
    add b
    ld b, b
    ld b, b
    nop
    ld b, d
    rst $20
    reti


    inc b
    rra
    jr nz, jr_025_4138

    ld [hl], b
    inc bc
    ld d, h
    ld d, d
    reti


    reti


    inc b
    ld [hli], a
    inc hl
    ldh [rLCDC], a
    inc h
    add b
    or c
    or c
    ld h, d
    rrca
    ld b, b
    or c
    or c
    ld d, b
    ld d, h
    ccf
    ld d, h
    or c
    or c
    rst $38
    or c
    xor c
    add c
    inc b
    add b
    add b

jr_025_4138:
    add b
    jr nc, jr_025_40ff

    dec hl
    sbc c
    ld [hl], c
    inc b
    ld [hl], e
    ld [hl], h
    add e
    call nz, $2b2b
    add c
    inc b
    inc b
    adc b
    inc b
    add e
    add h
    call nz, $2b2b
    ld [hl], c
    ld [hl], e
    inc b
    dec d
    rla
    ld [hl], b
    add [hl]
    call nz, $1581
    ld c, $01
    rla
    db $fc
    ld b, b
    call nz, $0f80
    ld b, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ccf
    ld d, h
    or c
    or c
    rst $38
    or c
    ccf
    sbc d
    adc c
    adc e
    inc c
    dec hl
    sbc e
    add b
    and [hl]
    db $eb
    xor b
    and c
    jr nc, jr_025_41a5

    sbc c
    sbc e
    inc b
    ld sp, $b7b6
    nop
    cp b
    ld [$b9ba], a
    cp e
    ld d, d
    ld [hl], c
    dec hl
    ld [hl], b
    dec bc
    or $ea
    or $1d
    ld d, d
    ld c, $2b
    add c
    cp c
    add hl, bc
    call c, $38dc
    dec hl
    call c, Call_025_4262
    cp c
    add hl, bc
    and b
    jp z, $dcdc

    pop af
    ld b, l
    ld d, d

jr_025_41a5:
    rrc h
    call c, $09b9
    ld [$626a], sp
    ld b, b
    ld a, a
    ld b, b
    ld h, e
    rst $38
    rrca
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    cp [hl]
    rst $38
    inc b
    db $f4
    db $f4
    ldh a, [$fb]
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp a
    inc b
    db $f4
    db $f4
    rst $38
    rst $38
    inc b
    rst $38
    rrca
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    cp [hl]
    rst $38
    inc b
    db $f4
    db $f4
    ldh a, [$fb]
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp a
    inc b
    db $f4
    db $f4
    rst $38
    rst $38
    inc b
    rst $38
    rrca
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    cp [hl]
    rst $38
    inc b
    db $f4
    db $f4
    ldh a, [$fb]
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp a
    inc b
    db $f4
    db $f4
    rst $38
    rst $38
    inc b
    rst $38
    rrca
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    cp [hl]
    rst $38
    inc b
    db $f4

Call_025_4210:
    db $f4
    ldh a, [$fb]
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp a
    inc b
    db $f4
    db $f4
    rst $38
    rst $38
    inc b
    rst $38
    rrca
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    cp [hl]
    rst $38
    inc b
    db $f4
    db $f4
    ldh a, [$fb]
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp a
    inc b
    db $f4
    db $f4
    rst $38
    rst $38
    inc b
    rst $38
    rrca
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    cp [hl]
    rst $38
    inc b
    db $f4
    db $f4
    ldh a, [$fb]
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    cp a
    inc b
    db $f4
    db $f4
    rst $38
    rst $38
    inc b
    ld a, [hl]
    ld h, a
    ld [hl], h
    ld [hl], l
    db $76
    ld l, b
    ld a, e
    ld a, [hl]
    ld a, a

Call_025_4262:
    ld a, l
    ld a, h
    ld d, d
    add h
    add l
    add [hl]
    ld d, e
    ld a, a
    ld a, a
    ld a, l
    ld a, h
    ld h, a
    ld d, d
    sub h
    db $ed
    sub [hl]
    ld d, e
    ld l, b
    ld h, a
    jr nc, jr_025_42a7

    ld d, d
    ld d, d
    dec l
    dec l
    dec l
    ld d, e
    ld d, e
    ld d, d
    cp c
    cp b
    ld d, d
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld h, e
    ld d, e
    ld d, d
    cp b
    cp c
    ld d, d
    ld d, b
    ld d, c
    ret nc

    ld d, b

jr_025_4290:
    ld d, c
    ld d, e
    ld d, d
    cp c
    cp b
    ld d, d
    dec l
    dec l
    ld de, $2d2d
    ld d, e
    ld d, d
    cp c
    cp c
    ld d, d
    dec l
    ld de, $1111
    dec l
    ld d, e
    ld h, d

jr_025_42a7:
    ld b, b
    ld b, b
    ldh a, [$30]
    ld a, e
    ld a, a
    ld a, l
    ld h, a
    ld a, [bc]
    ld a, h
    ld e, h
    ld a, l
    ld a, e
    ld d, d
    dec l
    ld de, $3070
    ld de, $3e2d
    ld a, $52
    ld c, $2b
    ld de, $3f3f
    cp c
    cp c
    and b
    ld a, a
    cp c
    ld d, d
    add hl, hl
    ld a, [hl]
    ld a, l
    ld c, b
    inc bc
    cp b
    cp c
    push af
    ret nc

    dec [hl]
    ld [hl], $ff
    jr jr_025_4290

    or $30
    cp b
    ld l, e
    ret nc

    ld d, b
    ret nc

    cp c
    ld c, h
    cp $5d
    ld a, [hl]
    cp b
    nop
    cp c
    add hl, hl
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld b, d
    cp b
    rlca
    cp b
    add hl, hl
    ld a, e

jr_025_42f1:
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [bc]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, e

jr_025_42f9:
    ld a, a
    ld e, e
    jr nc, jr_025_42f9

    ld a, $30
    jr nc, jr_025_42f1

    ccf
    ld a, $2d
    dec l
    ld de, $3f07
    dec l
    ld de, $7e2d
    ld a, l
    ld h, b
    dec l
    ld a, [hl]
    ld a, e
    ld a, h
    ld a, l
    ld b, a
    ld de, $3021
    ld l, b
    ld a, [hl]
    ld a, l
    ld h, a
    ld h, d
    ld [hl], $24
    ld a, a
    ret nc

    dec [hl]
    ld d, e
    ld a, h
    ld d, d
    dec l
    sub b
    ld a, [hl]
    ld d, b
    ld d, c
    ret nc

    ld b, l
    ld d, e
    ld a, l
    ld a, [de]
    dec l
    ld d, d
    ld de, $7b48
    ld d, e
    jr z, jr_025_4347

    jr nc, jr_025_43a0

    ld d, d
    dec l
    dec l
    ld d, e
    rrca
    jr nc, @+$54

    ld a, l
    jp z, $34cb

    dec l
    call z, $117d

jr_025_4347:
    ld d, d
    rst $00
    ld d, b
    ld de, $8988
    adc d
    call $2d2d
    ret nz

    ld de, $c852
    ld [hl], b
    rst $38
    ld [hl], c
    adc $03
    dec hl
    ld d, d
    ret


    add b
    cp $81
    rst $08
    ld b, h
    ld a, h
    ld b, d
    add hl, hl
    ld a, e
    ld d, d
    ld a, l
    ld a, l
    ld de, $7f7e
    ld d, d
    add hl, hl
    ld a, l
    ld h, d
    ld b, b
    rrca
    ld b, b
    ld d, d
    add hl, hl
    ld a, a
    ld a, e
    ld de, $5445
    ld b, [hl]
    add sp, $54
    ld d, d
    add hl, hl
    ld b, h
    ld b, l
    ld a, e
    ld a, [hl]
    ld d, h
    ld b, [hl]
    ret nc

    ld d, h
    inc c
    ld bc, $7dcb
    jp z, Jump_025_7fcc

    ld a, l
    jp z, $c7cc

    adc b
    adc c
    ld [hl], a
    adc d
    call $10c0
    rst $38
    rst $00
    adc b
    adc c
    adc d
    ret z

    ld [hl], b

jr_025_43a0:
    ld [hl], c
    adc $c8
    ld [hl], b
    ld [hl], c
    ret


    add b
    ld b, e
    nop
    cp $81
    rst $08
    ret


    add b
    add c
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld a, a
    ld a, [hl]
    ld a, e
    ld a, b
    ldh [rIE], a
    ld a, h
    ld a, l
    ld [hl], $35
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, [hl]
    add c
    rlca
    rst $38
    ld b, l
    ld d, h
    add sp, $54
    ld d, h
    ld b, [hl]
    ld b, l
    ld l, c
    ld de, $2d2d
    ld c, b
    ld a, h
    ld a, [hl]
    ld d, e
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ldh [$30], a
    ld a, [hl]
    ld a, l
    call Call_025_6753
    ld a, [bc]
    ld a, a
    ld l, b
    ld a, h
    adc $53
    ld d, d
    dec l
    add h
    ld d, e
    and $2d
    ld a, h
    ld a, l
    ld a, [hl]
    rst $08
    ld c, $2d
    ld d, d
    ld d, e
    jr nc, jr_025_4426

    ld l, b
    nop
    ld a, e
    ld d, e
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld h, e
    dec l
    sub b
    ld d, b
    dec l
    ld d, e
    ld b, b
    ld h, e
    ld d, c
    ret nc

    ld b, h
    dec l
    ld d, c
    ld de, $5453
    ld d, c
    db $f4
    ld e, $11
    dec l
    ld d, e
    dec l
    dec l
    inc h
    ld [hl], $2d
    ld b, e
    ret nc

    dec [hl]
    ret nc

    or $fe
    ld bc, $6730
    ld l, b
    ld d, d
    db $e3
    dec l

jr_025_4426:
    inc l
    ld a, e
    ld a, [hl]
    inc h
    nop
    dec l
    ld a, l
    jr z, jr_025_4482

    ld d, d
    add hl, hl
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, [hli]
    dec hl
    ld d, e
    ld d, d
    ld de, $1050
    ld a, e
    add hl, hl
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, h
    ld d, e
    ld d, d
    ld de, $272d
    ld a, h
    ld a, l
    ld a, a
    ld [$2d60], sp
    ld a, l
    ld d, e
    ld d, d
    ld de, $7e29
    ld a, a
    ld a, h
    ld a, a
    ld a, e
    ld d, e
    ld d, d
    add hl, hl
    jr nz, jr_025_449c

    ld h, e
    ld a, a
    ld a, h
    ld a, l
    ld a, h
    ld c, [hl]
    ld h, d
    ld b, b
    ld [hl], $d0
    ld l, l
    rst $38
    rst $38
    dec [hl]
    ld b, [hl]
    sub b
    sub c
    and b
    and c
    sub b
    sub c
    xor b
    sbc b
    ld a, h
    ld a, a
    and b
    and c
    dec b
    rlca
    and b
    and c
    xor b
    sbc b
    sub b
    sub c
    ld a, e
    dec b
    inc b

jr_025_4482:
    inc b
    rlca
    ld a, a
    xor b
    sbc b
    and b
    and c
    ld a, [hl]
    ld [$0404], sp
    add hl, bc
    ld a, l
    xor b
    sbc b
    ld a, e
    ld a, h
    ld a, h
    ld [$73a5], sp
    ret nc

    ld [hl], h
    and h
    sbc b
    daa

jr_025_449c:
    ld a, [hl]
    ld a, l
    ld [$99a8], sp
    ret nc

    sbc d
    sbc d
    sbc e
    add hl, hl
    ld a, h
    ld a, a
    ld [$98a8], sp
    add e
    dec l
    ld de, $292d
    ld a, l
    ld a, h
    ld [$98a8], sp
    add e
    add e
    dec l
    ld de, $7e29
    ld c, $00
    adc l
    jp nc, $d2d4

Jump_025_44c1:
    adc [hl]
    ld a, l
    ld d, d
    ld d, e
    db $d3
    dec a
    ld a, $3f
    db $d3
    db $d3
    db $10
    ld b, e
    db $d3
    ld a, a
    ld a, e
    ld h, [hl]
    ld d, [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, d
    ld d, e
    ld a, h
    ld a, e
    ld e, l
    nop
    ld c, d
    adc l
    ld e, [hl]
    ld e, a
    db $d3
    db $d3
    ld h, [hl]
    ld d, [hl]
    ld d, d
    ld d, e
    adc h
    ld [hl], a
    adc [hl]
    adc h
    call nc, Call_025_4210
    db $d3
    ld h, d
    ld h, e
    ld a, d
    ld b, [hl]
    db $ec
    and b
    adc d
    adc a
    ld a, l
    ld d, d
    adc d
    adc a
    add h
    rlca
    ld e, $84
    db $d3
    ld a, a
    ld h, d
    ld a, a
    ld a, e
    db $d3
    db $d3
    ld a, h
    ld a, l
    jr nc, jr_025_4539

    ld sp, $8c32
    adc [hl]
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld b, b
    ld b, c
    or b
    or c
    or d
    or e
    or h
    or l
    ld b, h
    ld b, l
    ld d, b
    ld d, c
    or [hl]
    or a
    call c, $dedd
    rst JumpTable
    ld d, c
    ld d, l
    ld h, b
    ld h, c
    ld b, d
    ld [hl], b
    rst $28
    rst $28
    ld [hl], c
    ld b, e
    ld h, c
    ld h, l
    ld a, [hl]
    ld a, l
    ld [hl], d
    add b
    ld d, h
    adc e
    add c
    ld [hl], d
    ld a, e
    ld d, d
    ld d, e

jr_025_4539:
    adc b
    add d
    add d
    ld l, l
    ld [hl], $82
    add d
    adc b
    ld h, d
    ld h, e
    db $d3
    ld a, h
    ld a, l
    ld l, l
    ld [hl], $7d
    ld a, [hl]
    db $d3
    ld a, l
    ld a, h
    db $d3
    ld d, d
    ld d, e
    ld l, l
    ld [hl], $52
    ld d, e
    db $d3
    ld a, e
    ld hl, sp+$61
    adc l
    ld a, e
    db $d3
    jp nc, Jump_025_7dd4

    db $d3
    adc h
    call nc, $a228
    db $d3
    ld a, [hl-]
    dec sp
    inc a
    ld a, e
    ld [hl], e
    db $ed
    sub d
    ld d, a
    ld e, b
    ld e, c
    ld a, l
    nop
    inc e
    add h
    ld l, h
    ld h, h
    ld l, h
    db $d3
    ld h, a
    ld l, b
    ld l, c
    db $d3
    ld d, e
    db $d3
    adc h
    adc l
    adc l
    ld [hl], b
    add b
    add h
    ld [hl], a
    adc [hl]
    ld h, e
    db $d3
    adc d
    adc a
    adc a
    db $d3
    sub b
    ld a, l
    adc h
    call nc, $1e0f
    add h
    db $d3
    and b
    ld a, e
    adc d
    db $d3
    ld l, h
    db $d3
    ld a, a
    cp h
    cp l
    cp e
    ld sp, $3332
    inc [hl]
    cp d
    cp h
    cp l
    cp l
    cp e
    dec bc
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rrca
    cp d
    cp h
    cp e
    dec bc
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rrca
    cp d
    xor e
    add hl, bc
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, [bc]
    xor d
    cp h
    xor e
    add hl, bc
    ld [$0808], sp
    ld [$aa0a], sp
    cp l
    cp l
    cp e
    inc b
    ld c, $04
    ld c, $0e
    inc b
    cp d
    cp h
    cp h
    xor e
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    xor d
    cp l
    cp l
    cp h
    xor e
    dec c
    dec c
    dec c
    dec c
    xor d
    cp l
    cp h
    cp l
    cp e
    cp d
    jr c, jr_025_4627

    ld a, [hl-]
    dec sp
    cp e
    cp d
    cp h
    cp e
    ld de, $4847
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [de], a
    cp d
    xor e
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [hl], $aa
    cp e
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld b, [hl]
    cp d
    xor e
    add hl, bc
    ld [$7913], sp
    ld a, d
    ld a, e
    ld [$aa0a], sp
    cp e
    push hl
    inc b
    add hl, bc
    ld [$0a08], sp
    inc b
    push hl
    cp d
    xor e
    push hl

jr_025_4627:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    push hl
    xor d
    cp h
    xor e
    inc c
    dec c
    dec c
    dec c
    ld c, $0c
    xor d
    cp l
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38

jr_025_4652:
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    inc l
    ld l, b
    dec l
    ld d, d
    ld de, $5311
    ld c, e
    ld d, h
    ld d, h
    ld d, d
    ld de, $8011
    inc bc
    ld b, b
    ld d, e
    ld a, e
    ld a, [hl]
    ld a, e
    push af
    ret nc

    dec [hl]
    ld h, e
    ld a, l
    ld a, a
    ld a, [hl]
    ld l, h
    ret nc

    ld c, $38
    ld d, h
    ld b, l
    ld b, [hl]
    ld a, h
    ld a, e
    ld a, h
    ld l, h
    ret nc

    ld d, b
    ld c, h
    ld a, [hl]
    jr nz, jr_025_4652

    ld de, $7e7f
    ld b, a
    dec l
    dec l
    add hl, hl
    ld a, e
    sub b
    sub c
    ld a, h
    ld a, e
    ld d, d
    dec l
    add b
    jr c, jr_025_46e3

    add hl, hl
    ld a, l
    and b
    and c
    ld a, [hl]
    ld a, l
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld [hl], $ff
    ld d, d
    cp c
    cp b
    cp b
    cp b
    add hl, hl
    ld a, l
    ld a, h
    ld a, a
    ld a, [hl]
    ld d, d
    cp c
    cp c
    cp b
    cp b
    add hl, hl
    ld a, a
    ld a, h
    ld a, l
    ld a, h
    ld h, d
    ld b, b
    ld [hl], $d0
    dec [hl]
    ld b, b
    ld b, b
    ld [hl], $ff
    rst $38
    ld b, a
    add sp, $51
    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld c, h
    cp $fe
    ld d, d
    dec l
    dec l
    ld de, $7e29
    jr z, jr_025_4708

    ld a, e
    ld a, [hl]
    ld d, d
    dec l

jr_025_46e3:
    ld de, $2911
    ld a, h
    jr z, jr_025_4712

    ld a, l
    ld a, a
    ld h, d
    ld b, b
    ld b, d
    ld de, $3643
    ret nc

    dec [hl]
    ld b, b
    ld b, b
    ld b, l
    ld d, h
    ld d, d
    ld de, $4653
    ret nc

    ld b, l
    ld l, c
    ld l, d
    ld a, e
    ld d, e
    ld a, h
    ld d, e
    ld d, d
    ld de, $1111
    dec l

jr_025_4708:
    ld d, e
    ld a, a
    ld d, e
    ld a, l
    ld d, e
    ld d, d
    dec l
    ld de, $2d2d

jr_025_4712:
    ld d, e
    rst $38
    or $7c
    ld d, e
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld b, b
    ld h, e
    cp $5d
    ld a, l
    ld d, e
    ld b, l
    ld b, [hl]
    ret nc

    ld b, l
    ld d, h
    ld b, [hl]
    ld a, e
    ld a, a
    ld a, [hl]
    ld d, e
    ld b, l
    ld b, [hl]
    ret nc

    ld b, l
    ld d, h
    ld b, [hl]
    ld a, [hl]
    ld a, l
    ld a, h
    ld d, e
    ld c, e
    ld d, c
    ret nc

    ld d, b
    db $ec
    ld d, c
    ld [hl], $ff
    rst $38
    or $7c
    ld [$0413], sp
    inc b
    ld h, h
    ld b, [hl]
    rst $38
    rst $38
    ld l, h
    ld a, [hl]
    ld [$0413], sp
    ld e, [hl]
    ld e, a
    ld [bc], a
    ld [$5229], sp
    ld a, a
    ld a, [hl]
    ld c, e
    ld d, h
    ld d, c
    ret nc

    ld d, b
    ld d, h
    ld d, d
    ld a, l
    ld a, a
    ld a, h
    ld h, h
    rlca
    inc d
    inc b
    ld l, d
    ld d, d
    add hl, hl
    ld a, e
    ld a, h
    ld a, a
    jp hl


    and $53
    ld d, d
    ret nc

    ld [hl], b
    nop
    inc b
    ld l, l
    rst $38
    dec [hl]
    ld b, d
    ld d, e
    ld d, d
    ret nc

    ld e, l
    cp $4b
    ld h, d
    ld b, b
    ld b, b
    nop
    rlca
    ld d, h
    ld b, b

jr_025_4782:
    ld h, e
    ld d, d
    dec l
    add hl, hl
    ld a, [hl]
    ld a, l
    ld c, e
    ld c, h
    ld d, d
    dec l
    add hl, hl
    dec a
    nop
    ldh a, [rLCDC]
    dec a
    jr z, @+$13

    dec l
    ld de, $f52d
    ret nc

    ld l, l
    rst $38
    rst $38
    dec [hl]
    ld e, $ff
    ld b, [hl]
    ld b, l
    ld d, d
    dec l
    ld a, b
    cp $11
    ld de, $4b4c
    ld b, $2d
    ld d, d
    ld de, $7c7b
    ld a, l
    ld a, [hl]
    jr c, @+$42

    ld a, a
    jr z, @+$64

    ld a, l
    ld a, [hl]
    ldh [rHDMA4], a
    ld a, a
    ld a, e
    ld a, h
    jr z, @+$52

    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    jr z, @-$0c

    ld de, $1100
    dec l
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    jr z, jr_025_4782

    ld h, $11
    ld de, $432d
    db $f4
    ld a, [de]
    dec l
    ld h, $11
    ld d, e
    ld b, b
    ld b, b
    ld [hl], c
    ld b, b
    ld [hl], $11
    dec [hl]
    ld h, e
    inc bc
    ld de, $532d
    ld d, c
    ret nc

    ld b, l
    ld b, [hl]
    ret c

    dec l
    ret nc

    ld l, e
    ld de, $7053
    ld b, b
    ld c, b
    ld b, a
    ld de, $632d
    ld hl, $2d11
    ld d, e
    ld d, d
    dec l
    ld d, h
    ld d, h
    nop
    ld d, h
    ld d, c
    dec l
    ld de, $f553
    ret nc

    dec [hl]
    dec a
    dec l
    ld de, $5d53
    db $fc
    ld b, b
    ret nc

    ld c, e
    ldh a, [rHDMA4]
    ld h, e
    ld [$7d09], sp
    inc bc
    ld d, h
    ld c, h
    ld [$7b09], sp
    ld a, e
    ld a, h
    adc c
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld [$5009], sp
    ld d, h
    ld d, c
    ret nc

    ld l, h
    rst $38
    rst $38
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld de, $f42d
    dec l
    ld c, b
    rst $38

Call_025_4839:
    rst $38
    ld b, l
    ld b, [hl]
    ld c, h
    dec l
    ld de, $2df4
    ld d, e
    cp $fe
    ld c, e
    ld c, h
    ld a, [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    ld a, h
    ld a, e
    ld a, a
    ld a, l
    ld a, a
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld c, h
    ld a, h
    ld a, l
    dec b
    ld b, $06
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    dec b
    inc b
    inc b
    inc b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, h
    ld [$0404], sp
    inc b
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$1615], sp
    ld b, e
    ld a, [hl]
    ld [$98a8], sp
    dec l
    add e
    dec l
    ld de, $7d29
    ld a, h
    ld [$98a8], sp
    dec l
    add e
    add e
    dec l
    inc l
    ld a, h
    ld a, l
    ld [$98a8], sp
    dec l
    dec l
    add e
    add hl, hl
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld [$a9a8], sp
    xor e
    dec l
    add e
    add hl, hl
    ld a, e
    ld a, h
    ld b, $04
    sub l
    sub h
    sbc b
    dec l
    add e
    ld de, $7d27
    inc b
    inc b
    inc b
    xor b
    sbc b
    dec l
    add e
    dec l
    add hl, hl
    ld a, h
    inc b
    inc b
    inc b
    xor b
    sbc b
    dec l
    add e
    ld de, $7f2c
    and e
    and e
    and e
    and h
    sbc b
    dec l
    add e
    add hl, hl
    ld a, a
    ld a, [hl]
    ld a, b
    ldh [$84], a
    ld a, e
    ld a, [hl]
    db $d3
    adc h
    adc l
    call nc, Call_025_7f7e
    db $d3
    add c
    rra
    add h
    adc d
    adc a
    db $d3
    ld a, a
    jp nc, $d38e

    ld a, e
    db $d3
    ld a, [hl]
    db $fc
    add h
    and b
    db $d3
    ld a, l
    db $d3
    ldh a, [$c3]
    add h
    adc c
    db $76
    ld a, h
    db $d3
    adc d
    adc a
    ld a, [hl]
    db $d3
    ccf
    ld hl, sp-$7c
    jp nc, $8d8d

    adc l
    call nc, $8020
    ld [hl], $7b
    db $d3
    ld h, d
    ld h, e
    ld l, l
    ld h, d
    ld h, e
    db $d3
    ld a, l
    ld a, l
    adc h
    call nc, Call_025_6d7f
    sub b
    nop
    ld a, e
    ld a, l
    jp nc, Jump_025_528e

    adc d
    db $d3
    ld l, l
    ld [hl], $7c
    db $d3
    and b
    ld h, d
    ld a, a
    jp nc, $2008

    ld [hl], $76
    call nc, $d26d
    db $76
    call nc, $8d7e
    adc [hl]
    adc a
    ld a, b
    ld l, l
    ld a, b
    adc a
    db $10
    ld a, [c]
    add h
    adc h
    adc l
    adc a
    and b
    add l
    ld l, l
    ld [hl], $85
    adc d
    adc a
    db $fc
    di
    add h
    ld l, l
    ld [hl], $6d
    ld [hl], $78
    ldh [$84], a
    ld a, h
    jp nc, Jump_025_6c8e

    adc h
    call nc, $d353
    and b
    ld b, b
    ld c, b
    ld a, a
    add h
    add h
    adc d
    db $d3
    ld h, e
    db $d3
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, e
    db $d3
    adc h
    ld a, $f8
    add h
    call nc, $8ed2
    adc l
    adc l
    adc [hl]
    ldh [$f3], a
    add h
    db $d3
    sub b
    adc a
    adc a
    and b
    db $d3
    and b
    rst $00
    rlca
    add h
    ld l, h
    db $d3
    ld a, h
    jp nc, $8d8d

    db $76
    call nc, $0f03
    and [hl]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc a
    ldh a, [$a6]
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld bc, $6204
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    and [hl]
    and [hl]
    add h
    add l
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc b
    ld [$a67a], sp
    and [hl]
    ld a, e
    ld b, d
    ld h, e
    ld h, h
    ld h, l
    db $ec
    ld b, a
    ld a, e
    xor l
    xor h
    ld d, b
    ld b, b
    nop
    ld e, $80
    ld b, b
    ld b, b
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld h, b
    ld h, c
    cp l
    cp h
    inc bc
    rrca
    and [hl]
    ld b, d
    ld h, e
    ld h, h
    ld h, l
    db $ec
    ld b, a
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    inc a
    ldh a, [$a6]
    ld b, b
    ld d, c
    ld h, b
    ld b, h
    ret nc

    inc [hl]
    add b
    ld h, c
    inc b
    db $10
    db $dd
    ld d, d
    ld d, e
    ld [hl], l
    ld d, [hl]
    ld d, a
    sub h
    sub l
    add h
    add l
    ld h, d
    ld h, e
    ld h, l
    ld h, [hl]
    ld h, a
    inc b
    ld [$a67a], sp
    and [hl]
    ld a, e
    ld b, d
    ld h, e
    db $dd
    ld h, l
    db $ec
    ld b, a
    ld a, e
    xor l
    xor h
    ld d, b
    ld b, b
    nop
    ld e, $80
    ld b, c
    ld b, b
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld h, b
    ld h, c
    cp l
    cp h
    nop
    add h
    add l
    ld b, d
    ld h, e
    ld h, h
    ld h, l
    db $ec
    ld b, a
    rrca
    and [hl]
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    inc a
    and [hl]
    ld b, b
    ld d, c
    ld h, b
    ld b, h
    nop
    ret nc

    inc [hl]
    add b
    ld h, c
    sub h
    sub l
    add h
    add l
    ret nz

    and [hl]
    ld d, d
    inc sp
    sbc $35
    ld d, [hl]
    ld d, a
    inc bc
    and [hl]
    ld h, d
    ld d, b
    ld b, b
    ld d, c
    ld h, [hl]
    ld h, a
    inc bc
    and [hl]
    ld a, d
    ld a, e
    ld b, d
    ld [hl], b
    rst JumpTable
    ld [hl], c
    nop
    db $ec
    ld b, a
    ld a, e
    ld a, d
    xor l
    xor h
    ld d, b
    ld b, b
    rlca
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld e, $80
    ld h, b
    ld h, c
    cp l
    cp h
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    ld [c], a
    adc b
    ld d, h
    ld b, l
    ld b, [hl]
    ret nc

    ld b, l
    ld b, [hl]
    rst $38
    ld d, b
    ld d, c
    ret nc

    ld d, b
    nop
    add hl, bc
    inc b
    ld d, h
    ld d, h
    ld c, h
    cp $5f
    jr jr_025_4a90

    add hl, de

jr_025_4a90:
    ld e, [hl]
    ld e, a
    add hl, bc
    ld a, [hl]
    ld l, a
    jr jr_025_4ab7

    ld hl, $e65f
    add hl, de
    inc b
    ld l, [hl]
    ld h, b
    add hl, bc
    ld a, h
    ld a, [de]
    dec de
    inc e
    ld e, [hl]
    ld l, [hl]
    ld l, a
    jr c, @+$09

    inc b
    add hl, bc
    ld a, a
    ld l, a
    ld l, [hl]
    ld l, a
    ld b, $30
    jr nc, jr_025_4ae2

    jr nc, jr_025_4af2

    nop
    dec bc
    inc [hl]

jr_025_4ab7:
    ld b, e
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    ld a, e
    ld a, h
    sub b
    sub c
    ld a, l
    ld b, l
    ld d, h
    ld d, d
    ld de, $5153
    ret nc

    ld d, b
    ld d, d
    ld d, e
    ld c, e
    ld d, h
    ld e, c
    ld [$045a], a
    inc de
    add hl, bc
    ld h, d
    ld h, e
    ld a, l
    ld a, [hl]
    ld b, l
    ld d, h
    ld b, [hl]
    inc b
    inc de
    add hl, bc
    ld c, e
    ld c, h
    ld a, [hl]
    ld a, a
    ld c, e

jr_025_4ae2:
    ld d, h
    ld c, h
    inc b
    inc de
    add hl, bc
    ld a, h
    ld a, e
    ld a, e
    ld a, h
    ld [$0413], sp
    inc b
    inc de
    add hl, bc
    ld a, a

jr_025_4af2:
    ld a, l
    ld b, $06
    inc b
    ld a, [de]
    inc d
    inc d
    ld bc, $0617
    ld b, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, $18
    ld bc, $1616
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$0118], sp
    dec c
    ld bc, $fe4c
    cp $5d
    ld a, [hl]
    ld [$1718], sp
    ld l, [hl]
    ld l, a
    ld a, e
    call nz, $c6c5
    ld a, h
    ld [$1918], sp
    ld e, [hl]
    ld e, a
    ld a, l
    jp $8584


    ld a, [hl]
    ld [$191a], sp
    ld l, [hl]
    ld h, b
    ld a, a
    sub e
    rst $28
    sub l
    ld a, h
    ld [$1804], sp
    rla
    ld l, [hl]
    ld a, l
    ld a, h
    sub h
    ld a, e
    dec b
    inc b
    inc b
    jr @+$1b

    ld e, [hl]
    ld b, $06
    inc b
    ld b, $04
    dec d
    inc d
    dec de
    inc e
    ld l, [hl]
    ld d, $16
    ld d, $16
    ld d, $19
    dec e
    dec bc
    dec bc
    ld sp, $0d01
    ld bc, $010e
    add hl, de
    add hl, bc
    ld a, h
    ld a, e
    ld d, d
    ld l, h
    ret nc

    ld l, h
    rst $38
    rst $38
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld l, e
    ret nc

    ld e, l
    cp $fe
    ld c, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld e, a
    inc de
    add hl, bc
    ld a, h
    ld a, l
    ld a, h
    ld a, [hl]
    call nz, $c6c5
    ld l, a
    inc de
    add hl, bc
    ld a, a
    ld a, e
    ld a, h
    ld a, e
    jp $8584


    ld e, a
    jr jr_025_4ba3

    ld b, $07
    ld a, [hl]
    ld a, l
    sub e
    rst $28
    sub l
    ld l, a
    jr @+$1b

    inc b
    add hl, bc
    ld a, h
    ld a, l
    ld a, h
    sub h
    ld a, e
    inc [hl]
    ld a, [de]
    ld bc, $0917
    ld a, [hl]

jr_025_4ba3:
    dec b
    ld b, $04
    ld b, $33
    inc [hl]
    jr jr_025_4bc7

    add hl, bc
    ld a, a
    ld [$1615], sp
    ld d, $83
    ld d, h
    ld l, c
    ld d, c
    dec l
    ld d, b
    ld l, d
    ldh [$2d], a
    ld d, h
    ld b, [hl]
    ld d, h
    ld d, h
    ld d, d
    ld b, $54
    ld d, e
    ld c, h
    ld a, h
    ld a, a
    ld d, d
    dec l

jr_025_4bc7:
    ld h, b
    ld a, l
    rst $20
    dec l
    ld d, e
    ld a, e
    ld a, h
    ld a, [hl]
    ld c, $40
    ld h, d
    ld h, e
    ld a, l
    ld a, [hl]
    ld a, a
    jr c, jr_025_4c2c

    ld a, a
    ld a, h
    ld c, e
    ld c, h
    ld a, h
    and h
    ld a, h
    dec b
    ld b, $7f
    ld a, l
    ld a, a

jr_025_4be4:
    jr nc, jr_025_4bec

    ld a, l
    ld a, a
    ld [$0704], sp
    dec a

jr_025_4bec:
    rlca
    dec a
    dec b
    inc b
    dec d
    ld d, $17
    ld [de], a
    ld a, h
    add hl, bc
    ld a, l
    ld a, a
    ld [$0115], sp
    jr z, jr_025_4c78

    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, h
    ld [$06c0], sp
    add hl, bc
    ld a, e
    sub b
    sub c
    ld a, l
    dec b
    ld b, $04
    ld b, $06
    and b
    and c
    ld a, e
    ld [$161e], sp
    dec d
    inc d
    ld a, h
    ld a, a
    nop
    ld a, l
    ld [$0d18], sp
    ld bc, $1c1b
    inc b
    rlca
    ld b, $04
    jr jr_025_4c28

    inc e

jr_025_4c28:
    inc b
    rlca
    inc b
    dec d

jr_025_4c2c:
    ld d, $16
    dec c
    add hl, de
    rlca
    inc b
    dec d
    ld d, $0e
    ld bc, $c10e
    ld bc, $141b

jr_025_4c3b:
    ld d, $16
    dec de
    sbc b
    inc b
    dec c
    ld bc, $1819
    add hl, de
    nop
    db $fc
    ld b, $7d
    ld a, [hl]
    ld a, e
    ld a, a
    ld a, h
    ld a, e
    ld [$f818], sp
    xor b
    ld b, b
    ld b, d
    inc b
    dec d
    ld c, $f8
    xor b
    inc d
    rla
    ld e, [hl]
    ld e, a
    jr @-$06

    ld hl, sp-$58
    inc de
    jr nz, jr_025_4be4

    ld c, $5e
    ld h, c
    ld l, a
    dec d
    dec c
    ld hl, sp-$58
    inc b
    inc de
    ld l, [hl]
    ld h, b
    ld e, a
    ld a, [de]
    ld bc, $6008
    ld bc, $a8f8

jr_025_4c78:
    ld d, $17
    ld l, [hl]
    ld l, a
    inc b
    jr @-$06

    ld hl, sp-$6b
    dec de
    ld d, $00
    ld d, h
    dec c
    rla
    inc b
    jr @+$10

    ld hl, sp+$17
    inc b
    jr @+$03

    ld c, $14
    ld c, $19
    ld c, $9a
    sbc c
    sbc e
    ld de, $2983
    add hl, bc
    ld a, e
    ld a, a
    sbc b
    ld a, h
    jr z, jr_025_4cb2

    dec l
    inc h
    ld a, l
    add e
    add hl, hl
    ld a, [hl]
    sbc b
    ld a, [hl]
    ld a, [hli]
    inc bc
    ld de, $2983
    ld a, h
    ld a, e
    sbc b
    ld a, e

jr_025_4cb2:
    jr z, jr_025_4ce1

    ld a, h
    ld a, l
    jr z, jr_025_4c3b

    daa
    ld a, [hl]
    ld e, $aa
    xor c
    xor e
    add e
    add e
    inc a
    sub e

Jump_025_4cc2:
    add hl, hl
    ld a, e
    sub h
    sbc b
    ldh a, [rDIV]
    dec l
    add e
    add hl, hl
    ld a, [hl]
    ret nz

    inc b
    xor b
    sbc b
    dec l
    add e
    add hl, hl
    ld a, a
    inc bc
    inc b
    xor b
    sbc b
    dec l
    add e
    add hl, hl
    ld a, [hl]
    ldh [$84], a
    db $d3
    ld a, [hl-]
    dec sp

jr_025_4ce1:
    inc a
    db $d3
    add e
    add h
    db $d3
    ld c, d
    ld c, e
    ld c, h
    db $d3
    rrca
    add h
    db $d3
    ld e, d
    ld e, e
    ld e, h
    ld a, $84
    db $d3
    adc h
    ld [hl], a
    dec bc
    adc l
    db $76
    call nc, Call_025_7c7b
    ld a, l
    ld b, d
    db $d3
    ld a, d
    sub c
    db $ed
    sub d
    adc a
    ld a, a
    ld [hl], b
    add h
    jp nc, $8a8d

    db $d3
    rst $20
    jp nz, $878d

    add [hl]
    ld b, [hl]
    ld a, a
    adc h
    inc bc
    adc l
    add [hl]
    ld a, e
    db $d3
    adc a
    ld a, l
    ld a, d
    rrca
    ld b, [hl]
    ld a, b
    rst $38
    ld a, b
    ld a, a
    rst $08
    ccf
    add h
    ld l, l
    ld [hl], $6d
    ld [hl], $ff
    inc a
    add h
    ld l, l
    ld [hl], $7e
    jp nc, $0121

    adc l
    ld a, c
    ld l, l
    ld [hl], $89
    call nc, $8e7b
    ld b, [hl]
    sub b
    ld l, l
    ld [hl], $7a
    ld b, [hl]
    inc b
    ld [$8c46], sp
    adc l
    sub b
    adc b
    and b
    ld l, l
    ld [hl], $8a
    adc b
    ld a, d
    adc a
    and b
    db $d3
    add h
    inc b
    ld [de], a
    add h
    ld l, l
    ld [hl], $d3
    adc d
    adc a
    ld a, l
    ld a, a
    db $d3
    ld l, l
    ld [hl], $d3
    ld a, l
    ld a, [hl]
    rra
    ld a, h
    add h
    db $d3
    dec a
    ld a, $3f
    db $d3
    db $d3
    ldh a, [rSB]
    add h
    scf
    jr c, jr_025_4da7

    db $d3
    db $d3
    ld b, a
    ld c, b
    ld c, c
    db $d3
    ld a, h
    ld a, l
    rlca
    inc e
    add h
    adc h
    adc l
    adc l
    adc l
    add [hl]
    call nc, $8a7f
    sub c
    db $ed
    ret nz

    rlca
    add h
    sub d
    db $d3
    adc h
    ld [hl], a
    adc l
    call nc, Call_025_7ad3
    db $d3
    ld a, e
    add a
    ld bc, $8d30
    call nc, $8484
    jp nc, $8a8e

    ld a, b
    rst $38
    ld a, b
    ld b, [hl]
    adc h
    adc [hl]
    sub b
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l

jr_025_4da7:
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    adc d
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    sbc e
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    adc d
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    adc d
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    ld c, $54
    ld d, e
    ld c, h
    ld a, e
    ld a, h
    and b
    ld [de], a
    ld a, e
    and c
    ld d, e
    ld a, a
    sub b
    sub c
    ld a, [hl]
    ld [hli], a
    ld a, e
    ld a, a
    ld a, h
    ld a, l
    ld d, e
    ld a, h
    and b
    add d
    ld a, a
    and c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld h, e
    ld a, [bc]
    ld a, e
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    cp $06
    ld d, c
    ldh a, [rNR21]
    ld b, $06
    ld e, a
    dec d
    rrca
    ld d, $6f
    jr jr_025_4eff

    dec de
    ccf
    dec de
    ld e, a
    inc de
    xor b
    ld e, [hl]
    ld h, h
    ld h, h
    ld h, h
    ld e, a
    ld e, a
    nop
    ld a, e
    ld a, h
    sub b
    sub c
    ld a, a
    ld [$1b1a], sp
    inc bc
    dec de
    ld a, [hl]
    ld a, a
    and b
    and c

jr_025_4eff:
    ld a, l
    ld a, [bc]
    rrca
    dec bc
    ld a, h
    ld a, l
    ld a, h
    ld a, e
    ld hl, $7d7c
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, a
    ld a, l
    inc a
    ld b, b
    ld a, [hl]
    dec [hl]
    ld c, l
    ld a, l
    ldh a, [rHDMA4]
    ld b, $06
    ld b, $50
    inc a
    ld d, $62
    ld b, b
    inc d
    inc d
    ld [hl], b
    dec de
    ld d, $17
    ld d, b
    ld d, h
    inc e
    sub c
    ld e, [hl]
    ld e, a
    di
    di
    ld e, a
    ld e, a
    nop
    ld e, a
    ld e, [hl]
    ld h, c
    ld l, a
    jr jr_025_4f4f

    ld l, [hl]
    ld h, b
    rra
    dec de
    inc e
    add hl, bc
    ld a, [hl]
    db $fc
    dec bc
    ld a, l
    ld d, d
    ld [de], a
    ld a, e
    inc c
    ld a, h
    ld d, d
    ld a, h
    ld a, l
    ld a, [hl]
    ld c, b
    ld a, l
    ld a, a
    ld a, e
    ld a, h
    ld a, [hl]

jr_025_4f4f:
    ld h, d
    ld a, [hl]
    ld a, b
    ld b, $7b
    ld a, h
    dec b
    ld d, b
    ret nz

    ld d, $40
    ld b, b
    ld b, d
    ld a, a
    ld [$0315], sp
    ld d, $54
    ld d, h
    ld d, d
    ld a, l
    ld [$0e18], sp
    dec de
    ld bc, $5f5e
    ld d, d
    ld a, e
    jr c, jr_025_4f74

    ld [$1918], sp
    ld h, c

jr_025_4f74:
    ld l, a
    ld [c], a
    ld b, b
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld c, [hl]
    ld h, e
    inc de
    inc b
    add hl, bc
    ld a, a
    ld [$1b1a], sp
    dec de
    ld d, e
    ld d, c
    inc de
    dec e
    inc c
    ld a, l
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld h, e
    dec d
    add hl, de
    add hl, bc
    ld a, e
    call nz, $c6c5
    ld a, l
    ld a, [hl]
    ld d, c
    jr jr_025_4fb8

    add hl, bc
    ld a, l
    jp $8584


    ld a, a
    ld a, h
    ld d, $19
    dec e
    inc c
    ld a, h
    sub e
    rst $28
    sub l
    ld a, e
    ld a, [hl]
    dec de
    inc e
    add hl, bc
    ld a, [hl]
    ld a, a
    ld a, e
    sub h
    ld a, e
    ld a, [hl]
    ld a, a
    inc b

jr_025_4fb8:
    inc b
    add hl, bc
    ld a, e
    ld a, h
    ld a, l
    ld [$0606], sp
    ld b, $40
    ld b, b
    ld b, b
    ld [hl], $7f
    ld a, e
    ld [$1615], sp
    ld d, $00
    inc c
    dec bc
    dec de
    inc e
    add hl, bc
    ld a, a
    ld a, h
    ld a, e
    ld a, [hl]
    ld [$0118], sp
    inc c
    jp z, $cccb

    ld [bc], a
    ld [$7f08], sp
    jr jr_025_4fef

    ld a, l
    ld c, a
    rst $00
    adc b
    adc c
    adc d
    call $0118
    ld a, h
    ld c, a
    jr nz, @-$7e

jr_025_4fef:
    ld [$70c8], sp
    rst $38
    ld [hl], c
    adc $18
    ld bc, $4f7f
    ret


    add b
    cp $81
    rst $08
    nop
    ldh a, [rTMA]
    jr jr_025_5004

    ld a, l

jr_025_5004:
    ld c, a
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld [$0e18], sp
    ret nz

    ccf
    ld d, $06
    ld b, $06
    inc b
    jr jr_025_5047

    ld bc, $8e52
    ld bc, $0e0e
    ld d, $16
    add sp, -$08
    add hl, de
    inc b
    ld bc, $210d
    ld hl, sp+$0d
    ld bc, $0e16
    ld sp, $0730
    jr nc, jr_025_5063

    dec de
    dec de
    ld bc, $12f8
    ld b, b
    ld h, d
    ld c, l
    ld c, [hl]
    ld h, e
    ld e, [hl]
    ld e, a
    ld c, b
    db $ec

jr_025_503d:
    dec c
    ld hl, sp+$50
    ld d, d
    ld d, e
    ld d, c
    jr c, jr_025_503d

    ld l, [hl]
    ld h, b

jr_025_5047:
    ld bc, $5352
    ldh a, [$30]
    inc de
    inc b
    ld e, [hl]
    ld h, c
    nop
    ld [hl-], a
    ld d, e
    inc de
    inc b
    ld l, [hl]
    ld h, b
    ld c, [hl]
    ld b, b
    rlca
    ld b, b
    ld h, e
    inc de
    inc b
    ld e, [hl]
    ld h, c
    ld hl, $04f0

jr_025_5063:
    jr jr_025_5080

    dec de
    inc e
    jr jr_025_5076

    ld c, $19
    ld d, $19
    ld b, $10
    dec c
    jr jr_025_508b

    dec de
    dec de
    ld d, $17

jr_025_5076:
    inc b
    inc b
    ld a, [de]
    ld c, $1c
    ld e, [hl]
    ld e, a
    sbc b
    jr nz, @+$06

jr_025_5080:
    jr jr_025_5083

    rla

jr_025_5083:
    jr jr_025_509e

    ld h, c
    ld l, a
    jr @+$10

    inc e
    dec d

jr_025_508b:
    dec c
    ld bc, $0d06
    rla
    ld h, b
    ld e, a
    jr jr_025_50ad

    inc b
    inc b
    jr jr_025_50b1

    ld h, c
    ld l, a
    ld a, [de]
    dec de
    add b
    xor d

jr_025_509e:
    ld e, a
    inc d
    inc d
    dec de
    dec de
    dec de
    inc e
    ld h, b
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    rrca
    inc a
    inc b

jr_025_50ad:
    xor l
    sbc b
    dec l
    add e

jr_025_50b1:
    add hl, hl
    ld a, e
    pop de
    pop de
    ldh a, [$c0]
    inc b
    dec l
    add e
    add hl, hl
    ld a, [hl]
    sbc l
    sbc b
    dec l
    add e
    ld de, $5026
    ld b, b
    dec l
    and l
    and e
    and h
    sbc b
    add e
    ld de, $0404
    xor b
    sbc c
    sbc d
    sbc e
    add e
    inc c
    jr nc, jr_025_50d9

    add e
    dec l
    xor b
    sbc b

jr_025_50d9:
    add hl, hl
    ld a, l
    jr z, jr_025_510a

    add e
    add e
    xor b
    sbc b
    nop
    ld hl, sp-$56
    add hl, hl
    ld a, h
    jr z, jr_025_50f9

    dec l
    dec l
    ld h, h
    ld h, h
    xor b
    xor c
    ret nc

    inc l
    adc a
    ld a, a
    adc d
    adc b
    ld [hl], l
    cp $14
    ld a, h
    ld [hl], l

jr_025_50f9:
    ld a, e
    ld a, l
    ld a, a
    db $d3
    ld a, a
    ldh a, [rNR52]
    add l
    ld a, e
    add l
    ld a, [hl]
    nop
    and c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]

jr_025_510a:
    ld a, a
    ld de, $072d
    ld de, $2726
    ld a, e
    ld a, a
    ld a, h
    ld a, b
    ld de, $2d2d
    dec l
    ld h, $fc
    add e
    ld h, $26
    rrca
    add e
    ld de, $112d
    dec l
    ccf
    dec l
    xor d
    xor d
    rst $38
    xor d
    ld c, b
    jr nz, jr_025_50b1

    ld a, a
    ld a, [hl]
    db $d3
    ld l, l
    ld [hl], $d3
    ld a, h
    ld a, l
    ld a, e
    ld a, h
    db $d3
    ld l, l
    ld [hl], $08
    ld d, b
    ld a, e
    add h
    db $d3
    ld a, a
    ld a, a
    ld a, [hl]
    db $d3
    add h
    ld l, l
    ld [hl], $84
    db $d3
    ld a, h
    ld a, h
    ld [de], a
    ld c, b
    add h
    and c
    ld l, l
    ld [hl], $a1
    ld a, l
    ld a, a
    ld h, $26
    ld de, $366d
    ld de, $061c
    add e
    ld h, $26
    add h
    ld l, l
    ld [hl], $84
    xor h
    dec l
    dec l
    dec l
    add h
    ret nz

    ld a, a
    xor d
    ld l, l
    ld [hl], $84
    dec l
    dec l
    sub a
    and d
    ret nz

    ld b, [hl]
    ld a, a
    ld [hl], l
    cp $75
    adc a
    ld a, d
    inc d
    ld a, e
    sub b
    and b
    add l
    add l
    ld a, h
    adc d
    and b
    ld a, [hl]
    adc a
    adc b
    and b
    ld a, a
    ld a, l
    ld a, a
    sub b
    ld a, e
    ld a, l
    ld a, a
    ld a, h
    db $d3
    ld a, h
    ld a, a
    jr jr_025_51b9

    ld a, a
    ld a, e
    dec h
    db $d3
    ld a, h
    ld a, l
    rrca
    ld h, $11
    ld de, $a111
    db $fc
    xor d
    ld a, l
    ld a, [hl]
    rrca
    xor d
    and [hl]
    sub e
    sub e
    sub e
    rra
    sub e
    sub [hl]
    and a
    dec l
    ld h, l
    dec l
    ld de, $1111
    xor b
    jr @+$1b

    ld a, [de]
    jr jr_025_51d1

jr_025_51b9:
    dec e
    ld e, $1f
    ld e, h
    ld e, l
    jr z, jr_025_51e9

    ld a, [hli]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld l, h
    ld l, l
    jr c, jr_025_5203

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld a, h

jr_025_51d1:
    ld a, l
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    adc h
    adc l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld l, b
    ld l, c
    ld d, d

jr_025_51e9:
    ld [$5554], a
    ld d, [hl]
    ld d, a
    ld a, [hl]
    ld a, a
    ld a, b
    ld a, c
    ld h, d
    db $dd
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    adc [hl]
    adc a
    and [hl]
    and [hl]
    ld h, d
    db $dd
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    and [hl]

jr_025_5203:
    and [hl]
    jr z, jr_025_522f

    ld a, [hli]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld l, h
    ld l, l
    jr c, jr_025_5249

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld a, h
    ld a, l
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    adc h
    adc l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld l, b
    ld l, c
    ld d, d

jr_025_522f:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [hl]
    ld a, a
    ld a, b
    ld a, c
    ld b, d
    db $eb
    ld h, h
    ld h, l
    ld h, [hl]
    ld b, a
    adc [hl]
    adc a
    and [hl]
    and [hl]
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld d, c
    and [hl]

jr_025_5249:
    and [hl]
    add h
    add l
    ld [hl], b
    ret nc

    inc [hl]
    add b
    add b
    ld h, c
    and [hl]
    and [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    adc h
    adc l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld l, b
    ld l, c
    ld d, d
    inc sp
    ld d, h
    ld d, l
    ld [hl], $57
    ld a, [hl]
    ld a, a
    ld a, b
    ld a, c
    ld h, d
    ld d, b
    ld b, b
    ld b, b
    ld d, c
    ld h, a
    adc [hl]
    adc a
    and [hl]
    and [hl]
    ld h, d
    ld h, b
    ld b, h
    ret nc

    ld [hl], c
    ld h, a
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    ld b, d
    db $eb
    ld d, h
    sbc $56
    ld b, a

Jump_025_528e:
    sub h
    sub l
    add h
    add l
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld d, c
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    ld [hl], b
    ret nc

    inc [hl]
    add b
    add b
    ld h, c
    and [hl]
    and [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    adc h
    adc l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld l, [hl]
    ld l, a
    ld l, b
    ld l, c
    ld d, d
    inc sp
    ld d, h
    ld d, l
    ld [hl], $57
    ld a, [hl]
    ld a, a
    ld a, b
    ld a, c
    ld h, d
    ld d, b
    ld b, b
    ld b, b
    ld d, c
    ld h, a
    adc [hl]
    adc a
    and [hl]
    and [hl]
    ld h, d
    ld h, b
    ld b, h
    ret nc

    ld [hl], c
    ld h, a
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    ld b, d
    db $eb
    ld d, h
    sbc $56
    ld b, a
    sub h
    sub l
    add h
    add l
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld d, c
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    ld [hl], b
    ret nc

    inc [hl]
    add b
    add b
    ld h, c
    and [hl]
    and [hl]
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    inc e
    ld h, h
    ld l, a
    inc de
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ldh a, [$f3]
    ld l, a
    ld l, [hl]
    ld e, a

Jump_025_530f:
    ld a, [de]
    ldh [$64], a
    ld hl, sp-$1d
    ld hl, sp-$08
    ld l, a
    inc a
    ld hl, sp-$0d
    di
    ld e, a
    db $e3
    inc l
    di
    ld sp, hl
    ld hl, sp+$64
    ld h, h
    ld e, [hl]
    ld c, h
    ld h, h
    ld l, a
    ld hl, sp-$08
    ld hl, sp-$0d
    ld d, b
    ld h, h
    di
    ld l, [hl]
    ld e, a
    ld hl, sp-$0d
    db $e3
    call $f3f8
    ld l, a
    cpl
    dec sp
    ld hl, sp-$0d
    ld e, a
    ld e, [hl]
    xor d
    ld e, [hl]
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    inc d
    jr nz, jr_025_53a6

    ld l, a
    ld l, [hl]
    ld h, c
    ld e, a
    jr jr_025_5365

    ld e, [hl]
    ld h, c
    ld hl, sp-$0f
    ld l, [hl]
    ld h, c
    ld l, a
    ld [hl], b
    inc c
    ld hl, sp+$18
    add hl, de
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    dec d
    ld d, $16
    ld e, a
    ld e, [hl]
    ldh a, [$c0]
    ld hl, sp+$5f

jr_025_5365:
    ld e, [hl]
    ld e, a
    jr @+$71

    ld l, [hl]
    ld h, b
    ld h, c
    ld l, a
    jr jr_025_537e

    ld [hl], b
    ld hl, sp+$6e
    ld h, b
    ld e, a
    ld a, [de]
    dec de
    dec de
    dec de
    dec de
    ld l, [hl]
    jr c, jr_025_537c

jr_025_537c:
    dec bc
    ld l, a

jr_025_537e:
    ld sp, $5f34
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld h, d
    ld h, e
    ld a, l
    ld a, [hl]
    ld a, l
    ld h, b
    ld e, a
    ld b, a
    ld l, d
    ld d, c
    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld l, [hl]
    ld l, a
    ld h, d
    ld h, e
    ld a, [hli]
    dec hl
    inc l
    ld a, h
    ld a, e
    sub b
    ld d, $17
    ld d, b
    ld c, h
    ld a, e
    ld a, h
    sub b
    sub c

jr_025_53a6:
    ld a, [hl]
    and b
    ld hl, sp+$19
    add hl, bc
    ld a, e
    sub b
    sub c
    and b
    and c
    ld a, e
    ld a, [hl]
    ld hl, sp+$19
    add hl, bc
    ld a, l
    and b
    and c
    ld a, h
    ld a, e
    ld a, a
    ld a, h
    dec de
    inc e
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $0b
    dec bc
    dec bc
    dec bc
    ld e, $04
    inc b
    inc b
    dec d
    ld d, $7d
    ld a, h
    ld a, l
    ld a, [hl]
    ld [$1504], sp
    ld d, $01
    ld c, $03
    ld d, h
    ld l, c
    ld c, b
    ld a, l
    ld a, a
    ld [$031a], sp
    dec de
    sub c
    ld a, [hl]
    ld d, d
    ld d, e
    ld a, h
    ld a, l
    ld c, $0b
    ld a, [bc]
    and c
    ld a, a
    ld h, d
    ld h, e
    ld a, [bc]
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    ld a, [hl]
    ld a, l
    ld a, [hl]
    adc b
    ld h, a
    ld c, e
    ld c, h
    ld a, e
    ld l, b
    ld a, [hl]
    ld a, e
    add h
    ld a, h
    ld a, a
    ld a, e
    ld a, l
    ld a, [hl]
    ld h, d

Jump_025_5408:
    ld h, e
    ld a, h
    ld b, $7b
    ld h, d
    ld d, b
    ld h, b
    inc d
    ld c, h
    ld a, [hl]
    ld a, e
    ld c, e
    ld d, $16
    jr jr_025_541e

    ld d, $16
    rla
    jr jr_025_5436

    inc b

jr_025_541e:
    inc e
    dec de
    inc b
    ld a, [de]
    ld d, $16
    ld c, $ff
    dec de
    db $fc
    dec bc
    dec de
    ld d, d
    rlca
    dec bc
    ld h, d
    ld a, l
    ld a, [hl]
    call nz, $84c5
    ld a, a
    add $7e

jr_025_5436:
    ld a, e
    ld a, h
    ld c, e
    ld l, b
    adc b
    ld a, h
    jp $8584


    ld a, l
    ld a, [hl]
    ld a, a
    ld [hli], a
    ld a, l
    ld h, e
    sub e
    rst $28
    sub l
    ld a, a
    ld a, h
    adc b
    ld a, a
    ld a, l
    ld a, [hl]
    ld c, h
    ld a, h
    sub h
    ld a, e
    ld h, b
    ld b, $7b
    ld a, [hl]
    ld a, a
    ld a, h
    add hl, de
    inc b
    rlca
    ld b, $07
    ld a, e
    ld a, h
    dec de
    inc d
    rrca
    ld d, $17
    add hl, bc
    ld a, l
    ld a, a
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    inc de
    inc b
    ld l, [hl]
    ld h, b
    ld h, e
    pop bc
    ld a, b
    ld a, c
    jp nz, $1808

    inc d
    rla
    ld l, [hl]
    ld c, h
    add a
    adc b
    adc c
    adc d
    ld [$f213], sp
    jr jr_025_549b

    ld a, l
    sub a
    sbc b
    sbc c
    sbc d
    ld a, [bc]
    ld a, [de]
    ld d, $01
    dec c
    ld a, e
    and a
    xor $ef
    xor d
    ld a, l
    ld [$0118], sp
    ld bc, $7e7d

jr_025_549b:
    ld [$7c09], sp
    ld a, e
    ld [$1b1a], sp
    dec de
    ld a, e
    ld a, h
    ld a, [bc]
    inc c
    dec a
    dec a
    ld [$0404], sp
    inc b
    ld a, l
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$1504], sp
    ld d, $aa
    ld b, $6f
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    inc b
    dec d
    ld d, $14
    inc d
    ccf
    nop
    ld d, $1b
    inc e
    inc b
    inc b
    jr @+$03

    ld bc, $010d
    add hl, de
    rrca
    jr nc, jr_025_54d8

    jr jr_025_54e6

    db $10
    db $10

jr_025_54d8:
    ld c, $01
    ld d, $17
    jr @+$12

    inc bc
    inc c
    ld hl, sp+$1b
    dec c
    ld bc, $041c

jr_025_54e6:
    dec d
    ld bc, $0410
    jr @+$1e

    inc b
    ld [$10e0], sp
    inc b
    jr @+$03

    ld hl, sp-$08
    ld d, $19
    inc b
    inc b
    dec d
    ld bc, $c00d
    inc bc
    jr nc, jr_025_5564

    ld h, h
    sub l
    ld h, [hl]
    ret nc

    ld h, l
    ld d, $16
    ld bc, $1001
    ld c, $c0
    rst JumpTable
    db $10
    ld bc, $0e0d
    ld bc, $0d01
    ld c, $14
    ld hl, sp+$0d
    db $10
    ld c, $0e
    ld c, $10
    ld hl, sp-$08
    ld hl, sp+$10
    ld de, $10cc
    ld hl, sp-$08
    ld hl, sp+$0e
    dec c
    ld c, $0d
    ld c, $f8
    ld hl, sp-$21
    ld bc, $1b10
    dec c
    ld bc, $010e
    inc e
    inc b
    ld e, [hl]
    rst $38
    inc bc
    jr nc, jr_025_554b

    ld bc, $5e19
    ld e, a
    di
    ld [de], a
    ld [$1801], sp
    add hl, de
    ld e, [hl]
    dec c
    add hl, de
    ld l, [hl]

jr_025_554b:
    ld l, a
    di
    jr jr_025_5568

    ld l, [hl]
    ld hl, sp+$10
    ld [hl], c
    ld b, d
    db $10
    di
    di
    jp hl


    ld d, $f8
    di
    di
    di
    di
    db $e3
    dec c
    ld b, $10
    ld hl, sp-$0d

jr_025_5564:
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a

jr_025_5568:
    ld hl, sp+$1b
    dec de
    inc e
    ld l, [hl]
    ld b, b
    ld de, $605f
    ld h, c
    ld l, a
    jr jr_025_5585

    ld hl, sp+$5e
    ld e, [hl]
    ld h, c
    ld h, b
    jr jr_025_558c

    ld hl, sp-$7f
    inc bc
    jr nc, jr_025_55f4

    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l

jr_025_5585:
    db $76
    ld e, a
    add e
    adc e
    add l
    sub h
    add l

jr_025_558c:
    ld c, $08
    dec l
    add [hl]
    ld l, a
    sub e
    xor c
    xor d
    xor c
    xor d
    adc d
    ld de, $1611
    sub e
    ldh [$80], a
    add h
    ld a, [hl]
    ld a, l
    ld a, [hl]
    sub l
    sub [hl]
    ld hl, sp-$5d
    and h
    xor c
    xor d
    and l
    and [hl]
    inc bc
    inc b
    dec l
    ld hl, sp+$77
    ld a, b
    ld a, c
    ld a, c
    ld a, d
    sbc e
    add h
    ld de, $87f8
    sbc b
    xor b
    ld [$8438], sp
    adc b
    xor $b2
    ld de, $f811
    add a
    ld d, d
    ld a, a
    ld a, e
    ld b, e
    ld b, b
    sub [hl]
    dec c
    dec l
    xor a
    ld de, $1111
    sbc [hl]
    add h
    add h
    add h
    add h
    and h
    inc de
    dec l
    add h
    ld de, $119e
    add h
    add h
    ld de, $849e
    add h
    ld l, d
    ld a, [hl-]
    dec l
    add h
    and $84
    sbc [hl]
    ld de, $8484
    add h
    pop af
    add l
    add h
    sbc [hl]
    ld de, $2d11

jr_025_55f4:
    sbc [hl]
    ld de, $2d11
    add h
    add hl, hl
    ld de, $2d2d
    dec l
    add h
    sbc [hl]
    sbc a
    add h
    dec l
    dec l
    add h
    sbc [hl]
    nop
    add h
    add l
    ld b, d
    sbc $64
    ld h, l
    db $ec
    ld b, a
    rrca
    and [hl]
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    inc a
    and [hl]
    ld b, b
    ld d, c
    ld h, b
    ld b, h
    nop
    ret nc

    inc [hl]
    add b
    ld h, c
    sub h
    sub l
    add h
    add l
    ret nz

    and [hl]
    ld d, d
    inc sp
    sbc $35
    ld d, [hl]
    ld d, a
    inc bc
    and [hl]
    ld h, d
    ld d, b
    ld b, b
    ld d, c
    ld h, [hl]
    ld h, a
    inc bc
    and [hl]
    ld a, d
    ld a, e
    ld b, d
    ld [hl], b
    rst JumpTable
    ld [hl], c
    nop
    db $ec
    ld b, a
    ld a, e
    ld a, d
    xor l
    xor h
    ld d, b
    ld b, b
    rlca
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld e, $80
    ld h, b
    ld h, c
    cp l
    cp h
    inc bc
    rrca
    and [hl]
    ld [hl-], a
    sbc $54
    ld d, l
    db $ec
    scf
    ld d, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ldh a, [$a6]
    ld b, b
    ld d, c
    sub h
    sub l
    add h
    add l
    ld h, b
    ld b, h
    ret nc

    inc [hl]
    add b
    ld h, c
    ret nz

    inc bc
    and [hl]
    ld d, d
    inc sp
    sbc $35
    ld d, [hl]
    ld d, a
    ld h, d
    ld d, b
    ld b, b
    ld d, c
    ld h, [hl]
    ld h, a
    inc b
    ld [$a67a], sp
    and [hl]
    ld a, e
    ld b, d
    ld [hl], b
    rst JumpTable
    ld [hl], c
    db $ec
    ld b, a
    ld a, e
    xor l
    xor h
    ld d, b
    ld b, b
    nop
    ld e, $80
    ld b, b
    ld b, b
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld h, b
    ld h, c
    cp l
    cp h
    inc bc
    and [hl]
    ld [hl-], a
    sbc $54
    ld d, l
    db $ec
    scf
    ldh [rLCDC], a
    sub h
    sub l
    add h
    add l
    ld d, b
    inc a
    and [hl]
    ld b, b
    ld d, c
    ld h, b
    ld b, h
    ldh a, [$a6]
    ret nc

    inc [hl]
    add b
    ld h, c
    ret nz

    and [hl]
    ld d, d
    inc sp
    sbc $35
    ld d, [hl]
    ld d, a
    inc bc
    and [hl]
    ld h, d
    ld d, b
    ld b, b
    ld d, c
    ld h, [hl]
    ld h, a
    inc bc
    and [hl]
    ld a, d
    ld a, e
    ld b, d
    ld [hl], b
    rst JumpTable
    ld [hl], c
    nop
    db $ec
    ld b, a
    ld a, e
    ld a, d
    xor l
    xor h
    ld d, b
    ld b, b
    rlca
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld e, $80
    ld h, b
    ld h, c
    cp l
    cp h
    inc bc
    and [hl]
    ld [hl-], a
    sbc $54
    ld d, l
    db $ec
    scf
    ldh [rLCDC], a
    sub h
    sub l
    add h
    add l
    ld d, b
    inc a
    and [hl]
    ld b, b
    ld d, c
    ld h, b
    ld b, h
    ldh a, [$a6]
    ret nc

    inc [hl]
    add b
    ld h, c
    ret nz

    and [hl]
    ld d, d
    inc sp
    sbc $35
    ld d, [hl]
    ld d, a
    inc bc
    and [hl]
    ld h, d
    ld d, b
    ld b, b
    ld d, c
    ld h, [hl]
    ld h, a
    inc bc
    and [hl]
    ld a, d
    ld a, e
    ld b, d
    ld [hl], b
    rst JumpTable
    ld [hl], c
    nop
    db $ec
    ld b, a
    ld a, e
    ld a, d
    xor l
    xor h
    ld d, b
    ld b, b
    rlca
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld e, $80
    ld h, b
    ld h, c
    cp l
    cp h
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    xor d
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ret nz

    inc d
    ld l, a
    ld l, [hl]
    ld e, a
    dec d
    ld d, $16
    inc bc
    ld d, $17
    ld e, [hl]
    ld l, a
    jr jr_025_5754

    add hl, de

jr_025_5754:
    add h
    jr jr_025_57b5

    ld e, a
    ld bc, $6e19
    ld e, a
    ld hl, $1901
    ld l, [hl]
    ld l, a
    jr @+$1b

    ld e, [hl]
    call z, $6f1b
    jr jr_025_577f

    ld d, $81
    add hl, de
    ld l, [hl]
    ld e, a
    inc de
    ld e, [hl]
    ld e, a
    jr jr_025_5797

    inc de
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    add c
    jr jr_025_5796

    ld l, [hl]
    ld l, a

jr_025_577f:
    inc de
    ld l, [hl]
    ld e, a
    inc sp
    ld d, $01
    ld bc, $5e19
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld b, l
    ld b, [hl]
    ld a, h
    ld a, l
    ld a, h
    ld e, a
    dec d
    ld d, $16

jr_025_5796:
    rla

jr_025_5797:
    ld d, b
    ld d, c
    or e
    or h
    or h
    ld l, a
    jr jr_025_57a0

    dec de

jr_025_57a0:
    dec de
    ld d, $17
    sub a
    db $ed
    sub a
    ld e, a
    jr jr_025_57c2

    ld e, [hl]
    ld e, a
    jr @+$1b

    inc b
    add hl, bc
    ld a, a
    ld l, a
    jr jr_025_57cc

    ld l, [hl]
    ld l, a

jr_025_57b5:
    jr @+$1b

    inc b
    add hl, bc
    ld a, l
    ld e, a
    jr @+$03

    ld d, $16
    ld bc, $041c

jr_025_57c2:
    add hl, bc
    ld a, h
    ld l, a
    jr jr_025_57d4

    ld bc, $1901
    ld e, [hl]
    ld e, a

jr_025_57cc:
    add hl, bc
    ld a, l
    ld e, a
    jr @+$03

    ld c, $01
    add hl, de

jr_025_57d4:
    ld l, [hl]
    ld h, b
    ld e, a
    ld c, [hl]
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [$1804], sp
    ld bc, $0e01
    sbc b
    sbc c
    sbc d
    ld a, a
    ld [$0115], sp
    ld c, $01
    dec de
    xor b
    xor c
    xor d
    ld a, e
    ld [$0d18], sp
    dec de
    inc e
    inc b
    sub a
    db $ed
    sub a
    ld a, l
    ld [$1c18], sp
    dec e
    dec bc
    dec bc
    ld a, [hl]
    ld [hli], a
    ld a, l
    ld a, a
    ld [$1d13], sp
    inc c
    ld a, a
    ld a, e
    ld a, e
    ld [$0606], sp
    inc b

jr_025_580f:
    inc de
    add hl, bc
    ld a, e
    ld a, [hl]
    sub b
    ld a, [hl]
    ld [$0404], sp
    dec d
    add hl, de
    add hl, bc
    ld a, l
    ld a, a
    and b
    ld b, b
    ld b, b
    ld b, d
    ld d, $0e
    add hl, de
    add hl, bc
    ld a, h
    ld a, e
    ld a, h
    ld a, b
    inc b

jr_025_582a:
    ld c, $16
    rla
    jr jr_025_580f

    ld d, $01
    add hl, de
    dec de
    dec de
    ld bc, $010a
    ld d, $0d
    inc b
    inc b
    ld a, [de]
    dec de
    rra
    dec de
    ld c, $0b
    dec bc
    ccf
    dec bc
    ld e, $1a
    add hl, bc
    ld a, h
    sub b
    sub c
    ld a, l
    sub b
    sub c
    ld a, a
    adc b
    and b
    ld a, [bc]
    dec bc
    sub c
    and c
    dec h
    daa
    ld de, $90a1
    sub c
    ld a, h
    ld a, l
    dec h
    and $60
    ld a, a
    ld de, $7c27
    and b
    and c
    ld c, [hl]
    rst $38
    ld b, b
    jr z, jr_025_582a

    ld bc, $0404
    ld a, [de]
    dec c
    add hl, de
    add hl, bc
    ld a, e
    ld a, h
    rla
    inc b
    inc b
    jr jr_025_58d8

    nop
    inc b
    add hl, de
    add hl, bc
    ld a, h
    ld h, a
    add hl, de
    ld a, [de]
    dec de
    dec de
    inc e
    add hl, bc
    ld a, l
    ld h, d
    inc e
    dec e
    rra
    ld bc, $0c0b
    ld a, a
    ld b, l
    inc c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    dec b
    jr nz, jr_025_5914

    ld c, e
    ld a, l
    ld a, [hl]
    dec b
    ld b, $07
    ld a, l
    dec b
    ld b, $18
    ld a, a
    ld a, e
    ld [$7fc0], sp
    ld b, b
    rst $20
    add hl, bc
    ld a, e
    ld [$1804], sp
    ld c, l
    nop
    inc a
    jr nc, jr_025_5930

    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld [$1804], sp
    ld bc, $7e68
    ldh a, [rP1]
    ld b, b
    ld [$1804], sp
    ld c, $63
    ld a, e
    ld a, [bc]
    ld e, $18
    ld c, $54
    ld d, h
    inc bc
    rrca
    ld d, h
    ld b, [hl]
    ld a, [hl]
    ld a, a
    ld [$0118], sp
    ld c, h
    ld a, a

jr_025_58d8:
    ld a, [hl]
    ld [$1006], sp
    ld bc, $191a
    jp hl


    di
    add hl, bc
    ld a, h
    ld a, a
    ld [$18e3], sp
    add hl, de
    jp hl


    di
    add b
    rst $38
    ld b, b
    add hl, bc
    ld a, [hl]
    ld a, e
    ld [$1915], sp
    ld c, [hl]
    ret nz

    dec c
    ld bc, $190d
    inc b
    inc b
    ld a, [de]
    dec de
    ld c, $17
    inc b
    inc b
    inc b
    ld h, d
    nop
    dec de
    jr jr_025_5914

    ld bc, $160e
    ld d, $14
    inc e
    inc b
    jr jr_025_5911

    add hl, de

jr_025_5911:
    inc b
    add hl, hl
    ld b, b

jr_025_5914:
    inc b
    ld a, [de]
    add hl, de
    di
    jr jr_025_5927

    ld bc, $1714
    di
    jr jr_025_5937

    dec d
    jr z, jr_025_593b

    inc b
    ld c, $1b
    inc e

jr_025_5927:
    inc de
    jr jr_025_5945

    inc d
    dec de
    inc e
    di
    jr jr_025_5946

jr_025_5930:
    inc a
    nop
    dec bc
    add hl, de
    dec e
    ld b, b
    ld b, b

jr_025_5937:
    ld b, d
    ld c, $19
    add hl, bc

jr_025_593b:
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld c, $01
    ld bc, $010e
    dec de

jr_025_5945:
    inc e

jr_025_5946:
    inc b
    inc b
    ld l, [hl]
    ld bc, $1b0d
    dec de
    inc e
    inc b
    inc b
    inc b
    inc b
    ld e, [hl]
    ld bc, $e619
    dec e
    dec bc
    dec bc
    dec bc
    ld e, $04
    ld l, [hl]
    ld bc, $1d19
    inc c
    jp z, $cccb

    ld a, [bc]
    dec bc
    ld sp, $1c1b
    add hl, bc
    rst $00
    adc b
    adc c
    adc d
    call Call_025_627f
    inc b
    inc b
    add hl, bc
    ret z

    ld [hl], b
    rst $38
    ld [hl], c
    adc $7c
    ld c, e
    dec bc
    dec bc
    inc c
    ret


    add b
    cp $81
    rst $08
    ld a, [hl]
    ld a, a
    ld a, e

jr_025_5986:
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, a
    ld a, h
    ld a, l
    ld a, a
    ld a, h
    ld d, l
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    jr jr_025_5986

    jr nc, jr_025_59a8

    ld hl, sp+$5f
    ld sp, $3400
    jr jr_025_59af

    ld hl, sp+$6f
    ld d, d
    pop af
    dec l
    nop
    dec l
    rst $20
    ld d, e

jr_025_59a8:
    jr jr_025_59ba

    ld hl, sp+$30
    ld [hl-], a
    rrca
    dec l

jr_025_59af:
    ld d, e
    jr @+$12

    ld hl, sp+$3f
    ld b, b
    ld h, e
    jr @-$16

    ld d, h
    db $10

jr_025_59ba:
    ld hl, sp+$6a
    add sp, -$3c
    db $10
    ld d, c
    ld a, [de]
    ld hl, sp+$53
    db $e3
    rrca

jr_025_59c5:
    di
    db $10
    db $10
    inc sp
    jr nc, @+$01

    jr nc, jr_025_59c5

    and a
    ld d, d
    ld a, [hl]
    ld a, l
    jr z, @+$13

    ld de, $5453
    ld hl, sp+$17
    ld d, d
    ld a, a
    ld a, h
    jr z, jr_025_59ee

    dec l
    ld d, e
    ld a, l
    ld hl, sp+$19
    ld h, d
    ld [hl], $ff
    dec [hl]
    ld b, b
    ld b, b
    ld h, e
    ld a, h
    ld hl, sp+$19
    ld d, b
    ld c, h

jr_025_59ee:
    cp $4b
    ld d, h
    ld d, h
    ld c, h
    ld a, l
    ld hl, sp+$19
    ld a, [c]
    add hl, bc
    ld a, a
    ld a, l
    ld a, h
    ld a, e
    ld a, h
    ld a, a
    ld hl, sp+$0e
    db $10
    add hl, bc
    ld a, [hl]
    dec b
    ld b, $07
    ld a, a
    ld a, l
    db $10
    db $10
    db $10
    add hl, bc
    ld a, h
    ld [$1715], sp
    ld b, $06
    jr nc, @+$32

    jr nc, jr_025_5a72

    ld a, [hl]
    ld e, e
    jr nc, jr_025_5a4a

    jr nc, jr_025_5a4c

    ld h, d
    ld de, $8452
    add h
    dec l
    dec l
    ld de, $9e84
    ld d, d
    dec l
    or e
    or e
    or h
    ld b, a
    add h
    sbc [hl]
    ld d, d
    ld de, $00b0
    xor $b2
    add h
    rst $30
    ret nc

    or $52
    dec l
    rra
    add h
    ld d, e
    ret nc

    ld l, h
    ld a, [hl]
    ld b, b
    ld h, d
    ld h, e
    ld hl, sp+$54
    inc de
    ld b, a
    ld d, b
    nop
    ld d, h

jr_025_5a4a:
    ld d, c
    inc de

jr_025_5a4c:
    ld d, d
    inc b
    dec d
    ld d, $14
    rrca
    inc d
    inc e
    ld d, d
    ld a, [hl-]
    jr jr_025_5ad4

    jr nc, jr_025_5a73

    add hl, sp
    ld [hl-], a
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c

jr_025_5a72:
    and d

jr_025_5a73:
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    adc d
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c

jr_025_5ad4:
    sbc d
    adc d
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    sbc e
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    cp e
    add c
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    adc d
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    inc de
    ld d, $11
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec d
    add sp, $14
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    rla
    adc c
    cp l
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    ld l, a
    jr jr_025_5baf

    dec de

jr_025_5baf:
    dec de
    ld bc, $010d
    add hl, de
    ld l, [hl]
    ld e, a
    jr jr_025_5bd1

    ld e, [hl]
    ld e, a
    jr @+$03

    ld bc, $5e19
    ld l, a
    jr @+$1b

    ld l, [hl]
    ld l, a
    jr @+$03

    ld c, $19
    ld l, [hl]
    inc [hl]
    jr @+$03

    ld d, $16
    dec de
    dec de
    dec c

jr_025_5bd1:
    add hl, de
    ld e, [hl]
    ld d, e
    jr jr_025_5c05

    ld bc, $5e19
    ld e, a
    jr @+$1b

    ld l, [hl]

jr_025_5bdd:
    ld d, e
    ld a, [de]
    dec de
    dec de
    inc e
    ld l, [hl]
    ld l, a
    jr jr_025_5bff

    ld e, [hl]
    ld d, e
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, $04
    jr @+$1b

    ld l, [hl]
    ld d, e
    dec l
    ld de, $b52d
    ld a, [bc]
    ld e, $1a
    inc e
    ld e, [hl]
    ld l, a
    jr jr_025_5bff

    dec c

jr_025_5bff:
    ld bc, $5e19
    ld h, c
    ld l, a
    ld d, e

jr_025_5c05:
    ld e, a
    ld a, [de]
    ld bc, $0101
    add hl, de
    ld l, [hl]
    ld l, a
    dec d
    ld d, e
    ld h, b
    ld e, a
    jr @+$03

    ld c, $1b
    inc d
    ld d, $01
    ld d, e
    ld h, c
    ld l, a
    jr jr_025_5c1e

    add hl, de

jr_025_5c1e:
    ld e, [hl]
    ld e, a
    jr jr_025_5c3d

    inc sp
    ld l, a
    dec d
    dec de
    dec de
    add hl, de
    ld l, [hl]
    ld l, a
    inc de
    ld e, [hl]
    ld e, a
    ld e, a
    inc de
    ld e, [hl]
    ld e, a
    jr jr_025_5c49

    ld d, $1c
    ld l, [hl]
    ld l, a
    ld l, a
    inc de
    ld l, [hl]
    ld l, a
    jr jr_025_5c3e

jr_025_5c3d:
    add hl, de

jr_025_5c3e:
    ld e, [hl]
    ld e, a
    ld b, e
    ld e, a
    ld a, [de]
    inc d
    inc d
    dec de
    dec de
    inc e
    ld l, [hl]

jr_025_5c49:
    ld l, a
    ld d, e
    nop
    ldh [$0b], a
    ld d, h
    ld d, h
    ld d, d
    dec de
    dec de
    inc e
    add hl, bc
    ld a, e
    ld a, [hl]
    ld a, a
    or l
    dec l
    ld d, d
    jr nc, jr_025_5bdd

    or l
    inc c
    ld a, a
    ld a, e
    ld a, h
    ld d, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld c, [hl]
    ld b, b
    ld c, l
    inc [hl]
    ld e, $00
    ld b, $52
    ld d, e
    ld d, h
    ld d, d
    ld d, e
    dec l
    ld d, d
    dec d
    ld d, $16
    rla
    ld d, e
    ld [$2d24], sp
    or l
    ld d, d
    ld d, e
    ld h, d
    ld b, b
    ld [hl], $d0
    dec [hl]
    ld h, e
    ld d, d
    ld h, e
    ld d, b
    ld d, h
    sub b
    ld [hl], a
    dec l
    ld d, c
    ret nc

    ld d, b
    ld d, c
    ld d, d
    ld d, c
    add e
    ld d, d
    db $fc
    inc bc
    ld d, h
    ld c, [hl]
    ld h, e
    ld d, e
    ld d, c
    or l
    add e
    add e
    add e
    rst $08
    or b
    add e
    ld d, e
    or l
    push de
    sub d
    push de
    sub d
    ld d, e
    ld a, $54
    sub d
    add e
    add e
    ld h, a
    ld d, e
    add e
    push de
    push de
    push de
    ldh a, [$c3]
    sub d
    add e
    ld d, d
    ld d, e
    add e
    add e
    ld d, d
    ld d, e
    add e
    ld a, [bc]
    ccf
    sub d
    push de
    push de
    add e
    ld d, d
    ld d, e
    add e

jr_025_5cc9:
    add e
    ld d, d
    rst $38
    ld bc, $5254
    add e
    rrca
    rrca
    rrca
    or b
    rrca
    push hl
    adc a
    rrca
    or b
    ld d, d
    add e
    or b
    ld d, d
    ld l, b
    ld a, a
    ld c, $0f
    ld d, d
    ld d, e
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    jr c, jr_025_5cc9

    rrca
    ld a, d
    ld d, d
    ld d, e
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld d, d
    ld d, e
    add b
    inc bc
    rrca
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld d, d
    ld d, e
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld d, d
    cp $03
    ld d, h
    ld d, e
    ld d, e
    rrca
    or b
    and d
    and d
    and d
    ret nz

    ccf
    rrca
    and d
    and d
    and d
    and d
    ld d, e
    or b
    ld d, e
    and d
    rst $38
    db $fc
    rrca
    ld d, e
    and d
    di
    rst $08
    rrca
    ld d, e
    and d
    ld d, e
    and d
    ccf
    rst $38
    rrca
    ld d, e
    and d
    add b
    inc bc
    ld b, b
    ld d, h
    ld d, h
    ld d, d
    dec de
    add hl, de
    inc b
    ld c, [hl]

jr_025_5d34:
    and d
    or b
    ld d, d
    inc b
    jr jr_025_5d51

    jr nc, jr_025_5d34

    rrca
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld h, e
    ldh [$93], a
    rrca
    ld d, b
    ld d, c
    ret nc

    ld d, b
    ld d, c
    and d
    and d
    and d

jr_025_5d51:
    and d
    db $fc
    di
    rrca
    and d
    ld sp, $52a2
    rst $08
    ccf
    rrca
    and d
    ld d, d
    and d
    ld d, d
    rst $38
    ld bc, $4d40
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [hl], b
    rst JumpTable
    rrca
    ld d, h
    ld d, h
    ld d, h
    ld d, d
    or b
    ld d, d
    ld a, a
    cp $0f
    ld d, d
    inc [hl]
    add sp, $07
    rrca
    or b
    ld d, d
    ld d, e
    or b
    ld d, d

jr_025_5d80:
    inc sp
    jr nc, jr_025_5db3

    inc [hl]
    rra
    ld a, h
    rrca
    ld d, d
    dec l
    ld c, [hl]
    ld b, b
    ld h, e
    ld d, d
    cp $03
    sbc d
    sbc c
    sbc b
    ld de, $2b2b
    inc l
    ld a, e
    add c
    add b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc b
    inc l
    ld a, e
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    dec h
    inc h
    sbc b
    ld hl, $7d20
    ld a, [hl]
    cp e
    inc h
    cp l
    cp [hl]
    ld a, e
    sbc b
    inc h
    cp l

jr_025_5db3:
    ld a, e
    ld a, h
    ld a, [hl]
    ld a, a
    adc c
    nop
    ld a, e
    ld a, h
    sbc b
    ld a, h
    cp a
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc b
    ld a, l
    ld a, [hl]
    ld a, [hli]
    sub b
    db $10
    ld a, e
    inc h
    cp l
    ld a, [hl]
    cp a
    dec h
    sbc b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    inc hl

jr_025_5dd5:
    ld a, l
    xor h
    rst $00
    ld bc, $9b9a
    cp $9c
    xor [hl]
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld b, $10
    dec l
    jr z, jr_025_5d80

    inc h
    cp l
    ld a, [hl]
    cp a
    ld a, e
    ld a, [hl]
    jr z, jr_025_5e02

    sub a
    ld a, h
    ld a, l
    add hl, bc
    ld bc, $be7c
    ld a, l
    jr z, jr_025_5e28

    ld de, $7b97
    ld a, [hl]
    ld a, l
    ld a, a
    ld a, a

jr_025_5e02:
    ld a, [hli]
    dec hl
    ld c, b
    ld bc, $2b7e
    sub a
    ld a, l
    ld a, a
    cp a
    ld a, l
    ld a, e
    ld a, h
    sub a
    ld h, $27
    ld a, e
    jr z, jr_025_5dd5

    ld a, a
    xor d
    daa
    ld a, h
    cp a
    ld a, [hl]
    dec h
    sub a
    and d
    sbc b
    jr jr_025_5e3a

    sbc h
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    xor [hl]

Call_025_5e28:
jr_025_5e28:
    sbc b
    ld h, $26
    daa
    ld a, l
    jp z, $cccb

    ld a, h
    sub a
    sbc b
    ld de, $2c11
    rst $00
    adc b
    adc c
    adc d

jr_025_5e3a:
    call $9897
    db $f4
    db $f4
    ld a, e
    ret z

    ld [hl], b
    rst $38
    ld [hl], c
    adc $97
    sbc b
    dec l
    add hl, hl
    ld a, a
    ret


    add b
    cp $81
    rst $08
    sub a
    sbc b
    ld de, $2711
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    sub a
    sbc b
    dec hl
    dec hl
    ld de, $2726
    ld a, a
    ld a, h
    ld a, l
    sub a
    sbc b
    ld a, e
    ld a, h
    jr z, jr_025_5e7a

    add hl, hl
    ld a, [hl]
    ld a, l
    ld a, a
    sub a
    inc bc
    rrca
    and [hl]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld h, h

jr_025_5e7a:
    ld h, l
    inc a
    ldh a, [$a6]
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ret nz

    inc bc
    and [hl]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    db $10
    ld b, b
    ld h, d
    and [hl]
    and [hl]
    ld a, d
    ld a, e
    ld h, e
    ld h, h
    ld [hl], e
    db $ec
    ld b, a
    ld a, e
    ld a, d
    xor l
    xor h
    ld h, e
    ld bc, $6404
    ld d, b
    ld b, b
    ld d, c
    xor l
    xor h
    cp l
    cp h
    ld h, d
    ld h, e
    ld h, b
    add b
    ld h, c
    cp l
    cp h
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    inc c
    xor b
    ld de, $2d53
    or l
    dec l
    ld a, [bc]
    dec bc
    ld e, $6e
    ld d, e
    dec l
    dec l
    inc bc
    sbc b
    dec l
    ld a, [bc]
    dec bc
    ld d, e
    ld de, $11b5
    ld de, $b5b5
    ld de, $2353
    ld e, [hl]
    ld de, $b52d
    dec l
    dec l
    or l
    ld h, e
    dec l
    or l
    ld hl, sp+$0f
    ei
    ld de, $4c2d
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    jr c, jr_025_5f35

    dec bc
    ld l, a
    inc b
    dec e
    ld e, $5e
    ld e, a
    inc sp
    inc c
    or l
    or l
    dec l

jr_025_5f35:
    ld d, b
    add b
    dec l
    ld [$606e], sp
    ld e, a
    ld de, $b5b5
    ld de, $1e0a
    ld l, [hl]
    ld l, a
    or l
    dec bc
    ld e, e
    ld de, $2d2d
    ld a, [bc]
    dec bc

jr_025_5f4c:
    ld b, e
    or l
    dec l
    dec l
    db $fc
    rlca
    ei
    dec l
    ld d, e
    ld d, e
    db $fd
    db $fd
    db $fd
    db $fd
    rst JumpTable
    ld a, a
    db $fd
    ld d, e
    inc sp
    sbc [hl]
    dec l
    ld l, b
    add e
    add e
    ld a, b
    jr nc, jr_025_5f94

    ld d, d
    inc sp
    ld l, b
    add $2d
    add e
    ld d, d
    ld b, e
    ld b, d
    and b
    ld d, d
    and $53
    add e
    add e
    dec l
    ld h, e
    ld d, [hl]
    dec l
    rst $20
    ld d, e
    add e
    ld d, d
    nop
    ld d, c
    ld h, d
    ld b, b
    ld e, b
    ld [$2d5a], a
    add e
    nop
    dec l
    ld h, d
    or l
    ld d, b
    add l
    rst $28
    add [hl]
    ld d, c
    jp nz, $2d83

    dec l

jr_025_5f94:
    ld d, b
    or l
    or l
    ccf
    add e
    jr nc, jr_025_5fcb

    rst $38
    jr nc, @-$02

    and b
    sub d
    ld d, e
    add e
    add e
    ld d, d
    ld d, e
    add e
    push de
    push de
    jp nz, $920f

    push de
    add e
    ld d, d
    ld d, e
    add e
    add e
    ld d, d
    ld d, e
    add e
    ld a, [hli]
    db $fc
    sub d
    push de
    push de
    push de
    add e
    ld d, d
    ld h, e
    add e
    ld sp, hl
    di
    add e
    ld d, d
    ld d, c
    or l
    ld d, d
    ret nz

    ccf
    jr nc, jr_025_5f4c

    add e
    add e

jr_025_5fcb:
    or l
    ld h, a
    ld [hl-], a
    ld [hl-], a
    dec l
    ld c, $0f
    ld d, e
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    jr c, jr_025_5fe8

    ld [hl], h
    ld d, d
    ld d, e
    sbc e
    sbc h
    ldh [rIF], a
    sbc l
    sbc [hl]
    sbc a
    ld d, d
    ld d, e
    ld b, $75
    sbc e

jr_025_5fe8:
    rst $28
    sbc a
    ld d, d
    ld d, e
    rrca
    jr c, jr_025_601d

    rrca
    rrca
    xor e
    xor a
    ld d, d
    db $fc
    rrca
    ld d, e
    or b
    ld hl, sp+$0f
    or b
    ld d, d
    ld d, e
    rlca
    rrca
    ld h, d
    ld d, e
    ei
    ei
    ei
    rra
    ei
    ld d, b
    ld d, e
    db $fd
    rst $38
    db $fd
    db $fc
    di
    rrca
    ld d, e
    and d
    ld d, e
    and d
    rst $08
    ccf
    rrca
    ld d, e
    and d
    ld d, e
    or b
    pop hl
    add [hl]
    rrca
    and d

jr_025_601d:
    and d
    and d
    and d
    ld d, e
    ld sp, $3030
    inc [hl]
    nop
    ld l, [hl]
    ei
    rrca
    rrca
    ld h, e
    rrca
    or b
    ld h, d
    ld b, b
    ld b, b
    ld h, e
    ld d, c
    ld c, e
    ld hl, sp-$01
    db $fd
    ld d, h
    ld d, h
    ld c, h
    rst $38
    rrca
    db $fc
    rrca
    and d
    ld d, d
    di
    rrca
    and d
    ld d, d
    rst $08
    rrca
    and d
    ld d, d
    ld l, a
    and d
    rrca
    ld d, d
    ld a, a
    rrca
    or b
    db $fc
    ei
    rrca
    ld d, d
    ldh a, [$fd]
    ei
    ei
    ei
    ld d, d
    rst JumpTable
    db $fd
    ld d, d
    ld a, a
    db $fd
    ld h, d
    ldh a, [$e1]
    rrca
    ld c, [hl]
    ld h, e
    ld d, h
    ld d, c
    ld d, d
    ld d, e
    ld d, c
    or b
    rlca
    adc a
    rrca
    ld d, d
    ld d, e
    or b
    or e
    or h
    or b
    ld d, d
    ld d, e
    inc e
    ld a, [hl]
    rrca
    or d
    ld l, a
    ld e, [hl]
    or h
    ld d, d
    ld d, e
    or d
    ld hl, sp+$07
    rrca
    ld l, a
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ei
    ei
    ei
    add b
    ld a, a
    db $fd
    ei
    ei
    ei
    ei
    ei
    ld d, d
    ld h, e
    ld d, d
    jr nz, jr_025_60a7

    ld a, h
    sub a
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, l
    inc hl
    sbc h
    sub a
    ld a, e
    ld a, l
    ld a, [hl]
    dec h
    ld [bc], a
    add h
    inc l

jr_025_60a7:
    ld h, $7e
    ld a, a
    sub a
    daa
    ld a, [hl]
    cp e
    inc h
    dec hl
    ld a, h
    ld a, e
    ld a, h
    sub a
    xor b
    ld [$7f7d], sp
    ld a, e
    ld a, h
    ld a, [hl]
    ld a, [hl]
    sub a
    ld a, e
    ld a, h
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, [hl]
    add b
    ld b, b
    ld a, h

Call_025_60c6:
    ld a, a
    ld a, [hl]
    sub a
    daa
    ld a, l
    dec h
    cp l
    cp a
    ld a, e
    cp e
    inc h
    sub a
    add hl, hl
    inc hl
    add b
    rst $38
    xor d
    ld a, h
    ld a, l
    inc hl
    ld a, l
    ld a, [hl]
    ld a, a
    xor c
    rst $38
    inc bc
    sbc d
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    inc b
    ld b, c
    ld a, h
    ld a, e
    inc hl
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, l
    ld a, [hl]
    cp [hl]
    ld a, l
    ld a, [hl]
    cp e
    ld bc, $2440
    ld h, $26
    daa
    ld a, a
    ld a, e
    ld a, h
    cp e
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, [hli]
    ld de, $bd2b
    ld [hli], a
    db $10
    ld a, e
    ld a, a
    inc h
    cp l
    ld a, h
    cp [hl]
    ld a, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, h
    ld a, l
    ld a, [hl]
    ret nz

    rst $38
    xor d
    ld a, a
    ld a, e
    ld a, [hl]
    dec h
    ld h, $26
    inc b
    inc b
    ld a, h
    sbc e
    ld a, e
    jr z, jr_025_6139

    add hl, hl
    ld a, l
    ld a, [hl]
    ld a, a
    sub a
    ld a, l
    ld a, [hl]
    ld a, [hli]
    dec hl
    inc l
    ld d, c
    db $10
    ld a, a
    ld a, e
    ld a, [hl]
    sub a
    ld a, h

jr_025_6139:
    ld a, h
    ld c, a
    ld a, h
    ld a, l
    ld a, [hl]
    sub a
    inc h
    cp l
    ld b, b
    ld [hl], b
    ld h, $7f
    ld a, [hl]
    ld c, a
    ld a, a
    ld a, a
    dec h
    sub a
    ld a, e
    ld a, h
    ld a, l
    dec h
    dec l
    ld b, b
    rlca
    dec l
    ld de, $7e97
    ld a, l
    ld a, [hl]
    jr z, jr_025_616b

    sub a
    ld h, $26
    ld h, $11
    ret nz

    ld a, a
    xor d
    ld de, $112d
    dec l
    dec l
    sub a
    and d
    cp e
    add c

jr_025_616b:
    add d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    add a
    adc b
    cp d
    sub b
    sub c
    sub d
    sub e
    ld h, h
    ld h, l
    sub [hl]
    sub a
    sbc b
    sbc c
    and b
    and c
    and d
    and e
    and h
    and l
    db $ed
    and a
    xor b
    xor c
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    sbc d
    adc d
    dec b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    dec b
    sbc e
    adc e
    cp e
    push hl
    dec bc
    add hl, bc
    dec b
    dec b
    ld [$e50b], sp
    cp d
    xor e
    push hl
    inc c
    inc b
    dec bc
    inc b
    dec bc
    inc c
    push hl
    xor d
    cp h
    xor e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    xor d
    cp l
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    sbc [hl]
    or b
    cp b
    ld e, b
    ld e, b
    jr z, @+$60

    or b
    cp c
    or e
    adc b
    and b
    ld e, c
    and b
    ld e, a
    ld e, c
    add [hl]
    db $10
    or c
    or e
    and b
    rra
    and b
    or c
    or e
    sub d
    ld a, h
    and b
    sub d
    sub d
    or c
    ld [hl], b
    and b
    or e
    and c
    and c
    and c
    adc b
    pop bc
    and b
    or c
    or e
    db $10
    db $10
    and c
    ld h, b
    db $10
    and b
    adc c
    adc d
    or c
    or e
    and c
    rrca
    and b
    adc b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $c4
    call z, $a2f8
    call nz, $c7cd
    rst $20
    and d
    push bc
    rst $00
    sbc a
    and d
    push bc
    rst $00
    ld a, a
    and d
    push bc
    cp $a2
    rst $00
    ld sp, hl
    and d
    push bc
    rst $00
    rst $20
    and d
    push bc
    rst $00
    rra
    and d
    push bc
    adc $c6
    ld [hl], e
    add $e0
    pop hl
    rst $08
    cp $c4
    call z, Call_025_5e28
    ld e, b
    call $87c7
    and d
    and c
    and b
    ld e, a
    and c
    and c
    ld e, c
    push bc
    rst $00
    and d
    ld c, $a1
    and d
    and d
    push bc
    rst $00
    and d
    ld h, a
    and d
    adc c
    adc d
    push bc
    cp [hl]
    and d
    rst $00

Call_025_627f:
    adc b
    ld sp, hl
    and d
    push bc
    rst $00
    rst $20
    and d
    push bc
    rst $00
    rra
    and d
    push bc
    adc $c6
    ld [hl], e
    add $e0
    pop hl
    rst $08
    ldh a, [$df]
    cp b
    ld e, b
    ld e, d
    ld e, d
    jr nc, jr_025_62f5

    or b
    cp c
    or e
    ld e, c
    and b
    and b
    pop bc
    and b
    and c
    ld e, [hl]
    or c
    or e
    adc b
    rlca
    and b
    and c
    ld e, a
    or c
    or e
    adc [hl]
    rlca
    adc l
    adc a
    ld e, l
    sub d
    sub d
    or c
    cp $a0
    or e
    pop af
    and b
    or c
    or e
    db $10
    rst $00
    and b
    or c
    or e
    db $10
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $5a
    cp b
    ld hl, sp+$5b
    ld e, d
    cp c
    or e
    rlca
    ld e, e
    or c
    or e
    add a
    and b
    and b
    rrca
    and b
    add a
    or c
    or e
    add a
    ccf
    and b
    add a
    or c
    db $fc
    and b
    or e
    add a
    ldh a, [$a0]
    add a
    or c
    or e
    add a
    jp $87a0


    or c
    or e
    add a

jr_025_62f5:
    rrca
    and b
    add a
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $b0
    cp b
    inc bc
    or b
    or e
    add h
    add l
    adc h
    adc e
    and b
    ldh [$a2], a
    adc b
    and b
    adc b
    and b
    or e
    ld [hl-], a
    and b
    and d
    adc c
    adc d
    or e
    and d
    ret c

    and b
    and d
    and d
    and d
    adc b
    ldh a, [$a0]
    or e
    db $10
    db $10
    db $10
    ei
    and b
    or e
    rst $28
    and b
    or e
    ccf
    and b
    cp d
    or d
    di
    or d
    ldh [$e1], a
    rra
    nop
    or b
    ld e, b
    ld e, b
    ld e, b
    ld e, d
    cp c
    and c
    ld e, [hl]
    inc e
    ld e, [hl]
    and c
    ld e, c
    ld d, b
    pop bc
    and c
    ld e, c
    ld e, c
    ld e, e
    or c
    ld e, a
    ld e, a
    and b
    and b
    and b
    and b
    ld sp, $ff78
    and b
    and c
    and c
    and c
    or c
    db $fd
    di
    and b
    or c
    sbc [hl]
    or c
    ret nz

    ld a, a
    or d
    and b
    and b
    and b
    and b
    sbc [hl]
    or c
    cp e
    ret nz

    inc bc
    xor d
    cp b
    or b
    or b
    or b
    cp c
    jp $a0b3


    sbc l
    and c
    or c
    jp $3c0f


    xor d
    inc sp
    and b
    sbc l
    and c
    or c
    jp $a0b3


    ldh a, [$c0]
    xor d
    and c
    and c
    or c
    jp $a0b3


    and b
    and b
    or c
    jp $e038


    and b
    xor d
    xor d
    or e
    or c
    jp $aaaa


    xor d
    xor d
    or e
    inc a
    ldh a, [$aa]
    or c
    jp $b2ba


    or d
    or d
    cp e
    jp $01fe


    or b
    cp b
    cp c
    or e
    rst $30
    rst $30
    pop af
    and b
    and b
    and l
    ld [de], a
    and b
    push af
    or c
    or e
    ld e, [hl]
    rst $30
    rst $30
    or $31
    or e
    rst $30
    ld a, $f6
    and b
    ld e, a
    rst $30
    or c
    or e
    push af
    ret nz

    pop hl
    and b
    adc b
    or c
    or e
    rst $30
    rst $30
    or $89
    adc d
    or c
    or e
    add b
    ld [hl], e
    or d
    and b
    and b
    and b
    and b
    adc b
    or c
    cp d
    ldh [$e1], a
    cp e
    ret nz

    inc bc
    xor d
    cp b
    or b
    or b
    or b
    cp c
    jp $a0b3


    rst $30
    inc e
    or c
    jp $3c0f


    xor d
    inc sp
    and b
    and b
    inc e
    or c
    jp $f5b3


    ldh a, [$c0]
    xor d
    rst $30
    and b
    or c
    jp $f6b3


    and b
    and b
    or c
    jp $0f03


    xor d
    or e
    and b
    and b
    and b
    or c
    jp $1cb3


    and b
    and b
    inc a
    ldh a, [$aa]
    or c
    jp $b2ba


    ldh [$e1], a
    cp e
    jp $b036


    cp b
    cp h
    cp h
    ld e, d
    ldh a, [$a0]
    ld e, d
    cp c
    or e
    ld b, h
    ldh [$a0], a
    adc h
    ld e, c
    ld e, e
    or c
    cp a
    ld e, $ac
    and b
    cp l
    or e
    and b
    ld b, $a0
    adc b
    xor h
    adc c
    adc d
    xor h
    or c
    ld c, $ab
    or e
    and b
    xor h
    xor h
    xor h
    ret nz

    and b
    xor h
    or c
    cp a
    ld h, h
    ld h, e
    xor e
    rlca
    and b
    cp l
    or e
    ld h, d
    ld h, l
    xor e
    rlca
    and b
    db $10
    db $10
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ld e, $b0

jr_025_6463:
    cp b
    reti


    reti


    reti


    jr nc, @-$52

    reti


    cp c
    or e
    ld b, l
    xor e
    jp c, $ace0

    jp c, $dada

    or c
    or e
    rra
    xor e
    or c
    or e
    xor h
    ld a, [hl]
    xor h
    adc b
    or c
    ld a, [c]
    xor h
    or e
    adc c
    adc d
    reti


    xor h
    or c
    or e
    adc b
    pop bc
    xor h
    adc [hl]
    adc a
    or c
    or e
    ld b, h
    inc e
    db $10
    xor h
    xor h
    or c
    cp d
    or d
    ld a, a
    or d
    cp e
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    ccf
    xor d
    cp b
    or b
    ld a, a
    or b
    cp c
    cp $a0
    or e
    ld sp, hl
    and b
    or c
    or e
    rst $00
    and b
    or c
    or e
    ld b, h
    rrca
    and b
    ld b, h
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $b0
    cp b
    jr nc, jr_025_6463

    or b
    cp c
    or e
    ld b, l
    pop af
    inc e
    ldh [$92], a
    and b
    and b
    ld b, l
    or c
    or a

jr_025_64d0:
    inc e
    sub d
    and b
    inc e
    or [hl]
    cp b
    or b
    ld [hl], a
    or b
    ld d, d
    cp c
    ld e, $f7
    or e
    and b
    and b
    and b
    ld hl, sp-$60
    inc e
    or c
    or e
    ld b, e
    and b
    inc e
    or c
    or e
    ld b, h
    rst $30
    rlca
    and b
    rst $30
    inc e
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    jr c, jr_025_64fb

jr_025_64fb:
    call nz, $a6a6
    ret nc

    db $e4
    push hl
    push bc
    cp c
    cp b
    jp nc, $c6d1

    add $c6
    add b
    inc bc
    and b
    and $e7
    rst $00
    or c
    or e
    db $d3
    sub l
    and h
    and h
    and h
    or c
    or e
    ld h, e
    ld a, [hl]
    ld hl, sp-$60
    sub l
    or c
    or e
    ld h, d
    sub l
    pop hl
    add e
    and b
    or c
    or e
    ld h, l
    sub l
    add a
    or c
    or e
    ld h, c
    sub l
    rrca
    jr jr_025_64d0

    add a
    or c
    or e
    ld h, c
    sub l
    or h
    or l
    or h
    or d
    cp e
    sbc [hl]
    ld bc, $b6b0
    call z, $b7cd
    sub l
    add h
    add l
    and b
    and l
    adc $06
    add b
    and b
    rst $08
    sub h
    sub l
    and c
    and c
    cp b
    or b
    jp z, $b0cb

    or b
    cp c
    sub l
    ld bc, $a006
    or e
    sub h
    ld h, h
    ld h, l
    sub l
    adc h
    or c
    sub l
    ld d, c
    sbc c
    sub [hl]
    sub [hl]
    sub a
    jr jr_025_65cd

    db $10
    and b
    or c
    sub l
    or e
    and b
    and b
    and c
    and c
    or c
    sub l
    or e
    nop
    ld [hl], b
    or d
    and b
    and b
    and c
    db $10
    db $10
    or c
    sbc e
    sub d
    sub d
    cp d
    ldh [$e1], a
    cp e
    ld b, [hl]
    or b
    cp b
    add b
    add e
    add b
    ld e, b
    and b
    add c
    ld e, b
    cp c
    or e
    ld e, [hl]
    and c
    add d
    ld b, $59
    adc h
    or c
    or e
    ld e, a
    and c
    and b
    rra
    and b
    or c
    or e
    and c
    ld l, [hl]
    and b
    and c
    adc b
    or c
    ld a, $a0
    or e
    adc c
    adc d
    ld sp, hl
    and b
    or c
    or e
    push hl
    and b
    adc b
    or c
    or e
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    add sp, -$17
    cp e
    or h
    ld e, d
    cp b
    add b
    ld e, b
    ld e, b
    ldh a, [$59]
    add b
    cp c
    or e
    add c
    inc bc
    ld e, c
    add c

jr_025_65cd:
    or c
    or e
    adc [hl]
    adc l
    adc a
    inc bc
    and e
    adc [hl]
    adc l
    adc a
    or c
    or e
    and c
    ld h, c
    and c
    and e
    adc [hl]
    adc a
    and e
    or c
    ld a, b
    and e
    or e
    and c
    adc e
    adc e
    ld sp, hl
    and c
    or c
    or e
    ldh [$a0], a
    and c
    and c
    and c
    or c
    or e
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ld a, $b0
    cp b
    ld e, b
    ld e, b
    jr z, jr_025_6661

    ld e, b
    or b
    or e
    add [hl]
    and c
    and b
    rlca
    ld e, c
    and b
    or e
    ld e, a
    and c
    ld e, a
    ld a, $a0
    and c
    or e
    and c
    cp b
    and b
    and c
    and c
    and c
    adc b
    ld a, [hl]
    and b
    or e
    adc c
    ld a, [$8aa0]
    or e
    db $ed
    and b
    adc b
    or e
    ccf
    and b
    cp d
    or d
    di
    or d
    ldh [$e1], a
    rst $38
    ld bc, $b9b0
    and b
    and b
    and b
    and b
    and h
    and h
    rlca
    rra
    and h
    or c
    and b
    and b
    and b
    sub h
    or c
    and b
    and b
    ld a, h
    ldh a, [$a4]
    and b
    sub h
    or c
    and b
    and b
    and b
    sub h
    ld a, h
    ldh a, [$a0]
    and h
    or c
    adc h
    ld a, [$fafa]
    or c
    ret nz

    ld [hl], e
    or d
    and b
    sub h
    ld a, [$fafa]
    or c

jr_025_6661:
    ldh [$e1], a
    cp e
    cp $c4
    call z, $a2f8
    call nz, $c7cd
    rst $20
    and d
    push bc
    rst $00
    rra
    and d
    push bc
    rst $00
    adc e
    ld h, c
    adc e
    add hl, bc
    and d
    and d
    add hl, bc
    push bc
    cp $a2
    rst $00
    ld sp, hl
    and d
    push bc
    rst $00
    rst $20
    and d
    push bc
    rst $00
    rra
    and d
    push bc
    adc $c6
    ld [hl], e
    add $e0
    pop hl
    rst $08
    or [hl]
    or b
    cp b
    cp h
    cp h
    ld hl, sp-$55
    or b
    cp c
    or e
    jp nz, $aba0

    ld b, h
    or c
    cp a
    xor e
    dec de
    and b
    xor e
    cp l

jr_025_66a6:
    or e
    xor e
    ld l, a
    and b
    xor e
    or c
    xor h
    and b
    or e
    xor e
    and l
    xor e
    pop af
    and b
    or c
    cp a
    xor e
    pop hl
    xor e
    and b
    and b
    cp l
    or e
    rlca
    xor e
    and b
    and b
    or c
    cp d
    or d
    ld l, l
    or d
    cp [hl]
    cp [hl]
    cp e
    cp $01
    or b
    cp b
    cp c
    or e
    ld h, c
    ld h, d
    sub l
    and b
    and b
    ld b, $18
    db $10
    and c
    or c
    or e
    ld h, e
    ld h, h
    sub l
    and b
    and b
    and c
    or c
    or e
    sub [hl]
    inc c
    ld a, [hl]
    and b
    sub [hl]
    sub a
    and c
    and c
    and c
    or c
    or e
    adc b
    ld sp, hl
    db $e3
    and b
    or c
    or e
    adc e
    or c
    or e
    add b
    ld [hl], e
    or d
    and b
    and b
    and b
    adc c
    adc d
    or c
    cp d
    ldh [$e1], a
    cp e
    cp $b0
    cp b
    jr c, jr_025_66a6

    or b
    cp c
    or e

jr_025_670b:
    and b
    and b
    ldh [$9e], a
    ld h, h
    ld h, e
    ld h, c
    or c
    or e
    add e
    and b
    ld h, e
    ld h, d
    ld h, l
    or c
    or e
    ld a, a
    and b
    or c
    inc e
    adc l
    or e
    adc [hl]
    adc a
    and b
    and b
    ld a, c
    and b
    or c
    or e
    add [hl]
    rst $20
    and b
    or c

jr_025_672d:
    or e
    dec e
    and b
    add [hl]
    or c
    cp d
    or d
    ld a, h
    or d
    ldh [$e1], a
    cp e
    ld a, b
    push bc
    jp $c4c3


    add $07
    jp $cbc4


    db $dd
    sbc $dd
    jr jr_025_670b

    sbc $cc
    add $c1
    call $00d5
    db $dd
    sbc $d5
    rst $08

Call_025_6753:
    jp nz, $c4c3

    rrc h
    adc $ca
    call $dbcf
    call z, Call_025_60c6
    db $db

jr_025_6761:
    pop bc
    ret z

    call c, $cad7
    reti


    jr nc, @-$28

    ret c

    jp nz, $c9c1

    call c, $82d7
    call c, $d6d7
    jp nz, Jump_025_44c1

    ret


    dec c
    sub $dc
    jp c, $c7c2

    db $d3
    ld a, a
    db $d3
    call nc, Call_025_7000
    or b
    dec h
    add hl, hl
    inc h
    inc l
    jr z, jr_025_672d

    jr z, jr_025_67b7

    inc h
    inc l
    ld a, [hli]
    cp b
    ld d, b
    add b
    rrca
    and b
    or b
    or b
    cp c
    daa
    dec hl
    or e
    ld e, [hl]
    or c
    ld h, $26
    or e
    ld a, $fc
    and b
    ld e, a
    or c
    jr z, jr_025_67cd

    or e
    ldh a, [$c0]
    and b
    or c
    daa
    jr z, jr_025_6761

    adc c
    adc d
    or c
    dec hl
    ld a, [hli]
    or e
    nop
    inc sp
    or d

jr_025_67b7:
    and b
    and b
    adc b
    adc b
    or c
    add hl, hl
    add hl, hl
    cp d
    ldh [$e1], a
    cp e
    dec h
    cp $c4
    call z, $a2f0
    call nz, $c7cd
    sbc [hl]
    db $e3

jr_025_67cd:
    and d
    ld b, h
    push bc
    rst $00
    sbc a
    and d
    push bc
    rst $00
    ld a, a
    and d
    push bc
    ld a, [$c7a2]
    adc e
    ld sp, hl
    and d
    push bc
    rst $00
    rst $00
    and d
    push bc
    rst $00
    inc de
    ld e, $9e
    and d
    push bc
    adc $c6
    ld a, a
    add $cf
    cp $c4
    call z, $a0e8
    call nz, $c7cd
    add hl, bc
    ld h, [hl]
    and b
    add hl, bc
    push bc
    rst $00
    and c
    sbc h
    and b
    and c
    and c
    push bc
    rst $00
    ld [hl], c
    and b
    and c
    pop af
    and c
    push bc
    add $a0
    rst $00
    and c
    and c
    and c
    jp hl


    and b
    push bc
    rst $00
    add hl, bc
    and $a0
    add hl, bc
    push bc
    rst $00
    rrca
    and b
    ld b, h
    push bc
    adc $c6
    ld a, a
    add $cf
    ld hl, sp-$50
    cp b
    ld e, b
    ld e, d
    ldh [$a6], a
    or b
    cp c
    or e
    ld e, c
    ld e, e
    add a
    and [hl]
    or c
    or e
    and b
    and b
    rra
    and [hl]
    or c
    or e
    adc c
    ld a, [hl]
    sub [hl]
    adc d
    or c
    cp $a0
    or e
    ld sp, hl
    and b
    or c
    or e
    rst $00
    and b
    or c
    or e
    inc e
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $b0
    cp b
    nop
    ld e, b
    cp c
    or e
    add h
    add l
    add a
    and b
    ld a, [$1003]
    ld e, c
    or c
    or e
    and b
    and b
    adc b

Call_025_6867:
    ld e, $fa
    and b
    or c
    or e
    and b
    ld a, b
    ld a, [$8a89]
    and b
    or c
    ldh a, [$fa]
    or e
    and b
    and b
    and b
    ld [hl], b
    and b
    ld a, [$b3b1]
    ld e, [hl]
    ld a, [$fa07]
    or c
    or e
    ld e, a
    and b
    and b
    inc e
    ld a, [$a0a0]
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ld h, b
    and b
    and b
    or e
    ld h, c
    sub l
    or [hl]
    or a
    or [hl]
    jp nc, $b3b9

    ld h, e
    sub l
    add a
    add b
    inc bc
    and b
    sbc b
    sbc d
    db $d3
    or c
    or e
    ld h, d
    sub l
    sub h
    ld h, e
    ld h, l
    or c
    or e
    ld h, l
    ld c, $38
    and b
    sub l
    sub h
    ld h, e
    ld h, c
    or c
    or e
    ld h, c
    sub l
    sbc c
    sub [hl]
    ldh [$87], a
    and b
    add a
    or c
    or e
    ld h, l
    sub l
    or c
    or e
    ld h, e
    sub l
    add b
    ld c, a
    or d
    and b
    and b
    and b
    and b
    and b
    or c
    cp d
    ldh [$e1], a
    cp e
    ld h, $00
    or b
    cp b
    ld e, b
    ld e, b
    add b
    add e
    add b
    cp c
    or e
    add h
    add l
    ld e, c
    ld e, c
    add [hl]
    ldh [rIF], a
    and b
    add c
    add d
    add c
    or c
    or e
    ld a, [$b3b1]
    adc e
    rlca
    db $10
    and b
    and e
    and e
    ld a, [$b1fa]
    or e
    and c
    and c
    sub l
    and e
    adc c
    adc d
    add c
    rlca
    ld a, [$b3b1]
    ld e, [hl]
    and c
    sub l
    and b
    or c
    or e
    ld e, a
    and c
    sub l
    add b
    ld [hl], e
    or d
    ld a, [$10fa]
    db $10
    db $10
    or c
    cp d
    ldh [$e1], a
    cp e
    jp $a707


    cp b
    or b
    or b
    cp c
    cp b
    or a
    add b
    adc e
    or [hl]
    add b
    rrca
    and b
    or b
    or b
    cp c
    and a
    and a
    or e
    and c
    or c
    and a
    and a
    or e
    ld a, $78
    and b
    and c
    or c
    and a
    and a
    or e
    and c
    ld h, e
    ldh [$81], a
    and b
    or c
    and a
    and a
    or e
    and c
    ld h, l
    or c
    and a
    and a
    or e
    and c
    nop
    inc sp
    or d
    and b
    and b
    ld h, d
    ld h, h
    or c
    and a
    and a
    cp d
    ldh [$e1], a
    cp e
    and a
    ld a, [hl]
    or b
    cp b
    ld e, b
    ld e, b
    and b
    ld e, d
    cp c
    or e
    ld h, l
    adc h
    and b
    ld h, e
    add [hl]
    ld e, c
    ld e, e
    or c
    or e
    ld h, h
    sbc a
    and b
    or c
    or e
    rrca
    and b
    and c
    and c
    and c
    or c
    ld a, $a0
    or e
    and c
    and c
    ret z

    and b
    and c
    or c
    or e
    adc c
    adc d
    ldh [$a0], a
    and c
    and c
    and c
    or c
    or e
    jr jr_025_69a1

    and b
    and b
    and c
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ret nz

    inc bc
    and a
    cp b
    or b

jr_025_69a1:
    or b
    or b
    or b
    cp c
    or e
    xor a
    xor a
    xor a
    xor a
    or c
    rrca
    inc a
    and a
    or e
    xor a
    xor a
    xor a
    xor a
    or c
    or e
    xor a
    ldh a, [$c0]
    and a
    xor a
    xor a
    xor a
    or c
    or e
    ld h, c
    ld h, e
    ld h, d
    xor a
    or c
    ld a, b
    ldh [$af], a
    and a
    and a
    or e
    or c
    and a
    and a
    and a
    and a
    or e
    inc a
    ldh a, [$a7]
    xor a
    or c
    cp d
    or d
    ld [c], a
    db $e3
    or d
    cp e
    add $01
    or b
    cp b
    add b
    add e
    add b
    cp c
    or e
    add a
    and e
    add c
    add d
    add c
    pop bc
    rlca
    and e
    add h
    add l
    or c
    or e
    ld e, [hl]
    and b
    and b
    or c
    or e
    ld e, a
    ld l, a
    ld a, $a0
    adc b
    or c
    or e
    adc c
    adc d
    pop hl
    add l
    and b
    or c
    or e
    db $10
    db $10
    adc b
    or c
    or e
    db $10
    db $10
    add b
    ld [hl], e
    or d
    and b
    and b
    and b
    and b
    and b
    or c
    cp d
    ldh [$e1], a
    cp e
    cp $5a
    cp b
    ld e, b
    ld e, c
    ld e, d
    cp c
    or e
    ld e, e
    ld e, e
    dec b
    ld e, e
    ld e, c
    or c
    or e
    and b
    and b
    and c
    sbc b
    and b
    and c
    and c
    and c
    ld sp, $61b3
    and b
    and c
    adc c
    adc d
    ld [$78b1], sp
    and c
    or e
    and b
    and b
    and b
    pop hl
    and b
    or c
    or e
    ld e, [hl]
    adc e
    rst $00
    and b
    or c
    or e
    ld e, a
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ret nz

    inc bc
    xor d
    cp b
    or b
    or b
    or b
    cp c
    jp $a0b3


    and b
    and b
    or c
    jp $3c0f


    xor d
    inc sp
    and b
    and b
    and b
    or c
    jp $a0b3


    ldh a, [$c0]
    xor d
    and b
    and b
    or c
    jp $a0b3


    and b
    and b
    or c
    jp $e038


    and b
    xor d
    xor d
    or e
    or c
    jp $aaaa


    xor d
    xor d
    or e
    inc a
    ldh a, [$aa]
    or c
    jp $b2ba


    ldh [$e1], a
    cp e
    jp $b0f0


    cp h
    ret nz

    cp l
    cp b
    ret nz

    and [hl]
    or b
    cp c
    jp $c1aa


    or e
    rlca
    and [hl]
    or c
    cp [hl]
    jp nz, $b3bf

    rra
    and [hl]
    or c
    cp b
    inc [hl]
    ld a, h
    add sp, -$50
    or a
    or c
    or $a0
    or e
    ld e, l
    reti


    and b
    or c
    or e
    adc e
    rst $20
    and b
    or c
    or e
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ldh a, [$c3]
    xor c
    cp b
    or b
    or b
    cp c
    or e
    ld b, l
    and b
    or c
    rrca
    ccf
    xor c
    or e
    and b
    and b
    or c
    cp d
    ld [hl], $fc
    rst $38
    xor c
    or d
    cp e
    rst $38
    rst $38
    xor c
    rst $38
    rst $38
    xor c
    ld [hl-], a
    ld bc, $c8c0
    ret


    add $c7
    ret z

    ret


    jp $c1aa


    and b
    ld c, a
    and b
    add c
    rlca
    and b
    jp $c1aa


    jp $c1aa


    jp $c1aa


    jp Jump_025_40aa


    adc $aa
    add $c0
    ld d, d
    ld d, d
    ret nz

    rst $00
    pop bc
    jp $acac


    add hl, hl
    push hl
    xor d
    pop bc
    jp $ac09


    xor h
    add hl, bc
    pop bc
    jp Jump_025_7380


    jp nz, $acac

    xor d
    xor d
    xor d
    pop bc
    jp z, $e5e4

    set 4, [hl]
    or b
    cp b
    cp c
    or [hl]
    ret nz

    ld a, [c]
    or b
    cp c
    or e
    add h
    add l
    or c
    rlca
    ld a, [c]
    or c
    or e
    and e
    and e
    or c
    rra
    ld a, [c]
    or c
    or e
    and e
    inc e
    or b
    and e
    or [hl]
    cp c
    ld a, [c]
    or c
    ld a, [hl]
    xor h
    or e
    or c
    ret nz

    xor h
    ld a, [c]
    or [hl]
    or e
    adc [hl]
    adc l
    adc a
    pop hl
    xor h
    or [hl]
    or b
    cp c
    or e
    rra
    xor h
    or c

jr_025_6b5c:
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    db $f4
    ld bc, $b8b0
    xor [hl]
    xor [hl]
    cp c
    or e
    xor a
    and d
    xor a
    and d
    and d

jr_025_6b70:
    rst $20
    sbc a
    and d
    or c
    or e
    or c
    or e
    ld a, [hl]
    sbc $a2
    sbc [hl]
    or c
    or e
    sbc [hl]
    add sp, -$39
    and d
    sbc [hl]
    or c
    or e
    sbc [hl]
    or c
    or e
    sbc [hl]
    add b
    ld [hl], e
    or d
    and d
    sbc [hl]
    and d
    and d
    sbc [hl]
    or c
    cp d
    ldh [$e1], a
    cp e
    db $fc
    or b
    and a
    cp b
    ld b, $a7
    cp c
    or e
    and b
    ld l, l
    rst $30
    rst $30
    ret nz

    and b
    push af
    push af
    or c
    and a
    and a
    or e
    ld h, b
    and a
    and b
    dec e
    or $f4
    or c
    or e
    ld c, $a2
    and c
    dec e
    db $f4
    or c
    and a
    jr z, jr_025_6b5c

    and a
    or e
    and c
    ld c, a
    dec e
    db $f4
    ldh [$a2], a
    or c
    and a
    and a
    or e
    ld a, [bc]
    jr jr_025_6b70

    dec e
    ld l, d
    or c
    cp d
    or l
    and b
    ldh [$a7], a
    and c
    dec e
    ld b, h
    and b
    or c
    ld a, $b2
    cp d
    cp e
    and a
    call z, $c000
    ret z

    db $d3
    sub $d6
    call nc, $c3c9
    xor d
    ld a, [$d7fa]
    rst AddAToHL
    jp $fa0f


    xor d
    pop bc
    jp $aaaa


    pop bc
    jp $21aa


    add h
    ld a, [$c2c4]
    jp nz, $aac5

    pop bc
    jp $c1aa


    adc e
    adc e
    jp $e409


    xor d
    pop bc
    jp $c6fa


    ld d, d
    ld d, d
    rst $00
    ld a, [$c3c1]
    inc e
    ld [de], a
    xor d
    ld a, [$c1fa]
    jp z, $c5d5

    ld a, [$c4fa]
    push de
    swap d
    ld bc, $c8c0
    ret


    add $c7
    ret z

    ret


    jp $c1aa


    adc e
    adc e
    adc e
    inc h
    sub b
    xor d
    adc e
    jp $c3c1


    pop bc
    add hl, bc
    adc e
    adc e
    add hl, bc
    jp $c3c1


    ld b, b
    adc $aa
    add $c0
    ld d, d
    ld d, d
    ret nz

    rst $00
    pop bc
    jp $fafa


    ld [$8b64], sp
    xor d
    pop bc

jr_025_6c4f:
    jp $aa09


    ld a, [$aafa]
    add hl, bc
    pop bc
    jp $98aa


    ld b, b
    adc e
    ld a, [$aafa]
    pop bc
    jp $aa09


    ld a, [$aafa]
    add hl, bc
    pop bc
    cp $c0
    ret z

    ldh a, [$fd]
    ret nz

    ret


    jp $c3aa


    db $fd
    xor d
    pop bc
    jp $0eaa


    db $fd
    pop af
    xor d
    pop bc
    jp $3faa


    db $fd
    xor d
    pop bc
    cp $aa
    jp $8be8


    xor d
    pop bc
    jp $e509


    adc e
    add hl, bc

Jump_025_6c8e:
    pop bc
    jp $8b1f


    pop bc
    jp z, Jump_025_73c2

    jp nz, $dfde

    set 5, [hl]
    or b
    cp b
    rst JumpTable
    ldh [$a6], a
    or b
    cp c
    or e
    and b
    sbc h
    add a
    and [hl]
    or c
    or e
    and b
    sbc h
    rra
    and [hl]
    or c
    or e
    add [hl]
    ld a, a
    add sp, -$4f
    db $f4
    and b
    or e
    add [hl]
    ld e, l
    pop de
    and b
    or c
    or e
    add [hl]
    adc e
    ldh [$a0], a
    xor h
    xor h
    xor h
    or c
    or e
    jr jr_025_6c4f

    and b
    and b
    xor h
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $b0
    cp b
    ldh [$a6], a
    or b
    cp c
    or e
    ld b, h
    sbc h
    add a
    and [hl]
    or c
    or e
    and b
    sbc h
    rra
    and [hl]
    or c
    or e
    and b
    ld a, a
    add sp, -$4f
    cp $a0
    or e
    jp hl


    and b
    or c
    or e
    ld e, l
    and a
    and b
    or c
    or e
    adc e
    inc d
    inc e
    and b
    adc e
    adc e
    or c
    cp d
    or d
    ld a, a
    or d
    cp e
    rra
    ld a, h
    and a
    cp b
    or b
    or b
    or b
    cp c
    or e
    rlca
    inc a
    and b
    or [hl]
    and a
    and a
    and a
    and a
    and a
    or e
    and a
    and a
    rlca
    rra
    and a
    or e
    and b
    and b
    and b
    or h
    or e
    and b
    and b
    ld a, h
    ldh a, [$a7]
    and b
    or c
    or e
    and b
    and b
    and b
    or c
    pop bc
    rlca
    and a
    or e
    and b
    and b
    and b
    or c
    cp d
    or d
    ldh [$e1], a
    cp e
    cp $b0
    cp b
    ld hl, sp-$60
    or b
    cp c
    or a
    pop af
    and b
    db $10
    db $10
    or c
    add a
    and b
    db $10
    db $10
    or c
    or l
    ld a, a
    and b
    or c
    ld [hl], b
    and b
    or e
    sub d
    sub d
    sub e
    adc b
    pop bc
    and b
    or c
    or e
    ld h, h
    ld h, l
    sub l
    nop
    adc c
    adc d
    and b
    or c
    or e
    ld h, c
    ld h, d
    sub l
    dec de
    and b
    adc b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ld a, [bc]
    ld e, b
    cp b
    ld e, d
    cp c
    add h
    add l
    add h
    jr c, jr_025_6dd4

    add l
    or [hl]
    or e
    or [hl]

Call_025_6d7f:
    ld h, a
    rlca
    ld h, a
    cp c
    or e
    and b
    and b
    and b
    ld e, $fd
    sub h
    or c
    or e
    and b
    ld a, b
    db $fd
    and b
    and b
    sub h
    or c
    ld c, $a0
    or e
    sub h
    db $fd
    db $fd
    db $fd
    ld h, b
    and b
    db $fd
    or c
    or e
    adc c
    adc d
    and h
    rlca
    and h
    or c
    or e
    adc b
    adc b
    and b
    rra
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    cp $96
    or e
    ldh [$d6], a
    sub [hl]
    or c
    or e
    and b
    jp c, $a024

    sub $db
    or c
    or e
    reti


    push de
    rlca
    push de
    rst AddAToHL
    and b
    or c
    or e
    and b
    ld [de], a
    push de
    reti


    pop de
    jp nc, $a0d7

    or c

jr_025_6dd4:
    ld c, b
    push de
    or e
    and b
    reti


    db $d3
    call nc, $e0d7
    push de
    and b
    or c
    or e
    and b
    reti


    inc h
    and b
    push de
    rst AddAToHL
    or c
    or e
    call c, $07d8
    ret c

    db $dd
    and b
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ld [c], a
    or b
    cp b
    ld e, d
    ld e, d
    ld e, d
    ld [hl], b
    ld e, e
    or b
    cp c
    or e
    ld e, [hl]
    and b
    rlca
    db $10
    or c
    or e
    ld e, a
    and b
    and b
    add e
    and b
    cp b
    or b
    cp c
    or c
    or e
    rrca
    and b
    or e
    xor d
    or c
    or c
    inc a
    and b
    or e
    adc b
    cp d
    ld d, d
    ldh [$a0], a
    cp e
    or c
    or e

jr_025_6e23:
    adc c
    adc d
    and e
    and b
    adc b
    or c
    or e
    adc b
    rrca
    and b
    ld a, [bc]
    or c
    cp d
    or d
    ld [hl], e
    or d
    ldh [$e1], a
    cp e
    ldh a, [rSB]
    or b
    cp b
    ld e, b
    ld e, b
    ld e, b
    cp c
    or e
    ld e, c
    ld e, c
    ld e, c
    ld a, [$41a0]
    inc b
    and b
    add a
    add a
    or c

jr_025_6e4a:
    or e
    adc b
    ld a, [$fafa]
    sub d
    sub d
    or c
    or e
    adc [hl]
    ld e, $7c
    ld a, [$a18f]
    ld e, [hl]
    or c
    or e
    adc b
    and c
    ld a, b
    ld bc, $5ffa
    or c
    or e
    and b
    and c
    and c
    or c
    or e
    inc e
    inc e
    and b
    add b
    ld [hl], e
    or d
    and b
    and b
    ld a, [$1ca1]
    or c
    cp d
    ldh [$e1], a
    cp e
    cp $01
    or b
    cp b
    cp c
    or e
    jr nz, jr_025_6ea1

    and b
    and c
    and b
    and d
    sub a
    and b
    jr nz, jr_025_6ecd

    or c
    or e
    and c
    and c
    or c
    or e
    ld a, e
    cp d
    and b
    and c
    or c
    or e
    jr nz, jr_025_6eb7

    ld [hl], b
    and a
    and b
    jr nz, @-$4d

    or e
    and c
    and c
    or c
    or e

jr_025_6ea1:
    jr nz, jr_025_6e23

    ld a, a
    or d
    and b
    and b
    and b
    jr nz, jr_025_6e4a

    or c
    cp d
    cp e
    cp $c0
    ret z

    ld hl, sp-$54
    ret nz

    ret


    jp $ac67


jr_025_6eb7:
    pop bc
    jp $9b1d


    xor h
    dec e
    pop bc
    jp $ac65


    dec e
    ld b, h
    dec e
    pop bc
    ld a, b
    dec e
    jp $acac


    xor h
    ld sp, hl
    xor h

jr_025_6ecd:
    pop bc
    jp $ace7


    pop bc
    jp $ac1f


    pop bc
    jp z, Jump_025_4cc2

    jp nz, $e5e4

    db $e4
    push hl
    set 7, h
    jp hl


    ret z

    add sp, -$08
    xor h
    add sp, -$37
    jp $ace7


    pop bc
    rst $00
    rra
    xor h
    add $c8
    rst $08
    ld a, a
    rst $08
    ret


    cp $ac
    jp $acf9


    pop bc
    jp $ace7


    pop bc
    jp $ac0f


    ld b, l
    pop bc
    jp z, $7fc2

    jp nz, $fecb

    ret nz

jr_025_6f0a:
    ret z

    ld hl, sp-$5e
    ret nz

    ret


    jp $a227


    pop bc
    jp $a0a0


    rrca
    and b
    and d
    pop bc
    jp $3fa2


    and b
    and d
    pop bc
    db $fc
    and b
    jp $f0a2


    and b
    and d
    pop bc
    jp $c4a2


    and d
    and b
    and b
    pop bc
    jp $1f44


    and d
    pop bc
    jp z, $7fc2

    jp nz, $ffcb

    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    jr nc, jr_025_6f0a

    ld a, [$c0c8]
    rst $00
    xor d
    xor d
    add $c0
    ret


    jp $8b8b


    xor d
    ld h, [hl]
    sbc b
    adc e
    xor d
    pop bc
    jp $faaa


    ld a, [$c1aa]
    jp $8661


    adc e
    xor d
    ld a, [$aafa]
    pop bc
    jp $faaa


    ld a, [$19aa]
    and $8b
    pop bc
    jp $aaaa


    xor d
    xor d
    pop bc
    jp Jump_025_7380


    jp nz, $8b8b

    adc e
    adc e
    adc e
    pop bc
    jp z, $dfde

    rlc d
    add hl, de
    adc e
    jp $aa09


    ld a, [$aafa]
    add hl, bc
    pop bc
    jp $faaa


    ld a, [$9026]
    adc e
    xor d
    pop bc
    jp $aa09


    ld a, [$aafa]
    add hl, bc
    pop bc
    jp $8633


    xor d
    ld a, [$8bfa]
    pop bc
    jp $fafa


    ld a, [$f0fa]
    jp $aafa


    pop bc
    jp $aaaa


    pop bc
    jp $0faa


    inc c
    ld a, [$c1aa]
    jp z, $c2c2

    ld [c], a
    db $e3
    jp nz, $cbc2

    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38

Call_025_7000:
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38

jr_025_70ab:
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld b, $04
    ld c, d
    ld c, d

jr_025_70db:
    cp h
    ld d, a
    ld e, b
    ld e, b
    jr jr_025_70ec

    ld e, b
    ld e, b
    ld c, d
    ld c, d
    cp h
    ld h, a
    rrca
    ld l, b
    ld c, d
    ld a, l
    ld a, h

jr_025_70ec:
    ld c, d
    jr c, jr_025_70ab

    xor h
    ld a, l
    ld a, [hl]
    ld c, d
    ld a, h
    ret nz

    cp h
    ld a, [hl]
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld b, h
    ld a, a
    ld c, d
    ld a, [hl]
    ld c, e
    ld a, l
    dec sp
    ld a, e
    nop
    ld a, h
    cp h
    ld c, d
    ld a, a
    ld a, e
    ld l, h
    cp $4b
    and b
    ld a, e
    cp h
    ld c, h
    ld a, l
    add hl, sp
    ld c, d
    dec sp
    ld a, [bc]
    ld l, h
    ld a, h
    ret nc

    cp $67
    ld c, d
    ld a, l
    jr c, jr_025_70db

    ld c, d
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, h
    add sp, $0f
    ld l, b
    ld e, b
    ld e, b
    ld e, c
    ld [c], a
    ld l, c
    rrca
    rrca
    add hl, bc
    adc h
    ld bc, $7b0b
    ld a, [bc]
    xor c
    rrca
    di
    inc c
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    cp h
    cp d
    inc b
    inc b
    ld a, h
    di
    ld a, e
    ld a, l
    ld h, h
    dec b
    rlca
    ld a, [hl]
    xor c
    add hl, bc
    ld a, l
    dec sp
    ld a, [hl]
    ld c, h
    call z, $0006
    ld c, c
    add hl, sp
    jr c, jr_025_71d3

    dec b
    ld c, d
    cp $a1
    sub l
    cp [hl]
    ld l, b
    ld l, b
    ld c, d
    ld b, $a9
    jr c, @-$3b

    cp h
    ld c, d
    ld a, e
    ld a, h
    ld a, a
    ld c, d
    ld c, d
    rlca
    ld a, l
    ld a, [hl]
    ld c, a
    ld l, b

jr_025_716e:
    ld l, c
    ld h, a
    or [hl]
    nop
    xor $b7
    dec bc
    add hl, bc
    ld a, a
    ld a, e
    ld h, h
    ld a, l
    jr jr_025_71f7

    ld a, [hl]
    ld a, a
    ld e, $08
    ld b, $07
    ld b, $64
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    ld [$0f03], sp
    rlca
    ld a, e
    ld a, [hl]
    ld h, h
    ld a, h
    ld a, l
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, jr_025_71b5

    ld l, b
    rlca
    ld a, e
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    add hl, bc
    ld a, l
    ld a, e
    ld b, a
    cp h
    ld c, d
    cp d
    ld b, $64
    call c, $06bc
    xor c
    ld c, d
    ld a, a
    nop
    ld l, b
    ld l, c

jr_025_71b5:
    ld c, d
    ld c, d
    ld a, e
    ld [$7d09], sp
    ld a, [hl]
    ld e, $0c
    jr nc, jr_025_720a

    ld a, h
    ld [$0a7d], sp
    inc c
    ld a, e
    ld a, h
    ld a, l
    ld h, h
    ld a, [bc]
    ld a, e
    ld a, h
    ld [hli], a
    ld [hli], a

jr_025_71ce:
    ld a, [hl]
    ld a, l
    ld a, a
    dec de
    ld a, l

jr_025_71d3:
    ld c, d
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld h, h
    ld a, e
    dec b
    inc bc
    inc c
    ld c, d
    ld a, l
    dec e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec b
    rrca
    ld b, $ba
    ld b, $3b
    jr nz, jr_025_716e

    ld c, d
    ld a, e
    ld c, h
    call z, Call_025_4839
    cp h
    cp h
    cp h
    rst $38
    and b

jr_025_71f7:
    sub h
    xor [hl]
    ld e, c
    ld b, $04
    ld c, d
    ld c, d

jr_025_71fe:
    cp h
    ld d, a
    ld e, b
    ld e, b
    jr jr_025_720f

    ld e, b
    ld e, b
    ld c, d
    ld c, d
    cp h
    ld h, a

jr_025_720a:
    rrca
    ld l, b
    ld c, d
    ld a, l
    ld a, h

jr_025_720f:
    ld c, d
    jr c, jr_025_71ce

    xor h
    ld a, l
    ld a, [hl]
    ld c, d
    ld a, h
    ret nz

    cp h
    ld a, [hl]
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld b, h
    ld a, a
    ld c, d
    ld a, [hl]
    ld c, e
    ld a, l
    dec sp
    ld a, e
    nop
    ld a, h
    cp h
    ld c, d
    ld a, a
    ld a, e
    ld l, h
    cp $4b
    and b
    ld a, e
    cp h
    ld c, h
    ld a, l
    add hl, sp
    ld c, d
    dec sp
    ld a, [bc]
    ld l, h
    ld a, h
    ret nc

    cp $67
    ld c, d
    ld a, l
    jr c, jr_025_71fe

    ld c, d
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, h
    add sp, $0f
    ld l, b
    ld e, b
    ld e, b
    ld e, c
    ld [c], a
    ld l, c
    rrca
    rrca
    add hl, bc
    adc h
    ld bc, $7b0b
    ld a, [bc]
    xor c
    rrca
    di
    inc c
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    cp h
    cp d
    inc b
    inc b
    ld a, h
    di
    ld a, e
    ld a, l
    ld h, h
    dec b
    rlca
    ld a, [hl]
    xor c
    add hl, bc
    ld a, l
    dec sp
    ld a, [hl]
    ld c, h
    db $dd
    ld b, $00
    ld c, c
    add hl, sp
    jr c, jr_025_72f6

    dec b
    ld c, d
    cp $6c
    rst JumpTable
    ld h, a
    ld l, b
    ld l, b
    ld c, d
    ld b, $a9
    jr c, @-$3b

    cp h
    ld c, d
    ld a, e
    ld a, h
    ld a, a
    ld c, d
    ld c, d
    rlca
    ld a, l
    ld a, [hl]
    ld c, a
    ld l, b

jr_025_7291:
    ld l, c
    ld h, a
    or [hl]
    nop
    xor $b7
    dec bc
    add hl, bc
    ld a, a
    ld a, e
    ld h, h
    ld a, l
    jr jr_025_731a

    ld a, [hl]
    ld a, a
    ld e, $08
    ld b, $07
    ld b, $64
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    ld [$0f03], sp
    rlca
    ld a, e
    ld a, [hl]
    ld h, h
    ld a, h
    ld a, l
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, jr_025_72d8

    ld l, b
    rlca
    ld a, e
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    add hl, bc
    ld a, l
    ld a, e
    ld b, a
    cp h
    ld c, d
    cp d
    ld b, $64
    call c, $06bc
    xor c
    ld c, d
    ld a, a
    nop
    ld l, b
    ld l, c

jr_025_72d8:
    ld c, d
    ld c, d
    ld a, e
    ld [$7d09], sp
    ld a, [hl]
    ld e, $0c
    jr nc, jr_025_732d

    ld a, h
    ld [$0a7d], sp
    inc c
    ld a, e
    ld a, h
    ld a, l
    ld h, h
    ld a, [bc]
    ld a, e
    ld a, h
    ld [hli], a
    ld [hli], a

jr_025_72f1:
    ld a, [hl]
    ld a, l
    ld a, a
    dec de
    ld a, l

jr_025_72f6:
    ld c, d
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld h, h
    ld a, e
    dec b
    inc bc
    inc c
    ld c, d
    ld a, l
    dec e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec b
    rrca
    ld b, $ba
    ld b, $3b
    jr nz, jr_025_7291

    ld c, d
    ld a, e
    ld c, h
    db $dd
    add hl, sp
    ld c, b
    cp h
    cp h
    cp h
    rst $38
    ld e, h

jr_025_731a:
    sbc $57
    ld e, c
    ld b, $04
    ld c, d
    ld c, d

jr_025_7321:
    cp h
    ld d, a
    ld e, b
    ld e, b
    jr jr_025_7332

    ld e, b
    ld e, b
    ld c, d
    ld c, d
    cp h
    ld h, a

jr_025_732d:
    rrca
    ld l, b
    ld c, d
    ld a, l
    ld a, h

jr_025_7332:
    ld c, d
    jr c, jr_025_72f1

    xor h
    ld a, l
    ld a, [hl]
    ld c, d
    ld a, h
    ret nz

    cp h
    ld a, [hl]
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld b, h
    ld a, a
    ld c, d
    ld a, [hl]
    ld c, e
    ld a, l
    dec sp
    ld a, e
    nop
    ld a, h
    cp h
    ld c, d
    ld a, a
    ld a, e
    ld l, h
    cp $4b
    and b
    ld a, e
    cp h
    ld c, h
    ld a, l
    add hl, sp
    ld c, d
    dec sp
    ld a, [bc]
    ld l, h
    ld a, h
    ret nc

    cp $67
    ld c, d
    ld a, l
    jr c, jr_025_7321

    ld c, d
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, h
    add sp, $0f
    ld l, b
    ld e, b
    ld e, b
    ld e, c
    ld [c], a
    ld l, c
    rrca
    rrca
    add hl, bc
    adc h
    ld bc, $7b0b
    ld a, [bc]
    xor c
    rrca
    di
    inc c
    ld a, l
    ld a, [hl]

Jump_025_7380:
    ld a, a
    ld a, e
    cp h
    cp d
    inc b
    inc b
    ld a, h
    di
    ld a, e
    ld a, l
    ld h, h
    dec b
    rlca
    ld a, [hl]
    xor c
    add hl, bc
    ld a, l
    dec sp
    ld a, [hl]
    ld c, h
    call z, $0006
    ld c, c
    add hl, sp
    jr c, jr_025_7419

    dec b
    ld c, d
    cp $a1
    sub l
    cp [hl]
    ld l, b
    ld l, b
    ld c, d
    ld b, $a9
    jr c, @-$3b

    cp h
    ld c, d
    ld a, e
    ld a, h
    ld a, a
    ld c, d
    ld c, d
    rlca
    ld a, l
    ld a, [hl]
    ld c, a
    ld l, b

jr_025_73b4:
    ld l, c
    ld h, a
    or [hl]
    nop
    xor $b7
    dec bc
    add hl, bc
    ld a, a
    ld a, e
    ld h, h
    ld a, l
    jr jr_025_743d

Jump_025_73c2:
    ld a, [hl]
    ld a, a
    ld e, $08
    ld b, $07
    ld b, $64
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    ld [$0f03], sp
    rlca
    ld a, e
    ld a, [hl]
    ld h, h
    ld a, h
    ld a, l
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, jr_025_73fb

    ld l, b
    rlca
    ld a, e
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    add hl, bc
    ld a, l
    ld a, e
    ld b, a
    cp h
    ld c, d
    cp d
    ld b, $64
    call c, $06bc
    xor c
    ld c, d
    ld a, a
    nop
    ld l, b
    ld l, c

jr_025_73fb:
    ld c, d
    ld c, d
    ld a, e
    ld [$7d09], sp
    ld a, [hl]
    ld e, $0c
    jr nc, jr_025_7450

    ld a, h
    ld [$0a7d], sp
    inc c
    ld a, e
    ld a, h
    ld a, l
    ld h, h
    ld a, [bc]
    ld a, e
    ld a, h
    ld [hli], a
    ld [hli], a

jr_025_7414:
    ld a, [hl]
    ld a, l
    ld a, a
    dec de
    ld a, l

jr_025_7419:
    ld c, d
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld h, h
    ld a, e
    dec b
    inc bc
    inc c
    ld c, d
    ld a, l
    dec e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec b
    rrca
    ld b, $ba
    ld b, $3b
    jr nz, jr_025_73b4

    ld c, d
    ld a, e
    ld c, h
    call z, Call_025_4839
    cp h
    cp h
    cp h
    rst $38
    and b

jr_025_743d:
    sub h
    xor [hl]
    ld e, c
    ld b, $04
    ld c, d
    ld c, d

jr_025_7444:
    cp h
    ld d, a
    ld e, b
    ld e, b
    jr jr_025_7455

    ld e, b
    ld e, b
    ld c, d
    ld c, d
    cp h
    ld h, a

jr_025_7450:
    rrca
    ld l, b
    ld c, d
    ld a, l
    ld a, h

jr_025_7455:
    ld c, d
    jr c, jr_025_7414

    xor h
    ld a, l
    ld a, [hl]
    ld c, d
    ld a, h
    ret nz

    cp h
    ld a, [hl]
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld b, h
    ld a, a
    ld c, d
    ld a, [hl]
    ld c, e
    ld a, l
    dec sp
    ld a, e
    nop
    ld a, h
    cp h
    ld c, d
    ld a, a
    ld a, e
    ld l, h
    cp $4b
    and b
    ld a, e
    cp h
    ld c, h
    ld a, l
    add hl, sp
    ld c, d
    dec sp
    ld a, [bc]
    ld l, h
    ld a, h
    ret nc

    cp $67
    ld c, d
    ld a, l
    jr c, jr_025_7444

    ld c, d
    ld a, l
    ld a, [hl]
    ld a, e
    ld a, h
    add sp, $0f
    ld l, b
    ld e, b
    ld e, b
    ld e, c
    ld [c], a
    ld l, c
    rrca
    rrca
    add hl, bc
    adc h
    ld bc, $7b0b
    ld a, [bc]
    xor c
    rrca
    di
    inc c
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, e
    cp h
    cp d
    inc b
    inc b
    ld a, h
    di
    ld a, e
    ld a, l
    ld h, h
    dec b
    rlca
    ld a, [hl]
    xor c
    add hl, bc
    ld a, l
    dec sp
    ld a, [hl]
    ld c, h
    call z, $0006
    ld c, c

Jump_025_74bb:
    add hl, sp
    jr c, jr_025_753c

    dec b
    ld c, d
    cp $a1
    sub l
    cp [hl]
    ld l, b
    ld l, b
    ld c, d
    ld b, $a9
    jr c, @-$3b

    cp h
    ld c, d
    ld a, e
    ld a, h
    ld a, a
    ld c, d
    ld c, d
    rlca
    ld a, l
    ld a, [hl]
    ld c, a
    ld l, b

jr_025_74d7:
    ld l, c
    ld h, a
    or [hl]
    nop
    xor $b7
    dec bc
    add hl, bc
    ld a, a
    ld a, e
    ld h, h
    ld a, l
    jr jr_025_7560

    ld a, [hl]
    ld a, a
    ld e, $08
    ld b, $07
    ld b, $64
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    ld [$0f03], sp
    rlca
    ld a, e
    ld a, [hl]
    ld h, h
    ld a, h
    ld a, l
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, jr_025_751e

    ld l, b
    rlca
    ld a, e
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    add hl, bc
    ld a, l
    ld a, e
    ld b, a
    cp h
    ld c, d
    cp d
    ld b, $64
    call c, $06bc
    xor c
    ld c, d
    ld a, a
    nop
    ld l, b
    ld l, c

jr_025_751e:
    ld c, d
    ld c, d
    ld a, e
    ld [$7d09], sp
    ld a, [hl]
    ld e, $0c
    jr nc, jr_025_7573

    ld a, h
    ld [$0a7d], sp
    inc c
    ld a, e
    ld a, h
    ld a, l
    ld h, h
    ld a, [bc]
    ld a, e
    ld a, h
    ld [hli], a
    ld [hli], a
    ld a, [hl]
    ld a, l
    ld a, a
    dec de
    ld a, l

jr_025_753c:
    ld c, d
    ld c, d
    ld a, a
    ld a, e
    ld a, h
    ld h, h
    ld a, e
    dec b
    inc bc
    inc c
    ld c, d
    ld a, l
    dec e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec b
    rrca
    ld b, $ba
    ld b, $3b
    jr nz, jr_025_74d7

    ld c, d
    ld a, e
    ld c, h
    call z, Call_025_4839
    cp h
    cp h
    cp h
    rst $38
    and b

jr_025_7560:
    sub h
    xor [hl]
    ld e, c
    dec b
    inc d
    ld c, d
    ld a, e
    ld a, e
    ld a, h
    cp h
    cp h
    cp h
    ld a, e
    ld a, [hl]
    ld a, l
    ld b, $06
    cp b
    ld d, b

jr_025_7573:
    ld b, b
    ld c, d
    cp h
    cp h
    ld a, l
    ld a, a
    ld a, h
    rra
    jr nz, @+$23

    add hl, bc
    ld a, a
    ld a, h
    ld a, e
    ld a, [hl]
    nop
    ld a, b
    ld c, c
    ld c, d
    ld [hli], a
    inc hl
    inc h
    xor b
    dec sp
    ld a, [hl]
    add hl, sp
    ld c, d
    ld a, a
    ld b, a
    ld c, b
    ldh [rSB], a
    ld l, b
    cp $67
    ld c, d
    ld a, e
    ld h, a
    ld l, c
    ld a, h
    ld a, l
    ld c, d
    ld b, $04
    add hl, bc
    add b
    rst $38
    ld c, c
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, h
    cp h
    cp h
    ld b, a
    ld [de], a
    ld c, d
    ld a, l
    cp h
    cp h
    add hl, bc
    ld a, e
    ld a, h
    inc sp
    cp h
    ld a, e
    ld c, d
    ld c, d
    ld [hl], b
    adc h
    cp h
    ld [hl], c
    ld b, $7f
    ld c, d
    and $00
    ld c, d
    add b
    add c
    rrca
    add hl, bc
    ld a, l
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
    ld l, b
    ld a, h
    ld h, a
    ld l, c
    call nz, $bcf0
    call nz, Call_025_7d09
    ld a, [hl]
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
    ld h, h
    rrca
    xor c
    ld c, d
    dec bc
    rrca
    scf
    ld a, [hl-]
    inc c
    nop
    ld c, c
    add hl, sp
    ld b, a
    ld a, e
    ld a, h
    ld [$694a], sp
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ld a, [hl-]
    ld a, [hl]
    jr jr_025_762a

    rrca
    add hl, sp
    ld c, b
    call nz, Call_025_6867
    ld l, b
    ld l, c
    cp $67
    ld l, c
    call nz, $201f
    db $10
    jr nc, @-$42

    ld hl, $7c70
    ld a, e
    cp d
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

jr_025_762a:
    ld c, c
    cp d
    cp h
    xor d
    xor b
    cp e
    rrca
    rlca
    cp h
    ld c, d
    cp $a1
    sub l
    cp [hl]
    inc e
    ld c, c
    ld l, c
    ld c, d
    ld c, b
    ld a, e
    ld [$0f07], sp
    ld c, d
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    inc e
    dec bc
    ld a, l
    ld a, [bc]
    ld c, d
    ld l, b
    ld l, b
    nop
    ld l, b
    ld l, c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, d
    ld c, $0f
    ld [hl], c
    rlca
    ld a, l
    ld a, [hl]
    dec b
    jr nc, jr_025_766a

    ld b, $4a
    add c
    rrca
    inc c
    ld a, e
    add c
    ld a, h
    ld [$4ac4], sp

jr_025_766a:
    rrca
    add hl, bc
    ld a, e
    ret nz

    ld c, c
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$4ac4], sp
    ld a, a
    ld c, c
    ld c, b
    dec b
    inc d
    ld c, d
    ld a, e
    ld a, e
    ld a, h
    cp h
    cp h
    cp h
    ld a, e
    ld a, [hl]
    ld a, l
    ld b, $06
    cp b
    ld d, b
    ld b, b
    ld c, d
    cp h
    cp h
    ld a, l
    ld a, a
    ld a, h
    rra
    jr nz, @+$23

    add hl, bc
    ld a, a
    ld a, h
    ld a, e
    ld a, [hl]
    nop
    ld a, b
    ld c, c
    ld c, d
    ld [hli], a
    inc hl
    inc h
    xor b
    dec sp
    ld a, [hl]
    add hl, sp
    ld c, d
    ld a, a
    ld b, a
    ld c, b
    ldh [rSB], a
    ld l, b
    cp $67
    ld c, d
    ld a, e
    ld h, a
    ld l, c
    ld a, h
    ld a, l
    ld c, d
    ld b, $04
    add hl, bc
    add b
    rst $38
    ld c, c
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, h
    cp h
    cp h
    ld b, a
    ld [de], a
    ld c, d
    ld a, l
    cp h
    cp h
    add hl, bc
    ld a, e
    ld a, h
    inc sp
    cp h
    ld a, e
    ld c, d
    ld c, d
    ld [hl], b
    adc h
    cp h
    ld [hl], c
    ld b, $7f
    ld c, d
    and $00
    ld c, d
    add b
    add c
    rrca
    add hl, bc
    ld a, l
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
    ld l, b
    ld a, h
    ld h, a
    ld l, c
    call nz, $bcf0
    call nz, Call_025_7d09
    ld a, [hl]
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
    ld h, h
    rrca
    xor c
    ld c, d
    dec bc
    rrca
    scf
    ld a, [hl-]
    inc c
    nop
    ld c, c
    add hl, sp
    ld b, a
    ld a, e
    ld a, h
    ld [$694a], sp
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ld a, [hl-]
    ld a, [hl]
    jr jr_025_773f

    rrca
    add hl, sp
    ld c, b
    call nz, Call_025_6867
    ld l, b
    ld l, c
    cp $67
    ld l, c
    call nz, $201f
    db $10
    jr nc, @-$42

    ld hl, $7c70
    ld a, e
    cp d
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

jr_025_773f:
    ld c, c
    cp d
    cp h
    xor d
    xor b
    cp e
    rrca
    rlca
    cp h
    ld c, d
    cp $6c
    rst JumpTable
    ld h, a
    inc e
    ld c, c
    ld l, c
    ld c, d
    ld c, b
    ld a, e
    ld [$0f07], sp
    ld c, d
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    inc e
    dec bc
    ld a, l
    ld a, [bc]
    ld c, d
    ld l, b
    ld l, b
    nop
    ld l, b
    ld l, c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, d
    ld c, $0f
    ld [hl], c
    rlca
    ld a, l
    ld a, [hl]
    dec b
    jr nc, jr_025_777f

    ld b, $4a
    add c
    rrca
    inc c
    ld a, e
    add c
    ld a, h
    ld [$4ac4], sp

jr_025_777f:
    rrca
    add hl, bc
    ld a, e
    ret nz

    ld c, c
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$4ac4], sp
    ld a, a
    ld c, c
    ld c, b
    dec b
    inc d
    ld c, d
    ld a, e
    ld a, e
    ld a, h
    cp h
    cp h
    cp h
    ld a, e
    ld a, [hl]
    ld a, l
    ld b, $06
    cp b
    ld d, b
    ld b, b
    ld c, d
    cp h
    cp h
    ld a, l
    ld a, a
    ld a, h
    rra
    jr nz, @+$23

    add hl, bc
    ld a, a
    ld a, h
    ld a, e
    ld a, [hl]
    nop
    ld a, b
    ld c, c
    ld c, d
    ld [hli], a
    inc hl
    inc h
    xor b
    dec sp
    ld a, [hl]
    add hl, sp
    ld c, d
    ld a, a
    ld b, a
    ld c, b
    ldh [rSB], a
    ld l, b
    cp $67
    ld c, d
    ld a, e
    ld h, a
    ld l, c
    ld a, h
    ld a, l
    ld c, d
    ld b, $04
    add hl, bc
    add b
    rst $38
    ld c, c
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, h
    cp h
    cp h
    ld b, a
    ld [de], a
    ld c, d
    ld a, l
    cp h
    cp h
    add hl, bc
    ld a, e
    ld a, h
    inc sp
    cp h
    ld a, e
    ld c, d
    ld c, d
    ld [hl], b
    adc h
    cp h
    ld [hl], c
    ld b, $7f
    ld c, d
    and $00
    ld c, d
    add b
    add c
    rrca
    add hl, bc
    ld a, l
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
    ld l, b
    ld a, h
    ld h, a
    ld l, c
    call nz, $bcf0
    call nz, Call_025_7d09
    ld a, [hl]
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
    ld h, h
    rrca
    xor c
    ld c, d
    dec bc
    rrca
    scf
    ld a, [hl-]
    inc c
    nop
    ld c, c
    add hl, sp
    ld b, a
    ld a, e
    ld a, h
    ld [$694a], sp
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ld a, [hl-]
    ld a, [hl]
    jr jr_025_7854

    rrca
    add hl, sp
    ld c, b
    call nz, Call_025_6867
    ld l, b
    ld l, c
    cp $67
    ld l, c
    call nz, $201f
    db $10
    jr nc, @-$42

    ld hl, $7c70
    ld a, e
    cp d
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

jr_025_7854:
    ld c, c
    cp d
    cp h
    xor d
    xor b
    cp e
    rrca
    rlca
    cp h
    ld c, d
    cp $a1
    sub l
    cp [hl]
    inc e
    ld c, c
    ld l, c
    ld c, d
    ld c, b
    ld a, e
    ld [$0f07], sp
    ld c, d
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    inc e
    dec bc
    ld a, l
    ld a, [bc]
    ld c, d
    ld l, b
    ld l, b
    nop
    ld l, b
    ld l, c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, d
    ld c, $0f
    ld [hl], c
    rlca
    ld a, l
    ld a, [hl]
    dec b
    jr nc, jr_025_7894

    ld b, $4a
    add c
    rrca
    inc c
    ld a, e
    add c
    ld a, h
    ld [$4ac4], sp

jr_025_7894:
    rrca
    add hl, bc
    ld a, e
    ret nz

    ld c, c
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$4ac4], sp
    ld a, a
    ld c, c
    ld c, b
    dec b
    inc d
    ld c, d
    ld a, e
    ld a, e
    ld a, h
    cp h
    cp h
    cp h
    ld a, e
    ld a, [hl]
    ld a, l
    ld b, $06
    cp b
    ld d, b
    ld b, b
    ld c, d
    cp h
    cp h
    ld a, l
    ld a, a
    ld a, h
    rra
    jr nz, @+$23

    add hl, bc
    ld a, a
    ld a, h
    ld a, e
    ld a, [hl]
    nop
    ld a, b
    ld c, c
    ld c, d
    ld [hli], a
    inc hl
    inc h
    xor b
    dec sp
    ld a, [hl]
    add hl, sp
    ld c, d
    ld a, a
    ld b, a
    ld c, b
    ldh [rSB], a
    ld l, b
    cp $67
    ld c, d
    ld a, e
    ld h, a
    ld l, c
    ld a, h
    ld a, l
    ld c, d
    ld b, $04
    add hl, bc
    add b
    rst $38
    ld c, c
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, h
    cp h
    cp h
    ld b, a
    ld [de], a
    ld c, d
    ld a, l
    cp h
    cp h
    add hl, bc
    ld a, e
    ld a, h
    inc sp
    cp h
    ld a, e
    ld c, d
    ld c, d
    ld h, l
    adc h
    cp h
    ld h, [hl]
    ld b, $7f
    ld c, d
    and $00
    ld c, d
    ld d, l
    ld d, [hl]
    rrca
    add hl, bc
    ld a, l
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
    ld l, b
    ld a, h
    ld h, a
    ld l, c
    call nz, $bcf0
    call nz, Call_025_7d09
    ld a, [hl]
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
    ld h, h
    rrca
    xor c
    ld c, d
    dec bc
    rrca
    scf
    ld a, [hl-]
    inc c
    nop
    ld c, c
    add hl, sp
    ld b, a
    ld a, e
    ld a, h
    ld [$694a], sp
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ld a, [hl-]
    ld a, [hl]
    jr jr_025_7969

    rrca
    add hl, sp
    ld c, b
    call nz, Call_025_6867
    ld l, b
    ld l, c
    cp $67
    ld l, c
    call nz, $201f
    db $10
    jr nc, @-$42

    ld hl, $7c65
    ld a, e
    cp d
    cp d
    cp c
    ld [hli], a
    inc hl
    inc h
    ld d, l
    xor c
    cp b
    ret nz

    rst $38

jr_025_7969:
    ld c, c
    cp d
    cp h
    xor d
    xor b
    cp e
    rrca
    rlca
    cp h
    ld c, d
    cp $a1
    sub l
    cp [hl]
    inc e
    ld c, c
    ld l, c
    ld c, d
    ld c, b
    ld a, e
    ld [$0f07], sp
    ld c, d
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    inc e
    dec bc
    ld a, l
    ld a, [bc]
    ld c, d
    ld l, b
    ld l, b
    nop
    ld l, b
    ld l, c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, d
    ld c, $0f
    ld h, [hl]
    rlca
    ld a, l
    ld a, [hl]
    dec b
    jr nc, jr_025_79a9

    ld b, $4a
    ld d, [hl]
    rrca
    inc c
    ld a, e
    add c
    ld a, h
    ld [$4ac4], sp

jr_025_79a9:
    rrca
    add hl, bc
    ld a, e
    ret nz

    ld c, c
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$4ac4], sp
    ld a, a
    ld c, c
    ld c, b
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    rlca
    rrca
    pop hl
    rrca
    pop hl
    rrca
    pop hl
    ld a, a
    ret nz

jr_025_7ac1:
    ret nc

    ret nz

    ret nc

    ret nc

    sub $d0
    ld h, $87
    dec d
    reti


    ld b, [hl]
    ret nz

    db $10
    ld l, e
    rlca
    add a
    dec d
    reti


Call_025_7ad3:
    ld b, [hl]
    ret nz

jr_025_7ad5:
    nop
    ld l, e
    ld bc, $1901
    ld h, e
    cp $65
    ret


    ld b, b
    ret nz

    nop
    sub e
    inc b
    jp nz, $bf60

    db $10
    sub e
    inc b
    jp nz, JoypadTransitionInterrupt

    nop
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld a, $6d
    ret z

    ld d, b
    call nz, $cb80
    jr nz, jr_025_7ac1

    add b
    sla b
    ld b, a
    jr nz, jr_025_7ad5

    sub b
    ldh a, [$a2]
    or b
    or e
    db $f4
    and c
    or e
    ld c, $f4
    ret nz

    and b
    db $f4
    push af
    inc e
    add hl, de
    and c
    sbc l
    jr nz, jr_025_7b29

    or d
    ld bc, $d530

jr_025_7b1b:
    or e
    db $f4
    push af
    and b
    db $f4
    rst $30
    rst $30
    ret nc

    rst $30
    or $f4
    rst $30
    and l
    nop

jr_025_7b29:
    or h
    rst $38
    ldh [rP1], a
    ld de, $1613
    rla
    ld [$f701], sp
    or $0d
    ld d, $f4
    db $f4
    push af
    ld [hl], c
    xor b
    db $10
    and l
    db $f4
    and l
    ld b, $01
    ld a, [hl]
    ld l, b
    rst $20
    ld h, e
    db $db
    jr nz, jr_025_7b1b

    ld b, b
    pop de
    or e
    add sp, $28
    and d
    dec hl
    and l
    inc c
    cpl
    ret


    ld [$a8fb], sp
    dec hl
    add hl, bc
    ld c, a
    or a
    add sp, $28
    ld d, d
    ld e, a
    xor $07
    ld e, c
    rra
    jr z, jr_025_7b9c

    ret nz

    and e
    and b
    inc c
    or c
    nop
    or l
    add sp, $38
    pop hl
    add hl, de
    rst $38
    dec bc
    ccf
    ret


    ld [$2254], sp
    ld d, l
    cpl
    ld a, $13

jr_025_7b7b:
    and a
    dec sp
    add sp, $19
    inc c
    cpl
    dec bc
    ld b, c
    pop bc
    db $10
    cp c
    cp e
    rrca
    ld bc, $207f
    jp nc, $1140

    jp z, Jump_025_5408

    ld [de], a
    ld c, e
    add hl, hl
    ld [hl], b
    nop
    xor d
    dec de
    and l
    ld a, a
    dec [hl]
    dec b

jr_025_7b9c:
    dec bc
    ccf

jr_025_7b9e:
    add $28
    ld b, l
    ld e, c
    ld a, $13
    ret z

    jr @-$16

    add hl, de
    and b
    rst $38
    ldh a, [rSB]
    xor [hl]
    xor d
    add sp, $18
    rst JumpTable
    add hl, de

jr_025_7bb2:
    add sp, $18
    pop hl
    add hl, de
    ld [$6e09], a
    dec hl
    cp a
    dec [hl]
    dec b
    and [hl]
    ld c, e
    dec l
    inc l
    ld d, l
    ld [de], a
    db $76
    ld a, $cc
    jr jr_025_7b7b

    add l
    dec bc
    inc e
    and b
    and l
    add [hl]
    ld l, $cb
    jr z, jr_025_7bb2

    inc sp
    and $00
    and $01
    jp hl


    ld b, e
    rst JumpTable
    jr nz, @+$7a

    and e
    inc de
    ld c, [hl]
    rlca
    push bc
    jr c, jr_025_7bee

    rra
    sub l
    ld l, h
    dec hl
    add sp, $48
    add hl, sp
    adc b
    rla
    and h
    and h

jr_025_7bee:
    ld a, $23
    db $e3
    jr jr_025_7b9e

    dec de
    sub l
    and h
    rlca
    xor l
    inc d
    ld d, h
    ld [de], a
    jr @+$19

    and l
    or c
    sub l
    and h
    and h
    ld [hl], c
    ld e, $9b
    or c
    and b
    and h
    db $fd
    db $10
    jp z, $e608

    add hl, sp
    or c
    jr @-$69

    and h
    and h
    cp $47
    ld d, l
    ld [de], a
    and c
    or c
    sub l
    adc [hl]
    and h
    xor l
    inc d
    ld h, c
    dec sp
    dec bc
    rra
    sub l
    and h
    and h
    ld a, [hl]
    dec sp
    or e
    ld d, a
    ld bc, $0106
    or c
    sub l
    db $ec
    dec de
    ldh [rSCX], a
    ld a, d
    call c, $0102
    db $db
    ld [hli], a
    ei
    sub e
    dec d
    and e
    ld d, e
    cp h
    ld c, l
    rla
    ld sp, $f1d3
    push de
    pop af
    dec d
    ld h, l
    add hl, sp
    cp a
    ei
    dec [hl]
    pop af
    dec b

jr_025_7c4d:
    ld [hl], h
    ld c, c
    ei
    dec [hl]
    pop af
    dec b
    ld sp, $a403
    and c
    ld a, [de]
    daa
    db $fc
    dec h
    ld [hl], c
    add $f0
    dec b
    db $ed
    db $ed
    ld [hl], l
    ld h, $ed
    db $ed
    or a
    db $fc
    dec h
    ld [hl], c
    add $a0
    ld c, d
    and h
    xor b
    ld e, d
    ld d, b
    ld c, e
    and b
    ld e, b
    ld e, e
    sbc l
    jr nz, jr_025_7cb9

    and b
    ld c, b
    ld h, a
    push bc

Call_025_7c7b:
    ld [$2097], sp
    and c
    and c
    db $eb
    add hl, sp
    rst $28
    rst $00
    jr jr_025_7c4d

    jr jr_025_7cdf

    cpl
    ld a, [hl]
    rla
    and c
    daa
    ld b, a
    add hl, hl
    inc e
    sbc $49
    ld e, a
    dec [hl]
    dec b
    rst $20
    add hl, de
    inc c
    cpl
    adc b
    dec de
    ld b, h
    ld l, c
    ld [hl], c
    ld c, a
    rst $38
    and l
    or $a5
    ld a, [hli]
    inc c
    dec [hl]
    dec b
    ld b, e
    ld hl, $0d07
    ld d, $81
    set 0, b
    ret c

    dec b
    db $10
    cp c
    cp e
    rrca
    ld bc, $20f7
    ret c

jr_025_7cb9:
    nop
    rst $28
    pop hl
    reti


    and c
    ld hl, $0907
    ld bc, $3ba2
    cp $47
    rlca
    jp z, $e72a

    add hl, de
    xor $37
    and c
    or $f7
    rst $30
    rst $30
    rst $28
    adc d
    inc e
    ld l, l
    ld a, b
    add sp, $48
    ld c, [hl]
    ld c, b
    and c
    inc b
    ld c, l
    dec a

jr_025_7cdf:
    ld l, $a7
    dec sp
    cpl
    ld d, l
    cpl
    dec c
    ccf
    ld b, e
    xor d
    db $10
    cp c
    cp e
    rrca
    ld bc, $40ff
    jp nc, $d2b0

    or b
    ld [hli], a
    sub d
    ld d, e
    cp l
    ld [bc], a
    or b
    ld [hli], a

jr_025_7cfb:
    sub d
    ld d, [hl]
    cp l
    ld [bc], a
    ld a, a
    or b
    ld [hli], a
    ld [hl], d
    ld e, a
    cp l
    ld [bc], a
    or b
    ld [hli], a
    db $d3

Call_025_7d09:
    ld e, [hl]
    cp l
    ld [bc], a
    or b
    sub d
    add hl, de
    ld a, a
    cp l
    ld [bc], a
    ld b, b

jr_025_7d13:
    ld [bc], a
    db $d3
    ld l, [hl]
    ld b, d
    ld [bc], a
    ccf
    ld [de], a
    db $d3
    ld l, [hl]
    ld b, d
    ld [bc], a
    nop
    rlca
    or e
    add d
    cp e
    ld [hli], a
    nop
    push de
    rst $38
    jr nz, jr_025_7cfb

    db $10
    rst $38
    ld [hl], d
    db $fd
    add h
    db $dd
    inc b
    db $fd
    ld d, $cd
    ld h, l
    sbc h
    add c
    db $fd
    rlca
    ld [hl], e
    db $fd
    ld b, l
    db $db
    push bc
    adc c
    rst $38
    jr nz, jr_025_7d13

    ld b, b
    pop de
    ld b, b

jr_025_7d44:
    pop de
    nop
    and $f1
    set 6, b
    db $db
    ld [hl], b
    call c, $e600
    rla
    ld sp, $43fe
    and c
    ldh [rSCX], a
    ld a, d
    add sp, $53
    rst $38
    nop
    db $fc
    ld a, [c]
    rst AddAToHL
    ld [hl], d
    ld a, [$aa84]
    pop af
    ld hl, sp+$03
    xor c
    ld d, b
    ret c

    and b
    rst AddAToHL
    rlca
    jr nz, jr_025_7d44

    ld d, b
    rst AddAToHL
    nop
    rst AddAToHL
    rst $38
    ld b, b
    rst AddAToHL
    jr nc, @-$27

    ld h, b
    rst AddAToHL
    ld h, b
    rst $30
    ld [hl], d
    or a
    db $10
    rst $30
    sub d
    rst $30
    call nc, $17f7
    and $77
    nop
    ret c

    db $10
    cp c
    cp e
    rrca
    ld de, $30ff
    ld hl, sp-$7e
    rst $30
    and h
    cp b
    and d
    ret c

    sub d
    cp b
    or b
    rst $30
    ld a, [c]
    rst $30
    db $f4
    rst $30
    rla
    add $97
    or d
    cp b
    db $10
    cp c
    cp e
    rrca
    ld de, $20ff
    ld sp, hl
    ld a, [c]
    or a

jr_025_7dac:
    ld b, b
    reti


    db $10
    ret c

    and b
    jp nc, $d980

    ld b, b
    ld hl, sp-$0e
    or h
    rlca
    ld h, b
    ld hl, sp+$72
    ld hl, sp-$7c
    sbc b
    rst $38
    jr nz, jr_025_7dac

jr_025_7dc2:
    or c
    ld a, [$eab3]
    call nc, $f09a
    jp nc, $f8d0

    ld [c], a
    cp b
    nop
    db $d3
    rlca
    ldh a, [$fa]
    or d

Jump_025_7dd4:
    cp d

jr_025_7dd5:
    db $10
    reti


    rst $38
    sub b
    db $db
    jr nc, jr_025_7dd5

    ld [c], a
    cp e
    ld d, b
    ld sp, hl
    ld h, d
    ld sp, hl
    ld [hl], h
    sbc c
    jr nz, jr_025_7dc2

    sub b
    ld sp, hl
    rlca
    and d
    ld sp, hl
    or h
    ld sp, hl
    add $79
    rst $38
    jr nz, @-$2c

    ret nc

    jp hl


    or c
    call z, $f9f0
    ld [bc], a
    ld a, [$9a14]
    nop
    ld a, [$f9f2]
    rla
    or h
    sbc h
    ret nc

    reti


    ldh [rSCX], a
    ld a, d
    add sp, $53
    rst $38
    ld h, b
    db $ed
    ld sp, $b1da
    call nz, $fa50
    ld h, d
    cp d
    and b
    xor $f1
    db $dd
    pop af
    db $dd
    rla
    sub c
    ld a, [$aaa3]
    db $10
    cp c
    cp e
    rrca
    ld de, $20ff
    jp nc, $ff10

jr_025_7e2a:
    ld a, [c]
    rst $30
    db $f4
    rst AddAToHL
    or h
    sbc [hl]
    ret nz

    ld a, [$bf22]
    db $10
    rst $38
    rlca
    ld a, [c]
    rst $30
    ld b, h
    db $eb
    push bc
    adc c
    rst $38
    ldh [$fa], a
    ld h, d
    cp a
    ld [hl], b
    ret c

    nop
    ei
    ld [de], a
    ei
    db $f4
    and a
    ld de, $10cb
    rst $28
    rlca
    ld sp, $43fb
    ei
    ld d, l
    adc e
    rst $38
    jr nz, jr_025_7e2a

    ld h, b
    ei
    ld [hl], d
    db $eb
    or e
    xor a
    ld [hl], b
    ei
    and c
    ld l, e
    ld l, e
    ld e, e
    and e
    ei
    rrca
    or l
    adc e
    or b
    db $db
    or b
    db $db
    ldh [$d3], a
    rst $30
    ret nz

    ei
    jp nc, Jump_025_74bb

    rlca
    pop af
    dec b
    ld l, l
    adc l
    ld b, a
    sub h
    ld c, h
    sub $12
    rst JumpTable
    sbc a
    ld d, a
    or a
    adc d
    ld [de], a
    cp h
    jr nc, jr_025_7eb4

    ld bc, $1d59
    ld e, $00
    ld sp, $07fc
    or e
    ld [$fc44], a
    ld d, [hl]
    ld a, h
    db $fd
    pop hl
    ld c, a
    ld [hl], h
    add sp, $5a
    jp nc, $edab

    inc c
    add b
    db $fc
    sub d
    db $fc
    and h
    sbc h
    ld a, a
    jp nc, $9a7b

    add hl, sp
    ret nz

    db $fc
    jp nc, $c4fc

    db $fc
    and $7c
    ret nz

jr_025_7eb4:
    reti


    sbc e
    ldh a, [$fc]
    sub d
    ld a, [hli]
    and d
    sub c
    ld a, [hli]
    db $fd
    ld h, a
    and e
    and d
    sub c
    ld a, [hli]
    ld sp, hl
    db $fd
    ld h, a
    and e
    and d
    sub c
    ld a, [hli]
    ld c, l

jr_025_7ecb:
    dec c
    jr nz, jr_025_7ecb

    ld [hl-], a
    db $fd
    inc h
    db $fd
    cpl
    ld b, [hl]
    ld a, l
    db $10
    rst $38
    ld a, [c]

jr_025_7ed8:
    or a
    db $10
    cp c
    cp e
    rrca
    ld hl, $50bf
    db $dd
    db $10
    db $d3
    ld d, c
    ld [de], a
    sub h
    ld e, l
    cp h
    ld de, $6db0
    inc e
    cp d
    dec a
    ld a, a
    sub b
    db $fd
    and d
    cp l
    sub b
    db $dd
    or b
    db $fd
    jp nz, $d4fd

    db $fd
    and $7d
    db $e3
    jr nz, jr_025_7ed8

    ld b, b

jr_025_7f01:
    ld sp, $a208
    ld [$1e4a], sp
    ld c, l
    ld e, $01
    cp $ff
    inc bc
    xor [hl]
    nop
    sbc $20
    sbc $40
    pop de

jr_025_7f14:
    jr nc, jr_025_7f14

    ld b, d
    cp $54
    sbc [hl]
    db $10
    cp c
    ld [bc], a
    cp e
    rrca
    ld hl, $20fd
    ld b, d
    and b
    ld [$f27c], sp
    rst $30
    db $f4
    or a
    ld h, d
    cp $f4
    or a
    ld h, d
    cp $1f
    db $f4
    rst $30
    or $d7
    db $76
    cp $88
    ld e, [hl]
    ldh [$33], a
    and $00
    and $01
    jp hl


    ld b, e
    rst $38
    sub b
    sbc $50
    sub $90
    call nc, $fec0
    jp nc, $e4fe

    cp $f6
    ld a, [hl]
    add b
    push de
    rra
    add h
    ld [hl], $f4
    ld a, $8c
    dec d
    ret nz

    sub $30
    rst JumpTable
    rst $38
    ld b, b
    rst JumpTable
    sub b
    db $d3
    sub b
    sub $70
    rst $38
    add d
    rst $38
    sub h
    rst $38
    and [hl]
    ld a, a
    add b
    sub $07
    ret nz

    rst $38
    jp nc, $30bf

    rst JumpTable
    sbc a
    ldh [rIE], a
    ld a, [c]
    cp a
    ld d, b
    jr jr_025_7f01

    scf

Call_025_7f7e:
    ld a, [de]
    ld l, l
    rst $30
    rst $30
    xor c
    daa
    di
    ld [hl-], a
    inc l
    xor a
    cp d
    rst $30
    rst $30
    rst $08
    inc b
    db $76
    scf
    ldh a, [rNR13]
    db $db
    ld [bc], a
    rst $30
    rrca
    db $e4
    ld [bc], a
    inc [hl]
    jr z, @+$29

    pop af
    call c, $e03d
    dec l
    inc d
    inc d
    db $db
    ld c, l
    ccf
    ld bc, $3444
    ld h, $de
    dec e
    nop
    inc h
    ldh [rNR44], a
    db $ec
    dec e
    rst $00
    db $e3
    sbc a
    inc l
    ld l, c
    or [hl]
    inc de
    and b
    ld c, l
    and b
    inc l
    db $10
    or d
    ld c, [hl]
    add d
    dec e
    jp z, $112a

    cp l
    nop
    dec e
    push af
    add hl, bc
    ld bc, $4d30
    and b

Jump_025_7fcc:
    dec e
    or $2a
    inc d
    ld c, l
    nop
    rst $30
    or $5d
    inc h
    rrca
    ld c, l
    add c
    scf
    xor h
    add hl, de
    ld [de], a
    inc b
    ld c, l
    jr z, @+$39

    ld c, l
    db $dd
    ld hl, $b107
    rst JumpTable
    dec l
    pop de
    ld [bc], a
    ldh a, [rNR13]
    ld c, l
    xor h
    add hl, de
    ld [bc], a
    inc [hl]
    cp c
    ld a, [hli]
    inc h
    ld c, l
    dec e
    ld c, l
    dec l
    jr nc, @+$48

    db $76
    daa
    or c
    rst $38
    inc hl
    ld e, e

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX

    dec e
    dec e
    ld d, [hl]
    dec e
    dec e
    ld d, [hl]
    dec e
    dec e
    ld d, [hl]
    ld d, [hl]
    and b
    and b
    sub d
    sub d
    sub d
    nop
    or a
    sub [hl]
    sub [hl]
    sub [hl]
    sub d
    sub d
    sbc e
    sub d
    sub d
    sbc e
    sub d
    sub [hl]
    sub [hl]
    sub [hl]
    dec e
    nop
    or e
    db $10
    db $10
    or h
    or d
    or l
    xor d
    and b
    xor d
    or h
    or d
    or l
    db $10
    db $10
    or c
    nop
    and l
    rst $28
    ld l, l
    db $fd
    db $fd
    db $fd
    ld l, l
    rst $28
    and c
    and c
    rst $28
    inc c
    or c
    db $ed
    or c
    nop
    or e
    ld de, $b6a0
    ld d, d
    or a
    xor d
    and b
    xor d
    or [hl]
    ld d, d
    or a
    and b
    ld de, $00b1
    cp b
    or a
    or e
    and b
    and b
    ld a, [$fdfa]
    pop af
    ld a, [$b1fa]
    and b
    ld b, h
    and b
    nop
    jp z, $c2c2

    jp nz, $c2c2

    ld [c], a
    and $e3
    jp nz, $c2c2

    jp nz, $cbc2

    nop
    or e
    and c
    and c
    ld c, c
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    ld c, e
    ld c, e
    ld c, e
    ld c, c
    and c
    and c
    or c
    nop
    jp $efaa


    rst $28
    and d
    rst $28
    db $fd
    db $fd
    db $fd
    rst $28
    and d
    rst $28
    rst $28
    xor d
    pop bc
    nop
    or e
    db $f4
    or $f6
    or $f6
    db $f4
    and l
    and c
    and b
    and b
    and c
    or $f4
    or c
    nop
    or e
    db $f4
    and l
    and c
    and b
    and b
    db $f4
    and b
    push af
    dec hl
    and b
    and b
    dec hl
    db $f4
    or c
    nop
    and a
    and a
    and a
    cp b
    or a
    rst $28
    cp b
    or a
    dec d
    and c
    db $ed
    or [hl]
    cp c
    db $ed
    and c
    nop
    ld l, c
    ld l, d
    jr jr_018_412b

    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    nop
    and a
    and a
    and a
    cp d
    or l
    cp d
    or d
    or l
    db $ed
    and l
    or h
    or d
    cp e
    and c
    rst $28
    nop
    or e
    add hl, bc
    adc [hl]
    adc l
    adc l
    adc l
    adc l
    adc l
    adc a
    add hl, bc
    and b
    and b
    xor h
    and b
    or c
    nop
    or e
    ld b, h
    rst $28
    and c
    rst $28
    rst $28
    and c
    rst $28
    db $f4
    db $f4
    db $f4
    or $a1
    pop af
    or c
    nop
    or e
    db $f4
    db $f4
    and c
    or $2b
    and b
    and c
    and c
    db $f4
    and b
    and b
    db $f4
    and b
    or c
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
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]

jr_018_412b:
    ld d, [hl]
    ld d, a
    ld d, a
    or c
    nop
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $2a
    ld a, [hli]
    ld a, [hli]
    nop
    or e
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    or c
    nop
    rst $28
    rst $28
    and c
    rst $28
    and l
    rst $28
    rst $28
    and l
    and l
    and l
    rst $28
    or [hl]

jr_018_415c:
    or b
    cp c
    and a
    nop
    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret


    nop
    and b
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    and b
    ld h, b
    and b
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld h, b
    and b
    or c
    nop
    or e
    ld de, $4e4e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    add hl, bc
    and b
    and b
    nop
    or e
    ld l, b
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    ld l, b
    and b
    and b
    xor h
    and b
    or c
    nop
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    nop
    and a
    and a
    and a
    cp d
    or l
    jr nz, jr_018_415c

    and l
    and c
    and c
    and c
    rst $28
    or [hl]
    or b
    cp c
    nop
    and a
    and a
    cp d
    or l
    rst $28
    and l
    and l
    and l
    and l
    rst $28
    or [hl]
    or b
    cp c
    and a
    and a
    nop
    and l
    and c
    and c
    dec d
    dec d
    and c
    and c
    and c
    and c
    ld a, [$b0b6]
    cp c
    and a
    and a
    nop
    cp b
    or a
    and l
    and l
    and c
    pop af
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    and l
    and l
    and l
    and l
    nop
    and c
    and l
    and l
    and l
    and l
    rst $28
    and l
    and c
    rst $28
    and c
    or [hl]
    cp c
    and a
    and a
    and a
    nop
    and a
    and a
    and a
    or e
    and c
    or e
    ld b, l
    rst $28
    inc e
    dec d
    inc e
    rst $28
    ld a, [$a5a5]
    nop
    or e
    db $f4
    and b
    and l
    db $f4
    and b
    or $a0
    db $f4
    db $f4
    and b
    and b
    push af
    or $b6
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    and c
    rst $28
    and l
    rst $28
    db $ed
    db $ed
    rst $28
    and c
    and l
    db $ed
    db $ed
    or c
    and a
    and a
    and a
    nop
    inc l
    dec l
    jr jr_018_4281

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
    and [hl]
    cp b
    or b
    or a
    and b
    and l
    and b
    and b
    and b
    dec hl
    and b
    or [hl]
    or b
    cp c
    and [hl]
    nop
    cp a
    db $f4
    or $f7
    db $f4
    and c
    and c
    and c
    and c
    rst $30
    push af
    db $f4
    db $f4
    and c
    cp l
    nop
    or e
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    or c
    nop
    cp a

jr_018_4281:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    or c
    sbc e
    and b
    sbc d
    nop
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub b
    or e
    ld [$5ba0], sp
    ld e, l
    ld e, l
    ld e, l
    ld a, l
    nop
    sub d
    sub d
    sub d
    sub d
    sbc d
    cp b
    or b
    or b
    cp c
    sbc e
    sub d
    sub d
    sub d
    sub d
    or [hl]
    nop
    inc l
    dec l
    jr jr_018_42f1

    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    inc a
    nop
    and [hl]
    and [hl]
    or e
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    or c
    and [hl]
    and [hl]
    nop
    cp d
    or l
    and b
    dec e
    dec e
    ld h, b
    dec e
    dec e
    dec e
    dec e
    ld h, b
    or h
    or d
    or d
    cp e
    nop
    or b
    or b
    or a
    db $fd
    db $fd
    db $fd
    db $fd
    and c
    rst $28
    ld a, [$b144]
    and l
    and l
    or c
    nop
    or a

jr_018_42f1:
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d

Jump_018_42fb:
    sub d
    sbc d
    cp b
    or b
    nop
    ld a, a
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, h
    and c
    and c
    and c
    ld e, c
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    nop
    and [hl]
    and [hl]
    or e
    and b
    jr nz, jr_018_4336

    and b
    and b
    and b
    jr nz, jr_018_433b

    and b
    or c
    and [hl]
    and [hl]
    nop
    or b
    or b
    or a
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    or [hl]
    or b
    or b
    nop
    or e
    and e
    and e
    and e
    or c
    sub l

jr_018_4336:
    and b
    and b
    and b
    sub h
    or e

jr_018_433b:
    and e
    and e
    and e
    or c
    nop
    or e
    and c
    and c
    ld a, $3c
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, $3e
    and c
    and c
    or c
    nop
    cp d
    or d
    or d
    or d
    cp [hl]
    or l
    and b
    or h
    cp [hl]
    or d
    or d
    cp e
    sub l
    and b
    sub h
    nop
    or e
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    dec e
    and b
    dec e
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    or c
    nop
    ld h, $26
    ld h, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, $26
    ld h, $00
    or a
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    and b
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    or c
    nop
    ld bc, $0801
    add hl, bc
    ld a, [bc]
    ld bc, $0801
    add hl, bc
    ld a, [bc]
    ld bc, $1801
    ld bc, $002e
    and [hl]
    cp b
    or b
    cp c
    or [hl]
    or b
    or b
    or b
    or a
    cp b
    or b
    and b
    or b
    cp c
    and [hl]
    nop
    or e
    push af
    push af
    push af
    push af
    push af
    dec e
    and b
    dec e
    push af
    push af
    push af
    push af
    push af
    or c
    nop
    cp b
    or a
    and b
    or c
    rst $20
    db $ec
    db $ec
    db $ec
    add sp, -$4d
    and b
    and b
    and b
    or [hl]
    cp c
    nop
    and a
    and a
    and a
    and a
    cp b
    or a
    db $ed
    cp b
    or b
    ld d, d
    or b
    cp c
    db $ed
    rst $28
    and l
    nop
    cp d
    or d
    or d
    or d
    or d
    or d
    or d
    and b
    or d
    or d
    or d
    or d
    or d
    or d
    cp e
    nop
    and b
    and b
    and b
    and b
    or c
    sub c
    pop af
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    nop
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    or e
    and b
    or [hl]
    adc c
    adc c
    or b
    adc c
    adc c
    or b
    nop
    cp d
    or d
    or d
    or d
    or l
    and b
    and b
    and b
    dec e
    dec e
    dec e
    dec e
    or c
    and [hl]
    and [hl]
    nop
    dec e
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec e
    and b
    and b
    and b
    and b
    nop
    and a
    and a
    and a
    and a
    and a
    cp d
    or l
    xor a
    and c
    and c
    db $ed
    db $ed
    or h
    cp e
    and a
    nop
    and a
    and a
    and a
    cp b
    or a
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    or [hl]
    cp c
    and a
    and a
    and a
    nop
    or l
    cp d
    or d
    or d
    or d
    cp e
    and c
    and l
    rst $28
    rst $28
    and c
    rst $28
    and l
    or c
    and a
    nop
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, [$a7b1]
    nop
    cp b
    or b
    or a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    and b
    and b
    ld c, d
    ld c, d
    and b
    and b
    and b
    or c
    nop
    or e
    ld l, c
    add hl, bc
    xor h
    xor h
    xor h
    xor h
    xor h
    add hl, bc
    ld l, c
    and b
    and b
    xor h
    and b
    or c
    nop
    dec l
    ld bc, $0118
    ld bc, $3e01
    ld a, $3c
    inc a
    ld a, $3e
    ld bc, $0101
    nop
    or a
    add hl, bc
    add hl, bc
    add hl, bc
    sub [hl]
    sub [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    sub [hl]
    sub [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    or c
    nop
    or e
    and e
    and b
    and b
    or c
    rst $20
    db $ec
    db $ec
    db $ec
    add sp, -$4d
    and b
    and b
    and e
    or c
    nop
    ld h, $26
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hli]
    ld a, [hli]
    nop
    or e
    dec e
    rst $28
    rst $28
    rst $28
    ld hl, sp-$08
    ld hl, sp-$08
    rst $28
    rst $28
    rst $28
    rst $28
    dec e
    or c
    nop
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    cp d
    or d
    or d
    or d
    cp e
    nop
    or e
    and b
    ld e, c
    ld e, l
    ld e, h
    and b
    and b
    and b
    and b
    ld e, e
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld a, l
    nop
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
    cp d
    or l
    and l
    and c
    rst $28
    rst $28
    and l
    and l
    rst $28
    rst $28
    db $ed
    or h
    or d
    cp e
    and a
    nop
    and a
    and a
    and a
    or e
    rst $28
    and c
    or e
    and c
    and c
    and c
    dec d
    rst $28
    or [hl]
    or b
    or b
    nop
    or e
    db $f4
    and b
    and b
    db $f4
    and b
    and c
    and b
    db $f4
    db $f4
    and b
    and l
    db $f4
    and b
    and l
    nop
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    cp b
    or b
    or b
    or b
    or b
    nop
    and a
    and a
    and a
    and a
    or e
    jr nz, jr_018_4577

    and l
    and c
    and c
    and c
    rst $28
    rst $28
    rst $28
    or c
    nop
    and a
    and a
    cp d
    or d
    ldh [$fa], a
    pop hl
    cp e
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    nop
    jp $fdfd


    db $fd
    xor d
    rst $28
    rst $28

jr_018_4577:
    rst $28
    rst $28
    rst $28
    xor d
    db $fd
    db $fd
    db $fd
    pop bc
    nop
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    daa
    daa
    rla
    ld bc, $0101
    ld bc, $1601
    ld a, [hli]
    ld a, [hli]
    nop
    sub l
    and b
    sub h
    cp b
    or b
    cp h
    or b
    or b
    cp h
    or b
    ld d, d
    or b
    or a
    and b
    and b
    nop
    or e
    and b
    db $fd
    db $fd
    or c
    sub c
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    and b
    sub h
    nop
    ld [hl], e
    and b
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    inc c
    and b
    and b
    nop
    cp b
    or b
    or b
    or b
    cp h
    or a
    and b
    or [hl]
    cp h
    or b
    or b
    cp c
    sub l
    and b
    sub h
    nop
    cp a
    db $10
    db $10
    db $10
    db $10
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $10
    db $10
    db $10
    db $10
    cp l
    nop
    or e
    ld b, l
    or e
    and b
    ld a, [$fafa]
    db $fd
    ld a, [$fafa]
    ld d, e
    and b
    and b
    and b
    nop
    or e
    and e
    and h
    and e
    or c
    sub l
    and b
    pop af
    and b
    sub h
    or e
    and e
    and h
    and e
    or c
    nop
    or e
    and c
    and c
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and c
    and c
    or c
    nop
    or e
    add hl, bc
    ld a, a
    ld a, c
    ld a, c
    ld a, b
    ld a, c
    ld a, c
    ld a, [hl]
    add hl, bc
    and b
    and b
    xor h
    and b
    or c
    nop
    and a
    and a
    and a
    and a
    cp b
    or b
    or b
    or b
    or b
    or b
    cp c
    and a
    and a
    and a
    and a
    nop
    and [hl]
    and [hl]
    or e
    and b
    and b
    and b
    and b
    or c
    and [hl]
    or e
    and b
    ld de, $b1a0
    and [hl]
    nop
    or e
    and c
    and c
    ld c, d
    ld c, e
    ld c, e
    ld c, e
    ld c, d
    ld c, e
    ld c, e
    ld c, e
    ld c, d
    and c
    and c
    or c
    nop
    dec l
    ld bc, $0118
    ld bc, $3e3e
    inc a
    inc a
    inc a
    inc a
    ld a, $3e
    ld bc, $0001
    cp b
    or b
    or b
    cp h
    or a
    and b
    and b
    or [hl]
    cp h
    or b
    or b
    cp c
    sub l
    and b
    sub h
    nop
    or e
    and e
    and h
    and h
    and h
    and h
    and e
    and h
    and e
    and h
    and h
    and h
    and h
    and e
    or c
    nop
    ld a, [hli]
    ld d, $01
    ld bc, $2a2a
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    nop
    ld bc, $0401
    inc bc
    dec b
    ld bc, $0401
    inc bc
    dec b
    ld bc, $1801
    ld bc, $002e
    and [hl]
    and [hl]
    and [hl]
    or e
    and b
    and b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    dec e
    or [hl]
    or b
    cp c
    and [hl]
    nop
    or e
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    or c
    nop
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld a, [hli]
    ld a, [hli]
    nop
    ld l, c
    ld l, d
    jr jr_018_473b

    ld l, d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld h, a
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    nop
    ld a, [hli]
    ld a, [hli]
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $2a
    ld a, [hli]
    nop
    and [hl]
    and [hl]
    or e
    dec hl
    sub d
    sub d
    add hl, bc
    add hl, bc
    add hl, bc
    sub d
    sub d
    dec hl
    or c
    and [hl]
    and [hl]
    nop
    cp d
    or d
    or d
    or d
    or d
    or d
    or d
    ld [hl], $b2
    or d
    or d
    or d
    or d
    or d
    cp e
    nop
    cp b
    ld d, d
    or b
    or b
    or a
    and b
    and b
    and b
    inc e
    and b
    and b
    and b
    and d
    and b
    and b
    nop
    or e
    and b
    dec e
    and b
    dec e
    and b
    jr nz, jr_018_4744

    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    sub l
    pop af
    and b
    and b
    or e
    and b
    and b
    and b
    and b
    and b
    and b

jr_018_473b:
    and b
    and b
    and b
    or c
    nop
    sub c
    sub [hl]
    sub [hl]
    sub b

jr_018_4744:
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    or e
    dec e
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    dec e
    and b
    dec e
    dec e
    dec e
    or c
    nop
    sub l
    and b
    and b
    sub h
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    sbc e
    and b
    sub d
    sbc d
    or e
    dec e
    dec e
    dec e
    dec e
    and b
    and b
    and b
    and d
    and d
    or c
    nop
    or e
    and b
    dec e
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    or c
    sub l
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    and b
    inc e
    and b
    and b
    inc e
    and b
    inc e
    inc e
    and b
    and d
    and d
    or c
    nop
    or e
    and b
    and b
    and b
    dec e
    and b
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    and b
    dec e
    or c
    nop
    ld a, e
    and b
    and b
    and b
    inc e
    and b
    and b
    and b
    and b
    and b
    or [hl]
    or b
    ld d, d
    or b
    cp c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    ld e, a
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld a, l
    nop
    or e
    and b
    and b
    and b
    inc e
    and b
    inc e
    inc e
    inc e
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    and b
    inc e
    inc e
    and b
    and b
    inc e
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    inc e
    inc e
    and b
    inc e
    and b
    and b
    and b
    and b
    or c
    nop
    and b
    and b
    and b
    ld a, [bc]
    sbc b
    sub d
    sub d
    sub d
    sub d
    sub e
    and c
    pop af
    and c
    and b
    or c
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    ld a, b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    or [hl]
    or b
    or b
    or b
    nop
    or e
    and b
    and b
    and b
    ld e, c
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, h
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    or c
    nop
    ld a, a
    ld e, l
    ld e, d
    and b
    ld e, e
    ld e, l
    ld e, l
    ld e, h
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    ld e, [hl]
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    cp d
    or d
    or d
    or d
    or d
    or d
    or d
    ld a, [hl]
    or d
    or d
    or d
    or d
    or d
    or d
    cp e
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    sbc e
    and b
    sub d
    sub d
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    sub l
    and b
    and b
    and b
    nop
    or e
    and b
    dec e
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and c
    and l
    and l
    and c
    and c
    and c
    and b
    and b
    and c
    and b
    and l
    and l
    and c
    or c
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or a
    and b
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and c
    pop af
    and c
    and b
    and b
    and b
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    dec e
    and b
    and b
    and b
    ld hl, $1d1d
    dec e
    dec e
    dec e
    dec e
    or c
    nop
    or e
    and b
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    and b
    dec e
    jr nz, jr_018_492a

    dec e
    or c
    nop
    cp d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    nop
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b

jr_018_492a:
    or b
    or b
    or b
    or b
    cp c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    sub h
    or e
    and b
    and b
    and b
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and c
    and c
    and c
    and b
    or c
    nop
    sub d
    sub d
    and b
    sub d
    sub d
    sub e
    and b
    and b
    and b
    sub h
    or e
    and b
    and b
    and b
    or c
    nop
    or b
    or b
    ld d, d
    or b
    cp c
    sbc e
    sub d
    and b
    sub d
    sbc d
    or e
    and c
    and c
    and c
    or c
    nop
    and b
    and b
    and b
    and b
    or [hl]
    or b
    or b
    ld d, d
    or b
    or b
    or a
    and c
    inc c
    and c
    or c
    nop
    cp b
    or b
    or b
    or b
    or b
    or a
    and b
    and b
    or [hl]
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    ld e, l
    ld e, l
    ld e, l
    ld e, a
    and b
    and b
    dec e
    and b
    dec e
    and b
    dec e
    and b
    and b
    and b
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    dec e
    and b
    dec e
    dec e
    dec e
    and b
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    cp e
    nop
    or e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e

jr_018_49d9:
    dec e
    dec e
    dec e
    dec e
    dec e
    or c
    nop
    or e
    and l
    and b
    and l
    and b
    db $f4
    and b
    and b
    and b
    and l
    and b
    and l
    and c
    and c
    or c
    nop
    or e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $1d
    dec e
    or c
    nop
    or e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    dec e
    or c
    nop
    or e
    ld a, $3e
    ld a, $3e
    ld a, $3e

jr_018_4a17:
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $79
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    jr nc, jr_018_49d9

    or b
    or b
    or b
    or b
    or b
    or b
    nop
    or e
    and e
    and e
    and e
    or c
    rst $20
    db $ec
    db $ec
    db $ec
    add sp, -$4d
    and e
    and e
    and e
    or c
    nop
    or e
    and b
    and b
    and c
    and c
    and c
    and c
    and b
    and b
    and b
    and c
    and c
    and c
    and c
    or c
    nop
    or e
    and e
    and b
    and b
    or c
    jp hl


    db $eb
    db $ec
    db $eb
    ld [$a0b3], a
    and b
    and e
    or c
    nop
    or e
    and e
    and b
    and b
    or [hl]
    or b
    or b
    ld d, d
    or b
    or b
    or a
    and b
    and b
    and e
    or c
    nop
    or e
    and b
    dec e
    dec e
    dec e
    jr nz, jr_018_4a17

    and b
    and b
    dec e
    dec e
    dec e
    dec e
    dec e
    or c
    nop
    or e
    and b
    and b
    jr nz, jr_018_4aa5

    dec e
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and e
    and b
    and b
    and b
    and b
    and e
    and e
    and e
    and b
    and b
    and b
    and b
    and e
    or c
    nop
    or e
    and e
    and e
    and e
    and e

jr_018_4aa5:
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    and b
    db $f4
    and b
    and b
    and e
    and b
    and b
    db $f4
    and b
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    sbc b
    sub d
    sub d
    nop
    cp b
    or b
    or b
    or b
    or b
    cp h
    or b
    ld a, h
    or b
    cp h
    or b
    or b
    or b
    or b
    cp c
    nop
    or e
    and b
    and b
    and b
    and b
    ld e, e
    ld e, l
    ld e, l
    ld e, l
    ld e, d
    and b
    and b
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    ld e, a
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    ld [$a0a0], sp
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    ld a, e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    ld hl, $a0a0
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    jr nz, jr_018_4b64

    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    cp d
    or d
    or d
    or d
    or d
    cp [hl]
    or d
    ld a, d
    or d
    cp [hl]
    or d
    or d
    or d
    or d
    cp e
    nop
    or e
    and l
    and l
    and l

jr_018_4b64:
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    and l
    or c
    nop
    or e
    and l
    and l
    and h
    and h
    and h
    and l
    and l
    and l
    and h
    and h
    and h
    and l
    and l
    or c
    nop
    or e
    and l
    and l
    and l
    and c
    and c
    and b
    and c
    and c
    and b
    and b
    and l
    and c
    and l
    or c
    nop
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or a
    cp b
    or b
    or b
    or b
    cp c
    nop
    or e
    and l
    and l
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and l
    and l
    or c
    nop
    or e
    and l
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and l
    or c
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    sub h
    or e
    and b
    and l
    and b
    or c
    nop
    ld a, e
    and c
    and c
    and h
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and h
    and c
    and c
    or c
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    or b
    ld [hl], b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    or e
    and b
    dec e
    dec e
    dec e
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    dec e
    and b
    dec e
    and c
    and c
    and c
    or c
    nop
    or e
    and b
    dec e
    and b
    and b
    dec e
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and d
    and d
    and d
    and b
    and b
    and b
    and b
    and b
    and b
    nop
    cp d
    or d
    or d
    or d
    or d
    cp [hl]
    or d
    and c
    or d
    cp [hl]
    or d
    or d
    or d
    or d
    or d
    nop
    or e
    and b
    and b
    and b
    and b
    ld a, [de]
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and c
    and c
    and h
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and h
    and c
    and c
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    rst $30
    and b
    and b
    and b
    or c
    nop
    dec e
    dec e
    dec e
    dec e
    dec e
    and b
    and b
    and b
    dec e
    and b
    and b
    rst $30
    and b
    and b
    or c
    nop
    and b
    and b
    and b

Jump_018_4ca3:
    and b
    dec e
    dec e
    and b
    and b
    and b
    dec e
    and b
    and b
    rst $30
    and b
    or c
    nop
    or e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $1d
    dec e
    dec e
    dec e
    or c
    nop
    dec e
    dec e
    dec e
    dec e
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    ld hl, $2120
    jr nz, jr_018_4d0e

    or c
    nop
    cp b
    or b
    or b
    or b
    or b
    cp h
    or b
    ld a, b
    or b
    cp h
    or b
    or b
    or b
    or b
    cp c
    nop
    or e
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b

jr_018_4d0e:
    or c
    nop
    or e
    and b
    and b
    and b
    jr @-$5e

    and b
    ld b, l
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and e
    and c
    and e
    and d
    and d
    and d
    and d
    and d
    ld a, c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    cp l
    nop
    and [hl]
    and [hl]
    cp b
    or b
    or b
    cp h
    or b
    ld a, b
    or b
    cp h
    or b
    or b
    cp c
    and [hl]
    and [hl]
    nop
    cp b
    or b
    or b
    or b
    cp c
    or [hl]
    or b
    or b
    or b
    or a
    cp b
    or b
    or b
    or b
    cp c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    dec e
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and b
    and b
    and b
    or c
    nop
    ld [hl], e
    and b
    and b
    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and b
    and b
    and b
    ld a, c
    nop
    cp a
    and b
    and b
    and b
    and c
    dec e
    and c
    and c
    and c
    dec e
    and c
    and b
    and b
    and b
    cp l
    nop
    cp d
    or d
    or l
    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and b
    or h
    or d
    cp e
    nop
    and [hl]
    and [hl]
    or e
    and b
    jr nz, jr_018_4df7

    and b
    and b
    and b
    ld hl, $a020
    or c
    and [hl]
    and [hl]
    nop
    and [hl]
    and [hl]
    cp d
    or d
    or d
    cp [hl]
    or d
    ld a, d
    or d
    cp [hl]
    or d
    or d
    cp e
    and [hl]
    and [hl]
    nop
    or e
    and e
    and b
    db $ed
    db $ed
    and b
    and e

jr_018_4df7:
    and e
    and e
    and b
    db $ed
    db $ed
    and b
    and e
    or c
    nop
    or e
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    and c
    and c
    and c
    and c
    and c
    and c
    or c
    nop
    cp a
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    and c
    and c
    and c
    and c
    and c
    and c
    or c
    nop
    and c
    and d
    and d
    and d
    and d
    and d
    and d
    and e
    and c
    and c
    and c
    and c
    and c
    and c
    or c
    nop
    cp a
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    or c
    nop
    or e
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    ld hl, $00b1
    or e
    ld hl, $a120
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    jr nz, jr_018_4e7f

    or c
    nop
    or e
    and b
    xor $a0
    and b
    xor $a0
    and b
    and b
    xor $a0
    and b
    xor $a0
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    ldh [$e1], a
    ld [c], a
    and b
    and b
    and b
    and b
    and b
    or c

jr_018_4e7f:
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    db $e3
    db $e4
    push hl
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    dec l
    ld a, $18
    ld a, $3e
    ld a, $3c
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, $3e
    ld a, $00   ; xor a
    and b
    and b
    and b
    db $ed
    db $ed
    and b
    and e
    and e
    and e
    and b
    db $ed
    db $ed
    and b
    and e
    or c
    nop
    or e
    and b
    and b
    and b
    push af
    and b
    and b
    and b
    and b
    and b
    push af
    and b
    and b
    and b
    or c
    nop
    dec l
    ld bc, $0118
    ld bc, $0101
    ld a, $3e
    ld a, $3e
    ld bc, $0101
    ld bc, $2d00
    ld bc, $0118
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    daa
    daa
    daa
    daa
    rla
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a00
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    rla
    daa
    daa
    nop
    or e
    and c
    and l
    and l
    inc c
    push af
    and c
    and b
    and b
    and b
    and b
    and b
    and b
    and c
    or c
    nop
    or e
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    or c
    nop
    or e
    and b
    and b
    and b
    or $a0
    and b
    and b
    and b
    and b
    or $a0
    and b
    and b
    or c
    nop
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    nop
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    jr @+$03

    ld l, $00
    or e
    and l
    and l
    and b
    and b
    and b
    and b
    and b
    and l
    and c
    and l
    and b
    and l
    and l
    or c
    nop
    or e
    and b
    jr nz, @+$23

    and b
    and b
    and b
    ld e, [hl]
    and b
    and b
    and b
    and b
    ld hl, $b120
    nop
    ld bc, $0601
    dec bc
    rlca
    ld bc, $0601
    dec bc
    rlca
    ld bc, $1801
    ld bc, $002e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2717
    daa
    daa
    daa
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a16
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    nop
    daa
    rla
    ld bc, $2701
    daa
    daa
    daa
    daa
    daa
    daa
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    nop
    or e
    and l
    and l
    and h
    add hl, bc
    and h
    and l
    and l
    and l
    and h
    add hl, bc
    and h
    and l
    and l
    or c
    nop
    ld a, [hli]
    ld d, $02
    ld [bc], a
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    nop
    ld a, [hli]
    daa
    daa
    daa
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    ld a, [hli]
    nop
    cp b
    or b
    or b
    or b
    or b
    or b
    cp h
    or b
    or b
    or b
    or b
    or b
    cp h
    or b
    or b
    nop
    or e
    ld b, l
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    dec e
    and b
    and b
    and b
    and b
    nop
    nop
    ld [bc], a
    jr jr_018_5006

    ld e, c
    ld [bc], a

jr_018_5006:
    sbc a
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld [hl-], a
    inc bc
    sub c
    inc bc
    call $0f03
    inc b
    ld b, a
    inc b
    ld a, a
    inc b
    sub a
    inc b
    or d
    inc b
    jp z, $e504

    inc b
    nop
    dec b
    jr jr_018_5027

    jr nc, jr_018_5029

    ld c, b
    dec b
    ld h, e

jr_018_5027:
    dec b
    ld a, [hl]

jr_018_5029:
    dec b
    sub [hl]
    dec b
    xor [hl]
    dec b
    ret z

    dec b
    rst $28
    dec b
    ld c, $06
    scf
    ld b, $56
    ld b, $79
    ld b, $9a
    ld b, $b6
    ld b, $ce
    ld b, $09
    rlca
    ld h, l
    rlca
    xor d
    rlca
    di
    rlca
    ld c, e
    ld [$088a], sp
    db $dd
    ld [$0927], sp
    ld [hl], a
    add hl, bc
    cp b
    add hl, bc
    ld [$560a], sp
    ld a, [bc]
    sbc b
    ld a, [bc]
    adc $0a
    ld l, $0b

jr_018_505e:
    ld a, a
    dec bc
    xor h
    dec bc
    push de
    dec bc
    ld c, $0c
    ld c, b
    inc c
    add [hl]
    inc c
    or [hl]
    inc c
    db $ed
    inc c
    inc sp
    dec c
    ld l, a
    dec c
    ld [c], a
    dec c
    ld l, $0e
    ld a, l
    ld c, $c8
    ld c, $0f
    rrca
    ld e, [hl]
    rrca
    cp l
    rrca
    dec bc
    db $10
    ld h, e
    db $10
    cp c
    db $10
    add hl, bc
    ld de, $113f
    ld [hl], d
    ld de, $11ca
    inc de
    ld [de], a
    ld l, l
    ld [de], a
    jp z, $fd12

    ld [de], a
    ld b, a
    inc de
    and h
    inc de
    rst $28
    inc de

jr_018_509c:
    ld a, $14
    sbc h
    inc d
    ld hl, sp+$14
    ld e, e
    dec d
    or h
    dec d
    ld e, $16
    ld [hl], h

jr_018_50a9:
    ld d, $cf
    ld d, $1d
    rla
    ld [hl], h
    rla
    xor a
    rla
    inc b
    jr jr_018_50b5

jr_018_50b5:
    ld [bc], a
    nop
    ld [bc], a
    ld e, a
    jr jr_018_505e

    jr jr_018_509c

    jr jr_018_50fc

    add hl, de
    ld e, e
    add hl, de
    sub d
    add hl, de
    sbc $19
    dec l
    ld a, [de]
    ld l, c
    ld a, [de]
    xor d
    ld a, [de]
    call c, $271a
    dec de
    ld [hl], e
    dec de
    cp c

jr_018_50d3:
    dec de
    dec b
    inc e
    ld c, [hl]
    inc e
    sub h
    inc e
    jp z, $391c

    dec e
    sub [hl]
    dec e
    sub $1d
    dec l
    ld e, $85
    ld e, $e8
    ld e, $63
    rra
    sub c
    rra
    push bc
    rra
    inc d

jr_018_50ef:
    jr nz, jr_018_5139

    jr nz, jr_018_516f

    jr nz, jr_018_50a9

    jr nz, jr_018_50ef

    jr nz, jr_018_5144

    ld hl, $2191

jr_018_50fc:
    sla c
    inc c
    ld [hli], a
    dec [hl]
    ld [hli], a
    add e
    ld [hli], a
    jp nc, $3822

    inc hl
    ld l, a
    inc hl
    jp $1e23


jr_018_510d:
    inc h
    adc c
    inc h
    jp hl


    inc h
    ld [hli], a
    dec h
    ld l, c
    dec h
    or [hl]
    dec h
    ld c, $26
    ld h, e
    ld h, $ba
    ld h, $02
    daa
    ld c, l
    daa
    xor d
    daa
    ld b, $28
    dec h
    jr z, jr_018_5198

    jr z, jr_018_50d3

    jr z, jr_018_510d

    jr z, jr_018_5141

    add hl, hl
    ld b, [hl]

jr_018_5131:
    add hl, hl
    sub l
    add hl, hl
    db $ec
    add hl, hl
    inc sp
    ld a, [hli]
    ld [hl], d

jr_018_5139:
    ld a, [hli]
    or c
    ld a, [hli]
    add hl, de
    dec hl
    ld l, c
    dec hl
    xor h

jr_018_5141:
    dec hl
    inc b
    inc l

jr_018_5144:
    ld b, c
    inc l
    add c
    inc l
    rst $20
    inc l
    dec [hl]
    dec l
    add d
    dec l

jr_018_514e:
    ret c

    dec l
    dec [hl]
    ld l, $8c
    ld l, $e1
    ld l, $27
    cpl
    ld h, d
    cpl
    sbc a
    cpl
    rlca
    jr nc, jr_018_51b9

    jr nc, @-$62

    jr nc, jr_018_514e

    jr nc, jr_018_51b8

    ld sp, $3197
    db $ed
    ld sp, $324c
    sub l
    ld [hl-], a
    db $dd

jr_018_516f:
    ld [hl-], a
    inc e
    inc sp
    ld l, c
    inc sp
    and h
    inc sp
    di
    inc sp
    ld d, l
    inc [hl]

jr_018_517a:
    and l
    inc [hl]
    cp [hl]
    inc [hl]
    rst $38
    inc [hl]
    inc h
    dec [hl]
    ld a, c
    dec [hl]
    cp h
    dec [hl]
    jp hl


    dec [hl]
    ld h, $36
    ld [hl], c
    ld [hl], $b7
    ld [hl], $07
    scf
    ld h, $37
    ld a, h
    scf
    xor l
    scf
    pop hl
    scf

jr_018_5198:
    ld b, $38
    cpl
    jr c, jr_018_51f0

    jr c, jr_018_5210

    jr c, jr_018_5131

    jr c, jr_018_517a

    jr c, jr_018_51be

    add hl, sp
    ld b, b
    add hl, sp
    ld [hl], l
    add hl, sp
    and b
    add hl, sp
    ld c, $3a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_018_51b8:
    nop

jr_018_51b9:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_018_51be:
    nop
    ld [bc], a
    ld h, e
    ld a, [hl-]
    and h
    ld a, [hl-]
    push af
    ld a, [hl-]
    ld b, c
    dec sp
    ld a, e
    dec sp
    cp h
    dec sp
    db $fc
    dec sp
    scf
    inc a
    ld a, e
    inc a
    jp $f83c


    inc a
    cpl
    dec a
    ld a, d
    dec a
    cpl
    dec a
    srl l
    ld a, [bc]
    ld a, $5b
    ld a, $9c
    ld a, $f3
    ld a, $4f
    ccf
    or d
    ccf
    inc bc
    ld b, b
    dec l
    ld b, b
    ld a, [hl]
    ld b, b

jr_018_51f0:
    xor h
    ld b, b
    or $40
    ld d, e
    ld b, c
    sbc a
    ld b, c
    cpl
    dec a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    or e
    db $f4
    or c
    jp $c5c4


    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    or e
    db $f4
    or c
    nop

jr_018_5210:
    or e
    adc c
    adc d
    ld e, e
    adc c
    adc d
    ld e, e
    adc c
    adc d
    add a
    and b
    and b
    and b
    add a
    or c
    nop
    and a
    and a
    and a
    call z, $c4c4
    call nz, $c4c4
    call nz, $c4c4
    call $a7a7
    nop
    and a
    and a
    and a
    rst $00
    and d
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    and d
    push bc
    and a
    and a
    nop
    and a
    cp d
    or l
    rst $28
    rst $28
    and l
    cp d
    or l
    ld h, l
    ld h, e
    ld h, c
    rst $28
    ld b, h
    and c
    or c
    nop
    and a
    or e
    rst $28
    and l
    and l
    rst $28
    or e
    ld h, h
    ld h, c
    ld h, h
    rst $28
    rst $28
    rst $28
    dec d
    or c
    nop
    and a
    or e
    dec d
    dec d
    rst $28
    and l
    ld d, c
    and c
    and c
    dec d
    dec d
    or [hl]
    or b
    cp c
    and a
    nop
    and a
    and a
    and a
    adc $c6
    add $c6
    add $c6
    add $c6
    add $cf
    and a
    and a
    nop
    cp b
    or a
    rst $28
    ld b, l
    rst $28
    rst $28
    and l
    dec d
    and l
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, c
    or c
    nop
    and a
    cp a
    jp c, $8b8b

    add hl, bc
    adc c
    adc c
    add hl, bc
    adc e
    adc e
    jp c, $a7bd

    and a
    nop
    and a
    cp b
    or a
    rst $28
    and l
    and l
    and l
    rst $28
    and l
    ld h, c
    ld h, l
    ld h, e
    and l
    pop af
    or c
    nop
    or e
    ld h, h
    rst $28
    and l
    and c
    and c
    rst $28
    and l
    ld h, c
    dec e
    ld h, c
    ld h, d
    ld h, c
    rst $28
    or c
    nop
    or e
    ld h, d
    ld h, l
    ld h, e
    ld h, l
    ld h, c
    ld h, l
    ld h, c
    ld h, c
    dec e
    and c
    ld h, c
    ld h, h
    and c
    or c
    nop
    or e
    ld h, h
    and c
    and l
    ld h, c
    ld h, l
    ld h, c
    dec e
    ld h, c
    and l
    and c
    ld h, l
    ld h, d
    and c
    or c
    nop
    or e
    ld h, c
    ld h, c
    rst $28
    ld h, e
    ld h, h
    ld h, l
    and l
    and c
    and c
    ld h, c
    dec e
    ld h, d
    ld h, c
    or c
    nop
    or e
    ld h, d
    ld h, h
    ld h, l
    ld h, e
    ld h, l
    and c
    rst $28
    rst $28
    ld h, h
    ld h, c
    dec e
    ld h, c
    rst $28
    or c
    nop
    or e
    ld h, h
    ld h, c
    ld h, c
    ld h, d
    ld h, c
    and l
    and c
    and l
    rst $28
    and l
    ld h, l
    ld h, h
    and c
    or c
    nop
    and a
    cp d
    or l
    ld h, c
    ld h, d
    ld h, h
    ld h, e
    xor h

jr_018_5318:
    ld h, h
    ld h, c
    ld h, e
    ld h, l
    or h
    cp e
    and a
    nop
    cp d
    or l
    ld h, h
    ld h, c
    ld h, h
    ld h, c
    ld h, c
    xor h
    ld h, c
    ld h, h
    ld h, h
    ld h, e
    ld h, h
    or h
    cp e
    nop
    or e
    ld h, h
    ld h, c
    ld h, l
    ld h, c
    ld h, h
    ld h, h
    xor h
    ld h, h
    ld h, c
    ld h, c
    ld h, h
    ld h, d
    ld h, h
    or c
    nop
    and a
    cp b
    or a
    ld h, h
    ld h, h
    ld h, l
    ld h, c
    ld h, h
    ld h, h
    ld h, c
    ld h, c
    ld h, h
    or [hl]
    cp c
    and a
    nop
    db $ed
    db $ed
    ld c, l
    and l

jr_018_5354:
    and c
    db $f4
    db $f4
    and l
    and l
    rst $30
    and c
    and c
    and l
    push af
    or c
    nop
    or e
    jr nz, @+$22

    and l
    and l
    ld c, l
    and c
    rst $28
    and l
    and l
    jr nz, jr_018_538c

    and l
    and c
    and l
    nop
    or e
    jr nz, jr_018_5318

    and c

jr_018_5374:
    and l
    rst $28
    ld c, l
    and c
    ld c, l
    rst $28
    rst $28
    ld c, l
    rst $28
    rst $28
    rst $28
    nop
    or e
    db $ed
    or $f4
    or $ed
    jr nz, jr_018_53a8

    db $ed
    db $f4
    db $f4
    push af

jr_018_538c:
    db $ed
    rst $28
    or c
    nop

jr_018_5390:
    or e
    and c
    db $ed
    sbc b
    sbc d
    xor e
    xor e
    xor e
    sbc e
    rst $28
    call z, $efcc
    and l
    or c
    nop
    or e
    db $ed
    and l
    and l
    sbc b
    sub d
    sub d
    sub d

jr_018_53a8:
    sub e
    sub h
    xor e
    xor e
    rst $28
    rst $28
    or c
    nop
    or e
    jr nz, jr_018_5354

    and c
    ld a, [hli]
    and c
    and l
    and c
    and c
    db $fd
    or c
    rst $28
    rst $28
    and l
    or [hl]
    nop
    or e
    jr nz, jr_018_53e3

    and c
    and l
    and l
    rst $28
    dec hl
    rst $28
    db $fd
    or c
    and c
    pop af
    rst $28
    or c
    nop
    or e
    jr nz, jr_018_5374

    and l
    ld b, h
    db $ed
    db $f4
    push af
    db $f4
    rst $30
    db $f4
    rst $30
    db $f4
    jr nz, jr_018_5390

    nop
    or e
    jr nz, @+$22

jr_018_53e3:
    and c
    rst $28
    rst $28
    push af
    and l
    push af
    and c
    push af
    and l
    push af
    and l
    or c
    nop
    and l
    rst $28
    dec d
    or $ef
    db $ed
    rst $28
    push af
    rst $30
    or $ef
    and c
    and l
    and l
    or c
    nop
    and l
    and l
    or $f5
    rst $28
    db $ed
    db $ed
    db $ed
    db $ed
    push af
    or $ef
    jr nz, jr_018_542e

    or c
    nop
    or e
    and e
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    and e
    or c
    nop
    or e
    db $f4
    or c
    add $c7
    ret z

    and b
    and b
    and b
    add $c7
    ret z

    or e
    db $f4

jr_018_542e:
    or c
    nop
    or e
    and c
    rst $30
    push af
    push af
    dec e
    push af
    push af
    rst $30
    push af
    dec e
    or $f4
    and c
    or c
    nop
    or e
    db $f4
    or h
    or d
    or d
    cp e
    ret


    jp z, $bacb

    or d
    or d
    or l
    db $f4
    or c
    nop
    or e
    ld de, $1111
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $b111
    nop
    or e
    ld h, c
    ld h, d
    ld h, c
    db $d3
    ld h, d
    ld h, l
    ld h, h
    db $d3
    db $d3
    ld h, c
    ld h, d
    ld b, h
    ld h, h
    ld h, c
    nop
    and a
    jp Jump_018_6562


    ld h, e
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, l
    ld h, e
    ld h, d
    ld h, e
    pop bc
    and a
    nop
    or e
    ld h, h
    ld h, h
    ld h, l
    ld h, e
    ld h, h
    ld h, e
    dec e
    db $d3
    ld h, d
    ld h, h
    ld h, l
    ld h, e
    ld h, c
    ld h, d
    nop
    or e
    ld h, h
    ld h, e
    ld h, h
    ld h, e
    ld h, d
    dec e
    and b
    dec e
    ld h, c
    ld h, e
    ld h, d
    ld h, e
    ld h, l
    or c
    nop
    inc e
    inc e
    inc e
    dec a
    dec a
    inc e
    inc e
    dec a
    inc e
    ld a, [de]
    dec a
    dec a
    dec a
    dec a
    ld l, $00
    ld h, c
    ld h, h
    ld h, h
    ld h, e
    ld h, h
    db $d3
    ld h, h
    ld h, e
    ld h, h
    ld h, l
    ld h, d
    ld h, c
    ld h, l
    ld h, d
    or c
    nop
    or e
    ld h, c
    ld h, d
    ld h, e
    ld h, d
    ld h, d
    dec e
    and b
    dec e
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, d
    ld h, e
    nop
    or e
    ld h, h
    ld h, l
    ld h, d
    ld h, h
    ld h, c
    dec e
    and b
    dec e
    ld h, e
    ld h, h
    ld h, c
    ld h, h
    ld h, e
    ld h, h
    nop
    and b
    and b
    ld h, h
    ld h, h
    and b
    ld h, h
    ld h, c
    or [hl]
    or a
    ld h, a
    or [hl]
    or a
    and b
    ld h, c
    or c
    nop
    db $d3
    ld h, e
    ld h, h
    ld h, d
    ld h, c
    ld h, d
    ld h, h
    ld h, l
    ld h, c
    ld h, h
    ld h, e
    ld h, c
    ld h, c
    ld h, e
    or c
    nop
    or e
    ld h, d
    ld h, l
    ld h, h
    ld h, c
    and b
    and b
    ld h, e
    ld h, e
    ld h, d
    ld h, e
    and b
    ld b, h
    and b
    and b
    nop
    or e
    ld h, c
    ld h, e
    ld h, c
    ld h, d
    pop af
    and b
    ld h, c
    ld h, h
    ld h, c
    ld h, d
    ld h, l
    ld h, h
    and b
    and b
    nop
    or e
    ld h, e
    ld h, c
    ld h, l
    ld h, e
    ld h, h
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    db $d3
    ld h, h
    ld h, h
    ld h, h
    db $d3
    nop
    or e
    ld h, e
    ld h, l
    ld h, e
    ld h, c
    or c
    cp b
    call nc, $b3b9
    ld h, h
    ld h, l
    ld h, d
    db $d3
    db $d3
    nop
    and b
    and b
    dec e
    ld h, h
    ld h, d
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec e
    dec e
    dec e
    ld h, d
    ld h, e
    or c
    nop
    or e
    ld h, d
    ld h, h
    ld h, e
    db $d3
    ld h, h
    ld h, l
    ld h, e
    ld h, c
    db $d3
    db $d3
    and b
    and b
    and b
    ld h, h
    nop
    or e
    cp d
    dec b
    or d
    or l
    dec hl
    dec hl
    dec hl
    inc c
    db $f4
    or h
    or d
    or d
    cp e
    or c
    nop
    or e
    cp b
    ld b, $b0
    or a
    db $f4
    dec hl
    dec hl
    inc c
    db $f4
    or [hl]
    or b
    ld b, $b9
    or c
    nop
    ld h, l
    ld h, d
    ld h, e
    ld h, h
    ld h, c
    ld h, d
    and b
    and b
    and b
    ld h, e
    ld h, h
    ld h, e
    ld h, d
    ld h, c
    or c
    nop
    and c
    and c
    or e
    and b
    di
    and b
    or c
    sub l
    and c
    sub h
    or e
    and b
    ld c, a
    and c
    or c
    nop
    or e
    ld h, h
    ld h, e
    db $d3
    ld h, d
    ld h, e
    ld h, h
    db $d3
    db $d3
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, d
    ld h, c
    nop
    or e
    ld h, d
    ld h, c
    ld h, l
    ld h, h
    ld h, d
    ld h, c
    ld h, d
    db $d3
    db $d3
    ld h, h
    ld h, c
    ld h, e
    ld h, h
    ld h, e
    nop
    or e
    ld h, e
    ld h, h
    db $d3
    ld h, c
    db $d3
    ld h, c
    ld h, d
    ld h, h
    db $d3
    db $d3
    db $d3
    db $d3
    ld h, d
    ld h, c
    nop
    or e
    ld h, c
    ld h, h
    ld h, d
    db $d3
    ld h, h
    db $d3
    db $d3
    db $d3
    db $d3
    db $10
    db $10
    db $10
    dec e
    dec e
    nop
    sub l
    sub h
    or e
    inc c
    di
    and c
    di
    and b
    di
    and b
    di
    or [hl]
    or b
    ld b, $b0
    nop
    or e
    rra
    rra
    rra
    dec e
    rra
    rra
    ld [$a01f], sp
    and b
    and c
    ld c, a
    and b
    or c
    nop
    sub l
    sub h
    or e
    di
    and l
    di
    and c
    di
    and c
    di
    and b
    and b
    and c
    and b
    and c
    nop
    ld a, e
    and c
    and b
    or c
    sub c
    sub b
    or e
    or c
    sub c
    sub [hl]
    sub b
    or e
    and b
    db $10
    or c
    nop
    cp d
    or d
    or d
    cp e
    sbc e
    sbc d
    cp d
    cp e
    sbc e
    sub d
    sbc d
    cp d
    or d
    or d
    cp e
    nop
    and b
    and b
    dec e
    or $f6
    rst $30
    or $f6
    dec e
    and b
    dec e
    dec e
    or $a0
    or c
    nop
    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret


    nop
    or e
    and l
    and c
    and l
    or c
    db $fd
    db $fd
    db $fd
    sbc l
    sbc l
    db $fd
    ld a, [$fafa]
    or c
    nop
    and a
    and a
    and a
    cp b
    or a
    ld a, [$fafa]
    ld a, [$b6fa]
    cp c
    and a
    and a
    and a
    nop
    ld b, d
    dec de
    dec de
    ld d, h
    ld b, a
    ld d, h
    ld b, a
    ld d, h
    ld b, a
    ld d, h
    ld d, h
    ld b, a
    ld d, h
    ld d, h
    ld d, h
    nop
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    nop
    sub l
    sbc b
    sub d
    sub d
    sbc d
    or e
    and l
    and b
    and c
    and b
    and b
    or c
    sub l
    and b
    and c
    nop
    and h
    and h
    and h
    and h
    ld c, e
    dec e
    ld c, c
    ld c, c
    ld c, c
    dec e
    or c
    sbc e
    sub d
    sub d
    sub d
    nop
    ld l, c
    ld l, d
    inc c
    inc c
    inc c
    inc c
    ld h, a
    ld l, c
    ld l, d
    ld l, e
    ld l, e
    ld l, e
    ld l, h
    ld d, $67
    nop
    or e
    rst $28
    or $f7
    rst $30
    push af
    or $f6
    and l
    db $ed
    rst $28
    or [hl]
    or b
    or b
    or b
    nop
    or e
    ld h, h
    or c
    and [hl]
    and [hl]
    and [hl]
    or e
    ld h, d
    ld h, h
    dec e
    ld de, $1111
    ld de, $001d
    inc hl
    ld bc, $5018
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    nop
    or e
    ld h, c
    ld h, d
    ld h, c
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, c
    dec e
    dec e
    and b
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    and b
    and b
    and b
    ld h, c
    ld h, l
    ld h, e
    ld h, e
    ld h, h
    or c
    nop
    inc hl
    ld bc, $0118
    ld [$0a09], sp
    ld bc, $0801
    add hl, bc
    ld a, [bc]
    ld bc, $0101
    nop
    ld l, d
    jr jr_018_578e

    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    nop
    or e
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    and l
    and l
    and l
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    or c
    nop
    sub l
    sbc c
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    and c
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    and c
    and c
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld b, c
    ld b, c
    ld b, h
    ld d, a
    dec de
    dec de
    dec de
    ld b, b
    nop
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
    nop
    or e
    ld h, h
    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    db $d3
    db $d3
    db $d3
    db $d3
    ld h, c
    ld h, l
    ld h, h
    nop
    ld c, c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, b
    ld b, c
    ld b, c
    ld b, c

jr_018_578e:
    ld b, c
    nop
    ld b, d
    ld e, $1f
    dec e
    ld e, $1b
    dec de
    ld e, $1f
    dec de
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    nop
    or e
    ld h, c
    ld h, h
    ld h, c
    ld h, d
    or h
    or d

jr_018_57a7:
    or d
    or d
    or l
    ld h, c
    ld h, e
    ld h, h
    db $d3
    db $d3
    nop
    or e
    ld h, d
    ld h, e
    ld h, h
    ld h, c
    or [hl]
    or a
    ld h, a
    or [hl]
    or a
    ld h, d
    ld h, c
    ld h, h
    ld h, c
    db $d3
    nop
    inc a
    inc a
    inc a
    dec a
    dec c
    ld c, $0d
    ld c, $0d
    ld c, $0d
    ld c, $0d
    dec a
    inc a
    nop
    ld h, c
    ld h, h
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    and b
    and b
    and b
    ld h, d
    ld h, l
    ld h, h
    ld h, h
    ld h, h
    or c
    nop
    and a
    and a
    cp d
    or l
    and l
    and c
    dec d
    cp d
    or d
    or d
    or l
    ld h, c
    ld h, d
    ld h, h
    or c
    nop
    and a
    and a
    or e
    and c
    and c
    rst $28
    rst $28
    or e
    ld h, d
    ld h, e
    ld h, l
    ld h, h
    rst $28
    and c
    or c
    nop
    cp b
    or a
    cp b
    or a
    jr nz, jr_018_57a7

    and l
    and c
    jr nz, jr_018_582a

    or c
    and a
    or c
    and a
    and a
    nop
    and a
    cp b
    or a
    cp b
    or b
    or a
    db $10
    db $10
    db $10
    or c
    and a
    and a
    or c
    and a
    and a
    nop
    cp b
    or b
    ld d, d
    or b
    or b
    or b
    or a
    and l
    and l
    and c

jr_018_582a:
    rst $28
    and l
    and c
    db $10
    or c
    nop
    or a
    db $10
    rst $28
    rst $28
    rst $28
    rst $28
    cp b
    or b
    or a
    db $10
    db $10
    and c
    and c
    db $10
    or c
    nop
    or e
    add hl, bc
    and d
    and d
    or c
    rst $20
    db $ec
    db $ec
    db $ec
    add sp, -$4d
    and d
    and d
    add hl, bc
    or c
    nop
    or e
    ld h, l
    ld h, c
    ld h, d
    ld h, h
    ld h, l
    ld h, c
    dec e
    dec e
    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    nop
    inc a
    inc a
    inc a
    dec a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec a
    inc a
    nop
    or e
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    and h
    or c
    nop
    or b
    or b
    or a
    dec e
    dec e
    dec e
    or c
    sbc e
    sub d
    sbc d
    or e
    and b
    and l
    and c
    or c
    nop
    or e
    ld h, e
    ld h, h
    ld h, c
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld h, l
    and c
    or c
    nop
    or e
    and c
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    and c
    or c
    nop
    dec e
    dec e
    dec e
    and b
    dec e
    or c
    cp b
    call nc, $b3b9
    ld h, h
    ld h, e
    ld h, l
    ld h, h
    or c
    nop
    and l
    rst $28
    and c
    ld c, l
    rst $28
    and c
    ld c, l
    rst $28
    and l
    rst $28
    rst $28
    or $f6
    or $b1
    nop
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    nop
    rst $28
    rst $28
    and c
    rst $28
    rst $30
    push af
    push af
    push af
    push af
    and c
    and l
    and c
    and l
    and c
    or c
    nop
    and b
    and b
    dec e
    dec e
    ld h, c
    ld h, h
    ld h, d
    ld h, e
    ld h, c
    ld h, h
    ld h, c
    ld h, e
    db $d3
    ld h, h
    or c
    nop
    dec l
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, [de]
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec a
    nop
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    and l
    rst $28
    db $f4
    rst $28
    and c

jr_018_591a:
    and c
    and l
    and l
    and l
    or c
    nop
    or e
    and b
    ld b, h
    and b
    ld c, d
    ld c, d
    ld c, d
    ld c, d

jr_018_5928:
    ld c, d
    ld c, d
    ld c, d
    and b
    ld b, h
    and b
    or c
    nop
    or e
    or h
    or d
    or d
    or d
    or l
    db $10
    db $10
    and b
    or c
    sbc e
    sub d
    and b
    sub d
    sub d
    nop
    ld [hl], e
    and b
    and b
    sub h
    or e
    db $f4
    db $f4
    dec hl
    inc c
    db $f4
    or c
    sbc e
    and b
    sub d
    or [hl]
    nop
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    nop
    ld b, d
    dec de
    dec de
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    nop
    or e
    jr nz, jr_018_5993

    jr nz, jr_018_591a

    jr nz, jr_018_5928

    and a
    or e
    pop af
    rst $28
    rst $28
    rst $28
    and c
    or c
    nop
    or e
    and b
    and b
    sub h
    or e
    db $f4
    db $f4
    push af
    push af
    or $b6
    or b
    ld d, d
    or b
    cp c
    nop
    dec e
    dec e
    dec e

jr_018_5993:
    ld h, d
    ld h, l
    ld h, e
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, d
    ld h, c
    or c
    nop
    ld h, e
    ld h, d
    ld h, d
    ld h, h
    ld h, d
    db $d3
    ld h, l
    ld h, h
    ld h, c
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    or c
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
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    and e
    and e
    and e
    or c
    sub l
    and b
    and b
    and b
    sub h
    or e
    and e
    and e
    and e
    or c
    nop
    cp d
    or d
    or l
    ld h, e
    ld h, l
    ld h, e
    ld h, c
    and l
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    or c
    nop
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    nop
    cp b
    or a
    ld h, c
    ld h, d
    ld h, e
    xor h
    xor h
    xor h
    xor h
    xor h
    ld h, h
    ld h, h
    ld h, c
    or [hl]
    cp c
    nop
    or e
    ld c, e
    ld c, e
    ld c, e
    and b
    ld h, b
    ld h, b
    ld h, b
    and b
    or c
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    nop
    and a
    cp b
    or a
    db $10
    and l
    and l
    and c
    rst $28
    rst $28
    rst $28
    and l
    rst $28
    ld b, h
    or [hl]
    cp c
    nop
    jp $acac


    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    pop bc
    nop
    or e
    and b
    and c
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    push af
    push af
    and c
    or c
    nop
    dec e
    dec e
    dec e
    dec e
    dec e
    or c
    sub c
    and b
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub b
    nop
    sbc e
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    nop
    ld b, d
    dec de
    dec de
    dec de
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    nop
    jr nz, jr_018_5a92

    jr jr_018_5a94

    jr nz, jr_018_5a96

    jr nz, jr_018_5a98

    jr nz, jr_018_5a9a

    jr nz, jr_018_5a9c

    jr nz, jr_018_5a9e

    jr nz, jr_018_5a80

jr_018_5a80:
    jp z, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $cbc2

    nop
    sub c
    sub [hl]

jr_018_5a92:
    sub [hl]
    sub [hl]

jr_018_5a94:
    sub b
    cp b

jr_018_5a96:
    or b
    ld [hl], b

jr_018_5a98:
    or b
    or b

jr_018_5a9a:
    or b
    cp c

jr_018_5a9c:
    sub c
    sub [hl]

jr_018_5a9e:
    sub [hl]
    nop
    db $ed
    and c
    ld c, l
    ld c, l
    ld c, l
    db $f4
    db $f4
    db $f4
    db $f4
    and c
    rst $28
    ld b, h
    rst $28
    and c
    or c
    nop
    or e
    and c
    and c
    rst $28
    and c
    and c
    ld a, [hli]
    rst $28
    and c
    db $fd
    or [hl]
    or b
    or b
    or b
    cp c
    nop
    or e
    rst $28
    and c
    rst $28
    and c
    db $ed
    push af
    push af
    push af
    push af
    push af
    db $ed
    ld c, l
    db $ed
    and l
    nop
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld c, c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, b
    nop
    and b
    and b
    ld h, e
    ld h, l
    ld h, e
    ld h, d
    db $d3
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    or c
    nop
    db $d3
    ld h, h
    ld h, c
    and b
    and b
    ld b, h
    and b
    or h
    or d
    or d
    or d
    or l
    pop af
    ld h, l
    or c
    nop
    or e
    and c
    and c
    rst $30
    ld [$fd1d], sp
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    or c
    nop
    cp d
    or d
    or l
    db $fd
    db $fd
    db $fd
    or h
    or d
    or d
    or d
    cp e
    and l
    rst $28
    and l
    or c
    nop
    cp b
    or b
    or a
    db $fd
    db $fd
    db $fd
    or c
    rst $28
    and l
    and l
    and l
    and l
    and l
    and l
    or [hl]
    nop
    or e
    ld h, h
    ld h, e
    ld h, h
    ld h, e
    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    and b
    and b
    nop

jr_018_5b40:
    cp b
    or a
    and b
    or [hl]
    or b
    or b
    cp c
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    and [hl]
    nop
    ld h, l
    ld h, h
    ld bc, $0101
    ld bc, $6563
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    rla
    ld h, a
    nop
    or e
    and c
    and c
    rst $28
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$00b1]
    ld l, c
    ld l, d
    ld bc, $0101
    ld bc, $6967
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld d, $67
    nop
    or e
    and l
    and l
    and l
    and c
    and c
    rst $28
    and c
    and l
    jr nz, jr_018_5bab

    jr nz, jr_018_5bad

    jr nz, jr_018_5b40

    nop
    or e
    dec e
    and b
    dec e
    dec e
    or [hl]
    or b
    or b

jr_018_5b98:
    or b
    or a
    and b
    and b
    dec e
    and b
    or [hl]
    nop
    or e
    jr nz, jr_018_5b98

    and l
    and c
    and l
    push af
    push af
    and l
    and l
    and c

jr_018_5bab:
    or c
    and a

jr_018_5bad:
    and a
    and a
    nop
    or e
    ld h, h
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, c
    ld h, d
    ld h, c
    ld h, h
    ld h, c
    dec e
    nop
    or e
    or $f6
    or $f6
    or $f6
    or $f6
    or $f6
    or $f6
    rst $30
    dec e
    nop
    or e
    ld h, e
    ld h, d
    ld h, l
    ld h, c
    dec e
    ld h, h
    ld h, e
    ld h, d
    ld h, h
    ld h, e
    dec e
    and b
    and b
    and b
    nop
    or e
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    dec e
    nop
    or e
    and b
    and b
    or h
    or d
    or d
    or l
    or h
    or d
    or d
    or d
    or l
    di
    and l
    or c
    nop
    or e
    and c
    ld a, [c]
    db $fd
    db $fd
    db $fd
    or [hl]
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    cp d
    or d
    or d
    or d
    or d
    cp e
    sbc e
    sub d
    sub d
    sub d
    sub d
    sub d
    sub e
    and b
    sub h
    nop
    or e
    and b
    and b
    and b
    and b
    dec e
    and e
    and e
    and e
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    and h
    nop
    ld bc, $0101
    ld bc, $6001
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    nop
    or e
    ld h, c
    ld h, c
    ld h, h
    dec e
    ld h, l
    ld h, h
    ld h, d
    ld h, h
    ld h, c
    db $d3
    and b
    and b
    and b
    and b
    nop
    or e
    db $f4
    db $f4
    db $f4
    db $f4
    or $f6
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    dec e
    nop
    and b
    and b
    and b
    and b
    dec e
    or [hl]
    or a
    ld h, a
    or [hl]
    or a
    ld h, c
    db $d3
    ld h, c
    ld h, d
    or c
    nop
    or e
    and c
    and c
    and c
    and b
    and c
    and b
    and b
    and b
    and b
    and c
    and b
    and c
    and c
    or c
    nop
    cp d
    or l
    and b
    cp d
    ld [c], a
    db $e3
    db $e4
    cp e
    cp d
    or d
    or d
    or d
    cp e
    and b
    or h
    nop
    and l
    and l
    push af
    dec d
    and l
    and c
    and c
    and c
    and c
    and c
    push af
    rst $28
    jr nz, jr_018_5cbe

    or c
    nop
    or e
    ld h, d
    or c
    cp b
    call nc, $b3b9
    ld h, h
    ld h, c
    ld e, $a0
    and b
    and b
    and b
    and b
    nop
    sub l
    sub h
    cp b
    or b
    or b
    or a
    and l
    and b
    and b
    and b
    and b
    or c
    sbc e
    and c

jr_018_5cbe:
    sub d
    nop
    cp b
    or a
    rst $28
    rst $28
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    rst $28
    or [hl]
    cp c
    nop
    or e
    rra
    rra
    adc h
    adc h
    rra
    rra
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    or c
    nop
    and h
    and h
    and h
    and h
    and h
    dec e
    ld c, b
    ld c, b
    ld c, b
    dec e
    or [hl]
    or b
    or b
    or b
    cp c
    nop
    and a
    or e
    or e
    db $10
    db $10
    db $10
    rst $28
    or c
    db $10
    db $10
    rst $28
    db $10
    or c
    and a
    and a
    nop
    and a
    and a
    and a
    or e
    xor d
    ld a, [$fafa]
    ld a, [$aafa]
    or c
    and a
    and a
    and a
    nop
    or e
    ld h, e
    ld h, h
    ld h, c
    ld h, d
    ld h, e
    ld h, d
    ld h, e
    ld h, l
    rst $28
    rst $28
    rst $28
    dec d
    and c
    or c
    nop
    and a
    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret


    and a
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    jr jr_018_5da4

    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld h, a
    ld l, c
    nop
    ld l, c
    ld l, d
    dec c
    ld c, $0d
    ld c, $67
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld d, $67
    nop
    or e
    and d
    and b
    and b
    or c
    jp hl


    db $eb
    db $ec
    db $eb
    ld [$a0b3], a
    and b
    and d
    or c
    nop
    or e
    and a
    or e
    ld a, [$9e20]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    ld a, [$b1fa]
    and a
    or c
    nop
    ld l, c
    ld l, d
    inc c
    inc c
    inc c
    inc c
    ld h, a
    ld l, c
    ld l, d
    ld bc, $0101
    ld l, e
    ld d, $67
    nop
    dec a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec a
    inc e
    inc e
    inc e
    nop
    or e
    and b
    ld b, l
    sub h
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    sub l
    ld b, l
    and b
    or c
    nop
    sub l
    sub h
    or e
    and c

jr_018_5da4:
    di
    and c
    di
    and b
    di
    and b
    di
    or h
    or d
    dec b
    or d
    nop
    dec e
    db $d3
    ld h, d
    ld h, h
    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, d
    ld h, h
    or c
    nop
    dec a
    dec a
    dec a
    ld bc, $0101
    dec a
    dec a
    ld bc, $0101
    dec a
    dec a
    dec a
    dec a
    nop
    or e
    ld h, d
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, c
    ld h, d
    ld h, c
    db $d3
    nop
    ld b, d
    dec de
    dec de
    ld b, b
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
    nop
    or e
    db $fd
    db $fd
    db $fd
    db $fd
    and b
    and b
    and b
    and b
    and l
    xor d
    xor d
    xor d
    xor d
    or c
    nop
    or e
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    or [hl]
    nop
    or e
    and b
    and b
    and b
    and b
    dec e
    and e
    pop af
    and e
    ld d, [hl]
    dec hl
    dec hl
    dec hl
    ld d, h
    and h
    nop
    or e
    rst $28
    rst $28
    rst $28
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    rst $28
    rst $28
    or c
    nop
    and a
    and a
    and a
    or e
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    or c
    and a
    and a
    and a
    nop
    ld b, d
    dec de
    dec de
    dec de
    ld d, h
    ld b, b
    ld b, c
    ld b, d
    ld d, h
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    nop
    inc [hl]
    dec [hl]
    dec de
    dec de
    dec de
    dec de
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, d
    dec de
    dec de
    dec de
    dec de
    ld b, b
    nop
    or e
    and b
    and c
    and c
    and b
    and b
    and b
    inc c
    and b
    and b
    and b
    and b
    and c
    and c
    or c
    nop
    or e
    push af
    push af
    inc e
    db $10
    and b
    and c
    and l
    and b
    dec e
    rst $30
    dec e
    rst $30
    and c
    or c
    nop
    dec e
    rst $30
    rst $30
    or $f6
    or $f6
    or $f6
    or $f6
    and c
    and c
    or $b1
    nop
    or e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    and b
    and b
    and c
    and c
    or c
    nop
    and a
    jp z, $c2c2

    jp nz, $e2c2

    ld [$c2e3], a
    jp nz, $c2c2

    res 4, a
    nop
    or e
    ld h, d
    ld h, l
    ld h, e
    ld h, h
    ld h, c
    rst $28
    rst $28
    ld h, c
    rst $28
    and c
    dec d
    ld h, c
    ld h, l
    or c
    nop
    or e
    ld h, e
    ld h, e
    ld h, d
    ld h, c
    rst $28
    rst $28
    rst $28
    ld h, e
    and l
    ld h, d
    ld h, l
    ld h, d
    ld h, c
    or c
    nop
    or e
    db $f4
    db $f4
    db $f4

jr_018_5ed4:
    db $f4
    dec e
    dec e

jr_018_5ed7:
    or $f6
    db $f4
    db $f4
    db $f4
    or $f6
    dec e
    nop
    or e
    jr nz, @-$59

    jr nz, jr_018_5ed4

    and c
    jr nz, jr_018_5ed7

    db $fd
    db $fd
    db $fd
    ld a, [$fafa]
    or c
    nop
    or e
    and c
    xor [hl]
    xor [hl]
    add hl, bc
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    add hl, bc
    xor [hl]
    xor [hl]
    and c
    or c
    nop
    cp b
    or b
    sbc [hl]
    xor h
    sbc l
    or a
    and c
    and c
    and c
    or [hl]
    sbc [hl]
    xor h
    sbc l

jr_018_5f0d:
    or b
    cp c
    nop
    cp a
    and e
    and e
    and e
    adc b
    and e
    and e
    and e
    and e
    and e
    adc b
    and e
    and e
    and e
    cp l
    nop
    or e
    and h
    and h
    and h
    and e
    and h
    and h
    and h
    and h
    and h
    and e
    and h
    and h
    and h
    or c
    nop
    or e
    and b
    and b
    or [hl]
    or a
    ld de, $a011
    sub d
    sub d
    sub d
    sub d
    sub e
    and b
    or c
    nop
    or e
    db $10
    adc e
    adc c
    adc d
    ld b, h
    and b
    adc c
    adc d
    adc c
    adc d
    and b
    db $10
    add a
    or c
    nop
    and a
    cp b
    or a
    rst $28
    push af
    or $b1
    and a
    or e
    dec d
    rst $28
    rst $28
    or c
    and a
    and a
    nop
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    and a
    or e
    jr nz, jr_018_5f0d

    ld b, h
    or c
    and a
    nop
    and a
    and a
    and a
    rst $00
    and d
    xor h
    add hl, bc
    xor h
    xor h
    add hl, bc
    xor h
    and d
    push bc
    and a
    and a
    nop
    or e
    sub [hl]
    and b
    sub b
    or e
    push af
    push af
    rst $30
    rst $30
    db $f4
    or c
    sub c
    and d
    sub [hl]
    or c
    nop
    or e
    and l
    rst $28
    rst $28
    or c
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld a, [$effa]
    ld a, [$00b1]
    and [hl]
    and [hl]
    or e
    and b
    and b
    or c
    rst $20
    db $ec
    db $ec
    db $ec
    add sp, -$4d
    and b
    and b
    or c
    nop
    or e
    ld h, d
    ld h, e
    ld h, d
    xor h
    xor h
    xor h
    pop af
    xor h
    xor h
    xor h
    ld h, h
    ld h, l
    ld h, c
    or c
    nop
    ld b, c
    ld b, c
    ld b, d
    dec de
    dec de
    dec de
    inc sp
    inc [hl]
    ld c, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    nop
    ld b, c
    ld c, c
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, b
    ld b, c
    ld c, c
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, b
    ld b, c
    nop
    cp d
    or d
    or d
    or d
    or d

jr_018_5fe5:
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    nop
    and b
    and b
    ld h, c
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, c
    ld h, h
    db $d3
    ld h, h
    or c
    nop
    or e

Jump_018_6001:
    rst $28
    push af
    db $f4
    push af
    rst $28
    rst $28
    and c
    db $ed
    or $f6
    or $f6
    rst $28
    or c
    nop
    or e
    ld h, c
    ld h, c
    ld h, d
    ld h, h
    ld h, l
    ld h, c
    ld h, d
    ld h, h
    ld h, l
    ld h, h
    ld h, h
    ld h, c
    ld h, d
    dec e
    nop
    or e
    ld h, d
    ld h, h
    ld h, e
    dec e
    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld h, e
    ld h, d
    dec e
    and b
    and b
    and b
    nop
    ld h, d
    ld h, h
    ld h, c
    ld h, l
    ld h, h
    ld h, c
    ld h, e
    ld h, d
    ld de, $64d3
    ld h, c
    ld h, e
    ld h, d
    or c
    nop
    or e
    and l
    jr nz, jr_018_5fe5

    rst $28
    and c
    and c
    and l
    and l
    jr nz, jr_018_606b

    pop af
    jr nz, jr_018_606e

    or c
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, l
    nop
    and a
    and a
    and a
    and a
    cp b
    or b
    or b
    or b
    or b
    or b
    cp c

jr_018_606b:
    and a
    and a
    and a

jr_018_606e:
    and a
    nop
    or e
    adc c
    adc d
    adc c
    adc d
    and b
    and b
    adc c
    adc d
    adc c
    adc d
    and b
    db $10
    add a
    or c
    nop
    ld hl, $2121
    jr nz, jr_018_60a5

    jr nz, jr_018_60a7

    jr nz, jr_018_60a9

    jr nz, jr_018_60ab

    jr nz, jr_018_60ad

    jr nz, jr_018_60af

    nop
    or e
    and d
    and b
    and b
    or c
    rst $20
    db $ec
    db $ec
    db $ec
    add sp, -$4d
    and b
    and b
    and d
    or c
    nop
    or e
    and e
    add hl, bc
    and e
    or c

jr_018_60a5:
    sub l
    and b

jr_018_60a7:
    pop af
    and b

jr_018_60a9:
    sub h
    or e

jr_018_60ab:
    and e
    add hl, bc

jr_018_60ad:
    and e
    or c

jr_018_60af:
    nop
    dec a
    dec a
    dec a
    dec a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec a
    dec a
    nop
    inc hl
    ld bc, $0118
    inc b
    inc bc
    dec b
    ld bc, $0401
    inc bc
    dec b
    ld bc, $0101
    nop
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    and b
    sub d
    sub d
    dec e
    sub d
    and b
    sub d
    or [hl]
    or b
    nop
    or e
    and b
    and b
    and b
    and b
    dec e
    and e
    and e
    and e
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    and h
    nop
    or e
    and b
    sbc c
    sub [hl]
    ld a, [de]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    and b
    or c
    nop
    or e
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    or c
    or e
    and c
    and c
    pop af
    and c
    and c
    or c
    nop
    db $ed
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    db $f4
    db $f4
    or $f6
    and c
    and l
    rst $28
    and c
    rst $28
    or c
    nop
    db $d3
    db $d3
    ld h, c
    ld h, l
    ld h, h
    and b
    ld h, d
    ld h, c
    db $d3
    ld h, c
    ld h, e
    db $d3
    ld h, l
    ld h, c
    or c
    nop
    or e
    ld h, c
    ld h, c
    ld h, h
    ld h, l
    ld h, e
    ld h, d
    ld h, c
    ld h, h
    ld h, c
    ld h, e
    ld h, e
    ld h, h
    ld h, d
    db $d3
    nop
    cp d
    or d
    ldh [$e6], a
    pop hl
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    cp e
    nop
    or e
    and l
    rst $28
    rst $28
    rst $28
    rst $28
    or c
    and a
    or e
    rst $28
    rst $28
    and c
    rst $28
    and c
    or c
    nop
    and l
    and c
    and l
    and b
    and b
    and b
    or [hl]
    or b
    or b
    or b
    or a
    and b
    and b
    and c
    or c
    nop
    and c
    sub h
    or e
    and b
    and b
    and b
    and b
    and l
    db $f4
    db $f4
    and b
    and l
    and b
    and c
    or c
    nop
    and c
    sub h
    or e
    and c
    and c
    and c
    and c
    and c
    or $f6
    and b
    and c
    and c
    and c
    or c
    nop
    sub d
    sbc d
    cp d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    or d
    cp e
    nop
    or d
    or d
    or l
    and b
    and b
    and b
    and b
    and l
    push af
    push af
    and b
    and b
    and b
    and c
    or c
    nop
    sub [hl]
    sub b
    or e
    and b
    and b
    and b
    and b
    and b
    db $f4
    db $f4
    and b
    and b
    and l
    and c
    or c
    nop
    sub [hl]
    sub b
    cp b
    or b
    or b
    or b
    cp c
    sub c
    sub [hl]
    sub b
    cp b
    or b
    or b
    or b
    cp c
    nop
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    cp c
    nop
    or e
    and c
    and b
    ld c, l
    ld c, l
    and b
    and l
    ld c, l
    ld c, l
    ld c, l
    and b
    and l
    and b
    inc c
    or c
    nop
    or e
    and e
    and b
    and e
    or [hl]
    or b
    ld d, d
    ld d, d
    ld d, d
    or b
    or a
    and e
    and b
    and e
    or c
    nop
    nop
    ld [bc], a
    jr jr_018_6206

    jr jr_018_6208

jr_018_6206:
    jr jr_018_620a

jr_018_6208:
    jr jr_018_620c

jr_018_620a:
    jr jr_018_620e

jr_018_620c:
    jr jr_018_6210

jr_018_620e:
    jr jr_018_6212

jr_018_6210:
    jr jr_018_6214

jr_018_6212:
    ld b, l
    ld [bc], a

jr_018_6214:
    db $76
    ld [bc], a
    and a
    ld [bc], a
    rlca
    inc bc
    ld h, [hl]
    inc bc
    rlc e
    db $f4
    inc bc
    db $76
    ld [bc], a
    jr jr_018_6226

    ld c, $04

jr_018_6226:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_018_623f:
    ld [bc], a
    ld b, l
    inc b
    ld a, h
    inc b
    jp $0a04


    dec b
    ld d, d
    dec b
    xor [hl]
    dec b
    ld bc, $6506
    ld b, $c2
    ld b, $26
    rlca
    add c
    rlca
    rlc a
    ld a, [hli]
    ld [$089b], sp
    nop
    add hl, bc
    sbc b
    add hl, bc
    or $09
    ld e, e
    ld a, [bc]
    jp $f70a


    ld a, [bc]
    jr nz, jr_018_6275

    ld [hl], l
    dec bc
    call $2a0b
    inc c
    ld [hl], a
    inc c
    ret c

    inc c
    inc [hl]

jr_018_6275:
    dec c
    sbc c
    dec c
    db $fc
    dec c
    ld [hl], d
    ld c, $d1
    ld c, $1d
    rrca
    ld a, a
    rrca
    db $ec
    rrca
    ld c, l
    db $10
    and h
    db $10
    inc c
    ld de, $1178
    add $11
    inc l
    ld [de], a
    and e

jr_018_6291:
    ld [de], a
    dec e
    inc de
    ld a, e
    inc de
    rst $38
    inc de
    ld d, l
    inc d
    sbc l
    inc d
    inc bc
    dec d
    ld d, [hl]
    dec d
    xor b
    dec d
    push hl
    dec d
    ld b, [hl]
    ld d, $aa
    ld d, $03
    rla
    ld e, h
    rla
    and b
    rla
    ld bc, $5d18
    jr jr_018_623f

jr_018_62b3:
    jr jr_018_6291

    jr jr_018_62dd

    add hl, de
    or [hl]
    add hl, de
    add sp, $19
    ld [hl], $1a
    or c
    ld a, [de]
    ld [de], a
    dec de
    ld c, h
    dec de
    and b
    dec de
    ld sp, hl
    dec de
    ld c, a
    inc e
    and d
    inc e
    call z, $f31c
    inc e
    ld a, [de]
    dec e
    ld [hl], a
    dec e
    sub $1d
    ld a, [c]
    dec e
    ld h, $1e
    add [hl]
    ld e, $de

jr_018_62dd:
    ld e, $35
    rra
    ld a, l
    rra
    ret z

    rra
    ld a, [de]
    jr nz, jr_018_635a

    jr nz, jr_018_62b3

    jr nz, jr_018_6312

    ld hl, $215a
    xor h
    ld hl, $2204
    ld c, b
    ld [hli], a
    add e
    ld [hli], a
    db $e4
    ld [hli], a
    ld c, l
    inc hl
    and h
    inc hl
    dec d
    inc h
    ld [hl], l
    inc h
    push de
    inc h
    ld c, a

jr_018_6303:
    dec h
    and h
    dec h
    add hl, bc
    ld h, $59
    ld h, $c4
    ld h, $1e
    daa
    add d
    daa
    rst $20
    daa

jr_018_6312:
    ld b, l
    jr z, @-$64

    jr z, jr_018_631f

    add hl, hl
    ld h, [hl]
    add hl, hl
    push de
    add hl, hl
    ld hl, $002a

jr_018_631f:
    ld [bc], a
    ld a, e
    ld a, [hli]
    or d
    ld a, [hli]
    di
    ld a, [hli]
    ld l, [hl]
    dec hl
    ld l, [hl]
    dec hl
    ld l, [hl]
    dec hl
    push de
    dec hl
    jr nc, jr_018_635c

    xor h
    inc l
    rrca
    dec l
    ld d, a
    dec l
    sbc l
    dec l
    ld a, [c]
    dec l
    ld d, a
    ld l, $ac
    ld l, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_018_634e:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_018_635a:
    nop
    ld [bc], a

jr_018_635c:
    nop
    ld [bc], a
    nop
    ld [bc], a
    jp nc, $3a2e

    cpl
    xor d
    cpl
    db $fc
    cpl
    ld c, h
    jr nc, jr_018_6303

    jr nc, jr_018_634e

    jr nc, @+$2f

    ld sp, $3186
    reti


    ld sp, $31ff
    ld e, e
    ld [hl-], a
    xor b
    ld [hl-], a
    db $ec
    ld [hl-], a
    ld d, a
    inc sp
    cp l
    inc sp
    ld c, $34
    ld d, e
    inc [hl]
    or e
    inc [hl]
    dec e
    dec [hl]
    ld [hl], e
    dec [hl]
    or b
    dec [hl]
    ld [$1d35], a
    ld [hl], $4e
    ld [hl], $84
    ld [hl], $cc
    ld [hl], $21
    scf
    ld a, l
    scf
    jp $1937


    jr c, jr_018_640f

    jr c, @-$31

    jr c, jr_018_63be

    add hl, sp
    ld l, a
    add hl, sp
    call z, $1c39
    ld a, [hl-]
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_018_63be:
    nop
    ld [bc], a
    ld [hl], h
    ld a, [hl-]
    xor d
    ld a, [hl-]
    push hl
    ld a, [hl-]
    ld a, $3b
    ld a, h
    dec sp
    pop de
    dec sp
    ld sp, $7a3c
    inc a
    rst $00
    inc a
    ld h, $3d
    sub [hl]
    dec a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld d, $3e
    ld e, l
    ld a, $b6
    ld a, $39
    ccf
    ld e, l
    ld a, $b6
    ld a, $93
    ccf
    ld e, l
    ld a, $b6
    ld a, $13
    ld b, b
    ld e, l
    ld a, $b6
    ld a, $00   ; xor a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop

jr_018_640f:
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
    nop
    nop
    nop
    nop
    nop
    rst $28
    ldh a, [$df]
    ccf
    cp a
    ret nz

    ld a, e
    db $fc
    rst $30
    rrca
    cp a
    ret nz

    rst $30
    ld hl, sp+$1f
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    cp $01
    rst $38
    nop
    rst $28
    ldh a, [$df]
    ccf
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $28
    ldh a, [$df]
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $00ff
    rst $38
    nop
    ld sp, hl
    nop
    jp $0300


    jr nc, jr_018_64c3

    ret nz

    jp $e0e0


    db $fc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    pop af
    cp $1f
    sbc a
    nop
    ret z

    nop
    call c, $fe00
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld h, c
    nop
    di
    nop
    rst $38
    nop
    rst $38
    rst $28
    ldh a, [$df]

jr_018_64c3:
    ccf
    cp a
    ret nz

    ld [hl], a
    ld hl, sp-$21
    ccf
    cp l
    jp $f0ef


    dec sp
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    cp $01
    rst $38
    nop
    rst JumpTable
    ldh [rIE], a
    rst $38
    rst $28
    rra
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $20
    ld hl, sp-$01
    rst $38
    rst $08
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    ld sp, hl
    nop
    jp $0300


    jr nc, jr_018_6543

    ret nz

    jp $e0e0


    ld a, a
    add b
    rst $20
    ld hl, sp+$3e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    pop af
    cp $1f
    sbc a
    nop
    ret z

    nop
    call c, $fe00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld h, c
    nop
    di
    rst $38
    nop
    di

jr_018_6543:
    nop
    db $e4
    nop
    rrca
    nop
    rst $38
    nop
    ld a, h
    nop
    inc sp
    nop
    adc a
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_018_6562:
    db $e3
    nop
    add c
    inc e
    add c
    inc e
    add c
    inc e
    add c
    ld h, d
    db $e3
    nop
    db $e3
    inc e
    rst $00
    nop
    inc bc
    jr c, @+$03

    jr c, @+$03

    jr c, @+$03

    call nz, $02c5
    rst $00
    jr c, @+$01

    nop
    rst $08
    nop
    sub e
    nop
    inc a
    nop
    rst $38
    nop
    rra
    nop
    call z, $e300
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    inc bc
    jr c, @+$03

    jr c, @+$03

    jr c, @+$03

    call nz, $02c5
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    adc a
    nop
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    adc h
    adc a
    nop
    adc a
    ld [hl], b
    ld c, $00
    ldh [rP1], a
    rst $38
    nop
    rst $00
    nop
    inc sp
    nop
    ld hl, sp+$00
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    nop
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    adc h
    adc a
    nop
    adc a
    ld [hl], b
    rst $00
    nop
    add c
    jr c, @+$03

    jr c, @+$03

    jr c, jr_018_65fa

    ld b, [hl]

jr_018_65fa:
    ld b, a
    add b
    rst $00
    jr c, @+$01

    nop
    db $fc
    nop
    add hl, sp
    nop
    jp $ff00


    nop
    pop af
    nop
    call z, $3e00
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    add c
    jr c, @+$03

    jr c, @+$03

    jr c, jr_018_662a

    ld b, [hl]

jr_018_662a:
    ld b, a
    add b
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    db $e3
    nop
    add c
    inc e
    add c
    inc e
    add c
    inc e
    add c
    ld h, d

Jump_018_663c:
    db $e3
    nop
    db $e3
    inc e
    ei
    nop
    ld [$4400], a
    nop
    ld de, $1004
    xor l
    ld b, d
    cp l
    dec d
    ld [$42bd], a
    rst $38
    nop
    db $ed
    nop
    or d
    nop
    ld b, l
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    rst $00
    rst $38
    inc e
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    pop bc
    rst $38
    ld a, b
    add a
    dec d
    ld [$42bd], a
    ei
    nop
    ld [$4400], a
    nop
    ld de, $1004
    xor l
    ld b, d
    cp l
    ld b, l
    sub d
    add b
    add hl, bc
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld h, e
    rst $38
    inc a
    rst $38
    db $e4
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, Call_018_78ff
    rst $38
    dec c
    ld a, [c]
    db $10
    xor l
    ld b, d
    cp l
    dec d
    ld [$42bd], a
    ei
    nop
    ld [$4400], a
    nop
    ld de, $1e04
    nop
    ld c, l
    nop
    ld [bc], a

jr_018_66d5:
    nop
    jr nz, jr_018_66d8

jr_018_66d8:
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_018_66e0

jr_018_66e0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $86ff
    rst $38
    jr jr_018_66d5

    and a
    ld e, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    rst $38
    jr c, @+$01

    ld b, e
    cp h
    add sp, $17
    ld b, h
    nop
    ld de, $1004
    xor l
    ld b, d
    cp l
    dec d
    ld [$42bd], a
    ei
    nop
    ld [$5100], a
    nop
    ld [$2000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    or $ff
    inc bc
    rst $38
    ld h, c
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_6734:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    adc [hl]
    ld [hl], c
    ld bc, $0c00
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$22
    ret nz

    ret nz

    nop
    jr jr_018_6734

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rrca
    ld b, h
    inc bc
    add hl, bc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    sub b
    nop
    call z, $f700
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    ld bc, $0c00
    inc bc
    ldh a, [rIF]
    inc b
    ld hl, sp+$10
    ldh [$09], a
    nop
    dec b
    nop
    sbc h
    nop
    ret nz

    nop
    jr @-$1e

    rlca
    ld hl, sp+$40
    ccf
    ld [$8007], sp
    nop
    or d
    nop
    inc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00  ; and a / or a
    ldh [rP1], a
    inc bc
    nop
    daa
    nop
    rst $38
    nop

jr_018_67b2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    adc h
    nop
    inc c
    inc bc
    ld [hl], d
    inc c
    db $10
    ldh [rTIMA], a
    nop
    ld sp, $fc00
    nop
    rst $28
    nop
    rst $38
    nop
    jr jr_018_67b2

    daa
    jr jr_018_67dd

    rlca
    and b
    nop
    sub $00
    jr c, jr_018_67dc

jr_018_67dc:
    rst JumpTable

jr_018_67dd:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    jr jr_018_67ec

jr_018_67ec:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_018_67f2:
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    ret nz

    nop
    or b
    nop
    ld e, h
    nop
    rst $38
    nop
    inc c
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    ld [bc], a
    db $fc
    ld [$01f0], sp
    nop
    inc l
    nop
    rst $38
    nop
    jr jr_018_67f2

    rlca
    ld hl, sp+$00
    rst $38
    jr nz, jr_018_6837

    ld [$a007], sp
    nop
    inc a
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ld [bc], a
    nop
    inc e
    nop
    dec de
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rlca
    nop
    ld b, b
    nop
    ld h, b

jr_018_6837:
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rla
    nop
    ld c, $00
    ld l, $00
    sbc h
    nop
    ld a, h
    nop
    ld sp, hl
    nop
    ld [c], a
    nop
    add l
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    ld [hl], h
    nop
    add hl, sp
    nop
    ld a, $00   ; xor a
    rra
    nop
    ld b, a
    nop
    and c
    nop
    add l
    nop
    ld [c], a
    nop
    ld sp, hl
    nop
    ld a, h
    nop
    sbc h
    nop
    ld l, $00
    ld c, $00
    rla
    nop
    and c
    nop
    ld b, a
    nop
    rra
    nop
    ld a, $00   ; xor a
    add hl, sp
    nop
    ld [hl], h
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    pop bc
    nop
    add e
    nop
    adc e
    nop
    rlca
    nop
    ld e, a
    nop
    ld a, $00   ; xor a
    jr c, jr_018_688e

jr_018_688e:
    ld h, c
    nop
    add e
    nop
    pop bc
    nop
    pop de
    nop
    ldh [rP1], a
    ld a, [$7c00]
    nop
    inc e
    nop
    ld b, $00
    ld h, c
    nop
    jr c, jr_018_68a4

jr_018_68a4:
    ld a, $00   ; xor a
    ld e, a
    nop
    rlca
    nop
    adc e
    nop
    add e
    nop
    pop bc
    nop
    ld b, $00
    inc e
    nop
    ld a, h
    nop
    ld a, [$e000]
    nop
    pop de
    nop
    pop bc
    nop
    add e
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    db $e4
    nop
    ret


    nop
    rst $00
    nop
    adc a
    nop
    ld l, $00
    add hl, de
    nop
    ld c, $00
    add a
    nop
    daa
    nop
    sub e
    nop
    db $e3
    nop
    pop af
    nop
    ld [hl], h
    nop
    jr jr_018_68e0

jr_018_68e0:
    add hl, de
    nop
    ld l, $00
    adc a
    nop
    rst $00
    nop
    ret


    nop
    db $e4
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr jr_018_68f2

jr_018_68f2:
    ld [hl], h
    nop
    pop af
    nop
    db $e3
    nop
    sub e
    nop
    daa
    nop
    add a
    nop
    ld c, $00
    ld e, h
    nop
    jr c, jr_018_6904

jr_018_6904:
    cp b
    nop
    ld [hl], d
    nop
    pop af
    nop
    db $e3
    nop
    adc e
    nop
    ld b, $00
    ld a, [hl-]
    nop
    inc e
    nop
    dec e
    nop
    ld c, $00
    adc a
    nop
    rst $00
    nop
    pop de
    nop
    ld h, b
    nop
    ld b, $00
    adc e
    nop
    db $e3
    nop
    pop af
    nop
    ld [hl], d
    nop
    cp b
    nop
    jr c, jr_018_692e

jr_018_692e:
    ld e, h
    nop
    ld h, b
    nop
    pop de
    nop
    rst $00
    nop
    adc a
    nop
    ld c, $00
    dec e
    nop
    inc e
    nop
    ld a, [hl-]
    nop
    ccf
    cp a
    ld b, d
    ld a, a
    sbc h
    rst $20
    cp d
    call $dcb3
    or [hl]
    ret c

    or [hl]
    ret c

    sbc e
    db $ed
    db $fc
    db $fd
    jp nz, $b9fe

    rst $20
    sbc l
    di
    ld e, l
    or e
    db $dd
    inc sp
    ld e, l
    inc sp
    cp c
    rst $20
    ccf
    cp a
    ld b, e
    ld a, a
    sbc l
    rst $20
    cp b
    rst $08
    cp c
    adc $bb
    call z, $ccba
    sbc l
    rst $20
    ld a, h
    db $fd
    ld [hli], a
    cp $19
    rst $30
    ld e, l
    or e
    call Call_018_6d3b
    dec de
    ld l, l
    dec de
    reti


    or a
    ccf
    cp a
    ld b, b
    ld a, a
    sbc a
    pop hl
    cp [hl]
    jp $c7bc


    cp b
    rst $08
    cp c
    adc $9d
    rst $20
    db $fc
    db $fd
    ld [bc], a
    cp $f9
    rst $00
    cp l
    db $e3
    dec e
    di
    sbc l
    ld [hl], e
    dec e
    ld [hl], e
    cp c
    rst $20
    ccf
    cp a
    ld b, c
    ld a, a
    sbc a
    db $e3
    cp l
    rst $00
    cp b
    rst $08
    cp c
    adc $b8
    adc $9d
    rst $20
    db $fc
    db $fd
    add d
    cp $79
    rst $00
    dec a
    db $e3
    sbc l
    ld [hl], e
    db $dd
    inc sp
    ld e, l
    inc sp
    cp c
    rst $20
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    nop
    rst $38
    ld [de], a
    ld l, l
    ld b, l
    or d
    cp d
    ld b, l
    call c, $ff02
    nop
    rst $38
    nop
    ld a, h
    add e
    nop
    rst $38
    inc a
    rst $38
    ld a, d
    rst $00
    call $cd83
    add e
    cp c
    rst $00
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    ld [$00f7], sp
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
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
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    cp d

jr_018_6a61:
    rst AddAToHL
    ld e, e
    adc c
    cp h
    ld b, d
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    ld a, a
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_018_6a61

    nop
    rst $38
    sbc h
    ld a, a
    ld [hli], a
    rst $38
    ld a, [hli]
    rst $30
    inc d
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hli], a
    rst $38
    ld a, [hli]
    rst $30
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld a, b
    rst $38
    or h
    rst $08
    jp c, $b287

    rst $08
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    ld h, b
    ld e, $b2
    ld c, l
    xor l
    ld [bc], a
    db $db
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $00

jr_018_6aff:
    jr c, jr_018_6b01

jr_018_6b01:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    jr jr_018_6aff

    jr jr_018_6b01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld a, h
    rst $00
    add $83
    add e
    add c
    add e
    add c
    push bc
    add e
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hli], a
    rst $38
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp e
    ld b, h
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$518a], a
    ld [hl], l
    ld [$20d7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    or h
    rst $08
    call c, $b487
    rst $08
    ld c, b
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst JumpTable
    nop
    rst JumpTable
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst JumpTable
    nop
    rst JumpTable
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc h
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst JumpTable
    nop
    rst JumpTable
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $08
    nop
    add hl, sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    nop
    rst $08
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    cp $00  ; and a / or a
    cp $00  ; and a / or a
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    sbc h
    nop
    sbc h
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00  ; and a / or a
    cp $00  ; and a / or a
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00  ; and a / or a
    cp $00  ; and a / or a
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    ccf
    ld b, d
    ld a, a
    sbc h
    rst $20
    cp d
    call $dcb3
    or [hl]
    ret c

    or [hl]
    ret c

    sbc e
    db $ed
    db $fc
    db $fc
    jp nz, $b9fe

    rst $20
    sbc l
    di
    ld e, l
    or e
    db $dd
    inc sp
    ld e, l
    inc sp
    cp c
    rst $20
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra

Call_018_6d3b:
    ldh [rP1], a
    rst $38
    nop
    rst $38
    rst $20
    nop
    rst $38
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    add e
    nop
    inc bc
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    rlca
    nop
    add a
    nop
    add e
    nop
    nop
    rst $38
    inc a
    rst $38
    ld a, d
    rst $00
    call $cd83
    add e
    cp c
    rst $00
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    ld [$00f7], sp
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    ccf

jr_018_6db1:
    ccf
    ld b, e
    ld a, a
    sbc l
    rst $20
    cp b
    rst $08
    cp c
    adc $bb
    call z, $ccba
    sbc l
    rst $20
    ld a, h
    db $fc
    ld [hli], a
    cp $19
    rst $30
    ld e, l
    or e
    call Call_018_6d3b
    dec de
    ld l, l
    dec de
    reti


    or a
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $f1
    pop af
    ld c, $00
    rst $38
    nop
    rst $38
    jr c, jr_018_6db1

    rst $00
    jr c, jr_018_6ded

jr_018_6ded:
    rst $38
    nop
    rst $38
    nop
    nop
    pop bc
    nop
    rst $20
    nop
    rst $38
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    inc c
    nop
    inc e
    nop
    jr jr_018_6e08

jr_018_6e08:
    jr jr_018_6e0a

jr_018_6e0a:
    inc e
    nop
    ld e, $00
    ld c, $00
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    ld a, a
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    sbc h
    ld a, a
    ld [hli], a
    rst $38
    ld a, [hli]
    rst $30
    inc d
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hli], a
    rst $38
    ld a, [hli]
    rst $30
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld a, b
    rst $38
    or h
    rst $08
    jp c, $b287

    rst $08
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ccf
    ld b, b
    ld a, a
    sbc a
    pop hl
    cp [hl]
    jp $c7bc


    cp b
    rst $08
    cp c
    adc $9d
    rst $20
    db $fc
    db $fc
    ld [bc], a
    cp $f9
    rst $00
    cp l
    db $e3
    dec e
    di
    sbc l
    ld [hl], e
    dec e
    ld [hl], e
    cp c
    rst $20
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, @-$37

    rst $00
    jr c, jr_018_6e95

jr_018_6e95:
    rst $38
    nop
    rst $38
    ld c, $f1
    pop af
    ld c, $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    rst $20
    nop
    rst $38
    nop
    ld a, h
    nop
    nop
    nop
    jr c, jr_018_6eb2

jr_018_6eb2:
    jr nc, jr_018_6eb4

jr_018_6eb4:
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    jr c, jr_018_6ec0

jr_018_6ec0:
    nop

jr_018_6ec1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    jr @-$17

    jr jr_018_6ec1

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld a, d
    rst $00
    call $cd83
    add e
    cp c
    rst $00
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hli], a
    rst $38
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ccf
    ld b, c
    ld a, a
    sbc a
    db $e3
    cp l
    rst $00
    cp b
    rst $08
    cp c
    adc $b8
    adc $9d
    rst $20
    db $fc
    db $fc
    add d
    cp $79
    rst $00
    dec a
    db $e3
    sbc l
    ld [hl], e
    db $dd
    inc sp
    ld e, l
    inc sp
    cp c
    rst $20
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add e
    ld a, h
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    rst $20
    nop
    rst $38
    nop
    ldh [rP1], a
    ret nz

    nop
    pop bc
    nop
    add c
    nop
    add c
    nop
    pop bc
    nop
    pop hl
    nop
    ldh [rP1], a
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    or h
    rst $08
    call c, $b487
    rst $08
    ld c, b
    rst $38
    nop
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15

jr_018_6fc8:
    rst $28
    cp l
    cp l
    rst $38

jr_018_6fcc:
    ld [$42ff], a
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    cp e
    ld b, h
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$00bd], a
    ld h, [hl]
    jr jr_018_6fc8

    inc a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    jp Jump_018_663c


    jr jr_018_6fcc

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $28
    ld l, h
    rst $28
    ld l, h
    rst $38
    ld a, h
    rst $38
    nop
    add c
    nop
    inc a
    nop
    ld h, [hl]
    jr @+$44

    inc a
    ld b, d
    inc a
    ld h, [hl]
    jr @+$3e

    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld l, h
    rst $28
    ld l, h
    rst $28
    ld l, h
    rst $38
    ld a, h
    rst $38
    nop
    add c
    nop
    nop
    nop
    jr jr_018_7046

jr_018_7046:
    inc h
    jr jr_018_706d

    jr jr_018_7063

    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr z, jr_018_7046

    ld l, h
    rst $28
    ld l, h
    rst $00
    ld l, h
    rst $38
    ld a, h
    rst $38
    nop
    add c
    nop
    nop

jr_018_7063:
    nop

jr_018_7064:
    nop
    nop

jr_018_7066:
    jr jr_018_7068

jr_018_7068:
    jr jr_018_706a

jr_018_706a:
    nop
    nop
    nop

jr_018_706d:
    nop
    add c
    nop
    rst $38
    db $10
    rst $28
    jr z, jr_018_7064

    jr z, jr_018_7066

    ld l, h
    rst $00
    ld l, h
    rst $28
    ld b, h
    rst $38
    ld a, h
    rst $38
    nop
    inc h
    ei
    ld [hl-], a
    db $ed
    xor b
    ld b, l
    cp e
    nop
    ld d, h
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    xor e
    nop
    ld a, [c]
    sbc [hl]
    ld a, [c]
    sbc [hl]
    ld [$c6be], a
    cp $44
    ld a, h
    jr z, jr_018_70d4

    db $10
    stop
    nop
    ld h, d
    db $fd
    ld b, b
    rst $38
    ld d, h
    xor e
    xor $01
    sbc e
    nop
    nop
    nop
    nop
    nop
    sub e
    nop
    or d
    sbc [hl]
    or d
    sbc [hl]
    ld [$c6be], a
    cp $44
    ld a, h
    jr z, jr_018_70f4

    db $10
    stop
    nop
    nop
    rst $38
    ld c, d
    or l
    rst $38
    nop
    or l
    nop
    ld [de], a
    nop
    nop
    nop
    ld b, b
    nop
    xor c
    nop
    ld a, [c]
    sub [hl]
    ld a, [c]
    sbc [hl]

jr_018_70d4:
    ld a, [$e6ae]
    sbc $44
    ld a, h
    jr z, jr_018_7114

    db $10
    stop
    nop
    ld e, a
    and b
    ld a, a
    add b
    cp $00  ; and a / or a
    ld d, l
    nop
    ld [$8000], sp
    nop
    ld [de], a
    nop
    and c
    nop
    ld a, [c]
    sbc d
    ld a, [c]
    sbc d

jr_018_70f4:
    ld [$c6be], a
    cp $4c
    ld [hl], h
    jr c, jr_018_7124

    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_018_712e

    ld a, h
    ld b, h
    cp $c6
    ld a, [$f2ae]
    sbc [hl]
    ld a, [c]
    sbc [hl]
    ld a, [c]
    sbc [hl]
    ld a, [c]
    sbc [hl]

jr_018_7114:
    ld [$c6be], a
    cp $44
    ld a, h
    jr z, jr_018_7154

    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10

jr_018_7124:
    jr z, jr_018_714e

    ld c, h
    ld b, h
    sbc $c6
    cp d
    xor [hl]
    sub d
    sbc [hl]

jr_018_712e:
    or d
    sbc [hl]
    or d
    sbc [hl]
    or d
    sbc [hl]
    ld [$c6be], a
    cp $44
    ld a, h
    jr z, jr_018_7174

    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_018_716e

    ld a, h
    ld b, h
    cp $c6
    cp $aa
    ld a, [c]
    sub [hl]

jr_018_714e:
    ld a, [c]
    sbc [hl]
    ld a, [c]
    sub [hl]
    ld a, [c]
    sbc [hl]

jr_018_7154:
    ld a, [$e6ae]
    sbc $44
    ld a, h
    jr z, jr_018_7194

    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_018_718e

    ld a, h
    ld b, h
    cp $c6
    ld a, [$f2ae]
    sbc [hl]

jr_018_716e:
    ld a, [c]
    sbc [hl]
    ld a, [c]
    sbc d
    ld a, [c]
    sbc d

jr_018_7174:
    ld [$c6be], a
    cp $4c
    ld [hl], h
    jr c, jr_018_71a4

    db $10
    stop
    nop
    nop
    rst $38
    inc a
    rst $38
    ld a, d
    rst $00
    call $cd83
    add e
    cp c
    rst $00
    ld b, d
    rst $38

jr_018_718e:
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]

jr_018_7194:
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $e3
    nop

jr_018_71a4:
    add c
    inc e
    add c
    inc e
    add c
    inc e
    add c
    ld h, d
    db $e3
    nop
    db $e3
    inc e
    rst $00
    nop
    inc bc
    jr c, @+$03

    jr c, @+$03

    jr c, @+$03

    call nz, $02c5
    rst $00
    jr c, @+$01

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    ld [$00f7], sp
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    nop
    rst $38
    ld [de], a
    ld l, l
    ld b, l
    or d
    cp d
    ld b, l
    call c, $ff02
    nop
    rst $38
    nop
    ld a, h
    add e
    add hl, bc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    sub b
    nop
    call z, $f700
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    ld bc, $0c00
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$22
    ret nz

    ret nz

    nop
    jr @-$1e

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rrca
    ld b, h
    inc bc
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

jr_018_7271:
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    ld a, a
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_018_7271

    nop
    rst $38
    sbc h
    ld a, a
    ld [hli], a
    rst $38
    ld a, [hli]
    rst $30
    inc d
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    rst $00
    nop
    inc bc
    jr c, @+$03

    jr c, @+$03

    jr c, @+$03

    call nz, $02c5
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    adc a
    nop
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    adc h
    adc a
    nop
    adc a
    ld [hl], b
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hli], a
    rst $38
    ld a, [hli]
    rst $30
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld a, b
    rst $38
    or h
    rst $08
    jp c, $b287

    rst $08
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    cp d
    rst AddAToHL
    ld e, e
    adc c
    cp h
    ld b, d
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00  ; and a / or a
    ldh [rP1], a
    inc bc
    nop
    daa
    nop
    rst $38
    nop
    rst $38
    nop

jr_018_7324:
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    adc h
    nop
    ld bc, $0c00
    inc bc
    ldh a, [rIF]
    inc b
    ld hl, sp+$10
    ldh [$09], a
    nop
    dec b
    nop
    sbc h
    nop
    ret nz

    nop
    jr jr_018_7324

    rlca
    ld hl, sp+$40
    ccf
    ld [$8007], sp
    nop
    or d
    nop
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
    nop
    nop
    nop
    nop
    nop

Jump_018_7373:
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
    nop

jr_018_737f:
    nop
    nop

jr_018_7381:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr @+$01

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    jr jr_018_737f

    jr jr_018_7381

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    adc a
    nop
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    ld [hl], b
    inc bc
    adc h
    adc a
    nop
    adc a
    ld [hl], b
    rst $00
    nop
    add c
    jr c, @+$03

    jr c, @+$03

    jr c, jr_018_73ba

    ld b, [hl]

jr_018_73ba:
    ld b, a
    add b
    rst $00
    jr c, @+$01

    nop
    jr c, @+$01

    ld a, h
    rst $00
    add $83
    add e
    add c
    add e
    add c
    push bc
    add e
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld [hli], a
    rst $38
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    ld h, b
    ld e, $b2
    ld c, l
    xor l
    ld [bc], a
    db $db
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    jr jr_018_741c

jr_018_741c:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_018_7422:
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    ret nz

    nop
    or b
    nop
    ld e, h
    nop
    rst $38
    nop
    inc c
    inc bc
    ld [hl], d
    inc c
    db $10
    ldh [rTIMA], a
    nop
    ld sp, $fc00
    nop
    rst $28
    nop
    rst $38
    nop
    jr jr_018_7422

    daa
    jr jr_018_744d

    rlca
    and b
    nop
    sub $00
    jr c, jr_018_744c

jr_018_744c:
    rst JumpTable

jr_018_744d:
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    rst $00
    nop
    add c
    jr c, @+$03

    jr c, @+$03

    jr c, jr_018_74aa

    ld b, [hl]

jr_018_74aa:
    ld b, a
    add b
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    db $e3
    nop
    add c
    inc e
    add c
    inc e
    add c
    inc e
    add c
    ld h, d
    db $e3
    nop
    db $e3
    inc e
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $30
    nop
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    or h
    rst $08
    call c, $b487
    rst $08
    ld c, b
    rst $38
    nop
    rst $38
    cp e
    ld b, h
    xor $15
    rst $28
    cp l
    cp l
    rst $38
    ld [$42ff], a
    rst $38
    inc b
    ei
    dec d
    ld [$518a], a
    ld [hl], l
    ld [$20d7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f8
    nop
    ldh [rP1], a
    ld [bc], a
    nop
    inc e
    nop
    dec de
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop

jr_018_7522:
    rlca
    nop
    ld b, b
    nop
    ld h, b
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    ld [bc], a
    db $fc
    ld [$01f0], sp
    nop
    inc l
    nop
    rst $38
    nop
    jr jr_018_7522

    rlca
    ld hl, sp+$00
    rst $38
    jr nz, jr_018_7567

    ld [$a007], sp
    nop
    inc a
    nop
    rst $38
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
    nop
    nop

jr_018_7567:
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
    nop
    nop
    nop
    rst $38
    rst $38
    cp l
    ld a, [hl]
    set 6, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    nop
    jp $1800


    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    ld hl, sp-$11
    ldh a, [$dc]
    ldh [hFFD8], a
    ldh [hFFD8], a
    ldh [hFFD8], a
    ldh [$ec], a
    ldh a, [$f7]
    ld hl, sp-$21
    ccf
    rst $28
    rra
    ld [hl], a
    rrca
    scf
    rrca
    scf
    rrca
    scf
    rrca
    ld l, a
    rra
    rst JumpTable
    ccf
    rst $38
    rst $38
    sbc b
    add a
    and a
    sbc a
    rst JumpTable
    cp a
    rst JumpTable
    cp a
    rst JumpTable
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    sbc a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    pop af
    ld l, $ce
    ld sp, $ff00
    nop
    rst $38

jr_018_760a:
    ldh a, [rIF]
    ccf
    ret nz

    ld e, [hl]
    and l
    ld hl, sp+$07
    rrca
    pop af
    ld bc, $00fe
    rst $38
    ld [hl], b
    adc a
    rst $38
    db $10
    add e
    ld a, h
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_76a5

    inc a
    cp a
    ld c, b
    sbc a
    ld h, d
    add [hl]
    ld a, e
    ld b, a
    cp b
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
    add e
    ld a, h
    ld a, [hl]
    add c
    inc [hl]
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_760a

    ld h, h
    cp $01
    ld a, h
    add e
    nop
    nop
    inc b
    nop
    ld hl, $1000
    db $10
    ld [hl], $06
    rst $38
    nop
    ld a, [hl]
    add c
    inc [hl]
    rlc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, a
    sbc a
    ld a, [c]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    ldh a, [rP1]
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3

jr_018_76a5:
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$0d
    db $fc
    ld hl, sp-$01
    ccf
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $20
    sbc a
    rst JumpTable
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_76fa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $31
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ccf
    ret nz

    ld e, [hl]
    and l
    nop
    rst $38
    pop af
    ld l, $01
    cp $00  ; and a / or a
    rst $38
    ld [hl], b
    adc a
    rst $38
    db $10
    add e
    ld a, h
    nop
    rst $38
    ld hl, sp+$07
    rrca
    pop af
    nop
    nop
    inc b
    nop
    ld hl, $1000
    db $10
    ld [hl], $06
    rst $38
    nop
    ld a, [hl]
    add c
    inc [hl]
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_76fa

    ld h, h
    cp $01
    ld a, h
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_77c5

    ld l, $5e
    and l
    rrca
    ldh a, [$fc]
    inc bc
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
    add e
    ld a, h
    ld a, [hl]
    add c
    inc [hl]
    rlc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $db
    rst $20
    cp h
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $3c00


    nop
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp a

jr_018_77c5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_77fa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ccf
    ret nz

    ld e, [hl]
    and l
    nop
    rst $38
    pop af
    ld l, $ce
    ld sp, $ff00
    ld [hl], b
    adc a
    rst $38
    db $10
    add e
    ld a, h
    nop
    rst $38
    ld hl, sp+$07

jr_018_781a:
    rrca
    pop af
    ld bc, $00fe
    rst $38
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
    add e
    ld a, h
    ld a, [hl]
    add c
    inc [hl]
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_77fa

    ld h, h
    cp $01
    ld a, h
    add e
    nop
    nop
    inc b
    nop
    ld hl, $1000
    db $10
    ld [hl], $06
    rst $38
    nop
    ld a, [hl]
    add c
    inc [hl]
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_781a

    ld h, h
    cp $01
    ld a, h
    add e
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
    rst $38
    rst $38
    or $f9
    cpl
    rst JumpTable
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    nop
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$0d
    db $fc
    ld hl, sp-$01
    ccf
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $20
    sbc a
    rst JumpTable
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_78ea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_018_78ff:
    rst $38
    ccf
    ret nz

    ld e, [hl]
    and l
    nop
    rst $38
    pop af
    ld l, $ce
    ld sp, $ff00
    nop
    rst $38
    ldh a, [rIF]
    add e
    ld a, h
    nop
    rst $38
    ld hl, sp+$07
    rrca
    pop af
    ld bc, $00fe
    rst $38
    ld [hl], b
    adc a
    rst $38
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr jr_018_78ea

    ld h, h
    cp $01
    ld a, h
    add e
    nop
    nop
    inc b
    nop
    ld hl, $1000
    db $10
    ld [hl], $06
    rst $38
    nop
    ld a, [hl]
    add c
    inc [hl]
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    ld a, h
    ld a, [hl]
    add c
    inc [hl]
    rlc b
    nop
    nop
    nop
    inc a
    jr jr_018_79d5

    inc a
    cp a
    ld c, b
    sbc a
    ld h, d
    add [hl]
    ld a, e
    ld b, a
    cp b
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
    ld hl, $00ff
    ld bc, $aec0
    ld d, c
    ld d, h
    xor e
    rlca
    db $10
    ld [$01fe], sp
    db $fd

jr_018_798f:
    ld [bc], a
    inc bc
    jr nz, jr_018_798f

    inc bc
    db $fc
    nop
    inc bc
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    nop
    rrca
    cp d
    ld b, a
    add hl, de
    rst $20
    ld a, [bc]
    rst $30
    add a
    nop
    ld a, a
    ld c, e
    cp a
    add [hl]
    ld a, [hl]
    dec bc
    rst $38
    sub [hl]
    nop
    ld a, [hl]
    rrca
    rst $38
    ld d, $fe
    ld l, $fe
    ld e, l
    nop
    db $fd
    cp [hl]
    cp $7c
    db $fc
    cp [hl]
    cp $7f
    nop
    rst $38
    ld a, [$f4fa]
    db $f4
    add sp, -$18
    nop
    add b
    nop
    ld d, b
    ld bc, $0201
    ld b, $05
    ld a, [bc]
    dec c

jr_018_79d5:
    nop
    inc b
    dec bc
    inc c
    inc bc
    jr @+$19

    ld [$0817], sp
    ld bc, $311f
    cpl
    jr jr_018_7a05

    dec b
    ld b, $2f
    nop
    jr nc, @-$0e

    adc a
    ret nz

    ccf
    nop
    rst $38
    rlca
    ld bc, $1fff
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    jr nc, jr_018_79fc

jr_018_79fc:
    inc bc
    inc bc
    ld [$130f], sp
    rra
    cpl
    ccf
    inc bc

jr_018_7a05:
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    cp a
    rst $38
    ld bc, $0b20
    stop
    cpl
    ccf
    inc de
    rra
    ld [$030f], sp
    inc bc
    nop
    and d
    ld e, l
    ld [bc], a
    db $fd
    nop
    rst $38

jr_018_7a1f:
    ld [$04ff], sp
    ld d, h
    rst $38
    ld l, $ff
    ld a, [hl]
    inc sp
    jr z, jr_018_7a1f

    push af
    ld [$aaaa], sp
    ld d, b
    ld d, b
    ld e, c
    jr nz, jr_018_7a44

    rst $38
    xor c
    ld [$5cff], sp
    rst $38
    cp $15
    ld [$fefe], sp
    push af
    nop
    push af
    ld [$d0ea], a

jr_018_7a44:
    ret nc

    and b
    and b
    add b
    and b
    nop
    ld [$0040], sp
    jr jr_018_7a4f

jr_018_7a4f:
    nop
    ldh a, [$f0]
    xor b
    ld d, b
    xor b
    inc de
    db $10
    ret nz

    nop
    ld [$6060], sp
    jr nz, jr_018_7a7e

    dec b
    db $10
    db $10
    ld [$0408], sp
    nop
    ld [$0002], sp
    ld [$0120], sp
    ld bc, $1041
    inc bc
    inc bc
    dec b
    ld b, $07
    ld b, b
    dec b
    ld bc, $0510
    ld b, $03

jr_018_7a7a:
    inc bc
    nop
    nop
    ld [bc], a

jr_018_7a7e:
    db $fc
    db $fc
    db $f4
    adc h
    db $fc
    or h
    inc bc
    ld [$00bc], sp
    ldh [$a0], a
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    ld [$20e0], sp
    ldh [$e0], a
    inc bc
    ld [$a0a0], sp
    ld h, b
    add c
    rrca
    db $10
    ld a, [hl]
    ld a, [hl]
    ld a, d
    ld b, [hl]
    ld a, [hl]
    ld e, d
    inc bc
    ld [$5604], sp
    db $76
    ld e, d
    ld a, [hl]
    ld a, [hl]
    cpl
    db $10
    db $fc
    add h
    nop
    call c, $f8bc
    adc b
    call c, $fcbc
    add h
    nop
    db $fc
    db $fc
    nop
    nop
    ld e, $1e
    dec l
    inc sp
    jr nz, jr_018_7b02

    dec l
    ld bc, $2d10
    inc sp
    ld e, $1e
    nop

jr_018_7acb:
    nop
    nop
    rra
    rra
    dec de
    ld d, $1d
    ld [de], a
    rra
    ld bc, $1f10
    inc d
    rra
    ld d, $1f
    rra
    rrca
    db $10
    inc a
    ld e, $11
    add hl, bc
    ld [$0801], sp
    rlca
    ld [$080f], sp

jr_018_7ae9:
    add a
    add a
    ld [$8487], sp
    add [hl]
    add l
    inc bc
    jr nz, jr_018_7a7a

    add a
    nop
    nop
    nop
    rlca
    rlca
    add a
    add l
    ld b, a
    push bc
    rst $00
    ld b, $45
    ld b, a
    push bc

jr_018_7b02:
    add l
    add [hl]
    adc a
    db $10
    ld a, e
    jr jr_018_7ae9

    jr nz, jr_018_7acb

    ld b, b
    rlca
    jr nz, jr_018_7b0f

jr_018_7b0f:
    nop
    pop hl
    pop hl
    ld [c], a
    db $10
    and e
    db $e3
    and d
    ld bc, $a210
    ld h, e
    pop bc
    pop bc
    adc b
    xor a
    ld c, b
    xor h
    db $ec
    or h
    ld a, a
    db $10
    pop af
    pop af
    pop af
    inc b
    ld de, $f1f1
    add c
    add c
    rlca
    jr nz, jr_018_7b31

jr_018_7b31:
    nop
    nop
    ld c, $0e
    dec d
    dec de
    rra
    ld de, $352e
    nop
    ccf
    jr nz, jr_018_7b74

    ld l, $3b
    dec sp
    nop
    nop
    nop
    ld hl, sp-$08
    ld hl, sp+$08
    cp b
    ld a, b
    ldh a, [rNR10]
    inc bc
    cp b
    ld a, b
    ld hl, sp+$08
    ld hl, sp-$08
    ld l, a
    db $10
    ei
    db $10
    ld a, $87
    add l
    ld bc, $7f08
    jr jr_018_7baf

    ld [hl], b
    nop
    jr nc, @+$81

    jr nc, jr_018_7ba4

    nop
    ld a, $5e
    ld h, d
    ld a, [hl]
    ld e, [hl]
    ld e, d

jr_018_7b6d:
    ld h, [hl]
    ld a, [hl]
    inc b
    ld a, d
    ld a, d
    ld b, [hl]
    ld a, h

jr_018_7b74:
    ld a, h
    dec de
    jr nz, jr_018_7ba8

    nop
    nop
    ld bc, $000e
    rlca
    nop
    inc bc
    nop
    ld bc, $2018
    rra
    rra
    inc hl
    ld [$8000], sp
    ld [bc], a
    ld bc, $0009
    add [hl]
    rlca
    ld hl, sp+$07
    ld hl, sp+$01
    cp $e0
    jr nc, jr_018_7bb7

    inc b
    push de
    ld [$5000], sp
    ld b, b
    ld a, $38
    ret nz

    inc b
    ldh a, [rP1]

jr_018_7ba4:
    ldh [rP1], a
    add b
    dec c

jr_018_7ba8:
    jr @-$7e

    nop
    rlca
    ld [$90f0], sp

jr_018_7baf:
    ld h, b
    jr nz, @+$23

    ld e, b
    ld e, a
    jr nc, @+$5f

    db $10

jr_018_7bb7:
    ret nz

    inc a
    ld l, b
    ld [hl], l
    ld a, [bc]
    nop
    inc bc
    ld bc, $0306
    inc c
    inc c
    rlca
    sbc b
    rlca
    ld hl, sp-$36
    ld a, [bc]
    ld e, a
    ld l, b
    ld [$1ef0], sp
    ld h, b
    add b
    ret nz

    ld d, e
    ld [$205b], sp
    ld e, a
    ldh a, [rWX]
    db $10
    inc bc
    ld [$0e04], sp
    nop
    ld [$78bf], sp
    ld bc, $0800
    jr jr_018_7b6d

    inc bc
    db $fc
    cp a
    and b
    nop
    jr @+$01

    ld a, b
    add b
    ldh [$c1], a
    jr nz, @+$61

    sub b
    nop
    ld d, b
    ld [hl], e
    ld [hl], e
    xor e
    jp c, Jump_018_42fb

    xor d
    ld bc, $ab10
    jp c, Jump_018_7373

    rra
    add b
    adc $06
    adc $ae
    ld l, d
    xor $aa
    inc bc
    ld [$0805], sp
    xor $40
    xor $1f
    add b
    ld a, c
    ld a, c
    cp l
    push bc
    db $fd
    cp l
    nop
    db $fd
    and l
    db $fd
    or l
    or l
    call $f9f9
    add b
    rra
    add b
    rst JumpTable
    rst JumpTable
    db $db
    ld d, [hl]
    db $dd
    ld d, d
    rst JumpTable
    nop
    ld d, b
    rst JumpTable
    ld d, h
    rst JumpTable
    ld d, [hl]
    rst JumpTable
    rst JumpTable
    nop
    nop
    nop
    sbc h
    sbc h
    xor d
    or [hl]
    cp [hl]
    and d
    cp [hl]
    ld c, c
    xor d
    inc bc
    db $10
    or [hl]
    or [hl]
    and h
    dec de
    inc bc
    inc bc
    ei
    ld a, [bc]
    inc [hl]
    inc bc
    ld [bc], a
    rlca
    ld [$225f], sp
    and b
    ld bc, $f810
    cp b
    ld hl, $88f8
    rrca
    ld [de], a
    add b
    add b
    ret nz

    ld b, b
    di
    ld a, [bc]
    ld bc, $e060
    and b
    ldh a, [$50]
    ldh a, [$f0]
    ld e, a
    add b
    nop
    ld e, $1e
    ld l, $32
    ld a, $2e
    ld a, [hli]
    ld [hl], $02
    ld a, $3a
    ld a, [hl-]
    ld h, $3c
    inc a
    rst JumpTable
    ret nc

    xor d
    db $10
    db $db
    ld [hl], c
    ld [hl], c
    rra
    add b
    rst $28
    rst $28
    db $ed

jr_018_7c89:
    xor e
    nop
    xor $a9
    rst $28
    xor b
    rst $28
    xor d
    xor a
    ld l, e
    jr nz, @-$2f

    rst $08
    rra
    add b
    call c, $dedc
    ld d, d
    db $db
    nop
    ld d, l
    rst JumpTable
    ld d, l
    db $db
    ld d, l
    sbc $52
    call c, $dc61
    ld l, a
    add d
    xor a
    ld a, [bc]
    inc b
    rlca
    rlca
    ld bc, $2800
    nop
    nop
    nop
    ccf
    ccf
    dec a
    inc hl
    ccf
    dec l
    add d
    inc bc
    ld [$382f], sp
    jr z, jr_018_7cfa

    jr c, @+$01

    ld a, [hli]
    ld [hl], c
    jr nc, jr_018_7c89

    ld b, c
    ld bc, $1f18
    dec bc
    rra
    rra
    rra
    db $10
    ld a, [bc]
    dec de
    rla
    rra
    ld de, $0803
    db $10
    ld l, a
    inc de
    sbc b
    inc d
    sbc b
    ld hl, sp+$68
    ld bc, $0808
    dec b
    db $10
    sbc b
    sbc b
    add b
    ld a, a
    inc de
    adc e
    adc h
    adc a
    adc e
    ld c, $0a
    adc a
    db $10
    adc e
    adc e
    adc h
    rst $38
    ld [de], a
    jr c, jr_018_7d31

    ld d, h

jr_018_7cfa:
    ld l, h
    nop
    ld a, h
    ld b, h
    cp d
    sub $fe
    add d
    sub $ba
    add b
    ld a, a
    ld de, $c3c3
    jp $c342


    jp Jump_018_6001


    ld bc, $2007

jr_018_7d12:
    ld l, a
    db $10
    scf
    dec l
    dec sp
    dec h
    ccf
    inc d
    ld hl, $293f
    db $e3
    dec bc
    ccf
    ccf
    ld de, $21e1
    nop
    pop hl
    ld h, c
    jp nz, $e343

    ld h, d
    db $e3
    ld [hli], a
    jr nz, jr_018_7d12

    db $e3
    ld l, a

jr_018_7d31:
    jr jr_018_7d49

    dec de
    dec d
    rra
    inc de
    db $10
    dec de
    dec d
    dec e
    rst $28
    dec de
    ldh [$e0], a
    ld d, b
    or b
    nop
    ldh a, [rNR10]
    add sp, $58
    ld hl, sp+$08
    ld e, b

jr_018_7d49:
    add sp, $20
    cp b
    cp b
    ld l, a
    jr nc, jr_018_7d5b

    inc c
    adc a
    adc a
    adc a
    rla
    adc b
    adc a
    adc a
    ld a, a
    ld b, c
    db $fc

jr_018_7d5b:
    ccf
    inc l
    xor b
    inc c
    ld a, a
    add hl, bc
    adc b
    ld [bc], a
    db $10
    ld b, b
    ret nz

    add b
    or [hl]
    ld a, [de]
    ld a, e
    ld a, e
    ei
    ld e, $aa
    di
    di
    ld h, b
    dec h
    or a
    ld de, $1801
    add e
    ld c, d
    rst $30
    nop
    rst $30
    rst $30
    inc d
    rst AddAToHL
    or l
    rst $20
    and l
    rst $20
    db $10
    and l
    rst $00

jr_018_7d85:
    ld b, h
    scf
    inc d
    rst $30
    push af
    rst $30
    inc d
    jr nz, jr_018_7d85

    rst $30
    rra
    ld b, b
    xor $ee
    xor $2a
    xor $00

jr_018_7d97:
    ld [$0a0e], a
    adc $ca
    adc $4a
    adc $00
    jp z, $0a0e

    rst $28
    db $eb
    rst $28
    jr z, jr_018_7d97

    ld b, b
    rst $28
    rra
    ld b, b
    inc a
    inc a
    ld a, [hl-]
    ld h, $3d
    dec hl
    ld b, b
    dec sp
    or e
    inc e
    ccf
    dec l
    dec sp

jr_018_7db9:
    dec l
    cp l
    xor e
    ld [$a6ba], sp
    cp h
    cp h
    rra
    ld b, b
    inc e
    inc e
    inc e
    db $10
    inc d
    ld a, [hli]
    ld [hl], $f1
    add hl, bc
    ld [hli], a
    ld a, $2a
    ld e, l
    nop
    ld l, e
    ld e, l
    ld h, e
    ld l, e
    ld e, l
    ld a, a
    ld e, l
    ld [hl], a
    ld b, b
    ld [hl], a
    rra
    ld b, b
    ld a, e
    ld a, e
    db $fd
    xor [hl]
    rst $30
    push af
    ld hl, sp+$45
    inc c
    ccf
    dec c
    ld c, l
    inc h
    ld c, c
    dec h
    nop
    jr nc, @-$2f

    rst $08
    xor a
    db $10
    ld l, b
    rst $28
    xor [hl]
    or c
    inc c

jr_018_7df7:
    ld [c], a
    ld b, e
    jp nz, Jump_018_4ca3

    ld h, d
    cp c
    inc d
    and e
    ld h, d
    ld c, c
    ld de, $3000
    rst $20
    rst $20
    ld [bc], a
    rst $20
    dec h
    ld [$8aed], a
    adc l
    rrca
    add hl, bc
    adc d
    nop
    sub a
    sbc d
    sub a
    sbc b
    sbc d
    sub a
    sbc a
    sub a
    jr nc, jr_018_7db9

    sbc l
    rra
    ld b, b
    pop bc
    ld de, $979f
    sbc h
    sub h
    nop
    sbc a
    sub a
    sbc a
    sub c
    ld e, a
    rst AddAToHL
    ld e, h
    call nc, $dc38
    ld d, h
    ld bc, $1908
    ld a, [bc]
    nop
    jr nc, jr_018_7df7

    cp a
    cp a
    ld bc, $bfa1
    xor a
    jr c, @+$2a

    ld a, $2e
    and c
    ld [$2e78], sp
    dec b
    ld a, [bc]
    ld bc, $0910
    ld a, [bc]
    nop

jr_018_7e4d:
    jr nc, jr_018_7e4d

    cp $fe
    add hl, de
    add d
    cp $ee
    rla
    jr z, @+$03

    ld [$2f3f], sp
    cp c
    ld hl, $1f80
    ld c, c
    xor d
    sub $ba
    cp d
    sub $7c
    ld b, h
    jr nc, @+$56

    ld l, h
    rra
    ld [hl], b
    jr jr_018_7e86

    jr jr_018_7e88

    jr jr_018_7e8a

    jr jr_018_7e8c

    jr jr_018_7e8e

    jr jr_018_7e90

    jr jr_018_7e92

    jr jr_018_7e94

    jr jr_018_7e96

    jr jr_018_7e98

    jr jr_018_7e9a

    jr jr_018_7e9c

    jr jr_018_7e9e

jr_018_7e86:
    jr jr_018_7ea0

jr_018_7e88:
    jr jr_018_7ea2

jr_018_7e8a:
    jr jr_018_7ea4

jr_018_7e8c:
    jr jr_018_7ea6

jr_018_7e8e:
    jr jr_018_7ea8

jr_018_7e90:
    jr jr_018_7eaa

jr_018_7e92:
    jr jr_018_7eac

jr_018_7e94:
    jr jr_018_7eae

jr_018_7e96:
    jr jr_018_7eb0

jr_018_7e98:
    jr jr_018_7eb2

jr_018_7e9a:
    jr jr_018_7eb4

jr_018_7e9c:
    jr jr_018_7eb6

jr_018_7e9e:
    jr jr_018_7eb8

jr_018_7ea0:
    jr jr_018_7eba

jr_018_7ea2:
    jr jr_018_7ebc

jr_018_7ea4:
    jr jr_018_7ebe

jr_018_7ea6:
    jr jr_018_7ec0

jr_018_7ea8:
    jr jr_018_7ec2

jr_018_7eaa:
    jr jr_018_7ec4

jr_018_7eac:
    jr jr_018_7ec6

jr_018_7eae:
    jr jr_018_7ec8

jr_018_7eb0:
    jr jr_018_7eca

jr_018_7eb2:
    jr jr_018_7ecc

jr_018_7eb4:
    jr jr_018_7ece

jr_018_7eb6:
    jr jr_018_7ed0

jr_018_7eb8:
    jr jr_018_7ed2

jr_018_7eba:
    jr jr_018_7ed4

jr_018_7ebc:
    jr jr_018_7ed6

jr_018_7ebe:
    jr jr_018_7ed8

jr_018_7ec0:
    jr jr_018_7eda

jr_018_7ec2:
    jr jr_018_7edc

jr_018_7ec4:
    jr jr_018_7ede

jr_018_7ec6:
    jr jr_018_7ee0

jr_018_7ec8:
    jr jr_018_7ee2

jr_018_7eca:
    jr jr_018_7ee4

jr_018_7ecc:
    jr jr_018_7ee6

jr_018_7ece:
    jr jr_018_7ee8

jr_018_7ed0:
    jr jr_018_7eea

jr_018_7ed2:
    jr jr_018_7eec

jr_018_7ed4:
    jr jr_018_7eee

jr_018_7ed6:
    jr jr_018_7ef0

jr_018_7ed8:
    jr jr_018_7ef2

jr_018_7eda:
    jr jr_018_7ef4

jr_018_7edc:
    jr jr_018_7ef6

jr_018_7ede:
    jr jr_018_7ef8

jr_018_7ee0:
    jr jr_018_7efa

jr_018_7ee2:
    jr jr_018_7efc

jr_018_7ee4:
    jr jr_018_7efe

jr_018_7ee6:
    jr jr_018_7f00

jr_018_7ee8:
    jr jr_018_7f02

jr_018_7eea:
    jr jr_018_7f04

jr_018_7eec:
    jr jr_018_7f06

jr_018_7eee:
    jr jr_018_7f08

jr_018_7ef0:
    jr jr_018_7f0a

jr_018_7ef2:
    jr jr_018_7f0c

jr_018_7ef4:
    jr jr_018_7f0e

jr_018_7ef6:
    jr jr_018_7f10

jr_018_7ef8:
    jr jr_018_7f12

jr_018_7efa:
    jr jr_018_7f14

jr_018_7efc:
    jr jr_018_7f16

jr_018_7efe:
    jr jr_018_7f18

jr_018_7f00:
    jr jr_018_7f1a

jr_018_7f02:
    jr jr_018_7f1c

jr_018_7f04:
    jr jr_018_7f1e

jr_018_7f06:
    jr jr_018_7f20

jr_018_7f08:
    jr jr_018_7f22

jr_018_7f0a:
    jr jr_018_7f24

jr_018_7f0c:
    jr jr_018_7f26

jr_018_7f0e:
    jr jr_018_7f28

jr_018_7f10:
    jr jr_018_7f2a

jr_018_7f12:
    jr jr_018_7f2c

jr_018_7f14:
    jr jr_018_7f2e

jr_018_7f16:
    jr jr_018_7f30

jr_018_7f18:
    jr jr_018_7f32

jr_018_7f1a:
    jr jr_018_7f34

jr_018_7f1c:
    jr jr_018_7f36

jr_018_7f1e:
    jr jr_018_7f38

jr_018_7f20:
    jr jr_018_7f3a

jr_018_7f22:
    jr jr_018_7f3c

jr_018_7f24:
    jr jr_018_7f3e

jr_018_7f26:
    jr jr_018_7f40

jr_018_7f28:
    jr jr_018_7f42

jr_018_7f2a:
    jr jr_018_7f44

jr_018_7f2c:
    jr jr_018_7f46

jr_018_7f2e:
    jr jr_018_7f48

jr_018_7f30:
    jr jr_018_7f4a

jr_018_7f32:
    jr jr_018_7f4c

jr_018_7f34:
    jr jr_018_7f4e

jr_018_7f36:
    jr jr_018_7f50

jr_018_7f38:
    jr jr_018_7f52

jr_018_7f3a:
    jr jr_018_7f54

jr_018_7f3c:
    jr jr_018_7f56

jr_018_7f3e:
    jr jr_018_7f58

jr_018_7f40:
    jr jr_018_7f5a

jr_018_7f42:
    jr jr_018_7f5c

jr_018_7f44:
    jr jr_018_7f5e

jr_018_7f46:
    jr jr_018_7f60

jr_018_7f48:
    jr jr_018_7f62

jr_018_7f4a:
    jr jr_018_7f64

jr_018_7f4c:
    jr jr_018_7f66

jr_018_7f4e:
    jr jr_018_7f68

jr_018_7f50:
    jr jr_018_7f6a

jr_018_7f52:
    jr jr_018_7f6c

jr_018_7f54:
    jr jr_018_7f6e

jr_018_7f56:
    jr jr_018_7f70

jr_018_7f58:
    jr jr_018_7f72

jr_018_7f5a:
    jr jr_018_7f74

jr_018_7f5c:
    jr jr_018_7f76

jr_018_7f5e:
    jr jr_018_7f78

jr_018_7f60:
    jr jr_018_7f7a

jr_018_7f62:
    jr jr_018_7f7c

jr_018_7f64:
    jr jr_018_7f7e

jr_018_7f66:
    jr jr_018_7f80

jr_018_7f68:
    jr jr_018_7f82

jr_018_7f6a:
    jr jr_018_7f84

jr_018_7f6c:
    jr jr_018_7f86

jr_018_7f6e:
    jr jr_018_7f88

jr_018_7f70:
    jr jr_018_7f8a

jr_018_7f72:
    jr jr_018_7f8c

jr_018_7f74:
    jr jr_018_7f8e

jr_018_7f76:
    jr jr_018_7f90

jr_018_7f78:
    jr jr_018_7f92

jr_018_7f7a:
    jr jr_018_7f94

jr_018_7f7c:
    jr jr_018_7f96

jr_018_7f7e:
    jr jr_018_7f98

jr_018_7f80:
    jr jr_018_7f9a

jr_018_7f82:
    jr jr_018_7f9c

jr_018_7f84:
    jr jr_018_7f9e

jr_018_7f86:
    jr jr_018_7fa0

jr_018_7f88:
    jr jr_018_7fa2

jr_018_7f8a:
    jr jr_018_7fa4

jr_018_7f8c:
    jr jr_018_7fa6

jr_018_7f8e:
    jr jr_018_7fa8

jr_018_7f90:
    jr jr_018_7faa

jr_018_7f92:
    jr jr_018_7fac

jr_018_7f94:
    jr jr_018_7fae

jr_018_7f96:
    jr jr_018_7fb0

jr_018_7f98:
    jr jr_018_7fb2

jr_018_7f9a:
    jr jr_018_7fb4

jr_018_7f9c:
    jr jr_018_7fb6

jr_018_7f9e:
    jr jr_018_7fb8

jr_018_7fa0:
    jr jr_018_7fba

jr_018_7fa2:
    jr jr_018_7fbc

jr_018_7fa4:
    jr jr_018_7fbe

jr_018_7fa6:
    jr jr_018_7fc0

jr_018_7fa8:
    jr jr_018_7fc2

jr_018_7faa:
    jr jr_018_7fc4

jr_018_7fac:
    jr jr_018_7fc6

jr_018_7fae:
    jr jr_018_7fc8

jr_018_7fb0:
    jr jr_018_7fca

jr_018_7fb2:
    jr jr_018_7fcc

jr_018_7fb4:
    jr jr_018_7fce

jr_018_7fb6:
    jr jr_018_7fd0

jr_018_7fb8:
    jr jr_018_7fd2

jr_018_7fba:
    jr jr_018_7fd4

jr_018_7fbc:
    jr jr_018_7fd6

jr_018_7fbe:
    jr jr_018_7fd8

jr_018_7fc0:
    jr jr_018_7fda

jr_018_7fc2:
    jr jr_018_7fdc

jr_018_7fc4:
    jr jr_018_7fde

jr_018_7fc6:
    jr jr_018_7fe0

jr_018_7fc8:
    jr jr_018_7fe2

jr_018_7fca:
    jr jr_018_7fe4

jr_018_7fcc:
    jr jr_018_7fe6

jr_018_7fce:
    jr jr_018_7fe8

jr_018_7fd0:
    jr jr_018_7fea

jr_018_7fd2:
    jr jr_018_7fec

jr_018_7fd4:
    jr jr_018_7fee

jr_018_7fd6:
    jr jr_018_7ff0

jr_018_7fd8:
    jr jr_018_7ff2

jr_018_7fda:
    jr jr_018_7ff4

jr_018_7fdc:
    jr jr_018_7ff6

jr_018_7fde:
    jr jr_018_7ff8

jr_018_7fe0:
    jr jr_018_7ffa

jr_018_7fe2:
    jr jr_018_7ffc

jr_018_7fe4:
    jr jr_018_7ffe

jr_018_7fe6:
    jr @+$1a

jr_018_7fe8:
    jr @+$1a

jr_018_7fea:
    jr @+$1a

jr_018_7fec:
    jr @+$1a

jr_018_7fee:
    jr @+$1a

jr_018_7ff0:
    jr @+$1a

jr_018_7ff2:
    jr @+$1a

jr_018_7ff4:
    jr @+$1a

jr_018_7ff6:
    jr @+$1a

jr_018_7ff8:
    jr @+$1a

jr_018_7ffa:
    jr @+$1a

jr_018_7ffc:
    jr @+$1a

jr_018_7ffe:
    jr @+$1a

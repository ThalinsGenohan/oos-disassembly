; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX

    ld c, a
    adc [hl]
    ld de, $05a5
    add hl, bc
    and c
    db $10
    ld a, $1d
    ld e, d
    ld bc, $2a7c
    ld c, d
    ld [bc], a
    inc d
    add hl, sp
    ld c, d
    ccf
    cpl
    ld h, h
    ld a, $96
    db $28, $bb
    jr c, jr_027_4022

    add hl, sp
    and c
    ld [$b359], sp
    db $fd

jr_027_4022:
    ld a, [c]
    and b
    ld b, $59
    db $fd
    and b
    dec c
    add hl, bc
    ldh a, [$2b]
    ld b, $59
    dec c
    add hl, bc
    rst $38
    ldh a, [$2b]
    ld b, $59
    dec c
    add hl, bc
    ldh a, [$2b]
    ld b, $59
    dec c
    add hl, bc
    ldh a, [$2b]

Jump_027_403f:
    ld b, $59
    adc a
    dec c
    add hl, bc
    ldh a, [$2b]
    ld b, $59
    dec c
    add hl, bc
    or e
    db $fd
    and b
    ld b, $59
    cp [hl]
    db $fd
    ld a, e
    ld a, [bc]
    rst $28
    dec sp
    ld b, $59
    dec c
    add hl, hl
    pop hl
    sbc l
    cp e
    xor a
    rst $20
    cpl
    or d
    ld a, [de]
    inc b
    sbc d
    ld a, [c]
    dec b
    dec b
    add hl, bc
    dec e
    ld e, d
    ld bc, $19a1
    dec hl
    ld d, d
    inc b
    adc a
    ld bc, $05a5
    add hl, bc
    dec e
    or $08
    or l
    and l
    ld c, $19
    call Call_027_7710
    inc c
    ld a, [bc]
    add hl, hl
    ld [$1ab3], sp
    and b
    rla
    db $fd
    add hl, hl
    ldh a, [rNR21]
    inc b
    ld a, [de]
    or a
    ld l, e
    inc a
    and l
    and l
    and b
    add d
    and l
    di
    dec de
    add hl, de
    and b
    jr jr_027_40b5

    ld a, [de]
    adc [hl]
    ld de, $a0d4
    and b
    ld b, $19
    dec e
    ld [hl], l
    inc c
    ld a, [de]
    dec e
    daa
    ld a, [c]
    cp c
    ld b, e
    db $10
    call nc, $0fe0
    or c
    sub l
    ld [$96b3], sp
    inc bc

jr_027_40b5:
    and c
    inc c
    ld d, c
    ld e, $1d
    db $f4
    xor a
    rst $20
    rlca
    or d
    ld a, [de]
    ld h, h
    ld a, $da
    ld c, a
    pop af
    and l
    and l
    or e
    and b
    ld d, $1d
    ld [hl-], a
    jr z, jr_027_413a

    rra
    or e
    jp $b301


    and b
    dec e
    ld d, $a1

jr_027_40d7:
    ld d, h
    ld [de], a
    xor h
    dec e
    or a
    jp $b301


    and b
    dec e
    adc a
    call c, $db03
    add hl, de
    ld e, $19
    sub a
    add hl, de
    dec e
    db $10
    dec e
    ld [hl], $07
    dec b
    ld l, h
    rra
    or e
    ld h, c
    cpl
    dec e
    db $10
    dec de
    db $10
    dec e
    jr jr_027_4114

    inc e
    jr jr_027_417d

    daa
    ld [hl+], a
    ld a, [de]
    db $10
    jr jr_027_4115

    adc h

jr_027_4106:
    dec e
    db $10
    db $ec
    cpl
    xor d
    ld a, [hl+]
    and b
    and b
    dec de
    ld d, h
    ld [bc], a
    jr @-$5e

    and l

jr_027_4114:
    ld a, c

jr_027_4115:
    rst JumpTable
    rra
    push af
    dec hl
    dec de
    ld a, [de]
    dec e
    cp [hl]
    db $10
    db $ec
    cpl
    dec bc
    inc d
    push af
    dec hl
    ld b, c
    jr z, jr_027_4106

    ld c, l
    or l
    or $28
    ld bc, $142c
    rst $20
    ld h, h
    ld a, $d6
    sbc a
    inc sp
    jr z, jr_027_40d7

    dec e
    sub l

jr_027_4138:
    ld a, [hl+]
    adc [hl]

jr_027_413a:
    ld de, $19db
    add hl, sp
    ld [hl], a
    inc c
    and b
    dec de
    ld a, e
    cpl
    ldh [rIF], a
    xor d
    ld a, [hl+]
    and b
    and b
    inc a
    db $10
    dec e
    ld l, h
    rra
    ldh [rIF], a
    or $1b
    ld a, [de]
    nop
    db $10
    dec e
    rst $00
    adc h
    ld h, $32
    jr jr_027_4138

    inc de
    and b
    db $10
    dec e
    ld l, h
    rra
    ldh [rIF], a
    ld hl, sp-$60
    and b
    dec de
    ld a, d
    rrca
    ld [hl], a
    inc c
    ld l, h
    rra
    xor d
    ld a, [hl+]
    add hl, sp
    inc b
    rlca
    sub [hl]
    inc l
    sbc l
    ld h, $7a
    rrca
    dec e
    and b
    and l

jr_027_417d:
    and l
    inc c
    sub $10
    ld a, e
    cpl
    add d
    cpl
    dec e
    or l
    ld bc, $3a0c
    ld b, $7d
    ld a, [de]
    dec b
    pop hl
    dec l
    ld a, d
    ld b, a
    ld l, a
    inc bc
    ld h, h
    ld a, $d6
    adc a
    inc c
    rst $30
    and c
    rst $30
    and c
    rst $30
    ld b, b
    and c
    rst $30
    and c
    rst $30
    and c
    rst $30
    db $ed
    rra
    rst $30
    nop
    and b
    rst $30
    and b
    rst $30
    and l
    rst $30
    and b
    rst $30
    db $10
    and b
    rst $30
    and b
    rst $30
    ld l, $22
    and l
    rst $30
    and b
    ld b, b
    rst $30
    and b
    rst $30
    and b
    rst $30
    and b
    ld a, h
    inc e
    or e
    nop
    rst $30

jr_027_41c7:
    and b
    rst $30
    and b
    rst $30
    and l
    rst $30
    and b
    jr nz, jr_027_41c7

    and b
    rst $30
    and l
    rst $30
    ld l, $22
    and b
    rst $30
    nop
    and b
    rst $30
    and b
    rst $30
    and b
    rst $30
    and l
    rst $30
    nop
    and b
    ld a, c
    nop
    or e
    rst $30
    and b
    rst $30
    and b
    nop
    rst $30
    and b
    rst $30
    and b
    rst $30
    and b
    rst $30
    and b
    ld [bc], a
    rst $30
    ld e, $17
    rst $30
    and b
    rst $30
    and b
    rst $30
    and b
    db $10
    rst $30
    and b
    rst $30
    and b
    ld a, h
    inc e
    or e
    rst $30
    and b
    nop
    rst $30
    and b
    rst $30
    and b
    rst $30
    and b
    rst $30
    and b
    ld [$a0f7], sp
    rst $30
    ld c, $00
    inc c
    rst $30
    and c
    rst $30
    nop
    and c
    rst $30
    and c
    rst $30
    and c
    rst $30
    and c
    rst $30
    dec bc
    db $ed

Call_027_4225:
    rrca
    ldh [rKEY1], a
    and b
    ld c, b
    ld e, a
    dec bc
    ld h, h
    ld a, $d6
    adc a
    dec e
    ld a, e
    ld a, [bc]
    ld c, l
    and c
    and c
    ld c, l
    ldh [$a1], a
    and c
    ld c, l
    and c
    dec e
    adc [hl]
    ld de, $cfe2
    pop hl
    rrca
    db $f4
    and b
    and b
    jp hl


    rra
    ld c, l
    ld b, b
    inc bc
    adc [hl]
    ld de, $9c91
    ld e, [hl]
    rra
    adc [hl]
    dec de
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    dec l
    rla
    and c
    and b
    ld a, [de]
    db $db
    add hl, bc
    rst $08
    ld [hl], a
    inc c
    ld b, c
    jr z, jr_027_4283

    ld a, [hl+]
    db $db
    add hl, bc
    and d
    and b
    dec b
    add hl, bc
    adc h
    ld h, $87
    sbc b
    inc b
    db $db
    add hl, bc
    ld [hl], a
    inc c
    db $fd
    dec e
    and b
    ld c, a
    ld l, [hl]
    ld a, [hl-]
    ld h, d
    dec e
    adc d
    rra
    db $fd
    db $fd
    dec e
    ld a, h
    ld a, [hl+]

jr_027_4283:
    pop hl
    xor l
    cp e
    ld bc, $e7af
    rst $08
    ld h, h
    ld a, $41
    add hl, hl
    db $db
    ld c, a
    ld [hl], d
    ld a, [bc]
    and l
    and l
    ld a, d
    rrca
    ld h, c
    inc e
    cp a
    ld e, $17
    sbc b
    inc b
    and h
    nop
    xor d
    ld a, [hl+]
    sbc l
    ld h, $f9
    inc bc
    xor $1a
    nop
    db $76
    xor $8a
    ccf
    ldh [rIF], a
    and c
    ld a, d
    rrca
    db $76
    ld a, [hl-]
    dec l
    rla
    and b
    call nz, $eea0
    xor d
    ld a, [hl+]
    and b
    and b
    xor $ac
    dec l
    or [hl]
    ld a, [hl+]
    xor e

jr_027_42c3:
    xor d
    ld a, [hl+]
    adc e
    ld [hl], $a5
    sub [hl]
    inc b
    xor $1a
    nop
    xor $ba
    ccf
    db $e3
    adc d
    ld b, $1a
    nop
    ldh [$e1], a
    ld [c], a
    or $1b
    sbc l
    ld h, $21
    ld a, [de]
    jr c, jr_027_42c3

    db $e4
    push hl
    rst $30
    dec bc
    adc h
    ld d, $e0
    dec a
    and $00
    ld [bc], a
    and $49
    ld c, a
    xor l
    ld h, h
    ld a, $a0
    rst $10
    adc a
    sub l
    ld a, [de]
    db $10
    db $eb
    add hl, de
    and c
    sbc h
    inc hl
    inc sp
    ld [hl], l
    ld a, [hl+]
    ld [hl], a
    rrca
    db $f4
    dec e
    ld a, e
    cpl
    ldh [rIF], a
    and l
    and b
    inc e
    db $10
    inc c
    db $db
    inc e
    push hl
    ld b, $8e
    ld de, $a0a0
    db $10
    inc e
    db $10
    inc c
    call nc, $320c
    inc b
    adc l
    inc e
    and c
    and l
    db $10
    dec a
    or d
    inc b
    db $f4
    dec [hl]
    ld [bc], a
    or [hl]
    ld a, [bc]
    adc [hl]
    ld de, $28c6
    db $f4
    dec e
    ld d, l
    adc c
    ld bc, $7df1
    daa
    ld l, l
    ld d, a
    ld a, [hl+]
    rst $30
    and l
    ld [$def7], sp
    rst $30
    ld e, $17
    ld e, b
    ld c, d
    ld d, e
    ld a, [bc]
    ld l, h
    rra
    or e
    add a
    rrca
    pop bc
    add hl, de
    ld l, $1d
    and a
    ld [$2a7c], sp
    pop hl
    xor l
    cp e
    xor a
    rst $20
    ld d, e
    sub b
    ret c

    push bc
    rlca
    and d
    and b
    sub l
    inc b
    and b
    db $fc
    ld bc, $fe95
    and c
    xor [hl]
    ld a, [bc]
    sub c
    call nz, $dab0
    ldh [$d3], a
    nop
    call nc, $dba0
    nop
    inc d
    pop bc
    push hl
    inc sp
    and c
    or c
    sub c
    and c
    sub [hl]
    rst JumpTable
    inc bc
    db $10
    ld a, [de]
    ld a, [hl-]

jr_027_4380:
    ld d, b
    ld de, $952a
    ld c, l
    dec b
    ld b, b
    push de
    ld d, b
    ret c

    db $d3

Jump_027_438b:
    ret nz

    rst JumpTable
    sub b
    db $d3
    and b
    and b
    sub d
    inc de
    ld d, e
    or [hl]
    ld a, [bc]
    add b
    rlca
    ei
    adc l
    cpl
    sub d
    inc de
    ld d, e
    ld [hl], d
    ld a, [bc]
    add b
    rlca
    ld c, l
    nop
    add b
    sub $60
    rst JumpTable
    rra
    and b
    rst $38
    or d
    cp a
    ld [hl], b
    rst $38
    add d
    rst $38
    sub h
    sbc a
    pop hl
    jp nz, $b62f

    cp h
    or b
    cp h
    ld [de], a
    ld b, $bc
    jr z, jr_027_4380

    rst $00
    ccf
    and b
    sbc $f0
    rra
    call nz, $fc57
    rra
    ldh a, [$1f]
    ld c, d
    rlca
    and b
    and b
    adc $9a
    ldh a, [$1f]
    xor $ff
    ldh a, [$1f]
    and e
    and e
    ld a, [de]
    nop
    pop bc
    rlca
    and e
    db $fc
    rra
    ldh a, [rIF]
    and b
    and b
    and e
    ld a, [de]
    nop
    and e
    ld a, [de]
    nop
    ld b, c
    dec e
    ld [de], a
    and e
    and b
    add hl, bc
    and b
    and e
    ld a, [de]
    nop
    and e
    inc c
    and b
    add hl, bc
    db $fc
    rra
    ret nz

    rla
    and e
    and e
    and b
    ld c, a
    ld c, $a0
    dec d
    dec l
    ld e, $24
    sub e
    xor a
    rst $00
    ld h, h
    ld a, $d0
    ld l, a
    rra
    ld a, [hl-]
    and b
    and b
    daa
    xor d
    ld a, [hl+]
    dec c
    inc de
    rrca
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    ld c, e
    ld a, [hl-]
    ld h, [hl]
    inc e
    daa
    and b
    daa
    and b
    ld hl, sp-$5d
    and b
    daa
    pop af
    add hl, bc
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rra
    rlca
    ld bc, $0c67
    and e
    and b
    daa
    and b
    daa
    and b
    daa
    ccf
    xor h
    dec l
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    pop af
    rrca
    and b
    daa
    rst JumpTable
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    inc c
    ld h, [hl]
    inc a
    xor h
    dec e
    dec b
    ldh [$bd], a
    cp e
    xor a
    rst $20
    ld a, a
    ret nc

    rst JumpTable
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    or c
    db $fc
    nop
    or l
    push hl
    ld b, $95
    ld bc, $19eb
    db $fc
    inc b
    adc $3c
    sub l
    ld bc, $5bf1
    ld a, [de]
    rst $30
    rst $30
    rst $30
    adc $3c
    sub l
    ld bc, $1a5b
    or $08
    ld a, a
    ld l, $01
    rlc [hl]
    sub l
    ld bc, $1a5b
    ld [$1f18], sp
    ld a, [hl-]
    or [hl]
    rra
    db $f4
    adc [hl]
    dec e
    ld [$3f18], sp
    dec c
    or e
    ld c, a
    db $f4
    dec e
    push af
    rlc h
    rst $00
    ccf
    dec c
    xor d
    ld a, [hl+]
    rlc [hl]
    dec e
    or $f7
    dec c
    inc bc
    add b
    ld a, [bc]
    inc bc
    and l
    dec d
    rst $20
    ld l, l
    rst $38
    ld b, a
    ld c, c
    ld h, h
    ld a, $8d
    rlca
    ld b, a
    ld c, c
    ldh a, [$2b]
    inc c
    add hl, de
    ld b, a
    ld c, c
    ldh a, [$2b]
    cp a
    inc c
    add hl, de
    ld h, h
    ld a, $98
    add hl, de
    ld a, [bc]
    add hl, sp
    or d
    ccf
    xor d
    ld a, [hl+]
    and b
    inc c
    add hl, de
    rst $38
    or d
    ccf
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    db $fd
    or a
    ld a, [hl+]
    nop
    sbc c
    add hl, bc
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    db $fd
    inc bc
    xor d
    ld a, [hl+]
    di
    jr jr_027_452d

    xor d
    ld a, [hl+]
    or c
    sbc a
    rrca
    pop hl
    sbc l
    cp e
    xor a
    rst $20
    rst $38
    ld h, h
    ld a, $d6

Jump_027_450e:
    adc a
    pop hl
    ld c, c
    ld a, [de]
    nop
    xor b
    rrca
    adc $4c
    and l
    ld [$06e5], sp
    rst $30
    adc c
    ld bc, $4cce
    ld d, a
    ld c, d
    db $f4
    adc l
    inc e
    pop bc
    add hl, de
    ld d, e
    ld a, [bc]
    ld d, a
    ld a, [hl+]
    ld [hl], e
    dec l

jr_027_452d:
    rla
    or h
    cpl
    or $1d
    ld d, a
    ld a, [hl+]
    dec l
    rla
    ld hl, $f61a
    inc [hl]
    dec e
    push af
    ld d, d
    ld a, [de]
    db $f4
    ld e, l
    ld de, $06e5
    rst $30
    dec e
    dec de
    or a
    rrca
    ld e, h
    ld a, [bc]
    db $f4
    dec c
    db $10
    ld d, e
    ld a, [bc]
    dec e
    and b
    inc e
    rst $28
    pop bc
    add hl, de
    ld [hl-], a
    inc b
    ld c, $00
    ld [hl], $14
    inc e
    add hl, sp
    inc b
    sub a
    inc l
    ld a, [hl]
    daa
    rrca
    ld hl, $e51a
    ld d, $b8
    ld a, [de]
    xor a
    rst $20
    di
    ld b, b
    reti


    jr nz, jr_027_458a

    push af
    push af
    ld b, $3a
    ld b, [hl]
    add hl, bc
    rra
    ld a, [hl+]
    rlc [hl]
    ldh [$f5], a
    push af
    ccf
    and b
    ld b, h
    jp nc, $8f04

    ld e, h
    ld e, h
    ld a, [bc]
    sub a
    sbc c
    inc b
    dec c

jr_027_458a:
    ld [$39e0], sp
    dec e
    ld e, h
    ld a, [bc]
    push af
    push af
    jp nc, $cb04

    ld c, a
    ld a, [de]
    ld d, [hl]
    ld a, [bc]
    push af
    ld e, h
    ld a, [bc]
    db $f4
    db $f4
    jp nc, Jump_027_4f04

    ld a, [de]
    db $e3
    ld [hl-], a
    inc b
    rlc [hl]
    dec e
    db $f4
    db $f4
    jp nc, Jump_027_4f04

    ld a, [de]
    inc sp
    ld c, b
    sbc h
    db $f4
    db $f4
    jp nc, Jump_027_4f04

    ld a, [de]
    pop hl
    ld c, c
    db $f4
    db $f4
    jp nc, $1704

    cp a
    xor c
    jp nc, $df04

    xor l
    cp e
    dec c
    ld [$13df], sp
    ld b, $64
    ld a, $99
    ld [$006b], sp
    rra
    rlca
    sub h
    ldh a, [$2b]
    dec bc
    add hl, de
    ld l, $95
    db $ed
    rra
    ld b, d
    rlca
    rlca
    ld e, c
    sub l
    dec l
    rla
    and b
    and b
    cp [hl]
    ld d, c
    rlca
    ld e, c
    xor h
    dec l
    ld b, d
    rlca
    di
    dec hl
    inc c
    add hl, bc
    sub l
    dec l
    rla
    rst $30
    ld b, d
    rlca
    di
    dec hl
    inc c
    add hl, bc
    sub l
    dec l

jr_027_45fc:
    rla
    ld b, d
    rlca
    di
    dec hl
    inc c
    add hl, bc
    xor $95
    dec l
    rla
    ld b, d
    rlca
    rlca
    ld e, c
    sub l
    dec l
    rla
    ld b, d
    rlca
    rlca
    ld e, c
    ld b, d
    sub l
    dec l
    rla
    and b
    sub h
    cp d
    or l
    ld h, l
    inc h
    or h
    add h
    cp e
    sub l
    dec l
    rla
    and b
    and b
    add hl, bc
    or e
    ld l, c
    add hl, sp
    ld [bc], a
    add hl, bc
    xor h
    dec e
    rst $38
    or d
    ccf
    or a
    rrca
    cp b
    rra
    sbc l
    add hl, de
    xor d
    ld a, [hl+]
    or a
    rrca
    cp b
    rra
    dec c
    inc de
    inc a
    and b
    and b
    ld [hl], $07
    or a
    rrca
    cp b
    rra
    dec c
    inc de
    and b
    and b
    rst $38
    ld [hl], $07
    or a
    rrca
    cp b
    rra
    dec c
    inc de
    xor d
    ld a, [hl+]
    or a
    rrca
    cp b
    rra
    adc l
    ld a, [bc]
    rst $38
    ret nc

    rlca
    or h
    ccf
    cp b
    rra
    db $fd
    inc bc
    and b
    dec l
    or [hl]
    rra
    cp b
    rra
    db $fd
    inc bc
    and h
    and [hl]
    and [hl]
    ret nc

    rlca
    and b
    ld l, l
    and l
    jr jr_027_46e3

    xor h
    dec e
    sbc a
    ld a, [bc]
    jr jr_027_45fc

    rlca
    pop bc
    add hl, de
    cp b
    ld a, [de]
    sbc a
    dec c
    and [hl]
    and [hl]
    ldh [$7d], a
    ld c, $bb
    sbc a
    dec c
    ld b, a
    ld e, c
    ld a, [bc]
    jr c, jr_027_469b

    ret nc

    rst JumpTable
    xor d
    ld a, [hl+]
    ld b, h
    dec [hl]
    ld [bc], a
    xor e
    push af
    push af
    ld c, l

jr_027_469b:
    ld b, e
    ld e, l
    ld bc, $2aaa
    dec e
    dec e
    db $f4
    db $f4
    and h
    ld [$03f5], sp
    dec c
    nop
    xor d
    ld a, [hl+]
    ld e, $f7
    db $f4
    db $f4
    xor e
    db $f4
    ret nz

    db $f4
    xor e
    xor e
    or c
    nop
    or l
    inc sp
    jr c, jr_027_4713

    ld a, [hl+]
    add d
    or $0d
    db $10
    push af
    push af
    xor e
    push af
    push af
    and h
    ld [$abb0], sp
    db $f4
    db $f4
    ld c, l
    dec c
    db $10
    ld d, a
    ld a, [hl+]
    push af
    ld d, [hl]
    ld a, [hl+]
    ld [bc], a
    ld c, l
    dec c
    db $10
    db $f4
    db $f4
    xor e
    db $f4
    db $f4
    xor e
    ret nz

    ld c, l
    db $f4
    xor e
    db $f4

jr_027_46e3:
    db $f4
    xor e
    dec c
    db $10
    ld d, a
    ld a, [hl+]
    inc c
    xor e
    push af
    ld d, h
    ld a, [hl+]
    adc l
    inc e
    or $f6
    xor e
    or $00
    or $ab
    or $f6
    ld c, l
    ld c, l
    or $ab
    ld c, $4d
    ld a, [hl]
    daa
    and l
    dec d
    ld b, a
    ld l, a
    rst $38

Call_027_4706:
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    push hl
    ld b, $aa
    ld a, [hl+]
    ld a, [hl]
    daa
    or l

jr_027_4713:
    cpl
    cp c
    rrca
    di
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    push af
    push af
    and l
    ld [$2fa8], sp
    ld a, [hl]
    daa
    or a
    rrca
    rst $38
    rlc [hl]
    cp b
    rra
    dec l
    rla
    push hl
    ld b, $b8
    rra
    or a
    rrca
    add e
    ld d, $bf
    add hl, hl
    db $fd
    ld a, b
    rrca
    and d
    or a
    rrca
    db $db

jr_027_473d:
    add hl, bc
    ld a, [hl]
    daa
    or a
    cpl
    or a
    rrca
    db $db
    add hl, bc
    cp [hl]
    ld [hl], c
    rra
    ld a, [hl+]
    cp b
    rra
    or a
    rrca
    db $db
    add hl, bc
    ld a, [hl]
    daa
    and b
    inc sp
    inc b
    ld a, a
    add c
    inc e
    db $db
    add hl, bc
    ld e, $17
    and l
    dec d
    pop hl
    dec l
    and d
    rrca
    xor [hl]
    rst $30
    ld bc, $0780
    add hl, bc
    or e
    ld a, [$a0fa]
    and b
    ld a, [$b1ec]
    add hl, bc
    xor h
    dec l
    ld b, c
    rla
    ld a, [$2ab7]
    push bc
    rlca
    cp $1e
    ret z

    and b
    sbc d
    or e
    add [hl]
    dec c
    rst $30
    push af
    ld c, d
    rla
    ld l, [hl]
    di
    jr z, jr_027_473d

    or e
    rst $30
    add c
    inc c
    rst $30
    add a
    dec c
    rst $30
    rst $30
    db $fc
    rst $30
    or c
    ld c, $00
    ld h, c
    db $d3
    add c
    call $d740
    add b
    rst $10
    ld d, b
    ld [bc], a
    xor [hl]
    sub h
    ret nz

    add hl, hl
    xor d
    ld a, [hl+]
    ld e, $24
    or l
    ldh [$7d], a
    cp e
    xor a
    rst $20
    rst $38
    and d
    dec e
    ld h, h
    ld a, $da
    ld c, a
    sbc c
    inc b
    ld d, b
    ld [bc], a
    xor d
    ld a, [hl+]
    xor h
    dec l
    ld sp, $f6dd
    and b
    or c
    ld a, [de]
    add hl, bc
    ld a, [hl-]
    sub l
    dec l
    rla
    ld b, d
    rlca
    ld de, $a21f
    ld [$9bf3], sp
    inc b
    ld e, $17
    sub h
    or e
    ld de, $a21f
    ld [$049b], sp
    ld e, $17
    inc a
    sub h
    or e
    ld de, $a21f
    ld [$049b], sp
    ld e, $17
    sub h
    or e
    rst $08
    ld de, $a21f
    ld [$049b], sp
    ld e, $17
    sub h
    or e
    ld de, $a21f
    ld [$9b3f], sp
    inc b
    ld e, $17
    ld [hl], c
    cpl
    ld de, $9b1f
    inc b
    ld e, $17
    sub h
    cp d
    inc d
    or d
    ld a, d
    ld c, c
    ccf
    sub l
    db $fd
    inc bc
    sbc $b3
    ld h, l
    cpl
    rlca
    ld a, [hl+]
    sbc c
    add hl, bc
    ld e, $17
    dec e
    and d
    ld [$39e9], sp
    pop hl
    xor h
    dec l
    and b
    dec e
    ld c, l
    dec e
    ld d, a
    ld a, [hl-]
    xor c
    rrca
    ld e, $17
    ld h, $1d
    sub $01
    ld d, a
    ld a, [hl+]
    or $95
    dec l
    rla
    and b
    dec e
    pop de
    ld d, a
    ld c, d
    db $f4
    dec e
    sub l
    dec l
    rla
    ld c, l
    ld a, [hl-]
    ld [bc], a
    ld d, [hl]
    ld a, [hl-]
    inc b
    and b
    sub l
    dec l
    rla
    db $f4
    dec e
    and b
    db $f4
    dec e
    ld de, $1a52
    db $f4
    push af
    sub l
    dec l
    rla
    db $f4
    dec e
    push af
    add d
    db $f4
    ld [hl-], a
    inc b
    or $a0
    or $f6
    sub l
    dec l
    rla
    ld l, c
    sub $01
    db $f4
    push af
    inc sp
    jr z, jr_027_4887

    xor h
    dec l
    ret z

    add hl, sp
    rst $30
    ld l, $4d
    ld [hl+], a
    ld a, [de]
    db $fd
    inc bc
    ldh [$9d], a
    or l
    db $fd
    inc bc
    call nc, $a0b3
    or c
    ld a, [bc]
    ld a, b
    add hl, bc
    ld a, [hl-]

jr_027_4887:
    sub l
    dec l
    rla
    ld b, d
    rlca
    sbc a
    ld a, [de]
    nop
    push hl
    ld d, $9b
    inc b

jr_027_4893:
    ld e, $17
    sbc c
    inc bc
    ld de, $a5f5
    jr jr_027_4893

    sbc e
    inc b
    ld e, $17
    sbc c
    inc bc
    push af
    ld d, a
    ld a, [hl+]
    sbc e
    inc b
    ld e, $17
    sbc c
    inc bc
    ld e, a
    ld d, c
    ld a, [hl-]
    sbc e
    inc b
    ld e, $17
    sbc c
    inc bc
    and l
    jr @+$0e

    sbc d
    inc d
    ld a, c
    ld h, a
    rra
    rlca
    sbc c
    inc bc
    pop bc
    add hl, de
    and b
    ld de, $049b
    ld e, $17
    sub h
    or h
    cp d
    ld d, b
    ld c, b
    ld c, a
    sub l
    dec l
    rla
    pop af
    sbc $11
    xor d
    ld a, [hl+]
    dec l
    xor d
    ld a, [hl+]
    and b
    ld e, l
    ld [bc], a
    ldh [$bd], a
    cp e
    xor a
    rst $20
    rst $38
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    ld a, a
    rla
    ld [hl], c
    ld a, [de]
    ld l, d
    inc e
    sub e
    sbc b
    inc d
    ld a, a
    rla
    and c
    add hl, bc
    ld [hl], l
    ld a, [de]
    and c
    add hl, bc
    sbc b
    inc d
    cpl
    ld a, a
    rla
    add hl, de
    daa
    add d
    add hl, de
    xor h
    dec e
    ld a, e
    push af
    dec hl
    inc b
    and l
    ld a, [$b604]
    ld a, [hl+]
    ld a, c
    ld a, a
    rla
    add hl, de
    daa
    add d
    add hl, de
    xor h
    dec l
    ld sp, hl
    inc bc
    ld a, [c]
    add hl, bc
    ld [hl], l
    ld a, [de]
    and c
    add hl, bc
    sbc b
    inc d
    ld a, a
    rla
    ld [hl], c
    ld a, [de]
    ld l, d
    inc e
    ld e, a
    sbc b
    inc d
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rst JumpTable
    call $afbb
    rst $20
    ld l, e
    ld h, h
    ld a, $07
    ld a, [hl-]
    or a
    dec l
    rla
    ld b, h
    inc sp
    jr jr_027_494f

    inc bc
    and b
    cp $1d
    inc c
    inc bc
    ld a, [hl]
    daa
    ldh a, [rNR21]
    db $db
    add hl, de

jr_027_494f:
    db $db
    add hl, bc
    adc [hl]
    inc a

jr_027_4953:
    ld [hl+], a
    ld a, [de]
    inc bc
    or c
    ld d, $84
    ld b, $00
    or e
    ld b, h
    and b
    dec e
    ld b, h
    ldh a, [$a0]
    ld b, h
    dec e
    ld b, h
    db $db
    add hl, bc
    inc l
    rla
    ld [hl+], a
    ld a, [de]
    sub [hl]
    inc l
    and a
    sbc b
    inc e

jr_027_4970:
    dec l
    rla
    add hl, sp
    inc b
    and b
    dec e
    inc c
    inc bc
    ld b, h
    or b
    ld d, $19

jr_027_497c:
    ld e, $17
    dec e
    ld b, h
    add hl, sp
    inc b
    db $db
    add hl, bc
    dec e
    ld b, h
    dec e
    rst $30

jr_027_4988:
    dec l
    rla
    sbc e
    add hl, bc
    ld b, b
    inc bc
    pop af
    or b
    ld h, $2d
    rla

jr_027_4993:
    xor d
    ld a, [hl+]
    db $db
    add hl, de
    dec c
    ld b, b
    inc bc
    ld b, h
    ld e, $24
    sub e
    xor a
    ld b, [hl]
    and [hl]
    ld h, h
    ld a, $08
    ld c, d
    and [hl]
    nop
    and [hl]
    ldh [$99], a
    or c
    jr jr_027_4953

    nop
    and [hl]
    ld d, b
    ld c, d
    ld d, [hl]
    ld a, [hl+]
    or c
    and [hl]
    nop
    ld c, $a6
    ld d, b
    ld a, [hl+]
    ld sp, $a505
    jr jr_027_4970

    and [hl]
    nop
    and [hl]
    ld de, $2a50
    ld h, b
    pop af

jr_027_49c7:
    ld h, b
    and l
    jr jr_027_497c

    and [hl]
    nop
    ld [hl+], a
    and [hl]
    ld d, b
    ld a, [hl+]
    ld h, b
    and b
    ld h, b
    and l
    jr jr_027_4988

    and [hl]
    inc e

jr_027_49d9:
    nop
    and [hl]
    ld d, b
    ld a, [hl+]
    push hl
    ld b, $a5
    jr jr_027_4993

    and [hl]
    nop
    add [hl]
    and [hl]
    ld d, b
    ld a, [hl+]
    ld d, a
    ld c, d
    or c
    and [hl]
    nop
    and [hl]
    ld d, b
    ld c, d
    pop hl
    ld d, [hl]
    ld a, [hl+]
    or c
    and [hl]
    nop
    and [hl]
    ret nz

    add hl, hl
    ld a, [de]
    nop
    pop bc
    add hl, de
    ld d, b
    or c
    and [hl]
    nop
    and [hl]
    ldh [$3d], a
    and b
    ld c, c
    ccf
    and [hl]
    ld bc, $e7af
    cp a
    ld h, h
    ld a, $99
    ld [$006b], sp
    inc c
    jr jr_027_49c7

    ccf
    sbc c
    inc d
    inc c
    jp nc, $f314

    rra
    ld a, [hl+]
    ld d, c
    dec bc
    and b
    or c
    sbc c
    inc b
    inc c
    jr jr_027_49d9

    ccf
    sbc c
    inc h
    rst $38
    ld b, e
    add hl, de
    rra
    ld a, [hl-]
    cp b
    ld a, [de]
    push bc
    rla
    dec l
    rla
    xor d
    ld a, [hl+]
    cp c
    ld a, [de]
    dec sp
    rla
    rst $38
    ld c, $4c
    ld h, e
    ccf
    ld [hl+], a
    ld b, $fe
    rlca
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    ld h, e
    rra
    rra
    ld a, [hl-]
    ccf
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl-]
    or d
    ccf
    xor d
    ld a, [hl+]
    ld c, e
    ld a, [hl+]
    ldh [$dd], a
    ld a, $b3
    ld h, h
    ld a, $08
    ld c, d
    ld c, $00
    or d
    ccf
    xor d
    ld a, [hl+]
    and b
    or c
    ld h, a
    ld c, $00
    or d
    ccf
    xor d
    ld a, [hl+]
    and b
    or c
    ld c, $00
    jr nz, jr_027_4a8e

    dec e
    ld l, b
    daa
    and b
    daa
    db $db
    add hl, de
    or c
    ld c, $00
    jr nz, jr_027_4a9a

    daa
    ld b, l
    ld a, [de]
    nop
    daa
    cp b
    ld a, [de]
    or [hl]
    nop
    or a
    jr nz, @+$1c

    dec e
    inc hl

jr_027_4a8e:
    dec bc
    inc bc
    db $db
    add hl, de
    or c
    and [hl]
    nop
    and c
    dec e
    and b
    daa
    dec h

jr_027_4a9a:
    ld a, [de]
    nop
    daa
    cp b
    ld a, [de]
    and [hl]
    nop
    sbc b
    add hl, de
    and b
    dec e
    ld hl, sp+$27
    dec e
    daa
    ld h, a
    inc e
    db $dd
    ld c, $aa
    ld a, [hl+]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl-]
    cpl
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl-]
    pop hl
    ld c, l
    ld a, d
    add sp, $5d
    adc $a6
    ld h, h
    ld a, $23
    ld d, $b2
    ld a, [bc]
    cp c
    nop
    and c
    dec e
    xor d
    ld a, [hl+]
    add hl, sp
    ld b, d
    rlca

jr_027_4ad0:
    ld c, c
    ld c, c
    sbc [hl]
    dec c
    or d
    ccf
    ld hl, $511a
    ld c, b
    ld c, $48
    sbc [hl]
    dec c
    add b
    rlca
    sub [hl]
    inc a
    sub h
    or e
    ld c, b
    ld c, b
    sbc l
    ld a, [hl]
    ld b, $b7
    sbc e
    add hl, bc
    ld [hl+], a
    ld a, [de]
    ld b, d
    rlca
    ld c, b
    ld c, b
    ld e, $19
    jp $1898


    sbc b
    inc e
    sub h
    or e
    ld c, d
    ld c, d
    xor $2f
    sbc c
    inc b
    ld d, a
    sub [hl]
    ld [bc], a
    ld b, d
    rlca
    add h
    ld b, $00
    sbc c
    add hl, hl
    or c
    db $db
    add hl, bc
    dec e
    ld [hl], b
    dec e
    or e
    ld c, c
    ld c, c
    xor $26
    sbc c
    inc b
    db $db
    add hl, de
    and b
    jr jr_027_4ad0

    ld c, b
    ld c, b
    xor $16
    ld h, l
    inc c
    or c
    dec e
    ld b, l
    pop hl
    ld a, [de]
    nop
    or e
    ld c, d
    ld c, d
    or c
    sbc a
    rrca
    rla
    add hl, de
    and l
    dec h
    ld bc, $242b
    add $a6
    ld h, h
    ld a, $08
    ld c, d
    and [hl]
    nop
    and [hl]
    ld [hl], b
    ld a, [hl+]
    ld l, b
    inc a
    nop
    and c
    or c
    and [hl]
    nop
    and [hl]
    or e
    and c
    add hl, bc
    ld bc, $2a75
    and b
    and c
    add hl, bc
    and c
    or c
    and [hl]
    nop
    add [hl]
    and [hl]
    ld [hl], b
    ld a, [hl+]
    ld l, b
    inc a
    and c
    or c
    and [hl]
    nop
    and c
    dec e
    call $0b5b
    and d
    ld d, c
    dec bc
    sbc c
    inc b
    and [hl]
    nop
    and c
    dec e
    ld e, e
    dec bc
    ld h, [hl]
    and d
    ld d, c
    dec bc
    sbc c
    inc b
    and [hl]
    nop
    and c
    dec e
    ld e, e
    dec bc
    and d
    ld h, e
    ld d, c
    dec bc
    sbc c
    inc b
    and [hl]
    nop
    and [hl]
    ld [hl], b
    ld a, [hl+]
    ld l, b
    inc a
    and c
    add b
    or c
    and [hl]
    nop
    and [hl]
    or e
    and c
    add hl, bc
    ld [hl], l
    ld a, [hl+]
    nop
    and b
    and c
    add hl, bc
    and c
    or c
    and [hl]
    nop
    and [hl]
    add e
    ld [hl], b
    ld a, [hl+]
    ld l, b
    inc a
    and c
    or c
    and [hl]
    nop
    and [hl]
    ldh [$3d], a
    ld a, [bc]
    and b
    ld c, c
    ccf
    and [hl]
    xor a
    rst $20
    cp c
    ld h, h

jr_027_4bb2:
    ld a, $b0
    ld a, b
    ld a, [bc]
    ld a, [hl+]
    dec c
    ld [$064a], sp
    and d
    sbc e
    add hl, bc
    cp $a0
    ld bc, $d218
    inc b
    rra
    ld a, [hl-]
    ld [hl+], a
    ld a, [de]
    db $fc
    inc b
    jp nc, $1f04

    ld c, d
    sub a
    sub l
    inc a
    ld l, e
    nop
    adc a
    inc a
    add hl, bc
    xor d
    ld a, [hl+]
    and b
    and b
    ld c, l
    ld d, $cd
    and [hl]
    inc b
    ld c, c
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    nop
    or e
    daa
    daa
    xor d
    ld a, [hl+]
    rst $38
    cp b
    ld a, [de]
    rrca
    ld a, [hl+]
    and d
    cpl
    xor d
    ld a, [hl+]
    sbc [hl]
    dec e
    and b
    dec l
    xor d
    ld a, [hl+]
    xor h
    dec e
    ret


    ld a, [bc]
    jr jr_027_4bb2

    add hl, bc
    xor d
    ld a, [hl+]
    and b
    and b
    ld c, l
    ld b, $0a
    jr jr_027_4c0e

    ldh [$7d], a
    cp e
    xor a
    rst $20

jr_027_4c0e:
    jp z, Jump_027_64a6

    ld a, $a0
    add hl, bc
    ld a, [hl-]
    and [hl]
    nop
    and c
    dec e
    ld hl, $611a
    or c
    ld a, [de]
    cp c
    or c
    and [hl]
    nop
    and c
    dec e
    ld hl, $941a
    add b
    or e
    dec hl
    ld b, l
    or c
    or c
    and [hl]
    nop
    and c
    dec e
    inc bc
    ld [hl], $07
    ld b, d
    rlca
    ld d, [hl]
    ld d, [hl]
    or c
    or c
    and [hl]
    nop
    inc bc
    and c
    dec e
    ld hl, $941a
    or e
    ld d, [hl]
    ld d, [hl]
    or c
    or c
    inc e
    and [hl]
    nop
    and c
    dec e
    dec [hl]
    dec c
    ld b, d
    rlca
    ld d, [hl]
    ld d, [hl]
    or c
    jr @-$4d

    and [hl]
    nop
    and c
    dec e
    ld hl, $941a
    or e
    ld d, [hl]
    ldh [rRP], a
    or c
    or c
    and [hl]
    nop
    and c
    dec e
    ld [hl], $07
    ld b, d
    rlca
    ret nz

    ld d, [hl]
    ld d, [hl]
    or c
    or c
    and [hl]
    nop
    and c
    dec e
    xor d
    ld a, [hl+]
    add b
    ld d, c
    ld d, [hl]
    ld d, [hl]
    or c
    or c
    and [hl]
    nop
    and c
    dec e
    add l
    ld hl, $941a
    jr nz, jr_027_4c99

    or c
    and [hl]
    nop
    and [hl]
    ldh [$3d], a
    ld a, [bc]
    ld [hl], d
    ld c, c
    ccf
    and [hl]
    xor a
    rst $20
    ld e, c
    ld h, h
    ld a, $b0
    ld a, b
    ret c

    ld l, a

jr_027_4c99:
    ld [hl+], a
    ld a, [de]
    add hl, bc
    ld a, [de]
    nop
    add hl, bc
    db $db
    db $db
    add hl, de
    ld a, [hl]
    daa
    and b
    and [hl]
    inc b
    and [hl]
    inc b

jr_027_4ca9:
    ld c, c
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    ld a, e
    and $0a
    and $0a
    ld c, b
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    and $0a
    and $0a
    ld c, b
    rst $28
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    and $0a
    and $0a
    ld c, b
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    and $0a
    cp l
    and $0a
    ld c, b
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    and $0a
    and $0a
    ld c, b
    cp b
    ld a, [de]
    dec sp
    rra
    rst $20
    ldh [$bd], a
    cp e
    sbc a
    dec c
    ld b, a
    ld e, c
    ld a, [bc]
    jr c, jr_027_4d50

    ld h, h
    ld c, [hl]
    ld b, a
    ld l, c
    ldh a, [rNR31]
    dec e
    ld b, l
    add hl, bc
    jr c, jr_027_4d00

    jr jr_027_4ca9

    ld c, h
    db $fd
    dec e
    ld e, d
    inc b
    ld b, $7a
    or e
    db $fd
    ld c, c

jr_027_4d00:
    inc bc
    add hl, bc
    db $fd
    ld c, c
    inc bc
    add hl, bc
    di
    dec de
    ld c, $00
    ld b, $59
    ld a, [c]
    dec hl
    cp [hl]
    ld bc, $5906
    ld e, a
    ld a, [c]
    dec sp
    rst $28
    dec sp
    ld b, $49
    pop af
    add hl, bc
    adc a
    inc a
    add hl, bc
    ld c, c
    inc bc
    add hl, bc
    ld a, a
    di
    dec de
    ld e, $24
    sub e
    xor a
    ld b, a
    ld e, c
    ld c, b
    ld e, c
    ld b, a
    ld e, c
    ld c, b
    ld e, c
    db $fc
    and [hl]
    and [hl]
    ld h, h
    ld l, $97
    jr jr_027_4d7d

    add hl, de
    sbc a
    dec a
    xor d
    ld a, [hl+]
    sbc c
    inc b
    cp a
    dec c
    ld [$0613], sp
    xor d
    ld a, [hl+]
    ld hl, $6b1a
    nop
    rra
    ld a, [hl-]
    add hl, bc
    ld c, c
    inc bc
    adc d

jr_027_4d50:
    add hl, bc
    or a
    ld a, [hl+]
    nop
    sbc c
    add hl, bc
    and b
    and b
    inc e
    ld a, [de]
    nop
    and [hl]
    inc e
    or a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and b
    jr jr_027_4d7e

    nop
    ld a, [de]
    ld hl, $d41a
    ld [hl], c
    nop
    and d
    cpl
    inc e
    ld a, [de]
    nop
    inc e
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    ld a, d
    add hl, bc
    ld c, c
    inc bc
    add hl, bc
    or a
    ld a, [hl+]
    rst $08

jr_027_4d7d:
    rla

jr_027_4d7e:
    xor d
    ld a, [hl+]
    ld hl, $b41a
    sbc a
    dec l
    inc b
    and b
    dec l
    xor d
    ld a, [hl+]
    sbc c
    inc b
    dec c
    ld [$a6a6], sp
    ldh [$7d], a
    ld [bc], a
    cp e
    dec c
    ld [$64ff], sp
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    ld h, l
    rra
    ld a, [hl+]
    ld [$19db], sp
    dec e
    ld [$1ab8], sp
    rra
    ld a, [hl+]
    dec e
    dec de
    sub l
    ld a, [hl+]
    db $db
    add hl, de
    or c
    ccf
    rla
    ld sp, hl
    inc bc
    inc b
    ld e, b
    inc b
    ld [hl], e
    ld [hl], l
    ld a, [hl+]
    ld a, [hl]
    daa
    and b
    dec e
    sub l
    ld a, [hl+]
    db $db
    add hl, de
    ld a, [hl]
    daa
    and b
    ld a, [c]
    ld [$19db], sp
    dec e
    ld [$1ab8], sp
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    cpl
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rst JumpTable
    call $afbb
    rst $20
    or h
    and [hl]
    and [hl]
    or d
    ld a, [bc]
    cp c
    sub l
    add hl, hl
    or d
    ld a, [bc]
    cp c
    sbc a
    db $ed
    rst $38
    and b
    db $dd
    and b
    dec a
    ld d, l
    ld e, e
    sbc [hl]
    ld c, l
    rlc h
    ld [hl+], a
    ld b, $99
    add hl, bc
    sbc [hl]
    ld c, l
    add b
    db $ed
    and b
    and d
    and d
    and d
    and b
    db $ed
    xor h
    dec e
    ld bc, $2da0
    db $ed
    and b
    and d
    and d
    and d
    and b
    db $ed
    inc bc
    xor h
    dec e
    and b
    dec l
    db $ed
    and b
    and d
    and d
    and d
    and b
    cp $ed
    call c, $a019
    dec l
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    sbc a
    dec a
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    inc bc
    sbc a
    dec c
    sub d
    cp a
    rst $38
    ld h, h
    ld a, $d6
    adc a
    ld sp, $30c5
    push de
    jr nc, jr_027_4e6b

    jr z, @+$2b

    ld a, [hl-]
    dec [hl]
    jr nc, jr_027_4e61

    rst $38
    jr z, jr_027_4e88

    jr c, @+$17

    ld c, $00
    inc [hl]
    dec h
    jr z, jr_027_4e90

    inc a
    dec d
    add b
    add hl, de
    jr z, jr_027_4e96

    ld sp, $1928
    or c

jr_027_4e61:
    nop
    ld a, e
    jr z, jr_027_4e9e

    jr z, @+$3b

    and l
    ld a, c
    ld a, a
    ld a, a

jr_027_4e6b:
    add hl, hl
    jr z, jr_027_4ea7

    jr z, jr_027_4e89

    ld e, $24
    sub e
    xor a
    ld b, a
    ld e, c
    ld c, b
    ld e, c
    dec hl
    ld h, h
    ld a, $d6
    adc a
    ld b, l
    ld [hl+], a
    ld a, [de]
    ld b, l
    inc sp
    jr jr_027_4ec9

    dec e
    rst $38
    dec l
    rla

jr_027_4e88:
    sbc b

jr_027_4e89:
    inc e
    db $db
    add hl, de
    ld [hl+], a
    ld a, [de]
    dec l
    rla

jr_027_4e90:
    ld [hl+], a
    ld a, [de]
    sub d
    ld l, h
    ld c, $00

jr_027_4e96:
    nop
    ld b, l
    dec e
    dec e
    ld b, l
    dec e
    ld b, l
    and b

jr_027_4e9e:
    ld b, l
    ld hl, sp+$1d
    ld de, $9ca0
    dec de
    sub b
    inc c

jr_027_4ea7:
    ldh a, [rNR21]
    sub a
    inc l
    xor h
    dec l
    add c
    sbc e
    add hl, bc
    and b
    dec e
    ld b, l
    and b
    dec e
    ld b, l
    ld a, [de]
    nop
    ld hl, $025d
    ld [hl], a
    and b
    dec e
    ld b, l
    ld hl, $a02a
    and b
    call c, $a045
    ld e, l
    ld [de], a
    add hl, sp

jr_027_4ec9:
    inc b
    sub c
    ld l, h
    dec e
    ld a, [hl]
    daa
    xor d
    ld a, [hl+]
    dec c
    xor d
    ld a, [hl+]
    ld b, l
    ld e, $24
    sub e
    xor a
    add hl, sp
    ld h, h
    ld a, $b0
    cp c
    ld h, h
    ld c, [hl]
    rra
    ld a, [hl-]
    sbc c
    inc b
    or e
    dec hl
    push hl
    ld [hl], c
    ld a, [bc]
    dec hl
    ld a, [hl]
    daa
    and b
    ld c, e
    sbc c
    inc b
    add d
    ccf
    cp $fe
    ld [hl], b
    or e
    ld c, c
    ld c, c
    ld c, e
    and [hl]
    inc b
    rlca
    rra
    adc e
    cpl
    or e
    adc b
    ld c, b
    ld c, b
    inc c

Jump_027_4f04:
    and $0a
    or c
    or e
    dec hl
    ld [hl], c
    ld a, [bc]

jr_027_4f0b:
    and d
    dec hl
    ld c, $00
    ld c, b
    ld c, b
    ld c, c
    and $0a
    or c
    or d
    ccf
    rst $30
    ld c, $00
    and $0a
    and $0a
    or c
    or d
    ccf
    ld c, $00
    and $0a
    and $0a
    and d
    or c
    or d
    ccf
    ld sp, $b300
    inc h
    scf
    or c
    or d
    ccf
    rla
    ld e, $24
    ld de, $e02a
    dec a
    cp e
    xor a
    rst $20
    cp a
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    ld a, a
    rla
    ld h, b
    sbc b
    inc e
    rst $00
    xor d
    ld a, [hl+]
    dec l
    rla
    ld hl, $b41a
    or d
    ld d, b
    and c
    rra
    add h
    ld b, $e3
    adc a
    inc e
    inc a
    dec b
    add hl, bc
    and b
    add hl, bc
    jr nz, jr_027_4f8f

    ld a, [hl]
    daa
    sbc c
    inc b
    jr c, jr_027_4f0b

    ld b, l
    and b
    jr nz, @+$2c

    ld a, [hl]
    daa
    sbc c
    inc b
    add hl, bc
    and b
    xor $09
    sub b
    add hl, bc
    xor h
    dec l
    sub c
    ret


    inc sp
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    sbc e
    add hl, bc
    ld e, a
    ld c, $03
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    or $18
    rst JumpTable
    ld c, l

jr_027_4f8f:
    or l
    or $28
    cp e
    ld bc, $080d
    rst $38
    ld h, h
    ld a, $08
    ld c, d
    dec c
    ld [$3fb2], sp
    xor d
    ld a, [hl+]
    ld [$1f18], sp
    rlca
    sub [hl]
    ld [bc], a
    ld a, a
    sbc e
    add hl, bc
    sub [hl]
    ld [bc], a
    ld [$1f18], sp
    ld a, [hl-]
    xor d
    ld a, [hl+]
    sbc c
    inc b
    dec c
    ld [$ffb3], sp
    sbc e
    add hl, bc
    db $db
    add hl, de
    sub [hl]

jr_027_4fbd:
    ld [bc], a
    ld [$1f18], sp
    ld a, [hl-]
    xor d
    ld a, [hl+]
    sbc c
    inc b
    dec c
    ld [$b3ae], sp
    sbc e
    add hl, bc
    sub [hl]
    ld [bc], a
    sbc e
    add hl, bc
    dec e
    ld [$0018], sp
    sbc c
    add hl, bc
    rst $38
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    dec c
    ld [$2aaa], sp
    xor d
    ld a, [hl+]
    sbc c

jr_027_4fe2:
    inc b
    dec c
    ld [$9de1], sp
    ld c, $bb
    dec c
    ld [$5947], sp
    ld c, b
    ld e, c
    ld a, a
    ld h, h
    ld a, $98
    jr jr_027_4fff

    jr c, jr_027_4ff7

jr_027_4ff7:
    ret c

    jr nz, @+$2c

    dec b
    adc b
    jr nz, jr_027_5028

    ld h, b

jr_027_4fff:
    ld e, [hl]
    and b
    rlca
    ld l, b
    sub b
    inc a
    dec sp
    dec d
    ld a, [bc]
    jr c, jr_027_4fbd

    and [hl]
    inc b
    ld c, c
    ld d, $1d
    inc b
    ld [$4809], sp
    or e
    inc h
    rla
    dec e
    ld h, b
    and b
    and $60
    add hl, bc
    ld c, b
    jr nz, @+$2c

    ld h, b
    and b
    rlca
    ld l, b
    jr nz, jr_027_504f

    dec b
    adc b
    ld e, c

jr_027_5028:
    jr nz, jr_027_5054

    ld h, b
    and b
    rlca
    ld l, b
    ldh [$6d], a
    cp e
    ld a, [bc]
    jr c, jr_027_5053

    ld h, h
    ld a, $41
    add hl, hl
    cp e
    jr c, @-$54

    ld a, [hl+]
    xor d
    ld a, [hl+]
    inc b
    inc b
    inc b
    rst $38
    ld e, $17
    sub [hl]
    ld [bc], a
    sbc e
    add hl, bc
    or $28
    ld c, l
    rra
    xor d
    ld a, [hl+]
    cp b

jr_027_504f:
    ld a, [de]
    sub b
    jr z, jr_027_4fe2

jr_027_5053:
    rra

jr_027_5054:
    rlca
    sub [hl]
    ld [bc], a
    sbc e
    add hl, bc
    sub l

jr_027_505a:
    inc bc
    ld [$0858], sp
    ld e, $4a
    ei
    or a
    ld a, [hl-]
    and l
    ld bc, $1f9a
    rlca
    sub [hl]
    ld [bc], a
    sbc e
    add hl, bc
    ld h, l
    cpl
    cp l
    jr @+$01

    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    rlca
    sub [hl]
    ld [bc], a
    sbc e
    add hl, bc
    or $28
    ld c, l
    rra
    db $eb
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    sub c
    ld a, [de]
    nop
    or h
    rst $08
    rla
    pop af
    add hl, hl
    ld [hl+], a
    inc b
    ld [bc], a
    sub e
    xor h
    dec e
    rrca
    ld a, [bc]
    jr z, jr_027_505a

    cpl
    ld a, [bc]
    jr c, jr_027_5100

    ld l, $b7
    ld c, c
    and b
    ld c, c
    rlca
    ld b, $2a
    cp $07
    ld a, [de]
    nop
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, b
    cp h
    ld c, c
    ld c, c
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    and $0a
    and $0a
    ld c, b
    cp b
    ld a, [de]
    rst $30
    ld a, a
    daa
    and $0a
    and $0a
    ld c, b
    push bc
    rlca
    ld a, [hl]
    scf
    and $0a
    and $0a
    sbc $48
    push bc
    rlca
    ld a, [hl]
    scf
    and $0a
    and $0a
    ld c, b
    push bc

Jump_027_50d7:
    rlca
    ld a, [hl]
    scf
    ld a, e
    and $0a
    and $0a
    ld c, b
    push bc
    rlca
    ld e, $17
    sub d
    cp e
    ldh [$bd], a
    cp e
    rlca
    sbc a
    dec c
    ld b, a
    ld e, c
    ld a, [bc]
    jr c, @+$01

    ld h, h
    ld a, $d0
    ld l, a
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl-]
    or d
    ccf
    xor d
    ld a, [hl+]
    ld c, e

jr_027_5100:
    ld a, [hl-]
    rst $38
    ld hl, $912a
    ld l, h
    rra
    ld [$ec10], a
    pop hl
    xor $22
    ld a, [de]
    sub c
    ld l, h
    rra
    ld a, [hl-]
    ccf
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl-]
    or d
    ccf
    xor d
    ld a, [hl+]
    ld c, e
    ld a, [hl+]
    ldh [$dd], a
    ei
    sub a
    add hl, hl
    ld b, $2a
    cp c
    push bc
    rlca
    xor $16
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    push bc
    rlca
    cp [hl]
    or [hl]
    ld e, a
    ld a, [hl+]
    xor d
    ld a, [hl+]
    sbc d
    inc d
    dec c
    inc bc
    inc sp
    jr z, @+$0b

    ld c, c
    inc bc
    cp $09
    call nz, $9f27
    db $e4
    ldh [$da], a
    ldh [$3a], a
    inc h
    rlca
    db $db
    add hl, de
    db $fd
    inc bc
    push de
    inc sp
    jr z, jr_027_515b

    ld c, c
    inc bc
    add hl, bc
    ld hl, $711a
    ld e, a
    ld a, [hl+]
    xor d

jr_027_515b:
    ld a, [hl+]
    cp a
    xor d
    ld a, [hl+]
    xor $16
    xor d
    ld a, [hl+]
    ld a, [de]
    nop
    ld e, d
    ld [hl-], a
    pop hl
    dec a
    or l
    or $28
    ld bc, $142c
    scf
    ld b, a
    ld e, c
    ld c, b
    ld e, c
    pop de
    cp a
    and [hl]
    ld e, a
    ld a, [hl+]
    xor d
    ld a, [hl+]
    dec e
    and b
    sbc [hl]
    and e
    ld [$5f08], sp
    ld a, [hl+]
    xor d
    ld a, [hl+]
    db $db
    add hl, de
    or c
    and [hl]
    rst $08
    xor $77
    ld h, h
    ld a, $22
    ld d, $8b
    rla
    and [hl]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    and [hl]
    rst $20
    ccf
    rla
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    or c
    and [hl]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    ld l, $a6
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    and [hl]
    rst JumpTable
    cp l
    cp e
    and [hl]
    ld bc, $e7af
    adc $a6
    ld h, h
    ld l, $41
    add hl, hl
    ld b, h
    add hl, de
    nop
    and [hl]
    ld c, d
    ld b, $51
    dec bc
    dec b
    ld a, [de]
    nop
    and d
    ld b, d
    ld b, $a6
    nop
    and [hl]
    or e
    and d
    ld b, $09
    ld d, c
    dec bc
    ld a, [de]
    nop
    and d
    add hl, bc
    and d
    or c
    and [hl]
    ld l, h
    nop
    and [hl]
    ld c, d
    ld b, $51
    dec bc
    xor $5b
    dec bc
    ld b, d
    ld b, $a6
    ld d, d
    nop
    and c
    dec e
    and b
    xor $1a
    nop
    xor $b8
    ld a, [de]
    and [hl]
    sbc [hl]
    nop
    and c
    dec e
    ld a, [de]
    nop
    ld d, c
    dec bc
    cp b
    ld a, [de]
    and [hl]
    nop
    and c
    dec e
    inc d
    and b
    xor $1a
    nop
    xor $b8
    ld a, [de]
    and [hl]
    nop
    and [hl]
    rla
    ld c, d
    ld b, $51
    dec bc

jr_027_5214:
    ld a, [de]
    nop
    and d
    ld b, d
    ld b, $a6
    nop
    and [hl]
    nop
    or e
    and d
    add hl, bc
    and d
    and b
    ldh [$e1], a
    ld [c], a
    nop
    and b
    and d
    add hl, bc
    and d
    or c
    and [hl]
    nop
    and [hl]
    ld bc, $064a
    and d
    and b
    db $e3
    db $e4
    push hl
    and b
    and d
    ld de, $0642
    and [hl]
    nop
    and [hl]
    db $10
    ld a, [hl+]
    and $00
    and $05
    ld de, $a62a
    xor a
    rst $20
    rrca
    ldh [$d4], a
    db $10
    push de
    ret nz

    sbc $10
    dec d
    ld b, $0b
    rlca
    ld bc, $01f0
    ld b, $0b
    rlca
    inc e
    dec d
    db $10
    dec d
    or h
    ld l, [hl]
    dec e
    dec b
    cp a
    db $10
    dec d
    or h
    ld l, [hl]
    dec e
    dec b
    or b
    sbc $c0
    dec d
    or h
    ld a, [hl]
    inc a
    cp a
    dec h
    dec c
    or h
    ld a, [hl]
    inc a
    cp a
    push hl
    ld h, b
    sub $61
    db $e4
    add h
    ld d, d
    jr jr_027_5282

    inc hl

jr_027_5282:
    cpl
    ld a, [hl-]
    or h
    ld c, [hl]
    jr jr_027_5214

    ld bc, $2f23
    ld a, [hl-]
    or h
    ld c, [hl]
    jr jr_027_5291

    inc hl

jr_027_5291:
    cpl
    ld a, [hl-]
    ld sp, $4eb4
    jr jr_027_5299

    inc hl

jr_027_5299:
    cpl
    ld a, [hl-]
    or h
    ld c, [hl]
    jr @+$03

    add $23
    cpl
    ld a, [hl-]
    or h
    ld c, [hl]
    jr jr_027_52a8

    inc hl

jr_027_52a8:
    cp a
    db $eb
    pop bc
    dec b
    rst $28
    or l
    ld l, [hl]
    ret nz

    dec b
    cp a
    dec b
    or e
    ld l, [hl]
    dec a
    ret nz

    dec b
    cp a
    dec b
    jp Jump_027_6e65


    dec a

jr_027_52be:
    ret nz

    dec b
    cp a
    dec b
    ld h, e
    ld h, [hl]
    dec a
    ret nz

    dec b
    xor a
    rst $20
    ld b, e
    ld h, h
    ld a, $d6
    adc a
    push af
    rst $30
    and b
    rst $30
    add [hl]
    dec c
    rst $30
    rst $10
    xor c
    rra
    dec l
    rla
    cp c
    rrca
    and b
    cp c
    rrca
    and b
    cp c
    rrca
    inc l
    daa
    ret nz

    db $f4
    and b
    push af
    and b
    or $a0
    add c
    inc c
    or a
    ld a, [hl+]
    pop bc
    rra
    ld [bc], a
    and b
    db $f4
    db $10
    and b
    db $10
    ld hl, $c31a
    inc b
    ld bc, $121e
    and b
    or $a0
    push af
    and b
    rst $30
    and b
    rlca
    xor c
    rra
    dec c
    db $10
    cp c
    rrca
    and b
    or $a0
    and b
    db $10
    dec b
    add [hl]
    rlca
    and b
    dec c
    db $10
    or $a0
    push af
    db $10
    and b
    jr z, jr_027_52be

    push af
    and b
    rlc [hl]
    and b
    dec c
    db $10
    and b
    and b
    and b
    or $a0
    push af
    and b
    or $21
    ld a, [de]
    db $10
    dec c
    db $10
    jp z, $1af7

    nop
    or $1a
    nop
    rst $30
    rst $30
    add c
    inc c
    ld a, [hl]
    ld a, [hl+]
    inc bc
    and l
    dec d
    ld b, a
    ld l, a
    rst $38
    jp nz, $952f

    add hl, hl
    jp z, Jump_027_403f

    and $91
    sbc $51
    db $db
    ld d, c
    dec bc
    rlc h
    ld a, a
    ld [hl+], a
    ld b, $99
    add hl, bc
    ld e, l
    dec de
    ld d, c
    dec bc
    xor d
    ld a, [hl+]
    ld hl, $5d1a
    dec de
    and d
    nop
    and b
    and d
    and d
    and d
    and d
    and b
    and d
    and d
    inc b
    and d
    and d
    ld e, h
    dec hl
    and d
    and b
    and d
    db $ed
    db $ed
    ld b, b
    and d
    and b
    and d
    db $ed
    db $ed
    and d
    ld e, h
    dec hl
    and d
    nop
    and b
    and d
    db $ed
    db $ed
    and d
    and b
    and d
    db $ed
    inc b
    db $ed
    and d
    ld e, h
    dec hl
    add hl, bc
    and b
    and d
    and d
    and d
    add b
    and d
    and b
    and d
    and d
    and d
    and d
    and b
    ld c, l
    ld b, $05
    ldh [rKEY1], a
    and b
    ld c, b
    ld e, a
    db $dd
    ld [hl], b
    ret c

    jr nz, jr_027_53bb

    dec b
    or h
    ld l, [hl]
    dec e
    dec b
    jr nz, jr_027_53c2

    dec b
    or h
    ld l, [hl]
    db $dd
    dec e
    dec b
    jr nz, jr_027_53ca

    dec b
    or h

jr_027_53bb:
    ld l, [hl]
    ld a, l
    ld [$1120], sp
    dec b
    or h

jr_027_53c2:
    ld l, [hl]
    rst $38
    ld a, l
    ld [$1873], sp
    or h
    ld l, [hl]

jr_027_53ca:
    ld a, l
    ld [$1e80], sp
    or h
    ld l, [hl]
    dec e
    dec b
    add b
    ld e, $1f
    or h
    ld l, [hl]
    dec e
    dec b
    add b
    sbc $80
    call nc, $d480
    ccf
    ld [hl], e

jr_027_53e1:
    sbc b
    ld a, h
    jr jr_027_5437

    add hl, de
    inc d
    sub l
    ld d, d
    add hl, de
    call nz, $209e
    jr nz, jr_027_53ef

jr_027_53ef:
    ld bc, $0601
    dec bc
    rlca
    ld bc, $0601
    db $e4
    dec bc
    rlca
    inc e
    dec d
    jr nz, jr_027_541e

    or h
    ld l, [hl]
    ld d, d
    add hl, de
    ld l, a
    ld [$b439], sp
    ld l, [hl]
    ld bc, $7d17
    ld [$6eb4], sp
    inc e
    dec b
    ld d, $20
    add $21
    cpl
    ld a, [hl-]
    or h
    ld c, [hl]
    ld d, $20
    ld hl, $086f
    or h
    ld l, [hl]

jr_027_541e:
    inc d
    ld bc, $7d16
    ld [$b420], sp
    ld l, [hl]
    ld bc, $1601
    inc l
    ld bc, $6f20
    ld [$9873], sp
    jr nz, jr_027_53e1

    rst $20
    rst $08
    ld [hl], e
    sbc b
    ld [hl], c

jr_027_5437:
    ld [$3a2f], sp
    or h
    ld e, [hl]
    jr @+$22

jr_027_543e:
    cpl
    ld a, [hl-]
    or h
    ld e, [hl]
    call z, $2018
    cpl
    ld a, [hl-]
    or h
    ld e, [hl]
    jr jr_027_546b

    cpl
    ld a, [hl-]
    or h
    ld e, [hl]
    inc l
    jr jr_027_5472

    ld l, a
    ld [$051c], sp
    ld [hl+], a
    or h
    ld c, [hl]
    jr jr_027_547b

    ld l, b
    nop
    ld hl, $3020
    ld a, [hl+]
    ld [hl+], a
    jr nc, jr_027_548e

    ld a, l
    ld [$0221], sp
    jr nz, jr_027_541e

    ld c, [hl]

jr_027_546b:
    ld [hl+], a
    ld bc, $2017
    jr nz, jr_027_5492

    inc bc

jr_027_5472:
    ld l, a
    ld [$6eb4], sp
    ld d, $20
    jr nz, jr_027_549b

    nop

jr_027_547b:
    jr nz, jr_027_543e

    or h
    ld l, [hl]
    ld bc, $0116
    jr nz, jr_027_54a5

    ld l, a
    ld [$9873], sp
    ld [bc], a
    ld hl, $e7af
    sub a
    ld b, b

jr_027_548e:
    add hl, sp
    sub $8f
    xor d

jr_027_5492:
    ld a, [hl+]
    ld c, l
    sbc e
    add hl, bc
    and b
    and b
    rla
    ld b, $1d

jr_027_549b:
    rra
    ld a, [hl+]
    ld c, l
    ld [hl+], a
    ld a, [de]
    ld a, [de]
    nop
    rla
    ld b, $00

jr_027_54a5:
    or e
    ld c, l
    push hl
    ld a, [de]
    nop
    ld c, l
    ldh a, [rNR21]
    ld c, l
    dec e
    rla
    ld b, $1f
    ld a, [hl-]
    xor d
    ld a, [hl+]
    cp a
    sbc d
    add hl, de
    adc [hl]
    inc l
    xor d
    ld a, [hl+]
    ld hl, $2d2a
    rla
    inc sp
    jr jr_027_5510

    xor d
    ld a, [hl+]
    rst $38
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    sbc e
    add hl, bc
    ld hl, $9c1a
    dec de
    cpl
    or d
    ccf
    db $db
    add hl, de
    or a
    ld a, [hl+]
    rst JumpTable
    call $afbb
    rst $20
    add hl, bc
    ld h, h
    ld a, $b0
    ld a, b
    ret c

    ld l, a
    and d
    and d
    and d
    and d
    add b
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    ld b, d
    ld b, $01
    ld c, a
    dec bc
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    ld hl, sp-$5e
    and d
    and d
    ld b, d
    ld b, $6f
    and $70
    sub $70
    sub $70
    sub $03

jr_027_5510:
    ld [hl], b
    sub $4a
    ld b, $a2
    and d
    and d
    and d
    and d
    and d
    jr @-$5c

    and d
    and d
    ld b, d
    ld b, $4f
    dec bc
    and d
    and d
    and d
    add b
    and d
    and d
    and d
    and d
    and d
    and d
    and d
    ld b, d
    ld b, $05
    rra
    inc d
    ld a, d
    sub h
    sbc a
    ld a, $b8
    ld b, l
    add hl, hl
    ld h, h
    ld a, $cc
    db $f4
    ld e, $1e
    and d
    cp d
    or e
    ld h, e
    rst $38
    ld h, l
    ld a, [hl-]
    sbc b
    inc e
    call c, $1129
    inc bc
    dec h
    inc de
    db $db
    add hl, de
    call c, $d129
    jp $c01f


    db $e3
    ld [hl], c
    push bc
    or b
    db $e3
    and c
    db $d3
    ld d, c
    add $fd

jr_027_5560:
    call z, Call_027_7404
    ld b, l
    add hl, hl
    ld h, h
    ld l, $8e
    daa
    or e
    and [hl]
    ld h, b
    jp c, $2a21

    ei
    pop af
    ld [bc], a
    ld d, c
    ld b, $d3
    adc h
    db $10
    ldh a, [$d6]
    sub b
    rst $10
    or b
    jp nc, $d7a0

    rlca
    jr nc, jr_027_5560

    ret nc

    push de
    add b
    db $d3
    di
    db $10
    inc bc
    db $d3
    ld [bc], a
    ld h, d
    dec e
    push de
    add hl, bc
    ld sp, $7f1e
    ld a, [c]
    ld h, c
    jp nz, Jump_027_50d7

    db $e3
    ld b, c
    jp c, $0299

    dec e
    jp c, Jump_027_6212

    ld c, d
    ld c, d
    pop de
    reti


    rrca
    ld hl, $f0ce
    call nc, $e9b0
    ld de, $efce
    adc h
    ld [bc], a
    rst $30
    ld b, $d6
    dec d
    cp b
    add hl, de
    or c
    rst $38
    db $e4
    inc bc
    inc bc
    rst $10
    inc b
    di
    ld e, e
    inc de
    inc h
    inc de
    or c
    nop
    add l
    inc bc
    push de
    dec d
    ld b, b
    inc bc
    cp e
    ld [bc], a
    rst $28
    dec a
    ld bc, $2aaa
    ld [hl+], a
    ld a, [de]
    db $d3
    ld [bc], a
    ld h, h
    adc l
    nop
    xor d
    ld a, [hl+]
    ld b, b
    inc bc
    ld hl, sp+$63
    ld h, c
    dec e
    ret


    inc bc
    xor $16
    sbc e
    add hl, bc
    jr c, jr_027_55fc

    ld h, d
    ld [bc], a
    inc d
    db $d3
    db $d3
    xor $26
    ld h, e
    ld a, [c]
    ld b, $1d
    ld h, l
    dec e
    ld hl, sp+$44
    dec e
    ld h, c
    adc l
    nop
    ld b, b

jr_027_55fc:
    db $d3
    ld a, [c]
    ld b, $84
    ld [bc], a
    ld a, [$0702]
    reti


    dec d
    sbc l
    ld [bc], a
    or b
    db $db
    db $db
    ld h, h
    ld a, $d6
    adc a
    db $10
    dec sp
    add hl, bc
    ei
    ld [bc], a
    ld h, d
    inc e
    inc bc
    xor h
    dec l
    and d
    db $10
    add h
    ld [bc], a
    and b
    ld h, h
    and b
    inc b
    inc bc
    and b
    sbc h
    dec de
    ret nz

    or e
    db $10
    ld h, d
    and b
    ld h, d
    and b
    inc b
    dec h
    cp b
    ld a, [de]
    dec sp
    ccf
    dec c
    ld h, $13
    ld h, l
    inc b
    inc bc
    or a
    ld a, [hl+]
    rra
    rlca
    ld h, c
    and b
    ld a, e
    and h
    dec h
    ld c, c
    ld e, a
    and b
    sub e
    ld [bc], a
    add hl, bc
    jr c, jr_027_5654

    jr z, jr_027_566b

    ld a, [de]
    ld h, c
    rst $38
    add hl, bc
    jr c, @+$0d

    jr z, @+$22

    ld a, [hl+]

jr_027_5654:
    add hl, bc
    jr c, jr_027_5662

jr_027_5657:
    jr z, jr_027_5679

    ld a, [hl+]
    add hl, bc
    jr c, jr_027_5668

    jr z, @+$53

    add b
    ld a, [bc]
    or h

jr_027_5662:
    or d
    cp e
    ld b, a
    ld e, c
    and [hl]
    xor a

jr_027_5668:
    rst $20
    rst $38
    ret nc

jr_027_566b:
    db $db
    and b
    push hl
    ld sp, $b0c3
    push de
    jr nz, jr_027_5657

    ld sp, $30cf
    reti


    db $10

jr_027_5679:
    db $e3
    rra
    ld bc, $33d3
    ld e, $aa
    ld a, [hl+]
    xor d
    ld a, [hl-]
    ldh [$dd], a
    rst $38
    ld l, b
    ld [bc], a
    db $f4
    ld e, l
    adc e
    jr nz, @-$0e

    jp nc, $df20

    and l
    rla
    ld hl, $481a
    nop
    ld a, a
    ld a, [hl+]
    ld bc, $18ee
    push de
    dec d
    add [hl]
    inc hl
    call z, $ee03
    ld hl, sp-$56
    ld a, [hl+]
    ld h, c
    ld a, [$35a0]
    inc hl
    and b
    dec a
    ld bc, $d2e0
    ldh a, [$dd]
    ldh [$d8], a
    pop hl
    cp l
    ld [bc], a
    cp e
    xor a
    rst $20
    ccf
    ld b, a
    ld e, c
    ld c, b
    ld e, c
    ld b, a
    ld e, c
    ld c, b
    ld e, c
    ld h, h
    ld a, $d6
    adc a
    and b
    and b
    adc d
    add hl, bc
    pop hl
    ld c, c
    add hl, bc
    xor h
    dec l
    ld [$f5f7], sp
    ld d, a
    ld c, d
    ld hl, sp-$0b
    rst $30
    ld [$277e], sp
    ld d, e
    ld a, [de]
    rlc [hl]
    cp b
    rra
    ld c, $00
    nop
    ld [$f4a0], sp
    or $a0
    and b
    ld [$e0a0], sp
    and b
    or $f4
    and b
    ld [$277e], sp
    cp c
    rrca
    ld hl, $261a
    ld b, d
    cp c
    rrca
    ld c, $00
    ld [$c2f7], sp
    inc b
    rst $30
    and b

jr_027_5703:
    ld d, d
    rst $30
    add c
    inc c
    rst $30
    ld [$277e], sp
    add hl, bc
    xor d
    ld a, [hl+]
    and b
    inc l
    and b
    add hl, bc
    xor h
    dec e
    ldh [rKEY1], a
    and b
    ld c, b
    ld e, a
    rst JumpTable
    ld b, b
    add hl, sp
    sub $8f
    db $db
    add hl, de
    sub $15
    add hl, hl
    ld bc, $fd62
    jr jr_027_5703

    add hl, de
    rst $38
    ld e, e
    inc de
    inc d
    ld bc, $2fec
    db $db
    add hl, bc
    sbc b
    inc e
    xor d
    ld a, [hl+]
    dec l
    rla
    db $db
    add hl, bc
    rst $38
    sbc b
    inc e
    xor d
    ld a, [hl+]
    dec l
    rla
    ld [hl+], a
    ld a, [de]
    db $db
    add hl, bc
    sbc b
    inc e
    add h
    ld b, $1f
    ld a, [hl-]
    rst $38
    ld [hl+], a
    ld a, [de]
    db $db
    add hl, bc
    add h
    ld b, $1f
    ld a, [hl-]
    ld [hl+], a
    ld a, [de]
    db $db
    add hl, de
    dec l
    rla
    rlca
    inc bc
    db $e3
    ld [c], a
    ld [bc], a
    xor d
    ld a, [hl+]
    and b

jr_027_5762:
    and b
    ld a, c
    cp a
    inc e
    ld b, e
    ld bc, $2aaa
    rlca
    add hl, sp
    inc b
    ld e, $24
    sub e
    xor a
    rst $38
    ld h, h
    ld a, $98
    ld c, b
    sbc l
    ld [$d730], sp
    ld d, $34
    ld [hl], $07
    ld b, $2a
    cp $07
    ldh a, [$b1]
    sub l
    ld b, h
    sub h
    ld a, [c]
    ld a, [bc]
    xor d
    ld a, [hl+]
    db $fd
    dec e
    ld c, d
    rlca
    ld a, $9a
    ld a, [c]
    ld a, [bc]
    xor d
    ld a, [hl+]
    dec l
    rla
    adc d
    rla
    sbc c
    add hl, bc
    and b
    and b
    ld c, $4d
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    and b
    ld c, l
    and b
    and b
    ld a, [$7f71]
    rla
    ld c, l
    xor d

jr_027_57af:
    ld a, [hl+]
    xor d
    ld a, [hl+]
    xor $16
    xor d
    ld a, [hl+]
    ld hl, $f71a
    ld a, [hl+]
    ld bc, $277e
    ld a, [de]
    nop
    ld c, l
    sub $15
    jr jr_027_57c7

    ld e, $24
    sub e

jr_027_57c7:
    xor a
    ei
    push af

jr_027_57ca:
    ld c, [hl]
    push af
    ld c, [hl]
    sub [hl]
    rst $08
    ld c, [hl]
    dec sp
    rla
    ld e, d
    jr c, jr_027_5839

    ld a, $21
    ld h, $8f
    rlca
    ld a, [de]
    rst $08
    ld [c], a

jr_027_57dd:
    ret nz

    ld [c], a
    inc sp
    jr z, jr_027_5762

    add c
    add d
    inc sp
    jr c, jr_027_57ca

    ccf
    rla
    ld a, [de]
    nop
    add e
    adc b
    add h
    xor d
    ld a, [hl+]
    ld c, $03
    inc sp
    jr z, jr_027_57dd

    add l
    add [hl]
    add a
    inc sp
    jr z, jr_027_57af

    adc a
    ld [c], a
    jr nz, @+$05

    dec sp
    ld bc, $c67f
    ld [de], a
    dec hl
    inc bc
    db $fd
    ld [bc], a
    db $10
    ld a, [hl+]
    and d
    rra
    and l
    dec d
    dec l
    inc b
    rst $38
    push af
    ld c, [hl]
    ret nz

    ccf
    adc l
    rlca
    call nc, $d42e
    ld c, $89
    ld b, $63
    rra
    ld a, a
    ld b, $bf
    ld [hl+], a
    ld d, $ec
    inc bc
    sbc c
    add hl, bc
    call c, $db19
    add hl, de
    ld [hl], $59
    ccf
    adc l
    ld a, [bc]
    ei
    db $db
    add hl, de
    or $08
    dec b
    ld c, b
    ld e, a

jr_027_5839:
    ld b, b
    ret c

    ld hl, $c42a
    daa
    ld hl, $f41a
    sub h
    nop
    and d
    rra
    pop af
    call nz, $2127
    ld a, [de]
    ld e, $4a
    call nz, $2f27
    ld hl, $1e1a
    ld c, d
    call nz, $2127
    ld a, [de]
    sub h
    rrca
    ld [$c277], a
    cpl
    db $d3
    inc b
    ld h, h
    ld c, [hl]
    nop
    sbc c
    add hl, bc
    ld [$2028], sp
    ld a, [de]
    ld b, d
    ld e, $ee
    xor $16
    sbc c
    inc b
    db $d3
    inc d
    ld hl, $f71a
    or c
    nop
    ld [hl], a
    and d
    rra
    jp nc, $2124

    ld a, [de]
    xor $7e
    daa
    ld [$2028], sp
    ld a, [hl+]
    rst $30
    db $e3
    ld a, [hl]
    daa
    ld h, l
    ld e, a
    and b
    and b
    xor $7e
    daa
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp $f7
    ld a, [hl]
    daa
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    dec l
    rla
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    ld a, [de]
    nop
    ld d, $71
    ld c, a
    ld [c], a
    ldh [$bd], a
    cp e
    xor a
    rst $20
    ld l, c
    ld h, h
    ld a, $b0
    ld a, b
    ret c

    ld l, a
    inc b
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    and b

jr_027_58ba:
    cp $04
    ld e, $17
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    ld h, c
    inc e
    ld e, $17
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    rst $38
    ld h, c
    inc e
    ld e, $17
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    ld h, c
    inc e
    ld e, $17
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    rst $38
    ld h, c
    inc e
    ld e, $17
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    ld h, c
    inc e
    ld e, $17
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    pop af
    ld h, c
    inc e
    or c
    nop
    ld a, e
    ld h, c
    inc e
    ld [hl], d
    ld a, [de]
    ld a, d
    ld a, [de]
    dec l
    rla
    ld h, [hl]
    inc b
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    and b
    inc b
    ld e, $24
    sub e
    xor a
    rst $38
    ld h, h
    ld l, $99
    add hl, bc
    ld h, l
    cpl
    cp l
    jr jr_027_58ba

    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    ld a, a
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    sbc e
    add hl, bc
    dec l
    rla
    ld [hl+], a
    ld a, [de]
    daa
    rst $08
    db $db
    add hl, de
    or a
    ld a, [hl+]
    ld a, a
    dec c
    ld b, d
    dec b
    and b
    sub h

jr_027_5932:
    ld hl, $312a
    dec c
    cp c
    rra
    ld a, [hl-]
    and b
    sub h
    xor d
    ld a, [hl+]
    call c, $aa29
    ld a, [hl+]
    sub h
    ld hl, $f32a
    pop af
    add hl, bc
    rra
    ld a, [hl-]
    and b
    sub h
    xor d
    ld a, [hl+]
    xor h
    dec l
    inc c
    inc bc
    ld b, c
    rlca
    rla
    xor d
    ld a, [hl+]
    xor h
    dec e
    ldh [$bd], a
    cp e
    xor a
    rst $20
    ei
    ld h, h
    ld a, $09
    ld a, [hl-]
    sub l
    dec e
    ld a, [de]
    ld d, [hl]
    ld [de], a
    xor d
    ld a, [hl+]
    sbc d
    inc d
    ld e, $0a
    sbc $63
    push de
    dec d
    xor d
    ld a, [hl+]
    sbc e
    inc b
    ld e, $0a
    ld h, d
    ld a, [c]
    jr z, jr_027_5932

    ld a, [hl+]
    sbc [hl]
    sub l
    dec e
    ld a, [de]
    adc d
    db $10
    xor d
    ld a, [hl+]
    sbc d
    inc d
    sub h
    nop
    sbc c
    add hl, bc
    ld a, e
    call nc, $b825
    ld a, [de]
    sub l
    dec e
    ld a, [bc]
    ld hl, $851a
    inc de
    cp b
    ld a, [de]
    sub l
    jr c, jr_027_59df

    sub h
    nop
    and d
    rra
    ld a, b
    ld [bc], a
    or a
    ld a, [hl-]
    sub d
    sbc d
    ld e, l
    rra
    ld a, [hl+]
    ld h, d
    call nc, Call_027_4225
    add hl, hl
    rra
    ld a, [hl-]
    and b
    add l
    inc de
    and b
    rlca
    ld d, e
    ld [bc], a
    ld e, $24
    sub e
    xor a
    rst JumpTable
    ld h, h
    ld a, $d6
    adc a
    pop de
    jp z, Jump_027_7c90

    db $f4
    inc bc
    dec e
    cp $fb
    nop
    inc c
    ld e, d
    dec e
    rst $10
    ld c, d
    dec e
    rst $10
    ld a, [bc]
    rst $38
    res 1, h
    rst $38
    res 1, h
    push de
    rst $38
    res 6, h
    rst $38
    dec de
    dec e
    rst $10

jr_027_59df:
    ld c, d
    dec e
    call c, $001a
    cp h
    dec bc
    ld e, $24
    ld de, $8c1a
    ld c, b
    ld e, a
    ld d, a
    ld h, h
    ld a, $d0
    ld l, a
    rst $38
    res 1, h
    rst $38
    dec sp
    dec e
    ld bc, $006c
    ld b, b
    or a
    adc h
    dec e
    adc h
    adc h
    dec e
    ld bc, $006c
    xor b
    adc h
    adc h
    dec e

jr_027_5a09:
    rst $10
    ld a, [hl+]
    dec e
    rst $10
    ld a, [hl-]
    nop
    ld bc, $045c
    dec e
    adc h
    and l
    dec d
    or d
    nop
    adc h
    adc h

jr_027_5a1a:
    dec e
    add hl, bc
    rst $10
    ld a, [hl+]
    dec e
    adc h
    add hl, bc
    jr z, jr_027_5a23

jr_027_5a23:
    or l
    adc h
    dec e
    cp b
    adc h

jr_027_5a28:
    adc h
    dec e
    jp c, $0b2a

    jr z, jr_027_5a2f

jr_027_5a2f:
    inc l
    dec e

jr_027_5a31:
    jp c, $2f2a

    dec bc
    jr z, jr_027_5a37

jr_027_5a37:
    ld a, h
    add hl, bc
    jr z, jr_027_5a1a

    adc l
    cp e
    dec bc
    jr z, jr_027_5abf

    ret nc

    rst JumpTable
    rst $10
    ld a, [bc]
    xor d
    ld a, [hl+]
    sbc e
    add hl, bc
    adc e
    cpl
    rst $10
    ld a, [de]
    xor d
    ld a, [hl+]
    dec e
    cp b
    and b
    and c
    ld b, l
    ld c, l
    nop
    rst $10
    ld a, [de]
    xor d
    ld a, [hl+]
    ld e, $8a
    ccf
    rst $38
    rst $10
    ld a, [hl+]
    ld hl, $b72a
    ld a, [hl+]
    sbc a
    rrca
    and b
    ld c, a
    ld b, b
    jr c, jr_027_5a09

    dec c
    and b
    dec l
    sbc l
    xor d
    ld a, [hl+]
    and b
    db $dd
    ld a, [bc]
    ld a, [bc]
    jr jr_027_5a28

    ccf
    and b
    and b
    inc c
    inc e
    di
    ld a, [bc]
    jr jr_027_5a31

    ccf
    and b
    and b
    rst $10
    ld a, [bc]
    sbc a
    dec c
    and b
    dec l
    ld hl, $a51a
    rst $10
    ld a, [bc]
    or h
    sbc a
    dec c
    and [hl]
    and [hl]
    ldh [$7d], a
    cp e
    xor a
    rst $20
    ld [hl], e
    ld h, h
    ld a, $d6
    sbc a
    and c
    and c
    rst $10
    ld c, d
    ld d, $16
    adc a
    ld bc, $7e45
    and c
    rst $10
    ld c, d
    ld d, $16
    ld l, a
    ld a, [hl+]
    ld bc, $fe7c
    ei
    nop
    cp h
    adc h
    ld b, e
    adc a
    ld a, h
    rst $10
    ld a, [hl+]
    or h
    nop
    or a
    adc h

jr_027_5abd:
    pop hl
    ld c, c

jr_027_5abf:
    inc c
    ld c, c
    jp c, $8c3a

    adc h
    ld d, a
    ld c, d
    ld l, l
    adc h
    ld d, $16
    nop
    ld h, h
    or l
    adc h
    pop bc
    ld c, c
    adc h
    adc h
    ld d, $16
    rst JumpTable
    call $01bb
    xor a
    rst $20
    cp e
    ld h, h
    ld a, $d6
    adc a
    dec e
    rst $10
    ld a, [bc]
    inc sp
    jr z, jr_027_5abd

    ld a, [bc]

jr_027_5ae7:
    dec e
    cp $5b
    cp a
    ld c, c
    inc bc
    reti


    ld c, d
    nop

jr_027_5af0:
    cp h
    ld l, $06
    ld bc, $d7cc
    ld c, d
    dec e
    rst $10
    ld c, d
    db $f4
    nop
    or l
    ld bc, $b4ac
    rst $38
    set 7, [hl]
    ld e, e
    ld c, c
    inc bc
    reti


    ld c, d
    call c, $1db3
    rst $10
    ld a, [bc]
    inc sp
    jr z, jr_027_5ae7

    ld a, [bc]
    dec e
    ld e, $24

jr_027_5b14:
    sub e
    xor a
    ld a, a
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    and b
    or h
    and b
    ld l, d
    dec l
    rla
    adc h
    xor d
    ld a, [hl+]
    ld b, b
    inc bc
    push af
    ld [bc], a
    ld c, $49
    ld l, $06
    adc h
    adc h
    ld hl, $1d2a
    push af
    and l
    jr jr_027_5af0

    ld h, $00
    rst $10
    ld a, [de]
    add hl, sp
    inc b
    dec e
    dec e
    ld d, a
    ld a, [hl+]
    or c
    nop
    cp $b5
    rst $10
    ld a, [de]

jr_027_5b4f:
    jr c, jr_027_5b69

    ld d, a
    ld a, [hl+]
    ld e, $24
    and [hl]
    dec d
    or a
    rrca
    and l
    jr jr_027_5b4f

    sbc [hl]
    dec e
    ld a, [bc]
    jr jr_027_5b14

    push af
    ld d, d
    ld a, [hl+]
    call Call_027_4706
    add hl, sp
    ret nz

jr_027_5b69:
    add hl, hl
    ld c, a
    cp b
    ld a, [de]
    sbc a
    dec c
    ld a, [bc]
    jr jr_027_5b82

    ld a, [hl+]
    or l
    and b
    dec l
    ld bc, $6499
    ld a, $b0
    ld a, b
    ret c

    ld l, a
    ld [hl], $07
    and b
    and b

jr_027_5b82:
    rst $10
    ld a, [bc]
    ld b, a
    ld a, [de]
    nop
    rla
    ld b, $3f
    dec c
    db $10
    and b
    and b
    rst $10
    ld a, [hl+]
    and b
    ld h, $a0
    rla
    ld b, $1f
    ld a, [hl+]
    adc h
    adc h
    ld a, [de]
    nop
    adc h
    adc h
    sbc a
    cp b
    ld a, [de]
    rst $38
    dec sp
    xor d
    ld a, [hl+]
    jp c, $003a

    inc e
    and b
    and b
    ld d, c
    ld [bc], a
    ld a, h
    and b
    and b
    db $db
    ld a, [hl+]
    nop
    inc l
    xor d
    ld a, [hl+]
    jp c, $203a

    ld a, [de]
    adc h
    ld [hl-], a
    adc h
    ld a, [de]
    nop
    adc h
    adc h
    cp b
    ld a, [de]
    ccf
    dec c
    db $10
    and b
    or d
    and b
    rst $10
    ld a, [hl+]
    and b
    and b
    rla
    ld b, $3f

jr_027_5bcf:
    dec c
    db $10
    ld a, [de]
    nop
    ccf
    rst $10
    ld a, [bc]
    ld a, [de]
    nop
    rla
    ld b, $cf
    rla
    or $28
    ld c, b
    ld e, a
    rst $38
    ld h, h
    ld a, $07
    ld a, [hl+]
    ld b, c
    add hl, bc
    cp $07
    ld a, [de]
    nop
    pop hl
    ld c, c
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    rst $38
    ld d, a
    ld c, d
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    ld d, a
    ld c, d
    push hl
    ld b, $7e
    daa
    or a
    rrca
    pop bc
    add hl, hl
    rlca
    and l
    ld [$277e], sp
    or a
    rrca
    db $10
    db $10
    inc c
    db $10
    db $10
    rst $38
    and l
    ld [$277e], sp
    or a
    rrca
    add $28
    and l
    ld [$277e], sp
    or a
    rrca
    ld d, a
    ld a, [hl+]
    rst $38
    sla [hl]
    jr nz, @+$1c

    ld d, a
    ld c, d
    cp b
    ld a, [de]
    rra
    ld a, [hl+]
    pop bc
    ld c, c
    cp b
    ld a, [de]
    rra
    inc d
    ld a, [bc]
    ld a, d
    pop hl
    ld e, l
    ld a, d
    dec l
    inc b
    ld d, a
    inc de
    ld b, $65
    cpl
    sbc c
    jr c, jr_027_5bcf

    rst JumpTable
    add hl, de
    and b
    push hl
    ld d, $f7
    ld e, $1d
    call nz, $1e17
    ld a, [bc]
    ld a, b
    rrca
    ld d, e
    ld a, [de]
    xor $a0
    or c
    rst $00
    add $17
    ld c, a
    ld a, [de]
    or a
    cpl
    rst $30
    and b
    or c
    add $17
    ld c, a
    ld a, [de]
    call nz, $f4a0
    scf
    inc b
    xor $f5
    or c
    add $17
    ld c, a
    ld a, [de]
    ldh [$a0], a
    db $f4
    and b
    rst $30
    and b
    adc b
    dec c
    add $17
    ld c, a
    ld a, [de]
    call nz, $f4a0
    db $db
    add hl, bc
    xor $f6
    or c
    add $17
    ld c, a
    ld a, [de]
    cp $a0
    add [hl]
    rlca
    inc sp
    ld [bc], a
    call nz, $1e17
    ld a, [bc]
    adc b
    rrca
    ret z

    add hl, sp
    call nz, $3717
    ld e, $4a
    xor d
    ld a, [hl+]
    call nz, $9417
    rrca
    ld a, [hl-]
    and d
    rra
    or h
    cp e
    dec b
    push bc
    rlca
    sub h
    xor a
    rst $20
    ld a, a
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    ld a, a
    rla
    sub a
    inc l
    ld e, a
    ld b, b
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld a, l
    ld a, a
    rla
    dec e
    ld h, d
    ret nc

    db $db
    add hl, de
    and b
    and b
    ld e, [hl]
    xor h
    dec l
    ld b, b
    inc bc
    ld e, $71
    db $db
    add hl, de
    and b
    and b
    ld e, [hl]
    xor h
    dec l
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    ld e, [hl]
    rst $00
    xor h
    dec l
    xor d
    ld a, [hl+]
    add hl, sp
    inc b
    dec e
    and b
    ld e, [hl]
    xor h
    dec l
    xor d
    ld a, [hl+]
    nop
    and b
    dec e
    ld a, [bc]
    dec e
    and b
    ld e, e
    ld e, l
    ld e, l
    cp $7d
    rra
    ld a, [hl-]
    sbc d
    add hl, de
    db $db
    add hl, de
    dec l
    rla
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    dec b
    rrca
    ld a, [hl-]
    ld [hl], d
    ld b, [hl]
    ld a, a
    rra
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    ld [hl+], a
    ld c, d
    dec e
    ld [bc], a
    ld a, a
    ld e, l
    ld e, l
    cp b
    ld e, l
    ld e, l
    ld e, h
    ld [hl+], a
    ld c, d
    dec e
    ld [de], a
    ld hl, $5e1a
    ld [hl+], a
    ld c, d
    dec sp
    dec e
    ld [de], a
    ld hl, $5e1a
    jr c, jr_027_5d3f

    dec d
    dec e
    ld a, [hl]
    daa
    and b
    and b
    ld [hl], b
    ld e, [hl]
    dec e

jr_027_5d34:
    ret nc

    dec e
    dec h
    ld a, [de]
    dec e
    ld [de], a
    ld hl, $5e1a
    inc bc
    inc sp

jr_027_5d3f:
    jr jr_027_5d56

    dec e
    or c
    nop
    ld a, a
    ld e, l
    ld e, l
    ld e, l
    inc c
    ld e, a
    ld e, [hl]
    ld [hl+], a

jr_027_5d4c:
    ld c, d
    dec e
    ld [de], a
    and b
    ld e, c
    ld e, l
    ld e, l
    and $5a
    ld [hl+], a

jr_027_5d56:
    ld c, d
    dec e

jr_027_5d58:
    ld [de], a
    and b
    ld e, [hl]
    xor d
    ld a, [hl+]
    inc h
    ld a, [hl+]
    call $0a27
    ld a, [hl]
    pop hl
    ld l, l
    ld [hl-], a
    dec l
    inc b
    or l
    or d
    ld a, [bc]
    and c
    ret nc

    ld e, a
    ld a, b
    db $dd
    cpl
    sub l
    ld a, [hl+]
    dec e
    ld [hl], $07
    add $a0
    inc e
    inc d
    add d
    ccf
    and c
    dec e
    db $10
    ld hl, $3d1a
    ld d, $3a
    and c
    di
    add hl, de
    and c
    db $db
    add hl, de
    cp b
    ld a, [de]
    adc a
    ld bc, $f1b1
    jr c, jr_027_5d34

    or e
    and c
    db $db
    add hl, de
    cp b
    ld a, [de]
    adc a
    ld bc, $a2b1
    jr c, @-$5c

    ld d, c
    and c

Jump_027_5da0:
    sub [hl]
    ld [bc], a
    sbc d
    add hl, de
    adc [hl]
    ld de, $a2b1
    jr c, jr_027_5d4c

    or e
    and c
    db $db
    add hl, de
    cp b
    ld a, [de]
    adc a
    ld bc, $a2b1
    jr c, jr_027_5d58

    or e
    and c
    db $db
    add hl, de
    cp b
    ld a, [de]
    adc a
    ld bc, $a2b1
    ld h, b
    and d
    or e
    and c
    dec e
    db $10
    ld hl, $3d1a
    ld d, $a1
    ld b, b
    or c
    and d
    and d
    or e
    and c
    dec e
    ld [hl], $07
    and b
    and e
    rla
    ld b, $1f
    inc b
    cp e
    and d
    and d
    ldh [$6d], a
    cp e
    xor a
    rst $20
    db $e3
    ld h, h
    ld l, $99
    add hl, bc
    and b
    or [hl]
    cp c
    push bc
    rlca
    ld e, $4a
    xor d
    ld a, [hl+]
    rst $38
    call nz, $1e17
    ld c, d
    xor d
    ld a, [hl+]
    call nz, $1e17
    ld a, [hl+]
    db $db
    add hl, de
    db $db
    add hl, bc
    ld c, d
    rla
    cp $9a
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    adc d
    scf
    add b
    rlca
    db $db
    add hl, de
    db $db
    add hl, de
    ld h, e
    rra
    ld a, a
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl-]
    add b
    rlca
    db $db
    add hl, de
    db $db
    add hl, de
    ld a, [de]
    nop
    or h
    rst $38
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or a
    ld a, [hl+]
    rrca

Jump_027_5e2f:
    ld a, [hl-]
    and d
    rra
    inc bc
    and l
    dec d
    dec l
    inc b
    rst $00
    ld h, h
    ld a, $d6
    adc a
    ld b, b
    inc bc
    xor $1d
    db $10
    sbc e
    add hl, bc
    or a
    ld a, [hl+]
    pop hl
    ld a, a
    rla
    dec e
    push af
    dec e
    db $10
    db $db
    add hl, de
    cp b
    ld a, [de]
    ld a, a
    rla
    ld [hl], b
    dec e
    db $f4
    dec e
    db $10
    sbc e
    add hl, bc
    or a
    ld a, [hl+]
    ld a, a
    rla
    dec e
    ld e, b
    or $1d
    and d
    sbc c
    inc l
    ld de, $0004
    sbc c
    add hl, hl
    dec e
    add d
    db $10
    sbc e
    add hl, bc
    and c
    ld de, $a0a1
    ld sp, $1a5f
    ld l, l
    sub [hl]
    ld [bc], a
    db $10
    sbc c
    inc l

jr_027_5e7b:
    ld de, $0004
    and d
    rrca
    sub [hl]
    ld [bc], a
    ld de, $9bff
    add hl, bc
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    sbc d
    add hl, de
    xor d
    ld a, [hl+]
    ld a, [hl]
    daa
    xor d
    ld a, [hl+]
    db $db
    add hl, de
    dec bc
    xor h
    dec e
    ldh [$bd], a
    cp e
    xor a
    rst $20
    ccf

jr_027_5e9d:
    ld h, h
    ld l, $97
    jr jr_027_5e7b

    ld e, a
    ld bc, $b76c
    ld a, [hl+]
    rst $38
    adc e
    and b
    and b
    ld e, a
    sbc h
    dec de
    nop
    ld a, h
    or a
    ld a, [hl+]
    rst $38
    ld c, e
    pop bc
    rlca
    adc h
    or a

jr_027_5eb8:
    ld a, [hl+]
    nop
    nop
    dec sp
    and b
    and b
    ld e, a
    and b
    adc h
    and e
    adc h
    adc h
    and e
    adc h
    or a
    ld a, [hl+]
    ld a, a
    rla
    ld e, [hl]
    and b
    adc h
    pop bc
    rlca
    or e
    reti


    ld c, d
    add b
    rlca
    ld e, [hl]
    and b
    ld bc, $7e6c
    daa
    ld e, [hl]
    ld hl, $bb1a
    ret c

    ld e, d
    add b
    rlca
    ld e, [hl]
    ld hl, $d81a
    ld e, d
    ld c, c
    ld [bc], a
    ld a, [hl]
    sub h
    sbc a
    add b
    cp b
    or b
    ld a, h
    or b
    cp c
    or [hl]
    or b
    ld [de], a
    ld b, $08
    or b
    or b
    jr nc, jr_027_5eb8

    jr jr_027_5e9d

    ld e, [hl]
    and b
    or c
    rst $00
    rst $10
    ld a, [bc]
    or d
    ccf
    ld e, $17
    ld e, [hl]
    and b
    or c
    rst $10
    ld a, [bc]
    or d
    ccf
    cp l
    ld e, $17
    ld e, [hl]
    ld b, d
    add hl, bc
    ld hl, sp+$0f
    xor d
    ld a, [hl+]
    ld c, $1c
    ld e, [hl]
    xor d
    ld a, [hl+]
    ld [hl], e
    xor d
    ld a, [hl+]
    dec c
    inc de
    and b
    ld e, [hl]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    adc l
    ld a, [bc]
    or e
    call nc, Call_027_5fa0
    xor d
    ld a, [hl+]
    and b
    and h
    ld de, $7e92
    daa
    xor d
    ld a, [hl+]
    inc e
    and b
    sub h
    sub l
    ld a, [de]
    ld c, $4c
    ld hl, $941a
    and c
    ld b, l
    ld d, a
    ld [hl], c
    ld a, [bc]
    rra
    ld a, [hl-]
    ld hl, $941a
    sub l
    ld a, [de]
    or h
    rrca
    ld a, [hl+]
    or l
    inc bc
    or $28
    ld c, d
    ccf
    rst $38
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rra
    rlca
    db $db
    add hl, de
    sbc e
    add hl, bc
    rst $38
    ld [hl+], a
    ld a, [de]
    db $fd
    inc bc
    sbc c
    add hl, bc
    sbc e
    add hl, bc
    ld hl, $b82a
    ld a, [de]
    ld e, a
    ld a, [hl+]
    ld [hl+], a
    ld a, [de]
    pop hl
    xor d
    ld a, [hl+]
    and b
    ld [hl], c
    nop
    or l
    sbc e
    add hl, bc
    xor d
    ld a, [hl+]
    ld [hl+], a
    ld a, [de]
    ld a, a
    db $fd
    ld a, [hl]
    ld d, c
    ld c, b
    ld l, $06
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    ld b, $1d
    adc a
    inc bc
    and c
    nop
    and c
    ld h, $a1
    and c
    ld h, $a1
    and c
    ld h, $b9

Call_027_5fa0:
    sub l
    ld a, [de]
    nop
    or l
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    ld [hl], c
    ld a, [bc]
    or h
    rst JumpTable
    call $bb02
    xor a
    rst $20
    ldh [$b8], a
    or b
    cp c
    and d
    and d
    ld h, h
    ld a, $44
    add hl, de
    rst $38
    dec bc
    ld d, c
    rlc h
    or a
    adc h
    adc l
    reti


    ld a, [hl-]
    and [hl]
    rst $38
    ld a, e
    dec e

jr_027_5fc9:
    add l
    db $db
    ld a, [de]
    and [hl]
    rst $38
    dec de
    dec e
    adc h
    adc h
    cpl
    rst $10
    ld a, [hl+]
    ld a, [de]
    dec e
    db $fd
    rlca
    ld [hl], e
    ld bc, $5d9c
    dec de
    adc h
    adc h
    dec e
    xor $2f
    ld bc, $5d5c
    dec de
    rst $10
    ld a, [hl-]
    cpl
    rst $10
    ld a, [hl+]
    ld e, l
    dec bc
    add d
    ld d, $1c
    dec e
    dec e
    rst $10
    ld c, d
    dec l
    ld bc, $2a95
    dec e
    adc h
    dec e
    ld d, c
    reti


    ld a, [hl-]
    and [hl]
    nop
    or l
    sub l
    ld a, [de]
    dec e
    rst $10
    ld e, d
    and [hl]
    sbc c
    rra
    inc d
    or l
    and c
    di
    add hl, de
    pop af
    add hl, de
    cp e
    and [hl]
    xor a
    rst $20
    rst $38
    ld h, h
    ld l, $99
    add hl, bc
    ld h, l
    cpl
    cp l
    jr jr_027_5fc9

    ld a, [hl+]
    rst $10
    ld a, [bc]
    xor d
    ld a, [hl+]
    ld a, [hl]
    daa
    db $e4
    add hl, bc
    and b
    rst $10
    ld a, [hl+]
    and b
    add hl, bc
    xor h
    dec l
    ld a, [de]
    nop
    rst $10
    ld c, d
    rra
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    rst $10
    ld a, [hl+]
    or a
    ld a, [hl+]
    ld a, a
    rla
    add hl, bc
    and b
    xor $b1
    rst $10
    ld a, [bc]
    xor $a0
    add hl, bc
    xor h
    dec l
    ld hl, $ee1a
    rst $10
    ld a, [bc]
    sub $ee
    or a
    ld a, [hl+]
    rra
    ld a, [hl-]
    xor $d7
    ld a, [bc]
    xor $b7
    ld a, [hl+]
    ld a, a
    rla
    nop
    add hl, bc
    and b
    and b
    ldh [$e1], a
    ld [c], a
    and b
    and b
    add $09
    xor h
    dec l
    xor d
    ld a, [hl+]
    db $e3
    db $e4
    push hl
    xor d
    ld a, [hl+]
    ld e, $24
    ld de, $05a6
    and $00
    and $49
    ld c, a
    ld b, l
    or d
    ld a, [bc]
    ld a, h
    call nc, $8caf
    adc h
    ld e, [hl]
    xor d
    ld a, [hl+]
    and b
    ld hl, $3ada
    or e
    adc h
    and b
    ld e, [hl]
    ldh a, [rNR21]
    dec e
    and b
    db $eb
    jp c, $803a

    rlca
    ld e, [hl]
    ld b, b
    inc bc
    ret nc

    ld a, [de]
    nop
    db $db
    ld a, [hl+]
    add b
    rlca
    ld a, [hl]
    ld e, a
    ldh a, [rNR21]
    db $db
    add hl, bc
    db $db
    ld a, [hl+]
    or d
    ccf
    ld a, [de]
    nop
    reti


    ld c, d
    or e
    ld [hl-], a
    adc h
    xor d
    ld a, [hl+]
    and b
    and b
    rst $10
    ld a, [bc]
    xor h
    dec l
    adc h
    adc h
    cp a
    xor d
    ld a, [hl+]
    rst $10
    ld a, [bc]
    cp b
    ld a, [de]
    rst $38
    dec de
    ld a, [de]
    nop
    rst $10
    ld a, [hl+]
    and b
    sbc h
    dec de
    ld a, c
    nop
    inc e
    and b
    and b
    rst $10
    ld a, [bc]
    xor d
    ld a, [hl+]
    ld e, $24
    sub e
    xor a
    rst $30
    ld h, h
    ld e, $41
    add hl, hl
    reti


    ld e, a
    db $10
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    inc e
    inc d
    or d
    ccf
    rst $38
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    ccf
    dec c
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    inc e
    inc d
    jr nz, @+$1c

    sub [hl]
    ld [bc], a
    xor e
    xor d
    ld a, [hl+]
    xor h
    dec l
    db $10
    ld a, [de]
    nop
    ld b, l
    xor d
    ld a, [hl+]
    and b
    inc e
    inc d
    ccf
    jr nz, jr_027_6124

    sub [hl]
    ld [bc], a
    sbc e
    add hl, bc
    db $db
    add hl, de
    ld a, $1d
    xor d
    ld a, [hl+]
    and b
    and b
    cp $d0
    ld a, [de]
    nop
    dec a
    ld d, $aa
    ld a, [hl+]
    sbc d
    add hl, de
    db $db
    add hl, de
    ld a, $1d

jr_027_6124:
    xor d
    ld a, [hl+]
    rlca
    xor d
    ld a, [hl+]
    inc e
    ld b, h
    sub e
    xor a
    sbc a
    or d
    ld a, [de]
    ld b, d
    add hl, de
    sbc c
    add hl, bc
    ld b, e
    add hl, de
    rra
    ld a, [hl-]
    and b
    and b
    push bc
    rla
    add e
    cp b
    ld a, [de]
    rra
    rlca
    db $10
    and b
    db $10
    and b
    and b
    push bc
    rla
    inc bc
    cp b
    ld a, [de]
    rra
    rlca
    db $10
    and b
    db $10
    and b
    and b
    sub l
    dec b
    db $db
    add hl, de
    dec e
    dec l
    rla
    and b
    db $10
    and b
    db $10
    and b
    adc $a0
    push bc
    rla
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    and b
    and b
    push bc
    rla
    cp b
    ld a, [de]
    add hl, sp
    rra
    ld a, [hl-]
    and b
    and b
    push bc
    rla
    cp b
    ld a, [de]
    rra
    rlca
    db $10
    pop af
    pop hl
    ld [hl], $07
    sub l
    dec e
    and b
    ld b, l
    sbc e
    add hl, bc
    ld e, $17
    ld [hl], $07
    sbc h
    and b
    and b
    push bc
    rla
    cp b
    ld a, [de]
    rra
    ld a, [hl-]
    and b
    and b
    push bc
    rla
    dec bc
    cp b
    ld a, [de]
    rst JumpTable
    call $afbb
    rst $20
    rra
    ld h, h
    ld a, $d6
    adc a
    ld sp, $3125
    dec h
    dec sp
    dec h
    or e
    ld h, b
    adc h
    jr c, jr_027_61f0

    adc h

Jump_027_61ac:
    adc h
    ld sp, $d705
    ld a, [de]
    dec a
    dec b
    or e
    ld h, b
    ld b, e
    rst $10
    ld a, [de]
    ld sp, $8c05
    adc h
    pop af
    adc h
    dec a
    dec b
    or e
    ld a, $60
    rst $10
    ld a, [de]
    ld sp, $d705
    ld a, [de]
    dec a
    dec b
    jr nc, @+$07

    adc h
    adc h
    sbc c
    ld sp, $8c25
    adc h
    inc a
    dec d
    jr nc, jr_027_61dd

    adc h
    adc h
    ld sp, $fc25

jr_027_61dd:
    adc h
    adc h
    inc a
    dec d
    jr nc, @+$07

    ld bc, $3c6c
    dec d
    jr nc, jr_027_61ee

    ld bc, $5f6c
    inc a
    dec d

jr_027_61ee:
    jr nc, jr_027_6225

jr_027_61f0:
    ld sp, $3b25
    dec h
    ldh [$bd], a
    cp e
    xor a
    rst $20
    ld c, a
    ld h, h
    ld a, $d6
    adc a
    xor d
    ld a, [hl+]
    sbc b
    inc e
    rra
    and b
    sbc h
    dec de
    or e
    sub b
    and b
    rra
    inc e
    rra
    add hl, sp
    inc b
    and b
    and b
    ld hl, sp+$03

Jump_027_6212:
    add c
    dec l
    rla
    and b
    inc e
    pop af
    inc e
    and b
    dec e
    ld hl, sp+$03
    inc bc
    ld hl, sp+$03
    dec l
    rla
    and b
    rra
    inc e

jr_027_6225:
    rra
    and b
    dec e
    ld a, $1f
    sub [hl]
    ld [bc], a
    ld b, b
    inc bc
    ld a, [hl]
    daa
    ld b, b
    inc bc
    ld a, [c]
    inc bc
    dec e
    and b
    adc h
    rra
    rra
    dec l
    rla
    ld hl, $1f2a
    rra
    and b
    ld hl, sp+$03
    add e
    xor h
    dec l
    sbc e
    add hl, bc
    and b
    and b
    rra
    dec e
    and b
    ld hl, sp+$03
    ld b, [hl]
    and b
    ld e, l
    ld [de], a
    sbc e
    add hl, bc
    and b
    and b
    rra
    db $db
    add hl, bc
    dec e
    ld a, [hl]
    and b
    ld e, h
    ld [hl+], a
    xor d
    ld a, [hl+]
    sbc b
    inc e
    reti


    inc d
    ld e, $24
    sub e
    xor a
    ld e, a
    ld h, h
    ld a, $d0
    ld l, a
    ld l, a
    ld a, [hl+]
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    and c
    xor a
    jr @+$28

    inc e
    inc e
    ld h, $95
    ld a, [hl+]
    sub l
    ld a, [de]
    xor a
    jr @+$1e

    pop af
    inc e
    rst $00
    sub l
    ld a, [hl+]
    sub l
    ld a, [de]
    xor a
    jr @+$28

    inc e
    ld h, $95
    ld a, [hl+]
    sub l
    ld a, [de]
    rst $30
    ld l, a
    ld a, [hl+]
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    and c
    adc a
    adc h
    inc sp
    jr z, @+$21

    ld a, [hl-]
    xor d
    ld a, [hl+]
    rst $28
    xor d
    ld a, [hl-]
    or d
    ccf
    xor d
    ld a, [hl+]
    ld c, e
    ld a, [hl-]
    ld b, l
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    call c, $0119
    ldh [$dd], a
    ld a, a
    ret nc

    rst JumpTable
    sub l
    ld a, [hl+]
    sub l
    ld a, [de]
    ld hl, $8e2e
    inc de
    inc sp
    ld e, b
    adc d
    jr nc, @-$5d

    add b
    and c
    dec e
    and c
    and c
    ld b, l
    dec e
    inc c
    db $d3
    ld [bc], a
    xor b
    ld h, d
    ld h, e
    dec e
    adc [hl]
    inc de
    dec e
    ld [hl-], a
    jr c, jr_027_633b

    rlca
    inc bc
    cp $1d
    adc [hl]
    inc de
    sub l
    ld a, [de]
    jp $9902


    ld [bc], a
    add h
    ld b, $3f
    jr c, jr_027_631c

    jr c, @+$3a

    ld h, c
    dec e
    ld b, l
    xor $16
    xor d
    ld a, [hl+]
    ld [hl+], a
    ld a, [de]
    ld h, d
    dec e
    db $eb
    db $ed
    ld h, $aa
    ld a, [hl+]
    pop af
    ld b, b
    inc bc
    ld l, d
    ld a, h
    ld a, [de]
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    ld d, $1d
    adc e
    cpl
    pop hl
    cp l
    cp e
    xor a
    rst $20
    ld l, a
    or h
    ld l, [hl]
    or h
    ld a, $2f
    ld a, [hl-]
    or h
    ld l, [hl]
    ld bc, $3a2f
    or h
    ld l, [hl]

jr_027_631c:
    ld bc, $2fdb
    ld a, [hl-]
    or h
    ld l, [hl]
    ld bc, $3a2f
    or h
    ld l, [hl]
    ld bc, $3a2f
    or h
    ld l, [hl]
    or [hl]
    ld bc, $3a2f
    or h
    ld l, [hl]
    ld bc, $3a2f
    or h
    ld l, [hl]
    ld bc, $3a2f
    dec l

jr_027_633b:
    or h
    ld l, [hl]
    ld bc, $3a2f
    or h
    ld l, [hl]
    ld bc, $ea2f
    xor b
    cp b
    or b
    cp h
    rlca
    ld a, [de]
    cp h
    rlca
    ld a, [de]
    cp h
    cp l
    jr jr_027_6361

    ld hl, $21dd
    call $fd10
    ld [hl+], a
    dec c
    ld a, $3e
    ld a, $3e
    ld b, $3e
    ld a, [hl+]

jr_027_6361:
    ld c, l
    ld hl, $3e1d
    ld a, $3e
    ld a, $3e
    add e
    ld a, [hl+]
    ld c, l
    ld hl, $3e1d
    ld a, $3e
    ld a, $3e
    ld a, [hl+]
    dec a
    rrca
    db $10
    db $fd
    ld [hl+], a
    call $cd21
    db $10
    ld a, [hl+]
    cp [hl]
    or d
    ld a, d
    or d
    ld [bc], a
    cp [hl]
    ld c, d
    ccf
    ld b, c
    ld h, h
    ld l, $c9
    or b
    and b
    or b
    ret


    jp c, $114f

    adc e
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    and b
    ld e, l
    ld [de], a
    ld de, $a0a0
    ld [hl], c
    ld b, [hl]
    inc b
    and b
    and b
    ld e, l
    ld [bc], a
    cp a
    ld de, $a0a0
    and h
    ld hl, $2a95
    and h

Jump_027_63ac:
    and b
    and b
    ld de, $0d1e
    ld de, $44a0
    res 4, h
    sub l
    ld a, [hl+]
    and h
    res 4, b
    ld e, l
    ld [bc], a
    or a
    db $10
    sub d
    sub d
    jp z, $95a4

    ld a, [hl+]
    and h
    jp z, $1f92

    ld c, l
    rlca
    ld h, h
    ld l, $f6
    rrca
    rst $30
    rrca
    cp e
    jr c, jr_027_63e5

    and b
    sla d
    and h
    sub l
    ld a, [hl+]

jr_027_63da:
    and h
    res 4, b
    ld e, l
    ld [de], a
    ld de, $44a0
    jp z, $95a4

jr_027_63e5:
    ld a, [hl+]
    and h
    jp z, Jump_027_5da0

    ld [bc], a
    cp a
    db $10
    ld de, $a0a0
    and h
    sub l
    ld a, [hl+]
    and h
    and b
    and b
    ld h, h
    ld de, $dfbd
    ld c, l
    or l
    and c
    and l
    dec d
    inc l
    inc d
    ld bc, $1e64
    cp h
    or b
    or a
    and c
    or [hl]
    or b
    cp h
    xor l
    cp e
    jr c, jr_027_63da

    ld l, b
    inc a
    ld [hl], l
    ld a, [hl+]
    rrc [hl]
    nop
    jp z, $3c68

    and c
    ld [hl], l
    ld a, [hl+]

jr_027_641c:
    jp z, $00b1

    cp a
    ld a, [de]
    nop
    add hl, bc
    sub l
    ld a, [hl+]
    cp $09
    ld a, [de]
    nop
    ld e, $0d
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    adc e
    cpl
    adc d
    rra
    sub l
    ld a, [hl+]
    ld e, a
    sub l
    ld a, [hl+]
    ld c, $03
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    adc e
    cpl
    cp a
    ld a, [de]
    nop
    add hl, bc
    ld l, l
    sub l
    ld a, [hl+]
    add hl, bc
    ld a, [de]
    nop
    ld e, $0d
    bit 5, b
    inc a
    ld [hl], l
    ld a, [hl+]
    sra l
    ld c, $00
    jp z, $3c68

    ld [hl], l
    ld a, [hl+]
    jp z, $241e

    or d
    cp [hl]
    ld b, b
    or d
    or l
    and c
    or h
    or d
    cp [hl]
    ld c, e
    cpl
    push af
    ld h, h
    ld e, $bc
    rlca
    ld a, [hl+]
    cp h
    cp e
    jr c, jr_027_641c

    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    rst $28
    rra
    ld a, [hl-]
    rst $30
    dec bc
    xor d
    ld a, [hl+]
    db $fd
    inc bc
    cp a
    xor d
    ld a, [hl+]
    and h
    nop
    xor d
    ld a, [hl+]
    ld a, a
    ld e, $0d
    or $1b
    jr z, jr_027_64c7

    cp b
    ld a, [de]
    ld a, a
    rla
    jr z, @+$3b

    and h
    nop
    and b
    inc e
    and b
    ld a, c
    rra
    ld a, [hl+]
    jr z, @+$3b

    or [hl]
    ld a, [de]
    or c
    nop
    cp a
    rst $38
    xor d
    ld a, [hl+]

Jump_027_64a6:
    and h
    nop
    xor d
    ld a, [hl+]
    ld e, $0d
    xor d
    ld a, [hl+]
    ld a, d
    rrca
    xor d
    ld a, [hl+]
    ld a, [hl]
    daa
    xor a
    xor d
    ld a, [hl+]
    xor d
    ld a, [hl+]
    db $fd
    inc bc
    db $10
    ld a, [de]
    cp [hl]
    pop hl
    dec l
    cp [hl]
    ld c, e
    cpl
    add hl, de
    ld h, h
    ld a, $b7

jr_027_64c7:
    and c
    ld b, $3a
    cp $07
    res 4, b
    and b

jr_027_64cf:
    ld b, d
    add hl, bc
    sub l
    ld a, [hl+]
    add hl, bc
    and b
    and b
    rrc [hl]
    nop
    jp z, $a008

    and b
    and h
    sub l
    ld a, [hl+]
    and h
    and b
    and b
    jp z, $1e11

    rla
    res 4, b
    and h
    sub l
    ld a, [hl+]
    and h
    and b
    bit 0, c
    dec l
    rla
    and b

jr_027_64f3:
    jp z, $a4a0

    and h
    ld [hl], c
    ld a, [bc]
    and h
    ld e, b
    and h
    and b
    jp z, $03fd

    xor d
    ld a, [hl+]
    and h
    ld [hl], c
    ld a, [bc]
    and h
    xor c
    xor d
    ld a, [hl-]
    or e
    and h
    ld a, [de]
    nop
    and h
    ld [hl], c
    ld a, [bc]
    and h
    ld a, [de]
    nop
    sub e
    dec l
    dec e
    and b
    inc b
    and b
    and h
    ld [hl], c
    ld a, [bc]
    and h
    and b
    dec hl
    dec a
    nop
    and h
    add hl, bc
    and h
    and b
    and h
    ldh [$e1], a
    ld [c], a
    jr nc, jr_027_64cf

    and b
    and h
    add hl, bc
    dec l
    dec e
    ld [hl], c
    ld h, $e3
    db $e4
    ld b, [hl]
    push hl
    ld a, c
    ld b, [hl]
    ldh [$3d], a
    and $00
    and $49
    ld c, a
    push af
    ld h, h
    ld e, $bc
    rlca
    ld a, [hl-]
    cp h
    cp h
    jr z, jr_027_64f3

    ld a, [hl+]
    xor d
    ld a, [hl+]
    cp b
    ld a, [de]
    adc l
    rra
    ld a, [hl-]
    and b
    and h
    nop
    xor d
    ld a, [hl+]
    or c
    nop
    cp a
    or $1b
    sbc a
    jr z, jr_027_6597

    ld a, [de]
    nop
    ld e, $0d
    rst $30
    dec bc
    or [hl]
    ld a, [hl+]
    and b
    and l
    or [hl]
    ld a, [bc]
    ld hl, sp-$4f
    nop
    ld a, e
    rst $30
    dec bc
    xor d
    ld a, [hl+]
    rst $30
    dec bc
    xor h

jr_027_6575:
    dec l
    rst $30
    dec bc
    adc c
    or [hl]
    ld a, [hl+]
    and b
    and l
    or [hl]
    ld a, [bc]
    or c
    nop
    cp a
    or $1b
    rst $38
    jr z, jr_027_65c0

    ld a, [de]
    nop
    ld e, $0d
    xor d
    ld a, [hl+]
    and h
    nop
    xor d
    ld a, [hl+]
    ld a, [hl]
    daa
    xor d
    ld a, [hl+]
    ld d, a
    xor d

jr_027_6597:
    ld a, [hl+]
    db $fd
    inc bc

jr_027_659a:
    db $10
    ld a, [de]
    cp [hl]
    pop hl
    dec a

jr_027_659f:
    cp [hl]
    inc l
    inc d
    adc l
    ret nc

    sub $ab
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    xor e
    nop

Jump_027_65ac:
    xor e
    inc [hl]
    ld c, h
    ld sp, $3c34
    xor e
    nop
    xor e
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    xor e
    nop
    add $ab
    inc [hl]
    ld c, h
    inc [hl]

jr_027_65c0:
    inc a
    xor e
    nop
    xor e
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    jr jr_027_6575

    nop
    xor e
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    xor e
    nop
    xor e
    ld h, e
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    xor e
    nop
    xor e
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    xor e
    inc l
    nop
    xor e
    inc [hl]
    ld c, h
    inc [hl]
    inc a
    xor e
    rst $08

jr_027_65e9:
    and $f1
    ld h, h
    ld l, $b9
    or [hl]
    or b
    ld [de], a
    ld b, $bb
    jr c, jr_027_659a

    jr jr_027_65f9

    db $10
    rst $38

jr_027_65f9:
    ld d, b
    ld a, [hl+]
    adc $4c
    ld [hl+], a
    ld [de], a
    ld d, b
    ld a, [hl+]
    ld a, $f2
    nop
    ldh [rNR42], a
    jp nc, $0379

    ld a, h
    or b
    cp c
    ld a, [de]
    nop
    or d
    ld a, [de]
    dec c
    db $10
    and l
    jr jr_027_659f

    rla
    or a
    rst $38
    and l
    jr jr_027_65e9

    ld c, h
    and a
    ld [$3a57], sp
    adc $4c
    and a
    ld [$3a57], sp
    ld e, $24
    dec c
    and [hl]
    dec d
    and c
    and l
    dec d
    inc l
    inc d
    ld sp, hl
    ld h, h
    ld a, $b7
    and c
    ld b, $3a
    sbc $1f
    sub l
    ld a, [hl+]
    sub l
    ld a, [hl+]
    ld l, h
    inc l
    sub e
    and c
    add $a0
    ld b, $a0
    dec hl
    xor d
    ld a, [hl+]
    dec hl
    and b
    xor h
    ld d, $9f
    and b
    ld b, $aa
    ld a, [hl+]
    ld hl, $ac1a
    ld d, $a0
    ld b, $a0
    dec hl
    xor d
    ld a, [hl+]
    db $fc
    dec hl
    and b
    xor h
    ld d, $a0
    ld b, $aa
    ld a, [hl+]
    ld hl, $ac1a
    ld d, $a0
    ld b, $e4
    and b
    dec hl
    xor d
    ld a, [hl+]
    dec hl
    and b
    xor h
    ld d, $a0
    sub $82
    ccf
    ld [hl], a
    sub l
    ld a, [hl+]
    adc e
    cpl
    db $10
    ld a, [hl+]
    or l
    ld [hl], c
    ld a, [bc]
    and l
    dec d
    dec l
    inc b
    ld a, a
    ld h, h
    ld l, $05
    dec l
    jp c, $955f

    ld a, [hl+]
    sub l
    ld a, [hl+]
    ld l, h
    inc l
    and c
    add $b7
    ld [$aea1], sp
    xor $aa
    ld a, [hl+]
    and b
    and b
    xor $ae
    ld b, h
    and c
    or [hl]
    adc a
    inc bc
    xor [hl]
    and b
    xor $aa
    ld a, [hl+]
    xor $44
    and b
    xor [hl]
    ld c, l
    dec b
    and c
    and c
    xor [hl]
    ld a, [de]
    nop
    xor $14
    and b
    xor $1a
    nop
    xor [hl]
    ld c, l
    dec b
    and c
    and c
    xor [hl]
    ld b, h
    and b
    xor $aa
    ld a, [hl+]
    xor $a0
    xor [hl]
    ld c, l
    dec b
    or l
    ld [$aea1], sp
    xor $aa
    ld a, [hl+]
    and b
    and b
    xor $ae
    ld a, h
    and c
    or h
    sbc a
    and $82
    ccf
    sub l
    ld a, [hl+]
    adc e
    cpl
    db $10
    ld a, [hl+]
    or l
    rlca
    ld [hl], c
    ld a, [bc]
    and l
    dec d
    dec l
    inc b
    ld a, a
    nop
    db $dd
    add d
    ccf
    sub l
    ld a, [hl+]
    adc e
    cpl
    ldh a, [$dc]
    and b
    ld b, $f1
    add hl, bc
    adc $fc
    ld d, b
    call $0fa2
    xor h
    ld d, $a0
    ld b, $99
    inc b
    ld a, [de]
    nop
    add b
    rlca
    rst $00
    xor h
    ld d, $a0
    ld b, $99
    inc b
    and b
    ld c, a
    and b
    add b
    rlca
    xor h
    ld d, $ff
    and b
    ld b, $99
    inc b
    ld a, [de]
    nop
    add b
    rlca
    xor h
    ld d, $a0
    ld b, $64
    ld l, a
    xor h
    ld d, $1f
    ldh a, [$dc]
    add d
    ccf
    sub l
    ld a, [hl+]
    adc e
    cpl
    ld c, c
    ld [bc], a
    call z, $b2cd
    ld b, b
    adc $ad
    call $ceb2
    rst $08
    inc l
    inc d
    rst $38
    ld h, h
    ld a, $d6
    adc a
    dec d
    dec l
    dec d
    dec l
    sla a
    db $10
    ld [c], a
    ld de, $11d2
    jp nc, $11ff

    jp nc, $d211

    ld de, $11d2
    jp nc, $2d15

    dec d
    dec l
    bit 0, a
    pop hl
    sbc l
    ld [bc], a
    cp e
    xor a
    rst $20
    adc a
    ld b, b
    add hl, bc
    jp nz, $c22f

    cpl
    sbc l
    add hl, bc
    or a
    and b
    cp b
    dec b
    dec l
    add c
    dec b
    dec l
    cp c
    and b
    nop
    and b
    cp b
    or a
    inc c
    inc bc
    db $e3
    xor d
    ld a, [hl+]
    ld sp, $b90d
    nop
    and b
    ldh [rIF], a
    pop af
    add hl, sp
    ld a, [de]
    nop
    add $44
    xor $06
    db $10
    ld a, [hl-]
    and e
    and e
    or e
    or $18
    ld l, $04
    ld hl, $2e64
    cp c
    and e
    and e
    or e
    ld b, d
    add hl, hl
    nop
    and b
    rst $28
    ldh [rIF], a
    ld h, h
    cpl
    sbc c
    add hl, bc
    ld l, h
    rra
    and b
    ldh [rIF], a
    xor d
    ld a, [hl+]
    db $76
    ld a, [hl+]
    ld [hl], a
    xor $06
    add b
    ld a, [bc]
    ld a, [de]
    nop
    or h
    and d
    cpl
    dec l
    ld bc, $0a81
    or l
    inc hl
    adc e
    rra
    ld [hl], b
    ld a, [de]
    or h
    cp e
    and b
    ld a, a
    ld [$4097], a
    add hl, bc
    ld h, h
    ld a, $99
    ld [$fda0], sp
    rla
    and b
    cp b
    dec b
    dec e
    adc c
    sub l
    ld a, [de]
    or [hl]
    cp c
    dec l
    rla
    and b
    or e
    ld b, l
    ld [hl], l
    ld a, [hl+]
    ld a, e
    ld l, e
    rra
    dec l
    rla
    and b
    ld a, [c]
    dec b
    ld a, [c]
    add hl, hl
    ld l, h
    rrca
    dec l
    rla
    and b
    and c
    ld a, [c]
    dec b
    and b
    or c
    and e
    and e
    jr nc, jr_027_6807

    or c
    dec l
    rla
    ld b, d
    and b
    ld a, [c]
    dec b
    and b

jr_027_6807:
    or c
    and e
    and e
    jr nc, jr_027_6814

    or c
    ld l, l
    dec l
    rla
    and b
    ld a, [c]
    dec b
    ld b, d

jr_027_6814:
    add hl, de
    or a
    ld l, h
    rrca
    dec l
    rla
    and b
    call z, $b5ba
    ld [hl], l
    ld a, [de]
    inc c
    inc bc
    or h
    cp e
    db $fd
    inc bc
    add b
    ld a, [de]
    db $fd
    ld b, a
    ld e, a
    and b
    dec l
    ld bc, $0040
    xor d
    ld a, [hl+]
    ld hl, $1c1a
    ld de, $05e0
    inc bc
    ld b, l
    ld a, a
    dec l
    nop
    cp a
    ldh [$d7], a
    ldh [$d7], a
    ld h, e
    ld c, [hl]
    ld h, l
    ld e, [hl]
    ld c, a
    nop
    ld h, h
    ld l, $b9
    ld d, d
    ccf
    add hl, bc
    ld l, $00
    or e
    or e
    add e
    nop
    rst $28
    or c
    rst $28
    db $10
    ld a, a
    inc l
    ld b, $2d
    db $10
    pop af
    jp c, $1af1

    xor h
    ld bc, $6af8
    pop af
    ld a, [bc]
    and c
    ld a, c
    push af
    ld a, [bc]
    rst $28
    db $10
    inc l
    ld b, $2d
    db $10
    pop af
    ld a, [bc]
    or h
    nop
    or c
    ld [hl], a
    ld sp, $fb06
    ld a, [hl-]
    pop af
    ld a, [bc]
    and c
    push af
    ld a, [bc]
    ld b, e
    nop
    ei
    ld a, [hl+]
    or b
    ld a, [hl+]
    or a
    db $10
    ld a, [hl-]
    or h
    ld b, d
    rrca
    cp e
    dec l
    nop
    ld c, a
    ld h, h
    ld e, [hl]
    ld h, h
    ld c, [hl]
    ld l, a
    rst $30
    ld d, c
    rst $08
    or e
    jr nz, jr_027_68ed

    ld e, a
    ccf
    cpl
    db $db
    daa
    ld d, b
    cpl
    ld [hl], l
    rla
    ld e, d
    nop
    push af
    ld e, l
    ld de, $efef
    xor h
    ld hl, $75ef
    rla
    push hl
    ld b, $f4
    dec c
    db $10
    jr nz, jr_027_6909

    ld c, a
    rst $38
    ld d, a
    ld a, [hl+]
    cp $1d
    ld d, d
    ld c, a
    ld d, a
    ld a, [hl+]
    ld e, [hl]
    ld de, $06e0
    ld [hl], l
    rla
    pop bc
    add hl, hl
    ccf
    ld e, [hl]
    ld hl, $0ce4
    ld d, [hl]
    rra
    or $00
    ld a, l
    ld a, [de]
    ld b, c
    cpl
    cp e
    and a
    inc bc
    ld c, c
    ld [bc], a
    ld b, d
    rrca
    cp e
    nop
    rst JumpTable
    ld h, h
    ld a, $d6
    adc a
    add c
    reti


    ld b, c
    adc $90
    dec e
    rst $30
    db $e3
    inc l

jr_027_68ed:
    adc d
    ld c, c
    ld a, a
    ld d, $18
    ldh [rNR21], a
    pop hl
    ld b, $74
    rlca
    rra
    inc e
    push hl
    inc c
    ld [hl-], a
    ld d, $f7
    ld a, a
    ld a, [$fe01]
    dec e
    ld d, $28
    push hl
    inc c
    ld e, d

jr_027_6909:
    nop
    db $dd
    ld de, $17d7
    rst $30
    rst $38
    rst $00
    ld d, $18
    rlca
    call $e210
    inc e
    pop hl
    ld b, $e0
    ld b, $1b
    scf
    ld d, e
    nop
    rra
    ld e, d
    nop
    db $e3
    inc c
    and h
    nop
    db $dd
    ld bc, $df40
    rst $38
    ld h, h
    ld a, $d6
    adc a
    ld l, d
    ld de, $0e4a
    add sp, $6c
    pop hl
    call c, $0ce2
    ld e, d
    nop
    ei
    sub [hl]
    dec a
    db $ed
    inc l
    rst $28
    and $2c
    ld e, d
    inc d
    db $ec
    inc l
    pop hl
    ld b, $e7
    inc e
    rst $38
    ld e, d
    inc d
    db $ec
    inc a
    rst $20
    inc e
    add sp, $3c
    db $ec
    inc l
    ld b, $39

jr_027_6959:
    ld h, a
    ld l, c
    ldh a, [$2b]
    rst $38
    sbc b
    dec l
    add [hl]
    add hl, de
    ld c, $00
    ld b, $29
    rla
    jr @-$76

    add hl, de
    ld e, $24
    and [hl]
    dec b
    dec b
    ld b, d
    ld e, a
    cp e
    xor a
    rla
    ld a, a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ld h, c
    ld l, [hl]
    ld l, b
    ld a, $ff
    ld a, [hl+]
    rla
    jr jr_027_69a0

    call c, $f1a1
    xor e
    add hl, hl
    nop
    dec de
    inc b
    ld [de], a
    inc e
    ld a, h
    ld a, [bc]
    ld l, h
    inc d
    inc sp
    nop
    dec de
    rla
    jr z, @-$11

    db $ed
    xor e
    add hl, hl
    nop
    dec de
    db $ed
    db $ed
    db $fd

jr_027_69a0:
    ld e, d
    nop
    db $ed
    xor d
    add hl, sp
    nop
    dec de
    or d
    ld [$16c7], sp
    xor e
    add hl, hl
    ld h, [hl]
    dec l
    ld a, c
    or e
    db $10
    jr nz, jr_027_6959

    xor e
    add hl, hl
    jr nz, jr_027_69b8

jr_027_69b8:
    ld c, c
    ld [bc], a
    ld b, d
    cpl
    cp e
    ld bc, $146c
    ld a, a
    ld h, h
    ld a, $d6
    adc a
    inc d
    rlca
    ld [hl-], a
    ld d, $c8
    ld b, $69
    ld bc, $1d8e
    and l
    or e
    add d
    db $10
    ld d, d
    db $10
    rst $28
    rst $28
    db $dd
    ld de, $1632
    and l
    inc d
    rlca
    rst $00
    ld l, b
    ld de, $10bd
    pop hl
    ld l, c
    jr nz, @+$22

    rst $28
    db $dd
    ld de, $69c1
    ei
    add [hl]
    ld bc, $10cd
    jr nz, @-$26

    scf
    pop hl
    ld b, $e3
    inc c
    ld e, [hl]
    ld hl, $08aa
    ld a, a
    rst $10
    scf
    inc e
    daa
    inc de
    rlca
    or l
    nop
    pop bc
    jr jr_027_6a13

    ld [hl-], a
    ld [de], a
    rla
    and l
    ld e, [hl]
    and l
    and c
    ld bc, $0ce2
    db $dd

jr_027_6a13:
    ld bc, $bde0
    cp e
    xor a
    daa
    rst $20

jr_027_6a1a:
    ld h, h
    ld a, $65
    ld l, [hl]
    sbc a
    ld sp, hl
    and l
    db $f4
    ld c, e
    nop
    ld d, l
    ld bc, $083c
    db $ed
    xor h
    add hl, hl
    and l
    xor b
    ld [$1154], sp
    or $aa
    ld c, c
    pop bc
    call nc, $06e1
    ei
    ld d, $07
    ret c

    scf
    and l
    ld l, [hl]
    ld bc, $08c5
    ld d, $07
    rlca
    ld [bc], a
    push hl
    ld b, $6e
    and l
    ld l, [hl]
    ld bc, $06ca
    ld d, $07
    and l
    ld [$7e3e], sp
    ld bc, $ae20
    jr nz, jr_027_6a1a

    ld a, [bc]
    or e
    db $10
    and e
    db $10
    db $ed
    ld a, a
    ld bc, $c920
    ld b, $13
    di
    dec d
    and c
    ld bc, $eda5
    rst JumpTable
    db $ed
    rst $38
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ret nc

    rst JumpTable
    sub b
    jp c, $d200

    ldh a, [$d1]
    rst $20
    db $10
    rst $10
    add l
    ld bc, $00a4
    db $ed
    or $e0
    ld b, $1b
    daa
    pop hl
    ld e, l
    dec b
    ld b, d
    ccf
    cp e
    xor a
    daa
    ld l, a
    ld h, h
    ld a, $d6
    adc a
    pop hl
    pop bc
    ret nc

    pop af
    db $ed
    or $00
    and [hl]
    jr @-$0a

    add d
    and c
    call c, $ed21
    db $ed
    dec d
    db $ed
    dec d
    and l
    ld [$a516], sp
    sub $01
    db $dd
    ld de, $86f7
    dec c
    rst $30
    db $f4
    or $15
    ret c

    ld bc, $dcf4
    ld hl, $2aa1
    inc e
    db $f4
    and c
    db $f4
    and a
    jp $bd1a


    db $10
    ld [bc], a
    ld c, $f5

jr_027_6acc:
    rst $30
    sub $01
    push af
    ld d, e
    ld a, [bc]
    ld h, a

jr_027_6ad3:
    dec a
    ld [hl+], a
    ld d, $1f
    ld d, a
    ld a, [hl+]
    or $a1
    db $dd
    ld de, $04c6
    rst $28
    ld e, a
    add a
    rrca
    rlc [hl]
    ld l, c
    ld bc, $241e
    ld b, d
    adc a
    cp e
    xor a
    daa

jr_027_6aee:
    rst $38
    ld h, h
    ld a, $d6
    adc a
    ld d, a

jr_027_6af4:
    ld c, d
    ld d, a
    ld a, [hl-]
    adc $4c

jr_027_6af9:
    pop bc
    add hl, hl
    and l
    jr jr_027_6acc

    ld c, h
    add a
    db $10
    daa
    and l
    jr jr_027_6ad3

    ld c, h
    and l
    inc c
    db $ed
    and e
    ld [hl], a
    rrca
    and $f4
    dec c
    db $10
    and l
    jr @-$59

    and l
    and c
    ld bc, $18a5
    adc $4c
    rst $38
    db $10
    daa
    and l
    jr jr_027_6aee

    ld c, h
    add $28
    and l
    jr jr_027_6af4

    ld c, h
    ld d, h
    ld a, [bc]
    ld d, [hl]
    ld a, [hl-]
    cp a
    adc $4c
    ld a, [hl+]
    inc e
    ld d, a
    ld a, [hl+]
    ld e, $24
    and [hl]
    dec b
    ld b, d
    ld e, a
    cp e
    xor a
    scf
    ccf
    ld h, h
    ld a, $0a
    ld a, [hl+]
    ld b, e
    add hl, de
    cp a
    pop af
    or c
    pop de
    or c
    add sp, -$11
    ld a, [hl+]
    ld sp, $2814
    sub h
    xor e
    db $fd
    sbc h
    pop af
    adc [hl]
    pop af
    or e
    and c
    ld b, e
    sub e
    ld bc, $0455
    xor e
    xor e
    db $fd
    xor e
    inc e
    rra
    or e
    ld h, b
    jr nz, jr_027_6af9

    xor e
    db $fd
    xor e
    ld b, $39
    adc h
    ld h, $20
    call c, $ab94
    ld b, $59
    db $fc
    ld de, $2a10
    ldh [rHDMA5], a
    inc b
    ld b, h

jr_027_6b7a:
    cpl
    ld [bc], a
    cp e
    xor a
    daa
    rst $10
    ld h, h
    ld a, $d6
    adc a
    or c
    ld bc, $06ed
    add hl, hl
    and l
    ld h, d
    ld bc, $118e
    add d
    pop af
    and $2c
    db $fd
    db $fd
    and l
    add hl, bc
    and c
    ld c, l
    ld d, $8f
    jp $0611


    add hl, hl
    jr z, jr_027_6ba6

    sbc l
    ld h, $a5
    rst $28
    jr nz, jr_027_6bac

jr_027_6ba6:
    add hl, hl
    db $dd
    ret z

    ld b, $ed
    ld e, [hl]

jr_027_6bac:
    ld de, $06c8
    ld b, $29
    jr nz, jr_027_6b7a

    ld b, $5e
    ld de, $288f
    ld b, $06
    add hl, hl
    or l
    nop
    db $dd
    ld de, $eded
    and c
    rst $20

jr_027_6bc3:
    inc e
    jr jr_027_6bc3

    db $fd
    rst $28
    ld h, d
    ld bc, $1d8e
    db $ed
    and l
    and c
    ld d, c
    ld b, $29
    rst $28
    and l
    db $ed
    sbc l
    ld b, c
    and l
    ld b, $29
    and l
    ld b, [hl]
    db $ed
    ld [hl], h
    rlca
    rrca
    ld a, [hl-]
    ldh [$fd], a
    db $fd
    ld b, h
    ccf
    cp e
    ld bc, $27af
    ld a, a
    ld h, h
    ld a, $d6
    adc a
    ld a, [hl-]
    ld b, $71
    ld a, [bc]
    dec b
    ld c, c
    ld a, $1d
    ld a, [de]
    rla
    and c
    inc bc
    dec b

jr_027_6bfc:
    ld c, c
    ld a, $1d
    and c
    and l
    ld b, l
    and l
    and c
    dec e
    inc b
    ld a, [$0afa]
    add hl, sp
    or e
    dec e
    and c
    and l
    dec e
    jr nz, @-$59

    and c
    dec e
    ld b, h
    ld a, [$390a]
    or e
    dec e
    ld d, b
    and c
    and l
    dec e
    and l
    ld [hl-], a
    ld [$0afa], sp
    add hl, sp
    or e
    and b
    dec e
    and c
    and l

jr_027_6c28:
    dec e
    and l
    ld [hl-], a
    ld [$0afa], sp
    add hl, sp
    and b
    or e
    db $10

jr_027_6c32:
    and c
    and l
    dec e
    dec d
    jr jr_027_6c32

    ld a, [bc]
    add hl, sp
    db $fc
    or e
    db $10
    ld a, [de]
    rla
    ld d, $18
    rst $20
    inc e
    ld a, $1d
    sub l
    ld a, [hl+]
    ld [hl-], a
    ld d, $03
    dec bc
    ld c, c
    pop hl
    sbc l
    cp e
    nop
    sbc a
    ldh [$d7], a
    ld h, d
    ld e, [hl]
    ld h, [hl]
    ld c, [hl]
    rst $28
    dec d
    inc de
    ld [$10ef], sp
    ld a, [bc]
    add hl, hl
    pop af
    dec l
    jr nz, @-$4b

    and l
    ld b, h
    ld e, d
    nop
    ld a, [bc]
    add hl, hl
    dec l
    jr nz, jr_027_6bfc

    dec e
    ld l, h
    and l
    and l

jr_027_6c70:
    ld a, [bc]
    add hl, hl
    dec l
    jr nz, jr_027_6c28

    ld a, [hl-]
    ld b, $a6

jr_027_6c78:
    nop
    rst $28

jr_027_6c7a:
    rst $38
    inc l
    ld b, $2d
    jr nz, jr_027_6c70

    dec hl
    ld d, e
    nop
    db $fc

jr_027_6c84:
    dec b
    dec l
    jr nz, jr_027_6c78

    dec hl
    jr @+$09

    cp $45
    xor d
    add hl, de
    rst $28
    dec d
    ld b, $19
    ld a, [hl-]
    ld b, $2c
    ld b, $2d
    jr nz, jr_027_6c7a

    ld a, l
    ld b, $bb
    ld e, l
    sbc l
    jp hl


    ld b, a
    rlca
    ldh [$d7], a
    ldh [$d7], a
    ld h, b
    inc d
    ld l, b
    or b
    ld l, b
    or b
    ld l, b
    ccf
    ld l, b
    ld a, $ff
    ld a, [hl+]
    and [hl]
    nop
    or l
    ld de, $29ab
    nop
    dec de
    and l
    pop af
    rst $38
    ld [$aa16], a
    add hl, sp
    nop
    dec de
    and [hl]
    nop
    add hl, de
    rra
    xor e
    add hl, hl
    nop
    dec de
    and [hl]
    nop
    rst $38
    rst $00
    ld d, $ab
    add hl, hl
    nop
    dec de
    and [hl]
    nop
    add hl, de
    jr jr_027_6c84

    add hl, hl
    jr nz, jr_027_6cdc

jr_027_6cdc:
    ldh [$5d], a
    ld c, $bb
    ld l, h
    inc d
    ldh [$d7], a
    ldh [$d7], a
    db $e3
    ld h, h
    ld a, $d6
    adc a
    rst $28
    and l
    ccf
    ld b, $11
    inc b
    ld [de], a
    ld [hl], h
    rlca
    sub e
    rst JumpTable
    add hl, bc
    and h
    db $10
    rst $28
    db $ed
    or $00
    db $ed
    ld b, h
    sbc l
    ld de, $f6a2
    push hl
    ld b, $f7
    db $ed
    db $ed
    ld [hl-], a
    ld [bc], a
    db $ed
    xor h
    ld hl, $81e3
    pop de
    add a
    ld bc, $a1ed
    and c
    add a
    ld de, $0e03
    ld e, [hl]
    ld de, $edf8
    db $f4
    db $ed
    jr jr_027_6d28

    adc b
    ld bc, $08a7
    cp $fd

jr_027_6d27:
    add b

jr_027_6d28:
    ld bc, $f6f0
    or $ed
    rst $28
    inc b
    ld [bc], a
    ret nz

    ld b, $cd
    db $10
    and c
    ld bc, $1671
    jr jr_027_6d27

    db $ed
    ccf
    ld l, c
    ld bc, $241e
    ld b, d
    adc a
    cp e
    ld bc, $07af
    rst $08
    ld h, h
    ld a, $d6
    adc a
    and h
    nop
    db $e4
    ld h, $f5
    rst $30
    jp $8e08


    dec e
    ld b, [hl]
    ld b, h
    rlca
    ld c, $a5
    jr @-$11

    rst $28
    ld b, l
    call $ed10
    inc hl
    ld e, d
    nop
    adc b
    ld bc, $f4f4
    db $ed
    ei
    ld hl, $efb3
    ld [$a119], sp
    db $ed
    adc b
    ld bc, $f4f4
    db $ed
    rst $28
    ld b, d
    ld a, [de]
    sbc l
    ld de, $edef
    inc e
    rst $28
    ld [$1c3e], sp
    inc [hl]
    rst $28
    ld a, [de]
    adc [hl]
    ld de, $a61b
    nop
    ld d, d
    db $10
    rst $28
    ld a, [de]
    ld c, l
    adc h
    ld h, $a5
    ret z

    inc b
    add $38
    rst $28
    db $ed
    sbc l
    ld de, $7ea5
    jr jr_027_6df1

    ld de, $08a5
    inc bc
    ld [de], a
    sbc [hl]
    ld de, $01c3
    rst $00
    ld c, c
    rst $30
    ld b, $ed
    ld e, $24
    sub e
    xor a
    cp a
    ld h, h
    ld a, $d0
    ld l, a
    ld e, a
    ld hl, $06c7
    add $06
    jp $ef06


    ld l, [hl]
    pop af
    ld bc, $0d90
    ld b, h
    rst $28
    ld c, l
    db $ed
    and c
    db $ed
    db $ed
    add hl, bc
    pop bc
    ld b, $a1
    db $ed
    cp a
    add sp, -$4d
    db $ed
    db $ed
    and c
    add [hl]
    db $ed
    adc b
    ld bc, $08a5
    rst $30
    db $ed
    and c
    db $ed
    adc a
    ld de, $eda4
    db $ed
    jp z, $f616

    or $86
    ld bc, $6fed
    ld a, [hl+]
    pop bc
    ld e, d
    nop
    db $ed

jr_027_6df1:
    rst $28
    rst $28
    db $ed
    jr nz, jr_027_6e39

    nop
    ld e, a
    ld de, $753f
    ld bc, $1179
    jp $6e11


    ld de, $b162
    ldh [$dd], a
    jp $dfd0


    ldh [$d6], a
    and l
    and l
    db $ed
    ld c, l
    jp $c72a


    ld b, $7f
    db $fc
    ld de, $d8a0
    db $10
    rst JumpTable
    ld d, b
    pop de
    and c
    ld bc, $1f86
    jp $f701


    ld l, h
    and l
    and l
    dec c
    nop
    rlca
    ld bc, $d8f7
    daa
    sub b
    ld a, [bc]
    push af
    rst $30
    dec c
    nop
    ld d, a
    ld de, $0175
    rst $30
    ld d, d

jr_027_6e39:
    nop
    and l
    ld [$f6be], sp
    pop hl
    cp l
    nop
    cp e
    nop
    rst $38
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ld h, b
    sbc $65
    dec l
    db $f4
    ld a, [bc]
    ld d, d
    inc b
    rst $38
    db $eb
    daa
    ld h, l
    dec l
    ld d, c
    ld c, a
    ld l, h
    inc d
    ld h, l
    dec l
    and h
    db $10
    xor d
    add hl, hl
    ld e, [hl]
    dec a

Jump_027_6e65:
    rst $28
    ld d, b
    inc b
    ld d, e
    cpl
    ld l, h
    inc d
    ld h, l
    dec l
    rst $28
    ld [c], a
    ld bc, $0609
    ld l, h
    inc d
    dec bc
    ldh [rNR22], a
    ld b, b
    ccf
    cp e
    db $eb
    daa
    rst $38
    ld h, d
    ld e, [hl]
    ld h, [hl]
    ld c, [hl]
    ccf
    pop hl
    ldh a, [$e7]
    ld a, [c]
    nop
    ld hl, $1948
    ld bc, $fdae
    push af
    ret nz

    inc bc
    ld h, l
    ld hl, $6548
    db $fc
    ld [hl+], a
    ld [hl-], a
    ld de, $2035
    ld d, c
    ld b, $7f
    db $ed
    db $10
    ld sp, $20c1
    pop de
    db $10
    pop de
    ldh [rTIMA], a
    and [hl]
    dec b
    ld b, d
    ccf
    cp e
    ld bc, $002d
    ld l, a
    ld h, h
    ld a, $d6
    adc a
    ld bc, $f0c1
    ldh a, [$62]
    inc hl
    ld c, $a6
    nop
    dec e
    cp e
    adc d
    nop
    cp l
    db $10
    ld h, e
    and $00
    ld c, b
    inc de
    db $f4
    inc b
    dec e
    cp l
    ld [hl+], a
    ld a, a
    ld [c], a
    ret nz

    pop de
    ret nc

    pop bc
    ret nc

    sub c
    sub $b1
    ret nz

    ldh [$3d], a
    ld b, d
    ld e, a
    cp e
    ld bc, $07af
    ccf
    ld h, d
    ld e, [hl]
    ld [$a05a], sp
    ret nc

    ld d, a
    rra
    ld e, e
    nop
    rst $30
    db $10
    ld h, d
    rra
    cp $1f
    cp $15
    add d
    or b
    jr nz, jr_027_6f14

    ld d, $18
    rst $30
    ld b, $cc
    ld [bc], a
    cp $1d
    db $fd
    ret c

    daa
    and l
    cp c
    add hl, de
    adc h
    db $10
    ret nz

jr_027_6f09:
    db $ec
    or c

jr_027_6f0b:
    db $ec
    ld [de], a
    cp e
    ret nc

    rst $30
    inc bc
    ldh [$5d], a
    ld b, d

jr_027_6f14:
    rra
    cp e
    nop
    ld a, a
    ld h, d
    ld e, [hl]
    ld h, l
    ld c, [hl]
    rrca
    add sp, $11
    ld [$01fa], sp
    rst $00
    ld d, $e0
    ld b, $10
    ld a, l
    cp [hl]
    ld bc, $a610

jr_027_6f2c:
    nop
    inc sp
    ld h, $0a
    ld a, [hl-]
    jr nc, jr_027_6f09

    jr nz, jr_027_6f0b

    or e
    or $10
    ld d, $18
    pop bc
    jr jr_027_6f2c

    ld l, e
    ld bc, $38ae
    ret c

    daa
    ld d, c
    ccf
    rst $28
    xor a
    ld hl, $37d8
    ld d, e
    nop
    xor l
    ld hl, $c720
    ld b, $d7
    rla
    ret z

    ld b, $0e
    ld b, l
    ld e, $24
    and [hl]
    dec b
    ld b, d
    ld e, a
    cp e
    nop
    or e
    ldh a, [rTIMA]
    ld h, d
    ld a, $b9
    and a
    ld l, d
    inc d
    rrca
    and $a7
    ld h, b
    dec bc
    db $fc
    ld b, h
    and c
    ld d, h
    ld [bc], a
    ld c, h
    ld bc, $261c
    ld bc, $60c6
    dec bc
    rlca
    ld e, c
    rst $38
    dec bc
    ld h, $60
    dec bc
    rlca
    ld e, c
    dec bc
    ld h, $60
    dec bc
    rlca
    ld e, c
    dec bc
    ld h, $60
    dec bc
    xor e
    rlca
    ld e, c
    dec bc
    ld h, $b3
    ld b, b
    nop
    db $fd
    ld e, d
    ld bc, $1cfd
    ld bc, $0cf9
    ld d, $ba
    or l
    ld l, b
    dec c
    daa
    ld b, $09
    ld b, $1c
    ld bc, $002e
    inc d
    or e
    and a
    ld b, b
    ccf
    cp e
    dec bc
    ld d, $a7
    nop
    rst $38
    ldh [$67], a
    jp nz, Jump_027_5e2f

    db $fd
    ldh [$57], a
    ld [bc], a
    ld b, $5a
    dec e
    rra
    nop
    jp nz, $1a2f

    and a
    ld d, b
    inc b
    and c
    inc e
    ld de, $05f0
    ld de, $f5ef
    rst $08
    db $76
    rlca
    ld d, e
    nop
    inc c
    ld b, [hl]
    ld d, e
    cp l
    or e
    rst $28
    ld hl, sp+$01
    ld d, [hl]
    rra
    adc $15
    jp z, $ee04

    ld a, [de]
    ret z

    ld b, $a5
    or c
    ld b, b
    db $10
    sub c
    dec e
    db $fd
    ld c, a
    nop
    jr nz, jr_027_7045

    nop
    inc c
    ld b, $70
    ld a, [de]
    db $dd
    ld bc, $0d68
    dec de
    add hl, de
    rst $10
    ldh a, [rTIMA]
    jr z, jr_027_7009

    db $dd
    ld bc, $40a7
    cpl

jr_027_7008:
    cp e

jr_027_7009:
    ldh [rTIMA], a
    ld b, c
    rra
    nop
    cp e
    nop
    sbc a
    ld h, e
    ld l, $12
    ld b, $67
    ld c, [hl]
    ld e, a
    ldh a, [$58]
    dec c
    and l
    and l
    or b
    jr z, jr_027_709c

    rst $28
    dec d
    db $fd
    rlca
    ld d, b
    ldh [rSTAT], a
    ret nc

    pop af
    push bc
    ldh a, [rTIMA]
    and l
    cp h
    and l
    dec d
    ld d, l
    nop
    db $e4
    nop
    xor h
    rla
    ldh [$f5], a
    and a
    ld d, b
    inc b
    ld sp, hl
    ld b, e
    nop
    and l
    or e
    ld [hl], e
    ld [bc], a
    ld l, $3c
    ld e, d

jr_027_7045:
    ld bc, $01c3
    ld d, [hl]
    nop
    rla
    dec l
    ld bc, $0020
    ld b, b
    ccf
    or l
    jr nz, jr_027_7068

    and a
    nop
    rst $38
    ld h, h
    ld a, $d6
    adc a
    and h
    jr nz, jr_027_7008

    ld [$2927], sp
    adc [hl]
    dec a
    ret c

    scf
    ld b, e
    nop
    rst $38

jr_027_7068:
    sbc l
    ld de, $47d7
    rla
    jr jr_027_708b

    daa
    ret c

    scf
    ld a, d
    rla
    db $db
    daa
    ld [hl], b
    ld a, [de]
    ccf
    ld e, d
    nop
    ld a, c
    rlca
    or $00
    ld l, l
    ld a, [hl+]
    ld d, e
    nop
    ret c

    daa
    and c
    rst $28
    ld e, l
    db $fc
    ld [hl+], a
    ld h, h

jr_027_708b:
    push af
    db $10
    ldh [rTMA], a
    ld b, $01
    ld h, h
    db $fd
    ld [de], a
    ld h, c
    ld h, [hl]
    ld h, e
    ret c

    daa
    or e
    nop
    ld h, l

jr_027_709c:
    ld h, d

jr_027_709d:
    cp l
    ld [de], a
    ld a, [c]
    inc b
    rst $28
    ld e, $ae
    daa
    add hl, hl
    db $f4
    inc b
    ld e, $24
    sub e
    xor a
    ld bc, $0ab2
    ld e, d
    or b
    or b
    ld e, d
    or b
    or b
    rst JumpTable
    inc bc
    jp c, $114f

    ret nz

    or e
    adc b
    and b
    and b
    adc b
    and b
    add b
    and b

Jump_027_70c3:
    adc b
    and b
    add a
    adc b
    and b
    adc b
    dec e
    nop
    db $e3
    or d
    ccf
    ld a, [de]
    db $10
    and b
    and b
    adc b
    dec e
    nop
    or d
    ccf
    xor d
    ld a, [hl+]
    ld b, e
    dec de
    jr nz, jr_027_714d

    sbc $b3
    adc b
    and b
    adc b
    ld a, [de]
    nop
    adc b
    sbc h
    and b
    adc b
    ld a, [de]
    jr nc, jr_027_709d

    ccf
    xor d
    ld a, [hl+]
    and b
    adc b
    dec e
    nop
    ld [hl], l
    add b
    rlca
    adc b
    xor d
    ld a, [hl+]
    adc b
    ld a, [de]
    jr nc, jr_027_713c

    db $dd
    ldh [$bd], a
    cp e
    ld bc, $07af
    rst $30
    ld h, c
    ld l, [hl]
    ld l, c
    ld c, [hl]
    nop
    dec de
    db $10
    dec bc
    inc de
    jr jr_027_7125

    db $fd
    ld c, d
    xor d
    ld a, [hl+]
    add [hl]
    and b
    xor e
    add hl, de
    cp $3a
    and b
    and b
    di
    di
    sub h
    inc bc
    inc bc
    db $eb
    daa
    nop
    dec de
    sbc a

jr_027_7125:
    and b
    inc e
    dec e
    di
    sbc a
    res 5, e
    add hl, de
    cp $3a
    add b
    db $db
    add hl, bc
    dec e
    add b
    xor e
    add hl, de
    cp $3a
    ld a, [$2181]
    ld a, [de]

jr_027_713c:
    add c
    xor e
    add hl, de
    ld l, $20
    add b
    ld a, [bc]
    ld a, [de]
    nop
    inc e
    ld bc, $6cbf
    inc d
    ld h, l
    dec l
    or a

jr_027_714d:
    ld a, [hl+]
    ld [$e037], a
    rla
    add b
    ld a, [bc]
    ld b, h
    inc e
    ld bc, $eb0f
    daa
    ldh [$27], a
    jr nz, @+$16

    jp hl


    ld b, a
    sbc a
    ld h, e
    ld c, [hl]
    ld [$7e4a], sp
    db $10
    ldh [$87], a
    db $fd
    rla
    and a
    xor $64
    ld a, $85
    ld l, b
    ld e, $ee
    ld e, [hl]
    dec de
    cp b
    or a
    xor $20
    ld h, l
    ld d, h
    cp a
    ld e, [hl]
    dec sp
    ld l, b
    dec de
    ld l, d
    add hl, hl
    ld l, l
    dec bc
    ld h, b
    db $db
    ld h, b
    dec de
    ld a, [$2b65]
    add $9e
    add hl, bc
    ld d, $5f
    dec bc
    cp d
    or l
    ld b, h
    ld h, [hl]
    dec sp
    inc e
    ld bc, $5e25
    dec de
    and a
    ldh [$5d], a
    cp e
    xor $6d
    dec bc
    cp d
    or l
    dec bc

jr_027_71a5:
    ldh [$87], a
    dec l
    ld bc, $92a7
    xor a
    and a
    nop
    rrca
    ld h, e
    ld c, [hl]
    ld [$7e4a], sp
    db $10
    ldh [rBGP], a
    xor $ee
    and a
    and a
    ld d, a
    db $fd
    rla
    ld h, d
    ld e, [hl]
    ld l, b
    ld e, $ee
    ld c, $00
    xor $63
    inc b
    jr nz, jr_027_71a5

    ld h, l
    ld d, h
    ld e, [hl]
    dec sp
    ld a, [$8b65]
    ld h, b
    dec de
    ld a, [$8b65]
    ld h, b
    dec bc
    add hl, de
    ld h, h
    dec sp
    sbc [hl]
    sbc [hl]
    add hl, bc
    ld d, $5f
    dec bc
    cp d
    or l
    ld b, h
    sub a
    ld h, [hl]
    dec sp
    inc e
    ld bc, $1b5e
    and a
    ldh [$5d], a
    cp e
    xor $6d
    dec bc
    or h
    cp d
    or l
    jr nz, jr_027_71f7

jr_027_71f7:
    xor $e0
    ld b, a
    dec l
    ld bc, $92a7
    xor a
    nop
    and a
    nop
    rst $10
    ld h, e
    ld c, [hl]
    ld [$7e4a], sp
    db $10
    xor $e0
    rla
    xor $e0
    daa
    db $fd
    rla
    rst $20
    ld h, d
    ld e, [hl]
    ld l, b
    ld l, $5e
    dec de
    cp b
    or a
    ld l, b
    dec de
    ld h, a
    inc [hl]
    ld e, [hl]
    dec hl
    ld l, a
    ld h, a
    dec hl
    ld l, d
    add hl, hl
    ld l, l
    dec bc
    ld h, b
    dec bc
    ld hl, $045b
    ld h, a
    ld l, e
    or e
    sub b
    xor $b3
    ld hl, $65fa
    dec hl
    sbc [hl]
    ld hl, $1b6c
    adc d
    or e
    ld b, b
    nop
    ld b, h
    ld h, l
    dec bc
    xor $fa
    ld a, [$011c]
    dec h
    ld e, [hl]
    dec de
    and a
    ldh [$5d], a
    cp e
    xor $6d
    dec bc
    cp d
    or l
    dec l
    ldh [$27], a
    xor $e0
    daa
    dec l
    ld bc, $92a7
    xor a
    and a
    nop
    rst $38
    ldh [$d7], a
    ldh [$27], a
    jp nz, $ea2f

    scf
    ld h, b
    ld l, $c1
    ld a, [bc]
    call z, $eb0a
    daa
    cp l
    ld h, l
    dec l
    rst $28
    add d
    db $10
    xor e
    add hl, de
    ld e, [hl]
    dec a
    jr nz, jr_027_7298

    xor $5b
    dec e
    rst $38
    ld e, l
    ld c, l
    jr nz, jr_027_72a0

    ld e, d
    dec l
    ld e, l
    ld c, l
    jr nz, @+$1e

    ld e, d
    dec l
    ld e, l
    ld c, l
    jr nz, jr_027_72ac

    rra
    ld e, d
    dec l
    ld e, l
    ld c, l
    jr nz, jr_027_72b3

    ld e, d

jr_027_7298:
    dec l
    ld e, l
    ld c, l
    cp d
    or l
    xor $dc
    rst $28

jr_027_72a0:
    rst $28
    inc e
    ld bc, $146c
    ldh [$27], a
    cp d
    ld b, d
    rrca
    xor e
    add hl, de

jr_027_72ac:
    ld bc, $002d
    rst $00
    ld h, c
    ld l, [hl]
    ld l, c

jr_027_72b3:
    ld c, [hl]
    nop
    dec de
    dec e
    and b
    sbc [hl]
    add hl, sp
    inc b
    xor e
    add hl, de
    cp e
    cp $3a
    xor d
    ld a, [hl+]
    dec e
    xor e
    add hl, de
    cp $3a
    xor d
    ld a, [hl+]
    and b
    xor e
    add hl, de
    or l
    cp $3a
    sbc a
    ld hl, $9f1a
    xor e
    add hl, de
    cp $3a
    add b
    ld hl, $d61a
    add b
    xor e
    add hl, de
    cp $3a
    add c
    ld hl, $811a
    xor e
    add hl, de
    ld l, $20
    rst $38
    add b
    ld a, [bc]
    ld a, [de]
    nop
    inc e
    ld bc, $146c
    ld h, l
    dec l
    or a
    ld a, [hl+]
    ld [$e037], a
    rla
    ld a, l
    add b
    ld a, [bc]
    ld b, h
    inc e
    ld bc, $27eb
    ldh [$27], a
    jr nz, @+$16

    jp hl


    ld b, a
    rst $38
    ld h, b
    ret c

    ld h, b
    ld e, b
    ld e, c
    inc l
    ld c, l
    inc c
    ld b, b
    call c, $2c59
    ld [hl], e
    inc b
    ld c, c
    inc l
    call nz, $331e
    ld e, a
    jr z, jr_027_7339

    dec de
    ld b, a
    ld c, c
    inc l
    add $0d
    rst JumpTable
    ld e, a
    jr z, jr_027_7399

    inc b
    ld c, c
    inc l
    sbc d
    dec b
    ld l, a
    inc d
    rra
    ld c, c
    inc a
    add $2d
    rrca
    adc a
    push hl
    add b
    push de

jr_027_7339:
    ld h, b
    push de
    ld h, b
    push de
    rst $38
    ld d, b
    push de
    ld c, c
    inc a
    sbc d
    dec b
    ld e, c
    ld c, h
    ld c, c
    inc a
    sbc d
    dec b
    ld e, c
    ld c, h
    ld d, b
    call c, $d5bb

jr_027_7350:
    ld [$2c51], sp
    ld b, b
    ld e, c
    ld c, h
    ld h, b
    dec b
    ld e, c
    inc l
    ld d, l
    ld e, d
    dec d
    dec a
    ld e, l
    dec [hl]
    ld b, d
    sub h
    dec b
    ld c, c
    inc a
    ld e, l
    dec [hl]
    add b
    dec b
    dec [hl]
    dec de
    ld a, c
    sub h
    dec d
    dec e
    rra
    ld e, [hl]
    ld d, l
    sub $78
    ld h, b
    push de
    ld h, b
    push de
    add hl, bc
    jr nz, jr_027_7350

    ld l, d
    jr jr_027_739a

    dec b
    ld [hl], b
    ld l, a
    ld [hl], b
    ld bc, $0160
    ld l, a
    ld bc, $6f70
    ld e, $15
    ld d, d
    add hl, de
    ld [hl], b
    pop hl
    inc e
    dec b
    ld [hl], b
    ld bc, $7001
    ld e, $15
    or h
    ld l, [hl]

jr_027_7399:
    ld d, d

jr_027_739a:
    add hl, de
    adc h
    nop
    ld l, [hl]
    ld d, b
    add hl, sp
    or h
    ld a, $63
    ld h, l
    nop
    ld a, d
    add hl, bc
    cp e
    or h
    ld l, [hl]
    ld [hl], l
    add hl, bc
    nop
    ld a, d
    add hl, bc

jr_027_73af:
    or h
    ld l, [hl]
    ld [hl], l
    add hl, bc
    nop
    ld a, d
    add hl, bc
    db $fd
    call nz, $0e15
    push bc
    dec h
    dec a
    dec de
    or b
    inc [hl]
    ld h, h
    ld [hl], $3d
    dec de
    or b
    inc [hl]
    rra
    ld h, h
    ld [hl], $3d
    dec de
    or b
    inc [hl]
    ld h, h
    ld [hl], $3d
    dec bc
    add c
    jr nc, jr_027_73af

    ld l, a
    ld bc, $7070
    ld l, a
    ld [hl], b
    ld de, $4805
    ld bc, $7001
    ld [hl], l
    add hl, bc
    nop
    ld [hl], b
    inc e
    dec b
    ld [hl], b
    and [hl]
    ld bc, $0511
    ld d, d
    add hl, de
    ld l, e
    ld h, a
    cpl
    ld a, [hl-]
    ld bc, $0511
    db $fd
    jr nc, jr_027_7421

    ld h, a
    ld c, a
    jp hl


    ld [hl], b
    reti


    ld b, b
    db $db
    or b
    call nc, $db70
    ld [hl], b
    sbc e

Call_027_7404:
    ld d, $01
    cp l
    inc b
    or b
    ld d, h
    ld l, [hl]
    ld d, a
    add hl, hl
    ld l, c
    nop
    rst $00
    ld h, b
    rst $10
    ld e, c
    inc l
    ld h, c
    rlca
    ld b, l
    ld b, h
    ld d, [hl]
    ld e, d
    dec d
    ld e, a
    jr z, @+$01

    ld d, d
    inc l
    ld e, d

jr_027_7421:
    dec d
    ld c, l
    inc c
    ld e, c
    inc l
    ld c, c
    inc a
    ld c, e
    inc l
    ld e, c
    inc l
    ld c, c
    inc a
    ld a, a
    ld c, e
    inc l
    ld e, c
    inc l
    ld c, c
    inc a
    ld c, e
    inc l
    ld e, c
    inc l
    ld c, c
    inc a
    ld c, e
    inc l
    ld b, d
    rst $00
    sub h
    dec b
    ld c, c
    inc a
    ld c, c
    inc e
    inc sp
    nop
    ld c, c
    ld d, c
    inc l
    ld c, c
    inc a
    ld c, b
    dec de
    inc sp
    ld c, b
    rst $08
    dec c
    dec [hl]
    dec e
    ld c, c
    inc e
    ld e, $f0
    dec de
    rra
    dec de
    inc sp
    db $dd
    dec c
    call nc, $8878
    dec h
    xor a
    rst $20
    ld [hl], e
    ld d, b
    sbc $49
    inc l
    ld d, l
    ld b, l
    ld e, b
    dec [hl]
    ld e, l
    dec b
    ld c, c
    inc a
    ld d, l
    sub c
    ld e, b
    inc a
    ld c, a
    ld b, b
    nop
    ld c, c
    inc a
    dec de
    ld b, a
    ld c, b
    inc e
    ld d, b
    ld e, e
    ld e, c
    ld c, b
    nop
    ld c, c
    inc a
    dec de
    ld c, b
    inc l
    ld d, l
    jr jr_027_74d0

    ld b, c
    nop
    ld c, c
    inc a
    ld c, c
    inc a
    dec de
    ld d, l
    ld b, l
    ld b, $00
    ld c, c
    inc a
    ld c, c
    inc a
    dec de
    ld e, $40
    nop
    dec [hl]
    add [hl]
    rra
    ld c, c
    inc a
    ld c, c
    inc l
    inc sp
    ld c, b
    nop
    ld c, c
    ld d, c
    inc l
    ld c, l
    ld c, c
    inc a
    inc sp
    db $dd
    dec c
    push de
    ld [$1b35], sp
    sub h
    dec b
    rra
    ld a, b
    rra
    ld e, $33
    adc d
    dec b
    ld e, a
    dec d
    sub $68
    ld l, h
    dec d
    rlca
    ldh [$db], a
    ld [hl], b
    call nc, $1860
    ld b, a
    dec de
    ld b, a
    dec de
    ld b, a

jr_027_74d0:
    jr jr_027_74ed

    dec de
    ld b, a
    ld c, h
    inc e
    ld h, b
    jr jr_027_7520

    dec de
    ld d, h
    ld h, b
    dec de
    ld b, a
    dec de
    dec de
    ld b, a
    ld c, h
    inc e
    ld h, b
    jr jr_027_752d

    pop af
    ld b, c
    inc e
    dec de
    dec de
    ld b, a
    ld c, h

jr_027_74ed:
    inc e
    ld b, b
    inc l
    ld c, c
    inc a
    ld c, b
    inc c
    ld hl, sp+$33
    nop
    ld c, c
    ld d, c
    inc l
    ld c, c
    inc a
    ld e, h
    dec h
    ld e, c
    inc l
    push bc
    dec c
    add hl, sp
    ld d, c
    inc e
    inc sp
    ld c, b
    rst $08
    db $ed
    ld h, b
    push de
    ld h, b
    push de
    ld e, e
    ld h, b
    add l
    ldh [rNR31], a
    nop
    ld [hl], a
    inc [hl]
    ld a, b

jr_027_7516:
    inc h
    ld b, a
    ld e, h
    dec d
    dec de
    nop
    ld b, a
    dec de
    dec de
    ld b, a

jr_027_7520:
    dec de
    ld b, a
    dec de
    dec de
    jr z, jr_027_756d

    dec de
    ld b, a
    ld e, h
    dec d
    dec de
    ld c, b
    inc c

jr_027_752d:
    ld b, a
    dec de
    ld c, d
    ld b, a
    ld [hl], c
    inc b
    dec de
    ld c, b
    inc c
    ld b, b
    nop
    ld c, c
    inc e
    ld b, a
    cp $1b
    ld c, b
    ld c, h
    ld e, l
    dec b
    ld d, c
    inc e
    ld c, b
    ld c, h
    push bc
    dec e
    ld a, a
    dec b
    ld d, c
    inc l
    ld a, a
    push bc
    dec c
    adc b
    dec h
    cp a
    db $fd
    ret c

    ld c, l
    ld l, b
    ld d, l
    ld h, b
    push de
    ld h, b
    push de
    ld c, d
    dec l
    jr nc, jr_027_7588

    jr jr_027_7516

    ld e, [hl]
    nop
    dec l
    jr nc, jr_027_758f

    jr jr_027_7582

    or [hl]
    ld e, [hl]
    rst $38
    and $2d
    ld c, c

jr_027_756d:
    inc a
    ld c, c
    inc a
    dec de
    dec a
    nop
    ld l, [hl]
    dec l
    ld c, c
    inc a
    ld c, c
    inc l
    call z, $2d1b
    ld c, c
    inc a
    ld e, e
    dec b
    ld e, $1d

jr_027_7582:
    sra e
    dec l
    ld c, c
    inc a
    xor d

jr_027_7588:
    ld [de], a
    sra e
    dec l
    dec de
    dec e
    add hl, bc

jr_027_758f:
    ld c, c
    inc e
    dec a
    dec a
    ld c, c
    inc l
    dec a
    nop
    dec l
    dec de
    nop
    rra
    dec de
    dec e
    dec de
    rra
    dec a
    dec a
    dec de
    inc b
    dec de
    dec a
    ld c, h
    inc e
    dec l
    dec de
    dec e
    ld e, $1d
    add b
    dec de
    rra
    dec de
    dec e
    dec de
    dec de
    dec a
    sub h
    dec b
    ld bc, $e74f
    and l
    or e
    ld a, [hl]
    ld bc, $0bc2
    dec a
    nop
    or e
    ld a, [hl]
    ld bc, $0bc2
    adc [hl]
    dec a
    ld a, a
    db $eb
    xor d
    ld [bc], a
    ld c, c
    inc a
    dec de
    dec de
    dec a
    ld c, h
    inc e
    ld b, c
    xor d
    ld [bc], a
    dec de
    dec a
    dec de
    dec a
    dec a
    ld e, e
    dec b
    dec a
    ld [$1b1b], sp
    dec a
    cp a
    dec de
    dec de
    dec a
    dec de
    dec a
    ld [bc], a
    dec a
    ld e, e
    dec b
    dec a
    dec de
    dec de
    dec a
    nop
    dec a
    rlca
    ld c, c
    inc l
    xor d
    ld [bc], a
    ld e, e
    dec b
    dec a
    dec de
    dec a
    nop
    dec a
    add hl, de
    ld e, e
    dec b
    ld e, $1b
    xor d
    ld [bc], a
    ld e, e
    dec b
    dec a
    dec de
    dec a
    ld b, $00
    ld e, e
    dec b
    xor d
    ld [de], a
    dec a
    dec a
    dec de
    dec de
    dec a
    add b
    dec de
    dec de
    dec a
    nop
    ld e, $1b
    rra
    sub h
    dec b
    dec h
    ld e, e
    dec b
    dec a
    sub h
    dec b
    dec de
    dec a
    ld c, a
    rst $20
    scf
    xor d
    ld [de], a
    jp nz, $b30b

    ld c, [hl]
    ld l, $af
    ld l, $c2
    dec bc
    dec a
    ld bc, $191a
    ld d, d
    add hl, de
    ld l, $9f
    ld [c], a
    ld c, c
    inc e
    dec a
    dec de
    dec de
    ld [bc], a
    dec a
    ld c, c
    inc a
    ld l, $00
    dec a
    dec de
    dec a
    dec de
    jr nc, jr_027_768c

    dec de

jr_027_7650:
    dec de
    dec a
    sub h
    dec b
    ld e, e
    dec b

jr_027_7656:
    ld l, $00
    add b
    dec a
    dec de

jr_027_765b:
    dec a
    dec de
    dec a
    dec de
    dec de
    xor d

jr_027_7661:
    ld [de], a
    inc b
    dec de
    dec de
    xor l
    ld [bc], a
    dec a
    dec de
    dec a
    dec de
    dec a
    ld bc, $1c49
    dec a
    dec de
    dec de
    dec a
    dec de
    ld l, $00
    jr nz, jr_027_76b5

    dec de
    dec a
    dec de
    dec a
    ld c, c
    inc e
    dec a
    dec de
    nop
    dec de
    dec a
    dec de
    ld l, $00
    dec a
    dec de
    dec de

jr_027_7689:
    ld [bc], a
    dec a
    ld e, e

jr_027_768c:
    dec b
    dec a
    dec de
    dec a
    dec de
    dec de
    dec a
    inc c
    dec de
    ld l, $bf
    dec bc
    ld e, e
    dec b
    rra
    dec de
    dec a
    dec de
    ld d, h
    ld e, $1b
    sub h
    dec b
    ld l, $4f
    rst $00
    ld e, d
    xor a
    rst $20
    db $eb
    ldh [$d7], a
    jr nz, jr_027_7689

    and a
    jr nz, jr_027_76e9

    ld b, h
    add hl, hl
    jr c, jr_027_76e3

jr_027_76b5:
    nop
    jr nz, jr_027_7650

    ld l, l
    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_7656

    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_765b

    ld a, l
    ld [bc], a
    and a
    ei
    jr nz, jr_027_7661

    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_76d6

    jp c, $d21b

    ld [bc], a
    inc l
    ld [$002e], sp

jr_027_76d6:
    ld e, l
    jr nz, jr_027_76e1

    ld h, e
    dec d
    dec l
    db $f4
    rlca
    ld a, l
    ld [bc], a
    and a

jr_027_76e1:
    jr nz, jr_027_76eb

jr_027_76e3:
    ld h, e
    ld [hl], d
    and e
    dec [hl]
    nop
    and e

jr_027_76e9:
    ld h, l
    inc l

jr_027_76eb:
    ld [$002e], sp
    and c
    call z, $e037
    rst $10
    ldh [$27], a
    ld b, b
    inc d
    ret


    ld [$e037], a
    daa
    cp a
    jp c, Jump_027_450e

    sbc e
    db $10
    ld l, h

jr_027_7703:
    inc d
    ldh [$27], a
    jp $8b8b


    adc e
    ld b, $c1
    ld [$e037], a

jr_027_770f:
    daa

Call_027_7710:
    jp $8b8b


    adc e
    pop bc
    add e
    ld [$e037], a
    daa
    jp $8b8b


    adc e
    pop bc
    ld [$c137], a

jr_027_7722:
    ldh [$27], a
    jp $8b8b


    adc e
    pop bc
    ld [$e037], a
    daa
    ld h, b
    jp $8b8b


    adc e
    pop bc
    ld [$e037], a
    daa
    cp a
    cp h
    jp c, $9b44

    db $10
    ld l, h
    inc d
    ldh [$27], a
    add b
    jr jr_027_770f

    ld [$0137], a
    ldh [$d7], a
    pop hl
    ldh [rNR22], a
    ret z

    ret nz

    add b
    add c
    inc l
    dec bc
    db $eb
    daa
    ldh [rNR22], a
    ret nz

    jp $8288


    add e
    add a
    pop bc
    ld [$2037], a
    dec de
    ret nz

    rst $00
    ret c

    add h
    add l
    add [hl]
    add $2b
    dec de
    ld l, $00
    ld bc, $d091
    jp $8b8b


    adc e
    adc e
    adc e
    adc e
    jr nz, jr_027_7703

    adc e
    adc e
    adc e
    pop bc
    dec l
    db $10
    jp Jump_027_438b


    sub e
    nop
    sub e
    nop

jr_027_7785:
    adc e
    adc e
    adc e
    pop bc
    dec l
    db $10
    jp $8b00


    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    jr jr_027_7722

    adc e
    pop bc
    dec l
    db $10
    sub c
    db $10
    adc e
    adc e
    adc e
    ld [bc], a
    adc e
    sbc c
    ld d, b
    jp $8b8b


    adc e
    adc e
    adc e
    ld b, b
    ld b, l

jr_027_77ac:
    adc e
    adc e
    adc e
    adc e
    pop bc
    dec l
    db $10
    jp $9989


    nop
    adc e
    adc e
    sbc c
    nop
    adc e
    adc e
    pop bc
    dec l
    db $10
    ld d, l
    add b
    ld [$81be], sp
    jr jr_027_7785

    xor e
    inc e
    and a
    xor a
    ld b, a
    inc de
    ldh [$d7], a
    jr nz, jr_027_77ac

    and a
    jp $1932


    xor h
    ld b, h
    xor h
    db $db
    ld a, b
    ld [de], a
    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_77e8

jr_027_77e0:
    di
    daa
    ld h, l
    db $f4
    rlca
    ld a, l
    ld [bc], a
    dec a

jr_027_77e8:
    ld [hl], b
    jp nc, $20a7

    ld [$37f4], sp
    db $f4
    rlca
    ld a, l
    ld [bc], a
    and a
    jp $8aaf


    nop
    adc e
    inc bc
    call z, Call_027_7b02
    ld [hl+], a
    and a
    jr nz, jr_027_7809

    ld h, h
    dec d
    dec l
    ld c, e
    db $f4

jr_027_7806:
    rlca
    ld a, l
    ld [bc], a

jr_027_7809:
    and a
    jr nz, jr_027_7814

    ld h, e
    and e
    dec [hl]
    nop

jr_027_7810:
    and e
    ld c, e
    db $f4
    rlca

jr_027_7814:
    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_7821

    ld h, e
    and e
    dec [hl]
    nop
    and e
    ld c, $65
    inc l

jr_027_7821:
    ld [$002e], sp
    and c
    call z, $e043
    rst $10
    jr nz, jr_027_7806

    and a
    jp $ac1d


    ld c, c
    inc bc
    ld b, h
    jr nz, jr_027_77e0

    dec d
    dec e
    dec e
    xor h
    ld a, l
    ld [bc], a
    and a
    jp $ac00


    dec d
    xor h
    xor h
    dec e
    dec e
    dec d
    dec e
    ld [$acac], sp
    dec d
    ld a, l
    ld [bc], a
    and a
    jp $1d1d


    nop
    xor h
    dec e
    xor h
    dec d
    xor h
    dec d
    dec e
    dec e
    ld [bc], a
    xor h
    ld a, l
    ld [bc], a
    and a
    jp $ac1d


    xor h
    dec e
    jr z, jr_027_7810

jr_027_7864:
    dec e
    dec e
    dec [hl]
    nop
    dec d
    ld a, l
    ld [bc], a
    and a
    jp $ac80


    dec d
    xor h
    dec e
    dec d
    xor h
    dec d
    ld c, c
    inc bc
    ld a, [bc]
    xor h
    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_7886

    dec e
    dec d
    xor h
    xor h
    jr nz, jr_027_78a1

    xor h
    xor h

jr_027_7886:
    dec d
    xor h
    ld a, l
    ld [bc], a
    and a
    jp $15d0


    dec e
    xor h
    xor h
    ld c, c
    inc bc
    dec d
    ld c, c
    inc bc
    ld a, l
    ld [bc], a
    ld [$20a7], a
    ld [$3515], sp
    nop
    dec d
    ld a, [hl+]

jr_027_78a1:
    jr z, @+$30

    nop
    and c
    call z, $e003
    rst $10
    jr nz, jr_027_7886

    and a
    jp Jump_027_61ac


    xor h
    ld h, l
    add b
    xor h
    ld b, h
    xor h
    ld h, e
    xor h
    ld h, l
    xor h
    ld a, l
    ld [bc], a
    jr nz, jr_027_7864

    jp Jump_027_65ac


    xor h
    db $f4
    rla
    ld h, l
    xor h
    inc b
    ld h, c
    xor h
    ld a, l
    ld [bc], a
    and a
    jp Jump_027_63ac


    xor h
    ld hl, $1102
    ld h, c
    xor h
    ld h, d
    xor h
    ld a, l
    ld [bc], a
    and a
    jp $ac24


    ld h, c
    ld hl, $6348
    xor h
    ld a, l
    ld [bc], a
    and a
    jp $ac4a


    ld b, h
    inc de
    ld h, d
    sbc c
    ld [bc], a
    ld h, c
    xor h
    ld a, l
    ld [bc], a
    and a
    db $db
    jr nz, @-$66

    ld a, l
    ld [bc], a
    and a
    jr nz, jr_027_7911

    cp d
    nop
    ld h, l
    or e
    dec e
    ld a, l
    ld [bc], a
    db $76
    and a
    jr nz, @+$1a

    db $f4
    rla
    ld h, l
    dec hl
    jr jr_027_7938

    nop
    and c
    call z, RST_00
    nop
    nop

jr_027_7911:
    ld bc, $1901
    add hl, de
    dec e
    dec d
    rrca
    dec bc
    adc $e9
    ld a, [$0cbd]
    inc c
    ld c, $0a
    adc e
    adc l
    pop de
    ld e, [hl]
    ld a, b
    cp a
    inc a
    rst $10
    ld [hl], $db
    add b
    ld a, a
    jr jr_027_7947

jr_027_792f:
    add hl, sp
    add hl, hl
    ld l, e
    ld e, d
    xor $dd
    call nz, $82bf

jr_027_7938:
    rst $38
    rlca
    db $fd
    dec c
    ei
    nop
    nop
    add b
    add b
    add b
    add b
    sbc b
    sbc b
    cp b
    xor b

jr_027_7947:
    ldh a, [$d8]
    inc de
    di
    rst $08
    dec a
    ld a, [hl]
    ld c, l
    ld h, c
    ld a, [hl]
    and l
    cp [hl]
    or $ff
    rst $20
    cp l
    xor a
    call nc, $726d
    push af
    ld a, [$15ea]
    cp [hl]
    ld b, c
    cpl
    ret nc

    dec h
    jp c, $fe01

    ld c, b
    or a
    ld [$fe15], a
    ld bc, $6798
    sub $29
    db $f4
    dec bc
    ld h, b
    sbc a
    ld hl, $05de
    ld a, [$6897]
    rst JumpTable
    jr nz, @-$6f

    ld [hl], e
    ld [hl-], a
    cp $76
    sbc $d7
    cp a
    ld c, a
    cp l
    push af
    dec de
    and d
    ld e, [hl]
    sub a
    ld a, a
    cp b
    rst JumpTable
    call nc, $a0ff
    cp a
    and [hl]
    cp a
    sbc d
    sbc e
    jp Jump_027_70c3


    ld [hl], b
    ld e, $1e
    rst JumpTable
    jr nz, jr_027_792f

    ld [hl], b
    dec de
    db $e4
    ld de, $01ee
    cp $a4
    rst $38
    db $ec
    rst $38
    ld a, [hl]
    ld a, a
    ei
    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    adc b
    ld [hl], a
    nop
    rst $38
    adc c
    rst $38
    db $db
    rst $38
    cp $fe
    dec a
    rst $28
    ld l, e
    rst JumpTable
    dec b
    db $fd
    ld h, l
    db $fd
    ld e, c
    reti


    jp $0ec3


    ld c, $78
    ld a, b
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $0d
    ld c, $1a
    dec e
    db $10
    ccf
    jr nc, jr_027_7a1c

    ld a, a
    ld a, a
    pop de
    ldh [rLCDC], a
    add b
    rst $38
    nop
    dec hl
    call nc, $fe01
    inc a
    rst $38
    ld e, d
    rst $20
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$59]
    add hl, sp
    add sp, $1d
    ld a, h
    adc h
    inc [hl]
    adc $26
    sbc $02
    cp $00
    nop
    nop
    nop
    db $10
    db $10
    adc b
    sbc b
    call z, $66cc
    xor $66
    ld [hl], a
    ld d, l
    rst $30
    jr nz, jr_027_7a4e

    jr nz, @+$81

    ld h, b
    ld a, a
    ld b, h
    ld a, e
    ld b, h
    ld a, e
    ld b, d
    ld a, l
    ld h, e
    ld a, h
    ld [hl], a

jr_027_7a1c:
    ld hl, sp-$5a
    db $db
    sub d
    rst $38
    sbc [hl]
    rst $38
    call z, $c0ff
    rst $38
    ld [hl], h
    rst $38
    dec a
    rst $38
    rst $08
    ccf
    ld [bc], a
    cp $07
    rst $38
    rla
    rst $38
    ld e, $ff
    ld e, l
    cp $70
    rst $38
    ret


    rst $30
    inc sp
    call z, $dff5
    sbc l
    rst $38
    ld e, c
    cp a
    cp e
    ld [hl], a
    ld a, [hl-]
    rst $20
    or $ce
    ld h, h
    sbc [hl]
    rst $08
    ccf
    db $d3

jr_027_7a4e:
    call c, $beb1
    xor [hl]
    cp a
    cp d
    cp e
    sbc d
    sbc e
    pop bc
    pop bc
    ld [hl], b
    ld [hl], b
    ld e, $1e
    ld a, a
    add b
    ld l, a
    sub b
    ld c, l
    or d
    add hl, bc
    or $80
    rst $38
    and h
    rst $38
    db $f4
    rst $38
    ld a, l
    ld a, a
    rst $38
    nop
    ld a, [$e805]
    rla
    ld c, b
    or a
    ld b, d
    cp a
    inc de
    rst $38
    ld d, a
    rst $38
    ld a, [hl]
    cp $0b
    ei
    dec l
    db $fd
    ld [hl], l
    db $fd
    ld e, l
    db $dd
    reti


    reti


    add e
    add e
    ld c, $0e
    ld a, b
    ld a, b
    ld h, b
    nop
    ldh a, [$e0]
    sub b
    di
    sub a
    ld e, l
    ld a, [hl]
    dec l
    inc sp
    ld e, a
    ld c, a
    adc l
    sbc $bc
    sbc [hl]
    ret nz

    ld [bc], a
    rlca
    rra
    dec a
    cp $f3
    rst $28
    dec e
    rst $38
    rst $38
    ld h, b
    sbc a
    cp a
    ld a, a
    ld a, a
    inc bc
    dec e
    rst $38
    ret nz

    ldh [$80], a
    add b
    nop
    nop
    rlca
    ld hl, sp+$7e
    jp $00f0


    nop
    ld e, $1e
    xor [hl]
    or d
    ld a, [$fce6]
    inc a
    cp h
    call z, $f6ee
    nop
    inc c
    rra
    cp [hl]
    sbc a
    adc a
    rst JumpTable
    db $eb
    rst $00
    ld d, d
    ld h, c
    ld h, a
    ld a, b
    jr c, jr_027_7b18

    ld [$3ced], a
    dec b
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld a, [$ac05]
    ld d, e
    add b
    db $f4
    ld [hl], b
    inc d
    rst $38
    rrca
    ld [c], a
    db $fd
    ld b, $f8
    add hl, bc
    or $01
    rla
    inc bc
    db $fc
    nop
    ld de, $e2f7
    or $ae
    add $97
    rrca
    dec l
    rra
    cp c

Call_027_7b02:
    ld a, a
    rst $10
    sub b
    ld [hl], b
    ld [hl], a
    nop
    nop
    rst $30
    cp a
    cp l
    rst $10
    ld e, a
    ld d, l
    ld [hl], l
    ld e, e
    ld e, c
    ld l, e
    cpl
    ld sp, $1d1a
    rlca

jr_027_7b18:
    ld b, $05
    dec d
    rst $38
    db $f4
    dec bc
    ld l, b
    sub a
    ret nz

    ld a, b
    or b
    rst $08
    ret nz

    cp $fc
    ld d, b
    ld d, l
    rst $38
    ld bc, $b60f
    ld sp, hl
    dec c
    di
    rlca
    ccf
    rrca
    ccf
    nop
    nop
    rst $28
    db $fd
    cp l
    db $eb
    ld a, [$aeaa]
    jp c, $d6ba

    db $f4
    adc h
    ld e, b
    cp b
    ldh [$60], a
    nop
    dec d
    ld a, b
    nop
    ld bc, $0703
    inc c
    rrca
    add hl, de
    ld e, $33
    inc a
    daa
    ld h, a
    ld b, a
    dec b
    ld d, l
    nop
    rst $38
    rst $38
    sub b
    ldh [$c0], a
    add b
    add b
    ret nc

    ld a, [c]
    rst $38
    ld bc, $0054
    rst $38
    rst $38
    add hl, de
    rlca
    ld b, $01
    inc bc
    inc bc
    ld d, a
    rst $38
    cp $01

jr_027_7b72:
    nop
    nop
    nop
    add b
    ldh [$f0], a
    jr c, jr_027_7b72

    call z, $f43c
    ld c, $fe
    ld b, $7a
    add [hl]
    ld e, $e3
    dec b
    nop
    ld a, a
    ld b, e
    ld a, h
    ld b, c
    ld a, [hl]
    ld h, b
    jr z, jr_027_7bc8

    ccf
    ld e, $3f
    rla
    rra
    dec b
    rlca
    ld bc, $ff57
    ld [hl], a
    adc b
    ld [hl-], a
    call $dd22
    nop
    ld b, h
    ld b, l
    ld [hl], l
    ld bc, $ff55
    db $f4
    dec bc
    ldh [$1f], a
    ld [hl+], a
    rst JumpTable
    ld b, [hl]
    ld e, h
    ld a, b
    ldh [$80], a
    ld bc, $ff50
    rra
    db $e3
    dec c
    di
    add hl, bc
    rst $30
    ld bc, $0203
    ld b, $fe
    inc c
    db $fc
    ld bc, $075c
    nop
    ld bc, $0101
    inc bc

jr_027_7bc8:
    inc bc
    ld b, $04
    dec b
    inc bc
    inc bc
    ld d, l
    ld d, l
    rst $38
    ld hl, sp-$40
    nop
    nop
    nop
    add hl, bc
    ld c, l
    rst $28
    ld d, l
    ld d, b
    rst $38
    nop
    nop
    nop
    ld bc, $2b21
    ld a, [hl]

jr_027_7be3:
    cp $fc
    db $fc
    ld [bc], a
    db $fc
    add b
    jr jr_027_7be3

    ld [hl], b
    ldh a, [$c0]
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    nop
    nop
    add hl, bc
    rra
    nop
    ld h, $18
    ld a, [hl+]
    inc d
    ld b, $52
    inc l
    add h
    ld a, b
    ld hl, sp+$14
    ld a, [bc]
    nop
    add hl, bc
    inc a
    nop
    nop
    ld a, d
    inc [hl]
    db $fd
    ld a, d
    rst $38
    ld a, b
    ld sp, hl
    ld b, $16
    sbc c
    ld h, [hl]
    ld c, d
    inc [hl]
    dec l
    nop
    ld a, [bc]
    db $10
    ld b, b
    db $10
    ld b, h
    add d
    nop
    jr c, jr_027_7c59

    ld a, h
    ld e, h
    nop
    cp $3e
    ld a, a
    ld a, [hl]
    rst $38
    rlca
    rst $38
    inc bc
    nop
    rlca
    ld bc, $4103
    ld b, e
    ld bc, $0013
    ld h, b
    ld bc, $c041
    jr jr_027_7c3b

jr_027_7c3b:
    inc a
    jr jr_027_7c98

    ld bc, $7e3c
    inc a
    and l
    ld a, [hl]
    cp l
    ld h, [hl]
    inc hl
    or b
    add hl, hl
    inc a
    ld hl, sp-$80
    ld bc, $0200
    ld bc, $0300
    ld bc, $0315
    dec hl
    rla
    ld h, $1f

jr_027_7c59:
    nop
    ld [hl], $1d
    cpl
    inc e
    dec e
    ld c, $16
    rrca
    ld [$0709], sp
    ld b, $01
    scf
    ld b, $00
    ld a, [bc]
    nop
    inc b
    dec bc
    ld b, $0a
    rlca
    scf
    rrca
    ld d, [hl]
    nop
    cpl
    ld [hl], h
    cpl
    ld l, [hl]
    dec a
    ld l, d
    dec a
    ld e, e
    nop
    inc a
    ld c, e
    inc a
    dec l
    ld e, $26
    rra
    inc de
    nop
    rrca
    inc c
    inc bc
    inc bc
    nop
    ldh [rP1], a
    sbc b
    nop

Jump_027_7c90:
    ld h, b
    and [hl]
    ld a, b
    ld e, c
    ld a, $56
    ccf
    add hl, hl

jr_027_7c98:
    nop
    rra

Call_027_7c9a:
    ld a, [hl+]
    dec e
    dec d
    ld c, $f5
    ld c, $84
    ld bc, $bc7f
    ld a, a
    ld d, e
    inc a
    dec hl
    inc e
    dec hl
    ld [$070a], sp
    rlca
    inc bc
    ccf
    sub b
    ld h, b
    xor b
    nop
    ld [hl], b
    or h
    ld a, b
    dec hl
    db $fc
    db $e4
    rst $38
    dec de
    nop
    rst $20
    sbc l
    ld h, e
    sub $29
    di
    inc c
    ld [hl], l
    nop
    adc [hl]
    or $0f
    adc a
    ld a, a
    rst JumpTable
    ccf
    rst $28
    ld [$771f], sp
    adc a
    nop
    jr nz, jr_027_7cdc

    jr nc, jr_027_7ce6

    nop
    jr c, jr_027_7cee

    ld e, $28

jr_027_7cdc:
    dec c
    db $76
    dec bc
    ld h, a
    ccf
    rlca
    ld h, e
    ld hl, $2925

jr_027_7ce6:
    dec l
    ld sp, $c035
    add hl, sp
    inc a
    ret nz

    rlca

jr_027_7cee:
    ldh [$5c], a
    ld [hl], b
    jr nz, jr_027_7cfc

    jr z, jr_027_7d45

    jr jr_027_7d37

    ld a, [hl+]
    nop
    add b
    pop bc
    ld a, h

jr_027_7cfc:
    ret nz

    dec l
    ld sp, $3935
    dec a
    nop
    nop
    nop
    ld bc, $0200
    dec b
    inc bc

jr_027_7d0a:
    dec c
    rlca
    add hl, de
    inc bc
    dec c
    inc de
    dec sp
    rlca
    ld e, a
    ccf
    ld hl, $fc25
    add hl, hl
    dec l
    ld sp, $3935
    nop
    ld c, $18
    nop
    jr c, @+$26

    jr jr_027_7d45

    dec h
    nop
    inc c
    inc bc
    nop
    inc b
    inc b
    inc bc
    dec bc
    rlca
    inc d
    rrca
    ld hl, $1f63
    nop
    or a
    ld a, a
    rst $20

jr_027_7d37:
    ld a, a
    db $e3
    ld a, a
    xor e
    ld [hl], a
    nop
    ld c, b
    scf
    inc [hl]
    dec bc
    inc de
    inc c
    jr jr_027_7d4c

jr_027_7d45:
    jr nc, jr_027_7d53

    inc bc
    dec a
    jr nz, jr_027_7dab

    nop

jr_027_7d4c:
    sub b
    ld h, b
    nop
    ldh a, [$60]
    ld h, c
    nop

jr_027_7d53:
    ld b, $01
    add hl, bc
    rlca
    ld l, a
    dec bc
    ld b, c
    dec h
    inc b
    ld d, a
    or l
    dec h
    ldh [rP1], a
    rlca
    nop
    ld [$1107], sp
    rrca
    inc de
    rrca
    add $7f
    add hl, hl
    inc b
    inc bc
    inc bc

jr_027_7d6f:
    add hl, de
    add hl, bc
    ldh [$3c], a
    rrca
    nop
    ld e, d
    inc a
    ld a, [hl]
    ld b, c
    dec h
    add hl, hl
    nop
    ld a, [bc]
    inc e
    ld a, [hl]
    nop
    rst $38
    ld b, c
    dec h
    nop
    jr jr_027_7de6

    jr nz, jr_027_7d0a

    ld hl, $1838
    rra
    rlca
    rlca
    rra
    rla
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    ld [hl], c
    nop
    inc sp
    nop
    ld bc, $0037
    ld [hl], $00
    ld d, $00
    inc d
    rra
    ld de, $0080
    add hl, bc

jr_027_7da7:
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]

jr_027_7dab:
    ld e, d
    ld h, [hl]
    and l
    ld c, [hl]
    db $db
    ld hl, $e7db
    add hl, hl
    dec l
    or l
    ld h, c
    nop
    nop
    adc a
    nop
    scf
    inc c
    ld d, a
    jr c, jr_027_7d6f

    nop
    ld [hl], b
    cp e
    ld a, h
    sbc $3f
    ld [hl], e
    inc c
    ld c, a
    nop
    ccf
    ld h, a
    rra
    dec a
    ld [bc], a
    ret


    rlca
    ld h, h
    inc b
    inc bc
    rrca
    nop
    ld e, $01
    inc hl
    cp $00
    nop
    ld e, e
    cp h
    push af
    ld c, $ed
    ld e, $3b
    db $fc
    add b
    add hl, hl

jr_027_7de6:
    ld [hl], h
    adc b
    sub $38
    ld [$b6f4], a
    nop
    call z, Call_027_7c9a
    db $f4
    ld hl, sp-$28
    jr nz, jr_027_7da7

    nop
    ld h, b
    ld a, [$f0c0]
    nop
    inc c
    db $ec
    ld d, d
    nop
    or d
    ld [bc], a
    ld [c], a
    inc b
    inc b
    inc e
    inc e
    ld a, $00
    ld [hl+], a
    ld a, a
    ld b, c
    rst $38
    push bc
    rst $38
    rst $08
    rst $38
    ld [bc], a
    rst $38
    cp e
    rst $38
    ei
    or a
    or a
    ld h, $ff
    nop
    sbc $fe
    ld a, h
    ld a, h
    ld e, $1e
    dec l
    ccf
    ld a, [de]
    ld e, a
    ld l, l
    db $dd
    ld c, l
    ld b, b
    rst $28
    ld e, a
    add c
    add b
    ld b, c
    sbc c
    ld a, [hl]
    ld l, d
    inc a
    inc a
    ld b, b
    ld b, a
    inc b
    ld c, d
    ld c, l
    jr nc, jr_027_7e71

    nop
    nop
    dec c
    ld [de], a
    ld [de], a
    db $10
    scf
    scf
    ld a, a
    ld b, b
    cp e
    rst $38
    ei
    or a
    ld [bc], a
    rst $30
    rst $38
    cp a
    cp $ff
    rst $38
    rra
    ld c, $02
    nop
    ld [bc], a
    rlca
    rlca
    rrca

jr_027_7e57:
    rrca
    rra
    rra
    dec de
    nop
    rra
    dec sp
    scf
    scf
    ccf
    ld e, a
    ld a, [hl]
    ccf
    ld b, l
    ccf
    ret c

    rlca
    ld [bc], a
    dec b
    inc hl
    ld [$0040], sp
    ld b, $06
    pop af

jr_027_7e71:
    pop af
    ei
    dec bc
    rst $38
    dec b

jr_027_7e76:
    jr nz, jr_027_7e76

    ld [bc], a
    ld b, c
    ld b, $fc
    db $fc
    rst $38
    rst $38
    nop
    ret nz

    cp a
    and b
    rst JumpTable
    sub b
    rst $28
    adc a
    ldh a, [$fa]
    ld bc, $310e
    dec [hl]
    add hl, sp
    dec a
    nop
    nop
    inc de
    ld a, a
    inc e
    ld a, a
    add b
    cp $21
    dec h
    xor l
    jr jr_027_7eb4

    jr z, jr_027_7ec2

    inc a
    ld bc, $2415
    sbc [hl]
    inc c
    inc c
    ld e, $09
    ld b, $0f
    ld [bc], a
    rlca
    ld hl, $0e04
    dec hl
    nop
    nop
    ld [$0500], sp

jr_027_7eb4:
    jr jr_027_7eb7

    inc a

jr_027_7eb7:
    ld de, $3e00
    db $10
    ld l, a
    jr jr_027_7ee5

    inc e
    ld sp, $100e

jr_027_7ec2:
    ld c, $01
    nop
    jr nz, jr_027_7ef7

    jr nc, jr_027_7f41

    jr c, jr_027_7ee3

    ld a, h
    jr jr_027_7f0a

    ld hl, $4027
    ldh a, [$80]
    nop
    ret nz

    jr jr_027_7e57

    inc a
    ld [$887c], sp
    or $01
    jr @-$1a

    jr c, @-$72

    ld [hl], b
    ld [hl], b

jr_027_7ee3:
    add b
    ld e, a

jr_027_7ee5:
    add b
    add b
    inc c
    inc c
    ld d, $1e
    dec [hl]
    dec hl
    ld [hl], a
    nop
    ld c, e
    or l
    rst $08
    reti


    rst $28
    ld a, [c]
    cp $74

jr_027_7ef7:
    jr jr_027_7f75

    jr c, jr_027_7f33

    ld sp, hl
    ld b, b
    db $10
    add b
    nop
    jr nc, @+$04

    nop
    jr nc, @+$36

    cp $6c
    ld e, a
    ld a, [hl-]
    inc b

jr_027_7f0a:
    add a
    ld a, [hl]
    db $eb
    ld d, $3e
    ld [hl], l
    ld b, b
    ld [$ff88], sp
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $1d09
    ld e, $21
    nop
    ld a, $51
    ld a, $41
    inc a
    ld b, d
    nop
    inc a
    ret nz

    cp $e0
    inc c
    nop
    jr jr_027_7f30

    db $10
    ld [$700c], sp

jr_027_7f30:
    ld [$3040], sp

jr_027_7f33:
    add hl, de
    db $10
    add b
    ld [bc], a
    ld [bc], a
    ld bc, $0007
    ld [hl+], a
    jr nz, jr_027_7f5e

    ld d, b
    ld hl, sp+$23

jr_027_7f41:
    ld l, b
    nop
    ld hl, $04c0
    jr nz, jr_027_7f56

    rra
    rra
    add h
    inc hl
    inc h
    inc h
    ld d, b
    ld [hl], c
    ld d, a
    ld [$0000], sp
    ld [bc], a
    nop

jr_027_7f56:
    ld b, b
    ld b, h
    db $e4
    nop
    ld c, b
    nop
    ld a, [de]
    inc e

jr_027_7f5e:
    ld [$233e], sp
    cpl
    rst $38
    nop
    ld [de], a
    cp $e0
    add c
    ret nz

    nop
    nop
    nop
    ld c, h
    nop

jr_027_7f6e:
    ld d, b
    nop
    ld [hl], b
    nop
    nop
    adc b
    ld [hl], b

jr_027_7f75:
    db $e4
    jr jr_027_7f6e

    ld l, b
    rst $30
    ld l, d
    nop
    ld a, a
    ld b, $4e
    jr nc, jr_027_7ff7

    jr c, jr_027_7fcf

    jr nc, @+$1a

    ld a, $0c
    ld e, $3a
    nop
    dec c
    ld [hl], $36
    ld c, c
    nop
    ld a, a
    ld d, l
    ld l, e
    ld e, l
    ld h, e
    ld a, [hl+]
    ld [hl], $14
    inc e
    inc e
    ld [$1b08], sp
    ld c, $2e
    ld [hl-], a
    ld a, $1c
    ld [$083e], sp
    ld a, [hl-]
    inc d
    ld h, c
    ld [hl], $08
    ld [hl+], a
    ld a, [de]
    inc e
    inc d
    ld [$db33], sp
    ld [$3e2c], sp
    ld bc, $7f22
    ld h, e
    ld a, l
    ld d, a
    ld a, c
    ld c, a
    and c
    nop
    ld [hl], l
    ld e, a
    ld h, e
    ld a, a
    ld [hl+], a
    ld a, $14
    inc e
    ret nz

    add hl, sp
    dec a
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    nop

jr_027_7fcf:
    rrca
    ld [$181f], sp
    rra
    dec d
    ld e, $13
    sub b
    and c
    dec e
    rla
    inc l
    ld [$040f], sp
    rlca
    jr nz, jr_027_7fe4

jr_027_7fe2:
    inc bc
    dec a

jr_027_7fe4:
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rP1]
    db $10
    ld hl, sp+$08
    db $fc
    adc h
    ld [hl], h
    call c, $5024
    db $fc
    and c
    ld d, h
    inc l

jr_027_7ff7:
    db $fc
    jr jr_027_7fe2

    jr nc, @+$6a

    ret nc

    add hl, sp
    dec a
    nop

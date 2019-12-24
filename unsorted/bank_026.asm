; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX

    jr nz, jr_026_4002

jr_026_4002:
    ld d, d
    ld b, a
    or c
    rst $38
    inc hl
    db $10
    ld e, c
    ld [hl], d
    db $dd
    ld [bc], a
    ld a, e
    ret nz

    dec h
    pop hl
    ld c, a
    ld a, b
    ld c, l
    rla
    ld hl, $213e
    ld a, $7d
    rla
    and d
    db $db
    ld h, c
    adc e
    ld a, l
    rla
    and d
    ld h, c
    adc e
    ld a, l
    rla
    and d
    ld h, c
    adc e
    dec a
    dec c
    ld l, h
    cp a
    and d
    ld h, c
    adc e
    ld a, l
    rla
    and d
    ld h, c
    adc e
    ld a, l
    rla
    and d
    ei
    ld h, c
    adc e
    ld a, l
    rla
    and d

Call_026_403d:
    ld h, c
    adc e
    ld a, l
    rla
    ld hl, $213e
    ld a, $7d
    rlca
    rla
    ld d, b
    inc hl
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    rst $38
    sbc d
    dec hl
    ld d, c
    dec e
    ld e, e
    dec e
    db $ed
    dec e
    inc [hl]
    ld b, [hl]
    dec [hl]
    ld d, $00
    inc b
    adc a
    daa
    rst $38
    scf
    ld d, $35
    ld d, $00
    inc b
    adc a
    daa
    scf
    ld d, $86
    ld c, c
    ld l, a
    ld c, c
    inc d
    rla
    ld a, a
    ld a, [$b7aa]
    ld l, d
    ret nz

    dec e
    or h
    sbc d
    jr nc, jr_026_40c4

    inc hl
    nop
    ld d, [hl]
    ld [bc], a
    or h
    add $b2
    cpl
    and $30
    db $76
    db $10
    and b
    db $10
    dec a
    ld b, $e0
    dec l
    ld sp, $1dea
    cp d
    or d
    ld [hl-], a
    db $eb
    dec c
    rrca
    pop hl
    sub a
    ld d, b
    dec l
    add sp, $2a
    jp hl


    ld a, [de]
    cp c
    cp a
    ld [de], a
    db $10
    db $10
    dec [hl]
    ld b, a
    ld [hl], e
    inc l
    db $10
    ret nz

    ld [bc], a
    db $10
    db $10
    dec [hl]
    ld b, a
    inc l
    db $10
    ldh [rSC], a
    db $10

jr_026_40b6:
    rst JumpTable
    dec d
    inc [hl]
    ld c, d
    dec a
    ld d, c
    sbc b
    rlc e
    rst $28
    inc bc
    ld e, $a2
    ld e, h

jr_026_40c4:
    ld a, [hli]
    inc d
    inc hl
    rst $28
    inc bc
    ld d, e
    ld a, b
    and b
    and b
    or h
    cp a
    add hl, bc
    or l
    db $10
    ccf
    dec d
    inc [hl]
    ld c, d
    ld e, l
    jr nz, jr_026_40d9

jr_026_40d9:
    dec [hl]
    ld b, a
    inc l
    db $10
    ret nz

    ld [bc], a
    db $10
    db $10
    ld d, a
    dec [hl]
    ld b, a
    inc l
    db $10
    ldh [rNR33], a
    cp [hl]
    inc de
    inc b
    or h
    ld e, b
    dec hl
    cp e
    ld bc, $e10f
    rst $28
    ret nz

    dec h
    pop hl
    ld l, a
    ld c, [hl]
    ld d, a
    jr z, jr_026_4132

    ld de, $002d
    jr nc, jr_026_412c

    dec [hl]
    ld b, a
    sbc $11
    dec l
    nop
    or b
    dec e
    dec [hl]
    ld d, a
    inc l
    db $10
    or a
    and c
    ld a, d
    db $db
    ld [hli], a
    ld b, c
    di
    sub a
    sub c
    sub [hl]
    sub b
    nop

Call_026_4118:
    or l
    and h
    adc d
    sub l
    cp $f1
    adc $05
    db $f4
    add a
    scf
    inc bc

jr_026_4124:
    cpl
    inc a
    and h
    ld l, b
    ld e, [hl]
    inc bc
    or h
    adc b

jr_026_412c:
    inc bc
    ld e, h
    inc de
    ld d, b
    db $d3
    daa

jr_026_4132:
    jr nz, jr_026_40b6

    daa
    ld a, [bc]
    ld c, [hl]
    rlca
    inc b
    inc b
    dec [hl]
    ld h, a
    inc b
    inc b
    inc hl
    ld c, $ff
    ld d, d
    nop
    sub c
    sub [hl]
    sub b
    ld d, [hl]
    ld [bc], a
    sub c
    sub [hl]
    ld a, [hl]
    sub b
    call c, Call_026_5c47
    inc bc
    ld d, [hl]
    ld [bc], a
    ld e, h
    inc bc
    call c, Call_026_5c47
    inc bc
    and b
    db $fc
    add hl, bc
    and b
    ld e, h
    inc bc
    xor h
    dec e
    ld d, d
    nop
    ld e, h
    inc bc
    ld d, [hl]
    ld [bc], a
    ld e, h
    inc bc
    ld de, $47dc
    sbc e
    sub d
    sbc d
    ld d, [hl]
    ld [bc], a
    sbc e
    sub d
    sbc d
    sub e
    ld l, h
    adc b
    rst $30
    ld [hl], a
    inc b
    inc b
    dec [hl]
    ld h, a
    inc b
    inc b
    ld c, $d9
    ld [bc], a
    cp e
    rrca
    pop hl
    cp e
    ret nz

    dec h
    ld d, d
    ld [bc], a
    or [hl]
    add sp, $2a
    ld c, [hl]
    rlca
    ld h, c
    jp Jump_026_61bf


    and e
    db $db
    ld l, [hl]
    ld [bc], a
    sub d
    db $10
    or $66
    inc bc
    sub d
    db $10
    or $3e
    nop
    and [hl]
    daa
    jr z, jr_026_4124

    add c
    add d
    and [hl]
    daa
    or [hl]
    rst $28
    ld b, a
    add e
    adc b
    ld b, [hl]
    add h
    jp hl


    ld e, b
    and [hl]
    daa
    add l
    add [hl]
    add a
    and [hl]
    daa

Call_026_41b8:
    or h
    ld a, l
    xor a
    db $e3
    cp a
    ld h, c
    and e
    ld l, [hl]
    ld [bc], a
    ld h, c
    jp $2350


    inc de
    inc b
    or h
    dec b
    ld e, b
    dec hl
    cp e
    rrca
    pop hl
    rst JumpTable
    ret nz

    push de
    ld h, b
    inc hl
    pop bc
    ld a, [de]
    ld l, h
    inc bc
    adc h
    ld [de], a
    cp a
    ld h, c
    inc de
    or c
    inc bc
    ld [hl], a
    ld hl, sp+$00
    cp d
    rlca
    ld c, [hl]
    rlca
    or $61
    inc hl
    ld h, c
    inc de
    ld a, e
    inc h
    or a
    ld a, a
    rla
    ld [bc], a
    ld h, c
    inc hl
    jr jr_026_4206

    db $ed
    daa
    ld h, c
    inc hl
    ld h, c
    inc de
    ld a, e
    inc h
    or l
    rst $38
    rla
    ld [bc], a
    ld h, c
    inc hl
    jr jr_026_4216

    db $ed
    db $10

jr_026_4206:
    ld l, d
    ld [bc], a
    ld h, c
    inc hl
    jr jr_026_421e

    db $ed
    nop
    cp $bf
    ld h, c
    inc hl
    ld h, c
    inc hl
    ld a, e
    inc [hl]

jr_026_4216:
    ld h, c
    inc hl
    ld h, c
    inc hl
    ld a, e
    sbc b
    rst $00
    ld l, c

jr_026_421e:
    rst $28
    jr nz, @+$34

    push bc
    dec b
    add hl, bc
    ld l, h
    ldh a, [rPCM34]
    ld de, $004d
    db $10
    rst $28
    or c
    add $77
    ld h, b
    inc sp
    ld h, c
    inc hl
    ld l, e

jr_026_4234:
    inc hl
    or e
    sub d
    db $10
    sub d
    db $10
    sub d
    db $10
    or $e9
    ld a, $00   ; xor a
    db $10
    ld de, $5735
    ld de, $102c
    jr nz, jr_026_4249

jr_026_4249:
    dec [hl]
    ld d, a
    ret nc

    ld de, $a0a0
    ld [hl], l
    rra
    nop
    ld de, $5735
    pop de
    dec b
    dec bc
    ld c, $ff
    db $10
    cp c
    cp e
    rrca
    pop hl
    sub c
    jr nz, jr_026_4234

    or e
    inc b
    inc b
    inc bc
    ld h, [hl]
    inc b
    inc b
    ld a, $00   ; xor a
    ld [c], a
    inc b
    inc bc
    ld h, [hl]
    and h
    and h
    inc b
    ld a, $00   ; xor a
    inc bc
    ld h, [hl]
    inc bc
    ld d, $ff
    ld a, $00   ; xor a
    inc bc
    ld d, $81
    ld [hli], a
    inc bc
    ld d, $3e
    nop
    inc bc
    ld d, $81
    ld [hli], a
    inc bc
    ld d, $cf
    ld a, $00   ; xor a
    inc bc
    ld d, $81
    ld [hli], a
    inc bc
    ld d, $b1
    nop
    inc bc
    ld h, [hl]
    inc bc
    ld h, $45
    ld a, $00   ; xor a
    inc b
    inc bc
    ld h, [hl]
    and h
    and h
    inc b
    ld a, $00   ; xor a
    inc b
    ld d, d
    inc b
    inc bc
    ld h, [hl]
    inc b
    inc b
    ld c, $a9
    ld a, d
    call c, $1b12
    nop
    inc d
    ldh [$7f], a
    cp c
    rst $38
    inc hl
    or b
    ld e, [hl]
    inc b
    inc b
    or c
    jp $23ff


    ret nz

    ld c, d
    and b
    and b
    inc b
    or c
    rst $38
    inc hl
    ret nz

    ld c, d
    rst $38
    ld c, e
    ld c, l
    jr nc, jr_026_4304

    jp z, $ed2a

    nop
    ld [bc], a
    inc [hl]
    jp nz, $482a

    inc e
    rst $38
    inc hl
    ld a, a
    ret nz

    ld c, d
    ld a, e
    inc h
    ld [bc], a
    inc [hl]
    ret z

    ld c, d
    ld c, l
    dec l
    jr nc, jr_026_431d

    jp z, $042a

    add $b1
    rst $38
    inc hl
    jr nz, jr_026_434f

    inc b
    inc b
    or c
    rst $38
    inc hl
    ldh [$33], a
    dec b
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    rst JumpTable
    nop
    inc h
    sbc d
    dec hl
    nop
    inc h

jr_026_4304:
    rst $38
    inc sp
    jr nz, jr_026_4308

jr_026_4308:
    db $10
    call z, $0002
    inc b
    pop hl
    rst $38
    inc sp
    or e
    db $10
    pop af
    db $10
    call z, $0002
    inc b
    ld a, a
    ld c, c
    ld e, a
    pop de
    dec b

jr_026_431d:
    adc b
    add hl, hl
    cp [hl]
    add a
    add hl, de
    ei
    db $db
    ld h, a
    push af
    or h
    ld e, $f5
    push de
    or h
    ld e, $bd
    xor a
    dec l
    or $24
    rra
    or $2a
    ccf
    db $10
    rst $38
    dec bc
    ld a, [c]
    or a
    ld d, b
    ld c, e
    ld [hl], d
    ld e, b
    ld e, e
    rst $38
    and b
    db $d3
    ret nz

    db $d3
    ld d, d
    nop
    jp $dd73


    scf
    ld d, h
    ld l, d
    call c, Call_026_6447

jr_026_434f:
    ld l, d
    ld d, c
    db $fc
    ld h, a
    db $ed
    and c
    db $ed
    ld hl, sp-$69
    db $ed
    ld b, c
    ld bc, $35ed
    reti


    add a
    db $ed
    ld b, c
    ld bc, $b9ed
    ld l, b
    ld b, d
    or c
    cp d
    or l
    ld c, l
    ld b, c
    add c
    or h
    adc $0d
    db $10
    sbc c
    cp e
    and [hl]
    rrca
    pop hl
    rla
    ret nz

    dec h
    pop hl
    ld l, a
    ld c, [hl]
    rlca
    rra
    ld d, [hl]
    ld [bc], a
    rra
    and b
    and b
    ld a, [$2a1f]
    inc d
    rra
    sbc [hl]
    ld d, a
    ld d, l
    scf
    ld a, h
    inc d
    or b
    dec c
    ld d, [hl]
    scf
    ccf
    ld d, h
    daa
    ld l, [hl]
    ld [bc], a
    ld d, l
    daa
    or [hl]
    dec e
    ld d, h
    rla
    ld a, $00   ; xor a
    rra
    rra
    ld b, e
    ld [hl], a
    rlca
    ld a, [de]
    jr jr_026_43c3

    rra
    dec e
    rra
    ld a, [hl]
    rla
    rra
    rst JumpTable
    ld d, $04
    or [hl]
    dec e
    ld d, h
    rla
    ld a, [hl]
    ld [bc], a
    ld d, h
    daa
    rra
    ld d, l
    scf
    ld c, l
    dec c
    ld d, a
    and b
    scf
    ld d, l
    scf
    ld a, h
    inc h

jr_026_43c3:
    rra
    and c
    ld c, h
    rra
    ld d, [hl]
    ld [bc], a
    rra
    dec hl
    ld c, [hl]
    ld b, e
    inc de
    inc b
    or h
    ld e, b
    dec hl
    cp e
    rrca
    pop hl
    scf
    ret nz

    dec h
    pop hl
    ld l, a
    ld c, [hl]
    rlca
    add hl, bc
    ld b, c
    inc bc
    pop de
    add hl, sp
    and c
    and c
    jp $14ad


    ld b, c
    jp $a1bf


    ld a, $3e
    or e
    ld b, d
    ld c, d
    inc bc
    cp a
    ld l, [hl]
    ld [bc], a
    sub h
    ld e, [hl]
    sbc d
    ld l, $ee
    add hl, sp
    or e
    ld b, d
    pop de
    add hl, bc
    dec [hl]
    rst $08
    add hl, de
    rst $20
    ld b, h
    ld d, d
    pop de
    add hl, bc
    ld c, $1e
    ld a, $3e
    or e
    ld b, d
    ld c, d
    inc bc
    ld l, [hl]
    ld [bc], a
    sbc c
    ld b, c
    jp $09b3


    ld b, c
    inc bc
    pop de
    add hl, sp
    and c
    and c
    xor l
    inc b
    rla
    ld d, b
    inc hl
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    rst $38
    nop
    db $fc
    ld a, [c]
    rst $30
    db $f4
    sub a
    or b
    dec e
    ld d, e
    ld a, b
    ld l, [hl]
    ld [bc], a
    inc sp
    sbc h
    db $ed
    nop
    cp $3b
    and l
    ld d, a
    jr z, jr_026_4464

    ld a, $2d
    dec [hl]
    ld a, h
    db $ed
    nop
    or b
    dec e
    ld d, e
    ld a, b
    scf
    ld l, [hl]
    ld [bc], a
    pop af
    rst $30

jr_026_444c:
    ld b, e
    ei
    or d
    ld d, [hl]
    dec bc
    jp hl


    ld b, e
    rst $38
    ret nz

    dec h
    pop hl
    ld l, a
    cp [hl]
    add a
    ld l, c
    cp b
    dec [hl]
    ld b, a
    xor [hl]
    dec a
    inc b
    db $dd
    db $f4
    sub a

jr_026_4464:
    db $fd
    ld [bc], a
    ld a, l
    add hl, de
    ld l, e
    sbc b
    scf
    ld h, a
    or b
    dec e
    inc b
    db $dd
    db $f4
    rst $30
    ld b, [hl]
    cp e
    dec bc
    ld e, c
    inc a
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    ei
    ret nz

    ei
    jp nc, $1d9b

    rst $28
    rst $00
    ld e, $00
    ld d, $24
    or b
    ld e, c
    ld e, $00
    db $fd
    ld d, $04
    pop af
    ld [hl-], a

jr_026_4491:
    inc l
    jp nz, Jump_026_4f2c

    jr c, jr_026_44c9

    inc l
    ld [hl], a
    daa
    ld c, a

jr_026_449b:
    sbc b
    ld a, a
    ld a, [hli]
    inc d
    ld c, a
    cp b
    call $766a
    scf
    ld d, $04
    ld a, a
    ld e, l
    db $76
    scf
    and b
    ld d, $1d
    rrca
    sbc c
    ld d, l
    inc bc
    or d
    rrca
    pop hl
    ld [hl], e
    jr nz, jr_026_4491

    add h
    scf
    ld hl, $f71d
    jr z, jr_026_444c

    inc e
    jr z, @+$29

    ld hl, $1d6e
    ld sp, $8e3b
    inc c

jr_026_44c9:
    jr z, jr_026_4502

    rra
    jr z, jr_026_4525

    ld d, e
    ld c, b
    rra
    cp e
    ld d, e
    scf
    xor $67
    rra
    ld d, $04
    rla
    dec c
    xor $67
    rra
    ld d, c
    jr c, jr_026_4560

    ld a, [hl]
    sbc h
    ld d, l
    rla
    adc [hl]
    inc c
    ld [hl], c
    call Call_026_4853
    ld [hl], a
    ld l, l
    ret nz

    reti


    sbc e
    ret nz

    dec h
    ld d, d
    ld [bc], a
    or [hl]
    add sp, $2a
    cp [hl]
    ld d, a
    jr nz, jr_026_449b

    dec d
    inc de
    ld a, c
    db $fc
    ld [hl], a
    jr nz, @-$5e

jr_026_4502:
    dec d
    inc de
    ld a, h
    inc d
    or b
    dec e
    push af
    ld [$ff21], sp
    ld sp, $6e3b
    ld [bc], a
    pop af
    rst $30
    di
    rst $30
    dec [hl]
    add a
    or b
    dec e
    ld b, h
    sbc l
    or b
    sbc d
    ld a, d
    ld hl, $1e4d
    ld b, h
    ld a, [c]
    or a
    ld d, b
    inc hl

jr_026_4525:
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    ld bc, $e10f
    rst $38
    ret nz

    dec h
    pop hl
    ld l, a
    ld c, [hl]
    rlca
    ld sp, $33fe
    adc $02
    ld c, c
    sub $12
    dec a
    sbc $fb
    dec c
    ld l, $a6
    daa
    and d
    and [hl]
    daa
    ld l, l
    ld [de], a
    ld sp, $02ee
    ld c, c
    sub $12
    or a
    dec a
    sbc $3d
    sbc $4d
    ld d, e
    or d
    ld d, [hl]
    dec bc
    ld e, b
    dec hl
    cp e
    rrca
    pop hl
    db $fd
    ldh [rWY], a

jr_026_4560:
    and b
    add sp, -$56
    push af
    rst $20
    or $d7
    or $97
    call nz, $2a28
    inc b
    ld b, c
    ld c, d
    add hl, sp
    cp a
    and b
    and c
    add hl, bc
    and c
    xor c
    add hl, hl
    and c
    db $f4
    add hl, bc
    and c
    ld c, l
    dec c
    or e
    ld c, c
    add hl, hl
    ld d, l
    rla
    ld c, d
    add hl, sp
    or b
    cp d
    xor [hl]
    or [hl]
    xor a
    cp d
    sbc l
    ld c, $b0
    cp d
    or h
    ld c, a
    ld e, e
    and b
    ld e, b
    ld e, e
    cp a
    ret nz

    dec h
    pop hl
    ld l, a
    ld c, [hl]
    rlca
    ld de, $0eaa
    jp c, $39ee

    dec e
    rst AddAToHL
    add hl, bc
    rra
    rst AddAToHL
    add hl, bc
    pop de
    add hl, bc
    ld c, $da
    ld a, [hl]
    ld [bc], a
    sub $19
    ld a, $3e
    and h
    db $fc
    ld a, $19
    pop de
    add hl, de
    ld l, [hl]

jr_026_45b8:
    ld [bc], a
    ld de, $eeaa
    ld [bc], a
    sub $19
    rst AddAToHL
    add hl, bc
    dec bc
    rst AddAToHL
    add hl, bc
    pop de
    add hl, bc
    or c
    ccf
    xor a
    ld a, $3e
    or c
    nop
    ld e, [hl]
    or l
    ld de, $4eaa
    ld b, e
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    rst $38
    ret nz

    dec h
    pop hl
    ccf
    push bc
    dec b
    cp [hl]
    add a
    ld a, c
    cp l
    ld [bc], a
    ld c, c
    ld a, [hl]
    ld [bc], a
    ld b, c
    call $10ff
    rst $38
    ld de, $753c
    scf
    ld c, [hl]
    jr c, jr_026_45b8

    ld a, h
    ld a, [hl]
    ld [bc], a
    inc sp
    inc a
    ld d, e
    ld c, b
    ld h, c
    ld l, [hl]
    ld [bc], a
    and b
    and b
    db $10
    db $10
    inc bc
    ld c, l
    ld a, h
    ld c, d
    db $10
    cp d
    db $10
    ld d, c
    ld e, b
    ld b, h
    ld c, [hl]
    ld b, e
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    dec c
    jr nz, jr_026_465b

    and b
    ld c, b
    ld h, a
    or h
    ld a, $a0
    rst $30
    rst $30
    rst $30
    inc b
    rst $30
    rst $30
    db $fd
    jr @-$08

    and b
    rst $30
    push af
    rst $30
    ld e, c
    adc d
    inc e
    and b
    db $10
    xor h
    add hl, de
    ld d, d
    nop
    db $10
    push hl
    add hl, de
    push af
    sub b
    push af
    and b
    db $10
    push af
    db $dd
    daa
    pop af
    db $10
    push hl
    add hl, de
    add b
    or $f6
    and b
    db $10
    or $a0
    or [hl]
    adc a
    rla
    ld e, b
    rst $30
    db $f4
    rst $30
    adc d
    inc e
    ld [$1068], a
    push hl
    add hl, de
    push af
    ld b, b

jr_026_465b:
    push af
    and b
    db $10

jr_026_465e:
    push af
    and b
    or h
    adc a
    rla
    db $10

jr_026_4664:
    ld b, c
    push hl
    add hl, de
    or $f6
    and b
    db $10
    or $ed
    db $10
    push af
    ldh a, [$a0]
    rst $30
    or $f7
    adc d
    inc e
    ld d, h
    rla
    ld a, $00   ; xor a
    inc h
    ccf
    ld b, b
    and b
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    dec c
    jp hl


    cp e
    ld bc, $e10f
    inc bc
    jr nz, jr_026_4664

    jr nz, jr_026_465e

    or e
    db $10
    ld de, $08b1
    or e
    pop hl
    ld h, $00
    or c
    ld [$10b3], sp
    ld c, l
    nop
    ld b, b
    ret nc

    add b
    db $d3
    rla
    ldh a, [$d7]
    inc d
    inc d

jr_026_46a6:
    add c
    inc sp
    xor d
    ld a, e
    inc [hl]
    ld de, $a0a0
    ld [de], a
    xor d
    jr z, jr_026_46d9

    xor d
    and b
    ld c, h
    db $10
    or e
    db $10
    ld de, $a064
    xor d
    ld [hl], l
    ld l, $aa
    and b
    inc l
    db $10
    jr nz, jr_026_46c4

jr_026_46c4:
    and b
    ld [hl-], a
    xor d
    add l
    ld l, $aa
    and b
    inc l
    db $10
    ldh [$33], a
    and $00
    ld [bc], a
    and $e9
    ld b, e
    sbc b
    dec l
    jr jr_026_46da

jr_026_46d9:
    ld b, e

jr_026_46da:
    ld b, e
    ld c, d
    ld [hl-], a
    dec l
    jr jr_026_46a6

    ld l, $db
    pop de
    add hl, sp
    ld c, l
    ld [bc], a
    dec l
    jp nc, $9c8e

    ld e, $2d
    jp nc, $ceae

    ld c, $00
    jr @+$28

    ld bc, $2626
    ld bc, $0126
    ld [hli], a
    ld h, $da
    ld a, $2d
    jr @+$2c

    add a
    dec d
    ld a, [hli]
    ld bc, $2ad0
    ld bc, $0126
    ld a, l
    inc bc
    dec l
    sub d
    inc d
    ld a, [hl-]
    ld bc, $93e5
    inc b
    ld a, [hli]
    add e
    ld b, $00
    dec l
    jp nc, $ceae

    ld e, $d3
    sbc [hl]
    ld b, $01
    ld l, a
    db $e3
    jr nc, @-$2d

    inc hl
    sbc c
    ld a, $d1
    add hl, sp
    ld bc, $2e18
    rst $38
    inc d
    ld a, $18
    sub b
    jr jr_026_474b

    jr @+$1a

    sub d
    inc d
    jr jr_026_4767

    ccf
    cpl
    ld l, l
    jp nc, $263e

    sbc d
    inc bc
    ld a, [hl]
    sbc a
    ld a, [hli]
    sbc d
    inc bc
    ld a, [hl]
    adc a
    add hl, de
    sbc c
    ld [hl-], a

jr_026_474b:
    ld bc, $2e18
    ld l, a
    inc bc
    db $d3
    ld c, [hl]
    jr @+$2c

    sbc d
    inc bc
    ld [hl], $2e
    cpl
    ld bc, $5ed3
    ld a, [hli]
    sbc d
    inc bc
    ld a, [hl]
    adc a
    ld h, $2a
    ld a, $01
    ld a, h
    inc de

jr_026_4767:
    db $d3
    sbc [hl]
    add e
    ld b, $bf
    db $e4
    ldh [$d6], a
    call z, $182d
    add $2e
    pop de
    ld e, c
    nop
    dec l
    jp nc, $ceae

    ld c, $b7
    jp nc, $ceae

    ld c, $c2
    ld l, $26
    db $d3
    ld a, $7d
    inc bc
    dec l
    jp nz, $d82e

    ld a, [hli]
    ld bc, $8726
    dec d
    dec a
    ld bc, $d22d
    sbc [hl]
    dec a
    ld bc, $2df6
    jp nc, $3d9e

    ld bc, $d22d
    sbc [hl]
    dec a
    ld bc, $2133
    add a
    dec h
    ld a, a
    ld [$8436], a
    ld h, $87
    dec h
    jp z, $804f

    dec d
    ld h, c
    inc hl
    adc d
    ld [hl], $d9
    ld bc, $019a
    jr jr_026_483a

    sbc a
    sub e
    inc b
    jr jr_026_483f

    sbc a
    sub e
    inc b
    ld l, h
    jr @+$30

    ld l, a
    inc bc
    sub c
    sub e
    ld l, $2f
    ld bc, $9691
    ld l, $3b
    cpl
    ld bc, $9f71
    ld l, $2f
    ld bc, $7ed3
    ld a, h
    inc de
    ld a, [hli]
    ld a, [hli]
    dec de
    db $d3
    ld a, [hl]
    call z, $2a2f
    db $d3
    ld a, [hl]
    call z, $2a2f
    ld bc, $c001
    ld h, $26
    ld bc, $2601
    ld h, $82
    ld h, $2f
    ld bc, $f400
    db $f4
    ld a, [hli]
    ld a, [hli]
    db $f4
    db $f4
    ld a, [hli]
    ld a, [hli]
    inc b
    db $f4
    db $f4
    inc a
    ld de, $00ff
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    inc de
    sub e
    dec h
    sub h
    dec b
    ld e, h
    dec c
    sbc $1d
    ld [hl], h
    and [hl]
    or e
    ld hl, $a23e
    call z, $de02
    dec c
    ld d, c
    jp nz, $cea6

    or e
    ld b, a
    ld e, h
    ld a, e
    rla
    sbc $0d
    cp a
    and d
    xor c
    nop
    jr z, jr_026_4858

    add sp, $45
    and d
    cp l
    sbc $0d
    or e
    ld b, a
    ld e, h

jr_026_483a:
    ld a, e
    rla
    sbc $0d
    sbc a

jr_026_483f:
    ret nz

    dec e
    xor c
    nop
    ld d, h
    ld [bc], a
    jp c, $de00

    dec e
    and [hl]
    or e
    ld hl, $de3e
    and d
    call z, $de02
    dec e

Call_026_4853:
    pop hl
    dec c
    ld e, c
    dec de
    cp [hl]

jr_026_4858:
    db $eb
    dec e
    sbc $1d
    dec bc
    nop
    inc [hl]
    nop
    inc [hl]
    and [hl]
    rrca
    pop hl
    rst $38
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    ld c, a
    dec l
    sub l
    dec h
    rst $38
    sub h
    dec b
    ld e, h
    dec a
    inc d
    rla
    jr z, @+$39

    cp h
    ld de, $1db0
    ld de, $2a3c
    inc d
    sbc c
    ld l, [hl]
    ld [bc], a
    and b
    ld b, h
    add h
    scf
    ld a, [hli]
    inc b
    and e
    ld b, l
    ld a, [hl]
    ld [bc], a
    rst $38
    and d
    ld c, c
    add l
    ld a, [hl-]
    cp [hl]
    dec a
    dec [hl]
    ld d, a
    call z, $365d
    ld h, a
    db $dd
    ld c, l
    ld e, b
    inc bc
    ld a, l
    ld e, b
    inc bc
    cp [hl]
    db $eb
    dec l
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rrca
    pop hl
    ld [hl], a
    call z, $0002
    inc [hl]
    ld bc, $0034
    adc b
    add hl, sp
    push de
    ld l, b
    ld c, a
    dec l
    cp c
    and a
    call nz, $a123
    inc bc
    db $dd
    dec l
    or e
    add hl, bc
    jp $0943


    call c, $943d
    or e
    and c
    ld d, h
    ld c, d
    and c
    call c, $b33d
    add hl, bc
    ld [hl], h
    ld c, c
    sub $09
    call c, Call_026_703d
    nop
    db $ed
    add l
    dec bc
    db $ed
    ld a, h
    nop
    db $dd
    dec l
    db $10
    or e
    add hl, bc
    and c
    db $ed
    add l
    dec bc

jr_026_48f0:
    db $ed
    and c
    add hl, bc
    rst $08
    call c, Call_026_403d
    ld hl, $3a49
    db $dd
    dec l
    or e
    add hl, bc
    call nz, Call_026_4118
    ld bc, $090e
    call c, $e56d
    ld b, e
    db $ec
    dec e
    inc a
    and [hl]
    or e
    jr nz, jr_026_4971

    and e
    inc de
    ld c, a
    ldh [$e0], a
    push hl
    and b
    or e
    ld a, [hl]
    ld a, [$1054]
    ld a, e
    ld [de], a
    adc h
    scf
    ld [c], a
    dec [hl]
    pop af
    inc de
    adc h
    scf
    or e
    db $db
    db $e4
    dec b
    db $e4
    dec b
    and b
    ld e, d
    nop
    sbc l
    dec h
    or e
    db $e4
    dec b
    ld d, e
    db $10
    ei
    ld e, d
    nop
    sbc l
    dec h
    or e
    db $e4
    dec b
    and c
    dec b
    jp hl


    ld d, l
    inc sp
    rlca
    db $e4
    dec d
    ld d, b
    db $fd
    db $fd
    and b
    or c
    ld c, h
    inc l
    or l
    ld d, d
    jr nz, jr_026_48f0

    and [hl]
    db $fd
    ld a, [c]
    inc bc
    inc l
    inc d
    and [hl]
    or e
    db $10
    ld l, c
    cp e
    db $db

jr_026_495c:
    ld [bc], a
    ld bc, $e10f
    db $fd
    jr nz, jr_026_495c

    and b
    or c
    inc bc
    adc d
    inc e
    ld [$f867], a
    nop
    ld [hl], $77
    ld a, [de]
    ld [bc], a
    rst $38

jr_026_4971:
    ld hl, sp+$00
    ld [hl], $77
    ld [hli], a
    rrca
    ld hl, sp+$00
    or h
    ld a, $ec
    ld b, a
    ld hl, sp+$10
    ld h, d
    inc e
    rst $28
    ld h, l
    inc c
    xor $27
    ld hl, sp+$00
    ld h, c
    inc l
    db $10
    db $ec
    scf
    ld l, d
    ld [bc], a
    jp z, Jump_026_6c2a

    ld a, [de]
    ld de, $03cb
    rst $28
    inc bc
    or $f8
    nop
    or h
    ld e, $1a
    xor $11
    call c, $924b
    db $10
    ld h, d
    inc e
    db $10
    inc l
    inc d
    ld de, $e759
    ld b, e
    ld bc, $e10f
    rst $28
    ld d, b
    dec l
    dec h
    ld c, b
    ld e, h
    dec e
    ldh a, [rNR21]
    ld b, d
    jr z, jr_026_49f3

    ei
    ld h, $f0
    sub $77
    jr nc, jr_026_4a09

    add hl, hl
    scf
    db $dd
    dec l
    or e
    ld b, l
    inc l
    ld b, [hl]
    inc e
    call c, $b33d
    rst $38
    ld b, l
    inc l
    ld b, [hl]
    inc e
    call c, $343d
    add a
    dec e
    di
    rst $28
    rst $00
    sbc $8b
    jp hl


    ld c, b
    dec b
    ld de, $b2b9
    rrca
    pop hl
    rst $28
    ret nz

    ei
    or d
    ld a, [$dab4]
    ldh a, [rPCM34]
    or h
    rst $38
    ld c, h
    ld [bc], a

jr_026_49f3:
    ld c, c
    ld a, l
    ld a, [hl-]
    rrca
    or c
    ld e, $b1
    inc hl
    db $fc
    ld [hl], a
    sub d
    db $10
    or $f6
    and b
    ld b, l
    rst $38
    xor $02
    ld d, [hl]
    ld [bc], a
    db $db

jr_026_4a09:
    ld [bc], a
    rst $00
    ld l, c
    ldh a, [$d3]
    add [hl]
    ld h, a
    jp hl


    ld c, b
    ld [$0323], a
    db $db
    ld [bc], a
    jr jr_026_4a72

    cp a
    jr z, jr_026_4a5e

    nop
    inc [hl]
    call Call_026_5202
    scf
    adc b
    add hl, hl
    ld e, h
    dec c
    and [hl]
    rst $28
    inc de
    dec b
    ld a, [hli]
    inc d
    db $10
    ld [hl], c
    add hl, sp
    cp c
    nop
    or l
    and b
    db $10
    db $ed
    ld d, [hl]
    ld [bc], a
    db $10
    ld d, d
    ld b, a
    ld a, $00   ; xor a
    db $10
    or d
    ld e, c
    sbc d
    add hl, sp
    and b
    scf
    di
    ld b, $ad
    ld d, c
    ld d, a
    and b
    and b
    dec l
    nop
    ld d, b
    inc bc
    inc d
    inc h
    ldh a, [rNR13]
    ld a, $10
    db $ed
    nop
    sub h
    ld [de], a
    ld d, c
    ld c, b
    ld a, [hli]
    inc b
    xor $17

jr_026_4a5e:
    sub h
    or e
    ld b, $1d
    cp h
    dec b
    ld d, c
    jr c, @-$4d

    nop
    or l
    and b
    sub h
    dec b
    ldh [rNR44], a
    ld a, d
    jp hl


    ld b, e
    or h

jr_026_4a72:
    cp b
    or a
    ld [bc], a
    ld c, c
    dec e
    ld l, d
    sbc l
    jr jr_026_4a82

    sub h
    ldh [rNR24], a
    pop af
    ld a, [hl]
    ld l, l
    rst $30

jr_026_4a82:
    pop af
    sub h
    ld h, b
    dec de
    ld c, [hl]
    ld e, b
    jr jr_026_4a91

    ld h, e
    daa
    ld [hl-], a
    or [hl]
    ld c, a
    ld c, b
    inc e

jr_026_4a91:
    push af
    ld h, d
    ld b, a
    ld c, a
    ld c, b
    dec e
    db $f4
    di
    ld h, d
    ld b, a
    ld c, a
    ld c, b
    dec e
    or $62
    ld b, a
    ld c, a
    ld c, b
    sub $12
    ret


    inc de
    cp $b4
    ld a, a
    ld l, l
    ld [hl-], a
    scf
    ld l, [hl]
    ld l, b
    jr @+$09

    ld a, [hl-]
    add hl, sp
    db $10
    ld l, c
    ld d, b
    inc [hl]
    ld bc, $e10f
    rst $38
    jr nz, jr_026_4b0f

    daa
    ld [$0d5c], sp
    xor [hl]
    inc bc
    db $f4
    add a
    nop
    inc b
    xor a
    sbc d
    call z, $1402
    and [hl]
    nop
    sbc h
    dec b
    ld de, $063a
    db $10
    and b
    db $10
    dec l
    dec de
    inc de
    and [hl]
    rst $28
    sub a
    call z, $a602
    rst $28
    inc de
    db $10
    and b
    ld l, d
    db $10
    ld a, [hl-]
    ld b, $10
    dec de

jr_026_4ae9:
    inc de
    and [hl]
    rst $28
    sub a
    call z, $a602
    adc d
    nop
    inc d
    inc b
    db $10
    ld a, [hl-]
    ld b, $11
    and b
    db $10
    dec de
    inc de
    ld a, a
    xor [hl]
    inc bc
    db $f4
    add a
    nop
    inc b
    xor a
    sbc d
    call z, $fe02
    ld [hl], $14
    inc d
    and b
    inc d
    and b
    or h

jr_026_4b0f:
    db $ec
    dec c
    and [hl]
    rrca
    pop hl
    dec a
    jr nz, jr_026_4ae9

    or e
    inc bc
    ld b, $35
    ld b, a
    inc bc
    ld b, $3e
    nop
    and h
    and h
    and l
    ldh a, [rNR13]
    ld a, [$13f0]
    and h
    and h
    ld a, $00   ; xor a
    and h
    ld d, [hl]
    ld [bc], a
    xor d
    ld a, [$0256]
    ld a, [$0256]
    and h
    ld l, [hl]
    ld l, b
    and h
    ld hl, sp-$69
    and h
    ld a, [$03a0]
    ld b, $a0
    ld a, [$986b]
    and h
    jr z, jr_026_4b7f

    ld d, l
    ld a, $0d
    and h
    ld d, [hl]
    ld [bc], a
    ld a, [$0256]
    ld a, [$0256]
    and h
    add hl, hl
    ld a, $00   ; xor a
    and h
    and h
    ldh a, [rNR13]
    ld a, [$13f0]
    and h
    and h
    ld b, a
    ld a, $00   ; xor a
    inc bc
    ld b, $35
    ld b, a
    and h
    and h
    ld b, d
    ld c, $d9
    cp e
    ld bc, $e10f
    rrca
    and [hl]
    daa
    adc b
    add hl, sp
    ld c, e
    dec h
    sub $02
    ld d, h
    dec e
    dec e
    ld d, h
    db $fd

jr_026_4b7f:
    ld [hl], l
    ld b, a
    and b
    rra
    db $e4
    nop
    ret nc

    rst AddAToHL
    inc de
    call nz, $81ab
    pop bc
    or b
    push de
    db $eb
    add b
    pop de
    db $10
    ld l, c
    or l
    db $76
    rla
    or h
    rst $38
    ld b, e
    and b
    ld [hl], $7c
    inc d
    rlca
    nop
    inc [hl]
    inc bc
    inc h
    db $db
    ld [hli], a
    or $b7
    sub c
    dec d
    ld hl, $a002
    dec hl
    ld [de], a
    call Call_026_6102
    sub a
    call z, $ff12
    ld d, [hl]
    ld [bc], a
    inc [hl]
    ld h, a
    call z, $a212
    ld [bc], a
    inc [hl]
    ld h, a
    inc e
    inc sp
    inc de
    daa
    add hl, hl
    scf
    sbc a
    call $2802
    scf
    ld b, [hl]
    inc a
    call z, $2812
    scf
    and d
    ld b, h
    ld c, b
    inc e
    rst $38
    call z, $2812
    scf
    ld b, [hl]
    inc a
    call z, $c212
    xor c
    db $dd
    dec l
    nop
    inc [hl]
    nop
    inc [hl]
    rla
    sbc $1d
    nop
    inc [hl]
    nop
    inc [hl]
    and [hl]
    rrca
    pop hl
    rst $28
    ld [bc], a
    inc h
    ld c, c
    ld sp, $1400
    rst $38
    inc hl
    or e
    ld h, l
    ld l, $cc
    ld [bc], a
    db $dd
    dec l
    rst $28
    ret nz

    ld [bc], a
    ld c, c
    ld sp, $1400
    rst $38
    inc hl
    or e
    ld h, l
    ld l, $cc
    ld [bc], a
    db $dd
    dec l
    rst $28
    ret nz

    ld [bc], a
    ld c, c
    ld sp, $1400
    rst $38
    inc hl
    or e
    ld h, l
    ld l, $cc
    ld [bc], a
    db $dd
    dec l
    rst $28
    ret nz

    ld [bc], a
    ld c, c
    ld sp, $1400
    rst $38
    inc hl
    or e
    ld h, l
    ld l, $cc
    ld [bc], a
    db $dd
    dec l
    push af
    ret nz

    ld [bc], a
    and c
    db $76
    ld c, $a1
    call z, $dd02
    dec l
    db $10
    inc de
    add [hl]
    ld e, $c7
    call z, $dd02
    dec l
    ldh [rNR33], a
    and $00
    and $eb
    dec e
    call $ff02
    nop
    inc [hl]
    inc bc
    inc h
    call z, $5e02
    dec a
    ret c

    ld c, b
    inc l
    inc bc
    cp [hl]
    scf
    ld [hl], a
    rlca
    xor [hl]
    ld c, l
    ld hl, sp+$77
    ld e, c
    rla
    dec [hl]
    ld b, a
    jr @-$60

    scf
    ld c, l
    ld e, b
    jr c, jr_026_4cde

    xor e
    add hl, hl
    ld d, d
    nop
    ld c, l
    ld c, l
    and b
    inc a
    xor e
    add hl, hl
    add b

jr_026_4c76:
    ld c, l
    dec e
    add [hl]
    pop af
    ld [hl], a
    daa
    cp $58
    ld c, l
    and b
    and b
    ld c, l
    ld e, d
    jr c, jr_026_4c76

    or b
    adc d
    ld c, l
    ld c, l
    ld c, l
    ld c, $d9
    adc $1d
    nop
    inc [hl]
    nop
    inc [hl]
    ld [bc], a
    and [hl]
    rrca
    pop hl
    rst $38
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    rst $38
    inc hl
    and l
    ld [de], a
    rst $30
    nop
    inc [hl]
    sbc $1d
    ret nz

    ld [bc], a
    ld c, e
    xor d
    ld b, $29
    ld b, d
    ld [bc], a
    inc [hl]
    ld d, e
    ld e, b
    ld a, [hl]
    or [hl]
    rst $38
    inc hl
    ld d, d
    nop
    ld sp, $ea07
    jr c, jr_026_4cc4

    inc [hl]
    ld d, c

jr_026_4cc4:
    ld e, b
    or h
    ei
    rst $38
    inc hl
    and b
    daa
    ld c, e
    db $db
    ld [bc], a
    call $e02d
    dec l
    db $eb
    inc de
    nop
    inc d
    ld a, a
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    rst $38

jr_026_4cde:
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    rrca
    pop hl
    ccf
    nop
    inc b
    sub e
    dec h
    sub h
    dec b
    ld e, h
    dec c
    sbc $1d
    ld sp, $a036
    ld h, b
    rst $28
    dec de
    inc d
    sbc $1d
    and d
    or [hl]
    jr nz, @+$04

    or a
    ld de, $773c
    rlca
    call $be03
    or a
    ld [hl], l
    ld bc, $06a8
    and h
    ld d, $ca
    inc de
    rst $28
    inc bc
    ld h, b
    add e
    ld l, l
    ld d, [hl]
    ld h, b
    adc l
    ld bc, $1414
    ld h, b
    ld d, l
    rla
    ld h, b
    ld d, [hl]
    ld [bc], a
    ld h, b
    and [hl]
    or h
    rst $08
    ld [c], a
    pop hl
    dec c
    or l
    ld h, b
    ld d, [hl]
    ld [bc], a
    ld h, b
    dec [hl]
    ld d, $f9
    db $dd
    dec l
    and [hl]
    or e
    add c
    ld [bc], a
    inc sp
    ld [hl], $dd
    dec l
    pop hl
    dec c
    ld e, c
    dec de
    ld a, [bc]
    cp [hl]
    db $eb
    dec e
    and [hl]
    rrca
    pop hl
    ld a, a
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    nop

Call_026_4d4d:
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    and [hl]
    ldh a, [$b8]
    cp c
    pop af

Jump_026_4d57:
    cp b
    ld e, h
    dec c
    ld e, [hl]
    ld c, l
    ret nz

    ld [bc], a
    ld b, e
    nop
    add hl, de
    call z, $a602
    nop
    inc d
    rla
    call z, $b302
    add hl, bc
    and b
    sbc $09
    ld e, e
    ld [hli], a
    dec d
    dec e
    call z, $3202
    ld h, $4b
    dec a
    ld b, $14
    inc d
    rst $38
    call z, $3402
    scf
    dec a
    ld b, $51
    inc h
    ldh [$2d], a
    db $eb
    inc de
    sbc $1d
    nop
    inc [hl]
    ld a, a
    nop
    inc [hl]
    sbc $1d
    nop
    inc [hl]
    nop
    inc [hl]
    sbc $1d
    nop
    inc [hl]
    nop
    inc [hl]
    and [hl]
    ld bc, $e10f
    ccf
    ld d, b
    dec l
    daa
    ld d, d
    db $dd
    dec l
    jp nz, $c0b2

    ld [de], a
    ld [hl], c
    ld de, $5555
    ld b, h
    ld d, [hl]
    ld d, h
    call c, $b33d
    ld d, [hl]
    ld d, h
    jp Jump_026_5622


    ld [hli], a
    ld d, h
    call c, $b33d
    ld d, [hl]
    ld d, h
    add hl, bc
    nop
    and b
    ld d, h
    add h
    ld d, [hl]
    ld d, h
    call c, $b33d
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld d, h
    ld [bc], a
    adc b
    ld d, h
    ld d, [hl]
    ld d, h
    call c, $b33d
    ld d, [hl]
    ld d, h
    add hl, bc
    nop
    db $10
    and b
    ld d, h
    ld d, [hl]
    ld d, h
    call c, $b33d
    ld d, [hl]
    ld d, h
    ld de, $1171
    ld d, h
    ld d, [hl]
    ld d, h
    call c, $b33d
    ld d, [hl]
    ld d, h
    or l
    call nz, Call_026_5432
    call c, $b33d
    ld [hl], c
    ld de, $1171
    ld d, h
    call c, $036d
    push hl
    ld b, e
    db $ec
    dec e

Jump_026_4e02:
    rst $38
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b

jr_026_4e09:
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    rra
    ld h, d
    ld e, h
    dec c
    rst $38
    nop
    inc d
    cp a
    ld h, a
    call z, $0002
    inc d
    ccf
    ld c, d
    dec [hl]
    ld d, $00
    inc h
    adc a
    rla
    db $fc
    add hl, bc
    pop af
    jp hl


    nop
    call z, $0002
    inc d
    ccf
    ld c, d
    dec [hl]
    ld d, $00
    inc h
    pop bc
    rst $28
    inc b
    ld de, $a010
    db $10
    db $10
    dec de
    inc de
    nop
    inc d
    pop hl
    rst $28
    inc b
    db $10
    db $10
    and b
    ld de, $163b
    nop
    inc h
    cp a
    ld h, a
    ld a, a
    call z, $0002
    inc d
    ld c, a
    inc hl
    rlca
    rla
    db $ec
    dec c
    nop
    inc d
    rrca
    pop hl
    rlca
    ld d, b
    dec l
    dec b
    adc h
    ret nz

    ld [bc], a
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    and b
    jr c, jr_026_4e09

    ld c, c
    ld c, c
    dec d
    dec c
    ld e, $18
    ld [hl], d
    call nz, $a0a0
    sub e
    ld [hl], e
    inc [hl]
    ld d, [hl]
    ld [bc], a
    ld c, c
    ld c, c
    ld a, $00   ; xor a
    ld c, c
    add hl, bc
    ld [hl], e
    inc d
    ld c, e
    jp hl


    nop
    ld [hl], a
    inc b
    ld c, b
    ld a, $00   ; xor a
    ld c, b
    and b
    ld [hl], e
    inc d
    ld c, c
    ld b, b
    and b
    and b
    ld c, c
    and b
    and b
    ld c, b
    ld a, $00   ; xor a
    ld c, b
    and d
    and b
    ld [hl], e
    inc d
    ld c, d
    and b
    ld c, c
    db $76
    inc b
    ld c, b
    ld a, $00   ; xor a
    call nc, $094a
    ld [hl], e
    inc d
    add hl, bc
    ld a, b
    inc h
    ld c, b
    sbc [hl]
    daa
    ld [hl], e
    inc [hl]
    adc c
    ld d, [hl]
    ld [bc], a
    ld c, e
    ld c, d
    ld c, [hl]
    inc de
    or l
    ld c, d
    ld c, d
    ld a, c
    inc h
    rrca
    ld a, [hli]
    scf
    ldh [$2d], a
    ld de, $7c44
    inc d
    add a
    ld d, b
    dec l
    daa
    ld d, d
    db $dd
    dec e
    cp b
    or a
    and c
    ld b, e
    ld b, c
    ld b, c
    ld a, [c]
    or [hl]
    ld e, l
    ld [bc], a
    cp b
    or a
    ld b, c
    add c
    call $7003
    ret nc

    ld [hl], b
    nop
    ld h, l
    db $76
    inc b
    and b
    db $76
    inc b
    and b
    ld c, b
    inc a
    ld c, [hl]
    db $76
    inc b
    and b
    sbc c
    db $76
    inc b
    and b
    ld c, b
    inc a
    ld c, [hl]
    ld b, e
    and [hl]
    cp d
    or l
    ld b, c
    add c
    sub d
    or h
    adc $0d
    cp d
    or l
    ld b, c
    ld h, c
    or h
    cp e
    sbc $4d
    ld [hl], b
    or l
    add hl, bc
    and c
    add hl, bc
    db $db
    ld [de], a
    db $dd
    dec l
    nop
    inc b
    cp d
    rrca
    ld d, [hl]
    dec bc
    db $ec
    dec c
    nop
    inc b
    rrca
    pop hl
    db $ed
    ld d, c
    dec e
    jr c, jr_026_4f49

    ld [hl-], a
    nop
    inc d
    nop
    ld de, $8503
    dec bc
    inc sp
    ld [hl], $fd
    nop

Jump_026_4f2c:
    inc b
    nop
    ld de, $4403
    ld a, [hl-]
    dec de
    inc de
    db $dd
    dec e
    inc [hl]
    ld h, a
    call z, $3f02
    db $dd
    dec e
    ld d, d
    nop
    ld b, [hl]
    inc a
    call z, $dd02
    dec e
    ld d, d
    nop
    and d
    and l

jr_026_4f49:
    rst $38
    ld c, b
    inc e
    call z, $dd02
    dec e
    ld d, d
    nop
    ld b, [hl]
    inc a
    call z, $dd02
    dec e
    inc [hl]
    ld h, a
    rst $38
    call z, $dd02
    dec e
    inc [hl]
    ld h, a
    call z, $dd02
    dec e
    ld d, b
    inc bc
    inc d
    inc d
    dec [hl]
    ld d, $1f
    nop
    inc b
    rst $38
    inc hl
    inc [hl]
    scf
    call z, $cd02
    ld [bc], a
    ld sp, $2220
    cp c
    dec e
    dec e
    inc [hl]
    scf
    ld a, $00   ; xor a
    ld c, c
    ld c, c
    inc a
    and b
    and b
    db $eb
    dec b
    inc [hl]
    scf
    ld a, $00   ; xor a
    ld a, c
    inc d
    or c
    sub l
    di
    ld h, e
    ld b, a
    ld a, [hl]
    ld c, b
    cp e
    sub l
    ld h, e
    ld b, a
    adc [hl]
    inc e
    xor b
    dec h
    ld h, e
    ld b, a
    adc a
    adc [hl]
    inc e
    dec bc
    db $10
    ld [hl], d
    rlca
    add hl, hl
    ld b, a
    cp b
    or b
    ld b, $d8
    ld c, b
    inc hl
    or [hl]
    daa
    xor a
    ld [$b2ba], a
    dec b
    inc de
    xor c
    sub c
    sub [hl]
    ld a, $a0
    inc hl
    ld h, e
    db $fc
    inc de
    xor c
    ld [hli], a
    pop af
    ld [hl], d
    rrca
    pop hl
    ccf
    and l
    ld b, l
    sub d
    ld [hli], a
    sub e
    dec b
    adc a
    dec b
    inc d
    jr z, jr_026_4fdc

    nop
    and b
    sbc d
    xor a
    ld d, d
    nop
    adc a
    push hl
    ld e, h
    inc bc
    inc [hl]
    scf

jr_026_4fdc:
    sub h
    ldh a, [rNR13]
    or h
    adc a
    dec d
    dec l
    inc [hl]
    scf
    sbc c
    jr z, jr_026_500b

    ld l, a
    rlca
    sbc d
    or b
    sbc d
    nop
    or b
    add $06
    inc de
    daa
    jp c, $922a

    sub d
    or h
    cpl
    adc c
    or [hl]
    daa
    ld e, b
    nop
    or d
    dec b
    ld d, d
    dec hl

Jump_026_5002:
    ld d, h
    dec bc
    ld d, b
    inc de
    inc d
    nop
    db $e4
    sub [hl]
    and b

jr_026_500b:
    inc hl
    ld d, e
    and b
    sub b
    ld d, d
    nop
    sbc a
    ld [hli], a
    push af
    ld d, d
    ld [$b2ba], sp
    cp [hl]
    rrca
    pop hl
    ld a, l
    pop hl
    ld c, a
    ld [hl], h
    add sp, $5a
    ldh a, [$a7]
    ld c, l
    nop
    ldh a, [$a7]
    ld c, l
    nop
    or l
    rst $30
    or $26
    or $26
    xor e
    inc h
    or a
    ld hl, $213e
    ld a, $7d
    rlca
    ldh a, [$b7]
    ld hl, sp-$60
    nop
    or l
    ld hl, $213e
    ld a, $7d
    rlca
    and b
    call nc, $d7f0
    ld a, l
    ldh a, [$a7]
    ld b, l
    cp [hl]
    add hl, hl
    ld e, c
    dec de
    ld e, c
    dec de
    ld e, b
    inc de
    rrca
    pop hl
    ld a, a
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    inc de
    jr nz, jr_026_50a3

    ld e, h
    dec c
    ld e, l
    dec a
    or a
    ret nz

    inc l
    inc l
    inc l
    dec l
    dec l
    dec l
    adc b
    add hl, hl
    adc a
    rla
    rst $38
    jp hl


    nop
    ldh a, [rNR13]
    jp hl


    nop
    call $2cca
    inc d
    jr nz, jr_026_50a9

    jp hl


jr_026_507f:
    nop
    jp hl


    nop
    inc bc
    set 5, d
    adc h
    ld b, a
    add hl, bc
    inc l
    inc l
    dec l
    dec l
    inc l
    cp $2d
    jp hl


    nop
    ld c, l
    inc a
    inc d
    inc d
    ld d, [hl]
    ld [bc], a
    db $db
    ld [bc], a
    dec e
    add hl, bc
    nop
    inc b
    ld e, a
    ldh [rSCX], a
    db $ec
    dec c
    db $dd

jr_026_50a3:
    dec l
    nop
    inc [hl]
    nop
    inc [hl]
    and [hl]

jr_026_50a9:
    rrca
    pop hl
    rst $38
    ld [bc], a
    inc [hl]
    inc sp
    ld [hl], $00
    inc b
    rst $38
    inc hl
    inc [hl]
    scf
    call z, $1d02
    inc hl
    ld [de], a
    scf
    inc e
    and b
    inc e
    call z, $cd02
    ld [bc], a
    and b
    inc a
    dec e
    dec e
    inc e
    rst $38
    dec de
    inc de
    call $b102
    ld a, c
    call z, $cd02
    ld [bc], a
    ld d, d
    scf
    ld b, [hl]
    inc e
    call z, $c302
    call $0202
    jr z, jr_026_507f

    and d
    ld b, l
    and d
    dec de
    inc de
    call $fb02
    ld [bc], a
    jr z, jr_026_512f

    inc e
    db $10
    call z, $cd02
    ld [bc], a
    inc d
    inc b
    ld a, [hli]
    inc h
    inc l
    nop
    cp a
    nop
    inc d
    rrca
    adc c
    db $ec
    dec c
    db $dd
    dec l
    nop
    inc [hl]
    nop
    inc [hl]
    and [hl]
    rrca
    pop hl
    db $ed
    ld b, b
    ld [bc], a
    ld bc, $8243
    ccf
    ld [de], a
    ld bc, $82b3
    ccf
    ld [de], a
    sub e
    inc b
    rst $38
    sub d
    ld h, e
    ccf
    ld [de], a
    sub e
    inc b
    sub d
    ld h, [hl]
    ccf
    ld [de], a
    sub e
    inc b
    ld [hl], d
    ld l, a
    ccf
    ld [de], a
    inc sp
    db $d3
    xor $85
    dec h
    daa
    daa
    db $eb
    ld l, [hl]

jr_026_512f:
    di
    ld l, [hl]
    ld bc, $2927
    cpl
    ld de, $1616
    db $f4
    ld e, [hl]
    ld bc, $0fce
    ld a, [hli]
    ld a, [hli]
    rra
    jp nz, $2f94

    ld de, $46c6
    ret


    ld h, $0f
    pop hl
    ld b, c
    ld b, h
    add d
    dec a
    jr jr_026_517e

    cpl
    nop
    or e
    add d
    dec a
    ld c, b
    jr @+$30

    cpl
    adc a
    or e

jr_026_515b:
    ld l, $2f
    adc a
    or [hl]
    ld l, $32
    cpl
    ld l, a
    cp a
    ld l, $2f
    ld a, a
    adc a
    sbc d
    inc bc
    ld l, $2f
    di
    ld a, a
    adc a
    and e
    cpl
    nop
    daa
    db $d3
    ld a, [hl]
    srl a
    db $d3
    ld a, [hl]
    srl a
    rra
    db $d3
    ld a, [hl]

jr_026_517e:
    srl a
    ld h, c
    inc hl
    ld h, c
    inc hl
    adc e
    ld h, $7f
    jr nz, jr_026_515b

    ld h, b
    inc sp
    ld h, c
    inc hl
    jr jr_026_5191

    cp $20

jr_026_5191:
    ld h, c
    inc hl
    ld h, c
    inc hl
    and b
    ld [$5f75], a
    inc hl
    add hl, bc
    ld h, c
    inc de
    add hl, bc
    ld hl, sp+$00
    db $ed
    db $10
    ld hl, sp+$00
    ld l, c
    ld l, d
    ld [bc], a
    db $f4
    db $f4
    ld l, d
    ld [bc], a
    db $f4
    cp l
    inc bc
    ld h, b
    inc de
    add hl, bc
    sbc l
    ld h, c
    inc de
    add hl, bc
    ld l, d
    inc sp
    ld h, b
    inc de

jr_026_51b9:
    ld l, d
    ld [bc], a
    db $f4
    db $f4
    ld l, d
    ld [bc], a
    db $eb
    ld l, h
    inc de
    ld h, b
    inc de
    add hl, bc
    ld h, c
    inc de
    add hl, bc
    ld l, d
    inc sp
    ld h, b
    inc de
    ld l, d
    ld [bc], a
    cp h
    db $f4
    db $f4
    ld l, d
    ld [bc], a
    ld l, h
    inc de
    ld h, b
    inc sp
    ld h, c
    inc hl
    db $f4
    sbc h
    db $10
    dec bc
    db $10
    adc c
    ld d, l
    inc bc
    cp e
    rrca
    pop hl
    ei
    jr nz, jr_026_51b9

    ld h, b
    db $db
    ld a, e
    ld h, c
    ei
    ld h, e
    db $db
    ld h, e
    db $db
    ld h, e
    db $db
    ld h, e
    db $db
    ld e, a
    ld h, e
    db $db
    ld h, c
    adc e
    ld a, $0d
    ld h, c
    rl b
    cp c
    cp e
    rrca
    pop hl

Call_026_5202:
    ld c, a
    ld h, b
    db $ed
    ld c, e
    ld de, $33c4
    dec sp
    ld c, [hl]
    add hl, bc
    and c
    jp $a143


    cp $09
    dec a
    ld c, [hl]
    ld d, h
    ld c, d
    ld c, e
    ld a, [hl-]
    add hl, hl
    inc sp
    ld de, $1117
    nop
    cp $57
    sbc b
    db $ed
    and e
    db $ed
    ld sp, hl
    sub a
    db $f4
    dec c
    and b
    db $ed
    ld l, d
    xor b
    ccf
    sub c
    ld a, [hli]
    ld a, h
    inc d
    and c
    ld e, d
    ld l, b
    ret z

    ld b, a
    cp e
    push bc
    adc c
    rst $38
    sbc d
    dec hl
    nop
    inc [hl]
    nop
    inc d
    adc a
    daa
    call z, $0002
    inc [hl]
    db $ed
    dec e
    ld e, h
    nop
    rst $00
    adc b
    add hl, sp
    ld [$b68a], a
    ld l, $f5
    push af
    ld [$786d], sp
    and h
    nop
    ld [hl], l
    jr jr_026_526d

    or [hl]
    cp a
    ld h, a
    ld l, l
    ld hl, sp+$00
    call z, $f8aa
    nop
    and b
    db $ec
    and b
    or h
    cp a
    ld [hl], a
    sub d
    nop

jr_026_526d:
    ld [$47dd], sp
    db $db
    ld [bc], a
    rst $00
    ld a, c
    ld hl, sp+$11
    ld de, $cc11
    ld [bc], a
    nop
    inc [hl]
    db $fd
    ld b, [hl]
    db $ec
    dec c
    nop
    inc [hl]
    ld bc, $02cd
    sbc a
    ld d, d
    dec l
    pop hl
    ld a, [hl-]
    push bc
    dec b
    cp [hl]
    add a
    reti


    ld [hl], a
    db $10
    db $10
    jr z, jr_026_52bb

    ld c, h
    ld de, $7c11
    inc d
    or b
    dec c
    db $10
    db $10
    jr z, jr_026_52c6

    ld de, $111e
    ld c, h
    dec e
    inc d
    rla
    db $f4
    sub a
    jr z, jr_026_52e1

    ld de, $1111
    ld c, a
    add hl, hl
    ld b, a
    inc d
    inc d
    db $f4
    sub a
    or b
    dec c
    db $10
    db $10
    jr z, jr_026_52e1

    db $10

jr_026_52bb:
    ld h, $10
    ld c, h
    dec e
    ld d, d
    nop
    db $10
    db $10
    jr z, jr_026_52ec

    db $10

jr_026_52c6:
    db $10
    ccf
    ld l, h
    adc b
    ld b, a
    sbc e
    ld e, c
    dec de
    ld e, c
    dec de
    ld e, b
    inc de
    rrca
    pop hl
    rst $38
    and l
    dec d
    ld b, e
    rla
    sub l
    dec h
    cp l
    ld bc, $3335
    ld [hl], $77

jr_026_52e1:
    push af
    dec [hl]
    ld [hl], $77
    adc a
    dec [hl]
    inc sp
    ld h, [hl]
    add a
    ld h, [hl]
    add hl, hl

jr_026_52ec:
    ld [hl], $77
    cp b
    or b
    ld d, b
    ld [de], a

jr_026_52f2:
    scf
    rst $38
    ld l, c
    cp b
    push bc
    ld b, a
    adc $37
    dec [hl]
    ld b, a
    db $db
    ld [hli], a
    or b
    adc d
    and h
    dec d
    xor a
    sbc d
    cpl
    inc [hl]
    inc de
    ld c, a
    inc de
    ld d, h
    inc bc
    ld d, [hl]
    ld d, e
    sbc b
    rrca
    ld bc, $007f
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    rra
    ld [c], a
    or e
    rst $38
    jp hl


    nop
    ld de, $110b
    dec sp
    xor l
    inc d
    ld a, [de]
    ld [bc], a
    or c
    inc bc
    rst $30
    sub a
    sub d
    db $10
    ld a, a
    scf
    ld h, a
    nop
    inc hl
    ld a, [bc]
    inc hl
    db $f4
    inc d
    ld a, [hl]
    ld l, b
    inc d
    inc b
    ld [hl], a
    jr jr_026_52f2

    cp a
    adc a
    ld [c], a
    ld hl, $633d
    ld b, a
    xor l
    inc b
    or $42
    ldh [rSCX], a
    cp e
    rrca
    ld bc, $a5c3
    ld b, l
    ld b, c
    ld b, a
    cp c
    nop
    sub l
    ld b, h
    ld [hl-], a
    cp c
    dec [hl]
    inc de
    rst $20
    inc [hl]
    sbc c
    xor c
    ld [hli], a
    inc c
    nop
    and b
    sbc d
    ld a, [hl-]
    add hl, sp
    jr nz, jr_026_53bd

    sbc d
    dec h
    rst $38
    ld l, l
    ld a, b
    add d

jr_026_5371:
    ld b, a
    xor [hl]
    ld a, d
    ret c

    sub a
    db $f4
    sub a
    nop
    inc de
    rlca
    ld c, e
    ld l, e
    sbc b
    inc bc
    ld b, a
    cp e
    push bc
    adc c
    cp a
    ld d, d
    dec l
    ld hl, $c832
    dec d
    rst $38
    ld c, h
    ld d, e
    ld c, b
    db $fd
    jr z, jr_026_53d5

    ld d, h
    scf
    rst $38
    sub h
    inc l
    ld a, [hl]
    ld [bc], a
    ld d, d
    ld d, a
    sub h
    inc l
    ld l, [hl]
    ld [bc], a
    and b
    ld c, h
    sub e
    inc a
    ld a, $00   ; xor a
    cp a
    and [hl]
    add hl, sp
    xor c
    add hl, hl
    xor h
    rla
    ld d, b
    scf
    ld d, $24
    ld e, e
    jr z, jr_026_5371

    ld [bc], a
    ld c, c
    rst $38
    pop bc
    inc a
    ld l, [hl]
    ld [bc], a
    db $76
    scf
    ld d, a
    ld l, b

jr_026_53bd:
    ld d, b
    scf
    ld d, $24
    jp nc, Jump_026_4e02

    inc de
    rrca
    ld d, l
    inc bc
    pop hl
    inc hl
    ld d, l
    inc bc
    db $dd
    ld [bc], a
    ccf
    ld h, b
    and $f4
    add a
    ld e, h
    inc hl

jr_026_53d5:
    db $f4
    add a
    call z, $8125
    jp nz, Jump_026_60b3

    cp $60
    and l
    ld d, $a5
    ld d, $ba
    rlca
    ld c, [hl]
    rlca
    add c
    ld [hl], d
    ld hl, $7e07
    rla
    ld [$7560], a
    ld bc, $7560
    ld bc, $2160
    rlca
    ld a, [hl]
    and d
    ld hl, $c907
    ld a, [hl]
    rla
    ld h, b
    ld h, b

Call_026_5400:
    ld d, [hl]
    ld [bc], a
    ld h, b
    ld h, b
    ld [hl], l
    ld bc, $19ac
    sbc $b3
    add c
    ld [bc], a
    ld d, [hl]

jr_026_540d:
    ld [bc], a
    add c
    ld [de], a
    ld a, e

jr_026_5411:
    ld e, b
    cp [hl]
    and $03
    ld e, c
    inc a
    ld bc, $02dd
    rst $38
    ld d, c
    ld [de], a
    adc b
    add hl, sp
    push bc
    dec b
    cp l
    ld b, a
    ld d, e
    ld e, b
    xor h
    add hl, de
    and b
    sub a
    xor h
    add hl, de
    rst $38
    or b
    dec e
    dec b
    ld l, l
    ld c, l
    dec c

Call_026_5432:
    and b
    daa
    inc de
    inc l
    xor d
    add hl, sp
    and b
    daa
    sub e
    ld e, h
    cp a
    ld c, l
    ld c, b
    ld [bc], a
    ld l, c
    db $dd
    inc b
    or b
    dec c
    ld [bc], a
    ld c, c
    ld a, [hli]
    inc d
    or [hl]
    ld c, a
    jr z, jr_026_540d

    dec e
    db $10
    ld de, $1011
    db $10
    db $76
    daa
    rst $28
    adc a
    dec d
    ldh a, [rNR13]
    or h
    rrca
    ret


    cp e
    rrca
    ld bc, $c03f
    dec h
    pop hl
    ld l, a
    ld c, [hl]
    rlca
    sub [hl]
    ld a, [de]
    add h
    scf
    ei
    jr c, jr_026_5411

    ld b, l
    ret c

    and e
    and b
    ld e, $35
    ld b, a
    dec l
    nop
    cp a
    sub [hl]
    ld a, [de]
    ld d, e
    ld e, b
    ld e, a
    db $dd
    dec d

jr_026_547f:
    sub b
    ld c, h
    ld b, [hl]
    inc l
    dec l
    nop
    ld b, b
    ld a, [de]
    pop af
    ld a, [hli]
    inc b
    and d
    ld [hl], a
    dec de
    rla
    db $dd
    scf
    or a

jr_026_5491:
    dec c
    dec e
    ld b, l
    ld c, h
    xor $02
    or b
    xor c
    cp l
    ld e, a
    rst $08
    db $ec
    inc d
    inc d

jr_026_549f:
    ld d, $34
    ld a, d
    ld a, b
    ld e, c
    inc a
    cp [hl]
    and $03
    cp e
    ld bc, $010f
    dec h
    jr nz, jr_026_54d1

    and b
    ld b, [hl]
    add a
    inc b
    inc b
    dec [hl]
    ld h, a
    inc b
    inc b
    rst JumpTable
    ld a, $6a
    sub [hl]
    ld c, l
    ld a, [hl]
    rla
    ld b, h
    ld a, [hl-]
    ld c, b
    ld e, c
    or e
    add [hl]
    dec hl
    call nz, $e538
    inc e
    jr jr_026_547f

    add [hl]
    dec hl
    ld [$11a1], sp

jr_026_54d1:
    dec bc
    push bc
    ld [$1d3e], sp
    rst $30
    push bc
    jr z, jr_026_549f

    jr z, jr_026_54f8

    jr jr_026_5491

    ld c, c
    add hl, hl
    ld b, [hl]
    ld a, c
    ld b, b
    ld c, d
    sub [hl]
    ld c, l
    ld c, c
    ld a, $00   ; xor a
    inc b
    inc b
    dec [hl]
    ld h, a
    inc b
    inc b
    ld a, [hl]
    ld l, b
    ld a, d
    ld bc, $53e8
    ld sp, $d220

jr_026_54f8:
    or e
    db $10
    ld de, $6735
    inc l
    db $10
    or e
    db $10

Jump_026_5501:
    ld a, [$9311]
    ld l, d
    ld de, $002d
    or b
    dec e
    and c
    ld c, d
    ld c, e
    dec l
    ret


    inc de
    db $f4
    and e
    add hl, bc
    ld sp, $0903
    sub c
    ld a, [de]
    xor $37
    sub [hl]
    ld a, [de]
    sub [hl]
    ld a, [hl-]
    xor a
    ld c, $ff
    or b
    dec e
    ld b, h
    sbc l
    jr nz, jr_026_5527

jr_026_5527:
    ld de, $4735
    ld de, $102c
    or l
    jr nz, jr_026_5530

jr_026_5530:
    ld de, $4735
    ld de, $102c
    db $10
    cp c
    cp e
    rrca
    ld bc, $20ff
    jp nc, $d270

    ld [hl], b
    jp nc, $2270

    jr z, @+$29

    ld a, d
    ld [hl-], a
    ld [hl], b
    ld [de], a
    dec [hl]
    ld b, a
    rst $38
    ld a, e
    ld [hli], a
    ld [hl], b
    ld [de], a
    and c
    dec b
    and c
    dec b
    and c
    dec b
    ld a, l
    ld [bc], a
    ld [hl], b
    ld [de], a
    dec [hl]
    ld b, a
    rst $38
    ld a, e
    ld [hli], a
    ld [hl], b
    ld [hli], a
    jr z, jr_026_558b

    ld a, d
    ld [hl-], a
    ld [hl], b
    jp nc, $d270

    ret nz

    dec e
    rrc l
    ld bc, $69c7
    rst $38
    ld d, d
    dec l
    db $e4
    ccf
    ret z

    dec d
    rst $38
    jr nz, jr_026_5582

    ld bc, $1091
    sub c
    nop
    cp $30

jr_026_5582:
    ldh a, [$f5]
    and c
    or $f6
    ld b, c
    ld bc, $0264

jr_026_558b:
    ld a, [hl]
    ld [bc], a
    ld h, c
    jp nc, $6441

    ld [bc], a
    db $f4
    dec e
    inc e
    and c
    dec e
    ld l, b
    inc bc
    or $01
    dec c
    ld d, $f4
    and c
    push af
    or $45
    and c
    ld [$a1cc], sp
    pop af
    ld bc, $0d01
    ld d, $f4
    and c
    ld h, h
    ld [de], a
    ld a, [hli]
    inc c
    dec hl
    ld a, [$bd00]
    inc bc
    cp a
    ld [bc], a
    ld bc, $b4a1
    inc bc
    push af
    and c
    dec c
    ld h, h
    ld [bc], a
    db $f4
    ld l, [hl]
    ld [bc], a
    ld h, h
    ld [de], a
    db $f4
    db $f4
    push af
    db $f4
    ldh a, [$f5]
    db $f4
    push af
    push af
    sbc l
    jr nz, @-$4d

    inc bc
    ld h, c
    inc hl
    ld l, d
    inc sp
    rrca
    ld [c], a
    dec l
    ld d, e
    dec de
    ld d, e
    dec de
    db $dd
    ld [bc], a
    ld c, e
    ret nz

    dec h
    pop hl
    ld c, a
    ld a, b
    ld c, l
    rla
    db $10
    db $10
    or [hl]
    ld l, $f7
    or e
    adc d
    inc e
    db $ed
    db $10
    db $10
    db $10
    or h
    ld e, $24
    rra
    ld c, l
    ld a, h
    inc d
    or l
    ret nc

    dec b
    or $b4
    ld e, $4d
    ld c, c
    ld c, l
    ld d, d
    nop
    ld c, l
    inc h
    ccf
    dec [hl]

Jump_026_560a:
    jp c, Jump_026_4d57

    ld d, [hl]
    ld [bc], a
    ld c, l
    add $47
    adc $37
    and b
    and b
    adc h
    ld c, l
    ld c, l
    or h
    ld a, $7e
    ld [bc], a
    and b
    and b
    ld c, l
    ld h, $2f

Jump_026_5622:
    ld h, [hl]
    ld c, l
    ld c, d
    dec a
    ld d, d
    nop
    ld c, l
    push af
    or h
    ld l, [hl]
    sbc [hl]
    daa
    rst $30
    cp d
    or $24
    ld e, a
    ld c, l
    ld c, [hl]
    ld b, e
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    rrca
    ld bc, $e0fd
    ld c, d
    and b
    add sp, -$56
    push af
    rst $00
    ret


    daa
    ld a, [bc]
    inc hl
    adc $37
    ld [hl], d
    ld a, b
    rst $38
    xor [hl]
    adc d
    ld [hl], a
    jr z, jr_026_56b1

    jr jr_026_565f

    inc hl
    rst $30
    ld c, d
    ld l, $4c
    db $76
    ld e, d
    db $fd
    jr jr_026_569d

jr_026_565f:
    dec e
    rla
    rlca
    sub $12
    cp c
    ld b, e
    ld d, b
    scf
    pop bc
    ld a, [de]

jr_026_566a:
    db $f4
    db $f4
    sub [hl]
    ld a, [bc]
    sbc l
    db $10
    ld [bc], a
    ld c, c

jr_026_5672:
    dec e
    sub d
    nop
    rst $30
    or $0e
    reti


    ld [bc], a
    cp e
    rrca
    ld bc, $2043
    jp nc, $2632

    rst $30
    rst $30
    rst $30
    rst $30
    cp c
    ld b, e
    ld a, a
    jp hl


    ld h, [hl]
    ld c, b
    ld a, [bc]
    or $6a
    inc sp
    or e
    db $76
    jr c, jr_026_566a

    ld [bc], a
    ld l, d
    inc sp
    ld e, [hl]
    or e
    db $76
    jr c, jr_026_5672

    ld [bc], a

jr_026_569d:
    sub d
    db $10
    ld a, [hl]
    rla
    ld e, [hl]
    di
    inc [hl]
    ld a, [bc]
    db $dd
    ld a, [$5e58]
    db $76
    jr z, jr_026_5721

    scf
    ld a, [hl]
    rla
    ld e, [hl]
    db $76

jr_026_56b1:
    jr z, jr_026_5728

    scf
    ld h, d
    or [hl]
    rst $28
    inc b
    ld e, [hl]
    and b
    ld e, [hl]
    ld bc, $1a23
    ld e, l
    ld e, [hl]
    ld d, l
    db $76
    jr c, jr_026_5722

    ld a, [hli]
    inc d
    or h
    ld c, a
    inc bc
    ld a, [hl]
    add [hl]
    jr c, jr_026_574b

    add hl, bc
    inc de
    inc b
    or h
    cp e
    rrca
    ld bc, $518f
    ld [de], a
    add a
    ld c, c
    ld c, e
    ld b, a
    ld d, [hl]
    daa
    push af
    push af
    rst $30
    cp d
    inc sp
    or c
    ld d, b
    rlca
    ld e, $1d
    push af
    rla
    ld [de], a
    ld sp, hl
    nop
    or $ae
    ld c, [hl]
    cp $f4
    rla
    ld [de], a
    jr jr_026_5707

    ld a, $00   ; xor a
    pop de
    dec b
    jr jr_026_56fd

    jr jr_026_56ff

jr_026_56fd:
    jr jr_026_5711

jr_026_56ff:
    ld bc, $003e
    rst $30
    rst $30
    rst $30
    or $f6

jr_026_5707:
    rst $30
    or $f8
    or $a0
    or $24
    rrca
    sbc [hl]
    ld b, a

jr_026_5711:
    ld [bc], a
    ld e, c
    db $ed
    nop
    inc d
    rla
    rst $38
    dec [hl]

Call_026_5719:
    ld h, a
    dec l
    nop
    ldh a, [$a7]
    dec l
    nop
    inc d

jr_026_5721:
    inc d

jr_026_5722:
    dec [hl]
    ld h, a
    dec l
    nop
    db $10
    cp c

jr_026_5728:
    ld [bc], a
    cp e
    rrca
    ld bc, $b86a
    and $0a
    ld a, h
    ld hl, $7c12
    ld d, d

Call_026_5735:
    ld [bc], a
    call $b303
    ldh [$a0], a
    ld e, [hl]
    dec e
    ld e, [hl]
    and b
    or h
    inc bc
    ld [hl], a
    jr z, jr_026_57c2

    rla
    ld l, b
    ld e, [hl]
    dec e
    ld e, [hl]
    rla
    ld [bc], a

jr_026_574b:
    dec e
    ld [hl], a
    jr z, jr_026_57cd

    ld [bc], a
    and b
    ld l, b
    ld e, [hl]
    dec e
    ld e, [hl]
    rla
    ld [bc], a
    dec e
    rlca
    dec hl
    ld l, [hl]
    ld [bc], a
    and b
    ld hl, sp+$5f
    dec e
    ld e, a
    rla
    ld [bc], a
    adc b
    adc l
    ld a, [hli]
    inc b
    ld h, h
    inc bc
    ld a, c
    ld a, d
    ld a, c
    ld a, [hli]
    inc b
    or $f6
    cp b
    ld d, [hl]
    or b
    dec c
    and [hl]
    daa
    ld h, c
    inc hl
    db $f4
    ccf
    ld l, [hl]
    ld [bc], a
    ld d, a
    ld c, b
    ld h, c
    inc hl
    sbc l
    db $10
    ld d, a
    ld c, b
    sub d
    db $10
    or $f6
    rlca
    ld c, [hl]
    inc hl
    ld d, h
    ld b, e
    ld [$0333], a
    ld b, h
    add a
    ld b, b
    rla
    nop
    or e
    ld c, l
    and b
    and b
    ld c, l
    ld h, b
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    inc [hl]
    inc de
    ld e, [hl]
    inc bc
    ld c, l
    ld [bc], a
    ld c, l
    sub $12
    ld c, l
    inc e
    inc e
    or c
    sub l
    and e
    ld bc, $135d
    and b
    and b
    ld c, l
    and b
    ld c, l
    dec e
    ld c, l
    inc e
    inc e
    ld c, l
    db $eb
    dec d
    ld e, [hl]
    inc bc
    sub $02

jr_026_57c2:
    ld c, l
    dec e
    dec e
    ld e, b
    ld c, l
    ld c, l
    ld c, l
    and h
    inc de
    cp [hl]
    rla

jr_026_57cd:
    ld c, l
    ld [hl], a
    ld c, d
    inc c
    adc d
    ld a, [hli]
    ld a, h
    inc h
    ld c, l
    sub b
    ld a, h
    dec e
    and b
    ld [hl], c
    rst $28
    inc b
    ld b, b
    ld c, l
    and b
    ld c, l
    dec e
    ld c, l
    ld c, l
    sub $02
    ld c, l
    ld bc, $28fc
    ld c, l
    dec e
    ld c, l
    and b
    and b
    ld c, l
    and b
    ld b, b
    dec e
    ld c, l
    ld c, l
    and b
    ld c, l
    ld c, l
    sbc [hl]
    ld b, a
    dec e
    nop
    ld c, l
    and b
    ld c, l
    and b
    and b
    ld c, l
    and b
    ld c, l
    dec b
    ld c, $d9
    cp e
    rrca
    ld bc, $60ff
    ld [hl], $c7
    dec d
    ld [$f58a], a
    rst $20
    or $b7
    add h
    scf
    sbc d
    add hl, sp
    ldh [rOBP0], a
    rst $38
    ld b, l
    ld a, [hli]
    db $fc
    ld [hl], a
    add l
    dec bc
    add hl, hl
    ld b, a
    and b
    dec e
    ld c, b
    add hl, sp
    jp c, $8477

    scf
    cpl
    sbc d
    add hl, sp
    db $10
    rst $38
    ld a, [c]
    or a

jr_026_5833:
    db $10
    cp c
    cp e
    rrca
    ld bc, $20f9
    jp nc, $10b3

    ldh a, [$87]
    dec l
    nop
    inc [hl]
    ld [hl], a
    ret


    rla
    adc $37
    ld sp, hl
    ld d, [hl]
    ld [bc], a
    db $fd
    db $fd
    ld sp, hl
    sub a
    ld [hl], c
    ld [de], a
    ld sp, hl
    sub a
    ld [hl], c
    ld [hli], a
    ld a, [$b397]
    ld [hl], c
    ld [de], a
    ld a, [$fd97]
    db $fd
    ld l, b
    ret z

    rst $30
    ld [hl], a
    db $10
    ldh a, [$87]
    dec bc
    dec l
    nop
    db $10
    cp c
    cp e
    rrca
    ld bc, $20d7
    sub d
    ld e, h
    dec e
    inc [hl]
    ld b, a
    ld a, [bc]
    inc sp
    ld [hl], $a6
    rst $38
    ld [hl-], a
    add hl, bc
    inc sp
    ld l, [hl]
    ld e, h
    call z, $3212
    ld h, $77
    jr c, jr_026_58e2

    cp h
    ld de, $0052
    ld e, c
    cp a
    ld hl, sp+$4a
    ld [hl], a
    ld [$279e], sp
    ld [hl], a
    ld c, b
    db $76
    jr jr_026_5833

    daa
    ld e, [hl]
    rrc l
    ld [hl], a
    inc d
    inc d
    ld [hl], a
    ld [$279e], sp
    ld e, [hl]
    ld [hl], $26
    rst $30
    inc h
    adc $27
    ld e, [hl]
    db $db
    ld [hl], $26
    reti


    ld [hl], a
    ld e, [hl]
    ld [hl], $26
    ld a, c
    ld a, b
    ld a, [hl]
    db $eb
    dec c
    ldh [rSCX], a
    ld [bc], a
    cp e
    rrca
    ld bc, $c02b
    db $eb
    pop af
    cpl
    rst $30
    adc d
    inc c
    rst $30
    adc d
    inc e
    nop
    or a
    rst $38
    xor d
    rla
    xor c
    daa
    and [hl]
    daa
    cp a
    ei
    ld d, h
    ld a, b
    sub $12
    xor a
    xor d
    sub $02
    rst $08
    xor a
    xor d
    ld a, [hli]
    inc b
    rst $38
    ld [hli], a
    rlca
    ld c, e

jr_026_58e2:
    and b
    ld e, $cd
    jp z, $042a

    rlca
    adc a
    adc b
    and [hl]
    daa
    rrca
    jp hl


    sub a
    db $d3
    adc b
    and l
    ld [de], a
    rst $28
    inc hl
    rst $30
    adc d

jr_026_58f8:
    inc e
    and b
    dec e
    jr nz, jr_026_58fd

jr_026_58fd:
    di
    adc [hl]
    inc e
    and l
    ld h, a
    or e
    ld de, $004d
    ld hl, $9a62
    dec h
    adc [hl]
    inc c
    rst JumpTable
    pop af
    rst $00
    ld d, e
    ld a, b
    ld [$ecf7], a
    rst $30
    xor $b7
    db $10
    ld c, l
    nop
    ld d, e
    ld a, b
    inc c
    and b
    and b
    inc l
    db $10
    ret nz

    reti


    rst $38
    jr nz, jr_026_58f8

    ldh a, [$1f]
    daa
    daa
    ld a, c
    ld b, d
    sub b
    ld b, a
    and c
    dec b

jr_026_5930:
    ld a, d
    ld [hl-], a
    sub b
    ld b, a
    ei
    and c
    dec b
    ld a, d
    ld [hl-], a
    or e
    sub $37
    ld [hl], a
    ld h, d
    inc [hl]
    ld b, a
    ld [hl], c
    ld [de], a
    ei
    ld [hl], a
    rst $38
    ld [hl], c
    ld [hli], a
    jp c, Jump_026_7167

    ld [hl-], a
    reti


    ld [hl], a
    inc sp
    nop
    or $87
    ld [hl], c
    ld [hli], a
    ld b, [hl]
    rlc l
    ld d, c
    inc bc
    ld a, d
    jp hl


    ld b, e
    daa
    jr nz, jr_026_5930

    ld [hl], b
    ld [hli], a
    push af
    sub a
    db $fd
    db $fd
    dec [hl]
    ld d, a
    db $10
    db $10

jr_026_5968:
    ld c, c
    db $ed
    db $10
    db $fd
    db $fd
    dec [hl]
    ld d, a
    db $10
    db $10
    db $ed
    db $10
    db $fd
    jp c, $f0fd

    add a
    ld sp, $026f
    dec [hl]
    ld h, a
    ld c, l
    db $fc
    ld h, a
    rlca
    ld c, e
    jp Jump_026_67fc


    ld [hl], a
    jr jr_026_59d5

    and b
    db $10
    db $10
    db $fd
    ld d, a
    ld [hl], a
    jr z, jr_026_5968

    ld c, l
    db $10
    db $10
    db $fd
    ld d, a
    ld [hl], a

Jump_026_5996:
    ld [$794d], sp
    sbc b
    add a
    ld c, b
    ld bc, $12dc
    ld a, a
    ld d, d
    dec l
    ld hl, $c832
    dec d
    ccf
    ld b, c
    sub c
    ld e, l
    ld a, $13
    cp h
    dec b
    and b
    jp nc, $bca0

    dec b
    and b
    and b
    ld a, h
    add hl, de
    or e
    add sp, $48
    pop hl
    jr c, jr_026_5a35

    cp l
    nop
    scf
    jr z, @+$29

    pop de
    dec b
    reti


    ld h, a
    cp h
    dec b
    and b
    ei
    pop de
    dec b
    ld d, [hl]
    ld [bc], a
    inc c
    db $fd
    ld h, a
    pop de
    dec b
    cp c
    ld l, b

jr_026_59d5:
    ldh a, [$87]
    ld l, l
    ld [de], a
    sub d
    and c
    cp h
    dec b
    and b
    and b
    cp h
    dec b
    and b
    and b
    ld a, h
    add hl, de
    ccf
    ld b, b
    ld sp, $5d91
    ld c, [hl]
    inc hl
    ld e, c
    inc a
    ld d, e
    dec de
    db $dd
    ld [bc], a
    push bc
    jr nz, jr_026_59f7

    ld a, h
    inc h

jr_026_59f7:
    sub d
    or e
    db $10
    ld de, $0877
    or c
    inc hl
    add l
    ld a, e
    inc [hl]
    ld de, $1876
    db $f4
    ld c, l
    db $f4
    ld c, l
    push hl
    add hl, de
    rra
    sbc [hl]
    daa
    ld [hl], a
    ld [$2361], sp
    db $db
    ld d, a
    sub e
    add hl, bc
    db $f4
    ld c, l
    db $f4
    cp $4d
    push hl
    add hl, de
    cp $57
    ld h, c
    inc hl
    ei
    add a
    ld h, c
    inc hl
    ld a, e
    inc [hl]
    and [hl]
    daa
    ld a, a
    sub d
    db $10
    ld a, [hli]
    ccf
    db $10
    rst $38
    ld a, [c]
    or a
    ret nz

    dec e
    db $db

jr_026_5a35:
    ld [bc], a
    rst $00
    ld l, c
    rst $38
    jr nz, jr_026_5a8d

    daa
    jr c, @+$50

    rlca
    cp h
    dec b
    db $f4
    rst AddAToHL
    ld [hl], h
    sub d
    ret


    inc de
    push de
    ld h, l
    ld c, a
    dec l
    nop
    ret


    inc de
    ld [hl], c
    ld [hli], a
    reti


    ld h, a
    ld a, [hli]
    and b
    and c
    dec b
    db $fd
    cp $fd
    ld sp, hl
    sub a
    ld [hl], c
    ld [de], a
    ld sp, hl
    and a
    inc sp
    nop
    ld sp, hl
    and a
    inc sp
    nop
    ret z

    daa
    inc sp
    adc $37
    ld d, [hl]
    ld [bc], a
    db $fd
    db $fd
    ld a, c
    cp b
    rst $00
    ld l, c
    ld h, l
    jr nz, jr_026_5a97

    ld a, h
    ld b, [hl]
    add a
    db $fd
    db $fd
    ld [hl], l
    ld l, b
    ld a, h
    inc h
    db $fd
    rst $38
    ld [hl], h
    ld a, b
    db $fc
    ld h, a
    ld [hl], a
    ld c, b
    ld a, h
    ld [de], a
    ld [hl-], a
    ld h, $77
    jr z, jr_026_5b07

jr_026_5a8d:
    ld [hl-], a
    ld [hl-], a
    ld h, $f8
    ld e, [hl]
    ld a, [bc]
    and b
    and c
    dec b
    ld a, e

jr_026_5a97:
    ld [hli], a
    ldh a, [rOCPS]
    ld a, [bc]
    inc hl
    adc $37
    rst $38
    ld [hl], l
    jr z, @+$7b

    ld b, d
    nop
    inc hl
    ld h, c
    ld [$5278], sp
    inc [hl]
    ld d, a
    ld a, b
    ld d, d
    db $10
    cp c
    ld [bc], a
    cp e
    rrca
    ld bc, $20ff
    jp nc, $ff10

    ld a, [c]
    rst $30
    db $f4
    rst $30
    or $d7
    ld [hl], $77
    nop
    inc bc
    rlca
    ld c, e
    rst $38
    ld l, d
    xor b
    sub $47
    cp $67
    or $05
    jr jr_026_5ae6

    cp $47
    daa
    scf
    jr jr_026_5adc

    rlca
    ld c, [hl]
    inc de
    ld d, l
    inc bc
    push bc
    adc c

jr_026_5adc:
    rst $38
    ld d, c
    ld [de], a
    inc l
    inc bc
    ld e, h
    dec c
    nop
    inc h
    ld l, a

jr_026_5ae6:
    ld d, d
    call z, $0002
    inc h
    ld l, a
    ld d, d
    rst $38
    call z, $0002
    inc h
    ld l, a
    ld d, d
    call z, $0002
    inc h
    ld l, a
    ld d, d
    call z, $0002
    inc h
    rst $08
    ld l, a
    ld d, d
    call z, $0002
    inc h
    rst $08
    inc b

jr_026_5b07:
    dec e
    dec e
    ld b, a
    inc d
    ld [$e77c], sp
    ldh a, [rNR13]
    db $76
    ld [hl], d
    jr nz, jr_026_5b14

jr_026_5b14:
    ld de, $a1a0
    dec b
    ld a, b
    ld d, d
    jr nz, jr_026_5b1c

jr_026_5b1c:
    cp h
    ld de, $a1a0
    dec b
    ld a, b
    ld d, d
    db $10
    adc c
    ld d, l
    inc bc
    cp e
    rrca
    ld bc, $b8f0
    cp h
    or a
    and c
    rst $00
    dec d
    ld c, b
    ld h, a
    ld b, c
    ld hl, $4271
    rst $38
    dec a
    ld l, [hl]
    ld [hl], c
    ld b, d
    dec a
    ld a, $71
    ld [hl], d
    dec a
    ld a, $71
    ld [hl], d
    dec a
    ld a, $71
    ld [hl], d
    inc e
    and c
    ld [hl], c
    ld l, a
    db $10
    ld [hl], c
    ld h, d
    inc a
    ld c, [hl]
    db $fd
    db $fd
    xor $8d
    ld b, c
    ld bc, $e5ee
    ld [bc], a
    dec a
    ld a, $fd
    db $fd
    xor $76
    ld c, $46
    xor $e5
    ld [bc], a
    dec a
    ld a, $fd
    db $fd
    xor $86
    ld c, $ee
    add e
    push hl
    ld [bc], a
    ld c, l
    ld b, e
    or d
    or d
    and $00
    and $e9
    ld b, e
    ld l, a
    ret nz

    dec h
    pop hl
    ld a, [hl-]
    push bc
    dec b
    cp [hl]
    daa
    ld h, b
    and h
    ld b, $75
    ld bc, $ad60
    db $db
    ld d, a
    ld h, b
    and h
    ld b, $75
    ld bc, $db60
    ld d, a
    ld h, b
    and h
    ld b, $b5
    ld [hl], l
    ld bc, $db60
    ld d, a
    ld h, b
    and h
    ld b, $75
    ld bc, $9b60
    ld e, l
    ld d, [hl]
    ld h, b
    and h
    ld b, $75
    ld bc, $5660
    ld [bc], a
    ld sp, $178f
    ld h, b
    ld l, e
    and h
    ld b, $75
    ld bc, $db60
    ld d, a
    ld h, b
    and h
    ld b, $75
    ld bc, $8d60
    db $db
    ld d, a
    ld h, b
    and h
    ld b, $75
    ld bc, $a060
    and b
    dec l
    nop
    rst $00
    and e
    ld d, $a4
    ld b, $75
    ld bc, $a060
    db $10
    ld c, l
    nop
    ld d, b
    inc hl
    inc bc
    ld d, c
    dec sp
    db $eb
    inc hl
    ld a, a
    ld d, d
    dec l
    db $e4
    ccf
    ret z

    dec d
    rrca
    rst $38
    pop af
    rst $00
    ret nc

    push hl
    ldh a, [rNR13]
    db $fd
    ld d, l
    ld d, [hl]
    ld [bc], a
    db $fd
    ld a, [hli]
    scf
    scf
    ldh a, [rNR13]
    db $fd
    dec [hl]
    dec b
    db $fd
    db $eb
    rla
    rla
    cp $47
    db $fd
    ld d, [hl]
    ld [bc], a
    db $fd
    ld a, [hli]
    scf
    ret nc

    push hl
    pop af
    rst $30
    rra
    ld b, e
    db $db
    ld e, c
    dec de
    ld e, c
    dec de
    ld e, b
    inc de
    rrca
    ld bc, $2384
    ld d, $b3
    add d
    dec a
    dec a
    nop
    inc hl
    db $f4
    ld e, [hl]
    ld sp, $2587
    inc hl
    nop
    inc hl
    db $f4
    ld a, $92
    inc hl
    ld bc, $1801
    inc hl
    nop
    inc hl
    db $f4
    ld a, $92
    ld h, $01
    ld bc, $8a23
    nop
    or e
    ld [de], a
    ld e, a
    ld [hl], b
    ld c, a
    ld bc, $2301
    rst $38
    inc d
    ld d, h
    dec a
    ld e, a

Call_026_5c47:
    db $d3
    ld l, [hl]
    inc hl
    rst $38
    inc d
    dec a
    db $d3
    ld a, [hl]
    daa
    sbc e
    rst $38
    inc d
    or e
    ld [de], a
    ld e, a
    ret c

    ld e, [hl]
    ld b, h
    ld [hl-], a
    dec a
    ld e, a
    ret c

    ld e, [hl]
    ld h, l
    ld b, h
    ld [hl-], a
    dec a
    ld [hl], e
    inc sp
    dec a
    dec a
    rst $38
    ld b, h
    or [hl]
    ld [hl], d
    adc h
    dec a
    ld d, $43
    ld [bc], a
    or e
    ld [hl], d
    nop
    inc hl
    ld d, $43
    ld [bc], a
    jp nz, $d33d

    ld e, [hl]
    dec a
    nop
    inc hl
    ld d, $b3
    ld [de], a
    db $d3
    ld e, [hl]
    jr c, jr_026_5cc1

    nop
    inc hl
    db $f4
    ld e, $92
    inc hl
    sub b
    inc hl
    nop
    inc hl
    rst $20
    db $f4
    ld e, $92
    ld h, $90
    ld h, $00
    inc hl
    db $f4
    ld e, $72
    cpl
    ld [hl], b
    cpl
    ret


    rst JumpTable
    ld l, $12
    ld [de], a
    sub e
    inc b
    daa
    daa
    sra [hl]
    add a
    dec d
    ld a, b
    ld [de], a
    dec a
    dec a
    rst AddAToHL
    ld l, [hl]
    add a
    dec d
    or e
    ld [bc], a
    or $4e
    dec a
    and $00
    or e
    ld b, d
    ld [hl], e
    inc sp
    ld d, $3d
    rst $38
    inc [hl]

jr_026_5cc1:
    or e
    ld [hl], d
    rrca
    pop hl
    ld a, [bc]
    inc a
    cp b
    ld b, d
    inc a
    or e
    ld [de], a
    jr jr_026_5cf1

    nop
    inc a
    ld h, b
    dec a
    rrca
    dec a
    dec a
    rrca
    or e
    ld [de], a
    sub e
    inc b
    jr jr_026_5cdc

jr_026_5cdc:
    inc hl
    nop
    dec a
    dec a
    rrca
    dec a
    dec a
    rrca
    inc b
    dec a
    dec a
    add a
    dec h
    jr jr_026_5d0e

    nop
    ld bc, $203d
    rrca
    dec a

jr_026_5cf1:
    dec a
    rrca
    dec a
    db $d3
    ld a, $18
    inc hl
    sbc a
    ld a, a
    sbc a
    or e
    ld [de], a
    adc a
    sbc a
    ld b, e
    ld [de], a
    ld a, a
    ld a, a
    rla
    ld d, $bb
    ld [hli], a
    rlca
    add d
    ld l, a
    db $f4
    ld e, $bd
    ld [bc], a

jr_026_5d0e:
    dec a
    dec a
    ld bc, $3d3d
    jr jr_026_5d16

    dec a

jr_026_5d16:
    rla
    db $f4
    ld l, $bd
    ld [bc], a
    inc a
    dec a
    rrca
    jr nc, jr_026_5d5d

    dec a
    rrca
    dec a
    ld [hl], e
    inc sp
    cp l
    ld [bc], a
    inc a
    dec a
    db $10
    rrca
    dec a
    dec a
    rrca
    or [hl]
    ld [hl], d
    add l
    or e
    ld h, d
    ccf
    or e
    ld [bc], a
    jr jr_026_5d75

    nop
    dec a
    db $d3
    sbc [hl]
    jr nc, jr_026_5d56

    dec a
    nop
    dec a
    sub c
    inc sp
    db $d3
    ld a, $18
    dec a
    inc c
    nop
    dec a
    sub c
    ld [hl], $d3
    ld a, $18
    dec a
    nop
    dec a
    add hl, bc
    ld [hl], c
    ccf
    dec a

jr_026_5d56:
    dec a
    add a
    dec d
    jr jr_026_5d98

    nop
    dec a

jr_026_5d5d:
    add hl, bc
    db $d3
    ld a, $3d
    dec a
    add a
    dec d
    dec a
    dec a
    nop
    dec a
    inc sp
    db $d3
    ld a, $b3
    ld d, d
    nop
    dec a
    db $d3
    ld a, $43
    ld b, d
    dec a
    nop

jr_026_5d75:
    inc c
    dec a
    add hl, de
    add a
    dec h
    ld b, e
    ld b, d
    dec a
    nop
    dec a
    jr jr_026_5de4

    ld [hl], e
    inc hl
    ld b, e
    ld b, d
    dec a
    nop
    dec a
    or d
    ld b, d
    ld b, h
    ld [hl-], a
    dec a
    ld bc, $e10f
    db $d3
    ld h, b
    db $ed
    ld sp, $a3da
    db $ed
    inc sp

jr_026_5d98:
    ld l, d
    db $ed
    sbc l
    ld c, d
    ld d, h
    ld c, d
    rst $38
    dec sp
    inc sp
    ld d, a
    ld bc, $4974
    ld l, e
    dec sp
    pop af
    rst AddAToHL
    push bc
    ld de, $4ba7
    ld l, h
    dec hl
    ld b, a
    ld sp, $5203
    ld c, a
    dec sp
    inc sp
    and e
    db $ed
    and e
    ld d, d
    ld c, a
    and e
    ld e, [hl]
    db $ed
    sbc l
    ld c, d
    ld d, d
    ld c, a
    dec sp
    inc hl
    ld d, b
    ld c, e
    and b
    ld e, b
    ld e, e
    db $fd
    and l
    ld [de], a
    or [hl]
    sbc b
    dec hl
    ld e, h
    dec c
    db $ed
    dec e
    ld a, [c]
    inc bc
    ld b, [hl]
    inc c
    ld d, d
    nop
    rst $00
    call z, $ed02
    dec e
    ld a, [c]
    inc bc
    and d
    pop af
    and d
    ld d, d

jr_026_5de4:
    nop
    call z, $ff02
    db $ed
    dec e
    ld a, [c]
    inc bc
    ld b, [hl]
    inc c
    ld d, d
    nop
    call z, $ed02
    dec e
    cp b
    scf
    add l
    ld c, c
    ld a, a
    cp [hl]
    scf
    sub [hl]
    ld c, d
    db $db
    ld h, a
    and h
    jp c, Jump_026_7aa1

    ld a, $3d
    and c
    ld c, d
    inc c
    dec bc
    xor h
    ld a, [$d90e]
    cp e
    rrca
    pop hl
    and c
    jr nz, @-$7c

    cp c
    sub c
    sub [hl]
    sub b
    ld l, a
    add d
    ld a, [$0334]
    rst $38
    ld e, [hl]
    inc bc
    ld [hl], c
    ld d, d
    ld e, c
    db $10
    ld e, l
    inc de
    ld [hl], c
    ld d, d
    ld e, c
    nop
    ld e, h
    inc hl
    ld [hl], c
    ld d, d
    rst $30
    ld e, c
    nop
    ld e, h
    inc hl
    ld [hl], c
    ld h, d
    ld a, [$0334]
    ld e, [hl]
    inc bc
    and c
    dec b
    ld [hl], c
    ld [de], a
    rst $20
    db $e4
    dec b
    inc [hl]
    inc bc
    xor [hl]
    dec d
    db $fd
    db $fd
    db $db
    ld [bc], a
    ld [$5c23], a
    inc hl
    rst $38
    and c
    push bc
    ld a, [hl-]
    add hl, hl
    dec [hl]
    inc de
    inc [hl]
    add hl, sp
    adc a
    daa
    inc [hl]
    inc bc
    push af
    ld d, d
    rrca
    pop hl
    sub [hl]
    dec a
    or d
    ld [hl], d
    ld c, e
    ld [hli], a
    dec a
    jp nc, $3d6e

    ccf
    or e
    ld [bc], a
    inc e
    nop
    dec a
    sub d
    inc d
    sub d
    inc hl
    add a
    dec d
    dec a
    nop
    dec a
    rst $20
    sub d
    inc d
    sub d
    ld h, $87
    dec d
    dec a
    nop
    or e
    ld [bc], a
    ld [hl], b
    ld c, a
    add a
    dec d
    cp d
    dec a
    rst $38
    inc b
    dec a
    db $d3
    ld l, [hl]
    or e
    ld [bc], a
    rst $38
    inc b
    dec a
    db $d3
    ld l, [hl]
    cp e
    ld b, e
    ld [bc], a
    rst $38
    inc b
    dec a
    db $d3
    ld l, [hl]
    ld b, e
    ld [bc], a
    rst $38
    inc b
    dec a
    db $d3
    ld c, [hl]
    ld [$bc19], a
    ld [bc], a
    inc a
    rst $38
    inc b
    dec a
    ld [hl], e
    ld b, e
    ld b, d
    ld [hli], a
    rst $38
    inc b
    inc bc
    or h
    add d
    ld c, l
    ld [bc], a
    and h
    cp b
    jp $b822


    or e
    jp nz, $2d39

    and l
    add hl, sp
    dec l
    xor d
    pop bc
    ld a, $00   ; xor a
    ret nz

    add hl, sp
    dec l
    and l
    add hl, sp
    dec l
    ret nz

    ld a, $00   ; xor a
    db $fd
    ld hl, $a53e
    ld hl, $3e3e
    nop
    add hl, sp
    dec l
    ld d, a
    ld bc, $2d39
    ld a, [hl]
    dec sp
    ld e, a
    ld h, h
    xor e
    add hl, sp
    dec l
    ld d, a
    ld bc, $2d39
    ld a, $00   ; xor a
    call nz, $2d39
    and l
    ld d, l
    add hl, sp
    dec l
    call nz, $003e
    jp nz, $2d39

    and l
    add hl, sp
    dec l
    jp nz, $3e55

    nop
    ret nz

    add hl, sp
    dec l
    and l
    add hl, sp
    dec l
    ret nz

    ld a, [hl]
    ld l, b
    ld a, d
    ld bc, $53e8
    jp hl


    ld a, [hl-]
    add hl, hl
    sub l
    and b
    inc hl
    ld b, e
    sub b
    adc a
    daa
    inc [hl]
    inc hl
    inc [hl]
    add hl, sp
    adc l
    adc a
    daa
    or c
    xor c
    ld [hli], a
    ld d, c
    add hl, de
    sbc d
    nop
    or e
    sub $07
    rst $38
    adc b
    add hl, sp
    db $76
    add hl, de
    cp [hl]
    scf
    ld d, l
    nop
    ld [hl], c
    ld [de], a
    db $e4
    dec b
    ld a, $00   ; xor a
    db $e4
    dec b

jr_026_5f36:
    ld [hl], $fa
    ld [hl], c
    ld [hl-], a
    db $e4
    dec b
    or [hl]
    ld l, a
    ld [hl], d
    db $e4
    dec b
    ld a, [$c7fa]
    adc [hl]
    ld bc, $5271
    ld d, l
    nop
    db $fd
    db $fd
    or h
    ld l, a
    ld [hl], d
    ld d, l
    nop
    cp a
    ld a, h
    ld [de], a
    ld [hl], b
    ld [hl-], a
    db $e4
    dec b
    ld d, l
    nop
    ld a, h
    ld [de], a
    db $10
    cp c
    cp e
    rrca
    pop hl
    dec de
    jr nz, jr_026_5f36

    and b
    ld c, d
    ld b, l
    xor b
    ld l, d
    sub c
    jp c, $a0a0

    add hl, bc
    rrca
    ld b, l
    inc e
    ld b, a
    inc c
    jp hl


    nop
    cp $47
    and d
    db $10
    ld de, $c910
    ld c, b
    inc l

jr_026_5f7e:
    or [hl]
    nop
    inc d
    rla
    and b
    and d
    pop de
    dec b
    ld c, b
    inc a
    ld hl, $37ef
    and d
    ld de, $1110
    ld c, b
    inc l
    or h
    nop
    db $fd
    inc d
    inc b
    add hl, bc
    ld b, l
    inc e
    ld b, a
    inc c
    jp hl


    nop
    adc [hl]
    ld e, d
    dec [hl]
    ld b, a
    sbc l
    ld a, [$0f05]
    ret


    cp e
    rrca
    pop hl
    rst $30
    jr nz, jr_026_5f7e

    ld h, b
    inc hl
    sub d
    db $10
    or $6a
    inc sp
    ld h, b
    inc de
    inc h
    ld c, a
    ld l, e
    inc hl
    rst $08
    nop
    ld bc, $3f24
    ld [hli], a
    rrca
    ld l, h
    inc de
    or a
    or $24
    rrca

jr_026_5fc6:
    sub h
    ld c, h
    sbc h

jr_026_5fc9:
    or $f6
    xor $67
    sub c
    ld a, [hli]
    ld a, h
    inc d
    or l
    push af
    or h
    ld c, $ff
    sub h
    ld c, h
    cp h
    inc de
    nop
    ld bc, $3eb4
    ld a, [de]
    ld [bc], a
    ld l, h
    inc de
    ld h, b
    inc de
    or h
    ld c, [hl]
    ld e, a
    ld l, e
    inc hl
    ld h, b
    inc hl
    or c
    inc hl
    ld l, d
    inc sp
    db $10
    cp c
    cp e
    rrca
    pop hl
    adc l
    jr nz, jr_026_6039

    ld [hl], h
    ld c, b
    ld h, a
    ld h, c
    inc hl
    db $10
    and b
    db $10
    ld l, c
    ld b, e
    ld [hl], c
    ld h, b
    inc sp
    db $10
    and b
    db $10
    ld sp, hl
    nop
    ld l, h
    inc de
    nop
    ld bc, $d73f
    jr jr_026_6023

    rla
    ld [de], a
    ld l, h
    inc de
    or e
    sub e
    db $10
    db $f4
    or c
    inc bc
    jr jr_026_601f

    rst $00
    ld l, h

jr_026_601f:
    inc de
    ret nz

    ld a, [hli]
    ld h, c

jr_026_6023:
    inc hl
    db $f4
    and b
    ccf
    sbc l
    db $10
    or c
    inc bc
    pop hl
    ld h, c
    inc hl
    db $f4
    db $f4
    push af
    push af
    sbc l
    jr nz, jr_026_5fc6

    jr nz, jr_026_5fc9

    db $10
    dec de

jr_026_6039:
    sub d
    nop
    cp $20
    ld de, $3ca0
    ld a, [$f448]
    db $f4
    ld de, $5655
    ld [bc], a
    ld b, l
    ld a, [hli]
    inc h
    ld b, l
    ld c, $89
    ld [hl], d
    ld_long $ff33, a
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    inc hl
    ld b, h
    sub a
    ld [bc], a
    inc h
    ld b, [hl]
    inc c
    ld d, a
    ld bc, $46c5
    inc c
    or c
    rst $38
    inc hl
    or e
    and d
    and d
    ld h, c
    dec hl
    ld a, h
    rla
    sub c
    ld [bc], a
    inc h
    and d
    and l
    ld h, $57
    ld bc, $a526
    ld a, l
    rlca
    add a
    ld [bc], a
    inc h
    ld h, c
    ld a, e
    rst $38
    inc hl

jr_026_6082:
    or e
    and d
    and l
    ld h, $57
    ld bc, $26cc
    and l
    ld a, l
    rlca
    ld [bc], a
    inc h
    and d
    and d
    ld h, c
    dec hl
    ld a, h
    rla
    rst $28
    ld [bc], a
    inc h
    ld b, [hl]
    inc c
    ld d, a
    ld bc, $0c46
    or c
    rst $38
    inc hl
    db $10
    ld a, c
    adc $1d
    dec bc
    nop

jr_026_60a7:
    inc [hl]
    nop
    inc [hl]
    and [hl]
    rrca
    pop hl
    rst $38
    jr nz, jr_026_6082

    db $10
    rst $38
    ld a, [c]

Jump_026_60b3:
    rst $30
    add h
    scf
    sbc d
    add hl, sp
    db $10
    rst JumpTable
    jr nz, jr_026_60a7

    pop af
    rst $30
    ld e, a
    add e
    ld b, a
    sbc d
    add hl, sp
    db $10
    rst $38
    ld a, [c]
    or a
    db $10
    sbc c
    and b
    db $dd
    ld [bc], a
    rst $38
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    ld c, a
    dec a
    dec h
    add d
    xor a
    jr nc, jr_026_6116

    add d
    daa
    xor e
    daa
    ret nz

    ld [bc], a
    inc c
    sub h
    inc a
    dec h
    ld d, $0d
    sbc $b1
    rrca
    inc hl
    dec b
    ld e, l
    xor h
    add hl, de
    jr nc, jr_026_611c

    dec h
    db $76
    ld a, l
    db $10
    inc de
    rst JumpTable
    dec b
    ld l, l
    db $ed
    nop
    db $10
    inc de

Call_026_6102:
    jp nz, $963c

    ld a, [de]
    or c

jr_026_6107:
    cpl
    ld d, [hl]
    ld hl, $2d07
    sub [hl]
    ld a, [de]
    or c
    rst JumpTable
    dec a
    ld d, c
    ld l, e
    cp e
    rrca
    pop hl

jr_026_6116:
    and c
    ld d, b
    dec c
    ld l, b
    ld l, b
    ld l, b

jr_026_611c:
    ld l, b
    dec b
    ld c, h
    cp c
    cpl
    ld d, [hl]
    rst $38
    scf
    ld h, a
    jr nc, jr_026_616d

    ld e, b
    jr c, jr_026_6107

    inc b
    ld d, c
    ld [de], a
    ld a, [c]
    ld a, a
    ld l, [hl]
    ld l, b
    and [hl]
    ld b, a
    rst $38
    ld l, [hl]
    ld l, b
    ld d, e
    ld e, b
    ld c, a
    jr z, jr_026_613d

    ld e, c
    ld l, h

jr_026_613d:
    adc b
    or d
    ld c, c
    xor [hl]
    sbc d
    sbc d
    add hl, sp
    rra
    inc [hl]
    ld [hl], a
    sbc d
    add hl, sp
    ld d, b
    inc de
    rst $20
    ld b, e
    db $eb
    inc hl
    ld [hl], a
    ret nz

    dec h
    pop hl
    ld l, a
    ld c, [hl]
    rlca
    push af
    or h
    ld a, $b6
    ld l, $bd
    inc bc
    or e
    or $f6
    inc h
    ccf
    ld h, $2f
    or $0e
    rst $38
    db $10
    rst JumpTable
    jr nz, @-$43

    ld a, $dd

jr_026_616d:
    rst $08
    ld c, $ff
    or b
    inc bc
    dec [hl]
    ld h, a
    cp h
    inc de
    or e
    or $24
    ccf
    ld h, $2f
    ld l, $f6
    ld c, [hl]
    ld b, e
    pop hl
    inc hl
    ld e, c
    dec de
    cp e
    rrca
    pop hl
    rst $38
    ld b, h
    add a
    nop
    inc d
    ld c, a
    ld b, a
    ld e, d
    jr z, jr_026_6191

jr_026_6191:
    inc d
    adc a
    sbc b
    nop
    inc d
    adc a
    sbc b
    rst $38
    nop
    inc d
    adc a
    daa
    ld b, [hl]
    inc a
    and h
    inc de
    ld l, $39
    ld b, [hl]
    ld l, h
    db $dd
    ld b, a
    ld b, [hl]
    ld l, h
    cp a
    ld l, l
    ld a, b
    rst $30
    rst $00
    or $87
    ld d, e
    ld e, b
    ld l, c
    ld c, h
    db $10
    sbc c
    and b
    db $dd
    ld [bc], a
    cp a
    ld b, b
    daa
    jp hl


    ld a, [de]
    sub l

Jump_026_61bf:
    dec b
    xor e
    inc bc
    cpl
    rla
    ld h, e
    add a
    cp l
    ld e, a
    rst $00
    ld a, [hli]
    or [hl]
    ld e, a
    rst $00
    and b
    ld e, a
    rst $00
    or h
    ld e, a
    rst $00
    cp l
    nop
    db $ed
    ld h, l
    add hl, bc
    sbc d
    inc [hl]
    sub a
    rst AddAToHL
    inc de
    or a
    add l
    call $dd84
    inc [hl]
    inc e
    rrca
    add l
    ld a, [hl-]
    ld c, [hl]
    ld e, e
    ld d, l
    inc sp
    call c, $a512
    jr nz, jr_026_6252

    cp h
    xor d
    inc bc
    cp h
    cp c
    xor a
    dec l
    ld de, $2361
    db $db
    ld a, [hli]

jr_026_61fc:
    scf
    inc d
    rla
    ld de, $2361
    ld [$1177], a
    ld h, c
    inc hl
    ld a, [hli]
    scf
    push bc
    inc d
    inc d
    ld de, $2361
    push af
    push af
    and b
    cp l
    inc bc
    or b

jr_026_6215:
    dec e
    ld a, e
    ld l, d
    ld [bc], a
    ld h, c
    inc hl
    and b
    sbc l
    db $10
    ld hl, $921f
    db $10
    sub d
    nop
    and b
    rst $38
    sbc l
    db $10
    ldh a, [$97]
    sbc l
    db $10
    or c
    sub [hl]
    sbc l
    jr nz, @+$63

    inc hl
    ld h, c
    inc hl
    ld l, h
    inc de
    dec b
    db $10
    cp c
    cp e
    rrca
    pop hl
    db $db
    and l
    ld b, l
    inc hl
    ld b, e
    sub b
    ld e, a
    rla
    ldh a, [$87]
    sub h
    adc a
    dec b
    inc d
    jr z, jr_026_62c9

    pop af
    ld [hli], a
    sub e
    ld e, l
    inc bc
    sub b

jr_026_6252:
    dec h
    jr z, jr_026_6297

    ld e, h
    inc de
    adc h
    ld [bc], a
    or e
    inc l
    and b
    sub h
    ld sp, $9807
    jr z, jr_026_61fc

    rrca
    rla
    or a
    and b
    db $76
    sub h
    or l
    ld d, a
    cp [hl]
    ld b, a
    sub h
    ld b, $2b
    ld a, [hli]
    inc b
    sbc [hl]
    scf
    ld e, a
    sub [hl]
    sub h
    db $76
    jr z, jr_026_62a3

    inc b
    or [hl]
    adc a
    daa
    ld e, [hl]
    sub h
    db $76
    jr c, jr_026_6215

    ld a, [hli]
    inc b
    adc a
    daa
    ld e, [hl]
    sub h
    db $76
    ld c, b
    dec e
    or h
    ld c, a
    inc hl
    inc bc
    add a
    ld [$6887], sp
    rlca
    jr nz, jr_026_62a8

    daa

jr_026_6297:
    ld c, b
    dec bc
    ld e, h
    and l
    and l
    dec e
    dec e
    inc c
    inc c
    and l
    dec e
    ld a, d

jr_026_62a3:
    ld [hl-], a
    jr nz, jr_026_62ad

    and l
    and l

jr_026_62a8:
    dec e
    dec e
    db $ec
    and l
    and l

jr_026_62ad:
    ld sp, hl

jr_026_62ae:
    ld a, b
    ld h, c
    adc e
    ld [hl], c
    rst $38
    ld a, b
    ld a, c
    ld a, d
    jr z, jr_026_62ef

    rst JumpTable
    ld a, c
    ld b, d
    inc [hl]
    ld h, a
    ld a, c
    ld b, d
    inc d
    rla
    ld d, [hl]
    ld [bc], a
    add hl, de
    and c
    dec b
    ld a, e
    ld [hli], a
    ld a, e

jr_026_62c9:
    dec [hl]
    ld h, a
    ld a, c
    ld b, d
    or l
    ld [hl], c
    ld [de], a
    ldh a, [rNR13]
    ld a, c
    ld b, d
    db $10
    cp c
    cp e
    ld bc, $e10f
    rst $38
    jr nz, @+$24

    ld e, h
    dec c
    ld d, c
    dec e
    ld c, h
    daa
    pop de
    dec d
    call z, $3102
    ld b, [hl]
    adc a
    rla
    rst $28
    inc l
    nop
    inc bc

jr_026_62ef:
    inc h
    rla
    dec c
    sbc [hl]
    dec a
    db $10
    call z, $3102
    ld b, [hl]
    adc a
    daa
    ld [bc], a
    db $10
    call z, $a602
    or e
    dec e
    ld e, $1d
    dec e
    cp [hl]
    or [hl]
    cp a
    scf
    and h
    inc hl
    ld a, [$37aa]
    call z, Call_026_5735
    or h
    rrca
    rst $38
    inc bc
    pop af
    rst $00
    ldh [$d3], a
    push de
    jr nz, jr_026_62ae

    ld a, b
    ld c, l
    rla
    ld de, $2775
    inc c
    db $76
    scf
    ld a, $10
    xor $11
    ld e, b
    jr c, jr_026_63a3

    daa

jr_026_632d:
    ld a, $10
    ld de, $3cc1
    ld [hl], a
    daa
    xor $02
    ccf
    sub c
    ld e, h
    db $76
    daa
    sbc [hl]
    ld c, h
    inc bc
    ld l, l
    sbc [hl]
    ld c, h
    inc bc
    ld l, l
    or c
    nop
    ld a, a
    inc d
    inc h
    add h
    ld l, l
    xor [hl]
    adc d
    ld l, c
    ld e, h
    ld d, e
    ld e, b
    ld sp, hl
    ld c, b
    db $10
    cp c
    cp e
    ld bc, $e10f
    inc sp
    jr nz, jr_026_632d

    jr nz, @-$2d

    or e
    ld d, l
    or c
    db $76
    inc l
    ld de, $55b3
    add e
    ld sp, hl
    nop
    sub d
    db $10
    or $f4
    db $f4
    ld d, a
    ld d, a
    adc [hl]
    ld bc, $5548
    db $f4
    db $f4
    daa
    ld sp, $f4f4
    inc l
    ld de, $00b3
    ld d, l
    db $f4
    db $f4

jr_026_6380:
    ld d, l
    rst $30
    and b
    pop af
    push af
    ld [$f457], sp
    db $f4
    cp h
    inc de
    or e
    ld d, l
    db $f4
    db $f4
    ld b, b
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    db $f4
    ld d, a
    ld l, d
    inc sp
    or e
    ld c, b
    ld d, l
    db $f4
    db $f4
    or c
    inc de
    db $f4
    ld d, a
    ld l, d
    inc sp

jr_026_63a3:
    or e
    ld d, $55
    sub d
    db $10
    sub d
    nop
    ld d, a
    ld l, d
    inc sp
    or e
    ld d, l
    ld d, h
    add b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld l, d
    inc sp
    dec b
    db $10
    cp c
    cp e
    rrca
    pop hl
    jp $3ae0


    push bc
    dec h
    cp c
    sub c
    sub [hl]
    sub b
    xor a
    dec l
    add h
    ld c, l
    jr jr_026_6380

    sub l
    ld de, $035e
    db $f4
    add a
    sub l
    ld de, $3194
    rra
    sbc e
    or c
    sub l
    ld de, $035e
    db $f4
    add a
    sub l
    ld de, $ce7f
    dec b
    or h
    ld a, $f0
    inc hl
    scf
    inc bc
    cpl
    dec h
    and e
    ld a, b
    ld e, [hl]
    inc de
    push af
    rst $38
    or h
    ld a, $88
    daa
    ld e, [hl]
    inc sp
    or c
    inc bc
    add [hl]
    ld b, a
    ld e, [hl]
    ld d, e
    jp z, $342a

    inc bc
    ld l, $94
    cp a
    dec e
    ld h, c
    inc de
    add [hl]
    ld b, a
    sub h
    rrca
    pop hl
    rst $00
    ldh [rWY], a
    and $3f
    cp l
    ld b, a
    dec e
    ld de, $f711
    and a
    sub b
    ld e, h
    sbc c
    adc h
    ld a, [hl-]
    and e
    and e
    or c
    inc hl
    adc c
    ld l, d
    pop af
    and e
    ld h, c
    inc hl
    rst $38
    ret z

    daa
    adc $07
    ld sp, $6103
    inc hl
    reti


    add a
    ld h, c
    inc hl
    reti


    add a
    ld h, c
    inc hl
    pop af
    reti


    ld d, a
    ld de, $1111
    ld h, c
    inc hl
    reti


    ld d, a
    pop de

Call_026_6447:
    dec b
    sub d
    db $10
    rrca
    inc h
    ccf
    ld c, [hl]
    ld l, e
    ld e, c
    inc a

jr_026_6451:
    db $dd
    ld [bc], a
    ld sp, hl
    jr nz, jr_026_6468

    ld a, h
    or b
    and $0a
    add hl, bc
    ld l, h
    ld [hl], l

jr_026_645d:
    jr z, jr_026_64d6

    ld l, b
    ret


    inc de
    ld a, a
    ld [hl], a
    ld [$6877], sp
    ret


jr_026_6468:
    inc de
    ld [hl], a
    ld [$3309], sp
    sbc l
    ld [bc], a
    nop

jr_026_6470:
    inc de
    ld e, h
    call z, $f7a0
    ld [hl], a
    ld l, b
    ret


    inc de
    ld e, [hl]
    rst $30
    db $76
    ld a, b
    ret


    inc de
    jr c, jr_026_64df

    and b
    rst $30
    ld [hl], a
    ld l, b
    ret


    inc de
    ld [hl], a
    ld [$0a5e], sp
    ei
    ld b, d
    jr z, jr_026_645d

    daa
    ld a, [bc]
    ld [hl], a
    ld [$1877], sp
    ld [hl], a
    ld [$379e], sp
    ld [hl], a
    ld [$77bf], sp
    jr @+$79

    ld [$334e], sp
    add a
    ld [$1887], sp
    add a
    ld [$0fbb], sp
    pop hl
    or c
    jr nz, @-$2c

    or e
    ld de, $f011
    inc de
    rla
    dec c
    ccf
    ld a, [hli]
    inc b
    rst $38
    xor [hl]
    xor d
    ld a, [hli]
    inc b
    ld e, [hl]
    jr jr_026_6451

    add hl, hl
    or a
    inc de

jr_026_64c3:
    ld a, [hli]
    inc b
    xor [hl]
    ld a, d
    ld l, b
    inc bc
    ld e, a
    ld a, [hli]
    inc b
    ld a, $00   ; xor a
    ld [bc], a
    ld c, c
    ld l, b
    inc bc
    ld a, [hli]
    inc b
    ld [hl], c
    rst $08

jr_026_64d6:
    ld a, e
    or $fe
    or $2a
    inc b
    ld e, [hl]
    jr jr_026_6470

jr_026_64df:
    add hl, hl
    rst $30
    rst $00
    or $d7
    ld b, [hl]
    set 0, l
    adc c
    db $fd
    jr nz, jr_026_64c3

    or e
    inc bc
    ld h, [hl]
    inc bc
    ld d, $3e
    nop
    inc bc
    ld h, [hl]
    inc bc
    ld d, $3e
    nop
    rst $38
    inc bc
    ld h, [hl]
    inc bc
    ld d, $3e
    nop
    inc bc
    ld h, [hl]
    inc bc
    ld d, $ae
    rlca
    inc bc
    ld h, [hl]
    inc bc
    ld d, $ff
    ld a, $00   ; xor a
    inc bc
    ld h, [hl]
    inc bc
    ld d, $3e
    nop
    inc bc
    ld h, [hl]
    inc bc
    ld d, $3e
    nop
    inc bc
    ld h, [hl]
    ld e, a
    inc bc
    ld d, $3e
    nop
    inc bc
    ld h, [hl]
    inc bc
    ld d, $0e
    reti


    cp e
    rrca
    pop hl
    ld [hl], a
    ld d, c
    ld [bc], a
    ld h, c
    inc de
    add [hl]
    ld b, a
    sbc c
    ld e, a
    ld b, e
    jp z, $342a

    inc de
    nop
    ld e, $b3
    sub d
    ld [hli], a
    jp z, $342a

    inc de
    xor a
    dec l
    pop af
    sub h
    db $f4
    ld [hl], a
    cp d
    ld l, $16
    nop
    cp a
    scf
    sub h
    jr jr_026_6560

    add a
    add hl, hl
    cp a
    scf
    sub h
    xor e
    jr @+$14

    ldh a, [rNR13]
    db $fd
    cp a
    scf
    sub h
    jr jr_026_6570

    and b
    and c

jr_026_6560:
    dec b
    ld d, d
    db $fd
    xor a
    dec l
    and b
    sub h
    jr jr_026_657b

    and b
    and c
    dec b
    db $fd
    ld d, l
    cp a
    scf

jr_026_6570:
    sub h
    jr jr_026_6585

    and b
    and c
    dec b
    db $fd
    cp a
    scf
    sub h
    sub e

jr_026_657b:
    jr jr_026_658f

    ld d, [hl]
    ld [bc], a
    db $fd
    db $fd
    cp a
    dec l
    and b
    sub h

jr_026_6585:
    jr jr_026_6599

    ld a, [bc]
    and b
    rrc l
    or d
    rrca
    pop hl
    rst $30

jr_026_658f:
    inc hl
    ld d, e
    ld b, e
    scf
    ld l, $79
    sub h
    jr nz, jr_026_6598

jr_026_6598:
    ld a, h

jr_026_6599:
    ld [de], a
    ld sp, $d379
    dec d
    ld h, $b6
    sbc a
    ld [hli], a
    inc c
    nop
    and b
    sbc d
    ld d, d
    nop
    db $fd
    db $fd
    xor [hl]
    and b
    rra
    ld e, c
    sbc d
    dec b
    ld [hl], c
    ld [de], a
    and b
    ld e, a
    inc [hl]
    db $fd
    ldh a, [rNR13]
    db $fd
    ld [hl], c
    ld [de], a
    or h
    ld e, a
    inc [hl]
    ld [hl], l
    add d
    ld [hl], c
    and d
    ld a, l
    ld [bc], a
    ld [hl], c
    ld [hl], d
    db $e4
    dec b
    db $fc
    ld a, [$5fb1]
    inc [hl]
    inc sp
    nop
    db $e4
    dec b
    db $e4
    dec b
    cp [hl]
    ld c, c
    inc d
    inc d
    inc bc
    db $db
    ld [bc], a
    call c, $e912
    jr nz, @+$14

    ld a, h
    or b
    and $0a
    or b
    and $0a
    cp l
    ld b, a
    ld [hl], a
    ld [$5ede], sp
    ld hl, $7707
    ld [$02ee], sp
    ld [hl], h
    jr c, jr_026_6653

    ld hl, $7707
    ld [$ee7b], sp
    scf
    ld [hl], a
    ld [$215e], sp
    rlca
    sub e
    add hl, bc
    xor $37
    sub e
    add hl, bc
    ld e, [hl]
    ld sp, hl
    inc [hl]
    inc a
    or c
    nop
    inc d
    inc d
    inc b
    dec hl
    ld [hl], a
    daa
    xor [hl]
    adc d
    ld [hl], a
    daa
    ld a, l
    xor [hl]
    adc d
    dec e
    or $05
    ld l, l
    ld a, b
    rlca
    xor l
    or b
    ld a, c
    ld c, $d9
    cp e
    ld bc, $e10f
    cp c
    ld d, c
    ld [de], a
    and b
    sub h
    jr jr_026_6642

    cp b
    rla
    cp [hl]
    ld b, a
    sub h
    jr @+$14

    ld c, l
    ld a, [$9487]
    jr jr_026_664f

    ld a, [hli]
    scf
    cp a
    and b
    or c

jr_026_6642:
    inc de
    db $f4
    ld a, h
    db $f4
    push af
    or h
    ld l, $6e
    ld [bc], a
    rla
    ld [bc], a
    ld h, c
    inc hl

jr_026_664f:
    jp z, $b62a

    cpl

jr_026_6653:
    rst $28
    inc b
    sub d
    jr nz, @-$06

    nop
    cp d
    ld a, d
    ccf
    rla
    ld [bc], a
    db $f4
    db $f4
    db $fd
    sub c
    ld a, [de]
    or h
    xor a
    dec l
    and h
    nop
    ld hl, sp+$00
    ld c, d
    dec a
    inc [hl]
    scf
    ld h, c
    inc de
    ld a, a
    ld a, [$6197]
    inc de
    ld a, d
    ld l, b
    ld e, c
    dec de
    ld e, c
    dec de
    ld e, b
    inc de
    rrca
    pop hl
    ld a, a
    add b
    ld e, c
    add a
    add hl, sp
    ld c, [hl]
    rlca
    ld b, [hl]
    inc l
    sub [hl]
    ld a, [hli]
    ld b, [hl]
    inc c
    ld a, $00   ; xor a
    and d
    and $09
    inc e
    rlca
    sub [hl]
    ld a, [hli]
    and d
    add hl, bc
    ld a, l
    rla
    ld b, [hl]
    inc l
    sub [hl]
    ld a, [hli]
    ld a, a
    ld b, [hl]
    inc c
    xor $02
    ld hl, $e95d
    and a
    sub [hl]
    ld c, d
    db $ed
    nop
    inc d
    inc d
    and b
    ld e, [hl]
    xor $31
    inc bc
    ld h, l
    ld e, $ed
    db $10
    ld b, [hl]
    inc e
    xor $31
    inc bc
    xor $83
    ld b, l
    inc e
    ld a, $00   ; xor a
    and d
    add hl, bc
    and d
    and b
    xor $76
    ld c, $f0
    xor $a0
    and d
    add hl, bc
    ld a, l
    rla
    ld b, [hl]
    inc l
    add [hl]
    ld l, $46
    inc c
    ld de, $587e
    and $00
    and $e9
    ld b, e
    ld [hl], $3d
    or d
    ld [hl], d
    ld c, e
    ld [hli], a
    dec a
    jp nc, $436e

    ld [hli], a
    nop
    dec a
    rst $20
    jp nc, $933e

    inc bc
    or e
    ld [hli], a
    nop
    dec a
    jp nz, $922e

    ld h, $cb
    ld l, $60
    dec a
    dec a
    ld bc, $3d3d
    ld [hl], c
    ccf
    sra [hl]
    inc a
    add $3d
    push af
    ld e, [hl]
    or e
    ld [hli], a
    nop
    inc a
    dec a
    sub e
    ld e, a
    ld b, e
    ld [hli], a
    ld [$3c00], sp
    dec a
    sub e
    inc b
    ccf
    dec a
    dec a
    ld bc, $1662
    ld b, e
    ld [hli], a
    nop
    inc a
    dec a
    sub e
    ld e, a
    ld b, e
    ld [hli], a
    nop
    call z, $3d3c
    sub e
    ld e, a
    ld b, e
    ld [hli], a
    nop
    inc a
    or h
    add d
    ld c, h
    ld [de], a
    ld de, $9500
    dec a
    jr jr_026_6776

    rst $38
    and h
    dec a
    jr @+$3f

    jp z, $b300

    ld [hl-], a
    ccf
    or e
    ld [hl-], a
    jr @+$3f

    adc a
    ld d, e
    sub [hl]
    ld b, e
    add [hl]
    dec a
    adc a
    ld d, [hl]
    sub [hl]
    ld b, [hl]
    dec a
    nop
    dec a
    dec a
    ld [hl], d
    cpl
    ld hl, $4f76
    dec a
    nop
    inc a
    dec a
    db $d3
    adc [hl]
    jr jr_026_679f

    jr jr_026_6764

jr_026_6764:
    inc a
    dec a
    db $d3
    ld a, [hl]
    or e
    ld [bc], a
    nop
    inc a
    dec a
    add c
    db $d3
    ld a, [hl]
    dec a
    inc a
    dec a
    nop
    inc a
    dec a

jr_026_6776:
    ld [hl], e
    ld h, e
    ld b, b
    ld bc, $3c3d
    dec a
    nop
    inc a
    or e
    ld [hl], d
    ccf
    ld [$3c3d], sp
    dec a
    rrca
    pop hl
    push hl
    jr nz, @+$44

    ld b, b

jr_026_678c:
    ld c, b
    ld h, a
    push af
    push af
    and a
    nop
    sub [hl]
    ld c, d
    db $ed
    db $10
    jr jr_026_678c

    db $f4
    rst $30
    inc b
    ld bc, $77f7
    db $f4

jr_026_679f:
    db $f4
    dec hl
    sbc [hl]
    dec hl

jr_026_67a3:
    xor c
    nop
    jr z, jr_026_67ce

    ld c, l
    nop
    nop
    ld bc, $f5f5
    dec [hl]
    inc de
    dec sp
    ldh a, [rNR13]
    ld c, l
    nop
    or e
    sub d
    db $10
    dec [hl]
    inc de

Jump_026_67b9:
    reti


    ld d, a
    dec hl
    dec hl
    ld a, h
    dec hl
    dec hl
    dec [hl]
    inc de
    ld l, c
    cp b
    rst $30
    rst $00
    or $d7
    ld b, [hl]
    db $eb
    and b
    ld bc, $5b58

jr_026_67ce:
    rst $38
    jr nz, jr_026_67a3

    ret nc

    cp e
    ld a, $00   ; xor a
    db $76
    scf
    or a
    inc hl
    xor h
    add hl, de
    or b
    ld l, $b3
    inc de
    push af
    ld h, e
    inc de
    inc c
    ld a, [hl]
    daa
    rst $30
    sub d
    db $10
    ld l, b
    inc de
    db $fc
    ld c, b
    ld e, b
    jr c, jr_026_67ce

    sub d
    nop
    xor h
    add hl, de
    db $10
    inc a
    add hl, de
    scf
    db $fc
    ld h, a
    add hl, de
    or $87

Jump_026_67fc:
    ld [de], a
    xor h
    rra
    ld a, $00   ; xor a
    dec b
    ld l, l
    ld c, d
    sbc e
    ld d, l
    inc sp
    call c, $fc12
    cp b
    ld b, b
    inc h
    add d
    db $ed
    dec e
    di
    sub a
    db $ed
    dec e
    di
    sub a
    db $ed
    dec e
    or c
    db $76
    ld e, d
    dec e
    dec e
    or h
    db $ec
    dec l
    dec d
    inc d
    inc c
    xor c
    scf
    cp a
    nop
    inc b
    sbc a
    ld b, a
    ld e, c
    jr c, jr_026_682d

jr_026_682d:
    inc b
    sbc a
    scf
    and [hl]
    scf
    or [hl]
    ld e, h
    dec e
    rst $38
    or b
    sbc d
    call z, $b012
    sbc d
    call z, $b012
    sbc d
    db $fc
    ld h, [hl]
    ld d, h
    ld d, e
    call $6d02
    ret nz

    db $eb
    pop af
    rla
    ld [bc], a
    ld h, h
    inc bc
    ld b, h
    jp hl


    ld a, b
    ld hl, sp+$10
    rst $30
    add sp, $1d
    ld de, $1611
    inc b
    push af
    xor a
    inc de
    ld hl, sp+$00
    ld a, [de]
    ld [bc], a
    pop hl
    xor c
    daa
    db $f4
    nop
    or e
    or $61
    inc de
    and h
    nop
    or c
    inc bc
    ld e, b
    inc e
    push af
    db $f4
    rst $28
    inc b
    ld h, c
    inc de
    push af
    ld l, d
    ld [bc], a
    db $f4
    ldh a, [$f4]
    rst $30
    or $f4
    xor a
    inc bc
    ld sp, hl
    nop
    ld h, c
    inc hl
    jr jr_026_6899

    ldh a, [$f4]
    nop
    or e
    or $64
    inc bc
    sub c
    db $10
    ld hl, sp+$00
    ld [hli], a
    rrca
    pop af
    rst $28
    inc b
    db $f4
    db $f4

jr_026_6899:
    push af
    push hl
    add hl, de
    ld hl, sp+$00
    adc h
    scf
    ld h, c
    inc de
    ld e, c
    pop bc
    ld a, [de]
    db $f4
    db $f4
    or h
    ld c, $4f

jr_026_68aa:
    ld e, e
    ld [hl], d
    ld e, b
    ld e, h
    or e
    jr nz, jr_026_68aa

    ld hl, sp+$00
    and b
    dec e
    cp h
    dec b
    ld a, [hli]
    scf
    push af
    ld l, d
    ld [bc], a
    cp $f4
    rla
    inc d
    or c
    inc bc
    xor h
    inc e
    ld h, c
    inc hl
    ldh a, [rNR13]
    ld hl, sp+$00
    ld a, h
    inc d
    ld e, a
    ld h, c
    inc hl
    rla
    ld [de], a
    ld hl, sp+$00
    ld a, h
    inc d
    push hl
    add hl, de
    db $f4
    rla
    ld [de], a
    dec e
    ld [hl], c
    push hl
    add hl, de
    or c
    nop
    db $f4
    db $e4
    add hl, hl
    jr jr_026_68f7

    or d
    ld e, $b1
    add [hl]
    nop
    ld d, $12
    ld h, c
    inc hl
    and b
    dec e
    or $f6
    db $ed
    and a
    ld e, l
    xor d
    ld l, c

jr_026_68f7:
    db $f4
    and l
    nop
    jp z, $bc2a

    ld sp, hl
    cp e
    rrca
    ld bc, $f0bf
    db $fc
    ld d, [hl]
    ld e, b
    sub $02
    db $fd
    db $10
    inc [hl]
    inc e
    ld a, [hli]
    inc b
    ld d, $54
    daa
    add hl, de
    cp $88
    dec e
    ld d, $2a
    inc b
    ld c, [hl]
    ld e, b
    ld d, $a0
    ld d, $7f
    ld d, h
    daa
    cp $38
    ld bc, $4d69
    ret c

    ld c, l
    ld e, b
    or l
    adc c
    ld d, d
    nop
    inc c
    ld sp, $3784
    or h
    or d
    ld d, b
    adc l
    ld c, b
    add h
    ld b, a
    sub c
    and b
    dec de
    db $fd
    inc bc
    db $10
    ld a, c
    cp e
    xor c
    ld [de], a
    rrca
    ld sp, $e07f
    ld a, [hl-]
    push bc
    dec [hl]
    ld c, h
    daa
    inc bc
    ld h, $f6
    add a
    inc bc
    ld h, $f6
    add a
    and h
    ld [hli], a
    and h
    ld b, e
    xor l
    or e
    and h
    and h
    ldh a, [$87]
    or [hl]
    nop
    ld a, b
    or e
    and h
    and h
    or e
    xor d
    ld d, b
    inc bc
    inc d
    inc d
    jr z, @+$29

    and h
    ld b, b
    and h
    or h
    nop
    sub c
    pop af
    sub b
    inc [hl]
    ld h, a
    and h
    sbc h
    and h
    cp l
    adc a
    dec d
    ld [hl-], a
    ld h, $03
    ld [hl], $b1
    nop
    xor h
    dec b
    inc bc
    ld [hl-], a
    ld h, $03
    ld [hl], $b1
    nop
    sub e
    and b
    sub h
    cp d
    inc bc
    ld d, e
    ld d, e
    call c, $ff12
    ldh [$3a], a
    push bc
    dec [hl]
    ld c, h
    daa
    or h
    inc de
    ld d, a
    ld c, b
    cp h
    inc de
    nop
    ld bc, $03b5
    xor a
    ld d, d
    daa
    ld l, d
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    sub d
    nop
    rst $30
    sub h
    inc l
    rst $30
    sub d
    nop
    adc b
    cp l
    nop
    or a
    and [hl]
    daa
    add b
    add c
    add d
    and [hl]
    daa
    and d
    or [hl]
    rst $28
    ld b, a
    add e
    adc b
    add h
    jp hl


    ld c, b
    or l
    and [hl]
    daa
    adc b
    add l
    add [hl]
    add a
    and [hl]
    daa
    or h
    nop
    cp a
    or d
    inc sp
    rrca
    ld d, $04
    or c
    inc de
    ld l, [hl]
    ld [bc], a
    sub d
    db $10
    or h
    or d
    ld d, b
    or d
    ld [hl], $b5
    sub d
    db $10
    ld a, [hl]
    ld c, b
    cp e
    dec de
    rlca
    ldh [rNR44], a
    cp e
    nop
    dec sp
    db $db
    ld [bc], a
    ld d, d
    inc de
    and d
    ld d, a
    inc de
    ld [de], a
    inc b
    rrca
    ld sp, $e0fd
    ld c, d
    ld [hl], b
    add sp, -$56
    ld c, c
    add hl, hl
    ld l, d
    xor b
    scf

jr_026_6a05:
    ld h, a
    or b
    dec e
    ld b, h
    sbc l
    ei
    inc d
    rla
    ldh a, [rPCM34]
    or [hl]
    rst $28
    scf
    db $db

jr_026_6a13:
    ld [bc], a
    inc de
    inc h
    adc l
    ld bc, $1414
    ei
    dec de
    inc de
    ld sp, $b436
    cp a
    scf
    call z, $3102
    ld b, [hl]
    rst JumpTable
    inc sp
    db $ec
    dec c
    rst $38
    pop hl
    dec e
    call c, $0012
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    rst $38
    ld b, e
    nop
    inc [hl]
    nop
    inc b
    ld bc, $310f
    ld l, a
    jr nz, jr_026_6a13

    db $10
    rst $38
    or h
    ld a, $28
    ld d, a
    cp a
    ret


    ld a, [hl-]
    ldh a, [rNR13]
    ld c, l
    sbc d
    ld c, l
    db $ed
    nop
    or a
    inc hl
    ld c, a
    ld d, [hl]
    ld [bc], a
    ld c, l
    ld c, l
    db $ed
    daa
    nop
    ld c, l
    ld d, $a0
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    jr z, jr_026_6a05

    dec e
    pop af
    db $ed
    nop
    or l
    or e
    ld e, $4d
    ld d, $40
    ld d, $16
    ld c, l
    and b
    ld c, l
    ld c, l
    db $ed
    nop
    cp a
    add l
    and l
    nop
    ld c, l
    or h
    ld e, $f5
    ld c, l
    ld c, l
    ld c, l
    db $dd
    daa
    ret z

    or $a0
    ld c, l
    inc h
    rra
    or $4d
    ld l, e
    sbc b
    ld b, a
    db $db
    ld [bc], a
    and b
    ld e, b
    ld e, e
    di
    inc h
    ld b, [hl]
    ld d, c
    dec e
    or b
    ld b, b
    cp l
    ld h, a
    scf
    ld b, $b4
    ld e, $bd
    inc bc
    dec sp
    inc [hl]
    scf
    scf
    ld b, $f4
    or c
    inc bc
    sbc l
    db $10
    add hl, hl
    scf
    and [hl]
    or e
    sbc [hl]
    ld [$336a], sp
    inc [hl]
    scf
    scf
    ld b, $6a
    ld [bc], a
    db $f4
    ld [$57fe], sp
    ld a, l
    scf
    ld b, $08
    ld hl, sp+$00
    cp l
    inc bc
    inc [hl]
    scf
    scf
    ld b, $6a
    ld [bc], a
    db $f4
    or $08
    cp $57
    scf
    ld b, $08
    ld hl, sp+$00
    cp l
    inc bc
    inc [hl]
    scf
    scf
    ld b, $7f
    ld l, d
    ld [bc], a
    ld l, h
    inc de
    inc [hl]
    scf
    scf
    ld b, $91
    db $10
    sbc l
    db $10
    add hl, hl
    scf
    and [hl]
    dec b
    jr nc, jr_026_6b05

    and b
    sbc l
    nop
    rst $38
    sub b
    dec [hl]
    push bc
    dec [hl]
    inc l
    ld [de], a
    ld e, h
    inc bc
    ret


    inc de
    inc bc
    ld b, [hl]
    ld e, [hl]
    rla
    ld h, e
    daa
    ld h, a

jr_026_6b05:
    inc bc
    ld b, [hl]
    ld e, [hl]
    rla
    ld h, e
    ld [hl], a
    and h
    and h
    ld e, [hl]
    rla
    ld h, e
    ld [hl], a
    and h
    ld b, [hl]
    and h
    ld e, [hl]
    rla
    ld h, e
    ld [hl], a
    and h
    and h
    cp l
    ld l, a
    rlca
    sbc d
    and c
    inc [hl]
    ld b, a
    inc e
    and b
    and h
    and h
    ld c, [hl]
    nop
    ld d, b
    inc de
    daa
    ld c, c
    jr z, jr_026_6b54

    and h
    and h
    ld a, $bd
    and h
    and h
    xor [hl]
    cp d
    and h
    ld b, $a4
    cp [hl]
    dec e
    jp nz, Jump_026_67b9

    adc b
    add hl, hl
    call nz, $e045
    ld [bc], a
    nop
    dec e
    ld b, [hl]
    inc c
    ld d, e
    ld a, b
    sub h
    db $ec
    nop
    dec e
    ld b, [hl]
    inc c
    ld d, e
    ld a, b
    sub h
    adc a
    inc c

jr_026_6b54:
    jp nc, Jump_026_5002

    add hl, hl
    db $fd

jr_026_6b59:
    ld d, b
    add hl, de
    sbc d
    rra
    ld d, d
    ld de, $6007
    add hl, hl
    xor a
    dec l
    inc b
    ld a, l
    ld l, [hl]
    ld [bc], a
    push af
    ldh a, [rNR13]
    ld e, $b2
    ld e, c
    or [hl]
    rra
    dec sp
    dec b
    ld l, l
    sbc $48
    dec b
    ld l, l
    ld a, d
    or h
    xor a
    dec l
    inc c
    dec b
    ld l, l
    cp [hl]
    dec e
    ld d, c
    ld [hl], e
    call c, $ed12
    jr nz, jr_026_6b59

    or e
    xor c
    nop
    dec [hl]
    ld h, a
    dec hl
    ld c, $ff
    and b
    scf
    or c
    ld e, c
    rst JumpTable
    ld l, [hl]
    ld [bc], a
    ldh a, [rNR13]
    inc bc
    ld h, $b6
    daa
    xor a
    dec l
    and b
    inc bc
    ld h, $ea
    jr c, jr_026_6c11

    inc d
    rla
    and b
    inc bc
    ld h, $f0
    inc de
    or h
    sbc a
    inc a
    or b
    ld l, c
    cp l
    or [hl]
    nop
    inc d
    inc d
    db $f4
    sub a
    cp a
    xor c
    nop
    dec [hl]
    ld h, a
    dec hl
    ld c, $d9
    ld [bc], a
    cp e
    rrca
    ld bc, $f0b7
    db $ec
    pop de
    dec b
    dec [hl]
    ld b, a
    push af
    ld c, h
    db $10
    ld [hl-], a
    ld h, $4d
    jr z, jr_026_6bf9

    cp $f4
    ld c, h
    db $10
    or b
    dec e
    dec [hl]
    ld b, a
    add hl, bc
    ld bc, $02ee
    or c
    ld l, $b4
    ld l, $e8
    or $f7
    rst $30
    xor $37
    db $f4
    ret


    ld a, [hl-]
    ld a, e
    inc h
    inc d
    inc d
    ld a, [$23f6]
    rra
    ld c, l
    ld a, [hli]
    scf
    or b
    dec e
    db $f4

jr_026_6bf9:
    and a
    or h
    ld a, $b5
    ld a, $29
    cp l
    inc bc
    or e
    or $8a
    inc c
    ld c, l
    jr z, jr_026_6c3f

    or $f6
    dec b
    ld a, [hl]
    ld l, b
    ld a, [hl-]

jr_026_6c0e:
    add sp, $53
    ld [hl], a

jr_026_6c11:
    inc [hl]
    scf
    scf
    ld b, $24
    rra
    or $fe
    ld d, a
    scf
    ld d, $fa
    sub a
    or [hl]
    ei
    inc de
    daa
    ld l, h
    adc b
    rst $30
    adc d
    inc e
    ld l, h
    adc b
    rst $30

Jump_026_6c2a:
    and a
    or h
    sbc [hl]
    jr nz, jr_026_6c0e

    ld c, a
    db $10
    rst $28
    or h
    ld a, $28
    scf
    cp l
    inc bc
    or e
    or $8a
    inc c
    ld de, $1150

jr_026_6c3f:
    ld de, $1111
    adc b
    inc c
    or $0e
    reti


    cp e
    ld bc, $e10f
    rst $38
    ldh [$3a], a
    push bc
    dec [hl]
    ld l, h
    adc l
    rst $30
    sub a
    ld d, a
    ld bc, $2ba9
    ld d, l
    ld [bc], a
    sbc [hl]
    daa
    db $e4
    and l
    xor $55
    ld [de], a
    and l
    xor $55
    ld [bc], a
    sbc [hl]
    daa
    pop hl
    add hl, de
    sub e
    rst $20
    add hl, hl
    call c, $a547
    xor $55
    ld [de], a
    and l
    xor $55
    ld [bc], a
    ld c, a
    sbc [hl]
    daa
    pop hl
    add hl, de
    rst $20
    add hl, hl
    call c, $a547
    xor $55
    ld [de], a
    and l
    cp $ee
    ld d, l
    ld [bc], a
    sbc [hl]
    daa
    ld d, a

jr_026_6c8b:
    ld bc, $0e76
    ld d, a
    ld bc, $fe7c
    ld a, [hl]
    ld e, b
    ld [$00e6], sp
    and $e9
    ld b, e
    ld d, l
    jr nz, jr_026_6cdf

    inc [hl]
    ld c, b
    ld h, a
    sbc d
    and b
    ld [hli], a
    and b
    xor c
    ld [hli], a
    sbc e
    xor l
    ld a, $00   ; xor a
    sub h
    ld hl, $393e
    dec l
    sub l
    ld a, $00   ; xor a
    sub h
    inc e
    rlca
    adc e
    ld b, h
    ld [hli], a
    ld a, [de]
    rlca
    sub l
    ld a, $00   ; xor a
    sub h
    and d
    and b
    ld b, h
    ld b, d
    adc b
    and b
    and d
    sub l
    ld a, $00   ; xor a
    sub h
    and d
    and b
    or e
    ld d, d
    ld b, h
    and d
    sub l
    ld a, $00   ; xor a
    sub h
    and d
    and b
    ld b, h
    ld b, d
    and b
    ld [hl], h
    and d
    sub l
    ld a, $00   ; xor a
    sub h
    inc e

jr_026_6cdf:
    rlca
    ld b, h
    ld [hli], a
    ld a, [de]
    rlca
    sub l
    xor l
    ld a, $00   ; xor a
    sub h
    ld hl, $393e
    dec l
    sub l
    ld a, $00   ; xor a
    sub b
    inc hl
    ld h, e
    jr z, jr_026_6c8b

    sub [hl]
    sub c
    ld c, $d9
    cp e
    rrca
    ld bc, $2085
    ld b, d
    ld b, c
    ld [$a07c], sp
    and b
    ld c, l
    ld c, l
    ld d, [hl]
    ld [bc], a
    xor d
    ld c, l
    ld d, [hl]
    ld [bc], a
    ld c, l
    xor [hl]
    jp z, $9e4d

    daa
    ld c, l
    jr z, jr_026_6d4c

    inc l
    ld c, l
    ld c, l
    ld l, h
    adc b
    ldh a, [rNR13]
    ld c, l
    ld l, h
    adc b
    and b
    ld c, l

jr_026_6d21:
    dec b
    ldh a, [rNR13]
    ld c, l
    sbc [hl]
    dec d
    ld c, l
    ld c, l
    and b
    and b
    ld c, l
    call nc, Call_026_4d4d
    reti


    add a
    ld c, l
    jr z, @+$29

    ld c, l
    ld l, e
    sbc b
    jr z, jr_026_6d70

    ld a, [hli]
    ld c, l
    ld a, $00   ; xor a
    ld c, l
    ldh a, [rNR13]
    ld c, l
    jr z, jr_026_6d6a

    ld c, l
    ld c, l
    rlca
    ld a, [hl]
    ld e, b
    ld d, l
    inc bc
    jp hl


    ld b, e

jr_026_6d4c:
    ei
    jr nz, jr_026_6d21

    or b
    xor d
    inc c
    ld c, $ff
    db $10
    rst $38
    ld [de], a
    ei
    db $f4
    rst $30
    or $d7
    rrca
    or $d7
    or $d7
    ld b, [hl]
    set 4, l
    add e
    call c, Call_026_41b8
    ld [hli], a
    or d

jr_026_6d6a:
    and b
    ld b, a
    ldh a, [rNR13]
    ld d, $dc

jr_026_6d70:
    ld d, a
    ld e, c
    rla
    ld a, a
    inc sp
    inc l
    ld a, l
    ld a, [hl-]
    ld e, b
    daa
    inc [hl]

jr_026_6d7b:
    inc a
    sbc [hl]
    ld [hl], a
    ld d, a
    scf
    sbc [hl]
    scf
    ld h, b
    xor $a0
    push de
    ld [bc], a
    sbc c
    ld c, c
    ret


    inc de
    ld h, b
    ld [hl], l
    ld bc, $3851
    sbc [hl]
    rst $30
    ld sp, hl
    and b
    ld d, a
    and b
    ld d, $da
    ld b, a
    ld [hl], h
    nop
    add d
    daa
    ld [hl-], a
    inc l
    ld a, [hl]
    ld e, b
    inc bc
    ld d, l
    inc bc
    jp hl


    ld b, e
    ld a, a
    jr nz, jr_026_6d7b

    inc [hl]
    ld d, a
    pop af
    ccf
    ld c, $ff
    db $10
    rst $38
    inc bc
    ld b, $f5
    and a
    and h
    db $fc
    pop af
    and h
    push af
    and a
    inc bc
    ld b, $f5
    rst $20
    or $d7
    or $d7
    ld b, [hl]
    rlc l
    pop hl
    inc sp
    ld [hl-], a
    call c, $3f12
    nop
    call nc, Call_026_5400
    cp b
    ld e, d
    jr nz, jr_026_6e06

    inc d
    rla
    ld [$4948], a
    ld c, c
    cp b
    ld c, c
    dec hl
    dec hl
    xor c
    nop
    jp hl


    ld e, b
    ld [hl], e
    inc b
    dec hl
    xor c
    nop
    ld a, a
    cp b
    ld l, d
    ld [hl], e
    inc b
    xor c
    nop
    ld e, b
    ld [bc], a
    ld [$7348], a
    inc b
    di
    ld b, $92
    add a
    xor c
    nop
    db $eb
    jr c, jr_026_6e70

    inc b
    ld c, c
    ld c, c
    ld c, c
    ld c, e
    xor c
    nop
    inc sp
    db $eb

jr_026_6e06:
    jr c, jr_026_6e7b

    inc d
    ld c, b
    ld c, b
    xor c
    nop
    ld [$4a48], a
    ld c, d
    ld [hl], b
    ld c, d
    ld c, d
    ld c, d

jr_026_6e15:
    ld c, d
    xor c
    nop
    ld c, d
    adc h
    ld d, c
    inc bc
    ld a, d
    ld bc, $4919
    rst $08
    ld hl, $2742
    ld [$13a3], sp
    ld l, $89
    and b
    or c
    ld l, e
    ld l, c
    jr z, jr_026_6e76

    rst $38
    ld l, e
    ld l, c
    jr z, jr_026_6e6b

    ld e, e
    ld bc, $7c7d
    add hl, hl
    scf
    ld a, l
    ld a, h
    add hl, hl
    scf
    ld l, l
    ld c, c
    inc de
    db $db
    ld [bc], a
    inc d
    inc d
    and b
    or c
    ld l, l
    ld c, c
    or c
    pop af
    and c
    and e
    ld [hl-], a
    ld [hl], $6d
    ld c, c
    or c
    and c
    and c
    ldh [rNR44], a
    cp e
    ld l, l
    ld c, c
    ld e, $b1
    ld b, l
    add c
    ld [$db23], a
    ld [bc], a
    add sp, $53
    rst $38
    jr nz, jr_026_6e98

    push bc
    dec b
    add hl, bc
    ld l, h
    ld a, [c]

jr_026_6e6b:
    rst $00
    ld sp, $f407
    rst $30

jr_026_6e70:
    or $d7
    or $a7
    cp a
    ld [bc], a

jr_026_6e76:
    ld c, c
    ld [hl], a
    rla
    ld a, $00   ; xor a

jr_026_6e7b:
    dec [hl]
    ld a, h
    jp nc, $ae02

    cp d
    push af
    ld l, l
    ld a, b
    scf
    add hl, de
    daa
    add hl, bc
    ld bc, $aaaf
    or $7d
    ld a, b
    rst $00
    ld l, c
    db $fd
    jr nz, jr_026_6e15

    inc [hl]
    ld l, h
    adc l
    rst $30
    add a

jr_026_6e98:
    ld [bc], a
    ld c, c
    add hl, bc
    adc l
    add h
    scf
    sbc d
    add hl, sp
    ld h, e
    ld [hl], h
    rlca
    ld hl, $2607
    and d
    ld h, $99
    ld c, c
    and b
    scf
    and d
    inc c
    pop af
    and d
    sbc c
    ld c, c
    ld d, b
    jr @+$1f

    and b
    ld h, $a2
    cp [hl]
    ld h, $99
    ld c, c
    ld d, b
    ld a, b
    sbc d
    ld l, c
    ld [hl-], a
    inc l
    db $76
    daa
    ld h, $4e
    ret z

    ld b, $26
    ld a, [hl]
    ld l, b
    rst $20
    ld h, e
    sub l
    jr nz, jr_026_6f22

    and b
    ld hl, $4102
    ld c, l
    rla
    ld c, c
    ld c, e
    jp nc, $7f8b

    ld a, $00   ; xor a
    ld a, d
    inc d
    or c
    ld l, c
    xor [hl]
    adc d
    add h
    scf
    adc a
    daa
    db $db
    ld [bc], a
    or d
    or b
    or l
    dec e
    ld de, $dc11
    ld d, a
    and h
    dec b
    sub b
    ld [hl], h
    daa
    call nz, $b61d
    adc a
    daa
    or c
    sub l
    pop af
    ld h, e
    ld d, a
    adc a
    daa
    ei
    adc e
    ld [de], a
    inc [hl]
    scf
    or h
    adc a
    daa
    cp d
    rla
    inc d
    rla
    call c, $b457
    sbc b
    dec b
    db $10
    cp c
    cp e
    rrca
    ld bc, $c0d1
    ei
    and b
    and b
    ld h, $28
    scf
    sub l
    ld [hl], l

jr_026_6f22:
    ld bc, $278f
    ld [hl], $26
    jp c, Jump_026_560a

    ld [bc], a
    sub l
    ld [hl], l
    ld bc, $17af
    and d
    ld h, $95
    scf
    inc bc
    and b
    ld d, l
    add hl, de
    ld h, b
    adc [hl]
    scf
    ld h, $a0
    dec [hl]
    inc bc
    ld e, c
    dec [hl]
    inc de
    ld h, b
    and b
    rrca
    ldh [$f0], a
    inc de
    ld h, b
    ld [hl], l
    ld bc, $5f60
    ld [hl], l
    ld bc, $142c
    inc d
    inc d
    or h
    jp c, $aab4

    ld b, h
    ldh a, [$97]

jr_026_6f5a:
    dec e
    ld bc, $e90f
    db $e3
    jr nz, jr_026_6f5a

    dec [hl]
    ld h, a
    ld h, b
    and b
    ld h, b
    xor $07
    ld [hl], c
    pop bc
    ld [hl], b
    ld de, $56c4
    ld h, b
    jr z, @+$29

    ld h, b
    and b
    ld h, b
    xor $07
    ld a, b
    ld hl, $577e
    ld d, [hl]
    ld [bc], a
    ld a, d
    ld sp, $4902
    db $76
    scf
    db $ed
    nop
    ld [hl], c
    ld de, $3455
    ld d, l

jr_026_6f89:
    ld h, b
    ld [hl], l
    ld bc, $7b60
    inc h
    ld [hl], c
    ld de, $5555
    adc d
    ld h, b
    ld [hl], l
    ld bc, $7b60
    inc h
    ld d, l
    dec e
    dec e
    ld [hl], c
    ld bc, $60a2
    scf
    ld h, a
    dec e
    ld c, e
    ld c, e
    ld a, [hli]
    inc b
    ld h, b
    or a
    ld sp, hl
    ld bc, $43e9
    rst $38
    jr nz, jr_026_6f89

    db $10
    rst $38
    ld a, [c]
    rst $30
    ld d, e
    ld c, b
    ld a, [hli]
    inc b
    ld c, $ff
    db $10
    rst $38
    ld a, [c]
    rst $30
    ld e, a
    ld d, e
    ld c, b
    ld a, [hli]
    inc b
    ld c, $ff
    db $10
    rst JumpTable
    db $10
    cp c
    cp e
    rrca
    ld bc, $208d
    jp nc, $81b3

    ld [hl], d
    adc b
    ld [de], a
    nop
    or e
    ld h, b
    ld hl, $753e
    add hl, sp
    dec l
    ld h, b
    ld a, $00   ; xor a
    ld h, b
    inc e
    rlca
    add hl, sp
    dec l
    ld a, [de]
    rlca
    ld h, b
    xor l
    ld a, $00   ; xor a
    ld h, b
    ld c, b
    ld c, h
    add hl, de
    rla
    ld h, b
    ld a, $00   ; xor a
    ld h, b
    ld b, a
    ld e, h
    or e
    ld a, e
    rlca
    xor l
    dec c
    or e
    ld h, b
    ld c, b
    ld c, h
    add hl, de
    rla
    ld h, b
    ld a, $00   ; xor a
    xor [hl]
    ld h, b
    inc e
    rlca
    add hl, sp
    dec l
    ld a, [de]
    rlca
    ld h, b
    ld a, $00   ; xor a
    ld h, b
    ld hl, $753e
    add hl, sp
    dec l
    ld h, b
    ld a, $00   ; xor a
    ld h, b
    and l
    ld h, $84
    ld d, d
    ld c, a
    inc bc
    ld a, d
    ld bc, $a9c3
    sbc a
    nop
    inc [hl]
    nop
    inc [hl]
    nop

jr_026_7029:
    inc b
    rra
    ld [bc], a
    ld a, [bc]
    inc b
    or b
    adc c
    rst $00
    cp e
    rst $38
    sub [hl]
    ld e, c
    call $ccca
    jp c, $abdc

    add hl, sp
    xor h

Call_026_703d:
    or [hl]
    cp d
    or h
    jp c, Jump_026_5996

    pop af
    ld c, h
    ld c, h
    adc d
    or d
    adc d
    ld d, $79
    nop
    inc [hl]
    nop
    inc [hl]
    nop
    inc b
    ld bc, $010f
    rst $30
    jr nz, jr_026_7029

    inc d
    rla
    or b
    ld l, c
    inc c
    xor $87
    ld l, c
    ld c, h
    or c
    ld l, c
    ld l, c
    ld c, h
    rst $38
    and b
    inc a
    inc de
    ld e, h
    xor $27

jr_026_706b:
    add h
    scf
    ld l, c
    ld c, h
    or d
    ld l, c
    ld l, c
    ld c, h
    or d
    ld l, c
    ld a, a
    ld l, c
    ld c, h
    and c
    ld h, a
    add hl, hl
    ld b, a
    inc d
    inc b
    ld d, e
    ld a, b
    ld a, l
    ld a, b

jr_026_7082:
    pop hl
    inc hl
    ld a, d
    ld bc, $02dd
    ld l, $b8
    ld b, $5c
    add hl, bc
    ld l, h
    jr z, @+$29

    ld de, $0256
    ld c, c
    ld c, c
    ld [c], a
    ld c, c
    xor [hl]
    xor d
    ld c, d
    ld c, d
    ld c, d
    ld c, $ff
    db $10
    rst $38
    ld a, [c]
    rst $30
    rra
    db $f4
    rst $30
    or $d7
    or $d7
    ld b, [hl]
    set 4, l
    add e
    rst $38
    jr nz, jr_026_7082

    db $10
    rst $38
    ld a, [c]
    rst $30
    db $f4
    rst $30
    or $87
    sub b
    ld e, h
    ld sp, hl
    sub a
    or l
    adc c
    sub e
    nop
    ld l, l
    reti


    ld d, a
    ld c, c
    ld c, c
    ld d, c
    ld c, b
    ld c, c
    ld c, c
    ld a, h
    inc h
    rra
    ld a, c
    inc d
    ld a, [hli]
    inc h
    ld a, c
    inc d
    ld a, [hl]
    ld l, b
    rst $20
    ld h, e
    rst $38
    jr nz, jr_026_706b

    xor e
    inc bc
    rrca
    rst $38
    pop af
    rst $30
    di
    rst $30
    push af
    rst $20
    or $d7
    or $c7
    cp l
    cp h
    dec b
    and b
    cp h
    dec b
    ld l, h
    adc b
    rst $30
    rst $00
    dec [hl]
    ld b, a

jr_026_70f3:
    ld b, d

jr_026_70f4:
    ld c, $d9
    ld [bc], a
    cp e
    rrca
    ld sp, $20ff
    ret c

    db $10
    rst $38
    ld a, [c]
    rst $30
    daa
    scf
    sbc d
    add hl, sp
    db $10
    rst $38
    ld a, [c]
    rst $30
    add h
    scf
    ccf
    sbc d
    add hl, sp
    db $10
    rst $38
    ld a, [c]
    rst $00
    pop af
    ld l, a
    ld a, d
    xor b
    rst $00
    ld l, c
    rst $38
    jr nz, jr_026_70f3

    db $10
    rst $38
    ld a, [c]
    rst $30
    db $f4
    rst $30
    or $d7
    or [hl]
    cp d
    db $f4
    rst $30
    or $87
    adc b
    ld d, $16
    ld d, $f4
    and a
    ld c, e
    ld c, e
    ld d, $44
    db $eb
    ld bc, $89c5
    ccf
    nop
    inc [hl]
    nop
    inc d
    sbc d
    dec sp
    jr nz, jr_026_71b2

    inc d
    rla
    ld a, [hl]
    daa
    ld h, $1d
    sbc b
    ld h, $1d
    ld h, $88
    sbc l
    dec [hl]
    ld b, a
    or h
    ld d, b
    adc l
    xor b
    jr nz, jr_026_70f4

    or c
    and d
    ld h, $b4
    rra
    sbc e
    or c
    and d
    and e
    db $fd
    db $10
    db $f4
    add a
    and d
    and d
    or [hl]
    xor a
    sbc d
    or [hl]

Jump_026_7167:
    cp h
    scf
    ret nz

    dec e
    ld h, $1d
    ld h, $1d
    ld h, $88
    ld e, l
    db $10
    ld a, c
    dec e
    inc d
    inc d
    or c
    rst $38
    ld b, e
    nop
    inc d
    ld_long $ff34, a
    nop
    inc d
    ld b, h
    sub a
    jr nz, jr_026_7197

    inc d
    rla
    ld hl, sp+$67
    sub b
    ld e, h
    reti


    ld d, a
    or d
    inc hl
    ret nz

    dec e
    ld h, $a0
    ld h, $a0
    ld h, $7c

jr_026_7197:
    inc h
    ld h, d
    inc hl
    inc bc
    add [hl]
    adc d
    ld h, d
    inc hl
    dec e
    ld h, $a0
    ld h, $a0
    ld h, $ff
    ld c, h
    dec e
    ld h, b
    inc hl
    add l
    sbc d
    sub d
    db $10
    dec [hl]
    sbc h
    sub b
    ld [de], a

jr_026_71b2:
    add l
    sbc d
    pop de
    xor e
    rla
    cp [hl]
    dec e
    ld de, $5549
    dec hl
    cp e
    rrca
    ld bc, $20e7
    jp nc, $ff10

    ldh a, [$97]
    or [hl]
    nop
    inc d
    rla
    ld b, h
    sub a
    rst AddAToHL
    inc de
    rst $38
    inc d
    rla
    jr z, jr_026_722b

    or b
    dec e
    db $f4
    rst $30
    ld d, $fb
    ld l, b
    ret z

    scf
    ld h, a
    or b
    dec e
    rlca
    ld b, h
    ei
    ld d, l
    inc sp
    call c, $d112
    jr nz, jr_026_722c

    or a
    cp b
    cp h
    xor d
    inc bc
    cp h
    cp [hl]
    ld h, a
    ld h, e
    ld b, a
    ld e, l
    xor [hl]
    ld a, d
    ld d, c
    ld l, c
    cp b
    ld h, e
    ld b, a
    ld l, [hl]
    ld l, b
    sub h
    ld d, b
    inc bc
    ld d, b
    add l
    adc h
    adc b
    sbc c
    ld de, $a000
    sub [hl]
    sub [hl]
    or h
    rst $28
    inc b
    ld a, [hl]
    ld b, d
    di
    rst $30
    push af
    rst $20
    or $d7
    sub [hl]
    ld c, d
    ld a, l
    ld a, b
    rst $00
    ld l, c
    rst $38
    ldh [$3a], a
    push bc
    dec [hl]
    ld l, h
    adc l
    inc [hl]
    ld c, h
    xor [hl]
    ld a, d
    adc b
    sbc l
    and c
    ld e, h

jr_026_722b:
    ld a, h

jr_026_722c:
    adc l
    rst $38
    ld [hl], a
    cp l
    add l
    sbc d
    and c
    ld l, h
    sbc d
    add hl, sp
    ret nc

    ld l, e
    add hl, bc
    adc l
    and c
    ld e, h
    ld a, h
    adc l
    dec d
    add l
    ld a, [hl-]
    ld b, e
    ld c, $d9

jr_026_7244:
    cp e
    rrca
    ld sp, $208d
    ld b, d
    ld b, b
    ld c, b
    ld h, a
    ld [hl], c
    ld de, $5656
    and h
    ld a, [hli]
    ld de, $2c05
    ld de, $03b3
    ld d, $56
    ld d, [hl]
    and h
    ld d, [hl]
    ld d, [hl]
    rst $00
    inc bc
    ld d, $3e
    nop
    ld [hl], c
    ld de, $5656
    and h
    ld a, [hli]
    ld de, $112c
    ld a, d
    or e
    inc bc
    ld d, $55
    add hl, hl
    ld de, $1603
    ld a, $00   ; xor a
    ld [hl], c
    ld de, $1355
    ld d, a
    ld bc, $32c7
    nop
    or e
    inc bc
    ld d, $55
    ld d, h
    ld d, h
    inc e
    ld d, h
    ld d, a
    inc bc
    ld d, $3e
    nop
    ld [hl], c
    ld de, $5454
    and h
    inc h
    ld d, h
    ld d, h
    ret z

    ld [hli], a
    nop
    or e
    inc bc
    ld d, $54
    ld d, h
    jr c, jr_026_7244

    ld d, h
    ld d, h
    inc bc
    ld d, $3e
    nop
    ld [hl], c
    ld de, $5454
    ld e, b
    and h
    ld d, h
    ld d, h
    ret z

    ld [hli], a
    rst JumpTable
    ld d, e
    ld a, d
    add sp, $53
    dec l
    jr nz, @+$44

    ld [hl], h
    ld [$167c], sp
    inc b
    ld de, $0157
    ld de, $6b1d
    ld [hl], h
    nop
    sbc [hl]
    ld b, a
    db $10
    ld d, a
    ld bc, $9a10
    add hl, sp
    ret


    inc de
    dec de
    rra
    or b
    ld l, c
    cp $47
    sub h
    inc l
    sub b
    ld [de], a
    cp $47
    dec e
    and b
    dec de
    ld a, [hli]
    ld a, [de]
    add hl, bc
    ld l, l
    ld b, e
    ld d, [hl]
    ld [bc], a
    add hl, de
    rlca
    xor l
    and b
    dec e
    xor l
    ld b, [hl]
    inc c
    dec e
    add hl, sp
    dec e
    cp $47
    dec e
    ld b, [hl]
    inc c
    dec e
    add hl, sp
    dec e
    add l
    cp $47
    dec e
    ld [hl], h
    nop
    dec e
    and d
    ld c, e
    ld c, e
    ld a, l
    rlca
    dec b
    db $10
    cp c
    cp e
    rrca
    ld sp, $a0ff
    pop af
    ld [hli], a
    or [hl]
    ld b, b
    call nc, $6441
    ld c, b
    inc [hl]
    xor a
    nop
    ld [hl], b
    ld [de], a
    db $e4
    dec d
    rst $00
    ld a, h
    ld [bc], a
    xor l
    ld hl, $1270
    ld a, [$faf1]
    ld a, e
    ld [de], a
    xor l
    ld hl, $70ff
    ld [de], a
    db $e4
    dec d
    ld a, h
    ld [bc], a
    xor l
    ld hl, $7270
    dec sp
    ld [bc], a
    cp a
    ld hl, $4271
    rst $38
    inc a
    inc b
    xor [hl]
    ld b, c
    ld [hl], c
    ld [hli], a
    inc a
    inc b
    xor l
    ld sp, $3561
    inc e
    dec b
    xor h
    ld de, $22bf
    ld d, [hl]
    jr z, jr_026_73aa

    or d
    nop
    or a
    ld de, $0141
    ld d, a
    ld de, $dfef
    pop hl
    sbc $b7
    db $f4
    ld hl, $21e6
    jr nz, jr_026_7375

    rra
    ld [de], a
    cp c
    ld e, b
    ld bc, $1220
    xor a
    ld [c], a
    ld [de], a
    ld l, a
    ld [de], a
    and h
    inc hl
    ld [hl], c
    ld [hl-], a
    xor e
    ld l, a

jr_026_7375:
    add d
    xor e
    ld [hl], c
    ld [de], a
    ld bc, $326f
    xor e
    xor e
    db $fd
    db $fd
    xor e
    db $fd
    db $fd
    db $e3
    db $db
    ld [bc], a
    rst $08
    ld [bc], a
    db $fd
    db $fd
    xor e
    ld [hl], c
    ld [de], a
    db $db
    ld [de], a
    xor l
    ld de, $ba3c
    or l
    ld [hl], c
    ld [de], a
    dec de
    dec d
    xor e
    ld b, c
    ld h, d
    or l
    ccf
    inc h
    add d
    xor e
    ld hl, $d1f0
    ld d, b
    pop de
    ld hl, $d972
    inc bc
    or [hl]

jr_026_73aa:
    or b
    rlca
    ld e, a
    inc [hl]
    ld [hl], a
    ld d, d
    xor l
    ld bc, $abab
    db $fd
    db $fd
    xor e
    dec c
    inc sp
    nop
    xor e
    ld a, e
    ld [de], a
    xor l
    ld bc, $fdfd
    xor e
    db $fd
    ld [hl], b
    db $fd
    xor e
    db $fd
    xor e
    ld a, d
    ld [hli], a
    xor l
    ld bc, $0412
    db $fd
    sbc h
    db $fd
    xor e
    ld [hl], c
    ld [hli], a
    inc a
    inc b
    xor [hl]
    ld de, $b5ba
    ld [hl], c
    ld [hli], a
    ld a, $ab
    inc a
    inc b
    xor l
    ld b, c
    add sp, $43
    xor e
    ld d, c
    and e
    and c
    rst $20
    ld c, c
    dec [hl]
    ld a, [hli]
    ld h, $ab
    ld sp, $44b3
    ld c, e
    ld de, $71a7
    ld [hl], b
    nop
    sbc $ef
    ret


    ld sp, $31ab
    jp nz, Jump_026_5501

    ld bc, $3b20
    ld [de], a
    xor h
    ld sp, $23ff
    dec b
    ld d, [hl]
    ld bc, $21ca
    xor l
    ld hl, $b1c2
    or b
    pop af
    ld d, d
    push de
    add sp, $34
    add hl, sp
    ld [de], a
    inc b
    rst $28
    ld b, l
    ld a, l
    nop
    ldh [$d4], a
    and b
    pop de
    ld h, e
    ld b, b
    push af
    and b
    ld d, c
    or e
    ld a, [$ddfa]
    inc bc
    ld b, c
    ld [hl], l
    or a
    or e
    and $11
    sbc a
    ld [hl], c
    or e
    dec d
    and $11
    sbc a
    ld [hl], c
    or e
    add hl, hl
    dec b
    ld l, h
    db $fd
    db $fd
    sbc a
    ld h, c
    or e
    nop
    ld a, [$0033]
    sbc a
    ld h, c
    or e
    ld [de], a
    and l
    ld d, l
    nop
    db $fd
    db $fd
    sbc a
    ld h, c
    or e
    and l
    ld a, [$e65f]
    ld de, $619f
    push de
    nop
    db $eb
    ld hl, $b4e0
    or d
    sbc a
    pop hl
    di
    daa

jr_026_7465:
    ld d, d
    xor b
    ld d, c
    and l
    and c
    call nc, $2c21
    inc bc
    ld a, [hli]
    ld [hl], $d0
    pop de
    di
    ld h, l
    inc [hl]
    call nc, $ef11
    rst $28
    ld a, [$5f01]
    db $e4
    ld [hl], c
    ld h, d
    and $11
    ld c, a
    ld e, l
    ld d, h
    ld h, b
    ld d, h
    ld e, l
    inc b
    and $11
    dec d
    rst $28
    add l
    jr nz, @+$46

    ld h, e
    ld l, h
    inc d
    and $11
    dec d
    rst $28
    ld b, h
    add [hl]
    db $10
    ld e, c
    nop
    and a
    rlca
    cp a
    cp c
    dec a
    inc [hl]
    and e
    and c
    rst $38
    ld b, h
    add l
    ld c, e
    ld h, l
    or d
    nop
    rst $30
    ld bc, $2514
    rst $08
    db $e3
    or b
    ret nc

    jr nz, @-$29

    ld bc, $2520
    cp b
    or a
    inc e
    rst $28
    db $ed
    and c
    inc e
    jr jr_026_7465

    ld_long a, $fffa
    pop hl
    nop
    ld [de], a
    db $ed
    or e
    and l
    ret nc

    rst $28
    inc e
    rst $28
    and l
    ld a, [de]
    dec b
    or d
    rst $08
    ldh [$31], a
    inc [hl]

jr_026_74d5:
    ld a, [de]
    rst $28
    ld d, b
    inc bc
    cp e
    add hl, de
    dec d
    cpl
    db $e4
    ld a, a
    inc hl
    sub d
    xor h
    ld de, $d230
    jr c, jr_026_74eb

    add sp, $21
    jr jr_026_74f0

jr_026_74eb:
    ld e, e
    ld hl, $32ef
    and l

jr_026_74f0:
    jr nz, jr_026_7554

    cp c
    and l
    call $e003
    jp nc, $a5fa

    ld h, c
    ld h, b
    ld b, h
    and l
    ld a, [$b9b6]
    ld e, l
    dec b
    jr nc, jr_026_74d5

    or l
    ld b, [hl]
    and c
    ld [hl], c
    ld [hli], a
    rst $20
    ld [bc], a
    rst $28
    or h
    cp e
    ld e, l
    dec b
    cp d
    adc [hl]
    or l
    inc sp
    nop
    db $db
    ld [bc], a
    db $eb
    inc de
    rst $28
    or h
    cp e
    ld c, a
    db $e4
    ld bc, $d510
    push de
    jr nz, @+$04

    db $ed
    ld hl, $ed02
    ld hl, $4612
    ld c, l
    rla
    sub c
    pop bc
    rst JumpTable
    add b
    call nc, $e0e0
    sbc c
    ld bc, $2a96
    sbc c
    ld b, c
    or e
    adc c
    inc b
    jr z, jr_026_7567

    inc bc
    adc c
    ld b, h
    db $10
    sub $b3
    ld l, b
    ld a, e
    and b
    ld a, d
    xor h
    ld [$a07b], sp
    ld a, d
    sbc c
    ld b, c
    or e
    ld l, c
    ld a, l

jr_026_7554:
    ld a, b
    ldh [$78], a
    ld a, c
    ld a, b
    ld a, b
    ld a, h
    adc c
    ld b, h
    or b
    sbc d
    db $ec
    db $10
    ld hl, $8910
    ld [c], a
    db $e3
    db $e4

jr_026_7567:
    cp e
    rrca
    ld de, $40fd
    sub l
    ld b, a
    cp l
    ld hl, $51a0
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    rst $38
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ccf
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    and b
    ld [hl], c
    ld a, [hl-]
    add hl, sp
    ldh [$84], a
    ld [c], a
    db $e3
    inc b
    db $e4
    cp e
    rrca
    ld de, $60df
    pop de
    ld [hl], b
    push de
    ld [hl], b
    dec b
    ld [hl], h
    dec [hl]
    ld a, b
    dec h
    pop bc
    ld l, a
    dec b
    ld [hl], h
    dec [hl]
    sub l
    db $76
    dec [hl]
    pop bc
    ld a, a
    ldh [$c3], a
    add d
    nop
    ld hl, $33a2
    nop
    call nc, $21a2
    adc d
    nop
    pop bc
    ld a, a
    ldh [$c3], a
    ld [hl], e
    ld b, l
    db $76
    dec [hl]
    ld l, [hl]
    pop bc
    ld l, a
    dec d
    ld [hl], h
    dec [hl]
    ld a, b
    dec h
    pop bc
    ld l, a
    push hl
    ld h, b
    ret nc

    sbc a
    and b
    pop af
    and d
    pop hl
    inc hl
    and [hl]
    or b
    jr nz, @-$1a

    dec b
    ld a, [$fafa]
    ld [hl], c
    ld h, d
    xor d
    db $e4
    dec b
    ld a, [$aafa]
    dec sp
    ld [hli], a
    nop
    ld [de], a
    xor d
    ld [hl], c
    db $e4
    dec b
    ld a, [$aafa]
    dec sp
    ld [hli], a
    nop
    ld [de], a
    add c
    inc sp
    xor d
    rst $30
    dec sp
    ld [hli], a
    ld d, c
    dec h
    and $21
    jr nz, jr_026_7642

    ld [hli], a
    ld d, c
    dec [hl]
    and $01
    db $ec
    inc c
    dec sp
    xor h
    ld [hl], c
    and $01
    jr nz, jr_026_7651

    inc b
    xor l
    ld sp, $1561
    and $e1
    inc bc
    inc e
    dec b
    xor h
    ld de, $a0ef
    pop af
    ld [hli], a
    or [hl]
    or b
    jr nc, @-$0c

    nop
    ld b, h
    ld a, [$b351]
    nop
    db $e4
    dec b
    ret c

    ld a, [$effa]
    ld a, [$af11]
    nop
    or e
    rst $20
    dec d
    db $e4
    dec b
    ld l, h
    ld a, [$3bfd]

jr_026_7642:
    ld [bc], a
    xor a
    nop
    or e
    rst $20
    dec d
    db $e4
    dec b
    ld a, [$fdbe]
    dec sp
    ld [bc], a
    xor a
    nop

jr_026_7651:
    ld [hl], b
    ld [bc], a
    db $e4
    dec b
    ld d, l
    nop
    db $fd
    dec sp
    ld [bc], a
    rst $38
    cp a
    ld hl, $4271
    inc a
    inc b
    xor [hl]
    ld b, c
    ld [hl], c
    ld [hli], a
    inc a
    inc b
    xor l
    ld sp, $24e9
    rlca
    call c, $ab02
    ld d, c
    and e
    and c
    cp a
    ld h, b
    pop de
    ld [hl], b
    ld b, l
    adc d
    db $10
    ld a, e
    dec h
    ld [hl], b
    dec b
    add c
    db $10
    ld hl, $108a
    ld e, l
    ld a, h
    dec d
    jp $3573


    adc d
    nop
    ld a, b
    dec d
    pop bc
    ld a, a
    ldh [$c3], a
    ld c, c
    add d
    nop
    ld hl, $33a2
    nop
    and d
    ld hl, $008a
    pop bc
    db $ed
    ld a, a
    ldh [$c3], a
    ld [hl], e
    ld b, l
    db $76

jr_026_76a3:
    dec [hl]
    pop bc
    ld l, a
    dec d
    ld [hl], h
    dec [hl]
    ld a, b
    dec h
    ld b, $c1
    ld l, a
    push hl
    ld h, b
    ret nc

    rst JumpTable
    and b
    pop af
    and d
    pop hl
    jr nz, jr_026_770a

    ei
    ld h, c
    ld e, b
    ld bc, $f5a2
    ld bc, $223b
    push hl
    jr nz, jr_026_76e9

    db $ed
    add e
    nop
    and c
    rst $28
    dec sp
    ld [hli], a
    jr nz, jr_026_76f2

    add d
    db $10
    xor $ef
    ld a, [hl-]
    ld [hl-], a
    nop
    ld [de], a
    ld b, [hl]
    inc c
    ld h, d
    ld b, [hl]
    inc c
    dec sp
    ld [hli], a
    nop

jr_026_76dd:
    ld [hli], a
    ret nz

    rst $28
    and c
    and d
    rst $28
    db $ed
    rst $28
    dec sp
    ld [hli], a
    jr nz, jr_026_770e

jr_026_76e9:
    sbc $ed
    adc c

jr_026_76ec:
    db $10
    ld e, h
    inc b
    db $fd
    ld b, c
    ld e, b

jr_026_76f2:
    ld bc, $cba2
    jr jr_026_76a3

    ld d, c
    ld h, b
    or d
    or d

jr_026_76fb:
    ldh [$e6], a
    pop hl
    call c, $ac02
    ld de, $20ff
    jp nc, $2774

    ld [bc], a
    ld c, c
    db $fc

jr_026_770a:
    jr z, jr_026_76dd

    inc d
    ld h, l

jr_026_770e:
    ld b, h
    call c, $d014
    call nc, $d0ff
    ld h, h
    rst AddAToHL
    inc d
    db $fd
    jr jr_026_76ec

    inc h
    db $d3
    inc h
    db $db
    inc h
    ret nc

    inc d
    push de
    inc d
    rst $38
    sub $24
    db $fd
    jr jr_026_76fb

    inc b
    push de
    inc d
    ret c

    ld d, h
    ret nc

    inc d
    rst AddAToHL
    inc [hl]
    jp c, $8f34

    ld [hl], h
    daa
    pop de
    inc d
    ld sp, hl
    ld c, b
    ldh [$33], a

jr_026_773e:
    db $ec
    db $ed
    xor $e9
    ld b, e
    rst $28
    and b

jr_026_7745:
    pop af
    ld [hli], a
    or [hl]
    or b
    jr nz, jr_026_773e

    ld de, $faef
    ld d, c
    ldh [rNR11], a
    and $01
    inc a
    jr nz, jr_026_7745

    ld a, [$af11]
    nop
    ret nz

    ld [$2156], sp
    and l
    rst $28
    ld l, e
    dec sp
    ld [bc], a
    xor a
    nop
    or e
    add sp, $11

jr_026_7768:
    pop af
    ld e, d
    dec h
    xor l
    ld hl, $deb3
    jr nz, jr_026_7768

    ld bc, $0158
    adc h
    dec bc
    xor l
    ld hl, $e6b3
    ld bc, $2513
    rst $28
    ld e, h
    inc b
    xor [hl]
    ld de, $01c2
    rst $20
    ld hl, $3c20
    inc b
    xor [hl]
    ld b, c
    rst $20
    ld hl, $3c67
    inc b
    xor l
    ld sp, $1561
    and $e1
    inc e
    dec b
    xor h
    ld de, $2037
    sub $50
    dec h
    ld d, e
    ld de, $3b44
    ld [de], a
    xor [hl]
    ld hl, $b3a7
    and a
    db $f4
    ld bc, $145b
    xor h
    ld b, c
    and a
    or e
    ld [de], a
    dec d
    rst $28
    dec sp
    ld [de], a
    jp hl


    xor [hl]
    ld hl, $b3a7
    ld d, h
    ld de, $3bef
    ld [de], a
    xor [hl]
    ld hl, $0522
    db $fd
    ld d, h
    ld bc, $3bef
    ld [de], a
    xor [hl]
    ld hl, $1522
    ld d, [hl]
    ld bc, $123b
    xor [hl]
    ld hl, $22ef
    dec d
    ld d, [hl]
    ld bc, $123b
    xor [hl]
    ld hl, $60a7
    dec sp
    dec sp
    ld [de], a
    xor [hl]
    ld hl, $229f
    dec b
    ld d, l
    ld de, $123b
    xor [hl]
    ld hl, $1561
    and $e1
    inc e
    dec b
    ld bc, $11ac

jr_026_77f6:
    rst $38
    ld b, l
    ld h, l
    ld a, [hli]
    ld h, $ae
    ld hl, $0201
    ld [hl-], a
    ld [bc], a
    dec sp
    ld [de], a
    xor l
    ld sp, $0201
    jr c, jr_026_77f6

    ld b, h
    rst $28
    dec sp
    ld [de], a
    xor l

jr_026_780e:
    ld sp, $00b2
    dec e
    ld c, l
    ld c, $ef
    ld a, [$ae21]
    ld hl, $0522
    ld c, l
    dec de
    jr jr_026_780e

    inc bc
    dec sp
    ld [de], a
    xor [hl]
    ld hl, $b3a7
    add hl, bc
    ld c, l
    ld c, l
    and l
    db $76
    add hl, bc
    dec sp
    ld [de], a
    xor [hl]
    ld hl, $b0a7
    inc sp
    dec sp
    ld [de], a
    xor [hl]
    ld hl, $a7a7
    ld h, b
    inc sp
    dec sp
    ld [de], a
    xor [hl]
    ld hl, $b3a7
    sub d
    db $10
    or $3b
    ld [de], a
    ld [hl], e
    xor [hl]
    ld hl, $11c1
    rst $28
    and l
    inc a
    inc b
    xor h
    ld b, c
    pop de
    nop
    ldh [rSC], a
    and $66
    ld b, l
    nop
    rst $38
    ld b, l
    ld h, l
    ld a, [hli]

jr_026_785d:
    ld h, $ae
    ld hl, $0201
    ld d, h
    ld bc, $123b
    xor l
    ld sp, $10b2
    cp a
    ld e, c
    ld bc, $362a
    ld d, b
    dec h
    and $21
    dec sp
    ld [de], a
    ld a, $44
    ld a, [$1469]
    ei
    ld a, [$e471]
    dec b
    rst $28
    db $e4
    dec b
    dec sp
    ld [hli], a
    nop
    ld [de], a
    db $e4
    dec b
    db $e4
    dec b
    rst $38
    ld l, h
    inc b
    xor l
    ld d, c
    push hl
    dec h
    inc a
    inc b
    xor l
    ld sp, $00d2
    db $e4
    dec b
    inc a
    inc b
    ld a, e
    xor h
    ld b, c
    pop de
    db $10
    ld a, [$043c]
    xor e
    ld d, c
    rst $20
    inc h
    ld h, a
    ld b, l
    nop
    ccf
    and b
    pop af
    and d
    pop hl
    ld c, b
    dec h
    ld a, [hli]
    ld h, $ad
    ld sp, $0201
    ld a, [$f7fd]
    dec sp
    ld [de], a
    xor h
    ld b, c
    ld bc, $4402
    ld l, h
    inc b
    xor d
    ld h, c
    add sp, $24
    ld h, a
    ld b, l
    rra
    sbc a
    pop af
    and c
    pop af
    and e
    pop de
    and e
    pop de
    and e
    and c
    sbc a
    and b
    pop af
    ld [hli], a
    or [hl]
    or b
    jr nz, jr_026_785d

    inc hl
    ld a, [$ef71]
    xor d
    db $e4

jr_026_78e2:
    dec b
    inc l
    xor d
    rst $28
    dec sp
    ld [hli], a
    jr nz, jr_026_790f

    xor d
    db $e4
    dec b
    xor d
    rst $28
    rst $30
    dec sp
    ld [hli], a
    jr nz, jr_026_7919

    add c
    inc hl
    rst $28
    dec sp
    ld [hli], a
    ret nc

    jr nz, jr_026_78e2

    ld hl, $043c
    ld [hl], e
    xor l
    ld sp, $11c1
    rst $28
    rst $28

jr_026_7906:
    inc a
    inc b
    xor h
    ld b, c
    ld bc, $0902
    inc e
    rst $28

jr_026_790f:
    add hl, bc
    dec sp
    ld [de], a
    xor l
    ld sp, $0201
    add hl, bc
    rst $28
    add hl, bc

jr_026_7919:
    daa
    dec sp
    ld [de], a
    xor l
    ld sp, $00d1
    ldh [$e6], a
    ld h, [hl]
    ld b, l
    nop
    rst $38
    and b
    pop af
    and d
    pop hl
    and e
    pop de
    and e
    pop de
    and e
    pop de
    and e
    and c
    jr nz, jr_026_7906

    ldh a, [$e0]
    jp nc, $f2a5

    nop
    ccf
    rst $28
    ld l, d
    ld [bc], a
    or $56
    inc b
    cp [hl]
    jr c, jr_026_79b8

    rst $28
    and c
    ld l, d
    ld [bc], a
    db $f4
    ld d, [hl]
    inc b
    db $ed
    ld [bc], a
    db $10
    cp c
    cp e

jr_026_7950:
    ld bc, $010f
    rra
    and b
    pop af
    and d
    pop hl
    jr nz, jr_026_79ac

    ei
    ld h, c
    ld d, $15
    rst $28
    jr nz, jr_026_7950

    rst $20

jr_026_7962:
    dec sp
    ld [hli], a
    ld d, c
    dec h
    and $11
    and c
    rst $28
    dec sp
    ld [hli], a
    jr nz, jr_026_79a3

    and $01
    sbc h

jr_026_7971:
    jr nz, jr_026_7962

    dec sp
    ld [hli], a
    ld d, c
    dec h
    ld a, [c]
    db $10
    rst $28
    and c
    dec sp
    ld [hli], a
    ld h, c
    nop
    ld [hli], a
    jr nz, jr_026_7971

    rst $28
    jr nz, jr_026_79e1

    dec b
    db $fc
    ld d, c
    jr nz, @-$21

    ld a, [c]
    db $10
    jr nz, @+$5e

    inc b
    db $fd
    ld b, c
    ld [de], a
    dec [hl]
    ld b, h
    dec sp
    ld [hli], a
    rst $20
    ld b, h
    inc bc
    ld [$ac23], a
    ld de, $a01f
    pop af
    and d
    pop hl
    and e

jr_026_79a3:
    pop bc
    ld b, h
    add a
    xor l
    ld hl, $65b3
    ld h, d
    ld [hl-], a

jr_026_79ac:
    ld h, c
    di
    ld de, $6462
    dec sp
    ld [bc], a
    xor a
    nop
    or e

jr_026_79b6:
    ld h, h
    db $db

jr_026_79b8:
    or a
    ld bc, $1151
    ld h, c
    dec sp
    ld [bc], a
    xor a
    nop
    or e
    ld e, d
    dec d
    ld e, b
    ld b, h
    push hl
    xor [hl]
    ld de, $f7b3
    ld bc, $61ef
    and $11
    dec sp
    ld [bc], a
    xor a
    nop
    jp nc, $e6b3

    ld bc, $6465
    ld a, [c]
    nop
    and c
    dec sp
    ld [bc], a
    xor a
    nop

jr_026_79e1:
    ret nz

    or e
    and l
    rst $28
    and c
    ld h, c
    ld h, d
    or [hl]
    ld de, $023b
    sub c
    cp a
    ld de, $72e0
    pop hl
    ld d, c
    inc bc
    ldh [$e6], a
    ld h, [hl]
    dec d
    nop
    nop
    rst $38
    and b
    pop af
    and d
    pop hl
    and e
    pop de
    jr nz, jr_026_7a55

    ei
    ld h, c
    db $e4
    dec b
    db $e4
    dec b
    ld l, h
    inc b
    rst $38
    db $fd
    ld b, c
    db $e4
    dec b
    ld e, b
    nop
    ld l, h
    inc b
    db $fd
    ld b, c
    db $e4
    dec b
    db $e4
    dec b
    ld l, h
    inc b
    dec de
    db $fd
    ld b, c
    add c
    inc sp
    xor d
    dec sp
    ld [hli], a
    nop
    ld [de], a
    adc e
    add hl, bc
    adc e
    jr nc, jr_026_79b6

    adc e
    add hl, bc
    adc e
    dec sp
    ld [hli], a
    nop
    ld [de], a
    adc e
    adc e
    ld h, b
    adc e
    adc e
    adc e
    adc e
    adc e
    dec sp
    ld [hli], a
    rst $20
    inc [hl]
    ldh [$0c], a
    and $e1
    call c, $ac02
    ld de, $a0ff
    pop af
    and d
    pop hl
    and e
    pop de
    jr nz, jr_026_7aa1

    ei
    ld h, c
    ld a, d
    dec d
    ld [hl], d
    dec b

jr_026_7a55:
    dec sp
    ld [hli], a
    ei
    nop
    ld [de], a
    ld a, d
    dec b
    pop af
    ld [hl], d
    dec b
    dec sp
    ld [hli], a
    nop
    ld [de], a
    ld a, d
    dec d
    ld [hl], d
    dec b
    scf
    dec sp
    ld [hli], a
    nop
    ld [de], a
    add c

jr_026_7a6d:
    inc sp
    xor d
    dec sp
    ld [hli], a
    nop
    ld [de], a
    adc e
    adc e
    ld h, b
    adc e
    adc e
    adc e
    adc e
    adc e
    dec sp
    ld [hli], a
    nop
    ld [de], a
    adc e
    ret nz

    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    dec sp
    ld [hli], a
    rst $20
    inc [hl]
    jr jr_026_7a6d

    and $e1
    call c, $ac02
    ld de, $afff
    rst $20
    xor a
    rst $20
    xor a
    rst $20
    xor a
    rst $20
    xor a
    rst $20
    xor a
    rst $20

jr_026_7aa0:
    xor a

Jump_026_7aa1:
jr_026_7aa1:
    rst $20
    xor a
    rst $20
    rlca
    xor a
    rst $20
    xor a
    rst $20
    xor a
    rst $20
    ld a, a
    ldh [$d7], a
    jr nz, jr_026_7aa0

    ld [hl-], a
    ret nz

    ld [hl], c
    call $e030
    ld sp, $31d0
    nop
    db $10
    ret nz

    and d
    and d
    and d
    and d
    and d
    and d
    dec sp

jr_026_7ac3:
    jr nc, @+$33

    nop
    nop
    db $10
    db $10
    jr nz, jr_026_7aeb

    ld hl, $a220
    ld b, h
    rrca
    inc a
    jr nz, jr_026_7b44

    ret nz

    ldh [$d7], a

jr_026_7ad6:
    ldh [$d7], a
    rst $38
    ldh [$d7], a
    ldh [$d7], a
    ld h, b
    sbc $60
    call nc, $db00
    nop
    db $db
    jr nc, jr_026_7ac3

    ld h, [hl]
    dec l
    rst $20
    ret c

jr_026_7aeb:
    daa
    add hl, bc
    ld b, $fd
    ld c, d
    jr nz, jr_026_7b12

jr_026_7af2:
    ld e, d
    nop
    ld [$2d16], sp
    jr nc, @-$16

    cp d
    or l
    jr nz, jr_026_7b57

    nop
    jr nz, jr_026_7b1c

    ld bc, $4d5d
    ld b, b
    ccf
    ld [bc], a
    cp e
    db $eb
    daa
    rst $38
    ldh [$d7], a
    ld h, b
    sbc $60
    call nc, $db00

jr_026_7b12:
    nop
    db $db
    jr nc, jr_026_7af2

    ld h, [hl]
    dec l
    ret c

    daa
    ld [hl], e
    add hl, bc

jr_026_7b1c:
    ld b, $fd
    ld c, d
    jr nz, @+$22

    ld e, d
    nop
    ld [$2d16], sp
    jr nc, @-$44

    ld [hl], h
    or l
    jr nz, jr_026_7ad6

    ld [$1cef], sp
    ld bc, $4d5d
    ldh [$3d], a
    cp e
    inc bc
    db $eb
    daa
    ldh [$d7], a

jr_026_7b3a:
    rst $20
    ld h, b

jr_026_7b3c:
    sbc $60
    inc h
    ld h, c
    ld bc, $20ef

jr_026_7b43:
    ld l, d

jr_026_7b44:
    inc [hl]
    ld h, c
    inc d
    ld [hl], c
    rlca
    jr nc, jr_026_7b3a

    jr nz, jr_026_7b3c

    jr nz, jr_026_7bb9

    inc d
    rst $28
    dec d
    jr nz, jr_026_7b43

    add sp, $20
    rst $28

jr_026_7b57:
    jr nz, @+$0d

    ld [bc], a
    and l
    db $fc
    ld a, [hl-]
    ld b, b
    ld c, $17
    jr z, @+$01

    ld [$2e16], sp
    db $10
    ld [hl], b
    ld de, $1632
    ld [hl], h
    rla
    ld l, $10
    ld [hl], b
    ld bc, $27d7
    sbc $a1
    add hl, bc
    ld b, $2e
    db $10
    or b
    ld bc, $06e1
    rst $28
    dec bc
    ld [de], a
    dec l
    jr nz, jr_026_7bfd

    ld b, c
    db $10
    di
    dec d
    and c
    inc e
    ld bc, $202e
    ld [c], a
    dec b
    rst $00
    ld b, $a5
    rla
    inc e
    ld bc, $4d5d
    ld b, b
    ccf
    cp e
    db $eb
    daa

jr_026_7b9a:
    rst $20
    ld h, b

jr_026_7b9c:
    sbc $60
    inc h
    ld h, c
    ld bc, $20ef

jr_026_7ba3:
    ld l, d
    inc [hl]
    ld h, c
    inc d
    ld [hl], c
    rlca
    jr nc, jr_026_7b9a

    jr nz, jr_026_7b9c

    jr nz, jr_026_7c19

    inc d
    rst $28
    dec d
    jr nz, jr_026_7ba3

    add sp, $20
    rst $28
    jr nz, @+$0d

jr_026_7bb9:
    ld [bc], a
    and l
    db $fc
    ld a, [hl-]
    ld b, b
    ld c, $17
    jr z, @+$01

    ld [$2e16], sp
    db $10
    ld [hl], b
    ld de, $1632
    ld [hl], h
    rla
    ld l, $10
    ld [hl], b
    ld bc, $27d7
    sbc $a1
    add hl, bc
    ld b, $2e
    db $10
    or b
    ld bc, $06e1
    rst $28

jr_026_7bdd:
    dec bc
    ld [de], a
    dec l
    jr nz, jr_026_7bdd

    ld b, c
    db $10
    di
    dec d
    and c
    inc e
    ld bc, $202e
    ld [c], a
    dec b
    add hl, de
    jr jr_026_7c0c

    ld bc, $5d0b
    ld c, l
    ldh [$3d], a
    cp e
    db $eb
    daa

jr_026_7bf9:
    rst $20
    ld h, b

jr_026_7bfb:
    sbc $60

jr_026_7bfd:
    inc h
    ld h, c
    ld bc, $20ef

jr_026_7c02:
    ld l, d
    inc [hl]
    ld h, c
    inc d
    ld [hl], c
    rlca
    jr nc, jr_026_7bf9

    jr nz, jr_026_7bfb

jr_026_7c0c:
    jr nz, @+$6c

    inc d
    rst $28
    dec d
    jr nz, jr_026_7c02

    add sp, $20
    rst $28
    jr nz, @+$0d

    ld [bc], a

jr_026_7c19:
    and l
    db $fc
    ld a, [hl-]
    ld b, b
    ld c, $17
    jr z, @+$01

    ld [$2e16], sp
    db $10
    ld [hl], b
    ld de, $1632
    ld [hl], h
    rla
    ld l, $10

jr_026_7c2d:
    ld [hl], b
    ld bc, $27d7
    add $a1
    add hl, bc
    ld b, $2e
    db $10
    or e
    jr nz, @-$5e

    ld b, $29
    ld [$bd16], sp
    ld l, $10
    cp d
    ld [de], a
    add hl, de
    ld b, $19
    inc e
    ld bc, $202e
    cp d
    ld [de], a
    add hl, de
    dec e
    inc d
    add hl, bc
    cp e
    ld l, h
    inc d
    ldh [rNR22], a
    ld b, b
    rrca
    db $fd
    pop hl
    or d
    ld [bc], a
    cp e
    db $eb
    daa
    ld a, a
    ldh [$d7], a
    ldh [$d7], a
    ld h, e
    ld c, [hl]
    ld [$7e4a], sp

jr_026_7c68:
    jr nz, jr_026_7c2d

jr_026_7c6a:
    cp d
    ld hl, $b3cc

jr_026_7c6e:
    ld a, a
    xor d

jr_026_7c70:
    ld [$5ac4], sp

jr_026_7c73:
    call z, $2121
    call z, $1041
    call nz, $2d6a
    ld bc, $0fa7
    sub d
    xor a
    ld e, [hl]
    adc l
    jp hl


    ld b, a
    ldh [$d7], a
    rst $38
    ld b, b
    call nc, $d820
    jr nz, @-$26

    jr nz, jr_026_7c68

    jr nz, jr_026_7c6a

    jr nz, @-$26

    jr nz, jr_026_7c6e

    jr nz, jr_026_7c70

    inc de
    jr nz, jr_026_7c73

    jr nz, @-$56

    ld b, h
    pop bc
    ld a, a
    add sp, $73
    jp nz, $cb2f

    inc b
    sbc h
    sbc h
    jp c, $514f

    call nz, $dd90
    or e
    ld h, h
    rst $28
    pop af
    jp z, $9c04

    sbc h
    sbc c
    ld [$27db], sp
    or e

jr_026_7cbb:
    ld a, e
    ld d, $18
    ld d, a
    inc d
    and l
    cp d
    ld de, $1dfe
    or a
    ld [$1906], sp
    rst $28
    ld a, [hl]
    or c
    jr jr_026_7cd5

    ld c, $f9
    jr nz, jr_026_7cbb

    ld bc, $60ca

jr_026_7cd5:
    reti


    ld b, b
    rst JumpTable
    ccf
    ld h, h
    ld a, $d0
    ld l, a
    rst JumpTable
    ld sp, hl

jr_026_7cdf:
    ld d, c
    jp z, $ecd0

    ld e, d
    ld a, [hli]
    ld c, a
    dec e
    cp [hl]
    dec e
    and [hl]
    jr jr_026_7d39

    dec b
    ld d, b
    ld a, [hli]
    sub l
    ld a, [de]
    and l
    ld [$cdf5], sp
    add hl, de
    rst JumpTable
    and l
    jr jr_026_7cdf

    ld d, $d1
    inc a
    ld c, a
    ld a, [hl-]
    ld d, a
    ld c, d
    db $f4
    call Call_026_5719
    ld c, d
    rrca
    ld d, a
    ld a, [hli]
    ld c, l
    dec b
    ret nz

    reti


    ldh [$dd], a
    rst $38
    ret nc

    rst JumpTable
    dec [hl]
    ld [bc], a
    pop hl
    adc c
    xor [hl]
    ld b, $57
    ld c, d
    ld d, a
    ld a, [hl-]
    xor [hl]
    ld b, $56
    ld e, d
    rst $38
    ld d, a
    ld a, [hli]
    adc [hl]
    inc de
    ld d, a
    ld c, d
    ld d, a
    ld a, [hli]
    ld a, [hl]
    inc e
    ld d, a
    ld a, [hl-]
    ld d, [hl]
    ld a, [hl-]
    xor [hl]
    ld d, $a7
    ld e, b
    ld c, d
    ld d, d
    ld a, [de]
    dec c
    nop
    dec e

jr_026_7d39:
    rst $30
    ld d, [hl]
    ld a, [hl-]
    push af
    ld d, e
    ld a, [bc]
    ld [hli], a
    dec e
    dec c
    nop
    and c
    and c
    dec e
    ld d, a
    ld c, d
    db $f4
    and l
    ld c, [hl]
    and b
    dec c
    nop
    add b
    call c, $8de1
    or l
    and c
    dec l
    ld bc, $64ff
    ld a, $d6
    sbc a
    ld [hl], d
    cp d
    ld h, b
    db $ec
    ld h, c
    rra
    ld h, a
    inc e
    ld h, a
    inc l
    adc [hl]
    ld de, $aa5f
    ld a, [hli]
    xor d
    ld a, [hli]
    adc h
    ld h, $0b

jr_026_7d6f:
    inc b
    ld h, a
    inc c
    and h
    ld h, l
    inc a
    ld [hl], c
    rst JumpTable
    cpl
    jr jr_026_7df4

    rrca
    xor d
    ld a, [hli]
    cp b
    ld a, [de]
    rst JumpTable
    rra
    and c
    ld h, [hl]
    inc l
    ld h, a
    inc c
    rst $38
    adc h
    ld h, $5a
    ld bc, $4c64
    ld [hl], d

jr_026_7d8e:
    ld a, [bc]
    ld e, $17
    ld [hl], e
    ld c, d
    ld l, d
    inc e
    ld a, l
    ld a, [de]
    dec b
    pop hl
    dec a
    and b
    ld c, b
    ld e, a
    ld a, a
    ld h, h
    ld a, $d6
    adc a
    ld [hl], a
    ld a, [hli]
    ld [hl], h
    ld c, d
    ld a, l
    daa
    ld [hl-], a
    cp b
    jr nc, jr_026_7d8e

    and c
    add $1d
    ld e, h
    ld a, [bc]
    ld e, h
    ld a, [bc]
    or $1d
    dec e
    inc a
    ld [de], a
    jr nc, jr_026_7d8e

    jr c, jr_026_7d6f

    and b
    push af
    sub c
    ld a, h
    ld a, l
    daa
    jp nz, $f704

    rst $30
    ld d, $f7
    inc sp
    jr @-$72

    ld h, $a5
    or [hl]
    ld a, [bc]
    and c
    and h
    and l
    ld a, a
    ld a, d
    rrca
    ld a, e
    cpl
    ld a, [c]
    dec b
    sub h
    ld a, [hl-]
    sub l
    ld a, [hli]
    ld e, $24
    ld de, $721a
    ld bc, $5f48
    or a
    ld h, h
    ld a, $d6
    adc a
    ld b, $01
    add hl, de
    ld [hli], a
    ld a, [de]
    rst $30
    dec bc
    dec e
    db $ed
    rra

jr_026_7df4:
    ld e, l
    ei
    inc bc
    inc e
    ld [hli], a
    ld a, [de]
    rst $30
    dec bc
    inc e
    inc d
    or e
    or l
    ld bc, $ff19
    ld a, [de]
    nop
    ld d, c
    dec bc
    cp b
    ld a, [de]
    rst JumpTable
    add hl, hl
    db $db
    add hl, de
    add hl, sp
    inc b
    add e
    ld d, $4f
    ld a, [hli]
    ld a, a
    db $db
    add hl, de
    xor d
    ld a, [hli]
    dec l
    rla
    rlc [hl]
    db $db
    add hl, de
    xor d
    ld a, [hli]
    call $a510
    ld a, e
    or [hl]
    ld a, [hli]
    xor d
    ld a, [hli]
    and l
    dec l
    rla
    db $76
    inc c
    or [hl]
    ld a, [hli]
    rst $30
    dec bc
    and b
    cp [hl]
    and l
    ld l, [hl]
    ld bc, $1928
    xor d
    ld a, [hli]
    adc d
    ccf
    ldh [$bd], a
    cp e
    xor a
    rst $20
    di
    ld h, h
    ld a, $07
    ld a, [hli]
    or a
    and c
    db $fd
    rla
    sub c
    call z, $9c90
    ld l, h
    rra
    rst $08
    sub b
    inc c
    jp hl


    add hl, sp
    db $db
    add hl, de
    call $1d10
    dec e
    ld e, c
    ld a, [hl-]
    db $db
    add hl, bc
    add hl, sp
    adc h
    ld h, $1d
    dec e
    ld e, c
    ld a, [hl-]
    db $db
    add hl, de
    call $1d10
    dec e
    rst $20
    ld e, c
    ld a, [hl-]
    db $db
    add hl, de
    call $1d10
    dec e
    ld e, c
    ld a, [hl-]
    db $db
    add hl, de
    ld c, l
    nop
    db $fc
    ld a, e
    and c
    ld [hl-], a
    inc b
    rlc [hl]
    sbc b
    inc e
    ld l, h
    rra
    ld a, [c]
    dec b
    ld l, d
    inc e
    rla
    ld l, c
    inc l
    ld a, h
    ld a, [hli]
    pop hl
    xor l
    cp e
    xor a
    rst $20
    ld c, c
    ld h, h
    ld a, $b0
    ld a, b
    ret c

    adc a
    dec e
    and l
    ld h, a
    inc e
    inc c
    dec bc
    jp hl


    ld d, $8e
    dec e
    ld c, a
    db $db
    add hl, bc
    inc c
    and b
    inc c
    db $10
    rlca
    xor d
    ccf
    add b
    rlca
    sbc b
    inc e
    and b
    and b
    db $10
    inc e
    rst $30
    rra
    adc h
    ld h, $71
    call z, $0744
    ld [hl], e
    inc e
    ld a, [de]
    nop
    db $10
    rst $30
    and l
    ld a, c
    dec l
    rla
    or $f6
    ld [hl], e
    inc c
    sbc e
    add hl, bc
    ld a, d
    rrca
    adc h
    ld h, $a1
    ld l, h
    and b
    dec e
    and b
    ld [bc], a
    ld c, c
    inc bc
    and c
    ld a, d
    rrca
    adc [hl]
    dec e
    db $10
    db $ed
    sub [hl]
    inc b
    and c
    and $26
    xor h
    dec l
    db $10
    sub [hl]
    inc d
    add a
    rrca
    adc d
    inc c
    dec bc
    adc h
    ld d, $e0
    cp l
    cp e
    xor a
    rst $20
    ld a, c
    ld h, h
    ld a, $b0
    and b
    ret c

    ld a, a
    sub l
    ld a, [hli]
    sub l
    ld a, [hli]
    ld l, h
    inc l
    and c
    or h
    and c
    and e
    sub l
    ld a, [hli]
    and c
    ld l, d
    add hl, sp
    add d
    cpl
    and e
    ld hl, $041a
    ld a, [$eca3]
    inc l
    and b
    and b
    and e
    and b
    and b
    ld c, $fa
    ld a, [de]
    nop
    ld l, d
    add hl, sp
    jr nz, @+$2c

    ld a, [$a0fa]
    and b
    add e
    pop af
    rrca
    inc e
    scf
    ld a, [$a0a0]
    ld a, [$f6a3]
    dec de
    ld b, c
    dec de
    ld b, a
    ld a, [$faa3]
    ld a, [$5ba0]
    inc b
    and l
    rst $20

jr_026_7f41:
    ld sp, hl
    dec bc
    ld a, [hl]
    daa
    xor d
    ld a, [hli]
    and b
    and l
    ld sp, hl
    dec de
    ld c, $00
    pop af
    rlc l
    ldh [$bd], a
    cp e
    xor a
    rst $20
    rla
    ld h, h
    ld a, $d6
    adc a
    pop af
    jp $f3b3


    inc bc
    dec e
    rra
    jr jr_026_7f7f

    inc e
    jr jr_026_7f41

    add hl, de
    call $f310
    inc de
    rra
    and b
    ld [$f937], sp
    inc bc
    db $db
    add hl, bc
    ld c, $00
    rra
    sub [hl]
    inc a
    add hl, sp
    inc b
    dec e
    jr jr_026_7f84

    dec l
    rla

jr_026_7f7f:
    pop af
    inc bc
    ld a, [c]
    inc bc
    dec e

jr_026_7f84:
    ld a, [de]

jr_026_7f85:
    and b
    rra
    rra
    and e
    or e
    ld b, $8f
    inc a
    rra
    dec e
    dec e
    ld [hl], a
    inc c
    dec e
    ld l, h
    rra
    ld b, a
    ldh a, [rNR13]
    ld a, [c]
    inc bc
    ld a, [de]
    nop
    rra
    and l
    dec e
    dec l
    rla
    rra
    cp e
    sub l
    inc a
    or b
    ld h, $1f
    ld c, $00
    pop af
    inc bc
    pop af
    inc bc
    and c
    ld hl, sp+$03
    dec bc
    ld l, e
    cpl
    ldh [rKEY1], a
    and c
    ld c, b
    ld e, a
    ld l, a
    ld h, h
    ld a, $d6
    sbc a
    ld [bc], a
    cp c
    ldh [rIF], a
    dec e
    dec b
    ld l, c
    dec c
    add hl, bc
    or e
    ld h, [hl]
    and l
    dec b
    ld l, c
    dec bc
    add hl, hl
    or e
    and c
    dec b
    add hl, sp
    or b
    ld h, $1d
    and a
    adc [hl]
    dec e
    dec b
    add hl, sp
    db $db
    add hl, bc
    and l
    and b
    db $fd
    add hl, hl
    and d
    dec b
    add hl, bc
    jr jr_026_7f85

    db $10
    dec e
    or [hl]
    ld a, [de]
    call $a510
    ld a, [de]
    and b
    dec a
    di
    dec bc
    db $10
    db $db
    add hl, de
    inc e
    daa
    sbc b
    inc b
    di
    dec bc
    db $10
    dec e
    ld a, [hli]
    and l
    ld a, d
    rrca

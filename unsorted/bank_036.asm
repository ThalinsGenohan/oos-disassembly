; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX

    rst $38
    ld bc, $13ed
    cp $01
    ldh [$2d], a
    pop hl
    dec sp
    db $fd
    ld c, a
    rst $20
    inc a
    db $dd
    ld b, $34
    ld sp, hl
    dec b
    ei

jr_036_4014:
    rlca
    ld d, a
    ld b, c
    cp c
    nop
    ret


    or $4c
    rst $38
    add a
    rst $38
    add [hl]
    ei
    nop
    rst $00
    dec de
    ld [hl], $1f
    ld [de], a
    ld a, $63
    rst $28
    nop
    sbc a
    ld a, a
    ld h, h

jr_036_402e:
    rst $38
    add h
    cp a
    ld a, [hl]
    jp $8100


    or $0f
    rst $38
    jr nc, @+$01

    ret nz

    ld h, e
    nop
    add b
    rst $30
    nop
    rst $38
    rlca
    db $fd
    inc bc
    ei
    nop
    add [hl]
    cp $44
    call c, $d968
    jr c, jr_036_402e

    nop
    jr nz, jr_036_4014

    ld b, b
    rst $08
    add b
    sbc a

Call_036_4055:
    nop
    ccf
    ld hl, $fe00
    ld b, c
    db $fc
    nop
    ld a, a
    inc bc
    ld hl, $7d40
    ld b, c
    ld a, e
    ld bc, $01f7
    db $e3
    ld bc, $0300
    ld bc, $0f05
    dec d
    rrca
    db $fd
    rlca
    add b
    ld hl, $9f78
    ld hl, sp-$11
    ld hl, sp+$0f
    jp hl


    db $10
    rra
    rst $38
    ld bc, $0381
    db $fd
    sbc [hl]
    db $e3
    nop
    db $fc
    rst $00
    ld hl, sp-$61
    ldh [$d6], a
    ld l, e
    ld c, h
    nop
    rst $30
    ld d, a
    rst $28
    jp z, $f277

    ld a, a
    rst $00
    inc b
    ld c, a
    pop hl
    ld b, b
    jp z, $3721

    ei
    sbc h
    nop
    rst $30
    rst $38
    ld [$34f8], sp
    ld hl, sp-$22
    ldh a, [rP1]
    rrca
    ld hl, sp-$75
    ld a, h
    rst $38
    jr c, @+$01

    stop
    rst $30
    ldh a, [$63]
    ld h, b
    dec h
    ld h, b
    inc bc
    ld h, b
    ld [bc], a
    ld b, e
    ld b, b
    pop bc
    ld b, b
    rst $38
    nop
    ld bc, $af0e
    ld [bc], a
    ld [hl], b
    rst $30
    inc c

jr_036_40c8:
    ei
    inc b
    rst $38
    ld h, c
    inc c
    add a
    ld hl, $1cf7
    rst $38
    ld bc, $2597
    rst $00
    nop
    ld a, a
    jp nz, $a2ff

    rra
    sub d
    rra
    ld [hl-], a

jr_036_40df:
    nop
    rst $38
    ld [c], a
    ld a, e
    and $8f
    or [hl]
    rra
    rla
    and b
    ld [hl], l
    cp $3b
    inc bc
    cp $06
    ld a, [$0019]
    ld a, l

jr_036_40f3:
    di
    ld l, [hl]
    sbc a
    rst $30
    jr nc, jr_036_40c8

    ld b, b
    nop
    sbc a
    add b
    ld c, a
    jr nz, jr_036_40df

    ld b, b
    cp a
    add b
    nop
    cp a
    nop
    ld a, a
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ret nc

    jr nz, jr_036_40f3

    nop
    and e
    ld b, b
    inc b
    xor a
    ld b, b
    rst $38
    add b
    nop
    ld b, b
    jr nz, jr_036_411e

jr_036_411e:
    jr @+$62

    nop
    ret nz

    ld b, c
    inc l
    add e
    nop
    dec b
    ld b, a
    ld bc, $0760
    ld bc, $2403
    ld [hl+], a
    ld b, c
    nop
    di
    rra
    db $dd
    ld a, $f7
    inc a
    rst $20
    inc a
    nop
    add a
    ld a, h
    rst $00
    ld a, h
    add a
    db $fc
    rlca
    db $fc

jr_036_4142:
    nop
    adc [hl]
    pop af
    set 6, a
    cp $7f
    ld hl, sp+$3f
    nop
    ldh a, [$3f]
    ldh [$3f], a
    pop hl
    ld a, $c3
    inc a
    nop
    ld h, a
    or b
    xor $f1
    rst $28
    ldh a, [$2e]
    pop af
    nop
    ld a, a
    cp a
    rst $28
    jr nc, jr_036_4142

    jr nc, @+$01

    stop
    inc e
    rst $38
    sub b
    ld [hl], b
    ld [hl], b
    or b
    ld a, a
    ret nc

    nop
    ld a, [hl]
    sub c
    ei
    rrca
    or $0c
    ld hl, sp+$08
    nop
    ld b, c
    ret nz

    jp $c5c0


    ld b, b
    jp VBlankInterrupt


    push hl
    ldh [$33], a
    db $10
    dec e
    ld e, $1f
    dec bc
    jr nz, @+$01

    nop
    and c
    db $fd
    inc bc
    db $fd
    ld b, $bf
    nop
    ld a, h
    cp l
    add $f3
    inc a
    rst $38
    ld a, b
    ld c, a
    ld bc, $eef8
    ld hl, sp-$13
    ld hl, sp-$48
    ld a, b
    ld hl, $f808
    ld l, b
    rst $38
    ld bc, $7f3b
    nop
    xor [hl]
    nop
    ld bc, $015f
    cpl
    inc bc
    inc de
    ld b, $05
    nop
    ld b, $fe
    rst $30
    ld e, [hl]
    rst $20

jr_036_41bd:
    cp $e7
    xor a
    nop
    rst $30
    push de
    ccf
    rst $38
    inc e
    rst $28
    inc e
    rst $38
    nop
    inc c
    ld a, $c2
    ld e, [hl]
    and h
    dec b
    db $fc
    adc e
    nop
    ld hl, sp+$77
    ld sp, hl
    sub [hl]
    di
    db $ec
    ld [hl], a
    ld hl, sp+$00
    ld l, a
    rst $38
    nop
    rst JumpTable
    ld hl, $61bf
    rst $38
    nop
    pop bc
    cp [hl]
    jp $c27f


    rst $38
    add $b3
    jr jr_036_41bd

    ld a, a
    add b
    ld sp, $0c01
    add a
    nop
    sbc a
    dec [hl]
    nop
    cp $81
    xor a
    inc bc
    add b
    rrca
    ld b, c
    db $10
    dec bc
    rlca
    dec de
    ld b, c
    rrca
    ld hl, sp+$7f
    ldh a, [$09]
    di
    db $fc
    inc b
    inc bc
    ccf
    ld hl, sp+$00
    inc hl
    nop
    ld a, a
    add b
    di
    inc e
    pop af
    ld e, $e0
    ccf
    ld bc, $fca3
    ld [hl], e
    ld a, h
    ld bc, $7e03
    ld d, e
    ld [$30ef], sp
    rst $38
    db $10
    ld hl, $18f7
    ei
    nop
    inc c
    rst $38
    add d
    dec a
    ld [hl], e
    ld c, $1d
    ld hl, sp+$00
    ld [$0cf0], sp
    cp $06
    rst $38
    rlca
    rst $38
    nop
    inc b
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $0038
    ld [$0c75], sp
    db $fd
    inc b
    rst JumpTable
    inc a
    rst $30
    ld b, b
    db $fc
    inc sp
    ld a, a
    nop
    ld a, [hl]
    ld bc, $0ff6
    db $10
    cp $0f
    rst $38
    ld hl, $db1e
    inc a
    rst $38
    nop
    ldh a, [$fe]
    ld b, c
    rst $38
    add c
    ld hl, sp+$58
    add sp, $00
    cp b
    ld hl, sp+$38
    add sp, $78
    ld hl, sp+$48
    ld hl, sp+$00
    ld hl, sp-$04
    adc b
    sbc h
    ld [$0c04], sp
    ld a, [bc]
    nop
    add hl, bc
    dec c
    ld c, $00
    nop
    ld bc, $0301
    nop
    ld [bc], a
    inc bc
    ld b, $05
    rlca
    cp e
    ld a, h
    rst $28
    nop
    db $dd
    cp e
    ld [hl], a
    db $ed
    ld a, [$3efe]
    ld [c], a
    nop
    ld a, [hl]
    call z, $fef2
    rst $38
    or b
    rst $38
    ldh [rP1], a
    ccf
    ld b, b
    ccf
    ld h, c
    rra
    jp nz, $e53e

    nop
    inc e
    reti


    inc l
    db $ed
    jr @+$01

    adc d
    rst $28
    inc b
    sbc d
    rst $30
    sbc d
    rst $38
    sub d
    ld hl, $b2df
    ld [bc], a
    cp $a7
    sub [hl]
    rst $28
    rst $38
    nop
    ld hl, $3cf7
    ld [$e1ff], sp
    ccf
    ld c, a
    ld h, c
    db $fd
    ld [bc], a
    ld b, b
    rst $38
    add c
    dec sp
    rlca
    ld a, l
    inc bc
    db $fd
    inc bc
    inc h
    ld sp, hl
    rlca
    inc hl
    cp $01
    ld [hl], a
    ld a, a
    add b
    nop
    rst $38
    add b
    rst $28
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    ldh [rNR42], a
    add hl, hl
    ld hl, $07c3
    ldh a, [rSB]
    ld hl, sp+$12
    nop
    db $fc
    nop
    inc hl
    add b
    nop
    ld h, b
    rst $38
    add b
    ld hl, $df80
    ld h, b
    rra
    jr nc, jr_036_4323

    ld [$0f00], sp
    inc b
    ei
    ld b, $7f
    inc bc
    sbc $e3
    inc sp
    rst $28
    inc e
    ld d, e
    ld bc, $fe09
    ld bc, $2345
    ld h, b
    inc bc
    ld b, c
    ld l, c
    nop
    db $dd
    cp [hl]
    pop hl
    jp $8100


jr_036_4323:
    add c
    add b
    pop bc
    jp nz, $e7e1

    pop hl
    nop
    rst $38
    pop hl
    rst $28
    ld sp, $0107
    ld a, a
    rst $38
    ld bc, $078f
    inc bc
    ld bc, $1f0f
    ccf
    jr z, jr_036_433d

jr_036_433d:
    rst $38
    set 7, a
    rst JumpTable
    db $e3
    rst JumpTable
    ei
    rlca
    nop
    rrca
    rrca
    sbc [hl]
    xor a
    sbc h
    rst $38
    sbc h

jr_036_434d:
    ld a, a
    nop
    sub b
    rst $28
    db $10
    ld [hl], e
    sub b

jr_036_4354:
    rst $20
    ldh [$df], a

jr_036_4357:
    nop
    add b
    rst $38
    ld b, b
    sbc a
    ld h, b
    rst $38
    jr nz, jr_036_4357

    nop
    jr nz, jr_036_434d

    jr nz, jr_036_4354

    db $db
    cp l
    db $d3
    rst $38
    nop
    ld de, $21ef
    rst $08

jr_036_436e:
    ld h, c
    adc [hl]
    ld b, c
    add [hl]
    nop
    add c
    add a
    add c
    rst $28
    jr @+$01

    jr z, jr_036_436e

    nop
    inc l
    rst JumpTable
    ld h, h
    rst $38
    ld b, h
    cp a
    call nz, $00ff
    add h
    ld [hl], a
    adc b
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    nop
    ld c, $ff
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    inc b
    ld b, d
    rst $38
    add d
    rst $38
    nop
    add c
    ld bc, $107f
    add c
    ld a, a
    add d
    ld hl, $857e
    rst $38
    add b
    adc h
    ld bc, $f30a
    add b
    pop af
    dec h
    cp a
    nop
    cp $a0
    ld b, c
    db $fc
    ld b, c
    add b
    nop
    ldh [rP1], a
    ldh a, [rNR10]
    nop
    ret nz

    nop
    and b
    ld bc, $7f00
    ld bc, $3f00
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld h, b
    rlca
    ld c, a
    dec sp
    ld a, a
    add b
    cp l
    jp nz, $01da

    ld h, l
    ldh a, [$3f]
    add sp, $1f
    db $fc
    rlca
    ld hl, $7f00
    inc bc
    db $dd
    ld [hl+], a
    jr nz, @-$1f

    nop
    rst $38
    add c
    ld bc, $5f0a
    cp b
    rrca
    rst $38
    rrca
    ld hl, sp+$21
    inc b

jr_036_43f3:
    ld c, $f8
    inc c
    ld hl, sp+$08
    ld b, c
    push bc
    cp $00
    ld h, e
    sbc a
    ld a, [c]
    rrca
    ld a, [$7c07]
    rlca
    db $10

jr_036_4405:
    inc e
    rlca
    inc c
    ld b, c
    rst $38

jr_036_440a:
    jr nz, jr_036_43f3

    ret c

    jr nz, jr_036_440f

jr_036_440f:
    rst $38
    ld bc, $e50a
    jr nz, jr_036_4405

    jr nz, @+$20

    jr nz, jr_036_440a

    rrca
    rrca
    add hl, bc
    inc bc
    ld b, c
    ld a, [c]
    ld hl, $01fd
    ld hl, sp-$23
    inc h
    rrca
    db $fc
    rrca
    ld hl, sp+$21
    nop
    dec bc
    db $fc
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    inc c
    ret nc

    ld e, $09
    ld hl, $0102
    ld a, [bc]
    cp $03
    db $fd
    inc bc
    nop
    ld a, [hl]
    add a
    db $fd
    adc [hl]
    db $eb
    sbc h
    rst $30
    sbc c
    nop
    db $fd
    and c
    db $fd
    pop bc
    db $fd
    add c
    ld a, e
    add c
    nop
    ret nz

    nop
    nop
    add b
    ld h, b
    add b
    ld hl, sp-$80
    nop
    ld a, a
    add b
    cp a
    ret nz

    jp hl


    or $ff
    rst $38
    ld h, b
    db $fc
    cpl
    ld b, b
    jr jr_036_4468

jr_036_4468:
    ccf
    nop
    cp a
    ld [de], a
    nop
    cp $01
    cpl
    rra
    nop
    ld hl, $890f
    add c
    add [hl]
    ld a, c
    ccf
    ld l, $ff
    ldh a, [$35]
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    cp h
    ld b, b
    jp $ff4e


    ld a, $03
    rra
    ld bc, $c3ff
    ld hl, $7e53
    add c
    ld de, $2fef
    ld c, b
    jr nz, @+$01

    add b
    ld b, c
    ret nz

    ld a, a
    ld b, b
    rst $38
    ldh a, [$92]
    ld e, a
    inc c
    ld hl, sp-$5f
    inc e
    add sp, $23
    ccf
    ld b, c
    ret z

    ld c, a
    rlca
    ld a, [bc]
    rlca
    ld c, $03
    ld h, c
    ld a, [bc]
    ld a, $03
    cp $03
    cpl
    nop
    ld bc, $3f09
    add hl, de
    ret nz

    cp a

jr_036_44c0:
    ld a, a
    rrca
    inc c
    ld hl, $f38c
    cpl
    nop
    ld a, [$fd04]
    ld [bc], a
    db $fc
    inc bc
    cp $00
    inc h
    db $fc
    ld [bc], a
    daa
    ld e, $01
    ld e, a
    nop
    ret nz

    dec de
    nop
    inc b
    ld hl, sp+$25
    jr nz, jr_036_44c0

    ld c, c
    cpl
    ld [hl], d
    rst $38
    inc sp
    dec h
    pop bc
    ld hl, sp+$07
    ld l, $f9
    nop
    inc bc
    ei
    inc bc
    rst $38
    inc bc
    di
    rlca
    rst $30
    dec bc
    rrca
    xor a
    rra
    ld a, a
    ld e, [hl]
    nop
    nop
    rrca
    nop
    ld [hl], e
    ld h, e
    xor [hl]
    xor [hl]
    ld h, e
    ld [hl], e
    call c, $09dc
    ld a, h
    ld a, l
    ld a, l
    ld a, h
    dec h
    ld [hl], b
    ld h, b
    dec l
    ld e, $60
    ld [hl], b
    nop
    nop
    dec bc
    ccf
    ld b, b
    ld e, a

jr_036_4518:
    ld l, [hl]
    inc e
    ld l, a
    ld l, a
    ld l, [hl]
    ld a, a
    ld b, b
    rra
    dec c
    ld [hl], h
    ld [hl], l
    and c
    ld b, b
    ld [hl], h
    add hl, sp
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    dec h
    jr z, @+$73

    ld [hl], d
    ld b, b
    ld [hl], c
    rra
    inc c
    sbc l
    sbc l
    sbc a
    ld c, a
    sbc a
    inc hl
    dec c
    adc d
    dec sp
    jr nz, jr_036_4563

    xor l
    and b
    ld d, [hl]
    add b
    ret nz

    nop
    xor l
    xor l
    xor a
    xor a
    sbc [hl]
    inc hl
    adc e
    dec c
    ld a, a
    dec h
    xor l
    rra
    inc c
    adc d
    rst $00
    ld e, c
    inc hl
    dec c
    add c
    dec c
    inc a
    add e
    ld l, l
    rst $38
    ld e, a
    and b
    ld e, a
    inc sp
    ld sp, $3a23

jr_036_4563:
    dec [hl]
    rst $30
    and e
    ld l, l
    sbc c
    and b
    nop
    cpl
    nop
    ld [de], a
    rra
    inc hl
    cp $a0
    rra
    ld a, [de]
    add hl, sp
    and b
    rra
    jr c, jr_036_4518

    ld e, a
    add c
    inc sp
    adc d
    dec c
    jr nc, jr_036_45a2

    dec c
    add c
    dec h
    inc hl
    dec sp
    dec c
    adc e
    adc e
    sbc c
    and b
    nop
    dec l
    ld d, e
    rst $38
    inc hl
    ld a, [hl-]
    dec h
    inc hl
    dec sp
    adc e
    ld e, a
    add b
    add b
    ld e, a
    add b
    add c
    ld h, c
    ld h, d
    sbc [hl]
    sbc [hl]
    ld h, d
    ld de, $0d61
    add c

jr_036_45a2:
    ld e, c
    add c
    ld h, h
    ld h, l
    dec hl
    jr jr_036_460e

    ld h, h
    dec c
    rst $38
    ld h, b
    ld h, h
    ld [hl], b
    ld h, b
    ld [bc], a
    xor [hl]
    xor [hl]
    ld h, b
    ld [hl], b
    ld h, c
    ld h, d
    add hl, sp
    ld h, d
    ld de, $7361
    ld h, e
    dec hl
    ld h, e
    ld [hl], e
    ld h, c
    ei
    ld e, e
    add b
    ld b, b
    ld [hl], e
    ccf
    ld b, b
    ld [hl], b
    dec h
    add hl, sp
    ld sp, hl
    dec h
    ccf
    ld b, b
    ld sp, $0d1f
    ld [hl], c
    ld [hl], d

jr_036_45d4:
    ld b, b
    ld h, d
    ld [hl], c
    ccf
    ld b, b
    ld [hl], b
    ld [hl], h
    ld [hl], l
    ld b, b
    ld [hl], h
    ldh [$1f], a
    add hl, bc
    ld h, b
    ld bc, $0808
    inc c
    inc l
    ld [$0c28], sp
    ld b, b
    inc h
    inc l
    inc l
    inc hl
    ld a, [bc]
    ld a, [bc]
    ld h, $2a
    ld a, [hl+]
    ld a, a
    stop
    dec bc
    ccf
    dec a
    rra
    inc c
    jr nz, jr_036_461d

    ld l, $36
    sbc a
    ld h, c
    dec c
    dec c
    dec sp
    jr nz, jr_036_464c

    adc l
    ld d, [hl]
    ld l, [hl]
    ld [$ffc0], sp
    dec l

jr_036_460e:
    sbc a
    dec h
    rra
    ld de, $7f0d
    dec c
    ld d, a
    jr c, jr_036_4619

    add hl, bc

jr_036_4619:
    ld l, l
    ld e, a
    and b
    ld e, a

jr_036_461d:
    db $fd
    ld [hl], c
    inc hl

jr_036_4620:
    nop
    ld a, [bc]
    ld l, l
    sbc c
    and b
    db $10
    cpl
    rst $38
    nop
    ld [de], a
    rra
    inc hl
    and b
    rra
    ld a, [de]
    add hl, sp
    and b
    rra
    jr c, jr_036_45d4

    cp e
    ld e, a
    dec c
    jr nz, jr_036_4669

    inc hl
    dec l
    ld b, l
    inc hl
    rst $38
    ld h, l
    ld c, e
    sbc c
    and b
    ccf
    cp c
    jr nz, jr_036_46bf

    ld hl, sp+$65
    ld c, e
    ld e, a
    add b
    ld e, a

jr_036_464c:
    ld [$0a0d], sp
    rlca
    ld a, [bc]
    inc c
    inc l
    ld a, [hl+]
    ld a, [hl+]
    dec [hl]
    ld a, c
    ld l, $8d
    dec hl
    ld [$2d28], sp
    rst $38
    ld h, b
    jr z, jr_036_4620

    ld e, e
    ld c, $20
    ld l, $20
    cp a
    ld c, $fb

jr_036_4669:
    ld l, $fd
    jr nz, jr_036_46cc

    jr nz, jr_036_468e

    ld a, [bc]
    cpl
    rra
    add hl, de
    ld c, $1f
    ld de, $60c0
    ld b, b
    adc [hl]
    nop

Jump_036_467b:
    rra
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add b
    rra
    ld [de], a

jr_036_468e:
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld bc, $9796
    sbc b
    sbc c
    sbc d
    sbc d
    sbc e
    rra
    ld [de], a
    nop
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld [bc], a
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    rra
    ld [de], a
    xor d
    nop
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    inc b
    or e
    or h
    or l

jr_036_46bf:
    or [hl]
    or a
    rra
    ld [de], a
    cp b
    cp c
    nop
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a

jr_036_46cc:
    ret nz

    pop bc
    ld [$c3c2], sp
    call nz, $1fc5
    ld [de], a
    add $c7
    ret z

    nop
    ret


    jp z, $cccb

    call $cfce
    ret nc

    db $10
    pop de
    jp nc, $1fd3

    ld [de], a
    call nc, $d6d5
    rst $10
    nop
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    jr nz, @-$1e

    pop hl
    rra
    ld [de], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $00
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $40
    rst $28
    rra
    ld [de], a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    nop
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    add b
    rra
    ld [de], a
    cp $ff
    nop
    ld bc, $0302
    inc b
    ld bc, $0605
    rlca
    ld [$0a09], sp
    dec bc
    rra
    ld [de], a
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld [bc], a
    inc d
    dec d
    ld d, $17
    jr jr_036_4757

    rra
    ld [de], a
    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_476a

    ld [hl+], a
    inc b
    inc hl
    inc h
    dec h
    ld h, $27
    rra
    ld [de], a
    jr z, jr_036_477d

    nop
    ld a, [hl+]
    dec hl

jr_036_4757:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_478e

    ld [$3332], sp
    inc [hl]
    dec [hl]
    rra
    ld [de], a
    ld [hl], $37
    jr c, jr_036_4768

jr_036_4768:
    add hl, sp
    ld a, [hl-]

jr_036_476a:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    db $10
    ld b, c
    ld b, d
    ld b, e
    rra
    ld [de], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    ld c, b
    ld c, c

jr_036_477d:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    jr nz, jr_036_47d5

    ld d, c
    rra
    ld [de], a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop

jr_036_478e:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld [hl], b
    ld e, a
    rra
    ld [de], a
    nop
    jr nz, @+$61

    ld bc, $0000
    inc hl
    nop
    inc e
    ret c

    nop
    ld c, b
    rra
    ldh a, [rNR41]
    sub b
    ccf
    nop
    inc l
    rst $38
    ld e, a
    nop
    add b
    rra
    nop
    inc sp
    sbc [hl]
    ldh a, [$df]
    nop
    add c
    ld [hl+], a
    jr jr_036_47c1

    ld [bc], a
    inc h
    nop
    and b
    nop

jr_036_47c1:
    rst $38
    rst $38

jr_036_47c3:
    db $fc
    rst $38
    rst $28
    ldh a, [$cf]
    ldh a, [rSB]
    adc a
    ldh a, [$87]
    ld hl, sp-$7b
    cp $83
    inc l
    nop
    rst $38
    cp l

jr_036_47d5:
    cp $d4
    cp b
    or e
    sub b
    cp a
    nop
    sbc a
    db $f4
    ld hl, sp+$00
    add b
    add [hl]
    add c
    cp [hl]
    nop
    pop bc
    sbc d
    nop
    add hl, bc
    rlca
    ld a, d
    db $fc
    sub b
    ld bc, $02e0
    ld bc, $1e21
    jr nc, @-$1d

    ccf
    ld [$3fdf], sp
    db $eb
    call c, $006b
    pop hl
    nop
    ld [de], a
    nop
    jr nz, jr_036_47c3

    cpl
    ld l, e
    add c
    dec hl
    jr jr_036_4810

    ldh [rTAC], a
    nop
    db $10
    ldh [$27], a
    scf

jr_036_4810:
    cpl
    nop
    rst $08
    rst $38
    or a
    rst $08
    rst $28
    add a
    ld a, $87
    ld [$075c], sp
    inc c
    rlca
    inc sp
    cp $ff
    ei
    nop
    db $fc
    sbc a
    ldh [$8f], a
    ld d, b
    ld h, a
    jr z, jr_036_487f

    nop
    inc [hl]
    ld l, c
    adc d
    inc b
    push hl
    nop
    rst $38
    xor b
    inc c
    ld d, a
    or $09
    rst $38
    ld h, $c1
    inc bc
    db $fc
    ld [$f807], sp
    ld e, a
    and b
    rrca
    ld a, [bc]
    rst $38
    ccf
    rst $20
    db $10
    rra
    rst $38
    ld bc, $0b0f
    rst $38
    ld e, a
    cp a
    ld [hl], a
    db $10
    adc a
    or $0f
    rst $28
    ldh [rIE], a
    sbc [hl]
    pop hl
    jr nz, jr_036_48dc

    add b
    rra
    ld a, [bc]
    ld a, a
    rst $38
    cp a
    ld a, a
    db $fd
    ld b, b
    ld [bc], a
    rrca
    ld a, [bc]
    pop af
    rst $38
    ld [$3ff5], a
    ret nz

    adc c
    db $ed
    cp $01
    rst $38
    nop
    rrca

jr_036_4876:
    add e
    db $fc
    ld hl, $bc02
    db $fc
    sbc a
    ldh [$90], a

jr_036_487f:
    rst $28

jr_036_4880:
    ld hl, $4091
    xor $23
    add e
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ld [bc], a
    sub h
    db $eb
    xor [hl]
    pop de
    rst $38
    add b
    ld h, c
    db $e4
    ld b, b
    ld hl, sp+$2d
    jr jr_036_4880

    ld bc, $80e0
    ld h, b
    nop
    ld b, b
    and b
    ldh [rP1], a
    and b
    ld b, b
    ld [bc], a
    inc a
    db $10
    ld b, b
    add e
    inc b
    ld d, e
    ld d, $0f
    rrca
    ld b, $42
    inc c
    ld b, c
    nop
    nop
    jr nz, jr_036_4876

    di
    jr nc, jr_036_48bc

    rrca
    inc bc
    nop

jr_036_48bc:
    ld bc, $011e
    ld [hl-], a
    inc de
    dec bc
    ld bc, $0e13
    ld bc, $31f1
    ld c, $02
    ld d, h
    add b
    or e
    ld a, a
    add b
    rlca
    ld b, b
    add c
    and b
    ld h, b
    nop
    ret nc

    jr nz, jr_036_4900

    jr c, @+$16

    ld a, [de]
    ld a, [bc]

jr_036_48dc:
    cpl
    nop
    push bc
    rst $38
    nop
    ld a, [$e000]

jr_036_48e4:
    nop
    ret nz

    nop
    nop
    ld bc, $0300
    inc bc
    dec b
    ld b, $0a
    ld b, b
    dec c
    cpl
    cp a
    nop
    rla
    nop
    ld a, [bc]
    nop
    rlca
    push hl
    ldh [$c0], a
    ld b, b
    add b
    ld b, b
    cpl

jr_036_4900:
    and c
    ld b, [hl]
    ld a, a
    ld d, a
    ld e, a
    nop
    rrca
    call $0b01
    ld bc, $0188
    ld c, $9f
    rst $38
    add b
    ld b, c
    ret nz

    cp a
    ldh [rNR34], a
    sbc a
    ret nz

    xor e
    dec h
    add hl, hl
    adc [hl]
    ld b, c
    ld a, a
    add a
    pop bc
    and b
    ld b, b
    ldh [rP1], a
    inc hl
    ld h, l
    and c
    jr z, jr_036_4931

    ld b, $21
    nop
    ld b, c
    dec b
    ld [bc], a
    nop
    ld b, h

jr_036_4931:
    inc bc
    ld hl, $0102
    nop
    nop
    dec c
    add b
    nop
    jr nc, jr_036_496c

    rrca
    ld [hl], $00
    inc c
    inc b
    ld hl, sp+$00
    rst $38
    add h
    inc de
    inc c
    rlca
    ld a, [hl-]

jr_036_4949:
    ld b, c
    add a
    or e
    dec bc
    nop
    ld b, b
    ld [$1741], sp
    sbc c
    ccf
    pop de
    ld l, a
    pop af
    nop
    db $fd
    ld h, c
    inc a
    ldh [$3e], a
    ldh [$af], a
    jr nc, jr_036_496d

    sub a
    jr jr_036_48e4

    nop
    ld h, b
    dec h
    rst $20
    jp $3d08


    ld a, [hl]

jr_036_496c:
    rst $38

jr_036_496d:
    nop
    ld hl, $000f
    rlca
    add [hl]
    ld b, c
    rst $38
    ld a, a
    cp [hl]
    pop bc
    ld l, l
    pop hl
    ld a, a
    nop
    add b
    rst JumpTable
    ldh [$bf], a
    ld [hl], b
    db $eb
    jr jr_036_4949

    ld d, b
    inc c
    pop af
    cp $83
    db $fd
    nop
    push af
    ld bc, $eb00
    ld bc, $0155
    add hl, hl
    ld bc, $0181
    nop
    inc bc
    ld bc, $0385
    dec b
    inc bc
    push de
    ld [$c000], a
    rst $38
    ldh a, [$87]
    ld hl, sp-$7d
    cp h
    jp $b800


    rst $00
    db $fc
    jp $fff8


    ld a, a
    add b
    ld h, h
    rst $38
    ld bc, $2d0b
    ldh [rP1], a
    pop hl
    and b
    ld b, b
    add c
    inc hl
    pop hl
    ld [bc], a
    nop
    ld bc, $0001
    nop
    ld a, [bc]
    ld b, b
    cp $22
    add b
    ld b, b
    add b
    jr nz, @-$3e

    stop
    ld h, b
    ld [$0030], sp
    rra
    inc bc
    rlca
    dec b
    ld b, b
    ld b, $f9
    ld a, [hl]
    inc a
    db $db
    rst $20
    ld a, a
    add b
    ld b, b
    rst $38
    adc e
    rrca
    rlca
    dec sp
    dec e
    rst $28
    ld [hl], d
    nop
    cp [hl]
    call nz, $08fc
    jp z, $0839

    nop
    add b
    and c
    stop
    jr nz, jr_036_49f8

jr_036_49f8:
    ld b, b
    nop
    add b
    ld [bc], a
    nop
    adc e
    inc c
    add l
    ld b, $84
    ld hl, $807c
    dec sp
    jp c, $ba28

    ld d, b
    rst $10
    jr nc, @-$03

    nop
    inc b
    cp l
    ld [$083d], sp
    inc d
    inc e
    ld e, $00
    inc [hl]
    ld a, a
    ld h, $ff
    ld c, c
    ld a, a
    jp nc, $00ff

    nop
    db $fc
    nop
    xor $00
    add c
    nop
    ret nz

    nop
    nop
    ld b, b
    nop
    ld h, a
    add b
    rst $10
    ldh [$ce], a
    nop
    inc b
    ld a, [bc]
    ld b, $0f
    ld [bc], a
    ld [hl], l
    inc bc
    cp a
    nop
    ld bc, $41be
    sbc a
    ld h, b
    call Call_036_7e33
    nop
    nop
    ld a, $00
    inc a
    nop
    ld [$8000], sp
    sub c
    ld hl, $c080
    ld [hl+], a
    ldh [$03], a
    rlca
    ld bc, $200e
    ldh [$df], a
    ld hl, $ffc0
    ldh [rIE], a
    ld hl, sp+$00
    rst $38
    or $f9
    rst $20
    ld hl, sp-$3e
    db $fd
    rst $38
    ld b, b
    add b
    ld bc, $7f0a
    add b
    ld a, [hl]
    add c
    and b
    ld b, d
    add hl, bc

jr_036_4a73:
    pop hl
    inc bc
    and b
    ld b, c
    ld hl, $01e0
    and e
    nop
    ld bc, $0800
    ldh a, [rP1]
    rrca
    add a
    ld [$2188], sp
    rst $00
    ld [$43a7], sp
    rst $38
    ld [$001f], sp
    db $10
    cpl
    ldh a, [rIE]
    jr nz, jr_036_4a73

jr_036_4a94:
    ld h, b
    rst $38
    nop
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    nop
    cp $01
    ld bc, $07f8
    ldh a, [rIF]
    pop hl
    rra
    ld hl, $e300
    ld e, $c3
    ld a, $90
    ld a, [hl]
    jr nc, @-$1e

    nop
    ld h, b
    ret nz

    ldh a, [$80]
    rrca
    nop
    db $10
    ldh [$30], a
    ldh [$1f], a
    dec a
    ldh [$80], a
    nop
    ld a, b
    nop
    nop
    add h
    nop
    inc b
    ld hl, sp-$49
    ld d, b
    rst JumpTable
    jr nc, jr_036_4acd

jr_036_4acd:
    sub a
    ld a, b
    adc a
    ld a, b
    adc e
    ld a, h
    add a
    ld a, h
    nop
    add e
    ld a, [hl]
    add c
    ld a, a

jr_036_4ada:
    cp h
    call nc, $b8e9
    nop
    jp c, $e091

    ret nz

    add c
    add b
    ld h, b
    add b
    nop
    jr c, jr_036_4ada

    db $fc
    ld a, b

jr_036_4aec:
    ld [hl], a
    jr c, jr_036_4b6e

    db $fc
    nop
    inc bc
    ld b, $f3
    ld bc, $f974
    cp b
    ld hl, sp+$00
    jr z, jr_036_4a94

    jr c, @+$32

    jp $e63f


    inc e
    nop
    rst $28
    ld a, [de]
    rst $38
    ld d, $fd
    adc d
    cp a
    ret z

    ld bc, $49ff
    ld a, [hl]
    ld c, a
    add b
    jr nz, jr_036_4b53

    ld b, c
    add b
    ld [hl+], a
    ret nz

    ld b, b
    ldh [$c0], a
    ld h, b
    and b
    ldh a, [rNR10]
    db $10
    inc bc
    rlca
    ld h, c
    ld bc, $0507
    inc bc
    and h
    ld hl, $4101
    ld [c], a
    db $fd
    ld hl, $fde6
    db $10
    db $f4
    rst $38
    db $e4
    ld b, c
    call z, $fcff
    rst $38
    nop
    rst $38
    add b
    cp $81
    push de
    xor d
    xor d
    push de
    adc b
    inc hl
    adc b
    rst $30
    add b
    inc l
    rst $38
    ld h, b
    add c
    jr nz, jr_036_4aec

    ld b, c
    db $e3
    ld c, d
    and c

jr_036_4b50:
    inc [hl]
    pop bc
    and a

jr_036_4b53:
    nop
    ld [$09c7], sp
    and a
    add hl, bc
    rst $00
    dec bc
    xor l
    nop
    ld b, $ce
    inc c
    or h
    inc e
    db $e4
    inc a
    rst $38
    nop
    add b
    ld l, a
    sbc a
    cp $60
    adc $f0
    ccf

jr_036_4b6e:
    nop
    jr jr_036_4b80

    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0803
    cp $fe

jr_036_4b7a:
    rst $38
    dec bc
    jr z, jr_036_4b7f

    nop

jr_036_4b7f:
    nop

jr_036_4b80:
    nop

jr_036_4b81:
    jr c, @+$32

    ld h, c
    ld c, h
    push bc
    ld b, d
    rst $38
    nop
    add b
    ld h, c
    cp a
    ret nz

    rst $38
    ld h, b
    rst JumpTable
    jr nc, jr_036_4b81

    inc b
    jr @+$01

    ld [$8008], sp
    ld hl, $8f17
    nop
    inc e
    sbc b
    jr z, jr_036_4b50

    ld e, h
    ldh [$82], a
    ld hl, sp+$08
    call nz, $80b8
    ld a, a
    ld hl, $ff88
    rst $00
    nop
    ld a, a
    ld h, d
    ccf
    ld sp, $101f
    rra
    jr jr_036_4bb7

jr_036_4bb7:
    rrca
    ld hl, sp-$24
    inc [hl]
    ld hl, sp+$7c
    ld [c], a
    or a
    nop
    ld [c], a
    rst $28
    jr nc, jr_036_4b7a

    reti


jr_036_4bc5:
    ld l, a
    cp $09
    jr z, jr_036_4bc5

    nop
    ld b, b
    ld bc, $0722
    ld h, b
    ld de, $c300
    pop af
    or $62
    db $f4
    adc l
    jr z, jr_036_4c39

    nop
    or c
    ld e, [hl]
    ld d, e
    cp h
    and e
    ld a, h
    pop hl
    cp $00
    and c
    ld a, [hl]
    ld d, b
    cp a
    ld d, e
    ccf
    call c, RST_08
    rst $28
    ld b, $f3
    ld bc, $00f8
    db $fc
    nop
    nop
    cp $00
    rst $38
    nop
    cp a
    ret nz

    inc bc
    ld bc, $2180
    pop bc
    add c
    ldh a, [$61]
    ld a, $1d
    rlca
    nop
    inc bc
    add c
    nop
    ldh [rP1], a
    rst $00
    rst $38
    rst $08
    inc b
    ldh a, [$c3]
    db $fc
    add a
    ld hl, sp+$21
    or a
    ld hl, sp+$02

jr_036_4c1a:
    adc [hl]
    rst $38
    adc e
    db $fc
    add b
    rst $38
    ld hl, $00c0
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    cp b
    rst $28
    and h
    nop
    rst $30
    sbc e

jr_036_4c2e:
    di
    ld a, [bc]
    pop hl
    inc [hl]
    pop bc
    ld e, $40
    pop hl
    ld h, c
    ld e, [hl]
    pop hl

jr_036_4c39:
    ld a, $f1
    daa

jr_036_4c3c:
    rst $38
    nop
    and h
    inc a
    db $e4
    inc a
    db $f4
    inc e
    db $fc
    ld [$f400], sp
    jr jr_036_4c1a

    jr z, jr_036_4c3c

    ld c, b
    cp b
    add b
    nop
    nop
    ld bc, $040f
    dec bc
    ld c, $09
    rrca
    ld d, b
    ld [$0040], sp
    ld hl, $c209
    add c
    add c
    nop
    ret nz

    ldh [$c0], a
    ld h, b
    ldh [rSVBK], a
    jr nz, jr_036_4c9a

    nop
    sub b
    jr @-$0e

    ld hl, sp+$78
    db $f4
    rrca
    ld [hl], h
    nop
    adc a
    ld a, d
    ld e, e
    inc sp
    inc hl
    ld [bc], a
    ld b, $04
    nop
    inc b
    ld [$1008], sp
    nop
    add $b8
    pop hl
    nop
    db $fc
    or d
    xor h
    ccf
    jr nz, @+$70

    jr nz, @+$59

    nop
    ld h, b
    ld h, a
    ld [hl], b
    rst $10
    ld [hl], b
    ld [$0f0f], sp
    nop
    rlca
    add h

jr_036_4c9a:
    inc c
    ld e, h
    jr jr_036_4c2e

    jr nz, jr_036_4ca1

    nop

jr_036_4ca1:
    ld b, b
    sub a
    ld h, e
    or $7c
    ld de, $f9f0
    nop
    cp $3f
    db $10
    dec sp
    rrca
    xor $1f
    cp c
    nop
    ld [hl], b
    rst JumpTable
    rst $20
    nop
    nop
    ld a, h
    ld a, [$0010]
    rst $38
    db $d3
    ccf
    rst $38
    db $fc
    rrca
    dec b
    add a
    nop
    add l
    rlca
    jp nz, $22c3

    ld a, $dc
    jr z, jr_036_4cce

jr_036_4cce:
    ld hl, sp+$78
    ret nc

    ldh a, [$90]
    ret c

    jr nz, @-$02

    add b
    ld b, c
    db $f4
    jr z, jr_036_4d3a

    jr nz, jr_036_4cec

    db $10
    rla
    jr nz, jr_036_4ce9

    rlca
    pop bc
    rrca
    ld [$00f8], sp
    rst $38
    adc b

jr_036_4ce9:
    add c
    cp $01

jr_036_4cec:
    rst $38
    ld b, c
    db $fd
    inc bc
    adc c
    ld b, h
    cp $21
    add b
    rst $38
    add d
    ld b, c
    jp nz, $00ff

    rst $08
    rst $38
    push af
    ld hl, sp-$6f
    ld hl, sp-$74
    ld hl, sp+$00
    adc d
    db $fc
    add a
    db $fc
    add e
    cp $81
    rst $38
    nop
    ld hl, sp-$01
    or $0f
    ld hl, sp-$10
    ld e, l
    ld a, $40
    nop
    ld b, b
    ret nz

    nop
    ld a, b
    add b
    rst JumpTable
    ldh [rDIV], a
    scf
    ld hl, sp+$78
    nop
    ldh a, [rKEY1]
    ld [bc], a
    nop
    db $10
    inc b
    nop
    jr c, jr_036_4d75

    pop bc
    nop
    ld bc, $000a
    inc bc
    dec c
    ld b, $0a
    adc h
    dec c
    sbc c
    add hl, bc
    nop

jr_036_4d3a:
    ld [$b899], sp
    sub b
    sub b
    or b
    ld hl, sp-$78
    nop
    inc e
    jr z, jr_036_4dba

    db $fc
    call c, $f5d4
    ld [hl], h
    nop
    ld [hl], a
    ld [hl], l
    ld [hl], a
    add hl, hl
    rrca
    ld a, [bc]
    nop
    nop
    nop
    ld bc, $8100
    ld bc, $8302
    add d
    add a
    nop
    inc e
    rrca
    pop af
    rst $38
    cp $07
    cp e
    db $d3
    nop
    db $fd
    sbc [hl]
    ld l, b
    or b
    ldh a, [$a0]
    ld a, b
    ret nc

    nop
    ld a, l
    ret z

    db $fd
    add l
    rst $38

jr_036_4d75:
    push hl
    cp b
    ret c

    nop
    db $10
    jr nc, jr_036_4ddc

    jr nz, jr_036_4de1

    ld b, b
    ld b, e
    pop bc
    nop
    add [hl]
    add e
    add l
    ld b, $0f
    inc b
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $8203
    ld bc, $fefd
    nop
    ld a, [hl]
    add c
    rst $38
    nop
    pop af
    nop
    db $e3
    pop hl
    inc b
    ld hl, $e111
    ldh a, [$80]
    jr nz, @+$42

    ret nz

    nop
    ret nz

jr_036_4da7:
    ldh [rP1], a
    and c
    nop
    or $28
    rst $38
    nop
    jr c, jr_036_4da7

    xor a
    sbc $a1
    xor $70
    ld a, e
    nop
    ld e, h
    adc d

jr_036_4dba:
    ld b, a
    nop
    add d
    dec de
    inc c
    db $eb
    nop
    inc e
    pop af
    ld e, $f9
    cp $08
    rrca
    jr jr_036_4dda

    rrca
    ret nc

    rst $38
    inc hl
    rst $30
    dec bc
    di
    rrca
    ld [$03fd], sp
    cp $01
    ld hl, $807f

jr_036_4dda:
    ccf
    ld b, b

jr_036_4ddc:
    ret nz

    ld hl, $e081
    rst $00

jr_036_4de1:
    add b
    jp $0080


    ret nz

    add b
    call nz, $cf80
    add b
    cp a
    ret nz

    nop
    sbc [hl]
    add sp, -$09
    ld bc, $00c1
    add b
    nop
    add b
    ldh [rNR41], a
    nop
    dec e
    cp $b8
    ldh a, [$df]
    nop
    ld c, a
    ld h, c
    ld hl, $1223
    rra
    rrca
    inc d
    nop
    add hl, bc
    sbc c
    inc b
    inc bc
    ld hl, $43c1
    jp $8700


    sub l
    rrca
    ld a, b
    ccf
    ret nz

    rst $38
    ld b, e
    nop
    ld a, a
    db $fd
    ld a, [hl]
    ld [hl], b
    and b
    ld hl, sp-$30
    add sp, $00
    db $10
    ld [hl], b
    add c
    cp c
    add $dd
    ldh [$74], a
    nop
    cp e
    rst $08
    ld a, h
    rrca
    ld c, $2d
    dec hl
    ld b, a
    nop
    ld c, a
    adc e
    adc h
    rra
    ld [$f81f], sp
    ld [c], a
    nop
    dec a
    rst $30
    dec e
    rst $38
    ldh [$1f], a
    pop af
    sbc $00
    di
    cp $27
    ld a, c
    rst $08
    pop af
    sbc a
    rst $28
    nop
    or c
    db $dd
    ld h, e
    sbc a
    or $3b
    sub $3f
    nop
    call nc, $d83f
    ld c, a
    xor b
    ld c, a
    ld [$009f], sp
    ld [$187f], sp
    inc bc
    inc c
    rrca
    ld [$801e], sp
    ld b, c
    ld h, $18
    ld a, $10
    ld a, [hl]
    db $10
    cp $10
    db $10
    ldh [rP1], a
    nop
    ld c, $20
    ld bc, $0132
    nop
    ld sp, $7402

jr_036_4e82:
    ld [bc], a
    ld [hl], d
    inc b
    ld a, a
    rlca
    nop
    rst $28
    jr jr_036_4e82

    jr nc, @-$7c

    nop
    inc hl
    nop
    nop
    inc bc
    jr nz, jr_036_4ed7

    jr nz, jr_036_4eb9

    ld b, b
    add c
    ld b, b
    nop
    pop hl
    ret nz

    ld sp, hl
    inc a
    inc c
    rlca
    inc d
    rlca
    nop
    sub [hl]
    inc bc
    adc d
    inc bc
    add e
    add hl, bc
    push bc
    add hl, bc
    ld [bc], a
    ret


    inc b
    call nz, $1f04
    ldh [rNR42], a
    rrca
    ld c, b
    ldh a, [rNR42]
    rlca
    ld sp, hl

jr_036_4eb9:
    ld hl, $fb87
    add e
    nop
    db $fd
    call c, $d8f2
    or $e8
    or $8d
    nop
    rst $10
    adc c
    db $db
    sub e
    jp nc, $f0ba

    ret nc

    nop
    ld hl, sp+$08
    jr nc, jr_036_4f50

    ld d, b
    sbc [hl]
    sub b

jr_036_4ed7:
    add a
    nop
    jr @+$37

    ld a, [bc]
    ld a, e
    ld a, $7e
    ld a, [hl]
    ld d, a
    ld b, b
    dec [hl]
    nop
    nop
    jp z, $fe04

    inc bc
    cp l
    ld b, e
    cp e
    ld b, [hl]
    adc a
    ld a, h
    ld hl, sp+$70
    add b
    ret nz

    xor a
    rra
    db $10
    add b
    sbc l
    cp [hl]
    pop af
    ld [$8ff5], a
    ld a, l
    add $7e
    ld h, a
    ld h, e
    pop bc
    add b
    nop
    ld [$0101], sp
    ld a, a
    adc a
    ld hl, sp-$68
    rst $30
    ld [hl], c
    rst $28
    jp z, $3ee5

    ld [hl], l
    sbc [hl]
    cp l
    adc $c6
    adc b
    ld [$08ff], sp
    ld a, a
    adc c
    sub b
    ld [hl], a
    call z, $3c33
    cpl
    jr c, jr_036_4f55

    ld c, e
    db $fc
    nop
    and b
    rst $38
    ld a, [$f587]
    ld c, $ef
    inc d
    rst JumpTable
    dec h
    ld b, $01
    or $0f
    jp c, $843f

    nop
    cp a

jr_036_4f3b:
    jr z, @+$79

    ld e, h
    push hl
    add $7d
    rst $30
    cp $0f
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld b, b
    ld [bc], a
    jr nc, jr_036_4f3b

    call c, Call_036_7d60

jr_036_4f50:
    jp Jump_036_6ed7


    cp h
    ld a, b

jr_036_4f55:
    add sp, $70
    ld hl, sp-$20
    ldh a, [rP1]
    ret nc

    dec d
    rlca
    rlca
    rrca
    ld a, [bc]
    rst $38
    push af
    ld [hl], l
    dec [hl]
    dec e
    rra
    inc d
    ld c, $0b
    ld [$0740], sp
    rst $20
    ret nz

    add a
    add b
    nop
    inc bc
    ld bc, $7b0e
    inc a
    rst $00

jr_036_4f78:
    ld hl, sp+$47
    ld hl, sp+$08
    jr nz, @+$01

    push hl
    ld e, $f3
    ld c, $3c
    db $d3
    rst $28
    db $f4
    rrca
    rlca
    rst $30
    dec c
    rst JumpTable
    ccf
    ld bc, $ff57
    or $35
    call z, $c77f
    ld a, a
    and h
    jr jr_036_4f78

    nop
    ld bc, $ff55
    add e
    db $fc
    add e
    db $fd
    inc bc
    db $fd
    ld bc, $0101
    inc bc
    rst $30
    inc [hl]
    nop
    cp b
    ld hl, sp-$58
    sbc b
    adc b
    sub b
    add b
    add b
    ret nz

    add a
    jp $e2c4


    jp $c003


    inc bc
    dec sp
    dec a
    inc l
    dec sp
    inc de
    ld a, [de]
    ld [bc], a
    di
    ld [c], a
    inc de
    and $23
    nop
    ld d, b
    jr @+$65

    ld [hl-], a
    or $44
    cp h
    call nz, $887c
    add sp, -$0c
    ld e, a
    or b
    ld l, $f1
    ret nz

    nop
    inc b

jr_036_4fda:
    nop
    ld [bc], a
    nop
    ld de, $0801
    ld b, e
    dec b
    ld h, e
    inc bc
    add [hl]
    inc hl
    sbc $1f
    ld h, $00
    db $ec
    ld a, a
    ld a, a
    ld [hl], a
    or $b8
    ld a, e
    ccf
    call $c77e
    db $fc
    ld b, e
    rst $38
    ld b, b
    jr nz, jr_036_4fda

    and a
    ld c, l
    sub e
    inc de
    adc c
    rrca
    adc a
    rst $30
    cp b
    ldh [$fb], a
    inc a
    rst $00
    rst $38
    dec b
    nop
    ld bc, $f3ee
    ld a, [hl]
    add e
    rst $10
    db $eb
    add [hl]
    inc bc
    ld l, $1f
    db $76
    ei
    cp [hl]
    jp $aaaa


    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    nop
    ldh [rNR10], a
    ldh a, [$30]
    inc l
    ld [hl], $e8
    dec sp
    rst $28
    dec d
    cp $07
    db $fc
    rlca
    db $fc
    ld h, h
    nop
    rrca
    dec c
    rlca
    dec de
    dec a
    ld e, $6f
    or b
    rst $38
    and b
    rst JumpTable

jr_036_5043:
    ld h, b
    rst $38
    nop
    ld bc, $0054
    add $f9
    rra
    rst $38
    rst $28
    ldh a, [rIE]
    rst $38
    cp $f0
    pop bc
    ld bc, $8400
    add b
    rst $28
    db $fc
    ld a, d
    add a
    db $f4
    ld [$10f8], sp
    jr nz, jr_036_5065

    ld b, b
    xor a
    rst $38

jr_036_5065:
    ld bc, $5455
    nop
    rst $38
    ccf
    rst $38
    ccf
    inc sp
    rst $08
    rst JumpTable
    cp [hl]
    add hl, bc
    dec b
    ld de, $ee01
    rra
    db $fd
    inc bc
    cp $ff
    di
    rrca
    rst $38
    db $fc
    inc bc
    sbc $20
    jr nz, jr_036_5043

    and b
    pop af
    call z, $c7b9
    rst $38
    add d
    rst $38
    add d
    call nz, $ccfb
    rst $28
    ret c

    ld [bc], a
    ld a, [hl+]
    rst $38
    sub $cf
    cp $3f
    adc $fb
    add hl, bc
    rst JumpTable
    ld sp, $1020
    ld [$5515], sp
    rst $38
    ccf
    db $fd
    inc hl
    db $10
    db $10
    ld [$4086], sp
    jr nc, jr_036_50ae

jr_036_50ae:
    nop
    ld d, [hl]
    sbc e
    xor [hl]
    di
    jp c, $3ce7

    rst $00
    ld [hl], h
    adc a
    add sp, $1f
    jr @+$01

    ld a, b
    rst $28
    ld d, c
    nop
    cp $23
    rla
    rlca
    db $fc
    inc bc
    inc bc
    rst $38
    ld b, $fd
    rrca
    ld sp, hl
    dec e
    ld a, [c]
    jr nz, jr_036_50d9

    ld [hl], a
    rst $38
    ld e, c
    db $dd
    rst $28
    cp l
    cp c
    cp l

jr_036_50d9:
    db $eb
    reti


    ld a, [$2393]
    ld a, [hl]
    inc a
    nop
    inc bc
    nop
    rst $28
    ld de, $a947
    ld a, a
    or d
    ld [hl], h
    adc h
    ld e, b
    cp b
    ld [hl], b
    ldh [$c0], a
    add b
    and b
    ld [$ff02], sp
    rst $38
    pop bc
    rst $38
    ld [hl], c
    ccf
    inc e
    rrca
    rlca
    inc bc
    ld bc, $0100
    dec b
    ld d, b
    ld hl, sp+$07
    db $fc
    dec bc
    db $fc
    inc c
    ld [$9088], sp
    ret c

    ldh a, [$d1]
    ld [hl], b
    ld [$8105], sp
    rst $38
    nop
    and a
    ld b, b
    ld b, d
    pop bc
    ld b, d
    pop bc
    ld b, d
    ld b, l
    jp nz, $87c6

    ld a, [hl+]
    and l
    nop
    ld bc, $8081
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    ld h, b
    ccf
    cp $83
    db $fd
    and [hl]
    ld sp, hl
    xor $ad
    cp d
    inc sp
    ld a, $1f
    ld a, [bc]
    ld a, $0d
    nop
    nop
    cp $13
    xor $35
    add sp, $5f
    ret


    sub b
    add c
    nop
    dec c
    ld c, $02
    rla
    rra
    dec e
    ld d, h
    nop
    nop
    reti


    res 1, e
    dec sp
    add b
    ld l, [hl]
    sub c
    ld a, [hl]
    and c
    call c, $dee3
    and l
    ld b, b
    ld bc, $dff8
    ei
    db $ec
    call $cdc6
    add $e1
    adc $eb
    call z, $ecdb
    rst $10
    ld a, [hl+]
    xor d
    rst $38
    cp $05
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    dec d
    ld a, [bc]
    rst $38
    adc a
    ld a, a
    ld bc, $8101
    jp $e77e


    inc a
    jr jr_036_518a

jr_036_518a:
    nop
    inc d
    dec de
    ld hl, sp-$51
    inc h
    ccf
    inc a
    rla
    sbc h
    sub a
    ld a, d
    rst $30
    sub $8f
    dec e
    dec bc
    inc d
    nop
    ld [c], a
    ld l, $f2
    ld a, $5f
    ld a, e
    push bc
    ld hl, sp-$7c
    ldh a, [$88]
    or b
    ld c, b
    sbc b
    ld [hl], b
    ld [hl], h
    nop
    ld b, b
    ld h, b
    call nz, $8088
    nop
    stop
    jr nz, jr_036_51b8

jr_036_51b8:
    ld a, [hl]
    ld h, d
    add c
    rst $38
    cp $00
    add b
    db $10
    jr nz, @+$04

    ld a, [hl-]
    ld bc, $0c3d
    inc de
    nop
    rrca
    inc c
    rlca
    rlca
    inc bc
    dec b
    inc bc
    inc b
    ld bc, $ff54
    or c
    ld [hl], b
    db $fc
    scf
    cp [hl]
    ld a, a
    ld e, l
    ld d, l
    adc h
    adc d
    ei
    cp $a8
    nop
    add a
    add c
    add c
    ld bc, $030d
    rrca
    inc bc
    adc a
    add e
    ld l, h
    rst $00
    cp e
    ld a, h
    ld d, l
    ld bc, $8000
    ret nz

    rst $38
    rst $38
    cp $01
    ld a, e
    add a
    db $fd
    cp $ff
    nop
    nop
    ld a, h
    dec c
    ld a, c
    inc c
    and $18
    cp b
    ld [hl], b
    jp nc, Jump_036_74f3

    sub d
    xor $10
    rst $38
    add hl, bc
    inc bc
    db $f4
    nop
    jr jr_036_5231

    inc d
    add hl, de
    add hl, bc
    jr jr_036_5225

    db $fc
    cp $02
    add h
    nop
    db $db
    cpl
    ld e, $34
    add hl, sp
    inc h
    dec b

jr_036_5225:
    ld bc, $0201
    ld c, $07
    rrca
    db $10
    ld b, b
    ld hl, sp-$21
    ldh a, [$e7]

jr_036_5231:
    db $fd
    cp $fb
    db $fc
    and $d8
    ldh [$d4], a
    ldh [$e8], a
    ret nz

    ld a, a
    rst $38
    nop
    pop hl
    ld e, a
    rst $38
    nop
    rst $38
    ld a, h
    ld d, b
    and b
    dec c
    dec bc
    dec bc
    ld [$050f], sp
    ld c, $06
    ld b, $0c
    rlca
    ld a, [de]
    rrca
    inc d
    nop
    pop hl
    ld [de], a
    pop af
    ld a, $fe
    ld a, a
    pop de
    ld a, a
    ret


jr_036_525f:
    rst $38
    ld b, a
    rst JumpTable
    ld h, b
    rst $28
    jr nc, jr_036_5268

    add b
    rrca

jr_036_5268:
    ret nc

    nop
    ld [hl], l
    ld hl, sp-$71
    db $fc
    ld a, [$16f9]
    ld sp, hl
    rst $38
    ldh a, [rIE]
    db $10
    ld [$c005], sp
    add b
    ld b, b
    and b
    ld b, b
    jr nz, jr_036_525f

    db $10
    ldh a, [$08]
    ld hl, sp-$79
    cp a
    ld a, a
    ld d, h
    nop
    inc b
    dec bc
    inc bc
    dec bc
    rlca
    ld [$112e], sp
    rra
    pop hl
    rst $38
    ld [bc], a
    cp $07
    db $10
    ld [$fb43], sp
    add [hl]
    sub $6a
    jp $83d1


    sbc c
    add c
    add l
    ld a, c
    add c
    rrca
    nop
    ld [bc], a
    and b
    ld hl, sp-$01
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    inc b
    inc b
    inc b
    ld [hl], b
    adc b
    ldh a, [$88]
    ld a, a
    rst $38
    nop
    cp $a8
    nop
    ld a, a
    inc b
    ld b, $05
    ld a, e
    inc b
    ld a, e
    inc c
    rst $38
    ld [$08ff], sp
    rst $30
    jr jr_036_52cc

jr_036_52cc:
    add d
    rst $38
    adc d
    db $f4
    call c, $7964
    cp b
    ld a, a
    jp $fa3c


    daa
    rst $08
    jr nc, jr_036_52ec

    inc b
    jr nz, @-$1d

    dec bc
    inc e
    ld a, [hl]
    ld sp, $b95d
    pop bc
    ld sp, hl
    sub c
    inc hl
    and e
    ld b, a
    rst $00

jr_036_52ec:
    ld c, a
    ld d, h
    nop
    ret nz

    ldh a, [$e0]
    ldh [$d0], a
    ldh [$f4], a
    ld hl, sp-$13
    sbc $af
    rst $00
    sub a
    call nz, $f0ff
    nop
    and b
    ret nz

    ld a, a
    rst $38
    rst $38
    nop
    nop
    inc bc
    ld bc, $070a
    ld e, h
    inc a
    sbc $e4
    nop
    ld h, b
    add c
    ld e, $0b
    ld a, $13
    ld a, [hl]
    inc hl
    ld e, c
    jp $01e7


    ld [bc], a
    ld bc, $0003
    ld a, [bc]
    nop
    inc a
    ld [hl], a
    sbc b

Jump_036_5325:
    ld a, a
    adc a
    ret z

    call nz, $e41c
    ld e, $e2
    adc [hl]
    ld a, [c]
    or a
    ld sp, hl
    rlca
    db $f4

jr_036_5333:
    jr nz, @+$01

    db $10
    rst $28
    ldh a, [$33]
    ld h, b
    and b
    ld h, b
    nop
    ld d, b
    ld bc, $60df
    rst $30
    jr c, jr_036_5333

    rra
    rst $38
    nop
    ld a, [hl]
    ccf
    dec c
    inc bc
    ld e, $03
    nop
    ld e, b
    add c

jr_036_5350:
    rst $28
    ld a, [de]
    cp e
    ld [hl], d
    pop hl
    jp nz, $83c1

    add e
    ld bc, $c101
    ld bc, $00c0
    add b
    ldh a, [$78]
    adc $7f
    db $fd
    inc hl
    rst $28
    ld sp, $3de3
    pop hl
    ccf
    pop hl
    ccf
    dec d
    nop
    ret nc

    ldh a, [$88]
    xor b
    ld [hl], b
    ld [hl], b
    ld d, b
    ldh a, [$30]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$a9], a
    add b
    ld bc, $0000
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    inc c
    nop
    dec hl
    nop
    rst $38
    db $10
    rst $08
    jr nc, @+$01

    jr nz, jr_036_5350

jr_036_5396:
    db $fc
    rrca
    ld [bc], a
    add c
    ld bc, $0050
    jr jr_036_5396

    rst $28
    rst $38
    add hl, bc
    ld h, e
    rrca
    inc bc
    ld b, $ad
    inc e
    ld a, b
    ldh a, [rNR41]
    ret nz

    nop
    and b
    rst $38
    push af
    ld a, e
    and a
    rst JumpTable
    sbc e
    ld h, l
    di
    db $fd
    rrca
    ld bc, $037e
    inc e
    rlca
    nop
    adc a
    rst $38
    add l
    add $eb
    jp nz, $e1f1

    xor $f0
    db $fc
    db $fd
    cp $80
    inc bc
    rst $38
    inc b
    rst $30
    inc c
    cp $fc
    and $3c
    ld h, $3c
    db $fc
    ld e, $8d
    and $05
    ld b, b
    dec b
    add sp, $07
    dec bc
    inc b
    ld [$2f19], sp
    rst $10
    rrca
    rst $30
    rrca
    rrca
    rst $38
    db $10
    rrca
    rst $38
    ld de, $00e0
    nop
    nop
    nop
    add b
    ld [$94f0], sp
    ret z

    ld b, b
    inc bc
    rst $38
    ld c, [hl]
    ld b, h
    ld hl, sp-$19
    jr c, jr_036_5475

    inc e
    dec e
    ld c, $0b
    rlca
    sub c
    ldh [$09], a
    call nc, $c080
    ldh [$c0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ei
    cp $c1
    nop
    nop
    inc e
    rlca
    inc [hl]
    rrca
    ld l, c
    ld e, $d0
    ccf
    jp hl


    ld a, $a4
    ld a, a
    dec h
    cp $67
    rst $38
    nop
    inc bc
    rst $38
    and c
    ld b, c
    pop de
    ld hl, $31c2
    adc e
    ld [hl], b
    ld e, e
    or b
    sub [hl]
    ld a, c
    ld a, e
    cp a
    ld b, b
    rra
    rst $38
    ld [hl+], a
    inc hl
    cp $92
    cp $92
    cp $92
    cp $f2
    ld a, [bc]
    inc b
    ldh [$60], a
    and b
    and b
    ld h, b
    ld b, b
    ld b, b
    ldh a, [rLCDC]
    ld a, d
    ret nz

    push de
    db $fd
    cp $24
    and b
    rlca
    rrca
    ld [$0e08], sp
    dec b
    inc bc
    nop
    nop
    xor a
    nop
    cp $01
    push de
    ld [bc], a
    nop
    add b
    ldh [$f3], a
    rst $38
    add b
    ld e, l
    db $e3
    ld a, l
    cp [hl]
    sbc a
    push af
    nop
    nop

jr_036_5475:
    rra
    rst $38
    ld a, a
    add b
    rst $38
    rst $38
    inc bc
    ld bc, $fb06
    nop
    nop
    jr c, jr_036_5492

    ld sp, hl
    rra
    rst $30
    cpl
    sbc l
    ld h, e
    inc a
    jp $857b


    rst JumpTable
    db $e3
    cp e
    ld a, a
    inc h

jr_036_5492:
    ld l, d
    add b
    ld h, b
    ld h, a
    ld l, b
    ld h, l
    ld l, c
    ld l, c
    inc bc
    add b
    ld l, b
    ld h, a
    add b
    ld c, [hl]
    ld c, a
    sub d
    nop
    ld a, [bc]
    jr c, jr_036_5510

    jr nc, @-$61

    ld a, $64
    ld l, b
    ld h, a
    ld a, $53
    ccf
    inc e
    inc c
    ld l, b
    dec [hl]
    jr nz, jr_036_54d6

    adc b
    ld b, e
    ld c, l
    ld l, d
    ld h, l
    ld c, [hl]
    ld c, a
    rra
    inc c
    jr nz, jr_036_5529

    add d
    sub h
    jr nz, @+$6a

    ld h, a
    ld [hl+], a
    ld l, b
    ld c, c
    ld a, $3f
    or l
    ld e, $0d
    ld l, b
    ld h, h
    ld [hl], $6a
    ld l, d
    ld h, a
    ld l, d
    add hl, sp
    ld c, [hl]

jr_036_54d6:
    ld c, a
    ld e, $0f
    ld e, h
    sbc l
    add b
    ld h, a
    ld c, h
    rrca
    ld l, b
    ld l, d
    ld a, $3f
    rra
    inc c
    ld h, b
    ld a, l
    and [hl]
    ld b, h
    ld l, d
    inc hl
    ld l, d
    ld c, [hl]
    ld c, a
    dec de
    inc c
    ld a, d
    dec a
    ld [hl], c
    ld a, d
    add b
    add [hl]
    ld h, h
    dec a
    ld a, $3f
    rra
    inc c
    ld b, b
    ld h, [hl]
    ld b, b
    ld h, b
    ld h, c

Jump_036_5501:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    sub b
    jp hl


    ld e, [hl]
    ld e, a
    rra
    inc c
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    add hl, hl

jr_036_5510:
    ld [hl], b
    add e
    ld b, b
    ld [hl], l
    jp hl


    ld l, [hl]
    ld l, a
    rra
    inc c
    ld [hl-], a
    ld [hl], e
    ld [hl], h
    ld a, h
    jr nz, jr_036_5590

    ld [hl], d
    jp hl


    add e
    ld l, [hl]
    cpl
    rra
    inc c
    sub c
    ld l, e
    reti


jr_036_5529:
    ret nz

    rra
    ld de, $667b
    ld l, l
    nop
    dec c
    rra
    ld de, $7d6c
    nop
    dec c
    rra
    ld de, $707c
    cp $00
    dec c
    rra
    ld l, h
    ld l, $0a
    dec bc
    ld h, b
    ld a, [bc]
    add [hl]
    ld b, l
    ld b, d
    ld c, $37
    ld c, $10
    nop
    dec bc
    db $76
    ld [$279d], sp
    add h
    ld d, e
    add hl, bc
    rra
    ld c, $0a
    dec [hl]
    ld [$fd08], sp
    inc hl
    ld a, a
    add hl, bc
    inc h
    rra
    ld c, $98
    ld a, e
    inc h
    dec h
    ld [hl+], a
    di
    ld c, c
    rra
    rrca
    cp e
    add [hl]
    ld a, [bc]
    add hl, bc
    ld h, h
    rra
    ld c, $e5
    ld d, d
    ld e, h
    sbc l
    dec bc
    ld a, [hl+]
    ld b, [hl]
    add hl, bc
    rra
    rrca
    rst $30
    ld e, b
    ld e, c
    add b
    ld b, [hl]
    ld a, [bc]
    inc hl
    rra
    inc de
    nop
    ld c, $b5
    rra
    ld c, $0c
    nop
    ld de, $401f
    inc c

jr_036_5590:
    rra
    ld [de], a
    dec c
    rra
    dec c
    ld b, a
    inc c
    rra
    ld de, $0d0e
    dec l
    ld bc, $1f0c
    ld [hl-], a
    nop
    ld c, $c0
    rra
    ld l, h
    ld b, b
    adc [hl]
    nop
    rra
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add b
    rra
    ld [de], a
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld bc, $9393
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rra
    ld [de], a
    ld [$9c9b], sp
    sbc l
    sbc [hl]
    inc a
    sub e
    sbc a
    and b
    inc b
    and c
    and d
    and e
    and h
    and l
    rra
    ld [de], a
    and [hl]
    sub h
    nop
    and a
    sub h
    sub e
    xor b
    xor c
    xor d
    xor e
    xor h
    ld [$aead], sp
    xor a
    or b
    rra
    ld [de], a
    or c
    sub e
    sub e
    nop
    or d
    sub e
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    db $10
    cp c
    cp d
    cp e
    rra
    ld [de], a
    cp h
    cp l
    sub e
    sub e
    nop
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c393

    call nz, $c520
    add $1f
    ld [de], a
    rst $00
    sub e
    ret z

    sbc a
    ret


    nop
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    ld b, b
    jp nc, $121f

    db $d3
    call nc, $93d5
    sub $d7
    nop
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    add b
    rra
    ld [de], a
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $01
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    rra
    ld [de], a
    nop
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    ld [bc], a
    or $f7
    ld hl, sp-$07
    ld a, [$1ffb]
    ld [de], a
    db $fc
    nop
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    inc b
    dec b
    ld b, $07
    ld [$1f09], sp
    ld [de], a
    ld a, [bc]
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld [$1514], sp
    ld d, $17
    rra
    ld [de], a
    jr jr_036_5699

    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $4e
    rra
    jr nz, jr_036_56ab

    db $10
    ld [hl+], a
    inc hl
    inc h
    rra
    ld [de], a
    dec h
    ld h, $27
    jr z, jr_036_5695

jr_036_5695:
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_036_5699:
    ld c, [hl]
    dec l
    ld l, $2f
    jr nz, jr_036_56cf

    ld sp, $121f
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    scf
    jr c, jr_036_56e4

jr_036_56ab:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $40
    ccf
    rra
    ld [de], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ldh [$1f], a
    ld [de], a
    nop
    jr nz, jr_036_5721

    ld bc, $6000
    nop
    nop
    dec bc

jr_036_56cf:
    rra
    inc d
    ld h, b
    nop
    ld b, b
    rst $28
    rra
    dec e
    inc e
    add hl, bc
    rra
    add hl, sp
    ld h, b
    rra
    rra
    nop
    ld a, [bc]
    rra
    db $f4
    nop

jr_036_56e3:
    ccf

jr_036_56e4:
    nop
    or $f9
    ldh [rIE], a
    call nz, $c0fb
    rst $38
    nop
    add b
    rst $38
    add c
    cp $d0
    xor a
    ret nz

    cp a
    ld [$c23d], sp
    nop
    rst $38
    ld bc, $0430
    ei
    nop
    nop
    rst $38
    ld b, e
    cp a
    ld bc, $01ff
    rst $38
    ld de, $ef21
    ld bc, $2813
    rst $00
    ld hl, sp-$40
    rst $38
    ld bc, $4010
    add b
    ld bc, $c008
    cp a
    add b
    rst $38
    and e
    ld e, a
    ld [$ff00], sp

jr_036_5721:
    add b
    ld a, a
    inc sp
    ld b, b
    rst $38
    rst $38
    ld h, b
    inc h
    rst $38
    ld b, b
    ld bc, $0208
    db $fd
    rrca
    jr nc, jr_036_5739

    rst $38
    ld hl, $de21
    rra
    ld d, b
    rst $38

jr_036_5739:
    rst $38
    ld a, a
    add b
    dec bc
    jr nz, jr_036_5760

    db $10
    rst $28
    rrca
    db $10
    db $eb
    db $f4
    ret nz

    ccf
    dec c
    db $10
    sub d
    ld sp, $ff20
    rst $38
    dec c
    jr nz, jr_036_5759

    rst $30
    inc hl
    jr nz, @-$3c

    add hl, sp
    rst $38
    ld [bc], a
    rlca

jr_036_5759:
    jr jr_036_5778

    db $10
    ld h, a
    db $10
    inc l
    db $d3

jr_036_5760:
    add hl, hl
    jr nc, jr_036_56e3

    ccf
    db $10
    ld [bc], a
    db $fd
    rra
    rst $38
    ld bc, $00f6
    nop
    rst JumpTable
    inc d
    db $eb
    nop
    rst $38
    and b
    ld e, a
    ld bc, $f600
    inc h

jr_036_5778:
    db $db
    rst $38
    rst $38
    rst $10
    cpl
    rlca
    nop
    rst $38
    inc bc
    ld a, a

jr_036_5782:
    dec bc
    rst $30
    ld bc, $81ff
    rra
    ld a, a
    dec b
    ei
    ld [hl], b
    jr jr_036_578e

jr_036_578e:
    ld c, b
    rst $20
    db $10
    cp e
    db $10
    cp a
    jr jr_036_578e

    ld bc, $6708
    jr jr_036_5782

    ld [$108b], sp
    ld bc, $0840
    rst $30
    ld b, b
    ld a, a
    cp a
    rlca
    db $10
    dec b
    db $10

jr_036_57a9:
    ld l, l
    jr nc, @+$03

    ldh [$2b], a
    ld de, $40d5
    ld bc, $e740
    ld b, a
    jr nz, jr_036_57b8

    db $10

jr_036_57b8:
    dec h

jr_036_57b9:
    ld sp, $fd02
    dec hl
    ld b, b
    push hl
    jr nc, jr_036_57d2

    db $10
    jr nz, @+$03

    cp $07

jr_036_57c6:
    db $10
    ld bc, $90fe
    ld l, a
    and d
    nop

jr_036_57cd:
    ld e, l
    inc b
    ei
    jr nz, @-$20

jr_036_57d2:
    ld b, [hl]
    sbc c
    inc h
    ld b, $db
    add b
    ld a, a
    ld hl, $53df
    jr nc, jr_036_57e1

    db $10
    add b
    ld c, a

jr_036_57e1:
    ld a, a
    ld a, c
    ld hl, $fd82
    jp $5130


    jr nz, jr_036_5826

    db $10

jr_036_57ec:
    ld bc, $8128
    ld d, c
    ld [$bb44], sp
    nop
    rst $38
    jr nz, jr_036_57c6

    jp $f020


    ld [hl], l
    jr nz, jr_036_5782

    jr nc, @+$33

    ld de, $60b7
    db $10

jr_036_5803:
    rst $28
    jr z, jr_036_57cd

    cp $b1
    jr nz, jr_036_5823

    jr nc, jr_036_57a9

    jr nz, jr_036_585f

    jr nz, jr_036_5847

    jr nc, jr_036_57b9

    jr nc, jr_036_581f

    jr nz, jr_036_5819

    ld c, b
    db $fc
    dec hl

jr_036_5819:
    db $10
    ld hl, $5dda
    db $10
    ld [de], a

jr_036_581f:
    db $ed
    ld l, b
    nop
    add a

jr_036_5823:
    jr nz, jr_036_5803

    ld b, b

jr_036_5826:
    cp a
    db $10
    rst $28
    and b
    inc b
    ld e, a
    add b
    ccf
    ld [$3be7], sp
    jr nz, jr_036_5835

    db $fd
    db $10

jr_036_5835:
    rlca
    ei
    rra
    ld sp, hl
    add hl, bc
    add e
    ld a, a
    add b
    rst $38
    nop
    and b
    rst JumpTable
    ret nc

    rst $28
    ret nc

    rst $28
    ldh [rIE], a

jr_036_5847:
    add hl, de
    db $fc
    rst $38
    ldh [$6f], a
    add hl, bc
    cpl
    ld b, c
    ld a, [bc]
    pop af
    ld l, c
    db $10
    add sp, $61
    jr nz, jr_036_57ec

    ld d, b
    ld de, $0110
    dec sp
    ld [$fe0f], sp

jr_036_585f:
    inc e
    jr nz, @-$0a

    dec sp
    ld c, e
    add hl, hl
    db $fc
    rst $38
    ld a, d
    add a
    ld [hl], e
    inc b
    ld a, a
    ld a, [hl]
    ret


    db $fc
    add [hl]
    ld e, l
    ld d, c
    add b
    rst $38
    ld a, h
    ldh [$79], a
    ld c, d
    ld h, e
    ld sp, $2021
    add hl, bc
    db $10
    jp $0510


    cp d
    add b
    ld l, e
    ld [$0bfa], sp
    ldh a, [rLY]
    cp e
    ld bc, $02fe
    ld b, d
    cp l
    ld [$10f7], sp
    xor a
    adc l
    ld [de], a
    adc b
    db $10
    scf
    ld h, b
    sbc a
    ld h, a

jr_036_589b:
    db $10
    sub b
    ld l, a
    ld bc, $08ff
    ld hl, $03df
    db $fd
    ld bc, $8310
    ld a, l
    ld bc, $ff29
    inc bc
    and c
    ld [$01e0], sp
    jr jr_036_589b

    rst $30
    dec b
    db $10
    add c
    xor a
    jr nz, jr_036_58c2

    rst $30
    ld [$14f7], sp
    db $e3
    dec b
    db $10
    add b

jr_036_58c2:
    ld h, l
    jr nz, jr_036_58cc

    rst $38
    ld a, [bc]
    ld sp, hl
    dec bc
    ld sp, hl
    ld e, $00

jr_036_58cc:
    ldh a, [rNR32]
    ldh a, [rNR32]
    ld hl, sp-$07
    reti


    ld hl, sp+$00
    db $fc
    rst $20
    rst $28
    and a
    and h
    ld a, [hl-]
    ld a, l
    cp $00
    ld e, c
    ld a, [hl-]
    call c, $9cee
    jp $8002


    nop
    add c
    add b
    nop
    nop
    nop
    stop
    add b
    nop
    adc b
    call nz, $04c4
    ld b, d
    jr nc, jr_036_5916

    jr jr_036_58f9

jr_036_58f9:
    rrca
    cp b
    cpl
    inc e
    daa
    inc l
    rla
    ld a, [de]
    rlca

jr_036_5902:
    rla
    ld e, $13
    ld e, $13
    xor l
    ld d, b
    ld h, e
    add hl, de
    inc bc
    add hl, bc
    ret nz

    rrca
    ld b, d
    add hl, bc
    ld [$08fb], sp
    rst $30
    ld b, d

jr_036_5916:
    cp l
    nop
    ld e, $ff
    ld [hl+], a
    call nc, $2a85
    pop hl
    jr z, jr_036_5902

    ld [de], a
    ld bc, $0310
    ld bc, $07ff
    ei
    daa
    db $db
    rlca
    ei
    ld bc, $0310
    rrca
    di
    rra
    rst $38
    pop bc
    cp $8f
    inc hl
    ld bc, $3810
    ret nc

    rst $28
    ld e, a
    ld b, c
    rst $10
    ld b, c
    sbc a
    ld h, e
    inc e
    ldh a, [$3c]
    nop
    ldh [$3f], a
    pop hl
    dec l
    di
    rra
    ld a, [c]
    rrca
    nop
    db $fc
    dec b
    db $fc
    dec c
    ld sp, hl
    ei
    adc [hl]
    db $eb
    nop
    adc c
    db $eb
    adc c
    ld [$ba89], a
    ret


    jp nc, $e900

    ld [c], a
    cp c
    ld a, [c]
    ld sp, hl
    ld [bc], a
    ld [hl+], a
    sub c
    nop
    ld [bc], a
    add b
    pop bc
    jp $dff5


    rst JumpTable
    sbc h
    nop
    rst JumpTable
    sub $9d
    sub h
    sub [hl]
    ld e, $13

jr_036_597b:
    ld a, [de]
    nop
    rla
    inc c
    rla
    inc b
    rra
    xor h
    rra
    ld a, b
    add hl, bc
    rst $38
    ld [$785f], sp
    adc l
    ld a, [de]
    ld b, c
    cp [hl]
    or e
    jr nz, @-$6c

    or l
    ld de, $ed02
    and a
    jr nz, @+$22

    sbc a
    ld e, a
    jr jr_036_597b

    ldh [$09], a
    ld [$1823], sp
    db $d3
    jr nc, jr_036_59ab

    rst $38
    dec bc
    rst $30
    dec b
    ld h, b

jr_036_59a9:
    ei
    ld h, c

jr_036_59ab:
    ld hl, $1449
    ldh a, [$ef]
    add sp, -$09
    rst $38
    nop

jr_036_59b4:
    rst $38
    ld hl, sp-$01
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [$f0]
    rst $10
    add hl, bc
    dec l
    db $10
    sbc a
    ld d, b
    ld bc, $0230
    rst $38
    rlca
    db $fd
    nop
    inc bc
    cp $0d
    rst $38
    dec c
    ld sp, hl
    dec e
    pop af
    nop
    dec e
    pop af
    rra
    pop af
    ccf
    pop hl
    db $db
    rst $20
    nop
    ld a, a
    rst $38
    and d
    pop bc
    ld a, [$f851]
    pop af
    nop
    cp l
    ldh a, [$7d]
    ldh a, [$f8]
    sub h
    ld a, b
    call nc, Call_036_7c00
    call nc, $f4fc
    or a
    sub a
    ld de, $00b7
    inc [hl]
    xor h
    inc a
    xor h
    jr c, jr_036_59a9

    cp b
    inc l
    nop
    xor b
    inc l
    xor h
    jr z, jr_036_5a7d

    xor a
    ldh a, [rIE]
    rra
    and b
    ld a, a
    jr nz, @+$03

    jr c, jr_036_59b4

    sub e
    cp a
    db $10
    ld a, l
    add hl, bc
    rlca
    ld a, [bc]
    rst $38
    rrca
    jr nz, jr_036_5a97

    ld [hl+], a
    adc c
    db $10
    ld sp, $ad11
    inc h
    pop af
    ld hl, $1289
    ld bc, $2f60
    add sp, -$09
    ld hl, $df0a
    ld bc, $0710
    db $10
    ld l, a
    ld b, c
    inc bc
    ld h, h
    add d
    rlca
    ld b, h
    rla
    ei
    rrca
    ld sp, hl
    rlca
    rst $08
    ld a, [de]
    inc bc
    add b
    dec d
    jr jr_036_5ac0

    db $fc
    xor $f2
    rst JumpTable
    pop hl
    ei
    inc b
    ret nz

    or c
    ret nz

jr_036_5a4e:
    ldh a, [$80]
    ld bc, $f410
    sbc h
    nop
    ld d, b
    ld a, h
    ld [hl], h
    jr c, jr_036_5a4e

    cp b
    db $f4
    sbc b
    nop
    inc d
    ld hl, sp-$2c
    ld a, b
    ld c, h
    ld hl, sp+$2c
    jr z, jr_036_5a77

    inc l
    jr z, @+$0a

    ld bc, $2808
    ld [$0808], sp
    ld [bc], a
    jr @+$0a

    inc d
    ld [$3f60], sp

jr_036_5a77:
    ld bc, $0040
    cp $01
    db $10

jr_036_5a7d:
    ld h, a
    jr c, jr_036_5ae7

    ld hl, $606f
    ld c, c
    ld de, $12d7
    ld d, l
    inc hl
    ld [$f740], sp
    ld e, c
    ld b, c
    ld [hl+], a
    rst $38
    ld b, [hl]
    ei
    ld e, a
    db $fd
    jr jr_036_5ad5

    di

jr_036_5a97:
    rrca
    adc e
    ld [$082b], sp
    rst $38
    and b
    rst $38
    nop
    ld [hl], a
    rst $38
    xor [hl]
    di
    rlca
    ld sp, hl
    adc b
    rst $38
    ld bc, $bfcc
    sbc h
    rst $38
    sbc h
    rst $38
    cp [hl]
    ld bc, $9a08
    nop
    db $10
    ld [$5bf5], sp
    inc sp
    rra
    dec d
    rst $38
    ld h, a
    ld c, b
    ld c, $d0

jr_036_5ac0:
    rrca
    dec bc
    add e
    ld [hl-], a
    jr jr_036_5ad1

    jr jr_036_5acb

    db $fc
    cpl
    ret nc

jr_036_5acb:
    add b
    ld [hl], l
    db $10
    ldh [rIE], a
    add hl, de

jr_036_5ad1:
    rst $38
    rla
    rst $28
    cp [hl]

jr_036_5ad5:
    ld b, b
    ld b, c
    inc e
    db $10
    or b
    ret nz

    or b
    ret nz

    db $ed
    di
    nop
    ld hl, sp+$00
    ld a, b
    add b
    ld hl, sp-$80
    cp b

jr_036_5ae7:
    ret nz

    nop
    cp b
    ret nz

    db $ec
    ld hl, sp-$24
    ld hl, sp-$34
    ld hl, sp+$00
    adc [hl]
    ld hl, sp-$76
    db $fc
    adc d
    db $fc
    adc [hl]
    db $fc
    db $10
    add [hl]
    db $fc
    inc d
    db $d3
    ld [$180c], sp
    inc c
    jr jr_036_5b05

jr_036_5b05:
    inc e
    ld [$081c], sp
    ld [$480c], sp
    inc c
    jr nz, jr_036_5b2f

    ccf
    ld bc, $6140
    ccf
    ld a, [hl]
    ccf
    sub b
    inc b
    ld l, a
    nop
    rst $38
    add d
    ld a, a
    db $fd
    dec bc
    rst $38
    jr nc, @-$76

    ld a, l
    dec hl
    ld h, b
    rst $38
    ei
    dec sp
    inc e
    nop
    rst $38
    rrca
    nop
    ldh a, [$3f]

jr_036_5b2f:
    ret nz

    ld [hl], b
    rst $38
    sbc a
    rst $28
    ccf
    nop
    jp $877e


    cp $0f
    push af
    dec de
    rst $30
    nop
    rra
    db $dd
    ccf
    xor c
    ld a, [hl]
    ld a, l
    rst $38
    db $db
    nop
    rst $28
    rst $10
    ei
    sbc $e7
    jp hl


    cp $6f
    nop
    cp $80
    ld a, a
    rrca
    pop af
    ld c, c
    rst $38
    db $e3
    nop
    dec e
    rlca
    ld sp, hl
    ld l, e
    or l
    dec l
    di
    ld [hl], e
    nop
    db $fd
    dec e
    rst $20
    ld hl, sp-$01
    cp $81
    rst $38
    nop
    ret nc

    rst $38
    ld hl, sp-$02
    db $fd
    rst $38
    rst $38
    rst JumpTable
    inc b
    cp a
    db $d3
    rst $28
    ld h, b
    sbc a
    call nz, $aa20
    ld d, l
    inc h
    ld d, l
    xor d
    rst JumpTable
    db $10
    inc bc
    db $fc
    ld b, b
    ld sp, $a05f
    pop bc
    sbc l
    ld e, $50
    add hl, sp
    push af
    ld a, [bc]
    nop
    rst $38
    ld [$480f], a
    nop
    ld bc, $03fe
    db $fd
    ld e, [hl]
    and e
    ld a, c
    ret nz

    nop
    ld a, c
    ret nz

    pop af
    ld b, b
    pop af
    ld b, b
    ld [hl], b
    pop bc
    nop
    sub b
    pop hl
    and c
    pop bc
    pop hl
    ld bc, $ccb7
    db $10
    rst $38
    add h
    ei
    ld bc, $ff08
    add h
    ld a, a
    add h
    nop
    rst $38
    inc b
    rst $38
    inc b
    ld b, h
    inc c
    ld b, h
    inc c
    nop
    ld c, h
    inc b
    ld c, h
    inc b
    inc c
    ld b, h
    ld [$0044], sp
    adc c
    ld b, h
    or [hl]
    ld c, l
    ld l, [hl]

jr_036_5bd2:
    ld sp, $307f
    nop
    or a
    ld l, b
    rst $20
    ld c, b
    rst $08
    ld c, b
    dec e
    jp z, $9200

    sbc l
    or c
    cp a
    rst $30
    ld hl, sp-$11
    rra
    add d
    ld c, a
    jr nz, @+$6c

    sub l
    nop
    rst $38
    cp $5f
    ld [$00de], sp
    pop hl
    rst JumpTable
    ccf
    rst $38
    ld bc, $05fa
    inc hl
    nop
    rst JumpTable
    inc a
    rst $38
    adc a
    ldh a, [$7a]
    rst $38
    cp e
    and b
    dec d
    ld [$8bdf], sp
    add hl, de
    rst $08
    ldh a, [rIE]
    nop
    ld [hl-], a
    nop
    rst $38
    ld a, [$d4e5]
    ei
    jp hl


    rst $30
    cp c
    ld b, b
    ld b, [hl]
    sbc e
    jr nz, jr_036_5bd2

    ld l, [hl]
    db $e3
    call c, $d02f
    nop
    ld c, c
    or [hl]
    ld d, a
    xor b
    rst $38
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    nop
    ld [$fdf5], a
    cp $ca
    push af
    add b
    ld sp, hl
    inc de
    ret nz

    rst $38
    rst $00
    rst $38
    rst $30
    ld hl, sp-$41
    nop
    ld b, b
    ld a, a
    add b
    xor e
    ld d, h
    ld d, l
    xor d
    ld a, [bc]
    inc b
    push af
    dec b
    ei
    db $fd
    cp $bb
    jr nc, jr_036_5cab

    and a
    ld bc, $5cac
    cp $ff
    db $fc
    inc bc
    cp $fc
    add hl, bc
    nop
    ei
    inc c
    db $d3
    ld [hl-], a

jr_036_5c60:
    or a
    ld sp, hl
    ld c, [hl]
    pop hl
    ld [bc], a
    adc a
    nop
    rst $20
    add b
    ld [hl], d
    pop bc
    nop
    db $fd
    ld c, $ff
    jr jr_036_5c60

    jr nc, @+$01

    ret nz

    nop
    rst $38
    add b
    cp $01
    ei
    rlca
    db $ec
    rra
    nop
    pop bc
    ld bc, $01c3
    rst $08
    ld b, $8f
    inc e
    nop
    cp e
    ld a, h
    rst $08
    ld hl, sp+$4f
    ld hl, sp+$47
    ld hl, sp+$10
    db $db
    ld h, $df
    ld b, c
    rst $28
    ld [de], a
    rst $28
    inc de
    nop
    rst $38
    ld [de], a
    cp $11
    rst JumpTable
    db $10
    or a
    ld c, l
    nop
    xor d
    ld e, l
    ld a, [hl+]
    sbc $de
    cp h
    cp $b8
    nop

jr_036_5cab:
    db $fc
    ldh [$fc], a
    add b
    ld hl, sp+$00
    ld l, a
    rst $38
    nop
    cp a
    ret nz

    ld a, a
    add b
    ld a, l
    ld b, e
    dec sp
    ld a, h
    ld [bc], a
    jr nc, jr_036_5cdf

    jr nc, @+$12

    nop
    jr @+$2d

    rst $38
    nop
    nop
    ld sp, hl
    rlca

jr_036_5cc9:
    di
    db $fc
    adc b
    nop
    ld [$0070], sp
    jr nz, @+$25

    dec l
    db $fd
    inc bc
    db $e3
    db $fc
    ld e, $82
    nop
    ld [bc], a
    ld c, l
    jr nz, jr_036_5d03

    dec l

jr_036_5cdf:
    db $eb
    ret nz

    dec de
    add hl, bc
    ld h, b
    ccf
    ret nz

    sbc a
    ld a, a
    cp $01
    sbc b
    ld hl, $00ff
    ld hl, $ffa5
    rst $38
    rra
    ld h, c
    ldh [$87], a
    ld b, c

jr_036_5cf7:
    ld a, l
    add d
    rst $38
    ret nz

    ld h, c
    nop
    di
    rst $08
    db $f4
    ld hl, sp-$40
    ret nz

jr_036_5d03:
    ldh a, [$e0]
    jr nz, jr_036_5cf7

    ld hl, sp+$75
    ei
    rlca
    and $f8
    ld [bc], a
    ld a, c
    nop
    jr nz, @+$25

    ld hl, $20ad
    nop
    and c
    add b
    jr nz, jr_036_5cc9

    ld [hl], c
    cp $ff
    db $10
    rrca
    add hl, bc
    jr nc, @+$08

    ld b, $4b
    ld h, b
    ldh a, [rIE]
    ld bc, $00ff
    add c
    ld a, a
    ld b, c
    ccf
    ld b, d
    ccf
    ld b, e
    ld a, $80
    ld hl, $7e05
    cp a
    ldh a, [$1f]
    ldh a, [$9f]
    inc b
    ld [hl], b
    adc a
    ld [hl], b
    ccf
    ldh [$61], a
    rra
    ldh [rP1], a
    rst JumpTable
    db $10
    rl b
    pop de
    ld [$08c0], sp
    ld b, b
    ret z

    pop bc
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    ld a, [bc]
    ld [$0008], sp
    inc c
    inc b
    inc b
    nop
    ld bc, $0606
    inc bc
    ld [bc], a
    inc bc
    ld bc, $2203
    add b
    or l
    dec bc
    rlca
    cp $ff
    adc e
    ld a, a
    ret z

    jr jr_036_5db3

    xor b
    ld e, a
    dec hl
    ld [hl-], a
    ld l, a
    rra
    ld a, [bc]
    nop
    rst $30
    adc a
    rlca
    rst $38
    rst $38
    ld a, d
    add a
    call nz, $0300
    inc bc
    ld bc, $7fef
    ld [hl], l
    cp $ef
    nop
    rst $38
    ld hl, sp-$01
    xor b
    rst $38
    reti


    xor $d1
    ld b, b
    cp $27
    ld a, a
    adc a
    dec hl
    rra
    sub h
    rst $28
    nop
    push af
    rrca
    adc l
    rlca
    add [hl]
    rlca
    inc bc
    rlca
    nop
    ld e, d
    and l
    rst $38
    rst $38
    dec e
    xor $4a
    cp a
    nop
    ld a, b

jr_036_5db3:
    adc a
    jr z, @-$1f

    ld c, b
    rst $38
    sbc b
    rst $38
    ld bc, $fefd
    add sp, -$10
    ret nz

    ret nz

    add b
    ld hl, $8086
    adc e
    add a
    add b
    nop
    and b
    ld h, a
    cp a
    ld c, h
    rlca
    dec a
    jr nz, jr_036_5dd1

jr_036_5dd1:
    ld hl, $0360
    nop
    inc b
    cp [hl]
    ld a, a
    rst JumpTable
    ldh [rIE], a
    db $dd
    dec c
    inc bc
    nop
    ld a, a
    rst $38

jr_036_5de1:
    db $f4
    jr c, jr_036_5de1

    ccf
    pop hl
    ld a, $00
    add a
    ld a, h
    add [hl]
    ld a, l
    sbc d
    ld a, l
    cp $f9
    add b
    ld hl, $798e
    or $f9
    sub l
    ld a, e
    ld a, a
    ld b, d
    ret nz

    ld h, c
    cp a
    ret nz

    rst $38
    add b
    ld hl, $807f
    inc hl
    nop
    adc b
    ld [$0884], sp
    adc b
    inc b
    db $10
    adc h
    inc b
    ld b, $41
    ld [bc], a
    inc b
    ld bc, $1806
    ld bc, $0001
    ld hl, $0b00
    ld d, b
    cp a
    ldh a, [rLCDC]
    sbc a
    ld hl, $9ef1
    ld sp, $f1de
    ld e, [hl]
    ld hl, $7e61
    ld hl, $0385
    add e
    ld bc, $1061
    inc bc
    ld bc, $4102
    nop
    ld bc, $7eb1
    nop
    sub c
    cp $b3
    ld a, h
    db $d3
    ld a, h
    sub e
    db $fc
    ld b, b
    ld a, [c]
    ld b, c
    jp nc, $02fc

    rlca
    ld b, $03
    ld [hl], b
    rlca
    add c
    daa
    ld h, b
    ldh a, [$3f]
    ld [hl], c
    cp $15
    ld sp, $f1fe
    ld b, c
    pop hl
    ld hl, $23ff
    ld [hl+], a
    cp [hl]
    rst $38
    add hl, hl
    cp a
    rst $38
    and b
    pop bc
    ret nz

    nop
    rst $38
    rst $30
    inc c
    ccf
    inc e
    rst $28
    db $f4
    rst $08
    ld [bc], a
    inc b
    adc a
    inc b
    adc l
    ld b, $8b
    ld hl, $2107
    rst $38
    nop
    ld bc, $800d
    and d
    ld a, h
    jp nz, $2841

    call nz, $2178
    push bc
    ld b, c
    ret


    ld [hl], b
    sbc l
    ld b, b
    ld [hl], e
    ld hl, $f31c
    dec l
    ld a, [c]
    ccf
    ld [c], a
    add l
    ld h, c
    add hl, sp
    and $ff
    nop
    ld h, c
    cp $03
    add hl, bc
    nop
    rlca
    ld [bc], a
    add a
    ld [bc], a
    inc bc
    ld [bc], a
    add c
    ld [bc], a
    ld d, l
    ld bc, $0125
    ld h, b
    nop
    ld b, b
    add b
    add c
    ld b, b
    ret nz

    add c
    ld h, c
    ld a, [hl]
    ld hl, $617e
    ld a, $a1
    ld hl, $8121
    ld de, $003e
    ld bc, $c0e1
    jr nz, jr_036_5f28

    jp nc, $b2fc

    db $fc
    ld a, [c]
    db $fc
    add b
    ld h, l
    jp nc, Jump_036_72bc

    cp h
    sub d
    db $fc
    inc bc
    and d
    add b
    ld [bc], a
    ld b, c
    rlca
    inc bc
    ld b, $41
    pop hl
    ld d, $ff
    db $e3
    db $fd
    ld hl, $43a3
    ld hl, $0473
    db $fd
    or e
    db $fd
    pop bc
    cp $61
    and c
    sbc $98
    ld hl, $fe81
    ld hl, $8729
    ld [bc], a
    add a
    ld b, d
    inc bc
    ld hl, $0207
    dec b
    inc bc
    ld hl, $4007
    ld bc, $7f21
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    nop
    ld a, a
    db $e4
    sbc e
    ld a, [hl]
    scf
    ld sp, hl
    cp a
    db $d3
    dec b
    rst $38
    cp $08
    pop af
    adc b
    ld b, c
    adc d
    ld bc, $2409
    ld e, a
    db $e4
    ld hl, $c47f
    ld hl, $c877
    ld b, b
    ld a, a

jr_036_5f28:
    ld b, c
    ccf
    ret z

    rst $38
    nop
    cp $00
    call $0a03
    ld hl, $0100
    ld hl, $8022
    daa
    add b
    add e
    adc b
    nop
    ldh [rP1], a
    ld [hl], b
    add b
    add sp, $00
    add b
    ldh a, [$80]
    ld hl, sp-$80
    ld [hl], h
    add b
    cp b
    inc e
    ld b, b
    db $fc
    ld b, b
    ld d, h
    ret nz

    ld a, [hl+]
    ld h, b
    nop
    inc b
    jr nz, jr_036_5f57

jr_036_5f57:
    ld sp, $111e
    ld bc, $0809
    rra
    inc b
    jr @+$11

    ld [bc], a
    ld bc, $8103
    add c
    inc bc
    db $10
    add d
    inc bc
    add e
    ld b, c
    sub d
    db $fc
    jp nc, $00fc

    di
    db $fc
    inc sp
    db $fc
    ld sp, hl
    cp $b9
    cp $01
    call c, $89fe
    rst $38
    rlca
    inc bc
    ld [bc], a
    ld [hl+], a
    ld h, b
    rlca
    inc hl
    jr nz, jr_036_5f94

    rlca
    dec e
    rrca
    call $f613
    or e
    db $fd
    dec a
    ld [hl], e
    db $fc
    inc hl
    ld b, c

jr_036_5f94:
    ld bc, $f9bc
    cp $ff
    rrca
    pop hl
    sbc $21
    nop
    jp $e3fc


    db $dd
    di
    db $ed
    pop af
    rst $38
    sub b
    ld h, b
    rlca
    ld bc, $8721
    ld bc, $8147
    ld [bc], a
    add a
    add c
    rst $00
    add c
    rst $30
    pop hl
    cpl
    ld a, h
    nop
    rst $38
    ld a, c
    cp $ff
    cp $9d
    di
    ldh [rDIV], a
    rst $38
    ret


jr_036_5fc4:
    or $2f

jr_036_5fc6:
    ret nc

    cpl
    adc d
    pop af

jr_036_5fca:
    add h
    pop hl
    adc e
    pop af
    ld [hl], e
    add c
    cpl
    rst $30
    adc b
    jr z, jr_036_5fc4

    sub b
    ld hl, $41ff
    rst JumpTable
    or b
    inc a
    ld c, b
    ld hl, sp+$2f
    rst $38
    nop
    pop hl
    and $01
    cpl
    ld b, b
    rra
    ld l, $40
    ld [$0888], sp
    ld c, b
    ld [$8c06], sp
    jr @+$60

    jr jr_036_6073

    ld e, h
    jr nz, @+$7c

    nop
    ld b, b
    ld a, l
    ld b, b
    ld e, [hl]
    jr nz, jr_036_603b

jr_036_5ffe:
    jr nz, jr_036_603e

    ld [de], a
    jr nz, @+$01

    ld hl, sp+$6f
    nop
    jr nz, @+$23

    and b
    ld bc, $6020
    jr nc, jr_036_5fc6

    jr nc, jr_036_5fca

    ld a, h
    ld l, a
    ld hl, $0f08
    ld hl, $0f06
    ld c, $07
    jr nz, jr_036_603c

    inc b
    rlca
    ld l, a
    add [hl]
    inc bc
    add d
    rlca
    add a
    ld bc, $6c06
    sbc [hl]
    jp c, $2ce4

    call c, $016f
    ld c, b
    adc a
    rrca
    rlca
    ld bc, $0001
    and b
    ld b, b
    add b
    cpl
    ld a, b
    adc h

jr_036_603b:
    db $10

jr_036_603c:
    ld hl, sp-$30

jr_036_603e:
    ldh [$81], a
    ld a, [hl+]
    jr nz, jr_036_6063

    ld [hl], b
    jr nz, jr_036_5ffe

    ld [hl], b
    cpl
    nop
    ld sp, hl
    rrca
    ld sp, $070f
    inc bc
    ld bc, $0301
    rlca
    ld bc, $070b
    ccf
    rrca
    cpl
    add hl, sp
    ret nz

    nop
    ld c, $00
    ld a, [c]
    ei
    ei
    pop af

jr_036_6062:
    ld a, [c]

jr_036_6063:
    ei
    ld a, [$94f8]
    dec b
    jr nz, jr_036_6062

    ld sp, hl
    rlca
    stop
    nop
    ld c, b
    or $f7
    ld [bc], a

jr_036_6073:
    db $f4
    push af
    or $f7
    cp $ff
    dec b
    jr nz, @-$02

    ld [hl], b
    db $fd
    rlca
    db $10
    rra
    ld d, b
    scf
    jr nz, @+$4a

    ld c, c
    ld hl, sp-$07
    and [hl]
    dec b
    db $10
    ldh a, [$0d]
    ld [$f1fb], sp
    rra
    ld d, b
    scf
    jr nz, jr_036_60ed

    add hl, de
    ld e, c
    db $fc
    db $fd
    dec b
    db $10
    dec c
    db $10
    db $f4
    push af
    rra
    ld d, b
    add l
    dec a
    db $10
    add b
    and e
    rrca
    ld e, $00
    jr jr_036_60ba

    ld a, a
    sub b
    nop
    cp $ff
    and e
    add b
    ld c, $81
    add l
    add c
    ld [$810d], sp
    dec c

jr_036_60ba:
    ld c, $7f
    sbc b
    di
    rrca
    ld e, $00
    dec c
    add c
    adc d
    dec c
    add h
    add [hl]
    add c
    dec c
    sub b
    ld b, c
    db $10
    ld a, [$7ff8]
    ld [hl], b
    ld c, $81
    dec c
    add a
    and [hl]
    dec a
    ld [$418a], sp

jr_036_60d9:
    jr nz, jr_036_60d9

    rst $38
    rra
    ld d, b
    cpl
    db $10
    ld c, $22
    dec c
    adc e
    dec a
    ld [$8684], sp
    adc d
    ccf
    ld [$1880], sp

jr_036_60ed:
    and e
    add b
    and e
    rra
    ld d, b
    cpl
    db $10
    ld c, $84
    dec c
    ld de, $8585
    adc e
    ld e, l
    db $10
    and e
    and d
    dec e
    nop
    ld [$1fc4], sp
    ld d, b
    cp e
    db $10
    add h
    adc d
    dec c
    ld e, h
    ld [$0e84], sp
    sbc [hl]
    dec sp
    ld [$881b], sp
    nop
    ld [$501f], sp
    cp e
    db $10
    ld [hl], a
    ld [$a881], sp
    ld h, d
    ld [$3d0e], sp
    ld [$1f1c], sp
    ld [hl], b
    ld a, [c]
    di
    ld c, $ac
    inc e
    ld [$2284], sp
    db $10
    ld c, $3d
    jr nz, jr_036_6151

    ld h, b
    or $f7
    db $dd
    dec de
    add hl, hl
    dec e
    add hl, bc
    and e
    rra
    adc b
    rst $38
    db $10
    ld [hl], l
    add hl, bc
    di
    or a
    db $10
    rst $08
    ccf
    sub b
    ld [hl], c
    ld hl, $f7f6
    cp c
    jr jr_036_61cb

    jr jr_036_616f

    ld h, b

jr_036_6151:
    ld [hl], c
    ld hl, $83fe
    add hl, bc
    dec sp
    jr z, jr_036_6178

    ld [hl], b
    ld [hl], c
    ld hl, $0983
    rra
    xor b
    ld de, $2a0a
    ld a, [bc]
    jr nz, jr_036_6190

    dec bc
    dec hl
    and l
    ld l, $0b
    dec bc
    ld h, a
    stop

jr_036_616f:
    dec bc
    ld c, a
    ld d, e
    inc c
    ld [hl], b
    inc c
    and l
    and a
    rra

jr_036_6178:
    rrca
    ld a, [hl+]
    dec bc
    dec hl
    rrca
    dec a
    rrca
    dec bc
    jr nz, jr_036_61c7

    ld l, l
    rra
    rrca
    dec bc
    cpl
    ccf
    inc c
    inc c
    add hl, sp
    inc hl
    ld h, l
    ld l, l
    inc hl
    rra

jr_036_6190:
    dec c
    ld [bc], a
    ld a, [hl+]
    dec bc
    dec hl
    dec c
    dec l
    dec c
    add b
    dec l
    jr z, jr_036_61c9

    dec bc
    ld a, a
    ld a, [hl+]
    rra
    dec c
    ld a, [bc]
    inc c
    inc c
    di
    ld e, c
    sbc a
    jr nz, jr_036_61d4

    ld a, [bc]
    dec bc
    ld sp, $0e1f
    jp z, Jump_036_7920

    ld a, [bc]
    dec l
    ld b, h
    dec l
    jr nz, jr_036_61c2

    xor [hl]
    jr nz, jr_036_61e5

    rra
    dec c
    dec bc
    ccf
    ld a, [hl-]
    ld a, h
    dec c
    ld e, d

jr_036_61c2:
    ld a, [bc]
    ld h, h
    inc c
    ld b, b
    rra

jr_036_61c7:
    inc c
    dec bc

jr_036_61c9:
    jr nz, @+$2d

jr_036_61cb:
    jr nz, jr_036_61fa

    dec l
    sbc d
    dec c
    ld a, [bc]
    dec l
    ld c, l
    ld l, l

jr_036_61d4:
    scf
    dec c
    dec l
    ld hl, $0c1f
    inc c
    ld b, b
    ld d, d
    ld e, h
    db $fc
    ld [hl+], a
    sbc l
    ld b, b
    rra
    inc c
    sub c

jr_036_61e5:
    dec sp
    dec l
    ld a, [bc]
    rst $08
    ld h, a
    inc hl
    dec l
    ld c, $40
    rra
    dec c
    ld d, h
    add b
    ld b, a
    ld a, [bc]
    rra
    ld d, $0a
    ld a, [bc]
    ld l, l
    ld d, l

jr_036_61fa:
    add c
    ld e, a
    rst $10
    ld a, l
    rra
    db $10
    ld c, l
    ldh [$6d], a
    rra
    ld d, $a0
    dec sp
    rst JumpTable
    ld h, c
    rra
    inc de
    dec bc
    ld e, h
    ld b, e
    ld e, l
    jr nz, jr_036_6230

    inc de
    ld b, [hl]
    dec bc
    ld a, a
    ld a, [hl+]
    dec bc
    dec hl
    ei
    rra
    db $10
    inc c
    rlca
    inc c
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec h
    rra
    jr jr_036_6266

    adc [hl]
    nop
    rra
    add b
    add c
    add d
    add e
    add h
    add l
    nop

jr_036_6230:
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add b
    rra
    ld [de], a
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld bc, $9796
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    rra
    ld [de], a
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld [bc], a
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    rra
    ld [de], a
    xor e
    nop
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c

jr_036_6266:
    or d
    or e
    inc b
    or h
    or l
    or [hl]
    or a
    cp b
    rra
    ld [de], a
    cp c
    cp d
    nop
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c308

    call nz, $c6c5
    rra
    ld [de], a
    rst $00
    ret z

    ret


    nop
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    db $10
    jp nc, $d4d3

    rra
    ld [de], a
    push de
    sub $d7
    ret c

    nop
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [rNR41], a
    pop hl
    ld [c], a
    rra
    ld [de], a
    db $e3
    db $e4
    push hl
    and $e7
    nop
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ld b, b
    ldh a, [$1f]
    ld [de], a
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $00
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $80
    rra
    ld [de], a
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld bc, $0706
    ld [$0a09], sp
    dec bc
    inc c
    rra
    ld [de], a
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld [bc], a
    dec d
    ld d, $17
    jr jr_036_6303

    ld a, [de]
    rra

jr_036_62ec:
    ld [de], a
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_6316

    ld [hl+], a
    inc hl
    inc b
    inc h
    dec h
    ld h, b
    ld h, $27
    rra
    ld [de], a
    jr z, jr_036_632a

    nop
    ld a, [hl+]

jr_036_6303:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_633b

    ld [$3332], sp
    inc [hl]
    dec [hl]
    rra
    ld [de], a
    ld [hl], $37
    jr c, jr_036_6315

jr_036_6315:
    add hl, sp

jr_036_6316:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    db $10
    ld b, c
    ld b, d
    ld b, e
    rra
    ld [de], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    ld c, b
    ld c, c

jr_036_632a:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    jr nz, jr_036_6382

    ld d, c
    rra
    ld [de], a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop

jr_036_633b:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld [hl], b
    ld e, a
    rra
    ld [de], a
    nop
    jr nz, jr_036_63a9

    ld bc, $0000
    jr z, jr_036_634f

jr_036_634f:
    rla
    or b
    nop
    ld c, b
    rra
    nop
    inc sp
    ld e, $50
    rra
    nop
    inc [hl]
    rst $38
    ld e, a
    nop
    ld b, b
    cp a
    nop
    ld c, l
    jr nz, jr_036_62ec

    rra
    nop
    dec l
    ld a, a
    ldh a, [rLCDC]
    ld bc, $0055
    nop
    ld a, $40
    rst $38
    nop
    ld [$fcf3], sp
    rst $28
    ldh a, [$df]
    ldh [rP1], a
    sbc d
    ret nz

    add l
    ret nz

    ret nz

jr_036_637f:
    add b
    rst $38
    rst $38

jr_036_6382:
    ld [$e094], sp
    rst $38
    nop
    ld bc, $7f20
    nop
    cpl
    ld bc, $ff00
    rst $38
    rst $08
    ccf
    db $eb
    rla
    ld de, $c830
    ld bc, $0008
    ld [$8069], sp
    rrca
    ld h, b
    cp [hl]
    ld a, a
    reti


    nop
    ld a, $fb
    inc e
    rst $30
    jr @+$01

jr_036_63a9:
    db $10
    rst $28
    ld b, b
    db $10
    rrca
    db $10
    ld h, e
    add b
    ld b, b
    nop
    and b
    nop
    ld b, h
    ldh a, [$1f]
    jr c, jr_036_63f1

    rrca
    nop
    nop
    jr jr_036_637f

    nop
    ld b, b
    ld a, [$080f]
    cp $ff
    sbc a
    ldh [$7f], a
    nop
    inc d
    rra
    nop
    rlca
    ld bc, $0008
    rrca
    ld [$906c], sp
    ret nz

    ld c, l
    ld c, b
    rrca
    ld [$3063], sp
    ldh [rNR41], a
    and b
    ld h, b
    ld bc, $60ce
    ld a, a
    ret nz

    cp a
    ret nz

    pop af
    adc a
    ld [$cf11], sp
    ccf
    ld bc, $0827
    add b

jr_036_63f1:
    nop
    db $f4
    dec a
    db $10
    add b
    rra
    ld [$fefd], sp
    ld a, d
    db $fc
    ld d, b
    ld h, b
    nop
    inc h
    ld h, b
    ld b, c
    ld d, e
    jr @+$01

    rst $38
    dec b

jr_036_6407:
    db $10
    rrca
    nop
    ld d, b
    cp a
    xor l

jr_036_640d:
    ld [$af1f], sp
    jr @+$01

    ld a, a
    ld l, a
    rra
    nop
    and a
    rrca
    rst JumpTable

jr_036_6419:
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $fe34
    ld bc, $107f
    nop
    ld d, b
    add b
    nop
    jr z, jr_036_6419

    add b
    inc bc
    xor b
    ret nz

    rst JumpTable
    ldh [$f3], a
    db $fc
    sbc c
    jr nz, jr_036_6434

jr_036_6434:
    jr nz, jr_036_6446

    jr nz, jr_036_6438

jr_036_6438:
    ret nc

    ld h, c
    ld [$0007], sp
    inc b
    inc b
    nop
    inc c
    inc c
    inc e
    inc c
    inc e
    inc d

jr_036_6446:
    inc [hl]
    inc h
    ld a, [hl+]
    ld h, b
    inc h
    sub e
    db $10
    dec hl
    ld hl, $8038
    and e
    jr jr_036_64b3

    db $f4
    ld h, a
    ld [$10bb], sp
    ld a, a
    jr @+$03

    jr c, jr_036_640d

    rla
    ld [$0007], sp
    ld b, b
    db $fd
    bit 2, b
    nop
    xor l
    nop
    ld b, b
    nop
    sbc d
    ret nz

    add hl, bc
    jr @-$75

    ld [$f602], sp
    ld c, $fa
    ld [$007f], sp
    ld bc, $0213
    and $02
    db $fc
    inc [hl]
    sbc h
    ld d, b
    ret z

    ld b, c
    jr nz, jr_036_6407

    ld a, a
    ld e, b
    call nc, $de00
    nop
    ld d, l
    ld a, [hl+]
    ld de, $0448
    inc bc
    ld [$1101], sp
    ld [$8d5f], sp
    add hl, de
    ld b, c
    ccf
    pop hl
    ld [$000f], sp
    ld h, a
    nop
    rst $30
    ld e, l
    jr z, @+$13

    db $fd
    nop
    cp $05
    db $10
    inc bc
    ei
    rlca
    jp hl


    db $10
    db $10
    rst $30
    nop
    ld c, e
    ld c, l

jr_036_64b3:
    ld [$e0df], sp
    rst $38
    ret nz

    dec d
    rst JumpTable
    ret nz

    sbc a
    ld bc, $bf08
    ld bc, $f818
    dec hl
    jr z, @+$42

    ld a, [$0823]
    rst $28
    ld e, $f8
    ld sp, $6247
    nop
    ld [c], a
    ld b, d
    ldh [rSCX], a
    db $e3
    ld b, c
    or c
    ld b, c
    nop
    ld [hl], c
    pop bc
    or l
    and c
    rst $10

jr_036_64dd:
    rst JumpTable
    ld d, b
    nop
    ld b, d
    db $fc
    xor l
    jr c, jr_036_64dd

    rlca
    rst $28
    cp $75
    db $10
    xor $ab
    adc e
    add hl, sp
    add b
    add a
    jr z, @-$2a

    rrca
    jr z, @+$08

    adc d
    ld de, $1800
    ld b, b
    ld [$087d], a
    ccf
    ret nz

    ld a, [hl]
    rst $38
    ld c, b
    jr jr_036_6504

jr_036_6504:
    jr c, jr_036_6516

    jr nc, jr_036_6528

    dec h
    jr nz, jr_036_6579

    jr nz, jr_036_650d

jr_036_650d:
    rrca
    ld h, b
    cp a
    ld b, b
    ld a, a
    ret nz

    ld a, [bc]
    nop
    ld b, b

jr_036_6516:
    ld l, [hl]
    add hl, hl
    ld [$027d], sp
    ei
    ld b, $ff
    ld b, $00
    rst $30
    ld a, [bc]
    ld a, [$7a0b]
    nop
    ld a, h
    nop

jr_036_6528:
    ld a, h
    ld hl, sp+$63
    ld [$10a9], sp
    ld bc, $cb10
    jr nz, jr_036_6534

jr_036_6533:
    ld b, b

jr_036_6534:
    sbc a
    nop
    ld [hl], h
    rst JumpTable
    dec c
    ld c, b
    dec h
    add hl, bc
    add hl, bc
    jr nc, @+$09

    or c
    ld [$ff02], sp
    nop
    ld [bc], a
    jp $e200


    nop
    or $00
    rst $28
    ld [$7f00], sp
    add b
    cp $cd
    ld de, $ff01
    add e
    nop
    cp $81
    cp a
    add c
    cp [hl]
    add c
    cp [hl]
    add b
    nop
    ld a, [hl]
    add d
    ld a, $82

jr_036_6564:
    ld a, [hl]
    add d
    ld h, b
    ret nz

    nop
    add d
    add c
    rrca
    rrca
    jr nc, jr_036_659f

    ld a, h
    ld h, b
    nop
    rst $38
    ld d, b
    ld a, [hl]
    adc c
    cp $87
    inc e

jr_036_6579:
    jr jr_036_657b

jr_036_657b:
    jr nc, jr_036_6533

    ldh [$e8], a
    cp b
    ld l, b
    jr z, @+$2a

    nop
    adc e
    ld b, c
    jp $e3c3


    db $e3
    ld b, $03
    add h
    cp e
    ld b, c
    ret nz

    add b
    ld b, b
    ld b, b
    add hl, bc
    db $10
    ld b, b
    add b
    nop
    ccf
    ld h, b
    rrca
    jr nc, jr_036_65dc

    db $10
    dec sp

jr_036_659f:
    inc e
    jr nc, jr_036_65e1

    rra
    rrca
    db $10
    xor c
    ld a, [bc]
    ld bc, $02fe
    cp $00
    inc b
    rst $38
    inc b
    ccf
    call nz, $0001
    rlca
    nop
    inc bc
    adc d
    adc h
    jr c, jr_036_65ca

    inc hl
    jr nz, @+$61

    nop
    ld b, e
    cp h
    call z, $b8d0
    cp $7f
    ret nz

    inc c
    add b
    rra
    nop

jr_036_65ca:
    ld hl, $083d
    nop
    db $10
    jr c, jr_036_65d1

jr_036_65d1:
    nop
    ld a, e
    adc c
    cp l
    ld a, c
    sbc b
    dec c
    cp $02
    ld b, h
    dec a

jr_036_65dc:
    adc c
    add hl, bc
    rlca
    nop
    inc bc

jr_036_65e1:
    xor l
    jr nz, jr_036_6564

    cp a
    nop
    ret nz

    ld a, a
    ld b, b
    ld l, a
    jr nc, @-$07

    inc a
    rst $28
    ld d, b
    ld a, [hl+]
    db $db
    ld d, b
    cp $23
    add hl, bc
    db $fd
    inc bc
    cp $03

jr_036_65f9:
    jr nz, @+$01

    inc b
    dec c
    db $10
    cp a
    nop
    and a
    nop
    ld d, e
    nop
    nop
    ei
    add [hl]
    cp a
    ld h, [hl]
    rst $28
    sbc [hl]
    rst $38
    nop
    ld b, d
    rst $38
    ld [hl+], a
    db $fd
    inc de
    ld a, [$fb0d]
    jr jr_036_6623

    rst $38
    ld bc, $0aa7
    ld bc, $fd08
    rlca
    push af
    ld [bc], a
    rrca
    jp hl


jr_036_6623:
    sbc a
    di
    ld a, a
    db $fc
    or a
    ld a, [bc]
    cpl

jr_036_662a:
    nop

jr_036_662b:
    rst JumpTable
    pop af
    db $e3
    ld hl, $0041
    ld bc, $c081
    dec a
    ld a, [bc]
    ld c, e
    jr z, jr_036_65f9

    cpl
    jr nc, jr_036_665b

    db $10
    rra
    nop
    inc c
    ld c, e
    ld b, $d3
    ld d, e
    ldh a, [$71]
    ldh a, [rP1]

jr_036_6648:
    jr c, jr_036_662a

jr_036_664a:
    jr z, jr_036_6648

    jr jr_036_664a

    ld [$00e8], sp
    jr jr_036_662b

    jr nc, jr_036_669d

    ret nz

    ret c

    adc b
    rrca
    nop
    db $10

jr_036_665b:
    rla
    jr jr_036_6669

    inc b
    rrca
    inc b
    rra
    nop
    inc b
    dec e
    rlca
    ld [hl], b
    rra
    di

jr_036_6669:
    inc e
    rst $10
    nop
    jr c, @-$23

    inc a
    cp a
    ld h, [hl]
    ld a, l
    db $e3
    rst JumpTable
    nop
    ldh [rNR22], a
    sbc b
    rst $20
    db $fd
    rst $38
    dec c
    rst $38
    nop
    dec b
    db $fd
    rrca
    ldh a, [$30]
    ret nz

    ld h, b
    rst $00
    nop
    add b
    add h
    add e
    db $e4
    ld [hl], b
    db $ed
    ld h, b
    cp $00
    ld b, c
    db $fd
    jp nz, Jump_036_467b

    rst $38
    ld b, h
    di
    nop
    ld c, h
    rst $38
    ret


    ld h, b

jr_036_669d:
    nop
    jp nz, $8c00

    jr nz, jr_036_66a3

jr_036_66a3:
    ei
    ld bc, $f709
    ld c, $bb
    ld a, h
    rst $28
    ld [$039b], sp

jr_036_66ae:
    nop
    ld h, b
    and a
    dec bc
    sub c
    nop
    ld sp, $1000
    ld [hl], b
    jr nc, jr_036_66ae

    ret nc

    or $10
    db $e3
    nop
    dec h
    ld [hl-], a
    ld h, d
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc de
    or e
    nop
    add hl, bc
    ld sp, hl
    add hl, bc
    db $fd
    add hl, bc
    rst $38
    add hl, bc
    ld a, a
    add b
    db $eb
    jr jr_036_6753

    jr nz, jr_036_6715

    jr nz, jr_036_6707

    db $10
    rra
    nop
    db $10
    sbc a
    db $10
    add l
    nop
    add e
    nop
    rst $10
    ret nz

    sbc a
    add hl, bc
    cp a
    ld sp, $06fe
    rst $38
    inc b
    rst $30
    inc c
    nop
    rst JumpTable
    inc h
    push af
    ld c, $d4
    cpl
    xor d
    ld d, a
    nop
    ld d, [hl]
    xor e
    ld l, e
    rra
    cpl
    rra
    scf
    rrca
    nop
    rla
    rrca
    db $db
    rlca
    ei
    rlca

jr_036_6707:
    ld e, c
    add a
    nop
    ld c, c
    add a
    nop
    add b
    add l
    add b

Jump_036_6710:
    adc d
    add b
    ld b, b
    rst $10
    ld b, l

jr_036_6715:
    ld [$f0ef], sp
    cp a
    ret nz

    ld a, [hl]
    add l
    jr jr_036_674b

    inc bc
    ld a, a
    rst $10
    ld de, $283f
    or $ff
    ret c

    nop
    ld [hl], b
    call c, Call_036_7f50
    ldh a, [$bf]
    ld [hl], b
    rst $38
    ld b, b
    db $10
    dec de
    add hl, bc
    rlca
    ld a, [$3e27]
    inc b
    ld a, d
    nop
    inc b
    ld hl, sp+$08
    add sp, $10
    db $d3
    jr nc, @+$77

    nop
    ldh [$e7], a
    jr nz, @-$2f

    ld h, b
    ld [de], a
    dec c

jr_036_674b:
    ccf
    nop
    dec b
    ld a, a
    rlca
    rst $38
    rlca
    ld a, [c]

jr_036_6753:
    dec c
    db $fd
    nop

jr_036_6756:
    ld a, [bc]
    db $eb
    ld e, $9e
    ld a, a
    inc bc
    add d
    add h
    nop
    ld [bc], a
    inc b
    ld b, $4c
    inc b
    xor b
    inc b
    rst $38
    nop
    ld [$ac5b], sp
    and a
    ld e, h
    ld a, [hl]
    ld c, e
    ccf
    nop
    ld c, a
    ld a, a
    dec hl
    sub $3a
    ei
    rla
    rst $20
    nop
    ld a, $ce
    ld a, a
    ld l, a
    ld a, [$4cf7]
    rst JumpTable
    nop
    pop bc
    dec bc
    rst $00
    add a
    rst $08
    add $82
    inc bc
    nop
    add e
    inc bc
    ld bc, $8102
    rst $38
    ld [hl], b
    sbc a
    nop
    ldh a, [rIE]
    ldh a, [$7f]
    jr z, jr_036_6756

    sub h
    rra
    ld [$be94], sp
    dec h
    add hl, de
    pop de
    ld [$09ff], sp
    rst $30
    nop
    add hl, bc
    rst $28
    ld de, $13fe
    cp a
    ld [hl], d
    rst $38
    nop
    rst $38
    add c
    nop
    sub a
    jr @-$1f

    ld [$00cb], sp
    inc c

Jump_036_67bb:
    rst $28
    rrca
    db $ec
    ld [$08f6], sp
    ei

jr_036_67c2:
    nop
    inc b
    rst $38
    add b
    db $f4
    dec bc
    ld [$b015], a
    db $10
    ld c, a
    add b
    rst $38
    ld a, [hl]
    add hl, bc
    rrca
    ret z

    rrca
    db $ec
    ld h, b
    rrca
    jr z, @+$0b

    ld bc, $5528
    xor e
    add hl, sp
    rst $00
    ld d, l
    ld [$0dab], sp
    add e
    inc c
    ld bc, $0d28
    sbc a
    cp h
    nop
    ld de, $2190
    ld a, a
    add [hl]
    db $fd
    add hl, bc
    pop af
    nop
    ld de, $b2c0
    ld h, b
    ldh [$e0], a
    ld d, b
    ld [hl], b
    nop
    sub b
    ld [hl], a
    adc a
    ccf
    jr nz, jr_036_67c2

    xor h
    ccf
    nop
    jr nz, jr_036_6818

    xor a
    jr jr_036_6832

    ld a, a
    jr nz, @+$01

    nop
    ld b, b
    ld a, a
    add b
    rst JumpTable
    pop af
    sbc a
    ld [hl], b
    cp a
    nop

jr_036_6818:
    ld d, b
    xor $19
    db $fd
    dec bc
    or $0e
    cp $00
    inc b
    ldh a, [$0c]
    db $ed
    add $fb
    daa
    cp a
    db $10
    ld a, a
    and b
    ret nz

    ld l, c
    inc sp
    ld [hl], l
    db $e3
    add l

jr_036_6832:
    jp $f300


    pop hl
    dec bc
    inc c
    dec d
    ld [bc], a
    rlca
    ld bc, $0a20
    ld bc, $0a61
    rst $38
    add c
    rst $38
    db $e3
    rst $38
    nop
    cp a
    ld a, [hl]
    add sp, $1c
    add sp, $18
    add sp, -$68
    nop
    ld a, a
    ret c

    sbc a
    cp $97
    or $ef
    push hl
    nop
    ld b, l
    adc h
    add hl, bc
    ld [$0809], sp
    dec de
    ld [$ff00], sp
    ld [$8080], sp
    pop bc
    ld [bc], a
    rst $38
    rlca
    nop
    ld sp, hl
    sbc c
    rst $38
    call c, $adbd
    or a
    or d
    nop
    rst $28
    call z, $1a09
    inc sp
    ld [de], a
    and $25
    nop
    sbc a
    rst $08
    db $fd
    di
    rst $08

jr_036_6882:
    add b
    adc a
    nop
    ld bc, $0081
    ld h, a
    dec sp
    rst JumpTable
    db $ec
    cp a
    db $dd
    dec c
    nop
    or a
    ld hl, sp-$09
    rra
    rst $38
    ld [$08cf], sp
    add b
    ld h, a
    ld hl, $20df
    or a
    ld a, b
    ld sp, hl
    cp $ef
    nop
    jr nc, jr_036_6882

    ld h, e
    rst $28
    rrca
    ld hl, sp+$0f
    add sp, $00
    rra
    ldh a, [$1f]
    call nc, $ec3f
    ccf
    ld c, h
    nop
    rst $38
    adc h
    rst $38
    ld hl, $8fdf
    rst $38
    ld [hl], b
    add b
    ld [hl+], a
    ld [$ff23], sp
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    nop
    pop hl
    ld hl, $6160
    ld b, b
    ld bc, $40c0
    ld de, $0080
    add b
    and c
    ld [$0b01], sp
    add a
    db $eb
    ld [de], a
    nop
    bit 6, h
    call nz, $c03b
    ccf
    ld h, b
    sbc a
    add hl, bc
    add sp, -$69
    db $f4
    adc e
    push af
    ld hl, $7f80

jr_036_68ed:
    ld d, [hl]
    stop
    dec sp
    db $fc
    ld d, b
    ldh [$fc], a
    ld [$b840], sp
    nop
    sbc b
    ld [hl], b
    jr jr_036_68ed

    ld l, $f0
    cpl
    ldh a, [$08]
    ld a, a
    ldh a, [$3f]
    jr nc, @-$33

    ld b, h
    add b
    nop

jr_036_690a:
    ldh [$b4], a
    pop bc
    dec c
    dec bc
    dec [hl]
    dec bc
    inc bc
    jr nz, @+$19

    call $af0c
    nop
    nop
    rst JumpTable
    ld a, b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    rst $30
    jr c, jr_036_6922

jr_036_6922:
    xor e
    ld h, a
    and b
    ld b, b
    ret nz

    ld b, b
    nop
    ret nz

    jr nz, @+$01

    inc b
    add hl, sp
    inc c
    ld bc, $07f8
    push hl
    ld hl, sp+$10
    nop
    nop
    ld [bc], a
    ei
    inc c
    rst JumpTable
    ret nc

    or [hl]
    sbc b
    nop
    cp l
    adc [hl]
    cp [hl]
    sub d
    cp $94
    db $fc
    sub h
    ld a, [bc]
    ld a, h
    ret c

    cp b
    ld a, b
    ld c, e
    jr nz, jr_036_6950

    ld a, c

jr_036_6950:
    dec bc
    inc bc
    add b
    ld b, c
    ld e, $0f
    ld [$043f], sp
    ld a, l
    ld b, $fb
    jr nc, jr_036_6964

    db $fc
    db $ed
    dec c
    rst $28
    dec e
    ld a, a

jr_036_6964:
    rst $38
    ccf
    rst $38
    jr nz, jr_036_69a8

    rst JumpTable
    ld bc, $ff08
    rra
    ld [hl], a
    sbc a
    rst $38
    jr nz, jr_036_690a

    inc c
    db $d3
    ld [$ff8c], sp
    adc a
    rst $38
    adc l
    nop
    ei
    db $d3
    ld a, [c]
    ld [c], a
    jp nz, $82c2

jr_036_6983:
    ld hl, sp+$20
    ldh [$ec], a
    rst $38
    add hl, bc
    rst $30
    ld sp, hl
    add $da
    ld l, h
    nop
    ld l, h
    jr nc, jr_036_69aa

    ld [$8f00], sp
    sbc a
    add e
    nop
    add a
    inc bc
    add e
    ld bc, $0303
    ld bc, $3001
    ld bc, $0103
    ld [$0c5d], sp
    pop bc

jr_036_69a8:
    cp $c1

jr_036_69aa:
    rst $38
    xor b
    sbc l
    ld a, [bc]
    rst $38
    dec a
    dec c
    ld a, a
    add hl, hl
    ld c, $84
    add b
    and d
    inc b
    nop
    ld l, e
    add b
    db $db
    add b
    ld sp, hl
    ld a, [bc]
    ld b, b
    rst $28
    nop
    jr nc, jr_036_6983

    jr c, @-$33

    inc e
    ld [hl], l
    ld c, $6a
    nop
    rra
    ei
    ld e, $e9
    rra
    or b
    rrca
    ret nc

    ld b, b
    ccf
    cp c
    ld [hl-], a
    rst JumpTable
    ldh [$fd], a
    ld e, $df
    pop hl
    ld [bc], a
    ccf
    rst $38
    cp $01
    ei
    rlca
    and a
    inc d
    cp $01
    inc bc
    push af
    ld c, $e7
    ld hl, sp-$01
    and b
    ld l, e
    ld d, $65
    pop hl
    dec sp
    ld [$2827], sp
    inc bc
    ld [bc], a
    ld sp, hl
    ld [$2157], sp
    inc a
    nop
    rst $28

Call_036_6a00:
    ldh a, [$f8]
    db $10
    rst $38
    rla
    db $fd
    ld e, $00
    rst $38
    inc e
    ei
    inc c
    ld hl, sp+$0c
    ld hl, sp+$08
    nop
    ldh a, [$08]
    rrca
    nop
    cp e
    inc b
    ld a, e
    db $e4
    nop
    rst JumpTable
    inc [hl]
    rst $38
    ld [$0cff], sp
    ld l, a
    inc e
    jr nz, jr_036_6aa3

jr_036_6a24:
    jr jr_036_6a41

    ld e, a
    nop
    rst $28
    rra
    rst $30
    sbc e
    nop
    ld l, l
    db $db
    rst JumpTable
    ld l, c
    ld a, [c]
    dec l
    rst $30
    dec l
    nop
    rst $38
    ld b, l
    rst $38
    add h
    rst $38
    add h
    add d
    add b
    nop
    add [hl]
    ld [bc], a

jr_036_6a41:
    inc b
    inc c
    ld a, [de]
    ld [$70ec], sp
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    ccf
    ret nz

    ld sp, $040e
    add b
    nop
    jr nz, jr_036_6a5d

    inc b
    call z, $f808
    db $10
    inc bc
    add e
    nop

jr_036_6a5d:
    ld [$070b], sp
    cpl
    rra
    dec b
    ldh [rNR10], a
    nop
    ld [$6580], sp
    dec [hl]
    ei
    add l
    ld a, e
    jp z, $f42c

    ld e, $40
    db $fc
    nop
    rst JumpTable
    jr nc, @-$11

    ld e, $e4
    sbc a
    inc sp
    ld a, a
    nop
    jr jr_036_6a8e

    ld [$0807], sp
    cpl
    jr c, jr_036_6a24

    ld bc, $9f70
    ld h, e
    db $dd
    or l
    cp $02
    ld b, c

jr_036_6a8e:
    db $10
    ld bc, $00ff
    ld b, c
    db $eb
    rst $38
    jp c, $006f

    ld c, $06
    add [hl]
    ld c, $0b
    xor [hl]
    ld [hl], d
    rst $38
    jr nz, jr_036_6ad4

    rst $38

jr_036_6aa3:
    inc hl
    cp a
    jr nz, jr_036_6ad6

    jr nc, jr_036_6ac8

    nop
    jr nc, @+$20

    ld de, $191f
    rst $28
    add hl, bc
    di
    nop
    dec c
    rst $38
    dec b
    xor $1c
    db $ec
    ld l, h
    ld c, b
    inc b
    ret z

    adc b
    add b
    add b
    nop
    ld b, b
    ld bc, $0081
    ld bc, $101f

jr_036_6ac8:
    rrca
    ld [$0c0b], sp
    rrca
    nop
    inc c
    rra
    ccf

jr_036_6ad1:
    ld a, h
    adc $fb

jr_036_6ad4:
    jr @+$7d

jr_036_6ad6:
    nop
    jr jr_036_6ad1

    db $10
    ldh [$30], a
    ret nz

    ld h, b
    add c
    inc b
    ret nz

    rra
    add b
    rst $38
    nop
    ld hl, $03fd
    nop
    scf
    jr @+$61

    jr nc, jr_036_6b5f

    ccf
    db $fc
    jr nz, jr_036_6af3

    sbc h

jr_036_6af3:
    ld h, b
    cp $40
    rst $38
    add b
    ld a, a
    dec [hl]
    ld [bc], a
    ld a, a
    ld a, a
    rst $38
    ld [c], a
    db $fc
    nop
    ld b, b
    inc bc
    ld [$3f00], sp
    nop
    rst $38
    ld hl, $fb84
    add h
    nop
    ld a, e
    add a
    cp [hl]
    ld b, h
    ld a, h
    ld c, b
    ldh a, [$58]
    nop
    ldh a, [$50]
    ldh [$60], a
    rst $38
    ld b, b
    rst $38
    ldh [rP1], a
    sbc l
    inc sp
    cpl
    ld e, $36
    inc c
    ld a, $08
    nop
    inc e
    ld [$080d], sp
    ldh [rLCDC], a
    ret nz

    add b
    nop
    add a
    nop
    rra
    nop
    dec a
    inc bc
    ld [hl], a
    rrca
    nop
    rst $38
    rra
    rst $20
    scf
    ld c, $01
    rst $38
    nop
    add b
    ld hl, $f07f
    sbc a
    ret z

    db $eb
    call nz, $06c7
    db $e4
    ldh [$e6], a
    inc bc
    cp $90
    ld b, c
    jp nz, $3f00

    pop af
    rrca
    ld sp, hl
    rlca
    ld [hl], b
    ccf
    add b
    add b
    rst $08

jr_036_6b5f:
    inc bc
    rst $38
    cp $ff
    db $fc
    rlca
    inc bc
    adc b
    ld [hl+], a
    ld hl, sp+$0f
    ldh a, [rNR42]
    ld e, a
    ldh [$9f], a
    inc de
    ldh [$3f], a
    ret nz

    ld hl, $fff7
    ccf
    ld hl, $d503
    xor d
    xor d
    push de
    ld a, a
    add b
    ld hl, $004a
    add e
    ld a, l
    jp $f13e


    ld c, l
    cp [hl]
    xor e
    db $10
    ld d, a
    rst $38
    nop
    ld h, c
    db $e3
    ld bc, $81fe
    add b
    dec [hl]
    ld d, a
    add sp, -$16
    push de
    push hl
    ld a, d
    jr nc, jr_036_6b9d

jr_036_6b9d:
    rst JumpTable

jr_036_6b9e:
    db $fc
    adc a
    rra
    jr c, jr_036_6b9e

    inc e
    db $ed
    nop
    sbc [hl]
    or a
    rst $08
    pop hl
    ld a, a
    rra
    cp $05
    nop
    cp $0f
    db $fc
    ld a, [$d10c]

jr_036_6bb5:
    jr nc, jr_036_6c18

    nop
    ldh a, [$db]
    sub b
    xor a
    jr c, jr_036_6bb5

    ld l, h
    cp $04
    ld b, e
    cp a
    pop bc
    rst $38
    nop
    ld bc, $bf0c
    ret nz

    add b
    dec bc
    ld a, [bc]
    cp $00
    ld sp, hl
    nop
    ei
    rlca
    or $00
    ld h, b
    sbc a
    ld d, [hl]
    adc [hl]
    dec de
    sbc e
    dec sp
    inc hl
    nop
    dec sp
    rst $20
    ld a, a
    rst $00
    rst $38
    ld b, a
    cp $1b
    nop
    inc c
    rst $30
    inc c
    db $fd
    ld b, $ff
    ld [hl+], a
    ld e, [hl]
    nop
    and c
    cp $c0
    jr @-$7e

    nop
    nop
    jp Jump_036_6710


    jp $2147


    rst $28
    ld b, a
    rst $38
    ld a, a
    ld bc, $7fbf
    ld a, a
    ccf
    ccf
    rra
    ld [c], a
    add b
    nop
    and $e2
    jp nz, $e4e6

    call nz, $cccd
    ld [bc], a
    pop af
    ld hl, sp-$07
    rlca

jr_036_6c18:
    db $fd
    inc bc
    ld hl, $00ff
    add hl, hl
    ld [hl], l
    xor a
    rst $38
    rst $38
    and a
    jp $0c00


    nop
    inc b
    rst $38
    cp $28
    ret nz

    inc h
    ei
    nop
    ld l, b
    nop
    ccf
    ret nz

    rra
    ldh [rNR34], a
    db $eb
    ld b, d
    adc c
    ld c, l
    inc bc
    rst $38
    sbc b
    ldh [$3f], a
    cp a
    nop

jr_036_6c41:
    ret nz

    adc a
    ldh a, [$73]
    db $fc
    ld sp, hl
    cp $82
    db $10
    db $fc
    ldh a, [$80]
    dec l
    rlca
    inc bc
    cp $01
    ld b, b
    rst $38
    ld b, c
    ld sp, hl

jr_036_6c56:
    ld [bc], a
    and a
    ld [bc], a
    rrca
    inc e
    jr nz, jr_036_6c56

    ld [hl], b
    ld sp, $87fb
    ld a, a
    add b
    rst $38
    ld b, b
    nop
    ld [hl], l
    db $fc
    inc bc
    rst $38
    ld [bc], a
    db $fc
    ld b, $00
    rra
    rst $38
    rst $38
    pop hl
    cp [hl]
    pop bc
    ld a, h
    add e
    add b
    dec hl
    or d
    ld c, $5e
    ld d, $71
    inc hl
    cp h
    nop
    add e
    cp b
    rlca
    jr jr_036_6c94

    db $10
    rra
    ld bc, $0f10
    rrca
    ld [bc], a
    ld hl, $03be
    ld l, a
    ldh a, [rP1]
    ccf
    rst $38

jr_036_6c94:
    ld a, h
    jp $80ff


    rst $38
    nop
    add b
    ld h, c
    ld a, a
    add b
    sbc h
    ld a, a
    ldh [rIE], a
    inc hl
    nop
    db $fc
    xor a
    ld [hl], b
    rst $10

jr_036_6ca8:
    ld e, b
    rst $08
    ld e, a
    and c
    nop
    ld b, b
    rst $20
    jr nz, jr_036_6cdf

    db $fc
    db $fc
    jr c, @-$26

    nop
    jr nc, jr_036_6ca8

    jr nc, jr_036_6d1a

    ldh a, [rSVBK]
    and b
    add b
    inc bc
    jr nz, jr_036_6c41

    ld h, b
    inc b
    inc bc
    nop
    add b
    ld h, $00
    rlca
    nop

jr_036_6cca:
    rra
    nop
    ccf
    nop
    and c
    ret nz

    sub b
    add hl, hl
    ld [bc], a
    ld bc, $f921
    rlca
    rst $30
    rrca
    nop
    ei
    dec c
    or $19
    nop

jr_036_6cdf:
    add b
    add b
    ret nz

    inc b
    ret nc

    ldh [$a0], a
    ret nz

    ret nz

    daa
    add b
    sub b
    ld a, [bc]
    adc h
    adc [hl]
    sub b
    nop
    nop
    dec c
    add b
    dec bc
    dec bc
    inc bc
    add c
    add l
    add hl, bc
    dec c
    dec bc
    ld [de], a
    rra
    inc d
    ld hl, $3f00
    ld a, h
    rra
    rst $38
    rst JumpTable
    ccf
    rrca
    rra
    jr nz, jr_036_6cca

    add b
    inc sp
    jr jr_036_6d3e

    ldh [rLCDC], a
    ldh a, [rP1]
    add b
    rst $38
    add b
    cp a
    ret nz

    pop af
    rst $38
    rlca

jr_036_6d1a:
    and c
    jr nz, jr_036_6d2c

    jr nz, jr_036_6d3e

    rrca
    ld l, a
    rra
    dec a
    nop
    cp a
    ld a, a
    rst $38
    rst $38
    ldh [$c1], a
    add b
    ret nz

jr_036_6d2c:
    ld d, b
    ld b, b
    ld [hl+], a
    add b

jr_036_6d30:
    ld [hl+], a
    xor b
    ldh a, [$da]
    db $fc
    nop
    and [hl]
    rst JumpTable
    rst JumpTable
    db $e3
    rst JumpTable
    ld a, $03
    nop

jr_036_6d3e:
    nop
    ccf
    nop
    ld e, a
    nop
    ld a, a
    nop
    cp a
    nop
    ld [bc], a
    cp $01
    sbc a
    ldh [$f8], a
    rst $38
    jr nz, jr_036_6dcf

    and b
    ld h, d
    ld a, a
    ld b, l
    rst $38
    ei
    jr nz, jr_036_6dbb

    cp h
    jp nz, Jump_036_5325

    db $fc
    db $fd
    cp $ff

jr_036_6d60:
    ld hl, $00ff
    ret nz

    ld h, b
    ldh [$60], a
    ld [hl], e
    pop af
    inc a
    di
    nop
    rst JumpTable
    jr nz, @+$01

    jr nz, jr_036_6d60

    jr nc, @+$01

    db $10
    dec b
    nop
    nop
    ld a, a
    add b
    rst $38
    ld hl, $0100
    ld de, $0100
    cp $07
    cp e
    ld a, h
    ld e, a
    ldh [$de], a
    nop
    ld sp, $30ef
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    nop
    add b
    cp $01
    ei
    rlca
    rst $28
    rra
    xor e
    ld [$d480], sp
    add b
    ret nz

    ld b, c
    ld b, b
    add b
    add b
    ld h, b
    nop
    ld h, c
    jr nz, jr_036_6d30

    ld b, $15
    nop
    xor d
    ret nc

    ld b, a
    nop
    ld a, [bc]
    ld b, b
    rrca
    dec bc
    pop bc
    ccf
    jr jr_036_6dbd

    ld d, b
    ld c, $47
    add b
    rst $08

jr_036_6dbb:
    rst $38
    rst $38

jr_036_6dbd:
    add b
    ld a, a
    ld e, b
    ret nz

    db $fc
    ld bc, $2f20
    rra
    rst $38
    dec sp
    ld d, b
    rlca
    ld a, [hl+]
    dec sp
    add hl, hl
    ld a, [hl]
    rst $38

jr_036_6dcf:
    add h
    ei

jr_036_6dd1:
    nop
    inc c
    ld [hl], c
    adc a

jr_036_6dd5:
    ld hl, sp+$07
    ld a, [hl]
    add c
    cp a
    ld bc, $7fc0
    ret nz

    rst $38
    ld h, b
    ldh a, [rIF]
    dec hl
    nop
    db $fd
    rst $38
    rrca
    rst $38
    dec bc
    db $fc
    ld [$02f8], sp
    jp z, $8d39

    ld a, e
    rra
    rst $38
    ld h, b
    or $03
    ld hl, sp-$0b
    inc bc
    inc de
    rrca
    ccf
    adc e
    ld h, b
    ld [bc], a
    ld b, [hl]
    add hl, sp
    adc $f1
    rst JumpTable
    ldh [rNR42], a
    rst $08
    db $10
    ldh a, [$f6]
    ld sp, hl
    dec l
    rst $28
    jr @+$01

    inc c
    ld [bc], a
    ld a, [$e80b]
    add hl, de
    add sp, $18
    ld hl, $201c
    ld hl, sp-$02
    ld hl, $ff01
    ld bc, $03fd
    nop
    rst JumpTable
    ld [c], a
    ld [hl], b
    ld a, $1c
    ld e, $3d
    ld h, e
    nop
    xor $41
    cp a
    ret nz

    rst $38
    ret nz

    cpl
    ld [hl], b
    nop
    ld a, h

jr_036_6e36:
    ccf
    di
    ld c, a
    ld c, c
    add a
    ld l, h
    add e
    jr z, jr_036_6dd5

    pop hl
    dec sp
    cp $5f
    rst $08
    ccf
    rst $38
    nop
    rst $38
    cp [hl]
    ld b, $d7
    adc h
    cp h
    ret z

    nop
    jr c, jr_036_6dd1

    ret nz

    ld b, c
    ld [hl+], a
    jr nz, jr_036_6e36

    ret nz

    and b
    and d
    ld b, c
    nop
    nop
    dec bc
    ld e, d
    nop
    dec [hl]
    ld c, $0c
    nop
    ld bc, $00a0
    ld d, l
    nop
    call nc, Call_036_6a00
    inc de
    dec c
    nop
    sub c
    ld bc, $0345
    inc bc
    rrca
    cpl
    rra
    ld [bc], a
    rra
    ld a, a
    rrca
    rra
    scf
    rrca
    cpl
    rst $38
    ld bc, $7f00
    add b
    rst $38
    add b
    ret nz

    rst $38
    ld h, b
    nop
    cp $ff
    ld de, $fc0f
    inc bc
    ld hl, sp+$07
    db $10
    ldh a, [rIF]
    ldh [$8f], a
    rst $08
    rst $38
    and b
    ret nz

    dec [hl]
    ccf
    rst $38
    and c
    ld h, b
    ret nz

    daa
    nop
    adc b
    add e
    add b
    cp $ff
    inc e
    ldh [$f0], a
    rrca
    add hl, bc

jr_036_6eac:
    dec l
    ld [de], a
    rlca
    ld hl, sp+$00
    ld b, b
    rst $38
    ld hl, sp+$21
    rst $20
    nop
    ld hl, sp-$69
    db $e4
    inc hl
    add $42
    inc bc
    add c
    add b
    ld c, a
    ld b, a
    ld b, b
    db $e3
    ld b, b
    reti


    ld h, b
    call Call_036_7000
    ld [c], a
    inc a
    pop af
    ld e, $e9
    xor $0b
    nop
    rlca
    ld c, e
    ldh a, [$a7]
    ld a, b

Jump_036_6ed7:
    rst $20
    add hl, sp
    db $fd
    nop
    rra
    jp $6633


    inc h
    ret nz

    ld c, h
    adc l
    nop

jr_036_6ee4:
    cp b
    or c
    or b
    or e
    and b
    rst $08
    ret nz

    sbc a
    ld [bc], a
    add b
    ccf
    nop
    ld a, [hl]
    ld bc, $41fe
    ret nc

    db $10
    add b
    add sp, -$80
    inc hl
    xor b
    ret nz

    ret z

    ldh a, [rSB]
    db $f4
    ld hl, sp-$05
    db $fc
    rst $38
    rst $38
    nop
    ret nz

    rlca
    ld [bc], a
    nop
    inc bc
    nop
    ld a, a
    ld l, $0f
    add hl, bc
    jr nz, jr_036_6f42

    ld [hl], c
    cp $4e
    rrca
    add hl, bc
    dec b
    nop
    jp z, $c900

    rrca
    inc c
    jr nz, jr_036_6eac

    inc bc
    rrca
    inc c
    dec de
    rlca
    ld l, l
    and c
    ld c, a
    inc b
    jr nz, jr_036_6f41

    inc c
    sbc $3f
    xor l
    add [hl]
    rra
    ld a, [bc]
    adc b
    ldh a, [$f1]
    cp $0f
    inc c
    jr nz, jr_036_6ee4

    ld d, c
    nop
    rrca
    inc c
    ld bc, $0321

jr_036_6f41:
    ld d, a

jr_036_6f42:
    adc a
    xor a
    ld b, c
    add b
    ld h, d
    add b
    ret nz

    add b
    sub b

jr_036_6f4b:
    ldh [$1f], a
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    nop
    dec d
    nop
    cp a
    ld a, a
    cpl
    dec hl
    nop
    ld c, b
    ld e, e
    ld c, b
    rst $10
    ld c, b
    xor a
    ret c

    ld h, a
    jr @-$62

    and a

jr_036_6f63:
    sbc h
    dec l
    jr nz, jr_036_6f63

    inc bc
    ei
    ld hl, $ff07
    ld hl, $6f0f
    sbc a
    rra
    ld l, [hl]
    jr nc, @+$01

    nop
    nop
    rrca
    ld b, l
    add [hl]
    nop
    inc c
    adc c

jr_036_6f7c:
    adc d
    adc e
    ld h, [hl]
    add b
    nop
    dec bc
    adc c
    rra
    dec c
    sbc c
    sbc d
    sbc e
    inc h
    and [hl]
    sbc a
    rra
    add hl, de
    ld bc, $aaa9
    xor e
    xor h
    add [hl]
    xor [hl]
    xor a
    rra
    add hl, de
    ld bc, $8180
    add d
    call c, $be86
    or b
    rra
    add hl, de
    ld [de], a
    sub b
    sub c
    sub d
    ccf
    cp c
    or c
    rra
    jr jr_036_6f4b

    ld bc, $a2a1
    and e
    and h
    and l
    and [hl]
    and a
    rra
    jr jr_036_6fb6

jr_036_6fb6:
    or b
    or c
    or d
    add e
    add h
    add l
    add [hl]
    add a
    add b
    rra
    jr jr_036_6f7c

    cp e
    cp h
    sub e
    sub h
    sub l
    sub [hl]
    ld b, b
    sub a
    rra
    dec d
    or d
    and d
    add [hl]
    or h
    and b
    ld a, l
    inc b
    ld l, h
    ld l, l
    dec l
    ld c, $f7
    rra
    inc d
    adc b
    or [hl]
    ld b, b
    or e
    inc h
    and c
    db $dd
    pop bc
    push hl

jr_036_6fe3:
    sub c
    add d
    ld b, d
    add d
    rra
    inc d
    adc c
    ld bc, $4b02
    dec h
    or l
    inc b
    add hl, de
    ld e, h
    and h
    sub b
    add c

jr_036_6ff5:
    rra
    inc d
    ldh a, [$a5]
    nop
    add [hl]
    ld e, a
    add [hl]
    rrca
    ld b, h
    ld b, l

Call_036_7000:
    ld a, [hl]
    ld a, a
    jr nc, jr_036_7072

    ld l, a
    rra
    inc d
    jr nz, jr_036_6ff5

    add [hl]
    ld a, [hl+]
    dec hl
    inc c
    inc l
    add h
    cp b
    ld [hl], l
    dec e
    inc c
    rra
    inc c
    cp l
    adc h
    nop
    adc [hl]
    cp a
    sbc b
    add h
    sbc h
    or a
    xor l
    xor b
    add b
    rra
    dec d
    adc b
    ret nz

    adc l
    adc a
    add h
    add h
    adc c
    ld [$be9d], sp
    cp d
    sbc h
    rra
    inc d
    inc bc
    inc b
    xor h
    jr nz, jr_036_6fe3

    call $b43f
    add hl, bc
    ld a, [bc]
    cp e
    sbc l
    add b
    rra
    inc de
    add e
    jp $d685


    add a
    adc b
    adc c
    ld [bc], a
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    rra
    inc de
    sub e
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld a, [bc]
    add d
    add d
    sbc [hl]
    sbc a
    rra
    inc de
    and e
    ld [hl+], a
    and [hl]
    inc b
    and a
    xor b
    xor c
    xor d
    xor e
    ccf
    xor [hl]
    xor a
    jp nz, $131f

    ld b, b
    or [hl]

jr_036_7072:
    or a
    cp b
    cp c
    dec a
    cp h
    db $10
    cp l
    add h
    add h
    rra
    inc d
    call nz, $c6c5
    rst $00
    ld b, $c8
    ret


    jp z, $cccb

    ld a, $1f
    dec c
    adc $20
    ret nc

    adc $22
    pop de
    add [hl]
    db $d3
    ret c

    push de
    ld [bc], a
    add d
    rst $10
    add d
    reti


    jp c, $3ddb

    sbc $50
    rst JumpTable
    rra

jr_036_70a0:
    inc c
    ldh [$60], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    nop
    add b
    and $e7
    add sp, -$17
    ld [$84eb], a
    db $10
    db $ed
    xor $ef
    rra
    inc c
    or e
    or l
    add d
    add d
    nop
    pop af
    ld a, [c]
    di
    db $f4
    push af
    push af
    or $f8
    nop
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    db $fd
    cp $ff
    sbc b
    rra
    inc c
    jp nc, $3fd4

    jr nz, jr_036_70d9

    ld b, $82
    ld bc, $0807

jr_036_70d9:
    add h
    add h
    dec bc
    inc c
    dec c
    dec hl
    jr nz, jr_036_70a0

    nop
    rra
    inc c
    jr nc, jr_036_7116

    ld de, $1312
    ld [bc], a
    inc d
    dec d
    ld d, $17
    jr jr_036_710a

    jr nz, jr_036_710e

    ld [bc], a
    dec e
    ld e, $1f
    add d
    rst $08
    db $10
    rra
    ld c, $21
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_036_712e

    ld b, c
    add d
    ld b, b
    ld l, $2f

jr_036_710a:
    add d
    jr nz, jr_036_7163

    rra

jr_036_710e:
    inc c
    nop
    ld b, b
    jr nc, jr_036_7144

    ld [hl-], a
    inc sp
    inc [hl]

jr_036_7116:
    dec [hl]
    ld [hl], $00
    scf
    jr c, jr_036_7155

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $08
    ccf
    ld a, e
    ld d, l
    ld d, a
    rra
    inc c
    ld d, b
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e

jr_036_712e:
    add [hl]
    add [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, h
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, h
    dec de
    add b
    rra
    dec c
    ld h, b
    ld d, b
    ld d, c
    ld d, d

jr_036_7144:
    ld d, e
    ld d, h
    add [hl]
    nop
    add [hl]
    ld b, [hl]
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, e
    ld e, l
    inc b
    ld e, [hl]
    add [hl]
    ld e, l
    ld e, e

jr_036_7155:
    ld d, d
    rra
    inc c
    ld [hl], b
    ld h, b
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_036_7163:
    ld [hl+], a
    ld l, c
    ld l, d
    add h
    sbc [hl]
    ld d, h
    ld d, h
    rra
    inc c
    add [hl]
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, d
    add [hl]
    db $76
    ld [hl], a
    inc de
    ld a, b
    ld a, c
    ld a, d
    add h
    ld l, e
    ld [hl], h
    rra
    dec c
    ld e, a
    nop
    nop
    inc c
    ld [$0f20], sp
    dec c
    nop
    db $10
    sbc a
    ld h, e
    rst $38
    rra
    ld a, [de]
    inc a
    rra
    ld e, $44
    ld e, $19
    rra
    jr nz, jr_036_71f5

    add b
    rst $38
    rra
    ld e, c
    jr jr_036_71b5

    ld a, e
    jr nz, @+$1f

    dec de
    ld e, a
    dec b
    dec bc
    nop
    inc a
    ld a, a
    ld [$1a19], sp
    ld h, b
    add l
    ld e, $16
    ld e, d
    add [hl]
    nop
    adc $6e
    jr nz, jr_036_71d5

jr_036_71b5:
    rra
    dec e
    nop
    ld a, $21
    nop
    dec de
    ld bc, $0166
    dec e
    inc e
    rst $38
    inc b
    inc b
    ld de, $e010
    ld hl, $2efd
    jr nz, jr_036_720a

    rra
    add hl, bc
    inc a
    rra
    inc de
    inc bc
    ld b, b
    db $eb
    or l

jr_036_71d5:
    ld e, h
    rra
    db $10
    ld [bc], a
    ld e, a
    ld [bc], a
    ld a, $24
    db $eb
    ld [hl+], a
    ret nz

    rra
    dec c
    ld [bc], a
    jr nz, jr_036_71e6

    add e

jr_036_71e6:
    scf
    ld e, a
    ld hl, $131f
    ld [hl+], a
    ld e, e
    nop
    db $10
    rra
    ld d, $89
    inc h
    ld a, h
    ld a, [bc]

jr_036_71f5:
    rra
    ld c, $1a
    inc c
    db $e4
    rra
    inc c
    ld b, b
    nop
    nop
    ld a, b
    ld a, $3e
    ld e, [hl]
    ld h, d
    ld a, [hl]
    ld e, [hl]
    nop
    ld e, d
    ld h, [hl]
    ld a, [hl]

jr_036_720a:
    ld a, d
    ld a, d
    ld b, [hl]
    ld a, h
    ld a, h
    add b
    rra
    or b
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld e, [hl]
    ld e, [hl]
    ld h, d
    ld a, $40
    ld a, $1f
    add b
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld l, [hl]
    ld e, [hl]
    nop
    ld a, h
    ld b, h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    add h
    rra
    sub b

jr_036_722f:
    ld l, [hl]
    ld e, d
    db $76
    ld c, d
    dec de
    ld [$7e52], sp
    ld b, b
    ld e, d
    rra
    sub b
    ld a, $3e
    ld a, $22
    ld a, $36
    inc c
    inc e
    inc d
    ld a, $36
    rlca
    ld [$885f], sp
    inc sp
    inc sp
    add hl, hl
    ccf
    dec l
    ld bc, $2108
    dec b
    db $10
    inc sp
    inc sp
    rra
    add b
    db $10
    inc e
    inc e
    ld a, [hl+]
    add hl, sp
    ld [$6b5d], sp
    ld a, a
    ld b, c
    ld [$5d6b], sp
    ld [hl], a
    ld [hl], a
    ld a, a
    sub b
    ld a, d
    ld b, [hl]
    ld a, [hl]
    ld c, b
    ld e, d
    inc bc
    ld [$7656], sp
    ld a, a
    sbc b
    ld a, a
    ld a, a
    ld a, a
    dec b
    ld b, c
    ld a, a
    ld [hl], a
    inc e
    inc d
    ld bc, $1c18
    rst JumpTable
    nop
    ld [hl-], a
    nop
    ld a, h
    ld a, h
    ld a, d
    ld b, [hl]
    ld a, l
    ld e, e
    ld a, a
    ld e, c
    dec h
    ld a, l
    ld e, e
    ccf
    and c
    inc a
    inc a
    ld e, e
    add hl, bc
    ld e, d
    ld bc, $0810
    ld e, d
    ld h, [hl]
    inc a
    inc a
    rra
    add b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld e, h
    ld d, b
    ld bc, $7e10
    ccf
    cp c
    cp a
    jr z, jr_036_722f

    add hl, bc
    ld [hl], b
    ld [hl], b
    add b
    rra
    add b
    ld [hl], a
    ld [hl], a
    ld a, a
    ld e, l
    ld l, e
    ld e, l
    ld a, a
    ld d, e
    ld l, e
    dec b

Jump_036_72bc:
    add hl, bc
    ld [hl], $bf
    sub b
    inc a
    inc a
    cp a
    ld de, $117d
    ccf
    ld e, d
    ld h, [hl]
    ld e, a
    ld de, $08cf
    adc l
    jr @-$6f

    or b
    ld l, a
    ldh a, [$cf]
    ldh a, [rIE]
    cpl
    ld [bc], a
    ld [hl+], a
    adc a
    pop hl
    ld c, a
    pop af
    adc a
    pop af
    rst $08
    ld [bc], a
    ld [hl+], a
    ld l, a
    ld [c], a
    cpl
    ld [hl], c
    rst $08
    ld [bc], a
    jr nc, jr_036_72ea

jr_036_72ea:
    cp $fe
    cp $82
    cp $ee
    jr c, jr_036_731a

    xor d
    ld bc, $3818
    rra
    add b
    ld h, [hl]
    dec a
    ld hl, $0542
    db $10
    ld h, [hl]
    ld b, b
    ld h, [hl]
    rst $08
    ld [bc], a
    inc [hl]
    ld a, [hl]
    ld e, d
    ld l, [hl]
    ld d, [hl]
    ld a, h
    ld c, h
    ld h, c
    ld l, [hl]
    ccf
    xor c
    rra
    db $10
    ld e, d
    ld h, [hl]
    inc [hl]
    inc l
    and l
    add hl, de
    ret nz

    rra
    ld a, b
    rst $38

jr_036_731a:
    rst $38
    nop
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    xor l
    call $2091
    add e
    xor d
    xor d
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push af
    ld d, l
    rst $38
    cp $fc
    ldh a, [$e2]
    rst $30
    ld sp, hl
    xor d
    xor d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld d, b
    nop
    inc bc
    db $fc
    dec de
    ldh [$29], a
    ret nz

    ld d, e
    add b
    rst $00
    rra
    ld [hl], h
    dec bc
    ret


    ld [hl], $ff
    rst $38
    rst $38
    ld [bc], a
    adc b
    nop
    ld h, b
    sbc a
    add b
    ld a, a
    ld c, b
    or a
    rst $38
    rst $38
    ld [bc], a
    db $fd
    rst $38
    add hl, bc
    cp $a0
    nop
    nop
    rst $38
    rst $38
    add b
    ld a, a
    inc c
    di
    inc h
    db $db
    ld h, [hl]
    sbc c
    ld e, b
    and a
    ld a, [c]
    dec c
    and b
    nop
    nop
    rst $38
    rst $38
    ld [$04f7], sp
    ei
    db $10
    rst $28
    dec h
    jp c, $ef10

    sbc a
    ld h, b
    ld a, [hl+]
    nop
    nop
    inc b
    ei
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd
    inc d
    db $eb
    ld a, [hl]
    add c
    or e
    ld b, b
    and b
    add b
    nop
    rst $38
    rst $38
    ld c, b
    or a
    ld de, $ffee
    sub l
    ld l, d
    ld a, [hl]
    add c
    push af
    ld a, [bc]
    nop
    nop
    nop
    rst $38
    add hl, bc
    or $37
    ret z

    ld a, a
    add b
    push af
    ld a, [bc]
    ld e, a
    and b
    ld [hl], a
    adc b
    db $eb
    inc d
    ld bc, $0054
    dec b
    ld a, [$0cf3]
    db $fd
    ld [bc], a
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, [$1505]
    nop
    nop
    ccf
    ret nz

    rst $28
    cp a
    rst $38
    or a
    ld c, b
    rst JumpTable
    jr nz, @-$4f

    ld d, b
    or a
    ld c, b
    ld d, l
    ld [hl], l
    nop
    ret nz

    pop bc
    ldh [$d0], a
    add b
    ldh [$a1], a
    db $10
    ld d, b
    ld hl, sp+$2f
    ret nc

    rst $00
    adc e
    db $f4
    inc de
    db $ec
    rlca
    rlca
    ld c, $f0
    add hl, sp
    call nz, Call_036_4055
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld d, l
    ld b, l
    cp d
    add b
    ld a, a
    nop
    nop
    rst $08
    ccf
    ld b, b
    cp a
    call nz, $9d3b
    ld h, e
    cp c
    ld b, a
    ld a, c
    add a
    db $f4
    inc bc
    ld a, d
    add c
    ld d, c
    dec b
    rst $38
    cp $f8
    ei
    db $fc
    ldh a, [$e1]
    cp $e1
    cp $c8
    ldh [rP1], a
    dec d
    rst $38
    ld hl, $8ec0
    ld bc, $17e8
    ret nc

    cpl
    add b
    ld a, a
    nop
    sub h
    dec hl
    ld b, l
    ld d, l
    rst $38
    nop
    add b
    ld a, a
    nop
    dec b
    sub e
    dec bc
    sub a
    rst $28

jr_036_7441:
    ld d, c
    ld bc, $02ff
    rla
    ld l, c
    cp $b0
    and $f9
    call nc, $c3eb
    cp $a8
    nop
    nop
    dec b
    ld a, [$f20d]
    ld d, a
    xor b
    rra
    ldh [rPCM12], a
    adc c
    dec a
    jp nz, $a15e

    jr nz, jr_036_7441

    inc b
    ld de, $e500
    ld a, [de]
    push de
    ld a, [hl+]
    rst $38
    cp a
    ld b, b
    ld a, a
    add b
    cp $fa
    inc b
    db $fc
    inc b
    ld a, a
    nop
    ld h, a
    adc b
    db $dd
    ld [bc], a
    xor b
    add b
    jr nz, jr_036_748d

    ld d, a
    db $fd
    nop
    add sp, $05
    ld [hl-], a
    inc bc
    ld b, l
    ld d, h
    nop
    ld a, a
    ld a, l
    ld [bc], a
    rst $08
    rra
    rra

jr_036_748d:
    ld l, $0e
    dec b
    adc b
    nop
    dec b
    nop
    db $d3
    inc l
    db $fd
    ld [bc], a
    rra
    ldh [$2f], a
    ret nc

    ld e, d
    and b
    inc [hl]
    ret nz

    ret z

    add d
    ld b, c
    ld d, l
    nop
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    cp $f8
    and b
    dec d
    ld d, l
    nop
    rst JumpTable
    jr nz, @+$01

    rst $38
    db $fc
    db $fd
    cp $e8
    ret nz

    ld d, l
    ld d, l
    nop
    ld b, h
    or c
    and b
    ld bc, $1783
    rra
    ld a, a
    nop
    nop
    ld a, l
    add d
    ld a, d
    add l
    ld a, $c1
    ld a, b
    add a
    ld d, h
    xor e
    ld l, $d1
    dec b
    ld a, [$fe81]
    ld d, l
    ld d, l
    rst $38
    ld d, b
    and b
    pop de
    ret z

    and c
    jp hl


    jp nc, $d5fd

    ld b, b
    rst $38
    db $eb
    ei
    push de
    and c
    cp l
    ld h, e
    ld h, l
    add e
    ld c, b
    add a
    ld d, a
    rst $38
    rst $38

Jump_036_74f3:
    pop af
    rst $00
    xor e
    dec d
    ld d, l
    rst $38
    add b
    ld a, a
    inc c
    rla
    rrca
    dec e
    ld l, e
    ld a, b
    add b
    nop
    ld e, a
    rst $38
    dec bc
    rla
    dec [hl]
    rrca
    ld b, a
    ccf
    ld c, e
    ccf
    ccf
    ld a, a
    inc d
    dec d
    rst $38

jr_036_7512:
    sbc c
    cp $f8
    ldh a, [$fa]
    db $fd
    db $e4
    ei
    and b
    ld b, b
    sub e
    ld de, $ff40
    ldh a, [$1f]
    ld [bc], a
    adc b
    ld a, a
    ld [$ba04], sp
    db $fd
    ld sp, $0ffe
    ldh a, [rSB]
    ld d, l
    nop
    jr jr_036_7512

    ld [hl], b
    add b
    ld [hl], c
    add b
    add sp, -$10
    jp hl


    and d
    ld a, [$55dd]
    nop
    ld bc, $8a05
    dec d
    ccf
    sbc $55
    ld d, l
    nop
    dec d
    inc h
    xor c
    jr nz, @-$74

    ld b, l
    db $dd
    ccf
    ld d, l
    ld d, c
    nop
    ld de, $0742
    adc c
    ld e, a
    ld a, a
    cp $01
    rst $38
    ld de, $c000
    call c, $3e20
    ld e, b
    and b
    dec [hl]
    pop af
    nop
    rst $38
    nop
    xor $11
    cp $01
    inc d
    ld b, b
    nop
    add hl, de
    ld b, $1f
    ld a, a
    push af
    ld a, [bc]
    rst $38
    ld a, [$7405]
    adc e
    jr z, @-$27

    ld b, h
    ld [bc], a
    nop
    db $eb
    rst $30
    ld [$feff], sp
    ld bc, $57a8
    or b
    ld c, a
    ret nz

    ccf
    rst $38
    add b
    dec d
    rst $38
    nop
    xor a
    ld d, b
    add hl, de
    and $2f
    ret nc

    ld b, c
    cp [hl]
    nop
    nop
    nop
    ld bc, $0704
    db $f4
    dec bc
    cp $01
    ld a, h
    inc bc
    cp c
    ld sp, $680f
    rla

jr_036_75a9:
    ld a, [$bf41]
    ld d, l
    nop
    rst $38
    ld h, a
    sub h
    db $f4
    ld hl, sp-$1d
    db $fc
    rst $10
    ld hl, sp-$45
    db $fc
    jp nc, $fffc

    ld d, l
    rst $38
    or $f6
    ld a, [$d0d4]
    nop
    nop
    inc bc
    inc c
    inc bc
    inc d
    dec bc
    jr nc, jr_036_75db

    jr z, @+$21

    ld h, d
    rra
    ld c, e
    ccf
    and b
    nop
    ld b, $f8
    ld hl, sp+$2f
    ret nc

    scf
    ret z

jr_036_75db:
    ld c, [hl]
    or c
    ld a, [hl+]
    push de
    add hl, de
    and $a0
    ld e, a
    ret nc

    nop
    nop
    ret nz

    jr nc, jr_036_75a9

    xor b
    ldh a, [$7c]
    ldh a, [rNR52]
    ld hl, sp+$44
    ld hl, sp-$0d
    db $fc
    ld d, l
    db $fd
    rst $38
    rst $00
    ld e, $b4
    ld a, b
    rra
    nop
    ld d, l
    rst $38
    ld d, a
    add sp, $5f
    and b
    ccf
    ret nz

    sbc $e1
    ldh [$fc], a
    ld a, [$a0c0]
    ld d, b
    rst $38
    nop
    nop
    ld l, a
    sub b
    sub b
    ld l, a
    nop
    nop
    ld d, a
    ld hl, sp-$7f
    cp $55
    ld b, l
    nop
    call c, $e9f5
    push af
    jp $8077


    db $eb
    rst $28
    ld d, b
    nop
    nop
    rst JumpTable
    cp a
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    ld h, b
    sbc a
    ld b, b
    cp a
    dec e
    ld [c], a
    ld [hl+], a
    stop
    rlca
    ld hl, sp-$01
    ld bc, $fffe
    ld c, l
    or d
    rst $38
    ccf
    ret nz

    inc de
    db $ec
    ld [$fd80], sp
    cp e
    ld b, h
    cp $01
    ld [bc], a
    ld a, e
    add h
    ld [bc], a
    ld a, [$e405]
    dec de
    and b
    ld e, a
    nop
    ld a, [hl+]
    nop
    add sp, $17
    db $ec
    inc de
    ldh a, [rIF]
    add b
    ld a, a
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, h
    nop
    db $e3
    ldh a, [$e1]
    res 7, a
    rst $38
    rst $38
    ldh a, [rIF]
    push af
    ld b, b
    nop
    ld [bc], a
    ld bc, $0603
    ld bc, $0304
    inc b
    inc bc
    nop
    ld d, h
    nop
    ld h, $f8
    inc c
    ldh a, [rNR10]
    ldh [$60], a
    add b
    ret nc

    adc e
    db $fc

jr_036_768d:
    ld [hl], d
    add b
    ld b, h
    nop
    ldh a, [$8c]
    add [hl]
    ld hl, sp-$72
    inc e
    ldh [$3e], a
    ret nz

    ld a, l
    add b
    ld a, [hl-]
    ret nz

    ld [hl], e
    add b
    ld d, a
    push de
    rst $38
    ld a, a
    cp a
    ld a, a
    cp $fd
    db $f4
    ld d, h
    nop
    rst $38
    ldh [rNR14], a
    ld [$fe21], sp
    ld b, a
    db $fc
    inc hl
    db $fc
    ld e, [hl]
    ldh [$b0], a
    ret nz

    rst $38
    ld d, l
    rst $38
    cp $f8
    ldh a, [$fc]
    ld d, l
    ld d, b
    rst $38
    pop af
    add sp, -$0e
    ldh [rHDMA1], a
    ld a, [hl+]
    ld bc, $03fe
    db $fc
    add b
    dec d
    nop
    rst $38
    inc d
    db $eb
    dec sp
    call nz, $b04f
    dec sp
    ret nz

    db $e4
    sub l
    bit 0, b
    jr z, @+$01

    ld [bc], a
    pop bc
    ld a, $a8
    ld d, a
    db $f4
    dec bc
    ld a, l
    ld [bc], a
    nop
    nop
    ld a, a
    nop
    nop
    ld a, [hl+]
    rst $38
    rrca
    ldh a, [rTIMA]
    ld a, [$f906]
    cp e
    ld b, h
    rst $28
    stop
    nop
    nop
    ld bc, $0054
    ld a, a

jr_036_7700:
    add b
    ld a, [hl]
    add c
    ccf
    ret nz

    di
    add a
    rra
    rst $38
    cp $01
    jr nz, jr_036_768d

    rst $30
    cp $01
    ld [$10ef], sp
    rst $38
    nop
    ld [$50af], sp
    ld b, e
    cp h
    add l
    ld a, d
    nop
    nop
    rst $20

jr_036_771f:
    jr jr_036_7700

    jr nz, jr_036_771f

    inc bc
    ld a, [c]
    dec c
    adc $31
    db $fd
    ld [bc], a

jr_036_772a:
    ld a, [$bb05]
    ld b, h
    add b
    jr nz, jr_036_7731

jr_036_7731:
    rst $38
    add h
    ld a, e
    ld h, $d9
    ld e, b
    and a
    and b
    ld e, a
    rst $38
    call nc, $a02b
    ld e, a
    ld [$8020], sp
    and b
    ld e, a
    ret nz

    ccf
    ld a, a
    ld b, b
    cp a
    jr nz, jr_036_772a

    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $fd
    nop
    rst $38
    ld hl, sp+$01
    cp $3f
    ret nz

    ldh a, [rP1]
    add b
    nop
    ld bc, $0744
    nop
    dec bc
    ld a, [bc]
    dec b
    nop
    rrca
    ld [$0d0b], sp
    inc bc
    ld [bc], a
    ld b, $03
    db $fd
    nop
    rst $38
    ld [hl], c
    sbc [hl]
    ld h, c
    pop af
    nop
    ld b, b
    nop
    ld bc, $fd00
    ld d, b
    rst $38
    cp a
    inc [hl]
    rrca
    or e
    rrca
    sbc h
    inc bc
    inc b
    ld d, l
    rst $38
    ld d, $7f
    and e
    ld a, a
    inc de
    or a
    ld a, a
    dec hl
    ld e, a
    ccf

jr_036_778f:
    ld [hl], a
    rst $38
    push af
    rst $38
    sbc $a8
    ld e, c
    adc b
    cp $6a
    ld a, [hl]
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    xor $ff
    nop
    inc d
    add b
    add a
    ld hl, sp+$02
    db $fd
    ld bc, $1bfe
    db $e4
    cpl
    ret nc

    ld a, e
    ld [hl], h
    ld sp, hl
    nop
    nop
    ld a, [hl+]
    nop
    jr z, jr_036_778f

    or $09
    ret c

    daa
    db $f4
    dec bc
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    xor $9f
    dec [hl]
    ld c, b
    ld d, l
    ld d, b
    rst $38
    cp $fd
    ld hl, sp-$08
    ld d, b
    and b
    ld bc, $03fe
    db $fc
    nop
    ld a, [hl+]
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    push af
    ld a, [bc]
    ld a, [$0005]
    nop
    nop
    add b
    ld b, b
    nop
    rst $38
    ld [bc], a
    db $fd
    dec e
    ld [c], a
    ld a, $c1
    rst $38
    rst $30
    ld [$e718], sp
    add b
    ld a, a
    nop
    jr z, jr_036_77ff

jr_036_77ff:
    ld b, b
    cp a

Call_036_7801:
    and b
    ld e, a
    ld c, b
    or a
    call nz, $803b
    ld a, a
    rst $38
    rst $38
    inc bc
    db $fc
    ld d, l
    ld d, l
    rst $38
    cpl
    rra
    cpl
    ld e, a
    cpl
    rra
    ccf
    rra
    ld d, l
    ld d, a
    rst $38
    rla
    dec a
    ld l, $fd
    ld a, a
    rst $30
    cp $88
    ld bc, $ff00
    inc bc
    rst $38
    rst $38
    ld bc, $0efe
    pop af
    ccf
    ret nz

    ld l, a
    add b
    rst $10
    add b
    ld b, b
    add b
    rst $38
    ld b, $f9
    add $39
    xor l
    ld d, d
    ld a, a
    cp $01
    ld a, h
    add e
    ld sp, hl
    ld b, $55
    ld d, l
    nop
    and e
    add sp, -$0a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    ld d, l
    nop
    ld b, $01
    ld d, b
    dec bc
    ld [hl], $df
    cp $00
    ld d, l
    nop
    ld b, l
    rst $38
    jr z, @+$01

    ret nz

    ccf
    ldh a, [rIF]
    ccf
    add [hl]
    jr nc, jr_036_77ff

    add b
    ld a, a
    nop
    rst $38
    dec h
    jp c, $a05f

    inc l
    ret nz

    add b
    rlca
    rst $38
    nop
    rrca
    ldh a, [$3a]
    ret nz

    db $e4
    push de
    ld d, l
    nop
    ld bc, $0385
    rla
    xor a
    rst $38
    rst $38
    ld d, a
    rst $38
    nop
    add d
    ld [$d501], sp
    push de
    nop
    ld bc, $0102
    ld a, [hl+]
    sbc a
    rst $38
    ld d, l
    ld d, l
    nop

jr_036_7896:
    di
    ld b, c
    ld [bc], a
    ld e, e
    scf
    cp a
    rst $38
    rst $38
    ld d, l
    ld b, b
    nop
    rst $38
    ld e, a
    or l
    rst $38
    rst $38
    ld [$f115], a
    ld c, $a8
    ld d, a
    nop
    ld [hl+], a
    add h
    nop
    rst $38
    ret nz

    ccf
    db $ed
    ld [de], a
    and b
    ld e, a
    ld b, b
    cp a
    ld a, e
    adc c
    db $76
    ld a, e
    nop
    nop
    db $10
    rst $28
    ret nz

    ccf
    add b
    ld a, a
    jr nc, jr_036_7896

    dec c
    ld a, [c]
    dec d
    ld [$956a], a
    nop
    rst $38
    ld d, l
    ld d, l
    rst $38
    cp $fb
    rst $30
    db $eb
    db $e3
    sub a
    ld b, a
    sbc a
    nop
    and b
    nop
    dec b
    ld a, [$fc03]
    ld b, $f9
    ld bc, $fffe
    rst $38
    ld h, c
    sbc [hl]
    adc $31
    add h
    nop
    dec a
    ld [bc], a
    ld a, e
    inc b
    jp nz, $f40b

    rla
    add sp, $2d
    ret nz

    ld d, e
    add b
    jp $0800


    add b
    ldh a, [$d8]
    daa
    and h
    ld e, e
    rrca
    ret nc

    cpl
    rrca
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    sbc $21
    ld bc, $ff57
    di
    db $fc
    ld hl, sp-$02

jr_036_7914:
    push af
    cp $f8
    ei
    ei
    rst $30
    ld d, l
    ld d, l
    nop
    db $f4
    ldh [$80], a

Jump_036_7920:
    ld b, b
    ldh a, [$ed]
    ld a, [$5fff]
    push de
    nop
    and b
    ld b, b
    ld d, l
    xor d
    rst $38
    db $fd
    nop
    nop
    ld d, l
    xor e
    ld bc, $015f
    rst $38
    ld bc, $01ff
    push af
    ld bc, $0800
    ld [hl+], a
    ld e, a
    add b
    rst $38
    ret nz

    ld a, a
    add b
    rst $38
    ld d, l
    ld d, l
    nop
    ld [bc], a
    dec b
    xor e
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    add l
    ld d, a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    adc b
    ld a, a
    db $e3
    inc e
    adc a
    ld [hl], b
    rst $10
    jr z, jr_036_7914

    ld d, b
    add b
    rst $38
    nop
    add b
    rst $38
    nop
    xor d
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $eb
    inc d
    ret nc

    cpl
    add b
    ld a, a
    ld d, l
    ld [bc], a
    nop
    pop bc
    sub a

Call_036_797f:
    db $eb
    rst $38
    db $db
    inc h
    or h
    ld c, e
    sbc e
    ld h, h
    rst $38
    ld [hl+], a
    nop
    nop
    ret nz

    ccf
    rst $38
    add b
    ld a, a

jr_036_7990:
    rst $38
    ld b, d
    cp l
    or h
    ld c, e
    add b
    ld a, a
    ld [$00f7], sp
    nop
    ld b, b
    cp a
    ret nz

    ccf
    add l
    ld a, d
    ld d, $e9
    swap h
    add c

jr_036_79a6:
    ld a, [hl]
    inc hl
    call c, $e718
    jr z, jr_036_79ad

jr_036_79ad:
    add b

jr_036_79ae:
    ld bc, $7ffe
    ld a, a
    daa
    ret c

    rst $08
    jr nc, jr_036_79a6

    db $10
    rst $38
    nop
    ld l, a
    sub b
    dec d
    ld d, h
    nop
    cp e
    ld b, b
    ldh a, [$e8]
    jp c, $ff6f

    db $fd
    ld a, a
    add b
    ld d, l
    ld d, l
    nop

jr_036_79cc:
    dec d
    ccf
    ld e, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ei
    inc b
    db $f4
    dec bc
    jp hl


    ld d, $c2
    dec a
    rst $20
    jr jr_036_7990

    ld d, b
    ccf
    ret nz

    rst $38
    nop
    ld d, h
    add b
    nop
    ld b, b
    jr nz, jr_036_79cc

    jr nz, jr_036_79ae

    ldh [$50], a
    and b
    ld d, b
    or b
    ld h, b
    ld hl, sp+$44
    nop
    ld bc, $0d9e
    ld [bc], a
    sub [hl]
    add hl, hl
    ld b, $16
    add hl, bc
    jr z, jr_036_7a09

    inc e
    inc bc
    add hl, hl
    rla
    ld d, b
    ld l, b
    ld a, a

jr_036_7a09:
    adc a
    adc a
    cpl
    rst JumpTable
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst JumpTable
    rst $38
    ld d, l
    ld d, l
    rst $38
    db $f4
    ld a, [$befd]
    xor $bc
    ldh a, [$ec]
    ld bc, $ff01
    adc e
    db $f4
    add a
    ld hl, sp+$48
    rst $30
    add b
    inc b
    ei
    inc hl
    call c, $fc03
    nop
    ld d, l
    ld b, b
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld de, $0718
    nop
    rra
    or $2a
    nop
    add b
    add b
    ld b, b
    add b
    ret nc

    ldh a, [$f0]
    ld a, [hl+]
    ld [$feff], sp
    ld bc, $0000
    nop
    ld a, [$d505]
    ld a, [hl+]
    nop
    ld a, [$0005]
    nop
    ld [$c1f7], sp
    ld a, $e8
    rla
    call nc, $2a2b
    push de
    call nz, $903b
    ld l, a
    ld b, b
    cp a
    ld d, b
    ld a, [bc]
    nop
    add a
    ld a, a
    ld a, a
    add b
    ld [hl], l
    adc d
    sub d
    ld l, l
    ld b, b
    cp a
    rst $38
    rst $38
    ld a, [bc]
    nop
    nop
    ld hl, sp+$07
    add b
    ld a, a
    rst $38
    rst $38
    jr z, @-$27

    ld c, $f1
    ld de, $84ee
    ld a, e
    nop
    ld a, [hl+]
    nop
    ld b, e
    cp h
    dec b
    ld a, [$f40b]
    inc b
    ei
    ld de, $ffee
    rst $38
    rst $38
    nop
    ld a, [hl+]
    nop
    cp a
    ld b, b
    ld l, a
    sub b
    db $d3
    inc l
    adc [hl]
    ld [hl], c
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    xor b
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    add b
    ld e, a
    and b
    adc l
    ld [hl], d
    dec de
    db $e4
    rlca
    ld hl, sp+$08
    db $10
    ret nz

    ldh a, [rIF]
    ld hl, $3f1e
    add c
    ld a, [hl]
    ld c, $f1
    ccf
    ld a, a
    add b
    rst $38
    nop
    ld d, l
    ld [hl], l
    rst $38
    ld a, [$fcfe]
    cp l
    ld a, [$f6e2]
    dec d
    ld d, h
    ld hl, sp+$08
    ldh a, [$50]
    inc [hl]
    jr z, jr_036_7b51

    inc a
    ld a, a
    add hl, bc
    cp $96
    nop
    add b
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    ldh [$28], a
    ret nz

    dec [hl]
    ret nz

    ld l, [hl]
    pop af
    ld b, d
    nop
    nop
    jr @+$14

    ld [$0a15], sp
    ld e, a
    jr nz, jr_036_7b5a

    or h
    ld c, a
    or h
    ld a, a
    add sp, -$01
    ld e, b
    nop
    nop
    sub b
    ld b, b
    ldh [$08], a
    ldh [$2c], a
    ret c

    ldh a, [$98]
    inc sp
    ldh [$ea], a
    push hl
    push de
    add b
    nop
    jr nc, jr_036_7b36

    jr nz, @-$56

    add b
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    inc b
    ld d, h
    rrca
    jr jr_036_7b29

    jr @+$08

    db $10
    jr jr_036_7b2f

    db $10

jr_036_7b29:
    db $10
    jr nc, jr_036_7b4c

    rra
    xor d
    adc d

jr_036_7b2f:
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$08]

jr_036_7b36:
    ldh a, [$f8]
    ld hl, sp+$00
    ld a, [bc]
    rst $38
    ret z

    scf
    or b
    ld c, a
    ret nz

    ccf
    sub b
    ld l, a
    db $ec
    inc de
    db $fd
    ld b, $04
    inc b
    xor d
    add c

jr_036_7b4c:
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_036_7b51:
    rst $38
    ld b, l
    cp d
    or d
    ld c, l
    rst $38
    nop
    ld a, [hl+]
    nop

jr_036_7b5a:
    cp a
    ld b, b
    rst $28
    db $10
    or h
    ld c, e
    ld c, b
    or a
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    xor d
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    add sp, -$16
    dec d
    nop
    ld b, l
    rst $38
    sbc a
    ld a, h
    cp c
    ld e, a
    adc $3f
    ld e, [hl]
    cp a
    sbc a
    ld c, a
    cp a
    sub [hl]
    adc e
    xor d
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld a, [$d02f]
    ld a, d
    add l
    call nc, $282b
    stop
    inc c
    di
    rst $38
    rst $38
    dec h
    jp c, $a758

    rst $38
    ld h, h
    sbc e
    cp c
    ld b, [hl]
    nop
    nop
    ld e, a
    and b
    dec bc
    db $f4
    rra
    ldh [$2d], a
    jp nc, $fc03

    ld b, l
    cp d
    ld [hl-], a
    call $20df
    nop
    ld d, b
    ld hl, sp+$10
    jr nz, jr_036_7bfb

    jr nc, jr_036_7bbd

jr_036_7bbd:
    ld a, b
    ld [$04f0], sp
    ld c, $0b
    db $fc
    add hl, bc
    cp $55
    ld bc, $0601
    ld b, $02
    ld b, $00
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld b, $15
    ld d, l
    rst $38
    xor c
    rst $30
    rst $28
    db $d3
    db $fc
    ld [hl], d
    ld b, b
    ld h, b
    db $ed
    ld b, c
    call nc, $98ff
    cp $fb
    db $ec
    cp a
    ld a, e
    ld a, [hl]
    ld l, [hl]
    di
    ld a, a
    ld bc, $ff51
    rst $00
    cp h
    db $ec
    cp a
    ld l, [hl]

jr_036_7bf5:
    rst $10
    rst $08
    cp a
    adc a
    sbc $bf

jr_036_7bfb:
    adc e
    xor b
    nop
    nop
    db $fc

Call_036_7c00:
    db $fc
    rst $38
    db $10
    rst $28
    adc b
    ld [hl], a
    ld [hl], d

jr_036_7c07:
    adc l
    ldh [$1f], a
    ret nz

    ccf
    xor b
    nop
    nop
    ccf
    ccf
    rst $38
    jr nc, @-$2f

    jr nz, jr_036_7bf5

    xor [hl]
    ld [hl], l
    ld a, [$ee3f]
    ld e, e
    xor d
    add b
    nop
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    jr nc, jr_036_7bf5

    jr nc, jr_036_7c07

    ld e, h
    cp e
    xor b
    add b
    nop
    dec d
    rra
    rra
    ld bc, $ff1e
    ld a, [de]
    push hl
    xor d
    ld d, a
    rst $08
    ld [hl], $f4
    jr nz, jr_036_7c3c

jr_036_7c3c:
    ld b, b
    and b
    ld b, b
    ld l, b
    ld d, b
    ldh [$50], a
    ldh [rBCPS], a
    ldh a, [$aa]
    ld a, [hl+]
    rst $38
    nop
    nop
    nop
    nop
    rst $28
    jr nc, jr_036_7c70

    jr nz, jr_036_7c72

    push af
    db $10
    rst $38
    cp $f8
    db $fd
    cp $f8
    pop hl
    cp $8b
    db $fc
    ld d, h
    nop
    rst $38
    ld a, [c]
    add a
    dec b
    adc [hl]
    ld a, a
    ld e, h
    cp a
    sub h
    ld a, a
    ld [$f03f], a
    rra
    ld d, l
    ld b, b

jr_036_7c70:
    rst $38
    add b

jr_036_7c72:
    nop
    nop
    ld b, b
    ld [$fb84], sp
    ld [$3af7], sp
    push bc
    ld d, l
    ld d, l
    nop
    rra
    dec e
    scf
    inc bc
    inc bc
    rlca
    cpl
    cp a
    db $f4
    jr z, jr_036_7c8a

jr_036_7c8a:
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $0201
    ld bc, $5501
    rst $38
    ld b, $fe
    ld [bc], a
    cp $09
    cp $2b
    ld [bc], a
    ld [hl+], a
    ld d, $33
    rst $10
    db $dd
    rst $38
    db $fd
    ei
    db $fd
    db $fd
    ld d, l
    ld b, b
    rst $38
    push bc
    db $ec
    xor d
    ei
    rlca
    dec sp
    rst $20
    add hl, sp
    add $0e
    pop af
    ld d, l
    ld e, c
    rst $38
    ld [hl], h
    ld [hl-], a
    ld a, a
    rst $10
    cp $6f
    cp a
    ld h, a
    ld b, c
    pop de
    rst $38
    ld c, $db
    ld a, a
    cp a
    ld a, a
    xor b
    cp [hl]
    ld a, d
    db $fd
    db $fd
    nop
    and e
    rst $38
    sub c
    rst $28
    sub [hl]
    db $eb
    cp a
    ld e, d
    ld e, a
    ldh a, [$ab]
    ld d, a
    ei
    cp $50
    ld [bc], a
    cp $0d
    xor l
    db $db
    rst $38
    call Call_036_797f
    cp [hl]
    ld [hl], l
    db $db
    db $db
    ld a, h
    db $fd
    nop
    adc l
    rst $38
    ld a, l
    jp nc, Jump_036_67bb

    ld l, a
    or [hl]
    cp $f9
    db $76
    ld a, a
    cp h
    cp $55
    ld d, l
    rst $38
    dec sp
    inc b
    ld h, h
    ld l, $c6
    ld l, d
    dec a
    jp c, Jump_036_5501

    rst $38
    xor d
    db $f4
    ld a, d
    db $f4
    push bc
    cp $63
    reti


    ld [hl], a
    cp [hl]
    ld e, a
    and b
    nop
    nop
    or h
    db $fc
    ld [$91f4], sp
    ld l, h
    db $eb
    inc d
    ld [hl], l
    jp z, $ebd6

    di
    cp l
    push de
    nop
    nop
    ld [$dd9c], sp
    and [hl]
    ld e, b
    inc b
    ei
    ld b, l
    cp $8a
    push af
    push af
    ld b, b
    nop
    inc b
    and l
    add [hl]
    rlc h
    call z, Call_036_7801
    rlca
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0006
    rlca
    ld a, [de]
    dec b
    add sp, $17
    jr z, @-$67

    ldh [$1f], a
    ld [hl], b
    adc a
    db $fd
    nop
    nop
    add h
    inc b
    add b
    ld h, $80
    ld [hl], $80
    ld e, $e0
    ld d, l
    nop

Call_036_7d60:
    ld bc, $0202
    ld [bc], a
    ld b, d
    ld c, c
    nop
    call $cd00
    nop
    rst $38
    nop
    ld d, l
    ld d, h
    rst $38
    ld [hl], $13
    rlca
    ld l, $04
    dec h
    ld e, [hl]
    ld l, a
    cp a
    ld d, b
    dec d
    rst $38
    ld [$ddfc], a
    cp $f9
    cp $fe
    db $fd
    add sp, -$04
    db $f4
    nop
    nop
    rst $28
    jr nc, jr_036_7de3

    xor b
    ld [$3315], a
    adc $a7
    db $fc
    inc [hl]
    db $db
    ret nz

    ccf
    ld d, [hl]
    xor e
    ld d, b
    ld bc, $5fff
    ld l, $57
    xor a
    db $e4
    dec de
    ld d, d
    xor a
    push hl
    sbc e
    db $ed
    ld [hl], a
    adc c
    rst $30
    push de
    rst $38
    cp a
    rst $28
    ccf
    sbc a
    ld d, l
    ld d, l
    rst $38
    inc b
    ld a, [bc]
    inc d
    cp b
    db $e4
    ld c, b
    and b
    ld b, b
    dec b
    ld d, l
    rst $38
    ld bc, $08fe
    rst $30
    ld hl, $0303
    rlca
    rlca
    ld c, $81
    ld d, a
    rst $38
    ld sp, hl
    rst $10
    db $fd
    db $76
    ei
    db $fd
    sub h
    ei
    ei
    dec d
    ld d, l
    rst $38
    push de
    cp $de
    cpl
    ld a, c
    ld a, [$ebad]
    cp c
    inc d
    dec d
    rst $38

jr_036_7de3:
    ld a, c
    rst $30
    ld a, [$bbcd]
    rst $28
    rst $30
    ld a, a
    ld a, h
    db $76
    db $fd
    ld d, b
    dec d
    rst $38
    xor $57
    ld a, [$8dfd]
    cp $59
    rst $30
    jp hl


    cp $43
    ld d, b
    ld b, b
    cp $25
    pop de
    and $fb
    ld sp, hl
    rst $20
    ret


    or $7d
    ld a, h
    rst $38
    db $e3
    db $fd
    db $dd
    ld d, l
    rst $38
    db $fd
    push af
    ei
    push hl
    db $d3
    rst $20
    dec b
    ld b, l
    rst $38
    add [hl]
    ld a, c
    add c
    ld a, [hl]
    nop
    nop
    nop
    ld c, c
    or a
    ld [bc], a
    rla
    nop
    dec d
    rst $38
    rrca
    ldh a, [$0b]
    db $f4
    sbc e
    db $f4
    ld de, $68fe
    cp a
    ld a, h
    ld a, [hl]
    ld d, a

Call_036_7e33:
    jr nz, jr_036_7e45

    cp a
    push af
    nop
    ld b, b
    sbc $21
    inc d
    rst $28
    xor d
    ld e, l
    ld c, b
    call nc, $a8ff
    rst $38
    ld d, c

jr_036_7e45:
    ld d, l
    rst $38
    ld b, h
    cpl
    rst $30
    ld a, a
    dec hl
    ld e, a
    db $fd
    cp a
    ld a, a
    ld d, l
    ld d, l
    rst $38
    ld a, [$f6f4]
    add sp, -$16
    pop af
    db $eb
    db $e3
    ld d, l
    ld d, b
    rst $38
    db $10
    jr nz, jr_036_7e7b

    inc h
    dec e
    dec d
    jr nc, @-$0f

    ld hl, sp-$19
    ld d, l
    ld d, h
    rst $38
    dec hl
    inc de
    ld a, l
    dec bc
    sub h
    and c
    and h
    ld bc, $9dfe
    ld d, b
    rst $38
    rst JumpTable
    rst $30
    ld a, c
    dec [hl]

jr_036_7e7b:
    add b
    inc d
    db $eb
    ld e, b
    and a
    ld d, a
    ld d, b
    rst $38
    rst $28
    cp c
    ld a, [c]
    ld a, h
    xor l
    rst JumpTable
    rst $28
    ld sp, hl
    ld a, a
    dec h
    nop
    inc bc
    ld [bc], a
    ld bc, $0401
    inc h
    ld l, b
    rla
    ld e, b
    ccf
    ld [$0b7f], sp
    ld a, [hl]
    ld bc, $ff55
    ld d, $fe
    ld a, [hl]
    cp $3d
    cp $6f
    ld c, $26
    sub [hl]
    scf
    ld d, l
    ld d, h
    rst $38
    ld [hl], $97
    ld b, a
    ld l, [hl]
    ld b, $25
    ld e, [hl]
    ld l, a
    cp a
    ld d, l
    ld d, c
    rst $38
    ld b, e
    cp $8a
    add e
    and c
    jr nz, jr_036_7f01

    cp $c6
    ld d, c
    dec d
    rst $38
    call nz, $eaec
    cp a
    ei
    rrca
    rst $30
    inc sp
    ld [$5508], sp
    ld d, l
    rst $38
    ld hl, $5d92
    ld a, [hl]
    cp $fd
    cp $3e
    ld d, l
    ld d, l
    rst $38
    sub d
    ld a, e
    ld d, e
    rla
    cp $f9
    push bc
    or $00
    dec d
    rst $38
    cp $01
    db $f4
    dec bc
    ld [$a015], a
    ld e, a
    inc b
    ei
    db $10
    ld bc, $5540
    ld d, c
    rst $38
    ld b, e
    cp $8a
    add e
    and c
    jr nz, @+$43

    cp $c6

jr_036_7f01:
    ld d, c
    ld d, l
    rst $38
    call nz, $eaec
    cp a
    ei
    rra
    ccf
    adc [hl]
    dec de
    ld d, l
    ld a, l
    rst $38
    jp $efc7


    rst $08
    rst JumpTable
    db $fd
    ld d, c
    ld b, h
    rst $38
    ldh [$c0], a
    ldh [$fd], a
    ldh [$c0], a
    ret nz

    ei
    ret nz

    pop de
    cp $00
    dec b
    rst $38
    or h
    rr [hl]
    rst $28
    inc l
    db $db
    and e
    db $76
    ld b, h
    db $fd
    cp a
    jp nc, $075b

    ld d, l
    ld b, b
    rst $38
    ld [$2a02], sp
    ld e, $36
    pop de
    ld a, a
    ldh [$fd], a
    ld [c], a
    db $ed
    ld b, d
    nop
    ld b, a
    cp c
    ld e, l
    cp e
    ld c, c
    rst $30
    ld sp, hl
    dec a
    rst JumpTable
    ld a, e
    rst $38

Call_036_7f50:
    ld a, c
    cp a
    ld a, [$007b]
    nop
    ldh a, [$3f]
    sbc b
    ld a, a
    cp d
    rst $30
    ld c, l
    rst $38
    ld a, [hl]
    rst $28
    rst JumpTable
    cp a
    ei
    rst $20
    xor $f3
    call nc, $ff64
    cp d
    sbc c
    rst $30
    cp a
    sub $df
    ld a, [$fef5]
    ld d, b
    ld de, $faff
    ld [c], a
    ld c, b
    rst $30
    push de
    ld [$ebf4], a
    ret z

    dec e
    ei
    and l
    nop
    nop
    ld e, $f7
    ld l, $df
    ld b, l
    cp a
    ld a, [hl+]
    rst $10
    ld h, e
    sbc h
    ld [de], a
    db $ed
    ld [$84ff], sp
    ld a, a
    ld d, l
    nop
    rst $38
    db $fc
    dec sp
    add hl, hl
    inc bc
    cp l
    ld [$fd8f], a
    inc a
    di
    and [hl]
    reti


    nop
    nop
    ld [$c137], a
    ld a, a
    ret z

    dec [hl]
    inc sp
    adc $a6
    ld sp, hl
    ld hl, $004a
    cp a
    ld d, $eb
    jr nz, jr_036_7fba

jr_036_7fb6:
    db $fd
    ld e, [hl]
    cp a
    ld a, [de]

jr_036_7fba:
    rra
    call $3fe4
    db $10
    xor a
    push bc
    ei
    ld h, d
    adc a
    ld hl, sp+$14
    ld c, b
    rst $38
    or c
    ld a, [hl]
    ld l, b
    ld l, c
    ccf
    ei
    ld a, b
    rst $28
    ei
    di
    rst $10
    rst $10
    ld d, c
    inc b
    db $fc
    ld a, e
    cp e
    xor $f8
    db $e3
    call nz, $a8f8
    db $f4
    jp nz, $e895

    ld d, a
    rst $30
    nop
    ldh [rNR41], a
    ret nz

    add c
    inc b
    inc b
    ld b, b
    ld d, a
    xor b
    ld h, $d8
    cp h
    sub b
    ld l, b
    jr c, jr_036_7fb6

    ld d, $e8
    cp [hl]
    ld hl, sp+$00
    nop
    ld d, a
    nop
    ld b, $01

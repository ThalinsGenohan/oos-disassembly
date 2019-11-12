; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX

    and e
    pop af
    ld d, d
    inc l
    cp b
    xor a
    ld d, e
    xor c
    or e
    ld d, d
    ld de, $1111
    ld d, e
    xor c
    ld c, $38
    ld de, $5352
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, d
    ld d, e
    xor a
    inc c
    ld c, $fb
    xor a
    xor a
    ld d, d
    ld de, $1111
    ld d, e
    db $fd
    db $fd
    ld d, d
    ld de, $e0f8
    db $fd
    ld de, $5311
    ld d, d
    ld de, $1111
    ld d, e
    rst $38
    rst $38
    xor a
    cp a
    rst $38
    xor a
    xor c
    rst $38
    ld e, a
    xor a
    xor c
    xor c

Call_024_4041:
    db $fc
    ld c, $fb
    xor a
    xor a
    and a
    db $fd
    db $fd
    db $fd
    db $fd
    ei
    rst $08
    db $fd
    and a
    and a
    and b
    ld a, a
    db $fc
    xor a
    xor c
    ld d, d
    add b

Call_024_4057:
    di
    rst $00
    xor a
    ld d, d
    ld [hl], b
    xor c

Call_024_405d:
    ld d, d
    add b
    cpl
    rst $38
    xor a
    xor c
    ld d, d
    ld [hl], b
    db $fc
    inc bc
    ei
    ld d, d
    add b
    ld d, d
    ld [hl], b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $08
    ccf
    db $fd
    ld d, d
    add b
    ld d, d
    ld [hl], b
    call c, $0102
    add c
    jr jr_024_408b

    dec hl
    ld [hl], c
    jr jr_024_408f

    ld hl, sp-$08
    ld hl, sp-$7d
    ld [$2bf8], sp
    ld bc, $1881

jr_024_408b:
    ld bc, $eba0
    and d

jr_024_408f:
    dec hl
    ld c, $71
    jr jr_024_40b6

    adc b
    ld hl, sp+$01
    xor c
    xor d
    xor e
    dec hl
    ld bc, $1881
    ld bc, $eaf6
    or $81
    call nz, $012b
    ld [hl], c
    jr @+$03

    ld c, $0d
    dec c
    ld c, $0e
    add c
    jr @+$41

    ld b, c
    dec hl
    ld [hl], c
    jr @-$07

jr_024_40b6:
    rst $30
    rst $30
    rst $30
    rst $30
    ld c, $fe
    ret


    dec hl
    ld bc, $0e0e
    ld c, $0e
    inc h
    sub e
    dec hl
    ld c, $0e
    ld bc, $0e01
    xor [hl]
    xor [hl]
    ld c, $01
    ld bc, $ce73
    dec hl
    xor h
    xor l
    ld bc, $bc01
    cp l
    ret


    inc [hl]
    dec hl
    ld c, $0e
    dec c
    xor [hl]
    xor [hl]
    dec c
    ld bc, $0d0e
    or e
    ld a, a
    dec hl
    dec c
    ld c, $0e
    ld [hl], b
    ld hl, sp+$1b
    ld bc, $012b
    ldh [$f7], a
    ld bc, $010e
    dec hl
    add hl, de
    add e
    rst $30
    jr @+$03

    ld c, $2b
    add hl, de
    ld h, b
    ld bc, $a4a3
    and l
    rst $30
    jr @+$2d

    ld [hl+], a
    rst $30
    add hl, de
    or e
    or h
    or l
    jr jr_024_411d

    ld d, b
    or $01
    dec hl
    add hl, de
    rst $30
    ld [$88f7], a
    dec hl
    jr @+$03

    ld c, $19

jr_024_411d:
    rst $30
    rst $30
    ldh a, [$2b]
    rst $30
    rst $30
    jr jr_024_4126

    ccf

jr_024_4126:
    dec hl
    ld [hl], c
    inc b
    sub l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec hl
    ld c, [hl]
    ld bc, $2b0e
    dec hl
    add hl, de
    ldh a, [$2b]
    ld [hl], b
    ld [hl], d
    ld bc, $4101
    dec hl
    add hl, de
    add b
    add d
    ld bc, $0d0e
    ret nz

    ld bc, $0d0e
    dec hl
    add hl, de
    inc b
    add b
    ld a, [bc]
    ld c, $2b
    dec c
    dec hl
    add hl, de
    rst $30
    rst $30
    inc bc
    ld bc, $0d2b
    ld c, $0d
    dec hl
    add hl, de
    xor b
    ld c, $ca
    inc b
    ld bc, $0d2b
    pop af
    dec hl
    add hl, de
    jp z, $0704

    dec hl
    inc e
    rst $30
    rst $30
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c

jr_024_4172:
    ld [hl], c
    ld [hl], c
    ld h, b
    ld d, h
    add d
    ld [hl], c
    jr jr_024_4172

    ld b, l

jr_024_417b:
    add sp, $00
    ld d, c
    ld [de], a
    ld [hl], d
    add c
    jr jr_024_417b

    ld d, b
    add sp, $0c
    ld [de], a
    ld l, c
    ld e, [hl]
    add c
    inc b
    ld a, [de]
    ld c, $30
    ld e, a
    ld hl, sp-$08
    ld d, d
    rrca
    rst $30
    inc b
    ldh [rLCDC], a
    inc b
    jr jr_024_41a8

    ld hl, sp+$62
    rlca
    inc b
    ld a, [de]
    ld bc, $50f8
    ld d, h
    inc a
    inc b
    ld d, h
    ld d, h
    ld a, [de]

jr_024_41a8:
    ld c, $0f
    ld hl, sp-$09
    inc b
    inc b
    inc b
    inc a
    dec de
    inc b
    ld a, [de]
    ld [hl], c
    ld [hl], b
    ld hl, $f771
    inc b
    rst $30
    ld [hl], b
    ld sp, $4030
    pop bc
    ld bc, $535d
    ld hl, sp-$08
    dec c
    ld c, $0e
    ld d, d
    ld e, l
    ld d, e
    ld hl, sp-$08
    inc bc
    nop
    dec de
    inc e
    ld d, d
    rrca
    ld d, e
    ld hl, sp-$08
    ld c, $1c
    call nz, $c404
    ld d, d
    ld b, b
    ld h, e
    ld e, b
    ldh [rDIV], a
    ld hl, sp+$0d
    add hl, de
    call nz, $5452
    ld d, c
    ld hl, sp+$01
    inc e
    add c
    nop
    inc b
    ld d, d
    ld hl, sp-$08
    ld c, $1c
    call nz, $201f
    ld hl, $1b52
    dec de
    inc e
    call nz, Call_024_7fc0
    jr nc, jr_024_4203

    inc b
    ld [hl+], a
    inc hl
    inc h

jr_024_4203:
    ld d, d
    ld [hl-], a
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst JumpTable
    inc bc
    ld d, h
    sub l
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, l
    ld de, $098c
    ld [de], a
    ld de, $526e
    ld c, [hl]
    ldh [$6d], a
    ld l, [hl]
    ld c, l
    ld e, a
    ld d, d
    ld de, $fe00
    ld b, b
    ld e, a
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, l
    ld de, $6211
    ld hl, sp+$0f
    ld d, h
    ld b, b
    ld b, b
    ld d, b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    cp a
    inc bc
    ld d, h
    add sp, $12
    ld e, l
    ld de, $6f11
    ld l, [hl]
    ld bc, $1219
    ld l, l
    ld l, a
    ld de, $115f
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, [hl]
    ld l, l
    ld de, $005e
    rst $38
    ld b, b
    ld [de], a
    ld c, l
    ld e, a
    ld de, $4e11
    ld [de], a
    ld [de], a
    db $fc
    rrca
    ld d, h
    ld b, b
    ld b, b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    ld hl, sp-$3d
    db $fd
    ld d, c
    ld de, $1138
    ld de, $2f2f
    add a
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

Call_024_4304:
    db $fd
    jr c, @-$1e

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
    jr nc, jr_024_43a2

    jr jr_024_439e

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
    db $fd
    db $fd
    ld d, d

jr_024_4357:
    ld de, $5011
    jp nz, Jump_024_530f

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

jr_024_437c:
    pop af
    rst $10
    daa
    ld hl, sp+$16
    ld d, d
    rst $10
    call nz, $f81c
    call nz, $01c4
    ld h, d
    ld b, d
    ld [hl], c
    ld hl, sp-$3c
    call nz, $01c4
    jr c, jr_024_4357

    ld d, b
    ld d, d
    ld hl, sp-$08
    ld hl, sp-$10
    ld b, b
    ld hl, sp+$01
    or c
    ld h, d

jr_024_439e:
    rrca
    ld b, b
    or c
    ld d, b

jr_024_43a2:
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
    jr @-$5b

    db $eb
    and h
    db $eb
    and l
    ld c, $16
    ld bc, $b4b3
    or h
    jr jr_024_437c

    ld bc, $b5b4
    dec hl
    ld c, $2b
    or $ea
    or $ea
    or $2b
    ld c, $55
    db $fc
    dec hl

jr_024_43cc:
    dec c
    dec c
    dec c
    ld b, e
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

Jump_024_43dc:
    ret nz

    rst $38
    or c
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    xor d
    ld b, h
    ld bc, $c80e
    ret z

    ld c, $19
    add b
    ret z

    ld c, $c8
    dec c

jr_024_43f2:
    ret nz

    inc bc
    ret z

    ld bc, $1901
    ld [hl], b
    ld bc, $1b0d
    dec de
    inc e
    add b
    ld b, b
    ld b, b
    inc b
    jr jr_024_43cc

    ld b, d
    rst $20
    add hl, de
    rra
    jr nz, jr_024_442b

    ld [hl], b
    ld d, h
    ld d, h
    ld d, d
    add hl, de
    ld [hl+], a
    inc hl
    ldh [rIF], a
    ld b, b
    inc h
    add b
    or c
    or c
    ld h, d
    or c
    or c
    ld d, b
    ld d, h
    ret nz

    rst $38
    or c
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    xor c
    add c
    inc b
    add b
    add b

jr_024_442b:
    add b
    jr nc, jr_024_43f2

    dec hl
    add b
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
    ld a, [hl+]
    add b
    add c
    add c
    add c
    add d
    ld [hl], d
    inc c
    dec hl
    add c
    add b
    and [hl]
    db $eb
    xor b
    and c
    jr nc, jr_024_449b

    add b
    add c
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
    db $fd
    db $fd
    jr c, jr_024_44ba

    db $fd
    ld h, d
    ld b, d
    cp c
    add hl, bc
    and b
    jp z, $fdfd

    pop af
    ld b, l
    ld d, d

jr_024_449b:
    rrc h
    db $fd
    cp c
    add hl, bc
    ld [$626a], sp
    ld b, b
    ld a, a
    ld b, b
    ld h, e
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4

jr_024_44ba:
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    ld b, h
    xor b
    cp b
    and a
    xor e
    or h
    xor h
    xor c
    or b
    xor b
    cp b
    cp b
    and c
    and a
    cp d
    add c
    xor b
    xor c
    xor d
    cp b
    xor l
    and a
    or h
    nop
    and [hl]
    xor b
    or h
    xor c
    xor [hl]
    cp b
    xor l
    or a
    ld de, $bdb5
    rst $28
    cp [hl]
    xor c
    xor [hl]
    cp b
    cp $b2
    xor l
    ld hl, sp-$4e
    and b
    cp b
    xor l
    ldh [$bc], a
    or d
    or d

jr_024_4595:
    cpl
    cpl
    or c
    rrca
    cp h
    or b
    cp b
    ld b, l
    ld d, h
    ccf
    ld d, h
    ld b, [hl]
    cp b
    rra
    ld a, h
    cp b
    ld sp, $3030
    jr nc, jr_024_45da

    ld d, d
    ret nz

    ld bc, $a230
    or d
    or e
    and d
    cp b
    ld sp, $a432
    or d
    and d
    or d
    cp b
    ld d, d
    ldh [rP1], a
    or d
    push hl
    push hl
    and l
    or e
    and d
    cp b
    scf
    reti


    reti


    inc b
    and l
    and e
    and d
    inc bc
    ld [$2fb2], sp
    cpl
    sub d
    inc b
    reti


    inc b
    sbc h
    and h
    and d
    cp b
    ld b, a
    push hl

jr_024_45da:
    push hl
    nop

Call_024_45dc:
    rst $00
    ld b, b
    dec d
    rla
    sub $a5
    and e
    and d
    cp b
    ld h, d
    ld e, b

jr_024_45e7:
    rst $08
    ld d, a
    rst $38
    ld bc, $3430
    and d
    or e
    and [hl]
    ld a, [de]
    ld c, $19
    jr nc, jr_024_4635

    or d
    sub d
    jp z, Jump_024_53cb

    and d
    and [hl]
    ld a, [de]
    inc e
    sub d
    inc b
    inc b
    ld d, e
    and d
    ld bc, $b203
    ld b, e
    ld [hl], $d0
    dec [hl]
    ld b, b
    ld b, b
    ld h, e
    or h
    ld d, e
    ld b, [hl]
    ret nc

    ld d, b
    ld d, h
    jr nz, jr_024_4595

    ld d, e

jr_024_4616:
    ld d, h
    ld b, [hl]
    and d
    or d
    or [hl]
    ld b, a
    ld c, $1c
    or l
    and d
    ld c, b
    or d
    or [hl]
    dec d
    ret nz

    ld bc, $5240
    inc e
    or l
    and e
    or [hl]
    ld d, e
    ld h, e
    ld h, d
    ld a, c
    adc [hl]
    ld a, d
    adc h
    ld h, e
    add a

jr_024_4635:
    inc bc
    and d
    sub b
    sub c
    sub d
    sub e
    and b
    and c
    scf
    sub h
    sub l
    sub [hl]
    ld b, b
    ld [$974a], sp
    jr c, jr_024_45e7

    and c
    or b
    or c
    sbc b
    sbc c
    sbc d
    sbc e
    or b
    or c
    or d
    or d
    ld hl, $4a84
    ld b, c
    xor $ef
    ld b, d
    or d
    or d
    or d
    or d
    and l
    and l
    and l
    and l
    rlca
    jr jr_024_4616

    scf
    ld b, a
    ld a, [hl-]
    and l
    and l
    add hl, sp
    ld c, b
    jr c, jr_024_46b7

    and e
    and h
    inc bc
    inc c
    ret nc

    and e
    and h
    ld c, d
    or d
    scf
    ld c, d
    and e
    and h
    and e
    and h
    ld c, d
    jr c, jr_024_46be

    and d
    scf
    ld c, c
    ld a, [hl]
    and d
    jr c, jr_024_46bd

    ldh a, [$a2]
    ld b, a
    ld c, c
    ld c, b
    jr c, jr_024_46af

    ld c, d
    and d
    ld h, a
    rst $28
    ld l, c
    and d
    and h
    ld [hl], b
    cp h
    or e
    or l
    and d
    ld c, d
    ld c, d
    ld e, $49
    scf
    ld b, a

jr_024_469f:
    ld a, [hl-]
    cp h
    ld a, b
    cp h
    add hl, sp
    ld c, b
    ld c, e
    ld h, a
    ld h, d
    ret nc

    ld l, c
    ld h, a
    ld l, c
    ld l, h
    dec sp
    dec a

jr_024_46af:
    cp h
    dec sp
    dec sp
    ld h, h
    ldh a, [rOBP1]
    rrca
    ld c, d

jr_024_46b7:
    cp h
    ld b, a
    rst $38
    and d
    ld [hl], a
    and d

jr_024_46bd:
    and h

jr_024_46be:
    and h
    adc b
    and h
    or e
    or l
    and d
    or e
    or h
    or l
    ld l, $b4
    or e
    or d
    scf
    ld c, c
    rst $38
    ld c, c
    cp $bc
    ld c, b
    ei
    cp h
    xor h
    ccf
    cp h
    scf
    ld c, c
    ld hl, sp+$49
    ld a, [hl-]
    rst $08
    add hl, sp
    cp $58
    ld c, b
    ld a, h
    ld c, c
    and d
    scf
    jr c, jr_024_46ee

    and d
    ld c, d
    cp h
    rst $20
    xor h
    cp h
    ld [hl+], a

jr_024_46ee:
    ld c, d
    rst $20
    and d
    and d
    scf
    cp h
    cp h
    ld b, $bc
    xor h
    ld c, d
    jr c, jr_024_469f

    ld c, b
    ld b, a
    add hl, bc
    ld a, [hl-]
    cp h
    add hl, sp
    cp h
    ld c, e
    ld c, d
    or h
    ld [de], a

jr_024_4706:
    ld h, a
    cp h
    ld l, c
    ret nc

    ld l, c
    ret nc

    ld l, h
    inc a
    cp h
    ld b, a
    ld c, c
    dec sp
    dec sp
    ldh a, [rOBP1]
    cp h
    cp h
    cp h
    cp h
    inc a
    ld c, c
    ld c, b
    ld b, a
    ld e, b
    ld e, b
    di
    ld e, b
    ld e, c
    ld d, a
    ld a, b
    ld c, c
    and d
    and d
    scf
    jr c, jr_024_4739

    and d
    ld c, d
    rst $20
    cp h
    cp h
    inc a
    and d
    cp h
    ld c, d
    ld c, d
    cp h
    rlca
    cp h
    ld c, d
    and d

jr_024_4739:
    and d
    or l
    and h
    ld e, $bc
    ld c, d
    ld c, d
    and h
    and d
    ld a, b
    cp h
    ld c, c
    ld c, c
    ld c, b
    ld c, d
    db $fc
    cp h
    or h
    or d
    ldh a, [rOBP1]
    cp h
    ld c, d
    jr c, jr_024_4706

    rlca
    ld c, c
    ld c, b
    ld c, d
    jr c, @+$5a

    ld e, b
    rra
    ld e, b
    ld e, c
    ld c, d
    ld c, d
    inc bc

jr_024_475f:
    rlca
    sub a
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    and b
    and c
    ld bc, $0101
    pop bc
    rrca
    ld bc, $a7a6
    sub a
    sub a
    or b
    or a
    sub a
    sub b
    sbc b
    ld e, $00
    ld bc, $9e99
    sbc a
    sub b
    or h
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    nop
    nop
    xor a
    or l
    or d
    cp b
    cp c

jr_024_478e:
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    sbc l
    or e
    sbc e
    and d
    and e
    cp a
    add b
    ld a, b
    ld b, b
    cp a
    cp a
    cp a
    and h
    and l
    sbc h
    ld h, d
    ld [hl], $d0
    dec [hl]
    ld h, e
    rst $38
    xor l
    ld a, a
    xor l
    ld sp, $306f
    ld sp, $b834
    rrca
    xor l
    ld d, d
    rst $20
    ld d, d
    ldh a, [$64]
    rrca
    jr c, jr_024_475f

    scf
    jp nz, Jump_024_520f

    ld de, $2f2f
    cpl
    ld de, $640f
    ld d, d
    ld de, $a148
    ld b, a
    rrca
    rrca
    ld e, c
    adc $57
    ld h, e
    inc a
    ld b, b
    ld sp, $4562
    ld d, h
    pop af
    ld d, h
    ld b, [hl]
    ld d, d
    ld b, l
    rst $38
    xor l
    db $fc
    jr nc, jr_024_478e

    xor l
    ldh a, [rIF]
    jr nc, @+$36

    xor l
    xor l
    add e
    rrca
    ld h, h
    ld d, e
    xor l
    xor l
    ld h, h
    rra
    rrca
    ld d, e
    or l
    and h
    rrca
    ld h, h
    rrca
    rrca
    rrca
    ld d, e
    db $fc
    rrca
    or h
    or h
    ldh a, [rLCDC]
    rrca
    ld d, e
    and b
    and c
    rlca
    ld b, b
    ld h, e
    and [hl]

jr_024_4808:
    and a
    ld d, h
    ld d, h
    rra
    ld d, h
    ld b, [hl]
    add d
    ld [hl], d
    ccf
    db $fc
    xor l
    ld sp, $3030
    jr nc, jr_024_4808

    jp Jump_024_52ad


    ld a, [c]
    ld e, l
    rrca
    ld d, d
    ld e, a
    rst $20
    rrca
    ldh [$80], a
    rrca
    and h
    and h
    xor l
    xor l
    ld d, d
    or l
    or e
    or h
    or h
    or l
    and h
    ld d, d
    nop
    ld c, $40
    rrca
    rrca
    and d
    and b
    and c

Call_024_4839:
    and d
    and b
    and c
    ld h, d
    and [hl]
    and a
    and [hl]
    and a
    jr c, @-$1e

    ld d, h
    and [hl]
    and a
    ld b, l
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    ld b, l
    ld a, b
    ldh [$ad], a
    jr nc, jr_024_4883

    inc [hl]
    ld sp, $3030
    rrca
    rrca
    ld d, e
    inc a
    ldh a, [rIF]
    xor l
    ld d, d
    ld d, e
    xor l
    xor l
    xor l
    xor l
    ld d, d
    ret nz

    inc bc
    rrca
    ld d, e
    and h
    xor l
    xor l
    xor l
    ld d, d
    ld d, e
    or h
    or l
    and h
    or e
    ld e, c
    nop
    inc a
    ld d, h
    adc $57
    ld b, b
    ld b, b
    ld h, e
    and c
    and d
    and b
    and c
    ld b, l
    ld b, [hl]
    and a

jr_024_4883:
    ldh a, [$c0]
    ld d, h
    and [hl]
    and a
    and [hl]
    ld b, l
    ld b, [hl]
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld b, l
    rra
    jr nc, jr_024_48c7

    xor l
    xor l
    inc e
    rrca
    xor l
    xor l
    db $ec
    ld l, a
    ld d, e
    rrca
    xor l
    rrca
    rrca
    ld l, a
    ld l, [hl]
    inc e
    xor l
    ld h, h
    ld d, e
    and l
    rrca
    ld e, [hl]
    ret nz

    jr nc, jr_024_4910

    ld h, h
    ld c, l
    ld d, e
    xor l
    ld sp, $401f
    ld h, e
    and h
    ld d, d
    nop
    ld de, $540f
    ld b, [hl]
    cp e
    cp h
    cp l
    ld l, e
    sub b

Jump_024_48c0:
    ld d, h
    and b
    ld d, d
    rrca
    ld de, $4546

jr_024_48c7:
    jr nc, jr_024_48d8

jr_024_48c9:
    ld b, [hl]
    ld l, e
    and a
    ld d, d
    ld d, h
    ld b, [hl]
    ret nz

    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld l, e
    ld [hl], d
    ld h, d
    rlca

jr_024_48d8:
    dec de
    xor l
    ld sp, $3030
    jr nc, jr_024_4913

    and h
    ld d, d
    rrca
    rrca
    ld bc, $0f07
    ld d, e
    xor l
    xor l
    or h
    or l
    and h
    ld d, d
    ld d, e
    xor l
    xor l
    jr nc, jr_024_4922

    inc b
    ld de, $300f
    ld [hl-], a
    xor b
    ret nc

    ld e, h
    xor l
    and h
    ld l, [hl]
    di
    ld l, l
    ld d, e
    ret nc

    ld l, e
    jr c, @-$7e

    ld h, h
    and l
    or h
    ld e, [hl]
    ld e, l
    ld d, e
    ret nc

    ld l, e
    and c
    and d
    rrca
    ld e, a

jr_024_4910:
    ld c, [hl]
    ld b, b
    ld [bc], a

jr_024_4913:
    ld e, b
    ld e, l
    ld d, e
    ret nc

    ld l, e
    and [hl]
    and a
    adc $57
    adc $5a
    ret nc

    ld l, e
    add d
    ld [hl], d

jr_024_4922:
    rrca
    ld a, $ad
    ld sp, $3030
    jr nc, jr_024_495e

    ld d, d
    rst $20

jr_024_492c:
    ld hl, sp-$20
    xor l
    xor c
    xor d
    ld d, e
    ld d, d
    rrca
    cp c
    cp d
    ld d, e
    jr c, jr_024_4939

jr_024_4939:
    rrca
    and h
    ld sp, $5352
    inc [hl]
    or l
    and l
    or h
    ld d, d
    ld h, d
    ld e, b
    adc $57
    jr nz, jr_024_48c9

    ld d, d
    ld h, e

jr_024_494b:
    ld d, e
    and b
    and c
    and d
    ld d, b
    add sp, $54
    ld d, h
    ld d, c
    ld d, e
    and [hl]
    and a
    and [hl]
    rra
    ld a, h
    rrca
    ld d, e
    add d
    ld [hl], d

jr_024_495e:
    add d
    ld d, d
    ld d, e
    ld a, d
    nop
    ld d, h
    ld b, l
    and a
    and a
    ld d, c
    ld h, l
    ld b, a
    ld d, $a7
    reti


    ld [hl], e
    ld [hl], h
    ld b, d
    ld [$d9a7], sp
    inc b
    ld h, h
    ld d, d
    ld c, $d9
    add e
    add h
    reti


    or l
    or e
    ld d, d
    ld c, $00
    and b
    add hl, de
    or a
    reti


    dec d
    rla
    reti


    or a
    and h
    and d
    ld d, d
    dec de
    dec de
    sbc h
    jr jr_024_492c

    ret nz

    ld bc, $a41b
    or d
    ld d, d
    sub [hl]
    sub [hl]
    ld a, [de]
    inc e
    and l
    and d
    ld d, d
    rlc h
    ld c, h
    add b
    pop hl
    ld b, b
    ret nc

    ret nc

    ld c, e
    inc b
    inc b
    and l
    ld h, d
    ld h, e
    ret nc

    ret nc

    ld h, d
    or h
    db $d3
    ld d, h
    jr nc, @+$47

    and c
    and c
    ld h, h
    ld d, b
    or c
    nop
    ld a, [bc]
    inc de
    or c
    ld d, h
    ld d, h
    ld l, c
    and [hl]
    inc b
    rra
    jr nz, jr_024_49e5

    sub e
    reti


    ld d, d
    and d
    and [hl]
    jr nz, jr_024_494b

    add hl, de
    ld [hl+], a
    inc hl
    inc h
    jr jr_024_49e7

    reti


    ld d, d
    or d
    and d
    or e
    or e
    and [hl]
    ld a, [de]
    ld c, $34
    ldh [$b2], a
    sub d
    ld d, d
    and d
    and d
    and [hl]
    ld a, [de]
    inc e
    sub d

jr_024_49e5:
    ld d, d
    and d

jr_024_49e7:
    ld bc, $b21e
    and d
    or e
    and [hl]
    and a
    ld d, d
    ld b, d
    and d
    and d
    and d
    and a
    ld d, d
    inc bc
    ld [$a154], sp
    ld b, [hl]
    ld b, l
    adc c
    sbc [hl]
    adc d
    adc e
    ld b, [hl]

Call_024_4a00:
    ld l, d
    or c
    ld a, c
    ld a, d
    adc d
    db $10
    ld h, b
    ld d, e
    sbc [hl]
    sbc [hl]
    adc e
    ld c, b
    or l
    or d
    adc c
    adc d
    adc d
    adc e
    sbc [hl]
    adc b
    or d
    nop
    inc a
    or d
    and d
    sbc c
    sbc d
    sbc d
    adc b
    sbc [hl]
    adc b
    ld d, e
    ld d, e
    and a
    sbc b
    sbc [hl]
    ldh [$85], a
    or d
    sbc b
    ld d, e
    ld d, e
    and a
    and d
    and d
    ld d, e
    ld d, e
    and a
    and h
    rla
    inc a
    or d
    and d
    ld d, e
    ld d, e
    and a
    and h
    and d
    or h
    ld d, e
    ld bc, $4a06
    xor d
    or e
    or h
    ret nc

    ret nc

    or e
    or h
    xor d
    xor d
    xor b
    xor b
    and l
    and l
    ret nz

    rrca
    xor [hl]
    xor c
    xor c
    xor d
    ld c, d
    ld c, d
    xor l
    xor e
    ld c, d
    ld c, d
    cp l
    nop
    ld c, d
    xor h
    cp b
    cp [hl]
    cp d
    cp d
    cp [hl]
    cp c
    cp e
    ld c, d
    ld c, d
    xor b
    and l
    and l
    xor c
    ld b, $18
    ld c, d
    xor h
    cp h
    and l
    cp h
    and l
    and l
    cp h
    and l
    cp h
    xor b
    xor b
    xor b
    inc e
    ld [hl], b
    xor c
    and l
    and l
    ld c, d
    ld c, d
    xor b
    xor b
    xor b
    and l
    and l
    ld c, d
    add hl, bc
    ld c, d
    ld h, h
    rrca
    cp h
    ld d, a
    ld e, b
    ld e, b
    inc h
    ld c, d
    ld e, b
    ld e, b
    di
    rrca
    cp h
    ld h, a
    rrca
    ld l, b
    ld c, d
    di
    ld h, h
    ld c, d
    ccf
    cp h
    ld c, d
    di
    db $fc
    cp h
    di
    ld c, d
    ret nz

    cp h
    ld c, d
    ld h, h
    di
    ld b, a
    ld c, c
    jr c, jr_024_4aaf

    cp h
    ld c, d
    di

jr_024_4aaf:
    di
    ld h, a
    ld l, b
    ld c, e
    inc c
    ld c, c
    cp h
    add hl, sp
    ld c, d
    cp d
    dec sp
    call nz, Call_024_6830
    cp e
    ld l, h
    ret nc

    ld h, a
    ld c, d
    cp c
    ld hl, sp-$44
    ld c, d
    cp d
    xor c
    ld hl, sp+$0f
    ld l, b
    ld e, b
    ld e, b
    ld e, c
    ld l, c
    rrca
    rrca
    rrca
    and [hl]
    nop
    rrca
    ld h, h
    ld h, l
    xor c
    di
    ld a, c
    ld a, d
    ld a, d
    adc h
    ld h, l
    ld h, c
    cp h
    cp d
    ld [$9e60], sp
    di
    rrca
    sbc l
    adc d
    adc e
    ld d, l
    ld d, [hl]
    xor c
    rrca
    ld h, h
    ld h, h
    sbc l
    adc e
    ld b, $00
    ld c, c
    add hl, sp
    jr c, jr_024_4b5b

    rrca
    sbc l
    sbc [hl]
    sbc [hl]
    adc e
    ld h, a
    ld l, b
    ld l, b
    ld c, d
    xor b
    xor c
    ld [hl], b
    jp $9dbc


    sbc [hl]
    adc d
    adc e
    ld c, d
    dec sp
    adc c
    adc d
    adc e
    ld c, a
    ld l, b
    ld l, c
    ld h, a
    or [hl]
    ld hl, sp+$0f
    xor $b7
    ld h, [hl]
    pop bc
    rrca
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, b
    ld h, [hl]
    rlca
    rrca
    ld d, l
    ld h, b
    ld h, c
    ld d, l
    ld d, [hl]
    ccf
    rrca
    ld d, l
    ld h, b
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, @+$1e

    ld l, b
    ld h, l
    ld h, c
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    ld d, l
    ld d, [hl]
    cp c
    ld b, a
    cp h
    ld c, d
    cp d
    xor c
    xor c
    call c, $0fbc
    xor c
    ld c, d
    ld a, a
    ld l, b
    ld l, c
    ld hl, sp+$0f
    ld c, d
    ld c, d
    ld h, [hl]
    db $e3
    rrca
    ld c, d
    ld c, d
    ld d, [hl]
    adc c
    rrca
    ld h, l
    ld h, [hl]
    ld c, d

jr_024_4b5b:
    ld c, d
    ld h, [hl]
    daa
    rrca
    ld d, l
    ld d, [hl]
    ld c, d
    ld c, d
    db $fc
    rrca
    ld h, b
    ld h, [hl]
    ldh [rIF], a
    ld c, d
    ld c, d
    ld d, l
    ld d, [hl]
    cp e
    inc c
    ld c, d
    cp a
    rrca
    xor d
    cp d
    xor c
    scf
    ret nz

    cp h
    ld c, c
    ld a, [hl-]
    call z, Call_024_4839
    ld c, d
    add d
    ld c, d
    cp h
    ld e, b
    xor l
    sub h
    xor [hl]
    ld e, c
    ld [c], a
    adc c
    ld d, h
    ld b, l
    ld b, [hl]
    ret nc

    ld b, l
    ld b, [hl]
    ld b, l
    ld d, c
    ret nc

    ld d, b
    add b
    jr jr_024_4ba7

    ld d, h
    add sp, $54
    ld d, c
    ld b, a
    ld e, [hl]
    ld h, h
    ld h, h
    ld e, l
    ld e, [hl]
    ld h, h
    ld d, d
    ld de, $f066
    ld [de], a
    ld c, [hl]
    ld l, l

jr_024_4ba7:
    ld l, [hl]
    ld h, h
    ld d, d
    ld de, $4e11
    nop
    xor $40
    ld [de], a
    ld h, h
    ld d, d
    ld de, $1111
    ld e, a
    ld e, a
    ld b, e
    ld h, d
    cp b
    rst $28
    ld d, h
    ld b, b
    ld b, b
    ld h, e
    ld b, l
    ld b, [hl]
    add [hl]
    ld d, h
    ld b, l
    ld b, [hl]
    ld d, d
    ld d, b
    add sp, $1a
    ld d, h
    add sp, $45
    ld b, [hl]
    ld d, d
    rrca
    dec c
    rrca
    ld h, h
    ld d, b
    ld d, h
    add sp, $48
    jr c, jr_024_4c19

    ld e, e
    ret nc

    dec [hl]
    ld h, h
    ld e, l
    ldh [rHDMA4], a
    ld de, $6b53
    ret nc

    ld b, l
    nop
    ld h, h
    ld e, l
    ld de, $6b53
    ret nc

jr_024_4bec:
    ld d, b
    ld d, h

jr_024_4bee:
    inc bc
    ld d, h
    ld e, b
    adc $57
    ld h, e
    ld b, a
    rrca
    dec c
    rrca
    rst $20
    ld d, h
    ld d, h
    ld d, h
    ld b, [hl]
    ld a, $0f
    ld d, d
    ld d, h
    ld d, h
    ld hl, sp+$40
    ld d, h
    ld b, [hl]
    ld h, d
    ld a, e
    ldh [rHDMA4], a
    ld l, d
    ld b, [hl]
    ld [hl], d
    add d
    rrca
    rrca
    ld d, e
    nop
    jr c, jr_024_4c78

    ld d, h
    ld b, [hl]
    ld h, l
    jr nc, jr_024_4c4f

jr_024_4c19:
    ret nc

    ld e, h
    rrca
    rrca
    di
    di
    ld b, [hl]
    ret nc

    adc [hl]
    ret nz

    ld h, h
    ld l, e
    di
    di
    di
    ld d, c
    ret nc

    ld l, e
    di
    di
    rrca
    adc l
    or h
    rrca
    ld h, h
    ld c, b
    di
    ld h, h
    di
    ld h, h
    ld h, h
    ld d, e
    ld bc, $0f06
    ld h, h
    di
    di
    di
    ld a, b
    ld b, b
    ld b, b
    ld h, e
    ld h, h
    ld a, c
    ld a, d
    ld a, d
    adc e
    ld e, $30
    ld h, a
    ld l, b
    ld b, l
    ld d, h

jr_024_4c4f:
    ld a, b
    rrca
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ldh [rIF], a
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld d, d
    jr c, jr_024_4bec

    rrca
    jr c, jr_024_4bee

    ld d, d
    rrca
    rlca
    rrca
    ld h, $9d
    sbc [hl]
    sbc [hl]
    sbc [hl]
    nop
    ld h, d
    ld b, b
    ld [hl], $d0
    dec [hl]
    ld c, d
    sbc c
    sbc d
    sub b
    ld d, c
    sbc d
    adc c
    ld b, l

jr_024_4c78:
    ld d, h
    ret nc

    ld d, b
    push hl
    rrca
    ld de, $4799
    cpl
    rrca
    ld de, $4062
    rrca
    ld b, b
    ld b, d
    rrca
    rrca
    rrca
    ld a, b
    jr nc, jr_024_4ce2

    ld d, h
    ld b, [hl]
    ld b, l
    rlca
    ld d, h
    add sp, $46
    ld de, $095e
    inc c
    ld d, h
    call c, $8e45
    adc [hl]
    adc h
    ld de, $5430
    ld l, [hl]
    add hl, bc

jr_024_4ca4:
    call c, $9e50
    sbc [hl]
    ldh a, [$dc]
    adc d
    adc h
    inc b
    add hl, bc
    rlca
    adc d
    adc e
    inc b
    add hl, bc
    call c, $1cdc
    sbc d
    call c, $9bdc
    inc b
    ld c, h
    ld d, b
    rrca
    rst $38
    ld c, e
    call c, $11dc
    ld de, $dc30
    ld e, a
    ld d, e
    rst $38
    ld d, d
    ld de, $c60f
    ld b, b
    ld b, e
    ld h, e
    rst $38
    ld h, d
    jr nz, jr_024_4ca4

    ld l, e
    ld d, h
    ld b, [hl]
    or [hl]
    or a
    cp b
    jr nc, jr_024_4d0c

    jr nc, jr_024_4d46

    ld d, h
    ld b, [hl]
    xor $07

jr_024_4ce2:
    ld e, h
    call c, $5453
    ld d, c
    ld l, e
    call z, $6b6b
    ld d, e
    db $fd
    nop
    db $fc
    ld b, $fd
    db $fd
    db $fd
    db $fd
    call c, $05dc
    ld d, e
    call c, $1005
    ld b, c
    inc b
    reti


    ld d, e
    call c, $1f08
    jr nz, jr_024_4d25

    push hl
    push hl
    ld d, e
    call c, $2208
    ret nz

    ld [hl], c

jr_024_4d0c:
    ld b, b
    inc hl
    inc h
    inc b
    reti


    push hl
    ld d, e
    ld e, b
    rst $08
    ld d, a
    ld h, e
    rra
    ld l, h
    ld d, h
    ld b, [hl]
    ret nc

    ld l, e
    jr nc, jr_024_4d4f

    add sp, $46
    inc c
    db $10
    rrca
    ret nc

jr_024_4d25:
    ld l, e
    ld a, c
    adc [hl]
    adc [hl]
    adc h
    ld d, h
    ld b, [hl]
    ret nc

    ld l, e
    ld de, $9e89
    ld [$4620], sp
    sbc [hl]
    adc e
    ld d, h
    ret nc

    ld l, h
    ld de, $990f
    sbc d
    sbc d
    sbc e
    ld d, h
    ld e, [hl]
    ld h, h
    jr jr_024_4da4

    ld d, h
    ld l, l

jr_024_4d46:
    ld de, $4645
    and $48
    ld e, [hl]
    ld h, h
    sub [hl]
    ld l, l

jr_024_4d4f:
    ld b, l
    cp [hl]
    add b
    rlca
    ld d, h
    adc $5a
    ld de, $964e
    ld h, h
    ld b, l
    ld b, [hl]
    ld de, $5f11
    ld e, a
    ldh a, [rSB]
    rrca
    jr nc, jr_024_4d95

    jr nc, jr_024_4db9

    ld d, e
    ld e, [hl]
    ld [de], a
    ld [de], a
    ld h, d
    ld b, b
    ld b, d
    rlca
    ld b, b
    rrca
    ld d, e
    ld e, [hl]
    ldh [rNR12], a
    ld b, l
    ld d, h
    ld h, d
    ld b, b
    ld e, b
    adc $5a
    ld e, a
    ld d, h
    db $10
    ld d, h
    ld e, a
    ld b, l
    ld b, l
    add sp, $46
    ld de, $6f6f
    ld d, b
    ld b, l
    ld l, c
    rrca
    jr jr_024_4dbe

    ld h, h
    rrca
    ld c, b
    ld l, [hl]
    ld a, [c]
    ld e, l
    ld b, l

jr_024_4d95:
    ld d, d
    rrca
    rrca
    ld d, e
    ld [de], a
    ld c, l
    ld bc, $0f08
    ld d, b
    ld h, d
    ld e, b
    adc $5a
    ld e, a

jr_024_4da4:
    ld c, [hl]
    ld h, h
    ld e, l
    ld de, $5445
    ld d, h
    ld b, [hl]
    ld b, l
    ld d, h
    and c
    ld b, [hl]
    ret nc

    ret nc

    ld b, l
    and c
    ld d, h
    ld d, h
    ld b, a
    ld l, d
    or c

jr_024_4db9:
    ld d, c
    jr jr_024_4dd5

    ld d, b
    or c

jr_024_4dbe:
    ld l, c
    ld l, d
    ld d, d
    ld d, e
    jp $18c3


    add hl, de
    reti


    reti


    ld d, d
    ld d, e
    ld d, d
    ld d, e
    jp $1b15


    inc e
    reti


    reti


    ld d, d
    ld d, e
    ld d, d

jr_024_4dd5:
    ld d, e
    jp $9c13


    sbc h
    reti


    reti


    ld d, d
    ld d, e
    ld d, d
    ld d, e
    reti


    ld a, [de]
    ld d, $16
    inc d
    rla
    ld d, d
    ld d, e
    ld h, d
    ld h, e
    reti


    sbc h
    jr jr_024_4e07

    sbc h
    inc de
    ld h, d
    ld h, e
    ld d, b
    ld d, c
    dec d
    ld d, $01
    ld bc, $1916
    ld d, b
    ld d, c
    or h
    ldh a, [$b2]
    ld d, d
    and h
    and d
    and d
    and a
    ld h, d
    ld d, d
    and d

jr_024_4e07:
    add e
    rla
    or d
    or a
    ld d, b
    ld d, d
    and l
    and d
    and d
    or e
    ld d, d
    reti


    ld hl, sp-$20
    or d
    and l
    and e
    and d

jr_024_4e19:
    ld d, d
    jp c, $d9d9

    and h
    ld bc, $b20b
    and d
    ld d, d
    jp c, $d9d9

    and l
    and d
    and d
    ld d, d
    jp c, $dada

    add b
    rst $38
    ld b, b
    reti


    and l
    or d
    and e
    and d
    and d
    ld h, d
    ldh [$b2], a

jr_024_4e39:
    ld h, e
    and a
    and l
    and e
    and d
    jr nc, jr_024_4e19

    and d
    ld d, e

jr_024_4e42:
    ld d, c
    or a
    and l
    and e
    ld [de], a
    and d
    and e
    or h
    ld d, e
    and [hl]
    reti


    reti


    ret nz

    or d
    ld a, [de]
    ld c, $01
    and l
    and d
    ld d, e
    ld b, $d9
    and [hl]
    ld a, [de]
    dec de
    ld c, $a5
    ld d, e
    jr jr_024_4e39

    or d
    and d
    or h
    db $e3
    inc b
    jr jr_024_4e7f

    or d
    ld c, $53
    and d
    and [hl]
    reti


    reti


    sub b
    and e
    reti


    ld a, [de]
    dec de
    ld d, e
    or d
    and d
    ld e, $ca
    and [hl]
    ld d, e
    ld b, b
    ld b, b
    ld a, a
    ld b, b
    ld h, e

jr_024_4e7f:
    ld c, $38
    xor b
    ld c, d
    and l
    and l
    xor c
    xor c
    xor c

jr_024_4e88:
    ld c, d
    ld c, d
    and l
    and l
    rlca
    inc c
    xor c
    ld c, d
    ld [hl], a
    and a
    xor b
    xor b
    and l
    and l
    and [hl]
    ld a, b
    add a
    or a
    inc c
    jr nc, jr_024_4e42

    xor b
    ld [hl-], a
    ld [hl-], a
    xor c
    or [hl]
    adc b
    xor h
    xor h
    xor b
    ld sp, $a931
    ret nc

    and d
    and l
    xor h
    xor h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    sbc l
    ld [hl-], a
    jr nz, jr_024_4e88

    sbc a
    and l
    and l
    and l
    ld [hl-], a
    and l
    sbc l
    sbc l
    ld sp, $d09d
    ret nc

    ld sp, $bcfa
    ld c, d
    ld c, d
    dec bc
    cp h
    ld c, d
    ld c, d
    cp c
    rrca
    cp b
    rrca
    cp h
    ld c, d
    xor c
    ld c, d
    rra
    jr nc, jr_024_4f52

    jr nz, jr_024_4efb

    cp e
    ld a, c
    ld c, d
    call nz, Call_024_4a00
    ld [hl+], a
    inc hl
    inc h
    xor b
    sbc l
    sbc [hl]
    adc d
    jr c, @+$4b

    ld c, d
    push hl
    ld b, a
    ld a, [hl-]
    adc c
    ldh [rBCPS], a
    sbc [hl]
    adc d
    ld c, d
    call nz, $0c67
    sbc d
    ld l, c
    sbc c
    ld c, d
    xor c

jr_024_4efb:
    reti


    reti


    rrca
    reti


    rrca
    cp c
    ld b, a
    ld c, c
    rst $38
    ld c, c
    dec c
    cp h
    ld c, d
    ld c, d
    sbc c
    sbc d
    sbc e
    scf
    cp h
    ld c, d
    ld c, d
    ld h, l
    adc h
    cp h
    ld h, [hl]
    xor c
    adc h
    ld c, d
    and $00
    ld c, d
    ld d, l
    ld d, [hl]
    xor e
    xor c
    ld h, h
    adc e
    ld b, a
    ei
    ld c, c
    ld c, b
    ldh [rBCPS], a
    adc e
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    inc sp
    ld l, b
    sbc e
    ld h, a
    ld l, c

jr_024_4f30:
    call nz, $bcf8
    call nz, $a90f
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
    cp c
    rrca
    xor c
    ld c, d
    xor b
    adc l
    adc h
    ld c, h
    inc c
    nop

jr_024_4f52:
    ld c, c
    add hl, sp
    ld b, a
    ld h, h
    ld a, c
    sbc [hl]
    adc e
    ld l, h
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ld a, [hl-]
    adc c
    jr jr_024_4f83

    rrca
    sbc [hl]
    adc e
    call nz, Call_024_6867
    ld l, b
    ld l, c
    sbc c
    sbc d
    sbc e
    call nz, $201f
    inc e
    jr nc, jr_024_4f30

    ld hl, $ba65
    cp d
    cp c
    ld [hl+], a
    inc hl
    inc h
    ld d, l
    xor c
    cp b
    ret nz

    rst $38
    ld c, c
    cp d

jr_024_4f83:
    cp h
    xor d
    xor b
    cp e
    rrca
    nop
    inc e
    ld c, c
    cp h
    cp h
    cp h
    ld c, d
    ld l, b
    cp l
    sub l
    cp [hl]
    ld l, c
    ld c, d
    ld c, b
    ld h, l
    ld h, [hl]
    rlca
    db $10
    rrca
    ld c, d
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld c, d
    ld l, b
    ld l, b
    ld c, h
    ld hl, sp+$0f
    ld l, b
    ld l, c
    ld d, l
    ld d, [hl]
    ld c, d
    ld h, [hl]
    reti


    reti


    pop af
    pop af
    rrca
    ld c, d
    ld d, [hl]
    reti


    reti


    reti


    ld c, d
    ret nz

    ld a, a
    ld c, c
    rrca
    rrca
    reti


    reti


    reti


    ld c, d
    ld c, b
    ld a, $03
    ld d, h
    ld b, l
    ld b, [hl]
    ld a, b
    ld b, a
    ld a, c
    adc h
    add sp, $79
    ld a, d
    inc c
    jr nz, jr_024_4fe3

    ld a, d
    adc e
    ld d, d
    adc c
    adc e
    ld [de], a
    sbc c
    sbc d
    sbc d
    sbc e
    ld de, $9952
    ld [de], a
    or b

jr_024_4fe3:
    ld [de], a
    sbc e
    ld l, l
    ld l, [hl]
    ret nz

    ld e, l
    ld de, $5f52
    ld e, a
    ld c, [hl]
    ret nz

    nop
    ldh [rLCDC], a
    ld e, l
    ld de, $ca52
    set 1, d
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld h, h
    ld l, l
    ld de, $8062
    rra
    ld d, h
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld [de], a
    ld e, l
    ld b, l
    ld h, d
    ld b, b
    ld b, b
    rst $20
    add e
    ld d, h
    ld d, c
    ld b, l
    rrca
    ld de, $d96e
    ld d, b
    db $10
    ld b, d
    ld de, $e254
    ld d, h
    ld d, h
    ld e, [hl]
    ld h, h
    reti


    ld l, l
    ld e, [hl]
    ld [de], a
    ld l, l
    rrca
    ld l, [hl]
    ld h, l
    ld h, [hl]
    reti


    ld h, h
    ld l, l
    ld l, [hl]
    ld e, l
    ld e, [hl]
    ld c, l
    ld c, [hl]
    ld h, h
    ld b, [hl]
    cp b
    ld de, $4e4d
    ld [de], a
    ld e, l
    ld c, [hl]
    reti


    ld h, h
    ld l, l
    ld e, a
    ret nz

    inc bc
    ld b, b
    rrca
    ld de, $4e5f
    ld [de], a
    ld l, l
    ld b, d
    rrca
    ld de, $125e
    ld [de], a
    inc bc
    inc c
    ld d, h
    ld b, [hl]
    rrca
    ld de, $9964
    sbc d
    adc c
    adc e
    ld d, c
    ld l, a
    ld de, $000f
    ld c, d
    ld de, $4e5f
    sbc c
    sbc e
    ld e, [hl]
    reti


    ld h, h
    reti


    ld e, l
    rrca
    ld c, [hl]
    rst $30
    ld c, [hl]
    ld a, b
    and e
    ld de, $64d9
    ld e, l
    ld e, a
    ld c, [hl]
    reti


    ld l, l
    rrca
    dec c
    ld bc, $6f11
    ld l, [hl]
    reti


    reti


    ld e, l
    rrca
    ld e, [hl]
    rst $30
    ld l, a
    ld l, [hl]
    ld [de], a
    reti


    jr nc, jr_024_509f

    ld b, b
    reti


    ld e, l
    rrca
    ld b, e
    ld [de], a
    ld [de], a
    ld c, l
    ld e, a
    ld b, e
    ld h, e
    ld d, h
    ld d, h
    ld a, $f8
    ld d, h
    ld b, l
    ld d, d
    rrca
    rrca
    rrca
    ld d, b
    ld c, [hl]
    inc bc

jr_024_509f:
    rrca
    ld d, d
    rst $30
    ld e, l
    ld de, $ce59
    ld d, a
    ld b, b
    ld e, a
    ld de, $3e07
    ld de, $450f
    ld d, h
    ld d, h
    ld d, h
    ld l, a
    ld d, b
    ld d, h
    db $10
    adc b
    rrca
    ld d, h
    ld d, h
    rst $30
    ld e, l
    ld de, $1111
    ld e, [hl]
    sub e
    ld e, l
    ld b, b
    ld b, b

Call_024_50c4:
    ld b, d
    dec d
    jr nz, jr_024_50d9

    rrca
    ld e, a
    ld l, a
    ld d, h
    ld d, h
    ld h, d
    ld b, b
    ld b, b
    ld b, d
    rrca
    ld e, [hl]
    ld h, h
    jr jr_024_5139

    ld d, h
    rrca
    rrca

jr_024_50d9:
    ld d, e
    ld b, [hl]
    cp $45
    rrca
    rrca
    ld d, e
    ld d, c
    inc c
    ret nz

    ld d, h
    db $fd
    ld d, b
    ld b, b
    ld b, b
    ld h, e
    ld a, [c]
    inc b
    add hl, bc
    db $fd
    db $fd
    ld [$0418], sp
    db $10
    inc b
    ld b, [hl]
    ld c, [hl]
    add hl, bc
    db $fd
    db $fd
    ld [$5418], sp
    ld d, h
    ld d, c
    ld e, [hl]
    add hl, bc
    dec l
    dec l
    inc d
    jr nz, @+$11

    ld [$111a], sp
    ld e, [hl]
    inc b
    add hl, bc
    ld l, $2e
    ld [$6f04], sp
    ld de, $0c11
    ldh a, [$fd]
    ld c, [hl]
    add hl, bc
    ld a, [bc]
    dec bc
    ld h, h
    ld e, l
    ld de, $5e11
    add hl, bc
    rst $38
    ld d, h
    dec c
    ld d, h
    ld b, [hl]
    ld l, c
    rrca
    rrca
    ld l, d
    rlca
    ld d, h
    ld d, c
    ld bc, $620e
    ld e, b
    jr nc, jr_024_5134

    adc $5a
    ld c, $19

jr_024_5134:
    ld c, $01
    ld b, $54
    ld d, b

jr_024_5139:
    ld d, c
    ld c, $01
    rla
    inc b
    inc bc
    dec de
    add hl, de
    sub d
    inc b
    sub d
    jr @+$03

    ldh [rNR14], a
    ld c, $43
    inc b
    inc b
    ld a, [de]
    ldh a, [$0b]
    dec de
    ld c, $01
    ld d, e
    inc bc
    dec bc
    ld e, $18
    ld c, $53
    db $fd
    db $fd
    rrca
    db $fd
    ld [$0118], sp
    ld d, e
    ld e, $54
    ld d, b
    ld d, c
    ld de, $036f
    ld de, $1f64
    jr nz, jr_024_518e

    inc b
    ld e, l
    ld [de], a
    inc b
    ld e, [hl]
    ld l, l
    ld de, $2322
    inc h
    ret nc

    inc b
    ld c, l
    ld de, $4e11
    ld l, l
    inc a
    ld de, $5f4d
    ld c, [hl]
    inc b
    rst $38
    ld b, b
    inc bc
    ld b, b
    ld b, [hl]
    cp e
    cp l
    ld b, l
    ld d, h
    ld d, h

jr_024_518e:
    rrca
    ld d, h
    ld b, [hl]
    rst $38
    rst $38
    ld l, e
    jr nc, @+$56

    cp e
    cp h
    cp l
    ld b, l
    ld b, [hl]
    rst $38
    dec e
    rst $38
    ld l, e
    ld b, l
    ld d, h
    ld d, h
    ld hl, $6e11
    ld h, h
    ld l, l
    ld l, a
    ld d, b
    ld d, h
    jr nc, jr_024_5210

    ld d, h
    ld c, b
    ld e, [hl]
    inc b
    sub d
    ld l, l

Call_024_51b2:
    rlca
    ld l, a
    ld d, e
    ld l, [hl]
    inc b
    sub d
    sub d
    ld c, b
    inc b
    ld h, h
    ld h, h
    sub d
    sub d
    ld d, e
    ld c, l
    ld e, h
    inc b
    ld e, a
    ld c, [hl]
    ld h, h
    ld d, e
    inc bc
    ld b, b
    ld b, d
    ld de, $4e5f
    inc b
    sub d
    ldh [rNR11], a
    sub d
    ld d, e
    ld d, h
    ld d, h
    ld d, d
    jr nc, jr_024_522c

    ld c, [hl]
    sub d
    sub d
    ld d, e
    ld h, d
    ld b, b
    rra
    ld b, b
    ld h, e
    ld d, h
    ld d, h
    ld a, [hl]
    ld d, h
    ld b, l
    ld b, [hl]
    ld a, d

Call_024_51e8:
    adc h
    jr jr_024_5206

    ld bc, $1b0e
    add hl, de
    ld [hl], b
    ld [hl], c
    adc e
    sbc e
    inc de
    sbc h
    jr jr_024_5210

    sbc h
    inc de
    add b
    add c
    adc e
    dec d
    ld bc, $0e14
    ld bc, $0114
    rla
    ld a, c
    sbc e

jr_024_5206:
    jr @+$1b

    sbc h
    jr jr_024_5224

Call_024_520b:
    sbc h
    jr @+$1b

    adc c

Jump_024_520f:
    ld [hl], c

jr_024_5210:
    jr jr_024_5220

    inc d
    ld bc, $1401
    ld c, $19
    adc c
    add c
    ld a, [de]
    add hl, de
    sbc h
    jr @+$1b

    sbc h

jr_024_5220:
    jr jr_024_523e

    sbc c
    ld [hl], b

jr_024_5224:
    ld [hl], c
    ld a, [de]
    ld d, $0e
    ld bc, $1c16
    ld [hl], b

jr_024_522c:
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], c
    jr @+$03

    ld c, $19
    ld [hl], b
    ld [hl], d
    add d
    cp $bb
    ld d, h
    ld b, l
    ld d, b
    ld [c], a
    rrca

jr_024_523e:
    nop
    ld d, h
    adc h
    inc b
    jr @+$1b

    inc b
    ld a, [de]
    dec de
    ld bc, $0e01
    adc e
    dec d
    jp $0114


    rla
    inc b
    inc b
    ld a, [de]

Call_024_5253:
    adc e
    jr jr_024_5264

    rla
    inc b
    inc b
    ldh a, [$80]
    ld bc, $b91a
    sbc e
    ld a, [de]
    ld d, $17
    inc b
    and e

jr_024_5264:
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld c, $74
    ld bc, $160e
    and e
    ld [hl], d
    add c
    inc b
    jr jr_024_5280

    and e
    rst $38
    db $fd
    ld d, h
    ld b, [hl]
    rlca
    nop
    ld d, h
    ld d, c
    ld bc, $9619
    reti


    inc b

jr_024_5280:
    rra
    jr nz, jr_024_52a4

    ld a, c
    adc h
    ld bc, $0419
    ldh [rDIV], a
    sub [hl]
    reti


    ld [hl+], a
    inc hl
    inc h
    adc c
    adc e
    cp d
    cp d
    cp e
    ld d, $17
    ld h, b
    ld b, b
    ld bc, $8b89
    and l
    or d
    or h
    ld d, $16
    ld d, $89
    adc e
    and h

jr_024_52a4:
    ld c, $0e
    adc e
    ld a, [de]
    ld bc, $890e
    adc e

jr_024_52ac:
    and h

Jump_024_52ad:
    ld c, $0e

Call_024_52af:
    ld c, $89
    adc e
    jr nc, jr_024_52ac

    rrca
    sbc l
    sbc l
    cp h
    sbc l
    sbc a
    cp h
    sbc a
    sbc a
    sbc l
    ld h, a
    ld a, $0f
    sbc a
    sbc h
    ld h, l

Call_024_52c4:
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ret


    inc a
    rrca
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    db $e3
    rrca
    rrca
    ld h, l
    ld h, [hl]
    sbc h
    ld d, l

Call_024_52d9:
    ld h, b
    ld h, [hl]
    ld h, l

Call_024_52dc:
    add b
    xor d
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    sbc h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    cp $03
    ld l, b
    ld h, a
    sbc h
    rrca
    sbc h
    rrca
    ld h, l
    ld h, [hl]
    ldh a, [$90]
    rrca
    ld h, l
    ld h, [hl]
    rst $30
    rst $30
    ld d, l
    ld d, [hl]

Call_024_52fd:
    ld d, l
    ld d, [hl]
    inc b
    inc b
    push bc
    dec bc
    rrca

Call_024_5304:
    inc b
    di
    di
    di
    inc b
    inc b
    di
    di
    di
    add hl, sp
    add b

Jump_024_530f:
    inc b
    rrca

Call_024_5311:
    rrca
    rrca
    sbc h
    sbc h
    di
    rst $30
    rst $30
    ld h, [hl]
    sbc h
    rrca
    ld b, $16
    rrca
    inc b
    sbc h
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    inc b
    ld h, l
    ld h, c
    ld d, [hl]
    call z, $684a
    ld l, b
    cp h
    cp h
    inc bc
    ld l, b
    rst $30
    rst $30
    ld b, a
    ld c, b
    cp h
    cp h
    nop
    ld b, a
    ld c, b
    xor c
    ld h, l
    rrca
    cp b
    ld h, a
    ld l, c
    add e
    cp h
    ld h, a
    ld l, c
    ld a, [c]
    ld d, l
    rrca
    ld e, [hl]
    cp h
    cp c
    xor c
    rrca
    ld [hl], b
    cp h
    inc b
    rrca
    rrca
    cp c
    cp d
    ld [de], a
    xor d
    cp d
    rst $30
    rst $30
    cp b
    xor c
    cp e
    add hl, bc
    rrca
    xor e
    inc b
    ld h, l
    ld h, [hl]
    push hl
    push hl
    inc c
    call nz, $e5e5
    rrca
    inc b
    ld d, l
    ld d, [hl]
    cp $40
    ld b, e
    ccf
    nop
    ld l, b
    and [hl]
    and a
    ld d, h
    ld d, h
    ld h, [hl]
    ld h, h
    ld h, h
    rrca
    rrca
    inc b
    ld c, l
    ld c, d
    rrca
    inc b
    ld d, [hl]
    ld h, h
    ld h, l
    ld h, [hl]
    inc b
    inc b
    inc b
    inc b
    ld a, b
    cp a
    inc b
    di
    ld d, l
    ld d, [hl]
    rrca
    rrca
    ld [hl], a
    and e
    inc b
    rrca
    di
    rrca
    ld h, h
    rrca
    rrca
    ret nz

    rst $38
    ld b, b
    rrca
    inc b
    inc b
    rrca
    ld h, h
    ld h, h
    rst $38
    ld bc, $5154
    rrca
    inc b
    rrca
    di
    ld h, h
    ld h, h
    ld [de], a
    or b
    inc b
    rrca
    rst $30
    rst $30
    rrca
    di
    ld h, h
    ld h, h
    ld h, h
    rrca

Call_024_53b7:
    rrca
    rrca
    sub l

Call_024_53ba:
    cp a
    inc b
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [c]
    add c
    inc b

Call_024_53c4:
    rrca
    ld h, h
    rrca
    rrca
    rrca
    rrca
    ld h, h

Jump_024_53cb:
    rrca
    rrca
    ret nz

    rst $38
    ld b, b
    rrca
    inc b
    rrca
    rrca
    rst $30
    rst $30
    ld a, [hl]
    inc bc
    ld d, h

Call_024_53d9:
    ld d, b
    ld b, l
    rst $30

Call_024_53dc:
    rst $30
    ld [hl], b
    ld [hl], c
    inc b
    inc b
    ld bc, $0405
    ld d, b
    ld d, h
    ld d, h
    ld e, a
    ld c, [hl]
    add b
    add c
    db $e3
    ld e, l
    rrca
    rrca
    ld de, $035e
    inc e
    di
    ld h, h
    inc b
    ld c, l
    ld l, a
    ld l, a
    ld l, a
    ld de, $5f5e

Call_024_53fd:
Jump_024_53fd:
    ld l, [hl]
    inc b
    inc bc
    rlca
    inc b
    ld l, a
    ld l, [hl]
    di
    di
    di
    ld l, [hl]
    ld c, l
    rst $30
    rst $30
    di
    di
    ret nz

    add a
    ld b, b
    ld h, h

Jump_024_5411:
    rst $30
    inc b
    inc b
    rst $30
    ld e, l
    ld [hl], $d0
    ret nc

    dec [hl]
    rrca
    inc [hl]
    ld d, h
    ld d, d
    rrca
    rrca
    ld e, [hl]
    ld [de], a
    ld c, l
    add sp, $52
    rrca
    adc e
    ld a, $0f
    ld e, a
    ld e, [hl]
    inc b
    ld e, l
    ld d, d
    ld l, [hl]
    inc b
    ld hl, sp+$00
    ld b, b
    ld e, l
    ld de, $0462
    inc b
    ld e, l
    ld de, $5445
    ld d, h
    ld d, h
    add e
    rrca
    ld d, h
    ld e, a
    ld e, a
    ld de, $500f
    rrca
    ld de, $1111
    ret nz

    rst $38
    ld b, b
    rrca
    ld de, $0f11
    ld de, $600f
    ld d, h
    ld c, [hl]
    ld [de], a
    ld l, l
    rrca
    ld d, e
    ld b, [hl]
    nop
    ld a, c
    ld a, d
    ld de, $124e
    ld l, l
    ld d, e
    ld d, h
    ret nz

    ld [de], a
    ld d, h
    ld d, c
    adc c
    adc d
    rrca
    ld e, [hl]
    ret nz

    ld b, b
    ld d, e
    ld h, h
    ld e, l
    ld e, [hl]
    sbc c
    adc c
    inc bc
    ld b, b
    ld h, e
    ld e, a
    ld de, $646e
    sbc c
    rrca
    ld d, h
    ld b, [hl]
    rrca
    ld e, [hl]
    ld [de], a
    inc a
    ld d, h
    ld [de], a
    rst $30
    ld d, c
    rrca
    and c
    rrca
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld de, $0311
    rrca
    ld de, $4e11
    rst $30
    ld b, b
    ld b, b
    rst $38
    ld b, b
    jr @+$62

    ld d, h
    ld a, d
    adc h
    ld b, l
    ld d, d
    rrca
    rrca
    ld l, [hl]
    ld h, h
    adc d
    adc e
    ld d, b
    ld d, d
    ld c, b
    add b
    ld h, h
    rrca
    ld l, [hl]
    inc b
    adc e
    sbc e
    ld [hl], b
    ld [hl], c
    ld h, d
    ld b, d
    sub d
    sub d
    inc b
    sbc e
    ld bc, $1216
    add b
    add c
    ld b, l
    ld d, d
    sub d
    sub d
    ld c, l
    rst $30
    ret nz

    ld b, l
    ld d, d
    sub d
    inc c
    ld h, b
    ld [de], a
    sub d
    ld e, l
    ret nz

    jp nz, Jump_024_48c0

    ld d, d
    sub d
    sub d
    ld l, l
    rst $30
    ret nz

    ld hl, sp+$07
    ld b, b
    ld [de], a
    ld d, e
    ld h, d
    ld h, e
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    inc c
    jr nc, jr_024_54f5

    ld h, h
    ld e, l
    ld e, [hl]
    add hl, bc
    db $fd
    db $fd
    db $fd
    db $fd
    ld h, h
    ld e, l
    ld e, [hl]
    add hl, bc
    ret nz

    add c
    ld de, $fdfd

jr_024_54f5:
    dec b
    ld b, $04
    ld e, l
    ld b, e
    ld [hl], $ff
    dec [hl]
    ld b, b
    ld e, a
    ld bc, $1103
    ld l, a
    ld l, a
    ld d, e
    ld b, [hl]
    rst $38
    ld b, l
    ld d, h
    ld e, [hl]
    sub d
    sub d
    ld d, e
    ld b, [hl]
    rst $38
    nop
    ldh a, [rLCDC]
    ld b, l
    ld d, h
    ld de, $5e11
    sub d
    sub d
    ld d, e
    ld d, c
    cp $50
    ld d, h
    ret nz

    rlca
    ld d, h
    ld b, b
    ld h, e
    ld c, a
    db $fd
    db $fd
    db $fd
    ld b, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld sp, $fd3f
    ld [$3c18], sp
    ld b, $01
    ld d, e
    rlca
    db $fd
    nop
    ld [$0e18], sp
    ld d, e
    ld e, b
    call Call_024_4057
    nop
    ld [hl], $ff
    dec [hl]
    ld b, d
    ld bc, $5453
    sub h
    inc bc
    ld d, h
    ld b, [hl]
    rst $38
    ld b, l
    ld d, d
    ld c, $53
    dec c
    ld d, h
    sub h
    ld b, [hl]
    rst $38
    ld b, l
    ld h, d
    inc [hl]
    ld d, h
    ld b, b
    ld h, e
    sub h
    ld d, c
    cp $f0
    db $fd
    ld d, b
    ld b, l
    ld d, h
    ld b, [hl]
    rlca
    db $fd
    ld b, l
    ld d, h
    ld b, [hl]
    jr nc, jr_024_559b

    nop
    jr nc, @+$36

    ld a, c
    ld a, d
    adc h
    ld d, b
    ld d, h
    ld d, c
    db $76
    cp $47
    ld l, h
    ld d, b
    ld hl, sp-$03
    ld d, h
    ld d, h
    ld d, d
    db $e3
    db $fd
    call c, Call_024_52dc
    adc a
    db $fd
    call c, Call_024_52dc
    ccf
    db $fd
    call c, $1edc
    db $fd
    ld d, d
    call c, $dcdc
    ld a, b
    db $fd
    call c, Call_024_52dc
    call c, $dc0f
    ld d, d

jr_024_559b:
    db $fd
    db $fd
    db $fd
    jr nc, jr_024_55a6

    db $fd
    call c, $05dc
    ld d, d
    db $fd

jr_024_55a6:
    rlca
    db $fd
    call c, $08dc
    ld b, e
    ld b, b
    ei
    pop hl
    ld d, h
    ld b, l
    ld b, [hl]
    call c, Call_024_45dc
    add a
    rra
    ld d, h
    ld b, [hl]
    call c, $50dc
    ld c, b
    call c, $01dc
    rlca
    call c, $0408
    inc b
    xor b
    db $eb
    xor d
    ld d, e
    ld [$04c6], sp
    cp b
    cp c
    inc e
    ret nz

    call c, Call_024_53ba
    ld a, [bc]
    dec bc
    dec bc
    xor c
    xor $a9
    ld d, e
    ld b, $07
    rra
    ld a, h
    db $fd
    ld d, e
    ld b, b
    ld b, d
    ld c, a
    ld c, a
    ld d, e
    add d
    ld [hl], d
    add c
    jr @+$03

    ld c, $19
    add b
    add d
    ld [hl], d
    ld [hl], d
    add c
    reti


    jr @+$03

    ld bc, $d919
    add b
    add d
    add c
    reti


    dec d
    dec de
    dec de
    dec de
    ld bc, $d917
    add b
    ld d, $16
    add hl, de
    rra
    jr nz, jr_024_562a

    jr jr_024_5619

    ld d, $16
    dec de
    dec de
    add hl, de
    ld [hl+], a
    inc hl
    inc h
    jr jr_024_5616

    dec de

jr_024_5616:
    dec de
    ld [hl], c
    reti


jr_024_5619:
    ld a, [de]
    ld d, $16
    ld d, $01
    inc e
    reti


    ld [hl], b
    add d
    ld [hl], c
    reti


    jr @+$03

    ld bc, $d919
    ld [hl], b

jr_024_562a:
    ld [hl], d
    ld [hl], d
    add d
    ld [hl], c
    jr @+$03

    ld c, $19
    ld [hl], b
    ld [hl], d
    add d
    inc b
    jr nc, @+$06

    add d
    ld [hl], c
    ld a, [de]
    ld bc, $010e
    ld c, $1b
    and e
    ld [hl], d
    add c
    ld a, [de]
    dec de
    ld h, b
    rrca
    reti


    dec de
    inc e
    inc b
    and e
    add c
    jp c, $79da

    ld d, $17
    ld [hl], a
    db $fc
    reti


    jp c, $1b89

    inc e
    pop hl
    ld b, $d9
    adc c
    ld [hl], c
    inc b
    jp c, $89da

    add d
    ld [hl], c
    inc b
    dec d
    rra
    nop
    ld d, $89
    ld [hl], d
    add d
    ld [hl], c
    ld a, [de]
    ld bc, $0e01
    ld bc, $890e
    jp nc, $a401

    ld c, $0e
    ld c, $b0
    ld bc, $8a89
    and h
    ld c, $0e
    ldh a, [$7a]
    dec de
    dec de
    adc c
    adc d
    inc c
    dec bc
    ld a, d
    adc h
    adc c
    adc d
    adc e
    sbc d
    add a
    sbc d
    sbc e
    call c, $99dc
    ldh [$dc], a
    adc e
    rra
    jr nz, jr_024_56bc

    add hl, bc
    nop
    ld [$8b1a], sp
    ld [hl+], a
    inc hl
    inc h
    add hl, bc
    call c, $04e8
    call c, $08dc
    adc e
    ld c, $dc
    add hl, bc
    ld [$8b04], sp
    xor [hl]
    inc e
    ld b, b
    ret nc

    dec [hl]
    ld e, b
    call $f057
    and a
    ld a, d

jr_024_56bc:
    ld a, d
    ld a, d
    adc h
    jr @-$64

    and a
    cp b
    adc e
    sbc e
    reti


    reti


    ret nz

    ld bc, $0496
    rst $20
    or a
    adc e
    ld c, $03
    ld d, $17
    sub [hl]
    sub [hl]
    or a
    sbc e
    ld bc, $010d
    ld c, $19
    reti


    cp c
    cp l
    dec hl
    ld bc, $0e0e
    inc e
    reti


    ld a, b
    dec de
    and e
    and h
    ld a, [de]
    inc e
    ld [hl], c
    inc b
    reti


    or e
    or h
    reti


    dec bc
    reti


    inc b
    ld b, e
    ld [hl], $40
    ld e, b
    ld [hl+], a
    ld d, a
    rst $08
    ld b, b
    ld e, b
    call $4663
    ld e, b
    ld b, b
    rrca
    ld h, l
    ld h, c
    ld d, [hl]
    inc b
    ld d, l
    ld h, b
    ld h, [hl]
    ld d, l
    ld h, b
    ld h, [hl]
    inc b
    inc b
    add c
    ld a, [bc]
    rrca
    sbc h
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, c
    ld d, [hl]
    inc b
    inc b
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld e, $a8
    inc b
    rrca
    sbc h
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    sbc h
    db $e3
    rrca
    pop bc
    rlca
    inc b
    sbc h
    ld d, l
    ld d, [hl]
    rrca
    rrca
    rst $30
    ld h, l
    ld h, [hl]
    sbc h
    rrca
    ld a, [hl-]
    nop
    inc b
    rrca
    rrca
    ld d, l
    ld h, b
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    rst $30
    ld hl, sp+$0b
    ld d, h
    ld b, e
    ld b, b
    ld h, e
    ld d, e
    ld d, c
    db $fd
    db $fd
    db $fd
    rst $28
    cp a
    db $fd
    ld d, e
    ld d, e
    rst $38
    ldh [$fd], a
    inc sp
    jr nc, jr_024_578b

    jr nc, jr_024_5791

    inc bc
    ld c, $fd
    rst $30
    rst $30
    jp z, $33ca

    jr nc, jr_024_579b

    ld de, $5f11
    ld e, a
    nop
    ldh [$30], a
    ld e, a
    ld c, [hl]
    ld d, e
    db $fd
    db $fd
    db $fd
    rst $30
    rst $30
    ld e, l
    ld de, $5e0f
    inc sp
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

jr_024_578b:
    db $f4
    db $f4
    db $f4
    db $f4
    rst $28
    rst $38

jr_024_5791:
    inc b
    db $f4
    rst $38
    rst $38
    inc b
    rst $38
    rrca
    inc b
    db $f4
    db $f4

jr_024_579b:
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
    rlca
    xor [hl]
    ld d, e
    adc b
    sbc d
    adc c
    ld a, d
    inc d
    or $7a
    adc h
    ld [$9853], a
    db $fd
    ld b, $8a
    adc c
    adc e
    rst $30
    dec hl
    rst $30
    ld d, e
    nop
    ld c, a
    db $fd
    sbc c
    adc c
    adc d
    adc e
    cp e
    ret nc

    inc d
    ld c, a
    dec [hl]
    ld h, e
    db $fd
    sbc c
    sbc d
    sbc e
    ldh a, [$fd]
    ld d, e
    ret nc

    ld d, b
    ld d, c
    jp Jump_024_53fd


    inc b
    ld a, [c]
    add hl, bc
    rrca
    call c, $0b53
    dec bc
    inc c
    ccf
    call c, $fd53
    db $fc
    call c, $fdfd
    ld e, $fd
    ld d, d
    call c, $08dc
    jr c, @+$01

    ld d, e
    ld d, h
    ld e, e
    dec [hl]
    ld b, b
    ldh [rIE], a
    ld e, b
    rst $08
    ld e, d
    ld d, h
    ld l, e
    ld c, $54
    ld b, l
    ld b, [hl]
    ld c, a
    ld l, h
    cp $38
    ld d, h
    cp $fe
    ld d, b
    ld d, c
    db $fd
    rrca
    db $fd
    ld [$201f], sp
    ld hl, $db30
    add hl, bc
    db $fd
    call c, $0adc
    ld [hl+], a
    ret nz

    db $db
    inc hl
    inc h
    inc c
    db $fd
    call c, $c0dc
    call c, $0adb
    dec bc
    inc c
    db $fd
    db $fd
    ld a, a
    db $fd
    ld c, a
    ldh a, [$c1]
    db $fd
    ld d, h
    ld h, d
    ld b, b
    ld b, d
    ld d, e
    ld d, h
    ld l, e
    db $ed
    ld d, d
    ld bc, $fdc0
    dec b
    ld b, $53
    ld c, a
    ld l, h
    call z, $ff5b
    rst $38
    rst $38
    cp h
    call $015a
    rlca
    db $fd
    ld l, e
    rst $38
    rst $38
    rst $38
    ld b, l
    sub h
    ld b, [hl]
    ld l, h
    cp $fe
    cp $50
    db $fc
    pop af
    db $fd
    sub h
    ld l, c
    ld [$5204], sp
    rlca
    ld h, b
    db $fd
    ld a, [bc]
    dec bc
    ld d, d
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    ld c, a
    ld d, d
    jr nz, jr_024_5966

    ld c, $81
    add b
    add c
    jr jr_024_590d

    add hl, de

jr_024_590d:
    ld a, c
    ld a, d
    ld a, d
    cp d
    cp d
    cp e
    ld hl, sp-$80
    rlca
    ld hl, sp+$0e
    adc c
    adc d
    adc d
    and l
    or d
    or h
    sbc c
    sbc d
    sbc d
    adc h
    ld c, $af
    cp $f8
    ld c, $0e
    adc e
    pop af
    add e
    ld hl, sp+$01
    adc e
    ld c, $0e
    cp c
    adc d
    adc h
    ld c, $00
    ld a, $ba
    ld c, $f8
    ld hl, sp+$0e
    cp c
    or [hl]
    adc d
    adc d
    adc h
    or [hl]
    and d
    ret nz

    add b
    ld bc, $7a7a
    adc h
    inc b
    jr jr_024_5959

    ld c, $89
    adc d
    adc d
    adc e
    inc b
    jr jr_024_5959

    adc [hl]
    ld bc, $890e
    sbc d
    sbc d

jr_024_5959:
    sbc e
    ld d, $0e
    ld c, $89
    ld c, $46
    nop
    ld bc, $1b0e
    dec de
    dec de

jr_024_5966:
    adc c
    ld hl, sp+$0e
    ld hl, sp+$0e
    inc e
    reti


    inc b
    inc b
    ret nz

    inc b
    reti


    ld a, [de]
    adc c
    cp d
    cp e
    ld bc, $cb19
    inc b
    adc c
    and d
    and h
    ld c, $01
    nop
    ld a, a
    cp d
    rla
    inc b
    reti


    reti


    dec d
    adc c
    and d
    or l
    adc c
    db $fc
    ld [bc], a
    ld d, h
    adc e
    ld b, l
    sub h
    adc d
    ld a, d
    adc [hl]
    adc [hl]
    adc a
    cp [hl]
    ldh [$80], a
    sbc [hl]
    inc b
    ld l, d
    sub l
    ld d, h
    adc d
    sbc a
    daa
    inc b
    ld d, e
    ld bc, $8a1c
    inc bc
    ld bc, $8b8a
    ld b, a
    inc b
    ld d, e
    add hl, de
    inc b
    sbc [hl]
    adc e
    sbc d
    sbc e
    ld e, e
    ret nc

    ld e, h
    add b
    ld [bc], a
    ld l, h
    inc e
    ld [hl], b
    adc e
    sbc d
    sbc e
    sub $18
    ret nc

    inc b
    add b
    adc e
    ld c, $01
    ld d, $80
    ccf
    ld a, d
    ld bc, $0e01
    add hl, de
    inc b
    ld [hl], b
    adc d
    adc h
    add b
    cp a
    db $fc
    ld d, h
    sub h
    ld b, [hl]
    ld d, c
    or b
    call nz, $9504
    ld d, h
    ld d, c
    ld [hl], b
    sub e
    ld [hl], b
    ld [hl], c
    reti


    reti


    add b
    ld [hl], e
    ld [bc], a
    inc b
    add b
    add c
    ld [hl], b
    ld [hl], c
    sub a
    ld [hl], a
    ld [hl], b
    ld [hl], c
    rra
    jr nz, jr_024_5a04

    ld b, b
    inc b
    ld hl, $8180
    sub [hl]
    add a
    add b
    add c
    ld [hl+], a
    inc hl
    inc h
    ld [hl], b
    ld [hl], c
    di
    xor c

jr_024_5a04:
    sub b
    jr nz, jr_024_5a77

    xor d
    inc b
    xor c
    xor e
    ld [hl], d
    add c
    ld [hl], c
    xor l
    xor d
    xor e
    xor d
    ld [hl], d
    add c
    xor d
    ld [hl], d
    ld [hl], b
    add d
    add d
    add d
    xor b
    add c
    add d
    ld [hl], c
    ld [hl], d
    add b
    add b
    dec b
    add b
    add c
    add d
    add d
    ld [hl], c
    cp c
    dec d
    ld h, b
    ld [hl], d
    inc d
    ld d, $17
    cp c
    ld [hl], b
    add c
    ld hl, $13b9
    inc b
    jr jr_024_5a50

    add b
    add d
    add h
    cp c
    add d
    ld [hl], c
    ld a, [de]
    ld d, $01
    inc e
    ld b, $72
    ld [hl], b
    add c
    cp d
    cp e
    jr jr_024_5a62

    and b
    ld [hl], c
    cp d
    cp e
    add b
    add d
    add d

jr_024_5a50:
    ld [hl], b
    inc d
    ld [hl], b
    jr jr_024_5a6e

    ld [hl], c
    ld [hl], d
    add b
    add c
    ld de, $8180
    jr jr_024_5a77

    add d
    ld [hl], d
    add d
    add c

jr_024_5a62:
    ld [hl], b
    ld [hl], c
    ld e, l
    rrca
    ld de, $645e
    ld h, b
    ld de, $7071
    ld [hl], d

jr_024_5a6e:
    add c
    ld l, l
    ld e, [hl]
    ld hl, $8064
    add d
    ld [hl], d
    add c

jr_024_5a77:
    ld [de], a
    ld l, l
    nop
    ld de, $125e
    ld a, [c]
    add b
    add c
    ld [hl], c
    ld h, h
    inc bc
    ld [de], a
    ld e, l
    ld de, $4e5f
    rst $30
    rst $30
    ld c, $12
    add c
    ld e, l
    rrca
    ld de, $2311
    ld e, a
    ld [hl], c
    ld [de], a
    ld c, l
    ld de, $8f11
    ld l, a
    add c
    ld c, l
    ld de, $120c
    ld l, a
    ld l, [hl]
    rst $30
    rst $30
    ld [hl], c
    ld e, l
    ldh [rLCDC], a
    ld e, [hl]
    ld b, e
    ld [hl], $d0
    dec [hl]
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

Call_024_5ace:
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
    cp $00
    add [hl]
    db $76
    db $76
    ld l, d
    db $76
    add e
    cp c
    add l
    cp c
    pop af
    ld [bc], a
    sub b
    add e
    add h
    add [hl]
    ld d, e
    db $76
    add l
    add h
    cp c
    add l
    cp c
    cp c
    add l
    ld d, e
    db $76
    ccf
    ld a, d
    cp c
    add e
    ld d, e
    db $76
    add e
    add e
    jr z, jr_024_5b63

    add e
    add [hl]
    ld d, e
    add [hl]
    cp c

jr_024_5b63:
    cp c
    cp c
    cp c
    ld d, e
    ld b, b
    ld b, b
    ld [hl], $d0
    inc bc
    ld c, $d0
    dec [hl]
    ld b, b
    ld b, b
    ld h, e
    ld d, h
    ld d, h
    ld b, [hl]
    ld b, l
    ld d, h
    ld d, h
    ld b, [hl]
    rrca
    nop
    ld d, h
    ld c, b
    ld [de], a
    ld l, l
    ld de, $5211
    add e
    or d
    add e
    add e
    jr c, jr_024_5bd6

    inc b
    ld [bc], a

jr_024_5b8a:
    ld de, $6d12
    ld h, d
    or d
    add e
    and d
    and e
    ld h, $4e
    ld [de], a
    ld l, l
    ld d, b
    add [hl]
    cp c
    jr @+$62

    ld de, $a8b7
    ld h, $4e
    ld [de], a
    rst $30
    or d
    cp c
    add e
    add e
    or e
    ld l, [hl]
    jr nc, jr_024_5b8a

    cp c
    ld [de], a
    ld [de], a
    db $76
    add e
    ld h, $11
    ld l, [hl]
    ld [de], a
    ld [de], a
    rst $30
    add [hl]
    nop
    ld h, b
    ld de, $6e26
    ld [de], a
    ld c, l
    ld e, a
    ld sp, $83b2
    cp c
    add e
    ld c, b
    ld [de], a
    ld c, l
    ld d, d
    ldh a, [$c3]
    call c, $fd53
    db $fd
    db $fd
    ld h, e
    ld b, $06
    rlca
    rrca
    ld sp, $51dc

jr_024_5bd6:
    inc b
    inc b
    add hl, bc
    xor b
    db $eb
    xor d
    rst $30
    inc b
    ld bc, $0407
    add hl, bc
    call c, $b9b8
    cp d
    call c, $09dc
    call c, $eea9
    xor c
    jp $dc0f


    rst $30
    inc b
    inc b
    add hl, bc
    inc [hl]
    dec bc
    dec bc
    inc c
    rrca
    inc a
    call c, $fdfd
    ld d, e
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fd
    call c, $f1dc
    db $fd
    ld c, a
    call c, $07dc
    db $fd
    ld c, a
    call c, $31dc
    jr nc, jr_024_5c33

    jr nc, jr_024_5c4a

    call c, $30dc
    reti


    ld d, d
    and b
    and c
    and d
    jr jr_024_5c73

    inc bc
    call c, $b052
    db $ed
    or d
    ld [de], a
    dec d
    ldh [rNR12], a
    ld c, $53
    call c, Call_024_52dc
    ld b, $01
    dec d
    ld d, e

jr_024_5c33:
    db $fd
    db $fd
    ld d, d
    ld d, $14
    ld c, $16
    ld d, $01
    ld d, e
    db $fd
    db $fd
    ld a, [de]
    ld bc, $0e52
    ld a, c
    adc h
    ld d, e
    ld de, $b680
    and d

jr_024_5c4a:
    or d
    or a
    and d
    and a
    db $fd
    db $fd
    ld d, d
    and [hl]
    or d
    or a
    dec b
    rlca
    ld b, $10
    db $fd
    or a
    ld d, d
    or [hl]
    or a
    dec b
    ld [hl], e
    ld [hl], h
    rlca
    and [hl]
    and a
    ld d, d
    and [hl]
    and a
    nop
    ldh [$dc], a
    ld a, [bc]
    add e
    add h
    inc c
    or [hl]
    or a
    db $fd
    ld d, d
    or [hl]
    and d

jr_024_5c73:
    and a
    ld a, [bc]
    inc c
    pop hl
    rlca
    call c, $a652
    or d
    or a
    ld d, d
    or [hl]
    or a
    db $fd
    db $fd
    rlca
    rra
    db $fd
    call c, Call_024_52dc
    and [hl]
    and a
    call c, Call_024_52dc
    cp $03
    ld b, b
    ld b, e
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    and h
    and l
    ld c, $00
    ld d, h
    and [hl]
    ld d, e
    rst $20
    ld h, h
    ld l, d
    or h
    rst $28
    or [hl]
    ld l, c
    rrca
    rrca
    ld d, e
    ld e, a
    inc d
    ld d, b
    ld d, h
    ld e, a
    ld d, e
    sub h
    ld h, d
    ld b, b
    ld b, b
    ld d, e
    ld de, $5311
    sub l
    ld b, l
    ret nz

    ld b, c
    rrca
    ld d, h
    ld d, h
    ld d, e
    ld de, $5311
    ld d, b
    ld d, h
    ld d, h
    ld d, e
    ld de, $0e53
    dec c
    ld de, $dc0f
    call c, $0f53
    ld d, e
    rrca
    call c, $dcdc
    rst $38
    ld b, b
    db $fc
    ld d, h
    ld b, b
    ld b, b
    ldh a, [rIF]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    scf
    rrca
    ld de, $4040
    jr @+$42

    ld [hl], $d0
    dec [hl]
    ld b, d
    rrca
    ld de, $5463
    ld b, [hl]
    ret nc

    ld b, l
    ld d, d
    adc h
    ld d, h
    ld de, $510f
    ret nc

    ld d, b
    inc c
    ld b, $54
    ld d, d
    call c, $08dc
    inc b
    rlca
    push hl
    ld d, d
    dec hl
    dec hl
    call c, $1edc
    inc b
    ld [$2b52], sp
    ld [hl], b
    rst $38
    ld b, b
    inc e
    ld d, h
    ld b, b
    ld b, d
    and c
    db $eb
    and e
    rlca
    ld d, h
    ld d, d
    rrca
    ld [$b1c0], sp
    inc d
    rrca
    or d
    or e
    rst $20
    ld d, d
    ld de, $7008
    ld de, $f604
    ld [$52f6], a
    ret nz

    ld b, $0f
    ld [$f7c0], sp
    dec hl
    inc b
    jr jr_024_5d3a

    ld b, $62
    ld b, $f7

jr_024_5d3a:
    dec hl
    rst $30
    ldh a, [$2b]
    rst $30
    rst $30
    rst $30
    ld d, b
    sub h
    ld [hl], b
    dec hl
    inc b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [bc]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], d
    add c
    ld a, b
    xor l
    and d
    and e
    and h
    and l
    ret nz

    and b
    and [hl]
    and a
    or d
    or e
    or h
    and a
    nop
    and d
    or l
    or [hl]
    or a
    xor h
    or d
    cp b
    xor b
    inc bc
    and c
    cp h
    cp l
    or a
    xor h
    xor [hl]
    cp c
    inc c
    xor l
    cp d
    cp e
    cp c
    cp d
    cp e
    xor [hl]
    db $fc
    xor l
    ld b, d
    ld a, [c]
    cp c
    xor l
    xor [hl]
    ld d, d
    xor [hl]
    ldh [rLCDC], a
    xor [hl]
    xor l
    xor l
    xor [hl]
    ld h, d
    rlca
    ld b, b
    ld [hl], $2b
    dec [hl]
    ld d, b
    ld d, h
    rra
    ld d, h
    ld d, c
    dec hl
    ld d, b
    ld b, e
    ld [hl], $70
    ld [hl], c
    jr jr_024_5db3

    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    ld d, e
    ld d, c
    add b
    add c
    jr jr_024_5dbd

    add b
    add c
    add b
    add d
    ld d, e
    call nz, $0404
    jr jr_024_5daf

    rla

jr_024_5daf:
    inc b
    inc b
    add b
    ld d, e

jr_024_5db3:
    call nz, $1504
    dec de
    ld bc, $1401
    inc d
    inc d
    ld d, e

jr_024_5dbd:
    inc b
    dec d
    add hl, de
    inc b
    ld a, [de]
    ld bc, $4043
    ld b, b
    ld d, e
    inc b
    ld a, [de]
    ld bc, $0417
    ld a, [de]
    ld d, e
    ld d, h
    ld d, h
    ld h, e
    inc b
    inc b
    ld a, [de]
    ld bc, $0417
    ld d, e
    db $fd
    db $fd
    ld d, c
    inc b
    inc b
    inc b
    jr @+$03

    ld d, $53
    db $fd
    db $fd
    add b
    inc bc
    ld d, h
    add c
    ld e, l
    ld e, [hl]
    ld d, e
    ld d, c
    ret nc

    ld d, b
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld d, e
    ld a, [bc]
    inc c
    rrca
    rlca
    db $fd
    add c
    ld l, l
    ld l, [hl]
    jr c, jr_024_5e35

    jr nc, jr_024_5e2e

    inc d
    inc d
    ld a, $00
    cpl
    inc d
    inc d
    inc d
    ld b, b
    ld b, b
    ld b, b
    ld c, d
    db $fd
    db $fd
    db $fd
    ld c, c
    ret nz

    pop af
    db $fd

Call_024_5e11:
    ld b, b
    ld b, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    rst $38
    rst $38
    db $fd
    inc bc
    ld d, h
    ld d, c
    db $fd
    db $fd
    ld d, d
    add b
    add c
    ld a, h
    db $fd
    inc b
    add b
    ld d, d
    ldh a, [$30]
    inc b
    rst $30

jr_024_5e2e:
    inc b
    rst $30
    ret nz

    inc d
    jr nc, jr_024_5e66

    inc b

jr_024_5e35:
    rst $30
    di
    rst $30
    rra
    inc d
    ld d, $19
    ld [hl], b
    ld sp, $3640
    ret nc

    dec [hl]
    ld b, d
    ld c, $00
    add hl, de
    add b
    ld d, h
    ld d, c
    ret nc

    ld b, a

jr_024_5e4b:
    jp z, $81cb

    ld d, d
    ld bc, $7019
    db $fd
    db $fd
    ld [$5f03], sp
    ld d, d
    ld c, $1c
    add b
    db $fd
    db $fd
    inc c
    ld de, $5208
    ld d, d
    add hl, de
    inc b
    ld [hl], b
    xor d

jr_024_5e66:
    ld [bc], a
    add b
    add c
    add c
    add c
    add c
    add c
    ld [hl], b
    ld [hl], c
    inc b
    dec d
    inc d
    inc d
    ld [bc], a
    add b
    inc b
    rla
    ld [hl], b
    ld [hl], c
    add b
    add c
    dec d
    inc e
    ld [hl], e
    ld [hl], h
    ld a, [de]
    rla
    add b
    add c
    ld [hl], c
    ld [de], a
    jr nc, jr_024_5e4b

    inc de
    add e
    add h
    inc de
    inc b
    dec d
    add c
    inc b
    ld a, [de]
    rla
    dec d
    inc e
    add hl, de
    ld b, [hl]
    inc b
    ld a, [de]
    ld [hl], c
    jr jr_024_5eb0

    ld d, $19
    ld [hl], b
    add d
    ld [hl], c
    ld a, [de]
    db $10
    ld de, $0e70
    ld c, $1c
    inc b
    ld [hl], d
    ld [hl], d
    add c
    ld [hl], c
    jr jr_024_5ec6

    ld [hl], c
    add b
    add d

jr_024_5eb0:
    dec d
    add c
    add b
    add b
    rst $30
    jr jr_024_5ed0

    ret nz

    ld d, $f7
    add b
    ld [hl], b
    ld [hl], c
    dec d
    inc d
    nop
    ld bc, $d919
    ld [hl], b
    add b
    add c

jr_024_5ec6:
    inc de
    ld a, [c]
    ret nz

    ld d, $18
    ld bc, $1c1b
    reti


    add b

jr_024_5ed0:
    ldh [rLCDC], a
    ld bc, $0116
    add hl, de
    ld b, e
    dec e
    dec de
    ld bc, $531c
    db $fd
    jr nc, jr_024_5ee3

    db $fd
    db $fd
    ld [hl], c
    inc de

jr_024_5ee3:
    call nz, $0ec4
    db $fd
    ld d, e
    add c
    inc de
    inc b
    call nz, $fd38
    call nz, Call_024_53c4
    ld [hl], c
    dec hl
    ldh [$fd], a
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
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
    add e
    ld bc, $5154
    ret nc

    ret nc

    ret nc

    ld d, b
    ld d, c
    db $76
    add e
    cp c
    cp c
    add e
    cp c
    and a
    xor a
    cp c
    add e
    db $76
    add e
    add e
    db $76
    db $ec
    ld e, h
    cp c
    add [hl]
    add e
    add e
    add [hl]
    add e
    add e
    add e
    sub $03
    add e
    cp c
    add [hl]
    add [hl]
    cp c
    cp c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    rrca
    ld d, h
    ld b, b
    ld b, b
    ld b, d
    cp c
    cp c
    add e
    ld d, d
    add e
    ld d, l
    ld b, b
    ret nz

    ld bc, $b211
    add e
    cp c
    add e
    jr c, jr_024_5fc2

    ld d, d
    cp c
    cp c
    and d
    and e
    ld h, $6d
    rlca
    jr jr_024_5f90

    ld d, d
    add e
    cp c
    or a
    xor b
    ld h, $12
    ld l, l
    ld d, d
    cp c
    add e
    ld b, b
    jr nz, @+$13

    ld b, e
    ld b, b
    ld c, d

jr_024_5f90:
    ld c, [hl]
    ld [de], a
    ld l, l
    ld d, d
    cp c
    or d
    ld d, e
    ld d, h
    ld d, c
    ld c, [hl]
    ld [de], a
    ldh [$81], a
    ld de, $526d
    cp c

jr_024_5fa1:
    ld b, e
    ld h, e
    ld c, [hl]
    ld [de], a
    ld d, d
    add e
    ld d, e
    ld d, c
    dec c
    nop
    ld de, $5f6f
    ld d, d
    ld b, b
    ld h, e
    rst $30
    ld e, l
    ld e, [hl]
    rst $30
    ld b, e
    ld b, b
    ld [hl], $52
    ldh a, [$c0]
    call c, $fd53
    db $fd
    db $fd
    db $fd
    db $fd

jr_024_5fc2:
    ld d, e
    xor b
    db $eb
    xor d
    rlca
    db $10

jr_024_5fc8:
    call c, Call_024_53fd
    cp b
    cp c
    cp d
    ld b, $06
    ld b, $07
    db $fd
    ld d, e
    or $20
    add b
    add hl, bc
    ld [$16f6], a
    ld d, $17
    call c, Call_024_53fd
    reti


    ld a, [de]
    dec de
    ld bc, $190e
    jr jr_024_5fc8

    call nz, $dcdc
    ld d, e
    reti


    ld a, [de]
    ld bc, $0919
    call c, Call_024_53dc
    add b
    rst $38
    jr nc, @-$3a

    ld a, [de]
    inc e
    add hl, bc
    call c, $33dc
    ld [hl], b
    ld bc, $fdfd
    ld d, d
    ld c, $89
    ld h, b
    ld bc, $538b
    db $fd
    db $fd
    ld d, d
    ld c, $30
    db $fd
    ld bc, $8a89
    ld a, d
    ld h, d
    ld a, c
    jr c, jr_024_5fa1

    ld a, d
    adc [hl]
    ld a, d
    db $fd
    db $fd
    ldh [$8a], a
    ld d, b
    adc c
    adc e
    sbc [hl]
    adc c
    inc bc
    call c, $89fd
    adc e
    sbc [hl]
    adc b
    sbc d
    inc e
    call c, $9a9a
    sbc c
    sbc e
    sbc [hl]
    cp $dc
    sbc b
    ccf
    call c, $3030
    rst $38
    jr nc, jr_024_60b8

    ldh a, [$fd]
    or [hl]
    or a
    call c, Call_024_52dc
    ld a, d
    adc h
    ld b, $1e
    call c, Call_024_52fd

jr_024_604a:
    adc d
    adc d
    adc h
    db $db
    db $db
    ld d, d
    adc d
    adc e
    ld b, $0c
    db $db
    sbc e
    call c, $eba8
    xor d
    ld d, d
    sbc d
    sbc e
    call c, $b8dc
    cp c
    db $fc

jr_024_6062:
    ldh a, [$dc]
    cp d
    ld d, d
    xor c
    xor $a9
    ld d, d
    ret nz

    ld a, a
    jr nc, jr_024_604a

    call c, $dcdc
    call c, $3252
    ld [hl], d
    nop
    rrca
    ld d, e
    ld de, $dc53
    call c, Call_024_53dc
    ld de, $5311
    ld b, $06
    inc c
    jr nc, jr_024_6062

    ld b, $07
    ld d, e
    ld de, $530f
    rra
    jr nz, @+$23

    add hl, bc
    ld d, e
    rrca
    nop
    ldh a, [$30]
    ld de, $2253
    inc hl
    inc h
    add hl, bc
    call c, Call_024_53dc
    ld de, $330f
    ret c

    pop hl
    ld de, $3030
    ld d, e
    rrca
    rrca
    ld [$5304], sp
    jr nc, jr_024_60be

    inc b
    ld de, $050f
    ld b, $53
    rrca
    ld de, $0511

jr_024_60b8:
    ld b, $70
    ld [hl], c
    ld [hl], b
    ld a, b
    nop

jr_024_60be:
    inc b
    call c, $08dc
    ld d, d

jr_024_60c3:
    dec hl
    add b
    call c, $0adc
    dec bc
    dec bc
    dec bc
    ldh a, [$c7]
    call c, Call_024_520b
    dec hl
    ld [hl], b
    ld d, d
    inc de
    add b
    rra
    ld [hl], b
    call c, $1352
    ld [hl], b
    jr nc, jr_024_610d

    jr nc, jr_024_6119

    scf
    inc e
    ld [hl], b
    inc b
    inc de
    add b
    jr z, jr_024_60c3

    call c, $27dc
    inc de
    ld [hl], b
    jr z, jr_024_60f5

    inc e
    call c, $1327
    add b
    ld [hl], c
    ld [hl], b

jr_024_60f5:
    ld [hl], c
    ld c, b
    ld b, a
    inc de
    ld [hl], b
    ld d, h
    ld [$8281], sp
    ld [hl], d
    add b
    add b
    add b
    add d
    ld [hl], c
    ld [hl], d
    dec d
    inc d
    inc d
    inc d
    and b
    inc d
    inc b
    inc d

jr_024_610d:
    rla
    add b
    add d
    add c
    inc de
    ld [hl], e
    ld [hl], h
    inc de
    add b
    ld [hl], c
    dec d
    sub d

jr_024_6119:
    jr nc, @+$06

    add hl, de
    add e
    add h
    jr jr_024_6137

    add c
    ld a, [de]
    dec de
    rla
    dec d
    dec de
    inc d
    add h
    ld [hl], c
    dec de
    inc d
    ld [hl], b
    ld a, [de]
    ld d, $16
    inc e
    ld [hl], b
    ld [hl], b
    add d
    ld [hl], d
    add d
    ld l, b
    nop

jr_024_6137:
    ld [hl], d
    jr jr_024_6153

    ld [hl], b
    add d
    add c
    add b
    add c
    jr jr_024_615a

    add b
    add c
    add b
    add d
    ld d, l
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec hl
    ld [hl], d
    add d
    ld [hl], d
    add c
    add b
    add c

jr_024_6153:
    add hl, hl
    nop
    add b
    add c
    dec hl
    add c
    add c

jr_024_615a:
    call nz, Call_024_70c4
    ld [hl], c
    reti


    dec hl
    ld a, c
    inc b
    inc b
    nop
    adc [hl]
    ld d, $04
    inc b
    call nz, $8180
    reti


    dec hl
    adc c
    inc d
    rla
    ld a, [c]
    dec d
    add c
    rlca
    dec hl
    adc c
    ld [hl], c
    ld a, [de]
    ld bc, $010e
    sbc c
    add d
    ld [hl], c
    jr jr_024_6181

    add hl, bc

jr_024_6181:
    ld [de], a
    ld bc, $0e2b
    add hl, de
    ld [hl], b
    ld [hl], d
    add c
    jr jr_024_6199

jr_024_618b:
    dec hl
    ld c, $1c
    add b
    ld c, $18
    inc b
    ld [hl], c
    jr jr_024_6196

    dec de

jr_024_6196:
    ld d, e
    db $fd
    db $fd

jr_024_6199:
    add c
    dec d
    ld c, $19

jr_024_619d:
    inc c
    jr nc, jr_024_619d

    inc b
    ld d, e
    adc h
    inc b
    dec d
    ld c, $01
    inc e
    inc b
    ld d, e
    adc d
    adc h
    rlca
    db $10
    di
    sub a
    ld [hl], a
    ld d, e
    db $fd
    db $fd
    adc e
    sbc e
    jr jr_024_61b9

    inc b

jr_024_61b9:
    add a
    ld d, e
    adc b
    ld h, c
    inc b
    db $fd
    db $fd
    sbc e
    ld a, [de]
    ld bc, $5319
    db $fd
    db $fd
    ld [hl], c
    ld a, [de]
    jr nc, jr_024_618b

    db $fd
    ld bc, $0417
    ld d, e
    add c
    dec d
    rla
    inc b
    jr @+$03

    ld d, $53
    rst $38
    rrca
    db $fd
    ld sp, $3030
    jr nc, @+$3e

    ldh a, [$fd]
    jr nc, @+$36

    ld d, d
    reti


    call nz, $d9c4
    ld d, e
    nop
    ld a, b
    ld d, $52
    call nz, $c4c6
    call nz, $fd53
    db $fd
    db $fd
    db $fd
    ld d, d
    ld d, e
    rrca
    inc a
    db $fd
    ld h, d
    ld b, b
    ld b, b
    ld [hl], $d0
    ld e, h
    ld d, b
    ld d, h
    ldh a, [rIE]
    db $fd
    ld d, h
    ld d, c
    ret nc

    ld l, h
    db $fd
    db $fd
    ld [$1152], sp
    ld de, $1952
    inc b
    add b
    db $fd
    db $fd
    ld [$1152], sp
    ld de, $0152
    rla
    ld [hl], b
    db $fd
    db $fd
    ld [$cc59], sp
    ld d, a
    ld d, d
    ld c, $19
    add b
    db $fd
    db $fd
    ld [$9550], sp
    ld d, h
    ld d, d
    dec de
    ld bc, $fd16
    db $fd
    ld [$011a], sp
    inc e
    ld d, d
    inc b
    ld a, [de]
    ld bc, $fdfd
    ld a, [bc]
    ld e, $13
    inc b
    ld d, d
    inc b
    inc b
    ld a, [de]
    db $fd
    db $fd
    db $fd
    ld [$0413], sp
    ld d, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    db $fd
    db $fd
    db $fd
    ld [$1718], sp
    ld d, d
    add b
    add c
    add b
    adc b
    ld [$8281], sp
    ld [hl], c
    add b
    jr @+$1b

    add b
    ld [hl], b
    ld [hl], d
    ld [hl], d
    dec d
    ld d, $01
    ld c, $80
    ld a, [bc]
    ld bc, $1716
    add b
    add d
    add c
    dec d
    dec de
    ld c, $1b
    rla
    add b
    ld d, $19
    ld de, $04cc
    ld a, [de]
    ld bc, $1a19
    inc e
    ld [hl], b
    ld bc, $181c
    add hl, de
    add hl, de
    ld h, $04
    add b
    inc e
    dec d
    ld c, $01
    rla
    ld [hl], b
    ld [hl], c
    dec d
    ld bc, $1407
    ld hl, sp+$17
    inc b
    add b
    add c
    dec d
    ld bc, $0e0e
    ld bc, $7017
    add hl, hl
    add c
    dec hl
    add b
    add b
    inc sp
    jr nc, @+$7a

    dec hl
    jr nc, jr_024_62de

    ld [hl], c
    and [hl]
    ret nz

    ld hl, sp-$59
    xor b
    ld [hl], b
    ld [hl], c
    add c
    dec hl
    nop
    ld hl, sp-$4a
    or a
    cp b
    add b
    add c
    ld [hl], c
    dec hl
    rlca
    ld hl, sp-$0a
    ld [$70f6], a
    ld [hl], c
    ld [c], a
    dec hl
    add c
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$80
    add c
    ld [hl], c
    dec hl
    ld [c], a
    dec hl
    ld hl, sp+$70
    ld [hl], c
    add c
    rrca
    dec hl
    add b
    add c

jr_024_62de:
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
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
    rrca
    nop
    ld d, h
    or h
    jr nc, jr_024_6356

    add e
    or d
    or d
    ld d, $16
    inc d
    ld d, $25
    and [hl]
    inc b
    ld [$a783], sp
    cp c
    or d
    dec c
    inc e
    ld a, [c]
    ld a, [de]
    dec h
    xor c
    or [hl]
    cp c
    or d
    add hl, de
    inc b
    inc bc
    nop
    inc b
    ld c, c
    ld b, b
    ld b, b
    ld [hl], $d0
    ld c, e
    add hl, de
    dec e
    dec bc
    dec bc
    ld d, b
    ld d, h
    ld d, h
    ld d, c
    ret nz

    rlca
    db $fd
    ret nc

    ld d, d
    add hl, de
    add hl, bc

jr_024_6356:
    ld c, a

Call_024_6357:
    ld c, a
    ld d, d
    inc e
    inc c
    cpl
    cpl
    sbc b
    dec a
    ld c, a
    sbc e
    db $fd
    db $fd
    ld d, d
    inc [hl]
    db $fd
    db $fd
    ld h, d
    ld l, d
    ld d, c
    rst $30
    ld e, l
    ld e, [hl]
    rst $30
    ld d, e
    ld d, h
    ld d, c
    ld h, d
    ld d, e
    ld b, a
    ld [de], a
    ld l, l
    ld de, $535f
    reti


    reti


    ld d, b
    ld d, e
    ld d, d
    ld [de], a
    ld [de], a
    ld e, l
    ld de, $1553
    rla
    rst $30
    ld d, e
    ld h, d
    ld b, b
    ld b, b
    ld e, b
    adc $5a
    ld a, [de]
    dec de
    inc d
    ld d, e
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    sub a
    ld [hl], a
    rst $30
    ld d, e
    rra
    jr nz, jr_024_63bf

    inc de
    sub e
    inc de
    inc b
    add a
    ld [hl], b
    ld d, e
    ld [hl+], a
    inc hl
    inc h
    jr jr_024_63c0

    ld bc, $1716
    add b
    ld h, e
    dec d
    ld d, $16
    ld bc, $0101
    dec de
    inc e
    ld a, c
    rst $38
    ld b, b
    adc h
    ld d, h
    ld b, b
    ld b, b
    ld a, c

jr_024_63bf:
    ld a, d

jr_024_63c0:
    adc h
    rrca
    ld d, h
    rst $30
    reti


    adc c
    adc d
    ld d, $c4
    adc e
    inc b
    ld [hl], b
    inc d
    ld d, $48
    rla
    sbc c
    sbc d
    sbc e
    di
    dec d

jr_024_63d5:
    add b
    xor h
    ld bc, $18f7
    ld c, $16
    ld h, c
    ld bc, $7116
    jr jr_024_63d5

    ld c, $c1
    dec de
    ld bc, $010e
    add c
    jr jr_024_641c

    dec de
    inc e
    di
    ld a, [de]
    adc h
    inc de
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ccf
    ld b, b
    ld b, d
    ld d, h
    rst $30
    ld d, h
    add sp, $0c
    ld de, $0f52
    ld [hl], c
    jr jr_024_641c

    rra
    jr jr_024_6417

    jr nz, jr_024_642b

    ld d, d
    ld de, $1881
    nop
    inc e
    ld [hl+], a
    inc hl
    inc h
    ld h, d
    ld [hl], $d0
    dec [hl]

jr_024_6417:
    ld hl, $1916
    sub a
    ld [hl], a

jr_024_641c:
    dec d
    ld d, b
    ld d, c
    add h
    ld bc, $50d0
    add hl, de
    inc b
    add a
    jr jr_024_642f

    ld bc, $1b0e

jr_024_642b:
    dec de
    inc d
    inc d
    ccf

jr_024_642f:
    dec de
    ld [hl], b
    ld [hl], c
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld hl, sp+$40
    ld d, h
    ld d, h
    ld b, e
    inc bc
    ld b, b
    ld de, $380f
    adc l
    adc [hl]
    adc [hl]
    jr nc, jr_024_6458

    adc [hl]
    adc a
    ld d, h
    ld d, h
    ld h, $9d
    ret nz

jr_024_644e:
    ld b, b
    sbc [hl]
    sbc a
    xor h
    db $eb
    xor [hl]
    ld a, c
    add d
    adc c
    ld c, d

jr_024_6458:
    sbc [hl]
    adc e
    cp h
    cp l
    cp [hl]
    inc bc
    ld d, h
    ld d, c
    sbc c
    sbc d
    sbc e
    or $a9
    inc c
    ld bc, $89f6
    ld c, $16
    ld d, $17
    ldh a, [rNR31]
    reti


    dec hl
    reti


    adc c
    jr jr_024_644e

    dec de
    ld bc, $8917
    ld [hl], b
    ld [hl], c
    inc h
    rst $30
    ld [hl], b
    ld [hl], c
    jr @+$1b

    ld a, c
    adc d
    ld c, $70
    ld de, $0a53
    dec bc
    ld e, $80
    add c
    add b
    ld h, e
    rrca
    rrca
    ld h, b
    add hl, bc
    rrca
    ld a, [bc]

jr_024_6494:
    dec bc
    ld e, $04
    ld b, [hl]
    ld de, $1111
    ld a, [bc]
    ld e, $47
    ld b, $00
    ld e, $04
    ld b, $06
    rlca
    rrca
    ld de, $0f11
    ld [$0752], sp
    ld de, $1811
    ld h, b
    call nz, $0a11
    ld d, d
    jp nz, $0904

    rrca
    ld de, $0f11
    ld d, d
    inc b
    add b
    rst $38
    ld b, b
    inc b
    inc b
    rlca
    rrca
    ld de, $6211
    ld [hl], b
    nop
    call c, $8081
    add c
    ld d, e
    ld d, d
    inc de
    add b
    inc b
    dec d
    db $ec
    ld d, e
    and b
    and b
    db $10
    ret nz

    inc b
    and b
    ld d, d
    inc de
    ld [hl], b
    ld a, [de]
    dec de
    ld d, e
    call c, $dcdc
    ld d, d
    inc de
    add b
    inc e
    ld [hl], b
    call c, Call_024_5304
    ld d, d
    inc de
    inc b
    dec bc
    dec bc
    dec bc
    ld d, e
    ld d, d
    inc e
    ld [hl], b
    rrca
    ld bc, $5316
    call c, $dcdc
    ld d, d
    ld bc, $5301
    rlca
    inc e
    call c, $0152
    ld c, $40
    ld b, b
    ld b, b
    ld h, e
    ld h, d
    ld b, b
    ld b, b
    db $10
    ld b, b
    jr jr_024_6494

    ld [hl], c
    ld [hl], b
    ld [hl], c
    add hl, de
    ld sp, $3430
    add b
    ld [hl], d
    add c
    add b
    add c
    add hl, de
    ld h, b
    ret z

    inc b
    ld d, d
    ld a, [c]
    ld d, e
    ld [hl], b
    add c
    dec d
    ld c, $19
    ld d, d
    ld d, e
    add b
    ld b, $14
    ld bc, $1915
    ld e, c
    call Call_024_705a
    ld d, $16
    ld c, $1c
    ld b, l
    sub h
    inc [hl]
    or b
    ld bc, $8046
    ld c, $19
    ld a, [c]
    ld d, b
    sub l
    ld d, c
    ld [hl], b
    ld c, $c0
    ccf
    ld b, b
    ld bc, $0116
    inc e
    inc b
    add b
    ld b, d
    rst $30
    add d
    ld [hl], c
    jr @+$03

    ld c, $2b
    ld bc, $0419
    ld [hl], b
    ld [hl], d
    add c
    jr @+$03

    ld bc, $0e2b
    add hl, de
    inc b
    add b
    add c
    reti


    jr jr_024_656d

    dec hl

jr_024_656d:
    dec hl
    dec hl
    ld bc, $7917
    ld [hl], c
    reti


    ld a, [de]
    ld bc, $0e2b
    dec hl
    ld c, $19
    adc c
    add c
    reti


    inc b
    jr jr_024_65ac

    ld c, $2b
    ld bc, $8919
    ld [hl], c
    reti


    inc b
    jr jr_024_65b6

    dec hl
    dec hl
    ld bc, $991c
    add c
    reti


    inc b
    jr jr_024_65c0

    ld c, $01
    inc e
    inc b
    ld [hl], b
    rst $30
    rst $30
    inc b
    jr @+$2d

    ld bc, $f719
    inc b
    add b
    ld [hl], c
    ld a, [de]
    inc e
    inc b
    jr jr_024_65ab

    dec de

jr_024_65ab:
    ld d, e

jr_024_65ac:
    db $fd
    db $fd
    add c
    inc b
    inc b
    inc b
    ld a, [de]
    inc e
    inc b
    ld d, e

jr_024_65b6:
    db $fd
    db $fd
    adc h
    inc b
    ld a, c
    adc h
    sbc [hl]
    ld a, b
    di
    inc sp

jr_024_65c0:
    jr nc, jr_024_65f2

    adc d
    ld a, d
    adc d
    adc e
    sbc [hl]
    adc b
    ld bc, $1c01
    inc b
    adc d
    adc d
    adc e
    sbc e
    sbc [hl]
    sbc b
    jr jr_024_65ed

    inc b
    dec d
    sbc d
    sbc d
    sbc e
    ld bc, $0417
    ld a, [de]
    ld bc, $0116
    ld [hl], c
    inc b
    ld a, [de]
    dec de
    ld bc, $0417
    jr jr_024_65ea

    dec de

jr_024_65ea:
    add c
    inc b
    inc b

jr_024_65ed:
    inc b
    jr @+$03

    ld d, $01

jr_024_65f2:
    add hl, de
    ld [hl], b
    rst $38
    rst $38
    db $fd
    rrca
    inc a
    db $fd
    jr nc, @+$32

    jr nc, jr_024_662e

    jr nc, jr_024_6634

    inc b
    inc b
    ldh a, [$c0]
    db $fd
    inc b
    inc b
    inc b
    ld d, e
    ld d, $17
    inc b
    push hl
    inc b
    ld d, e
    inc bc
    rrca
    db $fd
    ld bc, $1701
    inc b
    dec d
    ld d, e
    dec de
    dec de
    dec de
    inc d
    inc a
    ldh a, [$fd]
    dec de
    ld d, e
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    rlca
    inc e
    db $fd
    ld [$0e18], sp
    ld d, d

jr_024_662e:
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [$011a], sp

jr_024_6634:
    ld [hl], b
    ret nz

    db $fd
    ld d, d
    add b
    add c
    add b
    ld [$1a04], sp
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld bc, $fd87
    ld [$9604], sp
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld [$9604], sp
    inc c
    rra
    ldh a, [$fd]
    ld a, [bc]
    dec bc
    inc c
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rst $38
    rst $38
    db $fd
    ld a, h
    ld d, b
    ld hl, sp+$71
    jr jr_024_6664

    add hl, de

jr_024_6664:
    add b
    add c
    jr jr_024_6676

    ld c, $04
    ld [bc], a
    add hl, de
    dec de
    ld bc, $4079
    ld b, b
    ld b, d
    ld hl, sp-$08
    inc b
    ld a, [de]

jr_024_6676:
    inc e
    adc c
    ld d, h
    add sp, $0c
    jr nz, jr_024_667e

    ld d, d

jr_024_667e:
    dec de
    rla
    inc b
    call nz, $fd89
    db $fd
    ld d, d
    call nz, $0e1a
    rla
    ld hl, $c404
    sbc c
    ld c, a
    ld c, a
    ld d, d
    inc b
    ld a, [de]
    dec de
    inc e
    ld [hl], b
    db $fd
    db $fd
    ld d, d
    ld [hl], b
    ld c, $10
    inc b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    db $fd
    db $fd
    ld d, d
    add b
    add c
    rst $30
    rst $30
    add b
    add d
    and b
    ld [de], a
    add b
    ld a, c
    adc h
    add d
    and [hl]

jr_024_66b0:
    ld [hl], d
    add c
    add c
    adc e
    sbc e
    db $ed
    add c
    cp d
    ld [hl+], a
    sub b
    cp c
    cp d
    cp e
    ld [hl], b
    adc e
    reti


    inc de
    reti


    inc b
    reti


    reti


    add b
    adc e
    ld [bc], a
    jr nc, jr_024_66cb

    dec d

jr_024_66cb:
    ld d, $17
    reti


    inc b
    cp c
    ld [hl], b
    sbc e
    cp c
    ld a, [de]
    dec de
    rla
    reti


    add hl, bc
    inc b
    cp c
    add b
    ld [hl], c
    reti


    reti


    ld a, [de]
    dec de
    dec de
    rla
    ld [hl], b
    add c
    cp d
    cp d
    cp d
    add b
    adc d
    ld [hl], b
    cp c
    cp e
    cp e
    jr jr_024_6706

    add b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [de]
    inc e
    xor d
    ld [bc], a
    add b
    add c
    add c
    add c
    add c
    add c
    ld [hl], c
    ld a, c
    adc h
    push hl
    call nz, $0ee5
    db $10

jr_024_6706:
    ld [de], a
    reti


    add c
    adc c
    adc d
    adc h
    db $e3
    call nz, $d978
    ld c, l
    ld [hl], c
    sbc c
    nop
    jr c, jr_024_66b0

    adc c
    adc d
    ld a, d
    ld a, d
    adc e
    ld c, l
    ld e, a
    ld de, $0481
    sbc c
    sbc e
    ld e, l
    inc de
    add $11
    ld [hl], c
    ld c, l
    ld e, [hl]
    ld [de], a
    ld [de], a
    ld c, l
    ld l, a
    add c
    ld e, l
    inc c
    rra
    ld de, $5f5f
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld [hl], b
    ld [hl], d
    add c
    add b
    xor h
    xor c
    and [hl]
    and a
    xor b
    xor c
    xor l
    ld b, c
    ld c, l
    ld e, a
    cp h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp l
    ld [hl], b
    ld de, $5211
    and e
    and h
    rst $28
    cp d
    xor e
    ld d, e
    add b
    ld de, $5211
    or e
    xor a
    ld de, $bbbf
    ld d, e
    ld [hl], b
    ld de, $5b11
    ret nc

    dec [hl]
    ld e, b
    adc $57
    ld h, e
    add b
    ld l, a
    ld l, a
    ld l, h
    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld [hl], b
    ld [hl], c
    ld [de], a
    sub [hl]
    sub [hl]
    sub [hl]
    ld [de], a
    ld [de], a
    ld h, h
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [de], a
    ld [hl], b
    ld [hl], d
    add d
    or [hl]
    ld c, a
    ld b, h
    ld a, [$21fa]
    ld c, a
    ld d, b
    ld [hl], c
    ld b, $07
    ld a, [$00fa]
    ld c, a
    dec b
    ld b, $15
    add c
    inc b
    add hl, bc
    ld a, [$fa07]
    ld [$1a04], sp
    ld [hl], c
    inc b
    ld e, $fa
    add hl, bc
    ld [$701d], sp
    ld a, b
    ld b, $81
    inc b
    inc b
    inc b
    pop af
    inc b
    add b
    ld [hl], c
    reti


    call nz, $04d9
    inc b
    ld [hl], b
    add d
    ld [hl], c
    inc bc
    inc b
    reti


    reti


    ld [hl], b
    ld [hl], d
    ld [hl], d

jr_024_67c7:
    add d
    ld a, [hl+]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    inc e
    ld bc, $1851
    dec de
    inc e

jr_024_67d5:
    inc b
    add c
    inc b
    adc c
    ld d, $0e
    ld c, $01
    add hl, de
    ldh [rSB], a
    inc b
    inc b
    inc b
    adc c
    dec de
    ld a, [de]
    di
    inc e
    inc b
    adc c
    ld [hl], c
    jr jr_024_681d

    di
    ld bc, $791c
    adc h
    inc b
    sbc c
    ret nz

    inc b
    add c
    jr jr_024_6812

    reti


    sbc c
    sbc e
    ldh [$d9], a
    inc b
    rst $30
    ld [hl], c
    jr @+$1b

    inc c
    inc b
    dec d
    rla
    add c
    jr jr_024_680b

    rla

jr_024_680b:
    add h
    jr jr_024_6887

    adc h
    add hl, de
    inc b
    rst $30

jr_024_6812:
    ld [hl], c
    ld [hl+], a
    add hl, de
    ld bc, $8b89
    jr jr_024_688a

    ld [hl], c
    jr c, jr_024_67c7

jr_024_681d:
    adc e
    inc de
    xor b
    xor e
    ld h, a
    inc bc
    jr nc, @-$73

    inc de
    or a
    cp b
    cp c
    cp d

jr_024_682a:
    nop
    cp e
    ld d, d
    rst $20
    jr @-$74

Call_024_6830:
    adc h
    ld d, b
    or e
    nop
    rst $28
    or h
    ld d, c
    ld h, d
    ld b, d
    jr jr_024_67d5

    sbc e
    ld c, $ad
    call nz, Call_024_50c4
    ld h, d
    ld b, b
    jr z, jr_024_682a

    rst $30
    rst $30
    inc b
    call nz, $0e15
    ldh [rNR21], a
    ld d, b
    ld d, h
    inc b
    ret nz

    dec d
    ld a, [bc]
    ld bc, $0e0e
    rst $30
    rst $30
    ld a, [de]
    dec de
    ccf
    dec de
    ld [hl], b
    ld [hl], c
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $38
    jr nc, jr_024_6867

Call_024_6867:
jr_024_6867:
    jr nc, jr_024_68d1

    add hl, de
    pop af
    rst $20
    push hl
    ret nz

    inc b
    nop
    rra
    jr nz, jr_024_6894

    ld d, e
    ld bc, $1716
    push hl
    ret nz

    ld b, b
    ret nz

    inc b
    ld [hl+], a
    inc hl
    inc h
    ld d, e
    ld h, e
    ld b, b
    ld e, b
    call Call_024_6357
    rst $10

jr_024_6887:
    ld d, h
    add sp, -$6b

jr_024_688a:
    ld [hl], b
    call c, Call_024_51e8
    add hl, de
    add hl, bc
    ld [$0424], sp
    reti


jr_024_6894:
    sub [hl]
    ld [hl], b
    inc e
    ld b, $06
    ld c, $04
    ld b, $96
    add b
    ld [hl], b
    ld [hl], c
    ld d, c
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], c
    ld [hl], c
    add b
    add d
    ld [hl], d
    add c
    rst $30
    jr jr_024_68c7

    rst $30
    sbc c
    adc c
    ld a, c
    ld a, d
    ld a, d
    adc h
    inc b
    ld a, [de]
    dec de
    ld d, $17
    sbc c
    adc c
    adc e
    sbc d
    adc c
    ld a, d
    ld a, d
    adc h
    jr jr_024_68dd

    ld [hl], b
    adc c
    adc e

jr_024_68c7:
    res 3, c
    adc c
    adc e
    sbc e
    jr jr_024_68e7

    add b
    sbc c
    sbc e

jr_024_68d1:
    inc b
    jp z, $9b99

    dec d
    ld c, $19
    ld [hl], b
    ld [hl], c
    jp z, $1615

jr_024_68dd:
    ld d, $16
    ld bc, $1901
    add b

jr_024_68e3:
    add c
    jp z, $0e18

jr_024_68e7:
    ld bc, $1b1b
    ld bc, $7019
    ld [hl], b
    ld [hl], c
    jr jr_024_68f2

    add hl, de

jr_024_68f2:
    ld [hl], b
    ld [hl], c
    jr jr_024_690f

    add b
    cp $54
    ld b, l
    ld a, b
    inc b
    ld d, h
    ld d, h
    ld b, a
    jr jr_024_68e3

    inc b
    inc e
    ld l, l
    ld de, $1c52
    inc b
    dec d
    inc e
    ld e, l
    ld d, d
    inc d
    ld a, [de]
    inc b

jr_024_690f:
    rla
    inc de
    dec [hl]
    ld b, b
    ld b, b
    jr z, jr_024_692c

    ld d, d
    inc b
    jr jr_024_691b

    rla

jr_024_691b:
    ld d, b
    and b
    ld bc, $6954
    ld d, d
    inc d
    dec de
    ld c, $18
    ld d, d
    ld bc, $1716
    ld [hl], b
    ld [hl], c
    ld a, [de]

jr_024_692c:
    rrca
    dec de
    add hl, de
    ld d, d
    ld d, d
    add b
    ld a, [hl+]
    ld [hl], c
    add d
    ld [hl], b
    ld [hl], b
    inc de
    ld d, d
    rlca
    inc bc
    ld d, h
    ld b, [hl]
    call c, $dcdc
    ld d, b
    ld de, $044e
    ld c, b
    call c, $07dc
    rra
    call c, $11a7
    ld de, $535f
    or a
    ld e, b
    adc $78
    ret nc

    call c, Call_024_5ace
    and d
    and a
    ld l, d
    ld d, h
    ld d, h
    ld d, c
    or d
    pop bc
    add h
    call c, Call_024_53b7
    inc b
    add hl, bc
    and d
    or d
    or d
    or d
    ld d, e
    inc b
    add hl, bc
    rra
    or d
    call c, $33a2
    jr nc, jr_024_69a7

    and a
    xor b
    or d
    rst $38
    nop
    ld d, h
    ld h, d
    ld b, b
    xor b
    call c, $dcdc
    call c, $a3dc
    rrca
    call c, $5445
    cp b
    or d
    ld b, a
    ld [hl], b
    xor b
    and d
    ccf
    db $fc
    call c, $8052
    and l
    xor b
    ldh a, [$e3]

jr_024_6995:
    call c, $7052
    or a
    cp b
    ld d, d
    add b
    or d
    rst $08
    ccf
    call c, $7052
    ld d, d
    add b
    db $10
    ldh [$2b], a

jr_024_69a7:
    ld b, b
    ld b, d
    jr @+$03

    ld bc, $4c19
    inc b
    ld [hl], b
    ld d, h
    ld d, d
    ld a, [de]
    add b
    inc bc
    call z, $531c
    inc b
    add b
    ld [hl], c
    ld h, d
    ld e, b
    ld d, a
    ld h, e
    inc b
    ld [hl], b
    add c
    ld d, b
    nop
    add $f7
    ld d, h
    sub l
    sub l
    sub l
    ld d, h
    ld d, c
    di
    add b
    ld [hl], c
    dec hl
    dec hl
    dec hl
    ld bc, $f306
    ld [hl], b
    add c
    rra
    jr nz, @+$23

    dec hl
    ld d, $17
    add b
    ld [hl], c
    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    ld [$2b01], sp
    add hl, de
    di
    di
    ld [hl], b
    add c
    inc b
    dec d
    ld d, $2b
    add hl, de
    ld [hl], b
    ld [hl], c
    add b
    ld c, $38
    inc b
    ld [hl], c
    jr jr_024_69fa

    dec de

jr_024_69fa:
    ld bc, $801c
    add c
    jr jr_024_6a1c

    dec h
    db $10
    inc b
    inc de
    ld [hl], b
    ld [hl], c
    dec d
    inc d
    inc e
    dec d
    ld d, $19
    add b
    add c
    dec d
    jr c, jr_024_6995

    ld bc, $0419
    dec d
    rla
    ld [hl], b
    ld [hl], c
    jr jr_024_6a30

    ld c, $1b

jr_024_6a1c:
    dec de
    db $10
    inc b
    ld bc, $8019
    add c
    jr jr_024_6a40

    inc e
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld d, $71
    ld a, [de]
    add hl, de
    inc b
    add c
    inc b

jr_024_6a30:
    inc b
    add b
    add d
    ld [hl], c
    ld a, [de]
    dec de
    add c
    jr jr_024_6a50

    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ret nz

    inc bc

jr_024_6a40:
    db $fd
    add c
    add b
    add c
    add b
    add c
    ld d, e
    ld [hl], c
    reti


    inc b
    reti


    reti


    ld d, e
    rrca
    inc a
    db $fd

jr_024_6a50:
    add c
    inc b
    call nz, $04d9
    ld d, e
    ld [hl], c
    call nz, $c0f0
    db $fd
    db $e3
    call nz, Call_024_53d9
    add c
    reti


    call nz, Call_024_4304
    ld h, e
    inc bc
    rrca
    db $fd
    ld d, $17
    inc b
    reti


    ld d, e
    ld d, c
    dec de
    inc e
    reti


    inc b
    ld a, $f8
    db $fd
    ld d, e
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld b, e
    ld h, e
    rst $38
    rlca
    db $fd
    ld sp, $3030
    jr nc, jr_024_6ab3

    inc e
    ld [hl], b
    db $fd
    jr nc, jr_024_6abc

    ld d, d
    ld de, $a4a3
    and l
    db $ec
    ld d, e
    ld d, d
    ld de, $1144
    or e
    or h

jr_024_6a95:
    or l
    jr c, jr_024_6a95

    db $fd
    db $fd
    ld d, d
    and c
    rst $28
    and d
    dec l
    ldh a, [$c1]
    ld de, $2d2d
    db $fd
    ld d, d
    ld l, $2e
    ld l, $fd
    ld d, d
    ld [hl], b
    ret nz

    db $fd
    ld de, $1111
    ld c, b
    ld e, e

jr_024_6ab3:
    ret nc

    dec [hl]
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    and b
    rst $30
    db $fd

jr_024_6abc:
    db $fd
    ld d, d
    ld [hl], b
    ld [hl], c
    inc b
    inc c
    db $fd
    ld [hl], b
    ld [hl], d
    ld d, d
    add b
    add c

jr_024_6ac8:
    rst $30
    jr nc, jr_024_6ac8

    inc b
    rst $30
    add b
    add c
    ld d, d
    rlc [hl]
    ret nz

    jp z, $04f2

    dec d
    db $fd
    db $fd
    ld l, b
    ld d, $37
    call nz, $1415
    dec de
    rlca
    dec l
    push hl
    jr jr_024_6b01

    inc b
    ld a, [de]
    inc e
    ld l, $1c
    inc b
    push hl
    inc de
    inc b
    add a
    inc b
    dec d
    db $fd
    db $fd
    ld b, a
    ld e, $04
    inc de
    ld a, [de]
    db $fd
    db $fd
    and b
    ld [hl], b
    ld d, d
    dec d
    ld c, $16
    rla

jr_024_6b01:
    ld [hl], c
    jr z, jr_024_6b0a

    add b
    add d
    ld [hl], d
    add c
    add c
    add c

jr_024_6b0a:
    inc b
    inc b
    add c
    inc b
    rra
    jr nz, @+$23

    ld b, h
    db $10
    inc b
    dec d
    rla
    ld [hl], b
    ld d, $17
    ld [hl+], a
    inc hl
    inc h
    ld a, [de]
    add hl, de
    add b
    dec de
    ld bc, $391e
    inc b
    rla
    jr jr_024_6b3e

    ld [hl], b
    jr jr_024_6b43

    dec d
    ld bc, $04a0
    ld [de], a
    inc e
    add b
    ld d, $01
    add hl, de
    inc b
    ld a, [de]
    inc e
    ld [hl], b
    dec de
    dec de
    inc e
    inc b
    dec e
    ld a, b

jr_024_6b3e:
    ld [de], a
    inc b
    add b
    ld [hl], c
    ld [hl], b

jr_024_6b43:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld a, h
    ldh [rNR11], a
    add c
    ld e, l
    ld l, [hl]
    add b
    add c
    ld [hl], c
    ld l, l
    ld l, a
    ld c, $20
    ld [de], a
    ld e, [hl]
    add c
    reti


    reti


    ld l, l
    ld de, $1111
    ld e, a
    ld c, [hl]
    ld [hl], c
    inc b
    ld a, b
    ret nz

    ld de, $0404
    ld l, l
    ld e, a
    add c
    rra
    jr nz, jr_024_6b8d

    inc b
    ld e, l
    add e
    rrca
    ld de, $2271
    inc hl
    inc h
    ld c, l
    add c
    inc b
    inc b
    ld c, l
    ld hl, $1186
    ld b, e
    ld b, b
    ld b, b
    ld b, d
    ld [hl], c
    ld c, l
    ld e, a
    ld d, e
    call c, Call_024_52dc
    sub l
    add b
    add c
    add c
    add c

jr_024_6b8d:
    ld [de], a
    sbc h
    ld [de], a
    add c
    add b
    di
    ret nz

    adc $f7
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rst $30
    ld c, l
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld c, $c4
    rst $30
    ld c, l
    ld e, a
    ld de, $386e
    call nz, Call_024_5e11
    rst $30
    ld e, l
    ld de, $c460
    ld l, [hl]
    rst $30
    ld de, $f75e
    ld c, l
    ld sp, $5e11
    ld [de], a
    rst $30
    ld b, e
    ld b, b
    rra
    ld b, b
    ld b, d
    ld de, $7e11
    call c, Call_024_5253
    ld a, [hl+]
    ld [bc], a
    add b
    add c
    add c
    add c
    add d
    ld [hl], d
    add c
    rst $30
    reti


    inc b
    rra
    jr nz, jr_024_6bf5

    ld [hl], b
    ret nz

    inc b
    add b
    add c
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    ld a, [c]
    add hl, bc
    call c, $07dc
    ld b, $04
    dec e
    dec bc
    inc c
    call c, $f7dc
    ld [hl], b
    ld [hl], c
    add hl, bc
    call c, $03dc
    rrca
    call c, $04f7

jr_024_6bf5:
    inc b
    add b
    add c
    add hl, bc
    rst $30
    inc b
    inc b
    inc b
    inc bc
    inc sp
    inc b
    ld b, $06
    ld b, $06
    ld [hl], b
    ld [hl], c
    dec d
    rla
    dec d
    ld d, $88
    add hl, de
    add c
    ld a, [de]
    dec de
    adc c
    adc e
    jr @+$0e

    dec bc
    add b
    add c
    ld e, $13
    adc c
    adc e
    inc c
    ld d, $1a
    dec de
    call c, $08dc
    inc de
    ret nz

    call c, $9b99
    ld [hl], b
    ld [hl], c
    ld a, [de]
    dec de
    nop
    ld [$141a], sp
    rla
    add b
    add c
    ld [hl], b
    ld [hl], c
    inc bc
    call c, $0b0a
    ld e, $18
    ld d, $17
    inc a
    call c, $8180
    ld [$7018], sp
    ld b, $01
    ld bc, $1616
    ld a, c
    rlca
    ld a, d
    adc h
    dec de
    dec de
    ld d, $16
    inc a
    adc d
    ld d, $89
    ld a, d
    ld a, d
    ld d, l
    add b
    add c
    add c
    add c
    add c
    inc a
    ld d, $80
    add d
    rla
    reti


    ldh a, [rNR31]
    call nz, Call_024_70c4
    ld [hl], d
    ld b, $d9
    inc e
    call nz, $8180
    ld [hl], b
    ld [hl], c
    ld a, h
    reti


    ld [hl], b
    ld [hl], c
    rst $30
    dec b
    add b
    add c
    add c
    ld [hl], b
    ld [hl], c
    reti


    reti


    inc e
    ld d, $d9
    dec d
    rla
    add b
    add c
    rlca
    reti


    ld a, [de]
    dec de
    dec de
    ld bc, $0019
    ld [hl], b
    ld [hl], c
    dec d
    ld d, $17
    rst $30
    ld a, d
    adc h
    ld de, $1918
    add b
    add c
    ld bc, $7019
    dec b
    add hl, bc
    ld [hl], d
    add d
    add c
    jr jr_024_6cbb

    add b
    add d
    add d
    add d
    add c
    dec d
    dec de
    dec de
    ld a, [de]
    nop
    add b
    rla
    add c
    add c
    dec d
    inc e
    ld [hl], e
    ld [hl], h
    ld a, [de]
    rla
    call nz, $f770
    inc b
    ld [de], a

jr_024_6cbb:
    jr nc, jr_024_6cc1

    inc de
    add e
    add h
    inc de

jr_024_6cc1:
    call nz, $1680
    rla
    ld a, [de]
    rla
    dec d
    inc e
    ld [bc], a
    and h
    ld [hl], b
    call nz, $1c1b
    inc b
    ld a, [de]
    inc d
    inc d
    inc e
    inc b
    ld [hl], d
    rst $30
    ld [hl], c
    db $10
    xor d
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    add d
    ld [hl], c
    add b
    add d
    add d
    add d
    add d
    ld [hl], d
    add c
    jr jr_024_6ceb

    add hl, de

jr_024_6ceb:
    add b
    add c
    ld a, [de]
    inc e
    ld [hl], b
    add c
    dec d
    dec de
    dec de
    ld bc, $7017
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], c
    inc de
    ld [hl], b
    ld [hl], c
    jr jr_024_6d19

    add b
    add c
    add b
    add d
    add c
    inc de
    add b
    add c
    jr jr_024_6d25

    ld d, $17
    inc b
    add b
    ld [hl], c
    ld a, [de]
    ld d, $16
    add hl, de
    inc b
    ld a, [de]
    dec de
    rla
    ld [hl], b
    add c

jr_024_6d19:
    inc b
    ld a, [de]
    dec de
    inc e
    inc b
    ld [hl], b
    ld [hl], c
    inc de
    add b
    ld [hl], c
    dec e
    dec bc

jr_024_6d25:
    dec bc
    dec bc
    ld e, $80
    add c
    inc de
    ld a, c
    add c
    add hl, bc
    call c, $dcdc
    ld [$1615], sp
    add hl, de
    adc c
    ld d, d
    ld [hl], b
    ld [hl], d
    add c
    add b
    add d
    ld [hl], d
    add c
    inc de
    ld d, d
    ld d, d
    add b
    add c
    reti


    reti


    add b
    add d
    ld [hl], c
    inc de
    ld h, d
    ld d, d
    dec d
    inc d
    inc d
    inc d
    rla
    add b
    add c

Call_024_6d52:
    inc de
    ld d, b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], c
    ld c, e
    inc de
    ld c, h
    inc b
    jr jr_024_6d72

    ld d, d
    inc de
    add b
    add c
    ld e, c
    rst $08
    ld e, d
    inc b
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld a, c
    ld a, d
    adc h
    ld d, h
    ld d, c
    inc b
    inc de
    add b

jr_024_6d72:
    ld d, d
    inc de
    adc c
    adc d
    adc e
    ld a, [de]
    inc d
    inc d
    add hl, de
    ld [hl], b
    ld d, d
    inc de
    adc c
    adc d
    adc d
    ld a, d
    ld a, d
    adc h
    inc de
    add b
    ret z

    jp nz, Jump_024_43dc

    ld b, b
    ld h, e
    or a
    cp b
    and d
    ld h, e
    ld d, h
    ld d, c
    or d
    ld c, $3a
    call c, Call_024_51b2
    jr jr_024_6db3

    ld b, $07
    and d
    inc d
    dec de
    ld hl, sp+$00
    call c, $041c
    add hl, bc

jr_024_6da5:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld h, h
    ld h, h
    ld b, $06
    rlca
    inc bc
    inc c
    call c, Call_024_7282
    add c

jr_024_6db3:
    di
    di
    inc b
    inc b
    add hl, bc
    ld [hl], d
    add c
    dec d
    rla
    ld a, [bc]
    inc b
    ld [hl], b
    ld h, h
    ld [hl], c
    ld [hl], c
    and a
    add d
    ld [hl], c
    jr @+$1b

    ld [hl], d
    add d
    ld [hl], d
    and l
    or l
    rst $38
    call c, Call_024_52dc
    ld [hl], b

jr_024_6dd1:
    or d
    ld [hl], e
    rst $00
    call c, $8052
    and d
    db $db
    ld d, d
    ld [hl], b
    jr z, jr_024_6dd1

    db $db
    call c, $dcdc
    call c, $8052
    call c, $dcdc
    ldh a, [rSB]

jr_024_6de9:
    db $db
    ld d, d
    ld [hl], b
    call c, $fddc
    ld d, d
    add b
    xor b
    and a
    xor b
    and a
    ld c, $30
    db $fd
    xor b
    ld h, d
    ld b, b
    and l
    or l
    and l
    or l
    and l
    xor b
    ld d, b
    ld d, h
    jr z, jr_024_6da5

    ld bc, $0471
    jr @+$2d

    add hl, de
    add b
    add c
    ld [hl], b
    add c
    inc b
    jr jr_024_6e3d

    inc b
    jr nc, jr_024_6e19

    ld bc, $8017
    ld [hl], c

jr_024_6e19:
    and [hl]
    db $eb
    xor b
    dec hl
    dec hl
    dec hl
    add hl, de
    add c
    or [hl]
    inc c
    jr nc, jr_024_6de9

    or a
    cp b
    dec hl
    ld bc, $1616
    ld [hl], c
    or $ea
    or $2b
    dec de
    ldh a, [rSB]
    dec hl
    ld bc, $8101
    reti


    inc b
    ld a, [de]
    ld bc, $d942

jr_024_6e3d:
    reti


    reti


    inc e
    sub b
    inc b
    reti


    reti


    ld a, [de]
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    dec d
    rla
    ld [de], a
    inc b
    ld [hl], c
    jr @+$1b

    add b
    add c
    add b
    dec b
    add c
    add b
    inc b
    ld a, [de]
    ld bc, $c417
    ld [hl], b
    inc b
    call nz, $4043
    ld b, b
    jr jr_024_6e95

    ld d, h
    ld bc, $c417
    ld d, e
    ld d, $14
    ret nz

    db $fd
    ld d, $01
    dec de
    inc e
    jp z, $3253

    inc b
    add hl, de
    ld a, [de]
    inc e
    jp z, $f053

    inc b
    db $fd
    db $fd
    ld bc, $3017
    ld bc, $53cb
    db $fd
    db $fd
    rla
    inc b
    ld b, $c4
    inc b
    ld d, e
    db $fd
    db $fd
    jr jr_024_6e92

    ret nz

jr_024_6e92:
    db $fd
    ld b, e
    ld b, b

jr_024_6e95:
    ld [hl], $d0
    dec [hl]
    ld h, e
    ldh [$83], a
    db $fd
    add c
    add b
    add c
    ld d, e
    ld d, c
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    ld c, a
    rrca
    rst $38
    db $fd
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    db $fd
    ld c, a
    ld sp, $c130
    rlca
    db $fd
    ld sp, $3030
    ld [hl-], a
    ld [hl], b
    ld d, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld d, h
    db $fd
    ld l, h
    ret nc

    ld d, b
    ld d, c
    rst $00
    db $fd
    ld a, [bc]
    dec bc
    inc c
    rst $38
    db $fd
    rst $38
    db $fd
    cp $30
    ld sp, $04e8
    db $fd
    db $fd
    ld d, d
    call nz, $0403
    jr nc, jr_024_6f10

    ld [hl-], a
    call nz, $c4e0
    rst $20
    inc b
    dec d
    ld [hl], c
    ld b, $04
    call nz, $1615
    ld bc, $7182
    ret nz

    ld c, $70
    ld [hl], c
    ld [hl], b

jr_024_6ef5:
    ld [hl], c
    dec d
    ld bc, $0c03
    db $fd
    ld d, d
    jr @+$03

    ld bc, $8019
    add c
    add b
    ld d, d
    jr @+$03

    ld c, $30
    jr nc, @-$01

    add hl, de
    ld b, e
    ld b, b
    ld b, b
    ld d, d
    ld a, [de]

jr_024_6f10:
    dec de
    dec de

jr_024_6f12:
    inc e
    ld d, e
    jr nc, jr_024_6f46

    ld a, [de]
    db $10
    call nz, $0432
    ld d, e
    db $fd
    db $fd
    inc b
    dec d
    ld d, $17
    dec d
    rla
    ld d, e
    jr c, jr_024_6f57

    ld bc, $fdfd
    ld d, $14
    dec de
    inc e
    ld d, e
    db $fd
    db $fd
    ld c, $1c
    jr nc, jr_024_6ef5

    db $fd
    inc b
    inc b
    dec d
    ld d, e
    ld c, $01
    add hl, de
    inc b
    dec d
    ld d, $01
    ld d, e
    ldh [$81], a
    ld [de], a
    add c

jr_024_6f46:
    add b
    add c
    add b
    add c
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    jr nc, jr_024_6f12

    db $fd
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl], b

jr_024_6f57:
    call c, Call_024_52dc
    ld [hl], b
    ld [hl], c
    ld c, l
    ld c, [hl]
    add b
    inc bc
    inc c

jr_024_6f61:
    call c, $8052
    add c
    di
    di
    ld [hl], b
    db $fd
    db $fd
    ld d, d
    ld e, a
    ld e, a
    ld de, $701c
    db $fd
    ld e, [hl]
    add b
    call c, Call_024_4041
    ld d, [hl]
    ret nc

    ret nc

    ld d, l
    call c, $fe3f
    call c, $fdfd
    db $fd
    inc c
    ld [de], a
    ld de, $5d81
    ld l, a
    ld d, e
    call c, Call_024_52dc
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld [de], a
    ld d, e
    inc bc
    inc c
    call c, Call_024_6d52
    add c
    ld l, l
    ld de, $125e
    ld d, e
    ld d, d
    ld [de], a
    ld [hl], c
    ld [de], a
    jr nc, jr_024_6f61

    call c, $116d
    ld c, [hl]
    ld d, e
    ld d, d
    ld [de], a
    add c
    jp z, $5dca

    ld de, $0053
    ld a, [c]
    call c, $4e52
    ld b, b
    ld b, b
    ld d, [hl]
    ret nc

    ld d, l
    ld b, h
    db $fd
    ld d, d
    ld de, $3c0f
    db $fd
    ld d, d
    ld de, $dcdc
    call c, Call_024_52dc
    ld de, $e1f8
    call c, $1111
    ld d, e
    ld d, d
    ld de, $5311
    add a
    rra
    call c, Call_024_6d52
    ld de, $5253
    ld [de], a
    ld l, l
    ld a, h
    ldh a, [$dc]
    inc sp
    inc [hl]
    ld d, d
    ld [de], a
    ld [de], a
    ld l, l
    ld d, e
    pop bc
    rlca
    call c, $4e52
    ld [de], a
    ld [de], a
    ld d, e
    ld d, d
    ld de, $4043
    ld b, h
    rra
    ld a, a
    call c, $1152
    ld d, e
    ld d, d
    call z, $0410
    add b
    add c
    jr @+$1e

    ld a, [de]
    dec de
    ld [hl], b
    ld [hl], c

Call_024_7004:
    dec d
    add hl, de
    dec e
    add hl, bc
    nop
    dec bc
    ld [hl], b
    ld [hl], c
    add b
    add c
    inc b
    ld a, [de]
    inc e
    add hl, bc
    call c, $8180
    call c, Call_024_7170
    ldh a, [rP1]
    call c, Call_024_7004
    ld [hl], c
    add hl, bc
    add b
    add c
    inc b
    add b
    add c
    inc b
    ld b, $06
    jr nc, jr_024_706d

    inc b
    ld b, $06
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], b
    ld [hl], c
    dec d
    add b

jr_024_7034:
    add c
    dec d
    db $10
    ld a, c
    inc b
    ld bc, $801c
    add c
    jr jr_024_70af

    ld [hl], c
    jr @+$1b

    jr jr_024_7034

    ld bc, $1b9a
    dec de
    ld bc, $8999
    dec bc
    ld e, $18
    add hl, de
    reti


    call nz, $1607
    call nz, $dc99
    ld [$1918], sp
    inc b

Call_024_705a:
    add $70
    call c, Call_024_7808
    ret nz

    call nz, $0118
    rla
    add b
    ld b, $15
    ld bc, $1c01
    reti


    ret nz

    add e

jr_024_706d:
    inc b
    call nz, $1670

Jump_024_7071:
    ld c, $01
    inc e
    reti


    add b
    ld bc, $1c01
    jr nz, jr_024_70c0

    ld [hl], b
    inc b
    inc b
    inc b
    reti


    reti


    ld bc, $7119
    ld [hl], c
    dec d
    rla
    ld [hl], d
    ld [$1921], sp
    adc e
    sbc e
    jr jr_024_70ff

    ld [hl], c
    jr jr_024_7093

    add b

jr_024_7093:
    sbc e
    dec d
    ld bc, $8180
    ld hl, $1884
    ld c, $19
    ld [hl], b
    ld [hl], c
    ld bc, $7019
    ld [hl], c
    ld bc, $8019
    add c
    ld hl, $01cc
    add hl, de
    add b
    add c
    jr jr_024_70c8

jr_024_70af:
    ld [hl], b
    ld [hl], c
    jr jr_024_70c9

    ld d, $e0
    ld b, $01
    add hl, de
    add b
    add c
    ld a, [de]
    dec de
    ld c, $16
    ld [hl], c
    ld [hl], b

jr_024_70c0:
    ld [hl], c
    ld a, [de]
    ccf
    nop

Call_024_70c4:
    dec de
    add d
    ld [hl], d
    add c

jr_024_70c8:
    ld [hl], b

jr_024_70c9:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    add c
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], c
    add b
    add c

Call_024_70dc:
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add d
    ld [hl], c
    inc b
    inc b
    dec d
    ld d, $17
    dec e
    dec bc
    dec bc
    ld [hl], d
    add c
    sub a
    ld [hl], a
    jr jr_024_70f4

    add hl, de

jr_024_70f4:
    add hl, bc
    call c, $81dc
    reti


    inc b
    add a
    ld a, [de]
    dec de
    inc e
    add hl, bc

jr_024_70ff:
    call c, $16dc
    rla
    sub a
    ld [hl], a
    rra
    jr nz, @+$23

    ld a, c
    ld a, d
    ld a, d
    dec de
    inc e
    inc b
    add a
    ld [hl+], a
    inc hl
    inc h
    adc c
    adc d
    adc d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b

Jump_024_711b:
    ld [hl], c
    adc c
    adc d
    adc d
    inc e
    call c, $0971
    ld [$1b1a], sp
    ld [hl], b
    call c, $891c
    add c
    add hl, bc
    ld a, [bc]
    rla
    dec bc
    adc c
    inc c
    call c, $1edc
    db $fd
    call c, $dc89
    call c, $fd78
    call c, $dbdb
    adc c
    rlca
    call c, $dbdb
    db $fd
    db $fd
    db $fd
    ld h, b
    db $db
    db $fd
    adc c
    adc h
    call c, $fddc
    and $06
    dec b
    adc c
    adc e
    jr jr_024_7159

    ld b, $06
    ret nz

    adc c

jr_024_7159:
    adc d
    ld a, d
    ld a, a
    ld a, d
    adc d
    ld d, d
    inc de
    sbc c
    sbc d
    adc c
    adc d
    adc d
    adc e
    inc de
    ld a, c
    ld d, d
    inc de
    ld [hl], b
    ld [hl], c
    sbc c
    sbc d
    sbc d
    adc c

Call_024_7170:
    ld a, d
    adc d
    ld d, d
    di
    add b
    add c
    dec d
    inc d
    rla
    sbc c
    sbc d
    adc c
    ld d, d
    call nz, Call_024_7170
    inc de
    and $18
    inc d
    rla
    adc c
    ld d, d
    call nz, $8180
    ld a, [de]
    inc d
    inc e
    inc b
    inc de
    adc c
    ld d, d
    di
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ret nz

    sbc c
    ld d, d
    inc de
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld a, c
    ld a, d
    ld a, d
    adc h
    add d
    ld [hl], c
    inc de
    add b

jr_024_71ae:
    ld b, b
    add b
    cp c
    adc h
    add c
    jr jr_024_71ce

    add b
    xor c
    or h
    or a
    cp b
    adc e
    dec d
    ld c, $1c
    and e
    ld [bc], a
    inc e
    db $db
    or h
    call c, $8bdc
    di
    di
    and e
    cp c
    or h
    call c, $f38b

jr_024_71ce:
    ld [hl], b
    nop
    or d
    and e
    cp c
    or h
    db $db
    call c, $098b
    or e
    or h
    db $db
    db $db
    and d
    and [hl]
    nop
    rlca
    and d
    or d
    call c, $049b
    rlca
    db $db
    call c, $dcdb
    ld [hl], c
    inc b
    add hl, bc
    db $db
    ccf
    cp $dc
    add c
    inc b
    add hl, bc
    dec b
    jr nz, jr_024_71ae

    cp b
    and l

jr_024_71f9:
    or l
    cp b
    db $fd
    db $fd
    ld c, a
    ld c, a
    call c, $dcdc
    cp b
    db $fd
    rrca
    inc a
    db $fd
    call c, $dbdc
    db $db
    db $db
    db $db
    call c, $1edc
    inc a
    db $db
    call c, $fdfd
    db $fd
    call c, $31dc
    jr nc, jr_024_7257

    jr nc, jr_024_71f9

    jr nc, jr_024_724f

    db $db
    db $db
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    dec b
    ld b, $38
    and b
    ld d, h
    ld b, $06
    ld b, l
    call c, $08dc
    inc b
    ld [hl], b
    ld [hl], c
    ld b, l
    ld l, d
    ld a, [de]
    ld d, h
    ld d, b
    add sp, $52
    inc b
    ld a, [de]
    inc e
    db $fd
    dec de
    ld d, $4f
    ld c, a
    ld d, d
    ldh a, [$fd]
    inc b
    inc b
    inc b
    jr jr_024_7286

    ld b, b
    db $fd
    ld h, d
    db $fd
    db $fd

jr_024_724f:
    ldh a, [rHDMA4]
    db $fd
    db $fd
    db $fd
    ld d, b
    db $fc
    db $fd

jr_024_7257:
    inc [hl]
    ld c, a
    db $eb
    db $fd
    ld h, e
    ld c, a
    rrca
    db $fd
    ld b, [hl]
    jr nc, jr_024_7292

    jr nc, jr_024_72a3

    jr nc, jr_024_72ac

    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    inc bc
    ld bc, $5453
    ld d, c
    ret nc

    ld d, b
    ld d, c
    ret nz

    ld hl, sp-$03
    db $fd
    ld bc, $530e
    ld a, [c]
    ld c, $fd
    add hl, bc
    ld b, b
    ld b, b

Call_024_7282:
    ld h, e
    ld hl, sp+$38
    db $fd

jr_024_7286:
    ld hl, sp-$08
    add hl, bc
    ld d, h
    ld d, h
    ld c, $0b
    ld d, c
    inc c
    db $fd
    db $fd
    db $fd

jr_024_7292:
    rst $38
    db $fd
    rst $38
    db $fd
    ldh a, [$30]
    db $fd
    db $fd
    db $fd
    ld sp, $301f
    ld [hl-], a
    ld [hl], c
    ld [hl], b
    ldh a, [$7a]

jr_024_72a3:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld a, c
    rra
    ld a, h
    db $fd
    ld d, d
    add b

jr_024_72ac:
    add d
    and [hl]
    ld [hl], d
    ld d, d
    ldh a, [$c0]
    db $fd
    ld h, h
    add b
    db $ed
    add d

jr_024_72b7:
    ld sp, $0432
    ld h, h
    inc de
    add b
    inc bc
    rrca
    db $fd
    ld d, d
    ld h, h
    inc b
    inc b
    inc de
    ld [hl], b
    ld d, d
    inc b
    ld h, h
    inc b
    nop
    inc bc
    inc b
    inc de
    add b
    jr nc, jr_024_7337

    ret nc

    ld h, l
    ld [hl-], a
    ld h, h
    inc de
    ld a, c
    ld a, d
    adc h
    ld a, [de]
    inc d
    rrca
    nop
    inc d
    inc e
    adc c
    adc d
    adc d
    adc h
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld a, c
    ld a, d
    adc d
    jr z, jr_024_72fc

    add c
    add d
    and [hl]
    ld [hl], d
    add b
    jr @-$06

    ld bc, $720e
    db $ed
    reti


    reti


    dec d
    dec b
    inc b

jr_024_72fc:
    ld c, $01
    ld hl, sp-$7f
    inc de
    inc b
    inc b
    dec d
    ld hl, sp-$08
    ld b, e
    ld b, b
    ld [hl], c
    jr jr_024_7327

    ld hl, sp-$08
    ld d, $16
    ld c, $53
    call c, $1881
    ld c, $90
    ld [bc], a
    ld c, $53
    call c, $1a8c
    ld hl, sp-$08
    ld hl, sp+$53
    call c, $d98b
    ld a, [de]
    dec de
    inc c
    nop

jr_024_7327:
    dec de
    ld bc, $33f8
    jr nc, jr_024_72b7

    ld a, d
    adc h
    rst $30
    jr jr_024_734b

    rst $30
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl+], a

jr_024_7337:
    add h
    ld bc, $190e
    inc b
    jr jr_024_734c

    ld d, e
    db $fd
    db $fd
    ld c, $19
    inc b
    jr jr_024_7387

    dec b
    ld bc, $fd38
    db $fd

jr_024_734b:
    ld b, b

jr_024_734c:
    ld b, d
    ld d, $0e
    cpl
    cpl
    cpl
    call c, $1c52
    nop
    ld bc, $1b1b
    ld c, b
    db $fd
    db $fd
    call c, $d952
    inc b
    ld a, [de]
    dec de
    ld c, $53
    inc bc
    inc c
    db $fd
    call c, $d952
    reti


    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld d, e
    jr nc, jr_024_73a3

    ld [hl], b
    ld [hl], c
    ld b, b
    inc d
    ld [hl], c
    add b
    add c
    inc b
    ld d, e
    db $fd
    db $fd
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], b
    inc sp
    jr nc, jr_024_73b3

    ld hl, sp-$24
    db $fd
    db $fd

jr_024_7387:
    db $fd
    ldh a, [$30]
    call c, $fddc
    add hl, sp
    jr nc, jr_024_73bf

    jr nc, jr_024_73c6

    call c, $12dc
    di
    dec b
    ld [de], a
    di
    ld d, e
    call c, $fddc
    ld b, a
    inc c
    ld h, h
    di
    pop af
    di

jr_024_73a3:
    ld d, e
    call c, Call_024_70dc
    di
    db $fd
    ld d, d
    ret nz

    ld [de], a
    ld d, e
    ldh a, [rLCDC]
    call c, $fddc
    ld b, c

jr_024_73b3:
    db $fc
    db $fd
    ld b, b
    ld b, h
    ccf
    db $fd
    jr nc, jr_024_73eb

    rst $38
    jr nc, jr_024_73cd

    inc b

jr_024_73bf:
    call c, $fdfd
    db $fd
    db $fd
    ld d, d
    ld l, l

jr_024_73c6:
    ld sp, $3030
    jr nc, jr_024_73fb

    inc h
    sub b

jr_024_73cd:
    ld d, d
    inc [hl]
    db $fd
    ld [de], a
    call c, $f2e6
    sub [hl]
    sub [hl]
    ld d, e
    db $fd
    ld [de], a
    call c, $0c03
    ld [de], a
    sub [hl]
    sub [hl]
    ld d, e
    db $fd
    ld d, d
    ld c, [hl]
    call c, $9652
    sub [hl]
    ld d, e
    db $fd
    inc b
    ld a, [c]

jr_024_73eb:
    db $fd
    ld d, d
    ld de, $5641
    ret nc

    ld d, l
    ld b, b
    ld b, h
    ld d, d
    ld l, a
    ret nz

jr_024_73f7:
    ccf
    jr nc, jr_024_73f7

    db $fd

jr_024_73fb:
    db $fd
    db $fd
    ld d, d
    ld [hl], b
    ld [hl-], a
    add b
    db $fc
    pop af
    call c, Call_024_5311
    ld d, d
    ld l, l
    ld d, e
    rst $00
    rlca
    call c, $1252
    ld d, e
    ld sp, $3230
    ld [de], a
    ld d, e
    rra
    nop
    call c, $7052
    ld [hl], c
    ld e, a
    inc sp
    jr nc, jr_024_7484

    ret nc

    ret nc

    ld h, l
    ld [hl-], a
    ld hl, sp+$00
    ld de, $8180
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, l
    ld l, a
    ld l, a
    ld [$7015], sp
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [hl], d
    add c
    add d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], c
    add b
    add c
    inc b
    jr jr_024_7445

    inc d

jr_024_7445:
    inc d
    ld d, $16
    ld bc, $7170
    inc b
    jr jr_024_7467

    ld [hl], b
    ld [hl], c
    jr jr_024_7453

    dec de

jr_024_7453:
    add b
    add c
    inc b
    jr jr_024_7471

    add b
    add c
    ld a, [de]
    inc e
    ld [hl], b
    ld a, c
    adc h
    dec d
    ld bc, $041c
    inc b
    inc b
    ld a, [c]
    add b

jr_024_7467:
    adc c
    adc e
    jr jr_024_7484

    ld [hl], b
    ld [hl], c
    inc b
    dec d
    ld d, $14

jr_024_7471:
    adc c
    adc e
    ld a, [de]
    add hl, de
    add b
    add c
    inc b
    jr jr_024_7493

    inc b
    sbc c
    sbc e
    inc b
    ld a, [de]
    ld d, $16
    ld d, $1b
    inc e

jr_024_7484:
    ld [hl], b
    ld [hl], b
    ld [hl], c
    inc b
    inc b
    jr jr_024_7499

    inc e
    ld [hl], b
    ld [hl], c
    add b
    ld bc, $801c
    add d

jr_024_7493:
    ld [hl], d
    add c
    jr jr_024_74b0

    dec [hl]
    ld b, d

jr_024_7499:
    inc e
    inc b
    ld [hl], b
    ld [hl], d
    add c
    inc b
    jr jr_024_74ba

    ld d, b
    ld d, d
    ld [hl], c
    ld [hl], b
    ld [hl], d
    add c
    inc b
    inc b
    jr jr_024_74c4

    call nz, $8152
    add b
    add c

jr_024_74b0:
    inc b
    dec d
    ld d, $01
    inc e
    call nz, $1452
    inc d
    inc d

jr_024_74ba:
    ld d, $0e
    ld bc, $041c
    call nz, $0452
    inc b
    inc b

jr_024_74c4:
    ld a, [de]
    dec de
    inc e
    inc b
    call nz, Call_024_52c4
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld a, c
    ld a, d
    ld a, d
    adc h
    ld d, d
    add c
    add b
    add c
    add b
    add c
    sbc c
    sbc d
    sbc d
    sbc e
    ld d, d
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
    ld [bc], a
    add hl, bc
    inc de
    ld d, d
    sbc c
    adc c
    adc d
    adc d
    adc h
    add c
    ld [hl], b
    ld d, d
    reti


    sbc c
    adc c
    adc e
    add d
    inc b
    reti


    sbc e
    inc de
    add b
    ld d, d
    jr jr_024_7563

    sbc c
    sbc e
    dec d
    add hl, de
    ld [hl], b
    ld d, d
    jr jr_024_7575

    ld c, b
    ld bc, $0417
    inc b
    dec d
    add hl, de
    add b
    ld d, d
    ld a, [de]
    dec de

jr_024_755f:
    ld d, $16
    ld c, $40

jr_024_7563:
    inc bc
    ld bc, $7019
    ld d, d
    inc b
    inc b
    jr jr_024_755f

    add hl, de
    add b
    ld d, d
    jp nz, $1804

    add b
    rst $38
    ld b, b

jr_024_7575:
    ld bc, $f301
    ld bc, $1601
    ld h, d
    ld hl, sp-$24
    ld [hl], c
    inc b
    add hl, bc
    db $e3
    call c, $0481
    add hl, bc
    rrca
    call c, $0471
    inc b
    ld b, $3f
    ld b, $81
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor d
    add b
    ld [hl], c
    add c
    add c
    add c
    dec b
    add c
    add b
    inc b
    reti


    dec d
    rla
    reti


    ld a, b
    ld d, $d9
    di
    dec d
    ld c, $c0
    ld b, b
    add hl, de
    di
    reti


    reti


    jr @+$10

    rst $38
    ld b, b
    inc bc
    inc c
    call c, $0408
    add b
    add c
    ld d, b
    ld [c], a
    ld d, e
    ld d, h
    ld [$7004], sp
    ld [hl], c
    jp $040c


    ld d, e
    ld [hl], b
    ld b, $06
    add b
    add c
    ld d, e
    add b
    ld [hl], c

jr_024_75cf:
    dec d
    add h
    nop
    ld [hl], b
    ld d, $17
    ld [hl], c
    sub a
    ld [hl], a
    ld d, e
    add c
    jr jr_024_75cf

    add hl, de
    add b
    add c
    reti


    add a
    jr jr_024_7633

    ld bc, $8053
    ld d, $19
    reti


    reti


    reti


    reti


    ld d, e
    ld a, c
    ld c, $19
    ret nz

    ccf
    ld b, b
    reti


    reti


    reti


    reti


    ld d, e
    adc c
    ld h, e
    adc c
    xor d
    ld [bc], a
    add b
    ld d, c
    add c
    add c
    add c
    add c
    ld [hl], c
    inc b
    reti


    reti


    inc b
    inc b
    db $e3
    dec b
    reti


    inc b
    inc b
    add c
    jp c, $1615

    ld d, $71
    inc b
    rlca
    ld b, h
    reti


    dec d
    inc d
    dec de
    ld bc, $8101
    jp c, $1415

    inc e
    jp c, $0388

    reti


    ld a, [de]
    ld bc, $158c
    add hl, de
    jp c, $1a04

    adc e
    inc b
    ld a, [de]
    inc e
    nop

jr_024_7633:
    db $fc
    ld b, b
    reti


    reti


    reti


    jp c, $0404

    adc e
    inc b
    inc b
    dec [hl]
    dec d
    nop
    add c
    add b
    add b
    sbc c
    sbc d
    sbc d
    adc c
    adc e
    inc b
    inc b
    ld a, [c]
    jp z, $caca

    ret nz

    inc e
    inc b
    jp z, $99ca

    sbc e
    ld d, $17
    dec d
    rla
    rst $30
    ld bc, $e001
    ldh [$2b], a
    ld d, $16
    dec de
    inc e
    inc b
    ld c, $01
    ld bc, $0419
    inc a
    ld d, b
    ld bc, $f704
    rla
    inc b
    inc b
    inc b
    inc b
    ld [hl], b
    ld c, $0e
    ld b, b
    db $fc
    ld b, b
    ld bc, $1716
    reti


    reti


    add b
    ld e, b
    adc $57
    ccf
    and a
    add c
    sbc c
    or h
    or $9a
    sbc d
    ld [$e0b7], a
    dec hl
    reti


    reti


    dec d
    ld d, $f7
    rst $38
    dec hl
    ccf
    dec de
    ld bc, $7c01
    dec bc
    rst $30
    dec e
    ld e, $f0
    ld hl, sp+$18
    ld bc, $0971
    pop bc
    ld hl, sp+$08
    jr jr_024_76ab

    add c

jr_024_76ab:
    add hl, bc
    rlca
    ld hl, sp+$08
    ld a, [de]
    dec de
    ld b, b
    ld b, b
    ccf
    ld b, b
    ld b, d
    ld [hl], b
    nop
    inc a
    ld d, $9a
    sbc d
    sbc e
    rst $30
    jr jr_024_76d9

    rst $30
    add b
    add c
    add b
    ld bc, $f001
    ccf
    dec hl
    ld d, $16
    ld d, $16
    ld bc, $1419
    nop
    dec de
    ld d, l
    ld b, d
    dec hl
    ld b, e
    ld d, [hl]
    jr jr_024_76e7

jr_024_76d9:
    ld bc, $6278
    ld e, b
    adc $57
    ld h, e
    ld c, $28
    ld bc, $8915
    ld a, d
    ld a, d

jr_024_76e7:
    adc [hl]
    ld a, d
    adc h
    jr @+$1d

    sbc c
    adc c
    jr nz, jr_024_7751

    ld bc, $9e9e
    adc e
    sbc e
    ld c, $71
    jr @-$75

    sbc [hl]
    adc d
    adc e
    ld c, $15
    add c
    add b
    add b
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], b
    jp z, Jump_024_7071

    ld d, $17
    add b
    ret nz

    ld d, $81
    add b
    add c
    add b
    dec hl
    dec hl
    ccf
    ld d, $0e
    dec hl
    rst $38
    dec hl
    dec b
    ld c, $01
    ld d, l
    ld b, d
    dec de
    dec de
    dec hl
    inc e
    ld bc, $1b1b
    add hl, de
    ld h, d
    ld b, b
    ld d, b
    ld bc, $d036
    dec [hl]
    ld b, b
    ld c, $19
    ld de, $5450
    ld d, c
    ret nc

    ld d, h
    ld c, $01
    inc e
    ld d, $0e
    ld bc, $702b
    ld [hl], c
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor b
    add b
    ld [hl], c
    ld [hl], b
    add c
    add c
    add c
    ld [hl], b
    ld d, $81
    add b
    add d

jr_024_7751:
    ld [hl], d
    and e
    ret nz

    dec hl
    db $eb
    and h
    db $eb
    and l
    add b
    add d
    inc e
    or h
    dec hl
    or e
    or l
    and a
    add b
    add sp, -$0a
    dec de
    ld bc, $ea2b
    ldh a, [$2b]
    or $70
    ld b, d
    jr jr_024_7776

    inc b
    add b
    ld d, d
    jr @+$03

    ld c, $00

jr_024_7776:
    dec de
    inc e
    rst $30
    ldh [rDIV], a
    ld [hl], b
    ld d, d
    jr jr_024_77d3

    ld [hl], b
    ld bc, $7119
    ld [hl], c
    ld [hl], d
    xor b
    add b
    add d
    ld [hl], d
    add c
    add c
    add c
    ldh [rNR21], a
    add d
    ld [hl], d
    ld [hl], d
    add c
    dec d
    ret nz

    ld c, $16
    rla
    add b
    add d
    add c
    dec d
    ld b, $01
    dec de
    ld c, $17
    add b
    ld [hl], c
    jr jr_024_7805

    ld bc, $ac19
    jr jr_024_77b7

    ld d, $48
    ld bc, $1a81
    dec de
    ld d, $0e
    dec de
    jp Jump_024_711b


    ld [hl], b
    ld [hl], c

jr_024_77b7:
    ld a, [de]
    ld a, [bc]
    ld [hl], b
    inc e
    ld [hl], c
    add d
    ld [hl], d
    add d
    ld [hl], c
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], d
    add b
    add c
    ld d, l
    add b
    add c
    add c
    add c
    add c
    ld d, l
    ld bc, $8272
    add d

jr_024_77d3:
    add d
    add d
    add d
    add c
    add b
    add c
    add b
    add c
    add b
    dec b
    ld b, b
    add c
    add b
    add b
    ld [hl], c
    jp z, $d9ca

    inc b
    dec d
    rla
    reti


    inc b
    dec d
    jp z, $2804

    reti


    jp z, $1aca

    dec de
    inc d
    ld d, $f8
    ld [hl], c
    ld b, e
    ld d, [hl]
    inc b
    call nz, $20c4
    add $04
    ld a, [de]
    ld hl, sp-$7f
    ld d, e
    reti


    reti


jr_024_7805:
    call nz, $18d9

Call_024_7808:
    ld [hl], c
    ld d, e
    rlca
    inc bc
    inc b
    dec d
    ld d, $f8
    add c
    ld d, e
    dec d
    ld d, $16
    ld bc, $f8f8
    db $10
    or b
    ld hl, sp+$72
    add c
    dec d
    ld d, $01
    rla
    add b
    add d
    ld [hl], c
    add c
    dec d
    ld c, $a0
    jp $01f8


    rla
    add b
    add c
    ld d, $0e
    ld c, $19
    ld [hl], b
    ld [hl], c
    rrca
    sbc e
    ld hl, sp+$01
    add hl, de
    add b
    add c
    ld c, $0e
    ld bc, $ee00
    ld hl, sp+$16
    ld d, $01
    ld c, $01
    ld c, $01
    ld bc, $0e0e
    call c, $f877
    ld c, $0e
    dec de
    ld bc, $fe31
    ld bc, $3130
    ld [hl-], a
    ld d, d
    rst $20
    rrca
    rrca
    ld de, $e00f
    ld de, $1140
    ld e, [hl]
    ld h, h
    ld h, h
    ld h, d
    ld e, b
    adc $57
    ld b, d
    ld d, b
    ld d, h
    ld a, a
    nop
    ld d, h
    ld d, d
    ld d, $17
    ret nz

    jr jr_024_7876

    add hl, de

jr_024_7876:
    sub e
    inc de
    add h
    nop
    ld bc, $52ca
    add hl, de
    ret nz

    jr jr_024_788f

    ld d, $19
    jp z, $1b52

    inc e
    ret nz

    jr @-$3e

    ld a, a
    jr nc, @+$03

    ld c, $01

jr_024_788f:
    add hl, de
    jp z, $3252

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

jr_024_78c3:
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
    cp $54
    ld d, b
    ldh [$a9], a
    ld d, h
    ld d, h
    and c
    and d
    and h
    ld b, $01
    and l
    dec de
    or c
    or d
    and a
    or a
    nop
    or [hl]
    or a
    xor b
    dec de
    inc e
    xor d
    or e
    reti


    ld h, b
    sub [hl]
    and a
    or [hl]
    rst $28
    or [hl]
    xor b
    cp d
    jr c, jr_024_78c3

    and e
    reti


    and a
    xor b
    reti


    and b
    cp c
    reti


    dec hl
    or e
    reti


    or h
    ret nc

    and $d9
    or l
    ld a, [de]
    and e
    rra
    reti


    xor d
    or e
    dec hl
    ccf
    ld d, $17
    cp d
    rst $38
    inc bc
    ld d, h
    dec de
    inc e
    or e
    and e
    or e
    and e
    add b
    rlca
    dec hl
    or e
    and e
    and c
    and d
    xor e
    or e
    and e
    push hl
    or c
    or d
    cp e
    and e
    ld de, $2b47
    push de
    reti


    push de
    push hl
    push hl
    and e
    reti


    reti


    reti


    call nz, $c110
    dec hl
    push hl
    or e
    dec de
    ld bc, $d9d5
    push de
    call nz, $a3c4
    xor e
    jr @+$21

    ld b, b
    dec hl
    or e
    cp e
    jr @+$03

    ld bc, $010e
    ld bc, $a30e
    add a
    nop
    ld d, h
    and h
    db $eb
    and l
    cp b
    ld d, c
    adc c
    and d
    and e
    res 6, h
    or l
    or [hl]
    ld b, b
    inc b
    dec hl
    ld [$f7f7], a
    adc c
    or d
    or e
    or $ea
    or $d9
    reti


    sbc c
    ld a, c
    adc h
    rla
    nop
    dec hl
    rst $30
    ld d, $17
    and d
    adc c
    adc e
    jr jr_024_7994

    add hl, de

jr_024_7994:
    rst $30
    ld a, [de]
    dec de
    nop
    nop
    inc e
    or d
    adc c
    adc e
    jr jr_024_79a0

    add hl, de

jr_024_79a0:
    rst $30
    rra
    jr nz, jr_024_79c5

    and d
    sbc c
    sbc e
    ld a, [de]
    dec de
    add b
    ldh a, [rLCDC]
    inc e
    rst $30
    ld [hl+], a
    inc hl
    inc h
    or d
    ld b, e
    ld [hl], $0b
    dec bc
    dec [hl]
    ld b, $38
    inc b
    adc e
    ld d, b
    ld d, h
    ld d, h
    add sp, $54
    ld d, h
    ld d, h
    adc e
    ld e, l
    rrca

jr_024_79c5:
    inc c
    ccf
    ld de, $0f0f
    sbc e
    inc b
    inc b
    ld c, l
    and e
    inc b
    ld hl, sp+$00
    ld b, b
    ld c, l
    ld de, $b335
    ld c, l
    ld de, $500f
    ld d, h
    ld d, h
    ld d, h
    or b
    jp Jump_024_5411


    ld d, h
    and e
    ld e, l
    rrca
    xor a
    xor a

jr_024_79e8:
    or e
    ld e, l
    rlca
    ld c, $11
    xor a
    xor a

jr_024_79ef:
    xor a
    ld b, b
    ld b, b
    ld b, d
    ld b, e
    ld [hl], $af
    xor a
    rst $38
    inc bc
    ld d, h
    ld de, $0f0f
    ld de, $1111
    db $fd
    inc hl
    ld de, $5e6f
    call nz, Call_024_405d
    ld b, b
    add b
    jr c, jr_024_7a4c

    ld b, d
    rrca
    ld de, $b70f
    adc $57
    ld d, h
    ld d, h
    ld h, d
    ld h, e
    ld d, h
    inc c
    db $fc
    xor a
    ld d, h
    ld d, h
    ld d, b
    xor d
    add sp, -$46
    ld d, c
    db $eb
    rst $38
    rst $38
    xor a
    rst $38
    ld d, h
    inc e
    ld de, $8052
    xor a
    xor a
    xor a
    ldh a, [rNR11]
    xor a
    xor a
    ld d, d
    ld [hl], b
    rrca
    xor a
    ld d, d
    add b
    ld b, b
    ld b, b
    rlca
    ld b, b
    ld [hl], $af
    xor a
    ld d, d
    ld [hl], b
    rra
    ld d, h
    ld d, c
    xor a
    xor a
    call c, Call_024_52af
    add b
    xor c

jr_024_7a4c:
    di
    xor a
    ld d, d
    ld [hl], b
    rst $08
    xor a
    ld d, d
    add b
    rra
    xor a
    xor c
    ld d, d
    ld [hl], b
    add h
    ld de, $8101
    jr jr_024_79e8

    sbc [hl]
    adc d
    adc e
    ld c, $71
    jr jr_024_79ef

    sbc [hl]
    adc d
    ld b, [hl]
    nop
    ld c, $8b
    ld bc, $1881
    sbc c
    sbc d
    sbc d
    sbc e
    ld hl, sp-$08
    ld bc, $1871
    cp b
    ldh [$0e], a
    ld bc, $f82b
    ld hl, sp-$7f
    jr jr_024_7a83

    dec hl

jr_024_7a83:
    ld hl, sp-$3f
    rlca
    ld hl, sp+$01
    ld [hl], c
    jr @+$10

    dec hl
    ld bc, $1881
    ld bc, $3f2b
    ld b, b
    dec hl
    ld [hl], c
    jr @+$03

    ld bc, $010e
    ld bc, $0e0e
    ld a, $1b
    dec c
    ld bc, $f82b
    inc b
    add b
    add c
    add hl, de
    nop
    jr jr_024_7ad5

    ld [hl], b
    ld [hl], c
    add hl, de
    inc b
    and b
    and c
    add d
    inc b
    and d
    jr @+$2d

    add b
    add c
    add hl, de
    nop
    or b
    or c
    or d
    inc b
    jr jr_024_7aea

    ld [hl], b
    ld [hl], c
    ld [hl+], a
    inc b
    add hl, de
    or $ea
    or $1a
    dec hl

jr_024_7ac9:
    ld e, b
    ld d, $80
    add c
    ld bc, $172b
    ld a, [c]
    dec hl
    ld a, [c]
    ld d, $16

jr_024_7ad5:
    ccf
    dec hl
    ld bc, $de01
    ld bc, $0e0e
    nop
    ld d, d
    jr jr_024_7ae2

    add hl, de

jr_024_7ae2:
    add b
    add d
    ld [hl], d
    add c
    nop
    add b
    add d
    ld d, d

jr_024_7aea:
    ld a, [de]
    dec de
    inc e
    ld [hl], b
    ld [hl], d
    ldh [$d9], a
    add c
    dec d
    rla
    add b
    ld d, d
    nop
    add b
    add c
    jp z, $1c1a

    ld [hl], b
    ld e, c
    rst $08
    ld b, $40
    ld d, a
    ld [hl], $d0
    dec [hl]
    ld b, d
    add b
    ld e, $54
    ld d, b
    ld d, c
    ret nc

    ld d, b
    db $f4
    ld d, $62
    ld b, b
    ld bc, $2b31
    ld a, c
    ld a, d
    ld a, d
    ld c, $01
    ld b, d
    ld c, $01
    dec hl
    adc c
    adc d
    adc d
    dec hl
    rra
    dec hl
    adc c
    adc d
    adc d
    nop
    ld b, $82
    ld [hl], d
    add c
    and h
    and l
    cp a
    cp a
    and [hl]
    and a
    add b
    ld [hl], c
    or h
    or l
    and b
    and b
    jr jr_024_7ac9

    ld [hl], d
    or [hl]
    or a
    ld [hl], b
    add d
    ld [hl], c
    xor b
    and c
    and c
    xor e
    ld [hl], b
    add d
    add d
    nop
    ld [hl], b
    cp a
    add c
    cp b
    cp c
    cp d
    cp e
    add b
    add d
    ld [hl], d
    ld b, b
    ld b, b
    ld [hl], $f2
    dec [hl]
    ldh [rSB], a
    ret nc

    ld b, b
    ld b, b
    ld a, d
    adc h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    adc d
    adc e
    ld d, $16
    inc bc
    rrca
    dec hl
    ld d, $17
    ld [hl], b
    ld [hl], c
    adc d
    adc e
    ld bc, $8019
    add d
    ldh [$c3], a
    ld hl, sp+$71
    ld d, e
    inc b
    dec d
    ld c, $81
    ld d, e
    dec d
    ld c, $0e
    ld b, $30
    ld sp, $5371
    jr @-$06

    ld sp, $1234

jr_024_7b89:
    ld [de], a
    add c
    ld d, e
    ret nz

    nop
    ld [de], a
    jr jr_024_7b89

jr_024_7b91:
    ld d, d
    and e
    rrca
    ld d, e
    ld b, b
    ld h, e
    jr jr_024_7b91

    ld d, d
    or e
    ld de, $8033

jr_024_7b9e:
    ld bc, $3411
    ld [de], a
    ld d, h
    ld d, c
    jr jr_024_7b9e

jr_024_7ba6:
    ld d, d
    rrca
    ld d, e
    ld [de], a
    ld [hl], b
    ld [hl], c
    jr jr_024_7ba6

    nop
    jr c, jr_024_7bf1

    ld d, d
    rst $20

jr_024_7bb3:
    ld de, $5311
    ld [de], a
    ld [hl], d
    add c
    jr jr_024_7bb3

    ld h, d
    ld h, e
    ld [de], a
    rst $08
    ld bc, $0ef8
    ld bc, $3052
    jr nc, jr_024_7c01

    ld a, c
    ld a, d
    adc h
    add b
    inc bc
    adc d
    add hl, sp
    jr nc, @+$36

    ld d, d
    ld [de], a
    ld c, l
    ld a, c
    adc h
    ld de, $5253
    ld c, l
    ld de, $380e
    sbc [hl]
    sbc l
    sbc a
    ld de, $5253
    ld e, l
    ld de, $9f9d
    ld de, $00e0
    adc d
    ld d, e
    ld d, d
    ld e, l
    ld b, e
    adc c
    adc e
    ret nc

jr_024_7bf1:
    ld e, h
    ld d, d
    ld e, l
    ld d, e
    sbc c
    sbc d
    nop
    rlca
    ld hl, sp-$66
    sbc d
    sbc e
    ret nc

    ld l, h
    ld d, d
    ld e, l

jr_024_7c01:
    ld d, e
    ld bc, $0e01
    ld c, $52
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
    call c, $01d0
    and e
    dec hl
    ld c, $19
    and c
    or e
    dec hl
    ld c, $40
    dec d
    push de
    ld bc, $1901
    or c
    and e
    reti


    reti


    dec hl
    dec hl
    ld d, $b3
    reti


    rrca
    ld a, [hl+]
    reti


    dec hl
    dec hl
    dec hl
    ld bc, $d5a3
    push de
    push de
    dec hl
    add b
    rrca
    dec hl
    push de
    ld bc, $a2a1
    reti


    reti


    reti


    or c
    or d
    and e
    or e
    ret nz

    db $e3
    ld b, b
    and e
    inc b
    or e
    and e
    or e
    and e
    ld e, b
    call $bc57
    or b
    ld bc, $18a2
    ld c, $2b
    or e
    or d
    jr @+$10

    inc b
    inc e
    dec hl
    ld bc, $a301
    ld d, $d5
    reti


    push de
    reti


    push de
    or e
    ld bc, $0fd9
    inc d
    reti


    dec hl
    db $eb
    dec hl
    and e
    ld bc, $d5d5
    push de
    dec hl
    dec hl
    db $fd
    inc bc
    dec hl
    or e
    and c
    and d
    or e
    and e
    or e
    and e
    ret nz

    rst $38
    ld b, b

jr_024_7ceb:
    or e
    and e
    or e
    and e
    or c
    or d
    jr jr_024_7ceb

    xor a
    ld d, e
    ld d, h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, e
    rst $20
    sbc a
    xor a
    and d
    ld d, e
    or d
    ld d, e
    ld a, a
    ld a, [$a9af]
    ld d, e
    ld c, h
    ldh [rIF], a
    ei
    xor a
    xor a
    ld d, e
    ld e, a
    ld d, e
    ld d, e
    ld de, $fd53
    ccf
    cp $fd
    ld h, e
    ld de, $3853
    ldh [rNR11], a
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ld d, c
    xor a
    xor a
    and e
    pop af
    ld d, d
    inc l
    cp b
    xor a
    ld d, e
    xor c
    or e
    ld d, d
    ld de, $1111
    ld d, e
    xor c
    ld c, $38
    ld de, $5352
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, d
    ld d, e
    xor a
    inc c
    ld c, $fb
    xor a
    xor a
    ld d, d
    ld de, $1111
    ld d, e
    db $fd
    db $fd
    ld d, d
    ld de, $e0f8
    db $fd
    ld de, $5311
    ld d, d
    ld de, $1111
    ld d, e
    rst $38
    rst $38
    xor a
    cp a
    rst $38
    xor a
    xor c
    rst $38
    ld e, a
    xor a
    xor c
    xor c
    db $fc
    ld c, $fb
    xor a
    xor a
    and a
    db $fd
    db $fd
    db $fd
    db $fd
    ei
    rst $08
    db $fd
    and a
    and a
    and b
    ld a, a
    db $fc
    xor a
    xor c
    ld d, d
    add b
    di
    rst $00
    xor a
    ld d, d
    ld [hl], b
    xor c
    ld d, d
    add b
    cpl
    rst $38
    xor a
    xor c
    ld d, d
    ld [hl], b
    db $fc
    inc bc
    ei
    ld d, d
    add b
    ld d, d
    ld [hl], b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $08
    ccf
    db $fd
    ld d, d
    add b
    ld d, d
    ld [hl], b
    call c, $8101
    jr @+$10

    ldh [$f8], a
    dec hl
    ld bc, $1871
    ld c, $e0
    reti


    ld hl, sp-$08
    dec hl
    ld bc, $8881
    reti


    and b
    db $eb
    and d
    dec hl
    ld c, $71
    inc hl
    reti


    xor c
    xor d
    xor e
    dec hl
    ld bc, $d98e
    add c
    or $ea
    or $52
    ld bc, $712b
    jr jr_024_7dd9

    dec hl
    call nz, $012b
    ld c, $0e
    add c
    jr jr_024_7e13

    dec hl
    ld [hl], c
    jr jr_024_7e16

    rst $30

jr_024_7dd9:
    dec hl
    dec hl
    ld c, $fe
    ret


    dec hl
    ld bc, $0e0e
    ld c, $0e
    inc h
    sub e
    dec hl
    ld c, $0e
    ld bc, $0e01
    xor [hl]
    xor [hl]
    ld c, $01
    ld bc, $ce73
    dec hl
    xor h
    xor l
    ld bc, $bc01
    cp l
    ret


    inc [hl]
    dec hl
    ld c, $0e
    ld c, $ae
    xor [hl]
    ld c, $01
    ld c, $0e
    or e
    ld a, a
    dec hl
    ld c, $0e
    ld c, $70
    ld a, b
    dec de
    ld bc, $012b
    sbc c

jr_024_7e13:
    ldh [$f7], a
    sbc d

jr_024_7e16:
    sbc d
    ld bc, $192b
    add e
    rst $30
    jr @+$03

    ld c, $2b
    add hl, de
    ld h, b
    ld bc, $a4a3
    and l
    rst $30
    jr jr_024_7e54

    ld [hl+], a
    rst $30
    add hl, de
    or e
    or h
    or l
    jr jr_024_7e3f

    ld d, b
    or $01
    dec hl
    add hl, de
    rst $30
    ld [$88f7], a
    dec hl
    jr @+$03

    ld c, $19

jr_024_7e3f:
    rst $30
    rst $30
    ldh a, [$2b]
    rst $30

jr_024_7e44:
    rst $30
    jr jr_024_7e48

    ccf

jr_024_7e48:
    dec hl
    ld [hl], c
    inc b
    dec d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec hl
    ld a, c
    jr nc, jr_024_7e44

jr_024_7e54:
    dec hl
    sbc d
    sbc e
    ld bc, $010e
    add hl, de
    ld [hl], b
    ld [hl], d
    ld bc, $9001
    jp nz, $2b01

    add hl, de
    add b
    add d
    ld c, $2b
    ld c, $2b
    add hl, de
    inc b
    add b
    inc b
    dec hl
    ld bc, $0e2b
    ld c, $2b
    add hl, de
    rst $30
    rst $30
    dec hl
    ld c, $2b
    add hl, de
    db $10
    pop af
    dec hl
    jp z, HeaderLogo

    ld c, $0e
    ld bc, $190e
    jp z, $c004

    ccf
    ld a, d
    dec hl
    dec hl
    dec hl
    inc e
    rst $30
    rst $30

jr_024_7e91:
    adc h
    ld [hl], b
    ld h, b
    ld d, h
    add d
    ld [hl], c
    jr jr_024_7e91

    ld b, l

jr_024_7e9a:
    add sp, $00
    ld d, c
    ld [de], a
    ld [hl], d
    add c
    jr jr_024_7e9a

    ld d, b
    add sp, $0c
    ld [de], a
    ld l, c
    ld e, [hl]
    add c
    inc b
    ld a, [de]
    ld c, $30
    ld e, a
    ld hl, sp-$08
    ld d, d
    rrca
    rst $30
    inc b
    ldh [rLCDC], a
    inc b
    jr jr_024_7ec7

    ld hl, sp+$62
    rlca
    inc b
    ld a, [de]
    ld bc, $50f8
    ld d, h
    inc a
    inc b
    ld d, h
    ld d, h
    ld a, [de]

jr_024_7ec7:
    ld c, $0f
    ld hl, sp-$09
    inc b
    inc b
    inc b
    inc a
    dec de
    inc b
    ld a, [de]
    ld [hl], c
    ld [hl], b
    ld hl, $f771
    inc b
    rst $30
    ld [hl], b
    ld sp, $b030
    ld c, $5d
    ld d, e
    ld hl, sp-$08
    ld bc, $01c1
    ld d, d
    ld e, l
    ld d, e
    ld hl, sp-$08
    inc bc
    dec de
    inc e
    ld d, d
    rrca
    ld d, e
    ld hl, sp+$0e
    inc d
    call nz, $1c0e
    reti


    ld d, d
    ld b, b
    ld h, e
    jr @+$06

    ld hl, sp+$01
    add hl, de
    call nz, Call_024_52d9
    ldh [rDIV], a
    ld d, h
    ld d, c
    ld hl, sp+$01
    inc e
    add c
    inc b
    ld d, d
    ld hl, sp-$08
    ld c, $1c
    call nz, $1b30
    rra
    jr nz, jr_024_7f37

    ld d, d
    inc e
    call nz, $0403
    ld [hl+], a
    inc hl
    inc h
    ld d, d
    jr nc, jr_024_7f51

    ld a, a
    jr nc, jr_024_7f56

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

jr_024_7f37:
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

jr_024_7f51:
    db $f4
    db $f4
    db $f4
    rst $28
    cp a

jr_024_7f56:
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
    rst JumpTable
    inc bc
    ld d, h
    sub l
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, l
    ld de, $098c
    ld [de], a
    ld de, $526e
    ld c, [hl]
    ldh [$6d], a
    ld l, [hl]
    ld c, l
    ld e, a
    ld d, d
    ld de, $fe00
    ld b, b
    ld e, a
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, l
    ld de, $6211
    ld hl, sp+$0f
    ld d, h
    ld b, b
    ld b, b
    ld d, b
    db $fd
    db $fd

Call_024_7fc0:
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    cp a
    inc bc
    ld d, h
    add sp, $12
    ld e, l
    ld de, $6f11
    ld l, [hl]
    ld bc, $1219
    ld l, l
    ld l, a
    ld de, $115f
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, [hl]
    ld l, l
    ld de, $005e
    rst $38
    ld b, b
    ld [de], a
    ld c, l
    ld e, a
    ld de, $4e11
    ld [de], a
    ld [de], a
    db $fc
    rrca
    ld d, h
    ld b, b
    ld b, b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    ld hl, sp-$3d
    db $fd
    ld d, c
    ld de, $1138
    ld de, $2f2f
    add a

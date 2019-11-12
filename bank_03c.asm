; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03c", ROMX

    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $1c
    inc e
    rra
    inc e
    ld h, $1c
    inc hl
    inc e
    dec hl
    inc e
    jr z, jr_03c_4031

    ld h, $1c
    jr z, jr_03c_4035

    ldh [rP1], a
    ld hl, $2609
    add hl, bc
    jr z, jr_03c_402b

    dec hl
    add hl, bc
    dec l
    add hl, bc
    jr z, jr_03c_4031

    ld a, [hl+]
    add hl, bc
    dec l
    add hl, bc

jr_03c_402b:
    ld [hl-], a
    ld a, [bc]
    cpl
    add hl, bc
    ld [hl], $09

jr_03c_4031:
    inc [hl]
    ld a, [bc]
    cpl
    add hl, bc

jr_03c_4035:
    ld [hl-], a
    add hl, bc
    scf
    ld a, [bc]
    ld [hl], $09
    add hl, sp
    add hl, bc
    inc [hl]
    ld a, [bc]
    ld [hl], $09
    add hl, sp
    add hl, bc
    ld a, $0a
    dec sp
    add hl, bc
    dec a
    add hl, bc
    add hl, sp
    ld a, [bc]
    ldh [rP1], a
    pop de
    ld b, a
    inc b
    ld b, l
    inc b
    ld b, a
    inc b
    ld b, l
    inc b
    jp nc, $0447

    ld b, l
    inc b
    ld b, a
    inc b
    ld b, l
    inc b
    db $d3
    ld b, a
    inc b
    ld b, l
    inc b
    ld b, a
    inc b
    ld b, l
    inc b
    db $d3
    ld b, a
    inc b
    ld b, l
    inc b
    call nc, $0447
    ld b, l
    inc b
    ldh [rTIMA], a
    ld b, a
    ld c, $d3
    ld b, a
    ld c, $d2
    ld b, a
    ld c, $d1
    ld b, a
    ld e, d
    ldh [rP1], a
    sub $21
    inc e
    jr nz, jr_03c_40a2

    ld e, $1c
    inc e
    inc e
    ld a, [de]
    inc e
    ld e, $1c
    inc e
    inc e
    dec d
    inc e
    ld a, [de]
    inc e
    rla
    inc e
    inc e
    inc e
    ldh [rTMA], a
    ld e, $70
    ldh [rP1], a
    ldh [rP1], a
    ld h, $09

jr_03c_40a2:
    jr z, @+$0b

    dec hl
    ld a, [bc]
    ld a, [hl+]
    add hl, bc
    jr z, @+$0b

    ld h, $0a
    jr z, jr_03c_40b7

    cpl
    add hl, bc
    ld [hl-], a
    ld a, [bc]
    ld sp, $2f09
    add hl, bc
    dec l

jr_03c_40b7:
    ld a, [bc]
    cpl
    add hl, bc
    inc [hl]
    add hl, bc
    add hl, sp
    ld a, [bc]
    scf
    add hl, bc
    ld [hl], $09
    inc [hl]
    ld a, [bc]
    ld [hl], $09
    add hl, sp
    add hl, bc
    ld a, $0a
    dec a
    add hl, bc
    dec sp
    add hl, bc
    add hl, sp
    ld a, [bc]
    ldh [rP1], a
    sub $34
    inc b
    ld [hl], $04
    add hl, sp
    ld b, $3b
    inc b
    ldh [rTMA], a
    call nc, $0a3e
    call nc, $093e
    jp nc, $093e

    pop de
    ld a, $0a
    ldh [rP1], a
    sub $34
    inc b
    sub $36
    inc b
    add hl, sp
    ld b, $3b
    inc b
    ldh [rTMA], a
    push de
    ld a, $0a
    call nc, $093e
    jp nc, $093e

    pop de
    ld a, $0a
    ldh [rP1], a
    sub $34
    inc b
    sub $36
    inc b
    add hl, sp
    ld b, $3b
    inc b
    ldh [rTMA], a
    call nc, $0a3e
    db $d3
    ld a, $09
    jp nc, $093e

    pop de
    ld a, $0a
    ldh [rP1], a
    pop de
    ld b, e
    inc b
    ld b, l
    inc b
    pop de
    ld b, e
    inc b
    ld b, l
    inc b
    jp nc, $0443

    ld b, l
    inc b
    jp nc, $0443

    ld b, l
    inc b
    db $d3
    ld b, e
    inc b
    ld b, l
    inc b
    db $d3
    ld b, e
    inc b
    ld b, l
    inc b
    call nc, $0443
    ld b, l
    inc b
    ldh [rTAC], a
    jp nc, $0e43

    jp nc, $0e43

    pop de
    ld b, e
    ld c, $d1
    ld b, e
    ld b, [hl]
    ldh [rP1], a
    cp $01
    ld b, b
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $15
    inc e
    ld a, [de]
    inc e
    rra
    inc e
    inc e
    inc e
    sub $24
    inc e
    inc hl
    inc e
    rra
    inc e
    ldh [rDIV], a
    ld hl, $e02e
    nop
    ldh [rP1], a
    sub $21
    ld a, [bc]
    ld h, $09
    jr z, jr_03c_4185

    dec hl
    ld a, [bc]
    dec l
    add hl, bc
    call nc, $0928
    ld a, [hl+]
    ld a, [bc]

jr_03c_4185:
    dec l
    add hl, bc
    ld [hl-], a
    add hl, bc
    cpl
    ld a, [bc]
    ld [hl], $09
    inc [hl]
    add hl, bc
    cpl
    ld a, [bc]
    ld [hl-], a
    add hl, bc
    scf
    add hl, bc
    call nc, $0a36
    add hl, sp
    add hl, bc
    inc [hl]
    add hl, bc
    call nc, $0a36
    add hl, sp
    add hl, bc
    ld a, $09
    dec sp
    ld a, [bc]
    ldh [rP1], a
    pop de
    ld b, e
    inc b
    ld b, c
    inc b
    ld b, e
    inc b
    ld b, c
    inc b
    jp nc, $0443

    ld b, c
    inc b
    ld b, e
    inc b
    ld b, c
    inc b
    db $d3
    ld b, e
    inc b
    ld b, c
    inc b
    ld b, e
    inc b
    ld b, c
    inc b
    db $d3
    ld b, e
    inc b
    ld b, c
    inc b
    call nc, $0443
    ld b, c
    inc b
    ldh [rTMA], a
    jp nc, $0e43

    jp nc, $0e43

    jp nc, $0e43

    pop de
    ld b, e
    ld e, d
    ldh [rP1], a
    sub $1a
    inc e
    add hl, de
    inc e
    rla
    inc e
    dec d
    inc e
    inc de
    inc e
    rla
    inc e
    dec d
    inc e
    db $10
    inc e
    inc de
    inc e
    db $10
    inc e
    dec d
    inc e
    rla
    inc e
    ld a, [de]
    inc e
    inc e
    inc e
    ldh [rTMA], a
    rra
    ld sp, $00e0
    ldh [rP1], a
    sub $23
    add hl, bc
    ld h, $09
    call nc, $0a2b
    ld a, [hl+]
    add hl, bc
    jr z, @+$0b

    ld h, $0a
    jr z, jr_03c_421a

    cpl
    add hl, bc
    ld [hl-], a
    ld a, [bc]
    ld sp, $2f09
    add hl, bc
    dec l

jr_03c_421a:
    ld a, [bc]
    cpl
    add hl, bc
    inc [hl]
    add hl, bc
    call nc, $0a39
    scf
    add hl, bc
    ld [hl], $09
    inc [hl]
    ld a, [bc]
    ld [hl], $09
    add hl, sp
    add hl, bc
    ld a, $0a
    dec a
    add hl, bc
    dec sp
    add hl, bc
    add hl, sp
    ld a, [bc]
    ldh [rP1], a
    call nc, $0434
    ld [hl], $05
    add hl, sp
    inc b
    dec sp
    inc b
    ldh [rTMA], a
    db $d3
    ld a, $0d
    jp nc, $0e3e

    pop de
    ld a, $0c
    ldh [rP1], a
    db $d3
    inc [hl]
    inc b
    ld [hl], $05
    add hl, sp
    inc b
    dec sp
    inc b
    ldh [rTMA], a
    jp nc, $0d3e

    pop de
    ld a, $0e
    pop de
    ld a, $0c
    ldh [rP1], a
    db $d3
    inc [hl]
    inc b
    ld [hl], $05
    add hl, sp
    inc b
    dec sp
    inc b
    ldh [rTMA], a
    jp nc, $0c3e

    pop de
    ld a, $05
    ldh [rP1], a
    pop de
    ld b, a
    inc b
    ld c, c
    inc b
    pop de
    ld b, a
    inc b
    ld c, c
    inc b
    jp nc, $0447

    ld c, c
    inc b
    jp nc, $0447

    ld c, c
    inc b
    db $d3
    ld b, a
    inc b
    ld c, c
    inc b
    db $d3
    ld b, a
    inc b
    ld c, c
    inc b
    call nc, $0447
    ld c, c
    inc b
    ldh [rTMA], a
    jp nc, $0e47

    jp nc, $0e47

    jp nc, $0e47

    pop de
    ld b, a
    ld b, a
    ldh [rP1], a
    cp $56
    ld b, c
    rst $38
    or $17
    ld hl, $261c
    inc e
    dec hl
    inc e
    jr z, jr_03c_42d2

    jr nc, @+$1e

    cpl
    inc e
    dec hl
    inc e
    dec l
    inc e
    jr z, @+$72

    or $0f
    jr z, @+$3a

    or $0c
    jr z, jr_03c_4300

    ld h, b
    call nz, $17f6
    ld h, $1c
    dec h
    inc e
    inc hl
    inc e

jr_03c_42d2:
    ld hl, $1f1c
    inc e
    inc hl
    inc e
    ld hl, $1c1c
    inc e
    rra
    inc e
    inc e

jr_03c_42df:
    inc e
    ld hl, $231c
    ld [hl], b
    or $0f
    inc hl
    jr c, jr_03c_42df

    inc c
    inc hl
    jr c, jr_03c_434d

    rst $38
    ld h, b
    pop bc
    cp $ac
    ld b, d
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $24
    inc h
    dec h
    inc h

jr_03c_4300:
    inc h
    inc h
    dec h
    inc h
    sub $24
    ld b, $d1
    inc h
    inc bc
    sub $24
    ld b, $d1
    inc h
    inc bc
    sub $24
    ld b, $d1
    inc h
    inc c
    call nc, $0924
    pop de
    inc h
    add hl, bc
    jp nc, $0924

    pop de
    inc h
    dec de
    sub $24
    ld [de], a
    dec h
    ld [de], a
    jr z, jr_03c_433b

    inc h
    sub b
    sub $28
    inc b
    pop de
    jr z, @+$07

    db $d3
    jr z, @+$06

    pop de
    jr z, jr_03c_433c

    sub $22
    inc b
    pop de

jr_03c_433b:
    ld [hl+], a

jr_03c_433c:
    dec b
    call nc, $0422
    pop de
    ld [hl+], a
    dec b
    jp nc, $0422

    pop de
    ld [hl+], a
    dec b
    pop de
    ld [hl+], a
    inc b
    ld h, b

jr_03c_434d:
    ld [hl], c
    sub $28
    ld [de], a
    ld [hl+], a
    ld [de], a
    db $d3
    ld [hl+], a
    ld [de], a
    sub $2c
    ld l, h
    dec l
    inc h
    ld l, $24
    cpl
    inc h
    jr nc, @-$6e

    sub $34
    inc b
    pop de
    inc [hl]
    dec b
    db $d3
    inc [hl]
    inc b
    pop de
    inc [hl]
    dec b
    sub $2e
    inc b
    pop de
    ld l, $05
    push de
    ld l, $04
    pop de
    ld l, $05
    db $d3
    ld l, $04
    pop de
    ld l, $05
    jp nc, $042e

    ld h, b
    ld l, b
    sub $2f
    add hl, bc
    inc [hl]
    add hl, bc
    add hl, sp
    add hl, bc
    jr c, jr_03c_4396

    ld sp, $3809
    add hl, bc
    dec sp
    add hl, bc
    add hl, sp
    add hl, bc
    inc [hl]

jr_03c_4396:
    add hl, bc
    add hl, sp
    add hl, bc
    ccf
    add hl, bc
    dec a
    add hl, bc
    inc sp
    add hl, bc
    jr c, jr_03c_43aa

    dec a
    add hl, bc
    dec sp
    add hl, bc
    inc sp
    add hl, bc
    inc [hl]
    add hl, bc
    dec sp

jr_03c_43aa:
    add hl, bc
    add hl, sp
    add hl, bc
    ld sp, $3309
    add hl, bc
    add hl, sp
    add hl, bc
    jr c, jr_03c_43be

    dec l
    add hl, bc
    ld sp, $3809
    add hl, bc
    ld [hl], $09
    inc l

jr_03c_43be:
    add hl, bc
    cpl
    add hl, bc
    ld [hl], $09
    inc [hl]
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec l
    add hl, bc
    inc [hl]
    add hl, bc
    add hl, sp
    add hl, bc
    cpl
    add hl, bc
    inc [hl]
    add hl, bc
    add hl, sp
    add hl, bc
    inc a
    add hl, bc
    ld [hl-], a
    add hl, bc
    scf
    add hl, bc
    inc a
    add hl, bc
    ld b, c
    add hl, bc
    scf
    add hl, bc
    inc a
    add hl, bc
    ld b, c
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld a, [hl-]
    add hl, bc
    ld b, c
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld c, d
    add hl, bc
    ld a, $09
    ld b, l
    add hl, bc
    ld c, d
    add hl, bc
    ld c, e
    add hl, bc
    ld b, b
    add hl, bc
    ld b, l
    add hl, bc
    ld c, e
    add hl, bc
    ld c, l
    add hl, bc
    ld b, e
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld c, l
    add hl, bc
    ld c, h
    add hl, bc
    ld h, b
    dec c
    db $d3
    ld c, h
    add hl, bc
    ld h, b
    ld c, $d1
    ld c, h
    add hl, bc
    ld h, b
    inc h
    cp $f4
    ld b, d
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $1e
    inc h
    rra
    inc h
    ld e, $24
    rra
    inc h
    sub $1e
    inc b
    pop de
    ld e, $05
    sub $1e
    inc b
    pop de
    ld e, $05
    sub $1e
    inc b
    pop de
    ld e, $0e
    call nc, $091e
    pop de
    ld e, $09
    jp nc, $091e

    pop de
    ld e, $1b
    sub $1e
    ld [de], a
    rra
    ld [de], a
    inc h
    ld [de], a
    ld e, $90
    rst $10
    ld [hl+], a
    inc b
    pop de
    ld [hl+], a
    dec b
    call nc, $0422
    pop de
    ld [hl+], a
    dec b
    sub $1c
    inc b
    pop de
    inc e
    dec b
    push de
    inc e
    inc b
    pop de
    inc e
    dec b
    db $d3
    inc e
    inc b
    pop de
    inc e
    dec b
    jp nc, $041c

    ld h, b
    ld [hl], c
    sub $1e
    ld [de], a
    rra
    inc h
    jr nz, jr_03c_449a

    ld hl, $2224
    inc h
    inc hl
    inc h
    inc h
    inc h
    dec h
    inc h
    ld h, $24
    daa
    inc h
    jr z, jr_03c_44aa

    add hl, hl
    inc h
    sub $2e
    inc b
    pop de
    ld l, $05
    db $d3
    ld l, $04
    pop de
    ld l, $05
    sub $28
    inc b
    pop de
    jr z, @+$07

jr_03c_449a:
    push de
    jr z, jr_03c_44a1

    pop de
    jr z, @+$07

    db $d3

jr_03c_44a1:
    jr z, jr_03c_44a7

    pop de
    jr z, jr_03c_44ab

    pop de

jr_03c_44a7:
    jr z, @+$06

    ld h, b

jr_03c_44aa:
    add b

jr_03c_44ab:
    jp nc, $092f

    inc [hl]
    add hl, bc
    add hl, sp
    add hl, bc
    jr c, jr_03c_44bd

    ld sp, $3809
    add hl, bc
    dec sp
    add hl, bc
    add hl, sp
    add hl, bc
    inc [hl]

jr_03c_44bd:
    add hl, bc
    add hl, sp
    add hl, bc
    ccf
    add hl, bc
    dec a
    add hl, bc
    inc sp
    add hl, bc
    jr c, jr_03c_44d1

    dec a
    add hl, bc
    dec sp
    add hl, bc
    inc sp
    add hl, bc
    inc [hl]
    add hl, bc
    dec sp

jr_03c_44d1:
    add hl, bc
    add hl, sp
    add hl, bc
    ld sp, $3309
    add hl, bc
    add hl, sp
    add hl, bc
    jr c, jr_03c_44e5

    dec l
    rlca
    ld sp, $d001
    dec l
    ld [$0131], sp

jr_03c_44e5:
    jp nc, $0a38

    ld [hl], $09
    inc l
    add hl, bc
    cpl
    add hl, bc
    ld [hl], $09
    inc [hl]
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec l
    add hl, bc
    inc [hl]
    add hl, bc
    add hl, sp
    add hl, bc
    cpl
    add hl, bc
    inc [hl]
    add hl, bc
    add hl, sp
    add hl, bc
    inc a
    add hl, bc
    ld [hl-], a
    add hl, bc
    scf
    add hl, bc
    inc a
    add hl, bc
    ld b, c
    add hl, bc
    scf
    add hl, bc
    inc a
    add hl, bc
    ld b, c
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld a, [hl-]
    add hl, bc
    ld b, c
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld c, d
    add hl, bc
    ld a, $09
    ld b, l
    add hl, bc
    ld c, d
    add hl, bc
    ld c, e
    add hl, bc
    ld b, b
    add hl, bc
    ld b, l
    add hl, bc
    ld c, e
    add hl, bc
    ld c, d
    add hl, bc
    ld h, b
    inc bc
    jp nc, $034c

    ld h, b
    ld d, a
    cp $1c
    ld b, h
    rst $38
    ld a, [c]
    or $07
    add hl, de
    ld [de], a
    jr jr_03c_454e

    rla
    ld [de], a
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_455e

    rla
    ld [de], a

jr_03c_454e:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_456e

    rla
    ld [de], a

jr_03c_455e:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_457e

    rla
    ld [de], a

jr_03c_456e:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_458e

    rla
    ld [de], a

jr_03c_457e:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_459e

    rla
    ld [de], a

jr_03c_458e:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_45ae

    rla
    ld [de], a

jr_03c_459e:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de
    ld [de], a
    jr jr_03c_45be

    rla
    ld [de], a

jr_03c_45ae:
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    db $10
    inc h
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    adc d

jr_03c_45be:
    cp $36
    ld b, l
    rst $38
    ld a, [c]
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $0723
    sub $22
    ld [bc], a
    call nc, $0723
    sub $22
    ld [bc], a
    call nc, $0723
    sub $22
    ld [bc], a
    call nc, $0723
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $2223
    sub $22
    ld [bc], a
    call nc, $1023
    sub $22
    ld [bc], a
    call nc, $1023
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ret nz

    cp $c3
    ld b, l
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    call nc, $122f
    push de
    jr nc, jr_03c_46d6

    sub $31
    ld [hl], $30
    ld [de], a
    ld sp, $3012
    ld [de], a
    add hl, hl
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    ld [bc], a
    ld h, b
    inc bc

jr_03c_46d6:
    sub $29
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    ld [bc], a
    ld h, b
    ld l, a
    call nc, $122d
    push de
    ld l, $12
    sub $2f
    ld [hl], $d6
    ld l, $12
    cpl
    ld [de], a
    ld l, $12
    jr z, jr_03c_46fb

    ld h, b
    inc bc
    call nc, $0328
    ld h, b
    inc bc
    sub $28

jr_03c_46fb:
    add hl, bc
    ld h, b
    ld [bc], a
    push de
    jr z, @+$05

    ld h, b
    inc b
    jp nc, $0328

    ld h, b
    ld l, c
    call nc, $122f
    sub $30
    ld [de], a
    sub $31
    ld [hl], $d6
    jr nc, jr_03c_4726

    ld sp, $3012
    ld [de], a
    add hl, hl
    add hl, bc
    ld h, b
    ld [bc], a
    call nc, $0329
    ld h, b
    inc b
    sub $29
    add hl, bc
    ld h, b
    ld [bc], a

jr_03c_4726:
    call nc, $0329
    ld h, b
    inc b
    jp nc, $0329

    ld h, b
    ld l, c
    push de
    dec l
    ld [de], a
    push de
    ld l, $12
    sub $2f
    ld [hl], $d6
    ld l, $12
    cpl
    ld [de], a
    ld l, $12
    jr z, jr_03c_474b

    ld h, b
    inc bc
    call nc, $0328
    ld h, b
    inc bc
    sub $28

jr_03c_474b:
    add hl, bc
    ld h, b
    ld bc, $28d4
    inc bc
    ld h, b
    dec b
    jp nc, $0328

    ld h, b
    ld l, c
    or $01
    sub $23
    add hl, bc
    ld [hl+], a
    add hl, bc
    jr nz, jr_03c_476a

    ld e, $09
    dec e
    ld d, l
    ld h, b
    rla
    ld [hl+], a
    inc b
    inc hl

jr_03c_476a:
    dec b
    ld [hl+], a
    add hl, bc
    jr nz, jr_03c_4778

    ld e, $09
    dec e
    ld e, d
    ld h, b
    ld [de], a
    ld hl, $2009

jr_03c_4778:
    add hl, bc
    ld e, $09
    dec e
    add hl, bc
    dec de
    ld e, d
    ld h, b
    ld [de], a
    ld hl, $2009
    add hl, bc
    ld e, $09
    dec e
    add hl, bc
    dec de
    ld [de], a
    dec e
    add hl, bc
    ld h, b
    dec de
    dec de
    ld [de], a
    dec e
    add hl, bc
    ld h, b
    dec de
    inc hl
    add hl, bc
    ld [hl+], a
    add hl, bc
    jr nz, jr_03c_47a4

    ld e, $09
    dec e
    ld d, l
    ld h, b
    rla
    inc hl
    add hl, bc
    ld [hl+], a

jr_03c_47a4:
    add hl, bc
    jr nz, jr_03c_47b0

    ld e, $09
    dec e
    ccf
    ld h, b
    add hl, bc
    dec e
    add hl, bc
    rra

jr_03c_47b0:
    add hl, bc
    ld hl, $2309
    add hl, bc
    inc h
    add hl, bc
    ld h, b
    add hl, bc
    inc h
    add hl, bc
    ld h, b
    add hl, bc
    ld a, [hl+]
    ld l, h
    ld h, b
    ld c, b
    or $02
    cp $be
    ld b, [hl]
    rst $38
    ld a, [c]
    ld sp, hl
    pop af
    ldh [rP1], a
    or $02
    call nc, $1229
    push de
    ld a, [hl+]
    ld [de], a
    sub $2b
    ld [hl], $2a
    ld [de], a
    dec hl
    ld [de], a
    ld a, [hl+]
    ld [de], a
    sub $23
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc hl
    ld [bc], a
    ld h, b
    inc bc
    sub $23
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc hl
    ld [bc], a
    ld h, b
    ld l, a
    call nc, $1228
    push de
    add hl, hl
    ld [de], a
    sub $2a
    ld [hl], $d6
    add hl, hl
    ld [de], a
    ld a, [hl+]
    ld [de], a
    add hl, hl
    ld [de], a
    ld [hl+], a
    add hl, bc
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc bc
    ld h, b
    inc bc
    sub $22
    add hl, bc
    ld h, b
    inc bc
    jp nc, $0322

    ld h, b
    inc bc
    jp nc, $0322

    ld h, b
    ld l, c
    db $d3
    add hl, hl
    ld [de], a
    push de
    ld a, [hl+]
    ld [de], a
    sub $2b
    ld [hl], $2a
    ld [de], a
    dec hl
    ld [de], a
    ld a, [hl+]
    ld [de], a
    sub $23
    add hl, bc
    ld h, b
    inc bc
    db $d3
    inc hl
    inc bc
    ld h, b
    inc bc
    sub $23
    add hl, bc
    ld h, b
    inc bc
    db $d3
    inc hl
    inc bc
    ld h, b
    inc bc
    jp nc, $0323

    ld h, b
    rrca
    sub $1e
    inc b
    ld h, b
    ld bc, $1ed4
    dec b
    ld h, b
    ld bc, $1ed3
    inc b
    ld h, b
    ld c, e
    db $d3
    jr z, jr_03c_4865

    push de
    add hl, hl
    ld [de], a
    sub $2a
    ld [hl], $29
    ld [de], a
    sub $2a
    ld [de], a
    add hl, hl
    ld [de], a
    ld [hl+], a
    add hl, bc
    ld h, b
    inc bc
    db $d3

jr_03c_4865:
    ld [hl+], a
    inc bc
    ld h, b
    inc bc
    sub $22
    add hl, bc
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc bc
    ld h, b
    inc bc
    jp nc, $0322

    ld h, b
    rrca
    sub $1c
    inc b
    ld h, b
    ld bc, $1cd5
    dec b
    ld h, b
    ld bc, $1cd3
    inc b
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    db $e4
    pop de
    jr nc, @+$06

    ld h, b
    dec b
    jp nc, $0431

    ret nc

    jr nc, @+$07

    jp nc, $0430

    pop de
    ld sp, $d305
    ld sp, $d104
    jr nc, @+$07

    db $d3
    jr nc, jr_03c_48ab

    pop de
    ld sp, $d405

jr_03c_48ab:
    ld sp, $d104
    jr nc, @+$07

    call nc, $0430
    jp nc, $0531

    push de
    ld sp, $d204
    jr nc, @+$07

    push de
    jr nc, @+$06

    jp nc, $0531

    sub $31
    inc b
    jp nc, $0530

    ld h, b
    ld c, b
    cp $ce
    ld b, a
    rst $38
    or $0e
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    ld [hl], l
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    ld [hl], l
    ld d, $09
    ld h, b
    add hl, bc
    ld d, $09
    ld h, b
    ld [hl], l
    ld d, $09
    ld h, b
    add hl, bc
    ld d, $09
    ld h, b
    ld [hl], l
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    ld [hl], l
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    ld h, e
    rla
    add hl, bc
    ld h, b
    add hl, bc
    ld d, $09
    ld h, b
    add hl, bc
    ld d, $09
    ld h, b
    ld [hl], l
    ld d, $09
    ld h, b
    add hl, bc
    ld d, $09
    ld h, b
    ld h, e
    ld d, $09
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    dec d
    add hl, bc
    ld h, b
    add hl, bc
    dec d
    add hl, bc
    ld h, b
    dec de
    rrca
    add hl, bc
    ld h, b
    add hl, bc
    dec d
    add hl, bc
    ld h, b
    add hl, bc
    dec d
    add hl, bc
    ld h, b
    dec de
    rrca
    add hl, bc
    ld h, b
    add hl, bc
    dec d
    add hl, bc
    ld h, b
    add hl, bc
    dec d
    add hl, bc
    ld h, b
    add hl, bc
    rrca
    ld [de], a
    ld de, $6009
    dec de
    rrca
    ld [de], a
    ld de, $6009
    dec de
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    rla
    add hl, bc
    ld h, b
    add hl, bc
    rla
    add hl, bc
    ld h, b
    dec de
    ld de, $6009
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld c, $6c
    ld h, b
    ld c, b
    cp $ce
    ld c, b
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $26
    db $10
    daa
    db $10
    dec l
    db $10
    ld [hl-], a
    db $10
    daa
    db $10
    jr nc, jr_03c_49d8

    daa
    db $10
    jr nc, jr_03c_49dc

    dec l
    db $10
    daa
    db $10
    ld h, $10
    dec l
    db $10
    ld h, $10
    daa
    db $10

jr_03c_49d8:
    dec l
    db $10
    ld [hl-], a
    db $10

jr_03c_49dc:
    daa
    db $10
    jr nc, jr_03c_49f0

    daa
    db $10
    jr nc, jr_03c_49f4

    dec l
    db $10
    daa
    db $10
    ld h, $10
    dec l
    db $10
    ld h, $10
    daa
    db $10

jr_03c_49f0:
    dec l
    db $10
    ld [hl-], a
    db $10

jr_03c_49f4:
    daa
    db $10
    jr nc, jr_03c_4a08

    daa
    db $10
    jr nc, jr_03c_4a0c

    dec l
    db $10
    daa
    db $10
    ld h, $10
    dec l
    db $10
    ld h, $10
    daa
    db $10

jr_03c_4a08:
    dec l
    db $10
    ld [hl-], a
    db $10

jr_03c_4a0c:
    daa
    db $10
    jr nc, jr_03c_4a20

    daa
    db $10
    jr nc, jr_03c_4a24

    dec l
    db $10
    daa
    db $10
    ld h, $10
    dec l
    db $10
    jr z, jr_03c_4a2e

    add hl, hl
    db $10

jr_03c_4a20:
    cpl
    db $10
    inc [hl]
    db $10

jr_03c_4a24:
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4a2e:
    add hl, hl
    db $10
    jr z, jr_03c_4a42

    cpl
    db $10
    jr z, jr_03c_4a46

    add hl, hl
    db $10
    cpl
    db $10
    inc [hl]
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10

jr_03c_4a42:
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4a46:
    add hl, hl
    db $10
    jr z, jr_03c_4a5a

    cpl
    db $10
    jr z, jr_03c_4a5e

    add hl, hl
    db $10
    cpl
    db $10
    inc [hl]
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10

jr_03c_4a5a:
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4a5e:
    add hl, hl
    db $10
    jr z, jr_03c_4a72

    cpl
    db $10
    jr z, jr_03c_4a76

    add hl, hl
    db $10
    cpl
    db $10
    inc [hl]
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10

jr_03c_4a72:
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4a76:
    add hl, hl
    db $10
    jr z, jr_03c_4a8a

    ld h, $10
    sub $23
    db $10
    ld [hl+], a
    db $10
    ld hl, $2010
    db $10
    ld h, b
    inc b
    db $d3
    jr nz, @+$0a

jr_03c_4a8a:
    ld h, b
    inc b
    pop de
    jr nz, @+$0a

    ld h, b
    ld [$20d6], sp
    db $10
    rra
    db $10
    ld e, $10
    dec e
    db $10
    ld h, b
    inc b
    db $d3
    dec e
    ld [$0460], sp
    pop de
    dec e
    ld [$0860], sp
    sub $1d
    db $10
    inc e
    db $10
    dec de
    db $10
    ld a, [de]
    db $10
    ld h, b
    inc b
    db $d3
    ld a, [de]
    ld [$0460], sp
    pop de
    ld a, [de]
    ld [$0860], sp
    sub $1a
    db $10
    add hl, de
    db $10
    jr jr_03c_4ad2

    rla
    db $10
    ld h, b
    inc b
    db $d3
    rla
    ld [$0460], sp
    pop de
    rla
    ld [$0860], sp
    cp $bb

jr_03c_4ad2:
    ld c, c
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    ret nc

    jr nz, jr_03c_4af0

    db $d3
    ld h, $10
    daa
    db $10
    dec l
    db $10
    ld [hl-], a
    db $10
    daa
    db $10
    jr nc, jr_03c_4afb

    daa
    db $10
    jr nc, jr_03c_4aff

    dec l

jr_03c_4af0:
    db $10
    db $d3
    daa
    db $10
    ld h, $10
    dec l
    db $10
    ld h, $10
    daa

jr_03c_4afb:
    db $10
    dec l
    db $10
    ld [hl-], a

jr_03c_4aff:
    db $10
    daa
    db $10
    jr nc, jr_03c_4b14

    daa
    db $10
    db $d3
    jr nc, jr_03c_4b19

    dec l
    db $10
    daa
    db $10
    ld h, $10
    ld h, b
    db $10
    ld h, $10
    daa

jr_03c_4b14:
    db $10
    dec l
    db $10
    ld [hl-], a
    db $10

jr_03c_4b19:
    daa
    db $10
    jr nc, jr_03c_4b2d

    daa
    db $10
    jr nc, jr_03c_4b31

    dec l
    db $10
    daa
    db $10
    ld h, $10
    dec l
    db $10
    ld h, $10
    daa
    db $10

jr_03c_4b2d:
    dec l
    db $10
    ld [hl-], a
    db $10

jr_03c_4b31:
    daa
    db $10
    jr nc, jr_03c_4b45

    daa
    db $10
    jr nc, jr_03c_4b49

    dec l
    db $10
    daa
    db $10
    ld h, $10
    dec l
    db $10
    jr z, jr_03c_4b53

    add hl, hl
    db $10

jr_03c_4b45:
    cpl
    db $10
    inc [hl]
    db $10

jr_03c_4b49:
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4b53:
    add hl, hl
    db $10
    jr z, jr_03c_4b67

    cpl
    db $10
    jr z, jr_03c_4b6b

    add hl, hl
    db $10
    cpl
    db $10
    inc [hl]
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10

jr_03c_4b67:
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4b6b:
    add hl, hl
    db $10
    jr z, jr_03c_4b7f

    cpl
    db $10
    jr z, jr_03c_4b83

    add hl, hl
    db $10
    cpl
    db $10
    inc [hl]
    db $10
    add hl, hl
    db $10
    db $d3
    ld [hl-], a
    db $10
    add hl, hl

jr_03c_4b7f:
    db $10
    ld [hl-], a
    db $10
    cpl

jr_03c_4b83:
    db $10
    add hl, hl
    db $10
    jr z, jr_03c_4b98

    cpl
    db $10
    jr z, jr_03c_4b9c

    add hl, hl
    db $10
    cpl
    db $10
    inc [hl]
    db $10
    add hl, hl
    db $10
    ld [hl-], a
    db $10
    add hl, hl
    db $10

jr_03c_4b98:
    ld [hl-], a
    db $10
    cpl
    db $10

jr_03c_4b9c:
    add hl, hl
    db $10
    jr z, jr_03c_4baa

    ld h, b
    inc b
    sub $1c
    db $10
    sub $1b
    db $10
    sub $1a

jr_03c_4baa:
    db $10
    add hl, de
    db $10
    ld h, b
    inc b
    db $d3
    add hl, de
    ld [$0460], sp
    pop de
    add hl, de
    ld [$0860], sp
    sub $19
    db $10
    sub $18
    db $10
    rla
    db $10
    ld d, $10
    ld h, b
    inc b
    db $d3
    ld d, $08
    ld h, b
    inc b
    pop de
    ld d, $08
    ld h, b
    ld [$16d6], sp
    db $10
    dec d
    db $10
    sub $14
    db $10
    inc de
    db $10
    ld h, b
    inc b
    db $d3
    inc de
    ld [$0460], sp
    pop de
    inc de
    ld [$0860], sp
    sub $13
    db $10
    ld [de], a
    db $10
    ld de, $d610
    db $10
    db $10
    ld h, b
    inc b
    db $d3
    db $10
    ld [$0460], sp
    pop de
    db $10
    ld [$0860], sp
    cp $db
    ld c, d
    rst $38
    ld a, [c]
    or $0e
    ld c, $10
    ld h, b
    db $10
    ld c, $10
    ld h, b
    ld [hl], b
    inc c
    jr nz, jr_03c_4c1b

    db $10
    ld h, b
    db $10
    ld c, $10
    ld h, b
    add b
    inc c
    db $10
    ld c, $0a
    ld h, b
    ld b, $0e

jr_03c_4c1b:
    ld a, [bc]
    ld h, b
    ld b, $0e
    db $10
    ld h, b
    ld [hl], b
    inc c
    jr nz, jr_03c_4c33

    db $10
    inc c
    db $10
    ld c, $10
    ld h, b
    ld [hl], b
    rrca
    jr nz, jr_03c_4c3f

    db $10
    ld h, b
    db $10
    db $10

jr_03c_4c33:
    db $10
    ld h, b
    add b
    ld c, $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    ld h, b

jr_03c_4c3f:
    add b
    ld c, $10
    db $10
    db $10
    inc de
    db $10
    rla
    db $10
    ld d, $75
    ld h, b
    dec bc
    ld c, $10
    db $10
    db $10
    ld c, $10
    db $10
    db $10
    ld a, [bc]
    sub b
    ld h, b
    ld [$0ff6], sp
    inc hl
    db $10
    ld [hl+], a
    db $10
    ld hl, $2010
    db $10
    ld h, b
    jr nz, jr_03c_4c85

    db $10
    rra
    db $10
    ld e, $10
    dec e
    db $10
    ld h, b
    jr nz, jr_03c_4c8c

    db $10
    inc e
    db $10
    dec de
    db $10
    ld a, [de]
    db $10
    ld h, b
    jr nz, jr_03c_4c93

    db $10
    add hl, de
    db $10
    jr jr_03c_4c8e

    rla
    db $10
    ld h, b
    ld [$0ef6], sp
    inc c

jr_03c_4c85:
    db $10
    cp $00
    ld c, h
    rst $38
    ld sp, hl
    nop

jr_03c_4c8c:
    ldh [$03], a

jr_03c_4c8e:
    ld a, [c]
    or $02
    sub $1f

jr_03c_4c93:
    inc e
    ld e, $1c
    rra
    inc e
    ld e, $1c
    rra
    ld a, [hl+]
    ld sp, hl
    nop
    jr jr_03c_4ca4

    ldh [rP1], a
    add hl, de
    dec b

jr_03c_4ca4:
    ld a, [de]
    dec b
    dec de
    rlca
    ld h, b
    dec bc
    jp nc, $071b

    ld h, b
    inc c
    pop de
    dec de
    rlca
    ld h, b
    inc c
    ld sp, hl
    nop
    ldh [$03], a
    sub $1f
    inc e
    ld e, $1c
    rra
    inc e
    ld e, $1c
    rra
    ld a, [hl+]
    ld sp, hl
    nop
    ldh [rP1], a
    ccf
    inc b
    ld a, $05
    inc a
    dec b
    add hl, sp
    rlca
    ld h, b
    dec bc
    jp nc, $0739

    ld h, b
    inc c
    pop de
    add hl, sp
    rlca
    ld h, b
    inc c
    ld sp, hl
    nop
    ldh [$03], a
    sub $1f
    inc e
    ld e, $1c
    rra
    inc e
    ld hl, $1f1c
    inc e
    ld hl, $1f1c
    inc e
    ld e, $1c
    rra
    inc e
    ld hl, $1f1c
    inc e
    ld hl, $1f1c
    ld a, [hl+]
    ld sp, hl
    nop
    ldh [rP1], a
    rra
    inc b
    jr nz, jr_03c_4d07

    ld hl, $2205
    rlca
    ld h, b

jr_03c_4d07:
    dec bc
    db $d3
    ld [hl+], a
    rlca
    ld h, b
    inc c
    jp nc, $0722

    ld h, b
    inc c
    ld sp, hl
    nop
    ldh [$03], a
    cp $91
    ld c, h
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    ld a, [c]
    or $02
    sub $16
    inc e
    jr jr_03c_4d42

    ld d, $1c
    jr jr_03c_4d46

    ld d, $2a
    ld h, b
    ld b, [hl]
    ld d, $1c
    jr jr_03c_4d4e

    ld d, $1c
    jr jr_03c_4d52

    ld d, $2a
    ld h, b
    ld b, [hl]
    ld d, $1c
    jr jr_03c_4d5a

    ld d, $1c
    jr jr_03c_4d5e

jr_03c_4d42:
    ld d, $1c
    jr jr_03c_4d62

jr_03c_4d46:
    ld d, $1c
    jr @+$1e

    ld d, $1c
    jr jr_03c_4d6a

jr_03c_4d4e:
    ld d, $1c
    jr jr_03c_4d6e

jr_03c_4d52:
    ld d, $2a
    ld h, b
    ld b, [hl]
    cp $21
    ld c, l
    rst $38

jr_03c_4d5a:
    ld a, [c]
    or $17
    daa

jr_03c_4d5e:
    rlca
    ld h, b
    dec d
    dec hl

jr_03c_4d62:
    dec d
    daa
    rlca
    ld l, $07
    ld h, b
    dec d
    dec l

jr_03c_4d6a:
    ld a, [hl+]
    ld h, b
    ld h, d
    daa

jr_03c_4d6e:
    rlca
    ld h, b
    dec d
    dec hl
    dec d
    daa
    rlca
    ld hl, $6007
    dec d
    ld [hl+], a
    jr c, jr_03c_4ddc

    ld d, h
    daa
    rlca
    ld h, b
    dec d
    dec hl
    dec d
    ld l, $07
    ld [hl-], a
    rlca
    ld h, b
    dec d
    ld a, [hl+]
    inc hl
    ld h, b
    rlca
    ld l, $1c
    dec l
    inc e
    dec hl
    ld c, $24
    ld c, $26
    ld c, $2a
    rlca
    ld h, b
    dec d
    ld l, $15
    dec hl
    rlca
    ld l, $07
    ld h, b
    dec d
    jr z, @+$2c

    ld h, b
    ld h, d
    cp $5b
    ld c, l
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    ret nc

    jr nz, @+$2a

    sub $26
    jr z, jr_03c_4de2

    jr z, jr_03c_4de3

    jr z, @+$29

    ld d, b
    ld h, $3c
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld h, $14
    ld sp, hl
    nop
    ldh [$03], a
    sub $25
    dec c
    jr nz, @+$0f

    rra
    ld c, $d4
    dec h
    dec c
    jr nz, @+$0f

    rra
    ld c, $d2
    dec h
    dec c

jr_03c_4ddc:
    jr nz, jr_03c_4deb

    rra
    ld c, $d1
    dec h

jr_03c_4de2:
    dec c

jr_03c_4de3:
    jr nz, jr_03c_4df2

    rra
    ld c, $d6
    ld sp, $2c0d

jr_03c_4deb:
    dec c
    dec hl
    ld c, $d4
    ld sp, $2c0d

jr_03c_4df2:
    dec c
    dec hl
    ld c, $d2
    ld sp, $2c0d
    dec c
    dec hl
    ld c, $d1
    ld sp, $2c0d
    dec c
    dec hl
    ld [hl], $f9
    pop af
    ldh [rP1], a
    sub $35
    jr z, jr_03c_4e44

    jr z, jr_03c_4e45

    jr z, jr_03c_4e46

    ld d, b
    ld [hl], $3c
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld [hl], $14
    ld sp, hl
    nop
    ldh [$03], a
    sub $36
    dec c
    jr nc, @+$0f

    cpl
    ld c, $d4
    ld [hl], $0d
    jr nc, @+$0f

    cpl
    ld c, $d2
    ld [hl], $0d
    jr nc, jr_03c_4e3d

    cpl
    ld c, $d1
    ld [hl], $0d
    jr nc, jr_03c_4e44

    cpl
    ld c, $d6
    ld b, d
    dec c
    inc a

jr_03c_4e3d:
    dec c
    dec sp
    ld c, $d4
    ld b, d
    dec c
    inc a

jr_03c_4e44:
    dec c

jr_03c_4e45:
    dec sp

jr_03c_4e46:
    ld c, $d2
    ld b, d
    dec c
    inc a
    dec c
    dec sp
    ld c, $d1
    ld b, d
    dec c
    inc a
    dec c
    dec sp
    ld c, $f9
    pop af
    ldh [rP1], a
    sub $26
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    inc l
    and b
    ld sp, hl

jr_03c_4e65:
    ld bc, $00e0
    db $d3
    inc l
    jr z, jr_03c_4e65

    pop af
    ldh [rP1], a
    sub $2c
    inc d
    dec hl
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    dec hl
    dec b
    sub $29
    ld a, [bc]

jr_03c_4e7c:
    ld h, b
    dec b
    db $d3
    add hl, hl
    dec b
    sub $26
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    ld h, $05
    sub $29
    inc d
    ld h, $0a
    ld h, b
    ld a, [bc]
    db $d3
    add hl, hl
    inc d
    ld h, $0a
    ld h, b
    ld a, [bc]
    jp nc, $1429

    ld h, $0a
    ld h, b
    ld a, [bc]
    pop de
    add hl, hl
    inc d
    ld h, $0a
    ld h, b
    ld a, [bc]
    ld sp, hl
    nop
    ldh [$03], a
    sub $32
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    db $d3
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    jp nc, $0a32

    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    pop de
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $26
    ld a, [bc]
    add hl, hl
    ld a, [bc]
    dec l
    ld a, [bc]
    inc l
    ld a, [bc]
    jr nc, jr_03c_4e7c

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nc, jr_03c_4f0b

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $33
    inc d
    cpl
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    cpl
    dec b
    sub $2b
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    dec hl
    dec b
    sub $27
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    daa
    dec b
    sub $26
    ld a, [bc]
    ld h, b
    ld a, [bc]
    call nc, $0a26
    ld h, b
    ld a, [bc]

jr_03c_4f0b:
    jp nc, $0a26

    ld h, b
    ld a, [bc]
    pop de
    ld h, $0a
    ld h, b
    ld e, d
    ld sp, hl
    nop
    ldh [$03], a
    sub $32
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    db $d3
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    jp nc, $0a32

    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    pop de
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    inc d
    ld sp, hl
    pop af
    ldh [rP1], a
    cp $b2
    ld c, l
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    ret nc

    jr nz, jr_03c_4f75

    sub $21
    jr z, jr_03c_4f75

    jr z, @+$25

    jr z, @+$24

    ld d, b
    jr nz, jr_03c_4f94

    ld sp, hl
    ld bc, $00e0
    call nc, $1420
    ld h, b
    rrca
    ld sp, hl
    nop
    ldh [$03], a
    dec h
    dec c
    jr nz, @+$0f

    rra
    ld b, $60
    ld [$25d3], sp
    dec c
    jr nz, @+$0f

    rra
    ld b, $60

jr_03c_4f75:
    ld [$25d2], sp
    dec c
    jr nz, @+$0f

    rra
    ld b, $60
    ld [$25d1], sp
    dec c
    jr nz, @+$0f

    rra
    ld b, $60
    ld [$31d4], sp
    dec c
    inc l
    dec c
    dec hl
    ld b, $60
    ld [$31d3], sp
    dec c

jr_03c_4f94:
    inc l
    dec c
    dec hl
    ld b, $60
    ld [$31d2], sp
    dec c
    inc l
    dec c
    dec hl
    ld b, $60
    ld [$31d1], sp
    dec c
    inc l
    dec c
    dec hl
    ld b, $60
    ld hl, $f1f9
    ldh [rP1], a
    rst $10
    jr nc, @+$2a

    inc [hl]
    jr z, jr_03c_4fe9

    jr z, @+$34

    ld d, b
    ld sp, $f93c
    ld bc, $00e0
    call nc, $1431
    ld h, b
    rrca
    ld sp, hl
    nop
    ldh [$03], a
    db $d3
    ld [hl], $0d
    jr nc, @+$0f

    cpl
    ld b, $60
    ld [$36d2], sp
    dec c
    jr nc, @+$0f

    cpl
    ld b, $60
    ld [$36d2], sp
    dec c
    jr nc, @+$0f

    cpl
    ld b, $60
    ld [$36d1], sp
    dec c
    jr nc, @+$0f

    cpl

jr_03c_4fe9:
    ld b, $60
    ld [$42d4], sp
    dec c
    inc a
    dec c
    dec sp
    ld b, $60
    ld [$42d3], sp
    dec c
    inc a
    dec c
    dec sp
    ld b, $60
    ld [$42d2], sp
    dec c
    inc a
    dec c
    dec sp
    ld b, $60
    ld [$42d1], sp
    dec c
    inc a
    inc c
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $21
    ld a, [bc]
    inc h
    ld a, [bc]
    ld h, $0a
    inc h
    ld a, [bc]
    daa
    and b
    ld sp, hl

jr_03c_501c:
    ld bc, $00e0
    db $d3
    daa
    jr z, jr_03c_501c

    pop af
    ldh [rP1], a
    sub $27
    inc d
    ld h, $0a
    ld h, b
    dec b
    db $d3
    ld h, $05
    sub $24
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    inc h
    dec b
    sub $21
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    ld hl, $6005
    xor a
    ld sp, hl
    nop
    ldh [$03], a
    call nc, $0a32
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    db $d3
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    jp nc, $0a32

    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    pop de
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    dec b
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $21
    ld a, [bc]
    inc h
    ld a, [bc]
    jr z, jr_03c_507d

    daa
    ld a, [bc]
    inc l
    and b
    ld sp, hl

jr_03c_5078:
    ld bc, $00e0
    db $d3
    inc l

jr_03c_507d:
    jr z, jr_03c_5078

    pop af
    ldh [rP1], a
    sub $2f
    inc d
    dec hl
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    dec hl
    dec b
    sub $27
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    daa
    dec b
    sub $21
    ld a, [bc]
    ld h, b
    dec b
    db $d3
    ld hl, $6005
    xor a
    ld sp, hl
    nop
    ldh [$03], a
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    db $d3
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    jp nc, $0a32

    ld a, $0a
    ld [hl-], a
    ld a, [bc]
    ld h, b
    ld a, [bc]
    pop de
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld [hl-], a
    dec b
    ld sp, hl
    pop af
    ldh [rP1], a
    cp $4a
    ld c, a
    rst $38
    ld a, [c]
    or $0e
    ld c, $0a
    ld h, b
    ld a, [bc]
    ld c, $0a
    ld h, b
    ld l, [hl]
    dec c
    dec b
    ld h, b
    dec b
    dec c
    dec b
    ld h, b
    dec b
    ld c, $0a
    ld h, b
    ld a, [bc]
    ld c, $0a
    ld h, b
    ld l, [hl]
    ld c, $0a
    ld h, b
    ld a, [bc]
    dec c
    dec bc
    ld h, b
    add hl, bc
    dec c
    dec c
    ld h, b
    ld l, e
    db $db
    dec c
    dec b
    ld h, b
    dec b
    dec c
    dec b
    ld h, b
    dec b
    db $db
    dec c
    dec c
    ld h, b
    rlca
    dec c
    dec c
    ld h, b
    ld l, e
    dec c
    ld a, [bc]
    ld h, b
    ld a, [bc]
    ld c, $0a
    ld h, b
    ld a, [bc]
    ld c, $0a
    ld h, b
    ld l, [hl]
    dec c
    dec b
    ld h, b
    dec b
    dec c
    dec b
    ld h, b
    dec b
    ld c, $0a
    ld h, b
    ld a, [bc]
    ld c, $0a
    ld h, b
    ld l, [hl]
    ld c, $0a
    ld h, b
    ld a, [bc]
    dec c
    dec bc
    ld h, b
    add hl, bc
    ld c, $0d
    ld h, b
    ld a, a
    ld c, $0d
    ld h, b
    rlca
    ld c, $0d
    ld h, b
    ld l, e
    inc c
    dec b
    ld h, b
    dec b
    inc c
    dec b
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    add hl, bc
    ld a, [bc]
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    add hl, bc
    ld a, [bc]
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    inc c
    ld a, [bc]
    dec c
    ld a, [bc]
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    add hl, bc
    ld a, [bc]
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    add hl, bc
    dec b
    or $0f
    add hl, bc
    dec b
    or $0e
    add hl, bc
    dec b
    or $0f
    add hl, bc
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    add hl, bc
    ld a, [bc]
    or $0f
    add hl, bc
    dec b
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec l
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    dec b
    or $0e
    ld c, $0a
    or $0f
    ld c, $05
    ld h, b
    add hl, de
    or $0e
    inc c
    ld a, [bc]
    dec c
    ld a, [bc]
    cp $cc
    ld d, b
    rst $38
    ld a, [c]
    call nc, $142a
    ld a, [hl+]
    jr z, jr_03c_532b

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_5333

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_533b

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_5343

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_534b

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_5353

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_535b

    ld d, b
    ld a, [hl+]
    inc d
    ld a, [hl+]
    inc d
    ld a, [hl+]
    jr z, jr_03c_5363

    ld h, h
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_532b:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_5333:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_533b:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_5343:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_534b:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_5353:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_535b:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]

jr_03c_5363:
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    cp $c5
    ld d, d
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $1e
    rlca
    ld h, b
    inc bc
    db $d3
    ld e, $04
    sub $1e
    inc bc
    db $d3
    ld e, $04
    sub $1e
    inc bc
    db $d3
    ld e, $04
    sub $25
    jr c, jr_03c_544b

    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    rlca
    ld h, b
    dec bc
    sub $21
    dec bc
    ld h, b
    ld b, $d3
    ld hl, $d604
    ld e, $07
    jr z, jr_03c_5474

    daa
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    dec bc
    sub $1e
    rlca
    ld h, b
    inc bc
    db $d3

jr_03c_544b:
    ld e, $04
    sub $1e
    inc bc
    ld h, b
    ld bc, $1ed3
    inc bc
    sub $1e
    inc bc
    ld h, b
    ld bc, $1ed3
    inc bc
    sub $25
    jr c, jr_03c_5485

    rlca
    ld h, b
    rlca
    db $d3
    inc h
    rlca
    ld h, b
    rlca
    sub $21
    dec bc
    ld h, b
    ld b, $d3
    ld hl, $d604
    ld e, $07

jr_03c_5474:
    inc e
    ld l, $1e
    dec b
    inc e
    dec b
    dec de
    rlca
    ld h, b
    inc bc
    db $d3
    dec de
    rlca
    ld h, b
    dec bc
    sub $25

jr_03c_5485:
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    inc b
    sub $25
    inc bc
    ld h, b
    ld bc, $25d3
    inc bc
    sub $25
    inc bc
    ld h, b
    ld bc, $25d3
    inc bc
    sub $2c
    jr c, jr_03c_54cc

    rlca
    ld h, b
    inc bc
    db $d3
    dec l
    rlca
    ld h, b
    dec bc
    sub $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $6007
    inc b
    sub $38
    rlca
    dec [hl]
    inc e
    dec l
    inc bc
    ld h, b
    ld bc, $2dd3
    inc bc
    sub $2d
    inc bc
    ld h, b
    ld bc, $2dd3
    inc bc
    sub $2d
    inc bc
    ld h, b
    ld bc, $2dd3

jr_03c_54cc:
    inc bc
    sub $2d
    inc bc
    ld h, b
    ld bc, $2dd3
    inc bc
    sub $27
    ld de, $27d3
    dec bc
    sub $21
    rlca
    ld h, b
    inc bc
    db $d3
    ld hl, $d604
    ld hl, $1e07
    rlca
    dec h
    jr c, @+$26

    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    rlca
    ld h, b
    dec bc
    sub $21
    rlca
    ld h, b
    inc bc
    db $d3
    ld hl, $6007
    inc b
    sub $2c
    rlca
    daa
    inc e
    ld hl, $6003
    ld bc, $21d3
    inc bc
    sub $21
    inc bc
    ld h, b
    ld bc, $21d3
    inc bc
    sub $21
    inc bc
    ld h, b
    ld bc, $21d3
    inc bc
    sub $21
    inc bc
    ld h, b
    ld bc, $21d3
    inc bc
    sub $1b
    ld c, $d3
    dec de
    ld c, $60
    inc e
    sub $24
    ld c, $d5
    inc hl
    rlca
    ld h, b
    inc bc
    jp nc, $0423

    sub $24
    ld c, $d5
    inc hl
    rlca
    ld h, b
    inc bc
    jp nc, $0723

    ld h, b
    dec [hl]
    sub $26
    ld c, $d5
    dec h
    rlca
    ld h, b
    inc bc
    jp nc, $0425

    sub $26
    ld c, $d5
    dec h
    rlca
    ld h, b
    inc bc
    jp nc, $0725

    ld h, b
    dec [hl]
    rst $10
    jr z, jr_03c_556a

    sub $27
    rlca
    ld h, b
    inc bc
    jp nc, $0427

    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3

jr_03c_556a:
    dec hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $29
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    push de
    jr z, jr_03c_5586

    ld h, b
    inc bc
    jp nc, $0428

    push de
    daa

jr_03c_5586:
    rlca
    ld h, b
    inc bc
    jp nc, $0427

    push de
    jr z, jr_03c_5596

    ld h, b
    inc bc
    jp nc, $0428

    push de
    add hl, hl

jr_03c_5596:
    rlca
    ld h, b
    inc bc
    jp nc, $0429

    push de
    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    jp nc, $042a

    push de
    dec hl
    rlca
    ld h, b
    inc bc
    jp nc, $042b

    sub $2c
    rlca
    ld h, b
    inc bc
    jp nc, $042c

    sub $2d
    rlca
    ld h, b
    inc bc
    db $d3
    dec l
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $30
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03c_55d8

    ld h, b
    inc e
    sub $2a

jr_03c_55d8:
    ld c, $d6
    add hl, hl
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $2d
    ld c, $d6
    inc l
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    rlca
    ld h, b
    dec bc
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $2a
    ld c, $d5
    add hl, hl
    rlca
    ld h, b
    inc bc
    jp nc, $0429

    sub $2d
    ld c, $d5
    inc l
    rlca
    ld h, b
    inc bc
    jp nc, $042c

    sub $2b
    ld c, $d6
    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    rlca
    ld h, b
    dec bc
    sub $2d
    rlca
    ld h, b
    inc bc
    db $d3
    dec l
    inc b
    sub $2d
    ld c, $d6
    inc l
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
    sub $32
    ld c, $d6
    ld sp, $6007
    inc bc
    db $d3
    ld sp, $d604
    jr nc, jr_03c_5641

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03c_5643

    sub $2f

jr_03c_5641:
    rlca
    ld h, b

jr_03c_5643:
    inc bc
    db $d3
    cpl
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    push de
    dec l
    rlca
    ld h, b
    inc bc
    jp nc, $042d

    push de
    inc l
    rlca
    ld h, b
    inc bc
    jp nc, $042c

    push de
    dec hl
    rlca
    ld h, b
    inc bc
    jp nc, $042b

    push de
    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    jp nc, $042a

    sub $29
    rlca
    ld h, b
    inc bc
    jp nc, $0429

    sub $28
    rlca
    ld h, b
    inc bc
    db $d3
    jr z, @+$06

    ld h, b
    ld c, $d6
    ld e, $07
    ld h, b
    inc bc
    db $d3
    ld e, $04
    sub $1e
    inc bc
    ld h, b
    ld bc, $1ed3
    inc bc
    sub $1e
    inc bc
    ld h, b
    ld bc, $1ed3
    inc bc
    cp $23
    ld d, h
    rst $38
    ret nc

    jr nz, jr_03c_56bc

    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    ld h, b
    inc e
    sub $1e
    ld de, $0460
    ld e, $03
    ld h, b
    inc b
    dec e
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1d
    rlca

jr_03c_56bc:
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    ld h, b
    ld a, [hl+]
    sub $1c
    rlca
    ld h, b
    rlca
    inc e
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1d
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1d
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    ld h, b
    jr c, @-$28

    ld e, $11
    ld h, b
    inc b
    ld e, $03
    ld h, b
    inc b
    dec e
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1d
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    ld h, b
    ld a, [hl+]
    sub $1c
    rlca
    ld h, b
    inc bc
    db $d3
    inc e
    inc b
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1c
    inc bc
    ld h, b
    ld bc, $1cd3
    inc bc
    sub $1d
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1d
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    ld h, b
    jr c, @-$28

    add hl, de
    ld de, $0460
    add hl, de
    inc bc
    ld h, b
    inc b
    jr jr_03c_575f

    ld h, b
    inc bc
    db $d3
    jr jr_03c_5761

    sub $18

jr_03c_575f:
    rlca
    ld h, b

jr_03c_5761:
    inc bc
    db $d3
    jr jr_03c_5769

    ld h, b
    ld a, [hl+]
    sub $17

jr_03c_5769:
    rlca
    ld h, b
    inc bc
    db $d3
    rla
    inc b
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $18
    rlca
    ld h, b
    inc bc
    db $d3
    jr jr_03c_579b

    sub $18
    rlca
    ld h, b

jr_03c_579b:
    inc bc
    db $d3
    jr jr_03c_57a3

    ld h, b
    jr c, @-$28

    add hl, de

jr_03c_57a3:
    ld de, $0460
    add hl, de
    inc bc
    ld h, b
    inc b
    jr jr_03c_57b3

    ld h, b
    inc bc
    db $d3
    jr jr_03c_57b5

    sub $18

jr_03c_57b3:
    rlca
    ld h, b

jr_03c_57b5:
    inc bc
    db $d3
    jr jr_03c_57bd

    ld h, b
    ld a, [hl+]
    sub $17

jr_03c_57bd:
    rlca
    ld h, b
    inc bc
    db $d3
    rla
    inc b
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $17
    inc bc
    ld h, b
    ld bc, $17d3
    inc bc
    sub $18
    rlca
    ld h, b
    inc bc
    db $d3
    jr jr_03c_57ef

    sub $18
    rlca
    ld h, b

jr_03c_57ef:
    inc bc
    db $d3
    jr jr_03c_57f7

    ld h, b
    inc e
    sub $21

jr_03c_57f7:
    ld c, $d6
    jr nz, jr_03c_5802

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03c_5804

    sub $21

jr_03c_5802:
    ld c, $d6

jr_03c_5804:
    jr nz, jr_03c_580d

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03c_5812

    ld h, b
    dec [hl]

jr_03c_580d:
    sub $23
    ld c, $d5
    ld [hl+], a

jr_03c_5812:
    rlca
    ld h, b
    inc bc
    jp nc, $0422

    sub $23
    ld c, $d5
    ld [hl+], a
    rlca
    ld h, b
    inc bc
    jp nc, $0722

    ld h, b
    dec [hl]
    sub $24
    ld c, $d6
    inc hl
    rlca
    ld h, b
    inc bc
    jp nc, $0423

    sub $28
    rlca
    ld h, b
    inc bc
    db $d3
    jr z, jr_03c_583c

    sub $27
    rlca
    ld h, b

jr_03c_583c:
    inc bc
    db $d3
    daa
    inc b
    push de
    ld h, $07
    ld h, b
    inc bc
    jp nc, $0426

    push de
    dec h
    rlca
    ld h, b
    inc bc
    jp nc, $0425

    push de
    inc h
    rlca
    ld h, b
    inc bc
    jp nc, $0424

    push de
    dec h
    rlca
    ld h, b
    inc bc
    jp nc, $0425

    push de
    ld h, $07
    ld h, b
    inc bc
    jp nc, $0426

    push de
    daa
    rlca
    ld h, b
    inc bc
    jp nc, $0427

    sub $28
    rlca
    ld h, b
    inc bc
    jp nc, $0428

    sub $29
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2c
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
    rst $10
    dec l
    rlca
    ld h, b
    inc bc
    db $d3
    dec l
    inc b
    ld h, b
    inc e
    sub $26
    ld c, $d5
    dec h
    rlca
    ld h, b
    inc bc
    jp nc, $0425

    sub $2a
    ld c, $d5
    add hl, hl
    rlca
    ld h, b
    inc bc
    jp nc, $0729

    ld h, b
    dec bc
    sub $26
    rlca
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $26
    ld c, $d5
    dec h
    rlca
    ld h, b
    inc bc
    jp nc, $0425

    sub $2a
    ld c, $d5
    add hl, hl
    rlca
    ld h, b
    inc bc
    jp nc, $0429

    sub $28
    ld c, $d6
    daa
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    dec [hl]
    sub $29
    ld c, $d6
    jr z, jr_03c_58f2

    ld h, b
    inc bc
    db $d3
    jr z, jr_03c_58f4

    sub $27

jr_03c_58f2:
    rlca
    ld h, b

jr_03c_58f4:
    inc bc
    db $d3
    daa
    inc b
    sub $26
    rlca
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $25
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    inc b
    sub $24
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    sub $23
    rlca
    ld h, b
    inc bc
    db $d3
    inc hl
    inc b
    sub $22
    rlca
    ld h, b
    inc bc
    jp nc, $0422

    push de
    ld hl, $6007
    inc bc
    jp nc, $0421

    sub $20
    rlca
    ld h, b
    inc bc
    db $d3
    jr nz, jr_03c_5934

    sub $1f
    rlca
    ld h, b

jr_03c_5934:
    inc bc
    db $d3
    rra
    inc b
    ld h, b
    ld a, [hl+]
    cp $a7
    ld d, [hl]
    rst $38
    ld h, b
    inc e
    ld a, [c]
    or $0e
    ld [de], a
    ld c, $f6
    inc c
    ld [de], a
    ld c, $f6
    ld c, $12
    ld c, $f6
    inc c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    dec bc
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    rlca
    ld h, b
    jr nz, @-$08

    ld c, $12
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    ld h, b
    inc e
    or $0e
    ld [de], a
    ld c, $f6
    inc c
    ld [de], a
    ld c, $f6
    ld c, $12
    ld c, $f6
    inc c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    dec bc
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    rlca
    ld h, b
    jr nz, @-$08

    ld c, $12
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    ld h, b
    inc e
    or $0e
    ld [de], a
    ld c, $f6
    inc c
    ld [de], a
    ld c, $f6
    ld c, $12
    ld c, $f6
    inc c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    dec bc
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    rlca
    ld h, b
    jr nz, @-$08

    ld c, $12
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    ld h, b
    inc e
    or $0e
    ld [de], a
    ld c, $f6
    inc c
    ld [de], a
    ld c, $f6
    ld c, $12
    ld c, $f6
    inc c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    dec bc
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    rlca
    ld h, b
    jr nz, @-$08

    ld c, $12
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    ld h, b
    ld h, d
    or $0e
    ld [de], a
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    rlca
    ld h, b
    ld l, $f6
    ld c, $12
    rlca
    or $0c
    ld [de], a
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    rlca
    or $0c
    ld [de], a
    rlca
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc bc
    or $0c
    ld [de], a
    rlca
    ld h, b
    jr nz, @-$08

    ld c, $1c
    rlca
    or $0c
    inc e
    rlca
    or $0e
    dec de
    rlca
    or $0c
    dec de
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0c
    ld a, [de]
    rlca
    or $0e
    add hl, de
    rlca
    or $0c
    add hl, de
    rlca
    or $0e
    jr jr_03c_5b6a

    or $0c
    jr jr_03c_5b6e

    or $0e
    add hl, de

jr_03c_5b6a:
    rlca
    or $0c
    add hl, de

jr_03c_5b6e:
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0c
    ld a, [de]
    rlca
    or $0e
    dec de
    rlca
    or $0c
    dec de
    rlca
    or $0e
    inc e
    rlca
    or $0c
    inc e
    rlca
    or $0e
    dec e
    rlca
    or $0c
    dec e
    rlca
    or $0e
    ld e, $07
    or $0c
    ld e, $07
    or $0e
    rra
    rlca
    or $0c
    rra
    rlca
    or $0e
    jr nz, @+$09

    or $0c
    jr nz, @+$09

    or $0e
    ld hl, $f607
    inc c
    ld hl, $f607
    ld c, $0b
    inc bc
    or $0c
    dec bc
    inc b
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    inc b
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    rlca
    ld h, b
    inc a
    or $0e
    rla
    inc bc
    or $0c
    rla
    dec bc
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    dec bc
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    inc b
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    inc b
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    inc b
    ld h, b
    ld sp, $0ef6
    rla
    inc bc
    or $0c
    rla
    rlca
    ld h, b
    ld [de], a
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    dec bc
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    inc b
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    inc b
    or $0e
    dec bc
    inc bc
    or $0c
    dec bc
    dec bc
    ld h, b
    ld h, d
    or $0e
    dec c
    rlca
    or $0c
    dec c
    dec d
    or $0e
    dec c
    rlca
    or $0c
    dec c
    rlca
    or $0e
    dec c
    inc bc
    or $0c
    dec c
    inc b
    or $0e
    dec c
    inc bc
    or $0c
    dec c
    inc b
    or $0e
    dec c
    inc bc
    or $0c
    dec c
    inc b
    or $0e
    dec c
    inc bc
    or $0c
    dec c
    rlca
    ld h, b
    add hl, de
    cp $41
    ld e, c
    rst $38
    ld h, b
    inc e
    ld a, [c]
    push de
    ld h, $1c
    call nc, $0e24
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    push de
    ld h, $07
    push de
    ld h, $0e
    call nc, $1c24
    inc h
    ld c, $26
    ld c, $d2
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $1c26
    inc h
    ld c, $d5
    ld h, $1c
    call nc, $0e24
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    push de
    ld h, $07
    push de
    ld h, $0e
    call nc, $1c24
    inc h
    ld c, $26
    ld c, $d2
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $1c26
    inc h
    ld c, $d5
    ld h, $1c
    call nc, $0e24
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    push de
    ld h, $07
    push de
    ld h, $0e
    call nc, $1c24
    inc h
    ld c, $26
    ld c, $d2
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $1c26
    inc h
    ld c, $24
    ld c, $26
    ld c, $d2
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $1c26
    inc h
    ld c, $24
    ld c, $26
    ld c, $d2
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $2a26
    ld h, b
    ld b, [hl]
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    ld h, b
    ld a, [hl+]
    call nc, $1c26
    ld h, $0e
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $0726
    ld h, b
    inc e
    call nc, $0e2a
    ld a, [hl+]
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $26
    ld a, [hl+]
    ld h, $1c
    ld h, $0e
    call nc, $0726
    call nc, $0726
    ld h, $0e
    call nc, $0726
    call nc, $0726
    call nc, $1c26
    call nc, $1c26
    ld h, $0e
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0e26
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0e26
    jp nc, $0e2a

    ld a, [hl+]
    ld c, $2a
    ld c, $d2
    ld a, [hl+]
    ld c, $2a
    ld c, $2a
    ld c, $2a
    ld c, $d4
    ld h, $0e
    jp nc, $0e2a

    call nc, $0e26
    ld h, $07
    ld h, $07
    ld h, $07
    ld h, $23
    cp $58
    ld e, h
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    rst $10
    jr z, jr_03c_5de8

    cpl
    inc h
    jr z, jr_03c_5dec

    daa
    inc h
    ld l, $0d
    ld h, b
    ld bc, $2ed3
    dec b
    ld h, b
    ld bc, $2ed2
    inc b
    ld h, b
    inc bc
    pop de
    ld l, $04
    ld h, b
    add hl, hl
    rst $10
    rla
    inc bc
    ld h, $03
    dec [hl]
    inc bc
    ld h, b
    inc b
    db $d3
    rla

jr_03c_5de8:
    inc bc
    ld h, $03
    dec [hl]

jr_03c_5dec:
    inc bc
    ld h, b
    dec b
    pop de
    rla
    inc bc
    ld h, $03
    dec [hl]
    inc bc
    rst $10
    inc d
    inc bc
    inc hl
    inc bc
    ld [hl-], a
    inc bc
    ld h, b
    inc b
    db $d3
    inc d
    inc bc
    inc hl
    inc bc
    ld [hl-], a
    inc bc
    ld h, b
    dec b
    pop de
    inc d
    inc bc
    inc hl
    inc bc
    ld [hl-], a
    inc bc
    ld h, b
    ld c, b
    rst $10
    jr z, jr_03c_5e38

    cpl
    inc h
    inc [hl]
    inc h
    inc sp
    inc h
    ld a, [hl-]
    ld b, $60
    inc bc
    db $d3
    ld a, [hl-]
    inc bc
    ld h, b
    ld b, $d2
    ld a, [hl-]
    inc bc
    ld h, b
    inc bc
    pop de
    ld a, [hl-]
    inc bc
    ld h, b
    inc bc
    pop de
    ld a, [hl-]
    inc bc
    ld h, b
    ld c, e
    rst $10
    rla
    inc bc
    ld h, $03
    dec [hl]

jr_03c_5e38:
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, $03
    dec [hl]
    inc bc
    ld h, b
    dec b
    pop de
    rla
    inc bc
    ld h, $03
    dec [hl]
    inc bc
    rst $10
    inc d
    inc bc
    inc hl
    inc bc
    ld [hl-], a
    inc bc
    ld h, b
    inc b
    db $d3
    inc d
    inc bc
    inc hl
    inc bc
    ld [hl-], a
    inc bc
    ld h, b
    dec b
    pop de
    inc d
    inc bc
    inc hl
    inc bc
    ld [hl-], a
    inc bc
    ld h, b
    inc h
    rst $10
    ld [$1703], sp
    inc bc
    ld h, $03
    ld h, b
    inc b
    db $d3
    ld [$1703], sp
    inc bc
    ld h, $03
    ld h, b
    dec b
    pop de
    ld [$1703], sp
    inc bc
    ld h, $03
    rst $10
    dec b
    inc bc
    inc d
    inc bc
    inc hl
    inc bc
    ld h, b
    inc b
    db $d3
    dec b
    inc bc
    inc d
    inc bc
    inc hl
    inc bc
    ld h, b
    dec b
    pop de
    dec b
    inc bc
    inc d
    inc bc
    inc hl
    inc bc
    ld h, b
    inc h
    rst $10
    ld d, $03
    dec h
    inc bc
    inc [hl]
    inc bc
    ld h, b
    inc b
    db $d3
    ld d, $03
    dec h
    inc bc
    inc [hl]
    inc bc
    ld h, b
    dec b
    pop de
    ld d, $03
    dec h
    inc bc
    inc [hl]
    inc bc
    rst $10
    inc de
    inc bc
    ld [hl+], a
    inc bc
    ld sp, $6003
    inc b
    db $d3
    inc de
    inc bc
    ld [hl+], a
    inc bc
    ld sp, $6003
    dec b
    pop de
    inc de
    inc bc
    ld [hl+], a
    inc bc
    ld sp, $6003
    inc h
    rst $10
    dec b
    inc bc
    inc d
    inc bc
    inc hl
    inc bc
    ld h, b
    inc b
    db $d3
    dec b
    inc bc
    inc d
    inc bc
    inc hl
    inc bc
    ld h, b
    dec b
    pop de
    dec b
    inc bc
    inc d
    inc bc
    inc hl
    inc bc
    rst $10
    ld [bc], a
    inc bc
    ld de, $2003
    inc bc
    ld h, b
    inc b
    db $d3
    ld [bc], a
    inc bc
    ld de, $2003
    inc bc
    ld h, b
    dec b
    pop de
    ld [bc], a
    inc bc
    ld de, $2003
    inc bc
    ld h, b
    ld c, b
    call nc, $0c21
    dec de
    inc c
    ld a, [de]
    inc c
    dec de
    inc c
    ld hl, $d40c
    dec de
    inc c
    ld a, [de]
    inc c
    dec de
    inc c
    ld a, [de]
    inc c
    dec de
    inc c
    jp nc, $0c1b

    pop de
    dec de
    inc c
    push de
    inc l
    inc c
    jp nc, $0c2d

    ld h, b
    inc bc
    pop de
    dec l
    inc c
    ld h, b
    ld hl, $23d5
    inc c
    dec e
    inc c
    inc e
    inc c
    dec e
    inc c
    inc hl
    inc c
    dec e
    inc c
    inc e
    inc c
    dec e
    inc c
    inc e
    inc c
    dec e
    inc c
    ld h, b
    jr jr_03c_5f71

    inc c
    db $d3
    cpl
    inc c
    ld h, b
    inc bc
    pop de
    cpl
    inc c
    ld h, b
    ld hl, $24d4
    inc c
    call nc, $0c1e
    push de
    dec e
    inc c
    push de
    ld e, $0c
    ld h, b
    ld b, $d2
    ld e, $0c
    ld h, b
    ld b, $d5
    dec h
    inc c
    push de
    rra
    inc c
    push de
    ld e, $0c
    push de
    rra
    inc c
    ld h, b
    ld b, $d2
    rra

jr_03c_5f71:
    inc c
    ld h, b
    ld b, $d5
    ld h, $0c
    sub $20
    inc c
    sub $21
    inc c
    sub $27
    inc c
    rst $10
    ld hl, $d70c
    ld [hl+], a
    inc c
    rst $10
    ld a, [hl+]
    inc b
    push de
    dec l
    dec b
    ld h, b
    add hl, bc
    sub $29
    inc b
    push de
    inc l
    dec b
    ld h, b
    add hl, bc
    sub $28
    inc b
    call nc, $052b
    ld h, b
    add hl, bc
    sub $27
    inc b
    call nc, $052a
    ld h, b
    add hl, bc
    sub $26
    inc b
    call nc, $0529
    ld h, b
    add hl, bc
    sub $25
    inc b
    call nc, $0528
    ld h, b
    add hl, bc
    sub $24
    inc b
    call nc, $0527
    ld h, b
    add hl, bc
    push de
    inc hl
    inc b
    call nc, $0526
    ld h, b
    rrca
    push de
    ld [hl+], a
    inc b
    call nc, $0425
    ld h, b
    rlca
    db $d3
    dec h
    inc bc
    ld h, b
    ld [hl], $d6
    ld hl, $6006
    inc bc
    jp nc, $0624

    ld h, b
    inc bc
    pop de
    inc h
    ld b, $60
    ld l, $d5
    jr nz, jr_03c_5fee

    ld h, b
    ld bc, $23d2
    rlca
    ld h, b
    inc bc
    pop de
    inc hl

jr_03c_5fee:
    ld b, $60
    ld c, [hl]
    cp $c1
    ld e, l
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    rst $10
    jr nz, jr_03c_6023

    inc hl
    inc h
    jr nz, jr_03c_6027

    rra
    inc h
    ld [hl+], a
    inc c
    ld h, b
    inc bc
    jp nc, $0322

    ld h, b
    inc bc
    jp nc, $0322

    ld h, b
    inc bc
    pop de
    ld [hl+], a
    inc bc
    ld h, b
    ld a, [hl+]
    call nc, $092f
    ld h, b
    inc bc
    pop de
    cpl
    inc bc
    ld h, b
    inc bc
    pop de

jr_03c_6023:
    cpl
    inc bc
    ld h, b
    inc bc

jr_03c_6027:
    pop de
    cpl
    inc bc
    ld h, b
    add hl, bc
    push de
    inc l
    inc b
    ld h, b
    ld bc, $2cd2
    inc b
    ld h, b
    ld b, $d1
    inc l
    inc bc
    ld h, b
    ld b, $d1
    inc l
    inc bc
    ld h, b
    ld d, c
    rst $10
    jr nz, jr_03c_6067

    inc hl
    inc h
    jr nz, jr_03c_606b

    rra
    inc h
    sub $22
    ld b, $60
    inc bc
    jp nc, $0322

    ld h, b
    inc bc
    jp nc, $0322

    ld h, b
    inc bc
    pop de
    ld [hl+], a
    inc bc
    ld h, b
    inc bc
    pop de
    ld [hl+], a
    inc bc
    ld h, b
    ld c, [hl]
    call nc, $092f
    ld h, b
    inc bc

jr_03c_6067:
    db $d3
    cpl
    inc bc
    ld h, b

jr_03c_606b:
    inc bc
    pop de
    cpl
    inc bc
    ld h, b
    rrca
    call nc, $092c
    ld h, b
    inc bc
    db $d3
    inc l
    inc bc
    ld h, b
    inc bc
    pop de
    inc l
    inc bc
    ld h, b
    inc sp
    jp nc, $091d

    ld h, b
    inc bc
    call nc, $031d
    ld h, b
    inc bc
    pop de
    dec e
    inc bc
    ld h, b
    rrca
    db $d3
    ld a, [de]
    add hl, bc
    ld h, b
    inc bc
    call nc, $031a
    ld h, b
    inc bc
    pop de
    ld a, [de]
    inc bc
    ld h, b
    inc sp
    push de
    ld l, $06
    ld h, b
    inc bc
    db $d3
    ld l, $03
    ld h, b
    ld b, $d1
    ld l, $03
    ld h, b
    rrca
    db $d3
    dec hl
    ld b, $60
    inc bc
    push de
    dec hl
    inc bc
    ld h, b
    ld b, $d1
    dec hl
    inc bc
    ld h, b
    inc sp
    db $d3
    ld a, [de]
    add hl, bc
    ld h, b
    inc bc
    push de
    ld a, [de]
    inc bc
    ld h, b
    inc bc
    jp nc, $031a

    ld h, b
    rrca
    db $d3
    rla
    add hl, bc
    ld h, b
    inc bc
    call nc, $0317
    ld h, b
    inc bc
    jp nc, $0317

    ld h, b
    ld d, a
    push de
    ld c, $75
    ld h, b
    ld h, e
    sub $0f
    ld [hl], l
    ld h, b
    ld h, e
    push de
    rrca
    ld c, b
    sub $10
    ld c, b
    sub $11
    inc h
    sub $12
    inc h
    ld hl, $6004
    ld c, $d6
    jr nz, jr_03c_60fb

    ld h, b
    ld c, $d6
    rra

jr_03c_60fb:
    inc b
    ld h, b
    ld c, $d6
    ld e, $04
    ld h, b
    ld c, $d6
    dec e
    inc b
    ld h, b
    ld c, $d5
    inc e
    inc b
    ld h, b
    ld c, $d5
    dec de
    inc b
    ld h, b
    ld c, $d5
    ld a, [de]
    inc b
    ld h, b
    inc d
    call nc, $0619
    ld h, b
    ld b, d
    call nc, $0418
    ld h, b
    ld b, d
    db $d3
    rla
    dec b
    ld h, b
    ld h, e
    cp $fc
    ld e, a
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $21
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld hl, $d605
    ld hl, $2409
    add hl, bc
    ld hl, $2409
    add hl, bc
    dec hl
    add hl, bc
    ld a, [hl+]
    ccf
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, [hl+]
    ld [de], a
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $21
    add hl, bc
    inc h
    add hl, bc
    dec hl
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec hl
    inc b
    ld a, [hl+]
    dec b
    jr z, jr_03c_6169

    ld h, $09
    jr z, @+$41

    ld sp, hl
    ld bc, $00e0
    db $d3

jr_03c_6169:
    jr z, @+$14

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $21
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld hl, $d605
    ld hl, $2409
    add hl, bc
    ld hl, $2409
    add hl, bc
    jr z, jr_03c_618b

    dec hl
    ld [de], a
    db $d3
    dec hl
    add hl, bc
    sub $2a
    add hl, bc
    dec hl

jr_03c_618b:
    ld [de], a
    db $d3
    dec hl
    add hl, bc
    sub $2a
    add hl, bc
    dec hl
    ld [de], a
    db $d3
    dec hl
    add hl, bc
    sub $2a
    add hl, bc
    dec hl
    add hl, bc
    ld a, [hl+]
    inc bc
    dec hl
    inc bc
    ld a, [hl+]
    inc bc
    jr z, jr_03c_61ad

    ld h, $09
    jr z, jr_03c_61f0

    ld sp, hl
    ld bc, $00e0
    pop de

jr_03c_61ad:
    jr z, jr_03c_61b8

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $24
    add hl, bc
    ld h, b
    inc b

jr_03c_61b8:
    db $d3
    inc h
    dec b
    sub $24
    add hl, bc
    jr z, jr_03c_61c9

    inc h
    add hl, bc
    jr z, jr_03c_61cd

    cpl
    add hl, bc
    inc l
    ccf
    ld sp, hl

jr_03c_61c9:
    ld bc, $00e0
    db $d3

jr_03c_61cd:
    inc l
    ld [de], a
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $24
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc h
    dec b
    sub $24
    add hl, bc
    jr z, jr_03c_61e9

    inc h
    add hl, bc
    jr z, jr_03c_61ed

    inc l
    add hl, bc
    dec hl
    ccf
    ld sp, hl

jr_03c_61e9:
    ld bc, $00e0
    db $d3

jr_03c_61ed:
    dec hl
    ld [de], a
    ld sp, hl

jr_03c_61f0:
    pop af
    ldh [rP1], a
    sub $24
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc h
    dec b
    sub $24
    add hl, bc
    jr z, jr_03c_6209

    inc h
    add hl, bc
    jr z, jr_03c_620d

    dec l
    add hl, bc
    ld a, [hl+]
    ccf
    ld sp, hl

jr_03c_6209:
    ld bc, $00e0
    db $d3

jr_03c_620d:
    ld a, [hl+]
    ld [de], a
    ld h, b
    ld [de], a
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $28
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec hl
    inc b
    ld a, [hl+]
    dec b
    jr z, jr_03c_6229

    ld h, $09
    jr z, jr_03c_6263

    ld sp, hl
    ld bc, $00e0
    db $d3

jr_03c_6229:
    jr z, @+$14

    ld h, b
    ccf
    ld sp, hl
    nop
    ldh [rDIV], a
    push de
    dec l
    inc b
    jr nc, jr_03c_623b

    dec l
    inc b
    jr nc, jr_03c_623f

    dec l

jr_03c_623b:
    inc b
    jr nc, jr_03c_6243

    dec l

jr_03c_623f:
    inc b
    jr nc, jr_03c_6247

    dec l

jr_03c_6243:
    inc b
    jr nc, jr_03c_624b

    dec l

jr_03c_6247:
    inc b
    jr nc, jr_03c_624f

    dec l

jr_03c_624b:
    inc b
    jr nc, jr_03c_6253

    dec l

jr_03c_624f:
    inc b
    jr nc, jr_03c_6257

    dec l

jr_03c_6253:
    inc b
    jr nc, jr_03c_625b

    dec l

jr_03c_6257:
    inc b
    jr nc, jr_03c_625f

    dec l

jr_03c_625b:
    inc b
    jr nc, jr_03c_6263

    dec l

jr_03c_625f:
    inc b
    jr nc, jr_03c_6267

    dec l

jr_03c_6263:
    inc b
    jr nc, jr_03c_626b

    dec l

jr_03c_6267:
    inc b
    jr nc, jr_03c_626f

    dec l

jr_03c_626b:
    inc b
    jr nc, jr_03c_6273

    dec l

jr_03c_626f:
    inc b
    jr nc, jr_03c_6277

    inc l

jr_03c_6273:
    inc b
    jr nc, jr_03c_627b

    inc l

jr_03c_6277:
    inc b
    jr nc, jr_03c_627f

    inc l

jr_03c_627b:
    inc b
    jr nc, jr_03c_6283

    inc l

jr_03c_627f:
    inc b
    jr nc, jr_03c_6287

    inc l

jr_03c_6283:
    inc b
    jr nc, jr_03c_628b

    inc l

jr_03c_6287:
    inc b
    jr nc, jr_03c_628f

    inc l

jr_03c_628b:
    inc b
    jr nc, jr_03c_6293

    inc l

jr_03c_628f:
    inc b
    jr nc, jr_03c_6297

    inc l

jr_03c_6293:
    inc b
    push de
    jr nc, jr_03c_629c

jr_03c_6297:
    inc l
    inc b
    jr nc, jr_03c_62a0

    inc l

jr_03c_629c:
    inc b
    jr nc, jr_03c_62a4

    inc l

jr_03c_62a0:
    inc b
    jr nc, jr_03c_62a8

    inc l

jr_03c_62a4:
    inc b
    jr nc, jr_03c_62ac

    inc l

jr_03c_62a8:
    inc b
    jr nc, jr_03c_62b0

    inc l

jr_03c_62ac:
    inc b
    jr nc, jr_03c_62b4

    inc l

jr_03c_62b0:
    inc b
    jr nc, jr_03c_62b8

    dec hl

jr_03c_62b4:
    inc b
    jr nc, jr_03c_62bc

    dec hl

jr_03c_62b8:
    inc b
    jr nc, jr_03c_62c0

    dec hl

jr_03c_62bc:
    inc b
    jr nc, jr_03c_62c4

    dec hl

jr_03c_62c0:
    inc b
    jr nc, jr_03c_62c8

    dec hl

jr_03c_62c4:
    inc b
    jr nc, jr_03c_62cc

    dec hl

jr_03c_62c8:
    inc b
    jr nc, jr_03c_62d0

    dec hl

jr_03c_62cc:
    inc b
    jr nc, jr_03c_62d4

    dec hl

jr_03c_62d0:
    inc b
    jr nc, jr_03c_62d8

    dec hl

jr_03c_62d4:
    inc b
    jr nc, jr_03c_62dc

    dec hl

jr_03c_62d8:
    inc b
    jr nc, jr_03c_62e0

    dec hl

jr_03c_62dc:
    inc b
    jr nc, jr_03c_62e4

    dec hl

jr_03c_62e0:
    inc b
    jr nc, jr_03c_62e8

    dec hl

jr_03c_62e4:
    inc b
    jr nc, jr_03c_62ec

    dec hl

jr_03c_62e8:
    inc b
    jr nc, jr_03c_62f0

    dec hl

jr_03c_62ec:
    inc b
    jr nc, jr_03c_62f4

    dec hl

jr_03c_62f0:
    inc b
    jr nc, jr_03c_62f8

    push de

jr_03c_62f4:
    inc l
    inc b
    jr nc, jr_03c_62fd

jr_03c_62f8:
    inc l
    inc b
    jr nc, jr_03c_6301

    inc l

jr_03c_62fd:
    inc b
    jr nc, jr_03c_6305

    inc l

jr_03c_6301:
    inc b
    jr nc, jr_03c_6309

    inc l

jr_03c_6305:
    inc b
    jr nc, jr_03c_630d

    inc l

jr_03c_6309:
    inc b
    jr nc, jr_03c_6311

    inc l

jr_03c_630d:
    inc b
    jr nc, jr_03c_6315

    inc l

jr_03c_6311:
    inc b
    jr nc, jr_03c_6319

    inc l

jr_03c_6315:
    inc b
    push de
    jr nc, jr_03c_631e

jr_03c_6319:
    inc l
    inc b
    jr nc, jr_03c_6322

    inc l

jr_03c_631e:
    inc b
    jr nc, jr_03c_6326

    inc l

jr_03c_6322:
    inc b
    jr nc, jr_03c_632a

    inc l

jr_03c_6326:
    inc b
    jr nc, jr_03c_632e

    inc l

jr_03c_632a:
    inc b
    jr nc, jr_03c_6332

    inc l

jr_03c_632e:
    inc b
    jr nc, jr_03c_6336

    inc l

jr_03c_6332:
    inc b
    jr nc, @+$07

    push de

jr_03c_6336:
    dec l
    inc b
    call nc, $0530
    dec l
    inc b
    jr nc, jr_03c_6344

    dec l
    inc b
    jr nc, jr_03c_6348

    dec l

jr_03c_6344:
    inc b
    jr nc, jr_03c_634c

    dec l

jr_03c_6348:
    inc b
    jr nc, jr_03c_6350

    dec l

jr_03c_634c:
    inc b
    jr nc, jr_03c_6354

    dec l

jr_03c_6350:
    inc b
    jr nc, jr_03c_6358

    dec l

jr_03c_6354:
    inc b
    jr nc, jr_03c_635c

    dec l

jr_03c_6358:
    inc b
    jr nc, jr_03c_6360

    dec l

jr_03c_635c:
    inc b
    jr nc, jr_03c_6364

    dec l

jr_03c_6360:
    inc b
    jr nc, jr_03c_6368

    dec l

jr_03c_6364:
    inc b
    jr nc, jr_03c_636c

    dec l

jr_03c_6368:
    inc b
    jr nc, jr_03c_6370

    dec l

jr_03c_636c:
    inc b
    jr nc, jr_03c_6374

    dec l

jr_03c_6370:
    inc b
    jr nc, jr_03c_6378

    dec l

jr_03c_6374:
    inc b
    jr nc, jr_03c_637c

    inc l

jr_03c_6378:
    inc b
    jr nc, jr_03c_6380

    inc l

jr_03c_637c:
    inc b
    jr nc, jr_03c_6384

    inc l

jr_03c_6380:
    inc b
    jr nc, jr_03c_6388

    inc l

jr_03c_6384:
    inc b
    jr nc, jr_03c_638c

    inc l

jr_03c_6388:
    inc b
    jr nc, jr_03c_6390

    inc l

jr_03c_638c:
    inc b
    jr nc, jr_03c_6394

    inc l

jr_03c_6390:
    inc b
    jr nc, jr_03c_6398

    inc l

jr_03c_6394:
    inc b
    jr nc, jr_03c_639c

    inc l

jr_03c_6398:
    inc b
    jr nc, jr_03c_63a0

    inc l

jr_03c_639c:
    inc b
    jr nc, jr_03c_63a4

    inc l

jr_03c_63a0:
    inc b
    jr nc, jr_03c_63a8

    inc l

jr_03c_63a4:
    inc b
    jr nc, jr_03c_63ac

    inc l

jr_03c_63a8:
    inc b
    jr nc, jr_03c_63b0

    inc l

jr_03c_63ac:
    inc b
    jr nc, jr_03c_63b4

    inc l

jr_03c_63b0:
    inc b
    jr nc, jr_03c_63b8

    inc l

jr_03c_63b4:
    inc b
    jr nc, jr_03c_63bc

    dec hl

jr_03c_63b8:
    inc b
    jr nc, jr_03c_63c0

    dec hl

jr_03c_63bc:
    inc b
    jr nc, jr_03c_63c4

    dec hl

jr_03c_63c0:
    inc b
    call nc, $0530

jr_03c_63c4:
    dec hl
    inc b
    jr nc, jr_03c_63cd

    dec hl
    inc b
    jr nc, jr_03c_63d1

    dec hl

jr_03c_63cd:
    inc b
    jr nc, jr_03c_63d5

    dec hl

jr_03c_63d1:
    inc b
    jr nc, jr_03c_63d9

    dec hl

jr_03c_63d5:
    inc b
    jr nc, jr_03c_63dd

    dec hl

jr_03c_63d9:
    inc b
    jr nc, jr_03c_63e1

    dec hl

jr_03c_63dd:
    inc b
    jr nc, jr_03c_63e5

    dec hl

jr_03c_63e1:
    inc b
    jr nc, jr_03c_63e9

    dec hl

jr_03c_63e5:
    inc b
    jr nc, jr_03c_63ed

    dec hl

jr_03c_63e9:
    inc b
    jr nc, jr_03c_63f1

    dec hl

jr_03c_63ed:
    inc b
    jr nc, jr_03c_63f5

    dec hl

jr_03c_63f1:
    inc b
    jr nc, jr_03c_63f9

    dec hl

jr_03c_63f5:
    inc b
    jr nc, jr_03c_63fd

    ld a, [hl+]

jr_03c_63f9:
    inc b
    ld [hl-], a
    dec b
    ld a, [hl+]

jr_03c_63fd:
    inc b
    ld [hl-], a
    dec b
    ld a, [hl+]
    inc b
    ld [hl-], a
    dec b
    ld a, [hl+]
    inc b
    ld [hl-], a
    dec b
    ld a, [hl+]
    inc b
    ld [hl-], a
    dec b
    ld a, [hl+]
    inc b
    ld [hl-], a
    dec b
    ld a, [hl+]
    inc b
    push de
    ld [hl-], a
    dec b
    sub $32
    inc b
    sub $33
    dec b
    sub $34
    inc b
    ld h, b
    dec b
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $21
    add hl, bc
    ld h, b
    add hl, bc
    ld hl, $2409
    add hl, bc
    ld hl, $2409
    add hl, bc
    dec hl
    add hl, bc
    cp $44
    ld h, c
    rst $38
    ret nc

    jr nz, jr_03c_6479

    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    ld h, b
    ld [de], a
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de

jr_03c_6479:
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ld d, c
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    dec de
    sub $21
    add hl, bc
    inc e
    add hl, bc
    ld hl, $1c09
    add hl, bc
    ld h, b
    ld [de], a
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    dec de
    sub $20
    add hl, bc
    inc e
    add hl, bc
    sub $20
    add hl, bc
    inc e
    add hl, bc
    ld h, b
    ld [de], a
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    dec de
    sub $1f
    add hl, bc
    inc e
    add hl, bc
    rra
    add hl, bc
    inc e
    add hl, bc
    ld h, b
    ld [de], a
    sub $1c
    inc b
    ld h, b
    ld c, $1a
    ld [de], a
    dec de
    add hl, bc
    inc e
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc e
    dec b
    ld h, b
    ld [bc], a
    pop de
    inc e
    dec b
    ld h, b
    ccf
    cp $41
    ld h, h
    rst $38
    ld h, b
    ccf
    ld a, [c]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld c, c
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    ld a, [bc]
    or $0e
    inc de
    ld [de], a
    inc d
    add hl, bc
    dec d
    inc b
    or $0f
    dec d
    inc b
    ld h, b
    dec h
    or $0e
    dec d
    add hl, bc
    db $10
    add hl, bc
    inc de
    add hl, bc
    db $10
    add hl, bc
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ccf
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ccf
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ccf
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ld [de], a
    or $0e
    db $10
    add hl, bc
    inc de
    add hl, bc
    db $10
    add hl, bc
    inc de
    add hl, bc
    inc d
    add hl, bc
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ccf
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ccf
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    dec de
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    or $0e
    dec d
    inc b
    or $0f
    dec d
    dec b
    ld h, b
    ccf
    or $0e
    rla
    inc b
    or $0f
    rla
    dec b
    or $0e
    rla
    inc b
    or $0f
    rla
    dec b
    or $0e
    rla
    inc b
    or $0f
    rla
    dec b
    ld h, b
    dec de
    or $0e
    rla
    inc b
    or $0f
    rla
    dec b
    or $0e
    rla
    inc b
    or $0f
    rla
    dec b
    or $0e
    db $10
    inc b
    or $0f
    db $10
    dec b
    ld h, b
    ccf
    cp $dc
    ld h, l
    rst $38
    ld h, b
    ccf
    ld a, [c]
    db $d3
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    ld h, $09
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, $09
    ld h, b
    dec l
    ld h, $09
    ld h, b
    add hl, bc
    ld h, $09
    ld h, b
    dec de
    cp $a9
    ld l, b
    rst $38
    ld sp, hl
    pop bc
    ldh [rP1], a
    ld a, [c]
    or $01
    ret nc

    jr nz, jr_03c_6a1c

    sub $21
    inc h
    ld h, $24
    dec l
    inc h
    inc l
    ld c, b
    add hl, hl
    inc h
    ld h, $24
    or $02
    jr nc, @+$0b

    cpl
    add hl, bc
    jr nc, jr_03c_6a16

    cpl
    add hl, bc
    ld h, b
    ld l, h
    call nc, $0930
    cpl
    add hl, bc

jr_03c_6a16:
    jr nc, jr_03c_6a21

    cpl
    add hl, bc
    ld h, b
    sub b

jr_03c_6a1c:
    or $01
    sub $26
    inc h

jr_03c_6a21:
    add hl, hl
    inc h
    dec l
    inc h
    ld sp, $3248
    inc h
    inc [hl]
    inc h
    rst $10
    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    sub $35
    add hl, bc
    inc [hl]
    add hl, bc
    inc l
    ld c, b
    ld h, b
    inc h
    call nc, $0935
    inc [hl]
    add hl, bc
    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    inc l
    ld c, b
    ld h, b
    inc h
    sub $34
    add hl, bc
    inc sp
    add hl, bc
    inc [hl]
    add hl, bc
    inc sp
    add hl, bc
    dec hl
    ld l, h
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld a, [hl+]
    ld e, d
    ld h, b
    ld [de], a
    sub $30
    ld [de], a
    cpl
    add hl, bc
    ld h, b
    inc b
    db $d3
    cpl
    dec b
    sub $34
    ld [de], a
    sub $33
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc sp
    dec b
    sub $37
    ld [de], a
    sub $36
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld [hl], $05
    sub $3c
    ld [de], a
    dec sp
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec sp
    dec b
    sub $45
    add hl, bc
    ld b, h
    add hl, bc
    ld b, e
    add hl, bc
    ld b, d
    add hl, bc
    ld b, c
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld b, c
    dec b
    sub $41
    add hl, bc
    ld b, b
    add hl, bc
    ccf
    add hl, bc
    ld a, $09
    dec a
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec a
    dec b
    sub $3d
    add hl, bc
    inc a
    add hl, bc
    dec sp
    add hl, bc
    ld a, [hl-]
    add hl, bc
    ld [hl-], a
    ld [de], a
    sub $34
    ld [de], a
    dec [hl]
    inc h
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec [hl]
    ld [de], a
    ld sp, hl
    pop de
    ldh [rP1], a
    sub $32
    ld [de], a
    inc [hl]
    ld [de], a
    dec [hl]
    ld [de], a
    add hl, sp
    ld c, b
    jr c, jr_03c_6b03

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr c, jr_03c_6ae6

    ld sp, hl
    pop de
    ldh [rP1], a
    sub $30
    ld [de], a
    ld [hl-], a
    ld [de], a
    inc sp
    inc h
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc sp
    ld [de], a

jr_03c_6ae6:
    ld sp, hl
    pop de
    ldh [rP1], a
    sub $30
    ld [de], a
    ld [hl-], a
    ld [de], a
    inc sp
    ld [de], a
    scf
    ld c, b
    ld [hl], $36
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld [hl], $12
    ld sp, hl
    pop de
    ldh [rP1], a
    sub $2e
    ld [de], a

jr_03c_6b03:
    jr nc, jr_03c_6b17

    ld sp, $f924
    ld bc, $00e0
    db $d3
    ld sp, $f912
    pop de
    ldh [rP1], a
    sub $2e
    ld [de], a
    jr nc, jr_03c_6b29

jr_03c_6b17:
    ld sp, $6012
    inc b
    db $d3
    ld sp, $6009
    add hl, bc
    pop de
    ld sp, $6009
    dec b
    sub $28
    ld d, c
    ld sp, hl

jr_03c_6b29:
    ld bc, $00e0
    db $d3
    jr z, jr_03c_6b4a

    ld h, b
    ld c, b
    ld sp, hl
    pop bc
    ldh [rP1], a
    cp $f5
    ld l, c
    rst $38
    ld sp, hl
    pop bc
    ldh [rP1], a
    ld a, [c]
    or $01
    ret nc

    jr nz, jr_03c_6b67

    pop de
    ld hl, $d312
    ld hl, $2624

jr_03c_6b4a:
    inc h
    dec l
    inc h
    inc l
    ld c, b
    add hl, hl
    inc h
    ld h, $24
    or $02
    db $d3
    jr nc, @+$0b

    cpl
    add hl, bc
    jr nc, jr_03c_6b65

    cpl
    add hl, bc
    ld h, b
    ld l, h
    jp nc, $0930

    cpl
    add hl, bc

jr_03c_6b65:
    jr nc, jr_03c_6b70

jr_03c_6b67:
    cpl
    add hl, bc
    ld h, b
    sbc c
    or $01
    db $d3
    ld h, $24

jr_03c_6b70:
    add hl, hl
    inc h
    dec l
    inc h
    ld sp, $3248
    inc h
    inc [hl]
    inc h
    ld h, b
    inc bc
    db $d3
    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    db $d3
    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    db $d3
    inc l
    ld c, b
    ld h, b
    inc h
    jp nc, $0935

    inc [hl]
    add hl, bc
    dec [hl]
    add hl, bc
    jp nc, $0934

    inc l
    ld h, e
    db $d3
    inc [hl]
    add hl, bc
    inc sp
    add hl, bc
    inc [hl]
    add hl, bc
    inc sp
    add hl, bc
    dec hl
    ld l, h
    pop de
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld a, [hl+]
    ld d, a
    sub $2d
    ld [de], a
    inc l
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc l
    dec b
    sub $30
    ld [de], a
    cpl
    add hl, bc
    ld h, b
    inc b
    db $d3
    cpl
    dec b
    sub $34
    ld [de], a
    inc sp
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc sp
    dec b
    sub $39
    ld [de], a
    jr c, jr_03c_6bd9

    ld h, b
    inc b
    db $d3
    jr c, jr_03c_6bda

    sub $42
    add hl, bc
    ld b, c

jr_03c_6bd9:
    add hl, bc

jr_03c_6bda:
    ld b, b
    add hl, bc
    ccf
    add hl, bc
    ld a, $09
    ld h, b
    inc b
    db $d3
    ld a, $05
    sub $3e
    add hl, bc
    dec a
    add hl, bc
    inc a
    add hl, bc
    dec sp
    add hl, bc
    ld a, [hl-]
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld a, [hl-]
    dec b
    sub $3a
    add hl, bc
    add hl, sp
    add hl, bc
    jr c, jr_03c_6c05

    scf
    add hl, bc
    or $02
    ld h, $04
    ld h, b
    dec b
    add hl, hl

jr_03c_6c05:
    inc b
    db $d3
    ld h, $05
    sub $28
    inc b
    db $d3
    add hl, hl
    dec b
    sub $29
    inc b
    db $d3
    jr z, jr_03c_6c1a

    sub $26
    inc b
    db $d3
    add hl, hl

jr_03c_6c1a:
    dec b
    sub $29
    inc b
    db $d3
    ld h, $05
    sub $28
    inc b
    db $d3
    add hl, hl
    dec b
    sub $29
    inc b
    db $d3
    jr z, jr_03c_6c32

    sub $26
    inc b
    db $d3
    add hl, hl

jr_03c_6c32:
    dec b
    sub $29
    inc b
    db $d3
    ld h, $05
    sub $28
    inc b
    db $d3
    add hl, hl
    dec b
    sub $29
    inc b
    db $d3
    jr z, jr_03c_6c4a

    sub $26
    inc b
    db $d3
    add hl, hl

jr_03c_6c4a:
    dec b
    sub $29
    inc b
    db $d3
    ld h, $05
    sub $28
    inc b
    db $d3
    add hl, hl
    dec b
    sub $29
    inc b
    db $d3
    jr z, jr_03c_6c62

    sub $23
    inc b
    db $d3
    add hl, hl

jr_03c_6c62:
    dec b
    sub $26
    inc b
    db $d3
    inc hl
    dec b
    sub $25
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    dec h
    dec b
    sub $23
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    inc hl
    dec b
    sub $25
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    dec h
    dec b
    sub $23
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    inc hl
    dec b
    sub $25
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    dec h
    dec b
    sub $23
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    inc hl
    dec b
    sub $25
    inc b
    db $d3
    ld h, $05
    sub $26
    inc b
    db $d3
    dec h
    dec b
    sub $24
    inc b
    db $d3
    ld h, $05
    sub $27
    inc b
    db $d3
    inc h
    dec b
    sub $26
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    ld h, $05
    sub $24
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    inc h
    dec b
    sub $26
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    ld h, $05
    sub $24
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    inc h
    dec b
    sub $26
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    ld h, $05
    sub $24
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    inc h
    dec b
    sub $26
    inc b
    db $d3
    daa
    dec b
    sub $27
    inc b
    db $d3
    ld h, $05
    sub $21
    inc b
    db $d3
    daa
    dec b
    sub $24
    inc b
    db $d3
    ld hl, $d605
    inc hl
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    inc hl
    dec b
    sub $21
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    ld hl, $d605
    inc hl
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    inc hl
    dec b
    sub $21
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    ld hl, $d605
    inc hl
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    inc hl
    dec b
    sub $21
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    ld hl, $d605
    inc hl
    inc b
    db $d3
    inc h
    dec b
    sub $24
    inc b
    db $d3
    inc hl
    dec b
    or $01
    sub $22
    ld [de], a
    inc h
    ld [de], a
    dec h
    inc h
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec h
    ld [de], a
    ld sp, hl
    pop de
    ldh [rP1], a
    sub $22
    ld [de], a
    inc h
    ld [de], a
    dec h
    ld [de], a
    ld h, b
    inc b
    db $d3
    dec h
    add hl, bc
    ld h, b
    dec b
    pop de
    dec h
    add hl, bc
    ld h, b
    add hl, bc
    sub $1c
    ld c, b
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc e
    inc h
    ld h, b
    ld c, b
    ld sp, hl
    pop de
    ldh [rP1], a
    cp $40
    ld l, e
    rst $38
    or $0e
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld h, e
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    ld [hl], l
    dec c
    add hl, bc
    ld h, b
    add hl, bc
    dec c
    add hl, bc
    ld h, b
    ld [hl], l
    inc c
    add hl, bc
    ld h, b
    add hl, bc
    inc c
    add hl, bc
    ld h, b
    ld [hl], l
    dec bc
    sub b
    ld h, b
    sub b
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    dec l
    ld c, $09
    ld h, b
    add hl, bc
    ld c, $09
    ld h, b
    dec l
    inc d
    add hl, bc
    ld h, b
    add hl, bc
    inc d
    add hl, bc
    ld h, b
    dec l
    inc d
    add hl, bc
    ld h, b
    add hl, bc
    inc d
    add hl, bc
    ld h, b
    dec l
    inc c
    add hl, bc
    ld h, b
    add hl, bc
    inc c
    add hl, bc
    ld h, b
    dec l
    inc c
    add hl, bc
    ld h, b
    add hl, bc
    inc c
    add hl, bc
    ld h, b
    dec l
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    dec l
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    dec de
    rrca
    inc b
    ld c, $05
    inc c
    inc b
    dec bc
    dec b
    ld a, [bc]
    ld [de], a
    inc c
    ld [de], a
    dec c
    dec l
    ld h, b
    add hl, bc
    ld a, [bc]
    ld [de], a
    inc c
    ld [de], a
    dec c
    ld [de], a
    ld h, b
    inc h
    inc b
    add hl, bc
    dec b
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    inc b
    add hl, bc
    dec b
    add hl, bc
    inc b
    add hl, bc
    ld h, b
    ld h, e
    cp $ba
    ld l, l
    rst $38
    ld sp, hl
    nop
    ldh [rDIV], a
    ld a, [c]
    or $02
    sub $28
    inc e
    inc l
    inc e
    cpl
    inc e
    ld l, $0e
    cpl
    rlca
    ld sp, $3207
    ld c, $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    cpl
    ld c, $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2f
    inc hl
    db $d3
    cpl
    dec d
    sub $2c
    inc e
    dec l
    ld c, $2e
    ld c, $2f
    ld c, $2c
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
    sub $28
    rlca
    ld h, b
    inc bc
    db $d3
    jr z, jr_03c_6ecb

    sub $23
    rlca
    ld h, b

jr_03c_6ecb:
    inc bc
    db $d3
    inc hl
    inc b
    sub $24
    inc bc
    ld h, $04
    inc h
    inc bc
    ld h, $04
    inc h
    inc bc
    ld h, $04
    inc h
    rlca
    inc hl
    inc bc
    ld h, b
    add hl, de
    dec h
    inc bc
    ld h, $04
    dec h
    inc bc
    ld h, $04
    dec h
    inc bc
    ld h, $04
    dec h
    rlca
    inc hl
    inc bc
    ld h, b
    add hl, de
    jr z, jr_03c_6f12

    inc l
    inc e
    cpl
    inc e
    ld l, $0e
    cpl
    rlca
    ld sp, $3207
    ld c, $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    ld [hl-], a
    ld c, $33
    ld c, $34
    inc e
    db $d3
    inc [hl]

jr_03c_6f12:
    ld c, $d6
    cpl
    rlca
    ld sp, $3207
    ld c, $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    ld [hl-], a
    ld c, $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    ld [hl-], a
    ld c, $31
    rlca
    cpl
    inc bc
    ld sp, $2f04
    ld c, $2e
    ld c, $2f
    ld c, $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2c
    ld c, $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $28
    inc e
    db $d3
    jr z, jr_03c_6f5f

    sub $23
    ld c, $24
    inc e
    inc hl
    inc e
    dec h
    inc e
    inc hl
    rlca
    ld h, b
    inc bc
    db $d3

jr_03c_6f5f:
    inc hl
    inc b
    sub $23
    ld c, $26
    inc e
    inc hl
    inc e
    dec h
    inc e
    inc hl
    rlca
    ld h, b
    inc bc
    db $d3
    inc hl
    rlca
    ld h, b
    add hl, de
    sub $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $30
    ld c, $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $31
    ld c, $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    cpl
    inc e
    db $d3
    cpl
    ld c, $d6
    inc hl
    ld c, $24
    inc e
    inc hl
    inc e
    inc h
    inc b
    dec h
    dec b
    inc h
    dec b
    dec h
    inc b
    inc h
    dec b
    dec h
    dec b
    inc hl
    ld c, $60
    ld c, $27
    inc e
    inc hl
    inc e
    inc h
    inc b
    dec h
    dec b
    inc h
    dec b
    dec h
    inc b
    inc h
    dec b
    dec h
    dec b
    inc hl
    ld c, $60
    inc e
    cpl
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $34
    ld c, $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2e
    ld c, $2d
    rlca
    ld h, b
    inc bc
    db $d3
    dec l
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $28
    ld a, [hl+]
    db $d3
    jr z, jr_03c_704f

    cp $89
    ld l, [hl]
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    ld a, [c]
    or $02
    ret nc

    jr @+$01

jr_03c_704f:
    jr jr_03c_70a2

    sub $18
    inc bc
    ld a, [de]
    inc b
    jr @+$05

    ld a, [de]
    inc b
    jr @+$05

    ld a, [de]
    inc b
    jr jr_03c_7067

    rla
    inc bc
    ld h, b
    add hl, de
    add hl, de
    inc bc
    ld a, [de]

jr_03c_7067:
    inc b
    add hl, de
    inc bc
    ld a, [de]
    inc b
    add hl, de
    inc bc
    ld a, [de]
    inc b
    add hl, de
    rlca
    rla
    inc bc
    ld h, b
    rst $38
    ld h, b
    call z, $0e17
    ld sp, hl
    nop
    ldh [$03], a
    jr jr_03c_709c

    rla
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    add hl, de
    inc b
    ld a, [de]
    dec b
    add hl, de
    dec b
    ld a, [de]
    inc b
    add hl, de
    dec b
    ld a, [de]
    dec b
    rla
    rlca
    ld h, b
    rlca
    rla
    ld c, $f9
    nop
    ldh [$03], a

jr_03c_709c:
    ld a, [de]
    inc e
    rla
    inc e
    ld sp, hl
    nop

jr_03c_70a2:
    ldh [$03], a
    add hl, de
    inc b
    ld a, [de]
    dec b
    add hl, de
    dec b
    ld a, [de]
    inc b
    add hl, de
    dec b
    ld a, [de]
    dec b
    rla
    ld c, $60
    inc e
    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2d
    ld c, $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2d
    ld c, $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $04
    sub $2b
    inc e
    db $d3
    dec hl
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    sub $18
    inc e
    rla
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    jr jr_03c_7118

    add hl, de
    dec b
    jr jr_03c_711d

jr_03c_7118:
    add hl, de
    inc b
    jr jr_03c_7121

    add hl, de

jr_03c_711d:
    dec b
    rla
    ld c, $60

jr_03c_7121:
    ld c, $f9
    nop
    ldh [$03], a
    dec de
    inc e
    rla
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    jr jr_03c_7134

    add hl, de
    dec b
    jr jr_03c_7139

jr_03c_7134:
    add hl, de
    inc b
    jr jr_03c_713d

    add hl, de

jr_03c_7139:
    dec b
    rla
    ld c, $60

jr_03c_713d:
    inc e
    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2e
    ld c, $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $28
    rlca
    ld h, b
    inc bc
    db $d3
    jr z, jr_03c_7173

    sub $2a
    ld c, $29

jr_03c_7173:
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $28
    rlca
    ld h, b
    inc bc
    db $d3
    jr z, jr_03c_7185

    sub $24
    rlca
    ld h, b

jr_03c_7185:
    inc bc
    db $d3
    inc h
    inc b
    sub $22
    ld a, [hl+]
    db $d3
    ld [hl+], a
    ld c, $fe
    ld c, h
    ld [hl], b
    rst $38
    ld a, [c]
    or $0e
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc e
    or $0f
    ld d, $0a
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $10
    ld c, $17
    rlca
    or $0f
    rla
    inc b
    ld h, b
    inc bc
    or $0e
    ld d, $38
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc e
    or $0f
    ld d, $0a
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $0c
    inc bc
    ld c, $04
    inc c
    inc bc
    ld c, $04
    inc c
    inc bc
    ld c, $04
    inc c
    rlca
    dec bc
    inc bc
    or $0f
    dec bc
    ld b, $60
    inc de
    or $0e
    dec c
    inc bc
    ld c, $04
    dec c
    inc bc
    ld c, $04
    dec c
    inc bc
    ld c, $04
    dec c
    rlca
    dec bc
    inc bc
    or $0f
    dec bc
    inc b
    or $0e
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc e
    or $0f
    ld d, $0a
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $10
    ld c, $17
    rlca
    or $0f
    rla
    inc b
    ld h, b
    inc bc
    or $0e
    ld d, $38
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc e
    or $0f
    ld d, $0a
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $10
    ld c, $17
    rlca
    or $0f
    rla
    inc b
    ld h, b
    inc bc
    or $0e
    ld d, $38
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc b
    rla
    dec b
    ld d, $05
    rla
    inc b
    ld d, $05
    rla
    dec b
    or $0f
    rla
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $10
    ld c, $17
    rlca
    or $0f
    rla
    inc b
    ld h, b
    inc bc
    or $0e
    ld d, $20
    rla
    dec b
    ld d, $05
    rla
    inc b
    ld d, $05
    rla
    dec b
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc e
    or $0f
    ld d, $0a
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $10
    ld c, $17
    rlca
    or $0f
    rla
    inc b
    ld h, b
    inc bc
    or $0e
    ld d, $38
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    rla
    ld c, $16
    inc e
    or $0f
    ld d, $0a
    ld h, b
    inc b
    or $0e
    inc de
    ld c, $10
    ld c, $17
    rlca
    or $0f
    rla
    inc b
    ld h, b
    inc bc
    or $0e
    ld d, $38
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    db $10
    inc e
    or $0f
    db $10
    ld c, $60
    ld b, [hl]
    or $0e
    ld d, $0b
    or $0f
    ld d, $03
    or $0e
    dec d
    rlca
    or $0f
    dec d
    inc b
    ld h, b
    inc bc
    or $0e
    inc de
    rlca
    or $0f
    inc de
    inc b
    ld h, b
    inc bc
    or $0e
    ld de, $f607
    rrca
    ld de, $6004
    inc bc
    or $0e
    db $10
    ld c, $f6
    rrca
    db $10
    ld a, [bc]
    ld h, b
    inc b
    or $0e
    inc de
    rlca
    dec d
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    cp $94
    ld [hl], c
    rst $38
    ld a, [c]
    db $d3
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    inc hl
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    inc e
    ld h, $0e
    inc hl
    ld c, $23
    ld c, $26
    ld c, $26
    ld a, [hl+]
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $70
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $1c
    ld h, $1c
    cp $51
    ld [hl], e
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $1e
    ld c, $25
    ld c, $24
    ld [bc], a
    dec h
    ld [bc], a
    inc h
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc h
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $20
    rlca
    ld hl, $2307
    rlca
    ld hl, $2007
    ld [bc], a
    ld hl, $2002
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nz, jr_03c_745b

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $1e
    ld c, $25
    ld c, $24
    ld [bc], a
    dec h
    ld [bc], a
    inc h
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc h
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $25

jr_03c_745b:
    rlca
    ld h, $07

jr_03c_745e:
    add hl, hl
    rlca
    ld h, $07
    dec h
    jr c, jr_03c_745e

    ld bc, $00e0
    db $d3
    dec h
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $1e
    ld c, $25
    ld c, $24
    ld [bc], a
    dec h
    ld [bc], a
    inc h
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc h
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $21
    inc bc
    ld h, b
    inc b
    ld hl, $2007
    rlca
    ld e, $07
    jr nz, @+$04

    ld hl, $2002
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    pop de
    jr nz, jr_03c_74b9

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $1e
    ld c, $25
    ld c, $24
    ld [bc], a
    dec h
    ld [bc], a
    inc h
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc h
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $25

jr_03c_74b9:
    rlca
    ld h, $07
    add hl, hl
    rlca
    ld a, [hl+]
    rlca
    inc l
    ld [bc], a
    dec l
    ld [bc], a
    inc l
    ld d, b
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc l
    inc e
    ld h, b
    ld b, [hl]
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $2c
    rlca
    db $d3
    inc l
    rlca
    sub $2b
    rlca
    inc l
    rlca
    dec hl
    rlca
    ld h, $07
    dec h
    ld [bc], a
    ld h, $02
    dec h
    inc [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec h
    ld c, $f9
    pop af
    ldh [rP1], a
    sub $2d
    rlca
    db $d3
    dec l
    rlca
    sub $2d
    rlca
    dec hl
    rlca
    ld a, [hl+]
    rlca
    daa
    rlca
    ld h, $02
    daa
    ld [bc], a
    ld h, $34
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld h, $0e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $2e
    rlca
    db $d3
    ld l, $07
    sub $2d
    rlca
    dec hl
    rlca
    ld a, [hl+]
    rlca
    daa
    rlca
    ld h, $02
    daa
    ld [bc], a
    ld h, $34
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld h, $1c
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $28
    rlca
    add hl, hl
    rlca
    inc l
    rlca
    dec l
    rlca
    cpl
    ld [bc], a
    jr nc, jr_03c_7542

    cpl
    inc [hl]

jr_03c_7542:
    ld sp, hl
    ld bc, $00e0
    db $d3
    cpl
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $2f
    rlca
    dec l
    rlca
    inc l
    rlca
    add hl, hl
    rlca
    jr z, jr_03c_755a

    add hl, hl
    ld [bc], a

jr_03c_755a:
    jr z, @+$36

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr z, @+$1e

    ld h, b
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $28
    rlca
    add hl, hl
    rlca
    inc l
    rlca
    dec l
    rlca
    cpl
    rlca
    dec l
    rlca
    inc l
    rlca
    add hl, hl
    rlca
    jr z, @+$09

    add hl, hl
    rlca
    jr z, @+$09

    daa
    rlca
    jr z, jr_03c_75d8

    ld h, b
    inc e
    ld e, $0e
    dec h
    ld c, $fe
    jr @+$76

    rst $38
    ret nc

    jr nz, jr_03c_75ad

    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [c]
    or $02
    ld h, b
    inc e
    rst $10
    ld a, [hl+]
    ld c, $31
    ld c, $d6
    jr nc, @+$04

    ld sp, $3002
    inc sp
    ld h, b
    ld bc, $01f9
    ldh [rP1], a
    db $d3

jr_03c_75ad:
    jr nc, jr_03c_75cb

    ld sp, hl
    pop af
    ldh [rP1], a
    rst $10
    inc l
    rlca
    dec l
    rlca
    cpl
    rlca
    dec l
    rlca
    sub $2c
    ld [bc], a
    dec l
    ld [bc], a
    inc l
    inc sp
    ld h, b
    ld bc, $01f9
    ldh [rP1], a
    db $d3
    inc l

jr_03c_75cb:
    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    rst $10
    ld a, [hl+]
    ld c, $31
    ld c, $d6
    jr nc, @+$04

jr_03c_75d8:
    ld sp, $3002
    inc sp
    ld h, b
    ld bc, $01f9
    ldh [rP1], a
    db $d3
    jr nc, @+$1e

    ld sp, hl
    pop af
    ldh [rP1], a
    rst $10
    ld sp, $3207
    rlca
    dec [hl]
    rlca
    ld [hl], $07
    jr c, @+$09

    ld [hl], $07
    dec [hl]
    rlca
    ld [hl-], a
    rlca
    sub $31
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld sp, $6017
    ld bc, $01f9
    ldh [rP1], a
    db $d3
    ld sp, $f91c
    pop af
    ldh [rP1], a
    rst $10
    ld a, [hl+]
    ld c, $31
    rlca

jr_03c_7613:
    jr nc, jr_03c_7618

    ld sp, $3004

jr_03c_7618:
    jr c, jr_03c_7613

    ld bc, $00e0
    db $d3
    jr nc, jr_03c_763c

    ld sp, hl
    pop af
    ldh [rP1], a
    rst $10
    dec l
    inc bc
    ld h, b
    inc b
    dec l
    rlca
    inc l
    rlca
    ld a, [hl+]
    rlca
    inc l
    inc bc
    dec l
    inc b
    inc l
    ld sp, $01f9
    ldh [rP1], a
    db $d3
    inc l
    inc e

jr_03c_763c:
    ld sp, hl
    pop af
    ldh [rP1], a
    rst $10
    ld a, [hl+]
    ld c, $31
    rlca

jr_03c_7645:
    jr nc, jr_03c_764a

    ld sp, $3004

jr_03c_764a:
    jr c, jr_03c_7645

    ld bc, $00e0
    db $d3
    jr nc, jr_03c_766e

    ld sp, hl
    pop af
    ldh [rP1], a
    rst $10
    ld sp, $3207
    rlca
    dec [hl]
    rlca
    ld [hl], $07
    jr c, @+$09

    ld [hl], $07
    dec [hl]
    rlca
    ld [hl-], a
    rlca
    ld sp, $2f07
    rlca
    dec l
    rlca
    inc l

jr_03c_766e:
    rlca
    inc de
    inc bc
    ld h, b
    inc b
    db $d3
    inc de
    inc bc
    ld h, b
    inc b
    rst $10
    inc de
    inc bc
    ld h, b
    inc b
    db $d3
    inc de
    inc bc
    ld h, b
    inc b
    rst $10
    inc d
    ld c, $13
    inc bc
    ld h, b
    inc b
    db $d3
    inc de
    inc bc
    ld h, b
    inc a
    sub $14
    inc bc
    ld h, b
    inc b
    db $d3
    inc d
    inc bc
    ld h, b
    inc b
    sub $14
    inc bc
    ld h, b
    inc b
    db $d3
    inc d
    inc bc
    ld h, b
    inc b
    sub $15
    ld c, $14
    inc bc
    ld h, b
    inc b
    db $d3
    inc d
    inc bc
    ld h, b
    inc a
    sub $15
    inc bc
    ld h, b
    inc b
    db $d3
    dec d
    inc bc
    ld h, b
    inc b
    sub $15
    inc bc
    ld h, b
    inc b
    db $d3
    dec d
    inc bc
    ld h, b
    inc b
    sub $16
    ld c, $15
    inc bc
    ld h, b
    inc b
    db $d3
    dec d
    inc bc
    ld h, b
    inc a
    sub $15
    inc bc
    ld h, b
    inc b
    db $d3
    dec d
    inc bc
    ld h, b
    inc b
    sub $15
    inc bc
    ld h, b
    inc b
    db $d3
    dec d
    inc bc
    ld h, b
    inc b
    sub $16
    ld c, $15
    inc bc
    ld h, b
    inc b
    db $d3
    dec d
    inc bc
    ld h, b
    inc a
    sub $17
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, b
    inc b
    sub $17
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, b
    inc b
    sub $18
    ld c, $17
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, b
    inc a
    sub $17
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, b
    inc b
    sub $17
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, b
    inc b
    sub $18
    ld c, $17
    inc bc
    ld h, b
    inc b
    db $d3
    rla
    inc bc
    ld h, b
    ld b, [hl]
    db $d3
    jr z, jr_03c_7738

    add hl, hl
    rlca
    inc l
    rlca
    dec l
    rlca
    cpl

jr_03c_7738:
    rlca
    dec l
    rlca
    inc l
    rlca
    add hl, hl
    rlca
    jr z, jr_03c_7748

    add hl, hl
    rlca
    db $d3
    jr z, @+$09

    daa
    rlca

jr_03c_7748:
    jr z, jr_03c_77c1

    ld h, b
    dec bc
    cp $98
    ld [hl], l
    rst $38
    ld h, b
    inc e
    ld a, [c]
    or $0e
    ld [de], a
    inc e
    or $0e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    inc e
    or $0e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    inc e
    or $0e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    inc e
    or $0e
    add hl, de
    rlca

jr_03c_77c1:
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld a, [hl+]
    or $0e
    ld [de], a
    inc e
    or $0e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    inc e
    or $0e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    inc e
    or $0e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $19
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    ld c, $12
    rlca
    or $0f
    ld [de], a
    rlca
    ld h, b
    ld c, $f6
    ld c, $0d
    rlca
    ld c, $07
    ld de, $1207
    rlca
    inc d
    rlca
    ld [de], a
    rlca
    ld de, $0e07
    rlca
    dec c
    rlca
    ld c, $07
    dec c
    rlca
    or $0f
    dec c
    rlca
    or $0e
    dec c
    inc bc
    or $0f
    dec c
    ld b, $60
    dec b
    or $0e
    dec c
    inc bc
    or $0f
    dec c
    ld b, $60
    dec b
    or $0e
    ld c, $0e
    or $0e
    dec c
    inc bc
    or $0f
    dec c
    ld b, $60
    dec a
    or $0e
    dec c
    inc bc
    or $0f
    dec c
    ld b, $60
    dec b
    or $0e
    dec c
    inc bc
    or $0f
    dec c
    ld b, $60
    dec b
    or $0e
    ld c, $0e
    or $0e
    dec c
    inc bc
    or $0f
    dec c
    ld b, $60
    dec a
    or $0e
    ld c, $03
    or $0f
    ld c, $06
    ld h, b
    dec b
    or $0e
    ld c, $03
    or $0f
    ld c, $06
    ld h, b
    dec b
    or $0e
    rrca
    ld c, $f6
    ld c, $0e
    inc bc
    or $0f
    ld c, $06
    ld h, b
    dec a
    or $0e
    ld c, $03
    or $0f
    ld c, $06
    ld h, b
    dec b
    or $0e
    ld c, $03
    or $0f
    ld c, $06
    ld h, b
    dec b
    or $0e
    rrca
    ld c, $f6
    ld c, $0e
    inc bc
    or $0f
    ld c, $06
    ld h, b
    dec a
    or $0e
    db $10
    inc bc
    or $0f
    db $10
    ld b, $60
    dec b
    or $0e
    db $10
    inc bc
    or $0f
    db $10
    ld b, $60
    dec b
    or $0e
    ld de, $f60e
    ld c, $10
    inc bc
    or $0f
    db $10
    ld b, $60
    dec a
    or $0e
    db $10
    inc bc
    or $0f
    db $10
    ld b, $60
    dec b
    or $0e
    db $10
    inc bc
    or $0f
    db $10
    ld b, $60
    dec b
    or $0e
    ld de, $f60e
    ld c, $10
    inc bc
    or $0f
    db $10
    ld b, $60
    xor l
    or $0e
    db $10
    rlca
    ld de, $1007
    rlca
    rrca
    rlca
    db $10
    rlca
    ld de, $1407
    rlca
    ld de, $1007
    rlca
    ld de, $1007
    rlca
    rrca
    rlca
    db $10
    inc e
    cp $53
    ld [hl], a
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $01
    ret nc

    jr nz, jr_03c_7977

    sub $29
    inc h
    jr nc, @+$26

    add hl, hl
    inc h
    daa
    inc h
    ld l, $12
    db $d3
    ld l, $12
    sub $2e
    ld [hl], $d3
    ld l, $12
    pop de
    ld l, $12
    ld h, b
    ld [de], a
    sub $29
    inc h
    jr nc, jr_03c_7995

    dec [hl]
    inc h
    inc sp
    inc h
    dec hl
    inc h

jr_03c_7977:
    inc l
    dec c
    ld h, b
    dec b
    call nc, $042c
    ld h, b
    dec b
    jp nc, $042c

    ld h, b
    dec b
    sub $33
    ld [de], a
    db $d3
    inc sp
    ld [de], a
    sub $33
    ld c, b
    ld sp, $3324
    ld [de], a
    ld sp, $3012

jr_03c_7995:
    inc h
    ld l, $24
    inc l
    ld [de], a
    db $d3
    inc l
    ld [de], a
    sub $30
    ld [de], a
    db $d3
    jr nc, @+$14

    sub $30
    inc h
    ld l, $1b
    db $d3
    ld l, $09
    sub $37
    inc h
    dec [hl]
    inc h
    inc [hl]
    ld e, d
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc [hl]
    inc h
    pop de
    inc [hl]
    inc h
    ret nc

    inc [hl]
    ld [de], a
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $35
    inc h
    jr nc, jr_03c_79ec

    inc l
    inc h
    ld l, $24
    inc sp
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc sp
    add hl, bc
    ld h, b
    dec b
    pop de
    inc sp
    add hl, bc
    sub $33
    ld c, b
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc sp
    inc h
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $3a
    ld [de], a
    jr c, @+$14

    scf

jr_03c_79ec:
    ld [de], a
    sub $35
    ld [de], a
    inc sp
    ld [de], a
    ld sp, $3012
    inc h
    sub $35
    add hl, bc
    ld h, b
    inc b
    call nc, $0535
    ld h, b
    inc b
    jp nc, $0535

    ld h, b
    add hl, bc
    sub $35
    add hl, bc
    ld h, b
    inc b
    call nc, $0535
    ld h, b
    inc b
    jp nc, $0535

    ld h, b
    add hl, bc
    sub $29
    ld [de], a
    db $d3
    add hl, hl
    ld [de], a
    sub $33
    ld c, b
    rst $10
    ld sp, $f948
    ld bc, $00e0
    db $d3
    ld sp, $d124
    ld sp, $6024
    ld [de], a
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $31
    ld [de], a
    inc sp
    ld [de], a
    sub $31
    ld [de], a
    jr nc, jr_03c_7a82

    ld l, $48
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld l, $24
    pop de
    ld l, $24
    ld h, b
    ld c, b
    ld sp, hl
    pop hl
    ldh [rP1], a
    cp $50
    ld a, c
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $01
    sub $16
    inc h
    add hl, de
    inc h
    jr nz, jr_03c_7a82

    add hl, de
    inc h
    jr jr_03c_7a86

    rra
    inc h
    ld [hl+], a
    inc h
    jr jr_03c_7a8c

    db $d3
    jr jr_03c_7a7d

    ld h, b
    ld [de], a
    sub $19
    inc h
    jr nz, jr_03c_7a96

    add hl, de
    inc h
    jr @+$26

    rra
    inc h
    dec e
    inc h
    db $d3
    dec e
    ld [de], a

jr_03c_7a7d:
    ld h, b
    ld [de], a
    sub $16
    ld [de], a

jr_03c_7a82:
    jr jr_03c_7a96

    add hl, de
    ld [de], a

jr_03c_7a86:
    jr nz, @+$14

    rra
    inc h
    dec de
    inc h

jr_03c_7a8c:
    jr nz, @+$26

    rra
    inc h
    dec e
    inc h
    dec de
    inc h
    add hl, de
    ld a, [hl]

jr_03c_7a96:
    db $d3
    add hl, de
    ld [de], a
    sub $18
    ld [de], a
    add hl, de
    ld [de], a
    jr @+$14

    add hl, de
    ld [de], a
    jr jr_03c_7ac8

    sub $24
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc h
    add hl, bc
    ld h, b
    dec b
    pop de
    inc h
    add hl, bc
    sub $19
    inc h
    sub $20
    inc h
    inc h
    inc h
    add hl, de
    inc h
    jr jr_03c_7ae1

    rra
    inc h
    ld [hl+], a
    inc h
    jr jr_03c_7ae7

    add hl, de
    inc h
    jr nz, jr_03c_7aeb

    inc h

jr_03c_7ac8:
    inc h
    add hl, de
    inc h
    jr jr_03c_7af1

    ld [hl+], a
    inc h
    jr nz, jr_03c_7af5

    db $d3
    jr nz, jr_03c_7ae6

    ld h, b
    ld [de], a
    sub $16
    inc h
    jr jr_03c_7aff

    add hl, de
    inc h
    dec de
    inc h
    dec e
    inc h

jr_03c_7ae1:
    rra
    inc h
    jr nz, @+$26

    ld [hl+], a

jr_03c_7ae6:
    inc h

jr_03c_7ae7:
    dec de
    inc h
    dec e
    inc h

jr_03c_7aeb:
    rra
    inc h
    jr nz, @+$26

    ld [hl+], a
    inc h

jr_03c_7af1:
    inc h
    inc h
    dec h
    inc h

jr_03c_7af5:
    daa
    inc h
    cp $57
    ld a, d
    rst $38
    ld a, [c]
    or $08
    ld h, b

jr_03c_7aff:
    ld sp, $2429
    jr nc, jr_03c_7b28

    add hl, hl
    inc h
    daa
    inc h
    ld l, $12
    ld h, b
    ld [de], a
    ld l, $36
    ld h, b
    ld [hl], $29
    inc h
    jr nc, jr_03c_7b38

    dec [hl]
    inc h
    inc sp
    inc h
    dec hl
    inc h
    inc l
    ld c, $60
    ld d, $33
    ld [de], a
    ld h, b
    ld [de], a
    inc sp
    ld c, b
    ld sp, $3324
    ld [de], a

jr_03c_7b28:
    ld sp, $3012
    inc h
    ld l, $24
    inc l
    inc h
    jr nc, jr_03c_7b44

    ld h, b
    ld [de], a
    jr nc, jr_03c_7b5a

    ld l, $24

jr_03c_7b38:
    scf
    inc h
    dec [hl]
    inc h
    inc [hl]
    ld e, d
    ld h, b
    ld e, d
    dec [hl]
    inc h
    jr nc, jr_03c_7b68

jr_03c_7b44:
    inc l
    inc h
    ld l, $24
    inc sp
    add hl, bc
    ld h, b
    dec de
    inc sp
    ld c, b
    inc sp
    inc h
    ld a, [hl-]
    ld [de], a
    jr c, jr_03c_7b66

    scf
    ld [de], a
    dec [hl]
    ld [de], a
    inc sp
    ld [de], a

jr_03c_7b5a:
    ld sp, $3012
    inc h
    dec [hl]
    add hl, bc
    ld h, b
    dec de
    dec [hl]
    add hl, bc
    ld h, b
    dec de

jr_03c_7b66:
    add hl, hl
    inc h

jr_03c_7b68:
    inc sp
    ld c, b
    ld sp, $6048
    ld e, d
    ld sp, $3312
    ld [de], a
    db $d3
    ld sp, $3012
    ld c, b
    ld l, $48
    ld h, b
    add e
    cp $fe
    ld a, d
    rst $38
    ret nc

    jr nz, jr_03c_7b92

    ld sp, hl
    pop hl
    ldh [rP1], a
    or $01
    sub $2e
    inc b
    ld h, b
    inc b
    call nc, $042e
    ld h, b
    inc b

jr_03c_7b92:
    sub $29
    dec b

jr_03c_7b95:
    ld l, $05
    dec [hl]
    ld b, $3a
    jr nc, jr_03c_7b95

    ld bc, $00e0
    call nc, $103a
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $32
    ld a, [bc]
    ld l, $0b
    add hl, hl
    dec bc
    dec h
    inc b
    ld h, b
    inc b
    call nc, $0425
    ld h, b
    inc b
    sub $22
    dec b

jr_03c_7bbb:
    dec h
    dec b
    ld a, [hl+]
    ld b, $2e
    jr jr_03c_7bbb

    ld bc, $00e0
    call nc, $082e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $27
    inc b
    ld h, b
    inc b
    call nc, $0427
    ld h, b
    inc b
    sub $24
    dec b

jr_03c_7bd9:
    daa
    dec b
    inc l
    ld b, $30
    jr jr_03c_7bd9

    ld bc, $00e0
    call nc, $0830
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2e
    ld [$0460], sp
    call nc, $082e
    ld h, b
    inc b
    sub $29
    ld [$3026], sp
    ld sp, hl
    ld bc, $00e0
    call nc, $1026
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2e
    ld [$082d], sp
    ld l, $08
    jr nc, @+$0a

    sub $31
    ld [$082e], sp

jr_03c_7c12:
    jr nc, jr_03c_7c1c

    ld sp, $3308
    jr nz, jr_03c_7c12

    ld bc, $00e0

jr_03c_7c1c:
    call nc, $0833
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $30
    ld [$0831], sp
    inc sp
    ld [$0835], sp
    ld sp, $3308
    ld [$0835], sp
    scf
    inc h
    ld sp, hl
    ld bc, $00e0
    call nc, $0937
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $33
    add hl, bc
    dec [hl]
    add hl, bc
    scf
    add hl, bc
    add hl, sp
    ld b, d
    ld sp, hl
    ld bc, $00e0
    call nc, $1639
    jp nc, $1639

    rst $38
    ret nc

    jr nz, jr_03c_7c66

    ld sp, hl
    pop hl
    ldh [rP1], a
    or $01
    sub $26
    inc b
    ld h, b
    inc b
    call nc, $0426
    ld h, b
    inc b

jr_03c_7c66:
    sub $1d

jr_03c_7c68:
    dec b
    ld [hl+], a
    dec b
    ld h, $06
    add hl, hl
    db $10
    jr nz, jr_03c_7c76

    ld [hl+], a
    dec b
    daa
    ld b, $29

jr_03c_7c76:
    jr @+$2a

    inc b
    daa
    inc b
    ld h, $20
    or $02
    ld e, $18
    call nc, $081e
    sub $1e

jr_03c_7c86:
    dec b
    add hl, de
    dec b
    ld e, $06
    ld [hl+], a
    dec b
    ld e, $05
    ld [hl+], a
    ld b, $20
    jr jr_03c_7c68

    jr nz, jr_03c_7c9e

    sub $20
    dec b
    dec de
    dec b
    jr nz, @+$08

    inc h

jr_03c_7c9e:
    dec b
    jr nz, @+$07

    inc h
    ld b, $1d
    ld [$0460], sp
    call nc, $041d
    sub $16
    ld [$081d], sp
    ld [hl+], a
    jr jr_03c_7c86

    ld [hl+], a
    ld [$35d5], sp
    inc b
    ld h, b
    inc b
    ld l, $04
    db $d3
    dec [hl]
    inc b
    push de
    ld [hl-], a
    inc b
    db $d3
    ld l, $04
    push de
    add hl, hl
    inc b
    db $d3
    ld [hl-], a
    inc b
    sub $29
    ld [$0822], sp
    dec h
    ld [$0829], sp
    sub $2a
    jr nz, @-$2a

    ld a, [hl+]
    ld [$27d6], sp
    ld [$0829], sp
    ld a, [hl+]
    ld [$082c], sp
    daa
    ld [$0829], sp
    ld a, [hl+]
    ld [$082c], sp
    add hl, hl
    ld [$082a], sp
    inc l
    ld [$1b2e], sp
    call nc, $092e
    sub $2e
    add hl, bc
    dec hl
    add hl, bc
    dec l
    add hl, bc
    ld l, $09
    jr nc, jr_03c_7d42

    ld sp, hl
    ld bc, $00e0
    call nc, $1630
    jp nc, $1630

    rst $38
    ld h, b
    db $10
    or $0e
    ld d, $20
    call nc, $0816
    ld h, b
    ld [$0ef6], sp
    ld de, $f604
    rrca
    ld de, $f604
    ld c, $11
    inc b
    or $0f
    ld de, $f604
    ld c, $16
    ld [$16d4], sp
    ld [$0ef6], sp
    ld de, $d408
    ld de, $f608
    ld c, $16
    ld [$16d4], sp
    ld [$0ef6], sp
    inc d
    db $10
    ld [de], a
    db $10
    add hl, de

jr_03c_7d42:
    db $10
    ld e, $08
    add hl, de
    ld [$0412], sp
    or $0f
    ld [de], a
    inc b
    or $0e
    ld [de], a
    inc b
    or $0f
    ld [de], a
    inc b
    or $0e
    inc d
    db $10
    dec de
    db $10
    jr nz, jr_03c_7d65

    dec de
    ld [$0414], sp
    or $0f
    inc d
    inc b

jr_03c_7d65:
    or $0e
    inc d
    inc b
    or $0f
    inc d
    inc b
    or $0e
    ld d, $20
    call nc, $0816
    ld h, b
    ld [$0ef6], sp
    dec e
    dec b
    ld a, [de]
    dec b
    ld d, $06
    ld de, $0e10
    dec b
    ld a, [bc]
    dec b
    ld c, $06
    ld a, [de]
    db $10
    ld de, $f604
    rrca
    ld de, $f604
    ld c, $11
    ld [$201b], sp
    rrca
    db $10
    dec de
    inc b
    or $0f
    dec de
    inc b
    or $0e
    dec de
    inc b
    or $0f
    dec de
    inc b
    or $0e
    dec de
    jr nz, jr_03c_7db8

    db $10

jr_03c_7daa:
    dec de
    ld [$0ff6], sp
    dec de
    ld [$0ef6], sp
    dec e
    ld [de], a
    ld de, $f604
    rrca

jr_03c_7db8:
    ld de, $6005
    add hl, bc
    or $0e
    dec e
    inc h
    rra
    inc l
    ld hl, $f62c
    rrca
    ld hl, $ff16
    push de
    ld h, $05
    call nc, $0526
    ld h, $06
    sub $26
    jr nc, jr_03c_7daa

    ld h, $05
    call nc, $0526
    ld h, $06
    push de
    ld h, $02
    db $d3
    ld h, $02
    jp nc, $0426

    jp nc, $0226

    jp nc, $0226

    jp nc, $0426

    jp nc, $0226

    db $d3
    ld h, $02
    db $d3
    ld h, $04
    db $d3
    ld h, $02
    db $d3
    ld h, $02

jr_03c_7dfd:
    db $d3
    ld h, $04
    call nc, $0226
    call nc, $0226
    call nc, $0426
    call nc, $0226
    call nc, $0226
    call nc, $0426
    push de
    ld h, $02
    push de
    ld h, $02
    push de
    ld h, $04
    push de
    ld h, $02
    push de
    ld h, $02
    sub $26
    inc b
    sub $26
    jr nc, jr_03c_7dfd

    ld h, $05
    call nc, $0526
    ld h, $06
    push de
    ld h, $02
    db $d3
    ld h, $02
    jp nc, $0426

    jp nc, $0226

    jp nc, $0226

    jp nc, $0426

    jp nc, $0226

    db $d3
    ld h, $02
    db $d3
    ld h, $04
    db $d3
    ld h, $02
    db $d3
    ld h, $02

jr_03c_7e50:
    db $d3
    ld h, $04
    call nc, $0226
    call nc, $0226
    call nc, $0426
    call nc, $0226
    call nc, $0226
    call nc, $0426
    push de
    ld h, $02
    push de
    ld h, $02
    push de
    ld h, $04
    push de
    ld h, $02
    push de
    ld h, $02
    sub $26
    inc b
    sub $26
    jr nc, jr_03c_7e50

    ld h, $05
    call nc, $0526
    ld h, $06
    push de
    ld h, $02
    db $d3
    ld h, $02
    jp nc, $0426

    jp nc, $0226

    jp nc, $0226

    jp nc, $0426

    jp nc, $0226

    db $d3
    ld h, $02
    db $d3
    ld h, $04
    db $d3
    ld h, $02
    db $d3
    ld h, $02
    db $d3
    ld h, $04
    call nc, $0226
    call nc, $0226
    call nc, $0426
    call nc, $0226
    call nc, $0226
    call nc, $0426
    push de
    ld h, $02
    push de
    ld h, $02
    push de
    ld h, $04
    push de
    ld h, $02
    push de
    ld h, $02
    sub $26
    inc b
    push de
    ld h, $02
    db $d3
    ld h, $02
    jp nc, $0426

    pop de
    ld h, $02
    ret nc

    ld h, $02
    pop de
    ld h, $04
    pop de
    ld h, $02
    pop de
    ld h, $02
    pop de
    ld h, $04
    pop de
    ld h, $02
    jp nc, $0226

    jp nc, $0426

    jp nc, $0226

    jp nc, $0226

    jp nc, $0426

    db $d3
    ld h, $02
    db $d3
    ld h, $02
    db $d3
    ld h, $04
    push de
    ld h, $08
    ld h, $08
    ld h, $02
    db $d3
    ld h, $02
    jp nc, $0426

    pop de
    ld h, $02
    pop de
    ld h, $02
    pop de
    ld h, $04
    pop de
    ld h, $02
    pop de
    ld h, $02
    pop de
    ld h, $04
    jp nc, $0226

    jp nc, $0226

    jp nc, $0426

    jp nc, $0226

    db $d3
    ld h, $02
    db $d3
    ld h, $04
    db $d3
    ld h, $02
    db $d3
    ld h, $02
    db $d3
    ld h, $04
    push de
    ld h, $08
    ld h, $08
    ld h, $24
    ld h, $12
    ld h, $09
    ld h, $09
    ld h, $03
    db $d3
    ld h, $03
    jp nc, $0526

    jp nc, $0326

    jp nc, $0326

    jp nc, $0526

    jp nc, $0326

    db $d3
    ld h, $03
    db $d3
    ld h, $05
    db $d3
    ld h, $03
    db $d3
    ld h, $03
    db $d3
    ld h, $05
    push de
    ld h, $03
    db $d3
    ld h, $03
    jp nc, $0526

    jp nc, $0326

    jp nc, $0326

    db $d3
    ld h, $05
    db $d3
    ld h, $03
    db $d3
    ld h, $03
    db $d3
    ld h, $05
    db $d3
    ld h, $03
    call nc, $0326
    call nc, $1b26
    rst $38
    or $00
    db $dd
    ld hl, sp-$3c
    dec d
    ld a, [bc]
    ld hl, sp+$00
    sbc $f8
    scf
    ld de, $f80f
    nop
    rst $38
    or $02
    pop de
    ld b, l
    ld [$46d2], sp
    ld [$3fd3], sp
    ld [$40d4], sp
    ld [$45d6], sp
    ld [$46d8], sp
    ld [$3fd9], sp
    ld [$40da], sp
    ld [$45db], sp
    ld [$46d3], sp
    ld [$3fd2], sp
    ld [$e0d1], sp
    rlca
    ld b, b
    ld [$d9ff], sp
    ld c, l
    ld [$0850], sp
    ld c, a
    ld [$0850], sp
    ld c, l
    ld [$0850], sp
    ld c, a
    ld [$0850], sp
    rst $38
    ret c

    ldh [rSC], a
    dec sp
    ld a, [bc]
    dec a
    ld a, [bc]
    ld a, $0a
    ld b, l
    rrca
    rst $38
    ldh a, [$80]
    ld d, h
    ld bc, $80f0
    daa
    ld [bc], a
    ldh a, [$b0]
    dec d
    ld [bc], a
    ldh a, [$60]
    daa
    ld [bc], a
    ldh a, [$60]
    ld b, a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

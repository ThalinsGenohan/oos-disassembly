; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03d", ROMX

    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $02
    ret nc

    jr nz, jr_03d_402a

    sub $28
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4014

    sub $28

jr_03d_4014:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_401c

    sub $28

jr_03d_401c:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4024

    sub $28

jr_03d_4024:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_402c

jr_03d_402a:
    sub $28

jr_03d_402c:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, @+$06

    ld h, b
    ld [bc], a
    pop de
    jr z, jr_03d_403b

    sub $26
    inc b
    ld h, b

jr_03d_403b:
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $2b
    inc b
    ld h, b
    inc b
    db $d3
    dec hl
    inc b
    ld h, b
    inc b
    sub $2b
    inc b
    ld h, b
    inc b
    db $d3
    dec hl
    inc b
    ld h, b
    inc b
    sub $2a
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc b
    ld h, b
    inc b
    pop de
    ld a, [hl+]
    inc b
    ld h, b
    inc e
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    inc b
    ld h, b
    ld b, $d6
    ld a, [hl+]
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc b
    ld h, b
    inc b
    sub $2a
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_40b8

    ld h, b
    inc b
    sub $28

jr_03d_40b8:
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_40c2

    ld h, b
    inc b
    sub $2a

jr_03d_40c2:
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc b
    ld h, b
    inc b
    pop de
    ld a, [hl+]
    inc b
    ld h, b
    inc e
    sub $28
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_40d9

    sub $28

jr_03d_40d9:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_40e1

    sub $28

jr_03d_40e1:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_40e9

    sub $28

jr_03d_40e9:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_40f1

    sub $28

jr_03d_40f1:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, @+$06

    ld h, b
    ld b, $d6
    ld h, $04
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_410f

    ld h, b
    inc b
    sub $2a

jr_03d_410f:
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc b
    ld h, b

jr_03d_4116:
    inc b
    sub $2b
    inc b
    ld h, b
    inc b
    db $d3
    dec hl
    inc b
    ld h, b
    inc b
    sub $2a
    inc b
    ld h, b
    inc b

jr_03d_4126:
    db $d3
    ld a, [hl+]
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_4137

    ld h, b
    inc b
    sub $26

jr_03d_4137:
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b

jr_03d_413e:
    inc b
    sub $28
    jr jr_03d_4116

    jr z, jr_03d_414d

    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_4151

jr_03d_414d:
    ld h, b
    inc b
    sub $2b

jr_03d_4151:
    jr jr_03d_4126

    dec hl
    ld [$26d6], sp
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $28
    inc d
    db $d3
    jr z, jr_03d_4171

    ld h, b
    jr nz, jr_03d_413e

    jr z, @+$06

    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4171

    sub $28

jr_03d_4171:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4179

    sub $28

jr_03d_4179:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4181

    sub $28

jr_03d_4181:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4189

    sub $28

jr_03d_4189:
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_4193

    ld h, b
    inc b
    sub $26

jr_03d_4193:
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $2b
    inc b
    ld h, b
    inc b
    db $d3
    dec hl
    inc b
    ld h, b
    inc b
    sub $2b
    inc b
    ld h, b
    inc b
    db $d3
    dec hl
    inc b
    ld h, b
    inc b
    sub $2a
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc b
    ld h, b
    inc h
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    inc b
    ld h, b
    ld b, $d6
    dec l
    dec b
    ld h, b
    inc bc
    db $d3
    dec l
    dec b
    ld h, b
    inc bc
    sub $2f
    dec b
    ld h, b
    inc bc
    db $d3
    cpl
    dec b
    ld h, b
    inc bc
    sub $30
    dec b
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_420e

    ld h, b
    inc bc
    sub $32
    dec b

jr_03d_420e:
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    dec b
    ld h, b
    inc bc
    sub $30
    dec b
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_4222

    ld h, b
    inc hl
    sub $2f
    inc b

jr_03d_4222:
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    sub $2f
    inc b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    inc b
    ld h, b
    ld b, $d6
    jr nc, @+$06

    ld h, b
    inc b
    db $d3
    jr nc, jr_03d_4255

    ld h, b
    inc b
    sub $2f

jr_03d_4255:
    inc b
    ld h, b
    inc b
    db $d3
    cpl
    inc b
    ld h, b
    inc b
    sub $2d
    inc b
    ld h, b
    inc b
    db $d3
    dec l
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_4273

    ld h, b
    inc b
    sub $24

jr_03d_4273:
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $2b
    ld [$082a], sp
    jr z, jr_03d_428a

    ld h, $08
    jr z, jr_03d_42b6

    db $d3
    jr z, jr_03d_4299

    pop de

jr_03d_428a:
    jr z, jr_03d_4294

    ld h, b

jr_03d_428d:
    jr jr_03d_428d

    rlca
    ld b, b
    rst $38
    ld sp, hl
    nop

jr_03d_4294:
    ldh [rP1], a
    or $02
    ret nc

jr_03d_4299:
    jr nz, jr_03d_42bb

    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b

jr_03d_42b6:
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a

jr_03d_42bb:
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld b, $d6
    inc hl
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b
    inc b
    sub $23
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_42e5

    ld h, b
    inc b
    sub $28

jr_03d_42e5:
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_42ef

    ld h, b
    inc b
    sub $26

jr_03d_42ef:
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc h
    sub $28
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4301

    sub $28

jr_03d_4301:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4309

    sub $28

jr_03d_4309:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4311

    sub $28

jr_03d_4311:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4319

    sub $28

jr_03d_4319:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, @+$06

    ld h, b
    ld b, $d6
    ld h, $04
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc h
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld b, $d6
    inc hl
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_43a7

    ld h, b
    inc b
    sub $26

jr_03d_43a7:
    inc b
    ld h, b
    inc b

jr_03d_43aa:
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $23
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b

jr_03d_43c2:
    inc b
    sub $24
    inc d
    db $d3
    inc h
    inc c
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $26
    jr jr_03d_43aa

    ld h, $08
    sub $23
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b
    inc b
    sub $24
    inc d
    db $d3
    inc h
    inc c
    ld h, b
    jr nz, jr_03d_43c2

    inc h
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld b, $d6
    inc hl
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b
    inc b
    sub $23
    inc b
    ld h, b
    inc b
    db $d3
    inc hl
    inc b
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_443f

    ld h, b
    inc b
    sub $26

jr_03d_443f:
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc h
    sub $28
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4451

    sub $28

jr_03d_4451:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4459

    sub $28

jr_03d_4459:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4461

    sub $28

jr_03d_4461:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, jr_03d_4469

    sub $28

jr_03d_4469:
    inc b
    ld h, b
    ld [bc], a
    db $d3
    jr z, @+$06

    ld h, b
    ld b, $d6
    ld h, $04
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $26
    inc b
    ld h, b
    inc b
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $29
    inc b
    ld h, b
    inc b
    db $d3
    add hl, hl
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_449b

    ld h, b
    inc b
    sub $24

jr_03d_449b:
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc h
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    sub $2b
    inc b
    ld h, b
    ld [bc], a
    db $d3
    dec hl
    inc b
    ld h, b
    ld b, $d6
    dec l
    inc b
    ld h, b
    inc b
    db $d3
    dec l
    inc b
    ld h, b
    inc b
    sub $2b
    inc b
    ld h, b
    inc b
    db $d3
    dec hl
    inc b
    ld h, b
    inc b
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_44ed

    ld h, b
    inc b
    sub $24

jr_03d_44ed:
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    sub $21
    inc b
    ld h, b
    inc b
    db $d3
    ld hl, $6004
    add h
    cp $98
    ld b, d
    rst $38
    or $0e
    dec d
    jr nz, jr_03d_4529

    inc b
    ld h, b
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc a
    rla
    jr nz, jr_03d_4536

    jr nz, jr_03d_4544

    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b

jr_03d_4529:
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc c
    inc hl
    inc b
    ld h, b

jr_03d_4536:
    inc c
    inc hl
    inc b
    ld h, b
    inc c
    ld hl, $6004
    inc c
    ld hl, $6004
    inc c
    inc hl

jr_03d_4544:
    inc b
    ld h, b
    inc c
    dec d
    jr nz, jr_03d_456b

    inc b
    ld h, b
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc e
    rla
    inc a
    ld h, b
    inc b
    rla
    jr nz, @+$17

    ld [de], a
    ld h, b
    ld c, $15
    ld [$0860], sp

jr_03d_456b:
    rla
    inc e
    ld h, b
    inc b
    inc de
    inc b
    ld h, b
    inc c
    dec d
    inc d
    ld h, b
    inc c
    dec d
    jr nz, jr_03d_459b

    inc b
    ld h, b
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc b
    ld hl, $6004
    inc e
    rla
    inc d
    ld h, b
    inc c
    inc e
    dec b
    ld h, b
    dec bc
    ld a, [de]
    dec b
    ld h, b
    dec bc
    jr @+$22

jr_03d_459b:
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc e
    rla
    jr nz, jr_03d_45c2

    dec c
    ld h, b
    inc bc
    inc de
    dec c
    ld h, b
    inc bc
    dec d
    jr nz, @+$26

    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b

jr_03d_45c2:
    inc b
    inc h
    inc b
    ld h, b
    inc b
    inc h
    inc b
    ld h, b
    inc b
    or $0e
    inc h
    inc b
    or $0f
    inc h
    inc c
    or $0e
    inc e
    inc b
    or $0f
    inc e
    inc c
    or $0e
    inc e
    inc b
    or $0f
    inc e
    inc c
    or $0e
    jr jr_03d_45eb

    or $0f
    jr jr_03d_45f7

jr_03d_45eb:
    or $0e
    jr jr_03d_45f3

    or $0f
    jr @+$0e

jr_03d_45f3:
    or $0e
    dec d
    inc b

jr_03d_45f7:
    or $0f
    dec d
    inc c
    or $0e
    ld a, [de]
    jr nz, @+$17

    ld [$0860], sp
    ld [de], a
    jr nz, @+$17

    ld [$0860], sp
    ld c, $20
    cp $03
    ld b, l
    rst $38
    push de
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    ld h, $10
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $04
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    ld h, $02
    db $d3
    ld h, $04
    ld h, $02
    call nc, $0226
    call nc, $0426
    call nc, $0226
    push de
    ld h, $02
    ld h, $04
    cp $0f
    ld b, [hl]
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $26
    rlca
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $26
    inc bc
    db $d3
    ld h, $04
    sub $26
    inc bc
    db $d3
    ld h, $04
    sub $29
    ld d, h
    ld sp, hl
    ld bc, $00e0
    push de
    add hl, hl
    inc e
    pop de
    add hl, hl
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $28
    ld a, [hl+]
    db $d3
    jr z, jr_03d_481d

    sub $27
    ld c, $21
    rlca
    ld h, b
    inc bc
    db $d3
    ld hl, $2704
    ld c, $21
    rlca

jr_03d_481d:
    ld h, b
    inc bc
    pop de
    ld hl, $2704
    ld c, $21
    rlca
    ld h, b
    inc bc
    ret nc

    ld hl, $2704
    ld c, $21
    rlca
    ld h, b
    inc bc
    ret nc

    ld hl, $d604
    daa
    ld c, $2d
    rlca
    ld h, b
    inc bc
    db $d3
    dec l
    inc b
    push de
    inc sp
    ld c, $39
    rlca
    ld h, b
    inc bc
    jp nc, $0439

    db $d3
    daa
    ld c, $2d
    rlca
    ld h, b
    inc bc
    pop de
    dec l
    inc b
    jp nc, $0e33

    add hl, sp
    rlca
    ld h, b
    inc bc
    pop de
    add hl, sp
    inc b
    sub $29
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $29
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $29
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $2c
    ld d, h
    ld sp, hl
    ld bc, $00e0
    call nc, $382c
    jp nc, $1c2c

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2b
    ld c, $2c
    rlca
    dec hl
    rlca
    ld a, [hl+]
    ld c, $25
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    inc b
    ld a, [hl+]
    ld c, $25
    rlca
    ld h, b
    inc bc
    pop de
    dec h
    inc b
    ld a, [hl+]
    ld c, $25
    rlca
    ld h, b
    inc bc
    ret nc

    dec h
    inc b
    ld a, [hl+]
    ld c, $25
    rlca
    ld h, b
    inc bc
    ret nc

    dec h
    inc b
    sub $2b
    ld c, $25
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    inc b
    dec hl
    ld c, $25
    rlca
    ld h, b
    inc bc
    pop de
    dec h
    inc b
    sub $2b
    ld c, $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $2b04
    ld c, $31
    rlca
    ld h, b
    inc bc
    pop de
    ld sp, $d604
    dec l
    rlca
    inc [hl]
    rlca
    add hl, sp
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, sp
    inc b
    sub $2d
    rlca
    inc [hl]
    rlca
    add hl, sp
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, sp
    inc b
    sub $2e
    rlca
    dec [hl]
    rlca
    ld a, [hl-]
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl-]
    rlca
    ld h, b
    add hl, de
    sub $2d
    rlca
    inc [hl]
    rlca
    add hl, sp
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, sp
    inc b
    sub $2d
    rlca
    inc [hl]
    rlca
    add hl, sp
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, sp
    inc b
    sub $38
    rlca
    inc l
    inc bc
    ld h, b
    inc b
    inc l
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    rlca
    ld h, b
    add hl, de
    sub $2d
    rlca
    inc [hl]
    rlca
    sub $39
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, sp
    inc b
    sub $2e
    rlca
    dec [hl]
    rlca
    ld a, [hl-]
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl-]
    inc b
    sub $2f
    rlca
    ld [hl], $07
    dec sp
    rlca
    ld h, b
    inc bc
    db $d3
    dec sp
    inc b
    sub $30
    rlca
    scf
    rlca
    inc a
    rlca
    ld h, b
    inc bc
    db $d3
    inc a
    inc b
    sub $3e
    rlca
    dec a
    rlca
    ccf
    rlca
    ld a, $07
    dec a
    rlca
    inc a
    rlca
    ld a, $07
    dec a
    rlca
    inc a
    rlca
    dec sp
    rlca
    dec a
    rlca
    inc a
    rlca
    dec sp
    rlca
    ld a, [hl-]
    rlca
    inc a
    rlca
    dec sp
    rlca
    cp $e4
    ld b, a
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $15
    rlca
    ld h, b
    rlca
    rla
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $15
    rlca
    db $d3
    rla
    rlca
    sub $17
    rlca
    db $d3
    dec d
    rlca
    sub $18
    rlca
    db $d3
    rla
    rlca
    sub $1a
    rlca
    db $d3
    jr @+$09

    sub $1b
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $1a
    rlca
    db $d3
    dec de
    rlca
    sub $18
    rlca
    db $d3
    ld a, [de]
    rlca
    sub $17
    rlca
    db $d3
    jr @+$09

    sub $19
    rlca
    db $d3
    rla
    rlca
    sub $1b
    rlca
    inc e
    rlca
    add hl, de
    rlca
    inc e
    rlca
    dec de
    rlca
    inc e
    rlca
    ld a, [de]
    rlca
    dec e
    rlca
    inc e
    rlca
    dec e
    rlca
    ld a, [de]
    rlca
    dec e
    rlca
    inc e
    rlca
    dec e
    rlca
    add hl, de
    rlca
    inc e
    rlca
    dec de
    rlca
    inc e
    rlca
    add hl, de
    rlca
    inc e
    rlca
    dec de
    rlca
    inc e
    rlca
    jr @+$09

    dec de
    rlca
    ld a, [de]
    rlca
    dec de
    rlca
    jr jr_03d_4b3e

    dec de
    rlca
    ld a, [de]
    rlca
    dec de
    rlca
    add hl, de

jr_03d_4b3e:
    rlca
    inc e
    rlca
    dec de
    rlca
    inc e
    rlca
    ld a, [de]
    rlca
    dec e
    rlca
    inc e
    rlca
    dec e
    rlca
    dec de
    rlca
    ld e, $07
    dec e
    rlca
    ld e, $07
    inc e
    rlca
    rra
    rlca
    sub $1e
    rlca
    rra
    rlca
    ld a, [hl-]
    rlca
    add hl, sp
    rlca
    dec sp
    rlca
    ld a, [hl-]
    rlca
    add hl, sp
    rlca
    jr c, jr_03d_4b71

    ld a, [hl-]
    rlca
    add hl, sp
    rlca
    jr c, jr_03d_4b77

    scf

jr_03d_4b71:
    rlca
    add hl, sp
    rlca
    jr c, jr_03d_4b7d

    scf

jr_03d_4b77:
    rlca
    ld [hl], $07
    jr c, @+$09

    scf

jr_03d_4b7d:
    rlca
    cp $7c
    ld c, c
    rst $38
    or $0e
    ld c, $0e
    db $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $11
    ld c, $10
    ld c, $09
    inc bc
    ld h, b
    inc b
    add hl, bc
    inc bc
    ld h, b
    dec bc
    add hl, bc
    inc bc
    ld h, b
    inc b
    add hl, bc
    inc bc
    ld h, b
    inc b
    add hl, bc
    rlca
    ld h, b
    rlca
    add hl, bc
    inc bc
    ld h, b
    inc b
    ld a, [bc]
    inc bc
    ld h, b
    inc b
    ld a, [bc]
    rlca
    ld h, b
    rlca
    ld a, [bc]
    inc bc
    ld h, b
    inc b
    ld a, [bc]
    inc bc
    ld h, b
    inc b
    ld a, [bc]
    ld [bc], a
    ld h, b
    dec b
    ld a, [bc]
    ld [bc], a
    ld h, b
    dec b
    ld a, [bc]
    inc bc
    ld h, b
    inc b
    add hl, bc
    inc bc
    ld h, b
    inc b
    add hl, bc
    inc bc
    ld h, b
    dec bc
    add hl, bc
    inc bc
    ld h, b
    inc b
    add hl, bc
    inc bc
    ld h, b
    inc b
    add hl, bc
    rlca
    ld h, b
    rlca
    add hl, bc
    inc bc
    ld h, b
    inc b
    ld [$6003], sp
    inc b
    ld [$6007], sp
    rlca
    ld [$6003], sp
    inc b
    ld [$6003], sp
    inc b
    ld [$6002], sp
    dec b
    ld [$6002], sp
    dec b
    ld [$6003], sp
    inc b
    add hl, bc
    inc bc
    ld h, b
    inc b
    add hl, bc
    rlca
    ld h, b
    rlca
    add hl, bc
    inc bc
    ld h, b
    inc b
    ld a, [bc]
    inc bc
    ld h, b
    inc b
    ld a, [bc]
    rlca
    ld h, b
    rlca
    ld a, [bc]
    inc bc
    ld h, b
    inc b
    dec bc
    inc bc
    ld h, b
    inc b
    dec bc
    rlca
    ld h, b
    rlca
    dec bc
    inc bc
    ld h, b
    inc b
    inc c
    inc bc
    ld h, b
    inc b
    inc c
    rlca
    ld h, b
    rlca
    inc c
    rlca
    dec c
    rlca
    ld c, $07
    inc c
    rlca
    dec c
    rlca
    dec bc
    rlca
    inc c
    rlca
    ld a, [bc]
    rlca
    dec bc
    rlca
    add hl, bc
    rlca
    ld a, [bc]
    rlca
    ld [$0907], sp
    rlca
    rlca
    rlca
    ld [$0607], sp
    rlca
    rlca
    rlca
    cp $82
    ld c, e
    rst $38
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    ld a, [hl+]
    rlca
    jp nc, $072a

    jp nc, $072a

    ld a, [hl+]
    rlca
    ld a, [hl+]
    rlca
    call nc, $0726
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    ld h, $07
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    ld h, $07
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    ld h, $07
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    ld h, $07
    call nc, $0726
    db $d3
    ld h, $0e
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    db $d3
    ld h, $07
    call nc, $0726
    call nc, $0726
    cp $be
    ld c, h
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $15
    ld c, $14
    ld [$0e15], sp
    rla
    ld [$0e18], sp
    rla
    ld [$0e18], sp
    ld a, [de]
    ld [$0e1b], sp
    inc e
    ld [$0e1b], sp
    inc e
    ld [$2c60], sp
    dec l
    ld c, $2c
    ld [$0e2d], sp
    inc l
    ld [$0e2b], sp
    ld a, [hl+]
    ld [$0e2b], sp
    ld a, [hl+]
    ld [$0e29], sp
    jr z, @+$0a

    add hl, hl
    ld c, $28
    ld [$2c60], sp
    inc [hl]
    ld c, $33
    ld [$0e34], sp
    inc sp
    ld [$0e32], sp
    ld sp, $3208
    ld c, $31
    ld [$0e30], sp
    cpl
    ld [$0e30], sp
    cpl
    ld [$0e2e], sp
    dec l
    ld [$0e2e], sp
    sub $2d
    ld [$2c2c], sp
    add hl, hl
    ld d, $2c
    ld c, $29
    ld [$0728], sp
    ld h, b
    dec e
    ld h, $08
    inc h
    rlca
    ld h, b
    rrca
    inc hl
    rlca
    ld h, b
    rrca
    sub $28
    ld c, $27
    ld [$0e28], sp
    daa
    ld [$0728], sp
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_4f23

    ld h, b
    inc b
    sub $2d
    rlca
    ld h, b
    inc b

jr_03d_4f23:
    db $d3
    dec l
    rlca
    ld h, b
    inc b
    sub $27
    ld c, $26
    ld [$0e27], sp
    ld h, $08
    ld h, b
    inc bc
    db $d3
    ld h, $08
    ld h, b
    inc bc
    pop de
    ld h, $08
    ld h, b
    ld d, $d6
    jr z, jr_03d_4f4e

    daa
    ld [$0e28], sp
    daa
    ld [$0728], sp
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_4f54

    ld h, b

jr_03d_4f4e:
    inc b
    sub $2d
    rlca
    ld h, b
    inc b

jr_03d_4f54:
    db $d3
    dec l
    rlca
    ld h, b
    inc b
    sub $30
    ld c, $2c
    ld [$0e30], sp
    inc l
    ld [$0360], sp
    db $d3
    inc l
    ld [$0360], sp
    pop de
    inc l
    ld [$1660], sp
    sub $2d
    ld c, $2c
    ld [$0e2d], sp
    inc l
    ld [$072d], sp
    ld h, b
    inc b
    db $d3
    dec l
    rlca
    ld h, b
    inc b
    sub $30
    rlca
    ld h, b
    inc b
    db $d3
    jr nc, @+$09

    ld h, b
    inc b
    sub $2c
    ld c, $2b
    ld [$0e2c], sp
    dec hl
    ld [$0360], sp
    db $d3
    dec hl
    ld [$0360], sp
    pop de
    dec hl
    ld [$1660], sp
    sub $2d
    ld c, $2c
    ld [$0e2d], sp
    inc l
    ld [$072d], sp
    ld h, b
    inc b
    db $d3
    dec l
    rlca
    ld h, b
    inc b
    sub $34
    rlca
    ld h, b
    inc b
    db $d3
    inc [hl]
    rlca
    ld h, b
    inc b
    sub $33
    ld c, $34
    ld [$0e35], sp
    inc [hl]
    ld [$0360], sp
    db $d3
    inc [hl]
    ld [$0360], sp
    pop de
    inc [hl]
    ld [$2460], sp
    sub $2d
    ld [$0e28], sp
    ld h, b
    inc bc
    db $d3
    jr z, @+$07

    sub $28
    ld c, $27
    ld [$0360], sp
    db $d3
    daa
    ld [$0360], sp
    sub $26
    ld [$0724], sp
    ld h, b
    inc b
    db $d3
    inc h
    rlca
    ld h, b
    inc b
    sub $24
    ld c, $23
    ld [$0360], sp
    db $d3
    inc hl
    ld [$0360], sp
    sub $28
    ld [$0e27], sp
    jr z, @+$0a

    dec l
    rlca
    ld h, b
    inc b
    db $d3
    dec l
    inc bc
    sub $34
    ld [$0e33], sp
    ld h, b
    inc bc
    db $d3
    inc sp
    dec b
    sub $33
    ld c, $32
    ld [$0360], sp
    db $d3
    ld [hl-], a
    ld [$0360], sp
    sub $32
    ld [$0730], sp
    ld h, b
    inc b
    db $d3
    jr nc, @+$09

    ld h, b
    inc b
    sub $30
    ld c, $2f
    ld [$0360], sp
    db $d3
    cpl
    ld [$0360], sp
    sub $28
    inc bc
    ld h, b
    dec b
    jr z, jr_03d_5048

    ld h, b
    inc b
    db $d3
    jr z, @+$05

    sub $28

jr_03d_5048:
    ld [$1629], sp
    jr z, jr_03d_5054

    ld h, b
    inc b
    db $d3
    jr z, jr_03d_5059

    ld h, b
    inc b

jr_03d_5054:
    sub $2b
    ld d, $28
    rlca

jr_03d_5059:
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_5065

    ld h, b
    inc b
    sub $29
    ld d, $28
    rlca

jr_03d_5065:
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_5071

    ld h, b
    inc b
    sub $2b
    ld d, $28
    rlca

jr_03d_5071:
    ld h, b
    inc b
    db $d3
    jr z, jr_03d_507d

    ld h, b
    ld e, h
    sub $28
    rlca
    inc l
    rlca

jr_03d_507d:
    ld l, $08
    inc l
    rlca
    ld l, $07
    ld [hl-], a
    ld [$072e], sp
    ld [hl-], a
    rlca
    inc [hl]
    ld [$0732], sp
    inc [hl]
    rlca
    ld a, [hl-]
    ld [$a0fe], sp
    ld c, [hl]
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    pop de
    dec d
    dec bc
    db $d3
    dec d
    ld c, $14
    ld [$0e15], sp
    rla
    ld [$0e18], sp
    rla
    ld [$0e18], sp
    ld a, [de]
    ld [$0e1b], sp
    inc e
    ld [$0e1b], sp
    inc e
    ld [$2c60], sp
    dec l
    ld c, $2c
    ld [$0e2d], sp
    inc l
    ld [$0e2b], sp
    ld a, [hl+]
    ld [$0e2b], sp
    ld a, [hl+]
    ld [$0e29], sp
    jr z, jr_03d_50d5

    add hl, hl
    ld c, $28
    ld [$2160], sp
    sub $2d

jr_03d_50d5:
    inc l
    inc l
    inc l
    dec hl
    inc l
    ld a, [hl+]
    inc l
    add hl, hl
    inc l
    ld h, $2c
    inc hl
    rlca
    ld h, b
    rlca
    db $d3
    inc hl
    ld [$0760], sp
    pop de
    inc hl
    rlca
    ld h, b
    ld [$20d6], sp
    rlca
    ld h, b
    rlca
    db $d3
    jr nz, jr_03d_50fe

    ld h, b
    rlca
    pop de
    jr nz, @+$09

    ld h, b
    inc de
    db $d3

jr_03d_50fe:
    jr z, jr_03d_510e

    daa
    ld [$0e28], sp
    daa
    ld [$0728], sp
    ld h, b
    inc b
    pop de
    jr z, jr_03d_5114

    ld h, b

jr_03d_510e:
    inc b
    db $d3
    dec l
    rlca
    ld h, b
    inc b

jr_03d_5114:
    pop de
    dec l
    rlca
    ld h, b
    inc b
    db $d3
    daa
    ld c, $26
    ld [$0e27], sp
    ld h, $08
    ld h, b
    inc bc
    pop de
    ld h, $08
    ld h, b
    inc bc
    ret nc

    ld h, $08
    ld h, b
    ld d, $d3
    jr z, jr_03d_513f

    daa
    ld [$0e28], sp
    daa
    ld [$0728], sp
    ld h, b
    inc b
    pop de
    jr z, jr_03d_5145

    ld h, b

jr_03d_513f:
    inc b
    db $d3
    dec l
    rlca
    ld h, b
    inc b

jr_03d_5145:
    pop de
    dec l
    rlca
    ld h, b
    inc b
    db $d3
    jr nc, jr_03d_515b

    inc l
    ld [$0e30], sp
    inc l
    ld [$0360], sp
    pop de
    inc l
    ld [$0360], sp
    ret nc

jr_03d_515b:
    inc l
    ld [$1660], sp
    db $d3
    dec l
    ld c, $2c
    ld [$0e2d], sp
    inc l
    ld [$072d], sp
    ld h, b
    inc b
    pop de
    dec l
    rlca
    ld h, b
    inc b
    db $d3
    jr nc, jr_03d_517b

    ld h, b
    inc b
    pop de
    jr nc, @+$09

    ld h, b
    inc b

jr_03d_517b:
    db $d3
    inc l
    ld c, $2b
    ld [$0e2c], sp
    dec hl
    ld [$0360], sp
    pop de
    dec hl
    ld [$0360], sp
    ret nc

    dec hl
    ld [$1660], sp
    db $d3
    dec l
    ld c, $2c
    ld [$0e2d], sp
    inc l
    ld [$072d], sp
    ld h, b
    inc b
    pop de
    dec l
    rlca
    ld h, b
    inc b
    db $d3
    inc [hl]
    rlca
    ld h, b
    inc b
    pop de
    inc [hl]
    rlca
    ld h, b
    inc b
    db $d3
    inc sp
    ld c, $34
    ld [$0e35], sp
    inc [hl]
    ld [$0360], sp
    pop de
    inc [hl]
    ld [$0360], sp
    ret nc

    inc [hl]
    ld [$2460], sp
    db $d3
    dec l
    ld [$0e28], sp
    ld h, b
    inc bc
    pop de
    jr z, @+$07

    db $d3
    jr z, jr_03d_51dc

    daa
    ld [$0360], sp
    pop de
    daa
    ld [$0360], sp
    db $d3
    ld h, $08
    inc h
    rlca

jr_03d_51dc:
    ld h, b
    inc b
    pop de
    inc h
    rlca
    ld h, b
    inc b
    db $d3
    inc h
    ld c, $23
    ld [$0360], sp
    pop de
    inc hl
    ld [$0360], sp
    db $d3
    jr z, jr_03d_51fa

    daa
    dec bc
    sub $30
    rlca
    ld h, b
    inc b
    db $d3

jr_03d_51fa:
    jr nc, @+$05

    sub $30
    ld [$0e2f], sp
    ld h, b
    inc bc
    db $d3
    cpl
    dec b
    sub $2f
    ld c, $2e
    ld [$0360], sp
    db $d3
    ld l, $08
    ld h, b
    inc bc
    sub $2e
    ld [$072c], sp
    ld h, b
    inc b
    db $d3
    inc l
    rlca
    ld h, b
    inc b
    sub $2c
    ld c, $28
    ld [$0360], sp
    db $d3
    jr z, jr_03d_5230

    ld h, b
    inc bc
    sub $24
    inc bc
    ld h, b
    dec b
    inc h

jr_03d_5230:
    rlca
    ld h, b
    inc b
    db $d3
    inc h
    inc bc
    sub $24
    ld [$25d6], sp
    ld d, $24
    rlca
    ld h, b
    inc b
    db $d3
    inc h
    rlca
    ld h, b
    inc b
    sub $27
    ld d, $24
    rlca
    ld h, b
    inc b
    db $d3
    inc h
    rlca
    ld h, b
    inc b
    sub $25
    ld d, $24
    rlca
    ld h, b
    inc b
    db $d3
    inc h
    rlca
    ld h, b
    inc b
    sub $27
    ld d, $24
    rlca
    ld h, b
    inc b
    db $d3
    inc h
    rlca
    ld h, b
    ld h, a
    jr z, @+$09

    inc l
    rlca
    ld l, $08
    inc l
    rlca
    ld l, $07
    ld [hl-], a
    ld [$072e], sp
    ld [hl-], a
    rlca
    inc [hl]
    ld [$0732], sp
    inc [hl]
    inc b
    cp $9b
    ld d, b
    rst $38
    or $0e
    add hl, bc
    rlca
    ld h, b
    dec h
    ld de, $6007
    dec h
    rrca
    inc h
    db $10
    ld [$0ff6], sp
    db $10
    ld [$0660], sp
    or $0e
    db $10
    ld [$0e12], sp
    inc d
    ld [$0ef6], sp
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0b
    inc h
    db $10
    ld [$0ff6], sp
    db $10
    ld [$0660], sp
    or $0e
    inc e
    ld [$0e1b], sp
    ld a, [de]
    ld [$0e18], sp
    rla
    ld [$0e18], sp
    rla
    ld [$0e16], sp
    dec d
    ld [$0e16], sp
    dec d
    ld [$0e14], sp
    inc de
    ld [$0e14], sp
    inc de
    ld [$0e12], sp
    ld de, $1208
    ld c, $11
    ld [$2c10], sp
    ld de, $122c
    inc l
    inc d
    inc l
    or $0e
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0f
    inc h
    db $10
    ld [$0ff6], sp
    db $10
    ld [$0660], sp
    or $0e
    db $10
    ld d, $12
    inc bc
    inc d
    dec b
    or $0e
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0f
    ld c, $10
    ld [$0e0f], sp
    db $10
    ld [$0ff6], sp
    db $10
    ld [$0660], sp
    or $0e
    db $10
    ld d, $12
    inc bc
    inc d
    dec b
    or $0e
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0e
    inc h
    rrca
    ld [$0ff6], sp
    rrca
    ld [$0660], sp
    or $0e
    db $10
    ld d, $12
    inc bc
    inc d
    dec b
    or $0e
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0f
    ld c, $10
    ld [$0e11], sp
    db $10
    ld [$0ff6], sp
    db $10
    ld [$0e60], sp
    or $0e
    db $10
    ld d, $f6
    ld c, $15
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0e
    inc h
    db $10
    ld [$0ff6], sp
    db $10
    ld [$2460], sp
    or $0e
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld e, $f6
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    ld h, b
    ld e, $f6
    ld c, $0e
    rlca
    or $0f
    ld c, $07
    ld h, b
    ld [$0ef6], sp
    ld c, $0e
    db $10
    ld [$0ff6], sp
    db $10
    ld [$2460], sp
    or $0e
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    and d
    or $0e
    rrca
    ld c, $10
    ld [$0e0f], sp
    db $10
    ld [$0e18], sp
    rla
    ld [$0ff6], sp
    rla
    ld [$0660], sp
    or $0e
    ld d, $60
    cp $83
    ld d, d
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    jr z, @-$2a

    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc h
    db $d3
    ld a, [hl+]
    ld [$2ed2], sp
    ld d, $d3
    ld a, [hl+]
    ld b, d
    db $d3
    ld a, [hl+]
    inc l
    jp nc, $0e2e

    db $d3
    ld a, [hl+]
    ld d, $d3
    ld a, [hl+]
    ld [$2ed2], sp
    ld d, $d0
    db $d3
    ld a, [hl+]
    ld d, $d4
    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc l
    jp nc, $0e2e

    db $d3
    ld a, [hl+]
    ld d, $d3
    db $d3
    ld a, [hl+]
    ld [$d2d4], sp
    ld l, $16
    ld h, b
    ld d, $d4
    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc l
    jp nc, $0e2e

    db $d3
    ld a, [hl+]
    ld d, $d3
    db $d3
    ld a, [hl+]
    ld [$d2d4], sp
    ld l, $16
    ld h, b
    ld d, $d4
    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc l
    jp nc, $0e2e

    db $d3
    ld a, [hl+]
    ld d, $d3
    db $d3
    ld a, [hl+]
    ld [$d2d4], sp
    ld l, $16
    ld h, b
    ld d, $d4
    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc l
    jp nc, $0e2e

    db $d3
    ld a, [hl+]
    ld d, $d3
    db $d3
    ld a, [hl+]
    ld [$d2d4], sp
    ld l, $16
    ld h, b
    ld d, $d4
    db $d3
    ld a, [hl+]
    inc l
    db $d3
    ld a, [hl+]
    inc l
    jp nc, $0e2e

    db $d3
    ld a, [hl+]
    ld d, $d3
    db $d3
    ld a, [hl+]
    ld [$d2d4], sp
    ld l, $16
    jp nc, $162e

    db $d3
    ld a, [hl+]
    ld c, $d3
    ld a, [hl+]
    ld [$2ed2], sp
    ld d, $d3
    ld a, [hl+]
    ld c, $d3
    ld a, [hl+]
    ld [$2ed2], sp
    ld d, $d3
    ld a, [hl+]
    ld c, $d3
    ld a, [hl+]
    ld [$2ed2], sp
    ld d, $d3
    ld a, [hl+]
    ld c, $d3
    ld a, [hl+]
    ld [$2ed2], sp
    ld c, $d3
    ld a, [hl+]
    ld [$2ad3], sp
    ld c, $d3
    ld a, [hl+]
    ld [$2ad3], sp
    ld c, $d3
    ld a, [hl+]
    ld d, $d3
    ld a, [hl+]
    ld d, $d3
    ld a, [hl+]
    ld [$2ad3], sp
    rlca
    db $d3
    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    ld [$2ad3], sp
    rlca
    db $d3
    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    ld [$2ad3], sp
    rlca
    db $d3
    ld a, [hl+]
    rlca
    db $d3
    ld a, [hl+]
    ld [$03fe], sp
    ld d, h
    rst $38
    ld sp, hl
    nop
    ldh [rTIMA], a
    or $02
    sub $33
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, hl
    pop hl
    ldh [rP1], a
    jr z, jr_03d_5613

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr z, jr_03d_55de

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $27
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    daa
    rrca
    ld sp, hl

jr_03d_55de:
    pop hl
    ldh [rP1], a
    sub $26
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld h, $0f
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $25
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec h
    rrca
    ld sp, hl
    nop
    ldh [$03], a
    sub $24
    rrca
    rra
    rrca
    ld e, $0f
    inc h
    rrca
    rra
    rrca
    ld e, $0f
    push de
    jr nc, jr_03d_561c

    dec hl
    rrca
    ld a, [hl+]
    rrca
    jr nc, @+$11

jr_03d_5613:
    dec hl
    rrca
    ld a, [hl+]
    rrca
    ldh [rDIV], a
    call nc, $0f3c

jr_03d_561c:
    scf
    rrca
    call nc, $0f36
    call nc, $0f3c
    scf
    rrca
    call nc, $0f36
    ldh [rTIMA], a
    db $d3
    ld c, b
    rrca
    ld b, e
    rrca
    ld b, d
    rrca
    db $d3
    ld c, b
    rrca
    ld b, e
    rrca
    ld b, d
    rrca
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $26
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld h, $0f
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $25
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec h
    rrca
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $24
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc h
    rrca
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $23
    ld c, e
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc hl
    rrca
    ld sp, hl
    nop
    ldh [$03], a
    sub $21
    rrca
    inc e
    rrca
    dec de
    rrca
    ld hl, $1c0f
    rrca
    dec de
    rrca
    push de
    dec l
    rrca
    jr z, jr_03d_5696

    daa
    rrca
    dec l
    rrca
    jr z, jr_03d_569c

    daa
    rrca
    ldh [rDIV], a
    call nc, $0f39
    inc [hl]
    rrca

jr_03d_5696:
    inc sp
    rrca
    add hl, sp
    rrca
    inc [hl]
    rrca

jr_03d_569c:
    inc sp
    rrca
    ldh [rTIMA], a
    db $d3
    ld b, l
    rrca
    ld b, b
    rrca
    ccf
    rrca
    ld b, l
    rrca
    ld b, b
    rrca
    ccf
    rrca
    cp $fb
    ld d, h
    rst $38
    ld sp, hl
    nop
    ldh [rTIMA], a
    or $02
    pop de
    inc sp
    rrca
    db $d3
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    call nc, $0f2b
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    inc sp
    rrca
    dec l
    rrca
    inc l
    rrca
    daa
    rrca
    inc l
    rrca
    dec l
    rrca
    ld sp, $d40f
    dec hl
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    dec hl
    rrca
    ld sp, $2b0f
    rrca
    ld a, [hl+]
    rrca
    dec h
    rrca
    ld a, [hl+]
    rrca
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $23
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc hl
    ld e, $f9
    pop hl
    ldh [rP1], a
    sub $22
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld [hl+], a
    ld e, $f9
    pop hl
    ldh [rP1], a
    sub $21
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld hl, $f91e
    pop hl
    ldh [rP1], a
    sub $20
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nz, jr_03d_57d1

    ld h, b
    rrca
    ld sp, hl
    nop
    ldh [$03], a
    call nc, $0f24
    rra
    rrca
    ld e, $0f
    inc h
    rrca
    rra
    rrca
    ld e, $0f
    db $d3
    jr nc, @+$11

    db $d3
    dec hl
    rrca
    ld a, [hl+]
    rrca
    jr nc, jr_03d_57df

    dec hl

jr_03d_57d1:
    rrca
    ld a, [hl+]
    rrca
    jp nc, $0f3c

    jp nc, $0f37

    ld [hl], $0f
    inc a
    rrca
    scf

jr_03d_57df:
    rrca
    ld [hl], $0f
    pop de
    ld c, b
    rrca
    pop de
    ld b, e
    rrca
    pop de
    ld b, d
    rrca
    pop de
    ld c, b
    rrca
    pop de
    ld b, e
    rrca
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $16
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld d, $1e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $15
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec d
    ld e, $f9
    pop hl
    ldh [rP1], a
    sub $14
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc d
    ld e, $f9
    pop hl
    ldh [rP1], a
    sub $13
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc de
    ld e, $60
    dec bc
    ld sp, hl
    nop
    ldh [$03], a
    db $d3
    ld hl, $1c0f
    rrca
    dec de
    rrca
    ld hl, $1c0f
    rrca
    jp nc, $0f1b

    dec l
    rrca
    jr z, jr_03d_5850

    daa
    rrca
    dec l
    rrca
    jr z, jr_03d_5856

    daa
    rrca
    jp nc, $0f39

    inc [hl]
    rrca
    inc sp
    rrca

jr_03d_5850:
    jp nc, $0f39

    inc [hl]
    rrca
    inc sp

jr_03d_5856:
    rrca
    pop de
    ld b, l
    rrca
    ld b, b
    rrca
    pop de
    ccf
    rrca
    ld b, l
    rrca
    pop de
    ld b, b
    rrca
    ccf
    inc b
    cp $b1
    ld d, [hl]
    rst $38
    or $0e
    inc d
    and l
    rrca
    rrca
    or $0e
    inc d
    ld [$0ff6], sp
    inc d
    rlca
    or $0e
    inc d
    ld [$0ff6], sp
    inc d
    rlca
    or $0e
    ld h, b
    sub [hl]
    inc de
    and l
    dec c
    rrca
    or $0e
    inc de
    ld [$0ff6], sp
    inc de
    rlca
    or $0e
    inc de
    ld [$0ff6], sp
    inc de
    rlca
    or $0e
    ld h, b
    sub [hl]
    inc d
    and l
    dec de
    rrca
    or $0e
    inc d
    ld [$0ff6], sp
    inc d
    rlca
    or $0e
    inc d
    ld [$0ff6], sp
    inc d
    rlca
    or $0e
    ld h, b
    sub [hl]
    inc de
    and l
    add hl, de
    rrca
    or $0e
    inc de
    ld [$0ff6], sp
    inc de
    rlca
    or $0e
    inc de
    ld [$0ff6], sp
    inc de
    rlca
    or $0e
    ld h, b
    sub [hl]
    inc d
    ld a, [hl+]
    ld h, b
    inc bc
    inc d
    rrca
    ld h, b
    rrca
    inc d
    rlca
    ld h, b
    ld [$0714], sp
    ld h, b
    ld [$1914], sp
    ld h, b
    dec b
    inc d
    add hl, de
    ld h, b
    dec b
    inc d
    rlca
    ld h, b
    ld [$0714], sp
    ld h, b
    ld [$1914], sp
    ld h, b
    dec b
    inc d
    add hl, de
    ld h, b
    dec b
    inc d
    rlca
    ld h, b
    ld [$0714], sp
    ld h, b
    ld [$1914], sp
    ld h, b
    dec b
    inc d
    add hl, de
    ld h, b
    dec b
    inc d
    rrca
    ld [de], a
    ld a, [hl+]
    ld h, b
    inc bc
    ld [de], a
    rrca
    ld h, b
    rrca
    ld [de], a
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rrca
    dec e
    rlca
    ld h, b
    ld [$191d], sp
    ld h, b
    dec b
    dec e
    add hl, de
    ld h, b
    dec b
    dec e
    rrca
    inc e
    rlca
    ld h, b
    ld [$191c], sp
    ld h, b
    dec b
    inc e
    add hl, de
    ld h, b
    dec b
    inc e
    rlca
    ld h, b
    ld [$071b], sp
    ld h, b
    ld [$191b], sp
    ld h, b
    dec b
    dec de
    add hl, de
    ld h, b
    dec b
    dec de
    rlca
    ld h, b
    ld [$071a], sp
    ld h, b
    ld [$191a], sp
    ld h, b
    dec b
    ld a, [de]
    add hl, de
    ld h, b
    dec b
    ld a, [de]
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rlca
    ld h, b
    ld [$0712], sp
    ld h, b
    ld [$1912], sp
    ld h, b
    dec b
    ld [de], a
    add hl, de
    ld h, b
    dec b
    ld [de], a
    rlca
    ld h, b
    ld [$6afe], sp
    ld e, b
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    sub $33
    ld c, $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    jr nc, jr_03d_59e4

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_59e9

    ld h, b
    inc b

jr_03d_59e4:
    pop de
    jr nc, jr_03d_59ee

    sub $2f

jr_03d_59e9:
    ld c, $30
    rlca
    ld h, b
    inc bc

jr_03d_59ee:
    db $d3
    jr nc, jr_03d_59f5

    sub $31
    rlca
    ld h, b

jr_03d_59f5:
    inc bc
    db $d3
    ld sp, $d604
    inc sp
    ld c, $36
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl], $04
    sub $33
    rlca
    ld [hl-], a
    rlca
    ld sp, $2f07
    rlca
    ld h, b
    rlca
    db $d3
    cpl
    rlca
    sub $2f
    ld c, $30
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_5a1f

    sub $31
    rlca
    ld h, b

jr_03d_5a1f:
    inc bc
    db $d3
    ld sp, $d604
    inc sp
    ld c, $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    jr nc, jr_03d_5a3f

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_5a44

    ld h, b
    inc b

jr_03d_5a3f:
    pop de
    jr nc, jr_03d_5a49

    sub $2f

jr_03d_5a44:
    ld c, $30
    rlca
    ld h, b
    inc bc

jr_03d_5a49:
    db $d3
    jr nc, jr_03d_5a50

    sub $31
    rlca
    ld h, b

jr_03d_5a50:
    inc bc
    db $d3
    ld sp, $6007
    inc b
    pop de
    ld sp, $f607
    ld [bc], a
    rst $10
    ld b, d
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, d
    inc b
    rst $10
    ld b, d
    rlca
    sub $41
    rlca
    ld b, d
    rlca
    ld b, c
    rlca
    sub $42
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, d
    inc b
    sub $41
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, c
    inc b
    sub $42
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, d
    rlca
    ld h, b
    inc b
    pop de
    ld b, d
    rlca
    or $01
    sub $33
    ld c, $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    jr nc, jr_03d_5aa8

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_5aad

    ld h, b
    inc b

jr_03d_5aa8:
    pop de
    jr nc, jr_03d_5ab2

    sub $2f

jr_03d_5aad:
    ld c, $30
    rlca
    ld h, b
    inc bc

jr_03d_5ab2:
    db $d3
    jr nc, jr_03d_5ab9

    sub $31
    rlca
    ld h, b

jr_03d_5ab9:
    inc bc
    db $d3
    ld sp, $d604
    inc sp
    ld c, $36
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl], $04
    sub $33
    rlca
    ld [hl-], a
    rlca
    ld sp, $2f07
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    rlca
    ld h, b
    inc b
    sub $2f
    ld c, $30
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_5ae5

    sub $31
    rlca
    ld h, b

jr_03d_5ae5:
    inc bc
    db $d3
    ld sp, $d604
    inc sp
    ld c, $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $31
    rlca
    ld h, b
    inc bc
    db $d3
    ld sp, $d604
    jr nc, jr_03d_5b05

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_5b0a

    ld h, b
    inc b

jr_03d_5b05:
    pop de
    jr nc, jr_03d_5b0f

    sub $2f

jr_03d_5b0a:
    rlca
    ld h, b
    inc bc
    db $d3
    cpl

jr_03d_5b0f:
    inc b
    sub $30
    rlca
    ld sp, $d607
    ld [hl-], a
    rlca
    inc sp
    rlca
    ld h, b
    ld c, $f6
    ld [bc], a
    rst $10
    ld b, [hl]
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, [hl]
    inc b
    rst $10
    ld b, [hl]
    rlca
    sub $45
    rlca
    ld b, [hl]
    rlca
    ld b, l
    rlca
    sub $46
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, [hl]
    inc b
    sub $45
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, l
    inc b
    sub $46
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, [hl]
    rlca
    ld h, b
    inc b
    pop de
    ld b, [hl]
    ld b, $60
    ld bc, $01f6
    cp $c8
    ld e, c
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    ret nc

    jr nz, jr_03d_5b6c

    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b

jr_03d_5b6c:
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    or $02
    sub $3f
    rlca
    ld h, b
    inc bc
    db $d3
    ccf
    inc b
    sub $3f
    rlca
    ld a, $07
    ccf
    rlca
    ld a, $07
    ccf
    rlca
    ld h, b
    inc bc
    db $d3
    ccf
    inc b
    sub $3e
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, $04
    sub $3f
    rlca
    ld h, b
    inc bc
    db $d3
    ccf
    rlca
    ld h, b
    inc b
    pop de
    ccf
    rlca
    ld h, b
    ld c, $f6
    ld bc, $20d6
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    sub $20
    ld c, $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    db $d3
    daa
    rlca
    ld h, b
    inc b
    pop de
    daa
    rlca
    or $02
    sub $42
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, d
    inc b
    sub $42
    rlca
    ld b, c
    rlca
    ld b, d
    rlca
    ld b, c
    rlca
    ld b, d
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, d
    inc b
    sub $41
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, c
    inc b
    sub $42
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, d
    rlca
    ld h, b
    inc b
    pop de
    ld b, d
    ld b, $60
    ld bc, $01f6
    cp $5b
    ld e, e
    rst $38
    or $0e
    inc e
    dec b
    or $0f
    inc e
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    rla
    dec b
    or $0f
    rla
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    inc e
    dec b
    or $0f
    inc e
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    rla
    dec b
    or $0f
    rla
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    inc e
    dec b
    or $0f
    inc e
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    rla
    dec b
    or $0f
    rla
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    inc e
    dec d
    or $0f
    inc e
    rlca
    or $0e
    rla
    rlca
    or $0f
    rla
    rlca
    or $0e
    inc e
    dec d
    or $0f
    inc e
    rlca
    or $0e
    dec de
    rlca
    or $0f
    dec de
    rlca
    or $0e
    inc e
    rlca
    or $0f
    inc e
    ld c, $60
    rlca
    or $0e
    inc e
    dec b
    or $0f
    inc e
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    rla
    dec b
    or $0f
    rla
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    inc e
    dec b
    or $0f
    inc e
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    rla
    dec b
    or $0f
    rla
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    inc e
    dec b
    or $0f
    inc e
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    rla
    dec b
    or $0f
    rla
    rrca
    ld h, b
    ld [$0ef6], sp
    inc hl
    dec b
    or $0f
    inc hl
    rrca
    ld h, b
    ld [$0ef6], sp
    inc e
    dec d
    or $0f
    inc e
    rlca
    or $0e
    rla
    rlca
    or $0f
    rla
    rlca
    or $0e
    inc e
    inc e
    or $0e
    rla
    rlca
    or $0f
    rla
    rlca
    or $0e
    inc e
    rlca
    or $0f
    inc e
    ld c, $60
    rlca
    cp $94
    ld e, h
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $01
    sub $2f
    ld a, [hl+]
    inc l
    ld c, $28
    ld c, $23
    ld c, $24
    ld a, [hl+]
    jr z, jr_03d_5df9

    dec hl
    ld c, $30
    ld c, $2f
    ld a, [bc]
    ld h, b
    inc b
    or $02
    dec sp
    inc bc
    ld a, [hl-]
    inc b

jr_03d_5df9:
    dec sp
    inc bc
    ld a, [hl-]
    inc b
    dec sp
    inc bc
    ld h, b
    inc b
    db $d3
    dec sp
    inc bc
    ld h, b
    inc b
    sub $47
    inc bc
    ld b, [hl]
    inc b
    ld b, a
    inc bc
    ld b, [hl]
    inc b
    ld b, a
    inc bc
    ld h, b
    inc b
    db $d3
    ld b, a
    inc bc
    ld h, b
    inc b
    or $01
    sub $23
    ld c, $24
    dec bc
    ld h, b
    inc bc
    or $02
    jr nc, @+$05

    cpl
    inc b
    jr nc, @+$05

    cpl
    inc b
    jr nc, jr_03d_5e30

    ld h, b
    inc b
    db $d3

jr_03d_5e30:
    jr nc, @+$05

    ld h, b
    inc b
    sub $3c
    inc bc
    dec sp
    inc b
    inc a
    inc bc
    dec sp
    inc b
    inc a
    inc bc
    ld h, b
    inc b
    db $d3
    inc a
    inc bc
    ld h, b
    ld [de], a
    or $01
    sub $2f
    ld a, [hl+]
    inc l
    ld c, $28
    ld c, $2c
    ld c, $2d
    rlca
    inc l
    rlca
    dec l
    rlca
    inc l
    rlca
    dec l
    ld c, $2f
    ld c, $30
    ld c, $2d
    ld c, $2f
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $34
    rlca
    inc sp
    rlca
    inc [hl]
    rlca
    ld h, b
    inc bc
    db $d3
    inc [hl]
    inc b
    sub $2c
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
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
    dec l
    rlca
    inc l
    rlca
    ld a, [hl+]
    rlca
    jr z, jr_03d_5eba

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr z, jr_03d_5eb3

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2b
    jr c, jr_03d_5ece

    inc e
    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b
    or $02
    sub $3b
    rlca

jr_03d_5eb3:
    ld a, [hl-]
    rlca
    dec sp
    rlca
    ld h, b
    inc bc
    db $d3

jr_03d_5eba:
    dec sp
    inc b
    sub $47
    rlca
    ld b, [hl]
    rlca
    ld b, a
    rlca
    ld h, b
    inc bc
    db $d3
    ld b, a
    rlca
    ld h, b
    dec bc
    or $01
    sub $2b

jr_03d_5ece:
    ld a, [hl+]
    jr z, jr_03d_5edf

    inc h
    ld c, $2b
    rlca
    db $d3
    dec hl
    rlca
    sub $2a
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]

jr_03d_5edf:
    inc b
    or $02
    sub $2f
    inc bc
    ld l, $04
    cpl
    inc bc
    ld l, $04
    cpl
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    sub $3b
    inc bc
    ld a, [hl-]
    inc b
    dec sp
    inc bc
    ld a, [hl-]
    inc b
    dec sp
    rlca
    ld h, b
    inc bc
    db $d3
    dec sp
    rlca
    ld h, b
    dec bc
    or $01
    sub $33
    rlca
    ld h, b
    inc bc
    db $d3
    inc sp
    rlca
    sub $31
    inc b
    inc sp
    inc bc
    ld sp, $2f04
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
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
    sub $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    rlca
    sub $30
    inc b
    ld [hl-], a
    inc bc
    jr nc, jr_03d_5f39

    cpl
    rlca
    ld h, b
    inc bc

jr_03d_5f39:
    db $d3
    cpl
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
    or $02
    sub $34
    rlca
    ld h, b
    inc bc
    db $d3
    inc [hl]
    inc b
    sub $33
    inc bc
    inc [hl]
    inc b
    inc sp
    inc bc
    inc [hl]
    inc b
    ld l, $03
    cpl
    inc b
    ld l, $03

jr_03d_5f5f:
    cpl
    inc b
    ld h, b
    inc bc
    db $d3
    cpl
    inc b
    ld h, b
    rlca
    sub $2a
    inc bc
    dec hl
    inc b
    ld a, [hl+]
    inc bc
    dec hl
    inc b
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    ld h, b
    rlca
    sub $27
    inc bc
    jr z, jr_03d_5f81

    daa
    inc bc
    jr z, @+$06

jr_03d_5f81:
    ld h, b
    inc bc
    db $d3
    jr z, jr_03d_5f8a

    ld h, b
    rlca
    or $01

jr_03d_5f8a:
    sub $23
    ld c, $25
    ld c, $26
    ld c, $27
    ld c, $fe
    sbc $5d
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02

jr_03d_5f9d:
    db $fd
    rst $38
    ret nc

    jr nz, jr_03d_5f5f

    db $d3
    dec sp
    inc bc
    ld a, [hl-]
    inc b
    db $d3
    dec sp
    inc bc
    ld a, [hl-]
    inc b
    db $d3
    dec sp
    inc bc
    ld h, b
    inc b
    pop de
    dec sp
    inc bc
    ld h, b
    inc b
    db $d3
    ld b, a
    inc bc
    ld b, [hl]
    inc b
    ld b, a
    inc bc
    ld b, [hl]
    inc b
    db $d3
    ld b, a
    inc bc
    ld h, b
    inc b
    pop de
    ld b, a
    inc bc
    ld h, b
    jr nz, jr_03d_5f9d

    jr nc, @+$05

    cpl
    inc b
    jr nc, @+$05

    cpl
    inc b
    jr nc, jr_03d_5fd7

    ld h, b
    inc b
    pop de

jr_03d_5fd7:
    jr nc, jr_03d_5fdc

    ld h, b
    inc b
    db $d3

jr_03d_5fdc:
    inc a
    inc bc
    dec sp
    inc b
    db $d3
    inc a
    inc bc
    dec sp
    inc b
    inc a
    inc bc
    ld h, b
    inc b
    pop de
    inc a
    inc bc
    ld h, b
    rst $38
    ld h, b
    push bc
    db $d3
    dec sp
    rlca
    ld a, [hl-]
    rlca
    dec sp
    rlca
    ld h, b
    inc bc
    pop de
    dec sp
    inc b
    db $d3
    ld b, a
    rlca
    ld b, [hl]
    rlca
    ld b, a
    rlca
    ld h, b
    inc bc
    pop de
    ld b, a
    rlca
    ld h, b
    ld e, b
    db $d3
    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    pop de
    ld a, [hl+]
    rlca
    ld h, b
    inc b
    db $d3
    cpl
    inc bc
    ld l, $04
    cpl
    inc bc
    ld l, $04
    cpl
    rlca
    ld h, b
    inc bc
    pop de
    cpl
    inc b
    db $d3
    dec sp
    inc bc
    ld a, [hl-]
    inc b
    dec sp
    inc bc
    ld a, [hl-]
    inc b
    dec sp
    rlca
    ld h, b
    inc bc
    pop de
    dec sp
    rlca
    ld h, b
    ld l, $fd
    nop
    sub $3d
    inc b
    ccf
    dec b
    dec a
    dec b
    dec sp
    rlca
    ld h, b
    inc bc
    db $d3
    dec sp
    rlca
    ld h, b
    inc b
    pop de
    dec sp
    rlca
    ld h, b
    ld a, [hl+]
    sub $3c
    inc b
    ld a, $05
    inc a
    dec b
    dec sp
    rlca
    ld h, b
    inc bc
    db $d3
    dec sp
    rlca
    ld h, b
    inc b
    pop de
    dec sp
    rlca
    ld h, b
    dec d
    db $d3
    inc sp
    inc bc
    inc [hl]
    inc b
    inc sp
    inc bc
    inc [hl]
    inc b
    ld l, $03
    cpl
    inc b
    ld l, $03
    cpl
    inc b
    ld h, b
    inc bc
    pop de
    cpl
    inc b
    ld h, b
    rlca
    db $d3
    ld a, [hl+]
    inc bc
    dec hl
    inc b
    ld a, [hl+]
    inc bc
    dec hl
    inc b
    ld h, b
    inc bc
    pop de
    dec hl
    inc b
    ld h, b
    rlca
    db $d3
    daa
    inc bc
    jr z, jr_03d_6093

    daa
    inc bc
    jr z, @+$06

jr_03d_6093:
    ld h, b
    inc bc
    pop de
    jr z, jr_03d_609c

    ld h, b

jr_03d_6099:
    jr c, jr_03d_6099

    sbc l

jr_03d_609c:
    ld e, a
    rst $38
    or $0e
    inc e
    inc e
    or $0e
    inc hl
    rlca
    or $0f
    inc hl
    rlca
    ld h, b
    ld c, $f6
    ld c, $23
    rlca
    or $0f
    inc hl
    rlca
    ld h, b
    ld c, $f6
    ld c, $1d
    inc e
    or $0e
    ld hl, $f607
    rrca
    ld hl, $6007
    ld c, $f6
    ld c, $21
    rlca
    or $0f
    ld hl, $6007
    ld c, $f6
    ld c, $1c
    inc e
    or $0f
    inc e
    ld c, $60
    ld a, [hl+]
    or $0e
    rla
    inc e
    or $0f
    rla
    ld c, $60
    ld a, [hl+]
    or $0e
    inc e
    inc e
    or $0e
    inc hl
    rlca
    or $0f
    inc hl
    rlca
    ld h, b
    ld c, $f6
    ld c, $23
    rlca
    or $0f
    inc hl
    rlca
    ld h, b
    ld c, $f6
    ld c, $1d
    inc e
    ld hl, $f607
    rrca
    ld hl, $6007
    ld c, $f6
    ld c, $21
    rlca
    or $0f
    ld hl, $6007
    ld c, $f6
    ld c, $17
    dec d
    or $0f
    rla
    ld a, [bc]
    ld h, b
    dec [hl]
    or $0e
    rla
    ld c, $19
    rlca
    dec de
    rlca
    inc e
    ld c, $17
    ld c, $14
    ld c, $10
    ld c, $f6
    rrca
    db $10
    rlca
    ld h, b
    dec d
    or $0e
    jr jr_03d_613b

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03d_613b:
    ld c, $18
    rlca
    or $0f
    jr @+$09

    ld h, b
    ld c, $f6
    ld c, $17
    rlca
    or $0f
    rla
    rlca
    ld h, b
    ld b, [hl]
    or $0e
    jr @+$1e

    inc e
    inc e
    rra
    inc e
    rla
    ld c, $f6
    rrca
    rla
    rlca
    ld h, b
    ccf
    or $0e
    ld e, $38
    rla
    rlca
    or $0f
    rla
    rlca
    ld h, b
    ld c, $f6
    ld c, $1d
    jr c, @-$08

    ld c, $17
    rlca
    or $0f
    rla
    rlca
    ld h, b
    ld c, $f6
    ld c, $1c
    rlca
    or $0f
    inc e
    rlca
    ld h, b
    ld b, [hl]
    or $0e
    rla
    ld d, h
    cp $9e
    ld h, b
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    ret c

    rla
    inc bc
    ret c

    inc e
    inc b
    dec e
    inc bc
    inc hl
    inc b
    inc hl
    inc bc
    rst $10
    jr z, jr_03d_61a3

    add hl, hl
    inc bc
    cpl
    inc b

jr_03d_61a3:
    ret c

    cpl
    inc bc
    ret c

    inc [hl]
    inc b
    dec [hl]
    inc bc
    dec sp
    inc b
    dec sp
    inc bc
    rst $10
    ld b, b
    inc b
    ld b, c
    inc bc
    ld b, a
    inc l
    ld h, b
    ld [bc], a
    push de
    ld b, a
    ld [bc], a
    ld h, b
    ld [bc], a
    call nc, $0347
    ld h, b
    ld [bc], a
    call nc, $0247
    ld h, b
    inc bc
    rst $10
    add hl, hl
    ld c, $2c
    ld c, $30
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03d_61d7

    rst $10
    cpl
    ld a, [hl+]
    inc l

jr_03d_61d7:
    ld c, $29
    ld c, $33
    rlca
    ld h, b
    inc bc
    db $d3
    inc sp
    inc b
    rst $10
    ld [hl-], a
    ld b, [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld [hl-], a
    ld c, $f9
    pop hl
    ldh [rP1], a
    rst $10
    ld sp, $300e
    ld c, $2f
    ld c, $2e
    ld c, $2c
    ld c, $2b
    inc e
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec hl
    ld c, $f9
    pop hl
    ldh [rP1], a
    ret c

    add hl, hl
    ld c, $d8
    dec hl
    inc b
    inc l
    dec b
    dec hl
    ld c, e
    ld sp, hl
    ld bc, $00e0
    call nc, $0e2b
    ld sp, hl
    pop hl
    ldh [rP1], a
    ret c

    add hl, hl
    ld c, $2b
    ld c, $29
    ld c, $23
    ld d, h
    ld sp, hl
    ld bc, $00e0
    call nc, $0e23
    ld sp, hl
    pop hl
    ldh [rP1], a
    ret c

    inc h
    ld c, $26
    ld c, $28
    ld c, $29
    ld c, $2b
    ld c, $2c
    ld c, $2e
    ld c, $d8
    cpl
    inc b
    jr nc, @+$07

    cpl
    cpl
    ld sp, hl
    ld bc, $00e0
    call nc, $0e2f
    ld sp, hl
    pop hl
    ldh [rP1], a
    ret c

    inc l
    ld c, $2b
    ld c, $29
    ld c, $28
    rlca
    ld h, b
    inc bc
    call nc, $0428
    ret c

    dec hl
    ld b, [hl]
    ld sp, hl
    ld bc, $00e0
    call nc, $1c2b
    ld sp, hl
    pop hl
    ldh [rP1], a
    ret c

    add hl, hl
    ld c, $24
    rlca
    add hl, hl
    rlca
    inc h
    rlca
    add hl, hl
    rlca
    inc h
    rlca
    ld h, b
    rlca
    push de
    add hl, hl
    ld c, $24
    rlca
    add hl, hl
    rlca
    inc h
    rlca
    add hl, hl
    rlca
    inc h
    rlca
    ld h, b
    rlca
    ret c

    jr z, @+$10

    inc hl
    rlca
    jr z, jr_03d_6299

    inc hl
    rlca
    jr z, jr_03d_629d

    inc hl
    rlca
    ld h, b

jr_03d_6299:
    rlca
    push de
    jr z, jr_03d_62ab

jr_03d_629d:
    inc hl
    rlca
    jr z, jr_03d_62a8

    inc hl
    rlca
    jr z, @+$09

    inc hl
    rlca
    ld h, b

jr_03d_62a8:
    rlca
    ret c

    add hl, hl

jr_03d_62ab:
    ld c, $24
    rlca
    add hl, hl
    rlca
    inc h
    rlca
    add hl, hl
    rlca
    ret c

    cpl
    inc bc
    ret c

    jr nc, jr_03d_62e1

    ld sp, hl
    ld bc, $00e0
    call nc, $0e30
    ld sp, hl
    pop hl
    ldh [rP1], a
    ret c

    ld l, $07
    jr nc, jr_03d_62d1

    ld sp, $300e
    ld c, $2e
    ld c, $2c

jr_03d_62d1:
    ld c, $2a
    ld c, $d4
    ld a, [hl+]
    ld c, $d8
    ld sp, $d40e
    ld sp, $d80e
    jr nc, @+$10

    add hl, hl

jr_03d_62e1:
    rlca
    jr nc, jr_03d_62eb

    add hl, hl
    rlca
    jr nc, jr_03d_62ef

    add hl, hl
    rlca
    ld h, b

jr_03d_62eb:
    rlca
    push de
    jr nc, jr_03d_62fd

jr_03d_62ef:
    add hl, hl
    rlca
    jr nc, jr_03d_62fa

    add hl, hl
    rlca
    jr nc, @+$09

    add hl, hl
    rlca
    ld h, b

jr_03d_62fa:
    rlca
    ret c

    cpl

jr_03d_62fd:
    ld c, $28
    rlca
    cpl
    rlca
    jr z, jr_03d_630b

    cpl
    rlca
    jr z, jr_03d_630f

    ld h, b
    rlca
    push de

jr_03d_630b:
    cpl
    ld c, $28
    rlca

jr_03d_630f:
    cpl
    rlca
    jr z, jr_03d_631a

    cpl
    rlca
    jr z, jr_03d_631e

    ld h, b
    rlca
    ret c

jr_03d_631a:
    dec l
    ld c, $26
    rlca

jr_03d_631e:
    add hl, hl
    rlca
    ld h, $07
    add hl, hl
    rlca
    ld h, $0e
    call nc, $0e26
    ld h, b
    inc e
    ret c

    dec [hl]
    ld c, $36
    rlca
    ld h, b
    rlca
    call nc, $0e35
    ld [hl], $07
    ld h, b
    rlca
    jp nc, $0e35

    ld [hl], $07
    ld h, b
    rlca
    pop de
    dec [hl]
    ld c, $36
    rlca
    ld h, b
    add l
    cp $c7
    ld h, c
    rst $38
    ret nc

    jr nz, jr_03d_6357

    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    call nc, $0317

jr_03d_6357:
    inc e
    inc b
    dec e
    inc bc
    inc hl
    inc b
    inc hl
    inc bc
    jr z, jr_03d_6365

    add hl, hl
    inc bc
    cpl
    inc b

jr_03d_6365:
    cpl
    inc bc
    inc [hl]
    inc b
    dec [hl]
    inc bc
    dec sp
    inc b
    dec sp
    inc bc
    ld b, b
    inc b
    ld b, c
    inc bc
    ld b, a
    inc b
    ld h, b
    cpl
    ret c

    jr @+$10

    add hl, de
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $18
    ld c, $19
    ld c, $1a
    ld c, $1b
    ld c, $1a
    ld c, $1b
    ld c, $1a
    ld c, $1b
    ld c, $19
    ld c, $1a
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $14
    ld c, $14
    ld c, $15
    ld c, $15
    ld c, $16
    ld c, $d8
    jr nz, @+$2c

    call nc, $0e20
    ret c

    jr nz, @+$09

    ld h, b
    inc bc
    call nc, $0420
    ret c

    jr nz, jr_03d_6417

    inc h
    ld c, $20
    ld c, $1f
    ld a, [hl+]
    call nc, $0e1f
    ret c

    rra
    rlca
    ld h, b
    inc bc

jr_03d_6417:
    call nc, $041f
    ret c

    rra
    ld c, $22
    ld c, $1f
    ld c, $20
    ld a, [hl+]
    call nc, $0e20
    ret c

    jr nz, @+$09

    ld h, b
    inc bc
    call nc, $0420
    ret c

    jr nz, jr_03d_643f

    inc h
    ld c, $20
    ld c, $22
    inc e
    inc hl
    inc e
    inc h
    inc e
    ld h, $0e
    jr z, @+$10

jr_03d_643f:
    add hl, hl
    rlca
    ld h, b
    inc bc
    call nc, $0729
    ld h, b
    inc b
    jp nc, $0729

    ret c

    jr nz, jr_03d_646a

    call nc, $0e20
    ret c

    inc h
    ld c, $29
    ld c, $2c
    ld c, $2b
    rlca
    ld h, b
    inc bc
    call nc, $072b
    ld h, b
    inc b
    jp nc, $072b

    ret c

    rra
    inc e
    call nc, $0e1f

jr_03d_646a:
    ret c

jr_03d_646b:
    inc hl
    ld c, $28
    ld c, $2b
    ld c, $1d
    ld a, [hl+]
    call nc, $0e1d
    ret c

    ld hl, $260e
    ld c, $29
    ld c, $2d
    ld c, $2e
    rlca
    ld h, b
    inc bc
    call nc, $072e
    ld h, b
    inc b
    jp nc, $072e

    ld h, b
    inc bc
    pop de
    ld l, $07
    ld h, b
    jr nz, jr_03d_646b

    dec h
    ld c, $24
    ld c, $23
    ld c, $d4
    inc hl
    ld c, $d8
    inc hl
    ld c, $22
    ld c, $21
    ld c, $d4
    ld hl, $d80e
    ld hl, $200e
    ld c, $1f
    ld c, $fe
    ld [hl], a
    ld h, e
    rst $38
    or $0e
    dec bc
    ld [hl], b
    or $01
    ld de, $120e
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $11
    ld c, $12
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $14
    ld c, $13
    ld c, $14
    ld c, $12
    ld c, $13
    ld c, $0c
    ld c, $0d
    ld c, $0c
    ld c, $0d
    ld c, $0e
    ld c, $0f
    ld c, $10
    ld c, $11
    ld c, $f6
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    dec d
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    dec d
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    ld de, $f607
    rrca
    ld de, $f607
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $13
    rlca
    or $0f
    inc de
    rlca
    or $0e
    inc de
    dec d
    or $0f
    inc de
    rlca
    or $0e
    inc de
    rlca
    or $0f
    inc de
    rlca
    or $0e
    jr @+$09

    or $0f
    jr @+$09

    or $0e
    jr jr_03d_6600

    or $0f
    jr @+$09

    or $0e
    jr @+$09

    or $0f
    jr @+$09

    or $0e
    ld de, $f607
    rrca
    ld de, $f607

jr_03d_6600:
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    dec d
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    dec d
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    ld c, $07
    or $0f
    ld c, $15
    or $0e
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    ld c, $15
    or $0f
    ld c, $07
    or $0e
    ld c, $07
    or $0f
    ld c, $07
    or $0e
    jr @+$09

    or $0f
    jr jr_03d_669d

    ld h, b
    rlca
    or $0e
    inc c
    ld d, h
    or $0f
    inc c
    inc c
    ld h, b
    ld h, h
    cp $b5

jr_03d_669d:
    ld h, h
    rst $38
    ld h, b
    ld [hl], b
    push de
    ld h, $2a
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $0e
    ld h, $1c
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $2a
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $0e
    ld h, $1c
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $2a
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $0e
    ld h, $1c
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $2a
    ld h, $07
    ld h, $07
    ld h, $1c
    ld h, $15
    ld h, $02
    ld h, $02
    ld h, $03
    ld h, $0e
    ld h, $1c
    ld h, $07
    ld h, $07
    ld h, $0e
    ld h, $0e
    ld h, $07
    ld h, $07
    ld h, $07
    ld h, $07
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $0e
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    push de
    ld h, $0e
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    db $d3
    ld l, $46
    push de
    ld h, $0e
    call nc, $2a26
    push de
    ld h, $0e
    call nc, $2a26
    push de
    ld h, $04
    call nc, $0526
    db $d3
    ld h, $05
    cp $a1
    ld h, [hl]
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    sub $23
    inc l
    dec h
    ld b, d
    db $d3
    dec h
    ld d, $d6
    dec h
    inc l
    daa
    ld b, d
    db $d3
    daa
    ld d, $d6
    daa
    inc l
    jr z, @+$2e

    dec hl
    inc l
    ld l, $2c
    ld sp, $342c
    inc l
    scf
    inc l
    sub $3a
    inc bc
    ld h, b
    inc bc
    ld a, $05
    call nc, $033a
    sub $3a
    inc bc
    call nc, $053e
    ld h, b
    inc bc
    ld a, [hl-]
    inc bc
    sub $3a
    dec b
    ld h, b
    rlca
    call nc, $043a
    sub $3a
    inc bc
    ld h, b
    inc bc
    ld a, $05
    call nc, $033a
    sub $3a
    inc bc
    call nc, $053e
    ld h, b
    inc bc
    ld a, [hl-]
    inc bc
    sub $3a
    dec b
    ld h, b
    rlca
    call nc, $043a
    sub $3a
    inc bc
    ld h, b
    inc bc
    ld a, $05
    call nc, $033a
    sub $3a
    inc bc
    call nc, $053e
    ld h, b
    inc bc
    ld a, [hl-]
    inc bc
    sub $3a
    dec b
    ld h, b
    rlca
    call nc, $043a
    sub $3a
    inc bc
    ld h, b
    inc bc
    ld a, $05
    call nc, $033a
    sub $3a
    inc bc
    call nc, $053e
    ld h, b
    inc bc
    ld a, [hl-]
    inc bc
    sub $3a
    dec b
    ld h, b
    rlca
    call nc, $043a
    sub $3e
    dec bc
    ld b, c
    dec bc
    ld b, h
    dec bc
    ld c, b
    dec bc
    ld h, b
    ld e, b
    sub $25
    inc l
    daa
    ld b, d
    db $d3
    daa
    ld d, $d6
    daa
    inc l
    add hl, hl
    ld b, d
    db $d3
    add hl, hl
    ld d, $d6
    add hl, hl
    inc l
    sub $2a
    inc l
    dec l
    inc l
    jr nc, @+$2e

    inc sp
    inc l
    ld [hl], $2c
    add hl, sp
    inc l
    inc a
    inc bc
    ld h, b
    inc bc
    ld b, b
    dec b
    call nc, $033c
    sub $3c
    inc bc
    call nc, $0540
    ld h, b
    inc bc
    inc a
    inc bc
    sub $3c
    dec b
    ld h, b
    rlca
    call nc, $043c
    sub $3c
    inc bc
    ld h, b
    inc bc
    ld b, b
    dec b
    call nc, $033c
    sub $3c
    inc bc
    call nc, $0540
    ld h, b
    inc bc
    inc a
    inc bc
    sub $3c
    dec b
    ld h, b
    rlca
    call nc, $043c
    sub $3c
    inc bc
    ld h, b
    inc bc
    ld b, b
    dec b
    call nc, $033c
    sub $3c
    inc bc
    call nc, $0540
    ld h, b
    inc bc
    inc a
    inc bc
    sub $3c
    dec b
    ld h, b
    rlca
    call nc, $043c
    sub $3c
    inc bc
    ld h, b
    inc bc
    ld b, b
    dec b
    db $d3
    inc a
    inc bc
    sub $3c
    inc bc
    db $d3
    ld b, b
    dec b
    ld h, b
    inc bc
    inc a
    inc bc
    sub $3c
    dec b
    ld h, b
    rlca
    db $d3
    inc a
    inc b
    sub $40
    dec bc
    ld b, e
    dec bc
    ld b, [hl]
    dec bc
    ld c, b
    dec bc
    ld h, b
    ld e, b
    cp $5b
    ld l, b
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    rst $10
    ld e, $2c
    jr nz, jr_03d_69eb

    db $d3
    jr nz, jr_03d_69ac

    rst $10
    jr nz, @+$2e

    ld [hl+], a
    ld c, l
    db $d3
    ld [hl+], a
    dec bc
    rst $10
    ld [hl+], a
    inc l

jr_03d_69ac:
    inc hl
    inc l
    ld h, $2c
    add hl, hl
    inc l
    inc l
    inc l
    cpl
    inc l
    ld [hl-], a
    inc l
    inc [hl]
    or b
    ld h, b
    db $10
    db $d3
    ld a, $0b
    ld b, c
    dec bc
    ld b, h
    dec bc
    ld c, b
    dec bc
    ld h, b
    ld c, b
    sub $20
    inc l
    ld [hl+], a
    ld c, l
    db $d3
    ld [hl+], a
    dec bc
    sub $22
    inc l
    inc h
    ld c, l
    db $d3
    inc h
    dec bc
    sub $24
    inc l
    dec h
    inc l
    jr z, @+$2e

    dec hl
    inc l
    ld l, $2c
    ld sp, $342c
    inc l
    ld [hl], $b0
    ld h, b
    db $10
    db $d3

jr_03d_69eb:
    ld b, b
    dec bc
    ld b, e
    dec bc
    ld b, [hl]
    dec bc
    ld c, b
    dec bc
    ld h, b
    ld c, b
    cp $99
    ld l, c
    rst $38
    or $0e
    inc de
    inc l
    dec d
    ld b, d
    ld h, b
    ld d, $15
    inc l
    rla
    ld b, d
    ld h, b
    ld d, $17
    inc l
    jr jr_03d_6a37

    inc e
    inc l
    rra
    inc l
    ld [hl+], a
    inc l
    dec h
    inc l
    jr z, jr_03d_6a41

    dec hl
    or b
    ld h, b
    add h
    dec d
    inc l
    rla
    ld b, d
    ld h, b
    ld d, $17
    inc l
    add hl, de
    ld b, d
    ld h, b
    ld d, $19
    inc l
    ld a, [de]
    inc l
    ld e, $2c
    ld hl, $242c
    inc l
    daa
    inc l
    ld a, [hl+]
    inc l
    dec l
    or b
    ld h, b
    add h

jr_03d_6a37:
    cp $f9
    ld l, c
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    or $02

jr_03d_6a41:
    sub $2e
    dec bc
    jr nc, jr_03d_6a51

    ld sp, $330b
    dec bc
    dec [hl]
    inc l
    inc sp
    ld d, $38
    ld d, $3a

jr_03d_6a51:
    dec bc
    ld h, b
    dec b
    db $d3
    ld a, [hl-]
    ld b, $d6
    dec [hl]
    dec bc
    inc sp
    dec bc
    dec [hl]
    inc l
    inc sp
    ld d, $38
    ld d, $3c
    inc bc
    dec a
    inc bc
    inc a
    db $10
    ld a, [hl-]
    dec bc
    jr c, @+$0d

    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    ld b, $d6
    ld a, [hl-]
    dec bc
    jr c, jr_03d_6a83

    dec [hl]
    ld d, $33
    dec bc
    ld sp, $2e0b
    dec bc
    ld h, b
    dec b
    db $d3

jr_03d_6a83:
    ld l, $06
    sub $35
    dec bc
    inc sp
    dec bc
    dec [hl]
    inc l
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec [hl]
    ld d, $f9
    pop af
    ldh [rP1], a
    sub $3a
    dec bc
    ld h, b
    dec b
    db $d3
    ld a, [hl-]
    ld b, $d6
    inc a
    dec bc
    dec a
    dec bc
    ccf
    dec bc
    ld h, b
    dec b
    db $d3
    ccf
    ld b, $d6
    ccf
    ld hl, $0b3c
    ld b, c
    dec bc
    ccf
    inc bc
    ld b, c
    inc bc
    ccf
    dec b
    dec a
    dec bc
    inc a
    dec bc
    ld a, [hl-]
    inc l
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, [hl-]
    dec bc
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $3c
    dec bc
    dec a
    dec bc
    ld b, c
    dec bc
    ld b, e
    dec bc
    ld b, h
    dec b
    ld b, e
    ld b, $41
    dec bc
    ccf
    dec bc
    ld b, c
    inc l
    ccf
    dec b
    ld h, b
    ld bc, $3fd4
    rlca
    ld h, b
    ld bc, $3fd3
    dec b
    ld h, b
    inc bc
    sub $3d
    dec b
    ld h, b
    ld bc, $3dd4
    rlca
    ld h, b
    ld bc, $3dd3
    dec b
    ld h, b
    inc bc
    sub $3c
    dec b
    ld h, b
    ld bc, $3cd4
    rlca
    ld h, b
    ld bc, $3cd3
    dec b
    ld h, b
    inc bc
    sub $3a
    dec b
    ld h, b
    ld bc, $3ad3
    rlca
    ld h, b
    ld bc, $3ad3
    dec b
    ld h, b
    inc bc
    sub $2e
    ld d, $35
    ld d, $33
    ld d, $35
    dec bc
    ld [hl], $0b
    jr c, jr_03d_6b3a

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr c, jr_03d_6b41

    pop de
    jr c, jr_03d_6b39

    ld h, b
    dec bc
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $3a
    ld d, $41
    dec bc

jr_03d_6b39:
    ld h, b

jr_03d_6b3a:
    dec b
    db $d3
    ld b, c
    ld b, $d6
    ccf
    dec bc

jr_03d_6b41:
    dec a
    dec bc
    inc a
    ld d, $3d
    ld d, $3c
    ld d, $3a
    dec bc
    jr c, @+$0d

    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    ld b, $d6
    ld a, [hl-]
    dec bc
    jr c, jr_03d_6b64

    dec [hl]
    rlca
    ld h, b
    inc b
    dec [hl]
    dec bc
    inc sp
    dec bc
    ld sp, $2e0b

jr_03d_6b64:
    dec b
    ld h, b
    ld bc, $2ed5
    rlca
    ld h, b
    ld bc, $2ed4
    dec b
    ld h, b
    inc bc
    sub $35
    dec b
    ld h, b
    ld bc, $35d4
    rlca
    ld h, b
    ld bc, $35d3
    dec b
    ld h, b
    inc bc
    sub $3a
    dec b
    ld h, b
    ld b, $d5
    ld a, [hl-]
    dec b
    ld h, b
    ld b, $d4
    ld a, [hl-]
    dec b
    ld h, b
    daa
    sub $3a
    dec bc
    inc a
    dec bc
    dec a
    dec bc
    ccf
    dec bc
    ld b, c
    dec bc
    ld h, b
    dec b
    db $d3
    ld b, c
    ld b, $d6
    ccf
    dec bc
    dec a
    dec bc
    inc a
    dec bc
    ld a, [hl-]
    dec bc
    inc a
    dec bc
    ld a, [hl-]
    dec bc
    jr c, jr_03d_6bb9

    dec [hl]
    dec bc
    ld h, b
    dec b
    db $d3
    dec [hl]
    dec bc
    ld h, b
    ld b, $d6
    ld a, [hl-]

jr_03d_6bb9:
    dec bc
    ld h, b
    dec b
    db $d3
    ld a, [hl-]
    ld b, $d6
    dec [hl]
    ld d, $3f
    dec bc
    dec a
    dec bc
    inc a
    dec bc
    dec a
    dec b
    inc a
    ld b, $3a
    dec bc
    jr c, jr_03d_6bdb

    ld a, [hl-]
    ld d, $33
    dec bc
    dec [hl]
    dec bc
    inc sp
    ld d, $31
    rlca
    inc sp

jr_03d_6bdb:
    rlca
    ld sp, $3008
    rlca
    ld sp, $3007
    ld [$072c], sp
    ld l, $07
    inc l
    ld [$052e], sp
    ld h, b
    ld bc, $2ed4
    rlca
    ld h, b
    add hl, bc
    sub $33
    dec b
    ld h, b
    ld bc, $33d4
    rlca
    ld h, b
    add hl, bc
    sub $3a
    dec b
    ld h, b
    ld bc, $3ad4
    rlca
    ld h, b
    ld bc, $3ad2
    dec b
    ld h, b
    ld b, l
    cp $3b
    ld l, d
    rst $38
    ld sp, hl
    nop
    ldh [rDIV], a
    or $02
    sub $22
    ld d, $29
    ld d, $2c
    ld d, $29
    ld d, $24
    ld d, $29
    ld d, $25
    ld d, $29
    ld d, $2e
    ld d, $29
    ld d, $24
    ld d, $2b
    ld d, $22
    ld d, $29
    ld d, $2c
    ld d, $29
    ld d, $20
    ld d, $2c
    ld d, $1e
    ld d, $29
    ld d, $2e
    ld d, $29
    ld d, $1e
    ld d, $29
    ld d, $1d
    ld d, $2c
    ld d, $30
    ld d, $2c
    ld d, $1d
    ld d, $2c
    ld d, $22
    ld d, $29
    ld d, $2c
    ld d, $25
    ld d, $27
    ld d, $25
    dec bc
    inc h
    dec bc
    ld [hl+], a
    dec bc
    inc h
    dec bc
    dec h
    dec bc
    add hl, hl
    dec bc
    ld l, $16
    add hl, hl
    ld d, $2b
    ld d, $d6
    add hl, hl
    dec bc
    daa
    dec bc
    ld sp, hl
    pop af
    ldh [rP1], a
    ld a, [hl+]
    inc l
    dec e
    ld e, b
    ld h, b
    ld d, $1e
    ld d, $1d
    ld c, l
    ld h, b
    dec bc
    ld e, $2c
    jr nz, jr_03d_6cb4

    ld e, $2c
    rra
    ld d, $20
    dec bc
    ld h, b
    dec bc
    jr nz, jr_03d_6ca8

    sub $22
    dec bc
    ld h, b
    dec bc
    ld [hl+], a
    ld d, $24
    dec bc
    ld h, b
    dec bc
    dec h
    ld d, $22
    ld d, $24
    ld d, $27
    ld d, $29
    ld d, $24

jr_03d_6ca8:
    ld d, $25
    ld d, $29
    ld d, $2e
    ld d, $29
    ld d, $27
    ld d, $2c

jr_03d_6cb4:
    ld d, $29
    ld d, $2c
    ld d, $2b
    ld d, $27
    ld d, $29
    ld d, $25
    ld d, $27
    ld d, $22
    ld d, $22
    ld d, $24
    dec bc
    dec h
    dec bc
    inc h
    ld d, $20
    ld d, $fe
    db $10
    ld l, h
    rst $38
    or $0f
    ld h, b
    dec bc
    ld l, $0b
    jr nc, jr_03d_6ce6

    ld sp, $330b
    dec bc
    dec [hl]
    inc l
    inc sp
    ld d, $38
    ld d, $3a

jr_03d_6ce6:
    dec bc
    ld h, b
    dec bc
    dec [hl]
    dec bc
    inc sp
    dec bc
    dec [hl]
    inc l
    inc sp
    ld d, $38
    ld d, $3c
    inc bc
    dec a
    inc bc
    inc a
    db $10
    ld a, [hl-]
    dec bc
    jr c, jr_03d_6d08

    dec [hl]
    dec bc
    ld h, b
    dec bc
    ld a, [hl-]
    dec bc
    jr c, jr_03d_6d10

    dec [hl]
    ld d, $33

jr_03d_6d08:
    dec bc
    ld sp, $2e0b
    dec bc
    ld h, b
    dec bc
    dec [hl]

jr_03d_6d10:
    dec bc
    inc sp
    dec bc
    dec [hl]
    inc l
    ld h, b
    ld d, $3a
    dec bc
    ld h, b
    dec bc
    inc a
    dec bc
    dec a
    dec bc
    ccf
    dec bc
    ld h, b
    dec bc
    ccf
    ld hl, $0b3c
    ld b, c
    dec bc
    ccf
    inc bc
    ld b, c
    inc bc
    ccf
    dec b
    dec a
    dec bc
    inc a
    dec bc
    ld a, [hl-]
    inc l
    ld a, [hl-]
    dec bc
    inc a
    dec bc
    dec a
    dec bc
    ld b, c
    dec bc
    ld b, e
    dec bc
    ld b, h
    dec b
    ld b, e
    ld b, $41
    dec bc
    ccf
    dec bc
    ld b, c
    inc l
    ld h, b
    ld c, l
    or $0e
    add hl, de
    inc l
    jr jr_03d_6d67

    dec de
    ld d, $1d
    ld d, $18
    ld d, $60
    ld d, $19
    ld d, $18
    ld d, $18
    ld d, $1d
    ld d, $18
    ld d, $19
    inc l
    jr jr_03d_6d93

jr_03d_6d67:
    ld d, $2c
    dec de
    inc l
    ld d, $2c
    dec de
    ld d, $f6
    rrca
    dec de
    dec bc
    ld h, b
    dec bc
    or $0e
    ld e, $2c
    jr nz, @+$5a

    or $0f
    jr nz, jr_03d_6d95

    or $0e
    ld e, $16
    jr nz, jr_03d_6dab

    or $0f
    jr nz, jr_03d_6d8f

    or $0e
    jr nz, jr_03d_6db9

    ld [hl+], a
    inc l

jr_03d_6d8f:
    jr nz, jr_03d_6dbd

    ld e, $2c

jr_03d_6d93:
    dec de
    ld e, b

jr_03d_6d95:
    or $0f
    dec de
    ld d, $60
    ld d, $fe
    db $d3
    ld l, h
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $12
    ld c, $13
    inc bc
    ld h, b

jr_03d_6dab:
    ld bc, $13d3
    inc b
    ld h, b
    ld bc, $13d1
    dec b
    sub $1e
    ld c, $1f
    inc bc

jr_03d_6db9:
    ld h, b
    ld bc, $1fd3

jr_03d_6dbd:
    inc b
    ld h, b
    ld bc, $1fd1
    dec b
    sub $2a
    ld c, $2b
    inc bc
    ld h, b
    ld bc, $2bd3
    inc b
    ld h, b
    ld bc, $2bd1
    dec b
    sub $36
    ld c, $37
    inc bc
    ld h, b
    ld bc, $37d3
    inc b
    ld h, b
    ld bc, $37d1
    dec b
    sub $1e
    inc b
    rra
    dec b
    inc h
    dec b
    ld [hl+], a
    ld b, [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld [hl+], a
    inc e
    pop de
    ld [hl+], a
    ld c, $60
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $30
    add hl, bc
    ld h, b
    rlca
    db $d3
    jr nc, @+$0b

    ld h, b
    inc bc
    sub $30
    add hl, bc
    ld h, b
    dec b
    db $d3
    jr nc, jr_03d_6e10

    sub $30
    ld a, [bc]
    scf

jr_03d_6e10:
    add hl, bc
    ld h, b
    rlca
    db $d3
    scf
    add hl, bc
    ld h, b
    inc bc
    sub $37
    ld [de], a
    ld h, b
    dec b
    scf
    ld [bc], a
    add hl, sp
    inc bc
    ld a, [hl-]
    ld [de], a
    add hl, sp
    ld a, [bc]

jr_03d_6e25:
    scf
    ld [de], a
    dec [hl]
    ld a, [bc]
    scf
    jr c, jr_03d_6e25

    ld bc, $00e0
    db $d3
    scf
    ld [de], a
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $3c
    dec b
    db $d3
    inc a
    dec b
    sub $3c
    ld c, $d3
    inc a
    inc b
    sub $3c
    ld a, [bc]
    scf
    add hl, bc
    ld h, b
    add hl, bc
    db $d3
    scf
    ld a, [bc]
    sub $37
    ld [de], a
    add hl, sp
    ld a, [bc]
    ld a, [hl-]
    ld [de], a
    add hl, sp
    ld a, [bc]
    scf
    ld [de], a
    dec [hl]
    ld a, [bc]
    inc [hl]
    ld [de], a
    dec [hl]
    ld a, [bc]
    ld [hl], $12
    scf
    ld a, [bc]
    inc [hl]
    add hl, bc
    ld h, b
    ld c, $d3
    inc [hl]
    dec b
    sub $30
    add hl, bc
    ld h, b
    ld c, $d3
    jr nc, @+$07

    sub $2e
    add hl, bc
    ld h, b
    ld c, $d3
    ld l, $05
    ld h, b
    ld [de], a
    sub $34
    inc de
    db $d3
    inc [hl]
    add hl, bc
    sub $34
    ld a, [bc]
    jr nc, jr_03d_6e8e

    ld h, b
    ld c, $d3
    jr nc, @+$07

    sub $2e
    add hl, bc
    ld h, b

jr_03d_6e8e:
    ld c, $d3
    ld l, $05
    ld h, b
    inc e
    sub $34
    add hl, bc
    ld h, b
    ld c, $d3
    inc [hl]
    dec b
    sub $30
    add hl, bc
    ld h, b
    ld c, $d3
    jr nc, @+$07

    sub $2e
    add hl, bc
    ld h, b
    ld c, $d3
    ld l, $05
    sub $2b
    jr c, @-$05

    ld bc, $00e0
    db $d3
    dec hl
    jr c, jr_03d_6f17

    inc e
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $34
    add hl, bc
    ld h, b
    ld c, $d3
    inc [hl]
    dec b
    sub $30
    add hl, bc
    ld h, b
    ld c, $d3
    jr nc, @+$07

    sub $2e
    add hl, bc
    ld h, b
    ld c, $d3
    ld l, $05
    ld h, b
    ld [de], a
    sub $34
    inc de
    db $d3
    inc [hl]
    add hl, bc
    sub $34
    ld a, [bc]
    jr nc, jr_03d_6eea

    ld h, b
    ld c, $d3
    jr nc, @+$07

    sub $2e
    add hl, bc
    ld h, b

jr_03d_6eea:
    ld c, $d3
    ld l, $05
    ld h, b
    inc e
    sub $34
    add hl, bc
    ld h, b
    ld c, $d3
    inc [hl]
    dec b
    sub $30
    add hl, bc
    ld h, b
    ld c, $d3
    jr nc, jr_03d_6f05

    sub $3a
    ld [de], a
    add hl, sp
    ld a, [bc]

jr_03d_6f05:
    ld h, b
    add hl, bc
    db $d3
    add hl, sp
    add hl, bc
    sub $37
    ld d, h
    ld sp, hl
    ld bc, $00e0
    db $d3
    scf
    inc e
    pop de
    scf
    add hl, bc

jr_03d_6f17:
    ld h, b
    ld bc, $f1f9
    ldh [rP1], a
    cp $fa
    ld l, l
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $0d
    ld c, $0c
    inc bc
    ld h, b
    ld bc, $0cd3
    inc b
    ld h, b
    ld bc, $0cd1
    dec b
    sub $19
    ld c, $18
    inc bc
    ld h, b
    ld bc, $18d3
    inc b
    ld h, b
    ld bc, $18d1
    dec b
    sub $25
    ld c, $24
    inc bc
    ld h, b
    ld bc, $24d3
    inc b
    ld h, b
    ld bc, $24d1
    dec b
    sub $31
    ld c, $30
    inc bc
    ld h, b
    ld bc, $30d3
    inc b
    ld h, b
    ld bc, $30d1
    dec b
    sub $12
    inc b
    inc de
    dec b
    jr @+$07

    ld d, $46
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld d, $1c
    pop de
    ld d, $0e
    ld h, b
    ld c, $f9
    pop af
    ldh [rP1], a
    ld h, b
    rst $38
    ld h, b
    ld b, a
    sub $1e
    ld a, [bc]
    rra
    ld [de], a
    ld e, $0a
    rra
    ld [de], a
    ld e, $0a
    rra
    ld c, $60
    inc b
    dec e
    ld a, [bc]
    inc e
    ld [de], a
    ld a, [de]
    ld a, [bc]
    jr jr_03d_6fa0

    ld h, b
    ld c, b
    sub $1e
    inc bc
    rra
    rlca
    ld h, b
    inc b

jr_03d_6fa0:
    db $d3
    ld e, $03
    rra
    rlca
    ld h, b
    inc b
    pop de
    ld e, $03
    rra
    rlca
    ld h, b
    ld b, c
    sub $1e
    ld [bc], a
    rra
    rlca
    ld e, $03
    rra
    rlca
    ld h, b
    inc b
    db $d3
    ld e, $03
    rra
    rlca
    ld h, b
    inc b
    pop de
    ld e, $03
    rra
    rlca
    ld h, b
    ld [hl], d
    sub $17
    add hl, bc
    dec de
    ld a, [bc]
    rra
    add hl, bc
    inc hl
    add hl, bc
    daa
    ld a, [bc]
    dec hl
    ld a, [hl+]
    add hl, hl
    inc b
    jr z, jr_03d_6fdd

    ld h, $05
    inc h
    add hl, bc
    ld h, b

jr_03d_6fdd:
    ld c, b
    ld e, $03
    rra
    rlca
    ld h, b
    inc b
    db $d3
    ld e, $03
    rra
    rlca
    ld h, b
    inc b
    pop de
    ld e, $03
    rra
    rlca
    ld h, b
    ld b, c
    sub $2a
    ld [bc], a
    dec hl
    rlca
    ld a, [hl+]
    inc bc
    dec hl
    rlca
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    inc bc
    dec hl
    rlca
    ld h, b
    inc b
    pop de
    ld a, [hl+]
    inc bc
    dec hl
    rlca
    ld h, b
    reti


    cp $7c
    ld l, a
    rst $38
    ld h, b
    xor $f6
    ld c, $13
    inc bc
    ld de, $0f04
    inc bc
    dec c
    inc b
    or $0e
    inc c
    rlca
    or $0f
    inc c
    ld c, $60
    inc hl
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60

Jump_03d_702e:
    inc hl
    or $0e
    ld a, [bc]
    rlca
    or $0f
    ld a, [bc]
    ld c, $60
    inc hl
    or $0e
    ld de, $f607
    rrca
    ld de, $600e
    inc hl
    or $0e
    inc c
    rlca
    or $0f
    inc c
    ld c, $60
    inc hl
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60
    inc hl
    or $0e
    ld c, $07
    or $0f
    ld c, $0e
    ld h, b
    dec [hl]
    or $0e
    inc de
    ld a, [bc]
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    or $0e
    rla
    ld a, [bc]
    or $0e
    inc c
    inc e
    or $0f
    inc c
    ld c, $60
    ld c, $f6
    ld c, $13
    rlca
    or $0f
    inc de
    ld c, $60
    inc hl
    or $0e
    ld d, $07
    or $0f
    ld d, $0e
    ld h, b
    inc hl
    or $0e
    ld de, $f607
    rrca
    ld de, $600e
    inc hl
    or $0e
    jr @+$09

    or $0f
    jr jr_03d_70af

    ld h, b
    inc hl
    or $0e
    ld d, $07
    or $0f
    ld d, $0e
    ld h, b
    rlca
    or $0e

jr_03d_70af:
    inc de
    ld c, $07
    inc b
    dec bc
    dec b
    rrca
    dec b
    or $0e
    inc de
    jr c, @+$14

    ld [bc], a
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60
    ld hl, $0ef6
    jr @+$09

    or $0f
    jr jr_03d_70dd

    ld h, b
    inc hl
    or $0e
    inc de
    rlca
    or $0f
    inc de
    ld c, $60
    inc hl
    or $0e

jr_03d_70dd:
    ld d, $07
    or $0f
    ld d, $0e
    ld h, b
    inc hl
    or $0e
    ld de, $f607
    rrca
    ld de, $600e
    inc hl
    or $0e
    jr @+$09

    or $0f
    jr jr_03d_7105

    ld h, b
    rlca
    or $0e
    jr @+$09

    or $0f
    jr jr_03d_710f

    ld h, b
    rlca
    or $0e

jr_03d_7105:
    ld d, $07
    or $0f
    ld d, $0e
    ld h, b
    rlca
    or $0e

jr_03d_710f:
    inc de
    ld l, $14
    ld a, [bc]
    ld d, $12
    rla
    ld a, [bc]
    add hl, de
    ld [de], a
    dec de
    ld a, [bc]
    dec e
    ld [de], a
    rra
    ld a, [bc]
    cp $1b
    ld [hl], b
    rst $38
    ld h, b
    db $fc
    jp nc, $1c2e

    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $12
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld a, [bc]
    jp nc, $1c2e

    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $09
    ld h, b
    add hl, bc
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld a, [bc]
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    jp nc, $1c2e

    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    jp nc, $1c2e

    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    jp nc, $1c2e

    ld h, b
    ld [hl], b
    jp nc, $1c2e

    ld a, [hl+]
    inc e
    db $d3
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    ld l, $1c
    db $d3
    ld a, [hl+]
    inc e
    ld l, $1c
    ld a, [hl+]
    inc e
    ld a, [hl+]
    inc e
    ld l, $1c
    ld h, b
    ld [hl], b
    cp $25
    ld [hl], c
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $01
    push de
    ld h, $2a
    db $d3
    ld h, $0e
    push de
    dec hl
    ld d, h
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec hl
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    push de
    ld h, $1c
    dec hl
    inc e
    add hl, hl
    ld c, $28
    ld c, $29
    inc e
    inc h
    jr c, @-$05

    ld bc, $00e0
    db $d3
    inc h
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $24
    inc e
    add hl, hl
    inc e
    ld l, $1c
    inc l
    ld c, $2a
    ld c, $2c
    inc e
    daa
    jr c, @-$05

    ld bc, $00e0
    db $d3
    daa
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $27
    inc e
    inc l
    inc e
    ld sp, $2f1c
    ld c, $2e
    ld c, $2f
    inc e
    ld a, [hl+]
    jr c, @-$05

    ld bc, $00e0
    call nc, $1c2a
    ld sp, hl
    pop hl
    ldh [rP1], a
    rst $10
    ld a, [hl+]
    inc e
    sub $2f
    inc e
    reti


    inc [hl]
    inc e
    call nc, $0734
    ld h, b
    inc bc
    db $d3
    inc [hl]
    rlca
    ld h, b
    inc b
    jp nc, $0734

    or $02
    sub $33
    dec d
    call nc, $0733
    sub $2e
    rlca
    ld h, b
    inc bc
    call nc, $042e
    sub $3a
    rlca
    ld h, b
    inc bc
    call nc, $043a
    sub $38
    inc e
    scf
    rlca
    ld h, b
    inc bc
    call nc, $0437
    sub $35
    inc e
    ld sp, $6007
    inc bc
    call nc, $0431
    sub $33
    rlca
    dec [hl]
    rlca
    scf
    rlca
    ld h, b
    inc bc
    call nc, $0437
    sub $35
    ld c, $33
    ld c, $31
    ld c, $35
    ld c, $33
    inc e
    ld sp, hl
    ld bc, $00e0
    call nc, $1c33
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $33
    rlca
    dec [hl]
    rlca
    scf
    rlca
    jr c, jr_03d_726a

    ld h, b
    inc bc
    call nc, $0738
    ld h, b
    inc b

jr_03d_726a:
    jp nc, $0738

    ld h, b
    inc bc
    pop de
    jr c, jr_03d_7276

    sub $3a
    inc e
    ccf

jr_03d_7276:
    inc e
    call nc, $0e3f
    sub $41
    ld c, $3d
    ld c, $3a
    rlca
    dec a
    rlca
    ccf
    rlca
    ld b, c
    rlca
    ld b, d
    rlca
    ld h, b
    inc bc
    call nc, $0442
    sub $41
    ld c, $3f
    ld c, $3d
    ld c, $3a
    ld c, $60
    inc bc
    call nc, $073a
    ld h, b
    inc b
    sub $41
    rlca
    ld h, b
    inc bc
    call nc, $0441
    sub $42
    rlca
    ld b, h
    rlca
    ld b, l
    rlca
    ld h, b
    inc bc
    call nc, $0445
    sub $44
    ld c, $42
    ld c, $40
    ld c, $3e
    ld c, $3c
    inc e
    dec sp
    rlca
    ld h, b
    inc bc
    call nc, $043b
    sub $39
    inc e
    scf
    rlca
    ld h, b
    inc bc

jr_03d_72cb:
    call nc, $0437
    sub $39
    jr c, jr_03d_72cb

    ld bc, $00e0
    call nc, $1c39
    ld sp, hl
    pop hl
    sub $38
    inc e
    sub $36
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl], $04
    sub $34
    inc e
    ld [hl-], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $34
    ld b, [hl]
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc [hl]
    ld c, $f9
    pop hl
    sub $2f
    rlca
    ld h, b
    rlca
    call nc, $072f
    ld h, b
    rlca
    jp nc, $072f

    ld h, b
    rlca
    pop de
    cpl
    rlca
    ld h, b
    rlca
    ld sp, hl
    pop hl
    ldh [rP1], a
    ret nc

    cpl
    rlca
    ld h, b
    dec d
    ld sp, hl
    nop
    or $02
    push de
    inc [hl]
    dec b
    ld h, b
    dec b
    rst $10
    ld [hl-], a
    dec b
    db $d3
    inc [hl]
    dec b
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0537
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $0532
    rst $10
    ld [hl-], a
    dec b
    call nc, $052d
    rst $10
    inc [hl]
    dec b
    call nc, $0532
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    dec sp
    dec b
    call nc, $0537
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    inc [hl]
    dec b
    call nc, $0539
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0537
    rst $10
    inc a
    dec b
    call nc, $0539
    rst $10
    dec sp
    dec b
    call nc, $053c
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    inc [hl]
    dec b
    call nc, $0539
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0537
    rst $10
    inc a
    dec b
    call nc, $0539
    rst $10
    dec sp
    dec b
    call nc, $053c
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    inc [hl]
    dec b
    call nc, $0539
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0537
    rst $10
    inc a
    dec b
    call nc, $0539
    rst $10
    dec sp
    dec b
    call nc, $053c
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    inc [hl]
    dec b
    call nc, $0539
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0537
    rst $10
    inc a
    dec b
    call nc, $0539
    rst $10
    dec sp
    dec b
    call nc, $053c
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    inc [hl]
    dec b
    call nc, $0539
    rst $10
    scf
    dec b
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0537
    rst $10
    inc a
    dec b
    call nc, $0539
    rst $10
    dec sp
    dec b
    call nc, $053c
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    ld [hl], $05
    call nc, $0539
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    cpl
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $052f
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0539
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    cpl
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $052f
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0536
    rst $10
    inc [hl]
    dec b
    call nc, $0539
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0536
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    ld [hl], $05
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0539
    rst $10
    dec sp
    dec b
    call nc, $0536
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    ld [hl], $05
    call nc, $0539
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    cpl
    dec b
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $052f
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    add hl, sp
    dec b
    call nc, $0536
    rst $10
    dec sp
    dec b
    call nc, $0539
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    ld a, $05
    call nc, $0539
    rst $10
    dec a
    dec b
    call nc, $053e
    rst $10
    dec sp
    dec b
    call nc, $053d
    rst $10
    add hl, sp
    dec b
    call nc, $053b
    rst $10
    ld [hl], $05
    call nc, $0539
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    ld [hl], $05
    call nc, $0534
    rst $10
    inc [hl]
    dec b
    call nc, $0536
    rst $10
    cpl
    dec b
    call nc, $0534
    rst $10
    dec l
    dec b
    call nc, $052f
    cp $1c
    ld [hl], e
    rst $38
    ret nc

    jr nz, jr_03d_7774

    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    push de
    ld [hl-], a
    rlca
    scf
    rlca
    ld a, $07
    ld h, b
    inc bc
    db $d3
    ld a, $07
    ld h, b
    inc b
    jp nc, $073e

    ld h, b
    inc bc
    jp nc, $073e

    ld h, b
    inc b
    pop de
    ld a, $07
    ld h, b
    rlca
    or $01
    call nc, $1c23
    ld h, $1c
    inc h
    ld c, $23
    ld c, $24
    inc e
    rra
    inc e
    jp nc, $0e1f

    or $02
    push de
    jr nc, @+$09

    dec [hl]
    rlca
    inc a
    rlca
    dec [hl]
    rlca
    jr nc, jr_03d_775c

    ld h, b
    inc bc
    call nc, $0730
    ld h, b
    inc b

jr_03d_775c:
    db $d3
    jr nc, jr_03d_7766

    ld h, b
    inc bc
    jp nc, $0730

    ld h, b
    inc b

jr_03d_7766:
    pop de
    jr nc, @+$09

    ld h, b
    ld sp, $01f6
    push de
    daa
    ld c, $25
    ld c, $d5
    daa

jr_03d_7774:
    inc e
    ld [hl+], a
    inc e
    jp nc, $0e22

    or $02
    push de
    inc sp
    rlca
    jr c, jr_03d_7788

    dec a
    rlca
    ld h, b
    inc bc
    call nc, $073d

jr_03d_7788:
    ld h, b
    inc b
    db $d3
    dec a
    rlca
    ld h, b
    inc bc
    jp nc, $073d

    ld h, b
    inc b
    pop de
    dec a
    rlca
    ld h, b
    rlca
    or $01
    sub $24
    inc e
    rst $10
    add hl, hl
    inc e
    sub $2a
    ld c, $29
    ld c, $2a
    inc e
    dec h
    inc e
    call nc, $0e25
    or $02
    sub $36
    rlca
    dec sp
    rlca
    sub $40
    rlca
    ld h, b
    inc bc
    push de
    ld b, b
    rlca
    ld h, b
    inc b
    call nc, $0740
    ld h, b
    inc bc
    db $d3
    ld b, b
    rlca
    ld h, b
    inc b
    jp nc, $0740

    ld h, b
    rlca
    sub $23
    rlca
    sub $25
    rlca
    rst $10
    daa
    rlca
    rst $10
    jr z, jr_03d_77e0

    ret c

    ld a, [hl+]
    rlca
    ret c

    inc l
    rlca
    reti


jr_03d_77e0:
    dec l
    rlca
    reti


    cpl
    rlca
    db $d3
    cpl
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    rlca
    ld h, b
    inc b
    jp nc, $072f

    sub $2e
    dec d
    call nc, $072e
    sub $27
    rlca
    ld h, b
    inc bc
    call nc, $0427
    sub $2b
    rlca
    ld h, b
    inc bc
    call nc, $042b
    sub $29
    inc e
    call nc, $0e29
    sub $25
    inc e
    ld [hl+], a
    rlca
    ld h, b
    inc bc
    call nc, $0422
    sub $23
    ld c, $27
    rlca
    ld h, b
    inc bc
    call nc, $0427
    sub $25
    ld c, $23
    ld c, $22
    ld c, $25
    ld c, $22
    ld c, $d4
    ld [hl+], a
    ld c, $d6
    dec de
    rlca
    ld [hl+], a
    rlca
    daa
    inc bc
    ld h, b
    inc b
    daa
    rlca
    ld l, $03
    ld h, b
    inc b
    ld l, $07
    inc sp
    inc bc
    ld h, b
    inc b
    inc sp
    rlca
    ld h, b
    inc bc
    call nc, $0733
    ld h, b
    inc b
    jp nc, $0733

    ld h, b
    inc bc
    pop de
    inc sp
    inc b
    sub $33
    inc e
    ld [hl], $1c
    call nc, $0e36
    sub $31
    ld c, $2e
    inc e
    ld [hl], $07
    jr c, jr_03d_786e

    ld a, [hl-]
    rlca
    ld h, b
    inc bc
    call nc, $043a

jr_03d_786e:
    sub $33
    ld c, $31
    ld c, $2e
    ld c, $33
    ld c, $35
    ld c, $31
    ld c, $32
    rlca
    inc [hl]
    rlca
    ld [hl], $07
    ld h, b
    inc bc
    call nc, $0436
    sub $34
    ld c, $31
    ld c, $2f
    ld c, $36
    ld c, $39
    inc e
    scf
    rlca
    ld h, b
    inc bc
    call nc, $0437
    sub $35
    inc e
    inc [hl]
    rlca
    ld h, b
    inc bc
    call nc, $0434
    sub $35
    inc e
    inc [hl]
    ld c, $32
    inc e
    jr nc, jr_03d_78b9

    cpl
    inc e
    dec l
    rlca
    ld h, b
    inc bc
    call nc, $042d
    sub $2c
    inc e
    ld a, [hl+]
    rlca

jr_03d_78b9:
    ld h, b
    inc bc
    call nc, $042a
    sub $2c
    inc e
    dec l
    rlca
    ld h, b
    inc bc
    call nc, $042d
    sub $2c
    inc e
    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    call nc, $042a
    sub $2c
    rlca
    ld h, b
    rlca
    push de
    inc l
    rlca
    ld h, b
    rlca
    db $d3
    inc l
    rlca
    ld h, b
    rlca
    jp nc, $072c

    ld h, b
    rlca
    pop de
    inc l
    rlca
    ld h, b
    dec d
    ld sp, hl
    nop
    or $01
    ld h, b
    ld a, b
    rst $10
    inc e
    jr z, jr_03d_7914

    ld b, [hl]
    call nc, $0a1f
    rst $10
    inc e
    jr z, jr_03d_791c

    jr z, @+$23

    jr z, jr_03d_7925

    jr z, jr_03d_7926

    jr z, jr_03d_7924

    jr z, @+$23

    jr z, jr_03d_7925

    ld d, b
    call nc, $141c
    rst $10
    ld a, [de]
    dec b
    call nc, $051a
    rst $10

jr_03d_7914:
    ld a, [de]
    dec b
    call nc, $051a
    rst $10
    inc e
    ld a, b

jr_03d_791c:
    call nc, $1e1c
    jp nc, $1e1c

    pop de
    inc e

jr_03d_7924:
    inc d

jr_03d_7925:
    rst $10

jr_03d_7926:
    ld hl, $2428
    ld b, [hl]
    call nc, $0a24
    rst $10
    ld hl, $2428
    jr z, jr_03d_7959

    jr z, jr_03d_795f

    jr z, jr_03d_7964

    jr z, jr_03d_7969

    jr z, @+$31

    ld e, d
    call nc, $0a2f
    rst $10
    dec d
    dec b
    call nc, $0515
    rst $10
    dec d
    dec b
    call nc, $0515
    rst $10
    rla
    ld a, b
    call nc, $1e17
    jp nc, $1e17

    pop de
    rla
    ld e, $d0
    rla

jr_03d_7959:
    ld e, $60
    ld a, b
    cp $ef
    ld a, b

jr_03d_795f:
    rst $38
    ld a, [c]
    or $0e
    rra

jr_03d_7964:
    rlca
    ld h, b
    rlca
    dec e
    rlca

jr_03d_7969:
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec e
    rlca
    or $0f
    rra
    rlca
    or $0e
    rra
    rlca
    or $0f
    dec e
    rlca
    or $0e
    ld a, [de]
    rlca
    or $0f
    rra
    rlca
    or $0e
    dec e
    rlca
    or $0f
    ld a, [de]
    rlca
    or $0e
    dec de
    rlca
    or $0f
    dec e
    rlca
    or $0e
    dec e
    rlca
    or $0f
    dec de
    rlca
    or $0e
    jr jr_03d_7a80

    or $0f
    dec e
    rlca
    or $0e
    dec e

jr_03d_7a80:
    rlca
    or $0f
    jr jr_03d_7a8c

    or $0e
    dec de
    rlca
    or $0f
    dec e

jr_03d_7a8c:
    rlca
    or $0e
    dec e
    rlca
    or $0f
    dec de
    rlca
    or $0e
    jr jr_03d_7aa0

    or $0f
    dec e
    rlca
    or $0e
    dec e

jr_03d_7aa0:
    rlca
    or $0f
    jr jr_03d_7aac

    or $0e
    dec de
    rlca
    or $0f
    dec e

jr_03d_7aac:
    rlca
    or $0e
    dec e
    rlca
    or $0f
    dec de
    rlca
    or $0e
    jr @+$09

    or $0f
    dec e
    rlca
    or $0e
    jr nz, @+$09

    or $0f
    jr @+$09

    or $0e
    ld e, $07
    or $0f
    jr nz, @+$09

    or $0e
    jr nz, jr_03d_7ad8

    or $0f
    ld e, $07
    or $0e
    dec de

jr_03d_7ad8:
    rlca
    or $0f
    jr nz, jr_03d_7ae4

    or $0e
    inc hl
    rlca
    or $0f
    dec de

jr_03d_7ae4:
    rlca
    or $0e
    ld [hl+], a
    rlca
    or $0f
    inc hl
    rlca
    or $0e
    inc hl
    rlca
    or $0f
    ld [hl+], a
    rlca
    or $0e
    ld e, $07
    or $0f
    inc hl
    rlca
    or $0e
    inc hl
    rlca
    or $0f
    ld e, $07
    or $0e
    ld [hl+], a
    rlca
    or $0f
    inc hl
    rlca
    or $0e
    inc hl
    rlca
    or $0f
    ld [hl+], a
    rlca
    or $0e
    ld e, $07
    or $0f
    inc hl
    rlca
    or $0e
    inc hl
    rlca
    or $0f
    ld e, $07
    or $0e
    ld [hl+], a
    rlca
    or $0f
    inc hl
    rlca
    or $0e
    inc hl
    rlca
    or $0f
    ld [hl+], a
    rlca
    or $0e
    ld e, $07
    or $0f
    inc hl
    rlca
    or $0e
    inc d
    rlca
    dec d
    rlca
    rla
    rlca
    add hl, de
    rlca
    dec de
    rlca
    inc e
    rlca
    ld e, $07
    jr nz, jr_03d_7b56

    ld h, b
    inc e
    rrca
    dec d
    or $0f
    rrca

jr_03d_7b56:
    ld c, $f6
    inc l
    rrca
    rlca
    or $0e
    rrca
    ld c, $0d
    ld c, $f6
    rrca
    dec c
    ld c, $f6
    ld c, $0d
    ld c, $11
    ld c, $0f
    ld c, $0d
    ld c, $0b
    ld c, $f6
    rrca
    dec bc
    ld c, $f6
    ld c, $0b
    ld c, $0a
    inc e
    dec c
    ld c, $0f
    dec d
    or $0f
    rrca
    rlca
    or $0e
    ld a, [bc]
    ld c, $0f
    ld c, $0a
    ld c, $0f
    ld c, $0b
    ld c, $f6
    rrca
    dec bc
    ld c, $f6
    ld c, $12
    inc e
    rla
    inc e
    ld d, $1c
    ld de, $160e
    ld c, $f6
    rrca
    ld d, $0e
    or $0e
    ld de, $0a0e
    inc e
    dec c
    inc e
    ld de, $0e1c
    inc e
    db $10
    inc e
    or $0f
    db $10
    ld c, $f6
    ld c, $10
    ld c, $11
    dec d
    or $0f
    ld de, $f607
    ld c, $11
    inc hl
    or $0f
    ld de, $f607
    ld c, $11
    rlca
    or $0f
    ld de, $f607
    ld c, $11
    ld c, $0c
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $13
    ld c, $10

jr_03d_7bde:
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    jr jr_03d_7bde

    rrca
    db $10
    inc b
    or $0e
    db $10
    dec d
    or $0f
    db $10
    rlca
    or $0e
    db $10
    rlca
    or $0f
    db $10
    rlca
    or $0e
    db $10
    inc e
    dec bc
    ld c, $10
    inc e
    inc d
    ld c, $10
    inc e
    ld h, b
    jr c, @+$62

    ld a, b
    or $0e
    ld hl, $2628
    ld b, [hl]
    or $17
    ld h, $0a
    or $0e
    ld hl, $2628
    jr z, jr_03d_7c44

    jr z, jr_03d_7c49

    jr z, jr_03d_7c4a

    jr z, jr_03d_7c48

    jr z, @+$2a

    jr z, @+$23

    ld d, b
    or $17
    ld hl, $f614
    ld c, $15
    dec b
    or $17
    dec d
    dec b
    or $0e
    dec d
    dec b
    or $17
    dec d
    dec b
    or $0e
    dec d
    ld a, b
    or $17
    dec d
    ld e, $f6

jr_03d_7c44:
    rrca
    dec d
    ld e, $f6

jr_03d_7c48:
    inc c

jr_03d_7c49:
    dec d

jr_03d_7c4a:
    inc d
    or $0e
    jr z, jr_03d_7c77

    dec hl
    ld b, [hl]
    or $17
    dec hl
    ld a, [bc]
    or $0e
    jr z, jr_03d_7c81

    dec hl
    jr z, jr_03d_7c89

    jr z, jr_03d_7c8d

    jr z, jr_03d_7c92

    jr z, jr_03d_7c97

    jr z, jr_03d_7c9a

    ld e, d
    or $17
    ld [hl], $0a
    or $0e
    inc e
    dec b
    or $17
    inc e
    dec b
    or $0e
    inc e
    dec b
    or $17

jr_03d_7c77:
    inc e
    dec b
    or $0e
    ld e, $78
    or $17
    ld e, $1e

jr_03d_7c81:
    or $0f
    ld e, $1e
    or $0c
    ld e, $1e

jr_03d_7c89:
    or $0c
    ld e, $1e

jr_03d_7c8d:
    ld h, b
    ld a, b
    cp $09
    ld a, h

jr_03d_7c92:
    rst $38
    ld a, [c]
    jp nc, Jump_03d_702e

jr_03d_7c97:
    ld l, $69
    db $d3

jr_03d_7c9a:
    ld a, [hl+]
    ld [bc], a
    jp nc, $022a

    jp nc, $032a

    jp nc, Jump_03d_702e

    ld l, $69
    db $d3
    ld a, [hl+]
    ld [bc], a
    jp nc, $022a

    jp nc, $032a

    jp nc, Jump_03d_702e

    jp nc, Jump_03d_702e

    ld l, $70
    ld l, $38
    jp nc, $022e

    jp nc, $022e

    jp nc, $032e

    db $d3
    ld l, $02
    db $d3
    ld l, $02
    db $d3
    ld l, $03
    db $d3
    ld l, $02
    db $d3
    ld l, $02
    db $d3
    ld l, $03
    call nc, $022e
    call nc, $022e
    call nc, $032e
    call nc, $022e
    call nc, $022e
    call nc, $032e
    call nc, $022e
    call nc, $022e
    call nc, $032e
    call nc, $022e
    call nc, $022e
    call nc, $032e
    call nc, $022e
    call nc, $022e
    call nc, $032e
    jp nc, $1c2e

    call nc, $1c26
    ld h, $0e
    ld h, $0e
    call nc, $0e26
    call nc, $0726
    call nc, $0726
    call nc, $2a26
    ld h, $07
    call nc, $0726
    call nc, $1c26
    call nc, $0e26
    ld h, $1c
    call nc, $0e26
    call nc, $0726
    call nc, $0726
    call nc, $0e26
    ld h, $0e
    ld h, $07
    call nc, $0726
    call nc, $0726
    call nc, $0726
    jp nc, $0226

    db $d3
    ld h, $02
    call nc, $0326
    call nc, $0226
    call nc, $0226
    call nc, $0326
    jp nc, $0e2e

    call nc, $0726
    ld h, $07
    jp nc, $1c2e

    call nc, $0e26
    ld h, $07
    ld h, $07
    jp nc, $0e2e

    call nc, $1c26
    ld h, $1c
    ld h, $07
    db $d3
    ld a, [hl+]
    ld [bc], a
    jp nc, $022a

    db $d3
    ld a, [hl+]
    inc bc
    call nc, $1c26
    jp nc, $0e2e

    call nc, $1c26
    call nc, $0726
    call nc, $0726
    jp nc, $1c2e

    call nc, $1c26
    call nc, $0726
    call nc, $0726
    call nc, $0226
    call nc, $0226
    db $d3
    ld h, $03
    db $d3
    ld h, $02
    jp nc, $0226

    jp nc, $0326

    jp nc, $1c2e

    ld a, [hl+]
    ld c, $2e
    dec d
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2e
    inc e
    ld a, [hl+]
    rlca
    jp nc, $0e2a

    jp nc, $072a

    ld a, [hl+]
    ld c, $d2
    ld a, [hl+]
    ld c, $d2
    ld l, $1c
    ld l, $2a
    ld h, b
    ld [bc], a
    ld a, [hl+]
    dec b
    ld a, [hl+]
    inc b
    ld a, [hl+]
    inc bc
    ld l, $46
    ld h, b
    inc bc
    ld a, [hl+]
    inc b
    ld a, [hl+]
    inc bc
    ld a, [hl+]
    inc b
    jp nc, $1c2e

    rst $38
    ld sp, hl
    nop
    ldh [rSC], a
    ld a, [c]
    or $02
    sub $47
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, a
    inc bc
    ld b, [hl]
    ld [bc], a
    ld b, a
    rlca
    ld h, b
    jr z, jr_03d_7e34

    ld [bc], a
    ld b, a
    ld [bc], a
    ld c, b
    inc bc
    ld b, a
    ld [bc], a
    ld c, b
    rlca
    ld h, b
    inc a
    ld sp, hl
    nop
    ldh [rP1], a
    or $00
    ld a, $05
    ccf
    dec b
    ld a, $05
    dec a
    dec b
    inc a
    dec b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    ccf
    dec b
    ld a, $05
    dec a
    dec b
    inc a
    dec b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    db $d3
    ld a, $05
    sub $4a
    dec b
    db $d3
    ld c, d
    dec b
    sub $3e
    dec b
    db $d3
    ld a, $05
    sub $3e
    dec b
    ccf
    dec b
    ld b, b

jr_03d_7e34:
    dec b
    ld b, c
    dec b
    ld b, b
    dec b
    ccf
    dec b
    ld a, $05
    db $d3
    ld a, $05
    ld h, b
    ld a, [bc]
    sub $3e
    dec b
    ccf
    dec b
    ld a, $05
    dec a
    dec b
    inc a
    dec b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    ccf
    dec b
    ld a, $05
    dec a
    dec b
    inc a
    dec b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    db $d3
    ld a, $05
    sub $4a
    dec b
    db $d3
    ld c, d
    dec b
    sub $3e
    dec b
    db $d3
    ld a, $05
    sub $3e
    dec b
    ccf
    dec b
    ld b, b
    dec b
    ld b, c
    dec b
    ld b, b
    dec b
    ccf
    dec b
    ld a, $05
    db $d3
    ld a, $05
    ld h, b
    ld a, [bc]
    push de
    ld a, $05
    ccf
    dec b
    ld a, $05
    dec a
    dec b
    inc a
    dec b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    ccf
    dec b
    ld a, $05
    dec a
    dec b
    inc a
    dec b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    jp nc, $053d

    ld h, b
    ld l, c
    ld sp, hl
    nop
    ldh [rSC], a
    or $02
    sub $4a
    ld [bc], a
    ld c, b
    ld [bc], a
    ld b, a
    ld [bc], a
    ld b, l
    inc b
    ld b, e
    ld [bc], a
    ld b, d
    ld [bc], a
    ld b, b
    ld [bc], a
    ld a, $0b
    ld h, b
    ld d, e
    ld sp, hl
    nop
    ldh [rP1], a
    or $00
    cp $f7
    ld a, l
    rst $38
    ld sp, hl
    nop
    ldh [rSC], a
    ld a, [c]
    or $02
    sub $41
    rlca
    ld h, b
    ld sp, $0742
    ld h, b
    ld b, l
    sub $2b
    dec b
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    ld h, $05
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    dec hl
    dec b
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    ld h, $05
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    inc l
    dec b
    ld h, b
    dec b
    inc sp
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    inc sp
    dec b
    ld h, b
    dec b
    inc l
    dec b
    ld h, b
    dec b
    inc sp
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    inc sp
    dec b
    ld h, b
    dec b
    ld l, $05
    ld h, b
    dec b
    dec [hl]
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    dec [hl]
    dec b
    ld h, b
    dec b
    ld l, $05
    ld h, b
    dec b
    dec [hl]
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    dec [hl]
    dec b
    ld h, b
    dec b
    jr nc, jr_03d_7f49

    ld h, b
    dec b
    scf
    dec b
    ld h, b

jr_03d_7f49:
    dec b
    dec hl
    dec b
    ld h, b
    dec b
    scf
    dec b
    ld h, b
    dec b
    jr nc, jr_03d_7f59

    ld h, b
    dec b
    scf
    dec b
    ld h, b

jr_03d_7f59:
    dec b
    cpl
    dec b
    ld h, b
    dec b
    dec l
    dec b
    ld h, b
    dec b
    push de
    dec hl
    dec b
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    ld h, $05
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    dec hl
    dec b
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    dec b
    ld h, $05
    ld h, b
    dec b
    ld [hl-], a
    dec b
    ld h, b
    ld a, b
    db $d3
    ld c, d
    ld [bc], a
    ld c, b
    inc bc
    ld b, a
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, d
    inc b
    ld b, b
    ld [bc], a
    ld a, $0a
    ld h, b
    ld c, [hl]
    cp $e1
    ld a, [hl]
    rst $38
    or $02
    db $db
    ld d, h
    ld bc, $60d0
    dec bc
    db $db
    ld c, b
    ld bc, $60d0
    inc bc
    db $db
    ld b, c
    ld bc, $60d0
    inc bc
    db $db
    inc a
    ld bc, $60d0
    inc b
    db $db
    ld a, [hl-]
    ld bc, $60d0
    inc b
    db $db
    dec [hl]
    ld bc, $60d0
    dec b
    db $db
    ld [hl-], a
    ld bc, $deff
    ld hl, sp+$10
    ld de, $ff11
    or $02
    reti


    jr c, @+$08

    db $d3
    jr c, @+$08

    reti


    ld a, [hl-]
    ld b, $d3
    ld a, [hl-]
    ld b, $d9
    dec sp
    ld b, $d3
    dec sp
    ld b, $d9
    ld b, d
    ld b, $d3
    ld b, d
    ld b, $ff
    ldh a, [$90]
    inc d
    ld bc, $00f0
    nop
    ld bc, $22f0
    inc d
    ld [bc], a
    rst $38
    db $dd
    ld c, b
    ld bc, $60d0
    ld bc, $48d3
    ld bc, $ffff
    rst $38
    rst $38
    rst $38

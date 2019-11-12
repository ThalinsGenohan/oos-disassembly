; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX

    rst $38
    or $02
    rst JumpTable
    ld hl, sp-$12
    inc e
    ld [bc], a
    ld hl, sp+$00
    rst JumpTable
    dec d
    ld bc, $15df
    inc b
    ldh [rSB], a
    ld d, $0c
    ld hl, sp-$0a
    rst $38
    ldh a, [$f1]
    ld d, h
    ld [bc], a
    ldh a, [rHDMA1]
    dec h
    ld a, [bc]
    rst $38
    or $0b
    jr jr_03e_4026

    ld hl, sp+$1e

jr_03e_4026:
    jr @+$07

    ld h, b
    dec b
    jr jr_03e_402e

    ld hl, sp+$1e

jr_03e_402e:
    jr @+$0a

    rst $38
    or $00
    call c, $024f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $014f
    ld d, b
    ld bc, $f6ff
    ld bc, $60d0
    inc bc
    call c, $0139
    db $dd
    dec hl
    ld bc, $3cde
    ld bc, $e0da
    ld bc, $083c
    rst $38
    or $00
    ret nc

    ld h, b
    inc bc
    db $dd
    scf
    inc bc
    jp c, $01e0

    scf
    ld [$f0ff], sp
    and c
    rlca
    ld bc, $91f0
    inc d
    ld bc, $81f0
    dec d
    ld bc, $71f0
    ld d, $01
    ldh a, [$61]
    rla
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $00
    sub $25
    ld c, b
    inc h
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
    sub $2a
    ld [de], a
    dec hl
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec hl
    dec b
    sub $2c
    ld [de], a
    dec hl
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec hl
    add hl, bc
    ld h, b
    dec b
    pop de
    dec hl
    add hl, bc
    ld h, b
    ld e, d
    sub $25
    ld c, b
    inc h
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
    sub $2a
    ld [de], a
    dec hl
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec hl
    dec b
    sub $2e
    inc c
    dec l
    inc c
    inc l
    inc c
    dec hl
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec hl
    add hl, bc
    ld h, b
    dec b
    pop de
    dec hl
    add hl, bc
    ld h, b
    ld c, b
    sub $30
    ld c, b
    ld a, [hl+]
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    add hl, bc
    ld h, b
    dec b
    pop de
    ld a, [hl+]
    add hl, bc
    sub $29
    ld [de], a
    daa
    add hl, bc
    ld h, b
    inc b
    db $d3
    daa
    dec b
    sub $29
    add hl, bc
    daa
    add hl, bc
    inc h
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
    ld h, b
    ld [hl], $d6
    add hl, hl
    ld [de], a
    daa
    ld [de], a
    ld a, [hl+]
    inc c
    add hl, hl
    inc c
    daa
    inc c
    add hl, hl
    ld [de], a
    daa
    ld [de], a
    inc h
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
    sub $22
    ld [de], a
    daa
    ld [de], a
    inc h
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
    sub $22
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld [hl+], a
    add hl, bc
    ld h, b
    dec b
    pop de
    ld [hl+], a
    add hl, bc
    sub $1c
    ld c, b
    cp $d7
    ld b, b
    rst $38
    ld a, [c]
    ldh [rSC], a
    reti


    inc c
    inc h
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    ccf
    inc c
    add hl, bc
    ld h, b
    dec de
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    inc b
    ld h, b
    dec b
    ld [de], a
    inc b
    ld h, b
    dec b
    ld [de], a
    inc b
    ld h, b
    jr nz, jr_03e_41ce

    inc b
    ld h, b
    dec b
    inc c
    inc b
    ld h, b
    dec b
    inc c
    inc b
    ld h, b
    ld c, $0c

jr_03e_41ce:
    inc h
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    dec de
    ld [de], a
    add hl, bc
    ld h, b
    dec de
    inc c
    add hl, bc
    ld h, b
    dec de
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    inc b
    ld h, b
    dec b
    ld [de], a
    inc b
    ld h, b
    dec b
    ld d, $12
    dec d
    ld [de], a
    inc d
    ld [de], a
    inc de
    ld [de], a
    inc c
    ld d, c
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld de, $1009
    add hl, bc
    rrca
    add hl, bc
    ld c, $09
    dec c
    add hl, bc
    inc c
    add hl, bc
    ld h, b
    dec de
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    inc b
    ld h, b
    dec b
    ld [de], a
    inc b
    ld h, b
    dec b
    ld [de], a
    add hl, bc
    ld h, b
    dec de
    inc c
    inc b
    ld h, b
    dec b
    inc c
    inc b
    ld h, b
    dec b
    inc c
    inc b
    ld h, b
    ld c, $0c
    inc h
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    add hl, bc
    ld h, b
    ccf
    inc c
    add hl, bc
    ld h, b
    dec de
    ld [de], a
    add hl, bc
    ld h, b
    add hl, bc
    ld [de], a
    inc b
    ld h, b
    dec b
    ld [de], a
    inc b
    ld h, b
    dec b
    ld d, $48
    cp $9f
    ld b, c
    rst $38
    ld a, [c]
    or $17
    rra
    ld c, b
    ld e, $09
    or $0c
    ld e, $12
    ld h, b
    add hl, bc
    or $17
    inc h
    ld [de], a
    dec h
    add hl, bc
    or $0c
    dec h
    add hl, bc
    or $17
    ld h, $12
    dec h
    add hl, bc
    or $0c
    dec h
    ld [de], a
    ld h, b
    add a
    or $17
    rra
    inc h
    ld e, $09
    or $0c
    ld e, $12
    ld h, b
    add hl, bc
    or $17
    inc h
    ld [de], a
    dec h
    add hl, bc
    or $0c
    ld h, $09
    or $17
    jr z, jr_03e_4294

    daa
    inc c
    ld h, $0c
    dec h
    add hl, bc
    or $0c
    dec h
    ld [de], a
    ld h, b
    ld h, e

jr_03e_4294:
    or $17
    dec hl
    add hl, bc
    ld a, [hl+]
    add hl, bc
    add hl, hl
    add hl, bc
    jr z, jr_03e_42a7

    daa
    add hl, bc
    ld h, $09
    dec h
    add hl, bc
    or $0c
    dec h

jr_03e_42a7:
    ld [de], a
    ld h, b
    add hl, bc
    or $17
    inc hl
    ld [de], a
    ld hl, $f609
    inc c
    ld hl, $f609
    rla
    inc hl
    add hl, bc
    ld hl, $1e09
    add hl, bc
    or $17
    ld e, $12
    ld h, b
    rst $38
    ld h, b
    add h
    cp $4c
    ld b, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    call c, $040c
    push de
    inc c
    ld [$0cd2], sp
    inc b
    call c, $0412
    push de
    ld [de], a
    ld [$12d2], sp
    inc b
    call c, $0411
    push de
    ld de, $d208
    ld de, $6004
    ld c, b
    call c, $020c
    push de
    inc c
    inc b
    jp nc, $020c

    call c, $040c
    push de
    inc c
    ld [$0cd2], sp
    inc b
    call c, $0412
    push de
    ld [de], a
    ld [$12d2], sp
    inc b
    call c, $0411
    push de
    ld de, $dc04
    rla
    inc b
    push de
    rla
    ld [$17d2], sp
    inc b
    ld h, b
    ld hl, sp-$02
    call nc, $ff42
    rst $38
    rst $38
    rst $38

jr_03e_4324:
    ld sp, hl
    nop
    ldh [rTIMA], a
    ld a, [c]
    or $00
    ret c

    ld b, e
    ld e, $3e
    ld a, [bc]
    dec sp
    inc d
    scf
    inc d
    jr c, jr_03e_435e

    ccf
    ld a, [bc]
    inc a
    ld a, [bc]
    jr c, jr_03e_4346

    inc sp
    ld a, [bc]
    ld [hl-], a
    inc d
    ld a, $0a
    dec sp
    ld a, [bc]
    scf
    inc d

jr_03e_4346:
    ld [hl-], a
    inc d
    dec [hl]
    inc d
    inc sp
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    ld [hl-], a
    jr z, jr_03e_4324

    ld sp, hl
    nop
    ldh [$03], a
    ld sp, $6005
    rrca
    ld [hl-], a
    dec b
    ld h, b
    rrca
    ccf

jr_03e_435e:
    dec b
    ld h, b
    rrca
    ld a, $05
    ld h, b
    rrca
    dec a
    dec b
    ld h, b
    rrca
    ld a, $05
    ld h, b
    rrca
    inc a
    dec b
    ld h, b
    rrca
    dec a
    dec b
    ld h, b
    rrca
    dec sp
    dec b
    ld h, b
    rrca
    inc a
    dec b
    ld h, b
    rrca
    ld a, [hl-]
    dec b
    ld h, b
    rrca
    dec sp
    dec b
    ld h, b
    rrca
    add hl, sp
    dec b
    ld h, b
    dec b
    ld a, [hl-]
    dec b
    ld h, b
    dec b
    jr c, jr_03e_4394

    ld h, b
    dec b
    add hl, sp
    dec b
    ld h, b

jr_03e_4394:
    ld d, l
    db $d3
    ld d, d
    ld bc, $013a
    ld hl, sp-$7f
    ld sp, $f803
    nop
    ret nc

    ld h, b
    dec b
    db $d3
    ld d, d
    ld bc, $013a
    ld hl, sp-$7f
    ld sp, $f803
    nop
    ret nc

    ld h, b
    dec b
    cp $24
    ld b, e
    rst $38
    ld sp, hl
    nop
    ldh [rSC], a
    ld a, [c]
    or $02
    sub $1f
    ld a, [bc]
    db $d3
    rra
    ld a, [bc]
    sub $25
    ld a, [bc]
    db $d3
    dec h
    ld a, [bc]
    sub $2e
    ld a, [bc]
    db $d3
    ld l, $0a
    sub $25
    ld a, [bc]
    db $d3
    dec h
    ld a, [bc]
    sub $1a
    ld a, [bc]
    db $d3
    ld a, [de]
    ld a, [bc]
    sub $24
    ld a, [bc]
    db $d3
    inc h
    ld a, [bc]
    sub $2d
    ld a, [bc]
    db $d3
    dec l
    ld a, [bc]
    sub $24
    ld a, [bc]
    db $d3
    inc h
    ld a, [bc]
    sub $1f
    ld a, [bc]
    db $d3
    rra
    ld a, [bc]
    sub $25
    ld a, [bc]
    db $d3
    dec h
    ld a, [bc]
    sub $2e
    ld a, [bc]
    db $d3
    ld l, $0a
    sub $25
    ld a, [bc]
    db $d3
    dec h
    ld a, [bc]
    sub $1a
    ld a, [bc]
    db $d3
    ld a, [de]
    ld a, [bc]
    sub $24
    ld a, [bc]
    db $d3
    inc h
    ld a, [bc]
    sub $2d
    ld a, [bc]
    db $d3
    dec l
    ld a, [bc]
    sub $24
    ld a, [bc]
    db $d3
    inc h
    ld a, [bc]
    db $d3
    ld h, b
    jr z, jr_03e_445e

    dec b
    ld h, b
    rrca
    dec a
    dec b
    ld h, b
    rrca
    ldh [$03], a
    inc a
    dec b
    ld h, b
    rrca
    dec a
    dec b
    ld h, b
    rrca
    dec sp
    dec b
    ld h, b
    rrca
    inc a
    dec b
    ld h, b
    rrca
    ld a, [hl-]
    dec b
    ld h, b
    rrca
    dec sp
    dec b
    ld h, b
    rrca
    add hl, sp
    dec b
    ld h, b
    rrca
    ld a, [hl-]
    dec b
    ld h, b
    rrca
    jr c, jr_03e_4450

    ld h, b
    rrca
    scf
    dec b
    ld h, b

jr_03e_4450:
    ld [hl], e
    cp $b5
    ld b, e
    rst $38
    ld a, [c]
    or $17
    ld h, b
    jr z, @+$2c

    dec b
    ld h, b
    dec b

jr_03e_445e:
    or $0c
    ld a, [hl+]
    inc bc
    ld h, b
    rlca
    or $17
    or $0f
    ld c, a
    add hl, bc
    ld h, b
    ld bc, $0a4f
    or $17
    ld h, b
    jr z, jr_03e_449c

    dec b
    ld h, b
    dec b
    or $0c
    add hl, hl
    inc bc
    ld h, b

jr_03e_447b:
    rlca
    or $0f
    ld c, a
    add hl, bc
    ld h, b
    ld bc, $0a4f
    or $17
    ld h, b
    jr z, @+$2c

    dec b
    ld h, b
    dec b
    or $0c
    ld a, [hl+]
    inc bc
    ld h, b
    rlca
    or $0f
    ld c, a
    add hl, bc
    ld h, b
    ld bc, $0a4f
    or $17

jr_03e_449c:
    ld h, b
    jr z, @+$2b

    dec b
    ld h, b
    dec b
    or $0c
    add hl, hl
    inc bc
    ld h, b
    rlca
    or $0f
    ld c, a
    add hl, bc
    ld h, b
    ld bc, $0a4f
    ld h, b
    ld a, [$8260]
    cp $56
    ld b, h
    rst $38
    ret nc

    jr nz, jr_03e_447b

    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [c]
    or $02
    rst $10
    ld h, $08
    add hl, hl
    ld [$0832], sp
    ld h, b
    inc b
    db $d3
    ld [hl-], a
    ld [$0460], sp
    pop de
    ld [hl-], a
    ld [$26d7], sp
    ld [$0829], sp
    ld [hl-], a
    ld [$0460], sp
    db $d3
    ld [hl-], a
    ld [$0460], sp
    pop de

jr_03e_44e2:
    ld [hl-], a
    ld [$34d7], sp
    db $10
    ld h, b
    inc b
    db $d3
    inc [hl]
    inc b
    rst $10
    dec [hl]
    ld [$0834], sp
    dec [hl]
    ld [$0834], sp
    jr nc, @+$0a

    dec l
    db $10
    ld h, b
    ld [bc], a
    db $d3
    dec l
    ld [$0260], sp
    pop de
    dec l
    inc b
    rst $10
    dec l
    db $10
    ld h, $10
    add hl, hl
    ld [$082b], sp
    dec l
    jr nz, jr_03e_44e2

    dec l
    db $10
    rst $10
    dec l
    db $10
    ld h, $10
    add hl, hl
    ld [$082b], sp
    jr z, @+$22

    db $d3
    jr z, jr_03e_452f

    rst $10
    ld h, $08
    add hl, hl
    ld [$0832], sp
    ld h, b
    inc b
    db $d3
    ld [hl-], a
    ld [$0460], sp
    pop de
    ld [hl-], a

jr_03e_452f:
    ld [$26d7], sp
    ld [$0829], sp
    ld [hl-], a
    ld [$0460], sp
    db $d3
    ld [hl-], a
    ld [$0460], sp
    pop de
    ld [hl-], a
    ld [$34d7], sp
    db $10
    ld h, b
    inc b
    db $d3
    inc [hl]
    inc b
    rst $10
    dec [hl]
    ld [$0834], sp
    dec [hl]
    ld [$0834], sp
    jr nc, jr_03e_455c

    dec l
    db $10
    db $d3
    dec l
    db $10
    rst $10
    dec l
    db $10

jr_03e_455c:
    ld h, $10
    add hl, hl
    ld [$082b], sp
    dec l
    db $10
    ld h, b
    ld b, $d3
    dec l
    ld [$0260], sp
    rst $10
    dec l
    db $10
    ld h, $50
    ld h, b
    ld [hl], b
    cp $c2
    ld b, h
    rst $38
    ret nc

    jr nz, jr_03e_4589

    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004

jr_03e_4589:
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $6004
    ld [$1cd6], sp
    ld [$1823], sp
    db $d3
    inc hl
    ld [$1060], sp
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    pop de
    inc h
    inc b
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    pop de
    inc h

jr_03e_45bf:
    inc b
    ld h, b
    ld [$1cd6], sp
    ld [$1823], sp
    db $d3
    inc hl
    ld [$1060], sp
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a

jr_03e_45e3:
    pop de
    ld hl, $6004
    db $10
    sub $23
    jr jr_03e_45bf

    inc hl
    ld [$1060], sp
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    pop de
    inc h
    inc b
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a

jr_03e_4607:
    pop de
    inc h
    inc b
    ld h, b
    db $10
    sub $23
    jr jr_03e_45e3

    inc hl
    ld [$1060], sp
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a

jr_03e_462b:
    pop de
    ld hl, $6004
    db $10
    sub $21
    jr jr_03e_4607

    ld hl, $6008
    db $10
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a

jr_03e_464f:
    pop de
    ld hl, $6004
    db $10
    sub $21
    jr jr_03e_462b

    ld hl, $6008
    db $10
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a

jr_03e_4673:
    pop de
    ld hl, $6004
    db $10
    sub $23
    jr jr_03e_464f

    inc hl
    ld [$1060], sp
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    pop de
    inc h
    inc b
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a

jr_03e_4697:
    pop de
    inc h
    inc b
    ld h, b
    db $10
    sub $23
    jr jr_03e_4673

    inc hl
    ld [$1060], sp
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $6004
    db $10
    sub $21
    jr jr_03e_4697

    ld hl, $6008
    db $10
    sub $21
    inc b
    ld h, b
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $d604
    ld hl, $6004
    ld [bc], a
    db $d3
    ld hl, $6004
    ld [bc], a
    pop de
    ld hl, $6004
    ld [$1cd6], sp
    ld [$1823], sp
    db $d3
    inc hl
    ld [$1060], sp
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    pop de
    inc h
    inc b
    sub $24
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    pop de
    inc h
    inc b
    ld h, b
    ld [$1cd6], sp
    ld [$1823], sp
    db $d3
    inc hl
    ld [$cafe], sp
    ld b, l
    rst $38
    ld a, [c]
    or $17
    ld c, $10
    or $17
    dec e
    inc b
    ld h, b
    inc c
    or $17
    dec e
    inc b
    ld h, b
    inc c
    or $17
    db $10
    db $10
    rra
    jr nz, jr_03e_473f

    db $10
    or $17
    ld hl, $6004
    inc c
    or $17
    ld hl, $6004
    inc c
    or $17
    db $10
    db $10

jr_03e_473f:
    rra
    jr nz, jr_03e_4750

    db $10
    dec e
    inc b
    ld h, b
    inc c
    dec e
    inc b
    ld h, b
    inc c
    db $10
    db $10
    rra
    jr nz, jr_03e_4761

jr_03e_4750:
    db $10
    ld hl, $6004
    inc c
    ld hl, $6004
    inc c
    db $10
    db $10
    rra
    jr nz, jr_03e_4774

    db $10
    dec e
    inc b

jr_03e_4761:
    ld h, b
    inc c
    dec e
    inc b
    ld h, b
    inc c
    ld de, $1d10
    jr nz, jr_03e_4782

    db $10
    dec e
    inc b
    ld h, b
    inc c
    dec e
    inc b
    ld h, b

jr_03e_4774:
    inc c
    dec d
    db $10
    inc e
    jr nz, jr_03e_4788

    db $10
    dec e
    inc b
    ld h, b
    inc c
    dec e
    inc b
    ld h, b

jr_03e_4782:
    inc c
    db $10
    db $10
    rra
    jr nz, jr_03e_4799

jr_03e_4788:
    db $10
    ld hl, $6004
    inc c
    ld hl, $6004
    inc c
    db $10
    db $10
    rra
    jr nz, jr_03e_47ac

    db $10
    dec e
    inc b

jr_03e_4799:
    ld h, b
    inc c
    dec e
    inc b
    ld h, b
    inc c
    dec d
    db $10
    inc e
    jr nz, jr_03e_47b2

    db $10
    dec e
    inc b
    ld h, b
    inc c
    dec e
    inc b
    ld h, b

jr_03e_47ac:
    inc c
    db $10
    db $10
    rra
    jr nz, jr_03e_47c3

jr_03e_47b2:
    db $10
    ld hl, $6004
    inc c
    ld hl, $6004
    inc c
    db $10
    db $10
    rra

jr_03e_47be:
    jr nz, jr_03e_47be

    ld b, c
    ld b, a
    rst $38

jr_03e_47c3:
    ld h, b
    db $10
    ld a, [c]
    ld a, [c]
    db $d3
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$0760], sp
    ld h, b
    ld de, $102a
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$1860], sp
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld h, b
    ld [$082a], sp
    ld a, [hl+]
    ld [$082a], sp
    ld a, [hl+]
    ld [$0760], sp
    cp $e8
    ld b, a
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    ret nc

    jr nz, jr_03e_48b8

    sub $28
    dec c
    ld h, b
    inc bc
    db $d3
    jr z, jr_03e_4892

    ld h, b
    ld [bc], a

jr_03e_4892:
    sub $28
    inc b
    ld h, b
    inc b
    db $d3
    jr z, jr_03e_489e

    ld h, b
    db $10
    sub $26

jr_03e_489e:
    ld [$0260], sp
    db $d3
    ld h, $04
    ld h, b
    ld [bc], a
    sub $24
    ld [$0260], sp
    db $d3
    inc h
    inc b
    ld h, b
    ld [bc], a
    db $d3
    inc h
    ld [bc], a
    ld h, b
    xor [hl]
    sub $28
    dec b

jr_03e_48b8:
    ld h, b
    inc bc
    sub $28
    dec b
    ld h, b
    inc bc
    sub $28
    dec b
    ld h, b
    dec b
    db $d3
    jr z, jr_03e_48cb

    ld h, b
    ld [bc], a
    sub $28

jr_03e_48cb:
    dec b
    ld h, b
    dec b
    db $d3
    jr z, jr_03e_48d5

    ld h, b
    ld [bc], a
    sub $26

jr_03e_48d5:
    dec b
    ld h, b
    inc bc
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $24
    dec b
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    jp nc, $0224

    ld h, b
    ld e, [hl]
    sub $22
    ld [$0260], sp
    db $d3
    ld [hl+], a
    inc b
    ld h, b
    ld [bc], a
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    jp nc, $0224

    ld h, b
    ld l, $d6
    jr z, @+$0f

    ld h, b
    inc bc
    jr z, jr_03e_490e

    ld h, b
    ld [bc], a

jr_03e_490e:
    db $d3
    jr z, @+$06

    ld h, b
    inc b
    db $d3
    jr z, jr_03e_491a

    ld h, b
    db $10
    sub $26

jr_03e_491a:
    ld [$0260], sp
    db $d3
    ld h, $04
    ld h, b
    ld [bc], a
    sub $24
    ld [$0260], sp
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    pop de
    inc h
    ld [bc], a
    ld h, b
    xor h
    sub $28
    dec b
    ld h, b
    inc bc
    sub $28
    dec b
    ld h, b
    inc bc
    sub $28
    dec b
    ld h, b
    dec b
    db $d3
    jr z, jr_03e_4947

    ld h, b
    ld [bc], a
    sub $28

jr_03e_4947:
    dec b
    ld h, b
    dec b
    db $d3
    jr z, jr_03e_4951

    ld h, b
    ld [bc], a
    sub $26

jr_03e_4951:
    dec b
    ld h, b
    inc bc
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $24
    dec b
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    jp nc, $0224

    ld h, b
    ld e, [hl]
    sub $22
    ld [$0260], sp
    db $d3
    ld [hl+], a
    inc b
    ld h, b
    ld [bc], a
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    pop de
    inc h
    ld [bc], a
    ld h, b
    ld e, [hl]
    sub $22
    ld [$0260], sp
    db $d3
    ld [hl+], a
    ld [bc], a
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    ld [bc], a
    ld h, b
    ld b, $d6
    ld [hl+], a
    ld [$0260], sp
    db $d3
    ld [hl+], a
    ld [bc], a
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    ld [bc], a
    ld h, b
    ld b, [hl]
    sub $22
    ld [$0260], sp
    db $d3
    ld [hl+], a
    ld [bc], a
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    ld [bc], a
    ld h, b
    ld b, $d1
    inc h
    ld [bc], a
    ld h, b
    ld e, [hl]
    sub $22
    ld [$0260], sp
    db $d3
    ld [hl+], a
    ld [bc], a
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    ld [bc], a
    ld h, b
    ld b, $d6
    ld h, $08
    ld h, b
    ld [bc], a
    db $d3
    ld h, $02
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    ld [bc], a
    ld h, b
    ld b, $d6
    ld [hl+], a
    ld [$0260], sp
    db $d3
    ld [hl+], a
    ld [bc], a
    ld h, b
    inc b
    sub $24
    inc b
    ld h, b
    inc b
    db $d3
    inc h
    ld [bc], a
    ld h, b
    ld b, $d1
    inc h
    ld [bc], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    db $10
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2e
    inc c
    ld h, b
    ld bc, $2ed3
    inc bc
    ld h, b
    ld [bc], a
    ld l, $02
    ld h, b
    inc c
    sub $2e
    ld a, [bc]
    ld h, b
    ld [bc], a
    pop de
    ld l, $04
    ld h, b
    ld [bc], a
    db $d3
    ld l, $02
    ld h, b
    ld b, $d2
    ld l, $02
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc [hl]
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2e
    inc c
    ld h, b
    ld bc, $2ed3
    inc bc
    ld h, b
    dec b
    db $d3
    ld l, $03
    ld h, b
    ld [bc], a
    db $d3
    ld l, $02
    ld h, b
    inc b
    sub $2e
    db $10
    ld h, b
    ld [bc], a
    db $d3
    ld l, $02
    ld h, b
    ld b, $2e
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ret nc

    ld h, b
    rst $38
    ret nc

    ld h, b
    rst $38
    ld h, b
    ld [hl], $d6
    jr z, @+$0f

    ld h, b
    inc bc
    jr z, jr_03e_4afa

    ld h, b
    ld [bc], a

jr_03e_4afa:
    call nc, $0428
    ld h, b
    inc b
    db $d3
    jr z, jr_03e_4b06

    ld h, b
    db $10
    sub $26

jr_03e_4b06:
    ld [$0260], sp
    db $d3
    ld h, $04
    ld h, b
    ld [bc], a
    sub $24
    ld [$0260], sp
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    jp nc, $0224

    ld h, b
    xor h
    sub $28
    dec b
    ld h, b
    inc bc
    sub $28
    dec b
    ld h, b
    inc bc
    sub $28
    dec b
    ld h, b
    dec b
    db $d3
    jr z, jr_03e_4b33

    ld h, b
    ld [bc], a
    sub $28

jr_03e_4b33:
    dec b
    ld h, b
    dec b
    db $d3
    jr z, jr_03e_4b3d

    ld h, b
    ld [bc], a
    sub $26

jr_03e_4b3d:
    dec b
    ld h, b
    inc bc
    db $d3
    ld h, $04
    ld h, b
    inc b
    sub $24
    dec b
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    ld h, b
    inc b
    jp nc, $0224

    ld h, b
    ld c, [hl]
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2e
    ld [$0260], sp
    db $d3
    ld l, $02
    ld h, b
    ld b, $2e
    ld [bc], a
    ld h, b
    ld b, $2e
    ld [bc], a
    ld h, b
    inc b
    sub $2e
    ld [$0260], sp
    db $d3
    ld l, $02
    ld h, b
    ld b, $d3
    ld l, $02
    ld h, b
    ld b, $d2
    ld l, $02
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc [hl]
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ld h, b
    inc b
    sub $2e
    ld [$0260], sp
    db $d3
    ld l, $02
    ld h, b
    ld b, $d3
    ld l, $02
    ld h, b
    ld b, $d3
    ld l, $02
    ld h, b
    inc b
    sub $2e
    ld [$0260], sp
    push de
    ld l, $02
    ld h, b
    ld b, $d4
    ld l, $02
    ld h, b
    ld b, $d3
    ld l, $02
    ld h, b
    inc b
    sub $2d
    ld [$0260], sp
    db $d3
    dec l
    ld [bc], a
    ld h, b
    inc b
    sub $2b
    ld [$0260], sp
    db $d3
    dec hl
    ld [bc], a
    ret nc

    ld h, b
    rst $38
    ret nc

    ld h, b
    add l
    cp $85
    ld c, b
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $0c
    ld [$0860], sp
    inc c
    ld [$0860], sp
    inc e
    db $10
    jr jr_03e_4c66

    inc de
    ld [$1060], sp
    inc de
    ld [$0860], sp

jr_03e_4c66:
    jr jr_03e_4c70

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4c70:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4c82

    inc de
    inc b
    ld h, b
    inc b
    inc de
    ld [$0860], sp

jr_03e_4c82:
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4ca2

    inc de
    inc b
    ld h, b
    inc b
    inc de
    ld [$0860], sp

jr_03e_4ca2:
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr @+$0a

    inc de
    inc b
    ld h, b
    inc b
    inc de
    jr jr_03e_4d21

    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4cde

    inc de
    ld [$1060], sp
    inc de
    ld [$0860], sp

jr_03e_4cde:
    jr jr_03e_4ce8

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4ce8:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4cfa

    inc de
    ld [$1060], sp
    inc de
    ld [$0816], sp

jr_03e_4cfa:
    jr jr_03e_4d04

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4d04:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4d16

    inc de
    inc b
    ld h, b
    inc b
    inc de
    db $10
    ld h, b
    db $10

jr_03e_4d16:
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$200c], sp
    inc e

jr_03e_4d21:
    ld [$0860], sp
    inc de
    ld [$1860], sp
    inc de
    ld [$0860], sp
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    inc de
    ld [$0860], sp
    ld d, $10
    jr @+$0a

    ld h, b
    ld [$1016], sp
    jr jr_03e_4d54

    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp

jr_03e_4d54:
    ld h, b
    ld [$101c], sp
    inc de
    ld [$1860], sp
    inc de
    ld [$0860], sp
    ld d, $10
    jr jr_03e_4d6c

    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp

jr_03e_4d6c:
    ld h, b
    ld [$101c], sp
    inc de
    ld [$1860], sp
    inc de
    ld [$0860], sp
    ld d, $10
    jr @+$0a

    ld h, b
    ld [$1016], sp
    jr @+$0a

    ld h, b
    ld [$101c], sp
    jr jr_03e_4d90

    ld h, b
    jr @+$15

    db $10
    ld d, $10
    jr jr_03e_4d98

jr_03e_4d90:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp

jr_03e_4d98:
    ld h, b
    ld [$101c], sp
    inc de
    ld [$1860], sp
    inc de
    ld [$0860], sp
    jr jr_03e_4dae

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4dae:
    ld h, b
    db $10
    inc c
    ld [$181c], sp
    inc de
    inc b
    ld h, b
    inc b
    inc de
    ld [$0860], sp
    inc de
    ld [$0816], sp
    jr jr_03e_4dca

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4dca:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    inc de
    ld [$1860], sp
    inc de
    ld [$0860], sp
    jr jr_03e_4de4

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4de4:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4df6

    inc de
    ld [$1060], sp
    inc de
    ld [$0860], sp

jr_03e_4df6:
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr @+$0a

    inc de
    ld [$1060], sp
    jr jr_03e_4e18

    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp

jr_03e_4e18:
    ld h, b
    ld [$100c], sp
    ld h, b
    ld [$081b], sp
    inc e
    db $10
    jr jr_03e_4e2c

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4e2c:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4e4a

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4e4a:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4e68

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4e68:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$100c], sp
    ld h, b
    db $10
    inc e
    db $10
    jr @+$0a

    inc de
    ld [$1060], sp
    jr jr_03e_4e88

    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp

jr_03e_4e88:
    ld h, b
    ld [$100c], sp
    ld h, b
    ld [$081b], sp
    inc e
    db $10
    jr jr_03e_4e9c

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4e9c:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    jr jr_03e_4ec7

    db $10
    jr jr_03e_4eb6

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4eb6:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b

jr_03e_4ec7:
    ld [$101c], sp
    jr jr_03e_4ed4

    inc de
    ld [$1060], sp
    inc de
    ld [$0860], sp

jr_03e_4ed4:
    jr jr_03e_4ede

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4ede:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4ef0

    inc de
    inc b
    ld h, b
    inc b
    inc de
    ld [$0860], sp

jr_03e_4ef0:
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4f10

    inc de
    inc b
    ld h, b
    inc b
    inc de
    ld [$0860], sp

jr_03e_4f10:
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$200c], sp
    inc e
    ld [$0860], sp
    inc de
    ld [$1860], sp
    inc de
    ld [$0860], sp
    ld d, $08
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$081c], sp
    ld h, b
    ld [$0813], sp
    ld h, b
    jr jr_03e_4f56

    ld [$0860], sp
    jr jr_03e_4f50

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4f50:
    ld h, b
    db $10
    inc c
    ld [$181c], sp

jr_03e_4f56:
    inc de
    ld [$1060], sp
    inc de
    ld [$0816], sp
    jr jr_03e_4f68

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4f68:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$081c], sp
    ld h, b
    ld [$0813], sp
    ld h, b
    jr @+$15

    ld [$0860], sp
    jr jr_03e_4f84

    ld h, b
    ld [$0813], sp
    ld h, b
    ld [$080c], sp

jr_03e_4f84:
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr jr_03e_4f96

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4f96:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$080c], sp
    ld h, b
    ld [$101c], sp
    jr @+$0a

    inc de
    ld [$1060], sp
    jr jr_03e_4fba

    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp

jr_03e_4fba:
    ld h, b
    ld [$0a0c], sp
    ld h, b
    ld c, $1b
    ld [$101c], sp
    jr jr_03e_4fce

    inc de
    ld [$0818], sp
    ld h, b
    ld [$0813], sp

jr_03e_4fce:
    ld h, b
    ld [$0816], sp
    ld h, b
    ld [$0818], sp
    ld h, b
    ld [$51fe], sp
    ld c, h
    rst $38
    ld a, [c]
    or $17
    ld h, b
    jr nc, jr_03e_5001

    dec c
    ld h, b
    inc hl
    dec e
    ld [$0860], sp
    inc e
    ld [$b860], sp
    rra
    ld [bc], a
    ld h, b
    ld b, $1f
    ld [bc], a
    ld h, b
    ld b, $1f
    inc b
    ld h, b
    inc c
    rra
    inc b
    ld h, b
    inc c
    dec e
    inc b
    ld h, b
    inc c

jr_03e_5001:
    inc e
    inc b
    ld h, b
    ld l, h
    ld a, [de]
    ld [$0860], sp
    inc e
    inc b
    ld h, b
    inc a
    rra
    dec c
    ld h, b
    inc hl
    dec e
    ld [$0860], sp
    inc e
    ld [$b860], sp
    rra
    ld [bc], a
    ld h, b
    ld b, $1f
    ld [bc], a
    ld h, b
    ld b, $1f
    inc b
    ld h, b
    inc c
    rra
    inc b
    ld h, b
    inc c
    dec e
    inc b
    ld h, b
    inc c
    inc e
    inc b
    ld h, b
    ld l, h
    ld a, [de]
    ld [$0860], sp
    inc e
    inc b
    ld h, b
    ld l, h
    ld a, [de]
    ld [$0860], sp
    inc e
    inc b
    ld h, b
    inc c
    ld a, [de]
    ld [$0860], sp
    inc e
    inc b
    ld h, b
    ld c, h
    ld a, [de]
    ld [$0860], sp
    inc e
    inc b
    ld h, b
    ld l, h
    dec e
    ld b, $60
    ld a, [bc]
    dec e
    inc b
    ld h, b
    inc c
    dec e
    ld b, $60
    ld a, [bc]
    dec e
    inc b
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld a, $f6
    rla
    jr z, jr_03e_5071

    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp

jr_03e_5071:
    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp
    ld h, b
    ld [$0c2b], sp
    ld h, b
    inc d
    dec hl
    ld a, [bc]
    ld h, b
    ld d, $29
    ld [$0860], sp
    jr z, @+$0a

    ld h, b
    jr c, @+$2a

    ld [$0860], sp
    add hl, hl
    ld [$0860], sp
    jr z, jr_03e_509d

    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp

jr_03e_509d:
    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp
    ld h, b
    ld [$0c2b], sp
    ld h, b
    inc d
    dec hl
    db $10
    ld h, b
    db $10
    add hl, hl
    ld [$0860], sp
    jr z, jr_03e_50bd

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld a, [hl-]
    or $17

jr_03e_50bd:
    rra
    dec c
    ld h, b
    inc hl
    dec e
    ld [$0860], sp
    inc e
    ld [$b860], sp
    rra
    inc b
    ld h, b
    inc b
    rra
    inc b
    ld h, b
    inc b
    rra
    ld [$0860], sp
    rra
    ld [$0860], sp
    dec e
    ld [$0860], sp
    inc e
    ld [$5860], sp
    jr z, jr_03e_50eb

    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp

jr_03e_50eb:
    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp
    ld h, b
    ld [$082b], sp
    ld h, b
    jr @+$2d

    ld [$1860], sp
    add hl, hl
    ld [$0860], sp
    jr z, @+$0a

    ld h, b
    jr c, @+$2a

    ld [$0860], sp
    add hl, hl
    ld [$0860], sp
    jr z, jr_03e_5117

    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp

jr_03e_5117:
    ld h, b
    ld [$0829], sp
    ld h, b
    ld [$0828], sp
    ld h, b
    ld [$082b], sp
    ld h, b
    jr @+$2d

    ld [$1860], sp
    add hl, hl
    ld [$0860], sp
    jr z, jr_03e_5137

    ld h, b
    rst $38
    ld h, b
    adc c
    cp $dd
    ld c, a
    rst $38

jr_03e_5137:
    ld a, [c]
    sub $24
    db $10
    inc h
    ld h, b
    inc h
    db $10
    inc h
    db $10
    inc h
    jr nc, jr_03e_5168

    jr nc, jr_03e_516a

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h
    db $10
    inc h
    db $10
    inc h
    jr nc, jr_03e_5176

    jr nc, jr_03e_5178

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h
    db $10
    inc h
    db $10
    inc h
    jr nc, jr_03e_5184

    jr nc, jr_03e_5186

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_5168:
    db $10
    inc h

jr_03e_516a:
    db $10
    inc h
    jr nc, jr_03e_5192

    jr nc, jr_03e_5194

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_5176:
    db $10
    inc h

jr_03e_5178:
    db $10
    inc h
    jr nc, jr_03e_51a0

    jr nc, jr_03e_51a2

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_5184:
    db $10
    inc h

jr_03e_5186:
    db $10
    inc h
    jr nc, jr_03e_51ae

    jr nc, jr_03e_51b0

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_5192:
    db $10
    inc h

jr_03e_5194:
    db $10
    inc h
    jr nc, jr_03e_51bc

    jr nc, jr_03e_51be

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51a0:
    db $10
    inc h

jr_03e_51a2:
    db $10
    inc h
    jr nc, jr_03e_51ca

    jr nc, jr_03e_51cc

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51ae:
    db $10
    inc h

jr_03e_51b0:
    db $10
    inc h
    jr nc, jr_03e_51d8

    jr nc, jr_03e_51da

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51bc:
    db $10
    inc h

jr_03e_51be:
    db $10
    inc h
    jr nc, jr_03e_51e6

    jr nc, jr_03e_51e8

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51ca:
    db $10
    inc h

jr_03e_51cc:
    db $10
    inc h
    jr nc, jr_03e_51f4

    jr nc, jr_03e_51f6

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51d8:
    db $10
    inc h

jr_03e_51da:
    db $10
    inc h
    jr nc, jr_03e_5202

    jr nc, jr_03e_5204

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51e6:
    db $10
    inc h

jr_03e_51e8:
    db $10
    inc h
    jr nc, jr_03e_5210

    jr nc, jr_03e_5212

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_51f4:
    db $10
    inc h

jr_03e_51f6:
    db $10
    inc h
    jr nc, jr_03e_521e

    jr nc, @+$26

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_5202:
    db $10
    inc h

jr_03e_5204:
    db $10
    inc h
    jr nc, @+$26

    jr nc, @+$26

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_5210:
    db $10
    inc h

jr_03e_5212:
    db $10
    inc h
    jr nc, jr_03e_523a

    jr nc, jr_03e_523c

    db $10
    inc h
    db $10
    inc h
    ld h, b
    inc h

jr_03e_521e:
    db $10
    cp $38
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $01
    sub $24
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc h
    add hl, bc
    ld h, b
    dec b
    sub $22
    add hl, bc

jr_03e_523a:
    inc h
    sub b

jr_03e_523c:
    ld sp, hl
    ld bc, $00e0
    call nc, $2424
    jp nc, $1224

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $24
    ld b, $60
    inc bc
    db $d3
    inc h
    ld b, $60
    inc bc
    sub $24
    ld b, $60
    inc bc
    db $d3
    inc h
    ld b, $60
    inc bc
    sub $24
    ld b, $60
    inc bc
    db $d3
    inc h
    ld b, $60
    inc bc
    sub $24
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc h
    add hl, bc
    ld h, b
    dec b
    sub $22
    add hl, bc
    inc h
    sub b
    ld sp, hl
    ld bc, $00e0
    call nc, $2424
    jp nc, $2424

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $29
    ld b, $2b
    ld b, $2c
    ld b, $2e
    ld b, $30
    ld b, $32
    ld b, $d6

jr_03e_5293:
    inc sp
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc sp
    add hl, bc
    ld h, b
    dec b
    sub $32
    add hl, bc
    jr nc, jr_03e_52e9

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nc, jr_03e_52cc

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2b
    ld [de], a
    inc l
    ld [de], a
    ld l, $12
    jr nc, jr_03e_52c7

    ld [hl-], a
    ld [de], a
    inc sp
    ld [de], a
    dec [hl]
    ld [de], a
    ld [hl], $12
    scf
    jr nz, jr_03e_5293

    scf
    db $10
    sub $37
    inc b
    ld h, b
    inc b

jr_03e_52c7:
    scf
    inc b
    ld h, b
    inc b
    scf

jr_03e_52cc:
    inc e
    db $d3
    scf
    ld c, $d6
    scf
    inc bc
    ld h, b
    inc b
    scf
    inc bc
    ld h, b
    inc b
    scf
    ld c, $2b
    ld [bc], a
    ld h, b
    ld [bc], a
    dec hl
    inc bc
    ld h, b
    ld [bc], a
    dec hl
    ld [bc], a
    ld h, b
    inc bc
    dec l
    inc b

jr_03e_52e9:
    ld h, b
    dec b
    dec l
    dec b
    ld h, b
    inc b
    dec l
    dec b
    ld h, b
    dec b
    cpl
    ld c, $d3
    cpl
    ld c, $d6
    scf
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $30
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03e_5310

    ld h, b
    inc b
    pop de
    jr nc, jr_03e_5315

    sub $2b

jr_03e_5310:
    ld a, [hl+]
    jr nc, jr_03e_531a

    ld h, b
    inc bc

jr_03e_5315:
    db $d3
    jr nc, jr_03e_531c

    sub $30

jr_03e_531a:
    rlca
    ld [hl-], a

jr_03e_531c:
    rlca

jr_03e_531d:
    inc [hl]
    rlca
    dec [hl]
    rlca
    scf
    jr c, jr_03e_531d

    ld bc, $00e0
    db $d3
    scf
    ld c, $d1
    scf
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $37
    add hl, bc

jr_03e_5334:
    jr c, jr_03e_533f

    ld a, [hl-]
    ld a, [bc]
    inc a
    jr c, jr_03e_5334

    ld bc, $00e0
    db $d3

jr_03e_533f:
    inc a
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $3c
    ld c, $3a
    ld c, $38
    ld c, $3a
    rlca
    ld h, b
    rlca
    db $d3
    ld a, [hl-]
    rlca
    sub $38
    rlca
    scf
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    scf
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $37
    inc e
    dec [hl]
    rlca
    ld h, b
    rlca
    db $d3
    dec [hl]
    rlca
    sub $37
    rlca
    jr c, jr_03e_53a3

    db $d3
    jr c, jr_03e_537c

    sub $37
    ld c, $35
    ld c, $33
    rlca

jr_03e_537c:
    ld h, b
    rlca
    db $d3
    inc sp
    rlca
    sub $35
    rlca
    scf
    jr c, jr_03e_53bc

    ld c, $33
    ld c, $32
    rlca
    ld h, b
    rlca
    db $d3
    ld [hl-], a
    rlca
    sub $34
    rlca
    ld [hl], $2a
    scf
    ld c, $39
    ld c, $3b
    ld c, $3c
    ld h, d
    ld a, $07
    inc a
    rlca
    dec sp

jr_03e_53a3:
    ld d, h
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec sp
    inc e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $30
    rlca
    ld h, b
    rlca
    db $d3
    jr nc, jr_03e_53be

    sub $2b
    inc bc
    ld h, b
    inc b

jr_03e_53bc:
    dec hl
    ld a, [hl+]

jr_03e_53be:
    db $d3
    dec hl
    rlca
    sub $30
    inc bc
    ld h, b
    inc b
    jr nc, jr_03e_53cf

    ld [hl-], a
    rlca
    inc [hl]
    rlca
    dec [hl]
    rlca
    scf

jr_03e_53cf:
    ld sp, $01f9
    ldh [rP1], a
    db $d3
    scf
    ld c, $d1
    scf
    rlca
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $37
    rlca
    ld h, b
    inc bc
    db $d3
    scf
    inc b
    sub $37
    ld c, $38
    rlca
    ld a, [hl-]
    rlca
    inc a
    jr c, @-$05

    ld bc, $00e0
    db $d3
    inc a
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $3c
    inc b
    ld a, $05
    inc a
    dec b
    ld a, [hl-]
    inc bc
    ld h, b
    rlca
    db $d3
    ld a, [hl-]
    inc b
    sub $38
    inc bc
    ld h, b
    rlca
    db $d3
    jr c, jr_03e_5414

    sub $3a
    ld c, $60

jr_03e_5414:
    inc bc
    db $d3
    ld a, [hl-]
    inc b
    sub $38
    rlca
    scf
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    scf
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $37
    inc e
    dec [hl]
    rlca
    ld h, b
    rlca
    db $d3
    dec [hl]
    rlca
    sub $37
    rlca
    jr c, jr_03e_5453

    db $d3
    jr c, jr_03e_5448

    sub $38
    inc b
    ld a, [hl-]
    dec b
    jr c, jr_03e_5446

    scf
    rlca
    ld h, b
    inc bc
    db $d3

jr_03e_5446:
    scf
    inc b

jr_03e_5448:
    sub $35
    rlca
    ld h, b
    inc bc
    db $d3
    dec [hl]
    inc b
    sub $33
    rlca

jr_03e_5453:
    ld h, b
    inc bc
    db $d3
    inc sp
    inc b
    sub $33
    rlca
    dec [hl]
    rlca
    scf
    inc e
    db $d3
    scf
    ld c, $d6
    scf
    inc b
    jr c, jr_03e_546c

    scf
    dec b
    dec [hl]
    rlca
    ld h, b

jr_03e_546c:
    inc bc
    db $d3
    dec [hl]
    inc b
    sub $33
    rlca
    ld h, b
    inc bc
    db $d3
    inc sp
    inc b
    sub $32
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl-], a
    inc b
    sub $32
    rlca
    inc [hl]
    rlca
    ld [hl], $07
    ld h, b
    inc bc
    db $d3
    ld [hl], $04
    sub $36
    rlca
    scf
    rlca
    add hl, sp
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, sp
    inc b
    sub $39
    rlca
    dec sp
    rlca
    inc a
    rlca
    dec sp
    rlca
    inc a
    rlca
    ld a, $07
    ccf
    ld d, h
    ld sp, hl
    ld bc, $00e0
    db $d3
    ccf
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $41
    rlca
    ccf
    rlca
    ld a, $46
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, $1c
    pop de
    ld a, $0e
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $3c
    rlca
    ld h, b
    rlca
    db $d3
    inc a
    rlca
    sub $3e
    rlca
    ccf
    inc hl
    db $d3
    ccf
    rlca
    sub $3c
    ld c, $3e
    ld c, $3f
    ld c, $3e
    rlca
    ld h, b
    rlca
    db $d3
    ld a, $07
    sub $3a
    rlca
    scf
    ld a, [hl+]
    db $d3
    scf
    ld c, $d6
    scf
    inc e
    jr c, jr_03e_54f9

    ld h, b
    rlca
    db $d3
    jr c, jr_03e_54fe

    sub $3a

jr_03e_54f9:
    rlca
    inc a
    inc hl
    db $d3
    inc a

jr_03e_54fe:
    rlca
    sub $38
    ld c, $3a
    ld c, $3c
    ld c, $3a
    rlca
    ld h, b
    rlca
    db $d3
    ld a, [hl-]
    rlca
    sub $38
    rlca
    scf
    ld a, [hl+]
    db $d3
    scf
    ld c, $d6
    scf
    rlca
    ld h, b
    inc bc
    db $d3
    scf
    inc b
    sub $38
    rlca
    scf
    rlca
    dec [hl]
    rlca
    ld h, b
    rlca
    db $d3
    dec [hl]
    rlca
    sub $37
    rlca
    jr c, @+$25

    db $d3
    jr c, @+$09

    sub $35
    ld c, $37
    ld c, $38
    ld c, $37
    dec d
    db $d3
    scf
    rlca
    sub $33
    dec d
    db $d3
    inc sp
    rlca
    sub $3c
    inc e
    db $d3
    inc a
    rlca
    sub $3c
    rlca
    ld a, $07
    ccf
    rlca
    ld a, $07
    ld h, b
    rlca
    db $d3
    ld a, $07
    sub $39
    inc bc
    ld h, b
    inc b
    add hl, sp
    ld a, [hl+]
    db $d3
    add hl, sp
    ld c, $d6
    ld a, $0e
    inc a
    ld c, $3b
    rlca
    ld h, b
    rlca
    db $d3
    dec sp
    rlca
    sub $37
    rlca
    ld b, e
    ld a, [hl+]
    ld b, c
    ld c, $3f
    ld c, $3e
    ld c, $3f
    rlca
    ld h, b
    rlca
    db $d3
    ccf
    rlca
    sub $41
    rlca
    ld b, e
    inc hl
    db $d3
    ld b, e
    rlca
    sub $3f
    ld c, $41
    ld c, $43
    ld c, $41
    rlca
    ld h, b
    rlca
    db $d3
    ld b, c
    rlca
    sub $3f
    rlca
    ld a, $2a
    db $d3
    ld a, $0e
    sub $3e
    inc e
    inc a
    rlca
    ld h, b
    rlca
    db $d3
    inc a
    rlca
    sub $3e
    rlca
    ccf
    inc hl
    db $d3
    ccf
    rlca
    sub $3c
    rlca
    ld a, $07
    ccf
    rlca
    ld b, c
    rlca

jr_03e_55b8:
    ld b, e
    rlca
    ld b, h
    rlca
    ld b, [hl]
    jr c, jr_03e_55b8

    ld bc, $00e0
    db $d3
    ld b, [hl]
    ld c, $d1
    ld b, [hl]
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $3a
    inc e
    sub $38
    rlca
    ld h, b
    rlca
    db $d3
    jr c, jr_03e_55de

    sub $3a
    rlca
    inc a
    inc hl
    db $d3
    inc a

jr_03e_55de:
    rlca
    sub $38
    ld c, $3a
    ld c, $3c
    ld c, $37
    ld c, $36
    rlca
    scf
    rlca
    add hl, sp
    ld c, $37
    rlca
    add hl, sp
    rlca
    dec sp
    ld c, $39
    rlca
    dec sp
    rlca
    inc a
    ld c, $d6
    dec sp
    rlca
    inc a
    rlca
    ld a, $2a
    db $d3
    ld a, $0e
    sub $43
    inc hl
    ld b, c
    rlca

jr_03e_5609:
    ccf
    rlca
    ld a, $07
    inc a
    jr c, jr_03e_5609

    ld bc, $00e0
    db $d3
    inc a
    inc e
    pop de
    inc a
    ld c, $60
    ld c, $f9
    pop hl
    ldh [rP1], a
    cp $ff
    ld d, d
    rst $38
    ret nc

    jr nz, jr_03e_5680

    ld sp, hl
    pop hl
    ldh [rP1], a
    or $01
    sub $1c
    add hl, bc
    dec e
    add hl, bc
    rra
    add hl, bc
    ld h, b
    inc b
    db $d3
    rra
    dec b
    sub $1f
    add hl, bc
    ld hl, $2209
    ld [de], a
    ld hl, $2206
    ld b, $21
    ld b, $1f
    ld [de], a
    dec e
    ld [de], a
    inc e
    ld [de], a
    ld a, [de]
    ld [de], a
    jr @+$14

    ld a, [de]
    ld [de], a
    inc e
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc e
    add hl, bc
    ld h, b
    dec b
    sub $1a
    add hl, bc
    inc e
    sub b
    call nc, $241c
    jp nc, $241c

    sub $20
    ld b, $22
    ld b, $24
    ld b, $26
    ld b, $27
    ld b, $29
    ld b, $2b
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec hl
    add hl, bc
    ld h, b
    dec b
    sub $29

jr_03e_567d:
    add hl, bc
    daa
    ld c, b

jr_03e_5680:
    db $d3
    daa
    ld [de], a
    sub $27
    add hl, bc
    add hl, hl
    add hl, bc
    daa
    ld [de], a
    add hl, hl
    ld [de], a
    dec hl
    ld [de], a
    inc l
    ld [de], a
    ld l, $12
    inc l
    ld [de], a
    ld l, $12
    jr nc, jr_03e_56aa

    or $02
    cpl
    ld [$0460], sp
    db $d3
    cpl
    ld [$0460], sp
    pop de
    cpl
    ld [$2bd6], sp
    jr nz, jr_03e_567d

jr_03e_56aa:
    dec hl
    ld c, $d6
    ld h, $03
    ld h, b
    inc b
    ld h, $03
    ld h, b
    inc b
    dec hl
    ld c, $26
    inc bc
    ld h, b
    inc b
    ld h, $03
    ld h, b
    inc b
    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $1a
    rlca
    inc e
    rlca
    dec e
    rlca
    rra
    rlca
    ld hl, $2207
    rlca
    inc hl
    rlca
    ld hl, $2307
    rlca
    inc h
    rlca
    ld h, $07
    jr z, jr_03e_56e6

jr_03e_56df:
    add hl, hl
    rlca
    dec hl
    rlca
    ld h, b
    jr c, jr_03e_56df

jr_03e_56e6:
    pop hl
    ldh [rP1], a
    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    rlca
    ld h, b
    inc b
    pop de
    inc h
    rlca
    sub $1f
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    rra
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $24
    rlca
    ld h, $07
    jr z, @+$09

    add hl, hl
    rlca
    dec hl
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec hl
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $2b
    dec h
    inc l
    add hl, bc
    dec hl
    ld a, [bc]
    add hl, hl
    add hl, bc
    dec hl
    add hl, bc
    add hl, hl
    ld a, [bc]
    daa
    add hl, bc
    add hl, hl
    add hl, bc
    daa
    ld a, [bc]
    ld h, $07
    ld h, b
    rlca
    db $d3
    ld h, $07
    sub $24
    rlca
    ld [hl+], a
    ld c, $27
    rlca
    add hl, hl
    rlca
    dec hl
    ld c, $27
    ld c, $22
    ld c, $1f
    ld c, $60
    ld a, [hl+]
    jr nz, jr_03e_574f

    ld [hl+], a
    rlca
    inc h
    jr c, jr_03e_57ad

    ld a, [hl+]
    daa

jr_03e_574f:
    rlca
    ld h, $07
    daa
    jr c, jr_03e_5776

    jr c, @+$25

    inc e
    inc h
    inc e
    ld h, $0a
    ld h, b
    inc b
    ld sp, hl
    nop
    ldh [rSC], a
    dec hl
    inc bc
    ld h, b
    ld bc, $2bd5
    inc b
    ld h, b
    ld bc, $2bd4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $2b

jr_03e_5776:
    ld c, $f9
    nop
    ldh [rSC], a
    jr nc, @+$05

    ld h, b
    ld bc, $30d5
    inc b
    ld h, b
    ld bc, $30d4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $30
    ld c, $f9
    nop
    ldh [rSC], a
    ld [hl-], a
    inc bc
    ld h, b
    ld bc, $32d5
    inc b
    ld h, b
    ld bc, $32d4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $32
    ld c, $f9
    nop
    ldh [rSC], a

jr_03e_57ad:
    scf
    inc bc
    ld h, b
    ld bc, $37d5
    inc b
    ld h, b
    ld bc, $37d4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $37
    ld c, $f9
    nop
    ldh [rSC], a
    ld [hl-], a
    inc bc
    ld h, b
    ld bc, $32d5
    inc b
    ld h, b
    ld bc, $32d4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $32
    ld c, $f9
    nop
    ldh [rSC], a
    jr nc, @+$05

    ld h, b
    ld bc, $30d5
    inc b
    ld h, b
    ld bc, $30d4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $30
    ld c, $f9
    nop
    ldh [rSC], a
    dec hl
    inc bc
    ld h, b
    ld bc, $2bd5
    inc b
    ld h, b
    ld bc, $2bd4
    inc bc
    ld h, b
    ld [bc], a
    ld sp, hl
    nop
    ldh [rP1], a
    sub $2b
    ld c, $f9
    nop
    ldh [rSC], a
    ld h, $03
    ld h, b
    ld bc, $26d5
    inc b
    ld h, b
    ld bc, $26d4
    inc bc
    ld h, b
    ld a, [hl-]
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $28
    inc e
    inc h
    inc e
    rra
    dec d
    inc h
    inc bc
    ld h, b
    inc b
    inc h
    rlca
    ld h, $07
    jr z, @+$09

    add hl, hl
    rlca
    dec hl
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec hl
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $2b
    ld a, [hl+]
    inc l
    rlca
    dec hl
    rlca
    add hl, hl
    ld c, $2b
    rlca
    add hl, hl
    rlca
    daa
    ld c, $29
    rlca
    daa
    rlca
    ld h, $07
    ld h, b
    rlca
    db $d3
    ld h, $07
    sub $24
    rlca
    ld [hl+], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc b
    sub $27
    rlca
    add hl, hl
    rlca
    dec hl
    ld c, $27
    ld c, $22
    ld c, $1f
    ld c, $60
    ld a, [hl+]
    jr nz, jr_03e_587f

    ld [hl+], a
    rlca
    inc h
    inc e
    db $d3
    inc h
    inc e

jr_03e_587f:
    ld h, b
    ld a, [hl+]
    sub $24
    rlca
    ld h, $07
    daa
    inc e
    db $d3
    daa
    inc e
    ld h, b
    inc e
    sub $26
    rlca
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $26
    rlca
    jr z, jr_03e_58a1

    ld a, [hl+]
    rlca
    ld h, b
    inc bc
    db $d3
    ld a, [hl+]
    inc b

jr_03e_58a1:
    sub $2a
    rlca
    inc l
    rlca
    dec l
    rlca
    inc l
    rlca
    dec l
    rlca
    cpl
    rlca
    rra
    rlca
    ld e, $07
    rra
    rlca
    ld hl, $2307
    rlca
    ld hl, $2307
    rlca
    inc h
    rlca
    ld h, $07
    dec h
    rlca
    ld h, $07
    daa
    rlca
    add hl, hl
    rlca
    jr z, jr_03e_58d1

    add hl, hl
    rlca
    dec hl
    rlca
    sub $2c
    rlca

jr_03e_58d1:
    dec hl
    rlca
    inc l
    rlca
    ld l, $07
    jr nc, jr_03e_58e0

    cpl
    rlca
    jr nc, jr_03e_58e4

    ld [hl-], a
    rlca
    inc sp

jr_03e_58e0:
    rlca
    ld [hl-], a
    rlca
    inc sp

jr_03e_58e4:
    rlca
    dec [hl]
    rlca
    scf
    inc bc
    ld h, b
    inc b
    scf
    rlca
    add hl, sp
    rlca
    dec sp
    rlca
    inc sp
    rlca
    ld h, b
    rlca
    db $d3
    inc sp
    rlca
    sub $35
    rlca
    scf
    inc e
    db $d3
    scf
    ld c, $d6
    inc sp
    ld c, $35
    ld c, $37
    ld c, $35
    rlca
    ld h, b
    rlca
    db $d3
    dec [hl]
    rlca
    sub $32
    rlca
    ld l, $0e
    ld [hl-], a
    rlca
    inc sp
    rlca
    dec [hl]
    ld c, $32
    ld c, $d6
    ld l, $0e
    ld [hl-], a
    ld c, $30
    jr c, jr_03e_5955

    inc e
    jr nc, jr_03e_5942

    ld [hl-], a
    rlca
    ld h, b
    rlca
    db $d3
    ld [hl-], a
    rlca
    sub $30
    rlca
    ld l, $0e
    ld [hl-], a
    rlca
    jr nc, jr_03e_593d

    ld [hl-], a
    ld c, $2e
    ld c, $2b
    ld c, $26

jr_03e_593d:
    ld c, $29
    inc e
    db $d3
    add hl, hl

jr_03e_5942:
    ld c, $d6
    inc l
    rlca
    dec hl
    rlca
    inc l
    ld c, $2b
    ld c, $29
    ld c, $2b
    rlca
    inc l
    rlca
    dec hl
    rlca
    add hl, hl

jr_03e_5955:
    rlca
    daa
    inc e
    jr z, jr_03e_5961

    daa
    rlca
    ld h, $07
    dec h
    rlca
    inc h

jr_03e_5961:
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    sub $24
    rlca
    inc hl
    rlca
    ld [hl+], a
    ld c, $21
    inc e
    db $d3
    ld hl, $f90e
    nop
    ldh [rSC], a
    sub $26
    inc bc
    ld h, b
    ld bc, $0426
    ld h, b
    ld bc, $0326
    ld h, b
    ld [bc], a
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, [hl+]
    ld c, $2d
    ld c, $36
    ld c, $33
    ld c, $1f
    rlca
    jr nz, @+$09

    rra
    rlca
    ld e, $07
    rra
    rlca
    ld hl, $2307
    rlca
    inc h
    rlca
    ld h, $07
    daa
    rlca
    ld h, $07
    dec h
    rlca
    ld h, $07
    daa
    rlca
    add hl, hl
    rlca
    ld a, [hl+]
    rlca
    dec hl
    inc hl
    ld h, b
    rlca
    dec hl
    inc bc
    ld h, b
    inc b
    dec hl
    inc bc
    ld h, b
    inc b
    dec hl
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec hl
    ld c, $f9
    pop hl
    ldh [rP1], a
    sub $2b
    inc e
    db $d3
    dec hl
    ld c, $d6
    dec hl
    rlca
    jr nc, jr_03e_59db

    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b

jr_03e_59db:
    sub $2b
    ld c, $2c
    ld c, $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2b
    jr c, @+$2b

    inc e
    jr nc, jr_03e_5a0a

    ld l, $1c
    db $d3
    ld l, $0e
    sub $2e
    rlca
    jr nc, jr_03e_59ff

    ld sp, $3007
    rlca
    ld l, $07
    inc l

jr_03e_59ff:
    rlca
    dec hl
    rlca
    add hl, hl
    rlca
    jr z, jr_03e_5a0d

    dec hl
    rlca
    add hl, hl
    rlca

jr_03e_5a0a:
    ld h, b
    rlca
    db $d3

jr_03e_5a0d:
    add hl, hl
    rlca
    sub $2b
    rlca
    inc l
    ld c, $29
    rlca
    dec hl
    rlca
    inc l
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
    sub $29
    ld c, $2b
    ld c, $2c
    ld c, $2b
    ld c, $2a
    rlca
    add hl, hl
    rlca
    jr z, jr_03e_5a3c

    daa
    rlca
    ld h, $07
    dec h
    ld c, $24
    rlca
    inc hl
    rlca
    ld [hl+], a
    ld c, $21
    rlca

jr_03e_5a3c:
    jr nz, jr_03e_5a45

    dec e
    jr jr_03e_5aa1

    inc b
    dec e
    add hl, bc
    rra

jr_03e_5a45:
    add hl, bc
    jr nz, @+$0c

    rra
    ld c, $d3
    rra
    ld c, $d6
    rra
    add hl, bc
    ld hl, $2309
    ld a, [bc]
    inc h
    ld c, $d3
    inc h
    ld c, $d6
    rra
    ld a, [bc]
    ld h, b
    inc b
    rra
    inc bc
    ld h, b
    inc b
    rra
    inc bc
    ld h, b
    inc b
    inc h
    inc e
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc h
    ld c, $60
    ld c, $f9
    pop hl
    ldh [rP1], a
    cp $e3
    ld d, [hl]
    rst $38
    ld h, b
    add hl, bc
    or $0f
    inc h
    inc b
    ld h, b
    rla
    ld [hl+], a
    add hl, bc
    inc h
    or h
    ld h, b
    ld [de], a
    inc h
    inc b
    ld h, b
    ld c, $24
    inc b
    ld h, b
    ld c, $24
    inc b
    ld h, b
    dec b
    or $06
    ld d, $51
    ld h, b
    add hl, bc
    ld d, $09
    dec d
    add hl, bc
    ld d, $12
    dec d
    add hl, bc

jr_03e_5aa1:
    inc de
    add hl, bc
    dec d
    ld [de], a
    inc de
    add hl, bc
    ld de, $1309
    ld [de], a
    ld de, $1009
    add hl, bc
    ld c, $09
    db $10
    add hl, bc
    ld de, $1309
    add hl, bc
    ld de, $1309
    add hl, bc
    inc d
    add hl, bc
    ld d, $09
    inc d
    dec l
    jr @+$0b

    dec de
    add hl, bc
    rra
    add hl, bc
    jr nz, jr_03e_5ad2

    rra
    add hl, bc
    jr nz, @+$0b

    ld [hl+], a
    add hl, bc
    inc h
    add hl, bc
    ld [hl+], a

jr_03e_5ad2:
    add hl, bc
    inc h
    add hl, bc
    ld h, $09
    daa
    add hl, bc
    ld h, $09
    inc h
    add hl, bc
    ld [hl+], a
    add hl, bc
    jr nz, @+$0b

    rra
    add hl, bc
    dec e
    add hl, bc
    dec de
    add hl, bc
    ld a, [de]
    add hl, bc
    jr jr_03e_5af4

    ld d, $09
    inc d
    add hl, bc
    inc de
    add hl, bc
    ld de, $0f09

jr_03e_5af4:
    add hl, bc
    ld c, $09
    inc de
    db $10
    or $0f
    inc de
    ld [$0860], sp
    or $06
    inc de
    db $10
    or $0f
    inc de
    ld [$0860], sp
    or $06
    dec d
    ld c, $f6
    rrca
    dec d
    rlca
    ld h, b
    rlca
    or $06
    dec d
    ld c, $f6
    rrca
    dec d
    rlca
    ld h, b
    rlca
    or $06
    ld d, $0e
    or $0f
    ld d, $07
    ld h, b
    rlca
    or $06
    ld d, $0e
    or $0f
    ld d, $07
    ld h, b
    rlca
    or $06
    rla
    ld c, $f6
    rrca
    rla
    rlca
    ld h, b
    rlca
    or $06
    inc de
    dec d
    or $0f
    inc de
    rlca
    or $04
    jr jr_03e_5b4e

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5b4e:
    inc b
    jr jr_03e_5b58

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5b58:
    inc b
    jr jr_03e_5b62

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5b62:
    inc b
    jr jr_03e_5b6c

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5b6c:
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    inc b
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    jr jr_03e_5c16

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5c16:
    inc b
    jr jr_03e_5c20

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5c20:
    inc b
    jr jr_03e_5c2a

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5c2a:
    inc b
    jr jr_03e_5c34

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5c34:
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    inc de
    inc e
    or $0f
    inc de
    rlca
    ld h, b
    rlca
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    ld h, b
    rlca
    or $04
    inc de
    ld c, $f6
    rrca
    inc de
    rlca
    ld h, b
    rlca
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    ld h, b
    rlca
    or $04
    inc de
    ld de, $0ff6
    inc de
    rlca
    ld h, b
    inc b
    or $04
    inc de
    ld de, $0ff6
    inc de
    rlca
    ld h, b
    inc b
    or $04
    dec d
    ld de, $0ff6
    dec d
    rlca
    ld h, b
    inc b
    or $04
    rla
    ld de, $0ff6
    rla
    rlca
    ld h, b
    inc b
    or $04
    jr jr_03e_5cc6

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5cc6:
    inc b
    inc de
    rlca
    or $0f
    inc de
    rlca
    ld h, b
    ld c, $f6
    inc b
    jr jr_03e_5cda

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5cda:
    inc b
    inc de
    rlca
    or $0f
    inc de
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    inc b
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    inc b
    inc d
    jr @-$08

    rrca
    inc d
    inc b
    or $04
    ld d, $07
    ld h, b
    dec d
    ld d, $18
    or $0f
    ld d, $04
    or $04
    dec de
    rlca
    or $0f
    dec de
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld d, $07
    or $0f
    ld d, $07
    ld h, b
    ld c, $f6
    inc b
    dec de
    rlca
    or $0f
    dec de
    rlca
    ld h, b
    ld c, $f6
    inc b
    dec de
    inc e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    inc e
    jr jr_03e_5d74

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5d74:
    inc b
    jr jr_03e_5d7e

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5d7e:
    inc b
    jr jr_03e_5d88

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5d88:
    inc b
    jr @+$1a

    or $0f
    jr jr_03e_5d93

    or $04
    ld a, [de]
    rlca

jr_03e_5d93:
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    dec d
    rlca
    or $0f
    dec d
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    dec d
    inc bc
    or $0f
    dec d
    inc b
    ld h, b
    rlca
    or $04
    dec d
    rlca
    inc d
    rlca
    inc de
    inc e
    or $0f
    inc de
    rlca
    ld h, b
    rlca
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    ld h, b
    rlca
    or $04
    inc de
    ld de, $0ff6
    inc de
    inc b
    ld h, b
    rlca
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    ld h, b
    rlca
    or $04
    inc de
    inc e
    dec d
    inc e
    ld d, $1c
    rla
    inc e
    jr jr_03e_5e1b

    or $0f
    jr @+$09

    ld h, b
    rlca
    or $04
    jr @+$05

    or $0f
    jr jr_03e_5e11

    or $04
    jr @+$05

jr_03e_5e11:
    or $0f
    jr jr_03e_5e19

    or $04
    jr @+$05

jr_03e_5e19:
    or $0f

jr_03e_5e1b:
    jr jr_03e_5e21

    ld h, b
    rlca
    or $04

jr_03e_5e21:
    jr jr_03e_5e34

    or $0f
    jr @+$09

    ld h, b
    inc b
    or $04
    jr jr_03e_5e34

    or $0f
    jr jr_03e_5e38

    or $04
    inc de

jr_03e_5e34:
    inc e
    or $0f
    inc de

jr_03e_5e38:
    rlca
    ld h, b
    rlca
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    ld h, b
    rlca
    or $04
    inc de
    ld de, $0ff6
    inc de
    rlca
    ld h, b
    inc b
    or $04
    inc de
    rlca
    or $0f
    inc de
    rlca
    or $04
    inc d
    inc e
    or $0f
    inc d
    rlca
    ld h, b
    rlca
    or $04
    inc d
    inc bc
    or $0f
    inc d
    inc b
    or $04
    inc d
    inc bc
    or $0f
    inc d
    inc b
    or $04
    ld d, $03
    or $0f
    ld d, $04
    ld h, b
    rlca
    or $04
    ld d, $11
    or $0f
    ld d, $07
    ld h, b
    inc b
    or $04
    ld d, $07
    or $0f
    ld d, $07
    or $04
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    rrca
    rlca
    or $0f
    rrca
    rlca
    ld h, b
    ld c, $f6
    inc b
    rrca
    inc e
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    ld h, b
    ld c, $f6
    inc b
    jr jr_03e_5ef0

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5ef0:
    inc b
    jr jr_03e_5efa

    or $0f
    jr @+$09

    ld h, b
    ld c, $f6

jr_03e_5efa:
    inc b
    jr jr_03e_5f04

    or $0f
    jr jr_03e_5f08

    ld h, b
    ld c, $f6

jr_03e_5f04:
    inc b
    jr @+$1e

    ld a, [de]

jr_03e_5f08:
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    ld a, [de]
    rlca
    or $0f
    ld a, [de]
    rlca
    ld h, b
    ld c, $f6
    inc b
    inc de

jr_03e_5f30:
    jr @-$08

    rrca
    inc de
    inc b
    or $04
    dec d
    jr jr_03e_5f30

    rrca
    dec d
    inc b
    or $04
    ld d, $18
    or $0f
    ld d, $04
    or $04
    rla
    jr @-$08

    rrca
    rla
    inc b
    or $04
    jr jr_03e_5f70

    or $0f
    jr @+$09

    ld h, b
    inc b
    or $04
    jr @+$05

    or $0f
    jr jr_03e_5f63

    or $04
    jr @+$05

jr_03e_5f63:
    or $0f
    jr jr_03e_5f6b

    or $04
    jr @+$05

jr_03e_5f6b:
    or $0f
    jr jr_03e_5f73

    ld h, b

jr_03e_5f70:
    rlca
    or $04

jr_03e_5f73:
    jr jr_03e_5f8a

    or $0f
    jr @+$09

    or $04
    jr @+$09

    or $0f
    jr @+$09

    or $04
    ld d, $1f
    or $0f
    ld d, $07
    ld h, b

jr_03e_5f8a:
    inc b
    or $04
    ld d, $03
    or $0f
    ld d, $04
    or $04
    ld d, $03
    or $0f
    ld d, $04
    or $04
    ld d, $03
    or $0f
    ld d, $04
    ld h, b
    rlca
    or $04
    ld d, $15
    or $0f
    ld d, $07
    or $04
    ld d, $07
    or $0f
    ld d, $07
    or $04
    inc d
    rra
    or $0f
    inc d
    rlca
    ld h, b
    inc b
    or $04
    inc d
    inc bc
    or $0f
    inc d
    inc b
    or $04
    inc d
    inc bc
    or $0f
    inc d
    inc b
    or $04
    ld d, $07
    or $0f
    ld d, $07
    or $04
    ld d, $11
    or $0f
    ld d, $07
    ld h, b
    inc b
    or $04
    ld d, $07
    or $0f
    ld d, $07
    or $04
    inc de
    rra
    or $0f
    inc de
    rlca
    ld h, b
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    inc de
    inc bc
    or $0f
    inc de
    inc b
    or $04
    add hl, de
    inc bc
    or $0f
    add hl, de
    inc b
    ld h, b
    rlca
    or $04
    add hl, de
    ld de, $0ff6
    add hl, de
    rlca
    ld h, b
    inc b
    or $04
    add hl, de
    rlca
    or $0f
    add hl, de
    rlca
    or $04
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    inc b
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    inc b
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    inc b
    ld de, $f615
    rrca
    ld de, $f607
    inc b
    jr jr_03e_6065

    rla
    inc e
    ld d, $1c
    dec d
    inc e
    inc d
    dec d
    or $0f
    inc d
    rlca
    or $04
    inc d

jr_03e_6058:
    dec d
    or $0f
    inc d
    rlca
    or $04
    inc de

jr_03e_6060:
    jr jr_03e_6058

    rrca
    inc de
    inc b

jr_03e_6065:
    or $04
    inc de
    jr jr_03e_6060

    rrca
    inc de
    inc b
    or $04
    jr jr_03e_607b

    or $0f
    jr @+$09

    ld h, b
    dec bc
    or $04
    inc de
    ld a, [bc]

jr_03e_607b:
    or $0f
    inc de
    rlca
    ld h, b
    dec bc
    or $04
    jr @+$1e

    or $0f
    jr jr_03e_6090

    ld h, b
    dec d
    cp $43
    ld e, e
    rst $38
    ld h, b

jr_03e_6090:
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    db $db
    call nc, $0e26
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $0e26
    db $d3
    ld h, $04
    db $d3
    ld h, $05
    call nc, $0526
    call nc, $0e26
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $0326
    db $d3
    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    ld h, $03
    db $d3
    ld h, $04
    db $d3
    ld h, $03
    call nc, $0426
    db $d3
    ld h, $1c
    call nc, $1c26
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $2a26
    db $d3
    ld h, $04
    db $d3
    ld h, $05
    call nc, $0526
    call nc, $0e26
    ld h, $1c
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    call nc, $0326
    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $04
    jp nc, $0526

    db $d3
    ld h, $05
    db $d3
    ld h, $04
    db $d3
    ld h, $05
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $1c
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $04
    call nc, $0526
    call nc, $0526
    call nc, $1c26
    ld h, $0e
    ld h, $04
    db $d3
    ld h, $05
    call nc, $0526
    call nc, $0e26
    ld h, $1c
    ld h, $03
    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    ld h, $1c
    ld h, $1c
    ld h, $1c
    ld h, $04
    db $d3
    ld h, $05
    ld h, $05
    ld h, $04
    db $d3
    ld h, $05
    call nc, $0526
    call nc, $2a26
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $2a
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $0e
    ld h, $0e
    ld h, $03
    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    call nc, $2a26
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $2a
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $0e
    ld h, $0e
    ld h, $03
    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    call nc, $1c26
    ld h, $0e
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $0e
    db $d3
    ld h, $03
    ld h, $04
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $0e26
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    call nc, $0426
    ld h, $03
    db $d3
    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    call nc, $0326
    ld h, $04
    call nc, $1c26
    ld h, $0e
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $0e
    db $d3
    ld h, $04
    db $d3
    ld h, $05
    call nc, $0526
    call nc, $0e26
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    call nc, $0326
    db $d3
    ld h, $04
    db $d3
    ld h, $03
    call nc, $0426
    call nc, $0326
    call nc, $0426
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    call nc, $0326
    call nc, $0426
    call nc, $1c26
    ld h, $0e
    call nc, $0326
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $1c
    ld h, $0e
    ld h, $1c
    ld h, $0e
    call nc, $0326

jr_03e_63f5:
    call nc, $0426
    call nc, $0326
    call nc, $0426
    call nc, $0e26
    ld h, $0e
    ld h, $1c
    cp $d2
    ld h, b
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $2f
    inc c
    jr z, jr_03e_641b

    cpl
    inc c
    jr z, jr_03e_641f

    cpl
    inc h

jr_03e_641b:
    db $d3
    cpl
    jr jr_03e_63f5

jr_03e_641f:
    ld l, $0c
    ld a, [hl+]
    ld b, $2e
    inc c
    ld a, [hl+]
    ld b, $2e
    inc h
    db $d3
    ld l, $18
    sub $2f
    inc c
    jr z, jr_03e_6437

    cpl
    inc c
    jr z, jr_03e_643b

    cpl
    inc h

jr_03e_6437:
    db $d3
    cpl
    jr @-$28

jr_03e_643b:
    ld l, $06
    cpl
    ld b, $60
    inc bc
    db $d3
    cpl
    inc bc
    sub $30
    ld b, $31
    ld b, $60
    inc bc
    db $d3
    ld sp, $d603

jr_03e_644f:
    ld [hl-], a
    ld b, $33
    ld b, $60
    inc bc
    db $d3
    inc sp
    inc bc
    sub $34
    ld b, $35
    ld b, $60
    inc bc
    db $d3
    dec [hl]
    inc bc
    sub $36
    ld b, $37
    ld b, $38
    ld b, $39
    ld b, $2f
    inc c
    jr z, jr_03e_6475

    cpl
    inc c
    jr z, jr_03e_6479

    cpl
    inc h

jr_03e_6475:
    db $d3
    cpl
    jr jr_03e_644f

jr_03e_6479:
    ld l, $0c
    ld a, [hl+]
    ld b, $2e
    inc c
    ld a, [hl+]
    ld b, $2e
    inc h
    db $d3
    ld l, $18
    sub $2f
    inc c
    jr z, jr_03e_6491

    cpl
    inc c
    jr z, jr_03e_6495

    cpl
    inc h

jr_03e_6491:
    db $d3
    cpl
    jr @-$28

jr_03e_6495:
    dec l
    ld b, $2e
    ld b, $60
    inc bc
    db $d3
    ld l, $03
    sub $2f
    ld b, $30
    ld b, $d6
    ld sp, $3206
    ld b, $33
    ld b, $34
    ld e, $d3
    inc [hl]
    inc c
    ld h, b
    ld b, $d6
    jr nc, @+$14

    dec hl
    ld [de], a
    jr nc, jr_03e_64c4

    cpl
    ld [de], a
    ld a, [hl+]
    ld b, $60
    inc bc
    db $d3
    ld a, [hl+]
    ld b, $60
    inc bc
    pop de

jr_03e_64c4:
    ld a, [hl+]
    ld b, $60
    ld b, $d6
    jr nc, @+$14

    sub $2b
    ld [de], a
    jr nc, jr_03e_64dc

    ld sp, $3812
    ld b, $60
    inc bc
    db $d3
    jr c, jr_03e_64df

    ld h, b
    inc bc
    pop de

jr_03e_64dc:
    jr c, jr_03e_64e4

    ld h, b

jr_03e_64df:
    ld b, $d6
    jr nc, jr_03e_64f5

    dec hl

jr_03e_64e4:
    ld [de], a
    jr nc, @+$0e

    cpl
    jr jr_03e_651d

    jr jr_03e_651e

    ld b, $31
    ld b, $60
    inc bc
    db $d3
    ld sp, $d603

jr_03e_64f5:
    jr nc, jr_03e_64fd

    cpl
    ld b, $60
    inc bc
    db $d3
    cpl

jr_03e_64fd:
    inc bc
    sub $2e
    ld b, $2d
    ld b, $60
    inc bc
    db $d3
    dec l
    inc bc
    sub $2c
    ld b, $2b
    ld b, $60
    inc bc
    db $d3
    dec hl
    inc bc
    sub $2b
    ld b, $2a
    ld b, $29
    ld b, $28
    ld b, $27
    ld c, b

jr_03e_651d:
    db $d3

jr_03e_651e:
    daa
    jr jr_03e_6581

    ld h, b
    cp $10
    ld h, h
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $2b
    inc c
    inc hl
    ld b, $2b
    inc c
    inc hl
    ld b, $2b
    jr jr_03e_655c

    inc c
    jr z, @+$0e

    dec hl
    inc c
    ld a, [hl+]
    inc c
    ld [hl+], a
    ld b, $2a
    inc c
    ld [hl+], a
    ld b, $2a
    jr jr_03e_6577

    inc c
    dec l
    inc c
    inc l
    inc c
    dec hl
    inc c
    inc hl
    ld b, $2b
    inc c
    inc hl
    ld b, $2b
    inc h
    db $d3
    dec hl
    jr @-$28

jr_03e_655c:
    ld h, $06
    dec h
    ld b, $60
    inc bc
    db $d3
    dec h
    inc bc
    sub $24
    ld b, $23
    ld b, $60
    inc bc
    db $d3
    inc hl
    inc bc
    sub $22
    ld b, $21
    ld b, $60
    inc bc
    db $d3

jr_03e_6577:
    ld hl, $d603
    jr nz, jr_03e_6582

    rra
    ld b, $60
    inc bc
    db $d3

jr_03e_6581:
    rra

jr_03e_6582:
    inc bc
    sub $1e
    ld b, $1d
    ld b, $1c
    ld b, $1a
    ld b, $2b
    inc c
    inc hl
    ld b, $2b
    inc c
    inc hl
    ld b, $2b
    jr jr_03e_65ba

    inc c
    jr z, @+$0e

    dec hl
    inc c
    ld a, [hl+]
    inc c
    ld [hl+], a
    ld b, $2a
    inc c
    ld [hl+], a
    ld b, $2a
    jr jr_03e_65d5

    inc c
    dec l
    inc c
    inc l
    inc c
    dec hl
    inc c
    inc hl
    ld b, $2b
    inc c
    inc hl
    ld b, $2b
    jr jr_03e_65da

    inc c
    jr z, jr_03e_65c6

jr_03e_65ba:
    dec hl
    inc c
    ld h, b
    ld h, b
    dec hl
    ld [de], a
    jr z, @+$14

    dec hl
    inc c
    ld a, [hl+]
    ld [de], a

jr_03e_65c6:
    daa
    ld b, $60
    inc bc
    db $d3
    daa
    ld b, $60
    inc bc
    pop de
    daa
    ld b, $60
    ld b, $d6

jr_03e_65d5:
    dec hl
    ld [de], a
    jr z, @+$14

    dec hl

jr_03e_65da:
    inc c
    ld a, [hl+]
    ld [de], a
    cpl
    ld b, $60
    inc bc
    db $d3
    cpl
    ld b, $60
    inc bc
    pop de
    cpl
    ld b, $60
    ld b, $d6
    dec hl
    ld [de], a
    jr z, jr_03e_6602

    inc h
    inc c
    inc hl
    inc c
    daa
    inc c
    ld a, [hl+]
    inc c
    cpl
    inc c
    ld h, b
    ld h, b
    daa
    ld b, $26
    ld b, $60
    inc bc

jr_03e_6602:
    db $d3
    ld h, $03
    sub $25
    ld b, $24
    ld b, $60
    inc bc
    db $d3
    inc h
    inc bc
    sub $23
    ld b, $22
    ld b, $60
    inc bc
    db $d3
    ld [hl+], a
    inc bc
    sub $21
    ld b, $20
    ld b, $60
    inc bc
    db $d3
    jr nz, @+$05

    sub $1f
    ld b, $1e
    ld b, $1d
    ld b, $1c
    ld b, $60
    ld h, b
    cp $2d
    ld h, l
    rst $38
    ld a, [c]
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc hl
    inc b
    or $17
    inc hl
    ld [bc], a
    or $12
    ld [hl+], a
    inc b
    or $17
    ld [hl+], a
    ld [$12f6], sp
    ld hl, $f604
    rla
    ld hl, $f602
    ld [de], a
    jr nz, jr_03e_67d3

    or $17
    jr nz, jr_03e_67db

jr_03e_67d3:
    or $12
    rra
    inc b
    or $17
    rra
    ld [bc], a

jr_03e_67db:
    or $12
    ld e, $04
    or $17
    ld e, $08
    or $12
    dec e
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [$12f6], sp
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld a, [de]
    inc b
    or $17
    ld a, [de]
    ld [bc], a
    or $12
    add hl, de
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    jr jr_03e_6813

    or $17
    jr jr_03e_6815

jr_03e_6813:
    or $12

jr_03e_6815:
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    dec de
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $08
    or $12
    dec d
    inc b
    or $17
    dec d
    ld [bc], a
    or $12
    inc d
    inc b
    or $17
    inc d
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    ld de, $f604
    rla
    ld de, $f602
    ld [de], a
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    db $10
    inc b
    or $17
    db $10
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03e_6a23

    or $17
    jr jr_03e_6a25

jr_03e_6a23:
    or $12

jr_03e_6a25:
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03e_6a43

    or $17
    jr jr_03e_6a45

jr_03e_6a43:
    or $12

jr_03e_6a45:
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03e_6aa3

    or $17
    jr jr_03e_6aa5

jr_03e_6aa3:
    or $12

jr_03e_6aa5:
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03e_6ac3

    or $17
    jr jr_03e_6ac5

jr_03e_6ac3:
    or $12

jr_03e_6ac5:
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03e_6b23

    or $17
    jr jr_03e_6b25

jr_03e_6b23:
    or $12

jr_03e_6b25:
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03e_6b43

    or $17
    jr jr_03e_6b45

jr_03e_6b43:
    or $12

jr_03e_6b45:
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [bc], a
    or $12
    inc de
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    ld [de], a
    inc b
    or $17
    ld [de], a
    ld [$12f6], sp
    ld de, $f604
    rla
    ld de, $f602
    ld [de], a
    db $10
    inc b
    or $17
    db $10
    ld [$12f6], sp
    rrca
    inc b
    or $17
    rrca
    ld [bc], a
    or $12
    ld c, $04
    or $17
    ld c, $08
    or $12
    dec c
    inc b
    or $17
    dec c
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [$12f6], sp
    dec bc
    inc b
    or $17
    dec bc
    ld [bc], a
    or $12
    inc c
    inc b
    or $17
    inc c
    ld [bc], a
    or $12
    ld d, $04
    or $17
    ld d, $02
    or $12
    rla
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    dec de
    dec b
    or $17
    dec de
    inc de
    or $12
    dec bc
    ld c, b
    ld h, b
    ld h, b
    cp $33
    ld h, [hl]
    rst $38
    ld a, [c]
    push de
    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0b27

    ret c

    jr z, @+$03

    jp nc, $0527

    ret c

    jr z, @+$03

    jp nc, $0527

    push de
    ret c

    jr z, @+$03

    jp nc, $0527

    call nc, $28d8
    ld bc, $27d2
    dec b
    call nc, $28d8
    ld bc, $27d2
    dec b
    jp nc, $062a

    ld a, [hl+]
    inc c
    ld a, [hl+]
    ld b, $2a
    inc c
    ld a, [hl+]
    ld b, $2a
    inc c
    jp nc, $062a

    ld a, [hl+]
    inc c
    ld a, [hl+]
    ld b, $2a
    ld b, $2a
    ld b, $2a
    ld b, $fe
    cp $6b
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
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    ret nc

    jr nz, jr_03e_7023

    sub $29
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    add hl, bc
    ld h, b
    dec b
    pop de
    add hl, hl
    add hl, bc
    ld h, b
    inc h
    sub $29
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    add hl, bc
    ld h, b
    dec b
    pop de
    add hl, hl
    add hl, bc
    ld h, b
    inc h
    sub $29
    add hl, bc
    ld h, b
    inc b
    db $d3

jr_03e_7023:
    add hl, hl
    add hl, bc
    ld h, b
    dec b
    pop de
    add hl, hl
    add hl, bc
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $35
    ld [de], a
    dec [hl]
    ld [de], a
    ld [hl], $12
    ld h, b
    ld [hl], $f6
    ld bc, $00f9
    ldh [rP1], a
    add hl, hl
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    add hl, bc
    ld h, b
    dec b
    pop de
    add hl, hl
    add hl, bc
    ld h, b
    inc h
    sub $29
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    add hl, bc
    ld h, b
    dec b
    pop de
    add hl, hl
    add hl, bc
    ld h, b
    inc h
    sub $29
    add hl, bc
    ld h, b
    inc b
    db $d3
    add hl, hl
    add hl, bc
    ld h, b
    dec b
    pop de
    add hl, hl
    add hl, bc
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $35
    ld [de], a
    dec [hl]
    ld [de], a
    ld [hl], $12
    ld h, b
    ld [de], a
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $01
    jr z, jr_03e_70b6

    ld h, $12
    inc h
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
    sub $23
    add hl, bc
    ld h, b
    inc b
    db $d3
    inc hl
    add hl, bc
    ld h, b
    dec b
    pop de
    inc hl
    add hl, bc
    sub $22
    ld c, b
    ld hl, $6009
    inc b
    db $d3
    ld hl, $6009
    dec b
    pop de
    ld hl, $6009
    inc h
    sub $20
    ld c, b
    rra
    add hl, bc
    ld h, b
    inc b
    db $d3
    rra
    add hl, bc

jr_03e_70b6:
    ld h, b
    dec b
    pop de
    rra
    add hl, bc
    ld h, b
    inc h
    sub $1d
    add hl, bc
    ld h, b
    inc b
    db $d3
    dec e
    add hl, bc
    ld h, b
    dec b
    pop de
    dec e
    add hl, bc
    sub $1d
    add hl, bc
    ld e, $09
    dec e
    add hl, bc
    ld e, $09
    ld h, b
    inc b
    db $d3
    ld e, $09
    ld h, b
    dec b
    sub $29
    add hl, bc
    ld a, [hl+]
    add hl, bc
    add hl, hl
    add hl, bc
    ld a, [hl+]
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    add hl, bc
    ld h, b
    dec b
    sub $2b
    ld [de], a
    dec l
    add hl, bc
    dec hl
    add hl, bc
    add hl, hl
    inc h
    ld a, [hl+]
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld a, [hl+]
    add hl, bc
    ld h, b
    dec b
    pop de
    ld a, [hl+]
    add hl, bc
    ld h, b
    inc h
    cp $fc
    ld l, a
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    ret nc

    jr nz, jr_03e_7132

    sub $26
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld h, $09
    ld h, b
    dec b
    pop de
    ld h, $09
    ld h, b
    inc h
    sub $26
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld h, $09
    ld h, b
    dec b
    pop de
    ld h, $09
    ld h, b
    inc h
    sub $26
    add hl, bc
    ld h, b
    inc b
    db $d3

jr_03e_7132:
    ld h, $09
    ld h, b
    dec b
    pop de
    ld h, $09
    ldh [$03], a
    or $02
    sub $32
    ld [de], a
    ld [hl-], a
    ld [de], a
    inc sp
    ld [de], a
    ld h, b
    ld [hl], $f9
    nop
    ldh [rP1], a
    or $01
    ld h, $09
    ld h, b
    inc b
    db $d3
    ld h, $09
    ld h, b
    dec b
    pop de
    ld h, $09
    ld h, b
    inc h
    sub $26
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld h, $09
    ld h, b
    dec b
    pop de
    ld h, $09
    ld h, b
    inc h
    sub $26
    add hl, bc
    ld h, b
    inc b
    db $d3
    ld h, $09
    ld h, b
    dec b
    pop de
    ld h, $09
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $32
    ld [de], a
    ld [hl-], a
    ld [de], a
    inc sp
    ld [de], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    db $e4
    ld sp, hl
    nop
    ldh [rP1], a
    or $01
    cp $0b
    ld [hl], c
    rst $38
    or $0e
    rla
    inc h
    dec e
    ld [de], a
    ld e, $12
    ld hl, $2024
    ld [de], a
    rra
    ld [de], a
    dec e
    inc h
    ld e, $09
    or $0f
    ld e, $09
    ld h, b
    ld e, d
    or $0e
    rla
    inc h
    dec e
    ld [de], a
    ld e, $12
    ld hl, $f609
    rrca
    ld hl, $f609
    ld c, $21
    ld [de], a
    jr nz, jr_03e_71d1

    rra
    ld [de], a
    dec e
    inc h
    ld e, $09
    or $0f
    ld e, $09
    ld h, b
    ld e, d
    or $0e
    rra
    ld [hl], $1e
    ld [de], a

jr_03e_71d1:
    inc e
    add hl, bc
    or $0f
    inc e
    add hl, bc
    ld h, b
    ld [de], a
    or $0e
    ld a, [de]
    add hl, bc
    or $0f
    ld a, [de]
    add hl, bc
    ld h, b
    ld [de], a
    or $0e
    jr jr_03e_722f

    rla
    ld [de], a
    ld h, b
    ld [hl], $16
    ld c, b
    dec d
    ld [de], a
    ld h, b
    ld [hl], $14
    ld c, b
    ld [de], a
    ld [hl], $f6
    rrca
    ld [de], a
    ld [de], a
    or $0e
    jr @+$33

    rla

jr_03e_71fe:
    dec b
    ld d, $04
    dec d
    dec b
    inc d
    inc b
    inc de
    dec b
    ld [de], a
    add hl, bc
    or $0f
    ld [de], a
    add hl, bc
    ld h, b
    ld [de], a
    or $0e
    ld de, $1203
    add hl, bc
    or $0f
    ld [de], a
    add hl, bc
    ld h, b
    rrca
    or $0e
    cp $93
    ld [hl], c
    rst $38
    ld sp, hl

jr_03e_7222:
    pop hl
    ldh [rP1], a
    or $02
    sub $2b
    jr jr_03e_71fe

    dec hl
    ld [$2bd6], sp

jr_03e_722f:
    ld a, [bc]
    ld h, $0b
    dec hl
    dec bc
    add hl, hl
    jr @-$2b

    add hl, hl
    ld [$29d6], sp
    ld a, [bc]
    dec hl
    dec bc
    dec l
    dec bc
    ld l, $18
    db $d3
    ld l, $08
    sub $2e
    ld a, [bc]
    dec hl
    dec bc
    ld l, $0b
    dec l
    jr jr_03e_7222

    dec l
    ld [$2dd6], sp
    ld a, [bc]
    ld l, $0b
    jr nc, jr_03e_7263

    ld [hl-], a

jr_03e_7259:
    ld b, b
    ld sp, hl
    ld bc, $32d3
    jr nz, jr_03e_7259

    pop hl

jr_03e_7261:
    sub $30

jr_03e_7263:
    ld [$0260], sp
    jr nc, jr_03e_7270

    ld h, b
    ld [bc], a
    jr nc, jr_03e_7275

    ld h, b
    inc bc
    ld [hl-], a
    ld d, b

jr_03e_7270:
    ld sp, hl
    ld bc, $32d3
    db $10

jr_03e_7275:
    ld sp, hl
    pop hl
    sub $30
    ld a, [bc]
    cpl
    dec bc
    dec l
    dec bc
    dec hl
    ld [$0460], sp
    db $d3
    dec hl
    ld [$0460], sp
    pop de
    dec hl
    ld [$26d6], sp
    jr nz, jr_03e_7261

    ld h, $10
    sub $2b
    ld [$0460], sp
    db $d3
    dec hl
    inc b
    sub $2b
    ld [$082d], sp
    cpl
    ld [$0830], sp
    ld [hl-], a
    ld b, b
    ld sp, hl
    ld bc, $32d3
    db $10
    ld sp, hl
    pop hl
    sub $32
    ld [$0460], sp
    db $d3
    ld [hl-], a
    inc b
    sub $32
    ld a, [bc]
    inc sp
    dec bc
    dec [hl]
    dec bc
    scf
    ld b, b
    ld sp, hl
    ld bc, $37d3
    db $10
    ld sp, hl
    pop hl
    sub $37
    db $10
    dec [hl]
    db $10
    inc sp

jr_03e_72c8:
    db $10
    dec [hl]
    ld [$0460], sp
    db $d3
    dec [hl]
    ld [$0460], sp
    sub $33
    ld [$2832], sp
    ld sp, hl
    ld bc, $32d3
    jr @-$05

    pop hl
    sub $32

jr_03e_72e0:
    ld a, [bc]
    inc sp
    dec bc
    ld [hl-], a
    dec bc
    jr nc, @+$0a

    ld h, b
    inc b
    db $d3
    jr nc, @+$06

    sub $30
    ld [$0832], sp
    sub $33
    jr z, jr_03e_72c8

    inc sp
    ld [$33d6], sp
    db $10
    ld [hl-], a
    db $10
    jr nc, jr_03e_730e

    ld l, $08
    ld h, b
    inc b
    db $d3
    ld l, $04
    sub $2e
    ld [$0830], sp
    ld [hl-], a
    jr nz, jr_03e_72e0

    ld [hl-], a

jr_03e_730e:
    db $10
    sub $32
    db $10
    jr nc, @+$12

    ld l, $10
    dec l
    ld [$0460], sp
    db $d3
    dec l
    inc b
    sub $2d
    ld [$082f], sp
    ld sp, $f920
    ld bc, $31d3
    db $10
    ld sp, hl
    pop hl
    sub $31
    ld [$0832], sp
    inc [hl]
    ld [$0836], sp
    scf
    ld [$0839], sp
    ld [hl], $08
    ld h, b
    inc b
    db $d3
    ld [hl], $04
    sub $32
    ld [bc], a
    ld h, b
    ld [bc], a
    ld [hl-], a

jr_03e_7345:
    inc b
    ld h, b
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld h, b
    inc b
    inc [hl]
    ld [$0260], sp
    inc [hl]
    ld [$0260], sp
    inc [hl]
    add hl, bc
    ld h, b
    inc bc
    ld [hl], $28
    ld sp, hl
    ld bc, $36d3
    jr @-$05

    pop hl
    sub $2b
    ld [$0460], sp
    db $d3
    dec hl
    ld [$0460], sp
    pop de
    dec hl
    ld [$26d6], sp
    jr z, jr_03e_7345

    ld h, $08
    sub $2b
    ld [$0460], sp
    db $d3
    dec hl
    inc b
    sub $2b
    ld [$082d], sp
    cpl
    ld [$0830], sp
    ld [hl-], a
    ld b, b
    ld sp, hl
    ld bc, $32d3
    db $10
    ld sp, hl
    pop hl
    sub $32
    ld [$0460], sp
    db $d3
    ld [hl-], a
    inc b
    sub $32
    ld a, [bc]
    inc sp
    dec bc
    dec [hl]
    dec bc
    scf
    ld c, b
    ld sp, hl
    ld bc, $37d3
    ld [$e1f9], sp
    sub $39
    ld [$083a], sp
    inc a
    ld [$083a], sp
    add hl, sp
    ld [$0837], sp

jr_03e_73b3:
    scf
    ld [$0460], sp
    db $d3
    scf
    ld [$0460], sp
    sub $39
    ld [$2835], sp
    ld sp, hl

jr_03e_73c2:
    ld bc, $00e0
    db $d3
    dec [hl]
    jr jr_03e_73c2

    pop hl
    sub $32
    ld a, [bc]
    inc sp
    dec bc
    ld [hl-], a
    dec bc
    jr nc, @+$0a

    ld h, b
    inc b
    db $d3
    jr nc, @+$06

    sub $30
    ld [$0832], sp
    inc sp
    jr z, jr_03e_73b3

    inc sp
    ld [$33d6], sp
    db $10
    ld [hl-], a
    db $10
    jr nc, jr_03e_73f9

    ld l, $0a
    dec l
    dec bc
    ld l, $0b
    jr nc, jr_03e_73fb

    ld l, $0b
    jr nc, jr_03e_7400

    ld [hl-], a
    ld [$0460], sp

jr_03e_73f9:
    db $d3
    ld [hl-], a

jr_03e_73fb:
    ld [$0160], sp
    sub $31

jr_03e_7400:
    ld [$0360], sp
    ld [hl-], a
    ld a, [bc]
    scf
    dec bc
    ld a, [hl-]
    dec bc
    ld h, b
    jr nz, jr_03e_743e

    jr nz, @+$40

    jr z, @+$3e

    ld [$083a], sp
    add hl, sp
    ld [$4037], sp
    ld sp, hl
    ld bc, $37d3
    jr nz, @-$05

    pop hl
    or $00
    ret c

    ld [hl-], a
    ld a, [bc]
    inc sp
    dec bc
    dec [hl]
    dec bc
    scf
    ld [$0460], sp
    db $d3
    scf
    ld [$0460], sp

jr_03e_7430:
    pop de
    scf
    ld [$32d8], sp

jr_03e_7435:
    jr nz, jr_03e_7430

    ld bc, $32d3
    jr jr_03e_7435

    pop hl
    ret c

jr_03e_743e:
    scf
    inc b
    ld h, b
    inc b
    scf
    ld [$0839], sp
    ld a, [hl-]
    ld [$083c], sp
    add hl, sp

jr_03e_744b:
    ld [$0460], sp
    db $d3
    add hl, sp
    ld [$0460], sp
    ret c

    dec [hl]
    ld [$2030], sp
    db $d3
    jr nc, @+$12

    ret c

    jr nc, jr_03e_7466

    ld [hl-], a
    ld [$0835], sp
    inc sp
    ld [$0832], sp

jr_03e_7466:
    jr nc, @+$0a

    ld [hl-], a
    ld [$0460], sp
    db $d3
    ld [hl-], a
    ld [$0460], sp
    pop de
    ld [hl-], a
    ld [$2bd8], sp
    jr nz, jr_03e_744b

    dec hl
    db $10
    ret c

    dec hl
    ld [$082a], sp
    dec hl
    ld [$082d], sp
    ld l, $08
    jr nc, jr_03e_748f

    ld [hl-], a
    ld b, b
    ld sp, hl
    ld bc, $32d3
    db $10
    ld sp, hl

jr_03e_748f:
    pop hl
    ret c

    ld [hl-], a
    db $10
    ld sp, $3210
    ld [$0460], sp
    db $d3
    ld [hl-], a
    inc b
    ret c

    ld a, [hl-]
    ld [$0460], sp
    db $d3
    ld a, [hl-]
    ld [$0460], sp
    ret c

    add hl, sp
    ld [$2037], sp
    pop de
    scf
    ld a, [bc]
    ret c

    ld [hl-], a
    ld b, $60
    dec b
    ld [hl-], a
    dec b
    ld h, b
    ld b, $32
    ld a, [bc]
    ld l, $0b
    scf
    dec bc
    jr c, jr_03e_74c7

    ld h, b
    inc b
    db $d3
    jr c, jr_03e_74cc

    ld h, b
    inc b
    ret c

jr_03e_74c7:
    ld a, [hl-]
    ld [$203c], sp
    db $d3

jr_03e_74cc:
    inc a
    ld a, [bc]
    ret c

    inc a
    ld [$0260], sp
    ld a, $09
    ld h, b
    inc bc
    ccf
    ld a, [bc]
    ld b, c
    dec bc
    ccf
    dec bc
    ld a, $2a
    ld h, b
    ld b, $3e
    dec b
    ld h, b
    inc bc
    ld a, $05
    ld h, b
    inc bc
    ld a, $2a
    ld h, b
    ld b, $3e
    dec b
    ld h, b
    inc bc
    ld a, $05
    ld h, b
    inc bc
    ld a, $10
    db $d3
    ld a, $10
    or $02
    ret c

    inc [hl]
    dec b
    ld h, b
    dec b
    inc [hl]
    ld b, $60
    dec b
    inc [hl]
    dec b
    ld h, b
    ld b, $35
    ld a, [de]
    ld h, b
    ld b, $36
    dec b
    ld h, b
    dec b
    ld [hl], $06
    ld h, b
    dec b
    ld [hl], $05
    ld h, b
    ld b, $fe
    ld a, [hl]
    ld [hl], d
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $02
    sub $22
    ld b, b
    ld hl, $1f40
    ld b, b
    dec e
    ld b, b
    dec de
    jr nz, jr_03e_754e

    ld [$0260], sp
    rra
    ld [$0260], sp
    rra
    add hl, bc
    ld h, b
    inc bc
    ld h, $20
    dec de
    ld [$0260], sp
    dec de
    ld [$0260], sp
    dec de
    add hl, bc
    ld h, b
    inc bc
    ld a, [de]
    db $10
    rra
    ld [$0821], sp

jr_03e_754e:
    ld h, $10
    rra
    ld [$0821], sp
    ld a, [de]
    dec e
    ld h, b
    inc bc
    ld a, [de]
    ld [$0260], sp
    ld a, [de]
    ld [$0260], sp
    ld a, [de]
    add hl, bc
    ld h, b
    inc bc
    ret nc

    jr nz, jr_03e_757c

    inc hl
    dec b
    ld h, b
    ld [bc], a
    db $d3
    inc hl
    inc b
    sub $23
    ld [$0824], sp
    inc hl
    ld [$0821], sp
    inc hl
    ld b, b
    sub $29
    db $10

jr_03e_757c:
    dec hl
    db $10
    dec l
    db $10
    cpl
    db $10
    jr nc, jr_03e_7594

    cpl
    ld [$0460], sp
    db $d3
    cpl
    inc b
    sub $2f
    ld a, [bc]
    jr nc, jr_03e_759b

    ld [hl-], a
    dec bc
    inc sp
    db $10

jr_03e_7594:
    db $d3
    inc sp
    dec b
    sub $2e
    dec b
    ld h, b

jr_03e_759b:
    ld [bc], a
    db $d3
    ld l, $04
    sub $2e
    ld [$0830], sp
    ld l, $08
    dec l
    ld [$0a2e], sp

jr_03e_75aa:
    ld h, b
    ld [bc], a
    db $d3
    ld l, $04
    sub $2e
    db $10
    dec l
    db $10
    dec hl
    db $10
    dec l
    ld [$0460], sp
    db $d3
    dec l
    ld [$0460], sp
    sub $2b
    ld [$0829], sp
    ld h, b
    ld [bc], a
    add hl, hl
    dec bc
    dec hl
    dec bc
    inc l
    db $10
    dec hl
    db $10
    add hl, hl
    ld a, [bc]
    daa
    dec bc
    ld h, $0b
    daa
    jr nz, jr_03e_75aa

    daa
    db $10
    sub $27
    ld [$0829], sp
    dec hl
    ld [$0460], sp
    db $d3
    dec hl
    inc b
    sub $2b
    db $10
    add hl, hl
    db $10
    daa
    db $10
    ld h, $20
    db $d3
    ld h, $10
    sub $26
    ld [$0827], sp
    add hl, hl
    ld a, [bc]
    ld h, b
    ld b, $29
    db $10
    daa
    db $10
    ld h, $10
    dec h
    jr nz, @-$2b

    dec h
    db $10
    sub $25
    ld [$0826], sp
    jr z, jr_03e_761c

    ld a, [hl+]
    db $10
    sub $2b
    db $10
    sub $2d
    db $10
    ld l, $20
    dec l
    ld [$0460], sp
    db $d3
    dec l

jr_03e_761c:
    ld [$0460], sp
    pop de
    dec l
    ld [$2ed6], sp
    jr nz, jr_03e_7653

    ld [$0460], sp
    db $d3
    dec l
    ld [$0460], sp
    pop de
    dec l
    ld [$37d6], sp
    ld b, b
    ld [hl-], a
    jr nz, jr_03e_7667

    jr nz, jr_03e_7668

    db $10
    dec hl
    ld [$0460], sp
    db $d3
    dec hl
    inc b
    sub $2b
    ld [$082d], sp
    cpl
    ld [$0830], sp
    ld [hl-], a
    db $10
    cpl
    ld [$0460], sp
    db $d3
    cpl
    inc b

jr_03e_7653:
    sub $2f
    ld a, [bc]
    jr nc, @+$0d

jr_03e_7658:
    ld [hl-], a
    dec bc
    inc sp
    jr nz, jr_03e_768b

    db $10
    dec hl
    db $10
    daa
    db $10
    ld l, $10
    dec l
    db $10
    dec hl

jr_03e_7667:
    db $10

jr_03e_7668:
    dec l
    ld [$0460], sp
    db $d3
    dec l
    ld [$0460], sp
    sub $2b
    ld [$0529], sp
    ld h, b
    inc bc
    add hl, hl
    db $10
    dec hl
    ld [$3029], sp
    db $d3
    add hl, hl
    db $10
    sub $27
    jr nz, jr_03e_7658

    daa
    db $10
    sub $29
    db $10
    dec hl

jr_03e_768b:
    ld [$0460], sp
    db $d3
    dec hl
    inc b
    sub $2b
    db $10
    add hl, hl
    db $10
    daa
    db $10
    ld h, $20
    jr z, jr_03e_76bc

    ld a, [hl+]
    jr nz, jr_03e_76ca

    jr nz, @+$2f

    db $10
    ld l, $10
    dec l
    db $10
    dec hl
    db $10
    ld a, [hl+]
    db $10
    inc sp
    db $10
    ld [hl-], a
    db $10
    ld a, [hl+]
    db $10
    ld l, $10
    jr nc, jr_03e_76c4

    ld l, $10

jr_03e_76b6:
    dec l
    db $10
    dec hl
    ld [$0460], sp

jr_03e_76bc:
    db $d3
    dec hl
    inc b
    sub $1f
    ld [$0821], sp

jr_03e_76c4:
    ld [hl+], a
    ld [$0824], sp
    ld h, $05

jr_03e_76ca:
    daa
    dec b
    add hl, hl
    ld b, $2e
    ld [$0460], sp
    db $d3
    ld l, $08
    ld h, b
    inc b
    sub $2d
    ld [$202b], sp
    db $d3
    dec hl
    jr jr_03e_76b6

    ld h, $08
    dec hl
    ld [$0829], sp
    dec hl
    ld [$082d], sp
    jr nc, @+$0a

    ld h, b
    inc b
    db $d3
    jr nc, @+$0a

    ld h, b
    inc b
    sub $2e
    ld [$082d], sp
    ld l, $08
    dec l
    ld [$082b], sp
    add hl, hl
    jr nc, @-$2b

    add hl, hl
    db $10
    sub $2b
    jr @-$2b

    dec hl
    ld [$26d6], sp
    jr nz, jr_03e_7731

    jr nz, @+$2b

    db $10
    dec hl
    db $10
    ld h, $18
    db $d3
    ld h, $08
    sub $2b
    ld [$082d], sp
    ld l, $08
    jr nc, jr_03e_7728

    ld [hl-], a
    db $10
    ld l, $10
    dec l
    db $10
    ld l, $10

jr_03e_7728:
    ld [hl-], a
    ld [$0460], sp
    db $d3
    ld [hl-], a
    ld [$0460], sp

jr_03e_7731:
    sub $30
    ld [$182e], sp
    db $d3
    ld l, $10
    ld h, b
    ld [bc], a
    sub $2e
    ld b, $60
    dec b
    ld l, $05
    ld h, b
    ld b, $2e
    ld a, [bc]
    dec hl
    dec bc
    ld h, $0b
    inc h
    ld [$0460], sp
    db $d3
    inc h
    ld [$0160], sp
    sub $20
    ld [$0360], sp
    jr nz, jr_03e_7764

    dec de
    dec bc
    jr nz, jr_03e_7769

    inc h
    ld a, [bc]
    jr nz, jr_03e_776d

    inc h
    dec bc

jr_03e_7764:
    daa
    ld a, [bc]
    inc h
    dec bc
    daa

jr_03e_7769:
    dec bc
    ld h, $10
    dec hl

jr_03e_776d:
    ld [$082d], sp
    ld [hl-], a
    db $10
    dec hl
    ld [$082d], sp
    ld h, $10
    rra
    ld [$0821], sp
    ld a, [de]
    db $10
    inc de
    ld [$0815], sp
    ld a, [de]
    inc b
    inc e
    inc b
    sub $1e
    inc b
    rra
    inc b
    ld hl, $2204
    inc b
    inc h
    inc b
    ld h, $04
    dec hl
    dec b
    ld h, b
    dec b
    dec hl
    ld b, $60
    dec b
    dec hl
    dec b
    ld h, b
    ld b, $2d
    ld a, [de]
    ld h, b
    ld b, $2e
    dec b
    ld h, b
    dec b
    ld l, $06
    ld h, b
    dec b
    ld l, $05
    ld h, b
    ld b, $fe
    ld h, h
    ld [hl], l
    rst $38
    or $0e
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld [bc], a
    or $0e
    rra
    add b
    dec e
    add b
    dec de
    ld b, b
    dec e
    jr nz, @+$1d

    jr nz, jr_03e_77e2

jr_03e_77c8:
    ld b, b
    rra
    ld b, b
    jr @+$32

    rra
    db $10
    inc h
    jr nc, jr_03e_77c8

    rla
    inc h

jr_03e_77d4:
    db $10
    or $0e
    ld d, $30
    rra
    db $10
    ld [hl+], a
    jr z, jr_03e_77d4

    rla
    ld [hl+], a
    jr @-$08

jr_03e_77e2:
    ld c, $15
    jr nz, @+$19

    jr nz, jr_03e_7800

    jr nz, jr_03e_7803

    jr nz, jr_03e_7806

    jr nz, jr_03e_784e

    ld b, b
    ld c, $08
    ld h, b
    ld [bc], a
    ld c, $08
    ld h, b
    ld [bc], a
    ld c, $09
    ld h, b
    inc bc
    inc de

jr_03e_77fc:
    ld [$17f6], sp
    inc de

jr_03e_7800:
    ld [$0ef6], sp

jr_03e_7803:
    inc de

jr_03e_7804:
    jr jr_03e_77fc

jr_03e_7806:
    rla
    inc de
    ld [$0ef6], sp
    inc de

jr_03e_780c:
    jr jr_03e_7804

    rla
    inc de
    ld [$0ef6], sp
    inc de
    jr jr_03e_780c

    rla
    inc de
    ld [$0ef6], sp
    inc de
    db $10
    or $0e
    ld de, $f608
    rla
    ld de, $f608
    ld c, $11

jr_03e_7828:
    jr @-$08

    rla
    ld de, $f608
    ld c, $11

jr_03e_7830:
    jr jr_03e_7828

    rla
    ld de, $f608
    ld c, $11
    jr jr_03e_7830

    rla
    ld de, $f608
    ld c, $11
    db $10
    or $0e
    rrca

jr_03e_7844:
    ld [$17f6], sp
    rrca
    ld [$0ef6], sp
    rrca
    jr jr_03e_7844

jr_03e_784e:
    rla
    rrca
    ld [$0ef6], sp
    rrca
    db $10
    or $0e
    ld de, $f608
    rla
    ld de, $f608
    ld c, $11
    inc e
    or $17
    ld de, $f604
    ld c, $0f
    db $10
    or $0e
    ld c, $08
    or $17
    ld c, $08
    or $0e
    dec d
    jr nz, @+$1c

    jr nz, jr_03e_788d

    db $10
    ld de, $0e10
    db $10
    inc c
    ld [$080e], sp
    rrca
    jr @+$10

    ld [$080f], sp
    ld de, $1308
    ld [$0812], sp

jr_03e_788d:
    inc de
    ld [$0815], sp
    ld d, $08
    jr @+$0a

    ld d, $08
    dec d
    ld [$1013], sp
    inc d
    ld [$0813], sp
    ld [de], a
    db $10
    inc de
    ld [$0812], sp
    ld de, $1210
    ld [$0811], sp
    db $10
    db $10
    ld de, $1008
    ld [$080f], sp
    or $17
    rrca
    ld [$0ef6], sp
    rrca
    inc e
    or $17
    rrca
    inc b
    or $0e
    rrca
    dec b
    ld de, $0f05
    ld b, $f6
    ld c, $0e
    inc d
    or $17
    ld c, $0c
    or $0e
    ld c, $08
    dec d
    ld [$081a], sp
    ld c, $08
    or $0e
    inc de
    db $10
    or $17
    inc de
    db $10
    or $0e
    inc de
    ld [$0815], sp
    inc de
    ld [$0812], sp
    inc de
    ld [$0815], sp
    ld d, $08
    jr jr_03e_78fb

    ld a, [de]
    ld [$081b], sp
    dec e
    ld [$081f], sp

jr_03e_78fb:
    or $0e
    dec de
    jr nz, @-$08

    rla
    dec de
    ld [$0ef6], sp
    ld d, $08
    dec de
    ld [$081a], sp
    dec de
    db $10
    ld d, $10
    dec d
    db $10
    inc de
    db $10
    or $0e
    ld c, $20
    or $17
    ld c, $08
    or $0e
    dec e
    inc b
    or $17
    dec e
    inc b
    or $0e
    dec e
    ld [$081b], sp
    ld a, [de]
    jr nz, @+$10

    jr nz, @-$08

    ld c, $13
    ld [$17f6], sp
    inc de
    ld [$0ef6], sp
    inc de
    inc e
    or $17
    inc de
    inc b
    or $0e
    inc de
    db $10
    or $0e
    ld de, $f60c
    rla
    ld de, $f604
    ld c, $11
    inc e
    or $17
    ld de, $f604
    ld c, $11
    db $10
    or $0e
    db $10
    ld [$17f6], sp
    db $10
    ld [$0ef6], sp
    db $10
    db $10
    or $17
    db $10
    ld [$0ef6], sp
    db $10
    ld [$0811], sp
    db $10
    ld [$0ef6], sp
    rrca
    dec e
    or $17
    rrca
    inc bc
    or $0e
    ld c, $1d
    or $17
    ld c, $03
    or $0e
    inc c
    jr z, jr_03e_7995

    ld [$0818], sp
    rla
    ld [$2016], sp
    dec d
    jr nz, jr_03e_79a0

    ld a, [bc]
    rrca
    dec bc
    inc d
    dec bc
    jr jr_03e_799d

    inc d
    dec bc

jr_03e_7995:
    jr @+$0d

    dec de
    ld a, [bc]
    jr jr_03e_79a6

    dec de
    dec bc

jr_03e_799d:
    jr nz, jr_03e_79a9

    dec de

jr_03e_79a0:
    dec bc
    jr nz, @+$0d

    or $0e
    ld a, [de]

jr_03e_79a6:
    ld [$17f6], sp

jr_03e_79a9:
    ld a, [de]
    ld [$0ef6], sp
    ld c, $18
    or $17
    ld c, $08
    or $0e
    ld c, $18
    or $17
    ld c, $08
    or $0e
    ld c, $18
    or $17
    ld c, $08
    or $0e
    ld c, $08
    or $17
    ld c, $08
    or $0e
    ld c, $20
    or $0e
    db $10
    dec b
    or $17
    db $10
    dec b
    or $0e
    db $10
    ld b, $f6
    rla
    db $10
    dec b
    or $0e
    db $10
    dec b

jr_03e_79e3:
    or $17
    db $10
    ld b, $f6
    ld c, $11
    ld a, [de]
    or $17
    ld de, $f606
    ld c, $12
    dec b
    or $17
    ld [de], a
    dec b
    or $0e
    ld [de], a
    ld b, $f6
    rla
    ld [de], a
    dec b
    or $0e
    ld [de], a
    dec b
    or $17
    ld [de], a
    ld b, $fe
    cp e
    ld [hl], a
    rst $38
    sub $26
    jr c, jr_03e_79e3

    ld h, $02
    push de
    ld h, $02
    push de
    ld h, $04
    rst $10
    ld h, $10
    sub $26
    jr nz, @+$28

    db $10
    ld h, $38
    call nc, $0226
    push de
    ld h, $02
    push de
    ld h, $04
    rst $10
    ld h, $10
    sub $26
    jr nz, jr_03e_7a57

    db $10
    rst $10
    ld h, $30
    call nc, $0526
    push de
    ld h, $05
    push de
    ld h, $06
    sub $26
    db $10
    sub $26
    jr nz, @+$28

    db $10
    ld h, $10
    call nc, $0526
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    call nc, $0526

jr_03e_7a57:
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $04
    push de
    ld h, $04
    call nc, $0426
    call nc, $0426
    ld h, $04
    call nc, $0426
    push de
    ld h, $04
    rst $10
    ld h, $04
    sub $26
    jr @-$29

    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $20
    ld h, $20
    ld h, $10
    push de
    ld h, $20
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $18
    push de
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    call nc, $0526
    call nc, $0526
    push de
    ld h, $06
    sub $26
    db $10
    push de
    ld h, $05
    sub $26
    dec b
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $18
    push de
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $20
    ld h, $20
    ld h, $10
    push de
    ld h, $20
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $18
    push de
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    call nc, $0526
    call nc, $0526
    push de
    ld h, $06
    sub $26
    db $10
    push de
    ld h, $05
    sub $26
    dec b
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $10
    ld h, $10
    push de
    ld h, $05
    push de
    ld h, $05
    sub $26
    ld b, $d6
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $08
    ld h, $08
    ld h, $20
    ld h, $05
    push de
    ld h, $05
    call nc, $0626
    call nc, $0526
    call nc, $0526
    sub $26
    ld b, $d6
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $20
    sub $26
    dec b
    ld h, $05
    ld h, $06
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $20
    sub $26
    dec b
    ld h, $05
    ld h, $06
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $20
    sub $26
    dec b
    ld h, $05
    ld h, $06
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $20
    sub $26
    dec b
    ld h, $05
    ld h, $06
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $20
    sub $26
    dec b
    ld h, $05
    ld h, $06
    ld h, $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $08
    ld h, $08
    sub $26
    db $10
    push de
    ld h, $20
    sub $26
    dec b
    ld h, $05
    ld h, $06
    ld h, $10
    call nc, $0426
    push de
    ld h, $04
    push de
    ld h, $04
    sub $26
    inc b
    sub $26
    db $10
    push de
    ld h, $04
    push de
    ld h, $04
    sub $26
    inc b
    sub $26
    inc b
    sub $26
    db $10
    push de
    ld h, $04
    push de
    ld h, $04
    sub $26
    inc b
    sub $26
    inc b
    sub $26
    db $10
    ld h, $10
    ld h, $20
    ld h, $04
    sub $26
    inc b
    push de
    ld h, $04
    push de
    ld h, $04
    ld h, $04
    push de
    ld h, $04
    sub $26
    inc b
    sub $26
    inc b
    sub $26
    jr nz, jr_03e_7d97

    ld a, [bc]
    ld h, $0b
    ld h, $0b
    cp $80
    ld a, d
    rst $38
    ld sp, hl
    nop
    ldh [rDIV], a
    or $02
    ret c

    jr jr_03e_7d8d

    ld h, b
    inc d
    dec de
    inc d
    jr jr_03e_7d93

    ld h, b
    inc d
    inc de
    ld a, [bc]

jr_03e_7d8d:
    ld d, $14
    rla
    ld a, [bc]
    jr jr_03e_7db1

jr_03e_7d93:
    dec de
    inc d
    rra
    ld a, [bc]

jr_03e_7d97:
    ld h, b
    inc d
    inc de
    ld a, [bc]
    ld d, $14
    inc de
    ld a, [bc]
    jr jr_03e_7dbf

    dec de
    inc d
    jr jr_03e_7daf

    ld h, b
    inc d
    inc de
    ld a, [bc]
    ld d, $14
    rla
    ld a, [bc]
    jr jr_03e_7dcd

jr_03e_7daf:
    dec de
    inc d

jr_03e_7db1:
    jr @+$0c

    ld h, b
    inc d
    jr jr_03e_7dc1

    dec de
    inc d
    rra
    ld a, [bc]
    dec e
    ld e, $21
    inc d

jr_03e_7dbf:
    jr @+$0c

jr_03e_7dc1:
    ld h, b
    inc d
    jr jr_03e_7dcf

    dec de
    inc d
    inc e
    ld a, [bc]
    dec e
    ld e, $21
    inc d

jr_03e_7dcd:
    jr @+$0c

jr_03e_7dcf:
    ld h, b
    inc d
    jr jr_03e_7ddd

    dec de
    inc d
    inc e
    ld a, [bc]
    dec e
    ld e, $21
    inc d
    jr @+$0c

jr_03e_7ddd:
    ld h, b
    inc d
    jr jr_03e_7deb

    dec de
    inc d
    inc e
    ld a, [bc]
    dec e
    ld e, $21
    inc d
    dec e
    ld a, [bc]

jr_03e_7deb:
    ld h, b
    inc d
    dec e
    ld a, [bc]
    ld hl, $1d14
    ld a, [bc]
    ld h, b
    inc d
    ld sp, hl
    nop
    ldh [rP1], a
    sub $37
    ld a, [bc]
    ld [hl], $0a
    ld h, b
    inc d
    ld [hl], $14
    dec [hl]
    ld a, [bc]
    ld h, b
    inc d
    dec [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld h, b
    inc d
    inc [hl]
    inc d
    inc sp
    ld a, [bc]
    ld h, b
    inc d
    inc sp
    ld a, [bc]
    ld [hl-], a
    inc d
    db $d3
    ld [hl-], a
    ld a, [bc]
    ld h, b
    inc d
    sub $3a
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld h, b
    inc d
    add hl, sp
    inc d
    jr c, jr_03e_7e30

    ld h, b
    inc d
    jr c, jr_03e_7e34

    scf
    ld a, [bc]
    ld h, b
    inc d
    scf
    inc d

jr_03e_7e30:
    ld [hl], $0a
    ld h, b
    inc d

jr_03e_7e34:
    ld [hl], $0a
    dec [hl]
    inc d
    db $d3
    dec [hl]
    ld a, [bc]
    ld h, b
    inc d
    sub $3c
    ld a, [bc]
    dec sp
    ld a, [bc]
    ld h, b
    inc d
    dec sp
    inc d
    ld a, [hl-]
    ld a, [bc]
    ld h, b
    inc d
    ld a, [hl-]
    ld a, [bc]
    add hl, sp
    ld a, [bc]
    ld h, b
    inc d
    add hl, sp
    inc d
    jr c, jr_03e_7e5e

    ld h, b
    inc d
    jr c, @+$0c

    scf
    inc d
    db $d3
    scf
    ld a, [bc]
    ld sp, hl

jr_03e_7e5e:
    nop
    ldh [$03], a
    sub $36
    inc d
    ld h, b
    jr z, jr_03e_7e9c

    inc d
    ld h, b
    jr z, jr_03e_7e9e

    inc d

jr_03e_7e6c:
    ld h, b
    jr z, jr_03e_7ea1

    inc d
    ld h, b
    jr z, jr_03e_7e6c

    nop
    ldh [rDIV], a
    cp $80
    ld a, l
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $02
    ret nc

    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $10
    sub $33
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    ld h, b
    inc d
    ld [hl-], a
    inc d
    ld sp, $600a
    inc d
    ld sp, $300a
    ld a, [bc]
    ld h, b
    inc d

jr_03e_7e9c:
    jr nc, jr_03e_7eb2

jr_03e_7e9e:
    cpl
    ld a, [bc]
    ld h, b

jr_03e_7ea1:
    inc d
    cpl
    ld a, [bc]
    ld l, $14
    db $d3
    ld l, $0a
    ld h, b
    inc d
    sub $37
    ld a, [bc]
    ld [hl], $0a
    ld h, b
    inc d

jr_03e_7eb2:
    ld [hl], $14
    dec [hl]
    ld a, [bc]
    ld h, b
    inc d
    dec [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld h, b
    inc d
    inc [hl]
    inc d
    inc sp
    ld a, [bc]
    ld h, b
    inc d
    inc sp
    ld a, [bc]
    ld [hl-], a
    inc d
    db $d3
    ld [hl-], a
    ld a, [bc]
    ld h, b
    inc d
    sub $39
    ld a, [bc]
    jr c, jr_03e_7edc

    ld h, b
    inc d
    jr c, jr_03e_7eea

    scf
    ld a, [bc]
    ld h, b
    inc d
    scf
    ld a, [bc]

jr_03e_7edc:
    ld [hl], $0a
    ld h, b
    inc d
    ld [hl], $14
    dec [hl]
    ld a, [bc]
    ld h, b
    inc d
    dec [hl]
    ld a, [bc]
    inc [hl]
    inc d

jr_03e_7eea:
    db $d3
    inc [hl]
    ld a, [bc]
    ld sp, hl
    nop
    ldh [$03], a
    sub $33
    inc d
    ld h, b
    jr z, jr_03e_7f29

    inc d
    ld h, b
    jr z, jr_03e_7f2b

    inc d

jr_03e_7efc:
    ld h, b
    jr z, jr_03e_7f2e

    inc d
    ld h, b
    jr z, jr_03e_7efc

    nop
    ldh [rP1], a
    cp $80
    ld a, [hl]
    rst $38
    or $0e
    ld h, $05
    daa
    dec l
    inc h
    ld a, [bc]
    ld h, b
    ld [hl-], a
    rra
    ld a, [bc]
    ld [hl+], a
    inc d
    ld hl, $220a
    inc d
    ld hl, $1f0a
    ld a, [bc]
    ld h, b
    inc d
    dec e
    ld a, [bc]
    ld h, b
    inc d
    ld h, $05
    daa

jr_03e_7f29:
    dec l
    inc h

jr_03e_7f2b:
    ld a, [bc]
    ld h, b
    ld [hl-], a

jr_03e_7f2e:
    rra
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld hl, $220a
    ld a, [bc]
    ld hl, $220a
    ld a, [bc]
    ld hl, $1f0a
    inc d
    ld [hl+], a
    ld a, [bc]
    inc h
    ld a, [bc]
    ld h, b
    ld a, [bc]
    daa
    ld a, [bc]
    jr z, jr_03e_7f4d

    add hl, hl
    dec l
    inc h
    ld a, [bc]
    ld h, b

jr_03e_7f4d:
    ld [hl-], a
    ld h, $0a
    daa
    inc d
    ld h, $0a
    daa
    inc d
    ld h, $0a
    inc h
    ld a, [bc]
    ld h, b
    inc d
    ld [hl+], a
    ld a, [bc]
    ld h, b
    inc d
    jr z, jr_03e_7f67

    add hl, hl
    dec l
    dec l
    ld a, [bc]
    ld h, b

jr_03e_7f67:
    ld [hl-], a
    jr nc, jr_03e_7f74

    inc sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_03e_7f7a

    inc sp
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]

jr_03e_7f74:
    jr nc, jr_03e_7f7b

    ld h, b
    dec b
    jr nc, jr_03e_7f8e

jr_03e_7f7a:
    inc sp

jr_03e_7f7b:
    ld a, [bc]
    ld [hl-], a
    inc d
    inc sp
    ld a, [bc]
    or $0e
    inc de
    inc a
    or $0f
    inc de
    inc d
    ld h, b
    ld a, b
    or $0e
    inc de
    rlca

jr_03e_7f8e:
    or $0f
    inc de
    inc bc
    or $0e
    inc de
    rrca
    or $0f
    inc de
    dec b
    or $0e
    inc de
    rlca
    or $0f
    inc de
    inc bc
    or $0e
    inc d
    inc a
    or $0f
    inc d
    inc d
    ld h, b
    ld a, b
    or $0e
    inc d
    rlca
    or $0f
    inc d
    inc bc
    or $0e
    inc d
    rrca
    or $0f
    inc d
    dec b
    or $0e
    inc d
    rlca
    or $0f
    inc d
    inc bc
    or $0e
    inc de
    inc a
    or $0f
    inc de
    inc d
    ld h, b
    cp [hl]
    or $0e
    inc de
    rrca
    ld h, b
    dec l
    or $0e
    inc de
    rrca
    ld h, b
    dec l
    or $0e
    inc de
    rrca
    or $0f
    inc de
    rrca
    or $0e
    dec d
    rrca
    or $0f
    dec d
    rrca
    or $0e
    rla
    rrca
    or $0f
    rla
    rrca
    cp $0a
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
    rst $38

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX

Call_003_4000:
    di
    xor a
    ldh [rIF], a
    ldh [rIE], a
    ldh [rSTAT], a
    ldh [rTAC], a
    ldh [rSC], a
    xor a
    ld [$1111], a
    call $02c1
    ldh a, [hFF96]
    or a
    jr z, jr_003_4022

    xor a
    ldh [rRP], a
    ldh [rSVBK], a
    ldh [rVBK], a
    call Call_003_4071

jr_003_4022:
    ld hl, $ff98
    ld b, $26
    call $044b
    ld hl, $c2c0
    ld bc, $1d3f
    call $0451
    call $048b
    ld hl, $4091
    ld de, $ff80
    ld b, $0a
    call $0462
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $6c
    ldh [rOBP1], a
    call $0c93
    ld a, $c7
    ldh [rLYC], a
    ld a, $40
    ldh [rSTAT], a
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ld hl, $4000
    ld e, $3f
    call $008a
    ei
    ld hl, $4000
    ld e, $02
    call $008a
    jp $08fe


Call_003_4071:
    ldh a, [rKEY1]
    rlca
    ret c

    xor a
    ldh [rIF], a
    ldh [rIE], a
    ld a, $01
    ldh [rKEY1], a
    ld a, $30
    ldh [rP1], a
    stop

jr_003_4084:
    ldh a, [rKEY1]
    rlca
    jr nc, jr_003_4084

    xor a
    ldh [rP1], a
    ldh [rIF], a
    ldh [rIE], a
    ret


    ld a, $cb
    ldh [rDMA], a
    ld a, $28

jr_003_4097:
    dec a
    jr nz, jr_003_4097

    ret


    ldh [rIE], a
    pop hl
    rst $38
    db $e3
    rst $38
    and $ff
    ld [$efff], a
    rst $38
    db $f4
    rst $38
    ld a, [$00ff]
    nop
    ld b, $00
    inc c
    nop
    ld de, $1600
    nop
    ld a, [de]
    nop
    dec e
    nop
    rra
    nop
    jr nz, jr_003_40bd

jr_003_40bd:
    rra
    nop
    dec e
    nop
    ld a, [de]
    nop
    ld d, $00
    ld de, $0c00
    nop
    ld b, $00
    nop
    nop
    ld a, [$f4ff]
    rst $38
    rst $28
    rst $38
    ld [$e6ff], a
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    db $e3
    rst $38
    and $ff
    ld [$efff], a
    rst $38
    db $f4
    rst $38
    ld a, [$c0ff]
    rst $38
    jp nz, $c5ff

    rst $38
    set 7, a
    db $d3
    rst $38
    db $dd
    rst $38
    add sp, -$01
    db $f4
    rst $38
    nop
    nop
    inc c
    nop
    jr jr_003_4101

jr_003_4101:
    inc hl
    nop
    dec l
    nop
    dec [hl]
    nop
    dec sp
    nop
    ld a, $00
    ld b, b
    nop
    ld a, $00
    dec sp
    nop
    dec [hl]
    nop
    dec l
    nop
    inc hl
    nop
    jr jr_003_4119

jr_003_4119:
    inc c
    nop
    nop
    nop
    db $f4
    rst $38
    add sp, -$01
    db $dd
    rst $38
    db $d3
    rst $38
    set 7, a
    push bc
    rst $38
    jp nz, $c0ff

    rst $38
    jp nz, $c5ff

    rst $38
    set 7, a
    db $d3
    rst $38
    db $dd
    rst $38
    add sp, -$01
    db $f4
    rst $38
    and b
    rst $38
    and d
    rst $38
    xor b
    rst $38
    or c
    rst $38
    cp l
    rst $38
    set 7, a
    call c, $eeff
    rst $38
    nop
    nop
    ld [de], a
    nop
    inc h
    nop
    dec [hl]
    nop
    ld b, e
    nop
    ld c, a
    nop
    ld e, b
    nop
    ld e, [hl]
    nop
    ld h, b
    nop
    ld e, [hl]
    nop
    ld e, b
    nop
    ld c, a
    nop
    ld b, e
    nop
    dec [hl]
    nop
    inc h
    nop
    ld [de], a
    nop
    nop
    nop
    xor $ff
    call c, $cbff
    rst $38
    cp l
    rst $38
    or c
    rst $38
    xor b
    rst $38
    and d
    rst $38
    and b
    rst $38
    and d
    rst $38
    xor b
    rst $38
    or c
    rst $38
    cp l
    rst $38
    set 7, a
    call c, $eeff
    rst $38
    add b
    rst $38
    add e
    rst $38
    adc d
    rst $38
    sub [hl]
    rst $38
    and [hl]
    rst $38
    cp c
    rst $38
    ret nc

    rst $38
    add sp, -$01
    nop
    nop
    jr jr_003_419f

jr_003_419f:
    jr nc, jr_003_41a1

jr_003_41a1:
    ld b, a
    nop
    ld e, d
    nop
    ld l, d
    nop
    halt
    ld a, l
    nop
    add b
    nop
    ld a, l
    nop
    halt
    ld l, d
    nop
    ld e, d
    nop
    ld b, a
    nop
    jr nc, jr_003_41b9

jr_003_41b9:
    jr jr_003_41bb

jr_003_41bb:
    nop
    nop
    add sp, -$01
    ret nc

    rst $38
    cp c
    rst $38
    and [hl]
    rst $38
    sub [hl]
    rst $38
    adc d
    rst $38
    add e
    rst $38
    add b
    rst $38
    add e
    rst $38
    adc d
    rst $38
    sub [hl]
    rst $38
    and [hl]
    rst $38
    cp c
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld l, l
    rst $38
    ld a, e
    rst $38
    adc a
    rst $38
    xor b
    rst $38
    jp $e1ff


    rst $38
    nop
    nop
    rra
    nop
    dec a
    nop
    ld e, b
    nop
    ld [hl], c
    nop
    add l
    nop
    sub e
    nop
    sbc h
    nop
    and b
    nop
    sbc h
    nop
    sub e
    nop
    add l
    nop
    ld [hl], c
    nop
    ld e, b
    nop
    dec a
    nop
    rra
    nop
    nop
    nop
    pop hl
    rst $38
    jp $a8ff


    rst $38
    adc a
    rst $38
    ld a, e
    rst $38
    ld l, l
    rst $38
    ld h, h
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld l, l
    rst $38
    ld a, e
    rst $38
    adc a
    rst $38
    xor b
    rst $38
    jp $e1ff


    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld c, a
    rst $38
    ld h, c
    rst $38
    ld a, c
    rst $38
    sub [hl]
    rst $38
    or a
    rst $38
    db $db
    rst $38
    nop
    nop
    dec h
    nop
    ld c, c
    nop
    ld l, d
    nop
    add a
    nop
    sbc a
    nop
    or c
    nop
    cp h
    nop
    ret nz

    nop
    cp h
    nop
    or c
    nop
    sbc a
    nop
    add a
    nop
    ld l, d
    nop
    ld c, c
    nop
    dec h
    nop
    nop
    nop
    db $db
    rst $38
    or a
    rst $38
    sub [hl]
    rst $38
    ld a, c
    rst $38
    ld h, c
    rst $38
    ld c, a
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld c, a
    rst $38
    ld h, c
    rst $38
    ld a, c
    rst $38
    sub [hl]
    rst $38
    or a
    rst $38
    db $db
    rst $38
    jr nz, @+$01

    dec h
    rst $38
    ld [hl-], a
    rst $38
    ld b, [hl]
    rst $38
    ld h, d
    rst $38
    add h
    rst $38
    xor e
    rst $38
    push de
    rst $38
    nop
    nop
    dec hl
    nop
    ld d, l
    nop
    ld a, h
    nop
    sbc [hl]
    nop
    cp d
    nop
    adc $00
    db $db
    nop
    ldh [rP1], a
    db $db
    nop
    adc $00
    cp d
    nop
    sbc [hl]
    nop
    ld a, h
    nop
    ld d, l
    nop
    dec hl
    nop
    nop
    nop
    push de
    rst $38
    xor e
    rst $38
    add h
    rst $38
    ld h, d
    rst $38
    ld b, [hl]
    rst $38
    ld [hl-], a
    rst $38
    dec h
    rst $38
    jr nz, @+$01

    dec h
    rst $38
    ld [hl-], a
    rst $38
    ld b, [hl]
    rst $38
    ld h, d
    rst $38
    add h
    rst $38
    xor e
    rst $38
    push de
    rst $38
    nop
    rst $38
    dec b
    rst $38
    inc d
    rst $38
    inc l
    rst $38
    ld c, e
    rst $38
    ld [hl], d
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    nop
    nop
    ld sp, $6100
    nop
    adc [hl]
    nop
    or l
    nop
    call nc, $ec00
    nop
    ei
    nop
    nop
    ld bc, $00fb
    db $ec
    nop
    call nc, $b500
    nop
    adc [hl]
    nop
    ld h, c
    nop
    ld sp, $0000
    nop
    rst $08
    rst $38
    sbc a
    rst $38
    ld [hl], d
    rst $38
    ld c, e
    rst $38
    inc l
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    inc d
    rst $38
    inc l
    rst $38
    ld c, e
    rst $38
    ld [hl], d
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    ldh [$fe], a
    and $fe
    or $fe
    ld de, $35ff
    rst $38
    ld h, b
    rst $38
    sub d
    rst $38
    ret z

    rst $38
    nop
    nop
    jr c, jr_003_432f

jr_003_432f:
    ld l, [hl]
    nop
    and b
    nop
    rlc b
    rst $28
    nop
    ld a, [bc]
    ld bc, $011a
    jr nz, jr_003_433e

    ld a, [de]

jr_003_433e:
    ld bc, $010a
    rst $28
    nop
    rlc b
    and b
    nop
    ld l, [hl]
    nop
    jr c, jr_003_434b

jr_003_434b:
    nop
    nop
    ret z

    rst $38
    sub d
    rst $38
    ld h, b
    rst $38
    dec [hl]
    rst $38
    ld de, $f6ff
    cp $e6
    cp $e0
    cp $e6
    cp $f6
    cp $11
    rst $38
    dec [hl]
    rst $38
    ld h, b
    rst $38
    sub d
    rst $38
    ret z

    rst $38
    ret nz

    cp $c7
    cp $d9
    cp $f6
    cp $1e
    rst $38
    ld c, a
    rst $38
    add [hl]
    rst $38
    jp nz, $00ff

    nop
    ld a, $00
    ld a, d
    nop
    or c
    nop
    ld [c], a
    nop
    ld a, [bc]
    ld bc, $0127
    add hl, sp
    ld bc, $0140
    add hl, sp
    ld bc, $0127
    ld a, [bc]
    ld bc, $00e2
    or c
    nop
    ld a, d
    nop
    ld a, $00
    nop
    nop
    jp nz, $86ff

    rst $38
    ld c, a
    rst $38
    ld e, $ff
    or $fe
    reti


    cp $c7
    cp $c0
    cp $c7
    cp $d9
    cp $f6
    cp $1e
    rst $38
    ld c, a
    rst $38
    add [hl]
    rst $38
    jp nz, $a0ff

    cp $a7
    cp $bb
    cp $dc
    cp $08
    rst $38
    dec a
    rst $38
    ld a, d
    rst $38
    cp h
    rst $38
    nop
    nop
    ld b, h
    nop
    add [hl]
    nop
    jp $f800


    nop
    inc h
    ld bc, $0145
    ld e, c
    ld bc, $0160
    ld e, c
    ld bc, $0145
    inc h
    ld bc, $00f8
    jp $8600


    nop
    ld b, h
    nop
    nop
    nop
    cp h
    rst $38
    ld a, d
    rst $38
    dec a
    rst $38
    ld [$dcff], sp
    cp $bb
    cp $a7
    cp $a0
    cp $a7
    cp $bb
    cp $dc
    cp $08
    rst $38
    dec a
    rst $38
    ld a, d
    rst $38
    cp h
    rst $38
    add b
    cp $88
    cp $9e
    cp $c1
    cp $f1
    cp $2b
    rst $38
    ld l, [hl]
    rst $38
    or [hl]
    rst $38
    nop
    nop
    ld c, d
    nop
    sub d
    nop
    push de
    nop
    rrca
    ld bc, HeaderManufacturerCode
    ld h, d
    ld bc, $0178
    add b
    ld bc, $0178
    ld h, d
    ld bc, HeaderManufacturerCode
    rrca
    ld bc, $00d5
    sub d
    nop
    ld c, d
    nop
    nop
    nop
    or [hl]
    rst $38
    ld l, [hl]
    rst $38
    dec hl
    rst $38
    pop af
    cp $c1
    cp $9e
    cp $88
    cp $80
    cp $88
    cp $9e
    cp $c1
    cp $f1
    cp $2b
    rst $38
    ld l, [hl]
    rst $38
    or [hl]
    rst $38
    ld h, b
    cp $68
    cp $80
    cp $a7
    cp $da
    cp $19
    rst $38
    ld h, c
    rst $38
    xor a
    rst $38
    nop
    nop
    ld d, c
    nop
    sbc a
    nop
    rst $20
    nop
    ld h, $01
    ld e, c
    ld bc, $0180
    sbc b
    ld bc, $01a0
    sbc b
    ld bc, $0180
    ld e, c
    ld bc, $0126
    rst $20
    nop
    sbc a
    nop
    ld d, c
    nop
    nop
    nop
    xor a
    rst $38
    ld h, c
    rst $38
    add hl, de
    rst $38
    jp c, $a7fe

    cp $80
    cp $68
    cp $60
    cp $68
    cp $80
    cp $a7
    cp $da
    cp $19
    rst $38
    ld h, c
    rst $38
    xor a
    rst $38
    ld b, b
    cp $49
    cp $63
    cp $8c
    cp $c4
    cp $08
    rst $38
    ld d, l
    rst $38
    xor c
    rst $38
    nop
    nop
    ld d, a
    nop
    xor e
    nop
    ld hl, sp+$00
    inc a
    ld bc, $0174
    sbc l
    ld bc, $01b7
    ret nz

    ld bc, $01b7
    sbc l
    ld bc, $0174
    inc a
    ld bc, $00f8
    xor e
    nop
    ld d, a
    nop
    nop
    nop
    xor c
    rst $38
    ld d, l
    rst $38
    ld [$c4ff], sp
    cp $8c
    cp $63
    cp $49
    cp $40
    cp $49
    cp $63
    cp $8c
    cp $c4
    cp $08
    rst $38
    ld d, l
    rst $38
    xor c
    rst $38

jr_003_44fb:
    jr nz, jr_003_44fb

    ld a, [hl+]
    cp $45
    cp $71
    cp $ad
    cp $f6
    cp $49
    rst $38
    and e
    rst $38
    nop
    nop
    ld e, l
    nop
    or a
    nop
    ld a, [bc]
    ld bc, $0153
    adc a
    ld bc, $01bb
    sub $01
    ldh [rSB], a
    sub $01
    cp e
    ld bc, $018f
    ld d, e
    ld bc, $010a
    or a
    nop
    ld e, l
    nop
    nop
    nop
    and e
    rst $38
    ld c, c
    rst $38
    or $fe
    xor l
    cp $71
    cp $45
    cp $2a
    cp $20
    cp $2a
    cp $45
    cp $71
    cp $ad
    cp $f6
    cp $49
    rst $38
    and e
    rst $38
    nop
    cp $0a
    cp $27
    cp $57
    cp $96
    cp $e4
    cp $3d
    rst $38
    sbc l
    rst $38
    nop
    nop
    ld h, e
    nop
    jp $1c00


    ld bc, $016a
    xor c
    ld bc, $01d9
    or $01
    nop
    ld [bc], a
    or $01
    reti


    ld bc, $01a9
    ld l, d
    ld bc, $011c
    jp $6300


    nop
    nop
    nop
    sbc l
    rst $38
    dec a
    rst $38
    db $e4
    cp $96
    cp $57
    cp $27
    cp $0a
    cp $00
    cp $0a
    cp $27
    cp $57
    cp $96
    cp $e4
    cp $3d
    rst $38
    sbc l
    rst $38
    ldh [$fd], a
    db $eb
    db $fd
    ld a, [bc]
    cp $3c
    cp $80
    cp $d2
    cp $30
    rst $38
    sub [hl]
    rst $38
    nop
    nop
    ld l, d
    nop
    ret nc

    nop
    ld l, $01
    add b
    ld bc, $01c4
    or $01
    dec d
    ld [bc], a
    jr nz, jr_003_45bf

    dec d
    ld [bc], a

jr_003_45bf:
    or $01
    call nz, $8001
    ld bc, $012e
    ret nc

    nop
    ld l, d
    nop
    nop
    nop
    sub [hl]
    rst $38
    jr nc, @+$01

    jp nc, $80fe

    cp $3c
    cp $0a
    cp $eb
    db $fd
    ldh [$fd], a
    db $eb
    db $fd
    ld a, [bc]
    cp $3c
    cp $80
    cp $d2
    cp $30
    rst $38
    sub [hl]
    rst $38
    ret nz

    db $fd
    call z, $ecfd
    db $fd
    ld [hl+], a
    cp $69
    cp $c0
    cp $24
    rst $38
    sub b
    rst $38
    nop
    nop
    ld [hl], b
    nop
    call c, Call_003_4000
    ld bc, $0197
    sbc $01
    inc d
    ld [bc], a
    inc [hl]
    ld [bc], a
    ld b, b
    ld [bc], a
    inc [hl]
    ld [bc], a
    inc d
    ld [bc], a
    sbc $01
    sub a
    ld bc, $0140
    call c, Call_003_7000
    nop
    nop
    nop
    sub b
    rst $38
    inc h
    rst $38
    ret nz

    cp $69
    cp $22
    cp $ec
    db $fd
    call z, $c0fd
    db $fd
    call z, $ecfd
    db $fd
    ld [hl+], a
    cp $69
    cp $c0
    cp $24
    rst $38
    sub b
    rst $38
    and b
    db $fd
    xor h
    db $fd
    rst $08
    db $fd
    rlca
    cp $53
    cp $af
    cp $18
    rst $38
    adc d
    rst $38
    nop
    nop
    halt
    add sp, $00
    ld d, c
    ld bc, $01ad
    ld sp, hl
    ld bc, $0231
    ld d, h
    ld [bc], a
    ld h, b
    ld [bc], a
    ld d, h
    ld [bc], a
    ld sp, $f902
    ld bc, $01ad
    ld d, c
    ld bc, $00e8
    halt
    nop
    nop
    adc d
    rst $38
    jr @+$01

    xor a
    cp $53
    cp $07
    cp $cf
    db $fd
    xor h
    db $fd
    and b
    db $fd
    xor h
    db $fd
    rst $08
    db $fd
    rlca
    cp $53
    cp $af
    cp $18
    rst $38
    adc d
    rst $38
    add b
    db $fd
    adc l
    db $fd
    or c
    db $fd
    db $ec
    db $fd
    inc a
    cp $9d
    cp $0c
    rst $38
    add h
    rst $38
    nop
    nop
    ld a, h
    nop
    db $f4
    nop
    ld h, e
    ld bc, $01c4
    inc d
    ld [bc], a
    ld c, a
    ld [bc], a
    ld [hl], e
    ld [bc], a
    add b
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld c, a
    ld [bc], a
    inc d
    ld [bc], a
    call nz, Call_003_6301
    ld bc, $00f4
    ld a, h
    nop
    nop
    nop
    add h
    rst $38
    inc c
    rst $38
    sbc l
    cp $3c
    cp $ec
    db $fd
    or c
    db $fd
    adc l
    db $fd
    add b
    db $fd
    adc l
    db $fd
    or c
    db $fd
    db $ec
    db $fd
    inc a
    cp $9d
    cp $0c
    rst $38
    add h
    rst $38
    ld h, b
    db $fd
    ld l, l
    db $fd
    sub h
    db $fd
    jp nc, $25fd

    cp $8b
    cp $ff
    cp $7d
    rst $38
    nop
    nop
    add e
    nop
    ld bc, $7501
    ld bc, $01db
    ld l, $02
    ld l, h
    ld [bc], a
    sub e
    ld [bc], a
    and b
    ld [bc], a
    sub e
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, $02
    db $db
    ld bc, $0175
    ld bc, $8301
    nop
    nop
    nop
    ld a, l
    rst $38
    rst $38
    cp $8b
    cp $25
    cp $d2
    db $fd
    sub h
    db $fd
    ld l, l
    db $fd
    ld h, b
    db $fd
    ld l, l
    db $fd
    sub h
    db $fd
    jp nc, $25fd

    cp $8b
    cp $ff
    cp $7d
    rst $38
    ld b, b
    db $fd
    ld c, [hl]
    db $fd
    db $76
    db $fd
    or a
    db $fd
    rrca
    cp $79
    cp $f3
    cp $77
    rst $38
    nop
    nop
    adc c
    nop
    dec c
    ld bc, $0187
    pop af
    ld bc, $0249
    adc d
    ld [bc], a
    or d
    ld [bc], a
    ret nz

    ld [bc], a
    or d
    ld [bc], a
    adc d
    ld [bc], a
    ld c, c
    ld [bc], a
    pop af
    ld bc, $0187
    dec c
    ld bc, $0089
    nop
    nop
    ld [hl], a
    rst $38
    di
    cp $79
    cp $0f
    cp $b7
    db $fd
    db $76
    db $fd
    ld c, [hl]
    db $fd
    ld b, b
    db $fd
    ld c, [hl]
    db $fd
    db $76
    db $fd
    or a
    db $fd
    rrca
    cp $79
    cp $f3
    cp $77

jr_003_477a:
    rst $38
    jr nz, jr_003_477a

    cpl
    db $fd
    ld e, c
    db $fd
    sbc l
    db $fd
    ld hl, sp-$03
    ld l, b
    cp $e7
    cp $71
    rst $38
    nop
    nop
    adc a
    nop
    add hl, de
    ld bc, $0198
    ld [$6302], sp
    ld [bc], a
    and a
    ld [bc], a
    pop de
    ld [bc], a
    ldh [rSC], a
    pop de
    ld [bc], a
    and a
    ld [bc], a
    ld h, e
    ld [bc], a
    ld [$9802], sp
    ld bc, $0119
    adc a
    nop
    nop
    nop
    ld [hl], c
    rst $38
    rst $20
    cp $68
    cp $f8
    db $fd
    sbc l
    db $fd
    ld e, c
    db $fd
    cpl

jr_003_47ba:
    db $fd
    jr nz, jr_003_47ba

    cpl
    db $fd
    ld e, c
    db $fd
    sbc l
    db $fd
    ld hl, sp-$03
    ld l, b
    cp $e7
    cp $71
    rst $38
    nop
    db $fd
    rrca
    db $fd
    dec sp
    db $fd
    add d
    db $fd
    pop hl
    db $fd
    ld d, [hl]
    cp $db
    cp $6b
    rst $38
    nop
    nop
    sub l
    nop
    dec h
    ld bc, $01aa
    rra
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    push bc
    ld [bc], a
    pop af
    ld [bc], a
    nop
    inc bc
    pop af
    ld [bc], a
    push bc
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    rra
    ld [bc], a
    xor d
    ld bc, $0125
    sub l
    nop
    nop
    nop
    ld l, e
    rst $38
    db $db
    cp $56
    cp $e1
    db $fd
    add d
    db $fd
    dec sp
    db $fd
    rrca
    db $fd
    nop
    db $fd
    rrca
    db $fd
    dec sp
    db $fd
    add d
    db $fd
    pop hl
    db $fd
    ld d, [hl]
    cp $db
    cp $6b
    rst $38

Call_003_481b:
    ld hl, $c612
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    push bc
    or b
    ld [hl-], a
    xor $01
    or b
    ld [hl], a
    ld bc, $0000
    call Call_003_4836
    pop bc
    ld hl, $c612
    ld [hl], c
    inc l
    ld [hl], b
    ret


Call_003_4836:
    push de
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    call Call_003_4846
    pop af
    ldh [rSVBK], a
    pop de
    ret


Call_003_4846:
    ld a, b
    rst $00
    ld d, d
    ld c, b
    push hl
    ld c, b
    and h
    ld c, c
    cp [hl]
    ld c, c
    ld h, b
    ld c, c
    ld hl, $d460
    ld b, $40
    call $044b
    call Call_003_4a7d
    call Call_003_49be
    call Call_003_4887
    ld hl, $c6e8
    ld [hl+], a
    ld [hl], c
    ld a, $04
    call Call_003_48a8
    call Call_003_48a7
    ld b, $04
    xor a
    call Call_003_48c1
    call Call_003_4a5b
    ld hl, $d48b
    or [hl]
    ld [hl], a
    call Call_003_4a69
    call Call_003_4a3e
    jp Jump_003_49d9


Call_003_4887:
    push bc
    ld hl, $c600
    ld a, [hl+]
    add [hl]
    ld b, a
    ld a, c
    cp $03
    ld a, b
    jr nz, jr_003_48a3

    ld l, $e6
    ld a, [hl]
    swap a
    and $0f
    add b
    ld b, a
    ld a, [hl]
    and $01
    rlca
    rlca
    xor b

jr_003_48a3:
    and $07
    pop bc
    ret


Call_003_48a7:
    ld a, c

Call_003_48a8:
    push bc
    ld hl, $4a82
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a

jr_003_48b2:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld d, $c6
    ld a, [de]
    call Call_003_48c1
    dec c
    jr nz, jr_003_48b2

    pop bc
    ret


Call_003_48c1:
    push hl
    push bc
    ld c, a

jr_003_48c4:
    ld hl, $d48b
    ld e, $14
    srl c

jr_003_48cb:
    ld a, [hl]
    rla
    ld [hl-], a
    rla
    rla
    dec e
    jr nz, jr_003_48cb

    dec b
    jr nz, jr_003_48c4

    ld hl, $d478
    ld de, $3f14

jr_003_48dc:
    ld a, [hl]
    and d
    ld [hl+], a
    dec e
    jr nz, jr_003_48dc

    pop bc
    pop hl
    ret


    ld hl, $d460
    ld b, $40
    call $044b
    call Call_003_4a7d
    call Call_003_4a15
    jr c, jr_003_4917

    call Call_003_4a3e
    call Call_003_4ace
    ld hl, $d477
    rst $10
    ld a, [hl]
    and $0f
    ld e, a
    xor [hl]
    ld [hl], a
    call Call_003_4a5b
    cp e
    jr nz, jr_003_4917

    call Call_003_491a
    ld a, [$cec1]
    cp c
    jr nz, jr_003_4917

    ld b, $00
    ret


jr_003_4917:
    ld b, $01
    ret


Call_003_491a:
    ld de, $cec0
    ld a, $04
    call Call_003_4923
    ld a, c

Call_003_4923:
    ld hl, $4a82
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld b, a

jr_003_492c:
    inc hl
    ld a, [hl+]
    call Call_003_4937
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_492c

    ret


Call_003_4937:
    push bc
    push de
    push hl
    ld b, a
    ld c, a
    ld d, $00

jr_003_493e:
    ld hl, $d48b
    ld e, $14

jr_003_4943:
    rl [hl]
    ld a, [hl]
    rla
    rla
    dec hl
    dec e
    jr nz, jr_003_4943

    rr d
    dec b
    jr nz, jr_003_493e

    ld a, $08
    sub c
    ld b, a
    ld a, d
    jr z, jr_003_495c

jr_003_4958:
    rrca
    dec b
    jr nz, jr_003_4958

jr_003_495c:
    pop hl
    pop de
    pop bc
    ret


    call Call_003_4a7d
    rst $00
    ld l, h
    ld c, c
    ld l, h
    ld c, c
    adc l
    ld c, c
    adc h
    ld c, c
    ld hl, $4a95
    ld a, [hl+]
    ld b, a
    ld de, $cec4

jr_003_4974:
    ld a, [de]
    push de
    ld e, [hl]
    ld d, $c6
    ld [de], a
    pop de
    inc de
    inc hl
    inc hl
    dec b
    jr nz, jr_003_4974

    ld hl, $c600
    ld a, [$cec2]
    ld [hl+], a
    ld a, [$cec3]
    ld [hl], a
    ret


    ld hl, $4ab9
    ld b, $08
    ld de, $cec4

jr_003_4995:
    ld a, [hl+]
    push hl
    ld l, a
    ld h, $c6
    ld a, [de]
    or [hl]
    ld [hl], a
    pop hl
    inc de
    inc hl
    dec b
    jr nz, jr_003_4995

    ret


    ld hl, $cec2
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    or d
    jr z, jr_003_49bb

    ld hl, $c600
    ld a, [hl+]
    cp e
    jr nz, jr_003_49b8

    ld a, [hl+]
    cp d
    jr z, jr_003_49bb

jr_003_49b8:
    ld b, $01
    ret


jr_003_49bb:
    ld b, $00
    ret


Call_003_49be:
    ld hl, $c600
    ld a, [hl+]
    or [hl]
    ret nz

    ld l, $23
    ld a, [hl-]
    and $7f
    ld b, a
    ld a, [hl]
    jr nz, jr_003_49d4

jr_003_49cd:
    or a
    jr nz, jr_003_49d4

    ldh a, [rDIV]
    jr jr_003_49cd

jr_003_49d4:
    ld l, $00
    ld [hl+], a
    ld [hl], b
    ret


Jump_003_49d9:
    ld a, c
    ld hl, $4a02
    rst JumpTable
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld de, $d478
    ld hl, $d460

jr_003_49e7:
    ld a, [bc]
    and $0f
    ret z

    push bc
    ld b, a

jr_003_49ed:
    ld a, [de]
    push hl
    ld hl, $00a1
    rst $10
    ld a, [hl]
    pop hl
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_003_49ed

    pop bc
    ld a, [bc]
    and $f0
    ld [hl+], a
    inc bc
    jr jr_003_49e7

    ld a, [bc]
    ld c, d
    ld a, [bc]
    ld c, d
    rrca
    ld c, d
    inc de
    ld c, d
    dec h
    dec b
    dec h
    dec b
    nop
    dec h
    dec b
    dec h
    nop
    dec b
    nop

Call_003_4a15:
    call Call_003_4ace
    ld hl, $cec0
    ld de, $d478

jr_003_4a1e:
    ld a, [hl+]
    call Call_003_4a29
    ret c

    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4a1e

    ret


Call_003_4a29:
    push hl
    push bc
    ld hl, $00a1
    ld bc, $4000

jr_003_4a31:
    cp [hl]
    jr z, jr_003_4a3a

    inc hl
    inc c
    dec b
    jr nz, jr_003_4a31

    scf

jr_003_4a3a:
    ld a, c
    pop bc
    pop hl
    ret


Call_003_4a3e:
    call Call_003_4ace
    ld a, [$d478]
    and $38
    rrca
    ld de, $4ada
    call $0068
    ld hl, $d478
    ld a, [de]
    and $07

jr_003_4a53:
    xor [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    dec b
    jr nz, jr_003_4a53

    ret


Call_003_4a5b:
    ld hl, $d478
    ld b, $14
    xor a

jr_003_4a61:
    add [hl]
    inc hl
    dec b
    jr nz, jr_003_4a61

    and $0f
    ret


Call_003_4a69:
    call Call_003_4ace
    ld a, $14
    sub b
    ret z

    ld de, $d478
    ld h, d
    ld l, e
    rst $10

jr_003_4a76:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_4a76

    ret


Call_003_4a7d:
    ld a, c
    and $03
    ld c, a
    ret


    sub l
    ld c, d
    sub l
    ld c, d
    cp b
    ld c, d
    bit 1, d
    adc h
    ld c, d
    inc b
    add sp, $03
    jp hl


    ld [bc], a
    nop
    ld [$0701], sp
    ld de, $0113
    ld de, $0201
    ld [$0809], sp
    inc bc
    ld [$080a], sp
    rrca
    ld b, $04
    ld [$080b], sp
    dec d
    ld bc, $0805
    db $10
    inc b
    ld b, $08
    inc c
    ld [$0112], sp
    dec c
    ld [$0207], sp
    add hl, bc
    rla
    ld [$081b], sp
    dec e
    ld [$0819], sp
    ld d, $08
    ld a, [de]
    ld [$0818], sp
    inc e
    ld [$0207], sp
    ld bc, $06e6

Call_003_4ace:
    ld a, c
    ld hl, $4ad6
    rst $10
    ld a, [hl]
    ld b, a
    ret


    inc d
    inc d
    rrca
    dec b
    dec d
    inc hl
    ld l, $04
    dec c
    ccf
    ld a, [de]
    db $10
    ld a, [hl-]
    cpl
    ld e, $20
    rrca
    ld a, $36
    scf
    add hl, bc
    add hl, hl
    dec sp
    ld sp, $1602
    dec a
    jr c, @+$2a

    inc de
    inc [hl]
    ld [hl-], a
    ld bc, $0a0b
    dec [hl]
    ld c, $1b
    ld [de], a
    inc l
    ld hl, $252d
    jr nc, @+$1b

    ld a, [hl+]
    ld b, $39
    inc a
    rla
    inc sp
    jr jr_003_4b84

    rst $00
    add c
    ld c, e
    inc [hl]
    ld c, h

Call_003_4b10:
Jump_003_4b10:
jr_003_4b10:
    ld hl, $cc03
    inc [hl]
    ret


    ld hl, $cbb3
    inc [hl]
    ret


Call_003_4b1a:
    ld hl, $cbb4
    dec [hl]
    ret


Call_003_4b1f:
    ld a, $ff
    jp $24a7


    ld a, $04
    call $312f
    ld hl, $cbb3
    ld b, $10
    call $044b
    jr jr_003_4b10

    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_4b10
    ld a, $9a
    ld [$cc4c], a
    call Call_003_4b6f
    call $1606
    ld hl, $d00b
    ld [hl], $38
    inc l
    inc l
    ld [hl], $78
    call $128c
    ld hl, $4022
    call $3048
    ld a, $ac
    call $04e7
    ld a, $01
    ld [$cd00], a
    call $1a5e
    ld a, $04
    call $315c
    ld a, $02
    jp $02ea


Call_003_4b6f:
    call $02c1
    call $3525
    call $32dc
    call $381a
    call $3737
    jp $12dd


    ld a, [$cc03]

jr_003_4b84:
    rst $00
    inc h
    ld c, e
    inc sp
    ld c, e
    sub c
    ld c, e
    sbc [hl]
    ld c, e
    or d
    ld c, e
    call $fa4b
    xor e
    call nz, $c0b7
    ld a, $01
    ld [$cbb4], a
    jp Jump_003_4b10


    call Call_003_4b1a
    ret nz

    ld [hl], $b4
    call Call_003_4c0d
    call Call_003_4c29
    ld a, $b0
    call $0c74
    jp Jump_003_4b10


    call Call_003_4b1f
    ld a, [$cc00]
    and $3f
    jr nz, jr_003_4bc1

    ld a, $b0
    call $0c74

jr_003_4bc1:
    call Call_003_4b1a
    ret nz

    ld a, $04
    call $312f
    jp Jump_003_4b10


    call Call_003_4b1f
    ld a, [$c4ab]
    or a
    ret nz

    ld a, $9e
    ld [$cc4c], a
    call Call_003_4b6f
    call $2e08
    ld [hl], $03
    ld l, $83
    set 7, [hl]
    ld hl, $d000
    ld [hl], $03
    ld l, $0b
    ld [hl], $78
    inc l
    inc l
    ld [hl], $78
    call $128c
    ld a, $01
    ld [$c2ef], a
    ld a, $01
    ld [$cd00], a
    call $1a5e
    ld a, $02
    call $315c
    ld a, $02
    jp $02ea


Call_003_4c0d:
    ld hl, $d240

jr_003_4c10:
    ld l, $40
    ld a, [hl+]
    or a
    jr z, jr_003_4c1c

    ld a, [hl+]
    cp $b0
    call z, Call_003_4c23

jr_003_4c1c:
    inc h
    ld a, h
    cp $e0
    jr c, jr_003_4c10

    ret


Call_003_4c23:
    dec l
    ld b, $40
    jp $044b


Call_003_4c29:
    ld a, $af
    call $04e7
    ld hl, $402f
    jp $3048


    ld a, [$cc03]
    rst $00
    inc h
    ld c, e
    inc sp
    ld c, e
    sub c
    ld c, e
    sbc [hl]
    ld c, e
    ld c, h
    ld c, h
    ld e, e
    ld c, h
    ld h, [hl]
    ld c, h
    ld [hl], c
    ld c, h
    ld a, a
    ld c, h
    sbc e
    ld c, h
    call Call_003_4b1a
    ret nz

    ld [hl], $14
    ld bc, $1878

jr_003_4c55:
    call Call_003_4cba
    jp Jump_003_4b10


    call Call_003_4b1a
    ret nz

    ld [hl], $14
    ld bc, $48a8
    jr jr_003_4c55

    call Call_003_4b1a
    ret nz

    ld [hl], $28
    ld bc, $4848
    jr jr_003_4c55

    call Call_003_4b1a
    ret nz

    ld [hl], $78
    ld a, $67
    call $0c74
    jp Jump_003_4b10


    call Call_003_4b1f
    ld a, [$cc00]
    and $07
    call z, $3168
    call Call_003_4b1a
    ret nz

    ld a, $04
    call $312f
    ld a, $b4
    call $0c74
    jp Jump_003_4b10


    call Call_003_4b1f
    ld a, [$c4ab]
    or a
    ret nz

    call $3525
    ld a, $01
    ld [$c2ef], a
    ld a, $01
    ld [$cd00], a
    call $2e08
    ld [hl], $04
    ld a, $f0
    jp $0c74


Call_003_4cba:
    call $3ea7
    ret nz

    ld [hl], $27
    inc l
    inc [hl]
    ld l, $cb
    ld [hl], b
    inc l
    inc l
    ld [hl], c
    ret


    ldh a, [$b8]
    or a
    jr z, jr_003_4cd8

    call $0c69
    ld a, $09
    ld [$cbb4], a
    jr jr_003_4ce9

jr_003_4cd8:
    call $0c61
    ld a, $03
    ldh [$bc], a
    xor a
    ldh [$bd], a
    ld a, [$c482]
    and $08
    jr z, jr_003_4cf5

jr_003_4ce9:
    ldh a, [$b7]
    add a
    jr z, jr_003_4cf5

    ld a, [$c2e6]
    cp $03
    jr nz, jr_003_4d03

jr_003_4cf5:
    ld a, [$c2e6]
    rst $00
    jr c, @+$4f

    inc a
    ld c, l
    ld h, c
    inc l
    adc b
    ld c, l
    dec de
    ld c, l

Jump_003_4d03:
jr_003_4d03:
    call $3116
    call Call_003_539c
    ld hl, $c2e7
    xor a
    ld [hl-], a
    ldh [$a8], a
    ld [$cbb6], a
    ld [hl], $03
    dec a
    ld [$cd25], a
    jr jr_003_4cf5

    xor a
    ld [$c2e6], a
    ld [$c2e7], a
    ret


Jump_003_4d23:
    call $085d
    call $3554
    ld hl, $c2e6
    inc [hl]
    inc l
    ld [hl], $00
    jp $3116


Call_003_4d33:
Jump_003_4d33:
    ld hl, $c2e7
    inc [hl]
    ret


    ld hl, $c2e6
    inc [hl]
    ld a, [$c2e7]
    rst $00
    ld b, [hl]
    ld c, l
    ld l, b
    ld c, l
    ld [hl], l
    ld c, l
    call $0c8e
    call $048b
    ld a, $01
    call $0602
    ld a, $01
    call $04e7
    ld hl, $cbb3
    ld [hl], $d0
    inc hl
    ld [hl], $00
    call Call_003_4d33
    call $3171
    xor a
    jp $02ea


    ld hl, $cbb3
    call $0237
    ret nz

    call Call_003_4d33
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    ld hl, $c2e6
    ld [hl], $02
    inc l
    ld [hl], a
    ld [$cbb5], a
    jp $085d


    call $042f
    call Call_003_4da3
    call $047b
    ld hl, $4e1c
    call $0d3a
    ld a, [$cbb3]
    and $20
    ret nz

    ld hl, $4e65
    jp $0d3a


Call_003_4da3:
    ld a, [$c2e7]
    rst $00
    xor a
    ld c, l
    db $dd
    ld c, l
    inc b
    ld c, [hl]
    inc c
    ld c, [hl]
    call $0c8e
    ld a, $e8
    call $0877
    call $1826
    call $02c1
    ld a, $02
    call $0602
    ld a, $03
    call $04e7
    ld hl, $cbb3
    ld a, $60
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    call Call_003_4d33
    ld a, $01
    call $0c74
    ld a, $04
    jp $02ea


    ld a, [$c482]
    and $08
    jr nz, jr_003_4def

    ld hl, $cbb3
    call $0237
    ret nz

    ld a, $02
    jr jr_003_4df9

jr_003_4def:
    ld a, $56
    call $0c74
    call $0c5a
    ld a, $03

jr_003_4df9:
    ld [$c2e7], a
    ld a, $fa
    call $0c74
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    jp Jump_003_4d23


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $e8
    ld bc, $19dd
    call $087f
    jp $08be


    ld [de], a
    ld d, c
    ld a, d
    ld d, [hl]
    inc b
    ld d, b
    add d
    ld [hl], h
    inc b
    ld e, b
    ld a, d
    ld l, d
    rlca
    ld e, b
    add d
    ld l, h
    rlca
    ld e, b
    adc d
    ld l, [hl]
    rlca
    ld c, b
    sub b
    ld h, d
    ld b, $44
    adc l
    ld l, b
    ld b, $54
    adc d
    ld d, h
    inc bc
    ld d, h
    add d
    ld d, d
    inc bc
    ld d, h
    ld a, d
    ld d, b
    inc bc
    ld b, b
    add l
    ld h, [hl]
    ld b, $40
    ld a, a
    ld h, h
    ld b, $41
    ld [hl], b
    ld h, b
    ld b, $54
    db $76
    ld e, d
    ld b, $44
    ld l, b
    ld e, [hl]
    ld h, $64
    ld a, d
    ld [hl], b
    inc bc
    ld h, h
    add d
    ld [hl], d
    inc bc
    ld h, h
    adc d
    ld [hl], b
    inc hl
    ld a, [bc]
    add b
    inc l
    jr c, jr_003_4e6a

jr_003_4e6a:
    add b
    inc [hl]
    ld a, [hl-]
    nop
    add b
    inc a
    inc a
    nop
    add b
    ld b, h
    ld a, $00
    add b
    ld c, h
    ld a, $00
    add b
    ld e, h
    ld a, $00
    add b
    ld h, h
    ld b, b
    nop
    add b
    ld l, h
    ld b, d
    nop
    add b
    ld [hl], h
    ld a, [hl-]
    nop
    add b
    ld a, h
    ld b, b
    nop
    ld a, [$cbb5]
    rst $00
    sbc b
    ld c, [hl]
    ld d, h
    ld d, b
    dec [hl]
    ld d, d
    ld a, [$c2e7]
    rst $00
    xor d
    ld c, [hl]
    ld bc, $324f
    ld c, a
    ld l, b
    ld c, a
    add [hl]
    ld c, a
    adc $4f
    ld [$cd50], sp
    pop bc
    ld [bc], a
    ld hl, $cba0
    ld bc, $0460
    call $0451
    ld a, $10
    ldh [$9d], a
    ld a, $9b
    call $0602
    ld a, $90
    call $04e7
    ld hl, $cbb3
    ld [hl], $7e
    inc hl
    ld [hl], $03
    ld a, $20
    ld [$cbb8], a
    ld a, $10
    ld [$cbb9], a
    ld a, $22
    ld [$cbb6], a
    ld a, $01
    ld [$cbba], a
    ld a, $08
    call $02ea
    ld a, $3f
    call $0c74
    call $3ac6
    jr nz, jr_003_4ef4

    ld [hl], $75
    inc l
    ld [hl], $00

jr_003_4ef4:
    ld a, $14
    call $315c
    ld hl, $c4b5
    ld [hl], $01
    jp Jump_003_4d33


    call Call_003_534f
    ld hl, $cbb3
    call $0237
    ret nz

    call $3110
    ld a, $96
    call $04e7
    ld a, $0c
    call $02ea
    ld a, [$c48c]
    ld [$cbbb], a
    ld a, [$c48d]
    ld [$cbbc], a
    call Call_003_4f54
    ld hl, $cbb3
    ld [hl], $58
    inc hl
    ld [hl], $01
    jp Jump_003_4d33


    ld hl, $cbb3
    call $0237
    jr nz, jr_003_4f51

    call $02c1
    ld a, $92
    call $04e7
    ld a, $9c
    call $0602
    ld a, $0a
    call $02ea
    call Call_003_4d33
    jr jr_003_4f76

jr_003_4f51:
    call Call_003_5367

Call_003_4f54:
    ld hl, $c48c
    ld a, [hl+]
    cpl
    inc a
    ld b, a
    ld a, [hl]
    cpl
    inc a
    ld c, a
    xor a
    ldh [$9d], a
    ld hl, $543e
    jp $0d3d


    ld hl, $c486
    dec [hl]
    jr nz, jr_003_4f76

    ld a, $cc
    ld [$cbb6], a
    call Call_003_4d33

jr_003_4f76:
    ld a, [$c486]
    cpl
    inc a
    ld b, a
    xor a
    ldh [$9d], a
    ld c, a
    ld hl, $53a5
    jp $0d3d


    ld hl, $cbb6
    dec [hl]
    jr nz, jr_003_4f76

    ld a, $93
    call $04e7
    call $02c1
    call $047b
    ld a, $10
    ldh [$9d], a
    ld a, $9d
    call $0602
    ld a, $05
    ld [$cbbb], a
    ld hl, $cbb3
    ld [hl], $90
    inc hl
    ld [hl], $01
    ld a, $b4
    ld [$cbb6], a
    call $3110
    ld a, $0b
    call $02ea
    call Call_003_4ff8
    ld b, $02

jr_003_4fbf:
    call $3ac6
    jr nz, jr_003_4fcb

    ld [hl], $75
    inc l
    ld [hl], b
    dec b
    jr nz, jr_003_4fbf

jr_003_4fcb:
    jp Jump_003_4d33


    ld hl, $cbb3
    call $0237
    jr nz, jr_003_4fde

    call $3144
    call Call_003_4d33
    jr jr_003_4ff8

jr_003_4fde:
    ld hl, $cbb6
    ld a, [hl]
    or a
    jr z, jr_003_4ff8

    dec [hl]
    ld a, [$c487]
    or a
    jr z, jr_003_4ff8

    ld hl, $cbbb
    dec [hl]
    jr nz, jr_003_4ff8

    ld [hl], $05
    ld hl, $c487
    dec [hl]

Call_003_4ff8:
jr_003_4ff8:
    xor a
    ldh [$9d], a
    ld b, a
    ld a, [$c487]
    cpl
    inc a
    ld c, a
    ld hl, $5493
    jp $0d3d


    ld a, [$c4ab]
    or a
    jr nz, jr_003_4ff8

    call $3554
    jr jr_003_504b

Call_003_5013:
    ld hl, $cbb6
    dec [hl]
    ret nz

    ld a, [$cbba]
    ld [$cbb6], a
    ld hl, $c486
    dec [hl]
    ld a, [hl]
    cp $88
    ret z

    cp $10
    jr nz, jr_003_503f

    ld a, $0d
    call $05b6
    ld b, $04

jr_003_5031:
    call $3ac6
    jr nz, jr_003_5048

    ld [hl], $d2
    inc l
    dec b
    ld [hl], b
    jr nz, jr_003_5031

    jr jr_003_5048

jr_003_503f:
    cp $b0
    jr nz, jr_003_5048

    ld a, $2a
    call $05b6

jr_003_5048:
    or $01
    ret


Jump_003_504b:
jr_003_504b:
    ld hl, $cbb5
    inc [hl]
    xor a
    ld [$c2e7], a
    ret


    ld a, [$c2e7]
    rst $00
    ld [hl], b
    ld d, b
    push hl
    ld d, b
    db $ed
    ld d, b
    cp $50
    ld a, [bc]
    ld d, c
    jr nc, jr_003_50b5

    ld b, b
    ld d, c
    ld d, d
    ld d, c
    ld l, [hl]
    ld d, c
    add [hl]
    ld d, c
    sub e
    ld d, c
    and [hl]
    ld d, c
    call $02c1
    call $047b
    ld a, $10
    ldh [$9d], a
    ld a, $9e
    call $0602
    ld a, $91
    call $04e7
    ld a, $09
    call $02ea
    ld a, [$c486]
    ldh [$a8], a
    ld a, $18
    ld [$cd25], a
    call $3600
    ld a, $01
    ld [$cd00], a
    ld a, $08
    call $2a20
    ld l, $00
    ld [hl], $01
    ld l, $0b
    ld a, [$c486]
    add $60
    ld [hl], a
    ld l, $0d
    ld [hl], $50
    ld hl, $54a8
    ld a, $03

jr_003_50b5:
    call $2964
    ld b, $03
    ld c, $30

jr_003_50bc:
    call $3ac6
    jr nz, jr_003_50d6

    ld [hl], $4a
    inc l
    ld a, b
    dec a
    ld [hl], a
    ld l, $4b
    ld [hl], $19
    ld a, c
    ld l, $4d
    ld [hl], a
    add $20
    ld c, a
    ld a, c
    dec b
    jr nz, jr_003_50bc

jr_003_50d6:
    ld hl, $cc02
    ld [hl], $01
    call $3171
    xor a
    ld [$cbb9], a
    jp Jump_003_4d33


    ld a, [$c4ab]
    or a
    ret nz

    jp Jump_003_4d33


    ld a, [$cbc3]
    rlca
    jp nc, $5336

    xor a
    ld [$cbc3], a
    call $5336
    jp Jump_003_4d33


    ld a, [$cbb9]
    cp $03
    ret nz

    call $3144
    jp Jump_003_4d33


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $01
    ld [$c48a], a
    inc a
    ld [$c490], a
    ld a, $00
    ldh [$9b], a
    ld a, $20
    call $1372
    call $3171
    call Call_003_4d33

Call_003_5127:
    ld hl, $cc00
    inc [hl]
    ld a, $02
    jp $1393


    call Call_003_5127
    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cbb6
    ld [hl], $78
    jp Jump_003_4d33


    call Call_003_5127
    ld hl, $cbb6
    dec [hl]
    ret nz

    ld [$cbb6], a
    dec a
    ld [$cbba], a
    call Call_003_4d33
    call Call_003_5127
    ld hl, $cbb6
    ld b, $00
    call Call_003_51b4
    ret z

    call $3110
    ld a, $06
    ld [$cbb9], a
    ld a, $91
    call $0c74
    jp Jump_003_4d33


    call Call_003_5127
    ld a, [$cbb9]
    cp $07
    ret nz

    call $353c
    ld b, $08
    call $2c8f
    ld a, b
    ld [$cbb6], a
    jp Jump_003_4d33


    call Call_003_5127
    ld hl, $cbb6
    dec [hl]
    ret nz

    ld [hl], $3c
    jp Jump_003_4d33


    call Call_003_5127
    ld hl, $cbb6
    dec [hl]
    ret nz

    ld a, $b4
    call $0c74
    call $3144
    jp Jump_003_4d33


    call Call_003_5127
    ld a, [$c4ab]
    or a
    ret nz

    call $3554
    jp Jump_003_504b


Call_003_51b4:
    ld a, b
    inc [hl]
    ld b, [hl]
    ld hl, $51fc
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $00

jr_003_51c0:
    ld a, [hl]
    bit 7, a
    ret nz

    cp b
    jr nc, jr_003_51cb

    inc hl
    inc c
    jr jr_003_51c0

jr_003_51cb:
    ld a, c
    and $01
    ld c, a
    ld a, [$cbba]
    cp c
    ret z

    ld a, c
    ld [$cbba], a
    or a
    jr z, jr_003_51e0

    call $3110
    xor a
    ret


jr_003_51e0:
    ld a, $02
    ldh [rSVBK], a
    ld b, $80
    ld hl, $df80
    ld a, $ff
    call $044c
    ld a, $ff
    ldh [$a7], a
    ldh [$a6], a
    ldh [$a5], a
    ldh [$a4], a
    xor a
    ldh [rSVBK], a
    ret


    rrca
    ld d, d
    rlca
    ld d, d
    dec d
    ld d, d
    dec e
    ld d, d
    dec l
    ld d, d
    inc bc
    ld [bc], a
    inc b
    ld b, $08
    inc c
    ld c, $10
    rst $38
    ld [bc], a
    inc b
    ld b, $0c
    ld c, $ff
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $ff
    ld bc, $0605
    ld a, [bc]
    dec bc
    rrca
    ld de, $1615
    ld a, [de]
    inc e
    jr nz, @+$24

    ld h, $28
    rst $38
    ld bc, $0402
    ld b, $08
    ld a, [bc]
    inc c
    rst $38
    ld a, [$c2e7]
    rst $00
    ld b, c
    ld d, d
    sub e
    ld d, d
    pop af
    ld d, d
    ld [hl+], a
    ld d, e
    call $02c1
    ld a, $ff
    ld [$cd25], a
    ld a, $9f
    call $0602
    ld a, $94
    call $04e7
    call $1606
    ld a, $0a
    call $02ea
    call $3ac6
    jr nz, jr_003_526f

    ld [hl], $4a
    inc l
    ld [hl], $08
    ld l, $4a
    ld a, $60
    ld [hl+], a
    ld [hl+], a
    ld a, $3d
    inc l
    ld [hl+], a

jr_003_526f:
    ld b, $08

jr_003_5271:
    call $3ac6
    jr nz, jr_003_527d

    ld [hl], $d3
    inc l
    dec b
    ld [hl], b
    jr nz, jr_003_5271

jr_003_527d:
    ld a, $03
    ld [$cbba], a
    ld [$cbb6], a
    call $3171
    xor a
    ldh [$a8], a
    ld a, $40
    call $0c74
    jp Jump_003_4d33


    call Call_003_5013
    ret nz

    call Call_003_4d33
    ld hl, $cbb3
    ld [hl], $02
    inc hl
    xor a
    ld [hl], a
    ld hl, $cbb6
    ld [hl], $10
    inc a
    ld [$c48a], a
    inc a
    ld [$c490], a
    ld a, $01
    ldh [$9b], a
    ld a, [$c486]
    ld b, $90
    ld hl, $c300

jr_003_52bb:
    ld [hl+], a
    dec b
    jr nz, jr_003_52bb

    ld a, $01

Jump_003_52c1:
    ld b, a
    xor a
    ld c, a

jr_003_52c4:
    inc c
    add b
    cp $18
    jr z, jr_003_52cd

    ret nc

    jr jr_003_52c4

jr_003_52cd:
    push bc
    ld a, $38
    sub b
    ld h, $c3
    ld l, a
    xor a

jr_003_52d5:
    push af
    sub l
    add $58
    ld [hl+], a
    pop af
    add c
    dec b
    jr nz, jr_003_52d5

    pop bc
    ld a, $37
    add b
    ld l, a
    ld a, $2f

jr_003_52e6:
    push af
    sub l
    add $58
    ld [hl-], a
    pop af
    sub c
    dec b
    jr nz, jr_003_52e6

    ret


    ld hl, $cbb6
    ld a, [hl]
    or a
    jr z, jr_003_52ff

    dec a
    ld [hl], a
    ld a, $ab
    call z, $0c74

jr_003_52ff:
    ld a, [$cbb7]
    and $01
    ld hl, $cbb4
    ret nz

    ld a, [hl]
    cp $08
    jr nc, jr_003_5317

    inc a
    ld [hl], a
    ld hl, $532e
    rst $10
    ld a, [hl]
    jp Jump_003_52c1


jr_003_5317:
    xor a
    ld [$cbb6], a
    dec a
    ld [$cbba], a
    jp Jump_003_4d33


    ld hl, $cbb6
    ld b, $01
    call Call_003_51b4
    ret z

    jp Jump_003_4d03


    ld bc, $0302

jr_003_5331:
    inc b
    ld b, $08
    inc c
    jr jr_003_5331

    add [hl]
    call nz, $1147
    dec bc
    ret nc

    ld a, [de]
    sub b
    sub $40
    ld b, a
    ld a, [$c486]
    add b
    cp $70
    ret nc

    ld [$c486], a
    ldh [$a8], a
    ret


Call_003_534f:
    ld hl, $c48a
    inc [hl]
    inc [hl]
    ld a, [hl]
    cp $17
    jr c, jr_003_535b

    ld [hl], $17

jr_003_535b:
    ld hl, $c48e
    dec [hl]
    dec [hl]
    ld a, [hl]
    cp $78
    ret nc

    ld [hl], $78
    ret


Call_003_5367:
    call Call_003_5380
    ld bc, $0506
    jr nz, jr_003_5372

    ld bc, $0000

jr_003_5372:
    ld hl, $cbbb
    ld a, [hl+]
    add b
    ld [$c48c], a
    ld a, [hl]
    add c
    ld [$c48d], a
    ret


Call_003_5380:
jr_003_5380:
    ld a, [$cbb6]
    dec a
    jr nz, jr_003_5394

    ld a, [$cbba]
    xor $01
    ld [$cbba], a
    ld a, $05
    jr z, jr_003_5394

    ld a, $22

jr_003_5394:
    ld [$cbb6], a
    ld a, [$cbba]
    or a
    ret


Call_003_539c:
    call $3554
    call $353c
    jp $1606


    ld h, $80
    add b
    ld b, b
    ld b, $80
    ld d, b
    ld b, d
    nop
    add b
    ld e, b
    ld b, h
    nop
    ld l, b
    ld b, b
    ld b, [hl]
    ld b, $b8
    dec a
    jr nz, jr_003_53bc

    cp b
    ld b, l

jr_003_53bc:
    ld [hl+], a
    ld [bc], a
    cp b
    ld c, l
    inc h
    ld [bc], a
    cp b
    ld d, l
    ld h, $02
    cp b
    ld e, l
    jr z, @+$04

    sub b
    jr z, @+$2e

    ld [bc], a
    sub b
    jr nc, @+$30

    ld [bc], a
    add b
    jr nc, @+$2c

    ld [bc], a
    jr nz, @+$7a

    ld c, b
    dec b
    ld e, b
    ld l, b
    nop

jr_003_53dd:
    ld [bc], a
    ld e, b
    ld [hl], b
    ld [bc], a
    ld [bc], a
    ld l, b
    ld l, b
    inc b

jr_003_53e5:
    ld [bc], a
    ld c, b
    ld [hl], b
    ld b, $02
    ld e, d
    ld b, b
    ld [$5a01], sp
    ld c, b
    ld a, [bc]
    ld bc, $505a
    inc c
    ld bc, $8838
    ld c, $04
    jr nc, jr_003_5474

    db $10
    inc b
    jr nc, jr_003_5380

    ld [de], a

jr_003_5401:
    inc b
    ld b, b
    add b
    inc d
    inc b
    ld d, b
    db $76
    ld d, $04
    ld d, b
    ld a, [hl]
    jr jr_003_5412

    ld b, c
    ld h, d
    ld a, [de]
    inc bc

jr_003_5412:
    add b
    jr z, jr_003_5431

    ld [bc], a
    xor b
    ld e, c
    ld e, $02
    sbc b
    jr nz, jr_003_544d

    ld [bc], a
    sbc b
    jr z, jr_003_5453

    ld [bc], a
    adc h
    jr c, jr_003_5459

    rlca
    xor b
    ld b, c
    ld [hl], $02
    xor b
    ld c, c
    jr c, jr_003_5430

    xor b
    ld d, c

jr_003_5430:
    ld a, [hl-]

jr_003_5431:
    ld [bc], a
    sub b
    ld b, b
    ld a, $07
    adc d
    ld e, h
    ld c, d
    nop
    adc d
    ld h, h
    ld c, h
    nop

jr_003_543e:
    dec d
    jr z, jr_003_54b9

    sbc h
    ld [$5820], sp
    add b
    ld [$6020], sp
    add d
    ld [$6820], sp

jr_003_544d:
    add h
    ld a, [bc]
    jr nz, jr_003_54c1

    ret nc

    add hl, bc

jr_003_5453:
    jr nz, jr_003_54c5

    add [hl]
    dec c
    jr nz, jr_003_54d1

jr_003_5459:
    adc b
    add hl, bc
    jr nz, jr_003_53dd

    adc d
    add hl, bc
    jr nc, jr_003_54b9

    sub b
    inc c
    jr nc, jr_003_53e5

    sbc [hl]
    add hl, bc
    ld c, [hl]
    ld h, b
    sub h
    inc c
    ld e, b
    ld l, b
    sub [hl]
    inc c
    ld l, b
    ld a, b
    sbc b
    add hl, bc
    ld h, b

jr_003_5474:
    add b
    sbc d
    ld a, [bc]
    jr nz, jr_003_5401

    adc h
    add hl, bc
    jr nz, @-$6e

    adc [hl]
    add hl, bc
    ld b, b
    ld [hl], d
    sub d
    ld c, $42
    ld h, d
    and b
    ld c, $70
    jr nc, jr_003_543e

    rrca
    ld [hl], b
    jr c, @-$48

    rrca
    ld a, b
    ld l, b
    cp b
    inc c
    dec b
    jr nc, jr_003_54be

    ld c, b
    ld [bc], a
    jr nc, jr_003_54ca

    ld c, d
    ld [bc], a
    jr jr_003_54d6

    ld c, h
    inc bc
    db $10
    ld b, b
    ld c, [hl]
    inc bc
    jr @+$4a

    ld d, b
    inc bc
    dec l
    nop
    nop
    stop
    ld b, b
    jr nc, jr_003_54b0

jr_003_54b0:
    nop
    jr nz, jr_003_54b3

jr_003_54b3:
    ld b, b
    jr jr_003_54b6

jr_003_54b6:
    nop
    jr nz, jr_003_54b9

jr_003_54b9:
    ld b, b
    jr nc, jr_003_54bc

jr_003_54bc:
    nop
    ld [hl+], a

jr_003_54be:
    nop
    ld b, b
    ld [hl], b

jr_003_54c1:
    nop
    nop
    dec b
    nop

jr_003_54c5:
    ld b, b
    jr nz, jr_003_54c8

jr_003_54c8:
    nop
    dec b

jr_003_54ca:
    nop
    ld b, b
    inc h
    nop
    nop
    dec b
    nop

jr_003_54d1:
    ld b, b
    inc h
    nop
    nop
    dec b

jr_003_54d6:
    nop
    ld b, b
    inc h
    nop
    nop
    inc c
    nop
    ld b, b
    rst $38
    rst $38
    inc a
    or h
    inc a
    ld d, b
    ld a, b
    or h
    inc a
    inc a
    inc a
    ld [hl], b
    ld a, b
    ld a, b
    ld hl, $cc03
    bit 0, [hl]
    jr nz, jr_003_54fc

    inc [hl]
    ld hl, $cbb3
    ld b, $10
    call $044b

jr_003_54fc:
    ld a, e
    rst $00
    rra
    ld d, l
    ld a, a
    ld e, [hl]
    xor l
    ld e, e

Call_003_5504:
Jump_003_5504:
    ld a, $02
    ldh [rSVBK], a
    ld hl, $df80
    ld b, $80
    call $044b
    xor a
    ldh [rSVBK], a
    dec a
    ldh [$a7], a
    ldh [$a5], a
    ld a, $fd
    ldh [$a6], a
    ldh [$a4], a
    ret


    ld de, $cbc1
    ld a, [de]
    rst $00
    jr z, jr_003_557b

    ld sp, $cd5a
    ld h, d
    ld a, [de]
    call Call_003_5534
    call $3382
    jp $1da5


Call_003_5534:
    ld de, $cbc2
    ld a, [de]
    rst $00
    adc c
    ld d, l
    rst $30
    ld d, l
    rrca
    ld d, [hl]
    jr @+$58

    ld a, [hl+]
    ld d, [hl]
    add hl, sp
    ld d, [hl]
    ld c, [hl]
    ld d, [hl]
    ld e, b
    ld d, [hl]
    or [hl]
    ld d, [hl]
    cp l
    ld d, [hl]
    rst $00
    ld d, [hl]
    db $f4
    ld d, [hl]
    inc de
    ld d, a
    jr z, @+$59

    dec sp
    ld d, a
    ld d, h
    ld d, a
    sbc c
    ld d, a
    or b
    ld d, a
    ret nz

    ld d, a
    ld [de], a
    ld e, b
    jr z, @+$5a

    ld a, $58
    ld b, l
    ld e, b
    ld d, e
    ld e, b
    adc c
    ld e, b
    xor a
    ld e, b
    pop bc
    ld e, b
    db $d3
    ld e, b
    db $f4
    ld e, b
    ld [$1759], sp
    ld e, c
    ld a, a
    ld e, c
    sbc a
    ld e, c

jr_003_557b:
    and a
    ld e, c
    or e
    ld e, c
    cp e
    ld e, c
    ret nz

    ld e, c
    call nc, $eb59
    ld e, c
    ld b, $5a
    ld a, [$c4ab]
    or a
    ret nz

    ld b, $20
    ld hl, $cfc0
    call $044b
    call $2dac
    xor a
    ld bc, $0790
    call Call_003_63d2
    ld a, $0d
    call $0c74
    call $2b57
    call $2b8a
    ld c, $00

Call_003_55ad:
Jump_003_55ad:
    call $3ac6
    jr nz, jr_003_55bc

    ld a, $a5
    ld [$cc1d], a
    ld [hl+], a
    ld [hl], c
    ld [$cc17], a

jr_003_55bc:
    ld a, c
    ld hl, $d000
    ld [hl], $03
    ld de, $55f3
    call $0072
    ld a, [de]
    inc de
    ld l, $0b
    ld [hl+], a
    inc l
    ld a, [de]
    ld [hl+], a
    ld l, $08
    ld [hl], $03
    ld a, c
    ld bc, $0050
    or a
    jr z, jr_003_55de

    ld bc, $3050

jr_003_55de:
    ld hl, $ffa8
    ld [hl], b
    ld hl, $ffaa
    ld [hl], c
    ld a, $80
    ld [$cca4], a
    ld a, $02
    call $02ea
    jp $3212


    sbc c
    ret z

    sbc c
    cp b
    ld hl, $ccef
    ld [hl], $ff
    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cfdf]
    or a
    ret z

    call $2dac
    ld bc, $3d00
    jp $184b


    call $1832
    call $2dac
    jp $313b


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    inc l
    ld [hl], $00
    jr jr_003_565d

    call Call_003_6462
    ret nz

    call $2dac
    ld a, $c1
    call $0c74
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    ld a, $00
    call Call_003_644c
    ld hl, $cbb3
    ld [hl], $3c
    jp $3171


    call Call_003_6462
    ret nz

    call $2dac
    jp $313b


    ld a, [$c4ab]
    or a
    ret nz

jr_003_565d:
    call $3554
    ld hl, $cbb3
    ld [hl], $3c
    inc l
    ld a, [hl]
    ld hl, $56ac
    rst JumpTable
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $03
    call Call_003_63d2
    call $3168
    ld hl, $cbb4
    ld a, [hl]
    ld b, a
    inc [hl]
    cp $04
    jr nc, jr_003_568e

    ld c, $04
    push bc
    ld a, $02
    call $02ea
    call $128c
    pop bc
    jr jr_003_56a5

jr_003_568e:
    ld hl, $cbb3
    ld [hl], $3c
    push bc
    ld c, $01
    call Call_003_55ad
    pop bc
    ld c, $08
    call $196b
    ld b, $ff
    jr z, jr_003_56a5

    ld c, $0d

jr_003_56a5:
    ld hl, $cbc2
    ld [hl], c
    jp Jump_003_6405


    rst $20
    nop
    ld d, h
    nop
    pop de
    nop
    ld e, [hl]
    nop
    sub b
    rlca
    ld e, $3c
    ld bc, $3d01
    jr jr_003_572d

    call Call_003_645a
    ret nz

    call $2dac
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $ff
    ld [$cd25], a
    call $02c1
    ld a, $2b
    call $0602
    ld a, $9d
    call $04e7
    call Call_003_539c
    call Call_003_5ab0
    ld a, $04
    call $02ea
    jp $3171


    call Call_003_5ab0
    call Call_003_6462
    ret nz

    call $2dac
    ld hl, $cc02
    ld [hl], $01
    ld hl, $cbb3
    ld [hl], $3c
    ld bc, $3d02

Call_003_570b:
    ld a, $01
    ld [$cbae], a
    jp $184b


    call Call_003_5ab0
    call Call_003_645a
    ret nz

    call Call_003_646a
    ld a, $01
    ld [$cbc1], a
    call $2372
    jp $3144


    ld e, $3c
    ld bc, $4f00

Jump_003_572d:
jr_003_572d:
    call Call_003_6462
    ret nz

    call $2dac
    ld a, e
    ld [$cbb3], a
    jp $184b


    call Call_003_645a
    ret nz

    xor a
    ld [$cbb3], a
    dec a
    ld [$cbba], a
    ld a, $d2
    call $0c74
    ld a, $f0
    call $0c74
    jp $2dac


    ld hl, $cbb3
    ld b, $02
    call $2cba
    ret z

    call $2dac
    xor a
    ld bc, $059a
    call Call_003_63d2
    ld a, $ac
    call $04e7
    call $1a66
    call Call_003_5504
    ld b, $06

jr_003_5774:
    call $3ac6
    jr nz, jr_003_5780

    ld [hl], $b0
    inc l
    dec b
    ld [hl], b
    jr nz, jr_003_5774

jr_003_5780:
    ld hl, $cbb3
    ld [hl], $1e
    ld a, $13
    call $02ea
    ld hl, $c486
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$aa], a
    ld a, $00
    ld [$cd00], a
    ret


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $28
    ld a, $04
    ld [$cbae], a
    ld bc, $4f01
    jp $184b


    call Call_003_645a
    ret nz

    call $2dac
    ld a, $20
    ld hl, $cbb3
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    call Call_003_6462
    ret nz

    ld hl, $cbb3
    ld [hl], $20
    inc hl
    ld a, [hl]
    cp $03
    jr nc, jr_003_57d8

    ld b, a
    push hl
    ld a, $72
    call $0c74
    pop hl
    ld a, b

jr_003_57d8:
    inc [hl]
    ld hl, $580c
    rst $10
    ld a, [hl]
    or a
    ld b, a
    jr nz, jr_003_57fa

    call $31be
    ld a, $01
    ld [$c4b2], a
    ld [$c4b4], a
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $21
    call $0c74
    jp $2dac


jr_003_57fa:
    call $31b5
    ld a, b
    ld [$c4b2], a
    ld [$c4b4], a
    xor a
    ld [$c4b1], a
    ld [$c4b3], a
    ret


    db $10
    ld b, b
    add b
    jr z, jr_003_5817

    nop
    ld e, $28
    ld bc, $4f02

jr_003_5817:
    call Call_003_581d
    jp Jump_003_572d


Call_003_581d:
    ld a, $08
    ld [$cbae], a
    ld a, $03
    ld [$cbac], a
    ret


    ld e, $28
    ld bc, $4f03

jr_003_582d:
    call Call_003_645a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], e
    call Call_003_581d
    jp $184b


    ld e, $3c
    ld bc, $4f04
    jr jr_003_582d

    ld e, $b4

Jump_003_5847:
    call Call_003_645a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], e
    ret


    ld hl, $c486
    ldh a, [$a8]
    ld [hl+], a
    ldh a, [$aa]
    ld [hl+], a
    ld hl, $5881
    ld de, $c486
    call Call_003_79cd
    inc de
    call Call_003_79cd
    call Call_003_5d00
    call $2da2
    ret nz

    dec a
    ld [$cbba], a
    ld a, $d2
    call $0c74
    ld a, $f0
    call $0c74
    jp $2dac


    rst $38
    ld bc, $0100
    nop
    nop
    rst $38
    nop
    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    call $3554
    call $047b
    call $1a6a
    xor a
    ld bc, $0790
    call Call_003_63d2
    ld c, $01
    jp Jump_003_55ad


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $1e
    ld bc, $3d17
    jp $184b


    call Call_003_645a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $1e
    ld bc, $4f09
    jp $184b


    call Call_003_645a
    ret nz

    call $2dac
    ld c, $40
    ld a, $29
    call $16eb
    ld a, $08
    call $2a16
    ld l, $02
    ld [hl], $07
    ld hl, $cbb3
    ld [hl], $5a
    ld a, $4a
    jp $0c74


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $b4
    ld bc, $90bd
    ld a, $ff
    jp $2934


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    jp $3144


    call Call_003_6462
    ret nz

    call $2dac
    call $02c1
    call $047b
    call $3554
    call $1606
    call $1a66
    ld a, $02
    ldh [rSVBK], a
    ld hl, $de90
    ld b, $08
    ld a, $ff
    call $044c
    xor a
    ldh [rSVBK], a
    ld a, $07
    ldh [$a4], a
    ld b, $02

jr_003_5944:
    call $3ac6
    jr nz, jr_003_5953

    ld [hl], $b0
    inc l
    ld a, $05
    add b
    ld [hl], a
    dec b
    jr nz, jr_003_5944

jr_003_5953:
    ld a, $02
    ld [$cbcb], a
    call Call_003_7a6b
    ld a, $02
    call Call_003_7a88
    ld hl, $cbb3
    ld [hl], $1e
    ld a, $04
    call $02ea
    ld a, $10
    ldh [$a8], a
    ld [$cd2d], a
    xor a
    ldh [$aa], a
    ld a, $00
    ld [$cd00], a
    ld bc, $4f05
    jp $184b


    call Call_003_645a
    ret nz

    call $2dac
    ld b, $02

Jump_003_5988:
    call $3171
    ld a, b
    ld [$c4b2], a
    ld [$c4b4], a
    xor a
    ld [$c4b1], a
    ld [$c4b3], a
    ld hl, $cbb3
    ld [hl], $3c
    ret


    ld e, $1e
    ld bc, $4f06
    jp Jump_003_572d


    call Call_003_645a
    ret nz

    call $2dac
    ld b, $14
    jp Jump_003_5988


    ld e, $1e
    ld bc, $4f07
    jp Jump_003_572d


    ld e, $3c
    jp Jump_003_5847


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $f0
    ld a, $ff
    ld bc, $4850
    jp $2934


    call $2da2
    ret nz

    ld hl, $cbb3
    ld [hl], $5a
    call $3144
    ld a, $fc
    ld [$c4b1], a
    ld [$c4b3], a
    jp $2dac


    call Call_003_6462
    ret nz

    call $2dac
    call $3554
    call $358a
    call $047b
    ld hl, $cbb3
    ld [hl], $3c
    ld bc, $4f08
    jp $1847


    ld a, [$cba0]
    rlca
    ret nc

    call $2da2
    ret nz

    call $1a6a
    xor a
    ld [$cbcb], a
    dec a
    ld [$cc51], a
    ld a, $f0
    call $0c74
    ld hl, $cc63
    ld a, $85
    ld [hl+], a
    ld a, $9d
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    ld a, $57
    ld [hl+], a
    ld [hl], $03
    ret


    call Call_003_5a37
    jp $3382


Call_003_5a37:
    ld de, $cbc2
    ld a, [de]
    rst $00
    ld d, b
    ld e, d
    ld a, l
    ld e, d
    adc d
    ld e, d
    cp h
    ld e, d
    jp nc, $e35a

    ld e, d
    rst $38
    ld e, d
    inc d
    ld e, e
    dec hl
    ld e, e
    add c
    ld e, e
    call Call_003_5ab0
    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    call $02c1
    call $047b
    ld a, $2c
    call $0602
    ld a, $9e
    call $04e7
    ld a, $04
    call $02ea
    ld a, $21
    call $0c74
    jp $3171


    ld a, $01
    ld [$cbae], a
    ld a, $3c
    ld bc, $3d03
    jp Jump_003_572d


    call Call_003_645a
    ret nz

    call $2dac
    ld hl, $cbb5
    ld [hl], $d0

jr_003_5a96:
    ld hl, $6472

jr_003_5a99:
    ld b, $30
    ld de, $cbb5
    ld a, [de]
    ld c, a
    jr jr_003_5ab6

Call_003_5aa2:
    ld hl, $4da3
    ld e, $15
    ld bc, $3038
    xor a
    ldh [$9d], a
    jp $2df5


Call_003_5ab0:
    ld hl, $65a4
    ld bc, $3038

jr_003_5ab6:
    xor a
    ldh [$9d], a
    jp $0d3d


    ld hl, $cbb5
    inc [hl]
    jr nz, jr_003_5a96

    call $047b
    ld a, $0a
    call $05b6
    ld hl, $cbb3
    ld [hl], $1e
    jp $2dac


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb5
    ld [hl], $d0

Call_003_5ade:
    ld hl, $650b
    jr jr_003_5a99

    call Call_003_5ade
    ld hl, $cbb5
    dec [hl]
    ld a, [hl]
    sub $a0
    ret nz

    ld [$cd08], a
    ld [$cd09], a
    ld a, $1e
    ld [$cbb3], a
    ld [$cbcb], a
    jp $2dac


    call Call_003_5ade
    call $2da2
    ret nz

    ld hl, $cbb3
    ld [hl], $14
    ld bc, $3d04
    call Call_003_570b
    jp $2dac


    call Call_003_5ade
    call Call_003_645a
    ret nz

    xor a
    ld [$cbcb], a
    dec a
    ld [$cbba], a
    ld a, $d2
    call $0c74
    jp $2dac


    call Call_003_5ade
    ld hl, $cbb3
    ld b, $02
    call $2cba
    ret z

    call $2dac
    ld hl, $cbb3
    ld [hl], $1e
    call $02c1
    call $047b
    xor a
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    call $0451
    xor a
    ldh [rVBK], a
    ld hl, $9c00
    ld bc, $0400
    call $0451
    ld a, $01
    ldh [rVBK], a
    ld hl, $9c00
    ld bc, $0400
    call $0451
    ld a, $2d
    call $0602
    ld a, $9c
    call $04e7
    ld a, $04
    call $02ea
    ld a, $d2
    call $0c74
    jp $3110


    call $2da2
    ret nz

    ld a, $0a
    ld [$c2ef], a
    call Call_003_646a
    ld hl, $cf00
    ld bc, $00c0
    call $0451
    ld hl, $ce00
    ld bc, $00c0
    call $0451
    ldh [$a8], a
    ldh [$aa], a
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $03
    jp $3183


    ld de, $cbc1
    ld a, [de]
    rst $00
    or [hl]
    ld e, e
    ld e, $5d
    call $1a62
    call Call_003_5bbf
    jp $3382


Call_003_5bbf:
    ld de, $cbc2
    ld a, [de]
    rst $00
    ldh [$5b], a
    add hl, bc
    ld e, h
    ld a, [de]
    ld e, h
    inc l
    ld e, h
    ld b, [hl]
    ld e, h
    ld e, d
    ld e, h
    ld l, c
    ld e, h
    ld a, l
    ld e, h
    adc a
    ld e, h
    and e
    ld e, h
    cp b
    ld e, h
    cp l
    ld e, h
    rst $10
    ld e, h
    jp hl


    ld e, h
    ld a, $01
    ld [de], a
    ld hl, $c6c5
    ld [hl], $ff
    xor a
    ldh [$ac], a
    ld de, $d000
    ld bc, $f8f0
    ld a, $28
    call $2727
    ld a, $28
    call $2727
    ld l, $4b
    ld [hl], $30
    inc l
    inc l
    ld [hl], $78
    ld hl, $cbb3
    ld [hl], $0a
    ret


    call $2da2
    ret nz

    ld hl, $cbb3
    ld [hl], $1e
    ld a, $f0
    call $0c74
    jp $2dac


    call Call_003_5cfb
    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $96
    jp Jump_003_5d0b


    call Call_003_5cfb
    call $2da2
    ret nz

    call $2dac
    ld a, $f1
    call $0c74
    ld hl, $cbb3
    ld [hl], $3c
    ld bc, $3d0e
    jp $184b


    call Call_003_645a
    ret nz

    call $2dac
    ld a, $21
    call $0c74
    ld hl, $cbb3
    ld [hl], $3c
    jp Jump_003_5d0b


    call Call_003_5cfb
    call $2da2
    ret nz

    ld hl, $cbb3
    ld [hl], $5a
    jp $2dac


    call Call_003_5cfb
    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $f1
    jp $0c74


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    ld bc, $3d0f
    jp $184b


    call Call_003_645a
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $2c
    inc hl
    ld [hl], $01
    ld b, $03
    jp Jump_003_5d12


    ld hl, $cbb3
    call $0237
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    ld bc, $3d10
    jp $184b


    ld e, $1e
    jp Jump_003_5847


    call Call_003_5cfb
    call $2da2
    ret nz

    call $2dac
    call Call_003_5d0b
    ld a, $8c
    ld [$cbb3], a
    ld a, $ff
    ld bc, $4478
    jp $2934


    call Call_003_5cfb
    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    jp Jump_003_5d0b


    call Call_003_5cfb
    call $2da2
    ret nz

    call $2da7
    inc l
    xor a
    ld [hl], a
    ld a, $03
    jp $312f


Call_003_5cfb:
    ld a, $04
    call $24a7

Call_003_5d00:
    ld a, [$cc00]
    and $0f
    ld a, $b8
    jp z, $0c74

    ret


Call_003_5d0b:
Jump_003_5d0b:
    call $3ea7
    ret nz

    ld [hl], $48
    ret


Jump_003_5d12:
    call $3ac6
    ret nz

    ld [hl], $48
    inc l
    ld [hl], $00
    inc l
    ld [hl], b
    ret


    call $1a62
    call Call_003_5d27
    jp $3382


Call_003_5d27:
    ld de, $cbc2
    ld a, [de]
    rst $00
    ld b, d
    ld e, l
    ld a, a
    ld e, l
    sub e
    ld e, l
    and d
    ld e, l
    cp l
    ld e, l
    db $d3
    ld e, l
    rst $20
    ld e, l
    nop
    ld e, [hl]
    ld c, $5e
    dec sp
    ld e, [hl]
    ld c, a
    ld e, [hl]
    call Call_003_5cfb
    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    xor a
    ld bc, $022b
    call Call_003_63d2
    call $1606
    ld b, $0c
    call $2dc5
    ld d, h
    ld e, l
    call $3048
    ld a, $04
    ld b, $02
    call Call_003_642e
    ld a, $f1
    call $0c74
    ld a, $fa
    call $0c74
    ld a, $02
    call $02ea
    ld hl, $cbb3
    ld [hl], $3c
    jp $3212


    call Call_003_6462
    ret nz

    call $2dac
    ld a, $3c
    ld [$cbb3], a
    ld a, $64
    ld bc, $5850
    jp $291f


    call $2da2
    ret nz

    xor a
    ld [$cbb3], a
    dec a
    ld [$cbba], a
    jp $2dac


    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    call $2dac
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $01
    ld [$cfc0], a
    ld a, $03
    jp $315c


    call Call_003_6462
    ret nz

    ld a, $01
    ld [$cc17], a
    ld a, $29
    call $0c74
    ld hl, $cbb3
    ld [hl], $3c
    jp $2dac


    call $2da2
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $2c
    inc hl
    ld [hl], $01
    ld b, $00
    jp Jump_003_5d12


    ld hl, $cbb3
    call $0237
    ret nz

    ld a, $01
    ld [$cc17], a
    ld hl, $cbb3
    ld [hl], $3c
    ld hl, $cfc0
    ld [hl], $02
    jp $2dac


    ld a, [$cfc0]
    cp $09
    ret nz

    call $2dac
    ld a, $03
    jp $312f


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    call $02c1
    call $3525
    call $1a66
    ld a, $3c
    call $0602
    ld a, $ad
    call $04e7
    ld hl, $cbb3
    ld [hl], $f0
    ld a, $04
    call $02ea
    call Call_003_5aa2
    ld a, $03
    jp $315c


    call Call_003_5aa2
    call Call_003_6462
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $10
    ld a, $03
    jp $3183


    call Call_003_5aa2
    call Call_003_6462
    ret nz

    ld a, $0a
    ld [$c2ef], a
    call Call_003_646a
    ld hl, $cf00
    ld bc, $00c0
    call $0451
    ld hl, $ce00
    ld bc, $00c0
    call $0451
    xor a
    ldh [$a8], a
    ldh [$aa], a
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $fb
    jp $0c74


    call Call_003_5e85
    jp $3460


Call_003_5e85:
    ld de, $cbc1
    ld a, [de]
    rst $00
    sub d
    ld e, [hl]
    db $f4
    ld e, [hl]
    ld l, l
    ld h, b
    ld a, [$1161]
    jp nz, $1acb

    rst $00
    sbc l
    ld e, [hl]
    cp h
    ld e, [hl]
    ret c

    ld e, [hl]
    call Call_003_6462
    ret nz

    call Call_003_66dc
    call $2dac
    call $047b
    ld hl, $cbb3
    ld [hl], $b4
    inc hl
    ld [hl], $00
    ld hl, $c485
    set 3, [hl]
    ld a, $2a
    jp $0c74


    ld hl, $cbb3
    call $0237
    ret nz

    call $2dac
    ld hl, $cbb3
    ld [hl], $48
    inc hl
    ld [hl], $03
    ld a, $04
    call $04e7
    ld a, $06
    jp $31a9


    ld hl, $cbb3
    call $0237
    ret nz

    call $2da7
    inc l
    ld [hl], a
    ld b, $04
    call $196b
    jr z, jr_003_5eed

    ld b, $08

jr_003_5eed:
    ld hl, $cbb4
    ld [hl], b
    jp $3144


    ld de, $cbc2
    ld a, [de]
    rst $00
    inc bc
    ld e, a
    or [hl]
    ld e, a
    bit 3, a
    ld de, $2d60
    ld h, b
    xor a
    ldh [$9d], a
    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $2dac
    call $3554
    call $047b
    ld a, $10
    ldh [$9d], a
    ld a, [$cbb4]
    sub $04
    ld hl, $5fa6
    rst JumpTable
    ld b, [hl]
    inc hl
    ld a, [hl]
    or a
    jr z, jr_003_5f3f

    ld c, a
    ld a, $00
    call $369b
    ld b, $2d
    ld a, [$cbb4]
    cp $04
    jr nz, jr_003_5f3b

    ld b, $0f

jr_003_5f3b:
    ld a, b
    call $05b6

jr_003_5f3f:
    ld a, [$cbb4]
    sub $04
    add a
    add $85
    call $0602
    ld a, $0f
    call $04e7
    call $161e
    call $196b
    jr nz, jr_003_5f68

    ld a, [$cbb4]
    ld b, $10
    ld c, $00
    cp $05
    jr nz, jr_003_5f77

    ld b, $50
    ld c, $0e
    jr jr_003_5f77

jr_003_5f68:
    ld a, [$cbb4]
    ld b, $10
    ld c, $00
    cp $0b
    jr nz, jr_003_5f77

    ld b, $ae
    ld c, $ff

jr_003_5f77:
    ld a, b
    push bc
    call $04e7
    pop bc
    ld a, c
    ld [$cd25], a
    call $3600
    ld a, $01
    ld [$cd00], a
    xor a
    ldh [$aa], a
    ld b, $20
    ld hl, $cfc0
    call $044b
    ld hl, $cbb3
    ld [hl], $f0
    inc l
    ld b, [hl]
    call Call_003_6405
    ld a, $04
    call $02ea
    jp $3171


    nop
    add $01
    dec hl
    nop
    or [hl]
    nop
    sub $00
    nop
    ld bc, $002b
    nop
    nop
    nop
    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cfdf]
    or a
    ret z

    call $2dac
    ld a, $ff
    ld [$cd25], a
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    call $02c1
    call $3519
    ld a, [$cbb4]
    sub $04
    add a
    add $86
    call $0602
    ld hl, $cbb3
    ld [hl], $5a
    inc l
    ld a, [hl]
    add $9d
    call $04e7
    ld a, $04
    call $02ea
    ld a, [$cbb4]
    sub $04
    ld hl, $6009
    rst $10
    ld a, [hl]
    ld [$c487], a
    ld a, $10
    ldh [$aa], a
    jp $3171


    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    ld a, [$c4ab]
    or a
    ret nz

    call $2da2
    ret nz

    call $2dac
    call $3ac6
    ret nz

    ld [hl], $ae
    inc l
    ld a, [$cbb4]
    sub $04
    ld [hl+], a
    ld [hl], $00
    ret


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    ldh [$9d], a
    ld a, [$cfde]
    or a
    ret z

    ld b, $07
    call $196b
    jr z, jr_003_6043

    ld b, $0b

jr_003_6043:
    ld hl, $cbb4
    ld a, [hl]
    cp b
    jr nc, jr_003_6051

    inc [hl]
    xor a
    ld [$cbc2], a
    jr jr_003_606a

jr_003_6051:
    call Call_003_646a
    call $237a
    ld a, $02
    ld [$cbc1], a
    ld hl, $c6a3
    ld a, [hl-]
    ld [hl], a
    xor a
    ld l, $80
    ld [hl+], a
    ld [hl], a
    ld l, $c5
    ld [hl], $ff

jr_003_606a:
    jp $3144


    xor a
    ldh [$9d], a
    ld de, $cbc2
    ld a, [de]
    rst $00
    add a
    ld h, b
    cp l
    ld h, b
    call $0e60
    ld h, c
    ld a, [hl+]
    ld h, c
    ld [hl], $61
    xor c
    ld h, c
    cp b
    ld h, c
    and $61
    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    call $02c1
    call $3554
    call $047b
    xor a
    ld [$cfde], a
    ld a, $95
    call $0602
    ld a, $a0
    call $04e7
    ld a, $09
    call $02ea
    call $3171
    call $3ac6
    ret nz

    ld [hl], $af
    ld l, $4b
    ld [hl], $e8
    inc l
    inc l
    ld [hl], $50
    ret


    ld a, [$cfde]
    or a
    ret z

    ld hl, $cbb3
    ld [hl], $e0
    inc hl
    ld [hl], $01
    jp $2dac


    ld hl, $cbb3
    call $0237
    ret nz

    call $196b
    jr nz, jr_003_60e6

    call Call_003_646a
    ld a, $03
    ld [$cbc1], a
    ld a, $04
    jp $312f


jr_003_60e6:
    ld a, $04
    ld [$cbb3], a
    ld a, [$c486]
    ldh [$a8], a
    ld a, $01
    call $05b6
    ld a, $0b
    call $04e7
    ld b, $03

jr_003_60fc:
    call $3ac6
    jr nz, jr_003_610b

    ld [hl], $4a
    inc l
    ld [hl], $09
    inc l
    dec b
    ld [hl], b
    jr nz, jr_003_60fc

jr_003_610b:
    jp $2dac


    ld a, [$c486]
    or a
    jr nz, jr_003_611c

    ld a, $78
    ld [$cbb3], a
    jp $2dac


jr_003_611c:
    call $2da2
    ret nz

    ld [hl], $04
    ld hl, $c486
    dec [hl]
    ld a, [hl]
    ldh [$a8], a
    ret


    call $2da2
    ret nz

    ld a, $ff
    ld [$cbba], a
    jp $2dac


    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    call $02c1
    ld a, $9a
    call $0602
    ld a, $9f
    call $04e7
    call $3554
    ld b, $03

jr_003_6151:
    call $3ac6
    jr nz, jr_003_615d

    ld [hl], $cf
    inc l
    dec b
    ld [hl], b
    jr nz, jr_003_6151

jr_003_615d:
    ld a, $04
    call $02ea
    ld a, $04
    call $315c
    call $2dac
    ld a, $f0
    ld [$cbb3], a

Call_003_616f:
Jump_003_616f:
    xor a
    ldh [$9d], a
    ld a, [$c486]
    cp $60
    jr nc, jr_003_618a

    cpl
    inc a
    ld b, a
    ld a, [$cc00]
    and $01
    jr nz, jr_003_618a

    ld c, a
    ld hl, $6641
    call $0d3d

jr_003_618a:
    ld a, [$c486]
    cpl
    inc a
    ld b, $c7
    add b
    ld b, a
    ld c, $38
    ld hl, $668a
    push bc
    call $0d3d
    pop bc
    ld a, [$c486]
    cp $60
    ret c

    ld hl, $66bf
    jp $0d3d


    call Call_003_616f
    call Call_003_6462
    ret nz

    ld a, $04
    ld [$cbb3], a
    jp $2dac


    ld a, [$c486]
    cp $98
    jr nz, jr_003_61c9

    ld a, $f0
    ld [$cbb3], a
    call $2dac
    jr jr_003_61e3

jr_003_61c9:
    call $2da2
    jr nz, jr_003_61e3

    ld [hl], $04
    ld hl, $c486
    inc [hl]
    ld a, [hl]
    ldh [$a8], a
    cp $60
    jr nz, jr_003_61e3

    call $3554
    ld a, $2c
    call $05b6

jr_003_61e3:
    jp Jump_003_616f


    call Call_003_616f
    call $2da2
    ret nz

    call Call_003_646a
    ld a, $03
    ld [$cbc1], a
    ld a, $04
    jp $312f


    ld de, $cbc2
    ld a, [de]
    rst $00
    rla
    ld h, d
    ld [hl], b
    ld h, d
    sbc h
    ld h, d
    and [hl]
    ld h, d
    cp l
    ld h, d
    rla
    ld h, e
    ld l, $63
    ld c, b
    ld h, e
    ld l, b
    ld h, e
    sub c
    ld h, e
    xor a
    ld h, e
    rst $00
    ld h, e
    call $196b
    call nz, Call_003_616f
    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $2dac
    call Call_003_66ed
    call $3554
    call $047b
    call $196b
    jp z, Jump_003_6249

    ld a, $99
    call $0602
    ld a, $aa
    call $04e7
    ld hl, $5887
    call $3048
    jr jr_003_6253

Jump_003_6249:
    ld a, $98
    call $0602
    ld a, $a9
    call $04e7

jr_003_6253:
    ld a, $04
    call $02ea
    xor a
    ld hl, $ffa8
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $cbb3
    ld [hl], $f0
    ld [hl], a
    ld a, $fb
    call $0c74
    ld a, $04
    jp $315c


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac

Call_003_6278:
    call $196b
    ret z

    ld hl, $cbb4
    ld a, [hl]
    or a
    jr z, jr_003_6285

    dec [hl]
    ret


jr_003_6285:
    ld a, $aa
    call $0c74
    call $042f
    and $03
    ld hl, $6298
    rst $10
    ld a, [hl]
    ld [$cbb4], a
    ret


    and b
    ret z

    db $10
    ldh a, [$cd]
    ld a, b
    ld h, d
    call $2da2
    ret nz

    call $2dac
    call Call_003_6278
    ld hl, $c612
    ld a, [hl+]
    add [hl]
    cp $02
    ret z

    ld a, [$c482]
    and $0b
    ret z

    call $2dac
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    call $2dac
    call $02c1
    call Call_003_481b
    ld a, $ff
    ld [$cbba], a
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    ld hl, $d460
    ld de, $d800
    ld bc, $1800

jr_003_62e0:
    ld a, [hl+]
    call $19a5
    dec b
    jr nz, jr_003_62e0

    pop af
    ldh [rSVBK], a
    ld a, $97
    call $0602
    ld a, $2b
    call $05b6
    ld a, $05
    call $04e7
    call $196b
    ld a, $84
    call nz, $0602

Call_003_6301:
    call $3554
    call $047b
    ld a, $04
    call $02ea
    ld hl, $cbb3
    ld [hl], $3c
    call $2dde
    jp $3171


    call $2dde
    call Call_003_6462
    ret nz

    ld hl, $cbb3
    ld b, $3c
    call $196b
    jr z, jr_003_632a

    ld b, $b4

jr_003_632a:
    ld [hl], b
    jp $2dac


    call $2dde
    call $2da2
    ret nz

    call $196b
    jr nz, jr_003_6345

    call $3ac6
    jr nz, jr_003_6345

    ld [hl], $d1
    xor a
    ld [$cfde], a

jr_003_6345:
    jp $2dac


    call $2dde
    call $196b
    jr z, jr_003_6358

    ld a, [$c482]
    and $01
    jr nz, jr_003_635d

    ret


jr_003_6358:
    ld a, [$cfde]
    or a
    ret z

jr_003_635d:
    call $2dac
    ld a, $fa
    call $0c74
    jp $3144


    call $2dde
    ld a, [$c4ab]
    or a
    ret nz

    call $196b
    jp nz, $0169

    call $02c1
    call $047b
    call $2dac
    ld a, $82
    call $0602
    ld a, $8f
    call $04e7
    call $3171
    ld a, $04
    jp $02ea


    call Call_003_63a1
    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cbb3
    ld [hl], $b4
    jp $2dac


Call_003_63a1:
    ld hl, $4e0c
    ld e, $15
    ld bc, $3038
    xor a
    ldh [$9d], a
    jp $2df5


    call Call_003_63a1
    ld hl, $cbb3
    ld a, [hl]
    or a
    jr z, jr_003_63bb

    dec [hl]
    ret


jr_003_63bb:
    ld a, [$c482]
    and $01
    ret z

    call $2dac
    jp $3144


    call Call_003_63a1
    ld a, [$c4ab]
    or a
    ret nz

    jp $0169


Call_003_63d2:
    ld [$cc4e], a
    ld a, b
    ld [$cc49], a
    ld a, c
    ld [$cc4c], a
    call $02c1
    call $3525
    ld hl, $cc77
    ld b, $88
    call $044b

Call_003_63eb:
    call $04a9
    call $32dc
    call $381a
    call $3737
    call $12dd
    ld a, $01
    ld [$cd00], a
    call $1a5e
    jp $047b


Call_003_6405:
Jump_003_6405:
    ld a, b
    cp $ff
    ret z

    push bc
    call $1606
    pop bc
    call $2dc5
    ld d, h
    ld e, l
    call $3048
    xor a
    ld [$cfc0], a
    ld a, [$cbb4]
    cp $05
    jr z, jr_003_642a

    cp $06
    jr z, jr_003_6440

    cp $07
    jr z, jr_003_6446

    ret


jr_003_642a:
    ld a, $04
    ld b, $03

Call_003_642e:
jr_003_642e:
    call Call_003_6434
    jp $161e


Call_003_6434:
    ld hl, $cc07

jr_003_6437:
    ld [hl+], a
    inc a
    ld [hl], $01
    inc l
    dec b
    jr nz, jr_003_6437

    ret


jr_003_6440:
    ld a, $0f
    ld b, $06
    jr jr_003_642e

jr_003_6446:
    ld a, $13
    ld b, $02
    jr jr_003_642e

Call_003_644c:
    ld [$cc4e], a
    call $02c1
    call Call_003_63eb
    ld a, $02
    jp $02ea


Call_003_645a:
    ld a, [$cba0]
    or a
    ret nz

    jp $2da2


Call_003_6462:
    ld a, [$c4ab]
    or a
    ret nz

    jp $2da2


Call_003_646a:
    ld hl, $cbb3
    ld b, $10
    jp $044b


    ld h, $e0
    db $10
    ld [bc], a
    ld bc, $18e0
    inc b
    ld bc, $20e0
    ld b, $01
    ldh [$28], a
    ld [$f001], sp
    ld [$0114], sp
    ldh a, [rNR10]
    ld d, $01
    ldh a, [rNR23]
    jr @+$03

    ldh a, [rNR41]
    ld a, [de]
    ld bc, $28f0
    inc e
    ld bc, $0800
    jr z, jr_003_649c

    nop

jr_003_649c:
    db $10
    ld a, [hl+]
    ld bc, $1800
    inc l
    ld bc, $2000
    ld l, $01
    nop
    jr z, @+$32

    ld bc, $0810
    ld a, [hl-]
    ld bc, $1010
    inc a
    ld bc, $1810
    ld a, $01
    db $10
    jr nz, jr_003_64fa

    ld bc, $2810
    ld b, d
    ld bc, $0820
    nop
    ld bc, $1020
    ld a, [bc]
    ld bc, $1820
    inc c
    ld bc, $2020
    ld c, $01
    jr nz, jr_003_64f9

    db $10
    ld bc, $0830
    ld e, $01
    jr nc, @+$12

    jr nz, @+$03

    jr nc, @+$1a

    ld [hl+], a
    ld bc, $2030
    inc h
    ld bc, $2830
    ld h, $01
    ld b, b
    ld [$0132], sp
    ld b, b
    db $10
    inc [hl]
    ld bc, $1840
    ld [hl], $01
    ld d, b
    ld [HeaderNewLicenseeCode], sp
    ld d, b
    db $10

jr_003_64f9:
    ld b, [hl]

jr_003_64fa:
    ld bc, $1850
    ld c, b
    ld bc, $2040
    jr c, jr_003_6504

    ld h, b

jr_003_6504:
    ld [$0100], sp
    ld h, b
    db $10
    ld [de], a
    ld bc, $e026
    ld hl, sp+$02
    ld hl, $f0e0
    inc b
    ld hl, $e8e0
    ld b, $21
    ldh [$e0], a
    ld [$f021], sp
    nop
    inc d
    ld hl, $f8f0
    ld d, $21
    ldh a, [$f0]
    jr @+$23

    ldh a, [$e8]
    ld a, [de]
    ld hl, $e0f0
    inc e
    ld hl, $0000
    jr z, @+$23

    nop
    ld hl, sp+$2a
    ld hl, $f000
    inc l
    ld hl, $e800
    ld l, $21
    nop
    ldh [$30], a
    ld hl, $0010
    ld a, [hl-]
    ld hl, $f810

jr_003_654a:
    inc a
    ld hl, $f010
    ld a, $21
    db $10
    add sp, $40
    ld hl, $e010
    ld b, d
    ld hl, $0020
    nop
    ld hl, $f820
    ld a, [bc]
    ld hl, $f020
    inc c
    ld hl, $e820

jr_003_6566:
    ld c, $21
    jr nz, jr_003_654a

jr_003_656a:
    db $10
    ld hl, $0030
    ld e, $21
    jr nc, jr_003_656a

    jr nz, @+$23

    jr nc, jr_003_6566

    ld [hl+], a
    ld hl, $e830
    inc h
    ld hl, $e030
    ld h, $21
    ld b, b
    nop
    ld [hl-], a
    ld hl, $f840
    inc [hl]
    ld hl, $f040
    ld [hl], $21
    ld d, b
    nop
    ld b, h
    ld hl, $f850
    ld b, [hl]
    ld hl, $f050
    ld c, b
    ld hl, $e840
    jr c, @+$23

    ld h, b
    nop
    nop
    ld hl, $f860
    ld [de], a
    ld hl, $e027
    add sp, $00
    ld bc, $f0e0
    ld [bc], a
    ld bc, $f8e0
    inc b
    ld bc, $e0f0
    db $10
    ld bc, $e8f0
    ld [de], a
    ld bc, $f0f0
    inc d
    ld bc, $e000
    ld l, $01
    nop
    add sp, $30
    ld bc, $e820
    ld [hl-], a
    ld bc, $f020
    inc [hl]
    ld bc, $f820
    ld [hl], $01
    nop
    jr jr_003_660c

    ld [bc], a
    nop
    jr nz, jr_003_6612

    ld [bc], a
    db $10
    jr @+$3e

    ld [bc], a
    db $10
    jr nz, jr_003_661e

    ld [bc], a
    ld h, b
    ld a, [$0140]
    ld h, b
    ld [bc], a
    ld b, d
    ld bc, $1960
    ld b, h
    ld bc, $2160
    ld b, [hl]
    inc bc
    ld d, b
    jr jr_003_663c

    ld bc, $2050
    ld c, d
    inc bc
    ld b, b
    jr jr_003_6648

    inc bc
    ld c, b
    db $10
    inc l
    ld bc, $2960
    ld d, $04
    ld b, b
    jr nz, jr_003_6620

    inc b
    ld b, b
    jr z, jr_003_6626

jr_003_660c:
    inc b
    ld d, b
    jr z, jr_003_662c

    inc b
    ld d, b

jr_003_6612:
    ld e, b
    ld e, $04
    ld d, b
    ld h, b
    jr nz, jr_003_661d

    ld d, b
    ld l, b
    ld [hl+], a
    inc b

jr_003_661d:
    ld b, b

jr_003_661e:
    ld h, b
    inc h

jr_003_6620:
    inc b
    ld h, b
    ld e, b
    ld h, $04
    ld h, b

jr_003_6626:
    ld h, b
    jr z, jr_003_662d

    ld h, b
    ld l, b
    ld a, [hl+]

jr_003_662c:
    inc b

jr_003_662d:
    jr @+$3a

    ld b, $05
    jr jr_003_667b

    ld [$0805], sp
    jr nc, jr_003_6642

    ld b, $00
    jr c, jr_003_6648

jr_003_663c:
    ld b, $00
    ld b, b
    ld c, $06
    ld [de], a

jr_003_6642:
    db $10
    ld [$0c00], sp
    db $10
    db $10

jr_003_6648:
    ld [bc], a
    inc c
    db $10
    jr jr_003_6651

    inc c
    jr nz, jr_003_6658

    inc c

jr_003_6651:
    inc c
    jr nz, @+$12

    ld c, $0c
    jr nz, jr_003_6670

jr_003_6658:
    db $10
    inc c
    ld sp, $0623
    dec c
    ld sp, $082b
    dec c
    ld sp, $063b
    dec l
    ld sp, $0833
    dec l
    ld b, c
    inc hl
    ld b, $4d
    ld b, c
    dec hl

jr_003_6670:
    ld [$414d], sp
    dec sp
    ld b, $6d
    ld b, c
    inc sp
    ld [$2c6d], sp

jr_003_667b:
    dec e
    ld a, [bc]
    dec c
    inc l
    dec h
    ld a, [bc]
    dec l
    ld c, h
    ld a, [hl-]
    ld a, [bc]
    dec c
    ld c, h
    ld b, d
    ld a, [bc]
    dec l
    dec c
    jr c, @-$2b

    ld [bc], a
    inc bc
    ld [hl-], a
    ld hl, sp+$0c
    ld bc, $d8f8
    db $10
    rlca
    ld hl, sp-$20
    ld [de], a
    rlca
    ld hl, sp-$18
    inc d
    rlca
    rst $30
    rst $30
    ld d, $07
    ld [hl+], a
    ld hl, sp+$1a
    inc bc
    ld a, [de]
    nop
    inc e
    inc bc
    ld de, $1ee2
    nop
    ld de, $20ea
    nop
    ld bc, $22ea
    nop
    ld de, $26f2
    nop
    ld bc, $24f2
    nop
    rlca
    ld h, b
    ld hl, sp+$00
    ld [bc], a
    ld c, b
    db $d3
    inc b
    inc bc
    ld b, b
    ldh [rTMA], a
    rlca
    ld b, b
    add sp, $08
    rlca
    ld b, b
    ldh a, [$0a]
    rlca
    ld b, d
    ld hl, sp+$0e
    ld bc, $e068
    jr @+$04

Call_003_66dc:
    ld hl, $c6a2
    ld [hl], $04
    ld l, $80
    ld a, [hl+]
    ld b, [hl]
    ld hl, $cc3b
    ld [hl+], a
    ld [hl], b
    jp $2372


Call_003_66ed:
    ld hl, $c6a3
    ld a, [hl-]
    ld [hl], a
    ld hl, $cc3b
    ld a, [hl+]
    ld b, [hl]
    ld hl, $c680
    ld [hl+], a
    ld [hl], b
    jp $237a


    ld a, [$cc03]
    rst $00
    rrca
    ld h, a
    ld [hl-], a
    ld h, a
    add d
    ld l, b
    call nc, $e368
    ld l, c
    ld [$066a], sp
    db $10
    ld hl, $cbb3
    call $044b
    call $3519
    xor a
    ld [$cca4], a
    ld [$cd00], a
    ld a, [$c48c]
    ld [$cbba], a
    ld a, $80
    ld [$cc02], a
    ld a, $01
    ld [$cc03], a
    ret


    call Call_003_6b6c
    ld a, [$cc00]
    and $07
    ret nz

    ld a, [$cbb3]
    rst $00
    ld c, e
    ld h, a
    adc l
    ld h, a
    sbc [hl]
    ld h, a
    xor a
    ld h, a
    jp nz, $d267

    ld h, a
    call Call_003_6815
    ld a, $08
    ld [$cbb8], a
    ld a, $04
    ld [$cbb4], a
    ld a, $51
    call $0602
    ld a, $54
    call $0602
    ld a, $04
    ldh [$9b], a
    call Call_003_681a
    jp Jump_003_67f8


Call_003_676c:
    ld hl, $677e
    ld d, $0f

jr_003_6771:
    ld a, [hl+]
    ld c, a
    ld a, $0f
    push hl
    call $3a52
    pop hl
    dec d
    jr nz, jr_003_6771

    ret


    inc b
    dec b
    ld b, $07
    ld [$1514], sp
    ld d, $17
    jr @+$26

    dec h
    ld h, $27
    jr z, jr_003_67af

    or h
    swap l
    ret nz

    ld bc, $4e00
    call $184b
    call Call_003_676c
    jp Jump_003_6815


    call $1832
    ld hl, $7dd9
    call $3048
    ld a, $20
    call $0c74
    jp Jump_003_6815


jr_003_67af:
    call Call_003_6b77
    ld a, [hl]
    cp $10
    jr c, jr_003_67bf

    call Call_003_681a
    jr nz, jr_003_67bf

    call Call_003_6815

jr_003_67bf:
    jp Jump_003_67f8


    call Call_003_6b77
    ld a, [hl]
    cp $30
    jr c, jr_003_67f8

    call $3144
    call Call_003_6815
    jr jr_003_67f8

    call Call_003_6b77
    ld a, [$c4ab]
    or a
    jr nz, jr_003_67f8

    ld a, $c7
    ld [$c488], a
    ld [$c48e], a
    ld a, $03
    ldh [$9b], a
    ld a, $02

Call_003_67e9:
    ld [$cc03], a
    xor a
    ld [$cfc0], a
    ld b, $10
    ld hl, $cbb3
    jp $044b


Jump_003_67f8:
jr_003_67f8:
    ld a, $40
    ld [$c490], a
    ld a, $47
    ld [$c48f], a
    ld a, $a5
    ld [$c489], a
    ld a, [$cbb8]
    ld [$c48e], a
    ld [$c488], a
    ld [$cbbc], a
    jr jr_003_684c

Call_003_6815:
Jump_003_6815:
    ld hl, $cbb3
    inc [hl]
    ret


Call_003_681a:
    ld a, [$cbb7]
    ld hl, $6844
    rst $10
    ld a, [hl]
    cp $ff
    ret z

    ld l, a
    ld h, $d0
    push hl
    ld de, $9c00
    ld bc, $0f02
    call $0566
    pop hl
    set 2, h
    ld e, $01
    call $0566
    ld a, $08
    ld [$cbb8], a
    ld hl, $cbb7
    inc [hl]
    ret


    ret nz

    and b
    add b
    ld h, b
    ld b, b
    jr nz, jr_003_684b

jr_003_684b:
    rst $38

jr_003_684c:
    ld a, $02
    ldh [rSVBK], a
    ld a, [$cbb8]
    and $07
    ld hl, $d800
    rst JumpTable
    ld de, $d9e0
    ld b, $10
    call $0462
    ld a, [$cbb8]
    and $07
    ld hl, $d820
    rst JumpTable
    ld de, $d9f0
    ld b, $10
    call $0462
    ld a, $00
    ldh [rSVBK], a
    ld hl, $d9e0
    ld de, $94e1
    ld bc, $0102
    jp $0566


    ld a, [$cbb3]
    rst $00
    cp l
    ld l, b
    bit 5, b
    call z, $cd68
    pop bc
    ld [bc], a
    call $3525
    call Call_003_6815
    ld bc, $05d4
    call Call_003_691f
    ld hl, $d000
    ld [hl], $03
    ld l, $0b
    ld [hl], $58
    ld l, $0d
    ld [hl], $70
    ld l, $08
    ld [hl], $02
    xor a
    ld [$cc6a], a
    ld a, $01
    ld [$ccae], a
    call $128c
    ld a, $02
    jp Jump_003_6933


    ld a, [$c4ab]
    or a
    ret nz

    call $688c
    ld hl, $7e14
    jp $3048


    ret


    ld a, $03
    call Call_003_67e9
    jp $3144


    ld a, [$cbb3]
    rst $00
    ld [c], a
    ld l, b
    ld [hl], h
    ld l, c
    add a
    ld l, c
    sub d
    ld l, c
    xor l
    ld l, c
    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $3525
    call Call_003_6815
    ld a, $40
    ld [$cbb8], a
    ld [$cbbf], a
    ld a, $1e
    ld [$cbb4], a
    ld a, $01
    ld [$cc4e], a
    ld bc, $00fe
    call Call_003_691f
    call Call_003_6943
    ld e, $0c
    call $1632
    ld a, $52
    call $0602
    ld hl, $7df0
    call $3048
    ld a, $11
    jr jr_003_6933

Call_003_691f:
jr_003_691f:
    ld a, b
    ld [$cc49], a
    ld a, c
    ld [$cc4c], a
    call $32dc
    call $381a
    call $3737
    jp $12dd


Jump_003_6933:
jr_003_6933:
    push af
    ld a, $01
    ld [$cd00], a
    call $3171
    call $1a5e
    pop af
    jp $02ea


Call_003_6943:
    ld hl, $6953

jr_003_6946:
    ld a, [hl+]
    cp $ff
    ret z

    ld c, a
    ld a, [hl+]
    push hl
    call $3a52
    pop hl
    jr jr_003_6946

    dec b
    xor l
    ld b, $ad
    ld [$09ae], sp
    xor [hl]
    dec d
    xor l
    ld d, $ad
    jr @-$50

    add hl, de
    xor [hl]
    dec h
    xor l
    ld h, $ad
    jr z, @-$50

    add hl, hl
    xor [hl]

Jump_003_696b:
    dec [hl]
    xor l
    ld [hl], $ad
    jr c, jr_003_691f

    add hl, sp
    xor [hl]
    rst $38
    ld hl, $cbb4
    dec [hl]
    ret nz

    call Call_003_6815
    xor a
    ldh [$a8], a
    ldh [$aa], a
    ld bc, $4e09
    jp $184b


    call $1832
    ld a, $ff
    ld [$cfc0], a
    jp Jump_003_6815


    ld a, [$cc00]
    and $07
    ret nz

    call Call_003_6b77
    ld a, [hl]
    cp $70
    jr c, jr_003_69d1

    call $3144
    ld a, $fb
    call $0c74
    call Call_003_6815
    jr jr_003_69d1

    ld a, [$cc00]
    and $07
    ret nz

    call Call_003_6b77
    ld a, [$c4ab]
    or a
    jr nz, jr_003_69d1

    ld a, $c7
    ld [$c488], a
    ld [$c48e], a
    ld a, $04
    ld [$cc03], a
    ld b, $10
    ld hl, $cbb3
    jp $044b


Call_003_69d1:
jr_003_69d1:
    ld a, $a5
    ld [$c489], a
    ld a, [$cbb8]
    ld [$c48e], a
    ld [$c488], a
    ld [$cbbc], a
    ret


    ld a, [$cbb3]
    rst $00
    db $ed
    ld l, c
    rst $38
    ld l, c
    nop
    ld l, d
    ld a, [$c4ab]
    or a
    ret nz

    call $688c
    xor a
    ld [$cfc0], a
    ld hl, $7e2e
    jp $3048


    ret


    ld a, $05
    call Call_003_67e9
    jp $3144


    call Call_003_6b6c
    ld a, [$cbb3]
    rst $00
    dec d
    ld l, d
    ld e, d
    ld l, d
    ld [hl], l
    ld l, d
    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $3525
    call Call_003_6815
    ld a, $90
    ld [$cbb8], a
    ld [$cbbf], a
    ld a, $10
    ld [$cbbd], a
    ld a, $03
    ld [$cc4e], a
    ld bc, $00f2
    call Call_003_691f
    ld a, $ff
    ld [$cd25], a
    ld e, $00
    call $1632
    ld a, $53
    call $0602
    ld a, $54
    call $0602
    ld hl, $7dfa
    call $3048
    ld a, $12
    jp Jump_003_6933


    ld a, [$cc00]
    and $03
    jr nz, jr_003_6a70

    call Call_003_6b80
    ld a, [hl]
    cp $09
    jp nc, Jump_003_6a70

    call Call_003_6b30
    call Call_003_6815

Jump_003_6a70:
jr_003_6a70:
    call Call_003_69d1
    jr jr_003_6aca

    ld a, [$cc00]
    and $07
    jr nz, jr_003_6a70

    call Call_003_6b80
    ld a, [hl]
    cp $09
    jr nc, jr_003_6a70

    call Call_003_6b30
    jr nz, jr_003_6a70

    ld a, $17
    call $30cd
    xor a
    ld [$cc51], a
    ld hl, $6a98
    jp $1970


    add b
    ld [c], a
    rrca
    ld h, [hl]
    inc bc

jr_003_6a9d:
    ld a, $02
    ldh [rSVBK], a
    ld a, [$cbbe]
    dec a
    and $03
    ld hl, $6b1a
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cbb8]
    and $07
    rst JumpTable
    ld de, $d9e0
    call Call_003_6b22
    ld a, $00
    ldh [rSVBK], a
    ld hl, $d9e0
    ld de, $8ce0
    ld bc, $0102
    jp $0566


jr_003_6aca:
    ld hl, $cbbd
    dec [hl]
    jr nz, jr_003_6a9d

    ld [hl], $10
    ld a, $02
    ldh [rSVBK], a
    ld a, [$cbbe]
    ld hl, $6b1a
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d9c0
    push hl
    call Call_003_6b22
    pop hl
    ld a, [$cbb8]
    and $07
    rst JumpTable
    ld de, $d9e0
    call Call_003_6b22
    ld a, $00
    ldh [rSVBK], a
    ld hl, $d9c0
    ld de, $88e1
    ld bc, $0102
    call $0566
    ld hl, $d9e0
    ld de, $8ce0
    ld bc, $0102
    call $0566
    ld a, [$cbbe]
    inc a
    and $03
    ld [$cbbe], a
    ret


    ld b, b
    ret c

    add b
    ret c

    ret nz

    ret c

    nop
    reti


Call_003_6b22:
    ld b, $10
    call $0462
    ld bc, $0010
    add hl, bc

jr_003_6b2b:
    ld b, $10
    jp $0462


Call_003_6b30:
    ld a, [$cbb7]
    ld hl, $6b59
    rst JumpTable
    ld a, [hl+]
    cp $ff
    ret z

    ld h, [hl]

jr_003_6b3c:
    ld l, a
    push hl
    ld de, $9c00
    ld bc, $2102
    call $0566
    pop hl
    set 2, h
    ld e, $01
    call $0566
    ld a, $10
    ld [$cbb8], a
    ld hl, $cbb7
    inc [hl]
    ret


    jr nz, jr_003_6b2b

    ld b, b
    ret nc

    ld h, b
    ret nc

    add b
    ret nc

    and b
    ret nc

    ret nz

    ret nc

    ldh [$d0], a
    nop
    pop de
    jr nz, jr_003_6b3c

    rst $38

Call_003_6b6c:
    ld hl, $6b72
    jp $0d3a


    ld bc, $a610
    ld c, h
    add hl, bc

Call_003_6b77:
    ld hl, $cbbf
    inc [hl]
    ld hl, $cbb8
    inc [hl]
    ret


Call_003_6b80:
    ld hl, $cbbf
    dec [hl]
    ld hl, $cbb8
    dec [hl]
    ret


    ld a, [$cc03]
    rst $00
    sbc c
    ld l, e
    jp c, Jump_003_696b

    ld l, h
    adc c
    ld l, h
    db $10
    ld l, l
    ld b, e
    ld l, l
    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $3525
    ld a, $03
    ld [$cc4e], a
    ld bc, $0103
    call Call_003_6de4
    ld a, $78
    ld [$cbb4], a
    ld a, $01
    ld [$cc03], a
    xor a
    ld [$cbb3], a
    ld a, $21
    ld [$cc51], a
    call $0c74
    ld a, $b0
    call $0c74
    ld a, $01
    ld [$cd00], a
    call $3171
    call $1a5e
    ld a, $02
    jp $02ea


    call Call_003_6df8
    ld a, [$cbb3]
    rst $00
    jp hl


    ld l, e
    inc bc
    ld l, h
    add hl, de
    ld l, h
    ld b, c
    ld l, h
    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_6ddf
    ret nz

    ld a, $b0
    call $0c74
    ld hl, $cbb4
    ld [hl], $96
    inc hl
    ld [hl], $01
    ld hl, $cbb3
    inc [hl]
    ld bc, $1478
    ld hl, $cbb5
    call Call_003_6db1
    call Call_003_6ddf
    ret nz

    ld a, $81
    ld [$cd02], a
    ld hl, $cbb3
    inc [hl]
    ld a, [$cd00]
    and $04
    ret z

    ld a, $04
    ld [$cc4c], a
    ld hl, $4964
    ld e, $01
    call $008a
    call $32dc
    call $381a
    call $3836
    call $3a06
    ld a, $08
    ld [$cd00], a
    ld hl, $cbb3
    inc [hl]
    ld a, [$cd00]
    and $01
    ret z

    ld hl, $49a4
    ld e, $01
    call $008a
    ld hl, $cbb4
    ld [hl], $96
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $01
    ld a, $b0
    call $0c74

Call_003_6c5f:
    ld hl, $cc03
    inc [hl]
    ld hl, $cbb3
    ld [hl], $00
    ret


    call Call_003_6df8
    ld bc, $1430
    ld hl, $cbb5
    call Call_003_6db1
    ld bc, $1488
    ld hl, $cbb6
    call Call_003_6db1
    ld hl, $cbb4
    dec [hl]
    ret nz

    call Call_003_6c5f
    jp $313b


    ld a, [$cbb3]
    rst $00
    sub a
    ld l, h
    or a
    ld l, h
    jp z, $e06c

    ld l, h
    cp $6c
    ld a, [$c4ab]
    or a
    ret nz

    call $24a7
    call $02c1
    call $3525
    ld bc, $0015
    call Call_003_6de4
    ld a, $1e
    ld [$cbb4], a
    ld hl, $cbb3
    inc [hl]
    jp Jump_003_6d9f


    call Call_003_6ddf
    ret nz

    call Call_003_6df8
    ld hl, $cbb4
    ld [hl], $78
    inc hl
    ld [hl], $01
    ld hl, $cbb3
    inc [hl]
    ld hl, $cbb5
    call Call_003_6dcb
    call Call_003_6ddf
    ret nz

    call Call_003_6df8
    ld hl, $cbb3
    inc [hl]
    ld a, $02
    call $312f
    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_6d8b
    call $3ac6
    jr nz, jr_003_6cf2

    ld [hl], $dc
    inc l
    ld [hl], $0e

jr_003_6cf2:
    ld hl, $cbb3
    inc [hl]
    ld hl, $cbb4
    ld [hl], $78
    call Call_003_6df8
    ld hl, $cbb5
    call Call_003_6dcb
    call Call_003_6ddf
    ret nz

    call Call_003_6c5f
    ld a, $02
    jp $312f


    ld a, [$cbb3]
    rst $00
    ld e, $6d
    or a
    ld l, h
    jp z, $e06c

    ld l, h
    cp $6c
    ld a, [$c4ab]
    or a
    ret nz

    call $24a7
    call $02c1
    call $3525
    ld a, $15
    call $30d3
    ld bc, $0027
    call Call_003_6de4
    ld a, $1e
    ld [$cbb4], a
    ld hl, $cbb3
    inc [hl]
    jp Jump_003_6d9f


    ld a, [$cbb3]
    rst $00
    ld d, c
    ld l, l
    or a
    ld l, h
    jp z, $e06c

    ld l, h
    db $76
    ld l, l
    ld a, [$c4ab]
    or a
    ret nz

    call $24a7
    call $02c1
    call $3525
    ld a, $15
    call $30d3
    ld bc, $0017
    call Call_003_6de4
    ld a, $1e
    ld [$cbb4], a
    ld hl, $cbb3
    inc [hl]
    jp Jump_003_6d9f


    ld hl, $cbb5
    call Call_003_6dcb
    call Call_003_6ddf
    ret nz

    ld hl, $6d86
    jp $1970


    add h
    rst $28
    nop
    ld l, c
    inc bc

Call_003_6d8b:
    call $02c1
    call $3525
    ld a, $15
    call $30cd
    call $381a
    call $3737
    call $12dd

Jump_003_6d9f:
    ld a, $01
    ld [$cd00], a
    ld a, $02
    call $315c
    call $1a5e
    ld a, $02
    jp $02ea


Call_003_6db1:
    dec [hl]
    ret nz

    call $041a
    and $0f
    add $08
    ld [hl], a
    call $3ea7
    ret nz

    ld [hl], $11
    inc l
    ld [hl], $01
    ld l, $cb
    ld [hl], b
    ld l, $cd
    ld [hl], c
    ret


Call_003_6dcb:
    dec [hl]
    ret nz

    call $041a
    and $0f
    add $08
    ld [hl], a
    call $3ea7
    ret nz

    ld [hl], $11
    inc l
    ld [hl], $02
    ret


Call_003_6ddf:
    ld hl, $cbb4
    dec [hl]
    ret


Call_003_6de4:
    ld a, b
    ld [$cc49], a
    ld a, c
    ld [$cc4c], a
    call $32dc
    call $381a
    call $3737
    jp $12dd


Call_003_6df8:
    ld a, $ff
    jp $24a7


    ld a, [$cc03]
    rst $00
    dec d
    ld l, [hl]
    cpl
    ld l, [hl]
    ld a, [$cc03]
    rst $00
    dec d
    ld l, [hl]
    ld e, c
    ld l, a
    ld a, [$cc03]
    rst $00
    dec d
    ld l, [hl]
    di
    ld l, a
    ld b, $10
    ld hl, $cbb3
    call $044b
    call $3519
    xor a
    ld [$cca4], a
    ld a, $80
    ld [$cc02], a
    ld a, $01
    ld [$cc03], a
    ret


    ld a, [$cbb3]
    rst $00
    ld c, e
    ld l, [hl]
    ld d, [hl]
    ld l, [hl]
    ld a, a
    ld l, [hl]
    adc [hl]
    ld l, [hl]
    xor [hl]
    ld l, [hl]
    db $d3
    ld l, [hl]
    db $e4
    ld l, [hl]
    dec c
    ld l, a
    ld d, $6f
    rra
    ld l, a
    jr z, jr_003_6eb8

    scf
    ld l, a
    ld a, $28
    ld [$cbb5], a
    call $318f
    jp Jump_003_71f1


    call Call_003_7205
    ret nz

    call Call_003_720f
    call $3ac6
    jr nz, jr_003_6e67

    ld [hl], $b0
    inc l
    ld [hl], $03

jr_003_6e67:
    ld a, $13
    call $02ea
    ld a, $d2
    call $0c74
    xor a
    ld [$cbb5], a
    ld [$cbb6], a
    dec a
    ld [$cbba], a
    call Call_003_71f1
    ld hl, $cbb5
    ld b, $04
    call $2cba
    ret z

    call $3110
    jp Jump_003_71f1


    call $3ac6
    jr nz, jr_003_6e98

    ld [hl], $b0
    inc l
    ld [hl], $04

jr_003_6e98:
    ld a, $f0
    call $0c74
    ld a, $04
    ld [$cbb5], a
    call Call_003_5504
    ld a, $ef
    ldh [$a7], a
    ldh [$a5], a
    jp Jump_003_71f1


    ld hl, $cbb5
    dec [hl]
    ret nz

    ld a, $04
    ld [$cbae], a

jr_003_6eb8:
    ld c, $08
    jp Jump_003_71e7


Call_003_6ebd:
    call $31b5
    ld a, b
    ld [$c4b2], a
    ld [$c4b4], a
    xor a
    ld [$c4b1], a
    ld [$c4b3], a
    ld a, $72
    jp $0c74


    call Call_003_71fb
    ret nz

    ld b, $40
    call Call_003_6ebd
    ld a, $1e
    ld [$cbb5], a
    jp Jump_003_71f1


    call Call_003_7205
    ret nz

    call $31be
    ld a, $af
    ld [$c4b2], a
    ld [$c4b4], a
    xor a
    ld [$cfc6], a
    call Call_003_72af
    call Call_003_72d0
    ld a, $21
    ld [$cc51], a
    call $0c74
    ld a, $1e
    ld [$cbb5], a
    jp Jump_003_71f1


    call Call_003_7205
    ret nz

    ld c, $09
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $0a
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $0b
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $0c
    call Call_003_71e7
    ld a, $3c
    ld [$cbb5], a
    ret


    call Call_003_71fb
    ret nz

    xor a
    ld [$cc02], a
    ld a, $20
    call $30cd
    ld a, $03
    ld [$cc4e], a
    ld hl, $6f54
    call $1970
    ld a, $0f
    jp $04e7


    add b
    adc d
    nop
    dec h
    add e
    ld a, [$cbb3]
    rst $00
    ld l, e
    ld l, a
    ld [hl], c
    ld l, a
    sbc d
    ld l, a
    and d
    ld l, a
    xor [hl]
    ld l, a
    pop de
    ld l, a
    db $db
    ld l, a
    call $3144
    jp Jump_003_71f1


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $03
    ld bc, $00b6
    call Call_003_63d2
    ld a, $f1
    call $0c74
    ld a, $20
    ld [$cc51], a
    call $0c74
    ld a, $02
    call $02ea
    xor a
    call Call_003_7242
    call $3171
    jp Jump_003_71f1


    ld a, [$c4ab]
    or a
    ret nz

    jp Jump_003_71f1


    ld a, [$cfc0]
    bit 1, a
    ret z

    call $3144
    jp Jump_003_71f1


    ld a, [$c4ab]
    or a
    ret nz

    ld bc, $00e9
    call Call_003_63d2
    ld a, $f1
    call $0c74
    ld a, $02
    call $02ea
    call $3519
    ld a, $01
    call Call_003_7242
    call $3171
    jp Jump_003_71f1


    ld a, [$c4ab]
    or a
    ret nz

    ld c, $10
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    xor a
    ld [$cc02], a
    ld a, $1e
    call $30cd
    ld hl, $6fee
    jp $1970


    add l
    add a
    sub e
    rst $38
    ld bc, $00cd
    ld [hl], b
    ld hl, $cbb3
    ld a, [hl]
    cp $10
    jp c, $1a62

    ret


Call_003_7000:
    ld a, [$cbb3]
    rst $00
    ld l, $70
    inc [hl]
    ld [hl], b
    ld d, a
    ld [hl], b
    ld l, b
    ld [hl], b
    ld a, b
    ld [hl], b
    sub h
    ld [hl], b
    or e
    ld [hl], b
    jp $cc70


    ld [hl], b
    push de
    ld [hl], b
    pop hl
    ld [hl], b
    di
    ld [hl], b
    inc de
    ld [hl], c
    inc e
    ld [hl], c
    dec h
    ld [hl], c
    dec sp
    ld [hl], c
    ld b, [hl]
    ld [hl], c
    ld [hl], h
    ld [hl], c
    ld a, l
    ld [hl], c
    add [hl]
    ld [hl], c
    adc a
    ld [hl], c
    call $3144
    jp Jump_003_71f1


    ld a, [$c4ab]
    or a
    ret nz

    ld bc, $00e9
    call Call_003_63d2
    ld a, $02
    call $02ea
    call $0c8e
    ld a, $02
    call Call_003_7242
    call $3171
    ld a, $3c
    ld [$cbb5], a
    jp Jump_003_71f1


    call Call_003_7205
    ret nz

    ld hl, $cfc0
    set 7, [hl]
    ld a, $ff
    ld [$cbb5], a
    jp Jump_003_71f1


    ld hl, $cbb5
    dec [hl]
    ret nz

    ld c, $11
    call Call_003_71e7
    ld a, $5a
    ld [$cbb5], a
    ret


    call Call_003_71fb
    jr z, jr_003_7087

    ld a, $3c
    cp [hl]
    ret nz

    ld hl, $cfc0
    set 6, [hl]
    ret


jr_003_7087:
    ld hl, $cfc0
    set 5, [hl]
    ld a, $3c
    ld [$cbb5], a
    jp Jump_003_71f1


    ld hl, $cbb5
    dec [hl]
    ret nz

    ld a, $1e
    ld [$cbb5], a
    xor a
    ld [$cfc6], a
    call Call_003_72af
    call Call_003_72ba
    ld a, $21
    ld [$cc51], a
    call $0c74
    jp Jump_003_71f1


    ld a, [$cfc0]
    bit 0, a
    ret z

    ld hl, $cbb5
    dec [hl]
    ret nz

    ld c, $12
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $13
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $14
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld hl, $cfc0
    res 0, [hl]
    jp Jump_003_71f1


    ld a, [$cfc0]
    bit 0, a
    ret z

    xor a
    ld [$cbb4], a
    ld a, $d2
    call $0c74
    call Call_003_71f1
    call Call_003_71ac
    ret nz

    call $3519
    ld hl, $cfc0
    res 0, [hl]
    xor a
    ld [$cfc6], a
    call Call_003_72c5
    ld a, $04
    call $315c
    ld a, $1e
    ld [$cbb5], a
    jp Jump_003_71f1


    call Call_003_7205
    ret nz

    ld c, $16
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $17
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld hl, $cfc0
    set 0, [hl]
    ld a, $3c
    ld [$cbb5], a
    ld a, $bb
    call $0c74
    jp Jump_003_71f1


    ld hl, $cbb5
    dec [hl]
    ret nz

    call $3144
    jp Jump_003_71f1


    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_720f
    call Call_003_7231
    ld a, $f1
    call $0c74
    xor a
    ld [$cfc6], a
    call Call_003_72d0
    call $3ac6
    jr nz, jr_003_7164

    ld [hl], $b0

jr_003_7164:
    ld a, $13
    call $02ea
    call $31be
    ld a, $1e
    ld [$cbb5], a
    jp Jump_003_71f1


    call Call_003_7205
    ret nz

    ld c, $18
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $19
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    ld c, $1a
    jp Jump_003_71e7


    call Call_003_71fb
    ret nz

    xor a
    ld [$cc02], a
    ld a, $1f
    call $30cd
    ld a, $03
    ld [$cc4e], a
    ld hl, $71a7
    jp $1970


    ret nz

    inc hl
    nop
    ld b, l
    add e

Call_003_71ac:
    ld a, [$cbb4]
    rst $00
    cp h
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $10
    ld [hl], c
    db $db
    ld [hl], c
    db $e4
    ld [hl], c
    ld a, $0a

jr_003_71be:
    ld [$cbb5], a
    call $2ca6
    jp Jump_003_71f6


    ld hl, $cbb5
    dec [hl]
    ret nz

    ld a, $0a

jr_003_71ce:
    ld [$cbb5], a
    call $313b
    jp Jump_003_71f6


    ld a, $14
    jr jr_003_71be

    ld hl, $cbb5
    dec [hl]
    ret nz

    ld a, $1e
    jr jr_003_71ce

    jp Jump_003_7205


Call_003_71e7:
Jump_003_71e7:
    ld b, $50
    call $184b
    ld a, $1e
    ld [$cbb5], a

Call_003_71f1:
Jump_003_71f1:
    ld hl, $cbb3
    inc [hl]
    ret


Jump_003_71f6:
    ld hl, $cbb4
    inc [hl]
    ret


Call_003_71fb:
    ld a, [$cba0]
    or a
    ret nz

    ld hl, $cbb5
    dec [hl]
    ret


Call_003_7205:
Jump_003_7205:
    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cbb5
    dec [hl]
    ret


Call_003_720f:
    xor a
    ld bc, $059a
    call Call_003_63d2
    ld a, $ac
    call $04e7
    ld a, $28
    ld [$c487], a
    ld [$c48d], a
    ldh [$aa], a
    ld a, $00
    ld [$cd00], a
    ld a, $10
    ldh [$9d], a
    jp $3519


Call_003_7231:
    ld b, $02

jr_003_7233:
    call $3ac6
    ret nz

    ld [hl], $b0
    inc l
    ld a, $02
    add b
    dec b
    ld [hl], a
    jr nz, jr_003_7233

    ret


Call_003_7242:
    ld hl, $7265
    rst JumpTable
    ld a, [hl+]
    ld b, [hl]
    ld c, a

jr_003_7249:
    ld a, [bc]
    or a
    ret z

    call $3ac6
    ret nz

    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    inc bc
    jr jr_003_7249

    ld l, e
    ld [hl], d
    ld [hl], c
    ld [hl], d
    sub b
    ld [hl], d
    ld b, h
    ld [bc], a
    nop
    jr jr_003_7288

    nop
    cp l
    nop
    ld bc, $3828
    cp [hl]
    nop
    ld bc, $3840
    ld b, h
    inc bc
    nop
    jr nz, jr_003_72d0

    cp h
    nop
    nop
    ld c, b
    ld d, b
    cp d
    nop
    inc bc

jr_003_7288:
    jr z, jr_003_72f2

    cp e
    nop
    nop
    ld b, b
    ld l, b
    nop
    cp l
    nop
    ld bc, $382c
    cp [hl]
    nop
    nop
    ld b, h
    ld b, b
    ld b, h
    inc bc
    nop
    jr nz, jr_003_72ef

    cp h
    nop
    nop
    ld d, b
    ld e, b
    cp d
    nop
    ld [bc], a
    jr nz, @+$66

    cp e
    nop
    inc bc
    jr c, @+$6a

    nop

Call_003_72af:
    ld a, $01
    ld [$cc17], a
    ld a, $b4
    ld [$cc1d], a
    ret


Call_003_72ba:
    ld bc, $72ed
    call Call_003_72d9
    ld bc, $72f0
    jr jr_003_72d9

Call_003_72c5:
    ld bc, $72f3
    call Call_003_72d9
    ld bc, $72f6
    jr jr_003_72d9

Call_003_72d0:
jr_003_72d0:
    ld bc, $72f9
    call Call_003_72d9
    ld bc, $72fc

Call_003_72d9:
jr_003_72d9:
    call $3ac6
    ret nz

    ld [hl], $b4
    inc l
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $4b
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    ret


    ld [bc], a
    nop

jr_003_72ef:
    ld b, b
    inc bc
    nop

jr_003_72f2:
    ld h, b
    inc b
    ld d, b
    ld l, b
    dec b
    ld d, b
    jr c, jr_003_7300

    ld c, h
    adc [hl]
    rlca
    ld c, h
    ld h, d
    ld a, e

jr_003_7300:
    rst $00
    dec bc
    ld [hl], e
    ld a, [bc]
    db $76
    sbc h
    ld [hl], a
    rst $10
    ld a, d
    ei
    ld a, e
    call Call_003_731b
    ld hl, $cc03
    ld a, [hl]
    cp $02
    ret z

    cp $03
    ret z

    jp $3382


Call_003_731b:
    ld de, $cc03
    ld a, [de]
    rst $00
    ld b, b
    ld [hl], e
    ld c, b
    ld [hl], e
    jr z, jr_003_739a

    ld l, d
    ld [hl], h
    add h
    ld [hl], h
    db $fd
    ld [hl], h
    ld h, l
    ld [hl], l
    ld a, d
    ld [hl], l
    add [hl]
    ld [hl], l
    sbc d
    ld [hl], l
    or h
    ld [hl], l
    cp a
    ld [hl], l
    add $75
    pop de
    ld [hl], l
    db $dd
    ld [hl], l
    db $ec
    ld [hl], l
    ld a, $01
    ld [de], a
    ld a, $55
    call $0c74
    ld a, $ff
    ld [$cd25], a
    ld a, $01
    ld [$cfd0], a
    ld hl, $cc02
    ld [hl], $01
    ld hl, $d01a
    res 7, [hl]
    call $1a6e
    ld a, $0c
    call $0602
    ld a, $95
    call $04e7
    ld a, $04
    call $02ea
    ld hl, $cbb3
    ld [hl], $58
    inc hl
    ld [hl], $02
    ld hl, $cbb6
    ld [hl], $28
    call $3168
    call Call_003_7a66
    ld hl, $cbb5
    ld [hl], $02

Call_003_7386:
Jump_003_7386:
    call $047b
    ld b, $00
    ld a, [$c487]
    cpl
    inc a
    ld c, a
    ld hl, $7397
    jp $0d3d


    inc h
    ld d, c
    ccf

jr_003_739a:
    ld e, $06
    ld b, b
    inc c
    ld [$4f01], sp
    inc c
    jr z, jr_003_73a5

    ld e, h

jr_003_73a5:
    jr nc, jr_003_73c7

    ld [bc], a
    ld e, h
    jr c, jr_003_73cd

    ld bc, $3f4c
    inc b
    ld bc, $4a50
    ld b, $02
    ld b, b
    inc d
    ld a, [bc]
    ld bc, $144f
    ld a, [hl+]
    ld bc, $6461
    inc c
    ld bc, $6c61
    ld c, $01
    ld [hl], c
    ld h, h
    inc l

jr_003_73c7:
    ld bc, $6c71
    ld l, $01
    adc b

jr_003_73cd:
    jr c, jr_003_73df

    nop
    ld l, c
    ld d, b
    ld h, $04
    ld l, c
    ld c, b
    inc h
    inc b
    ld c, h
    cpl
    nop
    ld bc, $374c
    ld [bc], a

jr_003_73df:
    ld bc, $3053
    ld [de], a
    dec b
    ld d, e
    jr c, jr_003_73fb

    dec b
    ld de, $4286
    inc bc
    rla
    adc b
    ld d, $04
    scf
    and d
    jr nc, jr_003_73f8

    scf
    xor d
    ld [hl-], a
    inc b

jr_003_73f8:
    ld hl, $189f

jr_003_73fb:
    dec b
    ld hl, $1aa7
    dec b
    ld [hl+], a
    sbc [hl]
    inc e
    inc bc
    ld [hl], e
    or b
    inc [hl]
    inc b
    ld [hl], e
    cp b
    ld [hl], $04
    ld a, [hl-]
    sbc h
    jr c, jr_003_7413

    dec sp
    dec hl
    ld a, [hl-]

jr_003_7413:
    inc bc
    dec sp
    inc sp
    inc a
    inc bc
    ld b, b
    ld b, d
    ld a, $03
    ld [hl], b
    add b
    ld b, b
    inc bc
    sub b
    inc [hl]
    ld b, h
    ld b, $90
    inc a
    ld b, [hl]
    ld b, $fa
    xor e
    call nz, $c2b7
    add [hl]
    ld [hl], e
    call Call_003_7458
    call Call_003_7386
    ld hl, $cbb3
    call $0237
    jr z, jr_003_744d

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $00f0
    call $01d6
    ret nc

    ld a, [$c482]
    and $01
    ret z

jr_003_744d:
    ld a, $55
    call $0c74
    call Call_003_7a66
    jp $313b


Call_003_7458:
    ld a, [$cc00]
    and $07
    ret nz

    ld hl, $cbb6
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ld hl, $c487
    inc [hl]
    ret


    ld a, [$c4ab]
    or a
    jp nz, Jump_003_7386

    xor a
    ld [$cd25], a
    ld hl, $d01a
    set 7, [hl]
    xor a
    ld [$cfd0], a
    call Call_003_7a66
    jp $1a72


    ld a, [$cfd0]
    cp $02
    ret nz

    ld hl, $cbb4
    xor a
    ld [hl], a
    call Call_003_74aa
    ld hl, $de90
    ld bc, $44e8
    call $13b4
    ld a, $f0
    call $0c74
    jp Jump_003_7a66


Call_003_74a3:
    call $2da2
    ret nz

    inc l
    inc [hl]
    ld a, [hl]

Call_003_74aa:
    ld d, h
    ld e, l
    add a
    ld hl, $74d1
    rst JumpTable
    dec e
    ld a, [hl+]
    ld [de], a
    inc a
    ret z

Jump_003_74b6:
    ld d, h
    ld e, l
    call $3ea7
    jr nz, jr_003_74ce

    ld [hl], $27
    ld l, $c2
    inc [hl]
    inc l
    ld a, [de]
    ld [hl], a
    inc de
    ld l, $cb
    ld a, [de]
    ld [hl+], a
    inc de
    inc hl
    ld a, [de]
    ld [hl], a

jr_003_74ce:
    or $01
    ret


    inc a
    nop
    ld d, b
    jr nz, @+$3e

    ld bc, $5870
    jr z, jr_003_74db

jr_003_74db:
    ld b, b
    add b
    jr z, jr_003_74df

jr_003_74df:
    jr jr_003_7511

    ld e, $02
    db $10
    add b
    ld e, $00
    ld b, b
    ld c, b
    inc d
    nop
    jr nz, @+$72

    inc d
    inc b
    ld a, b
    adc b
    inc d
    ld [$7070], sp
    inc d
    nop
    ld b, b

jr_003_74f8:
    ld b, b
    rst $38
    db $10
    ld [hl], b
    jr jr_003_74f8

    xor e
    call nz, $c0b7
    ld hl, $cfd0
    ld [hl], $03
    call Call_003_7516
    call Call_003_74a3
    ret nz

    ld hl, $cbb3

jr_003_7511:
    ld [hl], $3c
    jp Jump_003_7a66


Call_003_7516:
    ld de, $cfd2
    ld b, $03

jr_003_751b:
    ld a, [de]
    ld c, a
    ld a, b
    ld hl, $00f8
    add l
    ld l, a
    ld a, [hl]
    and c
    call nz, Call_003_752e
    dec b
    bit 7, b
    jr z, jr_003_751b

    ret


Call_003_752e:
    xor c
    ld [de], a
    push bc
    push de
    ld a, b
    ld hl, $754f
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, [hl]
    inc hl

jr_003_753c:
    ld c, [hl]
    inc hl
    ld e, c
    ld d, $cf
    ld a, [de]
    push bc
    push hl
    call $3a52
    pop hl
    pop bc
    dec b
    jr nz, jr_003_753c

    pop de
    pop bc
    ret


    ld d, a
    ld [hl], l
    ld e, d
    ld [hl], l
    ld e, [hl]
    ld [hl], l
    ld h, b
    ld [hl], l
    ld [bc], a
    ld h, l
    ld [hl], l
    inc bc
    rlca
    ld [$0118], sp
    ld a, b
    inc b
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    call $2da2
    ret nz

    call Call_003_7a66
    ld bc, $0c08
    call $196b
    jr z, jr_003_7577

    ld bc, $0c12

jr_003_7577:
    jp $184b


    call $1832
    call Call_003_7a66
    ld hl, $74fa
    jp Jump_003_74b6


    ld hl, $cfd2
    ld a, [hl]
    bit 4, a
    ret z

    call $3ac6
    jr nz, jr_003_7597

    ld [hl], $4e
    inc l
    ld [hl], $07

jr_003_7597:
    jp Jump_003_7a66


    ld c, $09
    call $196b
    jr z, jr_003_75a3

    ld c, $13

jr_003_75a3:
    ld a, $05

Jump_003_75a5:
    ld b, a
    ld hl, $cfd0
    ld a, [hl]
    cp b
    ret nz

    call Call_003_7a66
    ld b, $0c
    jp $184b


    call $1832
    ld hl, $cfd0
    ld [hl], $06
    jp Jump_003_7a66


    ld a, $08
    ld c, $14
    jp Jump_003_75a5


    call $1832
    ld hl, $cbb3
    ld [hl], $1e
    jp Jump_003_7a66


    call $2da2
    ret nz

    ld hl, $cfd0
    ld [hl], $09
    jp Jump_003_7a66


    ld hl, $cfd0
    ld a, [hl]
    cp $0b
    ret nz

    ld hl, $cbb3
    ld [hl], $3c
    jp Jump_003_7a66


    call $2da2
    ret nz

    call $047b
    call Call_003_539c
    ld a, $07
    ld [$c2ef], a
    xor a
    ld [$cc02], a
    ld [$cc03], a
    ld a, $30
    call $30d3
    jp $3144


    ld de, $cc03
    ld a, [de]
    rst $00
    inc hl
    db $76
    ld b, a
    db $76
    ld [hl], b
    db $76
    ret


    db $76
    push hl
    db $76
    push af
    db $76
    ld [hl-], a
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld h, l
    ld [hl], a
    add c
    ld [hl], a
    ld a, [$c4ab]
    or a
    ret nz

    ld a, $01
    ld [de], a
    ld a, $09
    ld [$cfd0], a
    ld hl, $cbb3
    ld [hl], $58
    inc l
    ld [hl], $01
    ld a, $09
    ld b, $00
    call Call_003_7aa9
    ld a, $1c
    call $0c74
    jp $3171


    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cbb3
    call $0237
    jr nz, jr_003_765e

    xor a
    ld [$c486], a
    call Call_003_7a66
    jp $3144


jr_003_765e:
    ld hl, $cbb3
    ld a, [hl]
    and $01
    ret nz

    ld hl, $c486
    ld a, [hl]
    or a
    ret z

    dec a
    ld [hl], a
    ldh [$a8], a
    ret


    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_7a66
    ld a, $0a
    ld [$cfd0], a
    call $02c1
    xor a
    ld [$cd08], a
    ld [$cd09], a
    ld a, $2e
    call $0602
    ld a, $97
    call $04e7
    ld a, $01
    ld [$cd00], a
    ld a, $18
    ld [$cd25], a
    call $3600
    call $3ac6
    jr nz, jr_003_76b5

    ld a, $4f
    ld [hl+], a
    ld [hl], $00
    ld [$cc1d], a
    call $3ac6
    jr nz, jr_003_76b5

    ld [hl], $4f
    inc l
    ld [hl], $01

jr_003_76b5:
    call $1606
    ld a, $0d
    call $02ea
    ld hl, $c486
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$aa], a
    jp $3171


    ld hl, $cfd0
    ld a, [hl]
    cp $0b
    ret nz

    ld b, $04

jr_003_76d2:
    call $3ac6
    jr nz, jr_003_76e2

    ld [hl], $4f
    inc l
    ld [hl], $02
    inc l
    dec b
    ld a, b
    ld [hl], a
    jr nz, jr_003_76d2

jr_003_76e2:
    jp Jump_003_7a66


    ld a, [$cfd0]
    sub $0c
    ret nz

    ld [$cbb3], a
    dec a
    ld [$cbba], a
    jp Jump_003_7a66


    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    call $02c1
    ld a, $01
    ldh [$a4], a
    ld a, $fe
    ldh [$a6], a
    ld a, $81
    call Call_003_7a6b
    ld a, $81
    ld [$cbcb], a
    call Call_003_7a88
    ld bc, $1e05
    call $184b
    ld a, $0d
    call $02ea
    ld hl, $c486
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$aa], a
    ld hl, $cfd0
    ld [hl], $0d
    jp Jump_003_7a66


    call $1832
    call $02c1
    ld a, $0e
    call $05b6
    ld a, $50
    call $0c74
    ld a, $0d
    call $02ea
    call $3171
    ld hl, $cbb3
    ld [hl], $f0
    xor a
    ld [$cbcb], a
    jp Jump_003_7a66


    ld a, [$c4ab]
    or a
    ret nz

    call $2da2
    ret nz

    call Call_003_7a66
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_7a66
    ld a, $ff
    ld [$cd25], a
    ld a, $0e
    ld [$cfd0], a
    ld a, $07
    ld b, $01
    call Call_003_7aa9
    jp $3171


    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cfd0
    ld a, [hl]
    cp $0f
    ret nz

    call $3554
    ld a, $08
    ld [$c2ef], a
    xor a
    ld [$cc03], a
    jp $3144


    ld de, $cc03
    ld a, [de]
    rst $00
    or e
    ld [hl], a
    ld bc, $2a78
    ld a, b
    ld c, c
    ld a, b
    ld a, a
    ld a, b
    and a
    ld a, b
    ret nc

    ld a, b
    ld [c], a
    ld a, b
    ldh a, [$78]
    ld a, [$c4ab]
    or a
    ret nz

    ld a, $01
    ld [de], a
    ld b, $02

jr_003_77bd:
    call $3ac6
    jr nz, jr_003_77c9

    ld [hl], $77
    inc l
    dec b
    ld [hl], b
    jr nz, jr_003_77bd

jr_003_77c9:
    call $02c1
    ld a, $24
    call $0602
    ld a, $98
    call $04e7
    ld a, $0e
    call $02ea
    ld hl, $c486
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl+]
    ldh [$aa], a
    ld de, $cbb6
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $cbb3
    ld [hl], $3c
    xor a
    ld hl, $cfd3
    ld [hl], a
    call Call_003_79db
    ld a, $21
    call $0c74
    jp $3171


    ld a, [$c4ab]
    or a
    jp nz, Jump_003_7827

    call $2da2
    jr nz, jr_003_7827

    ld b, $05

jr_003_780f:
    call $3ac6
    jr nz, jr_003_781c

    ld [hl], $86
    inc l
    dec b
    ld a, b
    ld [hl], a
    jr nz, jr_003_780f

jr_003_781c:
    ld hl, $cbb3
    ld [hl], $b4
    inc hl
    ld [hl], $00
    call Call_003_7a66

Jump_003_7827:
jr_003_7827:
    jp Jump_003_7981


    call $2da2
    jr nz, jr_003_7843

    call Call_003_7a01
    xor a
    ld hl, $cbb4
    ld [hl], a
    call Call_003_7917
    ld hl, $cfd3
    inc [hl]
    set 7, [hl]
    jp Jump_003_7a66


jr_003_7843:
    call Call_003_7909
    jp Jump_003_7981


    call Call_003_7981
    call $2da2
    ret nz

    inc l
    inc [hl]
    ld a, [hl]
    cp $03
    jr z, jr_003_785e

    ld hl, $cfd3
    inc [hl]
    jp Jump_003_7917


jr_003_785e:
    call $02c1
    ld a, $24
    call $0602
    ld a, $98
    call $04e7
    call Call_003_7a17
    ld hl, $cbb3
    ld [hl], $78
    inc l
    ld [hl], $00
    ld hl, $cfd3
    inc [hl]
    res 7, [hl]
    jp Jump_003_7a66


    call $2da2
    jr nz, jr_003_78a1

    call $02c1
    ld a, $03
    inc l
    ld [hl], a
    call Call_003_7917
    ld hl, $cfd3
    ld [hl], $ff
    call Call_003_7a66
    ld hl, $cbba
    ld [hl], $02
    ld hl, $cbb8
    jp Jump_003_7a3b


jr_003_78a1:
    call Call_003_7909
    jp Jump_003_7981


    call Call_003_7981
    call Call_003_7a2e
    call $2da2
    ret nz

    inc l
    inc [hl]
    ld a, [hl]
    cp $06
    jr z, jr_003_78bb

    jp Jump_003_7917


jr_003_78bb:
    ld hl, $cbb3
    ld [hl], $3c
    call $161e
    ld a, $07
    ld b, $01
    call Call_003_7aa9
    call $3110
    jp Jump_003_7a66


    call $2da2
    ret nz

    ld a, $01
    ld [$cc02], a
    ld bc, $1e04
    call $184b
    jp Jump_003_7a66


    call $1832
    call Call_003_7a66
    ld hl, $cbb3
    ld [hl], $5a
    jp $3198


    ld a, [$c4ab]
    or a
    ret nz

    call $2da2
    ret nz

    xor a
    ld [$c2ee], a
    ld [$c2ef], a
    ld c, a
    ld hl, $5d0d
    ld e, $01
    jp $008a


Call_003_7909:
    ld hl, $cbb4
    inc [hl]
    ld a, [hl]
    sub $07
    ret nz

    ld [hl], a
    ld hl, $cbb6
    inc [hl]
    ret


Call_003_7917:
Jump_003_7917:
    ld [$cbbb], a
    ld hl, $cbb3
    ld [hl], $5a
    call $02c1
    ld a, [$cbbb]
    cp $03
    jr c, jr_003_7948

    sub $03
    ld hl, $797b
    rst JumpTable
    ld b, $00
    ld a, [hl+]
    ld c, [hl]
    call $369b
    ld b, $31
    ld a, [$cbbb]
    cp $05
    jr nz, jr_003_7941

    ld b, $0f

jr_003_7941:
    ld a, b
    call $05b6
    ld a, [$cbbb]

jr_003_7948:
    add $25
    call $0602
    ld a, [$cbbb]
    ld hl, $7972
    rst $10
    ld a, [hl]
    call $04e7
    ld a, $0f
    call $04e7
    ld a, $04
    call $02ea
    ld a, [$cbbb]
    sub $03
    ret c

    ld hl, $7978
    rst $10
    ld a, [hl]
    ld de, $cbb9
    ld [de], a
    ret


    ld e, a
    ld e, a
    ld e, a
    ld de, $1213
    ld [bc], a
    inc bc
    ld bc, $b801
    ld [bc], a
    add $02
    ret z

Call_003_7981:
Jump_003_7981:
    call Call_003_79bb
    ld hl, $cc00
    ld a, [hl]
    and $0f
    ld a, $b8
    call z, $0c74
    ld de, $cbb5
    ld a, [de]
    cp $02
    jr z, jr_003_79a2

    ld hl, $cbb4
    dec [hl]
    jr nz, jr_003_79a2

    inc a
    ld [de], a
    call Call_003_79db

jr_003_79a2:
    add a
    add a
    ld hl, $79e9
    rst JumpTable
    ld b, $00
    call Call_003_79af
    ld b, $01

Call_003_79af:
    ld de, $c486
    dec b
    jr nz, jr_003_79b8

    ld de, $c488

jr_003_79b8:
    jp Jump_003_79cd


Call_003_79bb:
    ld hl, $c486
    ldh a, [$a8]
    ld [hl+], a
    ldh a, [$aa]
    ld [hl+], a
    ld de, $cbb6
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ret


Call_003_79cd:
Jump_003_79cd:
    push hl
    call $041a
    and $07
    rst $10
    ld a, [hl]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    pop hl
    ret


Call_003_79db:
    ld b, a
    ld hl, $79e7
    rst $10
    ld a, [hl]
    ld hl, $cbb4
    ld [hl], a
    ld a, b
    ret


    ld e, $14
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    ld bc, $0100
    nop
    nop
    rst $38
    nop

Call_003_7a01:
    ld hl, $cbd5
    ld de, $c485
    ld b, $0c

jr_003_7a09:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_003_7a09

    call $047b
    ld a, $10
    ldh [$9d], a
    ret


Call_003_7a17:
    ld hl, $cbd5
    ld de, $c485
    ld b, $0c

jr_003_7a1f:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_003_7a1f

    ld a, [$c485]
    ld [$c497], a
    ldh [rLCDC], a
    ret


Call_003_7a2e:
    ld hl, $cbba
    dec [hl]
    ret nz

    ld [hl], $02
    ld hl, $cbb8
    dec [hl]
    jr nz, jr_003_7a5b

Jump_003_7a3b:
    ld [hl], $1f
    ld hl, $cbb9
    inc [hl]
    ld a, [hl]
    and $03
    ld [hl], a
    ld hl, $7a5e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    ld hl, $de90
    call $13b4
    xor a
    ld [$c4ab], a
    ld hl, $cbb8

jr_003_7a5b:
    jp $35ec


    or b
    ld c, c
    db $10
    ld c, d
    ldh [rOBP1], a
    ld b, b
    ld c, d

Call_003_7a66:
Jump_003_7a66:
    ld hl, $cc03
    inc [hl]
    ret


Call_003_7a6b:
    ldh [$8b], a
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    ldh a, [$8b]
    call $0452
    xor a
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    jp $0451


Call_003_7a88:
    ldh [$8b], a
    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0240
    call $0451
    ld hl, $d400
    ld bc, $0240
    ldh a, [$8b]
    call $0452
    pop af
    ldh [rSVBK], a
    ret


Call_003_7aa9:
    ld d, a
    ld a, b
    ld e, a
    call $02c1
    push de
    ld a, $2f
    call $0602
    ld a, $0f
    call $04e7
    ld a, $3b
    call $04e7
    pop de
    call $3ac6
    jr nz, jr_003_7ac9

    ld [hl], $88
    inc l
    ld [hl], e

jr_003_7ac9:
    ld a, d
    call $02ea
    ld hl, $c486
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$aa], a
    ret


    call Call_003_7add
    jp $3382


Call_003_7add:
    ld de, $cc03
    ld a, [de]
    rst $00
    db $fc
    ld a, d
    ld b, a
    ld a, e
    ld e, c
    ld a, e
    ld e, l
    ld a, e
    ld a, h
    ld a, e
    sbc l
    ld a, e
    xor l
    ld a, e
    call nz, $d97b
    ld a, e
    rst $28
    ld a, e
    ld b, h
    ld a, l
    sub e
    ld a, l
    and h
    ld a, l
    ld a, [$c4ab]
    or a
    ret nz

    call $196b
    jr nz, jr_003_7b0c

    ld a, $0a
    ld [de], a
    jp Jump_003_7d44


jr_003_7b0c:
    ld a, $01
    ld [de], a
    ld bc, $059a
    call Call_003_63d2
    ld a, $ac
    call $04e7
    ld b, $03

jr_003_7b1c:
    call $3ac6
    jr nz, jr_003_7b28

    ld [hl], $b0
    inc l
    ld [hl], b
    dec b
    jr nz, jr_003_7b1c

jr_003_7b28:
    ld a, $1b
    call $0c74
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $13
    call $02ea
    ld a, [$c48d]
    ldh [$aa], a
    xor a
    ldh [$a8], a
    ld a, $00
    ld [$cd00], a
    jp Jump_003_5504


    ld e, $96

jr_003_7b49:
    call $2da2
    ret nz

    call Call_003_7a66
    ld hl, $cbb3
    ld [hl], e
    ld a, $cf
    jp $0c74


    ld e, $3c
    jr jr_003_7b49

    call $2da2
    ret nz

    call Call_003_7a66
    call $31b5
    ld a, $10
    ld [$c4b2], a
    ld [$c4b4], a
    ld a, $03
    ld [$c4b1], a
    ld [$c4b3], a
    ld a, $72
    jp $0c74


    ld a, [$c4ab]
    or a
    ret nz

    call Call_003_7a66
    ld a, $0e
    ld [$cbb3], a
    call $31be
    ld a, $ef
    ld [$c4b2], a
    ld [$c4b4], a
    ld a, $fc
    ld [$c4b1], a
    ld [$c4b3], a
    ret


    call $2da2
    ret nz

    xor a
    ld [$c4ab], a
    ld a, $78
    ld [$cbb3], a
    jp Jump_003_7a66


    call $2da2
    ret nz

    call Call_003_7a66
    ld a, $08
    ld [$cbae], a
    ld a, $03
    ld [$cbac], a
    ld bc, $0c15
    jp $184b


    call $1832
    call Call_003_7a66
    ld [$cbb3], a
    dec a
    ld [$cbba], a
    call $0c8e
    ld a, $bc
    jp $0c74


    ld hl, $cbb3
    ld b, $03
    call $2cba
    ret z

    call Call_003_7a66
    ld a, $3c
    ld [$cbb3], a
    ld a, $02
    jp $312f


    ld a, [$c4ab]
    or a
    ret nz

    call $2da2
    ret nz

    jp Jump_003_7a66


    call Call_003_7c01
    jp $3445


Call_003_7c01:
    ld de, $cc03
    ld a, [de]
    rst $00
    ld d, $7c
    scf
    ld a, h
    ld c, e
    ld a, h
    xor c
    ld a, h
    push de
    ld a, h
    ldh a, [$7c]
    ld c, $7d
    rra
    ld a, l
    ld a, [$c4ab]
    or a
    ret nz

    call $1a66
    call $3554
    ld a, $fa
    call $0c74
    ld hl, $cbb3
    ld [hl], $3c
    ld hl, $d01a
    res 7, [hl]
    xor a
    ld [$cfc0], a
    jp Jump_003_7a66


    call $2da2
    ret nz

    ld [hl], $14
    call Call_003_7a66
    ld hl, $cbae
    ld [hl], $04
    ld bc, $1719
    jp $184b


    call $1832
    call $2da2
    ret nz

    call $02c1
    call $3ac6
    jr nz, jr_003_7c65

    ld a, $a5
    ld [$cc1d], a
    ld [hl+], a
    ld [hl], $06
    call $1606

jr_003_7c65:
    xor a
    ld [$cd08], a
    ld [$cd09], a
    ld a, $2e
    call $0602
    ld a, $97
    call $04e7
    ld a, $01
    ld [$cd00], a
    ld a, $18
    ld [$cd25], a
    call $3600
    ld a, $0d
    call $02ea
    ld hl, $c486
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ldh [$aa], a
    ld a, $18
    ld [$cd25], a
    call $3600
    xor a
    ld [$cbb3], a
    dec a
    ld [$cbba], a
    ld a, $d2
    call $0c74
    jp Jump_003_7a66


    ld hl, $cbb3
    ld b, $01
    call $2cba
    ret z

    xor a
    ldh [$8b], a
    ld a, $f0
    ld c, a
    ld [$c4ae], a
    call $35cc
    ld a, $ff
    ldh [$a4], a
    ldh [$a5], a
    ldh [$a6], a
    ldh [$a7], a
    ld hl, $cbb3
    ld [hl], $3c
    ld a, $21
    call $0c74
    jp Jump_003_7a66


    call $2da2
    ret nz

    ld [hl], $3c
    call $31fb
    ld a, $ff
    ld [$c4b2], a
    ld [$c4b4], a
    xor a
    ld [$c4b1], a
    ld [$c4b3], a
    jp Jump_003_7a66


    ld a, [$c4ab]
    or a
    ret nz

    call $2da2
    ret nz

    ld [hl], $5a
    ld a, $f0
    ld [$c4ae], a
    call $31fb
    ld a, $ff
    ld [$c4b1], a
    ld [$c4b3], a
    jp Jump_003_7a66


    call $2da2
    ret nz

    call $3ac6
    jr nz, jr_003_7d1c

    ld [hl], $4f
    inc l
    ld [hl], $05

jr_003_7d1c:
    jp Jump_003_7a66


    ld a, [$cfc0]
    or a
    ret z

    call $1a6a
    ld a, $fa
    call $0c74
    xor a
    ld [$cc66], a
    ld a, $82
    ld [$cc63], a
    ld a, $5d
    ld [$cc64], a
    xor a
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    ret


Jump_003_7d44:
    call $02c1
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld hl, $de80
    ld b, $40
    call $044b
    pop af
    ldh [rSVBK], a
    call $3525
    call $047b
    ld a, $0f
    call $04e7
    ld a, $02
    call Call_003_7a6b
    call Call_003_7db8
    ld a, $0d
    call $0c74
    ld a, $08
    call $2a20
    ld l, $00
    ld [hl], $01
    ld l, $02
    ld [hl], $0a
    ld a, $00
    ld [$cd00], a
    call Call_003_7a66
    call $3110
    xor a
    ldh [$a8], a
    ldh [$aa], a
    ld a, $15
    jp $02ea


    ld a, [$cbb9]
    cp $07
    ret nz

    call $353c
    ld hl, $cbb3
    ld [hl], $3c
    jp Jump_003_7a66


    call $2da2
    ret nz

    ld hl, $c2ee
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $f0
    call $0c74
    ld a, $2a
    jp $30cd


Call_003_7db8:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    ld bc, $0240
    call $0451
    ld hl, $dc00
    ld bc, $0240
    ld a, $02
    call $0452
    pop af
    ldh [rSVBK], a
    ret


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

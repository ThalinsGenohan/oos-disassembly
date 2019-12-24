; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $034", ROMX

    jr z, @+$72

    rrca
    add sp, -$50
    ld c, a
    ld h, b
    sbc a
    dec d
    nop
    ldh [$bf], a
    ret nz

    sbc a
    rst JumpTable
    rst JumpTable
    cp $e1
    or $e9
    call $eaf2
    push af
    ld b, h
    nop
    rst $38
    ld c, $ce
    ccf
    inc b
    add d
    ld a, l
    ld d, h
    xor e
    db $ed
    ld [de], a
    ld a, e
    add h
    cp $01
    ld bc, $7f15
    ld c, a
    rst $38
    dec l
    rst $38
    ld b, a
    cp a
    cp a

jr_034_4033:
    dec l
    rst $38
    rst AddAToHL
    xor a
    rst $30
    push de
    ld d, l
    rst $38
    ei
    push af
    ld [$ecfa], a

jr_034_4040:
    db $f4
    db $fc
    ld b, c
    nop
    ret nc

    xor a
    cp a
    ret nz

    ccf
    ret nz

    cpl
    dec d
    ld [$f40b], a
    push bc
    ld a, [$fc0b]
    adc b

jr_034_4054:
    add b
    ld d, b
    xor a
    add sp, $17
    xor a
    jr z, jr_034_4033

    xor a
    jr nz, @-$1f

    jr nz, jr_034_4040

    nop
    rst $38
    ld b, c
    nop
    cp $b1
    db $d3
    db $fc
    xor b
    rst $38
    pop de
    and b
    rst $38
    ld d, d
    db $fd
    push hl
    ld a, [$fc43]
    adc b
    nop
    nop
    rst $38
    ld b, b
    cp a
    rst $38
    jr z, jr_034_4054

    ld d, h
    xor e
    add b
    ld a, a
    ld d, d
    add h
    cp h
    ld b, d
    ld d, b
    add d
    rst $38
    ld a, a
    cp a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst JumpTable
    ccf
    rst JumpTable
    ccf
    ccf
    ld d, l
    ld d, l
    rst $38
    ei
    cp $fd

jr_034_409a:
    db $db
    ei
    db $fc
    cp $fe
    ld [hli], a
    nop
    adc d
    ld b, b
    rst $38
    rst $30
    ld b, l
    ld a, [$46f5]
    ld sp, hl

Call_034_40aa:
    add c
    cp $c3
    db $fc
    and e
    db $fc
    ld a, [hli]
    xor d
    rst $38
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $f040
    ld e, a
    ldh [$cf], a
    ld d, a
    ld hl, sp-$51
    ld l, a
    rst AddAToHL
    add sp, -$1d
    db $fc
    ld d, c
    xor $01
    ld d, c
    add b
    nop
    rst $38
    ld e, b
    and e
    ld l, $c1
    ld a, l
    ld b, c
    ld l, b
    jr nz, jr_034_409a

    ld b, h
    ld b, l
    nop
    ld a, a
    cp a
    rrca
    rst $38
    sbc a
    cp a
    ld c, a
    ccf
    daa
    rra
    inc sp
    rrca
    adc e
    rlca
    ld c, l
    scf
    rst $38
    rst JumpTable
    cp $df
    or $fe
    ei
    cp $40
    inc b
    ld hl, sp+$27
    adc a
    ldh a, [$d7]
    xor b
    xor a
    ld d, b
    ld d, a
    xor b
    adc a
    ldh a, [$a7]
    jp $a0fc


    nop
    ld bc, $fefe
    ld de, $03ee
    db $fc
    dec b

jr_034_4110:
    ld a, [$fc03]
    dec d
    ld [$f00e], a
    adc b
    nop
    ld b, l
    ld a, [$f4bb]
    ld a, [$fca3]
    ld c, l
    ld a, [c]
    or a
    add sp, -$36
    push af
    call c, Call_034_50e3
    nop
    ret nz

    ld [hl-], a
    inc [hl]
    rra
    ldh [rNR24], a
    ld [c], a
    dec e
    ld [c], a
    inc h
    db $db
    nop
    rst $38
    ld [bc], a
    db $fd
    ld d, b
    ld b, b
    rlca
    adc c
    adc c
    add l
    inc bc
    push bc
    inc bc
    ret


    db $e4
    inc bc
    inc [hl]
    add e
    jr z, jr_034_4110

    ld d, b
    nop
    rst $38
    ret nz

    and b
    jp nz, $a5fd

    ld a, [$fc43]
    pop bc
    cp $e3

jr_034_4157:
    db $fc
    pop hl
    cp $01
    ld b, b
    nop
    ld e, c
    and b
    rrca
    ldh a, [$d9]
    jr nz, jr_034_4157

    adc a
    inc b
    inc bc
    sbc d
    dec b
    db $fd
    ld [bc], a
    ld d, b
    ld a, [bc]
    rrca
    ld d, c
    or e
    db $e3
    rra
    rst AddAToHL
    cpl
    ld h, a
    sbc a
    add a
    ld a, a
    rst $38
    rst $38
    ld d, h
    rst $38
    nop
    ld hl, $15fe
    dec d
    cp a
    ld b, e
    rst $28
    rst $38
    nop
    rst $30
    rst $38

Call_034_4188:
    cp e
    rst $00
    call Call_034_76f3
    ld sp, hl
    nop
    dec sp
    call z, $e79a
    pop af
    rst $38
    sbc $ef
    nop
    db $eb
    rst $30
    ld [hl], a
    ld sp, hl
    ld a, [$ddfd]

jr_034_419f:
    cp $10
    db $fc
    rst $28
    db $fd
    ld a, [hl-]
    di
    db $e3
    rst $38
    rst JumpTable
    nop
    rst $38
    or b
    ret nz

    ret nc

    add sp, -$18
    db $f4
    ld [hl], h
    nop
    ld a, [$7dba]
    db $fd
    cp [hl]
    adc $ff
    ld h, a
    nop
    rst $38
    rla
    rst $38
    ld [hl], l
    adc a
    dec sp
    rst $00
    dec e
    nop
    db $e3
    adc l
    di
    rst $28
    pop af
    and $f9
    or $20
    ld sp, hl
    nop
    nop
    ld a, [bc]
    add b
    add b
    ld b, b
    ret nz

    nop

jr_034_41d7:
    ld de, $8040
    ret nz

    ld h, $a0
    jr nz, jr_034_419f

    ld hl, $a040
    ld h, c
    ret nc

    dec c
    ld a, [c]
    or l
    ld a, [$01d7]
    ld a, [$fae7]
    di
    cp $e3
    cp $23
    ld c, c
    pop af
    ld b, c
    di
    db $fc
    ld h, c
    db $eb
    db $f4
    ld hl, $f302
    db $ec
    rst JumpTable
    db $ec
    ccf
    rst $38
    nop
    db $10
    cp a
    and e
    add c
    rst JumpTable
    add c
    rst $28
    rst $38
    cp $41
    and b
    cp c
    dec l
    sbc a
    add c
    ld [hl], l
    nop
    ld a, [bc]
    jr nc, jr_034_41d7

    ld hl, $1820
    ldh [rNR42], a
    adc b
    ldh a, [$98]
    ldh [$90], a
    inc e
    ldh [$b0], a
    ret nz

    ld bc, $790a
    ld hl, $80f0
    ld b, h
    ldh a, [$3a]
    adc b
    cp b
    ret nz

    ld b, c
    call nz, $01f8
    call nz, $e4d8
    call c, $dce0
    ld [c], a
    ld hl, $de00
    ldh [$ce], a
    pop af
    rst $28
    ldh a, [$e7]
    ld hl, sp-$5a
    ld hl, $00ff
    dec c
    or $f9
    or l
    daa
    db $fd
    nop
    ld a, [c]
    db $fc
    di
    ei
    rst $30
    rst $38
    rst $30
    ld sp, hl
    add hl, bc
    rst $38
    db $fc
    rst $38
    cp $26
    rst $38
    ld a, [HeaderCartridgeType]
    cp [hl]
    rst $38
    ret nc

    rst $38
    rst $00
    rst $38
    ld l, a
    daa
    ld bc, $bc7f

jr_034_426e:
    ld a, a
    ld a, l
    cp $fd
    cp $79
    rlca
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc hl
    add b
    ld h, a
    ld a, [c]
    ld [hl], e
    jr nz, jr_034_42c4

    ld [hli], a
    cp $fd
    ld b, c
    rst $30
    inc de
    ld hl, sp-$0d
    db $fc
    ld h, c
    ei
    db $fc
    dec hl
    ld sp, $c000
    rst $38
    ld c, $f1
    cp a
    ret nz

    ld a, $c1
    add b
    ld hl, $21de
    cp $01
    ei
    dec b
    ei
    add hl, bc
    rlca
    ld d, b
    ldh [rNR10], a
    ld b, c
    sub b
    ld h, b
    and c
    nop
    ret nc

    jr nz, jr_034_426e

    jr nc, jr_034_4320

    add sp, $38
    ldh [rP1], a
    ld c, b
    or b
    add sp, $10
    ldh a, [$08]
    ld hl, sp+$00
    db $10
    ld hl, sp+$04
    rst $38
    ld b, b
    cp $ff
    db $fd

jr_034_42c4:
    cp $00  ; and a / or a
    ei
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$cf]
    ldh a, [rNR50]
    sbc a
    ldh [rNR42], a
    ccf
    ret nz

    ld hl, $807f
    add b
    and c
    ccf
    rst JumpTable
    ld [hl], c
    cp a
    or e
    ld a, l
    di
    nop
    ld a, l
    ld [hl], a
    ld sp, hl
    rst $30
    ld sp, hl
    rst $20
    ld sp, hl
    ld l, h
    db $10
    di
    rst $28
    ld a, [c]
    ld hl, $e2df
    ld e, d

jr_034_42f1:
    rst $20
    db $10
    ld e, h
    rst $20
    dec e
    ld b, c
    dec a
    rst $00
    rst $28
    rst $38
    and b
    ld hl, $41f7
    ei
    rst $38
    ld l, e
    sbc a
    di
    nop
    rrca
    db $fd
    rlca
    ei
    rlca
    cp $03
    dec a
    nop
    jp $e1df


    rst $28
    pop af
    xor $f1
    or $0a
    ld sp, hl
    sub [hl]
    ld sp, hl
    rst $38
    nop
    dec bc
    cp $c1
    ld a, [hl]

jr_034_4320:
    nop
    rst $38
    ld a, h
    rst $38
    cp h
    rst $38
    sbc c
    cp $e1
    nop
    sbc $b2
    xor h
    or b
    ret nz

    jr nc, jr_034_42f1

    jr nz, jr_034_4347

    ret nz

    ld h, b
    add b
    and c
    ld b, b
    ld b, c
    ret nz

    nop
    ld h, b
    add b
    add c
    and b
    rst $38
    rst $30
    rst $28
    rst $30
    ld l, a

jr_034_4344:
    nop
    rst $30
    rrca

jr_034_4347:
    rst $30
    rst $00
    ccf
    db $e3
    rra
    pop af
    nop
    rrca
    ei
    rlca
    db $fd
    inc bc
    cp $01
    rst $38
    pop bc
    dec [hl]
    ld bc, $f809
    rst $38
    ei
    db $fc
    ldh a, [rSCX]
    ld [hl], b
    di
    ld b, c
    and l
    ld h, c
    ld [hl], b

jr_034_4366:
    rst $38
    rst $30
    ld a, b
    nop
    rst $30
    jr c, jr_034_4344

    jr c, jr_034_4366

    jr @-$01

    cp $90
    ld hl, $fdfa
    ld hl, $fdfb
    di
    db $fd
    daa
    rst $30
    ld sp, hl
    ld hl, $f9ff
    add hl, hl
    dec l
    ld [hl], l

jr_034_4384:
    jr nz, jr_034_4384

    rst $38
    ld h, b
    dec sp
    rst $00
    rst JumpTable
    db $e3
    rst $38
    ccf
    db $e3
    rst $28
    inc a
    ld b, c
    cp a
    ld hl, $213f
    nop
    ld a, [hl]
    db $fd
    cp $7d
    ld a, a
    db $fc
    ccf
    db $fc
    add hl, bc
    db $fc
    nop
    db $fc
    ld [bc], a
    ld hl, $00fe
    ld hl, $ff21
    ld bc, $fd21
    inc bc
    ld a, a
    add e
    and c
    ld b, b
    ld a, l
    inc hl
    add c
    rst $38
    add c
    cp $80
    ccf
    ld c, c
    ret nz

    ld h, c
    rra
    ldh [$a1], a
    rrca
    ldh a, [rNR42]
    ld [$f08f], sp
    add a
    ld hl, sp+$21
    rst $00
    ld hl, sp-$1d
    inc h
    db $fc
    di
    ld b, c
    or a
    ld c, a
    ld hl, $6f9f
    add b
    ld hl, $6fd5
    db $dd
    ld h, a
    db $ec
    ld [hl], a
    db $ed
    nop
    db $76
    rst $20
    ld a, [hl]
    or e
    ld a, a
    cp b
    ld a, a
    rst $38
    ld b, d
    ccf
    pop hl
    sub a
    ld hl, sp-$49
    ret c

    ld hl, $8037
    ld b, c
    ld [hl], $d9
    sub $39
    rst $20
    add hl, sp
    rst $28
    ld bc, $cf71
    pop af
    ld c, l
    di
    adc $f2
    ld hl, $ca00
    or $dc
    db $e4
    call nc, $bcec
    or b
    dec d
    sbc h
    sbc h
    add b

jr_034_440f:
    ret nz

    nop
    nop
    inc de
    rst $38
    ld bc, $2011
    ld a, a
    add b
    ld hl, $c0bf
    rst JumpTable
    ldh [$ef], a
    nop
    ldh a, [$f7]

jr_034_4422:
    ld hl, sp-$07
    cp $f7
    jr jr_034_440f

    add hl, de
    jr jr_034_4422

    ld [$3961], sp
    ei
    inc b
    ld hl, $2594
    db $fd
    ld [bc], a
    ld bc, $ff0c
    nop
    rrca
    cp $ff
    ld b, b
    db $fc
    ld b, c
    ld hl, sp-$01
    pop af
    cp $c1
    cp $84
    ld a, $01
    rst $38
    sbc a
    db $fc
    ld hl, $fcdf
    nop
    call $edfe
    cp $e7
    db $fc
    ld b, e
    db $fc
    nop
    rrca
    ldh a, [$df]
    and b
    ld a, a
    add b
    ld [hl], d
    adc a
    nop
    xor $1f
    ret c

    ccf
    or [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld d, b
    cp $21
    add d
    ld hl, $80fc
    db $fc
    add h
    ld d, $f8
    add b
    ldh a, [rSTAT]
    ret nz

    ld hl, $8022
    ld c, b
    ld b, b
    dec h
    nop
    ldh [rSTAT], a
    ld h, b
    add b
    ld [hl], b
    inc d
    add b

jr_034_4486:
    ld sp, hl
    cp $21
    db $fd
    ld bc, $fc09
    rst $38
    ld l, b
    cp $01
    add hl, bc
    ret nz

    ccf
    ld hl, $3ffe
    pop bc
    ld bc, $cb3e
    ccf
    call c, $e03c
    nop
    ld bc, $100b
    db $10
    ldh a, [rP1]
    ld hl, $8070
    ret c

    add sp, $01
    jr z, jr_034_4486

    ret nc

    jr nc, @+$42

    ret nz

    nop
    nop
    daa
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst $38
    rst $38
    cp $00  ; and a / or a
    nop
    cp e
    rst $00
    call Call_034_76f3
    ld sp, hl
    dec sp
    call z, $e79a
    pop af
    rst $38
    sbc $ef
    db $eb
    rst $30
    nop
    dec b
    rst $38
    cp a
    rst $08
    rst AddAToHL
    rst $28
    db $eb
    rst $30
    ld [hl], l
    ei
    cp d
    ld a, l
    db $fd
    cp [hl]
    adc $67
    rst $38
    jp nc, $7fff

    cp a
    ld a, a
    ccf
    ld d, a
    ld d, h
    rst $38
    ld hl, sp-$02
    db $fd
    db $fc
    cp $fa
    db $fd
    cp $02
    add b
    ccf
    dec d
    ld [$d52a], a
    ld a, [de]
    push hl
    ret nz

    ret nz

    ld a, [hl]
    add c
    cp $01
    ld a, a
    add b
    nop
    adc d
    nop
    ld b, b
    cp a
    and b
    ld e, a
    add h
    ld a, e
    ld b, b
    cp a
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    nop
    adc d
    inc bc
    rlca
    ld hl, sp+$0b
    db $f4
    nop
    rst $38
    nop
    rst $38
    db $fc
    ld bc, $fcfe
    db $fc
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $30
    rst $38
    nop
    nop
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    or h
    ld c, e
    db $ec
    inc de
    db $fd
    ld [bc], a
    ld [$fc15], a
    inc bc
    nop
    ld d, h
    ccf
    cpl
    rst $38
    rrca
    rst $38
    xor a
    ld a, a
    sub a
    ld a, a
    rst JumpTable
    sub $d7
    jp c, Jump_034_7f2f

    rst $30
    rst $38
    cp $bf
    ld h, l
    dec b
    rst $38
    xor e
    rst $28
    push de
    ei
    rst $28
    ei
    cp $fb
    db $ec
    ld sp, hl
    rst $38
    push af
    rst $38
    cp a
    ld a, a
    cp a
    rst $38
    rst $38
    rst JumpTable
    rst $38
    ld [hl], l
    rst $38
    cp a
    rst $28
    rst $30
    nop
    dec h
    rst $38
    ld [hl], a
    ld sp, hl
    ld a, [$ddfd]
    cp $fc
    rst $28
    db $fd
    rst $30
    di
    db $e3
    rst JumpTable
    nop
    dec b
    ld sp, hl
    rla
    rst $38
    ld [hl], l
    adc a
    dec sp
    rst $00
    dec e
    db $e3
    adc l
    di
    rst $28
    pop af
    and $f6
    ld d, h
    jr z, @-$3f

    ld a, a
    rst $38
    ld e, a
    ccf
    rst JumpTable
    ccf
    rst JumpTable
    rst JumpTable
    rst JumpTable
    xor a
    rst JumpTable
    ld d, b
    db $10
    cp $f1
    pop af
    ei
    db $fc
    db $d3
    db $fc
    di
    db $fc
    ld sp, hl
    ld a, [$fdff]
    rst $38
    nop
    nop
    db $10
    rst $28
    ld b, $f9
    ld c, h
    or e
    cp d
    ld b, l
    ld a, l
    add d
    cp [hl]
    ld b, c
    ld e, a
    and b

jr_034_45bf:
    add hl, sp
    ret nz

    adc b
    nop
    add b
    ld a, a
    inc b
    ei
    ld a, a
    nop
    rst $38
    ld [$14f7], sp
    db $eb
    xor b
    ld d, a
    ld hl, sp+$07
    nop
    nop
    ld a, [bc]
    push af
    dec b
    ld a, [$e51a]
    dec l
    jp nc, $ec13

    jr nz, jr_034_45bf

    inc bc
    db $fc
    ld bc, $55fe
    ld de, $eb00
    ei
    rst $30
    rst $38
    ld e, a
    and b
    rst $38
    ld a, a
    add b
    rst $38
    ld [hli], a
    and d
    db $fc
    ldh a, [rIF]
    inc bc
    ld a, [$0305]
    inc bc
    inc bc
    ld a, [$0305]
    ld b, c
    dec b
    ccf
    db $d3
    db $e4
    rra
    pop af
    rra
    push bc
    xor d
    ld a, a
    adc e
    ld a, a
    db $ed
    rst AddAToHL
    ld [hl], l
    ld d, l
    rst $38
    ld a, e
    ld a, a
    ld a, a
    cp $fb
    ld a, [hl]
    ld a, l
    ld d, h
    nop
    rst $38
    ld h, d
    ret nz

    ld b, b
    add l
    ld a, [$f807]
    and e
    db $fc
    ld bc, $02fe
    db $fd
    dec b
    ld d, b
    ld a, a
    xor a
    rst $38
    ccf
    rst $38
    rst JumpTable
    xor a
    sbc a
    xor a
    srl a
    rst JumpTable
    ccf
    or $ff
    rst $38
    rst $30
    rst $30
    rst $38
    db $fc
    rst $38
    or $f9
    ld d, l
    ld d, l
    rst $38
    ld sp, hl
    db $fc
    cp $f7
    ld a, [$befc]
    ret nc

    ld h, a
    rst $30
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    dec d
    ld b, b
    db $fc
    rst $30
    ld hl, sp-$0d
    di
    di
    ei
    db $fd
    cp $ff
    cp $c0
    rst $38
    ld [bc], a
    xor b
    sbc a
    ld e, a
    rst $28
    rra
    rst $28
    rra
    rst $28
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rst JumpTable
    cpl
    db $76
    db $fd
    rst $38
    rst JumpTable
    rst $28
    rst $28
    ei
    inc b
    ld de, $10f0
    ldh [$98], a
    ldh [$0c], a
    call nz, $a4f8
    ld hl, sp-$13
    and [hl]
    ld hl, sp-$13
    and b
    ld bc, $030c
    inc bc
    ld a, $01
    ld a, a
    nop
    cp a
    nop
    ld a, l
    ld [bc], a
    db $eb
    inc d
    di
    nop
    xor d
    rst $38
    rla
    add sp, $07
    ld hl, sp-$69
    ld l, b
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    ld d, l
    ld d, l
    nop
    rst $38
    db $fd
    rst $30
    db $fd
    db $eb
    push af
    db $e3
    di
    ld b, l
    ld de, $fe01
    db $fc
    inc bc
    cp $fe
    ei
    nop
    or $a5
    ld [bc], a
    add $04
    db $10
    ccf
    sbc l
    ld a, a
    rlca
    rst $38
    sbc $db
    cpl
    and l
    ld e, a
    jp nz, $1fe5

    di
    rrca
    ld d, l
    push de
    rst $38
    xor e
    push af
    ld [$eeb5], a
    cp e
    ld d, [hl]
    adc b
    nop
    nop
    rst $38
    add hl, bc
    or $ff
    inc c
    di
    ld [hli], a
    db $fd
    pop bc
    cp $42
    db $fd
    and c
    cp $54
    nop
    rst $38
    rra
    rrca
    dec b
    adc e
    ld a, a
    add e
    ld a, a
    ld b, e
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ld l, a
    ld d, l
    rst $38
    ei

Jump_034_4700:
    ei
    cp a
    cp a
    rst JumpTable
    cp a
    jr z, jr_034_4707

jr_034_4707:
    rst $20
    rst $28
    ldh a, [$f8]
    ld hl, sp-$0a
    ld sp, hl
    db $fd
    ld a, [c]
    db $fc
    di
    ei
    rst $30
    rst $38
    rst $30
    ld d, b
    dec b
    rst $38
    rst $00
    ld l, a
    cp [hl]
    ld a, a
    cp h
    ld a, a
    ld a, l
    cp $fd
    cp $fc
    cp $5d
    and b
    rst $38
    db $fc
    cp $fe
    cp $fe
    db $fd
    cp $fd
    cp $0a
    nop
    ld a, $0e
    pop af
    cp a
    ret nz

    pop bc
    pop bc
    sbc $21
    cp $01
    ei
    dec b
    ei
    rlca
    ld c, b
    nop
    ccf
    rst $08
    ld [hl], a
    rst $28
    rst $20
    ld c, a
    or a
    xor a
    rla
    rst $00
    rrca
    adc a
    rlca
    jp $d707


    ld b, b
    rst $38
    ld a, [$a8ef]
    jp nc, $0ffd

    ldh a, [$9f]
    ldh [$50], a
    nop
    ld hl, sp-$7a
    rst $00
    add d
    db $fd
    ld b, l
    ld a, [$fd02]
    add e
    db $fc
    dec b
    ld a, [$fc03]
    adc b
    nop
    adc e
    ld [hl], h
    rst $00
    jr c, jr_034_47eb

    inc bc
    db $fc
    xor a
    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld d, l
    nop
    nop
    rst $38
    xor a
    ld e, a
    ccf
    rst $30
    ld [$20de], sp
    xor a
    ld d, b
    ld c, a
    or b
    ld d, l
    ld d, l
    nop
    rst $28
    di
    ld a, a
    rst $38
    xor a
    sbc a
    dec [hl]
    dec bc
    ld d, l
    ld d, l
    nop
    rst AddAToHL
    pop hl
    ld [c], a
    call $fffb
    rst $38
    rst $38
    ld bc, $0310
    nop
    rst $38
    and b
    ld e, a

jr_034_47ad:
    ret nc

    cpl
    call c, $05ba
    ld e, h
    cp d
    dec b
    call nc, $502b
    ld bc, $a8ff
    ld de, $7ea1
    ld c, e
    or h
    rst $20
    jr jr_034_4841

    add c
    inc a
    jp $0800


    ld [hli], a
    db $10
    ld bc, $40fe
    rst $38
    rst $28
    nop
    rst $38
    ld [$eff7], sp
    jr z, jr_034_47ad

    rst $28
    nop
    ld d, h
    ld a, a
    push af
    rrca
    db $e3
    rra
    rst $30
    rra
    srl a
    cp a
    cp a
    rst JumpTable
    cpl
    rst $38
    ld c, a
    rst $20
    rst $38
    db $fd

jr_034_47eb:
    ei
    db $fd
    ei
    ei
    ld d, l
    nop
    rst $30
    rst $38
    rst $28
    ld l, a
    rrca
    rst $00
    ccf
    db $e3
    rra
    pop af
    rrca
    ei
    rlca
    ld de, $fc55
    ld hl, sp-$01
    ei
    ldh a, [rIE]
    ei
    di
    di
    ei
    di
    and l
    ld d, b
    db $fd
    cp $fe
    ld a, [$fbfa]
    di
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    ld bc, $f350
    dec sp
    rst $00
    rst JumpTable
    db $e3
    rst $38
    db $e3
    rst $28
    db $fd
    db $fd
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    ld d, h
    ld bc, $a703
    pop bc
    pop bc
    db $e3
    ld bc, $01d1
    pop hl
    ld bc, $01f3
    pop af
    adc d
    nop
    ccf
    ret nz

    ld a, a
    add b
    ret nz

    ret nz

    adc [hl]
    pop af

jr_034_4841:
    push hl
    ld a, [$fbd4]
    xor d
    db $fd
    nop
    nop
    ld d, h
    xor e
    ld a, $c1
    ld l, b
    sub a
    sbc h
    inc bc
    jp c, Jump_034_7405

    adc e
    sbc c
    ld h, [hl]
    and $1d
    ld d, b
    ld b, b
    db $fd
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    dec b
    ld a, [$2112]
    cp $54
    rst $38
    xor d
    ld a, a
    add b
    dec b
    rst $38
    nop
    cp a
    ld b, b
    ld d, e
    xor h
    rlca
    ld hl, sp+$4a
    push af
    ld h, c
    cp $34
    ld a, d
    ld d, l
    ld b, b
    nop
    ld bc, $8102
    and l
    set 5, h
    ld bc, $03d4
    ld d, b
    xor a
    nop
    dec d
    rst $38
    jp hl


    ld d, $f8
    rlca
    call nc, $a82b
    ld d, a
    add e
    ld a, [hl]
    ld [$5a04], sp
    nop
    nop
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, l
    add d
    jp nc, $f52d

    ld a, [bc]
    ld c, a
    or b
    add e
    ld a, h
    nop
    nop
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    db $eb
    inc d
    db $d3
    inc l
    add e
    ld a, h
    ld h, c
    sbc [hl]
    ld l, c
    sub [hl]
    or c
    ld c, [hl]
    nop
    ld de, $d0e0
    cpl
    ld a, l
    add d
    sbc $21
    cp a
    ld b, b
    ld [hl], l
    add b
    inc de
    add hl, sp
    ret nz

    db $10
    ld b, c
    nop
    rst $38
    ld e, a
    rra
    di
    xor a
    ld [hl], a
    rrca
    push bc
    ccf

jr_034_48d7:
    ld c, e
    cp a
    rst $20
    rra
    adc b
    ld a, a
    rst $38
    sub b
    rst $38
    rst $28
    db $ed
    push bc
    ei
    reti


    cpl
    ld a, [bc]
    xor d
    rst $38
    db $fd
    inc bc
    cp $01
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    nop
    di
    db $fc
    db $fc
    db $fc

jr_034_48f9:
    ld [hl], b
    rst $38
    rst $30
    ld a, b
    rst $30
    jr c, jr_034_48d7

    jr c, jr_034_48f9

    jr @-$7e

    rra
    rst $38
    ld sp, hl
    ei
    db $fd
    ld a, [$fdfd]
    cp $fd
    cp $fe
    dec b
    ld b, b
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, [$7efa]
    cp $7d
    ld a, a
    db $fc
    ccf
    db $fc
    ld d, l
    ld b, b
    add e
    ld a, e
    ld [hl], a
    ld a, e
    ld a, e
    ld a, c
    ld [hl], e
    add c
    ld sp, hl
    add c
    ld a, [c]
    add c
    ld b, l
    ld b, b
    cp $c1
    and b
    rst $38
    ld b, c
    ld bc, $0301
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$15
    nop
    ld a, $c6
    ccf
    jp z, $ccce

    call z, $943c
    ld a, h
    sub b
    ld a, h
    cp b
    ld l, b
    dec b
    jr z, jr_034_4957

    dec a
    ld a, a
    rrca
    ccf
    inc bc
    inc bc
    dec b

jr_034_4957:
    ld b, $04
    inc c
    rrca
    ld [$0a55], sp
    rst $38
    cp a
    cp $f8
    nop
    cp a
    ld a, a
    cp $01
    nop
    nop
    jr jr_034_4970

    ccf
    dec b
    rst $38
    ld a, [c]
    rst JumpTable

jr_034_4970:
    ld [hl], $cf
    ld e, c
    cp [hl]
    ldh [rIE], a
    ret nz

    ret nz

    ld e, h
    nop
    rst $38
    ld a, a
    db $dd
    ld a, e
    add a
    sbc a
    ld h, e
    dec c
    di
    dec b
    ei
    dec b
    ei
    dec b
    ld d, l
    rst $38
    add l
    ld a, [$fd52]
    and b
    ret nz

    pop hl
    jp hl


    jp nc, $00ef

    nop
    ld a, [$fd05]
    ld [bc], a
    rst $28
    db $10
    ld [hl], a

jr_034_499d:
    adc b
    cpl
    ret nc

    rlca
    ld hl, sp-$5d
    db $fc
    ldh a, [$bf]
    ld [$d710], sp
    ld [de], a
    ret nz

    ld h, c
    add b
    nop
    db $fd
    ld [bc], a
    add hl, sp
    add $28
    sub b
    ld l, a
    nop
    rst $38
    jr jr_034_49b9

jr_034_49b9:
    rra
    ld e, c
    ld h, $a0
    nop
    xor [hl]
    ld de, $0af5
    ld e, h
    and e
    jr z, jr_034_499d

    nop
    rst $38
    nop
    nop
    ld a, l
    add d
    sbc $21
    ei
    inc b
    push de

jr_034_49d1:
    ld a, [hli]
    ld a, [$f405]
    dec bc
    and b
    ld e, a
    add b
    ld a, a
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
    adc d
    add b
    rst $30
    jr jr_034_49d1

    jr jr_034_49f4

    ld [$ff08], sp
    nop
    ei
    inc b
    ei
    inc b

jr_034_49f4:
    ld d, h
    inc d
    db $fc
    sbc a
    sbc a
    rst JumpTable
    call $edfe
    cp $e7
    ld b, e
    rrca
    ldh a, [rHDMA4]
    nop
    add e
    ld hl, sp-$0a
    db $fc
    db $fc
    add a
    ld hl, sp-$79
    ldh a, [$8f]
    ldh a, [$8f]
    ret nz

    cp a
    nop
    nop
    rrca
    ldh a, [rNR34]
    pop hl
    ld a, $c1
    inc a
    jp $8779


    inc sp
    rst $08
    and e

jr_034_4a21:
    ld e, a
    rlca
    rst $38
    ld [bc], a
    dec b
    rst $38
    jr nz, jr_034_4a21

    ld [hl], b
    ret nc

    ld e, b
    ldh a, [$a0]
    ccf
    ldh [$c7], a
    ld a, b
    add b
    ld b, b
    and b
    nop
    rrca
    ld [$1318], sp
    inc e
    ret nc

    rra
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ld b, b
    rst $38
    add c
    ld d, l
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    nop
    nop
    nop
    nop
    nop
    ld a, [hli]
    xor d
    nop
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    nop
    di
    dec b
    ei
    dec c
    rrca
    rrca
    dec de
    rst $20
    rra
    rst $20
    rla
    rst $28
    ccf
    rst $08
    rst $38
    ld [c], a
    rst $38
    ei
    ei
    db $fd
    db $fc
    ld d, l
    ld [hl], a
    rst $38
    call nc, $dcb0
    or [hl]
    ei
    db $ed
    ld bc, $ff75
    ld [hl], a
    adc b
    ld e, $e1
    ld b, $fb
    xor c
    jp nc, $f9ef

    add b
    ld d, l
    rst $38
    nop
    ld [hl], a
    adc b
    rlca
    ld hl, sp+$01
    cp $80
    ld b, h
    or l
    db $eb
    nop
    nop
    ret nc

    cpl
    xor d
    ld d, l
    db $e4
    dec de
    add $39
    adc b
    ld [hl], a
    dec bc
    db $f4
    ld b, b
    rst $38
    sub l
    ld a, [$0028]
    ld a, a
    rst $38
    nop
    add b
    add b
    cp a
    ret nz

    rst JumpTable
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$07
    cp $2a
    xor d
    db $fd
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, l
    ld bc, $feff
    db $fc
    db $fc
    ld hl, sp-$0f
    cp $c1
    cp $02
    db $fd
    ld bc, $1020
    ld a, a
    rst JumpTable
    and b
    add b
    ld [hl], d
    adc a
    xor $1f
    ret c

    ccf
    or [hl]
    ld a, [hl]
    rst $38
    cp $ff
    add d
    nop
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    db $10
    ld b, h
    ld a, a
    ld c, a
    cp a
    adc l
    dec de
    rst $38
    ld de, $98ff
    ld c, $ff
    adc a
    ld c, a
    cp a
    ld e, l
    ld d, l
    rst $38
    ldh a, [$fd]
    cp $7c
    jr jr_034_4b21

    ldh [rHDMA5], a
    ld d, l
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc bc

jr_034_4b21:
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rla
    ldh a, [rP1]
    nop
    ld b, $06
    ld h, [hl]
    ld l, d
    ld e, $62
    inc e
    db $e4
    inc a
    call nz, $8878
    ld d, b
    inc b
    rst JumpTable
    ccf
    ccf
    ld l, a
    cp a
    ld l, a
    xor a
    and a
    ld l, a
    rst $30
    ld [hl], a
    ld b, a
    rst $20
    rst $20
    dec e
    nop
    rst $38
    db $fd
    cp $fe
    cp $f8
    db $fc
    rst $28
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    dec b
    ld d, l
    nop
    rst $38
    ccf
    ei
    rlca
    rst $38
    call c, $c231
    ld [$f030], sp
    nop
    rst $38
    rst JumpTable
    ccf
    rst $30
    rrca
    ld a, e
    rlca
    db $fd
    inc bc
    ld e, [hl]
    ld bc, $004f
    rst $38
    ret nz

    rst $38
    rst $08
    ccf

jr_034_4b77:
    rst $30
    adc a
    cp e
    rst $00
    ld bc, $ff55
    pop bc
    cp $e3
    db $fc
    and c
    cp $f8
    db $f4
    call c, $ecf4
    nop
    ld d, l
    cp $0d
    ld a, [c]
    or l
    ld a, [$fad7]
    rst $20
    ld a, [$e3f3]
    di
    pop af
    ld a, a
    rst $38
    rst $38
    ccf
    ld sp, $fffe
    ld hl, $dfa0
    rst $38
    sbc a
    ld b, c
    inc h
    jr nc, jr_034_4b77

    ld hl, $e718
    ld hl, $f788
    nop
    sbc b
    rst $20
    sub b
    rst $28
    or b
    rst $08
    ld l, a
    sbc a
    sub b
    ld hl, $8f77
    ld hl, $c73b
    ccf
    jp $1d02


    db $e3
    rrca
    pop af
    ldh [rIE], a
    ld hl, $88f0
    ld b, c
    ld hl, sp-$01
    db $fc
    ld b, c
    ld a, [$00ff]
    add b
    ld bc, $010b
    rst $38
    rlca
    rst $38
    db $10
    rra
    nop
    nop
    rrca
    jr nz, jr_034_4c1f

    ld b, c
    ld e, [hl]
    ld b, e
    ld a, l
    adc [hl]
    nop
    or [hl]
    add h
    db $fc
    inc b
    db $fc
    inc bc
    dec e
    inc de
    nop
    dec a
    dec h
    ld a, e
    add $fb
    ld a, [bc]
    or $0c
    nop
    or $14
    db $ec

jr_034_4bfb:
    jr z, @-$26

    rst $30
    ld a, a
    or $00
    ld h, a
    ld e, l
    ld e, [hl]
    xor a
    adc h
    sbc e
    ld e, h
    ei
    nop
    inc c
    di
    inc b
    rst $38
    inc b
    cp $00  ; and a / or a
    db $fc
    jr nz, jr_034_4c14

jr_034_4c14:
    rst $38
    ld bc, $600b
    nop
    ret


    nop
    di
    nop
    nop
    rst $20

jr_034_4c1f:
    nop
    rst $28
    nop
    cp $03
    rst $30
    nop
    ld c, $dd
    ld a, $8f
    nop
    rst $08
    nop
    rst JumpTable
    nop
    nop
    ei
    inc b
    rst $30
    ld [$18ef], sp
    ei
    nop
    inc a
    rst $20
    ld a, h
    jp $a1ff


    ccf
    pop af
    ld de, $f81f
    rrca
    ld hl, $07f4
    db $fc
    ld b, c
    nop
    sbc l
    rst $38
    or d
    rst $38
    call nc, $daff
    rst $38
    ld b, b
    db $fc
    ld b, c
    or $ff
    cp $ff
    pop af
    cp $24
    di
    db $fc
    ld h, c
    db $eb
    db $f4
    ld hl, $ecf3
    dec b
    rst JumpTable
    db $ec
    rst $38
    rst $38
    cp a
    add c
    rst JumpTable
    add c
    add hl, de
    rst $28
    rst $38
    sbc a
    add l
    nop
    ld a, [bc]
    or b
    rst $08
    pop hl
    ld b, b
    jr nc, jr_034_4bfb

    ld b, $f9
    rlca
    ld hl, sp+$03
    db $fc
    inc h
    ld bc, $21fe
    nop
    rst $38
    ld h, c
    ld sp, hl
    rst $38
    db $10
    ld hl, sp-$01
    ld a, b
    dec h
    ld a, a
    rst $38
    ld a, a
    pop af
    nop
    ccf
    ldh [$3f], a
    ld h, b
    cp a
    ld [$f00f], sp
    jr z, @+$01

    ret nz

    ld b, c
    add b
    ld b, e
    jr nc, @+$01

    inc c
    db $10
    rst $28
    ld [$21f8], sp
    db $10
    ldh a, [rNR41]
    ldh [$80], a
    ld hl, $c040
    ld b, c
    pop bc
    add c
    add c
    jr z, jr_034_4cb7

jr_034_4cb7:
    ret c

    ld d, d
    or e
    ld h, e
    or e
    and d
    ld h, [hl]
    jp Jump_034_4700


    add a
    rst $00
    rlca
    add a
    ld a, a
    rst $38
    db $e3
    nop
    inc e
    rst $20
    inc e
    ccf
    inc c
    db $dd
    ld e, [hl]
    cp a
    db $10
    cp [hl]
    cp $ff
    add b
    nop
    db $fd
    inc bc
    ei
    ld [$f707], sp
    rrca
    rst $38
    ld b, c
    db $ec
    ld e, $7d
    nop
    sbc a
    rst $38
    ld sp, hl
    rst $38
    sbc e
    cp $eb
    sub $04
    rst $38
    ld h, d
    ld a, a
    ldh [rIE], a
    ld hl, $3320
    nop
    rst $38
    db $fc
    rst $38
    call nz, $befd
    rst $30
    cp $00  ; and a / or a
    jp c, $fddf

    rst $38
    ld [hl], h
    rst $30

jr_034_4d05:
    ld c, b
    rst $08
    jr nz, jr_034_4d05

    rlca
    and c
    rst $30
    rlca
    ld a, [hl]
    ld c, $dc
    ld b, $9c
    ld a, [$7fba]
    rst $38
    ld h, c
    jr nz, jr_034_4d38

    inc c
    rra
    ccf
    ccf
    ld a, a
    ld l, b
    ld b, b
    cp $ff
    nop
    db $fd
    cp $fb
    db $fc

jr_034_4d27:
    rst $30
    ld hl, sp-$11
    ldh a, [rP1]
    rst $08
    ldh a, [$3f]
    rst JumpTable
    ld [hl], c
    cp a
    or e
    ld a, l
    nop
    di
    ld a, l
    ld [hl], a

jr_034_4d38:
    ld sp, hl
    rst $30
    ld sp, hl
    rst $20
    ld sp, hl
    ld a, [bc]
    ld l, h
    di
    rst $28
    rst $38
    ld hl, $41f7
    ei
    nop
    rst $38
    ld l, e
    sbc a
    di
    rrca
    db $fd

jr_034_4d4d:
    rlca
    rst $38
    and b
    nop
    dec bc
    cp $41
    or b
    rst $08
    jr nc, jr_034_4d27

    jr nz, jr_034_4d6a

    rst JumpTable
    ld h, b

jr_034_4d5c:
    sbc a
    and c
    ld b, b
    cp a
    nop
    rst $38
    sub b
    ld bc, $100a
    rst $28
    add hl, sp
    ld d, b
    cp a

jr_034_4d6a:
    ld d, b
    cp [hl]
    nop
    jr nc, jr_034_4d4d

    jr nc, jr_034_4d4d

    inc a
    sbc $33
    rst JumpTable
    ld b, h
    jr nc, jr_034_4db9

    inc bc
    inc bc
    ld bc, $0080
    inc bc
    nop
    ld b, $8f
    or b
    ld hl, sp-$40
    ldh [rP1], a
    rst $38
    add b
    and c
    ldh a, [rIE]
    rra
    ccf
    ld b, $0f
    inc b
    ld b, b
    ld b, $2a
    jr c, jr_034_4d5c

    rlca
    rst $38
    ccf
    rst $38
    nop
    di
    rst $38
    and d
    rst $30
    inc h
    dec h
    ld c, c
    ret


    add hl, bc
    dec a
    db $fd
    ld a, a
    rst $38
    and b
    rst $30
    rst $30
    inc hl
    nop
    ld a, a
    ld a, a
    ld a, h
    sbc a
    cp h
    call c, $fcdc
    jr nc, @-$02

    cp $40
    ld [hl], h

jr_034_4db9:
    db $fd
    ret nz

    pop af
    nop
    nop
    ldh a, [rNR41]
    ld h, b
    jr nc, jr_034_4df3

    nop
    nop
    db $10
    ld [bc], a
    sub c
    rrca
    rst $38
    nop
    pop af
    jr nc, jr_034_4df1

    ld bc, $4180
    inc bc
    nop
    rlca
    pop bc
    rst $38
    ld bc, $00ff
    inc bc
    cp $b1
    or c
    cp d
    cp e
    and h
    and a
    nop
    cp b
    cp a
    and b
    cp a
    jr nz, jr_034_4e27

    ld h, b
    ld a, a
    sbc d
    ld hl, $ffff

jr_034_4dee:
    ld [hli], a
    pop hl
    ccf

jr_034_4df1:
    ld b, c
    sbc a

jr_034_4df3:
    ld c, c
    ldh [rNR42], a
    ccf
    ret nz

    ld hl, $807f
    and c
    jr nz, @-$0f

    ld a, [c]
    ld hl, $e2df
    ld e, d
    rst $20
    ld e, h
    jr nz, jr_034_4dee

    dec e
    ld b, c
    dec a

jr_034_4e0a:
    rst $00
    ei
    rlca
    cp $00  ; and a / or a
    inc bc
    dec a
    jp $e1df


    rst $28
    pop af
    xor $01
    pop af
    or $f9
    sub [hl]
    ld sp, hl
    cp $ff
    ld hl, $7e00
    rst $38
    ld a, h
    rst $38
    cp h
    rst $38

jr_034_4e27:
    sbc c
    cp $00  ; and a / or a

jr_034_4e2a:
    pop hl
    sbc $b2
    db $ed
    ld b, b
    cp a
    ret nz

    ccf
    inc h
    add b
    ld a, a
    ld h, c
    nop
    rst $38
    and c
    jr nc, jr_034_4e0a

    add b
    inc hl
    inc h
    db $db
    jr nz, @-$1f

    jr jr_034_4e2a

    jr c, jr_034_4e47

    rst $00
    ld d, h

jr_034_4e47:
    xor e
    ld de, $1211
    jr nz, jr_034_4e60

    add hl, bc
    inc d
    dec d
    inc h
    daa
    and c
    nop
    ld a, a
    dec a
    add b
    ld bc, $7b0c
    add a
    ld a, $c3
    dec e
    pop hl
    dec e

jr_034_4e60:
    db $10
    db $e3
    rrca
    pop af
    and c
    ld a, [hl]
    jp nc, $de95

    nop
    ld h, $f5
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02fd
    inc bc
    ei
    rlca
    rst $38
    ld a, a
    rst $38
    jr nz, jr_034_4efa

    jr @+$81

    rst $30
    ld [hl], a
    ld b, [hl]
    and b
    ld hl, sp-$02
    ld sp, hl
    nop
    rst $30
    ld sp, hl
    db $fd
    di
    rst $28
    di
    ei
    rst $20
    ld b, b
    rst $38
    ld hl, $c0ef
    ret nz

    ldh [$e0], a
    ldh a, [rP1]
    ldh a, [$df]
    rst $38
    ld c, $fe
    add [hl]
    ld a, [hl]
    ld [hl], h
    nop
    adc h
    cp b
    ret z

    dec b
    cp $1f
    db $fc
    ld a, a
    nop
    db $fc
    ld a, [$7ffd]
    ld sp, hl
    rla
    ld sp, hl
    dec e
    dec b
    ld [hl], e
    rra
    inc de
    ldh [rIE], a
    and c
    ldh a, [rSTAT]
    ld bc, $ff30
    ret c

    ccf
    ccf
    rst $38
    rra
    ld bc, $090b
    rrca
    rst $38
    ccf
    ret nz

    ld h, c
    rra
    ldh [$a1], a
    add hl, bc
    rrca
    ldh a, [$b7]
    ld c, a
    ld hl, $6f9f
    ld hl, $d500
    ld l, a
    db $dd
    ld h, a
    db $ec
    ld [hl], a
    db $ed
    db $76
    ld a, [bc]
    sub a
    ld hl, sp-$49
    ret c

    ld hl, $4137
    ld [hl], $00
    reti


    sub $39
    rst $20
    add hl, sp
    cp h
    di
    sbc a
    nop
    cp $9f
    ldh [$8f], a
    ldh a, [$97]
    add sp, -$31

jr_034_4efa:
    ld bc, $a7f0
    ld hl, sp-$3d
    db $fc
    ld bc, $21fe
    ld [bc], a
    ld de, $03ee
    db $fc
    dec b
    ld a, [$1523]
    nop
    ld [$f00e], a
    db $f4
    dec bc
    ld l, h
    add e
    ldh [$08], a
    rrca
    ret z

    rlca
    ret c

    ld b, c
    sbc c
    rlca
    sbc d
    ld de, $4407
    ld b, a
    ld b, c
    ld b, l
    add d
    add e
    ld h, c
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld bc, $0009
    rst $38
    add c
    rst $30
    nop
    ld [$08ff], sp
    ei
    inc b
    rst $30
    inc b
    rst $38
    ld [$f10f], sp
    rlca
    ld sp, hl
    ld hl, $d927
    ld b, $00
    ld hl, sp+$46
    cp c
    inc bc
    db $fc
    inc de
    db $ec
    rlca
    jr nz, @-$07

    rrca
    inc sp
    rst $28
    rra
    rst $38
    rra
    ld a, a
    ld bc, $df9f
    rst $38
    rst $38
    or e
    set 3, a
    ld b, l
    add b
    inc hl
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$06
    ldh [rP1], a

jr_034_4f67:
    xor $80
    cp [hl]
    inc l
    rst $28
    pop af
    ld e, $e3
    ld bc, $f31c
    adc h
    rst $38
    add b
    cp a
    ret nz

    ld hl, $df00
    ldh [$78], a
    ret z

    jr nc, jr_034_4f67

    sbc b
    ld [hl], b
    nop
    call nc, $ec3c
    inc e
    push hl
    dec e
    cp a
    ld a, a
    nop
    sbc $61
    inc d
    rla
    dec sp
    inc a
    ld sp, $003f
    db $76
    ld c, a
    add sp, -$61
    ldh a, [$7f]
    ret nz

    rst $38
    nop
    ld h, b
    rst $38
    cp $1f
    ld sp, hl
    rrca
    ei
    db $fc
    nop
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    cp $01
    sub b
    ld hl, $ff0f
    ld hl, $ff8f
    rst $00
    ld a, a
    inc d
    daa
    rst $38
    and a
    ld b, e
    ld [hl], a
    dec l
    ldh a, [$8f]
    db $10
    ldh a, [$87]
    ld hl, sp+$21
    rst $00
    ld hl, sp-$1d
    db $fc
    ld b, b
    di
    ld b, c
    rst $20
    ld a, [hl]
    or e
    ld a, a
    cp b
    ld a, a
    jr nz, @+$01

    ccf
    pop hl
    rst $28
    ld [hl], c
    rst $08
    pop af
    ld c, l
    nop
    di
    adc $f3
    rst $08
    di
    set 6, a
    rst JumpTable
    nop
    rst $20
    rst AddAToHL
    rst $28
    add [hl]
    ld sp, hl
    db $d3
    db $ec
    push hl
    nop
    ld a, [$e7b8]
    sub $eb
    reti


    rst $20
    call z, $f300
    add sp, -$09
    ld e, $e0
    inc d
    add sp, $0c
    nop
    ldh a, [$78]
    add b
    add hl, hl
    ret nz

    db $db
    rst $20
    rst $38
    nop
    rst $38
    cp $ff
    ld a, [de]
    rlca
    inc e
    rlca
    jr nc, jr_034_5014

    rrca
    ld d, b

jr_034_5014:
    ccf
    ld b, b
    rst $38
    nop
    add c
    ld bc, $1900

jr_034_501c:
    nop
    jr jr_034_501f

jr_034_501f:
    jr z, jr_034_5021

jr_034_5021:
    inc e
    nop
    nop
    dec c
    nop
    ld d, $00
    cpl
    nop
    ld e, $04
    nop
    ld a, l
    add d
    ei
    ld b, d
    ld e, a
    ld [hl-], a
    dec sp
    ld c, $08
    ld c, $01
    add hl, bc
    ld bc, $1120
    ld b, e
    cp h
    nop
    ld d, e
    xor h
    ld h, e
    sbc h
    ld [hl], c
    adc [hl]
    ld hl, $80de
    inc hl
    ld l, b
    sub a
    jr nc, jr_034_501c

    sbc l
    and e
    adc $00
    ld d, c
    rst $00
    ld c, b
    cp [hl]
    ld a, $a0
    ld h, b
    db $fc
    nop
    inc a
    rst $38
    ccf
    db $d3
    inc sp
    ld bc, $80fd
    nop
    cp h
    ld b, b
    cp $a0
    ld a, [hl]
    ldh [$ac], a
    ld [hl], e
    nop
    ld a, e
    scf
    scf
    sub e
    sub e
    rst JumpTable
    ldh [$ef], a
    jr nc, @-$0e

    rst $38
    ld bc, $4b09
    ld a, a
    xor [hl]
    ld a, l
    ccf
    nop
    di
    rst $38
    rst $08
    db $d3
    cp [hl]
    ld a, a
    rst $38
    adc c
    nop
    ld a, a
    db $fc
    inc bc
    ldh [rIE], a
    rst $00
    ld hl, sp-$61
    ld bc, $bfe0
    ret nz

    rst $38
    ret nz

    rst JumpTable
    ld h, b
    daa
    ld [$c03f], sp
    ld a, h
    add e
    inc sp
    pop af
    rrca
    jp $3f00


    rlca
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    ccf
    inc h
    rst $38
    rst $28
    ld b, b
    rst $08
    rst JumpTable
    ld hl, $b787
    nop
    inc bc
    dec sp
    ld de, $406d
    ld a, $f9
    cp $a1
    ld hl, $01fd
    add hl, bc
    db $fc
    rst $38
    rst $38
    ccf
    ld hl, $fe01
    ccf
    pop bc
    ld a, $c3
    ccf
    rst JumpTable
    add hl, hl
    ld b, d
    rra
    ld hl, $efdf
    cpl
    rst JumpTable
    add hl, hl
    ld a, a
    ret nz

    scf
    ret nz

    db $d3
    rst $38
    xor h
    rst $38

jr_034_50e0:
    jp nc, $00ff

Call_034_50e3:
    push bc
    rst $38
    adc d
    rst $38
    pop bc
    cp $b3
    db $fc
    db $10
    push hl
    ld a, [$4ffe]
    ret nc

    rst $38
    and b
    rst $38
    ld a, [de]
    nop
    rst $38
    add b
    ld b, e
    ld b, c
    jr nz, jr_034_513d

    ld [$0000], sp
    ld d, b
    nop
    ld l, d
    nop
    push af
    nop
    ld a, a
    add b
    ld c, a
    xor e
    nop
    ld e, $10
    ld a, [hli]
    nop
    inc a
    ld [bc], a
    db $10
    ld l, d
    jr nc, jr_034_50e0

    ld h, b
    sbc l
    ld hl, $0001
    ld d, c
    nop
    jr nc, jr_034_512e

    dec l
    scf
    rrca
    ld a, $00   ; xor a
    ld e, [hl]
    inc a
    ld a, h
    ld a, l
    dec a
    ld a, $be
    ld [hl], b
    nop
    rrca
    ld hl, sp-$79

jr_034_512e:
    db $f4
    adc e
    cp c
    add $fc
    nop
    jp $e3dc


    xor $f1
    db $ed
    ld [c], a
    ld [hl], c
    nop

jr_034_513d:
    sbc l
    ld a, c
    sub a
    inc a
    jp nc, $eb1c

    ld d, h
    nop
    xor d
    adc b
    db $76
    pop bc
    ccf
    pop hl
    dec e
    rlc b
    rst $08
    ret


    call $fee8
    add sp, -$11
    ld [$fd00], a
    xor $e9
    xor [hl]
    cp b
    xor e
    cp e
    cp a
    nop
    ldh [rVBK], a
    ldh a, [$87]
    ld hl, sp-$80
    rst $38
    ret nz

    nop
    rst $38
    pop bc
    rst $38
    ld a, [$cffe]
    rst $08
    rst $38
    ld b, d
    nop
    ld h, c
    ld a, a
    add b
    dec de
    db $e4
    inc sp
    ld a, b
    db $10
    ld a, a
    add $c7
    xor a
    db $fc
    inc bc
    ldh [$1f], a
    ld [$8f70], sp
    db $10
    rst $28
    ld a, [hli]
    ccf
    rst $38
    rrca
    jr z, @+$01

    rra
    ld b, l
    ld a, a
    pop bc
    ld b, h
    cp e
    ld b, b
    nop
    cp a
    db $e4
    dec de
    push hl
    sbc d
    call nc, $ceeb
    ld bc, $9ed1
    and c
    cp h
    ld b, e
    cp $ff
    pop hl
    xor d
    ret nz

    rra
    and c
    rst $28
    inc hl
    rrca
    ld hl, $417f
    adc a
    ld [hl], d
    ld a, [$7fff]
    rst $38
    di
    sbc $01
    ld sp, hl
    cp $bc
    rst $38
    jp nc, $c8ff

    daa
    jr z, @+$01

    cp $41
    ld hl, sp+$39
    add b
    ld [hl], a
    adc d
    nop
    ld a, [hli]
    db $dd
    and h
    rst $38
    adc d
    rst $38
    push hl
    rst $38
    ld b, b
    ld a, [bc]
    dec l
    add e
    ld a, [de]
    push hl
    ld [hl], l
    adc d
    ld h, a
    nop
    sub b
    rla
    jr c, jr_034_523e

    ld e, h
    ld [hl], e
    ldh a, [$ea]
    nop
    ld_long $ffff, a
    ldh a, [rIF]
    ld [hl], b
    adc a
    ldh a, [rP1]
    inc c
    ldh [rNR23], a
    add l
    dec [hl]
    ld a, [hli]
    xor d
    rst AddAToHL
    ld b, e
    rst AddAToHL
    cpl
    db $fd
    ld a, l
    ld a, [hl]
    ld a, [hl]
    dec h
    nop
    ld a, [bc]
    nop
    ld [hl], a
    ld a, b
    rst $38
    ld hl, sp-$05
    ld hl, sp-$02
    db $fd
    nop
    or $f6
    call nz, $fcc0
    db $e3
    di
    db $f4
    nop
    db $d3
    dec hl
    ld [c], a
    ld a, [de]
    sub $26
    add sp, $18
    nop
    ld d, $d7
    dec sp
    jr c, jr_034_525f

    jp $0fff


    nop
    inc l
    cpl
    ld e, e
    ld a, b
    sbc b
    cp l
    xor h
    ld l, b
    inc b
    rst $38
    ld a, a
    rst $30
    rst $30
    rst $38
    ld b, b
    ld c, l
    ld c, l
    nop
    ld l, l
    ld l, l
    cp l
    db $fd

jr_034_523e:
    ld [$d1fe], a
    rst $38
    nop
    ld h, h
    ei
    di
    db $fc
    push af
    cp $3a
    dec sp
    nop
    dec de
    dec de
    sbc d
    sbc d
    ld a, d
    ld a, d
    add a
    add a
    nop
    and b
    ld e, a
    rst $00
    jr c, @+$01

    nop
    nop
    rst $38
    nop
    ret nz

jr_034_525f:
    rst $38
    ld a, b
    ld a, a
    ccf
    ccf
    cp a
    cp a
    nop
    ld a, a
    rst $38
    db $eb
    rra
    add hl, sp
    rst AddAToHL
    cp $ff
    nop
    db $fd
    db $fc
    ld sp, hl
    ld a, [$f4f3]
    ld a, [$00f5]
    ld [c], a
    ldh a, [$b6]
    or $ef
    xor a
    xor [hl]
    ld d, c
    nop
    call c, $f823
    rlca
    or $09
    ld hl, sp+$03
    ld [bc], a
    ld d, l
    dec b
    xor a
    xor a
    rst $30
    rst $30
    nop
    add b
    add b
    add b
    sbc [hl]
    add b
    add l
    add [hl]
    add a
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld e, b
    sbc a
    db $10
    ld [$00c1], sp
    ld c, b
    ld c, $08
    and c
    add b
    sub h
    nop
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    db $10
    sbc l
    sbc [hl]
    and d
    rra
    add b
    and e
    and h
    and h
    and l
    nop
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    inc c
    xor [hl]
    add b
    add b
    and l
    rra
    ld l, b
    ld d, $08
    or h
    or l
    nop
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    db $10
    cp [hl]
    add b
    xor l
    ccf
    ld a, b
    or d
    or e
    call nz, $00c5
    add $c7
    ret z

    ret


    jp z, $cccb

    call $ce18
    or h
    or l
    rra
    ld [hl], b
    ld [hl], $08
    call nc, $d6d5
    nop
    rst AddAToHL
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $10
    cp l
    cp [hl]
    cp a
    rra
    ld l, b
    pop bc
    jp nz, $e3c3

    nop
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$38eb], a
    db $ec
    db $ed
    ld c, d
    ld [$681f], sp
    ld e, c
    ld [$f4f3], sp
    push af
    nop
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    ret nz

    ld h, h
    ld [$681f], sp
    call $cfce
    ld [bc], a
    inc bc
    inc b
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    db $10
    ret nc

    pop de
    jp nc, Jump_034_681f

    db $d3
    call nc, $11d5
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    jr c, @+$1c

    dec de
    adc b
    ld [$681f], sp
    sub a
    ld [$2221], sp
    inc hl
    nop

jr_034_5362:
    inc h
    dec h
    ld h, $27
    jr z, jr_034_5391

    ld a, [hli]
    dec hl
    ret nz

    and d
    ld [$681f], sp
    rst JumpTable
    ldh [$e1], a
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_034_53b5

    ld a, [hl-]
    dec sp
    jr jr_034_5362

    db $e3
    db $e4
    rra
    ld l, b
    cp d
    ld [$4241], sp
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_034_5391:
    ld c, e
    ret nz

    push bc
    ld [$681f], sp
    ld l, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ret nz

    ld [c], a
    ld [$681f], sp
    add d
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    ld h, h
    ld h, l
    ld h, [hl]

jr_034_53b5:
    ld h, a

jr_034_53b6:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ret nz

    adc b
    ld de, $683f
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    xor [hl]
    inc de
    xor a
    or b
    or c
    ccf
    ld l, b
    add e
    add h
    rst $38
    ld c, c
    xor b
    ld de, $9f8b
    ld l, c
    sub c
    sub d
    sub e
    nop
    ld b, d
    ret nz

    rst $38
    ld l, c
    ld b, c
    rlca
    jr nz, jr_034_53eb

    rlca
    dec c

jr_034_53eb:
    dec c
    ld a, [bc]
    ld b, b
    xor a
    add l
    dec b
    ld d, b
    nop
    nop
    dec bc
    cp a
    ld a, [hl]
    ld a, a
    db $ed
    ld hl, $1f2c
    ld [de], a
    ld [bc], a
    rra
    add hl, bc
    inc hl
    dec b
    ld l, $fb
    rra
    rrca
    ld a, $df
    inc a
    ld b, c
    dec b
    ld a, $1f
    rrca
    ld e, e
    rlca
    rst $38
    dec c
    ld h, [hl]
    rra
    ld [de], a
    dec b
    jr nz, jr_034_53b6

    xor c
    sbc a
    dec c
    inc l
    ld [bc], a
    rra
    jr @+$0e

    dec c
    ld b, b
    db $d3
    ld c, l
    rra
    db $10
    ld [bc], a
    ld a, a
    add hl, bc
    add hl, bc
    ccf
    jr nz, @+$59

    ld c, $5f
    ld [bc], a
    rra
    ld de, $7f02
    ld hl, $555f
    dec bc
    rra
    jr jr_034_5444

    rst JumpTable
    ld c, $3f
    dec b
    rra
    db $10
    ld [hl], l
    dec b
    ld e, a

jr_034_5444:
    ld h, b
    ld e, a
    ld c, $3f
    ld [bc], a
    rra
    ld [de], a
    dec e
    dec b
    ld a, [bc]
    add hl, bc
    ld h, b
    dec a
    sbc a
    ld [bc], a
    rra
    rrca
    ld a, h
    ld [bc], a
    ld [hl-], a
    cp a
    inc a
    ld b, b
    rra
    ld [de], a
    ld a, [bc]
    dec c
    ld e, e
    ld a, [bc]
    rra
    ld a, [bc]
    add hl, bc
    ld a, $1f
    db $10
    rlca
    ccf
    sbc [hl]
    add h
    cp a
    ld bc, $0502
    ld [bc], a
    rra
    ld c, $0a
    dec c
    ld h, [hl]
    dec c
    rra
    add hl, bc
    inc h
    ld bc, $2005
    rra
    ld c, $07
    ld l, a
    ld [bc], a
    nop
    dec c
    ld a, $07
    rra
    ld e, $30
    rra
    inc c
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc b
    sbc a
    add b
    add b
    add b
    pop bc
    nop
    ld c, b
    add b
    sub b
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld bc, $9a99
    sbc e
    sbc h
    sbc l
    sbc [hl]
    and d
    rra
    ld l, b
    nop
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    nop
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    db $10
    add b
    add b
    and l
    rra
    ld e, b
    xor a
    or b
    or c
    or d
    nop
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    ld [bc], a
    cp e
    cp h
    cp l
    cp [hl]
    add b
    xor l
    ccf
    ld h, b
    cp a
    nop
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    nop
    ret z

    ret


    jp z, $cccb

    call $b4ce
    ld b, b
    or l
    rra
    ld h, b
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    nop
    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    inc b
    db $dd
    sbc $bd
    cp [hl]
    cp a
    rra
    ld e, b
    rst JumpTable
    ldh [rP1], a
    add b
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    inc bc
    add sp, -$17
    ld [$eceb], a
    db $ed
    ld c, d
    ld [$581f], sp
    nop
    xor $ef
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
    ret nz

    ld h, h
    ld [$60df], sp
    cp $ff
    nop
    ld bc, $0302
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld h, b
    inc c
    ld l, [hl]
    ld [$601f], sp
    dec c
    ld c, $0f
    db $10
    ld de, $1200
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_034_557e

    jr nc, @+$1c

    dec de
    adc b
    ld [$581f], sp
    inc e
    dec e
    ld e, $1f
    nop
    jr nz, jr_034_5594

    ld [hli], a
    inc hl
    inc h
    dec h
    ld h, $27
    inc c
    jr z, jr_034_55a5

    ld a, [hli]
    dec hl

jr_034_557e:
    and d
    ld [$581f], sp
    inc l
    dec l
    nop
    ld l, $2f
    jr nc, jr_034_55ba

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc bc
    ld [hl], $37
    jr c, jr_034_55cb

    ld a, [hl-]
    dec sp

jr_034_5594:
    xor e
    ld [$581f], sp
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]

jr_034_55a5:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ret nz

    push bc
    ld [$581f], sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_034_55ba:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    jr nc, jr_034_561a

    ld e, e
    ld [c], a
    ld [$581f], sp
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    ld h, b

jr_034_55cb:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    inc c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    adc b
    ld de, $501f
    ld l, h
    ld l, l
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld bc, $7776
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    xor [hl]
    sub b
    add hl, bc
    push af
    rst JumpTable
    ld e, b
    rst $38
    ld l, c
    xor b
    ld de, $61ff
    add b
    nop
    ld e, d
    ret nz

    rst $38
    ld l, c
    ld b, [hl]
    rrca
    ld h, b
    dec c
    dec c
    ld a, [bc]
    ld b, b
    add l
    dec b
    ld e, a
    rlca
    jr nz, jr_034_560c

jr_034_560c:
    nop
    dec bc
    cp a
    ld a, [hl]
    ld a, a
    ld hl, $0263
    rra
    dec e
    inc hl
    dec b
    rlca
    ld [bc], a

jr_034_561a:
    rra
    jr jr_034_5659

    or a
    ld b, c
    dec b
    ld a, $1f
    jr jr_034_5631

    ld h, [hl]
    rra
    dec d
    sbc [hl]
    add h
    sbc a
    dec c
    dec b
    dec b
    ld [bc], a
    rra
    jr jr_034_563d

jr_034_5631:
    dec c
    db $d3
    ld b, b
    ccf
    dec b
    rra
    dec d
    add hl, bc
    add hl, bc
    ccf
    jr nz, jr_034_569a

jr_034_563d:
    ld c, $5f
    ld [bc], a
    rra
    ld d, $21
    ld e, a
    dec bc
    rra
    jr jr_034_569f

    add hl, bc
    rst JumpTable
    ld c, $3f
    dec b
    rra
    inc d
    ld h, b
    ld e, a
    ld d, a
    ld c, $3f
    ld [bc], a
    rra
    inc d
    add hl, bc
    ld h, b

jr_034_5659:
    dec a
    sbc a
    ld c, a
    ld [bc], a
    rra
    db $10
    dec c
    ld a, [bc]
    cp a
    inc a
    ld b, b
    rra
    rra
    ld a, b
    add hl, bc
    ld a, $1f
    inc de
    sbc [hl]
    cp a
    ld bc, $0502
    ld b, [hl]
    ld [bc], a
    rra
    ld c, $0a
    dec c
    dec c
    rra
    add hl, bc
    inc h
    ld bc, $056b
    jr nz, jr_034_569e

jr_034_567f:
    inc c
    rlca
    jr nz, jr_034_5685

    nop
    dec c

jr_034_5685:
    ld a, $78
    rlca
    rra
    ld e, $30
    rra
    inc c
    nop
    ld h, b
    ret nz

    jr nz, jr_034_5702

    jr nc, jr_034_5694

jr_034_5694:
    db $10
    jr jr_034_5697

jr_034_5697:
    add hl, bc
    jr jr_034_56a5

jr_034_569a:
    dec b
    inc bc
    rlca
    rlca

jr_034_569e:
    rrca

jr_034_569f:
    nop
    nop
    nop
    nop
    inc bc
    rra

jr_034_56a5:
    cpl
    rst $38
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    cp $f0
    and $8c
    rrca
    ld [$fef8], sp
    db $fd
    dec c
    ld [$1000], sp
    rlca
    inc bc
    ld b, b
    dec b
    rrca
    ld [$0000], sp
    add b
    ret nz

    add b
    ldh [rP1], a
    ldh [$f0], a
    ldh [$f0], a
    ld hl, sp-$08
    ld hl, sp+$0e
    ret nz

    ld de, $0020
    jr c, jr_034_56dc

    inc bc
    ld b, $0d
    rrca
    inc b
    nop

jr_034_56dc:
    rrca
    dec c
    rrca
    dec e
    rra
    dec c
    dec e
    dec bc
    ld [bc], a
    rra
    add hl, de
    ldh [rLCDC], a
    ret nz

    ldh [rSB], a
    ld [$60c0], sp
    ret nz

    inc sp
    ld [$0801], sp
    ret nz

    rst $38
    rst $38
    add c
    add c
    ld b, b
    cp l
    nop
    jr z, jr_034_567f

    add c
    rst $38
    rst $38
    rrca

jr_034_5702:
    rlca
    nop
    rrca
    rra
    rra
    rrca
    rra
    ld a, $3e
    ld e, $00
    inc a
    ld a, [hl]
    ld a, h
    ld a, b
    ld hl, sp+$78
    add b
    add b
    ld h, b
    add b
    ld d, b
    ld h, b
    nop
    jr nz, jr_034_575c

    ld b, b
    add b
    ld b, b
    ldh [$0c], a
    ld h, b
    ld bc, $0331
    inc de
    ld c, b
    add hl, hl
    db $10
    add b
    ld a, $00   ; xor a
    ccf
    ld a, $7d
    dec a
    ld a, a
    dec sp
    dec a
    dec sp
    nop
    ccf
    scf
    dec sp
    scf
    ccf
    scf
    ccf
    cp $00  ; and a / or a
    ld [hl], e
    db $fc
    ld a, [c]
    ld hl, sp-$1c
    ldh a, [$e8]
    ldh a, [rP1]
    ret nz

    ldh [$90], a
    ldh [$80], a
    ret nz

    and b
    rlca
    ld [hli], a
    rrca
    rlca
    nop
    db $10
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld [$2302], sp
    inc bc

jr_034_575c:
    nop
    adc d
    ld [$c0e0], sp
    add b
    adc d
    ld [$083b], sp
    and b
    ld b, l
    jr jr_034_576b

    ld l, b

jr_034_576b:
    ld h, b
    db $fc
    ld hl, sp+$7c
    db $fc
    ld a, $00   ; xor a
    ld a, h
    ld a, $1c
    ld e, $1f
    ld e, $0f
    rrca
    inc b
    ld e, $0f
    ld c, $1f
    add hl, de
    ld bc, $3908
    dec e
    nop
    dec sp
    dec e
    ccf
    dec e
    rra
    rra
    inc c
    rrca
    db $76
    inc e
    ret


    ld [$1041], sp
    inc bc
    db $10
    ldh [hFFD8], a
    db $10
    ld d, $11
    db $fc
    nop
    rst $38
    db $f4
    ld hl, sp-$30
    ldh [$a0], a
    ret nz

    pop bc
    nop
    add b
    add e
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    inc bc
    nop
    add b
    ld c, $01

jr_034_57b1:
    ld a, $01
    ld [hl], b
    rrca
    ldh [rP1], a
    rra
    add b
    ld a, a
    ld [hl], b
    adc b
    nop
    ldh a, [$fc]
    inc b
    ei
    rst $38
    ld a, a
    inc bc
    inc c
    cp c
    ld d, b
    sbc b
    ldh [$0c], a
    ret c

    cp b
    nop
    jr jr_034_584a

    ld [$587d], sp
    add b
    ld [hl], b
    ld [bc], a
    db $fc
    ei
    rrca
    ld d, $02
    inc b
    inc de
    ld d, b
    scf
    nop
    cpl
    ccf
    rlca
    cpl
    rla
    rrca
    ccf
    rrca
    ld b, b
    ld [hl], $8d
    ld [$0f16], sp
    ld d, $c0
    jr nz, jr_034_57b1

    ld d, b
    nop
    ld bc, $8030
    inc d
    add hl, bc
    nop
    inc bc
    ld bc, $c802
    ld b, [hl]
    jr @+$4b

    ld c, b
    add b
    nop
    sbc e
    ld [$e0f0], sp
    ldh [rP1], a
    ldh [rLCDC], a
    ld b, b
    ldh [rIF], a
    rlca
    adc a
    rlca
    nop
    rst $00
    rrca
    rst $00
    ld c, a
    ld c, a
    rst $20
    rst $28
    ld b, a
    ld b, b
    rst $28
    push de
    ld de, $fdfe
    cp $fa
    db $fc
    db $f4
    nop
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$d3], a
    ldh [$af], a
    nop
    ret nz

    rlca
    nop
    ld c, $01
    inc e
    inc bc
    jr c, jr_034_5877

    rlca
    xor l
    db $10
    ret nz

    ccf
    nop
    rst $38
    cp $fc
    ld e, b
    db $fc
    ld [bc], a
    ld [$d9fc], sp
    add hl, bc
    ld hl, $f808

jr_034_584a:
    ldh a, [$e0]
    db $10
    ccf
    rst $08
    inc bc
    adc a
    ld e, b
    ret nz

    and b
    ldh a, [$f8]
    ld [$5d3e], sp

jr_034_5859:
    rlca
    dec bc
    cp c
    ld l, b
    ret nz

    ldh a, [$60]
    rra
    inc a
    jr jr_034_5872

    rra
    ld [hl-], a
    rla
    ld b, b
    or a
    add hl, bc
    ret


    ld l, c
    di
    ld l, b
    nop
    rst $38
    sbc a
    rra

jr_034_5872:
    cp [hl]
    ld e, $3f
    ld e, $3c

jr_034_5877:
    nop
    inc a
    ld e, $38
    inc a
    jr c, @+$72

    nop
    jr nc, jr_034_5859

    push bc
    ld d, b
    ld l, $0a
    ld h, b
    ld [hl], a
    ld a, [de]
    or e
    jr z, @-$05

jr_034_588b:
    ldh a, [$e3]
    ld bc, $9ef0
    pop bc
    inc e
    add e
    jr c, @+$09

    xor a
    db $10
    ld c, l
    ldh a, [$b1]
    ld [$1fe0], sp
    sbc c
    ld a, [hli]
    nop

jr_034_58a0:
    jr nc, jr_034_58a0

    rst $30
    ld [$e1e8], sp
    ld hl, $1a1d
    ld b, [hl]
    ld [$5310], sp
    ld [$0020], sp
    ld h, b
    nop
    ld b, b
    jr nz, @+$42

    nop
    ld b, b
    add b
    ret nz

    nop
    nop
    ldh [rLCDC], a
    jr nc, jr_034_5937

    inc e
    ld [$0f06], sp
    jr nc, jr_034_58c8

    rlca
    ld hl, sp+$69

jr_034_58c8:
    inc de

jr_034_58c9:
    ld a, [bc]

jr_034_58ca:
    ret nz

    ld h, b
    ld [hl], b
    jr nz, jr_034_58c9

    ld a, b
    jr nz, jr_034_592d

    ld [de], a
    ld b, d
    db $10
    jr nc, @+$0a

    nop
    db $10
    ld [$0801], sp
    inc b
    or b
    ld bc, $0618
    dec e
    jr jr_034_5911

    jr @+$42

    add b
    ld h, b
    nop
    add hl, hl
    jr nz, jr_034_58fc

    ld h, c
    jr jr_034_5907

    jr nz, @+$12

    ld [$010c], sp
    ld [$1c00], sp
    ld a, [c]
    pop hl
    add $e1
    add h

jr_034_58fc:
    jp $008c


    jp $8708


    jr jr_034_588b

    sub b
    rrca

jr_034_5906:
    add e

jr_034_5907:
    stop
    ret nz

    ccf
    ld bc, $8020
    ld a, a
    add b
    ld a, a

jr_034_5911:
    inc bc
    add c
    ld a, a
    rst $20
    rra
    db $fc
    cp $54
    add hl, bc
    sbc h
    ld a, [bc]
    ret nz

    cp c
    add hl, bc
    db $10
    ld sp, $0202
    rlca
    inc b
    ld b, $0c
    ld bc, $0800
    jr jr_034_5944

    nop

jr_034_592d:
    db $10
    jr nc, jr_034_5906

    add hl, bc
    add b
    nop
    ld e, b
    jr jr_034_5966

    inc e

jr_034_5937:
    ld [$060c], sp
    ld b, $0f
    inc bc
    inc bc
    ld bc, $3901
    add hl, de
    ld b, h
    dec de

jr_034_5944:
    inc b
    jr jr_034_58ca

    ld [hli], a
    inc b
    nop
    ld b, $02
    nop
    nop
    ld [bc], a
    ld [$0300], sp
    and b
    ld d, a
    add hl, de
    ld bc, $08ed

jr_034_5958:
    jr c, @+$12

    ld [$1408], sp
    ld bc, $000c
    ld b, $04
    inc bc
    ld b, $01
    cpl

jr_034_5966:
    ld d, e
    pop bc
    jp c, Jump_034_6318

    ld [$1018], sp
    jr nz, @+$22

    jr nc, @+$10

    add hl, bc
    ld b, d
    ld h, b
    ld e, a
    jr jr_034_597f

    ccf
    rra
    cpl
    ld bc, $af08
    add l

jr_034_597f:
    ld bc, $2f08
    sbc a
    cpl
    sbc a
    and [hl]
    ld b, c
    inc bc
    db $ec
    ld [$0c27], sp
    inc b
    inc a
    add hl, bc
    jr nz, jr_034_59b1

    ld h, a
    ld a, [bc]
    add hl, bc
    add hl, hl
    ld a, [de]
    jr jr_034_5958

    daa
    inc d
    or l
    dec bc
    ccf
    ccf
    rra
    ld a, a
    ld a, a
    inc c
    ld [hl], c

jr_034_59a3:
    di
    add b
    ld h, c
    and b
    ld [$0c17], sp
    db $fc
    ld a, [$0ffe]
    jr nc, jr_034_59a3

    inc h

jr_034_59b1:
    ld d, d
    dec de
    ld [$2335], sp
    and e
    add hl, bc
    add b
    add b
    ld b, $18
    cp c
    ld h, d
    add b
    ld e, a
    ld a, [bc]
    add b
    ld h, b
    ret nz

    jr nc, jr_034_5a26

    jr c, jr_034_59d8

    inc h
    jr jr_034_59d7

    push af
    jr nz, @+$01

    adc a
    ld bc, $b710
    rst $08
    adc b
    ld bc, $d710

jr_034_59d7:
    rst $28

jr_034_59d8:
    add d
    ld c, a
    ld d, b
    nop
    rlca
    jr c, jr_034_59ff

    rst $38
    ld a, a
    xor e
    jr nz, @+$09

    inc bc
    ld c, $1c
    jr c, @+$04

    inc e
    jr nc, jr_034_5a5c

    nop
    and b

jr_034_59ee:
    nop
    rlca
    ld [$6180], sp
    ld [hl], b
    add sp, $08
    ld d, $0b
    ld b, $0c

jr_034_59fa:
    inc e
    ld c, $c9
    jr @+$68

jr_034_59ff:
    ld bc, $0bff
    or c
    jr nz, jr_034_5a44

    ldh [$f7], a
    ld a, [bc]
    or a
    inc d
    ld hl, sp-$7c
    db $e4
    ld a, [bc]
    db $fc
    cp $fe
    db $fc
    ld c, e
    jr nc, jr_034_5a1d

    db $10
    sub b
    ld bc, $1810
    ld [$189c], sp

jr_034_5a1d:
    ld h, b
    ret nz

    ld [hl], b
    ld b, b
    nop
    ldh a, [$60]
    ret nc

    ld h, b

jr_034_5a26:
    ret nc

    ld [hl], b
    ld b, b
    cp $40
    rst $38
    or c
    add hl, bc
    db $fc
    ld hl, sp-$10
    pop hl
    ldh a, [$d1]
    nop
    ldh [$c3], a
    ldh [$e3], a
    ret nz

    db $fd
    ld [bc], a
    ld a, [hl-]
    nop
    rlca
    ld l, a
    rra
    rst JumpTable
    ccf
    cp a

jr_034_5a44:
    ld a, a
    rst $38
    ld b, [hl]
    ld a, a
    ld c, [hl]
    inc de
    rst $38
    cp $00  ; and a / or a
    ld b, e
    jr jr_034_59ee

    add hl, bc
    di
    ld [$e3f1], sp
    di
    pop hl
    ld c, h
    jr jr_034_5aba

    ret nz

    ld h, c

jr_034_5a5c:
    ld [$e1c3], sp
    rst $38
    rst $20
    ld e, $10
    inc a
    jr @+$7a

    nop
    jr c, @-$0e

    ld a, b
    ldh [$f1], a
    pop bc
    ldh [$c1], a
    ld bc, $8181
    add c
    ld bc, $7f81
    ccf
    dec [hl]
    jr jr_034_59fa

    nop
    add sp, -$10
    pop hl
    ldh [$ce], a
    rst $08
    sbc $df
    ld d, $8f
    rst JumpTable
    adc a
    ld de, $7f30
    jr c, @+$0a

    ld bc, $fe10

jr_034_5a8f:
    ld e, b
    cp $59
    add hl, bc

jr_034_5a93:
    cp $01
    ld [$495f], sp
    rrca
    ld [de], a
    ld c, $00
    inc e
    ld [$001c], sp
    add b
    inc b
    adc d
    inc c
    ld [bc], a
    sbc b
    jr @+$0a

    ld [$0818], sp
    dec c
    ld [$400c], sp
    jr @+$03

    jr jr_034_5acf

    ld h, b
    ld e, b
    ld l, b

jr_034_5ab6:
    jr nc, jr_034_5af0

    nop
    ld h, b

jr_034_5aba:
    jr c, @+$66

    inc a
    ld [de], a
    ld e, $38
    rra
    db $10
    ld e, $1f
    inc c
    ld h, e
    ld b, b
    db $fd
    cp $fb

jr_034_5aca:
    db $fc
    nop
    push af
    ld hl, sp-$1b

jr_034_5acf:
    jp $e7d8


    ret nz

    rst $38
    db $10

jr_034_5ad5:
    ldh a, [$8f]
    ldh a, [rVBK]
    dec bc
    pop hl
    rra
    jp $c03f


    ld e, c
    dec [hl]
    or [hl]
    inc sp
    db $e3
    ld [hl], c
    ld h, c
    db $e3
    ld h, c
    jr nz, jr_034_5b5a

    jr nz, jr_034_5a8f

    add hl, sp
    pop af
    db $10
    ld a, [hl]

jr_034_5af0:
    db $10
    cp $7e
    ld a, [hl]
    db $fc
    jr c, jr_034_5b07

    jr z, jr_034_5af0

    jr jr_034_5afb

jr_034_5afb:
    jr nz, jr_034_5ad5

    inc hl
    ld bc, $decf
    dec bc
    db $e4
    jp z, $e9f0

    ld h, l

jr_034_5b07:
    ld b, b
    ccf
    dec h
    ld hl, $9000
    add b
    ld b, a
    db $10
    db $fc
    jr jr_034_5a93

jr_034_5b13:
    dec de
    or h
    ld e, $bc
    nop
    jr c, jr_034_5ab6

    jr c, jr_034_5b5a

    inc a
    ld a, [hl]
    ld a, b
    jr nc, @+$04

    ld [hl], b
    ldh [$0c], a
    inc e
    inc c
    ld e, $01
    db $10
    ld c, $40
    inc c
    ld bc, $0618
    add hl, bc
    ld b, $0f
    rlca
    inc e
    nop
    ld a, $78
    inc l
    ret nc

    ld a, b
    or b
    ret nc

    ld h, b
    rlca
    or b
    ld h, b
    ldh [$c0], a
    jr nz, jr_034_5b7d

    ld b, e
    adc a
    jr z, @+$50

    jr nc, jr_034_5aca

    xor c
    add hl, de
    ei
    ldh a, [$f7]
    ldh [$ef], a
    ret nz

    sbc $00
    add c
    sbc [hl]
    ld bc, $033c
    add hl, sp

jr_034_5b5a:
    rlca
    ld a, c
    nop
    rlca
    rst $00
    ccf
    adc a
    ld a, a
    rra
    rst $38
    ccf
    add a
    ret nc

    ld e, $fb
    db $fc
    rst $30
    ld hl, sp+$0e
    ld e, e
    ld [$ed09], a
    ld [hl-], a

jr_034_5b72:
    add b
    add l
    ld h, d
    add c
    ld h, d
    pop hl
    ldh a, [rSVBK]
    jr nz, @+$32

    ld a, c

jr_034_5b7d:
    jr @-$26

    dec bc
    rla
    jr nz, jr_034_5b72

    dec bc
    add hl, hl
    rla
    db $10
    jr z, jr_034_5b13

    add hl, de
    add b
    adc l
    add hl, de
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    db $fc
    nop
    cp $f9
    db $fc
    ld sp, hl
    di
    di
    rst $38
    rst $28
    nop
    rst $30
    xor $df
    db $fc
    sbc [hl]
    ld a, b
    cp h
    ldh [$61], a
    ld [hl], b
    db $ec
    ld h, $40
    ld sp, $070e
    ld c, $07
    jp nz, $cc08

    ld b, $10
    ld [$0708], sp
    rlca
    ld c, d
    ld a, [bc]
    ld e, b
    dec c
    pop af
    ldh [rLCDC], a
    pop bc
    ld c, e
    ld a, [bc]
    add e
    ret nz

    add a
    add b
    ld [hl], e
    rrca
    rlca
    rst $30
    rrca
    rst $20
    rra
    rst $28
    ld d, c
    ld a, [bc]
    ld d, e
    ld [hli], a
    and [hl]

jr_034_5bd4:
    ld a, [bc]

Jump_034_5bd5:
    db $d3
    xor b
    ld a, [bc]
    nop
    jr jr_034_5be9

    ld e, a
    ld [$f00b], sp
    xor a
    ld a, [bc]
    xor l
    ld e, $ec
    and a
    ld [hl-], a
    add l
    inc d
    nop

jr_034_5be9:
    ld d, b
    ld [$63e1], sp
    rst AddAToHL
    ld h, h
    inc c
    inc bc
    adc [hl]
    dec sp
    ld a, [de]
    ccf
    rrca
    inc sp
    sbc d
    rra
    add hl, sp
    ld [$292c], sp
    db $fc
    ld a, [bc]
    ld bc, $0ffe
    scf
    ld a, l
    rrca
    inc sp
    ld b, b
    nop
    nop
    ld l, b
    ldh a, [$78]
    ldh [$f0], a
    add b
    ret nz

    and b
    ld [$6008], sp
    inc b
    ld [$0080], sp
    nop
    rlca
    inc bc
    ret z

    ld bc, $0620
    jr z, jr_034_5c28

    rst $38
    nop
    ld [$fffe], sp
    cp $20

jr_034_5c28:
    cp $fc
    ld [bc], a
    ld [$fcf8], sp
    db $fc
    ld hl, sp+$07
    nop
    add b
    rrca
    nop
    ld c, $01
    rrca
    ld bc, $001d
    inc bc
    rra
    inc bc
    ccf
    rlca
    scf
    rrca
    ld a, a
    pop hl
    jr nz, jr_034_5c56

    nop
    ld c, b
    ld e, b
    jr c, jr_034_5c5a

    rrca
    rra
    rra
    ld [bc], a
    ld [$0f80], sp
    jr c, jr_034_5bd4

    ldh [$d0], a

jr_034_5c56:
    ldh a, [$e0]

jr_034_5c58:
    ldh a, [$e0]

jr_034_5c5a:
    ld [$0307], sp

jr_034_5c5d:
    ld bc, $7f02
    ld d, b
    ret nz

    or b
    db $fc
    jr jr_034_5c58

    nop
    inc e
    sub l
    ld [hl], b
    nop
    jr @+$3e

    rra
    daa
    jr nz, jr_034_5c74

    dec b
    db $10
    ld d, b

jr_034_5c74:
    add b
    nop
    ldh [$d0], a
    inc bc
    inc e
    inc bc
    inc bc
    ld bc, $1001
    inc b
    jr jr_034_5c88

    ld [$f8f8], sp
    ld h, b
    ldh a, [rSC]

jr_034_5c88:
    ld [$0858], sp
    ldh a, [$e0]
    ldh [$c0], a
    ldh [rP1], a
    pop hl
    ret nz

    ccf
    rrca
    ld a, a
    rrca
    ld a, a
    rra
    nop
    ld a, a
    rra
    rst JumpTable
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    jr nc, @+$01

    ld a, a
    ld a, [hl-]
    jr z, jr_034_5cd7

    ld [$0703], sp
    rrca
    rra
    nop
    ccf
    ld e, a
    rra
    ccf
    ccf
    ld a, a
    ld a, [hl]
    db $fd
    nop
    ld hl, sp-$04
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ldh [$c8], a
    ld d, c
    ld [$0837], sp
    nop
    ldh [$63], a
    ld b, b
    ld hl, sp+$74
    inc a
    nop
    ld a, [hl]
    rra
    ld a, $0f
    rra
    rrca
    rlca
    dec b
    inc b
    ld c, $04

jr_034_5cd7:
    ld c, $0c
    ld b, $79
    jr nc, jr_034_5c5d

    ret nz

    ld bc, $80c0
    ld b, b
    ldh [rP1], a
    ld h, b
    ld bc, $1000
    jr nc, jr_034_5cea

jr_034_5cea:
    ld bc, $0851
    ld bc, $aa20
    pop bc
    sub [hl]
    pop bc
    nop
    db $ec
    add e
    ld d, $81
    inc c
    add e
    sub h
    inc bc
    inc bc
    ld [$0c07], sp
    inc bc
    rst $38
    ld a, a
    ld [hl], h
    ld [$1801], sp
    inc e
    rst $38
    ld a, a
    cp a
    ld bc, $be08
    ld c, b
    xor [hl]
    ld [$0f07], sp
    add b
    dec b
    ld [$0f05], sp
    rlca
    rra
    ccf
    ld a, a
    ccf
    nop
    cp $fd
    ld hl, sp-$0c
    ldh [$f0], a
    cp $7f
    ld bc, $f9fc
    di
    db $ed
    rst $08
    rst $30
    sbc a
    inc l
    add hl, bc
    dec bc
    rlca
    rrca
    rlca
    inc bc
    ld l, e
    ld [$01c0], sp
    ld [$1071], sp
    inc b
    ld b, b
    ldh a, [$e8]
    db $fc
    cp $3c
    jr nc, jr_034_5d49

    ld a, [bc]
    ld b, $08
    db $10

jr_034_5d49:
    jr nc, jr_034_5d4b

jr_034_5d4b:
    ld a, b
    and c
    add hl, bc

jr_034_5d4e:
    ld c, d
    jr nz, @+$09

    ld b, b
    inc bc
    ld b, l
    ld [$3c0e], sp
    ld e, $1c
    ld c, $3c
    rla
    ld e, [hl]
    db $fc
    ld a, h
    rst $08
    ld [$34e0], sp
    jr jr_034_5d4e

    db $10
    sub [hl]
    db $10
    ret z

    nop
    db $10
    ld hl, $0819
    rlca
    ld bc, $0010
    rlca
    inc b
    ld bc, $8c03
    inc bc
    ld a, b
    add a
    nop
    rst $38
    sub e
    stop
    ld a, [hl]
    rst $38
    ldh a, [$7f]
    ret nc

    cpl
    ldh [$1f], a
    nop
    pop de
    cpl
    rlca
    rst $38
    rra
    rrca
    ccf
    ld a, [hl]
    ccf
    db $fc
    ld a, d
    dec c
    add hl, bc
    sbc $08
    adc a
    add hl, de
    ld b, l
    jr nz, jr_034_5d9c

jr_034_5d9c:
    jr c, @-$2b

    ld de, $3f00
    ld e, a
    rlca
    dec bc
    nop
    rrca
    ld c, $0d
    db $10
    ld c, $1d
    ld e, $ef
    add hl, bc
    ld c, $ff
    ld a, b
    add a
    ld [bc], a
    cp a
    ld b, b
    rst $30
    ld hl, sp+$4f
    cp a
    rst $28
    db $10
    cp $00  ; and a / or a
    rst $38
    nop
    rst $38
    add c
    ld a, a
    ld b, h
    cp l
    sbc d
    nop
    ld a, c
    ld [$0af9], a
    db $fd
    rrca
    rst $38
    ld hl, sp+$34
    jr @+$7a

    adc a
    add hl, bc
    ld e, l
    add hl, de
    and b
    ld c, c
    jr nc, jr_034_5dda

    nop

jr_034_5dda:
    db $10
    inc bc
    rlca
    rlca
    rrca
    ld a, [bc]
    ccf
    ld e, [hl]
    cp $7f
    ld b, $78
    jr nc, @-$0e

    ld h, b
    ldh [rWX], a
    add hl, bc
    ld a, [de]
    jr nc, @+$01

    rlca
    rst $38
    ld a, [hl]
    add c
    nop
    db $fc
    rrca
    ld c, d
    dec [hl]
    jr c, jr_034_5dfa

jr_034_5dfa:
    jr nz, jr_034_5dff

    ld e, $0f
    rra

jr_034_5dff:
    ld e, $1f
    ccf
    or l
    add hl, bc
    inc b
    jr jr_034_5e09

    ccf
    ccf

jr_034_5e09:
    sbc b
    rlca
    ld e, h
    add e
    add e
    db $10
    ld de, $ff00
    jr nz, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    rrca
    nop
    rst $38
    ccf
    rst $38
    adc $ff
    ld l, a
    add b
    ld h, b
    nop
    add b
    or b
    ret nz

    ld l, d
    ldh a, [$f9]
    cp $f8
    jr nz, @+$01

    ldh [$91], a
    ld [$0778], sp
    jr nc, jr_034_5e43

    jr nc, jr_034_5e45

    rrca
    db $e3
    rra
    rrca
    cp c
    ld a, [de]
    dec e
    add hl, de
    db $eb
    add hl, bc
    jp z, $0e21

jr_034_5e43:
    ldh a, [rBCPS]

jr_034_5e45:
    inc e
    ld l, $cf
    ld [$09c2], sp
    ld e, c
    ld c, d
    ld b, b
    nop
    ret nz

    ldh [rSVBK], a
    ldh [$38], a
    db $10
    inc e
    ld [$aeb8], sp
    ld c, c
    nop
    ld a, $09
    xor e
    ld e, d
    nop
    db $10
    cp $fd
    ld sp, hl
    inc b
    rst $30
    rst $20
    db $db
    cp a
    ld c, [hl]
    inc sp
    add hl, bc
    jp hl


    rst $38
    db $10
    add $fc
    ld a, [$334b]
    ldh [$88], a
    adc c
    ld a, [bc]
    add hl, bc
    add a
    nop
    dec bc
    jp nc, $9404

    sub l
    sub [hl]
    sub a
    sbc b
    rra
    ld a, [de]
    sbc a
    and b
    ld b, d
    and c
    inc h
    and d
    and e
    and h
    and l
    rra
    ld d, $aa
    inc b
    xor e

jr_034_5e93:
    xor h
    xor l
    inc sp
    xor [hl]
    daa
    sub b
    xor a
    ld b, b
    or b
    rra
    dec d
    or l
    or [hl]
    or a
    inc sp
    cp b
    cp c
    sub h
    ld l, c
    cp d
    xor c
    rra
    inc d
    ret nz

    ld [hli], a
    pop bc
    jp nz, $c308

    call nz, $c6c5
    daa
    add b
    add c
    add d
    ld b, b
    add e
    rra
    ld de, $cbca
    call z, $cecd
    ret c

    add b
    jr nz, jr_034_5e93

    inc sp
    ret nc

    adc [hl]
    adc a
    sub b
    sub c
    add b
    rra
    db $10
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    nop
    reti


    jp c, $dcdb

    db $dd
    sbc h
    sbc l
    inc sp
    ld b, b
    sbc [hl]
    rra
    rrca
    rst JumpTable
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    nop
    ret c

    ret c

    push hl
    and $e7
    add sp, -$17
    inc sp
    db $10
    and [hl]
    and a
    xor b
    rra
    ld c, $ec
    db $ed
    xor $ef
    inc b
    ldh a, [$f1]
    ld a, [c]
    di
    ret c

    jr nz, @-$0a

    push af
    ld [hl], b
    or $2f
    jr nz, @+$21

    ld c, $f7
    ld hl, sp-$07
    ld a, [$3300]
    ei
    db $fc
    db $fd
    cp $ff
    inc [hl]
    ld bc, $3308
    ld [bc], a
    or c
    or d
    rra
    rrca
    inc bc
    inc b
    dec b
    add b
    ld sp, $0706
    inc sp
    ld [$0a09], sp
    dec bc
    adc c
    jr z, @+$0e

    cp e
    cp h
    rra
    rrca
    dec c
    ld c, $30
    jr jr_034_5f44

    db $10
    ld de, $2024
    ld [de], a
    inc de
    inc sp
    ld [$c714], sp
    ret z

    or e
    rra
    ld c, $15

jr_034_5f44:
    ld d, $17
    db $10
    jr jr_034_5f62

    ld a, [de]
    inc a
    dec de
    inc sp
    inc e
    dec e
    add d
    dec h
    inc sp
    pop de
    inc sp
    cp l
    cp [hl]
    rra
    inc c
    ld e, $00
    rra
    jr nz, jr_034_5f7e

    ld [hli], a
    ld [hli], a
    inc hl
    inc h
    dec h

jr_034_5f62:
    db $10
    ld h, $27
    jr z, @+$60

    inc sp
    sbc $be
    sub b
    ld b, h
    ret


    rra
    inc c
    ret z

    add hl, hl
    ld a, [hli]
    ld d, l
    dec hl
    inc l
    db $10
    dec l
    ld l, $2f

jr_034_5f79:
    ld h, $30
    ld sp, $ea32

jr_034_5f7e:
    inc e
    db $eb
    inc sp
    cp [hl]
    rra
    inc c
    ld e, h
    ld b, b
    adc h
    adc l
    jr nz, jr_034_5fbd

    or h
    ld h, a
    add h
    add l
    add [hl]
    inc sp
    adc d
    ld b, d
    adc e
    rra
    ld [de], a
    sbc d
    sbc e
    inc sp
    cp a
    adc b
    sub d
    inc c
    sub e
    inc sp
    sbc c
    inc sp
    rra
    inc c
    ld e, c
    nop
    nop
    adc b
    stop
    ld c, b
    ld [de], a
    jr z, @+$03

    ld bc, $d81f
    rst JumpTable
    ld e, $58
    rra
    add b
    ld [bc], a
    ld e, $58
    rra
    nop
    ld [hl-], a
    ld e, $60
    rra

jr_034_5fbd:
    nop
    ld sp, $609d
    rst $28

jr_034_5fc2:
    rra
    ld a, b
    ld e, $70
    rra
    ld l, b
    ld bc, $f81f
    ccf
    reti


    ld a, $80
    rra
    ld [hl], b
    db $ed
    ld a, a
    pop hl
    dec de
    ld l, c
    rra
    sbc b
    jr nz, jr_034_5f79

    pop af
    add l
    ld e, b
    ld h, b
    rra
    adc b
    ldh [rIE], a
    pop af
    rra
    cp b
    ld b, b
    nop
    nop
    rla
    add b
    add b
    ret nz

    ld b, b
    ldh a, [$30]
    nop
    db $ec
    inc e
    db $f4
    db $fc
    jr c, jr_034_5fc2

    add sp, $18
    nop
    sub b
    ld [hl], b
    ld hl, $43e1
    jp nz, $8487

    nop
    rra
    jr jr_034_6084

    ld h, b
    cp $81
    cp $01
    ld hl, $03fc
    ld hl, $02fd
    rst $38
    nop
    ld hl, $0080
    ld b, c
    rst $38
    ld bc, $0eff
    cp $70
    ldh a, [rNR41]
    add b
    add b
    ld a, [hli]
    inc bc
    inc bc
    inc c
    rrca
    ld sp, $3f00
    ld b, e
    ld a, [hl]

jr_034_602a:
    ld b, a
    ld a, h
    adc a
    ld hl, sp+$5f
    ld b, b
    ld [hl], c
    cp [hl]
    ld c, b
    rst $08
    adc b
    adc a
    ld de, $201f
    inc hl
    ld a, $33
    sbc a
    ldh a, [$3f]
    ldh [rIE], a
    db $10
    ret nz

    rst $38
    nop
    ld b, c
    ld bc, $3efe
    ret nz

    ld d, a
    ret nz

    cp a
    ld a, a
    ld sp, $9380
    ld bc, $220c
    ldh [rP1], a
    add hl, bc
    dec de
    ld de, $e0a1
    inc e
    inc de
    dec c
    ld a, [bc]
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    nop
    nop
    ld a, [bc]
    ld bc, $0003
    inc b
    ld b, $09
    inc c
    nop
    ld c, $01
    rlca
    ld bc, $0608
    ld bc, $0700
    nop
    inc bc
    ld sp, $3489
    ld a, [de]
    ld bc, $2608
    ld a, [bc]
    ld [bc], a
    inc h

jr_034_6084:
    nop
    add hl, bc
    ld c, $11
    rra
    nop
    rrca
    db $10
    ld bc, $0210
    nop
    dec b
    dec [hl]
    nop
    jr jr_034_6095

jr_034_6095:
    jr c, jr_034_6097

jr_034_6097:
    ld [hl], b
    inc c
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    nop
    rst $08
    jr nc, jr_034_602a

    ld l, b
    add a
    ld [hl], b
    jp nz, $0034

    ldh [rNR23], a
    ldh [rNR32], a
    ret nz

    ld a, $80
    ld a, [hl]
    inc b
    nop
    cp $00  ; and a / or a
    inc c
    nop
    and b
    ld hl, sp+$00
    ld b, b
    db $fc
    ld [hli], a
    ldh a, [rP1]
    ret nz

    jr nz, jr_034_60c2

jr_034_60c2:
    add b
    inc [hl]
    nop
    ld b, b
    db $d3
    nop
    ld h, $01
    ld b, e
    rlca
    nop
    inc d
    rrca
    inc bc

jr_034_60d0:
    ld e, h
    add hl, de
    inc de
    inc bc
    ld a, c
    nop
    rra
    ld [bc], a
    nop
    jr nz, @+$29

    ld c, b
    ld h, a
    db $10
    ld a, [de]
    inc c
    add b
    nop
    ld b, b
    ret nz

    jr nz, @+$72

    nop
    jr c, jr_034_60e9

jr_034_60e9:
    jr jr_034_60eb

jr_034_60eb:
    inc b
    inc c
    db $10
    ld c, $00

jr_034_60f0:
    ld b, $08
    rlca

jr_034_60f3:
    ld h, [hl]
    nop
    ld hl, $e073
    nop
    ld bc, $000a
    rla
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    inc bc
    cp $00  ; and a / or a
    ld e, $20
    inc b
    ld a, [bc]
    rra
    ld de, $0900
    nop
    ld a, a
    nop
    ccf
    ld b, b
    rra
    jr nz, jr_034_6129

    db $10
    jr nz, jr_034_612d

    ld e, $1f
    ld d, $f0
    db $10
    ldh [rNR10], a
    ld [hl], b
    db $10
    add b
    jr nc, jr_034_60e9

jr_034_6129:
    ld hl, $c0b0
    sub b

jr_034_612d:
    ldh [rP1], a
    inc d
    db $ec
    ccf
    ldh [rIE], a
    db $e3
    ld e, h
    and h
    nop
    ret c

    jr z, jr_034_60f3

    ld c, b
    or b
    ld d, b
    jr nc, jr_034_60d0

    inc d
    ret nz

    ldh a, [rP1]
    nop
    rrca
    rst $38
    ld hl, $e718
    jr jr_034_60f0

    ld b, e
    ld b, e
    rla
    db $10
    ldh [$ef], a
    db $10
    rst $38
    ld bc, $c738
    call nz, $0203
    ld bc, $1f01
    ld d, $40
    rst $38
    ld b, c
    db $fd
    inc bc
    cp $02
    cp $82
    inc bc
    ld a, [hl]
    ld a, [c]
    cp $8e
    ld [hl], c
    ld a, a
    rra
    stop
    jr jr_034_6174

    and b

jr_034_6174:
    ld h, b
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$49
    ld bc, $0006
    rlca
    nop
    inc bc
    nop
    ld bc, $0f1f
    add b
    ldh [$03], a
    inc bc
    rrca
    inc c
    rst $38
    ldh a, [$7f]

jr_034_618e:
    inc h
    add b
    rst $38
    ld b, c
    ld a, a
    ld b, b
    ld hl, $601f
    ld hl, $203f
    ld hl, $211f
    ld e, $1e
    cp a

jr_034_61a0:
    nop
    ret z

    jr nc, @-$06

    jr c, jr_034_618e

    jr z, jr_034_61a0

    jr z, jr_034_61aa

jr_034_61aa:
    add sp, $38
    ret c

    ld c, b
    ld hl, sp+$48
    ret nc

    ld [hl], b
    ld bc, $10d0
    ldh a, [$50]
    ret nz

    add b
    nop
    ld hl, $e084
    db $10
    ld [$0200], sp
    ld l, $01
    ld h, e
    nop
    nop
    ld a, a

jr_034_61c7:
    nop
    ccf
    nop
    rra
    nop
    rrca
    cpl

Call_034_61ce:
    nop
    inc bc
    inc sp
    ld [bc], a
    ld sp, $a021
    ld [bc], a
    ld a, a
    add b
    ld a, a
    add d
    ld sp, hl
    rlca
    ld hl, $40ff
    ld bc, $f621
    dec bc
    rst $30
    ld [$3ffe], sp
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $28
    cp a
    rst $38
    ld c, a
    ld [bc], a
    rst $38
    rst $00
    rst $38
    ld [hl], e
    db $fd
    db $d3
    ld [hl], $00
    jr z, @+$01

    add b
    ld b, c
    ret nz

    ld b, c
    ldh [rIE], a
    ldh a, [$c0]
    ld a, [hl-]
    ld c, d
    ld a, a
    ldh [rNR22], a
    ld hl, sp+$0b
    db $fc
    dec b
    add [hl]
    rst $38
    ld b, e
    rst $38
    ld h, c
    ld sp, $c11f
    jr nz, @+$41

    ld [hl], b
    ld e, a
    jr nz, @+$01

    inc bc
    rst $38
    dec c
    ld b, d
    cp $3d
    cpl
    ldh a, [$5f]
    ldh [rNR42], a
    cp a
    add hl, de
    ret nz

    cp b
    rst $00
    inc hl
    daa
    rst JumpTable
    jr nz, jr_034_6250

    ld hl, $10ef
    ld h, c
    ld l, a
    sub b
    rst $38
    nop
    ld bc, $2014
    cp $01
    and c
    db $fd
    ld [bc], a
    cp a
    ld b, b
    ld a, a
    ld c, [hl]
    add b
    jr nc, jr_034_61c7

    nop
    ldh [$7d], a
    ld sp, $0087
    ld a, b
    add hl, bc
    ld b, $02

jr_034_6250:
    ld bc, $0001
    ld a, [hl-]
    jr nz, jr_034_62d2

    ld a, b
    ld a, [hli]
    add a
    cp b
    ld b, a
    or b
    ld c, a
    add c
    ld hl, $4bb4
    inc [hl]
    res 7, h
    ld b, e
    ld e, [hl]
    and b
    ld bc, $0813
    ld bc, $4009
    rst $38
    ld bc, $07ff
    jr nz, @+$01

    dec b
    ld b, l
    dec c
    ld a, [c]
    ld a, [de]
    push hl
    inc e
    nop
    db $e3
    rrca
    ld hl, sp-$73
    ei
    ld c, $ff
    jr c, jr_034_6288

    rst $38
    ret nz

    rst $38
    inc bc

jr_034_6288:
    rst $38
    daa
    nop
    rst $38
    add b
    ld h, h
    ld a, a
    add b
    cp h
    ld b, e
    ld d, h
    xor e
    xor b
    ld bc, $40d7
    rst $38
    ld c, b
    rst $38
    ld l, a
    or c
    ld d, h
    jp nz, $3341

    ccf
    ret nz

    dec d
    ld [$f828], a
    nop
    rst $38
    db $fc
    rst $38
    cp $7f
    rst $38
    ccf
    rst JumpTable
    nop
    ccf
    rst $38
    rra
    ld c, a
    cp a
    adc a
    ld [hl], a
    jr nc, jr_034_62db

    rst $38
    ld [$ff7e], sp
    add b
    rst $38
    ldh [$79], a
    ld [$20ff], sp
    rst $38
    ld hl, $6281
    rst $38
    ld b, e
    nop
    cp $c2
    cp $82
    cp $a4

jr_034_62d2:
    ret c

    stop
    ldh [rTAC], a
    rst $00
    ld e, a
    adc a
    sbc a

jr_034_62db:
    rra
    ccf
    pop bc
    ld hl, $8f40
    ld [hl], b
    cpl
    db $10
    adc a
    ld hl, $9001
    rst $08
    sub b
    rst JumpTable
    ret nc

    rst $28
    ldh a, [rNR42]
    ld hl, $00ff
    ld bc, $7f0c
    add b
    db $fd
    ld [bc], a
    ld bc, $500e
    nop
    jr nz, jr_034_62ff

    nop

jr_034_62ff:
    inc c
    rst $38
    cp $fe
    rst $38
    add h
    and b
    rst AddAToHL
    rst $28
    rst $28
    rst $00
    jr nz, @-$42

    ld b, e
    ld b, b
    db $fc
    ld bc, $b409
    res 7, h
    jp $ff00


    dec h

Jump_034_6318:
    add b
    ld a, a
    ld bc, $080c
    rst $38
    ld h, c
    inc c
    pop bc
    nop
    ld c, $ff
    inc d
    db $eb
    ld [$00f7], sp

jr_034_6329:
    rst $38
    add b
    ld bc, $0f12
    rst $38
    jr nc, jr_034_6329

    ld b, b
    ldh [$80], a
    nop
    add b
    ldh [$3f], a
    ret nc

    ccf
    db $fc
    rra
    rst $20
    add hl, bc
    inc de
    push af
    ld [$41fa], sp
    db $fd
    ld [$007b], sp
    ld bc, $02ff
    cp $87
    db $fc
    dec bc
    ld a, h
    nop
    db $10
    ccf
    jr jr_034_6364

    inc bc
    rst $38
    db $e3
    rst $38
    nop
    inc sp
    rra
    ei
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    inc bc
    rrca
    pop af

jr_034_6364:
    rlca
    nop
    cp $ff
    and b
    daa
    nop
    or $f8
    rst JumpTable
    ldh [rIE], a
    nop
    add d
    cp $40
    ld [bc], a
    ld b, c
    di
    cp $99
    rrca
    inc c
    rlca
    nop
    call z, $ec07
    rlca
    ccf
    add hl, sp
    ccf
    dec sp
    nop
    ccf
    ld a, $3b
    inc a
    ei
    inc a
    rst $38
    cp b
    nop
    ld [hl], a
    ld hl, sp+$3f
    ldh a, [$f0]
    rst $38
    ccf
    add b
    nop
    rst JumpTable
    nop
    db $db
    inc b
    db $dd
    ld [bc], a
    jp z, $0015

    add b
    ccf
    ld b, b
    ccf
    ld a, a
    add b
    rst $38
    nop
    ret nz

    ld h, c
    daa
    xor a
    ld d, b
    ld e, a
    and b
    dec b
    ld_long a, $ff39
    ld bc, $9141
    and c
    add c
    ld bc, $0021
    ret nz

    add c
    pop hl
    ld b, b
    rst $38
    jr nc, @-$07

    rrca
    add b
    ld l, a
    rst $00
    rst $00
    rst $28
    rst $00
    rst AddAToHL
    xor $ff
    inc b
    ld hl, sp-$01
    ld [hl], b
    rst $38
    add b
    ld l, a
    ld [hl], h
    adc e
    nop
    db $fc
    inc bc
    push af
    ld a, [bc]
    db $f4
    dec bc
    ld hl, sp+$07
    add h
    and e
    add b
    ld a, a
    ret nz

    ccf
    pop hl
    ldh [$1f], a
    sub c
    ld hl, $ff0e
    ld hl, $bf47
    rlca
    ld b, e
    nop
    or a
    ld e, a
    ld d, a
    cp a
    or e
    ld e, a
    ld bc, $12ff
    ld [bc], a
    cp $04
    ld hl, $08fc
    ld hl, $80f8
    ld hl, $fc88
    db $fc
    add hl, bc
    db $f4
    dec c
    db $fc
    ld d, c
    dec b
    ld hl, $c1fe
    db $10
    ld [$4100], sp
    ld [$000f], sp
    inc bc
    inc b
    and c
    ld bc, $3f00
    ld hl, $ff00
    ld bc, $fd09
    ld [bc], a
    db $ec
    rlca
    ld hl, $e001
    rrca
    jp hl


    ld c, $c9
    ld c, $d9
    ld b, c
    ld [$1ec1], sp
    rra
    ldh a, [rSTAT]
    pop af
    ccf
    rst JumpTable
    nop
    cpl
    rst JumpTable
    scf
    rst $08
    inc sp
    rst $08
    ld sp, $02cf
    ret nz

    ld a, a
    ldh a, [rIE]
    ld hl, sp-$01
    nop
    ld a, [bc]
    dec c
    nop
    ld a, [c]
    ld bc, $03fe
    db $fc
    adc e
    db $fc
    ei
    ld b, l
    db $fc
    ld [hl], $f7
    ld hl, sp-$19
    ld a, [hl-]
    nop
    ld h, c
    nop
    ld sp, hl
    ld b, $e9
    ld d, $e8
    rla
    ret z

    scf
    add b
    ld hl, $0700
    nop
    rrca
    nop
    rla
    nop
    nop
    cpl
    inc bc
    rla
    dec b
    xor [hl]
    rrca
    cp b
    rra
    ld b, b
    ldh a, [rKEY1]
    rrca
    ccf
    ld a, a
    rst $08
    ldh a, [$7f]
    db $10
    add b
    rst $38
    nop
    ld h, c
    inc de
    cp a
    dec bc
    ld e, a
    inc c
    rst $38
    rst $38
    cp $01
    xor l
    ld hl, $fc88
    nop
    add h
    db $fc
    add [hl]
    cp $c3
    rst $38
    ld hl, $027f
    db $10
    rra
    ld [$070f], sp
    rlca
    ld [hl], e
    db $fd
    ld bc, $ef02
    inc e
    rst $30
    ld hl, sp+$7f
    ret nz

    ld hl, $df02
    ldh [rIE], a
    ld b, $f5
    ld c, $21
    db $f4
    inc b
    rrca
    ld a, [c]
    rrca
    and $1f
    ld hl, $3fc6
    jr nz, jr_034_64c7

    inc b
    ld h, c
    dec bc

jr_034_64c7:
    inc b
    adc e
    inc b
    rst $00
    nop
    ld [$8877], sp
    scf
    ret z

    db $fd
    ld [bc], a
    db $fc
    ld c, b
    inc bc
    ld hl, $07f8
    ld h, c
    ei
    ld b, $f3
    ld de, $ff0f
    nop
    ld h, c

jr_034_64e2:
    db $fd
    nop
    ei
    ld hl, $3001
    jp c, $20d0

    db $10
    or c
    ld e, $61
    nop
    add c
    ld a, $29
    ld l, $38
    cpl
    ld a, h
    scf
    ld [bc], a
    inc b
    ld l, a
    ld hl, sp+$07
    ld a, b
    add a
    ld h, c
    inc a
    nop
    jp $c13e


    ccf
    ret nz

    rst $28
    ldh a, [rIE]
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    add c
    add c
    db $10
    ld a, [hl]
    cp $01
    ld sp, $f0cf
    rra
    ldh [$cb], a
    ld hl, $7f3b
    add b

jr_034_6521:
    ld [hl-], a
    ld bc, $ba3e

jr_034_6525:
    ret nz

    pop hl
    rrca
    ld a, [bc]
    ld bc, $06fb
    cp a
    ld a, a

jr_034_652e:
    call $f800
    nop
    scf
    inc e
    ld a, a
    ld a, a
    ld h, e
    db $fd
    nop
    add d
    ei
    inc b
    rst $30
    ld [$0976], sp
    ld sp, hl
    nop
    add a
    jr nc, jr_034_6525

    db $e3
    db $e3
    rlca
    and h
    ld [$2800], sp
    rrca
    ld c, a
    add hl, de
    ld d, b
    jr nc, jr_034_64e2

    adc $00
    db $fc
    nop
    nop
    jr jr_034_6571

    xor l
    and h
    ld l, e
    nop
    ld b, e
    ld a, $3c
    rst $28
    db $eb
    ld e, $3c
    jr jr_034_6566

jr_034_6566:
    db $10
    ld [$7c10], sp
    jr c, jr_034_652e

    call nz, $0407
    ld c, $78

jr_034_6571:
    ld sp, $c0e0
    dec sp
    or b
    ldh [rNR10], a
    inc b
    nop
    ld bc, $0321
    inc bc
    ld [bc], a
    ld b, e
    nop
    add d

jr_034_6582:
    inc de
    ld [c], a
    rra
    adc [hl]
    ld a, a
    ld [hl], c
    rst $38
    ld bc, $ff60
    and b
    rst $38
    jr nz, @-$03

    db $10
    ld hl, $dd00
    jr nc, jr_034_6582

jr_034_6596:
    jr c, jr_034_6596

    jr z, jr_034_6521

    ld a, a
    db $10
    rlca
    rst $38
    rrca
    pop bc
    inc c
    rst $38
    db $10
    rst $38
    nop
    rra
    ldh a, [$bf]
    ldh [rIE], a
    pop hl
    rst $38
    pop bc
    ld [bc], a
    cp h
    jp $827e


    cp $02
    ld hl, $00f4
    inc c
    ret c

    ld a, b
    ldh a, [$50]
    ldh [$a0], a
    nop
    add c
    ld b, b
    ld bc, $0300
    ld bc, $2030
    jr nz, jr_034_65c9

jr_034_65c9:
    ld b, b
    jr nz, @+$4f

    ld b, b
    reti


    ld b, b
    cp d
    pop bc
    nop
    di
    add c
    rst $30
    ld bc, $67c4
    db $e4
    ld h, a
    nop
    ld [hl], h
    rst $20
    or h
    rst $30
    or h
    or a
    inc a
    or a
    nop
    jr nz, jr_034_6625

    jr c, @+$31

    rra
    rst $38
    nop
    rst $38
    inc bc
    rra
    ldh [$0a], a
    push af
    ld bc, $27fe
    ld h, c
    pop bc
    jr nz, jr_034_663b

    nop
    cp a
    ld b, b
    ld d, d
    xor l
    xor a
    ld c, h
    cp $8f
    ld e, a
    and b

jr_034_6603:
    xor l
    ld h, c
    sbc h
    ld h, e
    nop
    ldh [$1f], a
    add b
    ld a, a
    inc bc
    rst $38
    ld c, $fc
    nop

jr_034_6611:
    jr c, jr_034_6603

    ldh [$c0], a
    db $10
    ldh a, [rNR41]
    ldh [$0a], a
    ld b, b
    ret nz

    ret nz

    add b
    jr nz, jr_034_6620

jr_034_6620:
    add b
    cp a
    ld [bc], a
    add c
    ld a, a

jr_034_6625:
    ret nz

    ld a, a
    ld b, b
    rst $38
    add c
    sbc b
    nop
    ld h, a
    ret nz

    ccf
    rst $38
    ld [hli], a
    di
    and c
    jp $a000


    xor $46
    rst $00
    ld c, a
    nop

jr_034_663b:
    pop bc
    ret nz

    ld b, b

jr_034_663e:
    add b
    jr nz, jr_034_6652

    add hl, hl
    inc de
    ld [de], a
    inc b
    inc b
    ld [bc], a
    nop
    nop

jr_034_6649:
    ld b, b
    ld bc, $40f0
    cpl
    ret nz

    jr jr_034_6611

    ret z

jr_034_6652:
    sub b
    dec hl
    jr nz, jr_034_663e

    ld h, b
    ld hl, sp+$40
    ldh a, [$67]
    ld [$2104], sp
    ld c, a
    inc bc
    inc d
    nop
    inc bc
    inc b
    inc de
    ld bc, $0e06
    ld [$0006], sp
    inc b
    ld b, $07
    inc b
    and $2c
    rst $30
    and h
    nop
    db $e3
    or d
    ld a, e
    ld a, d
    rra
    dec a
    dec de
    dec de
    inc h
    add hl, de
    ld a, [de]
    ld hl, $fe11
    ld hl, $ff10
    ld b, b
    jr nz, jr_034_6649

    ld b, b
    rst $38
    db $fc
    ld b, $f6
    inc c
    nop
    ld hl, sp+$0c
    ld a, b
    adc b
    ld [$10f8], sp
    ldh a, [$84]
    ld h, c
    inc bc
    adc [hl]
    rlca
    db $fc
    ld b, c
    ld a, b
    rrca
    inc b
    ld [$180f], sp
    rra
    db $10
    ld hl, $03f6
    inc b
    xor $02
    xor $04
    db $fc
    ld hl, $f808
    ret z

    ld hl, $143e
    jr z, jr_034_6710

    inc c
    rlca
    inc b
    inc b
    rlca
    ld [bc], a
    inc bc
    ld b, $03
    daa
    jr jr_034_66d3

    ld [$ff01], sp
    ld [bc], a
    cp $3c
    inc c
    ld hl, sp+$18
    and c
    ld hl, $21f0
    ld e, $f0

jr_034_66d3:
    add b
    nop
    nop
    inc c
    ld [hli], a
    ld bc, $8501
    inc c
    ld bc, $2402
    rra
    nop
    rrca
    ld hl, sp+$70
    add b
    add b
    daa
    rra
    ld a, b
    jr nz, jr_034_66f0

    ld sp, hl
    ld b, c
    pop af
    add hl, bc
    pop af

jr_034_66f0:
    ld sp, hl
    inc e
    ld [$030d], sp
    inc bc
    adc b
    ld [hl-], a
    adc h
    add h
    add e
    nop
    ld b, b
    add b
    ret nz

    ld b, b
    ldh [rLCDC], a
    ldh a, [rNR41]
    dec b
    ld hl, sp+$10
    nop
    nop
    ld bc, $ff22
    ld [hli], a
    add [hl]
    ldh [rNR41], a

jr_034_6710:
    jr @-$6e

    ld h, b
    dec a
    rrca
    ld a, [bc]
    ld [$0500], sp
    ld [$0404], sp
    ld [$0818], sp
    ld [$1000], sp
    jr jr_034_6724

jr_034_6724:
    inc b
    ld d, b
    nop
    sbc h
    ld a, [hl-]
    nop
    sbc b
    inc c
    ld a, b
    inc h
    ld e, b
    jr nc, @+$52

    jr nz, jr_034_6735

    ld h, b
    ld h, b

jr_034_6735:
    ld b, b
    ret nz

    ld b, b
    add b
    dec h
    rst $38
    nop
    jr nc, @-$1f

    db $fc
    adc a
    cp $03
    rst $38
    ld bc, $6180
    cp $07
    db $10
    ldh a, [rNR23]
    ldh a, [$38]
    nop
    ldh [$78], a
    ldh [$5c], a
    and b
    db $fc
    nop
    cp $01
    db $fc
    adc e
    rlca
    rra
    jr nc, jr_034_679c

    jr nz, jr_034_67a0

    nop
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    ld a, a
    pop bc
    rst $38
    nop
    add c
    ldh a, [$27]
    ld [c], a
    ld [hli], a
    pop hl
    ld b, d
    pop bc
    nop
    ld b, c
    pop bc
    add b
    add e
    add c
    ld b, $07
    rst $38
    ld [bc], a
    rst $38
    ld [$101f], sp
    rst $38
    jr nz, jr_034_67be

    rst $38
    inc b
    add b
    rst $38
    ld bc, $1fff
    ld l, $e1
    nop
    ld b, b
    rst $38
    ld hl, $ff03
    ld e, $fc
    ld a, h
    ldh [rSC], a
    rst $38
    sbc c
    or $e6
    add $84

jr_034_679c:
    ld l, a
    cp $00  ; and a / or a
    rst $38

jr_034_67a0:
    ld a, c
    ld c, e
    ret z

    ld c, d
    ret c

    jp c, $047c

    ld l, l
    sbc d
    ld e, d
    rra
    ldh a, [rNR42]
    rla
    ld hl, sp+$00
    adc a
    ld hl, sp+$6f
    ld a, b
    rra
    jr c, jr_034_67f3

    inc l
    nop
    dec h
    xor [hl]
    ld [bc], a
    ld [bc], a

jr_034_67be:
    ld b, $04
    adc h
    inc b
    nop
    ret z

    ld [$08f8], sp
    add sp, $10
    ld a, [c]

jr_034_67ca:
    db $10
    db $10
    di
    ld [de], a
    nop
    nop
    dec bc
    stop
    ld bc, $0a10
    ld bc, $0001
    ld [$0c20], sp
    ld hl, $4004

jr_034_67df:
    ld b, $21
    add e
    ld b, e
    add d
    ld a, h
    adc h
    ld a, [$8700]
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    ret nc

    rra
    nop
    jr c, jr_034_67df

jr_034_67f3:
    db $f4
    rst AddAToHL
    ld h, d
    nop
    nop
    add b
    dec b
    nop
    ld [hl], h
    ld hl, sp-$01
    nop
    ld hl, $2af0
    add b
    ld b, b
    ld [bc], a
    ld bc, $0600
    ld [$c000], sp
    rst $08
    adc e
    ld h, b
    ld [$2310], sp
    ld [hl-], a
    ld b, d
    ld hl, $0300
    ld bc, $0503
    inc bc
    ld [hl], b
    and b
    ld e, b
    nop
    sub b

Jump_034_681f:
    ld e, l
    adc b
    jp z, $de0f

    xor h
    ld a, a
    nop
    db $76
    ld [hl], l
    ld d, l
    ldh a, [rRP]
    pop af
    ld e, $e1
    db $10
    ld a, $f1
    ld l, $61
    or c
    ld c, [hl]
    pop af
    ld c, [hl]
    ld a, [bc]
    db $e3
    ld e, a
    rst $00
    nop
    ld b, c
    ld bc, $c321
    ld [bc], a
    ld bc, $00c1
    add b
    nop
    rst $38
    jr nz, jr_034_67ca

    rra
    ld a, a
    add b
    rst $38
    daa
    ld h, c
    ld [hli], a
    ld b, b
    rlc b

jr_034_6854:
    rlca
    ldh a, [$7f]
    ret nz

    cp a
    jr nz, jr_034_689a

    cp [hl]
    nop
    ld a, a
    ld b, $07
    inc e
    rra
    rst $20
    db $fc
    ld b, $04
    db $fd
    rrca
    rst $38
    rrca
    ld hl, sp+$25
    rlca
    cp $00  ; and a / or a
    push hl
    rlca
    db $dd
    add hl, de
    rst $08
    add hl, bc
    ld d, $66
    nop
    db $ec
    inc d
    db $f4
    call nc, $34f8
    jr c, jr_034_6854

    ld b, b
    nop
    nop
    rrca
    ld l, [hl]
    ld a, a
    db $dd
    rst AddAToHL
    dec c
    rrca
    nop
    rlca
    ld b, $15
    rrca
    inc c
    rlca
    add hl, de
    rrca
    ld bc, $1f39
    ld [hl], e
    sub d
    di
    ld a, [c]

jr_034_689a:
    di
    inc hl
    nop
    ld [de], a
    add hl, sp
    rst AddAToHL
    db $fd
    adc e
    ld a, a
    add [hl]
    rst $08
    stop
    ld bc, $a010
    ld [$9c10], sp
    dec bc
    nop
    xor h
    call c, $4fc7
    jp $e342


    jp nz, $e700

    and d
    rst $30
    xor d
    rst $30
    sub d
    ld l, a
    sbc h
    nop
    cp $81
    db $fd
    ld [bc], a
    pop af
    ld sp, $28f8
    db $10
    db $fc
    inc d
    or $21
    ld [de], a
    ei
    ld a, [bc]
    db $fd
    nop
    dec b
    ld l, l
    dec b
    nop
    nop
    add b
    add b
    pop bc
    nop
    ld b, b
    ld h, d
    ld b, c
    inc hl
    ld hl, $2137
    ld e, $1a
    ld de, $121d
    cpl
    ld h, b
    add b
    ld b, c
    ret nz

    nop
    nop
    ldh [rP1], a
    ld a, b
    add b
    ld bc, $0703
    nop
    inc bc
    inc b
    dec b
    inc c
    dec b
    ld b, $0d
    inc c
    nop
    ld c, $18
    ld c, $2c
    ld a, [de]
    rst $30
    db $e3
    or d
    nop
    inc l
    xor b
    ccf
    adc b
    dec a
    inc a
    sub h
    inc d
    nop
    sub h
    inc e
    sbc a
    inc de
    sbc a
    cp e
    ld a, h
    sbc $11
    ldh [$fc], a
    nop
    ld bc, $020a
    ld bc, $0000
    dec c
    inc h
    ld a, a
    rst $38
    rrca
    ld c, $43
    add c
    rrca
    ld c, $86
    rst $38
    nop
    push hl
    ld a, a
    inc [hl]
    rra
    dec e
    rrca
    dec bc
    ld c, $00
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld l, b
    inc [hl]
    ld [bc], a
    ld hl, sp+$24
    or b
    db $e4
    ld d, b
    ld h, h
    ld hl, $4076
    ld b, h
    ld hl, $c7d6
    inc a
    sbc h
    sbc b
    inc l
    db $10
    inc d
    jr jr_034_6958

jr_034_6958:
    add b
    inc b
    add hl, bc
    add c
    rlca
    nop
    dec e
    ccf
    ld a, [de]
    ccf
    dec bc
    ld a, $3b
    ld e, $00
    dec bc
    ld b, [hl]
    ld c, e
    ld h, [hl]
    jp hl


    and a
    ld hl, sp+$6f
    nop
    add c
    nop
    add e
    nop
    adc e
    nop
    sbc a
    nop
    nop
    ccf
    add c
    ld l, [hl]
    sub e
    db $ed
    sub a
    db $dd
    or a
    nop
    rst $38
    ld a, $ff
    inc h
    rst $38
    ld c, b
    rst $38
    rst JumpTable
    nop
    ld a, a
    and c
    cp $c3
    rst $38
    ldh [$f2], a
    ld b, c
    nop
    rst $38
    inc b
    cp $1c
    jp nz, $3dfc

    cp $00  ; and a / or a
    cp a
    jp nz, $73ee

    rst $30
    ld sp, hl
    db $eb
    ld l, c
    nop
    ld b, l
    dec b
    rra
    dec b
    ld e, a
    dec b
    ld [hl], a
    dec c
    nop
    cp d
    dec c
    db $fc
    rra
    ldh a, [rNR41]
    push hl
    ld e, c
    nop
    dec de
    inc d
    rra
    inc c
    adc a
    ld [$0ccf], sp
    nop
    rst $08
    dec bc
    rst $08
    adc h
    rst $28
    adc e
    db $ec
    inc b
    nop
    rst $38
    add b
    cp a
    ret nz

    rst JumpTable
    ld h, b
    rst $28
    ldh a, [rP1]
    pop de
    ld e, a
    sbc [hl]
    adc a
    ccf
    inc de
    ld a, a
    ld hl, $fc00
    ld a, [de]
    call c, $e83a
    ld a, [hl-]
    ld [hl], b
    ld [$f800], a
    xor b
    ldh [$78], a
    ldh a, [$90]
    ldh a, [$f0]
    nop
    rla
    sbc h
    inc l
    sbc [hl]
    ld [hl-], a
    and [hl]
    ld a, [hli]
    ld [hl-], a
    jr nz, @+$34

    ld [hli], a
    ld hl, $2312
    inc sp
    inc bc
    cp $51
    nop
    ld h, c
    rst $38
    pop bc
    ld a, [hl]
    add c
    nop
    ldh [$7b], a
    ld bc, $2c21
    ld c, $0a
    add b
    add b
    ld b, c
    add b
    nop
    ld [hl], b
    nop
    db $fc
    nop
    cp $00  ; and a / or a
    ld a, a
    nop
    ld c, $1f
    nop
    inc bc
    ld bc, $ff40
    ld e, [hl]
    ld b, a
    nop
    ld d, l
    ld b, [hl]
    db $d3
    jp $e3d3


    ld d, b
    ld h, [hl]
    nop
    jr nc, jr_034_6a65

    jr @+$1e

    add hl, bc
    inc c
    dec b
    add e
    nop
    jp nz, Jump_034_72e6

    db $db
    cp [hl]
    push af
    rst AddAToHL
    db $fd
    nop
    cp e
    sbc a
    cp [hl]
    or $e2
    and $34
    ld [hl], h
    nop
    or a
    ld [hli], a
    or e
    db $db
    ld de, $1155
    ld a, [de]
    nop
    dec de
    dec sp
    rla
    add hl, hl
    ld hl, $2372
    ld [$bf00], a
    and a
    db $fd
    ld l, a
    ld sp, hl
    rra
    pop af
    ccf
    nop
    pop hl

jr_034_6a65:
    ld a, a
    add $fc
    adc b
    ld sp, hl
    db $10
    ld [hl], b
    nop
    ld h, c
    or c
    ld h, b
    ret nz

    jr nz, jr_034_6ad3

    nop
    or b
    nop
    jr nz, @-$7c

    add c
    ld h, a
    adc $f9
    ld a, [c]
    ld a, c
    nop
    ld a, c
    ld l, e
    ld e, c
    inc bc
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, d
    ld b, $c4
    call z, $dd44
    ld c, b
    db $d3
    nop
    ld l, e
    rst $20
    ld b, h
    rst JumpTable
    ld c, b
    rst $38
    ld [hl], b
    rst $28
    nop
    ld [hl], b
    rst $38
    ld e, a
    ret c

    sub b
    sbc b
    adc b
    and $00
    inc b
    ld [c], a
    ld [bc], a
    di
    ld bc, $00f0
    ld hl, sp-$80
    ld hl, $fc80
    ld h, b
    ld a, $10
    ld a, a
    ld b, b
    nop
    ccf
    jr nz, @-$5f

    sub b
    rst $08
    ld c, b
    scf
    inc [hl]
    nop
    dec bc
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ldh a, [rNR10]
    and b
    ld hl, $21f8
    ld [$08f9], sp
    db $fd
    add hl, bc
    nop
    db $fd
    dec b
    db $fd

jr_034_6ad3:
    add l
    dec a
    ld e, $28
    ld [hl], b
    ld a, [bc]
    ldh [rLCDC], a
    ret nz

    add b
    ld b, b

jr_034_6ade:
    nop
    ld h, b
    cp $00  ; and a / or a
    add c
    ld a, [hl]
    pop bc
    ccf
    ldh [$2f], a
    ldh a, [$9f]
    nop
    ldh a, [$df]
    ld [hl], b
    rst $30
    jr c, jr_034_6ade

    ld e, $c0
    jr nz, jr_034_6af5

jr_034_6af5:
    ldh a, [rNR42]
    ld [$08f4], sp
    ld hl, sp+$04
    nop
    ld a, [$f804]
    ld b, $fd
    ld [bc], a
    add b
    ld b, b
    nop
    ret nz

    jr nz, @-$1e

    db $10
    ld a, b
    nop

jr_034_6b0c:
    jr c, jr_034_6b0e

jr_034_6b0e:
    add h
    and b
    dec e
    ld [bc], a
    inc c
    inc bc
    ld hl, $010e
    nop
    ld b, $01
    rlca
    nop
    rlca
    ld [bc], a
    dec e
    ld c, $00
    add b
    nop
    ret nz

    nop
    ld h, b
    add b
    ld [hl], b
    ret nz

    nop
    jr c, jr_034_6b0c

    ld a, h
    ldh a, [$5f]
    add sp, -$09
    ld c, h
    rlca
    ld b, $02
    inc bc
    ld bc, $2100
    ret nz

    dec a
    nop
    ld l, h
    inc h
    ld a, h
    ld a, h
    sub h
    call z, $fc46
    nop
    ld a, $62
    ld a, $22
    ld e, $12
    add hl, de
    ld c, $00
    ld c, l
    ld a, a
    cp c
    ld e, a
    ld a, l
    ld a, a
    inc a
    ld b, a
    nop
    inc h
    scf
    ld h, $33
    inc de
    inc de
    rra
    ld e, $00
    ld [hl], e
    ld [hl], e
    sub c
    ldh a, [rNR23]
    ldh a, [$39]
    add sp, $00
    ccf
    ret z

    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ff00
    adc l
    rst $38
    ld h, e
    ccf
    add hl, de
    rrca
    ld b, $00
    add e
    ld bc, $8041
    pop bc
    ld b, c
    and $47
    nop
    cp c
    cp b
    cp e
    pop de
    rst $20
    ld hl, $c2ef
    nop
    rst JumpTable
    add a
    cp a
    adc b
    rst $38
    db $10
    cp a
    ld h, b
    nop
    adc b
    adc b
    adc h
    ld [$040c], sp
    db $f4
    db $e4
    nop
    db $fc
    inc e
    cp $00  ; and a / or a
    ld a, [hl]
    nop
    ld c, $00
    dec b
    rrca
    ld [$0707], sp
    inc bc
    jr nz, jr_034_6bb0

    ld h, b

jr_034_6bb0:
    and b
    dec h
    ld [bc], a
    ld c, b
    pop bc
    pop hl
    or c
    ld a, e
    cp $00  ; and a / or a
    rrca
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$a0], a
    rst $38
    nop
    rst $38
    ld a, l

jr_034_6bc5:
    ld b, l
    add hl, sp
    dec l
    dec e
    add hl, de
    adc c
    nop
    adc c
    ld e, c
    ld c, c
    add hl, hl
    add hl, sp
    add hl, de
    ld de, $04d1
    pop af
    ei
    rlca
    rst $38
    nop
    pop hl
    ccf
    ret nz

    ld [bc], a
    rrca
    ldh a, [$e0]
    rst $38
    rra
    rst $38
    ld de, $fe0a
    jr @+$03

    ld bc, $2e80
    xor e
    db $fc
    inc bc
    ldh a, [rSB]
    rrca
    ld bc, $f3ff
    ld c, d
    pop af
    ld c, c
    ld hl, $e800
    pop de
    jp hl


    ld d, b
    ld l, b
    ret nc

    xor b
    ret nc

    nop
    add sp, -$70
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp-$80
    nop
    db $fc
    ld b, b
    xor [hl]
    or b
    rst $00
    sbc b
    rst $00
    ld c, h
    nop
    ld b, a
    ld b, [hl]
    rrca
    dec b
    rlca
    inc bc
    inc bc
    ld bc, $0130
    nop
    ld h, b
    ld a, e
    rra
    ld [$103f], sp
    nop
    ld a, a
    and b
    cp a
    ret nz

    rst $38
    ld b, b
    ccf
    ld h, b
    nop
    ld a, a
    jr nz, jr_034_6c72

    ld hl, $02fe
    cp $06
    nop
    ld a, [c]
    ld c, $f2
    ld e, $e2
    ld a, $c2
    ld a, [hl]
    jr nz, jr_034_6bc5

    cp $21
    push hl
    db $e4
    scf
    scf
    inc e
    ld bc, $1d16
    dec d
    ld e, $17
    ld sp, $2020
    nop
    jr nc, jr_034_6c76

    ld hl, sp-$08
    ret z

    adc b
    ld a, b
    ld [hl], b
    ld bc, $a0b8
    ret c

    ret nc

    ldh a, [$30]
    nop
    add b
    add b
    ld h, $78
    db $10
    ld a, b
    ld [$093d], sp
    ld e, $00
    ld b, $1e
    ld [bc], a

jr_034_6c72:
    dec a
    inc bc
    rlca
    inc b

jr_034_6c76:
    rrca
    ld bc, $3f08
    db $10
    rst $28
    ld [hl], b
    sub a
    ret c

    daa
    add b
    ld h, c
    and b
    ld h, b
    ret nc

    jr nc, @+$01

    rra
    rst $38
    ld d, b
    db $10
    pop hl
    ld de, $3120
    pop hl
    pop af
    pop hl
    ld b, b
    ld hl, $c121
    ld h, c
    jp $c543


    ld b, a
    jr z, jr_034_6c9d

jr_034_6c9d:
    rst $38
    ld bc, $0f0c
    add hl, bc
    add hl, bc
    ld bc, $06ff

jr_034_6ca6:
    nop
    rst $38
    dec sp
    db $fc
    rst JumpTable
    ldh [$03], a
    cp $07
    ld bc, $1bff
    db $fc
    ld a, a
    ldh [$bf], a
    ret nz

    cp b
    jr nz, jr_034_6ca6

    sub b
    ld hl, $90ee
    xor [hl]
    ret nc

    ld l, a
    nop
    pop de
    rst $30
    ld c, c
    sub $6f
    inc a
    ld sp, hl
    ld h, a
    jr nz, jr_034_6cf0

    ld l, a
    ld hl, $ef68
    cp b
    sbc a
    stop
    rst $38
    ldh a, [$3f]
    and b
    rst $38
    ld b, b
    db $fc
    nop
    ld e, b
    rst $38
    ld b, c
    cp $41
    add hl, hl
    ld sp, hl
    ld bc, $00f1
    inc bc
    ld a, [hl]
    inc hl
    db $dd
    ld l, h
    ld sp, hl
    ld c, h
    jp hl


    nop
    ld d, h

jr_034_6cf0:
    db $ec
    or d
    cp l
    ld [c], a
    ld a, l
    ld [hl-], a
    rrca
    add hl, bc
    ld_long a, $ff82
    add c
    ld b, c
    pop bc
    ld a, a
    ld hl, $c060
    ld b, e
    ld hl, $1c1e
    ld c, $0b
    rra
    nop
    dec e
    dec a
    daa
    ld a, l
    ld b, [hl]
    adc a
    add e
    rlca
    stop
    inc bc
    nop
    jr nz, jr_034_6d1f

    inc bc
    ld a, h
    add a
    nop
    db $fc
    rst $38
    add a

jr_034_6d1f:
    ld a, a
    add [hl]
    db $fd
    rst $38
    ld a, b
    nop
    rst $38
    nop
    ld a, a
    ld bc, $817f
    or $fa
    ld [$fc0c], sp
    ld [$20f8], sp
    db $fc
    inc b
    cp $01
    ld [bc], a
    rrca
    ld [$180f], sp
    rra
    db $10
    add c
    db $10
    jr nc, jr_034_6d81

    jr nz, @+$23

    ldh a, [rNR10]
    ret nz

    jr nc, jr_034_6d69

    ldh [rNR41], a
    ld h, c
    and b
    ld h, b
    ret nz

    ld h, b
    pop bc
    ld bc, $8441
    rst $08
    adc b
    adc $88
    adc h
    ld h, c
    nop
    sbc h
    cp $c2
    rst $00
    ld bc, $c08f
    add b
    ld bc, $60d0
    ld e, a
    ccf
    rra

jr_034_6d69:
    nop
    ccf
    add c
    db $10
    rst $38
    add b
    rst $38
    nop
    rrca
    pop bc
    add c
    nop
    nop
    ld [$1c28], sp
    inc b
    ld [bc], a
    dec h
    jr nc, jr_034_6df6

    ret c

    nop
    cp h

jr_034_6d81:
    inc e
    cp h
    sub c
    ld a, a
    inc hl
    cp $47
    nop
    db $fc
    adc a
    ld hl, sp+$5d
    di
    ld a, $ff
    add c
    db $10
    ld a, [hl]
    rst $38
    nop
    add c
    inc bc
    cp h
    ld a, a
    rst $08
    jr @-$0e

    ld a, a
    add b
    call $ff21
    ld a, b
    add a
    ret nz

    dec bc
    add hl, bc
    and c
    ldh [$dc], a
    inc sp
    db $fd
    ld a, [bc]
    rst $38
    inc b
    inc b
    rst $38
    ld [bc], a
    ccf
    nop
    add c
    inc a
    ld [hl], l
    nop
    inc hl
    ldh a, [$30]
    ldh a, [$90]
    ld hl, sp-$78
    sbc a
    jr nz, @+$62

    rst JumpTable
    ld b, c
    rst $08
    ld [hl], b
    rst $20
    cp b
    ld h, e
    nop
    db $fc
    ld [hl], c
    ld a, $11
    ld c, $00
    rst $38
    add b
    ret nz

    ld bc, $1f0d
    db $10
    jr nc, @+$01

    jp $04ff


    rst $38
    ld bc, $ff08
    db $10
    rst $38
    ldh [rIE], a
    nop
    ld bc, $1009
    ld bc, $02ff
    ld d, l
    inc c
    rst $38
    inc [hl]
    rst $30
    adc b
    scf
    jr nz, @+$01

jr_034_6df3:
    pop bc
    ld c, l
    rlca

jr_034_6df6:
    db $fc
    dec bc
    nop
    db $fc
    jr jr_034_6df3

    ccf
    ldh [$7f], a
    ret nz

    rst $38
    nop
    add b
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld b, $60
    dec e
    ld [c], a
    ldh [$1f], a
    dec hl
    ld bc, $030e
    ld bc, $0eff
    db $fc
    ld hl, sp-$10
    nop
    add b
    jr nz, jr_034_6e5e

    ret nz

    ld hl, $e040
    ld b, b
    adc h
    scf
    jr c, jr_034_6e37

    ccf
    jr z, jr_034_6e59

    ld hl, $3f68
    ld c, b
    ld c, a
    ld [bc], a
    ld a, b
    ld c, a
    ld d, b
    ld a, a
    rlca
    ld hl, sp+$61

jr_034_6e37:
    inc bc
    ld c, d
    db $fc
    ld hl, $fe01
    ld h, c
    ld e, a
    jr c, jr_034_6e71

    nop
    rra
    db $10
    rlca
    jr @+$21

    ld [$0c0b], sp
    ld bc, $040f
    rlca
    inc b
    nop
    rst $38
    add b
    ld bc, $880b
    dec l
    ld [bc], a
    inc bc
    ld a, [bc]

jr_034_6e59:
    ld hl, $1313
    ld [de], a
    add b

jr_034_6e5e:
    ld hl, $3615
    daa
    inc [hl]
    dec sp
    inc l
    cp $60
    ld bc, $0154
    dec bc
    ld a, b
    ld c, b
    ld e, h
    ld h, h
    ld a, h
    nop

jr_034_6e71:
    inc h
    ld l, $32
    dec a
    ld [de], a
    rra
    ld de, $811e
    ld hl, $0009
    rrca
    nop
    rlca
    inc b
    add c
    nop
    add h
    rlca
    ld h, h
    rst $20
    inc h
    rst $20
    rst $38
    nop
    sub e
    ld h, c
    ld a, a
    add b
    ld h, c
    ccf
    ret nz

    ld hl, $81ad
    daa
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld a, h
    nop
    ld bc, $0fff
    cp $7f
    ldh a, [$fe]
    add c
    nop
    ld hl, sp+$07
    db $e3
    rra
    call z, Call_034_783f
    rst $08
    nop
    add sp, -$61
    pop de
    ccf
    and e
    ld a, [hl]

jr_034_6eb6:
    ld b, a
    db $fc
    nop
    sbc a
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    ld a, a
    ret nz

    inc c
    rst $38

jr_034_6ec3:
    add b
    rst $38
    nop
    ld bc, $000a
    db $10
    cp a
    nop
    nop
    rst JumpTable
    nop
    rst $08
    nop
    rst $00
    nop
    jp RST_00


    ld c, l
    nop
    ld c, $00
    rrca
    nop
    add b
    ldh [rP1], a
    ldh [$a0], a
    jr nz, jr_034_6ec3

    ld d, c
    ld h, c
    ccf
    ld e, [hl]
    nop
    cp $24
    cp [hl]
    ld [c], a
    rst $38
    sub c
    ret nc

    rra
    nop
    ldh a, [$5f]
    ldh [$bf], a
    jr nz, jr_034_6eb6

    ld h, b
    ccf
    jr nz, @+$42

    ld a, a
    ld hl, $ffc0
    add b
    rst $38
    ret nz

    ld c, $7f
    ldh [$3f], a
    ldh a, [$35]
    add c
    add hl, hl
    rlca
    add hl, bc
    inc b
    dec b
    ld [bc], a
    inc bc
    ld bc, $0109
    ld [bc], a
    dec a
    ldh [$61], a
    scf
    dec sp
    ld hl, sp+$0f
    db $fc
    rlca
    db $fd
    nop
    inc bc
    cpl
    jr nc, jr_034_6f92

    jr nc, @+$01

    ret nc

    rra
    ld b, d
    db $10
    and c
    ccf
    jr nz, @+$01

    nop
    ld b, c
    ld bc, $fe00
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    ld [$ff80], sp
    ld e, $09
    ld hl, $890e
    inc d
    nop
    dec de
    inc e
    inc de
    jr z, jr_034_6f7f

    ldh [$7f], a
    add c
    db $10
    rst $38
    inc h
    rst $20
    ld h, c
    ld h, h
    rst $00
    ld b, h
    rst $00
    nop
    call nc, $a487
    and a
    ld a, h
    rst $20
    rra
    ldh [$90], a
    ld h, c
    rrca
    ldh a, [$a1]
    rlca
    ld hl, sp-$20
    ccf
    ld b, $c0
    ld a, a
    add b
    rst $38
    nop
    ld bc, $5809
    ld d, [hl]
    nop
    adc b
    ld a, [$4800]
    rra
    ldh a, [$80]
    add c
    add d
    nop
    add e
    add h
    add l
    add [hl]

jr_034_6f7f:
    add a
    adc b
    adc c
    adc d
    nop
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld h, b
    ld h, c
    ld h, d
    ld b, b
    ld h, e
    rra
    ld d, b
    sub b
    sub c

jr_034_6f92:
    sub d
    sub e
    sub h
    sub l
    nop
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld [bc], a
    sbc [hl]
    sbc a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    adc h
    rra
    ld d, b
    and b
    nop
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    nop
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    nop
    ld e, b
    db $10
    ld e, c
    ld e, d
    ld e, e
    rra
    ld d, b
    xor a
    or b
    or c
    add a
    nop
    or d
    or e
    or h
    or l
    add a
    add a
    or [hl]
    or a
    ld b, $b8
    cp c
    cp d
    cp e
    nop
    nop
    ld [$501f], sp
    cp h
    nop
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    nop
    push bc
    add $c7
    ret z

    ret


    jp z, $74cb

    add b
    rra
    ld l, b
    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d300

    call nc, $d6d5
    rst AddAToHL
    ret c

    reti


    jp c, $db10

    ld e, h
    ld e, l
    rra
    ld h, b
    call c, $dedd
    rst JumpTable
    nop
    ldh [$8c], a
    adc h
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    ld bc, $e7e6
    add sp, -$17
    ld l, h
    ld l, l
    ld l, [hl]
    rra
    ld e, b
    nop
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    nop
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    db $10
    ld a, h
    ld a, l
    ld a, [hl]
    rra
    ld e, b
    ld a, [$fcfb]
    db $fd
    nop
    cp $ff
    ld d, a
    ld bc, $0302
    inc b
    dec b
    ld bc, $0706
    ld [$6509], sp
    ld h, [hl]
    ld h, a
    rra
    ld e, b
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1200
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_034_7075

    ld [$7675], sp
    adc h
    ld l, a
    rra
    ld d, b
    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    jr nz, jr_034_708d

    ld [hli], a
    inc hl
    inc h
    nop
    dec h
    ld h, $27
    jr z, jr_034_709e

jr_034_7075:
    ld l, b
    ld e, [hl]
    adc h
    add b
    rra
    ld e, c
    ld a, [hli]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_034_7083

jr_034_7083:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_034_709c

    nop

jr_034_708d:
    ld a, b
    ld a, c
    rra
    ld h, b
    add hl, sp
    ld a, [hl-]
    dec sp
    add a
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_034_709c:
    ld b, d
    ld b, e

jr_034_709e:
    ld bc, $4544

jr_034_70a1:
    ld b, [hl]
    nop
    ld l, d
    ld l, e
    ld [hl], a
    rra
    ld e, b
    nop
    ld b, a
    ld c, b
    ld c, c
    add a
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    inc e
    ld a, d
    ld a, e
    ld a, a
    rra
    ld e, b
    rst $38
    ld bc, $5840
    rlca

jr_034_70c5:
    nop
    inc de
    stop
    dec bc
    rra
    jr nz, jr_034_70d3

    ld b, $00

Call_034_70cf:
    rst $28
    ld b, d
    nop
    add hl, bc

jr_034_70d3:
    ld a, [hli]
    dec b
    ld l, $1f
    ld c, $1d
    dec bc
    inc a
    dec hl
    dec b
    inc b
    jr nz, jr_034_70e7

    rra
    inc c
    ld [bc], a
    jr nz, jr_034_7104

    db $10
    ld d, [hl]

jr_034_70e7:
    inc b
    rra
    rrca
    ld [bc], a
    call c, $2001
    ld a, $05
    db $d3
    ld b, b
    rra
    ld d, $01
    ld h, e
    inc b
    inc b
    rra
    dec e
    jr nz, jr_034_7137

    inc b
    inc b
    rra
    jr jr_034_70a1

    ccf
    inc b
    rra

jr_034_7104:
    dec c
    ld sp, $1ecd
    dec c
    rra
    inc d
    ld [bc], a
    inc bc
    rra
    dec e
    nop
    dec bc
    ld [bc], a
    ld b, e
    and e
    ccf
    inc b
    rra
    jr jr_034_711f

    ld [bc], a
    ld [bc], a
    ld a, [hl]
    rra
    ld d, $76

jr_034_711f:
    ld b, $21
    ld [hli], a
    rra
    ld [de], a
    ld [bc], a
    jr nz, jr_034_70c5

    inc bc
    ld a, [hl-]
    inc bc
    ld b, $22
    ld c, e
    rra
    jr jr_034_7130

jr_034_7130:
    ld a, a
    inc bc
    cp b
    rra
    ld [de], a
    rlca
    nop

jr_034_7137:
    inc de
    rra
    inc l
    nop
    and a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld b, b
    and a
    nop
    db $10
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    nop
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld h, d
    sbc [hl]
    rra
    ld de, $2300
    and c
    and c
    and d
    ld [hli], a
    and e
    dec b
    and c
    and h
    and l
    and c
    and [hl]
    inc l
    xor b
    rra
    ld [de], a
    nop
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    or b
    and a
    ld [bc], a
    or c
    xor h
    or d
    or e
    or h
    or l
    rra
    ld [de], a
    or [hl]
    inc bc
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    jr z, jr_034_71b2

    ld [$c0bf], sp
    pop bc
    jp nz, $101e

    jp $c5c4


    nop
    add $c7
    ret z

    ret


    rst $00
    jp z, $c7cb

    ld b, $9f
    adc a
    xor a
    cp [hl]
    cp l
    rra
    stop
    ld e, a
    call $ce00
    rst $08
    ret nc

jr_034_71b2:
    pop de
    jp nc, $d4d3

    push de
    ld bc, $d7d6
    ret c

    reti


    jp c, $dcdb

    ld e, $0f
    nop
    and b
    call $dedd
    rst JumpTable
    ldh [$e1], a
    ld [c], a
    nop
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$cc38], a
    and b
    rra
    ld c, $00
    ccf
    ld l, [hl]
    dec bc
    nop
    nop
    nop
    ld h, c
    ld c, e
    rra
    rra
    nop
    ld a, $42
    rst $38
    nop
    dec bc
    ret nz

    ret nz

    ret


    reti


    rrca
    inc c
    ld hl, $2110
    inc hl
    or e
    rrca
    inc c
    inc b
    add h
    call z, $84ce
    rrca
    inc c
    inc bc
    inc bc
    ld [hl], e
    ld a, e
    rrca
    inc c
    ldh [$e1], a
    ld [hli], a
    di
    di
    rrca
    dec c
    ldh a, [$f1]
    ld sp, hl
    rrca
    inc c
    rrca
    db $10
    rrca
    rst $08
    xor $0f
    inc c
    ld c, a
    add l
    ld l, c
    ld sp, $0f84
    inc c
    nop
    add b
    adc [hl]
    rst $08
    rrca
    inc c
    dec bc
    ld b, a
    ld hl, $6361
    rrca
    inc c
    ret c

    adc b
    call z, $0fdc
    inc c
    ld [$1f2f], sp
    add a
    rst $08
    rrca
    inc c
    db $f4
    ld hl, sp-$09
    ld b, d
    db $e3
    rrca
    inc c
    or b
    ld a, b
    cp b
    inc e
    rrca
    inc c
    rlca
    nop
    rlca
    rst AddAToHL
    rst $20
    rlca
    inc bc
    inc bc
    rlca
    rrca
    ret nz

    ld hl, $1f20
    ccf
    ccf
    ld a, [hl]
    rst $38
    cp $05
    db $fc
    ld sp, hl
    reti


    reti


    ld sp, hl
    ldh [$f0], a
    ld hl, $f007
    di
    or e
    or e
    di
    jr nz, jr_034_72af

    ld b, b
    ld [bc], a
    pop af
    di
    pop hl
    pop hl
    call z, Call_034_61ce
    inc c
    ld b, b
    ld c, $a7
    inc b
    add h
    ld [hl], a
    ld a, e
    ld a, e
    ld l, a
    inc b
    ld l, a
    ld c, a
    rrca
    rrca
    ld e, a
    dec h

jr_034_7282:
    ld a, e
    ld [hl], e
    inc b
    ld a, e
    inc bc

jr_034_7287:
    inc bc
    pop af
    di
    ld bc, $f00c
    ldh [rNR50], a
    pop af
    ld sp, hl
    ld h, c
    ldh a, [$f8]
    ld b, l
    reti


    pop bc
    nop
    sbc c
    nop
    db $10
    sbc $ec
    add sp, -$44
    cp b
    nop
    inc a
    jr c, @+$3e

    ld a, b
    cp h
    or h
    db $ec
    call nz, $ee00
    ld b, $0f
    db $fd
    ld a, c

jr_034_72af:
    ld a, a
    db $fd
    rst $38
    add b
    ld b, b
    ldh a, [$e1]
    ei
    ld [hl], c
    ld [hl], e
    ld [hl], c
    dec c
    nop
    inc bc
    adc [hl]
    rst $08
    adc a
    call $c98d
    add c
    jr z, jr_034_7287

    adc e
    dec h
    rst $08
    dec hl
    nop
    add b
    ldh [rP1], a
    ld h, c
    ld h, b
    add sp, -$20
    db $ec
    and $ec
    rst $20
    nop
    xor $e7
    ld l, a
    ld h, a
    ld l, a
    inc bc
    ld b, a
    call c, Call_034_40aa
    ld e, h
    jr nz, jr_034_7300

    jr nz, jr_034_7282

Jump_034_72e6:
    ld hl, $009c
    ret c

    ret c

    db $e3
    rst $20
    di
    rst $20
    rst $30

jr_034_72f0:
    db $e3
    ret nz

    ld h, c
    add hl, hl
    rst $28
    rst $00
    rra
    rrca
    rst $08
    rst $20
    ld e, $e7
    rst $08
    rst $00
    ld b, c
    dec h

jr_034_7300:
    ld [hli], a
    inc sp
    db $f4
    inc bc
    ld hl, sp-$38
    sbc h
    sbc b
    call z, Call_034_4188
    dec h
    add b
    add hl, hl
    cp b
    inc e
    or b
    ld a, b
    rst $28
    rst $30
    rst $30
    ld [bc], a
    rst JumpTable
    rst JumpTable
    sbc a
    rra
    rra
    cp a
    dec h
    rst $38
    add [hl]
    jr nz, jr_034_73a0

    ld a, a
    cp $ff
    ld hl, $fc22
    add b
    ld hl, $f0fc
    ld hl, sp+$50
    ldh [rTIMA], a
    inc bc
    add c
    inc l
    rrca
    sbc a

jr_034_7334:
    ld bc, $e16d
    di
    ld e, h
    sub d
    nop
    inc de
    nop
    nop
    rrca

jr_034_733f:
    ld c, $1c
    inc c
    rrca
    rrca
    inc e
    sub d
    rrca
    ld c, $ff
    ld a, a
    ld c, $0e
    db $fc
    db $fc
    rrca
    ld c, $19
    ld h, b
    rlca
    rrca
    ld c, $00
    db $10
    xor a
    rst JumpTable
    nop
    nop
    dec bc
    ld bc, $0f07
    rra
    rra
    ccf
    ld a, a
    ccf
    ld [hli], a
    ld [c], a
    jr nz, jr_034_7399

    cpl
    ldh [$f0], a
    ldh [rNR41], a
    ret nz

    jr z, jr_034_72f0

    ret nz

    ld [hli], a
    ld bc, $0121
    dec e
    ld e, $6f
    ccf
    inc a
    ld e, e
    rst $38
    ld e, e
    ld h, b
    ccf
    inc [hl]

jr_034_7380:
    ld h, h
    add c
    nop
    dec bc
    cpl
    cp $fc
    cp c
    rst $38
    ei
    add d
    jr nz, jr_034_7380

    ei
    dec e
    ld e, $1f
    ld b, b
    sbc a
    jr c, jr_034_7334

    rst JumpTable
    ld b, d
    jr nz, jr_034_73cd

jr_034_7399:
    ldh [$e0], a
    rst $20
    ld e, b
    rst $08
    jr nz, jr_034_733f

jr_034_73a0:
    ld b, d
    inc [hl]
    rra
    rrca
    inc bc
    ld [bc], a
    inc bc
    ld bc, $8100
    ld bc, $0081

jr_034_73ad:
    dec bc
    db $fd

jr_034_73af:
    jr nc, jr_034_73af

    rst $38
    nop
    dec c
    ccf
    ret z

    ldh a, [$fc]
    ld hl, sp+$69
    db $fc
    jr nz, @+$39

    cp $42
    rst $38
    ld a, a
    ld hl, $3f08
    ccf
    rra
    rrca
    jr nz, jr_034_73d0

    inc bc
    rlca
    adc a
    ld [hli], a

jr_034_73cd:
    ld bc, $ff03

jr_034_73d0:
    ret nz

    add hl, sp
    ld e, a
    jr nz, jr_034_73d8

    db $fc
    rst JumpTable
    adc a

jr_034_73d8:
    add a
    adc a
    adc a

jr_034_73db:
    add hl, sp
    ld e, e
    jp z, $3d20

    add e
    ld bc, $fc35
    ld hl, $65fc
    ld hl, sp+$21
    jr nz, jr_034_73db

    ldh [rNR42], a
    ldh [$33], a

jr_034_73ef:
    reti


    add hl, sp
    inc a
    rrca
    ld hl, $1f20
    ccf
    ld hl, $3f22
    rst $38
    nop
    dec c
    rst $30
    rst $28
    add c
    add b
    add b
    ret z

    jr nz, jr_034_73ad

Jump_034_7405:
    add c
    di
    jr nz, @-$1b

    and e
    jp $030c


    inc bc
    ld b, e
    add e
    daa
    ld a, [hli]
    ei
    di
    ld b, h
    rst $38
    nop
    dec c
    rst $28

jr_034_7419:
    rst $38
    add c
    nop
    rrca
    rra
    ccf
    add hl, bc
    ccf
    rra
    rrca
    rra
    ld [hli], a
    rlca
    rrca
    ld [hli], a
    nop
    rlca
    inc bc
    ld bc, $0001
    nop
    ldh a, [$f8]
    cp c
    jr nz, @-$02

    ld hl, $2440
    ldh a, [$e0]
    ld [hl-], a
    ldh [rSB], a
    inc c
    ld [hli], a
    ld d, l

jr_034_743f:
    db $fd
    db $fd
    ld sp, hl
    ei
    ld sp, hl
    jr nz, jr_034_743f

    di
    jr nz, @-$17

    di
    rst $30
    ldh [$81], a
    dec b
    add c
    pop bc
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld c, d
    ldh a, [rNR42]
    nop
    rst $38
    add b
    ld a, a
    ld hl, $4d7f
    ccf

jr_034_7461:
    ld b, d
    rra
    ccf
    xor a
    add b
    cp $40
    add hl, bc
    db $fc
    ret nz

    ldh [$c0], a
    jr nz, jr_034_73ef

    ld bc, $0021
    ld bc, $0103
    nop
    inc bc
    nop
    nop
    ld a, a
    ld [hl-], a
    ccf
    ld a, a
    jr nz, @-$1f

    jr jr_034_7461

    cpl
    rst $20
    add hl, bc
    rst $28
    rst $00
    rst $28
    rst $08
    jr nz, jr_034_7419

    rrca
    ld hl, $0f02
    ld e, $0f
    jr jr_034_749e

    add c
    nop
    add hl, bc

jr_034_7495:
    ld bc, $21c5
    ld a, $00   ; xor a
    di
    ei
    jr nz, @+$01

jr_034_749e:
    add b
    ld [$fffe], sp
    inc b
    ld hl, sp+$2f
    rst $28
    rst $30
    rst $28
    nop
    rst $20
    rst $00
    rst $28
    add a
    rst $08
    rrca
    adc a
    rrca
    ld b, $0f
    ld e, $0f
    jr jr_034_74c3

    cp e
    ld h, b
    db $fc
    db $10
    cp $08
    ldh a, [$3f]
    rst $08
    rst $28
    rst $28
    rst $08

jr_034_74c3:
    inc d
    adc a
    rst $08
    sbc a
    dec a
    rra
    ld hl, $1f1e
    ld hl, $1c1c
    scf
    ld e, a
    ccf
    cp a
    sbc a

jr_034_74d4:
    jr nz, jr_034_7506

    rra
    ccf
    add hl, hl
    nop
    ld a, [bc]
    ld hl, sp-$04
    ld sp, hl
    di
    inc c
    db $e3
    rst $30
    rst $30
    rst $20
    jr nz, jr_034_7495

    ccf
    ld a, a
    nop
    ccf
    sbc a
    adc a
    rst JumpTable
    call c, $ccc9
    call z, $afc2
    and b
    db $10
    cp b
    ld [de], a
    ld [de], a
    rrca
    inc c
    ld [hl], b
    ld de, $62f8
    ld [hl], a
    xor c
    rst $00
    rst $00
    rst $20
    ld h, b
    ld h, e
    ld h, a

jr_034_7506:
    jr nz, jr_034_7527

    inc c
    rst JumpTable
    adc a
    scf
    rst JumpTable
    and b
    add hl, bc
    ld a, [$fcfc]
    ld sp, hl
    jp hl


    db $fd
    ld sp, hl
    jr nz, jr_034_7520

    ld d, b
    jr nc, jr_034_74d4

    sbc c
    xor a
    ld a, [hl]
    cp $7e

jr_034_7520:
    jr jr_034_75a0

    rst $38
    cp $ab
    jr nz, jr_034_754a

jr_034_7527:
    rlca

jr_034_7528:
    ld a, e
    nop
    ld [hl], e
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    adc a
    rra
    db $e3
    ld h, c
    rst $00
    di
    ld h, b
    rst $28
    rst $00
    sbc e
    cp e
    rrca
    inc c
    ld [$8f06], sp
    ld h, $26
    rrca
    inc c
    dec c

jr_034_7544:
    ld c, $66
    ld b, d
    ld h, h
    rrca
    inc c

jr_034_754a:
    inc l
    add hl, de
    ld e, h
    call z, $0c0f
    sbc b
    db $10
    sbc h
    add hl, bc
    add hl, bc
    rrca
    inc c
    ccf
    ccf
    sbc a
    sbc a
    nop
    call z, $dccc
    call z, $dc8c
    inc a
    sbc h
    jr nz, jr_034_75a2

    ld a, h
    or e
    cp $fe
    db $f4
    ld hl, sp-$0e
    sub h
    ld b, b
    ldh a, [$f9]
    xor a
    ld h, a
    and b
    ld [hl], a
    db $10
    ld b, h
    jr c, jr_034_7528

    ld h, [hl]
    ld h, [hl]
    and $40
    ld h, [hl]
    ld h, a
    jr nz, jr_034_7544

    jp Jump_034_7baf


    ld [hl], e
    inc bc
    inc bc
    ld a, a
    ld a, [hli]
    ld a, a
    ld [hl], e
    dec h
    add a
    xor a
    ld sp, hl
    add b
    db $fd
    inc d
    ld sp, hl
    ld a, [$affc]
    sbc c
    add b
    cp c
    sbc c
    dec de
    ld e, c
    add hl, sp
    ld sp, hl
    or b
    ld b, b

jr_034_75a0:
    cp $80

jr_034_75a2:
    xor e
    nop
    ld sp, hl
    di
    ld sp, hl
    ld sp, hl
    ld a, c
    ld sp, hl
    dec sp
    ld [hl], c
    jr nz, jr_034_75b5

    add e
    xor a
    dec a
    add hl, sp
    ld bc, $3e01

jr_034_75b5:
    inc b
    ccf
    add hl, sp
    cp c
    add c
    jp $e6af


    and $00
    ld b, [hl]
    add a
    daa
    daa
    ld h, $26
    ld [bc], a
    sub e
    add b
    xor a
    ld a, h
    ld a, h
    inc d
    inc c
    db $ec
    db $e4
    ld h, [hl]
    inc d
    ld h, h
    dec b
    ld c, $af
    call z, $dc80
    call z, $2c20
    inc e
    xor a
    ret


    ret


    ret z

    call z, Call_034_70cf
    rst $08
    ld h, l
    xor a
    ld b, b
    nop
    nop
    ld [$1c1c], sp
    inc e
    inc d
    ld a, [hli]
    ld [hl], $00
    ld a, [hli]
    ld [hl], $3e
    ld [hli], a
    ld a, $2a
    ld e, l
    ld l, e
    nop
    ld e, l
    ld h, e
    ld l, e
    ld e, l
    ld a, a
    ld e, l
    ld [hl], a
    ld [hl], a
    ret nz

    add hl, de
    stop
    jr nz, @+$80

    ld a, [hl]
    ld a, l
    ld b, e
    ld a, e
    ld e, l
    add hl, bc
    ld [hl], a
    ld d, l
    ld a, e
    ld e, l
    rlca
    ld b, b
    ld a, [hl]
    ld a, [hl]
    rra
    ld b, b
    jr nz, jr_034_7658

    ld a, $33
    jr z, @+$59

    ld [hl], b
    ld d, b
    ld [hl], a
    ld d, a
    ld b, d
    ld a, a
    ld b, d
    ld [$635d], sp
    ld a, $3e
    rra
    ld b, b
    ld a, h
    ld b, $7c
    ld a, d
    ld b, [hl]
    ld [hl], l
    ld e, e
    add hl, sp
    db $10
    ld bc, $7b10
    ld bc, $755d
    ld e, e
    ld a, d
    ld b, [hl]
    ld a, h
    ld a, h
    rra
    ld b, b
    nop
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    ld e, a
    ld [hl], b
    ld d, b
    nop
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld e, [hl]
    ld [hl], b
    ld d, b
    dec l
    ld a, a
    ld e, a
    rrca

jr_034_7658:
    ld [$1f7f], sp
    ret nz

    ld bc, $7018
    ld a, a
    ld [hl], b
    ld a, [hli]
    ld [hl], a
    ld d, l
    scf
    ld [$8559], sp
    ld [$7f55], sp
    ld [hl], b
    ld [hl], a
    ld c, a
    ld [hl], a
    ld a, c
    jr nz, @+$81

    ld e, l
    ld b, a
    ld [$2885], sp
    rst JumpTable
    ld d, b
    rst $38
    db $10
    and c
    ld bc, $1c78
    rra
    ld b, b
    ld c, $0e
    ld c, $0a
    ld bc, $0030
    ld a, [hl]
    ld a, d
    ld a, [hl]
    ld e, d
    ld l, [hl]
    ld e, d
    ld a, d

jr_034_768f:
    ld h, [hl]
    jr nc, jr_034_76ce

    inc a
    ld e, a
    ld d, b
    ld de, $5b09
    ld a, d
    ld d, [hl]
    ld l, h
    nop
    ld d, h
    ld [hl], h
    ld c, h
    ld l, h
    ld d, h
    ld a, d
    ld d, [hl]
    ld a, l
    rst $08
    db $eb
    db $10
    ld e, a
    ld c, b
    ld [hl], b
    ld [hl], b
    or e
    jr z, @+$03

    jr z, jr_034_768f

    ld [hl], b
    sbc a
    db $10
    ld b, b
    ld l, e
    dec [hl]
    add hl, bc
    ld [hl], a
    ld c, c
    ld [hl], a
    ld c, c
    ld a, a
    ld b, c
    jr jr_034_772a

    ld d, l
    ld a, a
    ld bc, $1f10
    ld c, b
    dec sp
    dec sp
    scf
    nop
    dec l
    scf
    dec l
    ccf
    dec h

jr_034_76ce:
    dec sp
    dec h
    scf
    ld [bc], a
    add hl, hl
    ccf
    add hl, hl
    dec sp
    dec l
    ccf
    ld bc, $3708
    ld a, a
    scf
    ld a, a
    adc c
    push hl
    jr z, @+$01

    ld [hl], b
    cp a
    ld sp, $29b9
    ld b, c
    ld hl, $793f
    ret nz

    ccf
    jr nz, jr_034_772c

    ld [$5d55], sp
    ld h, e

Call_034_76f3:
    dec [hl]
    dec sp
    ld e, $4e
    ld e, $ff
    and c
    ld a, [hl]
    ld e, d
    db $dd
    jr @+$41

    ld e, c
    ccf
    jr nz, jr_034_7772

    nop
    ld e, l
    ld [hl], a
    ld l, a
    ld a, [hl-]
    ld [hl], $7d
    ld a, e
    ld a, e
    db $dd
    ld a, a
    ld a, b
    cp a

jr_034_7710:
    add hl, de
    ld [hl], a
    ld e, a
    pop bc
    sbc a
    ld sp, $3001
    ld a, a
    cp a
    sbc c
    rst $08
    ld d, l
    ld [$0924], sp
    ld [hl], $2a
    xor c
    ld [de], a
    ccf
    ld h, b
    ld e, a
    ld [$0931], sp

jr_034_772a:
    ld c, b
    ld l, e

jr_034_772c:
    ld bc, $7f08
    ld b, c
    ld b, $10
    ld a, a
    ld l, e
    ld a, $1e
    ld a, [hli]
    ld [hl], $36
    ccf
    ld d, b
    ld d, c
    ld [$1839], sp
    rst $20
    ld [de], a
    ld [hl], $e1
    db $e3
    ld a, [bc]
    rst JumpTable
    ld h, d
    ld a, a
    ld hl, $6b5d
    ld a, $22
    ld e, c
    jr jr_034_7710

    sbc a
    ld a, b
    cp a
    db $10
    ld [hl], l
    ld a, e
    ld d, $1a
    ld a, [de]
    ld d, $00
    inc l
    inc [hl]
    inc [hl]
    inc l
    jr c, jr_034_7789

    ld e, a
    ld l, a
    ld hl, sp-$41
    ld h, c
    nop
    ld [hl], b
    ld c, a
    ld a, [de]
    ccf
    ld c, b
    nop
    jr nc, jr_034_77ab

    inc a
    inc a
    ld [hl], e

jr_034_7772:
    inc h
    ld bc, $3908
    ld c, d
    nop
    ld h, b
    ld a, [hl]
    ld a, [hl]
    rst JumpTable
    ld a, [bc]
    ld d, a
    ld c, e
    add c
    nop
    ld [hl], b
    ld a, b
    ld a, b
    rst $30
    rst $08
    rst $28
    pop af
    sbc c

jr_034_7789:
    ld d, c
    jr nz, jr_034_778c

jr_034_778c:
    nop
    ld b, $fa
    ld hl, sp+$0e
    dec c
    add c
    ldh [$89], a
    adc e
    inc hl
    dec c
    add e
    nop
    dec bc
    cp $ff
    ld c, $1e
    ld c, $25
    ld h, b
    adc d
    rra
    inc c
    ld b, $0a
    dec hl
    dec l
    dec l
    dec c

jr_034_77ab:
    ldh [$89], a
    ld a, [bc]
    call $0a0f
    ld b, b
    inc c
    inc c
    ld c, $0d
    ld h, b
    ld a, [bc]
    inc c
    inc c
    ld b, b
    adc [hl]
    nop
    add sp, -$80
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
    add b
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld bc, $9196
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    rra
    add b
    nop
    sbc h
    sub c
    sbc l
    sbc [hl]
    ld h, b
    sbc a
    and b
    and c
    ld [bc], a
    sub c
    and d
    and e
    and h
    and l
    and [hl]
    rra
    add b
    and a
    nop
    sub c
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    inc b
    xor a
    or b
    or c
    or d
    or e
    rra
    add b
    or h
    or l
    nop
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    inc b
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_034_781f

    jp $00c4


    push bc
    add $c7
    ret z

Jump_034_781f:
    ret


    jp z, $cccb

    inc b
    call $cfce
    ret nc

    pop de
    rra
    ld a, b
    jp nc, $00d3

    call nc, $d6d5
    rst AddAToHL
    ret c

    reti


    jp c, $04db

    call c, $dedd
    rst JumpTable
    ldh [$1f], a
    ld a, b
    pop hl

Call_034_783f:
    ld [c], a
    nop
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eb04], a
    db $ec
    db $ed
    xor $ef
    rra
    ld a, b
    ldh a, [$f1]
    nop
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    inc b
    ld a, [$fcfb]
    db $fd
    cp $1f
    ld a, b
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    cp a
    add b
    dec c
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    db $10
    jr jr_034_789e

    ld a, [de]
    rra
    add b
    dec de
    ld h, b
    inc e
    dec e
    nop
    ld e, $1f
    jr nz, jr_034_78b2

    ld [hli], a
    inc hl
    inc h
    dec h
    db $10
    ld h, $27
    jr z, jr_034_78b9

    ld a, b
    add hl, hl
    ld a, [hli]
    dec hl

jr_034_789e:
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_034_78d6

    ld [hl-], a
    ld hl, sp+$33
    jr nz, jr_034_78de

    dec [hl]
    ccf
    add b
    ld [hl], $37
    jr c, jr_034_78ea

    ld a, [hl-]

jr_034_78b2:
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_034_78b9:
    ld b, c
    ld b, d
    ld b, b
    ld b, e
    rra
    add b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    add b
    rra
    add b
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_034_78d6:
    ld d, a
    ld e, b
    ld bc, $5a59
    ld e, e
    ld e, h
    ld e, l

jr_034_78de:
    ld e, [hl]
    ld e, a
    dec c
    ld a, [c]
    ret nz

    nop
    add b
    ld e, e
    ld bc, $3f00
    nop

jr_034_78ea:
    nop
    inc c
    rra
    add b
    nop
    rra
    ld a, a
    ld e, $12
    xor l
    rra
    ld hl, $1f01
    inc c
    nop
    ld e, $1f
    rra
    inc sp
    ld bc, $201f
    db $fc
    ld h, b
    ld [hl], a
    inc hl
    ld e, $19
    nop
    inc e
    ld b, b
    nop
    nop
    ld de, $fcfc
    db $f4
    adc h
    db $fc
    or h
    add d
    ld b, e
    cp h
    ldh [$a0], a
    ldh [$e0], a
    rra
    ld [de], a
    ld [hl], b
    and b
    jr nz, jr_034_7970

    ld h, c
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, [hl]
    rra
    ld [de], a
    jr c, jr_034_7964

    ld d, h
    ld l, h
    ld a, h
    ld b, h
    nop
    cp d
    sub $fe
    add d
    sub $ba
    xor $ee
    add b
    rra
    ld [de], a
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld e, d
    db $76
    ld c, d
    ld a, [hl]
    rlca
    ld b, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld e, d
    dec hl
    rra
    inc d
    dec sp
    ld c, $6e
    ld e, [hl]
    ld a, h
    ld b, h
    inc hl
    daa
    rra
    inc d
    ccf
    inc b
    ccf
    dec a
    inc hl
    ccf
    dec l
    ld b, e
    dec hl
    dec sp
    ld l, d
    dec l
    dec hl

jr_034_7963:
    ld [hl], c

jr_034_7964:
    xor $20
    xor d
    ld h, c
    cp $19
    cp d
    cp $82
    inc hl
    daa
    rst $28

jr_034_7970:
    xor e
    ld b, c
    ld l, b
    rst $28
    ld a, c
    and b
    ccf
    jr nz, @+$22

    ccf
    cpl
    inc h
    jr c, jr_034_79a6

    inc hl
    ccf
    ld hl, $f867
    add sp, $0a
    ld hl, sp+$68
    ld hl, sp-$08
    rra
    ld a, [bc]
    rst $30
    jr nz, jr_034_7963

    sub b
    ld hl, $5577
    pop hl
    ld a, a
    ld e, l
    ld e, l
    ld h, e
    ld a, [hli]
    ld a, $3e
    rra
    ld a, [bc]
    dec e
    jr nz, jr_034_79b4

    pop hl
    db $fd
    nop
    push af
    db $fd
    or l
    db $dd

jr_034_79a6:
    or l
    push af
    call $5079
    ld a, c
    rra
    ld a, [bc]
    rst JumpTable
    jr nz, jr_034_7a01

    sbc $57
    db $dd

jr_034_79b4:
    ld a, b
    ld d, l
    inc hl
    rlca
    ld a, [bc]
    ld [hl-], a
    rra
    ld a, [bc]
    adc [hl]
    adc [hl]
    ld c, [hl]
    db $10
    jp z, Jump_034_5bd5

    ld hl, $51df
    ld e, a
    push de
    nop
    xor $75
    xor $71
    push af

jr_034_79ce:
    ld l, [hl]
    ld a, a
    xor $29
    cp e
    cp e
    rra
    ld a, [bc]
    xor $20
    xor d
    rst AddAToHL
    jr nc, jr_034_79dd

    rst AddAToHL

jr_034_79dd:
    ld a, l
    ld b, l
    ld d, l
    ld l, l
    cp d
    xor e
    ld hl, $bb30
    xor d
    ld b, c
    rra
    dec bc
    db $e3
    db $e3
    push hl
    and [hl]
    jr nz, jr_034_7a46

    or l
    ld hl, $16f7
    di
    ld d, e
    rst $28
    ld bc, $ef5f
    dec e
    ld e, [hl]
    db $ed
    db $fd
    xor $1f
    inc c

jr_034_7a01:
    nop
    xor $ee
    sbc $3a
    cp [hl]
    jp c, $dafe

    inc bc
    ld a, a
    ei
    xor a
    ld l, b
    rst JumpTable
    cp e
    add hl, hl
    ld hl, $2fe5
    inc sp
    rra
    inc c
    xor $aa
    pop bc
    ld a, [hli]
    add hl, bc
    add hl, bc
    ret nz

    rra
    dec bc
    nop
    ld c, $3e

jr_034_7a24:
    ld a, $5e
    ld h, d
    ld a, [hl]
    ld e, [hl]
    nop
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld a, d
    ld a, d
    ld b, [hl]

jr_034_7a30:
    ld a, h
    ld a, h
    ld b, b
    rst $38

jr_034_7a34:
    nop
    jr z, jr_034_7a30

    rst $38
    ld sp, hl
    rst $20
    sub b
    rst $28
    jr nz, @-$4d

    adc $0f
    jr nc, jr_034_79ce

    rst $38
    ld a, a
    adc b
    rst $38

jr_034_7a46:
    db $10
    ld [$0bf4], sp
    dec c
    jr nz, jr_034_7a34

    ld hl, sp+$20
    rst $38
    inc b
    ret nz

    ccf
    nop
    rst $38
    nop
    dec e
    jr z, jr_034_7a76

    ld [c], a
    add $0b
    db $10
    rrca
    ld b, b
    inc a
    rst $38
    ld [$1801], sp
    rrca
    jr nc, @+$2a

    ld e, b
    rst AddAToHL
    rra
    ld h, b
    rlca
    dec c

jr_034_7a6d:
    jr z, jr_034_7a7e

    jr nc, @+$01

    rst $38
    add a
    jr nz, jr_034_7a6d

    add b

jr_034_7a76:
    rrca
    ld e, b
    adc e
    ld [hl], a
    ld [bc], a
    rst $38
    ld [bc], a

jr_034_7a7d:
    add h

jr_034_7a7e:
    rrca
    jr c, jr_034_7a7d

    rst $38
    rrca
    ldh a, [$2f]
    ld d, b
    rra
    rst $38
    nop
    add hl, bc
    cp $18
    ld hl, sp+$20
    ldh a, [rNR41]
    ldh [$80], a
    cpl
    jr nc, jr_034_7a24

    nop
    ld e, $00
    ld h, b
    nop
    add b
    adc h
    ld b, b
    jr c, @-$06

    rlca
    nop
    nop
    jr jr_034_7af4

    jr c, @+$01

    rra
    ld b, $3f
    ccf
    ccf
    ld a, a
    ccf
    rrca
    ld b, b
    nop
    jr nz, @-$0b

    nop
    adc h
    rst $20
    sbc b
    ld l, a
    sub b
    ld c, a
    or b
    rra
    nop
    ldh [rIE], a
    nop
    db $fd
    inc bc

jr_034_7ac1:
    cp $03
    db $fc
    nop
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    add b
    ld a, a
    ld b, b
    ld l, b
    rst $38
    adc a
    jr nz, @+$03

    ldh [rTMA], a
    dec c
    ld e, b
    rst $38
    rst $38
    add c
    ret nc

    ld [hl], b
    ld [$5001], sp
    ld a, b
    inc bc
    ld [$ff0a], sp
    inc b
    rst $38
    ld b, c
    rla
    pop af
    ld [$ff0e], sp
    dec sp
    rst $38
    cp [hl]
    rla
    jr z, jr_034_7ac1

    ld e, e
    db $10
    ld e, a

jr_034_7af4:
    add b
    ld bc, $08f1
    inc hl
    ldh [rNR50], a
    ld hl, sp+$00
    ld hl, $10fe
    rst $38
    dec bc
    db $fc
    add hl, bc
    ld hl, sp+$60
    ld [$0801], sp
    push bc
    jr nz, @+$19

    ldh [$98], a
    ret nz

    ldh [rP1], a
    add b
    inc bc
    ret nz

    ld b, a
    add b
    nop
    nop
    ld bc, $0182
    ld [$00e3], sp
    rra
    nop
    ld a, a
    inc [hl]
    jr @-$5b

    ld bc, $ff5f
    inc bc
    ei
    rlca
    rst $38
    inc bc
    ld bc, $0030
    ld a, [hl]
    add a
    cp h
    rst $00
    or h
    rst $08
    add sp, -$61
    ld b, d
    ldh a, [rSB]
    ld [$bf50], sp
    ld [hl], b
    cp a
    ld e, c
    jr nz, jr_034_7b45

    nop
    rst $38
    inc b

jr_034_7b45:
    cp $0c
    db $fc
    ld [$18f8], sp
    ld bc, $14f0
    ld hl, sp+$30
    ldh [$a0], a
    ret nz

    ld b, [hl]
    ld [$0098], sp
    jr z, @+$0d

    rlca
    ld c, [hl]
    ld [$4800], sp
    db $fd
    rst $38
    cp $00  ; and a / or a
    rst $38
    cp $7f
    ld e, $3f
    ld c, $1f
    rla
    dec e
    rrca
    rrca
    rlca
    dec e
    ld [$289b], sp
    rrca
    ld de, $0320
    ld [$0f01], sp
    db $fc
    rra
    ld hl, sp+$67
    cp $03
    xor e
    ld [$1780], sp

jr_034_7b83:
    jr nz, @+$0a

    ld hl, sp-$78
    ld a, b
    ret z

    jr c, jr_034_7b83

    nop
    ld [$8ef9], sp
    ldh a, [$c8]
    ld [hl], b
    ld hl, sp+$0c
    nop
    ld hl, sp+$5f
    add b
    ccf
    ret nz

    rst JumpTable

jr_034_7b9b:
    ld h, b
    ld de, $3e00
    ld [hl-], a
    ld de, $1000
    db $10
    ld [$c000], sp
    ld [bc], a
    ld [de], a
    ld a, [c]
    jr z, @+$7f

    cp $ce
    ccf

Jump_034_7baf:
    pop hl
    rra
    ld h, b
    db $fd
    ld a, [hl-]
    db $10
    ld bc, $7f28
    add c
    cp a
    pop bc
    ld h, b
    nop
    cp a
    ld h, b
    cp a
    ldh [$3f], a
    ldh [$3f], a
    xor h
    nop
    ld [hl], e
    sub d
    ld l, l
    db $fc
    ld b, e
    rst $38
    ld b, b
    db $10
    ld [bc], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ld bc, $0028
    jr nz, jr_034_7b9b

    inc bc
    sbc [hl]
    jr c, jr_034_7c1e

    ccf
    db $10
    rst $28
    db $fc
    nop
    inc bc
    ret nz

    nop
    ld a, b
    add b
    ld e, a
    jr nz, jr_034_7bfa

    nop
    db $10
    inc bc
    inc c
    ld h, l
    add a
    ld a, [bc]
    di
    rlca
    ld b, b
    ei
    add hl, de
    db $10
    inc de
    inc c

jr_034_7bfa:
    rst $38
    ccf
    add sp, -$10
    nop
    ld l, b
    ldh a, [$50]
    ldh [$f9], a
    rst $38
    rrca
    inc bc
    ld b, b
    dec a
    ld h, c
    db $10
    add c
    rst JumpTable
    ld h, c
    cp a
    ld h, c
    xor [hl]
    ld [$1d71], sp
    di
    ret nz

    or e
    ld [$ffa0], sp
    ldh [$28], a
    rst $38
    xor a

jr_034_7c1e:
    db $ed
    add hl, de
    ld e, a
    adc [hl]
    ld b, b
    rst $38
    db $e4
    rst $38
    ld h, b
    call nc, $08eb
    add c
    ld [hl], c
    ld [$04fc], sp
    db $fc
    nop
    ld [bc], a
    cp $02
    cp $01
    cp $07
    and h
    jr jr_034_7c3b

jr_034_7c3b:
    nop

jr_034_7c3c:
    inc c
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    nop
    inc bc
    ld bc, $0140
    add a
    jr nz, jr_034_7c3c

    inc c
    ld a, e
    inc b
    ld a, e
    inc b
    nop
    ld a, a
    nop
    cp a
    nop
    sbc a
    add b
    ld c, a
    ret nz

    nop
    cpl
    ld [hl], b
    ld a, a
    pop bc
    cp a
    ld h, c
    rst JumpTable
    ld sp, $ef05
    add hl, de
    rst $30
    dec c
    ld hl, sp-$2c
    ld [hli], a
    ld b, b
    ld bc, $0008
    ret nz

    rst JumpTable
    rst $38
    jp $dec0


    pop hl
    cp [hl]
    nop
    sbc a
    adc a
    add [hl]
    ld e, b
    and a
    db $ec
    inc de
    db $fd
    jr jr_034_7c81

    ld l, $f1

jr_034_7c81:
    ld b, b
    add hl, de
    rra
    ld [$c023], sp
    ld b, c
    ld bc, $61a2
    or d
    ld sp, hl
    ld a, [de]
    cp $05
    ld b, h
    add hl, de
    ret nc

    ld b, [hl]
    ld sp, $0801
    ld a, a
    add hl, sp
    add hl, bc
    rra
    ld h, b
    ld b, $ff
    nop
    add h
    ld a, [hl]
    ret nz

    inc a
    call z, $e838
    jr jr_034_7ca8

jr_034_7ca8:
    ldh [rNR23], a
    db $ec
    db $10
    db $ec
    ld de, $3f61
    nop
    inc hl
    ld e, $07
    inc e
    ld e, a
    ld [$e97f], sp
    nop
    sbc b
    rst $38
    cp a
    ret nz

    rst $38
    nop
    sbc [hl]
    inc sp
    nop

jr_034_7cc3:
    rrca
    ld [de], a
    rla
    dec bc
    adc a
    dec bc
    adc [hl]
    add a
    nop
    ld h, h
    rst $00
    inc sp
    rst $00
    di
    ld b, e
    inc d
    add hl, sp
    nop
    ld a, [bc]
    ld de, $0880
    ret nz

    adc h
    db $ec
    call nz, $e000
    call nz, $c6fc
    jp c, $fce7

    rst $38
    ld b, d
    ld l, $e8
    ld a, [bc]
    dec c
    rlca
    ld e, b
    ccf
    ld sp, hl
    db $10
    ld b, b

jr_034_7cf1:
    ld [$2f7f], sp
    rst $38
    rst JumpTable
    dec c
    inc de
    ldh a, [rNR41]
    ret nz

    nop
    ld d, b
    ret nc

    ld h, b
    and b
    jp $2140


Call_034_7d03:
    rst $38
    nop
    pop hl
    rst $38
    xor a
    db $dd
    dec bc
    rlca
    ld b, $02
    inc b
    ld b, b
    inc bc
    pop bc
    ld bc, $d3ed
    jr @-$7e

    nop
    nop
    add b
    add b
    ret nz

    add b
    ld b, b
    ld b, b
    and b
    ld b, b
    dec b
    jr nc, jr_034_7cc3

    inc hl
    inc e
    rra
    ld e, e
    ld a, [bc]
    rrca
    ld bc, $8038
    sbc e

jr_034_7d2d:
    jr nz, jr_034_7d2d

    ld bc, $03fd
    rst JumpTable
    ccf
    ld sp, hl
    ld b, b
    rlca
    cp l
    add hl, bc
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    add b
    ccf
    dec sp
    add d
    add c
    add b
    add b
    add d
    add b
    ld bc, $4280
    stop
    ld bc, $a120
    or b
    db $fd
    add d
    nop
    xor $73
    ld l, $1e
    call nz, Call_034_7d03
    nop
    nop
    dec [hl]
    rrca
    scf
    jr jr_034_7cf1

    db $10
    db $fd
    ld [bc], a
    inc c
    db $76
    adc h
    ldh [$78], a
    ld h, e
    ld [$0861], sp
    rst JumpTable
    ld h, b
    nop
    ld a, [$0e1d]
    ld sp, $1827
    ld bc, $001e
    inc de
    ld c, $31
    dec c
    ld h, b
    ld e, $86
    ld a, a
    nop
    rrca
    rst $38
    dec e
    pop af
    inc a
    sub c
    ld e, [hl]
    sub c
    nop
    sbc l
    ld [hl], e

jr_034_7d8e:
    db $fd
    ld sp, $917d
    ld a, [hl]
    ld d, c
    nop
    cp [hl]
    ld sp, $80ff
    ld b, c
    pop hl
    ld de, $0023
    ret nz

    add b
    ld b, c
    ldh [$e0], a
    ld [hl], c
    nop
    ld d, b
    nop
    nop
    nop
    cp c
    ld h, d
    sbc c
    ld a, [c]
    dec l
    stop
    db $fd
    ld [hl], c
    db $ec
    pop af
    ld h, h
    ld sp, hl
    inc d
    xor c
    nop
    dec d
    ld [$675f], sp
    ld b, h
    rst $38
    adc $f9
    nop
    rst JumpTable
    ld hl, sp+$3f
    add sp, $7f
    ret nc

    rst JumpTable
    sub b
    inc e
    sbc a
    jr nz, jr_034_7d8e

    add hl, de
    inc c
    ld [$4508], a
    add hl, sp
    rst $00
    add b
    nop
    adc $81
    rst $38
    add e
    ld a, [hl]
    add a
    db $fd
    ld c, a
    nop
    or a
    ld l, l
    rst JumpTable
    inc a
    or $0c
    ld sp, hl
    ld c, h
    nop
    ret c

    call c, $fc34
    rla
    inc [hl]
    add hl, sp
    ld e, $00
    add hl, bc
    ld [de], a

jr_034_7df4:
    ld bc, $2502
    ld [de], a
    ld a, b
    xor b
    nop
    ld b, b
    xor h
    inc h
    or $c3
    sub a
    and c

jr_034_7e02:
    or a
    ld bc, $f7c0
    sub b
    rst $20
    or b
    rst $00
    rrca
    db $ed
    ld [$1f00], sp
    nop
    sbc a
    nop
    rst JumpTable
    add b
    ld e, a
    ldh [$08], a
    ld l, $f1
    rrca
    rst $38
    ld c, l
    inc de
    db $f4
    dec bc

jr_034_7e1f:
    rst $28
    nop
    db $10
    rst $28
    db $10
    cp a
    ld a, b
    ret


    cp $0f
    ld [hl], b
    db $fc
    push hl
    jr nz, jr_034_7e1f

    db $10
    push af
    jr jr_034_7eb1

    sub b
    ld a, b
    ld a, b
    nop
    adc h
    ld e, h
    and $2f
    ld [hl-], a
    sub a
    reti


    and $00
    jp hl


    rst $30
    jr c, @+$79

    adc b
    rra
    adc b
    inc bc
    nop
    call z, $44c7
    ld h, e
    ld [hl], d
    ld a, e
    db $76
    rst $38
    jr jr_034_7e02

    cp a
    ldh [$8e], a
    inc c
    jp c, $c73c

    jr c, jr_034_7df4

    ld [$3f77], sp
    db $e3
    db $fd
    ld h, d
    ld a, [de]
    cp $01
    ld a, [$0700]
    or a
    ld a, a
    rst $30
    rst $38
    di
    rst $38
    ld c, [hl]
    nop
    add c
    and a
    ld b, c
    ld e, d
    pop hl
    ld [hl], a
    ld hl, sp-$05
    nop
    rst $38
    xor $f1
    rst JumpTable
    ldh [$e3], a
    ret nz

    nop
    nop
    nop
    rra
    ld de, $1f8a
    ret z

    adc d
    ld [c], a
    nop
    call nz, $f930
    or c
    cp $56
    ld sp, hl
    inc d
    nop
    ld [$1804], sp
    dec [hl]
    jr z, jr_034_7edf

    add hl, sp
    xor l
    nop
    ld l, e
    rst $38
    xor a
    adc a
    ld e, a
    sbc $8f
    ld e, a
    ld bc, $ef20
    ld [hl], b
    rst $30
    ld hl, sp-$07
    cp $85
    db $10
    ld c, b
    sbc a
    rst $00

jr_034_7eb1:
    dec bc
    rst $30
    inc c
    inc sp
    ld a, [bc]
    ld [hl], e
    dec sp
    rst $30
    ld [$f30c], sp
    db $ec
    di
    ld c, [hl]
    ld [$faf3], sp
    ld b, $00
    rst $38
    add a
    db $fd
    add l
    ld de, $7aeb
    ei
    nop
    rst $38
    or $e6
    ldh a, [$c1]
    db $fc
    add hl, bc
    and $00
    ld b, $0d
    ld hl, sp-$63
    ld c, l
    ld sp, hl
    ld h, b
    ei
    nop

jr_034_7edf:
    ld [hl], c
    ld a, [c]
    jp nc, $04f4

jr_034_7ee4:
    ld e, b
    ld [hl], $c5
    nop
    scf
    call nz, $c427
    cpl
    call nz, $cea5
    nop
    sub l
    ld l, [hl]
    rra
    ld l, $3f
    ld e, $1c
    db $e3
    nop

jr_034_7efa:
    sbc a
    ld h, b
    rst $20
    jr c, jr_034_7efa

jr_034_7eff:
    inc a
    db $fd
    ld a, $00   ; xor a
    rst $38
    ccf
    rst $38
    ccf
    and c
    ld a, [hl]
    rlca
    cp $00  ; and a / or a
    add d
    ld a, a
    cp $07
    jp nc, $fc3f

    dec sp
    inc bc
    ld a, $fd
    inc a
    db $fd
    dec a
    db $fd
    ld [$0138], a
    ld [$f180], sp
    jr jr_034_7ee4

    ld e, a
    pop bc
    rrca
    add e
    inc b
    add e
    jr nz, jr_034_7f2b

jr_034_7f2b:
    rlca
    ld bc, $0110

Jump_034_7f2f:
    ld b, $eb
    db $fd
    rst $38
    nop
    db $ed
    ld a, a
    push hl
    ld a, a
    push hl
    ld [$0ff7], sp
    ld b, b
    ldh a, [$30]
    inc de
    ei
    rst $00
    rst $30
    rst $08
    rst $30
    rst $08
    jr nc, jr_034_7eff

    rst $08
    db $fd
    inc c
    rst $20
    ld [$10ef], sp
    rst $30
    rst $38
    inc b
    ld [c], a
    rst $38
    ret nz

    rst $38
    add c
    ret


    inc c
    jp nz, $003e

    cp $06
    db $fc
    inc b
    add c
    ret nz

    pop bc
    add b
    nop
    inc bc
    add b
    add b
    inc bc
    inc bc
    inc bc
    ld b, $07
    inc bc
    ld c, $0b
    rlca
    ld a, [de]
    or b
    ld c, a
    ld a, [bc]
    ld a, [bc]
    dec hl
    ld [de], a
    jr nz, jr_034_7f7a

jr_034_7f7a:
    add a
    pop af
    ld a, [bc]
    rrca
    ldh a, [$8c]

jr_034_7f80:
    rrca
    inc b
    and b
    ld bc, $1808
    ld [hl], e
    dec c
    rst $30
    ccf
    rst $28
    ld [hl], b
    cp $40
    ld h, b
    ld a, [hl-]
    ld de, $ff20
    sub b
    rrca
    add $c3
    jr nz, @-$3d

    pop bc
    jp hl


    inc d
    ld a, a
    di
    dec a
    di
    dec e
    nop
    di
    rrca
    pop af
    rrca
    pop af
    ret nz

    ccf
    rst $38
    nop
    add b
    ld a, a
    add b
    ret z

    add l
    ld [$188c], sp
    nop
    inc e
    add b
    inc e
    adc d
    adc h
    sub e
    call z, $0017
    rst AddAToHL
    cp e
    ld l, a
    inc c
    db $10
    inc b
    ldh a, [rSTAT]
    add b
    inc d
    dec e
    ld [bc], a
    ld bc, $e355
    inc sp
    ld a, a
    rra
    nop
    ld a, [hl]
    ld e, a
    cp a
    sbc $3f
    db $fd
    ld [de], a
    db $dd
    ld bc, $fb32
    inc d
    ei
    inc d
    di
    inc e
    dec de
    ld b, d
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $dd
    dec a
    nop
    db $fd
    dec e
    rst $28
    dec e
    rst $08
    dec a
    rra
    db $fd
    inc bc
    ld [hl], $f2
    ld h, [hl]
    xor $f9
    call $22c9
    db $ec
    jr nz, jr_034_7f80

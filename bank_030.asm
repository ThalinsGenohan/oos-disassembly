; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX

    ei
    ld sp, hl
    rst $38
    inc hl
    db $fc
    ld b, b
    db $fc
    dec hl
    db $fc
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rra
    cp a
    rst $38
    sbc a
    ld hl, $2925
    dec l
    ld b, b
    jr jr_030_4035

    inc c
    ei
    ld b, c
    ld c, b
    cp l
    jp $80c1


    add hl, sp
    rst $38
    rst $30
    jr c, @+$5a

    rst $30
    jr @-$07

    ld b, d
    db $10
    ld c, a
    ld a, a
    add c
    add c
    ld a, a
    ld sp, $8081
    ld c, c
    db $eb

jr_030_4035:
    inc e
    inc e
    db $eb
    inc c
    ei
    inc c
    reti


    ld c, c
    ld sp, $8f01
    ld c, l
    ei
    jr @+$4b

    nop
    db $fd
    cp $fa
    db $fd
    db $f4
    ei
    ret nz

    rst $38
    nop
    jp nc, $80ef

    rst $38
    add hl, sp
    rst $38
    rst $30
    rst $38
    nop
    cp a
    ld a, a
    rst JumpTable
    ccf
    ld l, a
    sbc a
    scf
    rst $08
    nop
    dec de
    rst $20
    dec hl
    rst JumpTable
    ld e, l
    cp a
    ccf
    rst $38
    adc b
    nop
    inc c
    db $eb
    rst $30
    pop hl
    ld h, [hl]
    rst $28
    rst $38
    ld a, l
    ld bc, $ffe3
    push de
    db $e3
    db $dd
    db $e3
    jp $004a


    adc h
    ldh a, [$9c]
    ldh [$e1], a
    cp $f0
    ret nz

    nop
    adc $f0
    call z, $c4f0
    ld hl, sp-$3a
    ld hl, sp+$00
    ld a, c
    rlca
    ld sp, $870f
    ld a, a
    rrca
    ld bc, $710d
    rrca
    ld hl, $211f
    dec h
    rst $38
    add b

jr_030_409f:
    ld b, $f7
    rst $28
    rst $38
    ldh [$e0], a
    xor d
    add b
    rst $28
    ld a, [bc]
    rst $30
    rst $38
    rlca
    rlca
    adc c
    rst $20
    ld b, e
    ret nz

    ld e, $c0
    add sp, -$18
    inc h
    ld [hl], l
    ld hl, $036f
    inc e
    inc bc
    rla
    rla
    inc h

Call_030_40bf:
    daa
    ld c, [hl]
    rst $28
    rst $20
    nop
    rst $20
    ldh [$e0], a
    rst $38
    ldh [$ef], a
    ldh a, [$f8]
    adc b
    ld l, $f8
    ei
    db $fc
    inc h
    rst $08
    rst $08
    rrca
    ld [bc], a
    rrca
    rst $38
    rrca
    rst $28
    rra
    ccf
    ld a, [hl+]
    ccf
    jr nc, jr_030_409f

    ld a, a
    inc h
    jr nz, jr_030_4124

    add b
    add b
    nop
    inc e
    call z, Call_030_7f00
    dec h
    ld l, h
    ld b, b
    dec b
    inc bc
    ld bc, $0102
    ld d, $01
    db $fc
    inc bc
    ld bc, $048d
    db $eb
    inc e
    inc e
    db $eb
    ld [$b047], sp
    rst $08
    ld [de], a
    pop bc
    cp [hl]
    add b
    adc a
    inc c
    ei
    ld l, a
    cp [hl]
    db $10
    pop bc
    ret nz

    cp a
    ld l, a
    rst $38
    ccf
    ccf
    rst JumpTable
    nop
    rrca
    rst $38
    and a
    rst $38
    rla
    rst $38
    xor a
    ld a, a
    ld b, b
    ccf
    ld l, a
    ldh a, [$f8]
    rst $20

Call_030_4123:
    db $e4

jr_030_4124:
    db $db
    jp nz, $bd08

    jr c, @+$01

    cp $6d
    rst $38
    db $fd
    rst $38
    ld b, b
    ei
    ld b, c
    rst $28
    rst $38
    call $ebff
    db $dd
    inc b
    call z, $00bb
    rst $38
    rst $30
    ld b, c
    ld l, a
    rst $38
    ld b, c
    cpl
    inc hl
    cp a
    ld c, c
    cp a
    ld b, c
    cp a
    cpl
    db $10
    adc $f0
    call z, $c641
    ld hl, sp-$0f
    cp $00
    ldh [$80], a
    sbc h
    ldh [$8e], a
    ldh a, [$31]
    rrca
    nop
    ld hl, $611f
    rra
    ld [hl], c
    rrca
    adc a
    ld a, a
    jr nz, jr_030_4176

    ld bc, $792b
    rlca
    rst $38
    rst $38
    sub b
    inc de
    and e
    add l
    and d
    and c
    call c, $2da3

jr_030_4176:
    jr nz, jr_030_4198

    inc bc
    ld bc, $3721
    ld bc, $010b
    rla
    db $10
    ld bc, $03fd
    ld l, a
    cp $81
    ret nz

    cp a
    inc d
    ret z

    cp a
    ldh [rSCX], a
    add b
    ld l, [hl]
    rst $38
    db $dd
    ld [de], a
    push hl
    ld h, a
    db $dd
    and c
    rst $00

jr_030_4198:
    db $fd
    ld l, a
    sbc b
    ld [de], a
    add b
    add b
    sub b
    and c
    xor b
    sub b
    ld l, a
    and a
    ld [bc], a
    ld b, b
    nop
    ld b, b
    add a
    ld b, b
    adc a
    ld b, e
    cp a
    ld b, b
    ld b, b
    ld l, a
    ld a, [$a607]
    ld e, e
    jp $023e


    and e
    ld e, [hl]
    db $e3
    ld e, $83
    ld a, [hl]
    ld l, a
    call $3b00
    dec c
    ei
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld c, c
    ret nz

    ld b, e
    ld h, b
    di
    db $fc
    ret c

    ldh [$b0], a
    ret nz

    nop
    cp a
    ret nz

    rst JumpTable
    ldh [$c3], a
    db $fc
    adc a
    ldh a, [$80]
    cpl
    rla
    rrca
    dec bc
    rlca
    dec b
    inc bc
    dec e
    ld bc, $fb03
    rlca
    db $e3
    rra
    pop af
    rrca
    cpl
    nop
    ret nz

    add b
    cp a
    add b
    xor a
    sub b
    xor l
    add d
    inc b
    rst $38
    add b
    sbc h
    db $e3
    ret nz

    ld l, $ff
    pop hl
    nop
    inc bc
    rra
    ld bc, $01ff
    rst $30
    add hl, bc
    rst $30
    ld [$7901], sp
    add a
    inc bc
    ld l, $00
    rlca
    ld hl, sp+$00
    nop
    rst $38
    ld a, h
    rst $38
    rst $00
    rst $38
    add hl, sp
    rst $00
    jr nc, @-$10

    ld de, $212d
    db $fc
    inc bc
    ld h, b
    sbc a
    add b
    ld h, $07
    rst $38
    call c, $73ff
    db $fc
    rrca
    nop
    ldh a, [$9f]
    ldh [$9d], a
    ld [c], a
    call z, $c4f3
    nop
    di
    call nc, $aee3
    pop bc
    xor e
    call nz, $00bf
    ret nz

    ei
    rlca
    di
    rrca
    dec [hl]
    bit 6, l
    ld [bc], a
    adc e
    ld l, c
    add a
    ld l, e
    add a
    di
    dec hl
    rlca
    nop
    rrca
    rst $38
    jr nc, @+$01

    ld l, a
    ldh a, [$d0]
    ldh [rP1], a
    and e
    ret nz

    or e
    ret nz

    cp [hl]
    pop bc
    sbc b
    rst $20
    nop
    ldh a, [rIE]
    inc e
    rst $38
    and $1f
    inc de
    rrca
    nop
    dec bc
    rlca

jr_030_426d:
    jp hl


    rlca
    ld a, c
    add a
    ld sp, $2ccf
    rst $38
    rst $38
    ld sp, $1fef
    dec bc
    cpl
    rra
    rst $38
    ld h, b
    rst $20
    rra
    dec c

Jump_030_4281:
    ld b, b
    cp $fc
    ei
    jp hl


    sbc a
    nop
    ld [c], a
    dec a
    db $dd
    ld h, d
    jr nz, jr_030_426d

    rst $30
    ld sp, hl
    nop
    db $eb
    scf
    jp nc, $d6bf

    ccf
    inc a
    rst $38
    nop
    call nc, $faef
    rlca
    dec b
    ei
    ld b, [hl]
    rst $38
    nop
    ld b, l
    cp $c9
    cp $f9
    cp $c4
    rst $38
    nop
    sbc d
    rst $20
    cp l
    jp $c1be


    jr nz, @+$01

    nop
    sub b
    ld a, a
    ret z

    ccf
    and a
    ld e, a
    di
    rrca

Jump_030_42bd:
    ld [$8779], sp
    ld bc, $20ff
    adc e
    db $fc
    or h
    inc bc
    rst $08
    cp e
    rst $00
    reti


    rst $20
    db $e3
    ld c, e
    ld h, b
    nop
    rst JumpTable

jr_030_42d1:
    ccf
    ld sp, $cdff
    di
    sbc l
    db $e3
    inc b
    db $dd
    db $e3
    db $ed
    di
    di
    sub c
    pop hl
    inc bc
    nop
    rra
    ld bc, $01ff
    rst $30
    add hl, bc
    rst $30
    ld bc, $7d10
    add e
    add e
    ld c, a
    ret nz

    add b
    cp a
    add b
    ld de, $90af
    xor a
    ld b, l
    cp h
    jp $2ec1


    nop
    nop
    db $e3
    inc e
    add c
    ld a, [hl]
    nop
    rst $38
    inc a
    ld bc, $e3ff
    rst $38
    sbc b
    rst $20
    ld a, a
    add b
    ld l, a
    jr nz, jr_030_42d1

    ld a, $6f
    jp $18ff


    rst $20
    cp $00
    ld bc, $e0df
    rst $28
    ldh a, [$f4]
    res 6, [hl]
    nop
    ret


    sub [hl]
    jp hl


    jp c, $ebf1

    ldh a, [$d7]
    nop
    ldh [$f1], a
    rrca
    ld sp, $73cf
    adc a
    ld a, e
    nop
    add a
    dec hl
    rst $00
    ld [hl], e
    add a
    pop af
    rlca
    ld sp, hl
    db $10
    rlca
    cp [hl]
    pop bc
    ld hl, $c3fd
    ld e, c
    rst $20
    nop
    ld h, e
    rst $38
    ld a, $ff
    inc e
    rst $38
    nop
    rst $38
    nop
    add e
    rst $38
    sbc a
    pop hl
    cp a
    pop bc
    cp l
    jp $9900


    rst $20
    jp Jump_030_66ff


    rst $38
    inc a
    rst $38
    add [hl]
    cp a
    reti


    rst $20
    db $e3
    rst $38
    and b
    rra
    inc c
    rst $20
    and d
    ld c, a
    add a
    sub l
    cp $ff
    db $fc
    ld b, l
    ret nz

    nop
    rst $38
    ldh [rIE], a
    push af
    ei
    pop de
    rst $38
    sub c
    nop
    rst $38
    inc de
    rst $38
    ld h, e
    rst $38
    call nz, $08ff
    nop
    rst $38
    rra
    rst $38
    add e
    db $fc
    rst $20
    ld hl, sp+$22
    nop
    db $fd
    ret nc

    ccf
    pop de
    ccf
    cp [hl]
    ld a, a
    ld a, [hl+]
    nop
    rst $30
    inc sp
    rst $28
    add e
    ld a, a
    rlca
    rst $38
    inc c
    nop
    rst $38

Jump_030_43a1:
    ei
    db $fc
    ld e, a
    cp b
    sub l
    ld a, d
    ld h, $00
    ld sp, hl
    db $e4
    ei
    rst $38
    rst $38
    ld a, a
    add b
    rra
    nop
    add a
    ld a, b
    adc b
    inc d

jr_030_43b6:
    di
    ld [hl], e
    sub a
    ld [hl], a
    db $10
    sub a
    rla
    rst $30
    cpl
    cp $01
    ld hl, sp-$1f
    nop
    ld e, $11
    inc l
    set 1, [hl]
    jp hl


    xor $e9
    jr nz, jr_030_43b6

    rst $28
    inc sp
    ld d, a
    or a
    ld a, e
    sub e
    inc c
    rrca
    ld hl, sp+$3f
    rst $38
    add b
    ld a, [hl-]
    ld b, b
    inc sp
    ld hl, $d801
    rst $08
    jr nc, jr_030_4402

    db $fc
    rst $38
    inc bc
    adc a
    add b
    jr nz, @+$81

    add b
    sub b
    nop
    rst $38
    nop
    rlca
    ld bc, $fefb
    ld [bc], a
    ld h, e
    sbc a
    rra
    ldh [$2f], a
    db $10
    cp $01
    pop bc
    ld c, a
    or h
    set 7, a
    add b

jr_030_4402:
    ld [$f18e], sp
    ldh a, [rIF]
    add hl, hl
    jp Jump_030_7e3f


    ld c, $82
    inc bc
    rst $38
    inc a
    ld l, $3a
    ld h, b
    nop
    and [hl]
    ld d, l
    adc a
    dec hl
    ld a, h
    rst $38
    inc sp
    and b
    cp l
    jr jr_030_449d

    set 6, a
    jp z, $3c40

    nop
    jp $0004


    jr @-$17

    nop
    rst $38
    pop hl
    rst $30
    ld hl, sp+$04
    rst $28
    ldh a, [$dc]
    ldh [$d8], a
    add c
    db $ec
    ldh a, [$80]
    dec l
    rst JumpTable
    ccf
    rst $28
    rra
    ld [hl], a
    rrca
    scf
    sub b
    add c
    ld l, a
    rra
    dec l
    rst $38
    rst $38
    sbc b
    add a
    dec bc
    and a
    sbc a
    rst JumpTable
    cp a
    ld h, c
    cp a
    inc l
    ld b, b
    ld [hl], b
    rla
    add l
    nop
    ld a, [bc]
    rrca
    db $10
    ld [c], a

jr_030_445b:
    sbc a
    cp a
    rst $38
    ldh [$61], a
    jr nz, @+$65

    nop
    rst $38

Call_030_4464:
    pop af
    ld l, $ce
    ld h, b
    ld sp, $2125
    ldh a, [rIF]
    ccf
    ret nz

    ld e, [hl]
    ld bc, $f8a5
    rlca
    rrca
    pop af
    ld bc, $2dfe
    inc bc
    ld [hl], b
    adc a
    rst $38
    db $10
    add e
    ld a, h
    ld d, a
    ld b, b
    nop
    inc a
    jr jr_030_4504

    inc a
    cp a
    ld c, b
    sbc a
    ld h, d
    ld c, $86
    ld a, e
    ld b, a
    cp b
    ld l, a
    and b
    dec a
    ld a, [hl]
    db $10
    add c
    inc [hl]
    set 5, l
    inc a
    jr jr_030_445b

    ld h, h

jr_030_449d:
    ld [$01fe], sp
    ld a, h
    add e
    add hl, hl
    inc b
    nop
    ld hl, $0001
    db $10
    db $10
    ld [hl], $06
    rst $38
    nop
    ld a, a
    ld bc, $ffff
    jp $a5ff


    rst $38
    sbc c
    ld b, c
    ldh a, [rNR51]
    add hl, hl
    ld h, b
    rrca
    ld c, $e6
    sbc a
    add l
    cp $00
    ret


    cp $f9
    cp $c4
    rst $38
    xor d
    rst $00
    nop
    adc l
    jp $c1be


    dec [hl]
    ei
    adc c
    ld a, a
    nop
    rst $10
    rrca
    rlc a
    push hl
    inc bc
    ld a, c
    add a

jr_030_44dd:
    ld b, b
    inc bc
    ld e, a
    jp $e7fc


    ld hl, sp-$2e
    db $fd
    nop
    xor b
    rst JumpTable
    or a
    adc a
    sub [hl]
    adc a
    jp c, $0087

    or e
    rst $08
    cp c
    ld b, a
    inc sp
    rst $08
    rrca
    rst $38
    nop
    pop af
    rst $38
    ld c, a
    or c
    sbc e
    ld h, c
    dec de
    pop hl
    add hl, bc
    rst $08
    pop af

jr_030_4504:
    adc $31
    ld hl, $30cf
    inc hl
    inc h
    adc [hl]
    ld [hl], c
    ld hl, $708f
    add hl, hl
    call $003f
    ret


    ccf
    ret z

    ccf
    ld c, h
    cp a
    inc b
    rst $38
    add c
    ld hl, $3fc4
    call z, $c73f
    jr c, jr_030_455a

    db $10
    inc e
    ldh [$58], a
    ld b, c
    ret c

    ldh [$cc], a
    ldh a, [rDIV]
    rst $20
    ld hl, sp-$72
    ld a, a
    adc $33
    ccf
    ld h, e
    ld h, b
    rra
    ld h, c
    daa
    add a

jr_030_453c:
    ld a, a
    rst $38
    rst $38
    db $dd
    sub $42
    jr nz, jr_030_44dd

    ld h, d
    sbc c
    ld a, [hl+]
    rrca

Call_030_4548:
    db $10
    or $04
    ccf
    rst $38
    ld c, c
    ret


    add b
    jr nz, @-$48

    add b
    inc [hl]
    rst $38
    and b
    inc l
    cpl
    db $76
    ld [hl+], a

jr_030_455a:
    adc c
    adc b
    nop
    nop
    jr nc, jr_030_4560

jr_030_4560:
    ld a, h

Call_030_4561:
    nop
    rst $38
    db $10
    rst $38
    jr nz, jr_030_45a3

    jp $310f


    ld l, a
    db $fc
    rst $38
    sub d
    sub e
    ld b, e
    ld bc, $6d20
    ld bc, $05ff
    inc l
    inc a
    add d
    jr nz, jr_030_453c

    rst $38
    add b
    rst $38
    add h
    ld b, e
    sub b
    ld [hl+], a
    rst $38
    add $6e
    rst $38
    add e
    rst $38
    ld a, [hl-]
    add hl, bc
    ret nc

    ld b, e
    ld hl, $8f13
    or a
    sbc b
    rst $28
    sub b
    nop
    sbc h
    db $e3
    ret c

    rst $20
    or e
    adc $fc
    adc h
    ld d, $ad
    sbc c
    rst $28
    rst $08
    ld e, b
    rst $08

jr_030_45a3:
    ccf
    nop
    add b
    ld b, b
    ld b, h
    nop
    cp e
    nop
    sub a
    ld l, b
    nop
    ldh [$2c], a
    ld b, b
    dec l
    stop
    ld b, [hl]
    nop
    ccf
    stop
    push hl
    ld a, [de]
    ld l, a
    inc e
    rst $38
    ld h, [hl]
    rst $20
    nop
    sbc a
    ld b, e
    ei
    inc b
    cp $00
    pop af
    nop
    nop
    cp a
    ld b, b
    cp a
    nop
    rlca
    rst $38
    jr c, @+$01

    ld bc, $f8c4
    swap b
    rst $30
    nop
    rst $28
    ld a, $80
    ld d, c
    rst $30
    ld [$18e7], sp
    call $c932
    ld bc, $8936
    db $76
    add c
    ld a, [hl]
    add b
    ld a, a
    ld [hl-], a
    nop
    ld a, a
    add b
    ccf
    ret nz

    dec sp
    call nz, $e41b
    ld [bc], a
    add hl, de
    and $09
    or $01
    cp $2f
    sbc a
    ld b, b

Call_030_4600:
    ldh [rNR42], a
    call z, $c4f3
    di
    ret nc

    rst $20
    nop
    xor [hl]
    pop bc
    xor e
    call nz, $c0bf
    rst $38

Jump_030_4610:
    nop
    ld [$03fc], sp
    ld h, b
    sbc a
    scf
    rlca
    rst $38
    call c, $ff04
    ld [hl], e
    db $fc
    rrca
    ldh a, [$2f]
    rlca
    ld hl, sp-$80
    dec l
    ld a, h
    rst $38
    rst $00
    rst $38
    add hl, sp
    rst $00
    cp $10
    ld bc, $20df

jr_030_4630:
    rra
    jr nz, jr_030_4630

    inc bc
    rst $30
    rrca
    nop
    cpl
    reti


    ld [hl], a
    sbc c
    ld d, c
    sbc a
    ld c, c
    sbc a
    ld [$0fd7], sp
    jp hl


    rlca
    ld bc, $ffff
    jp $01ff


    rst $38
    ld de, $0803
    ld [$ff01], sp
    ld h, e
    rst $38
    nop
    db $10
    ret nz

    rst $38
    add d
    ld [bc], a
    rst $38
    add b
    rst $38
    add c
    rst $38
    sub b
    add hl, bc
    ld [$00ff], sp
    rst $38
    or a
    call $eed5
    db $eb
    rst $30
    db $fc
    ld [bc], a
    di
    cp $f1
    rst $08
    rst $38
    ld [c], a
    db $10
    ld [$00b7], sp
    call $ee55
    dec hl
    rst $30
    inc e
    di

jr_030_467d:
    ld e, $02
    pop af
    ld c, a
    rst $38
    ld h, d
    ret nz

    ld a, a
    ld hl, $8008
    nop
    ret nz

    nop
    add b
    ld b, h
    add b
    ld a, e
    add b
    sub a
    ld b, b
    add sp, $2f
    db $10
    rst $38
    rst $38
    ld bc, $1003
    ld bc, $4601
    ld bc, $013e
    push hl
    dec de
    inc bc
    rrca
    jr jr_030_46ab

    jp $a5ff


    rst $38
    sbc c

jr_030_46ab:
    ld bc, $a508
    add hl, bc
    ld [$0fa0], sp

jr_030_46b2:
    add b

jr_030_46b3:
    jr @+$03

    ld [$c03f], sp

jr_030_46b8:
    rla
    add sp, $3f
    jr nc, jr_030_467d

    ccf
    dec bc
    jr jr_030_46c2

    db $10

jr_030_46c2:
    db $fc
    inc bc

jr_030_46c4:
    add sp, $17

jr_030_46c6:
    jr jr_030_46c4

    inc bc
    db $fc
    dec bc
    jr jr_030_46cd

jr_030_46cd:
    jr nz, jr_030_46c6

    rst $28
    rst $38
    jr nc, jr_030_46b3

    ldh [$0b], a
    jr z, jr_030_46d7

jr_030_46d7:
    db $10
    rst $28
    rst $30
    rst $38
    rlca
    ld b, b
    rlca
    add hl, bc
    jr jr_030_46e1

jr_030_46e1:
    rst $38
    ld bc, $31fe
    adc $00
    jr nz, jr_030_46b8

    jr z, jr_030_46b2

    dec d
    ld [c], a
    ld [$00f1], sp
    rlca
    ld hl, sp+$00
    rst $38
    add b
    ld a, a
    inc c
    ld [hl], e
    nop
    sub h
    ld h, e
    jr z, jr_030_46c4

    db $10
    rrca
    ld h, [hl]
    sbc c
    nop
    adc d
    ld [hl], c
    nop
    rst $38
    ld b, b
    sbc [hl]
    ld h, c
    adc [hl]
    nop
    ld [hl-], a
    pop bc
    ld e, $e1
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    inc b
    ld hl, sp+$14
    db $e3
    cp b
    ld b, a
    ldh a, [rIF]
    nop
    jp nz, $1239

    pop hl
    db $fc
    inc bc
    nop
    rst $38
    inc d
    ret nz

    ccf
    db $e4
    ld b, e
    ld [$e9c8], sp
    ld [$ffc4], sp
    db $10
    ldh [rIE], a
    sbc $07
    ld [$ff1f], sp
    ld b, a
    rst $38
    dec b
    rlca
    rst $38
    rrca
    rst $38
    ccf
    inc bc
    ld [$0d8f], sp
    ld [$0f00], sp
    rst $38
    inc sp
    db $fc
    ld d, b
    ldh [$a0], a
    ret nz

    nop
    and e
    ret nz

    db $d3
    ldh [$cf], a
    ldh a, [$8f]
    ldh a, [rP1]
    ld hl, sp-$01
    inc d
    rrca
    ld a, [bc]
    rlca
    dec b
    inc bc
    nop
    dec b
    inc bc
    ei
    rlca
    db $e3
    rra
    pop af
    rrca
    nop
    adc e
    db $fc
    or h
    rst $08
    cp e
    rst $00
    ld e, c
    rst $20
    db $10
    ld [hl+], a
    rst $38
    inc e
    adc e
    ld [$ff00], sp
    rst JumpTable
    ccf
    nop
    ld sp, $cdff
    di
    sbc l
    db $e3
    ld e, l
    db $e3
    inc b
    dec l
    di
    ld [de], a
    rst $38
    inc c
    ccf
    ld [$fe31], sp
    nop
    ld e, d
    pop hl
    or [hl]
    pop bc
    cp [hl]
    pop bc
    sbc $e1
    ld [$e19e], sp
    and [hl]
    reti


    ccf
    db $10
    jp z, $e507

    nop
    inc bc
    db $ed
    inc de
    pop bc
    ccf
    ld l, l
    di
    sbc c
    nop
    rst $20
    or e
    rst $08
    cp a
    pop bc
    adc e
    rst $38
    or a
    ld [bc], a
    adc $bb
    call nz, $e65d
    ld h, $6f
    ld [$00b1], sp
    rst $08
    push hl
    ei
    db $fd
    add e
    dec a
    jp $02dd


    ld h, e
    xor e
    ld [hl], a
    ld d, h
    rst $38
    db $fc
    sbc l
    ld [$20f1], sp
    cp $da
    ccf
    ld c, b
    rst $38
    rst $38
    rla
    rrca
    res 1, l
    ccf
    sbc b
    db $dd
    and $e6
    dec l
    ld [$503f], sp
    ld d, a
    rrca
    ld [$5300], sp
    rst $28
    set 6, a
    rst $20
    rst $38
    cp h
    rst $38
    ld d, b
    and a
    db $d3
    add hl, bc
    sub c
    rst JumpTable
    ld [$ff9e], sp
    ld c, a
    cp a
    nop
    ld l, a
    sbc a
    sub c
    rst $38
    ld h, c
    rst $38
    add hl, bc
    rst $38
    ld b, b
    add e
    rst $20
    jr @+$61

    ldh [$a1], a
    ret nz

    rst $08
    add b
    nop
    rst $38
    add b
    cp a
    ret nz

    rst $00
    cp b
    adc [hl]
    add a
    nop
    db $fc
    rst $38
    ld a, [bc]
    rst $00
    ld e, l
    add e
    ld a, a
    add c
    nop
    ccf
    pop bc
    cp a
    ld b, c
    reti


    ld h, a
    db $e3
    db $fd
    nop
    cp [hl]
    add h
    or $8c
    cp a
    call z, $fb94
    nop
    db $eb
    sub b
    xor a
    ret nc

    ld d, a
    add sp, $3f
    rst $38
    jr nz, jr_030_48a3

    add hl, de
    jr c, jr_030_4849

    add hl, bc
    rst $38
    add hl, de
    dec de
    push af
    ld a, [bc]
    reti


    daa

jr_030_4849:
    cp d
    ld b, a
    sbc a
    db $10
    rst JumpTable
    ccf
    ld e, b
    rst $38
    ld [hl+], a
    rst $38
    dec bc
    ccf
    cp b
    rst $10
    add sp, -$01
    ccf
    ld e, b
    cp e
    ld b, b
    ld b, a
    pop bc
    ld de, $e0dc
    add $f8
    ret c

    ldh [rP1], a
    call c, $dfe0
    rst $28
    rst JumpTable
    rst $28
    call c, $00ec
    ei
    rst $38
    inc sp
    rrca
    ld h, a
    rra
    dec de
    rlca
    nop
    ld [hl], e
    rrca
    di
    rst $28
    di

jr_030_487e:
    rst $28
    ld [hl], e
    rrca
    pop bc
    inc de
    ld [$1819], sp
    ret nc

    ldh [$dc], a
    ldh a, [$d8]
    ld [bc], a
    ld a, [bc]
    and b
    inc de
    ld [$196f], sp
    db $10
    inc de
    rrca
    ld h, e
    rra
    dec sp
    add b
    ld [bc], a
    ld a, [bc]
    ret nz

    rst $38
    push hl
    rst $38
    ldh a, [rIE]
    ld hl, sp+$28

jr_030_48a3:
    rst $38
    and $bf
    add hl, bc
    ldh a, [$2f]
    add hl, bc
    ld a, a
    rst $38
    rst JumpTable
    adc d
    ld b, l
    add hl, bc
    rra
    rst $38
    cp a
    reti


    ld [$057f], sp
    ld [$aff3], sp
    dec d
    ld [$17f9], sp
    ld [$23fb], sp
    ld [$10ad], sp
    dec d
    jr nz, jr_030_487e

    ld [de], a
    ret nc

    inc bc
    db $10
    ccf
    ld [de], a
    nop
    rst $28
    add hl, bc
    ld [$11fe], sp
    db $fd
    nop
    ld [hl+], a
    db $f4
    ld c, a
    ld [c], a
    rst JumpTable
    pop hl
    ld sp, $00ff
    rst $28
    rst $08
    add hl, bc
    pop af
    ld sp, hl
    ld c, l
    ld a, l
    inc hl
    ld bc, $613f
    rst JumpTable
    ld h, c
    xor a
    pop af
    nop
    inc hl
    ld [$a800], sp
    sbc [hl]
    xor c
    sub l
    jp z, Jump_030_5594

    jp z, Jump_030_6504

    sra e
    db $e4
    jr nc, @+$21

    ld [$7189], sp
    nop
    ld a, c
    dec l
    db $fd
    inc hl
    cp a
    ld h, c
    rst $38
    pop hl
    nop
    sub a
    ld a, c
    and a
    sbc b
    ret


    add [hl]
    ld a, [c]
    pop hl
    ld bc, $f81c
    ei
    cp $d7
    adc a
    ld a, b
    ld e, l
    ld [$af00], sp
    ld a, a
    pop hl
    inc hl
    add a
    ld b, c
    sbc e
    add e
    nop
    rst $10
    ld c, l
    xor e
    rst $20
    rst $10
    ei
    rst $38
    rst $38
    nop
    dec [hl]
    ld [c], a
    add hl, de
    ld a, [c]
    inc e
    ld sp, hl
    ld a, e
    db $ec
    nop
    db $eb
    rst $00
    sub h
    adc a
    cp h
    rst JumpTable
    rst $38
    rst $38
    nop
    srl l

jr_030_4946:
    rst $38

jr_030_4947:
    rra

jr_030_4948:
    ld h, c
    and e
    add a
    pop bc
    and b
    ld hl, $cd08
    ld hl, $3020
    rst $28
    jr nc, @-$0f

    sub b
    nop
    ld l, a
    ret


    ld h, $cf
    jr nz, @-$75

    jr nz, jr_030_4980

    add b
    ld l, [hl]
    ld [$fb0c], sp
    inc c
    ei

jr_030_4967:
    dec c
    ld a, [$0093]
    ld l, b
    di
    ld [$0831], sp
    ld [$2000], sp
    nop
    nop
    add hl, bc
    jr nz, jr_030_4947

    jr nz, jr_030_4946

    inc hl
    ld d, b
    ld [$30af], sp
    rst $28

jr_030_4980:
    ccf

Jump_030_4981:
    adc e
    ld [$0008], sp
    sub c
    nop
    ld [$08f3], sp
    db $e3
    jr jr_030_4997

    ld sp, hl
    inc c
    jr nc, @-$03

    db $fc
    dec a
    ld [$097f], sp
    inc a

jr_030_4997:
    ld [$08ff], sp
    nop
    rst $38
    ld c, b
    rst $38
    ld c, d
    cp a
    ld a, [bc]
    db $fd
    inc e
    add l
    rrca
    db $10
    ccf
    rrca
    rst $38
    ld c, a
    push hl
    add hl, bc

jr_030_49ac:
    rrca
    db $dd
    add hl, bc
    ld b, b
    rra
    rrca
    ld [$c3fd], sp
    ret nz

    cp a
    add b
    rst $38
    ld bc, $ff84
    add h
    ei
    add b
    rst $38
    pop bc
    rrca
    jr jr_030_4948

    dec c
    jr nz, jr_030_4967

    rst $38
    and b
    rst JumpTable
    rrca
    db $10
    jp $00e7


    dec e
    jp $04fb


    cp $00
    pop af
    nop
    db $10
    cp a
    ld b, b
    cp a
    ld a, a
    ld [$fff8], sp
    inc b
    ld hl, sp+$04

jr_030_49e2:
    swap b
    rst $30
    nop
    rst $28
    ld a, [de]
    add hl, bc
    cp a
    ld b, b
    add b
    ld l, a
    inc hl
    ld hl, sp-$02
    pop af
    db $fd
    ld [c], a
    db $f4
    rst $08
    dec e
    ld [c], a
    sbc a
    pop hl
    ld a, e
    dec bc
    rra

jr_030_49fc:
    ld e, c
    rst $38
    jr nz, jr_030_49fc

    rst $38
    jr jr_030_4a43

    ld hl, sp+$2b
    jr jr_030_4a47

    add b
    dec b
    add b
    dec bc
    add b
    ld [bc], a
    ld d, $80
    dec l
    add b
    ld e, e
    add b
    rrca
    inc e
    nop
    nop
    cp h
    nop
    ld h, [hl]
    jr jr_030_49e2

    jr c, jr_030_49ac

    ld [hl], b
    ld b, b
    dec e
    cp a
    add hl, bc
    sbc d
    ld h, a
    ld [hl], $cf
    ld l, l
    sbc a
    nop
    jp c, $b53f

    ld a, [hl]
    ld h, d
    db $fd
    pop de
    xor $00
    and e
    call c, $e857
    xor [hl]
    pop de
    ld e, h
    and e
    nop
    cp c
    ld b, a
    ld [hl], d
    adc a
    push hl
    ld e, $ca

jr_030_4a43:
    dec a
    nop
    sub l
    ld a, e

jr_030_4a47:
    ld b, a
    cp b
    adc a
    ld [hl], b
    ld d, $e9
    nop
    inc l
    db $d3
    ld e, b
    and a
    or e
    ld c, h
    ld h, [hl]
    sbc c
    nop
    call $ab33
    ld [hl], a
    ld d, [hl]
    rst $28
    xor h
    rst JumpTable
    nop
    ld c, b
    cp a
    sub c
    ld a, [hl]
    ld [hl-], a
    db $fd
    ld h, l
    ld a, [$cb00]
    db $f4
    rst $38
    rst $38
    ldh [$c0], a
    ret nz

    add b
    nop
    add b
    add b
    adc h
    add b
    sbc h
    add b
    cp c
    add b
    nop
    or d
    add c
    rst $38
    rst $38
    rlca
    inc bc
    inc bc
    ld bc, $0100
    ld bc, $0171
    pop bc
    ld sp, $e113
    nop
    dec h
    jp $83a4


    adc b
    add a
    sub c
    adc [hl]
    ld bc, $9ca2
    call nz, $89b8
    ldh a, [$9e]
    xor l
    ld [$4900], sp
    add a
    sub e
    dec c
    dec h
    add hl, de
    ld c, c
    ld sp, $9302
    ld h, c
    daa
    pop bc
    ld c, a
    add e
    ld a, a
    add h
    adc a
    nop
    ldh a, [$83]
    db $fc
    ldh a, [rIE]
    rst $08
    ldh a, [$c3]
    nop
    db $fc
    jp $c7fc


    ld hl, sp-$39
    ld hl, sp-$0f
    jr nz, @+$11

    pop bc
    ccf
    add hl, bc
    di
    rrca
    jp $e33f


    ld h, d
    rra
    ld bc, $1310
    db $10
    jp $cffc


    rst $30
    dec bc
    adc a
    ld bc, $87f0
    ld hl, sp-$71
    ldh a, [$c3]
    ccf
    ld bc, $0010
    di
    rrca
    rrca
    rst $38
    pop hl
    rra
    pop bc
    ccf
    nop
    pop af
    rrca
    add b
    rst $38
    add a
    ld hl, sp+$43
    db $fc
    jr z, @+$81

    rst $38
    inc bc
    db $10
    add e
    ld h, b
    ld a, [bc]
    ld [hl], $ff
    ld a, a
    jr nz, @-$35

    ret


    sbc a
    ld [$80b6], sp
    rst $38
    and b
    rst $38
    ld bc, $fff6
    rst $38
    daa
    jr c, jr_030_4b41

    jr nc, jr_030_4b15

    db $10

jr_030_4b15:
    inc bc
    daa
    jr c, jr_030_4b2a

    ld e, $08
    rrca
    ld [hl], $08
    ld [hl], b
    ld [de], a
    ld [bc], a
    nop
    add c
    ld a, [hl]
    nop
    rst $38
    inc a
    dec l
    add hl, de
    rla

jr_030_4b2a:
    ld b, b
    jr jr_030_4b48

    jr jr_030_4b4e

    rrca
    rrca
    ld [$100f], sp
    ld [hl+], a
    rra
    inc de
    ld b, h

jr_030_4b38:
    inc e
    inc sp
    call z, $99e3
    ld a, [hl+]
    db $e3
    jr nc, jr_030_4b5d

jr_030_4b41:
    nop
    nop
    nop
    ld e, a
    nop
    inc bc
    inc bc

jr_030_4b48:
    rlca
    inc b
    ld c, $09
    dec e
    dec de

jr_030_4b4e:
    nop
    dec l
    dec sp
    cpl
    add hl, sp
    ld c, e
    ld a, h
    ld b, l
    ld a, [hl]
    nop
    ld b, e
    ld a, a
    ld h, e

jr_030_4b5b:
    ld a, h
    ld d, c

jr_030_4b5d:
    ld a, [hl]
    ld e, h
    ld l, a
    nop
    ccf
    inc hl
    cpl
    jr nc, jr_030_4b81

    inc e
    rlca
    rlca
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_030_4b38

    call c, $00ec
    jp c, $faee

    adc $e9
    rra
    pop de
    ccf
    nop
    pop hl
    rst $38
    db $e3
    rra
    push bc

jr_030_4b81:
    ccf
    dec e
    ei
    nop
    cp $e2
    ld a, [$ec06]
    inc e
    ldh a, [$f0]
    nop
    nop
    nop
    ld bc, $6200
    ld bc, $2354
    nop
    ld c, l
    ld [hl-], a
    ld d, [hl]
    add hl, hl
    ld c, d
    dec [hl]
    ld h, $19
    ld [$001f], sp
    daa
    jr jr_030_4bcc

    ld b, h
    dec sp
    ld a, h
    inc c
    inc bc

jr_030_4baa:
    inc b
    inc bc
    inc bc
    inc a

jr_030_4bae:
    ld b, b
    add b
    nop
    nop
    ld b, [hl]
    add b
    ld a, [hl+]
    call nz, Call_030_4cb2
    ld l, d
    sub h
    nop
    ld d, d
    xor h
    ld h, h
    sbc b
    ld hl, sp+$00
    db $e4
    jr jr_030_4bc4

jr_030_4bc4:
    ld a, [c]
    inc c
    and d
    ld e, h
    ld a, $c0
    jr nz, @-$3e

jr_030_4bcc:
    ld b, b
    ret nz

    ld e, l
    ld a, a
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    ld [hl], c
    sbc a
    pop bc
    add hl, hl
    jr nz, jr_030_4b5b

    rst $38
    sbc [hl]
    ld hl, $f372
    add c
    ld c, e
    ld l, a
    and b
    ldh [$a1], a
    cp a
    ld h, h
    rst $38
    ld hl, $d571
    or a
    ld hl, $b7d4
    db $10
    rst JumpTable
    cp a
    ret nz

    ld l, $ff
    ccf
    ccf
    ld e, a
    ld bc, $a060
    rst JumpTable
    ret nz

    or b
    ret nz

    and b
    ld hl, $e024
    sub b
    ld h, $21
    jr c, jr_030_4baa

    ld h, c
    ld a, b
    jr nz, jr_030_4bae

    ld hl, sp+$61
    rlca
    rlca
    dec de
    inc e
    cpl
    inc b
    jr nc, jr_030_4c52

    daa
    ld e, a
    ld l, a
    ld h, c
    ld c, a
    ld [hl], a
    nop
    rst $38
    rst $38
    add e
    rst $38
    add l
    rst $38
    adc c
    rst $38
    ld b, $91
    rst $38
    and c
    rst $38
    pop bc
    inc l
    jr nz, jr_030_4cae

    dec bc
    rst $38
    add b
    cp a
    ret nc

    inc hl
    add b
    add hl, hl
    rlca
    dec c
    or b
    ld h, $92
    ld b, c
    ld e, l
    cp $ff
    ld bc, $5dfd
    dec bc
    inc hl
    ld bc, $072b
    dec c
    ld h, $49
    ld b, c
    add b
    dec a
    nop
    nop
    inc bc

jr_030_4c51:
    inc bc

jr_030_4c52:
    rlca
    inc b
    rrca
    nop
    ld [$101f], sp
    ccf
    jr nz, @+$81

    ld b, b
    ld e, a
    inc b
    ld h, b
    ld c, [hl]
    ld [hl], c
    ld b, h
    ld a, e
    and c
    inc h
    dec sp
    ld [$1f18], sp
    rlca
    rlca
    ccf
    ldh [$e0], a
    sub b
    nop
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add d
    ld a, [hl]
    add e
    ld bc, $477d
    cp e
    cpl
    rst $10
    rra
    rst $28
    and c
    ld [bc], a
    ld e, $ee
    inc c
    db $fc
    ldh a, [$f0]
    ccf
    rst $38
    and b
    jr nz, @-$7e

    ld b, c
    rst $38
    ld d, b
    ld [hl], b
    ld d, [hl]
    db $76
    sub h
    inc hl
    ld d, l
    ld [hl], l
    inc hl
    rst JumpTable
    ld [hl], c
    rst $38
    dec b
    ld c, d
    ld b, $21
    inc bc
    inc bc
    sbc a
    ld bc, $ff41
    ld a, [bc]
    ld a, [bc]
    ld c, $aa
    xor [hl]
    and e
    ei
    ld [hl], c

jr_030_4cae:
    rst $38
    jr nz, jr_030_4c51

    ld h, b

Call_030_4cb2:
    ld hl, $c0c0
    sbc a
    ldh [$80], a
    nop
    ldh a, [$c3]
    ldh a, [$63]
    ld [hl], b
    ccf
    ccf
    jr nc, @-$7e

    ld hl, $313e
    jr c, @-$6e

    ld hl, sp-$68
    call c, $cf02
    rst $08
    rst $00
    ldh [$e0], a
    rst $38
    ld hl, $4060
    ld a, a
    dec [hl]
    ld l, a
    ld [hl], b
    dec sp
    inc a
    ld h, $3f
    nop
    inc de
    inc e
    add hl, bc
    ld c, $0e
    rrca
    dec b
    ld b, $00
    inc bc
    inc bc
    rst $38
    rst $38
    add e
    rst $38
    add l
    rst $38
    ld bc, $ff89
    sub c
    rst $38
    and c
    rst $38
    pop bc
    inc l
    ld [$3cff], sp
    inc a
    ld a, $3e
    dec h
    ccf
    inc h
    nop
    rst $38
    db $e4
    rst $38
    and h
    rst $38
    cp h
    db $e3
    cp [hl]
    ld c, d
    nop
    add b
    add b
    add b
    ld e, d
    add c
    add c
    rst $38

jr_030_4d12:
    ld [$f08f], sp
    xor a
    ret nc

    ld hl, $90ef
    ldh [$30], a
    cp a

jr_030_4d1d:
    rst $38
    ld b, d
    jr nz, jr_030_4d12

    rrca
    di
    dec c
    jr nz, jr_030_4d1d

    add hl, bc
    ld hl, $ff09
    push af
    rrca
    db $fd
    nop
    rst $38
    cp $ff
    db $dd
    db $e3
    xor l
    pop de
    and l
    nop
    reti


    add l
    ld sp, hl
    xor c
    pop de
    adc a
    pop af
    sub l
    nop
    jp hl


    rst $38
    ld a, a
    add h
    ei
    sbc c
    and $a2
    inc b
    db $dd
    and c
    sbc $98
    rst $20
    add hl, hl
    db $e3
    sbc h
    nop
    rst $38
    rst $38
    add b
    ld a, a
    inc c
    di
    ld b, $f9
    nop
    pop hl
    ld e, $10
    rst $28
    ld c, $f1
    add c
    ld a, [hl]
    ld bc, $feff
    ld bc, $0dff
    di
    rlca
    cpl
    ld a, [bc]
    rra
    ld de, $0fef
    cpl
    ld a, a
    ccf
    cp a
    ld [de], a
    ret nz

    rst $38
    add b
    ld h, c
    ret nz

    cp a
    inc h
    cp a
    add d
    ld l, $ff
    db $fd
    inc bc
    rst $38
    ld bc, $0361
    ld d, b
    db $fd
    inc h
    db $fd
    ld d, c
    and a
    rst $20
    cp a
    push hl
    ld h, h
    and a
    ld b, c
    add hl, hl
    cp a
    ret nz

    inc hl
    push hl
    rst $20
    add hl, de
    db $fd
    rst $20
    dec h
    add c
    dec sp
    ld sp, hl
    rlca
    inc hl
    nop
    rrca
    rra
    ld [hl-], a
    ld a, l
    ld b, h
    ei
    adc c
    or $00
    sub e
    db $ec
    rst $20
    ret c

    cp $f1
    rst $38
    rst $38
    nop
    ldh a, [$f8]
    ld l, h
    sbc [hl]
    xor $1f
    reti


    ccf
    inc b
    or c
    ld a, a
    ld h, e
    rst $38
    rst $08
    ld l, $ff
    nop
    nop
    nop
    ld e, $1e
    ccf
    ld hl, $4679
    ld [hl], h
    ld bc, $374b
    ld l, b
    ld [hl], $69
    ld [hl], a
    ret z

    cpl
    nop
    ld a, b
    ld a, b
    db $fc
    add h
    adc $32
    ld [hl], $ca
    nop
    or $0a
    xor [hl]
    sub $ec
    rla
    pop hl
    cp a
    ld de, $bfe0
    rst $38
    ld hl, $8080
    rst $38
    jr nz, jr_030_4e3d

    sub d
    ld b, e
    rst $38
    add c
    add c
    ld bc, $4a01
    ld l, d
    ld c, c
    ld b, e
    ld a, [hl-]
    and c
    ld hl, $25fe
    or a
    ld b, l
    add sp, -$59
    db $fd
    rst $38
    add l
    ld hl, $257f
    jr nz, @-$01

    rlca
    and a
    add l
    ld sp, hl
    add c

jr_030_4e15:
    ld sp, hl
    sub l
    ld h, b
    jp hl


    ld hl, $8327
    pop bc
    dec h
    sbc c
    ld e, d
    nop
    and l
    sub b
    rst $28
    ret z

    or a
    cp e
    ret nz

    add b
    ld [$7fff], sp
    rst $38
    inc a
    ld b, c
    nop
    rst $38
    ld b, b
    rlca
    cp a
    jr nz, jr_030_4e15

    rst $28
    nop
    daa
    jr nz, jr_030_4e5e

    add b
    ld h, c

jr_030_4e3d:
    ld b, c
    cp a
    inc hl
    db $dd
    db $ed
    inc bc
    ld bc, $ff20
    cp $df
    cp a
    ldh [$a1], a
    rst $38
    and c

jr_030_4e4d:
    jr nz, jr_030_4e4d

    cp a
    rlca
    add hl, bc
    db $fd
    rlca
    add l
    rst $38
    add l
    ld hl, $fd7f
    rlca
    add hl, bc
    nop
    rst $38

jr_030_4e5e:
    ld a, [hl]
    add c
    pop hl
    ld b, l
    nop
    ld hl, $0fff
    ld sp, hl
    and c
    rlca
    inc hl
    nop
    pop af
    rst $38
    ld bc, $03fd
    rst $30
    ld hl, sp-$09
    db $10
    rst $38
    rst $30
    cp $43
    ld hl, sp+$77
    rst $38
    scf
    ld a, [bc]
    ld a, b
    ld c, $1f
    rst $28
    ld hl, $83ff
    ld a, a
    nop
    xor $ff

jr_030_4e88:
    db $ec
    ld e, $70
    ld hl, sp+$6c
    ld d, e
    db $10
    ld h, c
    ld e, [hl]
    ld a, a
    ld b, d
    ld d, b
    ld l, a
    ld hl, $007f
    ld e, $3f
    nop
    rst $38
    ld [hl], $ca
    adc $32
    nop
    cp $c6
    ld a, [hl-]
    cp $02
    cp $c4
    cp $30
    jr c, jr_030_4f28

    cpl
    ld b, c
    add b
    ccf
    add e
    ccf
    inc b
    add d
    ccf
    cp [hl]
    ccf
    and d
    add c
    rst $38
    ccf
    dec c
    ld hl, $e1ff
    rst $38
    inc hl
    ld b, c
    pop hl
    inc hl
    ld c, d
    ccf
    ld a, a
    jr nz, jr_030_4e88

    ld hl, $613f
    cp h
    ret nz

    ld hl, $014f
    ld a, h
    db $fd
    ld b, h
    push bc
    call nz, Call_030_61a0
    ld b, l
    ld hl, $09f6
    adc l
    ld a, a
    xor a
    nop
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    ld b, b
    rst $38
    ld [hl+], a
    rst JumpTable
    jr nc, jr_030_4f27

    or $e5
    cp $03
    rst $38
    db $fc
    cp $fd
    db $fd
    rst $38
    ld h, $22

jr_030_4efa:
    add b
    rst $38
    add hl, sp
    rst $38

jr_030_4efe:
    or [hl]
    ld sp, hl
    ld l, l
    ld a, [c]
    ld [c], a
    ld b, b
    ld a, l
    rst $38
    ld e, $fd
    xor l
    ld e, a
    db $76
    adc a
    nop
    sub a
    ld l, [hl]
    rst $38
    ld a, a
    rst JumpTable
    ret nz

    and b
    sbc a
    nop
    ret nz

    cp a
    rst $08
    cp a
    ld hl, sp-$10
    sbc b
    sub b
    db $10
    rst $38
    sbc a
    rst $38
    jr nz, jr_030_4f27

    rlca
    ld sp, hl
    inc bc

jr_030_4f27:
    nop

jr_030_4f28:
    db $fd
    di
    db $fd
    rra
    rrca
    add hl, de
    add hl, bc
    rst $38
    db $10
    ld sp, hl
    ret nz

    add b
    ld hl, $80e0
    rst $38
    add b
    jr nz, jr_030_4efa

    ret nz

    jr c, jr_030_4efe

    ld a, a
    rst $38
    ld a, a
    inc bc
    ld e, b
    ld bc, $0761
    add l
    ld h, c
    nop
    nop
    rst $38
    inc c
    nop
    rst JumpTable
    ccf
    cp a
    ld e, c
    ld b, c
    ld a, h
    rst $38
    ld b, b
    ld a, b
    ld l, a
    ei
    db $fc
    db $fd
    add [hl]
    rst JumpTable
    add d
    ld [bc], a
    xor a
    jp nz, $e297

    bit 6, d
    rra
    dec c
    ld a, a
    inc h
    rst JumpTable
    ld a, a
    rst JumpTable
    cp $ff
    pop bc
    ld a, $a2
    ld [bc], a
    ccf
    and e
    inc hl
    and e
    ccf
    cp a
    ld b, c
    add b
    ld b, d
    nop
    ld hl, $3fff
    ccf
    rst $38
    ret nz

Jump_030_4f81:
    cp $32
    ld bc, $2100
    cpl
    cp h
    daa
    pop bc
    ccf
    ld c, c
    cp a
    ld a, a
    call nz, $e145
    db $fc
    db $fd
    ld a, a
    inc [hl]
    rst $38
    ld a, a
    ld [hl+], a
    ld b, e
    ld a, a
    ld [hl+], a
    rst JumpTable
    ccf
    ld bc, $1fff
    rst $08
    inc sp
    rst $38
    cp $fe
    cpl
    ret nc

    ld [hl+], a
    ld b, l
    db $fd
    ld [hl+], a
    db $fc
    ld sp, hl
    ld h, $d8
    nop
    ld h, a
    push de
    ld [$6fd0], a
    ld [$6f75], a
    ld [$d7f0], sp
    jr c, @-$02

    ld e, a
    jp Jump_030_523e


    nop
    xor a
    dec hl
    sub $db
    ld h, $62
    sbc a
    dec b
    ld hl, $dffe
    ld e, a
    ret nc

    ldh [$c0], a
    add b
    ld hl, $fe18
    add b
    ldh [rLYC], a
    ld h, c
    dec bc
    rlca
    inc bc
    ld e, c
    ld bc, $0721
    ld b, e
    and c
    rst $38
    nop
    ld bc, $800e

jr_030_4fe7:
    ld c, $0f
    rst $38
    ei
    ld [hl], b
    db $f4
    ld a, b
    pop af
    ld a, [hl]
    nop
    db $fc
    ld a, a
    db $eb
    ld b, a
    pop bc
    ld b, b
    ret nz

    ld b, b
    nop
    rst $38
    rst $38
    rst $20
    ld a, [hl-]
    di
    ld e, $3b
    ld c, $00
    ld c, a
    add [hl]
    sub a
    ld [c], a
    ld [hl], e
    cp $2f
    ld e, $00
    rst $38
    cp $cd
    ld a, [hl]
    db $db
    ld a, h
    rst $30
    ld a, b
    nop
    rst $28
    ld [hl], b
    db $dd
    ld h, e
    or $4f
    ret c

    ld a, h
    add h
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, $21
    ld h, e
    ld a, [c]
    ld c, $83
    jp nz, $0203

    ld hl, $092e
    rst $10
    jr c, @+$3a

    rst $38
    nop
    ld a, [de]
    db $db
    inc a
    ccf
    inc b
    jr z, @+$01

    rst $30
    rst $38
    db $ed
    ld c, e
    cp e
    rst $38
    ld d, a
    sbc c
    ld b, l
    ld [hl], a
    ld b, l
    or l
    rrca
    add hl, bc
    ccf
    rrca
    ld c, $81
    ld h, b
    and l
    jp $99c3


    sbc c
    and l
    ld hl, $25e0
    ld [hl+], a
    ld l, a
    add b
    rst $38
    adc c
    nop
    and b
    ld b, $00
    add h
    nop
    sub d
    nop
    add hl, hl
    jr nz, jr_030_4fe7

    ld h, e
    jp $2335


    adc c
    jp Jump_030_43a1


    daa
    ld b, b
    rst $38
    ld hl, $df7f
    ldh [$b1], a
    adc $9f
    db $10
    ldh [$a4], a
    db $db
    ld hl, $80ff
    pop hl
    sbc [hl]
    ld b, h
    rst $38
    jr nz, jr_030_5085

jr_030_5085:
    ld de, $23ee
    ld b, h
    cp e
    ret nz

    ld hl, $fe89
    ei
    rlca
    dec c
    di
    db $fd
    nop
    inc bc
    ld b, l
    cp e
    ld b, a
    cp c
    rst $38
    ld bc, $0013
    db $ed
    rst $38
    ld a, a
    rst $08
    ldh a, [$bf]
    rst $08
    reti


    ld bc, $d796
    sbc b
    pop de
    sbc [hl]
    call c, $2593
    add b
    ccf

jr_030_50b0:
    di
    rrca
    push af
    ei
    dec de
    jp hl


    dec hl
    ld b, $d9
    db $eb
    add hl, de
    xor e
    ld e, c
    daa
    ccf
    rst JumpTable
    inc b
    ldh [$b0], a
    rst $08
    and b
    rst JumpTable
    ld hl, $9fe0
    and [hl]
    ld h, c
    rst $38
    jr nz, jr_030_50ce

jr_030_50ce:
    nop
    ld [hl+], a
    ld bc, $ff09
    ld bc, $fbfe
    rlca
    dec c
    di
    dec b
    ei
    ld hl, $0724
    ld sp, hl
    ld h, c
    jp $2181


    rst $20
    and l
    add hl, bc
    rst $38
    cp l
    db $db
    sbc c
    daa
    and l
    jp $833e


    jr nz, jr_030_50b0

    ret nz

    call z, $988c
    ld b, b
    dec h
    ret nz

    add hl, hl
    ld c, [hl]
    nop
    add b
    nop
    cp a
    nop
    and b
    ld c, $00
    and h
    nop
    xor b
    ld b, l
    ld hl, $7e20
    dec bc
    nop
    ld a, d
    nop
    ld e, [hl]
    ld b, l
    db $76
    ld b, e
    jr nz, jr_030_5123

    inc b
    nop
    jr nz, jr_030_515c

    ld [bc], a
    nop
    stop
    ld b, a
    ld b, h
    ld b, a
    ld bc, $ff00
    ld b, c
    ld [hl+], a

jr_030_5123:
    ld b, b
    sbc b
    rst $00
    db $dd
    inc sp
    ld bc, $330e
    ld a, e
    add h

jr_030_512d:
    ld [hl], e
    nop
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    ld b, b
    add d
    add hl, hl
    pop de
    xor [hl]
    cp a
    ret nz

    ret c

    ldh [rP1], a
    and c
    rst $38
    call $bff4
    rst $38
    rst $10
    ld sp, hl
    ld [bc], a
    rst $38
    ld a, a
    ld de, $ffee
    nop

jr_030_5150:
    jr nz, jr_030_5150

    jr nc, @+$01

    rst $38
    ld b, d
    jr nz, jr_030_5159

    rst $38

jr_030_5159:
    rla
    jp hl


    nop

jr_030_515c:
    db $fd
    inc bc
    dec de
    rlca
    dec c
    rst $38
    di
    ld c, a
    ld b, b
    db $fd
    inc hl
    rra
    rst $38
    db $fc
    rst $28
    sbc a
    sbc a
    nop
    ldh [$d8], a
    ldh [$bf], a
    rst $38
    adc a
    ldh a, [$ef]
    add c
    ld b, c
    rst $38
    ccf
    rst $30
    ld sp, hl
    ld sp, hl
    rlca
    ccf
    sub d
    dec sp
    pop af
    rrca
    ld hl, $0ff3
    ccf
    ldh a, [rNR12]
    adc a
    cp a
    ret nz

    ld a, a
    call $23f4
    rst $10
    ld bc, $fff9
    ld a, a
    nop
    rst $38
    rst $38
    nop
    jr nz, jr_030_512d

    inc h
    db $dd
    ld b, h
    inc hl
    rst $38
    ld de, $0722
    nop
    ld sp, hl
    db $fd
    inc bc
    dec de
    rlca
    db $fd
    rst $38
    di
    ld b, b
    ld c, a
    ld b, e
    rra
    rst $38
    db $fc
    ld [$5900], sp
    ld bc, $3500
    ld c, b
    call nc, $a229
    ld e, l
    ld hl, $4400
    cp e
    ld c, c
    or [hl]
    ld h, c
    ld e, $0c
    inc bc
    nop
    ld [hl-], a
    dec c
    pop bc
    ld a, $70
    rrca
    inc l
    inc de
    nop
    ld d, e
    inc l
    inc e
    inc bc
    rra
    nop
    jr z, jr_030_51f0

    nop
    inc de
    inc c
    db $ec
    inc bc
    or [hl]
    ld b, c
    jp c, $0021

    push hl
    jr @-$5c

    ld e, h
    and c
    ret nz

    ld e, e
    ldh [rP1], a
    inc l
    di
    sub h
    ld a, e

jr_030_51f0:
    ld l, d
    dec e
    dec [hl]
    ld c, $00
    ld a, [hl+]
    rla
    ld h, c
    rra
    ccf
    ld a, a
    ld a, a
    ret


    nop
    rst $38
    cp a
    ldh a, [rIE]
    rst $28
    or b
    ld a, [$00e4]
    cp $a1
    db $eb
    ldh a, [$fc]
    cp $fe
    inc hl
    nop
    rst $38
    db $fd
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    nop
    rst $28

jr_030_521a:
    dec b
    rst $28
    rla
    rst $38
    rrca
    rst $30
    jr jr_030_5222

jr_030_5222:
    ld a, b
    jr nz, @+$81

    rst $08
    cp b
    ret nc

    ld a, [c]
    and d
    nop
    ld [c], a
    and d
    xor $ae
    rst $38
    add b
    ld a, a
    ret nz

    nop
    ldh a, [rNR41]
    ldh a, [$9f]
    add sp, $5f
    ld a, a
    cpl
    jr nz, jr_030_527d

Jump_030_523e:
    jr z, jr_030_5261

    rst $38
    ccf
    ldh [rLCDC], a
    rst JumpTable
    nop
    adc a
    or c
    sbc [hl]
    cp h
    sub e
    or d
    sbc l
    or b
    ld b, b
    sbc a
    add hl, hl
    rst $38
    db $fc
    rlca
    ld [bc], a
    ei
    pop af
    nop
    call $0d39
    ld sp, hl
    dec a
    ret


    adc l
    ld a, c
    and b

jr_030_5261:
    add hl, hl
    rst $38
    nop
    dec bc

jr_030_5265:
    ld a, a
    rst $38
    add b
    rst $38
    rst JumpTable
    nop
    ldh [$e0], a
    rst $38
    cp a
    rst $38
    sbc a
    ldh a, [$98]
    jr nz, jr_030_5265

    sbc e
    ld b, c
    call c, $fbf3
    rlca
    rlca
    nop

jr_030_527d:
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rrca
    add hl, sp
    rrca
    reti


    ld b, b
    cpl
    ld hl, $ef1b
    ld a, [$d500]
    nop
    nop
    xor d
    nop
    ld d, l
    nop
    and b
    nop
    ld b, b
    nop
    add d
    jr nz, jr_030_521a

    nop
    cp a
    nop
    ld d, a
    adc a
    ld [bc], a
    ld [hl-], a
    nop
    ld bc, $234f
    add a
    ld hl, sp+$01
    ld c, $09
    nop
    or $88
    ld [hl], a
    ld [$45f7], sp
    ei
    ld h, $00
    ei
    ld d, e
    rst $38
    ld a, [$fbff]
    rst $38
    sub l
    nop
    ld a, a
    rrca
    rst $38
    jr @-$17

    db $e3
    rra
    rlca
    nop
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    ld b, e
    cp a
    ret nz

    nop
    ccf
    push hl
    rra
    ld h, e
    sbc a
    scf
    rst $08
    ld c, e
    nop
    rst $30
    db $e4
    ei
    di
    db $fd
    cp $ff
    call nz, $fb00
    ld h, d
    db $fd
    ld [hl-], a
    db $fd
    add hl, de
    cp $0c
    nop
    rst $38
    add $3f
    inc hl
    rst JumpTable
    ld bc, $fbff
    nop
    and h
    rst $38
    ldh [$f5], a
    and d
    rst $30
    add sp, -$21
    db $10
    cp a
    ld a, a
    call nz, Call_030_7f22
    nop
    cp a
    dec b
    nop
    cp a
    ld b, a
    rst $30
    dec c
    ld e, a
    add a
    ei
    db $fd

jr_030_530d:
    jr nz, jr_030_530d

    sub e
    ld [hl+], a
    cp $00
    ldh a, [$a0]
    ld a, b
    ld bc, $ffd0
    rst $28
    rst $38
    db $10
    rrca
    rst $38
    jr nz, jr_030_5340

    cp $01
    inc hl
    ld a, b
    cpl
    ldh a, [$5f]
    rst $38
    ld [$ffbf], sp
    ld b, b
    nop
    rst $08
    ldh [$c0], a
    cp a
    inc b
    ldh a, [$9f]
    rst $28
    sbc b
    ldh [rNR42], a
    ret c

    ldh [rP1], a
    ld l, a
    ldh a, [$1f]
    rst $38
    rlca

jr_030_5340:
    inc bc
    db $fd
    rrca
    ld [$f7f9], sp
    add hl, de
    rlca
    ld hl, $071b
    or $00

jr_030_534d:
    rrca
    ld hl, sp-$01
    nop
    rst $38
    ld a, a
    add b
    rst $38
    ldh [rNR51], a
    ld h, e
    add b
    and b
    rst $38
    cp a
    rst JumpTable
    adc h
    db $10
    ld [c], a
    db $dd
    ld [c], a
    dec h
    db $d3
    add sp, -$09
    add sp, $00
    cp a
    ld a, a
    dec b
    rst $38
    db $fd
    ei
    ret


    daa
    jr nz, jr_030_534d

    daa
    dec h
    inc sp
    adc a
    ld [hl], a
    adc a
    db $fd
    nop
    cp $ff
    ld a, a
    ret nz

    cp a
    and b
    rst JumpTable
    sub b
    inc b
    rst $28
    adc b
    rst $30
    add a
    ld hl, sp+$61
    rst $38
    cp $00
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $28
    ld h, h
    rst $28
    ld [hl+], a
    ld bc, $ff13
    nop
    ld hl, $609f
    db $ec
    ld h, l
    ld hl, $ff40
    xor c
    ld hl, $e01f
    ret


    rrca
    ld a, [bc]
    ccf
    db $fd
    ld [bc], a
    rst $38
    cpl
    sub b
    ld h, c

jr_030_53b1:
    add hl, bc
    dec a
    add d
    ccf
    add b
    ld hl, $8837
    inc hl
    sbc h
    ld sp, $817e
    ld h, e
    and l
    inc hl
    db $db
    inc h
    add b
    ld bc, $000e
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $006c
    ld [bc], a
    ld a, c
    inc b
    ld [hl], e
    ld [$1067], sp
    ld l, a
    add b
    ld l, $ff
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    nop
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $ff41

    dec a
    add c
    jr nz, jr_030_53b1

    add c
    rst $38
    jr nz, jr_030_53f2

jr_030_53f2:
    ld a, a
    rst $38
    db $db
    inc a
    pop de
    inc a
    rst JumpTable
    ccf
    sub l
    ld hl, $7f9f
    ld hl, $513f
    cp a
    ld b, a
    nop
    sbc a
    ld a, h
    adc $3c
    call z, $ce1f
    rra
    ld de, $1fcf
    db $ec
    inc hl
    inc a
    sbc e
    ld a, h
    scf
    nop
    dec a
    rst $38
    daa
    db $fd

jr_030_541a:
    ld [hl], a
    db $ed
    rst $30
    db $ed
    ld d, e
    push hl
    daa
    rst $38
    dec l
    rst $38
    nop
    ld hl, $c940
    ld b, [hl]
    jr nz, jr_030_541a

    db $10
    ld hl, $1cc7
    and c
    ld [hl+], a
    call nz, $a71f
    add a
    inc e
    rlca
    ld b, c
    inc d
    ld bc, $0bef
    db $f4
    ld a, [c]
    ld hl, sp-$14
    db $10
    ld hl, $3f00
    add b

jr_030_5445:
    rra
    ld b, b
    add b
    jr nz, jr_030_541a

    rra
    ld b, b
    ret z

    ccf
    rra
    push bc
    ld e, $c6

jr_030_5452:
    dec e
    rst $00
    inc de
    jr c, @+$01

    nop
    pop hl
    nop
    ld bc, $a924
    jr z, jr_030_5452

    inc c
    adc a
    ret nz

    inc h
    ccf
    ret nz

    ccf
    inc b
    add b
    scf
    adc b
    ld a, $81
    ld hl, $8936
    db $e4
    add hl, hl
    ld hl, $bd35
    ld b, d
    rra
    inc c
    db $db
    inc h
    rst $08
    ld bc, $310e
    ld a, [hl]
    add c
    ld h, e
    and l
    inc hl
    ld hl, $7f00
    add b
    ld h, b
    sbc a
    ld b, e
    cp h
    ld b, d
    cp l
    add b
    ld hl, $a05f
    ld d, d
    xor l
    rst $28
    db $10
    ret c

    nop
    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    cpl
    and h
    jr nz, jr_030_54fb

    and b
    jr nc, jr_030_5502

    jr nc, @+$01

    jr c, @+$01

    adc c
    jr nz, jr_030_5445

    rst $20
    add e
    ld b, l
    db $dd
    db $e3
    inc hl
    nop
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    ld a, a
    xor h
    ld h, a
    ld b, b
    add hl, hl
    ret nz

    ld d, [hl]
    ret nz

    ld c, $ff
    ld [bc], a
    call nz, $f73f
    inc c
    db $fd
    cp $e1
    ld h, l
    ld bc, $02fe
    rst $38
    ld sp, $00ef
    rst $38
    ld hl, $40a4
    nop
    ld h, l
    cp $01
    inc hl
    dec [hl]
    rst $28
    jr nz, jr_030_5516

    db $ed
    ld bc, $b70c
    ld l, l

jr_030_54e4:
    ld h, a
    xor l
    rst $20
    nop
    call $0d87
    rrca
    push af
    rst $38
    db $fd
    db $fd
    ld b, b
    inc bc
    ccf
    add b
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    dec b
    ccf

jr_030_54fb:
    ldh a, [$38]
    rst $28
    scf
    ld hl, $3fee

jr_030_5502:
    ld b, b
    nop
    ld b, b
    inc bc
    nop
    rlca
    nop
    ld c, $00
    nop
    inc e
    nop
    jr jr_030_5510

jr_030_5510:
    jr nc, jr_030_5512

jr_030_5512:
    rra
    nop
    ld b, l
    rst $38

jr_030_5516:
    add c
    ld a, a
    nop
    inc a
    sub c
    ld hl, sp-$31
    ld b, $07
    nop
    inc bc
    nop
    ld bc, $6041
    ret nz

    ld a, [bc]
    nop
    ldh [rP1], a
    ldh a, [$59]
    db $fc
    ld b, c
    jp $c180


    ld h, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop
    inc e
    adc d
    add l
    add hl, de
    nop
    ld bc, $0901
    ret nz

    ld b, c
    add b
    rst $00
    pop bc
    ld l, e
    rlca
    nop
    inc bc
    ld bc, $2b09
    ld hl, $ff12
    rst $38
    add b
    ld b, c
    sbc a
    ldh [$a1], a
    sbc [hl]
    inc a
    ldh [rP1], a
    ld sp, $64c1
    jr nz, jr_030_54e4

    ld hl, sp-$80
    ld h, c
    adc b
    rst $30
    adc a
    rst $38
    sbc a
    rst $38
    cp a
    adc h
    ld l, $7f
    rst $28
    rra
    ld h, c
    ld [hl+], a
    rst $30
    rst $38
    db $10
    ei
    rst $38
    db $fd
    cpl
    cp $ff
    nop
    sbc e
    nop
    ld h, h
    rrca
    sub b
    dec c
    ld a, [c]
    ret z

    dec b
    ld a, b
    inc b
    add a
    db $fc
    nop
    rst $20
    jr jr_030_55bb

    add e
    rst $38
    nop
    add l
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    and c
    rst $38

Jump_030_5594:
    ld [hl], b
    pop bc

jr_030_5596:
    inc l
    ld b, b
    rrca
    ld e, $71
    nop
    inc sp
    nop
    nop
    ld [hl], e
    nop
    pop af
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld bc, $00e7
    jp $9800


    nop
    sbc c
    add c
    dec b
    inc a
    nop
    ld a, [hl]
    nop
    rst $38
    ld b, c
    pop hl
    add c
    nop
    pop bc

jr_030_55bb:
    nop
    inc bc
    nop
    rlca
    nop

jr_030_55c0:
    ld hl, sp+$00
    rlca
    ldh a, [rP1]
    ld a, [c]
    nop
    ld [c], a
    ld c, l
    dec hl
    ld a, e
    rlca
    ccf
    nop
    rrca
    nop
    ld c, $4b
    dec h
    add hl, hl
    inc b
    jr nc, jr_030_55d7

jr_030_55d7:
    ld h, b
    nop
    ld a, a
    ld b, a
    ld bc, $ae00
    jr nz, jr_030_55c0

    sbc e
    inc bc
    ld b, l
    ld hl, $f82b
    add sp, $57
    ld l, c
    ld hl, $5bef
    rrca
    nop
    ld a, $0e
    nop
    cp $00
    db $fc
    ld b, e
    ld [hl], c
    jr nz, jr_030_5596

    ld b, d
    ldh [rSB], a
    ld c, $fb
    inc b
    rst JumpTable
    jr nz, jr_030_5638

    db $fd
    inc b
    ld [bc], a
    rst $28
    db $10
    cp e
    ld b, h
    daa
    cp $01
    ld b, b
    nop
    nop
    rrca
    rst $38
    rst $38
    add e
    rst $38
    add l
    rst $38
    ld bc, $ff89
    sub c
    rst $38
    and c
    rst $38
    pop bc
    inc l
    ldh [rLCDC], a
    rrca
    ld a, $c0
    add b
    ldh [$c0], a
    cp a
    rst $38
    sbc l
    ld [c], a
    sbc l
    ld [c], a
    db $ed
    ld a, [c]
    ldh a, [$9f]
    rst JumpTable
    rst $38
    nop
    rst $38
    ld bc, $0181
    cp l

jr_030_5638:
    dec e
    and c
    dec e
    and c
    dec e
    and c
    ld bc, $7f81
    rst $38
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    rlca
    dec b
    dec a
    ld a, $44
    ld a, a
    ld d, [hl]
    ld e, e
    ld [hl], a
    ld a, b
    ld h, a
    ld a, b
    ld [hl+], a
    dec a
    jr nz, jr_030_5699

    db $10
    rra
    ld [$070f], sp
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    jr jr_030_56a4

    scf
    ccf
    scf
    ld e, e
    ld [hl], a
    ld d, a
    ld a, b
    ld l, b
    ld e, a
    ld [hl], a
    ld c, a
    ld d, c

jr_030_5675:
    ld l, [hl]
    ld l, e
    ld [hl], h
    ld h, $39
    jr nc, jr_030_56bb

    cpl
    ccf
    db $10
    rra
    rrca
    rrca
    nop
    inc bc
    inc bc
    rlca
    inc b
    ld c, $09
    dec e
    dec de
    nop
    dec l
    dec sp
    cpl
    add hl, sp
    ld c, e
    ld a, h
    ld b, l
    ld a, [hl]
    nop
    ld h, e
    ld a, a
    ld h, e
    ld a, h

jr_030_5699:
    ld d, c
    ld a, [hl]
    ld e, h
    ld l, a
    nop

jr_030_569e:
    ccf
    inc hl
    cpl
    jr nc, jr_030_56be

    inc e

jr_030_56a4:
    rlca
    rlca
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_030_5675

    call c, $00ec
    jp c, $faee

    adc $e9
    rra
    pop de
    ccf
    nop
    pop hl
    rst $38

jr_030_56bb:
    db $e3
    rra
    push bc

jr_030_56be:
    ccf
    dec e
    ei
    nop
    cp $e2
    ld a, [$ec06]
    inc e
    ldh a, [$f0]
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    ld c, $09
    nop
    db $eb
    db $ec
    ld sp, hl
    sbc [hl]
    cp l
    jp z, $e89f

    nop
    ld c, e
    ld a, h
    add hl, hl
    ld a, $7d
    ld a, e
    rst $38
    sbc d
    nop
    cp e
    adc $5b
    ld l, [hl]
    scf
    ld a, $01
    rlca
    nop
    nop
    nop
    add b
    add b
    adc $4e
    cp $32
    nop
    cp d
    ld h, [hl]
    ld [hl-], a
    xor $34
    db $ec
    daa
    rst $38
    nop
    dec l
    ei
    cp l
    di
    ld a, [$b266]
    ld l, [hl]
    add b
    dec hl
    inc h
    db $fc
    ld a, b
    ld hl, sp-$40
    ldh a, [$7f]
    inc bc
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    sbc a
    pop bc
    add hl, hl
    adc e
    jr nz, jr_030_569e

    rst $38
    sbc [hl]
    ld hl, $81f3
    ld c, e
    sub e
    ld l, a
    and b
    ldh [$a1], a
    cp a
    rst $38
    ld hl, $2071
    push de
    or a
    ld hl, $b7d4
    rst JumpTable
    cp a
    ret nz

    add b
    ld l, $ff
    ld l, a
    rst $38
    rst $30
    sbc b
    rst $28
    sub b
    nop
    xor a
    ret nc

    rst $20
    ld hl, sp+$47
    ei
    adc [hl]
    rst $30
    nop
    sbc l
    xor $d6
    rst $28
    ld a, a
    rst $20
    cp a
    di
    ld [hl+], a
    rst $38
    cp c
    ld b, c
    sbc a
    rst $38
    ret nz

    ccf
    or $00
    rst $38
    rst $28
    add hl, de
    rst $30
    add hl, bc
    push af
    dec bc
    rst $20
    nop
    rra
    ld [c], a
    rst JumpTable
    ld [hl], c
    rst $28
    cp c
    ld [hl], a
    ld l, e
    ld bc, $fef7
    rst $20
    db $fd
    rst $08
    rst $38
    sbc l
    ld b, c
    db $10
    ld sp, hl
    rst $38
    inc bc
    ccf
    rra
    rra
    dec h
    ld a, $00
    ld c, a
    ld [hl], a
    ei
    db $ec
    sub a
    ld hl, sp-$49
    ret c

    add b
    ld hl, $dcb3
    or c
    cp $d8
    rst $28
    sbc a
    nop
    rst $20
    adc a
    pop af
    add c
    rst $38
    ld b, c
    ld a, a
    ld hl, $3f40
    dec a
    ld hl, sp-$08
    call nz, $f23c
    xor $02
    reti


    scf
    rst $28
    rra
    db $ed
    dec de
    ld hl, $00cd
    dec sp
    adc l
    ld a, e
    add hl, de
    rst $38
    db $fd
    rst $20
    di
    ld bc, $010f
    rst $38
    ld [bc], a
    cp $84
    db $fc
    dec a
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1f00], sp
    db $10
    ccf
    jr nz, jr_030_584b

    ld b, b
    ld e, a
    ld h, b
    ld [$714e], sp
    ld b, h
    ld a, e
    and c
    inc h
    dec sp
    jr jr_030_57e9

    rra
    rlca
    rlca
    ccf
    ldh [$e0], a
    sub b
    ld [hl], b
    nop
    adc b
    ld a, b
    add h
    ld a, h
    add d
    ld a, [hl]
    add e

jr_030_57e9:
    ld a, l
    ld [bc], a
    ld b, a
    cp e
    cpl
    rst $10
    rra
    rst $28
    and c
    ld e, $00
    xor $0c
    db $fc
    ldh a, [$f0]
    jr c, jr_030_5833

    ccf
    nop
    daa
    dec d
    ld e, $0b
    rrca
    dec sp
    ccf
    ld l, e
    nop
    ld e, [hl]
    ld c, c
    ld a, a
    cp $ff
    cp $83
    cp e
    nop
    rst $38
    cp e
    cp $ba
    rst $38
    sub e
    rst $38
    rst $00
    db $10
    rst $38
    cp b
    rst $38
    jr nz, jr_030_582b

    ld c, $fe
    ld a, [c]
    nop
    sub h
    ld a, h
    ld l, b
    ld hl, sp-$12
    cp $ed
    cp e
    nop
    ret


jr_030_582b:
    rst $38
    adc c
    rst $38
    sbc a
    rst $38
    db $fd
    ei
    nop

jr_030_5833:
    sbc c
    ld a, a
    ccf
    rst $38
    db $dd
    rst $20
    db $fd
    rst $38
    ld b, h
    inc bc
    ld [hl+], a
    rst $38
    nop
    nop
    inc hl
    rst $38
    add b
    add d
    ld b, c
    rst $38
    ld d, b
    ld [hl], b
    ld d, [hl]

jr_030_584a:
    db $76

jr_030_584b:
    inc hl
    ld d, l
    ld d, c
    ld [hl], l
    inc hl
    rst JumpTable
    ld [hl], c
    rst $38
    dec b
    ld b, $21
    jr z, @+$05

    inc bc
    sbc a
    ld bc, $ff41
    ld a, [bc]
    ld c, $28
    xor d
    xor [hl]
    and e
    ei
    ld [hl], c
    rst $38
    and b
    ld h, b
    add d
    ld hl, $c0c0
    ldh [$80], a
    ret nz

    ld b, c
    rst $08
    ld bc, $f880
    add a
    ldh [$9f], a
    ret nz

    cp a
    ld hl, $0000
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    nop
    dec e
    rra
    ld a, a
    ld [hl], a
    rst $30
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rlca
    call Call_030_5acb
    sub $f4
    db $ec
    ld a, [bc]
    db $fc
    cp h
    or [hl]
    adc $2e
    ld a, a
    ld [hl+], a
    rst $38
    nop
    add e
    rst $38
    add l
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    jr jr_030_584a

    rst $38
    pop bc
    ld c, l
    rrca
    ld de, $9ee1
    sub d
    nop
    call z, $a88c
    ret z

    ld e, h
    add sp, -$52
    ld a, b
    nop
    xor $38
    xor $f9
    rst $38
    add a
    ld a, c
    ld c, c
    nop
    inc sp
    ld sp, $1315
    ld a, [hl-]
    rla
    ld [hl], l
    ld e, $00
    ld [hl], a
    inc e
    ld [hl], a
    sbc a
    nop
    nop
    rrca
    rra
    nop
    scf
    jr c, @+$61

    ld h, b
    ld a, a
    call c, $debf
    nop
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    ret nz

    ccf
    db $10
    rrca
    ld bc, $0080
    ldh [$1f], a
    add b
    ld h, b
    adc a
    add c
    nop
    inc bc
    db $fc
    ld [$01f0], sp
    nop
    rlca
    ld hl, sp+$60
    inc b
    jr z, @-$7d

    ld h, b
    rst $38
    ld d, e
    rst JumpTable
    halt
    call c, $ee59
    add hl, hl
    ei
    inc de
    pop af
    dec h
    nop
    ld h, e
    ld a, [hl-]
    rst $20
    ld a, h
    rst $38
    and [hl]
    jp $005b


    daa
    db $fd
    ld a, a
    adc c
    rst $38
    ld h, $f6
    ld [hl], b
    nop
    reti


    ld d, b
    rst $38
    rrca
    rra
    ld [hl-], a
    ld a, l
    ld b, h
    nop
    ei
    adc c
    or $93
    db $ec
    rst $20
    ret c

    cp $00
    pop af
    rst $38
    rst $38
    ldh a, [$f8]
    ld l, h
    sbc [hl]
    xor $00
    rra
    reti


    ccf
    or c
    ld a, a
    ld h, e
    rst $38
    rst $08
    add b
    ld l, $ff
    ld l, a
    rst $38
    or [hl]
    sbc b
    jp hl


    sub b
    nop
    xor c
    ret nc

    db $ec
    di
    ld e, e
    rst $20
    cp [hl]
    call z, $ac00
    sbc b
    or $ff
    db $ed
    add hl, de
    rst $30
    add hl, bc
    nop
    push af
    dec bc
    scf
    rst $08
    jp c, Jump_030_7de7

    inc sp
    ld [bc], a
    dec [hl]
    add hl, de
    ret nz

    cp h
    jp $21bb


    pop bc
    db $10
    cp c
    pop bc
    cp l
    ld hl, $dce0
    rst $38
    rst $38
    nop
    rst $28
    sbc h
    db $ec
    sbc a
    sbc a
    rst $38
    ei
    rst $38
    nop
    ld a, l
    ld a, a
    ld a, $3f
    ld bc, $0001
    nop
    ld h, b
    ld a, a
    ld [hl-], a
    ld b, b
    cp $ff
    ld sp, hl
    rst $38
    ld [bc], a

jr_030_5992:
    jr jr_030_5992

    db $fc
    db $fc
    cpl
    dec hl
    add e
    rst $38
    add l
    nop
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    and c
    rst $38
    pop bc
    ret nz

    sbc e
    rrca
    ld c, $9c
    sbc e
    or l
    rst $08
    sbc [hl]
    and $08
    rst $08
    db $f4
    dec h
    cp $21
    rra
    cp $83
    nop
    ld a, a
    add hl, sp
    reti


    xor l
    di
    ld a, c
    ld h, a
    di
    db $10
    cpl
    and h
    ld a, a
    ld hl, $7ff8
    pop bc
    cp $00
    cp a
    ret nz

    sub a
    ld a, [$726f]
    cpl
    jr nc, jr_030_59d3

jr_030_59d3:
    rrca
    ld de, $1f1f
    inc c
    ld e, $00
    nop
    jr nz, @-$6f

    ld h, b
    and c
    rst $08
    ld h, b
    ld l, a
    ldh [$7f], a
    adc b
    ld hl, $fcff
    inc bc
    and c
    db $fd
    inc bc
    rst $38
    add b
    ld h, c
    rst $38
    ld h, $ff
    ld [hl+], a
    rst $20
    ld c, d
    rst $20
    nop
    ld d, d
    rst $08
    ld h, [hl]
    rst $38
    inc a
    cp l
    nop
    jp RST_00


    cp $78
    rst $38
    call z, $b687
    ei
    nop
    jp z, $0aff

    rst $38
    ld c, $ee
    nop
    pop af
    nop
    nop
    ld a, a
    rst $30
    ld hl, sp-$09
    rst $38
    rst $30
    cp $80
    ld b, e
    ld hl, sp+$77
    rst $38
    scf
    ld a, b
    ld c, $1f
    ld d, b
    rst $28
    ld hl, $83ff
    ld a, a
    xor $ff
    db $ec
    nop
    ld e, $70
    ld hl, sp-$54
    ret c

    db $76
    db $ec
    or e
    db $10
    rst $38
    cp c
    cp a
    ld b, d
    sbc a
    ld [c], a
    ret nz

    rst $38
    nop
    rst $38
    dec [hl]
    dec de
    ld l, [hl]
    scf
    call $9dff
    ld b, l

jr_030_5a48:
    db $fd
    ld b, d
    ld sp, hl
    ld b, a
    inc bc
    cpl
    nop
    ld hl, $8000
    ccf
    add e
    ccf
    add d
    ccf
    cp [hl]
    ccf
    ld b, b
    and d
    add c
    rst $38
    ccf
    ld hl, $e1ff
    rst $38
    call nc, Call_030_4123
    pop hl
    inc hl
    ccf
    ld a, a
    jr nz, @-$3f

    xor h
    ld hl, $613f
    cp h
    ld hl, $014f
    ld a, h
    ld a, [bc]
    db $fd
    ld b, h
    push bc
    call nz, Call_030_4561
    ld hl, $0009
    nop
    ld a, a
    dec c
    ld a, a
    cpl
    ld a, a
    ccf
    rst $38
    adc b
    ld hl, $ffbf
    ld a, a
    jr nz, jr_030_5abd

    db $10
    or $00

jr_030_5a90:
    jr nc, jr_030_5a90

    db $e4
    db $fc
    db $fc
    db $fd
    db $fc

jr_030_5a97:
    rst $38
    jr jr_030_5a97

    rst $38
    cp $20
    rra
    add hl, bc
    add hl, sp
    ld sp, hl
    or b
    ld [$62f0], sp
    ld a, c
    ld h, h
    rra
    add hl, bc
    inc e
    rra
    ld c, l
    nop
    adc a
    ld b, $4e

jr_030_5ab0:
    ld h, $00
    nop
    ld bc, $0000
    ld h, d
    ld bc, $2354
    ld c, l
    ld [hl-], a
    ld d, [hl]

jr_030_5abd:
    add hl, hl
    nop
    ld c, d
    dec [hl]
    ld h, $19
    rra
    nop
    daa
    jr jr_030_5a48

    daa
    ld b, h
    dec sp

Call_030_5acb:
    ld a, h
    inc bc
    inc b
    inc bc
    inc bc
    ret nz

    inc a
    ld b, b
    add b
    nop
    ld b, [hl]
    add b
    ld a, [hl+]
    call nz, $b200
    ld c, h
    ld l, d
    sub h
    ld d, d
    xor h
    ld h, h
    sbc b
    nop
    ld hl, sp+$00
    db $e4
    jr @-$0c

    inc c
    and d
    ld e, h
    inc b
    ld a, $c0
    jr nz, jr_030_5ab0

    ret nz

    sbc a
    rst $38
    nop
    inc b
    rst JumpTable
    ccf
    cp a
    ld a, a
    rst $38
    ld h, c
    ld a, h
    rst $38
    ld b, b
    ld a, b
    ld l, a
    ei
    db $fc
    db $fd
    add [hl]
    rst JumpTable
    add d
    ld [bc], a
    xor a
    jp nz, $e297

    bit 6, d
    rra
    dec c
    ld a, a
    inc h
    rst JumpTable
    ld a, a
    rst JumpTable
    cp $ff
    pop bc
    ld a, $a2
    ld [bc], a
    ccf
    and e
    inc hl
    and e
    ccf
    cp a
    ld b, c
    add b
    ld b, d
    nop
    ld hl, $3fff
    ccf
    rst $38
    ret nz

    cp $32
    ld bc, $2100
    cpl
    cp h
    daa
    pop bc
    ccf
    ld c, c
    cp a
    ld a, a
    call nz, $e145
    db $fc
    db $fd
    ld a, a
    jr jr_030_5bbe

    ld a, a
    rst $38
    ld b, e
    ld b, l
    ld a, a
    ccf
    rra
    add e
    jr nz, @+$35

    inc bc
    cp $fe
    rst $38
    ld [hl+], a
    ld b, b
    and b
    ld b, l
    db $fc
    jr nz, jr_030_5b7a

    jr nz, jr_030_5bbc

    ld b, c
    ld [c], a
    nop
    ret z

    ld l, a
    ld b, b
    ld [hl], c
    ld h, h
    ldh a, [$60]
    jr c, @+$12

    db $10
    rra
    inc e
    ccf
    ld a, $02
    cpl
    add d
    nop
    add $12
    ld h, $02
    sbc a
    ld [bc], a

jr_030_5b71:
    cp $04
    jr nz, jr_030_5b71

    call c, Call_030_7e3f
    rst $38
    db $fc

jr_030_5b7a:
    rst $38
    jp $6700


    ld a, b
    ret nz

    ld e, a
    ldh [$ca], a
    ld a, l
    ld a, a
    nop
    scf
    inc sp
    nop
    ld h, h
    cp [hl]
    ld [hl], $df
    sbc a
    nop
    xor $75
    cp $0e
    rra
    cp [hl]
    ld b, e
    db $fc
    ld b, $fe
    jr c, @+$06

    rst $38
    nop
    ld bc, $0e0e
    rrca
    rst $38
    nop
    ei
    ld [hl], b
    db $f4
    ld a, b
    pop af
    ld a, [hl]
    db $fc
    ld a, a
    nop
    db $eb
    ld b, a
    pop bc
    ld b, b
    ret nz

    ld b, b
    rst $38
    rst $38
    nop
    rst $20
    ld a, [hl-]
    di
    ld e, $3b
    ld c, $4f

jr_030_5bbc:
    add [hl]
    nop

jr_030_5bbe:
    sub a
    ld [c], a
    ld [hl], e
    cp $2f
    ld e, $ff
    cp $00
    call $db7e
    ld a, h
    rst $30
    ld a, b
    rst $28
    ld [hl], b
    ld [bc], a
    db $dd
    ld h, e
    or $4f
    ret c

    ld a, h
    ccf
    rst $38
    db $10
    ld a, [hl]
    rst $38
    ld a, $21
    ld h, e
    ld a, [c]
    add e
    jp nz, $0338

    ld [bc], a
    ld hl, $082e
    rst $10
    jr c, @+$3a

    rst $38
    nop
    ret nz

    db $db
    inc a
    rst $10
    ld [bc], a
    jr c, jr_030_5c1b

    rst $38
    rst $30
    rst $38
    db $ed
    dec bc
    ld [$2abb], sp
    rst $38
    sbc c
    dec b
    ld [$0577], sp
    ld [$0fb5], sp
    jr c, @-$23

    ld b, b
    inc a
    rrca
    ld h, b
    rst $38
    rst $38
    ccf
    add b
    ccf
    add b
    jr c, jr_030_5c33

    sbc [hl]
    ld bc, $0b20
    db $10
    dec c
    ld d, b
    nop
    add b

jr_030_5c1b:
    nop
    inc b
    rst $38
    rst $38
    nop
    jp $013c


    jr nz, @+$01

    nop
    add b
    nop
    ld [$05ff], sp
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    nop
    xor d
    nop

jr_030_5c33:
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    inc b
    ld a, a
    nop
    ld b, b
    nop
    xor b

jr_030_5c3f:
    rrca
    jr jr_030_5c3f

    nop
    ld b, b
    cp $0f
    ld [$00fe], sp
    dec c
    rrca
    jr c, @+$14

    nop
    ld [hl], b
    daa
    ld [hl], c
    ld c, b
    ld c, b
    ld [hl], b
    ldh [$f0], a
    nop
    pop bc
    sub b
    or [hl]
    sub b
    ldh a, [$f0]
    inc e
    ld [$2e00], sp
    inc b
    ld h, d
    sbc [hl]
    adc d
    ld b, [hl]
    ld c, $4e
    nop
    add c
    ld [hl], d
    ld bc, $f861
    sub b
    ld hl, sp-$60
    nop
    ld a, a
    pop hl
    ld a, a
    or c
    sbc a
    ld a, a
    sub d
    ld l, l
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    add hl, bc
    rra
    dec b
    nop
    ld c, a
    ld b, $ff
    adc h
    ld sp, hl
    cp $49
    or [hl]
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    nop
    pop af
    ldh [rP1], a
    dec a
    add hl, de
    rrca
    dec b
    adc a
    ld b, $8f
    add hl, bc
    nop
    adc e
    add hl, bc
    rra
    inc de
    ei
    ld a, h
    call $0286
    add a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $1000
    jp $c102


    ret nz

    ccf
    db $10
    rrca
    add b
    scf
    ld [$1080], sp
    ld h, b
    add d
    ld l, l
    ld bc, $6108
    inc bc
    db $fc
    ld [$f021], sp
    ld bc, $0837
    inc b
    inc bc
    ld c, h
    or e
    ld bc, $4008
    add e
    dec d
    db $10
    add [hl]
    ld h, c
    add d
    ld l, l
    jp nz, $026d

jr_030_5cdb:
    ld h, d
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    dec d
    jr nz, jr_030_5d30

    ld bc, $4db3
    or e
    ld c, a
    inc bc
    rst $38
    inc bc
    ldh a, [$08]
    nop
    nop
    sbc e
    ld h, h
    rrca
    sub b
    dec c
    ld a, [c]
    ret z

    nop
    dec b
    ld a, b
    add a
    db $fc
    nop
    rst $20
    jr @+$01

    add sp, -$4b
    ld [$193a], sp
    rlca
    jr nc, jr_030_5d3b

    ld bc, $fa60
    nop
    push de
    adc d
    db $dd
    ld [$0055], sp
    and b
    jp hl


    ld [$1000], sp
    add hl, bc
    cp a
    ld [hl+], a
    nop
    ld d, a
    rrca
    jr @+$04

    nop
    ld bc, $080f
    ld bc, $0002
    add c
    ld a, [hl]
    nop
    add c
    ld a, $01
    jr c, @-$7d

    nop
    ld a, [hl]

jr_030_5d30:
    db $f4
    sbc b
    reti


    or b
    sbc d
    ldh a, [$9f]
    nop
    ldh a, [rVBK]
    ld a, b

jr_030_5d3b:
    ld h, h
    rst $38
    ld a, h
    rst $38
    ld e, a
    nop
    ccf
    ld [hl], l
    ld hl, $31eb
    sbc l
    ld [hl], e
    sbc a
    nop
    ld [hl], d
    inc de
    rst $38
    ld h, $ff
    dec a
    cp $fc
    nop
    cp $d0
    jr nz, jr_030_5cdb

    ld b, b
    nop
    adc l
    add b
    nop
    add b
    sub b
    adc d
    sub e
    sbc e
    add b
    add b
    rst $38
    nop
    rst $38
    dec bc
    inc b
    ld hl, $e042
    and c
    ld bc, $0100
    add hl, hl
    ld b, c
    add hl, bc
    add hl, hl
    ld bc, $ff01
    nop
    rst $38
    rra
    rra
    daa
    ld [hl+], a
    rst JumpTable
    sbc $73
    nop
    inc hl
    di
    ld [c], a
    dec sp
    ld [hl-], a
    ld a, a
    ld a, d
    ld [hl], e
    nop
    ld [hl], d
    ld b, d
    ld b, e
    ld b, [hl]
    ld b, e
    add h
    add a
    ld b, $20
    dec b
    and [hl]
    ld bc, $e608
    dec b
    db $f4
    rlca
    jp $bd08


    ld h, [hl]
    db $db
    inc a
    or [hl]
    ld [$df30], sp
    ld h, b
    nop
    cp a
    ret nz

    ld a, a
    add c
    cp $c4
    cp c
    ld a, c
    nop
    jp nz, $e423

    ld h, a
    sbc b
    rst $08
    db $10
    sbc a
    nop
    jr nz, jr_030_5df9

    ld b, b
    ld a, [hl]
    add b
    cp l
    nop
    jp nc, RST_00

    and l
    nop
    ld e, d
    nop
    or l
    nop
    ld l, d
    add b
    or c
    ld [$0080], sp
    inc a
    add c
    sbc c
    ld b, d
    jp $2410


    rst $20
    jr jr_030_5df7

    jr nc, @+$01

    rst $38
    add e
    rst $38
    nop
    add l
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    and c
    rst $38
    ld b, b
    pop bc
    ldh a, [rNR23]
    ld bc, $3d03
    add hl, de
    ld a, a
    dec a
    nop
    rst $28
    ld l, l
    db $fd
    ld a, e
    ei
    rst $20

jr_030_5df7:
    dec d
    dec de

jr_030_5df9:
    adc [hl]
    dec b
    add hl, bc
    rra
    rst $38
    db $10
    ld bc, $1748
    ld de, $0801
    ldh [rNR23], a
    rra
    rst $28
    db $10
    ld bc, $3f10
    add b
    cp a
    ret nz

    ldh [$09], a
    add b
    adc b
    ret nz

    add c
    dec b
    ld [$e09f], sp
    rrca
    stop
    sub c
    rst $28
    and l
    jp $81cb


    jp Jump_030_4981


    db $d3
    inc bc
    ld [$81c3], sp
    cpl
    ld [hl], b
    ret nz

    cp a
    ld bc, $0030
    call z, $c0b3
    cp a
    di
    adc h
    nop
    ld hl, sp+$22
    nop
    rst $20
    ld e, [hl]
    ld [$0199], sp
    db $db

jr_030_5e42:
    ld bc, $0108
    nop
    ld bc, $1379
    inc de
    inc sp
    inc de
    ld a, [c]
    ld [hl+], a
    nop
    and $e2
    inc h
    inc h
    db $ec
    jr z, jr_030_5e42

    add sp, $00
    ld a, $1c
    or $03
    ld a, [$fa03]
    sub e
    nop
    ei
    sub c
    db $fd
    sub c
    db $fd
    adc c
    rst $38
    ld c, c
    ld [bc], a
    rst $38
    dec h
    nop
    rst $38
    ld a, [hl]
    add c
    ld bc, $0030
    ld b, $81
    nop
    rst $38
    db $fc
    add c
    rst $38
    ld h, b
    and a
    ld de, $80a0
    rst $30
    ld [$00d0], sp
    xor c
    nop
    ld d, [hl]
    nop
    jp hl


    nop
    nop
    cp a
    ret nz

    ld l, a
    ldh a, [$b8]
    rst $38
    and a
    ld bc, $e0bf
    cp a
    cp a
    sbc a
    ldh [$c0], a
    sbc a
    db $10
    add b
    adc a
    ld h, b
    dec bc
    jp hl


    rst JumpTable
    jp hl


    push af
    ei
    jp hl


    inc b
    rst $38
    ld sp, hl
    rst $08
    db $d3
    ccf
    dec e
    db $10
    ldh a, [rNR10]
    ld a, $f0
    rra
    ld bc, $0720
    add hl, bc
    sbc b
    ld [$20f5], sp
    ld bc, $e010
    ret nz

    rrca
    jr @+$01

    add b
    ld sp, hl
    rlca
    dec b
    inc bc
    inc hl
    ld bc, $0900

jr_030_5eca:
    inc bc
    dec b
    inc bc
    ld sp, hl
    rlca
    rst $38
    rst $38
    jp nz, $10f9

    ei
    jr nz, @-$19

    add e
    and l
    db $db
    ld l, a
    add b
    rst $38
    nop
    ld a, a

Jump_030_5edf:
    rst JumpTable
    ldh [$b0], a
    rst $08
    and b
    rst JumpTable
    and b
    nop
    rst JumpTable
    ldh [$9f], a
    ldh [$9f], a
    ret nz

    cp a
    adc c
    nop
    ld [hl], l
    pop af
    inc bc
    dec bc
    rlca
    add l
    rst $38
    or e
    nop
    cpl
    db $fd
    rst $38
    db $eb
    sbc a
    rst $38
    cp $df
    nop
    rst $10
    dec [hl]
    push af
    cp [hl]
    ld h, l
    ld a, [hl+]
    db $eb
    jr nc, jr_030_5f0b

jr_030_5f0b:
    pop af
    pop bc
    ret nz

    add hl, bc
    nop
    rrca
    ld [$10ff], sp
    daa
    db $fc
    and a
    ld bc, $e708
    sbc [hl]
    di
    sbc [hl]
    nop
    di
    adc [hl]
    rst $38
    add b
    rst $38
    inc b
    nop
    jr nz, jr_030_5eca

    db $dd
    ld [$7b12], sp
    ld a, [bc]
    ld b, h
    nop
    db $10
    ld a, a
    ld a, [bc]
    rrca
    ld [hl], b
    nop
    ldh a, [rP1]
    ld [hl-], a
    nop
    ld [$0410], sp
    jr jr_030_5f3d

jr_030_5f3d:
    jr nz, jr_030_5f5e

jr_030_5f3f:
    add b
    ld a, a
    ld b, b
    ld sp, $211e
    nop
    nop
    ld hl, $4120
    ld a, $41
    add b
    ld a, a
    nop
    inc b
    ld hl, sp-$58
    db $10
    ld [$0010], a
    db $fc
    ld bc, $0006
    add hl, hl
    dec b
    rrca
    inc bc

jr_030_5f5e:
    nop
    dec [hl]
    ld [$0201], sp
    nop
    ld h, b
    nop
    or c
    ld b, b
    jr nz, jr_030_5f3f

    inc de
    add [hl]
    add hl, sp
    ld [$1828], sp
    jr c, jr_030_5f82

    rst JumpTable
    ld [de], a
    ld e, a
    ld de, $004d
    add d
    ld e, e
    add h
    ld [hl], a
    adc b
    ld l, [hl]
    sub c
    ld e, h
    nop
    and e

jr_030_5f82:
    jr c, @-$37

    nop
    rst $38
    ld a, a
    add b
    ld h, c
    nop
    sbc [hl]
    ld b, e
    cp h
    ld b, d
    cp l
    ld b, d
    cp l
    ld e, a
    nop
    and b
    ld d, d
    xor l
    rst $38
    nop
    cp l
    ld a, [hl]
    ld a, [hl]
    nop
    rst $38
    rst JumpTable
    db $e3
    cp l
    jp $c7b9


    sbc c
    nop
    rst $20
    adc c
    rst $30
    rst JumpTable
    ccf
    rst JumpTable
    ccf
    sbc a
    db $10
    ld a, a
    ccf
    rst $38
    ld bc, $df30
    ccf
    or b
    ld a, a
    nop
    db $ec
    ld [hl], e
    cp $61
    rst $38
    ld h, b
    ld hl, sp+$67
    nop
    or b
    ld a, a
    rst JumpTable
    ccf
    cp c
    rst $00
    db $d3
    rst $28
    ld b, b
    ld h, [hl]
    ld sp, hl
    ld a, [bc]
    dec a
    cp $66
    rst $38
    db $d3
    rst $28
    nop
    or c
    rst $08
    inc a
    nop
    add hl, de
    nop
    jp nz, $0001

    ld h, [hl]
    add c
    inc a
    jp $c7b8


    or b
    rst $08
    nop
    sub b
    rst $28
    ld b, b
    ccf
    jr nc, jr_030_5ffb

    sbc b
    rlca
    nop
    call z, $cf03
    nop
    sbc [hl]
    ld bc, $0f30
    nop
    daa
    rra
    sub c

jr_030_5ffb:
    rrca
    ld c, h
    inc bc
    ld c, $01

Jump_030_6000:
    nop
    adc [hl]
    ld bc, $8176
    ld a, d
    add c
    cp h
    jp $8010


    rst $38
    ldh [rNR34], a
    ld a, [bc]
    call nz, $0403
    inc bc
    nop
    inc c
    inc bc
    ld a, h
    inc bc
    ld h, b
    rra
    ld c, a
    ccf
    and b
    rst $38
    ldh a, [rP1]
    ld c, a
    ld [$0815], sp
    ld h, l
    jr jr_030_6027

jr_030_6027:
    ld [$84ff], sp
    ld bc, $1981
    ld [$8244], sp
    stop
    add d
    ld b, h
    add d
    nop
    rst $38
    ld h, a
    sbc b
    sub b
    nop
    ld [$0800], sp
    rrca
    nop
    pop af
    db $10
    ld [hl], c
    nop
    ld h, b
    nop
    nop
    inc c
    nop
    ld d, d
    ld [$0016], sp
    ld [de], a
    ld e, $0c
    nop
    nop
    ld b, d
    add b
    ret nz

    add b
    ld bc, $1819
    nop
    inc h
    db $10
    inc l
    inc b
    inc e
    add b
    scf
    ld [$8b74], sp
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    nop
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $00ef

    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    nop
    cpl
    and h
    ld e, e
    and b

Jump_030_6080:
    ld e, a
    and b
    ld e, a
    jp $ff00


    ld h, [hl]
    rst $38
    cp l
    ld a, [hl]
    db $db
    inc a
    sbc b
    jr nz, @+$81

    inc a
    add hl, bc
    ld [$e7db], sp
    sbc a
    ld a, a
    cp a
    ret c

    db $d3
    ld de, $1903
    ld b, b
    dec bc
    dec bc
    adc e
    ld b, l
    rra
    rst $38
    ret nz

    inc b
    ccf
    ldh [$1f], a
    db $fd
    cp $01
    jr nc, jr_030_6112

    cp $00
    ld [hl-], a
    rst $28
    ld sp, hl
    ld b, a
    add c
    rst $38
    jp $217e


    rst $28
    inc a
    ccf
    ld b, b
    pop af
    adc a
    ld [hl], e
    rst $08
    add hl, de
    inc d
    nop
    dec e
    cp $26
    rst $38
    ld [hl], e
    rst $08
    ld sp, hl
    add a
    nop
    add c
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], a
    adc $7b
    add $00
    ld e, e
    and $65
    cp $7b
    db $fc
    sbc $e1
    nop
    add e
    cp $cf
    db $fc
    ld [hl], a
    ld hl, sp+$33
    db $fc
    nop
    ld e, b
    rst $38
    adc h
    rst $38
    add $bf
    db $e3
    rra
    nop
    ld [bc], a
    nop
    daa
    nop
    add e
    inc b
    inc bc
    inc b
    nop
    rst $30
    ld [$200c], sp
    ld a, [de]
    jr nz, jr_030_6118

    ret nz

    ld b, b
    ld [$08f3], sp
    db $e4
    nop
    ld d, b
    nop
    call nz, RST_00
    jp nz, Jump_030_6000

    sbc b
    jr nz, @-$3c

jr_030_6112:
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    ld b, b

jr_030_6118:
    adc b
    ld c, l
    add b
    ld h, [hl]
    add b
    inc b
    ld e, b
    and b
    dec h
    ret nz

    ld h, d
    pop bc
    dec c
    db $76
    adc c
    nop
    adc d
    ld bc, $038c
    ld h, h
    inc bc
    ld a, [hl-]
    ld bc, $2400
    inc bc
    ld [c], a
    ld bc, $08f7
    ld [$7200], sp
    jr @-$10

    inc d
    rrc d
    adc $12
    sub h
    inc sp
    ld bc, $7410
    jr nc, @-$4b

    or h
    rlca
    jr jr_030_614d

    db $10

jr_030_614d:
    inc d
    inc sp
    inc d
    di
    nop
    db $f4
    di
    inc b
    inc bc
    ld a, [$0501]
    ld hl, sp+$00
    ld [bc], a
    db $fc
    rst $38
    ld [bc], a
    add b
    ld [bc], a
    add d
    ccf
    nop
    sbc a
    ccf
    cp h
    ld hl, sp-$63
    ld [hl], $92
    scf
    nop
    sub l
    inc sp
    scf
    adc a
    ld a, [$aafd]
    ret c

    ld [$aa00], sp
    ld [hl+], a
    adc b
    ld bc, $ff20
    rst $38
    and l
    nop
    jp $99c3


    sbc c
    and l
    sbc c
    and l
    jp $02c4


    ld [$10f7], sp
    add b
    rst $38
    adc c
    add c

jr_030_6191:
    dec bc
    add h
    nop
    ld hl, $0092
    ld l, h
    inc c
    rst $38
    add c
    jp $10a5


    dec bc
    db $10

Call_030_61a0:
    adc c
    jp $03a1


    ld [$c381], sp
    rst $38
    jp $fe00


    call c, $f2af
    dec e
    pop hl
    ld e, c
    and c
    nop
    pop de
    ld hl, $b141
    ld l, d
    ld a, [c]
    sbc h
    db $ec
    nop
    sub h
    db $e4
    sub h
    db $e4
    or h
    call nz, $827a
    db $10
    push bc
    ld bc, $e083
    dec d
    nop
    cp $e3
    ei
    jr nz, jr_030_6191

    cp c
    ld bc, $8198
    pop bc
    dec a
    add c

jr_030_61d7:
    inc a
    nop
    pop bc
    ld [hl], a
    dec bc
    ld a, e
    nop
    rra
    nop
    ld c, l
    nop
    nop
    add a
    nop
    ld b, $48
    inc c
    jr nc, @+$10

    add b
    pop hl
    add hl, bc
    sub b
    ld b, d
    jr nz, jr_030_6235

    sub h
    ld [$a052], sp
    add hl, bc
    ld [$c728], sp
    add hl, bc
    ld d, d
    add b
    ld c, c
    add b
    ld e, d

jr_030_61ff:
    nop
    add b
    inc [hl]
    ret nz

    ld b, h
    add b
    ld c, e
    add h
    ld a, e
    nop
    add h
    nop
    rst $38
    ld c, d
    ld bc, $0192
    ld e, d
    nop
    ld bc, $032c
    ld [hl+], a
    ld bc, $21d2
    cp [hl]
    ld b, d
    ld b, c
    ld [c], a
    dec e
    inc b
    inc b
    rst $38
    inc b
    ld b, $08
    ld b, b
    sub l
    and l
    add hl, de
    res 7, a
    ld bc, $fb10
    rlca
    jr jr_030_61ff

    dec bc
    jr jr_030_6233

jr_030_6233:
    srl a

jr_030_6235:
    dec hl
    rst JumpTable
    dec de
    rst $28
    ei
    rst $38
    ld hl, $fb07
    ret z

    add hl, hl
    ret nz

    ldh [$bf], a
    ret nc

jr_030_6244:
    dec de
    ld [$cc60], sp
    dec e
    jr jr_030_6244

    jr jr_030_61d7

    dec l
    xor a
    ld e, b
    rst $38
    ld [bc], a
    adc l
    rst $38
    rst JumpTable
    rst $38
    ld [hl], a
    ld [hl], b
    rst JumpTable
    ld [hl], e
    inc bc
    and b
    sub c
    ld a, [bc]
    inc c
    ld c, l
    ld a, [bc]
    add hl, sp
    nop
    ld h, c
    nop
    add d
    jr nz, jr_030_6268

jr_030_6268:
    adc h
    ld h, e
    add hl, bc
    ld a, a
    add b
    ld b, b
    cp a
    ld e, a
    dec b
    and b
    ld e, e
    and h
    ld d, a
    xor b
    ld a, $0a
    and b
    xor a
    ld [hl], d
    ld b, b
    rst $38
    ld b, c
    ld c, $85
    ld a, d
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    inc c
    adc c
    db $76
    add c
    ld a, [hl]
    ld l, l
    rrca
    add hl, sp
    inc c
    rst $20
    and l
    ld [bc], a
    rst $38
    cp l
    db $db
    sbc c
    jp Jump_030_4f81


    ld hl, $09bf
    ret nz

    call z, $988c
    nop
    ld [$8ccc], sp
    ld e, l
    ld [de], a
    ret nz

    cp a
    ldh [$df], a
    rst $38
    cp a
    ld [c], a
    sbc l
    ld [c], a
    sbc l
    ld a, [c]
    db $ed
    sbc a
    ldh a, [rIE]
    rst JumpTable
    nop
    rst $38
    ld bc, $0181
    cp l
    dec e
    and c
    dec e
    and c
    dec e
    and c
    ld bc, $7f81
    rst $38
    add hl, de
    add hl, de
    ld h, $3f
    ld c, a
    ld [hl], a
    ei
    db $ed
    sub a
    ld a, [$dcb7]
    cp a
    jp c, $d9f7

    di
    inc a
    ret c

    ld l, a
    sbc a
    rst $20
    adc a
    pop af
    add c
    rst $38
    ld b, c
    ld a, a
    inc hl
    ld a, $1e
    inc e
    ld hl, sp-$08
    call nz, $f23c
    xor $d9
    scf
    rst $28
    sbc a
    db $ed
    ld e, e
    rst $38
    ld a, e
    xor $9c
    rst $28
    sbc d
    sbc c

jr_030_62f8:
    rst $38
    db $fd
    rst $20
    di
    rrca
    ld bc, $02ff
    cp $84
    db $fc
    ld hl, sp+$78
    nop
    inc bc
    inc bc
    rlca
    inc b
    ld c, $09
    dec e
    dec de
    nop
    dec l
    dec sp
    cpl
    add hl, sp
    ld c, e
    ld a, h
    ld b, l
    ld a, [hl]
    nop
    ld h, e
    ld a, a
    ld h, e
    ld a, h
    ld d, c
    ld a, [hl]
    ld e, h
    ld l, a
    nop

jr_030_6321:
    ccf
    inc hl
    cpl
    jr nc, jr_030_6341

    inc e
    rlca
    rlca
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    jr c, jr_030_62f8

    call c, $00ec
    jp c, $faee

    adc $e9
    rra
    pop de
    ccf
    nop
    pop hl
    rst $38
    db $e3
    rra
    push bc

jr_030_6341:
    ccf
    dec e
    ei
    nop
    cp $e2
    ld a, [$ec06]
    inc e
    ldh a, [$f0]
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $05
    ld c, $09
    nop
    db $eb
    db $ec
    ld sp, hl
    sbc [hl]
    cp l
    jp z, $e89f

    nop
    ld c, e
    ld a, h
    add hl, hl
    ld a, $7d
    ld a, e
    rst $38
    sbc d
    nop
    cp e
    adc $5b
    ld l, [hl]
    scf
    ld a, $01
    rlca
    nop
    nop
    nop
    add b
    add b
    adc $4e
    cp $32
    nop
    cp d
    ld h, [hl]
    ld [hl-], a
    xor $34
    db $ec
    daa
    rst $38
    nop
    dec l
    ei
    cp l
    di
    ld a, [$b266]
    ld l, [hl]
    add b
    dec hl
    inc h
    db $fc
    ld a, b
    ld hl, sp-$40
    ldh a, [$7f]
    inc bc
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    sbc a
    pop bc
    add hl, hl
    adc e
    jr nz, jr_030_6321

    rst $38
    sbc [hl]
    ld hl, $81f3
    ld c, e
    sub e
    ld l, a
    and b
    ldh [$a1], a
    cp a
    rst $38
    ld hl, $2071
    push de
    or a
    ld hl, $b7d4
    rst JumpTable
    cp a
    ret nz

    ret nz

    ld l, $2b
    jr z, @-$6c

    ld l, c
    xor d
    ld d, l
    inc h
    nop
    db $db
    and l
    ld e, d

jr_030_63c6:
    jp z, $4a35

    or l
    and e
    nop
    ld e, h
    sub $29
    ld b, h
    cp e
    xor c
    ld d, [hl]
    jp nc, $2c00

    ld b, h
    cp c
    ld b, [hl]
    cp c
    xor [hl]
    ld d, c
    and h
    nop
    ld e, e
    cp l
    ld b, d
    reti


    ld h, $50
    xor l
    ld [hl+], a
    nop
    ld e, c
    add l
    ld a, [hl-]
    xor h
    inc de
    ld l, c
    sub [hl]
    ld a, [hl+]
    ld b, b
    push de
    ccf
    ld h, $99
    ld b, h
    sbc e
    jr nc, jr_030_63c6

    inc h
    or c
    ld c, h
    add hl, hl
    call $3132
    rra
    rra
    nop

jr_030_6402:
    dec h
    ld a, $4f
    ld [hl], a
    ei
    db $ec
    sub a
    ld hl, sp+$20
    or a
    ret c

    ld hl, $dcb3
    or c
    cp $d8
    nop
    rst $28
    sbc a
    rst $20
    adc a
    pop af
    add c
    rst $38
    ld b, c
    db $10
    ld a, a
    ld hl, $3d3f
    ld hl, sp-$08
    call nz, $003c
    ld a, [c]
    xor $d9
    scf
    rst $28
    rra
    db $ed
    dec de
    add b
    ld hl, $3bcd
    adc l
    ld a, e
    add hl, de
    rst $38
    db $fd
    nop
    rst $20
    di
    rrca
    ld bc, $02ff
    cp $84
    ld b, b
    db $fc
    dec a
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    nop
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_030_64d0

    ld b, b
    ld [bc], a
    ld e, a
    ld h, b
    ld c, [hl]
    ld [hl], c
    ld b, h
    ld a, e
    and c
    inc h
    inc b
    dec sp
    jr jr_030_647e

    rlca
    rlca
    ccf
    ldh [$e0], a
    nop
    sub b
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add d
    ld a, [hl]
    nop
    add e
    ld a, l
    ld b, a
    cp e
    cpl
    rst $10
    rra
    rst $28
    add b
    and c
    ld e, $ee
    inc c
    db $fc
    ldh a, [$f0]

jr_030_647e:
    rst $38
    sub b
    jr nz, jr_030_6402

    add b
    ld b, h
    ldh a, [$7f]
    rst JumpTable
    db $76
    ld c, $df
    ld [hl], b
    rst JumpTable
    ld [hl], l
    inc hl
    ld [hl], c
    ld [hl+], a
    db $fc
    ld [de], a
    rlca
    db $fd
    ld b, $21
    rst $38
    inc bc
    ld c, l
    ld bc, $0140
    ld b, h
    rrca
    cp $fb
    ld l, [hl]
    ei
    ld c, $38
    ei
    xor [hl]
    inc hl
    ld [hl], c
    ld [hl+], a
    ccf
    ldh [$bf], a
    ld c, b
    ld h, b
    ld hl, $c0ff
    add hl, hl
    add e
    rst $38
    add l
    nop
    rst $38
    adc c
    rst $38
    sub c
    rst $38
    and c
    rst $38
    pop bc
    ret nz

    ld e, d
    rrca
    ld sp, $e03f
    ld b, b
    rst JumpTable

Call_030_64c6:
    adc a
    or c
    ld bc, $bc9e
    sub e
    or d
    sbc l
    or b
    sbc a

jr_030_64d0:
    add hl, hl
    nop
    rst $38
    db $fc
    rlca
    ld [bc], a
    ei
    pop af
    call $0239
    dec c
    ld sp, hl
    dec a
    ret


    adc l
    ld a, c
    add hl, hl
    rst $38
    inc b
    ld a, a
    rst $38
    add b
    cp a
    ret nc

    inc hl
    add b
    rst $38
    add c
    and a
    rst $38
    cp $ff
    ld bc, $0bfd
    inc hl
    ld [hl], b
    ld bc, $872f
    ld l, $d9
    db $e3
    cp c
    pop bc
    nop
    pop hl
    jp $ebd1


    cp b

Jump_030_6504:
    pop bc
    sub b
    pop hl
    nop
    xor h
    pop bc
    ld a, a
    ld a, a
    add h
    ei
    sbc c
    and $02
    and d
    db $dd
    and c
    sbc $98
    rst $20
    add hl, hl
    db $e3
    nop
    sbc h
    rla
    adc a
    ld hl, sp-$01
    inc c
    di
    ld b, $00
    ld sp, hl
    pop hl
    ld e, $10
    rst $28
    ld c, $f1
    add c
    nop
    ld a, [hl]
    ld hl, sp-$08
    ld b, $fe
    dec c
    di
    rlca
    add h
    cpl
    rra
    ld de, $0fef
    cpl
    ld a, a
    rst $38
    nop
    rst $38
    or b
    rst $08
    ldh [$9f], a
    ldh a, [$8f]
    cp a
    inc hl
    ret nz

    ret nz

    ld a, [hl+]
    ret nz

    rst JumpTable
    cp a
    inc h
    ld a, l
    add d
    add hl, sp
    db $fd
    inc bc
    rlca
    rst $38
    ei
    jr z, @+$01

    nop
    or e
    rst $38
    xor l
    di
    cp e
    push hl
    db $e3
    push hl
    dec d
    rst $20
    and h
    rst $38
    dec sp
    adc b
    ld [hl+], a
    db $fd
    ld b, c
    ld b, l
    daa
    ld a, [hl+]
    push hl
    and l
    rst $20
    ld c, c
    inc bc
    inc hl
    nop
    rrca
    rra
    ld [hl-], a
    ld a, l
    ld b, h
    ei
    adc c
    or $00
    sub e
    db $ec
    rst $20
    ret c

    cp $f1
    rst $38
    rst $38
    nop
    ldh a, [$f8]
    ld l, h
    sbc [hl]
    xor $1f
    reti


    ccf
    inc b
    or c
    ld a, a
    ld h, e
    rst $38
    rst $08
    ld l, $ff
    nop
    nop
    nop
    rrca
    rra
    scf
    jr c, jr_030_65f6

    ld h, a
    ld [hl], b
    ld c, b
    ld c, a
    ld h, c
    ld d, b
    ld l, a
    cpl
    ldh a, [$f8]
    db $ec
    inc b
    inc e
    ld a, [de]
    and $0e
    ld a, [c]
    ld h, c
    ld a, [bc]
    or $00
    ldh [$c0], a
    cp a
    ldh a, [$9f]
    rst $28
    sbc b
    ldh [$80], a
    ld hl, $e0d8
    ld l, a
    ldh a, [$1f]
    rst $38
    rlca
    ld bc, $fd03
    rrca
    ld sp, hl
    rst $30
    add hl, de
    rlca
    ld hl, $1b00
    rlca
    or $0f
    ld hl, sp-$01
    add b

jr_030_65d5:
    rst $38
    sub h
    ld [hl+], a
    cp a
    ret nc

    ld h, [hl]
    sub d
    ld b, c
    rst $38
    ld a, a
    ld b, [hl]
    ld bc, $0123
    db $fd
    dec bc
    inc hl
    ld h, $49
    add b
    ld b, c
    rst $38
    cp $b1
    call $c2ba
    jp nc, $e600

    call c, $91e2

jr_030_65f6:
    pop hl
    add e
    pop bc
    dec h
    nop
    sbc c
    ld e, d
    cp l
    ldh a, [$ef]
    adc b
    rst $30
    sub h
    nop
    ldh a, [$90]
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    rra
    nop
    ld a, a
    nop
    ccf
    ld b, b
    cp a
    jr nz, jr_030_65d5

    inc e
    ld b, b
    ld a, $2d
    ld hl, $3fff
    rst $38
    ret nz

    rst $38
    nop
    nop
    db $e3
    rrca
    rst $30
    ld de, $19ef
    rrca
    nop
    add hl, bc
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld hl, sp-$02
    nop
    nop
    db $fc
    db $fc
    and e
    ld hl, sp-$59
    cp d
    push hl
    nop
    cp [hl]
    pop hl
    or l
    ld_long $ff9f, a
    sbc a
    ldh [rP1], a
    cp a
    rst $38
    dec c
    rst $30
    dec e
    rst $20
    db $dd

jr_030_664a:
    daa
    jr nz, jr_030_664a

    rlca
    dec h
    ld sp, hl
    rst $38
    ld sp, hl
    rlca
    db $fd
    dec b
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    pop hl
    nop
    ld hl, $ff14
    rrca
    ld sp, hl
    and c
    rlca
    inc hl
    pop af
    rst $38
    nop
    ld bc, $03fd
    rst $30
    ld hl, sp-$09
    rst $38
    rst $30
    ld b, b
    cp $43
    ld hl, sp+$77
    rst $38
    scf
    ld a, b
    ld c, $28
    rra
    rst $28
    ld hl, $83ff
    ld a, a
    xor $ff
    nop
    db $ec
    ld e, $70
    ld hl, sp+$58

jr_030_6687:
    ld h, a
    ld l, a
    ld [hl], b
    nop
    ld e, b
    ld a, a
    daa
    ld a, a
    ld de, $093f
    ccf
    nop
    ld c, $3f
    nop
    rra
    ld a, [de]
    and $f6
    ld c, $00
    ld a, [de]
    cp $e4
    cp $88
    db $fc
    sub b
    db $fc
    nop
    ld [hl], b
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    nop
    add b
    nop
    ccf
    add e
    ccf
    add d
    ccf
    cp [hl]
    ccf
    and d
    add c
    add c
    rst $38
    ccf
    ld hl, $e1ff
    rst $38
    inc hl
    xor c
    ld b, c
    pop hl
    inc hl
    ccf
    ld a, a
    jr nz, jr_030_6687

    ld hl, $3f58
    ld h, c
    cp h
    ld hl, $014f
    ld a, h
    db $fd
    inc d
    ld b, h
    push bc
    call nz, Call_030_4561
    ld hl, $0009
    ld bc, $0d7f
    ld a, a
    cpl
    ld a, a
    ccf
    rst $38
    ld hl, $bf10
    rst $38
    ld a, a
    jr nz, @+$32

    db $10
    or $30
    nop
    cp $e4
    db $fc
    db $fc
    db $fd
    db $fc
    rst $38
    db $fd
    jr nc, @+$01

    cp $20
    rra
    add hl, bc
    add hl, sp
    ld sp, hl
    or b

Jump_030_66ff:
    ldh a, [rNR10]
    ld h, d
    ld a, c
    ld h, h
    rra
    add hl, bc
    inc e
    rra
    ld c, l
    adc a
    nop
    ld b, $4e
    ld h, $00
    rst $38
    ld [hl], a
    adc b
    add b
    nop
    ld [$008d], sp
    ld h, [hl]
    nop
    jr c, jr_030_671b

jr_030_671b:
    dec h
    nop
    nop
    ld [c], a
    nop
    nop
    cp $76
    adc c
    adc d
    nop
    ld bc, $038c
    ld h, h
    inc bc
    ld a, [hl-]
    ld bc, $0024
    inc bc
    ld [c], a
    ld bc, $00fa
    push de
    nop
    xor d
    nop
    nop
    ld d, l
    nop
    and b
    nop
    ld b, b
    nop
    add b
    add h
    dec a
    nop
    cp a
    nop
    ld d, a
    adc a
    ld [bc], a
    nop
    ld h, b
    ld bc, $634d
    rst $38
    nop
    rst JumpTable
    ccf
    cp a
    ld [hl+], a
    ld a, a
    rst $38
    ld h, c
    ld a, h
    rst $38
    ld a, b
    ld l, a
    ei
    nop
    db $fc
    db $fd
    add [hl]
    rst JumpTable
    add d
    xor a
    jp nz, $1197

    ld [c], a
    bit 6, d
    rra
    dec c
    ld a, a
    rst JumpTable
    ld a, a
    rst JumpTable

jr_030_676e:
    jr nz, jr_030_676e

    rst $38
    pop bc
    ld a, $a2
    ccf
    and e
    inc hl
    ld [de], a
    and e
    ccf
    cp a
    ld b, c
    add b
    nop
    ld hl, $11ff
    ccf
    ccf
    rst $38
    ret nz

    cp $01
    nop
    ld hl, $2f92
    cp h
    daa
    pop bc
    ccf
    cp a
    ld a, a
    call nz, Call_030_4548
    pop hl
    db $fc
    db $fd
    ld a, a
    ld a, a
    ld a, a
    rst $38
    call nz, $4543
    ld a, a
    ccf
    rra
    jr nz, jr_030_67d6

    inc bc
    dec e
    cp $fe
    rst $38
    ld [hl+], a
    ld b, b
    ld b, l
    db $fc
    jr nz, jr_030_67ae

jr_030_67ae:
    ld h, $20
    ld h, [hl]
    ld b, c
    ld [c], a
    ret z

    ld l, a
    ld b, b
    nop
    ld [hl], c
    ld h, h
    ldh a, [$60]
    jr c, @+$12

    rra
    inc e
    add b
    ccf
    ld a, $02
    cpl
    add d
    add $12
    ld h, $01
    ld [bc], a
    sbc a
    ld [bc], a
    cp $04
    db $fc
    call c, $003f
    ld d, d
    nop
    ld c, c
    nop

jr_030_67d6:
    ld a, [de]
    nop
    ld [hl], h
    nop
    nop
    ld b, h
    nop
    ld c, a
    nop
    ret


    nop
    ld [hl], c
    add b
    nop
    ld c, d
    ld bc, $0192
    ld e, d
    ld bc, $032c
    db $10
    ld [hl+], a
    ld bc, $49f2
    adc h
    inc bc
    rst $38
    nop
    ret nz

    ld bc, $0e0e
    rrca
    rst $38
    ei
    ld [hl], b
    db $f4
    ld a, b
    pop af
    nop
    ld a, [hl]
    db $fc
    ld a, a
    db $eb
    ld b, a
    pop bc
    ld b, b
    ret nz

    nop
    ld b, b
    rst $38
    rst $38
    rst $20
    ld a, [hl-]
    di
    ld e, $3b
    nop
    ld c, $4f
    add [hl]
    sub a
    ld [c], a
    ld [hl], e
    cp $2f
    nop
    ld e, $ff
    cp $cd
    ld a, [hl]
    db $db
    ld a, h
    rst $30
    nop
    ld a, b
    rst $28
    ld [hl], b
    db $dd
    ld h, e
    or $4f
    ret c

    ld b, d
    ld a, h
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, $21
    ld h, e
    rlca
    ld a, [c]
    add e

jr_030_6839:
    jp nz, $0203

    ld hl, $082e
    rst $10
    jr c, jr_030_687a

    rst $38
    nop
    ret nz

    db $db
    inc a
    rst $10
    ld [bc], a
    jr c, jr_030_6873

    rst $38
    rst $30
    rst $38
    db $ed
    dec bc
    ld [$2abb], sp
    rst $38
    sbc c
    dec b
    ld [$0577], sp
    ld [$0fb5], sp
    jr c, jr_030_6839

    ld h, b
    inc a
    rrca
    ld h, b
    nop
    db $10
    and l
    jp $99c3


    sbc c
    inc c
    and l
    sbc c
    and l
    jp $0802


    rrca
    db $10
    add b

jr_030_6873:
    rst $38
    nop
    adc c
    nop
    and b
    nop
    add h

jr_030_687a:
    nop
    sub d
    nop
    ld b, b
    add b
    dec c
    ld [$c381], sp
    and l
    jp $c381


    db $10
    adc c
    jp $03a1


    ld [$c381], sp
    rst $38
    jp $ff00


    ld a, a
    rst JumpTable
    ldh [$b1], a
    adc $9f
    ldh [rP1], a
    and h
    db $db
    and h
    db $db
    rst $38
    add b
    pop hl
    sbc [hl]
    add b
    ld [hl+], a
    ld [$1100], sp
    xor $ff
    nop
    ld b, h
    cp e
    jr nz, @+$46

    cp e
    add hl, bc

jr_030_68b1:
    jr jr_030_68b1

    ei
    rlca
    dec c
    di
    nop
    db $fd
    inc bc
    ld b, l
    cp e
    ld b, a
    cp c
    rst $38
    ld bc, $1300
    db $ed
    rst $38
    ld a, a
    rst $08
    ldh a, [$bf]
    rst $08
    nop
    reti


    sub [hl]
    rst $10
    sbc b
    pop de
    sbc [hl]
    call c, $0093
    rst $10
    sbc b
    rst $38
    cp $f3
    rrca
    push af
    ei
    nop
    dec de
    jp hl


    dec hl
    reti


    db $eb
    add hl, de
    xor e
    ld e, c
    jr nz, jr_030_6901

    jp hl


    ld c, a
    db $10
    or b
    rst $08
    and b
    rst JumpTable
    and b
    add hl, de
    rst JumpTable
    ldh [$9f], a
    ld bc, $4f10
    stop
    rst $38
    ld bc, $8040
    ld c, a
    jr nz, jr_030_6903

    ei
    dec b
    ei

jr_030_6901:
    rlca
    ld sp, hl

jr_030_6903:
    rlca
    db $10
    ld sp, hl
    inc bc
    db $fd
    add h
    ld [$e7c3], sp
    rst $20
    cp l
    ld bc, $bdff
    db $db
    and l
    jp $e7db


    xor a
    stop
    rst $00
    cp $bc
    call z, $98d8
    ret c

    sbc b
    ld [$ccbc], sp
    rst $00
    cp $3d
    db $10
    add b
    nop
    cp a
    adc b
    cp a
    ld [$00a4], sp
    xor b
    dec b
    ld [$00a0], sp
    nop
    ld [bc], a
    nop
    ld a, [hl]
    nop
    ld a, d
    nop
    ld e, [hl]
    dec b
    ld [$8276], sp
    inc bc
    ld [$0000], sp
    inc b
    nop
    jr nz, @+$07

    ld [$0b02], sp
    nop
    stop
    ld b, h
    rlca
    ld [$6401], sp
    jr z, @+$39

    db $10
    and b
    rlca
    jr z, jr_030_698e

    ld bc, $0060
    rst $38
    ld a, e
    add h
    ld [hl], e
    nop
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    nop
    add d
    ld [hl], e
    adc h
    pop de
    xor [hl]
    cp a
    ret nz

    ret c

    nop
    ldh [$a1], a
    rst $38
    call $bff4
    rst $38
    rst $10
    inc de
    ld sp, hl
    rst $38
    ld a, a
    ei
    stop
    nop
    ld a, b
    ld [$107b], sp
    nop
    rst $38
    ld bc, $17ff

jr_030_698e:
    jp hl


    db $fd
    inc bc
    dec de
    nop
    rlca
    dec c
    rst $38
    di
    ld c, a
    db $fd
    rst $38
    di
    nop
    rra
    rst $38
    db $fc
    rst $28
    sbc a
    sbc a
    ldh [$d8], a
    ld [bc], a
    ldh [$bf], a
    rst $38
    adc a
    ldh a, [$ef]
    ld bc, $ff08
    nop
    ccf
    rst $30
    ld sp, hl
    ld sp, hl
    rlca
    dec de
    rlca
    db $fd
    nop
    rst $38
    pop af
    rrca
    pop af
    rrca
    di
    rrca
    rst $38
    rla
    db $fc
    ldh a, [$8f]
    ld c, a
    db $10
    cp a
    ld c, a
    jr c, @-$7a

    ld [$084f], sp
    ld [$ffff], sp
    db $dd
    ld b, h
    ld c, [hl]
    ld [$ff11], sp
    rst $38
    jr c, jr_030_69e0

    ld sp, hl
    ld c, a
    db $10
    ld c, e
    ld [$284f], sp

jr_030_69e0:
    rst $38
    rst $38
    or b
    db $10
    rst $08
    ldh [$9f], a
    dec [hl]
    db $10
    ret nz

    rst $38
    rst $38
    ret nz

    nop
    rst JumpTable
    cp a
    rst $38
    rst $38
    dec c
    di
    rlca
    ld sp, hl
    inc bc
    rrca
    pop af
    db $fd
    inc bc
    rlca
    rst $38
    ld [hl+], a
    add hl, bc
    inc [hl]
    ld [$1f80], sp
    ldh [$af], a
    ldh a, [$bf]
    rst $38
    cp a
    db $e3
    cp h
    nop
    db $e3
    rst $28
    or b
    rst JumpTable

jr_030_6a10:
    cp a
    cp a
    ret nz

    cp a
    ld [$f5ff], sp
    rrca
    db $fd
    ld b, d
    add hl, bc
    dec a
    rst $00

jr_030_6a1d:
    push af
    nop
    rrca
    ld sp, hl
    rst $38
    db $fd
    inc bc
    db $fd
    rst $38
    reti


    jr nz, jr_030_6a10

    and l
    pop af
    add hl, bc
    rst $20
    rst $38
    db $db
    rst $20
    ld sp, hl
    inc b
    rst $00
    reti


    rst $20
    sbc l
    db $e3
    ccf
    add hl, bc
    ld a, [hl]
    ld a, [hl]
    inc b
    ld b, d
    ld h, [hl]
    ld a, [hl]
    inc a
    inc h
    ld bc, $3c08

jr_030_6a44:
    rst $38
    add b
    ld [hl], c
    add hl, de
    sbc a
    rst $38
    ret nc

    cp a
    ld d, c
    cp [hl]
    ld a, [hl]
    dec b
    sub b
    ldh [rNR10], a
    add b
    db $10
    ld hl, sp+$10
    add b
    ld a, [hl-]
    ld de, $b5d0
    ld [$2000], sp
    sbc c
    cp [hl]
    ld [$6707], sp
    adc c
    ld e, $03
    ret c

    jr nc, jr_030_6a1d

    ld h, b
    add $61
    rrca
    jr nz, jr_030_6a44

    ld hl, $0780
    db $10
    db $f4
    ld hl, sp-$06
    db $fc
    cp $ff
    ldh a, [$03]
    rst $38
    db $e3
    db $fc
    and $f8
    add $01
    ld [$1031], sp
    ld [hl+], a
    ld a, a
    add b
    inc e
    db $10
    ld a, a
    nop
    ld bc, $105c
    ld a, a
    ld sp, $9fe0
    dec bc
    ld [de], a
    inc bc
    cp b
    ldh [$af], a
    ldh [$bf], a
    ld d, b
    dec c
    dec b
    rlca
    db $fd
    rlca
    cp a
    ld d, b
    db $dd
    ld [$01ef], sp
    db $10
    ld [$a0e0], sp
    rst $28
    and b
    daa
    db $10
    db $fd
    rst $38
    db $fd
    dec b
    rst $30
    rst $38
    rst $30
    db $fd
    rst $30
    daa
    db $10
    db $fd
    daa
    ld [$ff00], sp
    rst $38
    jr @+$01

    ld [hl], c
    sbc [hl]
    rrca
    sub b
    ld [$900f], sp
    ld [hl], h
    sbc e
    cp h
    ld [de], a
    rst $38
    rst $38
    inc c
    ld de, $90ff
    ld l, a
    db $fd
    ld de, $cd32
    add l
    dec c
    ld [$dd00], sp
    db $e3
    sbc c
    rst $20
    cp c
    rst $00
    cp l
    jp $9b10


    rst $20
    db $db
    rlca
    ld [$e7d9], sp
    rst $38
    and l
    nop
    db $db
    cp l
    jp $e7bd


    sbc c
    ld a, [hl]
    ld b, d
    nop
    inc a
    inc h
    jr jr_030_6b15

    nop
    nop
    add b
    db $10
    ld bc, $10ee
    rst JumpTable
    jr nc, jr_030_6b78

    sbc [hl]
    db $10
    dec b
    add hl, bc
    sub b
    ld [hl], $1a
    nop
    ld l, a
    dec sp
    ld [$e619], sp
    nop

jr_030_6b15:
    rst $38
    jp nz, $085a

    nop
    ld [$43e5], sp
    push bc
    jp $2001


    push hl
    nop
    jp $e1c2


    pop af
    ldh [rIE], a
    nop
    sbc e
    nop
    ld h, h
    rrca

jr_030_6b2e:
    sub b
    dec c
    ld a, [c]
    ret z

    dec b
    ld a, b
    ld b, $87
    db $fc
    nop
    rst $20
    jr jr_030_6b2e

    db $10
    ld bc, $e610
    nop
    ld hl, sp+$73
    db $fc
    ld a, h
    rst $38
    rra
    rst $38
    pop af
    nop
    rst $28
    db $e3
    rra
    dec c
    cp $06
    rst $38
    ld [hl], $88
    ld bc, $1708
    xor $fd
    ld b, l
    ld a, [bc]
    add e
    ld bc, $086d
    add d
    add $01
    add d
    ld bc, $7d08
    jr c, @+$01

    nop
    cp $11
    xor $a0
    rst JumpTable
    ld c, d
    db $fd
    call nz, $fb00
    pop af
    rst $38
    ld a, [c]
    rst $38
    sub $ef
    ld a, a

jr_030_6b78:
    nop
    rst $38
    ld h, [hl]
    sbc c
    sbc c
    ld h, [hl]
    ld l, a
    sub b
    ei
    nop
    inc b
    rst $28
    db $10
    or $09
    sbc c
    ld h, [hl]
    ld h, [hl]
    nop
    sbc c
    ld a, d
    add l
    cp l
    ld b, d
    cp l
    ld b, d
    ld l, d
    nop
    sub l
    ld e, [hl]
    and c
    dec [hl]
    jp z, Jump_030_42bd

    ld e, [hl]
    ld b, b
    and c
    ccf
    ld [$85ff], sp
    rst $38
    adc c
    rst $38
    sub c
    inc c
    rst $38
    and c
    rst $38
    pop bc
    sub c
    jr @+$11

    ld h, b
    nop
    rst $38
    jr nc, jr_030_6c31

    add c
    inc bc
    db $10
    dec b
    jr nz, jr_030_6bb9

jr_030_6bb9:
    rst $38
    ret c

    daa
    jr nz, @-$23

    inc h
    inc bc
    ld d, b
    nop
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld bc, $026c
    ld a, c
    inc b
    ld [hl], e
    ld [$2067], sp
    db $10
    ld l, a
    or e
    add hl, bc
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    nop
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    ld [bc], a
    jp nc, $0801

    db $76
    adc c
    adc c
    ei
    ld [$00f8], sp
    db $fc
    dec sp
    ld a, b
    cp b
    ccf
    jr c, @+$01

    rst JumpTable
    nop
    ccf
    rst JumpTable
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    add b
    ld e, e
    ld [$7fbf], sp
    sbc a
    ld a, a
    or h
    ld [hl], e
    ld d, h
    nop
    inc sp
    ld d, b
    dec sp
    ccf
    rst $38
    ld e, a
    ccf
    ld c, a
    ld [bc], a
    ccf
    ld c, b
    dec a
    ld a, [hl-]
    ld a, c
    rst $38
    ld [hl-], a
    ld a, [bc]
    rst $08
    inc de
    rst $38
    rst $28
    rst JumpTable
    ld bc, $6710
    rst $38
    cp a
    ld [$1a0f], sp
    stop
    ld h, a
    sbc b
    inc b
    ld [$40bf], sp

Call_030_6c2f:
    ld e, b
    and a

jr_030_6c31:
    db $10
    ld b, [hl]
    ld sp, $0186
    ld [$204f], sp
    ld c, a
    jr nz, @+$04

    add [hl]
    ld sp, $3285
    ld c, [hl]
    ld hl, $080f
    ld [hl], c
    nop
    inc c
    db $e3
    ld d, $01
    ldh [$03], a
    ldh a, [rSB]
    nop
    xor b
    ld d, b
    nop
    db $fc
    ld b, $60
    add hl, de
    add b
    nop
    inc [hl]
    cp e
    ld b, b
    ccf
    ld l, b
    inc e
    add l
    ld a, $09
    adc d
    daa
    ld e, l
    inc hl
    rst $28
    ld b, b
    or l
    ld c, d
    rst $28
    jr jr_030_6c6c

jr_030_6c6c:
    nop
    db $db
    inc h
    cp [hl]
    ld b, c
    rst $28
    db $10
    ld a, e
    add hl, de
    add h
    ld c, a
    or b
    rrca
    ld de, $f0ff
    db $db
    inc h
    ld bc, $8060
    rrca
    ld [hl], c
    nop
    rst $38
    ld a, a
    add b
    ld h, b
    sbc a
    ld b, e
    ld b, b
    cp h
    ld h, h
    ld [$5fbd], sp
    and b
    ld d, d
    xor l
    rst $28
    nop
    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    ld bc, $a42f
    ld e, e
    and b
    ld e, a
    and b
    ld e, a
    rst $20
    db $10
    inc b
    ei
    rst $00
    add c
    rst $38
    cp l
    ld [hl], c
    dec l
    rra
    rst $38
    ld c, b
    ccf
    ld [hl], e
    ld a, [bc]
    sbc a
    ld a, a
    rlca
    db $10
    ld b, b
    rst $38
    cp a
    ret nz

    ld [hl], h
    dec bc
    nop
    jr nc, jr_030_6ce0

    rst $38
    call nz, $f73f

jr_030_6cc6:
    inc c
    jr nz, jr_030_6cc6

    cp $01
    jr nc, jr_030_6d32

    cp $02
    rst $38
    ld sp, $ef00
    pop af
    xor $e0
    rra
    ld a, [bc]
    db $fd
    inc b
    nop
    ei
    ld sp, $32ff
    rst $38

jr_030_6ce0:
    ld d, $ef
    rst $38
    nop
    rst $38
    adc c
    ld a, a
    daa
    rst JumpTable
    rla
    rst $28
    inc de
    nop
    rst $28
    ld hl, $8fff
    ld a, l
    call $c1bf
    nop
    cp a
    push bc
    ccf
    pop hl
    rra
    push hl
    rra
    dec e
    ld bc, $0bef
    push af
    scf
    db $fd
    rrca
    pop af
    jp nz, $000b

    rst $38
    db $ed
    sbc $ad
    ld a, [hl]
    ld d, $f9
    add hl, bc
    nop
    rst $38
    ld [hl], a
    rst $28
    ld l, [hl]
    rst $30
    dec d
    rst $28
    ld bc, $0000
    add a
    inc bc
    daa
    rst $08
    dec e
    ld a, a
    cp l
    nop
    ccf
    db $ec
    ccf

Call_030_6d27:
    xor l
    ld a, [hl]
    or $6f
    ld a, a
    add b
    db $fd
    ld c, l
    ccf
    rst $38
    add b

jr_030_6d32:
    ccf
    db $ed
    ld [hl], e
    ld a, d
    nop
    pop af
    db $f4

jr_030_6d39:
    ld hl, sp+$7b
    db $fc
    inc e
    rst $38
    rst $28
    nop
    rra
    xor a
    rra
    adc a
    rra
    rrca
    ret nz

    ret nc

    nop
    ldh [$bf], a
    ld a, a
    nop
    nop
    ldh [rP1], a
    rrca
    nop
    ldh a, [$80]
    rst $38
    call c, $efe3
    rra
    rst $28
    ld [bc], a
    rra
    ld l, [hl]
    sbc a
    inc e
    rst $38
    sbc b
    add e
    dec bc
    ldh [$80], a
    add l
    dec bc
    ld [c], a
    pop bc
    jp nz, Jump_030_4281

    add c
    ld b, h
    db $10
    add e
    jr c, jr_030_6d39

    jp $c623


    ld hl, sp-$3b
    ld sp, hl
    add b
    ld bc, $e510
    ld sp, hl
    ld [hl], l
    ld sp, hl
    ld a, [hl]
    db $fc
    rra
    sub b
    rrca
    add hl, de

jr_030_6d85:
    ret nz

    nop
    ld bc, $ff20
    add b
    cp $ff
    or c
    ld a, a
    ret nc

    ld a, a
    ld bc, $7f0a
    db $10
    push af
    ld hl, sp+$7a
    ld a, a
    jr jr_030_6d9b

jr_030_6d9b:
    or a
    rrca
    sub a
    rrca
    nop
    cp a
    adc a
    ret nz

    nop
    ld d, b
    ldh [$5f], a
    ccf

jr_030_6da8:
    add b
    nop
    ld h, b
    add b
    ld b, d
    adc a
    add c
    ld [$0ff7], sp
    rst $30
    rrca
    ld a, a
    jr nz, jr_030_6da8

    ld hl, $f3fe
    inc bc
    inc c
    db $fc
    jp $c3a4


    add h
    dec h
    db $10
    ldh [$1f], a
    ccf
    ld a, a
    ld [$f9c5], sp
    jp z, $9bf3

    ld bc, $ea10
    di
    ld a, a
    jr nz, jr_030_6d85

    ld [de], a
    rst $38

jr_030_6dd6:
    ld a, e
    db $10
    dec a
    inc e
    jr nz, @+$01

    rst $38
    ret nz

    add b
    ldh [$c0], a
    cp a
    rst $38
    sbc l
    ld [c], a
    sbc l
    ld [c], a
    db $ed
    ld a, [c]
    ldh a, [$9f]
    rst JumpTable
    rst $38
    db $fd
    rst $38
    cp l
    add c
    jp $e781


    add c
    rst $20
    sbc c
    jp $81bd


    rst $38
    ld a, a
    rst $38
    add hl, de
    add hl, de
    ld h, $3f
    ld c, a
    ld [hl], a
    ei
    db $ed
    sub a
    ld a, [$dcb7]
    cp a
    jp c, $d9f7

    di
    inc a
    ret c

    ld l, a
    sbc a
    rst $20
    adc a
    pop af
    add c
    rst $38
    ld b, c
    ld a, a
    inc hl
    ld a, $1e
    inc e
    ld hl, sp-$08
    call nz, $f23c

jr_030_6e22:
    xor $d9
    scf
    rst $28
    sbc a
    db $ed
    ld e, e
    rst $38
    ld a, e
    xor $9c
    rst $28
    sbc d
    sbc c
    rst $38

jr_030_6e31:
    db $fd
    rst $20
    di
    rrca
    ld bc, $02ff
    cp $84
    db $fc
    ld hl, sp+$78
    ld b, [hl]
    rst $38
    nop
    ld c, b
    ld bc, $ef01
    nop
    ld l, b
    dec e
    ld d, b
    rst $38
    inc hl
    rst $38
    cp a
    nop
    jr jr_030_6dd6

    add a
    cp e
    nop
    jr c, @+$21

    ld h, b
    ldh a, [rP1]
    db $10
    inc sp
    db $10
    ccf
    or b
    nop
    jr nz, jr_030_6e22

    jp $bfbf


    nop
    rst $08
    rst $08
    rst $30
    rst $30
    ei
    ei
    add a
    add a
    sub b
    rra
    sub b
    rst $00
    rst $00
    ld e, c
    db $10
    jp $fbc3


jr_030_6e75:
    ei
    ld [$bbbb], sp
    rst $00
    rst $00
    rra
    sub b
    ei
    ei
    jp $c348


    inc hl
    db $10
    push bc
    push bc
    ccf
    sub b
    and e
    and e
    push de
    jp $3800


    ld e, a
    or b
    add e

jr_030_6e91:
    add e
    cp a
    cp a
    ld e, l
    and b
    rra
    jr nz, @-$37

    rst $20
    db $10
    rra
    or b
    and a
    and a
    db $db
    nop
    jr c, jr_030_6ec2

    pop hl
    rst JumpTable
    and b
    sbc [hl]
    rra
    jr nc, jr_030_6e31

    add a
    dec l
    db $10
    dec sp
    ld h, c
    ld a, a
    pop hl
    nop
    jr nz, jr_030_6e91

    and b
    nop
    ld [$00eb], sp

jr_030_6eb9:
    ld [$f7f7], sp
    rst $28
    rst $28
    rst JumpTable
    ld e, a
    rst JumpTable
    add hl, de

jr_030_6ec2:
    ld d, b
    ei
    nop
    jr jr_030_6ee2

    ld hl, $2143
    ld e, a
    pop bc
    nop
    db $10
    adc b
    rst JumpTable
    ld [hl], b
    jp $bdc3


    nop
    ld [$bfbf], sp
    or c
    ld c, c
    or c
    rlca
    db $10
    cp l
    cp l

jr_030_6edf:
    ccf
    ld [hl], b
    add e

jr_030_6ee2:
    add e
    rla
    jr nz, jr_030_6edf

    rlca
    ld b, b
    ccf
    and b
    nop
    jr nz, @+$41

    add b
    sbc a
    ld sp, $9f9f
    inc hl
    jr nc, jr_030_6e75

    ld de, $8120
    jp $bd3c


    ld b, d
    ld b, [hl]
    ld e, d
    ld [hl+], a
    ld e, d
    ld b, [hl]
    inc bc
    ld [$bd3c], sp
    add c
    dec [hl]
    ld l, b
    add c
    nop
    add c
    and l
    and l
    sub c
    sub c
    adc c
    adc c
    and l
    jr jr_030_6eb9

    add c
    add c
    rrca
    nop
    ld d, d
    ld d, b
    rst $38
    nop
    rrca
    nop
    nop
    ld de, $0079
    ld c, e
    nop
    nop
    ld b, l
    nop
    ld h, b
    nop
    stop
    jr nz, jr_030_6f2d

jr_030_6f2d:
    ld d, h
    ld [hl], b
    ld c, a
    jr nc, jr_030_6f7d

    add b
    dec e
    add hl, bc
    rst $00
    ccf
    sbc c
    ld hl, $5faf
    ld hl, $e3e7
    db $fc
    ld hl, $f530
    ld a, [$e721]
    rst $38
    nop
    call z, $0633
    or e
    ld c, h
    or b
    ld c, a
    jp $2fdf


    sbc c
    ld bc, $6666
    sbc c
    nop
    rst $38
    ld h, [hl]
    rst $38
    ret nz

    nop
    nop
    inc sp
    call z, $32cd
    dec c
    ld a, [c]
    jp $fc04


    db $e3
    db $fc
    push af
    ld a, [$af21]
    ld e, a
    add b
    ld hl, $3fc7
    jp $b03f


    ld c, a
    or e
    dec d
    ld c, h
    call z, $3d33
    rst $38
    add b

jr_030_6f7d:
    ld h, [hl]
    ld c, b
    ld [de], a
    ld h, [hl]
    sbc c
    sbc c
    ld b, [hl]
    push af
    ld a, [$e321]
    nop
    db $fc
    jp $0dfc


jr_030_6f8d:
    ld a, [c]
    call $3332
    ld h, b
    call z, $e02f
    ld [bc], a
    nop
    ld b, $00
    inc b
    inc c
    nop
    ld [$0e00], sp
    add l
    dec hl
    and d
    nop
    dec d
    jp nc, $9e00

    sbc c
    inc c
    ld c, l
    ld bc, $f889
    and b
    dec [hl]
    add hl, sp
    dec a
    inc sp
    ld [$0400], sp
    nop
    nop
    ld c, $00
    cp $fe
    db $fd
    db $fd
    ei
    nop
    ei
    rst $30
    rst $30
    rst $28
    add sp, -$21
    call c, Call_030_40bf
    cp [hl]
    dec a
    ld a, a
    ld a, a
    cp a
    cp a
    rst JumpTable
    rst JumpTable
    nop
    rst $28
    rst $28
    rst $30
    rla
    ei
    dec sp
    db $fd
    ld a, l
    pop bc
    cpl
    jr nz, jr_030_700d

    nop
    ld h, b
    nop
    add b
    ld l, b
    add d
    nop
    dec bc
    inc bc

Jump_030_6fe6:
    inc bc
    rlca
    inc b
    inc c
    rrca
    dec bc
    rst $30
    nop
    ei
    ei
    add hl, de
    add hl, sp
    ld sp, $6171
    pop hl
    ld b, b
    pop bc
    xor a
    rst $38
    ei
    rst $38
    adc c
    ret


    add c
    ld [$91d1], sp
    pop af
    pop af
    xor a
    rst $20
    rst $00

jr_030_7007:
    rst $20
    jr nc, jr_030_6f8d

    jp $af81


jr_030_700d:
    pop hl
    jp $21f1


    ld [bc], a
    cp e
    ld de, $1299
    sbc d
    ld [de], a
    xor a
    ld b, b
    nop
    add b
    ret nz

    add b
    and b
    ret nz

    ld h, b
    ret nz

    ld d, b
    ld b, e
    ld h, b
    ld l, l
    rlca
    rlca
    inc bc
    ld [bc], a
    and c
    cp l
    ld [bc], a
    rst $38
    ld d, a
    ld a, [hl]
    ld d, h
    ld a, a
    ld [hl], a
    ld b, e
    ld d, a
    add h
    xor a
    add [hl]
    inc b
    ld b, $04
    ld h, e
    add a
    rlca
    add c
    xor a
    ld a, e
    ld [hl], e
    ld b, [hl]
    ld b, h

jr_030_7044:
    ld a, a
    ld [hl], l
    inc hl
    jr nz, jr_030_7044

    ld [hl], e
    xor a
    cp [hl]
    dec sp
    inc sp
    inc hl
    rst $38
    jr @-$44

    di
    and d
    inc hl
    xor a
    ld a, h
    ld e, b
    cp $06
    ld d, h
    cp $d4
    ld a, [hl]
    call nc, Call_030_6d27
    inc c
    dec c
    nop
    ld b, $00
    ld bc, $40b8
    rst $38
    ret nz

    ld bc, $fffc
    ld hl, sp-$01
    pop af
    cp $f3
    ld h, $80
    ret nz

    ccf
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rst $08
    jr nz, jr_030_70be

    nop
    ret nz

    add b
    nop
    ld h, b
    nop
    jr nc, jr_030_7007

    ld b, a
    ld bc, $0301
    inc bc
    rlca
    ld b, $0f
    ld b, b
    rrca
    rst $30
    pop bc
    add c
    add c
    ld bc, $090d
    jr nz, @+$01

    ei
    rst $28
    pop de
    sub c
    pop de
    add c
    call $8940
    rrca
    ld a, [bc]
    jp $9b83


    sub e
    cp e
    or e
    jr nz, @+$01

    rst $30
    rst $28
    sbc a
    inc de
    sbc e

jr_030_70b2:
    rla
    cp a
    db $10
    inc h
    and $cc
    rst $28
    ldh a, [$e0]
    add sp, -$10
    inc c

jr_030_70be:
    ld hl, sp+$30
    inc [hl]
    jr c, jr_030_70b2

    ld h, b
    ld c, $0c
    jr c, jr_030_70e3

    ld [de], a
    ld h, c
    daa
    xor a
    ldh a, [$e0]
    add b
    ld c, h
    add b
    inc hl
    ret nz

    add b
    ld hl, $772b
    ld h, a
    add hl, bc
    sbc $94
    rst JumpTable
    sub a
    inc hl
    db $76
    ld h, h
    cp e
    nop
    ld e, h

jr_030_70e3:
    sbc b
    rst $30
    and l
    or a
    dec h
    rst $38
    cp l
    ld hl, $a4f6
    xor a
    ld sp, hl
    pop de
    sbc c
    ld de, $2061
    rst $38
    db $dd
    xor a
    db $e3
    jp $0486


    and $78

jr_030_70fd:
    call nz, $2723
    xor a
    ldh [rSB], a
    nop
    ld b, $20
    nop
    inc c
    ld b, a
    di
    db $fc
    pop af
    cp $f8
    db $10
    rst $38
    db $fc
    rst $38
    ldh [$cf], a
    ccf
    adc a
    ld a, a
    db $10
    rra
    rst $38
    ccf
    rrca
    add hl, bc
    ld [hl], b
    nop
    jr nz, jr_030_7121

jr_030_7121:
    nop
    stop
    ld h, b

jr_030_7125:
    nop
    ld b, l
    nop
    ld c, e
    nop
    inc l
    ld a, c
    nop
    nop
    ld a, [bc]
    ld b, b
    ld d, e
    ld a, c
    cp h
    jr c, jr_030_7140

    ldh a, [$a0]
    db $fc
    cp b
    inc hl
    or b
    inc l
    add b
    ld [$6777], sp

jr_030_7140:
    add $84
    inc hl
    ld e, $14
    rst $30
    ld b, b
    rst $20
    xor a
    cp c
    ld sp, $4a6f
    db $ed
    ld c, c
    ld [$787c], sp
    rst $28
    ld c, e
    xor a
    adc $8c
    dec de
    ld b, $12
    db $db
    sub d
    ld a, e
    ld d, d
    daa
    xor a
    db $db
    nop
    sub e
    cp $d4
    ei
    or e
    ret c

    sub b
    rst JumpTable
    ld b, b
    sub a
    xor a
    add b
    dec a
    nop
    rla
    add d
    dec d
    ld [hl], b
    add b
    jr nz, jr_030_7125

    add b
    ld b, h
    jr c, jr_030_70fd

    ld b, h
    rlca
    ld [$00b2], sp
    xor d
    nop
    ld b, e
    add hl, hl
    dec l
    add b
    ld a, [de]
    dec bc
    nop
    rst $38
    rst $38
    add c
    add c
    and l
    and l
    rrca
    sub c
    sub c
    adc c
    adc c
    dec h
    add hl, hl
    dec l
    rrca
    db $10
    inc h
    ld b, $07
    nop
    ld a, b
    ld [$0000], sp
    ld c, b
    inc b
    nop
    ld [hl+], a
    jr nz, jr_030_71b1

    nop
    ld e, b
    ld hl, $0500
    rra
    ld h, b
    dec b
    nop
    ld [bc], a

jr_030_71b1:
    inc bc
    ld bc, $1a19
    dec de
    inc e

jr_030_71b7:
    dec e
    inc bc
    ld e, $29
    ld a, [hl+]
    ld bc, $0f0e
    db $10
    ld [$681f], sp
    nop
    ld [de], a
    ld bc, $0101
    inc de
    inc d
    dec d
    ld d, $02
    rla
    jr jr_030_720a

    ld bc, $1f01
    rra
    add b
    ld [hl+], a
    add b
    rra
    ld [$2423], sp
    dec h
    ld h, $27
    jr z, jr_030_721b

    db $10
    ld bc, $2f01
    rra
    add b
    ld [hl-], a
    inc sp
    dec hl
    inc l
    nop
    dec l
    ld l, $34
    dec [hl]
    ld [hl], $37
    jr c, jr_030_722c

    dec hl
    ld bc, $1f0d
    ld a, b
    jr nc, jr_030_71b7

    ld h, b
    ld sp, $701f
    nop
    jr z, jr_030_723d

    db $10
    ld de, $3009
    rra
    and b
    nop
    ld b, b
    rra

jr_030_720a:
    ld l, b
    add b
    add d
    nop
    add h
    add [hl]
    nop
    adc b
    adc d
    adc h
    adc [hl]
    nop
    ld [bc], a
    sub b
    adc d
    sub d
    nop

jr_030_721b:
    sub h
    adc [hl]
    rra
    ld [hl], b
    add c
    nop
    add e
    add l
    add a
    nop
    adc c
    adc e
    adc l
    adc a
    ld bc, $9100

jr_030_722c:
    adc e
    sub e
    nop
    sub l
    adc a
    ld e, a
    nop
    jr nc, jr_030_7235

jr_030_7235:
    sub [hl]
    sbc b
    adc d
    sbc d
    adc [hl]
    sbc h
    nop
    sbc [hl]

jr_030_723d:
    jr @-$6c

    sbc b
    sbc d
    inc b
    ld [$801f], sp
    sub a
    sbc c
    adc e
    nop
    sbc e
    adc a
    sbc l
    nop
    sbc a
    sub e
    sbc c
    sbc e
    ret nc

    inc b
    ld [$00bf], sp
    ld [hl-], a
    and b
    cp d
    db $10
    and d
    sbc [hl]
    sbc d
    xor b
    ld [bc], a
    nop
    and h
    sbc [hl]
    sbc b
    sbc [hl]
    and [hl]
    rra
    ld a, b
    and c
    add b
    cp d
    db $10
    and e
    sbc a
    sbc e
    xor c
    nop
    and l
    sbc a
    ld d, $99
    sbc a
    and a
    rra
    ld l, b
    add hl, bc
    db $fd
    ld h, c
    nop
    db $10
    dec bc
    ret nz

    rra
    ld d, b
    ld b, d
    nop
    nop
    dec hl
    ld bc, $0303
    ld b, $0f
    inc c
    ldh [rNR10], a
    ldh a, [$30]
    jr jr_030_72a0

    inc c
    ei
    ld [hl], c
    adc [hl]
    db $db
    add h
    rrca
    inc c
    rst $28
    rst $00
    jr c, jr_030_730a

    rrca
    inc c
    sbc h

jr_030_72a0:
    ld [$dc21], sp
    cp b
    rrca
    inc c
    ld c, $1c
    ld c, $06
    rrca
    inc c
    ld [$773f], sp
    scf
    ld [hl+], a
    rrca
    inc c
    cp b
    ld [hl], c
    jr c, jr_030_72f9

    jr jr_030_72c8

    inc c
    rst $28
    rst JumpTable
    db $db
    sub d
    rrca
    inc c
    cp a
    db $10
    rst JumpTable
    call c, $0f48
    inc c
    sbc h

jr_030_72c8:
    ld hl, sp+$5c
    ld c, h
    add h
    rrca
    inc c
    ld a, a
    rst $28
    ld l, l
    ld b, h
    rrca
    inc c
    rst $00
    add e
    ld hl, $c66d
    rrca
    inc c
    ldh [$c0], a
    or b
    ld h, b
    rrca
    inc c
    add [hl]
    nop
    inc d
    rlca
    inc c
    dec c
    add hl, bc
    ld h, c
    daa
    inc bc
    db $10
    ld b, $01
    inc bc
    cpl
    ld hl, sp-$34
    inc l
    inc h
    jr nc, @+$0e

    inc b
    inc hl
    daa

jr_030_72f9:
    ld sp, $e118
    ldh a, [$80]
    cpl
    adc [hl]
    adc d
    ld c, $9a
    ld a, $12
    db $76
    ld bc, $e622
    ld b, d

jr_030_730a:
    adc $8b
    ei
    ld sp, hl
    cpl
    ld [hl+], a
    jr c, jr_030_733a

    ld bc, $6d09
    rst $28
    rst $00
    cpl
    call z, $8842
    pop hl
    call c, $be88
    inc e
    cpl
    ld b, $0a
    rlca
    rlca
    dec b
    ld b, $21
    inc b
    ld h, c
    ld c, $44
    ld c, $2f
    inc sp
    ld [hl+], a
    or e
    ld hl, $b3a2
    ld bc, $f3e2
    ld h, d
    scf
    ld h, d

jr_030_733a:
    ccf
    daa
    cpl
    nop
    jr jr_030_735c

    ld e, $14
    ld a, [de]
    ld d, $1a
    inc de
    ld [bc], a
    dec de
    ld de, $1118
    cp b
    jr c, @+$31

    jp $9215


    jp $a182


    rst $00
    ld hl, $2f87
    ld [bc], a
    inc c
    ld c, b
    dec c

jr_030_735c:
    ld [$0f0f], sp
    inc hl
    inc c
    inc b
    ld [$081c], sp
    cp a
    rra
    cpl
    ld c, h
    ld c, $00
    rrca
    adc d
    adc l
    adc e
    dec c
    adc c
    ld c, l
    ld [$4c09], sp
    ld c, b
    sbc h
    call c, Call_030_6c2f
    ld b, h
    add c
    ld bc, $ecc4
    call nz, $c46f
    ld a, a
    ld c, a
    cpl
    ld c, $20
    ld l, h
    ld l, h
    jr z, jr_030_73ab

    inc hl
    daa
    ld l, l
    db $10
    add $c7
    add e
    cpl
    nop
    jr nc, @+$32

    db $10
    pop hl
    jr nz, @+$25

    daa
    or b
    ld h, b
    ldh [$c0], a
    ld c, a
    pop bc
    nop
    nop
    add b
    ld a, l
    cp $de
    sub d
    jr jr_030_73cb

    ld h, b

jr_030_73ab:
    db $10
    ld hl, $f7af
    rst $20
    rst $20
    ld b, d
    ld h, e
    jr @+$44

    ld a, a
    ld a, [hl]
    inc hl
    xor a
    cp $7f
    ld [hl], c
    ld b, $21
    ld [hl], $24
    ld a, $3c
    inc hl
    xor a
    rlca
    jr @+$05

    inc bc
    ld bc, $afa0

jr_030_73cb:
    rst $08
    add a
    add a
    inc l
    ld [bc], a
    add e
    ld hl, $2303
    xor a
    pop hl
    di
    nop
    inc de
    ld d, $66
    ld b, h
    db $e4
    call nz, Call_030_4464
    add b
    xor a
    rst $38
    rst $10
    rst $30
    ld [hl-], a
    inc de
    ld [de], a
    ld [hl], e
    db $10
    inc bc
    ld [hl], e
    ld [hl], d
    xor a
    rst $28
    or $17
    inc de
    ld [bc], a
    ld h, a
    ld b, e
    db $e3
    jp nz, $4263

    xor a
    rra
    nop
    dec sp
    dec de
    ld de, $911b
    db $db
    sub c
    ld e, e
    ld b, b
    pop de
    xor a
    ldh a, [$e0]
    ld e, b
    jr nc, @+$0a

    jr @+$52

jr_030_740e:
    jr @+$24

    ld [$0fdf], sp
    ld [hl], $19
    nop
    jr @+$32

    jr nc, jr_030_743a

    ld hl, $ffaf
    ccf
    ld hl, sp+$01
    sub b
    dec de
    jp nc, Jump_030_5edf

    db $db
    ld d, d
    xor a
    ld [bc], a
    inc bc
    add a
    add [hl]
    add h
    inc b
    inc b
    daa
    ld bc, $0140
    rst JumpTable
    rst $30
    ld h, a
    ld [hl-], a
    jp $8362


jr_030_743a:
    db $10
    jp $8203


    xor a
    rst $20
    rst $30
    rla
    ld [de], a
    inc c
    ld h, e
    ld b, d
    db $e3
    jp nz, $af23

    rra
    adc a
    db $10
    dec c
    inc b
    inc c
    add c
    jr @+$12

    jr c, jr_030_7465

    ld [hl-], a
    inc a
    jr c, jr_030_740e

    ld h, b
    ld h, e
    ld b, d
    ld hl, $40e7
    rst $20
    rrca
    ld a, [bc]
    jr nc, jr_030_7484

    ld [hl], c

jr_030_7465:
    ld hl, $7ffe
    add c
    rrca
    ld a, [bc]
    ld bc, $0301
    ld bc, $0307
    rrca
    ld a, [bc]
    ld [bc], a
    sub e
    ld [bc], a
    or a
    ld [de], a
    rst $38
    rst $30
    rrca
    ld a, [bc]
    ld b, $04
    inc b
    inc de
    ld d, $e1
    di
    rrca

jr_030_7484:
    ld a, [bc]
    inc sp
    ld [de], a
    ld [$32e7], sp
    rst $10
    rst $20
    rrca
    ld a, [bc]
    inc bc
    ld [bc], a
    inc de
    and b
    ld sp, $edf7
    ld c, $0c
    dec sp
    ld [hl], c
    dec sp
    db $10
    ld sp, $131b
    rra
    ld a, [bc]
    ld [$d818], sp
    jr nc, jr_030_74c5

    ldh a, [$e0]
    rrca
    ld a, [bc]
    nop
    jr nc, @+$38

    add hl, de
    rra
    ld b, b
    rrca
    ld c, $0a
    jr jr_030_7484

    ld hl, sp-$70
    ld hl, sp+$38
    add c
    rrca
    ld a, [bc]
    ld bc, $0303
    ld b, $07
    rlca
    rrca
    ld a, [bc]
    ld [bc], a
    sub e

jr_030_74c5:
    ld [de], a
    scf
    ld [de], a
    rst $28
    rst $30
    rrca
    ld a, [bc]
    inc bc
    jr nz, jr_030_74d1

    rla
    rrca

jr_030_74d1:
    dec c
    inc c
    inc h
    ld l, a
    inc h
    rst $38
    ld b, b
    rst $28
    rrca
    ld a, [bc]
    ld a, [hl]
    inc a
    db $db
    ld h, [hl]
    nop
    jp $c33e


    add c
    ld hl, $2925
    dec l
    ld [hl], e
    ld e, l
    ld bc, $7c79
    ld h, h
    ld h, e
    ld b, c
    ld h, d
    ld b, e
    ld hl, $e320
    pop hl
    ld l, a
    push bc
    db $e3
    ld [hl], e
    ld h, $f6
    nop
    db $e4
    db $76
    inc h
    ld h, e
    ld [hl], $f1
    db $d3
    ld c, $01
    inc b
    ld b, $04
    add [hl]
    call nz, Call_030_64c6
    dec h
    add h
    ld hl, $64ce
    adc [hl]
    adc $7f
    ld hl, sp+$70
    nop
    adc b
    ret c

    ld hl, sp-$50

jr_030_751c:
    ret nz

    ldh [$98], a
    ret z

    ret nz

    add hl, hl
    ld l, a
    ld a, $1c
    ld a, [hl+]
    ld [hl], $26
    ld [hl+], a
    sub b
    ld hl, $3622
    add hl, hl
    ld [hl], b
    jr nc, @+$52

    ld h, b
    inc bc
    ld h, b
    ld b, b
    ldh a, [$e0]
    ldh [rLCDC], a
    dec h
    ld h, a
    ld [$3e7c], sp
    ld d, [hl]
    ld h, d
    jr z, jr_030_75c0

    inc a
    ld e, $00
    ld b, $06
    ld [bc], a
    ld b, d
    ld h, [hl]
    ld a, $7c
    nop
    add b
    ld b, b
    ld sp, hl
    ld [hl], c
    adc b
    ret c

    ei
    or c
    jp nz, $e304

    sbc d
    set 7, e
    ld [hl], c
    ld l, a
    rst $00
    db $e3
    nop
    ld [hl], h

jr_030_7561:
    ld h, $f6
    db $e3
    ld [hl], c
    ld hl, $3466
    jr nz, jr_030_7561

    db $d3
    ld l, a
    rst JumpTable
    adc [hl]
    push de
    ld e, e
    inc de
    ld b, $11
    db $d3
    sub c
    ld d, c
    db $db
    add hl, hl
    ld l, a
    ld e, l
    nop
    ld a, b
    ld a, a
    dec h
    scf
    inc h
    ld [hl], $24
    ld [hl], a
    db $10
    dec h
    dec h
    db $76
    ld l, a
    ldh a, [$e0]
    jr nc, jr_030_751c

    inc bc
    add b
    ret nz

    ld [hl], b
    ld h, b
    sub b
    jr nc, jr_030_75bd

    ld l, a
    add b
    nop
    ld [de], a
    rst $00
    add d
    ld h, d
    rst $00
    dec h
    ld h, a
    ld l, l
    ld d, $25
    ld h, l
    dec l
    dec d
    inc c
    add b
    add d
    nop
    sbc $2f
    inc b
    ld l, a
    ld a, h
    ret z

    ret c

    sbc l
    rrca
    ld a, [bc]
    add b
    add b
    ld [$80c0], sp
    ldh [$c0], a
    rrca
    ld a, [bc]
    cp $7c

jr_030_75bd:
    ld l, e
    ld b, $26

jr_030_75c0:
    ld h, c
    inc hl
    ld h, e
    ld hl, $2521
    ld a, e
    ld b, b
    ld h, $2d
    cp $7f
    ld [hl], c
    ld hl, $2436
    ld h, $3e
    inc a
    inc hl
    jr nc, jr_030_75f6

    add hl, hl
    dec l
    ld h, e
    nop
    rst $30
    ld [hl+], a
    ld h, e
    inc sp
    ld [hl+], a
    nop
    ld [hl], $36
    ld a, [bc]
    inc d

jr_030_75e4:
    inc d
    inc e
    ld [$0821], sp
    rra
    db $10
    ld hl, sp+$02
    ld [hl], b
    ld [hl], c
    jr nz, jr_030_7621

    ld hl, $4131
    ld [hl-], a
    nop

jr_030_75f6:
    ld hl, $2277
    cp $7e
    db $fc
    ld a, b
    or [hl]
    rlca
    call z, $8600
    add [hl]
    ld [bc], a
    ld hl, $2925
    add b
    dec l
    ld a, e
    db $fd
    call $c446
    ld b, [hl]
    call z, Call_030_4600
    ld hl, sp+$7c
    ret nz

    ld b, b
    pop bc
    ld b, b
    db $d3
    nop
    pop hl
    ei
    db $fd
    push bc
    add h
    reti


    sub b

jr_030_7621:
    ld sp, hl
    ld c, h
    ldh a, [rNR44]
    pop bc
    add b
    add hl, hl
    dec l
    ld hl, sp-$10
    ld [bc], a
    xor h
    sbc b
    add h
    adc h
    adc [hl]
    add h
    ld hl, $1086
    adc h
    db $ec
    sbc b
    dec l
    rlca
    inc bc
    inc bc
    ld bc, $e0e0
    add hl, hl
    dec l
    rst $38
    di
    xor e
    add hl, de
    adc b
    ld b, b
    add hl, de
    scf
    adc b
    jr jr_030_75e4

    ld [$18a8], sp
    add b
    daa
    inc e
    jr @-$46

    db $10
    and b
    or b
    and b
    inc b
    ldh [$c0], a
    ld h, b
    ld h, b
    ld b, b
    ld hl, $e0f0
    ld h, b
    nop
    nop
    ccf
    ld b, d
    nop
    nop
    dec bc
    ld a, h
    ld a, [hl-]
    adc $66
    rrca
    inc c
    jr c, jr_030_7681

    db $10
    db $10
    jr c, jr_030_7684

    inc c
    ld a, d
    db $fc
    call z, $8446
    rrca
    inc c
    ld a, h
    ld a, [hl-]
    adc $66

jr_030_7681:
    rrca
    inc c
    ld a, [hl]

jr_030_7684:
    inc a
    ld b, d
    db $db
    rrca
    dec c
    pop af
    ld h, b
    ld [hl], c
    ld sp, $0c0f
    ldh [rNR10], a
    ret nz

    ret nz

    add b
    rrca
    inc c
    ld a, $1d
    ld h, a
    inc sp
    jp nz, $0c0f

    nop
    db $10
    rrca
    rlca
    rlca
    ld [bc], a
    rrca
    inc c
    adc a
    db $10
    rra
    dec de
    ld [de], a
    rrca
    inc c
    cp a
    rst JumpTable
    jp c, $8c49

    rrca
    inc c
    add b
    nop
    ret nz

    ld [hl+], a
    nop
    cpl
    add b
    jp nz, $8041

    ld h, b
    jp nz, $66ce

    ld a, d
    ld a, $6f
    nop
    jr z, jr_030_76ff

    ld l, h
    jr z, @+$2a

    ld l, h
    ld a, h
    ld a, h
    ld [$44e6], sp
    rst $00
    xor $6f
    call nz, $cc46
    inc b
    ld b, [hl]
    ld a, [$c07c]
    ld b, b
    ld hl, $e0d0
    adc b
    ld l, a
    add b
    jp nz, Jump_030_6080

    jp nz, $66ce

    ld hl, $3e7b
    ld l, a
    nop
    jp $81c3


    ld hl, $2584
    db $db
    ld h, [hl]
    ld a, [hl]
    inc a
    ld l, [hl]
    ld [hl], c
    dec sp
    nop
    ld a, e
    ld l, $6e
    inc h

jr_030_76ff:
    ld h, b
    jr nz, jr_030_7763

    jr nz, jr_030_7728

    ldh a, [$71]
    ld l, a
    ret nz

    add b
    pop hl
    ldh [$c0], a
    adc b
    ld l, a
    ld b, b
    ld h, c
    ld b, b
    ld h, b
    ld h, c
    ld h, a
    inc sp
    jr nz, jr_030_7754

    rra
    ld l, a
    ld a, h
    jr c, jr_030_7760

    ld l, h
    ld c, h
    ld b, d
    ld b, h
    ld hl, $6c54
    ld a, l
    add hl, sp
    ld l, a
    inc bc
    ld b, b

jr_030_7728:
    ld [bc], a
    and c
    rlca
    ld [bc], a
    ld l, a

jr_030_772d:
    ld h, a
    jr nz, @+$22

    ld [$4040], sp
    inc bc
    ld [de], a
    ld l, l
    inc hl
    ld [bc], a
    ld h, a
    db $10
    ld [hl+], a
    rst $20
    rst $20
    ld a, a
    jr jr_030_7788

    jr jr_030_774a

    add h
    ld h, c
    ld e, $09
    cp a
    rra
    ld l, a
    ld b, b

jr_030_774a:
    ret nz

    jr nz, jr_030_772d

    ld b, b
    ld hl, $c060
    ret nz

    add b
    adc b

jr_030_7754:
    ld l, h
    ld [$006f], sp
    sbc [hl]
    ld b, b
    rra
    rra
    nop
    ld [hl], d
    db $fd
    ld a, [hl]

jr_030_7760:
    ld [$2366], sp

jr_030_7763:
    ld h, d
    inc hl
    inc hl
    ld a, l
    ld a, $60
    ld c, b
    jr nz, @+$23

    add sp, $70
    xor a
    ld l, e
    ld h, $7e
    nop
    inc a
    ld h, e
    ld h, $63
    ld [hl+], a
    rst $20
    ld [hl], a
    ccf
    ld bc, $6d1e
    inc sp
    nop
    ld h, c
    ld h, c

jr_030_7782:
    ld b, b
    ld hl, $25e0
    add hl, hl
    dec l

jr_030_7788:
    ld a, a
    ld a, $b5
    inc de
    jr nc, jr_030_77a7

    sub c
    or c
    sub b
    ld hl, $bd25
    inc de
    dec l
    ld bc, $393d
    cp c
    db $10
    sbc c
    sub b
    reti


    add c
    nop
    sub b
    add hl, de
    rra
    rrca
    rst JumpTable
    adc $b3

jr_030_77a7:
    sbc c
    inc d
    and b
    or b
    and b
    ld h, b
    or b
    add hl, hl
    sbc [hl]
    rrca
    nop
    ccf
    cp a
    cp b
    sub b
    dec de
    sub d
    rra
    ld e, $08
    dec de
    ld [de], a
    jr @-$6e

    add hl, hl
    rst $38
    cp a
    ld a, a
    ld bc, $b5be
    sub e
    jr nc, jr_030_77da

    ld sp, $2110
    add b
    dec h
    cp l
    sub e
    ccf
    cp [hl]
    inc bc
    ld bc, $0e81
    nop
    add b

jr_030_77d8:
    add b
    ret nz

jr_030_77da:
    add c
    add hl, hl
    dec l
    rst $38
    ld bc, $d5f9
    adc h
    call nz, $fc8c
    ld hl, sp+$23
    db $10
    call z, $d484
    ld b, a
    adc [hl]
    adc h
    call c, $0088
    ld d, b
    ret c

    ld d, b
    ld [hl], b
    ld h, b
    jr nc, jr_030_7828

    jr nz, jr_030_7782

    ld hl, $7078
    nop
    nop
    ld e, e
    ld [hl], c
    db $e3
    ld sp, $7142
    rrca
    inc c
    db $fd
    cp e
    cp b
    ld de, $0c0f
    rst $00
    db $10
    adc [hl]
    add $c4
    rrca
    inc c
    ld a, l
    cp $de
    sub d
    add h
    rrca
    inc c
    db $fc
    cp $e2
    ld b, d

Call_030_781f:
    rrca
    inc c
    set 0, a
    ld hl, $e267
    rrca
    inc c

jr_030_7828:
    ld a, [hl]
    ld a, h
    ld l, e
    ld h, $0f
    inc c
    ld [$1e3f], sp
    ld l, l
    inc sp
    rrca
    inc c
    ld bc, $8300
    jp $0022


    dec bc
    ldh a, [$e8]
    jr c, jr_030_77d8

    rrca
    inc c
    nop
    db $10
    ld [$387c], sp
    jr c, jr_030_7859

    rrca
    inc c
    ld a, l
    cp $de
    ld b, e
    sub d
    rrca
    inc c
    db $fc
    ld hl, sp-$2a
    ld c, h
    rrca
    inc c
    nop

jr_030_7859:
    inc d
    nop
    ld [hl], c
    add hl, sp
    dec a
    add hl, hl
    dec [hl]
    dec l
    dec [hl]
    daa
    ld [$2333], sp
    ld [hl], c
    ld [hl], c
    ld l, a
    sbc c
    db $10
    sbc b
    add h
    add c
    cp b
    db $10
    db $fd
    add hl, sp
    ld l, a
    add $e4
    nop
    or $a4
    sub $b4
    sub $9c
    sbc $8c
    inc h
    add [hl]

jr_030_7880:
    call z, $186f
    db $10
    and c
    jr c, @+$12

    ld hl, $383d
    ld l, a
    ld l, h
    ld c, b
    ld a, h
    ld a, b
    inc hl
    ld [bc], a
    ld h, b
    ld b, b
    ld [c], a
    ld b, d
    db $fc
    cp $6f
    db $e3
    nop
    ld [hl], d
    ld a, e
    ld d, d
    ld l, e
    ld e, d
    ld l, e
    ld c, [hl]
    ld l, a
    db $10
    ld b, [hl]
    jp Jump_030_6fe6


    ld h, c
    inc hl
    ld h, e
    ld hl, $21c3
    dec h
    ld a, e
    ld h, $7e
    ld a, h
    ld l, a
    jr nc, jr_030_78d5

    pop hl
    ld b, b
    ld hl, $6180
    ld l, l
    inc sp
    ccf
    ld b, [hl]
    ld e, $6e
    ld [bc], a
    add e
    add d
    ld b, b
    dec h
    add e
    jr nz, @+$03

    ld bc, $039e
    add hl, bc
    ld [bc], a
    inc bc
    ld [bc], a
    add d
    jr nz, jr_030_78dc

    ld a, [hl-]
    sbc e
    db $eb

jr_030_78d5:
    ld sp, hl
    ld l, a
    ldh [$08], a
    ret nz

    jr nz, jr_030_793c

jr_030_78dc:
    ld h, b
    ld [hl+], a
    jr nz, jr_030_7880

    ld h, b
    add hl, bc
    db $eb
    rlc c
    ld bc, $1838
    db $10
    ld h, c
    ld [bc], a
    add hl, de
    db $10
    dec sp
    ld de, $3f7f
    ld a, a
    jr jr_030_7936

    sub d
    or c
    jr c, @+$12

    inc a
    add hl, sp
    ld l, a
    jp nz, Jump_030_4610

    rst $00
    ld b, d
    ld hl, $46c3
    or $4c
    inc sp
    db $fc
    ld hl, sp+$6f
    nop
    ld a, [bc]
    ld b, b
    ld b, b
    rrca
    ld c, $a0
    ld b, b
    nop
    nop
    ldh a, [rNR41]
    ld hl, $2322
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_030_7948

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nz, jr_030_7953

    cpl
    rra
    ld [hl], b
    jr nc, jr_030_795b

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_030_796c

    ld a, [hl-]
    dec sp
    inc a

jr_030_7936:
    inc b
    dec a
    ld a, $3f
    ld e, [hl]
    ld e, a

jr_030_793c:
    rra
    ld h, b
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_030_7948:
    ld c, c
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld l, [hl]
    ld l, a
    add b

jr_030_7953:
    ld h, e
    add b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_030_795b:
    ld d, [hl]
    inc bc
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    sub c
    ld hl, sp+$00
    ld h, b
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_030_796c:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [$6968], sp
    ld l, d
    ld l, e
    rra
    sub b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld b, b
    ld a, e
    ld b, e
    or b
    add b
    add c
    add d
    add e
    add h
    add l
    ld bc, $8786
    adc b
    adc c
    adc d
    adc e
    adc h
    rra
    adc b
    nop
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    inc b
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    dec de
    ld l, b
    and b
    and c
    nop
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ld b, b
    xor d
    ld e, e
    sbc b
    or b
    or c
    or d
    or e
    or h
    or l
    inc b
    or [hl]
    or a
    cp b
    cp c
    cp d
    jp $c0b8


    pop bc
    nop
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    inc b
    jp z, $cccb

    call $1fce
    ld a, b
    ret nc

    pop de
    nop
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    inc b
    jp c, $dcdb

    db $dd
    sbc $21
    ld bc, $022f
    inc bc
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld [$0d0c], sp
    ld c, $0f
    rra
    add b
    ld [de], a
    inc de
    inc d
    nop
    dec d
    ld d, $17
    jr jr_030_7a20

    ld a, [de]
    dec de
    inc e
    jr jr_030_7a29

    ld e, $1f
    ld e, h
    nop
    cpl
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    nop
    ld h, b
    ld bc, $0303
    rlca

jr_030_7a20:
    rlca
    rrca
    inc b
    ld c, $0f
    inc e
    rra
    jr jr_030_7a55

jr_030_7a29:
    ld a, $7f
    nop
    rst $38
    rst $38
    sbc $e1
    ld a, a
    add b
    rst $38
    nop
    ld [$1fee], sp
    rst JumpTable
    ccf
    ld e, l
    add b
    ret nz

    ldh [rP1], a
    ld h, b
    ldh a, [$d0]
    jr c, @-$12

    inc e
    or $0e
    jr z, jr_030_7ac6

    adc [hl]
    ld l, $0f
    ld h, b
    inc e
    dec de
    inc e
    ld [bc], a
    rra
    jr jr_030_7a72

    jr c, jr_030_7a8b

jr_030_7a55:
    add hl, sp
    cpl
    ldh a, [rLY]
    ld hl, sp+$40
    jr jr_030_7a55

    inc e
    ccf
    db $fc
    inc c
    ld a, [hl+]
    db $fc
    ld c, $2f
    ccf
    ld h, b
    jr nc, jr_030_7aaa

    jr c, @-$6e

jr_030_7a6b:
    ld hl, $181f
    cpl
    ld hl, sp-$02
    rst $38

jr_030_7a72:
    rst $38
    ld [$07f9], sp
    rst $38
    nop
    ld hl, $78f7
    ei
    ld h, b
    ld a, h
    cpl
    ld b, b
    add b
    ret nz

    pop bc
    ld h, e
    db $e3
    ld [bc], a
    and a
    ld [hl], a
    rst JumpTable
    ld a, $fd

jr_030_7a8b:
    ld e, $2c
    rra
    ld bc, $ff3f
    ld a, a
    rst $28
    ldh a, [$bf]
    ret nz

    ld e, a
    db $10
    rrca
    rst $38
    rra
    ld a, h
    ldh [$f0], a
    or b
    ld a, b
    ld hl, $1ce8
    dec l
    ld a, e
    add a
    cp a
    rst $00

jr_030_7aa8:
    cpl
    nop

jr_030_7aaa:
    rlca
    rrca
    rra
    ccf
    dec sp
    ld a, h
    rst $28
    ldh a, [$03]
    rst $38
    ret nz

    db $fd
    add e
    ld a, a
    add a
    cpl
    dec a
    nop
    ld hl, sp-$04
    xor $1f
    ei
    rlca
    rst $38
    ld bc, $df0a

jr_030_7ac6:
    ldh [rIE], a
    ldh a, [$2f]
    rra
    ld b, b
    rla
    inc b
    jr jr_030_7a6b

    sbc h
    ei
    db $fc
    ld hl, $fc7b
    and b
    cpl
    pop af
    ld b, b
    db $db
    dec sp
    rst $38
    rra
    xor $05
    rra
    rst $38
    ld c, $f5
    ld c, $2f
    rst $38
    ld b, b
    inc bc
    ld a, a
    add c
    rst $38
    inc bc
    ei
    rlca
    ld h, c
    cpl
    nop
    sbc h
    sbc h
    and d
    and [hl]
    xor d
    xor d
    and [hl]
    and [hl]
    add hl, bc
    ld a, [hl+]
    xor d
    inc e
    inc e
    dec l
    rla
    jr c, jr_030_7b24

    jr nc, jr_030_7b44

    jr nc, jr_030_7aa8

    ld l, e
    pop af
    dec sp
    and c
    ld [hl], c
    ld [$61e1], sp
    ldh [$60], a
    ld h, c
    and b
    ld [hl], b

jr_030_7b14:
    ldh a, [rP1]
    jr nc, jr_030_7b14

    sbc h
    ld hl, sp-$48
    ldh a, [$f0]
    ldh [rNR41], a
    ldh [rP1], a
    ld b, b
    inc a
    inc a

jr_030_7b24:
    ld a, h
    ld a, l
    ccf
    nop
    ld sp, $733d
    ld l, a
    ld [hl], e
    ld a, a
    ld h, e
    ld a, e
    nop
    rst $20
    rst JumpTable
    ldh [rIE], a
    ret nz

    rst $30
    rst $08
    or $00
    ld c, $7e
    add [hl]
    ld a, [hl]
    add a
    ei
    add a
    rst $38
    nop
    add e

jr_030_7b44:
    rst $38
    inc bc
    db $fd
    inc bc
    rst JumpTable
    pop hl
    rra
    ld c, c
    jr jr_030_7b4f

    add hl, bc

jr_030_7b4f:
    sbc b
    sbc a

jr_030_7b51:
    ld b, c
    rst $38
    ld a, h
    ld hl, $fb41
    inc hl
    ld a, b
    rst $28
    ld [hl], b
    rst $38
    nop
    ccf
    ld [$0ff7], sp
    ei
    inc e
    ld hl, $38df
    rst $38
    add b
    ld hl, $ff78
    ld hl, sp-$25
    db $fc
    dec bc
    sbc h
    jr jr_030_7b51

    ccf
    rst $38

jr_030_7b74:
    ld bc, $4b09
    rra
    cp $cf
    inc c
    cp $df
    rst $38
    cp $a1
    ld h, h
    rst $38
    rrca
    jr c, jr_030_7b74

    rra
    dec [hl]
    pop hl
    ld c, e
    ld hl, sp-$05
    db $fc
    ld h, b
    rst $38
    ld bc, $4b09
    ld a, b
    cp a
    ld a, b
    rst $38
    jr c, jr_030_7bd7

    rst $30
    ld b, c
    rst $38

jr_030_7b9a:
    jr nc, jr_030_7b9a

    ld sp, $71be
    nop
    rst $38
    inc b
    ei
    inc b
    rst $38
    nop
    cp a
    ret nz

    add h
    ld hl, $c0ff
    sbc $e1
    ld hl, $07fb
    inc h
    rst $38
    inc bc
    ld hl, $c37f
    ld hl, $c3fd
    dec hl
    db $dd
    db $e3
    ld hl, $0000
    ld a, [bc]
    add b
    ld hl, $0020
    rra
    jr jr_030_7bd7

    inc e
    rrca
    ld c, $07
    rlca
    jr nz, jr_030_7bd0

    inc bc

jr_030_7bd0:
    or h
    ret c

    jr c, @-$0f

    rra
    rst $30
    nop

jr_030_7bd7:
    rrca
    ld a, a
    add b
    rst $08
    ldh a, [rIE]
    rst $38
    rra
    ld b, b
    ccf
    cpl
    db $dd
    db $ed
    rst $38
    rst $08
    ld a, a
    adc a
    ld c, $fe
    rrca
    rst $28
    ld e, $2f
    jr nz, jr_030_7c1f

    cp a
    nop
    rst $08
    rst $38
    adc a
    rst $28
    sbc a
    rst $28
    rra
    rst $30
    ld b, b
    rrca
    xor a
    rst JumpTable
    pop hl
    cp $e1
    rst $28
    ldh a, [$90]
    ld hl, $e0df
    xor a
    sbc a
    ret c

    rst JumpTable
    ret c

    ld [bc], a
    rst $38
    ld hl, sp+$7f
    ld hl, sp-$41
    ld [hl], b
    xor a
    cp h
    nop
    ld a, [hl]
    ldh a, [$78]
    ldh [$60], a
    ldh a, [rSVBK]
    ldh a, [$30]

jr_030_7c1f:
    jr nc, @-$0e

    ld b, b
    cpl
    rrca
    inc c
    rlca
    ld c, $03
    rlca
    rlca
    inc bc
    inc bc
    nop
    ld bc, $602b
    nop
    rst $28
    rra
    rst $30
    rrca
    db $fd
    inc bc
    cp a
    ret nz

    ld [bc], a
    rst $20
    ld hl, sp+$3f
    ld a, a
    rlca
    rra
    ld c, a
    rst $30
    nop
    rst $38
    rst $20
    cp a
    rst $00
    rst $38
    rlca
    or $0e
    ld h, b
    cp $40
    cpl
    rst $38
    rrca
    ld a, a
    add a
    db $fd
    nop
    add e
    rst $38
    ret nz

    rst $28
    ldh a, [$7b]
    ld a, h
    rra
    nop
    ccf
    rlca
    rrca
    rst $38
    ld hl, sp-$01
    ldh a, [$df]
    nop
    ldh [rIE], a
    ld bc, $07fb
    rst $28
    rra
    cp $80
    inc l
    db $fc
    rst $28
    ld [hl], c
    ld l, a
    pop af
    rst $38
    pop hl
    nop
    sbc $e1
    rst $38
    ret nz

    rst $38
    rst $38
    ld a, a
    ld a, a
    dec sp
    nop
    nop
    dec hl

jr_030_7c85:
    ld b, c
    ld b, b
    ret nz

    add b
    cpl
    ld b, e
    rst JumpTable
    ld c, a
    cp $e1

jr_030_7c8f:
    rst JumpTable
    ldh [$7f], a
    jr nz, @-$48

    cpl
    add b
    jr nz, jr_030_7cef

    ldh [$c0], a
    cpl
    rrca
    xor d
    nop
    rrca
    add c
    jr nz, @-$3d

jr_030_7ca2:
    jr nz, jr_030_7c85

    jr nz, @-$0d

    xor h
    jr nz, jr_030_7ca2

    jr nz, @-$41

    ld b, [hl]
    add b
    ldh a, [$f0]
    and e
    and a
    ldh [$c0], a
    nop
    nop
    rst $20
    add b
    daa
    add d
    ldh [$9e], a
    cp a
    rst $38
    rst $38
    rst JumpTable
    adc a
    rlca
    xor d
    ld b, b
    ccf
    ld b, b
    add a
    jr nz, jr_030_7c8f

    ld l, a
    add b
    add h
    ld b, b
    ldh a, [$f0]
    pop af
    di
    ld l, $8f
    adc a
    ret nz

    ld l, a
    and b
    ldh a, [$f8]
    ld e, h
    cp h
    ld c, $1e
    add c
    rrca
    ld a, [bc]
    ld a, c
    ld a, e
    ld a, a
    ld a, a
    ld a, l
    ld a, [hl]
    rrca
    ld a, [bc]
    inc d
    ldh [$f0], a
    ld hl, sp+$20
    ld a, h
    rrca
    ld a, [bc]

jr_030_7cef:
    rra
    ccf
    adc c
    ccf
    ld [hl], b
    ld sp, hl
    ldh a, [rP1]
    dec c
    pop af
    pop af
    rra
    ld a, [bc]
    nop
    ld a, $7f
    db $e3
    rst $30
    db $e3
    db $e3
    jr c, jr_030_7d3d

    ld b, $44
    ld c, h
    ld d, h
    ld d, h
    ld c, h
    ld b, e
    add hl, hl
    add b

jr_030_7d0e:
    db $10
    add b
    ret nz

    ret nz

    cp e
    ld bc, $0300
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld l, l
    ld c, a
    inc de
    ccf
    ld a, a
    rst $38
    jr nz, jr_030_7d0e

    ldh a, [$3e]
    dec hl
    ret nz

    inc sp
    nop
    ld c, $9f
    cp l
    sbc a
    sbc a
    adc a
    adc a
    ld b, d
    add a
    ld hl, $8387
    add e
    add c
    ld hl, $5081

jr_030_7d3d:
    pop af
    nop
    rrca
    rst $20
    nop
    rrca
    add a
    jp $83c3


    and [hl]
    nop
    inc c
    rst $00
    nop
    rrca
    adc a
    sbc a
    and b
    daa
    adc a
    nop
    adc a
    add a
    add a
    add c
    add e
    ld c, $0f
    rst $38
    add b
    ld b, b
    nop
    nop
    rrca
    rrca
    sbc [hl]
    rrca
    ld l, h
    ld bc, $f49e
    ld hl, sp+$78
    ld a, h
    ld a, h
    ld a, b
    nop
    inc c
    jr z, jr_030_7dec

    inc a
    nop
    ld c, $f0
    nop
    add hl, bc
    ld [hl], b
    ld sp, hl
    ld a, a
    ld b, $7f
    ld e, $3f
    pop af
    di
    and b
    daa
    pop af
    ld d, b
    pop af
    ld [hl], l
    db $e3
    nop

jr_030_7d87:
    inc c
    rst $30
    ld a, $7f
    ret nz

    ld h, b
    ldh [$a0], a
    daa
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    ld e, $3e
    ld a, h
    inc a
    jr c, jr_030_7e19

    ld hl, sp+$2e
    ld a, b
    ld [hl], b
    ld [hl+], a
    ldh a, [$60]
    ld sp, $ff20
    ldh a, [$80]
    ld l, c
    jr nz, jr_030_7db0

    nop
    nop
    cp [hl]
    cp a

jr_030_7db0:
    rst $08
    nop
    ld c, b
    cp a
    cp [hl]
    ld b, b
    nop
    nop
    ld l, b
    adc $b0
    or c
    or d
    or e
    or h
    nop
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    jr nz, jr_030_7d87

    adc $1f
    ld a, b
    ret nz

    pop bc
    jp nz, $c4c3

    nop
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    ld [hl], b
    call Call_030_781f
    ld e, a
    ldh a, [rP1]
    nop
    ld h, b
    add b
    add c
    add d

Jump_030_7de7:
    add e
    nop
    add h
    add l
    add [hl]

jr_030_7dec:
    add a
    adc b
    adc c
    adc d
    adc e
    ld [$8d8c], sp
    adc [hl]
    adc a
    rra
    ld [hl], b
    sub b
    sub c
    sub d
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    inc b
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rra
    ld [hl], b
    and b
    and c
    nop
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    inc bc
    xor d

jr_030_7e19:
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    dec e
    ld h, b
    ld c, [hl]
    nop
    nop
    rrca
    jr nz, jr_030_7e46

    ld de, $0010
    rrca
    rra
    ld de, $b640
    ld c, $0e
    ld h, b
    rra
    ld de, $0d00
    ld h, b
    rra
    ld de, $5e00
    ld bc, $00c0
    ld e, a
    ld b, b

Call_030_7e3f:
Jump_030_7e3f:
    nop
    ret nz

    cp $00
    db $fd
    ld a, [hl]
    rst $38

jr_030_7e46:
    ld h, [hl]
    rst $00
    ld hl, $fe25
    ld h, b
    ldh a, [rNR42]
    or $00
    add hl, bc
    add a
    rst $38
    cp $7c
    db $fd
    ld l, [hl]
    ld b, a
    rra
    ld de, $5331
    rst $38
    ccf
    ld h, b
    dec a
    cp $60
    dec h
    ld c, c
    adc b
    rra
    ld de, $007e
    cp l
    dec [hl]
    ld h, d
    cp d
    ld a, h
    ld c, $ff
    ld b, $ff
    ld h, [hl]
    add hl, hl
    dec l
    nop
    db $10
    rst $38
    adc $21
    ccf
    jr jr_030_7eb9

    pop hl
    rra
    ld de, $5a31
    rlca
    inc a
    cp l
    ld a, [hl]
    rst $38
    ld h, [hl]
    ld b, c
    ld h, l
    rla
    add hl, bc
    inc bc
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    inc hl
    jr nz, jr_030_7ecf

    sbc c
    sbc c
    inc hl
    dec l
    rrca
    stop
    add b
    ld b, c
    ld [$80c0], sp
    ldh [rP1], a
    nop
    rla
    rst $38
    rst $38
    add c
    add hl, de
    add c
    rst $20
    rst $20
    inc hl
    jr nz, @-$65

    sbc c
    inc hl
    ret nz

    dec l
    rrca
    ld [hl], b
    nop
    nop
    inc bc

jr_030_7eb9:
    inc bc
    ld b, $07
    nop
    ld [$130f], sp
    inc e
    rla

jr_030_7ec2:
    jr jr_030_7eeb

    jr c, jr_030_7ecc

    inc hl
    inc a
    ld h, b
    ld a, a
    ld b, b
    add c

jr_030_7ecc:
    daa
    jr nz, jr_030_7ecf

jr_030_7ecf:
    ccf
    jr nc, @+$41

    db $10
    rra
    ld a, [hl]
    ld a, [hl]
    add c
    daa
    rst $38
    nop
    add c
    add b
    ld a, a
    ld hl, $01a9
    dec c
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    nop

jr_030_7eeb:
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    ld b, $3e
    cp $02
    add c
    daa
    dec hl
    cpl
    inc sp
    dec b
    nop
    dec b
    rrca
    dec bc

Call_030_7f00:
    rst $28
    jp hl


    ld sp, hl
    sbc a
    ld e, l
    nop
    ld l, a
    scf
    ccf
    inc a
    inc a
    ld l, b
    ld e, b
    ret nc

    nop
    or b
    ldh a, [$b0]
    ldh [$a0], a
    and b
    ldh [$d0], a
    nop
    ldh a, [$50]
    ld [hl], b
    jr z, jr_030_7f55

    db $10
    db $10
    rst $38
    ld b, $ff

Call_030_7f22:
    add c
    add c
    rst $20
    rst $20
    inc hl
    jr nz, jr_030_7ec2

    ld [hl], b

jr_030_7f2a:
    sbc c
    inc hl
    dec l
    rrca
    db $10
    cp $fe
    ld b, e
    ld a, a
    nop
    ld [hl], c
    ld l, a
    and l
    rst $38
    reti


    cp a
    jp hl


    rst $38
    ld b, b
    jp z, $3b4d

    ccf
    ld d, c
    ld a, a
    ld c, c
    ld a, a
    nop
    or e
    rst $38
    xor d

Call_030_7f49:
    cp $46
    cp $2c
    db $fc
    db $10
    ld a, b
    ld a, b
    nop
    ld b, b
    inc c
    inc c

jr_030_7f55:
    ld c, $0a
    nop
    rst $38
    ld sp, hl
    db $ed
    sbc e
    db $ed
    ld d, e
    inc sp
    cpl
    nop
    cp $e6
    db $f4
    adc h
    ld a, [hl]
    ld l, $18
    jr jr_030_7f2a

    ld [hl], a
    ld h, b
    ld b, b
    add b
    ldh [$c0], a
    jr nz, @+$32

    adc b
    ld b, c
    ld h, b
    ld b, b
    ret nz

    ld b, c
    pop bc
    ld b, d
    ld h, c
    nop
    ld h, $3a
    inc e
    ld e, $00
    rrca
    ld [de], a
    rrca
    ld hl, $1d0d
    ld a, a
    inc l
    inc e
    ld [hl], b
    jr nc, @+$38

    nop
    add b
    nop
    ld b, $80
    inc bc
    call nz, Call_030_7f49
    ld bc, $2f26
    jr nc, jr_030_7fbb

    jr jr_030_7fad

    ld [$8036], sp
    ld [hl+], a
    ld [$9808], sp
    sub b
    ldh a, [$60]
    ld h, b
    ret nz

    ld a, [hl+]
    nop
    ld c, $38

jr_030_7fad:
    jr c, @+$68

    ld a, [hl]
    call $00f3
    add [hl]
    cp $8f
    di
    sbc e
    db $fd
    rst $08
    rst $38

jr_030_7fbb:
    nop
    ld h, d
    ld a, [hl]
    and b
    ret nz

    ld d, b
    ld h, b
    jr nz, @+$72

    jr nc, jr_030_7fde

    db $10
    ld hl, $0822
    inc e
    ld b, $1f
    ld h, $33
    inc de
    ld l, $c0
    ld b, b
    ld hl, $0022
    jr nz, @-$3e

    ld h, b
    dec h
    ld h, b
    inc b
    ld [bc], a
    inc c

jr_030_7fde:
    inc b
    nop
    inc b
    inc c
    ld [$1818], sp
    jr nc, @+$76

    jr z, jr_030_7fea

    ld l, d

jr_030_7fea:
    db $f4
    or h
    cp b
    add b
    add b
    nop
    ret nz

    inc bc
    db $10
    rrca
    jr z, @+$1f

    ld d, l
    scf
    db $ed
    nop
    ld a, [bc]
    nop
    ret nz

    nop
    and b
    ld b, b

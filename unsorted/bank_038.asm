; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX

    dec a
    rst $38
    nop
    ld h, c
    ld [hl], l
    ld hl, sp+$06
    rlca
    pop af
    ld c, $e3
    inc e
    or l
    ld hl, $007e
    add b
    db $fd
    nop
    ld a, [$e101]
    ld b, $f7
    db $10
    ld [$10ef], sp
    ld hl, $205f
    ld a, $40
    nop
    ld a, l
    add b
    ld a, [c]
    ld bc, $03e4
    ld sp, hl
    ld b, $00
    db $d3
    inc c
    and a
    jr jr_038_407e

    ld sp, $619e
    nop
    inc a
    jp $8779


    db $e3
    rra
    ld a, a
    add b
    sub b
    and c
    cp a
    ld b, b
    and c
    di
    inc c
    ld sp, hl
    ld b, $04
    db $fc
    inc bc
    ld a, [hl]
    add c
    rst $38
    ld sp, $8fc0
    ld [de], a
    ldh a, [$87]
    ld hl, sp-$11
    ccf
    ret nz

    ld hl, $049f
    ld h, b
    add a
    ld a, b
    ld [$21ff], sp
    adc b
    ld a, a
    sub d
    ld hl, $3fc4
    ld hl, $1fe4
    ld hl, $001c
    db $e3
    ld e, $e1
    ld c, $f1
    add [hl]
    ld sp, hl
    add d
    nop
    db $fd
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rlc h
    db $f4
    push bc

jr_038_407e:
    ld a, [$fee1]
    add hl, hl
    ldh a, [rIE]
    db $10
    db $fc
    rst $38
    cp $41
    rst $30
    ld [$0cf3], sp
    add b
    ld hl, $04fb
    ld sp, hl
    ld b, $79
    add [hl]
    ld a, l
    nop
    add d
    inc a
    jp $fff6


    ld [$fbf7], a
    nop
    rst $20
    reti


    rst $20
    db $fd
    jp $c3bc


    add [hl]
    inc b
    ld sp, hl
    sbc b
    rst $20
    ldh [rIE], a
    ld hl, $ffc0
    nop
    pop bc
    rst $38
    add e
    rst $38
    add a
    rst $38
    ld a, [bc]
    rst $38
    nop
    db $10
    rst $38
    inc bc
    db $fc
    ld b, a
    ld hl, sp-$72
    pop af
    nop
    sbc h
    db $e3
    jr @-$17

    ld sp, $23ce
    call c, $0700
    ld hl, sp-$64
    ld h, e
    jr c, @-$37

    ld [hl], c
    adc [hl]
    nop
    di
    inc c
    db $e3

jr_038_40d9:
    inc e
    rst $00
    jr c, @-$6f

    ld [hl], b
    ld [bc], a
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    ld h, c
    ei
    ld bc, $f604
    add hl, bc
    xor $11
    sbc $21
    dec [hl]
    nop
    add a
    ld a, b
    sub b
    ld l, b
    inc sp
    call z, $8f78
    nop
    call nc, $a60f
    rra
    rrca
    rst $38
    rst AddAToHL
    ld [$c709], sp
    stop
    jr nc, jr_038_413d

    db $10
    rst $38
    ld hl, $3c20
    rst $38
    jr nz, jr_038_40d9

    rlca
    sub c
    rrca
    and c
    nop
    rra
    add c
    ld a, a
    ld b, e
    rst $38
    daa
    rst $38
    ld a, a
    add e
    ld c, a
    inc bc
    rst $38
    rlca
    rst $38
    sbc a
    ld b, a
    nop
    ld c, $40
    db $fd
    ld b, c
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, [$00ff]
    sub l
    add sp, -$4f
    ret z

    dec hl
    ret nc

    inc bc
    ldh a, [rNR50]
    rla
    ldh [rNR42], a

jr_038_413d:
    ccf
    ret nz

    ld hl, $00e0
    ld d, b
    ret nz

    ld bc, $8009
    ld b, c
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp+$00
    di
    ldh a, [$e3]
    ldh a, [$e7]
    ldh [$c6], a
    pop hl
    nop
    call nz, $81f3
    cp $f0
    rrca
    ldh [$1f], a
    add b
    ld hl, $27d8
    cp b
    ld b, a
    ld [hl], c
    adc [hl]
    rst $30
    ld [$ef08], sp
    db $10
    rst $38
    nop
    add hl, bc
    cp $ff
    db $fd
    add b
    ld [hli], a
    db $fc
    set 6, h
    adc e
    db $f4
    or e
    call z, $b700
    ret z

    sub $f9
    ld l, [hl]
    pop af
    inc l
    di
    ld [$ff31], sp
    cp h
    jp $3e21


    pop bc
    ld a, [hl]
    ld b, b
    add c
    ld hl, $dd22
    adc d
    push af
    ret c

    rst $20
    nop
    jr nz, @+$01

    jr z, @+$01

    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    add b
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rrca
    ldh a, [rNR33]
    ld [c], a
    dec sp
    call nz, $8976
    add b
    ld hl, $13ec
    jp hl


    rla
    db $d3
    cpl
    cpl
    ld b, b
    ret nc

    ld hl, $a15e
    ld e, $e1
    ld a, $c1
    nop
    cp b
    rst $00
    add c
    rst $38
    add e
    rst $38
    or l
    ld b, e
    nop
    ld l, c
    add a
    pop hl
    rrca
    inc bc
    rra
    inc bc
    rst $38
    dec c
    rlca
    rst $38
    rrca
    rst $38
    jr nz, jr_038_41fe

    rra
    ld b, l
    add b
    nop
    ld a, [bc]
    ld c, $f1
    add [hl]
    ld a, c
    ld b, $79
    ld b, [hl]
    ld bc, $4339
    inc a
    ld h, e
    inc e
    pop hl
    ld e, $21
    ld [$e19e], sp
    adc a
    ldh a, [rNR42]
    ld b, a
    ld hl, sp+$43
    nop
    db $fc
    nop
    rst $38
    add b

jr_038_41fe:
    ld a, a
    ret nz

    ccf
    rst $38
    add hl, bc
    rst $38
    ld a, a
    rst $38
    cp a
    ld [hli], a
    ccf
    rst JumpTable
    add hl, hl
    nop
    rra
    ld l, a
    sbc a
    rra
    rst $28
    ld e, c

jr_038_4212:
    add b
    ld l, e
    nop
    add h
    inc a
    jp $c03f


    rra
    ldh [$8f], a
    inc b
    ld [hl], b
    sub a
    jr c, @-$76

    rra
    dec sp
    ld a, a
    cp a
    pop de
    dec sp
    ld hl, $3aef
    rra
    rst $38
    rrca
    ld hl, $1020

jr_038_4231:
    rst $38
    ld hl, $ff38
    ld a, b
    rst $38
    ld l, [hl]
    nop
    sbc a
    add e
    rlca

jr_038_423c:
    sub e
    ld bc, $8011
    add l
    nop
    cp $8b
    db $fc
    rst AddAToHL
    ld hl, sp-$09
    ld hl, sp-$11
    jr nz, jr_038_423c

    rst $08
    ld b, c
    sbc a
    ldh [$df], a
    jr nz, jr_038_4231

    dec b
    jr nz, jr_038_4212

    ld b, b
    ld hl, sp+$00
    ld hl, $41f0
    nop
    ldh [rP1], a
    cp $fd
    ld a, [$f8fd]
    rst $38
    sub b
    ld hl, $fffc

jr_038_4269:
    jr nz, jr_038_4269

    rst $38
    db $fd
    cp $40
    rra
    ld hl, $26fc
    ld sp, hl
    inc e
    db $e3
    dec a
    nop
    jp nz, $8679

    di
    inc c
    or $09
    cp h
    ld c, c
    jp $bd21


    jp nz, $b521

    jp z, $0021

    sub l
    ld [$ead5], a
    rlca
    ld hl, sp+$17
    ld hl, sp+$00
    cpl
    ldh a, [$3e]
    pop hl
    ld e, l
    ld [c], a
    ld a, [$00c7]
    ld a, [$f787]
    adc a
    sub c

jr_038_42a1:
    ld l, [hl]
    daa
    call c, Call_038_6b00
    sbc h
    call z, $883b
    ld a, a
    jr @+$01

    nop
    inc e
    rst $38
    ccf
    rst $38
    jp $d33f


    ccf
    inc c
    sbc a
    ld a, a
    rra
    rst $38
    ld hl, $7f2b
    rst $38
    adc d
    jr nz, jr_038_42a1

    ccf
    rst $08
    ld b, c
    rst $00
    ld b, c
    rst $20
    jr nz, jr_038_42e9

    db $e3
    ld b, c
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $00
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ret nz

    jr z, @+$01

    add b
    inc hl
    ccf
    ld hl, $7f80
    inc b
    nop
    rst $38
    ld l, $df
    ld l, a
    sbc a

jr_038_42e9:
    ld h, a
    sbc a
    rst $20
    nop
    rra
    ldh a, [rIF]
    db $f4
    rrca
    ld a, [$7a07]
    ld b, b
    add a
    ld hl, $877b
    inc sp
    rst $08
    add a
    rst $38
    ld [$7fa7], sp
    rst AddAToHL
    ccf
    add hl, sp
    ld a, a
    adc a
    scf
    nop
    rst $08
    ld b, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    call z, $0f00
    rst $08
    rlca
    ld b, e
    add a
    ld h, [hl]
    add e
    inc hl
    nop
    jp $c331


    dec e
    db $e3

Call_038_431f:
    ld c, $f1
    rla
    nop
    rst $28
    rlca
    rst $38
    rst $20
    rst $38
    dec sp
    rst $38
    rra
    nop
    rst $38
    daa
    rst JumpTable
    cp e
    rst $00
    sbc l
    db $e3
    rst $20
    ld b, c
    rra
    ld hl, $1fe3
    di
    rrca
    pop af
    add c
    ldh a, [$27]
    ld hl, $312d
    rst $00
    ccf
    ret


    scf
    ld [$6799], sp
    or c
    ld c, a
    ld hl, $9f61
    ld h, e
    ld a, [de]
    sbc a
    jp $2f3f


    ld h, c
    rst AddAToHL
    ld b, c
    ldh [$50], a
    add b
    ld hl, $41d0
    db $ec
    add b
    di
    add b
    inc b
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    ret nz

    call z, $1700
    inc sp
    nop
    ld a, a
    ld sp, $ffff
    rst $20
    jr z, jr_038_4374

jr_038_4374:
    rst $38
    ld bc, $0820
    ld b, c
    inc c
    rst $38
    ld a, [bc]
    inc [hl]
    rst $38
    add hl, bc
    adc c

Call_038_4380:
    cpl
    jr nz, @+$43

    ld h, b
    rst $38
    rlca
    and a
    rst $38
    jr z, @+$01

    cpl
    ld b, e
    cpl
    and c
    ld bc, $ff1e
    and b
    rst $38
    sbc b
    rst $38
    inc b
    rrca
    add hl, bc
    ld bc, $ff79
    add b
    rst $38
    ld h, c
    rst $38
    ld [de], a
    rrca
    add hl, bc
    ld bc, $ffc3
    inc h
    rst $38
    db $e4
    rst $38
    inc hl
    rrca
    add hl, bc
    ld bc, $ff87
    ld c, b
    rst $38
    ld c, a
    rst $38
    ret z

    rrca
    add hl, bc
    or b
    ld hl, $4180
    ld h, a
    ld e, $ff
    ld hl, $6cff
    jr nz, @+$43

    daa
    ld bc, $fd41

jr_038_43c6:
    ld a, b
    rst $38
    ld h, b
    ld b, l
    add c
    rst $28
    db $e3
    rst $38
    inc d
    rst $38
    rst $30
    jr z, @+$01

    inc b
    ld c, c
    ld bc, $8f81
    rst $38
    ld d, c
    nop
    rst $38
    pop de
    rst $38
    ld de, $1cff
    db $e3
    ld [hli], a
    inc de
    db $dd
    jr nz, jr_038_43c6

    dec h
    ld [bc], a
    db $fd
    daa
    dec h
    sub b
    dec a
    add b
    ld a, a
    ld hl, $639c
    and d
    ld e, l
    ldh a, [$61]
    daa
    cpl
    ld h, c
    adc b
    ld [hl], a
    xor b
    ld d, a
    sbc l
    ld hl, $af50
    ld hl, $01af
    inc e
    ld [$8841], sp
    rrca
    inc c
    jr z, @+$01

    daa
    rrca
    dec c
    add d
    rst $38
    inc a
    adc b
    rrca
    dec c
    ld a, [bc]
    rst $38
    pop af
    rrca
    dec c
    jr nz, @+$01

    call nc, $ff20
    inc bc
    rrca
    dec bc
    ld c, b
    rst $38
    ld b, a
    rst $38
    add b
    ld [c], a
    rrca
    dec bc
    dec bc
    inc c
    ld h, c
    ld hl, $1eff
    rrca
    dec c
    ld a, c
    ld sp, $40ff
    ld b, c
    rrca
    ld a, [bc]

jr_038_443a:
    inc d
    rst $38
    db $e3
    rra
    dec c
    db $10
    ld d, c
    rst $38
    adc a
    rrca
    dec c
    ld a, h
    add e
    ld b, b
    cp a
    inc sp
    ld b, c
    cp [hl]
    dec h
    inc hl
    ld b, d
    cp l
    inc hl
    or e
    nop
    jp $243c


    db $db
    db $e3
    inc e
    jr nz, jr_038_443a

    inc h
    rst AddAToHL
    jr z, jr_038_448a

    inc b
    ei
    ld hl, $20df
    add a
    inc hl
    add h
    ld a, e
    ld b, h
    cp e
    inc hl
    cpl
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b

jr_038_448a:
    sub b
    jr nz, jr_038_44cd

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a
    ld bc, $03ec
    pop de
    ld c, $ff
    ld d, l
    ld d, l
    nop
    ld [bc], a
    ld [bc], a
    inc c
    db $10
    jr nz, jr_038_44c5

    ld c, b
    sbc b
    ld d, b
    ld d, $00
    jr nc, jr_038_451d

    and a
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    di
    rst $00
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rlca
    rlca
    rlca
    rrca
    ld b, $1f
    ld b, $3e
    ld b, $76
    ld b, $05

jr_038_44c5:
    ld d, b
    ld b, $c7
    rlca
    add a
    rlca
    rrca
    ccf

jr_038_44cd:
    or $c6
    nop
    nop
    nop
    rst $38
    nop
    ld d, l
    ld h, [hl]
    ccf
    nop
    ld a, b
    nop
    and $c6
    and $e6
    rst $20
    ld h, a
    ld l, [hl]
    ld a, [hl]
    rlca
    ldh a, [rTMA]
    cp $e6
    and $c6
    add $03
    nop
    nop
    rst $38
    nop
    ld a, h
    ld h, [hl]
    nop
    nop
    rlca
    nop
    ld a, a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    ld h, e
    ld h, b
    dec d
    nop
    ld h, [hl]
    ld h, a
    ld h, b
    ld l, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    ld a, [hl]
    cp $3c
    ldh a, [rP1]
    nop
    rst $38
    dec b
    ld d, b
    ld h, [hl]
    nop
    nop
    ld bc, $e600
    rst $20
    rst $28
    cp $fe
    ld l, [hl]
    rst $38
    ld a, h
    rrca
    ret nc

jr_038_451d:
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, a
    inc bc
    nop
    nop
    rst $38
    ld bc, $0155
    adc h
    nop
    jr c, jr_038_452e

jr_038_452e:
    pop af
    nop
    rst $00
    dec e
    ld sp, $81e1
    push de
    ld d, b
    ld bc, $1f07
    dec a
    pop af
    pop bc
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    sbc b
    nop
    nop
    rlca
    nop
    cp $f0
    ld hl, sp-$08
    ld d, b
    ret nc

    sbc b
    sbc e
    cp $fc
    ld hl, sp-$08
    ld hl, sp-$65
    ld b, $00
    nop
    rst $38
    rlca
    ld bc, $f80f
    nop
    sbc h
    nop
    rra
    inc c
    inc c
    inc e
    inc c
    ld a, h
    inc c
    rst $08
    dec e
    ld d, b
    inc c
    adc a
    rrca
    rrca
    inc a
    ld a, h
    call $001f
    nop
    rst $38
    dec b
    ld bc, $01cc
    nop
    rlca
    nop
    call c, $0ffc
    inc c
    ld e, $0c
    ld a, h
    inc c
    db $ec
    dec d
    ld d, b
    inc c
    call z, $0dcc
    rrca
    inc e
    inc a
    db $ec
    add b
    nop
    nop
    rst $38
    rlca
    rst $38
    jp $009c


    jr c, jr_038_459b

jr_038_459b:
    db $e3
    push de
    nop
    jp $dbf3


    db $db
    ei
    ei
    ei
    ei
    rst $30
    nop
    nop
    rst $38
    ldh a, [$d4]
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    rlca
    inc a
    ldh a, [$f0]
    dec d
    ld b, $00
    ldh a, [$f0]
    ld bc, $781f
    di
    ldh a, [$fe]
    ldh a, [$f8]
    rst $38
    ld d, l
    ld d, l
    nop
    inc b
    add hl, de
    inc hl
    ld b, [hl]
    add h
    inc c
    jr jr_038_45e6

    ld d, l
    ld d, [hl]
    nop
    db $10
    or b
    ld hl, $c361
    rlca
    ld e, $ff
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]

jr_038_45e6:
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l

Call_038_461c:
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38

jr_038_4626:
    inc bc
    jr nz, jr_038_4626

    cp $00  ; and a / or a
    ld hl, sp+$00
    db $fc
    ld a, b
    rst $08
    call $edcd
    call $c1c1
    dec e
    nop
    call $c1c3
    rst $08
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, b
    ld h, b
    add b
    nop
    rst $38
    nop
    ld d, l
    sbc e
    rlca
    nop
    ccf
    nop
    rst $38
    di
    ei
    ei
    db $db
    sbc a
    cp e
    db $db
    push de
    nop
    sbc e
    cp a
    rst $38
    db $db
    ei
    ei
    ei
    di
    nop
    nop
    nop
    rst $38
    nop
    ld a, h
    ld [hl], $c7
    nop
    ld e, $00
    cp $e6
    or $f6
    or $37
    scf
    rrca
    ret nc

    ld bc, $f3f7
    pop af
    pop hl
    rrca
    inc a
    nop
    nop
    rst $38
    dec c
    ld d, h
    ld h, b
    add b
    nop
    nop
    nop
    ld h, c
    ld h, a
    ld l, h
    ld a, b
    ldh a, [$e0]
    dec [hl]
    ld d, b
    add b
    ldh [$c0], a
    add c
    add a
    cp h
    ldh [$03], a
    nop
    nop
    rst $38
    dec c
    db $fc
    ld h, e
    ld e, $00
    jr c, jr_038_469d

jr_038_469d:
    db $e3
    ld l, e
    ld l, e
    or $80
    ld a, a
    rst $38
    ld [hl], a
    ld h, e
    pop af
    ld b, c
    ret nz

    nop
    nop
    rst $38
    rlca
    ld d, h
    ld h, [hl]
    inc bc
    nop
    ld c, $00
    ld a, [hl]
    ld h, a
    ld l, a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rla
    ldh a, [$66]

Call_038_46bc:
    rst $38
    ld a, [hl]
    and $e6
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    call z, $0001
    rrca
    nop
    rst $38
    ld a, c
    db $fd
    db $fd
    db $fc
    ldh a, [$50]
    call z, $fcfc
    db $fc
    db $fc
    call $7edf
    nop
    nop
    rst $38
    nop
    db $fc
    ld h, e
    cp $00  ; and a / or a
    ldh [rP1], a
    ei
    ld sp, hl
    ei
    ei
    ld h, b
    ld h, b
    push af
    ld d, b
    ld h, b
    ld h, e
    ld l, [hl]
    db $fc
    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    ld d, h
    jr nc, jr_038_4708

    nop
    inc a
    nop
    ld hl, sp-$20
    pop af
    ldh a, [$f3]
    ld [hl], $3c
    ld hl, sp+$70
    inc a
    ld d, b
    ret nz

jr_038_4708:
    ldh a, [$e0]
    ld bc, $c300
    rst $08
    ld e, $00
    nop
    rst $38
    dec b
    db $fc
    ld sp, $0038
    ldh [rP1], a
    pop af
    or c
    dec [hl]
    dec [hl]
    db $f4
    nop
    ccf
    ld a, a
    ei
    dec sp
    or c
    ld sp, $2020
    nop
    nop
    nop
    rst $38
    dec c
    ld d, h
    or e
    nop
    nop
    nop
    nop
    or a
    cp a
    cp e
    di
    rst $38
    cp a
    rra
    ldh a, [$b3]
    rst $38
    cp a
    cp e
    rlca
    nop
    nop
    rst $38
    rlca
    inc bc
    ld a, e
    inc e
    nop
    jr nc, jr_038_4749

jr_038_4749:
    ei
    ld l, a
    ld h, e
    ld a, a
    ld h, e
    db $e3
    ld h, e
    ccf
    nop
    ld h, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ei
    ld a, e
    rst $08
    nop
    nop
    rst $38
    dec bc
    inc bc
    rst $30
    rrca
    nop
    inc a
    nop
    rst $20
    or $36
    ld [hl], $36
    ld [hl], $36
    add b
    and b
    rst $30
    rst $20
    ld [hl], a
    db $76
    ccf
    ld [hl], $7e
    ld [hl], $37
    scf
    add b
    nop
    nop
    rst $38
    nop
    ld a, h
    inc sp
    nop
    nop
    rlca
    nop
    cp a
    sbc [hl]
    cp a
    cp a
    ccf
    adc a
    add a
    inc bc
    ld c, $00
    adc a
    adc [hl]
    rst $38
    inc c
    db $ec
    inc c
    adc h
    adc h
    adc h
    adc h
    rst $38
    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ld a, [hl]
    add b
    db $fc
    nop
    ldh a, [rP1]
    ld a, [de]
    jp $0c00


    ld b, l
    jr nz, @+$05

    add a
    ld bc, $0004
    ld b, $01
    sbc h
    inc bc
    cp a
    jr jr_038_47d2

jr_038_47d2:
    inc b
    ccf
    rrca
    rst JumpTable
    rra
    add hl, de
    ld b, b
    add hl, sp
    add hl, de
    nop
    ld a, c
    add hl, de
    sbc c
    add hl, de
    dec de
    dec de
    ccf
    dec de
    ld [bc], a
    rst $38
    rra
    ld a, a
    adc [hl]
    ret nz

    nop
    cp a
    rra
    inc b
    nop
    cp l
    add hl, de
    reti


    sbc c
    and b
    sbc e
    sbc c
    ld [$99bf], sp
    db $fd
    sbc c
    dec l
    rst JumpTable
    rst JumpTable
    rst $28
    ld [hli], a
    rst $08
    rrca
    rst JumpTable
    ret nz

    nop
    sbc e
    ld b, b
    sbc a
    ld bc, $bc98
    sbc b
    ld hl, sp-$68
    ret c

    sbc b
    jr nz, jr_038_4816

    sbc e
    sbc b
    sbc [hl]
    sbc b

jr_038_4816:
    cp b
    dec hl
    jr @-$7b

    add b
    rst JumpTable
    dec e
    inc bc
    ld a, [$f0f1]
    pop af
    ret nz

    ld [hli], a
    pop bc
    jp nz, $f281

    pop bc
    ret c

    ld b, c
    ldh a, [rDIV]
    pop bc
    ld [c], a
    pop bc
    push bc
    inc bc
    nop
    ld d, c
    add b
    sub c
    nop
    inc hl
    nop
    add $00
    nop
    inc c
    nop
    dec sp
    nop
    db $e4
    nop
    add hl, de
    nop
    nop
    ld [hl], d
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    add e
    nop
    ld a, b
    add a
    nop
    rst $38
    nop
    sub d
    nop
    ld [de], a
    nop
    inc h
    nop
    ld c, b
    nop
    nop
    sub b
    nop
    jr nz, jr_038_4864

jr_038_4864:
    ld b, b
    nop
    add b
    nop
    ld d, b
    ld bc, $0801
    ld b, $27
    ld [$0132], sp
    db $ec
    inc bc
    ld bc, $0ed1
    nop
    rst $38
    ld [bc], a
    nop
    ld [bc], a
    dec sp
    ld [$1050], sp
    dec e
    ld [$2520], sp
    ld [$0098], sp
    jr nc, jr_038_4888

jr_038_4888:
    nop
    ld [hl], c
    nop
    and a
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    ld [bc], a
    di
    nop
    rst $00
    nop
    nop
    rst $38
    ld c, b
    ld [$4000], sp
    rlca
    nop
    ld [$060f], sp
    rra
    ld b, $3e
    ld b, $04
    db $76
    ld b, $c7
    rlca
    add a
    dec bc
    ld [$063f], sp
    ld [$06f6], sp
    add $06
    ld a, [de]
    ld [$3fff], sp
    nop
    nop
    ld a, b
    nop
    and $c6
    and $e6
    rst $20
    ld h, [hl]
    nop
    ld h, a
    ld h, [hl]
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]

jr_038_48c8:
    ld h, [hl]
    cp $e6
    ld a, [bc]
    and $c6
    add $06
    nop
    jr nz, jr_038_48d6

    ccf
    jr jr_038_48dd

jr_038_48d6:
    ld bc, $7f00
    inc a
    rst $38
    ld a, [hl]
    rst $20

jr_038_48dd:
    ld h, [hl]
    nop
    db $10
    ld [$6063], sp
    ld h, a
    ld h, b
    dec h
    db $10
    db $76
    ld h, [hl]
    ld a, [hl]
    ld [$fe7e], sp
    inc a
    ldh a, [$1f]
    jr jr_038_48f3

    nop

jr_038_48f3:
    and $00
    ld h, [hl]
    rst $20
    ld h, [hl]
    rst $28
    ld h, [hl]
    cp $66
    cp $01
    ld l, [hl]
    rst $38
    ld a, h
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld a, [hli]
    jr jr_038_48c8

    ld c, a
    ld [$103f], sp
    adc h
    nop
    jr c, jr_038_4910

jr_038_4910:
    pop af
    nop
    nop
    rst $00
    ld bc, $011d
    ld sp, $e101
    ld bc, $8100
    ld bc, $0101
    rlca
    ld bc, $011f
    ld bc, $013d
    pop af
    ld bc, $01c1
    add b
    ld e, a
    jr z, jr_038_4933

    cp $f0
    ld hl, sp-$08

jr_038_4933:
    sbc b
    nop
    jr z, @-$63

    sbc b
    add hl, bc
    cp $98
    db $fc
    ld hl, sp+$0f
    db $10
    sbc e
    sbc b
    and b
    ld [$ff00], sp
    ld hl, sp+$00
    sbc h
    nop
    rra
    rrca
    rrca
    nop
    rrca
    inc c
    inc c
    inc e
    inc c
    ld a, h
    inc c
    rst $08
    inc h
    rrca
    adc a
    ld a, [bc]
    db $10
    inc c
    inc a
    dec bc
    ld [$0ccd], sp
    ld d, b
    rra
    rra
    ld [$3f01], sp
    ld [$ccdc], sp
    db $fc
    call z, $0f10
    inc c
    ld e, $13
    ld [$ccec], sp
    call z, $10cc
    dec c
    inc c
    rrca
    dec hl
    ld [$0c3c], sp
    db $ec
    inc c
    and h
    ld e, a
    db $10
    sbc h
    ld a, a
    ld [$c3e3], sp
    nop
    ld d, b
    di
    jp $db55


    ld bc, $fb08
    nop
    ld [$1ff7], sp
    add hl, hl
    ldh a, [rP1]
    ld [$87a2], sp
    db $10
    inc a
    add hl, bc
    jr jr_038_49a0

    nop

jr_038_49a0:
    rra
    inc de
    add hl, bc
    di
    ld l, b
    ldh a, [$95]
    ld [$081f], sp
    inc b
    ld l, e
    add hl, bc
    inc hl
    nop
    ld b, [hl]
    jr z, jr_038_49b2

jr_038_49b2:
    add h
    ld h, l
    add hl, bc
    jr @+$03

    ld [$0010], sp
    or b
    ld [bc], a
    nop
    ld hl, $6100
    nop
    jp $082f


    ld e, $8a
    rra
    ld [$0064], sp
    ret


    and c
    add hl, hl
    ld d, b
    and e
    add hl, bc
    and b
    adc c
    ld bc, $e108
    nop
    db $e3
    rst $08
    add hl, bc
    call nz, $f900
    stop
    nop
    rst $38
    inc h
    inc bc
    jp nz, $0201

    ld bc, $0400
    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    inc b
    ld a, [hl-]
    ld bc, $01e2
    add d

jr_038_49f5:
    rrca
    jr jr_038_4a0a

jr_038_49f8:
    dec c
    inc bc
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    nop
    jr nz, jr_038_4a08

    or d
    ld [hl], $40
    add b
    rra

jr_038_4a08:
    jr nz, jr_038_4a0f

jr_038_4a0a:
    add d
    inc bc
    dec b
    ld a, [de]
    ld b, b

jr_038_4a0f:
    jr nc, jr_038_4a11

jr_038_4a11:
    ld [bc], a
    nop
    inc sp
    inc sp
    dec sp
    dec sp
    ccf
    nop
    ld [$0037], sp
    scf
    ccf
    inc sp
    ld a, a
    inc sp

jr_038_4a21:
    rst $38
    inc sp
    ei

jr_038_4a24:
    add hl, hl
    inc sp
    di
    ld bc, $e008
    rra
    jr z, jr_038_4a3c

    nop
    dec de
    stop
    ld a, b
    jr nc, jr_038_4a24

    jr nc, jr_038_49f5

    ccf
    cp a
    ccf
    ld c, h
    jr nc, jr_038_4a3c

jr_038_4a3c:
    ld [$3033], sp
    ld de, $3f18
    jr c, @+$65

    ld h, e
    nop
    ld h, a
    ld h, e
    ld l, a
    ld h, e
    ld a, e
    ld h, e
    ld a, e
    ld l, e
    ld b, b

jr_038_4a4f:
    ld a, a
    nop
    ld [$7fff], sp
    rst $30
    ld [hl], a
    ld h, e
    ld h, e
    jr c, jr_038_4aa1

    ld b, c
    ld h, b
    ld a, [bc]
    nop
    jr jr_038_4a21

    add hl, bc
    nop
    sbc [hl]
    nop
    ld h, b
    ldh a, [$91]
    ld [$111d], sp
    inc a
    nop
    ld h, b
    nop
    ret nz

    add sp, $38
    ld de, $1240
    nop
    jr jr_038_49f8

    inc hl
    ld a, [bc]
    ld a, [hl]
    ld a, [hl]
    db $76
    adc d
    push af

jr_038_4a7e:
    add hl, bc
    ldh [$60], a
    ld l, [hl]
    nop
    ld [$fd67], sp
    add hl, bc
    ld a, [hl]
    db $10
    ld a, [hl]
    ld a, [hl]
    inc a
    rra
    jr nc, jr_038_4a4f

    nop
    db $fc
    ld a, b
    ld b, $fc
    db $fc
    rst $08
    call z, $a9ce
    add hl, bc
    and e
    ld de, $0afd
    db $fc
    rst $38
    db $fc

jr_038_4aa1:
    adc $07
    ld [$1f38], sp
    jr z, jr_038_4ac4

    ld [bc], a
    nop
    cp $c6
    cp $ee
    cp $00  ; and a / or a
    ld [$04ff], sp
    cp $fe
    sub $f6
    add $83
    ld a, [bc]
    add $c7
    xor b
    ld bc, $0f08
    sbc a
    jr c, @-$02

    nop

jr_038_4ac4:
    ld [$c0c0], sp
    ldh a, [rSTAT]
    ret nz

    rlca
    db $10
    ret c

    ret nz

    ret c

    ret nz

    ld hl, sp+$09
    jr jr_038_4a7e

    rst JumpTable
    jr nc, jr_038_4ad8

    dec b

jr_038_4ad8:
    dec bc

jr_038_4ad9:
    inc b
    ld bc, $0808
    and c
    add hl, bc
    ld de, $0008
    inc de
    nop
    ld [hl], $7b
    add hl, bc
    ld h, b
    nop
    ld b, a
    stop
    sbc [hl]
    ld bc, $201f
    adc c
    inc bc
    db $10
    ld bc, $2200
    ld bc, HeaderSGBFlag

jr_038_4af9:
    ld c, b
    ld bc, $0190
    nop
    and b
    ld bc, $0120
    ld b, d
    ld bc, HeaderGlobalChecksum
    ld [bc], a
    db $e4
    add hl, de
    sbc d
    ld h, c
    dec h
    jp $201f


    sub b
    nop
    ret nz

    db $10
    add b
    and e
    nop
    ld c, h
    add b
    jr jr_038_4b1a

jr_038_4b1a:
    add b
    or c
    nop
    and d
    nop
    ld h, h
    add b
    ld b, h
    nop
    add b
    ld c, b
    add b
    ld [$1080], sp
    add b
    and c
    ld l, [hl]
    ret nz

    rra
    jr nz, jr_038_4b87

    inc de
    jr nz, @-$09

    jr jr_038_4b88

    ld a, [bc]
    ld a, l
    add hl, de
    inc bc
    jr z, jr_038_4b3b

jr_038_4b3b:
    ld c, $07
    add hl, bc
    ld hl, sp+$7f
    jr z, jr_038_4b48

    nop
    rlca
    nop
    ld bc, $030f

jr_038_4b48:
    rra
    inc bc
    dec de
    inc bc
    ld [hl], e
    jr nc, jr_038_4b52

    db $e3
    rst AddAToHL
    ld a, [bc]

jr_038_4b52:
    and c
    add hl, de
    inc bc
    rrca
    inc bc
    jr jr_038_4ad9

    rra
    jr z, @+$09

    nop
    rst $38
    di
    di
    di
    jp $0300


    inc bc
    inc bc
    di
    db $e3
    di
    di
    dec sp
    add b
    sbc a
    add hl, bc
    or a
    inc sp
    rst $30
    di
    rst $38
    db $e3
    inc c
    add b
    rra
    jr z, jr_038_4af9

    nop

jr_038_4b7a:
    di
    pop af
    di
    di
    rlca
    and b
    ld b, c
    ld [$27fb], sp
    ld [$03e7], sp

jr_038_4b87:
    rst $08

jr_038_4b88:
    inc bc
    sbc e
    adc b
    add hl, bc
    ld [$f1fb], sp
    ldh a, [$1f]
    jr z, @+$05

    nop
    rst $30
    jr nz, jr_038_4b7a

jr_038_4b97:
    rst $38
    scf
    ld [$3333], sp
    ld h, e
    inc bc
    add e
    db $76
    inc bc
    ld b, $08
    nop
    ld [$0828], sp
    db $e3
    ld d, a
    ld [$1800], sp
    ldh [$60], a
    nop
    ld d, a
    db $10
    rla
    jr nc, jr_038_4b97

    db $e3
    ld [hl], a
    ld [hl], e
    ccf
    ld a, [hl-]
    inc sp
    ld a, e
    rst $38
    add hl, bc
    ld b, b
    inc c
    ccf
    add hl, hl
    rst $30
    nop
    ld [$8207], sp
    ld [hl], a
    dec bc
    ld sp, hl
    pop af
    pop af
    pop af
    pop bc
    add e
    dec de
    db $fd
    ld h, b
    pop af
    dec bc
    ld [$381f], sp
    rst $28
    rst $20
    rst $28
    rst $28
    adc h
    add b
    nop
    ld [$8f8f], sp
    add a
    add a
    add e
    add b
    add [hl]
    ld bc, $8c80

jr_038_4be8:
    add b
    cp a
    adc a
    rst $38
    adc a
    ld a, a
    jr nc, jr_038_4bf0

jr_038_4bf0:
    inc c
    nop
    reti


    ret nz

    di
    ret nz

    ld h, [hl]
    nop
    nop
    call c, $f800
    add b
    ldh a, [$c0]
    ret nz

    ret nz

    nop
    pop bc
    ret nz

    jp $c7c0


    ret nz

    adc $80
    ld d, [hl]
    inc a
    rra
    jr z, jr_038_4bf0

    rrca
    dec bc
    add [hl]
    ld a, l
    add hl, bc
    nop
    db $10
    ld a, b
    and d
    cp e
    ld a, [bc]
    call z, $1b2f
    add hl, de
    nop
    ld [hl], e
    rra
    jr z, jr_038_4be8

    nop
    inc bc
    ld c, $01
    ld e, $01
    jr c, jr_038_4c2c

    ld [hl-], a

jr_038_4c2c:
    ld [bc], a
    ld bc, $017c
    ld [hl], b
    ld bc, $7d60
    add hl, bc
    ld e, h
    ld bc, $d801
    ld bc, $019a
    dec [hl]
    inc bc
    rst $38
    ld [bc], a
    jr c, @-$1e

    dec b
    dec h
    rst $38
    ld [hl-], a
    sub l
    ld a, [bc]
    rrca
    rra
    rra
    add hl, de
    add hl, de
    nop
    add hl, sp
    add hl, de
    jr c, jr_038_4c6a

    ld a, e
    dec de
    ld e, e
    dec de
    nop
    reti


    add hl, de

jr_038_4c59:
    reti


    add hl, de
    rst JumpTable
    rra
    sbc a
    rrca
    add b
    rra
    ld sp, $0081
    cp a
    ld e, $bf
    cp a
    or e
    nop

jr_038_4c6a:
    or e
    or a
    or e
    ccf
    inc sp
    cp e
    or e
    di
    ld [$ffb3], sp
    cp a
    rst $38
    dec c
    ld [$33b3], sp
    ld bc, $1f81
    jr z, @-$3d

    nop
    db $e3
    ld h, e
    rst $30
    ld [hl], a
    ld sp, hl
    ld [de], a
    sub b
    nop
    db $10
    ld l, e
    ld l, e
    add hl, bc
    inc de
    ld [hl], e
    ld h, e
    ld h, e
    ld h, e
    add b
    ld e, a
    ld [hl-], a
    call z, $ff00
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld [hl], a
    nop
    ld h, b
    ld h, e
    ld h, b
    cp $7e
    cp $7e
    ld h, b
    adc h
    nop
    ld [$6061], sp
    ld a, a
    ld de, $1f08
    ld c, e
    ld bc, $b49f
    db $d3
    inc c
    pop hl
    rst JumpTable
    inc c
    db $dd
    inc d
    ld h, c
    db $dd
    inc c
    dec b
    ld bc, $1910
    ld bc, $9f30
    add hl, sp
    add a
    add [hl]
    adc a
    add [hl]
    ld [bc], a
    cp [hl]
    add [hl]
    or $86
    and $86
    nop
    jr nz, jr_038_4c59

    inc b
    add [hl]
    rst $38
    or $fe
    or $5f
    ld sp, $00e3
    inc b
    rst $08
    call $edef
    db $fd
    nop
    ld [$dddd], sp
    inc bc
    db $dd
    call $cdfd
    db $ed
    call $2000
    ccf
    inc sp
    jr nz, @-$7e

    nop
    dec e
    dec h
    cp b

jr_038_4cf7:
    cp b
    db $fc
    ld hl, sp-$02
    nop
    ldh a, [$be]
    cp b
    sbc h
    sbc b
    cp h
    sbc b
    ld hl, sp-$10
    ld bc, $3f08
    jr nc, @+$01

    ld [bc], a
    ld a, [hl-]
    nop
    ld d, c
    add b
    sub c
    nop
    inc hl
    nop
    add $00
    nop
    inc c
    nop
    dec sp
    nop
    db $e4
    nop
    add hl, de
    nop
    nop
    ld [hl], d
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    add e
    nop
    ld a, b
    add a
    nop
    rst $38
    nop
    sub d
    nop
    ld [de], a
    nop
    inc h
    nop
    ld c, b
    nop
    nop
    sub b
    nop
    jr nz, jr_038_4d3e

jr_038_4d3e:
    ld b, b
    nop
    add b
    nop
    ld d, b
    ld bc, $0801
    ld b, $27
    ld [$0132], sp
    db $ec
    inc bc
    nop
    pop de
    ld c, $00
    rst $38
    ld [bc], a
    nop
    inc b
    nop
    inc b
    ld [$1100], sp
    nop
    ld [hli], a
    dec h
    jr jr_038_4cf7

    nop
    nop
    jr nc, jr_038_4d63

jr_038_4d63:
    ld [hl], c
    nop
    and [hl]
    ld b, b
    ld l, h
    add b
    nop
    ld a, b
    add b
    di
    nop
    rst $00
    nop
    nop
    rst $38
    ld b, $06
    nop
    jr jr_038_4d77

jr_038_4d77:
    ld h, b
    scf
    ld [$2000], sp
    rlca
    nop
    nop
    jr c, jr_038_4d81

jr_038_4d81:
    ret nz

    nop
    inc bc
    nop
    inc e
    ld [hl], $00
    ldh a, [$63]
    ld [$0815], sp
    rst $38
    jr @+$2a

    inc de
    ld [$230f], sp
    nop
    ld a, h
    dec de
    ld [$000f], sp
    ld a, [hl]
    dec b
    ld [$3800], sp
    dec l
    rst $38
    inc c
    ccf
    ld [$2b70], sp
    ld [$1013], sp
    ld bc, $081d
    ld c, d
    cp $1b
    ld b, b
    nop
    rra
    rra
    ld [$1307], sp
    ld [$007f], sp
    ld a, $7e
    ld a, [hl]
    ld a, h
    ld h, b
    ldh a, [$60]
    ldh [rP1], a
    ld h, b
    cp $7c
    ld a, [hl]
    ld a, $06
    ld b, $07
    inc c
    ld b, $1f
    ld b, $7e
    ld [de], a
    ld [$08c5], sp
    rst $38
    ret nz

    nop
    nop
    add c
    nop
    ld a, a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    and b
    nop
    ld [$0167], sp
    ld [$666e], sp
    cp $66
    cp $28
    ld a, [hl]
    cp $0f
    jr jr_038_4df0

    rra

jr_038_4df0:
    jr z, jr_038_4e55

    ld h, e
    ld h, a
    nop
    ld h, e
    ld a, a
    ld h, e
    ld a, e
    ld h, e
    db $e3
    ld h, e
    ld [hl], a
    nop
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    db $76
    ld a, [hl]
    ld a, $3e
    inc b
    inc a
    inc a
    inc e
    ld a, h
    jr jr_038_4e80

    ld [$e1ff], sp
    nop
    nop
    pop bc
    nop
    cp a
    ccf
    ccf
    ccf
    inc sp
    nop
    jr nc, jr_038_4e52

    jr nc, jr_038_4e5a

    jr nc, @+$41

    ccf
    ld a, a
    ld [bc], a
    ccf
    ldh a, [$30]
    or b

jr_038_4e27:
    jr nc, jr_038_4e5a

    add hl, bc
    ld [$223f], sp
    ccf
    ld c, $1f
    ld [$001e], sp
    inc a
    cpl
    add hl, bc
    ldh a, [$a2]
    dec h
    ld [$dd03], sp
    ld [$000e], sp
    ld e, $c5
    ld [$80f8], sp
    dec c
    jr jr_038_4e55

    ld bc, $0738
    nop
    rst $38
    ld c, $a8
    ld e, c
    add hl, bc
    jr jr_038_4e65

jr_038_4e52:
    add hl, bc
    ld [c], a
    ld h, e

jr_038_4e55:
    add hl, de
    jr jr_038_4e58

jr_038_4e58:
    inc sp
    ld [bc], a

jr_038_4e5a:
    nop
    ld l, a
    nop
    call c, $b800
    ld sp, $7008
    inc bc
    add b

jr_038_4e65:
    jr nz, jr_038_4e27

    nop
    rst $38
    ld b, b
    reti


    ld [$111d], sp
    or b
    ld d, l
    ld de, $1318
    add hl, de
    add hl, bc
    jr nz, jr_038_4e98

    nop
    ld b, a
    nop
    ld d, b
    ld c, h
    ld e, a
    ld [$6b04], sp

jr_038_4e80:
    add hl, bc
    inc hl
    nop
    ld b, [hl]
    nop
    ld b, c
    add h
    dec a
    jr jr_038_4ec2

    nop
    ld d, b
    nop
    or b
    dec de
    ld [$6114], sp
    nop
    jp $086d


    ld e, $1f

jr_038_4e98:
    ld [$0064], sp
    ld d, h

jr_038_4e9c:
    ret


    and c
    add hl, hl
    ld d, b
    and e
    add hl, bc
    and b
    ld bc, $e108
    nop
    ld b, h
    db $e3
    ld l, e
    ld [$00c4], sp
    adc h
    dec l
    ld [$ff00], sp
    nop
    inc h
    inc bc
    jp nz, $0201

    ld bc, $0304
    nop
    ld [$0a07], sp
    dec b
    ld d, $09

jr_038_4ec2:
    ld a, [hl-]
    ld bc, $e210
    ld bc, $0f82
    jr jr_038_4edd

    dec c
    ld h, $19
    inc c

Call_038_4ecf:
    ld c, h
    inc sp
    nop
    rst $38
    nop
    jr nz, jr_038_4edb

    or d
    ld b, b
    add b
    pop hl
    rra

jr_038_4edb:
    jr nz, jr_038_4ee2

jr_038_4edd:
    or d
    ld b, b
    jr nc, jr_038_4ee2

jr_038_4ee1:
    nop

jr_038_4ee2:
    ccf
    ld e, $24
    ld de, $3b00
    inc sp
    ld a, b
    jr nc, @+$72

    jr nc, jr_038_4ee1

    inc sp
    nop
    or e
    inc sp
    inc sp
    inc sp
    ld a, a
    ccf
    rst $38
    ld e, $7c
    jp $281f


    ld b, e
    add hl, bc
    rra
    ld [$0814], sp
    nop
    jr jr_038_4f3c

    inc sp
    nop
    ccf
    inc sp
    ld a, a
    inc sp
    rst $38
    ccf
    cp $1e
    jp z, $0900

    nop
    jr jr_038_4e9c

jr_038_4f15:
    nop
    dec sp
    ld [$533b], sp
    ld de, $7477
    scf
    dec a
    db $10
    ccf
    db $10
    dec h
    db $10
    jr c, jr_038_4f45

    jr z, jr_038_4f28

jr_038_4f28:
    nop
    and b
    dec de
    db $10
    inc c
    nop
    ld [$0c0d], sp
    rrca
    inc c
    inc a
    add hl, bc
    inc c
    ld l, h
    inc c
    call z, $100c
    inc c

jr_038_4f3c:
    ld bc, $381f
    add d
    ld d, a
    db $10
    ccf
    inc sp
    ld a, e

jr_038_4f45:
    inc sp
    di
    ld h, e
    ld c, b
    ei
    jr nz, @+$35

    ldh [$1f], a
    ld c, b
    or a
    or e
    rst $38
    di
    ei

jr_038_4f54:
    ld c, $f3
    ld [hl], e
    ld [hl], e
    scf
    and l
    ld [$1027], sp
    ld h, e
    ld [$c131], sp
    jr nz, @+$0b

    nop
    jr jr_038_4fd6

    nop
    di
    inc sp
    or a
    ld sp, $c108
    cp c
    jr nz, @+$41

    jr nz, @+$01

    di
    rst $38
    db $e3
    inc a
    rra
    jr z, jr_038_4f7a

    inc bc

jr_038_4f7a:
    nop
    rst $30
    ldh a, [$fe]
    ldh a, [$38]
    ret


    ld a, [bc]
    ld d, b
    ldh a, [rP1]
    ld [$7906], sp
    add hl, bc
    ld a, [hl]
    nop
    db $fc
    ldh a, [rNR13]
    db $fc
    ldh a, [rNR24]
    rra
    jr z, jr_038_4f15

    nop
    rlca
    inc de
    add hl, bc
    inc de
    ld b, l
    jr jr_038_4fa7

    dec bc
    inc de
    nop
    ld [hl], $7b
    add hl, bc
    ld h, b
    pop bc
    add hl, bc
    jr nz, jr_038_4f45

jr_038_4fa7:
    ld bc, $201f
    adc c
    inc bc
    db $10
    ld bc, $0022
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, $0190
    and b
    nop
    ld bc, $0120
    ld b, d
    ld bc, HeaderGlobalChecksum
    db $e4
    inc b
    add hl, de
    sbc d
    ld h, c
    dec h
    jp $201f


    sub b
    ret nz

    nop
    db $10
    add b
    and e
    nop
    ld c, h
    add b
    jr jr_038_4f54

    nop
    or c

jr_038_4fd6:
    nop
    and d
    nop
    ld h, h
    add b
    ld b, h
    add b
    nop
    ld c, b
    add b
    ld [$1080], sp
    add b
    and c
    ret nz

    add b
    rra
    jr nz, jr_038_501c

    nop
    rst $38
    rra
    ccf
    ccf
    ld a, b
    add d
    ld a, c
    ld a, [bc]
    ccf
    ld a, $3f
    rra
    inc bc
    nop
    ld [$4b0f], sp
    inc bc
    ld e, a
    add hl, bc
    ld a, $80
    ld a, a
    jr z, jr_038_501c

    ld a, a
    add hl, de
    push af
    jr nz, jr_038_5026

    dec sp
    inc sp
    ld [hl], e
    ld e, e
    add hl, bc
    or e
    ld a, [bc]
    dec bc
    ld [$1f78], sp
    jr z, jr_038_5016

jr_038_5016:
    ld a, b
    nop
    pop af
    ld sp, $31b3

jr_038_501c:
    ccf
    ld sp, $f940
    dec b
    ld [$3b3b], sp
    dec sp

jr_038_5025:
    dec de

jr_038_5026:
    rra
    dec de
    inc bc
    ld a, a
    ld c, $ce
    ld c, $0e
    inc b
    rst $38
    jr nc, jr_038_5099

    add hl, bc
    nop
    sbc a
    rst JumpTable
    sbc a
    sbc c
    sbc b
    sbc a
    sbc b
    sbc a
    nop
    sbc a
    cp a
    sbc a
    ld hl, sp+$18
    reti


    jr jr_038_5060

    jr nc, jr_038_505f

    rra
    nop
    ld [$317f], sp
    jr c, jr_038_504e

jr_038_504e:
    rst $30
    add e
    nop
    rst $20
    add a
    rst $00
    ld b, $0f
    rlca
    sbc a
    add e
    nop
    rst $38
    add a
    ld l, [hl]
    ld c, $cf

jr_038_505f:
    inc c

jr_038_5060:
    adc a
    ld c, $04
    adc a
    adc a
    sbc a
    add a
    ld a, h
    rra
    jr z, jr_038_507a

    nop
    nop
    db $fc
    ret nz

    ldh a, [$e0]
    ldh [$60], a
    pop hl
    ld h, b
    nop
    rst $20
    ret nz

    cp $d0

jr_038_507a:
    ld hl, sp-$08
    ldh a, [rSVBK]
    inc bc
    ld hl, sp-$08
    db $fc
    call c, $109b
    nop
    dec bc
    nop
    jr jr_038_509a

    rlca
    nop
    ld a, [hl]
    add e

jr_038_508e:
    dec bc
    or $66
    rst $20

jr_038_5092:
    ld h, [hl]
    nop
    ld h, [hl]
    ld h, b
    ld h, h
    ld h, b
    ld l, [hl]

jr_038_5099:
    ld h, [hl]

jr_038_509a:
    ld a, [hl]
    ld h, [hl]
    ld c, d
    db $76
    add l
    inc de
    inc a
    add e
    rra
    jr z, jr_038_5025

    rra
    jr jr_038_508e

    sub $94
    inc de
    and a
    dec de
    ld l, a
    ld hl, $7e08
    rra
    ld [$30df], sp
    nop
    ld [bc], a
    nop
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76

jr_038_50bc:
    ld a, a
    call nc, $7e0b
    inc e
    ld l, [hl]
    and $66
    daa
    jr nz, jr_038_5092

    inc de
    rst JumpTable

jr_038_50c9:
    jr nc, jr_038_5107

    nop
    add b
    dec l
    ld [$197e], sp
    jr jr_038_50f1

    jr jr_038_5111

    jr jr_038_50d7

jr_038_50d7:
    jr jr_038_50f1

    add hl, de

jr_038_50da:
    jr jr_038_5157

    jr jr_038_50bc

    jr jr_038_5140

    add hl, de
    nop
    ld [$321f], sp
    ld de, $2603
    ld bc, $00c8
    ld bc, $0112
    ld a, $01
    ld a, [hl]

jr_038_50f1:
    ld bc, $0070
    ld bc, $01c2
    ld c, $01
    jr jr_038_50fc

    cp b

jr_038_50fc:
    dec b
    add a
    ld [c], a
    add c
    add l
    inc bc
    ld a, a
    ld bc, $31e6
    inc bc

jr_038_5107:
    dec e
    ld b, b
    or $39
    add hl, hl
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a

jr_038_5111:
    ld l, [hl]
    add hl, bc
    rst $38
    ld a, a
    rst $38
    dec sp
    ld a, a
    jr nc, jr_038_50da

    nop
    ld a, e
    ld b, c
    ret z

    ld a, l
    ld hl, $119f
    ld a, [hl]
    inc a
    ccf
    jr nc, jr_038_5127

jr_038_5127:
    nop
    ld h, a
    add b
    nop
    ld [$6179], sp
    ld l, l
    ld h, c
    push hl
    ld h, c
    ld h, l
    add b
    dec b
    ld [$6179], sp
    ld [hl], c
    ld h, c
    ld h, c
    ld h, c
    db $e3
    jr nz, jr_038_51a0

    rst $00

jr_038_5140:
    rra
    dec sp
    rst $20
    ldh [$e6], a
    ldh [$8c], a
    jr nz, jr_038_50c9

    adc b
    ld bc, $9808
    add b
    or b
    add b
    ldh [rNR43], a
    add b
    ret nz

    ld bc, $8108

jr_038_5157:
    add b
    inc bc
    rra
    jr z, @-$39

    nop
    inc bc
    ld c, $01
    ld e, $01
    jr c, jr_038_5165

    ld [hl-], a

jr_038_5165:
    jr z, jr_038_5168

    ld a, h

jr_038_5168:
    ld a, a
    add hl, bc
    ld h, b
    db $fd
    ld a, [bc]
    ld e, h
    ld bc, $04d8
    ld bc, $019a
    dec [hl]
    inc bc
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b
    sub b
    jr nz, jr_038_51d7

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a

jr_038_51a0:
    ld bc, $03ec
    pop de
    ld c, $ff
    ld d, l
    ld d, l
    nop
    ld [bc], a
    ld [bc], a
    inc c
    db $10
    jr nz, jr_038_51cf

    ld c, b
    sbc b
    ld d, b
    ld d, $00
    jr nc, jr_038_5227

    and a
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    di
    rst $00
    rst $38
    nop
    ld d, l
    inc c
    ld bc, $0300
    nop
    rlca
    rlca
    rra
    rrca
    ld e, $3c
    ld a, h
    ld l, h
    dec c

jr_038_51cf:
    nop
    inc c
    call $8d0d
    dec c
    ld c, h
    adc a

jr_038_51d7:
    rrca
    adc a
    rlca
    rlca
    nop
    nop
    rst $38
    inc bc
    ld [$98cf], sp
    nop
    jr nc, jr_038_51e5

jr_038_51e5:
    rst $20
    add a
    call $cdcc
    call z, $0ecc
    inc c
    ld [hl], b
    ld h, b
    call z, $dfce
    rst $08
    rst $38
    rst $08
    db $ec
    adc h
    add b
    nop
    nop
    rst $38
    nop
    cp h
    rst $08
    rra
    nop
    ld a, $00   ; xor a
    db $fc
    adc b
    xor $cc
    adc $cd
    call $50f5
    call z, $cfcd
    sbc $fc
    ldh a, [rP1]
    nop
    rst $38
    nop
    db $f4
    and $00
    nop
    ld bc, $6700
    daa
    rst $20
    ld h, a
    xor $7f
    ld h, a
    ld b, b
    ldh a, [$67]
    ld [hl], a

jr_038_5227:
    and $66
    and $66
    ld h, [hl]
    ld h, [hl]
    inc bc
    nop
    nop
    rst $38
    ld d, b
    db $fc
    nop
    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    dec d
    ld b, $00
    ldh [$e0], a
    inc c
    inc a
    ld a, h
    ld hl, sp-$20
    pop af
    ldh [$e7], a
    rst $38
    ldh a, [rP1]
    nop
    rlca
    inc bc
    rlca
    rlca
    ld c, $06
    ld c, $06
    ld c, $06
    ld e, $06
    ld d, l
    nop
    ld b, $16
    ld [hl], $36
    ld h, [hl]
    rst $20
    rlca
    rst $28
    inc bc
    call c, RST_00
    rst $38
    nop
    rst $38
    ld h, [hl]
    jr c, jr_038_526d

jr_038_526d:
    ld [hl], b
    nop
    add $c6
    and $e6
    ret nc

    nop
    ld h, [hl]
    ld l, a
    ld a, a
    ld h, a
    ld [hl], e
    ld h, e

jr_038_527b:
    db $e3
    db $e3
    rst $20
    pop bc
    ld a, [hl]
    nop
    nop
    rst $38
    dec c
    inc bc
    ld h, a
    nop
    nop
    ld bc, $6f00
    ld l, [hl]
    ld h, [hl]
    ld a, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    add b
    jr nz, jr_038_527b

    ld h, a
    xor $66
    cp $e6
    or $c6
    rst $30
    rst $00
    add a
    ld b, b
    nop
    nop
    rst $38
    rrca
    inc bc
    rst $20
    jr c, jr_038_52a7

jr_038_52a7:
    ldh [rP1], a
    ld b, $06
    rlca
    ld b, $07
    ld b, $3d
    nop
    ld b, $e7
    rst $20
    rlca
    rst $28
    and $fe
    and $3e
    nop
    nop
    rst $38
    ret nc

    nop
    nop
    inc e
    cp $c0
    or $e0
    db $e4
    ld h, b
    db $ed
    ld h, b
    ei
    ld h, b
    or $e0
    dec b
    ld d, b
    ld h, b
    cp $c0
    db $fc
    ldh [$f5], a
    db $eb
    ld [hl], a
    ld h, a
    ld c, [hl]
    nop
    nop
    rst $38
    ld d, l
    ld d, l
    nop
    inc b
    add hl, de
    inc hl
    ld b, [hl]
    add h
    inc c
    jr jr_038_52ff

    ld d, l
    ld d, [hl]
    nop
    db $10
    or b
    ld hl, $c361
    rlca
    ld e, $ff
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]

jr_038_52ff:
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop

jr_038_531a:
    ld bc, $82e2
    ld [bc], a
    inc b
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    nop
    ld b, c
    add b
    add e
    nop
    ld b, $0e
    ld e, $0e
    nop
    jr c, @+$0a

    ld a, l
    ld [$0cef], sp
    adc $06
    nop
    add $02
    add d
    ld [bc], a
    inc bc
    ld [bc], a
    rra
    ld c, $00
    ld a, h
    ld c, $fc
    nop
    ld a, b
    add b
    nop
    rst $38
    add b
    dec a
    rlca
    nop
    db $e4
    xor $fe
    xor $ba
    dec bc
    adc d
    ld [$e88a], a
    ld b, b
    adc d
    ld b, b
    add hl, hl
    add c
    cpl
    db $f4
    xor $71
    nop
    db $e3
    nop
    ccf
    ld b, b

jr_038_5368:
    ret nz

    inc hl
    nop
    adc $ee
    rst $28
    xor $ab
    jr z, jr_038_531a

    xor [hl]
    ld hl, $29ae
    ld hl, sp-$18
    cp b
    nop
    xor b

jr_038_537b:
    ei
    xor b
    rst $28
    xor [hl]
    xor a
    xor [hl]
    adc [hl]
    jr nz, jr_038_5384

jr_038_5384:
    inc a
    ld e, a
    ld a, h
    inc bc
    ld a, [$f801]
    ld c, b
    ld sp, hl
    ld hl, $2120
    ld hl, $2122
    ld l, $00
    ld hl, $217e
    cp $21
    db $ec
    ld hl, $07a4
    ld hl, $2126
    ld e, $01
    dec sp
    ccf
    jr nz, jr_038_53a7

jr_038_53a7:
    or d
    ret nz

    ld h, [hl]
    add b
    ld c, h
    add b
    cp b
    nop
    ld [$e011], sp
    inc hl
    ret nz

jr_038_53b4:
    daa
    jr @-$7e

    ld [hl], b
    ld [bc], a
    add b
    ld h, b
    add b
    ld b, a
    add b
    inc e
    ld b, a
    add b
    ret nz

    ld e, l
    jr nz, jr_038_5425

    nop
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld [bc], a
    reti


    jr jr_038_5368

jr_038_53ce:
    jr jr_038_53ec

    jr jr_038_5432

    dec de
    dec bc
    jr jr_038_5455

    jr @-$26

    ld b, a
    nop
    jr nz, jr_038_537b

    ld [bc], a
    ld a, b
    nop
    db $fd
    call z, $cded
    jr nz, jr_038_53b4

    inc de
    call $fdff
    ld hl, $cdfd

jr_038_53ec:
    ld hl, $c0a0
    rst $38
    ld h, $fb
    di
    rst $38
    ei
    rst $38
    sbc b
    dec bc
    db $fc
    sbc b
    ld hl, sp-$68
    ld h, b
    ld hl, sp+$40
    dec h
    db $10
    sbc e
    sbc b
    rra
    rst JumpTable
    ld a, [hl]
    nop
    cp $f6
    add d
    jr nz, jr_038_53ce

    jp nz, $c4c4

    ret nz

    add b
    pop bc
    ld bc, $cfc0
    ret nz

    ld hl, sp-$40
    ldh [$c0], a
    ld a, $c2
    cp a
    ld h, $fc
    ld a, h
    db $fc
    db $fc
    ld a, c
    rst $38
    ld b, e

jr_038_5425:
    ld hl, sp+$29
    inc a
    inc c
    db $ec
    inc c
    jr nz, @+$31

    and b
    dec hl
    ld a, $1f
    add hl, bc

jr_038_5432:
    dec c
    inc c
    rrca
    inc c
    ld e, $84
    inc sp
    inc c
    db $ed
    dec c
    rrca
    ld b, b

jr_038_543e:
    ccf
    rrca
    ld bc, $0e7e
    db $ec
    inc c
    adc b
    ld [$df03], sp
    ld b, d
    jr c, @+$28

    ld l, a
    rst $28
    ld l, a
    ld l, h
    add b
    rst $28
    add b
    ld b, b
    db $ed

jr_038_5455:
    db $ed
    rst $28
    db $ec
    ld a, [hl]
    ld l, h
    db $fc
    ld sp, $e02c
    rst JumpTable
    ld h, $df
    adc a
    rst JumpTable
    jr nz, @+$4d

    reti


    ld hl, $d9dd
    ld b, b
    sbc c
    ld h, h
    ld c, a
    jr nz, jr_038_543e

    rlca
    rst JumpTable
    ld hl, sp+$00
    di
    inc sp
    ei
    inc hl
    cp e
    cp a
    ld b, b
    or a
    or a
    or e
    ld b, b
    inc h
    ld a, [bc]

jr_038_5480:
    cp a
    or e
    ei
    or e
    inc sp
    add b
    rst JumpTable
    jr c, jr_038_5489

jr_038_5489:
    nop
    ld a, [hl]
    inc a
    ld a, [hl]
    ld a, [hl]
    db $76
    ld h, [hl]
    and $04
    ld h, [hl]
    ldh [$60], a
    xor $6e
    jr nz, jr_038_54ff

    ld h, [hl]
    inc [hl]
    ld h, a
    ld h, [hl]
    cpl
    inc sp
    jr jr_038_5480

    dec b
    inc bc
    nop
    ld c, $01
    inc c
    ld bc, $0108
    jr jr_038_54ad

    nop

jr_038_54ad:
    inc sp
    ld bc, $0137
    ld h, a
    ld bc, $01c4
    ld h, e
    inc b
    ld c, a
    dec l
    pop af
    inc bc
    inc bc
    ld e, l
    ld [bc], a
    ld b, c
    add b
    add e
    nop
    inc bc
    ld bc, $0521
    inc b
    ld bc, $0119
    pop af
    ld bc, $0760
    ld bc, $3f04
    ld bc, $01ff
    db $fd
    ld c, l
    ld b, b
    add b
    stop
    rst $38
    nop
    ld b, b
    sbc e
    sbc c
    db $db
    db $db
    ld b, b
    ei
    ld b, b
    cp e
    cp e
    sbc a
    sbc e
    rst $38
    sbc e
    ld a, [bc]
    ei
    sbc e
    db $db
    sbc e

jr_038_54ef:
    and b
    rrca
    ld a, [hl-]
    rst $38
    nop
    ld c, $00
    inc a
    nop
    or $e4
    rst $30
    or $0b
    rst $30
    scf

jr_038_54ff:
    or a
    scf
    add b
    ld [hl], $21
    dec l
    ld bc, $f6fe
    ld a, $36
    or $36
    ret nz

    ld e, a
    ret nz

    ld [hli], a
    jr nz, jr_038_5549

    rla
    ld [hl], a
    scf
    rst $30
    db $76
    pop de
    inc sp
    ld hl, $20f7
    or a
    or [hl]
    ld [hl], $20
    ld l, b
    scf
    ld hl, $1f40
    ld e, a
    ld a, h
    inc bc
    ldh a, [rNR12]
    ld bc, $c1c0
    ld hl, $0100
    ld hl, $0206
    ld bc, $c1dc
    ldh a, [$c1]
    ld h, b
    cpl
    ld bc, $8043
    ld d, e
    jp nz, $04c1

    inc bc
    ccf
    nop
    add c
    nop
    rlca
    nop
    ccf

jr_038_5549:
    rlca
    rst $38
    rrca
    nop
    rra
    inc c
    ld a, h
    inc c
    db $ec
    inc c
    rst $08
    rrca
    nop
    adc a
    rlca
    ld bc, $0301
    ld bc, HeaderManufacturerCode
    add b
    ld sp, $0fef
    ld b, b
    add b
    nop
    rst $38
    jp $000a


    add $00
    cp [hl]
    ld b, b
    jr nc, jr_038_54ef

    cp [hl]
    ld b, b
    ld a, $29
    ldh a, [$b0]
    di
    or b
    or [hl]
    or b
    adc b
    ld d, d
    ld a, $30
    nop
    ccf
    rlca
    nop
    ld c, $02
    nop
    db $fd
    ld a, c
    rst $38
    db $fd
    call $c380
    ld d, $c1
    rst $08
    pop bc
    ld a, [hli]
    db $ed
    ld c, c
    ld sp, $20ff
    ld a, c
    inc a
    sbc a
    ld a, h
    nop

jr_038_559a:
    ei
    di
    ei
    jr c, jr_038_559a

    sbc e
    ret nz

    add hl, hl
    dec l
    rst $38
    cp e
    rst $38
    ldh [$8b], a
    ld a, $3f
    add b
    nop
    ld bc, $ef00
    add b
    ld b, b
    rrca
    inc bc
    dec de
    inc bc
    ld [hl], e
    inc bc
    db $e3
    sbc [hl]
    ld b, b
    add e
    inc bc
    ld h, b
    ld l, c
    add hl, sp
    ccf
    db $e3
    nop
    nop
    adc a
    nop
    db $fc
    ret nz

    ldh a, [$c0]
    ret nz

    ldh [$2b], a
    ld b, b
    ld sp, $0007
    ld c, $00
    ld e, $00
    nop
    inc e
    nop
    inc a
    nop
    jr c, jr_038_55db

jr_038_55db:
    ldh a, [$c0]
    ld e, a
    inc hl
    db $fc
    nop
    db $fd
    db $fc
    db $fd
    db $fd
    nop
    ld a, c
    ld sp, $3171
    pop af
    ld sp, $31b1
    add b
    and b
    inc sp
    ld sp, $3137

jr_038_55f4:
    dec a
    jr nc, jr_038_5667

    ldh [$5f], a
    ld [hli], a
    jr nz, jr_038_55f4

    ldh a, [$f8]
    ld hl, sp-$68
    add b
    add b
    sbc e
    sbc b
    cp a
    sbc b
    rst $38
    sbc b
    ret c

    add sp, $49
    ld sp, $0335
    sbc a
    ld bc, $0f00
    ld b, b
    inc c
    ld hl, $0c1e
    inc a
    inc c
    ld a, h
    inc c
    inc e
    db $ec
    inc c
    adc h
    ld b, c
    jr nz, jr_038_564f

    ld a, a
    rrca
    db $10
    rst $28
    rrca
    adc $5f
    ldh [rP1], a
    ret nz

    nop
    rlca
    cp a
    ld e, $3f
    ccf
    inc sp
    nop
    dec bc
    dec l
    jr nz, jr_038_5688

    or e
    ld b, b
    ld bc, $035f
    nop
    rrca
    nop
    rlca
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    add b
    daa
    jr nz, jr_038_5673

    ld h, a
    ld h, [hl]
    ld hl, $696e

jr_038_564f:
    ld a, h
    ldh [$5f], a
    pop bc
    ld [hli], a
    ccf
    db $fd
    ld sp, hl

jr_038_5657:
    db $fd
    db $fd
    call Call_038_4380
    rst $38
    jr z, jr_038_5657

    call c, $ccdc
    ret nz

    dec sp
    add c
    ccf
    add c

jr_038_5667:
    nop
    inc bc

jr_038_5669:
    nop
    sbc a
    sbc e
    ld hl, $bf06
    sbc e
    ei
    sbc e
    db $db

jr_038_5673:
    inc hl
    jr nz, jr_038_5669

    ld b, c
    ld h, e
    add b
    ld h, a
    ld h, e
    ld l, a
    ld h, e
    jr jr_038_56de

    nop
    ret nz

    nop
    add b
    nop
    ld [hl], $36
    rst $30
    or a

jr_038_5688:
    ld c, h
    rst $30
    ld b, b
    db $76
    db $76
    add hl, hl
    jr nz, @+$40

    ld [hl], $4a
    ld [hl], a
    cpl
    ld [hl], $b7
    ld b, a
    dec a
    ld e, a
    ld bc, $0000
    inc bc
    nop
    ld l, a
    ld h, a
    ld l, a
    ld l, a
    db $fc
    ld h, b
    db $ec
    ld hl, $6d20
    ld l, h
    ld l, a
    ld l, h
    ld l, [hl]
    add b
    inc hl
    ld l, a
    ld a, a
    ld l, a
    ld a, h
    ld l, h
    db $ec
    ld l, h
    ld b, b
    ret nz

    ld e, a
    call nz, $8203
    ld bc, $81c6
    nop
    call nz, $ccc3
    jp $c1de


    ld a, [$05c1]
    ld a, [c]
    pop bc
    ld [c], a
    pop bc
    jp nz, $c681

    ld b, c
    jr nc, jr_038_56de

    inc bc
    ccf
    nop
    ld d, c
    add b
    sub c
    nop
    inc hl
    nop
    add $00
    nop

jr_038_56de:
    inc c
    nop
    dec sp
    nop
    db $e4
    nop
    add hl, de
    nop
    nop
    ld [hl], d
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    jr nz, @-$7b

    nop
    ld a, b
    add a
    nop
    rst $38
    rst $00
    ld a, [bc]
    nop
    adc h
    nop
    jr @+$43

    ld [hl], b
    ld d, e
    ret nz

    jr nz, jr_038_5703

jr_038_5703:
    add b
    ld d, a
    ld bc, $0700
    nop
    ld c, $02
    nop
    inc a
    nop
    ld sp, hl
    nop
    ld [hl], e
    ld l, $ff
    add b
    ld d, b
    nop
    inc bc
    inc bc
    rrca
    inc bc
    dec sp
    inc bc
    ld bc, $0363
    ld b, e
    inc bc
    jp $8303


    ld b, c
    adc b
    xor a
    db $e3
    inc bc
    add c
    ld a, [hl-]
    rst $38
    ld a, h
    nop
    ld a, [bc]
    ldh a, [rP1]
    or a
    scf
    ld hl, $8036
    rst $30
    push bc
    ld b, b
    dec h
    ld a, $36
    rst $38
    ld hl, $2137
    ld b, c
    db $fc
    ld e, a
    ld e, $00
    ld a, b
    nop
    rst $28
    ld b, b
    ld h, b
    inc c
    add b
    ld l, c
    ccf
    dec c
    db $fc
    inc c
    call z, $0c2e
    db $ec
    ld b, b
    ld bc, $225f
    dec h
    rst JumpTable
    ld [$df8f], sp
    rst JumpTable
    reti


    ld b, b
    db $db
    reti


    rst $38
    cp b
    inc h
    sbc c
    ld l, c
    jr nz, @+$33

    rst $38
    rst $08
    ldh [$80], a
    ld e, a
    ld [hl], b
    nop
    pop hl
    nop
    add a
    inc bc
    cp a
    nop
    or a
    cp [hl]
    or [hl]
    or $96
    and $a6
    add a
    nop
    add a
    add e
    add e
    add b
    add b
    adc a
    add b
    db $fc
    inc h
    add b
    rst $20
    ld a, [hli]
    rlca
    inc bc
    ld e, a
    db $fc
    nop
    ld a, b
    ldh [rNR42], a
    ld b, b
    ld a, [hli]
    jr nz, jr_038_5799

    nop

jr_038_5799:
    db $e3
    ld bc, $fec0
    ldh [$f8], a
    ld h, b
    ldh [$60], a
    jr nz, jr_038_57aa

    rst $20

jr_038_57a5:
    ldh [rIE], a
    ret nz

    ldh a, [$5f]

jr_038_57aa:
    ld [hl], l
    ccf
    nop
    rra
    ccf
    ccf
    inc a
    jr nc, @+$7a

    jr nc, jr_038_57a5

    db $10
    jr nc, jr_038_57f7

    ld a, $2b
    rrca
    inc bc
    dec sp
    inc bc
    ld d, $f3
    inc bc
    rst $38
    ld [hl-], a
    ld a, $3b
    ccf
    pop bc
    ld [$8300], sp
    nop
    ld a, [hl]
    ld b, b
    ld l, h
    ld h, b
    ld a, b
    ld [$e060], sp
    ld h, b
    cp $49
    ld h, c
    ld h, b
    ld h, e
    inc d
    ld h, b
    ld h, a
    ld h, b
    ld [hl], e
    jr nc, jr_038_583f

    add c
    nop
    ld b, b
    inc bc
    inc h
    ld a, c
    rst $38
    db $fd
    rst JumpTable
    call $00dd
    call $cdfd
    pop af
    pop bc
    pop hl
    pop bc
    call $cd31
    rst $08

jr_038_57f7:
    ld b, c
    ld sp, $79fd
    jr c, jr_038_585c

    db $10
    add a
    nop

jr_038_5800:
    ld c, $24
    di
    ei
    ei
    cp e
    ld e, c
    sbc e
    ld hl, $61fb
    jr nz, jr_038_5800

    cp e
    ld a, [hli]
    push af

jr_038_5810:
    add b
    ld a, $3a
    ld [hli], a
    rlca
    inc h
    rst $30
    ld hl, $e10a
    ld bc, $0181
    jr nz, jr_038_5810

    ld b, b
    inc bc
    ld bc, $0701
    ld bc, $010f
    rst $38
    pop af
    ld hl, $fc40
    ld e, a
    jp $8700


    nop
    rst $28
    ldh [rP1], a
    xor $e0
    sbc h
    add b
    sbc c
    add b
    or c
    add b
    ld bc, $80f3

jr_038_583f:
    rst $20
    add b
    adc $80
    call c, $0549
    db $e3
    add b
    add [hl]
    add b
    inc a
    ld e, a
    rst $00
    dec a
    nop
    nop
    db $fd
    nop
    ei
    nop
    ld [c], a
    nop
    add d
    nop
    nop
    inc b
    nop
    inc c

jr_038_585c:
    nop
    jr jr_038_585f

jr_038_585f:
    jr c, jr_038_5881

    nop
    pop af
    ld b, c
    db $e3
    nop
    add $00
    inc e
    add b
    ld e, a
    inc h
    inc bc
    jp nz, $0201

    ld bc, $0004
    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld [$e201], sp
    ld bc, $8f82

jr_038_5881:
    ld [de], a
    dec c
    ld h, $18
    add hl, de
    ld c, h
    inc sp
    ccf
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b
    sub b
    jr nz, jr_038_58ea

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a
    ld bc, $03ec
    pop de
    ld c, $ff
    ld d, l
    ld d, l
    nop
    ld [bc], a
    inc b
    ld [$2211], sp
    inc h
    ld c, b
    sbc b
    ld d, b
    ld d, $00
    jr nc, jr_038_593a

    and [hl]
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    di
    rst $00
    rst $38
    ld d, l
    push af
    nop
    ld b, $18
    ld h, b
    add b
    ld bc, $550f
    ld d, [hl]
    nop
    ld a, $c0
    rlca
    rra
    db $fc
    ldh a, [$e0]
    rst $38
    dec b
    ld d, l
    ld b, $00

jr_038_58ea:
    nop
    nop
    nop
    rlca
    rlca
    ld e, $76
    and $07
    ld d, l
    nop
    ld b, $3e
    or $c6
    add [hl]
    rlca
    rlca
    rlca
    rlca
    rra
    nop
    nop
    rst $38
    rlca
    ld d, l
    inc c
    ld a, b
    nop
    ldh [rP1], a
    adc h
    rrca
    dec a
    ld l, a
    adc a
    ld d, l
    nop
    inc c
    ld e, $3c
    dec c
    rra
    db $fc
    call z, $cccf
    adc a
    nop
    nop
    rst $38
    ld [$7e50], sp
    rlca
    nop
    rra
    nop
    ld h, [hl]
    cp $76
    cp $fe
    xor $6e
    and $66
    ld [hl], l
    ld d, b
    ld h, [hl]
    and $f6
    db $76
    and $e7
    rlca
    nop
    nop
    rst $38
    rrca

jr_038_593a:
    ld d, b
    ld h, [hl]
    add b
    nop
    nop
    nop
    ld h, a
    ld h, a
    ld l, a
    ld l, [hl]
    ld a, [hl]
    ld a, h
    dec b
    ld d, b
    ld h, [hl]
    ld a, h
    ld a, h
    ld a, [hl]
    ld l, [hl]
    ld a, [hl]
    db $76
    and $e6
    jp RST_00


    rst $38
    dec b
    ld e, l
    ld sp, $003c
    ld a, b
    nop
    pop af
    di
    push af
    cp c
    inc sp
    ld d, l
    ld d, b
    ld sp, $3737
    dec a
    add hl, sp
    ld a, c
    pop af
    ret nz

    nop
    nop
    rst $38
    ld a, [bc]
    ldh a, [$f9]
    nop
    nop
    ld h, b
    nop
    sbc b
    reti


    cp c
    cp c
    sbc c
    sbc c
    rst $38
    ld b, b
    sbc c
    sbc e
    sbc a
    sbc b
    rra
    nop
    nop
    rst $38
    nop
    ld a, h
    sbc b
    nop
    nop
    nop
    nop
    ld sp, hl
    ldh a, [$fa]
    ld hl, sp-$64
    add e
    add b
    ld [$f8e0], sp
    cp a
    cp b
    cp [hl]
    cp b
    sbc b
    ret c

    sbc b
    ldh a, [rSB]
    nop
    nop
    rst $38
    ld d, l
    ld d, l
    nop
    ld a, h
    ldh a, [$c1]
    inc bc
    ld c, $3f
    cp $f0
    db $fc
    ld d, $00
    db $db
    db $db
    db $db
    db $db
    rra
    db $fc
    rst $38
    ld d, l
    ld d, l
    nop
    ld [hl], d
    db $e4
    ret z

    sbc b
    ld [hl], c
    jp nz, $0c04

    ld d, l
    ld d, [hl]
    nop
    ld [$f138], sp
    pop hl
    rst $00
    ld c, $78
    rst $38
    ld d, l
    ld d, l
    nop
    inc b
    add hl, de
    inc hl
    ld b, [hl]
    add h
    inc c
    jr jr_038_5a10

    ld d, l
    ld d, [hl]
    nop
    ld d, b
    or b
    ld hl, $c361
    rlca
    ld e, $ff
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b

jr_038_5a10:
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ld a, [hl]
    add b
    db $fc
    nop
    ldh a, [rP1]
    ld a, [de]
    jp $0c00


    ld b, l
    jr nz, @+$05

    add a
    ld bc, $0004
    ld b, $01
    sbc h
    inc bc
    cp a
    jr jr_038_5a34

jr_038_5a34:
    inc b
    ccf
    rrca
    rst JumpTable
    rra
    add hl, de
    ld b, b
    add hl, sp
    add hl, de
    nop
    ld a, c
    add hl, de
    sbc c
    add hl, de
    dec de
    dec de
    ccf
    dec de
    ld [bc], a
    rst $38
    rra
    ld a, a
    adc [hl]
    ret nz

    nop
    cp a
    rra
    inc b
    nop
    cp l
    add hl, de
    reti


    sbc c
    and b
    sbc e
    sbc c
    ld [$99bf], sp
    db $fd
    sbc c
    dec l
    rst JumpTable
    rst JumpTable
    rst $28
    ld [hli], a
    rst $08
    rrca
    rst JumpTable
    ret nz

    nop
    sbc e
    ld b, b
    sbc a
    ld bc, $bc98
    sbc b
    ld hl, sp-$68
    ret c

    sbc b
    jr nz, jr_038_5a78

    sbc e
    sbc b
    sbc [hl]
    sbc b

jr_038_5a78:
    cp b
    dec hl
    jr @-$7b

    add b
    rst JumpTable
    dec e
    inc bc
    ld a, [$f0f1]
    pop af
    ret nz

    ld [hli], a
    pop bc
    jp nz, $f281

    pop bc
    ret c

    ld b, c
    ldh a, [rTAC]
    pop bc
    ld [c], a
    pop bc
    push bc
    inc bc
    cp a
    nop
    sbc d
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b
    sub b
    jr nz, @+$42

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a
    ld bc, $03ec
    pop de
    ld c, $ff
    ld d, l
    ld d, l
    nop
    ld [bc], a
    inc b
    ld [$2211], sp
    inc h
    ld c, b
    sbc b
    ld d, b
    ld d, $00
    jr nc, jr_038_5b48

    and [hl]
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    di
    rst $00
    rst $38
    ld d, l
    push af
    nop
    ld b, $18
    ld h, b
    add b
    ld bc, $550f
    ld d, [hl]
    nop
    ld a, $c0
    rlca
    rra
    db $fc
    ldh a, [$e0]
    rst $38
    push af
    ld d, a
    nop
    ld bc, $1c07
    ld [hl], b
    ldh [rHDMA5], a
    or $00
    ccf
    rst $38
    ldh a, [$80]
    inc bc
    rst $38
    ld d, l
    ld d, l
    nop
    ld [hl], c
    pop hl
    jp $0703


    rlca
    ld c, $7c
    ld e, l
    ld d, [hl]
    nop
    ldh a, [$80]
    inc bc
    rra
    ccf
    ld hl, sp-$01
    nop
    ld a, l
    ld h, [hl]
    ldh [rP1], a
    ret nz

    nop
    cp $7c
    cp $7e
    xor $67
    db $fd
    nop
    ld h, [hl]
    xor $fe
    ld a, [hl]
    cp $7c
    ld bc, $0000
    rst $38
    dec bc
    add b
    ld a, [hl]
    rlca
    nop
    ld c, $00
    inc a
    ld h, [hl]
    db $76
    ld h, [hl]
    and $66
    and $66
    push af
    nop
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, [hl]

jr_038_5b48:
    ld a, [hl]
    ld a, h
    inc a
    ld hl, sp+$00
    nop
    rst $38
    ld [bc], a
    ld hl, sp+$7e
    ld bc, $0700
    nop
    ld l, [hl]
    ld h, [hl]
    db $76
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ldh a, [$66]
    and $e7
    rst $28
    ld a, [hl]
    ld bc, $0000
    rst $38
    rrca
    inc bc
    ld a, [hl]
    ldh a, [rP1]
    nop
    nop
    ld h, c
    ld h, b
    ld h, e
    ld h, b
    ld a, a
    ld h, b
    ld b, b
    ld [hl], b
    ld a, [hl]
    cp $e0
    ld h, b
    ld h, b
    ld h, b
    ld l, a
    ld h, b
    ld a, a
    ld hl, sp+$00
    nop
    rst $38
    ld d, l
    ld d, l
    nop
    rlca
    inc e
    add hl, sp
    ld a, a
    db $fc
    ret nz

    add b
    ld bc, $d655
    nop
    rlca
    ld a, $f0
    ret nz

    ld bc, $ff3f
    ld d, l
    ld d, l
    nop
    ld a, h
    ldh a, [$c1]
    inc bc
    ld c, $3f
    cp $f0
    push af
    ld d, [hl]
    nop
    ld bc, $3f0f
    rst $38
    db $fc
    rst $38
    ld d, l
    ld d, l
    nop
    ld [hl], d
    db $e4
    ret z

    sbc b
    ld [hl], c
    jp nz, $0c04

    ld d, l
    ld d, [hl]
    nop
    ld [$f138], sp
    pop hl
    rst $00
    ld c, $78
    rst $38
    ld d, l
    ld d, l
    nop
    inc b
    add hl, de
    inc hl
    ld b, [hl]
    add h
    inc c
    jr jr_038_5c05

    ld d, l
    ld d, [hl]
    nop
    ld d, b
    or b
    ld hl, $c361
    rlca
    ld e, $ff
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b

jr_038_5c05:
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b
    sub b
    jr nz, @+$42

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a
    ld bc, $03ec
    pop de
    ld c, $ff
    ld d, l
    ld d, l
    nop
    ld [bc], a
    inc b
    ld [$2211], sp
    inc h
    ld c, b
    sbc b
    ld d, b
    ld d, $00
    jr nc, @+$73

    and [hl]
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    di
    rst $00
    rst $38
    ld d, l
    push af
    nop
    ld b, $18
    ld h, b
    add b
    ld bc, $550f
    ld d, [hl]
    nop
    ld a, $c0
    rlca
    rra
    db $fc
    ldh a, [$e0]
    rst $38
    push af
    ld d, l
    nop
    ld bc, $1c07
    ld [hl], b
    ldh [$03], a
    ld d, l
    or $00

jr_038_5c77:
    ccf
    rst $38
    ldh a, [$80]
    inc bc
    rst $38
    rlca
    add c
    rrca
    inc e
    nop
    ld [hl], b
    nop
    rst $08
    inc c
    inc a
    inc c
    db $fc
    inc c
    rst $38
    ccf
    nop
    inc c
    rst $28
    rrca
    rrca
    rrca
    ccf
    rrca
    db $fc
    nop
    nop
    rst $38
    nop
    db $fc
    inc c
    rlca
    nop
    ld e, $00
    rst $38
    rst $08
    rst $28
    rst $08
    rst $08
    rst $08
    ret nz

    jr nz, jr_038_5c77

    dec c
    dec c
    inc a
    inc c
    db $ec
    inc c
    call $cccc
    rrca
    nop
    nop
    rst $38
    dec bc
    add c
    rst $08
    add b
    nop
    ld bc, $8f00
    call z, $ccce
    call z, $dfcc
    rlca
    ret nc

    call z, $8fff
    db $ed
    call $cdec
    inc bc
    nop
    nop
    rst $38
    nop
    push af
    call z, $007c
    xor $00
    rst $08
    add a
    rst $08
    rst $08
    call c, $15fc
    nop
    call z, $8ced
    rst $08
    adc $dc
    rst $38
    rst $08
    rst $28
    rst $00
    ret nz

    nop
    nop
    rst $38
    dec bc
    ld bc, $00cf
    nop
    ld bc, $8f00
    adc $cc
    call c, $fccc
    call z, $0def
    ld b, b
    call z, $cfcf
    call $cdcd
    rst $08
    adc $8c
    jr c, jr_038_5d09

jr_038_5d09:
    nop
    rst $38
    ld hl, $c05d
    ldh [rP1], a
    nop
    pop bc
    add b
    rst $00
    call z, $c3f8
    rla
    ldh a, [$c0]
    adc $80
    ld hl, sp-$20
    inc bc
    nop
    nop
    rst $38
    ld d, l
    ld d, l
    nop
    ld a, h
    ldh a, [$c1]
    inc bc
    ld c, $3f
    cp $f0
    push af
    ld d, [hl]
    nop
    ld bc, $3f0f
    rst $38
    db $fc
    rst $38
    ld d, l
    ld d, l
    nop
    ld [hl], d
    db $e4
    ret z

    sbc b
    ld [hl], c
    jp nz, $0c04

    ld d, l
    ld d, [hl]
    nop
    ld [$f138], sp
    pop hl
    rst $00
    ld c, $78
    rst $38
    ld d, l
    ld d, l
    nop
    inc b
    add hl, de
    inc hl
    ld b, [hl]
    add h
    inc c
    jr jr_038_5d8f

    ld d, l
    ld d, [hl]
    nop
    ld d, b
    or b
    ld hl, $c361
    rlca
    ld e, $ff
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b

jr_038_5d8f:
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    nop
    ld [hl], h
    ld sp, $3800
    inc [hl]
    ld bc, $3634
    ld [de], a
    ld bc, $3b01
    ld [hli], a
    ld bc, $2935
    ld [hl-], a
    jr jr_038_5ddd

    ld [hl], h
    ld [bc], a
    nop
    dec bc
    ccf
    add b
    add d
    add h
    nop
    add [hl]
    adc b
    adc d
    adc h
    adc [hl]
    sub b
    sub d
    sub h
    ld bc, $9896
    sbc d
    sbc h
    sbc [hl]
    ld b, c
    ld b, b
    rra
    inc c
    nop
    ld b, b
    ld b, c
    add c
    add e
    add l
    add a
    adc c
    adc e
    nop
    adc l
    adc a
    sub c
    sub e
    sub l
    sub a
    sbc c
    sbc e
    ld [$9f9d], sp
    ld d, c

jr_038_5ddd:
    ld d, b
    rra
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld [bc], a
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, h
    ld a, [hli]
    ld d, a
    ld bc, $5556
    ld d, h
    ld d, e
    ld d, d
    add hl, sp
    ld a, [hl-]
    rra
    dec c
    inc c
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld e, e
    ldh [$63], a
    ld h, d
    jr jr_038_5e4a

    ld c, d
    ld c, e
    rra
    inc c
    ld e, l
    ld a, [bc]
    nop
    dec c
    ld a, [hli]
    ld hl, $1340
    ld c, $0b
    nop
    rrca
    rst $38
    rra
    jr nc, jr_038_5e15

jr_038_5e15:
    add hl, bc
    jr c, jr_038_5e78

    ld b, a
    rra
    rla
    ld h, b
    ld a, a
    ret nz

    nop
    dec c
    ld [$7170], sp
    ld [hl], d
    ld [bc], a
    nop
    dec c
    inc a
    dec a
    ld a, $a0
    ld c, $0c
    ld a, d
    ld [hli], a
    ret nz

    jp nz, $c6c4

    ret z

    sub b
    ld de, $4d0a
    ld c, [hl]
    rra
    ld c, $20
    pop bc
    jp $04c5


    rst $00
    ret


    ld [bc], a
    ld a, l
    ld a, [hl]
    ret nz

    ld a, l
    ld c, h
    and h
    rra

jr_038_5e4a:
    inc c
    ld a, e
    add sp, $7f
    nop
    ret nz

    ld a, a
    ccf
    and b
    rra
    inc c
    ld a, h
    ld [hli], a
    call z, $d0ce
    jp nc, $80d4

    rra
    jr jr_038_5ed3

    ld [bc], a
    ld hl, $cfcd
    pop de
    db $d3
    ld d, [hl]
    push de
    rra
    dec bc
    ld c, a
    rra
    inc c
    inc sp
    add sp, $1f
    ld a, [bc]
    ld e, a
    and b
    rra
    inc c
    scf
    ld [hli], a
    ret c

jr_038_5e78:
    jp c, $dedc

    ldh [rNR12], a
    ld [bc], a
    ld a, l
    ld a, [hl]
    ret nz

    ld a, l
    ld l, a
    rra
    inc c
    ld l, d
    ld bc, $2202
    reti


    db $db
    db $dd
    rst JumpTable
    pop hl
    ld de, $260a
    ld e, l
    ld e, [hl]
    rra
    inc c
    ld l, b
    ld l, c
    dec c
    inc c
    ld h, b
    ld l, l
    ld h, b
    ld l, [hl]
    dec c
    inc c
    ld d, a
    ld a, [bc]
    nop
    rra
    ld c, d
    ld [hli], a
    ld c, $60
    rra
    jr @-$20

    xor h
    ccf
    ld c, e
    ldh [rOCPD], a
    rra
    rrca
    ret nz

    dec bc
    ld c, $bb
    ret nz

    dec hl
    add hl, de
    db $10
    sub l
    rra
    dec bc
    ld c, d
    ld e, $13
    rra
    inc c
    rst $38
    ld e, $0e
    ldh [$1f], a
    ld a, [de]
    sub l
    ccf
    ldh [$1f], a
    db $10
    sbc [hl]
    ldh [$3f], a
    nop
    scf
    jr nc, jr_038_5f33

jr_038_5ed3:
    ld [bc], a
    ld a, b
    ld a, c
    and b
    and d
    and h
    and [hl]
    xor b
    xor d
    xor h
    xor [hl]
    or b
    or d
    rst $08
    rst $38
    ld [bc], a
    ld e, e
    ld e, h
    db $10
    ld h, b
    ld [bc], a
    ld h, l
    ld h, [hl]
    ld h, a
    and c
    and e
    and l
    and a
    xor c
    xor e
    xor l
    xor a
    or c
    or e
    rst $08
    rst $38
    ld [bc], a
    ld l, e
    ld l, h
    rra
    rst $38
    ld [bc], a
    ld [hl], l
    db $76
    ld [hl], a
    adc a
    rst $38
    ld [bc], a
    ld e, b
    ld e, c
    ld e, d
    ld e, a
    ld a, [bc]
    ld b, b
    dec bc
    ld h, b
    ld b, $09
    nop
    ld [de], a
    rra
    jr nz, jr_038_5f12

jr_038_5f12:
    inc e
    ld de, $7d68
    ld a, [hl]
    nop
    rrca
    ld a, l
    ld l, [hl]
    ld [bc], a
    nop
    dec bc
    nop
    ld a, b
    ld a, a
    jr nz, jr_038_5f44

    ld [hli], a
    inc hl
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_038_5f55

    ld a, [hli]
    dec hl
    inc l
    nop
    sub b
    jr nz, jr_038_5fb2

jr_038_5f33:
    ld e, h
    rra
    inc c
    ld h, l
    ld a, a
    jr nc, jr_038_5f6b

    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_038_5f7c

    inc d

jr_038_5f44:
    ld a, [hl-]
    dec sp
    inc a
    ld a, a
    ld l, h
    rra
    inc c
    ld [hl], l
    ld a, a
    nop
    dec l
    ld l, $2f
    nop
    ld de, $1200

jr_038_5f55:
    nop
    nop
    inc de
    nop
    inc d
    nop
    dec d
    dec a
    ld a, $3f
    jr nc, jr_038_5fe0

    ld e, d
    rra
    inc c
    inc h
    ld a, [bc]
    ld c, e
    nop
    db $10
    ld l, e
    ld a, [bc]

jr_038_5f6b:
    nop
    dec c
    dec bc
    ld b, $af
    nop
    inc c
    ld c, $20
    dec hl
    rra
    ld [hl-], a
    ld d, l
    ret nz

    ld c, h
    ret nz

    rra

jr_038_5f7c:
    ld c, $08
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [bc], a
    nop
    dec c
    inc a
    dec a
    ld a, $a0
    ld c, $0c
    ld a, d
    ld [hli], a
    ret nz

    jp nz, $c6c4

    ret z

    ret z

    ld l, e
    xor b
    ld c, l
    ld c, [hl]
    rra
    ld c, $20
    pop bc
    jp $c51a


    rst $00
    ret


    ld c, d
    add sp, $4c
    rra
    inc c
    ld a, e
    call nc, $0c0c
    and b
    ccf
    inc c
    inc c
    ld a, h
    ld [hli], a
    call z, $1cce
    ret nc

jr_038_5fb2:
    jp nc, Jump_038_6bd4

    ret z

    rra
    dec c
    ld [hl], e
    ld [bc], a
    inc bc
    ld hl, $cfcd
    pop de
    db $d3
    push de
    ld c, d
    add sp, $5a
    ld c, a
    rra
    inc c
    inc sp
    inc c
    inc c
    and b
    ld e, a
    inc c
    inc c
    scf
    add e
    ld [hli], a
    ret c

    jp c, $dedc

    ldh [rOCPD], a
    ret z

    ld b, b
    ld l, a
    rra
    inc c
    ld l, d
    ld [bc], a
    ld [hli], a
    reti


jr_038_5fe0:
    db $db
    db $dd
    ld [hl-], a
    rst JumpTable
    pop hl
    ld c, d
    ret z

    ld e, l
    ld e, [hl]
    rra
    inc c
    ld l, b
    ld h, [hl]
    ld l, c
    dec c
    inc c
    ld h, b
    ld l, l
    ld l, [hl]
    dec c
    inc c
    ld b, e
    ld a, [bc]
    nop
    add sp, $4a
    ld a, [bc]
    ld a, [bc]
    ld c, $00
    db $10
    dec bc
    db $10
    rst $38
    ld [$0038], sp
    ld e, b
    dec d
    jr jr_038_601f

    db $10
    ld [$0038], sp
    nop
    cpl
    ld e, a
    ld [hl], b
    ld [hl], d
    ld [$5fe0], sp
    nop
    ld e, l
    cp a
    nop
    ld c, l
    ld [$7170], sp
    ld [hl], d
    ld [bc], a

jr_038_601f:
    nop
    dec c
    inc a
    dec a
    ld a, $b2
    ld c, $0c
    ld a, d
    dec e
    ld c, $40
    ld c, l
    ld c, [hl]
    rra
    db $10
    and b
    nop
    and d
    and h
    and [hl]
    xor b
    xor d
    xor h
    xor [hl]
    or b
    dec d
    or d
    or h
    or [hl]
    ld c, [hl]
    ld c, h

Jump_038_603f:
    rra
    inc c
    ld a, e
    ld b, e
    nop
    and c
    and e
    and l
    and a
    xor c
    xor e
    xor l
    xor a
    ld a, [bc]
    or c
    or e
    or l
    or a
    ld c, [hl]
    ccf
    rra
    inc c
    ld a, h
    add sp, $0c
    inc c
    and b
    rra
    dec c
    ld [hl], e
    ld b, e
    cp b
    cp d
    cp h
    nop
    cp [hl]
    ret nz

    jp nz, $c6c4

    ret z

    jp z, $54cc

    adc $4e
    ld c, a
    rra
    inc c
    inc sp
    ld b, e
    cp c
    cp e
    nop
    cp l
    cp a
    pop bc
    jp $c7c5


    ret


    sra e
    call Call_038_4ecf
    ld e, a
    rra
    inc c
    scf
    inc c
    inc c
    and b
    ld d, b
    ld l, a
    inc c
    inc c
    ld l, d
    ld b, e
    ret nc

    jp nc, $d6d4

    nop
    ret c

    jp c, $dedc

    ldh [$e2], a
    db $e4
    and $92
    dec l
    ld e, l
    ld e, [hl]
    rra
    inc c
    ld l, b
    ld l, c
    inc hl
    pop de
    nop
    db $d3
    push de
    rst AddAToHL
    reti


    db $db
    db $dd
    rst JumpTable
    pop hl

jr_038_60ae:
    inc de
    db $e3
    push hl
    rst $20
    dec l
    ld l, l
    ld l, [hl]
    rra
    inc c
    ld e, e
    ld a, [bc]
    nop
    add sp, $4a
    jr nz, jr_038_60ae

    nop
    ld [$000b], sp
    ld c, b
    rra
    nop
    inc [hl]
    ldh a, [$72]
    ldh a, [$5f]
    nop
    ld c, a
    cp a
    nop
    ld c, l
    ld [de], a
    ld a, b
    ld a, c
    ld [bc], a
    nop
    rrca
    ld e, e
    ld e, h
    dec c
    inc c
    ld h, l
    inc h
    ld h, [hl]
    ld h, a
    rra
    rrca
    ld l, e
    ld l, h
    dec c
    inc c
    ld [hl], l
    db $76
    ld b, l
    ld [hl], a
    ld e, $0e
    ld e, b
    ld e, c
    ld e, d
    ld c, $0c
    rra
    nop
    rra
    ld h, b
    ld a, [bc]
    nop
    ld a, a
    nop
    ld [hl], h
    add b
    add d
    add h
    add [hl]
    ld a, a
    ret nz

    jp nz, $c400

    add $c8
    nop
    jp z, $cecc

    ret nc

    inc b
    jp nc, $317f

    ld [hl], h
    ld [bc], a
    nop
    dec bc
    ld [hl], h
    add c
    nop
    add e
    add l
    add a
    ld a, a
    pop bc
    jp $c7c5


    nop
    ret


    nop
    set 1, l
    rst $08
    pop de
    db $d3
    ld a, a
    jr nz, jr_038_6166

    ld b, b
    rra
    inc c
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld a, a
    call nc, $d8d6
    jp c, $00dc

    sbc $01
    ldh [$e2], a
    db $e4
    and $7f
    ld d, c
    ld d, b
    rra
    inc c
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld a, a
    push de
    rst AddAToHL
    nop
    reti


    db $db
    db $dd
    nop
    rst JumpTable
    pop hl
    db $e3
    push hl
    db $10
    rst $20
    ld a, a
    ld a, [hl-]
    rra
    dec c
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld de, $7d64
    ld a, [hl]
    nop
    ld a, [bc]
    ld a, l
    ld c, d
    ld c, e
    rra

jr_038_6166:
    inc c
    ld a, [hli]
    ld a, [bc]
    dec bc
    ld h, b
    dec c
    ld h, b
    ld c, $85
    dec hl
    ld e, $2a
    ld a, [hli]
    ld a, [bc]
    nop
    inc c
    rra
    jr nz, jr_038_61d9

    rra
    dec l
    ld a, [bc]
    ld hl, sp+$1f
    inc de
    nop
    dec bc
    ccf
    nop
    dec c
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add b
    add d
    add h
    add [hl]
    adc b
    adc d
    adc h
    adc [hl]
    ld [bc], a
    sub b
    sub d
    sub h
    sub [hl]
    rrca
    rst $38
    ld [bc], a
    sbc b
    inc a
    dec a
    ld a, $60
    db $10
    ld [bc], a
    ld a, d
    add c
    add e
    add l
    add a
    adc c
    adc e
    adc l
    adc a
    sub c
    sub e
    sub l
    sub a
    ld c, a
    rst $38
    ld [bc], a
    sbc c
    ld c, l
    ld c, [hl]
    ld h, b
    db $10
    ld [bc], a
    ld a, d
    sbc d
    sbc h
    sbc [hl]
    and b
    and d
    and h
    and [hl]
    xor b
    xor d
    xor h
    xor [hl]
    or b
    ld l, a
    rst $38
    ld [bc], a
    or d
    ld c, h
    ld h, b
    db $10
    ld [bc], a
    ld a, e
    sbc e
    sbc l
    sbc a
    and c
    and e
    and l
    and a
    xor c
    xor e
    xor l
    xor a
    or c
    ld l, a

jr_038_61d9:
    rst $38
    ld [bc], a
    or e
    ccf
    ld h, b
    ld d, b
    ld [bc], a
    ld a, h
    or h
    or [hl]
    cp b
    cp d
    cp h
    cp [hl]
    ret nz

    jp nz, $c6c4

    ret z

    ld l, a
    rst $38
    ld [bc], a
    jp z, Jump_038_603f

    ld d, b
    ld [bc], a
    ld [hl], e
    or l
    or a
    cp c
    cp e
    cp l
    cp a
    pop bc
    jp $c7c5


    ret


    ld h, b
    nop
    ld [bc], a
    bit 1, a
    adc b
    adc d
    adc h
    adc [hl]
    sub b
    sub d
    sub h
    sub [hl]
    sbc b
    sbc d
    sbc h
    sbc [hl]
    ld h, b
    db $10
    ld [bc], a
    inc sp
    call z, $d0ce
    jp nc, $d6d4

    ret c

    jp c, $dedc

    ldh [$e2], a
    ld h, b
    nop
    ld [bc], a
    db $e4
    ld e, a
    adc c
    adc e
    adc l
    adc a
    sub c
    sub e
    sub l
    sub a
    sbc c
    sbc e
    sbc l
    sbc a
    ld h, b
    db $10
    ld [bc], a
    scf
    call $d1cf
    db $d3
    push de
    rst AddAToHL
    reti


    db $db
    db $dd
    rst JumpTable
    pop hl
    db $e3
    ld l, a
    rst $38
    ld [bc], a
    push hl
    ld l, a
    ld h, b
    db $10
    ld [bc], a
    ld l, d
    and $e8
    ld [$eeec], a
    ldh a, [$f2]
    db $f4
    or $f8
    ld a, [$4ffc]
    rst $38
    ld [bc], a
    cp $5d
    ld e, [hl]
    jr nz, jr_038_626f

    ld [bc], a
    ld l, b
    ld l, c
    rst $20
    jp hl


    db $eb
    db $ed
    rst $28
    pop af
    di
    push af
    rst $30
    ld sp, hl
    ei
    db $fd
    ld c, a

jr_038_626f:
    rst $38
    ld [bc], a
    rst $38
    ld l, l
    ld l, [hl]
    ld e, [hl]
    ld a, [bc]
    jr nz, jr_038_627e

    ret nz

    xor b
    ld d, b
    nop
    inc c
    ld c, d

jr_038_627e:
    ld a, [$1f1f]
    ld b, b
    rra
    ld b, [hl]
    ld h, $ff
    ld c, d
    rra
    rra
    ld a, [bc]
    ld a, a
    inc c
    nop
    dec bc
    rra
    add hl, bc
    ld e, c
    rra
    jr z, jr_038_6294

jr_038_6294:
    rrca
    rra
    dec a
    ld [de], a
    ld a, b
    ld a, c
    ld [bc], a
    nop
    rrca
    ld e, e
    ld e, h
    dec c
    inc c
    ld h, l
    ld bc, $6766
    inc hl
    inc h
    ld [bc], a
    inc h
    inc hl
    add hl, hl
    db $10
    dec hl
    inc l
    dec l
    inc h
    add hl, hl
    ld a, [hli]
    ld [bc], a
    ld l, e
    ld b, [hl]
    ld l, h
    rra
    inc c
    ld [hl], l
    db $76
    ld [hl], a
    ld c, $0c
    jr nz, @+$5a

    inc l
    ld e, c
    ld e, d
    ld c, $0c
    rra
    nop
    rra
    ld b, c
    ld a, [bc]
    nop
    ld [hli], a
    inc c
    inc c
    ld a, [bc]
    inc l
    inc l
    ld h, [hl]
    ldh a, [$27]
    ld l, e
    nop
    ld c, [hl]
    ld h, b
    nop
    ld [bc], a
    ld [hl], e
    or l
    adc b
    adc d
    adc h
    adc [hl]
    sub b
    sub d
    sub h
    sub [hl]
    sbc b
    sbc d
    sbc h
    sbc [hl]
    ld l, a
    rst $38
    ld [bc], a
    bit 1, a
    ld h, b
    nop
    ld [bc], a
    inc sp
    call z, $8b89
    adc l
    adc a
    sub c
    sub e
    sub l
    sub a
    sbc c
    sbc e
    sbc l
    sbc a
    ld l, a
    rst $38
    ld [bc], a
    db $e4
    ld e, a
    ld c, e
    ld a, [bc]
    jr nz, jr_038_630c

    inc c
    nop
    dec bc
    ld b, $50
    nop

jr_038_630c:
    rrca
    ret nz

    rra
    dec e
    nop
    ld [hl], h
    ld sp, $3800
    inc [hl]
    ld bc, $3634
    jr nz, jr_038_6398

    ld a, [hl]
    and b
    ld a, l
    ld [hl-], a
    ld sp, $0274
    ret nz

    nop
    dec bc
    ccf
    add b
    add d
    add h
    add [hl]
    adc b
    ld b, l
    nop
    ld a, a
    ld [bc], a
    ret nz

    jp nz, $c6c4

    ret z

    ld [bc], a
    ld [$427f], sp
    ld b, c
    ld b, b
    rra
    inc c
    ld b, b
    ld b, c
    add c
    inc b
    add e
    add l
    add a
    adc c
    ld b, a
    ccf
    pop bc
    jp $c511


    rst $00
    ret


    ccf
    ld d, d
    ld d, c
    ld d, b
    rra
    inc c
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld [hli], a
    ld a, l
    ld a, [hl]
    and b
    ld a, l
    add hl, sp
    ld a, [hl-]
    rra
    dec c
    ld h, b
    ld [$6261], sp
    ld h, e
    ld h, h
    ld c, $0a
    ld h, e
    ld h, d
    ld c, c
    jr nc, @+$4c

    ld c, e
    rra
    inc c
    ld d, e
    ld a, [bc]
    ret nz

    ld c, e
    ret nz

    ld l, e
    ld a, [hli]
    jr nz, @-$0b

    or l
    and b
    dec bc
    ld h, b
    dec h
    dec c
    and b
    dec hl
    rra
    ld sp, $a0ae
    dec bc
    ret nz

    dec hl
    ld a, [hli]
    rra
    dec d
    ret nz

    ld a, [hli]
    ret nz

    inc e
    db $10
    ld [de], a
    ld a, b
    ld a, c
    ld [bc], a

jr_038_6398:
    nop
    ld l, b
    ld e, e
    ld e, h
    dec c
    ld d, b
    ld h, l
    ld bc, $6766
    inc hl
    inc h
    ld [bc], a
    inc h
    inc hl
    ld c, $28
    inc b
    add hl, hl
    ld a, [hli]
    ld [bc], a
    ld l, e
    ld l, h
    rra
    ld d, b
    ld [hl], l
    db $76
    ld b, l
    ld [hl], a
    ld a, $60
    ld e, b
    ld e, c
    ld e, d
    ld c, $50
    rst $38
    nop
    add sp, $41
    ld a, [bc]
    nop
    ld [hli], a
    inc c
    inc c
    ld a, [bc]
    inc l
    inc l
    dec bc
    ld a, [bc]
    or b
    nop
    ld l, $10
    nop
    rra
    nop
    ld h, b
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add d
    add h
    add [hl]
    adc b
    adc d
    adc h
    jp nz, $c6c4

    ret z

    jp z, $ff0f

    ld [bc], a
    call z, $3d3c
    ld a, $60
    ld h, b
    ld [bc], a
    ld a, d
    add e
    add l
    add a
    adc c
    adc e
    adc l
    jp $c7c5


    ret


    bit 1, a
    rst $38
    ld [bc], a
    call $4e4d
    ld h, b
    ld h, b
    ld [bc], a
    ld a, d
    adc [hl]
    sub b
    sub d
    sub h
    sub [hl]
    sbc b
    adc $d0
    jp nc, $d6d4

    ld l, a
    rst $38
    ld [bc], a
    ret c

    ld c, h
    ld h, b
    ld h, b
    ld [bc], a
    ld a, e
    adc a
    sub c
    sub e
    sub l
    sub a
    sbc c
    rst $08
    pop de
    db $d3
    push de
    rst AddAToHL
    ld l, a
    rst $38
    ld [bc], a
    reti


    ccf
    ld h, b
    ld h, b
    ld [bc], a
    ld a, h
    sbc d
    sbc h
    sbc [hl]
    and b
    and d
    and h
    jp c, $dedc

    ldh [$e2], a
    ld l, a
    rst $38
    ld [bc], a
    db $e4
    ccf
    ld h, b
    ld h, b
    ld [bc], a
    ld [hl], e
    sbc e
    sbc l
    sbc a
    and c
    and e
    and l
    db $db
    db $dd
    rst JumpTable
    pop hl
    db $e3
    ld l, a
    rst $38
    ld [bc], a
    push hl
    ld c, a
    ld h, b
    ld h, b
    ld [bc], a
    inc sp
    and [hl]
    xor b
    xor d
    xor h
    xor [hl]
    or b
    and $e8
    ld [$eeec], a
    ld l, a
    rst $38
    ld [bc], a
    ldh a, [$5f]
    ld h, b
    ld h, b
    ld [bc], a
    scf
    and a
    xor c
    xor e
    xor l
    xor a
    or c
    rst $20
    jp hl


    db $eb
    db $ed
    rst $28
    ld l, a
    rst $38
    ld [bc], a
    pop af
    ld l, a
    ld h, a
    rst $20
    ld [bc], a
    ld l, d
    or d
    or h
    ld a, [c]
    db $f4
    rst $08
    rst $38
    ld [bc], a
    ld e, l
    ld e, [hl]
    daa
    rst $20
    ld [bc], a
    ld l, b
    ld l, c
    or e
    or l
    di
    push af
    rst $08
    rst $38
    ld [bc], a
    ld l, l
    ld l, [hl]
    ld e, l
    ld a, [bc]
    jr nz, jr_038_649a

    add b
    rlca
    ld a, [bc]
    nop
    dec c
    ld c, d

jr_038_649a:
    rra
    rra
    rst JumpTable
    ld b, b
    rra
    ld d, b
    ld c, d
    rra
    rra
    nop
    db $10
    rra
    ld b, d

jr_038_64a7:
    rlca
    ld c, $1f
    dec l
    inc b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld a, l
    ld a, [hl]
    nop
    ld a, [bc]
    ld a, l
    ld [bc], a
    ld a, [bc]
    inc a
    dec a
    ld a, $02
    nop
    dec bc
    ld a, d
    ld [hli], a
    ld a, a
    nop
    ret nz

    jp nz, $c6c4

    ret z

    jr nc, @-$32

    adc $09
    ret nc

    jp nc, Jump_038_7fd4

    ld l, $4d
    ld c, [hl]
    rra
    stop
    pop bc
    jp $c7c5


    ret


    jr nc, jr_038_64a7

    rst $08
    ld [de], a
    pop de
    db $d3
    push de
    ld e, a

jr_038_64e0:
    ld [bc], a
    ld c, h
    rra
    inc c
    ld a, e
    add b

jr_038_64e6:
    ld e, a
    ret c

    jp c, $dedc

    ldh [$30], a
    db $e4
    ld a, [bc]
    and $e8
    ld [$7fec], a
    ccf
    rra
    inc c
    ld a, h
    add b
    ld e, a
    reti


    db $db
    db $dd
    rst JumpTable
    pop hl
    jr nc, jr_038_64e6

    ld a, [bc]
    rst $20
    jp hl


    db $eb
    db $ed
    rra
    ld de, $5f73
    jr nc, jr_038_64e0

    nop
    ld a, [bc]
    ld a, a
    ld c, a
    rra
    inc c
    inc sp
    ld [hli], a
    ld a, l
    ld a, [hl]
    xor e
    nop
    ld a, [bc]
    ld a, l
    ld d, d
    ld e, a
    rra
    inc c
    scf
    inc c
    inc c
    and b
    ld d, d
    ld l, a
    inc c
    inc c
    ld l, d
    ld e, $11
    ld e, l
    ld e, [hl]
    dec c
    inc c
    ld l, b
    ld c, h
    ld l, c
    rra
    db $10
    ld l, l
    ld l, [hl]
    dec c
    inc c
    ld d, [hl]
    ld a, [bc]
    jr nz, @+$4d

    nop
    dec bc
    ld l, e
    ld c, a
    nop
    dec c
    ld c, d
    xor [hl]
    ld [hli], a
    dec bc
    nop
    dec bc
    dec hl
    rra
    db $10
    ld b, b
    rra
    ld d, b
    ld c, d
    ld hl, sp+$1f
    rra
    nop
    db $10
    rra
    jr nz, jr_038_6555

jr_038_6555:
    ld e, l
    ld e, c
    ld d, l
    add b
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$f0fc]
    ld sp, hl
    pop hl
    di
    or $e1
    ld b, b
    inc b
    ldh [$f7], a
    ei
    ldh a, [$f4]
    ret z

    jp nz, $8fc1

    pop bc
    xor l
    ret nz

    jp c, $c0ac

    ldh a, [rP1]
    rst $38
    pop af
    cp $30
    ret nz

    nop
    nop
    and d
    call nz, $f8f5
    add hl, sp
    ldh a, [rP1]
    dec b
    nop
    sbc a
    ld a, b
    call nc, $d933
    scf
    rst $30
    ld l, a
    xor [hl]
    call c, $f07d
    xor $06
    dec b
    ld d, b
    nop
    db $fc
    rst $38
    sbc h
    ldh [$80], a
    ld bc, $ff0f
    ld hl, sp+$07
    push bc

jr_038_65ae:
    ld a, $01
    ld e, a
    nop
    ld a, [de]
    db $fc
    ld l, $f0
    db $fd
    ret nz

    add h
    jr jr_038_65d3

    rst $28
    and a
    nop
    inc b
    ld h, b
    ld h, b
    ld h, d
    nop
    dec d
    rst $38
    and h
    db $ec
    and h
    xor $a6
    rst $28
    and e
    rst $20
    and b
    di
    sbc a
    ret nz

    ld a, a
    add hl, de

jr_038_65d3:
    rlca
    nop
    rst $38
    rst $38
    ccf
    ld hl, sp-$01
    db $fc
    rst $38
    di
    rlca
    rrca
    ld bc, $ff77
    nop
    nop
    nop
    nop
    inc bc
    rlca
    cp $00  ; and a / or a
    nop
    adc c
    jr z, jr_038_65ae

    add b
    ldh [$80], a
    add b
    or b
    add sp, -$10
    ldh [$e0], a
    call z, $05f0
    ld b, [hl]
    ret nz

    ld sp, hl
    cp $90
    ldh [$a0], a
    add b
    and b
    ret nc

    ldh [$80], a
    add b
    ld b, h
    nop
    rst $38
    ld a, a
    call c, $9dc0
    cp a
    ldh a, [$a3]
    rst $30
    and [hl]
    rst $28
    and l
    xor $a4
    db $ec
    xor d
    nop
    and h
    db $ec
    db $ec
    db $ec
    xor $a6
    xor $a6
    and $a2
    or $a2
    or $15
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b
    sub b
    jr nz, jr_038_6688

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a
    ld bc, $03ec
    pop de
    ld c, $ff
    dec bc
    add c
    rrca
    nop
    nop
    nop
    nop
    rlca
    inc c
    ld c, $0c
    inc c
    inc c
    ccf
    dec d
    ld c, $00
    rst $38
    rlca
    add e
    ld e, $fc
    rst $38
    rrca
    rst $28
    rrca
    rst $38
    rrca
    nop
    rst JumpTable
    jr nc, jr_038_6677

jr_038_6677:
    ld h, b
    nop
    dec de
    jr jr_038_669a

    jr @+$3a

    jr @+$01

    sbc a
    ret nz

    ldh [$df], a
    ret c

    ret c

    ret c

    ret c

jr_038_6688:
    reti


    ret c

    sbc a
    inc c
    nop
    nop
    rst $38
    dec bc
    nop
    cp a
    ld h, b
    nop
    ret nz

    nop
    sbc [hl]
    scf
    inc sp
    scf

jr_038_669a:
    inc sp
    ccf
    inc sp
    cp b
    or b
    dec d
    nop
    inc sp
    cp b
    or b
    ld [hl], e
    di
    or e
    cp a
    cp a
    cp a
    sbc [hl]
    ld c, $00
    nop
    rst $38
    nop
    push de
    ld h, [hl]
    ld h, c
    nop
    jp $ff00


    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld bc, $6670
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld l, [hl]
    and $e6
    nop
    nop
    nop
    rst $38
    add b
    ld e, h
    ret nz

    nop
    add b
    nop
    db $fd
    db $fd
    rst $38
    db $fd
    ld hl, sp-$20
    db $fc
    db $fc
    ret nz

    ld d, b
    db $fc
    ret nz

    ret nz

    pop bc
    ret nz

    jp $ffc0


    rst $38
    ld a, $00   ; xor a
    nop
    rst $38
    jr nz, jr_038_6740

    ld h, b
    jr nc, jr_038_66ee

jr_038_66ee:
    nop
    ei
    ld hl, sp-$05
    ld hl, sp+$66
    ld h, [hl]
    ld l, h
    ld a, b
    ld d, l
    ld d, b
    ld h, b
    ld a, c
    di
    di
    ld [c], a
    and $66
    inc c
    nop
    nop
    rst $38
    rlca
    push af
    ld b, $18
    nop
    ld [hl], b
    nop
    and $36
    ld a, [hl]
    ld d, l
    nop
    ld b, $fe
    sbc [hl]
    ld e, $0e
    rra
    rlca
    scf
    rlca
    ld h, b
    nop
    nop
    rst $38
    dec bc
    push de
    add hl, de
    nop
    nop
    nop
    nop
    jr jr_038_6741

    rra
    rra
    ld d, l
    nop
    jr @+$3b

    jr c, jr_038_67a6

    ld a, b
    ld sp, hl
    reti


    reti


    reti


    pop bc
    nop
    nop
    rst $38
    rrca
    ld [bc], a
    ei
    inc e
    nop
    jr c, jr_038_673e

jr_038_673e:
    ldh [$80], a

jr_038_6740:
    ret nz

jr_038_6741:
    add b
    add c
    add b
    ldh a, [rLCDC]
    ldh [$f8], a
    cp $1c
    jr jr_038_6768

    jr @+$3e

    jr jr_038_6740

    add b
    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    nop
    nop
    rrca
    nop
    cp $f0
    ldh a, [$f0]
    ldh [rHDMA5], a
    ld d, b
    ret nz

    pop bc
    jp $dfcf


    rst JumpTable

jr_038_6768:
    ld sp, hl
    pop af
    nop
    nop
    rst $38
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_038_67a6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    ld a, [hl]
    ld a, d
    nop
    ld a, b
    ld a, [hl]
    ld [hl], b
    nop
    ld c, b

jr_038_67b8:
    ld a, a
    ld [hl], c
    nop
    ld [hl], c
    ld a, b
    jr nc, jr_038_67f1

    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    inc b
    inc a
    ld a, $40
    ld b, d
    ld b, h
    dec c
    ld [$7f71], sp
    add b
    rra
    ld e, b
    ld a, b
    ld [hl], c
    ld [hl], c
    ld sp, $3533
    scf
    ld bc, $3b39
    dec a
    ccf
    ld b, c
    ld b, e
    ld b, l
    dec c
    ld [$7860], sp
    rra
    ld h, b
    jr nc, jr_038_67ef

    ld c, b
    ld c, d
    ld c, h
    ld c, [hl]
    ld d, b
    ld [bc], a
    ld d, d
    ld d, h

jr_038_67ef:
    ld d, [hl]
    ld e, b

jr_038_67f1:
    ld e, d
    ld e, h
    ccf
    sbc b
    ld c, c
    nop
    ld c, e
    ld c, l
    ld c, a
    ld d, c
    ld d, e
    ld d, l
    ld d, a
    ld e, c
    ld [hl-], a
    ld e, e
    ld e, l
    ld e, $08
    rra
    ld h, b
    ld a, c
    ld a, e
    nop
    ld a, b
    ld a, c
    add b
    rra
    ld d, b
    sbc h
    sbc h
    sbc h
    add b
    add d
    add h
    add [hl]
    nop
    adc b
    adc d
    adc h
    adc [hl]
    sub b
    sub d
    sub h
    sub [hl]
    jr nc, jr_038_67b8

    sbc d
    db $10
    ld [$501f], sp
    ld [hl], d
    ld [hl], h
    db $76
    add c
    nop
    add e
    add l
    add a
    adc c
    adc e
    adc l
    adc a
    sub c
    nop
    sub e

jr_038_6834:
    sub l
    sub a
    sbc c
    sbc e
    db $76
    ld [hl], h
    ld [hl], d
    add h
    rra
    ld d, b
    ld [hl], e
    ld [hl], l
    ld [hl], a
    ld [hl], c
    nop
    ld e, b
    ld [hl], a
    ld [hl], l
    ld b, b
    ld [hl], e
    rra
    ld d, b
    ld a, h
    ld [hl], c
    ld [hl], c
    and b
    and d
    and h
    nop
    and [hl]
    xor b
    xor d
    xor h
    xor [hl]
    or b
    or d
    or h
    inc b
    or [hl]
    cp b
    cp d
    cp h
    cp [hl]
    ld e, $50
    ld [hl], b
    ld a, l
    nop
    ld [hl], c
    ld [hl], c
    and c
    and e
    and l
    and a
    xor c
    xor e
    nop
    xor l
    xor a
    or c
    or e
    or l
    or a
    cp c
    cp e
    jr nz, jr_038_6834

    cp a
    rra
    ld e, b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ret nz

    jp nz, $c400

    add $c8
    jp z, $cecc

    ret nc

    jp nc, $d401

    sub $d8
    jp c, $dedc

    ld a, h
    rra
    ld l, b
    nop
    pop bc
    jp $c7c5


    ret


    set 1, l
    rst $08
    nop
    pop de
    db $d3
    push de
    rst AddAToHL
    reti


    db $db
    db $dd
    rst JumpTable
    ld b, b
    ld a, l
    ld a, a
    ld l, b
    ldh [$e2], a
    db $e4
    and $e8
    ld [$ec00], a
    xor $f0
    ld a, [c]
    db $f4
    or $f8
    ld a, [$fc20]
    cp $7f
    ld [hl], b
    pop hl
    db $e3
    push hl
    rst $20
    jp hl


    nop
    db $eb
    db $ed
    rst $28
    pop af
    di
    push af
    rst $30
    ld sp, hl
    db $10
    ei
    db $fd
    rst $38
    ld a, a
    ld [hl], b
    nop
    ld [bc], a
    inc b
    ld b, $00
    ld [$0c0a], sp
    ld c, $10
    ld [de], a
    inc d
    ld d, $08
    jr jr_038_68fa

    inc e
    ld e, $7f
    ld [hl], b
    ld bc, $0503
    nop
    rlca
    add hl, bc
    dec bc
    dec c
    rrca
    ld de, $1513
    inc b
    rla
    add hl, de
    dec de
    dec e
    rra
    ld a, a
    ld [hl], b
    jr nz, @+$24

jr_038_68fa:
    inc bc
    inc h
    ld h, $28
    ld a, [hli]
    inc l
    ld l, $06
    ld [hl-], a
    ld a, a
    ld [hl], b
    nop
    ld hl, $2523
    daa
    add hl, hl
    dec hl
    dec l
    cpl
    db $eb
    ld b, $32
    ld a, a
    ld [hl], b
    ld [hl], $0a
    ld b, [hl]
    ld [bc], a
    ld c, d
    ld e, [hl]
    ld a, a
    ld [hl], b
    ld [hl], $0a
    ld d, b

jr_038_691e:
    ld b, a
    ld [bc], a
    ld c, d
    ld e, a
    ld a, a
    ld [hl], b
    ld h, b
    ld h, d
    ld h, h
    ld h, [hl]
    ld [$6a68], sp
    ld l, h
    ld l, [hl]
    rl c
    ld a, b
    ld a, d
    ld a, h
    ret nz

    sbc [hl]
    ld e, d
    ld a, a
    db $10
    ld h, c
    ld h, e
    ld h, l
    ld h, a
    ld l, c
    ld l, e
    ld de, $6f6d
    ld [hl], c
    rrc c
    ld a, c
    ld a, e
    ld a, l
    ld a, $5a
    reti


    ld e, a
    db $10
    rra
    ld l, d
    sbc [hl]
    ld a, a
    ld [hl], b
    rra
    ld h, d
    sbc l
    sbc a
    ld a, a
    ld [hl], b
    ldh a, [rIE]
    ld bc, $00c0
    ld [hl], b
    ld a, a
    ld e, b
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [hli], a
    ld bc, $2270
    ld b, $00
    ld c, b
    ld [bc], a
    db $ed
    jr nz, jr_038_697c

jr_038_696c:
    nop
    ld h, b
    rra
    ld e, b
    ld b, d
    inc e
    ld l, b
    nop
    ld [$3f62], sp
    ld l, b
    pop hl
    dec a
    ld l, b
    ccf

jr_038_697c:
    nop
    jr nc, jr_038_691e

    ldh [rDIV], a
    inc b
    inc b
    inc bc
    nop
    ld e, b
    rst $00
    db $10
    ld [$d81f], sp
    inc h
    inc h
    inc h
    rra
    ld l, b
    nop
    ld h, b

jr_038_6992:
    rra
    add b
    ld l, a
    dec b
    nop
    ld l, b
    rra
    nop
    or b
    dec c
    nop

jr_038_699d:
    ld l, b
    rra
    nop
    nop
    rra
    nop
    ldh a, [$e1]
    ld a, d
    ret nz

jr_038_69a7:
    rra
    ld d, b
    nop
    inc e
    call c, $5e0c
    inc c
    adc [hl]
    adc b
    adc $00
    add b
    db $ec
    ld [bc], a
    ld [c], a
    inc c
    ld l, $80
    adc $00
    add b
    ret z

    jr nz, @+$22

    ret nz

    add sp, $00
    rst $28
    nop
    rra
    ret nz

    rra
    nop
    cpl
    ret nz

    rlca
    nop
    add b
    nop

jr_038_69cf:
    jr nz, @+$05

    ret nz

    nop
    ldh a, [$e1]
    jr jr_038_69cf

    nop
    inc b
    cp $00  ; and a / or a
    jr jr_038_699d

jr_038_69dd:
    jr jr_038_69a7

    jr jr_038_69e1

jr_038_69e1:
    adc b
    jr c, jr_038_696c

    dec sp
    add hl, de
    db $76
    ld [de], a
    ld b, l
    nop
    nop
    dec de
    ld de, $6500
    jr nz, jr_038_69dd

    ld b, h
    nop
    adc $46
    xor a
    daa
    ld h, a
    ld h, e
    ld [hl], a
    jr nc, jr_038_69fc

jr_038_69fc:
    jr c, jr_038_6a03

    add l
    and a
    xor a
    jr nz, jr_038_6992

jr_038_6a03:
    nop
    nop
    adc a
    nop

jr_038_6a07:
    ld b, h
    nop
    dec d
    nop
    sbc b
    ld b, c
    nop
    ld e, e
    add b
    jp hl


    ret nz

    di
    nop
    jp hl


    jr @+$04

    jp c, $1b0a

    add d
    adc d
    ld b, b
    ld c, l
    ld [$009f], sp
    adc a
    ld b, b
    ld l, h
    ld b, b
    ld h, b
    nop
    ld h, b
    ld bc, $2000
    inc bc
    ld [hli], a
    ld c, $04
    db $fc
    nop
    ldh a, [rP1]
    nop
    ld a, e
    nop
    ld a, l
    nop
    dec a
    nop
    ld h, $00
    jr jr_038_6a48

    inc b
    jr nc, @+$04

    dec [hl]
    ld [$0036], sp
    ld [$3b18], sp

jr_038_6a48:
    nop
    inc a
    nop
    ld c, $01
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld e, $00
    ld bc, $de98
    jr nz, jr_038_6a8b

    ret nz

    ldh [rSC], a
    nop
    inc c
    db $e3
    inc e
    db $db
    inc a
    dec sp
    db $fc
    ld a, e
    nop
    db $fc
    add b
    ld [hl], h
    ld [$4809], sp
    jr c, jr_038_6a07

    nop

jr_038_6a72:
    ld [hl], b
    daa
    ld l, h
    ld b, l
    ld e, $a3
    ld e, $81
    nop
    ccf
    ld a, $18
    jr c, jr_038_6a90

    jr nc, @-$7e

    jr nc, jr_038_6a84

jr_038_6a84:
    add b
    db $10
    ld b, b
    ld [$0060], sp
    nop

jr_038_6a8b:
    inc hl
    nop
    daa
    nop
    nop

jr_038_6a90:
    ld b, b
    ld l, b
    jr nc, jr_038_6ac8

    jr jr_038_6a96

jr_038_6a96:
    ld a, [hl-]
    db $10
    ld e, d
    ld b, h
    ld h, [hl]
    ld h, h
    ld l, [hl]
    ld a, [de]
    nop
    inc e
    ld a, [hl-]
    ld sp, $9c3c
    ld e, h
    adc h
    add c
    nop
    ld b, b
    and e
    ld b, c
    ret nz

    jr nz, jr_038_6aee

    jr nz, jr_038_6ab0

jr_038_6ab0:
    nop
    ld b, b
    ld [hl], d

jr_038_6ab3:
    jr nz, jr_038_6ab3

    ld b, b
    call c, $b981
    nop
    add d
    add l
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    inc b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld a, a
    nop

jr_038_6ac8:
    rst $28
    ldh a, [rLCDC]
    nop
    add b
    db $10
    rrca
    adc b
    and a
    add h
    or e

jr_038_6ad3:
    inc b
    db $10
    stop
    nop
    ld [$0008], a
    nop
    ld bc, $0140
    add a
    add b
    ld c, $06
    ld l, $08
    add hl, bc
    ei

jr_038_6ae7:
    ld [$8984], sp
    ld [$c000], sp
    ld [bc], a

jr_038_6aee:
    pop af
    rst $38
    jr nz, jr_038_6a72

    ld e, b
    nop
    ld [$88d8], sp
    ld e, b
    adc b
    jr c, jr_038_6b14

    dec sp
    ld [bc], a
    ld [de], a
    halt

Call_038_6b00:
    ld b, l
    ld de, $1c1b
    add hl, bc
    ld bc, $0120
    nop
    ld bc, $0310
    nop
    ld bc, $0102
    nop
    ld [bc], a
    ld h, c
    adc a

jr_038_6b14:
    ld h, b
    adc a
    jr nz, jr_038_6ae7

    add b
    nop
    ld h, a
    ldh a, [$03]
    call nz, $8c0c

jr_038_6b20:
    ld e, $87
    nop
    ccf
    ldh [$f0], a
    ld a, h
    rst $38
    rrca
    rst $38
    ld bc, $0180
    jr nz, @+$21

    nop
    add e
    inc bc
    rlca
    rrca
    rst $38
    inc b
    db $fc
    rst $38
    ret nz

    rst $38
    add b
    ld bc, $0008
    cp $00  ; and a / or a
    nop
    pop af
    call nz, $04f2
    ld a, [c]
    ld [$00e6], sp
    nop
    db $ec
    inc e
    ret nz

    jr c, jr_038_6ad3

    ld [hl], b
    ld [$2004], sp
    jr jr_038_6b55

jr_038_6b55:
    inc bc
    inc b
    ld bc, $0608
    ld bc, $0500
    ld [bc], a
    ld bc, $0206
    dec b
    inc bc
    inc b
    nop
    add c
    ccf
    add b
    ccf
    ld b, b
    sbc a
    jr nz, @-$2f

    nop
    ret nz

    rlca
    sub b
    ld sp, $7c18
    ld c, $7f
    nop
    ldh [$f0], a
    ld a, b
    db $fc
    rra
    rst $38
    rlca
    rst $38
    nop
    ld b, $ff
    inc b
    rst $38
    inc b
    ld a, a
    nop
    rra
    nop
    inc bc
    rlca
    ld e, $3f
    ld hl, sp-$01
    ldh [rIE], a
    ld b, b
    nop
    ld c, l
    ld [$f801], sp
    nop
    call nz, $b000
    nop
    jr nc, @-$7e

    jr nz, jr_038_6b20

    ld b, b
    jr nz, jr_038_6be3

    nop
    ld [bc], a
    add c
    ld b, c
    add c
    ld bc, $0382
    sbc [hl]
    db $10
    ld [bc], a
    nop
    inc bc
    ld b, h
    ld b, a
    add h
    ret z

    ld [bc], a
    pop de
    inc bc
    nop
    db $ec
    dec b
    sbc $40
    ld a, b
    add b
    pop af

jr_038_6bbf:
    nop
    nop
    rst $38
    add c
    nop
    db $76

jr_038_6bc5:
    ld [$e45b], sp
    add hl, bc
    db $10
    or $81
    ld a, [hl]
    jp c, $e008

    nop
    ld hl, sp+$00
    nop

Jump_038_6bd4:
    db $fc
    jr nz, jr_038_6be7

    ret nz

    adc [hl]
    or h
    ld b, e
    sbc b
    nop
    ld h, c
    ld bc, $0406
    inc bc
    rlca

jr_038_6be3:
    nop
    dec b
    ld [bc], a
    ld [bc], a

jr_038_6be7:
    inc b
    inc bc
    ld [bc], a
    ld bc, $d303
    ld [$0003], sp
    ld a, a
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rP1], a
    rrca
    jr nc, jr_038_6bbf

    db $e4
    inc b
    and $0f
    add b
    inc bc
    ret nz

    ldh a, [$f8]
    ccf
    rst $38
    inc c
    ld bc, $7f08
    ld [$ff00], sp

jr_038_6c0e:
    nop
    ld e, $08
    ld e, $30
    cp $c0
    nop
    cp $01
    db $fc
    ld bc, $04f8
    or $0c
    nop
    rst $08
    jr @+$21

    add b
    rlca
    ld bc, $0c9e
    nop
    add b
    add b
    ld d, e
    call $e21b
    dec c
    ld a, e
    nop
    inc b
    rrca
    nop
    jr c, jr_038_6bc5

    ld a, b
    ld h, a
    ret z

    nop
    rst $30
    inc c
    di
    add l
    ld a, d
    rst $00

jr_038_6c40:
    jr c, jr_038_6c0e

    nop
    jr nc, @-$0e

    nop
    add c
    ld a, [hl]
    swap h
    sbc $20
    ld hl, $a8f0
    ld [$000e], sp
    ld h, $48
    inc b
    nop
    add sp, -$6c
    ld l, b
    inc [hl]
    ret z

    ld h, [hl]
    sbc b
    jp z, $3400

    ld [hl-], a
    inc c
    rlca
    sbc b
    ld c, l
    add d
    ld l, e
    ld h, b
    inc b
    ld c, l
    ld hl, $4000
    db $e3
    rrca
    jr nz, jr_038_6c40

    ldh [rP1], a
    rrca
    ld [hl], b
    add a
    ld [$1cf3], sp
    ld h, b
    ccf
    stop
    dec de
    inc b
    ld a, a
    ld [$1fff], sp
    rst $38
    ld [bc], a
    jr nz, @+$01

    inc bc
    ld c, a
    add hl, bc
    nop
    rra
    add b
    jr nz, jr_038_6cbf

    nop
    ld a, a
    ldh [$fe], a
    add b
    cp $00  ; and a / or a
    db $fc
    ld bc, $f900
    ld [bc], a
    di

jr_038_6c9c:
    inc b
    rst $00
    ld [$431f], sp
    nop
    ld [hl], b
    ld b, b
    ld a, b
    ld b, d
    ei
    add d
    ei
    ld [bc], a
    nop
    ei
    ld [bc], a
    rst $30
    inc b
    rst $30
    inc b
    rst $20
    add b

jr_038_6cb3:
    nop
    inc c
    nop
    ld a, $00   ; xor a
    sbc [hl]
    nop
    sbc $10
    nop
    sbc $12

jr_038_6cbf:
    call c, $d815
    jr jr_038_6c9c

    inc b
    nop
    add sp, -$78
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    ret nz

    jr nz, jr_038_6cd0

jr_038_6cd0:
    add b
    ld e, a
    jr jr_038_6cda

    ld bc, $2611
    scf
    nop
    nop

jr_038_6cda:
    db $10
    inc bc
    inc bc
    nop
    ld [$0a02], sp
    ld b, $00
    inc b
    nop
    ld b, $09
    db $f4
    ld [$4800], sp
    adc a
    and $7f
    add hl, bc
    ld a, [bc]
    dec bc
    ld [$0033], sp
    db $fc
    ld a, c
    add hl, bc
    ld l, e
    add hl, bc
    db $fc
    ld h, b
    ld [bc], a
    call z, $0009
    db $10
    ld [$10cf], sp
    sbc a
    dec a
    ld [bc], a
    ld a, $bf
    ld b, b
    ld a, [hl]
    add b
    ld hl, sp+$0f
    jr jr_038_6d27

    rra
    ret nc

    jr nc, jr_038_6cb3

    ld e, c
    jr nz, jr_038_6d16

jr_038_6d16:
    jr z, @+$1e

    ld a, [de]
    ld c, c
    add hl, de
    jp c, $0819

    pop bc
    cpl
    ldh [rIF], a
    ld hl, $c70a
    ret nz

    rla

jr_038_6d27:
    ld [bc], a
    sbc b
    dec sp
    inc c
    ld a, h
    ld b, $7e
    rra
    ld b, d
    inc bc
    rst $00
    push de
    ld [$11cf], sp
    rra
    rst $38
    ld hl, sp+$1f
    ld a, [de]
    ld h, l
    ld [$0867], sp
    ld [$f6c0], sp
    nop
    or $1f
    ld [de], a
    nop
    db $ec
    inc b
    nop
    ret c

    jr c, jr_038_6d4d

jr_038_6d4d:
    ldh a, [$08]
    ld bc, $080e
    nop
    rlca
    inc e
    db $10
    ld [$3013], sp
    rlca
    stop
    daa
    ld b, b
    scf
    ldh a, [$87]
    inc bc

jr_038_6d62:
    ld a, a
    ld bc, $7f00
    nop
    ccf
    add b

jr_038_6d69:
    sbc a
    ret nz

    rst $08
    ld h, b
    nop
    rst $20

jr_038_6d6f:
    jr nc, jr_038_6d62

    jr jr_038_6d6f

    nop
    add e
    ret nc

    jr nz, @-$1e

    ld a, e
    ld hl, $180a
    rst $38
    jr nc, @+$01

    jr nz, jr_038_6d81

jr_038_6d81:
    rst $38
    nop
    ccf
    inc bc
    ldh [rNR33], a
    inc c
    ld a, b
    ret nz

    and c
    add hl, bc
    dec e
    ld a, [bc]
    db $fc
    inc bc
    ld hl, sp+$06
    pop hl
    ret nz

    ld [bc], a
    jr c, jr_038_6da7

    ldh [$e0], a
    nop
    ldh [$e5], a
    ld a, [bc]
    ret nz

    ld [hl], b
    nop
    ld [bc], a
    add hl, bc
    xor d
    ld [$0ab9], sp
    ld [bc], a

jr_038_6da7:
    dec b
    ld [bc], a
    ld b, $00
    ld bc, $080f
    inc bc
    inc c
    ld de, $981e
    nop
    ld h, e
    ldh [rSB], a
    call nz, $861c
    ld a, $83
    inc h
    ccf
    add c
    rst $30
    db $10
    rrca
    ld c, $69
    add hl, de
    inc bc
    ld a, a
    nop
    ld [bc], a
    rra
    add b
    jp $f0e0


    ld a, [hl-]
    db $fc
    inc b
    nop
    nop
    and l
    jp $9bfe


    jr nz, @+$01

    nop
    nop
    nop
    ld d, e
    jr c, jr_038_6df7

    rlca
    sbc [hl]
    ret nz

    inc e
    nop
    jp nz, $cc10

    jr c, jr_038_6d69

    ld [hl], b
    nop
    ret nz

    ld h, b
    jr nz, @+$55

    ld [$1800], sp
    inc b
    nop
    inc c
    nop
    inc e

jr_038_6df7:
    nop

jr_038_6df8:
    nop
    jr z, @+$12

    ld a, b
    nop
    ld [de], a
    inc c
    inc e
    nop
    ld hl, $211c
    inc c
    ld sp, $710c
    ld b, [hl]
    nop
    jr c, jr_038_6e6f

    inc e
    ld a, $40

jr_038_6e0f:
    jr nz, jr_038_6df8

    jr nc, jr_038_6e16

    di
    jr jr_038_6e0f

jr_038_6e16:
    inc c
    db $fc
    ld b, $57
    ld [$0855], sp
    ld bc, $3f3f
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add h
    dec bc
    stop
    and h
    jp nz, $1057

    db $e3
    ld hl, sp+$02
    ld sp, hl
    nop
    ld b, $f0
    inc c
    ret nz

jr_038_6e36:
    add hl, sp
    ld bc, $03f2
    inc c
    ld h, b
    rla
    ld c, c
    ld h, $a1
    ld [$0abf], sp
    inc b
    ld h, a
    nop
    nop
    rst $08
    ld [bc], a
    cp h
    ld de, $08e1
    rrca
    nop
    nop
    inc b
    ld de, $0218
    ld sp, $c42f
    nop
    sub c
    ld c, $59
    ld h, [hl]
    adc l
    ld [hl], d
    rst $08
    jr nc, jr_038_6e61

jr_038_6e61:
    cp b
    ld b, b
    ret nc

    jr nz, jr_038_6e36

    jr nz, jr_038_6ec8

    add b
    ld b, b
    ld h, b
    pop de
    add hl, hl
    dec a
    ld b, c

jr_038_6e6f:
    add hl, de
    ld h, e
    ld c, b
    inc sp
    nop
    ld a, b
    inc bc
    jr c, @+$05

    inc a
    ld bc, $300e
    nop
    rra
    nop
    ld [bc], a
    sbc a
    add b
    rst $08
    ret nz

    db $e3
    inc b
    ld [hl], b
    ld hl, sp+$1c
    cp $07
    ld e, a
    add hl, bc
    ld [bc], a
    ccf
    add c
    daa
    inc de
    nop
    ld hl, sp+$06
    ld b, $18
    ccf
    inc sp
    inc hl
    nop
    ld b, b
    jr nz, @-$37

    ld [$1ccf], sp
    ld d, c
    ld c, $05
    ld e, c
    ld b, $7d
    ld [bc], a
    ld a, l
    ld e, $08
    ld [hl], b
    dec d
    ld [$8900], sp
    db $76

jr_038_6eb1:
    adc e
    ld [hl], h
    call c, $f820
    ld bc, $8800
    inc bc
    ld bc, $d826
    jr nz, jr_038_6eb1

    nop
    nop
    ret nz

    inc b
    add b
    db $10
    sub b
    jr nz, jr_038_6ec8

jr_038_6ec8:
    ld h, b
    ld de, $4040
    nop
    sub e
    inc c
    rlca
    ld [$eb07], sp
    inc de
    add b
    rst JumpTable
    ld sp, $004f
    ld h, c
    ld b, h
    jr c, jr_038_6f4e

    rrca
    db $10
    cp a
    nop
    ld e, a
    inc h
    ld a, [de]
    ld bc, $03f9
    jp $0e22


    rra
    pop bc
    ld de, $3ce0
    ldh a, [$c6]
    inc c
    ld hl, $8000
    ld [$18cc], sp
    sbc $10
    sbc [hl]
    jr nc, jr_038_6f05

    inc a
    ld h, c
    ld a, h
    jr c, @+$6c

    dec bc
    inc b
    db $76

jr_038_6f05:
    ld b, $03
    db $f4
    sub b
    db $e4
    and b
    ret nz

    ret nz

    inc h
    ld [hl-], a
    dec e
    ld a, [de]
    nop
    rlca
    inc b
    inc bc
    inc c
    inc de
    inc c
    add hl, de
    ld h, $10
    call c, $e1a3
    dec e
    ld [de], a
    rst $08
    add b
    rla
    jr @-$52

    dec e
    ld a, [de]
    inc bc
    rst $28
    dec bc
    ld a, [hl]
    rra
    ld a, [de]
    dec e
    ld a, [de]
    ccf
    nop
    ld [bc], a
    add a
    rlca
    rrca
    ld a, $ff
    ldh a, [rNR33]
    ld [hl-], a
    cp $11
    ld bc, $80f0
    rra
    ld a, [bc]
    nop
    and $02
    dec e
    ld a, [bc]
    ld [bc], a
    inc e
    and b
    ld a, b
    inc b
    ldh [rNR23], a
    sub [hl]

jr_038_6f4e:
    jr nc, jr_038_6f53

    ld bc, $0703

jr_038_6f53:
    ld c, $11
    ld c, $18
    daa
    cp l
    inc c
    nop
    inc b
    dec sp
    inc h
    db $dd
    ld h, d
    sbc [hl]
    ld h, b
    call z, $3100
    add sp, $13
    ld hl, sp+$03
    ld [hl], b
    add b
    ld hl, $c705
    and c
    ld c, a
    ldh [rIF], a
    call nc, $ef0c
    adc e
    ld de, $3d90
    ld a, [hl-]
    db $e3
    jr nc, jr_038_6fa0

    add hl, bc
    rrca
    rst $38
    ret nz

    ldh [rNR32], a
    ld a, [$3ffc]
    dec sp
    ld a, [bc]
    sub e
    add hl, de
    db $ed
    dec bc
    nop
    inc b
    db $10
    inc l
    ld e, $f8
    dec a
    ld a, [hl-]
    jr jr_038_6f9c

    ld [$7df0], sp

jr_038_6f99:
    ldh a, [$1f]
    dec c

jr_038_6f9c:
    ccf
    ld [de], a
    push hl
    ld d, d

jr_038_6fa0:
    dec c
    add hl, bc
    and l
    add hl, bc
    ld [bc], a
    ld [c], a
    ld a, [bc]
    nop
    ld e, h
    ld h, e
    sbc a
    ldh [$0e], a
    ldh a, [$86]
    ld a, b

jr_038_6fb0:
    nop
    ld [c], a
    inc e
    ld hl, sp+$00
    pop af
    rlca
    ld h, c
    adc a
    ld [bc], a
    nop
    add e
    nop
    ld a, c
    ld [$effd], sp
    add hl, bc
    cp $e8
    xor c
    ld a, [bc]
    ld l, c
    ld [$19fb], sp
    cp $fb
    ld de, $3f06

jr_038_6fcf:
    add h
    adc b
    ld [hl], a
    ld [$ff0c], sp
    db $10
    rst AddAToHL
    jr jr_038_6f99

    ldh [$7c], a
    ldh [$65], a
    jr jr_038_703a

    ld a, [de]
    ld l, l
    stop
    db $fc
    nop
    ldh [rNR10], a
    dec b
    add b
    ld b, b
    ld h, b
    inc e
    ld a, b
    ld l, l
    ld [$7980], sp
    add hl, bc
    adc l
    nop
    jr nz, @+$08

jr_038_6ff6:
    ld bc, $6707
    add hl, bc
    ld bc, $0408
    inc b
    ld [$b5c0], sp
    dec bc
    dec e
    inc d
    ldh [rIF], a
    ldh a, [rTAC]
    ldh [$03], a
    nop
    ld c, b
    sbc b
    adc h
    ld a, $87
    ccf
    ret nz

    rst $08
    ld b, d
    ld h, c
    ld h, c
    ld [de], a
    ld hl, sp+$0c
    cp $17

jr_038_701b:
    ld d, a
    db $10
    adc a
    inc c
    ldh [$f3], a
    jr c, jr_038_701b

    cp c
    ld [$0b38], sp
    jr nc, jr_038_6fb0

    ld bc, $af00
    ld b, b
    ld a, [hli]
    inc bc
    ldh a, [$08]
    ld sp, hl
    ld [de], a
    ld a, b
    jr nz, jr_038_6ff6

    jr nc, jr_038_6fcf

    inc de
    ld [hl], e

jr_038_703a:
    ld d, h
    push af
    ld [de], a
    ld h, b
    adc a
    ldh [rP1], a
    inc bc
    ret z

    inc c
    rst $00
    rra
    ld b, b
    sbc a
    ld h, b
    ld d, c
    rrca
    sub a
    db $10
    ld b, b
    adc a
    ld [$0202], sp
    db $fc
    ld b, l
    dec bc
    ld [bc], a
    ld b, b
    ld hl, sp-$80
    ld d, d
    ret nz

    stop
    rrca

jr_038_705e:
    ld e, b
    nop
    add h
    ld e, h
    ld b, b
    sbc h
    ldh [$0e], a
    ld b, b
    ld a, [hli]
    nop
    ld [hl], b
    inc bc
    inc a
    nop
    inc c
    ld de, $010c
    ret nz

    ld c, d
    ld d, $43
    db $10
    ld bc, $06e3
    rrca
    ld hl, sp-$01
    ld b, b
    ld [$1265], sp
    ld a, b
    add e
    ld bc, $1ec1
    nop
    nop
    jr z, jr_038_70b9

    add h
    ld [hli], a
    sub [hl]
    ld [$4802], sp
    nop
    ld h, c
    add h
    ldh a, [rSC]
    ldh a, [$81]
    db $e4
    cpl
    ret nz

    dec h
    ld [hli], a
    add hl, sp
    add hl, sp
    adc b
    ld c, [hl]
    db $10
    ld e, $60
    inc a
    ld [$c931], sp
    ld [hl], c
    ld [bc], a
    ld h, d
    inc h
    ld b, b
    nop

jr_038_70ac:
    jr jr_038_70ae

jr_038_70ae:
    add b
    add e
    ret nz

    nop
    ret c

    sub b
    dec e
    add hl, de
    ld b, c
    jr nz, jr_038_7118

jr_038_70b9:
    ld b, c
    jr nz, jr_038_70bc

jr_038_70bc:
    jr jr_038_705e

    or b
    add hl, bc
    jr jr_038_70c2

jr_038_70c2:
    cpl
    jr nc, jr_038_70ac

    ld hl, sp+$63
    ld a, h
    inc sp
    ccf
    nop
    rrca
    rrca
    jr jr_038_70ee

    ldh a, [rIE]
    di
    db $fc
    add d
    ld l, $11
    inc sp
    call z, $ffe3
    rst $38
    ld de, $e31a
    jr nz, jr_038_70fc

    ccf
    rra
    ld [$f0ef], sp
    rst $28
    ldh a, [$67]
    ld bc, $3178
    ld a, $1e
    rra

jr_038_70ee:
    rra
    rra
    jr z, jr_038_7114

    sbc b
    rst $20
    dec c
    rst $38
    inc a
    inc hl
    ld [$1000], sp
    add c

jr_038_70fc:
    add c
    and l
    jr nz, @-$59

    sbc c
    nop
    ld [$a5a5], sp
    add c
    add c
    rst $38
    ld b, b
    rst $38
    ld d, b
    nop
    nop
    ldh [$03], a
    add hl, bc
    jr c, jr_038_7132

    jr nz, jr_038_7174

jr_038_7114:
    ld b, b
    nop
    ret nz

    ret nz

jr_038_7118:
    ret nz

    ld bc, $0f2f
    ld l, a
    ld h, $00
    ld h, [hl]
    ld [hl], b
    ld [hl], b
    jr c, @+$3b

jr_038_7124:
    nop
    inc bc
    inc bc
    nop
    inc de
    add hl, de
    add hl, de
    add b
    add b
    nop
    nop
    ld b, b
    nop
    ret nz

jr_038_7132:
    ld h, b
    ld h, b
    jr nz, jr_038_7162

    add h
    xor [hl]
    add $00
    add $82
    sub d
    ld bc, $0600
    ld bc, $000c
    nop
    add hl, de
    nop
    ld [hl], $01
    inc c
    inc bc
    nop
    nop
    db $e4
    ld de, $08f1
    jr c, jr_038_716e

    ld a, h
    jr c, jr_038_7155

jr_038_7155:
    dec a
    sub b
    sbc e
    ret nz

    rst $00
    nop
    rla
    ld bc, $7700
    inc bc
    ld [hl], e
    ld a, [de]

jr_038_7162:
    ei
    jr c, jr_038_71a0

    stop
    sbc b
    ld b, a
    rst AddAToHL
    ld l, h
    db $ec
    db $eb
    db $eb

jr_038_716e:
    rlc d
    rrc e
    dec bc
    ld a, a

jr_038_7174:
    nop
    rst $38
    ld bc, $ef28
    nop
    db $10
    add [hl]
    jr c, jr_038_7124

    jr c, jr_038_7188

    ld a, b
    cp h
    nop
    dec a
    sbc b
    dec de
    ld h, c
    inc bc

jr_038_7188:
    ld d, l
    ld hl, $000c
    ld b, b
    xor h
    ld de, $116c
    dec bc
    db $eb
    dec b
    nop

jr_038_7195:
    push hl
    xor $ee
    rst $20
    rst $30
    inc sp
    dec sp
    add hl, de
    nop
    add hl, de

jr_038_719f:
    inc h

jr_038_71a0:
    inc c
    jr nc, @+$13

    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0201
    rlca
    nop
    rrca
    nop
    nop
    rra
    nop
    ld e, $01
    ld h, [hl]
    ld a, b
    adc $00
    ldh a, [$7e]
    add b
    ld a, [c]
    inc c
    db $e3
    inc e
    db $db
    nop
    inc a
    dec sp
    db $fc
    ld a, e
    db $fc
    ld [hl], h
    ld [$00ee], sp
    jr jr_038_7195

    jr c, @-$67

    ld [hl], b
    daa
    ld l, h
    ld b, l
    nop
    ld e, $a3
    ld e, $81
    ccf
    ld bc, $8083
    nop
    call nz, $6370
    add b
    dec bc
    ld b, e
    rra
    dec bc
    ld bc, $4d59
    ld e, l
    ld b, a
    ld c, a
    ccf
    nop
    ld bc, $5010
    rra
    ld bc, $0f18
    ld bc, $1d08
    cp $e5
    ld e, $02
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld bc, $c120
    nop
    rra
    ld [c], a
    ld c, $f0
    dec b
    ld a, b
    add c
    cp h
    nop
    pop bc
    cp $c0
    sbc $e0

jr_038_7213:
    ld e, a
    ldh [$60], a
    nop
    ld h, b
    ld h, b
    db $76
    ld [hl-], a
    ld [hl], d
    ld h, b
    jr nc, jr_038_719f

    nop
    inc c
    rst $00
    rra
    ld b, d
    ld l, $00
    ld b, b
    rlca
    or b
    ld [de], a
    ld de, $2001
    ld b, c
    cp e
    jr nz, @+$41

    ret nz

    rrca
    ld [hl], b
    jr nz, @+$03

    ld e, $1a
    db $10
    ccf
    ret nz

    rst $38
    nop
    cp $80
    ld bc, $fc08
    nop
    ld hl, sp+$00
    dec h
    jp nz, JumpTable

    rlca
    jr jr_038_727c

    inc d
    jr c, jr_038_725b

    jr c, jr_038_725a

    nop
    jr jr_038_7298

    ld d, $e6
    rrca
    inc sp
    rlca
    ld b, c

jr_038_725a:
    nop

jr_038_725b:
    add e
    rlca
    ld a, a

jr_038_725e:
    inc hl
    ccf
    sub e
    rra
    ld c, c
    nop
    adc a
    ld bc, $00e7
    pop af
    inc b
    and $07
    nop
    rst $28
    ld [$04f9], sp
    db $fc
    ld b, $fe
    inc bc
    ld bc, $03ff
    rst $38
    ld [bc], a
    cp $24

jr_038_727c:
    inc e
    ld c, h
    add hl, bc
    and b
    nop
    ld [$4801], sp
    ld [$010a], sp
    inc e
    ld bc, $001a
    inc b

jr_038_728c:
    dec de
    ld b, $1c
    nop
    ld h, b
    jr jr_038_7213

    nop
    ld [hl], b

jr_038_7295:
    ld h, b
    ldh [$c0], a

jr_038_7298:
    ldh [$80], a
    ret nz

    jr nz, jr_038_72bd

    nop
    ldh [$92], a
    add hl, de
    rlca
    nop
    inc c
    inc bc
    jr jr_038_72a7

jr_038_72a7:
    ld b, $39
    dec b
    ld [hl], d
    dec bc
    or $07
    db $eb

jr_038_72af:
    nop
    rlca
    push af
    inc bc
    jr jr_038_7295

    dec c
    add e
    dec [hl]
    nop
    ld b, e
    ld [hl-], a
    ret


    ld d, c

jr_038_72bd:
    xor h
    ld [hl], b
    xor [hl]
    and b
    jr nc, @-$3e

    ret nz

    ld b, h
    ld [$1002], sp
    ret nz

    add b
    jr nz, jr_038_728c

    jr nz, jr_038_725e

    ld h, b
    ld c, l
    jr nz, jr_038_72d5

    nop
    ld b, $00

jr_038_72d5:
    dec c
    nop
    ld bc, $0309
    dec de
    inc bc
    db $ec
    rrca
    call c, $1f00
    cp b
    ccf
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    pop hl
    nop
    cp $e1
    cp $c1
    cp $70
    xor a
    xor h
    nop
    ld [hl], a
    db $ec
    ld [hl], a
    xor $77
    ld [$6777], a
    nop
    ei
    rst $20
    ei
    push hl
    ei
    ld a, b
    nop
    inc e
    inc b
    add b
    rlca
    ret nz

    ld bc, $c0f0
    ld [$81ff], sp
    inc b
    cp $c0
    cp $0c
    ld c, $72
    db $10
    pop bc
    inc bc
    nop
    ld [bc], a
    dec c
    add a
    jr jr_038_733c

    jr nz, jr_038_739e

    nop
    nop
    scf
    rlca
    daa
    rrca
    ld l, h
    ld c, $48
    jr @+$06

    ld d, b
    db $10
    add b
    jr nz, jr_038_72af

    ld h, a
    ld [$fec1], sp
    nop
    jp nz, $03fd

    dec e
    inc bc
    dec c
    ld [bc], a
    dec c

jr_038_733c:
    nop
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    nop
    inc b
    db $e3
    db $fd
    nop
    db $e3
    db $fd
    add d
    adc l
    ld bc, $0106
    ld [bc], a
    jr z, jr_038_7351

    ld [bc], a

jr_038_7351:
    ld a, d
    ld [$b701], sp
    db $10
    add b
    add b
    ld bc, $8070
    ld a, [bc]
    ld [$1801], sp
    nop
    db $10
    ld [bc], a
    ld bc, $070b
    nop
    inc e
    ld c, $38
    add hl, de
    ld [hl], l
    inc sp
    and e
    ld [hl], a
    nop
    nop
    nop
    ld a, a
    nop
    rst $28
    ldh a, [rLCDC]
    add b
    nop
    db $10
    rrca
    ret z

    rst $20
    db $e4
    di

jr_038_737e:
    inc b
    stop
    inc c
    ld c, $c0
    nop
    ldh a, [$03]
    ld bc, $3803
    ld b, d
    adc l
    ld l, a
    jr nz, jr_038_737e

    add hl, bc
    ret nz

    ld [$0205], sp
    ld bc, $0600
    inc bc
    inc b
    dec bc
    inc b
    rrca
    nop
    ld l, d

jr_038_739e:
    nop
    and $4c
    ld [c], a
    xor $40
    or $40
    sub e

jr_038_73a7:
    inc h
    ld h, b
    sub b
    ld bc, $d008
    jr nz, @-$5e

    add hl, bc
    ldh a, [$b8]
    ld bc, $e070
    jr jr_038_73ec

    ld [$0409], sp
    ld e, a
    db $10

jr_038_73bc:
    ret nz

    pop de
    add hl, bc
    ld bc, $1908
    inc b
    jr jr_038_73c9

    ld [$0004], sp
    inc c

jr_038_73c9:
    nop
    inc b
    nop
    ret nc

    jr nz, jr_038_73a7

    jr nz, jr_038_73d9

    ret z

    jr nc, jr_038_73bc

    db $10
    ld bc, $6c10
    db $10

jr_038_73d9:
    ld [hl], h
    inc bc
    ld [$0834], sp
    ld e, $00
    ld c, $41
    add hl, bc
    jp nz, $8149

    nop
    jr z, jr_038_73ea

    nop

jr_038_73ea:
    inc b
    inc bc

jr_038_73ec:
    add hl, bc
    rlca
    rrca
    ld b, b
    ld [hl], h
    ret nz

    ld b, e
    add hl, bc
    adc a
    ld hl, $301f
    inc bc
    adc e
    ld [$0f62], sp
    nop
    rst AddAToHL
    ld c, $c8
    ld b, $e0
    nop
    push af
    ld c, $1d
    ld l, l
    ld e, $2e
    xor a
    add hl, bc
    db $f4
    jr @+$7a

    db $10
    inc bc
    rst $28
    ld [$2980], sp
    add hl, bc
    jr nc, jr_038_7424

    sub d
    inc c
    sbc d
    ld b, h
    adc [hl]
    nop
    ld b, b
    adc [hl]
    jr nz, jr_038_7450

    ld h, b
    ld c, [hl]

jr_038_7424:
    ret nz

    rst $00
    ld bc, $87d0
    or b
    inc bc
    jr jr_038_746e

    call z, Call_038_431f
    or c
    sbc e
    ld de, $5bc0
    stop
    db $10
    ldh [rNR11], a
    pop af
    ld h, [hl]
    inc sp
    nop
    ld c, $00
    stop
    jr nz, jr_038_744b

    adc b
    adc a
    ld b, b
    ld bc, $0898
    ld b, d

jr_038_744b:
    inc sp
    add [hl]
    ld b, [hl]
    inc b
    inc [hl]

jr_038_7450:
    ld [bc], a
    ld hl, $6375
    ld h, e
    ld b, c
    ld c, c
    dec e
    db $10
    stop
    nop
    ld [$0c10], sp

jr_038_745f:
    db $10
    inc b
    jr jr_038_7479

    ld de, $1a18
    inc e
    adc a
    ld hl, $0301
    ld [$0b68], sp

jr_038_746e:
    ld [bc], a
    inc sp
    inc c
    rst $38
    nop
    jr nc, @+$72

    xor d
    db $10
    add b
    ld h, b

jr_038_7479:
    ret nz

    ld a, [c]
    add hl, de
    ld a, [bc]
    ld [$1c1b], sp
    dec hl
    inc c
    ld l, [hl]
    nop
    nop
    ld b, c
    jr nc, jr_038_74e9

    ld a, $39
    ld e, $4b
    ccf
    inc b
    ldh [rNR33], a
    db $10
    ld [hl], c
    jr z, jr_038_745f

    jr nz, @+$3f

    ld [de], a
    dec sp
    inc de
    ld bc, $0030
    cp $01
    pop hl
    rra
    rst $08
    ccf
    adc $3f
    nop
    and $1f
    ei
    ld b, $f9
    ld b, $fd
    ld [bc], a
    nop
    ld [$3c78], sp
    cp l
    ld e, b
    sbc e
    pop bc
    inc bc
    nop
    pop de
    add hl, bc
    ret nz

    db $10
    ret nz

    dec c
    ret nz

    dec e
    nop
    db $10
    ld e, $3c
    cp h
    ld a, [de]
    ret c

    add c
    add $01
    add b
    add c
    ld b, $00
    rlca
    add b
    daa
    ld c, d
    ld [$8000], sp
    ld a, b
    ldh a, [$0e]
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $7f1c
    nop
    cp a
    ld bc, $f108
    ld a, [bc]
    ld c, e
    ld de, $001e
    nop
    adc a

jr_038_74e9:
    nop
    rst $08
    add b
    ld c, a
    ret nz

    inc hl
    ld [bc], a
    ld [$f801], sp
    rlca
    rst $38
    jr jr_038_7532

    inc bc
    rst $38
    call c, $e000
    ld [hl], d
    add c
    inc b
    ld [$f50a], sp
    ld [de], a
    nop
    db $ed
    ld [hli], a
    db $dd
    call z, $8cbb
    ld a, e
    ld h, b
    nop
    nop
    ld [hl], b
    add b
    jr nc, @-$3e

    jr c, jr_038_7554

    jr jr_038_7516

jr_038_7516:
    and b
    sbc b
    and b
    sbc h
    ret nz

    call c, $0fc0
    add h
    adc l
    ld [$0403], sp
    inc bc
    inc b
    cpl
    ld [hl-], a
    db $fc
    inc bc
    ld b, c
    db $fd
    ld bc, $fb08
    rlca
    ei
    rlca
    ld sp, hl

jr_038_7532:
    sub l
    dec bc
    nop
    rst $38
    nop
    call nz, Call_038_461c
    sbc h
    ld c, h
    sbc [hl]
    nop
    ld d, b
    sub b
    ld h, a
    add h
    ld h, a
    adc h
    db $e3
    ld c, $00
    db $e3
    ld c, $07

jr_038_754a:
    jr nz, @+$03

    ld h, $60
    ld bc, $0e00
    ld b, b
    ld c, e
    add h

jr_038_7554:
    sbc a
    inc b
    add hl, de
    ld c, $34
    jp hl


    ld c, $83
    db $10
    ld bc, $3f10
    ld b, a
    ld a, [bc]
    ld a, l
    ld [bc], a
    ld [bc], a
    ld a, b
    ld b, $c0
    jr nz, jr_038_754a

    db $10
    ld bc, $f010
    ld b, b
    nop
    ld bc, $1f20
    cp $7e
    ld a, l
    inc a
    ld a, e
    nop
    jr c, jr_038_75b2

    jr nc, jr_038_75ac

    ld hl, $401f
    jr c, jr_038_7582

jr_038_7582:
    add b
    ld h, b
    inc e
    ei
    inc d
    ei
    jr c, @-$07

    nop
    ld a, b
    rst $30
    add sp, -$09
    ldh a, [$ef]
    pop af
    rst $28
    ld de, $6f51
    call c, $0883
    call z, $eee0
    ld bc, $0038
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, @+$42

    rrca
    and a
    ld a, [de]
    inc b

jr_038_75ac:
    inc bc
    di
    ld b, $f4
    inc b
    nop

jr_038_75b2:
    db $e3
    ld [bc], a
    jp $0b06


    ld b, $67
    inc c
    ld [$0c66], sp
    ld l, [hl]
    inc c
    rrca
    inc h
    jr nz, jr_038_75f3

    nop
    nop
    inc c
    rlca
    rra
    ld [bc], a
    ld c, $20
    nop
    ld b, $04
    ld b, $06
    ld l, [hl]
    ld c, h
    ld c, [hl]
    ld l, d
    ld a, [bc]
    ld sp, $00e0
    ei
    ld b, b
    ld [hl], b
    inc bc
    add b
    db $e4
    db $76
    add h
    nop
    or $01
    db $f4
    inc bc
    ldh a, [rTAC]
    ldh [rNR34], a
    nop
    add c
    ld a, [hl]
    ld bc, $03fd
    ld a, [c]
    ld c, $f6
    add b

jr_038_75f3:
    ld bc, $fa08
    ld b, $3c
    jp $e15e


    rst $28
    dec c
    ldh a, [$e7]
    ld hl, sp-$10
    jp $010b


    db $10
    ld b, b
    ld bc, $8008
    ld e, a
    ld [de], a
    ld h, c
    ld e, a
    ld h, e
    ld e, a
    jr nz, jr_038_766d

    ld b, b
    db $10
    jr nc, @+$42

    jr nz, @+$12

    stop
    nop
    and $f0
    nop
    or $f0
    db $76
    ld [hl], b
    ld [hl], $30
    ld d, $30
    ld [bc], a
    ld d, $10
    ld d, $10
    ld b, $10
    xor [hl]
    add hl, de
    rlca
    ld [hl], b
    inc b
    jp nz, $070b

    dec bc
    ld l, b
    add hl, bc
    jr nz, @-$7c

    inc b
    call z, $0500
    db $ec
    rlca
    rst $28
    ld b, $f7
    db $10
    or $00
    db $10
    ldh a, [$29]
    pop af
    ld [hl], b
    ld a, $40
    ld a, h
    nop
    add b
    or b
    nop
    ret nz

    inc e
    add b
    ld a, $00   ; xor a
    dec b
    ld c, [hl]
    add b
    db $10
    ldh [rIF], a
    add hl, bc

jr_038_765d:
    add hl, de
    ld a, [hl]
    rr h
    add b
    add d
    ld de, $0ff3
    ret nz

    ccf
    ld h, e
    db $fc
    rst $08
    jr jr_038_765d

jr_038_766d:
    sbc a
    ldh [$99], a
    inc d
    rrca
    ld [$1bfc], sp
    db $fc
    cpl
    rst $00
    jr c, jr_038_76ed

    dec [hl]
    rst $38
    dec de
    ld a, [hli]
    ld bc, $cf20
    inc de
    call $b00a
    ld bc, $0808
    ld bc, $0008
    jr nz, jr_038_770b

    rlca
    inc e
    rlca
    inc b
    add h
    rlca
    ld [c], a
    inc bc
    ldh a, [rNR12]
    inc c
    db $e4
    nop
    jr nc, @-$16

    rlca
    call c, $381c
    ld [$fe01], sp
    add a
    ld a, b
    ld d, b
    ccf
    cpl
    ld [$6dff], sp
    ld [$201f], sp
    add a
    jr jr_038_76c5

    ret nz

jr_038_76b2:
    rlca
    ldh [$0d], a
    ld [$5501], sp
    jr z, jr_038_76b2

    rlca
    jr nz, jr_038_76c1

    ld hl, sp-$1f
    ld [hli], a
    db $fd

jr_038_76c1:
    ld [bc], a
    ld a, [c]
    inc c
    adc b

jr_038_76c5:
    jr c, @+$72

    ld b, b
    ld c, b
    ld d, e
    nop
    jr nz, jr_038_7733

    db $10
    ld b, $04
    ld b, $80
    cpl
    ld b, [hl]
    jr z, jr_038_76d6

jr_038_76d6:
    ld h, e
    inc bc
    ld c, e
    dec bc
    inc b
    nop
    ld c, $0c
    ld c, $18
    ld e, $d0
    inc c
    ld bc, $3101
    inc h
    ld l, h
    ld b, b
    ld h, c
    ld c, e
    ld l, e
    add hl, hl

jr_038_76ed:
    ld [$0700], sp
    inc c
    ld e, $18
    db $dd
    add b
    jp $0001


    dec de
    ld sp, $30bb
    cp c
    dec bc
    dec bc
    dec b
    nop
    dec b
    ld c, $ee
    rlca
    rst $30
    db $e3

jr_038_7707:
    di
    pop af
    nop
    ld sp, hl

jr_038_770b:
    jr @-$62

    inc l
    dec c
    dec hl
    dec hl
    add c
    ld [bc], a
    ld bc, $0ce4
    ldh a, [rSB]

jr_038_7718:
    cp $3f
    ld e, $86
    nop
    jr c, jr_038_774f

    cp b
    jr nc, @-$41

    add hl, de
    dec e
    ld bc, $c100
    ret nz

    db $dd
    inc c
    dec c
    and d
    ld b, $68
    nop
    db $10
    jr nc, @+$12

    inc bc

jr_038_7733:
    rrca
    add hl, bc
    sbc c
    call $dd00
    add a
    cp a
    nop
    or e
    nop
    and c
    nop
    ld bc, $0684
    ld [hl], $32
    ld [hl], $10
    ld [hl-], a
    ld a, [hl]
    ld de, $0e00
    ld b, b
    rra
    ld b, b

jr_038_774f:
    rra
    ld b, h
    rrca
    inc hl
    nop
    ld b, e
    ld b, c
    ld h, c
    ld [hl], b
    ld [hl], h
    ld [hl], h
    ld h, $76
    nop
    nop
    add [hl]
    ld [$0759], sp
    ld c, a
    nop
    daa
    jr nz, @+$12

    jr nc, jr_038_7718

    ld d, l

jr_038_776a:
    inc b
    ld c, $cc
    ld c, $d8
    ld b, $1e
    db $10
    inc c
    ld bc, $8fb1
    jr nz, jr_038_77c7

    jr nz, jr_038_7707

    nop
    sbc l
    rlca
    ld e, a
    ld b, b
    ld d, e
    ld b, b
    ld b, c
    ld h, b
    nop
    ld h, h
    ld h, [hl]
    db $76
    ld [hl], d
    db $76
    jr nz, @+$74

    inc b
    ld bc, $0f0d
    ccf
    add [hl]
    ccf
    add b
    inc e

jr_038_7794:
    rst AddAToHL
    inc de
    nop
    ldh [$88], a
    xor b
    call nz, $c773
    ld d, c
    rst $20
    ld b, $34
    db $e3
    ld [hli], a
    ld h, c
    ld e, c
    db $d3
    add hl, de
    db $ec
    add hl, de
    ld h, b
    ld [bc], a
    jr nz, jr_038_780d

    jr nc, @+$3a

    inc e
    ccf
    ld e, d
    ld c, a
    inc bc
    ld [$0f0f], sp
    ld e, $1e
    rst $38
    jr nz, jr_038_77d4

    nop
    inc [hl]
    nop
    ld bc, $4040
    ld h, b
    ld h, a
    ld h, [hl]
    ld l, a
    add b

jr_038_77c7:
    ld [$6000], sp
    add b
    jr nz, jr_038_781c

    dec bc
    inc bc
    rst $08
    inc [hl]
    nop
    db $f4
    ld b, c

jr_038_77d4:
    ld b, e
    jr jr_038_7794

    inc c
    inc e
    inc bc
    nop
    dec bc
    scf
    rst $30
    ld b, d
    jp $3b30


    db $10
    rlca
    jr nc, jr_038_776a

    call nz, $dcd8
    adc $1b
    ld bc, $0010
    jr z, @-$7e

    xor a
    dec a
    sbc h
    nop
    xor a
    add c
    or [hl]
    ret nz

    sub $a0
    cp e
    inc l
    ld bc, $0bac
    ld c, $06
    ld l, $08
    add hl, bc
    nop
    dec e
    dec e
    inc bc
    inc bc
    dec de
    dec de
    dec e
    sbc l

jr_038_780d:
    nop
    inc b
    ld h, h
    ld [hl], c
    ei
    ret nz

    call nz, $8d85
    nop
    xor a
    xor a
    call z, $99dc

jr_038_781c:
    cp c
    inc bc
    inc bc
    nop
    ld h, c
    ei
    sub b
    sbc l
    or b
    cp [hl]
    ldh [$fe], a
    ld b, d
    nop
    nop
    add b
    add hl, de
    ld a, [de]
    ld bc, $0602
    ld [$001b], sp
    inc e
    dec e
    inc bc
    inc b
    dec b
    nop
    ld e, $1f
    nop
    jr nz, jr_038_7860

    ld [hli], a
    ld b, $07
    nop
    inc hl
    inc h
    inc b
    dec h
    ld h, $08
    add hl, bc
    ld a, [bc]
    jr nz, jr_038_785d

    dec bc
    inc c
    ld hl, $0e0d
    rlca
    db $10
    rrca
    db $10
    ld de, $0712
    db $10
    add hl, bc
    inc de
    inc d

jr_038_785d:
    dec d
    ld d, $3a

jr_038_7860:
    jr nz, jr_038_7879

    jr jr_038_78b3

    adc b
    jr c, jr_038_7867

jr_038_7867:
    nop
    ld c, a
    jr jr_038_786b

jr_038_786b:
    ld [$104f], sp
    nop
    nop
    daa
    ld hl, $2928
    ld c, a
    ld [$2a00], sp
    dec hl

jr_038_7879:
    inc l
    ld c, a
    jr @+$2b

    dec l
    ld l, $4f
    jr z, @+$31

    ld c, a
    nop
    daa
    add hl, de
    ld a, [de]
    ld b, $18
    adc b
    sbc a
    ld [$0067], sp
    ld l, b
    sbc a
    jr jr_038_78fb

    ld l, d
    ld l, e
    adc d
    sbc a
    jr jr_038_7904

    ld l, l
    ld [hl], e
    sbc a
    jr z, jr_038_7911

    sbc a
    jr z, jr_038_7915

    rst $30
    sbc a
    nop
    dec h
    nop
    jr nc, jr_038_78f6

    db $10
    sbc a
    db $10
    ld [hl], d
    ld c, a

jr_038_78ac:
    ld [$109f], sp
    ld c, a
    jr jr_038_78ac

    sbc a

jr_038_78b3:
    jr jr_038_7904

    db $10
    sbc a
    db $10
    ld c, a
    nop
    inc h
    sbc a
    ret nc

    ld l, [hl]
    sbc a
    jr z, jr_038_7930

    xor a
    sbc a
    jr z, jr_038_7935

    ld c, a
    jr z, @+$73

    sbc a
    nop
    scf
    ld c, a
    ld [$189f], sp
    ld c, a
    db $10
    pop hl
    sbc a
    db $10
    ld c, a
    nop
    ld l, $af
    ld d, b
    halt
    ld a, [de]
    add hl, de
    or a
    jr nc, jr_038_78e0

jr_038_78e0:
    nop
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec e
    inc e
    ld h, b
    dec de
    ld c, $08
    cp a
    ld [$7d7c], sp
    ld a, [hl]
    ld a, a
    add b
    ld bc, $8281

jr_038_78f6:
    ld hl, $1f20
    ld e, $00

jr_038_78fb:
    rst $00
    stop
    add e
    add h
    add l
    add [hl]
    add a
    adc b

jr_038_7904:
    ld [$1026], sp
    dec h
    inc h
    inc hl
    ld sp, $8918
    adc d
    adc e
    adc h
    inc c

jr_038_7911:
    adc l
    dec c
    inc c
    dec bc

jr_038_7915:
    ld d, b
    jr nc, @-$77

    ld [$8f8e], sp
    jr jr_038_792e

    db $10
    rrca
    rrca
    jr nc, jr_038_7951

    ld de, $1516
    inc d
    ld b, e
    inc de
    ld [hl], d
    ld b, b
    rla
    jr @+$1a

    rla

jr_038_792e:
    sbc c
    nop

jr_038_7930:
    inc hl
    nop
    ld d, b
    ld [hl], c
    db $76

jr_038_7935:
    inc c
    ld d, b
    sbc a
    jr jr_038_7946

    jr nc, @+$29

    sub b
    sub c
    sbc a
    db $10
    ld de, $2892
    daa
    ld c, $18

jr_038_7946:
    ld a, [hli]
    dec hl
    sub e
    sbc a
    jr nz, jr_038_795e

    inc l
    dec hl
    ld a, [hli]
    rrca
    db $10

jr_038_7951:
    dec l
    ld l, $9f
    jr nc, @+$30

    ld [hl], h
    dec l
    jr nz, @+$1a

    daa
    ld de, $189f

jr_038_795e:
    cpl
    sbc a
    nop
    add hl, hl
    jr nc, jr_038_7995

    sub b
    adc e
    ld e, b
    ld [hl-], a
    inc sp
    sbc e
    ld h, b
    inc [hl]
    dec [hl]
    nop
    nop
    jr nz, @+$04

    ld bc, $400f
    inc bc
    ld [hl], $37
    jr c, jr_038_79b2

    ld [$0003], sp
    nop
    ld a, [hl-]
    rrca
    jr z, jr_038_79bc

    ld b, $07
    ld bc, $0607
    inc a
    nop
    nop
    dec a
    ld a, $0e
    jr jr_038_798e

jr_038_798e:
    ccf
    ld b, b
    ld b, c
    ld a, [bc]
    ld a, [bc]
    ld b, d
    ld b, e

jr_038_7995:
    ld b, h
    db $10
    ld b, l
    ld b, [hl]
    ld b, a
    rrca
    jr jr_038_79e5

    ld c, c
    ld c, d
    ld c, $01
    ld c, $4b

jr_038_79a3:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    cpl
    jr nz, jr_038_79ab

jr_038_79ab:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_038_79b2:
    nop

jr_038_79b3:
    jr nz, jr_038_7a0d

    ld e, c
    rrca
    jr nz, jr_038_7a13

    ld e, e
    ld e, h
    ld e, l

jr_038_79bc:
    ld e, [hl]
    inc b
    ld e, a
    ld h, b
    nop
    nop
    ld h, c
    ld d, b
    jr z, @+$64

    ld h, e
    ld [de], a
    ld h, h

jr_038_79c9:
    ld h, l
    ld h, [hl]
    add hl, bc
    jr jr_038_79c9

    db $fc
    nop
    ld a, b
    ei
    sub [hl]
    sbc d
    ld d, b
    db $fd
    cp $00  ; and a / or a
    ld a, b
    db $fd
    rra
    ld d, b
    ld c, a
    dec c
    nop
    add b
    ld c, $0e
    ld b, $28
    rlca

jr_038_79e5:
    jr jr_038_79ed

    ld [$3807], sp
    inc e
    ld c, $0d

jr_038_79ed:
    inc c
    add hl, de
    ld c, b
    rlca
    ld d, b
    ld [$0d20], sp
    rrca
    rst $38
    rlca
    jr z, jr_038_79fa

jr_038_79fa:
    ret c

    dec [hl]
    ld d, b

jr_038_79fd:
    ld c, a
    ld [$2058], sp
    ld b, [hl]
    ld d, b
    ld c, a
    add sp, -$61

jr_038_7a06:
    sub b
    ld a, a
    inc c
    rlca
    jr c, jr_038_79a3

    adc b

jr_038_7a0d:
    sbc a

jr_038_7a0e:
    nop
    inc sp
    sub a
    jr nz, @+$09

jr_038_7a13:
    jr nc, jr_038_7a16

    ld d, c

jr_038_7a16:
    sbc a
    nop
    ld b, [hl]
    ld hl, sp+$07
    ld [hl], b
    sbc a
    nop
    ld b, b
    ld b, a
    db $10
    rlca
    jr nc, jr_038_79b3

    ld bc, $0d37
    ld l, $2e
    cp $d5
    ld e, c
    rrca
    ld [$1010], sp
    sub l
    ld b, c
    rrca
    ld [$0810], sp
    ld c, $08
    dec bc
    ld c, $0d
    inc c
    inc c
    inc c
    ld c, $18
    ld sp, $1320
    ld [$ce0c], sp
    dec l

jr_038_7a47:
    jr z, jr_038_7a8a

jr_038_7a49:
    jr nc, jr_038_7a56

    dec bc
    rrca
    ld h, b
    inc a
    jr z, jr_038_7a51

jr_038_7a51:
    jr nc, jr_038_7a62

    rra
    ld c, $2e

jr_038_7a56:
    cpl
    sbc c
    nop
    inc hl
    nop
    nop
    ld h, $9f
    ld b, b
    ld e, $41
    sbc a

jr_038_7a62:
    jr z, @+$01

    rrca
    jr z, jr_038_7a06

    jr z, jr_038_7a49

    ld b, b
    sbc a
    jr nz, jr_038_79fd

    jr nc, jr_038_7a0e

    nop
    ld [hli], a
    ld [de], a
    ld sp, $a00e
    sbc [hl]
    nop
    jr jr_038_7aa6

    dec l
    db $10
    ld [hl], b
    daa
    ld [$681e], sp
    add hl, de
    ld a, [hl-]
    dec c
    scf
    inc c
    inc l
    ld c, [hl]
    ld b, d
    ld [hl], c
    add hl, de

jr_038_7a8a:
    dec l
    ld c, $18
    jr nc, jr_038_7ab7

    rlca
    db $10
    ld a, [$100c]
    rrca
    ld b, b
    inc e
    jr z, jr_038_7ae9

    jr nc, jr_038_7ac6

    ld b, b

jr_038_7a9c:
    ld a, [bc]
    nop
    add b
    ld a, [hli]
    ldh [$85], a
    ld d, b
    rra
    ldh a, [rSC]

jr_038_7aa6:
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    jr nz, jr_038_7a47

    nop
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c

jr_038_7ab7:
    nop
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    nop
    xor d
    xor e
    xor h
    xor l
    xor [hl]

jr_038_7ac6:
    xor a
    or b
    nop
    ld b, $b1
    or d
    or e
    or h
    or l
    ccf
    nop
    ld a, [de]
    or [hl]
    ld [$b8b7], sp
    cp c
    cp d
    ld b, a
    cp e
    cp h
    cp l
    jr nz, jr_038_7a9c

    cp a
    ld h, $c0
    pop bc
    jp nz, $c4c3

    nop
    nop
    push bc
    nop

jr_038_7ae9:
    add $c7
    ret z

    ret


    jp z, $cb00

    call z, $cd00
    adc $cf
    ret nc

    pop de
    ld b, c
    jp nc, $d337

    call nc, $d6d5
    rst AddAToHL
    ld h, $80
    nop
    inc de
    ret c

    reti


    jp c, $dcdb

    nop
    db $dd
    nop
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    nop
    and $e7
    add sp, -$17
    ld [$eb00], a
    db $ec
    db $10
    db $ed
    xor $ef
    ld e, h
    ldh a, [$f1]
    ld a, [c]
    di
    call nz, $2046
    db $f4
    push af
    or $87
    nop
    rst $30
    dec de
    ld hl, sp-$07
    ld a, [$60a9]
    rst $38
    nop
    nop
    nop
    cp a
    ld e, a
    rrca
    ld h, b
    dec c
    jr nz, jr_038_7ac6

    nop
    inc de
    cp b
    ccf
    rst JumpTable
    nop
    ld a, [de]
    ld a, a
    rrca
    rlca
    ld a, [bc]
    and [hl]
    ld b, c
    and b
    rst $00
    rst $38
    ld e, $09
    nop
    inc de
    cp c
    add l
    nop
    add hl, bc
    call nc, Call_038_46bc
    rst $30
    adc b
    add a
    ld de, $800a
    jr jr_038_7b62

jr_038_7b62:
    nop
    nop
    cp a
    ld hl, $b0b8
    nop
    ld d, b
    cp c
    nop
    or e
    and b
    nop
    ld d, b
    ld d, a
    or c
    rrca
    db $10
    ld h, c
    ld [bc], a
    ld [$0461], sp
    db $10
    rrca
    jr nz, jr_038_7b87

    db $10
    rst $38
    nop
    jr jr_038_7b8a

    ld [$181f], sp
    cpl
    ld [hl], b

jr_038_7b87:
    jr z, jr_038_7b99

    dec b

jr_038_7b8a:
    jr z, jr_038_7bab

    sub b
    ccf
    ld a, b
    ret


    ld e, a
    ld l, b
    cpl
    ld h, b
    cp d
    or d
    nop
    ld d, b
    cp e

jr_038_7b99:
    nop
    ld hl, $b0b8
    nop
    inc c
    cp c
    nop
    or e
    xor a
    nop
    inc c
    ld c, c
    or c
    rrca
    add c
    cp d
    or d

jr_038_7bab:
    nop
    inc c
    cp e
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rlca
    ldh a, [rNR22]
    nop
    ldh a, [$2f]
    ret nc

    ld c, a
    xor b
    rst $00
    adc a
    ldh [$81], a
    ld l, a
    db $fc
    db $fc
    rlca
    ld a, [$fd03]
    ld hl, $0708
    ld sp, hl
    rst $38
    ld bc, $602f
    rst JumpTable
    ret nz

    ld b, b
    cp a
    ld hl, $9fe0
    rst $38
    add b
    cp a
    add b
    ret nz

    ld a, [hli]
    cpl
    inc c
    db $eb
    inc c
    db $f4
    dec bc
    ld a, [c]
    nop
    dec d
    db $e3
    pop af
    rlca
    rst $20
    ld bc, $21ef
    nop
    rst $20
    add b
    rst $30
    add h

jr_038_7bf3:
    cp e
    add e
    db $fc
    ld b, b
    nop
    rst $38
    ld h, b
    rst AddAToHL
    ld d, b
    sbc $6e
    db $db
    ld l, b
    nop
    db $fd
    ld bc, $02fa
    cp $fc
    rlca
    ld bc, $ff02
    ld bc, $02fe
    or $06
    inc hl
    rst JumpTable
    ld [$e09f], sp
    add b
    rst $38
    ld hl, $f7c0
    ld [hl], b
    jr nz, jr_038_7c5c

    jr nz, jr_038_7c40

    rra
    rra
    db $dd
    pop bc
    ccf
    nop
    ld [bc], a
    rst $38
    ld b, $eb
    ld a, [bc]
    ld a, e
    db $76
    db $d3
    ld b, b
    ld d, $21
    db $e3
    and $db
    ld l, b
    rst $28
    ld [hl], a
    nop
    call nc, $c858
    ld c, a
    rst $20
    daa
    ld hl, sp+$18
    nop

jr_038_7c40:
    rst $38
    rrca
    rst $38
    nop
    cp $02
    db $fc
    db $fc
    dec c
    ld bc, $0000
    rst $38
    jr nz, jr_038_7bf3

    add b
    dec h
    ret nz

    ld b, c
    rrca
    ld a, [bc]
    dec de
    ld b, $f7
    ld c, $eb
    ld a, [de]
    nop

jr_038_7c5c:
    inc de

jr_038_7c5d:
    ld a, [c]
    rst $30
    db $f4
    cpl
    jr z, @+$01

    ldh a, [$84]
    ld e, e
    ld a, a
    ret nz

    rst $38
    cp a
    ld hl, $b3f1
    ld c, b
    db $ec
    ld hl, $e0bf
    daa
    rst $38
    cp $01
    jr nz, @+$01

    db $fd
    ld b, c
    sbc l
    rst $38
    call $e5ff
    ld [$f5ff], sp
    rst $38
    xor a
    ld b, c
    and a
    rst $38
    or e
    nop
    rst $38
    sbc b
    rst $38
    rst $00
    rst $38
    ld [hl], b
    ld a, a
    ccf
    ld a, b
    ccf
    ld sp, $3721
    dec sp
    add hl, de
    rst $38
    db $e3
    inc b
    rst $38
    ld c, $fe
    db $fc
    db $fc
    nop
    ld c, $2f
    rlca
    rlca
    rrca
    add hl, bc
    rla
    jr jr_038_7cc5

    db $10
    ld a, [hli]
    jr nz, jr_038_7ce4

    ld h, $3f
    sbc b
    nop
    ccf
    cpl
    cpl
    cpl
    rla
    rra
    rra
    rla
    rla

jr_038_7cbb:
    rra
    rrca
    dec bc
    ld c, $0c
    jr nc, jr_038_7ce2

    ldh a, [$80]

jr_038_7cc4:
    add b

jr_038_7cc5:
    rst $28
    sbc a
    db $fd
    ld b, e
    and [hl]
    ld h, b
    jr nz, jr_038_7c5d

    jr nc, jr_038_7d3f

    db $10
    ld d, l
    nop
    sub b
    ldh a, [$97]
    rst $30
    sbc a
    db $fc
    sub e
    cp b
    sub a
    add sp, -$49
    rst $38
    rst $28
    ldh a, [rP1]
    nop

jr_038_7ce2:
    inc bc
    inc bc

jr_038_7ce4:
    db $fd
    rst $38
    cp [hl]
    add b
    ld e, [hl]
    ld b, b
    ld h, b
    jr nz, @+$22

    jr nz, jr_038_7cc4

    nop
    jr nz, jr_038_7d20

    xor a
    rst $38
    ld sp, hl
    ld b, [hl]
    ld h, b
    rst JumpTable
    pop bc
    cp a
    rst $38
    ld a, a
    ret nz

    nop
    nop
    ld a, b
    ld a, b
    xor h
    call nz, $0276
    cp d
    add d
    ld c, e
    ld b, c
    ld h, c
    ld b, c
    ld h, c
    ld hl, $00d4
    ld hl, $3b31
    ld a, d
    ld [hli], a
    ld d, [hl]
    ld h, d
    ld h, h
    call c, $fc8c
    ld a, b
    ld hl, sp+$00
    dec sp
    rra
    db $eb

jr_038_7d20:
    rst $28
    cp $9f
    rst $38
    rst $20
    ld a, c
    ld a, c
    ccf
    ld a, $1b
    dec d
    ld d, a
    nop
    rrca
    rrca
    ld [$0604], sp
    db $76
    ld a, [hl-]
    jr jr_038_7cbb

    jp nz, $3eff

    rst $20
    db $fd
    cp l
    and l
    di
    ld [hl], b

jr_038_7d3f:
    and $af
    db $eb
    nop
    rst $38
    nop
    cpl
    ccf
    ld h, $3f
    jr nc, jr_038_7d8a

    rra
    rra
    add l
    ret nz

    rst $38
    cp $07
    db $fd
    db $fd
    dec b
    adc h
    db $fc
    ld sp, hl
    ld a, e
    ld a, a
    ld_long a, $ff00
    nop
    ld e, e
    rst JumpTable
    ld e, c
    rst JumpTable
    adc h
    adc a
    rlca

jr_038_7d65:
    rlca
    ld bc, $ff60
    ldh a, [$f0]
    jr c, jr_038_7d65

    cp $e6
    ccf
    pop hl
    ccf
    or l
    rst AddAToHL
    rst AddAToHL
    push af
    nop
    rst $38
    nop
    rst AddAToHL
    push af
    sub l
    rst $30
    ld [hli], a
    ld [c], a
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    jr nc, jr_038_7d8e

    inc e
    nop
    nop
    cpl

jr_038_7d8a:
    scf
    scf
    add hl, sp
    ld e, a

jr_038_7d8e:
    ld l, [hl]
    ld a, a
    ld a, e
    inc d
    jr jr_038_7dac

    db $fc
    nop
    nop
    inc a
    inc a
    ld e, d
    ld h, [hl]
    rst $20
    and l
    cp a
    cp l
    xor e
    add c
    add d
    nop
    db $eb
    jp $ffff


    cp a
    cp l
    add c
    ld l, d
    ld b, d

jr_038_7dac:
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    ld c, $7e
    ld e, $1e
    dec l
    inc sp
    ld d, e
    ld [hl], d
    ld a, l
    ld e, a
    ld l, e
    ld d, a
    ld l, e
    db $76
    ld e, [hl]
    nop
    ldh a, [rSB]
    ld l, a
    ld d, a
    cpl
    scf
    ld a, $3e
    rra
    ld e, $00
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    add b
    add b
    ldh a, [$f0]
    ld l, b
    sbc b
    sbc h
    sub h
    db $fc
    db $f4
    xor h
    inc b
    jr c, jr_038_7de2

jr_038_7de2:
    db $fc
    xor h
    inc c
    db $f4
    xor h
    inc b
    xor b
    ld [$f8f8], sp
    ldh a, [$f0]
    nop
    nop
    jr c, jr_038_7e2a

    jr c, jr_038_7e2c

    jr c, jr_038_7e2e

    jr c, jr_038_7e30

    jr c, jr_038_7e32

    jr c, jr_038_7e34

    jr c, jr_038_7e36

    jr c, jr_038_7e38

    jr c, jr_038_7e3a

    jr c, jr_038_7e3c

    jr c, jr_038_7e3e

    jr c, jr_038_7e40

    jr c, jr_038_7e42

    jr c, jr_038_7e44

    jr c, jr_038_7e46

    jr c, jr_038_7e48

    jr c, jr_038_7e4a

    jr c, jr_038_7e4c

    jr c, jr_038_7e4e

    jr c, jr_038_7e50

    jr c, jr_038_7e52

    jr c, jr_038_7e54

    jr c, jr_038_7e56

    jr c, jr_038_7e58

    jr c, jr_038_7e5a

    jr c, jr_038_7e5c

    jr c, jr_038_7e5e

    jr c, jr_038_7e60

    jr c, jr_038_7e62

jr_038_7e2a:
    jr c, jr_038_7e64

jr_038_7e2c:
    jr c, jr_038_7e66

jr_038_7e2e:
    jr c, jr_038_7e68

jr_038_7e30:
    jr c, jr_038_7e6a

jr_038_7e32:
    jr c, jr_038_7e6c

jr_038_7e34:
    jr c, jr_038_7e6e

jr_038_7e36:
    jr c, jr_038_7e70

jr_038_7e38:
    jr c, jr_038_7e72

jr_038_7e3a:
    jr c, jr_038_7e74

jr_038_7e3c:
    jr c, jr_038_7e76

jr_038_7e3e:
    jr c, jr_038_7e78

jr_038_7e40:
    jr c, jr_038_7e7a

jr_038_7e42:
    jr c, jr_038_7e7c

jr_038_7e44:
    jr c, jr_038_7e7e

jr_038_7e46:
    jr c, jr_038_7e80

jr_038_7e48:
    jr c, jr_038_7e82

jr_038_7e4a:
    jr c, jr_038_7e84

jr_038_7e4c:
    jr c, jr_038_7e86

jr_038_7e4e:
    jr c, jr_038_7e88

jr_038_7e50:
    jr c, jr_038_7e8a

jr_038_7e52:
    jr c, jr_038_7e8c

jr_038_7e54:
    jr c, jr_038_7e8e

jr_038_7e56:
    jr c, jr_038_7e90

jr_038_7e58:
    jr c, jr_038_7e92

jr_038_7e5a:
    jr c, jr_038_7e94

jr_038_7e5c:
    jr c, jr_038_7e96

jr_038_7e5e:
    jr c, jr_038_7e98

jr_038_7e60:
    jr c, jr_038_7e9a

jr_038_7e62:
    jr c, jr_038_7e9c

jr_038_7e64:
    jr c, jr_038_7e9e

jr_038_7e66:
    jr c, jr_038_7ea0

jr_038_7e68:
    jr c, jr_038_7ea2

jr_038_7e6a:
    jr c, jr_038_7ea4

jr_038_7e6c:
    jr c, jr_038_7ea6

jr_038_7e6e:
    jr c, jr_038_7ea8

jr_038_7e70:
    jr c, jr_038_7eaa

jr_038_7e72:
    jr c, jr_038_7eac

jr_038_7e74:
    jr c, jr_038_7eae

jr_038_7e76:
    jr c, jr_038_7eb0

jr_038_7e78:
    jr c, jr_038_7eb2

jr_038_7e7a:
    jr c, jr_038_7eb4

jr_038_7e7c:
    jr c, jr_038_7eb6

jr_038_7e7e:
    jr c, jr_038_7eb8

jr_038_7e80:
    jr c, jr_038_7eba

jr_038_7e82:
    jr c, jr_038_7ebc

jr_038_7e84:
    jr c, jr_038_7ebe

jr_038_7e86:
    jr c, jr_038_7ec0

jr_038_7e88:
    jr c, jr_038_7ec2

jr_038_7e8a:
    jr c, jr_038_7ec4

jr_038_7e8c:
    jr c, jr_038_7ec6

jr_038_7e8e:
    jr c, jr_038_7ec8

jr_038_7e90:
    jr c, jr_038_7eca

jr_038_7e92:
    jr c, jr_038_7ecc

jr_038_7e94:
    jr c, jr_038_7ece

jr_038_7e96:
    jr c, jr_038_7ed0

jr_038_7e98:
    jr c, jr_038_7ed2

jr_038_7e9a:
    jr c, jr_038_7ed4

jr_038_7e9c:
    jr c, jr_038_7ed6

jr_038_7e9e:
    jr c, jr_038_7ed8

jr_038_7ea0:
    jr c, jr_038_7eda

jr_038_7ea2:
    jr c, jr_038_7edc

jr_038_7ea4:
    jr c, jr_038_7ede

jr_038_7ea6:
    jr c, jr_038_7ee0

jr_038_7ea8:
    jr c, jr_038_7ee2

jr_038_7eaa:
    jr c, jr_038_7ee4

jr_038_7eac:
    jr c, jr_038_7ee6

jr_038_7eae:
    jr c, jr_038_7ee8

jr_038_7eb0:
    jr c, jr_038_7eea

jr_038_7eb2:
    jr c, jr_038_7eec

jr_038_7eb4:
    jr c, jr_038_7eee

jr_038_7eb6:
    jr c, jr_038_7ef0

jr_038_7eb8:
    jr c, jr_038_7ef2

jr_038_7eba:
    jr c, jr_038_7ef4

jr_038_7ebc:
    jr c, jr_038_7ef6

jr_038_7ebe:
    jr c, jr_038_7ef8

jr_038_7ec0:
    jr c, jr_038_7efa

jr_038_7ec2:
    jr c, jr_038_7efc

jr_038_7ec4:
    jr c, jr_038_7efe

jr_038_7ec6:
    jr c, jr_038_7f00

jr_038_7ec8:
    jr c, jr_038_7f02

jr_038_7eca:
    jr c, jr_038_7f04

jr_038_7ecc:
    jr c, jr_038_7f06

jr_038_7ece:
    jr c, jr_038_7f08

jr_038_7ed0:
    jr c, jr_038_7f0a

jr_038_7ed2:
    jr c, jr_038_7f0c

jr_038_7ed4:
    jr c, jr_038_7f0e

jr_038_7ed6:
    jr c, jr_038_7f10

jr_038_7ed8:
    jr c, jr_038_7f12

jr_038_7eda:
    jr c, jr_038_7f14

jr_038_7edc:
    jr c, jr_038_7f16

jr_038_7ede:
    jr c, jr_038_7f18

jr_038_7ee0:
    jr c, jr_038_7f1a

jr_038_7ee2:
    jr c, jr_038_7f1c

jr_038_7ee4:
    jr c, jr_038_7f1e

jr_038_7ee6:
    jr c, jr_038_7f20

jr_038_7ee8:
    jr c, jr_038_7f22

jr_038_7eea:
    jr c, jr_038_7f24

jr_038_7eec:
    jr c, jr_038_7f26

jr_038_7eee:
    jr c, jr_038_7f28

jr_038_7ef0:
    jr c, jr_038_7f2a

jr_038_7ef2:
    jr c, jr_038_7f2c

jr_038_7ef4:
    jr c, jr_038_7f2e

jr_038_7ef6:
    jr c, jr_038_7f30

jr_038_7ef8:
    jr c, jr_038_7f32

jr_038_7efa:
    jr c, jr_038_7f34

jr_038_7efc:
    jr c, jr_038_7f36

jr_038_7efe:
    jr c, jr_038_7f38

jr_038_7f00:
    jr c, jr_038_7f3a

jr_038_7f02:
    jr c, jr_038_7f3c

jr_038_7f04:
    jr c, jr_038_7f3e

jr_038_7f06:
    jr c, jr_038_7f40

jr_038_7f08:
    jr c, jr_038_7f42

jr_038_7f0a:
    jr c, jr_038_7f44

jr_038_7f0c:
    jr c, jr_038_7f46

jr_038_7f0e:
    jr c, jr_038_7f48

jr_038_7f10:
    jr c, jr_038_7f4a

jr_038_7f12:
    jr c, jr_038_7f4c

jr_038_7f14:
    jr c, jr_038_7f4e

jr_038_7f16:
    jr c, jr_038_7f50

jr_038_7f18:
    jr c, jr_038_7f52

jr_038_7f1a:
    jr c, jr_038_7f54

jr_038_7f1c:
    jr c, jr_038_7f56

jr_038_7f1e:
    jr c, jr_038_7f58

jr_038_7f20:
    jr c, jr_038_7f5a

jr_038_7f22:
    jr c, jr_038_7f5c

jr_038_7f24:
    jr c, jr_038_7f5e

jr_038_7f26:
    jr c, jr_038_7f60

jr_038_7f28:
    jr c, jr_038_7f62

jr_038_7f2a:
    jr c, jr_038_7f64

jr_038_7f2c:
    jr c, jr_038_7f66

jr_038_7f2e:
    jr c, jr_038_7f68

jr_038_7f30:
    jr c, jr_038_7f6a

jr_038_7f32:
    jr c, jr_038_7f6c

jr_038_7f34:
    jr c, jr_038_7f6e

jr_038_7f36:
    jr c, jr_038_7f70

jr_038_7f38:
    jr c, jr_038_7f72

jr_038_7f3a:
    jr c, jr_038_7f74

jr_038_7f3c:
    jr c, jr_038_7f76

jr_038_7f3e:
    jr c, jr_038_7f78

jr_038_7f40:
    jr c, jr_038_7f7a

jr_038_7f42:
    jr c, jr_038_7f7c

jr_038_7f44:
    jr c, jr_038_7f7e

jr_038_7f46:
    jr c, jr_038_7f80

jr_038_7f48:
    jr c, jr_038_7f82

jr_038_7f4a:
    jr c, jr_038_7f84

jr_038_7f4c:
    jr c, jr_038_7f86

jr_038_7f4e:
    jr c, jr_038_7f88

jr_038_7f50:
    jr c, jr_038_7f8a

jr_038_7f52:
    jr c, jr_038_7f8c

jr_038_7f54:
    jr c, jr_038_7f8e

jr_038_7f56:
    jr c, jr_038_7f90

jr_038_7f58:
    jr c, jr_038_7f92

jr_038_7f5a:
    jr c, jr_038_7f94

jr_038_7f5c:
    jr c, jr_038_7f96

jr_038_7f5e:
    jr c, jr_038_7f98

jr_038_7f60:
    jr c, jr_038_7f9a

jr_038_7f62:
    jr c, jr_038_7f9c

jr_038_7f64:
    jr c, jr_038_7f9e

jr_038_7f66:
    jr c, jr_038_7fa0

jr_038_7f68:
    jr c, jr_038_7fa2

jr_038_7f6a:
    jr c, jr_038_7fa4

jr_038_7f6c:
    jr c, jr_038_7fa6

jr_038_7f6e:
    jr c, jr_038_7fa8

jr_038_7f70:
    jr c, jr_038_7faa

jr_038_7f72:
    jr c, jr_038_7fac

jr_038_7f74:
    jr c, jr_038_7fae

jr_038_7f76:
    jr c, jr_038_7fb0

jr_038_7f78:
    jr c, jr_038_7fb2

jr_038_7f7a:
    jr c, jr_038_7fb4

jr_038_7f7c:
    jr c, jr_038_7fb6

jr_038_7f7e:
    jr c, jr_038_7fb8

jr_038_7f80:
    jr c, jr_038_7fba

jr_038_7f82:
    jr c, jr_038_7fbc

jr_038_7f84:
    jr c, jr_038_7fbe

jr_038_7f86:
    jr c, jr_038_7fc0

jr_038_7f88:
    jr c, jr_038_7fc2

jr_038_7f8a:
    jr c, jr_038_7fc4

jr_038_7f8c:
    jr c, jr_038_7fc6

jr_038_7f8e:
    jr c, jr_038_7fc8

jr_038_7f90:
    jr c, jr_038_7fca

jr_038_7f92:
    jr c, jr_038_7fcc

jr_038_7f94:
    jr c, jr_038_7fce

jr_038_7f96:
    jr c, jr_038_7fd0

jr_038_7f98:
    jr c, jr_038_7fd2

jr_038_7f9a:
    jr c, jr_038_7fd4

jr_038_7f9c:
    jr c, jr_038_7fd6

jr_038_7f9e:
    jr c, jr_038_7fd8

jr_038_7fa0:
    jr c, jr_038_7fda

jr_038_7fa2:
    jr c, jr_038_7fdc

jr_038_7fa4:
    jr c, jr_038_7fde

jr_038_7fa6:
    jr c, jr_038_7fe0

jr_038_7fa8:
    jr c, jr_038_7fe2

jr_038_7faa:
    jr c, jr_038_7fe4

jr_038_7fac:
    jr c, jr_038_7fe6

jr_038_7fae:
    jr c, jr_038_7fe8

jr_038_7fb0:
    jr c, jr_038_7fea

jr_038_7fb2:
    jr c, jr_038_7fec

jr_038_7fb4:
    jr c, jr_038_7fee

jr_038_7fb6:
    jr c, jr_038_7ff0

jr_038_7fb8:
    jr c, jr_038_7ff2

jr_038_7fba:
    jr c, jr_038_7ff4

jr_038_7fbc:
    jr c, jr_038_7ff6

jr_038_7fbe:
    jr c, jr_038_7ff8

jr_038_7fc0:
    jr c, jr_038_7ffa

jr_038_7fc2:
    jr c, jr_038_7ffc

jr_038_7fc4:
    jr c, jr_038_7ffe

jr_038_7fc6:
    jr c, @+$3a

jr_038_7fc8:
    jr c, @+$3a

jr_038_7fca:
    jr c, @+$3a

jr_038_7fcc:
    jr c, @+$3a

jr_038_7fce:
    jr c, @+$3a

jr_038_7fd0:
    jr c, @+$3a

jr_038_7fd2:
    jr c, @+$3a

Jump_038_7fd4:
jr_038_7fd4:
    jr c, @+$3a

jr_038_7fd6:
    jr c, @+$3a

jr_038_7fd8:
    jr c, @+$3a

jr_038_7fda:
    jr c, @+$3a

jr_038_7fdc:
    jr c, @+$3a

jr_038_7fde:
    jr c, @+$3a

jr_038_7fe0:
    jr c, @+$3a

jr_038_7fe2:
    jr c, @+$3a

jr_038_7fe4:
    jr c, @+$3a

jr_038_7fe6:
    jr c, @+$3a

jr_038_7fe8:
    jr c, @+$3a

jr_038_7fea:
    jr c, @+$3a

jr_038_7fec:
    jr c, @+$3a

jr_038_7fee:
    jr c, @+$3a

jr_038_7ff0:
    jr c, @+$3a

jr_038_7ff2:
    jr c, @+$3a

jr_038_7ff4:
    jr c, @+$3a

jr_038_7ff6:
    jr c, @+$3a

jr_038_7ff8:
    jr c, @+$3a

jr_038_7ffa:
    jr c, @+$3a

jr_038_7ffc:
    jr c, @+$3a

jr_038_7ffe:
    jr c, @+$3a

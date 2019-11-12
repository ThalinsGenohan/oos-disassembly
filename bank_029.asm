; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX

    inc a
    jp $7e99


    jp $bd00


    rst $20
    db $db
    rst $20
    sbc c
    rst $38
    and l
    rst $38
    db $20, $db
    inc a
    daa
    jr @+$01

    rst $20
    ld a, [hl]
    rst $38
    ld l, h
    cp l
    ld [hl+], a
    add hl, sp
    rst $38
    inc hl
    jr nz, jr_029_403e

    rra
    nop
    jr nc, jr_029_4052

    ld a, b
    ld b, a
    ld e, l
    ld h, e
    ld c, e
    ld [hl], a
    rla
    ld b, a
    ld a, h
    ld c, a
    ld hl, $257f
    add hl, hl
    dec l
    ldh a, [$31]
    dec [hl]
    add hl, sp
    dec a
    rrca

Jump_029_4038:
    rrca
    inc e
    inc de
    ld bc, $111e

jr_029_403e:
    ld h, $39
    ld hl, $433f
    ld e, c
    nop
    adc a
    db $fc
    cp a
    rst $08
    rst $30
    adc h
    db $e3
    sbc a
    nop
    pop bc
    cp a
    ldh [rIE], a

jr_029_4052:
    jr jr_029_4073

    ld b, $07
    nop
    ld bc, $8001
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$00
    ld b, $fe
    add a
    ld sp, hl
    rst $08
    pop af
    db $ed
    inc sp
    nop
    di
    rst $38
    ld a, [c]
    ld a, $e2
    ld a, $c4
    db $fc
    nop
    add h

jr_029_4073:
    db $fc
    ret z

    jr c, @-$16

    jr jr_029_40e9

    sub b
    nop
    ldh a, [$f0]
    inc bc
    inc bc
    dec b
    ld b, $09
    ld c, $00
    ld de, $211e
    ccf

jr_029_4088:
    ld b, e
    ld a, a
    add a
    db $fc
    rrca
    rst $38
    adc h
    rst $38
    adc a
    dec h
    add hl, hl
    dec l
    ld sp, $35e0
    add hl, sp
    dec a
    ld bc, $0601
    rlca
    jr jr_029_409f

jr_029_409f:
    rra
    ld h, b
    ld a, a
    pop hl
    sbc a
    di
    adc a
    or a
    nop
    call z, $fccf
    ld c, a
    ld a, a
    ld b, a
    ld a, h
    inc hl
    ld b, b
    ccf
    ccf
    inc de
    inc e
    rla
    jr jr_029_40c6

    add hl, bc
    nop
    rrca
    rrca
    ldh a, [$f0]
    jr c, jr_029_4088

    ld a, b
    adc b
    nop
    ld h, h
    sbc h
    add h

jr_029_40c6:
    db $fc
    jp nz, $e2fe

    ld a, $00
    pop af
    rst $38
    db $fd
    inc sp
    rst $28
    ld sp, $f9c7
    nop
    add e
    db $fd
    rlca
    rst $38
    jr @-$06

    ld h, b
    ldh [rNR41], a
    add b
    add b
    nop
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    cp a
    ldh a, [$bf]

jr_029_40e9:
    nop
    rst $20
    cp a
    rst $28
    cp l
    db $ec
    cp e
    db $ec
    ei
    ld bc, $bfec
    db $ec

jr_029_40f6:
    cp e
    rst $28
    cp h
    rst $20
    ld de, $0808
    rst $38
    cp a
    rst $38
    pop bc
    dec e
    ld [$ffff], sp

jr_029_4105:
    ld bc, $ff10
    rst $38
    nop
    ld b, $08
    rst $38
    dec a
    inc a
    db $db
    nop
    inc a
    ei
    inc a
    rst JumpTable
    inc a
    db $db

jr_029_4117:
    rst $38
    cp h
    ldh [rNR11], a
    jr z, jr_029_4136

    ld [$f01f], sp
    cp $fe
    rst $38
    inc bc
    rst $38
    nop
    db $fd
    rrca
    db $fd
    rst $20
    db $fd
    rst $30
    dec a
    scf
    nop
    db $dd
    scf
    db $fd
    scf
    rst JumpTable
    scf
    db $dd

jr_029_4136:
    rst $30
    jr nz, jr_029_40f6

    rst $20
    ld de, $ff08
    db $fd
    rst $38
    inc bc
    cp $56
    cp $61
    ld [$7fd0], sp
    jr z, jr_029_4105

    ld a, l
    jr nz, jr_029_41cb

    ld [$aabd], sp
    ld a, a
    ld [$7fff], sp
    ld [$7fc4], sp
    jr @+$42

    ld c, l
    jr z, jr_029_4117

    and d
    ld e, a
    ld [$61df], sp
    ld [$ffdb], sp
    dec a
    ld de, $0428
    dec hl
    rst $38
    rst $38
    ld hl, $c408
    ccf

jr_029_416e:
    jr z, @-$02

    dec a
    jr nz, jr_029_41b2

    ld [$be15], sp
    rst $20
    rst $38
    cp a
    jr @-$36

    ccf
    jr jr_029_4186

    dec l
    jr z, jr_029_41e8

    ld a, h
    sbc e
    db $10
    and e

jr_029_4185:
    db $10

jr_029_4186:
    rst $38
    ld a, $11
    jr z, jr_029_41a4

    ld [$0821], sp
    ld d, h
    jp nz, $083f

    rst $38
    ccf
    ld [$3dbe], sp
    jr nz, jr_029_4185

    rst $38
    cp e
    rst $38
    jr c, jr_029_416e

    ccf
    jr jr_029_4206

    ld [$182d], sp

jr_029_41a4:
    ld a, $7b
    db $10
    add e
    db $10
    ld [hl+], a
    rst $38
    ld a, h
    ld de, $2028
    rst $38
    rst $38
    ld b, b

jr_029_41b2:
    nop
    nop
    rla
    ccf
    ccf
    ld e, a
    ld h, b
    ld e, a
    ld h, c
    nop
    rst JumpTable
    rst $20
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld d, h
    rrca
    ld b, b
    rra
    add b
    ld e, $41

jr_029_41cb:
    inc e
    rra
    nop
    dec e
    rra
    add hl, de
    rra
    inc de
    rra
    dec de
    rra
    add b
    dec [hl]
    ld e, a
    pop hl
    rst JumpTable
    ld h, b
    ret nz

    ld a, a
    rst $38
    ld [bc], a
    ld a, a
    cp a
    ld a, a
    ld a, a
    add b
    rst $38
    ld h, $ff

jr_029_41e8:
    nop
    ld h, b
    rst $38
    pop bc
    rst $38
    jp $ccff


    rst $38
    dec c
    sbc $ff
    ldh [$df], a
    ld [hl+], a
    ld sp, $4000
    nop
    ld bc, $0300
    nop
    ld b, $00
    inc c
    nop
    nop
    jr jr_029_4206

jr_029_4206:
    ld sp, $2300
    nop
    ld h, e
    nop
    ld b, h
    ld b, a
    ld b, c
    rst $08
    nop
    adc a
    add c
    rrca
    nop
    inc c
    ld a, b
    nop
    ret nz

    nop
    jr nz, jr_029_4243

jr_029_421c:
    ccf
    nop
    ld b, b
    rst $38
    ld bc, $0113
    ld bc, $0203
    rlca
    inc b
    nop
    rrca

jr_029_422a:
    ld [$6c6b], sp
    db $fd
    sbc d
    cp a
    ret z

    inc b
    sbc l
    ld [$fe89], a
    ld sp, hl
    ld hl, $e99e
    ld b, b
    sbc [hl]
    add hl, hl
    ld c, a
    ld [hl], l
    ld [hl+], a
    ccf
    rra
    rra

jr_029_4243:
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_029_422a

    jr nc, jr_029_421c

    nop
    ld d, [hl]
    or [hl]
    sbc a
    ld a, c
    rra
    pop af
    add hl, de
    rst $30
    nop
    ld de, $1fff
    rst $38
    cpl
    pop af
    ld e, a
    pop hl
    nop
    and a
    reti


    ld b, a
    cp e
    ld b, $fe
    ld hl, sp-$08
    ld b, b
    nop
    nop
    rla
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc h
    db $fc
    db $fc
    add hl, de
    ld [de], a
    inc bc
    inc bc
    dec sp
    ccf
    ccf
    rlca
    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, b
    ldh a, [rLCDC]
    dec e
    db $10
    add hl, sp
    ld c, h
    rst $38
    ld b, b
    ret nz

    ret nz

    rla
    db $10
    and b
    ld bc, $0001
    rlca
    rlca
    inc e
    inc e
    jr nc, jr_029_42c6

    ld h, b
    ld h, b
    ld b, $40
    ld b, b
    ret nz

    ret nz

    add b
    ld b, b
    dec de
    ld a, [bc]
    rrca
    inc e
    rrca
    ld a, b
    ld a, b
    inc sp
    rrca
    ld a, [bc]
    nop
    ld c, $7f
    ld a, a
    ret nz

    dec de
    ld d, $00
    nop
    nop
    rra
    nop
    ccf
    rrca
    ld [hl], b
    rra
    ld [$3fe1], sp
    pop bc
    ld a, a
    ld bc, $e140
    ccf
    ld [hl], b
    nop
    rra
    ccf

jr_029_42c6:
    rrca
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    cp $07
    db $fc
    rst JumpTable
    ld hl, sp-$41
    ld hl, sp+$02
    ccf
    db $e4
    ld a, a
    jp $837f


    ld bc, $c308
    nop
    ld a, a
    db $e4
    ld a, a
    ld hl, sp+$3f
    ld hl, sp-$41
    db $fc
    nop
    rst JumpTable
    cp $07
    rrca
    nop
    ldh a, [rP1]
    ld a, a
    nop
    ldh [$3f], a
    ei
    rra
    db $fd
    rra
    db $fc
    daa
    ld [$c3fe], sp
    cp $c1
    ld bc, $c308
    cp $27
    nop
    cp $1f
    db $fc
    rra
    db $fd
    ccf
    ei
    ld a, a
    jr nz, @-$1e

    ldh a, [rSTAT]
    ld [$00f8], sp
    db $fc
    ldh a, [$0e]
    inc b
    ld hl, sp-$79
    db $fc
    add e
    cp $01
    ld b, b
    add a
    db $fc
    ld b, $0e
    ld hl, sp-$04
    ldh a, [$f8]
    dec e
    ld [$007f], sp
    ld h, $e3
    nop
    cp a
    db $e4
    ccf
    add sp, $7f
    ret nc

    ld a, a
    sub b
    add b
    ld bc, $d008
    ld a, a
    add sp, $7f
    db $e4
    ccf
    db $e3
    add b
    ld a, a
    ld e, b
    rst $00
    db $fd
    daa
    db $fc
    rla
    cp $0b

jr_029_434a:
    jr nz, jr_029_434a

    add hl, bc
    ld bc, $0b08
    cp $17

jr_029_4352:
    cp $27
    jr nz, jr_029_4352

    rst $00
    ld a, a
    nop

jr_029_4359:
    ld c, c
    ei
    rlca
    rst $28
    rst JumpTable
    pop hl
    add b
    rst $38
    ld [$7fcc], sp
    sub d
    ld a, a
    and l
    ld a, a
    adc b
    nop
    ld a, a
    ret nz

    ld a, a
    and e
    ld a, a
    ei
    ccf
    rst JumpTable
    ld [$efbf], sp
    rst JumpTable
    ei
    ld a, a
    jr jr_029_4359

    ldh [$f7], a
    nop
    ei
    ei
    db $fd
    ld a, a
    db $fc
    dec a
    cp $9f
    ld [hl+], a
    cp $0d
    rst $38
    ld [$fe33], sp
    dec b
    rst $38
    ld [$08fb], sp
    db $fd
    rst $30
    ei
    rst JumpTable
    ld a, a
    nop
    ld b, l
    ld sp, hl
    rlca
    db $e3
    nop
    rst JumpTable
    pop af
    cp a
    pop af
    ccf
    adc d
    ld a, a
    add l
    ld [$aa7f], sp
    ld a, a
    ld a, [$0883]
    add [hl]
    ld a, a
    reti


    ld [bc], a
    ccf
    ret c

    cp a
    pop hl
    rst JumpTable
    ld hl, sp+$7f
    jr jr_029_43d7

    nop
    ldh [$87], a
    ei
    dec de
    db $fd
    sbc e
    db $fc
    ld h, c
    nop
    cp $a5
    cp $5f
    cp $55
    cp $a1
    nop
    cp $61
    cp $9b
    db $fc

jr_029_43d0:
    sbc e
    db $fd
    rst $00
    jr nc, jr_029_43d0

    sbc a
    ld a, a

jr_029_43d7:
    nop
    inc hl
    ld b, b
    nop
    nop
    ld [$0003], sp
    rrca
    nop
    rra
    nop
    nop
    ld a, a

jr_029_43e5:
    ld bc, $073f
    rra
    dec bc
    rra
    dec c
    nop
    rra
    rlca
    ccf
    ld a, [de]
    ccf
    jr jr_029_4410

    inc bc
    db $10
    ld [$1f07], sp
    rla
    ld [$0020], sp
    inc d
    nop
    db $10
    db $f4
    nop
    ld hl, sp+$01
    ld [$c0fc], sp
    or $ec
    nop
    cp $bc
    db $fc
    ld [hl], b
    ldh a, [$e0]

jr_029_4410:
    ld hl, sp-$40
    nop
    db $fc
    jr jr_029_4452

    ret c

    ld hl, sp+$00
    ldh a, [$e0]
    ld bc, $00f0
    inc b
    nop
    jr z, jr_029_4422

jr_029_4422:
    cpl
    dec a
    ld [$1f00], sp
    nop
    ccf
    nop
    ld l, a
    jr nc, jr_029_44a0

    inc a
    nop
    jr c, jr_029_4440

    rra
    rlca
    scf
    jr @+$3e

    inc de
    ld sp, $0718
    ccf
    jr nz, jr_029_443d

jr_029_443d:
    db $10
    ret nz

    nop

jr_029_4440:
    ldh a, [$3f]
    ld [$fe00], sp
    nop
    db $ec
    jr jr_029_43e5

    ld a, b
    jr c, @-$1e

    nop
    ldh [$c0], a
    ld hl, sp+$00
    inc a

jr_029_4452:
    ret z

    inc a
    ret z

    add sp, $53
    ld [$083f], sp
    nop
    db $10
    rlca
    ld a, l
    stop
    ccf
    inc bc
    nop
    rrca
    rlca
    rra
    ld b, $1f
    dec c
    rrca
    rlca
    nop
    rlca
    nop
    rrca
    ld b, $0f
    ld b, $07
    nop
    db $10
    inc bc
    ld bc, $7f07
    ld c, b
    ld hl, sp+$00
    call c, $20b8
    db $fc
    ld hl, sp+$33
    ld [$e0c0], sp
    nop
    ret nc

    jr nz, jr_029_448b

    sub b
    ld h, b

jr_029_448b:
    ldh a, [rP1]
    ldh [$c0], a
    ccf
    jr nz, jr_029_4492

jr_029_4492:
    add b
    ld h, a
    ld [$003f], sp
    rst $38
    nop
    ld a, a
    ld b, $1f
    inc b
    rrca
    ccf
    dec c

jr_029_44a0:
    ccf
    dec de
    adc l
    ld [$1f0c], sp
    ld [bc], a
    inc c
    ld e, $01
    dec sp
    inc e
    ccf
    dec de
    ld [$b040], sp
    and c
    ld [$81e8], sp
    ld [$1001], sp
    cp b
    ld [hl], b
    ld hl, sp-$10
    add b
    ccf
    db $10
    ldh a, [rP1]
    jr c, @-$3e

    ld a, b
    sub b
    add sp, $30
    ld [hl], b
    ld hl, sp+$7f
    jr z, jr_029_450b

    db $10
    ld a, a
    jr nc, @+$81

    scf
    inc b
    ld a, a
    ld a, $3f
    ld c, $0b
    or a
    ld [$183f], sp
    ld c, [hl]
    inc a
    ld b, l
    ld [$070f], sp
    cp a
    jr nz, jr_029_4513

    db $10
    di
    ld [$00c8], sp
    db $fc
    add sp, -$04
    ret c

    ld hl, sp-$30
    ld hl, sp-$20

jr_029_44f1:
    nop
    db $fc
    jr jr_029_44f1

    jr @+$3a

    ret nz

    db $10
    ldh [$e4], a
    ld bc, $3f09
    ld h, b
    ld bc, $3f08
    inc c
    rst $38
    db $10
    ccf
    db $10
    jp nz, Jump_029_50ff

    ccf

jr_029_450b:
    db $10
    db $fc
    nop
    cp $0c
    ld bc, $fc10

jr_029_4513:
    ld b, [hl]
    jr nc, jr_029_4555

    add hl, bc
    nop
    db $fc
    ld [$50ff], sp
    ld a, l
    ld de, $101f
    inc b
    rra
    inc b
    rst $38
    ld [$1f05], sp
    dec c
    ccf
    inc bc
    rlca
    ccf
    jr @+$41

    ld d, $1f
    rst $38
    jr z, jr_029_4572

    ld hl, $81a1
    jr jr_029_4568

    ld bc, $f008
    ret nc

    ldh [$a0], a
    cp a
    jr jr_029_45b2

    db $10
    dec sp
    ld [$50ff], sp
    ld b, c
    ld e, b
    nop
    ccf
    inc e
    rst $38
    ld b, b
    jp nz, $7041

    rst $38
    db $10
    ld hl, sp+$00
    inc e

jr_029_4555:
    add sp, -$3f
    add hl, bc
    jr nc, jr_029_457a

    db $fc
    nop
    ld b, d
    nop
    ld b, b
    ld e, $00
    ld [de], a
    inc c
    ld hl, $640c
    nop
    ld h, c

jr_029_4568:
    daa
    dec l
    ld [de], a
    ld hl, $3f40
    ld bc, $3c43
    ld h, a

jr_029_4572:
    jr jr_029_45b3

    nop
    rra
    ld a, [hl]
    nop
    nop
    rrca

jr_029_457a:
    nop
    inc de
    rrca
    cpl
    rra
    rst $38
    nop
    ld [$21de], sp
    rst $10
    jr z, jr_029_4602

    inc e
    ld a, a
    nop
    ccf
    rst $38
    rlca
    xor $1f
    rst $30
    ld c, $ff
    ld h, b
    ld h, b
    ld b, c
    sbc a

jr_029_4596:
    ret nz

    nop
    ldh [$c0], a
    ldh a, [rP1]
    ldh [$fc], a
    jr nz, jr_029_4596

    adc h
    ld a, [hl]
    cp h
    db $fc
    ld a, [bc]
    ld l, b
    ret c

    ldh [$b0], a
    dec l
    jr nz, jr_029_45db

    ldh [$e0], a
    dec [hl]
    ld e, c
    ld h, b
    rlca

jr_029_45b2:
    nop

jr_029_45b3:
    dec de
    rlca
    ld a, a
    nop
    ld [$21de], sp
    rst $10
    jr z, @-$03

    inc e
    ld a, a
    nop
    ccf
    ld a, a
    rlca
    rst $38
    rra
    xor $1b
    rst $30
    jr jr_029_45d8

    rst $38
    ld h, b
    ld b, c
    sbc a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    ldh a, [rNR41]
    ldh a, [$80]
    ld a, h

jr_029_45d8:
    and b
    or $02

jr_029_45db:
    ld a, h
    cp $ec
    call c, $b8e8
    ld l, l
    ldh [rSVBK], a
    ldh [$35], a
    ld e, c
    ldh [$38], a
    nop
    ld b, h
    jr c, jr_029_460d

    or d
    ld a, h
    ld hl, $7ea1
    add d
    ld a, h
    sub d
    ld [hl], b
    ld a, h
    dec hl
    cpl
    nop
    ld [de], a
    inc e
    nop
    ld [hl+], a
    inc e
    jr c, jr_029_462c

    inc e

jr_029_4602:
    inc hl
    daa
    nop
    ld a, [bc]
    rlca
    nop
    add hl, bc
    nop
    rlca
    rla
    rrca

jr_029_460d:
    ld a, a
    inc b
    ld l, a
    db $10
    ld l, e
    ld bc, $3d14
    ld c, $3f
    rra
    rra
    inc bc
    dec l
    inc c
    dec bc
    rlca
    rrca
    nop
    and c
    dec a
    ldh [rP1], a
    nop
    ldh a, [$e0]
    ld hl, sp-$10
    cp $10
    ld a, e

jr_029_462c:
    add $00
    cp a
    ld d, d
    ld a, [c]
    inc l
    ld a, [$fce4]
    ret c

    nop
    db $fc
    sbc b
    sbc h
    ld h, b
    ld l, h
    sub b
    add sp, $10
    nop
    sbc $e0
    db $fc
    ret nz

    ld hl, sp+$00
    inc bc
    nop
    nop
    rrca
    ld bc, $051a
    ld d, $0d
    ccf
    rrca
    nop
    ld a, a
    cpl
    ld e, a
    dec l
    scf
    inc c
    rrca
    inc b
    nop
    rra

jr_029_465c:
    inc bc
    ccf
    nop
    scf
    ld [$0d3e], sp
    ld [bc], a
    ld e, $0d
    ld c, $01
    rlca
    nop
    jr nz, jr_029_465c

    nop
    nop
    add sp, -$70
    ld a, b
    ldh [$fe], a
    ldh a, [$ef]
    nop
    ldh a, [$c9]
    or $cd

jr_029_467a:
    ld a, [c]
    sbc $ec
    cp [hl]
    nop
    call z, $30ce
    ld [hl], $c8
    inc [hl]
    ret z

    ld [$f00c], sp
    inc c
    ldh a, [$fe]
    ld e, a
    nop
    ld a, [de]
    ld a, [hl]
    nop

jr_029_4691:
    nop
    push hl
    ld a, [hl]
    add hl, sp
    rra
    ld [hl-], a
    rra
    ccf
    nop
    nop
    jr nz, jr_029_46bc

    ld a, a
    nop
    rst $38
    ld l, e
    rst $38
    ld h, c
    nop
    ld [hl], h
    rrca
    ld [hl], c
    ld c, $3f
    ld bc, $0df7
    nop
    xor e
    ld d, a
    adc a
    ld [hl], b
    ld c, e
    scf
    ld c, a
    jr nc, jr_029_46b6

jr_029_46b6:
    jr c, jr_029_46b8

jr_029_46b8:
    jr nc, jr_029_467a

    ld d, b
    and b

jr_029_46bc:
    sbc b
    ld h, b
    nop
    jr c, jr_029_4691

    db $fc
    ld [$48fc], sp
    ld hl, sp+$60
    db $10
    ld hl, sp-$20
    ldh a, [rNR44]
    ld b, b
    db $fc
    or b
    db $fc
    nop
    jr nc, @-$46

    ld b, b
    ld a, [hl]
    add b
    jp nz, Jump_029_7c3c

    ld b, b
    nop
    nop
    ld bc, $4f00
    nop
    sbc a
    inc bc
    rst $38
    rrca
    nop
    ld a, a
    inc de
    rst $38
    ld c, l
    rst $38
    ld l, h
    ld e, h
    inc sp
    nop
    ccf
    inc e
    ld a, a
    dec bc
    rst $38
    ld b, e
    rst $20
    ld e, b
    nop
    ld h, b
    rra
    ld a, $01
    dec e
    ld c, $3f
    nop

jr_029_46ff:
    nop
    ld [c], a
    db $fc
    ld a, [$fe1c]
    db $e4
    cp $f0
    nop
    rst $38
    sub b
    db $fd
    ld h, [hl]
    rst $38
    ld l, [hl]
    ld a, l
    sbc [hl]
    nop
    ld a, [$ec74]
    or b
    call c, $fca0
    jr jr_029_471b

jr_029_471b:
    inc a
    ret c

    jr jr_029_46ff

    add h
    ld a, b
    ld hl, sp+$00
    nop
    db $10
    rrca
    jr nz, jr_029_4747

    jr nz, jr_029_4749

    ld h, c
    rra
    nop
    cp [hl]
    ld e, a
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld l, a
    stop
    jr nc, @+$21

    rra
    rrca
    ccf
    nop
    ld [hl], b
    cpl
    nop
    ld [hl], b
    cpl
    jr nz, jr_029_4762

    ld b, e
    inc a
    ccf
    nop

jr_029_4747:
    nop
    add b

jr_029_4749:
    nop
    ld [hl], d
    add b
    ld a, c
    ret nz

    rst $38
    add b
    nop
    cp $00
    rst $38

jr_029_4754:
    ld b, $f7
    ld c, $cd
    ld a, $00
    ld e, $f4
    db $fc
    ldh [$fa], a
    inc b
    ld c, $f4

jr_029_4762:
    nop
    inc c
    ldh a, [$f8]
    nop
    cp b
    ld [hl], b
    db $fc
    nop
    nop
    ld bc, $1300
    nop
    daa
    inc bc
    ccf
    rlca
    nop
    rra
    ld bc, $060f
    rra
    ld b, $27
    add hl, de
    nop
    ccf
    inc bc
    rra
    inc c
    rrca
    ld b, $07
    nop
    inc d
    dec bc
    dec b
    rrca
    ld a, a
    ld [$7f1f], sp
    jr nz, jr_029_4754

    cp $00
    ret nz

    rst $38
    ldh [$fd], a
    ld c, $ff
    cp $ff
    nop
    cp $fe
    db $fc
    cp $f0
    db $e4
    ld hl, sp-$08
    nop
    nop
    db $e4
    sbc b
    jp nz, $81bc

    ld a, [hl]
    rst $38
    add b
    dec a
    xor b
    inc bc
    nop
    dec b
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    db $10
    ld bc, $0007
    dec a
    and b
    add sp, -$30
    db $e4
    ret c

    ld [bc], a
    call nz, $0238
    db $fc
    cp $00
    nop
    ret nz

    inc a
    inc b
    nop
    ld b, d
    inc a
    pop af
    ld a, [hl]
    dec de
    xor b
    inc a
    ld a, e
    ld bc, $fd47
    xor e
    cp l
    rst $38
    ld a, a
    ld a, a
    dec d
    ld d, b
    nop
    rrca
    rrca
    ld e, $15
    cpl
    ld [hl], $4f
    ld [hl], d
    nop
    ld b, [hl]
    ld a, c
    db $e3
    rst $38
    db $fd
    cp $fb
    rst $00
    ld [$abfd], sp
    rst $38
    rst $38
    rla
    db $10
    rlca
    rlca
    jr jr_029_47fb

jr_029_47fb:
    rra
    inc l
    inc sp
    ld c, [hl]
    ld [hl], l
    ld c, a
    db $76
    adc a
    nop
    ld a, [c]
    add a
    ei
    add a
    db $fc
    call $fffb
    ld [bc], a
    ei
    ld a, l
    ld a, e
    ld a, a
    ld b, h
    rst $38
    rra
    ld [$010a], sp
    dec c
    ld d, $19
    rla
    ld a, [de]
    daa
    ld a, [hl-]
    ld bc, $0010
    ld h, $39
    inc hl
    ccf
    dec [hl]
    ld a, $3f
    dec a
    nop
    rra
    dec e
    cpl
    dec a
    ld e, l
    ld h, [hl]
    ld a, a
    ld b, e
    nop
    ld a, a
    ld d, l
    ld a, $3e
    nop
    nop
    ld bc, $0001
    ld h, e
    ld h, d
    ld [hl], a
    ld d, h
    ld a, a
    ld c, l
    ld l, a
    ld d, [hl]
    nop
    ld [hl], a
    ld c, d
    dec sp
    ld h, $1e
    rra
    dec sp
    daa
    nop
    db $76
    ld c, e
    ld a, [hl]
    ld b, l
    ld a, a
    ld a, h
    rlca
    inc b
    jr nz, @+$05

    inc bc
    ld [hl], a
    jr nz, jr_029_485f

    inc bc
    rlca
    inc b

jr_029_485f:
    ccf
    nop
    dec a
    ld a, a
    ld h, [hl]
    ld h, a
    ld e, d
    ei
    add [hl]
    cp $00
    sbc a
    ei
    rst $30
    ld [hl], $2b
    ld [hl], $2d
    ccf
    ld bc, $3f24
    inc [hl]
    dec de
    ld a, [de]
    ld bc, $0001
    rlca
    nop
    rrca

jr_029_487e:
    rlca
    rra
    rrca
    ccf
    rrca
    nop
    ld a, a
    dec hl
    ld a, a
    jr z, @+$7d

    rla
    jr c, jr_029_4893

    nop
    ccf
    nop
    ccf
    ld bc, $277f

jr_029_4893:
    ld [hl], a
    jr z, jr_029_4896

jr_029_4896:
    inc sp
    rrca
    ld e, $01
    dec a
    ld e, $1f
    nop
    nop
    ldh a, [rP1]
    ld hl, sp-$40
    db $fc
    ldh [$fc], a
    ldh [rP1], a
    cp $b4
    cp $b4
    ld a, d
    db $ec
    ld a, h
    adc b
    nop
    db $fc
    ld [$14fa], sp
    ld a, [c]
    call z, $34fa
    ld b, $fc
    or b
    jr c, jr_029_487e

    db $fc
    dec e
    ld [$283f], sp
    rlca
    nop
    ld a, a
    jr nz, @+$81

    jr nz, jr_029_4929

    jr nz, @+$41

    db $10
    jr nz, jr_029_48fe

    jr @+$3f

    db $10
    jr nc, jr_029_48e3

    ld d, $0f
    ccf
    nop
    ld bc, $0e3f
    rra
    nop
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [$f8], a

jr_029_48e3:
    ldh a, [$3f]
    ld [$fe04], sp
    inc b
    ld a, [$0400]
    db $fc
    ld [$18f4], sp
    ld hl, sp-$20
    db $ec
    nop
    db $10
    ld c, $f4
    ld l, $f4
    call c, $fce0
    dec b
    nop

jr_029_48fe:
    ld hl, sp+$00
    rrca
    nop
    dec a
    ld [$011f], sp
    ld [$1600], sp
    ccf
    ld b, $5b
    ccf
    jp $ff3c


    nop
    nop
    ld a, a
    ld [$1f2f], sp
    rra

jr_029_4917:
    nop
    ld hl, $1e04
    ccf
    nop
    dec bc
    rlca
    ld a, a
    jr jr_029_4922

jr_029_4922:
    db $fc
    ld b, b
    add b
    ld bc, $d808
    db $fc

jr_029_4929:
    ret c

    db $f4
    ld a, b
    ld hl, sp+$40
    ld [hl], b
    ld bc, $e008
    db $e4
    jr @-$1a

    ret c

    db $e4
    nop
    ret c

    ld hl, sp+$00
    ret nc

    ldh [$f8], a
    nop
    nop
    add c
    ld b, c
    and b
    dec e
    rra
    ld bc, $003f
    dec a
    ld b, e
    ld [$0040], sp
    ld b, c
    add b
    ld h, b
    db $e4
    jr jr_029_4917

    cp b
    call z, $b040
    sub c
    ld [$fe7c], sp
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    add hl, bc
    rlca
    ld de, $110f
    ld c, $23
    nop
    inc e
    ld h, $19
    ld h, l
    dec de
    xor a
    ld d, c
    cp a
    nop
    ld b, [hl]
    sbc a
    ld l, a
    ld c, e
    scf
    ccf
    rlca
    daa
    nop
    dec de
    ld h, a
    dec e
    ld a, a
    nop
    ret nz

    nop
    jr nz, jr_029_4984

jr_029_4984:
    ret nz

    sub b
    ldh [$88], a
    ldh a, [$88]
    ld [hl], b
    call nz, $3800
    ld h, [hl]
    sbc b
    and l
    jp c, $8af5

    ld sp, hl
    jr nz, jr_029_49fd

    ld a, [$08bb]
    db $f4
    add sp, -$1e
    call c, $50f2
    cp h
    ccf
    db $10
    dec b
    ccf
    jr jr_029_49b7

    rrca
    jr z, jr_029_49c1

    nop
    jr z, @+$19

    inc h
    dec de
    ld d, b
    cpl
    adc b
    ld [hl], a
    nop
    adc h
    ld a, e
    sbc a

jr_029_49b7:
    ld l, h
    ld d, a
    cpl
    jr nc, @+$11

    jr z, jr_029_4a1e

    rra
    ccf
    db $10

jr_029_49c1:
    and b
    ccf
    ld [$f008], sp
    ld [$f000], sp
    inc d
    add sp, $34
    ret z

jr_029_49cd:
    ld c, d
    or h
    ld de, $ee00
    add hl, hl
    sub $59
    or [hl]
    ld a, [$ec74]
    nop
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
    cp $00
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, [hl]
    ldh [$3f], a
    ldh [$1f], a
    ld [hl], b
    nop
    rrca
    ld [hl], b
    rrca

jr_029_49ef:
    ld a, b
    daa
    ld hl, sp+$67
    rst $38
    nop
    jr jr_029_49ef

    ld [hl], a
    ld hl, sp+$77
    db $fc
    ld [hl], e
    ld a, e

jr_029_49fd:
    ld [$7834], sp
    daa
    jr c, @+$01

    ld [$0000], sp
    add b
    nop
    nop
    ld b, b
    add b
    jr nz, jr_029_49cd

    db $10
    ldh [rSVBK], a
    nop
    add b
    ld [$c8f0], sp
    jr nc, jr_029_4a3b

    ret c

    inc d
    nop
    add sp, $1c
    ldh a, [$78]

jr_029_4a1e:
    or b
    adc b
    ld [hl], b
    ld [$41b0], sp
    ld [$1ffc], sp
    ld [$6041], sp
    ld sp, hl
    ld h, [hl]
    cp $11
    nop
    ldh a, [$6f]
    ldh a, [$6f]
    ld hl, sp+$77
    ld a, a
    jr nc, jr_029_4a6b

    ld [hl], b
    cpl
    rst $38

jr_029_4a3b:
    db $10
    ld b, c
    and b
    cp b
    ld [hl], b
    ld a, a
    jr nz, jr_029_4a43

jr_029_4a43:
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    ccf
    rrca
    nop
    ld a, a
    dec hl
    ld l, a
    dec a
    ld a, a
    ccf
    ccf
    dec de
    nop
    cpl
    inc e
    rla
    rrca
    cpl
    db $10
    cpl
    rla
    nop
    rra
    ld b, $1f
    nop
    ccf
    inc e
    ccf
    nop
    nop
    ret nz

    nop
    ldh [$c0], a

jr_029_4a6b:
    ldh a, [$e0]
    cp $f0
    nop
    rst $38
    or [hl]
    rst $30
    ld a, [hl]
    db $fd
    cp $fe
    cp b
    nop
    db $f4
    ld a, b
    add sp, -$10
    ld hl, sp+$00
    db $f4
    ld l, b
    nop
    db $f4
    ld l, b
    ld hl, sp-$40
    db $fc
    jr c, @-$02

    nop
    add b
    ccf
    jr c, jr_029_4ac5

    ld [hl], a
    ccf
    ld e, a
    ccf
    ccf
    rrca
    nop
    ld e, [hl]
    cpl
    ld c, a
    inc sp
    ld b, e
    inc a
    jr nz, jr_029_4abc

    jr nz, @+$21

    rrca
    ccf
    ld d, b
    db $fc
    ldh a, [$fe]
    db $f4
    cp $00
    db $fc
    ld a, [$fcfc]
    ld hl, sp+$38
    ldh a, [$fc]
    add hl, bc
    ret nz

    jp nz, $023c

    add hl, bc
    ld [$00f8], sp
    ccf
    ld b, b
    add b

jr_029_4abc:
    dec l
    ld [$3f0b], sp
    rla
    ccf
    rra
    ccf
    dec de

jr_029_4ac5:
    ld b, b
    ccf
    dec bc
    stop
    ccf
    ld a, [de]
    ccf
    ld d, $1f
    ld [$0f0e], sp
    ld bc, $3f0f
    ld [$c0f0], sp
    ld hl, sp-$7c
    inc sp
    ld [$b8fc], sp
    cp h
    ld hl, sp+$33
    ld [$f0e0], sp
    nop
    ldh [$f0], a
    nop
    db $10
    ldh [rNR10], a
    ldh [rNR41], a
    ld a, [de]
    ret nz

    ldh [rP1], a
    dec bc
    db $10
    ccf
    db $10
    rra
    inc sp
    ld [$113f], sp
    ld d, $3f
    dec d
    ccf
    ld [$1f1e], sp
    ld bc, $080b
    nop
    nop
    ld a, [hl]
    dec l
    ld a, [hl]
    dec l
    ld a, a
    inc [hl]
    ccf
    add b
    ccf
    ld b, b
    ldh [$fe], a
    call c, $fcde
    cp $fc
    nop
    db $fc
    ldh a, [$f8]
    ldh a, [$f0]
    add b
    sub b
    ld h, b
    ret nz

    ccf
    ld b, b
    nop
    ld [hl], b
    ld a, h
    nop
    ld b, h
    jr c, @+$46

    jr c, jr_029_4b2c

jr_029_4b2c:
    ld d, a
    jr z, jr_029_4b76

    jr c, @+$26

    jr jr_029_4b71

    inc e
    ld h, b
    ld e, $11
    ld [$088d], sp
    rra
    ld a, a
    ld sp, $366f
    nop
    rst JumpTable
    ld l, a
    rst $38
    ld e, a
    cp a
    ld e, a
    ld a, a
    ld d, $80
    dec c
    ld [$ff07], sp
    ld e, b
    rst $38
    ld e, b
    ld a, a
    nop
    db $10
    ld [$1f07], sp
    inc sp
    jr @-$1e

    nop
    call c, $00a0
    ld [$ead4], a
    ld d, h
    ld [c], a
    inc e
    db $e4
    ret c

    nop
    add sp, -$30
    cp b
    ret nz

    ld h, h
    sbc b
    call nc, $0108
    db $ec
    nop

jr_029_4b71:
    or b
    ld b, b
    ld a, h
    add b
    db $fc

jr_029_4b76:
    rra
    jr jr_029_4b79

jr_029_4b79:
    rra
    nop
    ld hl, $521e
    inc l
    ld b, h
    jr c, jr_029_4b83

    adc [hl]

jr_029_4b83:
    ld [hl], b
    rst $38
    ld [hl], b
    di
    ld h, b
    pop af
    ld l, a
    ld e, b
    add l
    ld e, l
    ld [hl], b
    rst $38
    rlca
    rst $38
    ld e, e
    ld e, e
    db $10
    rrca
    ld e, l
    jr @-$3e

    ld e, a
    db $10
    ld e, l
    and b
    and b
    ld b, b
    ld [hl], b
    add b
    ld hl, sp+$00
    ld h, b
    ld hl, sp+$27
    ld [$0825], sp
    ld b, $1f
    rlca
    rrca
    dec b
    jr nz, jr_029_4bce

    dec b
    ld b, c
    add hl, de
    rra
    rra
    inc b
    rra
    rlca
    add b
    ld b, a
    add hl, bc
    jr jr_029_4bdb

    nop
    add hl, sp
    ld e, $3f
    nop
    ld [$0078], sp
    db $fc
    nop
    dec a
    add hl, bc
    ret nz

    ldh a, [rLCDC]
    ld a, [bc]
    ld hl, sp+$40

jr_029_4bce:
    db $fc
    ret c

    ld b, c
    add hl, bc
    ldh a, [rIF]
    add hl, bc
    or b
    ld hl, $30f8
    dec sp
    db $10

jr_029_4bdb:
    cp h
    ld a, b
    db $fc
    nop
    rst $38
    db $f4
    nop
    rlca
    dec c
    ld [bc], a
    nop
    ld a, a
    nop
    ld [$0807], sp
    rlca
    ld [$0d07], sp
    ld [bc], a
    rlca
    inc h
    inc d
    rlca
    inc bc
    nop
    inc bc
    rrca
    rrca
    dec b
    rrca
    nop
    ld a, [bc]
    cp b
    ld a, a
    sbc b
    nop
    ld de, $9f00
    ld l, e
    adc e
    db $76
    sbc h
    ld h, e
    ld a, a
    add e
    adc [hl]
    inc bc
    rra
    dec sp
    inc e
    ccf
    ld a, [bc]
    db $10
    db $fc
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp-$50
    cp $b4
    ld a, [hl]
    ld a, d
    cp h
    or [hl]
    ld e, b
    nop
    add d
    cp $e4
    ret c

    sbc b
    ldh [$3c], a
    ret nz

    ld a, [hl]
    add b
    inc c
    ld e, $ec
    db $fc
    nop
    nop
    rst $38
    ld b, b
    nop
    rst $00
    ld l, l
    ld [bc], a
    ld [$e807], sp
    rlca
    rlca
    rst $38
    nop
    ld [$6d07], sp
    ld [bc], a
    rst $00
    ld d, b
    ld b, b
    nop
    ld bc, $0a07
    rlca
    ld [$bf07], sp
    ld a, a
    sbc e
    sbc a
    ld l, d
    adc a
    ld [hl], d
    ld b, $80
    rrca
    sbc a
    ld h, d
    ld a, l
    add a
    sbc [hl]
    nop
    nop
    ld e, $01
    dec sp

jr_029_4c61:
    inc e
    ccf
    nop
    sub b
    nop
    ld hl, sp+$00
    db $fc
    cp $5c
    ld a, a
    call c, $baff
    cp a
    sbc $fd
    jp c, $c8f6

    add d
    adc b
    db $fc
    sub b
    ld hl, sp-$50
    ld a, h
    or b
    nop
    nop
    jr jr_029_4c61

    nop
    cp $00
    ld b, b
    ld bc, $0300
    rrca
    ld bc, $0e15
    db $10
    rrca
    ld l, a
    ld bc, $67ff
    rst $38
    ld h, [hl]
    ld a, a
    nop
    rlca
    nop
    ccf
    rlca
    add hl, de
    rrca
    ld a, h
    rra
    cp a
    ld h, b
    sbc h
    ld [hl], e
    ld e, a
    jr nc, jr_029_4cde

    sub b
    ld bc, $00f0
    ld hl, sp-$04
    cp b
    cp $b8
    cp $74
    ld a, [hl]
    cp h
    ld a, [$acb4]
    nop
    ld de, $9800
    ldh [$3c], a
    ret c

    cp $18
    cp [hl]
    ld b, b
    ld a, [hl]
    add b
    ld hl, sp-$44
    ld a, b
    db $fc
    db $f4
    nop
    nop
    inc c
    dec e
    ld [$113f], sp
    cp a
    rra
    rst $38
    dec l
    rst $38
    ld l, l
    jr @+$22

    ld a, a
    rst $20
    ccf
    rst $38
    scf
    ccf
    nop
    inc sp

jr_029_4cde:
    rra
    dec sp
    rst $38
    ld h, [hl]
    xor $00
    db $f4
    nop
    nop
    ret nz

    ret nz

    add b
    ld b, e
    add b
    rst $00
    ld [bc], a
    rst $10
    add d
    xor $c4
    nop
    rra
    nop
    cp $84
    db $fc
    ret z

    add sp, $10
    ld a, h
    ldh [$fc], a
    ld hl, sp-$08
    db $f4
    nop
    nop
    jr nc, jr_029_4d3d

    db $10
    cpl
    jr jr_029_4d48

    rrca
    cp a
    ld d, $7f
    ld [hl], $02
    ld a, [hl+]
    rra
    di
    ccf
    ld a, a
    ccf
    ccf
    dec de
    nop
    add hl, de
    rrca
    rrca
    ld a, [bc]
    nop
    db $f4
    nop
    nop
    ld h, b
    ldh [rLCDC], a
    and b
    ret nz

    ldh [$80], a
    add sp, -$40
    ldh a, [$e0]
    nop
    nop
    ei
    ret nz

    rst $30
    ld [c], a
    db $ed
    add [hl]
    adc $04
    xor $c4
    ld a, [$fc6c]
    ldh [$f0], a
    nop

jr_029_4d3d:
    db $fd
    nop
    nop
    jr nc, jr_029_4d81

    db $10
    ccf
    rrca
    ld a, a
    ld d, $f3

jr_029_4d48:
    ccf
    ld [bc], a
    ld a, [hl+]
    rra
    ld a, a
    ccf
    ld a, a
    dec sp
    ccf
    dec de
    nop
    add hl, de
    rrca
    rrca
    ld a, [bc]
    nop
    db $fd
    nop
    nop
    ld h, b
    ldh a, [$60]
    ret nc

    and b
    ldh a, [$c0]
    ld hl, sp-$20
    ld d, b
    inc b
    ldh [$f0], a
    db $fc
    xor $84
    rst $00
    ld [bc], a
    rst $28
    jp nz, Jump_029_6efd

    cp $f0
    nop
    db $f4
    nop
    nop
    rlca
    ld [$1307], sp
    inc c
    rla
    ld a, [bc]
    rra
    inc bc
    ccf

jr_029_4d81:
    dec bc
    ld b, b
    inc h
    rrca
    inc sp
    cpl
    rla
    scf
    ld [$0b1d], sp
    ld e, $07
    rlca
    ld de, $001f
    db $f4
    nop
    nop
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp-$74
    ld [hl], b
    cp $08
    db $fd
    ld l, d
    ld bc, $d840
    add hl, sp
    or $f9

jr_029_4da6:
    and $eb
    inc d
    cp [hl]
    ld a, h
    db $fc
    ldh [$f8], a
    ldh a, [$f8]
    nop
    rst $38
    rst $38
    nop
    db $f4
    ld d, b
    nop
    inc a
    ld h, [hl]
    jr @+$01

    rst $38
    rst $38
    jr jr_029_4da6

    inc a
    rst $38
    rst $38
    nop
    db $fd
    dec d
    nop
    inc a
    ld h, [hl]
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $f4
    ld d, b
    nop
    ld a, h
    adc $30
    rst $38
    rst $38
    rst $38
    jr nc, jr_029_4e29

    jr c, jr_029_4dde

    xor b
    rst $38

jr_029_4dde:
    inc bc
    nop
    ccf
    nop
    ld a, a
    ld [bc], a
    rlca
    ld bc, $1a1c
    ld a, a
    ld a, [hl+]
    ld a, [bc]
    add d
    ccf
    ld a, a
    ld sp, $1f27
    ld e, $03
    inc d
    inc sp
    rrca
    inc a
    rra
    nop
    ld d, b
    ld b, b
    nop
    ldh a, [$fc]
    cp $80
    cp $c0
    rst $38
    rst $38
    ld [hl], h
    rst $38
    or h
    ei
    xor h
    ld [$fc02], sp
    cp $18
    call z, $f0f8
    db $f4
    adc b
    sbc $6c
    sbc [hl]
    db $ec
    inc c
    ldh a, [rP1]
    ld d, b
    ld b, c
    nop
    rrca
    ccf
    ld a, e
    rlca
    ld a, h
    inc bc
    rst $38
    cp $01
    cp $01
    rst $38

jr_029_4e29:
    nop
    and b
    db $10
    ld a, l
    inc bc
    dec de
    inc b
    inc l
    inc de
    jr c, jr_029_4e4b

    rrca
    rrca
    jr nz, jr_029_4e57

    ccf
    nop
    ld b, c
    ld d, l
    nop
    ret nz

    db $fc
    add b
    ld a, [hl]
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $44
    nop
    ret nz

    db $fc

jr_029_4e4b:
    ld hl, sp+$20
    jr c, jr_029_4e6b

    add sp, $1c
    add sp, $08
    ldh a, [$08]
    ldh a, [$f8]

jr_029_4e57:
    nop
    ld a, [hl+]
    and b
    ccf
    rra
    nop
    nop
    inc c
    ld e, $00
    ld c, $7f
    ld d, $7f
    dec d
    jr jr_029_4e88

    ccf
    ld a, a
    inc hl

jr_029_4e6b:
    ld a, c
    rra
    ld de, $1f0e
    ld bc, $261b
    dec de
    rra
    nop
    ld d, l
    nop
    nop
    db $fc
    ld hl, sp-$04
    cp $ae
    ld [hl], b
    cp $70
    sbc $f0
    db $ec
    ldh a, [$50]
    nop
    ret nz

jr_029_4e88:
    cp b
    or b
    ld h, b
    add b
    ret nc

    jr nz, jr_029_4edf

    and b
    ld c, b
    or b
    add h
    ld a, b
    db $fc
    nop
    ld a, [bc]
    adc d
    ld a, a
    rrca
    nop
    ccf
    nop
    ld a, [bc]
    rra
    db $10
    ccf
    rlca
    dec bc
    ld a, [hl+]
    ld bc, $0f82
    ld a, a
    ld sp, $1f7c
    cpl
    rra
    stop

jr_029_4eaf:
    dec e
    ld c, $11
    ld c, $00
    ld d, l
    nop
    nop
    ld hl, sp-$04
    cp $ff
    rst $10
    jr c, @+$01

    jr c, jr_029_4eaf

    ld a, b
    or $f8
    ld d, d
    nop
    ldh [$dc], a
    ret c

    or b
    ret nz

    nop
    or b
    ret nz

    ldh a, [$c0]
    ld l, b
    ret nc

    ld hl, sp+$00
    ld d, l
    ld b, b
    nop
    rlca
    rrca
    rra
    rra
    rra
    ccf
    db $10
    ccf
    dec d

jr_029_4edf:
    ld e, a
    dec l
    ld b, c
    ld b, b
    rla
    rst $28
    rst $38
    inc bc
    rst $38
    ld [$3b7c], sp
    jr nc, jr_029_4efc

    rra
    rrca
    rra
    nop
    ld d, h
    nop
    nop
    ldh [$f0], a
    ld hl, sp-$08
    add b
    ld hl, sp-$80
    db $fc

jr_029_4efc:
    adc b
    cp $a8
    ei
    or h
    ld bc, $d840
    rst $30
    add sp, -$01
    ret nz

    cp $10
    ld a, h
    cp h
    inc e
    ldh [$08], a
    ldh a, [$f8]
    nop
    sub b
    nop
    rlca
    nop
    dec bc
    rla
    dec bc
    cpl
    dec de
    add hl, hl
    rla
    dec a
    ld c, $30
    rrca
    cpl
    db $10
    ld d, b
    nop
    rra
    cpl
    add hl, hl
    db $76
    add hl, hl
    ld a, a
    jr nc, jr_029_4f6c

    nop
    ld [hl], h
    dec sp
    ld a, e
    inc e
    ccf
    nop
    sub b
    nop
    ldh [rP1], a
    ret nc

    add sp, $70
    db $ec
    ld [hl], b
    cp $fc
    cp $fc
    db $f4
    jr c, jr_029_4efc

    ret nc

    db $10
    db $10
    ret nz

    cp h
    ret nc

    ld a, $7f
    add [hl]
    rst $28
    ld d, $de
    jr nz, jr_029_4f8e

    cp $3c
    cp $00
    ld b, b
    nop
    ret nz

    ld a, h
    ld a, h
    cp $82
    ld a, [hl]
    ld a, d
    inc bc
    inc e
    inc d

jr_029_4f62:
    jr c, jr_029_4f8c

    ld a, h
    ld e, h
    add hl, hl
    dec l
    ret nc

    rst $30
    add b
    db $10

jr_029_4f6c:
    ld b, c
    sub d
    nop
    add $00
    ld l, [hl]
    ld b, h
    rst $08
    daa
    sub $4f
    inc sp
    nop
    dec c
    jr c, jr_029_4f7d

    nop

jr_029_4f7d:
    ld [hl], h
    jr c, jr_029_4f62

    ld a, h
    add d
    ld a, h
    inc hl
    add hl, sp
    ld b, h
    jr c, @+$2d

    nop
    inc d
    dec [hl]
    ld h, h

jr_029_4f8c:
    jr c, jr_029_4faf

jr_029_4f8e:
    add b
    dec e
    ld c, $07
    rlca
    rra
    inc e
    inc a
    inc sp
    ld [hl], a
    ld bc, $676f
    ld e, h
    rst $20
    call c, $bcc7
    ld hl, $c300
    cp [hl]
    jp $e3bf


    sbc $63
    ld e, [hl]
    jr c, @+$75

    ld l, a
    dec [hl]
    add hl, sp

jr_029_4faf:
    dec a
    inc c
    inc c
    ld c, $00
    dec bc
    rrca

jr_029_4fb6:
    add hl, de
    rra
    jr c, jr_029_4fb6

    di

jr_029_4fbb:
    db $fc
    nop
    add e
    ld a, h
    ld b, e
    inc a
    ld h, e
    ld a, $61
    ld a, a
    rlca
    ld b, b
    cp $81
    cp $f1
    ld sp, $3935
    and b
    dec a
    nop
    nop
    add hl, bc
    ld l, h
    ld l, h
    sub d
    cp $aa
    nop
    sub $ba
    add $54
    ld l, h
    jr z, jr_029_5018

    db $10
    ld h, c
    db $10
    rla
    ld a, [bc]
    nop
    ld a, [bc]
    jr jr_029_4fe9

jr_029_4fe9:
    inc h
    jr jr_029_500d

    ldh [rNR51], a
    nop
    inc c
    ld b, b
    nop
    nop
    ld [$001f], sp
    ld a, a
    rra
    cp a
    ld [hl], b
    nop
    rst $38
    ld h, l
    ld a, a
    dec d
    ccf
    rla
    cpl
    rra
    nop
    rra
    inc b
    rrca
    inc bc
    dec bc
    inc b
    inc c
    inc bc
    inc b

jr_029_500d:
    rra
    nop
    inc a
    rrca
    rra
    ld e, $10
    nop
    ld hl, sp+$00
    nop

jr_029_5018:
    cp $f8
    db $fd

jr_029_501b:
    ld c, $ff
    ld b, d
    cp $00
    ld l, h
    cp $fc
    cp $e8
    rst JumpTable
    and $bf
    nop
    jp c, $18ff

    ld a, e
    add [hl]
    rst $10
    ld l, [hl]
    adc $20
    ld a, h
    rst $38
    rra
    jr jr_029_4fbb

    nop
    jr nc, jr_029_503a

jr_029_503a:
    ld l, b

jr_029_503b:
    nop
    db $10
    adc h
    ld [hl], b
    db $f4
    ld [$000c], sp
    ld hl, $0000
    inc bc
    ld bc, $0307
    inc bc
    ld bc, $c401
    add hl, de
    jr jr_029_5051

jr_029_5051:
    jr nz, @+$21

    nop
    ld l, a
    ld e, a
    jr nz, jr_029_505d

    rst $38
    nop
    rrca
    rst $10
    rst $28

jr_029_505d:
    cp a
    jp $ac7f


    cp a
    nop
    set 3, a
    db $e3
    rst $38
    nop
    ld a, c
    ld e, $3f
    add b
    rra
    jr @-$0e

    nop
    db $ec
    ldh a, [$fa]
    inc e
    rst $38
    nop
    add [hl]
    rst $38
    jp c, $f8fe

    cp b
    ret nc

    ld [hl], b
    nop
    add b
    ret nc

    jr nz, jr_029_501b

    ld h, b
    xor b
    ld d, b
    ld hl, sp+$08
    nop
    cp h
    ld a, b
    db $fc
    sbc l
    adc b
    cpl
    rla
    ld l, a
    nop
    inc de
    ld [hl], a
    inc l
    ld [hl], b
    cpl
    ld a, a
    nop
    add hl, sp
    ret nz

    ccf
    jr jr_029_503b

    jr jr_029_50a6

    rst $38
    ld c, d
    cp $5c
    rst $30
    nop

jr_029_50a6:
    cp [hl]
    db $eb
    or [hl]
    db $dd
    xor d
    rst $38
    ret nz

    cp $06
    adc h
    sbc $6c
    inc c
    ldh a, [$3f]
    jr nc, jr_029_50b7

jr_029_50b7:
    jr nz, jr_029_50bb

    nop
    nop

jr_029_50bb:
    dec c
    ld [bc], a
    dec d
    ld c, $2d
    ld a, [de]
    add hl, hl
    nop
    ld d, $2a
    inc d
    inc e
    nop
    inc a
    jr @+$70

    nop
    inc a
    ld a, d
    inc a
    rst JumpTable
    ld a, [hl]
    or l
    ld a, [hl]
    ld l, l
    inc b
    rlca
    ei
    ld h, a
    rst $38
    ld h, b
    sbc a
    jr nc, jr_029_50fc

    rrca
    nop
    rla
    dec c
    rrca
    inc bc
    ld c, $07
    rrca
    nop
    nop
    db $10
    rrca
    ccf
    inc bc
    ld [hl], a
    jr c, @+$81

Jump_029_50ef:
    nop
    nop
    ldh a, [$e0]
    ld d, [hl]
    ldh [rIE], a
    ld b, $ff
    xor $00
    cp $0c

jr_029_50fc:
    cp $80
    ld a, [c]

Jump_029_50ff:
    call z, $dce2
    nop
    and h
    ret c

    ld b, h
    cp b
    xor h
    ld d, b
    adc h
    ld hl, sp+$00
    ld e, $f4
    cp $e4
    ld a, [$fe1c]
    nop
    nop
    dec e
    inc bc
    ccf
    db $10
    scf
    rrca
    ld e, a
    jr c, jr_029_511e

jr_029_511e:
    ld a, a
    ld [hl-], a
    ccf
    ld [bc], a
    rrca
    rlca
    dec bc
    ld b, $40
    rlca
    db $fd
    ld [$0007], sp
    inc b
    inc bc
    ld [$0007], sp
    rrca
    rlca
    rlca
    nop
    rrca
    nop
    xor [hl]
    ldh a, [rNR10]
    rst $30
    ld c, $df
    dec a
    db $10
    ret nz

    ld a, [c]
    db $ec
    ld a, [c]
    nop
    db $ec
    jp nc, $a4ec

    ret c

    ld d, h
    xor b
    call z, Call_029_7000
    inc b
    ld hl, sp-$04
    ld hl, sp-$08
    nop
    add sp, $10
    ldh a, [$fc]
    nop
    ld b, b
    nop
    nop
    jr z, jr_029_515f

    nop

jr_029_515f:
    ld [bc], a
    ld bc, $0305
    ld [$0207], sp
    dec b
    ld [bc], a
    inc bc
    db $10
    inc bc
    nop
    inc bc
    ld [$0201], sp
    ld bc, $1701
    ld [$0007], sp
    rrca
    nop
    nop
    rrca
    ld bc, HeaderManufacturerCode
    rst $38
    rlca
    cp a
    nop
    db $ed
    rst $38
    dec c
    ld a, a
    rst $30
    rst $38
    xor e
    rst $38
    nop
    ld a, [$cb75]
    rst $38
    nop
    db $db
    cp l
    rst $08
    nop
    cp e
    add $3b
    ccf
    nop
    ldh a, [rP1]
    ld hl, sp-$80
    ld bc, $fe08
    nop
    rst $38
    ret nz

    rst $38
    ld l, h
    cp $00
    ld a, h
    rst $38
    db $fc
    rst $38
    ldh a, [$ee]
    ld [hl], b
    ret c

    nop
    ldh [$f0], a
    nop
    ld h, b
    add b
    ld d, b
    and b
    ldh a, [$e0]
    dec e
    ld [$e05d], sp
    ld e, a
    jr nz, @+$21

    inc b
    rst $38
    inc b
    xor a
    nop
    rst $30
    rst $38
    dec b
    ld a, a
    push af
    rst $38
    xor a
    rst $38
    nop
    rst $28
    ld a, a
    set 7, a
    rlca
    rst $30
    cp b
    rst $10
    nop
    cp e
    adc a
    ld [hl], a
    ld a, a
    ld b, $1f
    nop
    ldh [$c0], a
    ld b, e
    ld [$1063], sp
    db $fc
    nop
    cp $b0
    cp $b0
    nop
    db $fc
    ldh a, [$de]
    ldh [$be], a
    ret nz

    ld a, h
    add b
    ld c, h
    ldh [rNR22], a
    ld [$6090], sp
    add hl, de
    db $10
    sbc a
    jr nc, jr_029_523c

    rlca
    nop
    rra
    dec c
    ccf
    dec c
    ccf
    rrca
    ccf
    ld b, $00
    dec de
    rlca
    rla
    ld [$163f], sp
    dec sp
    rla
    inc b
    db $10
    rrca
    rra
    rrca
    rra
    sbc a
    ld d, b
    xor h
    cp $20
    cp h
    ei
    sbc a
    db $10
    ldh a, [$f6]
    ld [$ecde], sp
    ld bc, $ec9e
    inc c
    ldh a, [$fc]
    ld hl, sp-$04
    ld a, l
    db $10
    add b
    ld bc, $7f08
    nop
    ld l, e
    inc e
    ld a, a
    ld a, [de]
    ccf
    nop
    add hl, bc
    rra
    rlca

jr_029_523c:
    rra
    rrca
    dec de
    rlca
    ccf
    ld b, $10
    ccf
    ld d, $1f
    ld b, $19
    ld [$083f], sp
    ret nz

    and d
    ld l, c
    ld [$01fc], sp
    db $10
    ld h, b
    cp $70
    add c
    ld [$00e0], sp
    ld hl, sp-$80
    cp b
    ld b, b
    ld e, b
    and b
    ld d, b
    and b
    ld bc, $20d0
    ld [$f8f0], sp
    ldh a, [$f8]
    ccf
    jr z, jr_029_528e

    scf
    ld [$083f], sp
    dec c
    ccf
    inc c
    ccf
    jr nz, jr_029_52a5

    ld b, $10
    ccf
    dec de
    rra
    dec bc
    ccf
    jr nc, @+$3f

    jr jr_029_5281

jr_029_5281:
    nop
    cp $30
    cp $b8
    cp $d8
    db $fc
    ldh [rNR10], a
    ld hl, sp-$40
    ld a, b

jr_029_528e:
    ld b, c
    ld [$40b0], sp
    ldh a, [rP1]
    ret nz

    ccf
    jr nz, jr_029_5298

jr_029_5298:
    ld [hl], b
    dec bc
    nop
    inc e
    inc bc
    add hl, bc
    ld b, $00
    dec bc
    dec b
    rra
    ld a, [bc]
    rra

jr_029_52a5:
    dec bc
    dec de
    rlca
    ld b, b
    rra
    rra
    ld a, b
    ldh [rP1], a
    db $10
    ldh [$c8], a
    jr nc, jr_029_52b3

jr_029_52b3:
    ld hl, sp-$40

jr_029_52b5:
    ld hl, sp+$70
    ld hl, sp-$30
    ld hl, sp+$30
    jr nz, jr_029_52b5

    nop
    ld bc, $0000
    rlca
    nop
    rra
    nop
    ccf
    ld bc, $0008
    ld l, a
    ld bc, $044f
    rra
    dec b
    rra
    dec c
    nop
    rrca
    rlca
    rlca
    nop
    rrca
    ld b, $0f
    ld b, $00
    rlca
    nop
    inc bc
    ld bc, $0007
    nop
    nop
    inc b
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$01
    jr @-$22

    cp b
    nop
    db $fc
    ret c

    ld hl, sp-$20
    db $fc
    ret nz

    ldh a, [rP1]
    ld bc, $a050
    sub b
    ld h, b
    ldh a, [rP1]
    ldh [$09], a
    ld [$00a8], sp
    db $10
    ld bc, $0843
    rrca
    ld b, l
    ld [$011f], sp
    scf
    ld [de], a
    ld [bc], a
    cpl
    ld [bc], a
    add hl, sp
    ld [$0303], sp
    dec sp
    db $10
    ld bc, $0d15
    ld b, $0f
    rra
    jr @-$1e

    dec sp
    ld [$01fc], sp
    stop
    add b
    cp $4c
    cp $ec
    rst $38
    ldh a, [$fc]
    nop
    ldh [$f8], a
    nop
    call z, $deb0
    and h
    cp d

jr_029_5335:
    jr nz, jr_029_5393

    cp $37
    jr nz, jr_029_5348

    rra
    ld [bc], a
    ccf
    dec e
    nop
    ccf
    dec d
    ccf
    dec e
    rra
    ld [bc], a
    rra
    rrca

jr_029_5348:
    nop
    cpl
    inc d
    ld l, a
    scf
    ld a, a
    jr nz, jr_029_5382

    rrca

jr_029_5351:
    ld bc, $011e
    dec a
    ld e, $3f
    nop
    ld a, b
    scf
    stop
    ret nz

    db $fc
    nop
    ldh a, [$c0]
    ld hl, sp+$40
    db $fc
    nop
    ret c

    db $fc
    jr c, jr_029_5351

    ldh a, [$f8]
    ret nz

    db $e4
    nop
    sbc b
    db $f4
    jr c, @+$7e

    or b
    jr c, jr_029_5335

    call z, $3008
    ld hl, sp+$00
    ld e, $bb
    jr jr_029_53bd

    ld c, $3f
    nop
    dec de

jr_029_5382:
    ccf
    dec de
    daa

jr_029_5385:
    rra
    ld h, a
    rra
    rst $38
    nop
    ld c, e
    rst JumpTable
    ld l, h
    ld a, a
    rlca
    rla
    ld [$8213], sp

jr_029_5393:
    ccf
    jr jr_029_53b5

    nop
    ld a, h
    nop
    cp $01
    db $10
    ret nz

    nop
    db $fc
    and b
    cp $b4
    adc $f4
    adc $f8
    nop
    db $fc
    cp b
    ld a, [$f264]
    call z, $34fa
    ld h, d
    db $fc
    ccf
    ld [$0855], sp

jr_029_53b5:
    nop
    dec b
    ld [bc], a
    cp e
    ld [$0007], sp
    rrca

jr_029_53bd:
    ld [bc], a
    rla
    ld [$0a15], sp
    ld a, a

jr_029_53c3:
    inc bc
    nop
    rst $38
    ld l, c
    rst $38
    ld l, a
    ld l, a
    inc d
    cpl
    rla
    ld [$001f], sp
    dec bc
    rlca
    ccf
    jr nz, jr_029_5385

    ld b, b
    add sp, $00
    db $10
    add sp, -$70
    ld hl, sp+$00
    cp b
    ld h, b
    call c, $2000
    db $fc
    jr @-$02

    ld hl, sp-$08
    ld [hl], b
    db $f4
    rlca
    ret z

    ld a, [c]
    adc h
    ld a, [$7f34]
    db $10
    ccf
    stop
    ret nz

    nop
    ld l, h
    nop
    ld e, d
    inc h
    ld e, d
    inc h
    dec b
    inc bc
    add d
    ld e, l
    add hl, bc
    rra
    ld a, a
    jr nc, jr_029_5484

    dec h
    rst JumpTable
    ld [$0017], sp
    cpl
    rra
    ld a, a
    inc b
    rst $38
    ld h, a
    rst $30
    ld l, e
    inc b
    ld [hl], e
    inc c
    ld e, $0f
    rra
    ld e, a
    jr jr_029_53c3

    ldh a, [rP1]
    ld hl, sp+$00
    cp $f8
    db $fd
    ld c, $ff
    ld b, d
    ld b, b
    cp $df
    db $10
    ld hl, sp-$04
    ldh a, [$fe]
    call z, $07de
    xor h
    sbc [hl]
    ld l, h
    inc c
    ldh a, [rBCPD]
    add hl, bc
    ld e, a
    ld e, b
    ret


    ld [$6c02], sp
    add $7c
    cp $7c
    add $01
    ld [$217c], sp
    jr c, jr_029_5480

    dec d
    jr z, jr_029_5463

    jr jr_029_5479

    inc [hl]
    ld bc, $0060
    rst $28
    rst $30
    rst $38
    cp l
    ld a, [hl]
    ld b, d
    inc a
    inc a
    add b
    adc l
    ld h, b
    ld [bc], a
    nop
    dec c
    ld [bc], a
    dec d
    ld c, $2d

jr_029_5463:
    nop
    ld a, [de]
    add hl, hl
    ld d, $2a
    inc d
    inc e
    nop
    inc a
    nop
    jr jr_029_54dd

    inc a
    ld a, d
    inc a
    rst JumpTable
    ld a, [hl]
    or l
    ld b, b
    ld a, [hl]
    nop
    rlca

jr_029_5479:
    nop
    rra
    nop
    daa
    nop
    rrca
    ld [bc], a

jr_029_5480:
    nop
    rlca
    ld [bc], a
    rlca

jr_029_5484:
    ld bc, $070f
    rrca
    nop
    nop
    rla
    ld a, [bc]
    dec h
    ld a, [de]
    ld b, d
    dec a
    ld b, c
    ld a, $00
    ld b, b
    ccf
    ld a, h
    inc bc
    di
    ld a, h
    rst $38
    nop
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $10
    cp $b0
    nop
    rst $38
    cp b
    rst $38
    ld a, [$feff]
    db $fd
    cp $00
    cp $7c
    push af
    ld a, d
    db $dd
    ld [c], a
    rst $38
    inc c
    nop
    ld e, $ec
    ld c, $f0
    rst $30
    ld c, $ff
    nop
    add h
    ld sp, $0008
    rrca
    dec b
    rrca
    dec sp
    ld [$0307], sp
    jr nz, jr_029_54db

    inc b
    ld bc, $1b10
    ld b, $25
    dec de
    inc hl
    nop
    inc e
    jr nz, @+$21

    ld a, b
    rlca
    rst $30

jr_029_54db:
    ld a, b
    rst $38

jr_029_54dd:
    jr nz, jr_029_54df

jr_029_54df:
    ldh [rSTAT], a
    db $10
    ld h, b
    db $fc
    ld [hl], b
    cp $f4
    nop
    cp $fc
    cp $fc
    db $fc
    ld a, b
    cp $78
    nop
    db $ed
    ld [hl], d
    sbc l
    xor $fd
    ld c, $1e
    ldh [rSC], a
    ld e, $e0
    rst $20
    ld e, $ff
    nop

jr_029_5500:
    nop
    ld b, b
    jr nc, jr_029_5504

jr_029_5504:
    nop
    ld a, a
    jr nc, jr_029_5500

    ld h, a
    db $fc
    inc de
    sbc h
    nop
    ld [hl], e
    call $e37e
    inc a
    ld a, a
    nop
    ld a, $80
    dec de
    ld c, b
    ld c, $00
    rla
    ld c, $61
    ld e, $f6
    nop
    ld l, b
    db $fc
    ld h, b
    ld [hl], b
    add b
    ldh [rP1], a
    ret nz

    ret nz

    ld bc, $0008
    ld d, b
    rra
    nop
    ld a, a
    rra
    cp a
    ld [hl], b
    nop
    rst $38
    ld h, l
    ld a, a
    dec d
    ccf
    rla
    cpl
    inc e
    ld [$091f], sp
    rrca
    ld [bc], a
    adc a
    ld [$1f04], sp

jr_029_5545:
    nop
    db $10
    inc a
    rrca

jr_029_5549:
    rra
    rra
    jr jr_029_5545

    nop
    cp $f8
    ld [bc], a
    db $fd
    ld c, $ff
    ld b, d
    cp $6c
    add e
    ld [$0028], sp
    rst $38
    add [hl]
    rst $38
    ld e, d
    rst $38
    sbc b
    ei
    ld b, $1a
    rst $10
    ld l, [hl]
    adc $df
    ld [$1000], sp
    add h

jr_029_556c:
    ld a, e
    ld [$0068], sp
    db $10
    adc h
    ld [hl], b
    db $f4
    ld [$000c], sp
    ld hl, $0000
    inc bc
    ld bc, $0307
    inc bc
    ld bc, $a001
    ld e, a
    ld e, b
    ld l, a
    ld e, a
    jr nz, jr_029_558d

    rst $38
    rrca
    rst $10
    add sp, $00

jr_029_558d:
    cp a

jr_029_558e:
    jp $ac7f


    cp a
    set 3, a
    db $e3
    inc b
    rst $38
    nop
    ld a, c
    ld e, $3f
    rra
    jr jr_029_558e

    nop
    ld [$f0ec], sp
    ld a, [$571c]
    ld [$feda], sp
    ld hl, sp+$00
    cp b
    ret nc

    ldh a, [rP1]
    ret nc

    jr nz, jr_029_5549

    ld h, b
    ld bc, $50b8
    ld hl, sp+$00
    cp h
    ld a, b
    db $fc
    sbc l
    ld [hl], b
    nop
    db $10
    rra
    inc bc
    cpl
    inc d
    ld l, a
    inc de
    ld [hl], a
    inc bc
    jr z, @+$81

    cpl
    ccf
    nop
    add hl, sp
    ccf
    jr jr_029_556c

    jr jr_029_55d1

jr_029_55d1:
    ld b, $ff
    ld c, d
    cp $5c
    rst $30
    cp [hl]
    db $eb
    nop
    ld [hl], $dd
    ld a, [hl+]
    rst $38
    add b
    cp $0c
    sbc [hl]
    jr jr_029_5650

    db $fc
    ldh a, [$3f]
    jr nc, jr_029_55e9

jr_029_55e9:
    jr nz, jr_029_55ed

    nop
    dec c

jr_029_55ed:
    nop
    ld [bc], a
    dec d
    ld c, $2d
    ld a, [de]
    add hl, hl
    ld d, $2a
    nop
    inc d
    inc e
    nop
    inc a
    jr jr_029_566b

    inc a
    ld a, d
    inc b
    inc a
    rst JumpTable
    ld a, [hl]
    or l
    ld a, [hl]
    nop
    rrca
    nop
    rra
    rrca
    ccf
    db $10
    ld a, [hl-]
    dec b
    nop
    scf
    ld a, [bc]
    ld a, a
    ld [bc], a
    ld a, a
    dec hl
    ld a, a
    dec de
    nop
    cp a
    ld c, a
    cp a
    ld b, a
    rst $28
    db $10
    ld a, a
    dec l
    ld [$2f77], sp
    ld [hl+], a
    rra
    ld hl, $003f

jr_029_5628:
    ldh [rP1], a
    nop
    sub b
    ldh [$c8], a
    ld [hl], b
    ld h, h
    cp b
    inc [hl]
    nop
    ret c

    db $fc
    nop
    db $fc
    ld e, b
    jp c, $fa74

    nop
    call z, $8cfe
    xor $50
    cp h
    ret c

    inc a
    nop
    ret c

    jr jr_029_5628

    ld [$f8f0], sp
    nop
    rrca
    nop
    nop
    rla

jr_029_5650:
    rrca
    ccf
    jr jr_029_56d0

    inc hl
    ld a, a
    ld bc, $7f00
    dec bc
    rst $38
    dec de
    di
    dec e
    inc hl
    nop
    db $eb
    inc d
    ld a, a
    rlca
    dec l
    inc de
    ld a, a
    inc [hl]
    db $10
    ld [hl], a
    cpl

jr_029_566b:
    inc sp
    add hl, sp
    nop
    ldh a, [rP1]
    adc b
    nop
    ldh a, [$c4]
    ld a, b
    ld h, h
    cp b
    ld a, [c]
    inc e
    ld a, [$ac40]
    ld hl, $e89e
    ld a, [$fd6c]
    or [hl]
    nop
    rst $28
    or d
    ld [hl], a
    adc d
    cp $58
    cp h
    ret c

    ld [$e41a], sp
    cp $00
    ldh [$c3], a
    nop
    rst $20
    ld de, $ff42
    ld h, [hl]
    ld hl, $247e
    inc a
    inc de
    add hl, bc
    add b
    nop
    inc c
    add $00
    xor $44
    cp $6c
    ld a, h
    ld hl, $3828
    dec de
    inc de
    ld l, h
    nop
    xor d
    ld b, h
    dec a
    add e
    ld hl, $087c
    xor a
    ld d, b
    ld [hl], b
    dec de
    rrca
    rst $38
    rst $38
    nop
    ret nc

    ld d, l
    nop
    ld c, $1f
    ld c, $0f
    ld bc, $0201
    ld b, $07
    rst $38
    rst $38
    nop
    nop
    nop

jr_029_56d0:
    ld [hl], b
    nop
    ld a, b
    jr nc, jr_029_570d

    db $10
    sbc l
    ld [$88df], sp
    or [hl]
    ld c, e
    rst $38
    ld bc, $40bf
    rst $38
    rst $38
    nop
    db $f4
    ld d, l
    nop
    ldh [$34], a
    ret nz

    db $fc
    db $fc
    db $fc
    cp b
    add b
    ld b, b
    ld c, $01
    ccf
    nop
    ccf
    db $10
    cpl
    jr jr_029_5715

    rrca
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $ff75
    nop
    ld bc, $0101
    ld a, [hl+]
    sbc b
    rst $38
    ld [hl], a
    adc b
    jr jr_029_5723

    dec [hl]
    or a

jr_029_570d:
    ld [hl-], a
    ld l, h
    ld a, a
    cp b
    nop
    jr jr_029_571a

    ld a, a

jr_029_5715:
    add d
    rst $20
    ld e, e
    cp e
    push bc

jr_029_571a:
    pop de
    ld c, $1f
    ld bc, $030d
    inc bc
    nop
    nop

jr_029_5723:
    nop
    add a
    nop
    rlc [hl]
    db $dd
    ld c, $fe
    inc e
    ld a, [$fc3c]
    ld a, b
    ld l, b
    ldh a, [$30]
    ret nz

    ld d, b
    dec d
    nop
    ret nz

    add b
    ldh a, [$80]
    ret nc

    ld h, b
    and b
    ret nz

    ret nz

    add b
    add b
    dec d
    ld e, l
    nop
    ld c, $01
    rrca
    rrca
    rlca
    ld bc, $0101
    nop
    rra
    nop
    ld [bc], a
    ld bc, $0307
    rrca
    ld b, $1f
    inc c
    inc [hl]
    jr jr_029_5793

    ld d, l
    ld d, h
    nop
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ld h, b
    add b
    nop
    dec d
    nop
    ret nc

    ldh [$f8], a
    ld [hl], b
    db $fc
    adc b
    sbc $6c
    cp e
    add $c7
    add b
    add b
    call nc, RST_00
    rrca
    ccf
    jr nz, jr_029_579d

    ld l, $11
    dec sp
    inc b
    dec bc
    inc b
    inc de
    inc c
    nop
    nop
    rla
    ld [$1827], sp
    dec hl
    inc d
    ld c, e
    inc [hl]
    ld e, c
    ld h, $9d

jr_029_5793:
    ld h, d
    or l
    ld b, d
    rst $20
    nop
    ret nc

    nop
    nop
    ldh a, [$f8]

jr_029_579d:
    db $10
    ld a, b
    ret nc

    ld a, b
    ret nc

    db $ec
    jr jr_029_57e1

    ret z

    cp h
    ld c, b
    add b
    ld b, b
    or [hl]
    ld c, h
    sbc [hl]
    ld h, h
    sbc $24
    rst JumpTable
    jr nz, @+$4d

    rst $28
    db $10
    jr z, jr_029_57c7

    jr c, jr_029_57b9

jr_029_57b9:
    ld b, b
    ld d, a
    nop
    inc bc
    rlca
    ld [bc], a
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    ld bc, $ff01

jr_029_57c7:
    rst $38
    nop
    sub b
    nop
    inc bc
    nop
    rlca
    sbc a
    rlca
    cp a
    dec d
    cp a
    ld de, $8fd6
    ret nc

    adc a
    rst $38
    ld d, b
    adc b
    jr nz, @+$01

    rra
    or a
    ld e, b
    ld h, b

jr_029_57e1:
    ld a, a
    ld bc, $007f
    ld h, [hl]
    adc b
    ld [hl], a
    ld a, a
    nop
    sub b
    nop
    ldh [rP1], a
    ldh a, [$fc]
    ldh a, [$fe]
    ld a, h
    cp $7c
    ld [hl], h
    cp b
    ld l, a
    or h
    or a
    ld c, [hl]
    inc b
    ld de, $d300
    db $ec
    sbc $e0
    ld hl, sp-$48
    ret nz

    or b
    ld b, b
    db $fc
    call c, $f838
    db $fd
    nop
    nop
    inc c
    inc e
    ld [$0c12], sp
    ld [de], a
    inc c
    rrca
    ld [bc], a
    rra
    rst $38
    nop
    inc bc
    ld bc, $0201
    add d
    ccf
    inc bc
    nop
    rlca
    inc bc
    rra
    rlca
    dec d
    ld de, $0f16
    db $10
    rrca
    db $10
    add b
    jr nz, @+$01

    rra
    rst $30
    sbc b
    cp a
    ld h, b
    rst $28
    ld [hl], c
    ld a, a
    nop
    ld h, [hl]
    adc b
    ld [hl], a
    ld a, a
    nop
    rst $38
    rst $38
    nop
    ret nc

    rlca
    nop
    ld b, $7d
    ld [bc], a
    or d
    ld a, h
    ld sp, hl
    ld b, $05
    ld [bc], a
    inc bc
    ld b, b
    nop
    nop
    ld [$0036], sp
    ld e, [hl]
    jr nz, jr_029_58d5

    nop
    nop
    ld a, a
    ld c, $7f
    ccf
    ld a, a
    dec de
    rst JumpTable
    ld l, e
    nop
    sbc a
    ld l, a
    cp a
    ld b, a
    ld hl, sp+$07
    jr nz, @+$21

    ld b, $18
    rlca
    scf
    jr @+$41

    ld e, $10
    nop
    ld [$0038], sp

jr_029_5876:
    nop
    ld a, h
    jr c, jr_029_5876

    ld h, b
    cp $dc
    cp $00
    cp b
    cp [hl]
    db $f4
    cp $fc
    ld a, [hl-]
    db $fc
    inc b
    nop
    ld hl, sp+$48
    or b
    or b
    ld b, b
    and b
    ret nz

    ldh [$80], a
    dec a
    adc b
    cp [hl]
    ld b, a
    rst $38
    ld b, $21
    ld e, $11
    ld [bc], a
    ld c, $0f
    nop
    rlca
    inc bc
    rlca
    dec a
    jr jr_029_5914

jr_029_58a4:
    nop

jr_029_58a5:
    nop
    ld a, b
    jr nc, jr_029_58a5

    ld a, b

jr_029_58aa:
    db $f4
    ld hl, sp-$04
    nop
    ld hl, sp-$28
    ldh [$fc], a
    ld hl, sp-$02
    db $fc
    xor $00
    db $f4
    db $76
    ld hl, sp-$7c
    ld a, b
    ld a, h
    add b
    ldh a, [$60]
    add b
    ccf
    stop
    db $10
    ld [hl], c
    nop
    rst $38
    nop
    pop hl
    nop
    ld e, $d4
    dec hl
    call c, $7c2b
    ccf
    cp $00
    ld c, a

jr_029_58d5:
    cp $7f
    ld a, l
    ld a, $3f
    nop
    db $10
    ld [$1b0f], sp
    dec c
    rra
    rra
    jr z, jr_029_58a4

    nop
    ldh [rP1], a
    nop
    ld [c], a
    nop

jr_029_58ea:
    db $e3
    nop
    rst $20
    ld [bc], a
    rlc b
    ld b, $51
    adc [hl]
    ld [c], a
    inc e
    sbc h
    ld h, b
    ld [$f002], sp
    ld b, h
    cp b
    db $fc
    sbc b
    db $fc
    rra
    jr c, jr_029_58ea

    nop
    nop
    db $ec
    nop
    xor $04
    xor $04
    jp nc, $0c03

    ld d, d
    adc h
    db $e4
    jr jr_029_58aa

    rra
    ld l, b

jr_029_5914:
    nop
    stop
    ld c, $00
    rla
    ld c, $2f
    rra
    ccf
    dec c
    nop
    ld l, a
    dec [hl]
    ld l, a
    rla
    dec sp
    rlca
    db $10
    rrca
    inc c
    inc c
    inc bc
    dec de
    inc c
    ld e, a
    jr nc, jr_029_5930

jr_029_5930:
    db $10
    jr nc, jr_029_5933

jr_029_5933:
    nop
    ld hl, sp+$30
    ld a, b
    ldh [$fc], a
    ret c

    cp h
    ldh a, [rP1]
    db $e4
    ld hl, sp-$38
    ldh a, [$30]
    ret nz

    ld d, b
    and b
    db $10
    ret nc

    ld h, b
    ldh a, [$3d]
    cp b
    ld [$0707], sp
    nop
    ld h, b
    dec b
    rst JumpTable
    jr z, jr_029_5954

jr_029_5954:
    db $10
    ld h, b
    nop
    or b
    ld h, b
    ld [hl], b
    nop
    ldh [$b0], a
    ret nz

    ld hl, sp-$10
    db $fc
    ld hl, sp-$64
    adc b
    ld a, e
    ld [$00f8], sp
    ld h, b
    rst JumpTable
    jr jr_029_59ab

    nop
    rra
    nop
    nop
    rra
    rrca
    rra
    inc bc
    ccf
    add hl, bc
    ld a, a
    nop
    dec hl
    ld [hl], e
    ccf
    ld e, a
    inc l
    ccf
    dec bc
    ld d, a
    nop
    cpl
    rst JumpTable
    ld h, b
    rst $30
    ld c, a
    ld h, a
    rra
    ld a, $00
    ld bc, $3e7d
    ld a, a
    nop
    ld hl, sp+$00
    db $fc
    nop
    nop
    db $fc
    ldh [$fc], a
    sub b
    cp $30
    rst $38
    nop
    or [hl]
    sbc a
    cp $fd
    or $ee
    ld [hl], b
    jp c, $e400

    ld sp, hl
    ld b, $dd
    xor $de

jr_029_59ab:
    db $ec
    inc c
    ld [hl+], a
    ldh a, [$fe]
    dec de
    ld [$001f], sp
    rrca
    ccf
    ld [$003f], sp
    rlca
    ld a, a
    ld [de], a
    rst $38
    ld d, a

jr_029_59be:
    rst $20
    ld e, a
    ld a, a
    nop
    add hl, de
    ld a, a
    ld d, $ff
    ld l, a
    rst $38
    ld b, b
    ldh [rSB], a
    rra
    ld h, b
    rra
    ld e, a
    jr nz, jr_029_59be

    ld [hl], d
    ld hl, $0810
    cp $00
    cp $e0
    dec a
    ld [$ff70], sp
    db $76
    ld b, b
    ccf
    ccf
    ld [$c0fe], sp
    ld a, [$f2b4]
    ld l, h
    nop
    db $e4
    jr jr_029_59fa

    ldh a, [$f2]
    inc c
    cp a
    ld a, [hl]
    jr jr_029_5a72

Call_029_59f3:
    nop
    inc h
    nop
    add sp, $00
    ld c, $00

jr_029_59fa:
    dec e
    ld c, $20
    rra
    jr nz, jr_029_5a1f

    nop
    dec h
    ld a, [de]
    rra
    dec b
    rra
    rrca
    rra
    ld [bc], a
    nop
    ld a, a
    dec e
    cp a
    ld d, l
    cp a
    ld e, l
    sbc a
    ld h, d
    nop
    cp a
    ld c, b
    or a
    ld c, a
    xor a
    ld d, b
    rst $28
    inc e

jr_029_5a1b:
    nop
    ld hl, sp+$00
    ld h, h

jr_029_5a1f:
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    nop
    add d
    ld a, h
    call nz, $e8b8
    ret nc

    db $fc
    jr nz, jr_029_5a2e

jr_029_5a2e:
    cp $c8
    db $fd
    ld e, d
    push af
    jp c, $26f9

    nop
    db $dd
    ld [c], a
    cp l
    jp nz, $1ae5

    rst $30
    jr c, jr_029_5a40

jr_029_5a40:
    rlca
    nop
    inc c
    rlca
    ld de, $100e
    rrca
    nop
    ld d, $09
    rra
    ld b, $1f
    rrca
    ccf
    inc bc
    nop
    ld a, a
    inc l
    rst $38
    dec l
    cp a
    ld c, l
    cp a
    ld d, e
    jr nz, jr_029_5a1b

    ld b, a
    ccf
    jr nz, @+$7e

    nop
    and d
    ld a, h
    ld b, c

jr_029_5a64:
    jr nz, jr_029_5a64

    ld bc, $1801
    add d

jr_029_5a6a:
    ld a, h
    or h
    ld c, b
    cp $00
    jr nc, jr_029_5a6a

    or [hl]

jr_029_5a72:
    jp hl


    or $f9
    add $bd
    db $10
    jp nz, $827d

    ccf
    db $10
    rst $38
    inc c
    db $fc
    ld [hl], b
    nop
    add $7c
    ei
    ld a, [hl]
    rst $00
    ld a, [hl]
    ei
    ld a, [hl]
    nop
    rst $38
    ld c, $ff
    ld [hl], d
    rst $38
    ld a, h
    cp $01

jr_029_5a93:
    ld [$7a85], sp
    ld a, a
    nop
    nop
    jr nc, jr_029_5aa2

    nop
    rrca
    nop
    rlca
    rra
    ld [bc], a
    ccf

jr_029_5aa2:
    dec e
    ld a, a
    ld de, $00fd
    ld c, [hl]
    pop af
    ld l, [hl]
    rst $38
    ld sp, $7fff
    ld [hl], a
    nop
    jr jr_029_5b11

    jr nz, jr_029_5b13

    jr c, jr_029_5b32

    jr jr_029_5a93

    nop
    inc h
    cp l
    ld a, [hl]
    rst $38
    db $76
    ret nz

    nop
    ldh [rP1], a
    ret nz

    ld hl, sp+$20
    db $fc
    ret c

    cp $48
    ei
    nop
    ld d, h
    db $fd
    ld a, [hl-]
    db $fd
    ld a, [c]
    db $fd
    ld a, [$00ed]
    or d
    rst $38
    nop
    call c, $d8e0
    ld h, b
    cp $04
    nop
    add d
    ld a, h
    cp $04
    rra
    add b
    db $fd
    jp nc, $ff00

    nop
    db $ec
    ld [hl], b
    ld l, h

jr_029_5aec:
    jr nc, jr_029_5aec

    nop
    nop
    ld b, d

jr_029_5af1:
    cp h
    cp $04
    inc bc
    nop
    rlca
    inc bc
    nop
    rra
    ld bc, $163f
    ccf
    ld [bc], a
    ld [hl], a
    ld a, [hl-]
    nop
    ld b, a
    add hl, sp
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $28
    inc sp
    db $10
    ld a, a
    nop
    ld e, l
    ld e, a
    jr c, jr_029_5af1

jr_029_5b11:
    nop
    sub b

jr_029_5b13:
    ldh [rP1], a
    ld hl, sp-$40
    ld hl, sp-$10
    sbc $30
    di
    call z, $f900
    and $fd
    jp nz, $e2fd

    cp l
    ld b, d
    add b
    ld e, a
    ld d, b
    rst $38
    ld c, [hl]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    jr nc, jr_029_5b32

jr_029_5b32:
    ld a, [hl]
    or c
    jr c, jr_029_5b36

jr_029_5b36:
    ld h, b
    cp $fc
    cp $00
    ldh [rSB], a
    stop
    or b
    ld b, b
    nop
    nop
    jr jr_029_5b46

    nop

jr_029_5b46:
    rra
    nop
    ld a, a
    nop
    ld b, b
    rst $38
    ld bc, $f008
    rrca
    ld a, a
    dec b
    ccf
    dec c
    nop
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    scf
    ld [hl], b
    rrca
    jr nz, @-$3f

    ld [hl], b
    dec e
    db $10
    ld hl, sp+$00
    adc h
    ld [hl], b
    ld a, [hl]
    ld [$fe80], sp
    nop
    ldh a, [$09]
    ld [$00fc], sp
    ld a, h
    nop
    add b
    call c, $c8a0
    or b
    ld b, h
    cp b
    ld b, h
    nop

jr_029_5b7b:
    cp b
    call nz, $e838
    db $10
    cp a
    ld h, b
    ld a, a
    nop
    jr jr_029_5be5

    jr nc, jr_029_5b7b

    inc c
    rst $30
    ld c, [hl]
    db $eb
    nop
    rla
    dec a
    inc de
    cpl
    jr @+$59

    cpl
    ld c, a
    nop
    jr nc, jr_029_5bdb

    ccf
    ld h, b
    rra
    ld l, h
    inc de
    ld a, $00
    ld bc, $100f
    nop
    nop
    cp $00
    rst $38
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    or $ef

jr_029_5bae:
    jr jr_029_5bae

    nop
    ld [$08fc], sp
    db $f4
    jr @-$14

    db $f4
    ld a, [c]
    nop
    inc c
    jp nz, $06fc

    ld hl, sp+$36
    ret z

    ld a, h
    ld d, $80
    ldh a, [$08]
    ld a, e
    jr nz, jr_029_5bcc

    ld bc, $8118

jr_029_5bcc:
    jr nz, @-$07

    nop
    dec bc
    rst $28
    dec d
    ld l, a
    dec d
    ld c, a
    scf
    ld c, e
    ld [bc], a
    scf
    ld c, a
    inc sp

jr_029_5bdb:
    ld c, l
    inc sp
    ccf
    rra
    ld [$00e0], sp
    nop
    ld [hl], b
    add b

jr_029_5be5:
    ld [hl], b
    add b
    ld h, b
    add b
    ld hl, sp-$80
    ld c, e
    stop
    xor a
    ret nc

    rst $30
    xor b
    ld a, [c]
    xor h
    nop
    di
    db $ec
    sub c
    xor $e1
    sbc [hl]
    ld h, c
    sbc [hl]
    nop
    ld a, [c]
    inc c
    ccf
    rlca
    ccf
    ld c, $7f
    dec c
    nop
    rst $38
    ld b, b
    push af
    ld e, e
    db $fd
    inc de
    ld a, $11
    add b
    ld a, a
    add b
    db $fc
    nop
    db $fc
    ret nz

    cp [hl]
    ret nz

    rst JumpTable
    rlca
    ld [hl-], a
    ld l, a
    sbc d
    ld a, a
    adc b
    ld a, a
    and b
    nop
    ld [hl], b
    adc a
    ld [$0102], sp
    rrca
    ld bc, $0f3f
    ld a, a
    inc bc
    add hl, bc
    rst $38
    ld [bc], a
    ld a, a
    ld a, [hl]
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    ret nc

    ld a, a
    adc h
    ld bc, $3f28
    ld a, a
    ccf
    dec [hl]
    add hl, de
    ld bc, $3f18
    rra
    ld b, $1f
    rrca
    rrca
    inc bc
    inc bc
    ld c, l
    ld [$4829], sp
    cp l
    nop
    rst $38
    inc a
    inc a
    jr jr_029_5c92

    jr jr_029_5c76

    inc c
    ld b, b
    rrca
    ld l, l
    ld c, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    nop
    inc a
    ccf
    ccf
    inc a
    ld a, e
    ld a, l
    ld a, a
    ld a, c
    nop
    ld [hl], a
    ld a, e
    ld a, h
    ld [hl], e
    ccf
    ld [hl], b
    ccf
    ld [hl], e
    nop

jr_029_5c76:
    rra
    ccf
    rrca
    ccf
    inc bc
    rra
    nop
    rrca
    sub c
    ld e, $08
    inc bc
    rlca
    nop
    jr jr_029_5cc5

    ccf
    ld a, a
    nop
    jr z, jr_029_5c8b

jr_029_5c8b:
    ccf
    ld a, a
    rlca
    ld a, a
    rlca
    ccf
    rlca

jr_029_5c92:
    rlca
    nop
    inc bc
    rlca
    nop
    rlca
    nop
    inc bc
    ret nz

    ret nz

    ld b, b

jr_029_5c9d:
    ldh [rP1], a
    jr jr_029_5c9d

    db $fc
    and $fe
    ld a, [$00e6]
    cp $e2
    cp $e6
    db $fc
    cp $e0
    cp $02
    ldh [$fc], a
    ldh [$e0], a
    ret nz

    ldh [$3a], a
    add hl, bc
    ret nz

    ld b, b
    nop
    nop
    ld l, b
    ld a, $00
    ld b, c
    ld a, $80
    ld a, a
    nop
    rst $20

jr_029_5cc5:
    ld a, b
    cp $71
    rst $30
    ld a, b
    cp a
    ld a, a
    jr nz, jr_029_5d2d

    ld a, $1f
    ld [hl], b
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld b, b
    db $fc
    ld [hl], b
    cp [hl]
    ld a, h
    add a
    ld a, [hl]
    cp e
    nop
    ld b, [hl]
    rst $20
    nop
    ld a, $01
    inc hl

jr_029_5ce6:
    rra
    cpl
    nop
    ld d, $2b
    ld d, $3f
    rrca
    ld a, $1d
    ld a, a
    nop
    nop
    ld b, d
    dec a
    rst $38
    ld b, b
    pop hl
    ld e, [hl]
    ld h, c
    nop
    ld e, $21
    ld e, $3f
    nop
    rrca
    nop
    dec bc
    nop
    rlca
    rra
    nop
    rst $30
    ld [c], a

jr_029_5d09:
    rst $38
    ldh a, [$f9]
    nop
    and $fd
    jp c, $fafd

    push af
    ld a, [$00f9]
    ld h, $79
    add [hl]
    rst $28
    db $10
    ret z

    jr nc, jr_029_5ce6

    nop
    ldh a, [$d0]
    ldh [$f0], a
    nop
    ldh a, [rP1]
    ret nc

    jr nz, jr_029_5d09

    ld hl, sp+$5b
    ld l, b
    rrca

jr_029_5d2d:
    nop
    db $10
    rrca
    jr nz, jr_029_5d32

jr_029_5d32:
    rra
    add hl, sp
    ld e, $3f
    inc e
    ld a, $1d
    ccf
    dec b
    inc e
    ccf
    ld e, $2f
    rra
    rra
    ld h, b
    add b
    ld a, l
    ld [$7000], sp
    add b
    db $fc
    jr nc, jr_029_5dc5

    cp h
    sbc $3c
    nop
    ld b, a
    cp [hl]
    db $db
    ld h, $ef
    add d
    rla
    rrca
    jr nz, jr_029_5d78

    nop
    add c
    ld h, b
    ccf
    nop
    ld h, c
    ld e, $e1
    ld [bc], a
    ld e, [hl]
    pop hl
    ld e, [hl]
    ld a, a
    nop
    dec a
    add l
    ld [$10e7], sp
    nop
    or a
    ld h, d
    add c
    sub b
    ret c

    ldh [$fc], a
    ld [$f410], sp
    ld a, b

jr_029_5d78:
    db $fc
    rst $28
    ld [$3c43], sp
    add c
    ld a, [hl]
    nop
    rst $20
    ld a, b
    db $fd
    ld [hl], d
    ei
    ld [hl], h
    db $fd
    ld [hl], d
    nop
    rst $38
    ld a, b
    cp a
    ld a, [hl]
    ld e, a
    inc a
    ld a, $00
    inc bc
    rra
    nop
    ccf
    nop
    ccf
    ld e, $01
    ld [$3075], sp
    nop
    add b
    ldh a, [$c0]
    add sp, -$10
    ld a, h
    ld hl, sp+$1c
    nop
    ld hl, sp+$7c
    adc b
    sbc h
    ld [$1038], sp
    or $02
    nop
    db $f4
    nop
    inc a
    ret nz

    db $10
    push bc
    ld [$0003], sp
    nop
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    db $10
    dec bc
    rra
    dec bc

jr_029_5dc5:
    dec b
    ld [$3e0d], sp
    ld bc, $006b
    rla
    ld c, l
    inc sp
    ld e, a
    jr z, jr_029_5e11

    inc c
    rrca
    jr nz, jr_029_5dd6

jr_029_5dd6:
    inc e
    sbc e
    ld [$00f0], sp
    ld hl, sp-$20
    db $fc
    nop
    ldh a, [$fe]
    db $ec
    cp $7c
    ld a, [$fc7c]
    nop
    ldh a, [$f8]
    ldh [$f4], a
    add sp, -$1c
    ret c

    db $e4
    nop
    sbc b
    db $f4
    ld l, b
    ld hl, sp+$60
    ld hl, sp+$00
    sbc h
    ret nz

    ld a, a
    ld [$703f], sp
    ld e, $01
    dec hl
    rla
    dec h
    dec de
    ld [$142f], sp
    rra
    inc b
    ccf
    jr nz, jr_029_5e13

    nop
    rrca
    add b
    rra
    db $10

jr_029_5e11:
    inc bc
    ccf

jr_029_5e13:
    rlca
    rst $38
    cpl
    rst $38
    ld h, c

jr_029_5e18:
    nop
    or $6f
    ld [hl], a
    dec c
    ld c, a
    dec [hl]
    cpl
    inc de
    ld h, b
    rra
    add hl, hl
    add hl, bc
    ld e, a
    jr c, jr_029_5e18

    db $fc
    ld hl, sp-$04
    ld [hl], b
    nop
    cp $6c
    cp $fc
    ld a, [$ecfc]
    ldh a, [$03]
    db $f4
    add sp, -$5c
    ret c

    db $e4
    jr jr_029_5e9c

    ld b, b
    ld b, b
    nop
    nop
    ld l, b
    inc c
    nop
    inc d
    ld [$183c], sp
    nop
    ld b, h
    jr c, jr_029_5ec4

    jr nz, @-$06

    ld [hl], b
    adc b
    ld [hl], b
    nop
    or b
    ld b, b
    inc bc
    nop
    rlca
    inc bc
    rrca
    dec b
    nop
    rrca
    ld b, $0d
    ld b, $0b
    inc b
    rlca
    inc bc
    ld [bc], a
    ld b, $01
    rrca
    inc bc
    rrca
    rlca
    ld bc, $0008
    nop
    rlca
    ld bc, $0307
    rlca
    ld bc, $0003
    nop
    ldh [rP1], a
    ld hl, sp+$60
    db $f4
    ld e, b
    ld a, [$00bc]
    ld a, d
    cp h
    jp nc, $e63c

    ret c

    db $fc
    and b
    nop
    cp $ac
    cp $fc
    ld a, [$fc7c]
    ld d, b
    ld bc, $30f8
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ld e, c
    ld c, b
    nop

jr_029_5e9c:
    ldh [rP1], a
    ldh [$60], a
    ldh [rNR41], a
    ld h, b
    db $10
    rla
    jr nz, jr_029_5eb7

    jr @+$67

    ld [$3b0e], sp
    ld [$0841], sp
    ld a, [hl]
    ld [hl], b
    nop
    nop

jr_029_5eb3:
    inc e
    nop
    ld [hl-], a
    inc c

jr_029_5eb7:
    ccf
    ld b, h
    ccf
    nop
    add $1e
    ldh [$fe], a
    nop
    ld l, a
    sbc [hl]
    rst $38
    add b

jr_029_5ec4:
    rra
    ld a, b
    ld bc, $0300
    ld bc, $0207
    rlca
    inc bc
    ld [bc], a
    dec bc
    rlca
    ld [$0707], sp
    dec bc
    ld [$701f], sp
    nop
    ld hl, sp+$00
    db $e4
    ld hl, sp-$1e
    cp h
    pop hl
    cp [hl]
    nop
    ld l, c
    or $19
    and $e2

jr_029_5ee7:
    inc e
    add h
    ld hl, sp-$40
    dec d
    jr nz, jr_029_5eb3

    jr z, jr_029_5ef5

    ld d, $0f
    db $10
    rrca
    rra

jr_029_5ef5:
    jr nc, jr_029_5ef7

jr_029_5ef7:
    rrca
    add hl, sp
    ld [$6000], sp
    ldh a, [rP1]
    ret z

    ldh a, [rP1]
    call nz, $c278
    ld a, h
    jp nc, $32ec

    call z, $c400
    jr c, jr_029_5f11

    ld hl, sp-$3e
    inc a
    pop hl

jr_029_5f11:
    ld a, [hl]
    inc bc
    ld [hl], c
    ld a, $39
    ld e, $39
    ld e, $71
    ld h, b
    rst $30
    ld [$033c], sp
    inc bc
    ld de, $0118
    db $10
    ld a, h
    jr nz, jr_029_5f98

    ld h, b
    add d
    db $fc
    nop
    call nz, $c838
    ldh a, [$90]
    ldh [$90], a
    ldh [$03], a
    adc b
    ldh a, [$c4]
    ld hl, sp-$1c
    ld a, b
    dec hl
    ld [$0833], sp
    and b
    add hl, sp
    ld [$ad04], sp
    ld [$0000], sp
    rrca
    inc bc
    jr c, jr_029_5f52

    rlca
    ld d, e
    inc bc
    db $10
    ccf
    ld b, b
    ld hl, sp+$00

jr_029_5f52:
    db $fc
    nop
    ret c

    ld [hl], d
    db $fc
    ld bc, $f1fe
    ld l, $f9
    inc b
    ld b, $fd
    ld [bc], a
    ld a, [$b304]
    db $10
    ret z

    jr nc, jr_029_5ee7

    ccf
    ld b, b
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, @+$3a

    nop
    daa
    ld [hl], a
    ld c, a
    rst $38
    rst $08
    rst JumpTable
    rst $28
    rst $38
    nop
    and a
    rst $28
    or b
    cp e
    call c, $c7bf
    xor a
    nop
    ret nc

    ld b, a
    ld a, b
    ld b, a
    ld a, b
    inc sp
    inc a
    rrca
    nop
    rrca
    inc a
    nop
    ld a, a
    jr jr_029_6011

    dec sp
    cp a
    nop
    ld h, a
    cp a
    ld e, d

jr_029_5f98:
    cp a
    ld d, b
    cp c
    ld d, [hl]
    or h
    nop
    ld c, a
    ld a, a

jr_029_5fa0:
    db $10
    ld e, a
    dec l
    cpl
    rla
    ld l, a
    nop
    jr jr_029_5fa0

    ld l, a
    cp b
    ld [hl], a
    ld e, h
    inc sp
    ccf

jr_029_5faf:
    add b
    xor e
    ld [$00f6], sp
    add sp, -$10
    db $f4
    jr c, jr_029_5faf

    nop
    ret c

    rst $38
    ld b, [hl]
    rst $38
    sbc $fd
    ld a, $fe
    nop
    ret nz

    ld a, d
    or h
    ld a, [c]
    ld a, h
    db $e4
    ld a, b
    ld a, b
    ld bc, $3c80
    ret nz

    ld e, [hl]
    cp h
    cp $00
    ld b, b
    nop
    nop
    adc b
    jr jr_029_5fd9

jr_029_5fd9:
    inc a
    jr jr_029_6000

    jr jr_029_601e

    inc e
    ld a, [de]
    sub b
    nop
    ld a, $00
    ld a, e
    inc e
    ld a, l
    nop
    ld a, $7d
    ld a, $7b
    inc e
    ld l, $10
    ld [hl], b
    add b
    rrca
    ld [$0007], sp
    ld l, a
    ld [bc], a
    rst $38
    ld l, a
    rst $38
    nop
    ld h, a
    rst $38
    ld b, d
    ld e, a
    cpl

jr_029_6000:
    ld d, a
    ld l, $3f
    nop
    nop
    cpl
    db $10
    rra
    dec b
    rrca
    dec b
    ld c, $00
    inc bc
    rrca
    nop
    rra

jr_029_6011:
    nop
    add hl, sp
    ld e, $3f
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00

jr_029_601b:
    ld hl, sp-$40
    db $fc

jr_029_601e:
    nop
    ld h, b
    ld a, [hl]
    db $ec
    cp $cc
    xor $74
    xor $00
    ld [hl], b
    ld a, [c]
    call z, $d8a4
    ld a, b
    add b
    ld hl, sp+$02
    jr nc, jr_029_601b

    ld [hl], b
    sub b
    ld h, b
    ldh [$3f], a
    jr jr_029_6049

    nop
    ld [bc], a
    rra
    rrca
    ccf
    rlca
    ld a, a
    ld [hl+], a
    ld a, a
    sub b
    ccf
    jr jr_029_6066

    nop
    dec bc

jr_029_6049:
    ld [$7b23], sp
    inc h
    jr c, jr_029_604f

jr_029_604f:
    rlca
    rra
    nop
    dec a
    ld e, $1f
    nop
    ldh [$80], a
    ld b, c
    db $10
    ret nz

    ld hl, sp+$60
    db $fc
    add sp, -$04
    ret z

    nop
    db $f4
    ld a, b
    ld hl, sp+$60

jr_029_6066:
    ret c

    ldh [$b4], a
    ret z

    ld [bc], a
    ld h, h
    sbc b
    db $f4
    ld l, b
    ld hl, sp+$60
    ld e, c
    db $10
    ldh [rP1], a
    nop
    rrca
    nop

jr_029_6078:
    dec e
    ld [bc], a
    ld e, $01
    ccf
    nop
    nop
    ld a, a
    jr nz, jr_029_6101

    jr nz, jr_029_60e3

    jr nc, @+$41

    nop
    ld [$2c77], sp
    ld l, e
    scf
    inc l
    inc de
    rra
    ld bc, $1300
    inc c
    inc e
    inc bc
    ccf
    inc e
    ccf
    db $10
    jr nz, jr_029_610b

    add b
    add hl, hl
    db $10

jr_029_609e:
    db $fc
    ld [$08fc], sp
    db $f4
    nop
    jr jr_029_609e

    jr nz, jr_029_6078

    ld h, b
    xor b
    ret nc

    ld l, h
    ld bc, $fc98
    ld [$20d8], sp
    jr nc, @-$3e

    ccf
    jr nz, jr_029_60b7

jr_029_60b7:
    rra
    inc b
    ccf
    rra
    ccf
    ld c, $3f
    dec b
    db $10
    ccf
    rra
    cpl
    cpl
    ld [$011f], sp
    rra
    rrca
    nop
    rrca
    rlca
    rrca
    nop
    add hl, de
    ld b, $1f
    nop
    ld h, h
    dec bc

jr_029_60d4:
    add e
    ld [$107f], sp
    ldh a, [$80]
    pop bc
    ld [$fcd8], sp
    nop
    sbc b
    db $f4
    ld hl, sp-$08

jr_029_60e3:
    ldh [$f0], a
    ret nz

    add sp, $00
    sub b
    ret z

    jr nc, jr_029_60d4

    ret nc

    ldh a, [$c0]
    ldh a, [$0c]
    nop
    ret nc

    ldh [$f8], a
    pop bc
    ld [$8841], sp
    ld c, $0f
    ld d, $05
    rrca
    ld bc, $10bf

jr_029_6101:
    ccf
    rra
    ld [$8841], sp
    db $10
    ld [$b0c8], sp
    ret c

jr_029_610b:
    and b
    adc a
    ld [$fc78], sp
    nop
    ld b, b
    inc bc
    ld bc, $0111
    rrca
    rlca
    rra
    dec bc
    rra
    ld b, b
    ld a, [bc]
    dec b
    ld [$160f], sp
    rrca
    cpl
    db $10
    daa
    nop
    dec de
    cpl
    inc d
    rra
    ld b, $0f
    nop
    inc e
    jr nz, jr_029_613f

    rra
    ccf
    add hl, de
    db $fc
    nop

jr_029_6135:
    cp $ec
    cp $00
    ld l, h
    ld a, [$fcdc]
    ldh a, [$f8]

jr_029_613f:
    jr nz, jr_029_6135

jr_029_6141:
    ld [$e428], sp
    ld e, b
    db $e4
    rst $38
    jr jr_029_6141

    nop
    sbc h
    ret nz

    ccf
    ld [$203d], sp
    dec bc
    rlca
    ccf
    ld [bc], a
    rst $38
    cpl
    nop
    push af
    ld l, [hl]
    rst $38
    ld h, b
    ld a, a

jr_029_615c:
    nop
    ld c, a
    scf
    ld e, [hl]
    cpl
    rst $38
    ld [$810c], sp
    add hl, bc
    ccf
    jr nc, jr_029_61e8

    ld de, $0841
    call z, $fa00
    ld a, h
    db $fc
    ld h, b
    db $f4
    ret z

    db $e4
    sbc b
    jr nc, jr_029_615c

    jr @+$41

    ld b, b
    nop
    ld sp, $0f00

jr_029_617f:
    nop
    ld a, a
    rlca
    ccf
    rrca
    nop
    ld a, a
    dec l
    ld a, a
    jr z, jr_029_61e5

    scf
    jr c, jr_029_61a4

    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    daa
    ld [hl], a
    jr z, jr_029_6197

jr_029_6197:
    inc sp
    rrca
    ld e, $01
    dec a
    ld e, $1f
    nop
    nop
    db $fc
    nop
    adc d
    ld [hl], h

jr_029_61a4:
    push hl
    sbc d
    push af
    ld_long $ff00, a
    or h
    cp $b4
    ld a, d
    db $e4

jr_029_61af:
    ld a, h
    and b
    nop
    db $fc
    jr jr_029_61af

    inc d
    ld a, [c]
    call z, $34fa
    nop
    db $fc
    or b
    jr c, jr_029_617f

    db $fc
    nop
    ldh a, [rP1]
    nop
    inc sp
    nop
    ld c, $01
    ld a, a
    ld c, $3f
    rra
    nop
    ccf
    dec d
    ccf
    dec b
    ld e, e
    ccf
    ld b, e
    dec a
    add b
    ccf
    db $10
    rla
    rrca
    rrca
    nop
    ld de, $1f0e
    nop
    nop
    dec bc
    rlca
    rra
    nop

jr_029_61e5:
    ld hl, sp+$00
    ld h, h

jr_029_61e8:
    nop
    sbc b
    sub d
    ld l, h
    jp z, $e634

    sbc b
    db $f4
    nop
    xor b
    db $fc

jr_029_61f4:
    jr nc, jr_029_61f4

    inc [hl]
    rst JumpTable
    and $af
    nop
    jp nc, $1ae7

    push hl
    jp c, $d8e6

    ld hl, sp+$02
    nop
    ret nc

    ldh [$f8], a
    nop
    nop
    ld b, c
    and b
    dec c
    ld bc, $010f
    rra
    nop
    dec a
    ld e, $3f
    rra
    ld [$4180], sp
    add b
    rst $20
    ld a, [de]
    rst $00
    cp d
    call $ffb2
    dec c
    inc b
    cp $7c
    cp $3d
    ld [$08bf], sp
    rrca
    dec a
    ld [$1f00], sp
    ccf
    inc b
    ld e, e
    ccf
    ld b, a
    jr c, jr_029_627f

    nop
    scf
    inc sp
    rrca
    ld sp, $671f
    ccf
    ld h, e
    ld [bc], a
    ccf
    ld [hl], b
    ccf
    ld e, a
    ccf
    ccf
    cp a
    ld [$0092], sp
    ld l, h
    ret


    ld [hl], $e5
    jp c, $c4fb

    cp $00
    ret c

    db $fc
    sbc b
    db $f4
    ld [$e098], sp
    ld [$f000], sp
    call z, $e6f8
    db $fc
    add $fc
    ld c, $0c
    db $fc
    ld a, [$fcfc]
    ld a, a
    jr jr_029_62ad

    ld d, b
    ld e, a
    jr nz, jr_029_6270

jr_029_6270:
    ld [hl], e
    rrca
    ld h, a
    ccf
    pop bc
    ld a, a
    rst $08
    ld a, a
    ld b, $e0
    ld a, a
    cp a
    ld a, a
    ld a, a
    rra

jr_029_627f:
    ld [$7041], sp
    call z, $f000
    ld b, $fc
    jp $f3fe


    cp $07
    inc c
    cp $fd
    cp $fe
    rra
    ld [$4000], sp
    inc bc
    nop
    nop
    rst $00
    inc bc
    rst $20
    ld b, e
    ld [hl], e
    ld hl, $0031
    ld c, b
    ld de, $280f
    inc b
    inc bc
    jr nz, @+$5a

    nop
    add b
    nop
    nop
    adc h

jr_029_62ad:
    nop
    sbc [hl]
    inc c
    sbc [hl]
    inc c
    inc a
    jr jr_029_62f5

    jr c, jr_029_62c4

    ld [$00e0], sp
    db $10
    ldh [$0b], a
    inc b
    nop
    rrca
    nop
    rra
    ld b, $3f

jr_029_62c4:
    dec c

jr_029_62c5:
    ld a, a
    dec c
    nop
    rst $38
    ld l, h
    db $fd
    ld l, e
    cp h
    ld b, e
    sbc a
    ld h, b
    nop
    ld e, a
    jr nz, jr_029_6302

    dec d
    rra
    ld [bc], a
    rst $38
    ld bc, $ed00
    ld [hl], d
    db $f4
    dec sp
    ld a, a
    nop
    add sp, $10
    nop
    jr jr_029_62c5

    add sp, $10
    db $fc
    ld h, b
    cp $b4
    nop
    cp $34
    cp [hl]
    ret nc

    ccf
    add $ff
    ld b, $00

jr_029_62f5:
    db $fd
    ld [bc], a
    ld a, [hl-]
    call nc, $20fe
    cp $cc
    inc e
    ld a, [$341c]
    ld b, e

jr_029_6302:
    add hl, bc
    nop
    db $10
    ld b, c
    ld [$3f02], sp
    add b
    pop bc
    db $10
    ld d, $ff
    ld d, $e6
    rra
    rst JumpTable
    rrca
    nop
    cpl
    db $10
    inc a
    rla
    inc sp
    rrca
    db $10
    rrca
    jr nc, @+$3e

    rra
    ccf
    ld de, $1067
    ldh a, [rP1]
    ld hl, sp-$80
    nop
    ld hl, sp-$40

jr_029_632a:
    db $fc
    ret nc

    ei
    db $f4

jr_029_632e:
    ld a, a
    ldh [rSB], a
    di
    ret nz

    ret nc

    jr nz, jr_029_632e

    or b
    ld a, b
    cp a
    add hl, bc
    ld [$e010], sp
    ldh a, [rP1]
    nop
    ld bc, $0300
    ld bc, $0304
    ld [$0007], sp
    db $10
    rrca
    inc d
    dec bc
    inc h
    dec de
    dec l
    ld e, $00
    ld l, b
    rla
    ld d, a
    jr z, @+$7a

    daa
    scf
    ld [$1000], sp
    rrca
    ld e, $01
    dec a
    ld e, $1f
    nop
    nop
    add b
    nop
    ret nz

    add b
    jr nz, jr_029_632a

    db $10
    ldh [rP1], a
    ld [$28f0], sp
    ret nc

    inc h
    ret c

    inc [hl]
    ld hl, sp+$00
    inc d
    add sp, -$16
    inc d
    ld a, [de]
    db $e4
    ld a, [c]
    inc c
    nop
    db $f4
    ld a, b
    ld a, b
    or b
    db $fc
    nop
    ldh a, [rP1]
    add b
    ccf
    jr nc, jr_029_639c

    ld c, $13
    dec c
    jr nc, jr_029_639f

    ld [hl], h
    nop

jr_029_6392:
    dec hl
    ld c, [hl]
    dec [hl]
    ld b, b
    ccf
    inc h
    dec de
    ld e, $40
    dec b

jr_029_639c:
    ccf
    add b
    adc b

jr_029_639f:
    ld [hl], b
    inc b
    ld hl, sp+$54
    xor b
    nop
    ld [$0a54], a
    db $f4
    ld c, [hl]
    or h
    xor $54
    ld [$f00c], sp
    jr jr_029_6392

    ccf
    ld d, b
    db $10
    rrca
    ld de, $0e00
    ld sp, $390e
    rla
    jr nz, jr_029_63de

    rra
    ld [bc], a
    nop
    ld sp, $2f0e
    ld de, $3b21
    ld [$400b], sp
    rlca
    ccf
    ld d, b
    ld [$04f0], sp
    ld hl, sp-$7c
    ld hl, sp+$00
    or h
    ld c, b
    ld a, [hl+]
    call nc, $34ca
    jp z, $00f4

jr_029_63de:
    call nc, $f8e8
    nop
    ret nc

    ldh [$f8], a
    nop
    ld b, b
    nop
    ld b, c
    sbc b
    scf
    dec bc
    cpl
    ld de, $001f
    jr jr_029_642f

    ld e, $3f
    rra
    ld [$8041], sp
    ld [$8a14], a
    nop
    db $f4
    sbc [hl]
    ldh [$fe], a

Call_029_6400:
    ld [$78bc], sp
    db $fc
    ret z

    rra
    ld [$5041], sp
    db $10
    rrca
    ld b, c
    jr nz, @+$7e

    inc bc
    or a
    ld b, $6c
    or a
    ld l, [hl]
    ld e, e
    ld [hl], $3f
    db $10
    ld b, c
    ld h, b
    add h
    nop

jr_029_641c:
    ld a, b
    or h
    ret z

jr_029_641f:
    ld l, $d0
    ld c, d
    or h
    sbc d
    inc b
    ld h, h
    jp nc, $e6ec

    ret c

    ccf
    db $10
    rra
    nop
    nop

jr_029_642f:
    jr nz, jr_029_6450

    ld a, e
    rlca
    ld [hl], a
    ld a, [hl-]
    ld a, a
    dec bc

jr_029_6437:
    nop
    ld a, h
    inc sp
    ld a, b
    scf
    ld e, c
    ld [hl], $3a
    dec b
    nop
    ld [hl+], a
    dec e
    ld hl, $211e
    ld e, $11
    ld c, $01
    rrca
    ld bc, $001f
    ld h, b
    nop

jr_029_6450:
    jr nc, jr_029_6437

    ld [$e000], sp
    add b
    ret nz

    add b
    and b
    ret nz

    jr nz, jr_029_641c

    nop
    jr nc, jr_029_641f

    ld [$0cf0], sp
    ld hl, sp+$1e
    db $fc
    nop
    inc a
    ldh a, [$f2]
    inc c
    db $fd
    jp nz, $20f7

    ld b, b
    ldh a, [$5f]
    jr jr_029_64b1

    nop
    ld b, c
    ld a, $f7
    rrca
    nop
    rst $28
    ld [hl], l
    rst $38
    rla
    ld hl, sp+$67
    ldh a, [$6f]
    nop
    or c
    ld l, [hl]
    ld [hl], d
    dec c
    ld b, d
    dec a
    ld b, c
    ld a, $c5
    ld bc, $3f09
    ld [$0000], sp
    ret nz

    ld b, e
    ld [$05e0], sp
    ld [$8002], sp
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, c
    jr nc, jr_029_64de

    ld [$fff2], sp
    nop
    ldh a, [$3f]
    ld [$00f0], sp
    add sp, $08
    ld [hl], b
    cp $40
    pop bc
    ccf

jr_029_64b1:
    ld c, b
    or b
    ld l, a
    ld [hl], b
    inc b
    rrca
    ld b, b
    ccf
    ld b, b
    ccf
    ccf

jr_029_64bc:
    jr nz, jr_029_64c5

    nop
    nop
    rst JumpTable
    ld b, $6f
    ld e, $c3

jr_029_64c5:
    ld a, $81
    ld a, [hl]
    nop
    add d
    ld a, h
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rP1]
    ccf
    ret nz

    ld bc, $66fe
    sbc b
    ld hl, sp+$40
    jr nc, jr_029_64bc

    ret nz

    ccf

jr_029_64de:
    stop
    scf
    nop
    ld e, a
    jr nz, jr_029_6563

    nop
    ld a, a
    nop
    nop
    ld d, l
    ld l, $7f
    ld a, [bc]
    sub l
    ld l, [hl]
    sbc $61
    nop
    cp h
    ld b, e
    cp $11
    ccf
    add hl, de
    cpl
    rra
    nop
    rla
    rrca
    rrca
    nop
    dec de
    dec c
    rra
    nop
    nop
    nop
    nop
    jr c, jr_029_6508

jr_029_6508:
    inc a
    jr @-$30

    inc a
    nop
    ld b, $fc
    ld b, $fc
    inc e
    ldh [rDIV], a
    ld hl, sp+$00
    ld [bc], a
    db $fc
    ld bc, $05fe
    ld a, [$fc83]
    ld bc, $bcc2
    cp $00
    ret c

    ldh [$f0], a
    rra
    ld [$4181], sp
    and b
    ccf
    rra
    add hl, de
    ld b, $1f
    add hl, bc
    ccf
    stop
    nop
    nop
    inc e
    nop
    ld l, $1c
    adc $30
    nop
    ld de, $23ee
    call c, $fa05
    ld bc, $80fe
    ld bc, $8210
    db $fc
    and h
    ret c

    ret c

    jr nz, @-$2e

    add b
    ccf
    ld [$0003], sp
    rrca
    ld [bc], a
    dec de
    inc c
    rla
    nop
    ld [$040f], sp
    ld e, $09
    ccf
    inc c
    ld c, [hl]
    nop

jr_029_6563:
    ld sp, $7987
    sub [hl]
    ld l, c
    ld [hl], a
    ld c, $17
    ld bc, $0b0f
    rlca
    ld c, $01
    ld de, $3f0e
    db $10
    ld b, b
    ld bc, $0801
    ld [hl], e
    nop
    xor a
    ld d, b
    adc a
    ld [hl], h
    nop
    ld e, [hl]
    add hl, hl
    ld d, a
    inc l
    ld l, $11
    daa
    add hl, de
    ld de, $1926
    rla
    ld hl, $1418
    dec bc
    rra
    dec de
    ld [$0300], sp
    nop
    dec b
    ld [bc], a
    add hl, bc
    ld b, $08
    rlca
    nop
    db $10
    rrca
    ld sp, $470e
    add hl, sp
    adc a
    ld [hl], a
    inc c
    xor a
    ld d, a
    ld [hl], a
    dec bc
    ccf
    ld d, b
    ld b, c
    db $10
    ld h, e
    nop
    nop
    sub l
    ld h, d
    adc c
    db $76
    ret z

    scf
    ld b, c
    ld a, $01
    daa
    add hl, de
    cpl
    rla
    cpl
    rla
    rla
    ld hl, $c018
    ccf
    db $10
    ld b, b
    nop
    nop
    sbc b
    rlca
    nop
    rrca
    rlca
    rra
    ld [$3f08], sp
    rla
    rst $38
    dec d
    rra
    and b
    add b
    nop
    ret nz

    nop
    add b
    ldh [rLCDC], a
    ldh a, [rNR41]
    cp $10
    rst $38
    nop
    ld h, d
    ld a, a
    nop
    cpl
    rra
    ccf
    inc de
    ccf
    nop
    inc de
    ld a, e
    rla
    rst $28
    ld e, l
    rst $38
    ld l, a
    ld a, a
    nop
    dec d
    rst $38
    ld l, b
    rst $38
    ld h, a
    ld a, a
    nop
    rra
    nop
    inc b
    rra
    nop
    ccf
    inc e
    ld a, $00
    cp $00
    inc c
    db $fc
    nop
    db $ec

jr_029_660c:
    ldh a, [$d4]
    jr c, jr_029_660c

    nop
    jr jr_029_6692

    sbc b
    rst $30
    ld a, [$e6df]
    rst $38
    nop
    ld c, d
    cp $30
    rst $38
    add $ff
    ld b, $ff
    ld [$ce40], sp
    jr nc, @-$06

    ld c, e
    jr jr_029_6638

    nop
    rra
    nop
    ld c, $3e
    db $10
    inc a
    db $10
    ld a, $0c
    inc e
    add c
    adc c
    sbc b

jr_029_6638:
    ld [$1f07], sp
    nop
    rra
    rrca
    ld h, c
    db $10
    ld [$173b], sp
    cpl
    dec e
    add hl, bc
    ld [$7f0b], sp
    jr nc, jr_029_664b

jr_029_664b:
    ld a, e
    inc [hl]
    jr c, jr_029_6656

    rra
    inc bc
    ccf
    inc e
    nop
    ccf
    nop

jr_029_6656:
    ldh [rP1], a
    db $10
    ldh [$e8], a
    stop
    db $f4

jr_029_665e:
    add sp, -$24
    jr nc, jr_029_665e

    jr jr_029_66e0

    sbc b
    nop
    db $f4
    ld hl, sp-$24
    ldh [$d2], a
    ld l, h
    rst $20
    jr jr_029_666f

jr_029_666f:
    adc a
    db $76
    ccf
    or $de
    ldh [$88], a
    ld [hl], b
    ret nz

    ld h, c
    jr nz, jr_029_667b

jr_029_667b:
    ld d, b
    ld h, b
    nop
    sbc b
    ld h, b
    ld c, b
    jr nc, jr_029_6687

    ld l, b
    db $10
    sbc b
    ld h, b

jr_029_6687:
    ldh [$5f], a
    jr z, @+$0b

    rlca
    nop
    db $10
    rrca
    db $10
    rrca
    ld [hl+], a

jr_029_6692:
    dec e
    ld hl, $001e
    jr nc, @+$11

    dec e
    ld [bc], a
    rra
    inc c
    ccf
    inc bc
    ld [bc], a
    ld [hl], e
    inc l
    ld a, a
    cpl
    jr nc, jr_029_66b4

    ld e, a
    jr nc, jr_029_6638

    nop

jr_029_66a9:
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$24
    ret c

    call nz, $3800
    inc b

jr_029_66b4:
    ld hl, sp-$18
    db $10
    db $fc
    nop
    or $01
    ret z

    db $e3
    inc e
    rlca
    ld a, [$fa3f]
    ld e, a
    jr nz, jr_029_66c9

    rrca
    nop
    db $10
    rrca

jr_029_66c9:
    ccf
    ld bc, $0611
    ccf
    nop
    ld b, $36
    rrca
    ccf
    dec de
    cpl
    rra
    rra
    nop
    ld a, [bc]
    ccf
    nop
    db $76
    add hl, hl
    ld a, c
    cpl
    ccf

jr_029_66e0:
    jr nz, jr_029_66e2

jr_029_66e2:
    dec bc
    cp c
    ld [$00c0], sp
    jr nc, jr_029_66a9

    ret z

jr_029_66ea:
    nop
    jr nc, @-$0a

    ret z

    cp h

jr_029_66ef:
    ld [hl], b
    db $fc
    jr c, jr_029_66ef

    nop
    jr c, jr_029_66ea

    ld hl, sp-$08
    ret nz

    and h
    ret c

    call c, $2000
    inc a
    ret c

    db $fc
    ret c

    ld hl, sp+$00
    ret nc

    ld h, b

jr_029_6706:
    ldh [$9f], a
    db $10
    ld b, c
    sub b
    rra
    nop
    ld de, $3f0e
    inc c
    nop
    ld a, $1f
    ccf
    rra
    ld [$7841], sp
    add b
    ret z

    nop
    jr nc, jr_029_6706

    ret nc

    add sp, -$30
    db $fc
    ld [$20fc], sp
    ld a, b
    db $fc
    rra
    ld [$000c], sp
    ld a, [bc]
    inc b
    add hl, bc
    ld b, b
    ld b, $c7
    db $10
    rla
    ld [$172f], sp
    ccf
    add hl, bc
    nop
    ccf
    ld de, $133d
    ld a, $1f
    rra
    rlca
    db $10
    rrca
    dec b
    rlca
    pop hl
    jr jr_029_6757

    nop
    add hl, de
    rrca
    jr nz, jr_029_6784

    add hl, de
    dec d
    jr jr_029_6760

    ccf
    add hl, de
    ld h, $19
    nop
    rra

jr_029_6757:
    nop
    dec bc
    inc b
    rla
    ld [$0a1d], sp
    ldh [rNR42], a

jr_029_6760:
    ld [$081d], sp
    nop
    rrca
    nop
    ld d, $0f
    ld l, c
    ld d, $d8
    ld h, a
    nop
    cp h

jr_029_676e:
    ld d, e
    cp e
    ld e, h
    ld a, a
    ld d, $3f
    ld d, $00
    ccf
    rra
    rra
    ld b, $3f
    add hl, de
    ccf
    add hl, de
    ld [$0619], sp
    jr nz, jr_029_67a2

    dec bc

jr_029_6784:
    ld [$b800], sp
    nop
    nop
    ld l, h
    sbc b
    ld d, $ec
    adc d
    ld [hl], h
    ld c, d
    or h
    nop

jr_029_6792:
    db $ec
    db $10
    call c, $dca8
    xor b
    ret c

    and b
    nop
    ret nc

    jr nz, jr_029_676e

    and b
    ldh [$80], a
    and b

jr_029_67a2:
    ld b, b
    nop
    db $10
    ldh [$f0], a
    ldh [$f0], a
    nop
    nop
    nop
    add b
    ld b, c
    adc b
    nop
    rra
    dec bc
    rra
    dec bc
    cpl
    db $10
    jr @+$41

    rra
    ccf
    rra
    ld [$7041], sp
    add sp, -$70
    add sp, $06
    sub b
    xor b
    ld d, b
    sub b
    ld h, b
    ccf
    jr nc, jr_029_67ca

jr_029_67ca:
    or b
    jr c, jr_029_67cd

jr_029_67cd:
    nop
    db $76
    jr c, jr_029_6792

    ld a, [hl]
    rrca
    nop
    dec e
    nop
    ld c, $1e
    add hl, bc
    rrca
    ld bc, $030d
    ld [hl], a
    nop
    add hl, bc
    rst $38
    db $76
    rst JumpTable
    ld l, l
    sbc l
    ld l, [hl]
    ld a, [hl]
    nop
    ld bc, $0c37
    daa
    inc e
    daa
    inc e
    inc hl
    nop
    rra
    db $10
    rrca
    rrca
    nop
    cp $00
    pop bc
    nop
    ld a, $bd
    jp nz, Jump_029_50ef

Call_029_67ff:
    cp $54
    rst $38
    nop
    db $f4
    db $fd
    ld [bc], a
    rst $28
    ld [hl], d
    sub a
    ld a, e
    dec c
    nop
    ei
    adc a
    ld a, b
    add [hl]
    ld a, c
    adc l
    ld [hl], d
    ld a, [hl]
    ld [$fa80], sp
    inc e
    cp $4d
    jr c, jr_029_686c

    nop
    ld a, h
    nop
    nop
    sbc $3c
    add $bc
    jp nc, Jump_029_6cac

    inc c
    add b
    add b
    nop
    add b
    rla
    jr c, jr_029_688e

    jr nc, jr_029_6836

    inc bc
    nop
    rra
    inc bc
    ld h, [hl]

jr_029_6836:
    add hl, de
    rst $38
    ld h, b
    sbc h
    ld a, e
    nop
    adc h
    ld [hl], e
    ld e, a
    inc l
    ccf
    ld a, [de]
    dec sp
    inc e
    jr nz, jr_029_6884

    ld hl, $105f
    inc a
    nop
    ld h, d
    inc e
    cp l
    nop
    ld e, [hl]
    db $db
    inc a
    rst $38
    ld b, d
    rst $38
    ld a, [hl]
    jp $0182


    ld [$7ee7], sp
    ld a, [hl]
    inc a
    inc a
    and l
    ld c, b
    inc bc
    nop
    nop
    rlca
    inc bc
    rst $08
    nop
    rst $38
    ld b, a
    rst $38
    nop

jr_029_686c:
    ld l, b
    rst $30
    ld l, d
    ld l, a
    ld [de], a
    ld c, e
    scf
    cpl
    nop
    inc d
    rra
    ld bc, $031f
    ccf
    ld bc, $007b
    inc [hl]
    ld e, h
    dec sp
    ld l, a
    jr jr_029_68c0

jr_029_6884:
    nop
    ldh a, [rP1]

jr_029_6887:
    nop
    ld hl, sp-$10
    db $fc
    nop
    cp $fc

jr_029_688e:
    ei
    nop
    ld b, $fd
    xor d
    db $fd
    and d
    cp $e8
    db $fc
    nop

jr_029_6899:
    jr z, jr_029_6899

    sbc b
    rst $38
    jp nc, $82ff

    rst $38
    ld [$3a0c], sp
    call c, $1ff6
    ld [$0003], sp
    inc b
    nop
    inc bc
    rst JumpTable
    inc bc
    db $e3
    ld e, h
    rst $30
    ld l, b
    rst $38
    ld b, b
    ld h, d
    ccf
    db $10
    dec hl
    ld d, $1e
    inc bc
    rrca
    ld bc, $3b02

jr_029_68c0:
    inc b
    ld a, l
    ld [hl-], a
    ld e, [hl]
    add hl, sp
    ccf
    jr nz, jr_029_68d0

    ld [bc], a
    ldh a, [$fe]
    ret nz

    pop bc
    ld a, $f9
    ccf

jr_029_68d0:
    ld [$00fe], sp
    and b
    db $fc
    add sp, -$04
    jr c, jr_029_6887

    ld [hl], b
    rst $38
    ld b, $c6
    rst $28
    ld [de], a
    rst JumpTable
    inc l
    ccf
    jr nz, jr_029_68e4

jr_029_68e4:
    jr nz, jr_029_68f4

    add e
    push bc
    ld [$1c2b], sp
    inc hl
    inc e
    dec hl
    ld bc, $0508
    db $10
    jr jr_029_6911

jr_029_68f4:
    ld c, $0e
    ld c, e
    ld e, c
    push bc
    ld [$6d3c], sp
    ld [hl-], a
    db $10
    sub l
    ld h, d
    push de
    ld bc, $9508
    ld h, d
    ld l, l
    ld [hl-], a
    ld h, b
    ld h, d
    jp Jump_029_4038


    nop
    nop
    ld [$0030], sp

jr_029_6911:
    jr c, jr_029_6923

jr_029_6913:
    inc [hl]
    jr jr_029_6916

jr_029_6916:
    inc a
    jr @+$3c

    inc e
    inc e
    rrca
    add hl, bc
    rlca

jr_029_691e:
    nop
    inc bc
    rlca
    dec bc
    rlca

jr_029_6923:
    add hl, de
    rrca
    inc a
    dec de
    ld h, b
    inc a
    ld a, [de]
    stop
    jr c, jr_029_691e

    nop
    db $ec
    ld [hl], b
    cp h
    ld [$597f], sp
    ccf
    dec sp
    rra
    ld [$0701], sp
    inc c
    ld [bc], a
    rlca
    ld c, $04
    ld a, [bc]
    inc b
    ld b, $17
    ld [$0031], sp
    ld c, $36
    rrca
    add hl, sp
    ld c, $57
    add hl, hl
    ld a, [hl]
    nop
    dec h
    ld a, a
    jr z, jr_029_6913

    ld h, l
    rst $30
    ld l, l
    rst $10
    nop
    ld l, a
    cp e
    ld b, a
    rst $30
    ld [$163f], sp
    ld e, e
    nop
    scf
    jr nc, jr_029_6974

    rra
    rrca
    rra
    nop
    adc b
    nop
    ld [hl], b
    ld l, b
    ldh a, [$9c]
    ld [hl], b
    ld l, h
    sub b
    ld a, h
    nop

jr_029_6974:
    and b
    ld a, [$de14]
    and h
    xor $b4
    xor $00
    db $f4
    jp c, $eee4

    db $10
    ld a, [$b9dc]
    nop
    sbc $1e
    ldh [$f8], a
    ldh a, [$f8]
    nop
    ld l, $22
    rra
    ccf
    ld bc, $5f08
    ccf
    ld a, a

jr_029_6996:
    ld bc, $bf08
    jr nz, jr_029_6a1a

    rst $38
    ld bc, $8008
    ld a, a
    rst $38
    nop
    cpl
    jr nz, jr_029_69bc

    ld c, b

jr_029_69a6:
    ccf
    jr z, jr_029_6a21

    ldh a, [$f8]
    ldh a, [$f4]
    ld [hl+], a
    ld hl, sp-$04
    ld bc, $fa08
    db $fc
    cp $01
    jr jr_029_69ba

    ld [bc], a
    db $fc

jr_029_69ba:
    cp $00

jr_029_69bc:
    ld [c], a
    call c, $3f21
    jr z, @+$04

    nop
    ld bc, $0306
    dec e
    inc bc
    ld [hl], $19
    cpl
    nop
    ld d, $1f
    ld bc, $0a1d
    ld a, $1b
    ld a, $04
    rra
    ld e, $0f
    rrca
    nop
    and h
    ld [$0603], sp
    nop
    ld bc, $0609
    rrca
    nop
    jr nc, jr_029_69a6

    jr nc, jr_029_69e8

jr_029_69e8:
    ret nz

    cp b
    ret nc

    ld a, b
    ret nc

    cp h
    ld e, b
    db $fc
    nop
    sbc b
    db $fc
    ld e, b
    ld a, [hl]
    add h
    ld a, $d4
    ld e, d
    nop
    or h
    cp [hl]
    ld h, b
    ld [hl], b
    add b
    and b

Call_029_6a00:
    ld b, b
    sub b
    ld [bc], a
    ld h, b
    adc b
    ld [hl], b
    ld hl, sp+$00
    ld bc, $b841
    rrca
    nop
    inc bc
    ld [de], a
    dec c
    rra
    nop
    jr nz, @-$3e

    jr nz, jr_029_6996

    ld b, c
    ld [$c0b0], sp

jr_029_6a1a:
    ld a, b
    ret nc

    cp b
    ld d, b
    db $fc
    nop
    sbc b

jr_029_6a21:
    rst $38
    ld e, h
    ld a, l
    add [hl]
    ld a, [hl-]
    call nc, $205c
    or b
    cp b
    ld b, c
    ld [$7088], sp
    add h
    ld a, b
    db $fc
    ret nz

    inc hl
    ld e, c
    nop
    ld h, b
    rrca
    nop
    rla
    dec bc
    inc de
    dec c
    add h
    rra
    ret nc

    jr jr_029_6a51

    inc e
    rrca
    rra
    ret nz

    ld [$0600], sp
    inc d
    ld [$1824], sp
    inc h
    nop
    add sp, $00

jr_029_6a51:
    ld c, a
    nop
    sub e
    rrca
    pop hl
    ld e, $83
    ld a, l
    nop
    ld b, a
    dec sp
    ccf
    dec b
    cpl
    dec d
    ld e, a
    dec l
    nop
    ld e, a
    daa
    sbc a
    ld h, e
    or a
    ld c, b
    cp h
    ld d, a
    nop
    ld a, e
    rla
    jr nc, @+$11

    rra
    rrca
    rra
    nop
    nop
    ldh a, [rP1]
    add sp, -$10
    or h
    ld a, b
    adc h
    ld a, b
    nop
    jp nz, $f23c

    adc h
    ld a, [c]
    xor h
    ld a, [$00b4]
    ld sp, hl
    and $f9
    add $ed
    ld [de], a
    ld a, l
    jp c, $bd00

    jp c, $e41a

    inc c
    ldh a, [$f8]
    nop
    nop
    ld c, a
    nop
    sub b
    rrca
    db $e3
    rra
    add b
    ld a, a
    nop
    ld b, b
    ccf
    jr nz, @+$21

    jr nz, @+$21

    ld b, b
    ccf
    ld [$3f40], sp
    add b
    ld a, a
    ld bc, $6010
    rra
    ccf
    jr nz, jr_029_6ab6

jr_029_6ab6:
    db $10
    ccf
    jr jr_029_6ac2

    ldh a, [$e4]
    ld hl, sp+$34
    add hl, bc
    ld hl, sp+$0a
    db $fc

jr_029_6ac2:
    ld [bc], a
    ld bc, $0118
    cp $01
    jr nc, jr_029_6ad2

    ld [bc], a
    db $fc
    call z, $3f30
    db $10
    sub e
    rrca

jr_029_6ad2:
    ldh [rP1], a
    rra
    sbc b
    ld h, a
    ld e, h
    dec hl
    ccf
    ld [$001f], sp
    ld a, [bc]
    ccf
    dec de
    ccf
    rra
    ld e, $0f
    rrca
    stop

jr_029_6ae7:
    rlca
    inc bc
    ld bc, $0008
    ld [$0f07], sp
    nop
    nop
    ret nz

jr_029_6af2:
    nop
    ldh a, [$c0]
    ld l, b
    ldh a, [rNR14]
    jr nz, jr_029_6af2

    inc b
    ld bc, $8418
    ld a, b
    call nz, $4cb8
    nop
    cp b
    add $3c
    ld [c], a
    inc e
    or d
    ld c, h
    call nc, $e828
    ld [$087f], sp
    jr nz, jr_029_6b53

    ld [$0f73], sp
    ld b, b
    ld [bc], a
    ccf
    ld e, b
    daa
    inc a
    dec bc
    rra
    ld b, c
    ld e, b
    rrca
    ld [bc], a
    inc bc
    inc de
    inc c
    rra
    nop
    nop
    ld b, c
    ld l, b
    adc h
    nop
    ld a, b
    add $bc
    ld b, c
    cp [hl]
    pop hl
    ld e, $b1
    nop
    ld c, [hl]
    adc d
    ld [hl], h
    inc b
    ld hl, sp-$04
    nop
    daa
    nop
    nop
    ld c, c
    rlca
    ld [hl], b
    rrca
    ld c, h
    inc sp
    ld l, $00
    dec d
    rra
    inc b
    rrca
    dec b
    rra
    dec c
    rra
    nop
    rrca
    rrca
    rlca
    rra

jr_029_6b53:
    nop
    jr c, jr_029_6b75

    ld a, [hl-]
    db $10
    dec e
    rra
    inc bc
    ld a, a
    db $10
    ldh [rP1], a
    ld hl, sp-$20
    add b
    cp l
    jr nz, jr_029_6ae7

    ld a, h
    add d
    ld a, h
    jp nz, $e2bc

    nop
    call c, $dc26
    call z, $4438
    cp b
    db $e4
    inc d

jr_029_6b75:
    sbc b
    inc [hl]
    ret z

    ld a, a
    db $10
    db $10
    ld b, c
    ld [$0739], sp
    ld bc, $1f20
    inc l
    inc de
    ld e, $05
    rrca
    ld b, c
    ld e, b
    inc c
    dec sp
    dec e
    inc e
    inc bc
    ld a, a
    db $10
    ld b, c
    ld h, b
    add $bc
    nop
    db $e3
    sbc $21
    sbc $c1
    ld a, $71
    adc [hl]
    db $10
    jp c, $06e4

    ld a, a
    ld [$6060], sp
    ret nc

    or b
    nop
    ret z

    cp b
    ld hl, sp-$48
    call nz, $bcbc
    call c, Call_029_6400
    ld e, h
    ld l, a
    ld e, a
    rst $38
    pop af
    ld sp, hl
    add a
    nop
    cp c
    rst $00
    ld a, c
    ld b, a
    ld a, c
    ld b, a
    ld b, c
    ld a, a
    ld b, $3e
    ld a, $00
    nop
    inc h
    nop
    nop
    ld e, a
    nop
    ld a, e
    nop
    push bc
    dec sp
    adc h
    ld a, e
    sbc b
    ld [hl], a
    nop
    ld [hl], c
    ld c, $3f
    db $10
    ccf
    dec d
    rra
    dec c
    nop
    rrca
    rlca
    rrca
    inc bc
    rla
    ld [$173c], sp
    nop
    dec sp
    rla
    db $10
    rrca
    rra
    rrca
    rra
    nop
    nop
    adc $00
    or e
    call z, $ee19
    adc l
    halt
    adc $b0
    db $fc
    adc b
    db $fc
    xor b
    ld hl, sp-$50
    nop
    ldh a, [$e0]
    ldh a, [$c0]
    add sp, $10
    ld a, h
    ret c

    nop
    cp h
    ret c

    inc e
    ldh [$08], a
    ldh a, [$f8]
    nop
    nop
    ld a, e
    nop
    call nz, $8d3b
    ld a, e
    sbc c
    ld [hl], a
    nop
    ld [hl], b
    rrca
    jr c, @+$19

    jr c, jr_029_6c3a

    inc e
    inc bc
    jr z, @+$11

    inc b
    ccf
    jr nz, jr_029_6c56

    ccf
    jr c, @+$35

    call z, $0099
    xor $8d
    or $0e
    ldh a, [rNR32]
    add sp, $1c
    inc b

jr_029_6c3a:
    add sp, $38
    ret nz

    ldh a, [rNR41]
    ccf
    ld h, b
    rrca
    nop
    nop
    ld [hl], $0f
    ld h, b
    ccf
    ld e, b
    daa
    ld a, h
    dec bc
    nop
    rra
    ld [$0a1f], sp
    ccf
    ld a, [de]
    ccf
    rra
    ld [bc], a

jr_029_6c56:
    ld e, $0f
    rrca
    nop
    rlca
    inc bc
    ld bc, $0008
    nop
    ld [$0f07], sp
    nop
    cp h
    nop
    ld b, [hl]
    cp b
    nop
    ld h, d
    cp h
    ld [hl], d
    sbc h
    inc a
    ret nz

    ld h, h
    sbc b
    nop
    ld [hl], h
    xor b
    db $f4
    ld l, b
    xor b
    ret nc

    ld [hl], b
    add b
    ld bc, $00c0
    ldh [rP1], a
    and b
    ld b, b
    ret nc

    ccf
    jr @+$42

    nop
    ld b, c
    ld [$0f76], sp
    and b
    ld a, a
    cp b
    ld b, a
    add e
    ld b, c
    ld [hl], b
    rrca
    inc bc
    inc de
    inc c
    rra
    rra
    ld [$9041], sp
    nop
    ldh [rP1], a
    or b
    ld b, b
    add sp, $70
    inc b
    ld hl, sp+$00
    db $fc
    nop
    ld b, a
    nop
    rlc a
    rst $38
    nop

Jump_029_6cac:
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    ld [bc], a
    ccf
    dec bc
    db $10
    ccf
    dec de
    rra
    dec sp
    ld [$070e], sp
    rrca
    ld b, $10
    ld b, $01
    inc bc
    add l
    stop
    ld [bc], a
    db $fc
    add h
    nop
    ld hl, sp-$18
    ret nc

    ld a, [$fe60]
    nop
    cp $00
    nop
    db $fc
    nop
    ret z

    or b
    ld d, b
    and b
    ldh a, [rP1]
    nop
    ret z

    jr nc, jr_029_6d44

    sbc b
    ld [hl+], a
    call c, $00fe
    inc c
    sbc $e0
    ld hl, sp+$00
    ld hl, $4e00
    inc b
    ld bc, $0fd7
    rst $38
    ld bc, $1041
    ccf
    inc b
    ld bc, $167f
    ld a, a
    scf
    ld a, $1f
    rra
    ld b, c
    jr jr_029_6d02

jr_029_6d02:
    ld e, $01
    dec sp
    inc e
    ccf
    nop
    ld h, h
    ld hl, sp+$00
    inc b
    ld hl, sp+$08
    ldh a, [$d0]
    and b
    db $f4
    ret nz

    ld b, b
    db $fc
    ccf
    ld [$00f8], sp
    sub b
    ld h, b
    cp [hl]
    ld b, b
    nop
    jp $b33e


    ld c, [hl]
    rra
    ldh [$7e], a
    sub b
    jr nc, @-$06

    ld [hl], b
    cp a
    stop
    and b
    ld [bc], a
    nop
    ld b, $00
    ld b, $7a
    inc b
    or d
    ld a, h
    inc h
    nop
    nop
    ld e, a
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    nop

jr_029_6d44:
    rrca
    dec b
    rrca
    inc b
    rrca
    inc b
    dec bc
    rlca
    nop
    dec b
    inc bc
    ld e, $01
    dec sp
    inc e
    rra
    dec c
    nop
    ld c, $01
    dec c
    ld [bc], a
    rla
    rrca
    rra
    nop
    inc b
    ld a, [hl]
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld [$e7fe], sp
    nop
    db $fd
    add $fe
    call z, $fcfa
    rst $30
    ld hl, sp+$00
    db $ec
    di
    push af
    ld c, $fe
    db $fd
    ei
    db $fd
    nop
    ld a, c
    or $ff
    nop
    ret nz

    nop
    nop
    nop
    nop
    add b
    nop
    rst $00
    add b
    ld [$f2c4], a
    db $ec
    ld bc, $38d4
    ld [hl-], a
    inc c
    ld a, [bc]
    inc b
    rlca
    rrca
    ld [$c001], sp
    nop
    ldh [$c0], a
    ret nz

    add b
    add b
    add hl, bc
    ld [$5d80], sp
    db $10
    rlca
    ld bc, $070f
    rra
    inc c
    rra
    nop
    ld [$193f], sp
    ccf
    rra
    cpl
    rra
    rla
    nop
    rrca
    rrca
    nop
    dec de
    rlca
    ccf
    ld d, $37
    nop
    dec c
    inc de
    inc c
    rrca
    ld bc, $001f
    ld hl, sp+$00
    nop
    or $f8
    db $fd
    cp $ff
    rst $38
    ei
    nop
    rst $38
    rst $30
    ld hl, sp-$08
    ldh a, [$e8]
    ldh a, [$d0]
    nop
    ldh [$f0], a
    nop
    add sp, $10
    db $f4
    add sp, -$1e
    inc bc
    call c, $0ef1
    rst JumpTable

jr_029_6de5:
    ldh [$f8], a
    ld b, c
    ld [$1061], sp
    nop
    ld b, b
    add b
    and b

jr_029_6def:
    ret nz

    sub b
    ld h, b
    ld d, b
    jr nz, @+$03

    jr z, @+$12

    ld d, h
    jr z, jr_029_6e66

    nop
    ld b, h
    dec d
    jr jr_029_6def

    rla
    stop
    db $10
    ld h, c
    sub b
    call $0308
    rra
    nop
    dec a
    jr nc, jr_029_6e2b

    ccf
    rra
    ld [$9061], sp
    db $ec
    ret nc

    jp $04bc


    cp h
    ld b, e
    ei
    inc a
    rst $38
    ld c, c
    jr c, @+$42

    add b
    nop
    ret nz

    add b
    jr nz, jr_029_6de5

    and b
    ld b, b
    ld d, b
    jr nz, jr_029_6e2f

    xor b

jr_029_6e2b:
    ld d, b
    ret c

    nop
    adc b

jr_029_6e2f:
    inc de
    ld [$5fc0], sp
    jr jr_029_6e55

    inc bc
    nop
    ld c, c
    ld [$3f0f], sp
    rra
    ccf
    dec e
    ld [$1e3f], sp
    ccf
    ld e, $5d
    db $10
    dec sp
    ld d, $6e
    nop
    dec a
    rst $38
    ld l, h
    ld [hl], a
    dec c
    dec sp
    rlca
    ld [hl], h
    jr nz, @+$3d

    ld a, a
    dec h

jr_029_6e55:
    ld [$c0f0], sp
    ld hl, sp-$10
    db $fc
    nop
    ld hl, sp-$04
    add sp, $7c
    add sp, $3c
    add sp, -$64
    nop
    ld l, b

jr_029_6e66:
    cp b
    ld d, b
    jr c, @-$2e

    call c, $fc28
    nop
    ret z

    or $e8
    db $eb
    or $be
    ret nz

    ldh a, [rLCDC]
    nop
    ld [bc], a
    rra
    nop
    ccf
    rrca
    ccf
    db $10
    inc hl
    scf
    nop
    jr @+$3a

    rlca
    daa
    jr jr_029_6eb7

    db $10
    ld c, e
    db $10
    ld [hl], $57
    ld l, $21
    ld e, c
    ld h, $6f
    ld d, b
    nop
    ld [hl], b
    ld l, a
    ccf
    jr c, @+$11

    rrca
    ldh a, [rP1]
    nop
    db $fc
    ldh a, [$fa]
    inc e
    ld sp, hl
    xor $d9
    ld a, $00
    inc sp
    call z, $30ce
    ld [c], a
    inc e
    and d
    call c, $d120
    xor $21
    ld sp, $e3ce
    dec e
    rlca

jr_029_6eb7:
    ld [bc], a
    ei
    ld a, $ce
    ld hl, sp-$08
    nop
    nop
    dec bc
    inc c
    ld b, $00
    dec e
    ld [$113b], sp
    ld hl, $0e25
    ld l, h
    inc b
    ld hl, $1925
    inc e
    inc c
    ld b, b
    call z, $0c00
    call c, $b888
    db $10
    ld hl, $ee25
    ld b, h
    ret c

    ld hl, $9825
    rra
    rrca
    ldh [rIE], a
    rst $38
    sbc l
    nop
    db $e3
    ld c, c
    ld [hl], a
    ld [hl-], a
    ld a, $5d
    ld h, e
    ld a, a
    ld b, b
    ld a, a
    ld l, a
    ld a, $3e
    ld [hl+], a
    ld a, $32
    ld l, $0f
    di
    rst $28
    di

Jump_029_6efd:
    xor [hl]
    inc hl
    add hl, hl
    jr nz, jr_029_6f21

    db $10
    xor b
    nop
    ld a, [bc]
    inc e
    jr nz, jr_029_6f1d

    dec a
    cp l
    jp Jump_029_7d81


    rst $38
    ld hl, $2b20
    ld hl, $1075
    ld b, b
    ld c, $38

jr_029_6f18:
    jr z, jr_029_6f18

    add $23
    ld l, c

jr_029_6f1d:
    cpl
    inc b
    sbc b
    ld b, b

jr_029_6f21:
    rra
    dec de
    ld h, l
    dec hl
    rlca
    nop
    add hl, de
    nop
    rlca
    daa
    jr jr_029_6f58

    ld d, $57
    ld l, $75
    nop
    ld c, $bf
    ld h, b
    sbc h
    ld [hl], e
    add b
    ld a, a
    ld b, a
    nop
    jr c, jr_029_6fa0

    inc e
    ld b, b
    ccf
    cp b
    ld b, a
    db $fc
    nop
    dec sp
    rst $00
    inc a
    ld a, a
    nop
    ld hl, sp+$00
    call nz, $f800
    ld [c], a
    inc e
    or d
    ld l, h
    ld [hl], c
    xor $51
    nop
    xor $f1

jr_029_6f58:
    ld c, $e1
    ld e, $05
    ld a, [$0087]
    ld a, b
    inc sp
    call c, $bc62
    ld b, h
    cp b
    ld [hl-], a
    inc b
    call z, $f806
    db $fc
    nop
    nop
    inc c
    inc c
    nop
    nop
    ld a, [de]
    inc c
    dec e
    ld c, $0f
    inc b
    ld e, $03
    ld bc, $1b37
    ld l, a
    jr nc, jr_029_6fd0

    jr nz, jr_029_6fa2

    dec e
    dec c
    add b
    jr nz, jr_029_6fe7

    nop
    ldh a, [$60]
    ld d, b
    ldh [$a0], a
    nop
    ret nz

    ldh a, [rP1]
    cp h
    ld [hl], b
    xor $1c

jr_029_6f95:
    dec de
    ld [$0506], sp
    ld [bc], a
    ld [bc], a
    dec de
    add hl, bc
    inc bc
    nop
    rlca

jr_029_6fa0:
    jr nz, @+$05

jr_029_6fa2:
    inc b
    ld b, a
    jr nz, jr_029_6fa6

jr_029_6fa6:
    ld h, b
    nop
    ld d, b
    add hl, bc
    jr nz, jr_029_7008

    jr nc, jr_029_6fdd

    ccf
    rlca
    rlca
    dec e
    add hl, bc
    add c
    jr nz, jr_029_6fce

    nop
    xor h
    jr jr_029_7006

    ld [$0069], sp
    ld [bc], a
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    db $fd
    ld b, $18
    ld a, [$fcfc]
    rra
    dec bc
    jr nz, jr_029_7000

    nop

jr_029_6fce:
    ld l, a
    nop

jr_029_6fd0:
    inc sp
    ld l, d

jr_029_6fd2:
    scf
    ld e, l
    ld h, $77
    jr jr_029_6f95

    ld [hl], $5b
    rst $38
    add hl, de
    dec c

jr_029_6fdd:
    ldh [$80], a
    ld b, c
    jr nz, jr_029_6fd2

    nop
    nop
    db $fc
    ldh a, [$ee]

jr_029_6fe7:
    inc e
    dec de
    ld b, $07
    ret nz

    sub e
    nop
    inc bc
    nop
    inc a
    inc bc
    ld l, c
    scf
    ld d, b
    cpl
    nop
    ld d, c
    ld l, $3f
    nop
    cpl
    dec d
    ccf
    dec c
    nop

Call_029_7000:
jr_029_7000:
    ld e, a
    daa
    sbc a
    ld h, e
    or a
    ld c, b

jr_029_7006:
    cp a
    ld d, [hl]

jr_029_7008:
    nop
    cp e
    ld d, a
    ld d, b
    cpl
    ccf
    rrca
    rra
    nop
    nop
    ret nz

    nop
    inc a
    ret nz

    sub [hl]
    db $ec
    adc d
    ld [hl], h
    nop
    jp z, $fc34

    add b
    db $f4
    xor b
    ld a, [$00b4]
    ld sp, hl
    and $f9
    add $ed
    ld [de], a
    db $fd
    jp c, $be00

    ret c

    inc e
    ldh [$08], a
    ldh a, [$f8]
    nop
    add b
    ccf
    db $10
    ld l, b
    scf
    ld d, e
    cpl
    ld d, a
    cpl
    inc h
    ld bc, $201f
    rra
    ld b, b
    ccf
    add b

jr_029_7046:
    ld a, a
    ld bc, $0120
    ld b, b
    ccf
    jr nc, jr_029_705d

    ld l, $11
    ccf
    ccf
    jr jr_029_7054

jr_029_7054:
    ld d, $ec
    jp z, $eaf4

    db $f4
    inc h
    ld hl, sp+$42

jr_029_705d:
    inc b
    ld bc, $0208
    db $fc
    ld bc, $01fe
    jr nz, jr_029_7069

    nop
    db $fc

jr_029_7069:
    inc c
    ldh a, [$fc]
    nop
    rlca
    nop
    jr jr_029_7071

jr_029_7071:
    rlca
    jr c, jr_029_7093

    ld l, b
    scf
    ld e, h
    inc hl
    ld a, a
    nop
    ld [$0a1f], sp
    ccf
    ld a, [de]
    ccf
    rra
    ld e, $04
    rrca
    rrca
    nop
    rlca
    inc bc
    ld bc, $0008
    ld [$0720], sp
    rrca
    ccf
    ld [$8070], sp

jr_029_7093:
    xor b
    ld [hl], b
    ret z

    nop
    ld [hl], b
    adc b
    ld [hl], b
    ld a, b
    add b
    ld [$c4f0], sp
    nop
    jr c, jr_029_7046

    ret c

    ld d, d
    xor h
    jp nz, $e23c

    ld [bc], a
    inc e
    and [hl]
    ld e, b
    ld e, $e0
    inc c
    ld a, a
    ld [$0000], sp
    nop
    rrca
    nop
    db $10
    rrca
    ld a, b
    rra
    xor b
    db $10
    ld [hl], a
    cp h
    ld b, e
    ld b, c
    ld h, b
    rrca
    inc bc
    inc de
    inc c
    ld h, b
    rra
    rra
    ld [$4041], sp
    ld [hl], h
    adc b
    inc b
    ld hl, sp-$3e
    nop
    inc a
    and c
    sbc $51
    xor [hl]
    pop hl
    ld e, $b3
    inc bc
    ld c, h
    adc a
    ld [hl], b
    ld b, $f8
    db $fc
    rra
    ld [$9000], sp
    nop
    db $db
    db $db
    rst $38
    and l
    rst $38
    add c
    rst $38
    cp l
    jr nz, @-$3b

    jp $a01f


    ld l, h
    ld l, h
    ld a, h
    ld d, h
    ld a, h
    inc b

jr_029_70f8:
    ld b, h
    ld a, h
    ld [hl], h
    inc c
    inc c
    add hl, de
    ld [hl], b
    inc b
    inc b
    nop
    ld c, $0a
    ccf
    add hl, sp
    ccf
    inc hl
    ld a, h
    ld h, h
    nop
    ld hl, sp-$78
    ld [hl], b
    ld d, b
    jr nc, @+$32

    rrca
    nop
    nop
    jr nc, jr_029_7125

    ld a, b
    ccf
    sbc b
    ld h, a
    db $fc
    dec bc
    nop
    ld a, $1d
    ld a, $1d
    ld a, a
    inc h
    ld a, a
    ccf

jr_029_7125:
    nop
    dec a
    ld e, $1e
    ld bc, $0207
    dec b
    ld [bc], a
    db $10
    inc b
    inc bc
    inc b
    db $e3
    ld [$00c0], sp
    jr nz, jr_029_70f8

    add b

jr_029_7139:
    pop hl
    ld b, b
    add h
    ld a, b
    ld h, d
    sbc h
    pop de
    ld l, $61
    nop
    sbc [hl]
    pop af
    adc $fb
    call nz, $30ce
    inc b
    add c
    sbc a
    jr z, @+$09

    nop
    ld a, [bc]
    rlca
    inc c
    rlca
    dec c
    ld de, $1800
    rlca
    jr nz, jr_029_717a

    ld b, e
    inc a
    ld b, l
    ld a, [hl-]
    ld bc, $3d42
    ld l, h
    inc de
    jr c, @+$09

    db $10
    sbc a
    add hl, bc
    nop
    nop
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$8e]
    ld a, h
    nop
    add a
    ld a, d
    adc l
    ld [hl], d
    ld a, [hl]
    adc b
    ld a, h

jr_029_717a:
    cp b
    nop
    cp $64
    cp $7c
    ld a, h
    adc b
    cp [hl]
    ld [hl], h
    nop
    ld a, [hl]
    or h
    inc a
    ret nz

    db $10
    ldh [$f0], a
    nop
    ld h, b
    inc h
    nop
    add sp, $00
    inc bc
    nop
    inc a
    inc bc
    ld l, c
    scf
    ld d, b
    cpl
    nop
    ld d, c
    ld l, $3f
    nop
    cpl
    dec d
    ccf
    dec c
    nop
    ld c, a
    ld sp, $669f
    sub a
    ld l, [hl]
    adc a
    ld [hl], b
    jr nz, jr_029_7139

    ld [hl], a
    inc sp
    ccf
    rrca
    rra
    nop
    ret nz

    add b
    ccf
    ret nz

    sub [hl]
    db $ec
    adc d
    ld [hl], h
    jp z, $0034

    db $fc
    add b
    db $f4
    xor b
    ld a, [$f1b4]
    adc [hl]
    ld [$66f9], sp
    jp hl


    db $76
    dec h
    sub d
    db $ec
    inc c
    inc b
    ldh a, [$08]
    ldh a, [$f8]
    nop
    jr nz, jr_029_71d9

    nop

jr_029_71d9:
    ld [$0103], sp
    rlca
    inc bc
    ld hl, $037f
    db $dd
    ld bc, $8d3b
    ld a, e
    add [hl]
    ld a, c
    add l
    ld a, d
    ld hl, $8701
    ld a, e
    ld b, a
    add hl, sp

jr_029_71f0:
    ld c, e
    jr nc, jr_029_722e

    ld e, e
    nop
    jr c, jr_029_71f7

jr_029_71f7:
    xor h
    jr jr_029_71f0

    adc h
    cp $64
    nop
    pop af
    ld l, [hl]
    pop hl
    sbc $e1
    ld e, $9d
    ld h, d
    nop
    xor e
    ld e, h
    ld h, $dc
    and d
    ld e, h
    sbc h
    ld h, b
    nop
    adc b
    ld [hl], b
    ld [$98f0], sp
    ld h, b
    ldh a, [rP1]
    and b
    nop
    ld [de], a
    ld a, b

jr_029_721c:
    jr nz, @+$4a

    ld [hl], b
    ld d, b
    ld hl, sp-$78
    jr nz, jr_029_721c

    ld hl, sp+$6d
    rlca
    nop
    inc e
    inc bc
    daa
    nop
    jr jr_029_727d

jr_029_722e:
    scf
    ld e, a
    inc l
    ld a, a
    rla
    cpl
    nop
    dec e
    ld d, [hl]
    cpl
    sbc a
    ld h, b
    sub l
    ld l, e
    cp h
    inc b
    ld e, e
    ld [hl], h
    dec de
    add hl, sp
    rlca
    dec [hl]
    dec l
    inc de
    ld b, h
    rra
    rst $38
    dec [hl]
    ld e, a
    dec h
    rra
    ld d, $b0
    nop
    nop
    ld l, b
    or b
    jr z, @-$2e

    add sp, $10
    db $fc
    and b
    nop
    ld a, [c]
    db $ec
    and c
    sbc $79
    add [hl]
    push hl
    ld e, d
    nop
    rst JumpTable
    db $ec
    ld d, $ec
    ld c, $f0
    ld [c], a
    db $fc
    nop
    ld sp, hl
    ld b, $4d
    or d
    cp $00
    ccf
    ld [bc], a
    nop
    db $76
    add hl, de
    ld c, b
    scf
    ld c, a
    jr nc, jr_029_72b3

    ld a, [bc]

jr_029_727d:
    nop
    cpl
    ld d, $44
    dec sp
    add a
    ld a, c
    adc a
    ld [hl], b
    nop
    or l
    ld c, e
    ld a, [hl]
    ld de, $3778
    ld sp, $000f
    daa
    jr jr_029_72c0

    inc de
    rra
    nop
    cp $10
    nop
    ld e, e
    and [hl]
    push hl
    ld a, [de]
    db $fd
    ld b, d
    cp $d0
    nop
    ld a, [$c9d4]
    or $f9
    and [hl]
    db $ed
    ld [de], a
    nop
    ld_long a, $ffb4
    and $0f
    ld a, [c]
    ld [c], a
    db $fc

jr_029_72b3:
    ld [bc], a
    ld sp, hl
    ld b, $4d
    or d
    cp $00
    nop
    rlca
    nop
    jr jr_029_72c6

    daa

jr_029_72c0:
    jr @+$7d

    daa

jr_029_72c3:
    nop
    ld a, a
    nop

jr_029_72c6:
    rst $38
    dec bc
    rst $38
    ld e, e
    db $d3
    ld a, a
    nop
    ld a, a
    ld a, $5f
    dec a
    rst $28
    ld e, a
    rst $38
    ld b, e
    nop
    rst $20
    inc e
    ld b, e
    ccf
    ld h, c
    rra
    ccf
    nop
    nop
    ldh [rP1], a
    jr jr_029_72c3

    add h
    ld a, b
    ld a, [c]
    sbc h
    nop
    ld_long a, $ff0c
    and b
    rst $38
    or [hl]
    sub a
    db $fc
    nop
    db $fd
    ld a, [$7af5]
    call $fff2
    adc d
    nop
    rst JumpTable
    ld l, h
    sbc [hl]
    db $ec
    ld c, $f0
    db $fc
    nop
    nop
    rrca
    nop
    inc de
    rrca
    ld hl, $201f
    rra
    nop
    ld d, b
    cpl
    ld d, b
    cpl
    ld c, b
    scf
    ld h, h
    dec sp
    nop
    jr nc, jr_029_7336

    jr nc, jr_029_7338

    ld a, h
    cpl
    rst $38
    ld h, e
    nop
    rst $30
    ld l, b
    ld h, b
    rra
    ld sp, $1f0f
    nop
    nop
    ldh a, [rP1]
    ret z

    ldh a, [$c4]
    ld hl, sp-$7c
    ld hl, sp+$00
    ld b, $f8
    ld a, [bc]
    db $f4
    ld c, $f4

jr_029_7336:
    ld d, $ec

jr_029_7338:
    nop
    ld b, $fc
    rrca
    ld a, [$fa0f]
    cp $f0
    nop
    ld a, [$0204]
    db $fc
    add $f8
    db $fc
    nop
    nop
    rra
    nop
    ld hl, $381f
    rlca
    ld a, $13
    nop
    rra
    ld bc, $147f
    ld a, a
    ld [hl], $72
    ccf
    nop
    ld a, a
    ccf
    ld a, a
    rra

jr_029_7361:
    ld a, $1f
    dec e
    ld c, $00
    rrca
    nop
    rra
    dec c
    dec de
    dec c
    rrca
    nop
    nop
    ret nz

    nop
    ldh a, [$c0]
    ld l, b
    ldh a, [$08]
    ldh a, [rP1]
    inc b
    ld hl, sp-$1c
    jr jr_029_7361

    ret c

    call nz, $00b8
    call z, $c470
    ld a, b
    ld a, [c]
    inc a
    cp $0c
    nop
    cp [hl]
    ret nz

    and h
    ret c

    call z, $f8b0
    nop
    nop
    ccf
    nop
    ld h, b
    rra
    ld e, h
    inc hl
    ld a, a
    add hl, de
    ld bc, $003f
    ld a, a
    ld a, [de]
    ld a, a
    dec sp
    ld a, c
    dec a
    ld [$7f00], sp
    cpl
    ccf
    rra
    inc e
    rrca
    rrca
    nop

jr_029_73ae:
    db $10
    ld e, $0f
    jr jr_029_73b8

    ld [$00e0], sp
    ld hl, sp-$20

jr_029_73b8:
    nop
    inc [hl]

jr_029_73ba:
    ld hl, sp+$04
    ld hl, sp-$7e
    db $fc
    ld a, [c]
    inc c
    nop
    ld a, [c]
    ld l, h
    ld h, d
    call c, $b8e6
    ld [c], a
    cp h
    nop
    ld a, c
    sbc [hl]
    rst $38
    ld b, $df
    ld h, b
    ld a, [c]
    ld l, h
    nop
    or $68
    db $fc
    nop
    nop
    nop
    add b
    nop
    nop
    ld c, h
    add b
    ld e, a
    adc b
    ccf
    adc $2f
    sbc $00
    ld h, $d8
    jr z, jr_029_73ba

    ld [hl], b
    add b
    jr nz, jr_029_73ae

    nop
    sub b
    ldh [$f0], a
    ld h, b
    ldh a, [rP1]
    jr nz, @-$3e

    ld [$8060], sp
    ret nz

    nop
    rra
    ld a, c
    ccf
    ld e, [hl]
    add hl, sp
    nop
    cpl
    inc e
    ld e, a
    inc hl
    ld e, a
    inc a
    ld l, a
    dec e
    ld hl, $037d
    rra
    sub c
    ld [hl], l
    cp d
    call $1f72
    ld b, c
    add b
    ld e, a
    add c
    ld a, a
    inc e
    cp $6d
    rst $38
    ld h, e
    ld h, a
    add b
    ld e, a
    cp c
    db $fd
    ld h, d
    db $fd
    ld e, d
    rst $38
    sbc d
    rst JumpTable
    ld [$8260], sp
    db $fc
    ld b, $1f
    add hl, bc

jr_029_7430:
    nop
    nop
    inc bc
    stop
    rlca
    inc bc
    ld bc, $0208
    dec b
    ld [bc], a
    inc bc
    add b
    dec bc
    ld [$030c], sp
    dec e
    dec bc
    rra
    dec c
    rra
    ld a, [bc]
    inc c
    rra
    inc b
    rrca
    dec c
    ld [$3f00], sp
    add hl, bc
    dec a
    nop
    inc bc
    rst $38
    jr @+$01

    ld l, [hl]
    rst JumpTable
    rst $28
    rst $28
    nop
    rst $38
    ei
    db $fc
    db $fd
    rst $28
    rst $38
    ld c, a
    rst $28
    nop
    ld e, [hl]
    rst $38
    cp l
    inc sp
    call $32ff
    ei
    ld [$f774], sp
    ld l, b
    ei
    ld hl, $c008
    nop
    ldh [rP1], a
    add b
    or b
    ld b, b
    ldh a, [rP1]
    add sp, -$70
    add sp, $00
    sub b
    cp b
    ret nz

    cp b
    ret nc

    ld hl, sp+$30
    ld hl, sp+$00
    add b
    ret nc

    and b
    ret nc

    jr nz, jr_029_7430

    ld b, b
    ldh [rNR10], a
    ret nz

    ret nz

    nop
    nop
    rst $38
    rst $38
    add c
    add c
    and l
    and l
    sub c
    sub c

jr_029_749f:
    ld a, $89
    adc c
    dec h
    add hl, hl
    dec l
    rrca
    db $10
    ld b, b
    nop
    nop
    ld a, b
    inc bc
    nop
    rrca
    nop
    rra
    nop
    nop
    ccf
    nop
    ld a, $01
    ld a, c
    rlca
    ld [hl], e
    rrca
    adc b
    rra
    add b
    ldh a, [rP1]
    ld hl, sp+$01
    ld [$00fc], sp
    call c, $e000
    db $ec
    ldh a, [$e5]
    ld hl, sp+$63
    ld e, $e7
    nop
    jr jr_029_749f

    ld sp, $27d8
    or c
    ld c, a
    and a
    nop
    ld e, a
    rst $28
    ld e, $cd
    ld a, $de
    dec a
    ld e, [hl]
    add b
    ld bc, $3e08
    dec e
    cpl
    inc e
    rla
    add hl, bc
    ld c, $00
    ld b, $08
    ld [$00ff], sp
    rst $38
    nop
    ld b, $00
    ld hl, sp+$7a
    db $fc
    cp $84

jr_029_74f9:
    add [hl]
    ld a, b

jr_029_74fb:
    ld [hl-], a
    nop
    call z, $847a
    ld a, d
    add h
    ld a, [$fa04]
    nop
    inc [hl]
    ld a, [$fc34]
    nop
    db $fc
    ld hl, sp+$04
    nop
    inc b
    nop
    nop
    inc a
    nop
    ld b, d
    inc a
    and e
    nop
    ld e, h
    xor e
    ld e, h
    rst JumpTable
    jr z, jr_029_74fb

    ld a, [hl+]
    xor l
    nop
    ld e, d
    xor a
    ld e, b

jr_029_7524:
    ld e, [hl]
    jr nz, jr_029_75a5

    jr jr_029_758f

    ld [bc], a
    inc a
    ld h, [hl]
    inc a
    inc a
    jr jr_029_7548

    ld l, a
    jr z, @+$11

    nop
    rrca
    rla
    jr jr_029_7557

    db $10
    cpl
    jr nc, jr_029_757b

    ld b, b
    jr nz, jr_029_7540

    ld b, b

jr_029_7540:
    rrca
    jr nc, jr_029_7562

    db $10
    rla
    jr jr_029_7547

jr_029_7547:
    dec bc

jr_029_7548:
    inc c
    rlca
    rlca
    stop
    jr jr_029_754f

jr_029_754f:
    nop
    ld a, $00
    inc hl
    inc b
    ld h, c
    ld [hl+], a
    inc bc

jr_029_7557:
    ld b, d
    ld [hl-], a
    ld bc, $ad01
    add b
    nop
    jr nz, jr_029_74f9

    inc a
    add a

jr_029_7562:
    db $10
    rst $20
    dec b
    jr jr_029_7524

    jp $3c3c


    add hl, de
    ld h, b
    ld b, b
    ld bc, $4008
    ld h, b
    rst $08
    ld [$40df], sp
    rrca
    sbc b
    ld b, $07
    adc c
    ccf

jr_029_757b:
    or b
    nop
    nop
    jr @+$43

    jr jr_029_7600

    rst $38
    ld hl, $b0c0
    ld b, c
    sub c
    ld a, e
    ld d, c
    sbc b
    ld b, c
    ld sp, $e01c

jr_029_758f:
    inc e
    ldh a, [rP1]
    ld [hl], a
    rrca
    ld l, a
    rra
    rst $28
    rra
    rst $08
    ccf
    inc b
    rst $08
    ccf
    adc [hl]
    ld a, a
    sbc [hl]
    ld bc, $de18
    ccf
    ld b, b

jr_029_75a5:
    ld e, [hl]
    ld bc, $2e08
    ld e, a
    ccf
    jr nz, jr_029_75c8

    inc e
    ld [bc], a
    rlca
    rlca
    ld d, $f8
    ld [hl+], a
    db $fc
    ld bc, $4210
    add b
    ld bc, $4448
    ld hl, sp+$47
    ld hl, sp+$5f
    ldh [$fd], a
    ld [$f403], sp
    inc c
    ldh a, [$3f]

jr_029_75c8:
    adc b
    rst JumpTable
    jr nc, @+$81

    ld h, b
    nop
    add c
    ld b, c
    ccf
    ld d, b
    ld b, e
    db $fc
    ld b, a
    ld hl, sp-$01
    ld [hl], b
    nop
    ld a, a
    add hl, bc
    add c
    ld c, c
    call nc, RST_00
    ld b, b
    ld h, b
    ld d, b
    jr nz, @-$42

    ld d, b
    and [hl]
    ld e, h
    push af
    ld l, [hl]
    adc l
    db $76
    ld bc, $005f
    ld c, c
    ld [hl], $7d
    ld a, [hl-]
    inc hl
    inc e
    ld e, $02
    ld [bc], a
    rst $38
    push de
    nop
    inc bc
    rrca
    rra
    dec b
    nop

jr_029_7600:
    rra
    inc a
    inc bc
    jr nc, @+$11

    ld h, e
    ld l, a
    ld e, a
    ccf
    rst JumpTable
    ccf
    cp a
    ld a, [hl]
    cp [hl]
    ld a, l
    rst $38
    push de
    nop
    ret nz

    ldh a, [$f8]
    dec b
    nop
    ld hl, sp+$3c
    ret nz

    inc c
    ldh a, [$c6]
    or $fa

jr_029_761f:
    db $fc
    ei
    db $fc
    db $fd
    ld e, $1d
    xor $0a
    and b
    ei
    cp h
    ld a, e
    db $fd
    ld a, d

jr_029_762d:
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    db $fd
    ld a, d
    cp h
    ld a, e
    dec b
    nop
    rra
    ld a, [hl]
    dec a
    ld e, a
    ld a, $3f
    cpl
    rla
    cpl
    dec e
    inc de
    rlca
    inc c
    ld bc, $0a03
    and b
    rst $30
    rst $08
    ld [hl], $ef
    ld d, $0a
    jp z, $0aca

    rst $28
    ld d, $cd
    ld [hl], $05
    nop
    ld hl, sp+$1e
    db $ec
    cp $1c
    db $fc
    db $f4
    add sp, -$0c
    cp b
    ret z

    ldh [$30], a
    add b
    ret nz

    db $f4
    nop
    nop
    db $10
    jr z, jr_029_767c

    jr z, jr_029_767e

    ld d, h
    jr c, jr_029_76ed

    jr c, jr_029_762d

    ld a, h
    nop
    rra

jr_029_7676:
    nop
    sub d
    ld a, h
    add d
    ld a, h
    add d

jr_029_767c:
    ld a, h
    add [hl]

jr_029_767e:
    ld a, h
    ld e, h
    jr c, jr_029_76ba

    ld b, b
    dec b
    nop
    rlca
    jr @+$06

    jr nz, jr_029_769a

    ld c, [hl]
    ld l, $58
    jr jr_029_761f

    ld d, b
    add b
    add b
    nop
    ld b, $07
    sub b
    db $10
    ret nz

    ld b, b
    and b

jr_029_769a:
    ld h, b
    ld a, b
    jr c, @+$61

    ccf
    cpl
    rra
    dec de
    nop
    db $fc
    and b
    nop
    ld bc, $0903
    inc b
    db $10
    db $10
    ld [$8b18], sp
    rst $28
    nop
    ld [$6020], sp
    jr nz, jr_029_7676

    xor d
    ccf
    nop
    ld [bc], a

jr_029_76ba:
    sub d
    ld e, d
    ld c, b
    add b
    add b
    rst $38
    rst $38
    nop
    rst $38
    jr nc, jr_029_76c5

jr_029_76c5:
    ld bc, $0301
    inc bc
    add hl, bc
    dec bc
    nop

jr_029_76cc:
    dec bc
    nop
    ld b, $07
    inc d
    ld d, $0c
    ld c, $10
    inc e
    ld [$3808], sp
    inc a
    jr c, jr_029_76cc

    nop
    nop
    ld [de], a
    ld [de], a
    ld e, d
    ld e, d
    inc l
    ld a, $d0
    db $fc
    ld b, b
    ldh a, [$80]
    ret nz

    cp a
    rst $38
    nop

jr_029_76ed:
    add b
    sub b
    nop
    ld bc, $0600
    ld a, [bc]
    ld b, $11
    add hl, bc
    inc hl
    inc de
    scf
    rla
    ld b, [hl]
    ld h, $6c
    inc l
    adc d
    nop
    adc h
    ld c, h
    add b
    ld b, b
    ld c, h
    ld c, h
    ld h, b
    jr nz, jr_029_775a

    jr nc, jr_029_7744

    jr @+$31

    rra
    ld b, e
    rrca
    nop
    ld a, b
    add [hl]
    ld a, b
    add c
    add d
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    nop
    sub b
    nop
    add b
    nop
    ld b, b
    jr nz, @+$42

    db $10
    jr nz, @+$13

    nop
    dec bc
    db $10
    rrca
    ld [bc], a
    dec b
    ld c, $50
    nop
    inc b
    ld b, $02
    inc c
    ld [$1814], sp
    jr @+$12

    ld l, b
    ld [hl], b
    ldh a, [$e0]
    ldh [$c0], a
    ld bc, $00ff
    rra

jr_029_7744:
    rrca
    dec bc
    rlca
    ld b, $01
    ld bc, $ffff
    nop
    nop
    rra
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    cp $86

jr_029_7759:
    ld a, b

jr_029_775a:
    ld a, b
    rst $38
    rst $38
    nop
    ld [$8040], sp
    add b
    nop
    nop
    ldh a, [$03]
    nop
    inc b
    nop
    ld [bc], a
    ld [$1104], sp
    add hl, bc
    inc hl
    inc de
    daa
    nop
    rlca
    ld b, [hl]
    ld h, $6e
    ld l, $4c
    inc c
    add h
    nop
    ld b, h
    add b
    ld b, b
    adc b
    ld c, b
    sbc h
    ld e, h
    adc b
    nop
    ld c, b
    rra
    nop

jr_029_7787:
    ldh [$1f], a
    ld b, b
    ret nz

    jr c, jr_029_7791

    jr c, jr_029_7787

    ld hl, sp-$20

jr_029_7791:
    ldh [rWY], a
    sub b
    ret nz

    nop
    nop
    jr c, jr_029_7759

    ld b, $18
    ld bc, $0002
    ld bc, $6380
    ldh [$80], a
    nop
    ld b, b
    add b
    jr nz, jr_029_77e8

    jr nz, jr_029_77aa

jr_029_77aa:
    ld b, b
    db $10
    jr nz, @+$32

    jr nz, jr_029_77b9

    db $10
    dec de
    nop
    db $10
    rlca
    ld [bc], a
    dec b
    ld b, $06

jr_029_77b9:
    inc b
    ld [bc], a
    nop
    inc b
    add b
    ld b, b
    add b
    ld b, b
    ld h, b
    jr nz, jr_029_7834

    nop
    jr nc, jr_029_7823

    inc a
    ccf
    rra
    cpl
    rra
    rla
    ld [bc], a
    rrca
    dec bc
    rlca
    dec b
    inc bc
    inc bc
    ld b, c
    and b
    add b
    ld b, c
    rst $38
    nop
    jr z, jr_029_781b

    rst $38
    ldh [$1f], a
    rra
    dec e
    ld l, b
    ld [$0101], sp
    rrca
    rrca
    dec de

jr_029_77e8:
    db $10
    cp $ff
    db $fd
    ld [bc], a
    cp $e6
    ld hl, sp+$38
    ret nz

    ret nz

    rla
    jr z, @+$0e

    nop
    ld [$1814], sp
    jr z, jr_029_782c

    ld a, b
    ld h, b
    ret nc

    ld b, $e0
    ldh [$c0], a
    and b
    ret nz

    dec c
    add c
    nop
    ld bc, $0201
    inc bc
    ld b, $05
    ld c, $09
    nop
    ld e, $11
    ld a, $21
    ld a, a
    ld b, e
    cp a
    rst $20
    nop
    sbc a

jr_029_781b:
    or $bf
    rst $08
    db $eb
    sbc h
    ret z

    cp a
    nop

jr_029_7823:
    sbc e
    rst $28
    cp e
    adc $ff
    adc [hl]
    rst $38
    adc d
    nop

jr_029_782c:
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    and b
    ld [hl], b
    sub b

jr_029_7834:
    nop
    ld a, b
    adc b
    ld a, h
    db $e4
    sbc [hl]
    ld a, [c]
    call $00ff
    xor c
    ld a, a
    pop af
    rst $38
    db $d3
    cp l
    rla
    ld sp, hl
    nop
    ld e, l
    di
    ld sp, hl
    or a
    di
    ld a, l
    rst $30
    ld e, c
    nop
    rst $38
    adc d
    rst $28
    sbc b
    rst $08
    cp h
    adc a
    rst $38
    nop
    adc h
    ei
    adc e
    db $fc
    adc [hl]
    rst $38
    sub a
    db $fd
    nop
    and e
    rst $38
    ld b, c
    ld a, a
    ld hl, $113e
    ld e, $00
    add hl, bc
    ld c, $05
    ld b, $03
    ld [bc], a
    ld bc, $0001
    rst $38
    ld d, c
    rst $38
    ld de, $31ff
    db $fd
    di
    nop
    add hl, sp
    rst $10
    pop de
    ccf
    ld [hl], c
    rst $38
    jp hl


    cp a
    nop
    push bc
    rst $38
    add d
    cp $84
    ld a, h
    adc b
    ld a, b
    nop
    sub b
    ld [hl], b
    and b
    ld h, b
    ret nz

    ld b, b
    add b
    add b
    add b
    ld a, a
    jr nz, @+$0e

    dec bc
    dec e
    ld [de], a
    add hl, sp
    daa
    ld a, [hl]
    nop
    ld b, a
    db $fd
    adc a
    rst $38
    sub $ff
    xor a
    cp e
    nop
    db $ec
    or b
    rst $38
    or e
    rst $38
    or e
    cp $e7
    db $10
    cp $ef
    ld a, [$107f]
    and b
    ld h, b
    ret nc

    jr nc, jr_029_78be

jr_029_78be:
    add sp, $18
    db $f4
    db $ec
    ld e, $fe
    db $d3
    rst $38
    nop
    and e
    db $fd
    rst $00
    ld sp, hl
    call Call_029_59f3
    rst $20
    nop
    ld [hl], e
    call $d9e7
    rst $08
    ld [hl], c
    rst JumpTable
    ld h, c
    nop
    rst $38
    or d
    cp a
    ld hl, sp-$41
    db $e4
    cp a
    rst $20
    nop
    cp h
    ei

jr_029_78e4:
    cp e
    db $ec
    cp [hl]
    rst $28
    rst $00
    ld sp, hl
    nop
    adc a
    rst $38
    ld b, [hl]
    ld a, a
    ld h, $39
    ld [de], a
    dec e
    jr nz, jr_029_7900

    inc c
    ld a, a
    jr z, @+$43

    db $fd

jr_029_78fa:
    ld b, e
    ld sp, hl
    ld b, a
    nop
    pop af
    rst $08

jr_029_7900:
    ld h, c
    rst JumpTable
    pop bc
    ld a, a
    ld b, c
    rst $38
    nop
    and c
    rst $38
    inc de
    rst $38
    ld c, $fe
    inc c
    db $f4
    ld [bc], a
    jr jr_029_78fa

    jr nc, jr_029_78e4

    ld h, b
    and b
    ld a, a
    jr nc, jr_029_791e

    nop
    ld b, $0b
    inc c
    rla

jr_029_791e:
    jr jr_029_794f

    ld sp, $007e
    ld [hl], e
    db $fd
    rst $08
    rst $38
    add a
    cp $8f
    ld a, [$8f00]
    ld a, [c]
    rst JumpTable
    or e
    cp $93
    cp $c6
    db $10
    rst $38
    xor $fb
    rst $38
    jr nz, jr_029_796b

    ret nc

    cp b
    ld c, b
    nop
    sbc h
    db $e4
    ld a, [hl]
    ld a, [c]
    sbc a
    ld sp, hl
    rra
    db $eb
    nop
    scf
    call $9d67
    rst $08
    dec [hl]
    sbc a

jr_029_794f:
    ld h, l
    nop
    ccf
    rst $00
    ld a, l
    add a
    rst $38
    rlca
    rst $38
    or d
    ld [$9aff], sp
    rst $38
    and [hl]
    ld bc, $9a08
    ld a, [$008f]
    cp $8f
    push af
    sbc a
    ld hl, sp-$31
    ld [hl], b

jr_029_796b:
    ld a, a
    nop
    jr nc, jr_029_799e

    jr jr_029_7988

    inc c
    dec bc
    ld b, $05
    add b
    ld a, a
    db $10
    rst $30
    dec c
    rst $20
    dec e
    rst $00
    dec a
    add a
    db $10
    ld a, l
    rlca
    db $fd
    ld bc, $0b10
    rst $38
    sub c

jr_029_7988:
    rst $38
    nop
    ld h, d
    cp $64
    sbc h
    ld c, b
    cp b
    ret nc

    jr nc, @-$7e

    rst $38
    jr nz, @+$1a

    jr @+$36

    inc l
    ld [hl], d
    ld c, [hl]
    ld sp, hl
    inc b
    adc a

jr_029_799e:
    db $fd
    rst $10
    rst $38
    and e
    ld bc, $df40
    rst $30
    nop
    adc e
    db $fd
    ld b, [hl]
    ld a, d
    inc a
    inc h
    jr jr_029_79c7

    nop
    db $10
    db $10
    jr nz, @+$2a

    ld d, b
    ld b, h
    xor b
    adc d
    ld [bc], a
    ld d, l
    ld d, l
    xor d
    and d
    ld d, l
    ld bc, $3003
    adc d
    nop
    and d
    ld bc, $0255

jr_029_79c7:
    ld a, [hl+]
    inc d
    inc b
    ld [$0080], sp
    ld [$0414], sp
    ld [hl+], a
    ld a, [bc]
    ld d, c
    dec b
    xor b
    ld h, b
    add d
    dec e
    ld b, b
    inc bc
    ld [$8a55], sp
    xor b
    ld b, h
    ld d, b
    ld [$2028], sp
    db $10
    stop
    rrca
    nop
    adc e
    rlca
    ret nc

    rrca
    or e
    ld c, h
    nop
    sub e
    ld l, l
    ld b, a
    add hl, sp
    ld l, a
    dec d
    ccf
    dec c
    nop
    rrca
    rlca
    rrca
    inc bc
    rla
    ld [$173c], sp
    nop
    dec sp
    rla
    ld e, $01
    scf
    ld c, $1f
    nop

jr_029_7a09:
    nop
    add sp, $10
    ret c

    ld h, b
    ld [$49f0], sp
    or b
    nop
    rst $20
    ld e, b
    pop hl
    sbc [hl]
    ld a, [c]
    xor h
    db $fc
    or b
    nop
    ldh a, [$e0]
    ldh a, [$c0]
    add sp, $10
    ld a, h
    ret c

    nop
    cp h
    ret c

    jr jr_029_7a09

    db $fc
    nop
    ld hl, sp+$00
    add b
    nop
    or b
    inc a
    nop
    ld b, d
    inc a
    cp c
    ld b, [hl]
    push af
    nop
    ld a, [hl-]
    nop
    nop
    ld bc, $0200
    ld bc, $1005
    ld [bc], a
    rlca
    ld bc, $8069
    rlca
    inc bc
    dec bc
    inc b
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$c8], a
    jr nc, jr_029_7a74

jr_029_7a54:
    xor b
    ret nc

    ld l, c
    ld [hl], b
    cp $ec
    cp $c8
    db $ec
    nop
    db $10
    inc [hl]
    dec bc
    ld a, a
    inc sp
    ld a, b
    rlca
    rrca
    nop
    nop
    rlca
    inc bc
    inc bc
    ld bc, $0102
    rlca
    add b
    ld h, a
    ld a, b
    jr nc, jr_029_7a54

jr_029_7a74:
    ret nc

    ldh [rSVBK], a
    add b
    ldh a, [$03]
    ld h, b
    ret nc

    ld h, b
    ldh [rP1], a
    add b
    ld c, e
    ld [$7000], sp
    nop
    adc a
    nop
    sub $0f
    and b
    ld e, a
    add h
    ld a, e
    nop
    ld c, [hl]
    dec [hl]
    ld a, $09
    rra
    ld a, [bc]
    ccf
    dec de
    nop
    ccf
    rra
    ld e, $0f
    rrca
    nop
    inc c
    inc bc
    nop
    rra
    dec bc
    inc e
    inc bc
    inc bc
    nop
    inc bc

jr_029_7aa7:
    ld bc, $bb00
    nop
    ld [hl], h
    sbc e
    ld a, [de]
    db $ed
    ld c, $f5
    nop
    ld l, $d5
    ld e, $e1
    inc c
    di
    add $39
    nop
    cp h
    jp $997e


    sbc l
    ld [hl], b
    ld a, b
    ret nz

    nop

jr_029_7ac4:
    and b
    ret nz

jr_029_7ac6:
    jr @-$1e

    db $f4
    jr jr_029_7aa7

    adc b
    ld c, d
    nop
    ld d, l
    ld [$8040], sp
    ld bc, $2030
    dec d
    ld [$2030], sp
    ret nz

    ret nz

    ld e, a
    ld c, b
    ld [hl], e

jr_029_7ade:
    jr nz, jr_029_7b30

    jr nz, jr_029_7ade

    ret nz

    dec b
    cp c
    nop
    db $10
    rlca
    nop
    dec bc
    rlca
    db $10
    rrca
    add b
    ld bc, $2040
    rra
    ret nz

    ccf
    ld h, e
    inc e
    inc a
    ld bc, $7e03
    dec h
    ld a, a
    jr nc, jr_029_7b32

    dec bc
    ld e, a
    jr nz, jr_029_7b02

jr_029_7b02:
    jr nz, jr_029_7ac4

    jr nz, jr_029_7ac6

    ld [hl+], a
    ret nz

    ld [hl], $c0
    nop
    ld a, [hl+]
    call nc, $946a
    ld c, h
    or b
    sbc h
    ld l, b
    nop
    inc e
    add sp, $38
    ret nz

    ld [hl], b
    and b
    ldh [rP1], a
    ld [bc], a
    ld d, b
    and b
    adc a
    nop
    db $db
    rlca

jr_029_7b23:
    inc sp
    ld hl, $002f
    dec d
    rst $38
    rrca
    rst $30
    ld l, [hl]
    ld a, a
    ld [hl], $2d
    nop

jr_029_7b30:
    inc de
    rla

jr_029_7b32:
    ld [$070c], sp

jr_029_7b35:
    dec bc
    rlca
    jr jr_029_7b51

    rlca
    ccf
    nop
    sbc a
    ld hl, $3133
    rst $38
    ldh a, [$ef]
    ld bc, $fe76
    ld l, h
    call nc, $e8e8
    db $10
    dec d
    ld de, $7802
    add b
    db $ec

jr_029_7b51:
    ld [hl], b
    ld hl, sp+$00

Call_029_7b54:
    ld [hl], a
    add b
    ld c, $46
    dec b
    rst JumpTable
    add hl, bc
    dec de
    ccf
    dec de
    ccf
    jr nz, jr_029_7b61

jr_029_7b61:
    jr nz, jr_029_7b23

    ld [hl+], a
    ret nz

    ld [hl], $c0
    ld a, [hl+]
    call nc, Call_029_6a00
    sub h
    ld c, h
    or b
    sbc h
    ld l, b
    inc e
    add sp, $00
    jr c, jr_029_7b35

    ld a, b
    and b
    db $fc
    ld [$e83c], sp
    nop
    ret c

    ldh [$78], a
    add b

jr_029_7b80:
    db $ec
    ld [hl], b
    ld hl, sp+$00
    add b
    nop
    ret nz

    inc a
    nop
    ld e, d
    inc a
    add c
    ld a, [hl]
    adc a
    nop
    nop
    sub $0f
    and b
    ld e, a
    add h
    ld a, e
    ld c, [hl]
    nop
    dec [hl]
    ld a, $09
    rra
    ld a, [bc]
    ccf
    dec de
    ccf
    nop
    rra
    ld e, $0f
    rrca
    nop
    rla
    dec bc
    rra
    nop
    dec bc
    inc de
    inc c
    rrca
    inc bc
    rra
    nop
    cp b
    nop
    nop
    ld [hl], h
    sbc b
    ld a, [de]
    db $ec
    ld c, $f4
    ld l, $00
    call nc, $e01c
    ld [$c6f0], sp
    jr c, jr_029_7b80

    nop
    ret nz

    ld b, b
    add b

jr_029_7bc8:
    ret nz

    nop
    and b
    ld b, b
    sub b
    nop
    ld h, b
    ldh a, [rP1]
    ldh [$c0], a

jr_029_7bd3:
    ldh a, [rP1]
    ld b, b
    nop
    nop
    rst JumpTable
    nop
    xor h
    ld e, a
    add b
    ld a, a
    adc b
    nop
    ld [hl], a
    call c, $7c2b
    inc de
    ld a, $15
    ld a, a
    nop
    ld [hl], $7f
    ccf
    ccf
    jr jr_029_7c0e

    ld b, $0f
    ld [bc], a
    ld b, $1e
    ld bc, $1c3f
    ccf
    ld h, a
    ld [$0070], sp
    nop
    add sp, $30
    inc [hl]
    ret c

    inc e
    add sp, $5c
    nop
    xor b
    jr c, jr_029_7bc8

    db $10
    ldh [$8c], a
    ld [hl], b
    ld a, b
    add b

jr_029_7c0e:
    ccf
    ld [$c020], sp
    jr nc, @-$3e

    ld a, b
    sub b
    ld hl, sp+$20
    ld [hl], b
    db $fc
    rra
    ld [$0060], sp
    sub b
    ld h, b
    ld c, b
    jr nz, jr_029_7bd3

    ret z

    ld bc, $3010
    adc b
    ld [hl], b
    call nz, $0438
    add e
    ld a, h
    ld b, [hl]
    jr c, jr_029_7c69

    and l
    jr c, @+$1a

    jr jr_029_7c36

jr_029_7c36:
    inc l
    inc [hl]
    inc h
    inc a
    jr jr_029_7c54

Jump_029_7c3c:
    nop
    nop
    nop
    db $10
    db $10
    jr c, jr_029_7c6b

    db $10
    db $10
    ld [$0008], sp
    inc e
    inc d
    ld [$0208], sp
    ld [bc], a
    rlca
    dec b
    jr nz, jr_029_7c54

    ld [bc], a
    rra

jr_029_7c54:
    db $10
    rrca
    nop
    sub a
    ld c, $e2
    nop
    dec e
    and a
    ld e, d
    adc a
    ld [hl], a
    ld e, a
    dec hl
    ld a, a
    nop
    rrca
    rst $38
    ld l, l
    rst $30
    ld l, l

jr_029_7c69:
    ld l, e
    rla

jr_029_7c6b:
    rla
    nop
    ld [$070c], sp
    dec bc
    rlca
    ld e, $01
    scf
    nop
    ld c, $1f
    nop
    ld a, [$9a14]
    db $e4
    adc d
    nop
    ld [hl], h
    jp z, $c7b4

    cp b
    pop hl
    ld e, $f2
    nop
    db $ec
    db $fc
    ldh a, [$dc]
    ldh [$be], a
    call z, $00ce
    inc a
    ld e, h
    ldh [$90], a
    ldh [$30], a
    ret nz

    ld hl, sp+$20
    nop
    ldh a, [$1f]
    reti


    ld [hl], d
    inc c
    cp c
    db $76
    jr jr_029_7cbc

    jr @+$36

    inc l
    ld a, a
    ld d, b
    rlca
    jr nc, jr_029_7cec

    ld b, b
    ldh [rTIMA], a
    and b
    ld b, b
    ld b, b
    nop
    nop
    ccf
    ld c, c
    dec c
    ccf

jr_029_7cb8:
    add hl, bc
    ld b, b
    rra

jr_029_7cbb:
    ccf

jr_029_7cbc:
    ld [hl], c
    ld b, a
    nop
    ld l, e

jr_029_7cc0:
    rlca
    ld d, b
    cpl
    db $10
    ld b, d
    dec a
    daa
    inc de
    ld de, $1f02
    ld b, $1f
    nop
    add hl, bc
    rra
    rlca
    ccf
    jr jr_029_7d10

    dec de
    rra
    ld b, b
    rlca
    rra
    jr nz, jr_029_7cb8

    nop
    ld a, [hl-]
    call $f60d
    nop
    rlca
    ld a, [$ea17]
    rrca
    ldh a, [$86]
    ld a, c
    nop
    db $e3
    sbc h

jr_029_7cec:
    sbc $e1
    ld hl, $e0c0
    nop
    ld [hl], b
    and b
    add hl, hl
    add hl, bc
    ld e, a
    ld hl, $2000
    stop
    jr z, jr_029_7d0e

    nop
    jr z, jr_029_7d11

    ld d, h
    jr c, jr_029_7d80

    jr c, jr_029_7cc0

    ld a, h
    ld de, $7c92
    add d
    ld bc, $8608

jr_029_7d0e:
    ld a, h
    ld e, h

jr_029_7d10:
    dec h

jr_029_7d11:
    add hl, de
    ld b, l
    nop
    nop
    inc de
    ld a, a
    nop
    xor d
    add c
    rst $38
    ld hl, $2a91
    nop
    ld bc, $1101
    pop af
    nop
    xor c
    add c
    add b
    ccf
    cp $fd
    ld hl, sp+$00
    call nz, $fc80
    ld b, h
    add b
    inc bc
    ld [de], a
    ld hl, sp-$80
    ret nz

    ld hl, $7f00
    jr z, jr_029_7cbb

    nop
    nop
    dec e
    cp $1b
    dec de
    ld bc, $0600
    nop
    nop
    ld a, [de]
    nop
    ld c, $00
    add hl, sp
    nop
    ld [hl], a
    nop
    jr nz, @+$7e

    jr nz, jr_029_7dad

    jr nc, jr_029_7d92

    db $10
    dec l
    nop
    jr @+$21

    ld [$0c16], sp
    rrca
    inc b
    dec bc
    nop
    ld b, $07
    ld [bc], a
    ld h, l
    inc bc
    and e
    ld bc, $0ab3
    nop
    sbc $01
    nop
    add b
    add b
    ld b, c
    ld b, b
    nop
    nop
    ret nz

    nop
    jr nz, jr_029_7d77

jr_029_7d77:
    ldh [rP1], a
    sub b
    nop
    nop
    ld [hl], b
    nop
    pop bc
    nop

jr_029_7d80:
    add [hl]

Jump_029_7d81:
    ld bc, $069b
    rlca
    rst $28
    inc e
    ld a, [hl]
    or b
    cp a
    nop
    inc c
    inc e
    nop
    nop
    ld l, [hl]
    inc e
    cp [hl]

jr_029_7d92:
    ld [hl], b
    ei
    ret nz

    db $ed
    ld [$b500], sp
    nop
    sub $d3

jr_029_7d9c:
    inc c
    nop
    rla
    nop
    nop
    dec d
    nop
    dec l
    nop
    dec sp
    nop
    ld a, $03
    jr jr_029_7de2

    ld c, $0d

jr_029_7dad:
    inc bc
    inc bc
    rst $10
    nop
    inc c
    nop
    ret nz

    nop
    ld [hl], b
    nop
    ld e, h
    nop
    rst $10
    nop
    nop
    or l
    nop
    db $ed
    add b
    ld a, d
    ldh [$de], a
    jr c, @+$04

    scf
    ld c, $0f
    nop
    ld [bc], a
    ld bc, $0379
    add b
    ld hl, $0501
    inc bc
    rlca
    ld [bc], a
    dec bc
    ld b, $00
    ld c, $04
    rla
    inc c
    dec e
    ld [$182e], sp
    nop

jr_029_7de0:
    dec sp
    db $10

jr_029_7de2:
    ld e, h
    jr nc, jr_029_7e5c

    jr nz, jr_029_7de0

    jr nz, jr_029_7e09

    ld h, a
    add b
    ld a, a
    ret nz

    nop
    or b
    nop
    ret z

    nop
    nop
    ld a, b
    nop
    sub b
    nop
    ldh a, [rP1]
    jr nz, jr_029_7e09

    nop
    ldh [rP1], a
    ld b, b
    ld d, c
    jr c, jr_029_7d9c

    nop
    nop
    ld h, b
    add b
    sbc b
    ld h, b
    add l

jr_029_7e09:
    ld a, d
    adc [hl]
    ld [hl], c
    inc bc
    add $39
    ld a, d
    dec b
    ld [bc], a
    ld bc, $22a1
    db $ec
    sbc d
    add b
    ld c, h
    inc bc
    jr nz, jr_029_7e7f

    ld c, $0f
    jr c, jr_029_7e29

    rrca
    jr nz, jr_029_7e6d

    ld bc, $e00d
    ldh [$50], a
    nop

jr_029_7e29:
    ret nc

    ret z

    ret z

    ld c, b
    ret z

    ret c

    ret c

    ld l, b
    inc de
    ld hl, sp-$70
    ldh a, [$2d]
    ret nz

    ld b, b
    ld bc, $400e
    nop
    nop
    dec c
    ld bc, $0303
    rlca
    rlca
    rrca
    inc c
    ld b, $0f
    nop
    ld b, $17
    ld c, $60
    jr jr_029_7e8a

    add hl, bc
    ld [hl], b
    ld hl, sp-$40
    ldh [$15], a
    db $10
    add b
    ret nz

    ld [hl+], a
    add b
    dec h
    inc bc
    rlca

jr_029_7e5c:
    rrca
    rra
    inc de
    ccf
    dec l
    inc b
    ld [hl], e
    ld l, l
    ld [hl], e
    ld [hl], e
    rst $38
    and b
    ld e, a
    rst $38
    ld c, $60
    ld a, a

jr_029_7e6d:
    jr nc, @+$41

    dec [hl]
    dec sp
    ld h, b
    ldh [rTMA], a
    ldh a, [$f8]
    db $fc
    db $fc
    cp $40
    sbc e
    ld_long a, $ff00
    ld a, [c]

jr_029_7e7f:
    cp $c4
    cp $08
    db $fc
    jr nc, jr_029_7e9e

    ld hl, sp-$40
    ldh [$bf], a

jr_029_7e8a:
    nop
    add hl, bc
    inc bc
    rlca
    rrca
    sbc c
    ld hl, $0600
    dec d
    rrca
    nop
    add hl, bc
    db $fc
    cp $11
    db $10
    add hl, bc
    ldh [$f0], a

jr_029_7e9e:
    nop
    add b
    xor c
    rrca
    rra
    inc hl
    ld [$1f07], sp
    jr c, jr_029_7f25

    dec h
    ld bc, $0603
    ld b, $0f
    jr jr_029_7ecd

    nop
    jr nc, @-$47

    ldh [$e0], a
    nop
    ld hl, sp+$3c
    cp $fe
    rst $38
    rra
    ld a, a
    ld a, b

jr_029_7ebf:
    jr jr_029_7ebf

    ret nz

    ldh [rNR24], a
    ld c, $a0
    inc bc
    inc bc
    dec b
    nop
    ld b, $0b
    inc c

jr_029_7ecd:
    rla
    jr jr_029_7f44

    ld a, e
    or b
    nop
    rst $08
    db $ed
    sbc [hl]
    cp e
    call c, Call_029_7b54
    jr c, @+$14

    ccf
    rrca
    rrca
    ei
    inc b
    rlca
    dec sp
    rrca
    nop
    add hl, bc
    ld b, $06
    ld [hl], b
    ld [hl], b
    sbc b
    add sp, -$48
    ld bc, $b0c8
    ret nc

    ld h, e
    ld h, e
    rlca
    ld b, $33
    ret nz

    scf
    cp l
    dec b
    ld b, $37
    inc [hl]
    ld d, b
    ld h, b
    add c

Call_029_7f00:
    add hl, hl
    ld b, b
    ld b, b
    add b
    ret nz

    add e
    add e
    dec l
    nop
    rrca
    inc c
    inc d
    dec de
    ld de, $0e1e
    dec c
    jr nz, @+$09

    rlca
    ld e, [hl]
    ld b, $00
    inc c
    nop
    jr nz, @-$3e

    ld a, [hl-]
    ld c, c
    nop
    inc bc
    add e
    inc b
    rlca
    dec bc
    nop
    inc c

jr_029_7f25:
    dec de
    inc e
    inc l
    inc sp
    dec sp
    ld h, $2e
    db $10
    dec [hl]
    inc e
    rra
    ld a, a
    rrca
    rrca
    ccf
    inc a
    nop
    ld a, a
    ld [hl], e
    ld a, a
    ld l, a
    db $fd
    sbc $ff
    call c, Call_029_7f00
    db $dd
    ld a, a
    rst $08

jr_029_7f43:
    ld a, a

jr_029_7f44:
    db $e3
    or a
    ld hl, sp+$03
    call c, Call_029_67ff
    ld a, a
    dec sp
    inc a
    add hl, sp
    dec a
    add b
    jr nz, jr_029_7f5a

    rlca
    inc e
    rra
    dec a
    dec sp
    ld a, a
    nop

jr_029_7f5a:
    ld [hl], a
    ld a, l
    ld l, [hl]
    rst $38
    db $ec
    cp $ed
    rst $38
    nop
    db $e4
    rst $28
    di
    ld [hl], a
    ld a, b
    ld e, h
    ld a, a
    daa
    jr jr_029_7fac

    jr jr_029_7f8e

    add hl, sp
    cp a
    rra
    rra
    add hl, sp
    nop
    ccf
    ld [hl], a
    ld a, a
    ld l, l
    ld a, [hl]
    rst $28
    db $fc
    ld a, [hl]
    nop
    db $ed
    ld l, l
    or $be
    di
    dec sp
    ld a, h
    ld a, a
    add hl, de
    ld a, a
    ccf
    ccf
    dec [hl]
    rst $38
    ld e, $1f

jr_029_7f8e:
    dec l
    add b
    ld sp, $7f7e
    db $fd
    cp $ee
    db $fd
    db $ed
    ld [$f6fe], sp
    rst $38
    ld a, c
    ld a, [hl+]
    ld a, a
    scf
    ccf
    ld h, b
    jr jr_029_7f43

    ld b, h
    nop
    add b
    ld bc, $0300
    ld b, c
    rlca

jr_029_7fac:
    ld bc, $0d00
    inc bc
    ld c, $03
    ld e, $07
    inc [hl]
    rrca
    ld b, $38
    rrca
    ld a, a
    rra
    ld a, a
    cp d
    add b
    add b
    nop
    nop
    ld b, b
    add b
    ret nz

    add b
    ldh [$c0], a
    ld d, b
    nop
    ldh [$30], a
    ldh [$38], a
    ldh a, [rNR14]
    ld hl, sp+$0c
    ld [$fef8], sp
    db $fc
    cp $1f
    dec bc
    ld bc, $0300
    adc c
    ld b, c
    ld b, $01
    rlca
    ld b, c
    ld c, $03
    ld hl, $1c18
    rlca
    rra
    ld hl, $0b1f
    add b

jr_029_7fec:
    nop
    ld b, b
    ld [bc], a
    add b
    ret nz

    add b
    and b
    ret nz

    ld h, b
    ld b, c
    jr nc, @+$48

    ldh [rNR42], a
    jr jr_029_7fec

    ld hl, sp+$21
    rra
    dec bc

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX

Jump_035_4000:
    rst JumpTable
    ld de, $0203
    inc bc
    ld bc, $030c
    rra

jr_035_4009:
    nop
    ld [bc], a
    sbc a
    rst $00
    ld l, b
    sbc h
    rst JumpTable
    db $30, $ed
    ld b, b
    inc sp
    cp h
    dec c
    ld [bc], a
    ld sp, hl
    rlca
    ld [hl], b
    adc b
    jr nz, jr_035_401d

jr_035_401d:
    ldh a, [$60]
    jr nc, jr_035_4009

    ld d, b
    ld [hl], h
    adc b
    rst $08
    nop
    xor b
    rst $00
    call nz, $c2c3
    add e
    ld b, d
    ld de, $2201
    dec hl
    ld [de], a
    add hl, bc
    dec e
    rlca
    dec hl
    ld d, h
    dec c
    sub b
    ld bc, $f718
    ld [$0829], sp
    inc bc
    rst $38

Jump_035_4041:
    nop
    ccf
    nop
    ld [de], a
    dec a
    ld h, $3f
    inc d
    rra
    dec c
    rrca
    ld bc, $c406
    ld b, $f8
    inc b
    ld a, b
    ret z

    ld a, e
    jr nz, jr_035_4057

jr_035_4057:
    sbc $e0
    ld l, $18
    inc c
    inc b
    dec a
    ld a, b
    nop
    ld [c], a
    db $fd
    rst $38
    ld b, e
    rst $38
    ld c, h
    scf
    ld a, b
    nop
    ccf
    jr nz, jr_035_408b

    inc de
    ld l, l
    cp $c3
    add [hl]
    nop
    ld a, l
    ld a, $81
    add c
    jp nz, $d547

    ld e, e
    nop
    rst JumpTable
    ld h, d
    ld a, l
    add d
    rst $38
    inc b
    di
    inc c
    ret nz

    ld [hl-], a
    rra

jr_035_4086:
    ld bc, $e858
    cpl
    db $e3

jr_035_408b:
    inc [hl]
    xor d
    ld l, h
    ld [bc], a
    or h
    ld a, b
    or h
    ld l, b
    db $fc
    jr nz, jr_035_4086

    ld d, $f7
    nop
    db $e3
    sbc e
    ld a, a
    ld a, a
    ld bc, $011f
    ld e, $10
    ld bc, $010e
    sub d
    ld de, $1fb4
    cp a
    stop
    rra
    jr nc, @+$41

    db $10
    cpl
    db $10
    sbc a
    jr nc, jr_035_40b5

jr_035_40b5:
    cp [hl]
    pop af
    sbc c
    adc a
    ld hl, sp+$07
    ld d, c
    rst $28

Jump_035_40bd:
    inc b
    pop bc
    ld a, a
    and e
    ld a, a
    ld b, $ef
    dec c
    ld a, h
    cp b
    nop
    ld hl, sp-$10
    pop de
    jp c, $b6a0

    ret z

    db $ec
    inc l
    ld l, b
    jr nc, jr_035_4118

    dec l
    ld bc, $20e7
    cp a
    ld b, e
    rst $38
    ld c, [hl]
    nop
    sbc a
    rst $38
    ld hl, sp-$08
    jr nz, jr_035_4143

    nop

jr_035_40e4:
    rlca
    ld [bc], a
    inc c
    rra
    ld l, a
    jr nc, jr_035_4108

    ld a, $00
    ld hl, sp+$07
    rst $38
    ldh a, [rNR22]
    jr jr_035_4113

    stop
    ld l, a
    ldh a, [rIE]
    nop
    ld a, [$5500]
    nop
    inc bc
    or a
    ld h, h
    rst $28
    inc e
    rst $38
    inc b
    dec hl
    ld h, c
    nop

jr_035_4108:
    or e
    rrca
    ld c, a
    db $10
    pop bc
    ld a, $81
    ld h, c
    nop
    pop bc
    ld b, c

jr_035_4113:
    pop hl
    ld b, e
    sub d
    ld [hl], a
    adc b

jr_035_4118:
    ld a, e
    nop
    db $ec
    ei
    ld a, [de]
    rrca
    ret nc

    add hl, sp
    pop af
    ld de, $f300
    ld de, $33e1
    ld sp, hl
    inc hl
    cp h
    ld h, e
    nop
    db $ec
    ld d, e
    cp [hl]
    pop de
    db $fc
    add $b0
    ret nz

    nop
    ldh a, [$80]
    add b
    ldh [$98], a
    jr nc, jr_035_4179

    ccf
    nop
    ld a, a
    ld [hl], b
    ld l, h
    ldh a, [$1f]

jr_035_4143:
    ld h, c
    dec de
    rlca
    nop
    dec [hl]
    ld c, $3b
    inc c
    ld a, a
    jr @+$01

    ldh a, [rP1]
    rst $30
    inc e

jr_035_4152:
    db $e4
    ld h, $7f
    sbc h
    scf
    rst $38
    ld [bc], a
    ret nz

    jr nc, jr_035_40e4

    db $10
    db $10
    ld [$0421], sp
    nop
    inc c
    dec bc
    rlca

Call_035_4165:
    rst $38
    nop
    rst $38
    add b
    cp a
    nop
    ld b, b
    ccf
    jr nz, jr_035_41ae

    db $10
    dec c
    db $10
    ld a, [de]
    nop
    db $10
    ld [hl], b
    jr nz, jr_035_4152

    inc a

jr_035_4179:
    pop af
    rra
    ldh a, [$80]
    ld b, c
    cp $11
    ld c, c
    db $10
    cp b
    db $10
    ld e, b
    nop
    jr jr_035_418f

    nop
    and e
    pop bc
    rst $38
    rst $38
    and c
    nop

jr_035_418f:
    rst $38
    and b
    cp a
    cp [hl]
    and c
    inc hl
    sub b
    reti


    nop
    sub b

jr_035_4199:
    add e
    inc c
    rrca
    inc b
    cp a
    inc b
    rst JumpTable
    nop
    xor b
    rst JumpTable
    or b
    rst $38
    ldh [$ab], a
    add b
    sub l
    nop
    add b
    ldh a, [rNR41]
    and b

jr_035_41ae:
    ld b, b
    ret nz

    ld b, b
    nop
    ld b, l
    add b
    ld h, b
    ld b, e
    add b
    cp a
    add hl, hl
    ld bc, $0021
    ld [bc], a
    ld bc, $0106
    ld e, $01
    ld a, [hl]
    ld bc, $fe40
    ld b, c
    dec b
    inc bc
    nop
    nop
    ld l, b
    ldh a, [rTMA]
    and $9c

jr_035_41d0:
    call nc, $a003
    jr z, @+$22

    add b
    sbc e
    jr nz, jr_035_4199

    ld b, b
    jr nz, jr_035_4200

    add b
    ld l, l
    ld b, b
    nop
    inc de
    inc a
    scf
    ld [hl+], a
    dec b
    ld c, $17
    jr c, jr_035_41e9

jr_035_41e9:
    ld e, a
    ld h, b
    cp a
    ld b, b
    ei
    add a
    add sp, -$68
    nop
    add hl, bc
    inc c
    ld [$870c], sp
    ld [$0f88], sp
    nop
    sbc h
    ld [$34c2], sp
    and b

jr_035_4200:
    jp $0001


    nop
    ld e, e
    db $ec
    ld a, e
    daa
    add sp, $77
    inc [hl]
    rst $38
    nop
    inc b
    rlca
    db $76
    rrca
    rst $38
    rra
    ld [hl], e
    di
    nop
    ret c

    ldh a, [rNR14]
    di
    inc [hl]
    ld hl, sp+$23
    di
    nop

jr_035_421f:
    db $76
    db $e3
    ld d, h
    rst $20
    db $e4
    rst $00
    or c
    add $00
    or $3a
    ld h, b
    and d
    jr nz, jr_035_421f

    and b
    ld sp, $f100
    ldh a, [rNR10]
    ld hl, sp+$30
    ld hl, sp-$28
    ret z

    nop
    ld e, $01
    db $fc
    inc bc
    di
    rrca
    adc [hl]
    ld a, [hl]
    nop
    db $fc
    db $fc
    add b
    ret nz

    ld h, b
    ret nz

Jump_035_4249:
    ld d, b
    jr c, jr_035_41d0

    inc hl
    ret nz

    add b
    add b
    nop
    jr nz, jr_035_4254

    inc bc

jr_035_4254:
    nop
    inc bc
    ld b, $07
    inc c
    rrca
    jr @+$0a

    jr jr_035_425e

jr_035_425e:
    dec de
    daa
    dec d
    jr c, @+$5f

    ldh [$fd], a
    nop
    nop
    ret c

    nop
    push bc
    nop
    sbc a
    nop
    ret z

    ret c

    nop
    call z, $3ffc
    rlca
    ldh [$1f], a
    rst $38
    nop
    add b
    ld h, c
    cp $01
    jp nz, $f840

    ldh a, [$f8]
    nop
    ret z

    ld a, h
    add sp, $7c
    db $f4
    inc e
    db $fc
    adc h
    nop
    ld a, [hl]
    rst $08
    scf
    ld a, a
    ld b, b
    ld e, a
    jr nz, @+$41

    add b
    ld hl, $0f10
    db $10
    rra
    ld [$0c07], sp
    ld [bc], a
    rlca
    add [hl]
    db $fd
    inc bc
    rst $28
    rra
    inc hl
    db $fc
    inc d
    inc bc
    rst $38

jr_035_42a8:
    nop
    and c
    add b
    ld b, b
    ldh a, [$c0]
    jr jr_035_42a8

    ldh a, [$e0]
    ld b, a
    ld l, h
    push de
    or a
    ld c, h
    nop
    xor h
    call $8b2f
    ld c, b
    ld c, b
    ld d, c
    ld de, $1105
    dec e
    ld de, $113f
    inc sp
    add c
    ld hl, $8100
    nop
    add e
    add d
    ld b, $04
    inc c
    ld e, $00
    jr jr_035_4312

    jr nz, jr_035_432e

    jp nc, $8c87

    add a
    nop
    inc b
    dec de
    add hl, bc
    ld a, [hl-]
    ld [de], a
    inc h
    inc h
    ld l, b
    nop
    ld c, b
    ret nz

    sbc b
    rst $28
    adc b
    sbc b
    sub b
    ret nz

    nop
    ldh [$a1], a
    ld hl, $a223
    inc hl
    ld h, d
    ld d, l
    dec b
    ld h, d
    db $dd
    ld [c], a
    sbc b
    add b
    add b
    nop
    ld h, b
    adc d
    dec h
    ret nz

    nop
    inc b
    ld h, b
    ld [bc], a
    ld b, b
    ld bc, $0300
    ld bc, $0300
    inc bc
    ld [bc], a
    ccf
    stop

jr_035_4312:
    ld a, $20
    inc e
    ld h, b
    ld sp, hl
    add b
    ld h, c
    add b
    nop
    pop bc
    nop
    or b
    nop
    ldh a, [rP1]
    ccf
    nop
    db $10
    ld a, a
    nop
    rst $38
    ld bc, $f80b
    rlca
    cp $01
    ret nz

jr_035_432e:
    db $eb
    ld l, c

jr_035_4330:
    rrca
    pop af
    rlca
    ld hl, sp+$03

jr_035_4335:
    db $fc
    ld [bc], a
    add c
    ld a, [hl]
    add a
    ld a, b
    adc a
    ld [hl], b
    add hl, hl
    dec bc
    nop
    db $f4
    add d
    jp Jump_035_71d1


    ret nc

    jr nc, jr_035_4330

    ld bc, $f010
    ld [$08f4], sp
    db $fc
    inc b
    ld hl, $ff00
    nop
    ld a, [hl]
    add c
    rst $38
    add b
    cp a
    ld b, b
    ld b, b
    ccf
    ld b, c
    rra
    ld h, b
    ld a, a
    jr nz, @+$01

    rst $38
    ld a, h
    ld a, a
    ld b, c
    ld [hl+], a
    ld h, l
    ld b, a
    ld a, $80
    jp nz, Jump_035_4000

    push bc
    ld b, b
    nop
    ld b, b
    ld h, b
    jr nz, jr_035_4335

    nop
    ldh [$c0], a
    ret nz

    nop
    ret nz

    add b
    nop
    or [hl]
    inc d
    nop
    call c, $a000
    inc b
    ld l, $00
    ccf
    nop
    ld hl, $6047
    ld b, a
    ld b, b
    ld c, a
    ld b, b
    ld e, a
    jr nz, jr_035_43d2

    ld a, a
    add c
    rst $38
    pop bc
    ld a, [hl]
    add e
    db $fd
    db $10
    inc bc
    rst $38
    nop
    pop hl
    and c
    ld sp, $c3f2
    nop
    ld a, [$f406]
    inc c
    add sp, $19
    cp e
    ld h, c
    nop
    ld a, [$fe03]
    dec b
    rst $38
    ld b, d
    ld a, a
    ld b, c
    nop
    ld [hl], a
    ld b, b
    and e
    ret nz

    ret nz

    add c
    sbc c
    db $fd
    ld bc, $c383
    db $fc
    db $fd
    rst $30
    nop
    rst $38
    ld hl, $8000
    cp a
    ret nz

    rst $38
    ld h, b
    dec de
    inc a
    adc a
    nop
    inc b
    add c

jr_035_43d2:
    add [hl]
    dec b
    ld [bc], a
    add e
    inc b
    rst $00
    add hl, hl
    inc b
    add a
    ld b, c
    rlca
    add l
    ldh a, [rP1]
    ld hl, $f918

jr_035_43e3:
    nop
    pop hl
    ld b, e
    daa
    ldh [rP1], a
    ret nc

    jr nz, jr_035_43ec

jr_035_43ec:
    rst $38
    ld bc, $7f09
    nop
    rrca

Jump_035_43f2:
    nop
    rra
    ld bc, $9d00
    ld h, d
    rra
    ldh [$bf], a
    ld b, b
    ld hl, $f580
    ld a, [$d804]
    ld b, $de
    ld [bc], a
    adc $02
    ld [bc], a
    db $ec
    ld [bc], a
    db $fc

jr_035_440b:
    inc bc
    db $dd
    ld b, c
    ccf
    nop
    jr nz, jr_035_4450

    ld hl, $316e
    cpl
    ld [hl], c
    ld a, a
    jr nz, jr_035_440b

    sbc a
    ld hl, $e771
    add hl, de
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_035_4445

    jr nz, jr_035_4476

    jr nz, jr_035_4428

jr_035_4428:
    db $10
    jr jr_035_442c

    nop

jr_035_442c:
    inc c
    ld [$040d], sp
    jr z, jr_035_4432

jr_035_4432:
    jr nz, jr_035_4434

jr_035_4434:
    ld b, b
    nop
    ld bc, $0701
    ld [bc], a
    rrca
    inc c
    nop
    ld sp, $c318
    ldh [$3f], a
    ld h, b
    ld a, a
    ld b, b

jr_035_4445:
    add hl, bc
    ld a, a
    add b
    rst $38
    nop
    and c
    cp $01
    rst $20
    nop
    db $fd

jr_035_4450:
    inc bc
    ld a, [$f806]
    inc c
    add sp, -$10
    nop
    rst JumpTable
    add hl, sp
    rst $38
    inc bc
    db $fc
    dec b

Jump_035_445e:
    pop af
    ld sp, hl
    jr nz, jr_035_43e3

    ld bc, $0060
    ld bc, $fbbf
    or a
    nop
    sub e
    add l
    rst JumpTable
    rst $08
    db $dd
    ld a, [$8dcd]
    nop
    ld [$6ae7], a

jr_035_4476:
    db $fd
    xor $83
    add [hl]
    inc bc
    inc b
    add d
    ld [bc], a
    add e
    add c
    inc bc
    dec sp
    ld hl, $0201
    add c
    nop
    xor d
    nop
    add a
    inc b
    ld hl, $20c7
    inc b
    jp $0223


    jp Jump_035_6102


    add d
    dec b
    ldh [$81], a
    ld hl, sp+$00
    cp $81
    db $fc
    add c
    db $10
    ei
    nop
    rra
    ld b, c
    rrca
    nop
    rlca
    nop
    scf
    ld bc, $2000
    ld a, e
    rst $38
    ld bc, $3509
    jr nz, @+$5d

    ld [bc], a
    ld b, a
    rst $30
    ld d, a
    ld hl, $4de0
    jr nz, jr_035_44bd

    inc bc

jr_035_44bd:
    nop
    adc a
    ld bc, $010f
    ccf
    ld b, c
    db $10
    ld a, a
    ld bc, $437e
    db $fd
    inc bc
    rst $08
    add hl, sp
    add b
    ld h, c
    add [hl]
    ld a, c
    add d
    ld a, l
    add [hl]
    ld a, l
    add a
    ld b, b
    ld a, h
    ld hl, $0703
    inc bc
    ld [bc], a
    add b
    nop
    add b
    ld hl, $00c0
    rst $20
    nop
    rst $38
    ret nz

    rst $38
    nop
    nop
    add e
    nop
    rlca
    nop
    rrca
    nop
    ccf
    ret nz

    dec hl
    pop hl
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$00
    ld [$10f8], sp
    ldh a, [rNR41]
    ret nz

    ld h, b
    ret nz

    inc d
    add b
    add b
    nop
    nop
    ld c, $01
    ld b, b
    dec e
    ccf
    ld bc, $3f63
    ld bc, $417f
    ld a, a
    ld b, b
    ld b, c
    nop
    rst $28
    db $fc
    xor a
    inc e
    ld sp, $1afe
    dec a
    nop
    sbc b
    rst $28
    ld de, $a8be
    sbc a
    add sp, -$61
    nop
    call nc, $ea00
    db $10
    ld d, h
    xor d
    xor d
    ld d, h
    nop
    ld b, [hl]
    cp b
    ld bc, $06fc
    ld hl, sp+$04
    ld hl, sp+$00
    pop af
    add c
    ld [hl], c
    add c
    ld a, e
    ld b, c
    ld e, e
    ld h, e
    nop
    jr c, jr_035_4566

    dec c
    db $10
    ld e, $17
    inc c
    jr jr_035_456d

    rst $38
    nop
    ld h, c
    ld a, a
    ret nz

    rra
    jr nz, jr_035_4574

    inc bc
    ldh [$f7], a
    jr c, jr_035_4599

    ld [$8ffe], sp
    ld bc, $010a
    inc bc
    nop
    adc a
    nop
    sbc a
    nop

jr_035_4566:
    cp a
    rrca
    add hl, bc
    add hl, de
    di
    nop
    ei

jr_035_456d:
    ld b, c
    rra
    ld a, [bc]
    rst $38
    ld [bc], a
    ld b, c
    nop

jr_035_4574:
    inc b
    rst $30
    inc c
    rst $38
    inc c
    rst $28

jr_035_457a:
    jr jr_035_457a

    inc b
    ld de, $21fe
    add a
    ld a, h
    ld hl, $fc07
    ld b, b
    rrca
    add c
    ld c, $f5
    ld b, $f5
    rst $38
    nop
    nop
    cp a
    ret nz

    sbc a
    ldh [rIE], a
    add b
    rst $28
    ldh a, [rP1]
    rst $28

jr_035_4599:
    di
    cp $fc
    rst $38
    rst $38
    db $fd
    inc bc
    nop
    cp $06
    add sp, $1c
    ldh a, [$30]
    db $e3
    ld h, b
    add hl, bc
    rst $38
    pop bc
    rst $38
    rra
    cpl
    add b
    nop
    and b
    inc c
    adc h
    nop
    ld a, b
    adc c
    dec l
    jr nz, jr_035_45ca

    nop
    ld b, c
    db $10
    ld b, b
    ld a, b
    db $10
    inc h
    ld hl, sp+$7f
    ld l, [hl]
    nop
    rst $38
    ld b, b
    ld a, a
    nop
    ld a, a

jr_035_45ca:
    jr nz, @+$41

    nop
    adc b
    ld hl, $ff1f
    ld hl, sp+$6f
    ld c, b
    rst JumpTable
    ld e, b
    ld [$28df], sp
    rst $38
    jr @+$27

    cp a
    reti


    ld a, $80
    ld l, a
    ld [$18f0], sp
    ldh [$30], a

Call_035_45e6:
    ret nz

    nop
    inc b
    ret nz

    ld b, b
    add b
    add b
    nop
    ld l, a
    jr @+$12

    nop
    ld bc, $1b30
    ld hl, $427c
    ld a, l
    ld b, [hl]
    jr nz, @+$7f

    ld b, d
    ld l, a
    dec sp
    inc c
    sub $ef
    add d
    dec d
    dec b
    nop
    nop
    dec a
    cp $3f
    ld bc, $8050
    dec h
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld c, a
    ld [hl], b
    inc c
    jp $c1dc


    add $af
    ld hl, $08f7
    ld [bc], a
    di
    inc c
    db $dd
    ld l, $bf
    ld c, a
    rst $28
    rst $38
    ld bc, $ff03
    dec b
    rst $30
    add hl, de
    rst $28
    pop de
    ld l, $00
    db $fc
    ld h, e
    ld e, b
    rst $20
    ld hl, sp-$79
    ldh a, [$8f]
    ld [bc], a
    ldh a, [rIF]
    ld [c], a
    ld e, $c6
    ld a, $2f
    ld d, $00
    push hl
    daa
    push hl
    ld l, l
    jp $cbcd


jr_035_464a:
    dec bc
    dec b
    rrca
    rrca
    rra
    ccf
    ld a, a
    cpl
    nop
    nop
    rrca
    nop
    add [hl]
    and [hl]
    and [hl]
    add l
    ret nc

    pop de
    jp nc, $00d3

    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    and b
    rrca
    db $10
    add e
    nop
    ld c, b
    sub [hl]
    sub h
    sub h
    sub l
    call nz, $c500
    add $c7
    ret z

    ret


    jp z, $cccb

    jr jr_035_464a

    adc $cf
    rrca
    db $10
    rra
    ld d, b
    and l
    and h
    and h
    ld [hl], b
    and l
    ccf
    ld d, b
    rrca
    db $10
    rra
    ld d, b
    and d
    and e
    and b
    and c
    ld h, $04
    dec b
    ccf
    jr nc, jr_035_46a6

    rrca
    rrca
    db $10
    rra
    ld d, b
    xor [hl]
    ld bc, $12ae
    inc de
    inc d
    dec d
    ld d, $17

jr_035_46a6:
    ccf
    jr nz, jr_035_46ab

    ld e, $1f

jr_035_46ab:
    ld [$ae12], sp
    xor [hl]
    rra
    ld d, b
    jr nz, @+$03

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    ccf
    stop
    inc l
    dec l
    ld l, $2f
    add d
    dec e
    inc c
    dec c
    add b
    rra
    ld d, b
    jr nc, jr_035_46fb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $40
    add d
    ccf
    db $10
    inc a
    dec a
    add d
    ccf
    ld a, [bc]
    dec bc
    jr nz, jr_035_46e5

    dec bc
    rra
    ld d, b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l

jr_035_46e5:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld bc, $4e4d
    ld c, a
    jr jr_035_470b

    ld a, [de]
    dec de
    rra
    ld d, b
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_035_46fb:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c

jr_035_4702:
    ld e, d
    ld e, e
    add e
    ld e, l
    ld e, [hl]
    ld e, a
    ld [$2928], sp

jr_035_470b:
    ld a, [hl+]
    dec hl
    rra
    ld d, b
    ld h, b
    ld h, c
    ld h, d
    nop
    ld h, e
    ld h, h
    ld h, l
    add c
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    jr c, jr_035_475c

    ld a, [hl-]
    ld b, b
    dec sp
    rra
    ld d, b
    add [hl]
    ld e, h
    ld b, $07
    add c
    adc d
    nop
    add c
    scf
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    add c
    dec b
    add c
    adc d
    rlca
    ld b, $5c
    ccf
    ld l, c
    xor [hl]
    nop
    ld [$8a00], sp
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    add c
    ret nz

    dec bc
    db $10
    ccf
    ld [hl], c
    sub b
    sub d
    sub b
    sub d
    xor l
    adc d
    adc h
    ld b, e
    ld [$818a], sp
    xor l

jr_035_475c:
    dec bc
    db $10
    ccf
    ld [hl], c
    sub c
    sub e
    ld de, $9391
    xor a
    jr c, jr_035_4778

    xor [hl]
    xor [hl]
    xor a
    dec bc
    db $10
    sub b
    ccf
    ld h, c
    add [hl]
    add h
    inc sp
    db $10
    sub b
    sub d
    add b
    adc c

jr_035_4778:
    inc l
    add b
    adc c
    add hl, bc
    jr nz, jr_035_4702

    ld a, a
    ld l, b
    inc sp
    db $10
    sub c
    sub e
    inc c
    adc c
    ld a, [hl]
    adc c
    add b
    add hl, bc
    jr nz, @+$81

    ld h, b
    and [hl]
    add l
    call z, $1041
    inc e
    ld [$7f89], sp
    ld [hl+], a
    ld [$103d], sp
    add [hl]
    and [hl]
    sbc b
    rra
    ld d, b
    sub h
    sub l
    ld b, c
    db $10
    inc e
    jr @+$80

    adc c
    ld a, a
    sbc b
    dec a
    db $10
    sub [hl]
    sub h
    rra
    ld d, b
    dec b
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    inc c
    nop
    ld b, b
    dec bc
    rrca
    db $10
    ld l, e
    dec c
    nop
    ld c, b
    rra
    ld l, b
    inc c
    rra
    ld [hl], b

jr_035_47c3:
    ld a, [hl+]
    ccf
    ld l, b
    rrca
    db $10
    db $fd
    rra
    ld d, b
    dec sp
    ld d, b
    nop

Jump_035_47ce:
    jr nc, jr_035_482f

    ld e, b
    dec l
    ld [$581b], sp
    dec l
    ccf
    ld h, b
    or c
    ld b, b
    ld [hl], b
    dec bc
    dec a
    ld e, b
    ld e, $60
    ld [$0b08], sp
    ld e, a
    ld a, b
    sub [hl]
    ld hl, $0850
    ld [$1841], sp
    dec bc
    ld e, $78
    ld b, $28
    rrca
    db $f4
    rra
    ld [$0809], sp

jr_035_47f7:
    rra
    ld e, b
    dec e
    jr nz, jr_035_4806

    rra
    jr jr_035_480a

    ld a, [bc]
    ei
    sbc e
    jr jr_035_47c3

    ld h, b
    rst $28

jr_035_4806:
    ld [$08f3], sp
    rra

jr_035_480a:
    jr z, jr_035_4836

    nop
    ld [$713f], sp
    ld l, a
    ld c, d
    nop
    ld [$1012], sp
    dec bc
    ld a, $08
    dec bc
    jr jr_035_485b

    ld a, c
    ld b, c
    db $10
    db $fd
    add hl, sp
    jr nz, jr_035_4823

jr_035_4823:
    jr nz, @+$81

    ld h, b
    ld de, $3710
    stop
    ld [$0b6a], sp
    db $10

jr_035_482f:
    rst JumpTable
    ccf
    ld l, c
    dec [hl]
    jr nc, jr_035_485f

    add hl, bc

jr_035_4836:
    jr c, jr_035_47f7

    ld a, c
    nop
    ld [hl], b
    ld a, a
    ld h, c
    ld hl, $de18
    dec a
    db $10
    ld b, c
    jr nc, jr_035_486f

    rra
    adc b
    nop
    ld d, b
    rra
    ld e, b
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

jr_035_485b:
    adc e
    adc h
    adc l
    add b

jr_035_485f:
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

jr_035_486f:
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
    jr jr_035_4929

    ld a, [de]
    rra
    ld [de], a
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_493c

    ld [hl+], a
    inc hl
    inc b
    inc h
    dec h
    ld h, $27
    jr z, jr_035_4943

    ld [de], a
    add hl, hl
    ld a, [hl+]
    nop
    dec hl

jr_035_4929:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_4960

    ld [hl-], a
    ld [$3433], sp
    dec [hl]
    ld [hl], $1f
    ld [de], a
    scf
    jr c, jr_035_4973

    nop
    ld a, [hl-]

jr_035_493c:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_035_4943:
    db $10
    ld b, d
    ld b, e
    ld b, h
    rra
    ld [de], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    jr nz, jr_035_49a9

    ld d, d

jr_035_4959:
    rra
    ld [de], a
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_035_4960:
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld h, b
    rra
    ld [de], a
    nop
    jr nz, @+$60

    ld bc, $1f00

jr_035_4973:
    inc bc
    ld b, c
    ld [hl+], a
    ld b, e
    ld b, b
    nop
    or a
    rra
    inc de
    nop
    nop
    dec c
    rra
    ld d, d
    ld bc, $3f1f
    ld e, $1f
    rra
    ld l, $5f
    nop
    rra
    ld [hl], d
    ld bc, $621f
    and [hl]
    add hl, bc
    add hl, bc
    nop
    ld l, $40
    nop
    ld b, b
    db $ec
    db $ec
    call c, $ddb4
    or l
    nop
    db $fd
    sub l
    db $ed
    sub l
    db $dd
    and l
    cp $a7
    add hl, bc
    xor $b7

jr_035_49a9:
    rst $38
    or [hl]
    ld hl, $dfdf
    ld a, c
    and d
    and b
    rst $20
    jr nz, jr_035_4959

    ld d, a
    or l
    ld hl, $00f6
    dec d
    rst $30
    ld d, h
    xor $5d
    rst $28
    dec e
    ld e, a
    inc b
    db $ed
    rst $38
    db $ed
    cp a
    cp a
    rra
    ld a, [bc]
    ld [hl], e
    ld [hl], e
    nop
    or e
    jp nc, $b6d5

    and l
    ld h, [hl]
    rst $00
    ld b, h
    nop
    ld b, a
    push bc
    bit 1, l
    xor e
    ld l, h
    db $dd
    cp e
    ld [$dbbf], sp
    ld a, [hl]
    ld a, [hl]
    rra
    ld a, [bc]
    sbc l
    sbc l
    sbc e
    nop
    sub [hl]
    ld e, e
    sub $5f
    jp nc, Jump_035_52dd

    db $db
    nop
    ld d, h
    cp a
    ld [hl], h
    cp l
    db $76
    ld a, a
    or [hl]
    rst $38
    db $10
    or [hl]
    ei
    ei
    rra
    ld a, [bc]
    cp [hl]
    cp [hl]
    db $dd
    db $e3
    inc bc
    db $eb
    db $dd
    rst $38
    db $dd
    rst $30
    push de
    ld h, c
    daa
    push af
    dec hl
    cpl
    inc sp
    rra
    ld a, [bc]
    cp $20
    xor d
    ld hl, $d642
    ld b, c
    cp $82
    xor e
    rst $10
    ld hl, $05ff
    rst $10
    ld a, l
    ld d, l
    ld l, l
    ld l, l
    rra
    ld a, [bc]
    ld [hl], a
    jr nz, jr_035_4a2a

jr_035_4a2a:
    ld d, h
    xor a
    rst JumpTable
    xor c
    reti


    ld sp, hl
    adc c
    ld sp, hl
    inc b
    xor c
    ld [hl], l
    xor l
    ld [hl], l
    adc l
    ld [hl+], a
    db $fd
    ld [hl], l
    jr z, @-$21

    db $dd
    rra
    ld a, [bc]
    rst $30
    jr nz, jr_035_4a58

    ld a, [$007d]
    jp z, $cf4d

    ld c, b
    rst $08
    ld c, d
    rst $10
    ld e, d
    ld [bc], a
    rst $10
    ld e, b
    jp c, $df57

    ld d, a
    rra
    inc c
    ccf

jr_035_4a58:
    ld bc, $3e3f
    ld hl, $aebd
    cp e
    xor d
    inc hl
    nop
    cp [hl]
    and c
    ld a, a
    db $ed
    ld a, [hl]
    db $ed
    db $fd
    ld l, [hl]
    ld [$6afb], sp
    ei
    ei
    rra
    ld a, [bc]
    jr c, jr_035_4aab

    cp b
    ld c, e
    xor b
    pop hl
    jr c, jr_035_4aa1

    ret


    cp b
    cp e
    ld b, b
    nop
    nop
    ld de, $fdfd
    push af
    adc l
    db $fd
    or l
    add d
    ld b, e
    cp l
    pop hl
    and c
    pop hl
    pop hl
    rra
    ld [de], a
    ld sp, hl
    nop
    ld sp, hl
    ld [$fb1b], a
    ld l, d
    db $eb
    ld a, [de]
    ei
    jr jr_035_4af5

    jp c, $2b6b

    rra
    ld [de], a
    db $e3

jr_035_4aa1:
    db $e3
    push de
    ld e, $36
    rst $30
    push de
    ld h, c
    daa
    dec hl
    rra

jr_035_4aab:
    ld [de], a
    rst $08
    inc b
    rst $08
    rst $28
    jr z, jr_035_4aa1

    db $eb
    ld b, e
    xor d
    xor [hl]
    db $10
    ld l, e
    rst $28
    rst $28
    rra
    ld [de], a
    rst $00
    rst $00
    ld c, d
    call $cf00
    ld c, b
    ld d, a
    jp c, $d0df

    jp c, $2057

    db $dd
    db $dd
    rra
    ld [de], a
    dec e
    dec e
    sbc d
    sub a
    sbc a
    inc bc
    sub d
    ld e, d
    push de
    rst JumpTable
    ld d, l
    rst JumpTable
    rra
    dec d
    inc sp
    ld b, $da
    ld d, a
    rst JumpTable
    ld d, d
    jp c, $1f3d

    rla
    rst JumpTable
    add d
    jr nz, jr_035_4b3a

    db $db
    ld d, a
    rst JumpTable
    ld d, c
    ld b, e
    ld d, b
    ret nz

    ld a, [hl+]
    rra
    ld [de], a
    cp a

jr_035_4af5:
    cp a
    cp l
    and e
    cp a
    xor l
    inc bc
    dec a
    inc hl
    cp a
    xor e
    cp e
    xor l
    dec hl
    rra
    ld [de], a
    nop
    ld a, $3e
    ld e, [hl]
    ld h, d
    ld a, [hl]
    ld e, [hl]
    ld e, d
    ld h, [hl]
    ld [bc], a
    ld a, [hl]
    ld a, d
    ld a, d
    ld b, [hl]
    ld a, h
    ld a, h
    nop
    ld d, b
    sbc b
    cp $ff
    db $f4
    ld hl, sp-$2e
    pop hl
    db $ec
    sub d
    and $e4
    and l

jr_035_4b22:
    ret c

    and h
    reti


jr_035_4b25:
    ret nz

    sub b
    rst $38
    add a
    ld a, a
    jp z, $f5f5

    ld a, [hl+]
    db $10
    ld bc, $0090
    ld a, e
    nop
    ldh a, [rP1]
    rst $38
    cp $1c
    ld e, h

jr_035_4b3a:
    db $10
    sub c
    nop
    rst $00
    nop
    ld [hl], d
    inc c
    nop
    nop
    ldh a, [$80]
    rst $38
    inc c
    rra
    push af
    ld c, $04

jr_035_4b4b:
    db $fd
    ld b, $7b
    add h
    cp $01
    db $f4
    nop
    rst $38
    ld [hl], b
    ld h, a
    ld hl, sp+$2f
    ldh a, [$ef]
    jr nc, jr_035_4b4b

    jr nc, jr_035_4b25

    jr c, jr_035_4b67

    jp nz, $ff00

    rst $38
    rst $38
    rst $38
    rst $38

jr_035_4b67:
    inc b
    inc bc
    ld [$0f07], sp
    ret nz

    nop
    rst $38
    rst $28
    sbc a
    or h
    ret nz

    ld c, h
    jr nz, jr_035_4bb6

    jr z, jr_035_4b22

    ld d, b
    inc b
    ldh [rP1], a
    ldh [$f0], a
    nop
    rst $38
    or c
    ld [hl], b
    ld a, a
    db $10
    xor b
    nop
    nop
    ld b, $0a
    dec d
    ld [de], a
    inc l
    ldh a, [rP1]
    rst $38
    di
    ld [$1800], sp
    ld bc, $0770
    ret nz

    cp a
    inc bc
    ld a, [hl]
    rra
    ldh a, [rNR41]
    rst $38
    add c
    ld a, a
    cp $0f
    ld hl, sp+$1f
    ldh a, [$be]
    pop bc
    ld a, [hl]
    adc c
    ldh a, [rP1]
    rst $38
    db $e3
    db $fc
    ld a, b
    add a
    ld a, $c1
    ccf
    ret nz

    cp [hl]
    ld b, c

jr_035_4bb6:
    ld e, a
    and b
    pop de
    nop
    rst $38
    cp $cc
    ccf
    ld [$7f88], sp
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    push bc
    ld b, b
    rst $38
    ld l, b
    sub a
    nop
    ld bc, $0e03
    cp $10
    db $fc
    ld c, c
    ldh a, [$c0]
    nop
    rst $38
    adc a
    sbc a
    sub e
    sbc a
    ld sp, $701f
    rra
    rst $10
    ccf
    cp h
    ld [hl], b
    and b
    ld b, c
    rst $38
    rst $38
    rst $38
    nop
    ld e, c
    ccf
    ld e, d
    ld a, l
    dec de
    ld a, [hl]
    ld e, e
    ld a, [hl]
    dec de
    ld a, [hl]
    ld a, d
    ld a, c
    dec a
    rra
    ld d, h
    ld b, b
    inc b
    ld hl, sp-$08
    ei
    ld sp, hl
    nop
    ei
    push af
    ld c, $6c
    sbc a
    cp $ff
    ld d, l
    ld b, b
    nop
    ld a, [hl]
    ld bc, $87f8
    jp nz, Jump_035_40bd

    ld e, [hl]
    and b
    dec bc
    db $f4
    jr nz, @+$0a

    cp l
    ccf
    ld b, b
    ld b, d
    dec e
    ld h, d
    reti


    ld h, $4d
    ld [hl-], a
    sbc $31
    ld [hl-], a
    sbc $31
    dec b
    nop
    rra
    xor d
    dec [hl]
    push de
    ld a, [hl-]
    or b
    add sp, -$12
    rlca
    ld a, [c]
    ld bc, $00fc
    rst $38
    nop
    ld bc, $fc40
    xor a
    ld e, a
    ld c, a
    cp a
    dec e
    cp $1e
    inc c
    rst $38
    rst $38
    ld e, [hl]
    rlca
    ret nc

    jr c, jr_035_4c4c

    ret nc

    add b
    ret c

jr_035_4c4c:
    ret nz

    ret nc

    ret nz

    add c
    ret nz

    nop
    sub [hl]
    rst $08
    ld [hl], b
    ld hl, sp-$80
    ld b, b
    nop
    ld e, b
    db $10
    add c
    inc b
    inc bc
    inc de
    inc e
    ccf
    ld [hl], a
    rrca
    rst $38
    jr @+$41

    ld h, b
    inc b
    jr nz, jr_035_4ce9

    ld h, e
    rst $38
    sbc c
    pop hl
    sbc e
    ld e, $0d
    ld a, e
    db $fd
    add c
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld d, b
    nop
    sbc c
    ld l, [hl]
    db $76
    ld [hl], d
    push hl
    add [hl]
    push bc
    add [hl]
    dec b
    ld [hl], $15
    ld a, $2d
    ld [hl], $6d
    ld bc, $a201
    cp [hl]
    ld b, c
    ccf
    ret nz

    ld a, $c1
    ld e, l
    dec a
    jp nz, $a659

    dec a
    jp Jump_035_445e


    nop
    ld e, a
    and b
    ld b, c
    cp a
    and d
    ld b, l
    cp [hl]
    daa
    ldh [$87], a
    ret c

    cpl
    jr nc, jr_035_4ce8

    ret nz

    dec d
    ld d, h
    nop
    add d
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$fa]
    db $fd
    rst $38
    add b
    dec h
    ld d, h
    nop
    rrca
    add a
    ld bc, $0101
    inc e
    rlca
    scf
    cp [hl]
    ld bc, $2800
    ld [hl], $1b
    ccf
    cp c
    rra
    ret c

    sbc a
    pop de
    xor $2c
    rst $30
    ei
    db $fd
    or e
    rst $38
    ld b, b
    ld [$cfff], sp
    rst $30
    cp a
    ld sp, hl
    rra
    ld [hl], a
    adc a
    cp a
    ld b, e
    ld a, a
    add c
    nop
    ld a, a
    add b
    ld d, l

jr_035_4ce8:
    push af

jr_035_4ce9:
    rst $38
    add b
    add $71
    call c, $80fe
    ld bc, $e250
    cp l
    ld [hl], d
    ld l, a
    or b
    cp [hl]
    pop hl
    dec e
    ld e, l
    sbc l
    rra
    ldh [$1f], a
    ldh [$aa], a
    xor b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $02fe
    nop
    nop
    xor c
    ld b, [hl]
    jp Jump_035_4041


    add h
    xor l
    cp [hl]
    rst $20
    and h
    ld c, e
    call z, $3c5f
    rst $38
    ld c, a
    nop
    xor b
    rst $38
    call c, $9733
    cp $bf
    ldh [$df], a
    ldh [rLCDC], a
    ld b, b
    add b
    ld a, a
    add b
    ld a, [hl+]
    adc d
    rst $38
    cp a
    ret nz

    nop
    nop
    nop
    nop
    rst JumpTable
    jr nz, jr_035_4d3a

jr_035_4d3a:
    nop
    ld d, b
    nop
    ld [bc], a
    rst $38
    cp $f9
    ld b, $fd
    dec b
    cp $0f
    db $ec
    dec de
    db $fc
    inc bc
    db $fc
    inc bc
    add b
    ld [hl+], a
    ld a, [hl]
    ld b, l
    ld a, $21
    cp $c1
    sbc $a1
    ld a, $c1
    add c
    cp [hl]
    ld b, c
    add c
    nop
    nop
    jr c, @-$39

    cp d
    ld b, [hl]
    ld e, [hl]
    and h
    cp l
    ld c, h
    ld l, a
    sbc b
    cp a
    ld e, b
    ccf
    add sp, $4f
    xor b
    ld [hl], h
    nop
    nop
    add d
    ld c, e
    ld c, [hl]
    ld bc, $017f
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    adc d
    ld [bc], a
    rst $38
    add b
    cp a
    ret nz

    ldh [$f0], a
    rst $30
    ld [$fc9f], sp
    dec [hl]
    adc $03
    add d

jr_035_4d8d:
    adc b
    rst $38
    rrca
    db $fd
    inc bc
    cp $01
    nop
    nop
    cp a
    ld h, b
    jr nc, jr_035_4d8d

    rra
    nop
    dec d
    add b
    ld hl, $1a7e
    dec c
    dec b
    ld b, $82
    add e
    add c
    add c
    ret nz

    ldh [$f0], a
    adc b
    nop
    ld a, a
    add b
    cp a
    ld b, b
    add b
    rst $38
    nop
    ld e, a
    ldh [$f9], a
    ld a, [hl]
    ld a, b
    daa
    inc a
    db $10
    ld a, [hl+]
    add b
    add b
    nop
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh [$1f], a
    rst $38
    rst $38
    or c
    ld c, $88
    nop
    ccf
    ret nz

    dec a
    jp nz, Jump_035_7fc0

    add b
    ld a, a
    add c
    ld a, $ff
    sbc $e4
    dec e
    ld [$4002], sp
    sbc a
    ld hl, sp+$0d
    di
    dec de
    rst $00
    ld h, h
    ret z

    daa
    ld a, [hl-]
    ld a, h
    ld h, a
    ret nz

    ld a, a
    add b
    ld hl, $ff02
    db $fd
    add e
    ld bc, $03fc
    rra
    add [hl]
    pop af
    inc e
    inc bc
    ld a, [hl]
    add c
    nop
    nop
    ld d, h
    add l
    rst $38
    nop
    dec sp
    add h
    cp e
    add h
    db $fd
    add a
    cp h
    db $fd
    ld a, b
    db $fc
    jp nz, $a08a

    rst JumpTable
    jr nz, @+$01

    nop
    jr nz, jr_035_4e35

    jr nz, jr_035_4e37

    ld a, a
    add b
    rst $38

jr_035_4e1a:
    add b
    add d
    jr nz, jr_035_4e1a

    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    inc bc
    db $fd
    ld [bc], a
    inc bc
    db $ec
    inc de
    db $ed
    ld [de], a
    ld [bc], a
    jr z, @+$01

    cp $01
    ld a, a
    add b
    cp $01
    nop

jr_035_4e35:
    ld a, [hl]
    add c

jr_035_4e37:
    nop
    nop
    ld a, a
    add b
    dec b
    ld b, b
    ld d, h
    xor e
    ld c, h
    db $db
    ld c, h
    sbc a
    rst JumpTable
    rst JumpTable
    db $dd
    ld d, [hl]
    rst $28
    ld e, d
    rst $38
    ld c, e
    ld a, [hl+]
    nop
    db $fd
    rst $38
    ld [bc], a
    ld b, $05
    dec bc
    db $e3
    ld a, [de]
    ld a, [c]
    ld [de], a
    or b
    ld [de], a
    ld [de], a
    sub b
    nop
    inc d
    ld a, h
    cp a
    ld [hl], b
    rst $38
    ld hl, sp-$71
    add h
    ccf
    jr @+$2f

    ld l, h
    ld a, l
    ld e, h
    ld a, b
    ld e, h
    nop
    ld d, h
    rlca
    ld c, c
    sbc [hl]
    and d
    ld c, l
    di
    daa
    and $1a
    ei
    ccf
    rra
    ld a, [bc]
    rla
    ld bc, $8041
    ret nc

    ldh [$f8], a
    ldh a, [$bc]
    ret nz

    db $fc
    cp $de
    ldh [$be], a
    ret nz

    rst $38
    nop
    dec d
    ld [bc], a
    rra
    db $10
    rra
    ld [$0807], sp
    ld c, a
    inc b
    inc hl
    inc b
    dec [hl]
    inc de
    inc de
    ld [bc], a
    and b
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    nop
    ld bc, $fe02
    ld b, $f8
    inc c
    nop
    jr z, jr_035_4f2e

    ld l, e
    sbc c
    ld h, e
    or [hl]
    rst $20
    ld c, h
    adc a
    ret c

    ccf
    sub b
    jr nz, jr_035_4efb

    cp a
    ret nz

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
    ld b, b
    dec d
    ld b, c
    cp [hl]
    cp $02
    cp [hl]
    ld b, e
    cp l
    ld b, e
    ld a, a
    add c
    cp a
    cp [hl]
    cp a
    nop
    adc b
    ld l, [hl]
    ld a, [hl]
    ld [hl+], a
    ld e, $12
    ld e, [hl]
    or d
    ld a, a
    ld a, [hl-]
    dec sp
    ld a, $2f
    scf
    or $3f
    add d
    nop
    ld a, $c1
    ld a, [hl]
    pop bc
    cp $41
    ld b, c
    cp [hl]
    ld hl, $10bf
    rra
    adc [hl]
    ld c, e
    add a
    nop
    add l

jr_035_4efb:
    rst $38
    db $ed
    ld [de], a
    db $ec
    inc de
    db $ec
    inc de
    rst $28
    rla
    rra
    cp h
    ld a, a
    ldh [rIF], a
    and b
    inc c
    rst $38
    nop
    nop
    ei
    db $fc
    db $fd
    cp $7f
    cp $af
    db $fc
    db $fc
    ld hl, sp+$00
    nop
    db $fd
    ld c, a
    db $ec
    ld e, b
    and $71
    db $eb
    add b
    ldh a, [$f8]
    di
    rst $08
    cp l
    add e
    ld a, a
    nop
    ld d, [hl]
    nop
    sub b
    sub c

jr_035_4f2e:
    ld [de], a
    adc b
    adc b
    sbc b
    adc b
    sbc b
    add h
    sbc h
    add h
    sbc [hl]
    add d
    rra
    ld hl, sp+$00
    inc l
    jr nc, @+$12

jr_035_4f3f:
    rlca
    ld [bc], a
    inc c
    ld d, b
    ld [$1308], sp
    add hl, bc
    jr @+$1a

    ld de, $0100
    nop
    nop
    ld bc, $1ff1
    inc c
    xor d
    nop
    rst $38
    add b
    add b
    add b
    add b
    ret nc

    cp a
    ld hl, sp-$40
    jr jr_035_4f3f

    inc e
    ldh [rHDMA5], a
    nop
    ld [bc], a
    dec de
    dec bc
    dec bc
    dec bc
    sub l
    adc $d7
    ld l, h
    ld h, a
    inc e
    ccf
    ld [$0180], sp
    pop af
    add hl, de
    ld a, [$e211]
    inc sp
    push bc
    ld h, [hl]
    jp z, $9ec5

    ld sp, hl
    or $99
    cp [hl]
    add d
    jr nz, jr_035_5003

    add b
    rst $38
    nop
    rst $38
    nop
    add b
    cp a
    ld b, b
    add b
    cp l
    ld b, e
    ld e, a
    and e
    xor d
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    db $fd
    ld b, $17
    db $fc
    ld h, a
    adc [hl]
    add c
    rlca
    ld bc, $8040
    xor d
    ld e, l
    db $e3
    ld h, e
    ldh [$81], a
    ld h, c
    pop af
    pop af
    ld b, b
    cp b
    ld h, b
    ld hl, sp+$20
    dec d
    ld b, b
    inc bc
    or e

jr_035_4fb5:
    jp $e3e3


    di
    pop af
    pop af
    ld bc, $01f1
    ld l, e
    inc e
    ld bc, $ff55

jr_035_4fc3:
    ld h, $c3
    inc [hl]
    rst $00
    ld [$d0ef], sp
    ret nc

    db $e3
    rst $00
    adc a
    ld bc, $8040
    jr jr_035_4fc3

    jr nc, jr_035_4fb5

    ld h, b
    ret nz

    pop bc
    add e
    add a
    nop
    rrca
    rlca
    rra
    inc c
    push de
    ld d, b
    nop
    rlca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    stop
    ld d, h
    ld [$01fe], sp
    db $fc
    inc bc
    cp $02
    db $fc
    inc b
    db $f4
    ld hl, sp-$0f
    db $eb
    db $10
    ld d, b
    nop
    ld [bc], a
    sbc h
    ld e, $3b
    ld b, $7f

jr_035_5003:
    rlca
    db $76
    rrca
    cp $1d
    db $fd
    jr z, @-$02

    ld d, c
    jr z, @+$42

    rrca
    dec bc
    rla
    db $10
    db $10
    inc d
    ld [$8086], sp
    ret nz

    ldh a, [$e0]
    call nc, $12f8
    nop
    jr @-$02

    cp $f6
    sub b
    inc c
    ld [$f008], sp
    ld bc, $0701
    inc bc
    rla
    rrca
    nop
    ld a, [de]
    nop
    inc e
    ldh [rIF], a
    rst $30
    ld [hl], a
    ld hl, sp-$59
    ret nz

    add c
    add b
    add c
    pop bc
    ld h, c
    nop
    inc d
    add d
    ccf
    ld [$8c1b], sp
    rst $08
    ld a, b
    and a
    ld c, b
    inc hl
    call nz, Call_035_4165
    ret nz

    ld bc, $0022
    cp $be
    ld h, c
    ld bc, $03fd
    inc bc
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$10
    db $e3
    ld h, b
    ld bc, $0070
    ccf
    jp $a75a


    ld a, a
    rst $38
    add e
    ld bc, $017e
    xor $1f
    ld bc, $4140
    ld b, $83
    add b
    add d
    ld b, d
    add c
    pop bc
    and b
    rst $20
    jr nz, @+$01

    ldh [$ef], a
    ldh a, [rTAC]
    ld b, b
    nop
    ei
    pop af
    ld a, $1f
    inc bc
    ret nz

    cp b
    ret nz

    cp $c7
    ld e, a
    db $e4
    ld b, c
    dec b
    rst $38
    db $fd
    adc d
    rrca
    ld [hl], d
    inc hl
    ld a, [hl]
    inc h
    rra
    inc b
    rlca
    ld hl, sp-$3d
    ld d, l
    nop
    rst $38
    rra
    ld a, $30
    inc bc
    ld c, $fe
    ld sp, $63f8
    ldh [$87], a
    add b
    ld a, [bc]
    nop
    db $fc
    rst $38
    ld sp, hl
    ld a, $f3
    sub $18
    or c
    ld [hl], b
    rst $20
    inc sp
    add $1f
    sbc [hl]
    dec bc
    add b
    ld [$ce7f], sp
    rst $38
    inc hl
    rst JumpTable
    or b
    rst JumpTable
    ld [hl], b
    ld a, [hl]
    pop de
    rst $38
    jp nc, $ef97

    rla
    ld a, [bc]
    nop
    db $fd
    db $eb
    db $10
    ei
    ld de, $f393
    cp [hl]
    jp nc, $160a

    adc h
    adc h
    call z, $00c4
    ld d, l
    nop
    db $ec
    or c
    inc a
    pop hl
    db $fc
    pop hl
    cp h
    ld h, c
    inc c
    ld c, $06
    ld [bc], a
    and b
    nop
    ret nz

    rst $38
    rst $38
    rst $08
    ldh a, [$df]
    ldh [$9f], a
    ldh [$cf], a
    or b
    xor a
    ld d, b
    ld h, a
    ld b, b
    jr z, jr_035_5101

jr_035_5101:
    db $dd
    ld l, $f1
    inc hl
    inc hl
    db $db
    daa
    db $db
    daa
    rst $00
    ccf
    jp $ab3f


    rla
    nop
    rlca
    add b
    ld [bc], a
    ld de, $0b11
    adc a
    ld b, a
    rst $38
    rst $38
    add a
    ld hl, sp-$51
    ret nz

    jp $0014


    ld hl, sp+$08
    pop af
    db $e4
    or $3e
    ret z

    rst $38
    inc b
    rst $38
    inc b
    db $eb
    ld e, $7f
    ld [hl-], a
    nop
    nop
    db $f4
    db $d3
    cp c
    rst $28
    jp hl


    ld c, a
    ld c, e
    ld e, [hl]

jr_035_513b:
    ld d, a
    dec a
    ld a, $3a
    cp [hl]
    inc d
    push de
    add hl, de
    ld [hl+], a
    ld [bc], a
    db $eb
    rst $28
    ldh a, [$94]
    rst $20
    jr @-$2a

    ld h, a
    ld e, b
    ld l, e
    sub h
    rst $00
    cp b
    inc d
    add b
    ld a, [bc]
    rst $38
    ld [hl], b
    or [hl]
    ld a, c
    ld hl, sp+$3f
    ret c

    ccf
    db $fc
    rra
    db $fd
    rrca
    rlca
    nop
    jr z, jr_035_5165

jr_035_5165:
    ld e, a
    cp e
    ld [hl], a
    di
    db $ec
    cpl
    ldh a, [$67]
    ld hl, sp-$3a
    ld sp, hl
    pop bc
    cp $ce
    ld hl, sp+$4a
    sub b
    db $fc
    rst $38
    sbc $e0
    and b
    ld d, b
    jr z, jr_035_51f6

    jr c, jr_035_519e

    ld de, $5509
    call nc, $0e00
    inc d
    jr nc, jr_035_51c9

    rlca
    rrca
    ccf
    add b
    ld bc, $1850
    rrca
    ld a, [bc]
    dec e
    ld a, [bc]
    ccf
    add hl, bc
    cpl
    rst $38
    rst $30
    rst JumpTable
    jr nc, jr_035_513b

    ld [hl], b
    ld d, b

jr_035_519e:
    nop
    daa
    db $dd
    db $fc
    sbc h
    ld h, a
    ld a, l
    rst $00
    cp $07
    db $fc
    inc b
    ld hl, sp+$08
    ldh [$30], a
    jr jr_035_51b0

jr_035_51b0:
    sub b
    ret nz

    db $e4
    and b
    sbc b
    inc c
    ld [$040b], sp
    rlca
    inc b
    rlca
    ld [bc], a
    dec e
    ld [bc], a
    db $fd
    ld d, l
    nop
    add b
    ld b, b
    ldh [$f0], a
    rst $38
    ld b, b
    inc b

jr_035_51c9:
    ld h, b
    ld b, b
    db $10
    jr nz, jr_035_51de

    ld [$0508], sp
    dec de
    rlca
    ld c, c
    ccf
    jr nc, jr_035_5256

    ccf
    ld a, [bc]
    nop
    jp $2f1b


    inc de

jr_035_51de:
    ld a, e
    db $e3
    add e
    ld bc, $a183
    pop bc
    ld h, c
    ld de, $f1e6
    ld b, b
    ld bc, $b0e0
    ld a, b
    sbc b

jr_035_51ef:
    ld [hl], b
    adc b
    jr c, jr_035_51ef

    sbc $fc
    sbc a

jr_035_51f6:
    call nc, $c8cf
    rst $00
    nop
    ld d, h
    nop
    scf
    ld l, a
    rra
    ld e, a
    ld e, $1b
    dec d
    ld a, $23
    inc bc
    inc bc
    add [hl]
    ld bc, $2100
    rst $38
    jp nz, $e719

    ld [bc], a
    db $fd
    add d
    rst JumpTable
    add h
    cp a

jr_035_5216:
    ret z

    ret nc

    push af
    ld [$88ef], a
    nop
    rst $00
    jr c, @-$33

    inc [hl]
    jr c, @-$13

    inc d
    rst $20
    jr jr_035_5216

    db $10
    pop af
    rrca
    ld a, e
    db $fc
    ld d, b
    db $10
    ld [bc], a
    db $fd
    rst $38
    db $fd
    rlca
    db $fc
    dec b
    ei
    inc b
    db $fc
    rst $10
    cp $3d
    inc bc
    inc b
    db $10
    ld b, b
    ld l, h
    ldh a, [$fe]
    ld h, b
    db $fd
    ei
    ret nz

    dec sp
    ret nz

    cp a
    cp l
    ld b, d
    ld a, a
    push bc
    push af
    nop
    nop
    and l
    ld a, a
    rst $38
    jr nz, jr_035_52d4

    ret nc

jr_035_5256:
    rst $28
    sbc b
    ei
    inc b
    nop
    nop
    ccf
    ret nz

    cp a
    ld b, b
    ld e, d
    dec h
    ret c

    dec hl
    db $eb
    dec sp
    rst JumpTable
    inc sp
    db $ed
    ld h, $f7
    inc l
    ld d, b
    ld [$1ff0], sp
    rra
    ld l, $f1
    ld a, [hl]
    db $e3
    db $f4
    adc [hl]
    add sp, $18
    db $10
    ret nz

    jr nc, jr_035_527d

jr_035_527d:
    or b
    nop
    ldh [$60], a
    add b
    ret nz

    add c
    add b
    inc sp
    rrca
    ld b, $01
    inc bc
    rlca
    rlca
    ld d, b
    ld bc, $7f01
    rst $38
    ld a, [$ea07]
    sbc l
    ret nc

    ld h, b
    nop
    ret nz

    adc h
    add b
    inc b
    xor b
    nop
    rst $38
    nop
    nop
    nop
    cp a
    ret nz

    ld c, a
    jr nc, jr_035_52ba

    inc c
    add hl, sp
    ld b, $3f
    add d
    ld bc, $1f01
    db $dd
    dec sp
    adc $39
    db $ec
    inc e
    ld a, [c]
    rst $28
    scf
    ret c

    ld a, a

jr_035_52ba:
    rst $38
    ccf
    ldh [rP1], a
    nop
    ld a, $e1
    rst $38
    ldh [$ce], a
    ld [hl], c
    scf
    cpl
    push af
    sbc e
    ld l, [hl]
    pop af
    rst $08
    ldh a, [rNR21]
    jp hl


    add b
    add b
    rst $38
    ldh [$d7], a

jr_035_52d4:
    cp b
    ld a, l
    adc [hl]
    ei
    rlca
    inc b
    ld [hl], l
    inc c
    ld a, b

Jump_035_52dd:
    inc c
    ld a, [hl-]
    inc a
    nop
    rst $28
    ld de, $ea5f
    sbc $8c
    adc [hl]
    ld sp, hl
    nop
    db $fc
    ld [hl], d
    db $fd
    nop
    ld [bc], a
    ld bc, $0305
    nop
    sbc b
    ld hl, sp-$24
    or b
    ld a, $90
    ccf
    stop
    ld e, a
    jr c, jr_035_5339

    rst $38
    ld [$77db], a
    rst $08
    nop
    ld b, b
    add b
    ccf
    nop
    ld c, a
    ccf
    ld [hl], e
    call z, $e500
    sbc d
    pop af
    ld c, $e1
    ld e, $63
    sbc h
    nop
    ld a, a
    ld bc, $03fd
    rst $28
    rst $38
    rst $38
    nop
    add b
    pop hl
    db $fd
    adc $6f
    ld [hl], d
    push af
    ld l, [hl]
    ei
    nop
    ld a, [c]
    sra h
    db $fd
    ld l, $c9
    ld a, [hl-]
    rst $20
    nop
    inc e
    db $fd
    ld c, $fb
    ld d, $ff
    ld [hl+], a

jr_035_5339:
    reti


    nop
    ld a, $6f
    daa
    dec hl
    dec de
    ld c, $2b
    jr nc, jr_035_5344

jr_035_5344:
    ccf
    rst JumpTable
    ld l, b
    rst $38
    ldh a, [$9f]
    ret nc

    rst $38
    nop
    and b
    rst JumpTable

jr_035_534f:
    ld [hl], b
    ld a, a
    adc b

jr_035_5352:
    rst $38

jr_035_5353:
    add h
    ld a, e
    ld [$f0c2], sp
    jr nz, jr_035_5352

    ld b, c
    db $dd
    ld h, b
    rst $38
    jr nz, @+$42

    sbc a
    inc hl
    jr nz, jr_035_5353

    db $10
    inc c
    ld c, $00
    ld e, $08
    jr nc, jr_035_5388

    ld b, b
    jr jr_035_534f

    db $10
    jr nz, @-$0d

    jr nz, jr_035_53af

    rst $08
    jr nc, jr_035_5387

    nop
    stop
    ld [hl], b
    dec e
    nop
    rrca
    inc b
    adc a
    ld [bc], a
    adc a
    nop
    ld bc, $205f
    ld l, a

jr_035_5387:
    db $10

jr_035_5388:
    ccf
    jp nz, $00ff

    ld [hl+], a
    rst $30
    ld e, $ff
    ld c, $fb
    ld c, $f3
    nop
    ld e, $fa
    and a
    db $f4
    rst $28
    ldh a, [rIF]
    rst $38
    ld b, b
    nop
    ld bc, $070a
    ld hl, sp+$2f
    pop de
    rst $38
    ld bc, $fc00
    inc bc
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    pop af

jr_035_53af:
    ld [bc], a
    nop
    add e
    ld bc, $0181
    ld a, e
    inc a
    dec hl
    ld e, h
    ld bc, $8e79
    db $fc
    rrca
    ei
    rrca
    ld hl, sp+$41
    nop
    db $ec
    ei
    ld a, [$fc07]
    rlca
    add sp, $1f
    nop
    db $10
    rst $38
    db $e3
    cp $03
    cp $3f
    cp $00
    dec b
    cp $7a
    add $7f
    add e
    ld a, h
    add c
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    add b
    jr nz, @-$13

    sub h
    and e
    call c, Call_035_5867
    rlc b
    db $f4
    and a
    cp b
    ld [$e775], a
    add hl, sp
    db $db
    nop
    dec [hl]
    rst $38
    nop
    rst $28
    inc e
    db $ed
    ld [hl-], a
    scf
    nop
    call z, $b0af
    ccf
    jr nz, jr_035_5486

    ld b, e
    ld a, [hl]
    nop
    ld b, c
    ld [$fa1c], a
    rrca
    cp $06
    db $fd
    ld h, b
    inc bc
    scf
    add c
    ldh [$7a], a
    dec b
    and [hl]
    ld a, c
    inc bc
    ld a, $71
    rst JumpTable
    ldh [$fe], a
    ld bc, $632d
    nop
    ld a, c
    and c
    ld [hl], c
    sub b
    xor b
    ld d, b
    ld a, h
    adc b
    nop
    ld a, h
    add h
    ld a, $c2
    ccf
    pop bc
    ld e, a
    and c
    nop
    ei
    inc c
    ld a, l
    add e
    cp l
    ld b, d
    ld a, [hl]
    ld b, c
    nop
    dec a
    ld [hl+], a
    ld c, $11
    rra
    inc de
    add a
    ld a, [bc]
    nop
    rst $28
    db $10
    xor $11
    cp a
    ret


jr_035_5450:
    ld a, a
    rst $20
    nop
    dec e
    rst $38

Call_035_5455:
    ld bc, $80ff
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    ld [$0ff5], sp
    rst $30
    adc a
    ld hl, sp+$0f
    nop
    inc de
    rst $38
    db $e4
    rst $38
    jr @+$01

    db $10
    rst $38
    db $10
    ret c

    rst $38
    ldh a, [$33]
    rst $38
    pop bc
    rst $38
    ret nz

    nop
    rst $38
    ld a, c
    rst $38
    rlca
    rst $38
    dec bc
    db $f4
    ld a, a
    nop
    cp $8f
    pop bc
    adc a
    sbc a
    and c

jr_035_5486:
    cp a
    and d
    ld b, b
    cp a
    inc hl
    adc a
    cp a
    add $81
    add c
    nop
    nop
    pop bc
    ld bc, $c3a3
    db $fd
    cp $e7
    db $fc
    add b
    ld hl, $febd
    inc hl
    cp [hl]
    sbc h
    ld a, e
    rst $38
    nop
    ld hl, sp+$7f
    add sp, $3f
    adc b
    scf
    ld [$012f], sp
    jr jr_035_54be

    jr c, jr_035_5450

    ld hl, sp+$05
    cp $21
    ld [$1ee4], sp
    db $fc
    ld b, $21
    rst $38
    rlca
    db $f4

jr_035_54be:
    ld a, [bc]
    ld [$0bfb], sp
    nop
    add b
    ld bc, $8061
    nop
    pop de
    or b
    ld l, l
    ld e, [hl]
    rst $30
    add hl, sp
    ld a, [$0035]
    rst $20
    jr c, @+$01

    ccf
    cp $20
    or h
    ld a, h
    nop
    and $7a
    or [hl]
    ld a, d
    ld a, a
    ld b, b
    scf
    jr c, jr_035_54e3

jr_035_54e3:
    cp [hl]
    add a
    cp a
    ret nz

    rst $28
    ld a, h
    dec a
    inc hl
    nop
    rra
    jr jr_035_54fe

    rlca
    sbc e
    db $fc
    add l
    cp $00
    and e
    ld a, [hl]
    ld b, a
    ld a, [$728f]
    sub e
    and $00

jr_035_54fe:
    rst $00
    xor h
    sub a
    ret c

    rst $38
    nop
    cp $01
    add b
    ld hl, $03fc
    ld a, [$fd05]
    inc bc
    jp hl


    nop
    rla
    ret nc

    cpl
    ld a, $c1
    ld e, a
    and b
    cpl
    db $10
    ret nc

    sbc a
    ldh [rNR44], a
    ld e, e
    db $e4
    and e
    db $dd
    nop
    add d
    db $fd
    adc a
    add h
    ld c, a
    push bc
    rst $38
    ld b, d
    nop
    rst JumpTable
    ld b, b
    rst $08
    ld b, b
    rst JumpTable
    adc a
    ld a, [hl-]
    dec [hl]
    nop
    db $f4
    res 6, b
    rst JumpTable
    ld l, b
    cp a
    ret c

    ld l, a
    add b
    dec h
    cp c
    ld a, a
    jp $0fff


    cp $3f
    nop
    cp $38
    rst $20
    inc a
    db $e3
    ld a, a
    ret nz

    rst $38
    inc b
    add b
    ld a, a
    add b
    rst $38
    nop
    ld h, c
    rrca
    ldh a, [rSVBK]
    ccf
    dec l
    adc c
    and c
    add a
    ld a, a
    pop hl
    ld e, $80
    xor c
    cp $00
    db $fc
    nop
    db $f4
    nop
    adc [hl]
    nop
    pop af
    ld a, l
    add d
    db $fd
    inc bc
    rst $20
    ld bc, $10c1
    ld bc, $0100
    ld b, d
    nop
    db $e3
    db $e4
    rst $30
    nop
    db $f4
    xor l
    sbc $ff
    add d
    db $fc
    add e
    cp $00
    add c
    rst $38
    add e
    ld a, [$fb84]
    rlca
    rst $38
    ld bc, $fa07
    dec de
    xor $2f

jr_035_5593:
    rst JumpTable
    ld e, h
    ld hl, $6e00
    db $fc
    add sp, -$04
    pop hl
    jp nz, $c161

    nop
    dec h
    jp Jump_035_47ce


    and h
    ld l, a
    db $ec
    ccf
    nop
    dec a
    ld b, $0a
    ld b, $fe
    ld a, [hl]
    ccf
    rst $38
    nop
    rst JumpTable

jr_035_55b3:
    rst $38
    ld [$7855], a
    rst $00
    cp a
    jr nz, jr_035_55bb

jr_035_55bb:
    ccf
    jr nz, @+$81

    ldh [$1f], a
    nop
    ccf
    nop
    nop
    db $fd
    add e
    ei
    rst $00
    add hl, de
    rst $38
    rlca
    ld hl, sp+$00
    ld a, a
    add b
    cp $01
    rst JumpTable
    jr nc, jr_035_5593

    ret nz

    ld de, $f10e
    rst $38
    ld c, l
    db $fc
    rlca
    rra
    ld h, $00
    rst $38
    pop hl
    rra
    jp Jump_035_773f


    rst $38
    ld sp, hl
    inc b
    rst $30
    xor $11
    ld hl, $4efe
    rst $38
    add c
    inc d
    cp $cb
    rst $38
    jr z, jr_035_55f6

jr_035_55f6:
    jr z, jr_035_55f8

jr_035_55f8:
    rst $28
    inc h
    db $10
    ld a, [$f349]
    rrca
    inc hl
    rlca
    ld hl, sp+$00
    ccf
    pop bc
    cp $02
    ld hl, sp+$04
    db $fc
    inc b
    nop
    inc e
    db $e4
    rst $38
    db $fc
    dec sp
    ret c

    push af
    ldh [$03], a
    jp z, $0180

    nop
    inc b
    nop
    inc hl
    jr nz, jr_035_5662

    rst $38
    ld bc, $7f0b
    nop

jr_035_5623:
    sub l
    rrca
    dec c
    cp $00
    ld bc, $00fb
    ldh a, [rP1]
    ret nz

    nop
    and b
    ld b, e
    jr nc, jr_035_55b3

    nop
    jr nz, jr_035_5699

    ld bc, $0300
    rlca
    nop
    ld bc, $0b03
    rlca
    ccf
    ld a, a
    dec c
    inc bc
    add b
    ld c, [hl]

jr_035_5645:
    nop
    ld a, l
    add l
    ld a, [hl]
    add e
    ld a, a
    add d
    ld hl, $02ff
    ld hl, $817f
    ld a, a
    add b
    ld hl, $bc01
    ld e, b
    ret nc

    jr c, jr_035_5623

    jr c, jr_035_5645

    ld hl, $7800
    db $fc
    sbc b

jr_035_5662:
    db $fc
    ld [$08fe], sp
    rlca
    nop
    inc bc
    nop
    inc bc
    dec b
    inc bc
    rlca
    ld b, $0f
    nop
    nop
    rlca
    ld [$083f], sp
    rst $28
    db $10
    rst $38
    ld bc, $1ff0
    ldh a, [rIE]
    ldh [rIE], a
    nop
    ld h, c
    inc bc
    ei
    inc b
    ld a, [$df05]
    jr nz, jr_035_56dd

    adc l
    add b
    and c
    ld a, a
    cp a
    rst JumpTable
    ccf
    ld h, a
    sbc [hl]
    or e
    ld c, b
    ld c, h
    add hl, hl
    cp a
    ld b, b

jr_035_5699:
    sub c
    rst $38
    db $fd
    rst $38
    ld h, b
    ld a, [hl]
    ld [hl+], a
    ld c, c
    ld d, e
    xor h
    add c
    ld a, [hl]
    sbc d
    ld b, b
    ld h, l
    cpl
    rst $38
    cp $ad
    jp c, $06f9

    nop
    ei
    inc b
    ld a, [hl]
    add c
    sbc a

jr_035_56b5:
    ld h, b
    cp a
    ld b, b
    ld [bc], a
    ret c

    db $e4
    ld a, $c2
    db $fc
    ld [bc], a
    ld e, a
    ld bc, $7f22
    add b
    dec h
    db $eb
    inc d
    nop
    nop
    add hl, bc
    add b
    nop
    add b
    ret nz

    ld b, b
    ldh a, [rNR41]
    ld [hl+], a
    nop
    ld bc, $12c1
    ld a, [bc]

jr_035_56d7:
    ld b, b
    call nc, $2800
    nop
    db $10

jr_035_56dd:
    ld b, a
    ld b, h
    inc d
    inc de
    dec bc
    ld bc, $0300
    ld [hl+], a
    rlca
    dec b
    nop
    ld c, $3d
    ld e, $7d
    ld a, $07
    nop
    ld b, [hl]
    inc bc
    inc a
    jr nz, jr_035_56b5

    pop bc
    nop
    add c
    add c
    ld [hl], $20
    rst $38
    add b
    and c
    cp a
    ret nz

    rst $30
    ld hl, sp-$11
    inc b
    ldh a, [$9f]
    ldh [rIE], a
    ld [$ef21], sp
    jr jr_035_570d

jr_035_570d:
    db $fd

jr_035_570e:
    ld [de], a
    pop af
    rra
    ldh a, [rNR10]
    rst $38
    rra
    jr jr_035_570e

    add hl, sp
    rst $38
    dec h
    add c
    cp a
    ret nc

    sbc a
    nop
    ld [hl], b
    rst $38
    jr nc, @-$0f

    or b
    ei
    ld b, $f0
    ld [de], a
    rrca
    rst $38
    nop
    ld bc, $cf0c
    jr nc, jr_035_56d7

    db $fc
    ld b, d
    inc bc
    dec d
    inc c
    ld a, a
    add b
    ld d, e
    xor h
    dec h
    db $fd
    jp nc, $0b11

    ld h, c
    ld d, h
    ld b, e
    cp $01
    rrca

jr_035_5744:
    ld a, [bc]
    ld e, a
    ld b, $00
    pop de
    ld l, $42
    cp l
    rrca
    ld a, [bc]
    ld hl, $0278
    sbc b
    ld a, d
    sbc h
    xor $3f
    ldh [rSTAT], a
    ret nz

    ld b, h
    ld a, a
    ld hl, $7f80
    nop
    ld h, b
    add b
    ret nc

    jr nc, jr_035_5744

    rra
    cp [hl]
    ld hl, $0200
    ld bc, $0002
    rlca
    add hl, de
    rra
    db $e3
    rst $30
    ld e, [hl]
    rst $20
    ld a, e
    nop
    call z, $c83f
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    cp $7f
    ld [$1cfc], sp
    rst $38
    ld bc, $e141
    rra
    db $fd
    nop
    inc bc

jr_035_5788:
    ld bc, $8b00
    rlca
    ld bc, $8303
    nop
    nop
    pop bc
    add b
    pop bc
    ld h, b
    ret z

    jr nc, jr_035_5788

    db $10
    ld [$80ff], sp
    ld h, c
    rst $30
    add b
    jp z, RST_00

    add h
    add b
    ret nz

    ldh [rIE], a
    pop af
    add sp, $33
    nop
    db $eb
    ld [hl-], a
    di
    ld h, $0d
    ld h, [hl]
    ret z

    ld e, [hl]
    nop
    ld e, a
    ld a, a
    push af
    ld h, c

jr_035_57b8:
    rst $38
    rst $38
    cp $e0
    nop
    or l
    ldh [$aa], a
    ldh [$b4], a
    ldh [$ea], a
    ld h, b
    ld [$6055], sp
    ld a, b
    ld b, b
    cpl
    xor d
    nop
    ld d, b
    ld b, b
    nop
    ld h, b
    ld b, b
    nop
    jr nc, jr_035_57d5

jr_035_57d5:
    rrca
    inc bc
    ret nz

    ld l, a
    ld h, b
    jr jr_035_57dc

jr_035_57dc:
    inc [hl]
    jr jr_035_585b

    jr c, @-$19

    dec l
    rst $28
    and b
    rst $28
    add b
    cpl
    add b
    adc c
    ld b, c
    ld de, $1022
    ld e, $10
    sbc l
    ld a, [hl]
    cpl
    ld l, b
    ld a, [bc]
    adc a
    dec [hl]
    ld [$6045], sp
    nop
    rst $38
    nop
    ldh [$bf], a
    nop
    ld d, h
    ld bc, $0103
    nop
    db $10
    ld bc, $0204
    jr nz, jr_035_5814

    ld b, $81
    inc c
    nop
    ret nz

    cp a
    ldh [$1f], a
    inc a
    inc bc

jr_035_5814:
    rlca
    nop
    ld b, b
    inc b
    ld hl, $3e04
    rlca
    rst $38
    rra
    nop
    ld b, b
    rst $38
    ld hl, $ff01
    add b
    ld a, a
    db $fd
    ld [bc], a
    inc b
    ld bc, $8202
    inc b
    rst $38
    jr nz, jr_035_57b8

    ld [hl], a
    nop
    adc b
    rst $38
    ld [$0cfb], sp
    db $fd
    ld b, $5c
    ld bc, $2c06
    ld b, $dd
    add [hl]
    db $fd
    inc bc
    add hl, sp
    nop
    rst $38
    ld [bc], a
    cp $03
    sbc [hl]
    ld bc, $010e
    nop
    ld c, [hl]
    ld bc, $e1e6
    ldh a, [$0c]
    or $00
    inc b
    di
    nop
    ld sp, hl
    nop
    ei

jr_035_585b:
    dec [hl]
    inc bc
    ld a, a
    db $10
    sbc a
    ccf
    rst $08
    ld [$f1f0], sp
    ld a, [c]
    di

Call_035_5867:
    db $e3
    rrca
    ld e, $81
    add h
    jr nz, jr_035_587b

    adc d
    dec c
    nop
    nop
    dec bc
    db $f4
    push af
    dec l
    or $f7
    db $e3
    ld c, $7e

jr_035_587b:
    ld hl, $1f8b
    inc c
    ld d, l
    ld a, [bc]
    nop
    dec bc
    dec c
    ld h, b
    dec l
    ld hl, $0010
    dec bc
    ccf
    ld a, [bc]
    dec bc
    ld e, b
    jp $a03a


    rra
    inc c
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
    ld bc, $9796
    sbc b
    sbc c
    sub c
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
    or $91
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    add b
    rra
    ld [de], a
    db $fd
    cp $94
    rst $38
    nop
    ld bc, $0102
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$1f09], sp
    ld [de], a
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1202
    inc de
    inc d
    dec d
    ld d, $17
    rra
    ld [de], a
    jr jr_035_595d

jr_035_595d:
    add hl, de
    sub c
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc b
    jr nz, jr_035_5989

    ld [hl+], a
    inc hl

jr_035_596a:
    inc h
    rra
    ld [de], a
    dec h
    ld h, $00
    sbc d
    daa
    jr z, jr_035_599d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [$2f2e], sp
    jr nc, jr_035_59ae

    rra
    ld [de], a
    ld [hl-], a
    inc sp
    inc [hl]
    nop
    sub c
    dec [hl]
    ld [hl], $37
    jr c, jr_035_59c2

jr_035_5989:
    ld a, [hl-]
    dec sp
    db $10
    inc a
    dec a
    ld a, $1f
    ld [de], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    nop
    ld b, e
    ld e, d
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_035_599d:
    ld c, c
    jr nz, jr_035_59ea

    ld c, e
    rra
    ld [de], a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_035_59ae:
    ld d, [hl]
    ld d, a
    ld e, b
    ld [hl], b
    ld e, c
    rra
    ld [de], a
    nop
    jr nz, jr_035_5a17

    ld bc, $0000
    ld b, h
    nop
    nop
    jr z, jr_035_59db

    sbc b
    dec e

jr_035_59c2:
    jr c, jr_035_59e3

    sbc b
    inc e
    ld b, b
    ei
    jr nz, jr_035_596a

    rra
    nop
    dec l
    ld e, a
    ldh a, [$1f]
    nop
    ld b, b
    ld a, a
    sbc b
    jr nz, jr_035_5a35

    nop
    ld e, a
    rst $38
    nop
    ld e, [hl]

jr_035_59db:
    ld [hl], b
    ld [bc], a
    ld bc, $0018
    nop
    ld a, [hl-]
    ld b, b

jr_035_59e3:
    nop
    nop
    ld a, b
    rlca
    rlca
    rlca
    inc b

jr_035_59ea:
    rlca
    dec b
    adc b
    ld bc, $0418
    rlca
    rlca
    rra
    add b
    rst $00
    rst $00
    and a
    nop
    ld h, h
    sub $b5
    rst $30
    sub h
    sub $b5
    and a
    nop
    ld h, h
    rst $00
    rst $00
    nop
    nop
    inc a
    inc a
    ld e, d
    db $10
    ld h, [hl]
    ld a, [hl]
    ld e, d
    ld bc, $5a10
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    db $e3

jr_035_5a17:
    db $e3
    push hl
    ld h, $e7
    push hl
    nop
    push bc
    ld b, [hl]
    rst $20
    rst $20
    rst $20
    inc h
    rst $20
    rst $20
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, d
    ld b, [hl]
    ld a, [hl]
    ld e, d
    and b
    inc bc
    jr z, jr_035_5ab0

    rra
    db $10
    db $e3

jr_035_5a35:
    ld [hl+], a
    db $e3
    db $e3
    and c
    ld bc, $e361
    and e
    and e
    ld h, d
    jp $3fc3


    stop
    inc a
    inc h
    inc a
    inc [hl]
    inc e
    inc d
    ld a, h
    ld [hl], h
    ld [$4c74], sp
    ld a, b
    ld a, b
    ccf
    jr z, jr_035_5ab9

    rst $00
    ld b, l
    ld [bc], a
    rst $20
    ld h, l
    push hl
    ld h, $e3
    db $e3
    ccf
    db $10
    ld a, [hl]
    nop
    ld b, d
    ld l, [hl]
    ld e, [hl]
    ld a, h
    ld b, h
    ld l, [hl]
    ld e, [hl]
    ld a, [hl]
    ld b, b
    ld b, d
    ccf
    db $10
    rst $00
    rst $00
    and $25
    rst $20
    db $e4
    adc b
    ld e, e
    ld [$a7a5], sp
    ld h, l
    ld e, a
    db $10
    ld a, $3e
    ld e, [hl]
    nop
    ld h, d
    ld a, [hl]
    ld e, [hl]
    ld [hl], b
    ld d, b
    ld a, [hl]
    ld e, [hl]
    ld e, [hl]
    inc b
    ld h, d
    ld a, $3e
    nop
    nop
    ld [hl], a
    ld [$66a4], sp
    inc d
    and l
    rst $20
    inc h
    dec h
    ld [$1fa4], sp

jr_035_5a99:
    db $10
    cp $fe
    ld [bc], a
    cp $82
    cp $ee
    jr c, @+$2a

    ld bc, $3818
    add b
    rra
    jr jr_035_5ace

    rst $20
    push hl

jr_035_5aac:
    rst $00
    ld b, h
    rst $20
    push hl

jr_035_5ab0:
    jr nc, jr_035_5a99

    dec h
    rra
    stop
    ld [hl], b
    db $e3
    db $e3

jr_035_5ab9:
    and l
    ld h, [hl]
    ld h, $e7
    and l
    inc bc
    ld [$6767], sp
    ccf
    jr jr_035_5ac5

jr_035_5ac5:
    ld [hl], b
    ldh [rP1], a
    ldh [$e0], a
    jr nz, jr_035_5aac

    ldh [$a0], a

jr_035_5ace:
    ld h, b
    ldh [rTMA], a
    and b
    and b
    ld h, b
    ret nz

    ret nz

    ld a, a
    jr nc, jr_035_5adc

    add hl, bc
    ld a, d
    rrca

jr_035_5adc:
    ld a, d
    ld b, [hl]
    ld a, h
    ld a, h
    rst $38
    add b
    sbc a
    ld [hl], b
    rst $38
    ld [hl], b
    rra
    add hl, sp
    ld e, $56
    db $76
    ld e, d
    rra
    ld hl, $60ff
    ld e, a
    ld [hl], c
    rst $38
    ld [hl], b
    ld [hl], b
    rla
    ld [hl], b
    ld [hl], b
    ld d, b
    ld bc, $7e10
    rra
    add hl, hl
    rst $38
    ld [hl], b
    rra
    adc b
    ret nz

    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    jp nc, $9ee1

    pop hl
    cp [hl]
    pop bc
    cp e
    ret nz

    db $fc
    nop
    rst $38
    add sp, -$10
    rst JumpTable
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    cp a
    nop
    db $fc
    nop
    rst $38
    ld c, a
    ccf
    or $01
    cp $01
    cp $01
    cp $00
    db $fc
    nop
    rst $38
    add sp, -$10
    rst $10
    ldh [$91], a
    ret nz

    ld h, b
    add b
    nop
    nop
    db $fc
    xor d
    rst $38
    ld b, d
    ccf
    nop
    nop
    nop
    nop
    db $fd
    ld a, [hl+]
    rst $38
    ld a, a
    ld h, e
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld a, [hl+]
    rst $38
    db $fd
    inc bc
    nop
    nop
    nop
    rst $38
    ld a, [hl+]
    rst $38
    cp b
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    rst $38
    dec l
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld l, [hl]
    ldh a, [$ab]
    ld [hl], b
    ld [hl], d
    jr nz, jr_035_5bae

    jr nz, @+$01

    nop
    rst $38
    db $d3
    ld h, a
    sbc [hl]
    ld h, c
    cp a
    ld b, b
    ld e, a
    nop
    rst $38
    ld a, [bc]
    rst $38
    add sp, -$10
    rst JumpTable
    ldh [$c0], a
    nop
    db $fc
    ld a, [hl+]
    rst $38
    cp $f0
    ld l, a
    stop
    nop
    nop
    db $fc

jr_035_5b8e:
    ld a, [bc]
    rst $38
    cpl
    rra
    rst $20
    rra
    db $e3
    rra
    ld bc, $ff01
    rst $38
    rst $38
    ld d, l
    inc d
    add b
    db $fc
    db $fc
    ld hl, sp-$04
    cp h
    ret nz

    cp $fd
    cp [hl]
    ret nz

    ld d, l
    ld d, l
    nop
    ld e, a
    cp a
    rra

jr_035_5bae:
    rrca
    rrca
    inc bc
    inc bc
    add c
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
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ldh [rHDMA5], a
    ld d, l
    nop
    ld a, a
    cp a
    ld a, a
    ccf
    ld e, a
    rra
    rla
    rrca
    xor d
    xor b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $01
    xor d
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    rst $28
    rra
    xor a
    ld [hl], b
    sub a
    adc a
    xor d
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    add b
    rst $30
    ld hl, sp-$0a
    rrca
    dec sp
    call nz, Call_035_5455
    nop
    ld hl, sp-$04
    db $fc
    db $fc
    cp $fd
    cp $ff
    add b
    ld a, a
    push af
    nop
    jr nz, jr_035_5b8e

    add b
    ld d, l
    ld d, l
    nop
    ccf
    ccf
    rra
    rra
    rra
    ccf
    ld e, a
    cp a
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
    ld bc, $a0aa
    rst $38
    inc bc
    rlca
    ld bc, $0101
    ld bc, $c1bf
    inc e
    inc hl
    inc b
    inc b
    ret nz

    rst $30
    ld hl, sp-$21
    ldh [$bf], a
    rst $38
    add b
    ld [hl], c
    adc [hl]
    ld a, a
    ld a, a
    add a
    add c
    nop
    ld d, l
    ld b, b
    nop
    ld bc, $e8d0
    cp $ff
    ld a, a
    add b
    ld a, a
    db $fc
    and l
    ld [hl], d
    ld d, l
    ld d, l
    nop
    rst $38
    ld a, a
    ccf
    ld e, a
    cpl
    rst $30
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    ldh [$b0], a
    sub b
    ret nz

    db $e4
    and $fb
    ei
    ld d, l
    ld d, l
    nop
    rla
    dec bc
    rlca
    dec bc
    dec b
    ld [bc], a
    ld bc, $0080
    and b
    db $fc
    rst $38
    ld [bc], a
    ld hl, sp+$04
    ld a, [$f605]

jr_035_5c7b:
    dec bc
    ld c, $0c
    jp hl


    inc e
    ret c

    jr nc, jr_035_5c84

    ld b, c

jr_035_5c84:
    nop
    ld a, e
    dec e
    db $eb
    ld a, d

jr_035_5c89:
    and [hl]
    call nz, $6084
    ld l, h
    or $8c
    adc b
    sbc $00
    nop
    cp l
    cp $66
    ld [hl], e
    adc e
    adc c
    ld bc, $7000
    jr c, jr_035_5c7b

    ld c, b
    inc c
    inc de
    cpl
    rlca
    and d
    nop
    rst $38
    ld b, b
    jr nz, jr_035_5c89

    and b
    ret nc

    rst $28
    ld e, b
    scf
    ld l, b
    ld c, $1f
    inc b
    ld [$50d5], sp
    nop
    add b
    ld b, b
    add b
    ret nz

    ldh [rNR41], a
    ret nz

    ldh [rLCDC], a
    ld d, l
    ld d, l
    nop
    rra
    ccf
    rra
    cpl
    rra
    rrca
    rla
    rra
    xor d
    xor b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0ef2
    nop
    nop
    cp $02
    db $fc
    inc b
    ld sp, hl
    ld [$10f3], sp
    xor a
    ld h, b
    sbc a
    ret nz

    ccf
    add c
    dec sp
    rlca
    ld d, b
    nop
    db $10
    rrca
    rst JumpTable
    rst $08
    jr nc, @+$01

jr_035_5cf1:
    jr nz, jr_035_5cf1

    ld b, e
    or h
    call z, $b073
    adc a
    ret nz

    ret nc

    nop
    nop
    add e
    rst $08
    ld b, $ef
    add hl, de
    ld a, b
    sub c
    inc sp
    ld [c], a
    ld h, d
    ld [c], a
    db $f4
    add $24
    nop
    add b
    ld b, c
    ld h, c
    ret nz

    inc c
    sbc a
    nop
    ccf
    nop
    ccf
    ld bc, $037f
    ld a, e
    rlca
    nop
    nop
    cp $01
    cp e
    rst $00
    ld a, b
    ld a, h
    ld c, $38
    or [hl]
    jr @+$01

    ret nc

    rst JumpTable
    ldh a, [$eb]
    rst $30
    nop
    ld d, h

jr_035_5d2f:
    jr nz, jr_035_5d2f

    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ld e, a
    ccf
    sbc a
    rst $08
    db $10
    ld b, c
    ld d, l
    nop
    pop bc
    ld h, e
    inc bc
    ldh a, [rSB]
    db $fc
    cp $ff
    rst $38
    rst $38
    nop
    ld d, b
    pop bc
    or $e0
    ld b, [hl]
    daa
    ld h, a
    jp Jump_035_43f2


    ld a, e
    cp [hl]
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    inc c
    nop
    ld b, $01
    or e
    rst $08
    rst JumpTable
    ccf
    cp a
    ld a, a
    cp $ff
    ld [hl], a
    ld hl, sp-$51
    ld [hl], b
    and b
    nop
    ld c, $1f
    pop af
    ldh a, [rIE]
    rst $38
    cp $fd
    cp $07
    db $fc
    di
    inc c
    cpl
    ldh a, [rP1]
    ld d, l
    inc bc
    ld c, h
    rlca
    ld h, d
    rlca
    ld a, a
    ld [bc], a
    db $fd
    ld [bc], a
    cp $ff
    rst $38
    cp $15
    nop
    nop
    ldh a, [$80]
    ldh a, [$f8]
    cp $ff
    inc bc
    ld hl, sp+$04
    ld a, a
    add h
    rst $38
    add h
    and b
    inc b
    rrca
    nop
    nop
    rla
    nop
    dec c
    inc bc
    ld h, $ce
    jr @+$3a

    ld bc, $70e8
    ld bc, $0050
    ldh a, [rNR23]
    jp $8f60


    add b

jr_035_5db6:
    rra
    ccf
    ld a, a
    rst $20
    ld hl, sp+$02
    rlca
    nop
    xor d
    rst $38
    db $76
    rrca
    ei
    inc c
    rst $30
    jr jr_035_5db6

    jr nc, jr_035_5dc9

jr_035_5dc9:
    nop
    nop
    nop
    and b
    nop
    rst $38
    nop
    nop
    db $fd
    inc bc
    db $eb
    inc e
    cp a
    ld a, a
    db $fc
    adc h
    rst $28
    inc d
    rst JumpTable
    inc [hl]
    jr nz, @+$03

    ldh a, [$be]
    call nz, $fc8c
    adc b
    cp c
    ret z

    ld sp, hl
    ret z

    or c
    cp b
    db $db
    ret nc

    or e
    add b
    ld [$06fd], sp
    rst $30
    inc c
    ei
    inc c
    rst $30
    rrca
    ld l, a
    sub b
    cp a
    ld [hl], b
    ld a, $ef
    cpl
    ld [bc], a
    add b
    rst $38
    xor a
    ld a, a
    rst JumpTable
    ccf
    jp hl


    rla
    nop
    add b
    call $e243
    ld [bc], a
    jp $0500


    nop
    adc b
    ld e, a
    sub b
    rst $00
    sbc b
    rst $10
    rst $28
    xor a
    ret z

    xor a
    ret z

    db $fd
    set 7, l
    adc $2a
    add b
    rst $38
    cp $01
    ld bc, $0202
    inc b
    db $fd
    inc b
    ei
    ld hl, sp+$09
    daa
    add d
    nop
    cp a
    ret nz

    rst $38
    ret nz

    rst JumpTable
    ldh [$e0], a
    sbc a
    ldh a, [$97]
    ld hl, sp-$69
    rst $38
    or $fe
    jr z, jr_035_5e43

jr_035_5e43:
    rst $38
    xor $1f
    nop
    nop
    ld a, [$f407]
    jr c, jr_035_5e90

    pop hl
    ld c, $9e
    scf
    ld [hl+], a
    and b
    nop
    rst $38
    nop
    nop
    db $fd
    inc bc
    cp $fe
    ld b, $04
    call nz, $4484
    call nz, $3e7e
    nop
    and h
    inc bc
    ld a, [$ee07]
    rst $30
    ld b, $1f
    ld b, $0f
    rlca
    ld bc, $0f05
    nop

jr_035_5e73:
    nop
    nop

jr_035_5e75:
    cp e
    call nz, $c37f
    ld d, [hl]
    db $ec
    jr z, jr_035_5e75

    inc sp

jr_035_5e7e:
    ldh [$c6], a
    pop bc
    sbc a
    add c
    db $fd
    ld [bc], a
    ld b, b
    ld b, b
    add b
    ret nz

    inc b
    rrca
    ld e, h
    jr c, jr_035_5e7e

    ld h, b
    rst $20

jr_035_5e90:
    cp $81
    ld a, [$fc06]
    ld [$0d40], sp
    nop
    ld bc, $ff3e
    rlca
    inc bc
    inc c
    inc c
    ret nc

    jr c, jr_035_5e73

    ldh [$0c], a
    rlca
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    rst $38
    add a
    rlca
    ld [$3f80], sp
    xor e
    ld h, h
    ld e, [hl]
    add a
    add hl, bc
    ld a, a
    db $10
    ldh a, [rNR22]
    inc e
    ld [bc], a
    rlca
    ld bc, $4401
    nop
    or b
    di
    jp $b3f0


    rlca
    nop
    add a
    nop
    ld h, a
    add b
    scf
    ret nz

    cp $a1
    add hl, bc
    ld d, b
    add b
    di
    ld e, a
    jp c, Jump_035_4249

    ld b, b
    ld b, b
    ret nz

    and $84
    push af
    add e
    jr nc, jr_035_5f09

    rrca
    add e
    rlca
    ld b, $17
    dec e
    add hl, bc
    dec c
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    cp c
    add $a0
    nop
    cp b
    ret z

    ret z

    ld sp, hl
    adc c
    ld a, [$e18a]
    sbc h
    db $eb
    add c
    add $81
    ld c, d
    add [hl]
    inc b
    dec e
    nop
    ld h, e
    ld h, b
    and b
    and b
    ld h, b
    ret nz

    ld b, b

jr_035_5f09:
    ret nz

    add b
    add b
    rra
    jr jr_035_5f0f

jr_035_5f0f:
    jr nc, jr_035_5f55

    adc b
    ld d, c
    ld hl, $6303
    ld h, a
    ld b, [hl]
    ld [c], a
    ld c, [hl]
    db $ed
    sbc e
    rst $38
    sub c
    inc b
    inc b
    cp $c0
    pop bc
    call c, $fc88
    add a
    add b
    ld a, a
    nop
    ld [hl], a
    cp b
    db $ed
    di

jr_035_5f2e:
    rra
    dec c
    ld d, l
    nop
    dec bc
    ld b, $01
    ld bc, $c101
    rst $38
    rst $38
    rst $38
    nop
    ld d, h
    jr nz, jr_035_5f4e

    nop
    rrca
    add b
    adc [hl]
    rst JumpTable
    or l
    ld h, e
    ldh [$fc], a
    cp $df
    ld h, b
    and b
    ld [bc], a
    rst $38

jr_035_5f4e:
    ld [bc], a
    ld [bc], a
    ld [hl], e
    adc [hl]
    db $fd
    cp $3b

jr_035_5f55:
    ld a, [de]
    dec e
    dec d
    ld h, [hl]
    ld [de], a
    rrca
    nop

jr_035_5f5c:
    adc d
    rst $38
    ldh [rNR10], a
    push hl
    jr nz, jr_035_5f2e

    jr nz, jr_035_5f5c

    ld b, b
    ld b, b
    ld a, a
    ret nz

    ret nz

    ld b, a
    inc d
    nop
    ld b, $3e
    nop
    db $fc
    db $fd
    ei
    ld c, $f7
    ld e, $ff
    ld [hl-], a
    ld l, a
    jp c, $87fe

    push de
    ld d, h
    nop
    ld [bc], a
    inc sp
    ld a, c
    ld a, l
    ld a, [hl]
    cp $df
    jr nz, @+$52

    nop
    nop
    db $10
    add hl, de
    adc h
    ld bc, $03e5
    rst $30
    rrca
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $1080
    rst $38
    sbc c
    db $fd
    adc a
    cp e
    rst $08
    ld a, e
    rst $08
    ld a, e
    rst $28
    ei
    sbc a
    rrca
    rlca
    inc bc
    add b
    dec b

jr_035_5fab:
    rst $38
    add b
    ld a, a
    ret nz

    rst $28
    ldh a, [$bb]
    db $fc
    call $e3f3
    db $fc
    ldh [$e0], a
    inc b
    ld bc, $fe39
    dec b
    rst $28
    add hl, de
    rst JumpTable
    ld a, a
    ret


    push af
    rst $38
    sbc h
    rrca
    adc $3b
    rst $08
    nop
    nop
    rst $30
    inc c
    rst JumpTable
    jr nc, @+$81

    ldh [rIE], a
    sub b
    ld l, a
    sbc b
    ld [hl], a
    call z, $e63b
    rra
    di
    and b
    nop
    rst $38
    nop
    nop
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    jr nc, jr_035_5fab

    ret nz

    ld bc, $ff41
    add $bb
    ld [c], a
    cp a
    ld h, a
    cp a
    rlca
    ld b, a
    rst $00
    ld a, a
    rst $08
    ld a, a
    ld c, a
    inc d
    dec b
    rst $38
    ldh [$3f], a
    ld b, c
    add d
    add l
    cp $87
    db $fc
    rlca
    db $fd
    inc bc
    nop
    add b
    dec d
    rst $38
    add b
    db $fd
    inc bc
    xor $1f
    ldh a, [$3f]
    ret nz

    ld a, a
    nop
    nop
    nop
    db $10
    inc b
    db $fc
    rst JumpTable
    ldh [$7b], a
    ld a, $e3
    ccf
    ldh a, [rIF]
    ld sp, hl
    inc b
    cp $04
    ld [$08f8], sp
    ld [bc], a
    cp $f4
    dec bc
    rst $38
    dec b
    ld c, $e9
    ldh a, [$87]
    nop
    rra
    ld bc, $037f
    inc c
    nop
    dec b
    xor b
    sbc a
    ret z

    sbc [hl]
    ld de, $211f
    db $fd
    ld [hl+], a
    ld [hl], h
    jp z, $88ec

    call z, $00e8
    ld b, $50
    rst $38
    ld [hl], e
    rst $08
    sbc c
    inc bc
    dec c
    ld a, [hl-]
    dec [hl]
    ld h, e
    ld l, b
    add hl, sp
    ld [hl], b
    pop hl
    jr nz, jr_035_6060

jr_035_6060:
    ld [hl+], a
    cp $cf
    jr nc, jr_035_60e4

    sub b
    rst $30
    sbc b
    rst $38
    call z, $ae7b
    rra
    ld sp, hl

jr_035_606e:
    rlca
    rra
    and d
    jr nz, @+$01

    ld bc, $fd01
    inc bc
    inc bc
    ei
    rlca
    rlca
    rst $30
    rrca
    ld [hl], a
    adc a
    sbc l
    nop
    nop
    ld bc, $e001
    push af
    ld [$1de2], sp
    db $e3
    ccf
    db $e3
    ld a, a
    add b
    add b
    ldh [rIE], a
    ld [hl], b
    rst $38
    adc e
    rst $00
    jp nz, $c081

    ldh a, [$a0]
    db $fc
    db $10
    rst $28
    ldh a, [$0c]
    nop
    rst $38
    adc $39

jr_035_60a3:
    rst $08

jr_035_60a4:
    jr c, jr_035_60a4

    add [hl]
    di
    ld b, c
    jr nz, jr_035_60cb

    nop
    jr nc, jr_035_606e

    stop
    nop
    sbc a
    pop af
    adc a
    ld hl, sp-$3a
    ld a, h
    and $ba
    db $fd
    ld d, d
    ld h, a
    reti


    ld a, [hl]
    ld l, c
    dec sp
    inc d
    ld b, b
    add b
    nop
    rst $38
    rst $20
    add c
    add e
    ld b, [hl]
    add hl, hl
    ld a, b

jr_035_60cb:
    ld bc, $060b
    cpl
    sbc h
    cp a
    ldh [rSB], a
    ld [bc], a
    ld a, a
    xor a
    rst JumpTable
    rst $38
    rrca
    rst $20
    ccf
    jp nz, $fc87

    rla
    ld hl, sp-$11
    jr nc, jr_035_60a3

    xor d

jr_035_60e4:
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    ld e, a
    rst $10
    jr z, @+$01

    xor d
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld a, [$05fa]
    rst $38
    ld b, b
    ld [$11f8], sp
    inc de

Jump_035_6102:
    ldh a, [$2f]
    di
    inc a
    rst $28
    cp b
    ld [hl], a
    ld [hl], h
    xor e
    rlca
    db $f4
    dec bc
    nop
    ld d, b
    ld a, [c]
    ret c

    jr nc, @+$62

    ldh a, [rNR32]
    ld hl, sp+$16
    db $fc
    ld l, $2f
    ccf
    pop hl
    ccf
    pop hl
    dec b
    ld b, b
    ld b, b
    ldh a, [$90]
    ld [hl], b
    add b
    jr nc, @+$7a

    inc a
    ld e, a
    ld hl, $633f
    ld c, [hl]
    ld [hl], e
    or $80
    nop
    ld bc, $0101
    pop bc
    add e
    ld b, a
    ldh [$e7], a
    jr nc, @+$12

    inc b
    rra
    db $e3
    ld b, $d7
    or [hl]
    dec d
    sbc l
    dec sp
    sbc e
    daa
    db $fc
    rrca
    jp hl


    di
    ld e, $20
    jr nz, @+$01

    ei
    add a
    add e
    ld a, a
    and e
    db $fd
    ld b, e
    cp a
    pop bc
    add c
    db $fd
    inc bc
    push af
    rrca
    nop
    nop
    rst $00
    cp $c3
    ld a, [hl]
    db $fd
    ld a, $af
    ld [hl], b
    ld a, a
    ldh a, [$d7]
    ld hl, sp-$01
    adc b
    rst $28
    inc b
    jr nz, jr_035_6179

    rst JumpTable
    ld a, a
    ldh [$b0], a
    rst $38
    adc b
    rst $10
    cp b

jr_035_6179:
    ld e, a
    ld hl, sp-$09
    inc l
    ld [hl+], a
    sub [hl]
    ld l, a
    ld d, l
    ld b, b
    db $10
    ld hl, sp-$02
    rst $38
    rst $38
    rst $28
    rst JumpTable
    jr nz, @+$01

    nop
    rst $38
    nop
    ld b, b
    ld b, b
    inc c
    dec de
    dec c
    ld b, $fd
    ld b, $ff
    inc b
    di
    rst $38
    add hl, bc
    rst $28
    ld a, [de]
    rst JumpTable
    inc [hl]
    jr z, jr_035_61a1

jr_035_61a1:
    rst $30
    rst $38

jr_035_61a3:
    inc bc
    inc c
    jr jr_035_61a3

    jr nz, jr_035_6179

    jr nc, jr_035_61a3

    sub b
    ld hl, sp-$78
    ld [hl], b
    ld c, b
    ld d, l
    rst $38
    nop
    rst $38
    rst $00
    inc bc
    ld bc, $5555
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Jump_035_61be:
    ld a, a
    cp a
    ld e, a
    ld a, [hl+]
    ld [$fe88], sp
    ld a, [$fc05]
    inc bc
    ld bc, $02fd
    ld bc, $00ff
    ld bc, $00ff
    adc b
    nop
    ccf
    pop hl
    ld l, $f1
    ldh [$2f], a
    ldh [rNR44], a
    and $0d
    push hl
    and $44
    rst $00
    ld b, [hl]
    adc b
    ld [de], a
    ld a, a
    ld d, c
    ei
    ld c, h
    add $fe
    rst $08
    ld a, c
    ret nc

    ld l, a
    rst JumpTable
    ldh [$60], a
    ld a, [bc]
    nop
    ei
    ld [hl], a
    cp b
    rst JumpTable
    ld h, b
    rlca
    db $fc
    cp $01
    di
    db $fd
    rst $20
    rra
    rst $38
    nop
    dec d
    nop
    rst $38
    rst $20
    inc a
    ld c, a
    ldh a, [$98]
    adc h
    rst $30
    rra
    db $e3
    jr c, @-$3e

    ld h, c
    add e
    dec b
    ld b, b

jr_035_6215:
    pop bc
    db $ed
    dec de
    rst $38
    pop hl
    ld a, a
    ld a, a
    ld a, [hl]
    db $fd
    db $e3
    rst JumpTable
    jr nc, jr_035_6215

    db $fc
    nop
    rlca
    inc b
    di
    ld b, $e9
    inc bc
    ld [hl], c
    add c
    and b
    ret nz

    ret z

    or b
    ld hl, sp-$78
    sbc b
    add d
    nop
    rst $38
    ld a, h
    db $fd
    ld c, $7f
    sub d
    and c
    ld e, l
    cp $7f
    db $76
    dec a
    inc hl
    rra
    ld sp, $0028
    cp $ee
    inc [hl]
    inc h
    ld [hl+], a
    db $fd
    inc hl
    ret


    ld sp, $11f1
    ld sp, hl
    dec e
    ld sp, hl
    inc de
    nop
    inc a
    ld b, h
    ld a, $22
    ccf
    ld de, $f1ee
    nop
    rst $38
    ld [$14ff], sp
    rst $38
    ld [de], a
    ld a, c
    and c
    ld b, b
    nop
    add b
    add b
    add b
    ld b, b
    add b
    ldh [rLCDC], a
    ld b, $e0
    jr nz, @-$2e

    jr nc, jr_035_628b

    or b
    nop
    add hl, bc
    ld a, a
    ld de, $af00
    nop
    inc sp
    ld a, [bc]
    nop
    ld bc, $40cf
    rst $38
    ld hl, $f803
    inc b
    db $fc
    inc b

jr_035_628b:
    ld a, h
    ld b, b
    inc b
    dec h
    ld a, h
    ld [bc], a
    cp [hl]
    ld [bc], a
    rst $38
    sbc a
    ld [bc], a
    ld sp, $1f28
    rra
    ld b, $0a
    ld [hl+], a
    rra
    db $10
    inc bc
    ld bc, $3f01
    adc a
    or b
    ld d, e
    ret c

    nop
    pop hl
    ldh a, [$81]
    add b
    ret nz

    ld b, b
    nop
    ld b, b
    nop
    or b
    ret nz

    ld [hl], b
    nop
    db $fc
    inc bc
    cp $00
    and b
    ld hl, $41fc
    ld sp, hl
    ld bc, $017b
    ld a, c
    nop
    inc bc
    adc l
    ld c, $17
    jr jr_035_6308

    jr nz, jr_035_632a

    db $10
    ld h, b
    cp a
    ret nz

    ld hl, $f00f
    cp $ff
    ld bc, $03fe
    ld hl, sp+$01
    ret nz

    nop
    add b
    ld b, c
    and b
    jr nz, jr_035_62e1

    ld b, c

jr_035_62e1:
    inc c
    inc b
    add l
    rrca
    rlc b
    rrca
    rst $28
    add hl, de
    ld d, [hl]
    cp b
    inc a
    ldh a, [$2c]
    nop
    ldh a, [$7c]
    ldh [$3e], a
    rra
    db $d3
    cp [hl]
    ld a, [de]
    ld bc, $0f1f
    dec c
    ld c, $0b
    rra
    ld a, [bc]
    ld h, $03
    ccf
    inc c
    rst $38
    add b
    rst $38
    nop

jr_035_6308:
    add c
    daa
    add b
    ld h, c
    nop
    ld sp, hl
    ld de, $18fc
    db $ec
    inc e
    nop
    rst $28
    ld e, $fb
    rrca
    db $fd
    dec bc
    ei
    dec c
    nop
    ld a, [$f00d]
    pop bc
    and b
    ret nz

    ret nz

    ld b, b
    ld bc, $40e0
    ccf
    rst $38

jr_035_632a:
    ld a, a
    ldh [rIE], a
    ld hl, $ff00
    ldh a, [rNR10]
    ld hl, sp-$78
    ld [hl], h
    adc b
    ld a, h
    ld bc, $de44
    ld [c], a
    db $fd
    ld [bc], a
    rst $38
    ld bc, $402f
    nop
    nop
    add hl, bc
    jr jr_035_6385

    sub b
    ldh [rP1], a
    add b
    add b
    ld l, c
    jr nc, jr_035_63c6

    ld a, a
    ld a, a
    ret c

    ld hl, sp-$04
    nop
    ld hl, sp+$24
    inc e
    inc b
    inc c
    ld a, a
    inc bc
    dec sp
    nop
    rlca
    ld a, [hl]
    rrca
    rra
    or d
    ld [c], a
    ld b, d
    ld b, e
    jr nz, @+$03

    jr nz, jr_035_63e5

    nop
    add e
    ret nz

    ei
    db $fc
    nop
    adc [hl]
    rst $38
    rst $08
    ei
    inc [hl]
    ld [hl], a
    call c, $018f
    jr c, @+$81

    ld hl, sp+$00
    db $fd
    nop
    rst $38
    ld h, c
    inc b
    add b
    ld e, a
    ldh [rPCM34], a

jr_035_6385:
    ld hl, sp+$2e
    ccf
    inc bc
    nop
    db $fd
    inc bc
    rst $38
    rlca
    add sp, $1f
    ldh a, [$1f]
    nop
    ld hl, sp+$17
    ret c

    scf
    ldh a, [$3f]
    pop hl
    rst $38
    ld [bc], a
    add c
    rst $38
    ld [bc], a
    rst $38
    add d
    cp $21
    ld b, b
    nop
    cp $46
    db $fc
    inc h
    db $fc
    inc bc
    nop
    ld [bc], a
    jr nz, jr_035_63b0

    rlca

jr_035_63b0:
    add c
    inc c
    inc bc
    ld e, $01
    inc e
    inc d
    inc bc
    cp [hl]
    ldh [rNR42], a
    rst $38
    ld hl, $ffa0
    nop
    and c
    ei
    and a
    rst $30
    rst $08
    ld a, [hl]

jr_035_63c6:
    rst $08
    dec a
    nop
    ld a, [bc]
    ld a, a
    ld a, [bc]
    adc $7f
    rst $30
    ld hl, sp-$69
    nop
    ld hl, sp+$1f
    ldh a, [rIE]
    ldh a, [$8f]
    ldh a, [$f7]
    db $10
    inc c
    db $fd
    ld b, $21
    cp $07
    ei
    rlca
    nop
    rst $38

jr_035_63e5:
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $e0ff
    jp nz, $2021

    and b
    ret nz

    ld b, b
    ret nz

    ld [hl+], a
    add b
    add d
    jr nz, jr_035_63f8

jr_035_63f8:
    ld hl, sp+$10
    ret nc

    jr nz, jr_035_643d

    ld h, b
    dec b
    ld h, c
    ld b, b
    ld b, c
    ld b, b
    ld b, e
    ld b, c
    nop
    add b
    db $10
    ccf
    nop
    rst $38
    pop bc
    inc c
    inc b
    inc bc
    inc c
    ld de, $0837
    rst $38
    ld b, c
    rst $28
    db $10
    rst $38
    ld b, c
    add b
    ld a, l
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    pop af
    jp nz, $2143

    ld b, $07
    nop
    ld bc, $0331
    and b
    ld b, c
    add c
    ld d, a
    ld a, b
    nop
    rst $38
    rst $38
    db $fd
    ld bc, $7bfe
    inc a
    rst $00
    ld b, $ff
    ld [bc], a
    ld h, c

jr_035_643d:
    nop
    inc a
    inc bc
    db $ec
    ei
    add sp, $3f
    and $3d
    or b
    ld hl, $25e4
    ld hl, $e83e
    inc a
    ld hl, $fd00
    ld [hl-], a
    ei
    inc d
    cp $1e
    ld hl, sp-$5f
    nop
    add $80
    rlca
    ld [$0105], sp
    ld c, $ee
    nop
    pop af
    ei
    inc c
    rrca
    inc b
    ld b, $03
    ld b, $00
    rlca
    ld c, a
    add a
    dec bc
    and $4f
    add d
    ld a, h
    nop
    cp a
    ld l, c
    sbc [hl]
    ld a, a
    adc a
    db $e4
    sbc a
    db $fc
    nop
    sbc a
    call nc, $febf
    xor e
    rst $30
    cp l
    adc a
    ld [$9ff0], sp
    ldh [$1f], a
    ld b, c
    ccf
    ret nz

    ld a, a
    dec d
    add b
    rst $38
    nop
    ld b, c
    ld bc, $fe61
    inc hl
    db $ed
    ld l, e
    ld b, c
    ld h, b
    add b
    ld b, d
    ld h, b
    ret nz

    jr z, jr_035_64a1

jr_035_64a1:
    ret nz

    rra
    ld b, b
    ld e, a
    ld h, b
    cpl
    jr nc, jr_035_64ac

    ld [bc], a
    inc c
    inc b

jr_035_64ac:
    inc bc
    ld bc, $0001
    ld b, c
    rst $38
    nop
    nop
    cp a
    ld h, b
    db $db
    inc a
    rst $20
    rra
    ldh a, [rP1]
    rrca
    ld hl, sp-$79
    db $fd
    ld b, e
    ld l, e
    db $76
    rst JumpTable
    ld de, $9f30
    ld [hl], b
    inc l
    rst $38
    ld hl, sp+$4f
    ld l, $12
    db $fc
    add e
    ld a, [hl]
    ld a, $f0
    nop
    ld bc, $f80a
    adc e
    ld b, c
    ccf
    nop
    rra
    ld b, c
    rrca
    add c

Call_035_64df:
    dec hl
    ld [$007f], sp

jr_035_64e3:
    rst $38
    ld bc, $0e01
    add sp, $3c
    sbc $00
    jr c, jr_035_64e3

    add hl, de
    rst $38
    add hl, de
    db $ed
    dec de
    push af
    jr nz, jr_035_6514

    rst $30
    ld hl, $021c
    inc c
    nop

jr_035_64fb:
    nop
    nop
    add b
    nop
    ret nc

    jr nz, jr_035_64fb

    jr nz, @-$01

    ld [hl+], a
    nop
    rst $38
    ld [hl+], a
    db $eb
    or $0f
    ld [bc], a
    inc e
    inc bc
    nop
    rra
    inc b
    ld a, e
    inc b
    rst $38

jr_035_6514:
    ld [$10ff], sp
    nop
    rst $08
    ld [hl], b
    xor $71
    push hl
    cp a
    or e
    xor $00
    xor a
    ld a, [c]
    rst $38
    pop de
    cp a
    reti


    cp $bf
    nop
    rst JumpTable
    cp a
    ld a, a
    sbc b
    rst $38
    nop
    ld a, a
    add b
    ld d, c
    rst $38
    ld hl, $2140
    ld a, a
    ret nz

    rst $38
    ld hl, $0002
    rst $38
    ld [bc], a
    rst $30
    inc c
    ei
    add c
    rst $38
    ld c, b
    ld [$c061], sp
    ld b, b
    ld hl, $40e0
    and b
    nop
    ld b, b
    add b
    jr nz, jr_035_65b2

    jr nz, @-$5e

    jr nz, @+$72

    inc d
    jr nz, jr_035_655a

    nop

jr_035_655a:
    add b
    ld bc, $00c7
    ld a, $00
    cp c
    cp h
    jp $c0ff


    rst JumpTable
    ldh [$bf], a
    nop
    and b
    rra
    add b
    inc hl
    ld h, b
    cpl
    rra
    ld bc, $ff00
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add h
    ld a, a
    adc h
    nop
    ld a, a
    jr z, @-$1f

    ldh a, [$3f]
    ret nz

    rst $38
    db $fc
    nop
    add b
    ld e, h
    ldh [$38], a
    ldh a, [rNR32]
    db $fc
    ld l, $00
    rst $30
    ld a, l
    rst $20
    ld e, h
    rst $20
    db $fd
    add $7f
    ld b, b
    nop
    ld hl, $003f
    rra
    nop
    rst $08

jr_035_659d:
    nop
    nop
    rst JumpTable
    ldh [$6d], a
    sbc [hl]
    di
    rrca
    cp $01
    jr nz, @+$01

    nop
    pop bc
    ld bc, $0ef5
    rst $38
    ld hl, sp+$00
    ld [hl], l

jr_035_65b2:
    sbc [hl]
    or e
    rst JumpTable
    db $d3
    ld a, [hl]
    ld a, [c]
    ccf
    ld [bc], a
    di
    ld e, [hl]
    ld [hl], d
    sbc a
    di
    ld e, $21
    or a
    ld [hl+], a
    ld a, [hl]
    add c
    jr c, @+$01

    add c
    ld a, a
    inc hl
    add b
    jr nz, jr_035_664c

    nop
    ld b, e
    adc [hl]
    ld [hl], c
    add [hl]
    ld sp, hl
    add a
    ld d, $f9
    add e
    db $fd
    dec [hl]
    add e
    dec [hl]
    ld b, c
    db $e3
    nop
    inc e
    db $fd
    ld d, $bf
    ld e, $4f
    jr jr_035_65f5

    nop
    sbc h
    sbc l
    add [hl]
    add a
    adc d
    rst $08
    adc e
    rst $38
    ld b, d
    nop
    ld bc, $fb0c
    inc b

jr_035_65f5:
    rst $38
    ld [$fb21], sp
    ld d, d
    inc c
    ld hl, $81ff
    db $fd
    ld c, $75
    cp $d0
    add e
    ld hl, $43fc
    add b
    jr nc, jr_035_662a

    db $10
    jr z, jr_035_659d

    db $10
    ld h, b
    jr @+$44

    ld [$0d18], sp
    ld bc, $0106
    inc c
    ld bc, $1908
    ld [$c050], sp
    add hl, sp
    ld b, b
    pop bc
    ccf
    ld bc, $f2ff
    rrca
    nop
    ld a, [c]
    ld c, $e3

jr_035_662a:
    ld e, $e5
    inc e
    ld h, d
    inc e
    nop

jr_035_6630:
    ld l, c
    jr jr_035_6630

    add [hl]
    db $fd
    ld b, $fb
    ld b, $21
    rst $38
    ld [bc], a
    pop hl
    db $fc
    inc bc
    rst $38
    nop
    ld bc, $020c
    rla
    ld hl, sp+$1f
    ldh a, [$9f]
    ld [hl], b
    and c
    rst JumpTable
    ld c, b

jr_035_664c:
    jr nc, jr_035_666f

    di
    ld e, $a1
    rst $30
    ld e, $f5
    add b
    inc hl
    inc e
    or $1d
    nop
    rst $38
    add b
    ld a, a
    push af
    ld hl, $6725
    ld h, l
    add c
    add c
    pop bc
    add c
    ld b, b
    ld b, c
    ld b, c
    add b
    rst $08
    adc e
    call nz, $c4e3

jr_035_666f:
    ld bc, $e4c3
    db $e3
    db $f4
    pop af

jr_035_6675:
    ld a, [$40ff]
    jr nz, jr_035_6675

    inc b
    ld hl, $04ff
    rst $30

jr_035_667f:
    inc c
    push af
    ld [hl+], a
    ld c, $0e
    ld l, [hl]
    rst $38
    push af
    ld a, [bc]
    and c
    or $48
    add hl, bc
    ld hl, $d926
    cpl
    db $fc
    nop
    db $f4
    inc hl
    nop
    ld hl, sp+$43
    add sp, $00
    call nc, $2f43
    ld [de], a
    db $10
    ld [$4100], sp
    inc b
    ld [$0442], sp
    ld a, [hl+]
    jr nc, jr_035_66b7

    cpl
    nop
    ld l, [hl]
    nop
    dec [hl]
    add hl, de
    jr nc, @+$10

    jr jr_035_66ff

    ld e, a
    jr nz, jr_035_66d4

    db $10
    rrca

jr_035_66b7:
    nop
    rrca
    ld bc, $c006
    nop
    jr nc, jr_035_667f

    ld a, [$fc40]
    cpl
    jp nc, $c530

    ld h, b
    ld c, e
    add b
    nop
    rlca
    nop
    dec bc
    nop
    rla
    nop
    rrca
    nop
    sub b
    cpl

jr_035_66d4:
    rst $38
    ld [bc], a
    ld h, c
    rst JumpTable
    ld [hl+], a
    rst $38
    ld [hl+], a
    ld [$33ec], sp
    ld [hl], a
    ld sp, hl
    ld l, $bf
    nop
    sbc a
    adc c
    ld b, c
    rra
    nop
    rlca
    ld b, c
    dec b
    inc bc
    cpl
    ld [bc], a
    rst JumpTable
    jr nc, @-$2f

    jr nc, @+$01

    jr nz, jr_035_6716

    rst $28
    ld [$af30], sp
    ld [hl], b
    cp $2e
    rst $38
    rst $30
    inc e

jr_035_66ff:
    nop
    ld [c], a
    dec e
    db $fd
    ld a, [bc]
    or $09
    ld hl, sp+$07
    ld a, [bc]
    db $f4
    dec bc
    add sp, $17
    cpl
    nop
    ld bc, $030b
    and e
    ld e, a
    ld b, c
    pop bc

jr_035_6716:
    ld b, e
    rst $38
    ld h, a
    ld c, l
    ld e, a
    ret nz

    nop
    rrca
    rlca
    ld a, [c]
    di
    ld c, $0d
    add c
    ld h, b
    and l
    ld b, a
    ld de, $0d8a
    add b
    nop
    dec bc
    or $f7
    ld c, $1e
    ld c, $b0
    ld hl, $1f8b
    inc c
    rlca
    ld a, [bc]
    ld a, [bc]
    dec l
    dec l
    dec c
    ld h, b
    and l
    ld b, a
    cp l
    jr nc, jr_035_6753

    nop
    dec bc
    ld e, a
    ret c

    nop
    add hl, bc
    ld a, [bc]
    rra
    inc c
    ld b, b
    adc [hl]
    nop
    rra
    add b
    add c
    add d

jr_035_6753:
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

jr_035_680b:
    ld [bc], a
    dec d
    ld d, $17
    jr jr_035_680b

    add hl, de
    rra
    ld [de], a
    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_683e

    ld [hl+], a
    inc b
    inc hl
    inc h
    dec h
    ld h, $27
    rra
    ld [de], a
    jr z, jr_035_6851

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_6862

    ld [$3332], sp
    inc [hl]
    dec [hl]
    rra
    ld [de], a
    ld [hl], $37
    jr c, jr_035_683c

jr_035_683c:
    add hl, sp
    ld a, [hl-]

jr_035_683e:
    dec sp
    inc a
    dec a
    ld a, $3f
    jr jr_035_6855

    ld b, b
    ld a, [$1f41]
    ld [de], a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    ld b, a

jr_035_6851:
    ld c, b
    ld c, c
    add hl, bc
    ld c, d

jr_035_6855:
    ld c, e
    ld c, h
    jr nz, jr_035_68a6

    ld c, [hl]
    rra
    ld [de], a
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop

jr_035_6862:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld [hl], b
    ld e, h
    rra
    ld [de], a
    nop
    jr nz, jr_035_68ce

    ld bc, $4000
    nop
    nop

jr_035_6876:
    dec bc
    rra
    nop
    rra
    ld a, l
    jr nz, jr_035_689c

    dec e
    ld a, b
    ld h, b
    ld h, h
    rra
    inc d
    nop
    ccf
    ld b, b
    nop
    nop
    ld a, b
    xor $ee
    sub $ba
    cp $92
    nop
    sub $aa
    cp $aa
    cp $ba
    xor $ee
    add h
    rra
    add b
    ld a, [hl]

jr_035_689c:
    ld a, [hl]
    ld a, [hl]
    ld e, d
    ld bc, $5a20
    ld h, [hl]
    jr nz, @+$3e

    inc a

jr_035_68a6:
    rra
    add b
    ld a, $3e
    ld e, [hl]
    ld h, d
    ld a, [hl]
    nop
    ld e, [hl]
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld a, d
    ld a, d
    ld b, [hl]
    ld a, h
    ld b, b
    ld a, h
    rra
    sub b
    ld a, $22
    ld a, $36
    inc e
    inc d
    jr z, @+$40

    ld [hl], $07
    ld [$3f3e], sp
    or b
    ld [hl], b
    ld d, b
    ld a, [hl]
    inc de
    ld e, [hl]
    ld e, [hl]

jr_035_68ce:
    ld h, d
    rra
    sub b
    inc a
    inc a
    ld e, e
    ld [$c87f], sp
    nop
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld e, d
    db $76
    ld c, d
    ld a, [hl]
    ld b, d
    jr z, jr_035_6960

    ld d, d
    inc hl
    ld [$1f7e], sp
    add b
    ld a, h
    ld a, h
    ld a, d
    ld bc, $7d46
    ld e, e
    ld a, a
    ld e, c
    ld a, l
    ld e, e
    sbc a
    jr nz, jr_035_6876

    rst $08
    ld [$6e42], sp
    ld e, [hl]
    ld a, h
    ld b, h
    ld l, [hl]
    ld e, [hl]
    add sp, $33
    ld [$882f], sp
    rra
    db $10
    ld a, [hl]
    rra
    ld [$5c7c], sp
    ld [hl], b
    db $10
    ld d, b
    ld [hl], b
    ld [hl], b
    rra
    add b
    ld a, a
    ld a, a
    ld a, a
    ld b, c
    dec bc
    ld a, a
    ld [hl], a
    inc e
    inc d
    ld bc, $1c18
    rst $08
    nop
    ld [hl-], a
    cpl
    pop hl
    nop
    rst $38
    rst $38
    cp $ff
    add sp, -$09
    ret nz

    rst $38
    ld c, $80
    rst $38
    ret nz

    cp a
    inc hl
    ld hl, $f320
    ld [$103c], sp
    rst $38
    ld bc, $0341
    cp $07
    db $10
    db $fc
    dec bc
    db $fc
    cpl
    ld d, b
    ldh [$a0], a

jr_035_6946:
    ret nz

    dec bc
    ld b, b
    add b
    add b
    nop
    jr nz, jr_035_694f

    ld b, c

jr_035_694f:
    cpl
    ld bc, $3d1d
    rlca
    inc c
    dec de
    inc b
    ld a, a
    add hl, hl
    inc b
    nop
    sbc $31
    or [hl]
    ld l, a
    cpl

jr_035_6960:
    ld d, c
    add b
    ret nz

    add hl, hl
    ld hl, $1fef
    xor a
    ld [hl], b
    cp a
    ret nz

    add b
    ld c, c
    rst $38
    pop af
    rra
    ld sp, hl
    rrca
    ld hl, sp+$0f
    nop
    db $fc
    rst $38
    rst $30
    rrca
    rst $38
    ld bc, $02fd
    add b
    cpl
    ccf
    rst $38
    rra
    rst $38
    add l
    ei
    or c
    ld bc, $e8ff
    rst JumpTable
    ld a, $87
    ld e, $03
    cpl
    add d
    jr nz, jr_035_6946

    call z, $f809
    inc de
    ld hl, $08f0
    daa
    ldh [rTAC], a
    ldh [$6f], a
    ldh a, [rIF]
    ldh [rSB], a
    rra
    pop hl
    ld e, $ef
    db $10
    rst $38
    nop
    ld b, c
    call z, $2440
    ccf
    ret nz

    adc e
    rst $08
    ld h, $e1
    add hl, bc
    and c
    ld h, b
    jr nz, @-$1e

    ld h, c
    jr nc, @-$1e

    ld l, a
    nop
    or $f8
    jp $83e0


    ret nz

    jp $0880


    add c
    add b
    ld bc, $6f80
    ld e, [hl]
    inc h
    db $dd
    ld bc, $f024
    inc c
    ld sp, hl
    inc c
    rst $38
    ld [$8041], sp
    ld b, b
    cpl
    rra
    ei
    rlca
    rst $38
    inc bc
    db $fd
    sbc d
    ld b, c
    rst $38
    ld bc, $006f
    inc c
    ret nz

    ld bc, $e009
    add c
    add c
    rrca
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh a, [$a1]
    nop
    rrca
    ldh a, [$2f]

jr_035_69f8:
    ldh a, [$83]
    nop
    rst $38
    ld bc, $fd00
    inc bc
    rst $38
    ld b, $f5
    ld c, $eb
    inc e
    nop
    rst $10
    jr c, jr_035_69f8

    jr nc, jr_035_6a83

    jp nz, $81e3

    ld a, [de]
    ret nz

    nop
    add b
    ld b, c
    and b
    rst $38
    ld b, c
    cp a
    nop
    ret nz

    ld e, a
    ld h, b
    ccf

jr_035_6a1d:
    jr nz, jr_035_6a3d

    db $10
    jr jr_035_6a22

jr_035_6a22:
    ld [$0c04], sp
    ld a, [$fc04]
    ld [$00e0], sp
    jr jr_035_6a1d

    db $10
    ldh a, [rNR41]
    nop
    ld h, b
    nop
    nop
    ld b, b
    add d
    ld b, c
    ld c, $01
    rlca
    nop
    inc bc
    and h

jr_035_6a3d:
    ld b, c
    ld bc, $0240
    ld bc, $4f28
    ret nz

    nop
    adc a
    ret nz

jr_035_6a48:
    sbc a
    add b
    rra
    add b
    sbc a
    nop
    ld b, l
    rra
    ld b, c
    ccf
    nop
    rst $38
    ld bc, $bf0b

jr_035_6a57:
    ld b, c
    add b
    rrca
    inc c
    db $fd
    ld [bc], a
    rst $38
    ld b, $10
    ldh [rNR10], a
    ld b, b
    ldh a, [rNR42]
    jr jr_035_6a57

    nop
    ld hl, sp-$78
    ld a, b
    ld [bc], a
    add h
    ld a, b
    call nz, $c13c
    nop
    ldh [rSB], a
    sub h
    add c
    rst $38
    ld [$7f21], sp
    ld b, e
    rst $28
    jr jr_035_6a48

    ld l, c
    ld hl, $01fd
    ld h, c

jr_035_6a83:
    rst $38
    inc hl
    inc bc
    ld b, d
    rst $38
    ld b, c
    ei
    rlca
    ret nz

    rst $38
    ld hl, $68e0
    rst JumpTable
    ld h, c
    daa
    ld hl, sp+$29
    rst $38
    ccf
    ldh [$90], a
    ld hl, $f01f
    ld h, c
    rrca
    ldh a, [$0e]
    ld sp, hl
    nop
    inc bc
    db $fd
    xor [hl]
    ld [hl], b
    sbc $60
    ld e, h
    ldh [rP1], a
    ld a, h
    ret nz

    db $fc
    ret nz

    cp h
    ret nz

    ld hl, sp-$80
    add l
    ld hl, $0000
    rlca
    inc bc
    ld [hl+], a
    inc c
    ld b, c
    nop
    inc d
    rrca
    ld e, $0f
    rra
    ld [$0406], sp
    nop
    ld b, $82
    ld b, b
    db $e3
    dec sp
    pop af
    dec c
    ld sp, hl
    nop
    ld a, $fe
    db $fd
    inc bc
    rst $38
    nop
    inc bc
    add a
    nop
    ld [$308f], sp
    sbc a
    ldh [$3f], a
    rst $38
    ld a, a
    ld [hl-], a
    ld a, a
    ret nz

    dec l
    ld c, a
    add d
    ld [bc], a
    ld hl, $00c2
    ld b, b
    jp nz, $e2c4

    db $e4
    ld [hl+], a
    call nz, $0a32
    db $f4
    ld [de], a
    ccf
    nop
    ld hl, $413e
    inc a
    and b
    pop bc
    ld a, a
    ld bc, $ff0b
    nop
    rst JumpTable
    nop
    ei
    nop
    ld c, $f1
    ld e, $de
    ld a, $fc
    ld [hl-], a
    cp [hl]
    nop
    ld h, d
    cp $62
    rst $38
    ld c, [hl]
    ei
    ld c, l
    call nz, $3e00
    ld [c], a
    ld e, $f0
    rrca
    pop af
    rrca
    ld a, h
    nop
    inc bc
    ld a, $01
    rla
    rrca
    ld l, a
    ld [hl], b
    ld bc, $0020
    inc bc
    ld b, c
    add e
    nop
    jp $e380


    ld bc, $e340
    ldh a, [$bf]
    ld a, b
    rst $38
    inc b
    ld hl, $fd08
    ld b, $ff
    ld [bc], a
    ld hl, $03fc
    rst $38
    ld b, b
    ld bc, $f721
    rrca
    rst $20
    rra
    db $fd
    inc bc

jr_035_6b4d:
    jr nz, jr_035_6b4d

    ld bc, $ff21
    nop
    cp $00
    ld a, a
    ld bc, $d080
    rst $28
    ldh [$df], a
    add b
    rst $38
    ld hl, $c010
    cp a
    jp $be21


    pop bc
    cp a
    rlca
    ld a, b
    db $fd
    jr c, jr_035_6bc6

    ld b, e
    ld b, b
    ld bc, $1f21
    dec b
    ld hl, sp-$80
    ldh a, [$80]
    ld [hl], b
    inc hl
    nop
    pop hl
    ld bc, $081f
    rla
    ld [$100f], sp
    ld c, $41
    ld [bc], a
    inc c
    db $10
    dec e
    ld e, $1f
    rra
    ld sp, $4080
    nop
    nop
    ld a, [bc]
    ret nz

    ldh [rIF], a
    nop
    inc bc
    nop
    ld b, b
    ld bc, $016a
    ld bc, $0603
    ld [bc], a
    nop
    nop
    inc b
    cp $12
    ld [c], a
    ld a, [de]
    ei
    ld a, [hl-]
    ld [hl], h
    nop
    db $eb
    cp c
    push bc
    db $fd
    dec b
    ld a, l
    rlca
    ld a, e
    inc d
    rlca
    inc a
    nop
    ld h, c
    inc e
    ld hl, $9c02
    nop
    ld [bc], a
    call c, $cf83
    add c
    sbc a
    ld b, b
    rra
    nop
    ld b, b
    rrca

jr_035_6bc6:
    ld b, b
    ld b, a
    jr nz, jr_035_6bed

    jr nz, jr_035_6c1f

    nop
    jr nc, @+$73

    jr @+$3a

    inc c
    or $59
    rst JumpTable
    nop
    ld [hl], b
    db $ed
    db $76
    or a
    ld l, a
    rst $20
    dec a
    ld hl, sp+$00
    inc a
    ret c

    ld a, [hl-]
    di
    ld a, [de]
    ld h, c
    ld b, b
    and b
    nop
    and b
    ret c

    ld e, h
    inc h
    ld h, [hl]

jr_035_6bed:
    sbc e
    or e
    db $dd
    nop
    db $db
    ld e, [hl]
    ld h, h
    ld a, $63
    rst $00
    ld a, $c1
    nop
    ccf
    ld h, b
    rra
    jr jr_035_6c06

    ld c, $01
    adc a
    nop
    add b
    add a
    ret nz

jr_035_6c06:
    ld h, e
    ld b, b
    cp $01
    ld a, a
    nop
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$3f], a
    nop
    ldh [rIF], a
    ldh a, [$9f]
    ld [hl], b
    cp $81
    db $fd
    inc b
    add e

jr_035_6c1f:
    cp [hl]
    pop bc
    cp $41
    ld b, c
    ld hl, $0cee
    ld sp, $11fe
    add c
    inc a
    add c
    ldh [rIE], a
    ld h, b
    ldh a, [rSCX]
    daa
    sub a
    adc a
    ld b, a
    ret


    dec l
    nop
    pop hl
    db $10
    pop af
    add hl, bc
    ld hl, sp+$07
    cp $01
    jr z, @+$01

    nop
    dec [hl]
    nop
    ld h, c
    ld [hl], b
    add b
    ldh a, [$82]
    add c
    ld hl, sp-$80
    ld e, $10
    inc a
    ld b, c
    cp b
    nop
    ld d, b
    ld a, b
    ld [hl], b
    ccf
    ccf
    ld e, $1f
    inc e
    ld [bc], a
    inc e
    cp h
    ld a, b
    ld a, [bc]
    inc b
    nop
    add b
    add sp, $06
    ldh a, [$f8]
    db $fc

jr_035_6c69:
    db $fc
    cp $ab
    ld b, b
    ld bc, $4080
    inc bc
    inc bc
    nop
    daa
    rrca
    rra
    ccf
    nop
    inc sp
    ld a, e
    ei
    ei
    ld sp, hl
    ei
    or [hl]
    ld sp, hl
    nop
    sub a
    add hl, bc
    rst JumpTable
    pop hl
    rst $28
    ld b, b

jr_035_6c87:
    ld [hl], a
    jr nz, jr_035_6c8a

jr_035_6c8a:
    dec de
    jr nc, jr_035_6c9a

    jr jr_035_6c96

    inc c
    ld c, $03
    nop
    ld c, $01
    add a

jr_035_6c96:
    nop
    cp b
    add [hl]
    ld e, l

jr_035_6c9a:
    jp $3380


    di
    jr nz, jr_035_6c69

    jr c, jr_035_6c87

    ld e, $b7
    nop
    rst $08
    and [hl]
    ld a, h
    ld h, l
    dec e
    add a
    rra
    ld d, e
    ld [bc], a
    rst $28
    db $db
    ccf
    cp $03
    ld a, h
    ld hl, $0082
    ld l, [hl]
    ld a, [c]
    cpl
    ld sp, $b01f
    cp a
    sub b
    nop
    rst JumpTable
    sub b
    rrca
    ret nc

    rrca
    ld b, b
    cpl
    add b
    nop
    ld c, a
    ld h, b
    pop hl
    jr nz, @+$73

    sub b
    ldh [$98], a
    nop
    ld a, h
    adc b
    sbc [hl]
    ld b, h
    sbc $43
    rst $28
    ld b, c
    ld bc, $60af
    sbc a
    ld [hl], b
    add a
    ld a, b
    adc a
    ld b, c
    nop
    add e
    ld a, h
    ld b, a
    inc a
    ld b, a
    cp h
    ld b, c
    cp [hl]
    nop

jr_035_6ced:
    rst $30
    jr jr_035_6ced

    ld a, [bc]
    rst $38
    ld b, $fe
    inc bc
    jr z, @+$01

    ld bc, $fe21
    inc hl
    nop
    add b
    rst $38
    nop
    ret nz

    rst $38
    or b
    rst $38
    ret z

    rst JumpTable
    call z, $01e7
    and a
    di
    sub d
    pop af
    adc c
    ld hl, sp+$00
    ld [hl-], a
    add b
    pop bc
    ld [bc], a
    db $fd
    sub l
    ld [$75ea], a
    cp b
    jr nz, @-$3e

    ld a, b
    add c
    inc e
    ldh [$bc], a
    ld h, b
    ld a, h
    nop
    and b
    db $ec
    db $10
    dec c
    inc e
    ld [$0117], sp
    ld b, h
    jr jr_035_6d52

    ld e, $08
    ld c, $41
    rlca
    inc c
    ld bc, $fe74
    sub h
    inc c
    ret nc

    ldh [rP1], a
    nop
    dec c
    ld d, $04
    nop
    ld [bc], a
    ld [hl+], a
    ld b, $23
    inc h
    db $10
    ld b, $00
    rrca
    ld bc, $011f
    inc hl
    ld hl, $8007
    ld b, c

jr_035_6d52:
    ld b, a
    ld bc, $43c5
    add a
    nop
    rlca
    ld b, b
    add b
    ld bc, $060a
    add b
    rst $38
    ld a, $b8
    ld h, b
    nop
    ldh a, [rP1]
    ldh [rSB], a
    jp $8201


    inc bc
    nop
    inc b
    rlca
    ld [$4e0f], sp
    ld a, [hl]
    ret nz

    ld a, [hl]
    db $10

jr_035_6d76:
    add b
    db $fc
    inc b
    ld b, c

jr_035_6d7a:
    inc bc
    cp $01
    rst $38
    nop
    nop
    rst $38
    rrca
    nop
    rlca
    nop
    ld bc, $a000
    ld h, b
    ret nz

    ld h, c
    ret nz

    rst $28
    jr nz, jr_035_6d76

    jr nz, jr_035_6d91

jr_035_6d91:
    rst $30
    jr nz, jr_035_6e0b

    jr nz, @+$09

    jr nc, jr_035_6dbf

    db $10
    ld b, b
    scf
    ld b, c
    jp $03be


    cp $b0
    ld c, a
    ld [$47f9], sp
    rst JumpTable
    jr nz, @+$23

    rst $38
    jr nz, jr_035_6d7a

    db $10

jr_035_6dac:
    jr nc, jr_035_6dac

    ld bc, $7f61
    add b

jr_035_6db2:
    cp a
    ret nz

    nop
    xor [hl]
    ld [hl], c
    rst $38
    add hl, de
    ld a, [$cc0f]
    cp h
    nop
    add d

jr_035_6dbf:
    cp $c3
    cp a
    push bc
    cp e
    adc d
    push af
    nop
    sub l
    ld [$f0cf], a
    db $db
    db $e4
    rst $38
    jr jr_035_6dd0

jr_035_6dd0:
    ld [hl], c
    ld c, $3e
    ld bc, $808f
    ld h, c
    ret nz

    nop
    ldh [$30], a
    db $ec

jr_035_6ddc:
    jr jr_035_6ddc

    ld b, $fe
    stop
    and $18
    ld a, $c8
    db $db
    inc a
    rst $38
    nop
    ld [$003f], sp
    rlca
    nop
    jr nz, @+$11

    ld b, $06
    nop
    rlca
    inc bc
    rlca
    ld b, $03
    ld [bc], a
    inc bc
    add c
    ld [$c103], sp
    ld bc, $2100
    nop
    add d
    ld bc, $4100
    add b
    ret nz

    ret nz

    ld h, b

jr_035_6e0b:
    ldh a, [$28]
    db $fc
    ld [$df33], sp
    add sp, -$61
    jr nc, jr_035_6db2

    inc bc
    ld [$f118], a
    inc h
    ld [hl], d
    scf
    jr nz, @-$7e

    nop
    push af
    nop
    db $e3
    rst $00
    add e
    dec c
    add a
    add l
    rrca
    dec c
    nop
    rra
    rla
    dec a
    daa
    ld a, l
    rst $00
    db $fd
    rst $00
    ld [hl], h
    cp l
    inc [hl]
    dec [hl]
    ld hl, $2181
    inc bc
    adc a
    nop
    ld b, $a6
    dec de
    ld e, l
    db $e3
    db $10
    rra
    jr nz, jr_035_6e45

jr_035_6e45:
    ccf
    inc [hl]
    ld l, e
    xor b
    rst $10
    ld d, c
    xor [hl]
    rst $38
    ld c, b
    ld b, $61
    nop
    rst $38
    pop hl
    and b
    ld e, a
    call nc, $2b00
    ld [$4015], a
    ldh [rNR41], a
    ldh a, [rNR22]
    ld [bc], a
    ei
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $1795
    ld a, [bc]
    db $10
    rlca
    db $10
    add a
    ld b, c
    scf
    inc hl
    ldh a, [rSB]
    ld [hl], a
    ldh [$27], a
    ldh [$ef], a
    db $10
    rst $38
    add c
    nop
    or $18
    rst $38
    ld [de], a
    rst $30
    ld e, $f9

jr_035_6e82:
    rra
    jr nz, jr_035_6e82

    rlca
    ld h, c
    rst $38
    ld [bc], a
    ccf
    nop
    rra
    nop
    nop
    inc l
    rra
    rst $08
    ldh a, [$ef]
    ret nc

    rst JumpTable
    inc b
    ldh [rIE], a
    ret nz

    rst $38
    add b
    ld hl, $e09f
    ld b, c

jr_035_6e9f:
    cp a
    daa
    ret nz

    db $fd
    inc bc
    rst $38
    ld bc, $5061
    db $fc
    daa
    ld [bc], a
    ld h, c
    nop
    add b
    ret nc

    ldh [$03], a
    db $dd
    ld a, $fb
    rlca
    rst $38
    nop
    and c
    and b
    nop
    rst $38
    rst $38
    and $1f
    rst $00
    inc hl
    pop de
    inc hl
    nop
    rst JumpTable
    ld [hl+], a
    cp $c7
    ld e, l
    db $e3
    push hl
    ld e, a
    nop
    ld sp, hl

jr_035_6ecd:
    ret z

    ld c, [hl]
    sbc b
    ld e, c
    adc [hl]
    call z, $008e
    ldh [$cc], a
    ld b, $ff
    ei
    db $fc
    rst $38
    add b
    nop
    db $fc
    jp $fe64


    ld [hl], b
    and b
    ld d, b
    jr nc, jr_035_6ee7

jr_035_6ee7:
    ld a, b
    db $10
    rst $28
    dec e
    db $db
    inc l
    inc sp
    call z, $b700
    ld [$103f], sp
    rrca
    jr nc, jr_035_6f76

    jr nz, jr_035_6efb

    rst $38
    ld b, b

jr_035_6efb:
    ld a, a
    add c
    rst $38
    ld bc, $0a01
    db $fd
    db $10
    inc bc
    ei
    ld c, $21
    di
    ld e, $f7
    ld a, [de]
    nop
    rst $20
    ld a, [hl-]
    rst $08
    ld a, [c]
    rrca
    ld a, [c]
    add hl, de
    and $17
    db $fd
    ld [bc], a
    cp $37
    nop
    ld h, e
    and c
    ld [hl+], a
    jr nz, jr_035_6e9f

    ld a, a
    ld h, e
    ld b, c
    cp a
    and c
    ld e, a
    jp nz, $3f00

    xor [hl]
    ld e, [hl]
    ld c, a
    ldh [rVBK], a
    ret nz

    adc a

jr_035_6f2f:
    ld [bc], a
    ret nz

    rrca
    add b
    sbc a
    nop
    rra
    ld b, c
    ccf
    nop
    nop
    ld a, [c]
    rra
    ei
    inc e
    rst $30
    db $10
    rst $20
    nop
    jr nc, jr_035_6f2f

    jr nz, jr_035_6ecd

    ld h, b
    jp $c740


    ld [de], a
    add b
    rst $38
    nop
    ld h, c
    db $fc
    inc bc
    ld b, l
    ld bc, $fd00
    rlca
    or l
    ld a, e
    rst $38
    ret nz

    rst $28
    ldh a, [rNR52]
    di
    db $fc
    inc hl
    rst JumpTable
    ldh [$29], a
    ld hl, $189f

jr_035_6f66:
    pop hl
    rst $38
    ld [bc], a
    ld hl, $015d
    rst $30
    rrca
    jr nz, jr_035_6f66

    add hl, sp
    inc sp
    ccf
    ret nz

    cp $00

jr_035_6f76:
    ld hl, sp+$00
    nop
    ldh a, [rP1]
    ldh [rP1], a
    push hl
    ld c, $19
    nop
    sub e
    dec l
    sub c
    xor a
    sub c
    jr c, jr_035_6fc4

    stop
    jr nz, jr_035_6fbc

    db $10
    jr @+$12

    ld [$8818], sp
    nop
    inc c
    call nz, $e284
    ld b, [hl]
    db $e4
    ld a, h
    ld b, [hl]
    nop
    ld a, h
    ld a, [hl-]
    ld h, $1f
    ld [hl-], a
    inc e
    inc de
    rra
    nop
    add hl, bc
    rlca
    dec c
    rlca

jr_035_6fa9:
    inc b
    ld a, [hl+]
    add hl, de
    ld e, $00
    rrca
    inc d
    rrca
    dec c
    ld b, $0f
    ld b, $87
    nop
    ld [bc], a
    ld [bc], a
    add e
    add e
    add c

jr_035_6fbc:
    rst $38
    ret nz

    ld b, l
    ld [bc], a
    ret nz

    add d
    ld b, b
    add b

jr_035_6fc4:
    ld b, b
    ret nz

    inc hl
    ret nz

    ld b, b
    ret nz

    ld [hl+], a
    add b
    cp $03
    ld a, [$fc07]
    nop
    rlca
    db $f4
    rrca
    ld a, e
    inc c
    ld l, a
    jr jr_035_7051

    nop
    jr jr_035_701a

    inc de
    rra
    db $e4
    inc sp
    call z, $007f
    adc b

jr_035_6fe5:
    rst $28
    db $10
    rst JumpTable
    jr nc, jr_035_6fa9

    ld h, b
    rst $38
    db $10
    ret nz

    rst $38
    nop
    ld bc, $e210
    jr nc, jr_035_6fe5

    jr c, jr_035_6ff7

jr_035_6ff7:
    db $ec
    inc d
    pop af
    rrca
    db $fd
    ld c, $d8
    jr nc, jr_035_7000

jr_035_7000:
    and b
    ld h, b
    nop
    ret nz

    ccf
    ld bc, $033e
    inc b
    ld [hl], a
    rrca
    ldh a, [$f8]
    nop
    ret nz

    add e
    nop
    nop
    db $db
    ld hl, $fff8
    dec hl
    nop
    rla
    nop

jr_035_701a:
    ld b, b
    rrca
    ld b, e
    ld l, $01
    cp a
    pop bc
    ld a, a
    add c
    db $10
    db $fd
    inc bc
    rst $38
    ld b, c
    ei
    rlca
    rst $08
    ccf
    nop
    rst $38
    rst $38
    cp a
    jp nz, $c4bb

    cp a
    ret z

    nop
    and a
    reti


    cp a
    pop de
    cp a
    pop hl
    rst $38
    and c

jr_035_703e:
    jr nz, jr_035_703e

    pop bc
    nop
    ei
    ld b, $ff
    rlca
    db $fc
    rlca
    ld a, h
    add a
    nop
    add sp, -$09
    inc c
    rst $38
    ld b, $ff

jr_035_7051:
    adc [hl]
    ei
    nop
    or a
    ld e, d
    ld a, [$70dc]

jr_035_7059:
    add sp, $38
    db $ec
    nop
    ld l, $f4
    ld [hl], $e2
    ld [hl], e
    pop hl
    ld b, c
    ldh a, [rP1]
    ld [hl], d
    inc hl
    add hl, de
    ld sp, $190d
    ld c, $07
    nop
    ld bc, $0003
    ld bc, $0080
    ret nz

    add b
    nop
    rlca
    ld [bc], a
    add c
    inc bc
    add c
    add c
    ld b, b
    ret nz

    nop
    jr nz, jr_035_70e3

    and b
    or b
    ld e, b
    ret nc

    jr c, jr_035_70f9

    nop
    add b
    pop bc
    pop bc
    ld b, b
    pop bc
    ldh [$e0], a
    ret nz

    inc de
    ret nz

    ld b, b
    nop
    nop
    jr jr_035_7059

    add b
    nop
    ld [$080d], sp
    nop
    ld b, b
    ld h, b
    ld h, b
    jr nz, jr_035_70b4

    jr nc, jr_035_70df

    ld de, $1d00
    ld e, $37
    jr jr_035_70b4

    jr nc, @+$11

    ccf
    nop
    inc sp
    inc a
    ld b, a

jr_035_70b4:
    ld l, b
    push bc
    add [hl]
    dec c
    add e
    jr nz, @+$01

    nop
    ld bc, $7f10
    add b
    cp a
    ret nz

    ld a, a
    db $10
    ret nz

    rst $38
    add b
    ld bc, $0108
    rst $38
    ld [bc], a
    db $fc
    nop
    inc b
    db $fc
    ld [$10f8], sp
    ldh [$30], a
    and b
    inc c
    ld h, b
    ret nz

    ld b, b
    add b
    ld b, [hl]
    jr nz, jr_035_70de

jr_035_70de:
    ld a, b

jr_035_70df:
    inc bc
    nop
    nop
    rlca

jr_035_70e3:
    nop
    rrca
    nop
    rra
    nop

jr_035_70e8:
    ld e, a
    nop
    ld h, b
    ld a, a
    ld b, c
    jr @+$03

    jr nc, jr_035_70e8

    rrca
    ei
    rlca
    rst $38
    nop
    inc bc
    rst $38
    inc bc

jr_035_70f9:
    di
    rrca
    cp a
    ld a, a
    rst $20
    nop
    rra
    rst $30
    rrca
    cp a
    ret nz

    add b
    rst $38
    rst $38
    nop
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    jp $e3fe


    nop
    cp $b3
    cp $94
    ei
    sbc a
    pop af
    ld e, a
    ld bc, $cff1
    ld [hl], b
    cp a
    ld h, b
    rst $38
    jr nz, jr_035_7151

    stop
    ldh a, [$90]
    cp b
    ld hl, sp-$44
    adc [hl]
    rst $38
    adc e
    nop
    or c
    ret z

    ld d, b
    ldh a, [$dc]
    ld h, b
    ld a, [hl]
    jr nz, jr_035_7136

jr_035_7136:
    ret nz

    ld h, b
    ld h, b
    jr nc, jr_035_714b

    jr jr_035_714b

    adc h
    nop
    jp Jump_035_76e6


    dec sp
    ld b, $0e
    nop
    nop
    jr nz, jr_035_7169

    db $10
    ld a, a

jr_035_714b:
    and b
    db $10
    ld h, b
    ld [bc], a
    ld a, h
    inc b

jr_035_7151:
    inc bc
    ld a, e
    ld [$1e73], sp
    dec bc
    inc b
    dec h
    ld [$2000], sp
    add b
    xor e
    ld [$0de0], sp
    inc bc
    dec de
    ld b, $1f
    inc b
    nop
    dec sp
    inc c

jr_035_7169:
    daa
    jr jr_035_71ab

    db $10
    ccf
    jr nz, @+$43

    ld a, a
    ld h, e
    jr @+$01

    ld bc, $03fd
    cp $01
    jr z, jr_035_717b

jr_035_717b:
    cp [hl]
    cp a
    ld a, h
    ld a, a
    rst $38
    ld hl, sp+$77
    ld hl, sp+$00
    cpl
    ldh a, [$3f]
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    nop
    add b
    nop
    ld h, e
    ret nz

    or a
    ld h, b
    rst $30
    jr jr_035_7199

    rst $30
    inc c
    ei

jr_035_7199:
    ld b, $fd
    inc bc
    db $fd
    ld [$58cd], sp
    ld [$807f], sp
    ei
    rlca
    ld bc, $fd10
    inc bc
    db $fd
    db $10

jr_035_71ab:
    inc bc
    ld sp, hl
    rlca
    ld b, a
    ld [$b301], sp
    cp $89
    nop
    cp $9f
    db $e4
    cp e

jr_035_71b9:
    db $e4
    rst $38
    ldh [rIE], a
    nop
    ldh [$cf], a
    ldh a, [$df]
    ldh a, [$fd]
    nop
    cp $08
    nop
    ld hl, sp+$00
    ldh a, [rSB]
    ld [$00e0], sp
    ret nz

    nop

Jump_035_71d1:
    nop
    and b
    nop
    ccf
    db $10
    rra
    inc c
    inc de
    ld bc, $150f
    ld a, [bc]
    inc d
    ld a, [bc]
    ld d, $08
    ld bc, $8010
    add c
    add hl, bc
    nop
    ld [hl], b
    add b
    xor $f0
    dec a
    ld e, $03
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    pop bc
    ld b, b
    cp l
    add hl, bc
    add b
    add hl, de
    ld [$4320], sp
    db $10
    ld h, e
    nop
    ld a, [hl]
    inc b
    add hl, bc
    ld a, b
    db $10
    ld h, b
    jr nz, jr_035_71b9

    add hl, de
    jr nz, @-$3e

    add $10

jr_035_720d:
    stop
    nop
    ld bc, $0961
    inc bc
    nop

jr_035_7215:
    rrca
    ld bc, $c1f0
    ld [$0801], sp
    dec l
    add hl, bc
    ld bc, $e010
    ccf
    ldh [$fe], a
    ld sp, $fc03
    and l
    db $10
    and a

jr_035_722a:
    jr z, jr_035_722a

    ld bc, $b77f
    add hl, bc
    ld b, c
    cp a
    cp c
    add hl, bc
    push bc
    add b
    add d
    add b
    add c
    inc bc
    ld [$bde0], sp
    ld e, b

jr_035_723e:
    inc bc
    ld [$081b], sp
    ld b, b
    rst $38
    jr nz, jr_035_7215

    jr nc, jr_035_7248

jr_035_7248:
    rst $38
    db $10
    rst $38
    db $10
    rst $20
    jr @+$01

    ld [$df88], sp
    ld h, b
    ei
    inc b
    db $fd
    ld c, e
    ld [$03fc], sp
    cp $68
    ld bc, $1001
    ld c, a
    db $10
    rst JumpTable
    db $d3
    ld [$f09f], sp
    add a
    nop
    ld hl, sp-$49
    add sp, -$49
    add sp, -$41
    add sp, -$45
    ld e, b
    db $e4
    adc [hl]
    db $10
    ld b, b
    inc bc
    jr z, jr_035_7278

jr_035_7278:
    db $10
    rla
    ld [$0007], sp
    ld [$0c0b], sp
    rrca
    inc b
    inc bc
    inc b
    rlca
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    inc bc

jr_035_7289:
    inc bc
    rst $08
    jr z, jr_035_720d

    ld bc, $c018
    add b
    inc bc
    add hl, bc
    ld hl, sp-$80
    cp $40
    ccf
    ld h, b
    ccf
    nop
    jr nc, jr_035_72cc

    jr c, jr_035_72d9

    daa
    ld a, $21
    ccf
    ld h, b
    jr nz, @+$2b

    ld [de], a
    xor e
    jr nc, jr_035_7289

    pop hl
    rst $28
    ld [hl-], a
    ld a, l
    nop
    inc bc
    ld_long a, $ff07
    rrca
    ldh [$38], a
    ld h, b
    ret nz

    rst $20
    jr z, jr_035_723e

    ld de, $e0df
    ld e, a
    jr nc, jr_035_72f8

    ld [$ff04], sp
    ld [$0c17], sp
    inc bc
    add e
    ld de, $ff02

jr_035_72cc:
    nop
    ld [bc], a
    cp $02
    ld a, [$fe06]
    inc b
    ldh a, [$03]
    inc c
    ld hl, sp+$08

jr_035_72d9:
    ld bc, $0200
    dec bc
    add hl, bc
    rrca
    ld de, $11b8
    ld de, $6d07
    ld l, d
    ld bc, $3708
    ld [$0cf3], sp
    rst $38
    ld b, b
    inc b
    ld bc, $f220
    dec c
    rst $30
    ld [$18ef], sp
    nop

jr_035_72f8:
    rst $38
    db $10
    rst $28
    jr nc, @-$3f

    ld h, b
    rst JumpTable
    ld h, b
    inc d
    rst $38
    ret nz

    ld a, a
    rrca
    add hl, sp
    cp $01
    jr @+$01

    nop
    inc b
    sub e
    db $fc
    or [hl]
    ret z

    cp [hl]
    ld sp, $be09
    ret nz

    adc l
    sub d
    ld a, [bc]
    and b
    rst JumpTable
    and b
    scf
    ld a, [hl+]
    pop hl
    jr @-$5e

    pop bc
    ld [$6cc0], sp
    jr jr_035_7326

jr_035_7326:
    jr c, jr_035_7329

    nop

jr_035_7329:
    ld h, b
    add b
    ldh a, [$80]
    nop
    jr nc, @-$3e

    ld a, b
    ld b, b
    ld e, b
    ld h, b
    ld a, h
    ld h, b
    nop
    db $fc
    ld h, b
    sbc $e0
    rrca
    jr nc, jr_035_735b

    ld a, $00
    inc sp
    rra
    add hl, de
    rra
    ld [$1b1f], sp
    inc c
    nop
    rlca
    inc c
    sbc a
    inc b
    ldh a, [$3e]

jr_035_734f:
    xor a
    ld a, h
    nop
    db $eb
    db $fc
    db $eb
    db $fc
    cp a
    ld a, b
    ld e, a
    cp b
    dec c

jr_035_735b:
    db $eb
    sbc h
    rst $30
    adc h
    sub $10
    ld bc, $c030

jr_035_7364:
    ld bc, $8808
    and a
    inc de
    ld [bc], a
    ld bc, $c307
    jr z, @+$04

    ld bc, $00e0
    jr jr_035_7364

    sub b
    and b
    ldh a, [rNR41]
    ldh [$c0], a
    ld l, $60
    ld b, b
    ld bc, $0719
    ld bc, $e908
    ld de, $334f
    rst $38
    nop
    add hl, bc
    db $fd
    ld a, [bc]
    db $ed
    ld e, $ff
    jr jr_035_734f

    ld b, a
    ld a, b
    cp a
    ld [$bf80], sp
    add b
    or e
    db $10
    sbc c
    add hl, bc
    ld bc, $0038
    rst $00
    cp b
    sub a
    add sp, -$25
    and h
    ld sp, hl
    add [hl]
    nop
    db $dd
    ld [c], a
    cp h
    db $e3
    sbc [hl]
    pop af
    sbc a
    ld hl, sp+$00
    and b
    nop
    call nc, $ea00
    nop
    push af
    nop
    ld b, c
    ld a, [$1aad]
    cp [hl]
    ld b, c
    ld bc, $0201
    sbc d
    add hl, bc
    nop
    ld c, b
    rlca
    xor c
    rrca
    ld d, e
    rrca
    jp c, $0037

    ld a, [de]
    rst $30
    rrca
    ldh a, [$3f]
    ldh a, [$7f]
    ldh a, [rP1]
    rst $30
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ld b, $7f
    db $fc
    rst $38
    inc b
    ei
    daa
    add hl, bc
    dec h
    ld de, $00fe
    ld de, $21ff
    rst $38
    ld b, c
    rst $38
    add h
    rst $38
    nop
    add h
    cp l
    add [hl]
    sbc a
    add d
    adc l
    add d
    add [hl]
    ld b, $83
    add a
    rlca
    rlca
    inc b
    jp $cd11


    ld [de], a
    ldh a, [$82]
    push de
    ld a, [bc]
    ld hl, sp+$00
    ld a, h
    add b
    inc bc
    ld [hl], a
    ld l, e
    rra
    or b
    ld bc, $3f28
    adc c
    ld sp, $123d
    ld [bc], a
    cp $06
    ld a, [$0e00]
    cp $0a
    rst $38
    ld [de], a
    rst $38
    ld hl, $e8bf
    rst $08
    jr jr_035_742a

jr_035_742a:
    ld b, b
    ld a, a
    ld sp, $333f
    ld [$000f], sp
    rla
    ldh [$8b], a
    dec de
    rra
    inc d
    ld bc, $c730
    db $fc
    rst $00
    db $fc
    and $02
    call c, $dce4
    di
    rst $28
    ldh a, [$27]
    inc c
    rst $38
    nop
    rst $38
    ld c, h
    inc sp
    inc bc
    inc c
    ccf
    jr jr_035_74cd

    nop
    inc a
    rst $00
    db $fc
    ld b, a
    cp $f3
    rst $08
    rst $38
    nop
    rst $38
    db $ec
    scf
    cp h
    ld h, a
    cp h
    ld h, a
    cp $00
    inc hl
    rst $28
    ld sp, $30df
    ld_long a, $ff1d
    ld [$3dff], sp
    cp $0f
    rla
    dec c
    dec sp
    db $fc
    rst JumpTable
    inc b

jr_035_7478:
    ldh [$ee], a
    ld de, $f77b
    jr nc, jr_035_7487

    add d
    cp $00
    inc b
    cp $08
    ei
    inc e

jr_035_7487:
    and c
    ld a, [hl]
    ret nz

    add b
    ld [c], a
    ld a, [bc]
    rst $38
    rst $38
    rlca
    inc b
    dec bc
    inc b
    dec bc
    nop
    inc c
    adc a
    jr jr_035_7478

    ld de, $33ef

jr_035_749c:
    ld [hl], h
    add h
    rrca
    ld [$80fe], sp
    cp [hl]
    ld b, b
    ld c, c
    add hl, bc
    and b
    adc a
    ld bc, $5ff0
    ldh a, [$94]
    db $eb
    rst $38
    rst $38
    ld a, e
    ld b, e
    ld a, [de]
    pop hl
    nop
    dec bc

jr_035_74b6:
    rra
    ld [$1255], sp
    rra
    rrc b
    ld a, a
    jr jr_035_74c0

jr_035_74c0:
    call z, $8033
    jr @-$29

    jr z, jr_035_74b6

    ld [de], a
    ld bc, $fe40
    ld c, $10

jr_035_74cd:
    cp a
    ld h, c
    ccf
    pop bc
    cp $81
    inc bc
    ld a, a
    add b
    rst JumpTable
    jr nz, jr_035_749c

    ccf
    ld e, $18
    db $ed
    ld [hl+], a
    xor b
    nop
    ld [$d8c1], sp
    inc d
    rst $38
    db $d3
    db $10
    dec bc
    nop
    dec b
    ld b, $00
    dec hl
    db $10
    inc b
    ld hl, sp+$0f
    db $10
    cpl
    inc h
    rst $10
    ld b, $0f
    xor a
    rra
    cp a
    ld a, a
    rrca
    stop
    sub b
    sub d
    ld c, $81
    add c
    dec c
    add c
    ld c, $00
    ld hl, sp-$07
    ld a, [$f0f8]
    pop af
    ld a, [c]
    di
    and b
    inc bc
    db $10
    add b
    nop
    ld c, b
    sub c
    sub e
    rrca
    ld e, $0d
    nop
    add c
    dec c
    ld c, $fc
    db $fd
    cp $ff
    db $f4
    inc e
    push af
    or $f7
    inc bc
    db $10
    rra
    ld d, b
    cpl
    db $10
    ld c, $0d
    ld [bc], a
    adc d
    dec c
    ld e, $0f
    ld c, b
    ld c, c
    ld b, e
    db $10
    ld hl, sp+$18
    ld sp, hl
    ei
    pop af
    rra
    ld d, b
    cpl
    db $10
    ld c, $81
    dec c

jr_035_7544:
    inc b
    adc e
    add c
    ld c, $58
    ld e, c
    ld b, e
    db $10
    db $fc
    db $fd
    jr nz, jr_035_7544

    push af
    rra
    ld d, b
    ld a, [c]
    ei
    ld a, [$0ef8]

jr_035_7558:
    add h
    ld h, b
    ld [$8684], sp
    ld e, $1e
    ld b, e
    db $10
    sub b
    sub d
    ld hl, $f9f8
    rra
    ld d, b
    or $f7
    cp $ff
    ccf
    ld [$8410], sp
    add l
    add a
    add l
    db $10
    ld e, b
    ld e, c
    sub c
    sub e
    ld h, $fc
    db $fd
    rra
    ld d, b
    ld a, [$c1f8]
    ld [$083d], sp
    adc d
    or b
    inc bc
    ld [$8581], sp
    ld [$70bf], sp
    cp $ff
    sub c
    sub e
    inc l
    ld c, $81
    dec a
    ld [$418b], sp
    jr nz, jr_035_7558

    ld [hl], b
    ld a, [c]
    di
    inc hl
    ld c, b
    ld c, c
    ld a, a
    ld [$8484], sp
    add [hl]
    ld b, e
    db $10
    rlca
    ld de, $bf87
    ld h, b
    or $f7
    ld e, b
    ld e, c
    ld a, a
    ld [$0841], sp
    ld b, e
    db $10
    ret nz

    rlca
    ld de, $60bf
    ld a, [$80f8]
    and e
    ld c, $84
    ld [hl], h
    add c
    ld bc, $7f09
    db $10
    push bc
    ld [$bf0f], sp
    ld h, b
    cp $ff
    inc sp
    and e
    add b
    ld b, c
    add hl, de
    ld a, a
    ld [$1e1e], sp
    ld b, e
    ld [$0841], sp
    ld sp, hl
    ld a, a
    ld [hl], b
    pop bc
    db $10
    add e
    ld de, $0849
    rlca
    ld [$1e1e], sp
    ld a, a
    ld [hl], b
    ld a, [$1183]
    dec e
    ld de, $1049
    nop
    db $10
    rra
    ld d, b
    ei
    rst $28
    ld [$0748], sp
    ld c, c
    ld c, b
    ld c, c
    add b
    and e
    ld b, a
    db $10
    pop bc
    ld hl, $717f
    inc bc
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    and e
    add b
    ld b, a
    db $10
    pop bc
    ld hl, $1feb
    ld d, b
    rst $30
    ld d, c
    inc bc
    ld [$4ffb], sp
    ld [$1ffb], sp
    ld d, b
    rst $30
    ld d, c
    ret nz

jr_035_761f:
    rst $38
    sub c
    nop
    ld a, [bc]
    ld a, [bc]
    ld l, l
    ld c, l
    dec c
    dec l
    dec c
    dec c
    dec b
    dec bc
    dec bc
    dec bc
    dec hl
    ld a, [bc]
    nop
    jr z, jr_035_7643

    nop
    ld c, b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld c, l
    dec c
    nop
    ld [$000c], sp
    ld [$0a38], sp
    dec bc

jr_035_7643:
    inc e
    ld [$0803], sp
    rra
    ld h, b
    ld a, [bc]
    ld a, [bc]
    dec l
    ld b, l
    dec l
    ld [bc], a
    ld [$0f2d], sp
    rrca
    ld b, e
    db $10
    dec bc
    rra
    ld [hl], b
    rst $20
    rrca

jr_035_765a:
    ld [$085e], sp
    inc bc
    ld [$0f0f], sp
    ld b, e
    db $10
    ld b, l
    db $10
    rra
    ld e, b
    inc b
    ld a, [hl+]
    dec bc
    dec hl
    dec l
    dec l
    add c
    db $10
    dec c
    dec c
    db $e3
    ld b, e
    db $10
    ld h, b
    ld [$601f], sp
    ld a, [bc]
    inc c
    inc c
    inc e
    jr jr_035_767e

jr_035_767e:
    jr jr_035_761f

    rra
    db $10
    inc c
    inc c
    rra
    ld d, b
    or l
    db $10
    ccf
    ld [$1060], sp
    ld b, b
    db $10
    ld [hl], e
    dec l
    cp a
    ld [hl], b
    ld l, a
    ld [$181a], sp
    dec c
    ld a, [bc]
    ld b, c
    jr nz, jr_035_765a

    add b
    ccf
    rrca
    rrca
    ccf
    db $10
    dec de
    jr @+$09

    add hl, de
    rra
    adc b
    ld a, [hl]
    jr nc, jr_035_76ed

    ld [$bf83], sp
    ld [hl], b
    dec bc
    dec hl
    dec c
    dec l
    ld l, l
    ld a, c
    ld [$207f], sp
    jp $1082


    cp a
    ld h, b
    inc c
    inc c
    dec c
    dec c
    ld b, c
    add hl, de
    dec sp
    ld [$49fd], sp
    ld sp, $705f
    add e
    add hl, bc
    ld bc, $8711
    add hl, bc
    rlca
    jr jr_035_76df

    rra
    add b
    ld [hl], l
    ld c, l
    nop
    db $10
    ld h, [hl]
    ld [$1806], sp
    ld l, l
    ld a, a
    ld [hl], c

jr_035_76df:
    rrca
    nop
    ld [$0d7f], sp
    dec sp
    add hl, de

Jump_035_76e6:
    cp a
    adc c
    rst $08
    ld [$181f], sp
    dec sp

jr_035_76ed:
    add hl, de
    pop bc
    ld hl, $58bf
    rst JumpTable
    rst $30
    ld c, c
    nop
    ld [$032a], sp
    db $10
    cp a
    ld h, b
    rst $30
    ld b, c
    rst $38
    sub c
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

Jump_035_773f:
    or b
    or c
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
    or d
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
    ld [$5e09], sp
    ld a, [bc]
    rra
    ld [de], a
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0212
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_035_77e6

    ld [de], a
    add hl, de
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_77f3

    inc b
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1f
    ld [de], a
    daa
    jr z, jr_035_77dd

jr_035_77dd:
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_77ee

jr_035_77e6:
    ld sp, $3332
    inc [hl]
    rra
    ld [de], a
    dec [hl]
    db $10

jr_035_77ee:
    ld [hl], $00
    scf
    jr c, jr_035_782c

jr_035_77f3:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $10
    ccf
    ld b, b
    ld b, c
    rra
    ld [de], a
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
    jr nz, jr_035_785b

    ld c, a
    rra
    ld [de], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [hl], b
    ld e, l
    rra
    ld [de], a
    nop
    jr nz, jr_035_7867

    ld bc, $0000
    add hl, hl
    inc bc
    nop
    nop

jr_035_782c:
    inc bc

jr_035_782d:
    ld d, $88
    nop
    rst $28
    nop
    ld d, b
    ld e, $e8
    rra
    nop
    ld a, [hl-]
    ld b, b
    ccf
    nop
    dec h
    sbc [hl]
    ldh a, [$9f]
    nop
    ld b, b
    cp $00
    ld [hl-], a
    cp $1f
    nop
    ld l, [hl]
    ld b, b
    nop
    inc [hl]
    inc h
    jr z, jr_035_782d

    add hl, bc
    db $dd
    sub c
    nop
    ld hl, sp-$30
    ld [bc], a
    rst $38
    ld hl, sp-$58
    rst $08
    adc h
    add a

jr_035_785b:
    dec b
    add a
    dec b
    rlca
    adc l
    rlca
    ld b, $00
    ld b, e
    add c
    ld e, $f7

jr_035_7867:
    dec e
    rst $30
    ccf
    and $ff
    ret nz

    rst $38
    ld [c], a
    ccf
    pop hl
    ld b, e
    pop bc
    ld d, l
    rst $38
    db $fd
    cp $d8
    ld a, a
    sbc b
    stop
    ld bc, $0403

jr_035_787f:
    jr nc, jr_035_787f

    rst $38
    rst $38
    ld [hl], a
    adc a
    ld [bc], a
    ld h, a
    db $fc
    ld d, a
    db $dd
    pop bc
    add b
    sbc a
    inc bc
    push af
    nop
    rst $38
    adc a
    sbc b
    rst $20
    ld hl, sp-$23
    ld h, d
    cp l
    jp nz, $85fa

    db $f4
    nop
    rst $38
    ldh [$5f], a
    ldh [$f6], a
    ld c, c
    adc d
    ld [hl], l
    ld b, e
    cp l
    ld [bc], a
    cp $00
    rrca
    nop
    db $fd
    di
    ld e, $e4
    ldh a, [rNR23]
    ldh a, [rNR41]
    ret nz

    ld b, b
    add b
    add b
    ccf
    rst $38
    nop
    add hl, bc
    add e
    nop
    cpl
    nop
    ld a, [$60fc]
    ldh a, [$60]
    ld [hl], b
    ld [hl], b
    ld h, b
    jr nz, jr_035_792a

    jr nz, jr_035_78cc

jr_035_78cc:
    ccf
    nop
    scf
    rra
    rrca
    rrca
    inc bc
    rlca
    inc bc
    ld bc, $0101
    nop
    nop
    jp nc, $bce1

    jp nz, $827c

    ldh a, [$0e]
    ld h, d
    sub c
    jr nc, jr_035_792f

    ld a, b
    rlca
    rra
    jr nz, jr_035_792b

    jr nz, jr_035_78cc

    dec h
    add a
    cp $87
    db $fc
    ld c, l
    ld a, e
    rst $08
    ld a, a
    rst $30
    ld [hl], $ff
    ld a, $ff
    add b
    dec b
    rst $38
    adc c
    db $fd
    ld e, $c1
    inc bc
    or b
    ret nz

    ld hl, sp-$04
    rlca
    cp $01
    nop
    ld bc, $0920
    rrca
    rst $38
    rla
    xor a
    dec c
    sub e
    ld b, $03
    inc e
    ld [de], a
    ld bc, $a08a
    ld b, a
    rst $38
    rst $38
    rst $38
    add b
    ld [$8dff], sp
    ld a, e
    db $fd
    dec bc
    db $fd
    sbc [hl]
    ld sp, hl
    rst $10

jr_035_792a:
    ld a, b

jr_035_792b:
    sbc e
    or $fe
    rrca

jr_035_792f:
    di
    ld bc, $ff05
    add c
    ld bc, $01c7
    ld a, [$fc07]
    ldh [$3f], a
    ld hl, sp+$3f
    db $ec
    add e
    dec d
    ld [$05ff], sp
    db $fd
    rlca
    ld bc, $2f1f
    pop af
    ld a, a
    pop bc
    jp nz, $867d

    xor b
    nop
    rrca
    ld c, $08
    ld [$0b8c], sp
    rst $38
    cp $09
    add a
    adc c
    rlca
    push hl
    ld a, e
    inc b
    ld bc, $d4ff
    dec hl
    jr z, @-$27

    nop
    add b
    ld a, a
    ld b, b
    cp a
    add c
    ld a, a
    add e

jr_035_796e:
    cp $c7
    ld d, b
    nop
    db $fc
    ld b, $04
    inc c
    ld hl, sp-$48
    ld a, b
    or $cf
    ld hl, sp+$01
    ldh [rP1], a
    add b
    nop
    push de
    ld b, b
    nop
    rlca
    inc a
    ldh a, [$e0]
    ret nz

    add b
    ld h, b
    ld b, b
    ld h, e
    jr nz, jr_035_796e

    push af
    nop
    add b
    ccf
    rst $38
    rst $38
    push af
    nop
    ret nz

    db $fc
    push af
    ld a, a
    nop
    inc c
    inc bc
    ld bc, $0050
    rra
    jr nc, jr_035_79c4

    jr jr_035_79b5

    db $10
    rrca
    sbc h
    rlca
    cp $05
    ld a, [hl]
    inc bc
    ld a, $03
    ld d, l
    ld b, b
    rst $38
    ld a, $3f

jr_035_79b5:
    ld e, $13
    ld de, $fc0f
    rrca
    or $1f
    db $e3
    ld b, b
    ld [$f0ff], sp
    ld l, h
    ld e, a

jr_035_79c4:
    sub [hl]
    db $d3
    sub $92
    sub [hl]
    sub d
    sub e
    sub e
    ld a, a
    db $e3
    rst $20
    dec b
    ld d, h
    rst $38
    dec h
    di
    inc e
    di
    add hl, de
    adc c
    adc b
    adc c
    ld sp, hl
    cp e
    ld a, a
    ld [hl+], a
    nop
    dec a
    rst $30
    cp $0f
    adc a
    rlca
    ld e, $ff
    ldh a, [rKEY1]
    adc a
    ld h, c
    ld h, c
    sub b
    sub b
    add b
    inc b
    add a
    ld a, b
    pop bc
    ld a, $c2
    cp l
    pop hl
    sbc [hl]
    ldh a, [rVBK]
    ldh a, [$8f]
    ld a, b
    rst $38
    add b
    ld d, b
    nop
    rrca
    db $fd
    cp $ad
    ld e, [hl]
    ld e, [hl]
    xor h
    xor d
    ld e, h
    inc d
    ld hl, sp+$14
    ld hl, sp+$7c
    ldh a, [rSC]
    ld h, b
    dec c
    ld e, a
    sbc a
    adc a
    ld e, $0c
    ld [$0608], sp
    rlca
    rlca
    ld b, $e5
    ld b, [hl]
    nop
    dec d
    nop
    ld a, [hl]
    db $fc
    or $18
    cp h
    ld h, b
    ld hl, sp-$40
    ldh a, [$80]
    ld hl, sp-$04
    cp $00
    nop
    ret nz

    add b
    ld h, e
    ldh [rPCM34], a
    ld e, b
    ld l, e
    ld c, h
    ld h, [hl]
    dec h
    inc h
    daa
    ld l, $23
    rrca
    inc sp
    and b
    dec d
    rst $38
    db $10
    db $10
    adc a
    ld a, b
    rrca
    db $fc
    rra
    db $fc
    ccf
    ld a, h
    db $fc
    xor b
    ld d, l
    rst $38
    nop
    nop
    nop
    rst $28
    rra
    ld [hl], b
    nop
    nop
    nop
    xor b
    add b
    rst $38
    nop
    nop
    nop
    ld a, a
    add b
    ldh a, [rSB]
    cp $02
    db $fd
    ld bc, $d5fe
    ld d, b
    nop
    ret nz

    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, [bc]
    and b
    rst $38
    ld a, $03
    inc a
    inc bc
    ld bc, $0101
    ld bc, $02fc
    cp $03
    nop
    nop
    ld e, $e2
    ccf
    add $3b
    adc $fa
    dec de
    pop af
    ld sp, $60a1
    ld b, e
    ret nz

    add a
    add b
    nop
    jr z, @+$01

    and b
    ld [hl], c
    ret c

    dec a
    cp h
    ld b, e
    pop hl
    rra
    rst JumpTable
    cp a

jr_035_7aa5:
    ld h, b
    jr nc, jr_035_7aa5

    inc de
    nop
    dec b
    sbc a
    sbc $be
    sbc d
    db $fc
    ldh a, [$e0]
    rst $08
    add b
    cp a
    nop
    rst $38
    add e
    db $ec
    ld [hl], b
    nop
    inc e
    nop
    ld bc, $6001
    ld h, c
    pop af
    or c
    pop af
    or e
    inc hl
    or [hl]
    ld hl, $0f0f
    and b
    ld [bc], a
    rst $38
    add b
    add b
    cp a
    ret nz

    ei
    call nz, Call_035_64df
    cp a
    ld h, [hl]
    ld a, d
    daa
    db $e3

jr_035_7ada:
    dec b
    ld d, c
    ld hl, $10f8
    ret


    jr nc, jr_035_7ada

jr_035_7ae2:
    ei
    di
    di
    pop af
    inc hl
    di
    ld [bc], a
    ret z

    add b
    push af
    db $e4
    cp l
    di
    sbc a
    cp h
    nop
    nop
    ld b, b
    add c
    jp $80c3


    ld [$e0ff], sp
    rst $28
    ldh a, [$3f]

jr_035_7afe:
    ldh a, [$1f]
    db $10
    rrca
    db $10
    ccf
    jr jr_035_7afe

    add a
    ld [$4055], sp
    inc de
    rra
    rra
    rra
    rra
    adc a
    add a
    dec bc
    adc a
    dec bc
    adc a
    rrca
    ld e, a
    ld d, l
    rst $38
    db $fc
    cp $f1
    pop hl
    add b
    ld hl, sp+$55
    ld d, l
    rst $38
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ld a, [hl+]
    xor d
    nop
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    xor b
    ld e, a
    cp a
    ld b, b
    sbc a
    ld h, b
    rst JumpTable
    jr nz, @-$1f

    jr nz, jr_035_7ae2

    and b
    and b
    cp a
    ld b, b
    add b
    jr nz, @+$01

    inc bc
    ld a, [$fe07]
    ld b, $f6

jr_035_7b4f:
    ld c, $fe
    ld a, [bc]
    ld [de], a
    db $e4
    ccf
    rst JumpTable
    ld h, c
    ld d, h
    nop
    nop
    sbc a
    ccf
    ccf
    ld a, a
    jr nc, jr_035_7bdf

    jr jr_035_7bd5

    inc e
    rst $30
    inc d
    rst $30
    inc d
    ld a, [hl+]
    nop
    rst $38
    rst JumpTable
    jr nz, jr_035_7b8d

    ld b, b
    ret nz

    ld a, a
    and b
    rst JumpTable
    jr nc, jr_035_7b4f

    dec e
    rst $00
    rlca
    inc bc
    ld b, b
    adc b
    cp h
    rst $38
    ld a, d
    rst $20
    db $fc
    ld e, [hl]
    db $f4

jr_035_7b81:
    ld sp, hl
    cp $d7
    adc a
    dec e
    ld bc, $000a
    ld a, a
    inc a
    rrca
    ei

jr_035_7b8d:
    ld b, $80
    add b
    cp e
    rst $00
    rst $38
    add h
    cp a
    call nz, $f7ef
    nop
    nop
    cp [hl]
    ld [c], a
    rst JumpTable
    ld h, d
    db $fd
    ld b, a
    ld e, l
    push af
    ret z

    call Call_035_45e6
    rst $20
    daa
    rst $38
    inc d
    nop
    nop
    sub $a1
    ld d, a
    ldh [$67], a
    ld [hl], b
    ccf
    or b
    sbc a
    sub b
    adc a
    ld c, b
    jp $d320


    jr nc, jr_035_7c0d

    inc b
    ldh [$c0], a
    and b
    add b
    and c
    and e
    pop bc
    add b
    add b
    and b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ld [$ff0a], sp
    dec bc
    inc b
    ld a, l
    cp $ec
    rrca

jr_035_7bd5:
    adc h
    rst $08
    db $e4
    add hl, de
    ld b, $02
    ld [bc], a
    add b
    and b
    rst $08

jr_035_7bdf:
    rrca
    call z, $cc0c
    dec bc
    ret


    rrca
    ld c, $09
    xor $0f
    db $ec
    ld [$0440], sp
    rrca
    jr jr_035_7b81

    ld a, a
    ld l, a
    di
    rst $38
    adc l
    ei
    inc sp
    and a
    rst $00
    ld d, $6e
    rra
    nop
    nop
    nop
    rst $38
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$f40b]
    rla
    add sp, $4f
    or b

jr_035_7c0d:
    ccf
    pop bc
    ld a, [bc]
    nop
    rst $38
    cp a
    ld b, b
    ld a, l
    add e
    ld b, $0c
    jp nc, $c133

    ld h, b
    or b
    ret nz

    cp h
    nop
    dec d
    rrca
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    ld hl, sp-$04
    and b
    nop
    rst $30
    sub d
    ld h, d
    push hl
    ld h, d
    add e
    call nz, $0487
    rra
    inc b
    rra
    inc c
    ld a, a
    ld a, [bc]
    ld [bc], a
    add b
    rst $38
    db $e4
    ld b, $e2
    rlca
    db $f4
    inc b
    inc c
    rrca
    rst $30
    rrca
    ld hl, sp+$19
    pop bc
    ld sp, $0000
    dec c
    dec b
    dec e
    rra
    rst $28
    cpl
    sbc a
    dec de
    cp c
    add e
    ld h, a
    nop
    add l
    ld b, b
    ld a, b
    db $fc
    ld bc, $e044
    rst $28
    sbc e
    rst $30
    cp $df
    ld [c], a
    ret nz

    add b
    add b
    ret nz

    and a
    sbc a
    or b
    nop

jr_035_7c71:
    ret nc

    ld bc, $ecdf
    sbc a
    jr nc, jr_035_7c93

    inc c
    ld b, $03
    rra
    rst $38
    ld de, $09ff
    jr nz, jr_035_7c84

    rst $38
    ld sp, hl

jr_035_7c84:
    jr jr_035_7c9c

    pop af
    inc de
    pop af
    jr nz, jr_035_7c71

    ld hl, $e1ce
    rra
    ld bc, $0a01
    nop

jr_035_7c93:
    rst $38
    rst $30
    ld l, b
    ei
    ld d, a
    jr z, @-$1a

    cp a
    rst $00

jr_035_7c9c:
    push af
    adc a
    call $a537
    ld e, a
    add c
    ld d, b
    rst $38
    add d
    ei
    ld b, $ef
    ld e, $78
    jp $fb47


    ld sp, hl
    adc e
    rlca
    ld a, [bc]
    db $10
    rst $38
    pop hl
    nop
    rst $20
    nop
    ld bc, $f806

jr_035_7cbb:
    rra
    jr c, jr_035_7cbb

    cp $fc
    ld hl, sp+$10
    inc d
    rst $38
    cp $3f
    ld e, h
    cp $9f
    ld e, [hl]
    cp a
    xor a
    ld e, a
    rrca
    ld l, a
    daa
    rra
    ld d, l
    ld d, l
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld a, [bc]
    adc b
    rst $38
    ld a, [hl]
    add e
    ld a, e
    add [hl]
    inc b
    inc b
    inc b
    ei
    inc b
    ld [bc], a
    ld a, a
    add c
    push af
    ld d, l
    nop
    add b
    jp $ffff


    rst $38
    rst $38
    ld d, l
    ld b, b

jr_035_7cf6:
    nop
    ld bc, $3f07
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    ld hl, sp+$0f
    ld a, [hl+]
    jr nz, @+$01

    rst $30
    add hl, de
    db $10
    jr nz, @+$4a

    di
    sbc [hl]
    ld d, $04
    rst $30
    ld [hl], $f7
    and h
    inc b
    ldh [rNR41], a
    and b
    ld h, b
    xor $60
    rst $38
    jr nz, @+$01

    jr nz, jr_035_7d9d

    ld a, a
    ret nz

    nop
    push de
    nop
    ld e, a
    ccf
    ld a, c
    rlca
    rra
    ld bc, $0106
    ret nz

    db $fc
    cp $54
    nop
    db $10
    rrca
    rra
    ccf
    rst $38
    jr nz, jr_035_7cf6

    ret nz

    rst $38
    nop
    cp a
    ret nz

    ld a, a
    ld b, b
    ld bc, $0754
    cp $0b
    rst $38
    ld a, [bc]
    ei
    rrca
    cp $fc
    db $fc
    ld a, [$03f6]
    xor c
    ld d, l
    rst $38
    ld bc, $0301
    cp $00
    nop
    nop
    nop
    inc d
    nop
    rst $38
    ld d, h
    xor a
    ld [bc], a
    ld b, $0f
    ei
    add hl, bc
    ld sp, hl
    db $10
    ldh a, [rP1]
    ldh [rNR41], a
    ldh [rP1], a
    rra
    nop
    adc l
    ld a, a
    sbc c
    rlca
    sbc c
    rlca
    sub a
    ld c, $f7
    ld hl, sp+$1f
    and b
    nop
    ld hl, sp-$10
    ldh [$d8], a
    ldh [$fc], a
    ld b, b
    rst JumpTable
    ld b, b
    ld c, a
    jr nz, jr_035_7dac

    jr nz, jr_035_7da8

    ld [hl-], a
    rlca
    push de
    nop
    rrca
    rlca
    ld bc, $0103
    ld hl, sp-$04
    rst $38
    ld e, h
    nop
    rst $38
    ldh [$f8], a
    ld a, a
    ccf
    rrca
    rra
    inc b

jr_035_7d9d:
    inc bc
    nop
    nop
    add b
    nop
    inc bc
    ld d, h
    rst $38
    ccf
    ret nz

    rrca

jr_035_7da8:
    ldh a, [$83]
    db $fc
    db $fc

jr_035_7dac:
    nop
    ld h, b
    dec bc
    rlca
    ld bc, $ff50
    ld a, a
    ret nz

    rst $28
    ld sp, $0ffe

jr_035_7db9:
    ldh [rP1], a
    rlca
    ld [$30fd], sp
    ld hl, sp+$15
    ld d, b
    rst $38
    ldh [$3f], a
    add b
    nop
    nop
    ld bc, $a101
    cp $8a
    sbc [hl]
    add b
    dec b
    inc d
    rst $10
    inc h
    sub a
    xor h
    and a
    adc l
    xor a
    adc e
    dec bc
    inc de
    ld a, [bc]
    inc de
    daa
    ld a, [hl+]
    xor b
    rst $38
    ld a, a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    cp $01
    xor b
    xor b
    rst $38
    nop
    nop
    nop
    cp $01
    nop
    nop
    nop
    ld l, [hl]
    pop af
    ld [bc], a
    ld [$3fff], sp
    jr nz, jr_035_7db9

    dec e
    jp z, $0a1a

    ei
    ld c, $fe
    ld b, a
    daa
    cp $17
    ld bc, $ff50
    di
    ld bc, $01c3
    sbc [hl]
    add a
    db $fc
    sbc h
    inc a
    cp $e7
    rlca
    adc a
    xor d
    xor d
    nop

jr_035_7e1c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, h
    nop
    ldh [rNR41], a
    jr nz, @+$12

    jr jr_035_7e1c

    dec bc
    db $fc
    dec b
    cp $02
    rst $38
    nop
    rst $38
    rst $38
    push de
    nop
    ldh [$f0], a
    ld hl, sp+$20
    ld [bc], a
    rra
    ld a, [de]
    ld de, $1718
    inc d
    rla
    daa
    daa
    inc h
    dec sp
    inc e
    rrca
    inc e
    ld a, [hl-]
    ld de, $7f54
    rst JumpTable
    ldh [$ee], a
    ret nz

    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$3f], a
    ld d, b
    xor d
    nop
    ldh a, [$fc]
    ld a, h
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    nop
    ret nz

    ld e, [hl]
    ldh [$1f], a
    ld hl, sp+$03
    rst $38
    ld bc, $15ff
    ld d, b
    ld bc, $3e7f
    ld b, $07
    rlca
    rra
    rst $38
    rst $38
    rst $38
    rst $30
    ld sp, hl
    dec d
    ld b, b
    ld b, h
    add h
    ld c, [hl]
    call nz, $c4c4
    rst $00
    rst $00
    ld b, a
    rst $08
    ld b, [hl]
    rst $38
    ld b, a
    nop
    ld a, [hl+]
    rst $38
    dec bc
    inc b
    rlca
    ld [$0c1f], sp
    ei
    ld c, $d5
    ccf
    and $43
    ld a, a
    jr z, jr_035_7ec1

    db $fc
    ei
    rlca
    inc c
    inc e
    rst $30
    rla
    db $f4
    inc d
    sub h
    rst $38
    ld e, a
    inc e
    db $ec
    nop
    ld d, b
    inc bc
    cp [hl]
    add hl, de
    ld d, $0d
    dec de
    rlca
    rst JumpTable
    and e
    dec a
    inc a
    cp a
    ret nz

    ld a, a
    nop
    inc d

jr_035_7ec1:
    nop
    ld c, h
    ld l, [hl]
    sbc h
    cp h
    db $f4
    db $fc
    inc h
    jp hl


    or h
    ld a, l
    db $f4
    dec a
    ld [hl], h
    db $fd
    inc a
    ld bc, $0355
    ld c, $07
    ld b, $07
    ld [hl-], a
    rlca
    db $76
    ld a, [c]
    ld a, [$fafe]
    ld d, l
    nop
    rst $38
    add b
    add b
    ld b, b
    ld b, b
    ld l, d
    push af
    and l
    ld a, d
    ld a, e
    and h
    xor a
    ld [hl], b
    ld d, h
    ld [$01ff], sp
    nop
    nop
    dec b
    ld a, [$55aa]
    ld e, a
    and b
    nop
    cp $01
    and b
    adc b
    rst $38
    nop
    add b
    ld a, a
    ret nz

    ld a, a
    and b
    db $10
    di
    inc c
    ld a, [hl]
    or d
    rst $08
    ld [$ff0a], sp
    rrca
    pop af
    rst $28
    rra
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    nop
    nop
    ld [$ff80], sp
    ret nc

    ccf
    cpl
    rst JumpTable
    ld b, b
    ld e, a
    db $fc
    push hl
    or a
    ld b, [hl]
    xor $2c
    sbc $36
    ld b, b
    add b
    rst $38
    nop
    push af
    ld a, [$1eed]
    db $fd
    inc bc
    add b
    xor a
    call c, $f4ef
    ei
    call nz, RST_00
    ld bc, $41ff
    cp a
    xor d
    ld d, a
    rst $30
    ld a, [bc]
    cp l
    jp nz, Jump_035_61be

    rst JumpTable
    jr c, @-$0b

    rra
    add b
    add b
    cp $f3
    rst $38
    ld a, [c]
    db $ed
    or $fb
    db $fd
    ei
    rst $28
    ld [hl], a
    rst $28
    sbc a
    rst $38
    ld a, a
    add h
    nop
    db $fd
    add [hl]
    rst $30
    adc [hl]
    add a
    rrca
    ld hl, sp+$0b
    ld hl, sp-$0f
    ldh a, [$e1]
    ldh [$c1], a
    ret nz

    add d
    jr nz, @+$01

    rst $00
    sbc $65
    xor a
    ld a, h
    cp b
    ld e, a
    cp a
    ld d, [hl]
    ld hl, sp+$5c
    ld hl, sp+$30
    nop
    dec [hl]
    nop
    cp $a7
    cp d
    rst $20
    db $fc
    sbc $60
    ldh a, [$c0]
    add b
    ld bc, $0801
    db $10
    ccf
    xor a
    rra
    rst JumpTable
    ldh [rP1], a
    ld a, l
    inc bc
    rst $30
    rrca
    rst $08
    ei
    rlca
    rst $38
    inc bc
    nop
    ld e, b
    add [hl]
    db $fd
    cp h
    db $fc
    sbc h
    cp d
    sbc h
    add $8c
    call z, $0707
    ld c, $07
    xor d
    and d
    db $fd
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    ld bc, $0203
    ld e, a

Jump_035_7fc0:
    or b
    rst $38
    db $10
    ld sp, hl
    ld d, $23
    rst $28
    nop
    jr @+$01

    rrca
    rst $38
    jr @-$0f

    ld sp, $14fd
    inc bc
    cp $02
    ld hl, $23ff
    inc bc
    db $dd
    nop
    db $e3
    rst JumpTable
    ld sp, $93ff
    ld h, c
    rra
    ret nz

    nop
    ccf
    and b
    ld e, a
    pop bc
    ccf
    and c
    ld e, a
    db $d3
    nop
    ld l, $a7
    ld e, h
    set 7, h
    rst $38
    nop
    ld a, a
    db $10
    add b
    cp a
    ret nz

    dec h
    rst $28
    db $10
    rst $30
    ld [$fb00], sp
    db $06

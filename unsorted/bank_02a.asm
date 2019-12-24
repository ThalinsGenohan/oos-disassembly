; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX

Jump_02a_4000:
    jr c, jr_02a_4011

    nop
    jr z, jr_02a_4015

    jr c, jr_02a_4008

    dec c

jr_02a_4008:
    ld c, a
    rra
    dec bc
    and b
    ld a, $10
    nop
    dec [hl]
    inc hl

jr_02a_4011:
    nop
    ld d, $37
    ld a, l

jr_02a_4015:
    sub $70
    jr c, jr_02a_403c

    ld l, c
    nop
    inc d
    ld h, [hl]
    nop
    ld a, [hl]
    inc h
    inc a
    inc a
    jr jr_02a_4045

    dec h
    add hl, hl
    nop
    ld [de], a
    jp $3e00


    and l
    ld b, d
    or a
    dec h
    add hl, hl
    dec l
    ldh [rNR50], a
    ret nz

    nop
    ld a, a
    nop
    nop
    nop
    rlca
    nop
    rrca

jr_02a_403c:
    rlca
    jr jr_02a_404e

    nop
    ld de, $1c0e
    inc bc
    inc hl

jr_02a_4045:
    inc e
    ld b, h
    dec sp
    ld bc, $3f60
    ld a, l
    ld e, $3f

jr_02a_404e:
    nop
    ld bc, $8036
    nop
    add hl, bc

jr_02a_4054:
    add e
    nop
    ld l, l
    add e
    db $10
    rst $28
    ld a, l
    nop
    add d
    cp $7d
    rst $38
    ld a, h
    ld a, h
    add e
    sub d
    rla
    ld l, l
    ld bc, $21fe
    cp e
    add hl, hl
    rra
    add hl, bc
    jr nz, jr_02a_406f

jr_02a_406f:
    rlca
    nop
    rrca
    rlca

Call_02a_4073:
    inc e
    rrca
    add hl, de
    ld c, $00
    inc e
    inc bc
    ld [hli], a
    dec e
    ld h, l
    ld a, [hl-]
    ld a, b
    ccf
    jr nc, jr_02a_40c1

    ld b, $31
    nop
    inc c
    add e
    nop
    ld b, l
    add e
    nop
    jr z, jr_02a_4054

    ld de, $feee
    ld bc, $7dfe
    ld [$7cff], sp
    sub d
    ld a, l
    ld h, $83
    cp $fe
    jr nz, @+$7e

    ld a, h
    rra
    add hl, bc
    ld bc, $0300
    ld bc, $001a
    ld bc, $1b3c
    ld h, $1d
    ld hl, $111e

jr_02a_40af:
    inc bc
    ld c, $10
    rrca
    ld [$0707], sp
    ld d, e
    nop
    ld a, [bc]
    ld bc, $00c7
    rst $28
    rst $00
    jr c, jr_02a_40af

    db $10

jr_02a_40c1:
    ld b, c
    nop
    rst $38
    nop
    rst $38
    ld b, h
    add $39
    cp d
    ld a, l
    jr nc, @+$03

    cp $29
    nop
    db $10
    inc c
    nop
    rla
    inc c
    ld [bc], a
    inc hl
    dec e
    ld b, h
    dec sp
    ld c, b
    scf
    ld h, c
    ld l, b
    inc bc
    scf
    ccf
    dec de
    rra
    dec b
    rlca
    rra
    dec bc
    and b
    add b
    ld sp, $0708
    db $10
    rrca
    add hl, de
    ld c, $1d
    inc bc
    ld c, $0f
    ld b, $07
    ld bc, $1f01
    ld de, $0220
    ret nz

    nop
    cp a
    ld b, b
    nop
    rst $38
    ld hl, $10c0
    rst $38
    rst $38
    ld a, a
    ld h, $03
    nop
    rlca
    inc bc
    jr nc, jr_02a_411c

    ld b, $21
    dec h
    dec bc
    inc b
    inc c
    inc bc
    inc h
    inc d
    dec bc
    ld hl, $1728

jr_02a_411c:
    ld h, c
    inc l
    rla
    ld [bc], a
    ccf
    rla
    rra
    dec bc
    dec bc
    nop
    nop
    ld d, $38
    rlca
    jr c, jr_02a_41a8

    ld b, h
    cp $82
    inc hl
    daa
    ld l, l
    nop
    ld bc, $0600
    ld bc, $0778
    ld hl, $001f
    ld e, $01
    dec bc
    rlca
    ld de, $fe0e
    add hl, de
    ld c, $84
    ld a, a
    ld h, a
    inc e
    dec hl
    dec [hl]
    ldh [$f1], a
    nop
    nop
    ld c, c
    ldh a, [$eb]

jr_02a_4152:
    db $10
    sbc [hl]
    ldh [$31], a
    nop
    adc $c9
    ld [hl], $9d
    or $ab
    or $53
    ld [bc], a
    xor h
    add [hl]
    ld a, b
    inc e
    ldh [$e0], a
    sbc e
    rra
    rla
    nop
    jr z, jr_02a_4183

    ld hl, $4129
    ld h, a
    and c
    inc c
    cpl
    db $10
    ccf
    rlca
    scf
    and b
    ld hl, sp+$00
    ld l, $04
    ld hl, sp+$21
    db $e4
    ld b, c
    ld h, a
    and c

jr_02a_4182:
    db $fc

jr_02a_4183:
    jr c, jr_02a_4185

jr_02a_4185:
    db $fc
    ld b, e
    and b
    jr nz, jr_02a_4152

    nop
    ld b, c
    db $10
    ret nc

    ld [$08d8], sp
    ld hl, $00d0
    ld hl, $a050
    ld [hl], b
    inc b
    ld hl, $6004
    inc d

jr_02a_419d:
    ld h, b
    inc b
    ldh [rNR42], a
    inc d
    or h
    inc b
    ld b, l
    or l
    ld b, $13

jr_02a_41a8:
    nop
    ld hl, $101b
    nop
    inc bc
    inc c
    ld b, $01
    ld b, $08
    inc c
    ld [bc], a
    ld [bc], a
    inc e
    nop
    inc d
    ld a, [bc]
    ld h, $00
    ld hl, $0024
    ld a, [bc]
    ld c, h
    jr nz, jr_02a_420f

    nop
    ld hl, sp+$04
    ldh a, [rP1]
    ld [$0003], sp
    inc e
    ld [hli], a
    jr nz, jr_02a_420f

    ld b, b
    ld b, b
    nop
    and c
    and b
    nop
    sub b
    ld bc, $1081
    nop
    add c
    ld [bc], a
    adc a
    nop
    adc a
    db $10
    dec e
    add d
    nop
    dec e
    add b

jr_02a_41e5:
    add hl, de
    add h
    scf
    add h
    inc sp
    ld b, b
    ld [$1063], sp
    ld h, e
    nop
    ld b, c
    inc b
    ld h, [hl]
    adc c
    nop
    cp $00  ; and a / or a
    db $fc
    ld [bc], a
    jp nz, $8121

    ld [hli], a
    jr nz, @-$5d

    jr nz, jr_02a_4182

    ld h, b
    pop hl
    jr nz, jr_02a_419d

    add c
    jr nz, @-$66

    add b
    ld hl, $0018
    jr @+$22

    add hl, sp

jr_02a_420f:
    ld b, b
    ld bc, $0581
    dec e
    ld hl, $100c
    inc c
    db $10
    ld bc, $000d
    ld hl, $000f
    ld e, $01
    jr nz, jr_02a_41e5

    nop
    add c
    jr nz, jr_02a_4287

    sub d
    ld [hl-], a
    ld c, d
    nop
    jr @+$22

    jr jr_02a_4233

    inc e
    ld [bc], a
    ld a, [de]
    and b

jr_02a_4233:
    nop
    ld [hl-], a
    adc b
    pop af
    ld [bc], a
    pop hl
    db $10
    ld bc, $2000
    nop
    ld bc, $3020
    ld [$1060], sp
    ld h, b
    inc b
    nop
    ld h, b
    add b
    ret nz

    jr nz, @+$23

    ldh [rNR10], a
    nop
    ld a, b
    adc b
    jr c, jr_02a_429b

    jr c, jr_02a_425d

    inc [hl]
    inc b
    nop
    inc h
    ld d, h
    ld [hl], h
    inc d
    ld h, h

jr_02a_425d:
    inc d
    inc [hl]
    ld c, h
    ld b, $18
    jr nz, @+$04

    inc b

jr_02a_4265:
    ld b, $41
    ld b, l
    nop
    nop
    rra
    ld de, $051e
    inc de
    ld [$0819], sp
    nop
    ld de, $7900
    ld [$0841], sp
    ld c, b
    adc c
    ld [$51d1], sp

Jump_02a_427e:
    db $10
    sub b
    jr nz, jr_02a_4289

    rrca
    rrca
    nop
    jr jr_02a_42c3

jr_02a_4287:
    inc sp

jr_02a_4288:
    ld d, l

jr_02a_4289:
    ld l, e
    rst $20
    db $db
    call $bb00
    dec de
    ld a, l
    ld a, [hl-]
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, $40
    ccf
    ld h, b

jr_02a_4299:
    ld e, $1f

jr_02a_429b:
    dec e
    rra
    ld a, [de]
    ld e, $00
    inc d
    inc e
    add b
    ret nz

    and b
    ld h, b
    ld d, b
    or b
    ld bc, $d0b0
    add sp, -$28
    ret c

    add sp, -$08
    inc h
    nop
    add sp, -$70
    ld l, b
    ld [hl], b
    sub b
    jr nz, jr_02a_4299

    ld b, b
    ld [$80c0], sp
    add b
    nop
    add b
    rra
    rra
    ld l, a

jr_02a_42c3:
    nop
    ld [hl], b
    cp b
    rst $00
    rst AddAToHL
    xor a
    rla
    rst $28
    sub a
    nop

jr_02a_42cd:
    rst $28
    scf
    ld l, a
    ld l, a
    ld [hl], a
    ld a, e
    ld [hl], a
    dec [hl]
    ld b, $3b
    dec sp
    inc a
    ld a, $3f
    scf

jr_02a_42dc:
    jr nz, jr_02a_42fa

    ld [$131f], sp
    rra
    nop
    jr nz, jr_02a_4265

    ret nz

    ld b, b
    ld [$a060], sp
    or b
    ret nc

    ld hl, $e8d8
    ld hl, sp-$40
    ld b, c
    dec h
    jr z, jr_02a_42cd

    ret nz

    jr nc, jr_02a_4288

    ldh a, [$0c]

jr_02a_42fa:
    jr nz, jr_02a_42dc

    ret nz

    ret nz

    ld e, l
    ret nz

    ld a, [hl]
    ld a, [hl]
    ld [bc], a
    db $db
    rst $20
    ld a, [hl]
    add c
    rst $38
    nop
    pop hl
    inc a
    inc b
    jp $ffe1


    ccf
    ccf
    cp e
    rra
    rra
    nop
    ld l, a
    ld [hl], b
    cp a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    sub b

jr_02a_431e:
    inc hl
    cp a
    ld b, b
    ld a, l
    ccf
    ret nz

    ld e, $e1
    add b
    ld l, $e5
    rst $38
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld c, $00
    rrca
    sbc e
    sbc h
    ld l, a
    ldh a, [$df]
    ld h, b
    sbc a
    ld [hl], b
    ld h, b
    dec sp
    cp l
    ld hl, $a05f
    rrca
    ldh a, [$08]
    ret nz

    rst $38
    di
    rst $38

jr_02a_4346:
    jr nz, jr_02a_4346

    cp $fb
    inc e
    rlca
    cp $01
    or l
    ld bc, $310a
    and h
    ld e, e
    or b
    inc [hl]
    cpl
    ld e, a
    nop
    ret nz

    ld h, b
    ld hl, sp-$48
    db $fc
    db $fc
    xor [hl]
    cp $00  ; and a / or a
    xor d
    cp $ab
    rst $30
    cp a
    rst $38
    xor a
    rst $30
    nop
    or e
    rst $28
    xor [hl]

jr_02a_436e:
    or $be
    cp $bc
    db $fc
    nop
    cp b
    ld hl, sp-$60
    ldh [$a0], a
    ldh [rLCDC], a
    ldh [rP1], a
    ret nz

    ld h, b
    db $fc
    cp h
    rst $38
    rst $38
    xor a
    rst $38
    nop
    cp a
    xor $ae
    push af
    cp a
    rst $38
    xor l
    di
    nop
    cp e
    push hl

jr_02a_4391:
    xor l
    di
    cp a
    rst $38
    cp [hl]
    cp $a0
    rra
    jr nc, jr_02a_439b

jr_02a_439b:
    nop
    jr jr_02a_431e

    add b
    ld b, b
    ret nz

    ld hl, sp-$7f
    nop
    ld [$f0f0], sp
    ldh [$e0], a
    add b
    add b
    inc de
    jr nz, jr_02a_436e

    nop
    jr nz, @+$61

    db $10
    cp $fe
    cp a
    rst $38
    cp a
    rst $20
    nop
    xor a
    ld a, [c]
    cp a
    rst $38
    or a
    ld hl, sp-$46
    push af
    nop
    or a
    ld hl, sp-$41
    rst $38
    cp h
    db $fc
    or b
    ldh a, [$80]
    ccf
    ld d, b
    ret nz

    ret nz

    ret c

    jr c, jr_02a_4391

    ld a, a
    cp $02
    cp $7c
    db $fc
    ld hl, sp+$78
    ld h, b
    ld b, c
    ld l, b
    inc bc
    nop
    nop
    inc c
    inc bc
    inc de
    dec c
    daa
    inc e
    ld c, h
    ld bc, $583b
    scf
    ld sp, $335e
    ld l, l
    ld bc, $0008
    dec l
    ld sp, $181e
    rlca
    inc b
    inc bc
    nop
    ld [$0001], sp
    nop
    rst $38
    ld [bc], a
    ld [$bd7e], sp
    jp $bd00


    nop
    rst $38
    inc a
    jp $00c3


    add c
    add c
    nop
    jr @-$3b

    ld b, d
    rst $38
    db $db
    rst $38
    inc a
    ld a, [de]
    ld [$1cc0], sp
    ld [$103f], sp
    rrca
    ld bc, $061f
    inc a
    dec bc
    nop
    ld a, b
    rla
    ld [hl], c

jr_02a_4427:
    ld l, $73
    dec l
    ld h, a
    ld a, [hl-]
    nop
    ld h, a
    ld a, [de]
    daa
    ld a, [de]
    inc hl
    dec e
    ld de, $310e

jr_02a_4436:
    inc b
    inc bc
    ld a, $08
    inc h
    db $10
    inc a
    rst $20
    db $db
    ld b, $10
    adc b
    ld b, l
    ld [$81c3], sp
    nop
    ld bc, $c310
    nop
    rst $38
    inc c
    jr @+$01

    jp $537e


    ld [$203f], sp
    ld c, $01
    nop
    jr jr_02a_4461

    jr nc, @+$11

    ld h, e
    dec e
    ld h, a
    ld a, [de]
    nop

jr_02a_4461:
    ld c, [hl]
    dec [hl]
    ld e, h
    dec hl
    ld e, h
    dec hl
    inc e
    dec hl
    ld [bc], a
    ld l, $15
    rla
    ld a, [bc]
    inc bc
    dec b
    ccf
    jr nz, jr_02a_4436

    call z, $1869
    ld b, l
    db $10
    jp $8000


    ld [$083f], sp
    ld b, d
    add c
    nop
    inc a
    db $db
    add c
    ld a, [hl]
    rst $20
    sbc c
    rst $38
    ld a, [hl]
    add b
    cp a
    jr nc, @+$13

    ld c, $27
    dec de
    ld c, [hl]
    dec [hl]
    ld e, b
    nop
    cpl
    add hl, sp
    ld d, [hl]
    ld sp, $315e
    ld e, [hl]
    add hl, sp
    ld [bc], a
    ld d, $18
    cpl
    ld c, $15
    rlca
    ld a, a
    jr z, jr_02a_4427

    ld d, d
    ld a, [hl]
    dec a
    ld [$057e], sp
    db $10
    jp nz, Jump_02a_7f01

    ld b, b
    inc a
    ld [$80c3], sp
    ld a, a
    rst $38
    ld d, b
    ld [$1818], sp
    inc a
    add b
    nop
    adc b
    ld a, l
    ld a, l
    cp [hl]
    cp [hl]
    ld a, a
    ld a, a
    ld e, d
    add hl, de
    ld e, d
    or l
    or l
    inc hl
    ld hl, $7025
    cp h
    cp h
    ld hl, $0810
    db $fd
    db $fd
    ld e, d
    ld e, d
    ld a, a
    jr z, jr_02a_44e9

    inc de
    rrca
    nop
    inc hl
    dec e
    daa
    jr jr_02a_4509

    jr jr_02a_455b

    jr z, jr_02a_44e6

jr_02a_44e6:
    ld [hl], e
    inc l
    ld e, h

jr_02a_44e9:
    inc sp
    cpl
    inc e
    ld a, e
    rlca
    ld [bc], a
    ld [hl], a
    jr @+$41

    db $10
    rra
    nop
    nop
    ret nz

    ld h, b
    ld hl, sp-$48
    db $fc
    db $fc
    and [hl]
    cp $00  ; and a / or a
    xor [hl]
    or $af
    rst $30
    cp a
    rst $38
    and a
    rst $38
    ret nz

    dec h

jr_02a_4509:
    dec hl
    cp [hl]
    cp $bc
    db $fc
    cp b
    ld hl, sp+$30
    and b
    ldh [$61], a
    ccf
    db $fc
    cp h
    rst $38
    rst $38
    dec c
    xor e
    rst $30
    xor a
    di
    inc hl
    ld e, a
    ei
    dec h
    add sp, $23
    daa
    rra
    ld a, [bc]
    nop
    add b
    add b
    add b
    ret nz

    ld hl, $f8c0
    ld b, b
    ldh a, [$f0]
    ldh [$e0], a
    dec hl
    ret nz

    or e
    and b
    ret nz

    ld h, b
    ld hl, sp-$48
    cp $fe
    ld [$f1ae], sp
    cp a
    ld_long $ff43, a
    sub l
    xor $e0
    dec h
    inc hl
    daa
    cp h

jr_02a_454c:
    db $fc
    or b
    ldh a, [$a0]
    ld d, b
    ldh [$61], a
    nop
    add b
    ret nz

    ret nz

    ld hl, sp-$08
    ld [bc], a
    rst $38

jr_02a_455b:
    rst $38
    cp $fe
    ld a, h
    db $fc
    daa
    ld h, b
    ld a, [de]
    ldh [$80], a
    add b
    or l
    cp c
    and b
    jr nc, jr_02a_458b

    nop
    or b
    ld [hl], b
    ldh a, [$f0]
    ld l, b
    add sp, $64
    db $e4
    dec [hl]
    ld h, e
    db $e3
    add hl, de
    ld a, [bc]
    ret nz

    jr jr_02a_457c

jr_02a_457c:
    db $10
    inc a
    ld b, b
    ld d, d
    inc h
    ld hl, $207e
    ld e, d
    ld h, [hl]
    ld hl, $4805
    ld b, $e1

jr_02a_458b:
    inc b
    rlca
    jr nz, jr_02a_4594

    ld c, $09
    sub b
    ld b, c
    dec bc

jr_02a_4594:
    rrca
    jr nz, @+$1a

    rra
    jr nz, jr_02a_45d9

    inc b
    ld b, a
    ld a, b
    rst JumpTable
    ld h, b
    ld bc, $0240
    inc bc
    inc h
    inc bc
    ld [bc], a
    ccf
    rlca
    inc b
    ld hl, $0c0b
    ld a, [hli]

jr_02a_45ad:
    rrca
    ld [$1721], sp
    inc a
    db $10
    ld h, c
    cpl
    rra
    jr nc, @+$41

    jr nz, @+$3f

    dec sp
    scf
    ld d, l
    ld d, e
    add b
    dec l
    ccf
    ld h, b
    ld a, a
    ld b, b
    cp a
    pop bc
    db $fd
    jr z, jr_02a_454c

    nop
    nop
    inc de
    ld bc, $0321
    dec b
    ld b, $00
    rrca
    ld [$111e], sp
    ccf
    jr nz, @+$81

jr_02a_45d9:
    ld b, b
    nop
    rst $30
    adc b
    rst $38
    ld bc, $03fe
    cp h
    ld b, a
    ret nz

    rra
    ld a, [bc]
    nop
    add hl, bc
    ld bc, $0707

jr_02a_45eb:
    dec de
    inc e
    ld l, a
    nop
    ld [hl], b
    or e
    call z, $0cf3
    sbc [hl]
    ld h, c
    jr jr_02a_45f8

jr_02a_45f8:
    sbc a
    jr jr_02a_461a

    add hl, de
    rra
    rrca
    rra
    dec c
    nop
    rrca
    dec c
    adc a
    adc a
    adc [hl]
    sub [hl]
    sbc l
    sbc h
    nop
    rst JumpTable
    db $fc
    rst JumpTable
    ld a, l
    rst $38
    ld e, a
    rst $38
    ld h, d
    nop
    db $fd
    xor [hl]
    pop af
    adc $f1
    xor $11

jr_02a_461a:
    cp b
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $00
    rst $20
    add [hl]
    ld sp, $8487
    add c
    jr nz, jr_02a_45ad

    add e
    add d
    ld hl, $0300
    ld b, $07
    rst $00
    rst $00
    rst $38
    ld e, h
    ld h, h
    nop
    rst $38
    ld b, a
    adc a
    ld hl, sp-$03
    adc l
    ret c

    ld d, l
    jr jr_02a_45eb

    ld d, l
    adc b
    pop bc
    ld c, c
    ld d, a
    adc d
    ld a, l
    nop
    xor a
    ld e, b
    rst $38
    adc l
    rst $38
    rst JumpTable
    rst $38
    ld hl, sp+$30
    ld [hl], b
    rst $38
    nop
    rra
    ld [$0008], sp
    inc e
    ld [$1621], sp
    ld [$0017], sp
    inc c
    rra
    ld a, [bc]
    dec d
    dec bc

jr_02a_4665:
    db $10
    rrca
    dec d
    add b
    ld b, c
    rla
    rrca
    scf
    rrca
    ld h, l
    rra
    ld h, a
    ld [bc], a
    ccf
    ld [hl], e
    rra
    ld a, e
    rra
    nop
    ret nz

    add c
    nop
    nop
    rst $38
    nop
    ei
    ld b, l
    add d
    ld a, l
    and d
    nop
    db $fd
    jp nc, $e4ff

    rst $38
    ret c

    rst $38
    db $f4
    jr nz, @+$01

    ret z

    ld b, a
    call nz, $10ff
    nop
    jr z, jr_02a_46d6

    db $10
    ld hl, $1068
    ret z

    jr nc, @-$06

    ld h, b
    ld [bc], a
    xor b
    ret nc

    ld e, b
    and b
    jr c, jr_02a_4665

    inc hl
    cp b

jr_02a_46a7:
    ld c, d
    ld b, b
    ld h, e
    ld a, b
    add b
    ld h, e
    nop
    ret nz

    ldh a, [rP1]
    nop
    ld hl, sp+$10
    rst $20
    jr c, jr_02a_46c1

    rst $38
    ccf
    db $10
    rst $38
    db $fc
    rst $38
    jr nz, jr_02a_46a7

    rst $38
    db $fd

jr_02a_46c1:
    rst $38
    inc bc
    ld b, b
    rst $38
    cp $ff
    push de
    rst $38
    rst $38
    ld h, b
    nop
    cp $00  ; and a / or a
    and l
    cp $4e
    ldh a, [$3c]
    ldh [rDIV], a
    ld a, h

jr_02a_46d6:
    ret nz

    ld a, b
    add b
    ld a, b
    inc hl
    ret nz

    ldh a, [rLCDC]
    add b
    ld hl, $ffaa
    nop
    rst $38
    jr nz, @+$01

    nop
    inc bc
    cp $88
    rst $30
    ld d, l
    xor d
    xor d
    ld d, l
    jr z, @-$0a

    dec bc
    ld c, [hl]
    nop
    nop
    inc c
    ld [hl], b
    add b
    ldh [$3c], a
    add b
    ldh a, [rNR42]
    ld b, a
    ld l, c
    ld b, l
    ret nz

    ldh [$d0], a
    rra
    dec c
    ret nz

    inc bc
    ld hl, $0302
    ld bc, $0719
    nop
    inc e
    inc b
    inc e
    jr jr_02a_4738

    ld c, l
    jr nz, @-$4e

    rra
    dec c
    add b
    ld hl, $0020
    jr nc, jr_02a_471e

jr_02a_471e:
    ld [hl], b
    inc e
    ld b, b
    ld [hl], b
    jr nc, jr_02a_4749

    xor l
    nop
    inc c

jr_02a_4727:
    ld bc, $1100
    add hl, bc
    nop
    rlca
    ld b, c
    rra
    jr @+$21

    dec h
    ld b, $06
    rrca
    ld [$0109], sp

jr_02a_4738:
    ld sp, $0e00
    jr nz, jr_02a_475f

    nop
    ret nz

    ld b, c
    ldh a, [$30]
    ldh a, [rNR51]
    ret nz

    jr nc, jr_02a_4727

    jr nz, jr_02a_4776

jr_02a_4749:
    nop
    ld c, $08
    nop
    inc e
    ld [$3e00], sp
    inc d
    ld [hl], a
    ld [hli], a
    ld h, e
    nop
    ld b, c
    nop
    ld a, $63
    ld b, c
    daa
    dec hl
    cpl
    inc sp

jr_02a_475f:
    nop
    ld c, $0d
    cp [hl]
    ld hl, $430c
    push hl
    jr nz, jr_02a_47dd

    inc b
    jr jr_02a_4784

    inc b
    inc b
    nop
    ret nz

    jr nc, jr_02a_47a2

    inc bc
    ld h, b
    ld h, b
    ld b, b

jr_02a_4776:
    ld b, b
    ld b, h
    ld b, h
    rst $28
    nop
    ld d, $10
    jr nz, jr_02a_479f

    ld h, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ret c

jr_02a_4784:
    ld hl, sp+$08
    sbc c
    ld sp, hl
    xor e
    db $db
    dec de
    ld c, $03
    inc bc
    rla
    add b
    ld b, b
    ld [hl], $37
    inc a
    ccf
    dec l
    ld a, $27
    dec b
    inc a
    dec de
    inc e
    dec bc
    inc c
    dec e

jr_02a_479f:
    inc c
    add b
    add b

jr_02a_47a2:
    db $10
    ret nz

    ret nz

    ldh [rLCDC], a
    ld h, b
    ldh [rNR41], a
    ldh [$08], a
    or b
    ld [hl], b
    ret nc

    ld [hl], b
    ld [hl], a
    ld bc, $2701
    nop
    daa
    ld a, a
    ld a, a
    cp [hl]
    cp $a6
    cp $c4
    nop
    db $fc
    ret c

    add sp, $68
    ld a, b
    jr c, jr_02a_47fd

    ld a, [de]
    nop
    ld a, [de]
    ld b, $06
    call nz, $e5c6
    rst $20
    or e
    ld h, b
    di
    dec a
    add hl, hl
    rlca
    rlca
    dec bc
    rrca
    ld [de], a
    ld h, b
    ld e, $35
    dec hl
    db $10

jr_02a_47dd:
    db $10
    ld h, b
    ld h, b
    ldh [rSB], a
    ldh [$a2], a
    ld [c], a
    ld d, c
    ld [hl], c
    ld sp, $2b31
    ret nz

    cpl
    jr nz, @+$1e

    inc e
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    nop
    ld h, e
    ld a, a
    ld c, d
    ld [hl], a
    ld e, l
    ld h, d
    dec hl
    inc [hl]
    nop

jr_02a_47fd:
    inc de
    inc e
    scf
    jr c, @+$31

    jr nc, jr_02a_4853

    ld [hl], b
    jr nz, jr_02a_4866

    ld h, b
    ld h, c
    ld l, $31
    ld [de], a
    ld e, $00
    nop
    nop
    ld [$dc08], sp
    call c, $febe
    sub $00
    ld a, $f2
    ld e, $f2
    ld c, $fa
    ld b, $fc
    ld c, h
    inc b
    inc hl
    cp $02
    ld h, c
    daa
    ld h, h
    sbc h
    ld [$7848], sp
    rla
    jr @+$63

    rrca
    ld [$000b], sp
    inc c
    dec de
    inc e
    scf
    jr c, jr_02a_4878

    jr nc, @+$31

    ld [de], a
    jr nc, jr_02a_485d

jr_02a_483e:
    jr nz, jr_02a_4861

    ccf
    jr nz, @+$29

    rrca
    ld b, b
    db $10
    scf
    add hl, bc
    rrca
    cp b
    cp b
    or h
    cp h

jr_02a_484d:
    jr nz, @+$66

    db $fc
    ld hl, $fc2c

jr_02a_4853:
    ret c

    jr c, jr_02a_483e

    ld [de], a
    jr jr_02a_484d

    inc c
    ld h, c
    ld hl, sp+$08

jr_02a_485d:
    add hl, hl
    ldh a, [rP1]
    db $10

jr_02a_4861:
    db $ec
    inc e
    ld e, b
    cp b
    ld [hl], b

jr_02a_4866:
    ld [hl], b
    dec b
    nop
    ld b, $02
    inc bc
    inc de
    inc de
    scf
    scf
    ld a, $00   ; xor a
    ccf
    dec [hl]
    ld a, $37
    inc a
    rra

jr_02a_4878:
    jr jr_02a_48b1

    ld [$3f38], sp
    jr nc, jr_02a_48ae

    pop bc

jr_02a_4880:
    rla
    jr jr_02a_488f

    nop
    rrca
    ld l, $ee
    ld e, d
    sbc $92
    sbc [hl]
    call c, $dc00
    ld h, b

jr_02a_488f:
    ldh [$b0], a
    ld [hl], b
    ret nc

    jr nc, jr_02a_485d

    db $10
    jr c, jr_02a_4880

    jr jr_02a_48bb

    db $e4
    inc d
    db $ec
    inc e
    ld [bc], a
    db $f4
    inc e
    db $e4
    inc e
    ret c

    jr c, jr_02a_48db

    add hl, bc
    ld [$050f], sp
    rlca
    ld [bc], a
    ld b, b
    nop

jr_02a_48ae:
    nop
    inc b
    add b

jr_02a_48b1:
    ld b, b
    ld b, $06
    dec h
    daa
    dec [hl]
    scf

Call_02a_48b8:
    ld l, d
    nop
    ld a, l

jr_02a_48bb:
    ld c, a
    ld a, b
    ld d, a
    ld l, b
    ld e, a
    ld h, b
    cpl
    ld b, $30
    dec c
    ld c, $20
    jr nz, jr_02a_4902

    nop
    inc c
    ld [$0800], sp
    inc c
    inc c
    sub [hl]
    sbc [hl]
    ld [hl], d
    cp $f2
    ld bc, $fe0e
    ld b, $f4
    inc c

jr_02a_48db:
    sbc b
    ld a, b
    ld sp, $0244
    ld b, b
    inc bc
    inc bc
    rla
    ld b, b
    dec a
    ccf
    ld [$3d36], sp
    dec hl
    inc [hl]
    ld hl, $181f
    scf
    db $10
    jr c, jr_02a_4922

    jr nc, @+$23

    ld d, $19
    ld a, [bc]
    ld c, $c0
    ccf
    and b
    ld [$9808], sp
    sbc b
    cp h
    cp h

jr_02a_4902:
    nop
    db $ec
    db $fc
    ld h, h
    db $fc
    call nz, $a87c
    ld e, b
    inc c
    add sp, $18
    db $f4
    inc c
    ld hl, $9025
    ldh a, [rDIV]
    jr jr_02a_492f

    inc b
    inc b
    nop
    ret nz

    jr nc, jr_02a_494d

    inc bc
    ld h, b
    ld h, b
    ld b, b
    ld b, b

jr_02a_4922:
    ld b, h
    ld b, h
    rst $28
    nop
    ld d, $10
    jr nz, jr_02a_494a

    ld h, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ret c

jr_02a_492f:
    ld hl, sp+$08
    sbc c
    ld sp, hl
    xor e
    db $db
    dec de
    ld c, $03
    inc bc
    rla
    add b
    ld b, b
    ld [hl], $37
    inc a
    ccf
    dec l
    ld a, $27
    dec b
    inc a
    dec de
    inc e
    dec bc
    inc c
    dec e

jr_02a_494a:
    inc c
    add b
    add b

jr_02a_494d:
    db $10
    ret nz

    ret nz

    ldh [rLCDC], a
    ld h, b
    ldh [rNR41], a
    ldh [$08], a
    or b
    ld [hl], b
    ret nc

    ld [hl], b
    ld [hl], a
    ld bc, $2701
    nop
    daa
    ld a, a
    ld a, a
    cp [hl]
    cp $a6
    cp $c4
    nop
    db $fc
    ret c

    add sp, $68
    ld a, b
    jr c, jr_02a_49a8

    ld a, [de]
    nop
    ld a, [de]
    ld b, $06
    call nz, $e5c6
    rst $20
    or e
    ld h, b
    di
    dec a
    add hl, hl
    rlca
    rlca
    dec bc
    rrca
    ld [de], a
    ld h, b
    ld e, $35
    dec hl
    db $10
    db $10
    ld h, b
    ld h, b
    ldh [rSB], a
    ldh [$a2], a
    ld [c], a
    ld d, c
    ld [hl], c
    ld sp, $2b31
    ret nz

    cpl
    jr nz, jr_02a_49b5

    inc e
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    nop
    ld h, e
    ld a, a
    ld c, d
    ld [hl], a
    ld e, l
    ld h, d
    dec hl
    inc [hl]
    nop

jr_02a_49a8:
    inc de
    inc e
    ccf
    jr c, jr_02a_49dc

    inc a
    ld c, a
    ld a, d
    nop
    ld e, a
    ld l, [hl]
    ld e, a
    ld h, [hl]

jr_02a_49b5:
    ld e, a
    ld h, b
    ld l, $31
    nop
    ld [de], a
    ld e, $00
    nop
    ld [$dc08], sp
    call c, $be00
    cp $d6
    ld a, $f2
    ld e, $f2
    ld c, $00
    ld a, [$fc06]
    inc d
    ld a, [$fe36]

jr_02a_49d3:
    ld d, d
    ld [$72fe], sp
    cp $62
    dec hl
    ld h, h
    sbc h

jr_02a_49dc:
    ld c, b
    db $10
    ld a, b
    rla
    jr @+$63

    rrca
    ld [$0c0b], sp
    nop
    dec de
    inc e
    scf
    inc a
    ccf
    inc [hl]
    cpl
    ld [hl], $20
    rra
    ld h, $21
    ccf
    ld [hli], a
    cpl
    jr nc, jr_02a_4a07

    ld b, b
    db $10
    scf
    add hl, bc
    rrca
    cp b
    cp b
    or h
    cp h

jr_02a_4a01:
    jr nz, jr_02a_4a67

    db $fc
    ld hl, $fc2c

jr_02a_4a07:
    ret c

    jr c, @-$16

    inc b
    jr c, jr_02a_4a01

    inc l
    db $f4
    ld l, h
    ld hl, $68f8
    nop
    add sp, $58
    ldh a, [rNR10]
    db $ec
    inc e
    ld e, b
    cp b
    nop
    ld [hl], b
    ld [hl], b
    dec b
    ld b, $02
    inc bc
    inc de
    inc de
    nop
    scf
    scf
    ld a, $3f
    dec [hl]
    ld a, $37
    inc a
    nop
    rra
    jr jr_02a_4a69

    jr c, jr_02a_4a73

    jr nc, jr_02a_4a65

    ld [hl-], a
    add b
    add c

jr_02a_4a39:
    jr nc, @+$19

    jr @+$0e

    rrca
    ld l, $ee
    nop
    ld e, d
    sbc $92
    sbc [hl]
    call c, Call_02a_60dc
    ldh [rP1], a
    or b
    ld [hl], b
    ret nc

    jr nc, @-$36

    jr c, jr_02a_4a39

    jr jr_02a_49d3

    ld hl, $54e4
    db $ec
    ld e, h
    db $f4
    ld e, h
    db $e4
    db $10
    inc e
    ret c

    jr c, jr_02a_4a95

    add hl, bc
    rrca
    dec b
    rlca
    ld b, h

jr_02a_4a65:
    ld [bc], a
    ld b, b

jr_02a_4a67:
    nop
    nop

jr_02a_4a69:
    inc b
    ld b, b
    ld b, $06
    nop
    dec h
    daa
    dec [hl]
    scf
    ld l, d

jr_02a_4a73:
    ld a, l
    ld c, a
    ld a, b
    nop
    ld d, a
    ld l, b
    ld e, a
    ld h, [hl]
    cpl
    jr nc, jr_02a_4a8b

    ld c, $30
    jr nz, @+$22

    add hl, sp
    nop
    inc c
    ld [$0c08], sp
    inc c
    nop
    sub [hl]

jr_02a_4a8b:
    sbc [hl]
    ld [hl], d
    cp $f2
    ld c, $fe
    ld h, [hl]
    ld a, [bc]
    db $f4
    inc c

jr_02a_4a95:
    sbc b
    ld a, b
    ld sp, $4002
    inc bc
    jr nz, jr_02a_4aa0

    rla
    ld b, b
    dec a

jr_02a_4aa0:
    ccf
    ld [hl], $3d
    dec hl
    nop
    inc [hl]
    cpl
    jr nc, @+$21

    jr jr_02a_4ae2

    inc a
    cpl
    ld bc, $2f36
    ld [hl-], a
    ld d, $19
    ld a, [bc]
    ld c, $3f
    add b
    and b
    ld [$9808], sp
    sbc b
    cp h
    cp h
    db $ec

jr_02a_4abf:
    nop
    db $fc
    ld h, h
    db $fc
    call nz, $a87c
    ld e, b
    add sp, $00
    jr c, jr_02a_4abf

    ld l, h
    db $f4
    ld c, h
    add sp, $18
    sub b
    ld b, b
    ldh a, [rLCDC]
    nop
    nop
    dec bc
    jr jr_02a_4af1

    ld h, [hl]
    ld a, [hl]
    cp l
    jp $23f0


    daa
    dec d
    inc c

jr_02a_4ae2:
    ldh [rIF], a
    rrca
    scf
    jr c, jr_02a_4b24

    ld e, a
    ld h, b
    ld h, c
    daa
    dec hl
    dec e
    ld d, $bf
    ret nz

jr_02a_4af1:
    ld a, $ff
    add b
    inc hl
    daa
    dec hl
    cpl
    rra
    ld c, $18
    ld bc, $2418
    inc a
    inc a
    inc h
    ld e, d
    ld h, [hl]
    ld hl, $25f3
    add hl, hl
    dec l
    add hl, de
    ld [de], a
    ld a, [hl]
    ld b, d
    ld bc, $2d0a
    ld hl, sp+$31
    dec [hl]
    add hl, sp
    cp l
    ld a, e
    cp l
    jp Jump_02a_7eff


    add c
    ld bc, $2d0a
    ld sp, $3935
    dec a
    nop
    add b
    nop

jr_02a_4b24:
    add hl, bc
    ld [hl], b
    ld [hl], b
    ld c, b
    ld a, b
    ld e, h
    ld h, h
    ld a, [hl-]
    ld b, $26
    ld [de], a
    ld e, $0e
    ld c, $15
    ld a, [bc]
    and b
    inc c
    nop
    inc c
    inc de
    rra
    ld d, $19
    rrca
    ld [$010b], sp
    inc c
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $1d01
    ld c, $02
    rra
    rra
    ld l, $31
    ccf
    jr nz, jr_02a_4bb2

    cpl
    nop
    jr nc, jr_02a_4b74

    db $10
    rla
    jr jr_02a_4b68

    ld [$1805], sp
    ld b, $03
    inc bc
    cp e
    nop
    ld [hl], e
    nop
    rst $38
    ld [hl], e
    ld a, a
    ccf
    ccf

jr_02a_4b68:
    rlca
    nop
    rra
    dec bc
    ccf
    ld [$277f], sp
    rst $38
    ld l, a
    nop
    rst $38

jr_02a_4b74:
    ld l, l
    sbc a
    ld h, a
    ld a, a
    nop
    dec sp
    rlca
    nop
    ccf
    nop
    ccf
    inc e
    ld a, a
    inc l
    ld a, [hl]
    nop
    nop
    call z, $fe00
    call z, $feff
    rst JumpTable
    ldh [rP1], a
    cp b
    ret nc

    db $fc
    db $10
    xor $b4
    rst $38
    add $00
    rst JumpTable
    ld h, d
    rst $38
    adc $fd
    ld c, $b2
    call z, $fc00
    nop
    and h
    ld e, b
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    inc bc
    rst $38
    ld a, a
    ld e, a
    cpl
    nop

jr_02a_4bb2:
    ccf
    nop
    rla
    rrca
    daa
    jr jr_02a_4c38

jr_02a_4bb9:
    nop
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    and a
    ld e, b
    ld [hl], b
    rrca
    inc b
    ccf
    nop
    daa
    jr jr_02a_4c08

    rra
    ld [$00c0], sp
    nop
    db $ec
    ret nz

    cp $ec
    rst $38
    cp $ee
    stop
    call c, $cce0

jr_02a_4bda:
    jr nc, jr_02a_4bda

    inc b
    ei
    ld b, $00
    db $fd
    ld [bc], a
    adc $30
    inc e
    ldh [$fc], a
    nop
    inc b
    db $fc

jr_02a_4bea:
    jr jr_02a_4bea

    inc a
    ld a, [hl]
    ccf
    ld [$0307], sp
    nop
    ld l, a
    rlca
    rst $38
    ld h, h
    rst $38
    ld [hl], c
    rst $38
    ld e, e
    nop
    cp a
    ld a, h
    ld a, a
    rrca
    ld e, [hl]
    ccf
    scf
    ld [$0f00], sp
    rlca
    rrca

jr_02a_4c08:
    rlca
    ld a, [bc]
    rlca
    rlca
    nop
    nop
    inc bc
    ld bc, $0007
    call c, $fe00
    call c, $ff00
    cp $7f
    ret c

    call c, $de60
    ld l, b
    nop
    cp [hl]
    ret nc

    ld a, a
    add b
    rst $38
    ld [hl], b
    db $fd
    ld a, [$fd00]
    ld a, d
    rst $30
    ld hl, sp-$71
    ld [hl], b
    db $fc
    nop
    jr jr_02a_4bb9

    ld hl, sp-$02
    add c
    jr jr_02a_4c79

jr_02a_4c38:
    ld h, b
    ld e, a
    inc a
    scf
    nop
    dec bc
    rra
    inc bc
    dec e
    inc bc
    rrca
    nop
    inc e
    jr nz, jr_02a_4c56

    rra
    rra
    ld [$00cf], sp
    rst $38

jr_02a_4c4d:
    adc $fe
    jr nz, jr_02a_4c4d

    ld a, h
    ld b, c
    ld d, b
    cp d
    push af

jr_02a_4c56:
    ld a, [$b04f]
    inc c
    ld sp, hl
    ld b, $79
    sbc [hl]
    ccf
    stop
    add b
    ccf
    nop
    jr nc, jr_02a_4ce5

    ccf
    inc de
    add hl, bc
    dec de
    sbc b
    nop
    nop
    inc e
    nop
    nop
    di
    inc c
    db $fd
    xor $fd
    xor $f3
    inc c
    ld b, d

jr_02a_4c79:
    inc e
    rrca
    jr jr_02a_4c95

    nop
    inc a
    jr jr_02a_4c82

    ld [hl], b

jr_02a_4c82:
    ld a, [hl]
    nop
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    inc h
    jr jr_02a_4cc8

    nop
    nop
    rlca
    nop

jr_02a_4c90:
    rrca
    rlca
    ccf
    inc c
    ld a, h

jr_02a_4c95:
    nop
    dec hl
    rst $38
    ld l, b
    rst $38
    ld c, a
    ld a, a
    db $10
    ld a, [hl-]
    nop
    dec d
    jr c, jr_02a_4cb9

    ccf
    jr jr_02a_4ce4

    rra
    rra
    jr nc, @+$11

    rrca
    rst JumpTable
    ld [$1000], sp
    ret nz

    nop
    ldh [$c0], a
    nop
    ldh a, [$e0]
    db $fc
    ld h, b
    cp $7c

jr_02a_4cb9:
    rst $38
    sbc $00
    cp $10
    jr c, jr_02a_4c90

    ld a, h
    or b
    cp $64
    ld bc, $deff
    rst $38

jr_02a_4cc8:
    ld a, [c]
    ld a, [c]
    ldh [$e0], a
    ld l, a
    jr z, jr_02a_4ccf

jr_02a_4ccf:
    rlca
    nop

jr_02a_4cd1:
    rst $08
    rlca
    rst $38
    ld c, h
    db $fc
    ld l, e
    ld b, $7f
    jr z, jr_02a_4d1a

    rrca
    ccf
    ld b, c
    ld [$1001], sp
    jr c, @+$32

    rla

jr_02a_4ce4:
    rra

jr_02a_4ce5:
    dec h
    add hl, bc
    ld b, c
    jr nc, jr_02a_4cd1

    ret nz

    rst $38
    and $00
    cp $6c
    db $fc
    ld a, b
    ld hl, sp-$30
    ld hl, sp+$10
    nop
    ld a, [hl-]
    ret nc

    ld a, a
    or d
    ld a, a
    and [hl]

jr_02a_4cfd:
    ld a, [hl]
    cp h
    jr jr_02a_4cfd

    ld [hl], b
    ldh a, [rSTAT]
    jr jr_02a_4d46

    nop
    ret nz

    inc c
    nop
    ld [de], a
    inc c
    dec l
    ld e, $3e
    ccf
    ld a, [de]
    ld hl, $2925
    dec l
    ldh [rIF], a
    nop
    nop
    db $10

jr_02a_4d1a:
    rrca
    inc e
    inc bc
    ld a, $1d
    ld a, a
    db $10
    ld a, $7f
    ld [hl], $41
    inc e
    sbc h
    ld h, b
    sbc b
    jr nz, jr_02a_4d9b

    cp b
    add c
    ld a, h
    jr c, jr_02a_4d6e

    inc e
    ld e, $10
    nop
    ld a, $00   ; xor a
    add hl, sp
    db $e3
    ld a, [hl]
    db $dd
    ld h, d
    rlca
    db $e3
    ld b, b
    pop bc
    nop
    ld bc, $2541
    add hl, hl
    nop
    rst $38

jr_02a_4d46:
    ld h, e
    cp a
    ld a, a
    ld e, [hl]
    ccf
    ld hl, $c01e
    dec a
    jr nz, jr_02a_4dc1

    nop
    ld hl, sp+$70
    db $fc
    sbc b
    nop
    ld a, [$71f4]
    adc [hl]
    ld sp, hl
    db $76
    db $fd
    ld a, [$fd00]
    sbc d
    push af
    ld a, [$f669]
    pop af
    ld c, $06
    ld b, e
    cp h
    add [hl]
    ld a, b
    db $fc

jr_02a_4d6e:
    ld e, l
    jr nz, jr_02a_4d72

    nop

jr_02a_4d72:
    nop
    rrca
    ld bc, $0b37
    ld b, a
    ld a, [hl-]
    ld e, a
    ld bc, $bf3a
    ld a, c
    cp c
    ld [hl], b
    ldh a, [$60]
    ld h, c
    inc b
    ldh [rLCDC], a
    ld h, b
    nop
    inc bc
    scf
    inc bc
    rrca
    nop
    rlca
    rlca
    nop
    ld hl, sp+$00
    db $e4
    ret c

    ld a, [c]
    nop
    db $ec
    pop af
    ld l, [hl]
    db $fd
    ld [c], a

jr_02a_4d9b:
    rst $38
    call c, $00ff
    ld a, $7f
    ld [hl], $7f
    ld h, $7e
    inc e
    ld a, $00   ; xor a
    nop
    ld [hl], d
    inc a
    db $f4
    ld a, b
    db $e4
    ld hl, sp-$68
    db $10
    ldh [$e0], a
    nop
    ldh [$3c], a
    nop
    ld e, d
    inc a

jr_02a_4db9:
    jr nz, @-$59

    ld a, [hl]
    ld hl, $7e99
    add c
    ld a, [hl]

jr_02a_4dc1:
    ld b, d
    ld h, b
    inc a
    dec l
    ldh [rTMA], a
    nop
    rrca
    inc b
    inc e
    nop
    inc bc
    jr nc, jr_02a_4dde

    ld h, a
    jr jr_02a_4db9

    ld e, d
    rst $00
    nop
    jr c, jr_02a_4e17

    ccf
    ld c, c
    ld [hl], $ef
    db $10
    and $11

jr_02a_4dde:
    ld e, c
    ld [hl], b
    rrca
    inc sp
    rra
    ld [$5f0c], sp
    add b
    jr nz, @+$08

    nop
    rrca
    inc b
    ld c, $01
    jr c, jr_02a_4df1

    rlca

jr_02a_4df1:
    ld [hl], d
    dec l
    ld [hl], a
    ld a, [bc]
    ld [hli], a
    dec e
    ld hl, $25fe
    add hl, hl
    dec l
    ld sp, $3935
    jr nz, jr_02a_4e3c

    nop
    dec sp
    dec h
    ld a, $19
    rra
    dec bc
    rrca
    dec de
    ld bc, $ff1f
    rst $38
    ld a, [$fb87]
    xor a
    ld b, e
    add sp, $45
    inc hl
    ld l, e

jr_02a_4e17:
    add e
    ld [hl-], a
    rst $38
    call c, $02dc
    and h
    ld a, h
    sbc [hl]
    cp $d7
    push af
    ld hl, $009f
    db $fd
    scf
    db $fd
    rst $08
    rst $38
    cpl
    reti


    adc e
    ld [bc], a
    db $fd
    rst $38
    ld sp, hl
    adc a
    rst $38
    rlca
    dec h
    db $fd
    nop
    add [hl]
    cp $fc
    db $fc

jr_02a_4e3c:
    dec sp
    dec sp
    dec h
    ld a, $00   ; xor a
    add hl, de
    rra
    dec bc
    ld c, $ff
    cp $fb
    add a
    ld h, $fa
    xor a
    ld b, e
    add a
    ei
    ld b, l
    ld l, e
    add e
    nop
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    call c, $a4dc
    nop
    ld a, h
    sbc b
    ld hl, sp-$2e
    ld [hl], d
    rst AddAToHL
    ld [hl], l
    sbc a
    nop
    db $fd
    scf
    db $fd
    rst $00
    db $fd
    cpl
    rst JumpTable
    adc a
    inc d
    ld sp, hl
    ei
    db $fd
    inc hl
    ld [hl], a
    ld a, [hl-]
    adc l
    rst $38
    db $10
    add l
    cp $fe
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ccf
    inc bc
    nop
    ccf
    ld bc, $063f
    ld d, a
    jr c, jr_02a_4efe

    inc a
    nop
    ld a, e
    inc [hl]
    ld h, e
    inc a
    ld h, a
    jr c, jr_02a_4edb

    jr c, jr_02a_4e96

jr_02a_4e96:
    ld c, c
    jr nc, jr_02a_4ecc

    ld bc, $0207
    rlca
    nop
    ld bc, $0080
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rSB]
    ld [$f804], sp
    nop
    cp b
    ld b, b
    cp h
    ld bc, $dc08
    jr nz, jr_02a_4eb3

jr_02a_4eb3:
    db $ec
    db $10
    ld hl, sp+$00
    call c, $cc20
    ld [hl], b
    nop
    xor b
    ret nc

    ld hl, sp+$00
    jr c, jr_02a_4ec2

jr_02a_4ec2:
    cpl
    stop
    ccf
    nop
    ccf
    nop
    ld a, a
    ld b, $7f

jr_02a_4ecc:
    ld [bc], a
    nop
    ld a, a
    inc c
    xor a
    ld [hl], b
    rst $20
    ld a, b
    rst $30
    ld l, b
    nop
    rst $00
    ld a, b
    rst $08
    ld [hl], b

jr_02a_4edb:
    adc a
    ld [hl], b
    sub e
    ld h, c
    ld b, b
    ld h, a
    ccf
    ld [$000f], sp
    rla
    ld [$10ae], sp
    nop
    db $fc
    nop
    rst $38
    nop
    rst $30
    ld [$00fe], sp
    ld d, l
    db $fc
    ld b, l
    ld [$05f0], sp
    ld [$3ffe], sp
    ld [$3fc8], sp

jr_02a_4efe:
    jr jr_02a_4f00

jr_02a_4f00:
    dec b
    nop
    rlca
    nop
    dec c
    ld [bc], a
    dec bc
    inc b
    add b
    add l
    ld [$3f0c], sp
    dec c
    ld a, c
    ld a, $c7
    ld a, b
    nop
    jp hl


    ld d, [hl]
    adc e
    ld [hl], l
    ld e, a
    ld hl, $0031
    ld [hl], b
    inc bc
    ld a, a
    jr @+$7b

    db $10
    ld a, a
    jr @-$7e

    add sp, -$70
    ld d, h
    nop
    cp b
    call z, $ca38
    inc a
    add $bc
    rst $20
    inc b
    call c, $ccf3
    ld e, [hl]
    and b
    ld a, a
    jr nz, @+$32

    nop
    nop
    dec a
    db $10
    ccf
    jr jr_02a_4f6d

    ld a, [de]
    dec de
    inc b
    ld b, d
    rra
    ld b, c
    ld e, b
    ld e, l
    inc hl
    inc sp
    nop
    ccf
    db $10
    inc bc
    nop
    nop
    push hl
    ld [bc], a
    jp hl


    ld b, $d5
    ld c, $ef
    nop
    ld e, $fd
    sbc [hl]

jr_02a_4f5b:
    jp c, Jump_02a_5abc

    cp h
    db $e4
    nop
    jr jr_02a_4f5b

    nop
    cp $80
    rst $38
    ret nz

    sbc $80
    ccf
    jr z, jr_02a_4f70

jr_02a_4f6d:
    nop
    inc b
    inc bc

jr_02a_4f70:
    add hl, bc
    rlca
    dec bc
    jr jr_02a_4f7c

    dec bc
    dec b
    ld bc, $0918
    db $10
    rlca

jr_02a_4f7c:
    dec b
    inc bc
    nop
    inc b
    inc bc
    inc e
    rlca
    jr c, @+$21

    inc hl
    inc e
    ld hl, $003c

jr_02a_4f8a:
    nop
    db $10
    ld bc, $0600
    ld bc, $1023
    ld [$0d13], sp
    rla
    ld a, [bc]
    ld bc, $0f08
    ld [de], a
    rrca
    nop
    ld [$0c07], sp
    inc bc
    jr @+$11

    ld sp, $401e
    ld e, $1f
    jr jr_02a_4f8a

    nop
    db $10
    ldh [$c8], a
    ldh a, [$80]
    ld bc, $7008
    sub b
    ldh [$90], a
    ldh [rNR41], a
    ret nz

    nop
    jr c, jr_02a_4f7c

    ld [hl], h
    sbc b
    ld l, $f0
    ld c, $f0
    inc d
    db $fc
    nop
    inc e
    dec sp
    ld [$0302], sp
    ld [$013a], sp
    nop
    inc de
    ld bc, $0215
    dec b
    ld [bc], a
    dec b
    inc bc
    ld bc, $0305
    dec h
    inc bc
    inc d
    inc bc
    inc h
    ld e, a
    jr c, jr_02a_4fe2

    inc b

jr_02a_4fe2:
    nop
    ld [c], a
    nop
    ld [de], a
    ldh [$88], a
    dec a
    db $10
    ld [$cab0], sp
    or b
    call nc, $083f
    sub h
    ldh [$2e], a
    ld b, b
    ret nz

    ld b, e
    ld [$1ce0], sp
    ld hl, sp-$3c
    jr c, @+$3e

    ret nz

    sbc a

Jump_02a_5000:
    ld [$1033], sp
    ld a, $01
    ld e, l
    ld a, $7f
    ld [hl], $06
    ld e, l
    ld a, $3e
    ld bc, $9b04
    ld [$1001], sp
    jr jr_02a_5019

    rlca
    add hl, hl
    ld e, $23

jr_02a_5019:
    inc e
    ld a, a
    db $10
    inc e
    nop
    nop
    cpl
    inc e
    cpl
    ld a, [de]
    rla
    ld c, $09
    ld b, $6a
    rlca
    rrc b
    dec e
    jr nc, jr_02a_5056

    ld e, l
    ld [$1b3f], sp
    ld [$0078], sp
    nop
    or h
    ld a, b
    inc [hl]
    ld hl, sp+$04
    ld hl, sp+$08
    nop
    ldh a, [$f8]
    nop
    db $fc
    ld a, b
    cp [hl]
    ld l, h
    ld e, d
    ld [$7cbc], sp
    add b
    jr nz, jr_02a_50ab

    ld [$e018], sp
    sub h
    inc b
    ld a, b
    call nz, Call_02a_7838
    nop

jr_02a_5056:
    nop
    nop
    nop
    jr c, jr_02a_505b

jr_02a_505b:
    ld a, h
    jr c, @-$02

    ld [hl], b

jr_02a_505f:
    jr nz, jr_02a_505f

    ld [hl], h
    ld h, c
    cp d
    ld l, h
    ld d, a
    jr c, jr_02a_5097

    nop
    ld [de], a
    rra
    ld [bc], a
    dec [hl]
    ld a, [bc]
    db $76
    dec l
    di
    nop
    ld l, a
    ld hl, sp+$47
    rst $38
    nop
    inc e
    nop
    ld a, $04
    inc e
    ld a, [hl]
    jr c, jr_02a_50fe

    ld a, [hl-]
    ld h, c
    ld e, l
    ld [hl], $20
    dec hl
    inc e
    ld a, l
    dec d
    ld a, [bc]
    ld [hl], $0d
    ld [hl], e
    nop
    cpl
    ld a, b
    scf
    ld a, a
    jr nz, @+$81

    nop
    rlca

jr_02a_5095:
    inc b
    nop

jr_02a_5097:
    ccf
    ld bc, $127f
    ld e, l
    add hl, bc
    ccf
    nop
    jr jr_02a_50e0

    ld [$087f], sp
    rst $38
    add hl, de
    ei
    nop
    ld [hl], a
    di
    ld l, a

jr_02a_50ab:
    ld l, a
    dec de
    cpl
    inc e
    rla
    db $10
    rrca

jr_02a_50b2:
    rrca
    nop
    jr nz, jr_02a_50b2

    nop
    ld [c], a
    sbc h
    nop
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst JumpTable
    and b
    add sp, $10
    add b
    ld hl, $00f8
    rst $38
    ret nz

    rst $38
    add $ff
    nop
    add [hl]
    sbc [hl]
    ld l, h
    cp h
    ret c

    ld a, h
    sbc b
    sbc h
    nop
    ld [$000c], sp
    jr c, jr_02a_50da

jr_02a_50da:
    ld e, b
    jr nz, jr_02a_5095

    nop
    ld b, b
    cp a

jr_02a_50e0:
    ld b, b
    cp c
    ld b, [hl]
    rst $30
    ld [$18ff], sp
    jr nc, @+$01

    ld c, b
    ld b, c
    dec h
    nop
    ld a, a
    rra
    nop
    ld a, a
    dec [hl]
    ld a, a
    inc de
    ld a, $03
    inc bc
    nop
    nop
    ldh [rP1], a
    ldh a, [$60]
    rst $38

jr_02a_50fe:
    ld [hl], b
    rst $38
    ld e, $00
    cp $0c
    db $ec
    db $10
    db $e4
    ret c

    ld a, [$00ec]
    cp $f4
    cp $74
    sbc [hl]
    ld l, h
    jp c, $003c

    call nc, Call_02a_48b8
    or b
    ldh a, [rP1]
    add b
    nop
    add c
    nop
    ld c, $0e
    nop
    ld [de], a
    inc c
    ld l, $10
    ld hl, $5e20
    jr nz, jr_02a_514b

    rst $38
    add c
    rst $38
    jp Jump_02a_427e


    ld a, [hl]
    rra
    ld c, $18
    nop
    inc l
    db $10
    ld h, c
    ld l, [hl]
    db $10
    ld d, d
    rst $28
    sub c
    rst $38
    ld bc, $0700
    ld bc, $0f00
    ld b, $1f
    ld c, $1f
    dec c
    ccf
    dec de

jr_02a_514b:
    nop
    cpl
    dec de
    scf
    dec bc
    ld a, l
    ld b, e
    ld [hl], h
    ld c, e
    nop
    ld [hl], a
    ld l, b
    ld a, $21
    ld a, $31
    rra
    inc e
    ld [$0707], sp
    ld c, $00
    add hl, sp
    ld a, a
    dec c
    rst $38
    nop
    ld [hl], l
    db $fd
    ld a, e
    db $fc
    ld a, e
    cp $21
    ld a, a
    nop
    inc e
    ld a, a
    dec a
    rst $38
    cp e
    rst $38
    add e
    rst $30
    db $10
    ret


    ld a, a
    ld h, b
    cp a
    inc bc
    nop
    rlca
    ld bc, $0700
    ld [bc], a
    dec c
    inc bc
    ld e, $09
    rra
    inc c
    nop
    daa
    dec e
    cpl
    dec de
    ld l, $1b
    db $76
    ld c, e
    nop
    ld a, h
    ld h, e
    db $76
    ld l, c
    dec sp
    inc h
    inc a
    inc sp
    inc b
    rra
    jr jr_02a_51af

    rrca
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    rrca
    inc b
    ccf
    inc bc
    ld a, h
    scf
    db $ed
    nop

jr_02a_51af:
    db $76
    bit 6, a
    adc $79
    rst $38
    ld [hl], d
    db $fc
    nop
    add a
    db $ec
    rst AddAToHL
    ld a, [hl]
    ld b, a
    ld a, a
    ld h, e
    ccf
    jr @+$3b

    rrca
    ld c, $3f
    ld h, b
    inc bc
    nop
    inc b
    nop
    inc bc
    dec de
    rlca
    inc [hl]
    rrca
    ld e, b
    cpl
    and e
    nop
    ld e, a
    rst $20
    inc e
    cp h
    ld e, e
    sbc [hl]
    ld h, c
    ld [$4518], a
    ld b, h
    inc bc
    dec [hl]
    ldh [$c0], a
    nop
    jr c, jr_02a_51e5

jr_02a_51e5:
    ret nz

    call nc, $2ae8
    db $f4
    ld a, [de]
    db $f4
    add $00
    ld hl, sp-$1c
    jr c, jr_02a_522e

    ret c

    ld a, d
    add h
    ld d, d
    ld bc, $2eac
    call nz, $04ce
    inc b
    nop
    nop
    dec [hl]
    nop
    ccf
    db $10
    cpl
    db $10
    cpl
    inc d
    nop
    ld e, a
    ld h, $90
    ld l, a
    sbc e
    ld h, h
    sub c
    ld l, [hl]
    nop
    ld hl, sp+$07
    rst $38
    jr nc, @+$7a

    scf
    ld a, l
    ld [hl-], a
    nop
    ld a, a
    jr nc, @+$73

    ld l, $7d
    ld d, $3f
    nop
    nop
    xor [hl]
    nop
    cp $04
    ld a, [$f20c]
    inc l
    nop
    db $f4
    ld l, b

jr_02a_522e:
    ld a, [de]
    db $e4
    cp c
    ld b, [hl]
    add hl, bc
    or $00
    ld de, $ffee
    nop
    rra
    db $ec
    cp [hl]
    ld c, h
    nop
    cp $0c
    sbc [hl]
    ld l, h
    cp $04
    ld c, $00
    add b
    ccf
    jr z, jr_02a_525a

    jr jr_02a_5253

    daa
    jr jr_02a_529e

    jr nc, jr_02a_5251

jr_02a_5251:
    ld d, e
    inc l

jr_02a_5253:
    ld d, c
    ld l, $35
    ld a, [bc]
    rra
    nop
    add h

jr_02a_525a:
    ld bc, $1310
    inc c
    ld sp, $3f1e
    jr c, @+$0e

    inc c
    nop
    ldh a, [$84]
    ld a, b
    jp nc, $c92c

    ld [hl], $c9
    nop
    ld [hl], $a9
    ld d, [hl]
    ei
    inc b

jr_02a_5273:
    cp $00  ; and a / or a
    ld hl, sp+$00
    nop
    ret z

    jr nc, jr_02a_5273

    nop
    nop
    nop
    dec d
    add b
    add hl, hl
    ld [$000f], sp
    ld a, l
    ld b, $6d
    ld e, $43
    nop
    inc a
    ld b, b
    ccf
    ld sp, $ff0e
    nop
    rst $38
    ld [bc], a
    ld a, [hl]
    ld a, a
    ld a, $3f
    nop
    ld bc, $081b
    ld bc, $0000

jr_02a_529e:
    inc bc
    nop
    db $fc
    nop
    ld hl, sp+$20
    ret nc

    nop
    ld h, b
    sbc h
    ld h, b
    cp b
    ld b, b
    ld [hl], b
    add b
    ld e, b
    nop
    and b
    rst $08
    jr nc, jr_02a_52e0

    db $d3
    rrca
    ldh a, [rNR22]
    nop
    add sp, -$09
    ld [$18e7], sp
    cp $01
    call nz, $fb20
    rst $38
    dec h
    ld [$0000], sp
    ld a, b
    nop
    sbc h
    nop
    ld h, b
    or b
    ld b, b
    ldh [rP1], a
    ld h, b
    nop
    ret nz

    add d
    ld bc, $6008
    add b
    ldh [rP1], a
    ldh [rTAC], a
    ld [$0880], sp

jr_02a_52df:
    nop

jr_02a_52e0:
    ld b, b
    add b
    ret nz

    ld h, c
    ret z

    inc bc
    nop
    rlca
    jr z, @+$05

    rlca
    rra
    ld [$61e0], sp
    ld [$60dc], sp
    sub b
    adc c
    ld h, c
    ld [$807c], sp
    ld d, b
    ld h, c
    jr c, jr_02a_52df

    inc e
    rst $20

jr_02a_52fe:
    ld [$e120], sp

jr_02a_5301:
    di
    ld e, a
    jr jr_02a_5305

jr_02a_5305:
    nop
    inc e
    nop
    daa
    ld [$5e18], sp
    jr nz, @+$7a

    ld h, c
    ld c, b
    ldh a, [rP1]
    sub b
    ld [bc], a
    ld h, b
    db $10
    ldh [$e0], a
    nop
    ld a, [bc]

jr_02a_531a:
    ld e, e
    ld [$0007], sp
    nop
    ld a, $03
    ld [hl], $0f
    ld hl, $201e
    db $10
    rra
    add hl, de
    ld b, $5d
    jr nc, jr_02a_533a

    ld b, $0e
    inc bc
    db $10
    ld b, $01
    inc bc
    daa
    ld [$10fc], sp
    xor $30

jr_02a_533a:
    nop
    ret z

    jr nc, jr_02a_531a

    jr nz, jr_02a_52fe

    ld b, b
    ld d, b
    and b
    nop
    swap b
    cpl
    pop de
    dec c
    ld a, [c]
    rla
    add sp, $01
    di
    inc c
    pop hl
    ld e, $c3
    inc a
    ld a, [hl]
    sbc a
    jr @-$3e

    ld e, a
    ld d, b
    ld e, e
    db $10
    ld hl, sp+$00
    db $ec
    db $10
    call nz, $0638
    db $ec
    jr jr_02a_5301

    ld [$1d0c], sp
    jr z, jr_02a_538d

    jr z, jr_02a_5388

    nop
    daa
    ccf
    ld e, a
    ld h, b
    cp a
    rst $08
    ld e, a
    ld h, b
    inc c
    daa
    ccf
    inc e
    inc e
    ld a, [de]
    ld e, b
    nop
    jr @+$21

    rra
    nop
    ld [c], a
    cp $f4
    inc c
    add sp, -$28
    db $f4

jr_02a_5388:
    inc c
    ld [$fee2], sp
    rra

jr_02a_538d:
    rra
    dec d
    jr nc, @+$12

    db $10
    jr z, jr_02a_5394

jr_02a_5394:
    jr c, jr_02a_53ea

    ld l, h
    cp d
    add $ba
    sub $fe
    db $10
    sub $7c
    ld d, h
    ld bc, $4428
    xor d
    sub $92
    ld bc, $aafe
    xor $c6
    add $82
    add d
    nop
    rrca
    rrca
    dec de
    inc e
    cpl
    inc a
    ld a, e
    ld b, h
    nop
    cp a
    ret nz

    db $ed
    sub d
    db $fd
    add e
    rst $38
    add c
    nop
    cp l
    jp $fa95


    add a
    ld hl, sp-$39
    db $fc
    nop
    ld c, h
    ld a, a
    jr z, jr_02a_540d

    jr jr_02a_53ef

    rrca
    rrca
    nop
    ldh a, [$f0]
    add sp, $18
    ld h, h
    sbc h
    ld a, [c]
    ld c, $00
    db $ed
    inc de
    rst $38
    ld bc, $03fd
    sbc e
    rst $20
    nop
    ld a, l
    add e
    db $ed
    inc de
    pop af

jr_02a_53ea:
    rrca
    db $e3

jr_02a_53ec:
    rra
    nop
    add d

jr_02a_53ef:
    cp $04
    db $fc
    jr jr_02a_53ec

    ldh a, [$f0]
    nop
    rrca
    rrca
    rla
    jr jr_02a_542b

    jr c, @+$6f

jr_02a_53fe:
    ld d, e
    nop
    cp a
    pop bc
    db $fd
    add e
    db $ed
    sub d
    rst $38
    add b
    nop
    cp e
    call nz, $ccb3

jr_02a_540d:
    adc a
    ld hl, sp-$31
    db $fc
    inc b
    ld b, h
    ld a, a
    jr nz, jr_02a_5455

    dec de
    ccf
    jr z, jr_02a_53fe

    inc e
    nop
    ld a, [$9f06]
    pop hl
    ld a, e
    add a
    db $fd
    inc bc
    ld [bc], a
    rst $28
    ld de, $03fd
    ld a, l
    add e

jr_02a_542b:
    ccf
    db $10
    ld [bc], a

jr_02a_542e:
    jr nz, jr_02a_542e

    add h
    ccf
    jr z, jr_02a_544a

    dec de
    cpl
    jr nc, @+$4d

    nop
    ld [hl], h
    or e
    call z, $88ff
    di
    adc h
    cp e
    nop
    call nz, $c0bf

jr_02a_5445:
    sbc l
    ld a, [c]
    adc l
    di
    add a

jr_02a_544a:
    jr nz, jr_02a_5445

    ld b, e
    ld a, a
    ld c, b
    db $fc
    inc b
    ld [$7916], a
    nop

jr_02a_5455:
    add a
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    rst $28
    nop
    ld de, $03ff
    ld [hl], a
    adc a
    ret


    rst $38
    ld [bc], a
    add b
    ld a, a
    ld c, b
    rlca
    jr c, @+$80

    ld b, c
    cp a
    ret nz

    rst $30
    nop
    adc b
    rst $38
    add b

jr_02a_5474:
    cp a
    pop bc
    db $db

jr_02a_5477:
    rst $20
    cp a
    nop
    pop bc
    add a
    ld hl, sp-$2d
    db $fc
    ld b, b
    ld a, a
    ld [hli], a
    jr nz, @+$41

    db $10
    ccf
    jr z, jr_02a_5474

    inc e
    ld a, [$cd1e]
    ld c, b
    inc sp
    dec a
    db $10
    ld [hl], a
    adc c
    ld a, a
    db $10
    ld a, c
    add a
    db $e3
    ld [bc], a
    rra
    jp nc, $44fe

    db $fc
    ld e, b
    ccf
    jr @+$17

    nop
    dec de
    ld a, $21
    ld [hl], a
    ld c, b
    sbc a
    ldh [$be], a
    nop
    pop bc
    rst $28
    sub c
    db $fd
    add e
    cp d
    rst $00
    cp e
    nop
    call nz, $f897
    rst $30
    ld hl, sp-$20
    rst $38
    ld h, h
    nop
    ld a, a
    jr c, @+$41

    rra
    rra
    ldh a, [$f0]
    ld l, b
    nop
    sbc b
    db $fc
    inc b
    sbc $22
    db $fd
    inc bc
    rst $38
    ld [$f701], sp
    add hl, bc
    ld a, a
    rra
    add hl, bc
    cp l
    ld b, e
    pop hl
    ld c, $1f
    ei
    rra
    ld c, $3f
    ld [$107f], sp
    ld d, l
    ld d, b
    nop
    ld b, b
    jr nz, jr_02a_5477

    ld d, h
    ld a, [hl]
    cp $db
    ld h, b
    adc a
    ld [hl], d
    ld bc, $001f
    ld a, a
    ld b, $77
    ld [$2855], sp
    ld a, h
    ld [hl-], a
    inc c
    ld e, $ff
    db $fd
    nop
    ld [$1540], sp
    nop
    jr jr_02a_5541

    db $10
    ld a, a
    inc a
    ei
    ld b, $2f
    ld de, $7f3f
    ld [hl], a
    rst $38
    push af
    nop
    jr nz, jr_02a_5573

    sub b
    nop
    ldh [rLCDC], a
    ret nc

    di
    jr nz, jr_02a_5554

    db $10
    cp $10
    ld l, c
    sub [hl]
    cp $01
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $f4
    dec d
    nop
    ldh [$90], a
    ld h, b
    add sp, $10
    ld hl, sp-$04
    cp h
    ld d, b
    nop
    ld bc, $7e7a
    inc sp
    inc c
    ld c, e
    dec [hl]
    ld e, a
    jr c, jr_02a_559c

    dec a
    ld e, a
    ld a, [hli]

jr_02a_5541:
    ld l, e
    nop
    ld d, c
    rst $38
    nop
    ld c, c
    ld b, c
    ld [bc], a
    ld bc, $0003
    nop
    rst $20
    jr jr_02a_5593

    cp h
    dec c
    ld a, [c]
    sbc h

jr_02a_5554:
    ld l, e
    sbc c
    ld h, [hl]
    ld bc, $03fe
    db $fc
    add [hl]
    ld a, c
    ld bc, $0041
    ei
    inc b
    ld a, c
    add [hl]
    ld c, h
    or e
    cp a
    ccf
    add hl, hl
    ld d, $2a
    inc d
    inc a
    ld b, b

jr_02a_556e:
    ld bc, $8c00
    ld a, [c]
    inc c

jr_02a_5573:
    ld a, [hl-]
    call c, $be79
    db $fd
    ld a, [hl]
    ld a, l
    cp $fd
    sub d
    sub e
    ld d, l
    rst AddAToHL
    nop
    ld de, $8001
    add b
    and b
    ldh a, [$50]
    ld de, $6201
    ld e, [hl]
    inc de
    inc c
    dec bc
    dec b
    rlca
    nop
    ld [bc], a

jr_02a_5593:
    inc bc
    nop
    ld c, $10
    ld [$190c], sp
    ld b, $33

jr_02a_559c:
    ld [hli], a
    dec e
    daa
    jr @+$16

    ld [$0814], sp
    nop
    inc b
    nop
    ld d, b
    ld [hl], h
    nop
    adc h
    db $e4
    jr nz, jr_02a_556e

    ld b, b
    add b
    add b
    ldh [$38], a
    ret nz

    ld bc, $3840
    inc e
    ldh [$8e], a
    ld [hl], b
    add [hl]
    ld a, b
    call nz, $a844
    db $10
    ldh a, [rP1]
    jr nz, jr_02a_55c5

jr_02a_55c5:
    ld b, b
    nop
    ret nz

    jr c, jr_02a_55ca

jr_02a_55ca:
    ld [hl], h
    jr c, @-$5c

    ld a, h
    inc hl
    jp z, $2134

    add d
    ld a, h
    ld a, h
    db $f4
    nop
    dec c
    nop
    rlca
    nop
    ld [$1107], sp
    rrca
    inc hl
    rra
    ld [bc], a
    ld hl, $201f
    rra
    ld [hli], a
    dec e
    ld hl, $0030
    rrca
    jr jr_02a_55f5

    rrca
    nop
    inc bc
    nop
    inc b
    add hl, de
    inc bc

jr_02a_55f5:
    add hl, bc
    rlca
    ld hl, $0a3b
    dec b
    pop hl
    ld a, [c]
    dec hl
    ld hl, $213b
    inc e
    inc bc
    ld a, a
    rlca
    nop
    inc bc
    ld b, $03
    ld [hl], l
    ld [bc], a
    rst $38
    ld [hl], c
    push hl
    nop
    ld a, e
    db $e4
    ld a, e
    rst $38
    ld [hl], b
    ld a, [hl]
    inc bc
    ld c, $00
    rlca
    rrca
    rlca
    rla
    dec bc
    inc de
    inc c
    add hl, de
    nop
    rlca
    inc c
    inc bc
    rlca
    nop
    inc e
    nop
    ld a, $00   ; xor a
    inc e
    ld a, a
    ld a, $73
    ld a, $33
    dec e
    dec e
    ld b, $03
    inc a
    dec de
    ld [hl], e
    inc a
    add hl, hl
    dec l
    ccf
    jr @+$1e

    rra
    nop
    rst $38
    jr nz, jr_02a_565d

    nop
    dec a
    nop
    dec de
    ld l, c
    scf
    ei
    and h
    db $fd
    sub e
    rst $38
    db $10
    ld a, [c]
    rra
    ld [bc], a
    dec hl
    ld [hl], a
    inc a

jr_02a_5654:
    ld l, c
    ld [hl], $00
    db $76
    jr nz, jr_02a_56ca

    jr nz, jr_02a_5654

    xor b

jr_02a_565d:
    ld hl, sp-$68

jr_02a_565f:
    ld [hl-], a
    ld [hl], b
    ld [hl], b
    ccf
    jr nz, @+$1d

    nop
    dec [hl]
    ld l, c
    nop
    scf
    db $db
    ld h, h
    db $fd
    inc de
    rst $28
    ld [c], a
    rra
    ld b, b
    ld [bc], a
    dec hl
    ld h, a
    inc a
    reti


    ld h, [hl]
    or $40
    ld b, h
    ldh [rNR42], a
    jr nz, jr_02a_565f

    ldh [$3d], a
    inc bc
    nop
    ld [bc], a
    inc c
    inc bc
    inc de
    inc c
    cpl
    db $10
    ld hl, $1c5e
    ld hl, $235d
    ld hl, $2925
    ccf
    ld c, $23
    ccf
    add hl, de
    ld hl, $0e1f
    ld c, $3e
    ld e, a
    nop
    inc a
    inc bc
    ld a, e
    inc [hl]
    rst $38
    ld a, b
    rst $38
    ld c, b
    rrca
    cp $49
    ld a, l
    inc sp
    ld hl, $2925
    dec l
    ldh a, [$31]
    dec [hl]
    add hl, sp

jr_02a_56b4:
    ld h, b
    ret nz

    nop
    jr nc, @-$3e

    ld [$30c8], sp
    db $f4
    ld [$7a21], sp
    add h
    cp d
    ld a, a
    call nz, $2521
    ld l, e
    ld sp, $3935

jr_02a_56ca:
    ld h, b
    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    inc c
    cpl
    db $10
    add b
    ld hl, $017e
    ld a, l
    inc sp
    db $fd
    ld a, e
    cp $00  ; and a / or a
    ld c, c
    rst $38
    ld c, b
    ld a, a
    ccf
    ccf
    add hl, bc
    rra
    ld [$0f09], sp
    rlca
    rlca
    ld e, a
    ret nz

    nop
    jr nc, jr_02a_56f4

    ret nz

    ret z

    jr nc, @-$0a

jr_02a_56f4:
    ld [$7a21], sp
    add h
    jr c, jr_02a_56b4

    call nz, $2521
    ld l, e
    ret z

    or b
    ldh a, [$60]
    add b
    add hl, sp
    ldh [$03], a
    nop
    inc b
    inc bc
    dec bc
    inc de
    inc b
    ld d, $09
    ld hl, $0817
    ld hl, $e029
    dec l
    ld sp, $0e00
    inc a
    nop
    ld b, d
    inc a
    cp l
    rra
    ld b, d
    and l
    ld e, d
    inc hl
    ld hl, $2d29
    ldh [rP1], a
    jr nc, jr_02a_5729

jr_02a_5729:
    ccf
    db $10
    dec sp
    rla
    dec d
    dec bc
    nop
    rla
    ld [$0a77], sp
    di
    ld l, h
    pop de
    ld l, [hl]
    nop
    sub c
    ld l, [hl]
    ld sp, hl
    ld b, $9f
    ld h, b
    rst $38
    inc bc
    nop
    db $ec
    ld [hl], e
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    ld a, a
    nop
    nop
    ld c, $00
    cp $0c
    cp h
    ret c

    ld a, b
    sub b
    nop
    sbc $20
    rst $08
    or [hl]
    adc e
    db $76
    add hl, bc
    or $08
    rrca
    ldh a, [$39]
    add $21
    ld [$37e0], sp
    adc $00
    rst $38
    ld c, $ff
    ld l, [hl]
    cp $00  ; and a / or a
    inc bc
    nop
    nop
    rlca
    inc bc
    add hl, bc
    rlca
    inc e
    inc bc
    inc a
    dec bc
    nop
    inc a
    dec de
    ld a, h
    dec de
    db $fd
    ld d, d
    cp [hl]
    ld b, c
    nop
    cp e
    ld e, [hl]
    ld a, e
    rra
    dec sp
    rra
    add hl, sp
    rra
    nop
    ld l, h
    rra
    ld [hl], a
    rrca
    ccf
    nop
    ret nz

    nop
    nop
    and b
    ret nz

    ret c

    ldh [$dc], a
    add sp, $1e
    db $ec
    add b
    ld bc, $e408
    rst JumpTable
    jr nz, @+$41

    jp z, $3aed

    nop
    db $fd
    ld a, [$f8fe]
    cp $f8
    ld a, [hl]
    ld hl, sp+$00
    cp $f0
    db $fc
    nop
    nop
    nop
    rra
    nop
    nop
    ccf
    ld e, $6d
    ld [hl-], a
    ld e, l
    ld [hli], a
    ld a, b
    rla
    nop
    ld [hl], b
    rrca
    ld b, a
    jr c, jr_02a_5816

    scf
    call z, $0037
    cp h
    ld b, e
    ei
    inc [hl]
    ld a, b
    scf
    ld a, a
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    db $fc
    nop
    db $fc
    ld hl, sp+$00
    cp b
    ret nz

    ldh a, [$e0]
    ldh [rP1], a
    jr nz, @-$3e

    nop
    ld [hl], b
    and b
    ldh a, [$60]
    ldh a, [$60]
    ld a, b
    or b
    ld [$b078], sp
    db $fc
    jr @+$03

    ld [$fc08], sp
    add b
    ld h, c
    ldh a, [$3f]
    ld [$8041], sp
    db $fc
    rlca
    db $fc
    inc sp
    ld b, c
    ld [$0778], sp
    pop bc
    ld [$081d], sp
    ld b, c
    ld [hl], b
    push de
    ld [$7fbe], sp
    sbc [hl]
    adc h
    cp l
    ld [$f820], sp

jr_02a_5816:
    ldh [$3f], a
    jr nz, jr_02a_581a

jr_02a_581a:
    ld [hl], b
    ccf
    nop
    inc b
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    dec de
    sbc b
    nop
    nop
    nop
    inc e
    nop
    di
    inc c
    db $fd
    xor $fd
    xor $10
    di
    inc c
    inc e
    rrca
    jr @+$1a

    nop
    inc a
    jr @-$7e

    ld bc, $7e70
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    inc h
    db $10
    jr jr_02a_5883

    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    ld de, $3b7f
    rst $38
    ld a, [hli]
    push de
    ld a, [hli]
    xor $11
    cp a
    ld b, b

jr_02a_5858:
    rst $38
    ld d, c
    rst $38
    ld e, a
    cp a
    ld e, a
    ld e, a
    ccf
    cpl
    rra
    ld a, h
    inc bc
    cp e
    ld a, h
    rst $38
    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    ret nz

    cp $e0
    cp $60
    db $db
    db $ec
    ccf
    ret nz

    rst $28
    inc e
    db $fd
    cp $fd
    xor $f1
    xor $ee
    ldh a, [$84]
    ld hl, sp+$1c

jr_02a_5883:
    ldh [$fe], a
    nop
    add b
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst JumpTable
    ld sp, $02ff
    rst $30
    jr c, jr_02a_5858

    ld a, a
    cp a
    ld [hl], a
    adc a
    ld [hl], a
    ld [hl], a
    rrca
    ld hl, $711f
    ld c, $ff
    nop
    ld bc, $f000
    nop
    db $fc
    nop
    cp $00  ; and a / or a
    cp $40
    rst $38
    ldh [$5f], a
    or b
    rst $38
    ld [$e2fd], sp
    rst $38
    ld a, [$faff]
    db $fd
    cp d
    ld a, [$f4bc]

jr_02a_58c1:
    jr jr_02a_58c1

    nop
    db $dd
    ld a, $ff
    nop
    rlca
    nop
    rra
    nop
    ccf
    inc e
    ld a, a
    ld a, $7f
    ld h, $dd
    ld l, $e3
    inc e
    rst $38
    inc bc
    rst $08
    ccf
    cp [hl]
    ld a, a
    cp l
    ld a, [hl]
    jp nz, $7c3d

    inc bc
    ld a, a
    nop
    cp l
    ld a, [hl]
    rst $38
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $f4
    ld [$f06c], sp
    ld a, [c]
    inc c
    ld l, d
    sbc h
    ld a, [$fafc]
    db $fc
    ld a, [c]
    db $fc
    rst $20

Call_02a_58ff:
    ld hl, sp+$0f
    or $fd
    ld c, $fb
    inc a
    cp $00  ; and a / or a
    rlca
    nop
    rra
    nop
    ccf
    ld c, $7f
    rra
    ld a, a

jr_02a_5911:
    inc de
    xor $17
    pop af
    ld c, $ff
    ld sp, $6ff7
    rst $30
    ld l, a
    or $6f
    cp c
    db $76
    ld b, [hl]
    add hl, sp
    ld a, a
    nop
    dec bc
    rlca
    rrca
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $f4
    ld [$70ec], sp
    ld a, [$b204]
    call z, $fcfa
    ld a, d
    db $fc
    ld a, [c]
    ld a, h
    db $e4
    ld hl, sp+$08
    ldh a, [$f8]
    nop
    add sp, -$10
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc de
    inc e
    inc hl
    inc a
    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_02a_5999

    jr nz, jr_02a_599b

    jr nc, jr_02a_599d

    jr c, jr_02a_599f

    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc e
    nop
    ld sp, $0f00
    nop
    inc sp
    ld c, $4f
    jr c, jr_02a_5911

    ld [hl], c
    sbc a
    ld [hl], b
    add a
    ld a, b
    pop bc
    ld a, $f0
    rrca
    ld a, h
    inc bc
    jr nc, jr_02a_598f

    cp b
    rlca
    sbc [hl]
    ld bc, $00c7
    ld h, d
    ld bc, $001f
    cp $01
    rst $38
    nop
    db $d3

jr_02a_598f:
    inc a
    ld e, a
    ldh [$73], a
    adc h
    ld a, $c1
    ldh a, [rIF]
    rst $38

jr_02a_5999:
    nop
    ccf

jr_02a_599b:
    ret nz

    inc bc

jr_02a_599d:
    rst $38
    ld a, a

jr_02a_599f:
    rst $38
    ei
    db $fc
    ld a, a
    rst $38
    rst JumpTable
    ccf
    rlca
    rst $38
    ld [c], a
    nop
    add hl, de
    ldh [$94], a
    ld a, b
    jp z, $da3c

    inc a
    or [hl]
    ld a, b
    call z, $38f0
    ret nz

    add sp, $10
    ld c, d
    ldh a, [$9a]
    ldh [rPCM12], a
    adc b
    call nz, $0438
    ld hl, sp-$78
    ldh a, [$30]
    ret nz

    inc sp
    rrca
    inc e
    inc bc
    ld a, e
    rlca
    call $9f33
    ld h, b
    rst $08
    jr nc, @-$1e

    rra
    ld a, c
    rlca
    jr nc, @+$11

    dec sp
    rlca
    ld e, $01
    dec bc
    rlca
    ld e, l
    inc bc
    dec sp
    inc b
    inc a
    inc bc
    rra
    nop
    sbc $e0
    ld a, [c]
    inc c
    add h
    ld hl, sp-$24
    ldh [$f4], a
    ld [$38d4], sp
    db $ec
    ldh a, [$d8]
    ldh [$f4], a
    ld [$f885], sp
    dec c
    ldh a, [$7a]
    add b
    sbc b
    ldh [$5c], a
    ldh [$bc], a
    ret nz

    ld hl, sp+$00
    ld d, b
    nop
    nop
    jr z, jr_02a_5a1c

    ld bc, $3308
    inc c
    inc sp
    inc c
    jr z, jr_02a_5a54

    nop
    ld bc, $0f28
    ld bc, $0308

jr_02a_5a1c:
    ccf
    inc bc
    xor c
    rra
    jr nc, jr_02a_5a5e

    ld bc, $fc08
    ld bc, $ff28
    db $fc
    ld bc, $8e08
    nop
    db $10
    rst $08
    rst $38
    rst $08
    rra
    jr nc, jr_02a_5a77

    jr nc, @+$39

    db $10
    rst $38
    ld e, d
    inc a
    ld bc, $f308
    ld bc, $1f08
    ld l, b
    ret nz

    ld bc, $f008
    ld b, c
    ret nz

    ld bc, $0008
    ldh a, [rP1]
    db $fc
    ldh a, [rSB]
    ld [$c000], sp
    db $fc
    ret nz

jr_02a_5a54:
    di
    inc a
    di
    inc a
    jp $0180


    ld [$30cf], sp

jr_02a_5a5e:
    rst $08

jr_02a_5a5f:
    jr nc, @+$01

    nop
    rst $38
    nop
    nop
    inc c

jr_02a_5a66:
    inc bc
    inc c

jr_02a_5a68:
    inc bc
    inc bc
    nop
    inc bc
    ld e, $00
    rrca
    inc bc
    ld bc, $4f08
    ld [$1043], sp
    ld l, e

jr_02a_5a77:
    jr jr_02a_5ab8

    dec de
    rst $38
    ccf
    ret nz

    ld bc, $2208
    ld [$07ff], sp
    db $10
    inc c
    db $10
    db $dd
    cpl
    db $10
    ld e, $30
    rrca
    ld bc, $1b08
    db $10
    ld b, [hl]
    ld [$4bcf], sp
    db $10
    dec bc
    call z, $ccf0
    ldh a, [$ad]
    jr @+$32

    ld bc, $6b08
    ld [$0f87], sp
    db $10
    jr nc, jr_02a_5a66

    jr nc, jr_02a_5a68

    add e
    stop
    ld [hl], b
    ei
    or b
    cp $9b
    db $10
    ei
    ret nc

    rst JumpTable
    ld d, b
    scf
    jr nc, jr_02a_5a5f

jr_02a_5ab8:
    db $10
    rra
    jr jr_02a_5abc

Jump_02a_5abc:
jr_02a_5abc:
    ld [$1ff3], sp
    db $fc
    di
    db $fc
    rst $38
    sub b
    add a
    db $10
    rlca
    db $10
    rrca
    db $10
    ei
    sub b
    jp nz, Jump_02a_5000

    ld b, a
    db $10
    db $fc
    ccf
    db $fc
    ccf
    ld d, e
    ld de, $7f03
    db $fc
    ld bc, $2b20
    db $10
    and e
    jr jr_02a_5b54

    ld [$306b], sp
    sub [hl]
    db $10
    ld a, d
    db $10
    db $fc
    dec de
    add hl, sp
    ld bc, $af08
    db $10
    ld h, a
    db $10
    ld l, e
    add hl, de
    rlca
    add hl, bc
    inc a
    ret nz

    ld a, b
    inc a
    ld a, e
    jr nz, @+$81

    add hl, bc
    nop
    jr nc, jr_02a_5b04

    dec d
    ld l, a
    rrca
    nop

jr_02a_5b04:
    ld [hl], e
    rrca
    rst $30
    sbc a
    ld h, h
    rst $38
    ld h, b
    sbc a
    di
    sub [hl]
    ld [bc], a
    ld [bc], a
    ld a, a
    cp e
    ld [hl], a
    ld d, a
    jr c, @+$22

    rra
    ccf
    ld b, e
    inc a
    rst $38
    ld a, b
    rst $38
    nop
    nop
    sub b
    nop
    ldh [rP1], a
    sub b
    add sp, -$10
    db $ec
    or b
    xor $34
    rrca
    or $eb

Jump_02a_5b2d:
    or $7d
    adc [hl]

jr_02a_5b30:
    ld c, b
    nop
    ld a, [hl]
    db $ed
    ld [$807c], a
    add d
    db $fc
    cp [hl]
    ld a, h
    jp $ff3c


    ld a, $ff
    nop
    sub b
    nop
    inc bc
    nop
    rlca
    rrca
    rlca
    rrca
    inc b
    ld a, a
    dec b
    ld a, e
    scf
    ld a, a
    ld sp, $1d3f
    ld [hli], a
    nop

jr_02a_5b54:
    ld a, h
    ld e, a
    inc l
    inc bc
    ld a, e
    inc [hl]
    inc sp
    ccf
    nop
    rrca
    ld b, $1f
    ld c, $1f
    nop
    sub b
    nop
    ldh a, [rP1]
    ld hl, sp+$7c
    ld hl, sp+$3c
    ret z

    rst $38
    add sp, -$09
    ld a, [hl-]
    rst $38
    and $fe
    inc l
    nop
    rlca
    nop
    db $fd
    ld a, [bc]
    call $3732

jr_02a_5b7c:
    ret z

    rst $08
    ld [hl], $ff
    ld b, $ce
    jr nc, jr_02a_5b7c

    jr nz, jr_02a_5b30

    rst $38
    rst $20
    nop
    ld h, a
    cp $6f
    ld a, [hl]
    add hl, hl
    dec bc
    ld h, [hl]
    ld l, e
    ld [bc], a

jr_02a_5b92:
    nop
    rra
    nop
    daa
    jr jr_02a_5c17

    jr nz, jr_02a_5b92

    ld [hl], b
    ld a, b
    jr nc, jr_02a_5c0e

    jr nz, jr_02a_5bc0

    db $fd
    nop
    nop
    ld c, $1e
    inc b
    dec e
    ld c, $1a
    rlca
    dec b
    inc bc
    rra
    rst $38
    nop
    ld [bc], a
    ld bc, $0a01
    inc b
    ld a, [hl]
    rra
    nop
    ld a, $1f
    dec hl
    dec hl
    or [hl]
    ld a, a
    add b
    ld a, a
    add c

jr_02a_5bc0:
    cp $01
    ld b, b
    ld [bc], a
    ccf
    ld a, [hl]
    inc a
    inc bc
    inc e
    rrca
    add hl, sp
    ld e, $38
    rra
    dec l
    rra
    rla
    rrca
    nop
    ld [$2042], sp
    add b
    nop
    ld b, b
    add b
    ret nz

    db $10
    ldh [$d0], a
    sub b
    ld h, b
    db $10
    ldh [$c0], a
    nop
    ld d, b
    cp $23
    ret nz

    ld b, l
    add d
    push af
    ld [bc], a
    add hl, bc
    or $01
    pop af
    ld l, d
    sbc h
    db $fc
    nop
    ld [$2042], sp
    add b
    nop
    ld b, b
    add b
    ret nz

    db $10
    ldh [$d0], a
    sub b
    ld h, b
    db $10
    ldh [$c0], a
    nop
    ld e, b
    ld hl, sp+$20
    ret nz

    ld b, [hl]
    add b
    ld [$1204], a

jr_02a_5c0e:
    db $ec
    inc b
    call z, $fc70
    nop
    ld a, [bc]

jr_02a_5c15:
    jr nz, jr_02a_5c96

jr_02a_5c17:
    inc bc
    nop
    ld [hl], a
    ld [hl], b
    ld a, b
    ld a, b
    ccf
    inc sp
    rlca
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    ld [$7fa0], sp
    rst $38
    dec c
    rst $38
    rrca
    inc bc
    ccf
    ld [hl-], a
    ld a, d
    ld a, b
    ld [hl], a
    ld [hl], b
    inc bc
    nop
    nop
    xor d
    rst $38
    rrca
    add hl, bc
    ccf
    jr jr_02a_5cbb

    inc bc
    ld a, a
    ld c, a
    db $d3
    add hl, de
    dec a
    xor a
    xor d
    nop
    rst $38
    and a
    add hl, sp
    inc e
    sbc $7f

jr_02a_5c4b:
    ld c, a
    ld a, a
    inc bc
    ccf
    jr jr_02a_5c60

    add hl, bc
    adc b
    nop
    inc bc
    ld [bc], a
    dec c
    rlca
    inc e
    inc a
    rla
    inc hl
    rra
    ld e, a
    ld [hl], l
    cpl

jr_02a_5c60:
    ld e, c
    ccf
    ld c, a
    ld b, c
    nop
    ld a, $6f
    daa
    ld e, e
    ld e, e
    scf
    dec h
    dec e
    inc sp
    add hl, bc
    ld e, $05
    rrca
    ld [bc], a
    ld bc, $4002
    db $ec
    ld b, b
    add b
    jr nc, jr_02a_5c4b

    or b
    add sp, -$6c
    ret c

    db $e4
    cp d
    cp $96
    ld a, [$88f4]
    nop
    db $f4
    ld a, d
    jp c, $daee

    call c, $48a8
    or h
    cp b
    add sp, -$30
    jr nz, jr_02a_5c15

    ret nz

jr_02a_5c96:
    db $fd
    nop
    nop
    ld b, $0f
    ld b, $1f

jr_02a_5c9d:
    ld a, [bc]
    rra
    ld [$011f], sp

Call_02a_5ca2:
    db $10
    rra
    nop
    rlca
    ld bc, $3f1f
    inc e
    ld a, a
    jr nz, jr_02a_5c9d

    ld b, b
    ldh [rIE], a
    ld b, b
    nop
    inc a
    ld a, [hl]
    inc a
    rst $38
    ld [bc], a
    ld h, e
    add b
    ld b, b
    rra

jr_02a_5cbb:
    nop
    ldh [$f0], a
    ld h, b
    ld hl, sp+$50
    ld hl, sp+$10
    jr c, jr_02a_5cd5

    jr jr_02a_5cc7

jr_02a_5cc7:
    ld [hl], b
    nop
    ld hl, sp+$70
    db $fc
    ld e, b
    sbc $6c
    nop
    adc $74
    rst $08
    db $76
    ld h, a

jr_02a_5cd5:
    dec sp
    ld h, a
    dec sp
    nop
    scf
    rra
    rra
    dec c
    rst $38
    dec c
    cpl
    dec d
    nop
    rst $38
    rrca
    daa
    rra
    ld b, e
    inc a
    ld a, h
    nop
    add b
    nop
    ld b, b
    inc a
    nop
    ld a, [hl]
    inc a
    rst $38
    ld a, [hl]
    ld a, a
    nop
    inc bc
    inc hl
    dec e
    rla
    rrca
    rra
    rrca
    ld a, a
    nop
    dec bc
    xor a
    dec e
    ld b, a
    ccf
    ld a, a
    nop
    inc bc
    nop
    nop
    ld c, $01
    dec e
    inc bc
    ld a, $01
    ccf
    nop
    nop
    ld a, e
    rlca
    rst $38
    ld c, a
    rst AddAToHL
    ld a, b
    xor a
    nop
    db $76
    rst JumpTable
    ld a, [hli]
    ld a, a
    ld a, [bc]
    ld a, a
    ld l, $6e
    inc bc
    ld sp, $366f
    ld a, a
    ld b, $1f
    add hl, sp
    jr jr_02a_5d4e

    ld a, b
    nop
    ld [hl], d
    ld a, a
    ld c, $ee
    ld [hl], c
    rst JumpTable
    ld h, [hl]
    db $fd
    nop
    ld c, $3f
    nop
    jr jr_02a_5d3b

jr_02a_5d3b:
    inc e
    ld [$001e], sp
    inc c
    dec de
    inc c
    sub $09
    rst $38
    ld b, b
    rst $38
    nop
    ld h, b
    ld a, a
    jr nc, jr_02a_5dab

    jr c, jr_02a_5d75

jr_02a_5d4e:
    jr jr_02a_5daf

    nop
    jr nz, jr_02a_5d9a

    jr c, jr_02a_5db8

    rra
    ld a, b
    daa
    ld a, a
    jr nc, jr_02a_5d93

    ccf
    dec a
    ld [$b021], sp
    db $e3
    ld e, a
    ld hl, sp+$67
    ld b, b
    rst $38
    rra
    ld [$0007], sp
    jr jr_02a_5d73

    inc hl
    inc e
    nop
    ld b, l
    dec sp
    ld c, [hl]
    scf

jr_02a_5d73:
    ld c, [hl]
    scf

jr_02a_5d75:
    ld c, l
    scf
    nop
    ld b, a
    dec sp
    jp $e03c


    ld e, a
    pop af
    rrca
    ld bc, $031c
    rrca
    nop
    dec b
    inc bc
    inc bc
    rra
    jr jr_02a_5d8b

jr_02a_5d8b:
    dec de

jr_02a_5d8c:
    dec b
    inc hl
    dec e
    ld e, a
    inc hl
    ld e, a
    dec l

jr_02a_5d93:
    ld [bc], a
    ld e, a
    ld l, $4f
    dec [hl]
    ld b, a
    add hl, sp

jr_02a_5d9a:
    rra
    ld h, b
    rlca
    nop
    nop
    dec bc
    ld b, $0b
    rlca
    dec de
    inc b
    ld e, $00
    ld bc, $011e
    rra

jr_02a_5dab:
    nop
    ccf
    nop
    ld e, a

jr_02a_5daf:
    ld b, b
    jr nz, @+$03

    jr nz, jr_02a_5e03

    jr nc, jr_02a_5e1d

    jr jr_02a_5deb

jr_02a_5db8:
    rrca
    nop
    rra
    nop
    ld c, $00
    dec e
    ld c, $3f
    inc c
    nop
    ld a, a
    jr c, jr_02a_5e44

    ld sp, $314e
    ld c, a
    jr nc, jr_02a_5d8c

    rra
    add b
    nop
    db $10
    ret nz

    nop
    ldh a, [rP1]
    ld a, b
    add b
    nop
    ld a, b
    add b
    ld hl, sp+$00
    db $fc
    nop
    ld a, [$8004]
    ld bc, $f220
    inc c
    and $18
    call z, $f8f0
    add b
    rst $38

jr_02a_5deb:
    jr z, jr_02a_5e2c

    nop
    ld a, [hl]
    add hl, sp
    cp $19
    rst $38
    nop
    jr @-$03

    inc a
    or e
    ld a, h
    ld b, a
    jr c, @+$81

    jp nz, $0845

    ccf
    ld d, b
    inc bc
    nop

jr_02a_5e03:
    rrca
    nop
    ld a, a
    jr z, jr_02a_5e16

    nop
    ld a, a
    rra
    ld a, a
    inc de
    ld a, a
    inc de
    ld l, [hl]
    rra
    add hl, bc
    ld d, b
    cpl
    ld l, a
    db $10

jr_02a_5e16:
    ld e, a
    and b
    ld a, d
    add h
    ld bc, $d010

jr_02a_5e1d:
    ld e, a
    ld h, b
    ccf
    jr c, jr_02a_5e22

jr_02a_5e22:
    rst $20
    ld [$5f27], sp
    ld h, $5b

jr_02a_5e28:
    dec de
    ld h, $4d
    inc sp

jr_02a_5e2c:
    ld e, a
    ld b, b
    nop
    ld b, b
    jr @+$03

    ld [$6000], sp
    nop
    inc bc
    nop
    dec b
    inc bc
    dec bc
    rlca
    rla
    ld [$2800], sp
    rla
    scf
    rrca
    ccf

jr_02a_5e44:
    dec bc
    ld e, a
    dec hl
    nop
    sbc a
    ld l, e
    sub a
    ld l, a
    cp h
    ld h, a
    cp a
    ld h, a
    nop
    cp a
    ld h, h
    ld h, a
    jr jr_02a_5e16

    ccf
    rst $38
    nop
    nop
    ldh [rP1], a
    sub b
    ldh [$08], a
    ldh a, [$c4]
    jr c, jr_02a_5e63

jr_02a_5e63:
    ld b, h
    cp b
    and d
    call c, Call_02a_6cd2
    push af
    ld a, [hli]
    nop
    push af
    ld a, [hli]
    db $dd
    ld [c], a
    or c
    adc $f9
    adc [hl]
    nop
    ld a, [$cd8c]
    ld [hl-], a
    ld bc, $fffe
    nop
    add b
    ccf
    db $10
    add hl, bc

jr_02a_5e81:
    rlca
    ld de, $100f
    rrca
    jr z, jr_02a_5e88

jr_02a_5e88:
    rla
    jr z, jr_02a_5ea2

    ld h, h
    dec de
    and b
    ld e, a
    sub b
    nop
    ld l, a
    adc b
    ld [hl], a
    or a
    ld e, b
    ld c, h
    ccf
    add e
    ld de, $807f
    ld a, a
    ccf
    jr nz, jr_02a_5e28

    ldh a, [$08]

jr_02a_5ea2:
    ld bc, $0008
    inc d
    add sp, $34
    ret z

    ld c, d
    or h
    ld de, $00ee
    ld hl, $45de
    cp d
    adc l
    ld a, d
    ld [de], a
    db $fc
    jr nz, @-$1c

    db $fc
    ccf
    stop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld a, h
    rrca
    inc l
    rla
    ld a, b
    scf
    ld a, h
    nop
    inc hl
    ld a, [hl]
    ld hl, $65fa
    cp e
    ld a, h
    and a
    nop
    ld a, e
    rst $38
    ld h, e

jr_02a_5ed6:
    cp a
    ld l, e
    ld a, a
    nop
    db $10
    jr nz, @+$11

    rra
    rra
    ld [$00c0], sp
    and b
    ret nz

    db $10
    add b
    add e
    ld [$c038], sp
    inc b
    ld hl, sp-$1c
    jr jr_02a_5e81

    nop
    ld l, h
    ld c, $f0
    inc b
    ld hl, sp+$04
    ld hl, sp+$2a
    jr jr_02a_5ed6

    pop af
    ld a, $3f
    db $10
    dec a
    adc b
    ld a, c
    rst $38
    ld h, l
    nop
    cp a
    ld l, l
    ld a, a
    nop
    ld b, $01
    ld [$4007], sp
    rrca
    dec a
    ld e, b
    ld h, h
    sbc b
    sub d
    ld l, h
    adc [hl]
    ld [hl], b
    nop
    add h
    ld hl, sp-$7c
    ld hl, sp-$54
    ret c

    db $f4
    jr c, jr_02a_5f26

    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    cp $5f

jr_02a_5f26:
    ld [$8000], sp
    ccf
    adc b
    ld d, e
    ld [$3f7f], sp
    ccf
    dec de
    sbc b
    nop
    nop
    inc e
    nop
    nop
    di
    inc c
    db $fd
    xor $fd
    xor $f3
    ld hl, $1c0c
    rrca
    jr jr_02a_5f5c

    nop
    inc a
    jr jr_02a_5f49

    ld [hl], b

jr_02a_5f49:
    nop
    ld a, [hl]
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    inc h
    jr @+$46

    inc a
    ld c, l
    db $10
    ccf
    ld hl, $013e
    jr nz, jr_02a_5f9b

jr_02a_5f5c:
    jr nz, @+$3a

    ccf
    jr nz, jr_02a_5f6c

    jr c, jr_02a_5f63

jr_02a_5f63:
    ld [$103d], sp
    ld bc, $0201
    nop
    inc bc
    inc b

jr_02a_5f6c:
    rlca
    ld [$1c0f], sp
    inc de
    ld h, $00
    add hl, sp
    ld b, e
    ld a, h
    add c
    cp $c3
    db $fc
    ld h, [hl]
    nop
    ld a, c
    inc a
    inc sp
    inc e
    dec de
    inc c
    rrca
    ld b, $04
    rlca
    inc bc
    inc bc
    ld bc, $4001
    nop
    ret nz

    stop
    ld [hl-], a

jr_02a_5f90:
    nop
    ld a, [hl-]
    nop
    ld b, b
    ld a, a
    ld hl, $ff06
    ld [bc], a
    rst $20
    nop

jr_02a_5f9b:
    add c
    ret nc

    or $c0
    inc h
    ld b, c
    ld h, [hl]

jr_02a_5fa2:
    nop
    ld a, [hl]
    nop
    jr nz, @+$01

    inc h
    ld b, c
    nop
    db $db
    nop
    jp Jump_02a_4000


    add c
    rra
    dec c
    nop
    ld bc, $0300
    ld bc, $2002
    inc bc
    inc b
    ld hl, $0b04
    nop
    dec c
    nop
    ld b, b
    add hl, bc
    add hl, de
    dec bc
    jr nc, jr_02a_5fc7

jr_02a_5fc7:
    ld h, b
    nop
    ldh [rLCDC], a
    nop
    and b
    ret nz

    jr z, jr_02a_5f90

    jr c, jr_02a_5fa2

    jr z, jr_02a_6044

    nop
    adc d
    ldh a, [$0e]
    or d
    ld c, l
    rrca
    or b
    rrca
    ld bc, $0736
    ld a, [bc]
    ld bc, $0006
    ld bc, $a05f

Jump_02a_5fe7:
    and b
    dec b
    ld hl, $0a05

jr_02a_5fec:
    dec b
    ld a, [de]
    ld d, $00
    add hl, bc
    ld d, $29
    rlca
    jr c, jr_02a_6005

    ld [hl-], a
    dec bc
    ld b, b
    ld [hl], $28
    ld [$0815], sp
    inc d
    nop
    ld [$9da2], sp
    jr nz, jr_02a_6046

jr_02a_6005:
    ld h, b
    nop
    ld [hl], b
    ld hl, $0020
    ld e, d
    jr nz, jr_02a_5fec

    ld [hl-], a
    call $c837
    ld h, a
    ld bc, $479e
    xor d
    ld bc, $00c6
    add c
    sbc l
    add b
    nop
    inc c
    dec b
    ld bc, $0504
    ld a, [bc]
    add hl, bc
    ld d, $00
    ld a, [bc]
    dec d
    ld a, [bc]
    dec [hl]
    rra
    jr nz, jr_02a_6039

    ld d, $30
    ld [bc], a
    rrca
    rra
    rrca
    ldh [rTIMA], a
    ld bc, $0504

jr_02a_6039:
    nop
    ld a, [bc]
    ld bc, $000e
    rlca
    nop
    inc bc
    inc bc
    nop
    inc c

jr_02a_6044:
    inc c
    inc sp

jr_02a_6046:
    db $10
    cpl
    inc hl
    ld e, h
    dec hl
    nop
    ld d, h
    ld c, d
    or l
    ld c, h
    or e
    ld b, h
    cp e
    ld b, c
    ld c, a
    cp [hl]
    add hl, hl
    ld h, $59
    ld sp, $3935
    dec a
    ld d, b
    nop
    ld b, b
    inc bc
    jr z, jr_02a_6072

    inc de
    inc e
    dec e
    inc b
    ld [de], a
    inc l
    inc sp
    ld a, [hl-]
    dec h
    ld hl, $302f
    rrca
    dec d
    ld a, [de]

jr_02a_6072:
    ld de, $311e
    dec [hl]
    ld a, e
    ldh [rP1], a
    inc a
    inc a
    ld b, d
    ld a, [hl]
    sbc c
    rst $20
    cp l
    jp $21fc


    dec h
    add hl, hl
    dec l
    dec de
    inc c
    cp a
    ld a, [hl]
    ld b, d
    ld l, $e7
    sbc c
    ld e, [hl]
    cp l
    dec h
    add hl, hl
    rra
    ld a, [bc]
    ld [$4191], sp
    inc d
    ld [$22a1], sp
    inc e
    ld a, [hli]
    add c
    db $10
    ld e, l
    ld a, $77
    ld b, c
    ld d, l
    ld a, $3e
    inc e
    ld hl, $001c
    nop
    ld a, [bc]
    ld bc, $0200
    ld bc, $0021
    inc bc
    ld bc, $0305
    dec bc
    rlca
    ld d, $0f
    ld b, d
    inc d
    ld b, c
    dec de
    rlca
    rrca
    nop
    ld [bc], a
    ld b, b
    dec sp
    ld b, $00
    ld c, $04
    ld e, $0c
    inc e
    ld [hl], h
    add sp, $77
    ld a, [$1a05]
    dec b
    nop
    nop
    jr jr_02a_60dd

    db $fc
    inc bc
    rst $20
    ld a, b
    ld [hl], e
    inc a

Call_02a_60dc:
    dec sp

jr_02a_60dd:
    inc e
    ld e, $0c
    ld c, $04
    ld b, $00
    pop de
    nop
    nop
    ld bc, $0102
    rlca
    dec c
    inc bc
    dec de
    inc b
    inc a
    inc bc
    ld l, b
    scf
    db $10
    dec b
    nop
    ld l, h
    inc sp
    ld a, a
    ld e, a
    jr nz, jr_02a_615a

    ld hl, $314f
    ld h, a
    ld e, $3f
    rra
    and b
    add b
    rrca
    nop
    rlca
    inc b
    inc bc
    rlca
    nop
    inc bc
    rra
    ld b, $3f
    ld d, $7b
    scf
    nop
    dec b
    nop
    db $ec
    ld [hl], e
    rst $00
    ld a, b
    rst $38

jr_02a_611b:
    ld b, b
    rst JumpTable
    inc hl
    ld c, a
    ld sp, $1e67
    ccf
    rra
    pop de
    nop
    nop
    add b
    ret nz

    add b
    db $e3
    rst $38
    jp nz, Jump_02a_6ef3

    rst $30
    ld l, [hl]
    sbc $ec
    nop
    nop
    ld a, $c8
    ld a, [$da04]
    inc h
    ld a, [de]

Jump_02a_613c:
    db $e4
    sub d
    db $ec
    sub $e8

jr_02a_6141:
    db $fc
    ld [hl], b
    ld hl, sp+$00
    db $f4
    nop
    nop
    ld a, $7f
    jr c, jr_02a_611b

    ld [hl], e
    rst $38
    ld b, $1f
    ld b, $3b
    rlca
    ld [$7720], sp
    ld e, h
    inc hl
    ld a, a
    db $10

jr_02a_615a:
    jr jr_02a_61cd

    ld e, $73
    inc e
    dec de
    ccf
    ld [$001f], sp
    nop
    xor b
    db $fc
    jr nc, jr_02a_6169

jr_02a_6169:
    jr c, jr_02a_617b

    inc l
    jr jr_02a_615a

    jr @-$36

    ld h, b
    ld h, b
    call c, $00e0
    and b
    cp $3a
    call nz, $14ea

jr_02a_617b:
    rst $20
    jr jr_02a_6141

    ld a, $7c
    add b
    db $fc
    nop
    ld hl, sp+$00
    and b
    ld b, b
    inc bc
    nop
    ld bc, $0001
    rlca
    nop
    rra
    ld a, a
    ld d, $ff
    db $76
    bit 6, a
    ld a, [bc]
    nop
    ld e, h
    db $fc
    ld b, e
    rst JumpTable
    jr nz, jr_02a_61c4

    daa
    ld c, [hl]
    scf
    ld h, [hl]
    dec de
    ccf
    inc bc
    rra
    nop
    sub h
    ld b, b
    ret nz

    nop
    ldh [$60], a
    ldh a, [rP1]
    ldh a, [$f8]
    ld h, b
    ei
    ld h, b
    rst JumpTable
    ld [c], a
    nop
    nop
    inc sp
    adc $ff
    ld c, $3e
    ret z

    ld a, d
    add h
    ld a, [c]
    inc c
    and $78
    db $fc

jr_02a_61c4:
    add b
    ld hl, sp+$00
    db $fd
    nop
    nop
    ld bc, $0103

jr_02a_61cd:
    rlca
    inc bc
    rrca
    rlca
    rra
    rrca
    nop
    ld a, [hli]
    inc b
    inc a
    rra
    ld a, h
    ccf
    pop af
    ld a, [hl]
    ld a, [c]
    ld a, l
    cp $01
    inc bc
    inc bc
    inc bc

jr_02a_61e3:
    ld bc, $f050
    jr c, jr_02a_61e8

jr_02a_61e8:
    ld a, b
    jr nc, jr_02a_61e3

    ld [hl], b
    ld hl, sp-$38
    rst $08
    dec e
    db $e3
    inc sp
    rst $08
    jr nz, jr_02a_6215

    adc $21
    rst JumpTable
    ld sp, $a75e
    sbc $27
    sbc $27
    add hl, sp
    and $1f
    ldh a, [rIF]
    and b
    nop
    ld b, $01
    ld bc, $0007
    rst $38
    nop
    pop af
    ld a, [hl]
    ldh a, [$7f]
    ld a, h
    ccf
    inc a

jr_02a_6214:
    rra

jr_02a_6215:
    nop
    ld a, a
    nop
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0401
    jr nz, jr_02a_6214

    ld a, [c]
    adc l
    rst $38
    ret nz

    ld l, a
    cp a
    ld a, a
    rst $08
    ccf
    rrca
    ld a, a
    add b
    rra
    ldh [rHDMA5], a
    ld b, b
    ldh a, [rIF]
    rrca
    rst $08
    ret z

    ld hl, sp-$08
    ld [hl], b
    ld a, b
    jr nc, jr_02a_6277

    nop
    ld b, b
    nop
    nop
    dec bc
    ld bc, $0300
    ld bc, $0305
    nop
    dec e
    inc bc
    dec h
    dec de
    ld b, l
    dec sp
    ld b, e
    inc a
    rlca
    ld b, b
    ccf
    jr nz, jr_02a_6277

    rra
    db $d3
    daa
    dec hl
    add b
    cpl
    rst $20
    jr @+$01

    ld h, d
    rst $38
    ld [hl], d
    cp a
    nop
    ld [hl], b
    ld e, a
    jr c, jr_02a_62a9

    rra
    inc a
    rra
    ld a, [hl]
    ld [$ff3f], sp
    ld a, a
    rst $38
    rst JumpTable
    dec e
    inc bc
    dec h

jr_02a_6277:
    db $10
    dec de
    ld b, l
    dec sp
    ld hl, $3cc3
    ldh [$5f], a
    nop
    ldh a, [$6f]
    ld a, a
    jr nc, @+$3a

    rra
    ccf
    rra
    ld b, b
    ld a, a
    sbc a
    rrca
    nop
    db $10
    rrca
    jr nz, jr_02a_62b1

    sub b
    ld hl, $0837
    dec [hl]
    ld a, a
    dec [hl]
    ld e, a
    dec [hl]
    nop
    ccf
    db $10
    ccf
    jr jr_02a_62d0

    rra
    jr jr_02a_62b3

    nop
    dec e
    rrca
    rra
    rrca

jr_02a_62a9:
    ccf
    rra
    ccf

jr_02a_62ac:
    nop
    add b
    jr nz, jr_02a_62ac

    nop

jr_02a_62b1:
    ld a, [hl]
    cp h

jr_02a_62b3:
    ld [hli], a
    call c, $001e
    ldh [$9f], a
    ld l, [hl]
    rst $38
    ld e, $fd
    ld a, $fa
    db $10
    ld a, h
    db $f4
    ld hl, sp-$5f
    cp $fc
    rst $38
    cp $60
    rst $38
    ld e, a
    jr nz, jr_02a_62d0

    nop
    rlca
    inc bc

jr_02a_62d0:
    ld c, $01
    rlca
    rra
    rrca
    inc e
    rrca
    ccf
    rra
    ld hl, $25fc
    add hl, hl
    dec l
    ld sp, $e035
    db $fc
    nop
    nop
    ldh a, [$e0]
    ld h, b
    add b
    ld hl, sp-$40
    ret nz

    nop
    db $fc
    inc hl
    and l
    dec l
    ld sp, $e035
    jr nz, jr_02a_62f5

jr_02a_62f5:
    nop
    dec h
    nop
    dec [hl]
    nop
    dec a
    db $10
    ccf
    dec d
    nop
    scf
    dec e
    dec [hl]
    rra
    dec a
    rra
    rra
    rrca
    ld b, $0f
    rlca
    rlca
    ld bc, $9b01
    nop
    ccf
    nop
    ld a, a
    ccf
    ld a, a
    rra
    ld a, $0f
    nop
    rra
    rlca
    ccf
    dec bc
    ccf
    add hl, bc
    ccf
    dec c
    nop
    cpl
    inc de
    cpl
    rla
    ld l, b
    rla
    ret c

    ld h, a
    ld [$77f8], sp
    rst $38
    nop
    nop
    db $10
    db $fc
    nop
    cp $00  ; and a / or a
    db $fc
    cp $fc
    ld c, [hl]
    db $fc
    inc e
    ld hl, sp-$64
    db $10
    ld hl, sp-$04
    ldh a, [rSB]
    ld [$fef8], sp
    ld hl, sp-$09
    ld [bc], a
    ld a, [$fa77]
    ccf
    ldh a, [$f8]
    rra
    jr jr_02a_6350

jr_02a_6350:
    inc b
    nop
    ld bc, $0700
    ld bc, $083d
    rra
    ld a, a
    nop
    jr nz, @+$01

    ld b, b
    ld hl, sp+$47
    ldh a, [rIF]
    inc hl
    nop
    dec e
    ld h, e
    dec e
    and c
    ld e, [hl]
    ldh [$5f], a
    ldh a, [$08]
    ld l, a
    db $fc
    inc bc
    rrca
    rra
    ld [$00c0], sp
    ldh [rP1], a
    ret nz

    ldh a, [$e0]
    ld hl, sp-$10
    db $fc
    ld [$00fe], sp
    inc b
    ld e, $e4
    ld c, $f0
    add h
    ld a, b
    add h
    nop
    ld a, b
    ld b, $f8
    dec c
    ld a, [c]
    dec de
    and $7f
    ld b, b
    adc [hl]
    ld h, e
    jr nz, jr_02a_6397

    nop

jr_02a_6397:
    ld b, $01
    jr jr_02a_63a2

    nop
    ld a, a
    rra
    rst $38
    ld a, a
    ld b, c
    ccf

jr_02a_63a2:
    jr nz, @+$21

    jr nz, jr_02a_63b6

    rrca
    ld bc, $3110
    ld c, $7f
    ld bc, $803f
    dec de
    ld [$001f], sp
    ld a, a
    ld e, $ff

jr_02a_63b6:
    ld a, [hl]
    ld a, $00   ; xor a
    db $fc
    inc a
    ldh [$fa], a
    call nc, $96f9
    ld sp, hl
    ld bc, $f1b6
    adc [hl]
    ld b, c
    cp [hl]
    ld b, d
    cp h
    sub l
    ld [$f808], sp
    rst $00
    ld hl, sp-$02
    add c
    jr z, jr_02a_63d3

jr_02a_63d3:
    nop
    inc bc
    nop
    nop
    inc c
    inc bc
    ccf
    rrca
    ld a, a
    ccf
    inc hl
    nop
    rra
    ld de, $080f
    rlca
    ld [$0f07], sp
    ld b, $00
    ccf
    rlca
    ld a, [hl]
    rrca
    ccf
    db $10
    add hl, bc
    ld [$000e], sp
    rst $38
    inc a
    ld a, [hl]
    ldh a, [$7c]
    ret nz

    ld a, [c]
    xor h
    nop
    pop af
    ld l, $f1
    ld l, [hl]
    pop hl
    ld e, $81
    ld a, [hl]
    nop
    add d
    ld a, h
    add $38
    ld a, [$23c4]
    call c, $3fc0
    jr nc, jr_02a_644e

    db $10
    rra

jr_02a_6413:
    ld bc, $0e1f
    ccf
    ld a, [bc]
    nop
    ccf
    ld c, $2e
    ld de, $1f20
    ld h, b
    rra
    jr nc, jr_02a_6413

    ld l, a
    rst $38
    jr nc, jr_02a_6427

jr_02a_6427:
    db $10
    ldh [rP1], a
    sub b
    ldh [rP1], a
    ld hl, sp-$40
    db $fc
    cp b
    ld a, h
    xor b
    ld a, h
    cp b
    nop
    inc a
    ret nz

    ld b, $f8
    rlca
    ld a, [$fa07]
    db $10
    rrca
    ldh a, [$f0]
    dec de
    jr jr_02a_644c

    nop
    rlca
    inc bc
    ld [bc], a
    rlca
    inc bc
    inc c

jr_02a_644c:
    rlca
    add hl, de

jr_02a_644e:
    rrca
    cp a
    ld h, b
    db $10
    ld b, b
    rrca
    ei
    stop
    nop
    rst $38
    nop
    rst $38
    cp $00  ; and a / or a
    rst $38
    cp $7e
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [rSB], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    ld b, b
    ld bc, $4018
    add b
    ld e, l
    jr c, jr_02a_647b

    nop
    inc a
    inc bc
    ld b, b
    ccf
    nop
    ld a, h

jr_02a_647b:
    inc bc
    ret nz

    ccf
    add d

jr_02a_647f:
    ld a, l
    sbc h
    ld h, e
    nop
    or b
    ld c, a
    ldh [$5f], a
    db $e3
    ld e, h
    db $f4
    jr jr_02a_64dc

    inc [hl]
    ld bc, $1808
    ld a, a
    add hl, de
    ld b, $f8
    ld [bc], a
    db $fc
    ld [$fc03], sp
    ld bc, $01fe
    jr nc, jr_02a_647f

    ld e, $11
    nop
    ld c, $31
    ld c, $42
    inc a
    ld b, d
    inc a
    db $fc
    ld d, b
    ld [hl], b
    add e
    db $10
    rlca
    cp l
    ld [$0f10], sp
    inc a
    inc bc
    nop
    ld h, b
    rra
    ld b, d
    dec a
    ld c, h
    inc sp
    ld e, b
    daa
    nop
    ld sp, $130e
    inc c
    add hl, de
    ld c, $0f
    ld b, $60
    rlca
    cp a
    add hl, hl
    ccf
    add b
    ld h, d
    inc e
    jp nz, $843c

    inc c
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rra
    ld [$0300], sp
    nop
    dec b

jr_02a_64dc:
    inc bc
    ld l, c
    rlca
    sbc b
    ld h, a
    nop
    adc b
    ld [hl], a
    ld [c], a
    dec e
    ld a, [c]
    ld l, l
    ld a, [$0075]
    ld a, b
    scf
    add hl, sp
    ld d, $11
    ld c, $11
    ld c, $00
    inc e
    inc bc
    rra
    inc c

jr_02a_64f8:
    ccf
    ld e, $3f
    nop
    ld bc, $00c0
    and b
    ret nz

    sub b
    ldh [rNR10], a
    ld bc, $0008
    ld c, h
    or b
    ld b, d
    cp h
    ld b, c
    cp [hl]
    dec e
    ld [c], a
    nop
    sbc a
    ld l, h
    adc a
    db $76
    adc [hl]
    ld [hl], b
    jr jr_02a_64f8

    ld [bc], a
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    ccf
    ld b, b
    add b
    ld b, c
    ld a, a
    ld bc, $4810
    scf
    jr nc, @+$11

    db $10
    ld bc, $8008
    ccf
    add b
    inc c
    ldh a, [rSC]
    db $fc
    ld bc, $01fe
    ld bc, $11fe
    xor $09
    or $0e
    ldh a, [$3f]
    ld d, b
    db $10
    add hl, bc
    rlca
    ld [$0801], sp
    ld a, [bc]
    dec b
    ld [de], a
    dec c
    ld [bc], a
    ld [hli], a
    dec e
    jr z, jr_02a_6567

    inc l
    inc de
    ld bc, $1010
    ld [bc], a
    rrca
    rrca
    nop
    rrca
    rlca
    rra
    ccf
    jr z, jr_02a_6567

    inc b
    ldh a, [$08]
    ldh a, [$38]
    ret nz

    ld b, c
    db $10

jr_02a_6567:
    ld b, c
    cp [hl]
    db $10
    ld hl, $1fde
    rrca
    ld [$e010], sp
    ldh [rP1], a
    db $10
    ldh [$c0], a
    ldh [rSTAT], a
    ret z

    jr c, @+$09

    ld a, a
    jr c, @+$62

    ld a, a
    rra
    ld [$1041], sp
    sbc [hl]
    ldh [rNR11], a
    xor $27
    nop
    ret c

    ld c, a
    or [hl]
    rra
    xor $3e
    call c, $007c
    cp b
    inc a
    ret nz

    inc b
    ld hl, sp+$0c
    ldh a, [$3e]
    ld a, [bc]
    call nz, $3cfe
    db $fc
    rra
    ld [$6707], sp
    db $10
    rrca
    nop
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld a, l
    inc bc
    cp a
    ld c, l
    inc c
    cp a
    ld c, l
    ld a, l
    inc bc
    dec bc
    db $10
    ld bc, $0618
    ld a, e
    ld h, c
    dec [hl]
    rra
    ld d, b
    rrca
    db $10
    ld a, e
    dec [hl]
    add hl, sp

jr_02a_65c2:
    ld b, $1f
    jr nc, jr_02a_65c2

    cpl
    db $10
    rrca
    ld [hl], b
    ccf
    ld [hl], b
    rrca
    ld [hl], b
    cpl
    ld [hl], b
    ld b, b
    nop
    nop
    jr z, @+$1e

    inc e
    dec sp
    daa
    dec a
    dec hl
    nop
    inc a
    dec hl
    ld a, $29
    ld e, a
    ld h, b
    ld c, l
    ld [hl], d
    nop
    ld a, h
    ld a, a
    ld a, [$fdc7]
    xor e
    cp l
    rst $38
    jr nz, jr_02a_666d

    ld a, a
    rra
    jr nc, jr_02a_65f2

jr_02a_65f2:
    nop
    ret nz

    ret nz

    jr nc, jr_02a_65f7

jr_02a_65f7:
    ldh a, [rBCPS]
    sbc b
    db $e4
    sbc h
    ld [c], a
    sbc [hl]
    ld [c], a
    nop
    sbc [hl]
    rst $38
    ccf
    ld e, a
    db $e3
    cp a
    push de
    cp l
    nop
    rst $38
    cp $fe
    nop
    nop
    inc bc
    inc bc
    inc c
    nop
    rrca
    ld e, $15
    cpl
    ld [hl], $2f
    ld [hl-], a
    ld b, [hl]
    nop
    ld a, c
    ld c, a
    ld a, a
    ld d, [hl]
    ld a, c
    ld e, a
    db $76
    ld e, a
    nop
    db $76
    ld [hl], $39
    ccf
    ccf
    ld a, e
    ld b, a
    db $fd
    nop
    xor e
    rst $38
    rst $38
    nop
    nop
    ldh [$e0], a
    jr c, jr_02a_6636

jr_02a_6636:
    ret c

    ld [hl], h
    xor h
    ld a, [c]
    ld l, [hl]
    ld a, [c]
    ld c, [hl]
    ld h, c
    nop
    sbc a
    ld bc, $c1ff
    rst $38
    add e
    rst $38
    adc a
    add b
    scf
    ld [$fcfc], sp
    sbc $e2
    cp a
    push de
    rst $38
    nop
    rst $38
    rrca
    rrca
    inc e
    inc de
    ld e, $15
    rra
    nop
    ld d, $1f
    ld [de], a
    ld a, $3d
    ld a, a
    ld b, e
    db $db
    ld hl, $ffbd
    ld bc, $db08

jr_02a_6669:
    cp l
    ld a, [hl]
    ld b, e
    ccf

jr_02a_666d:
    jr nc, jr_02a_666f

jr_02a_666f:
    ldh a, [$f0]
    ld a, b
    sbc b
    add sp, $58
    add sp, -$28
    nop
    add sp, -$68
    call nz, $043c
    db $fc
    ld [bc], a
    cp $88
    ld bc, $8610
    cp $1e
    ccf
    adc b
    ld h, $39
    jr nz, jr_02a_668e

    ccf
    ld h, h

jr_02a_668e:
    ld a, a
    ld a, h
    ld a, a
    ld a, [hl]
    ld b, l
    jr c, @+$01

    ld b, b
    jp $107f


Jump_02a_6699:
    rlca
    rlca
    jr jr_02a_66bc

    inc l
    inc sp
    nop
    ld c, [hl]
    ld [hl], l
    ld c, a
    db $76
    adc a
    ld a, [c]
    add [hl]
    ld sp, hl
    nop
    add e
    rst $38
    push bc
    cp $e7
    db $fd
    ld a, a
    ld a, l
    jr nc, jr_02a_66f0

    ld a, $5f
    jr nz, jr_02a_66f6

    ld h, b
    ld b, d
    ld a, a
    ld b, e
    ld a, a

jr_02a_66bc:
    nop
    ld b, a
    ld a, h
    ld l, l
    ld a, e
    ld a, a
    ld a, e
    ccf
    dec sp
    ld [bc], a
    ld a, l
    ld c, e
    rst $38
    xor h
    rst $38
    rst $38
    dec a
    db $10
    ld h, $00
    add hl, sp
    ld c, a
    ld [hl], d
    ld c, a
    ld [hl], d
    adc a
    ld a, [c]
    adc a
    nop
    ldh a, [$86]
    ld sp, hl
    add a
    rst $38
    set 7, h
    cp $50
    ei
    rra
    ld [$3f3c], sp
    jr nz, jr_02a_6669

    add b
    ld h, b
    ldh [rLCDC], a
    db $10
    rla
    add hl, bc

jr_02a_66f0:
    db $f4
    ld c, h
    db $f4
    ld c, h
    ld a, [c]
    ld c, [hl]

jr_02a_66f6:
    nop
    ld [hl], d
    adc [hl]
    ld h, d
    sbc [hl]
    add d
    cp $c6
    ld a, [hl]
    db $10
    cp $7e
    ld e, l
    rra
    add hl, sp
    nop
    nop
    ld a, [hl]
    nop
    ld bc, $0003
    ld bc, $7d00
    nop
    add e
    add hl, bc
    ld [$0600], sp
    nop
    inc a
    nop
    ld b, h
    nop
    jr c, jr_02a_671c

jr_02a_671c:
    jr jr_02a_6726

    nop
    db $10
    ld e, d
    ld b, c
    nop
    ld [$1818], sp

jr_02a_6726:
    inc h
    nop
    inc a
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    ld b, $7e
    inc h
    inc a
    jr jr_02a_674e

    rla
    jr nc, jr_02a_6779

    nop
    nop
    ld e, b
    ld bc, $0e00
    ld bc, $0b14
    nop
    add hl, hl
    ld d, $4d
    ld [hl], $6d
    ld [hl], $6e
    dec d
    db $10
    ld a, $03

jr_02a_674e:
    rrca
    ld e, $60
    nop
    ldh a, [rP1]
    ld c, b
    nop
    or b
    add h
    ld a, b
    inc b
    ld hl, sp+$12
    db $ec
    ld [c], a
    ld [bc], a
    inc e
    ld a, $c0
    inc e
    ldh [$f0], a
    scf
    sub b
    dec [hl]
    nop
    ld a, d
    daa
    ld a, [hl]
    rrca
    ld c, b
    scf
    ld h, a
    jr jr_02a_67a2

    ld a, [hl-]
    dec b
    ccf
    jr nc, jr_02a_67ae

    ld d, b
    add hl, sp

jr_02a_6779:
    add $11
    xor $00
    add hl, bc
    or $81
    ld a, [hl]
    add e
    ld a, h
    ld c, [hl]
    or b
    nop
    ld hl, sp+$00
    rra
    nop
    inc a
    rra
    ld a, c
    ld b, $00
    xor $71
    pop bc
    ld a, $7b
    inc b
    inc c
    inc bc
    ld b, b
    inc b
    ld bc, $0818
    rlca
    ld [$0907], sp
    ld b, $00

jr_02a_67a2:
    add hl, bc
    ld b, $04
    inc bc
    inc bc
    nop
    ret nz

    nop
    nop
    ld hl, sp+$00

jr_02a_67ad:
    db $e4

jr_02a_67ae:
    ld hl, sp-$7e
    ld a, h
    ld [hl], d

jr_02a_67b2:
    adc h
    nop
    ld [hli], a
    call c, $807e
    ld a, e
    cp h
    ld h, c
    sbc [hl]
    nop
    add hl, sp
    add $41
    cp [hl]
    ld bc, $02fe
    db $fc
    nop
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld hl, sp+$00
    inc bc
    nop
    nop
    inc c
    inc bc
    jr nc, @+$11

    ld b, d
    dec a
    adc e
    ld [hl], h
    nop
    add [hl]
    ld a, c
    call nz, $a43b
    ld e, e
    sbc h
    ld h, e
    nop
    jp Jump_02a_6e3d


    rra
    ld e, a
    jr nz, jr_02a_6809

    ld e, $20
    rla
    rrca
    ld a, l
    db $10
    ret nz

jr_02a_67ef:
    nop
    jr nc, jr_02a_67b2

    ld [$f010], sp
    add h
    ld a, b
    cpl
    db $10
    ld de, $61ee
    sbc [hl]
    nop
    ld hl, $b2de
    call z, $d0ae
    call nz, $04b8
    sbc b
    ld h, b

jr_02a_6809:
    ldh [rP1], a
    add b
    rra
    ld [$000f], sp
    nop
    ld c, $07
    ccf
    nop
    ld a, c
    ld a, $40
    ccf
    jr nz, jr_02a_6853

    rlca
    ld a, e
    db $10
    jp nz, $f201

    ld b, c
    jp z, Jump_02a_7100

    call z, Call_02a_4073
    ccf
    ld b, b
    ccf
    jr nc, jr_02a_67ad

    ld b, c
    ld [$00e0], sp
    jr c, @-$3e

    inc d
    add sp, -$6c
    nop
    ld l, b
    sub h
    ld l, b
    sub [hl]
    ld l, b
    ld b, d
    cp h
    ld [bc], a
    db $10
    db $fc
    ld bc, $01fe
    jr nc, jr_02a_6849

    db $fc
    ld c, $f0

jr_02a_6849:
    add b
    ld a, a
    db $10
    ld c, $01
    ld de, $380e
    rlca
    ld b, [hl]

jr_02a_6853:
    nop
    add hl, sp
    ld b, b

jr_02a_6856:
    ccf
    add b
    ld a, a
    sbc b
    ld h, a
    adc h
    ld b, $73
    ld c, h
    inc sp
    jr c, jr_02a_6869

    dec a
    jr nc, jr_02a_68e4

    jr nz, jr_02a_67ef

    inc e
    ld [hl], b

jr_02a_6869:
    inc b
    ld hl, sp+$7f
    db $10
    scf
    jr nz, jr_02a_6879

    db $10
    inc b
    ld hl, sp+$0c
    jr jr_02a_6856

    ld h, b
    add b
    ld a, a

jr_02a_6879:
    db $10
    add c
    db $10
    jr @+$11

    nop
    ld sp, $7f1e
    ld de, $2dd3
    adc a
    ld [hl], b
    dec b
    call nc, $e463
    ld b, e
    call nz, Call_02a_58ff
    nop
    and l
    ld [$f000], sp
    nop
    adc b
    ldh a, [rDIV]
    ld hl, sp+$64
    sbc b
    nop
    db $fc
    nop
    ld [hl], h
    cp b
    jp nz, $f27c

    inc c
    ldh [$87], a
    db $10
    rst $38
    jr nc, @+$7d

    ld de, $0102
    rrca
    nop
    add hl, de
    nop
    ld c, $30
    rra
    inc [hl]
    dec de
    ld a, $01
    ld a, [hl-]
    ld [$6e11], sp
    ld sp, $8b66
    ld [$1f20], sp
    db $10
    add hl, hl
    rrca
    inc c
    ccf
    jr @-$1e

    add c
    ld [$e018], sp
    cp a
    or b
    ld b, b
    nop
    nop
    ld [$0060], sp
    jr jr_02a_68d7

jr_02a_68d7:
    ld c, $00
    ld d, $03
    nop
    ld bc, $100c
    ld [bc], a
    ld b, $20
    nop
    sub b

jr_02a_68e4:
    add b
    jr nz, jr_02a_68e7

jr_02a_68e7:
    ret nz

    dec hl
    ld [$0030], sp
    sbc b
    ld b, b
    ld c, h
    inc b
    jr nz, @+$28

    db $10
    inc de
    ld [$3017], sp
    ld [hl], b
    nop
    nop
    inc a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    nop
    inc bc

jr_02a_6904:
    db $10
    ld bc, $0408
    ld [bc], a
    ld [bc], a
    ld bc, $4280
    ld l, b
    ld [$0400], sp
    nop
    ld [bc], a
    add b
    ld [bc], a
    nop
    ret nz

    ld bc, $41a0
    ret nc

    ld hl, $00f8
    ld bc, $007c
    ld e, $80
    rst $00
    jr nz, @+$33

    ld l, c
    jr jr_02a_692a

    rra

jr_02a_692a:
    nop
    ccf
    nop
    ld e, a
    jr nz, jr_02a_69af

    dec b
    ld [$3f40], sp
    ld b, e
    db $10
    ld b, b
    rlca
    jr nz, jr_02a_694d

    ld [$0809], sp
    inc b
    inc b
    ld [bc], a
    inc bc
    dec sp
    jr c, jr_02a_6904

    inc b
    ld [c], a
    nop
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld a, h

jr_02a_694d:
    pop bc
    cp h
    ld [bc], a
    ld h, b
    sbc $20
    cp $00  ; and a / or a
    rst $38
    ld bc, $7f08
    ld [$1d00], sp
    add d
    rst $00
    and b
    add b
    inc c
    nop
    db $10
    inc e
    rlca
    nop
    ld [$0802], sp
    pop bc
    or b
    nop
    ld [$8003], sp
    ld b, $00
    ld h, b
    add b
    rra
    ld h, b
    ld l, h
    ld [$4000], sp
    jr nc, jr_02a_697b

jr_02a_697b:
    jr nc, jr_02a_69c5

    ld b, b
    add b
    nop
    add b
    ld e, $01
    ld bc, $003f

jr_02a_6986:
    daa
    jr @+$05

    inc h
    ld bc, $a103
    nop
    stop
    ld [$8403], sp
    ret nz

    jr nz, jr_02a_6986

    ld b, e

jr_02a_6997:
    ld [$1081], sp
    ccf
    ret nz

    rrca
    jr nc, @-$0c

    ld [$6000], sp
    ld bc, $0202
    nop
    ld [bc], a
    inc b
    inc b
    ld a, [bc]
    add a
    ld [$9b80], sp
    adc b

jr_02a_69af:
    inc bc
    inc b
    nop
    nop
    jr c, @+$06

    ld a, a
    add sp, -$41
    jr jr_02a_697b

    ld [$5883], sp
    ld bc, $097d
    rlca
    nop
    rlca
    jr nc, jr_02a_69cd

jr_02a_69c5:
    rrca
    ld d, d
    ld [$0801], sp
    ld b, b
    ld b, a
    adc b

jr_02a_69cd:
    ld b, a
    nop
    adc b
    ld b, e
    add h

jr_02a_69d2:
    jr nz, jr_02a_6997

    db $10
    ld h, b
    rlca
    jr jr_02a_69e1

    ccf
    ld b, b
    ld sp, $0120
    ld [hl], b
    db $fc
    inc bc

jr_02a_69e1:
    ldh [rP1], a
    inc e
    nop
    ldh [rNR10], a
    ld [$0408], sp
    inc b
    nop
    ld [hl-], a
    ld [bc], a
    jr c, @+$04

    add hl, sp
    ld bc, $0118
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $0c
    inc b
    ld a, [de]
    ld [$d414], sp
    add hl, bc
    xor $10
    inc b
    xor b
    dec c
    ld de, $5707
    jr nz, jr_02a_6a1f

    ld bc, $0720
    ld [$0000], sp
    daa
    db $10
    jr z, jr_02a_6a21

    scf
    rlca
    jr jr_02a_6a1d

jr_02a_6a1d:
    ld b, b
    rrca

jr_02a_6a1f:
    nop
    inc bc

jr_02a_6a21:
    nop
    ld c, $01
    dec e
    ld a, [bc]
    ld a, $19
    nop
    ld b, a
    jr c, jr_02a_6a71

    ld a, [hl-]
    adc [hl]
    ld [hl], c
    sbc a
    ld l, h
    jr nz, jr_02a_69d2

    ld [hl], d
    ld bc, $6c08
    ld c, a
    inc sp
    ld c, a
    ld [hl], $00
    cpl
    ld d, $1f
    inc bc
    rlca
    nop
    ret nz

    nop
    nop
    ld [hl], b
    add b
    cp b
    ld d, b
    db $fc
    jr jr_02a_6aae

    sbc h
    nop
    and d
    ld e, h
    ld [hl], c
    adc [hl]
    ld sp, hl
    ld [hl], $f9
    ld c, [hl]
    add b
    ld bc, $3608
    ld a, [c]
    call z, Call_02a_6cf2
    db $f4
    ld l, b
    ld [$c0f8], sp
    ldh [rP1], a
    ccf
    db $10
    rra
    ld [$0025], sp
    ld a, [de]
    ld c, [hl]
    ld sp, $2c5f
    cp a

jr_02a_6a71:
    ld d, d
    cp a
    db $10
    ld c, l
    sbc a
    ld h, a
    ld b, e
    ld [$5f68], sp
    jr z, jr_02a_6ada

    inc b
    dec hl
    ccf
    inc c

jr_02a_6a81:
    rra
    rlca
    ccf
    db $10
    ldh a, [rP1]
    nop
    ld a, b
    sub b
    and h
    ld e, b
    ld [hl], d
    adc h
    ld a, [$0234]
    db $fd
    ld c, d
    db $fd
    or d
    ld sp, hl
    and $43
    ld [$0016], sp
    ld a, [$ba14]
    call nc, $30fc
    ld hl, sp-$20
    add b
    ccf
    db $10
    dec bc
    inc b
    rrca
    db $10
    ld [hl], $09
    ld a, [de]
    nop

jr_02a_6aae:
    dec h
    ld h, [hl]
    add hl, de
    ld a, a
    nop
    ld a, a
    ld b, [hl]
    rst $38
    nop
    ld l, e
    rst $38
    ld l, e
    ld a, a
    ld b, [hl]
    ld a, [hl]
    add hl, sp
    ld a, $02
    dec h
    ld a, $3d
    ld e, $01
    inc bc
    ccf
    db $10
    ret nz

    nop
    ld hl, sp-$10
    inc b
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    add hl, bc

jr_02a_6ad3:
    ld bc, $81fe
    ld a, [hl]
    ld bc, $0110

jr_02a_6ada:
    cp $0d
    db $10
    inc b
    inc b
    ld hl, sp+$38
    ret nz

    ret nz

    ccf
    ld [$020d], sp
    nop
    inc e
    dec bc
    inc a
    dec de
    ld b, l
    ld a, [hl-]

jr_02a_6aee:
    ld b, l
    ld a, [hl-]
    jr nz, jr_02a_6a81

    ld [hl], b
    cp a
    sub b
    or b
    ld b, b
    cp b
    ld d, b
    inc a
    nop
    ret c

    ld [hli], a
    call c, Call_02a_5ca2
    pop af
    ld c, $f9
    ld d, b
    ld [hl], $83
    ld [$bf4a], sp
    ld h, b
    inc c
    inc bc
    dec e
    ld a, [bc]
    add hl, bc
    dec h
    ld a, [de]
    ld c, a
    jr nc, jr_02a_6ad3

    ld d, b
    rra
    ld l, b
    cp a
    ld b, b
    nop
    or b
    ld b, b
    jr c, jr_02a_6aee

    and h
    ld e, b
    ld a, [c]
    inc c
    add b
    cp a
    or b
    rrca
    nop
    dec bc
    inc d
    ld a, [bc]
    dec [hl]
    ld d, $10
    add hl, hl
    ld d, [hl]
    add hl, hl
    cp a
    ld b, b
    ld a, a
    jr c, jr_02a_6b73

    dec l
    add b
    cp a
    jr nz, jr_02a_6b3d

    nop
    rlca
    inc bc

jr_02a_6b3d:
    rrca
    rlca
    ld [$0714], sp
    db $10
    rrca
    ld bc, $0860
    inc de
    ld [$0304], sp
    nop
    inc bc
    nop
    ld bc, $0300
    ld bc, $0103
    ld c, b
    ld [bc], a
    ld bc, $01a8
    nop
    inc bc
    rst $38
    rst $38
    add a
    ld hl, sp-$80
    rst $38
    ld hl, $0020
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld h, d
    ld a, a
    ld [bc], a
    di
    sbc [hl]
    push af
    sbc [hl]
    sub [hl]
    db $fd

jr_02a_6b73:
    ld hl, $0566
    ld a, l
    ld b, [hl]
    ld a, l
    ld b, h
    ld a, a
    ld e, b
    nop
    add c
    add b
    ld b, b
    rst JumpTable
    ldh [rSVBK], a
    adc a
    ret nz

    ccf
    add b
    ld b, b
    ld a, a
    inc l
    ld [hl], b
    rst $38
    cp a

jr_02a_6b8d:
    rst $08
    rst $38
    add b
    sub b
    ld hl, $c0bf
    rra
    db $10
    rst $08
    ccf
    or a
    ld a, e
    nop
    ld e, [hl]
    rst $20
    ld a, a
    rst $00
    cp a
    rst $00
    rst $38
    add e
    add b
    rra
    ld d, $bf
    ld a, h
    ld h, a
    cp $7f
    cp $ff
    cp b
    ld hl, $3fbc
    ld b, c
    rra
    ld de, $78b7
    ld e, a
    ld [bc], a
    ldh [$7f], a
    ld hl, sp-$31
    db $fc
    rst $38
    ld h, c
    ld hl, sp-$78
    rra
    rla
    ret nz

    rst $38
    add b
    ld b, c
    cp h
    rst $20
    cp $91
    rra
    jr jr_02a_6b8d

    ret nz

    ld e, a
    add e
    cp a
    rst $00
    rra
    dec e
    ld b, d
    add b
    dec h
    ld h, h
    ld a, a
    ld a, [c]
    sbc a
    ld hl, $0391
    rst $38
    sub b
    rst $38
    ld h, b
    ld a, a
    ld b, b
    add c
    daa
    nop
    ld [hl], b
    ld a, a
    ld e, b
    ld a, a
    ld c, a
    ld a, a

jr_02a_6bee:
    ld e, d
    ld h, [hl]
    nop
    inc h
    inc a
    jr jr_02a_6c0d

    ld a, a
    jp $e75e


    nop
    scf
    rst $38
    rrca
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    ld bc, $ff9f
    adc a
    rst $38
    ld b, b
    rst $38
    jr nz, jr_02a_6c56

    ldh [rNR42], a

jr_02a_6c0d:
    jr nz, jr_02a_6bee

    ret nz

    ld e, a
    ldh [$37], a
    ld hl, sp-$6b
    ld a, a
    rlca
    rst $38
    dec h
    ld c, [hl]
    rra
    ld [de], a
    cp $21
    jr nz, jr_02a_6c5f

    db $fc
    rra
    ld a, [de]
    ld a, [hl]
    rst $00
    ld e, a
    rst $20
    scf
    ld h, b
    ei
    rra
    ld a, [de]
    ld c, d
    ld h, [hl]
    or $69
    ldh [$1f], a
    nop
    jp $e53c


    ld e, e
    rst $20
    ld e, e
    rst $00
    ld a, [hl-]
    nop
    push bc
    ld a, [hl-]
    db $e3
    ld e, h
    ldh [$5f], a
    pop bc
    ld a, $f8
    ld sp, $3935
    ld e, l
    rst JumpTable
    ret nz

    ccf
    db $ed
    nop
    ld d, e
    rst $28
    ld d, h
    rst $08
    scf
    swap [hl]
    rst $20

jr_02a_6c56:
    ld c, h
    ld e, b
    ccf
    jp $ff3c


    nop
    inc bc
    inc bc

jr_02a_6c5f:
    ld a, $3f
    ld h, l
    ld a, [hl]
    ld e, e
    ld h, h
    nop
    xor [hl]
    pop de
    and l
    db $db
    res 7, a
    rst JumpTable
    cp e
    nop
    rst JumpTable
    cp c
    rst $08
    cp c
    and a
    db $dd
    or e
    rst $08
    nop
    ld e, h
    ld h, e
    ld h, a
    ld a, b
    jr c, @+$41

    rrca
    rrca
    ld b, b
    nop
    nop
    jr @+$0f

    dec c
    ld a, [de]
    rra
    dec d
    ld a, [de]
    inc b
    ld [hl], $39
    add hl, hl
    scf
    dec hl
    ld bc, $2908
    scf
    nop
    ld [hl], $39
    add hl, de
    ld e, $0e
    rrca
    inc bc
    inc bc
    ret nz

    dec e
    jr nz, jr_02a_6ca1

jr_02a_6ca1:
    jr nz, jr_02a_6cdf

    inc a
    ld h, [hl]
    ld a, [hl]
    ld e, d
    ld h, [hl]
    nop
    and l
    db $db
    and l
    db $db
    db $db
    rst $20
    ld h, [hl]
    ld a, [hl]
    jr nz, jr_02a_6cef

    inc a
    dec d
    jr nz, jr_02a_6cba

    nop
    rlca
    inc bc

jr_02a_6cba:
    rra
    ld bc, $3f00
    ld d, $7f
    ccf
    ld a, a
    dec hl
    ld bc, $0008
    ccf
    ld a, a
    ld b, $7f
    jr c, @+$01

    ld a, l
    rst $38
    nop
    ld c, l
    ei
    ld a, l

Call_02a_6cd2:
    ld d, l
    dec sp
    jr c, jr_02a_6cdd

    rlca
    nop
    nop
    ret nz

    nop
    ldh [$c0], a

jr_02a_6cdd:
    ldh a, [$60]

jr_02a_6cdf:
    ld hl, sp+$00
    jr nc, jr_02a_6cdf

jr_02a_6ce3:
    nop
    db $fc

jr_02a_6ce5:
    jr jr_02a_6ce3

    jr c, jr_02a_6ce5

    nop
    ld a, b
    ld hl, sp+$30
    cp $c0

jr_02a_6cef:
    rst $28
    or $ef

Call_02a_6cf2:
    nop
    or $cf
    or $9f
    and $26
    ret nz

    ret nz

    add b
    ccf
    cp b
    rst $38
    ld c, l
    cp e
    ld a, l
    ld d, h
    dec sp
    ccf
    add b

jr_02a_6d06:
    ccf
    ld b, b
    jr jr_02a_6d06

    ld [$08f4], sp
    db $fc
    nop
    nop
    cp $7c
    cp $7c
    rst $38
    cp d
    rst $38
    add $c0
    ccf
    jr nc, @+$42

    nop
    ret nz

    jr jr_02a_6d20

jr_02a_6d20:
    jr c, @+$12

    ld a, a
    jr nz, jr_02a_6d63

    db $fc
    ld e, e
    ld hl, $2925
    dec l
    nop
    inc d
    cp $1c
    nop
    ld bc, $21fe
    dec h
    nop
    inc c
    jr jr_02a_6d38

jr_02a_6d38:
    nop
    inc a
    jr @+$80

    inc h
    rst $38
    ld e, d
    rst $38
    jr jr_02a_6d50

    inc a
    nop
    inc h
    jr jr_02a_6d48

    db $10

jr_02a_6d48:
    dec a
    and b
    rst $20
    dec b
    rst $20
    rst $38
    cp l
    rst $38

jr_02a_6d50:
    add c
    inc hl
    rst $20
    add c
    inc bc
    rst $38
    sbc c
    ld a, [hl]
    ld b, d
    inc a
    inc a
    jp c, $0900

    adc [hl]
    jr nc, jr_02a_6dbb

    inc a
    ld h, [hl]

jr_02a_6d63:
    ld b, c
    dec h
    ld a, [de]
    db $10
    rrca
    nop
    rrca
    rla
    add hl, de
    dec l
    inc sp
    ld e, d
    ld h, [hl]
    or h
    rra
    call z, $88f8
    ld hl, $2925
    dec l
    ld sp, $35e0
    rst $38
    and b
    inc bc
    inc bc
    dec b
    ld b, $0b
    db $10
    inc c
    rla
    jr jr_02a_6dc3

    ld a, [hl-]
    ld h, $34
    inc l
    scf
    jr c, jr_02a_6dc7

    dec e
    ld c, $a0
    jr jr_02a_6dd4

    rla
    inc d
    db $fd
    inc a
    inc h
    inc a
    ld hl, $1d25
    ld d, $39
    ld e, d
    ld h, [hl]
    ccf
    inc a
    ld b, d
    ld hl, $2925
    dec e
    ld [de], a
    ld [hl-], a
    ld a, [hl-]
    rra
    sbc c
    ld a, [hl]
    cp l
    ld b, c
    dec h
    add hl, hl
    dec l
    nop
    stop
    rlca
    nop
    ld [$1107], sp

jr_02a_6dbb:
    rrca
    inc de
    rrca
    ld [$070b], sp
    add hl, bc
    rlca

jr_02a_6dc3:
    add hl, hl
    inc b
    inc bc
    inc bc

jr_02a_6dc7:
    jp nz, $0b1b

    dec hl
    inc c
    inc bc
    db $10
    rrca
    dec a
    inc hl
    ccf
    rra
    daa

jr_02a_6dd4:
    ld b, c
    dec h
    add hl, hl
    dec l
    ld sp, $8035
    ld h, b
    rlca
    nop
    jr jr_02a_6de7

    jr nz, jr_02a_6e01

    ld b, b
    inc bc
    ccf
    ld b, e
    ccf

jr_02a_6de7:
    add a
    ld a, a
    adc a
    pop bc
    add hl, hl
    ld hl, sp+$2d
    ld sp, $3935
    dec a
    inc bc
    nop
    inc b
    jr nz, jr_02a_6dfa

    dec b
    ld b, c
    ld [bc], a

jr_02a_6dfa:
    ld bc, $0172
    adc h
    rra
    ld [hl], e
    or c

jr_02a_6e01:
    ld a, a
    ld hl, $2925
    dec l
    ld [hl], e
    ldh [$39], a
    dec a
    jr nz, jr_02a_6e44

    nop
    ld b, h
    jr c, jr_02a_6e6a

    ld b, e
    inc a
    ld hl, $1e21
    jr jr_02a_6e1e

    ld [hl], l
    dec h
    db $fc
    add hl, hl
    ld l, a
    dec [hl]
    add hl, sp

jr_02a_6e1e:
    jr nz, @+$42

    nop
    nop
    ld [$0040], sp
    ld h, b
    nop
    ld d, b
    jr nz, jr_02a_6e2a

jr_02a_6e2a:
    cp h
    ld d, b
    and [hl]
    ld e, h
    push af
    ld l, [hl]
    adc l
    halt
    ld c, c
    ld [hl], $7d
    ld a, [hl-]
    inc hl
    inc e
    ld e, $00
    ld h, b
    ld [bc], a

Jump_02a_6e3d:
    ld a, [de]
    stop
    jr jr_02a_6eb0

    nop
    db $db

jr_02a_6e44:
    inc h
    sub c
    nop
    ld l, [hl]
    add c
    ld a, [hl]
    cp c
    ld a, [hl]
    cp $7c
    cp $00  ; and a / or a
    ld a, h
    cp h
    ld a, b
    ld a, b
    jr nc, jr_02a_6eae

    jr nc, jr_02a_6e88

    jr nc, jr_02a_6e5a

jr_02a_6e5a:
    db $10
    rra
    jr c, jr_02a_6e5e

jr_02a_6e5e:
    ld d, b
    ld bc, $0301
    ld [bc], a
    nop
    rlca
    inc b
    dec bc
    inc c
    rrca
    add hl, bc

jr_02a_6e6a:
    ld [hl], $1b
    db $10
    ccf
    rrca
    rra
    rla
    adc b
    ld d, $1b
    ld e, $1b
    nop
    inc e
    rla
    dec a
    ld h, $6e
    ld [hl], l
    ld a, a
    rra
    ld b, b
    ccf
    add hl, sp
    ld c, b
    add b
    add b
    ret nz

    ld b, b
    and b

jr_02a_6e88:
    ld h, b
    nop
    ldh [rNR41], a
    ret nc

    or b
    ldh a, [$b0]
    ret nc

    ld [hl], b
    ld bc, $f848
    ld c, h
    db $fc
    db $fc
    ldh a, [$f8]
    scf
    ld a, b
    nop
    dec l
    ld [hl], $3e
    dec h
    inc a
    daa
    dec a
    ld h, $03
    rst $38
    db $e4
    cp $75
    rst $38
    rst JumpTable
    ccf
    db $10

jr_02a_6eae:
    scf
    ld [hl], b

jr_02a_6eb0:
    nop
    ld c, b
    ld hl, sp-$38
    ld a, b
    ret z

    ld a, b
    ld c, [hl]
    cp $00  ; and a / or a

jr_02a_6eba:
    ld e, [hl]
    db $fc
    cp $f6
    ld hl, sp+$00

jr_02a_6ec0:
    jr jr_02a_6ee8

    nop
    inc c
    ld [hl-], a
    inc b
    ld a, [de]
    inc b
    ld a, [bc]
    inc b
    ld a, [de]
    nop
    ld [$1036], sp
    inc l
    db $10
    jr z, jr_02a_6ed3

jr_02a_6ed3:
    jr c, @+$2a

    nop
    jr @+$03

    jr jr_02a_6ee2

    ld bc, $1820
    inc h
    jr jr_02a_6ee0

jr_02a_6ee0:
    ld h, $10

jr_02a_6ee2:
    ld l, a
    jr nc, @+$4b

    jr nz, jr_02a_6ec0

    ld h, b

jr_02a_6ee8:
    nop
    sbc e
    jr nc, jr_02a_6eba

    nop
    ld a, h
    nop
    ld a, $0c
    nop
    ld [hl], e

Jump_02a_6ef3:
    ld b, $d9
    inc b
    sbc e
    inc c
    sub d
    ld [$f610], sp
    jr jr_02a_6f62

    dec e
    ld [$3864], sp
    ld b, [hl]
    inc a
    nop
    ld b, e
    ld e, $61
    ld c, $31
    ld c, $11
    ld c, $00
    ld sp, $631c
    jr c, @-$38

    ld [hl], b
    adc h
    ld [hl], b
    nop
    adc b
    ld [hl], b
    adc h
    ld a, b
    add [hl]
    inc a
    jp nz, $001c

Call_02a_6f20:
    ld h, d
    jr @+$28

    ld bc, $0102
    ld b, $03
    inc b
    inc b
    inc bc
    inc b
    ld bc, $0906
    ld [$0102], sp
    nop
    ld [de], a
    ld bc, $001a
    rst JumpTable
    ld b, c
    cp [hl]
    inc sp
    nop
    ld c, h
    rra
    jr nz, jr_02a_6f4f

    db $10
    inc bc
    inc c
    nop
    ld b, b
    inc bc
    and b
    ld [$0020], sp
    ld sp, $3b00
    stop

jr_02a_6f4f:
    cpl
    jr jr_02a_6f79

    db $10
    rst $28
    ld [hl], b
    adc e
    jr c, jr_02a_6f58

jr_02a_6f58:
    ld b, l
    jr jr_02a_6f7f

    inc c
    ld [de], a
    inc b
    ld a, [bc]
    ld [bc], a
    ld b, b
    dec b

jr_02a_6f62:
    dec de
    ld [$0001], sp
    nop
    jr nc, jr_02a_6fb5

    jr jr_02a_6f6b

jr_02a_6f6b:
    ld h, h
    ld [$0c36], sp
    ld [de], a
    ld [$1836], sp
    nop
    ld h, h
    jr nc, jr_02a_6fc3

    jr nc, @+$4a

jr_02a_6f79:
    db $10
    ld l, b
    db $10
    ld b, b
    jr z, jr_02a_6f80

jr_02a_6f7f:
    db $10

jr_02a_6f80:
    jr c, jr_02a_6fc6

    ld a, h
    add d
    jr c, @-$38

    ret nz

    adc a
    ld [$595c], sp
    nop
    dec b
    nop
    ld b, $00
    add d
    and d
    ld bc, $e008
    ld d, l
    ld [$0070], sp
    sub b
    pop bc
    ld [$b010], sp
    ld bc, $3858
    dec a
    jr nz, jr_02a_6fe5

    jr nz, jr_02a_6fb6

    ld l, h
    nop
    jr c, jr_02a_6ff1

    nop
    nop
    dec bc
    ld a, [hl]
    nop
    rst $38
    ld b, c
    dec h
    nop
    inc d
    rra

jr_02a_6fb5:
    rra

jr_02a_6fb6:
    nop
    ld a, a
    sbc l
    ld hl, $2b27
    nop
    db $10
    ld a, [hl]
    ld bc, $0f1f
    cpl

jr_02a_6fc3:
    nop
    ld c, $b9

jr_02a_6fc6:
    ld bc, $000c
    db $10
    jr jr_02a_702c

    inc h
    ld bc, $1f0e
    db $10
    inc b
    ld [$100e], sp
    inc c
    ld b, b
    ld [de], a
    ld a, c
    jr nc, @+$4a

    ld [hl], b
    ld [$1020], sp
    add b
    rra
    db $10
    ld [bc], a
    inc b
    rlca

jr_02a_6fe5:
    ld [$110e], sp
    inc e
    nop
    ld [hli], a
    jr c, jr_02a_7031

    ld [hl], b
    adc b
    ldh [rNR10], a

jr_02a_6ff1:
    ld b, b
    ld h, b
    jr nz, jr_02a_7014

    db $10
    jr nz, jr_02a_6ffa

    inc b
    rlca

jr_02a_6ffa:
    jr jr_02a_701a

    ld b, $61
    ld a, b
    add [hl]
    ldh [rNR23], a
    dec e
    inc d
    add b
    rst $38
    ld [hl], b
    rst $38
    ld [hli], a
    ld b, l
    ld [de], a
    inc c
    rlca
    nop
    dec bc
    rlca
    nop
    inc c
    inc bc
    pop af

jr_02a_7014:
    rrca
    adc a
    ld a, a
    ld e, l
    ld a, $0f

jr_02a_701a:
    ld l, b
    rra
    cp e
    ld a, h
    ld hl, $2925
    dec l
    ldh a, [$31]
    dec [hl]
    add hl, sp
    dec a
    ldh [rP1], a
    sbc b
    ldh [rP1], a

jr_02a_702c:
    ld h, h
    ld hl, sp-$0e
    db $fc
    ld a, [de]

jr_02a_7031:
    db $fc
    db $ed
    ld e, $3f
    push af
    ld c, $a1
    add hl, hl
    dec l
    ld sp, $3935
    add b
    dec a
    add hl, de
    nop
    ld d, $09
    inc de
    dec c
    dec d
    nop
    rrca
    ld l, a
    rra
    xor h
    ld e, a
    ret


    ld a, [hl]
    db $dd
    ld [$d77a], sp
    ld a, b
    or a
    ld b, c
    ld e, e
    inc a
    ld c, h
    ld bc, $273f
    rra
    jr jr_02a_7065

    rlca
    nop
    nop
    inc c
    rrca
    jr jr_02a_707d

jr_02a_7065:
    inc h
    inc a
    jr nz, jr_02a_708e

    inc d
    dec c
    ret nz

    nop
    inc e
    inc e
    ld a, $22
    ld e, l
    ld h, e
    ld e, l
    ld a, a
    sbc b
    ld h, b
    ld a, $3e
    dec l
    dec de
    inc c
    rrca

jr_02a_707d:
    rrca
    rla
    ld bc, $2718
    jr c, jr_02a_70ab

    ccf
    cpl
    ccf
    nop
    ld a, [bc]
    jr c, jr_02a_70aa

    rra
    dec [hl]
    ld a, e

jr_02a_708e:
    daa
    cpl
    jr nc, @+$51

    ld bc, $8f70
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    nop
    ld c, $0c
    ld a, a
    ld a, a
    ccf
    ccf
    dec a
    db $f4
    nop
    nop
    ld bc, $0506
    dec c
    ld [bc], a

jr_02a_70aa:
    dec de

jr_02a_70ab:
    ld c, $2f
    ld e, $55
    ld a, [hl-]
    nop
    rra
    nop
    db $eb
    db $76
    cp e
    ld h, [hl]
    or [hl]
    ld l, h
    cp d
    ld a, h
    or h
    ld a, b
    ld a, b
    ret nc

    nop
    nop
    ld b, $09
    ld b, $16
    dec c
    dec l

jr_02a_70c7:
    rra
    ld l, $1f
    ld e, c
    ld a, $5b
    inc a
    jr z, jr_02a_70d0

jr_02a_70d0:
    xor a
    xor h
    ld [hl], e
    ld [hl], b
    ld [hl], b
    or a
    ld a, b
    ld e, h
    ccf
    ld b, a
    ccf
    jr nc, @+$11

    rrca
    nop
    ld bc, $fc40
    scf
    nop
    swap [hl]
    dec a
    xor $de
    rst $38
    add hl, de
    cp $8d
    ld a, [hl]
    ld a, [hli]

jr_02a_70ef:
    call c, RST_28
    cp d
    sub $38
    ld [hl], h
    ld a, h
    ld [hl], h
    ld hl, sp-$0c
    ld hl, sp-$38
    ldh a, [$30]
    ret nz

    ret nz

Jump_02a_7100:
    nop
    db $f4
    nop
    nop
    jr jr_02a_712a

    jr jr_02a_70ef

    jr jr_02a_70c7

    ld e, d
    db $db
    ld a, [hl]
    rst $20
    ld a, [hl]
    nop
    rra
    nop
    db $db
    ld h, [hl]
    db $db
    ld h, [hl]
    db $db
    ld h, [hl]
    and l
    ld a, [hl]
    ld e, d
    inc a
    inc a
    nop
    adc $00
    ld sp, hl
    ld b, [hl]
    db $fc
    ld [hl], e
    ld [hl], b
    cpl
    nop
    ld a, l
    ld [bc], a
    rst $38

jr_02a_712a:
    ld [$6cff], sp
    db $dd
    ld h, e
    nop
    or a
    ld c, a
    ld a, a
    dec c
    ld a, a
    inc bc
    ld [hl], a
    inc c
    nop
    ld a, a
    inc bc
    inc hl
    inc e
    ld [hl], a
    ld a, $7f
    nop
    nop
    ld [hl], e
    nop
    sbc a
    ld h, d
    ccf
    adc $0e
    db $f4
    nop
    cp [hl]
    ld b, b
    ld sp, hl
    ld d, $fd
    ld [hl-], a
    cp a
    ret nz

    nop
    rst $28
    or $fb
    or [hl]
    ld sp, hl
    add $ee
    jr nc, jr_02a_715d

jr_02a_715d:
    call c, $f0e0
    nop
    ld hl, sp+$00
    ret nz

    nop
    add b
    ccf
    db $10
    cp a
    ld [hl], b
    ld e, a
    cpl
    ccf
    db $10
    ld a, a
    nop
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    xor a
    ld d, b
    ld h, b
    nop
    rra
    jr nc, jr_02a_718b

    ccf
    nop
    ccf
    nop
    inc hl
    jr nz, jr_02a_719f

    ld b, c

jr_02a_7184:
    ccf
    jr z, jr_02a_7184

    ld c, $f6
    add sp, -$02

jr_02a_718b:
    nop
    inc d
    rst $38
    ld b, $fb
    ld b, $f9
    ld b, $e9
    nop
    ld d, $0f
    ldh a, [rNR32]
    ldh [$fc], a
    nop
    db $fc
    add b
    dec a

jr_02a_719f:
    ld [$00fc], sp
    nop
    nop
    rlca
    nop
    add hl, de
    nop
    ld b, $30
    rrca
    cpl
    db $10
    ld e, $05
    ld a, $00   ; xor a
    dec c
    db $fc
    inc sp
    ld hl, sp+$7f
    db $fd
    ld a, [hl]
    rst $38
    nop
    ld [$377e], sp
    inc a
    rlca
    ld [$0707], sp
    nop
    nop
    inc bc
    ld bc, $0007
    db $ec
    nop
    inc a
    nop
    ret z

    ld a, h
    cp b
    ld e, h
    or b
    ld a, [hl]
    add h
    ld a, $00   ; xor a
    ret z

    ld a, a
    or b
    rst $38
    nop
    rst $28
    ld [hl], b
    rlca
    nop
    ld a, [$7a87]
    rrca
    ldh a, [$9f]
    ld h, b
    db $fc
    ld [$8600], sp
    ld hl, sp-$02
    ld b, c
    adc b
    rst $38
    ld a, h
    rst $38
    nop
    dec bc
    db $76
    dec sp
    inc a
    inc bc
    rrca
    nop
    inc e
    jr nc, jr_02a_720a

    rra
    rra
    ld [$7041], sp
    cp a
    ld [hl], b
    ld b, a
    cp d
    nop
    rlca
    ld a, [$b04f]
    ld sp, hl

jr_02a_720a:
    ld b, $79
    sbc [hl]

jr_02a_720d:
    jr nz, jr_02a_720d

    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    inc e
    ccf
    ld sp, $7f00
    ld h, a
    ld a, a
    ld l, [hl]
    rst $38
    call z, $cdff
    nop
    rst $38
    ld h, a
    rst $38
    ld [hl], e
    rst $38
    cp b
    rst $38
    sbc a
    ld bc, $477f
    ccf
    jr nc, jr_02a_7240

    rrca
    nop
    nop
    jr c, jr_02a_7236

jr_02a_7236:
    rlca
    nop
    rra
    ld b, $37
    inc c
    daa
    ld e, $00
    ld b, e

jr_02a_7240:
    ccf
    ld b, a
    ld a, $47
    inc a
    ld h, a
    ld e, $02
    ld b, e
    ld a, a
    ld a, a
    ld h, d
    ld a, $39
    ld hl, $e040
    nop
    nop
    ld hl, sp+$60
    call z, $e4f0
    ld a, b
    ld [c], a
    nop
    inc a
    ld [c], a
    ld a, h
    jp nz, $e6fc

    ld a, b
    ld [c], a
    ld bc, $fe3e
    ld b, [hl]
    ld a, h
    sbc h
    ldh a, [$f0]
    scf
    ld [hl], b
    nop
    add e
    ld a, a
    cp a
    ld b, d
    cp $19
    rst $38
    inc h
    nop
    rst $38
    and h
    rst $38
    ret c

    ld a, h
    ld h, e
    ccf
    ccf
    add c
    scf
    ld [hl], b
    pop hl
    ld a, $fd
    ld b, d
    ld a, a
    sbc b
    rra
    ld [$2501], sp
    rst $38
    dec de
    ld a, $c6
    db $fc
    db $fc
    ld a, c
    jr nz, jr_02a_7295

jr_02a_7295:
    daa
    inc e
    ld b, a
    ld a, $43
    ccf
    add a
    ld a, [hl]
    nop
    add a
    ld a, h
    and a
    ld e, [hl]
    jp $bb3f


    ld b, [hl]
    inc bc
    db $fc
    inc de
    cp $b1
    rst $38
    call c, $103f
    ld a, c
    jr nz, jr_02a_72b2

jr_02a_72b2:
    call nz, $e2f8
    ld a, h
    ld [c], a
    inc a
    pop hl
    ld a, [hl]
    nop
    pop bc
    cp $e7
    ld a, b
    db $e3
    inc a
    db $dd
    ld h, d
    inc bc
    ccf
    ret z

    ld a, a
    adc l
    rst $38
    dec sp

jr_02a_72ca:
    ccf
    db $10
    dec e
    ld [$4000], sp
    ld hl, sp+$40
    cp $60
    cp [hl]
    ld h, b
    cp a
    inc b
    ld a, b
    adc a
    ld a, b
    ld c, a
    ld a, $7d
    jr nz, jr_02a_735f

    inc h
    ld [bc], a
    rst $38
    ret c

    call c, $60e3
    ld a, a
    ccf
    stop
    nop
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_02a_72f5

jr_02a_72f5:
    rra
    cpl
    rra
    ld c, a
    jr c, jr_02a_737a

    dec sp
    ld a, [hl]
    nop
    inc hl
    ld a, [hl]
    cpl
    ld a, b
    rrca
    ld a, b
    rra
    ld sp, $1e00
    inc sp
    inc c
    inc e
    nop
    ld a, b
    nop
    sbc a
    nop
    ld h, b
    cp a
    ld c, [hl]
    ccf
    rst AddAToHL
    ccf
    db $d3
    ccf
    nop
    reti


    cp a
    adc $df
    ld h, h
    cp [hl]
    ret


    ld a, a
    nop
    sbc h
    ld a, a
    or d
    ld a, a
    and [hl]
    ld a, a
    xor [hl]
    ld a, a
    ld [$3e9c], sp
    ret nz

    ldh a, [$fb]
    jr z, jr_02a_72ca

    ld h, b
    add h
    nop
    ld a, b
    sbc d
    ld h, h
    add [hl]
    ld a, b
    inc bc
    db $fc
    dec a
    nop
    add $07
    ld a, [$fc03]
    ld a, d
    adc h
    ld c, $03
    db $f4
    sub $38
    inc a
    ld [$370c], sp
    ld a, c
    rst $38
    jr nc, jr_02a_7352

jr_02a_7352:
    ld a, a
    inc h
    ccf
    jr jr_02a_7393

    inc bc
    jr nz, jr_02a_7379

    add b
    rst $38
    or b
    cp $24

jr_02a_735f:
    db $fc
    jr jr_02a_739e

    ret nz

    inc b
    nop
    ld hl, sp+$40
    ccf
    ld b, h
    dec sp
    ld c, b
    scf
    ld l, c
    inc bc
    ld [hl], $dd
    ld h, [hl]
    ei
    inc c
    ld e, $8e
    ld b, c
    nop
    jr c, jr_02a_7379

jr_02a_7379:
    ld b, b

jr_02a_737a:
    ccf
    ld b, b
    ccf
    ld c, b

jr_02a_737e:
    scf
    ld c, c
    ld [hl], $01
    ld l, c
    ld [hl], $3d
    ld d, $1f
    ld [bc], a
    rlca
    rra
    ld a, b
    nop
    inc a
    inc bc
    ld b, b
    ccf
    adc b
    ld [hl], a
    sub c

jr_02a_7393:
    ld l, [hl]
    rlca
    db $d3
    ld l, h
    jp c, $fa6c

    rst $08
    ld [$7000], sp

jr_02a_739e:
    ld b, b
    nop
    add b
    rlca
    nop
    rra
    ld b, $37
    inc c
    nop
    daa
    ld e, $43
    ccf
    ld b, a
    ld a, $47
    inc a
    nop
    ld h, a
    ld e, $83
    ld a, a
    cp a
    ld b, d
    cp $01
    ld [$24ff], sp
    ld a, a
    jr jr_02a_737e

    ldh [rP1], a
    ld hl, sp+$00
    ld h, b
    call z, $e4f0
    ld a, b
    ld [c], a
    inc a
    ld [c], a
    nop
    ld a, h
    jp nz, $e6fc

    ld a, b
    pop hl
    ld a, $fd

jr_02a_73d4:
    db $10
    ld b, d
    ld a, a
    add b
    ccf
    cp $18
    rst $38
    nop
    dec d
    add c
    nop
    jp $a541


    ld b, c
    sbc c
    pop bc
    db $fc
    ld l, e
    ld [hl], e
    add hl, sp
    dec a
    rra
    and b
    ld b, b
    nop
    add b
    ld bc, $0200
    ld bc, $011e
    nop
    db $fc
    dec de
    cp $65
    ld a, [hl]
    dec d
    cp $7d
    nop
    rst $38
    ld e, [hl]
    ld a, a
    ld hl, $38ff
    cp b
    ld b, a
    jr jr_02a_73d4

    dec [hl]
    ld a, a
    cp [hl]
    nop
    dec bc
    inc a
    nop
    ld e, d
    nop

jr_02a_7413:
    inc a
    add c
    ld a, [hl]
    ld b, d
    cp l
    rst $38
    nop
    rst $38
    nop
    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    inc h
    ld de, $390e
    nop
    ld b, $29
    ld d, $31
    ld c, $5d
    ld [hli], a
    ld h, e
    inc b
    inc e
    ld a, $07
    rrca
    nop
    nop
    db $10
    rst $38
    nop
    nop
    ld a, [hl]
    add c
    inc a
    jp $7e81


    db $db
    and l
    nop
    rst $38
    ld e, d
    db $76
    xor l
    ld a, [hl]
    and l
    inc a
    db $db
    ld hl, $e718
    inc [hl]
    ld b, d
    cp l
    ld e, d
    and l
    ld hl, $ff04
    jr jr_02a_7413

    nop
    jr jr_02a_7498

    ld [$007e], sp
    inc h
    ld a, a
    inc d
    rst $38
    ld a, h
    rst $38
    rra
    ccf
    nop
    nop
    ld a, d
    dec a
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [de]
    ld a, e
    nop
    dec d
    ld e, e
    dec h
    ld b, l
    ld a, [hl-]
    ld h, h
    dec de
    ld a, [hl-]
    nop
    dec b
    db $10
    rrca
    nop
    nop
    jr jr_02a_747e

jr_02a_747e:
    ld a, h
    nop
    ld [$24ff], sp
    cp $55
    rst $38
    ld a, [hl]
    cp $00  ; and a / or a
    ld bc, $3b7c
    cp $71
    rst $38
    ld a, d
    ld a, a
    db $10
    ld a, [hl-]
    ld a, a
    ld bc, $227f
    dec e

jr_02a_7498:
    add hl, sp
    ld b, $80
    ccf
    dec c
    nop
    rrca
    inc b
    rra
    ld [bc], a
    rra
    db $10
    add hl, bc
    rrca
    rlca
    inc hl
    ccf
    ld e, $3e
    inc e
    nop

jr_02a_74ad:
    ld a, h
    jr nc, jr_02a_74ad

    ld a, b
    cp $79
    ld a, [$0275]
    push af
    ld a, [hli]
    ld [hl], l
    ld a, [bc]
    ld l, a
    jr jr_02a_74fc

    add c
    inc b
    nop
    jp $e781


    ld b, d
    ld b, c
    jp $00ff


    rst $20
    rst $38
    nop
    ld e, d
    inc a
    add c
    ld a, [hl]
    ld b, d
    nop
    cp l
    ld a, [hl]
    add c
    rst $38
    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    ld b, h
    inc h
    cpl
    ld l, a
    ld a, [de]
    ld h, a
    ld b, c
    inc hl
    dec e
    ld [$0c33], sp
    ld de, $210e
    add hl, sp
    ld b, $29
    nop
    ld d, $15
    ld a, [bc]
    jr jr_02a_74f8

    inc l
    inc de
    daa
    ld bc, $1418
    rrca

jr_02a_74f8:
    rrca
    inc bc
    inc bc
    nop

jr_02a_74fc:
    ldh [$64], a
    ld bc, $6541
    ld b, $01
    dec a
    jr nc, jr_02a_7525

    nop
    ld h, b
    ccf
    ld e, b
    daa
    ld a, h
    inc bc
    ld a, h
    dec bc
    jr nz, jr_02a_754d

    dec de
    ld a, e
    jr nc, jr_02a_7515

jr_02a_7515:
    ld a, b
    jr nc, @-$02

    nop
    ld [$e8fc], sp
    db $fc
    db $10
    ld hl, sp-$30
    ld hl, sp+$00
    jr nc, jr_02a_759c

    or b

jr_02a_7525:
    ld a, h
    or b
    ld a, [$fd34]
    db $10
    ld [hl-], a
    db $fd
    ld [hl], d
    ld hl, $74fe
    ld a, l
    ld [de], a
    nop
    ld a, d
    dec b
    ld a, [hl-]
    dec b
    ld h, $1b
    ld e, $05
    ld [$091e], sp
    ld a, [hl-]
    dec d
    ld h, c
    ld a, [de]
    dec b
    add hl, bc
    ld b, b
    ld b, $21
    inc e
    inc bc
    jr nz, @+$21

    scf

jr_02a_754d:
    rrca
    nop
    rra
    nop
    ei
    db $76
    ei
    ld h, $fb
    ld b, $40
    ld sp, hl
    add c
    ld a, [c]
    dec c
    ld [hl], d
    adc l
    ld h, h
    sbc e
    jr nz, jr_02a_7566

    ei
    ld hl, $7d82

jr_02a_7566:
    cp $01
    inc a
    dec b
    jp $8166


    add e
    nop
    ld h, b
    add b
    ld b, c
    jr nz, jr_02a_75b4

    add b
    ld bc, $c00a
    nop
    jr nz, @-$3e

    db $10
    inc bc
    ldh [$08], a
    ldh a, [$78]
    ldh [$e0], a
    sbc a
    ld h, b
    nop
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rrca
    ld bc, $040f
    nop
    rlca
    inc bc
    rrca
    nop
    rra
    ld b, $3f
    ld de, $6100
    ld a, $58
    daa

jr_02a_759c:
    ld a, h
    inc bc
    ld a, h
    dec bc
    ret nz

    rst $38
    ld h, b
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    nop
    ld hl, sp-$40
    db $e4
    ret c

    ld [c], a
    call c, $ecf2
    ld [bc], a
    ld sp, hl

jr_02a_75b4:
    ld h, [hl]
    push af
    ld l, d
    db $fd
    ld [hl], d
    ld b, b
    nop
    nop
    dec c
    ld bc, $0700
    nop
    jr jr_02a_75ca

    nop
    ld sp, $601e
    ccf
    ld e, b
    daa

jr_02a_75ca:
    ld a, h
    inc bc
    ld [$0b7c], sp
    inc a
    dec de
    dec de
    ld a, [bc]
    jr nc, jr_02a_75d5

jr_02a_75d5:
    ld a, b
    nop
    jr nc, jr_02a_75d5

    ld [$e8fc], sp
    ld a, [$fa14]
    ld bc, $f9d4
    ld [hl], $7d
    or d
    db $fd
    ld a, [hl-]
    ld hl, $fb04
    inc a
    ei
    ld [hl], h
    rst $38
    ld b, c
    cp $35
    add hl, bc
    ld a, [$f205]
    dec c
    ld hl, $8d72
    ld hl, $7400
    adc e
    inc h
    db $db
    ld [bc], a
    db $fd
    add d
    ld a, l
    nop
    ld h, c
    sbc [hl]
    ccf
    ret nz

    rst $20
    nop
    db $fd
    ld a, [hl-]
    ld b, b
    rst $38
    ld h, c
    ld [hl-], a
    db $fd
    ld [bc], a
    ld a, c
    add [hl]
    ld a, e
    ld bc, $7a84
    add l
    ld a, [hl-]
    push bc
    ld [hl-], a
    call $023d
    add e
    ld a, h
    ld h, e
    sbc h
    ld de, $31ee
    adc [hl]
    ld b, b
    nop
    nop
    db $10
    rlca
    nop
    dec de
    rlca
    jr nz, jr_02a_7650

    nop
    ld h, b
    ccf
    ret c

    ld h, a
    cp h
    ld b, e
    ld a, h
    inc de

jr_02a_763a:
    jr nz, jr_02a_763a

    ld sp, $101f
    ret nz

    nop
    or b
    ret nz

    ld [$f000], sp
    inc b
    ld hl, sp+$02
    db $fc
    ld de, $09ee
    nop
    or $ff

jr_02a_7650:
    nop
    ld a, a
    ld [$71fe], sp
    ld a, h
    nop
    dec bc
    rst $38
    ld a, b
    ld a, a
    rrca
    ld a, a
    ccf
    ccf
    stop
    ld c, $05
    ld hl, $0005
    ld bc, $c000
    jr nz, jr_02a_768e

    ld [bc], a
    ld bc, $0305
    rlca
    nop
    nop
    or $38
    adc e
    ld a, h
    and $1d
    ld a, [c]
    ld l, l
    ld [$f5fa], sp
    ld sp, hl
    or $41
    ld b, $99
    ld h, [hl]
    nop
    ld c, b
    or a
    inc h
    db $db
    or b
    ld c, a
    call z, $0233
    inc bc

jr_02a_768e:
    db $fc
    rst $20
    ld hl, sp-$04
    nop
    ld h, b
    add b
    ld [de], a
    nop
    ld b, b
    add b
    ld hl, $c020
    ld hl, $4010
    ldh [rNR42], a
    adc b
    ld [hl], b
    ld c, b
    or b
    ld l, b
    sub b
    ld bc, $c834
    sub d
    ld l, h
    or $0c
    ld c, $9f
    add h
    jr nz, jr_02a_76b4

    nop

jr_02a_76b4:
    inc bc
    ld bc, $0721
    inc bc
    add c
    ld hl, $060f
    rra
    ld c, $1f
    inc c
    ld b, e
    ld b, $04
    inc c
    inc bc
    ld [$2107], sp
    ld a, l
    ret nz

    nop
    nop
    ld hl, sp-$40
    ld hl, sp+$30
    ldh a, [rLCDC]
    ld hl, sp+$00
    ldh a, [$fb]
    sub b
    sub a
    inc bc
    add hl, bc
    rlca
    db $10
    ld bc, $a00f
    rra
    ld h, b
    sbc a
    ret nz

    ccf
    ld hl, $4008
    cp a
    inc c
    rlca
    ld hl, $060d
    add hl, bc
    ld bc, $0d06
    ld [bc], a
    inc b
    inc bc
    ld b, $01
    ld hl, $0328
    nop
    ld hl, $8101
    ld [bc], a
    ld bc, $4005
    ld [bc], a
    dec hl
    ld b, b
    cp a
    add sp, $57
    ld a, b

jr_02a_7709:
    and a
    nop
    inc a
    db $db
    ld e, $e1
    and e
    ld e, h
    sub b
    ld l, a
    nop
    ld c, h
    or e
    inc hl
    call c, $ef13
    ld [$00f7], sp
    add h
    ld a, e
    add b
    ld a, a
    ccf
    rst $00
    cp a
    ld a, b
    jr nz, @+$01

    nop
    and b
    rlca
    nop
    rrca
    ld b, $1f
    nop
    add hl, bc
    rra
    ld a, [bc]
    rra
    rrca
    rra
    ld c, $1f
    nop
    inc c
    ld a, $1c
    ld a, a
    jr c, jr_02a_77bc

    ld sp, $067c
    dec sp
    ld a, h
    dec de
    inc a
    inc bc
    cp a
    jr nz, jr_02a_7709

    nop
    nop
    ldh [$c0], a
    jp $e700


    jp $00c9


    rlca
    db $10
    rrca
    jr nz, jr_02a_7777

    ld b, b
    ccf
    ret nz

    jr jr_02a_779c

    add b
    ld a, a
    ld h, c
    add hl, sp
    inc e
    nop
    ccf
    nop
    jr jr_02a_77e6

    ld h, $7e
    jr z, jr_02a_77ea

    ld a, $7f
    nop
    ld a, [hl-]
    ld a, [hl]
    jr c, jr_02a_77ea

    jr nc, jr_02a_77f2

    jr jr_02a_77b3

    ld b, h

jr_02a_7777:
    ld a, [de]
    ld b, c
    ld [de], a
    add hl, de
    ld b, $21
    dec de
    ld b, $ff
    db $f4
    nop
    inc bc
    dec b
    inc bc
    ld a, [bc]
    nop
    jr nz, jr_02a_7794

    rlca
    db $10
    rrca
    rra
    rra
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38

jr_02a_7794:
    nop
    rst $38
    ld [bc], a
    sub d
    rrca
    ld bc, $1b00

jr_02a_779c:
    ld bc, $091f
    inc b
    ld [bc], a
    rra
    rra
    dec bc
    inc bc
    sub b
    nop
    rlca
    inc bc
    rrca
    rrca
    ld b, $1f
    inc c
    ld e, $09
    ld a, [de]
    dec b
    inc [hl]

jr_02a_77b3:
    dec bc
    inc h
    dec de
    xor c
    ld b, [hl]
    add c
    nop
    nop
    nop

jr_02a_77bc:
    jp $ffe7


    rst $20
    rst $20
    nop
    ld b, b
    xor d
    nop
    cp l
    jp $bd3c


    ld a, [hl]
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    nop
    dec [hl]
    ld l, [hl]
    ld l, a
    ld [hl-], a
    ld l, e
    ld l, c
    ld [hl], $45
    ld a, [hl-]
    ld h, h
    dec de
    ld h, d
    dec e
    ld sp, $500e
    nop
    rlca
    jr c, @+$1a

jr_02a_77e6:
    inc c
    inc bc
    inc b
    inc bc

jr_02a_77ea:
    dec c
    ld [bc], a
    ld de, $2d0f
    ld [de], a
    ccf
    nop

jr_02a_77f2:
    ld a, [bc]
    ld bc, $81c3
    ld a, [hl]
    add c
    ld a, [hl]
    cp l
    inc a
    dec h
    jp c, Jump_02a_6699

    ld b, d
    cp l
    inc a
    ld a, [bc]
    rlca
    nop
    sbc c
    ld a, [hl]
    ld b, d
    cp l
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    add c
    rst $38
    nop
    nop
    nop
    rlca
    nop
    inc c
    inc bc
    add hl, bc
    ld b, $20
    ld [de], a
    dec c
    ld h, c
    ld d, $09
    ccf
    nop
    ccf
    nop
    jr jr_02a_7862

    ld e, $3d
    ld a, [bc]
    ld c, c
    ld [hl], $54
    ld b, b

jr_02a_782c:
    dec hl
    ld hl, $1867
    ld a, h
    nop
    swap h
    nop
    adc b
    ld [hl], a
    inc a

Call_02a_7838:
    jp $807f


    adc c
    db $76
    ld [bc], a
    ld [$77f7], sp
    adc b
    sbc h
    ld h, e
    dec h
    db $dd
    nop
    ld [hli], a
    db $eb
    push de
    rst $38
    pop bc
    rst $38
    ld b, c
    db $e3

jr_02a_784f:
    nop
    inc e
    db $e3
    db $dd
    nop
    nop
    ldh [rP1], a
    ld d, b
    nop
    and b
    jr z, jr_02a_782c

    inc l
    ret nc

    sub h
    ld l, b
    inc d
    ld b, b

jr_02a_7862:
    add sp, $21
    db $fc
    nop
    ld a, [hl]
    adc h
    sbc $3c
    ld [bc], a
    sbc $a8
    jp z, $92b4

    ld l, h
    ld hl, $00f3
    adc [hl]
    ld [hl], e
    inc a
    ld [hl], c
    ld a, $3d
    ld c, $3f
    nop
    ld c, $2f
    db $10
    inc de
    inc c
    ld de, $090e
    ld c, b
    ld b, $21
    dec b
    ld [bc], a
    ld h, c
    dec bc
    inc b
    ld a, [bc]
    ld b, c
    dec b
    ld hl, $0007
    rst $38
    db $e3
    rst $38
    jr nz, @+$22

    ld h, e
    rst $38
    daa
    pop bc
    db $eb
    push de
    rst $38
    push de
    nop
    cp [hl]
    pop bc
    rst $38
    sbc h
    db $eb
    sbc h
    db $fd
    add b
    ld [bc], a
    ret


    or b
    ld l, c
    sub b
    xor b
    ld d, b
    ld hl, $10f0
    nop
    rst $00
    cp [hl]
    ld hl, $38de
    db $fc
    cp b
    add hl, bc
    db $fc
    add b
    call nz, $21b8
    call nc, $21a8
    nop
    ret c

    and b
    ldh a, [$80]
    ret nz

    add b
    ld b, b
    add b
    jr nz, jr_02a_784f

    nop
    nop
    inc c
    ldh [rP1], a
    inc e
    ldh [rNR44], a
    nop
    call c, $de21
    pop af
    ld c, $19
    ld b, $04
    jr nz, jr_02a_78e5

    inc bc
    dec de
    dec c

jr_02a_78e5:
    inc a
    nop
    ld e, d
    inc a
    cp l
    jr nc, @+$80

    rst $38
    ld b, c
    dec h
    ld b, e
    cp h
    ld a, $c0
    inc b
    inc b
    ld hl, sp+$18
    ldh [$e0], a
    rra
    dec bc
    rlca
    nop
    nop
    add hl, de
    ld b, $7b
    inc b
    sub d
    ld l, l
    nop
    rst $38
    ld bc, $e21d
    ld h, e
    add b
    add c
    nop
    ld bc, $8041
    nop
    inc c
    ret nz

    nop
    ldh a, [rP1]
    ld [$04f0], sp
    ld bc, $fcf8
    nop
    or [hl]
    ld a, b
    ld a, d
    db $fc
    ld hl, $3201
    db $fc
    ld [bc], a
    db $fc
    add h
    ld a, b
    ld a, b
    rra
    add hl, bc
    nop
    ld bc, $0300
    nop
    dec b
    ld [bc], a
    dec c
    ld [bc], a
    nop

jr_02a_7936:
    dec [hl]
    ld a, [bc]
    ld [c], a
    dec e
    inc hl
    call c, $ec13
    ld h, b
    db $fc
    add hl, de
    add hl, bc
    ld h, b
    ld a, b
    nop
    or h

jr_02a_7946:
    ld a, b
    ld a, d
    jr nc, jr_02a_7946

jr_02a_794a:
    cp $41
    dec h
    add h
    ld a, b
    ld a, b
    add b
    ld h, c
    ret nz

    dec e
    dec c
    jr nz, jr_02a_7958

    nop

jr_02a_7958:
    ld [bc], a
    ld bc, $00a1
    inc bc
    nop
    add d
    ld bc, $0285
    ld c, h
    add e
    nop

jr_02a_7965:
    jr nc, jr_02a_7936

    ld h, d
    sbc l
    jp Jump_02a_613c


    ld e, $40
    rra
    ld e, l
    ldh a, [rP1]
    ld l, b
    ldh a, [$f4]
    ld hl, sp-$7e
    ld hl, $f864
    inc b
    ld hl, sp+$0c
    add hl, hl
    ld [$2580], sp
    ld a, b
    add b
    jr jr_02a_7965

    db $10
    ldh [rNR41], a
    jr nc, jr_02a_794a

    ret nz

    ld e, l
    nop
    ld [de], a
    inc a
    nop
    ld b, d
    inc a
    nop
    or c
    ld a, [hl]
    or e
    ld a, [hl]
    add e
    ld a, [hl]
    add l
    ld a, [hl]
    jr nc, jr_02a_79f7

    inc a
    dec l
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0301
    db $10
    dec b
    inc bc
    rlca
    ld b, h
    ld a, [bc]
    dec b
    rla
    ld [$2220], sp
    dec e
    ld hl, $3f40
    ld d, b
    cpl
    ret nc

    inc b
    cpl
    ld a, [c]
    dec c
    sub $29
    ccf
    jp $2100


    rst $20
    jp $ff21


    jp $dba5


    ld hl, $e700
    sbc c
    ld h, d
    sbc l
    rst JumpTable
    jr nz, jr_02a_7a33

    and b
    ld [bc], a
    ld c, c
    or [hl]
    add hl, bc
    or $18
    rst $20
    ld hl, $605a
    and l
    ccf
    ldh [rSB], a
    nop
    ld b, $01
    ld [$0700], sp
    db $10
    rrca
    inc [hl]
    dec bc
    rra
    jr nz, jr_02a_7a3f

    add hl, bc
    jr nc, jr_02a_7a3d

    scf
    rst $08
    ld b, c
    rst $28

jr_02a_79f7:
    rla
    db $fd
    ld [bc], a
    ld a, [hl]
    nop
    cp l
    ld b, d
    db $10
    rst $28
    ld h, c
    jr jr_02a_7a07

    rst $20
    adc b
    ld [hl], a
    rst $38

jr_02a_7a07:
    nop
    ld hl, $40bf
    inc c
    sbc l
    ld h, d
    sub c
    ld l, [hl]
    rst $38
    jr nz, jr_02a_7a14

    nop

jr_02a_7a14:
    nop
    ld b, $01
    ld [$1807], sp
    rlca
    ld a, [hli]
    dec d

jr_02a_7a1d:
    add b
    ld hl, $2857
    ld d, l
    ld a, [hli]
    add h
    ld a, e
    add d
    db $10
    ld a, l
    xor d
    ld d, l
    db $fd
    ld a, [hl]
    nop
    sub e
    ld l, h
    nop
    sub a
    ld l, b
    ld a, a

jr_02a_7a33:
    add b
    ld d, d
    xor l
    db $10
    rst $28
    nop
    sbc b
    ld h, a
    cp a
    ld b, b

jr_02a_7a3d:
    rst $38
    nop

jr_02a_7a3f:
    sbc $21
    inc c
    adc b
    ld [hl], a
    jr z, jr_02a_7a1d

    rst $38
    jr nz, jr_02a_7a4a

    nop

jr_02a_7a4a:
    nop
    ld b, $01
    rrca
    nop
    ld de, $200e
    rra
    add b
    ld hl, $2f50
    ld c, h
    inc sp
    jp $813c


    db $10
    ld a, [hl]
    add b
    ld a, a
    db $fd
    ld a, [hl]
    nop
    sub c
    ld l, [hl]
    jr nz, @+$12

    rst $28
    ld hl, $00ff
    ld a, a
    add b
    jr jr_02a_7a8d

    rst $20
    ld [$21f7], sp
    add hl, hl
    ld l, e
    add hl, sp
    ld bc, $0000
    rlca
    nop
    rrca
    nop
    inc e
    inc bc
    jr c, jr_02a_7a81

jr_02a_7a81:
    rlca
    dec hl
    inc d
    ld d, [hl]
    add hl, hl
    inc l
    ld d, e
    xor l
    nop
    ld d, d
    adc d
    ld [hl], l

jr_02a_7a8d:
    swap h

jr_02a_7a8f:
    pop bc
    ld a, $c0
    nop
    ccf
    jp nc, Jump_02a_5b2d

    inc h
    ld a, [hl]
    nop
    jp $3c00


    rst $38
    nop
    cp a
    ld b, b
    inc c
    di
    ld a, $00   ; xor a
    pop bc
    jr jr_02a_7a8f

    inc a
    jp $ed12


    jr c, @+$0a

    rst $00
    add b
    ld a, a
    add c
    ld [hl], $ff
    ld bc, $c0fe
    daa
    ld hl, $0000
    add b
    nop
    ldh [rP1], a
    ld [bc], a
    call c, Call_02a_6f20
    sub h
    rla
    db $eb
    ld hl, $006f
    sub c
    scf
    ret z

    cp e
    ld b, h
    ld l, e
    sub h
    db $eb
    nop
    inc d
    db $d3
    inc l
    ld d, e
    xor h
    ld [bc], a
    db $fc
    ld d, $60
    add sp, $3f
    ldh [$c0], a
    nop
    ldh [$c0], a
    ldh a, [$34]
    ldh [$f8], a
    db $10
    ld a, [bc]
    nop
    dec de
    ld a, a
    ld hl, $3f3f
    inc c
    rrca
    rrca
    ld bc, $4b01
    inc hl
    rlca
    nop
    nop
    rrca
    nop
    rra
    nop
    daa
    jr jr_02a_7b20

    ld e, $00
    ld b, b
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ret nz

    ccf
    inc h
    add b
    ld a, a
    ld h, c
    or b
    ld c, a
    dec l
    ld a, [hl]
    nop
    ld [bc], a
    rst $38
    nop
    inc bc
    db $fc
    add e
    ld a, h
    ld hl, $01c3
    inc a

jr_02a_7b1d:
    rst $00
    jr c, @-$77

jr_02a_7b20:
    ld a, b
    adc h
    ld [hl], e
    ld d, b
    ld c, h
    rst $38
    ld sp, $fe01
    ld h, a
    ld b, c
    nop
    add b
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    call c, $2004
    adc h
    ld [hl], b
    ld c, $f0
    ld hl, $f807
    ld h, $1f
    ldh [$ba], a
    ccf
    ret nz

    dec l
    ld [$28d7], sp
    add d
    ld a, l
    ld hl, $3748
    ld c, c
    nop
    ld [hl], $29

jr_02a_7b52:
    ld d, $2f
    db $10
    inc de
    inc c
    add hl, bc
    inc b

jr_02a_7b59:
    ld b, $06
    ld bc, $0001
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    cp $01

jr_02a_7b65:
    ld a, [hl]
    add c
    ld e, d
    and l
    jr jr_02a_7b52

    jr c, jr_02a_7b96

    sub $21
    dec l
    ld hl, $a05f
    pop de
    jr nz, jr_02a_7ba4

    ld a, [hl]
    rra
    ld a, [bc]
    rlca
    cp a
    ld b, a
    sbc e
    ld h, a
    nop
    ld b, a
    dec sp
    ld b, e
    dec a
    inc hl
    dec e
    inc hl
    inc e
    ld bc, $041b
    rrca
    nop
    rlca
    nop
    ld bc, $091d
    add b
    jr nz, jr_02a_7b1d

    db $76
    jp hl


jr_02a_7b96:
    ld d, $f9
    ld b, $ff
    ld b, d
    nop
    ld hl, $42bd
    adc e
    push af
    ld hl, $1493

jr_02a_7ba4:
    ld l, h
    rst $30
    ld [$7e2b], sp
    rra
    add hl, bc
    ld [c], a
    dec e
    jr nz, jr_02a_7b59

    ld d, l
    ld hl, $314e
    ld e, a
    jr nz, jr_02a_7bed

    nop
    ld c, $3f
    rrca
    rla
    rrca
    rra
    rlca
    rrca
    nop
    rlca
    rlca
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $8401
    sbc a
    inc h
    db $db
    and l
    ld e, d

jr_02a_7bce:
    ld hl, $18e7
    add hl, bc
    rst $38
    nop
    cp l
    ld b, d
    ld l, c
    jp $2b3c


    ld de, $817e
    jp $6641


    jp Jump_02a_5fe7


    jr nz, jr_02a_7b65

    ld a, a
    ld hl, $5fa0
    ld d, b
    cpl
    ld c, [hl]
    nop

jr_02a_7bed:
    ld sp, $1827
    ld hl, $101e
    rrca
    ld [$070c], sp
    ld b, $01
    ld bc, $e057
    inc a
    jp $1824


    rst $20
    and c
    rst $38
    nop
    ld h, c
    jr c, jr_02a_7bce

    inc b
    db $10
    rst $28
    sub c
    ld l, [hl]
    ld a, [hl]
    rra
    add hl, bc

jr_02a_7c0f:
    ld l, [hl]
    ld de, $3c00
    inc bc
    ld [hl], $09
    jr @+$09

    ld [$1807], sp
    ld b, $01
    ld bc, $0915
    nop
    ld a, [bc]
    add b
    ld a, a
    nop

jr_02a_7c25:
    ld h, b
    rst $38
    ld hl, $4225
    cp l
    rst AddAToHL
    jr z, jr_02a_7c0f

    ld b, d
    ld e, $2a
    rra
    ld c, $1e
    inc c
    ld hl, $481c
    ld [$1821], sp
    nop
    ld hl, $0010
    ld d, a
    nop
    xor b
    ld e, a
    and e
    sbc a
    ld h, e
    cpl
    db $d3
    sub e
    inc d
    ld h, c
    pop hl
    nop
    nop
    ld d, $80
    ld b, c
    ret nz

    add b
    add b
    ld hl, $c0e0
    ldh [rLCDC], a
    ld h, b
    nop
    jr nz, jr_02a_7c25

    rra
    ld de, $1e00
    inc h
    dec de
    ld hl, $1926
    ld d, $01
    add hl, bc
    rra
    nop
    rra

jr_02a_7c6c:
    ld [$1e3f], sp
    ld hl, $7e04
    jr c, jr_02a_7c6c

    ld h, b
    ldh [$1f], a
    dec bc
    db $10
    rst $28
    ld [$e31c], sp
    rrca
    ldh a, [rNR42]
    rlca
    ld hl, sp-$7d
    inc bc
    ld a, h
    rst $38
    nop
    ld a, a
    nop
    ld bc, $0b01
    ld h, b
    nop
    ld c, $f0
    inc c
    ldh a, [$9c]
    ld h, b
    ld hl, sp+$00
    add d
    ld b, c
    db $10
    ldh a, [$60]
    ldh a, [$e0]
    ld hl, $4be0
    ret nz

    ld hl, $80c0
    ld hl, $9f80
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    ccf
    rla
    nop
    ccf
    ld [de], a
    ccf
    ld [de], a
    ld a, a
    rra
    rst $38
    ld [hl], a
    nop
    cp a
    ld [hl], b
    ld e, a
    jr c, jr_02a_7cfe

    rra
    jr c, @+$21

    nop
    cpl
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ld hl, sp+$00
    db $fc
    ld hl, sp-$0c
    ld hl, sp-$08
    ld h, b
    nop
    db $fc
    ld a, b
    db $fc
    ld a, b
    cp $fc
    cp $bc
    nop
    cp $2c
    ld a, [$e26c]
    call c, $c2fd
    nop
    pop bc
    cp $02
    db $fc
    inc c
    ldh a, [$f0]
    nop
    ld [$0007], sp
    dec bc
    rlca
    ccf
    jr nc, jr_02a_7d36

    rra
    ccf

jr_02a_7cf9:
    nop
    rla
    ld a, a
    jr nc, @+$01

jr_02a_7cfe:
    ld a, b
    sbc a
    ld a, a

jr_02a_7d01:
    ld l, b
    db $10
    rra
    rla
    rrca
    ccf
    jr nz, jr_02a_7cf9

    nop
    ld hl, sp-$10
    ld [de], a
    db $f4
    ld hl, sp-$04
    ccf
    jr @-$02

jr_02a_7d13:
    ld hl, sp+$3f
    jr nc, jr_02a_7d13

    nop
    ret nz

    sbc [hl]
    ldh [rSB], a
    cp $01
    cp $fe
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    nop
    dec bc
    rra
    add hl, bc
    cpl
    add hl, de
    ccf
    rra
    ld a, a
    nop
    dec sp
    rst $28
    ld a, b

jr_02a_7d36:
    rst JumpTable
    ld l, h
    rst JumpTable
    ld l, a
    db $76
    jr nz, @+$11

    inc de
    ccf
    jr z, jr_02a_7d01

    nop
    ldh [$c0], a
    ldh a, [rP1]
    ldh [$f8], a
    ret nc

    ld hl, sp-$70
    cp $98
    rst $38
    nop
    cp $fd
    sbc $fa

jr_02a_7d53:
    inc e
    db $fc
    jr c, jr_02a_7d53

    nop
    ld hl, sp+$74
    ld hl, sp-$1c
    ld hl, sp+$08
    ldh a, [rNR10]
    ld [hli], a
    ldh [$e0], a
    ccf
    ld a, b
    ld l, a
    jr c, @+$01

    ccf
    xor b
    ld hl, sp+$40
    sub b
    ld a, a
    ld [$ffdc], sp
    ld e, $f9
    ld a, $fe
    and h
    ccf
    jr jr_02a_7d7d

    ld b, c
    ld [$00f0], sp

jr_02a_7d7d:
    nop
    db $10
    jr jr_02a_7d99

    nop
    inc [hl]
    inc l
    inc a
    inc a
    ld [hl], d
    ld c, [hl]
    pop hl
    sbc a
    nop
    rst $20
    rst $38
    ld e, d
    ld h, [hl]
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    inc c
    ld e, d
    ld h, [hl]
    inc a
    inc a
    ld a, [de]

jr_02a_7d99:
    jr jr_02a_7dba

    ld l, b
    rst $38
    rst $38
    nop
    ld b, d
    ld a, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld b, d
    ld a, [hl]
    ret nz

    rra
    ld d, b
    nop
    add b
    ccf
    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld b, b
    ccf
    dec e
    xor b
    inc e
    nop
    di
    inc c

jr_02a_7dba:
    db $fd
    xor $04
    db $fd
    xor $f3
    inc c
    inc e
    ld e, l
    stop
    inc a
    ld b, b
    jr jr_02a_7dca

jr_02a_7dc9:
    ld [hl], b

jr_02a_7dca:
    ld a, [hl]
    nop
    ld e, d
    inc a
    ld e, d
    inc a
    ld [$1824], sp
    inc a
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    rlca
    rra
    rrca
    nop
    rra
    rrca
    cpl
    rra
    cpl
    rra
    ld a, a
    ccf
    nop
    rst $38
    ld a, a
    adc l
    ld a, [hl]
    ld l, a
    rra
    daa
    rra
    nop
    db $10
    rrca
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ldh a, [$e0]
    ld a, b
    sub b
    nop
    ld hl, sp-$10
    cp $f0
    rst $38
    cp $fd
    sbc [hl]
    ld bc, $6cfa
    db $fc
    ldh a, [$9c]
    ld hl, sp+$04
    ld bc, $0208
    ld [$10f0], sp
    ldh [$e0], a
    nop
    ccf
    add b
    adc a
    ld [bc], a
    ld a, a
    ld a, a
    rrca
    daa
    rra

jr_02a_7e25:
    inc de
    ccf
    jr c, jr_02a_7dc9

    add b
    ccf
    jr z, jr_02a_7e25

    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    rst $38
    nop
    cp $f9
    cp $fe
    adc b
    db $fc
    ld [hl], b
    call z, $41aa
    jr @-$0e

    ccf
    jr c, jr_02a_7e61

    ccf
    ld [HeaderManufacturerCode], sp
    ld [$007f], sp
    ccf
    ld c, a
    ccf
    ccf
    rlca
    inc de
    rrca
    add hl, bc
    ld b, $07
    ld [$0607], sp
    ld bc, $307f
    dec a
    ld [$08d0], sp
    db $f4
    jr c, @-$02

jr_02a_7e61:
    ld hl, sp+$41
    db $10
    ld a, [c]
    db $fc
    ld a, h
    inc b
    sub b
    ld hl, sp-$20
    ret z

    ldh a, [$7f]
    ld h, b
    ld e, $0f
    jp nz, $103d

    add c
    db $10
    ld b, a
    ccf
    ccf
    ld b, $3f
    sub b
    db $fc
    and d
    ccf
    ld [$3ff4], sp
    db $10
    inc e
    db $fc
    ldh [$3f], a
    ld b, b
    nop
    sub b
    ld b, c
    ld [$030f], sp
    cp a
    ld [$7f07], sp
    ld [de], a
    rst $38
    ld bc, $9f72
    ld a, a
    ld a, a
    rra
    ccf
    db $10
    ld bc, $0808
    add hl, de
    cpl
    rra
    rla
    cp a
    jr jr_02a_7ea6

jr_02a_7ea6:
    nop
    db $fc
    nop
    nop
    cp $fc
    ld a, [$f4fc]
    ld a, b
    db $fc
    nop
    ld [hl], b
    cp $7c
    cp $fc
    cp $ec
    ld a, [$ec00]
    and $d8
    ld a, [$f1c4]
    cp $c1

jr_02a_7ec3:
    ld sp, $0efe
    cp a
    ld [$283f], sp
    ld c, $1f
    inc b
    cp e
    ld [$2110], sp
    ld a, a
    jr nz, @+$03

    jr nz, jr_02a_7f35

    ld sp, $3f4f
    inc b
    jr nz, jr_02a_7efb

    jr jr_02a_7ee5

    rrca
    ccf

jr_02a_7ee0:
    jr z, jr_02a_7ee0

    ld [hl], h

jr_02a_7ee3:
    ret nz

    cp c

jr_02a_7ee5:
    db $10
    dec a
    jr nz, jr_02a_7ee3

    call c, $b8c6
    ld a, [$0084]
    inc b
    ld hl, sp+$03
    db $fc
    ld bc, $fefe
    nop
    jr z, jr_02a_7f00

    nop
    add hl, sp

jr_02a_7efb:
    ld [$3709], sp
    add hl, bc

Jump_02a_7eff:
    ld b, c

jr_02a_7f00:
    rst $38

Jump_02a_7f01:
    ld b, b
    jr nz, jr_02a_7ec3

    ld h, b
    dec a
    jr nz, @+$01

    jr nz, @+$01

    ld b, c
    cp a
    nop
    ld a, a
    ld c, [hl]
    ccf
    jr c, @+$09

    rlca
    nop
    ldh a, [rNR14]
    nop
    db $fc
    ldh a, [$7f]
    db $10
    db $fc
    dec a
    add hl, de
    cp $ec
    sub b
    ld b, c
    ld [$c4dc], sp
    ccf
    ld [$f8c6], sp
    add hl, bc
    or $e0
    ccf
    stop
    db $10
    add c
    jr jr_02a_7f39

    ccf
    inc c

jr_02a_7f35:
    ccf
    dec c
    adc b
    add e

jr_02a_7f39:
    ld [$fd3d], sp
    ld c, e
    ld bc, $7e10
    dec a
    daa
    and h
    ld a, a
    ld [$1f07], sp

jr_02a_7f47:
    jr jr_02a_7f47

    nop
    cp c
    add hl, bc
    cp $fe
    ret nz

    ld a, l
    add hl, de
    add hl, bc
    ld [$f9ee], sp
    sbc $c5
    cp d
    ld a, [$8418]
    ld bc, $3ffe
    db $10
    xor [hl]
    and b
    nop
    db $10
    db $10
    ld bc, $0101
    ld bc, $0113
    inc sp
    ld bc, $ff55
    nop
    dec sp
    nop
    ld a, a
    db $10
    ld a, a
    db $10
    inc d
    ld b, l
    ld e, c
    add hl, de
    ldh [$2a], a
    nop
    inc b
    inc b
    ld c, $08
    inc e
    ld [$881c], sp
    add b
    ret nz

    ld a, [hli]
    and b
    nop
    add b
    ret nz

    add sp, -$04
    db $fc
    cp $fe
    ld [$1cff], sp
    rst $38
    ld d, $00
    rra
    nop
    ld c, $00
    inc c
    ccf
    jr jr_02a_7fdd

    ld e, $3f
    jr nc, @+$80

    jr nz, @+$75

    nop
    xor d
    nop
    jr nz, @+$79

    ld b, [hl]
    rst $38
    jr c, @+$01

    jr nz, @+$01

    db $fd
    ld [hl], l
    ld h, c
    ld b, b
    nop
    xor b
    cp a
    ld a, l
    rst $38
    ld a, a
    db $e3
    ld a, a
    pop bc
    ld a, e
    push bc
    ld sp, hl
    db $fd
    rst $20
    ccf
    di
    nop
    xor e
    nop
    ccf
    db $fd
    rrca
    ld a, [hl]
    dec c
    ccf
    dec b
    sbc a
    sbc a
    rrca
    rlca
    ld b, b
    jr z, @+$01

    cp [hl]
    cp $c7
    cp $83
    sbc $a3
    db $fd
    sbc a

jr_02a_7fdd:
    cp a
    rst $20
    cp $cf
    inc b
    inc b
    db $fc
    cp $bf
    db $ec
    ld a, [hl]
    sub b
    add b
    ld sp, hl
    add b
    pop hl
    nop
    ldh a, [$30]
    nop
    ld a, a
    cp $00  ; and a / or a
    nop
    ld bc, $0301
    ld bc, $1113
    dec sp
    ld de, $543b
    ld [bc], a

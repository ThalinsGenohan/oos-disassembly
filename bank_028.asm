; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX

    add b
    jr c, jr_028_4003

jr_028_4003:
    ld [hl], h
    nop
    jr c, jr_028_406d

    cp b
    sub $68
    rst $10
    ld a, d
    push bc
    nop
    ld a, $e1
    ld e, $a3
    ld a, h
    sbc e
    ld h, h
    ld a, [hl]
    jr z, jr_028_4018

jr_028_4018:
    inc a
    sbc c
    inc h
    nop
    rra
    nop
    nop
    ld b, $00
    ld b, $0c
    inc c
    ld [$1808], sp
    jr jr_028_405d

    nop
    inc l
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    sbc a
    rst $28
    sbc a
    adc l
    nop
    rst $38
    db $fd
    rst $38
    ld a, d
    rst $38
    ld h, [hl]
    ld a, [hl]
    jr jr_028_409c

    inc a
    dec sp
    nop
    ld a, [bc]
    ld [$3c00], sp
    ld [$007e], sp
    inc l
    di
    ld a, [hl]
    and c
    ld a, [hl]
    add c
    ld a, [hl]
    ld d, d
    ld h, b
    inc l
    ld a, [de]
    dec c
    add b
    jr jr_028_4055

jr_028_4055:
    ld h, [hl]
    jr jr_028_40ca

    daa
    inc a
    or c
    ld e, l
    ld b, d

jr_028_405d:
    inc a
    add hl, hl
    dec l
    nop
    stop
    ccf
    nop
    ld [hl], c
    ld a, $df
    ld h, b
    and d
    ld e, h
    ld b, $a6

jr_028_406d:
    ld e, b
    db $fc
    jr nz, jr_028_40e1

    ld hl, $0f1d
    jr jr_028_4076

jr_028_4076:
    nop
    ld a, [hl]
    nop
    rst $38
    nop

jr_028_407b:
    sbc c
    ld a, [hl]
    sub a
    ld bc, $db78
    inc a
    ld [hl], d
    inc c
    inc a
    jr jr_028_40b6

    ret nc

    nop
    db $10
    ld sp, $213c
    jr jr_028_4109

    inc e
    cp c
    ld b, $4e
    or c
    ld a, [hl]

jr_028_4095:
    ld b, d
    inc a
    dec hl
    ldh [rNR50], a
    ret nz

    nop

jr_028_409c:
    ccf
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    nop
    rrca
    rlca
    ld [$0007], sp
    inc b
    inc bc
    ld c, c
    inc bc
    rla
    rrca
    add hl, de
    jr nz, @+$21

    jr c, jr_028_40f5

    dec h
    db $10

jr_028_40b6:
    rrca
    scf
    and b
    jr nz, jr_028_407b

    ld hl, $e080
    nop
    ldh [$c0], a
    sub b
    daa
    ld b, b
    add b
    ld c, c
    add b
    ret nc

    ldh [$08], a

jr_028_40ca:
    ld c, h
    ldh a, [$a1]
    db $10
    ldh [$37], a
    jr nz, jr_028_40e0

    ld c, $08
    dec e
    inc de
    ld a, $2d
    ld h, c
    dec a
    inc hl
    rra
    nop
    ld e, $1f
    ld [de], a

jr_028_40e0:
    ccf

jr_028_40e1:
    inc l
    ccf
    jr nz, jr_028_4164

    nop
    ld b, b
    ld a, a
    ld c, b
    ld [hl], a
    ld d, h
    ld h, e
    ld h, d
    ld bc, $0140
    ccf
    jr c, jr_028_412b

    ld [hl], h
    ld c, h

jr_028_40f5:
    ld a, [$80b6]
    ld h, c
    or $8e
    cp $fa
    cp $ca
    cp $10
    or d
    cp $82
    ld b, c
    and d
    sbc $d2
    adc [hl]

jr_028_4109:
    jr jr_028_4095

    add [hl]
    add [hl]
    ccf
    and b
    jr jr_028_4111

jr_028_4111:
    inc a
    nop
    jr @+$26

    jr jr_028_4195

    inc a
    rst $38
    ld b, d
    rst $20
    db $ec
    ld b, c
    dec h
    add hl, hl
    inc a
    ld a, [$1080]
    nop
    jr nz, jr_028_414e

    db $10
    ld hl, $3844
    ld d, h

jr_028_412b:
    jr c, @-$5c

    ld e, d
    ld a, h
    ld h, c
    add d
    ld b, c
    dec l
    jr c, jr_028_4154

    add hl, bc
    ld a, a
    add a
    ld hl, $603f
    ccf
    ld l, a
    ld b, c
    dec h
    ld h, c
    dec c
    ld l, e
    inc [hl]
    ld h, c
    ccf
    inc sp
    nop
    ld a, [bc]
    cp $21
    nop
    db $fc
    ld [bc], a
    db $fc

jr_028_414e:
    ld b, $fc
    ld c, $fc
    ld e, $00

jr_028_4154:
    db $fc
    ld a, [hl-]
    db $fc
    ld [hl], d
    db $fc
    and $fc
    jp z, $fc60

    inc sp
    and b
    inc e
    nop
    ld a, $1c

jr_028_4164:
    ld a, a
    nop
    ld a, $ff
    ld a, a
    rst $38
    ld a, c
    ld sp, hl
    db $76
    ld hl, sp+$40
    ld [hl], a
    ld hl, $3b7c
    ld a, $1d
    rra
    ld c, $01
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $5f01
    add b
    jr nz, jr_028_419f

    inc e
    ld a, $22
    ld [hl], c
    ld c, a
    ld h, b
    ld b, b
    ld e, a
    ld hl, $7f40
    jr nz, @+$41

    db $10
    rra
    ld b, $08
    rrca

jr_028_4195:
    inc b
    rlca
    ld [bc], a
    db $fc
    ld b, b
    ld a, h
    nop
    nop
    add d
    ld a, h

jr_028_419f:
    ld a, [$fd04]

Call_028_41a2:
    ld b, d
    ld a, l
    inc b
    ld [hl+], a
    ccf
    nop
    ld a, a
    inc a
    daa
    db $fd
    ld [bc], a
    ld c, $b1
    ld a, [hl]
    or c
    ld c, [hl]
    inc sp
    scf
    jr nz, jr_028_41da

    ret nz

    nop
    sbc a
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld b, c
    ld a, $4f
    ccf
    nop
    ld l, b
    rra
    jr z, @+$21

    ld d, a
    ccf
    ld d, h
    ccf
    nop
    ld c, [hl]
    ccf
    ld hl, $5f1f
    ccf
    ld b, b
    ccf

jr_028_41d4:
    jr jr_028_4235

    jr nz, jr_028_4248

    ld a, [hl-]
    add b

jr_028_41da:
    inc a
    nop
    db $e4
    db $10
    jr jr_028_41d4

    ld hl, sp+$21
    and h
    ld hl, sp+$28
    ldh a, [$30]
    inc d
    ld hl, sp+$61
    dec hl
    db $76
    ld hl, sp-$1e
    inc e
    ld b, b

jr_028_41f0:
    ld a, $df
    rlca
    nop
    ld [$1717], sp
    ld c, $24
    cpl
    ld e, $61
    ld l, $1f
    ld hl, $0f37
    nop
    jr c, jr_028_420b

    rra
    nop
    rrca
    db $10
    inc bc
    inc b
    add b

jr_028_420b:
    cp a
    ldh [rP1], a
    db $10
    add sp, -$18
    ldh a, [$74]
    ld c, b
    ld hl, sp+$21
    db $f4
    ld a, b
    ld h, c
    db $ec
    ld [hl], b
    inc e
    ld bc, $f8e0
    nop
    ldh a, [$08]
    ret nz

    jr nz, @+$7f

    nop
    jr jr_028_4240

    inc e
    inc d
    rra
    inc de
    add hl, bc

Call_028_422d:
    ld c, $00
    rrca
    inc c
    rrca
    ld c, $0b
    inc c

jr_028_4235:
    dec b
    ld b, $06
    rlca
    rlca
    ld [bc], a
    inc bc

jr_028_423c:
    inc bc
    ld [hl+], a
    and c
    inc bc

jr_028_4240:
    add b
    ld a, a
    jr c, @+$2a

    ld hl, sp-$38
    sub b
    ld [hl], b

jr_028_4248:
    ldh a, [rP1]
    jr nc, jr_028_423c

    ld [hl], b
    ret nc

    jr nc, jr_028_41f0

    ld h, b
    ldh [rNR24], a
    ldh [$80], a
    add b
    inc hl
    daa
    ldh a, [$f0]
    dec l
    ldh [rNR44], a

jr_028_425d:
    ccf
    jr nz, jr_028_42dc

    ld a, h
    cp d
    add $fe
    inc e
    cp d
    xor $aa
    inc hl
    daa
    dec hl
    jr z, @+$3a

    ld b, c
    jr c, jr_028_4292

    jr z, jr_028_42b0

    ld l, $32
    ld l, $23
    ret z

    ld a, [hl+]
    dec a
    db $10
    db $10
    dec l
    inc a
    inc a
    ld e, d
    nop
    ld h, [hl]
    cp l
    db $db
    rst $30
    cp l
    cp a
    call $047e
    ld a, d
    ld a, [de]
    ld d, $34
    inc l
    ld sp, $6878
    nop

jr_028_4292:
    ld a, [hl]
    ld c, [hl]
    ld a, d
    ld l, [hl]
    ld a, d
    ld c, [hl]
    ld a, [hl]
    ld a, [hl]
    ret nz

    ld a, a
    ld hl, $447c
    xor $92
    add $ba
    adc b
    ld hl, $546c
    jr c, @+$22

    jr z, jr_028_42e9

    ld l, $3c
    ld a, [hl]
    ld l, d
    ccf

jr_028_42b0:
    inc hl
    daa
    inc l
    nop
    nop
    nop
    jp $a500


    ld b, d
    db $db
    inc h
    ld b, d
    inc a
    ld b, b
    ld h, [hl]
    ld hl, $2418
    jr @+$3e

    nop
    inc d
    ld b, b
    ld [$1621], sp
    ld [$0c72], sp
    ld d, [hl]
    jr z, jr_028_425d

    inc hl
    ld e, $00
    inc h
    nop
    cp a
    ld [hl], b
    inc h
    nop
    nop
    nop

jr_028_42dc:
    rst $38
    ld b, b
    nop
    nop
    ld [$0030], sp
    ld l, a
    jr nc, @+$51

    dec [hl]
    nop
    ccf

jr_028_42e9:
    inc b
    ld l, $08
    inc a
    nop
    jr c, jr_028_4300

    add b
    ld bc, $1c10
    ld [$0c1f], sp
    rrca
    inc bc
    inc bc

jr_028_42fa:
    add b
    inc e
    stop
    ldh a, [rP1]

jr_028_4300:
    sbc $60
    sbc a
    ld l, h
    nop

jr_028_4305:
    rst $38
    dec c
    ld e, a
    inc d
    ld a, [hl]

jr_028_430a:
    jr c, jr_028_4388

    nop
    nop
    ld a, b
    nop
    and a
    jr c, jr_028_42fa

    ld a, d
    add a
    ld a, b
    ld bc, $768f
    ld [hl], a
    ld [bc], a
    ld e, a
    inc c
    ld a, [hl]
    ld hl, $0018
    jr c, jr_028_4323

jr_028_4323:
    ld h, a
    jr c, jr_028_4370

    jr nc, jr_028_437b

    jr nz, jr_028_434a

    ld h, $00

jr_028_432c:
    ccf
    ld [$4400], sp
    nop

jr_028_4331:
    sbc $00
    ld bc, $00ef
    rst $30
    nop
    ld [hl], e
    nop
    ld [hl-], a
    rrca
    ld [$1d80], sp
    db $10
    ld h, h
    jr c, @-$77

    jr c, jr_028_430a

    ld a, b
    adc c
    jr jr_028_43b9

    ld [hl], e

jr_028_434a:
    nop
    ld hl, $5f18
    ld e, b
    inc a
    nop
    ld b, d
    nop
    inc a
    sub c
    ld e, [hl]
    or e
    ld a, h
    add d
    ld a, h
    add h
    nop
    ld a, b
    ld e, c
    jr nz, jr_028_4392

    nop
    ld a, $00
    ld c, e
    nop
    jr nc, jr_028_432c

    ld a, b
    adc l
    jr nc, jr_028_4300

    ld h, b
    reti


    ld [$b320], sp

jr_028_4370:
    nop
    ld b, [hl]
    ld hl, $7808
    ld a, b
    cp b
    jr nz, jr_028_4331

    sbc a
    nop

jr_028_437b:
    ld [$fcfc], sp
    jr c, @+$3a

    jr nc, jr_028_4305

    nop
    jr z, jr_028_439d

    jr jr_028_43a3

    inc e

jr_028_4388:
    rrca
    and b
    jr nc, jr_028_438c

jr_028_438c:
    ld [$c000], sp
    ret nz

    ldh a, [$f0]

jr_028_4392:
    jr c, jr_028_43cc

    jr jr_028_43ae

    ld [bc], a
    ld a, $3e
    ld a, a
    ld h, e
    ld a, a
    ld e, c

jr_028_439d:
    ld bc, $7308
    nop
    ld a, $36

jr_028_43a3:
    db $fc

jr_028_43a4:
    db $fc
    call c, $1cd4
    inc e
    db $10
    ld [c], a
    nop
    cp $8b

jr_028_43ae:
    ld [$027d], sp
    ld e, l
    ld [bc], a
    nop
    ld a, c
    ld b, $e1
    ld e, $3f

jr_028_43b9:
    nop
    ld c, $00
    ld b, l
    rla
    ld bc, $7f08
    nop
    cp a
    ld bc, $ff08
    rlca
    ld [$1c00], sp
    nop
    ld [hl], d

jr_028_43cc:
    inc b
    jp c, $8f24

    ld d, b
    nop
    push hl
    ld a, [de]
    sbc l

jr_028_43d5:
    ld h, d
    ret


    ld [hl], $be
    ld b, b
    jr jr_028_43a4

    jr nc, jr_028_4456

    and c
    ld [$409f], sp
    ret nz

    ret nz

    db $fc
    nop
    db $fc
    ld l, [hl]
    ld [hl], d
    ld l, a
    ld [hl], e
    ld h, a
    ld a, a
    ld a, a
    nop
    ld a, a
    ld a, $3e
    inc a
    inc a
    rst $38
    rst $38
    rst $38
    nop
    add c
    add c
    rst $38
    cp a
    rst $38
    or a
    cp $af
    nop
    rst $38
    sbc b
    ld hl, sp-$48
    ld hl, sp+$0f
    rrca
    dec d
    nop
    dec de
    ld a, [hl+]
    ld [hl], $77
    ld c, a
    ld [hl], a
    ld c, h
    dec hl
    ld bc, $3537
    dec sp
    ccf
    cpl
    jr c, jr_028_4442

    ld bc, $0210
    inc e
    inc d
    rra
    inc de
    rrca
    inc c
    sbc a
    jr nz, @+$40

    nop
    nop
    ld e, l
    ld e, $43
    inc e
    ld b, e
    inc e
    ld h, e
    ld [$5f3c], sp
    jr nz, jr_028_4472

    ld c, l
    add hl, bc
    sbc b
    jr nz, jr_028_43d5

    nop
    ld h, b
    ei
    nop
    ld c, l
    nop
    dec h
    nop
    dec a

jr_028_4442:
    nop
    nop
    ccf
    db $10
    ld c, $00
    inc de
    inc b
    ld de, $0600
    ld [hl], c
    ld c, $81
    ld a, $81
    ld a, $c1
    jr nz, jr_028_4494

jr_028_4456:
    ld a, a
    dec l
    ld [$3e71], sp
    rst JumpTable
    ld h, b
    and e
    nop
    ld e, h
    and a
    ld e, b
    rst $38
    jr nz, jr_028_44e1

    jr nz, jr_028_44df

    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    adc a
    ld a, [$ef9e]
    nop
    xor a

jr_028_4472:
    rst $38
    rst $38
    sbc a
    rst $38
    cp h
    db $fc
    ld hl, sp+$00
    ld hl, sp+$78
    ld a, b
    cp h
    call nz, $9afe
    rst $38
    nop
    sbc l
    cp a
    adc $5f
    ld h, a
    inc [hl]
    dec sp
    rrca
    nop
    rrca
    ld a, b
    ld a, b
    ld a, h
    ld b, h
    ld [hl], $2a
    scf

jr_028_4494:
    nop
    add hl, hl
    ld h, e
    ld e, l
    ld h, e
    ld e, l
    ld h, [hl]
    ld e, d
    inc a

jr_028_449d:
    jr jr_028_44c3

    jr c, jr_028_44d9

    ld a, a
    ld [hl], b
    nop
    db $10
    ldh [rP1], a
    ldh a, [$03]
    ldh [$f8], a
    db $10
    inc a
    ld [$ef1c], sp
    ld [$1001], sp
    inc d
    inc a
    nop
    ld hl, sp+$11
    ld [$19e0], sp
    ld [$0018], sp
    nop
    inc h
    ld [$0824], sp

jr_028_44c3:
    daa
    ld [$1b27], sp
    nop
    daa
    jr @+$26

    jr @+$01

    nop
    add c
    nop
    nop
    ld a, [hl]
    nop
    inc h
    nop
    inc l
    nop
    rra
    inc b

jr_028_44d9:
    add b
    rst $38
    jr nz, jr_028_44e9

    nop
    ld [de], a

jr_028_44df:
    nop
    ld a, [hl-]

jr_028_44e1:
    nop
    ld c, e
    nop
    db $10
    ld c, e
    ld sp, $00f3

jr_028_44e9:
    add [hl]
    nop
    db $fc
    add b
    dec sp
    ld [$0c32], sp
    ld h, c
    ld c, $c7
    ld [$0a87], sp
    ld c, b
    sbc a
    ld b, b
    ld e, h
    rst JumpTable
    add hl, de
    nop
    ld h, c
    add hl, bc
    add e
    ld b, b
    ld e, h
    inc bc
    db $10
    add d
    ld e, h
    ld b, h
    jr jr_028_4576

    db $10
    ld d, b
    jr c, jr_028_454d

    ld e, c
    nop
    ld c, a
    ld [$3cc3], sp
    add c
    ld b, [hl]
    jr nz, jr_028_449d

    ld e, d
    ld bc, $a520
    ld e, d
    ld e, d
    inc h
    ld b, d
    jr jr_028_455e

    inc h
    jr jr_028_4584

    jr nc, @+$21

    ld [de], a
    ld b, [hl]
    nop
    push af
    nop
    ld a, [bc]
    adc c
    ld d, $89
    ld [hl], $8b
    ld [hl], h
    ld c, [hl]
    jr nc, jr_028_4566

    db $76
    add e
    ld a, [de]
    ccf
    ld b, b
    ld a, $00
    ld a, [bc]
    nop
    nop
    adc d
    nop
    sbc a
    nop
    ld sp, hl
    ld b, $91
    ld c, $10
    pop af
    ld c, $3f
    ccf

jr_028_454d:
    add hl, bc
    adc b
    db $10
    add h
    jr jr_028_4553

jr_028_4553:
    di
    inc c
    ld c, c
    ld [hl], $27
    jr jr_028_458f

    ld a, [bc]
    nop
    ccf
    db $10

jr_028_455e:
    inc a
    nop
    ld e, [hl]
    inc d
    cp c
    ld [hl-], a
    nop
    push af

jr_028_4566:
    ld h, [hl]
    jp hl


    ld c, $d1
    ld e, [hl]
    ld b, d
    inc a
    add b
    adc a
    db $10
    rst $38
    nop
    rst $38
    ld l, [hl]
    reti


    ld l, [hl]

jr_028_4576:
    db $dd
    ld [bc], a
    ld h, [hl]
    call $cd76
    db $76
    rst $38
    rrca
    ld [$02c7], sp
    nop
    rst $38

jr_028_4584:
    ld b, [hl]
    db $fd
    ld d, [hl]
    xor l
    ld bc, $b908
    nop
    ld b, [hl]
    rst $38
    db $10

jr_028_458f:
    jr jr_028_4591

jr_028_4591:
    inc [hl]
    jr jr_028_4606

    nop
    inc a
    pop af
    ld a, [hl]
    adc a
    ld [hl], b
    rst $08
    jr nc, @+$70

    ret nz

    dec a
    ld [$107f], sp
    inc h
    ld [$08e7], sp
    add a
    add hl, sp
    ld bc, $7a85
    ld a, l
    ld [bc], a
    ld hl, $210e
    inc hl
    ld a, [bc]
    add b
    sbc a
    ld l, d
    nop
    add a
    jr @-$7b

    inc a
    add e
    inc a
    ld [de], a
    rst $20
    jr jr_028_463e

    dec c
    ld [$102c], sp
    ld bc, $3f20
    add b
    cp a
    jr c, @+$21

    nop
    inc hl
    inc c
    ld h, a
    ld [$008d], sp
    ld [hl-], a
    sbc c
    ld [hl+], a
    or c
    ld b, [hl]
    ld [c], a
    inc e
    db $fc
    ret nz

    rst JumpTable
    ld l, d
    ld b, c
    db $10
    ld h, [hl]
    nop
    push hl
    ld [bc], a
    sbc l
    nop
    ld bc, $0699
    pop af
    ld c, $43
    inc l
    ld a, $1f
    ld l, b
    ld b, b
    jr jr_028_4671

    ld [$1068], sp
    swap b

jr_028_45f7:
    xor a
    ld d, b
    ld bc, $12ed
    dec hl
    inc d
    ld h, $18
    inc l

jr_028_4601:
    ccf
    ld a, c
    or b
    cp a
    add hl, hl

jr_028_4606:
    ld h, b
    cp a
    add hl, hl
    nop
    jr jr_028_4648

    inc a
    ld hl, sp-$08
    jr nc, jr_028_4601

    db $10
    ret nz

    add hl, de
    rra
    jr nz, jr_028_45f7

    ldh a, [rNR10]
    ld hl, sp+$18
    add sp, $3c
    inc [hl]
    dec e
    jr nz, jr_028_4640

    ld d, b
    ld a, $3e
    ld e, l
    nop
    ld h, e
    xor a
    db $dd
    cp l
    db $db
    xor a
    rst JumpTable
    ld e, a
    inc bc
    ld h, b
    ccf

jr_028_4631:
    ccf
    nop
    nop
    inc h
    nop
    ld l, b
    nop
    nop
    nop
    jr nc, jr_028_466c

    ld l, [hl]
    ld e, [hl]

jr_028_463e:
    push hl
    sbc e

jr_028_4640:
    nop
    cp a
    pop de
    ld e, d
    db $76
    inc a
    inc a
    ld l, d

jr_028_4648:
    ld e, [hl]
    jr nz, jr_028_4648

    add e
    ld h, c
    jp hl


    sub a
    sub c
    rst $28
    ld b, d
    ld [hl], b
    ld a, [hl]
    cpl
    dec a
    inc hl
    ld [hl], d
    ld a, [hl]
    ld c, a
    ld c, a
    ld b, $21
    ld hl, $e7e7
    and l
    ld [hl+], a
    ld b, h
    cp l
    ld b, $db
    ld e, d
    ld h, [hl]
    inc a
    inc h
    and c
    ld [hl+], a

jr_028_466c:
    jr jr_028_4631

    ld b, b
    dec h
    ld e, d

jr_028_4671:
    ld e, d
    ld b, d
    ld b, d
    ld e, l
    ld [hl+], a
    add d
    ld b, c
    cp l
    rst $38
    db $76
    ld l, [hl]
    inc a
    sub a
    inc [hl]
    ld b, b
    inc l
    ld a, a
    ld [$3c00], sp
    ld [$2c7e], sp
    nop
    di
    ld a, [hl]
    and c
    ld a, [hl]
    add c
    ld a, [hl]
    ld d, d
    inc l
    jr nz, @+$3e

    nop
    nop
    db $10
    jr jr_028_4698

jr_028_4698:
    ld h, [hl]
    jr jr_028_470d

    daa
    inc a
    or c
    ld e, l
    ld b, d
    inc a
    add hl, hl
    dec l
    nop
    stop
    ccf
    nop
    ld [hl], c
    ld a, $df
    ld h, b
    and d
    ld e, h
    ld b, $a6
    ld e, b
    db $fc
    jr nz, jr_028_4724

    ld hl, $111f
    ld a, [hl]
    nop
    nop
    rst $38
    nop
    sbc c
    ld a, [hl]
    sub a
    ld a, b
    db $db
    inc bc
    inc a
    ld [hl], d
    inc c
    inc a
    jr jr_028_46e0

    rra
    ld de, $4031
    inc a
    ld hl, $7a18
    inc e
    cp c
    ld c, [hl]
    or c
    inc e
    ld a, [hl]
    ld b, d
    inc a
    dec hl
    nop
    ld [de], a
    inc sp
    ld a, [hl]
    inc [hl]
    nop
    ld e, e

jr_028_46e0:
    ld a, $2b
    ld e, $df
    nop
    pop hl
    ld e, [hl]
    ld [bc], a
    and c
    ld e, [hl]
    pop bc
    ld a, $42
    inc a
    ld sp, $5d5a
    inc a
    dec h
    ld a, [hl]
    rst JumpTable
    nop
    db $10
    scf
    ld h, b

jr_028_46f9:
    ld b, e
    ld l, b
    ld b, $43
    ld h, b
    inc h
    nop
    rra
    ld a, $00
    ld h, e
    nop
    nop
    ld b, b
    nop
    jr nz, jr_028_470a

jr_028_470a:
    stop
    inc de

jr_028_470d:
    nop
    nop
    ld a, l
    inc bc
    cp [hl]
    ld [hl], a
    rst $38
    ld a, e
    db $dd
    nop
    ld l, e
    rst JumpTable
    ld h, l
    sbc $65
    ld l, [hl]
    dec [hl]
    ld a, [hl]
    nop
    dec a
    dec sp
    inc e
    inc e

jr_028_4724:
    nop
    ld c, $00
    dec c
    nop
    ld b, $fd
    ld [bc], a
    scf
    jr jr_028_46f9

    inc a
    ld l, d
    ld bc, $b4fc
    ld hl, sp-$2c
    ld hl, sp+$48
    ldh a, [rNR42]
    nop
    db $10
    ldh [rNR41], a
    ret nz

    ld b, b

jr_028_4740:
    add b
    add b
    nop
    ret z

    ld h, b
    cp a
    rst $30
    ret c

    ld a, a
    db $fc
    sub b
    cp $01
    db $10
    xor d
    ld d, h
    cp d
    ld b, h
    add $38
    dec h
    add d
    ld hl, $7cc6
    ld d, h
    jr z, jr_028_4794

    rra
    dec c
    or h
    nop
    ld hl, sp-$24
    ldh [$7c], a
    ret c

    jp $993c


    db $10
    ld a, [hl]
    and l
    ld e, d
    ld hl, $7ec3
    ld e, d
    inc h
    ld b, b
    inc a
    rra
    rrca
    call nc, Call_028_6ef8
    sub b
    cp l
    ld b, d
    jr z, jr_028_4740

    inc a
    dec a
    cp l
    ld hl, $7e66
    inc a
    ret nz

    ccf
    ld d, b
    nop
    nop
    add b
    ret nz

    ldh [rLCDC], a
    di
    ld h, b
    db $fd
    ld [hl], e
    cp e
    ld [hl], a
    ld d, e

jr_028_4794:
    cpl
    pop af
    ld c, a
    ld [$7f80], sp
    ret nc

    ld l, a
    db $fc
    ld h, a
    dec de
    cp e
    ld a, h
    inc bc
    ld e, e
    ld [hl], $2e
    inc e
    inc e
    nop
    sub b
    ld bc, $0003
    dec b
    dec sp
    rlca
    ld a, e
    ld [hl], $ce
    ld [hl], e
    adc e
    ld [hl], c
    or e
    ld b, c
    add $05
    ld d, b
    rra
    adc a
    ld b, $10
    rrca
    jr z, jr_028_47fd

    inc a
    jr z, jr_028_47d5

    ld c, $0e
    nop
    sub b
    nop
    sbc h
    nop
    ld l, [hl]
    jp $a1be


    ld e, $99
    ld b, $47
    add b
    or c

jr_028_47d5:
    ret nz

    db $ec
    ld [hl], b
    dec d
    ld b, b
    ld a, [hl]
    jp nz, $b13c

    ld sp, hl
    ld sp, hl
    or c
    jp nz, $3c3c

    nop
    nop
    nop
    ret nz

    nop
    inc c
    ld [de], a
    ld e, $17
    dec de
    dec c
    ld c, $6b
    ld l, h
    or a
    ret c

    sub a
    ld hl, sp+$6b
    ld l, h
    nop
    inc bc
    rlca
    db $ed
    xor [hl]

jr_028_47fd:
    rst $10
    cp e
    di
    sbc a
    ld a, h
    ld c, h
    ld e, a
    ld h, e
    cpl
    jr nc, jr_028_4820

    rra
    jp nz, Jump_028_6000

    sub b
    ldh a, [$d0]
    or b
    ldh [$ac], a
    ld l, h
    jp c, $d236

    ld a, $ac
    ld l, h
    nop

jr_028_481a:
    inc bc
    ret nz

    ld l, [hl]
    ld [$bad6], a

jr_028_4820:
    sbc [hl]
    ld a, [c]
    ld a, h
    ld h, h
    db $f4
    adc h
    add sp, $18
    jr nc, jr_028_481a

    ret nz

    nop
    inc e
    ld a, [hl-]
    ld h, $6e
    ld e, d
    ld a, a
    ld e, c
    ld a, [hl]
    ld c, c
    ld a, $33
    dec a
    ld h, $7b
    ld c, h
    ld [bc], a
    add b
    ldh a, [$f7]
    sbc b
    rst $20
    cp b
    db $e3
    cp h
    xor a
    xor a
    ld a, b
    ld d, a
    ccf
    jr c, jr_028_4852

    rlca
    ld [bc], a
    and b
    rrca
    nop
    nop
    inc bc

jr_028_4852:
    inc bc
    rlca
    inc b
    ld [$0909], sp
    rra
    dec e
    ccf
    ld [hl+], a
    ld a, [hl+]
    nop
    rst $38
    ld [hl], e
    ld c, l
    sbc h
    sub c
    sub e
    cp h
    rst $08
    ld e, a
    ld h, b
    jr nc, jr_028_48a9

    rrca
    rrca
    ret nz

    nop
    nop
    jp $e5c3


    daa
    ld a, e
    sbc l
    rst $30
    sbc c
    rst $28
    ld sp, $c1ff
    rst $38
    add hl, bc
    nop
    inc bc
    ldh [$15], a
    ei
    xor $f2
    sbc $e2
    ld a, [hl-]
    add $f4
    inc c
    ret z

    jr c, jr_028_489d

    ldh a, [$90]
    nop
    ld h, a
    nop
    sbc b
    ld hl, sp+$6f
    rst $38
    ld b, a
    ld a, a
    jr z, jr_028_48f6

    scf
    inc a
    rla

jr_028_489d:
    ld a, $13
    and b
    nop
    ld a, $11
    inc de
    ld e, h
    scf
    ld a, b
    cpl
    rst $38

jr_028_48a9:
    ld b, a
    rst $30
    ld l, b
    sbc a
    ld h, a
    ld h, a
    nop
    rst $38
    rst $38
    inc h
    rst $38
    rst $38
    inc h
    sub b
    nop
    ld [hl], b
    nop
    cp b
    adc h
    ld a, b
    sub d
    ld l, h
    ld c, e
    ld [hl], $45
    ld a, [hl-]
    ld [hl+], a
    dec e
    ld a, [de]
    dec b
    nop
    ld b, $0f
    ld a, $01
    ld e, [hl]
    add hl, sp
    cp [hl]
    ld h, l
    cp h
    ld h, e
    xor c
    ld [hl], a
    ld e, a
    jr c, jr_028_490e

    nop
    ret nz

    nop
    ld bc, $0b0a
    inc d
    rra
    dec l
    ld [hl], $5b
    ld h, h
    ld e, e
    ld h, h
    ld e, [hl]
    ld h, c
    ld c, h
    ld [hl], e
    ld [$5208], sp
    inc l
    inc sp
    inc h
    dec sp
    ld a, l
    ld a, c
    ld e, a
    ld [hl], a
    ld c, [hl]
    ld l, l

jr_028_48f6:
    ld e, [hl]
    ld [hl], e
    ld hl, $0021
    ccf
    nop
    ld h, e
    inc e
    ld b, a
    jr c, @+$61

    daa
    ld [$2d57], sp
    ld d, a
    cpl
    dec h
    ld b, a
    dec sp
    ld b, e
    db $10
    dec a

jr_028_490e:
    ld b, c
    ld a, $21
    ld e, a
    jr nz, jr_028_4973

    cpl
    jr nc, jr_028_4957

jr_028_4917:
    ccf
    dec sp
    jr nz, jr_028_4917

    nop
    ld [bc], a
    db $fc
    nop
    jp nz, $fa3c

    inc b
    ld a, [$f2b4]
    db $ec
    ld [bc], a
    ld a, [$faf4]
    db $e4
    ld [c], a
    call c, Call_028_422d
    ld l, $bc
    cp $37
    ld hl, sp+$37
    dec h
    jr nz, jr_028_493c

    nop
    nop
    dec b

jr_028_493c:
    inc bc
    rrca
    rlca
    rla
    rrca
    rra
    ld c, $0f
    cpl
    rra
    ccf
    ld b, c
    dec h
    ld hl, $1327
    rra
    db $10
    rrca
    ld hl, $030c
    dec sp
    ld h, b
    inc h
    rlca
    nop

jr_028_4957:
    ccf
    rra
    add hl, bc
    ld b, c
    rrca
    rra
    inc b
    dec c
    rra
    ld [$020f], sp
    inc hl
    inc a
    rra
    ld bc, $133c
    inc [hl]
    inc bc
    rrca
    ld b, $0e
    ld e, l
    nop
    ld [$f600], sp

jr_028_4973:
    nop
    ld hl, sp-$10
    cp $88
    ld b, c
    db $fc
    ld h, c
    ld a, b
    db $fc
    ld [$a0f8], sp

Jump_028_4980:
    inc hl
    nop
    ld c, $fc
    ld c, $f4
    adc $30
    inc a
    jr jr_028_49eb

    inc e
    ld e, a
    ld h, b
    rlca
    rlca
    rra
    jr jr_028_49d2

    nop
    jr nz, @+$3d

    ld [hl], a
    rst $38
    rst $28
    cp a
    and a
    or $00
    jp hl


    ld [hl], b
    ld l, a
    ld hl, $173f
    rra
    rrca
    db $10
    rrca
    ld bc, $de01
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp+$00
    adc b
    db $fc
    inc b
    sbc $ee
    cp $ff
    call $fd00
    dec b
    db $fd
    rlca
    rst $38
    ld b, $fe
    ld [$f804], sp
    or b
    ldh a, [$c0]
    ret nz

    ld a, e
    rlca
    rlca
    nop
    rrca
    ld [$111e], sp
    rra
    ld de, $1817

jr_028_49d2:
    nop
    jr jr_028_49f4

    ccf
    scf
    ccf
    inc l
    ld a, a
    ld [hl], b
    nop
    ld a, a
    ld c, h
    ld a, a
    ld d, h
    ld a, a
    ld e, c
    ld a, a
    ld h, b
    nop
    ld a, a
    ld a, a
    scf
    jr c, @+$21

    rra

jr_028_49eb:
    ldh a, [$f0]
    nop
    ld hl, sp+$08
    inc a
    call nz, $c4fc

jr_028_49f4:
    db $f4
    inc c
    nop
    inc c
    db $fc
    cp $f6
    cp $1a
    rst $38
    rlca
    nop
    rst $38
    add hl, de
    rst $38
    dec d
    rst $38
    ld c, l
    rst $38
    inc bc
    ld bc, $ffff
    or $0e
    db $fc
    db $fc
    nop
    ld b, b
    nop
    inc bc
    nop
    rlca
    inc bc
    rra
    nop
    dec a
    ld a, [de]
    nop
    dec a
    ld a, [bc]
    ld e, c
    ld h, $41
    ld a, $73
    dec c
    ld b, $7f
    jr nc, @+$41

    dec c
    rrca
    ld a, b
    ret nz

    add b
    nop
    nop
    ld b, b
    add b
    ret nz

    nop
    ld h, $c0
    ld a, [de]
    nop
    db $e4
    ld a, [bc]
    db $f4
    jp z, $da34

    or h
    ld a, [$241b]
    and $c0
    cpl
    and b
    inc h
    nop
    sbc a
    ld b, b
    nop
    ld b, b
    jr c, jr_028_4a4c

jr_028_4a4c:
    ld e, [hl]
    jr c, jr_028_4aae

    ld h, $04
    add a
    ld a, e
    add [hl]
    ld a, e
    add h
    pop bc
    ld e, c
    ld h, $30
    ld b, [hl]
    jr c, @+$37

    nop
    inc c
    add b
    nop
    ld h, [hl]
    add b
    nop
    rst JumpTable
    and $29
    or $09
    or $19
    and $e0
    add hl, hl
    dec l
    ldh [rTAC], a
    rlca
    dec de
    inc e
    cpl
    inc b
    jr nc, jr_028_4ad0

    ld h, a
    or b
    rst $08
    ld hl, $ef90
    nop
    ld b, b
    ld a, a
    inc a
    ccf
    dec bc
    rrca
    rrca
    ld [$6198], sp
    dec bc
    inc c
    dec sp
    ccf
    add b
    add b
    ld h, b
    nop
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $06
    ld c, b
    ld a, [$0c21]
    db $f4
    dec hl
    ldh [$e0], a
    ld b, b
    add hl, hl
    ret nz

    and b
    inc [hl]
    jr nz, jr_028_4acb

    ret nz

    ret nz

    ccf
    add b
    and b
    rrca

jr_028_4aae:
    nop
    ld e, $0f
    ld [hl], $19
    ld h, a
    nop
    add hl, de
    db $ec
    rra
    jr jr_028_4ac9

    rla
    ld c, $33
    nop
    dec e
    ld l, $1d
    ld hl, $1a1e
    rlca
    rlca
    ret nz

    cp $40

jr_028_4ac9:
    add b
    nop

jr_028_4acb:
    ret nz

    add b
    ld b, b
    add b
    nop

jr_028_4ad0:
    jr nz, @-$3e

    ld h, b
    ret nz

    sub b
    ldh [$38], a
    ldh a, [rSB]
    ld b, h
    ld hl, sp-$7e
    ld a, h
    ld a, h
    add b
    ldh [$db], a
    ld d, h
    ld bc, $0381
    ld hl, $2301
    rlca
    inc bc
    nop
    inc c
    rlca
    ld [$0f07], sp
    nop
    dec bc
    inc b
    xor d
    dec h
    rlca
    sbc l
    ret nz

    ld hl, $6180
    ldh [rNR10], a
    nop
    ldh [$c0], a
    inc hl
    ldh a, [$e0]
    ld hl, sp+$10
    dec c
    jr c, @-$3e

    ld hl, sp+$00
    ld hl, $f025
    ld e, l
    nop
    ld a, $00
    ld b, e
    inc a
    add c
    ld a, [hl]
    rst $20
    ld a, b
    ld [$72fd], sp
    ei
    ld [hl], h
    inc hl
    rst $38
    ld a, b
    cp a
    ld de, $5f7e
    inc a
    inc sp
    rra
    nop
    ccf
    ld hl, $1e50
    ld b, c
    nop
    ld h, b
    add b
    nop
    ret nz

    add b
    nop
    ldh a, [$c0]
    ld hl, sp-$10
    ld a, h
    ld hl, sp+$1c
    ld hl, sp+$00
    ld a, h
    adc b
    sbc h
    ld [$1038], sp
    or $00
    ld bc, $00f4
    inc a
    ret nz

    db $10
    ldh [$f0], a
    sbc a
    add b
    jr nz, jr_028_4b8f

    ccf
    ld e, a
    ld h, c
    xor a
    sbc $de
    nop
    cp a
    db $d3
    cp a
    db $dd
    cp a
    rst JumpTable
    cp a
    xor a
    inc b
    rst JumpTable
    ld e, a
    ld h, b
    ld b, b
    ld a, a
    ld hl, $3f30
    nop
    rrca
    rrca
    inc e
    inc e
    inc a
    inc h
    ld a, b
    ld c, b
    nop
    db $fc
    sbc h
    ld a, [$f526]
    ld a, e
    dec sp
    db $fd
    nop
    ei
    db $fd
    set 7, l
    ld a, e
    db $fd
    push af
    ei
    ld [$06fa], sp
    ld [bc], a
    cp $21
    inc c
    db $fc
    ldh a, [rNR41]
    ldh a, [rSB]

jr_028_4b8f:
    ld b, b
    rrca
    rrca
    add hl, de
    rra
    ld [hl], $00
    add hl, sp
    db $76
    ld e, c
    ld [hl], b
    ld e, a
    ld a, h
    ld c, a
    ld a, a
    db $10
    ld h, e
    ld a, a
    ld a, b
    inc h
    ld h, c
    ld a, a
    inc h
    ccf
    ld bc, $3f30
    inc e
    rra
    rlca
    rlca
    add b
    ld b, b
    nop
    ldh a, [$f0]
    sbc b
    ld hl, sp+$0c
    db $fc
    ld c, $fa
    add c
    ld hl, $f23e
    cp $c6
    cp $1e
    inc h
    nop

jr_028_4bc3:
    ld b, $fe

jr_028_4bc5:
    inc h
    db $fc
    adc h
    db $fc
    jr c, jr_028_4bc3

    nop
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    nop
    cpl
    jr nc, jr_028_4c28

    ld l, a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    ld hl, $ff9c
    ld c, h
    ld a, a
    inc h
    ccf
    dec de
    ld h, b
    dec de
    scf
    ldh [$80], a
    add b
    ld b, b
    ret nz

    ldh [rSB], a
    jr nz, jr_028_4c42

    or b
    jr nc, jr_028_4bc5

    ld [$21f8], sp
    nop
    ld c, $fe
    rla
    ld sp, hl
    dec l
    di
    reti


    rst $20
    inc bc
    ld d, d
    ld l, [hl]
    ld b, h
    ld a, h
    jr c, jr_028_4c40

    dec a
    ld b, b
    inc h
    nop
    ccf
    inc e
    nop
    ld [hl+], a
    inc e
    ld e, e
    ld a, $86
    ld hl, $3e43
    ld l, $1c
    dec hl
    nop
    ld [de], a
    ld [$0010], sp
    inc d
    ld [$2a21], sp
    inc e
    ld e, l
    ld a, $1e
    ld b, c

jr_028_4c28:
    ld a, $7f
    rra
    inc de
    inc sp
    scf
    dec sp
    ld d, c
    ret nz

    ld b, c

jr_028_4c32:
    rra
    ld d, $77
    nop
    ld c, l
    ld [hl], $2a
    inc e
    inc bc
    inc d
    ld [$1c32], sp
    ld l, c

jr_028_4c40:
    ld [hl], $2b

jr_028_4c42:
    nop
    jr jr_028_4c45

jr_028_4c45:
    ld a, b
    nop
    db $e4
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, e
    nop
    ld h, h
    dec de
    ld b, h
    dec sp
    ld b, d
    dec a
    ld b, e
    inc a
    inc b
    ld b, d
    inc a
    ld b, h
    jr c, jr_028_4c94

    db $db
    inc a
    nop
    add b
    dec l
    and d
    ld a, h
    call nz, $8478
    ld a, b
    and d
    inc b
    ld e, h
    pop bc
    ld a, $81
    ld a, [hl]
    inc hl
    ld sp, $600e
    ld c, $db
    and b
    jr c, jr_028_4c77

jr_028_4c77:
    ld a, $10
    rst $28
    nop
    ld d, $b1
    ld c, a
    cp h
    ld d, e
    ld c, a
    inc a
    ld h, e
    nop
    rra
    rst $38
    ld b, b
    cp a
    ld c, a
    ld h, b
    rra
    jr nc, @+$0a

    rrca
    jr jr_028_4c97

    rlca
    ld e, e
    inc e
    nop

jr_028_4c94:
    ld l, $00
    inc e

jr_028_4c97:
    ld sp, $190e
    ld b, $ff
    nop
    jp c, $e400

    ld l, d
    sub h
    sbc d
    ld l, h
    ld [hl], d
    sbc h
    db $e4
    nop
    ld a, b
    add h
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    jr nc, jr_028_4c32

jr_028_4cb2:
    add b
    ld e, a
    ld h, b
    jr jr_028_4cb7

jr_028_4cb7:
    dec h
    jr jr_028_4cc2

    ld [hl], $19
    dec [hl]
    dec de
    and c
    inc [hl]
    dec de
    dec h

jr_028_4cc2:
    inc bc
    dec de
    dec a
    inc bc
    inc h
    dec de
    rra
    db $dd
    ld h, b
    nop
    ldh a, [rP1]
    ld c, $f0
    jp c, Jump_028_7afc

    db $fc
    nop
    ld c, d
    db $fc
    cp d
    db $fc
    ld a, [bc]
    db $fc
    ld a, [$04fc]
    ld [bc], a

jr_028_4cdf:
    db $fc
    ld a, [c]
    inc c
    ld c, $1d
    add hl, bc
    inc bc
    nop
    nop
    rrca
    inc bc
    rla
    inc c
    ld e, $0b
    dec c
    ld b, $00
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec d
    dec l
    ld [de], a
    dec [hl]
    ld a, [bc]
    dec b
    inc de
    inc l
    dec e
    ld [bc], a
    rrca
    scf
    inc b
    cp a
    nop
    ret nz

    nop
    or b
    ret nz

    ret z

    jr nc, jr_028_4cb2

    ld d, b
    nop
    sub b
    ld h, b
    ld l, h
    add b
    call nc, $9428
    ld l, b
    ld bc, $609c
    ld l, b
    sub h
    ld e, b
    and b
    ldh a, [$37]
    ld b, b
    jr nz, jr_028_4cdf

    inc bc
    nop
    rrca
    inc bc
    rla
    inc c
    ld [bc], a
    ld e, $0b
    dec l
    ld d, $3a
    dec d
    ld hl, $0029
    ld d, $34
    dec bc
    inc de
    inc l
    inc e
    inc bc
    rrca
    and b
    scf
    inc b
    cp a
    ret nz

    nop
    or b
    ret nz

    ret z

    ld bc, $2830
    ret nc

    sub h
    ld l, b
    ld d, h
    xor b
    ld hl, $2580
    inc l
    ret nc

    ret z

    inc [hl]
    jr c, @-$3e

    ldh a, [$b0]
    scf
    jr nz, @+$3d

    ld [bc], a
    nop
    nop
    ld bc, $0300
    ld bc, $0621
    nop
    inc bc
    ld a, [hl]
    inc bc
    ld a, b
    ccf
    ld a, d
    rla
    ld a, h
    nop
    rrca
    inc a
    rlca

jr_028_4d6d:
    dec e
    ld c, $13
    inc c
    daa
    inc bc
    jr jr_028_4da3

    db $10
    jr c, jr_028_4d78

jr_028_4d78:
    jr nc, jr_028_4db8

    ld b, b

jr_028_4d7b:
    ld b, b
    add b
    ld b, c
    ld b, b
    add b
    ld a, h
    add b
    sub h
    add sp, $00
    adc h
    ld [hl], b
    inc e
    ldh [$78], a
    ret nz

    jr nc, jr_028_4d6d

    inc b
    sub b
    ld h, b
    ret z

    jr nc, jr_028_4d7b

    ld e, a
    jr jr_028_4d96

jr_028_4d96:
    nop
    ldh a, [rP1]
    rst $30
    ld h, b
    sbc a
    ld h, [hl]
    sbc l
    ld a, [hl]
    nop
    jp nz, $7e3c

jr_028_4da3:
    nop
    inc a
    nop
    db $e4
    jr jr_028_4da9

jr_028_4da9:
    db $e4
    ld a, b
    add [hl]
    ld a, b
    or $0c
    ld e, $00
    ld [bc], a
    or $08
    ld [c], a
    ld a, h
    cp $00

jr_028_4db8:
    ldh [$03], a
    nop
    nop
    dec b
    inc bc
    ld a, [bc]
    rlca
    rra
    rrca
    ccf
    ld [$3f00], sp
    rra

jr_028_4dc7:
    jr nc, @-$7d

    ld a, a
    rra
    ld h, b
    jr nz, jr_028_4e0d

    ld a, a
    rra
    add hl, bc
    db $fc
    nop
    inc b
    ld hl, sp+$0c
    nop
    ldh a, [rNR32]
    ldh [$fe], a
    nop
    cp $c0
    inc a
    add b
    ld b, c
    jr c, jr_028_4da3

    cp b
    ret nz

    jr nc, jr_028_4dc7

    ldh a, [$c0]
    rra
    add hl, bc
    nop
    inc c
    ld bc, $0301
    ld [bc], a
    inc sp
    ld [hl-], a
    nop
    ld a, $2d
    cpl
    inc sp
    ld de, $1c1f
    rra
    add c
    jr nz, jr_028_4e0e

    rra
    rlca
    rrca
    inc bc
    rlca
    rra
    ld a, [bc]
    add c
    nop
    ld c, $1f
    inc sp
    dec l
    inc sp

jr_028_4e0d:
    inc sp

jr_028_4e0e:
    ccf
    jr nz, jr_028_4e11

jr_028_4e11:
    rra
    ccf
    dec de

jr_028_4e14:
    rra
    inc c
    rra
    inc bc
    rlca
    sub h
    rra
    db $10
    ld hl, sp-$04
    jr nz, jr_028_4e14

    ld b, c
    add sp, -$04
    inc bc
    ret z

    ld hl, sp+$30
    ld hl, sp-$40
    ldh [$1f], a
    db $10
    ldh [rSC], a
    inc a
    inc a
    ld b, d
    ld a, [hl]
    or c
    rst $08
    ld hl, $7881
    rst $38
    ld hl, $2d29
    dec de
    inc c
    inc bc
    inc bc
    inc c
    ld bc, $100f
    rra
    rla
    jr jr_028_4e6e

    jr c, jr_028_4e6a

    ccf
    jr nz, jr_028_4e8b

    ld h, c
    dec l
    ld hl, $3733
    cp a
    ld [bc], a
    ldh [$e0], a
    jr @-$06

    inc b
    db $fc
    ld hl, $7e02
    cp $e1
    ld l, l
    inc sp
    scf
    cp a
    nop
    ld de, $0208
    nop
    ld e, l
    nop
    ld a, a

jr_028_4e6a:
    nop
    ld [hl], $6a
    rlca

jr_028_4e6e:
    nop
    rlca
    jr @+$21

    jr nz, jr_028_4eb3

    ld b, b
    ld a, a
    ld e, h
    inc de
    ld h, e
    sbc h
    db $e3
    ld hl, $ff80
    and c
    cpl
    ldh a, [rNR42]
    dec [hl]
    add hl, sp
    dec a
    ldh [$e0], a
    jr @-$06

    add hl, bc
    inc b

jr_028_4e8b:
    db $fc
    ld [bc], a
    cp $21
    ld bc, $01ff
    ld a, [bc]
    db $f4
    ld l, a
    dec [hl]
    add hl, sp
    dec a
    nop
    nop
    db $10
    ld bc, $0000
    dec bc
    nop
    ld b, a
    nop
    inc [hl]
    nop

jr_028_4ea4:
    inc hl
    nop
    jr jr_028_4eb7

    nop
    inc b
    ld l, $3d
    nop
    rst $38
    ld bc, $0e0e
    rrca
    ld d, b

jr_028_4eb3:
    nop
    ld de, $41c7

jr_028_4eb7:
    ld d, $01
    rst $38
    add e
    ld b, l
    rst $28
    inc l
    ld [hl+], a
    rst $20
    ld c, $ff
    db $e3
    rst $38
    pop hl
    ld b, e
    daa
    ld c, [hl]
    rst $38
    dec b
    nop
    rst $38
    ld [hl], e
    rst $38
    ld c, d
    ld b, c
    ld [hl], d
    push bc
    ld d, l
    ld [bc], a
    ld bc, $030b
    ld e, l
    ld b, d
    ld bc, $c30b
    ld c, a
    adc e
    ld hl, $ff33
    ld c, d
    ld b, c
    ld a, d
    add l
    ld hl, $2f80

jr_028_4ee8:
    rrca
    rst $38
    ld de, $23ff
    db $fd
    ld c, a
    ld [bc], a
    pop af
    ld a, [hl]
    jp $e77c


jr_028_4ef5:
    ld a, b
    ld c, a
    ld h, d
    inc bc
    rst $38
    ld [hl], d
    rst $38
    ld l, d
    rst $38
    ld h, [hl]
    ld b, a
    dec hl
    add d
    ld hl, $ff6c
    sub d
    rst $38
    add d
    ld b, c
    ld b, h
    ld [$28ff], sp
    rst $38
    db $10
    adc a
    ld a, [c]
    sbc a
    ld a, [c]
    jr jr_028_4ea4

    jp nz, $0fbf

    ld c, $21
    ld [hl], h
    rst $08
    jr c, jr_028_4f5e

    rst $28
    rst $28
    ld [c], a
    sbc a
    cp $83
    ld a, h
    rst $00
    sbc h
    rst $28
    cp $93
    dec l
    rrca
    ld a, [bc]
    ld hl, $ff3c
    ld [hl], c
    ld h, [hl]
    pop bc
    add hl, hl
    ld l, a
    jr @+$01

    jr c, @+$45

    pop de
    and c
    rst $38
    ld b, $45
    ld h, b
    rst $38
    ld a, [hl]
    rrca
    add hl, bc
    ld a, l
    inc c
    ld d, c
    dec h
    add hl, hl
    ld l, a
    dec hl
    inc e
    ld c, c
    ld [hl], c
    ld l, h
    ld e, l
    add hl, hl
    ld l, a
    ld a, h
    rst $38
    ld h, b
    ld b, e
    db $fd
    ccf
    ld hl, $6f25
    dec sp
    ld l, a
    ld h, [hl]
    ld b, c

jr_028_4f5e:
    pop de
    add hl, hl
    ld l, a
    ld a, [hl]
    ld e, c
    inc c
    rst $38
    jr jr_028_4ee8

    pop af
    cp a
    ld a, c
    rra
    ld a, [bc]
    xor e
    ld a, $ff
    ld b, $cf
    ld e, h
    jr nc, jr_028_4ef5

    inc sp
    ld b, e
    xor a
    ld hl, $ff44
    rra
    jr z, @+$01

    db $10
    ld b, e
    daa
    dec hl
    daa
    ld hl, $6c70
    add l
    cp e
    ld h, c
    ld d, h
    rst $38
    jr c, @+$01

    ld [hl], c
    ld a, h

jr_028_4f8e:
    ld b, e
    daa
    xor a
    xor b
    rst $38
    jr nz, @-$3b

    rst $00
    dec hl
    dec h
    ld d, b
    rst $38
    adc b
    ld b, c
    dec h
    add hl, hl
    ret nz

    ld a, e
    ld d, h
    nop
    nop
    rra
    rst $38
    nop
    ld [de], a
    rst $00
    ld b, c
    ld bc, $58ff
    add e
    ld b, l
    rst $28
    inc l
    ld [hl+], a
    rst $20
    rst $38
    db $e3
    add hl, sp
    rst $38
    pop hl
    ld b, e
    daa
    ld c, [hl]
    rst $38
    inc h
    nop
    rrca
    ld b, c
    ld [bc], a
    nop
    dec bc
    inc bc
    inc bc

jr_028_4fc4:
    nop
    nop
    ld b, d
    nop
    dec bc
    jr nc, jr_028_4f8e

    jp $e02f


    inc c
    inc c
    inc d

jr_028_4fd1:
    inc e
    inc bc
    daa
    ccf
    ld b, c
    ld a, a
    add c
    rst $38
    inc hl
    daa
    ldh [$2b], a
    cpl
    ld sp, hl
    ld h, d
    ld h, d
    ld [hl], d
    ld [hl], d
    ld l, d
    dec de
    ld l, d
    ld h, [hl]
    ld h, [hl]
    daa
    ld l, l
    inc h
    nop
    rrca
    ld sp, $c01c
    nop
    ld b, b
    ld bc, $3917
    add b
    stop
    rlca
    jr c, jr_028_4ffb

jr_028_4ffb:
    ld a, h
    nop
    cp $45
    ld hl, $1300
    inc e
    inc a
    inc a
    ld h, [hl]
    ret nz

    add hl, hl
    ld l, a
    jr jr_028_5023

    add hl, sp
    jr c, jr_028_5046

    inc hl
    and b
    rst $38
    ld b, $06
    dec h
    add hl, bc
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    rst $28
    inc c
    inc c
    ld sp, $25f2
    add hl, hl
    ld l, a
    dec hl
    inc e

jr_028_5023:
    inc e
    add hl, hl
    ld l, h
    ld [hl], b
    ld l, h
    dec a
    add hl, hl
    ld l, a
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    cp $23
    ccf
    jr nz, jr_028_5059

    ld l, a
    dec sp
    ld l, a
    ld h, [hl]
    db $e4
    ld b, b
    add hl, hl
    ld l, a
    ld a, [hl]
    ld a, [hl]
    add hl, sp
    inc c
    inc c
    ld a, h
    jr jr_028_4fc4

    cp a
    ld a, c

jr_028_5046:
    rra
    ld a, [bc]
    xor e
    ld a, $3e
    add hl, hl
    ld b, $06
    xor a
    jr nc, jr_028_4fd1

    inc sp
    inc sp
    inc hl
    ret nz

    xor a
    jr nz, jr_028_509c

    ld b, h

jr_028_5059:
    jr z, jr_028_5083

    db $10
    db $10
    ld sp, hl
    inc hl
    daa
    dec hl
    daa
    jr nz, jr_028_50d0

    ld l, h
    ld h, l
    ret nz

    cp e
    ld h, b
    ld d, h
    ld d, h
    jr c, @+$3a

    ld a, h
    ld a, h
    pop hl
    inc hl
    daa
    xor a
    xor b
    xor b
    jr nz, jr_028_5097

    and e
    rst $00
    dec hl
    dec h
    ld d, b
    ld d, b
    adc b
    ld b, b
    dec h
    add hl, hl
    ret nz

    ld a, e

jr_028_5083:
    ld d, b
    inc h
    nop
    add sp, -$01
    nop
    ld [$0000], sp
    ld a, [hl]
    ld a, a
    inc bc
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    nop
    ld a, a
    dec bc
    ld h, b

jr_028_5097:
    nop
    jr nc, jr_028_50cb

    nop
    nop

jr_028_509c:
    ld [bc], a
    ld [$2003], sp
    rst $38
    push de
    pop bc
    ld bc, $ef60
    ld hl, $3530
    jr nc, jr_028_50b4

    ld [$097e], sp
    db $10
    ld bc, $0f20
    stop

jr_028_50b4:
    jr nz, jr_028_50d6

    inc a
    inc a
    add hl, bc
    jr nc, jr_028_50bd

    ld [bc], a
    inc b

jr_028_50bd:
    inc b
    ld [$0801], sp
    db $10
    db $10
    jr nz, @+$22

    ld b, b
    ld b, b
    rrca
    stop
    ld h, d

jr_028_50cb:
    ld h, d
    ld [hl], d
    ld [hl], d
    ld a, d
    ld a, d

jr_028_50d0:
    ld l, [hl]
    ld l, [hl]
    ld [$6666], sp
    ld h, d

jr_028_50d6:
    ld h, d
    ld hl, $7020
    ld [hl], b
    ret c

    sbc b
    nop
    jr jr_028_5152

    ld [hl], d
    inc sp
    jr nc, jr_028_50e4

jr_028_50e4:
    jr nc, jr_028_5162

    nop
    cp $1b
    ld a, h
    cp $60
    ld bc, $0508
    jr z, jr_028_516d

    jr nz, jr_028_5163

    ld hl, $1110

jr_028_50f6:
    jr c, jr_028_50f6

    ld h, h
    dec e
    jr jr_028_5160

    cp $38
    rra
    jr nz, jr_028_5101

jr_028_5101:
    inc bc
    inc bc
    rrca
    rrca
    inc e
    inc e
    jr c, @+$3d

    nop
    ld [hl], b
    ld [hl], a
    ld h, b
    ld l, a
    ldh [$ef], a
    ret nz

    rst JumpTable
    add h
    ld bc, $e030
    rst $28
    ld h, b
    ld l, a
    rra
    db $10
    ldh [$e0], a
    nop
    ldh a, [$f0]
    jr c, jr_028_515a

    inc e
    call c, $ee0e
    nop
    ld b, $f6
    inc bc
    ei
    inc bc
    ei
    ld bc, $30fd
    nop
    cp $ee
    ld [$1801], sp
    ld [hl], b
    ld [hl], a
    jr c, jr_028_5175

    nop
    inc e
    dec e

jr_028_513d:
    ld c, $0e
    rlca
    rlca
    inc bc
    inc bc
    jr c, @+$03

    ld bc, $786e
    ld d, $11
    ld bc, $7f20
    add b
    cp a
    ldh [rHDMA1], a
    db $10

jr_028_5152:
    cpl
    sub b
    ld a, a
    jr nz, jr_028_5192

jr_028_5157:
    dec sp
    ld [hl], a
    ld [hl], a

jr_028_515a:
    ld l, h
    ld [bc], a
    ld l, h
    add sp, -$18
    ret c

jr_028_5160:
    ret c

    ret nc

jr_028_5162:
    nop

jr_028_5163:
    jr jr_028_513d

    inc b
    ret c

    add sp, -$18
    ld l, h
    ld l, h
    ld a, a
    ld b, b

jr_028_516d:
    call c, $00dc
    xor $ee
    ld [hl], $36
    dec de

jr_028_5175:
    dec de
    dec bc
    dec bc
    ld [$0d0d], sp
    ld b, $06
    dec a
    jr nc, jr_028_51f6

    db $76
    dec sp
    jr nz, jr_028_51bf

    dec e
    ld c, a
    ld l, b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld bc, $b060
    or b
    ret c

    ret c

jr_028_5192:
    db $ec
    db $ec
    ld a, [hl]
    jr nc, jr_028_5157

    ld bc, $00b0
    nop
    nop
    rra
    rra
    ccf
    jr nz, @+$72

    ld c, a
    nop
    ld l, a
    ld e, a
    ld l, b
    ld e, b
    ld l, [hl]
    ld e, [hl]
    ld l, a
    ld d, c
    nop
    ld hl, $1c3e
    rra
    inc b
    rlca
    inc a
    ccf
    inc bc
    ld a, h
    ld b, e
    ld h, c
    ld e, a
    ld a, $3e
    dec a
    jr nz, @-$7e

    dec h

jr_028_51bf:
    rst $38
    pop bc
    ldh [$9f], a
    call c, $d4bf
    ld h, e
    or a
    and c
    add hl, hl
    call c, $c0a3
    inc hl
    ld c, a
    jr nz, @+$65

    ld h, e
    ld a, a
    ld [hl], e
    ld [hl], e
    or $95
    sub $40
    or l
    ld bc, $de0a
    cp l
    call c, $c9ab
    rst $30
    ld [bc], a
    pop bc
    rst $38
    and d
    cp [hl]
    inc e
    inc e
    ld a, a
    ld a, h
    nop
    ld a, h
    cp $82
    jp nz, $dcbe

    cp h
    ret nc

    ld c, c
    or b

jr_028_51f6:
    inc hl
    sbc $a2
    add hl, bc
    inc c
    db $fc
    db $fc
    dec a
    inc sp
    rst $20
    db $e3
    nop
    ld de, $0d12
    rst $20
    nop
    nop
    ld de, $0d12
    call c, $001f
    rra
    ld b, c
    and $00
    ld de, $0d12
    ld e, a
    ld bc, $2000
    rlca
    nop
    ld de, $0d12
    rra
    nop
    rra
    ld b, c
    nop
    rra
    nop
    rst $20
    ld [bc], a
    jr nz, jr_028_524b

    inc h
    ld h, $28
    ld a, [hl+]
    nop
    inc l
    ld l, $30
    ld [hl-], a
    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    ld b, $3c
    ld a, $02
    rst $20
    nop
    nop
    dec bc
    ccf
    ld hl, $2300
    dec h
    daa
    add hl, hl
    dec hl
    dec l
    cpl
    ld sp, $3301

jr_028_524b:
    dec [hl]
    scf
    add hl, sp
    dec sp
    dec a
    ccf
    rra
    rrca
    ld [hl], b
    and $00
    ld de, $0d12
    dec de
    ld bc, $0901
    nop
    rrca
    ld sp, $0007
    dec bc
    rra
    ld [hl+], a
    ret nz

    nop
    ld e, $27
    dec b
    nop
    jr nz, jr_028_5273

    ld [$4364], sp
    nop
    inc de
    cp b

jr_028_5273:
    db $76
    ld b, $84
    rra
    ld d, $5b
    add b

jr_028_527a:
    ld b, b
    ldh [rDIV], a
    add hl, bc
    nop
    ld d, $a0
    inc b
    add hl, bc
    nop
    ld [de], a
    dec hl
    dec b
    nop
    jr nz, @+$09

    ld b, e
    ld [$0043], sp
    inc d
    ld a, b
    ld b, $df
    ld h, a
    nop
    inc d
    ld d, a
    add b
    ld b, b
    ret nz

    ld b, e
    and b
    ld l, b
    nop
    dec de
    rra
    jr jr_028_52b7

    nop
    dec b
    nop
    ld h, b
    ld [$0085], sp
    inc d
    ld b, $e0
    dec b
    dec bc
    nop
    inc de
    inc de
    add b
    add b
    nop
    ld b, b
    add b
    and b
    daa

jr_028_52b7:
    nop
    jr jr_028_527a

    rra
    ld e, $3b
    rst $20
    nop
    nop
    ld a, b
    ld [de], a
    ld e, b
    rra
    nop
    pop hl
    and $00
    ld a, b
    ld [de], a
    ld e, b
    ret nz

    ld e, a
    nop
    ld h, b
    ccf
    ld bc, $0007
    ld a, b
    ld [de], a
    ld e, b
    rra
    nop
    pop hl
    nop
    ldh a, [$5f]
    nop
    ld e, a
    dec a
    rst $20
    db $e3
    nop
    ld a, [bc]
    rl d
    inc c
    inc l
    nop
    nop
    ld a, [bc]
    ldh [$cb], a
    ld [de], a
    inc c
    adc h
    ld [hl], h
    ld [hl], h
    nop
    ld [hl], b
    ld [hl], b
    add d
    rra
    dec de
    ld [hl], l
    ld [hl], l
    nop
    ld [hl], c
    ld [hl], c
    ld l, e
    ld [c], a
    db $e3
    add b
    add $cc
    nop
    ld h, b
    ld h, b
    ld e, d
    jr nz, jr_028_5328

    ld h, [hl]
    ld l, b
    ccf
    nop
    ld hl, sp-$06
    ld a, [$e4f8]
    ld b, [hl]
    nop
    dec bc
    inc l
    ld h, c
    ld h, c
    adc b
    ld h, a
    ld l, c
    add [hl]
    ld c, e
    ld sp, hl
    ei
    ei
    ld sp, hl
    rra
    db $10
    dec bc
    inc c
    db $fc
    ld [de], a
    db $fd
    db $fd

jr_028_5328:
    db $fc
    rra
    db $10
    ld h, d
    ld h, h
    adc b
    ld l, d
    ld e, c
    ld l, d
    ld a, b
    db $fc
    ld a, $1f
    db $10
    ld h, e
    ld h, l
    adc b
    inc hl
    ld l, e
    ld l, e
    ld a, b
    db $10
    jp hl


    inc d
    rra
    db $10
    jr nz, jr_028_5349

    ld l, h
    ld l, [hl]
    nop
    db $76
    db $76

jr_028_5349:
    ld l, e
    ld [c], a
    add b
    ldh [$c6], a
    call z, Call_028_6d57
    ld l, a
    nop
    ld [hl], a
    ld [hl], a
    add e
    ld a, a
    nop
    ld h, b
    ld h, d
    ld h, h
    ld h, [hl]
    ld b, [hl]
    nop
    dec bc
    jp nz, $0c0c

    dec hl
    ld h, c
    ld h, e
    ld h, l
    ld h, a
    rra
    rrca
    and $e8
    nop
    ld a, [bc]
    rl d
    inc c
    and $5e
    ld bc, $f000
    rlca
    nop
    ld b, b
    dec bc
    jr z, @+$14

    ld d, b
    inc c
    jr jr_028_5389

    inc c
    ld a, [hl+]
    rlca
    dec bc
    dec hl
    rra
    nop

jr_028_5386:
    inc h
    ld e, a
    sbc b

jr_028_5389:
    dec c
    dec l
    sub e
    jr z, jr_028_53a6

    rrca
    rrca
    dec hl
    jr jr_028_53ba

    daa
    ccf
    ld [hl], b
    rra
    ldh a, [$c9]
    dec bc
    ld h, b
    rra
    add b
    inc c
    inc c
    ld [$0e18], sp
    ld l, $1f
    jr nz, jr_028_5386

jr_028_53a6:
    sbc a
    ld a, b
    rra
    ld h, b
    cp a
    sub b
    ld c, $0e
    rlca
    rrca
    cpl
    db $fc
    cp a
    cp b
    rra
    ld c, b
    ccf
    xor b
    ccf
    reti


jr_028_53ba:
    nop
    add sp, $40
    rst $38
    nop
    dec d
    db $fd
    cp $fe
    pop af
    rst $38
    add sp, $08
    di
    call c, $c3fd
    inc d
    dec bc
    rst $08
    rst JumpTable
    xor [hl]
    nop
    cp $a9
    ei
    and a
    sbc $a7
    ld l, h
    sbc e
    nop
    and a
    ld e, b
    rst $38
    inc bc
    rst $10
    dec l
    ld a, e
    or $20
    rst $38
    ld hl, sp-$67
    cp $fe
    ld sp, hl
    ei
    rst $20
    nop
    xor $9f
    cp b
    ld a, a
    db $e3
    db $fc
    adc a
    di
    inc c
    ccf
    rst $08
    rst $38
    ccf
    sub l
    and b
    ldh [$ef], a
    rlca
    sbc [hl]
    cp a
    ld a, h
    db $e3
    db $fd
    rla
    ld de, $34c0
    rst $20
    db $e4
    nop
    ld a, b
    ld [de], a
    ld e, b
    nop
    nop
    nop
    xor $10
    jp hl


    ld h, a
    db $10
    db $10
    ld h, b
    rra
    pop af
    push hl
    ld [bc], a
    nop
    ld a, b
    ld [de], a
    ld e, b
    rra
    nop
    add b
    ret nz

    cp a
    ldh a, [rHDMA5]
    ld bc, $1f00
    rlca
    nop
    rst $38
    ld bc, $2000
    nop
    nop
    ld de, $216e
    inc c
    inc c
    rra
    add c
    ld b, c
    nop
    ld de, $0d12
    ld c, a
    nop
    nop
    add sp, -$19
    db $e4
    nop
    ld a, b
    ld [de], a
    ld e, b
    ccf
    ldh a, [rP1]
    nop
    and b
    ld [bc], a
    rst $20
    db $e4
    ld [$e8eb], a
    add sp, -$32
    jr c, @+$12

    jr nz, @-$15

    db $10
    rst JumpTable
    ld h, b
    push hl
    ld [bc], a
    jr nz, @+$24

    inc h
    nop
    ld h, $28
    ld a, [hl+]
    inc l
    ld l, $30
    ld [hl-], a
    inc [hl]
    nop
    ld [hl], $38
    ld a, [hl-]
    inc a
    ld a, $02
    push hl
    ld [bc], a
    add b
    nop
    ld c, b
    push hl
    ld [bc], a
    ld hl, $2523
    daa
    add hl, hl
    nop
    dec hl
    dec l
    cpl
    ld sp, $3533
    scf
    add hl, sp
    ld e, $3b
    dec a
    ccf
    rra
    ld [hl], b
    nop
    ld a, b
    rra
    nop
    ld l, l
    cp a
    ld bc, $0624
    rra
    nop
    nop
    rlca
    ld [bc], a
    ld c, b
    ld c, $08
    nop
    ld h, b
    rra
    ret nc

    ld e, [hl]
    rlca
    nop
    add sp, $01
    nop
    add sp, $3f
    ldh a, [rP1]
    nop
    and b
    pop bc
    db $10
    ld b, $64
    ld b, $ce
    ld d, b
    ldh [rBCPS], a
    nop
    ld [$6800], sp
    nop

jr_028_54ba:
    ld hl, $007b
    nop
    ld c, b
    rra
    nop
    ld [hl+], a
    nop
    ld a, b
    rra
    nop
    ld l, [hl]
    ld b, c
    nop
    ld a, b
    cp a
    ld a, c
    ld d, [hl]
    ld b, a
    ld [bc], a
    ld h, b
    ld h, a
    ld [hl-], a
    jp hl


    daa
    inc c
    ld d, b
    nop
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    jr nc, @-$59

    xor l
    nop
    jr c, jr_028_54ef

    ld c, b
    xor l
    xor l
    ret nc

    pop de
    ld [bc], a
    jp nc, $d4d3

    push de

jr_028_54ef:
    sub $d7
    rra
    or b
    ldh [rSB], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    rra
    or b
    nop
    ret z

    ret


    jp z, $cccb

    call $cfce
    add b
    rra
    or b
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $55
    rst JumpTable
    rra
    or b
    and d
    nop
    jr nz, jr_028_54ba

    rra
    or b
    add b
    nop
    jr nz, jr_028_5597

jr_028_551f:
    and e
    rra
    nop
    cp b
    rst JumpTable
    ldh a, [rIE]
    nop
    and b
    ld e, e
    inc bc
    ret nz

    inc b
    add sp, $20
    inc h
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    or a
    rra
    ld a, b
    inc b
    ldh [$1f], a
    rst $10
    ld b, h
    ret nz

    rra
    jr jr_028_551f

    ret nz

    rra
    sbc b
    nop
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    inc l
    ldh [rP1], a
    nop
    jr nc, @+$01

    add hl, bc
    jr c, jr_028_5575

    nop
    ld [hl], $e0
    ld c, $04
    db $10
    ld bc, $0e01
    rlca
    ld c, $30
    ld bc, $0000

jr_028_5575:
    xor $cc

jr_028_5577:
    ld [bc], a
    adc h
    ld [hl+], a
    jr nz, @+$52

    ld d, b
    ld bc, $928a
    inc h
    and $08
    ld b, b
    nop

jr_028_5585:
    ld bc, $8260
    nop
    ld [hl], b
    rra
    rrca
    dec d
    jr @+$12

    ld bc, $1518
    ld [$1718], sp
    rrca
    nop

jr_028_5597:
    xor [hl]
    ld [$8080], sp
    ld e, $00
    inc e
    ld b, $06
    jr c, jr_028_55c0

    and h
    or [hl]
    cp b
    ld b, b
    ld e, $23
    jr nz, jr_028_5585

Call_028_55aa:
    reti


    sub d
    db $db
    sub d
    db $db
    ld [$73ea], sp
    ld b, e
    ld [hl], c
    ld [hl], c
    jr z, jr_028_5577

    ld h, b
    ld h, b
    ld e, d
    add b
    ret nz

    ld [$c4e0], sp
    ld b, b

jr_028_55c0:
    nop
    jr c, @+$04

    ld bc, $3068
    nop
    ld [$1008], sp
    ld [$4050], sp
    db $10
    jr nz, @-$3a

    ld a, a
    xor b
    nop
    jr nc, jr_028_563b

    ld h, [hl]
    ld b, h
    ld bc, $5c08
    ld a, [hl]
    add h
    inc de
    ld d, b
    ei
    ld [hl], e
    sbc d
    db $db
    rrca
    ld d, b
    rst JumpTable
    ld c, [hl]
    ld [hl+], a
    db $d3
    sbc e
    add hl, bc
    jr nz, jr_028_564c

    ld h, b
    ld b, b
    ld bc, $0f08
    db $10
    rlca
    ld [$470c], sp
    ld [hl], b
    inc c
    db $10
    db $10
    ld [$1006], sp
    ld a, [bc]
    ld [bc], a
    ld [$7f04], sp
    jr z, jr_028_5679

    jr nz, jr_028_5676

    inc bc
    nop
    jr jr_028_560a

jr_028_560a:
    jr z, jr_028_564c

    ld l, a
    sbc $10
    ld l, c
    ld bc, $d03b
    rrca
    nop
    inc h
    ld [hl], l
    jr nz, jr_028_5627

    ld l, a
    ld [$0214], sp
    or $00
    ld [hl-], a
    ld bc, $7f01
    pop af
    push af
    db $10
    ld b, h

jr_028_5627:
    ld h, [hl]
    rrca
    ld b, b
    and d
    inc b
    ei
    add d
    jp Jump_028_7bfa


    rrca
    ld b, b
    ld [de], a
    dec de
    ld [$1b12], sp
    rla
    ld c, $0f

jr_028_563b:
    ld b, b
    ld a, [bc]
    rrca
    ld [bc], a
    jr c, jr_028_5644

    dec c
    rrca
    ld c, b

jr_028_5644:
    ld a, a
    pop af
    nop
    nop
    add b
    nop
    ld [hl], a
    inc sp

jr_028_564c:
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [rVBK], a
    ldh [$af], a

jr_028_5676:
    ld bc, $2d01

jr_028_5679:
    ld c, e
    ld c, l
    ld l, a
    or c
    add hl, hl
    add b
    ld bc, $2f09
    ldh [$0e], a
    db $10
    ld a, $30
    ld c, $07
    ld a, d
    ld h, b
    ld bc, $ee00
    call z, $0200
    adc h
    ld [hl+], a
    jr nz, jr_028_56e5

    ld d, b
    adc d
    sub d
    inc b
    inc h
    and $08
    ld b, b
    nop
    ld bc, $100e
    dec de
    inc b
    db $10

jr_028_56a4:
    add hl, de
    db $10
    jr jr_028_56a8

jr_028_56a8:
    ld b, b
    rra
    rra
    nop
    inc de
    add hl, de
    ld de, $1219
    dec de
    sub d
    sbc e
    jr z, jr_028_570d

    adc $6f
    add b
    ld hl, $3680
    or [hl]
    ld h, $48
    ld l, h
    ld hl, $385c
    ld l, a
    ld h, b
    ei
    ld [de], a
    pop af
    add b
    ret nz

    ld hl, $70b0
    rst $28
    rst $28
    ld h, h
    rst $20
    jp hl


    and b
    cp [hl]
    inc e
    rrca
    ld c, $f8
    ldh a, [rNR41]
    ld [bc], a
    nop
    ld bc, $300e
    ld [$1008], sp
    ld [$5003], sp

jr_028_56e5:
    ld b, b
    db $10
    jr nz, jr_028_56e9

jr_028_56e9:
    ld b, b
    add c
    and b
    inc b
    rra
    rrca
    dec d
    jr jr_028_5702

    ld b, c
    inc de
    dec de
    and b
    xor a
    add b
    ld hl, $3e80
    inc a
    ld h, $36
    jr nc, jr_028_56a4

    or [hl]
    xor a

jr_028_5702:
    ld h, b
    ld a, e
    ld [hl], e
    ld a, [de]
    dec de
    ld [hl+], a
    ld [c], a
    ld a, e
    ld l, c
    jr jr_028_5725

jr_028_570d:
    db $10
    ld b, c
    db $d3
    dec b
    ld e, c
    jp nc, $129b

    dec de
    ld l, a
    ld bc, $0280
    rst $28
    rst $00
    ld l, c
    ld l, l
    adc c
    db $ed
    ld l, a
    add b
    ld h, b
    add b
    ld [hl+], a

jr_028_5725:
    pop hl
    inc c
    db $10
    db $10
    ld [$0210], sp
    ld a, [bc]
    ld [bc], a
    ld [$0004], sp
    ld [bc], a
    add c
    ld b, b
    add b
    add c
    ld [hl], b
    nop
    jr jr_028_573a

jr_028_573a:
    jr z, jr_028_577c

    ld l, a
    adc b
    ld a, $80
    ld de, $2119
    inc de
    add hl, de
    ld d, $29
    rra
    nop
    ld b, b
    rst $38
    ld b, e
    inc h
    or [hl]
    ld h, c
    ld [hl+], a
    cp h
    ld e, $ef
    sbc d
    db $db
    sub d
    ld b, c
    sub e
    ld c, b
    reti


    add hl, hl
    ld bc, $6f01
    ld c, c
    ld l, l
    ld c, d
    nop
    ld l, a
    ld c, b
    ld l, h
    rst $08
    rst $20
    ld b, b
    ld h, b
    and b
    ld b, h
    ret nz

    ld l, a
    and [hl]
    or [hl]
    inc h
    ld hl, $ae36
    ld d, c
    sbc h
    ld c, d
    nop
    ld l, a
    sbc b
    ret c

    sub b
    add c

jr_028_577c:
    and b
    rst $28
    ld [bc], a
    add c
    ld c, $00
    jr jr_028_5784

jr_028_5784:
    inc d
    ld bc, $f602
    nop
    ld bc, $4001
    nop
    ld bc, $040e
    dec d
    add hl, de
    jr jr_028_57a3

    nop
    ld b, b
    rra
    rra
    ld hl, $1911
    ld hl, $1f17
    inc h
    or [hl]
    ld hl, $6fa0

jr_028_57a3:
    add b
    ld hl, $1f80
    adc [hl]
    sub e
    dec de
    inc c
    sub d
    db $db
    ld [c], a
    ld a, e
    ld l, a
    ld h, b
    ld a, l
    add hl, sp
    ld [bc], a
    ld c, h
    ld l, h
    ld [de], a
    dec de
    inc de
    add hl, de
    ld l, e
    ret nz

    inc b
    ret nz

    add b
    ret nz

jr_028_57c0:
    or b
    ldh a, [rNR44]
    add hl, bc
    dec c
    ld [hl], $ef
    rst $20
    rst $38
    add b
    add b
    ld b, c
    nop
    dec bc
    ld [bc], a
    ret nz

    ld bc, $000f
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [$5b], a
    ldh [$af], a
    ld bc, $4b40
    ldh [rNR51], a
    ld l, a
    nop
    ldh a, [$f0]
    ld [$10f8], sp

jr_028_580e:
    sbc b
    ld h, b
    ld [hl], b
    ld [$e080], sp
    jr c, jr_028_580e

    cpl
    ldh [$0e], a
    db $10
    sbc b
    ld [hl], $0e
    rlca
    jr z, jr_028_57c0

    ld bc, $ee00
    nop
    call z, $8c02
    ld [hl+], a
    jr nz, jr_028_587a

    ld d, b
    adc d
    inc bc
    sub d
    inc h
    and $08

jr_028_5831:
    ld b, b
    nop
    ld bc, $600e
    ld a, [bc]
    rrca
    rrca
    ld [$210c], sp
    dec bc
    dec h
    dec c
    ret nz

    dec h
    ld l, a
    ret nz

    add b
    ret nz

    ret nz

    adc a
    rst $00
    inc bc
    ret


    adc l
    ld a, [bc]
    adc a
    ld c, b
    call z, $606f
    dec b
    cp c
    dec a
    and h
    or [hl]
    inc h
    ld hl, $ef36
    nop
    rst $08
    adc [hl]
    jp $9cc3


    rst $08
    sub d
    db $db
    sub b
    ld l, e
    ld h, b
    ld h, b
    inc hl
    ld l, a
    ld l, a
    ld c, c
    ld l, l
    ret nz

    ld h, c
    rst $38
    cp h
    inc e
    and b
    or b
    jr z, jr_028_5831

    ld [$8c08], sp
    ld [bc], a
    nop

jr_028_587a:
    ld bc, $300e
    ld [$0008], sp
    db $10
    ld [$4050], sp
    db $10
    jr nz, jr_028_5887

jr_028_5887:
    ld b, b
    jp z, $0081

    ld c, $0f
    rlca
    rrca
    ld c, $80
    dec c
    dec c
    inc bc
    jr jr_028_5899

    ld [bc], a
    inc bc
    rra

jr_028_5899:
    ld c, $00
    ld c, $30
    jr nc, @+$22

    ld b, b
    jr nc, jr_028_58b5

    db $10
    inc c
    db $10
    db $10
    ld [$0a10], sp
    dec b
    ld [bc], a
    ld [$0004], sp
    ld [bc], a
    add c
    ld b, b
    add c
    nop
    ld [hl], b
    nop

jr_028_58b5:
    jr jr_028_58b7

jr_028_58b7:
    jr z, jr_028_58f9

    ld l, a
    nop
    dec b
    add b
    add b
    ld [$000c], sp
    nop
    add hl, bc
    rst $38
    ld b, e
    inc h
    cpl
    ld h, a
    rrca
    ld c, $a4
    or [hl]
    rrca
    ld c, $9c
    rst $08
    sub d
    rrca
    ld c, $49
    ld l, l
    rrca
    ld c, $34
    cp b
    rrca
    ld c, $02
    add b
    add c
    ld c, $00
    jr jr_028_58e2

jr_028_58e2:
    inc d
    ld [bc], a
    or $04
    nop
    ld bc, $4001
    nop
    ld bc, $090e
    inc c
    nop
    ld [$0f0c], sp
    rlca
    inc bc
    ld bc, $090d
    db $10

jr_028_58f9:
    ld c, $07
    nop
    ld b, b
    add b
    add b
    ld a, $3c
    nop
    and [hl]
    ld [hl], $a4
    or [hl]
    inc h
    or [hl]
    and h
    ld [hl], $80
    ld l, a
    ld [bc], a
    inc bc
    ld a, d
    ld [hl], e
    ld a, [de]
    dec de
    ld [c], a
    inc e
    ld a, e
    sub d
    db $db
    inc hl
    ld l, a
    jr nz, jr_028_598a

    ld h, a
    nop
    ld c, c
    ld l, l
    adc d
    rst $08
    ld c, b
    ld l, h
    ld c, a
    ld h, a
    add b
    ld l, l
    jr nz, jr_028_5959

    add a

jr_028_592a:
    inc bc
    add h
    add [hl]
    dec b
    inc b
    add a
    ld bc, $8601
    add a
    cp a
    add b
    add b
    db $ec
    ld h, h
    and [hl]
    jr nz, @+$04

    ld bc, $000f
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b

jr_028_5959:
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [$4e], a
    ldh [$6f], a
    inc bc
    ld bc, $2729
    dec hl
    ld [bc], a
    ld h, c
    db $e3
    add hl, hl
    ld l, a
    ldh [$f0], a
    jr nc, jr_028_59b4

    ld b, e
    ld h, b
    ld hl, sp+$65
    ld d, a
    ld c, $10
    ld bc, $0e01
    ld h, b
    rlca
    jr z, jr_028_592a

jr_028_598a:
    ld bc, $ee00
    call z, $0002
    adc h
    ld [hl+], a
    jr nz, jr_028_59e4

    ld d, b
    adc d
    sub d
    inc h
    inc c
    and $08
    ld b, b
    nop
    ld bc, $000e
    db $10
    call c, $58b6
    add h
    ld hl, $2186
    ld l, e
    ret nz

    ret nz

    add b
    add hl, bc
    ret nz

    sbc c
    reti


    sub c
    ld b, c
    cp c
    ld [hl], b

jr_028_59b4:
    ld l, a
    ld [hl+], a
    ld b, $06
    inc hl
    inc de
    sbc e
    ld [de], a
    ld b, c
    jp nc, $db60

    ld l, a
    ld h, b
    ld [$0a0c], sp
    rrca
    ld [bc], a
    ld a, [de]
    inc bc
    dec c
    ld c, $ef
    nop
    db $10
    ld [bc], a
    ld bc, $300f
    nop
    ld [$1008], sp
    ld [$4050], sp
    db $10
    jr nz, jr_028_5a0c

    nop
    ld b, b

jr_028_59de:
    add c
    nop
    jr jr_028_59de

    ld hl, sp-$64

jr_028_59e4:
    call z, $8909
    call z, $cd99
    rst $28
    ld b, $06
    inc hl
    inc c
    or $e6
    inc [hl]
    or [hl]
    rst $28
    ld h, b
    rst $30
    ld [hl], e
    ld hl, $c684
    rrca
    inc c
    rst JumpTable
    sbc [hl]
    db $d3
    db $db
    rrca
    inc c
    add b
    ld h, b
    inc c
    db $10
    db $10
    ld [$0a10], sp
    ld [bc], a
    ld a, [bc]

jr_028_5a0c:
    ld [$0004], sp
    ld [bc], a
    add c
    ld b, b
    add c
    ld [hl], b
    nop
    nop
    jr jr_028_5a18

jr_028_5a18:
    jr z, @+$42

    ld l, a
    nop
    add b
    jr z, @-$7e

    nop
    nop
    dec bc
    rst $38
    ld b, e
    add c
    pop bc
    add b
    ld bc, $83c0
    pop bc
    add d
    jp $f9bb


    xor a
    ld bc, $c6e6
    ld h, h
    ld h, [hl]
    add h
    and $44
    ld b, e
    add c
    xor a
    ld a, b
    ld l, b
    ld e, b
    ld [hl], b
    ld b, b
    ld h, b
    ld h, c
    add sp, -$51
    nop
    inc c
    rrca
    inc d
    ld [bc], a
    add c
    ld c, $00
    jr jr_028_5a4e

jr_028_5a4e:
    nop
    inc d
    ld [bc], a
    or $00
    ld bc, $4001
    ld h, b
    nop
    ld bc, $000e
    db $10
    cp l
    ld sp, hl
    add c
    pop bc
    add c
    ld b, b
    ret nz

    ld l, c
    add d
    add d
    call nz, $acc6
    xor $25
    inc h
    or [hl]
    ld hl, $e674
    ld l, a
    ld bc, $0040
    ei
    ld [hl], e
    and h
    or $24
    ld [hl], $d5
    db $e3
    add b
    dec l
    jr jr_028_5a98

    sub b
    sbc b
    db $10
    sbc b
    ld d, a
    ld [de], a
    sbc $92
    db $db
    ld hl, $9bd2
    cpl
    ld h, b
    ld h, $60
    ld b, b
    ld b, c
    rrca
    rlca
    add hl, hl
    nop
    ld c, $02

jr_028_5a98:
    ret nz

    ld bc, $000f
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    jr z, jr_028_5a98

    nop
    nop
    jr nc, @+$01

    inc bc
    ld [$0707], sp
    inc b
    ldh [rSB], a
    jr z, @+$11

    jr nz, jr_028_5ac7

jr_028_5ac7:
    db $10
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [$c0], a
    ld h, $08
    rrca
    jr nz, @+$03

    ld bc, $e3e2
    ld [bc], a
    db $e3
    add b
    cpl
    jr nz, jr_028_5b4c

    ld [hl], b

jr_028_5add:
    ret nz

    ldh a, [rNR41]
    or b
    jr nz, jr_028_5ae3

jr_028_5ae3:
    jr nc, jr_028_5add

    ld hl, sp+$20
    jr nc, jr_028_5ae9

jr_028_5ae9:
    nop
    ldh [rTMA], a
    ld c, $10
    ld bc, $0e01
    jr c, jr_028_5afb

    nop
    jr nz, jr_028_5af7

    nop

jr_028_5af7:
    nop
    xor $cc
    ld [bc], a

jr_028_5afb:
    adc h
    ld [hl+], a
    jr nz, jr_028_5b4f

    nop
    ld d, b
    adc d
    sub d
    inc h
    and $08
    ld b, b
    nop
    add h
    ld bc, $1360
    add hl, de
    ld d, $1f
    ld h, $10
    rra
    rra
    db $10
    inc de
    add hl, de

jr_028_5b16:
    ld de, $0801
    ld [hl+], a
    or e
    and e
    ld sp, $0f80
    db $10
    add b
    nop
    add b
    add b
    ld [hl], $b6
    inc h
    nop
    or [hl]
    ld c, c
    ld l, l
    adc a
    rst $20
    ld bc, $0601
    add b
    ld c, [hl]
    jr @-$03

    pop af
    sbc d
    db $db
    inc h
    or [hl]
    ld l, $60
    sbc h
    ld a, [de]

jr_028_5b3d:
    ld [$185a], sp
    rst $28
    rst $20
    ld c, c
    ld l, l
    sub b
    db $10
    ret c

    sub b
    ret c

    ld l, d
    jr nc, @-$40

jr_028_5b4c:
    inc e
    and [hl]
    or [hl]

jr_028_5b4f:
    ret nz

    add $38
    nop
    ld [$f0f8], sp
    sbc b
    ret c

    ld [bc], a
    nop
    add b
    ld bc, $3060
    ld [$1008], sp
    ld [$4050], sp
    jr nc, jr_028_5b76

    jr nz, jr_028_5be7

    jr z, @+$7d

    ld d, b
    ld de, $1319
    add hl, de
    add b
    ld a, e
    jr nc, jr_028_5b91

    sbc h
    ld b, $86

jr_028_5b76:
    jr c, jr_028_5b16

    inc h
    ret c

    ld c, a
    jr c, @+$7d

    db $10
    sub d
    ld bc, $0b08
    db $10
    jr @+$1a

    nop
    ld b, $00
    db $db
    db $db
    ld [de], a
    dec de
    ld bc, $1f10
    jr nc, @-$0f

jr_028_5b91:
    rrca
    rst $00
    ld l, c
    ld l, l
    ld c, c
    ld bc, $0f08
    jr nc, jr_028_5b3d

    ld [$1801], sp
    nop
    inc c
    db $10
    db $10
    ld [$0a10], sp
    ld [bc], a
    ld [$0460], sp
    ld a, a
    jr z, jr_028_5c21

    jr nz, @+$72

    nop
    jr jr_028_5bb1

jr_028_5bb1:
    jr z, jr_028_5bf0

    ld b, b
    ld l, a
    ld h, $08
    ld [hl], e
    db $10
    ld bc, $5921
    ld hl, $f324
    ld [$bc33], sp
    ld e, $0f
    ld b, b
    ld [hl], e
    db $10
    sub e
    reti


    ld l, a
    ld de, $200f
    nop
    ld c, d
    ld l, a
    ld c, b
    ld l, h
    rst $08
    rst $20
    ld b, b
    ld h, b
    inc hl
    and b
    ret nz

    cpl
    jr c, @+$38

    xor [hl]
    sbc h
    cpl
    ld b, b
    rrca
    ld de, $11e8
    ld sp, $100f

jr_028_5be7:
    ld [hl], l
    jr nz, @+$10

    ld l, a
    ld [$0214], sp
    or $e3

jr_028_5bf0:
    ld b, l
    ld [$717f], sp
    ld a, l
    ld h, c
    ld de, $b819
    ld a, e
    jr @+$03

    ld de, $3d03
    or l
    inc l
    cp b
    inc hl
    or c
    ld a, e
    db $10
    pop hl
    ld b, b
    add hl, de
    adc c
    db $ed
    jp nc, $1901

jr_028_5c0e:
    ld l, l
    add hl, de
    sbc h
    ld h, $ab
    ld [$4f3f], sp
    ld h, a
    sbc l
    ld sp, $116d
    ld a, c
    ld [$103a], sp
    add e
    ld c, c

jr_028_5c21:
    ld a, a
    ld [hl], c
    nop
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [$73], a
    ldh [$6f], a
    ld l, c
    ld l, e
    inc bc
    db $e3
    dec h
    ld l, a
    add c
    ld [hl], l
    db $10
    ldh [rNR41], a
    jr nc, @-$1e

    ldh a, [rNR51]
    add b
    add hl, hl
    ldh [$0e], a
    db $10
    ld bc, $0e01
    rlca
    ret nz

    jr z, jr_028_5c0e

    ld bc, $ee00
    call z, $8c02
    nop
    ld [hl+], a
    jr nz, jr_028_5cc8

    ld d, b
    adc d
    sub d
    inc h
    and $18
    ld [$0040], sp
    ld bc, $600e
    ccf
    ld e, $2b
    ld e, $31
    jr nz, jr_028_5cbb

    ld h, c
    daa
    sub b
    ld b, b
    dec a
    ld bc, $0d39
    dec c
    ld [hl], c
    dec a
    ld c, c
    ld l, h
    rst $28
    nop
    or a
    or e
    inc h
    or [hl]
    dec h
    or a
    call nc, $87e6
    rst $28
    ret nz

    add b
    ret nz

    ret nz

    inc h
    db $ed
    nop
    ld a, [de]
    ld b, b
    ld [bc], a
    ld bc, $300f
    ld [$1008], sp
    ld [$0650], sp
    ld b, b
    db $10
    jr nz, jr_028_5cbb

jr_028_5cbb:
    ld b, b
    add c
    nop
    ld c, $33
    ld c, c
    inc sp
    rrca
    ld c, $01
    ld bc, $0e0f

jr_028_5cc8:
    add b
    add b
    rrca
    ld c, $80
    nop
    ld e, $c0
    ret nz

    add b
    ret nz

    inc c
    db $10
    stop
    ld [$0a10], sp
    ld [bc], a
    ld [$0004], sp
    ld [bc], a
    and b
    add c
    ld b, b
    add c
    ld [hl], b
    nop
    jr jr_028_5ce7

jr_028_5ce7:
    jr z, jr_028_5cea

    ld b, b

jr_028_5cea:
    ld l, a
    nop
    nop
    add b
    cpl
    ld e, $24
    and h
    ldh [rIE], a
    ld b, e
    ld [hl], b
    inc a
    rrca
    ld c, $87
    db $e3
    sbc l
    rrca
    ld c, $c0
    ret nz

    rrca
    ld c, $00
    inc c
    rrca
    inc d
    ld [bc], a
    add c
    nop
    ld c, $00
    jr jr_028_5d0d

jr_028_5d0d:
    inc d
    ld [bc], a
    or $00
    add hl, bc
    ld bc, $4001
    nop
    ld bc, $220e
    inc sp
    pop hl
    db $10
    ccf
    ld e, $00
    add b
    ld a, l
    ld a, c
    ld c, l
    ld l, l
    ld h, c
    ld c, c
    add c
    xor a
    cp l
    sbc h
    ld hl, $61b1
    jr nz, jr_028_5d6c

    sbc h
    xor a
    rst $30
    and $35
    or a
    inc h
    ld c, b
    or [hl]
    ld hl, $e674
    xor a
    cp [hl]
    cp h
    and [hl]
    jr nc, jr_028_5d77

    inc h
    add c
    ld l, l
    add b
    ret nz

    ld e, $0e
    nop
    db $10
    jr jr_028_5d60

    ld e, $04
    ld b, $1a
    inc e
    or b
    ld l, a
    ld [bc], a
    ld bc, $000f
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044

jr_028_5d60:
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca

jr_028_5d6c:
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e

jr_028_5d77:
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [rOBP0], a
    ldh [$af], a
    inc bc
    ld bc, $e22d
    db $e3
    ld [bc], a
    and b
    ld hl, $af01
    ldh a, [$f0]
    nop
    add b
    ld a, b
    ld [$28f0], sp
    cp b
    ld l, b
    daa
    nop
    ldh [$0e], a
    ld b, $10
    ld bc, $0e01
    rlca
    ld d, l
    add b
    ld bc, $0000
    xor $cc
    ld [bc], a
    adc h
    ld [hl+], a
    jr nz, @+$52

    nop
    ld d, b
    adc d
    sub d
    inc h
    and $08
    ld b, b
    nop
    jp nz, $0e01

    ld h, b
    rlca
    rlca
    inc b
    ld b, $21
    dec b
    ret nz

    add l
    ld l, a
    ldh [$c0], a
    ld h, b
    ld h, b
    ld b, [hl]
    ld h, [hl]
    ld [bc], a
    db $e4
    add $04
    add $24
    ld h, [hl]
    ld l, a
    jr jr_028_5e1d

    jr jr_028_5dfb

    db $db
    db $db
    sub d
    add c
    ld l, a
    ld h, b
    nop
    rst $28
    rst $00
    ld l, b
    ld l, h
    ld c, d
    ld l, a
    ld b, d
    ld h, e
    ret nc

    rst $28
    nop
    jr @+$04

    ld bc, $300f
    ld [$1008], sp
    ld bc, $5008
    ld b, b
    db $10
    jr nz, jr_028_5df9

jr_028_5df9:
    ld b, b
    add c

jr_028_5dfb:
    sub e
    nop
    ld c, $01
    ld bc, $0e0f
    ret nz

    ret nz

    rrca
    ld c, $00
    db $10
    add b
    rra
    ld [hl+], a
    inc c
    db $10
    db $10
    ld [$0a10], sp
    ld [bc], a
    ld a, [bc]
    ld [$0004], sp
    ld [bc], a
    add c
    ld b, b
    add c
    ld [hl], b
    nop
    nop

jr_028_5e1d:
    jr jr_028_5e1f

jr_028_5e1f:
    jr z, jr_028_5e61

    ld l, a
    nop
    nop
    ld a, [de]
    add b
    inc b
    ld b, $24
    ldh [rIE], a
    ld b, e
    rla
    ld c, c
    inc sp
    rrca
    ld c, $92
    db $db
    rrca
    ld c, $4d
    ld l, [hl]
    rrca
    ld c, $d0
    nop
    inc c
    rrca
    inc d
    ld [bc], a
    add c
    ld c, $00
    jr jr_028_5e44

jr_028_5e44:
    nop
    inc d
    ld [bc], a
    or $00
    ld bc, $4001
    nop

jr_028_5e4d:
    add h
    ld bc, $030e
    ld bc, $0302
    ld hl, $0306
    inc b
    dec b
    ld b, $04
    ld b, $00
    ld b, b
    jr nz, @-$3e

    nop

jr_028_5e61:
    ld b, a
    ld h, a
    ld b, h
    ld h, [hl]
    call nc, Call_028_64e6
    ld [hl], $30
    inc h
    ld [hl], $6f
    jr nz, jr_028_5e4d

    adc [hl]
    ret nc

    ret c

    ld c, b
    sub b
    ld b, c
    sbc [hl]
    adc $af
    rst JumpTable
    adc $93
    ld [de], a
    db $db
    sub h
    rst JumpTable
    cpl
    sbc a
    rst $08
    xor a
    ld a, l
    inc c
    ld a, c
    ld c, h
    ld l, h
    ld c, b
    add c
    ld l, l
    add b
    ret nz

    ld [hl-], a
    or b
    ldh a, [rNR44]
    ld h, c
    or b
    ld [hl], b
    ld l, a
    ld [bc], a
    ret nz

    ld bc, $000f
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [$79], a
    ldh [$af], a
    bit 1, l
    xor a
    ldh a, [$f0]
    ld [hl+], a
    inc b
    ret nz

    ld [hl], b
    sub b
    ldh [$80], a
    ld d, c
    ldh [$0e], a
    ld b, $10
    ld bc, $0e01
    rlca
    ld a, d
    ld h, b
    ld bc, $0000
    xor $cc
    ld [bc], a
    adc h
    ld [hl+], a
    jr nz, @+$52

    nop
    ld d, b
    adc d
    sub d
    inc h
    and $08
    ld b, b
    nop
    ret nz

    ld bc, $200e
    db $fc
    ld a, b
    xor h
    call nz, $c181
    add [hl]
    ld h, c
    xor l
    push bc
    cp l
    ld a, c
    ld d, b
    ld b, b
    db $ed
    nop
    xor l
    ld l, c
    call $8d09
    ld c, $87
    inc b
    ld b, b
    add e
    xor a
    cp [hl]
    cp h
    ld h, $b6
    inc h
    or [hl]
    ld [$36a4], sp
    ld a, [hl+]
    inc a
    dec hl
    ld h, b
    ld h, b
    ld b, b
    add hl, de
    ld h, b
    ret c

    ld hl, sp+$23
    ld h, c
    ld e, b
    jr c, @-$3f

    and b
    nop
    ld a, [de]
    ld [bc], a
    ld bc, $300f
    ld [$1008], sp
    ld [$5003], sp
    ld b, b
    db $10
    jr nz, jr_028_5f3b

jr_028_5f3b:
    ld b, b
    add c
    nop
    inc c
    inc c
    ld hl, sp-$08
    add b
    ret nz

    db $10
    dec c
    nop
    dec c
    jr nc, jr_028_5f7a

    ld [hl], c
    jr nz, jr_028_5f8e

    rra
    ld a, [de]
    nop
    db $10
    jr jr_028_5f6b

    db $10
    ld b, c
    nop
    inc c
    db $10
    db $10
    ld [$0a10], sp
    ld [bc], a
    ld [$0415], sp
    nop
    ld [bc], a
    add c
    ld b, b
    add c
    ld [hl], b
    dec a
    ld bc, $2800
    ld b, b

jr_028_5f6b:
    ld l, a
    nop
    nop
    add b
    ld [hl+], a
    and c
    nop
    ld a, [bc]
    rst $38
    ld b, e
    ld [bc], a
    inc bc
    dec b
    ld b, $0f

jr_028_5f7a:
    inc c
    dec a
    jr nz, jr_028_5fae

    ld hl, $0c0f
    nop
    inc c
    rrca
    inc h
    ld [bc], a
    add c
    nop
    ld c, $00
    jr jr_028_5f8c

jr_028_5f8c:
    inc d
    ld [bc], a

jr_028_5f8e:
    or $00
    ld [$0101], sp
    ld b, b
    nop
    ld bc, $830e
    jp $0aba


Jump_028_5f9b:
    ei
    add c
    pop bc
    add d
    ld b, l
    nop
    add b
    ld l, a
    nop
    ld l, a
    ld c, c
    ld l, l
    adc c
    call Call_028_6d69
    ld c, d
    jr @+$71

jr_028_5fae:
    ld [$210c], sp
    cpl
    and a
    inc sp
    and h
    inc h
    or [hl]
    inc h
    ld b, c
    and l
    inc sp
    cp a
    sbc $9a
    add hl, bc
    sub $dc
    sub b
    ret c

    ld hl, $98d0
    xor a
    nop
    ei
    ld [hl], e
    sbc d
    db $db
    and d
    ei
    add d
    jp $fa20


    ld a, e
    xor a
    jp $c241


    add e
    ld [bc], a
    ld e, b

jr_028_5fda:
    inc bc
    daa
    inc bc
    ld b, e
    ld h, b
    jp nz, $02c0

    inc de
    nop
    add d

jr_028_5fe5:
    ret nz

    ld hl, $8042
    daa
    ld h, c
    nop
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop

Jump_028_6000:
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    ld l, b
    ldh [$28], a
    ret nz

    rst $38
    ld b, e
    rlca
    rlca
    inc b
    ldh [$c1], a
    xor a
    ld h, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ldh [rOBP0], a
    ldh [$6f], a
    inc bc
    ld bc, $0129
    ld bc, $04e2
    db $e3
    ld [bc], a
    db $e3
    nop
    ld bc, $f86f
    ldh a, [rNR32]
    jr nz, jr_028_5fe5

    ld b, b
    ld b, e
    ld h, l
    cpl
    ldh [$0e], a
    ld c, h
    db $10
    inc a
    ld c, $07
    jr z, jr_028_5fda

    ld bc, $0000
    xor $cc
    ld [bc], a
    adc h
    ld [hl+], a
    jr nz, jr_028_6094

    ld d, b
    ld bc, $928a
    inc h
    and $08
    ld b, b
    nop
    ld bc, $010e
    rlca
    inc bc
    ld a, [de]
    inc de
    dec e
    ld c, $00
    ld b, b
    nop
    rra
    rra
    inc de
    add hl, de
    ld de, $4919
    ld l, l
    ret nc

    ld h, c
    ld l, a
    add b
    ld hl, $3680
    or [hl]
    jr z, jr_028_6071

    cp [hl]
    jr nz, @-$4e

    ld a, $9e
    ld l, a

jr_028_6071:
    ld h, b
    ei
    ld [de], a
    pop af
    sub d
    db $db
    ld hl, $cf9e
    rst $28
    rst $28
    ld h, h
    rst $20
    jp hl


    and b
    cp [hl]
    inc e
    rrca
    ld c, $f8
    ldh a, [rNR41]
    ld [bc], a
    nop
    ld bc, $300e
    ld [$1008], sp
    ld [$5003], sp
    ld b, b
    db $10

jr_028_6094:
    jr nz, jr_028_6096

jr_028_6096:
    ld b, b
    add c
    ld h, b
    ld [bc], a
    rra
    ld c, $13
    add hl, de
    db $10
    jr jr_028_60c6

    rlca
    jr jr_028_60a7

    ld a, [de]
    inc de
    sub b

jr_028_60a7:
    ld b, b
    ld l, l
    ld l, l
    ld c, c
    inc b
    ld l, l
    add hl, bc
    ld l, l
    ld a, [hl]
    inc sp
    rst $28
    cp [hl]
    sbc h
    ld [bc], a
    ld h, $b6
    inc h
    or [hl]
    and h
    ld [hl], $ef
    rst $30
    ld b, $d3
    or h
    and $84
    add $21
    add hl, hl
    ret nz

jr_028_60c6:
    rlca
    ret nz

    add e
    pop bc
    add d
    jp $a521


    ld a, e
    ld [$c0e0], sp
    ld b, b
    ld h, b
    ld hl, $d888
    ld h, b
    nop
    ld [hl], b
    ld h, b
    jr nc, jr_028_60e9

    db $10
    db $10
    ld [$0210], sp
    ld a, [bc]
    ld [bc], a
    ld [$0004], sp
    ld [bc], a
    add c

jr_028_60e9:
    ld b, b
    add b
    add c
    ld [hl], b
    nop
    jr jr_028_60f0

jr_028_60f0:
    jr z, jr_028_6132

    ld l, a
    inc b
    nop
    nop
    add b
    ld de, $2119
    inc de
    add hl, de
    inc [hl]
    ld d, $1f
    ld a, [hl+]
    jr nz, @+$01

    ld b, e
    inc h
    or [hl]
    sub c
    ld h, c
    cp h
    ld e, $ef
    sbc d
    db $db
    sub d
    ld b, c
    inc h
    sub e
    reti


    add hl, hl
    ld bc, $6f01
    ld c, c
    ld l, l
    nop
    ld c, d
    ld l, a
    ld c, b
    ld l, h
    rst $08
    rst $20
    ld b, b
    ld h, b
    ld [hl+], a
    and b
    ret nz

    ld l, a
    and [hl]
    or [hl]
    inc h
    ld hl, $2836
    xor [hl]
    sbc h
    ld c, d
    nop
    ld l, a
    sbc b
    ret c

    sub b

jr_028_6132:
    ret nc

    add c
    rst $28
    ld [bc], a
    add c
    ld c, $00
    jr jr_028_613b

jr_028_613b:
    nop
    inc d
    ld [bc], a
    or $00
    ld bc, $4001
    nop
    or b
    ld bc, $1d0e
    ld a, [hl-]
    add b
    rra
    ld c, $13
    add hl, de
    inc h
    db $10
    jr jr_028_6177

    ld [hl+], a
    inc sp
    ld l, l
    ld h, b
    ld h, b
    nop
    ld b, c
    ld h, c
    ld b, b
    ld h, b
    ld e, l
    ld a, c
    ld c, l
    ld l, l
    inc h
    ld l, $1c
    cp a
    add b
    add b
    inc hl
    cp [hl]
    sbc h
    ld [$b626], sp
    add a
    jp $c36d


    jp $8182


    ld b, c
    sbc [hl]
    rst $08
    sub d

jr_028_6177:
    db $db
    add e
    pop bc
    cp a
    sub [hl]
    ldh [$f8], a
    ret c

    rrca
    ld c, $02
    ld bc, $000f
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    inc l
    ldh [rP1], a
    nop
    jr nc, @+$01

    add hl, bc
    jr c, jr_028_61b7

    nop
    ld [hl], $e0
    ld c, $04
    db $10
    ld bc, $0e01
    rlca
    ld c, $30
    ld bc, $0000

jr_028_61b7:
    xor $cc
    ld [bc], a
    adc h
    ld [hl+], a
    jr nz, jr_028_620e

    ld d, b
    ld bc, $928a
    inc h
    and $08
    ld b, b
    nop
    ld bc, $8060
    nop
    ld [hl], b
    db $fc
    ld a, b
    xor h
    call nz, $c080
    add b
    ld bc, $81c0
    ret nz

    xor l
    push bc
    cp l
    ld a, b
    inc de
    jr nz, jr_028_61de

jr_028_61de:
    rst $30
    db $e3
    inc [hl]
    ld [hl], $c5
    rst $30
    ld hl, $00b1
    add $f7
    nop
    nop
    jr jr_028_6205

    db $10
    jr jr_028_61f0

jr_028_61f0:
    or [hl]
    cp [hl]
    db $10
    jr jr_028_6205

    sbc b
    db $10
    sbc b
    ld [$0e96], sp
    nop
    nop
    dec hl
    db $10
    sbc a
    adc $93
    ld bc, $94db

jr_028_6205:
    rst JumpTable
    sub b
    ret c

    sbc a
    rst $08
    ld c, [hl]
    ld a, b
    jr nz, jr_028_620e

jr_028_620e:
    ld [bc], a
    ld bc, $3068
    ld [$1008], sp
    ld [$500c], sp
    ld b, b
    db $10
    jr nz, jr_028_629b

    xor b
    add l
    ld b, b
    add l
    push bc
    ld [c], a
    ld bc, $1310
    ld b, b
    add l
    ld [$24b6], sp
    or [hl]
    rrca
    ld b, b
    db $db
    inc b
    sbc e
    jp nc, $8cdb

    adc $09
    db $10
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0f08
    rlca
    ld [$0a0c], sp
    rrca
    add b
    ld c, c
    ld [hl], b
    inc c
    db $10
    db $10
    ld [$0a10], sp
    ld [bc], a

jr_028_624c:
    jr nc, @+$0a

    inc b
    ld a, a
    jr z, jr_028_62c7

    jr nz, jr_028_62c4

    nop
    jr jr_028_6257

jr_028_6257:
    ld e, $28
    ld b, b
    ld l, a
    cp [hl]
    ld [$0169], sp
    inc a
    rrca
    nop
    inc h
    ld [hl], l
    jr nz, jr_028_6274

    add c
    ld l, a
    ld [$0214], sp
    or $00
    ld bc, $7f01
    pop af
    and c
    ld [hl], l
    add hl, bc

jr_028_6274:
    ld a, c
    rrca
    ld d, b
    inc h
    or [hl]
    dec h
    or e
    rrca
    ld d, b
    add hl, bc
    sub e
    db $db
    jp nc, Jump_028_5f9b

    ld e, c
    inc bc
    dec c
    add l
    add hl, bc
    sbc b
    nop
    jr nc, jr_028_624c

    ret nz

    ld a, a
    pop af
    nop
    nop
    add b
    nop
    ld [hl], a
    inc sp
    ld b, b
    ld sp, $0044
    inc b
    ld a, [bc]

jr_028_629b:
    ld a, [bc]
    ld d, c
    ld c, c
    inc h
    ld h, a
    stop
    nop
    nop
    rlca
    ld [hl], b
    ld [$8080], sp
    ld [hl], b
    inc l
    ldh [rP1], a
    nop
    jr nc, @+$01

    add hl, bc
    jr c, jr_028_62c2

    nop
    ld [hl], $e0
    ld c, $04
    db $10
    ld bc, $0e01
    rlca
    ld c, $30
    ld bc, $0000

jr_028_62c2:
    xor $cc

jr_028_62c4:
    ld [bc], a
    adc h
    ld [hl+], a

jr_028_62c7:
    jr nz, jr_028_6319

    ld d, b
    ld bc, $928a
    inc h
    and $08
    ld b, b
    nop
    ld bc, $0060
    inc hl
    inc sp
    ld [hl+], a
    inc sp
    cpl

jr_028_62da:
    ld a, $20
    ld [hl], $08
    ld hl, $2033
    ld sp, $102e
    ld [bc], a
    inc bc
    ld [hl], $21
    scf
    ld [hl+], a
    inc de
    ld [$3322], sp
    and e
    or c
    ld b, b

jr_028_62f1:
    jr nz, jr_028_62f3

jr_028_62f3:
    cp [hl]
    sbc h
    ld h, $36
    jr z, jr_028_6337

    jr nz, jr_028_632b

    jr nz, @-$40

    sbc [hl]
    rrca
    jr nz, jr_028_62f1

    ld [hl], b
    add b
    ret nz

    and b
    dec c
    ldh a, [rNR41]
    jr nc, jr_028_62da

    or d
    ld b, b
    nop
    ret z

    ld [bc], a
    ld bc, $0068
    jr nc, @+$0a

    ld [$0810], sp
    ld d, b
    ld b, b

jr_028_6319:
    db $10
    ld h, [hl]
    jr nz, @+$81

    jr z, jr_028_631f

jr_028_631f:
    jr nc, jr_028_6360

    ld a, $89
    jr nz, jr_028_6360

    ld d, b
    ld a, $10
    inc e
    ld h, $36

jr_028_632b:
    rrca
    ld d, b
    ei
    ld [hl], e
    sbc d
    db $db
    add h
    rrca
    ld d, b
    sbc h
    ret c

    ld c, h

jr_028_6337:
    ld l, h
    cpl
    and b
    ld a, b
    jr c, jr_028_633d

jr_028_633d:
    ld d, b
    ld h, b
    ld b, b
    ld h, b
    sbc b
    ld hl, sp+$40
    ld h, b
    nop
    inc c
    db $10
    db $10
    ld [$0a10], sp
    ld [bc], a
    ld [$0460], sp
    ld a, a
    jr z, jr_028_63c8

    jr nz, @+$72

    nop
    jr jr_028_6358

jr_028_6358:
    jr z, @+$20

    ld b, b
    ld l, a
    nop
    adc l
    add hl, bc
    ld l, c

jr_028_6360:
    ld bc, $0f3b
    nop
    inc h
    ld [hl], l
    jr nz, jr_028_6376

    add c
    ld l, a
    ld [$0214], sp
    or $00
    ld bc, $7f01
    ld [hl], c
    ret nz

    ld a, c
    ld b, c

jr_028_6376:
    dec b
    ld hl, $3624
    inc h
    ld [hl], $ae
    sbc h
    add b
    rrca
    jr nc, jr_028_63b5

    inc sp
    sub d
    db $db
    sub d
    db $db
    cp d
    ld c, [hl]
    ld [hl], e
    ld d, e
    ld b, b
    ld c, b
    ld l, h
    ld bc, $0f10
    ld b, b
    cpl
    db $10
    ld l, $53
    inc e
    rrca
    ld b, b
    ld b, b
    rst $30
    ld [$6040], sp
    ld a, a
    pop bc
    ld b, c
    nop
    ret nz

    rst $38
    rst $38
    add c
    rst $38
    cp l
    pop bc
    ldh [$29], a
    jr nz, jr_028_63c4

    ld a, [bc]
    ret nz

    rst $38
    sub b
    rst $28
    add a
    ld a, $ff

jr_028_63b5:
    adc a
    ld bc, $310f
    dec [hl]
    add hl, sp
    jr nz, jr_028_63bd

jr_028_63bd:
    add b
    nop
    add hl, bc
    rrca
    rrca
    dec bc
    inc c

jr_028_63c4:
    ld c, $09
    dec c
    dec sp

jr_028_63c8:
    ld a, [bc]
    dec c
    ld h, $01
    dec bc
    rra
    ld a, [bc]
    rst $38
    jr nz, @+$46

    ld bc, $ff80
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    ld bc, $8009
    ld [hl], a
    cp a
    ret nz

    ldh [$9f], a
    call z, $ccb7
    add [hl]
    ld h, $bf
    pop bc
    cp a
    jp $0f01


    ld a, a
    rst $38
    ld hl, sp+$44
    ld h, c
    nop
    inc d
    ld a, [hl-]
    and b
    inc c
    inc c
    inc d
    ld bc, $271c
    ccf
    ld b, c
    ld a, a
    add c
    rst $38
    inc hl
    ld sp, hl
    daa
    dec hl
    cpl
    ld sp, hl
    ld h, b
    ld [$3108], sp
    ld hl, $3e22
    add hl, sp
    add b
    rst $38
    db $e3
    rst $38
    daa
    db $e4
    jr nz, jr_028_6432

    inc c
    ldh [rNR32], a
    inc e
    add hl, sp
    ld c, c
    ld [hl], a
    inc a
    ld e, l
    ld h, e
    inc hl
    daa
    dec hl
    rra
    inc d
    ld a, [hl+]
    ld [hl], $9c
    dec a
    ld [hl], a
    ld c, c
    inc hl
    daa
    rra
    ld d, $3e
    ld [hl+], a

jr_028_6432:
    sbc h
    dec a
    ld h, e
    ld e, l
    inc hl
    daa
    rra
    ld d, $36
    ld a, [hl+]

jr_028_643c:
    sbc [hl]
    dec a
    ld c, c
    ld [hl], a
    inc hl
    daa
    rra
    inc d
    jr nz, jr_028_644e

    rlca
    ld [$1c14], sp
    ld a, [hl+]
    ld [hl], $23
    daa

jr_028_644e:
    dec e
    inc d
    add a
    ld a, a

jr_028_6452:
    inc e
    inc d
    ld a, $00
    inc hl
    rra
    add hl, de
    ld e, e
    ld sp, $223e
    ld e, a
    ld e, $16
    nop
    ld a, [bc]
    ld [$253a], sp
    ld a, [hl+]
    ld [hl], $23
    jr z, jr_028_6472

    inc de
    ld a, [bc]
    rst $38
    ld b, b
    nop
    ei
    db $fc
    db $ed

jr_028_6472:
    di
    rst $10
    rst $28
    rst $28
    rst JumpTable
    add c
    ld bc, $e80a
    rst JumpTable
    ldh a, [$df]
    rst JumpTable
    ldh [$7b], a
    add h
    jr nz, jr_028_643c

    rst $08
    ei
    ld c, a
    ld hl, $4ff8
    inc d
    rst $38
    ld c, a
    rst $30
    inc hl
    ld b, b
    ld hl, $7fbf
    jr nz, @+$81

    add b
    dec [hl]
    or h
    rst $38
    or l
    rst $38
    add l
    add c
    ld e, l
    or $ff
    rst $30
    rst $38
    rst $20
    ld hl, sp+$22
    inc b
    db $fc
    rst JumpTable
    ld sp, hl
    cp [hl]
    dec hl
    inc h
    ld l, d
    rst $38
    nop
    ld c, d
    ld a, a
    ret z

    cp a
    jp z, $8aff

    db $fd
    nop
    adc e
    ei
    adc h
    db $fd
    adc [hl]
    xor a
    rst JumpTable
    rst $38
    add b

jr_028_64c1:
    jr nz, jr_028_6452

    rst $38
    add a
    rst $38
    sub e
    rst $38
    rlc b
    rst $38
    and $ff
    cp $83
    cp $bf
    cp $10
    or a
    cp $ab
    inc hl
    rst $38
    xor d
    rst $38
    cp a
    jr nc, @+$01

    add b
    ld e, h
    jr nz, jr_028_64c1

    rst $38
    ld h, [hl]
    rst $38
    inc b
    add hl, hl

Call_028_64e6:
    rst $38
    adc c
    rst $38
    cp c
    ld a, [hl+]
    rst $00
    rst $38
    nop
    add e
    cp $81
    cp c
    rst $00
    add $ff
    ld hl, sp-$7e
    ld e, e
    adc h
    rst $38
    inc e
    rst $38
    cp $5f
    ld [bc], a
    ld [$30ff], sp
    rst $38
    ld c, c
    ld b, c
    ld c, e
    rst $38
    ld a, e
    ld [bc], a
    rst $38
    inc sp
    rst $38
    add e
    rst $38
    inc bc
    add c
    ld bc, $ff02
    ld sp, $38ff
    rst $38
    ld a, a
    ld e, a
    rst $30
    ld bc, $f8f8
    rst $20
    rst $10
    add sp, -$14
    db $d3
    inc hl
    call nz, $2b27
    rst JumpTable
    rst $38
    jp z, $9041

    rst $38
    ld b, $8a
    rst $38
    jr @+$01

    db $fc
    ld e, l
    jr nz, @-$0f

    ld bc, $1f1f
    rst $20
    db $eb
    rla
    scf
    sla e
    ret nz

    daa
    dec hl
    ei
    rst $38
    xor e
    rst $38
    inc hl
    rst $38
    ld d, $89
    rst $38
    sub c

jr_028_654b:
    ld e, a
    ccf
    sbc a
    jr nz, jr_028_654b

    nop
    db $fc
    db $ed
    di
    or $ef
    call $ebfe
    nop
    call c, $fdca
    ld [hl], a
    rst $28
    add sp, -$09
    or a
    ld bc, $d8f8
    rst $38
    rst $20
    rst $38
    ld sp, hl
    cp $bd
    ld [$faf5], sp
    push af
    ld [$fac1], a
    xor a
    rst $38
    nop
    ld [hl], a
    xor a
    cp h
    ld h, e
    ei
    ld b, h
    db $ed
    inc de
    ld [bc], a
    ei
    rlca
    ld e, a
    and a
    cp a
    rst $00
    ld a, a
    ld d, a
    db $10
    xor a
    ld d, a
    xor e
    pop bc
    xor a
    db $fd
    rst $38
    xor $00
    push af
    dec e
    and $ef
    ld [de], a
    cp e
    call nz, $04df
    ldh [$f6], a
    jp hl


    db $fd
    db $e3
    ld a, a
    rst $30
    ld hl, sp+$00
    rst $28
    ldh a, [$b7]
    rst $28
    rst $38
    xor l
    rst $30
    xor a
    ld [bc], a
    rst JumpTable
    or b
    rst $28
    sbc a
    cp a
    ret nz

    ld sp, $0357
    xor b
    ld d, l
    xor e
    ld e, e
    and a
    ld e, a
    ld b, c
    dec hl
    nop
    di
    rst $38
    adc l
    cp $b7
    ld hl, sp-$21
    ldh [$80], a
    ld [hl], a
    rst $38
    add b
    db $fd
    add e
    rst $38
    add e
    ld e, c
    db $10
    cp a
    ld a, a
    cp h
    ld b, e
    add e
    ld a, l
    add e
    ld a, a
    ld b, b
    add b
    rra
    ld c, $fe
    add c
    ei
    sbc l
    rst $38
    adc a
    ld [$8f77], sp
    ld a, a
    cp a
    ld b, e
    adc a
    ld a, e
    sbc l
    jr nz, jr_028_666a

    add c
    rra
    ld c, $ff
    add b
    rst $20
    sbc c
    db $db
    add hl, bc
    cp l
    ld h, a
    sbc c
    ld e, e
    jp $807f


    rra
    stop
    rst $38
    add a
    rst $38
    adc a
    ld a, l
    sbc [hl]
    ld a, e
    sbc h
    add l
    inc hl
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    rst $38
    scf
    nop
    rst JumpTable
    ei
    db $dd

jr_028_6614:
    rst $38
    reti


jr_028_6616:
    rst $38
    ld e, a
    ei
    ld bc, $fc5f
    ld e, a
    rst $38
    ld l, a
    rst $38
    jr nc, jr_028_6654

    inc bc
    ccf
    rst $28
    jr c, jr_028_6616

    ccf
    add sp, $41
    dec h
    adc b
    inc l
    inc bc
    rst $38
    ei
    ld hl, $fb7f
    cp a
    ld b, b
    ld a, [$7f21]
    ld a, [$f6ff]
    rst $38
    inc c
    add c
    ld [hl-], a
    db $fc
    rst $30
    inc e
    rst $30
    db $fc
    rla
    ld b, c
    add b
    dec h
    rst $38
    cp $ff
    ld hl, sp-$01
    rst $28
    ldh a, [rP1]
    rst JumpTable
    ldh [$b7], a
    ret c

jr_028_6654:
    cp a
    ldh [$7b], a
    sbc h
    nop
    rst JumpTable
    inc l
    ei
    inc e
    cp a
    ld b, b
    ld e, a
    cp a
    inc b
    or e
    rst $08
    rst $08
    ldh a, [rIE]
    jr nz, jr_028_6614

    xor e

jr_028_666a:
    nop
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $30
    rrca
    ei
    nop
    rlca
    db $ed
    dec de
    db $fd
    rlca
    or $39
    cp a
    nop
    ld e, b

jr_028_667e:
    rst $30
    jr c, jr_028_667e

    ld [bc], a
    ld a, [$cdfd]
    db $10
    di
    di
    rrca
    ld e, a
    push de
    push de
    rst $38
    cp $a0
    add c
    add b
    ld c, h
    rst $28
    ldh a, [$bf]
    and $ff
    nop
    and [hl]
    ld l, a

jr_028_669a:
    or [hl]
    ld [hl], a

jr_028_669c:
    sbc b
    cp $0d
    rst $38
    ld d, b
    dec b
    cpl
    ldh [rSTAT], a
    ldh a, [rIE]
    cp a
    ld a, a
    jr z, jr_028_669a

    rra
    dec hl
    inc bc
    ld a, a
    rra
    ei
    rst $08
    nop
    rst $38
    set 5, l
    db $db
    db $dd
    inc sp
    rst $38
    ld h, c
    dec l
    rst $38
    ld b, c
    cpl
    rrca
    ld b, c
    ld a, [hl-]
    cp $81
    ld [bc], a
    sbc $e3
    xor [hl]
    rst JumpTable
    ld a, [c]
    cp a
    ld hl, $04af
    rst JumpTable
    sbc a
    ldh [$80], a
    rst $38
    ld h, c
    add h
    rst $38
    ld [$ff8e], sp
    adc $ff
    jr nz, jr_028_669c

    ld a, a
    rst $28
    ld b, b
    rra
    dec h
    ei
    add a
    push af
    ei
    adc a
    db $fd
    jp nz, $2521

    ld sp, hl
    rlca
    ld bc, $61ff
    ld hl, $ff0c
    ld [hl], c
    rst $38
    ld [hl], e
    ld e, a
    nop
    add hl, bc
    cp $ff
    nop
    db $fc
    ei
    or $fe
    inc hl
    rst $38
    ccf
    rst $38
    db $10
    db $10
    rst $28
    jr jr_028_6737

    sbc [hl]
    rst $38
    pop af
    cp [hl]
    inc c
    rst $38
    ldh [$9e], a
    pop hl
    rra
    add hl, bc
    scf
    inc sp
    rst JumpTable
    nop
    rst $20
    cp a
    call nz, $fcff
    ld a, a
    ret nz

    cp a
    nop
    ld [hl], b
    rst $28
    rst JumpTable
    ld a, c
    rst $38
    sbc a
    ld a, c
    ld l, a
    inc b
    ld sp, hl

jr_028_672b:
    rst $30
    call Call_028_55aa
    ld a, [hl-]
    cp a
    jp z, $ff00

    cp d
    rst $38
    ret c

jr_028_6737:
    rst $38
    ld [$9aef], a
    ret nz

    dec hl
    ld l, a
    rst $28
    ccf
    rst $28
    jr c, jr_028_672b

    ccf
    ret


    ld hl, $ff27
    ccf
    ld l, a
    xor [hl]
    reti


    ld [hl], $02
    cp $a9
    rst $38
    xor e
    xor a
    db $db
    cp a
    rst $30
    ld b, $fc
    rst $30
    inc e
    rla
    db $fc
    ld hl, $ff27
    add b
    ld hl, $fffd
    cp $ff
    ld a, [$dcff]
    nop
    rst $38
    ld l, h
    rst $38
    and h
    rst $38
    add d
    rst $38
    ld bc, $4180
    add c
    ld a, a
    db $e3
    ld a, $ff
    and b
    rst $38
    ld [bc], a
    ldh [rIE], a
    call nz, $adff
    rst $38
    add b
    cp a
    nop
    rst $38
    cpl
    rst $38
    dec d
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    pop bc
    ld a, [hl]
    rst $20
    nop
    inc a
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    ld b, b
    or l
    dec sp
    or $ff
    db $e4
    rst $38
    jr nz, @+$01

    ld e, h
    add b
    ld b, c
    nop
    ld e, e
    dec h
    dec hl
    db $e4
    ld a, a
    nop
    xor $3b
    rst $38
    and c
    rst $38
    ldh [rIE], a
    call nz, $ff20
    xor l
    ccf
    rst JumpTable
    rst $38
    ld c, [hl]
    rst $38
    ld [$ff28], sp
    ld bc, $035d
    add l
    dec b
    rst $38
    rlca
    inc b
    cp $33
    db $ec
    ld a, a
    push bc
    ld h, $ff
    inc hl
    jr nc, @+$01

    or l
    ccf
    jr nz, @-$06

    rst $38
    ldh [rIE], a
    dec b
    jp $c4ff


    rst $38
    adc b
    add c
    add h
    dec hl
    ld b, $7f
    ldh [$3f], a
    ld hl, sp-$51
    ld d, h
    ld [hl-], a
    xor l
    add b
    dec a
    rst $30
    rst $38
    ld a, e
    rst $38
    dec e
    rst $38
    sbc l
    ld [$4cff], sp
    rst $38
    ld c, b
    ld e, l
    ld de, $21ff
    add b
    ccf
    cp $07
    db $fc
    rra
    push af
    rst $38
    rlca
    ld [$23ff], sp
    rst $38
    or l
    ccf
    ldh [rIE], a
    adc a
    ld [bc], a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    add b
    ld c, c
    sbc h
    nop
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$3f
    rst $20
    cp a
    ld hl, sp+$10
    xor a
    cp $e3
    ld a, [hl+]
    rst $38
    call nz, $adff
    add b
    ccf
    rlca
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld [hl], e
    nop
    cp $07
    db $fc
    rlca
    db $fd
    rrca
    push af
    ld a, a
    ld bc, $ffc7
    inc bc
    rst $38
    inc hl
    rst $38
    or l
    ccf
    adc [hl]
    add hl, sp
    ldh [rIE], a
    ret nz

    add c
    daa
    ld l, l
    ldh a, [$91]
    add c
    ld hl, sp-$11
    ld c, [hl]
    call nz, $adff
    ld sp, $1f00
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    ld de, $61ff
    rst $38
    add e
    ld c, c
    dec l
    ld sp, $1f08
    rst $30
    ccf
    rst $20
    ld c, b
    inc hl
    rst $38
    or l

jr_028_687f:
    ld b, b
    rst $38
    ld b, b
    nop
    nop
    rrca
    jr nc, jr_028_6903

    nop
    cp $74
    adc e
    add hl, bc
    db $fc
    rlca
    db $fc
    xor l
    ld hl, $7878
    dec e
    db $10
    add b
    jr nz, jr_028_687f

    rst $20
    cp l
    rst $38
    add c
    rst $38
    and l
    add c
    ld b, c
    jp $dbff


    rst $38
    ld a, [hl]
    ld a, [hl]
    rra
    stop
    nop
    stop
    jr jr_028_68ae

jr_028_68ae:
    inc e
    nop
    ld e, $f4
    ld b, e
    daa
    dec hl
    nop

jr_028_68b6:
    ld [de], a
    ld [$3e59], sp
    nop
    ld [hl], b
    ld a, a
    ld b, l
    ld hl, $3f40
    ccf
    ld a, a
    ld h, c
    ld [bc], a
    pop hl
    rst JumpTable
    rst $08
    cp a
    ret nc

    or b
    ld h, c
    ldh a, [$fc]
    ld b, b
    xor c

jr_028_68d0:
    ld sp, $3935
    dec a
    rst $38
    rst $38
    nop
    add c
    add c
    and l
    and l
    sub c
    sub c
    adc c
    adc c
    ldh a, [rNR51]
    add hl, hl
    dec l
    rrca
    ld d, b
    inc a
    inc a
    ld a, [hl]
    ld h, [hl]
    xor b
    and b
    ld a, [hl]
    ld a, [hl+]
    nop
    jr nz, jr_028_6908

    jr jr_028_692a

    ld hl, sp+$20
    inc h
    and b
    ld c, a
    sbc a
    ld b, $3e
    inc a
    jr jr_028_6979

    ld h, b
    ld a, [hl]
    jr nz, jr_028_68d0

    ld l, [hl]
    inc c

jr_028_6903:
    ld c, $58
    ld b, $34
    ld a, [hl]

jr_028_6908:
    ld a, [hl+]
    ld c, a
    inc c
    inc c
    inc e
    ld c, [hl]
    inc e
    jr z, jr_028_698d

    ld l, h
    ld e, l
    ld a, [hl+]
    ld c, a
    ld a, h
    add e
    jr nz, jr_028_6979

    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld b, $20
    dec h
    ld l, c
    ld a, h
    ld c, a
    ld e, e
    ld h, b
    jr z, jr_028_69a4

    ld h, [hl]
    jr nz, jr_028_6991

    ld a, [hl]

jr_028_692a:
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    jr nz, jr_028_6935

    ld c, $0c
    ccf
    inc e
    jr jr_028_68b6

jr_028_6935:
    sbc a
    dec sp
    add hl, sp
    rra
    ld a, [bc]
    ld l, a
    add [hl]
    ld c, e
    ld a, $3e
    ld b, $3e
    adc a
    jr nz, jr_028_6988

    nop
    ld b, h
    ld l, h
    jr z, jr_028_6981

    db $10
    jr c, jr_028_6974

    ld l, h
    jp nz, $4d28

    ld a, h
    ld a, h
    ld a, [hl]
    ld [hl-], a
    add hl, sp
    ld a, $58
    ld [hl-], a
    jr nz, jr_028_69d8

    ld a, [hl+]
    adc a
    ld a, h
    ld h, b
    ld a, b
    or b
    jr nz, @+$62

    add b
    ld c, a
    rst $38
    rst $38
    add c
    add c
    inc bc
    and l
    and l
    sub c
    sub c
    adc c
    adc c
    dec h
    add hl, hl
    db $dd
    dec l
    rrca

jr_028_6974:
    jr nz, jr_028_6976

jr_028_6976:
    ld b, d
    nop
    inc c

jr_028_6979:
    dec l
    ld bc, $0d01
    ldh a, [rNR33]
    ld c, $20

jr_028_6981:
    dec e
    ld c, $21
    nop
    rst $38
    cp $01

jr_028_6988:
    nop
    ld a, [hl]
    ld bc, $013e

jr_028_698d:
    ld e, $01
    ld c, $01

jr_028_6991:
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld bc, $a31d
    ld bc, $000e
    add b
    nop
    rrca
    rst $38
    rst $38
    add c
    add c
    and l
    and l

jr_028_69a4:
    sub c
    ld e, $91
    adc c
    adc c
    dec h
    add hl, hl
    dec l
    rrca
    jr nz, jr_028_69af

jr_028_69af:
    inc e
    rst $38
    ld a, a
    add b
    ld bc, $2d0a
    ld hl, $01fe
    db $ec
    ld bc, $2d0a
    nop
    inc hl
    add c
    ld hl, $e722
    rst $38
    ld h, c
    cp l
    ld c, b
    jr nz, jr_028_69c9

jr_028_69c9:
    rst $38
    ld a, [hl]
    add c
    ld bc, $c90a
    dec l
    rrca
    db $10
    jr @-$17

    rra
    inc d
    ld a, a
    add b

jr_028_69d8:
    ld hl, $1fff
    inc c
    rrca
    ld a, [bc]
    cp a
    pop hl
    dec a
    cp a
    rrca
    ld a, [bc]
    cp a
    inc a
    ld a, a
    add b
    ld hl, $0c1f
    rrca
    ld a, [bc]
    cp a
    cp $01
    cp $21
    ld h, a
    dec l
    cp a
    rrca
    ld a, [bc]
    cp a
    ld b, [hl]
    nop
    rst $20
    rra
    inc c
    rrca
    ld a, [bc]
    cp a
    cp $01
    ld hl, $3d67
    db $eb
    cp a
    rrca
    ld a, [bc]
    cp a
    rst $38
    ld h, $00
    rra
    inc c
    rrca
    ld a, [bc]
    ld b, b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [$8f]
    ldh a, [$88]
    ld [$b8c0], sp
    add b
    ldh [rNR42], a
    ret nz

    cp a
    add b
    and c
    ld l, $ff
    inc hl
    add b
    add c
    add b
    sbc a
    ld hl, $8a09
    sub c
    add h
    pop af
    ld l, a
    sbc h
    db $e3
    ld d, c
    ld b, $ff
    xor d
    push de
    sub h
    db $eb
    ld h, a
    ld b, b
    add b
    scf
    pop bc
    cp [hl]
    pop hl
    ld [hl], b
    add b
    ld h, b
    ld b, [hl]
    ld hl, $e021
    sbc a
    ld a, a
    add b
    cp [hl]
    sbc h
    and d
    daa
    sbc c
    dec sp
    rst $30
    adc b
    ld d, d
    ld l, a
    rst $38
    cp [hl]
    inc l
    ld a, [de]
    pop bc
    cp $81
    ld hl, $c1af
    dec a
    push de
    inc a
    add b
    pop bc
    ld [hl-], a
    inc l
    xor a
    inc h
    adc b
    rst $30
    inc a
    add b
    call c, $2521
    ld b, a
    adc a
    add c
    cp $34
    add c
    add d
    ld b, c
    dec h
    cp $6f
    ld hl, sp-$79
    inc [hl]
    ld hl, sp-$7c
    add c
    daa
    add a
    ld l, a
    sbc h
    db $e3
    ld [hl], $9c
    and d
    add c
    daa
    db $e3
    ld l, a
    ld d, [hl]
    adc b
    add h
    ld hl, $8b84
    add h
    ld a, [$8021]
    cp $84
    cpl
    pop hl

jr_028_6a9c:
    sbc [hl]
    pop hl
    sub d
    ld hl, $f681
    ld h, $81
    add [hl]
    ld hl, $8780
    rst $28
    dec h
    ret nz

    inc b
    cp a
    ret nz

    and c
    add b
    pop hl
    cpl
    add b
    rst $38
    nop
    add h
    db $e3
    and [hl]
    pop bc
    cp [hl]
    pop bc
    sbc h
    db $e3
    sbc b
    inc h
    db $e3
    sbc h
    cpl
    ld d, a
    cp a
    xor d
    add c
    jr nc, jr_028_6a9c

    add c
    and e
    ld a, a
    adc d
    pop af
    sub h
    pop bc
    jr nc, @-$54

    pop bc
    and e
    ld l, a
    sub h
    db $eb
    xor d
    push de
    db $e4
    dec h
    and a
    cpl
    xor b
    rst $10
    ld hl, $d0af
    sbc h
    ld hl, $dfa0
    ld hl, $7f25
    add l
    ldh a, [rSC]
    ld a, [$fd80]
    add b
    or b
    rst $08
    ld hl, $42b7
    ret z

    ld l, a
    push de
    add b
    xor d
    add b
    inc hl
    add b
    inc b
    cp $81
    cp $fd
    add d
    ld l, a
    call nc, $2481
    xor d
    add c
    and e
    ldh [$9f], a
    ld l, a
    cp a
    ret nz

    sbc h
    ld h, c
    cp b
    rst $00
    ld hl, $202b
    adc a
    ldh a, [$fc]
    dec h
    scf
    ld hl, $6927
    jr nz, @-$1f

    and b
    ld sp, hl
    ld c, h
    ld b, c
    daa
    ld l, c
    cpl
    cp b
    rst $00
    ld hl, $3780
    add d
    db $fc
    add e
    db $fc
    cp l
    ret nz

jr_028_6b31:
    cp d
    ld h, h
    ret nz

    cpl
    dec hl
    add b
    db $e3
    ld hl, $8081
    ld [bc], a
    add c
    adc d
    add l
    adc d
    add h
    cp e
    ld l, a
    add [hl]
    ld b, a
    ld sp, hl
    ld hl, $81fe
    ldh [rSTAT], a
    dec hl
    ld l, a
    ld [hl+], a
    pop hl
    sbc [hl]
    ld hl, $f688
    add c
    ld [hl-], a
    cp $20
    add d
    db $fc
    cpl
    adc d
    pop hl
    ret nz

    cp a
    add b
    nop
    cp a
    jp nz, $c4b9

    cp c
    add d
    cp c
    ret nc

    ld c, c
    adc a
    cpl
    adc b
    rst $30
    and c
    cp [hl]
    pop bc
    ld h, c
    add h
    cpl
    xor d
    add c
    call nc, $2381
    push de
    add b
    inc l
    xor d
    add b
    inc hl
    add b
    ld l, $2f
    pop bc
    sub h
    ld a, b
    pop bc
    inc hl
    ld [hl], e
    inc hl
    adc a
    push de
    sub h
    db $eb
    ret nz

    inc bc
    ld a, [bc]
    cpl
    xor a
    ret nc

    and l
    ret nc

    xor d
    ret nc

    nop
    add h
    db $d3
    add b
    rst JumpTable
    add c
    sbc $83
    ret nz

    sub b
    cpl
    or a
    ret z

    ld hl, $cfb0
    add b
    rst $38
    jr jr_028_6b31

    ld hl, sp-$01
    inc h
    ld hl, $fdff
    add d
    sub b
    ld hl, $fe81
    jr z, @-$02

    add e
    ld [$8080], a
    ld c, [hl]
    rst $38
    ldh [$9f], a
    ld [$e491], a
    sub c
    inc bc
    adc d
    pop af
    add h
    pop af
    xor d
    add c
    ld l, a
    inc hl
    inc c
    add e
    db $fc
    cp a
    ret nz

    and c
    xor a
    ldh [$9f], a
    jp z, $8144

    adc a
    ldh a, [$2f]
    sbc a
    ld l, $e0
    xor b
    xor l
    ldh a, [$2e]

jr_028_6be2:
    adc a
    cpl
    add d
    db $fc
    add b
    add b
    ld hl, $d8ff
    add a
    ldh a, [$87]
    adc b
    rst $30
    ld c, b
    adc [hl]
    ld e, a
    add h
    cp e
    ld hl, $e087
    add [hl]
    ld b, e
    ldh [rNR44], a
    add c
    db $ec
    add e
    adc h
    cpl
    dec sp
    nop
    sbc b
    rst $20
    db $db
    and h
    pop bc
    cp h
    jp nz, $10bc

    db $fd
    add b
    xor d
    inc l
    rst $38
    add c
    db $fc
    xor $07
    add b
    db $db
    add b
    xor l
    add b
    ld a, [hl+]
    ld h, c
    jr nz, jr_028_6c1e

jr_028_6c1e:
    or b
    adc a
    ldh [$8f], a
    cp h
    add c

jr_028_6c24:
    sub $81
    ld [$f18a], sp
    adc [hl]
    pop af
    ld l, a
    cp [hl]
    pop bc
    call c, $a200
    ld [$eb94], a
    sub h
    ret


    or [hl]
    sbc h
    ld [hl], b
    db $e3
    dec hl
    cpl
    inc sp
    ret nz

    cp [hl]
    ld [c], a
    sbc h
    add b
    rrca
    dec c
    cp a
    ldh [$9f], a
    xor $91
    adc $b1
    ld hl, $e19e
    ld l, a
    sbc h
    and d
    add b
    cp [hl]
    inc sp
    ld c, $c1
    cp [hl]
    db $e3
    sbc h
    ld a, [hl-]
    daa
    ld e, a
    add a
    jr nc, jr_028_6be2

    add h
    inc hl
    add hl, hl
    cp b
    rst $00
    xor e
    call nc, $a838
    rst $10
    ld e, a
    jr c, jr_028_6cad

    sbc l
    add b
    xor d
    pop af
    dec a
    ld b, b
    ld e, a
    jr nz, @-$40

    sbc h
    and d
    inc hl
    ldh a, [$50]
    inc hl
    ld l, a
    ld h, c
    sbc $80
    rst JumpTable
    adc h

jr_028_6c81:
    ld c, [hl]
    db $d3
    ld hl, $d08f
    rst $08
    and $48
    adc a
    ld h, a
    ldh a, [rNR42]
    ld h, $e0
    sbc a
    ld h, c
    ld l, a
    ld c, [hl]
    jr jr_028_6c24

    add a
    ld hl, sp-$5f
    ld l, a
    adc d
    ldh a, [$8d]

jr_028_6c9c:
    ld bc, $e4f0
    sub b
    xor $90
    db $ed
    sub b
    ccf
    ret nz

    ld hl, $832f
    adc h
    add c
    adc [hl]
    add l

jr_028_6cad:
    adc d
    push af
    ld h, c
    ccf
    ld hl, $802f

jr_028_6cb4:
    jr nz, jr_028_6cb4

    add c
    jr c, @+$01

    ret c

    ld d, b
    ld c, a
    ld b, c
    cp a
    ret nz

    cp e
    ld e, b
    ret nz

    inc hl
    xor a
    ld b, e
    xor a
    ldh [$9f], a
    xor $4c
    sub c
    inc hl
    and b
    sub l
    inc hl
    cpl
    add c
    add c
    inc bc
    and l
    and l
    sub c
    sub c
    adc c
    adc c
    dec h
    add hl, hl
    call nc, $bf2d
    add b

jr_028_6cdf:
    jr nz, jr_028_6cdf

    ld h, c

jr_028_6ce2:
    db $f4
    adc d
    add l
    xor a
    sbc a
    ldh [$97], a
    ldh [rNR44], a
    sbc l
    ld b, e
    add c
    ld l, a
    xor $91
    call c, $fa83
    add c
    and l
    ret nz

    cpl
    ld d, b
    add b
    ld a, [$f480]
    add b
    ret


    jr jr_028_6c81

    and d
    add b
    jr nz, jr_028_6d53

    sbc a
    adc a
    sub b
    add hl, bc
    adc h
    sub e
    add b
    sbc [hl]
    ld hl, $f38c
    ld hl, $2f91
    rst JumpTable
    and b
    ld hl, $e29d
    ei
    add hl, sp
    jr jr_028_6c9c

    add e
    db $fc
    ld hl, $8b2f
    ret nc

    adc a
    add h
    ld b, c
    add b
    rst JumpTable
    add b
    ret nz

    ld h, c
    rst $38
    nop
    nop
    db $e3
    inc e
    push bc
    ld [hl+], a
    and [hl]
    ld b, c
    cp [hl]
    ld b, c
    inc c
    sbc h
    ld h, e
    pop bc
    ld a, $2b
    ccf
    db $e3
    sbc h
    nop
    push bc
    and d
    and [hl]
    pop bc
    cp [hl]
    pop bc
    sbc h
    db $e3
    ldh [rNR50], a
    dec hl
    cpl
    rst $38
    add b
    rst $28
    sub b
    db $dd
    ccf
    add d
    ei

jr_028_6d53:
    push bc
    ld c, [hl]
    add c
    ld [hl+], a

Call_028_6d57:
    ld b, l
    ld b, e
    sub e
    jr nz, jr_028_6ce2

    ld sp, hl
    ld h, c
    cp $81
    ld c, a
    inc hl
    ld b, b
    pop af
    cpl
    adc b
    rst $30
    rst $28
    sub b

Call_028_6d69:
    adc e
    sub b
    ld b, $8f
    ldh a, [$9f]
    add b
    sbc l
    ld d, d
    cpl
    cp h
    ld h, l
    jp $2166


    add c
    cp $24
    ei
    ld c, a
    pop bc
    add hl, sp
    xor a
    ldh [$9f], a
    cp a
    add b
    rst $30
    ld c, a
    nop
    add [hl]
    reti


    adc a
    ret nc

    adc e
    call nc, $df80
    ld [bc], a
    adc b
    ret nz

    add d
    ret nz

    and b
    ret nz

    cpl
    db $fc
    nop
    add d
    call c, $f4a2
    adc d
    sbc h
    ld [c], a
    sbc h
    ld a, [de]
    and d
    sub h
    xor d
    inc hl
    cpl
    add b
    ld hl, $9ce7
    ld hl, $bcc3
    ld hl, $8f6a
    cp $82
    nop
    db $fc
    ei
    add h
    ld sp, hl
    add [hl]
    db $fc
    add e
    cp $40
    add c
    ld c, a
    pop bc
    ret nz

    and d
    ld [c], a
    sub h
    db $e3
    ld b, $94
    pop bc
    or [hl]
    add b
    db $e3
    dec hl
    cpl
    adc a
    dec b
    ldh a, [$81]
    cp $a1
    jp nc, $de41

    ld hl, $bf24
    ret nz

    cpl
    jp $0184


    inc c
    rst $38
    nop
    ld b, b
    cp $81
    pop hl
    nop
    ret nz

    nop
    ld b, b
    nop
    adc b
    jr nz, jr_028_6e0c

    nop
    rrca
    pop bc
    inc bc
    nop
    ld bc, $4f80
    rst $38
    rst $38
    add b
    sbc h
    add h
    and d
    and [hl]
    ld bc, $bec1
    pop bc
    sbc h
    db $e3
    add b
    cp [hl]
    dec hl
    jp $204f


    sub b
    and b
    add d
    add h

jr_028_6e0c:
    push bc
    cpl
    inc bc
    cp a
    ret nz

    adc h
    di
    and c
    sbc $61
    add hl, hl
    add b
    ld c, [hl]
    rst $38
    db $e4
    sub c
    ld [$e791], a
    sub b
    inc bc
    db $ed
    sub b
    rst $28
    sub b
    xor $91
    ld hl, $0050
    add b
    ldh [$9f], a
    xor [hl]
    sub c
    and b
    sbc a
    and b
    ld [hl], b
    sub l
    daa
    dec hl
    ld l, a
    pop bc
    cp [hl]
    ret nz

    and e
    dec a
    ret nz

    and b
    and c
    ld c, [hl]
    ld h, c

jr_028_6e41:
    jr nz, jr_028_6e41

    ld h, c
    jr nz, @-$02

    add d
    ld c, a
    ret nz

    add h
    ret nz

    sub b
    ret nz

    add sp, -$6b
    ld b, c
    ld c, a
    cp [hl]
    ld hl, $a29c
    sbc h
    ld d, c
    db $e3
    ld hl, $4394
    ld hl, sp-$80
    ldh a, [$81]
    add hl, hl
    ret nz

    add b
    add b
    ret nz

    ccf
    adc b
    rst $30
    ld hl, $be25
    pop bc
    and c
    add d
    db $fd
    cpl
    add b
    add c
    nop
    cp l
    ret nz

    cp a
    ret nz

    add e
    db $fc
    add e
    add h
    ret nz

    cpl
    daa
    add [hl]
    ld hl, sp-$79
    adc b
    add e
    adc b
    db $e4
    inc hl
    ld h, c
    cpl
    ret nz

    add a
    ld hl, $87e0
    inc b
    db $e3
    add b
    rst $38
    add b
    cp l
    ld b, e
    ldh a, [rIF]
    nop
    rst $08
    jr nc, @+$21

    ldh [$e1], a
    ld e, $fe
    ld bc, $f802
    rlca
    rst $20
    jr @+$01

    nop
    dec hl
    db $e3
    ld b, e
    inc e
    add hl, hl
    rst $00
    jr c, jr_028_6eec

    ret nz

    dec hl
    add c
    nop
    rst $38
    cp $81
    db $ec
    sub d
    jp c, $fb84

    ld b, $84
    jp hl


    sub [hl]
    call c, $2b83
    cpl
    cp a
    nop
    ret nz

    rst JumpTable
    and b
    db $ed
    sub d
    db $eb
    sub b
    rst $08
    dec b
    or b
    sbc l
    ld [c], a
    cp e
    ret nz

    cpl
    add b
    ld d, c
    sub d
    pop hl
    add a
    ld hl, sp+$2f
    xor $91
    and c
    adc [hl]
    inc b
    pop af
    adc d
    pop af
    add h
    pop bc
    cpl
    rst JumpTable
    add b
    ld [bc], a
    db $fd
    add b
    add e
    db $fc
    cp e

jr_028_6eec:
    call nz, $8323
    ld h, c
    call nc, $2f23
    ret nz

    and c
    ret nz

    cp a
    ld h, c

Call_028_6ef8:
    dec l
    ei
    add b
    add hl, sp
    rst $38
    ld hl, $8020
    add hl, hl
    add hl, bc
    ldh [$9f], a
    xor $91

jr_028_6f06:
    inc hl
    ret nz

    sub l
    inc hl
    add a
    ld l, $9f
    ldh [$83], a
    db $fc
    ld hl, $217a
    ret nz

    dec hl
    cpl
    cp $81
    sbc $81
    ld a, [$d081]
    dec h
    ld hl, $43ee
    ld hl, sp-$79
    rst $00
    cp b
    add [hl]
    dec [hl]
    db $e3
    sbc h
    db $fc
    add e
    ld e, [hl]
    ld h, c
    rst $38
    nop
    db $fc
    add d
    call c, $f482
    add d
    sbc h
    ld [c], a
    inc c
    sbc h
    and d
    sub h
    and d
    inc hl
    cpl
    add b
    rst $00
    ld [$a1c0], sp
    ldh [$91], a
    ld hl, $b1c0
    add b
    ld de, $80e1
    pop bc
    cpl
    add l
    adc b
    add a
    ld b, c
    ld b, $85
    sbc b
    add a
    sbc b
    add [hl]
    ld b, e
    cpl
    rst $38
    adc c
    inc [hl]
    cp [hl]
    ret nz

    and e
    ld hl, $a2c1
    daa
    add b
    ld hl, $c738
    ldh [$1f], a
    ld a, a
    add b
    ld bc, $fe00
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    cp $64
    ld bc, $2127

jr_028_6f7a:
    ret nz

    ccf
    daa
    rra
    ldh [$98], a
    jr z, jr_028_6f7a

    rlca
    dec hl
    jr nz, jr_028_6f06

    add c
    add b
    nop
    and d
    jp nz, $8384

    add h
    add c
    sub [hl]
    and b
    ld h, b
    add e
    dec hl
    ld c, a
    ret nz

    ret nz

    and c
    ld [c], a
    sub b
    inc bc
    ldh [$90], a
    ret nz

    or d
    add h
    ldh [$2b], a
    cpl
    inc hl
    add a
    ld hl, sp+$41
    adc b
    add b
    adc a
    and c
    ld e, a
    ld c, h
    rst $00
    ld h, c
    add e
    db $fc
    and c
    ld c, a
    ret nz

    ret nz

    nop
    and c
    ld [c], a
    sub b
    ldh [$90], a
    ret nz

    or b
    add b
    ld a, [de]
    db $e3
    add c
    jp nz, $214f

    pop hl
    ld hl, $70c0
    cp a
    ld hl, $8f6a
    rst $38
    sbc h
    db $e3
    pop bc
    inc e
    cp [hl]
    pop bc
    xor d
    inc hl
    ld a, [hl+]
    ld a, [bc]
    rst $38
    rst $38
    sbc a
    ldh [rNR42], a
    sub a
    ld b, e
    sbc l
    ldh [rSCX], a
    ld hl, $fe2f
    add c
    sbc $81
    ei
    ld bc, $ff80
    add b
    ld hl, sp-$79
    ld hl, sp-$7c
    inc hl
    adc a
    ld c, b
    rst $38
    add e
    db $fc
    ld l, l
    inc hl
    dec a
    dec hl

jr_028_6ffa:
    add b
    dec h
    cp [hl]
    pop bc
    call c, $eaa2
    sub h
    db $eb
    inc b
    sub h
    ret


    or [hl]
    sbc h
    db $e3
    dec hl
    rst $38
    nop
    nop
    ld a, $c1
    ld e, h
    ld [hl+], a
    ld l, d
    inc d
    db $eb
    inc d
    ld [$36c9], sp
    inc e
    db $e3
    dec hl
    rst $38
    rst $38
    adc a
    db $10
    ldh a, [$8b]
    ldh a, [rNR44]
    cp l
    ret nz

    xor a
    ret nz

    ld [$c7b8], sp
    cp b
    call nz, $ff2f
    add b
    db $fd
    ld b, $80
    rst JumpTable
    add b
    rst $30
    add b
    daa
    add d
    nop
    rlca
    rst JumpTable
    jr nz, jr_028_6ffa

    ld [bc], a
    ei
    push bc
    dec l
    ld [hl-], a
    ld b, $df
    and b
    cp l
    add d
    ei
    push bc
    dec l
    rst $38
    ld bc, $bfff
    ret nz

    cp e
    call nz, $c0b7
    push hl
    add a
    cpl
    add b
    cp a
    sbc [hl]
    and c
    ld hl, $4125
    jp nz, $2f40

    cp [hl]
    pop bc
    xor [hl]
    pop bc
    inc hl
    cp d
    ld sp, hl
    ld b, e
    inc l
    ld c, [hl]
    ld b, e
    ld hl, $f08f
    ld h, c
    adc c
    rrca
    add hl, bc
    call nz, $fc80
    ld l, e
    ld hl, sp-$79
    ld [hl], b
    cp b
    ld c, c
    add c
    ld b, c
    ld h, a
    ld l, h
    rst $38
    call c, $0c83
    db $fc
    add e
    db $f4
    add e
    ld h, l
    sub c
    rst $38
    and e
    nop
    call c, $e285
    and [hl]
    pop bc
    cp [hl]
    pop bc
    sbc h
    add hl, de
    db $e3
    add c
    cp $2b
    cpl
    ld hl, sp-$79
    ld hl, $fe64
    ld a, [hl+]
    pop bc
    rst $38
    nop
    ld bc, $fe0a
    nop
    ld b, h
    db $fc
    dec h
    rst $38
    add b
    db $fc
    ld hl, $8ff0
    add e
    ld hl, $cfb0
    cp a
    ret nz

    add b
    ld l, $2f
    ld c, c
    sbc a
    ld hl, $f881
    ld hl, $f887
    ld a, [hl+]
    add h
    ld l, a
    ld hl, sp-$7c
    add sp, -$7c
    inc hl
    ret c

    add h
    inc bc
    ldh [$9c], a
    ldh [$90], a
    add b
    ldh a, [$5f]
    ld hl, $c113
    sbc h
    pop bc

jr_028_70d8:
    inc hl
    add b
    push de
    ld b, e
    ld l, $40
    nop

jr_028_70df:
    and c
    di
    nop
    pop hl
    nop
    sub c
    nop
    ld [c], a
    jr nz, jr_028_70d8

    ld h, c
    rst $00
    nop
    add e
    dec h
    rst $38
    ld b, h
    add b
    nop
    ld a, [bc]
    cp a
    sbc [hl]
    and c
    ld c, a
    pop bc
    sbc h

jr_028_70f9:
    ld c, [hl]
    pop bc
    inc hl
    add b
    push de
    ld b, e
    ld b, b
    ld c, a
    rst $38
    inc hl
    add a
    ld hl, sp+$21
    adc l
    ldh a, [$8f]
    ld b, c
    ld c, [hl]
    db $d3
    ld c, a
    jr z, jr_028_70df

    ld c, h
    db $fc
    add e
    ld hl, $80af
    ld h, c
    or c
    ret nz

    or e
    ret nz

    and d
    ret nz

    add [hl]
    ld b, b
    ret nz

    rrca
    add hl, bc
    add b
    or e
    add b
    ld [c], a
    add b
    add $c0
    jr z, jr_028_70f9

    cp $81
    sbc $81
    ld a, [$c681]
    dec h
    adc a
    db $e3
    add c
    ld [c], a
    ld b, c
    inc l
    cp $20
    cp a
    ret nz

    cp a
    sub $a9
    sub d
    db $ed
    cp d
    db $10
    push bc
    add d
    db $fd
    rst JumpTable
    rst $38
    sbc h
    and d
    add b
    dec e
    cp [hl]
    add b
    xor d
    ld b, e
    ld a, [hl+]
    dec l
    sbc a
    ld hl, $9c00
    add b
    or c
    add b
    or e
    add b
    ld [c], a
    add b
    ld [hl], b
    add $6f
    ld a, a
    rrca
    db $10
    add c
    or b
    add c
    or d
    inc b
    add c
    ld [c], a
    add c
    adc $81
    ld c, a
    rst $08
    add a
    ld d, h
    ret z

    ld h, c
    add l
    ld h, l
    adc b
    ld c, a
    ldh a, [$e0]
    ld bc, $c090
    sbc [hl]
    db $fc
    add d
    db $f4
    add e
    ld a, [hl+]
    adc b
    ld b, c
    rst $38
    add c
    add d
    ld b, c
    cp [hl]
    sbc a
    and b
    dec h
    sbc a
    ldh [$af], a
    sbc [hl]
    and c
    ld hl, $4396
    cp b
    ld hl, $439a
    cpl
    inc sp
    ld hl, sp-$79
    ldh [rNR23], a
    sbc [hl]
    ldh [$92], a
    and c
    ld l, a

jr_028_71a3:
    adc b
    rst $30
    adc b
    ld e, h
    sub h
    ld b, c
    or a
    ld h, c
    ld c, [hl]
    ld hl, $83c3
    nop
    db $ec
    xor h
    db $d3
    adc h
    ld a, [c]
    adc h
    jp nc, Jump_028_4980

    call z, $e32f
    sbc h
    ld hl, $bec1
    ld d, l
    db $10
    rst $38
    xor d
    push de
    ld b, h
    rst $38
    sbc e
    add b
    and [hl]
    nop
    add b
    call c, $b180
    add b
    or e
    add b
    ld [c], a
    jr nz, @-$7e

    add $4f
    sbc d
    add c
    and [hl]
    add c
    call c, $8100
    or b
    add c
    or d
    add c
    ld [c], a
    add c
    add $40
    add c
    cpl
    cp a
    ret nz

    and e

jr_028_71eb:
    call c, $d4ab
    ld d, $89
    or $9d
    ld l, $fe
    dec hl
    cpl
    cp $80
    dec [hl]
    cp c
    sub $a9
    sub d
    db $ed
    cp d
    push bc
    inc sp
    add d
    db $fd
    dec hl
    cpl
    add b
    db $e3
    ld b, c
    ld b, b
    adc b
    jr z, jr_028_71eb

    add b
    ei
    dec h
    rst $38
    adc h
    pop bc
    nop
    adc b
    pop bc
    sbc b
    pop bc
    and d
    pop bc
    add [hl]
    pop bc
    ld [hl], c
    add h
    ld b, a
    ld e, a
    jr nz, jr_028_71a3

    add b
    sub b
    inc h
    ld [bc], a
    di
    adc h
    pop af
    adc h
    db $d3
    adc h
    ld c, a
    add c
    ld [$8580], sp
    add b
    sub c
    dec h
    cp $81
    ld a, [$8112]
    sbc $81
    cpl
    add a
    adc b
    ld hl, $7080
    adc a
    ld hl, $2fa7
    add e
    db $fc
    add e
    add h
    ld sp, $8482
    inc hl
    daa
    rst $38
    add b
    add b
    ld l, $05
    rst $38
    pop bc
    cp [hl]
    pop bc
    and d
    add c
    cp [hl]
    xor a
    ld hl, $a19e
    and c
    add b
    cp a
    add b
    add c
    ld l, a
    ld [$9ee0], sp
    ldh [$9c], a
    ld b, c
    sbc a
    ld hl, sp-$79
    and b
    ld hl, $50ff
    sbc a
    and b
    sbc l
    and d
    sbc e
    ld bc, $9fa0
    ldh [$9b], a
    db $e4
    sub a
    ldh [$6f], a
    nop
    add b
    jp $ec83


    xor h
    db $d3
    adc h
    ld a, [c]
    inc h
    adc h
    jp nc, $8021

    call z, $be2f
    pop bc
    add l
    ld h, c
    xor d
    push de
    adc b
    rst $30
    ld hl, $5f80
    nop
    jp $8088


    adc b
    and b
    sbc h
    adc c
    or [hl]
    inc b
    sbc h

jr_028_72a4:
    and d
    call c, $e2a2
    ld c, a
    add b
    add a
    nop
    add [hl]
    reti


    ret c

    and a
    sbc b
    push hl
    sbc b
    and l
    sbc e
    ld hl, $9980
    ld c, a
    ld h, c
    ret nz

    ld b, c
    ld b, a
    call c, Call_028_41a2
    add c
    ld b, c
    rst $08
    inc hl
    rst $28
    add b
    ld [hl+], a
    sbc h
    db $e3
    ld hl, $80fd
    rst JumpTable
    or d
    pop bc
    ldh [$81], a
    ld c, d
    cp a
    di
    adc h
    pop bc
    cp [hl]
    pop bc
    ld l, c
    and d
    add c
    daa
    cp [hl]
    ld [hl], d
    add b
    ret nz

    ld b, c
    add h
    rra
    add hl, bc
    add b
    cp [hl]
    sbc h
    and d
    inc hl
    add b
    xor d
    ld hl, sp+$43
    ld l, [hl]
    inc hl
    and b
    rra
    ld a, [bc]
    sbc h
    add h
    and d
    inc bc
    and [hl]
    pop bc
    cp [hl]
    pop bc
    sbc h
    db $e3
    rst JumpTable
    ld hl, $c04d
    cp l
    cp $81
    ld hl, $cf4f
    ld b, c
    add b
    ld sp, $bfc0
    ret nz

    xor a
    ret nz

    cp l
    ret nz

    add b
    ld c, a
    xor d
    add b
    db $dd
    sbc h
    and d
    sbc h

jr_028_7318:
    db $e3
    cp $23
    daa
    dec hl
    ld c, a
    ld h, c
    ld b, b
    inc h
    rst JumpTable
    jr nz, jr_028_72a4

    ei
    dec h
    rst $38
    sbc c
    ret nz

    and d
    ret nz

    add hl, bc
    adc [hl]
    ret nz

    sbc b
    ret nz

    daa
    or d
    ret nz

    ld c, [hl]
    add d
    ld a, e
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    ld hl, $c2bb
    ld b, e
    ld c, a
    adc a
    add b
    adc b
    ldh a, [rNR42]
    adc a
    jr nc, jr_028_7318

    adc a
    inc hl
    inc l
    adc c
    add b
    jp nc, $0080

    add [hl]

jr_028_7351:
    add b
    sbc h
    add b
    or c
    add b
    or e
    add b
    ld b, b
    ld [c], a
    ld c, c
    add hl, bc
    nop
    ld d, d
    nop
    add [hl]
    nop
    nop
    sbc h
    nop
    ld sp, $3300
    nop
    ld h, d
    nop
    ld bc, $0046
    add b
    add b
    db $e3
    add b
    rst $38
    ld b, c
    ld d, c
    rst JumpTable
    ld b, e
    db $fd
    ld b, e
    jr c, jr_028_737a

jr_028_737a:
    rst $38
    pop bc
    dec d
    rst JumpTable
    nop
    db $fd
    dec bc
    add hl, bc
    db $dd
    add l
    cp e
    ld h, l
    ld b, b
    add b
    and c
    and a
    add b
    db $fd
    add b
    adc $80
    pop hl
    jr nz, jr_028_7351

    ld hl, $00f4
    xor e
    nop
    ld h, b
    ld b, d
    rst $38
    jr nz, jr_028_739c

jr_028_739c:
    db $fd
    nop
    rst JumpTable
    ld d, c
    ei
    cpl
    nop
    cp a
    ld a, c
    add b
    rrca
    rrca
    ld d, b
    ld h, c
    ld [hl+], a
    inc bc
    db $f4
    add e
    call c, $fc82
    add e
    rrca
    ld a, [bc]
    ld b, l
    ld h, d
    add h
    ld hl, $fc28
    add d
    db $ec
    ld d, a
    cp h
    ld h, h
    add e
    ccf
    add hl, hl
    ret nz

    cp [hl]
    cpl
    ei
    add b
    ld a, b
    xor $7b
    ld b, c
    and h
    dec sp
    db $ec
    add e
    cp e
    add b
    ld de, $ff0a
    adc b
    db $f4
    add b
    db $fd
    ldh [$9d], a
    sub e
    inc hl
    add b
    pop af
    ld hl, $81c0
    ld d, d
    jr nz, @+$07

    cp $fc
    add d
    call c, $2382
    db $f4
    ld b, e
    add l
    cpl
    ret nz

    adc a
    rst $00
    adc b
    ld h, c
    push bc
    add l
    db $fc
    cpl
    cp e
    ld a, l
    ld h, a
    cpl
    ld [hl], a
    ret nz

    adc a
    or b
    add c
    add b
    ld hl, $ec7f
    add d
    add b
    cp $fc
    add c
    ld b, b
    cpl
    ld [hl+], a
    ld h, c
    ld [hl+], a
    rst $28
    add b
    ld h, b
    db $fd
    xor b
    rst $08
    ret c

    add a
    ld hl, sp-$80
    ld hl, sp+$43
    add a
    rrca
    ld a, [bc]
    add e
    db $fc
    add e
    add h
    ld hl, $0a0f
    pop hl
    ld b, l
    ld b, e
    ld b, b
    add b
    rst $30
    add b
    db $dd
    ld c, h
    inc bc
    ldh a, [$8f]
    ret nz

    cp b
    ret nz

    and b
    ld l, a
    and c
    ld l, c
    adc l
    jr nc, @+$41

    sbc a
    ld l, $83
    call nz, $a121
    dec l
    rst JumpTable
    ld e, a
    ldh a, [$88]
    add b
    ld hl, sp+$7f
    ld h, c
    ei
    ld c, l
    dec h
    add [hl]
    ld hl, sp-$79
    adc b
    ld hl, $6fc2
    ld hl, $bec1
    pop bc
    and d
    inc hl
    ret


    ld [de], a
    or [hl]
    push de
    xor d
    ld l, $87
    ret z

    ld hl, $01bd
    ret nz

    cp a
    ret nz

    and c
    sbc $a1
    jp nc, $c021

    cpl
    ld [hl], l
    rst $28
    add b
    rst $38
    add b
    ldh a, [$8f]
    ld c, $d0
    adc b
    ldh a, [$88]
    cpl
    ld [hl], l
    ld h, c
    cp a
    ld a, l
    ret nz

    ld hl, $2036
    inc sp
    ld hl, $43e0
    ld c, a
    or b
    ld b, e
    add b
    ld hl, sp+$2f
    inc sp
    ld h, c
    ld [hl+], a
    rla
    ldh a, [$8f]
    ret nc

    ld sp, $0f8b
    ld a, [bc]
    ld b, l
    jr nz, jr_028_74f3

    ldh [rIF], a
    rrca
    or e
    rrca
    rrca
    ld c, b
    ldh a, [$8b]
    ldh [rTMA], a
    adc e
    ldh a, [$88]
    or b
    adc b
    inc hl
    ld hl, $48c0
    cp b
    cpl
    adc b
    ldh [$59], a
    cp a
    ret nz

    cp a
    or b
    inc hl
    sub d
    ld a, [hl]
    dec hl
    or e
    add h
    di
    add d
    ld b, h
    ldh [rHDMA5], a
    db $e3
    sub b

jr_028_74c5:
    add e
    adc a
    ld hl, sp-$7e
    dec b
    ld hl, sp-$80
    sbc c
    call nz, $2399
    and b
    inc hl
    ld b, b
    sbc e
    cpl
    and c
    add b
    adc b
    add b
    add b
    cp $a4
    ld hl, $4381
    adc b
    ret nz

    ld e, a
    db $db
    and b
    nop
    db $db
    add h
    db $db
    add b
    reti


    add d
    reti


    adc b
    db $10
    pop bc
    and b
    pop bc
    cpl
    add c

jr_028_74f3:
    ret nz

    add h
    ret nz

    dec c
    sub b
    ret nz

    add d
    ret nz

    dec sp
    add hl, hl
    add b
    ld e, a
    ld [bc], a
    add h
    pop bc
    sub b
    pop bc
    add d
    pop bc
    ld l, l
    and h
    add h
    adc a
    add b
    ld hl, sp-$7e
    ld hl, sp+$23
    add b
    add b
    dec d
    adc b
    add b
    and d
    inc h
    add b
    ld c, a
    db $eb
    ld b, c
    nop
    sbc h
    add b
    cp [hl]
    sub h
    db $eb
    and d
    db $dd
    or [hl]
    ld a, h
    ret


    cpl
    inc hl
    inc [hl]
    inc hl
    ld hl, $c1be
    ldh [$27], a
    ld hl, $0044
    jr nz, jr_028_74c5

    ld d, a
    ld e, b
    ld b, l
    sub a
    sbc b
    ldh [rLY], a
    nop
    ld [de], a
    dec sp
    inc sp
    ld bc, $0302
    inc [hl]
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc b
    dec c
    ld c, $0f
    ld h, d
    ld d, a
    nop
    inc c
    ld h, a
    ld l, b
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    jr jr_028_757a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_028_75db

    ld h, a
    nop
    inc c
    ld [hl], a
    ld a, b
    jr nz, jr_028_7591

    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_028_75a2

    ld a, [hl+]

jr_028_757a:
    ld bc, $2c2b
    dec l
    ld l, $2f
    add d
    ld [hl], a
    nop
    inc c
    nop
    add h
    add h
    jr nc, jr_028_75ba

    ld [hl-], a
    ld c, d
    jr c, @+$37

    ld b, b
    jr c, jr_028_75b0

    add hl, sp

jr_028_7591:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $18
    ccf
    adc b
    add a
    nop
    inc c
    ld e, a
    ld l, d
    ld b, d
    ld b, e
    nop
    ld b, h

jr_028_75a2:
    ld h, h
    reti


    rst $20
    rst $20
    jp c, $4bf4

    ld [$4d4c], sp
    ld c, [hl]
    ld c, a
    ld a, a
    db $e4

jr_028_75b0:
    push hl
    and $01
    db $e4
    db $e4
    pop af
    ld a, [c]
    di
    db $f4
    db $f4

jr_028_75ba:
    ld a, a
    nop
    ld d, d
    ld d, e
    ld d, h
    ld [hl], h
    db $db
    call c, $dedd
    ld [bc], a
    rst JumpTable
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld c, c
    ld a, a
    add sp, $00
    jp hl


    ld [$eceb], a
    push af
    or $f7
    ld hl, sp+$00
    ld sp, hl
    ld c, b
    add a
    scf

jr_028_75db:
    ld e, a
    and d
    ld h, e
    ld e, d
    nop
    ld b, l
    ld b, [hl]
    ld c, c
    ld c, d
    ldh [$e1], a
    ld l, e
    ld l, h
    ld [de], a
    ld l, l
    ld l, [hl]
    ld l, a
    ccf
    scf
    ld b, c
    ld c, l
    db $ed
    ld b, b
    xor $44
    ld a, [$87fb]
    ld c, b
    ld b, a
    ld [hl], e
    nop
    ld e, c
    ld a, c
    ld a, d
    ld d, l
    ld d, [hl]
    ld c, d
    sub [hl]
    ld [c], a
    nop
    db $e3
    ld a, e
    ld a, h
    jr c, jr_028_7687

    ld a, a
    adc b
    ld c, b
    inc h
    ld d, b
    ld d, c
    ld c, l
    rst $28
    ldh a, [rLY]
    db $fc
    db $fd
    inc b
    ld c, b
    add a
    ld h, b
    ld h, c
    ld h, b
    ccf
    ld h, l
    ld h, [hl]
    nop
    adc c
    ld c, c
    ld e, c
    adc d
    adc e
    ld c, d
    adc l
    adc [hl]
    db $10
    ld l, c
    add e
    add h
    nop
    inc c
    add a
    add a
    sub b
    add b
    ld b, b
    ld [hl], c
    ccf
    ld [hl], l
    db $76
    adc c
    ld l, c
    ld a, l
    sbc c
    ld [$9c9b], sp
    ld c, c
    ld c, c
    rra
    ld [de], a
    ld [hl], b
    ld [hl], c
    sub [hl]
    nop
    ld e, d
    add l
    add [hl]
    and [hl]
    and a
    xor b
    xor c
    adc h
    ld c, h
    ld c, d
    ccf
    adc a
    adc b
    ld [hl-], a
    nop
    dec c
    sub b
    add b
    nop
    add c

jr_028_7659:
    sub e
    sub h
    sub l
    ld e, c
    or [hl]
    or a
    cp b
    nop
    cp c

jr_028_7662:
    ld l, c
    ld l, d
    sbc l
    sbc [hl]
    sbc a
    push de
    sub $c1
    nop
    inc c
    ld e, a
    ld c, c
    sub c
    ld e, d
    ld e, d
    sub [hl]
    ld b, d
    nop
    xor l
    ld c, d
    ld c, d
    ret


    xor [hl]
    xor [hl]
    xor a
    ret nc

    ld h, b
    pop de
    nop
    inc c
    ccf
    and b
    and c
    and d
    and e
    and h
    ld b, c

jr_028_7687:
    and l
    ld a, $5a
    cp l
    xor d
    xor e
    xor h
    rra
    ld de, $d600
    sub $b0
    or c
    or d
    or e
    or h
    or l
    nop
    ld [hl], $cb
    ld [hl], $5a
    cp d
    cp e
    cp h
    xor [hl]
    jr nz, jr_028_7662

    cp a
    rra
    inc c
    cp $ae
    db $d3
    db $d3
    ret nz

    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    nop
    sbc d
    jp z, $b2cc

    call $cfce
    jp nc, $32c1

    nop
    add hl, bc
    rst $38
    db $d3
    call nc, $d7d4
    nop
    rrca
    ld [hl], b
    ret c

    ld [hl-], a
    nop
    dec bc
    ld e, a
    rrca
    jr nz, jr_028_76de

    jr nz, jr_028_7659

    ld b, h
    nop
    ld [de], a
    ld d, [hl]
    inc h
    dec c
    dec bc
    adc c
    dec bc
    dec c

jr_028_76de:
    and b
    inc c
    inc l
    xor e
    nop
    inc c
    ld c, $20
    dec bc
    ccf
    add hl, bc
    ld b, b
    ld h, $e4
    jr nz, @+$3f

    inc hl
    ld c, $2e
    nop
    inc c
    inc c
    inc c
    rr a
    dec c
    ld b, e
    inc c
    inc l
    nop
    inc c
    ld c, $60
    inc [hl]
    ld sp, hl
    sbc l
    ld e, a
    ld b, b
    sub c
    nop
    dec c
    inc c
    ld c, $98
    ld sp, hl
    ret nz

    ld [hl], c
    dec c
    ld c, $91
    ld h, h
    dec bc
    dec bc
    rra
    dec c
    rst $38
    ld l, $20
    adc e
    dec h
    sub l
    rst $38
    ld [hl], l
    ld d, [hl]
    xor $90
    ret z

    ld b, e
    ld [$494e], sp
    push de
    ld [$76ac], sp
    ld [$0b69], sp
    sbc a
    ld h, h
    dec bc
    inc c
    ret c

    cp a
    nop
    rrca
    inc c
    ld e, e
    sbc a
    dec c
    inc c
    inc c
    cp a
    rra
    ld d, $08
    ld e, a
    ld h, b
    ld a, [hl]
    ld h, e
    rra
    db $10
    ld b, b
    ld b, [hl]
    ld c, $84
    ld c, $0b
    dec bc
    ld b, h
    nop
    inc de
    ld [$82f3], sp
    ld a, a
    nop
    rrca
    ld [hl-], a
    add hl, bc
    add hl, bc
    ld [hl], l
    cp [hl]
    adc a
    rra
    ld d, $0d
    dec bc
    dec c
    ld b, b
    rst JumpTable
    ld b, d
    nop
    inc c
    rst $28
    ld a, c
    sbc l

jr_028_7767:
    ld hl, $4608
    rrca
    add hl, bc
    and b
    ld l, [hl]
    ld a, b
    inc c
    nop
    rrca
    rra
    inc c
    jr nz, jr_028_77b7

    rst $38
    nop
    cp b
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    dec c
    jr c, jr_028_77c3

    add e
    dec bc
    ld [$ff01], sp
    jr nz, jr_028_7767

    rra
    ld b, b
    inc a
    sub c
    ld de, $4208
    cp a
    ld [$8008], sp
    pop bc
    cp [hl]
    ld bc, $0030
    rst $38
    add b
    ldh a, [rIF]
    jp c, $f825

    rlca
    nop
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld a, b
    add a
    ld hl, sp+$07
    add hl, bc
    db $fc
    inc bc
    rra
    rst $38
    ld bc, $5f50
    rst $38
    inc [hl]
    ld [$0004], sp
    cp l

jr_028_77b7:
    ld [bc], a
    ldh [$1f], a
    ld bc, $0010
    cp $00
    nop
    cp $e7
    nop

jr_028_77c3:
    rst $20
    nop
    db $fd
    ld [bc], a
    jp z, $0814

    ld bc, $0810

jr_028_77cd:
    nop
    ld b, $18
    cp l
    rrca
    jr nc, jr_028_77d4

jr_028_77d4:
    nop
    nop
    ld [bc], a
    rst $38
    add b
    rst $30
    add b
    rst JumpTable
    and b
    ld [$80ff], sp
    ei
    add b
    add hl, bc
    ld [$ff88], sp
    add b
    ldh [$1f], a
    jr nz, jr_028_784b

    ld [$0801], sp
    ld bc, $013e
    ld a, $ff
    ld [bc], a
    rst $38
    and e
    call c, $e285
    and [hl]
    ld a, h
    ld [$009c], sp
    db $e3
    add c
    cp $a2
    call c, $ffff
    cp $08
    ld bc, $41bc
    cp $3e
    jr jr_028_77cd

    nop
    rst $30
    sub c
    ret nz

    ld [$f18e], sp
    ld bc, $d108
    add b
    rst JumpTable
    ld bc, $6018
    pop bc
    xor [hl]

jr_028_781f:
    ld [$0801], sp
    cp a
    ret nz

    or [hl]
    ret


    and d
    ld [$a2dd], sp
    db $dd
    cp [hl]
    rrca
    ld [$e394], sp
    add b
    nop
    db $e3
    and d
    push de
    adc b
    pop bc
    push de
    adc b
    add b
    nop
    sbc h
    add b
    db $dd
    rst $38
    rst $38
    pop bc
    cp [hl]
    ret nz

    nop
    and e
    add b
    db $e3
    add c
    cp [hl]
    add b
    cp a

jr_028_784b:
    add c
    db $10
    cp [hl]
    sbc a
    and b
    rlca
    add hl, bc
    adc a
    add b
    ld hl, sp-$80
    nop
    ld hl, sp-$10
    adc a
    and b
    rst JumpTable
    and b
    rst JumpTable
    add b
    ld b, b
    ldh a, [$3f]

jr_028_7862:
    db $10
    sbc e
    and h
    sub c
    xor [hl]
    sub c
    xor [hl]
    inc b
    sbc a
    and b
    add b
    cp a
    add b
    rst $38
    ld [$ff80], sp
    nop
    db $dd
    and d
    adc b
    rst $30
    adc b
    rst $30
    rst $38
    add b
    ld [$e798], sp
    sbc b
    db $e4
    add hl, hl
    add hl, bc
    db $fc
    add e
    call nz, $800b
    rst $00
    add b
    db $fc
    ld bc, $8008
    rra
    jr nz, @+$20

    ld sp, $7985
    db $10
    rst $38
    rst $38
    add a
    ld hl, sp+$01
    jr nz, jr_028_781f

    dec b
    jr jr_028_7862

    rra
    ld [$0825], sp
    add h
    cp e
    adc [hl]
    or c
    ld d, l
    jr nz, jr_028_78b9

    ld [$be40], sp
    ld de, $ff08
    db $e3
    sbc h
    db $e3
    sbc h
    add b
    db $10
    rst $38
    pop bc
    and d

jr_028_78b9:
    rra

jr_028_78ba:
    jr jr_028_78ba

    add b
    xor $80
    nop
    add $80
    sub d
    add b
    cp d
    add b
    cp d
    add c
    ld d, [hl]
    adc [hl]
    ld bc, $c120
    inc bc
    ld [$0391], sp
    ld [$081f], sp
    call nz, $1b81
    ld [$80c3], sp
    pop bc
    add e
    ret nz

    cp a
    ld bc, $8008
    rrca
    ld [$8090], sp
    or b
    add b
    ldh [$80], a
    ret nz

    ld h, c
    ldh a, [$6e]
    db $10
    ld [hl], b
    ld [$fe81], sp
    add c
    jp nz, $0801

    inc b
    cp $99
    and $bf
    ret nz

    ld a, a
    db $10
    cp [hl]
    pop bc
    sub l
    ei

jr_028_7902:
    jr nc, jr_028_7902

    add c
    rrca
    db $10
    add b
    dec d
    ld [$2580], sp
    ld [$8f00], sp
    sub b
    adc a
    sub b
    add d
    db $fd
    rst $38
    rst $38
    ld [$a09f], sp
    add d
    db $fd
    ld bc, $8710
    adc b

jr_028_791f:
    add b
    ld bc, $808f
    add b
    rst $28
    rst $38
    and b
    ret nc

    ld bc, $9808
    ei
    ld [$9fe0], sp
    ld bc, $2f10
    ld [$80bf], sp
    cp h
    nop
    add b
    cp h
    sbc b
    and a
    sub b
    xor a
    sub b
    xor b
    ld [bc], a
    sub b
    add sp, -$01
    rst $38
    sbc b
    db $e4
    rst $30
    ld [$3ae7], sp
    ld hl, sp-$7c
    rst $28
    jr jr_028_799f

    ld [$081f], sp
    ldh a, [rSB]
    ld [$e087], sp
    ld bc, $0b08
    add hl, bc
    ld l, a
    add hl, de
    sbc a
    add b
    sbc a
    adc a
    ldh a, [$c2]
    ld bc, $8f10
    db $10
    add a
    ld hl, sp-$7a

jr_028_796a:
    ld sp, hl
    rst $38
    jr jr_028_796a

    ld b, b
    add [hl]
    rst $38
    jr @-$79

    adc d
    add b
    rst $28
    add l
    ld [$8000], a
    rst $28
    push bc
    xor d
    ret nz

    xor a
    add l
    ld [$7f88], a
    add hl, bc
    and d
    add b
    db $e3
    inc bc
    ld b, b
    rst $38
    rst $38
    ret nc

    nop
    xor b
    add b
    ei
    ret nc

    xor e
    add b
    ei
    pop de
    inc b
    xor d
    add c
    ld a, [$abd0]
    push af
    jr nz, jr_028_791f

    adc [hl]

jr_028_799f:
    ld a, b
    and c
    rlca
    add hl, hl
    rst $08
    ld hl, $10c9
    and $08
    cp l
    jp nz, $8ba5

    rst JumpTable
    ld sp, $c0bd
    xor a
    dec c
    add hl, bc
    or a
    rrca
    add hl, bc
    ld c, b
    add hl, bc
    db $10
    db $e3

jr_028_79bb:
    sbc h
    and d
    ld d, l
    add hl, bc
    cp [hl]
    ret nz

    add b
    add h
    call nz, $109f
    ld bc, $f608
    add c
    cp [hl]
    ld d, $09
    db $fc
    add c
    dec c
    xor $81
    rst $38
    rst $38
    db $ed
    jr nc, @+$03

    ld [$9ff8], sp
    db $10
    inc h
    add b
    rst $20
    ld bc, $c310
    cp h
    ld c, l
    ld [$febd], sp
    ret nz

    rra
    ld [$080d], sp
    jp $8180


    add b
    sbc c
    add b
    ld b, b
    db $db
    inc a
    jr jr_028_79f6

jr_028_79f6:
    ei
    nop
    rst $28
    db $10
    rst $38
    ld bc, $9d00
    nop
    sbc a
    nop
    ei
    inc b
    jr nz, @+$15

    ret nz

    and l
    db $10
    ld bc, $be08
    add b
    rst $38
    sbc h
    and d
    sbc h
    add c
    xor a
    ld [$8af1], sp
    ldh [$9b], a
    ldh [$90], a
    ld bc, $c709
    nop
    jr jr_028_7a5e

    ld a, [bc]
    adc c
    add b
    ld sp, hl
    ccf
    ld [$1001], sp
    rrca
    jr jr_028_7a32

    add a
    ld hl, sp-$7b
    ld a, [$10ff]
    add [hl]
    ld sp, hl

jr_028_7a32:
    add l
    sbc a
    rst $38
    jr jr_028_79bb

    adc e
    ei
    ld sp, $0939
    rra
    ld [$28fb], sp
    rst $30
    ld de, $b380
    ld [$ffff], sp

jr_028_7a47:
    sub b
    add sp, -$48
    add $ec
    ld b, $92
    call nz, $c4ba
    cp d
    rlca
    ld a, [bc]
    rra
    ld [$093f], sp
    ret nz

    rra
    ret nz

    ccf
    rst JumpTable
    ld c, d

jr_028_7a5e:
    add b
    cp l
    ld bc, $4108
    add c
    and e
    ld [$c2ff], sp
    cp l

jr_028_7a69:
    rst $20
    sbc b
    rst $08
    ld de, $8201
    ret nz

    sub b
    ret nz

    add b

jr_028_7a73:
    ret nz

    adc h
    dec c
    ld [de], a
    add l
    or d
    db $10
    add c
    sub b
    add c
    add h
    ld a, a
    jr jr_028_7a47

    di
    ld [$6f84], sp
    ld [$80c1], sp
    pop bc
    sub b
    inc bc
    ld [$c180], sp
    ld e, a
    adc [hl]
    sub e
    ld a, [bc]
    rst $38
    dec hl
    add hl, bc
    rla
    ld [de], a
    dec b
    ld a, [bc]
    ld bc, $3f18
    dec bc
    ld sp, hl
    dec h
    ld [$089f], sp
    db $fd
    add hl, de
    rst $08
    add hl, de
    inc b
    jr jr_028_7a69

    cp a
    ld d, e
    ld a, [bc]
    sbc b
    ld a, [bc]
    jr jr_028_7a73

    cp h
    ld de, $f559
    ld [$eb94], sp
    db $eb
    ld c, b
    sub h
    ldh [rNR12], a
    and d
    db $dd
    rst $38
    db $10
    db $e3
    sbc h
    push bc

jr_028_7ac3:
    ld b, d
    and d
    adc a
    inc hl
    pop bc
    cp [hl]
    db $e3
    sbc h

jr_028_7acb:
    rrca
    ld h, b
    ld [c], a
    jp hl


    rrca
    ld [$10fb], sp
    ld h, d
    ld [$73fe], sp
    ld [$80bf], sp
    ld c, a
    ld [de], a
    add [hl]
    ld bc, $ef08
    add b
    db $fd
    add d
    xor [hl]
    ld a, [hl+]
    ld c, a
    add hl, bc
    add b
    ld a, [hl-]
    db $e3
    rst $38
    xor d
    dec bc
    rrca
    jr z, jr_028_7b5d

    add hl, de
    db $fd
    rla
    inc l
    rst $38
    ld a, h
    nop
    db $fd
    ld hl, $09be
    ret nz

Jump_028_7afc:
    ld de, $233f
    ld bc, $af08
    ret nz

    jr jr_028_7ac3

    ret nz

    cp e
    rst $00
    ld [$10cf], sp
    adc h
    di
    adc h
    ld [hl+], a
    di
    xor $1c
    ld [$81fa], sp
    sbc $df
    ld [hl+], a
    rst $08
    nop
    add b
    rst $08
    add [hl]
    ret


    add h
    ret


    add [hl]
    ret


    nop
    add [hl]
    ld sp, hl
    cp d

jr_028_7b26:
    pop bc

jr_028_7b27:
    rst $38
    nop
    rst $30
    ld [$ff0d], sp
    nop
    rst JumpTable
    jr nz, jr_028_7b84

    ld [$084d], sp
    ld a, a
    ld h, b
    db $10
    sbc c
    ld bc, $7310
    adc h
    ld c, a
    add hl, sp
    rrca
    jr jr_028_7b27

    add hl, de
    ld [hl], a
    ld [$fb6b], sp
    ld a, [bc]
    db $10
    add l
    jr nz, jr_028_7acb

    push de
    dec bc
    add h
    pop de
    ld a, [bc]
    ld a, [bc]
    ld [$b008], sp
    ret z

    jr nc, jr_028_7b26

    rst $20
    inc c
    adc a
    ldh a, [$88]
    ret c

jr_028_7b5d:
    rla
    inc c
    adc a
    add hl, hl
    dec a
    add hl, hl
    ld [$302f], sp
    cp [hl]
    pop bc
    ret


    ld d, $92
    ret


    or [hl]
    add $0b
    pop bc
    ld a, b
    ld [de], a
    add b
    ld [$3000], sp
    cp a
    ld b, b
    cp a
    jr nz, jr_028_7bda

    db $10
    ld [$40ff], sp
    cp a
    ld a, [hl+]
    rlca
    ld hl, sp+$0d

jr_028_7b84:
    jr jr_028_7bc6

    ld c, e
    ld a, [bc]
    inc b
    ret nc

    inc d
    ld [c], a
    dec e
    dec e
    ld hl, sp+$07
    sub c
    db $10
    ld a, l
    ld [$083f], sp
    sbc [hl]
    add a
    ld de, $9580
    add hl, bc
    and c
    sbc $80
    rst $38
    xor l
    jp nc, $45ff

    rst $38
    and l
    ld [de], a
    cp $81
    cp d
    inc bc
    ld [$3ad8], sp
    add hl, bc
    db $dd
    ld d, h
    dec bc
    rrca
    dec c
    db $fd
    rra
    add hl, bc
    rrca
    dec l
    ld l, a
    ld [$ebbb], sp
    ld a, [de]
    jp z, $10ff

    rst $28
    jr @+$01

    ei
    dec e

jr_028_7bc6:
    ld [$1ffd], sp
    ld [$c0ef], sp
    sbc [hl]
    db $10
    rra
    ld [$8fd0], sp
    ldh a, [$89]
    ret nz

    cp c
    nop
    ret nz

    and c
    ld b, b

jr_028_7bda:
    and c
    add b
    rst $38
    db $fd
    inc bc
    ld bc, $03fc
    db $ec
    inc de
    ld hl, sp+$07
    cp b

jr_028_7be7:
    ld b, b
    dec c
    dec bc
    ldh a, [rIF]
    db $f4
    dec bc
    ccf
    ld h, l
    and e
    ccf
    dec c
    call nc, $cf0c
    add sp, $19
    add c
    db $10

Jump_028_7bfa:
    and c
    sbc $0f
    ld a, [bc]
    db $76
    ld [de], a
    rrca
    ld [$1b5f], sp
    ld h, b
    cp l
    rrca

jr_028_7c07:
    ld a, [de]
    nop
    jr nz, jr_028_7c07

    ld hl, sp-$7c
    ld hl, sp-$7c
    adc b
    ld e, a
    inc c
    add d
    add b
    add e
    ld bc, $bc18
    sbc b
    and h
    ld hl, $a498
    ccf
    ld [de], a
    sub b
    rst $28
    sub b
    add sp, $01
    ld [$a862], sp
    ld bc, $2f10
    ld [$8084], sp
    add [hl]
    rra
    db $10
    add c
    ld b, b
    add d
    ld c, a
    dec h
    adc b
    sub h
    adc b
    or [hl]
    sub h
    db $eb
    jr nc, jr_028_7be7

    push de
    ld sp, $1f12
    ld de, $90ef
    rst $08
    or b
    db $d3
    ld e, l
    ld de, $0803
    db $fc
    rst $08
    db $10
    adc h
    jp nc, $1001

    db $fd
    ld hl, $8c2c
    sub d
    sbc a
    dec bc
    add l
    ld bc, $a518
    dec de
    cp $81
    sub b
    inc c
    ld a, [bc]
    rst $38
    inc b
    add a
    ld c, $c0
    ccf
    pop hl
    rra
    adc [hl]
    cp a
    db $10
    ld a, a
    rst $38
    ccf
    ld bc, $6128
    ld h, $bf
    ld hl, $3e22
    pop bc
    inc e
    adc a
    add hl, sp
    rrca
    jr nc, @-$1f

    add hl, hl
    ld b, c
    ld e, $8f
    ld b, c
    ccf
    ld d, $ff
    cp a
    ld a, a
    ld b, c
    jr nc, @-$5f

    ccf
    jr jr_028_7cdf

    inc h
    sbc [hl]
    add hl, hl
    pop bc
    cp d
    and b
    ld [$2fb6], sp
    ld d, $c1
    add d
    cpl
    dec de
    ld c, b
    adc h
    rrca
    ld [$c0bf], sp
    add hl, bc
    nop
    ld bc, $0302
    ld bc, $0160
    nop
    nop
    ld d, b
    add hl, bc
    ld l, h
    ld l, e
    ld d, a
    ld e, b
    ld bc, $6b60
    ld l, h
    nop
    ld d, b
    ld bc, $5f70
    ld c, a
    ld c, a
    ld c, a
    ld c, d
    inc sp
    ld bc, $0808
    ld c, a
    inc sp
    ld c, a
    ld c, d
    nop
    ld [$5f33], sp
    ld [hl], b
    sbc h
    nop
    ld d, b
    ld b, $05
    ld a, [de]
    db $10
    inc e
    jr c, @+$0b

    ld [$0605], sp
    jp nz, $5000

    ccf

jr_028_7cdf:
    ld [$4a4a], sp
    ld c, a
    ld c, a
    ld a, $10
    rlca
    ld [bc], a
    ld [$0909], sp
    dec bc
    inc sp
    ld c, d
    ccf
    ld [hl], b
    inc sp
    nop
    ld c, d
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $01
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc sp
    inc sp
    ccf
    ld [hl], b
    nop
    ld c, d
    ld c, d
    jr nz, jr_028_7d2a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [bc], a
    ld h, $27
    jr z, jr_028_7d3b

    ld a, [hl+]
    dec hl
    ld a, a
    sub b
    jr nc, jr_028_7d18

jr_028_7d18:
    ld sp, $3232
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_028_7d25

    add hl, sp
    ld a, [hl-]
    dec hl
    ld c, d

jr_028_7d25:
    ld c, d
    ccf
    add b
    ld b, b
    ld b, c

jr_028_7d2a:
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    db $10
    ld c, b
    ld c, e
    ld c, d
    ld a, a
    add b
    ld c, a
    ld h, b

jr_028_7d3b:
    ld b, l
    ld d, d
    nop
    ld d, e
    ld b, e
    ld d, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld e, c
    ld e, d
    jr nz, jr_028_7da3

    inc sp
    ccf
    adc b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld bc, $6665
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld a, [bc]
    ld a, a
    add b
    nop
    inc sp
    ld c, d
    inc c
    ld b, l
    ld c, $0f
    inc l
    dec l
    ld [bc], a
    ld l, $2f
    ld c, h
    ld c, l
    ld c, [hl]
    ld a, [bc]
    ccf
    jr nc, @+$73

    add b
    ccf
    ld c, b
    inc e
    dec e
    ld e, $1f
    inc a
    dec a
    ld a, $0a
    ccf
    ld e, h
    ld e, l
    ld e, [hl]
    ccf
    jr c, @+$74

    cp a
    ld c, b
    ld d, h
    nop
    ld d, [hl]
    ld d, b
    ld d, c
    dec c
    dec sp
    dec c
    dec sp
    ld l, l
    rra
    ld l, l
    ld l, [hl]
    ld l, a
    ccf
    add c
    ld a, h
    ld e, c
    dec b
    ld [$a17f], sp
    ld h, d
    ld de, $68f8
    add hl, de
    ccf
    ld l, b
    rst JumpTable
    pop af
    rra
    ld a, [c]
    ld e, h

jr_028_7da3:
    rrca
    nop
    ld de, $0d2f
    ld c, $0e
    ld c, $00
    ld de, $6f6f
    adc a
    ld b, h
    ld c, a
    ld l, a
    ld c, a
    inc hl
    ret nz

    ld [$a009], sp
    ccf
    cpl
    cpl
    ld e, a
    ld b, b
    add $00
    ld de, $20ff
    ld h, d
    ld c, a
    xor a
    rra
    ld [de], a
    ld c, a
    dec bc
    ld c, $60
    inc c
    cp [hl]
    ld b, b
    dec bc
    ld d, b
    rra
    ld [de], a
    sbc [hl]
    jr nz, jr_028_7e35

    inc c
    ret nz

    inc e
    ld c, $bf
    ld l, a
    dec c
    ld c, $09
    add hl, bc
    ld c, $02
    dec c
    dec c
    inc c
    add hl, bc
    inc c
    ld a, [bc]
    rra
    inc d
    ld c, a
    sbc b
    ld a, [hl-]
    dec c
    add hl, bc
    ld hl, $0c22
    ld c, $0c
    or [hl]
    rra
    inc d
    rrca
    ld e, d
    ld a, $0c
    dec h
    inc hl
    dec bc
    and h
    rra
    inc d
    ld c, a
    scf
    inc c
    dec c
    ld h, b
    add hl, bc
    ld c, $5b
    ld c, $1f
    inc de
    cpl
    ccf
    jr c, jr_028_7e1b

    jr nz, jr_028_7e35

    call nc, $3f3e
    cpl
    rst $10
    dec bc
    rra
    add hl, bc
    rrca

jr_028_7e1b:
    ld c, a
    ccf
    dec c
    dec c
    ld e, l
    and b
    ld d, b
    or a
    ld c, c
    rra
    add hl, bc
    rst $30
    jp z, $1500

    ld e, a
    ld hl, $ed4f
    ld [$1f09], sp
    inc c
    adc d
    nop
    dec e

jr_028_7e35:
    ld l, a
    ld l, a
    ld c, a
    nop
    dec e
    rrca
    ld de, $6f11
    ld h, b
    rrca
    nop
    inc c
    nop
    inc c
    inc c
    ld [de], a
    ld e, $21
    ccf
    ld e, b

jr_028_7e4a:
    ld h, a
    nop
    sbc b
    rst $20
    add b
    rst $38
    ld b, b
    ld a, a
    ld hl, $003e

jr_028_7e55:
    inc de
    inc e
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    db $10
    ld bc, $0001
    nop
    dec bc

jr_028_7e63:
    add b
    add b
    ld b, b
    ret nz

    nop
    jr nz, jr_028_7e4a

    ret nc

    jr nc, jr_028_7e55

    jr jr_028_7e63

    inc c
    nop
    ld a, [$fd06]
    inc bc
    cp $00
    ld a, h
    add b
    inc bc
    cp b
    ret nz

jr_028_7e7c:
    ld d, b
    ld h, b
    jr nz, jr_028_7ea0

    cp a
    and b
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr nc, jr_028_7ec8

    ld b, b
    ld a, a
    sub b
    ld hl, $332c
    ld hl, $1f10
    inc de
    rra
    jr nz, jr_028_7ea2

    inc c
    or a
    dec c
    ld c, $37
    jr c, jr_028_7e7c

jr_028_7e9d:
    inc b
    ldh [$7f], a

jr_028_7ea0:
    add b
    rst $38

jr_028_7ea2:
    nop
    ld hl, $817e
    nop
    ld a, e
    add a
    inc l
    call c, $f030
    ret nz

    ret nz

    and e
    ld a, e
    ld a, [hl]
    ld l, $ff
    sbc c
    rst $20
    ld hl, $9a25
    ld h, c
    cp l
    jp $0186


    dec bc
    nop
    ret nz

    ld a, a
    inc hl
    ld a, a
    add b
    inc l
    cp $b1

jr_028_7ec8:
    adc $21
    dec h
    rst $30
    add hl, hl
    dec l
    rst $30
    ldh [rIE], a
    jr nz, jr_028_7ef6

    ld bc, $c00a

jr_028_7ed6:
    ld [hl+], a
    nop
    add hl, bc
    ld b, $06
    add hl, de
    rra
    ld h, c
    ld a, a
    inc h
    sbc b
    rst $20
    ld hl, $7f40
    ld hl, $3e21
    nop
    daa
    jr c, jr_028_7f0b

    db $10
    rla
    jr jr_028_7eff

    ld [$0b03], sp
    inc c
    rlca
    inc b

jr_028_7ef6:
    dec b
    ld b, $3f
    and b
    ld c, b
    add b
    ld b, b
    ld b, b
    ret nz

jr_028_7eff:
    ld hl, $60a0
    ldh [rP1], a
    jr nz, jr_028_7ed6

    jr nc, @-$0e

    db $10
    add sp, $18

jr_028_7f0b:
    ld hl, sp+$00
    ld [$0cf4], sp
    db $fc
    inc b
    rra
    db $10
    inc d
    ld a, [de]
    jr jr_028_7f20

    ld [$003f], sp
    jr jr_028_7e9d

    ld b, c
    ret nz

    inc c

jr_028_7f20:
    nop
    and b
    ld h, b
    ret nz

    inc h
    nop
    rra
    inc b
    nop
    inc e
    inc c
    nop
    inc e
    ld b, e
    daa
    nop
    jr jr_028_7f42

    nop
    db $10
    jr c, jr_028_7f36

jr_028_7f36:
    ld a, h
    inc de
    rrca
    ccf
    nop
    ld a, a
    ccf
    ld [bc], a
    rst $38
    ld h, b
    ld hl, sp+$57

jr_028_7f42:
    ldh a, [rVBK]
    pop hl
    rst $38
    ld d, b
    ld d, b
    cpl
    rst $38
    inc sp
    nop
    add b
    ld a, a
    sbc [hl]
    ld hl, $f361

jr_028_7f52:
    rst JumpTable
    rst $30
    ld e, b
    di
    ld c, h
    rst $38
    jr nz, jr_028_7f52

    ld b, a
    rra
    ld c, $78
    ccf
    ldh a, [$6f]
    ldh a, [rLCDC]
    ld e, a
    ld a, c
    di
    ld c, h
    rst $30
    ld c, b
    rst $38
    ld d, b
    jr nc, @+$01

    ld b, b
    rra
    inc c
    nop
    ccf
    ccf
    jr nc, jr_028_7fa4

    ld a, a
    ld a, a
    ld a, b
    ld b, a
    ld hl, sp+$21
    dec h
    add hl, hl
    dec l
    rrca
    db $10
    db $fc
    db $fc
    db $f4
    rlca
    inc c
    cp $fe
    ld a, d
    add [hl]
    ld hl, $2925
    ret nz

    dec l
    rrca
    db $10
    ccf
    ccf
    cpl
    jr nc, @+$81

    ld a, a
    ld a, $5f
    ld h, b
    ld hl, $2925
    dec l
    rrca
    db $10
    db $fc
    ld bc, $0cfc
    db $f4

jr_028_7fa4:
    cp $fe
    add [hl]
    ld a, d
    ld hl, $25f0
    add hl, hl
    dec l
    rrca
    db $10
    ccf
    ccf
    inc hl
    inc a
    rrca
    ld a, a
    ld a, a
    ld b, a
    ld a, b
    ld hl, $2925
    dec l
    add b
    rrca
    db $10
    inc e
    nop
    inc de
    inc c
    add hl, de
    rlca
    inc d
    db $10
    dec bc
    ld [hl+], a
    dec e
    ld hl, $123d
    cpl
    dec e
    nop
    ld d, e
    dec l
    ld e, [hl]
    ld hl, $2e5f
    ld l, a
    rla
    nop
    dec sp
    rlca
    ld c, a
    jr nc, @+$65

    rra
    ld a, a
    nop
    ld b, b
    ld bc, $7981
    nop
    add a
    ld a, c
    add e
    ld a, l
    nop
    ld a, e
    dec c
    ld a, $1d
    rra
    ld b, $07
    ld bc, $7180
    inc bc
    nop
    inc b
    inc bc
    ld b, $01
    rlca
    nop
    nop
    db $c3
    nop

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX

    ld a, [$cc75]
    or a
    ret nz

    call Call_006_4364
    ld e, a
    ldh [$8b], a
    ld a, c
    ldh [$8d], a
    ld hl, $43a3
    call $1dde
    jp nc, Jump_006_41dd

    ld b, a
    and $0f
    rst $00
    ld c, $41
    ld h, d
    ld b, c
    sub a
    ld b, c
    xor [hl]
    ld b, d
    dec l
    ld b, b
    or h
    ld b, b
    add sp, $41
    ld d, a
    ld b, d
    add [hl]
    ld b, d
    call Call_006_40ef
    jr z, jr_006_403a

    ld bc, $510d
    call $184b
    scf
    ret


jr_006_403a:
    ld a, [$ccea]
    or a
    jr z, jr_006_404b

    ld a, [$ccbb]
    or a
    jr nz, jr_006_404b

    ld a, [$ccbc]
    or a
    ret nz

jr_006_404b:
    ld a, c
    ld [$ccbc], a
    ld a, $f0
    call $3a52
    ld a, $6c
    call $0c74
    ld a, [$ccea]
    or a
    ret nz

    ld a, [$ccbb]
    or a
    scf
    ret nz

    ld hl, $d040
    ld b, $40
    call $044b
    ld a, [$ccbd]
    or a
    jr z, jr_006_4079

    ld b, a
    ld a, [$ccbe]
    ld c, a
    jr jr_006_407c

jr_006_4079:
    call $109a

jr_006_407c:
    ld a, b
    or a
    jr z, jr_006_40a6

    ld a, $83
    ld [$cca4], a
    ld [$cbca], a
    ld hl, $d040
    ld a, $81
    ld [hli], a
    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $4b
    ld a, [$ccbc]
    ld b, a
    and $f0
    ld [hli], a
    inc l
    ld a, b
    swap a
    and $f0
    or $08
    ld [hl], a

jr_006_40a6:
    call $1956
    set 5, [hl]
    xor a
    ld [$ccbd], a
    ld [$ccbe], a
    scf
    ret


    call Call_006_40ef
    ld bc, $510e
    jr nz, jr_006_40ea

    ld a, [$cc49]
    ld hl, $7552
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld b, a
    ldh a, [$8d]
    ld c, a

jr_006_40cd:
    ld a, [hli]
    or a
    jr z, jr_006_40e7

    cp c
    jr z, jr_006_40d8

    inc hl
    inc hl
    jr jr_006_40cd

jr_006_40d8:
    ld a, [hli]
    cp b
    jr z, jr_006_40df

    inc hl
    jr jr_006_40cd

jr_006_40df:
    ld c, [hl]

Jump_006_40e0:
    ld b, $2e
    call $184b
    scf
    ret


jr_006_40e7:
    ld bc, $0901

jr_006_40ea:
    call $184b
    scf
    ret


Call_006_40ef:
    ld a, [$cc46]
    and $01
    jr z, jr_006_410b

Call_006_40f6:
    ld a, [$d008]
    ld hl, $4107
    rst AddAToHL
    ld a, [$d033]
    and [hl]
    cp [hl]
    jr nz, jr_006_410b

    cp $c0
    ret


    ret nz

    inc bc
    jr nc, jr_006_4117

jr_006_410b:
    pop af
    xor a
    ret


    call Call_006_4314
    jp z, Jump_006_41dd

    call Call_006_41e3

jr_006_4117:
    ret nz

    bit 6, b
    jr z, jr_006_4126

    ld a, $16
    call $1717
    ld a, $03
    jp nc, Jump_006_42e6

jr_006_4126:
    bit 7, b
    jr nz, jr_006_4136

    ld a, b
    swap a
    and $03
    ld l, a
    ld a, [$cc80]
    cp l
    jr nz, jr_006_415e

jr_006_4136:
    call $4389
    jr nc, jr_006_415e

    ld hl, $d140
    ld a, [hl]
    or a
    jr nz, jr_006_415e

    ld [hl], $01
    inc l
    ld [hl], $14
    ld a, [$cc80]
    swap a
    rrca
    ld l, $49
    ld [hl], a
    ldh a, [$8d]
    ld l, $70
    ld [hl], a
    ld l, $4b
    call $2076
    ld l, $4b
    dec [hl]
    dec [hl]

jr_006_415e:
    xor a
    jp Jump_006_41dd


    call Call_006_4314
    jp z, Jump_006_41dd

    call Call_006_41e3
    ret nz

    call Call_006_433b
    ld a, $02
    jp z, Jump_006_42e6

    call Call_006_4246
    ld a, $a0
    call $3a52
    ld a, $6c
    call $0c74
    call $1956
    set 7, [hl]
    call $3ac6
    jr nz, jr_006_4194

    ld [hl], $05
    ld l, $4b
    ldh a, [$8d]
    call $2076

jr_006_4194:
    xor a
    jr jr_006_41dd

    call Call_006_4314
    jr z, jr_006_41dd

    call Call_006_41e3
    jr z, jr_006_41a3

    dec [hl]
    ret nz

jr_006_41a3:
    call Call_006_433b
    jr z, jr_006_41d1

    ld hl, $d040
    ld a, [hl]
    or a
    jr nz, jr_006_41ce

    call Call_006_4246
    ld hl, $d040
    ld [hl], $01
    inc l
    ld [hl], $1e
    ldh a, [$8d]
    ld l, $4b
    ld [hl], a
    ld l, $49
    ld a, b
    swap a
    and $0f
    add a
    ld [hl], a
    push de
    add a
    call $11ba
    pop de

jr_006_41ce:
    xor a
    jr jr_006_41dd

jr_006_41d1:
    ld a, b
    cp $40
    ld a, $01
    jp nc, Jump_006_42e6

    xor a
    jp Jump_006_42e6


Call_006_41dd:
Jump_006_41dd:
jr_006_41dd:
    ld a, $14
    ld [$cc84], a
    ret


Call_006_41e3:
    ld hl, $cc84
    dec [hl]
    ret


    call $1956
    and $80
    ret nz

    call Call_006_4314
    jr z, jr_006_41dd

    call Call_006_40f6
    jr z, jr_006_41fa

    xor a
    ret


jr_006_41fa:
    call Call_006_41e3
    jr z, jr_006_4201

    dec [hl]
    ret nz

jr_006_4201:
    ld a, [$cc4c]
    ld hl, $4238
    call $1dbc
    ld b, a
    jr nc, jr_006_4241

    call $1717
    jr nc, jr_006_4241

    ld a, $6c
    call $0c74
    call $1956
    set 7, [hl]
    ld hl, $cfc0
    set 0, [hl]
    call Call_006_4246
    ld l, $41
    inc [hl]
    ld a, b
    sub $42
    ld l, $42
    ld [hli], a
    ld [hl], a
    ld a, $81
    ld [$cca4], a
    ld [$cc02], a
    scf
    ret


    ld a, [hl-]
    ld b, d
    sub [hl]
    ld b, d
    add c
    ld b, e
    dec c
    ld b, h
    nop

jr_006_4241:
    ld a, $08
    jp Jump_006_42e6


Call_006_4246:
    call $3ac6
    ret nz

    ld [hl], $17
    inc l
    ldh a, [$8b]
    ld [hl], a
    ldh a, [$8d]
    ld l, $4b
    jp $2076


    call Call_006_4314
    jp z, Jump_006_41dd

    call Call_006_40f6
    jr z, jr_006_4264

    xor a
    ret


jr_006_4264:
    call Call_006_41e3
    jr z, jr_006_426b

    dec [hl]
    ret nz

jr_006_426b:
    ld a, $0b
    call $30c7
    jr z, jr_006_4241

    ld a, $6c
    call $0c74
    call $1956
    set 6, [hl]
    ld a, $e8
    call $3a52
    call Call_006_4246
    scf
    ret


    ld a, [$cc3a]
    or a
    ret nz

    call Call_006_4314
    jp z, Jump_006_41dd

    call Call_006_41e3
    ret nz

    ldh a, [$8d]
    ld l, a
    ld h, $cf
    ld [hl], $00
    call $2089
    call $2e08
    ret nz

    ld [hl], $17
    inc l
    inc [hl]
    ld l, $8b
    ld [hl], b
    ld l, $8d
    ld [hl], c
    ret


    call Call_006_4314
    jp z, Jump_006_41dd

    call Call_006_41e3
    ret nz

    call Call_006_41dd
    ld a, b
    swap a
    and $0f
    rst $00
    bit 0, d
    sub $42
    jp c, $de42

    ld b, d
    ld [c], a
    ld b, d
    ld a, $16
    call $1717
    ccf
    ret nc

    ld a, $03
    jr jr_006_42e6

    ld a, $05
    jr jr_006_42e6

    ld a, $06
    jr jr_006_42e6

    ld a, $07
    jr jr_006_42e6

    ld a, $04
    jr jr_006_42e6

Jump_006_42e6:
jr_006_42e6:
    ld hl, $4300
    rst JumpTable
    ld a, [hli]
    ld b, a
    ld c, [hl]
    call Call_006_41dd
    ld hl, $ccee
    ld a, [hl]
    and b
    ret nz

    ld a, [hl]
    or b
    ld [hl], a
    ld b, $51
    call $184b
    scf
    ret


    inc b
    nop
    ld [bc], a
    ld bc, $0204
    ld [$2003], sp
    inc b
    db $10
    dec b
    jr nz, jr_006_4314

    jr nz, jr_006_4318

    jr nz, @+$0b

    ld b, b
    ld a, [bc]

Call_006_4314:
jr_006_4314:
    ld a, [$cc80]
    rlca

jr_006_4318:
    jr c, jr_006_4328

    ld a, [$cc47]
    and $07
    jr nz, jr_006_4328

    call Call_006_432a
    jr nc, jr_006_4328

    or d
    ret


jr_006_4328:
    xor a
    ret


Call_006_432a:
    ld h, d
    ld l, $0b
    call Call_006_4333
    ret c

    ld l, $0d

Call_006_4333:
    ld a, [hl]
    and $0f
    sub $03
    cp $0b
    ret


Call_006_433b:
    ld a, $0b
    call $30c7
    ret nz

    ld a, [$cc55]
    cp $ff
    ret z

    ld a, b
    cp $40
    ld h, $c6
    ld a, [$cc55]
    jr nc, jr_006_435f

    add $6e
    ld l, a
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ld hl, $cbea
    set 4, [hl]
    or h
    ret


jr_006_435f:
    ld l, $7a
    jp $0205


Call_006_4364:
    ld e, $08
    ld a, [de]
    ld hl, $4381
    rst JumpTable

Call_006_436b:
    ld e, $0b
    ld a, [de]
    add [hl]
    and $f0
    ld c, a
    inc hl
    ld e, $0d

Call_006_4375:
    ld a, [de]
    add [hl]
    swap a
    and $0f
    or c
    ld c, a
    ld b, $cf
    ld a, [bc]
    ret


    db $fc
    nop
    nop
    rlca
    ld [$0000], sp
    ld hl, sp-$06
    add b
    call z, $9b21
    ld b, e
    rst JumpTable
    call Call_006_436b
    ld b, $ce
    ld a, [bc]
    and $0f
    ret nz

    scf
    ret


    db $ec
    nop
    nop
    inc d
    jr jr_006_43a1

jr_006_43a1:
    nop
    db $eb
    xor a
    ld b, e
    jp nz, $c843

    ld b, e
    ret


    ld b, e
    ret


    ld b, e
    rlca
    ld b, h
    sub $80
    ret nz

    inc bc
    pop bc
    inc bc
    jp nz, $9603

    ld b, e
    pop af
    inc b
    ld a, [c]
    dec b
    db $ec
    ld b, $d5
    ld [$f100], sp
    inc b
    ld a, [c]
    dec b
    db $ec
    rlca
    nop
    jr jr_006_43cb

jr_006_43cb:
    add hl, de
    db $10
    ld a, [de]
    jr nz, jr_006_43eb

    jr nc, jr_006_43ee

    add b
    ld a, [hli]
    add b
    inc l
    add b
    dec l
    add b
    db $10
    ret nz

    ld de, $12c0
    ret nz

    inc de
    ret nz

    dec h
    add b
    cpl
    add b
    ld e, $01
    ld [hl], b
    ld [bc], a
    ld [hl], c
    ld [de], a

jr_006_43eb:
    ld [hl], d
    ld [hli], a
    ld [hl], e

jr_006_43ee:
    ld [hl-], a
    ld [hl], h
    ld b, d
    ld [hl], l
    ld d, d
    db $76
    ld h, d
    ld [hl], a
    ld [hl], d
    rra
    inc de
    jr nc, @+$25

    ld sp, $3223
    inc hl
    inc sp
    inc hl
    ld [$f133], sp
    inc b
    ld a, [c]
    dec b
    nop

Call_006_4408:
Jump_006_4408:
    ld e, $30
    ld [de], a
    add a
    ld c, a
    ld b, $00
    ld a, [$d001]
    jr jr_006_4420

Call_006_4414:
Jump_006_4414:
    ld h, d
    ld l, $20
    dec [hl]
    ret nz

    ld l, $22
    jr jr_006_4428

    ld e, $01
    ld a, [de]

jr_006_4420:
    ld hl, $446f
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    add hl, bc

jr_006_4428:
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [hli]
    cp $ff
    jr nz, jr_006_4434

    ld c, [hl]
    ld b, a
    add hl, bc
    ld a, [hli]

jr_006_4434:
    ld e, $20
    ld [de], a
    inc e
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $31
    ld a, c
    ld [de], a
    ret


    add hl, sp
    ld d, a
    add hl, sp
    ld d, a
    cp $5d
    inc hl
    ld e, [hl]
    dec sp
    ld e, [hl]
    ld d, e
    ld e, [hl]
    ld l, e
    ld e, [hl]
    add e
    ld e, [hl]
    add hl, sp
    ld d, a
    jp nc, $a85e

    ld e, [hl]
    cp h
    ld h, c
    sbc c
    ld h, h
    cpl
    ld h, a
    ld l, e
    ld e, a
    cp h
    ld h, c
    sbc c
    ld h, h
    cpl
    ld h, a
    ld l, e
    ld e, a
    jp nc, $215e

    ld e, d
    sub c
    ld e, d
    ld d, $5e
    sbc e
    ld e, [hl]
    sbc e
    ld e, [hl]
    sbc e
    ld e, [hl]
    sbc e
    ld e, [hl]
    sbc e
    ld e, [hl]
    sub a
    ld e, d
    ld hl, $b45a
    ld e, [hl]
    ld e, b
    ld h, d
    dec sp
    ld h, l
    db $ec
    ld h, a
    ld d, $60
    ld e, b
    ld h, d
    dec sp
    ld h, l
    db $ec
    ld h, a
    ld d, $60
    jp nc, $9e5e

    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    call z, $315e
    ld h, h
    call $4b66
    ld l, c
    ld c, d
    ld h, c
    ld sp, $cd64
    ld h, [hl]
    ld c, e
    ld l, c
    ld c, d
    ld h, c
    jp nc, $3e5e

    rst $38
    ld [$cc80], a
    ld a, [$d01a]
    rlca
    jr nc, jr_006_44e1

    call Call_006_4549
    ld a, [$d001]
    ld hl, $4502
    rst AddAToHL
    ld a, b
    cp [hl]
    jr c, jr_006_44dc

    ld a, [$d008]
    add b

jr_006_44dc:
    ld h, $d0
    call Call_006_44ea

jr_006_44e1:
    ld hl, $d11a
    bit 7, [hl]
    ret z

    ld l, $31
    ld a, [hl]

Call_006_44ea:
    ld l, $32
    cp [hl]
    ret z

    ld [hl], a
    call Call_006_450c
    ret z

    ld e, $01
    ld a, [de]
    cp $0a
    ld de, $8701
    jr c, jr_006_44ff

    ld d, $86

jr_006_44ff:
    jp $0566


    ld d, h
    jr nz, jr_006_4505

jr_006_4505:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    rst $38

Call_006_450c:
    ld c, a
    ld b, $00
    ld d, h
    ld l, $01
    ld a, [hl]
    ld e, a
    ld hl, $4447
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hli]
    push hl
    add a
    ld c, a
    ld a, e
    ld hl, $4497
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, $1e
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hli]
    and $3f
    ld [de], a
    pop hl
    ld a, [hli]
    ld h, [hl]
    ld l, a
    or h
    ret z

    ld a, l
    and $01
    add $1a
    ld c, a
    ld a, l
    and $1e
    dec a
    ld b, a
    res 4, l
    or d
    ret


Call_006_4549:
    ld a, [$d001]
    or a
    jr z, jr_006_4554

    ld a, [$d031]
    ld b, a
    ret


jr_006_4554:
    ld hl, $d200
    ld bc, $0000

jr_006_455a:
    ld l, $3f
    ld a, [hl]
    cp c
    jr c, jr_006_4564

    ld c, a
    ld l, $31
    ld b, [hl]

jr_006_4564:
    inc h
    ld a, h
    cp $d6
    jr c, jr_006_455a

    ld a, [$d03f]
    cp c
    ret c

    ld a, [$d031]
    ld b, a
    ld a, [$d030]
    cp $10
    ret nz

    call Call_006_457f
    add b
    ld b, a
    ret


Call_006_457f:
    ld c, $00
    ld a, [$cc75]
    bit 6, a
    ret nz

    or a
    jr z, jr_006_458c

    ld c, $02

jr_006_458c:
    ld a, [$cc48]
    rrca
    jr nc, jr_006_459a

    ld a, [$d101]
    cp $0a
    jr nz, jr_006_459a

    inc c

jr_006_459a:
    ld a, c
    or a
    jr nz, jr_006_45fb

    ld a, [$cc79]
    or a
    jr z, jr_006_45a8

    ld c, $09
    jr jr_006_45fb

jr_006_45a8:
    ld a, [$cc89]
    or a
    jr z, jr_006_45b7

    ld c, $07
    cp $02
    jr c, jr_006_45fb

    inc c
    jr jr_006_45fb

jr_006_45b7:
    ld a, [$cc7b]
    or a
    jr nz, jr_006_45e2

    ld a, [$cc81]
    dec a
    jr z, jr_006_45d8

    ld a, [$cc81]
    rlca
    jr c, jr_006_45e2

    ld a, [$cc83]
    ld l, a
    ld a, [$cba0]
    or l
    jr nz, jr_006_45e2

    call $2a80
    jr nc, jr_006_45e2

jr_006_45d8:
    ld a, [$d008]
    ld [$cc80], a
    ld c, $04
    jr jr_006_45fb

jr_006_45e2:
    ld a, [$c681]
    cp $01
    jr z, jr_006_45f0

    ld a, [$c680]
    cp $01
    jr nz, jr_006_45fb

jr_006_45f0:
    ld c, $05
    ld a, [$c6a9]
    cp $01
    jr z, jr_006_45fb

    ld c, $06

jr_006_45fb:
    ld a, [$cc83]
    or a
    jr z, jr_006_4605

    xor a
    ld [$d008], a

jr_006_4605:
    ld a, c
    add a
    add a
    ld [$d034], a
    ret


    ld hl, $cc71
    ld a, [hl]
    or a
    jr z, jr_006_4616

    dec [hl]
    jr jr_006_4639

jr_006_4616:
    ld a, [$cc50]
    and $60
    jr nz, jr_006_4639

    ld a, [$cc02]
    or a
    jr nz, jr_006_4639

    ld a, [$ccea]
    ld b, a
    ld a, [$cc75]
    or b
    jr nz, jr_006_4639

    ld a, [$c6c5]
    ld e, a
    ld hl, $463c
    call $1dc4
    ld b, a
    ret


jr_006_4639:
    ld b, $00
    ret


    ld a, [hli]
    dec b
    dec hl
    ld b, $2c
    rlca
    dec l
    inc bc
    ld l, $04
    nop
    ld e, $25
    ld a, [de]
    or a
    ret z

    ld b, a
    ld hl, $468d
    ld a, [$c6c5]
    ld e, a

jr_006_4654:
    ld a, [hli]
    or a
    jr z, jr_006_465e

    cp e
    jr z, jr_006_4681

    inc hl
    jr jr_006_4654

jr_006_465e:
    ld a, e
    cp $08
    jr z, jr_006_466e

    cp $09
    jr z, jr_006_4673

    cp $0a
    ret nz

    ld a, b
    add a
    jr jr_006_4683

jr_006_466e:
    ld a, b
    sra a
    jr jr_006_4683

jr_006_4673:
    ld a, b
    cpl
    inc a
    add a
    add a
    add b
    sra a
    sra a
    cpl
    inc a
    jr jr_006_4683

jr_006_4681:
    ld a, [hl]
    add b

jr_006_4683:
    bit 7, a
    jr nz, jr_006_4689

    ld a, $ff

jr_006_4689:
    ld e, $25
    ld [de], a
    ret


    ld bc, $02fe
    db $fc
    inc bc
    ld hl, sp+$04
    ld bc, $0205
    ld b, $03
    nop
    ld h, d
    ld l, $25
    ld a, [hl]
    ld [hl], $00
    or a
    jr z, jr_006_46b2

    ld b, a
    ld a, $3f
    call $236b
    jr nz, jr_006_46ad

    ld b, $f8

jr_006_46ad:
    ld l, $29
    ld a, [hl]
    add b
    ld [hl], a

jr_006_46b2:
    ld l, $2a
    ld a, [hl]
    or a
    jr z, jr_006_46c3

    ld a, $10
    call $236b
    jr nz, jr_006_46c3

    ld l, $2d
    srl [hl]

jr_006_46c3:
    ld hl, $c6a2
    ld e, $29
    ld a, [de]
    bit 7, a
    jr z, jr_006_46d4

    ld a, [de]

jr_006_46ce:
    dec [hl]
    add $02
    jr nc, jr_006_46ce

    ld [de], a

jr_006_46d4:
    ld a, [hl]
    dec a
    rlca
    jr nc, jr_006_4704

    ld a, $2f
    call $1717
    jr nc, jr_006_46ef

    ld hl, $c6a3
    ld a, [hl-]
    ld [hl], a
    ld a, $01
    ld [de], a
    ld a, $2f
    call $1702
    jr jr_006_4704

jr_006_46ef:
    xor a
    ld [de], a
    ld [hl], a
    ld [$cc89], a
    ld e, $04
    ld a, [de]
    cp $0d
    jr z, jr_006_4704

    ld a, $ff
    ld [$cc34], a
    call $2b57

jr_006_4704:
    ld a, [$cc00]
    rrca
    jr nc, jr_006_4712

    ld e, $2e
    ld a, [de]
    or a
    jr z, jr_006_4712

    dec a
    ld [de], a

jr_006_4712:
    ret


    ld a, b
    and $f0
    or $08
    ldh [$90], a
    ld a, c
    and $f0
    or $08
    ldh [$91], a
    call $1435
    ldh [$92], a
    ld e, a
    ld a, l
    ldh [$93], a
    ld hl, $75c0
    call $1dde
    ret nc

    ld e, a
    add a
    ld hl, $76e4
    rst JumpTable
    ld a, e
    rst AddAToHL
    ldh a, [$8f]
    ld e, a
    and $1f
    call $0205
    ret z

    rl e
    ret c

    inc hl
    inc hl
    ld a, [hli]
    swap a
    and $0f
    ldh [$8d], a
    ld a, [hli]
    ldh [$8e], a
    push de
    ld a, [hl]
    or a
    jr z, jr_006_4777

    ld a, [$cc49]
    cp $03
    jr c, jr_006_476c

    ldh a, [$92]
    cp $10
    jr nz, jr_006_476c

    ldh a, [$93]
    push hl
    call $15c5
    pop hl
    jr nc, jr_006_4774

jr_006_476c:
    ldh a, [$93]
    ld c, a
    ld b, [hl]
    call $1414
    ld a, [hl]

jr_006_4774:
    call $3a52

jr_006_4777:
    ldh a, [$92]
    cp $f2
    ld hl, $c626
    call z, $0245
    ldh a, [$8e]
    rlca
    ldh a, [$92]
    call c, $111f
    ldh a, [$8e]
    bit 6, a
    ld a, $4d
    call nz, $0c74
    ld hl, $ccc5
    ldh a, [$93]
    cp [hl]
    jr nz, jr_006_479e

    ld [hl], $ff
    jr jr_006_47a4

jr_006_479e:
    ldh a, [$8d]
    or a
    call nz, Call_006_47ef

jr_006_47a4:
    ldh a, [$8f]
    or a
    jr z, jr_006_47b8

    cp $0c
    jr z, jr_006_47b8

    cp $08
    jr z, jr_006_47b8

    cp $12
    ldh a, [$8e]
    call nz, Call_006_47c8

jr_006_47b8:
    pop de
    scf
    ret


    ld h, d
    ld l, $0b
    ld a, [hli]
    ldh [$90], a
    inc l
    ld a, [hli]
    ldh [$91], a
    ld l, $03
    ld a, [hl]

Call_006_47c8:
    and $1f
    cp $1f
    ret z

    ld c, a
    call $3ac6
    ret nz

    ld a, c
    and $0f
    ld [hli], a
    ld a, c
    and $10
    swap a
    ld [hli], a
    ld a, [$d008]
    ld l, $48
    ld [hli], a
    swap a
    rrca
    ld [hli], a
    inc l
    ldh a, [$90]
    ld [hli], a
    inc l
    ldh a, [$91]
    ld [hli], a
    ret


Call_006_47ef:
    push hl
    call $16ba
    jr z, jr_006_4820

    call $3ea7
    jr nz, jr_006_4820

    ld [hl], $01
    inc l
    ld [hl], c
    ld l, $cb
    ldh a, [$90]
    ld [hli], a
    inc l
    ldh a, [$91]
    ld [hl], a
    ld a, [$d008]
    swap a
    rrca
    ld l, $c9
    ld [hl], a
    ld l, $c3
    ld a, c
    cp $0f
    jr nz, jr_006_4819

    ld [hl], $02

jr_006_4819:
    ldh a, [$8f]
    cp $06
    jr nz, jr_006_4820

    inc [hl]

jr_006_4820:
    pop hl
    ret


    ld a, c
    rst $00
    ld a, [hli]
    ld c, b
    ld b, d
    ld c, b
    ld h, l
    ld c, b

Call_006_482a:
    push de
    ld d, $d2

jr_006_482d:
    call Call_006_49e7
    inc d
    ld a, d
    cp $d6
    jr c, jr_006_482d

    xor a
    ld [$cc89], a
    ld [$cc7e], a
    ld [$cc79], a
    pop de
    ret


    ld h, $d2

jr_006_4844:
    ld l, $00
    ld a, [hli]
    or a
    jr z, jr_006_485a

    ld a, [$c680]
    cp [hl]
    ld a, $02
    jr z, jr_006_485b

    ld a, [$c681]
    cp [hl]
    ld a, $01
    jr z, jr_006_485b

jr_006_485a:
    xor a

jr_006_485b:
    ld l, $03
    ld [hl], a
    inc h
    ld a, h
    cp $d6
    jr c, jr_006_4844

    ret


    xor a
    ld [$cc89], a
    ld hl, $cc74
    ld a, [hl]
    or a
    jr z, jr_006_4871

    dec [hl]

jr_006_4871:
    ld hl, $cc7a
    ld a, [hl]
    and $0f
    ld [hl], a
    ld a, [$cc7e]
    rlca
    jr c, jr_006_48da

    ld a, [$ccea]
    or a
    jp nz, Jump_006_497f

    ld a, [$ccaf]
    ld b, a
    ld a, [$cc77]
    or b
    rlca
    jr c, jr_006_48c1

    ld a, [$ccef]
    ld b, a
    ld a, [$cc75]
    or b
    jr nz, jr_006_48c1

    ld a, [$cc83]
    inc a
    jr z, jr_006_48c1

    ld a, [$cc50]
    bit 5, a
    jr nz, jr_006_48af

    ld a, [$cc78]
    or a
    jr z, jr_006_48b5

    jr jr_006_48c1

jr_006_48af:
    ld a, [$cc78]
    or a
    jr nz, jr_006_48bb

jr_006_48b5:
    ld de, $0181
    call Call_006_48f3

jr_006_48bb:
    ld de, $0280
    call Call_006_48f3

jr_006_48c1:
    ld de, $d200

jr_006_48c4:
    ld e, $00
    ld a, [de]
    or a
    call nz, Call_006_4994
    inc d
    ld a, d
    cp $d6
    jr c, jr_006_48c4

    xor a
    ldh [$ac], a
    ld d, $d0
    ld a, d
    ldh [$ad], a
    ret


jr_006_48da:
    cp $ff
    jr nz, jr_006_48c1

    call Call_006_482a
    ld hl, $d200
    ld de, $ff05
    ld c, $f1
    call Call_006_4925
    ld a, $80
    ld [$cc7e], a
    jr jr_006_48c1

Call_006_48f3:
    ld h, $c6
    ld l, e
    ld a, [hl]
    or a
    jr nz, jr_006_4911

    ld a, [$ccc9]
    or a
    jr nz, jr_006_490f

    ld a, [$c6c5]
    cp $0b
    jr z, jr_006_490a

    cp $3d
    ret nz

jr_006_490a:
    ld l, $80
    ld a, [hli]
    or [hl]
    ret nz

jr_006_490f:
    ld a, $02

jr_006_4911:
    cp $20
    ret nc

    ld e, a
    ld hl, $5508
    rst JumpTable
    ld a, [hli]
    ld c, a
    ld l, [hl]
    ld h, $cc
    ld a, [hl]
    and d
    ret z

    call Call_006_4931
    ret nz

Call_006_4925:
    ld a, c
    and $f0
    inc a
    ld l, $00
    ld [hli], a
    ld [hl], e
    inc l
    inc l
    ld [hl], d
    ret


Call_006_4931:
    ld a, c
    and $0f
    rst $00
    ld a, l
    ld c, c
    ld d, c
    ld c, c
    ld b, [hl]
    ld c, c
    ld e, e
    ld c, c
    ld b, c
    ld c, c
    ld [hl], a
    ld c, c
    ld a, [$d200]
    or a
    ret nz

    ld hl, $d301
    ld a, e
    cp [hl]
    jr z, jr_006_497d

    inc h
    cp [hl]
    jr z, jr_006_497d

    ld hl, $d300
    ld a, [hl]
    or a
    ret z

    inc h
    ld a, [hl]
    or a
    ret


    ld hl, $d200
    ld a, c
    and $f0
    inc a
    cp [hl]
    jr c, jr_006_497d

    push de
    push bc
    call Call_006_49f5
    pop bc
    pop de
    ld hl, $d200
    xor a
    ld [$cc79], a
    ld [$cc7e], a
    ret


    ld hl, $d500
    ld a, [hl]
    or a
    ret z

jr_006_497d:
    or h
    ret


Jump_006_497f:
    ld a, [$cc75]
    or a
    ret nz

    ld a, [$cc46]
    and $03
    ret z

    call $1c5d
    ret nc

    ld a, $83
    ld [$cc75], a
    ret


Call_006_4994:
    ld a, e
    ldh [$ac], a
    ld a, d
    ldh [$ad], a
    call Call_006_53de
    ld hl, $ccaf
    cpl
    and [hl]
    ld [hl], a
    ld e, $01
    ld a, [de]
    rst $00
    ld l, e
    ld c, d
    db $fc
    ld c, c
    ld l, e
    ld c, d
    and a
    ld c, [hl]
    and c
    ld c, d
    and c
    ld c, d
    rrca
    ld c, [hl]
    ld b, b
    ld c, d
    call $e751
    ld c, c
    and c
    ld c, d
    rst $20
    ld c, c
    ld c, e
    ld c, d
    adc c
    ld c, [hl]
    add e
    ld c, h
    ld l, l
    ld c, l
    rst $20
    ld c, c
    add e
    ld c, h
    rst $20
    ld c, c
    dec h
    ld c, l
    rst $20
    ld c, c
    pop de
    ld c, l
    ld h, $4f
    inc [hl]
    ld d, c
    rst $20
    ld c, c
    ld l, l
    ld c, l
    rst $20
    ld c, c
    rst $20
    ld c, c
    rst $20
    ld c, c
    rst $20
    ld c, c
    ld c, [hl]
    ld c, d
    rst $20
    ld c, c

Call_006_49e7:
Jump_006_49e7:
    call Call_006_53a2
    call Call_006_53cb
    call Call_006_53b8
    ld e, $00
    jp $21a1


Call_006_49f5:
    push de
    ld d, h
    call Call_006_49e7
    pop de
    ret


    call Call_006_4a25
    jr nc, jr_006_4a1e

    call Call_006_52d0
    ret nz

    ld e, $04
    ld a, [de]
    rst $00
    dec c
    ld c, d
    dec d
    ld c, d
    ld a, $01
    ld [de], a
    ld a, $76
    call $0c74
    ld a, [$c6a9]
    add $00
    ld [$cc89], a
    ret


jr_006_4a1e:
    xor a
    ld [$cc89], a
    jp Jump_006_49e7


Call_006_4a25:
    ld a, [$cc78]
    or a
    jr nz, jr_006_4a3e

    ld a, [$ccaf]
    rlca
    jr c, jr_006_4a3e

    ld a, [$cc48]
    rrca
    jr c, jr_006_4a3e

    call Call_006_53e8
    jr z, jr_006_4a3e

    scf
    ret


jr_006_4a3e:
    xor a
    ret


    call Call_006_53f0
    ld e, $04
    ld a, [de]
    rst $00
    ld d, [hl]
    ld c, d
    sub a
    ld c, d
    call Call_006_53f0
    ld e, $04
    ld a, [de]
    rst $00
    ld e, l
    ld c, d
    sub a
    ld c, d
    ld a, [$ccb6]
    cp $08
    jr nz, jr_006_4a62

    ld e, $00
    ld a, $ff
    ld [de], a

jr_006_4a62:
    call $2aab
    call Call_006_52e2
    jp Jump_006_532f


    ld e, $04
    ld a, [de]
    rst $00
    ld [hl], e
    ld c, d
    sub a
    ld c, d
    ld e, $00
    ld a, $ff
    ld [de], a
    call $2aab
    call Call_006_52e2
    call Call_006_532f
    ld a, [$c6c5]
    cp $0b
    ret nz

    ld l, $02
    inc [hl]
    ld c, $34
    ld a, [$cc48]
    rrca
    jr nc, jr_006_4a93

    inc c

jr_006_4a93:
    ld a, c
    jp Jump_006_4408


    ld e, $21
    ld a, [de]
    rlca
    jp nc, Jump_006_4414

    jp Jump_006_49e7


    call Call_006_53f0
    ld e, $04
    ld a, [de]
    rst $00
    or [hl]
    ld c, d
    ld [$644a], a
    ld c, e
    and e
    ld c, e
    db $e4
    ld c, e
    ei
    ld c, e
    jr jr_006_4b01

    ld hl, $cc7e
    bit 7, [hl]
    jr nz, jr_006_4ad5

    ld [hl], $00
    call $2aab
    ld a, [$c6a2]
    cp $05
    jr c, jr_006_4ad5

    ld a, $32
    call $236b
    jr nz, jr_006_4ad5

    ld e, $3a
    ld a, $f8
    ld [de], a

jr_006_4ad5:
    ld hl, $d600
    ld a, [hl]
    or a
    ld b, $40
    call nz, $044b
    ld h, d
    ld l, $00
    set 7, [hl]
    call Call_006_52e2
    jp Jump_006_532f


    ld a, [$cc7e]
    rlca
    jp c, Jump_006_4baa

    call Call_006_4414
    ld h, d
    ld e, $21
    ld a, [de]
    or a
    jr z, jr_006_4b05

    ld l, $3a
    bit 7, [hl]
    jr nz, jr_006_4b05

jr_006_4b01:
    ld l, $00
    res 7, [hl]

jr_006_4b05:
    ld l, e
    bit 7, a
    jr nz, jr_006_4b18

    bit 5, a
    ret z

    res 5, [hl]
    ld a, [$c6ac]
    cp $02
    jp nc, Jump_006_4c4b

    ret


jr_006_4b18:
    ld a, [$d62a]
    or a
    jp nz, Jump_006_4b4e

    ld a, [$cc48]
    rrca
    jp c, Jump_006_4c17

    call Call_006_53e8
    jp z, Jump_006_4c17

    ld a, $01
    ld [$cc7e], a
    inc a
    ld [$d604], a
    ld a, $89
    ld [$d624], a
    ld l, $04
    ld [hl], $02
    inc l
    xor a
    ld [hl], a
    ld l, $3a
    ld [hl], a
    ld l, $3f
    ld [hl], a
    ld l, $06
    ld [hl], $28
    jp Jump_006_53b8


Jump_006_4b4e:
    bit 0, a
    jp z, Jump_006_4c17

    ld e, $3a
    ld a, [de]
    or a
    jp z, Jump_006_4c17

    ld hl, $d025
    add [hl]
    ld [hl], a
    xor a
    ld [de], a
    jp Jump_006_4c17


    ld a, [$cc48]
    rrca
    jp c, Jump_006_4c17

    call Call_006_53e8
    jp z, Jump_006_4c17

    call Call_006_4c1e
    ld a, $16
    call $236b
    ld c, $01
    jr nz, jr_006_4b7f

    ld c, $04

jr_006_4b7f:
    ld l, $06
    ld a, [hl]
    sub c
    ld [hl], a
    ret nc

    ld a, $31
    call $236b
    jr nz, jr_006_4b92

    call Call_006_4c66
    jp Jump_006_4c3a


jr_006_4b92:
    ld l, $04
    inc [hl]
    ld l, $00
    set 7, [hl]
    ld a, $03
    ld [$d604], a
    ld a, $4f
    jp $0c74


    call Call_006_4c1e
    call Call_006_53e8
    ret nz

Jump_006_4baa:
    ld h, d
    ld a, $02
    ld [$cc7e], a
    ld l, $04
    ld [hl], $04
    ld a, $2f
    call $236b
    ld a, $05
    jr nz, jr_006_4bbf

    ld a, $09

jr_006_4bbf:
    ld l, $06
    ld [hl], a
    ld l, $3f
    ld [hl], $0f
    ld a, [$d008]
    add $28
    call Call_006_4408
    ld h, d
    ld l, $21
    res 6, [hl]
    ld hl, $d604
    ld [hl], $04
    ld l, $3a
    sla [hl]
    call Call_006_53af
    ld a, $6b
    jp $0c74


    call Call_006_4414
    ld h, d
    ld l, $21
    bit 7, [hl]
    ret z

    res 7, [hl]
    ld l, $06
    dec [hl]
    ret nz

    ld a, $05
    ld [$d604], a
    jp Jump_006_4c17


    call Call_006_4414
    ld h, d
    ld l, $21
    bit 7, [hl]
    ret z

    ld l, $02
    ld a, [hl]
    or a
    jr z, jr_006_4c17

    ld a, $06
    ld [$d604], a
    ld l, $04
    inc [hl]
    xor a
    ld [$d62a], a
    ret


Jump_006_4c17:
jr_006_4c17:
    xor a
    ld [$cc7e], a
    jp Jump_006_49e7


Call_006_4c1e:
    xor a
    ld e, $02
    ld [de], a
    ld a, [$d62a]
    cp $04
    jr z, jr_006_4c30

    or a
    jr nz, jr_006_4c35

    call $2a80
    ret nc

jr_006_4c30:
    ld e, $02
    ld a, $01
    ld [de], a

jr_006_4c35:
    pop hl
    xor a
    ld [$d624], a

Jump_006_4c3a:
    ld h, d
    ld l, $3f
    ld [hl], $08
    ld l, $04
    ld [hl], $05
    call Call_006_53af
    ld a, $1f
    jp Jump_006_4408


Jump_006_4c4b:
    ld c, $08
    ld a, $17
    call $236b
    jr z, jr_006_4c5f

    ld c, $0c
    ld a, $18
    call $236b
    jr z, jr_006_4c5f

    ld c, $00

jr_006_4c5f:
    ld hl, $c6a2
    ld a, [hli]
    add c
    cp [hl]
    ret c

Call_006_4c66:
    ld bc, $2700
    ld e, $01
    call Call_006_5368
    ret c

    inc [hl]
    inc l
    ld a, b
    ld [hli], a
    ld a, c
    ld [hli], a
    push de
    ld de, $d008
    ld l, $08
    ld b, $08
    call $045b
    pop de
    scf
    ret


    ld e, $04
    ld a, [de]
    rst $00
    adc e
    ld c, h
    call nz, $cd4c
    ld d, $54
    jp nz, Jump_006_49e7

    ld a, [$cc85]
    or a
    jp nz, Jump_006_49e7

    call Call_006_5422
    jp c, Jump_006_49e7

    call Call_006_52d0
    jp nz, Jump_006_49e7

    ld a, $80
    ld [$ccaf], a
    ld a, $7e
    ld [$cca4], a
    call Call_006_52e2
    ld b, $00
    call Call_006_4d1c
    jr z, jr_006_4cba

    ld b, $03

jr_006_4cba:
    ld a, [hl]
    add b
    ld hl, $4d18
    rst AddAToHL
    ld a, [hl]
    call $0c74
    ld hl, $d024
    res 7, [hl]
    call $2391
    ld a, [hl]
    and $1f
    jr nz, jr_006_4ce8

    ld l, $21
    bit 0, [hl]
    ld bc, $fcf8
    jr z, jr_006_4cdc

    ld c, $08

jr_006_4cdc:
    call $041a
    and $01
    push de
    ld d, $d0
    call $2745
    pop de

jr_006_4ce8:
    call Call_006_4414
    call Call_006_4d1c
    ld a, $ff
    ld [$cca7], a
    ld [$ccb0], a
    ld c, $80
    ld a, [hl]
    or a
    jr nz, jr_006_4cfe

    ld c, $40

jr_006_4cfe:
    ld e, $21
    ld a, [de]
    and c
    ret z

    ld hl, $d024
    set 7, [hl]
    ld bc, $5f80
    call $24b1
    xor a
    ld [$cca4], a
    ld [$ccaf], a
    jp Jump_006_49e7


    adc e
    sbc l
    sbc [hl]
    sbc a

Call_006_4d1c:
    ld hl, $c6af
    ld e, $01
    ld a, [de]
    cp $0e
    ret


    ld e, $04
    ld a, [de]
    rst $00
    dec l
    ld c, l
    rst $00
    ld c, l
    ld a, [$cc78]
    ld b, a
    ld a, [$ccf1]
    or b
    jp nz, Jump_006_49e7

    call $2aab
    ld c, $01
    ld a, [$c6b3]
    cp $02
    jr nz, jr_006_4d46

    ld c, $03

jr_006_4d46:
    call Call_006_5383
    cp c
    jp c, Jump_006_49e7

    ld a, $01
    call Call_006_4db4
    push bc
    call Call_006_52e2
    call Call_006_532f
    pop bc

jr_006_4d5a:
    ld e, $19
    ld a, $d0
    ld [de], a
    push bc
    ld e, $01
    call Call_006_5335
    pop bc
    dec c
    jr nz, jr_006_4d5a

    ld a, b
    jp $1794


    ld e, $04
    ld a, [de]
    rst $00
    ld [hl], l
    ld c, l
    rst $00
    ld c, l
    ld a, [$cc78]
    or a
    jp nz, Jump_006_49e7

    call Call_006_4db4
    ld a, b
    cp $22
    jr z, jr_006_4d99

    push bc
    call Call_006_52e2
    pop bc
    push bc
    ld c, $00
    ld e, $01
    call Call_006_5335
    pop bc
    jp c, Jump_006_49e7

    ld a, b
    jp $1794


jr_006_4d99:
    ld hl, $cc86
    ld a, [hli]
    or [hl]
    jr nz, jr_006_4db1

    ld a, $03
    ld [hl-], a
    ld [hl], $c0
    ld a, b
    call $1794
    ld hl, $df00
    ld a, $03
    ld [hli], a
    ld [hl], $1a

jr_006_4db1:
    jp Jump_006_49e7


Call_006_4db4:
    ld hl, $c6be
    rst AddAToHL
    ld a, [hl]
    ld b, a
    set 5, b
    ld hl, $c6b5
    rst AddAToHL
    ld a, [hl]
    or a
    ret nz

    pop hl
    jp Jump_006_49e7


    ld e, $21
    ld a, [de]
    rlca
    jp nc, Jump_006_4414

    jp Jump_006_49e7


    ld e, $04
    ld a, [de]
    rst $00
    reti


    ld c, l
    ld [c], a
    ld c, l
    call Call_006_5416
    jp nz, Jump_006_49e7

    jp Jump_006_52e2


    call Call_006_4414
    ld e, $21
    ld a, [de]
    bit 7, a
    jp nz, Jump_006_49e7

    dec a
    ret nz

    ld [de], a
    call Call_006_5326
    push hl
    ld l, $08
    ld a, [hl]
    ld hl, $4e07
    rst JumpTable
    ld a, [hli]
    ld c, [hl]
    pop hl
    ld l, $0b
    add [hl]
    ld [hli], a
    inc l
    ld a, [hl]
    add c
    ld [hli], a
    ret


    ld hl, sp+$00
    inc b
    ld b, $07
    nop
    inc b
    ld sp, hl
    ld e, $04
    ld a, [de]
    rst $00
    add hl, de
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld d, d
    ld c, [hl]
    ld a, [$cc78]
    or a
    jp nz, Jump_006_49e7

    call Call_006_52e2
    ld a, [$c6b1]
    cp $02
    ld a, $01
    jr nz, jr_006_4e2d

    inc a

jr_006_4e2d:
    ld e, $04
    ld [de], a
    dec a
    ld c, a
    ld e, $01
    ld a, [de]
    ld b, a
    ld e, $01
    call Call_006_5335
    jp c, Jump_006_49e7

    ld a, [$cc47]
    bit 7, a
    jr z, jr_006_4e4b

    ld a, [$d008]
    swap a
    rrca

jr_006_4e4b:
    ld l, $09
    ld [hl], a
    ld l, $34
    ld [hl], a
    ret


    call Call_006_53e8
    jr z, jr_006_4e7a

    ld a, $17
    call $2122
    ld a, [hl]
    cp d
    jr nz, jr_006_4e7a

    ld a, [$cc47]
    ld c, a
    ld a, $ff
    ld [$cc47], a
    ld a, [$cc00]
    rrca
    jr c, jr_006_4e73

    ld a, c
    rlca
    jr nc, jr_006_4e76

jr_006_4e73:
    ld l, $09
    ld c, [hl]

jr_006_4e76:
    ld l, $34
    ld [hl], c
    ret


jr_006_4e7a:
    ld e, $04
    ld a, $01
    ld [de], a
    ld e, $21
    ld a, [de]
    rlca
    jp nc, Jump_006_4414

    jp Jump_006_49e7


    ld e, $04
    ld a, [de]
    rst $00
    sub c
    ld c, [hl]
    rst $00
    ld c, l
    ld a, [$cc78]
    or a
    jp nz, Jump_006_49e7

    ld a, [$c6ad]
    or a
    jp z, Jump_006_49e7

    call Call_006_52e2
    ld e, $01
    jp Jump_006_5328


    ld e, $04
    ld a, [de]
    rst $00
    or l
    ld c, [hl]
    rst $00
    ld c, l
    db $fc
    ld c, a
    ccf
    ld d, b
    call z, $fa50
    ld c, b
    call z, $da0f
    rst $20
    ld c, c
    ld a, [$cc78]
    ld b, a
    ld a, [$cc77]
    or b
    jp nz, Jump_006_49e7

    call Call_006_4eed
    jp nz, Jump_006_4fd0

    ld a, [$c6aa]
    or a
    jp z, Jump_006_49e7

    call Call_006_52e2
    ld e, $01
    ld a, $19
    call $236b
    jr nz, jr_006_4ee1

    inc e

jr_006_4ee1:
    call Call_006_532f
    jp c, Jump_006_49e7

    call Call_006_4f13
    jp Jump_006_4fd5


Call_006_4eed:
    ld a, [$cc7a]
    or a
    jr nz, jr_006_4f11

    ld c, $03
    call $2274
    jr nz, jr_006_4f11

    call Call_006_4f05
    ret nz

    ld c, $03
    call $227b
    jr nz, jr_006_4f11

Call_006_4f05:
    ld l, $2f
    ld a, [hl]
    and $b0
    jr nz, jr_006_4f11

    call $1c4f
    jr c, jr_006_4f13

jr_006_4f11:
    xor a
    ret


Call_006_4f13:
jr_006_4f13:
    ld l, $00
    set 1, [hl]
    ld l, $05
    xor a
    ld [hl-], a
    ld [hl], $02
    ld [$d018], a
    ld a, h
    ld [$d019], a
    or a
    ret


    ld e, $04
    ld a, [de]
    rst $00
    ld [hl], $4f
    ld [hl], a
    ld c, a
    db $fc
    ld c, a
    ccf
    ld d, b
    call z, $1150
    ld d, c
    call Call_006_5416
    jp nz, Jump_006_49e7

    ld a, [$ccb6]
    cp $08
    jp z, Jump_006_49e7

    ld a, [$dc00]
    or a
    jp nz, Jump_006_49e7

    call Call_006_53e8
    jp z, Jump_006_50e1

    ld a, [$cc7a]
    or a
    jr nz, jr_006_4f6e

    call $1c5d
    jr c, jr_006_4fd0

    call Call_006_4eed
    jr nz, jr_006_4fd0

    call Call_006_50e7
    jr nz, jr_006_4f6e

    ld a, $41
    ld [$cc75], a
    jp Jump_006_52e2


jr_006_4f6e:
    ld a, [$d008]
    or $80
    ld [$cc7f], a
    ret


    call Call_006_50d5
    ld a, [$d02d]
    or a
    jp nz, Jump_006_50e1

    call Call_006_53e8
    jp z, Jump_006_50e1

    ld a, [$cc77]
    or a
    jp nz, Jump_006_50e1

    call Call_006_50e7
    jp nz, Jump_006_50e1

    ld a, [$d008]
    ld hl, $4ff8
    rst AddAToHL
    call Call_006_53eb
    ld a, $14
    jp z, Jump_006_4408

    call Call_006_4414
    ld e, $21
    ld a, [de]
    rlca
    ret nc

    call Call_006_50e7
    jp nz, Jump_006_50e1

    xor a
    call $2b3d
    ret nc

    ld hl, $dc00
    ld a, $03
    ld [hli], a
    ld [hl], $16
    inc l
    ldh a, [$92]
    ld [hli], a
    ld e, $37
    ld [de], a
    ldh a, [$8e]
    ld [hli], a
    xor a
    ld [$d018], a
    ld a, h
    ld [$d019], a

Jump_006_4fd0:
jr_006_4fd0:
    ld a, $15
    call Call_006_4408

Jump_006_4fd5:
    call Call_006_53af
    call Call_006_53c2
    ld a, $c2
    ld [$cc75], a
    xor a
    ld [$cc76], a
    ld hl, $d024
    res 7, [hl]
    ld a, $02
    ld e, $04
    ld [de], a
    ld e, $3f
    ld a, $0f
    ld [de], a
    ld a, $9c
    jp $0c74


    add b
    jr nz, @+$42

    db $10
    call Call_006_50d5
    call Call_006_4414
    ld a, [$cc76]
    rlca
    jr nc, jr_006_5017

    ld a, $83
    ld [$cc75], a
    ld e, $04
    ld a, $05
    ld [de], a
    ld a, $13
    jp Jump_006_4408


jr_006_5017:
    ld h, d
    ld l, $21
    bit 7, [hl]
    jr nz, jr_006_5028

    ld a, [$cc76]
    and $f0
    add [hl]
    ld [$cc76], a
    ret


jr_006_5028:
    ld a, $83
    ld [$cc75], a
    ld l, $04
    inc [hl]
    ld l, $3f
    ld [hl], $00
    ld hl, $d024
    set 7, [hl]
    call Call_006_53cb
    jp Jump_006_53b8


    call Call_006_50d5
    ld a, [$cc77]
    rlca
    ret c

    ld a, [$cc82]
    or a
    ret nz

    ld a, [$d02a]
    or a
    jr nz, jr_006_505b

    ld a, [$cc46]
    and $03
    ret z

    call $2aab

jr_006_505b:
    ld hl, $d018
    xor a
    ld c, [hl]
    ld [hli], a
    ld b, [hl]
    ld [hli], a
    ld a, c
    add $05
    ld l, a
    ld h, b
    ld [hl], $02
    ld e, $37
    ld a, [de]
    or a
    jr nz, jr_006_508f

    ld a, c
    or a
    jr nz, jr_006_5079

    ld a, b
    cp $d7
    jr nc, jr_006_508f

jr_006_5079:
    push de
    ld hl, $dc00
    inc [hl]
    inc l
    ld a, $16
    ld [hli], a
    ld l, $18
    ld a, c
    ld [hli], a
    ld [hl], b
    add $0b
    ld e, a
    ld d, b
    call $2202
    pop de

jr_006_508f:
    ld a, [$cc47]
    rlca
    jr c, jr_006_509b

    ld a, [$d008]
    swap a
    rrca

jr_006_509b:
    ld l, $09
    ld [hl], a
    ld l, $38
    ld a, [$cc76]
    ld [hl], a
    xor a
    ld [$cc76], a
    ld [$cc75], a
    ld h, d
    ld l, $04
    inc [hl]
    ld l, $3f
    ld [hl], $0f
    ld c, $16
    ld a, [$cc48]
    rrca
    jr nc, jr_006_50bd

    ld c, $25

jr_006_50bd:
    ld a, c
    call Call_006_4408
    call Call_006_53af
    call Call_006_53c2
    ld a, $51
    jp $0c74


    ld e, $21
    ld a, [de]
    rlca
    jp nc, Jump_006_4414

    jr jr_006_50e1

Call_006_50d5:
    ld a, [$cc78]
    or a
    jr nz, jr_006_50e0

    ld a, [$cc75]
    or a
    ret nz

jr_006_50e0:
    pop af

Jump_006_50e1:
jr_006_50e1:
    call $2b8a
    jp Jump_006_49e7


Call_006_50e7:
    ld a, [$d008]
    ld b, a
    add a
    add b
    ld hl, $5105
    rst AddAToHL
    ld a, [$d033]
    and [hl]
    cp [hl]
    ret nz

    inc hl
    ld a, [$d00b]
    add [hl]
    ld b, a
    inc hl
    ld a, [$d00d]
    add [hl]
    ld c, a
    xor a
    ret


    ret nz

    ei
    nop
    inc bc
    nop
    rlca
    jr nc, jr_006_5114

    nop
    inc c
    nop
    ld hl, sp-$33
    add sp, $53

jr_006_5114:
    jp z, Jump_006_50e1

    call Call_006_50d5
    ld a, [$d02d]
    or a
    jp nz, Jump_006_50e1

    ld a, [$d008]
    ld hl, $4ff8
    rst AddAToHL
    ld a, [$cc45]
    and [hl]
    ld a, $13
    jp z, Jump_006_4408

    jp Jump_006_4414


    ld e, $04
    ld a, [de]
    rst $00
    inc a
    ld d, c
    sub e
    ld d, c
    ld a, [$cc48]
    rrca
    jr c, jr_006_5190

    ld a, [$cc75]
    or a
    jr nz, jr_006_5190

    call Call_006_5422
    jr c, jr_006_5190

    ld hl, $cc78
    ld a, [hli]
    or [hl]
    jr nz, jr_006_5190

    ld a, [$cc77]
    add a
    jr c, jr_006_5190

    add a
    jr c, jr_006_5193

    jr nz, jr_006_5190

    ld a, [$d00f]
    or a
    jr nz, jr_006_5190

    ld bc, $fe20
    ld a, [$cc49]
    cp $06
    jr c, jr_006_5172

    ld bc, $fdd0

jr_006_5172:
    ld hl, $d014
    ld [hl], c
    inc l
    ld [hl], b
    ld a, $01
    ld a, [$c6b4]
    cp $02
    ld a, $41
    jr z, jr_006_5185

    ld a, $01

jr_006_5185:
    ld [$cc77], a
    jr nz, jr_006_5190

    ld e, $04
    ld a, $01
    ld [de], a
    ret


jr_006_5190:
    jp Jump_006_49e7


jr_006_5193:
    ld a, [$cc77]
    bit 5, a
    jr nz, jr_006_5190

    call Call_006_53e8
    jr z, jr_006_5190

    ld hl, $d014
    ld a, [hli]
    ld h, [hl]
    bit 7, h
    ret nz

    ld l, a
    ld bc, $0100
    call $01d6
    inc a
    ret z

    ld hl, $d014
    ld [hl], $80
    inc l
    ld [hl], $ff
    push de
    ld d, h
    ld a, $19
    call $2a51
    pop de
    ld hl, $cc77
    set 5, [hl]
    ld a, $51
    call $0c74
    jp Jump_006_49e7


    ld a, [$cc83]
    inc a
    jr z, jr_006_5244

    ld e, $04
    ld a, [de]
    rst $00
    db $db
    ld d, c
    rst $30
    ld d, c
    ld a, [$cc78]
    or a
    jr nz, jr_006_5244

    call $23a5
    ld l, $37
    ld [hl], $ff
    ld l, $18
    xor a
    ld [hli], a
    ld [hl], $d6
    call Call_006_532f
    call $2aab
    call $17b1
    ld a, [$cc78]
    or a
    jr nz, jr_006_5238

    ld a, [$cc77]
    rlca
    jr c, jr_006_5238

    call Call_006_53e8
    jr z, jr_006_5238

    ld a, $af
    call $0c74
    ld a, [$c6b2]
    scf
    adc a
    ld [$cc79], a
    call Call_006_53c2
    call Call_006_524b
    ret z

    call $1e6f
    ld hl, $cc79
    set 6, [hl]
    bit 1, [hl]
    jr nz, jr_006_522a

    xor $10

jr_006_522a:
    ld e, $09
    ld [de], a
    ld c, a
    ld a, $ff
    ld [$d009], a
    ld b, $3c
    jp $22d9


jr_006_5238:
    ld hl, $c6b2
    ld a, [hl]
    xor $01
    ld [hl], a
    ld hl, $cbea
    set 0, [hl]

jr_006_5244:
    xor a
    ld [$cc79], a
    jp Jump_006_49e7


Call_006_524b:
    ld a, [$cc48]
    xor $01
    and $01
    ret z

    ld a, [$cc49]
    ld hl, $52ba
    rst AddAToHL
    ld a, [hl]
    or a
    ret z

    push de
    ld d, a
    ld a, [$d008]
    ld e, a
    add a
    add a
    add e
    ld hl, $52a6
    rst AddAToHL
    ld a, [hli]
    ld e, a
    call Call_006_5274
    call z, Call_006_5274
    pop de
    ret


Call_006_5274:
    ld a, [$d00b]
    ldh [$8f], a
    add [hl]
    ld b, a
    inc hl
    ld a, [$d00d]
    ldh [$8e], a
    add [hl]
    ld c, a
    inc hl
    push hl
    call $1435
    ld c, l
    ld b, h
    pop hl

jr_006_528b:
    or a
    jr z, jr_006_52a5

    cp d
    jr z, jr_006_5297

    ld a, c
    add e
    ld c, a
    ld a, [bc]
    jr jr_006_528b

jr_006_5297:
    ld a, c
    and $f0
    or $08
    ld b, a
    ld a, c
    swap a
    and $f0
    or $08
    ld c, a

jr_006_52a5:
    ret


    ldh a, [rP1]
    db $fd
    nop
    ld [bc], a
    ld bc, $0000
    inc b
    nop
    stop
    db $fd
    nop
    ld [bc], a
    rst $38
    nop
    nop
    inc b
    nop
    nop
    db $e3
    nop
    ccf
    ccf
    ccf
    ccf
    ccf
    call Call_006_52d0

jr_006_52c5:
    push hl
    call nz, Call_006_49f5
    pop hl
    call Call_006_52da
    jr nz, jr_006_52c5

    ret


Call_006_52d0:
    ld hl, $d200

jr_006_52d3:
    ld a, d
    cp h
    jr z, jr_006_52da

    ld a, [hl]
    or a
    ret nz

Call_006_52da:
jr_006_52da:
    inc h
    ld a, h
    cp $d6
    jr c, jr_006_52d3

    xor a
    ret


Call_006_52e2:
Jump_006_52e2:
    call Call_006_53af
    call Call_006_53c2
    ld e, $04
    ld a, $01
    ld [de], a
    ld e, $01
    ld a, [de]
    ld hl, $5548
    rst JumpTable
    ld e, $18
    xor a
    ld [de], a
    inc e
    ld a, [hl]
    and $0f
    cp $01
    jr z, jr_006_5302

    or $d0

jr_006_5302:
    ld [de], a
    ld a, [hli]
    ld b, a
    swap a
    and $07
    ld e, $3f
    ld [de], a
    ld c, [hl]
    bit 7, b
    call nz, Call_006_5396
    ld a, [$cc48]
    rrca
    ld a, c
    jr nc, jr_006_5323

    cp $20
    jr c, jr_006_5323

    cp $24
    jr nc, jr_006_5323

    add $04

jr_006_5323:
    jp Jump_006_4408


Call_006_5326:
    ld e, $01

Jump_006_5328:
    call Call_006_532f
    ret nc

    jp Jump_006_49e7


Call_006_532f:
Jump_006_532f:
    ld c, $00
    ld h, d
    ld l, $01
    ld b, [hl]

Call_006_5335:
    ld h, d
    ld l, $19
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    cp $01
    scf
    ret z

    cp $d0
    call z, Call_006_5368
    ret c

    inc [hl]
    inc l
    ld a, b
    ld [hli], a
    ld a, c
    ld [hli], a
    xor a
    ld [hli], a
    ld [hli], a
    ld [hli], a
    push de
    ld de, $d008
    ld l, $08
    ld b, $08
    call $045b
    pop de
    ld l, $16
    xor a
    ld [hli], a
    ld [hl], d
    ld e, $18
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    xor a
    ret


Call_006_5368:
    ld hl, $d701

jr_006_536b:
    ld a, [hl]
    cp b
    jr nz, jr_006_5377

    inc l
    ld a, [hl-]
    cp c
    jr nz, jr_006_5377

    dec e
    jr z, jr_006_5381

jr_006_5377:
    inc h
    ld a, h
    cp $dc
    jr c, jr_006_536b

    call $2c40
    ret z

jr_006_5381:
    scf
    ret


Call_006_5383:
    ld hl, $d700
    ld b, $00

jr_006_5388:
    ld a, [hl]
    or a
    jr nz, jr_006_538d

    inc b

jr_006_538d:
    inc h
    ld a, h
    cp $dc
    jr c, jr_006_5388

    ld a, b
    or a
    ret


Call_006_5396:
    call Call_006_53de
    swap a
    or [hl]
    ld hl, $cc7a
    or [hl]
    ld [hl], a
    ret


Call_006_53a2:
    call Call_006_53de
    swap a
    or [hl]
    cpl
    ld hl, $cc7a
    and [hl]
    ld [hl], a
    ret


Call_006_53af:
    call Call_006_53de
    ld hl, $cc7c
    or [hl]
    ld [hl], a
    ret


Call_006_53b8:
Jump_006_53b8:
    call Call_006_53de
    ld hl, $cc7c
    cpl
    and [hl]
    ld [hl], a
    ret


Call_006_53c2:
    call Call_006_53de
    ld hl, $cc7b
    or [hl]
    ld [hl], a
    ret


Call_006_53cb:
    call Call_006_53de
    ld hl, $cc7b
    cpl
    and [hl]
    ld [hl], a
    ret


    call Call_006_53de
    ld hl, $ccaf
    or [hl]
    ld [hl], a
    ret


Call_006_53de:
    ld a, d
    sub $d2
    ld hl, $00f8
    add l
    ld l, a
    ld a, [hl]
    ret


Call_006_53e8:
    ld h, d
    ld l, $03

Call_006_53eb:
    ld a, [$cc45]
    and [hl]
    ret


Call_006_53f0:
    ld a, [$ccaf]
    rlca
    jr c, jr_006_540e

    ld a, [$cc83]
    inc a
    jr z, jr_006_540e

    ld a, [$ccef]
    ld b, a
    ld a, [$cc74]
    or b
    ret z

    ld e, $04
    ld a, [de]
    or a
    ld a, $5a
    call z, $0c74

jr_006_540e:
    pop af
    xor a
    ld [$cc7e], a
    jp Jump_006_49e7


Call_006_5416:
    ld a, [$cc48]
    and $01
    ret nz

    ld hl, $cc77
    ld a, [hli]
    or [hl]
    ret


Call_006_5422:
    ld a, [$ccb6]
    dec a
    cp $02
    ret


    ld a, [$cc76]
    ld b, a
    rlca
    ret c

    ld de, $d000
    ld a, e
    ldh [$ac], a
    ld a, d
    ldh [$ad], a
    ld a, [$cc75]
    cp $83
    jr nz, jr_006_5446

    ld e, $21
    ld a, [de]
    and $0f
    add b
    ld b, a

jr_006_5446:
    ld e, $08
    ld a, [de]
    add b
    ld hl, $5468
    rst JumpTable
    ld a, [hli]
    ld b, a
    ld a, [hli]
    ld c, a
    ld a, $0b
    call $2122
    ld e, $0b
    ld a, [de]
    ld [hli], a
    inc l
    ld e, $0d
    ld a, [de]
    add c
    ld [hli], a
    inc l
    ld e, $0f
    ld a, [de]
    add b
    ld [hli], a
    ret


    ld hl, sp+$00
    nop
    rlca
    ld b, $00
    nop
    ld hl, sp-$06
    nop
    ld hl, sp+$03
    inc b
    nop
    ld hl, sp-$04
    di
    nop
    ld a, [c]
    nop
    di
    nop
    ld a, [c]
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    db $f4
    nop
    nop
    inc d
    inc c
    nop
    nop
    db $ec
    ld a, [c]
    nop
    ld a, [c]
    db $10
    ld a, [c]
    nop
    ld a, [c]
    ldh a, [$ef]
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    nop
    inc d
    inc c
    nop
    nop
    db $ec
    ld a, [c]
    nop
    ld a, [c]
    db $10
    ld a, [c]
    nop
    ld a, [c]
    ldh a, [$ef]
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    nop
    inc d
    inc c
    nop
    nop
    db $ec
    ld a, [c]
    nop
    ld a, [c]
    db $10
    ld a, [c]
    nop
    ld a, [c]
    ldh a, [$ef]
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    or $00
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    or $f4
    nop
    db $f4
    ld c, $f4
    nop
    db $f4
    ld a, [c]
    ld a, [c]
    nop
    pop af
    nop
    ld a, [c]
    nop
    pop af
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    nop
    ld b, l
    dec b
    ld b, l
    inc bc
    ld b, [hl]
    inc hl
    ld b, [hl]
    nop
    ld b, [hl]
    ld h, e
    ld b, [hl]
    ld [bc], a
    ld b, [hl]
    inc sp
    ld b, [hl]
    ld d, e
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    ld [hl], e
    ld b, [hl]
    ld [bc], a
    ld b, [hl]
    dec b
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    ld b, e
    ld b, [hl]
    nop
    ld b, [hl]
    inc de
    ld b, [hl]
    inc de
    ld b, l
    ld bc, $0046
    ld b, [hl]
    ld [bc], a
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    inc bc
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    sub $21
    jr nc, jr_006_5562

    sub $22
    and $22
    or b
    ld hl, $22d6
    ld h, b
    nop
    add b
    nop
    or $21
    add b
    nop
    or $23

jr_006_5562:
    jr nc, @+$23

    ld [hl], b
    dec de
    add $21
    add b
    nop
    ld [hl], b
    ld e, $80
    nop
    add $21
    add b
    nop
    or b
    ld a, [de]
    ld b, b
    inc d
    add b
    nop
    add b
    nop
    and b
    ld hl, $0080
    add b
    nop
    add b
    nop
    add b
    nop
    and $22
    add b
    nop
    call Call_006_5727
    ld e, $04
    ld a, [de]
    rst $00
    sub e
    ld d, l
    cp a
    ld d, l
    ld a, $01
    ld [de], a
    ld hl, $41b5
    ld e, $05
    call $008a
    ld h, d
    ld l, $10
    ld [hl], $28
    ld l, $08
    ld a, [hl]
    call $2a51
    ld a, d
    ld [$cc48], a
    call $12ae
    call $2bb9
    call $29cc
    ld hl, $d00e
    xor a
    ld [hli], a
    ld [hli], a
    jp $1e03


    ld a, [$c4ab]
    or a
    ret nz

    call $1832
    ld a, [$cd00]
    and $0e
    ret nz

    ld a, [$cca4]
    and $81
    ret nz

    ld hl, $d024
    res 7, [hl]
    xor a
    ld l, $2d
    ld [hli], a
    ld h, d
    ld l, $0b
    ld a, [hli]
    ld b, a
    and $0f
    cp $08
    jr nz, jr_006_5604

    inc l
    ld a, [hli]
    ld c, a
    and $0f
    cp $08
    jr nz, jr_006_5604

    call Call_006_5656
    jr c, jr_006_5619

    ld h, d
    ld l, $08
    ld a, [hli]
    swap a
    rrca
    cp [hl]
    jr z, jr_006_5604

    ld [hl-], a
    ld a, [hl]
    call $2a51

jr_006_5604:
    ld h, d
    ld l, $35
    dec [hl]
    bit 7, [hl]
    jr z, jr_006_5613

    ld [hl], $1a
    ld a, $80
    call $0c74

jr_006_5613:
    call $1fdb
    jp $2a36


jr_006_5619:
    ld e, $04
    ld a, $02
    ld [de], a
    call $2bb9
    ld a, $81
    ld [$cc77], a
    ld hl, $d009
    ld e, $09
    ld a, [de]
    ld [hl], a
    ld l, $0b
    ld a, [hl]
    add $06
    ld [hl], a
    ld l, $0f
    ld [hl], $fa
    ld l, $10
    ld [hl], $14
    ld l, $14
    ld [hl], $40
    inc l
    ld [hl], $fe
    ld l, $1a
    set 6, [hl]
    ld a, $d0
    ld [$cc48], a
    call $12ae
    ld b, $16
    call $24af
    jp $219e


Call_006_5656:
    call $1435
    ld e, a
    ld c, l
    ld h, d
    ld l, $08
    ld a, [hl]
    swap a
    ld hl, $56cd
    rst AddAToHL

jr_006_5665:
    ld a, [hli]
    or a
    jr z, jr_006_5698

    cp e
    jr z, jr_006_5671

    ld a, $04
    rst AddAToHL
    jr jr_006_5665

jr_006_5671:
    ld a, [hli]
    add c
    ld c, a
    ldh [$8b], a
    ld b, $ce
    ld a, [bc]
    cp $ff
    ret z

    ld b, $cf
    ld a, [bc]
    cp $5f
    jr z, jr_006_568f

    ld c, a
    ld b, $03

jr_006_5686:
    ld a, [hli]
    cp c
    jr z, jr_006_5691

    dec b
    jr nz, jr_006_5686

    jr jr_006_5698

jr_006_568f:
    scf
    ret


jr_006_5691:
    ld a, e
    sub $59
    cp $06
    jr c, jr_006_569a

jr_006_5698:
    ld a, $06

jr_006_569a:
    ld e, $08
    rst $00
    xor e
    ld d, [hl]
    xor e
    ld d, [hl]
    or b
    ld d, [hl]
    or b
    ld d, [hl]
    or l
    ld d, [hl]
    cp h
    ld d, [hl]
    pop bc
    ld d, [hl]
    ld a, [de]
    xor $01
    ld [de], a
    ret


    ld a, [de]
    xor $03
    ld [de], a
    ret


    ld a, [de]
    and $02
    or $01
    ld [de], a
    ret


    ld a, [de]
    and $02
    ld [de], a
    ret


    call Call_006_570d
    jr nc, jr_006_56c8

    xor a
    ret


jr_006_56c8:
    ld a, [de]
    xor $02
    ld [de], a
    ret


    ld e, [hl]
    ldh a, [$5e]
    ld e, c
    ld e, h
    ld e, c
    ld bc, $5a5d
    ld e, h
    ld e, h
    rst $38
    ld e, l
    ld e, e
    ld e, c
    nop
    ld e, l
    ld bc, $5a5d
    ld e, h
    ld e, d
    ldh a, [$5e]
    ld e, c
    ld e, h
    ld e, h
    db $10
    ld e, [hl]
    ld e, e
    ld e, d
    nop
    ld e, [hl]
    db $10
    ld e, [hl]
    ld e, d
    ld e, e
    ld e, d
    rst $38
    ld e, l
    ld e, e
    ld e, c
    ld e, e
    ld bc, $5a5d
    ld e, h
    nop
    ld e, l
    rst $38
    ld e, l
    ld e, e
    ld e, c
    ld e, e
    ldh a, [$5e]
    ld e, h
    ld e, c
    ld e, c
    db $10
    ld e, [hl]
    ld e, d
    ld e, e
    nop

Call_006_570d:
    ld a, c
    sub $7c
    cp $04
    ret nc

    add $0c
    add a
    ld b, a
    call $3ac6
    ret nz

    ld [hl], $1e
    ld l, $49
    ld [hl], b
    ld l, $4b
    ldh a, [$8b]
    ld [hl], a
    scf
    ret


Call_006_5727:
    ld e, $36
    ld a, [de]
    or a
    ret nz

    call $2c40
    ret nz

    ld e, $36
    ld a, $01
    ld [de], a
    ld [hli], a
    ld [hl], $1d
    ret


    nop
    inc b
    ld b, b
    ld bc, $4084
    nop
    inc b
    ld b, d
    nop
    add h
    ld b, b
    inc b
    ld [c], a
    ld b, e
    nop
    and h
    ld c, l
    inc b
    ld [c], a
    ld c, l
    ld bc, $4da4
    nop
    inc b
    ld b, c
    ld b, $42
    ld b, c
    ld b, $62
    ld b, c
    ld [de], a
    ld b, d
    ld c, a
    ld [de], a
    ld h, d
    ld c, a
    nop
    add h
    ld e, c
    nop
    add h
    ld e, d
    nop
    call nz, $045d
    ld [bc], a
    ld c, c
    nop
    inc h
    ld c, c
    nop
    ld h, h
    ld c, c
    nop
    and h
    ld c, c
    inc b
    ld [c], a
    ld c, c
    ld bc, $49a4
    ld bc, $4964
    ld bc, $4924
    ld [$5044], sp
    add hl, bc
    call nz, $0a42
    call nz, $0b50
    call nz, $0042
    ld b, h
    ld b, d
    nop
    ld h, h
    ld c, l
    ld bc, $4d64
    nop
    inc b
    ld b, b
    inc d
    inc d
    ld e, h
    inc de
    inc d
    ld e, h
    nop
    add h
    ld d, l
    ld bc, $5584
    nop
    call nz, $0055
    add h
    ld d, e
    nop
    call nz, $0053
    call nz, $005a
    inc b
    ld e, e
    nop
    ld b, h
    ld e, e
    ld bc, $5b04
    ld bc, $5b44
    nop
    add h
    ld d, c
    dec bc
    call nz, $0151
    add h
    ld d, c
    add hl, bc
    call nz, $0051
    inc b
    ld b, b
    dec b
    ld [c], a
    ld c, c
    dec l
    db $e4
    ld c, h
    inc b
    jp nz, $2e43

    ld b, $43
    ld l, $64
    ld b, e
    cpl
    ld b, $43
    cpl
    ld h, h
    ld b, e
    nop
    ld b, h
    ld d, b
    nop
    inc b
    ld d, b
    ld bc, $42c4
    nop
    inc h
    ld c, l
    nop
    call nz, TimerOverflowInterrupt
    add h
    ld d, b
    nop
    call nz, $0042
    inc b
    ld d, c
    nop
    ld b, h
    ld d, d
    nop
    inc b
    ld d, d
    ld bc, $5344
    nop
    inc b
    ld e, [hl]
    nop
    call nz, $0052
    add h
    ld d, d
    nop
    ld b, h
    ld d, e
    nop
    inc b
    ld d, e
    nop
    inc b
    ld d, a
    nop
    ld b, h
    ld d, a
    ld bc, $5844
    nop
    add h
    ld d, a
    nop
    call nz, $0057
    inc b
    ld e, b
    nop
    ld b, h
    ld e, b
    nop
    add h
    ld e, b
    ld [$5704], sp
    add hl, bc
    ld b, h
    ld e, b
    ld a, [bc]
    call nz, $0b57
    ld b, h
    ld e, b
    nop
    inc b
    ld b, b
    ld bc, $4084
    nop
    inc b
    ld b, d
    nop
    add h
    ld b, b
    inc b
    ld [bc], a
    ld c, b
    ld bc, $4844
    inc b
    ld [hli], a
    ld c, b
    nop
    ld b, h
    ld c, b
    nop
    ld b, h
    ld b, b
    ld bc, $41c4
    nop
    add h
    ld b, c
    nop
    call nz, $0041
    ld b, h
    ld e, c
    ld bc, $59c4
    inc b
    and d
    ld b, e
    nop
    call nz, $0059
    inc b
    ld c, d
    ld bc, $4b04
    inc b
    and d
    ld c, d
    nop
    inc b
    ld c, e
    nop
    inc b
    ld b, h
    nop
    inc b
    ld b, l
    nop
    add h
    ld b, h
    nop
    add h
    ld b, b
    nop
    inc b
    ld b, h
    nop
    add h
    ld b, l
    nop
    add h
    ld b, h
    nop
    add h
    ld b, b
    nop
    inc b
    ld b, [hl]
    nop
    add h
    ld b, a
    nop
    add h
    ld b, [hl]
    nop
    inc b
    ld b, a
    nop
    inc b
    ld b, [hl]
    nop
    add h
    ld b, a
    nop
    add h
    ld c, b
    nop
    inc b
    ld b, a
    nop
    ld b, h
    ld d, b
    ld bc, $42c4
    nop
    call nz, TimerOverflowInterrupt
    call nz, $0042
    ld b, h
    ld d, [hl]
    ld bc, $5684
    nop
    inc b
    ld d, [hl]
    nop
    add h
    ld d, [hl]
    ld bc, $4004
    ld bc, $40c4
    ld bc, $4204
    nop
    call nz, $0440
    ld [bc], a
    ld c, b
    ld bc, $4844
    inc b
    ld [hli], a
    ld c, b
    nop
    ld b, h
    ld c, b
    ld bc, $4044
    ld bc, $5144
    ld bc, $4184
    nop
    ld b, h
    ld d, c
    nop
    ld b, h
    ld e, c
    ld bc, $59c4
    inc b
    and d
    ld b, e
    nop
    call nz, $0059
    ld b, h
    ld c, d
    ld bc, $4b44
    inc b
    jp nz, $004a

    ld b, h
    ld c, e
    nop
    ld b, h
    ld b, h
    nop
    ld b, h
    ld b, l
    nop
    call nz, $0044
    call nz, VBlankInterrupt
    ld b, h
    ld b, h
    nop
    call nz, $0045
    call nz, $0044
    call nz, VBlankInterrupt
    ld b, h
    ld b, [hl]
    nop
    call nz, $0047
    call nz, $0046
    ld b, h
    ld b, a
    nop
    ld b, h
    ld b, [hl]
    nop
    call nz, $0047
    call nz, LCDCInterrupt
    ld b, h
    ld b, a
    nop
    ld b, h
    ld e, d
    ld bc, $4284
    nop
    inc b
    ld e, d
    nop
    add h
    ld b, d
    ld bc, $5644
    ld bc, $56c4
    ld bc, $5604
    nop
    call nz, $0056
    inc b
    ld d, b
    ld bc, $5104
    nop
    add h
    ld d, b
    nop
    inc b
    ld d, c
    nop
    ld b, h
    ld d, b
    ld bc, $42c4
    nop
    call nz, TimerOverflowInterrupt
    call nz, $0842
    ld b, h
    ld d, b
    add hl, bc
    call nz, $0a42
    call nz, $0b50
    call nz, $0142
    inc b
    ld d, b
    ld bc, $5084
    ld bc, $5084
    nop
    add h
    ld d, b
    nop
    inc b
    ld d, d
    ld bc, $5304
    nop
    add h
    ld d, d
    nop
    inc b
    ld d, e
    nop
    ld b, h
    ld d, d
    ld bc, $5344
    nop
    call nz, $0052
    ld b, h
    ld d, e
    ld bc, $5204
    ld bc, $5284
    ld bc, $5284
    nop
    add h
    ld d, d
    db $10
    inc b
    ld c, [hl]
    ld de, $4ec4
    ld [de], a
    add d
    ld c, [hl]
    db $10
    call nz, $104e
    ld b, h
    ld c, [hl]
    ld de, $4f04
    ld [de], a
    and d
    ld c, [hl]
    db $10
    inc b
    ld c, a
    nop
    ld b, h
    ld c, d
    ld bc, $4b84
    inc b
    jp nz, $004a

    add h
    ld c, e
    inc c
    add d
    ld c, d
    dec c
    call nz, $0e4b
    ld [c], a
    ld c, d
    rrca
    call nz, $044b
    ld [bc], a
    ld c, h
    ld bc, $4c64
    dec b
    ld b, d
    ld c, h
    nop
    ld h, h
    ld c, h
    inc b
    ld [hli], a
    ld c, h
    ld bc, $4ca4
    dec b
    ld [bc], a
    ld c, h
    nop
    and h
    ld c, h
    inc b
    ld b, d
    ld c, h
    ld [bc], a
    ld h, h
    ld c, h
    dec b
    ld [hli], a
    ld c, h
    inc bc
    ld h, h
    ld c, h
    inc b
    jp nz, $0158

    inc b
    ld e, c
    inc b
    ld [c], a
    ld e, b
    nop
    inc b
    ld e, c
    nop
    add h
    ld c, a
    ld bc, $4f84
    nop
    add h
    ld c, a
    nop
    add h
    ld c, a
    nop
    call nz, $014f
    call nz, $004f
    call nz, $004f
    call nz, $004f
    inc b
    ld d, h
    ld bc, $5504
    nop
    add h
    ld d, h
    nop
    inc b
    ld d, l
    nop
    ld b, h
    ld d, h
    ld bc, $5544
    nop
    call nz, $0054
    ld b, h
    ld d, l
    ld [c], a
    ld e, e
    db $eb
    ld e, e
    push hl
    ld e, e
    rst $38
    ld e, e
    add hl, de
    ld e, h
    inc h
    ld e, h
    ld a, [hli]
    ld e, h
    dec [hl]
    ld e, h
    ld b, b
    ld e, h
    ld b, b
    ld e, h
    ld b, b
    ld e, h
    ld c, c
    ld e, h
    ld d, c
    ld e, h
    ld e, c
    ld e, h
    ld h, l
    ld e, h
    ld l, e
    ld e, h
    ld [hl], c
    ld e, h
    sbc d
    ld e, h
    cp h
    ld e, h
    sbc d
    ld e, h
    and l
    ld e, h
    cp c
    ld e, h
    ret z

    ld e, h
    adc $5c
    sub $5c
    ld [c], a
    ld e, h
    db $eb
    ld e, h
    rst $30
    ld e, h
    inc c
    ld e, l
    inc c
    ld e, l
    inc c
    ld e, l
    inc c
    ld e, l
    dec d
    ld e, l
    jr jr_006_5ac2

    ld e, $5d
    dec l
    ld e, l
    ccf
    ld e, l
    ld b, d
    ld e, l
    ld c, b
    ld e, l
    ld d, h
    ld e, l
    ld h, [hl]
    ld e, l
    ld l, h
    ld e, l
    ld [hl], d
    ld e, l
    ld a, b
    ld e, l
    add b
    ld e, l
    add b
    ld e, l
    add b
    ld e, l
    add b
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    sbc [hl]
    ld e, l
    ld hl, $4b5d
    ld e, l
    add b
    ld e, l
    add b
    ld e, l
    add $5b
    adc $5b
    push hl
    ld e, e
    ld [hl], c
    ld e, h
    push bc
    ld e, d
    ret nc

    ld e, d
    db $db
    ld e, d
    and $5a
    db $f4
    ld e, d
    nop
    ld e, e
    ld b, $5b
    rst $38
    ld e, e
    ld a, [de]
    ld e, e
    sub $5c
    dec [hl]
    ld e, e
    ld a, [hl-]
    ld e, e
    ld h, b
    ld e, e
    ld l, e
    ld e, e
    ld [hl], c
    ld e, e
    db $76
    ld e, e
    ld a, e
    ld e, e
    add b
    ld e, e
    sbc d
    ld e, e
    xor b
    ld e, e
    or b

jr_006_5ac2:
    ld e, e
    cp e
    ld e, e
    ld [bc], a
    ld d, l
    nop
    ld b, $81
    nop
    ld b, $55
    nop
    rst $38
    ld sp, hl
    ld [bc], a
    ld d, [hl]
    nop
    ld b, $82
    nop
    ld b, $56
    nop
    rst $38
    ld sp, hl
    ld [bc], a
    ld d, a
    nop
    ld b, $83
    nop
    ld b, $57
    nop
    rst $38
    ld sp, hl
    ld bc, $0020
    ld bc, $0054
    ld bc, $0021
    ld bc, $0054
    rst $38
    di
    ld e, $08
    nop
    ld [de], a
    add hl, bc
    nop
    inc c
    ld a, [bc]
    nop
    ld a, a
    ld a, [bc]
    rst $38
    ld a, a
    rlca
    nop
    ld a, a
    rlca
    rst $38
    inc d
    inc e
    nop
    ld [$0056], sp
    ld [$0057], sp
    ld [$0054], sp
    ld [$0055], sp
    ld [$0056], sp
    rst $38
    db $ed
    ld a, a
    ld [hli], a
    nop
    ld a, [bc]
    inc hl
    nop
    ld a, [bc]
    ld [hli], a
    nop
    ld a, [bc]
    inc hl
    nop
    ld a, [bc]
    ld [hli], a
    nop
    ld a, [bc]
    inc hl
    nop
    ld a, [bc]
    ld [hli], a
    nop
    dec sp
    inc h
    nop
    inc a
    inc h
    rst $38
    ld a, a
    ld d, [hl]
    nop
    rst $38
    db $fc
    inc d
    inc e
    nop
    ld [$0056], sp
    ld [$0055], sp
    ld [$0054], sp
    ld [$0057], sp
    ld [$0056], sp
    inc d
    inc e
    nop
    ld [$0056], sp
    ld [$0057], sp
    ld [$0054], sp
    ld [$0055], sp
    ld [$0056], sp
    rst $38
    db $db
    ld a, a
    stop
    ld [$0056], sp
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld a, a
    rlca
    nop
    ld a, a
    rlca
    rst $38
    ld a, a
    sub [hl]
    nop
    rst $38
    db $fc
    ld a, a
    ld d, l
    nop
    rst $38
    db $fc
    ld a, a
    sub l
    nop
    rst $38
    db $fc
    ret z

    ld d, [hl]
    nop
    inc c
    daa
    nop
    ld c, $28
    nop
    inc d
    add hl, hl
    nop
    inc c
    daa
    nop
    ld c, $2a
    nop
    inc d
    dec hl
    nop
    ld bc, $ff2b
    rst $38
    ld [$1c7f], a
    nop
    ld a, a
    stop
    ld a, a
    ld sp, $7f00
    inc b
    nop
    rst $38
    db $fc
    or h
    inc b
    nop
    ld a, a
    ld d, [hl]
    nop
    rst $38
    db $fc
    ld [bc], a
    ld h, a
    nop
    ld b, $93
    nop
    ld b, $67
    nop
    rst $38
    ld sp, hl
    ld [bc], a
    ld h, l
    nop
    ld b, $91
    nop
    ld b, $65
    nop
    rst $38
    ld sp, hl
    ld [$0054], sp
    ld [$0080], sp
    rst $38
    ld sp, hl
    ld [bc], a
    ld d, [hl]
    nop
    ld [bc], a
    ld d, a
    nop
    ld [bc], a
    ld d, h
    nop
    ld [bc], a
    ld d, l
    nop
    ld [bc], a
    ld d, [hl]
    nop
    ld a, a
    ld e, $ff
    rst $38
    db $fc
    ld a, a
    ld e, $00
    ld c, h
    inc b
    nop
    add b
    inc b
    rst $38
    ld [$0002], sp
    ld [$0001], sp
    ld [$0000], sp
    ld [$0003], sp
    rlca
    ld [bc], a
    nop
    ld bc, $8002
    rst $38
    ldh a, [rDIV]
    stop
    inc b
    ld de, $0400
    ld [de], a
    nop
    inc b
    inc de
    nop
    inc b
    inc d
    nop
    inc b
    dec d
    nop
    inc b
    ld d, $00
    inc b
    rla
    nop
    rst $38
    rst $20
    inc b
    ret c

    nop
    inc b
    call c, $0400
    ldh [rP1], a
    rst $38
    or $7f
    inc e
    nop
    ld a, a
    inc e
    rst $38
    dec l
    ld [hl-], a
    nop
    inc b
    ld [bc], a
    rst $38
    inc b
    ld [hl-], a
    nop
    rst $38
    ld sp, hl
    dec l
    inc sp
    nop
    inc b
    ld [bc], a
    rst $38
    inc b
    inc sp
    nop
    rst $38
    ld sp, hl
    ld b, $c8
    nop
    db $10
    dec bc
    nop
    ld a, a
    dec bc
    rst $38
    ld b, $c8
    nop
    ld b, $cc
    ld bc, $f9ff
    db $10
    dec bc
    nop
    db $10
    inc c
    ld bc, $f9ff
    db $10
    ld [$0a00], sp
    add hl, bc
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, a
    ld a, [bc]
    rst $38
    ld a, a
    dec b
    nop
    ld a, a
    dec b
    rst $38
    ld a, a
    ld b, $00
    ld a, a
    ld b, $ff
    ld [bc], a
    ld d, h

jr_006_5c73:
    nop
    ld b, $80
    inc h
    ld b, $54
    nop
    ld b, $80
    inc b
    ld b, $54
    jr nz, @+$08

    add b
    inc b
    ld b, $54
    nop
    ld b, $80
    inc h
    ld b, $54
    nop
    ld b, $80
    inc b
    ld b, $54
    jr nz, jr_006_5c99

    add b
    inc b
    ld b, $54
    nop
    rst $38

jr_006_5c99:
    db $db
    ld bc, $00d0
    jr z, jr_006_5c73

    ld bc, $d014
    nop
    rst $38
    ld sp, hl
    ld bc, $00d0
    ld a, [bc]
    call nc, Call_006_6e00
    call nc, $10ff
    inc b
    nop
    ld a, [bc]
    ld d, h
    nop
    ld a, [bc]
    ret nc

    nop
    rst $38
    ldh a, [$03]
    call nc, $0400
    call nc, $0400
    ret nc

    inc b
    ld [bc], a
    ld e, h
    ld [$5c7f], sp
    rst $38
    ld [$04b0], sp

jr_006_5ccb:
    ld a, a
    or b
    rst $38
    add hl, bc
    add sp, $00
    add hl, bc
    db $ec
    nop
    rst $38
    ld sp, hl
    add hl, bc
    ret c

    nop
    add hl, bc
    call c, $0600
    ldh [rP1], a
    ld a, a
    add b
    rst $38
    ld b, $e4
    nop
    jr z, jr_006_5ccb

    nop
    ld a, a
    add b
    rst $38
    inc b
    ldh a, [rP1]
    inc b
    ldh a, [rSB]
    rrca
    db $f4
    nop
    ld a, a
    db $f4
    rst $38
    inc hl
    inc l
    nop
    inc a
    dec l
    nop
    inc hl
    inc l
    ld b, b
    inc hl
    ld l, $01
    inc a
    cpl
    ld bc, $2e1e
    ld bc, $2e7f
    rst $38
    ld b, $b4
    ld b, h
    ld b, $b0
    ld b, $7f
    or b
    add [hl]
    ld b, $ac
    nop
    ld [$06b0], sp
    ld a, a
    or b
    add [hl]
    inc bc
    xor h
    nop
    inc bc
    or b
    ld [bc], a
    ld [$64b4], sp
    inc bc
    or b
    ld b, $7f
    or b
    add [hl]
    inc c
    xor h
    ld b, b
    inc b
    or b
    ld b, d
    inc b
    or b
    ld b, h
    inc b
    cp b
    ld b, [hl]
    ld [$48b8], sp
    ld a, a

jr_006_5d3d:
    cp b
    adc b
    inc bc
    cp h
    nop
    ld [$06c0], sp
    ld a, a
    ld e, b
    add [hl]
    inc bc
    cp h
    nop
    inc bc
    ret nz

    ld [bc], a
    ld [$26c0], sp
    ld a, a
    ld e, b
    add [hl]
    inc c
    cp h
    nop
    inc b
    ret nz

    ld [bc], a
    inc b
    ret nz

    inc b
    inc b
    call nz, $0806
    call nz, Call_006_7f08
    call nz, $0388
    jr jr_006_5db9

    ld [bc], a
    jr jr_006_5d3d

    inc bc
    add hl, de
    ld d, d
    ld [bc], a
    add hl, de
    db $d3
    inc bc
    ld a, [de]
    ld d, h
    ld [bc], a
    ld a, [de]
    push de
    inc bc
    dec de
    ld d, [hl]
    ld [bc], a
    dec de
    rst AddAToHL
    rst $38
    rst $20
    add hl, bc
    ret c

    nop
    add hl, bc
    call c, $0600
    ldh [rP1], a
    ld b, $80
    nop
    db $10
    ld h, $01
    ld a, a
    dec h
    nop
    ld a, a
    dec h
    ld [bc], a
    ld a, a
    dec h
    inc bc
    jr nz, jr_006_5dc0

    nop
    ld a, a
    ld h, $04
    nop
    ld b, b
    add hl, bc
    ld b, b
    ld [de], a
    ld b, b
    dec de
    ld b, b
    inc h
    ld b, b
    dec l
    ld b, b
    ld [hl], $40
    dec sp
    ld b, b
    ld b, b
    ld b, b
    ld c, c
    ld b, b
    ld d, d
    ld b, b
    ld e, e
    ld b, b
    ld h, h
    ld b, b
    ld l, l

jr_006_5db9:
    ld b, b
    db $76
    ld b, b
    ld a, a
    ld b, b
    adc b
    ld b, b

jr_006_5dc0:
    sub c
    ld b, b
    sbc d
    ld b, b
    and e
    ld b, b
    db $ec
    ld b, b
    dec h
    ld b, c
    ld a, [hli]
    ld b, c
    cpl
    ld b, c
    inc [hl]
    ld b, c
    add hl, sp
    ld b, c
    ld a, $41
    ld b, e
    ld b, c
    ld c, h
    ld b, c
    ld d, l
    ld b, c
    ld e, [hl]
    ld b, c
    ld h, a
    ld b, c
    ld [hl], b
    ld b, c
    ld a, c
    ld b, c
    add d
    ld b, c
    adc e
    ld b, c
    sub h
    ld b, c
    sbc l
    ld b, c
    and [hl]
    ld b, c
    xor a
    ld b, c
    cp b
    ld b, c
    pop bc
    ld b, c
    jp z, $d341

    ld b, c
    ret c

    ld b, c
    db $dd
    ld b, c
    and $41
    di
    ld b, c
    nop
    add h
    ld l, h
    ld bc, $6cc4
    nop
    ld b, h
    ld l, h
    nop
    call nz, $016c
    add h
    ld l, h
    ld bc, $6d04
    ld bc, $6c44
    nop
    inc b
    ld l, l
    jr jr_006_5e76

    ld [bc], a
    nop
    nop
    ld b, $04
    add h
    ld b, $00
    nop
    rst $38
    ld sp, hl
    nop
    call nz, $0164
    ld b, h
    ld h, l
    nop
    add h
    ld h, h
    nop
    ld b, h
    ld h, l
    ld bc, $64c4
    ld bc, $6504
    ld bc, $6484
    nop
    inc b
    ld h, l
    nop
    call nz, $0166
    inc b
    ld h, a
    nop
    add h
    ld h, [hl]
    nop
    inc b
    ld h, a
    ld bc, $66c4
    ld bc, $6744
    ld bc, $6684
    nop
    ld b, h
    ld h, a
    dec b
    add h
    ld h, a
    ld bc, $67c4
    inc b
    add h
    ld h, a
    nop
    call nz, $0567
    and h
    ld h, a

jr_006_5e62:
    ld bc, $6804
    inc b
    and h
    ld h, a
    nop
    inc b
    ld l, b
    nop
    call nz, $0169
    inc b
    ld l, d
    nop
    add h
    ld l, c
    nop
    inc b

jr_006_5e76:
    ld l, d
    ld bc, $69c4
    ld bc, $6a44
    ld bc, $6984
    nop
    ld b, h
    ld l, d
    inc b
    and h
    ld l, e
    inc b
    and h
    ld l, e
    inc b
    and h
    ld l, e
    inc b
    and h
    ld l, e
    inc b
    call nz, $046b
    call nz, $046b
    call nz, $046b
    call nz, $9d6b
    ld e, [hl]
    ld [bc], a
    nop
    nop
    ld b, $04
    add h
    ld b, $00
    nop
    rst $38
    ld sp, hl
    nop
    db $e4
    ld h, d
    ld bc, $62e4
    ld [bc], a
    inc h
    ld h, e
    ld [bc], a
    ld b, h
    ld h, e
    cp h
    ld e, [hl]
    call nz, $bc5e
    ld e, [hl]
    call nz, $065e
    nop
    nop
    ld b, $01
    inc b
    rst $38
    ld sp, hl
    ld b, $02
    nop
    ld b, $03
    inc b
    rst $38
    ld sp, hl
    nop
    ld b, b
    add hl, bc
    ld b, b
    inc h
    ld b, b
    ld b, $82
    ld h, d
    dec d
    ld h, d
    ld e, [hl]
    ld b, $42
    ld e, [hl]
    ld b, $62
    ld e, [hl]
    jr jr_006_5e62

    ld e, [hl]
    ld d, $42
    ld e, [hl]
    rla
    add d
    ld e, [hl]
    ld a, [de]
    jp nz, $195e

    and d
    ld e, [hl]
    add hl, de
    jp nz, $1a5e

    ld [c], a
    ld e, [hl]
    ld a, [de]
    and d
    ld e, [hl]
    add hl, de
    ld [c], a
    ld e, [hl]
    ld e, $04
    ld e, a
    dec de
    add h
    ld e, a
    ld e, $44
    ld e, a
    inc e
    add h
    ld e, a
    dec e
    inc b
    ld e, a
    ld bc, $5fc4
    dec e
    ld b, h
    ld e, a
    nop
    call nz, $1b5f
    ld b, h
    ld h, b
    ld e, $04
    ld h, b
    inc e
    ld b, h
    ld h, b
    ld bc, $6084
    dec e
    inc b
    ld h, b
    nop
    add h
    ld h, b
    nop
    call nz, $0160
    ld b, h
    ld h, c
    nop
    inc b
    ld h, c
    nop
    ld b, h
    ld h, c
    rra
    call nz, $1b60
    add h
    ld h, c
    rra
    inc b
    ld h, c
    inc e
    add h
    ld h, c
    dec h
    call nz, $2360
    call nz, $2261
    inc b
    ld h, c
    jr nz, @-$3a

    ld h, c
    ld h, $c4
    ld h, b
    inc h
    inc b
    ld h, d
    ld hl, $6104
    dec h
    inc b
    ld h, d
    daa
    call nz, $2a60
    ld b, h
    ld h, d
    jr z, jr_006_5f5f

    ld h, c
    add hl, hl
    ld b, h
    ld h, d

jr_006_5f5f:
    ld b, $a2
    ld h, d
    inc l
    jp nz, $2b62

    jp nz, $1562

    nop
    nop
    nop
    dec l
    ld l, d
    ld bc, $0000
    ld [bc], a
    db $ed
    ld l, e
    inc bc
    nop
    nop
    inc b
    dec c
    ld l, l
    dec b
    bit 5, [hl]
    ld b, $69
    ld l, a
    rlca
    jp hl


    ld l, a
    ld [$6a69], sp

jr_006_5f86:
    add hl, bc
    nop
    nop
    ld a, [bc]
    add hl, hl
    ld l, h
    dec bc
    nop
    nop
    inc c
    ld c, c
    ld l, l
    dec c
    rlca
    ld l, a
    ld c, $49
    ld l, l
    rrca
    rlca
    ld l, a
    db $10
    dec bc
    ld [hl], e
    ld de, $73a5
    ld [de], a
    ld l, e
    ld [hl], d
    inc de
    dec bc
    ld [hl], e
    inc d
    and l
    ld [hl], e
    dec d
    ld l, e
    ld [hl], d
    ld d, $00
    nop
    rla
    ld l, e
    ld [hl], b
    jr jr_006_5fbc

    ld [hl], c
    add hl, de
    ld l, l
    ld [hl], c
    ld a, [de]
    dec hl
    ld [hl], d

jr_006_5fbc:
    dec de
    jp hl


    ld [hl], e
    inc e
    add hl, hl
    ld [hl], d
    dec e
    daa
    ld l, e
    ld e, $00
    nop
    rra
    ld l, e
    ld l, h
    jr nz, jr_006_5fcd

jr_006_5fcd:
    nop
    ld hl, $6d89
    ld [hli], a
    ld b, e
    ld l, a
    inc hl
    dec l
    ld l, e
    inc h
    nop
    nop
    dec h
    nop
    nop
    ld h, $49
    ld [hl], h
    daa
    ret


    ld [hl], h
    jr z, @-$35

    ld [hl], h
    add hl, hl
    xor c
    ld l, d
    ld a, [hli]
    nop
    nop
    dec hl
    ld l, c
    ld l, h
    inc l
    nop
    nop
    dec l
    dec c
    ld l, [hl]
    ld l, $0d
    ld l, [hl]
    cpl
    nop
    nop
    jr nc, jr_006_5f86

    ld l, l
    ld sp, $6f43
    ld [hl-], a
    dec hl
    ld [hl], d
    inc sp
    jp hl


    ld [hl], e
    inc [hl]
    add hl, hl
    ld [hl], d
    dec [hl]
    ld c, c
    ld [hl], h
    ld [hl], $c9
    ld [hl], h
    scf
    ret


    ld [hl], h
    jr c, jr_006_6015

jr_006_6015:
    nop
    ld d, [hl]
    ld h, b
    ld e, [hl]
    ld h, b
    ld h, [hl]
    ld h, b
    ld l, [hl]
    ld h, b
    db $76
    ld h, b
    ld a, [hl]
    ld h, b
    add [hl]
    ld h, b
    adc [hl]
    ld h, b
    sub [hl]
    ld h, b
    sbc [hl]
    ld h, b
    and [hl]
    ld h, b
    xor [hl]
    ld h, b
    or [hl]
    ld h, b
    cp [hl]
    ld h, b
    add $60
    adc $60
    sub $60
    ld [c], a
    ld h, b
    xor $60
    ld a, [$0660]
    ld h, c
    ld [de], a
    ld h, c
    ld e, $61
    ld h, $61
    ld l, $61
    add hl, sp
    ld h, c
    ld a, $61
    ld b, h
    ld h, c
    ld d, [hl]
    ld h, b
    ld d, [hl]
    ld h, b
    ld d, [hl]
    ld h, b
    ld d, [hl]
    ld h, b
    ld [$0000], sp
    ld [$0001], sp
    rst $38
    ld sp, hl
    ld [$0002], sp
    ld [$0003], sp
    rst $38
    ld sp, hl
    ld [$0004], sp
    ld [$0005], sp
    rst $38
    ld sp, hl
    ld [$0006], sp
    ld [$0007], sp
    rst $38
    ld sp, hl
    ld [$000a], sp
    ld [$000b], sp
    rst $38
    ld sp, hl
    ld [$000e], sp
    ld [$000f], sp
    rst $38
    ld sp, hl
    ld [$0008], sp
    ld [$0009], sp
    rst $38
    ld sp, hl
    ld [$000c], sp
    ld [$000d], sp
    rst $38
    ld sp, hl
    ld [$002b], sp
    ld [$002c], sp
    rst $38
    ld sp, hl
    ld [$002e], sp
    ld [$002f], sp
    rst $38
    ld sp, hl
    ld [$0029], sp
    ld [$002a], sp
    rst $38
    ld sp, hl
    ld [$002d], sp
    ld [$0016], sp
    rst $38
    ld sp, hl
    ld [$001f], sp
    ld [$0020], sp
    rst $38
    ld sp, hl
    ld [$0030], sp
    ld [$0031], sp
    rst $38
    ld sp, hl
    ld [$001d], sp
    ld [$001e], sp
    rst $38
    ld sp, hl
    ld [$0021], sp
    ld [$0022], sp
    rst $38
    ld sp, hl
    ld bc, $0010
    inc b
    ld de, $0400
    ld [de], a
    nop
    ld a, a
    ld de, $01ff
    inc de
    nop
    inc b
    inc d
    nop
    inc b
    dec d
    nop
    ld a, a
    inc d
    rst $38
    ld bc, $001a
    inc b
    dec de
    nop
    inc b
    inc e
    nop
    ld a, a
    inc e
    rst $38
    ld bc, $0032
    inc b
    inc sp
    nop
    inc b
    inc [hl]
    nop
    ld a, a
    inc sp
    rst $38
    ld [$0026], sp
    ld [$0027], sp
    ld [$0028], sp
    ld a, a
    jr z, @+$01

    ld [$0035], sp
    ld [$0036], sp
    ld [$0037], sp
    ld a, a
    ld [hl], $ff
    ld [$0006], sp
    ld [$0007], sp
    rst $38
    ld sp, hl
    ld [$0017], sp
    ld [$0018], sp
    rst $38
    ld sp, hl
    ld [$0023], sp
    ld [$0024], sp
    ld [$0025], sp
    rst $38
    or $7f
    jr c, jr_006_613c

jr_006_613c:
    rst $38
    db $fc
    ld e, $19
    nop
    ld a, a
    add hl, de
    rst $38
    ld a, a
    ld [de], a
    nop
    ld a, a
    ld de, $00ff
    ld b, d
    ld de, $0042
    ld b, d
    ld de, $2242
    ld b, d
    inc sp
    ld b, d
    ld b, h
    ld b, d
    ld d, l
    ld b, d
    ld h, [hl]
    ld b, d
    ld [hl], a
    ld b, d
    ld h, [hl]
    ld b, d
    ld [hl], a
    ld b, d
    adc b
    ld b, d
    sbc c
    ld b, d
    xor d
    ld b, d
    cp e
    ld b, d
    call z, $e142
    ld b, d
    or $42
    dec bc
    ld b, e
    jr nz, jr_006_61b7

    dec [hl]
    ld b, e
    add c
    ld b, e
    ret nz

    ld b, e
    ret nz

    ld b, e
    push de
    ld b, e
    xor $43
    inc bc
    ld b, h
    jr jr_006_61c8

    ld l, h
    ld b, h
    ld a, l
    ld b, h
    adc [hl]
    ld b, h
    sbc a
    ld b, h
    or b
    ld b, h
    pop bc
    ld b, h
    db $f4
    ld b, h
    add hl, bc
    ld b, l
    ld e, $45
    inc sp
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld c, d
    ld b, e
    ld e, e
    ld b, e
    ld c, d
    ld b, e
    ld e, e
    ld b, e
    ld l, h
    ld b, e
    sub [hl]
    ld b, e
    xor e
    ld b, e
    jp nc, $e344

    ld b, h
    dec l
    ld b, h
    ld b, d
    ld b, h
    ld d, a
    ld b, h
    ld d, l
    ld b, l
    ld h, [hl]

jr_006_61b7:
    ld b, l
    ld [hl], a
    ld b, l
    adc b
    ld b, l
    nop
    add hl, bc
    ld b, b
    ld bc, $4085
    ld [bc], a
    ret


    ld b, b
    inc bc
    ld c, e
    ld b, c

jr_006_61c8:
    inc b
    jp hl


    ld b, c
    dec b
    ld l, c
    ld b, d
    ld b, $e9
    ld b, d
    rlca
    ld l, a
    ld b, e
    ld [$444f], sp
    add hl, bc
    ld l, a
    ld b, e
    ld a, [bc]
    ld c, a
    ld b, h
    inc bc
    ld c, l
    ld b, c
    inc b
    jp hl


    ld b, c
    dec c
    dec l
    ld b, l
    ld c, $00
    nop
    rrca
    db $ed
    ld b, l
    stop
    nop
    ld de, $494f
    ld [de], a
    cpl
    ld c, d
    inc de
    xor a
    ld b, [hl]
    inc d
    adc a
    ld b, a
    dec d
    ld c, a
    ld c, c
    ld d, $2f
    ld c, d
    rla
    xor a
    ld b, [hl]
    jr @-$6f

    ld b, a
    add hl, de
    ld h, l
    ld c, b
    ld a, [de]
    and e
    ld c, b
    dec de
    jp $1c48


    rst $20
    ld c, b
    dec e
    nop
    nop
    ld e, $ef
    ld c, e
    rra
    nop
    nop
    jr nz, jr_006_621e

jr_006_621e:
    nop
    ld hl, $4cd1
    ld [hli], a
    nop
    nop
    inc hl
    nop
    nop
    inc h
    rrca
    ld c, e
    dec h
    nop
    nop
    ld h, $00
    nop
    daa
    pop de
    ld c, h
    jr z, jr_006_6236

jr_006_6236:
    nop
    add hl, hl
    nop
    nop
    ld a, [hli]
    bit 1, l
    dec hl
    ld h, l
    ld c, [hl]
    inc l
    and l
    ld c, [hl]
    dec l
    db $ed
    ld c, [hl]
    ld l, $00
    nop
    cpl
    xor l
    ld c, a
    jr nc, jr_006_624e

jr_006_624e:
    nop
    ld sp, $506f
    ld [hl-], a
    ld l, a
    ld d, b
    inc sp
    ld c, a
    ld d, c
    and d
    ld h, d
    jp nz, $ca62

    ld h, d
    jp nc, $da62

    ld h, d
    ld [c], a
    ld h, d
    db $ed
    ld h, d
    ld hl, sp+$62
    inc bc
    ld h, e
    jr nz, jr_006_62cf

    inc l
    ld h, e
    dec sp
    ld h, e
    ld b, a
    ld h, e
    ld d, [hl]
    ld h, e
    ld h, d
    ld h, e
    ld a, a
    ld h, e
    add a
    ld h, e
    adc a
    ld h, e
    sub a
    ld h, e
    sbc a
    ld h, e
    xor d
    ld h, e
    or l
    ld h, e
    ret nz

    ld h, e
    bit 4, e
    ld c, $63
    push hl
    ld h, d
    ldh a, [$62]
    ei
    ld h, d
    ld b, $63
    db $dd
    ld h, d
    db $eb
    ld h, e
    xor $63
    ld a, [$0563]
    ld h, h
    db $10
    ld h, h
    dec de
    ld h, h
    ld h, $64
    inc d
    nop
    nop
    ld b, $01
    nop
    ld b, $00
    nop
    ld b, $01
    nop
    inc d
    nop
    nop
    ld bc, $8000
    add hl, bc
    ld [bc], a
    ld b, b
    add hl, bc
    nop
    nop
    ld bc, $8000
    add hl, bc
    ld [bc], a
    ld bc, $e1ff
    ld bc, $4006

jr_006_62c5:
    ld a, a
    dec b
    add b
    rst $38
    db $fc
    ld bc, $400a
    ld a, a
    add hl, bc

jr_006_62cf:
    add b
    rst $38
    db $fc
    ld bc, $4004
    ld a, a
    inc bc
    add b
    rst $38
    db $fc
    ld bc, $4008
    ld a, a
    rlca
    add b
    rst $38
    db $fc
    ld bc, $0005
    ld bc, $4006
    ld a, a
    dec b
    add b
    rst $38
    db $fc
    ld bc, $0115
    ld bc, $4416
    ld a, a
    dec d
    add c
    rst $38
    db $fc
    ld bc, $0203
    ld bc, $4504
    ld a, a
    inc bc
    add d
    rst $38
    db $fc
    ld bc, $0311
    ld bc, $4612
    ld a, a
    ld de, $ff83
    db $fc
    inc a
    dec b
    ld bc, $0501
    nop
    ld a, [bc]
    rrca
    ld bc, $1001
    ld bc, $100a
    ld bc, $107f
    add b
    ld a, [bc]
    rrca
    nop
    ld bc, $4010
    ld a, [bc]
    stop
    ld a, a
    db $10
    add b
    ld [$0717], sp
    ld b, $15
    ld bc, $1801
    ld c, d
    ld [$0a18], sp
    ld a, a
    jr jr_006_62c5

    ld a, [bc]
    dec c
    ld [$0e01], sp
    ld c, e
    ld a, [bc]
    ld c, $0b
    ld a, a
    ld c, $8b
    ld [$0913], sp
    ld b, $11
    inc bc
    ld bc, $4c14
    ld [$0c14], sp
    ld a, a
    inc d
    adc h
    inc d
    add hl, de
    nop
    ld a, [bc]
    ld a, [de]
    nop
    ld a, [bc]
    dec de
    nop
    ld a, a
    dec de
    add b
    ld a, [bc]
    inc e
    nop
    ld a, [bc]
    dec e
    nop
    ld a, [bc]
    inc e
    nop
    ld a, [bc]
    dec e
    nop
    ld a, [bc]
    dec hl
    nop
    ld a, [bc]
    inc l
    nop
    ld a, [bc]
    dec hl
    nop
    ld a, [bc]
    inc l
    nop
    ld a, a
    inc l
    add b
    rst $38
    ld sp, hl
    ld bc, $0005
    ld a, a
    ld b, $00
    rst $38
    db $fc
    ld bc, $0115
    ld a, a
    ld d, $04
    rst $38
    db $fc
    ld bc, $020b
    ld a, a
    inc c
    dec b
    rst $38
    db $fc
    ld bc, $0311
    ld a, a
    ld [de], a
    ld b, $ff
    db $fc
    inc bc
    ld e, $00
    inc bc
    rra
    nop
    inc bc
    jr nz, jr_006_63a8

jr_006_63a8:
    rst $38
    or $03
    ld hl, $0300
    ld [hli], a
    nop
    inc bc
    inc hl
    nop
    rst $38
    or $03
    inc h
    nop
    inc bc
    dec h
    nop
    inc bc
    ld h, $00
    rst $38
    or $03
    daa
    nop
    inc bc
    jr z, jr_006_63c6

jr_006_63c6:
    inc bc
    add hl, hl
    nop
    rst $38
    or $14
    inc bc
    nop
    ld b, $2a
    nop
    ld b, $03
    nop
    ld b, $2a
    nop
    inc d
    inc bc
    nop
    ld bc, $8003
    add hl, bc
    inc b
    ld b, b
    ld [$0003], sp
    ld bc, $8003
    add hl, bc
    inc b
    ld b, b
    rst $38
    pop hl
    ld a, b
    add hl, bc
    nop
    ld [$0117], sp
    ld b, $09
    nop
    add hl, bc
    jr jr_006_63f8

    ld a, a

jr_006_63f8:
    jr @+$01

    ld bc, $0005
    ld a, [bc]
    cpl
    nop
    ld a, [bc]
    jr nc, jr_006_6403

jr_006_6403:
    rst $38
    ld sp, hl
    ld bc, $0115
    ld a, [bc]
    ld sp, $0a30
    dec d
    ld bc, $f9ff
    ld bc, $0203
    ld a, [bc]
    dec l
    cpl
    ld a, [bc]
    ld l, $32
    rst $38
    ld sp, hl
    ld bc, $0311
    ld a, [bc]
    ld [hl-], a
    ld sp, $110a
    inc bc
    rst $38
    ld sp, hl
    ld bc, $0007
    ld a, [bc]
    inc sp
    nop
    ld a, [bc]
    rlca
    nop
    rst $38
    ld sp, hl
    cp [hl]
    ld b, l
    cp [hl]
    ld b, l
    cp [hl]
    ld b, l
    db $d3
    ld b, l
    cp [hl]
    ld b, l
    db $ec
    ld b, l
    db $ec
    ld b, l
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
    inc e
    ld b, a
    inc e
    ld b, a
    cp [hl]
    ld b, l
    cp [hl]
    ld b, l
    dec b
    ld b, [hl]
    ld e, $46
    scf
    ld b, [hl]
    ld d, b
    ld b, [hl]
    add hl, sp
    ld b, a
    ld d, [hl]
    ld b, a
    ld [hl], e
    ld b, a
    ld [hl], e
    ld b, a
    sub b
    ld b, a
    xor l
    ld b, a
    jp z, $ca47

    ld b, a
    adc [hl]
    ld b, l
    adc c
    ld b, l
    adc c
    ld b, l
    sub a
    ld b, l
    and h
    ld b, l
    sub l
    ld c, b
    rst $20
    ld b, a
    ld l, c
    ld b, [hl]
    add hl, de
    ld c, c
    or [hl]
    ld c, b
    inc b
    ld c, b
    rst AddAToHL
    ld c, b
    ld hl, $8248
    ld b, [hl]
    ld a, $49
    ld hl, sp+$48
    ld a, $48
    db $d3
    ld b, l
    or c
    ld b, l
    or c
    ld b, l
    sbc e
    ld b, [hl]
    or h
    ld b, [hl]
    call $e646
    ld b, [hl]
    ld a, b
    ld c, b
    ld e, e
    ld c, b
    ld e, e

jr_006_6498:
    ld c, b
    nop
    daa
    ld d, d
    ld bc, $0000
    ld [bc], a
    ld h, a
    ld d, h
    inc bc
    nop
    nop
    inc b
    rst $00
    ld d, d
    dec b
    nop
    nop
    ld b, $c7
    ld d, h
    rlca
    nop
    nop
    ld [$5369], sp
    add hl, bc
    jp hl


    ld d, e
    ld a, [bc]
    ld c, e
    ld d, l
    dec bc
    db $eb
    ld d, l
    inc c
    ld l, c
    ld d, e

jr_006_64c0:
    dec c
    jp hl


    ld d, e
    ld c, $4b
    ld d, l
    rrca
    db $eb
    ld d, l
    db $10
    inc hl
    ld e, e

jr_006_64cc:
    ld de, $5b43
    ld [de], a
    ld h, a
    ld e, e
    inc de
    ld h, a
    ld e, e
    inc d
    ret


    ld d, [hl]
    dec d
    add hl, hl
    ld e, c
    ld d, $69
    ld d, a
    rla
    add l
    ld e, c
    jr jr_006_64cc

    ld d, a
    add hl, de
    xor c
    ld e, b
    ld a, [de]
    jp hl


    ld e, c
    dec de
    xor c
    ld e, d
    inc e
    jp hl


    ld d, a
    dec e
    xor c
    ld e, b
    ld e, $e9
    ld e, c
    rra
    xor c
    ld e, d
    jr nz, jr_006_64c0

    ld e, e
    ld hl, $5c03
    ld [hli], a
    inc hl
    ld e, h
    inc hl
    ld d, c
    ld e, h
    inc h
    nop
    nop
    dec h
    add l
    ld d, d
    ld h, $43
    ld d, e
    daa
    add l
    ld d, [hl]
    jr z, jr_006_6498

    ld d, [hl]

jr_006_6514:
    add hl, hl
    daa
    ld d, d
    ld a, [hli]
    nop
    nop
    dec hl
    rst $00
    ld d, d
    inc l
    nop
    nop
    dec l
    ld l, c
    ld d, e
    ld l, $e9
    ld d, e
    cpl
    ld l, c
    ld d, e
    jr nc, jr_006_6514

    ld d, e
    inc d
    ld h, e
    ld e, c
    ld d, $a3
    ld d, a
    jr jr_006_6599

    ld e, b
    inc e
    ld h, l
    ld e, b
    dec c
    jp hl


    ld d, e
    adc e
    ld h, l
    sub e
    ld h, l
    sbc e
    ld h, l
    and e
    ld h, l
    xor e
    ld h, l
    or e
    ld h, l
    cp [hl]
    ld h, l
    add $65
    pop de
    ld h, l
    jp c, $e365

    ld h, l
    db $ec
    ld h, l
    push af
    ld h, l
    ei
    ld h, l
    ld b, $66
    inc c
    ld h, [hl]
    rla
    ld h, [hl]
    ld [hli], a
    ld h, [hl]
    dec l
    ld h, [hl]
    jr c, jr_006_65c9

    ld b, e
    ld h, [hl]
    ld c, [hl]
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld l, a
    ld h, [hl]
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld a, b
    ld h, [hl]
    ld a, e
    ld h, [hl]
    add b
    ld h, [hl]
    add l
    ld h, [hl]
    adc d
    ld h, [hl]
    adc a
    ld h, [hl]
    sub h
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    and e
    ld h, [hl]
    or c
    ld h, [hl]
    cp l
    ld h, [hl]
    push bc
    ld h, [hl]
    ld a, [bc]
    dec hl
    dec c
    ld a, [bc]
    inc l
    ld de, $f9ff
    ld a, [bc]
    cpl
    ld c, $0a
    jr nc, jr_006_65ab

jr_006_6599:
    rst $38
    ld sp, hl
    ld a, [bc]
    add hl, hl
    rrca
    ld a, [bc]
    ld a, [hli]
    inc de
    rst $38
    ld sp, hl
    ld a, [bc]
    dec l
    db $10
    ld a, [bc]
    ld l, $14
    rst $38
    ld sp, hl

jr_006_65ab:
    jr @+$18

    dec c
    ld bc, $8d16
    rst $38
    ld sp, hl
    inc c
    inc e
    ld c, $0c
    dec e
    ld [de], a
    ld bc, $921d
    rst $38
    or $18
    inc d
    rrca
    ld bc, $8f14
    rst $38
    ld sp, hl
    inc c
    jr jr_006_65d9

jr_006_65c9:
    inc c
    add hl, de
    inc d
    ld bc, $9419
    rst $38
    or $06
    ld b, $0d
    ld b, $07
    ld de, $0708

jr_006_65d9:
    sub c
    ld b, $0e
    dec d
    ld b, $0f
    jr jr_006_65e9

    rrca
    sbc b
    ld b, $02
    ld d, $06
    inc bc
    add hl, de

jr_006_65e9:
    ld [$9903], sp
    ld b, $0a
    rla
    ld b, $0b
    ld a, [de]
    ld [$9a0b], sp
    inc c
    rla
    dec c
    inc c
    rla
    adc l
    ld b, $1e
    dec d
    ld b, $1f
    jr jr_006_660e

    rra
    sbc b
    rst $38
    ld sp, hl
    inc c
    dec d
    ld d, $7f
    dec d
    sub [hl]
    ld b, $1a

jr_006_660e:
    rla
    ld b, $1b
    ld a, [de]
    inc c
    dec de
    sbc d
    rst $38
    ld sp, hl
    ld [bc], a
    dec hl
    dec c
    ld a, [bc]
    ld h, $0d
    inc c
    dec hl
    dec c
    rst $38
    ld sp, hl
    ld [bc], a
    cpl
    ld c, $0a
    jr z, jr_006_6636

    inc c
    cpl
    ld c, $ff
    ld sp, hl
    ld [bc], a
    add hl, hl
    rrca
    ld a, [bc]
    dec h
    rrca
    inc c
    add hl, hl
    rrca

jr_006_6636:
    rst $38
    ld sp, hl
    ld [bc], a
    dec l
    db $10
    ld a, [bc]
    daa
    db $10
    inc c
    dec l
    db $10
    rst $38
    ld sp, hl
    ld [bc], a
    ld d, $0d
    ld a, [bc]
    ld [hl-], a
    dec c
    inc c
    rla
    dec c
    rst $38
    ld sp, hl
    ld [bc], a
    inc e
    ld c, $0a
    inc [hl]
    ld c, $0c
    inc e
    ld c, $ff
    ld sp, hl
    ld [bc], a
    inc d
    rrca
    ld a, [bc]
    ld sp, $0c0f
    inc d
    rrca
    rst $38
    ld sp, hl
    ld [bc], a
    jr @+$12

    ld a, [bc]
    inc sp
    db $10
    inc c
    jr jr_006_667d

    rst $38
    ld sp, hl
    ld a, a
    ld de, $7f00
    inc de
    nop
    ld a, a
    stop
    ld a, a
    ld [de], a
    nop
    ld a, a
    dec hl

jr_006_667d:
    nop
    rst $38
    db $fc
    ld a, a
    cpl
    nop
    rst $38
    db $fc
    ld a, a
    add hl, hl
    nop
    rst $38
    db $fc
    ld a, a
    dec l
    nop
    rst $38
    db $fc
    ld a, a
    ld d, $01
    rst $38
    db $fc
    inc c
    inc e
    ld bc, $fcff
    ld a, a
    inc d
    ld bc, $fcff
    inc c
    jr jr_006_66a2

    rst $38

jr_006_66a2:
    db $fc
    inc a
    inc hl
    nop
    rrca
    inc h
    nop
    rrca
    inc hl
    nop
    add hl, de
    inc h
    nop
    rst $38
    di
    inc d
    jr nz, jr_006_66b4

jr_006_66b4:
    ld a, [bc]
    ld hl, $0a00
    ld [hli], a
    nop
    ld [$ff22], sp
    inc c
    inc c
    nop
    inc c
    dec [hl]
    nop
    rst $38
    ld sp, hl
    inc c
    ld [$0c00], sp
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    ld h, e
    ld c, c
    ld [hl], h
    ld c, c
    ld a, b
    ld c, d
    sbc d
    ld c, d
    ld h, e
    ld c, c
    ld [hl], h
    ld c, c
    adc c
    ld c, d
    xor e
    ld c, d
    add l
    ld c, c
    add l
    ld c, c
    sub [hl]
    ld c, c
    xor e
    ld c, c
    ret nz

    ld c, c
    ret nz

    ld c, c
    pop de
    ld c, c
    and $49
    ei
    ld c, c
    ei
    ld c, c
    inc b
    ld c, d
    ld de, $1e4a
    ld c, d
    ld e, $4a
    cpl
    ld c, d
    cpl
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ret nz

    ld c, c
    ret nz

    ld c, c
    ret nz

    ld c, c
    ret nz

    ld c, c
    ld d, c
    ld c, d
    ld e, d
    ld c, d
    ld e, d
    ld c, d
    ld b, b
    ld c, d
    ld e, a
    ld c, d
    ld a, b
    ld c, d
    adc c
    ld c, d
    ld b, b
    ld c, d
    ret nz

    ld c, c
    ld a, b
    ld c, d
    sbc d
    ld c, d
    adc c
    ld c, d
    xor e
    ld c, d
    ld b, b
    ld c, d
    ld b, b
    ld c, d
    ret nz

    ld c, c
    ret nz

    ld c, c
    nop
    cpl
    ld e, [hl]
    ld bc, $0000
    ld [bc], a
    add hl, bc
    ld e, a
    inc bc
    adc c
    ld e, a
    inc b
    dec c
    ld h, b
    dec b
    dec c
    ld h, b
    ld b, $cb
    ld h, b
    rlca
    nop
    nop
    ld [$616b], sp
    add hl, bc
    nop
    nop
    ld a, [bc]
    dec c
    ld h, d
    dec bc
    nop
    nop
    inc c
    dec c
    ld h, d
    dec c
    nop
    nop
    ld c, $cb
    ld h, b
    rrca
    nop
    nop
    db $10
    ld l, e
    ld h, c
    ld de, $0000
    ld [de], a
    dec c
    ld h, d
    inc de
    nop
    nop
    inc d
    dec c
    ld h, d
    dec d
    nop
    nop
    ld d, $c7
    ld h, d
    rla
    nop
    nop
    jr jr_006_679e

    ld h, e
    add hl, de
    ld h, e
    ld h, e
    ld a, [de]
    add e
    ld h, e
    dec de
    xor l
    ld h, e
    inc e
    nop
    nop
    dec e
    xor l
    ld h, e
    ld e, $00
    nop
    rra
    ld l, l
    ld h, h
    jr nz, jr_006_6791

jr_006_6791:
    nop
    ld hl, $646d
    ld [hli], a

jr_006_6796:
    nop
    nop
    inc hl
    dec l
    ld h, l
    inc h
    db $ed
    ld h, l

jr_006_679e:
    dec h
    dec l
    ld h, l
    ld h, $ed
    ld h, l
    daa
    dec l

jr_006_67a6:
    ld h, l
    jr z, jr_006_6796

    ld h, l
    add hl, hl
    dec l
    ld h, l
    ld a, [hli]
    db $ed
    ld h, l
    dec hl
    and l
    ld h, [hl]
    inc l
    push hl
    ld h, [hl]
    dec l
    dec l
    ld h, a
    ld l, $00
    nop
    cpl
    and l

jr_006_67be:
    ld l, c
    jr nc, jr_006_67a6

    ld l, c
    ld sp, $67ed
    ld [hl-], a
    nop
    nop
    inc sp
    and l
    ld l, c
    inc [hl]
    push hl
    ld l, c
    dec [hl]
    or c
    ld l, b
    ld [hl], $00
    nop
    scf
    and l
    ld l, c
    jr c, jr_006_67be

    ld l, c
    add hl, sp
    or c
    ld l, b
    ld a, [hl-]
    nop
    nop
    dec sp
    and l
    ld l, c
    inc a
    push hl
    ld l, c
    dec a
    nop
    nop
    ld a, $00   ; xor a
    nop
    ld [hli], a
    ld l, b
    ld b, d
    ld l, b
    ld b, a
    ld l, b
    ld c, h
    ld l, b
    ld d, c
    ld l, b
    ld d, [hl]
    ld l, b
    ld e, [hl]
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, [hl]
    ld l, b
    db $76
    ld l, b
    ld a, [hl]
    ld l, b
    add [hl]
    ld l, b
    adc [hl]
    ld l, b
    sub [hl]
    ld l, b
    or a
    ld l, b
    jp $cb68


    ld l, b
    db $d3
    ld l, b
    db $db
    ld l, b
    db $e3
    ld l, b
    db $eb
    ld l, b
    di
    ld l, b
    ei
    ld l, b
    inc bc
    ld l, c
    dec d
    ld l, c
    daa
    ld l, c
    add hl, sp
    ld l, c
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld bc, $0a00
    nop
    nop
    ld a, [bc]
    ld bc, $1400
    nop
    nop
    ld a, [bc]
    dec a
    nop
    ld a, [bc]
    ld a, $00   ; xor a
    ld a, [bc]
    dec a
    nop
    ld a, [bc]
    ld a, $00   ; xor a
    inc d
    dec a
    nop
    rst $38
    pop hl
    ld a, a
    inc bc
    nop
    rst $38
    db $fc
    ld a, a
    dec b
    nop
    rst $38
    db $fc
    ld a, a
    ld [bc], a
    nop
    rst $38
    db $fc
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld [$0008], sp
    ld [$0009], sp
    rst $38
    ld sp, hl
    ld [$000c], sp
    ld [$000d], sp
    rst $38
    ld sp, hl
    ld [$0006], sp
    ld [$0007], sp
    rst $38
    ld sp, hl
    ld [$000a], sp
    ld [$000b], sp
    rst $38
    ld sp, hl
    inc b
    db $10
    inc hl
    inc b
    ld de, $ff27
    ld sp, hl
    inc b
    inc d
    inc h
    inc b
    dec d
    jr z, @+$01

    ld sp, hl
    inc b
    ld c, $25
    inc b
    rrca
    add hl, hl
    rst $38
    ld sp, hl
    inc b
    ld [de], a
    ld h, $04
    inc de
    ld a, [hli]
    rst $38
    ld sp, hl
    ld e, $16
    nop
    ld b, $17
    nop
    ld b, $16
    nop
    ld b, $17
    nop
    ld b, $16
    nop
    ld e, $17
    nop
    ld a, [bc]
    dec hl
    nop
    ld a, [bc]
    inc l
    nop
    ld a, [bc]
    dec hl
    nop
    ld a, [bc]
    inc l
    nop
    ld a, a
    inc l
    rst $38
    inc d
    jr jr_006_68ba

jr_006_68ba:
    ld a, [bc]
    add hl, de
    nop
    ld a, [bc]
    ld a, [de]
    nop
    ld a, a
    ld a, [de]
    rst $38
    ld [$001f], sp
    ld [$0020], sp
    rst $38
    ld sp, hl
    ld [$0027], sp
    ld [$0028], sp
    rst $38
    ld sp, hl
    ld [$001b], sp
    ld [$001c], sp
    rst $38
    ld sp, hl
    ld [$0023], sp
    ld [$0024], sp
    rst $38
    ld sp, hl
    ld [$1b21], sp
    ld [$1f22], sp
    rst $38
    ld sp, hl
    ld [$1c29], sp
    ld [$202a], sp
    rst $38
    ld sp, hl
    ld [$1d1d], sp
    ld [$211e], sp
    rst $38
    ld sp, hl
    ld [$1e25], sp
    ld [$2226], sp
    rst $38
    ld sp, hl
    inc b
    ld sp, $042b
    ld [hl-], a
    dec hl
    inc b
    inc sp
    dec hl
    inc b
    inc [hl]
    dec hl
    ld a, [bc]
    ld sp, $7f2b
    ld sp, $04ab
    add hl, sp
    inc l
    inc b
    ld a, [hl-]
    inc l
    inc b
    dec sp
    inc l
    inc b
    inc a
    inc l
    ld a, [bc]
    add hl, sp
    inc l
    ld a, a
    add hl, sp
    xor h
    inc b
    dec l
    dec l
    inc b
    ld l, $2d
    inc b
    cpl
    dec l
    inc b
    jr nc, jr_006_6960

    ld a, [bc]
    dec l
    dec l
    ld a, a
    dec l
    xor l
    inc b
    dec [hl]
    ld l, $04
    ld [hl], $2e
    inc b
    scf
    ld l, $04
    jr c, jr_006_6973

    ld a, [bc]
    dec [hl]
    ld l, $7f
    dec [hl]
    xor [hl]
    cp h
    ld c, d
    push de
    ld c, d
    xor $4a
    xor $4a
    rlca
    ld c, e
    jr nz, jr_006_69a2

    add hl, sp
    ld c, e
    ld d, d
    ld c, e
    add hl, sp
    ld c, e
    ld d, d
    ld c, e
    ld l, e

jr_006_6960:
    ld c, e
    add b
    ld c, e
    sub l
    ld c, e
    xor d
    ld c, e
    add hl, sp
    ld c, e
    ld d, d
    ld c, e
    add hl, sp
    ld c, e
    cp a
    ld c, e
    ret c

    ld c, e
    db $ed
    ld c, e

jr_006_6973:
    ld [bc], a
    ld c, h
    rla
    ld c, h
    inc l
    ld c, h
    add hl, sp
    ld c, h
    ld b, [hl]
    ld c, h
    ld c, a
    ld c, h
    ld c, a
    ld c, h
    ld d, h
    ld c, h
    ld l, l
    ld c, h
    add [hl]
    ld c, h
    ld l, l
    ld c, h
    ld d, h
    ld c, h
    ld l, l
    ld c, h
    ld d, h
    ld c, h
    ld l, l
    ld c, h
    sbc a
    ld c, h
    sbc a
    ld c, h
    sbc a
    ld c, h
    sbc a
    ld c, h
    cp b
    ld c, h
    cp b
    ld c, h
    cp b
    ld c, h
    cp b
    ld c, h
    pop de

jr_006_69a2:
    ld c, h
    pop de
    ld c, h
    sbc $4c
    rst $30
    ld c, h
    jr @+$4f

    ld b, c
    ld c, l
    ld l, d
    ld c, l
    add e
    ld c, l
    and h
    ld c, l
    call $f64d
    ld c, l
    rrca
    ld c, [hl]
    jr nc, jr_006_6a09

    ld e, c
    ld c, [hl]
    add d
    ld c, [hl]
    sbc e
    ld c, [hl]
    cp h
    ld c, [hl]
    push hl
    ld c, [hl]
    ld c, $4f
    daa
    ld c, a
    ld hl, $d101
    ld a, [hl]
    sub $0f
    rst $00
    ret c

    ld l, c
    ld a, [bc]
    ld l, h
    ld h, h
    ld l, e
    db $f4
    ld l, h
    ld e, $04
    ld a, [de]
    ld a, [de]
    rst $00
    pop hl
    ld l, c
    dec d
    ld l, d
    call Call_006_6a07
    ld h, d
    ld l, $02
    ld a, [hl]
    or a
    jr z, jr_006_69fe

    ld l, $10
    ld [hl], $50
    ld l, $09
    ld [hl], $08

Jump_006_69f3:
    ld bc, $fe00
    call $2358
    ld a, $02
    jp $2a51


Jump_006_69fe:
jr_006_69fe:
    xor a
    ld [$cbb5], a
    ld a, $1e
    jp $2a51


Call_006_6a07:
    ld a, $01

jr_006_6a09:
    ld [de], a
    ld hl, $41b5
    ld e, $05
    call $008a
    jp $1df1


    ld e, $02
    ld a, [de]
    rst $00
    dec e
    ld l, d
    ld h, l
    ld l, d
    ld e, $05
    ld a, [de]
    rst $00
    dec h
    ld l, d
    ld b, h
    ld l, d
    call $2a36
    ld h, d
    ld l, $21
    ld a, [hl]
    or a
    jr z, jr_006_6a37

    ld a, $01
    ld [$cbb5], a
    ld l, $05
    inc [hl]

jr_006_6a37:
    ld c, $20
    call $1f04
    ret nz

    ld h, d
    ld bc, $ff20
    jp $2358


    call $2a36
    ld h, d
    ld l, $21
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    inc a
    jr z, jr_006_6a5e

Jump_006_6a52:
    call $3ac6
    ret nz

    ld [hl], $07
    ld bc, $f812
    jp $2215


jr_006_6a5e:
    ld l, $05
    ld [hl], $00
    jp Jump_006_69fe


    ld e, $05
    ld a, [de]
    rst $00
    ld a, a
    ld l, d
    add d
    ld l, d
    or h
    ld l, d
    cp l
    ld l, d
    jp z, $dd6a

    ld l, d
    ld [$126a], a
    ld l, e
    inc h
    ld l, e
    add hl, sp
    ld l, e
    ld e, d
    ld l, e
    ld l, $05
    inc [hl]
    call $1fdb
    ld e, $0d
    ld a, [de]
    bit 7, a
    jr nz, jr_006_6aa4

    ld hl, $d00d
    ld b, [hl]
    add $18
    cp b
    jr c, jr_006_6aa4

    call $23aa
    inc [hl]
    inc l
    ld [hl], $3c
    ld l, $0e
    xor a
    ld [hli], a
    ld [hl], a
    jp $2a36


jr_006_6aa4:
    ld c, $40
    call $1f04
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $08
    jp $2a36


    call $2391
    ret nz

    dec l
    dec [hl]
    jp Jump_006_69f3


    call $2391
    ret nz

    ld [hl], $5a
    dec l
    inc [hl]
    ld a, $14
    jp $2a51


    call $2a36
    call $2391
    ret nz

    ld [hl], $0c
    dec l
    inc [hl]
    ld a, $1f
    call $2a51
    jp Jump_006_6a52


    call $2391
    ret nz

    ld [hl], $3c
    dec l
    inc [hl]
    ld a, $1e
    jp $2a51


    call $2391
    ret nz

    ld [hl], $1e
    dec l
    inc [hl]
    ld hl, $c6c5
    ld [hl], $ff
    ld a, $81
    ld [$cc77], a
    ld hl, $d010
    ld [hl], $14
    ld l, $14
    ld [hl], $00
    inc l
    ld [hl], $fe
    ld a, $18
    ld [$d009], a
    ld a, $53
    jp $0c74


    call $2391
    ret nz

    ld [hl], $14
    dec l
    inc [hl]
    xor a
    ld hl, $d01a
    ld [hl], a
    inc a
    ld [$cca4], a
    ret


    call $2391
    ret nz

    dec l
    inc [hl]
    ld l, $09
    ld [hl], $18

Jump_006_6b2e:
    ld a, $1c
    call $2a51
    ld bc, $fe00
    jp $2358


    call $1fdb
    ld e, $0d
    ld a, [de]
    sub $10
    rlca
    jr nc, jr_006_6b4a

    ld hl, $cfdf
    ld [hl], $01
    ret


jr_006_6b4a:
    ld c, $40
    call $1f04
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $08
    jp $2a36


    call $2391
    ret nz

    ld l, $05
    dec [hl]
    jp Jump_006_6b2e


    ld e, $04
    ld a, [de]
    rst $00
    ld l, h
    ld l, e
    sub [hl]
    ld l, e
    call Call_006_6a07
    ld h, d
    ld l, $06
    ld [hl], $5a
    ld l, $10
    ld [hl], $37
    ld l, $36
    ld [hl], $05
    ld l, $09
    ld [hl], $10
    ld l, $0e
    ld [hl], $ff
    inc l
    ld [hl], $e0
    call $3ac6
    jr nz, jr_006_6b91

    ld [hl], $c0
    ld l, $57
    ld [hl], d

jr_006_6b91:
    ld a, $07
    jp $2a51


    ld e, $05
    ld a, [de]
    or a
    jr z, jr_006_6ba2

    call $2a36
    call $1fdb

jr_006_6ba2:
    ld e, $05
    ld a, [de]
    rst $00
    or b
    ld l, e
    cp d
    ld l, e
    add $6b
    sbc $6b
    xor $6b
    call $2391
    ret nz

    ld [hl], $48
    ld l, $05
    inc [hl]
    ret


    call $2391
    ret nz

    ld [hl], $06
    ld l, $05
    inc [hl]
    jp Jump_006_6d89


    ld h, d
    ld l, $09
    ld a, [hl]
    cp $10
    jr z, jr_006_6bd2

    ld l, $05
    inc [hl]
    ret


jr_006_6bd2:
    ld l, $06
    dec [hl]
    ret nz

    call Call_006_6da0
    ld [hl], $06
    jp Jump_006_6d89


    ld h, d
    ld l, $09
    ld a, [hl]
    cp $10
    jr nz, jr_006_6bd2

    ld l, $05
    inc [hl]
    ld a, $07
    jp $2a51


    ld e, $0b
    ld a, [de]
    cp $b0
    ret c

    ld hl, $d101
    ld b, $3f
    call $044b
    ld hl, $d101
    ld [hl], $10
    ld l, $0b
    ld [hl], $e8
    inc l
    inc l
    ld [hl], $28
    ret


    ld e, $04
    ld a, [de]
    rst $00
    ld [de], a
    ld l, h
    ld h, $6c
    call Call_006_6a07
    ld h, d
    ld l, $10
    ld [hl], $28
    ld l, $0e
    ld [hl], $e0
    inc l
    ld [hl], $ff
    ld a, $19
    jp $2a51


    ld e, $05
    ld a, [de]
    rst $00
    jr c, @+$6e

    ld h, h
    ld l, h
    add a
    ld l, h
    sub a
    ld l, h
    and e
    ld l, h
    cp d
    ld l, h
    add $6c
    ld h, d
    ld l, $05
    inc [hl]
    ld l, $07
    ld a, [hl]
    cp $02
    jr nz, jr_006_6c4a

    push af
    ld a, $1a
    call $2a51
    pop af

jr_006_6c4a:
    ld b, a
    add a
    add b
    ld hl, $6c5b
    rst AddAToHL
    ld a, [hli]
    ld e, $09
    ld [de], a
    ld c, [hl]
    inc hl
    ld b, [hl]
    jp $2358


    inc c
    ld b, b
    db $fd
    inc c
    and b
    db $fd
    inc de
    add b
    cp $cd
    ld [hl], $2a
    call $1fdb
    ld c, $18
    call $1f04
    ret nz

    ld h, d
    ld l, $07
    inc [hl]
    ld a, [hl]
    ld l, $05
    cp $03
    jr z, jr_006_6c81

    dec [hl]
    ld l, $06
    ld [hl], $08
    ret


jr_006_6c81:
    inc [hl]
    ld l, $06
    ld [hl], $06
    ret


    call $2391
    ret nz

    ld l, $05
    inc [hl]
    ld l, $06
    ld [hl], $14
    ld a, $27
    jp $2a51


    call $2391
    ret nz

    ld l, $05
    inc [hl]
    ld l, $06
    ld [hl], $78
    ret


    call $2a36
    call $2391
    ret nz

    ld l, $05
    inc [hl]
    ld l, $06
    ld [hl], $3c
    ld l, $09
    ld [hl], $0b
    ld l, $10
    ld [hl], $14
    ret


    call $2391
    ret nz

    ld l, $05
    inc [hl]
    ld a, $26
    jp $2a51


    call $2a36
    call $1fdb
    ld e, $0d
    ld a, [de]
    cp $78
    jr nz, jr_006_6cd8

    ld a, $05
    jp $2a51


jr_006_6cd8:
    cp $b0
    ret c

    ld hl, $d101
    ld b, $3f
    call $044b
    ld hl, $d101
    ld [hl], $0f
    inc l
    ld [hl], $01
    ld l, $0b
    ld [hl], $48
    inc l
    inc l
    ld [hl], $d8
    ret


    ld e, $04
    ld a, [de]
    ld a, [de]
    rst $00
    db $fd
    ld l, h
    inc h
    ld l, l
    call Call_006_6a07
    ld h, d
    ld l, $10
    ld [hl], $32
    ld l, $36
    ld [hl], $04
    ld l, $02
    ld a, [hl]
    or a
    ld a, $f0
    jr z, jr_006_6d17

    ld a, d
    ld [$cc48], a
    ld a, $d0

jr_006_6d17:
    ld l, $0f
    ld [hl], a
    ld l, $09
    ld [hl], $18
    ld l, $02
    ld a, [hl]
    jp Jump_006_6d78


    ld e, $02
    ld a, [de]
    rst $00
    ld d, d
    ld l, l
    inc l
    ld l, l
    ld e, $05
    ld a, [de]
    rst $00
    ld [hl], $6d
    ld h, d
    ld l, l
    ld [hl], a
    ld l, l
    ld a, [$cfc0]
    or a
    jr z, jr_006_6d52

    call $23aa
    ld bc, $ff00
    call $2358
    ld l, $09
    ld [hl], $0e
    ld l, $10
    ld [hl], $14
    ld a, $1b
    jp $2a51


jr_006_6d52:
    ld h, d
    ld l, $02
    ld a, [hl]
    ld l, $06
    dec [hl]
    call z, Call_006_6d78
    call $1fdb
    jp $2a36


    call $1fdb
    ld c, $20
    call $232b
    jp nc, Jump_006_6d74

    call $23aa
    ld l, $20
    ld [hl], $01

Jump_006_6d74:
    jp $2a36


    ret


Call_006_6d78:
Jump_006_6d78:
    ld hl, $6da8
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call Call_006_6da0
    ld b, a
    rst AddAToHL
    ld a, [hl]
    ld e, $06
    ld [de], a
    ld a, b

Jump_006_6d89:
    sub $04
    and $07
    ret nz

    ld e, $09
    call $26a3
    dec a
    and $03
    ld h, d
    ld l, $08
    ld [hl], a
    ld l, $36
    add [hl]
    jp $2a51


Call_006_6da0:
    ld e, $09
    ld a, [de]
    dec a
    and $1f
    ld [de], a
    ret


    xor h
    ld l, l
    call z, $066d
    ld b, $06
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    dec c
    ld a, [bc]
    ld [$0406], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    dec c
    ld a, [bc]
    ld [$0406], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $02
    ld a, [de]
    rst $00
    ld b, $6e
    ld de, $096f
    ld [hl], c
    or b
    ld [hl], c
    inc c
    ld [hl], d
    sbc a
    ld [hl], d
    db $eb
    ld [hl], d
    ld [hl], e
    ld [hl], e

Call_006_6e00:
    adc a
    ld [hl], e
    or l
    ld [hl], e
    ld d, d
    ld [hl], h
    ld e, $04
    ld a, [de]
    rst $00
    ld c, $6e
    jr jr_006_6e7c

    call Call_006_7381
    call $1e1e
    xor a
    call $2a51
    ld e, $05
    ld a, [de]
    rst $00
    ld a, [hli]
    ld l, [hl]
    ld d, [hl]
    ld l, [hl]
    ld l, l
    ld l, [hl]
    add e
    ld l, [hl]
    sbc e
    ld l, [hl]
    xor c
    ld l, [hl]
    ld hl, sp+$6e
    ld a, [$cc47]
    rlca
    ld a, $00   ; xor a
    jp c, $2a51

    ld h, d
    ld l, $0b
    ld a, [$cc45]
    bit 7, a
    jr z, jr_006_6e3e

    inc [hl]

jr_006_6e3e:
    bit 6, a
    jr z, jr_006_6e43

    dec [hl]

jr_006_6e43:
    ld a, [hl]
    cp $40
    jp nc, $2a36

    ld a, $01
    ld [$cbb9], a
    ld a, $77
    call $0c74
    jp $23aa


    ld a, [$cbb9]
    cp $02
    ret nz

    call $23aa
    ld b, $04
    call $2c8f
    ld a, b
    ld e, $06
    ld [de], a
    ld a, $04
    jp $2a51


    call $2391
    jp nz, $2a36

    ld l, $10
    ld [hl], $05
    ld b, $05
    call $2c8f

jr_006_6e7c:
    ld a, b
    ld e, $06
    ld [de], a
    jp $23aa


    call $2391
    jp nz, Jump_006_6e95

    call $23aa
    ld b, $07
    call $2c8f
    ld a, b
    ld e, $06
    ld [de], a

Jump_006_6e95:
    ld hl, $6ee0
    jp Jump_006_6ec9


    call $2391
    jp nz, Jump_006_6ec6

    ld a, $03
    ld [$cbb9], a
    call $23aa
    ld a, [$cbb9]
    cp $06
    jr nz, jr_006_6ec6

Jump_006_6eb0:
    ld bc, $8406
    call $24b1
    jr nz, jr_006_6ebe

    ld l, $56
    ld a, $00   ; xor a
    ld [hli], a
    ld [hl], d

jr_006_6ebe:
    call $23aa
    ld a, $05
    jp $2a51


Jump_006_6ec6:
jr_006_6ec6:
    ld hl, $6ee8

Call_006_6ec9:
Jump_006_6ec9:
    ld a, [$cbb7]
    ld b, a
    and $07
    jr nz, jr_006_6edd

    ld a, b
    and $38
    swap a
    rlca
    rst AddAToHL
    ld e, $0f
    ld a, [de]
    add [hl]
    ld [de], a

jr_006_6edd:
    jp $2a36


    rst $38
    cp $fe
    rst $38
    nop
    ld bc, $0001
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0101
    nop
    ld [bc], a
    inc bc
    inc b
    inc bc
    ld [bc], a
    nop
    rst $38
    nop
    ld e, $21
    ld a, [de]
    inc a
    jr nz, jr_006_6f04

    ld a, $07
    ld [$cbb9], a
    ret


jr_006_6f04:
    call $2a36
    ld a, [$cbb7]
    rrca
    jp nc, $1e39

    jp $1e42


    ld e, $04
    ld a, [de]
    rst $00
    add hl, de
    ld l, a
    inc e
    ld l, a
    jp Jump_006_7381


    ld e, $05
    ld a, [de]
    rst $00
    ld c, h
    ld l, a
    ld a, e
    ld l, a
    adc l
    ld l, a
    and b
    ld l, a
    or [hl]
    ld l, a
    rst $00
    ld l, a
    call nc, $e16f
    ld l, a
    or $6f
    rst $38
    ld l, a
    inc de
    ld [hl], b
    rra
    ld [hl], b
    ld [hl-], a
    ld [hl], b
    ld h, c
    ld [hl], b
    db $76
    ld [hl], b
    add d
    ld [hl], b
    and b
    ld [hl], b
    or a
    ld [hl], b
    ret z

    ld [hl], b
    push de
    ld [hl], b
    db $f4
    ld [hl], b
    ld h, b
    ld [hl], b
    ld a, [$cfd0]
    or a
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $aa
    ld l, $0b
    ld a, $30
    ld [hli], a
    inc l
    ld a, $50
    ld [hl], a
    ld l, $19
    ld h, [hl]
    ld l, $4b
    ld a, $30
    ld [hli], a
    inc l
    ld a, $60
    ld [hl], a
    ld e, $08
    xor a
    ld [de], a

Call_006_6f71:
jr_006_6f71:
    ld a, $07
    call $2a51
    ld a, $08
    jp Jump_006_71a4


    call $2391
    jr nz, jr_006_6f87

    ld [hl], $1e
    call $23aa
    jr jr_006_6f71

jr_006_6f87:
    call $2a36
    jp Jump_006_719a


    call $2391
    ret nz

    ld [hl], $28
    ld a, $10
    call $2a51
    ld a, $0d
    call Call_006_71a4
    jp $23aa


    call $2391
    ret nz

    ld [hl], $3c
    call $23aa
    ld bc, $0c17
    call $196b
    jr z, jr_006_6fb3

    ld c, $18

jr_006_6fb3:
    jp $184b


    ld a, [$cba0]
    or a
    ret nz

    call $2391
    ret nz

    ld [hl], $96
    call Call_006_6f71
    jp $23aa


    call $2391
    jr nz, jr_006_6f87

    ld a, $02
    ld [$cfd0], a
    jp $23aa


    ld a, [$cfd0]
    cp $03
    jr nz, jr_006_6f87

    call Call_006_6f71
    jp $23aa


    ld a, [$cfd0]
    cp $04
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $5a
    ld l, $08
    ld [hl], $03
    xor a
    jp $2a51


    call $2391
    ret nz

    ld [hl], $12
    jp $23aa


    call $2391
    jr nz, jr_006_700d

    ld [hl], $46
    xor a
    call $2a51
    jp $23aa


jr_006_700d:
    ld l, $0d
    dec [hl]
    jp $2a36


    call $2391
    ret nz

    ld hl, $cfd0
    ld [hl], $05
    jp $23aa


    ld hl, $cfd1
    bit 6, [hl]
    ret z

Jump_006_7025:
    ld a, $14
    ld e, $06
    ld [de], a
    ld e, $0d
    ld a, [de]
    dec e
    ld [de], a
    jp $23aa


    call $2391
    jr nz, jr_006_7052

    ld h, d
    ld l, $10
    ld [hl], $50
    ld l, $09
    ld [hl], $0e
    ld l, $0d
    ld [hl], $40
    ld a, $08
    call $2a51
    ld bc, $fe80
    call $2358
    jp $23aa


Jump_006_7052:
jr_006_7052:
    call $041a
    and $0f
    sub $08
    ld b, a
    ld e, $0c
    ld a, [de]
    inc e
    add b
    ld [de], a
    ret


    call $1fdb
    ld c, $20
    call $1f04
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $28
    ld a, $14
    jp $2a51


    call $2391
    ret nz

    ld a, $07
    ld [$cfd0], a
    jp $23aa


    ld a, [$cfd0]
    cp $09
    ret nz

    call $23aa
    ld l, $14
    ld [hl], $f0
    inc l
    ld [hl], $fd
    ld l, $08
    ld [hl], $02
    ld a, $0a
    call $2a51
    ld a, $53
    jp $0c74


    call $2a36
    ld c, $20
    call $1f04
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $1e
    xor a
    ld l, $08
    ld [hl], a
    jp $2a51


    call $2391
    ret nz

    ld [hl], $19
    ld l, $10
    ld [hl], $50
    ld l, $09
    ld [hl], $02
    jp $23aa


    call $2a36
    call $1fdb
    call $2391
    ret nz

    jp Jump_006_7025


    call $2391
    jp nz, Jump_006_7052

    ld e, $10
    ld a, $78
    ld [de], a
    ld e, $09
    ld a, $19
    ld [de], a
    ld e, $08
    xor a
    ld [de], a
    ld [$cd00], a
    ld a, $08
    call $2a51
    jp $23aa


    call $2a36
    call $1fdb
    call $1fdb
    call $2142
    ret c

    ld a, $0a
    ld [$cfd0], a
    jp $23aa


    ld e, $04
    ld a, [de]
    rst $00
    ld de, $1971
    ld [hl], c
    call Call_006_7381
    ld a, $09
    call $2a51
    ld e, $05
    ld a, [de]
    rst $00
    dec h
    ld [hl], c
    ld c, h
    ld [hl], c
    ld e, b
    ld [hl], c
    ld l, l
    ld [hl], c
    ld hl, $cfd0
    ld a, [hl]
    cp $01
    ret nz

    call $2a36
    ld e, $21
    ld a, [de]
    inc a
    ret nz

    call $23aa
    ld l, $14
    ld [hl], $f0
    inc l
    ld [hl], $fd
    ld l, $08
    ld [hl], $02
    ld a, $0a
    call $2a51
    ld a, $53
    call $0c74
    call Call_006_7178
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $1e
    ret


    call $2391
    ret nz

    ld hl, $cfd0
    ld [hl], $02
    call $23aa
    ld l, $08
    ld [hl], $03
    ld a, $00   ; xor a
    jp $2a51


    ld a, [$cfd0]
    cp $03
    ret nz

    ld a, $00   ; xor a
    jp $2a16


Call_006_7178:
    call $2a36
    ld c, $20
    call $1f04
    jr z, jr_006_7195

    ld h, d
    ld l, $15
    ld a, [hl]
    bit 7, a
    ret nz

    cp $03
    ret c

    ld l, $14
    xor a
    ld [hli], a
    ld a, $03
    ld [hl], a
    or a
    ret


jr_006_7195:
    ld a, $00   ; xor a
    jp $2a51


Jump_006_719a:
    push de
    ld e, $19
    ld a, [de]
    ld d, a
    call $25b8
    pop de
    ret


Call_006_71a4:
Jump_006_71a4:
    ld b, a
    push de
    ld e, $19
    ld a, [de]
    ld d, a
    ld a, b
    call $25cb
    pop de
    ret


    ld e, $04
    ld a, [de]
    rst $00
    cp b
    ld [hl], c
    call nz, $cd71
    add c
    ld [hl], e
    ld l, $06
    ld [hl], $a8
    ld a, $0c
    jp $2a51


    ld e, $05
    ld a, [de]
    rst $00
    ret nc

    ld [hl], c
    and $71
    db $f4
    ld [hl], c
    ld [bc], a
    ld [hl], d
    call $2391
    jr nz, jr_006_71e3

    ld a, $80
    ld [$cfc0], a
    call $23aa
    ld bc, $ff00
    call $2358

jr_006_71e3:
    jp $2a36


    ld c, $20
    call $1f04
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $0a
    ret


    call $2391
    ret nz

    ld [hl], $78
    call $23aa
    ld a, $0c
    jp $2a51


    call $2391
    ret nz

    ld a, $01
    ld [$cfdf], a
    ret


    ld e, $04
    ld a, [de]
    rst $00
    inc d
    ld [hl], d
    jr z, jr_006_7286

    call Call_006_7381
    ld l, $09
    ld [hl], $00
    ld l, $10
    ld [hl], $28
    ld l, $06
    ld [hl], $80
    ld a, $00   ; xor a
    jp $2a51


    ld e, $05
    ld a, [de]
    rst $00
    jr c, @+$74

    ld c, h
    ld [hl], d
    ld e, d
    ld [hl], d
    ld h, [hl]
    ld [hl], d
    ld a, [hl]
    ld [hl], d
    sub e
    ld [hl], d
    ld a, [$c4ab]
    or a
    ret nz

    call $2a36
    call $1fdb
    call $2391
    ret nz

    ld [hl], $06
    jp $23aa


    call $2391
    ret nz

    ld [hl], $78
    call $23aa
    ld a, $03
    jp $2a51


    call $2391
    ret nz

    ld hl, $cfc0
    ld [hl], $01
    jp $23aa


    ld a, [$cfc0]
    cp $02
    ret nz

    call $23aa
    ld l, $09
    ld [hl], $10
    ld bc, $ff00
    call $2358
    ld a, $0d
    jp $2a51


    call $1fdb
    ld c, $20
    call $1f04

jr_006_7286:
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $78
    ld l, $20
    ld [hl], $01
    ret


    call $2391
    jp nz, $2a36

    ld hl, $cfdf
    ld [hl], $01
    ret


    ld e, $04
    ld a, [de]
    rst $00
    and a
    ld [hl], d
    or e
    ld [hl], d
    call Call_006_7381
    ld l, $06
    ld [hl], $f0
    ld a, $03
    jp $2a51


    ld e, $05
    ld a, [de]
    rst $00
    cp e
    ld [hl], d
    pop hl
    ld [hl], d
    ld a, [$c4ab]
    or a
    ret nz

    call $2391
    ret nz

    ld l, $06
    ld [hl], $3c
    call $23aa
    ld hl, $cfc0
    ld [hl], $01

Jump_006_72d0:
    ld bc, $f804
    ld a, $ff
    call $2727
    ld l, $42
    ld [hl], $01
    ld a, $0e
    jp $2a51


    call $2391
    ret nz

    ld hl, $cfdf
    ld [hl], $01
    ret


    ld e, $04
    ld a, [de]
    rst $00
    di
    ld [hl], d
    rrca
    ld [hl], e
    call Call_006_7381
    call $1e39
    call Call_006_7305
    ld a, $0b
    jr nz, jr_006_7302

    ld a, $0f

jr_006_7302:
    jp $2a51


Call_006_7305:
    ld hl, $c680
    ld a, $01
    cp [hl]
    ret z

    inc l
    cp [hl]
    ret


    ld e, $05
    ld a, [de]
    rst $00
    dec de
    ld [hl], e
    daa
    ld [hl], e
    dec sp
    ld [hl], e
    ld h, e
    ld [hl], e
    ld a, [$cfc0]
    cp $01
    ret nz

    call $23aa
    jp $1e42


    ld a, [$cfc0]
    cp $07
    ret nz

    call $23aa
    call Call_006_7305
    ld a, $10
    jr nz, jr_006_7338

    inc a

jr_006_7338:
    jp $2a51


    ld a, [$cfc0]
    cp $08
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $68
    inc l
    ld [hl], $01
    ld b, $02

jr_006_734d:
    call $3ac6
    jr nz, jr_006_735e

    ld [hl], $b7
    inc l
    ld a, b
    dec a
    ld [hl], a
    call $21fd
    dec b
    jr nz, jr_006_734d

jr_006_735e:
    ld a, $12
    jp $2a51


    call $2a36
    ld h, d
    ld l, $06
    call $0237
    ret nz

    ld hl, $cfc0
    ld [hl], $09
    ret


    ld e, $04
    ld a, [de]
    rst $00
    ld a, e
    ld [hl], e
    ld [$cd72], a
    add c
    ld [hl], e
    jp Jump_006_72d0


Call_006_7381:
Jump_006_7381:
    ld hl, $41b5
    ld e, $05
    call $008a
    call $1dfa
    jp $23a5


    ld e, $04
    ld a, [de]
    rst $00
    sub a
    ld [hl], e
    and e
    ld [hl], e
    call Call_006_7381
    ld l, $10
    ld [hl], $28
    ld a, $00   ; xor a
    call $2a51
    call $2a36
    call Call_006_74ee
    call Call_006_7520
    call Call_006_7501
    ret nc

    ld a, $00   ; xor a
    jp $2a16


    ld e, $04
    ld a, [de]
    rst $00
    cp l
    ld [hl], e
    jp z, $cd73

    add c
    ld [hl], e
    push de
    call $3566
    pop de
    ld a, $13
    jp $2a51


    ld e, $05
    ld a, [de]
    rst $00
    call c, $f173
    ld [hl], e
    db $fc
    ld [hl], e
    ld d, $74
    dec l
    ld [hl], h
    dec sp
    ld [hl], h
    ld d, c
    ld [hl], h
    ld a, [$cfd1]
    or a
    ret z

    call $23aa
    ld l, $06
    ld [hl], $28
    ld l, $10
    ld [hl], $05
    ld l, $09
    ld [hl], $10
    ret


    call $2391
    jp nz, $1fdb

    ld [hl], $19
    jp $23aa


    call $2391
    ret nz

    call $23aa
    ld l, $10
    ld [hl], $78
    ld l, $09
    xor a
    ld [hl], a
    ld l, $0f
    ld [hl], $fa

jr_006_740f:
    ld l, $20
    ld [hl], $01
    jp $2a36


    call $1fdb
    ld e, $0b
    ld a, [de]
    cp $10
    ret nc

    ld a, $82
    call $0c74
    call $23aa
    ld l, $06
    ld [hl], $1e
    jr jr_006_740f

    call $2391
    jr nz, jr_006_7446

    call $23aa
    ld bc, $ff40
    jp $2358


    ld c, $10
    call $1f04
    ret nz

    call $23aa
    jr jr_006_740f

jr_006_7446:
    ld a, [$cc00]
    and $03
    ret nz

    ld a, $04
    ld [$cd18], a
    ret


    ld e, $04
    ld a, [de]
    rst $00
    ld e, d
    ld [hl], h
    add [hl]
    ld [hl], h
    call Call_006_7381
    call $1e1e
    ld l, $06
    ld [hl], $2c
    inc hl
    ld [hl], $01
    ld l, $0b
    ld [hl], $d0
    ld l, $0d
    ld [hl], $50
    ld a, $08
    call $2a51
    xor a
    ld [$cbb9], a
    ld bc, $8409
    call $24b1
    jr nz, jr_006_7486

    ld l, $56
    ld a, $00   ; xor a
    ld [hli], a
    ld [hl], d

jr_006_7486:
    ld a, [$cc00]
    ld [$cbb7], a
    ld e, $05
    ld a, [de]
    rst $00
    sbc b
    ld [hl], h
    and a
    ld [hl], h
    or a
    ld [hl], h
    rst $08
    ld [hl], h
    call Call_006_74e8
    ld hl, $d006
    call $0237
    ret nz

    ld [hl], $3c
    jp $23aa


    call Call_006_74e8
    call $2391
    ret nz

    call $23aa
    ld bc, $0c16
    jp $184b


    ld hl, $6ee8
    call Call_006_6ec9
    ld a, [$cba0]
    or a
    ret nz

    ld a, $06
    ld [$cbb9], a
    ld a, $91
    call $0c74
    jp Jump_006_6eb0


    ld e, $21
    ld a, [de]
    inc a
    jr nz, jr_006_74db

    ld a, $07
    ld [$cbb9], a
    ret


jr_006_74db:
    call $2a36
    ld a, [$cc00]
    rrca
    jp nc, $1e39

    jp $1e42


Call_006_74e8:
    ld hl, $6ef0
    jp Jump_006_6ec9


Call_006_74ee:
    ld e, $03
    ld a, [de]
    ld hl, $751e
    rst JumpTable
    ld b, [hl]
    inc hl
    ld c, [hl]
    call $1e62
    ld e, $09
    ld [de], a
    jp $1fdb


Call_006_7501:
    ld e, $03
    ld a, [de]
    ld bc, $751e
    call $007e
    ld h, d
    ld l, $0b
    ld a, [bc]
    sub [hl]
    add $01
    cp $03
    ret nc

    inc bc
    ld l, $0d
    ld a, [bc]
    sub [hl]
    add $01
    cp $03
    ret


    ld c, b
    ld d, b

Call_006_7520:
    ld a, [$cc00]
    and $07
    ret nz

    ld e, $09
    ld a, [de]
    ld hl, $7532
    rst AddAToHL
    ld a, [hl]
    ld e, $08
    ld [de], a
    ret


    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld h, d
    ld [hl], l
    xor [hl]
    ld [hl], l
    cp b
    ld [hl], l

jr_006_7558:
    ld h, d
    ld [hl], l
    cp b
    ld [hl], l
    cp h
    ld [hl], l
    cp a
    ld [hl], l
    cp a
    ld [hl], l
    ld b, e
    reti


    nop
    ld d, d
    ld c, l
    ld bc, $0b17
    inc bc
    ld d, e
    rra
    inc b
    daa
    sub a
    dec b
    ld b, l
    ld [hl], e
    ld a, [bc]
    daa
    db $fc
    dec bc
    jr z, jr_006_75ae

    inc c
    ld b, l
    ld a, a
    dec c
    inc de
    or h
    ld c, $55
    add d
    rrca
    rla
    add d
    db $10
    ld h, $9b
    ld de, $6341
    ld [de], a
    ld [hli], a
    ld a, e
    inc de
    inc [hl]
    ld d, h
    inc d
    ld d, [hl]
    rst AddAToHL
    dec d
    ld [de], a
    call nz, $2316
    inc l
    rla
    jr c, jr_006_7558

    jr @+$29

    ld d, l
    add hl, de
    dec h
    db $f4
    ld a, [de]
    inc hl
    cp c
    dec de
    inc sp
    or $1d
    inc hl
    ld l, b
    ld e, $00

jr_006_75ae:
    daa
    ld b, l
    rlca
    ld b, d
    ld e, c
    ld [$1446], sp
    add hl, bc
    nop
    rla
    inc b
    ld [bc], a
    nop
    add d
    ld [de], a
    inc e
    nop
    call z, Call_006_4375
    db $76
    call z, $b275
    db $76
    or d
    db $76
    pop hl
    db $76
    ld hl, sp+$00
    ld a, [c]
    dec c
    call nz, $c501
    ld [bc], a
    add $03
    rst $00
    inc b
    push hl
    dec b
    ret c

    ld b, $c3
    ld b, $c8
    rlca
    ret


    ld [$09c0], sp
    pop bc
    ld a, [bc]
    jp nz, $e20b

    inc c
    reti


    ld c, $da
    rrca
    db $db
    db $10
    jp z, $cb11

    ld [de], a
    rst AddAToHL
    inc de
    db $e3
    dec d
    ld bc, $0414
    inc d
    dec b
    inc d
    ld b, $14
    rlca
    inc d
    ld [$0914], sp
    inc d
    ld a, [bc]
    inc d
    dec bc
    inc d
    inc c
    inc d
    dec c
    inc d
    ld c, $14
    rrca
    inc d
    ld de, $1214
    inc d
    inc de
    inc d
    inc d
    inc d
    dec d
    inc d
    ld d, $14
    rla
    inc d
    jr jr_006_7636

    add hl, de
    inc d
    ld a, [de]
    inc d
    dec de
    inc d
    inc e
    inc d
    dec e
    inc d
    ld e, $14
    ld c, l
    inc d
    ld c, [hl]
    inc d
    ld e, l
    inc d
    ld e, [hl]
    inc d

jr_006_7636:
    ld e, a
    inc d
    ld l, l
    inc d
    ld l, [hl]
    inc d
    ld l, a
    inc d
    xor a
    inc d
    cp a
    inc d
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld a, [c]
    dec c
    jp hl


    add hl, bc
    ld bc, $0417
    rla
    dec b
    rla
    ld b, $17
    rlca
    rla
    ld [$0917], sp
    rla
    ld a, [bc]
    rla
    dec bc
    rla

jr_006_765d:
    inc c
    rla
    dec c
    rla

jr_006_7661:
    ld c, $17
    rrca
    rla
    ld de, $1217
    rla
    inc de
    rla
    inc d
    rla
    dec d
    rla
    ld d, $17
    rla
    rla
    jr jr_006_768c

    add hl, de
    rla
    ld a, [de]
    rla
    dec de
    rla
    inc e
    rla
    dec e
    rla
    ld e, $17
    rra
    rla
    jr nz, jr_006_769c

    ld hl, $2217
    rla
    inc hl
    rla
    inc h

jr_006_768c:
    rla
    dec h
    rla
    ld h, $17
    daa
    rla
    jr z, jr_006_76ac

    add hl, hl
    rla
    ld a, [hli]
    rla
    dec hl
    rla
    inc l

jr_006_769c:
    rla
    dec l
    rla
    ld l, $17
    cp b

jr_006_76a2:
    jr jr_006_765d

    jr jr_006_7661

    rla
    cp h
    rla
    cp l
    rla
    cp [hl]

jr_006_76ac:
    rla
    cp a
    rla
    cpl
    ld d, $00
    ld hl, sp+$2d
    jr nz, jr_006_76cf

    ld hl, $221a
    dec de
    inc hl
    inc e
    rst $28
    ld l, $11
    dec e
    ld [de], a
    ld e, $10
    rra
    inc de
    jr nz, @+$21

    ld hl, $2230
    ld sp, $3223
    inc h
    inc sp

jr_006_76cf:
    dec h
    jr c, @+$28

    add hl, sp
    daa
    ld a, [hl-]
    jr z, @+$3d

    add hl, hl
    ld d, $2a
    dec d
    dec hl
    dec hl
    inc l
    ld a, [hli]
    inc l
    nop
    ld [de], a
    cpl
    nop
    sub [hl]
    jr nc, jr_006_76f9

    db $10
    inc b
    or a
    or c
    ld d, $00
    inc b
    or a
    or c
    ld b, $c0
    and $b7
    or c
    ld b, $c0
    ldh [$b7], a

jr_006_76f9:
    or c
    ld b, $00
    di
    or a
    or c
    ld b, $00
    inc b
    or [hl]
    or c
    ld b, [hl]
    ld bc, $f604
    jr nc, jr_006_773c

    nop
    inc b
    or $30
    dec bc
    nop
    di
    ld hl, $4000
    ld b, $04
    ld hl, $0000
    add $e7
    ld hl, $0000
    add $e0
    jr nc, jr_006_76a2

    nop
    add $e8
    xor l
    ld de, $0c70
    inc b
    ld b, b
    add b
    ld b, a
    add hl, de
    inc b
    ld b, b
    add b
    rlca
    add hl, de
    di
    ld [hl], b
    nop
    dec bc
    rra
    db $fd
    nop
    db $10
    ld [hl], b

jr_006_773c:
    rra
    inc b
    nop
    stop
    rst JumpTable
    rst $20
    add c
    nop
    add h
    rra
    inc b
    ld b, b
    nop
    sub b
    ld a, [bc]
    pop hl
    ld b, b
    nop
    nop
    jp z, Jump_006_40e0

    nop
    nop
    ld a, [bc]
    pop hl
    ld b, b
    nop
    and b
    ld a, [bc]
    pop hl
    ld b, b
    nop
    or b
    ld a, [bc]
    pop hl
    or a
    ld sp, $0014
    and b
    or a
    ld sp, $0004
    and b
    or a
    ld sp, $4004
    ld b, l
    or a
    ld sp, $0004
    di
    dec h
    ld bc, $0600
    and b
    dec h
    ld bc, $4600
    ld b, l
    dec h
    ld bc, $0620
    and b
    dec h
    ld bc, $4600
    dec c
    jr nc, jr_006_778b

jr_006_778b:
    nop
    ld b, $a0
    jr nc, jr_006_7790

jr_006_7790:
    nop
    add $34
    jr nc, jr_006_7795

jr_006_7795:
    nop
    add $35
    jr nc, jr_006_779a

jr_006_779a:
    nop
    add $36
    jr nc, jr_006_779f

jr_006_779f:
    nop
    add $37
    jr nc, jr_006_77a4

jr_006_77a4:
    nop
    add $34
    jr nc, jr_006_77a9

jr_006_77a9:
    nop
    add $35
    jr nc, jr_006_77ae

jr_006_77ae:
    nop
    add $36
    jr nc, jr_006_77b3

jr_006_77b3:
    nop
    add $37
    ccf
    nop
    nop
    ld b, $a0
    ld hl, $4000
    ld b, $4c
    ld b, $00
    nop
    rlca
    nop
    sub [hl]
    jr nc, jr_006_77ca

    db $10
    rst $28

jr_006_77ca:
    ld b, b
    nop
    ret nz

    ld a, [bc]
    ld c, h
    jr nc, jr_006_77d1

jr_006_77d1:
    nop
    ld b, $01
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

Call_006_7f08:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX

    ld h, d
    ld l, $84
    inc [hl]
    ret


    ld h, d
    ld l, $85
    inc [hl]
    ret


Call_00e_400a:
Jump_00e_400a:
    xor a
    ld e, $ac
    call Call_00e_420d

jr_00e_4010:
    ld a, [de]
    ld c, a
    ld e, $ad
    ld a, [de]
    rlca
    ld b, $50
    jr nc, jr_00e_4028

    ld b, $78
    and $06
    jr nz, jr_00e_4028

    push bc
    ld bc, $0f01
    call $24b1
    pop bc

jr_00e_4028:
    call Call_00e_4161
    ret nz

    ld e, $ad
    ld a, [de]
    and $80
    ld [de], a
    ret


Jump_00e_4033:
    ld a, $02
    ld e, $ac
    call Call_00e_420d
    jr jr_00e_4010

    call Call_00e_400a
    call Call_00e_4043
    ret


Call_00e_4043:
    ldh [$8f], a
    xor a
    ldh [$8d], a
    jr jr_00e_4057

    call Call_00e_400a
    call Call_00e_4051
    ret


Call_00e_4051:
Jump_00e_4051:
    ldh [$8f], a
    ld a, $01
    ldh [$8d], a

jr_00e_4057:
    ld e, $bf
    ld a, [de]
    and $07
    jr nz, jr_00e_40aa

    ld e, $8f
    ld a, [de]
    rlca
    jr c, jr_00e_4087

    ld bc, $05ff
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $ff
    jr c, jr_00e_408b

    ld bc, $0501
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $01
    jr c, jr_00e_408b

    call Call_00e_4123

jr_00e_4087:
    ldh a, [$8f]
    or a
    ret


jr_00e_408b:
    ld h, d
    ld l, $bf
    ld e, l
    or [hl]
    ld [hl], a
    ld l, $ab
    ld [hl], $00
    ld l, $ad
    ld [hl], $00
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $3c
    inc l
    ldh a, [$8d]
    ld [hl], a
    ld l, $8d
    ld a, [hl]
    add b
    ld [hl], a

jr_00e_40aa:
    pop hl
    ld a, [de]
    rrca
    jr c, jr_00e_40c9

    rrca
    jr c, jr_00e_40dd

    jr jr_00e_40cd

    ret z

    ld b, b
    ret z

    ld b, b
    ret z

    ld b, b
    ret z

    ld b, b
    ret nz

    ld b, b
    ret z

    ld b, b
    ld d, h
    nop
    ld d, l
    ld [$1056], sp
    ld d, a
    jr jr_00e_40c9

jr_00e_40c9:
    ld b, $03
    jr jr_00e_40cf

jr_00e_40cd:
    ld b, $04

jr_00e_40cf:
    call $24af

jr_00e_40d2:
    call $249f
    jp $2e28


jr_00e_40d8:
    call $24bd
    jr jr_00e_40d2

jr_00e_40dd:
    call Call_00e_439a
    jr z, jr_00e_40d8

    ld a, [hl]
    and $07
    jr nz, jr_00e_40f5

    call Call_00e_4108
    jr z, jr_00e_40d8

    call $1e6f
    ld c, a
    ld b, $14
    call Call_00e_4138

jr_00e_40f5:
    ld h, d
    ld l, $87
    bit 0, [hl]
    ret z

    ld l, $a0
    ld a, [hl]
    sub $03
    jr nc, jr_00e_4103

    xor a

jr_00e_4103:
    inc a
    ld [hl], a
    jp $275f


Call_00e_4108:
    ld l, $8b
    ld a, [hli]
    ldh [$8f], a
    add $05
    and $f0
    add $08
    ld b, a
    inc l
    ld a, [hl]
    ldh [$8e], a
    and $f0
    add $08
    ld c, a
    cp [hl]
    ret nz

    ldh a, [$8f]
    cp b
    ret


Call_00e_4123:
Jump_00e_4123:
    ld e, $8f
    ld a, [de]
    rlca
    ret c

    ld bc, $0500
    call $1423
    ld hl, $40b4
    call $1ddd
    ret nc

    ld c, a
    ld b, $14

Call_00e_4138:
Jump_00e_4138:
    ld hl, $425e
    xor a
    ldh [$8a], a
    push bc
    ld a, c
    call Call_00e_4213
    pop bc
    jr jr_00e_4161

    xor a
    call Call_00e_4204
    jr jr_00e_415b

Call_00e_414c:
    ld a, $01
    call Call_00e_4204
    jr jr_00e_415b

    xor a
    jr jr_00e_4158

Call_00e_4156:
Jump_00e_4156:
    ld a, $01

jr_00e_4158:
    call Call_00e_420b

jr_00e_415b:
    ld a, [de]
    ld c, a
    ld e, $90
    ld a, [de]
    ld b, a

Call_00e_4161:
jr_00e_4161:
    ld a, c
    ldh [$8c], a
    call $1fff
    xor a
    ldh [$8d], a
    ld e, $8a
    ldh a, [$8b]
    and $0c
    jr nz, jr_00e_4177

    call Call_00e_41e1
    jr jr_00e_41a1

jr_00e_4177:
    cp $0c
    jr z, jr_00e_41a1

    bit 3, a
    ldh a, [$8c]
    ld bc, $0060
    jr nz, jr_00e_4189

    xor $10
    ld bc, $ffa0

jr_00e_4189:
    cp $11
    jr nc, jr_00e_41a1

    ld e, $8c
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ld e, $90
    ld a, [de]
    cp $32
    jr nc, jr_00e_41a1

    ld a, $01
    ldh [$8d], a

jr_00e_41a1:
    ld e, $8c
    ld l, $c2
    ldh a, [$8b]
    and $03
    jr nz, jr_00e_41b0

    call Call_00e_41e1
    jr jr_00e_41dd

jr_00e_41b0:
    cp $03
    jr z, jr_00e_41dd

    rrca
    ldh a, [$8c]
    ld bc, $0060
    jr nc, jr_00e_41c1

    sub $10
    ld bc, $ffa0

jr_00e_41c1:
    add $08
    and $1f
    cp $11
    jr nc, jr_00e_41dd

    ld e, $8a
    ld a, [de]
    add c
    ld [de], a
    inc e
    ld a, [de]
    adc b
    ld [de], a
    ld e, $90
    ld a, [de]
    cp $32
    jr nc, jr_00e_41dd

    ld a, $01
    ldh [$8d], a

jr_00e_41dd:
    ldh a, [$8d]
    or a
    ret


Call_00e_41e1:
    ld a, [de]
    add [hl]
    ld [de], a
    ld b, [hl]
    inc l
    inc e
    ld a, [de]
    ld c, a
    adc [hl]
    ld [de], a
    sub c
    jr nz, jr_00e_41fc

    ld c, $20
    ld e, $90
    ld a, [de]
    cp $32
    jr c, jr_00e_41f9

    ld c, $60

jr_00e_41f9:
    ld a, b
    cp c
    ret c

jr_00e_41fc:
    ldh [$8d], a
    ret


    ld hl, $429e
    jr jr_00e_4213

Call_00e_4204:
    ld e, $89
    ld hl, $429e
    jr jr_00e_4210

Call_00e_420b:
    ld e, $89

Call_00e_420d:
    ld hl, $425e

jr_00e_4210:
    ldh [$8a], a
    ld a, [de]

Call_00e_4213:
jr_00e_4213:
    push de
    call Call_00e_4253
    ld b, d
    rst AddAToHL
    ld d, h
    ld e, l
    ld h, b
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld a, $10
    ldh [$8b], a

jr_00e_4226:
    call Call_00e_4233
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_00e_4226

    pop de
    or a
    ret


Call_00e_4233:
    ld a, [de]
    inc de
    add b
    ld b, a
    ld a, [de]
    inc de
    add c
    ld c, a
    ldh a, [$8a]
    dec a
    jp z, $14f0

    inc a
    jr z, jr_00e_424a

    call $14a5
    add $01
    ret


jr_00e_424a:
    call $14a5
    add $01
    jp nc, $14bf

    ret


Call_00e_4253:
    rlca
    ld b, a
    and $0f
    ld a, b
    ret z

    and $f0
    add $08
    ret


    db $fc
    ei
    nop
    add hl, bc
    inc b
    db $fc
    nop
    nop
    db $fc
    ei
    nop
    add hl, bc
    inc bc
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    rst $38
    ld b, $06
    nop
    rlca
    ei
    nop
    add hl, bc
    ld hl, sp+$02
    ld b, $00
    rlca
    ei
    nop
    add hl, bc
    ld sp, hl
    db $fc
    nop
    nop
    rlca
    ei
    nop
    add hl, bc
    ld hl, sp-$0b
    ld b, $00
    nop
    nop
    nop
    nop
    rst $38
    ld sp, hl
    ld b, $00
    db $fc
    ei
    nop
    add hl, bc
    inc bc
    push af
    ld b, $00
    rst $30
    ld a, [$0b00]
    add hl, bc
    ei
    nop
    nop
    rst $30
    db $fc
    nop
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld a, [$0b08]
    nop
    ld [$00fc], sp
    ld a, [bc]
    db $f4
    ld [bc], a
    ld a, [bc]
    nop
    ld [$00fa], sp
    dec bc
    ld hl, sp-$05
    nop
    nop
    ld [$00f9], sp
    ld a, [bc]
    db $f4
    db $f4
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld a, [$0bf7]
    nop
    rst $30
    ld sp, hl
    nop
    ld a, [bc]
    ld [bc], a
    db $f4
    ld a, [bc]
    nop

Call_00e_42de:
    ld a, $01
    jr jr_00e_42e7

    xor a
    jr jr_00e_42e7

    ld a, $02

jr_00e_42e7:
    call Call_00e_420b
    call Call_00e_4310
    ld a, c
    or a
    ret z

    cp $05
    jr z, jr_00e_4306

    ld hl, $432f
    bit 0, a
    jr nz, jr_00e_42fe

    ld hl, $431f

jr_00e_42fe:
    ld e, $89
    ld a, [de]
    rst AddAToHL
    ld a, [hl]
    ld [de], a
    or d
    ret


jr_00e_4306:
    ld e, $89
    ld a, [de]
    add $10
    and $1f
    ld [de], a
    or d
    ret


Call_00e_4310:
    ld c, $00
    ld b, a
    and $03
    jr z, jr_00e_4318

    inc c

jr_00e_4318:
    ld a, b
    and $0c
    ret z

    set 2, c
    ret


    db $10
    rrca
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $1f00
    ld e, $1d
    inc e
    dec de
    ld a, [de]
    add hl, de
    jr @+$19

    ld d, $15
    inc d
    inc de
    ld [de], a
    ld de, $0f10
    ld c, $0d
    inc c
    dec bc
    add hl, bc
    ld [$0708], sp
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $cdc5
    cpl
    inc b
    pop bc
    and e
    ld e, a
    ld a, h
    and b
    ld b, a
    ld a, l
    and c
    ld c, a
    xor a
    ret


Call_00e_435e:
    call Call_00e_4364
    jp $1e03


Call_00e_4364:
Jump_00e_4364:
    ld h, d
    ld l, $90
    ld [hl], a
    ld l, $84
    ld [hl], $08
    ret


Call_00e_436d:
    call $2e15
    ret nz

    jr jr_00e_4377

Call_00e_4373:
    call $2e08
    ret nz

jr_00e_4377:
    ld [hl], b
    inc l
    inc [hl]
    xor a
    ret


Call_00e_437c:
Jump_00e_437c:
    call $3ea7
    ret nz

    ld [hl], b
    call $21fd
    ld l, $d6
    ld a, $80
    ld [hli], a
    ld [hl], d
    ld e, $98
    ld a, $c0
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $89
    ld l, $c9
    ld a, [de]
    ld [hli], a
    xor a
    ret


Call_00e_439a:
    ld h, d
    ld l, $86
    dec [hl]
    ret


    call Call_00e_439a
    ret nz

Call_00e_43a3:
Jump_00e_43a3:
    ld h, d
    ld l, $87
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_00e_43ab:
    call $1e52
    xor $10
    ld e, $89
    ld [de], a
    ret


Call_00e_43b4:
    call $1e52
    add $04
    and $18
    ld e, $89
    ld [de], a
    ret


Call_00e_43bf:
Jump_00e_43bf:
    call $1e52
    ld e, $89
    ld [de], a
    ret


Call_00e_43c6:
Jump_00e_43c6:
    call $042f
    and $18
    ld e, $89
    ld [de], a
    ret


    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ret


Call_00e_43d8:
Jump_00e_43d8:
    ld h, d
    ld l, $89
    ld a, [hl-]
    ld e, a
    ld bc, $43ff
    call $006d
    ld a, [bc]
    cp $04
    jr c, jr_00e_43f9

    sub [hl]
    cp $07
    ret z

    sub $03
    cp $02
    ret c

    ld a, e
    add $04
    and $18
    swap a
    rlca

jr_00e_43f9:
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    nop
    nop

Call_00e_441f:
Jump_00e_441f:
    ld e, $9a
    ld a, [de]
    xor $80
    ld [de], a
    ret


Call_00e_4426:
    ld e, $82
    ld a, [de]
    ld b, a
    ld e, $84
    ld a, [de]
    cp $08
    ret


Call_00e_4430:
Jump_00e_4430:
    call $1e6f
    ld e, $89
    ld [de], a
    jp $1fdb


Call_00e_4439:
    ld b, [hl]
    inc l
    ld c, [hl]
    ld l, $8b
    ld a, [hli]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    ret


    ld b, a
    ld a, [$cc79]
    or a
    ld a, b
    jp z, Jump_00e_4051

    ld h, d
    ld l, $bf
    res 1, [hl]
    ld l, $a4
    set 7, [hl]
    push af
    call $1e5a
    ld c, a
    ld b, $14
    call Call_00e_4138
    pop af
    or a
    ret


Call_00e_4465:
Jump_00e_4465:
    ld h, d
    ld l, $8b
    ld a, [hl]
    add c
    cpl
    inc a
    ld c, a
    ldh a, [$a8]
    add c
    jr nc, jr_00e_4473

    ld a, c

jr_00e_4473:
    bit 7, a
    jr nz, jr_00e_4479

    ld a, $80

jr_00e_4479:
    ld l, $8f
    ld [hl], a
    ret


Call_00e_447d:
    ld a, l
    and $c0
    or $29
    ld l, a

jr_00e_4483:
    ld [hl], $00
    ld a, l
    add $fb
    ld l, a
    res 7, [hl]
    ret


Call_00e_448c:
    ld a, $29
    call $211e
    jr jr_00e_4483

Call_00e_4493:
    ld a, $29
    call $2122
    jr jr_00e_4483

Call_00e_449a:
    call Call_00e_43a3
    jr z, jr_00e_44ad

    ld a, [hl]
    and $03
    ld hl, $44c7
    rst AddAToHL
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [de], a
    scf
    ret


jr_00e_44ad:
    call $1fdb
    ld c, $10
    call $1f04
    ldh a, [$a8]
    ld b, a
    ld l, $8f
    ld a, [hl]
    cp $80
    ccf
    ret nc

    ld e, $8b
    ld a, [de]
    add [hl]
    sub b
    cp $b0
    ret


    cp $02
    ld [bc], a
    cp $cd
    sbc d
    ld b, h
    ret c

    call $249f
    jp $2e28


    ld a, [$ccf0]
    or a
    ret z

    ld e, $bf
    ld a, [de]
    bit 4, a
    ret z

    ld e, $84
    ld a, [de]
    and $f8
    ret z

    ld a, $04
    ld [de], a
    ret


Jump_00e_44ea:
    ld h, d
    ld l, $bd
    dec [hl]
    ld a, [hl]
    and $0f
    ret nz

    ldh a, [$b0]
    ld b, a
    ldh a, [$b1]
    ld c, a
    call $1e62
    ld e, $89
    ld [de], a
    ret


    ld b, $08
    ld c, $20
    call $1f04
    ret nz

    ld l, $a4
    set 7, [hl]
    ld l, $84
    ld [hl], b
    ret


Jump_00e_450f:
    ld h, d
    ld l, $a4
    ld a, [hl]
    or a
    jr z, jr_00e_4526

    ld [hl], $00
    ld l, $86
    ld [hl], $78
    ld a, $01
    ld [$cbca], a
    ld a, $67
    call $0c74

jr_00e_4526:
    call Call_00e_439a
    jp nz, Jump_00e_441f

    inc [hl]
    call $3ea7
    ret nz

    ld [hl], $04
    inc l
    ld e, $81
    ld a, [de]
    ld [hl], a
    call $21fd
    call $30e3
    ld e, $81
    ld a, [de]
    sub $08
    cp $68
    jr c, jr_00e_4550

    ld a, [$cc62]
    ld [$cc51], a
    call $0c74

jr_00e_4550:
    jp $2e28


Call_00e_4553:
    call $3ea7
    ret nz

    ld [hl], $07
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $d6
    ld a, $80
    ld [hli], a
    ld [hl], d
    xor a
    ret


Call_00e_4565:
Jump_00e_4565:
    bit 7, a
    jr nz, jr_00e_456c

    ld [$cc1c], a

jr_00e_456c:
    ld a, b
    or a
    call nz, $04e7
    ldh a, [$ad]
    ld d, a
    ld a, $f0
    call $0c74
    xor a
    ld [$cbca], a
    dec a
    ld [$cc51], a
    ld hl, $ccad
    set 7, [hl]
    ld a, [$cd00]
    and $01
    ret nz

    ld a, $0b
    ld [$cc6a], a
    ld a, $1a
    ld [$cc6c], a
    ld hl, $d008
    ld a, [$cd02]
    ld [hli], a
    swap a
    rrca
    ld [hl], a
    ret


    jr z, jr_00e_45ae

    sub $03
    ret c

    jp z, Jump_00e_477a

    dec a
    jp nz, Jump_00e_400a

jr_00e_45ae:
    call Call_00e_4426
    jr nc, jr_00e_45c4

    rst $00
    jp z, $0c45

    ld b, [hl]
    inc c
    ld b, [hl]
    inc c
    ld b, [hl]
    inc c
    ld b, [hl]
    inc c
    ld b, [hl]
    inc c
    ld b, [hl]
    inc c
    ld b, [hl]

jr_00e_45c4:
    ld a, b
    rst $00
    dec c
    ld b, [hl]
    ld a, $47
    ld e, $97
    ld a, [de]
    or a
    jr nz, jr_00e_45f0

    ld b, $70
    call Call_00e_4373
    ret nz

    ld l, $96
    ld e, l
    ld a, $80
    ld [hli], a
    ld [de], a
    inc e
    ld [hl], d
    ld a, h
    ld [de], a
    call $21fd
    ld a, d
    cp h
    jr c, jr_00e_45f0

    ld l, $82
    xor a
    ld [hl], a
    ld e, l
    inc a
    ld [de], a
    ret


jr_00e_45f0:
    ld a, $32
    call Call_00e_435e
    ld e, $82
    ld a, [de]
    or a
    jr z, jr_00e_4602

    ld e, $8d
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


jr_00e_4602:
    ld e, $b0
    inc a
    ld [de], a
    ld b, $00
    dec a
    jp Jump_00e_4565


    ret


    ld a, [de]
    sub $08
    rst $00
    add hl, de
    ld b, [hl]
    adc e
    ld b, [hl]
    add sp, $46
    inc hl
    ld b, a
    inc e
    ld a, [de]
    rst $00
    ld [hli], a
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld a, [$d00b]
    cp $78
    ret nc

    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld bc, $2f00
    jp $184b


    ld a, $02
    ld [de], a
    ld a, $2d
    ld [$cc51], a
    call $0c74
    ld a, [$d00d]
    sub $28
    ld c, a

Jump_00e_4646:
    ld a, [$d00b]
    ld b, a
    ld e, $8b
    ld a, [de]
    ldh [$8f], a
    ld e, $8d
    ld a, [de]
    ldh [$8e], a
    sub $18
    cp $c0
    jr nc, jr_00e_466c

    ldh a, [$8f]
    sub b
    add $08
    cp $11
    jr nc, jr_00e_4682

    ldh a, [$8e]
    sub c
    add $08
    cp $11
    jr nc, jr_00e_4682

jr_00e_466c:
    call $042f
    and $30
    add $60
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $b1
    ld [hl], $08
    ld l, $86
    ld [hl], a
    inc l
    ld [hl], $3c
    ret


jr_00e_4682:
    call Call_00e_4430
    call Call_00e_43d8

jr_00e_4688:
    jp $275f


    call Call_00e_4809
    jr z, jr_00e_4688

    ld e, $90
    ld a, $23
    ld [de], a
    call Call_00e_4797
    jr c, jr_00e_46af

Jump_00e_469a:
    call Call_00e_43a3
    jr nz, jr_00e_46a4

    ld [hl], $3c
    call Call_00e_46a9

jr_00e_46a4:
    call Call_00e_4156
    jr nz, jr_00e_4688

Call_00e_46a9:
    call Call_00e_43c6
    jp Jump_00e_43d8


Jump_00e_46af:
jr_00e_46af:
    ld a, $09
    call $211e
    ld e, l
    ld a, [de]
    add $10
    and $1f
    sub [hl]
    and $1f
    ld c, $28
    jr z, jr_00e_46c9

    ld c, $32
    cp $10
    jr c, jr_00e_46c9

    ld c, $1e

jr_00e_46c9:
    ld e, $90
    ld a, c
    ld [de], a
    call Call_00e_47c0
    call $1e62
    ld b, a
    ld e, $b1
    ld a, [de]
    add b
    and $1f
    ld e, $89
    ld [de], a
    call Call_00e_43d8
    call Call_00e_4156
    call Call_00e_47d0
    jr jr_00e_4720

    ld e, $b0
    ld a, [de]
    or a
    jr nz, jr_00e_46f5

    ld e, $84
    ld a, $09
    ld [de], a
    jr jr_00e_4720

jr_00e_46f5:
    ld b, $38
    call Call_00e_437c
    jr nz, jr_00e_4720

    ld l, $f0
    ldh a, [$ae]
    ld [hli], a
    ldh a, [$af]
    ld [hl], a
    ld l, $d8
    ld a, $80
    ld [hli], a
    ld e, $97
    ld a, [de]
    ld [hl], a
    ld h, a
    ld l, $84
    ld a, $0b
    ld [hl], a
    ld e, l
    ld [de], a
    ld e, $b0
    xor a
    ld [de], a
    ld l, e
    inc a
    ld [hl], a
    ld l, $99
    ld [hl], $01

jr_00e_4720:
    jp $275f


    ld e, $99
    ld a, [de]
    or a
    jr z, jr_00e_472f

    dec a
    call z, Call_00e_47a5
    jr jr_00e_4720

jr_00e_472f:
    ld a, $19
    call $211e
    dec [hl]
    ld l, $84
    ld a, $09
    ld [hl], a
    ld e, l
    ld [de], a
    jr jr_00e_4720

    ld a, [de]
    sub $08
    rst $00
    ld c, d
    ld b, a
    ld h, [hl]
    ld b, a
    add sp, $46
    inc hl
    ld b, a
    inc e
    ld a, [de]
    or a
    jr z, jr_00e_4758

    ld a, [$d00d]
    add $28
    ld c, a
    jp Jump_00e_4646


jr_00e_4758:
    ld a, [$d00b]
    cp $78
    ret nc

    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ret


    call Call_00e_4809
    jp z, $275f

    ld e, $90
    ld a, $28
    ld [de], a
    call Call_00e_4797
    jp c, Jump_00e_46af

    jp Jump_00e_469a


Jump_00e_477a:
    ld e, $97
    ld a, [de]
    or a
    jr z, jr_00e_4787

    call Call_00e_448c
    ld e, $97
    xor a
    ld [de], a

jr_00e_4787:
    ld e, $99
    ld a, [de]
    sub $02
    jr c, jr_00e_4794

    ld h, a
    ld l, $d7
    xor a
    ld [hl], a
    ld [de], a

jr_00e_4794:
    jp Jump_00e_450f


Call_00e_4797:
    ldh a, [$ae]
    sub $40
    cp $30
    ret nc

    ldh a, [$af]
    sub $40
    cp $70
    ret


Call_00e_47a5:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, $19
    call $211e
    ld h, [hl]
    ld l, $cb
    ld b, [hl]
    ld l, $cd
    ld c, [hl]
    call $1e62
    ld e, $89
    ld [de], a
    jp Jump_00e_43d8


Call_00e_47c0:
    ld b, $58
    ld c, b
    ldh a, [$af]
    cp $60
    ret c

    ld c, $78
    cp $90
    ret c

    ld c, $98
    ret


Call_00e_47d0:
    call $1e52
    ld c, a
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    jr nc, jr_00e_47de

    cpl
    inc a

jr_00e_47de:
    ld b, a
    ld l, $8d
    ldh a, [$af]
    sub [hl]
    jr nc, jr_00e_47e8

    cpl
    inc a

jr_00e_47e8:
    add b
    cp $30
    jr c, jr_00e_47fa

    cp $60
    ret c

    ld l, $90
    ld [hl], $0a
    ld a, c
    ld e, $89
    ld [de], a
    jr jr_00e_4806

jr_00e_47fa:
    ld l, $90
    ld [hl], $14
    ld a, c
    add $10
    and $1f
    ld e, $89
    ld [de], a

jr_00e_4806:
    jp Jump_00e_4156


Call_00e_4809:
    ld e, $86
    ld a, [de]
    or a
    jr z, jr_00e_4812

    dec a
    ld [de], a
    ret nz

jr_00e_4812:
    ld bc, $0130
    call $434f
    ld e, $86
    ld a, $20
    add c
    ld [de], a
    ld c, a
    ld a, b
    or a
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $97
    ld h, [hl]
    ld l, $86
    ld [hl], c
    call Call_00e_43bf
    call Call_00e_43d8
    xor a
    ret


    jr z, jr_00e_484b

    sub $03
    ret c

    ret nz

    ld e, $a4
    ld a, [de]
    or a
    call nz, Call_00e_49eb
    ld e, $82
    ld a, [de]
    or a
    jp nz, $27ce

    jp Jump_00e_450f


jr_00e_484b:
    ld e, $84
    ld a, [de]
    rst $00
    ld l, c
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    ld c, b
    adc b
    ld c, b
    sbc e
    ld c, b
    ret z

    ld c, b
    rst JumpTable
    ld c, b
    db $76
    ld c, c
    call Call_00e_4364
    ld l, $8b
    ld [hl], $58
    ld l, $8d
    ld [hl], $78
    ld e, $82
    ld a, [de]
    or a
    ld a, $ff
    ld b, $00
    jp z, Jump_00e_4565

    ld l, $86
    ld [hl], $3c
    ld l, $84
    inc [hl]
    ret


    ret


    ldh a, [$ae]
    cp $58
    ret c

    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    inc [hl]
    ld a, $2d
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    ret nz

    ld a, $78
    ld [hl], a
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call $24a7
    call $042f
    and $03
    ld hl, $48c4
    rst AddAToHL
    ld e, $83
    ld a, [hl]
    ld [de], a
    ld a, $b8
    call $0c74
    xor a
    call $2772
    jp $1e30


    nop
    ld bc, $0202
    call Call_00e_439a
    jr z, jr_00e_48d7

    ld a, [hl]
    and $1f
    ld a, $b8
    call z, $0c74
    jr jr_00e_48dc

jr_00e_48d7:
    ld l, e
    inc [hl]
    inc l
    ld [hl], $00

jr_00e_48dc:
    jp $275f


    call $275f
    ld e, $83
    ld a, [de]
    rst $00
    db $ec
    ld c, b
    add hl, de
    ld c, c
    ld c, h
    ld c, c
    ld e, $85
    ld a, [de]
    rst $00
    or $48
    db $fd
    ld c, b
    ld b, $49
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $14
    ret


    call Call_00e_439a
    ret nz

    ld [hl], $46
    ld l, e
    inc [hl]
    ret


    call Call_00e_439a
    jp z, Jump_00e_49e3

    ld a, [hl]
    and $0f
    ret nz

    ld l, $b0
    ld a, [hl]
    cp $05
    ret nc

    jp Jump_00e_498c


    ld e, $85
    ld a, [de]
    rst $00
    inc hl
    ld c, c
    ld a, [hli]
    ld c, c
    ccf
    ld c, c
    ld a, $01
    ld [de], a
    inc a
    jp $2772


    ld h, d
    ld l, $a1
    bit 7, [hl]
    jp z, $275f

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $b4
    ld l, $a4
    res 7, [hl]
    jp $1e39


    call Call_00e_439a
    jp z, Jump_00e_49e3

    ld a, [hl]
    and $1f
    ret nz

    jp Jump_00e_49b2


    ld e, $85
    ld a, [de]
    rst $00
    ld d, h
    ld c, c
    ld e, a
    ld c, c
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $f0
    ld a, $01
    jp $2772


    call Call_00e_439a
    jp z, Jump_00e_49e3

    ld a, [hl]
    and $0f
    ret nz

    ld e, $a1
    ld a, [de]
    dec a
    ret nz

    ld a, $51
    call $0c74
    jp Jump_00e_49d9


    ld h, d
    ld l, $a1
    bit 7, [hl]
    jp z, $275f

    ld l, e
    ld [hl], $09
    ld l, $86
    ld [hl], $78
    ld l, $a4
    res 7, [hl]
    jp $1e39


Jump_00e_498c:
    ld b, $51
    call Call_00e_4373
    ret nz

    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], d
    ld e, $b0
    ld a, [de]
    inc a
    ld [de], a
    call $041a
    ld c, a
    and $70
    add $20
    ld l, $8b
    ld [hli], a
    inc l
    ld a, c
    and $07
    swap a
    add $40
    ld [hl], a
    ret


Jump_00e_49b2:
    ld b, $2e
    call Call_00e_437c
    ret nz

    push hl
    ld bc, $1f1f
    call $434f
    pop hl
    ldh a, [$ae]
    add b
    sub $10
    and $f0
    add $08
    ld l, $cb
    ld [hl], a
    ldh a, [$af]
    add c
    sub $10
    and $f0
    add $08
    ld l, $cd
    ld [hl], a
    ret


Jump_00e_49d9:
    ld b, $11
    call Call_00e_437c
    ret nz

    ld l, $c2
    inc [hl]
    ret


Jump_00e_49e3:
    ld l, $84
    inc [hl]
    ld a, $02
    jp $2772


Call_00e_49eb:
    ld hl, $d080

jr_00e_49ee:
    ld l, $81
    ld a, [hl]
    cp $51
    call z, Call_00e_447d
    inc h
    ld a, h
    cp $e0
    jr c, jr_00e_49ee

    ret


    jr z, jr_00e_4a2e

    sub $03
    ret c

    jr nz, jr_00e_4a20

    ld e, $a4
    ld a, [de]
    or a
    jr z, jr_00e_4a1d

    ld hl, $d081

jr_00e_4a0d:
    ld a, [hl]
    cp $72
    jr nz, jr_00e_4a17

    ld a, h
    cp d
    jp nz, $27c6

jr_00e_4a17:
    inc h
    ld a, h
    cp $e0
    jr c, jr_00e_4a0d

jr_00e_4a1d:
    jp Jump_00e_450f


jr_00e_4a20:
    ld e, $aa
    ld a, [de]
    res 7, a
    cp $04
    jr c, jr_00e_4a2e

    ld e, $b5
    ld a, $01
    ld [de], a

jr_00e_4a2e:
    ld e, $84
    ld a, [de]
    rst $00
    ld d, [hl]
    ld c, d
    sbc $4a
    ld h, b
    ld c, d
    sbc $4a
    call nz, $de4a
    ld c, d
    sbc $4a
    sbc $4a
    rst JumpTable
    ld c, d
    di
    ld c, d
    dec e
    ld c, e
    scf
    ld c, e
    ld e, [hl]
    ld c, e
    ld a, d
    ld c, e
    sbc e
    ld c, e
    adc $4b
    ld de, $2b4c
    ld c, h
    ld b, $00
    ld a, $72
    call Call_00e_4565
    jp Jump_00e_4364


    inc e
    ld a, [de]
    rst $00
    ld l, e
    ld c, d
    add l
    ld c, d
    sbc c
    ld c, d
    sbc a
    ld c, d
    ld a, $30
    ld [$cc76], a
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $78
    ld l, $a4
    res 7, [hl]
    call Call_00e_4c7f
    ld a, $03
    call $2772
    jp $1dfa


    call Call_00e_439a
    jr z, jr_00e_4a93

    ld a, [hl]
    cp $2d
    call c, $275f
    jp $275f


jr_00e_4a93:
    ld l, e
    ld [hl], $03
    jp $2b8a


    call Call_00e_4c3c
    jp $275f


    ld h, d
    ld l, $84
    ld [hl], $0c
    ld l, $86
    ld [hl], $8c
    ld l, $a4
    set 7, [hl]
    inc l
    ld [hl], $42

Call_00e_4aaf:
    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ld h, d
    ld l, $90
    ld [hl], $1e
    ld l, $94
    ld a, $00   ; xor a
    ld [hli], a
    ld [hl], $fe
    ret


    ld a, [$ccf0]
    or a
    jp z, Jump_00e_4c65

    ld e, $a1
    ld a, [de]
    or a
    call nz, Call_00e_4d54
    ld hl, $d000
    call $1d3d
    call $2b75
    jp $275f


    ret


    ld a, [$ccad]
    or a
    ret nz

    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $5a
    ld a, $2d
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    ret nz

    inc [hl]
    call $042f
    and $7f
    add $10
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp $fa
    ret nz

    call $2081
    ld a, $fe
    ld [bc], a
    ld l, $b0
    ld [hl], c
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $5a
    xor a
    call $2772
    jp $1e27


    ld hl, $d000
    call $1d3d
    call Call_00e_439a
    jr nz, jr_00e_4b5b

    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    inc l
    ld [hl], $59
    ld a, $01
    jp $2772


    ld a, [$ccf0]
    or a
    jr z, jr_00e_4b47

    ld e, $84
    ld a, $04
    ld [de], a
    ld a, $06
    jp $2772


jr_00e_4b47:
    ld hl, $d000
    call $1d3d
    call $2b75
    ld e, $a1
    ld a, [de]
    inc a
    jp z, Jump_00e_4c65

    dec a
    call nz, Call_00e_4d54

jr_00e_4b5b:
    jp $275f


    call Call_00e_439a
    jr z, jr_00e_4b70

    ld c, $12
    call $1f04
    call z, Call_00e_4aaf
    call Call_00e_4156
    jr jr_00e_4b5b

jr_00e_4b70:
    ld l, e
    inc [hl]

Call_00e_4b72:
    ld l, $94
    ld a, $80
    ld [hli], a
    ld [hl], $fe
    ret


    ld c, $10
    call $1f04
    jr z, jr_00e_4b8c

    ld a, [hl-]
    or a
    ret nz

    ld a, [hl]
    or a
    ret nz

    ld a, $04
    jp $2772


jr_00e_4b8c:
    call Call_00e_4cb6
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $28
    call $1e27
    jr jr_00e_4b5b

    call $275f
    ld h, d
    ld l, $b2
    call Call_00e_4439
    cp c
    jr nz, jr_00e_4bcb

    ldh a, [$8f]
    cp b
    jr nz, jr_00e_4bcb

    ld l, $84
    inc [hl]
    ld e, $b5
    ld a, [de]
    or a
    jr z, jr_00e_4bb6

    inc [hl]

jr_00e_4bb6:
    ld l, $94
    ld a, $60
    ld [hli], a
    ld [hl], $fe
    ld l, $90
    ld [hl], $19
    call $1dfa
    ld a, $05
    call $2772
    jr jr_00e_4bf9

jr_00e_4bcb:
    jp Jump_00e_4430


    ld e, $a1
    ld a, [de]
    inc a
    jr nz, jr_00e_4c28

    ld c, $10
    call $1f04
    jr z, jr_00e_4be1

    call Call_00e_4d36
    jr nc, jr_00e_4bcb

    ret


jr_00e_4be1:
    call Call_00e_4b72
    ld l, $b5
    bit 0, [hl]
    jr nz, jr_00e_4bf1

    ld l, $86
    ld a, [hl]
    cp $03
    jr c, jr_00e_4bf3

jr_00e_4bf1:
    ld l, $84

jr_00e_4bf3:
    inc [hl]
    ld a, $05
    call $2772

jr_00e_4bf9:
    ld e, $b4
    ld a, [de]
    inc a
    and $03
    ld [de], a
    ld hl, $4c09
    rst JumpTable
    ld e, $b2
    jp $2362


    ldh a, [rNR10]
    db $10
    db $10
    db $10
    ldh a, [$f0]
    ldh a, [$62]
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $90
    ld [hl], $14
    ld l, $b4
    ld a, [hl]
    inc a
    and $03
    swap a
    rrca
    ld l, $89
    ld [hl], a

jr_00e_4c28:
    jp $275f


    ld e, $a1
    ld a, [de]
    inc a
    jr nz, jr_00e_4c28

    ld c, $18
    call $1f04
    jp nz, $1fdb

    jp Jump_00e_4c65


Call_00e_4c3c:
    ld e, $8f
    ld a, [de]
    or a
    ret nz

    ld hl, $d081

jr_00e_4c44:
    ld a, [hl]
    cp $72
    jr nz, jr_00e_4c54

    ld a, h
    cp d
    jr z, jr_00e_4c54

    push hl
    call Call_00e_4c88
    pop hl
    jr z, jr_00e_4c64

jr_00e_4c54:
    inc h
    ld a, h
    cp $e0
    jr c, jr_00e_4c44

    call $1432
    cp $fb
    jr z, jr_00e_4c64

    cp $fa
    ret nz

jr_00e_4c64:
    pop hl

Jump_00e_4c65:
    ld b, $03
    call $24af
    ld h, d

Call_00e_4c6b:
    ld l, $84
    ld [hl], $09
    ld l, $a4
    res 7, [hl]
    ld l, $b5
    ld [hl], $00
    ld l, $86
    ld [hl], $78
    ld l, $9a
    res 7, [hl]

Call_00e_4c7f:
    ld l, $b0
    ld c, [hl]
    ld b, $cf
    ld a, $fa
    ld [bc], a
    ret


Call_00e_4c88:
    push de
    ld d, h
    ld e, $8b
    call $2059
    ld c, a
    pop de
    call $2054
    cp c
    ret nz

    push hl
    call $1432
    pop hl
    cp $fe
    ret nz

    call Call_00e_4c6b
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    call $3ac6
    jr nz, jr_00e_4cb4

    ld [hl], $03
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c

jr_00e_4cb4:
    xor a
    ret


Call_00e_4cb6:
    call $1432
    ld c, l
    ld hl, $cf00
    ld e, $b1
    ld b, $ff

jr_00e_4cc1:
    ld a, [hl]
    cp $fa
    call z, Call_00e_4d10
    inc l
    ld a, l
    cp $b0
    jr c, jr_00e_4cc1

    ld a, [de]
    ld l, a
    ld [hl], $fb
    ld e, $b0
    ld [de], a
    call Call_00e_4cf8
    ldh [$8e], a
    ld a, [hl]
    ldh [$8f], a
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    call $1e6f
    add $04
    and $18
    swap a
    rlca
    ld e, $b4
    ld [de], a
    ld hl, $4d0c
    rst AddAToHL
    ld e, $b1
    ld a, [de]
    add [hl]
    ld [de], a

Call_00e_4cf8:
    ld h, d
    ld l, $b2
    ld e, $b1
    ld a, [de]
    and $f0
    add $08
    ld [hli], a
    ld a, [de]
    and $0f
    swap a
    add $08
    ld [hl-], a
    ret


    ldh a, [rSB]
    db $10
    rst $38

Call_00e_4d10:
    push de
    ld a, c
    and $f0
    swap a
    ld d, a
    ld a, l
    and $f0
    swap a
    sub d
    jr nc, jr_00e_4d21

    cpl
    inc a

jr_00e_4d21:
    ld d, a
    ld a, c
    and $0f
    ld e, a
    ld a, l
    and $0f
    sub e
    jr nc, jr_00e_4d2e

    cpl
    inc a

jr_00e_4d2e:
    add d
    pop de
    cp b
    ret nc

    ld b, a
    ld a, l
    ld [de], a
    ret


Call_00e_4d36:
    ld h, d
    ld e, $8b
    ld a, [de]
    ldh [$8f], a
    ld l, $b2
    ld a, [hli]
    sub $02
    ld b, a
    ld e, $8d
    ld a, [de]
    ldh [$8e], a
    ld c, [hl]
    sub c
    inc a
    cp $02
    ret nc

    ldh a, [$8f]
    sub b
    inc a
    cp $02
    ret


Call_00e_4d54:
    xor a
    ld [de], a
    ld b, $31
    call Call_00e_437c
    ret nz

    ld l, $c2
    inc [hl]
    ld l, $cb
    ld a, [hl]
    sub $04
    ld [hl], a
    ret


    jr z, jr_00e_4ddb

    sub $04
    jr z, jr_00e_4d8b

    inc a
    ret nz

    ld e, $b0
    ld a, [de]
    bit 7, a
    jp z, $2e28

    ld a, [$cc00]
    and $0f
    jr nz, jr_00e_4d88

    ld e, $b3
    ld a, [de]
    sub $04
    and $0c
    ld [de], a
    call $2772

jr_00e_4d88:
    jp Jump_00e_450f


jr_00e_4d8b:
    ld e, $a5
    ld a, [de]
    cp $5a
    jr z, jr_00e_4ddb

    ld a, $29
    call $211e
    ld e, l
    ld a, [de]
    cp [hl]
    jr z, jr_00e_4ddb

    ld e, $b0
    ld a, [de]
    bit 7, a
    jr z, jr_00e_4ddb

    ld l, $b1
    ld e, $a9
    ld a, [de]
    ld c, a

jr_00e_4da9:
    push hl
    ld h, [hl]
    ld l, $a9
    ld [hl], c
    ld l, $84
    ld [hl], $0e
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $01
    pop hl
    inc l
    ld a, $b4
    cp l
    jr nz, jr_00e_4da9

    ld l, $a9
    ld [hl], c
    ld e, $99
    ld a, [de]
    or a
    jr z, jr_00e_4dcf

    ld h, a
    ld l, $d7
    ld [hl], $ff

jr_00e_4dcf:
    ld a, c
    or a
    ld h, d
    ret z

    ld l, $ab
    ld a, $4b
    ld [hli], a
    inc l
    ld [hl], a
    ret


jr_00e_4ddb:
    call Call_00e_4426
    jr c, jr_00e_4de7

    dec b
    jp z, Jump_00e_4e29

    jp Jump_00e_4eeb


jr_00e_4de7:
    rst $00
    ld hl, sp+$4d
    inc b
    ld c, [hl]
    jr z, jr_00e_4e3c

    jr z, jr_00e_4e3e

    jr z, jr_00e_4e40

    jr z, jr_00e_4e42

    jr z, @+$50

    jr z, jr_00e_4e46

    ld a, b
    or a
    jp nz, Jump_00e_4364

    inc a
    ld [de], a
    ld a, $73
    jp Jump_00e_4565


    ld b, $04
    call $20b5
    ret nz

    ld b, $73
    call Call_00e_436d
    ld l, $b1
    ld c, h
    ld e, $03

jr_00e_4e14:
    push hl
    call Call_00e_436d
    inc [hl]
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], c
    ld a, h
    pop hl
    ld [hli], a
    dec e
    jr nz, jr_00e_4e14

    jp $2e28


    ret


Jump_00e_4e29:
    ld a, [de]
    sub $08
    rst $00
    inc sp
    ld c, [hl]
    jp z, $e24e

    ld c, [hl]
    inc e
    ld a, [de]
    rst $00
    ld b, d
    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    ld l, d
    ld c, [hl]

jr_00e_4e3c:
    ld a, c
    ld c, [hl]

jr_00e_4e3e:
    and h
    ld c, [hl]

jr_00e_4e40:
    or h
    ld c, [hl]

jr_00e_4e42:
    ld a, [$ccad]
    or a

jr_00e_4e46:
    ret nz

    ld bc, $010c
    call Call_00e_4553
    ret nz

    inc a
    ld [de], a
    ld bc, $2f02
    jp $184b


    ld a, $2d
    ld [$cc51], a
    call $0c74
    ld h, d
    ld l, $86
    ld [hl], $3c
    ld a, $b1
    ld bc, $3737
    jr jr_00e_4e86

    call Call_00e_439a
    ret nz

    ld l, $b0
    ld [hl], $00
    ld a, $b2
    ld bc, $7437
    jr jr_00e_4e86

    ld h, d
    ld l, $b0
    bit 0, [hl]
    ret z

    ld [hl], $00
    ld a, $b3
    ld bc, $7a74

jr_00e_4e86:
    ld l, e
    inc [hl]
    ld l, a
    ld h, [hl]
    ld l, $b0
    ld [hl], $01
    ld l, $8b
    call $2077
    ld l, $b1
    ld a, b
    and $f0
    add $08
    ld [hli], a
    ld a, b
    and $0f
    swap a
    add $08
    ld [hl], a
    ret


    ld h, d
    ld l, $b0
    bit 0, [hl]
    ret z

    ld [hl], $00
    ld l, e
    inc [hl]
    inc l
    ld [hl], $3c
    jp Jump_00e_502a


    call Call_00e_439a
    ret nz

    ld l, $84
    inc [hl]
    ld e, $b1
    ld l, $b0
    ld b, $03

jr_00e_4ec1:
    ld a, [de]
    ld h, a
    set 0, [hl]
    inc e
    dec b
    jr nz, jr_00e_4ec1

    ret


    ld e, $b1
    ld l, $b0
    ld b, $03

jr_00e_4ed0:
    ld a, [de]
    ld h, a
    ld a, [hl]
    or a
    ret nz

    inc e
    dec b
    jr nz, jr_00e_4ed0

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $3c
    ret


    call Call_00e_439a
    ret nz

    ld l, e
    dec [hl]
    jp Jump_00e_5007


Jump_00e_4eeb:
    call Call_00e_5104
    call Call_00e_5122
    call Call_00e_512b
    ld e, $84
    ld a, [de]
    sub $08
    rst $00
    ld [$284f], sp
    ld c, a
    sub d
    ld c, a
    and e
    ld c, a
    cp d
    ld c, a
    jp nc, $e94f

    ld c, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $5a
    ld l, $90
    ld [hl], $14
    ld l, $8f
    ld [hl], $fc
    call $042f
    ld e, $b5
    ld [de], a
    ld e, $87
    ldh a, [$95]
    ld [de], a
    call $1e1e
    jp $1e39


    inc e
    ld a, [de]
    rst $00
    ld sp, $614f
    ld c, a
    ld [hl], h
    ld c, a
    ld h, d
    ld l, $b0
    bit 0, [hl]
    ret z

    ld l, e
    inc [hl]
    ld l, $b0
    set 1, [hl]
    call Call_00e_4f55
    ld a, $08
    jr z, jr_00e_4f4c

    call $1e6f
    add $04
    and $18
    rrca

jr_00e_4f4c:
    ld e, $b3
    ld [de], a
    call $2772
    jp Jump_00e_507e


Call_00e_4f55:
    ld h, d
    ld l, $b1
    call Call_00e_4439
    cp c
    ret nz

    ldh a, [$8f]
    cp b
    ret


    call Call_00e_4f55
    jp nz, Jump_00e_4430

    ld l, e
    inc [hl]
    ld l, $b0
    res 0, [hl]
    ld l, $97
    ld h, [hl]
    ld l, $b0
    ld [hl], $01
    call Call_00e_5131
    ld h, d
    ld l, $b0
    bit 0, [hl]
    jp z, Jump_00e_5071

    ld l, $84
    ld [hl], $0c
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    res 1, [hl]
    ld l, $86
    ld [hl], $14
    jp $1e1e


    ld h, d
    ld l, $b0
    bit 0, [hl]
    ret z

    set 1, [hl]
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $3c
    jp Jump_00e_5071


    call Call_00e_439a
    jp nz, Jump_00e_506b

    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    res 1, [hl]
    ld l, $86
    ld [hl], $08
    jp $1e1e


    call Call_00e_439a
    jp nz, Jump_00e_506b

    inc [hl]
    ld b, $39
    call Call_00e_437c
    jp nz, Jump_00e_506b

    ld h, d
    ld l, $86
    ld [hl], $98
    ld l, $84
    inc [hl]
    ret


    call Call_00e_439a
    jp nz, Jump_00e_50cf

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $b0
    set 1, [hl]
    ld l, $86
    ld [hl], $3c
    ret


    call Call_00e_439a
    ret nz

    ld l, e
    ld [hl], $0a
    ld l, $b0
    ld [hl], $00
    ld l, $a5
    ld a, [hl]
    cp $43
    jr nz, jr_00e_5004

    ld [hl], $5a
    ld l, $97
    ld h, [hl]
    ld l, $8f
    ld [hl], $00

jr_00e_5004:
    jp $1e39


Jump_00e_5007:
    call $042f
    and $03
    ld b, a
    add a
    add b
    ld hl, $5053
    rst JumpTable
    ld e, $b1

jr_00e_5015:
    ld a, [de]
    ld b, a

jr_00e_5017:
    ld c, $8b
    ld a, [hli]
    ld [bc], a
    ld c, $8d
    ld a, [hli]
    ld [bc], a
    ld c, $b0
    ld a, $01
    ld [bc], a
    inc e
    ld a, $b4
    cp e
    jr nz, jr_00e_5015

Jump_00e_502a:
jr_00e_502a:
    call $042f
    and $03
    cp $03
    jr z, jr_00e_502a

    add $b1
    ld e, a
    ld a, [de]
    ld h, a
    ld l, $b0
    set 7, [hl]
    ld l, $89
    ld a, [hl]
    swap a
    rlca
    ld bc, $50cb
    call $006d
    ld l, $8b
    ld e, l
    ld a, [hli]
    ld [de], a
    inc l
    ld e, l
    ld a, [bc]
    add [hl]
    ld [de], a
    ret


    jr c, jr_00e_50cd

    ld a, b
    ld c, b
    ld a, b
    xor b
    jr c, jr_00e_50a3

    jr c, @-$56

    ld a, b
    ld a, b
    jr nc, jr_00e_50a1

    ld e, b
    ld b, b
    add b
    ld b, b
    jr nc, jr_00e_5017

    ld e, b
    or b
    add b
    or b

Jump_00e_506b:
    ld a, [$cc00]
    and $07
    ret nz

Jump_00e_5071:
    call Call_00e_43b4
    rrca
    ld h, d
    ld l, $b3
    cp [hl]
    ret z

    ld [hl], a
    call $2772

Jump_00e_507e:
jr_00e_507e:
    ld e, $89
    ld a, [de]
    bit 3, a
    ld b, $08
    jr z, jr_00e_5089

    ld b, $05

jr_00e_5089:
    ld e, $a7
    ld a, b
    ld [de], a
    call Call_00e_50ab
    ld e, $b0
    ld a, [de]
    bit 7, a
    ret z

    ld e, $89
    ld a, [de]
    swap a
    rlca
    ld hl, $50cb
    rst AddAToHL
    ld c, [hl]

jr_00e_50a1:
    ld b, $00

jr_00e_50a3:
    ld a, $0b
    call $211e
    jp $2215


Call_00e_50ab:
    ld e, $b3
    ld a, [de]
    inc a
    and $03
    ret nz

    ld e, $8d
    ld a, [de]
    add $03
    and $f8
    ld [de], a
    ld h, d
    ld l, $89
    bit 3, [hl]
    ret z

    bit 4, [hl]
    ld b, $03
    jr z, jr_00e_50c8

    ld b, $fd

jr_00e_50c8:
    add b
    ld [de], a
    ret


    nop
    db $fd

jr_00e_50cd:
    nop
    inc bc

Jump_00e_50cf:
    call Call_00e_50f2
    ld e, $b4
    ld a, b
    ld [de], a
    ld e, $87
    ld a, [de]
    dec a
    ld [de], a
    and $07
    call z, Call_00e_43b4
    ld e, $89
    ld a, [de]
    rrca
    ld h, d
    ld l, $b4
    add [hl]
    ld l, $b3
    cp [hl]
    ret z

    ld [hl], a
    call $2772
    jr jr_00e_507e

Call_00e_50f2:
    ld e, $86
    ld a, [de]
    ld b, $00
    cp $8e
    ret nc

    inc b
    cp $84
    ret nc

    inc b
    cp $7a
    ret nc

    inc b
    ret


Call_00e_5104:
    ld h, d
    ld l, $b5
    dec [hl]
    ld a, [hl]
    and $0f
    ret nz

    ld a, [hl]
    and $70
    swap a
    ld hl, $511a
    rst AddAToHL
    ld e, $8f
    ld a, [hl]
    ld [de], a
    ret


    db $fc
    ei
    ld a, [$fcfb]
    db $fd
    cp $fd

Call_00e_5122:
    ld e, $b0
    ld a, [de]
    bit 1, a
    ret z

    jp Jump_00e_441f


Call_00e_512b:
    ld e, $84
    ld a, [de]
    cp $0b
    ret c

Call_00e_5131:
    ld h, d
    ld l, $b0
    bit 7, [hl]
    ret z

    ld a, [$cca9]
    cp $02
    ld a, $5a
    ld b, $00
    jr nz, jr_00e_5146

    ld a, $43
    ld b, $fc

jr_00e_5146:
    ld e, $a5
    ld [de], a
    ld a, $0f
    call $211e
    ld [hl], b
    ret


    jr z, jr_00e_5199

    sub $03
    ret c

    sub $01
    jr z, jr_00e_5174

    jr nc, jr_00e_5199

    ld e, $82
    ld a, [de]
    dec a
    jr nz, jr_00e_5199

    ld a, $04
    call $2122
    ld a, $0a
    cp [hl]
    jr c, jr_00e_5171

    ld [hl], a
    ld a, $d1
    call $0c74

jr_00e_5171:
    jp Jump_00e_450f


jr_00e_5174:
    ld e, $82
    ld a, [de]
    dec a
    jr z, jr_00e_5199

    ld a, $2b
    call $211e
    ld e, l
    ld a, [de]
    ld [hl], a
    ld l, $84
    ld a, [hl]
    cp $09
    jr nz, jr_00e_518d

    ld l, $86
    ld [hl], $1c

jr_00e_518d:
    ld l, $a9
    ld e, l
    ld a, [de]
    ld [hl], a
    or a
    jr nz, jr_00e_5199

    ld l, $a4
    res 7, [hl]

jr_00e_5199:
    call Call_00e_4426
    jr c, jr_00e_51a5

    dec b
    jp z, Jump_00e_51e8

    jp Jump_00e_542e


jr_00e_51a5:
    rst $00
    or [hl]
    ld d, c
    push bc
    ld d, c
    rst $20
    ld d, c
    rst $20
    ld d, c
    rst $20
    ld d, c
    rst $20
    ld d, c
    rst $20
    ld d, c
    rst $20
    ld d, c
    ld a, $01
    ld [de], a
    ld e, $82
    ld a, [de]
    or a
    jp nz, Jump_00e_4364

    ld a, $74
    jp Jump_00e_4565


    ld b, $02
    call $20b5
    ret nz

    ld b, $74
    call Call_00e_436d
    ld c, h
    call Call_00e_436d
    inc [hl]
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], c
    ld b, h
    ld h, c
    ld l, $98
    ld [hli], a
    ld [hl], b
    call $21fd
    jp $2e28


    ret


Jump_00e_51e8:
    ld e, $84
    ld a, [de]
    sub $08
    cp $03
    jr c, jr_00e_5200

    call Call_00e_54b5
    ld e, $b5
    ld a, [de]
    ld e, $84
    rst $00
    cp h
    ld d, d
    db $fd
    ld d, d
    ld [hl], h
    ld d, e

jr_00e_5200:
    rst $00
    rlca
    ld d, d
    ld h, [hl]
    ld d, d
    sub d
    ld d, d
    inc e
    ld a, [de]
    rst $00
    db $10
    ld d, d
    add hl, hl
    ld d, d
    ld c, h
    ld d, d
    ld bc, $0108
    call Call_00e_4553
    ret nz

    call Call_00e_4465
    ld l, $85
    inc [hl]
    ld l, $a5
    ld [hl], $5b
    ld a, $02
    call Call_00e_5512
    jp $1e1e


    ld c, $18
    call $232b
    jr nz, jr_00e_528f

    jr nc, jr_00e_5245

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $5a
    xor a
    call Call_00e_5512
    ld a, $2d
    ld [$cc51], a
    call $0c74

jr_00e_5245:
    ld a, $8f
    call $0c74
    jr jr_00e_528f

    call Call_00e_439a
    jr z, jr_00e_525b

    ld a, [hl]
    cp $46
    ld a, $d1
    call z, $0c74
    jr jr_00e_528f

jr_00e_525b:
    ld l, e
    ld [hl], $00
    dec l
    ld [hl], $0b
    call Call_00e_556f
    jr jr_00e_528f

    call Call_00e_439a
    jr nz, jr_00e_527f

    inc l
    ld a, [hl-]
    ld [hl], a
    ld l, e
    inc [hl]
    dec a
    jr z, jr_00e_528f

    ld l, $90
    ld [hl], $78
    ld a, $02
    ld l, $87
    ld [hl], a
    jp Jump_00e_5512


jr_00e_527f:
    ld l, $86
    ld a, [hl]
    cp $96
    jr nc, jr_00e_528f

    call Call_00e_554a
    call Call_00e_42de
    call $1fdb

jr_00e_528f:
    jp $275f


    call Call_00e_439a
    jr z, jr_00e_52b6

    ld c, $12
    call $1f04
    jp nz, Jump_00e_5523

    ld a, $8f
    call $0c74
    ld h, d
    ld l, $87
    dec [hl]
    jr z, jr_00e_52b6

    dec l
    ld [hl], $f0
    ld l, $94
    ld a, $40
    ld [hli], a
    ld [hl], $fe
    jr jr_00e_528f

jr_00e_52b6:
    ld l, $84
    inc [hl]
    jp Jump_00e_556f


    inc e
    ld a, [de]
    rst $00
    push bc
    ld d, d
    sub $52
    db $ec
    ld d, d
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $a6
    ld a, $09
    ld [hli], a
    ld [hl], a
    ld a, $03
    call Call_00e_5512
    call Call_00e_439a
    jp nz, Jump_00e_557b

    ld [hl], $78
    inc l
    ld [hl], $02
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $46
    call Call_00e_43bf
    jr jr_00e_528f

    call Call_00e_439a
    jr nz, jr_00e_5365

    ld [hl], $2d
    inc l
    dec [hl]
    jp z, Jump_00e_54c6

    call Call_00e_43bf
    jr jr_00e_528f

    inc e
    ld a, [de]
    rst $00
    ld b, $53
    dec de
    ld d, e
    ld b, l
    ld d, e
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $0f
    ld l, $a6
    ld a, $09
    ld [hli], a
    ld [hl], a
    ld l, $90
    ld [hl], $78
    ld a, $03
    call Call_00e_5512
    call Call_00e_557b
    call Call_00e_439a
    ret nz

    ld l, $85
    inc [hl]
    call $042f
    and $01
    ld hl, $55ab
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld e, $89
    ld a, [hli]
    ld [de], a
    ld e, $b8
    ld a, [hli]
    ld [de], a

Call_00e_5339:
    ld e, $86
    ld a, [hli]
    ld [de], a
    ld e, $b1
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    call Call_00e_439a
    jp nz, Jump_00e_5365

    ld e, $b1
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl]
    inc a
    jp z, Jump_00e_54c6

    ld e, $b8
    ld a, [de]
    ld b, a
    ld e, $89
    ld a, [de]
    add b
    and $1f
    ld [de], a
    call Call_00e_5339

Jump_00e_5365:
jr_00e_5365:
    call Call_00e_5563
    call Call_00e_42de
    call $1fdb
    call Call_00e_556f
    jp Jump_00e_557b


    inc e
    ld a, [de]
    rst $00
    add e
    ld d, e
    sub e
    ld d, e
    call $ed53
    ld d, e
    rrca
    ld d, h
    rra
    ld d, h
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $3c
    inc l
    ld [hl], $04
    ld l, $a6
    ld a, $09
    ld [hli], a
    ld [hl], a
    ret


    call Call_00e_43a3
    ld l, $94
    ld a, $80
    ld [hli], a
    ld [hl], $fe
    ld l, e
    jr nz, jr_00e_53a3

    ld [hl], $05
    ret


jr_00e_53a3:
    inc [hl]
    ld l, $90
    ld [hl], $64
    ld l, $87
    ld a, [hl]
    dec a
    ld bc, $55a8
    call $006d
    ld l, $b6
    ld a, [bc]
    ld [hli], a
    ldh a, [$af]
    ld b, $18
    cp b
    jr c, jr_00e_53c3

    ld b, $d8
    cp b
    jr nc, jr_00e_53c3

    ld b, a

jr_00e_53c3:
    ld [hl], b
    ld e, $87
    ld a, [de]
    and $01
    inc a
    jp Jump_00e_5512


    ld c, $12
    call $1f04
    jp nz, Jump_00e_5518

    ld l, $85
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $87
    ld a, [hl]
    and $01
    swap a
    ld l, $89
    ld [hl], a
    ld a, $8f
    call $0c74

jr_00e_53ea:
    jp $275f


    call Call_00e_439a
    jr z, jr_00e_5406

    ld a, [hl]
    cp $14
    jr nc, jr_00e_5404

    call $275f
    ld a, [$cc00]
    and $07
    ld a, $6b
    call z, $0c74

jr_00e_5404:
    jr jr_00e_53ea

jr_00e_5406:
    ld l, e
    inc [hl]
    ld a, $bb
    call $0c74
    jr jr_00e_53ea

    call $275f
    call Call_00e_4156
    call nz, Call_00e_4156
    ret nz

    ld e, $85
    ld a, $01
    ld [de], a
    ret


    ld c, $12
    call $1f04
    jr nz, jr_00e_53ea

    ld a, $8f
    call $0c74
    jp Jump_00e_54c9


Jump_00e_542e:
    ld a, [de]
    sub $08
    rst $00
    ld a, [hl-]
    ld d, h
    ld c, c
    ld d, h
    sub [hl]
    ld d, h
    and h
    ld d, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a6
    ld [hl], $03
    inc l
    ld [hl], $08
    ld a, $04
    jp $2772


    call $275f
    ld a, $30
    call $211e
    ld a, [hl]
    or a
    ld e, $b0
    jr z, jr_00e_5462

    ld a, $01
    ld [de], a
    ld h, d
    ld l, $a4
    res 7, [hl]
    jp $1e39


jr_00e_5462:
    ld a, [de]
    dec a
    jr nz, jr_00e_5484

    ld [de], a
    call $041a
    and $01
    inc a
    xor $01
    ld bc, $559c
    call $006d
    ld e, $b1
    ld a, [bc]
    ld [de], a
    inc e
    inc bc
    ld a, [bc]
    ld [de], a
    inc bc
    ld a, [bc]
    push hl
    call $2772
    pop hl

jr_00e_5484:
    ld e, $b1
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    ld c, a
    call $2232
    ld h, d
    ld l, $a4
    set 7, [hl]
    jp $1e27


    ld h, d
    ld l, $9a
    bit 7, [hl]
    jp z, $2e28

    ld l, $a4
    res 7, [hl]
    ld l, e
    inc [hl]
    ld a, $01
    call $211e
    ld a, [hl]
    cp $74
    jp nz, $2e28

    ld l, $9a
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


Call_00e_54b5:
    ld e, $b5
    ld a, [de]
    cp $02
    ret z

    ld a, [$cc00]
    and $07
    ret nz

    ld a, $6d
    jp $0c74


Jump_00e_54c6:
    call Call_00e_5563

Jump_00e_54c9:
    ld bc, $1f01
    call $434f
    ld h, d
    ld l, $90
    ld [hl], $14
    ld l, $89
    ld [hl], b
    ld e, $b5
    ld a, [de]
    add a
    add c
    ld hl, $55a2
    rst AddAToHL
    ld e, $b5
    ld a, [hl]
    ld [de], a
    dec a
    jr z, jr_00e_54fd

    call Call_00e_556f
    ld l, $84
    ld [hl], $09
    inc l
    ld [hl], $00
    ld l, $86
    ld [hl], $b4
    inc l
    ld [hl], $01
    jr jr_00e_5511

    call Call_00e_5563

jr_00e_54fd:
    ld bc, $fe20
    call $2358
    ld l, $84
    ld [hl], $09
    inc l
    ld [hl], $00
    ld l, $86
    ld [hl], $78
    inc l
    ld [hl], $f0

jr_00e_5511:
    xor a

Call_00e_5512:
Jump_00e_5512:
    ld e, $b0
    ld [de], a
    jp $2772


Jump_00e_5518:
    call $275f
    ld h, d
    ld l, $b6
    call Call_00e_4439
    jr jr_00e_5533

Jump_00e_5523:
    call $275f
    ld bc, $3878
    ld h, d
    ld l, $8b
    ld a, [hli]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a

jr_00e_5533:
    sub c
    add $02
    cp $05
    jp nc, Jump_00e_4430

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    jp nc, Jump_00e_4430

    ld [hl], c
    ld l, $8b
    ld [hl], b
    ret


Call_00e_554a:
    ld a, [$ccf0]
    or a
    jr nz, jr_00e_555f

    ld a, [$cc00]
    and $3f
    ret nz

    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ret


jr_00e_555f:
    inc [hl]
    jp Jump_00e_44ea


Call_00e_5563:
    ld h, d
    ld l, $b3
    ld e, $8b
    ld a, [hli]
    ld [de], a
    ld e, $8d
    ld a, [hl]
    ld [de], a
    ret


Call_00e_556f:
Jump_00e_556f:
    ld h, d
    ld l, $b3
    ld e, $8b
    ld a, [de]
    ld [hli], a
    ld e, $8d
    ld a, [de]
    ld [hl], a
    ret


Call_00e_557b:
Jump_00e_557b:
    call $275f
    call Call_00e_5563
    ld e, $a1
    ld a, [de]
    ld hl, $5594
    rst AddAToHL
    ld e, $8b
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    inc b
    inc b
    inc b
    db $fc
    db $fc
    db $fc
    db $fc
    inc b
    or $10
    inc b
    or $f0
    dec b
    ld bc, $0002
    ld [bc], a
    nop
    ld bc, $941c
    inc e
    xor a
    ld d, l
    cp a
    ld d, l
    db $10
    ld hl, sp+$0a
    rlca
    dec b
    ld c, $0a
    dec de
    inc d
    jr z, jr_00e_55d8

    ld [hl-], a
    ld hl, $253b
    rst $38
    inc c
    ld [bc], a
    ld b, b
    rlca
    rlca
    rlca
    ld h, $0b
    inc c
    inc c
    dec l
    dec b
    dec b
    dec b
    dec l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, [hl]
    rst $38
    jr z, jr_00e_5629

    sub $03
    ret c

jr_00e_55d8:
    jr z, jr_00e_55f8

    ld e, $82
    ld a, [de]
    or a
    ld e, $a9
    ld a, [de]
    jr z, jr_00e_55e7

    or a
    ret z

    jr jr_00e_5629

jr_00e_55e7:
    ld h, d
    ld l, $b3
    cp [hl]
    jr z, jr_00e_5629

    ld [hl], a
    or a
    ret z

    ld l, $84
    ld [hl], $0e
    inc l
    ld [hl], $00
    ret


jr_00e_55f8:
    ld e, $82
    ld a, [de]
    or a
    jr z, jr_00e_560d

    call $24ad
    ld a, $34
    call $211e
    dec [hl]
    call z, $21fd
    jp $2e28


jr_00e_560d:
    ld h, d
    ld l, $84
    ld a, [hl]
    cp $0f
    jp z, Jump_00e_450f

    ld [hl], $0f
    inc l
    ld [hl], $00
    inc l
    ld [hl], $14
    ld l, $a9
    ld [hl], $01
    ld l, $88
    xor a
    ld [hl], a
    call $2772

jr_00e_5629:
    call Call_00e_4426
    jr c, jr_00e_5636

    ld a, b
    or a
    jp z, Jump_00e_565d

    jp Jump_00e_59cc


jr_00e_5636:
    ld e, $84
    ld a, [de]
    rst $00
    ld c, d
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld a, $1e
    call Call_00e_4364
    ld a, b
    or a
    ret nz

    ld l, $8f
    ld [hl], $fc
    dec a
    ld b, $00
    jp Jump_00e_4565


    ret


Jump_00e_565d:
    ld e, $88
    ld a, [de]
    or a
    jr z, jr_00e_5673

    ld h, d
    ld l, $b2
    inc [hl]
    ld a, [hl]
    cp $18
    jr c, jr_00e_5673

    xor a
    ld [hl], a
    ld l, e
    ld [hl], a
    call $2772

jr_00e_5673:
    ld e, $84
    ld a, [de]
    sub $08
    rst $00
    adc c
    ld d, [hl]
    dec bc
    ld d, a
    ccf
    ld d, a
    add e
    ld d, a
    rst $30
    ld d, a
    dec sp
    ld e, b
    cp [hl]
    ld e, b
    ld bc, $1c59
    ld a, [de]
    rst $00
    sub h
    ld d, [hl]
    jp nz, $d456

    ld d, [hl]
    add sp, $56
    ldh a, [$ae]
    sub $38
    cp $41
    ret nc

    ldh a, [$af]
    sub $50
    cp $51
    ret nc

    ld a, [$cc34]
    or a
    ret nz

    ld bc, $0502
    call $24b1
    ret nz

    ld e, $99
    ld a, h
    ld [de], a
    dec e
    ld a, $40
    ld [de], a
    ld e, $85
    ld a, $01
    ld [de], a
    ld [$cca4], a
    ld [$cbca], a
    ret


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $08
    jp $1dfa


    call Call_00e_439a
    jp nz, $275f

    ld l, e
    inc [hl]
    ld bc, $2f12
    call $196b
    jr z, jr_00e_56e5

    inc c

jr_00e_56e5:
    jp $184b


    call $24ad
    ret nz

    ld [$cca4], a
    ld [$cbca], a
    ld h, d
    ld l, $84
    inc [hl]
    inc l
    ld [hli], a
    ld [hl], $5a
    ld l, $a9
    ld a, [hl]
    ld l, $b3
    ld [hl], a
    call $1e39
    ld a, $2d
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    ret nz

    ld e, $a9
    ld a, [de]
    ld c, $08
    cp $0a
    jr c, jr_00e_5720

    ld c, $04
    cp $10
    jr c, jr_00e_5720

    ld c, $00

jr_00e_5720:
    call $041a
    and $07
    add c
    ld hl, $572f
    rst AddAToHL
    ld a, [hl]
    ld e, $84
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec c
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc e
    ld a, [de]
    rst $00
    ld c, b
    ld d, a
    ld d, e
    ld d, a
    ld [hl], c
    ld d, a
    call Call_00e_5abe
    inc l
    ld [hl], $14
    ld l, $90
    ld [hl], $28
    ret


    call Call_00e_439a
    jp nz, Jump_00e_5b72

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    call Call_00e_43bf
    call $042f
    and $03
    sub $02
    ld b, a
    ld e, $89
    ld a, [de]
    add b
    and $1f
    ld [de], a
    call Call_00e_5b11
    jp nc, Jump_00e_5aff

    call Call_00e_439a
    ld a, [hl]
    and $1f
    call z, Call_00e_5b8d
    jp Jump_00e_5b72


    inc e
    ld a, [de]
    rst $00
    adc [hl]
    ld d, a
    and c
    ld d, a
    rst $00
    ld d, a
    db $e3
    ld d, a
    call Call_00e_5abe
    inc l
    ld [hl], $78
    call $042f
    and $08
    jr nz, jr_00e_579d

    ld a, $f8

jr_00e_579d:
    ld e, $b0
    ld [de], a
    ret


    ld a, [$cc00]
    and $03
    jr nz, jr_00e_57b5

    call Call_00e_439a
    jr z, jr_00e_57bb

    ld a, [hl]
    and $1f
    ld b, $01
    call z, Call_00e_5b94

jr_00e_57b5:
    call Call_00e_5b78
    jp nc, Jump_00e_5b1d

jr_00e_57bb:
    ld l, $85
    inc [hl]
    ld l, $90
    ld [hl], $50
    call Call_00e_43bf
    jr jr_00e_57e0

    call Call_00e_5b78
    jr c, jr_00e_57db

    ld a, [$cc7a]
    or a
    jr nz, jr_00e_57db

    call Call_00e_5b11
    jp nc, Jump_00e_5aff

    jp Jump_00e_5b72


jr_00e_57db:
    ld l, e
    inc [hl]
    call Call_00e_43ab

jr_00e_57e0:
    jp $275f


    call Call_00e_5b11
    jp nc, Jump_00e_5aff

    call Call_00e_439a
    ld a, [hl]
    and $1f
    ld b, $01
    call z, Call_00e_5b94
    jp Jump_00e_5b72


    inc e
    ld a, [de]
    rst $00
    ld [bc], a
    ld e, b
    dec c
    ld e, b
    ld e, $58
    ld [hl-], a
    ld e, b
    call Call_00e_5abe
    inc l
    ld [hl], $1c
    ld l, $90
    ld [hl], $28
    ret


    call Call_00e_439a
    jp nz, Jump_00e_5b72

    ld [hl], $0c
    ld l, e
    inc [hl]
    ld b, $03
    call Call_00e_5b94
    jr jr_00e_582f

    call Call_00e_439a
    jr nz, jr_00e_582f

    ld l, e
    inc [hl]
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    ld l, $90
    ld [hl], $50

jr_00e_582f:
    jp $275f


    call Call_00e_5b11
    jp nc, Jump_00e_5aff

    jp Jump_00e_5b72


    inc e
    ld a, [de]
    rst $00
    adc [hl]
    ld d, a
    ld c, d
    ld e, b
    ld [hl], c
    ld e, b
    adc a
    ld e, b
    and l
    ld e, b
    or l
    ld e, b
    ld a, [$cc00]
    and $03
    jr nz, jr_00e_585e

    call Call_00e_439a
    jr z, jr_00e_5864

    ld a, [hl]
    and $1f
    ld b, $01
    call z, Call_00e_5b94

jr_00e_585e:
    call Call_00e_5b78
    jp nc, Jump_00e_5b1d

jr_00e_5864:
    ld l, $85
    inc [hl]
    ld l, $90
    ld [hl], $50
    call Call_00e_43bf

jr_00e_586e:
    jp $275f


    ld a, [$cc7a]
    or a
    jr z, jr_00e_5886

    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $0c
    ld l, $90
    ld [hl], $78
    call Call_00e_43ab
    jr jr_00e_586e

jr_00e_5886:
    call Call_00e_5b11
    jp nc, Jump_00e_5aff

    jp Jump_00e_5b72


    call Call_00e_439a
    jp nz, Jump_00e_5b72

    ld [hl], $0c
    ld l, e
    inc [hl]
    ld b, $3a
    call Call_00e_437c
    ld a, $87
    call $0c74
    jr jr_00e_586e

    call Call_00e_439a
    jr nz, jr_00e_586e

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $46
    call Call_00e_43ab
    jr jr_00e_586e

    call Call_00e_5b11
    jp nc, Jump_00e_5aff

    jp Jump_00e_5b72


    inc e
    ld a, [de]
    rst $00
    rst $00
    ld e, b
    sbc $58
    or l
    ld e, b
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $14
    ld l, $90
    ld [hl], $78
    call Call_00e_43ab
    ld e, $88
    xor a
    ld [de], a
    ld e, $b2
    ld [de], a
    jp $2772


    call Call_00e_439a
    jp nz, $275f

    ld l, e
    inc [hl]
    ld l, $a9
    ld a, [hl]
    cp $10
    ret nc

    ld b, $01
    cp $0a
    jr nc, jr_00e_58f3

    inc b

jr_00e_58f3:
    ld a, b
    ld l, $b7
    cp [hl]
    ret z

    ld [hl], a
    add $13
    ld c, a
    ld b, $2f
    jp $184b


    inc e
    ld a, [de]
    rst $00
    db $10
    ld e, c
    inc e
    ld e, c
    ld d, e
    ld e, c
    ld h, [hl]
    ld e, c
    ld [hl], e
    ld e, c
    adc a
    ld e, c
    call Call_00e_439a
    ret nz

    ld l, e
    inc [hl]
    ld bc, $2f16
    jp $184b


    ld b, $02
    call $20b5
    jp nz, $275f

    ld h, d
    ld l, $85
    inc [hl]
    ld l, $b4
    ld [hl], $02
    call $1e39
    call $24ad
    ld b, $75
    call Call_00e_436d
    call Call_00e_593e
    call Call_00e_436d
    inc a

Call_00e_593e:
    inc l
    ld [hl], a
    rrca
    swap a
    jr nz, jr_00e_5947

    ld a, $f8

jr_00e_5947:
    ld l, $b0
    ld [hl], a
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], d
    jp $21fd


    ld e, $b4
    ld a, [de]
    or a
    jp nz, Jump_00e_43a3

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $3c
    ld a, $f0
    jp $0c74


    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $10
    ld l, e
    inc [hl]
    jp $1dfa


    call Call_00e_439a
    jp nz, $275f

    ld l, e
    inc [hl]
    ld l, $89
    ld [hl], $06
    ld l, $90
    ld [hl], $78
    ld bc, $2f17
    call $196b
    jr z, jr_00e_598c

    inc c

jr_00e_598c:
    jp $184b


    call $196b
    jr z, jr_00e_5999

    ld e, $a9
    xor a
    ld [de], a
    ret


jr_00e_5999:
    ld e, $b8
    ld a, [de]
    or a
    jr nz, jr_00e_59a6

    inc a
    ld [de], a
    ld b, $01
    call Call_00e_437c

jr_00e_59a6:
    call $275f
    ld h, d
    ld l, $8e
    ld a, [hl]
    sub $80
    ld [hli], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    call Call_00e_5b11
    jp c, $1fdb

    call $30e3
    call $249f
    ld a, [$cc62]
    ld [$cc51], a
    call $0c74
    jp $2e28


Jump_00e_59cc:
    ld a, [de]
    sub $08
    rst $00
    call c, $f759
    ld e, c
    ld a, [hli]
    ld e, d
    ld e, d
    ld e, d
    ld l, l
    ld e, d
    sbc a
    ld e, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $b0
    ld a, [hl]
    and $1f
    ld l, $89
    ld [hl], a
    ld l, $86
    ld [hl], $10
    ld l, $a9
    ld [hl], $01
    ld a, $02
    call $2772
    jp $1dfa


    call Call_00e_439a
    jr z, jr_00e_5a10

    ld l, $8f
    ld a, [hl-]
    cp $f0
    jr c, jr_00e_5a0b

    ld a, [hl]
    sub $c0
    ld [hli], a
    ld a, [hl]
    sbc $00
    ld [hl], a

jr_00e_5a0b:
    call $1fdb
    jr jr_00e_5a57

Jump_00e_5a10:
jr_00e_5a10:
    ld l, e
    ld [hl], $0a
    ld l, $90
    ld [hl], $14
    ld l, $a4
    set 7, [hl]
    call $042f
    ld e, $86
    ld [de], a
    ld a, $07
    call $211e
    ld [hl], $b4
    jr jr_00e_5a57

    call Call_00e_5bd2
    ld a, $07
    call $211e
    ld a, [hl]
    or a
    jr nz, jr_00e_5a3f

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $08
    ret


jr_00e_5a3f:
    call Call_00e_5bb2
    call $1e52
    ld b, a
    ld e, $b0
    ld a, [de]
    add b
    and $1f
    ld e, $89
    ld [de], a
    ld a, $02
    call Call_00e_420b
    call z, $1fdb

jr_00e_5a57:
    jp $275f


    call Call_00e_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    ld l, $b5
    ldh a, [$ae]
    ld [hli], a
    ldh a, [$af]
    ld [hl], a
    ret


    ld h, d
    ld l, $b5
    call Call_00e_4439
    sub c
    add $08
    cp $11
    jr nc, jr_00e_5a92

    ldh a, [$8f]
    sub b
    add $08
    cp $11
    jr nc, jr_00e_5a92

    ld l, $8f
    ld a, [hl]
    cp $fa
    jr c, jr_00e_5a92

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $14
    jr jr_00e_5a57

jr_00e_5a92:
    ld l, $8f
    ld a, [hl]
    cp $fe
    jr nc, jr_00e_5a9a

    inc [hl]

jr_00e_5a9a:
    call Call_00e_4430
    jr jr_00e_5a57

    call Call_00e_439a
    jp z, Jump_00e_5a10

    ld l, $8f
    ld a, [hl-]
    cp $f0
    jr c, jr_00e_5ab4

    ld a, [hl]
    sub $c0
    ld [hli], a
    ld a, [hl]
    sbc $00
    ld [hl], a

jr_00e_5ab4:
    ld a, $02
    call Call_00e_420b
    call z, $1fdb
    jr jr_00e_5a57

Call_00e_5abe:
    call $042f
    and $07
    ld b, a
    add a
    add b
    ld hl, $5ae7
    rst AddAToHL
    ld e, $8b
    ldh a, [$a8]
    add [hl]
    ld [de], a
    inc hl
    ld e, $8d
    ldh a, [$aa]
    add [hl]
    ld [de], a
    inc hl
    ld e, $89
    ld a, [hl]
    ld [de], a
    ld h, d
    ld l, $a4
    set 7, [hl]
    ld l, $85
    inc [hl]
    jp $1dfa


    ld hl, sp+$10
    db $10
    ld hl, sp-$70
    db $10
    db $10
    ld hl, sp+$08
    db $10
    xor b
    jr jr_00e_5b64

    ld hl, sp+$08
    ld [hl], b
    xor b
    jr @-$76

    stop
    adc b
    sub b
    nop

Jump_00e_5aff:
    ld h, d
    ld l, $84
    ld [hl], $09
    inc l
    ld [hl], $00
    inc l
    ld [hl], $5a
    ld l, $a4
    res 7, [hl]
    jp $1e39


Call_00e_5b11:
    ld e, $8b
    ld a, [de]
    cp $b8
    ret nc

    ld e, $8d
    ld a, [de]
    cp $f0
    ret


Jump_00e_5b1d:
    ldh a, [$a8]
    add $44
    ld b, a
    ldh a, [$aa]
    add $50
    ld c, a
    push bc
    call $1e62
    pop bc
    ld h, a
    ld e, $8b
    ld a, [de]
    sub b
    jr nc, jr_00e_5b35

    cpl
    inc a

jr_00e_5b35:
    ld b, a
    cp $3e
    ld a, h
    jr nc, jr_00e_5b57

    ld e, $8d
    ld a, [de]
    sub c
    jr nc, jr_00e_5b43

    cpl
    inc a

jr_00e_5b43:
    ld c, a
    cp $3e
    ld a, h
    jr nc, jr_00e_5b57

    ld a, b
    add c
    sub $42
    cp $08
    jr c, jr_00e_5b64

    rlca
    ld a, h
    jr nc, jr_00e_5b57

    xor $10

jr_00e_5b57:
    push hl
    ld e, $89
    ld [de], a
    ld e, $90
    ld a, $0a
    ld [de], a
    call $1fdb
    pop hl

jr_00e_5b64:
    ld e, $b0
    ld a, [de]
    add h
    and $1f
    ld e, $89
    ld [de], a
    ld e, $90
    ld a, $23
    ld [de], a

Jump_00e_5b72:
    call $1fdb
    jp $275f


Call_00e_5b78:
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    add $1e
    cp $3d
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $1e
    cp $3d
    ret


Call_00e_5b8d:
    call $042f
    and $01
    inc a
    ld b, a

Call_00e_5b94:
    call $3ea7
    ret nz

    ld [hl], $3a
    inc l
    ld [hl], b
    ld l, $d7
    ld [hl], d
    dec l
    ld [hl], $80
    call $21fd
    ld a, $87
    call $0c74
    ld e, $88
    ld a, $01
    ld [de], a
    jp $2772


Call_00e_5bb2:
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    add $0c
    cp $19
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $0c
    cp $19
    ret nc

    call $1e52
    xor $10
    ld c, a
    ld b, $50
    jp Jump_00e_4138


Call_00e_5bd2:
    call Call_00e_439a
    ld a, [hl]
    and $1c
    rrca
    rrca
    ld hl, $5be3
    rst AddAToHL
    ld e, $8f
    ld a, [hl]
    ld [de], a
    ret


    ldh a, [$f1]
    ldh a, [$ef]
    xor $ed
    xor $ef
    jr z, jr_00e_5bfc

    sub $03
    ret c

    jr nz, jr_00e_5bf8

    ld bc, $0a07
    jp Jump_00e_5f7e


jr_00e_5bf8:
    call Call_00e_5fc2
    ret z

jr_00e_5bfc:
    call $604b
    call Call_00e_602e
    ld e, $84
    ld a, [de]
    rst $00
    ld a, [hli]
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    add [hl]
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    sbc b
    ld e, h
    xor c
    ld e, h
    or [hl]
    ld e, h
    push de
    ld e, h
    ldh a, [$5c]
    ei
    ld e, h
    inc c
    ld e, l
    ei
    ld e, h
    inc l
    ld e, l
    ld e, b
    ld e, l
    ld a, $76
    ld [$cc1c], a
    call $042f
    ld e, $b8
    ld [de], a
    ld h, d
    ld l, $88
    ld [hl], $ff
    ld l, $90
    ld [hl], $46
    ld l, $82
    ld a, [hl]
    or a
    jr z, jr_00e_5c6d

    call $3ea7
    ret nz

    ld [hl], $08
    ld l, $c6
    ld a, $04
    ld [hli], a
    ld [hl], a
    ld [$cca9], a
    ld hl, $d081

jr_00e_5c56:
    ld a, [hl]
    cp $7e
    jr z, jr_00e_5c5e

    inc h
    jr jr_00e_5c56

jr_00e_5c5e:
    ld e, $96
    ld l, e
    ld a, $80
    ld [de], a
    ld [hli], a
    inc e
    ld a, h
    ld [de], a
    ld [hl], d
    ld h, d
    jp Jump_00e_5dd5


Jump_00e_5c6d:
jr_00e_5c6d:
    ld l, $84
    ld [hl], $0b
    ld l, $a5
    ld [hl], $5c
    ld l, $86
    ld [hl], $3c
    ld a, $01
    ld [$cc17], a
    call $1e27
    ld a, $02
    jp $2772


    call Call_00e_449a
    jp nc, $2e28

    ld e, $87
    ld a, [de]
    dec a
    ret nz

    ld bc, $0a08
    jp $184b


    ret


    ld a, [$ccad]
    or a
    ret nz

    inc a
    ld [$cca4], a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $2d
    ret


    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $1f
    ld l, e
    inc [hl]
    jp $1e27


    call Call_00e_439a
    jr z, jr_00e_5cc9

    ld a, [hl]
    dec a
    jr nz, jr_00e_5d29

    xor a
    ld [$cca4], a
    ld bc, $0a05
    jp $184b


jr_00e_5cc9:
    ld [hl], $2d
    ld l, e
    inc [hl]
    ld a, $2d
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $10
    ld l, e
    inc [hl]
    ld l, $b7
    bit 1, [hl]
    jr z, jr_00e_5ced

    res 1, [hl]
    ld l, $86
    ld a, [hl]
    add $2c
    ld [hl], a

jr_00e_5ced:
    jp $1e39


    call Call_00e_439a
    ret nz

    ld [hl], $18
    ld l, e
    inc [hl]
    jp Jump_00e_5e45


    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $30
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    jp $1e27


    call Call_00e_439a
    jp z, Jump_00e_5f3b

    ld a, [hl]
    and $07
    jr nz, jr_00e_5d23

    ld l, $89
    ld e, $b1
    ld a, [de]
    add [hl]
    and $1f
    ld [hl], a
    call Call_00e_43d8

jr_00e_5d23:
    call Call_00e_5f49
    call $1fdb

jr_00e_5d29:
    jp $275f


    ld h, d
    ld l, $b4
    call Call_00e_4439
    sub c
    add $0c
    cp $19
    jr nc, jr_00e_5d53

    ldh a, [$8f]
    sub b
    add $07
    cp $0f
    jr nc, jr_00e_5d53

    ld l, e
    inc [hl]
    ld l, $89
    ld a, [hl]
    and $10
    swap a
    add $04
    ld l, $88
    ld [hl], a
    jp $2772


jr_00e_5d53:
    call Call_00e_4430
    jr jr_00e_5d29

    call $275f
    ld e, $a1
    ld a, [de]
    inc a
    jp z, Jump_00e_5f3b

    sub $02
    ret nz

    call Call_00e_5f54
    ret nz

    ld e, $a1
    ld a, $02
    ld [de], a
    ret


    jr z, jr_00e_5d80

    sub $03
    ret c

    jr nz, jr_00e_5d7c

    ld bc, $0a06
    jp Jump_00e_5f7e


jr_00e_5d7c:
    call Call_00e_5fc2
    ret z

jr_00e_5d80:
    call Call_00e_5d86
    jp Jump_00e_5fec


Call_00e_5d86:
    call $604b
    call Call_00e_602e
    ld e, $84
    ld a, [de]
    rst $00
    or h
    ld e, l
    sub a
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    add [hl]
    ld e, h
    sub a
    ld e, h
    sub a
    ld e, h
    sbc b
    ld e, h
    xor c
    ld e, h
    xor $5d
    push de
    ld e, h
    ld hl, sp+$5d
    ld b, $5e
    add hl, sp
    ld e, [hl]
    ld b, $5e
    inc l
    ld e, l
    ld e, b
    ld e, l
    ld a, $7e
    ld [$cc1c], a
    ld b, $3b
    call Call_00e_437c
    ret nz

    call $042f
    ld e, $b8
    ld [de], a
    ld h, d
    ld l, $88
    ld [hl], $ff
    ld l, $90
    ld [hl], $3c
    ld e, $82
    ld a, [de]
    or a
    jp z, Jump_00e_5c6d

Jump_00e_5dd5:
    ld l, $84
    ld [hl], $08
    ld l, $a9
    ld a, [hl]
    add $06
    ld [hl], a
    ld l, $b6
    ld [hl], a
    ld a, $76
    ld b, $00
    call Call_00e_4565
    ld a, $03
    jp $2772


    call Call_00e_439a
    jr nz, jr_00e_5e42

    ld [hl], $2d
    ld l, e
    inc [hl]
    ret


    call Call_00e_439a
    ret nz

    ld [hl], $30
    ld l, e
    inc [hl]
    call $5e7b
    jp $1e27


    call Call_00e_439a
    jr nz, jr_00e_5e1e

    ld [hl], $30
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $b9
    ld e, $8b
    ld a, [hli]
    ld [de], a
    ld e, $8d
    ld a, [hl]
    ld [de], a
    ret


jr_00e_5e1e:
    ld a, [hl]
    and $3c
    rrca
    rrca
    bit 1, [hl]
    jr z, jr_00e_5e29

    cpl
    inc a

jr_00e_5e29:
    ld l, $88
    bit 0, [hl]
    ld l, $b9
    ld e, $8b
    jr nz, jr_00e_5e36

    inc l
    ld e, $8d

jr_00e_5e36:
    add [hl]
    ld [de], a
    ret


    call Call_00e_439a
    jp z, Jump_00e_5f3b

    call $1fdb

jr_00e_5e42:
    jp $275f


Jump_00e_5e45:
    ld bc, $5e6b
    call Call_00e_5ea3
    jr z, jr_00e_5e64

    ldh a, [$ae]
    cp $58

jr_00e_5e51:
    ld a, $fe
    ld c, $00
    jr c, jr_00e_5e5a

    ld a, $02
    inc c

jr_00e_5e5a:
    ld e, $b1
    ld [de], a
    ld a, b
    add c
    ld hl, $5e73
    rst AddAToHL
    ld b, [hl]

jr_00e_5e64:
    ld e, $89
    ld a, b
    ld [de], a
    jp Jump_00e_43d8


    ldh [rNR41], a
    jr nz, @+$22

    jr nz, jr_00e_5e51

    ldh [$e0], a
    jr jr_00e_5e85

    nop
    jr @+$0a

    nop
    db $10
    ld [$9b01], sp
    ld e, [hl]
    call Call_00e_5ea3
    jr z, jr_00e_5e89

    ld a, b
    add a

jr_00e_5e85:
    add a
    xor $10
    ld b, a

jr_00e_5e89:
    ld e, $89
    ld a, b
    ld [de], a
    ld h, d
    ld l, $b9
    ld e, $8b
    ld a, [de]
    ld [hli], a
    ld e, $8d
    ld a, [de]
    ld [hl], a
    jp Jump_00e_43d8


    ret c

    nop
    nop
    jr z, jr_00e_5ec8

    nop
    nop
    ret c

Call_00e_5ea3:
    push bc
    ld e, $82
    ld a, [de]
    or a
    jr z, jr_00e_5f0b

    ld e, $b2
    ld a, [de]
    inc a
    and $0f
    ld [de], a
    ld hl, $5f35
    call $0205
    jr z, jr_00e_5f0b

    call $042f
    and $03
    ld b, a
    ld c, $05

jr_00e_5ec1:
    dec c
    jr z, jr_00e_5f0b

    ld a, b
    inc a
    and $03

jr_00e_5ec8:
    ld b, a
    ld hl, $5f37
    rst AddAToHL
    ld l, [hl]
    ld h, $cf
    ld a, [hl]
    cp $09
    jr nz, jr_00e_5ec1

    ld [hl], $08
    ld c, l
    ld e, $b3
    ld a, l
    ld [de], a
    and $06
    pop hl
    rst AddAToHL
    ld e, $b4
    ld a, c
    and $f0
    add $08
    ld [de], a
    ld e, $8b
    add [hl]
    ld [de], a
    ld e, $b5
    inc hl
    ld a, c
    and $0f
    swap a
    add $08
    ld [de], a
    ld e, $8d
    add [hl]
    ld [de], a
    ld h, d
    ld l, $84
    ld [hl], $0f
    ld l, $b4
    call Call_00e_4439
    call $1e6f
    ld b, a
    xor a
    ret


jr_00e_5f0b:
    call $042f
    and $06
    ld b, a
    pop hl
    push hl
    rst AddAToHL
    ldh a, [$ae]
    add [hl]
    cp $b0
    jr nc, jr_00e_5f0b

    ld e, $8b
    ld [de], a
    inc hl
    ldh a, [$af]
    ld c, a
    add [hl]
    cp $f0
    jr nc, jr_00e_5f0b

    ld e, $8d
    ld [de], a
    sub c
    jr nc, jr_00e_5f2f

    cpl
    inc a

jr_00e_5f2f:
    rlca
    jr c, jr_00e_5f0b

    pop hl
    or d
    ret


    ld l, d
    or l
    ld a, [hl-]
    ld a, d
    ld [hl], h
    inc [hl]

Call_00e_5f3b:
Jump_00e_5f3b:
    ld h, d
    ld l, $84
    ld [hl], $0b
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $18
    ret


Call_00e_5f49:
    ld e, $86
    ld a, [de]
    and $07
    ret nz

    ld b, $3c
    jp Jump_00e_437c


Call_00e_5f54:
    call $3ea7
    ret nz

    ld [hl], $06
    ld e, $b3
    ld a, [de]
    and $f0
    add $08
    ld l, $cb
    ld [hli], a
    ld a, [de]
    and $0f
    swap a
    add $08
    inc l
    ld [hl], a
    ld hl, $cca9
    ld a, [hl]
    or a
    jr z, jr_00e_5f75

    dec [hl]

jr_00e_5f75:
    ld a, [de]
    ld c, a
    ld a, $08
    call $3a52
    xor a
    ret


Jump_00e_5f7e:
    ld e, $82
    ld a, [de]
    or a
    jr z, jr_00e_5fa2

    ld e, $a4
    ld a, [de]
    or a
    jr z, jr_00e_5f95

    ld a, [$cba0]
    or a
    ret nz

    call $184b
    call $1e39

jr_00e_5f95:
    ld a, $00   ; xor a
    call $211e
    ld a, [hl]
    or a
    jp z, Jump_00e_450f

    jp $27c6


jr_00e_5fa2:
    ld e, $a4
    ld a, [de]
    or a
    jr z, jr_00e_5fb9

    xor a
    ld [de], a
    ld bc, $0a04
    ld e, $81
    ld a, [de]
    cp $76
    jr z, jr_00e_5fb6

    ld c, $02

jr_00e_5fb6:
    jp $184b


jr_00e_5fb9:
    call $24ad
    call $249f
    jp $2e28


Call_00e_5fc2:
    ld h, d
    ld l, $a9
    ld a, [hl]
    ld l, $b6
    cp [hl]
    ret z

    ld [hl], a
    ld l, $b7
    set 1, [hl]
    ld e, $84
    ld a, [de]
    cp $0f
    ccf
    ret nc

    ld e, $a1
    ld a, [de]
    cp $02
    jr z, jr_00e_5fe4

    ld l, $b3
    ld l, [hl]
    ld h, $cf
    ld [hl], $09

jr_00e_5fe4:
    call Call_00e_5f3b
    ld e, $a9
    ld a, [de]
    or a
    ret


Jump_00e_5fec:
    call $1e52
    ld b, a
    ld e, $88
    ld a, [de]
    cp $04
    jr c, jr_00e_5ffb

    sub $04
    add a
    inc a

jr_00e_5ffb:
    add a
    add a
    ld hl, $601e
    rst AddAToHL
    ld a, b
    call $0205
    ld h, d
    ld l, $b7
    ld e, $a4
    jr z, jr_00e_6015

    ld a, [de]
    and $80
    or $7e
    ld [de], a
    res 2, [hl]
    ret


jr_00e_6015:
    ld a, [de]
    and $80
    or $76
    ld [de], a
    set 2, [hl]
    ret


    rra
    nop
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    ldh a, [rSB]

Call_00e_602e:
    ld h, d
    ld l, $84
    ld a, [hl]
    cp $08
    ret c

    ld l, $b8
    dec [hl]
    ld a, [hl]
    and $18
    swap a
    rlca
    ld hl, $6047
    rst AddAToHL
    ld e, $8f
    ld a, [hl]
    ld [de], a
    ret


    rst $38
    cp $fd
    cp $1e
    add d
    ld a, [de]
    or a
    ret z

    ld h, d
    ld l, $b7
    ld a, [$cca9]
    or a
    jr z, jr_00e_605c

    res 0, [hl]
    ret


jr_00e_605c:
    bit 0, [hl]
    jr nz, jr_00e_6066

    set 0, [hl]
    ld l, $b0
    ld [hl], $18

jr_00e_6066:
    ld l, $b0
    dec [hl]
    ret nz

    ld a, [$cc34]
    or a
    ret nz

    ld a, [$cc67]
    or a
    ret nz

    ld a, $8d
    call $0c74
    ld hl, $607f
    jp $1970


    add l
    ld e, e
    nop
    ld d, a
    inc bc
    jr z, jr_00e_60c4

    sub $03
    ret c

    jp z, Jump_00e_450f

    dec a
    jp nz, Jump_00e_4033

    ld e, $b2
    ld a, [de]
    or a
    jr nz, jr_00e_60c4

    ld e, $aa
    ld a, [de]
    cp $9a
    jr z, jr_00e_60ba

    cp $9b
    jr nz, jr_00e_60c4

    ld e, $82
    ld a, [de]
    or a
    jr z, jr_00e_60c4

    ld a, $63
    call $0c74
    ld h, d
    ld l, $ab
    ld [hl], $3c
    ld l, $a9
    dec [hl]
    jr nz, jr_00e_60ba

    ld l, $a4
    res 7, [hl]

jr_00e_60ba:
    ld e, $b2
    ld a, $1e
    ld [de], a
    ld a, $83
    call $0c74

jr_00e_60c4:
    call Call_00e_6257
    call Call_00e_6273
    call Call_00e_4426
    cp $0a
    jr nc, @+$17

    rst $00
    rst $28
    ld h, b
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    inc b
    ld h, c
    dec b
    ld h, c
    jp z, $cd61

    or c
    ld h, d
    ld a, b
    rst $00
    db $d3
    ld h, c
    rra
    ld h, d
    ld bc, $010c
    call Call_00e_4553
    ret nz

    call Call_00e_4364
    ld l, $bf
    set 5, [hl]
    ld b, $00
    ld a, $77
    jp Jump_00e_4565


    ret


    inc e
    ld a, [de]
    rst $00
    db $10
    ld h, c
    dec de
    ld h, c
    adc c
    ld h, c
    sbc a
    ld h, c
    ld a, [$ccad]
    or a
    ret nz

    inc a
    ld [de], a
    ld [$cca4], a
    ret


    call Call_00e_43a3
    ret nz

    ld b, $02
    call $20b0
    ret nz

    ld e, $86
    ld a, [de]
    ld hl, $6169
    rst JumpTable
    ld a, [hli]
    ld c, [hl]
    ld b, a
    call $3ea7
    ld [hl], $3d
    inc l
    ld [hl], $03
    inc l
    inc [hl]
    ld l, $cb
    ld [hl], b
    ld l, $cd
    ld [hl], c
    call $3ea7
    ld [hl], $3e
    ld l, $c3
    inc [hl]
    ld l, $cb
    ld a, $58
    sub b
    add $58
    ld [hli], a
    inc l
    ld a, $78
    sub c
    add $78
    ld [hl], a
    ld l, $d6
    ld a, $80
    ld [hli], a
    ld [hl], d
    ld h, d
    ld l, $87
    ld [hl], $0f
    dec l
    inc [hl]
    ld a, [hl-]
    cp $10
    ret c

    inc [hl]
    ret


    jr nz, @+$7a

    jr z, @+$52

    inc a
    jr nc, @+$5a

    jr nz, jr_00e_61e2

    inc [hl]
    ld a, h
    ld e, b
    add b
    ld a, b
    ld [hl], b
    and b
    ld e, b
    cp b
    ld b, b
    and b
    jr c, jr_00e_61f7

    ld b, b
    ld h, b
    ld e, b
    ld c, b
    ld h, h
    ld e, h
    ld l, b
    ld [hl], b
    ld e, h
    add h
    call Call_00e_439a
    ret nz

    ld bc, $0502
    call $24b1
    ret nz

    ld a, h
    ld h, d
    ld l, $99
    ld [hl-], a
    ld [hl], $40
    ld l, $85
    inc [hl]
    ret


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $86
    ld [hl], $3c
    ld l, $8b
    ld [hl], $56
    ld l, $8f
    ld [hl], $fe
    call $1e30
    xor a
    ld [$cca4], a
    ld a, $2d
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    jp nz, $275f

    ld l, e
    inc [hl]
    ret


    ld a, [de]
    sub $0a
    rst $00
    rst JumpTable
    ld h, c
    ldh a, [$61]
    inc bc
    ld h, d
    dec d
    ld h, d
    ld h, d
    ld l, e
    inc [hl]

jr_00e_61e2:
    ld l, $90
    ld [hl], $55
    ld l, $b4
    ldh a, [$ae]
    ld [hli], a
    ldh a, [$af]
    ld [hl], a
    jr jr_00e_6200

    ld a, [$cc00]
    and $0f
    ld a, $ae

jr_00e_61f7:
    call z, $0c74
    call $62cc
    call nc, Call_00e_4430

jr_00e_6200:
    jp $275f


    call Call_00e_439a
    jr z, jr_00e_620d

    call Call_00e_62f3
    jr jr_00e_6200

jr_00e_620d:
    call Call_00e_62e8
    call Call_00e_6304
    jr jr_00e_6200

    call Call_00e_439a
    jr nz, jr_00e_6200

    ld l, e
    ld [hl], $0a
    jr jr_00e_6200

    ld a, [de]
    sub $0a
    rst $00
    dec hl
    ld h, d
    ldh a, [$61]
    dec [hl]
    ld h, d
    ld c, d
    ld h, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $6e
    jp Jump_00e_6326


    call Call_00e_439a
    jr z, jr_00e_623f

    call Call_00e_62f3
    jr jr_00e_6247

jr_00e_623f:
    call Call_00e_62e8
    ld b, $3e
    call Call_00e_437c

jr_00e_6247:
    jp $275f


    call Call_00e_439a
    jr nz, jr_00e_6247

    ld l, e
    ld [hl], $0b
    call Call_00e_6326
    jr jr_00e_6247

Call_00e_6257:
    ld e, $b0
    ld a, [de]
    cp $04
    ret c

    call Call_00e_439a
    jr z, jr_00e_6266

    pop hl
    jp $275f


jr_00e_6266:
    ld l, $b0
    ld [hl], $00
    ld l, $b2
    ld [hl], $5a
    ld a, $83
    jp $0c74


Call_00e_6273:
    ld h, d
    ld l, $b2
    ld a, [hl]
    or a
    ret z

    ld e, $ab
    ld a, [de]
    or a

Jump_00e_627d:
    jr z, jr_00e_6281

    pop bc
    ret


jr_00e_6281:
    dec [hl]
    jr z, jr_00e_6295

    pop bc
    ld a, [hl]
    and $03
    jr nz, jr_00e_6292

    ld l, $9b
    ld a, [hl]
    and $01
    inc a
    ld [hli], a
    ld [hl], a

jr_00e_6292:
    jp $275f


jr_00e_6295:
    ld l, $82
    ld a, [hl]
    inc a
    and $01
    ld [hl], a
    ld b, a
    ld a, $02
    sub b
    ld l, $9b
    ld [hli], a
    ld [hl], a
    ld l, $84
    ld [hl], $0a
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    ld [hl], $00
    ret


    ld h, d
    ld l, $b1
    dec [hl]
    ld a, [hl]
    and $0f
    ret nz

    ld a, [hl]
    and $30
    swap a
    ld hl, $62c8
    rst AddAToHL
    ld a, [hl]
    ld h, d
    ld l, $8f
    ld [hl], a
    ret


    rst $38
    cp $fd
    cp $62
    ld l, $b4
    call Call_00e_4439
    sub c
    add $02
    cp $05
    ret nc

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    ret nc

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $28
    ret


Call_00e_62e8:
    ld [hl], $78
    inc l
    ld [hl], $96
    ld l, e
    inc [hl]
    ld l, $b0
    inc [hl]
    ret


Call_00e_62f3:
    ld a, [hl]
    and $03
    ld hl, $6300
    rst AddAToHL
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    rst $38
    ld bc, $ff01

Call_00e_6304:
    call $1e52
    ld b, a
    call $041a
    cp $55
    ld a, b
    jr c, jr_00e_631a

    sub $02
    and $1f
    call Call_00e_631a
    ld a, b
    add $04

Call_00e_631a:
jr_00e_631a:
    push af
    ld b, $3d
    call Call_00e_437c
    pop bc
    ret nz

    ld l, $c9
    ld [hl], b
    ret


Call_00e_6326:
Jump_00e_6326:
jr_00e_6326:
    call $042f
    and $0e
    ld h, d
    ld l, $b3
    cp [hl]
    jr z, jr_00e_6326

    ld [hl], a
    ld hl, $633e
    rst AddAToHL
    ld e, $b4
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    jr nz, @+$7a

    ld b, b
    jr c, @+$7a

    ld e, b
    ld e, b
    ld a, b
    ld a, b
    sbc b
    ld b, b
    cp b
    ld l, b
    jr c, @+$6a

    cp b
    jr z, jr_00e_637d

    sub $03
    ret c

    dec a
    jr z, jr_00e_636e

    dec a
    jr z, jr_00e_637d

    ld e, $82
    ld a, [de]
    sub $02
    jp z, Jump_00e_450f

    dec a
    jp nz, $2e28

    call Call_00e_448c
    call Call_00e_4493
    jp $27c2


jr_00e_636e:
    ld e, $82
    ld a, [de]
    sub $03
    jr nz, jr_00e_637d

    ld a, $2b
    call $2122
    ld e, l
    ld a, [de]
    ld [hl], a

jr_00e_637d:
    call Call_00e_4426
    jr nc, jr_00e_6393

    rst $00
    sbc h
    ld h, e
    xor a
    ld h, e
    sbc $63
    sbc $63
    sbc $63
    sbc $63
    sbc $63
    sbc $63

jr_00e_6393:
    dec b
    ld a, b
    rst $00
    rst JumpTable
    ld h, e
    ld b, l
    ld h, l
    add b
    ld h, l
    ld c, $20
    call Call_00e_4465
    ld a, b
    or a
    jp nz, Jump_00e_4364

    ld l, e
    inc [hl]
    ld a, $78
    ld b, $80
    jp Jump_00e_4565


    ld a, [$ccad]
    or a
    ret nz

    ld b, $03
    call $20b5
    ret nz

    ld b, $78
    call Call_00e_436d
    ld c, h
    call Call_00e_436d
    inc [hl]
    call Call_00e_65da
    push hl
    call Call_00e_436d
    ld [hl], $03
    call Call_00e_65da
    ld e, h
    pop hl
    ld a, h
    ld h, c
    ld l, $b4
    ld [hli], a
    ld [hl], e
    call $21fd
    jp $2e28


    ret


    ld a, [de]
    sub $08
    rst $00
    di
    ld h, e
    ld [de], a
    ld h, h
    ld [hl], $64
    ld h, c
    ld h, h
    ld [hl], c
    ld h, h
    sbc [hl]
    ld h, h
    cp a
    ld h, h
    dec d
    ld h, l
    ld bc, $020c
    call Call_00e_4553
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a5
    ld [hl], $5d
    ld l, $b2
    ld a, $50
    ld [hli], a
    ld [hl], $c0
    ld l, $b1
    ld [hl], $01
    ld l, $86
    ld [hl], $5a
    ret


    ld e, $8f
    ld a, [de]
    cp $f4
    jr nc, jr_00e_642d

    and $f0
    swap a
    ld hl, $6703
    rst AddAToHL
    dec e
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    jp Jump_00e_66ab


jr_00e_642d:
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $b1
    ld [hl], $02
    ret


    call Call_00e_439a
    jp nz, Jump_00e_66ab

    ld [hl], $3c
    ld l, $8f
    ld [hl], $00
    ld l, e
    inc [hl]
    ld l, $b1
    ld [hl], $04
    ld l, $b7
    bit 0, [hl]
    jr nz, jr_00e_6457

    inc [hl]
    ld a, $2e
    ld [$cc51], a
    call $0c74

jr_00e_6457:
    ld a, $20

Jump_00e_6459:
    call $24a7
    ld a, $81
    jp $0c74


    call Call_00e_439a
    ret nz

    ld [hl], $96
    inc l
    ld [hl], $04
    ld l, $b6
    ld [hl], $18
    jp Jump_00e_65e5


    call Call_00e_66b9
    call Call_00e_6694
    call Call_00e_439a
    jr nz, jr_00e_649b

    inc l
    ld a, [hl-]
    ld bc, $66e8
    call $006d
    ld a, [bc]
    ld [hli], a
    dec [hl]
    jr nz, jr_00e_6495

    ld l, $84
    inc [hl]
    ld l, $b1
    ld [hl], $08
    ld l, $90
    ld [hl], $14
    ret


jr_00e_6495:
    call Call_00e_6640
    call Call_00e_6685

jr_00e_649b:
    jp $1fdb


    call Call_00e_66b5
    call Call_00e_6694
    call Call_00e_6666
    jr c, jr_00e_64b2

    call Call_00e_439a
    call z, Call_00e_6685
    jp Jump_00e_4430


jr_00e_64b2:
    ld l, $86
    ld [hl], $1e
    ld l, $84
    ld [hl], $0b
    ld l, $b1
    ld [hl], $04
    ret


    call Call_00e_43a3
    ret nz

    ld e, $8d
    ld a, [de]
    cp $1c
    jr c, jr_00e_64ed

    ld a, [$cc00]
    and $1f
    ld a, $6b
    call z, $0c74
    ld a, [$cc00]
    and $07
    jr nz, jr_00e_64ea

    call $3ac6
    jr nz, jr_00e_64ea

    ld [hl], $0f
    inc l
    inc [hl]
    ld bc, $1010
    call $2215

jr_00e_64ea:
    jp $1fdb


jr_00e_64ed:
    call Call_00e_439a
    dec [hl]
    jr z, jr_00e_64fc

    ld a, [hl]
    cp $94
    ret nz

    ld a, $46
    jp Jump_00e_6459


jr_00e_64fc:
    ld [hl], $f0
    inc l
    ld [hl], $3c
    ld l, $84
    inc [hl]
    ld l, $8f
    ld [hl], $f8
    ld l, $b1
    ld [hl], $01
    ld l, $89
    ld [hl], $08
    ld l, $90
    ld [hl], $1e
    ret


    call Call_00e_66ab
    call Call_00e_43a3
    jr z, jr_00e_6528

    ld l, $8f
    ld a, [hl]
    cp $e8
    ret c

    ld b, $80
    jp Jump_00e_667a


jr_00e_6528:
    call Call_00e_439a
    jr z, jr_00e_653c

    ld a, [hl]
    cp $d2
    ld b, $c0
    call nc, Call_00e_667a
    call Call_00e_6666
    ret c

    jp Jump_00e_4430


jr_00e_653c:
    ld l, $84
    ld [hl], $09
    ld l, $86
    ld [hl], $1e
    ret


    ld a, [de]
    sub $08
    jr z, jr_00e_656c

    ld a, $31
    call $211e
    ld b, [hl]
    ld a, d
    ld d, h
    ld h, a
    call $21fd
    ld d, h
    ld a, b
    call $01ea
    jr nc, jr_00e_65c1

    ld hl, $66fd
    rst AddAToHL
    ld e, $b0
    ld a, [de]
    cp [hl]
    jr z, jr_00e_65c1

    ld a, [hl]
    ld [de], a
    jp $2772


jr_00e_656c:
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $97
    ld h, [hl]
    ld l, $b5
    ld e, $99
    ld a, [hl]
    ld [de], a
    jp $1e1e


    ld a, [de]
    sub $08
    jr z, jr_00e_65c4

    ld a, $1a
    call $2122
    ld e, l
    ld a, [hl]
    and $80
    ld b, a
    ld a, [de]
    and $7f
    or b
    ld [de], a
    call Call_00e_66c6
    ld a, $0b
    call $211e
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld l, $8f
    ld e, l
    ld a, [hl]
    sub $07
    ld [de], a
    ld l, $b4
    ld h, [hl]
    ld l, $a1
    ld a, [hl]
    cp $09
    jr c, jr_00e_65b3

    ld a, $05

jr_00e_65b3:
    ld hl, $6713
    rst JumpTable
    ld e, $8b
    ld a, [hli]
    add b
    ld [de], a
    ld e, $8d
    ld a, [hl]
    add c
    ld [de], a

jr_00e_65c1:
    jp $275f


jr_00e_65c4:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a6
    ld [hl], $06
    inc l
    ld [hl], $03
    ld l, $97
    ld h, [hl]
    ld l, $b4
    ld e, $99
    ld a, [hl]
    ld [de], a
    jp $1e1e


Call_00e_65da:
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], c
    inc l
    ld [hl], a
    jp $21fd


Jump_00e_65e5:
    ld e, $8d
    ld a, [de]
    ld b, a
    ldh a, [$af]
    cp b
    ld a, $0c
    jr nc, jr_00e_660a

    call $042f
    and $07
    ld c, a
    ldh a, [$af]
    rlca
    rlca
    and $03
    ld hl, $66ed
    rst AddAToHL
    ld a, c
    call $0205
    ld a, $0c
    jr z, jr_00e_660a

    ld a, $0e

jr_00e_660a:
    ld e, $84
    ld [de], a
    cp $0c
    jr z, jr_00e_6637

    call Call_00e_6651
    ld e, $87
    ld a, $1e
    ld [de], a
    ld a, $20
    ld e, $46

jr_00e_661d:
    ld h, d
    ld l, $b1
    ld [hl], a
    ld l, $90
    ld [hl], e
    ld e, $b1
    ld a, [de]
    call $01ea
    ret nc

    ld hl, $66f1
    rst JumpTable
    ld e, $a6
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


jr_00e_6637:
    call Call_00e_6640
    ld a, $04
    ld e, $0a
    jr jr_00e_661d

Call_00e_6640:
    call $042f
    and $07
    cp $07
    jr nz, jr_00e_664b

    ld a, $03

jr_00e_664b:
    add $15
    ld e, $89
    ld [de], a
    ret


Call_00e_6651:
    ld b, $02
    ldh a, [$ae]
    cp $48
    jr c, jr_00e_665f

    dec b
    cp $68
    jr c, jr_00e_665f

    dec b

jr_00e_665f:
    ld a, $17
    add b
    ld e, $89
    ld [de], a
    ret


Call_00e_6666:
    ld h, d
    ld l, $b2
    call Call_00e_4439
    sub c
    add $02
    cp $05
    ret nc

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    ret


Call_00e_667a:
Jump_00e_667a:
    ld e, $8e
    ld a, [de]
    sub b
    ld [de], a
    inc e
    ld a, [de]
    sbc $00
    ld [de], a
    ret


Call_00e_6685:
    ld e, $b1
    ld a, $10
    ld [de], a
    ld a, $7f
    call $0c74
    ld b, $40
    jp Jump_00e_437c


Call_00e_6694:
    ld e, $b4
    ld a, [de]
    ld h, a
    ld l, $a1
    ld a, [hl]
    inc a
    ret nz

    ld e, $84
    ld a, [de]
    cp $0c
    ld a, $04
    jr z, jr_00e_66a7

    add a

jr_00e_66a7:
    ld e, $b1
    ld [de], a
    ret


Call_00e_66ab:
Jump_00e_66ab:
    ld a, [$cc00]
    and $1f
    ret nz

    ld a, $7c
    jr jr_00e_66c3

Call_00e_66b5:
    ld a, $12
    jr jr_00e_66bb

Call_00e_66b9:
    ld a, $18

jr_00e_66bb:
    ld h, d
    ld l, $b6
    dec [hl]
    ret nz

    ld [hl], a
    ld a, $82

jr_00e_66c3:
    jp $0c74


Call_00e_66c6:
    ld a, $34
    call $211e
    ld h, [hl]
    ld l, $a1
    ld a, [hl]
    inc a
    ld hl, $66de
    rst AddAToHL
    ld a, [hl]
    ld h, d
    ld l, $b0
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


    ld b, $05
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $07
    ld [$6400], sp
    inc a
    or h

jr_00e_66ec:
    or h
    inc bc
    ld sp, $3313
    ld d, $08
    ld d, $08
    ld a, [bc]
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    dec c
    inc c
    inc d
    nop
    nop
    ld bc, $0302
    inc b
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ld h, b
    jr nc, jr_00e_66ec

    db $f4
    rst AddAToHL
    db $f4
    add sp, -$0e
    rst $20
    ld a, [c]
    add sp, -$0e
    add sp, -$08
    push hl
    db $f4
    add sp, -$0e
    rrca
    add sp, $28
    ld b, $d6
    inc bc
    ret c

    jp z, Jump_00e_450f

    ld e, $84
    ld a, [de]
    rst $00
    ld c, l
    ld h, a
    db $fd
    ld h, a
    ld l, c
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld h, a
    cp $67
    ld c, $68
    ld c, a
    ld l, b
    ld a, e
    ld l, b
    sbc b
    ld l, b
    rst $08
    ld l, b
    ld bc, $0208
    call Call_00e_4553
    ret nz

    ld a, $79
    ld b, $81
    call Call_00e_4565
    ld e, $b3
    ld a, $04
    ld [de], a
    call $2772
    call Call_00e_4364
    jp $1e27


    inc e
    ld a, [de]
    rst $00
    ld [hl], h
    ld h, a
    sub e
    ld h, a
    cp c
    ld h, a
    ret nc

    ld h, a
    ld h, d
    ld l, e
    inc [hl]
    ld a, $20
    ld [$cc76], a
    ld l, $b1
    ld a, [$d008]
    add a
    add a
    ld [hl], a
    ld l, $a4
    res 7, [hl]
    ld l, $87
    ld [hl], $01
    ld l, $b0
    ld [hl], $ff
    jp $1e1e


    call Call_00e_6a54
    jr z, jr_00e_67a4

    ld a, [$cc00]
    and $03
    ret z

    ld hl, $cc7c
    set 5, [hl]
    ret


jr_00e_67a4:
    call $2b8a
    ld h, d
    ld l, $85
    ld [hl], $03
    inc l
    ld [hl], $3c
    ld l, $a4
    set 7, [hl]
    ld l, $88
    ld a, [hl]
    jp $2772


    ld h, d
    ld l, $a4
    bit 7, [hl]
    jr nz, jr_00e_67ca

    set 7, [hl]
    ld e, $88
    ld a, [de]
    add $02
    call $2772

jr_00e_67ca:
    call Call_00e_6a30
    ret nz

    jr jr_00e_67dc

    ld c, $20
    call $1f04
    ret nz

    call Call_00e_6a30
    jp nz, Jump_00e_68eb

jr_00e_67dc:
    ld h, d
    ld l, $b3
    dec [hl]
    call z, Call_00e_447d
    ld l, $84
    ld [hl], $0c
    ld l, $87
    ld [hl], $04
    dec l
    ld [hl], $1e
    ld l, $89
    bit 7, [hl]
    jr z, jr_00e_67fa

    dec l
    ld a, [hli]
    add a
    xor $10
    ld [hl], a

jr_00e_67fa:
    jp $1e27


    ret


    ld a, [$ccad]
    or a
    ret nz

    ld a, $09
    ld [de], a
    ld a, $2e
    ld [$cc51], a
    call $0c74
    call Call_00e_68ff
    ret nc

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $0a
    call $042f
    and $07
    ld hl, $6847
    rst AddAToHL
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld e, $89
    ld a, [de]
    rrca
    dec e
    ld [de], a
    call $2772
    ld e, $89
    ld a, [de]
    and $08
    rrca
    rrca
    ld hl, $6843
    rst AddAToHL
    ld e, $a6
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    inc c
    ld [$1008], sp
    and b
    and b
    ld a, b
    and b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    call Call_00e_6933
    call Call_00e_439a
    jr nz, jr_00e_6860

    call Call_00e_6948
    jp c, Jump_00e_6a02

    jp Jump_00e_68eb


jr_00e_6860:
    call Call_00e_43a3
    jr nz, jr_00e_6875

    call Call_00e_6909
    jp nc, Jump_00e_68eb

    call $1fdb
    ld e, $90
    ld a, [de]
    cp $0a
    jr z, jr_00e_6878

jr_00e_6875:
    call $275f

jr_00e_6878:
    jp $275f


    ld e, $a1
    ld a, [de]
    dec a
    jp z, Jump_00e_697e

    dec a
    jr nz, jr_00e_6892

    ld [de], a
    ld b, $41
    call Call_00e_437c
    ld a, $bb
    call $0c74
    jr jr_00e_6878

jr_00e_6892:
    add $03
    jr nz, jr_00e_6878

    jr jr_00e_68eb

    ld h, d
    ld l, $ab
    ld a, [hl]
    or a
    ret nz

    call Call_00e_43a3
    ret nz

    ld l, $86
    ld a, [hl]
    cp $1e
    jr nz, jr_00e_68b8

    ld l, $90
    ld [hl], $32
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl-], a
    rrca
    ld [hl], a
    call $2772

jr_00e_68b8:
    call Call_00e_6933
    call Call_00e_439a
    jr nz, jr_00e_68ca

    call Call_00e_6a40
    jr nz, jr_00e_68eb

    ld e, $86
    ld a, $0a
    ld [de], a

jr_00e_68ca:
    call $1fdb
    jr jr_00e_6875

    call $2b75
    call $22c9
    call Call_00e_43a3
    ret nz

    call Call_00e_695b
    jr z, jr_00e_68eb

    ld l, $88

Call_00e_68e0:
    ld e, $b0
    ld a, [de]
    and $01
    add $02
    add [hl]
    jp $2772


Jump_00e_68eb:
jr_00e_68eb:
    ld h, d
    ld l, $84
    ld [hl], $09
    ld l, $a4
    set 7, [hl]
    ld l, $86
    xor a
    ld [hli], a
    ld [hl], a
    ld l, $88
    ld a, [hl]
    jp $2772


Call_00e_68ff:
    call Call_00e_43b4
    call Call_00e_6909
    ret c

    call Call_00e_43c6

Call_00e_6909:
    ld h, d
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld e, $89
    ld a, [de]
    rrca
    rrca
    ld hl, $692b
    rst AddAToHL
    ld a, [hli]
    add b
    ld b, a
    ld a, [hl]
    add c
    ld c, a
    call $1435
    cp $a4
    scf
    ret z

    sub $02
    cp $03
    ret


    di
    nop
    inc b
    ld de, $000d
    inc b
    rst $28

Call_00e_6933:
    ld e, $90
    ld a, [de]
    cp $0a
    ld b, $1f
    jr z, jr_00e_693e

    ld b, $0f

jr_00e_693e:
    ld a, [$cc00]
    and b
    ret nz

    ld a, $85
    jp $0c74


Call_00e_6948:
    ld c, $0c
    call $1fac
    ret nc

    call $1e52
    ld b, a
    ld e, $89
    ld a, [de]
    sub b
    add $04
    cp $09
    ret


Call_00e_695b:
    ld e, $b0
    ld a, [de]
    inc a
    ld [de], a
    cp $11
    ret z

    ld l, $87
    cp $07
    jr c, jr_00e_696d

    ld [hl], $08
    or d
    ret


jr_00e_696d:
    ld bc, $6977
    call $006d
    ld a, [bc]
    ld [hl], a
    or d
    ret


    or h
    inc d
    inc d
    db $10
    db $10
    ld a, [bc]
    ld a, [bc]

Jump_00e_697e:
    ld c, $03
    call $2274
    jr nz, jr_00e_6996

    call Call_00e_69b9
    jr z, jr_00e_6999

    ld c, $03
    call $227b
    jr nz, jr_00e_6996

    call Call_00e_69b9
    jr z, jr_00e_6999

jr_00e_6996:
    jp $275f


jr_00e_6999:
    ld l, $2f
    set 5, [hl]
    ld h, d
    ld l, $b0
    ld [hl], $00
    ld l, $a4
    res 7, [hl]
    ld l, $84
    ld [hl], $0d
    ld l, $88
    ld a, [hl-]
    ld [hl], $78
    add $02
    call $2772
    ld a, $94
    jp $0c74


Call_00e_69b9:
    ld l, $2f
    ld a, [hl]
    bit 6, a
    jr z, jr_00e_69f8

    and $b0
    jr nz, jr_00e_69f8

    ld l, $05
    ld a, [hl]
    cp $02
    jr c, jr_00e_69f8

    push hl
    ld e, $89
    ld a, [de]
    rrca
    rrca
    ld hl, $69fa
    rst AddAToHL
    ld a, [hli]
    ld c, [hl]
    ld h, d
    ld l, $8b
    add [hl]
    ld b, a
    ld l, $8d
    ld a, [hl]
    add c
    ld c, a
    pop hl
    ld l, $0b
    ld a, [hl]
    sub b
    add $0c
    cp $19
    jr nc, jr_00e_69f8

    ld l, $0d
    ld a, [hl]
    sub c
    add $08
    cp $11
    jr nc, jr_00e_69f8

    xor a
    ret


jr_00e_69f8:
    or d
    ret


    ld a, [$0000]
    inc c
    inc c
    nop
    nop
    db $f4

Jump_00e_6a02:
    ld e, $b2
    ld a, [de]
    inc a
    and $0f
    ld [de], a
    ld hl, $6a2e
    call $0205
    ld h, d
    jr z, jr_00e_6a22

    ld l, $84
    ld [hl], $0b
    ld l, $88
    ld a, [hl]
    inc a
    call $2772
    ld a, $7f
    jp $0c74


jr_00e_6a22:
    ld l, $90
    ld [hl], $32
    ld l, $87
    ld [hl], $2d
    dec l
    ld [hl], $80
    ret


    sub $68

Call_00e_6a30:
    call Call_00e_6a40
    ret nz

    ld e, $ab
    ld a, $30
    ld [de], a
    ld a, $63
    call $0c74
    xor a
    ret


Call_00e_6a40:
    ld h, d
    ld l, $8f
    bit 7, [hl]
    ret nz

    ld l, $8b
    ld a, [hli]
    add $05
    ld b, a
    inc l
    ld c, [hl]
    call $1435
    cp $60
    ret


Call_00e_6a54:
    ld h, d
    ld l, $87
    dec [hl]
    jr nz, jr_00e_6a5e

    call Call_00e_695b
    ret z

jr_00e_6a5e:
    ld l, $b1
    ld a, [$d008]
    add a
    add a
    ld b, a
    sub [hl]
    ld [hl], b
    ld l, $88
    add [hl]
    and $0c
    ld [hl], a
    call Call_00e_68e0
    or d
    ret


    jr z, jr_00e_6a7a

    sub $03
    ret c

    jr z, jr_00e_6a9e

jr_00e_6a7a:
    ld e, $84
    ld a, [de]
    rst $00
    xor [hl]
    ld l, d
    call nz, $c46a
    ld l, d
    call nz, $c46a
    ld l, d
    call nz, $c46a
    ld l, d
    call nz, $c56a
    ld l, d
    ldh a, [rOCPS]
    db $fd
    ld l, d
    ld [de], a
    ld l, e
    ld e, [hl]
    ld l, e
    ld l, a
    ld l, e
    add h
    ld l, e
    and l
    ld l, e

jr_00e_6a9e:
    call $1956
    set 7, [hl]
    ld a, [$cc59]
    ld h, a
    ld l, $43
    set 7, [hl]
    jp Jump_00e_450f


    ld a, $7a
    ld b, $82
    call Call_00e_4565
    ld bc, $0108
    call Call_00e_4553
    ret nz

    call Call_00e_4364
    ld c, $10
    jp Jump_00e_4465


    ret


    call $1e1e
    ld a, [$cc00]
    and $1f
    ld a, $7c
    call z, $0c74
    ld c, $04
    call $1f04
    ld l, $8f
    ld a, [hl]
    cp $fe
    jr c, jr_00e_6b5b

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $3c
    call Call_00e_6c2e
    ld a, $2e
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    jr nz, jr_00e_6b5b

    inc l
    ld [hl], $0a
    ld l, e
    inc [hl]
    call Call_00e_6bd8
    call Call_00e_6c1a
    jr nc, jr_00e_6b6a

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $0e
    ld l, $b7
    ld [hl], $50
    call Call_00e_6cc3
    jr jr_00e_6b12

jr_00e_6b12:
    call Call_00e_6cb8
    jr nz, jr_00e_6b22

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $00
    call Call_00e_6c5a
    jr jr_00e_6b5b

jr_00e_6b22:
    ld h, d
    ld l, $b7
    dec [hl]
    call z, Call_00e_6bb7
    call Call_00e_43a3
    jr nz, jr_00e_6b3a

    ld [hl], $0a
    ld l, $90
    ld a, [hl]
    add $0a
    cp $79
    jr nc, jr_00e_6b3a

    ld [hl], a

jr_00e_6b3a:
    call Call_00e_439a
    jr nz, jr_00e_6b58

    ld l, $b0
    ld e, $89
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    call Call_00e_6c7e
    call Call_00e_6c8e
    jr nz, jr_00e_6b58

    ld e, $b1
    ld a, $0e
    ld [de], a
    call Call_00e_6c8e

jr_00e_6b58:
    call $1fdb

jr_00e_6b5b:
    jp $275f


    call Call_00e_6c1a
    jr nc, jr_00e_6b6a

    ld l, $84
    inc [hl]
    xor a
    jp $2772


jr_00e_6b6a:
    call Call_00e_6c70
    jr jr_00e_6b58

    ld h, d
    ld l, e
    inc [hl]
    ld bc, $0840
    call $434f
    ld e, $b6
    ld a, b
    ld [de], a
    ld e, $86
    ld a, $78
    add c
    ld [de], a
    jr jr_00e_6b5b

    call Call_00e_439a
    jr z, jr_00e_6b8e

    call Call_00e_6be4
    jr jr_00e_6b5b

jr_00e_6b8e:
    inc l
    ld [hl], $1e
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $fe
    ld l, $9c
    ld a, $06
    ld [hl-], a
    ld [hl], a
    call Call_00e_6bbe
    ld a, $08
    jp $2772


    call Call_00e_43a3
    jr nz, jr_00e_6b5b

    ld l, e
    ld [hl], $0a
    ld l, $87
    ld [hl], $0a
    dec l
    ld [hl], $00
    jp Jump_00e_6c2e


Call_00e_6bb7:
    ld [hl], $50
    ld b, $31
    jp Jump_00e_437c


Call_00e_6bbe:
    ld e, $b6
    ld a, [de]
    or a
    jr nz, jr_00e_6bd8

    ld b, $42
    call Call_00e_437c
    ret nz

    ld l, $c2

Call_00e_6bcc:
    ld b, $80
    ld e, $a9
    ld a, [de]
    cp $10
    jr nc, jr_00e_6bd6

    inc b

jr_00e_6bd6:
    ld [hl], b
    ret


Call_00e_6bd8:
jr_00e_6bd8:
    ld b, $47
    call Call_00e_436d
    ret nz

    call Call_00e_6bcc
    jp $21fd


Call_00e_6be4:
    ld a, [hl]
    cp $5a
    ret nc

    and $0e
    rrca
    ld bc, $6c0e
    call $006d
    ld l, $8f
    ld a, [bc]
    ld [hl], a
    ld l, $b6
    ld b, [hl]
    srl b
    srl b
    ld l, $86
    ld a, [hl]
    and $01
    add b
    ld bc, $6c16
    call $006d
    ld l, $9c
    ld a, [bc]
    ld [hl-], a
    ld [hl], a
    ret


    rst $38
    cp $fd
    db $fc
    ei
    db $fc
    db $fd
    cp $06
    inc b
    ld b, $05

Call_00e_6c1a:
    ld h, d
    ld l, $b2
    call Call_00e_4439
    sub c
    add $04
    cp $09
    ret nc

    ldh a, [$8f]
    sub b
    add $04
    cp $09
    ret


Call_00e_6c2e:
Jump_00e_6c2e:
    call $042f
    and $01
    jr nz, jr_00e_6c36

    dec a

jr_00e_6c36:
    ld h, d
    ld l, $b0
    ld [hl], a
    ld a, $32
    ld b, $ba
    bit 7, [hl]
    jr z, jr_00e_6c44

    ld b, $36

jr_00e_6c44:
    ld l, $b2
    ld [hli], a
    ld [hl], b
    ld l, $89
    ld [hl], $00
    ld l, $90
    ld [hl], $28
    ld l, $b1
    ld [hl], $00
    ld l, $b5
    ld [hl], $06
    jr jr_00e_6c7e

Call_00e_6c5a:
    call $042f
    rrca
    ld a, $50
    ld b, $68
    jr c, jr_00e_6c66

    ld b, $88

jr_00e_6c66:
    ld h, d
    ld l, $b2
    ld [hli], a
    ld [hl], b
    ld l, $90
    ld [hl], $28
    ret


Call_00e_6c70:
    ld h, d
    ld l, $b5
    dec [hl]
    ret nz

    ld [hl], $06
    call $1e6f
    ld c, a
    call $1f92

Call_00e_6c7e:
jr_00e_6c7e:
    ld h, d
    ld l, $89
    ld a, [hl-]
    add $02
    and $1c
    rrca
    rrca
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00e_6c8e:
    ld h, d
    ld l, $b1
    ld a, [hl]
    inc [hl]
    ld b, a
    srl a
    ld hl, $6ca8
    rst AddAToHL
    ld a, [hl]
    rrc b
    jr c, jr_00e_6ca1

    swap a

jr_00e_6ca1:
    and $0f
    ret z

    ld e, $86
    ld [de], a
    ret


    inc sp
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, a
    ld d, l
    ld d, h
    ld [hl-], a
    ld [hl], $32
    inc [hl]
    ld d, l
    adc a
    halt

Call_00e_6cb8:
    ld a, [$cc00]
    and $03
    ret nz

    ld h, d
    ld l, $b4
    dec [hl]
    ret


Call_00e_6cc3:
    call $042f
    and $03
    ld hl, $6cdf
    rst AddAToHL
    ld e, $b4
    ld a, [hl]
    ld [de], a
    ld e, $b0
    ld a, [de]
    dec a
    ld a, $0c
    jr z, jr_00e_6cda

    ld a, $14

jr_00e_6cda:
    ld e, $89
    ld [de], a
    jr jr_00e_6c7e

    dec [hl]
    ld e, e
    ld e, e
    add d
    jr z, jr_00e_6d3e

    sub $03
    ret c

    jr nz, jr_00e_6d0d

    ld e, $82
    ld a, [de]
    dec a
    jp z, Jump_00e_713e

    ld e, $a1
    ld a, [de]
    cp $80
    jp nz, Jump_00e_7168

    ld a, $29
    call $211e
    ld a, [hl]
    or a
    jr z, jr_00e_6d0a

    ld [hl], $0a
    ld l, $84
    inc [hl]
    inc l
    ld [hl], $00

jr_00e_6d0a:
    jp $27ca


jr_00e_6d0d:
    ld e, $82
    ld a, [de]
    cp $01
    jr nz, jr_00e_6d25

    ld a, $01
    call $2122
    ld a, [hl]
    cp $7b
    jr nz, jr_00e_6d3e

    ld l, $ab
    ld e, l
    ld a, [de]
    ld [hl], a
    jr jr_00e_6d3e

jr_00e_6d25:
    cp $03
    jr nz, jr_00e_6d3e

    ld e, $aa
    ld a, [de]
    res 7, a
    cp $04
    jr nc, jr_00e_6d3e

    ld e, $a5
    ld a, [de]
    cp $60
    jr nz, jr_00e_6d3e

    ld e, $b0
    ld a, $01
    ld [de], a

jr_00e_6d3e:
    call Call_00e_4426
    jr nc, jr_00e_6d54

    rst $00
    ld e, l
    ld l, l
    ld l, c
    ld l, l
    sbc h
    ld l, l
    sbc h
    ld l, l
    sbc h
    ld l, l
    sbc h
    ld l, l
    sbc h
    ld l, l
    sbc h
    ld l, l

jr_00e_6d54:
    dec b
    ld a, b
    rst $00
    sbc l
    ld l, l
    ld h, h
    ld l, a
    sub c
    ld l, a
    ld a, b
    or a
    jp nz, Jump_00e_4364

    inc a
    ld [de], a
    ld a, $7b
    call Call_00e_4565
    ld b, $03
    call $20b5
    ret nz

    ld b, $7b
    call Call_00e_436d
    call $21fd
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    ld c, h
    ld e, $02
    call Call_00e_6d91
    ld e, $03
    call Call_00e_6d91
    ld a, h
    ld h, c
    ld l, $99
    ld [hl-], a
    ld [hl], $80
    jp $2e28


Call_00e_6d91:
    call Call_00e_436d
    ld [hl], e
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], c
    ret


    ret


    ld a, [de]
    sub $08
    rst $00
    xor l
    ld l, l
    ret


    ld l, l
    inc b
    ld l, [hl]
    jr nc, jr_00e_6e17

    inc a
    ld l, [hl]
    ld de, $016f
    ld [$cd02], sp
    ld d, e
    ld b, l
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a5
    ld [hl], $5e
    ld l, $86
    ld [hl], $1e
    ld l, $b1
    ld [hl], $02
    ld c, $08
    jp Jump_00e_4465


    call Call_00e_439a
    jr nz, jr_00e_6de9

    ld [hl], $1e
    ld c, $28
    call $1f60
    jr nc, jr_00e_6de9

    ld l, $84
    inc [hl]
    ld a, $1a
    call $2122
    set 7, [hl]
    call $1e1e
    ld c, $08
    call Call_00e_4465

jr_00e_6de9:
    call Call_00e_43b4
    call Call_00e_70c7
    call $1fdb
    ld e, $8d
    ld a, [de]
    cp $20
    jr nc, jr_00e_6dfd

    ld a, $20
    ld [de], a
    ret


jr_00e_6dfd:
    cp $d0
    ret c

    ld a, $d0
    ld [de], a
    ret


    ld c, $10
    call $1f04
    jr z, jr_00e_6e14

    ld a, [de]
    cp $f9
    ret c

    ld a, $02
    jp Jump_00e_6eb7


jr_00e_6e14:
    ld l, $84
    inc [hl]

jr_00e_6e17:
    ld l, $86
    ld [hl], $3c
    ld a, $2e
    ld [$cc51], a
    call $0c74
    ld a, $81
    call $0c74
    ld a, $28
    call $24a7
    jp $1e30


    call Call_00e_439a
    ret nz

    inc [hl]
    ld l, e
    inc [hl]
    ld l, $b0
    ld [hl], $2d
    ret


    call Call_00e_718f
    ld e, $85
    ld a, [de]
    rst $00
    ld c, l
    ld l, [hl]
    ld e, a
    ld l, [hl]
    cp l
    ld l, [hl]
    push hl
    ld l, [hl]
    db $fc
    ld l, [hl]
    call Call_00e_439a
    ret nz

    ld l, e
    inc [hl]
    call Call_00e_71db
    call Call_00e_7211
    call Call_00e_722c
    jp Jump_00e_70c7


    call $275f
    call Call_00e_43a3
    ld h, d
    ld l, $8b
    ld a, [$d00b]
    sub [hl]
    cp $28
    jr nc, jr_00e_6e82

    ld l, $8d
    ld a, [$d00d]
    sub [hl]
    add $18
    cp $25
    jr nc, jr_00e_6e82

    ld l, $87
    ld a, [hl]
    or a
    jr z, jr_00e_6e9a

Jump_00e_6e82:
jr_00e_6e82:
    call Call_00e_70d4
    call Call_00e_439a
    ret nz

    ld l, $85
    dec [hl]
    call $042f
    and $07
    ld hl, $72a5
    rst AddAToHL
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


jr_00e_6e9a:
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $1f
    ld l, $90
    ld [hl], $78
    ld a, $29
    call $2122
    ld a, [hl]
    or a
    jr z, jr_00e_6eb5

    ld l, $84
    ld [hl], $0c
    ld l, $a4
    set 7, [hl]

jr_00e_6eb5:
    ld a, $09

Jump_00e_6eb7:
jr_00e_6eb7:
    ld e, $88
    ld [de], a
    jp $2772


    call $275f
    ld e, $a1
    ld a, [de]
    inc a
    jr z, jr_00e_6ecd

    res 7, a
    dec a
    ret z

    jp Jump_00e_7240


jr_00e_6ecd:
    ld a, [$d004]
    cp $0d
    jr z, jr_00e_6edc

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $14
    ret


jr_00e_6edc:
    ld e, $85
    ld a, $04
    ld [de], a
    ld a, $0a
    jr jr_00e_6eb7

    ld a, [$d004]
    cp $0d
    jr z, jr_00e_6edc

    call Call_00e_439a
    ret nz

    inc [hl]
    inc l
    ld [hl], $28
    ld l, e
    ld [hl], $00
    ld l, $b1
    ld [hl], $02
    ret


    call $275f
    ld h, d
    ld l, $a1
    bit 7, [hl]
    ret z

    ld l, $85
    ld [hl], $00
    inc l
    ld [hl], $3c
    ld l, $b1
    ld [hl], $02
    ret


    call Call_00e_718f
    ld e, $85
    ld a, [de]
    rst $00
    ld e, $6f
    ld c, d
    ld l, a
    ld d, b
    ld l, a
    call $042f
    and $03
    jr nz, jr_00e_6f39

    ld h, d
    ld l, $b2
    ld a, [hl]
    cp $05
    jr nc, jr_00e_6f39

    ld l, $85
    ld [hl], $02
    inc l
    ld [hl], $01
    ld a, $0b
    jp Jump_00e_6eb7


jr_00e_6f39:
    call Call_00e_43c6
    ld e, $85
    ld a, $01
    ld [de], a
    call Call_00e_7211
    call Call_00e_722c
    jp Jump_00e_70c7


    call $275f
    jp Jump_00e_6e82


    ld e, $a1
    ld a, [de]
    inc a
    jr z, jr_00e_6f39

    res 7, a
    dec a
    jr z, jr_00e_6f61

    call Call_00e_439a
    call z, Call_00e_727e

jr_00e_6f61:
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    ld l, h
    ld l, a
    ld a, h
    ld l, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld a, $01
    call $211e
    ld e, $b0
    ld a, [hl]
    ld [de], a
    ld a, $29
    call $211e
    ld a, [hl]
    or a
    jp z, $2e28

    ld bc, $ff00
    ld a, $00   ; xor a
    call $211e
    jp $2232


    ld a, [de]
    sub $08
    rst $00
    and l
    ld l, a
    or e
    ld l, a
    pop hl
    ld l, a
    db $ed
    ld l, a
    inc c
    ld [hl], b
    jr nz, jr_00e_7011

    ld h, l
    ld [hl], b
    ld a, h
    ld [hl], b
    ld a, $09
    ld [de], a
    call $1e1e
    call $1e39
    ld a, $0c
    jp $2772


    ld a, $04
    call $211e
    ld a, [hl]
    cp $0a
    jr z, jr_00e_6fcd

    ret c

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a5
    ld [hl], $5f
    ld l, $8f
    ld [hl], $00
    jp $1e27


jr_00e_6fcd:
    ld l, $8f
    ld a, [hl]
    cp $f9
    jr nc, jr_00e_6fda

    ld bc, $f806
    jp $2232


jr_00e_6fda:
    ld a, $0d
    call $2772
    jr jr_00e_7001

    call Call_00e_72ad
    call Call_00e_7125
    call Call_00e_7001
    jp $275f


    call Call_00e_439a
    jp nz, Jump_00e_72dc

Jump_00e_6ff3:
    ld h, d
    ld l, $84
    ld [hl], $0a
    ld l, $a5
    ld [hl], $5f
    ld a, $0d
    call $2772

Call_00e_7001:
jr_00e_7001:
    ld bc, $08fa
    ld a, $00   ; xor a
    call $211e
    jp $2232


    ld h, d
    ld l, e
    inc [hl]
    ld l, $b0

jr_00e_7011:
    ld [hl], $00
    ld a, $0f
    call $2772
    ld a, $74
    call $0c74
    jp Jump_00e_72e7


    call $275f
    ld h, d
    ld l, $a1
    bit 7, [hl]
    jr nz, jr_00e_703e

    bit 0, [hl]
    jr z, jr_00e_7034

    res 0, [hl]
    ld l, $a5
    ld [hl], $60

jr_00e_7034:
    call Call_00e_72e7
    ld e, $b0
    ld a, [de]
    or a
    ret z

    jr jr_00e_7049

jr_00e_703e:
    ld e, $b0
    ld a, [de]
    or a
    jp z, Jump_00e_6ff3

    xor a
    call Call_00e_72ea

jr_00e_7049:
    ld a, $10
    call $2772
    ld hl, $d031
    ld [hl], $0d
    ld l, $30
    ld [hl], $00
    ld l, $24
    res 7, [hl]
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a1
    ld [hl], $08
    jr jr_00e_70be

    ld a, $05
    call $211e
    ld a, [hl]
    cp $04
    jr z, jr_00e_7074

    call Call_00e_72e7
    jr jr_00e_70be

jr_00e_7074:
    ld h, d
    dec l
    inc [hl]
    ld l, $a1
    ld [hl], $00
    ret


    call $275f
    ld h, d
    ld l, $a1
    bit 7, [hl]
    jp nz, Jump_00e_6ff3

    bit 2, [hl]
    jr z, jr_00e_709e

    bit 4, [hl]
    jp z, Jump_00e_730c

    res 4, [hl]
    ld hl, $d005
    ld [hl], $02
    ld l, $24
    set 7, [hl]
    jp Jump_00e_730c


jr_00e_709e:
    bit 4, [hl]
    jr z, jr_00e_70bb

    res 4, [hl]
    ld a, $6f
    call $0c74
    ld a, $14
    call $24a7
    ld a, $0a
    ld [$d02b], a
    ld a, $fa
    ld [$d025], a
    ld h, d
    ld l, $a1

jr_00e_70bb:
    call Call_00e_7303

jr_00e_70be:
    ld bc, $0002
    ld hl, $d000
    jp $2215


Call_00e_70c7:
Jump_00e_70c7:
    ld h, d
    ld l, $89
    bit 3, [hl]
    ld l, $90
    ld [hl], $14
    ret z

    ld [hl], $3c
    ret


Call_00e_70d4:
    ld h, d
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld e, $89
    ld a, [de]
    rrca
    rrca
    ld hl, $711d
    rst AddAToHL
    ld a, [hli]
    add b
    ld b, a
    ld a, [hl]
    add c
    ld c, a
    call $14a5
    jr z, jr_00e_70f5

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a

Jump_00e_70f5:
jr_00e_70f5:
    ld e, $89
    ld a, [de]
    sub $09
    cp $0f
    jr nc, jr_00e_7105

    ld e, $8b
    ld a, [de]
    cp $98
    jr nc, jr_00e_7108

jr_00e_7105:
    call $1fdb

jr_00e_7108:
    ld e, $89
    ld a, [de]
    bit 3, a
    ld b, $07
    jr nz, jr_00e_7113

    ld b, $0f

jr_00e_7113:
    ld a, [$cc00]
    and b
    ret nz

    ld a, $a3
    jp $0c74


    rst $30
    nop
    nop
    jr jr_00e_712a

    nop
    nop
    rst $20

Call_00e_7125:
Jump_00e_7125:
    ld e, $a9
    ld a, [de]
    or a
    ret z

jr_00e_712a:
    call $1e52
    add $06
    and $1f
    cp $0d
    ld h, d
    ld l, $a4
    jr c, jr_00e_713b

    set 7, [hl]
    ret


jr_00e_713b:
    res 7, [hl]
    ret


Jump_00e_713e:
    ld e, $a4
    ld a, [de]
    or a
    jr z, jr_00e_7165

    ld h, $d0

jr_00e_7146:
    ld l, $81
    ld a, [hl]
    cp $46
    call z, Call_00e_447d
    inc h
    ld a, h
    cp $e0
    jr c, jr_00e_7146

    ld a, $01
    call $2122
    ld a, [hl]
    cp $7b
    jr nz, jr_00e_7165

    call Call_00e_447d
    ld l, $a1
    ld [hl], $80

jr_00e_7165:
    jp Jump_00e_450f


Jump_00e_7168:
    ld h, d
    ld l, $a4
    ld a, [hl]
    or a
    jr z, jr_00e_7184

    ld [hl], $00
    ld l, $90
    ld [hl], $1e
    ld l, $89
    ld [hl], $18
    ld bc, $ff20
    call $2358
    ld a, $11
    call $2772

jr_00e_7184:
    ld c, $0a
    call $1f04
    call $1fdb
    jp $275f


Call_00e_718f:
    ld e, $85
    ld a, [de]
    dec a
    jr nz, jr_00e_71cd

    ld h, d
    ld l, $b0
    dec [hl]
    jr nz, jr_00e_71cd

    call $042f
    and $30
    add $a0
    ld b, a
    ld e, $b1
    ld a, [de]
    sub $02
    swap a
    cpl
    inc a
    rrca
    add b
    ld e, $b0
    ld [de], a
    ld h, d
    ld l, $86
    ld a, [hl]
    add $18
    ld [hl], a
    ld l, $b1
    ld a, [hl]
    xor $04
    ld [hl], a
    ld e, $89
    ld a, [de]
    swap a
    rlca
    and $02
    add [hl]
    dec e
    ld [de], a
    dec a
    call $2772

jr_00e_71cd:
    ld e, $a1
    ld a, [de]
    rlca
    jp c, Jump_00e_7125

    ld e, $a4
    ld a, [de]
    res 7, a
    ld [de], a
    ret


Call_00e_71db:
    ld b, $00
    ld h, d
    ld l, $8b
    ld a, [hl]
    cp $60
    jr nc, jr_00e_720d

    call $041a
    and $07
    jp z, Jump_00e_43c6

    ld a, [$d00b]
    sub [hl]
    cp $20
    jr c, jr_00e_7201

    ld b, $10
    cp $80
    jr c, jr_00e_720d

    ld b, $00
    cp $e0
    jr c, jr_00e_720d

jr_00e_7201:
    ld l, $8d
    ld a, [$d00d]
    cp [hl]
    ld b, $18
    jr c, jr_00e_720d

    ld b, $08

jr_00e_720d:
    ld l, $89
    ld [hl], b
    ret


Call_00e_7211:
    call $042f
    and $03
    ld hl, $7228
    rst AddAToHL
    ld e, $89
    ld a, [de]
    and $08
    add a
    add a
    cpl
    inc a
    add [hl]
    ld e, $86
    ld [de], a
    ret


    ld h, b
    ld [hl], b
    add b
    ld d, b

Call_00e_722c:
    ld h, d
    ld l, $b1
    ld e, $89
    ld a, [de]
    swap a
    rlca
    and $02
    add [hl]
    ld l, $88
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Jump_00e_7240:
    call Call_00e_439a
    ret z

    ld a, [hl]
    cp $1e
    push af
    call z, Call_00e_725a
    pop af
    cp $0f
    jp nz, Jump_00e_70f5

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a
    jp Jump_00e_70f5


Call_00e_725a:
    ld b, $00
    ld a, $0d
    call $2122
    ld a, [$d00d]
    sub [hl]
    add $06
    cp $0d
    jr c, jr_00e_7273

    ld b, $fe
    cp $86
    jr c, jr_00e_7273

    ld b, $02

jr_00e_7273:
    ld e, $89
    ld a, $10
    add b
    ld [de], a
    ld a, $bb
    jp $0c74


Call_00e_727e:
    ld [hl], $07
    ld l, $b2
    ld a, [hl]
    cp $05
    ret nc

    call $042f
    and $03
    ld c, a
    ld b, $46
    call Call_00e_436d
    ret nz

    ld [hl], c
    call $21fd
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], d
    ld h, d
    ld l, $b2
    inc [hl]
    ld a, $62
    jp $0c74


    dec b
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, de
    inc hl
    inc hl

Call_00e_72ad:
    ld a, [$cc7a]
    and $f0
    ret z

    ld a, $0b
    call $211e
    ld a, [$d00b]
    sub [hl]
    cp $2c
    ret c

    ld h, $d6

jr_00e_72c1:
    ld l, $01
    ld a, [hl]
    cp $1a
    jr nc, jr_00e_72cf

    inc h
    ld a, h
    cp $e0
    jr c, jr_00e_72c1

    ret


jr_00e_72cf:
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $3c
    ld a, $0e
    call $2772

Jump_00e_72dc:
    ld bc, $07ff
    ld a, $00   ; xor a
    call $211e
    jp $2232


Call_00e_72e7:
Jump_00e_72e7:
    ld e, $a1
    ld a, [de]

Call_00e_72ea:
    ld hl, $72f9
    rst AddAToHL
    ld a, [hli]
    ld b, a
    ld c, [hl]
    ld a, $00   ; xor a
    call $211e
    jp $2232


    ld [$05fa], sp
    di
    db $fd
    di
    rst $28
    ld hl, sp+$09
    ei

Call_00e_7303:
    ld a, [hl]
    ld hl, $7320
    rst AddAToHL
    ld a, [hl]
    ld [$d031], a

Jump_00e_730c:
    ld e, $a1
    ld a, [de]
    and $03
    ld hl, $7324
    rst JumpTable
    ld a, [hli]
    ld b, a
    ld c, [hl]
    ld a, $00   ; xor a
    call $211e
    jp $2232


    dec c
    ld c, $0f
    ld c, $08
    ld a, [$f3fd]
    rst $28
    ld hl, sp+$05
    di
    jr z, jr_00e_7360

    sub $03
    ret c

    jr z, jr_00e_733c

    dec a
    jr z, jr_00e_7360

    call $275f
    jp Jump_00e_400a


jr_00e_733c:
    ld e, $82
    ld a, [de]
    dec a
    jr z, jr_00e_7353

    ld e, $a4
    ld a, [de]
    or a
    ld a, $09
    jr z, jr_00e_7350

    call $2772
    call Call_00e_448c

jr_00e_7350:
    jp Jump_00e_450f


jr_00e_7353:
    ld e, $84
    ld a, [de]
    cp $0a
    jr nz, jr_00e_7360

    call $24ad
    jp $2e28


jr_00e_7360:
    call Call_00e_4426
    jr nc, jr_00e_7376

    rst $00
    ld a, l
    ld [hl], e
    sbc a
    ld [hl], e
    db $e4
    ld [hl], e
    db $e4
    ld [hl], e
    db $e4
    ld [hl], e
    db $e4
    ld [hl], e
    db $e4
    ld [hl], e
    db $e4
    ld [hl], e

jr_00e_7376:
    dec b
    ld a, b
    rst $00
    push hl
    ld [hl], e
    sbc c
    ld [hl], h
    ld a, b
    or a
    jr nz, jr_00e_738c

    inc a
    ld [de], a
    ld a, $7c
    ld b, $84
    call Call_00e_4565
    jr jr_00e_739c

jr_00e_738c:
    dec a
    jr nz, jr_00e_7399

    ld e, $be
    ld a, $08
    ld [de], a
    ld a, $08
    call $2772

jr_00e_7399:
    call Call_00e_4364

jr_00e_739c:
    jp $1e27


    ld e, $86
    ld a, [de]
    or a
    jp nz, $2e28

    ld b, $02
    call $20b5
    ret nz

    ld b, $7c
    call Call_00e_436d
    ld l, $8b
    ld [hl], $28
    ld l, $8d
    ld [hl], $d8
    ld l, $8f
    ld [hl], $e8
    ld c, h
    push hl
    call Call_00e_436d
    inc [hl]
    ld l, $8b
    call $21fd
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    ld l, $96
    ld [hl], e
    inc l
    ld [hl], c
    ld l, $b0
    ld [hl], $04
    ld c, h
    pop hl
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], c
    ld e, $86
    ld a, $01
    ld [de], a
    ret


    ret


    call Call_00e_779b
    ld e, $84
    ld a, [de]
    sub $08
    rst $00
    ld hl, sp+$73
    dec de
    ld [hl], h
    dec hl
    ld [hl], h
    ld e, b
    ld [hl], h
    ld a, d
    ld [hl], h
    ld a, $04
    call $211e
    ld a, [hl]
    cp $09
    ret c

    ld a, [$cc79]
    or a
    ret z

    bit 1, a
    ret z

    ld bc, $0008
    call Call_00e_4553
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $28
    jp Jump_00e_43bf


    ld c, $10
    call $1f04
    jp nz, $1fdb

    ld l, $84
    inc [hl]
    ld l, $8f
    ld [hl], $ff
    ret


    call Call_00e_7757
    ret c

Call_00e_742f:
    ld a, [$cc79]
    or a
    ret z

    ld e, $a9
    ld a, [de]
    or a
    ret z

    call Call_00e_43bf
    ld a, [$cc79]
    bit 1, a
    jr nz, jr_00e_7449

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a

jr_00e_7449:
    ld h, d
    ld l, $84
    ld [hl], $0b
    ld l, $90
    ld [hl], $50
    ld l, $86
    ld [hl], $00
    scf
    ret


    call Call_00e_7757
    jr c, jr_00e_7469

    ld e, $a9
    ld a, [de]
    or a
    jr z, jr_00e_7469

    ld a, [$cc79]
    or a
    jr nz, jr_00e_746f

jr_00e_7469:
    ld h, d
    ld l, $84
    inc [hl]
    jr jr_00e_7496

jr_00e_746f:
    call Call_00e_7737
    call Call_00e_770e
    call Call_00e_4156
    jr jr_00e_7496

    ld h, d
    ld l, $86
    ld a, [hl]
    or a
    jr z, jr_00e_7484

    dec [hl]
    jr nz, jr_00e_748c

jr_00e_7484:
    ld l, e
    ld [hl], $0a
    ld l, $90
    ld [hl], $00
    ret


jr_00e_748c:
    call Call_00e_742f
    ret c

    call Call_00e_7740
    call Call_00e_4156

jr_00e_7496:
    jp Jump_00e_7763


    ld a, [de]
    sub $08
    rst $00
    or l
    ld [hl], h
    call nc, $f374
    ld [hl], h
    jr z, @+$77

    ld d, h
    ld [hl], l
    ld a, l
    ld [hl], l
    jp $f275


    ld [hl], l
    db $10
    db $76
    dec l
    db $76
    ld [hl], l
    db $76
    adc [hl]
    db $76
    ld a, [$ccad]
    or a
    ret nz

    ld bc, $0208
    call Call_00e_4553
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    inc [hl]
    ld l, $b1
    ld [hl], $06
    ld a, $2e
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    jp nz, $275f

    inc [hl]
    inc l
    ld [hl], $06
    ld l, e
    inc [hl]
    ld e, $b1
    ld a, [de]
    dec a
    ld hl, $74ed
    rst AddAToHL
    ld e, $90
    ld a, [hl]
    ld [de], a
    ret


    ld b, [hl]
    inc a
    ld [hl-], a
    jr z, @+$20

    ld e, $cd
    sbc d
    ld b, e
    ret nz

    ld l, e
    inc [hl]
    ld l, $94
    ld a, $80
    ld [hli], a
    ld [hl], $fe
    call Call_00e_43bf
    call $042f
    and $03
    ld hl, $7524
    rst AddAToHL
    ld e, $89
    ld a, [de]
    add $02
    and $1c
    add [hl]
    and $1f
    ld [de], a
    ld a, $98
    call $0c74
    ld a, $04
    call $2772
    jp $1e1e


    db $fc
    nop
    inc b
    db $10
    ld c, $0c
    call $1f04
    jp nz, Jump_00e_76de

    ld a, $85
    call $0c74
    call $1e27
    ld h, d
    ld l, $86
    ld [hl], $10
    inc l
    dec [hl]
    jr z, jr_00e_7549

    ld l, $84
    dec [hl]
    ld a, $01
    jp $2772


jr_00e_7549:
    dec l
    ld [hl], $0c
    ld l, $84
    inc [hl]
    ld a, $02
    jp $2772


    call Call_00e_439a
    jr z, jr_00e_7561

    ld a, [hl]
    cp $04
    ret nz

    xor a
    jp $2772


jr_00e_7561:
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $32
    ld bc, $fc00
    call $2358
    ld a, $98
    call $0c74
    call Call_00e_43bf
    call $1e1e
    ld a, $03
    jp $2772


    ld c, $10
    call $1f04
    ldh a, [$a8]
    ld b, a
    ld l, $8f
    ld e, $8b
    ld a, [de]
    add [hl]
    sub b
    cp $b0
    jp c, Jump_00e_76bc

    ld l, $84
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $3c
    ld l, $8f
    ld [hl], $00
    call $1e39
    ld e, $b1
    ld a, [de]
    dec a
    ld hl, $75b7
    rst JumpTable
    ld e, $94
    xor a
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    ld e, $87
    ld a, [hl]
    ld [de], a
    ret


    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld [de], a
    ld [bc], a
    inc d
    ld bc, $011c
    ld e, $01
    ld h, $cd
    sbc d
    ld b, e
    jr z, jr_00e_75e5

    ld a, [hl]
    inc l
    cp [hl]
    ld c, $10
    call c, Call_00e_4465
    ret nz

    ld l, $8b
    ld a, [$d00b]
    and $f0
    add $08
    ld [hli], a
    inc l
    ld a, [$d00d]
    and $f0
    add $08
    ld [hl], a
    ret


jr_00e_75e5:
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $a8
    ld [hl], $f8
    jp $1e1e


    ld c, $20
    call $1f04
    ret nz

    ld l, $84
    ld [hl], $09
    ld l, $86
    ld [hl], $77
    ld l, $a8
    ld [hl], $fc
    ld a, $85
    call $0c74
    call $1e27
    xor a
    jp $2772


    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $1e
    ld l, $a4
    res 7, [hl]
    ld l, $8e
    xor a
    ld [hli], a
    ld [hl], a
    ld l, $ab
    ld [hl], $2d
    ld l, $ad
    ld [hl], $12
    ld a, $05
    jp $2772


    call Call_00e_439a
    jp nz, $275f

    ld e, $b0
    ld a, [de]
    or a
    jr nz, jr_00e_76ac

    inc [hl]
    ld l, $b1
    ld b, [hl]
    call $20b5
    ret nz

    ld e, $97
    ld a, [de]
    ldh [$8b], a
    ld e, $b1
    ld a, [de]
    ld c, a

jr_00e_764a:
    ld b, $55
    call Call_00e_436d
    call $21fd
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], d
    ld l, $b1
    ldh a, [$8b]
    ld [hl], a
    ld a, c
    add $b2
    ld e, a
    ld a, h
    ld [de], a
    dec c
    jr nz, jr_00e_764a

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $a0
    ld l, $b1
    ld a, [hli]
    ld [hl], a
    jp $1e39


    ld a, [$cc00]
    and $03
    ret nz

    call Call_00e_439a
    ret nz

    ld [hl], $19
    ld l, e
    inc [hl]
    call Call_00e_76e4
    ld a, $06
    call $2772
    jp $1e27


    ld e, $86
    ld a, [de]
    or a
    jr z, jr_00e_769d

    dec a
    ld [de], a
    jr nz, jr_00e_769d

    ld a, $07
    call $2772

jr_00e_769d:
    ld e, $b2
    ld a, [de]
    or a
    ret nz

    ld a, $c0
    call $0c74
    ld h, d
    ld l, $b0
    ld [hl], $04

jr_00e_76ac:
    ld l, $a4
    set 7, [hl]
    ld l, $84
    ld [hl], $09
    ld l, $86
    ld [hl], $69
    xor a
    jp $2772


Jump_00e_76bc:
    ld l, $94
    ld a, [hli]
    or a
    jr nz, jr_00e_76d1

    ld a, [hl]
    or a
    jr nz, jr_00e_76d1

    ld [hl], $02
    ld l, $90
    ld [hl], $14
    ld a, $04
    call $2772

jr_00e_76d1:
    ld a, [$cc00]
    and $03
    jr nz, jr_00e_76de

    call $1e52
    call $1f92

Jump_00e_76de:
jr_00e_76de:
    call Call_00e_42de
    jp $1fdb


Call_00e_76e4:
    ld e, $b2

jr_00e_76e6:
    inc e
    ld a, [de]
    ld h, a
    ld l, $80
    ld a, [hl]
    or a
    jr z, jr_00e_76e6

    ld e, $b3
    ld b, h
    ld c, $06

jr_00e_76f4:
    ld a, [de]
    ld h, a
    ld l, $80
    ld a, [hl]
    or a
    jr z, jr_00e_7702

    ld l, $98
    ld a, $80
    ld [hli], a
    ld [hl], b

jr_00e_7702:
    inc e
    dec c
    jr nz, jr_00e_76f4

    ld h, b
    ld l, $84
    ld [hl], $0c
    jp $222f


Call_00e_770e:
    ld a, [$cc00]
    and $03
    ret nz

    ld a, [$cc79]
    bit 1, a
    jr z, jr_00e_7721

    call $1e52
    ld b, a
    jr jr_00e_7727

jr_00e_7721:
    call $1e52
    xor $10
    ld b, a

jr_00e_7727:
    ld e, $89
    ld a, [de]
    sub b
    add $02
    cp $05
    ld a, b
    jp nc, $1f92

    ld e, $89
    ld [de], a
    ret


Call_00e_7737:
    ld e, $86
    ld a, [de]
    cp $28
    jr nc, jr_00e_7740

    inc a
    ld [de], a

Call_00e_7740:
jr_00e_7740:
    ld e, $86
    ld a, [de]
    and $38
    rlca
    swap a
    ld hl, $7751
    rst AddAToHL
    ld e, $90
    ld a, [hl]
    ld [de], a
    ret


    ld a, [bc]
    inc d
    jr z, @+$3e

    ld b, [hl]
    ld d, b

Call_00e_7757:
    xor a
    ld a, [$cc79]
    bit 1, a
    ret z

    ld c, $0c
    jp $1f60


Jump_00e_7763:
    ld e, $90
    ld a, [de]
    cp $3c
    ret c

    ld a, $2b
    call $211e
    ld a, [hl]
    or a
    ret nz

    ld l, $a4
    bit 7, [hl]
    ret z

    ld l, $8f
    ld a, [hl]
    dec a
    cp $f5
    ret c

    call $1d18
    ret nc

    ld l, $b0
    dec [hl]
    ld l, $84
    ld [hl], $10
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    push hl
    call $1e62
    pop hl
    ld l, $ac
    ld [hl], a
    ld a, $63
    jp $0c74


Call_00e_779b:
    ld a, $0b
    call $211e
    ld e, l
    ld a, [de]
    cp [hl]
    jp c, $1e30

    jp $1e27


    jr z, jr_00e_77c5

    sub $03
    ret c

    dec a
    jr z, jr_00e_77c2

    dec a
    jr z, jr_00e_77c5

    ld e, $82
    ld a, [de]
    dec a
    jp z, Jump_00e_450f

    dec a
    call z, Call_00e_448c
    jp $27ca


jr_00e_77c2:
    call Call_00e_7a44

jr_00e_77c5:
    call Call_00e_4426
    jr nc, jr_00e_77db

    rst $00
    ld [$2e77], a
    ld a, b
    db $76
    ld a, b
    db $76
    ld a, b
    db $76
    ld a, b
    db $76
    ld a, b
    db $76
    ld a, b
    db $76
    ld a, b

jr_00e_77db:
    dec b
    ld a, b
    rst $00
    ld [hl], a
    ld a, b
    ld [hl], d
    ld a, c
    db $dd
    ld a, c
    db $dd
    ld a, c
    db $dd
    ld a, c
    db $dd
    ld a, c
    ld a, b
    or a
    jr nz, jr_00e_77f7

    ld a, $7d
    ld b, $85
    call Call_00e_4565
    jr jr_00e_782e

jr_00e_77f7:
    dec a
    ld hl, $7828
    rst AddAToHL
    ld e, $b0
    ld a, [hl]
    ld [de], a
    call $2772
    call Call_00e_4364
    ld e, $82
    ld a, [de]
    cp $03
    jr nc, jr_00e_7813

    dec a
    jr z, jr_00e_7825

    jp $1e39


jr_00e_7813:
    call Call_00e_7a14
    ld e, $b1
    ld a, $03
    ld [de], a
    ld e, $82
    ld a, [de]
    sub $04
    cp $02
    jp c, $1e27

jr_00e_7825:
    jp $1e30


    nop
    dec b
    add hl, bc
    dec c
    dec bc
    rlca

jr_00e_782e:
    ld b, $06
    call $20b5
    ret nz

    ld b, $7d
    call Call_00e_436d
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    call $21fd
    push hl
    ld c, h
    call Call_00e_436d
    inc [hl]
    call $21fd
    call Call_00e_7a3d
    ld a, h
    ld hl, $ff8a
    ld [hli], a
    ld a, $04

jr_00e_7854:
    ldh [$8f], a
    push hl
    call Call_00e_436d
    call Call_00e_7a1f
    ld a, h
    pop hl
    ld [hli], a
    ldh a, [$8f]
    dec a
    jr nz, jr_00e_7854

    pop hl
    ld bc, $ff8a
    ld l, $b1
    ld e, $05

jr_00e_786d:
    ld a, [bc]
    ld [hli], a
    inc c
    dec e
    jr nz, jr_00e_786d

    jp $2e28


    ret


    call Call_00e_7ac8
    ld e, $84
    ld a, [de]
    sub $08
    rst $00
    adc [hl]
    ld a, b
    or h
    ld a, b
    jp z, $fe78

    ld a, b
    dec de
    ld a, c
    inc [hl]
    ld a, c
    ld c, c
    ld a, c
    ld a, [$ccad]
    or a
    ret nz

    ld h, d
    ld l, $90
    ld [hl], $0a
    ld l, $a5
    ld [hl], $61
    ld l, $b6
    ld [hl], $04
    inc l
    ld [hl], $58
    inc l
    ld [hl], $78
    inc l
    ld [hl], $ff
    call Call_00e_78ce
    ld a, $2e
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    jr nz, jr_00e_78c1

    ld [hl], $78
    ld l, e
    inc [hl]
    xor a
    call $2772

jr_00e_78c1:
    call Call_00e_42de
    call $1fdb

jr_00e_78c7:
    jp $275f


    call Call_00e_439a
    ret nz

Call_00e_78ce:
    ld l, e
    ld [hl], $09
    call $042f
    and $07
    ld hl, $78f6
    rst AddAToHL
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld bc, $5078
    call $1e62
    push af
    call $042f
    and $01
    pop af
    jr z, jr_00e_78f1

    sub $02
    and $1f

jr_00e_78f1:
    ld e, $89
    ld [de], a
    jr jr_00e_78c7

    and b
    or b
    ret nz

    ret nc

    ret nc

    ldh [$f0], a
    nop
    call Call_00e_7ab4
    jr nc, jr_00e_7913

    ld l, e
    inc [hl]
    ld l, $89
    ld [hl], $00
    ld l, $86
    ld [hl], $04
    ld l, $90
    ld [hl], $55
    jr jr_00e_78c7

jr_00e_7913:
    call $1e6f
    ld e, $89
    ld [de], a
    jr jr_00e_78c1

    call Call_00e_439a
    jr nz, jr_00e_78c1

    ld [hl], $04
    ld l, $b9
    ld e, $89
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    or a
    jr nz, jr_00e_78c1

    ld a, [hl]
    cpl
    inc a
    ld [hl], a
    jr jr_00e_78c1

    call Call_00e_439a
    jr nz, jr_00e_796c

    ld [hl], $3c
    ld l, $b0
    ld a, [hl]
    dec a
    ld [hl], a
    jr nz, jr_00e_7946

    ld l, $84
    ld [hl], $0b

jr_00e_7946:
    jp $2772


    call Call_00e_439a
    jr nz, jr_00e_7960

    inc [hl]
    ld l, $84
    dec [hl]
    ld l, $a4
    ld [hl], $fd
    ld l, $b0
    dec [hl]
    ld a, [hl]
    call $2772
    jp $1e27


jr_00e_7960:
    ld a, [hl]
    cp $78
    jr nz, jr_00e_796c

    ld l, $b0
    inc [hl]
    ld a, [hl]
    jp $2772


jr_00e_796c:
    call $275f
    jp Jump_00e_4123


    call Call_00e_7ad6
    ld e, $84
    ld a, [de]
    sub $08
    rst $00
    add c
    ld a, c
    adc h
    ld a, c
    xor [hl]
    ld a, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    inc l
    ld [hl], $63
    ret


    ld a, $04
    call $211e
    ld a, [hl]
    cp $0e
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $8f
    ld [hl], $f9
    ld l, $94
    xor a
    ld [hli], a
    ld [hl], a
    call $1e1e
    ld a, $05
    jp $2772


    ld a, $04
    call $211e
    ld a, [hl]
    cp $0d
    jr nz, jr_00e_79c3

    ld h, d
    ld l, $84
    dec [hl]
    ld l, $a4
    res 7, [hl]
    jp $1e39


jr_00e_79c3:
    ld l, $86
    ld a, [hl]
    cp $78
    ret nc

    add $03
    and $0c
    rrca
    rrca
    ld hl, $79d9
    rst AddAToHL
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    nop
    ld [bc], a
    nop
    cp $1a
    sub $08
    rst $00
    push hl
    ld a, c
    db $fc
    ld a, c
    call Call_00e_439a
    jr nz, jr_00e_79f9

    call $7b1c
    jr c, jr_00e_79f9

jr_00e_79ef:
    call $042f
    and $50
    add $5a
    ld e, $86
    ld [de], a

jr_00e_79f9:
    jp Jump_00e_7ad6


    call Call_00e_439a
    jr z, jr_00e_7a0d

    ld a, [hl]
    cp $5a
    jr nz, jr_00e_79f9

    ld b, $31
    call Call_00e_437c
    jr jr_00e_79f9

jr_00e_7a0d:
    ld l, $b0
    dec [hl]
    ld a, [hl]
    call $2772

Call_00e_7a14:
    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $a5
    ld [hl], $0a
    jr jr_00e_79ef

Call_00e_7a1f:
    push bc
    push hl
    ldh a, [$8f]
    ld b, a
    ld a, $07
    sub b
    ld [hl], a
    call Call_00e_7af2
    ld e, $8b
    ld a, [de]
    add [hl]
    ld b, a
    inc hl
    ld e, $8d
    ld a, [de]
    add [hl]
    ld c, a
    pop hl
    ld l, e
    ld [hl], c
    ld l, $8b
    ld [hl], b
    pop bc

Call_00e_7a3d:
    ld l, $96
    ld a, $80
    ld [hli], a
    ld [hl], c
    ret


Call_00e_7a44:
    ld h, d
    ld l, $aa
    ld e, $82
    ld a, [de]
    dec a
    jr z, jr_00e_7a70

    dec a
    ret z

    ld l, $a9
    ld a, [hl]
    or a
    ret nz

    ld a, $36
    call $211e
    dec [hl]
    jr z, jr_00e_7a63

    ld l, $90
    ld a, [hl]
    add $14
    ld [hl], a
    ret


jr_00e_7a63:
    ld l, $84
    ld [hl], $0b
    ld l, $90
    ld [hl], $50
    ld l, $a5
    ld [hl], $4c
    ret


jr_00e_7a70:
    ld l, $aa
    ld a, [hl]
    cp $a0
    jr nz, jr_00e_7a7b

    ld l, $ba
    ld [hl], $3c

jr_00e_7a7b:
    ld l, $a9
    ld [hl], $40
    ld l, $b6
    ld a, [hl]
    or a
    ret nz

    ld l, $aa
    ld a, [hl]
    cp $96
    ret nz

    ld l, $b0
    ld a, [hl]
    inc a
    cp $03
    ld [hl], a
    jr nc, jr_00e_7aa1

    ld l, $86
    ld [hl], $3c
    ld l, $84
    ld [hl], $0d
    call $2772
    jp $1e1e


jr_00e_7aa1:
    ld [hl], $03
    ld l, $84
    ld [hl], $0e
    ld l, $86
    ld [hl], $b4
    ld l, $a4
    ld [hl], $a9
    ld a, $03
    jp $2772


Call_00e_7ab4:
    ld h, d
    ld l, $b7
    call Call_00e_4439
    sub c
    add $04
    cp $09
    ret nc

    ldh a, [$8f]
    sub b
    add $04
    cp $09
    ret


Call_00e_7ac8:
    ld h, d
    ld l, $ba
    ld a, [hl]
    or a
    ret z

    pop bc
    dec [hl]
    ret nz

    ld l, $a4
    set 7, [hl]
    ret


Call_00e_7ad6:
Jump_00e_7ad6:
    ld a, $0b
    call $211e
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld l, $a1
    ld e, $82
    ld a, [de]
    call Call_00e_7af2
    ld e, $8b
    ld a, [hli]
    add b
    ld [de], a
    ld e, $8d
    ld a, [hl]
    add c
    ld [de], a
    ret


Call_00e_7af2:
    sub $02
    ld e, a
    add a
    add e
    add a
    add [hl]
    ld hl, $7afe
    rst AddAToHL
    ret


    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ldh a, [$0a]
    ld a, [c]
    ld a, [bc]
    pop af
    ld a, [bc]
    nop
    dec bc
    ld [bc], a
    dec bc
    ld bc, $000b
    push af
    ld bc, $02f5
    push af
    ldh a, [$f6]
    pop af
    or $f2
    or $cd
    ld d, d
    ld e, $47
    ld e, $82
    ld a, [de]
    sub $03
    swap a
    rrca
    sub b
    cp $f8
    ret nc

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a5
    ld [hl], $62
    ld l, $86
    ld [hl], $78
    ld l, $b0
    inc [hl]
    ld a, [hl]
    call $2772
    scf
    ret


    jr z, jr_00e_7b98

    sub $03
    jr c, jr_00e_7b4d

    jp z, Jump_00e_450f

    dec a
    jr z, jr_00e_7b64

jr_00e_7b4d:
    ld h, d
    ld l, $ad
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ld l, $a1
    bit 0, [hl]
    jr z, jr_00e_7b61

    ld l, $a0
    ld [hl], $01
    call $275f

jr_00e_7b61:
    jp Jump_00e_400a


jr_00e_7b64:
    ld h, d
    ld l, $aa
    ld a, [hl]
    res 7, a
    sub $04
    jr c, jr_00e_7b98

    sub $06
    jr nc, jr_00e_7b7b

    ld l, $b0
    ld [hl], $01
    ld l, $ae
    ld [hl], $00
    ret


jr_00e_7b7b:
    sub $13
    jr nz, jr_00e_7b93

    ld l, $ad
    ld [hl], $0d
    inc l
    ld [hl], $2d
    call $1e52
    xor $10
    ld e, $ac
    ld [de], a
    ld a, $4e
    jp $0c74


jr_00e_7b93:
    ld l, $ae
    ld a, [hl]
    or a
    ret nz

jr_00e_7b98:
    ld e, $84
    ld a, [de]
    rst $00
    or [hl]
    ld a, e
    call z, $107b
    ld a, h
    db $10
    ld a, h
    db $10
    ld a, h
    db $10
    ld a, h
    db $10
    ld a, h
    db $10
    ld a, h
    ld de, $637c
    ld a, h
    ld a, d
    ld a, h
    rlca
    ld a, l
    ret nc

    ld a, l
    ld e, $82
    ld a, [de]
    or a
    ld a, $3c
    jp nz, Jump_00e_4364

    ld a, $7f
    ld b, $88
    call Call_00e_4565
    ld e, $84
    ld a, $01
    ld [de], a
    ret


    ld a, [$ccad]
    or a
    ret nz

    ld b, $04
    call $20b5
    ret nz

    ld bc, $7f04

jr_00e_7bda:
    call Call_00e_436d
    ld [hl], c
    ld a, c
    dec a
    ld e, a
    add a
    add e
    ld de, $7c04
    call $0068
    ld l, $8b
    ld a, [de]
    ld [hli], a
    inc de
    inc l
    ld a, [de]
    ld [hl], a
    inc de
    ld l, $89
    ld a, [de]
    ld [hl], a
    dec c
    jr nz, jr_00e_7bda

    ldh a, [$ad]
    ld d, a
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    jp $2e28


    ld [$0078], sp
    ld e, b
    ret c

    ld [$78a8], sp
    db $10
    ld e, b
    jr @+$1a

    ret


    inc e
    ld a, [de]
    or a
    jr nz, jr_00e_7c29

    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $70
    ld l, $8f
    ld [hl], $fe
    ld l, $82
    ld a, [hl]
    dec a
    ld a, $8d
    call z, $0c74

jr_00e_7c29:
    call Call_00e_441f
    ld a, [$cc00]
    rrca
    ret c

    call Call_00e_439a
    jr z, jr_00e_7c47

    ld a, [hl]
    ld e, $89
    ld bc, $5878
    call $20cc
    ld e, $89
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    ret


jr_00e_7c47:
    ld e, $82
    ld a, [de]
    dec a
    jp nz, $2e28

    ld [hl], $1e
    ld l, $84
    inc [hl]
    call $1e30
    ld a, $73
    call $0c74
    ld a, $2e
    ld [$cc51], a
    jp $0c74


    call Call_00e_439a
    ret nz

    inc [hl]
    ld bc, $020b
    call Call_00e_4553
    ret nz

    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $00
    ld l, $a4
    set 7, [hl]
    ret


    inc e
    ld a, [de]
    rst $00
    add l
    ld a, h
    xor h
    ld a, h
    jp $f97c


    ld a, h
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $b4
    inc l
    ld [hl], $5a
    ld l, $90
    ld [hl], $46
    ld l, $b4
    ld [hl], $08
    ld l, $b0
    ld [hl], $00
    ld l, $b6
    ld a, [hl]
    ld [hl], $00
    or a
    jr z, jr_00e_7cc0

    ld b, $46
    call Call_00e_437c
    ld a, $01
    jp $2772


    ld c, $40
    call $1f60
    jr c, jr_00e_7cbb

    call Call_00e_43bf
    call $1fdb
    jr jr_00e_7cc0

jr_00e_7cbb:
    ld e, $85
    ld a, $02
    ld [de], a

jr_00e_7cc0:
    jp $275f


    call Call_00e_7e84
    jr nz, jr_00e_7ccc

    ld l, e
    inc [hl]
    jr jr_00e_7cc0

jr_00e_7ccc:
    call Call_00e_7ece
    jr nz, jr_00e_7cc0

    call Call_00e_439a
    call z, Call_00e_7eb5
    call $1e52
    ld c, a
    ld e, $b4
    ld a, [de]
    add c
    and $1f
    ld e, $89
    ld [de], a
    call Call_00e_7e8d
    call Call_00e_414c
    jr nz, jr_00e_7cc0

    ld e, $b4
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ld a, $c9
    call $0c74
    jr jr_00e_7cc0

    ld h, d
    ld l, e
    ld [hl], $00
    dec l
    inc [hl]
    call $041a
    cp $60
    ret nc

    inc [hl]
    ret


    inc e
    ld a, [de]
    rst $00
    ld a, [de]
    ld a, l
    inc h
    ld a, l
    ld c, l
    ld a, l
    ld e, d
    ld a, l
    ld l, e
    ld a, l
    ld a, [hl]
    ld a, l
    sub d
    ld a, l
    jp nz, Jump_00e_627d

    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $a4
    res 7, [hl]
    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $14
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $00
    ld l, $8d
    ld a, [hl]
    cp $78
    ld c, $20
    ld a, $d4
    jr c, jr_00e_7d40

    ld c, a
    ld a, $1c

jr_00e_7d40:
    ld [hl], c
    ld l, $b2
    ld [hl-], a
    ld [hl], $20
    ld l, $8b
    ld [hl], $20
    jp $1e39


    call Call_00e_439a
    ret nz

    ld [hl], $1e
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $fe
    ret


    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $0f
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    jp $1e30


    call Call_00e_439a
    jr nz, jr_00e_7dbf

    ld [hl], $05
    ld l, e
    inc [hl]
    ld b, $45
    call Call_00e_437c
    ld a, $02
    jp $2772


    call Call_00e_439a
    jr nz, jr_00e_7db5

    ld l, e
    inc [hl]
    call $042f
    and $03
    ld hl, $7edf
    rst AddAToHL
    ld e, $90
    ld a, [hl]
    ld [de], a
    ld h, d
    ld l, $b1
    call Call_00e_4439
    sub c
    add $02
    cp $05
    jr nc, jr_00e_7db2

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    jr nc, jr_00e_7db2

    ld l, $85
    inc [hl]
    inc l
    ld [hl], $08
    xor a
    jp $2772


jr_00e_7db2:
    call Call_00e_4430

jr_00e_7db5:
    ld a, [$cc00]
    and $07
    ld a, $a8
    call z, $0c74

jr_00e_7dbf:
    jp $275f


    call Call_00e_439a
    jr nz, jr_00e_7db5

    ld l, e
    xor a
    ld [hl-], a
    inc [hl]
    call Call_00e_4493
    jr jr_00e_7dbf

    inc e
    ld a, [de]
    rst $00
    push hl
    ld a, l
    pop af
    ld a, l
    ld [bc], a
    ld a, [hl]
    ld d, $7e
    ld a, [hli]
    ld a, [hl]
    jr c, jr_00e_7e5d

    ld c, b
    ld a, [hl]
    ld l, b
    ld a, [hl]
    db $76
    ld a, [hl]
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $a4
    res 7, [hl]
    jr jr_00e_7e27

    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $14
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $00
    jp $1e39


    call Call_00e_439a
    ret nz

    ld [hl], $1e
    ld l, e
    inc [hl]
    ld l, $8b
    ld [hl], $58
    ld l, $8d
    ld [hl], $78
    ld l, $8f
    ld [hl], $fe
    call Call_00e_439a
    jp nz, Jump_00e_441f

    ld [hl], $14
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call $1e30

Jump_00e_7e27:
jr_00e_7e27:
    jp $275f


    call Call_00e_439a
    jr nz, jr_00e_7e27

    ld [hl], $14
    ld l, e
    inc [hl]
    ld a, $04
    jp $2772


    call Call_00e_439a
    jr nz, jr_00e_7e27

    ld [hl], $20
    ld l, e
    inc [hl]
    ld a, $d2
    call $0c74
    jr jr_00e_7e27

    call Call_00e_439a
    jr z, jr_00e_7e62

    ld a, [hl]
    rrca
    jr nc, jr_00e_7e27

    ld b, $44
    call Call_00e_437c
    jr nz, jr_00e_7e27

    ld e, $86
    ld a, [de]
    dec a
    rrca

jr_00e_7e5d:
    ld l, $c2
    ld [hl], a
    jr jr_00e_7e27

jr_00e_7e62:
    ld [hl], $0c
    ld l, e
    inc [hl]
    jr jr_00e_7e27

    call Call_00e_439a
    jr nz, jr_00e_7e27

    ld [hl], $0f
    ld l, e
    inc [hl]
    ld a, $03
    jp $2772


    call Call_00e_439a
    jp nz, Jump_00e_7e27

    ld l, e
    xor a
    ld [hl-], a
    ld [hl], $0a
    jp $2772


Call_00e_7e84:
    ld a, [$cc00]
    and $07
    ret nz

    jp Jump_00e_43a3


Call_00e_7e8d:
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    jr nc, jr_00e_7e97

    cpl
    inc a

jr_00e_7e97:
    ld b, a
    ld l, $8d
    ldh a, [$af]
    sub [hl]
    jr nc, jr_00e_7ea1

    cpl
    inc a

jr_00e_7ea1:
    add b
    and $f0
    cp $50
    ret z

    cp $40
    ret z

    jr nc, jr_00e_7eb0

    ld a, c
    xor $10
    ld c, a

jr_00e_7eb0:
    ld b, $1e
    jp Jump_00e_4138


Call_00e_7eb5:
    ld [hl], $3c
    inc l
    ld a, [hl-]
    cp $0f
    ret c

    call $041a
    cp $60
    ret nc

    ld [hl], $5a
    ld b, $46
    call Call_00e_437c
    ld a, $01
    jp $2772


Call_00e_7ece:
    ld h, d
    ld l, $a1
    ld a, [hl]
    dec a
    ret z

    ld l, $b0
    bit 0, [hl]
    ret z

    ld [hl], $00
    ld l, $85
    inc [hl]
    ret


    ld e, d
    ld h, h
    ld l, [hl]
    ld a, b
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    db $0e

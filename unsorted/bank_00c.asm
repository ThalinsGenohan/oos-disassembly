; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX

Call_00c_4000:
    ld h, d
    ld l, $84
    inc [hl]
    ret


    ld h, d
    ld l, $85
    inc [hl]
    ret


Call_00c_400a:
Jump_00c_400a:
    xor a
    ld e, $ac
    call Call_00c_420d

jr_00c_4010:
    ld a, [de]
    ld c, a
    ld e, $ad
    ld a, [de]
    rlca
    ld b, $50
    jr nc, jr_00c_4028

    ld b, $78
    and $06
    jr nz, jr_00c_4028

    push bc
    ld bc, $0f01
    call $24b1
    pop bc

jr_00c_4028:
    call Call_00c_4161
    ret nz

    ld e, $ad
    ld a, [de]
    and $80
    ld [de], a
    ret


Jump_00c_4033:
    ld a, $02
    ld e, $ac
    call Call_00c_420d
    jr jr_00c_4010

    call Call_00c_400a
    call Call_00c_4043
    ret


Call_00c_4043:
    ldh [$8f], a
    xor a
    ldh [$8d], a
    jr jr_00c_4057

Jump_00c_404a:
    call Call_00c_400a
    call Call_00c_4051
    ret


Call_00c_4051:
Jump_00c_4051:
    ldh [$8f], a
    ld a, $01
    ldh [$8d], a

jr_00c_4057:
    ld e, $bf
    ld a, [de]
    and $07
    jr nz, jr_00c_40aa

    ld e, $8f
    ld a, [de]
    rlca
    jr c, jr_00c_4087

    ld bc, $05ff
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $ff
    jr c, jr_00c_408b

    ld bc, $0501
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $01
    jr c, jr_00c_408b

    call Call_00c_4123

jr_00c_4087:
    ldh a, [$8f]
    or a
    ret


jr_00c_408b:
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

jr_00c_40aa:
    pop hl
    ld a, [de]
    rrca
    jr c, jr_00c_40c9

    rrca
    jr c, jr_00c_40dd

    jr jr_00c_40cd

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
    jr jr_00c_40c9

jr_00c_40c9:
    ld b, $03
    jr jr_00c_40cf

jr_00c_40cd:
    ld b, $04

jr_00c_40cf:
    call $24af

jr_00c_40d2:
    call $249f
    jp $2e28


jr_00c_40d8:
    call $24bd
    jr jr_00c_40d2

jr_00c_40dd:
    call Call_00c_439a
    jr z, jr_00c_40d8

    ld a, [hl]
    and $07
    jr nz, jr_00c_40f5

    call Call_00c_4108
    jr z, jr_00c_40d8

    call $1e6f
    ld c, a
    ld b, $14
    call Call_00c_4138

jr_00c_40f5:
    ld h, d
    ld l, $87
    bit 0, [hl]
    ret z

    ld l, $a0
    ld a, [hl]
    sub $03
    jr nc, jr_00c_4103

    xor a

jr_00c_4103:
    inc a
    ld [hl], a
    jp $275f


Call_00c_4108:
    ld l, $8b
    ld a, [hl+]
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


Call_00c_4123:
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

Call_00c_4138:
Jump_00c_4138:
    ld hl, $425e
    xor a
    ldh [$8a], a
    push bc
    ld a, c
    call Call_00c_4213
    pop bc
    jr jr_00c_4161

Call_00c_4146:
    xor a
    call Call_00c_4204
    jr jr_00c_415b

Call_00c_414c:
    ld a, $01
    call Call_00c_4204
    jr jr_00c_415b

Call_00c_4153:
    xor a
    jr jr_00c_4158

Call_00c_4156:
Jump_00c_4156:
    ld a, $01

jr_00c_4158:
    call Call_00c_420b

Call_00c_415b:
jr_00c_415b:
    ld a, [de]
    ld c, a
    ld e, $90
    ld a, [de]
    ld b, a

Call_00c_4161:
jr_00c_4161:
    ld a, c
    ldh [$8c], a
    call $1fff
    xor a
    ldh [$8d], a
    ld e, $8a
    ldh a, [$8b]
    and $0c
    jr nz, jr_00c_4177

    call Call_00c_41e1
    jr jr_00c_41a1

jr_00c_4177:
    cp $0c
    jr z, jr_00c_41a1

    bit 3, a
    ldh a, [$8c]
    ld bc, $0060
    jr nz, jr_00c_4189

    xor $10
    ld bc, $ffa0

jr_00c_4189:
    cp $11
    jr nc, jr_00c_41a1

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
    jr nc, jr_00c_41a1

    ld a, $01
    ldh [$8d], a

jr_00c_41a1:
    ld e, $8c
    ld l, $c2
    ldh a, [$8b]
    and $03
    jr nz, jr_00c_41b0

    call Call_00c_41e1
    jr jr_00c_41dd

jr_00c_41b0:
    cp $03
    jr z, jr_00c_41dd

    rrca
    ldh a, [$8c]
    ld bc, $0060
    jr nc, jr_00c_41c1

    sub $10
    ld bc, $ffa0

jr_00c_41c1:
    add $08
    and $1f
    cp $11
    jr nc, jr_00c_41dd

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
    jr nc, jr_00c_41dd

    ld a, $01
    ldh [$8d], a

jr_00c_41dd:
    ldh a, [$8d]
    or a
    ret


Call_00c_41e1:
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
    jr nz, jr_00c_41fc

    ld c, $20
    ld e, $90
    ld a, [de]
    cp $32
    jr c, jr_00c_41f9

    ld c, $60

jr_00c_41f9:
    ld a, b
    cp c
    ret c

jr_00c_41fc:
    ldh [$8d], a
    ret


    ld hl, $429e
    jr jr_00c_4213

Call_00c_4204:
    ld e, $89
    ld hl, $429e
    jr jr_00c_4210

Call_00c_420b:
    ld e, $89

Call_00c_420d:
    ld hl, $425e

jr_00c_4210:
    ldh [$8a], a
    ld a, [de]

Call_00c_4213:
jr_00c_4213:
    push de
    call Call_00c_4253
    ld b, d
    rst $10
    ld d, h
    ld e, l
    ld h, b
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld a, $10
    ldh [$8b], a

jr_00c_4226:
    call Call_00c_4233
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_00c_4226

    pop de
    or a
    ret


Call_00c_4233:
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
    jr z, jr_00c_424a

    call $14a5
    add $01
    ret


jr_00c_424a:
    call $14a5
    add $01
    jp nc, $14bf

    ret


Call_00c_4253:
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

Call_00c_42de:
    ld a, $01
    jr jr_00c_42e7

Call_00c_42e2:
    xor a
    jr jr_00c_42e7

Call_00c_42e5:
    ld a, $02

jr_00c_42e7:
    call Call_00c_420b
    call Call_00c_4310
    ld a, c
    or a
    ret z

    cp $05
    jr z, jr_00c_4306

    ld hl, $432f
    bit 0, a
    jr nz, jr_00c_42fe

    ld hl, $431f

jr_00c_42fe:
    ld e, $89
    ld a, [de]
    rst $10
    ld a, [hl]
    ld [de], a
    or d
    ret


jr_00c_4306:
    ld e, $89
    ld a, [de]
    add $10
    and $1f
    ld [de], a
    or d
    ret


Call_00c_4310:
    ld c, $00
    ld b, a
    and $03
    jr z, jr_00c_4318

    inc c

jr_00c_4318:
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


Call_00c_435e:
Jump_00c_435e:
    call Call_00c_4364
    jp $1e03


Call_00c_4364:
Jump_00c_4364:
    ld h, d
    ld l, $90
    ld [hl], a
    ld l, $84
    ld [hl], $08
    ret


Call_00c_436d:
    call $2e15
    ret nz

    jr jr_00c_4377

Call_00c_4373:
    call $2e08
    ret nz

jr_00c_4377:
    ld [hl], b
    inc l
    inc [hl]
    xor a
    ret


Call_00c_437c:
Jump_00c_437c:
    call $3ea7
    ret nz

    ld [hl], b
    call $21fd
    ld l, $d6
    ld a, $80
    ld [hl+], a
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
    ld [hl+], a
    xor a
    ret


Call_00c_439a:
    ld h, d
    ld l, $86
    dec [hl]
    ret


    call Call_00c_439a
    ret nz

Call_00c_43a3:
Jump_00c_43a3:
    ld h, d
    ld l, $87
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


    call $1e52
    xor $10
    ld e, $89
    ld [de], a
    ret


Call_00c_43b4:
Jump_00c_43b4:
    call $1e52
    add $04
    and $18
    ld e, $89
    ld [de], a
    ret


Call_00c_43bf:
    call $1e52
    ld e, $89
    ld [de], a
    ret


Call_00c_43c6:
Jump_00c_43c6:
    call $042f
    and $18
    ld e, $89
    ld [de], a
    ret


Call_00c_43cf:
    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ret


Call_00c_43d8:
Jump_00c_43d8:
    ld h, d
    ld l, $89
    ld a, [hl-]
    ld e, a
    ld bc, $43ff
    call $006d
    ld a, [bc]
    cp $04
    jr c, jr_00c_43f9

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

jr_00c_43f9:
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

Jump_00c_441f:
    ld e, $9a
    ld a, [de]
    xor $80
    ld [de], a
    ret


Call_00c_4426:
    ld e, $82
    ld a, [de]
    ld b, a
    ld e, $84
    ld a, [de]
    cp $08
    ret


Call_00c_4430:
    call $1e6f
    ld e, $89
    ld [de], a
    jp $1fdb


Call_00c_4439:
    ld b, [hl]
    inc l
    ld c, [hl]
    ld l, $8b
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    ret


Call_00c_4446:
    ld b, a
    ld a, [$cc79]
    or a
    ld a, b
    jp z, Jump_00c_4051

    ld h, d
    ld l, $bf
    res 1, [hl]
    ld l, $a4
    set 7, [hl]
    push af
    call $1e5a
    ld c, a
    ld b, $14
    call Call_00c_4138
    pop af
    or a
    ret


Call_00c_4465:
Jump_00c_4465:
    ld h, d
    ld l, $8b
    ld a, [hl]
    add c
    cpl
    inc a
    ld c, a
    ldh a, [$a8]
    add c
    jr nc, jr_00c_4473

    ld a, c

jr_00c_4473:
    bit 7, a
    jr nz, jr_00c_4479

    ld a, $80

jr_00c_4479:
    ld l, $8f
    ld [hl], a
    ret


Call_00c_447d:
Jump_00c_447d:
    ld a, l
    and $c0
    or $29
    ld l, a

jr_00c_4483:
    ld [hl], $00
    ld a, l
    add $fb
    ld l, a
    res 7, [hl]
    ret


Call_00c_448c:
    ld a, $29
    call $211e
    jr jr_00c_4483

    ld a, $29
    call $2122
    jr jr_00c_4483

Call_00c_449a:
    call Call_00c_43a3
    jr z, jr_00c_44ad

    ld a, [hl]
    and $03
    ld hl, $44c7
    rst $10
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [de], a
    scf
    ret


jr_00c_44ad:
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


Call_00c_44d5:
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


Call_00c_44ea:
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

Jump_00c_4501:
    ld c, $20
    call $1f04
    ret nz

    ld l, $a4
    set 7, [hl]
    ld l, $84
    ld [hl], b
    ret


    jr z, jr_00c_4517

    sub $03
    ret c

    jp z, $27ce

jr_00c_4517:
    ld e, $84
    ld a, [de]
    rst $00
    inc sp
    ld b, l
    scf
    ld b, l
    scf
    ld b, l
    scf
    ld b, l
    scf
    ld b, l
    scf
    ld b, l
    scf
    ld b, l
    scf
    ld b, l
    jr c, jr_00c_4572

    ccf
    ld b, l
    ld l, c
    ld b, l
    ld a, c
    ld b, l
    ld a, $09
    ld [de], a
    ret


    ret


    call Call_00c_439a
    ret nz

    ld l, e
    inc [hl]
    ret


    call $042f
    cp $98
    ret nc

    ld c, a
    ldh a, [$aa]
    add c
    ld c, a
    ldh a, [$a8]
    ld b, a
    ldh a, [$95]
    res 7, a
    add b
    ld b, a
    call $226c
    ret nc

    ld c, l
    call $2081
    ld l, $86
    ld [hl], $30
    ld l, $84
    inc [hl]
    xor a
    call $2772
    jp $1e30


    call Call_00c_439a
    jr nz, jr_00c_458f

    ld l, e
    inc [hl]
    ld l, $a4

jr_00c_4572:
    set 7, [hl]
    ld a, $01
    jp $2772


    ld h, d
    ld l, $a1
    ld a, [hl]
    inc a
    jr z, jr_00c_4592

    dec a
    jr z, jr_00c_458f

    ld [hl], $00
    ld b, $19
    call Call_00c_437c
    jr nz, jr_00c_458f

    ld l, $c2
    inc [hl]

jr_00c_458f:
    jp $275f


jr_00c_4592:
    ld a, $08
    ld [de], a
    ld l, $a4
    res 7, [hl]
    call $042f
    and $1f
    add $18
    ld e, $86
    ld [de], a
    ld b, $03
    call $24af
    jp $1e39


    call Call_00c_4051
    jr z, jr_00c_45c9

    sub $03
    ret c

    jr z, jr_00c_45ba

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_45ba:
    ld e, $82
    ld a, [de]
    cp $04
    jr nz, jr_00c_45c6

    ld hl, $c6c9
    set 0, [hl]

jr_00c_45c6:
    jp $27ce


jr_00c_45c9:
    call Call_00c_44d5
    ld e, $84
    ld a, [de]
    rst $00
    add sp, $45
    ld h, c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld d, l
    ld b, [hl]
    scf
    ld b, [hl]
    bit 0, h
    ld h, c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld h, d
    ld b, [hl]
    sub e
    ld b, [hl]
    cp d
    ld b, [hl]
    jp nc, $1e46

    add d
    ld a, [de]
    cp $04
    jr nz, jr_00c_45f7

    ld hl, $c6c9
    bit 0, [hl]
    jp nz, $2e28

jr_00c_45f7:
    rrca
    ld a, $14
    jr nc, jr_00c_45fe

    ld a, $1e

jr_00c_45fe:
    call Call_00c_435e
    ld [hl], $0a
    ld l, $bf
    set 4, [hl]
    ld e, $82
    ld a, [de]
    ld hl, $4632
    rst $10
    ld e, $b2
    ld a, [hl]
    ld [de], a
    ld e, a
    ld bc, $1803
    call $434f
    ld a, e
    ld hl, $468b
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld e, $89
    ld a, b
    ld [de], a
    ld a, c
    ld hl, $46b6
    rst $10
    ld e, $b0
    ld a, [hl]
    ld [de], a
    jp Jump_00c_43d8


    rlca
    rlca
    inc bc
    inc bc
    ld bc, $f0fa
    call z, $20b7
    inc b
    ld a, $08
    ld [de], a
    ret


    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    call Call_00c_43d8
    call Call_00c_4146
    jp $275f


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld h, b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    rst $38
    ld b, h
    ret


    ret


    call $042f
    ld h, d
    ld l, $b2
    and [hl]
    ld l, $84
    jr nz, jr_00c_467f

    ld [hl], $0b
    ld l, $86
    ld [hl], $10
    ld l, $82
    ld a, [hl]
    cp $02
    ret c

    call Call_00c_43b4
    jp Jump_00c_43d8


jr_00c_467f:
    inc [hl]
    ld bc, $468b
    call $006d
    ld l, $86
    ld a, [bc]
    ld [hl], a
    ret


    ld e, $2d
    inc a
    ld c, e
    dec l
    inc a
    ld c, e
    ld e, d
    call Call_00c_439a
    ret nz

    ld l, e
    inc [hl]
    ld e, $03
    ld bc, $0318
    call $434f
    ld a, e
    ld hl, $46b6
    rst $10
    ld a, [hl]
    ld e, $b0
    ld [de], a
    ld e, $89
    ld a, c
    ld [de], a
    ld a, b
    or a
    call z, Call_00c_43b4
    jp Jump_00c_43d8


    add hl, de
    ld hl, $3129
    ld h, d
    ld l, $b0
    dec [hl]
    jr nz, jr_00c_46c4

    ld l, e
    ld [hl], $08
    ret


jr_00c_46c4:
    call Call_00c_414c
    jr nz, jr_00c_46cf

    call Call_00c_43c6
    call Call_00c_43d8

jr_00c_46cf:
    jp $275f


    call Call_00c_439a
    ret nz

    ld [hl], $20
    ld l, e
    ld [hl], $09
    ld b, $18
    call Call_00c_437c
    ret nz

    ld a, $51
    jp $0c74


    call Call_00c_4051
    jr z, jr_00c_4703

    sub $03
    ret c

    jr z, jr_00c_46f5

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_46f5:
    ld e, $99
    ld a, [de]
    or a
    jr z, jr_00c_4700

    ld h, a
    ld l, $d7
    ld [hl], $ff

jr_00c_4700:
    jp $27ce


jr_00c_4703:
    call Call_00c_44d5
    ld e, $84
    ld a, [de]
    rst $00
    jr nz, jr_00c_4753

    ld e, b
    ld b, a
    ld e, b
    ld b, a
    ld b, a
    ld b, a
    inc l
    ld b, a
    bit 0, h
    ld e, b
    ld b, a
    ld e, b
    ld b, a
    ld e, c
    ld b, a
    ld l, e
    ld b, a
    adc c
    ld b, a
    ld a, $14
    call Call_00c_435e
    ld l, $bf
    set 4, [hl]
    jp Jump_00c_478f


    ld a, [$ccf0]
    or a
    jp z, Jump_00c_478f

    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    call Call_00c_43d8
    call Call_00c_4153
    jp $275f


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld d, d
    ld b, a
    ld d, d
    ld b, a
    ld d, e
    ld b, a

Call_00c_4752:
    ret


jr_00c_4753:
    ld b, $0a
    jp Jump_00c_4501


    ret


    call Call_00c_439a
    jr z, jr_00c_4763

    call Call_00c_4156
    jr nz, jr_00c_4768

jr_00c_4763:
    ld e, $84
    ld a, $09
    ld [de], a

jr_00c_4768:
    jp $275f


    call Call_00c_478f
    call $1e52
    add $04
    and $18
    swap a
    rlca
    ld h, d
    ld l, $88
    cp [hl]
    ret nz

    ld b, $21
    call Call_00c_437c
    ret nz

    ld h, d
    ld l, $84
    ld [hl], $0a
    ret


    ld e, $99
    ld a, [de]
    or a
    jr nz, jr_00c_4768

Call_00c_478f:
Jump_00c_478f:
    call $042f
    and $03
    ld hl, $47a7
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld e, $84
    ld a, $08
    ld [de], a
    call Call_00c_43c6
    jp Jump_00c_43d8


    jr nc, jr_00c_47e9

    ld d, b
    ld h, b
    call Call_00c_4051
    jr z, jr_00c_47d5

    sub $03
    ret c

    jr z, jr_00c_47ba

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_47ba:
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00c_47d2

    ld b, $0b
    call Call_00c_4373
    ret nz

    inc [hl]
    ld e, $b0
    ld l, $8b
    ld a, [de]
    ld [hl+], a
    inc e
    inc l
    ld a, [de]
    ld [hl], a

jr_00c_47d2:
    jp $27ce


jr_00c_47d5:
    call Call_00c_4426
    jr nc, jr_00c_47eb

    rst $00
    di
    ld b, a
    inc de
    ld c, b
    inc de
    ld c, b
    ld sp, hl
    ld b, a
    inc de
    ld c, b
    bit 0, h
    inc de
    ld c, b

jr_00c_47e9:
    inc de
    ld c, b

jr_00c_47eb:
    ld a, b
    rst $00
    inc d
    ld c, b
    db $76
    ld c, b
    sub [hl]
    ld c, b
    call Call_00c_4961
    jp Jump_00c_4364


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    inc b
    ld c, b
    inc b
    ld c, b
    dec b
    ld c, b
    ret


    ld e, $82
    ld a, [de]
    ld hl, $4810
    rst $10
    ld b, [hl]
    jp Jump_00c_4501


    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret


    ld a, [de]
    sub $08
    rst $00
    jr nz, @+$4a

    ld [hl], $48
    ld d, b
    ld c, b
    ld h, [hl]
    ld c, b
    call Call_00c_439a
    ret nz

    inc [hl]
    call Call_00c_4912
    ret nz

    call $2081
    ld l, $84
    inc [hl]
    xor a
    call $2772
    jp $1e03


    ld h, d
    ld l, $a1
    ld a, [hl]
    dec a
    jr nz, jr_00c_484d

    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $90
    ld [hl], $14
    call Call_00c_43b4
    call Call_00c_4973

jr_00c_484d:
    jp $275f


    call Call_00c_439a
    jp nz, Jump_00c_4904

Jump_00c_4856:
    call Call_00c_4000
    ld l, $a4
    res 7, [hl]
    ld l, $90
    ld [hl], $05
    ld a, $02
    jp $2772


    ld h, d
    ld l, $a1
    ld a, [hl]
    dec a
    jr nz, jr_00c_484d

    ld l, e
    ld [hl], $08
    call Call_00c_4961
    jp $1e39


    ld a, [de]
    sub $08
    rst $00
    jr nz, jr_00c_48c4

    ld [hl], $48
    add d
    ld c, b
    ld h, [hl]
    ld c, b
    call Call_00c_439a
    jp z, Jump_00c_4856

    call $042f
    cp $14
    jp nc, Jump_00c_4904

    call Call_00c_43b4
    jp Jump_00c_4904


    ld a, [de]
    sub $08
    rst $00
    and h
    ld c, b
    cp d
    ld c, b
    jp z, $e448

    ld c, b
    di
    ld c, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld a, [hl]
    and $30
    add $60
    ld [hl], a
    ld e, $8b
    ld l, $b0
    ld a, [de]
    ld [hl+], a
    ld e, $8d
    ld a, [de]
    ld [hl], a
    ret


    call Call_00c_439a
    ret nz

    inc l
    ld [hl], $06
    ld l, e
    inc [hl]
    xor a

jr_00c_48c4:
    call $2772
    jp $1e03


    ld e, $a1
    ld a, [de]
    dec a
    jr nz, jr_00c_48f0

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $90
    ld [hl], $19
    call Call_00c_43b4
    call Call_00c_4973
    jr jr_00c_48f0

    call Call_00c_439a
    jp z, Jump_00c_4856

    call Call_00c_497e
    call Call_00c_4156

jr_00c_48f0:
    jp $275f


    ld e, $a1
    ld a, [de]
    dec a
    jr nz, jr_00c_48f0

    ld e, $84
    ld a, $09
    ld [de], a
    call Call_00c_4961
    jp $1e39


Jump_00c_4904:
    ld a, $01
    call Call_00c_4204
    jp nz, Jump_00c_4856

    call $1fdb
    jp $275f


Call_00c_4912:
    ld a, b
    or a
    jr nz, jr_00c_4956

    ld de, $d00b
    call $2059
    ld c, a
    ld e, $08
    ld a, [de]
    rlca
    rlca
    ld hl, $4946
    rst $10
    ld a, [$cc00]
    and $03
    rst $10
    ldh a, [$ad]
    ld d, a
    ld a, c
    add [hl]
    ld c, a
    and $f0
    cp $80
    jr nc, jr_00c_4944

    ld a, c
    and $0f
    cp $0a
    jr nc, jr_00c_4944

    ld b, $ce
    ld a, [bc]
    or a
    ret


jr_00c_4944:
    or d
    ret


    ret nc

    ret nz

    or b
    or b
    inc bc
    inc b
    dec b
    dec b
    jr nc, @+$42

    ld d, b
    ld d, b
    db $fd
    db $fc
    ei
    ei

jr_00c_4956:
    call $042f
    and $77
    ld c, a
    ld b, $ce
    ld a, [bc]
    or a
    ret


Call_00c_4961:
    call $042f
    and $03
    ld hl, $496f
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    db $10
    jr nc, jr_00c_49c2

    ld [hl], b

Call_00c_4973:
    call $042f
    ld e, $86
    and $38
    add $70
    ld [de], a
    ret


Call_00c_497e:
    call Call_00c_43a3
    ret nz

    ld [hl], $06
    call $1e52
    jp $1f92


    call Call_00c_4051
    jr z, jr_00c_49a8

    sub $03
    ret c

    jr z, jr_00c_4999

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_4999:
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00c_49a5

    ld hl, $c6c9
    set 1, [hl]

jr_00c_49a5:
    jp $27ce


jr_00c_49a8:
    call Call_00c_44d5
    ld e, $84
    ld a, [de]
    rst $00
    jp $0049


    ld c, d
    nop
    ld c, d
    db $f4
    ld c, c
    reti


    ld c, c
    bit 0, h
    nop
    ld c, d
    nop
    ld c, d
    ld bc, $154a

jr_00c_49c2:
    ld c, d
    ld h, d
    ld l, $bf
    set 4, [hl]
    ld l, $82
    bit 1, [hl]
    jr z, jr_00c_49d6

    ld a, [$c6c9]
    bit 1, a
    jp nz, $2e28

jr_00c_49d6:
    jp Jump_00c_4a49


    ld a, [$ccf0]
    or a
    jp z, Jump_00c_4a79

    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    call Call_00c_43d8
    call Call_00c_4153
    jp $275f


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld b, h
    ret


    ret


    call Call_00c_439a
    jr z, jr_00c_4a0b

    call Call_00c_4156
    jr nz, jr_00c_4a12

jr_00c_4a0b:
    call Call_00c_4000
    ld l, $86
    ld [hl], $08

jr_00c_4a12:
    jp $275f


    call Call_00c_439a
    ret nz

    call Call_00c_43c6
    call Call_00c_4a79
    jr jr_00c_4a61

    call Call_00c_4446
    jr z, jr_00c_4a31

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_4a31:
    ld e, $84
    ld a, [de]
    rst $00
    ld c, c
    ld c, d
    nop
    ld c, d
    nop
    ld c, d
    db $f4
    ld c, c
    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, d
    ld bc, $574a
    ld c, d

Jump_00c_4a49:
    ld e, $90
    ld a, $14
    ld [de], a
    call Call_00c_43c6
    call Call_00c_4a79
    jp $1e03


    call Call_00c_439a
    ret nz

    call Call_00c_4a8b
    call Call_00c_4a79

jr_00c_4a61:
    ld h, d
    ld l, $b0
    inc [hl]
    bit 0, [hl]
    ret z

    call $1e52
    add $04
    and $18
    ld h, d
    ld l, $89
    cp [hl]
    ret nz

    ld b, $1a
    jp Jump_00c_437c


Call_00c_4a79:
Jump_00c_4a79:
    call $042f
    and $3f
    add $30
    ld h, d
    ld l, $86
    ld [hl], a
    ld l, $84
    ld [hl], $08
    jp Jump_00c_43d8


Call_00c_4a8b:
    call $042f
    and $03
    jp z, Jump_00c_43b4

    jp Jump_00c_43c6


    call Call_00c_4051
    jr z, jr_00c_4ab4

    sub $03
    ret c

    jr z, jr_00c_4aa5

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_4aa5:
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00c_4ab1

    ld hl, $c6c9
    set 3, [hl]

jr_00c_4ab1:
    jp $27ce


jr_00c_4ab4:
    call Call_00c_44d5
    jr z, jr_00c_4abe

    ld e, $90
    ld a, $28
    ld [de], a

jr_00c_4abe:
    ld e, $84
    ld a, [de]
    rst $00
    ret c

    ld c, d
    dec h
    ld c, e
    dec h
    ld c, e
    dec h
    ld c, e
    ld [$254b], sp
    ld c, e
    dec h
    ld c, e
    dec h
    ld c, e
    ld h, $4b
    ld c, e
    ld c, e
    ld e, b
    ld c, e
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00c_4ae7

    ld hl, $c6c9
    bit 3, [hl]
    jp nz, $2e28

jr_00c_4ae7:
    ld e, $82
    ld a, [de]
    ld hl, $4b05
    rst $10
    ld e, $b0
    ld a, [hl]
    ld [de], a
    call $1e03
    call $042f
    and $30
    ld c, a
    ld h, d
    ld l, $bf
    set 4, [hl]
    ld l, $84
    jp Jump_00c_4b35


    rlca
    inc bc
    ld bc, $f0fa
    call z, $cab7
    ld a, c
    ld c, e
    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    ld b, $04
    call Call_00c_4ba2
    call Call_00c_4153
    jp $275f


    ret


    ld e, $b0
    ld a, [de]
    ld b, a
    ld c, $30
    call $434f
    or b
    ld h, d
    ld l, $84
    jr z, jr_00c_4b3f

Jump_00c_4b35:
    ld [hl], $09
    ld l, $86
    ld a, $30
    add c
    ld [hl], a
    jr jr_00c_4b80

jr_00c_4b3f:
    ld [hl], $0a
    ld l, $86
    ld [hl], $08
    call Call_00c_43b4
    jp Jump_00c_43d8


    call Call_00c_439a
    jr z, jr_00c_4b79

    call Call_00c_4156
    jr z, jr_00c_4b80

jr_00c_4b55:
    jp $275f


    call Call_00c_439a
    jr nz, jr_00c_4b55

    ld b, $1b
    call Call_00c_437c
    jr nz, jr_00c_4b79

    call $042f
    and $30
    add $30
    ld e, $86
    ld [de], a
    ld h, d
    ld l, $90
    ld [hl], $14
    ld l, $84
    ld [hl], $09
    jr jr_00c_4b55

jr_00c_4b79:
    ld e, $84
    ld a, $08
    ld [de], a
    jr jr_00c_4b55

jr_00c_4b80:
    call Call_00c_4bb0
    ld b, $0e
    call $1fac
    jr nc, jr_00c_4b9b

    call $1e52
    add $04
    and $18
    ld h, d
    ld l, $89
    cp [hl]
    ld a, $28
    ld b, $04
    jr z, jr_00c_4b9f

jr_00c_4b9b:
    ld a, $14
    ld b, $00

jr_00c_4b9f:
    ld l, $90
    ld [hl], a

Call_00c_4ba2:
    ld h, d
    ld l, $89
    ld a, [hl-]
    swap a
    rlca
    add b
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00c_4bb0:
    call $042f
    ld h, d
    ld l, $b0
    and [hl]
    jp nz, Jump_00c_43c6

    jp Jump_00c_43b4


    dec a
    ret z

    dec a
    ret z

    call $275f
    call Call_00c_4426
    jr nc, jr_00c_4bda

    rst $00
    add sp, $4b
    dec b
    ld c, h
    dec b
    ld c, h
    dec b
    ld c, h
    dec b
    ld c, h
    dec b
    ld c, h
    dec b
    ld c, h
    dec b
    ld c, h

jr_00c_4bda:
    ld a, b
    rst $00
    ld b, $4c
    ld e, l
    ld c, h
    ld e, l
    ld c, h
    db $db
    ld c, h
    db $db
    ld c, h
    or $4c
    ld a, b
    sub $03
    cp $02
    call c, Call_00c_4d62
    ld e, $82
    ld a, [de]
    or a
    ld a, $08
    jr nz, jr_00c_4bff

    ld a, $01
    call $2772
    ld a, $01

jr_00c_4bff:
    ld e, $be
    ld [de], a
    jp Jump_00c_435e


    ret


    ld a, [de]
    sub $08
    rst $00
    ld [de], a
    ld c, h
    ld e, $4c
    dec sp
    ld c, h
    ld c, [hl]
    ld c, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld a, $01
    jp $2772


    ld b, $0e
    call Call_00c_4df7
    ret nc

    call $4d94
    ret nz

    ld h, d
    ld l, $84
    ld [hl], $0a
    ld l, $86
    ld [hl], $18
    ld a, $71
    call $0c74
    ld a, $02
    jp $2772


    ld e, $86
    ld a, [de]
    rrca
    call c, Call_00c_414c
    call Call_00c_439a
    jr nz, jr_00c_4c4b

    ld l, $84
    ld [hl], $0b

jr_00c_4c4b:
    jp $275f


    call Call_00c_414c
    jr nz, jr_00c_4c4b

    ld e, $84
    ld a, $09
    ld [de], a
    ld a, $01
    jp $2772


    ld a, [de]
    sub $08
    rst $00
    ld l, e
    ld c, h
    ld a, e
    ld c, h
    sbc c
    ld c, h
    add $4c
    jp nc, Jump_00c_624c

    ld l, e
    inc [hl]
    ld l, $82
    ld a, [hl]
    dec a
    ld a, $3c
    jr z, jr_00c_4c78

    ld a, $78

jr_00c_4c78:
    ld l, $b0
    ld [hl], a
    ld b, $0d
    call Call_00c_4df7
    ret nc

    call $4d94
    ret nz

    ld a, $01
    call Call_00c_4204
    ret nz

    call Call_00c_4000
    ld e, $b0
    ld l, $90
    ld a, [de]
    ld [hl], a
    ld a, $75
    jp $0c74


    call Call_00c_414c
    ld h, d
    jr z, jr_00c_4cb4

    ld l, $89
    bit 3, [hl]
    ld b, $58
    ld l, $8b
    jr z, jr_00c_4cad

    ld b, $78
    ld l, $8d

jr_00c_4cad:
    ld a, [hl]
    sub b
    add $07
    cp $0f
    ret nc

jr_00c_4cb4:
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    ld l, $90
    ld [hl], $1e
    ld l, $84
    inc [hl]
    ld a, $50
    jp $0c74


    call Call_00c_414c
    ret nz

    call Call_00c_4000
    ld l, $86
    ld [hl], $10
    ret


    call Call_00c_439a
    ret nz

    ld l, $84
    ld [hl], $09
    ret


    ld a, [de]
    sub $08
    rst $00
    pop hl
    ld c, h
    ld a, [$cc00]
    and $01
    call z, Call_00c_4d55
    ld h, d
    ld l, $b0
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld e, $89
    jp $20cc


    ld a, [de]
    sub $08
    rst $00
    inc b
    ld c, l
    dec bc
    ld c, l
    ld a, [hl+]
    ld c, l
    ld b, b
    ld c, l
    ld c, h
    ld c, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $b0
    ld [hl], $50
    ld b, $0e
    call Call_00c_4df7
    ret nc

    call $4d94
    ret nz

    ld a, $01
    call Call_00c_4204
    ret nz

    ld h, d
    ld e, $b0
    ld l, $90
    ld a, [de]
    ld [hl], a
    ld l, $84
    inc [hl]
    ld a, $75
    jp $0c74


    call Call_00c_414c
    ret nz

    call Call_00c_4000
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    ld l, $90
    ld [hl], $28
    ld a, $50
    jp $0c74


    call Call_00c_414c
    ret nz

    call Call_00c_4000
    ld l, $86
    ld [hl], $10
    ret


    call Call_00c_439a
    ret nz

    ld l, $84
    ld [hl], $09
    ret


Call_00c_4d55:
    ld e, $82
    ld a, [de]
    cp $03
    ld e, $89
    jp nz, Jump_00c_4e24

    jp Jump_00c_4e20


Call_00c_4d62:
    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ld e, $8b
    ld a, [de]
    ld c, a
    and $f0
    add $08
    ld e, $b0
    ld [de], a
    ld b, a
    ld a, c
    and $0f
    swap a
    add $08
    ld e, $b1
    ld [de], a
    ld c, a
    ld e, $8d
    ld a, [de]
    ld e, $b2
    ld [de], a
    ld e, $89
    jp $20cc


    ldh a, [rP1]
    nop
    db $10
    stop
    nop
    ldh a, [$62]
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ldh a, [$af]
    sub c
    add $04
    cp $09
    jr nc, jr_00c_4dac

    ldh a, [$ae]
    sub b
    add $04
    cp $09
    ret c

jr_00c_4dac:
    ld l, $89
    call Call_00c_4dde
    ld a, [hl]
    rrca
    rrca
    ld hl, $4d8c
    rst $10
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    push de
    ld d, $ce

jr_00c_4dbe:
    call Call_00c_4dcc
    jr nz, jr_00c_4dca

    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_00c_4dbe

jr_00c_4dca:
    pop de
    ret


Call_00c_4dcc:
    ld a, b
    add h
    ld b, a
    and $f0
    ld e, a
    ld a, c
    add l
    ld c, a
    and $f0
    swap a
    or e
    ld e, a
    ld a, [de]
    or a
    ret


Call_00c_4dde:
    ld e, b
    ldh a, [$ae]
    bit 3, [hl]
    jr z, jr_00c_4de8

    ld e, c
    ldh a, [$af]

jr_00c_4de8:
    sub e
    jr nc, jr_00c_4ded

    cpl
    inc a

jr_00c_4ded:
    swap a
    and $0f
    jr nz, jr_00c_4df4

    inc a

jr_00c_4df4:
    ldh [$8b], a
    ret


Call_00c_4df7:
    ld c, b
    sla c
    inc c
    ld e, $00
    ld h, d
    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add b
    cp c
    ld l, $8b
    ldh a, [$ae]
    jr c, jr_00c_4e15

    ld e, $18
    sub [hl]
    add b
    cp c
    ld l, $8d
    ldh a, [$af]
    ret nc

jr_00c_4e15:
    cp [hl]
    ld a, e
    jr c, jr_00c_4e1b

    xor $10

jr_00c_4e1b:
    ld l, $89
    ld [hl], a
    scf
    ret


Jump_00c_4e20:
    ld a, [de]
    inc a
    jr jr_00c_4e26

Jump_00c_4e24:
    ld a, [de]
    dec a

jr_00c_4e26:
    and $1f
    ld [de], a
    ret


    call Call_00c_5018
    or a
    jr z, jr_00c_4e3b

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_4e3b:
    call Call_00c_44d5
    jr z, jr_00c_4e45

    ld e, $90
    ld a, $32
    ld [de], a

jr_00c_4e45:
    call Call_00c_4426
    jr nc, jr_00c_4e5b

    rst $00
    ld h, l
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    ld a, b
    ld c, [hl]
    adc a
    ld c, [hl]
    bit 0, h
    cp [hl]
    ld c, [hl]
    cp [hl]
    ld c, [hl]

jr_00c_4e5b:
    ld a, b
    rst $00
    cp a
    ld c, [hl]
    ld de, $684f
    ld c, a
    sbc e
    ld c, a
    ld e, $88
    ld a, $ff
    ld [de], a
    dec b
    ld a, $0f
    jp z, Jump_00c_4364

    ld h, d
    ld l, $bf
    set 4, [hl]
    jp Jump_00c_435e


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    add e
    ld c, [hl]
    add e
    ld c, [hl]
    add h
    ld c, [hl]
    ret


    ld e, $82
    ld a, [de]
    ld hl, $4eba
    rst $10
    ld b, [hl]
    jp Jump_00c_4501


    ld a, [$ccf0]
    or a
    jr nz, jr_00c_4ea6

    ld e, $82
    ld a, [de]
    ld hl, $4eba
    rst $10
    ld e, $84
    ld a, [hl]
    ld [de], a
    ld e, $90
    ld a, $0f
    ld [de], a
    ret


jr_00c_4ea6:
    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    call Call_00c_4ff6
    call Call_00c_4153
    jp Jump_00c_500a


    add hl, bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ret


    ld a, [de]
    sub $08
    rst $00
    ret


    ld c, [hl]
    call nc, $fc4e
    ld c, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    set 7, [hl]
    ld b, $0a
    call $1fac
    jr nc, jr_00c_4eee

    ld e, $87
    ld a, [de]
    or a
    jr nz, jr_00c_4eee

    call Call_00c_43b4
    call Call_00c_4000
    ld l, $90
    ld [hl], $32
    jp Jump_00c_4ff6


jr_00c_4eee:
    call Call_00c_43a3
    dec l
    dec [hl]
    call nz, Call_00c_4156
    jp z, Jump_00c_4fe6

jr_00c_4ef9:
    jp $275f


    call Call_00c_4156
    jp nz, Jump_00c_500a

    ld h, d
    ld l, $84
    dec [hl]
    ld l, $90
    ld [hl], $0f
    ld l, $87
    ld [hl], $40
    jp Jump_00c_4fe6


    ld a, [de]
    sub $08
    rst $00
    rra
    ld c, a
    inc l
    ld c, a
    ld c, d
    ld c, a
    call nc, $fc4e
    ld c, [hl]
    ld a, $09
    ld [de], a
    call $042f
    ld e, $86
    and $38
    inc a
    ld [de], a
    ret


    call Call_00c_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    set 7, [hl]
    ld l, $95
    inc [hl]
    ld a, $59
    call $0c74
    call $1dfa
    ld c, $08
    jp Jump_00c_4465


    ld c, $0e
    call $1f04
    ret nz

    ld l, $94
    ld [hl+], a
    ld [hl], a
    ld l, $84
    inc [hl]
    ld l, $bf
    set 4, [hl]
    call $1e03
    ld a, $52
    call $0c74
    call Call_00c_4fe6
    jr jr_00c_4ef9

    ld a, [de]
    sub $08
    rst $00
    ld [hl], h
    ld c, a
    add l
    ld c, a
    call nc, $fc4e
    ld c, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $32
    ld l, $86
    ld [hl], $08
    call Call_00c_43b4
    jp Jump_00c_4ff6


    call Call_00c_439a
    jr nz, jr_00c_4f95

    ld l, e
    ld [hl], $0b
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    set 7, [hl]

jr_00c_4f95:
    call Call_00c_4156
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    and a
    ld c, a
    pop bc
    ld c, a
    call nc, $fc4e
    ld c, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $94
    ld a, $fe
    ld [hl+], a
    ld [hl], $fe
    ld l, $90
    ld [hl], $1e
    ld l, $89
    ld a, [$d008]
    swap a
    rrca
    ld [hl], a
    jp Jump_00c_4ff6


    ld c, $0e
    call $232b
    jr c, jr_00c_4fdf

    ld a, $52
    call z, $0c74
    ld e, $95
    ld a, [de]
    or a
    jr nz, jr_00c_4fdc

    ld h, d
    ld l, $a4
    set 7, [hl]
    ld l, $b0
    set 7, [hl]

jr_00c_4fdc:
    jp Jump_00c_4156


jr_00c_4fdf:
    call Call_00c_4000
    ld l, $90
    ld [hl], $0f

Call_00c_4fe6:
Jump_00c_4fe6:
    ld bc, $1870
    call $434f
    ld e, $89
    ld a, b
    ld [de], a
    ld e, $86
    ld a, c
    add $70
    ld [de], a

Call_00c_4ff6:
Jump_00c_4ff6:
    ld h, d
    ld l, $89
    ld a, [hl]
    and $0f
    ret z

    ld a, [hl-]
    and $10
    swap a
    xor $01
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Jump_00c_500a:
    ld h, d
    ld l, $a0
    ld a, [hl]
    sub $03
    jr nc, jr_00c_5013

    xor a

jr_00c_5013:
    inc a
    ld [hl], a
    jp $275f


Call_00c_5018:
    ld h, d
    ld l, $b0
    bit 7, [hl]
    ret z

    jp Jump_00c_4051


    call Call_00c_4051
    jr z, jr_00c_5043

    sub $03
    ret c

    jp z, $27ce

    ld e, $aa
    ld a, [de]
    cp $9b
    ret nz

    ld h, d
    ld l, $84
    ld a, $0a
    cp [hl]
    ret z

    ld [hl], a
    ld l, $86
    ld [hl], $1e
    ld l, $ae
    ld [hl], $00
    ret


jr_00c_5043:
    ld e, $84
    ld a, [de]
    rst $00
    ld e, l
    ld d, b
    ld l, [hl]
    ld d, b
    ld l, [hl]
    ld d, b
    ld h, d
    ld d, b
    ld l, [hl]
    ld d, b
    bit 0, h
    ld l, [hl]
    ld d, b
    ld l, [hl]
    ld d, b
    ld l, a
    ld d, b
    add h
    ld d, b
    sub c
    ld d, b
    ld a, $14
    jp Jump_00c_435e


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld l, l
    ld d, b
    ld l, l
    ld d, b
    rst $38
    ld b, h
    ret


    ret


    ld a, $09
    ld [de], a
    ld bc, $187f
    call $434f
    ld e, $89
    ld a, b
    ld [de], a
    ld e, $86
    ld a, $40
    add c
    ld [de], a
    jr jr_00c_508e

    call Call_00c_439a
    jr z, jr_00c_509b

    call Call_00c_4156
    jr z, jr_00c_509b

jr_00c_508e:
    jp $275f


    call Call_00c_439a
    ret nz

    ld bc, $3102
    jp $2e3a


jr_00c_509b:
    ld e, $84
    ld a, $08
    ld [de], a
    jr jr_00c_508e

    call Call_00c_4051
    jr z, jr_00c_50bf

    sub $03
    ret c

    ld e, $aa
    ld a, [de]
    res 7, a
    sub $15
    cp $02
    jr nc, jr_00c_50bf

    ld e, $84
    ld a, [de]
    cp $09
    jr nc, jr_00c_50bf

    ld a, $09
    ld [de], a

jr_00c_50bf:
    ld e, $84
    ld a, [de]
    rst $00
    reti


    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    add sp, $50
    pop af
    ld d, b
    ld b, $51
    call Call_00c_5197
    ld e, $89
    ld [de], a
    ld a, $28
    call Call_00c_4364
    jp $1e27


    ret


    call Call_00c_516a
    call $1fdb
    jp $275f


    ld bc, $0502
    call $24b1
    ret nz

    ld e, $98
    ld a, $40
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    call Call_00c_4000
    jp $1e39


    ld a, $21
    call $2122
    ld a, [hl]
    inc a
    ret nz

    ld e, $81
    ld a, [de]
    cp $13
    ld b, $01
    call z, Call_00c_437c
    jp $2e28


    jr z, jr_00c_5135

    sub $03
    ret c

    ld e, $aa
    ld a, [de]
    res 7, a
    sub $15
    cp $02
    jr nc, jr_00c_5135

    ld e, $84
    ld a, [de]
    cp $09
    jr nc, jr_00c_5135

    ld a, $09
    ld [de], a

jr_00c_5135:
    ld e, $84
    ld a, [de]
    rst $00
    ld c, a
    ld d, c
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    rst $20
    ld d, b
    bit 0, h
    rst $20
    ld d, b
    rst $20
    ld d, b
    ld h, c
    ld d, c
    pop af
    ld d, b
    ld b, $51
    call $042f
    and $18
    add $04
    ld e, $89
    ld [de], a
    ld a, $1e
    call Call_00c_4364
    jp $1e27


    call Call_00c_42e2
    call $1fdb
    jp $275f


Call_00c_516a:
    ld a, $01
    ldh [$8a], a
    ld e, $89
    ld a, [de]
    sub $08
    and $18
    call Call_00c_51bf
    jr c, jr_00c_5187

    call Call_00c_51ac
    ret nz

    ld e, $89
    ld a, [de]
    sub $08
    and $18
    ld [de], a
    ret


jr_00c_5187:
    ld e, $89
    ld a, [de]
    call Call_00c_51bf
    ret nc

    ld e, $89
    ld a, [de]
    add $08
    and $18
    ld [de], a
    ret


Call_00c_5197:
    xor a
    call Call_00c_51bf
    ld a, $08
    ret c

    call Call_00c_51bf
    ld a, $10
    ret c

    call Call_00c_51bf
    ld a, $18
    ret c

    xor a
    ret


Call_00c_51ac:
    ld e, $89
    ld a, [de]
    bit 3, a
    jr nz, jr_00c_51b9

    ld e, $8b
    ld a, [de]
    and $07
    ret


jr_00c_51b9:
    ld e, $8d
    ld a, [de]
    and $07
    ret


Call_00c_51bf:
    and $18
    rrca
    ld hl, $51e3
    rst $10
    ld e, $8b
    ld a, [de]
    add [hl]
    ld b, a
    inc hl
    ld e, $8d
    ld a, [de]
    add [hl]
    ld c, a
    push hl
    push bc
    call $14f0
    pop bc
    pop hl
    ret c

    inc hl
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl]
    add c
    ld c, a
    jp $14f0


    rst $30
    db $fc
    nop
    rlca
    db $fc
    ld [$0007], sp
    ld [$00fc], sp
    rlca
    db $fc
    rst $30
    rlca
    nop
    call Call_00c_4051
    jr z, jr_00c_5268

    sub $03
    ret c

    jp z, $27ce

    dec a
    jr nz, jr_00c_524b

    ld h, d
    ld l, $b0
    bit 0, [hl]
    jr z, jr_00c_5210

    ld e, $8f
    ld a, [de]
    rlca
    jr c, jr_00c_5210

    ld [hl], $00

jr_00c_5210:
    ld e, $aa
    ld a, [de]
    cp $8d
    jr z, jr_00c_521f

    res 7, a
    sub $01
    cp $03
    jr nc, jr_00c_5268

jr_00c_521f:
    ld e, $84
    ld a, [de]
    cp $0b
    ret z

    ld [hl], $01
    ld bc, $fe80
    call $2358
    ld l, $84
    ld [hl], $0b
    ld l, $a5
    ld [hl], $4e
    ld l, $86
    ld [hl], $b4
    ld l, $ac
    ld a, [hl]
    xor $10
    ld l, $89
    ld [hl], a
    ld a, $52
    call $0c74
    ld a, $01
    jp $2772


jr_00c_524b:
    ld e, $b0
    ld a, [de]
    or a
    jp z, Jump_00c_404a

    ld c, $18
    call $232b
    ld a, $01
    jr nc, jr_00c_525c

    xor a

jr_00c_525c:
    ld e, $ad
    ld [de], a
    ld e, $ac
    ld a, [de]
    ld c, a
    ld b, $23
    jp Jump_00c_4138


jr_00c_5268:
    ld e, $84
    ld a, [de]
    rst $00
    add [hl]
    ld d, d
    adc [hl]
    ld d, d
    adc [hl]
    ld d, d
    adc [hl]
    ld d, d
    adc [hl]
    ld d, d
    bit 0, h
    adc [hl]
    ld d, d
    adc [hl]
    ld d, d
    adc a
    ld d, d
    and [hl]
    ld d, d
    cp c
    ld d, d
    pop de
    ld d, d
    nop
    ld d, e
    call Call_00c_531e
    ld a, $0a
    jp Jump_00c_435e


    ret


    ld b, $08
    call $1fac
    jp c, Jump_00c_532f

    call Call_00c_439a
    jp z, Jump_00c_531e

    call Call_00c_4156
    jp z, Jump_00c_531e

jr_00c_52a3:
    jp $275f


    call Call_00c_43a3
    call Call_00c_5340
    call Call_00c_4156
    jr nz, jr_00c_52a3

    call Call_00c_4000
    ld l, $86
    ld [hl], $1e
    ret


    ld b, $08
    call $1fac
    jp c, Jump_00c_532f

    call Call_00c_439a
    jr nz, jr_00c_52a3

    ld l, $84
    ld [hl], $08
    ld l, $90
    ld [hl], $0a
    jp Jump_00c_531e


    call Call_00c_439a
    jr nz, jr_00c_52ed

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld l, $a5
    ld [hl], $17
    ld l, $8d
    inc [hl]
    ld bc, $fe80
    call $2358
    xor a
    jp $2772


jr_00c_52ed:
    ld a, [hl]
    cp $3c
    jr nc, jr_00c_52a3

    and $06
    rrca
    ld hl, $5350
    rst $10
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [de], a
    jr jr_00c_52a3

    call Call_00c_4156
    call $275f
    ld c, $18
    call $1f04
    ret nz

    ld e, $84
    ld a, $08
    ld [de], a
    ld b, $10
    call $1fac
    jr c, jr_00c_532f

    ld e, $90
    ld a, $0a
    ld [de], a
    ret


Call_00c_531e:
Jump_00c_531e:
    ld bc, $1830
    call $434f
    ld e, $89
    ld a, b
    ld [de], a
    ld e, $86
    ld a, $30
    add c
    ld [de], a
    ret


Jump_00c_532f:
jr_00c_532f:
    call Call_00c_43b4
    ld h, d
    ld l, $84
    ld [hl], $09
    ld l, $87
    ld [hl], $96
    ld l, $90
    ld [hl], $0a
    ret


Call_00c_5340:
    ld e, $87
    ld a, [de]
    and $03
    ret nz

    ld e, $90
    ld a, [de]
    cp $3c
    ret nc

    add $05
    ld [de], a
    ret


    ld bc, $ffff
    ld bc, $1628
    sub $03
    ret c

    ld e, $aa
    ld a, [de]
    cp $80
    jr nz, jr_00c_536c

    ld a, $39
    call $236b
    jr z, jr_00c_536c

    ld a, $b4
    ld [$cc74], a

jr_00c_536c:
    ld e, $84
    ld a, [de]
    rst $00
    add d
    ld d, e
    sub d
    ld d, e
    sub d
    ld d, e
    sub d
    ld d, e
    sub d
    ld d, e
    sub d
    ld d, e
    sub d
    ld d, e
    sub d
    ld d, e
    sub e
    ld d, e
    call $042f
    and $18
    ld e, $89
    ld [de], a
    ld a, $1e
    call Call_00c_4364
    jp $1e27


    ret


    call Call_00c_53af
    call z, Call_00c_53a2
    call Call_00c_4156
    call z, Call_00c_53a2
    jp $275f


Call_00c_53a2:
    ld bc, $0718
    call $434f
    or b
    ret nz

    ld e, $89
    ld a, c
    ld [de], a
    ret


Call_00c_53af:
    ld h, d
    ld l, $8b
    ld a, [hl+]
    ld b, a
    inc l
    ld c, [hl]
    or c
    and $07
    ret


    jr z, jr_00c_53bf

    sub $03
    ret c

jr_00c_53bf:
    ld e, $84
    ld a, [de]
    rst $00
    rst $10
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    ld [c], a
    ld d, e
    db $eb
    ld d, e
    call Call_00c_435e
    ld l, $86
    ld [hl], $05
    jp $2070


    ret


    call Call_00c_5410
    call Call_00c_43a3
    ret nz

    jr jr_00c_5445

    call Call_00c_439a
    jr nz, jr_00c_53f8

    ld [hl], $05
    inc l
    ld [hl], $28
    ld l, e
    dec [hl]
    ret


jr_00c_53f8:
    ld a, [hl]
    cp $0b
    ld a, $a4
    jp z, $0c74

    ret nc

    ld b, $29
    call Call_00c_437c
    ret nz

    ld e, $86
    ld a, [de]
    and $01
    ld l, $c2
    ld [hl], a
    ret


Call_00c_5410:
    call Call_00c_439a
    ret nz

    ld [hl], $05
    ld l, $89
    ld a, [hl]
    inc a
    and $1f
    ld [hl], a
    ld hl, $5425
    rst $10
    ld a, [hl]
    jp $2772


    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    nop

jr_00c_5445:
    call $1e52
    ld h, d
    ld l, $89
    sub [hl]
    inc a
    cp $02
    ret nc

    ld l, $86
    ld [hl], $14
    ld l, $ab
    ld [hl], $14
    ld l, $84
    inc [hl]
    ret


    jr z, jr_00c_5496

    sub $03
    jr c, jr_00c_5469

    jr z, jr_00c_5474

    dec a
    jp nz, Jump_00c_4033

    ret


jr_00c_5469:
    ld e, $ae
    ld a, [de]
    or a
    ret nz

    ld e, $8f
    ld a, $fe
    ld [de], a
    ret


jr_00c_5474:
    ld e, $82
    ld a, [de]
    dec a
    jp z, $27ce

    ld hl, $d081

jr_00c_547e:
    ld a, [hl]
    cp $17
    jr nz, jr_00c_548d

    inc l
    ld a, [hl-]
    dec a
    jr nz, jr_00c_548d

    call Call_00c_447d
    ld l, $81

jr_00c_548d:
    inc h
    ld a, h
    cp $e0
    jr c, jr_00c_547e

    jp $27ce


jr_00c_5496:
    call Call_00c_4426
    jr nc, jr_00c_54ac

    rst $00
    or h
    ld d, h
    ret nc

    ld d, h
    ret nc

    ld d, h
    ret nc

    ld d, h
    ret nc

    ld d, h
    bit 0, h
    ret nc

    ld d, h
    ret nc

    ld d, h

jr_00c_54ac:
    ld a, b
    rst $00
    pop de
    ld d, h
    db $fd
    ld d, h
    adc [hl]
    ld d, l
    ld a, $14
    call Call_00c_4364
    ld l, $8f
    ld [hl], $fe
    ld a, b
    dec a
    jr nz, jr_00c_54cd

    ld l, $86
    ld [hl], $3c
    ld l, $89
    ld [hl], $10
    ld l, $a4
    res 7, [hl]

jr_00c_54cd:
    jp $1dfa


    ret


    ld a, [de]
    sub $08
    rst $00
    reti


    ld d, h
    rst $28
    ld d, h
    ld bc, $187f
    call $434f
    ld h, d
    ld l, $86
    ld a, $30
    add c
    ld [hl], a
    ld l, $89
    ld [hl], b
    ld l, $84
    inc [hl]
    jp Jump_00c_5624


    call Call_00c_561d
    call Call_00c_439a
    jr nz, jr_00c_54fa

    ld l, $84
    dec [hl]

jr_00c_54fa:
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    dec bc
    ld d, l
    inc h
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, l
    ld a, c
    ld d, l
    call Call_00c_439a
    jr z, jr_00c_5517

    ld a, [hl]
    and $01
    ret nz

    jp Jump_00c_441f


jr_00c_5517:
    ld l, $9a
    set 7, [hl]
    ld l, $a4
    set 7, [hl]
    call Call_00c_556b
    jr jr_00c_5563

    call Call_00c_561d
    ld a, [$cc00]
    rrca
    jr nc, jr_00c_5563

    call Call_00c_439a
    jr z, jr_00c_554c

    call $042f
    cp $08
    jr nc, jr_00c_5563

    ld bc, $1f1f
    call $434f
    or b
    ld a, c
    call z, $1e52
    ld e, $89
    ld [de], a
    call Call_00c_5624
    jr jr_00c_5563

jr_00c_554c:
    call Call_00c_4000
    ld l, $86
    ld [hl], $00
    jr jr_00c_5563

    ld h, d
    ld l, $86
    inc [hl]
    ld a, [hl]
    cp $80
    jp c, Jump_00c_55fd

    ld [hl], $80
    ld l, e
    inc [hl]

jr_00c_5563:
    jp $275f


    call Call_00c_439a
    jr nz, jr_00c_5563

Call_00c_556b:
    ld l, $84
    ld [hl], $0c
    ld l, $86
    ld [hl], $7f
    ld l, $90
    ld [hl], $05
    jr jr_00c_5563

    call Call_00c_439a
    jp nz, Jump_00c_55fd

    ld l, e
    ld [hl], $09
    call $042f
    ld e, $86
    and $7f
    add $7f
    ld [de], a
    jr jr_00c_5563

    ld a, [de]
    sub $08
    rst $00
    sbc d
    ld d, l
    xor b
    ld d, l
    cp h
    ld d, l
    db $e3
    ld d, l

jr_00c_559a:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $0a
    ld l, $86
    ld [hl], $24
    call Call_00c_5635
    call Call_00c_439a
    jr nz, jr_00c_55b1

    ld l, e
    inc [hl]
    jr jr_00c_55bc

jr_00c_55b1:
    ld a, [hl]
    and $07
    jr nz, jr_00c_55bc

    ld l, $90
    ld a, [hl]
    add $05
    ld [hl], a

jr_00c_55bc:
    ld h, d
    ld l, $b0
    call Call_00c_4439
    sub c
    inc a
    cp $03
    jr nc, jr_00c_55da

    ldh a, [$8f]
    sub b
    inc a
    cp $03
    jr nc, jr_00c_55da

    ld l, $84
    ld [hl], $0b
    ld l, $86
    ld [hl], $1c
    jr jr_00c_55e3

jr_00c_55da:
    call Call_00c_4430
    call Call_00c_5624

jr_00c_55e0:
    jp $275f


jr_00c_55e3:
    call Call_00c_439a
    jr z, jr_00c_55f8

    ld a, [hl]
    and $07
    jr nz, jr_00c_55f3

    ld l, $90
    ld a, [hl]
    sub $05
    ld [hl], a

jr_00c_55f3:
    call $1fdb
    jr jr_00c_55e0

jr_00c_55f8:
    ld l, e
    ld [hl], $08
    jr jr_00c_559a

Jump_00c_55fd:
    call Call_00c_561d
    ld e, $86
    ld a, [de]
    ld b, $00
    cp $2a
    jr c, jr_00c_560f

    inc b
    cp $54
    jr c, jr_00c_560f

    inc b

jr_00c_560f:
    ld a, b
    ld hl, $561a
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a
    jr jr_00c_55e0

    inc d
    ld a, [bc]
    dec b

Call_00c_561d:
    call $1fdb
    call Call_00c_42e5
    ret z

Call_00c_5624:
Jump_00c_5624:
    ld h, d
    ld l, $89
    ld a, [hl-]
    cp $10
    ld a, $01
    jr c, jr_00c_562f

    dec a

jr_00c_562f:
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00c_5635:
    ld bc, $7070
    call $434f
    ld a, b
    sub $20
    jr nc, jr_00c_5641

    xor a

jr_00c_5641:
    ld b, a
    ld hl, $cca0
    ld a, [hl+]
    srl a
    add b
    sub $28
    ld b, a
    ld a, [hl]
    srl a
    add c
    sub $38
    ld c, a
    ld h, d
    ld l, $b0
    ld [hl], b
    inc l
    ld [hl], c
    ret


    call Call_00c_4051
    jr z, jr_00c_569a

    sub $03
    jp c, Jump_00c_5720

    jp z, $27ce

    dec a
    jp nz, Jump_00c_404a

    ld h, d
    ld l, $aa
    ld a, [hl]
    cp $9a
    jr z, jr_00c_568b

    cp $a0
    ret nz

    ld l, $84
    ld [hl], $0a
    ld l, $bf
    res 4, [hl]
    ld l, $ae
    ld [hl], $00
    ld l, $86
    ld [hl], $3c
    ld a, $01
    jp $2772


jr_00c_568b:
    ld l, $b0
    ld a, $02
    cp [hl]
    ret z

    ld [hl], a
    call $2772
    ld e, $b1
    jp $1af2


jr_00c_569a:
    call Call_00c_5720
    call Call_00c_44d5
    ld e, $84
    ld a, [de]
    rst $00
    cp d
    ld d, [hl]
    ld [c], a
    ld d, [hl]
    ld [c], a
    ld d, [hl]
    ld [c], a
    ld d, [hl]
    add $56
    bit 0, h
    ld [c], a
    ld d, [hl]
    ld [c], a
    ld d, [hl]
    db $e3
    ld d, [hl]
    ld hl, sp+$56
    ld b, $57
    ld a, $0a
    call Call_00c_435e
    ld l, $bf
    ld a, [hl]
    or $30
    ld [hl], a
    ret


    ld a, [$ccf0]
    or a
    jr nz, jr_00c_56d1

    ld a, $08
    ld [de], a
    jr jr_00c_5703

jr_00c_56d1:
    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    call Call_00c_4153
    jp $275f


    ret


    ld a, $09
    ld [de], a
    ld bc, $1c30
    call $434f
    ld e, $86
    ld a, $30
    add c
    ld [de], a
    ld e, $89
    ld a, b
    ld [de], a
    jr jr_00c_5703

    call Call_00c_439a
    jr z, jr_00c_5711

    call Call_00c_42de
    call $1fdb

jr_00c_5703:
    jp $275f


    call Call_00c_439a
    jr nz, jr_00c_5703

    ld e, $b0
    ld a, [de]
    call $2772

jr_00c_5711:
    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $bf
    set 4, [hl]
    ld l, $a4
    set 7, [hl]
    jr jr_00c_5703

Call_00c_5720:
Jump_00c_5720:
    ld e, $b1
    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    call $042f
    and $07
    add $1e
    ld c, a
    ld b, $2f
    jp $184b


    jr z, jr_00c_5741

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_400a

    ret


jr_00c_5741:
    call Call_00c_44d5
    ld e, $84
    ld a, [de]
    rst $00
    ld e, h
    ld d, a
    sub [hl]
    ld d, a
    sub [hl]
    ld d, a
    adc d
    ld d, a
    ld h, h
    ld d, a
    bit 0, h
    sub [hl]
    ld d, a
    sub [hl]
    ld d, a
    sub a
    ld d, a
    or a
    ld d, a
    ld h, d
    ld l, $bf
    set 4, [hl]
    jp Jump_00c_435e


    ld a, [$ccf0]
    or a
    jr nz, jr_00c_576f

    ld a, $08
    ld [de], a
    jr jr_00c_57c6

jr_00c_576f:
    call Call_00c_44ea
    ld e, $89
    ld a, [de]
    add $04
    and $18
    ld [de], a
    bit 3, a
    ld a, $0a
    jr z, jr_00c_5782

    ld a, $28

jr_00c_5782:
    ld e, $90
    ld [de], a
    call Call_00c_4153
    jr jr_00c_57c6

    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    sub l
    ld d, a
    sub l
    ld d, a
    rst $38
    ld b, h
    ret


    ret


    ld a, $09
    ld [de], a
    ld bc, $1830
    call $434f
    ld e, $86
    ld a, $30
    add c
    ld [de], a
    bit 3, b
    ld a, $0a
    jr z, jr_00c_57ae

    ld a, $28

jr_00c_57ae:
    ld e, $90
    ld [de], a
    ld e, $89
    ld a, b
    ld [de], a
    jr jr_00c_57c6

    call Call_00c_439a
    jr z, jr_00c_57c1

    call Call_00c_4156
    jr nz, jr_00c_57c6

jr_00c_57c1:
    ld e, $84
    ld a, $08
    ld [de], a

jr_00c_57c6:
    jp $275f


    call Call_00c_4051
    jr z, jr_00c_57eb

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_404a

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    ld e, $84
    ld a, [de]
    cp $08
    jr nz, jr_00c_57eb

    call Call_00c_43b4
    jp Jump_00c_585e


jr_00c_57eb:
    ld e, $84
    ld a, [de]
    rst $00
    rlca
    ld e, b
    ld b, h
    ld e, b
    ld b, h
    ld e, b
    jr c, jr_00c_584f

    ld b, h
    ld e, b
    bit 0, h
    ld b, h
    ld e, b
    ld b, h
    ld e, b
    ld b, l
    ld e, b
    ld l, h
    ld e, b
    adc l
    ld e, b
    sub a
    ld e, b
    ld b, $58
    call Call_00c_436d
    ret nz

    ld e, l
    ld a, [de]
    ld [hl], a
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ld e, $98
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    call $21fd
    ld a, $23
    call Call_00c_4364
    ld l, $a6
    ld a, $03
    ld [hl+], a
    ld [hl], a
    ld l, $83
    ld [hl], $80
    dec l
    ld a, [hl]
    cp $02
    ret c

    ld l, $a4
    ld [hl], $96
    ret


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld b, e
    ld e, b
    ld b, e
    ld e, b
    rst $38
    ld b, h
    ret


    ret


    call Call_00c_58ae
    ret z

    call Call_00c_43a3
    ret nz

    ld b, $0c

jr_00c_584f:
    call $1fac
    ret nc

    call Call_00c_43b4
    or a
    ret z

    ld a, $01
    call Call_00c_4204
    ret nz

Jump_00c_585e:
    call Call_00c_4000
    ld l, $86
    ld [hl], $38
    ld l, $83
    ld [hl], $81
    jp $1e0c


    call Call_00c_58ae
    ret z

    call Call_00c_439a
    jr z, jr_00c_587a

    call Call_00c_414c
    jr nz, jr_00c_58ab

jr_00c_587a:
    ld h, d
    ld l, $87
    ld [hl], $1e
    ld l, $84
    dec [hl]
    ld l, $83
    ld [hl], $80
    ld l, $bb
    ld [hl], $00
    jp $1e39


    call Call_00c_439a
    jr nz, jr_00c_58ab

    inc [hl]
    ld l, e
    inc [hl]
    jr jr_00c_58ab

    call Call_00c_439a
    jr nz, jr_00c_58a8

    ld [hl], $28
    call $042f
    and $1c
    ld e, $89
    ld [de], a
    jr jr_00c_58ab

jr_00c_58a8:
    call Call_00c_4156

jr_00c_58ab:
    jp $275f


Call_00c_58ae:
    ld e, $99
    ld a, [de]
    or a
    ret nz

    ld h, d
    ld l, $84
    ld [hl], $0a
    ld l, $86
    ld [hl], $3c
    ld l, $a4
    ld [hl], $9b
    ld l, $a6
    ld a, $06
    ld [hl+], a
    ld [hl], a
    call $1e0c
    xor a
    ret


    call Call_00c_4051
    jr z, jr_00c_58f2

    sub $03
    ret c

    jp z, Jump_00c_5a5c

    dec a
    jp nz, Jump_00c_404a

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    ld e, $82
    ld a, [de]
    cp $80
    jr nz, jr_00c_58f2

    ld h, d
    ld l, $84
    ld a, [hl]
    cp $09
    jr nc, jr_00c_58f2

    ld [hl], $09
    ret


jr_00c_58f2:
    call Call_00c_4426
    jr nc, jr_00c_5908

    rst $00
    db $10
    ld e, c
    ld a, [hl-]
    ld e, c
    ld h, [hl]
    ld e, c
    ld d, l
    ld e, c
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld e, c

jr_00c_5908:
    res 7, b
    ld a, b
    rst $00
    ld h, a
    ld e, c
    ret nz

    ld e, c
    ld a, b
    bit 7, a
    jr z, jr_00c_5932

    add a
    ld hl, $5936
    rst $10
    ld e, $9c
    ld a, [hl+]
    ld [de], a
    dec e
    ld [de], a
    ld a, [hl]
    call Call_00c_4364
    ld l, $82
    bit 0, [hl]
    jr z, jr_00c_592d

    ld l, $a9
    inc [hl]

jr_00c_592d:
    ld l, $a4
    ld [hl], $a9
    ret


jr_00c_5932:
    ld a, $01
    ld [de], a
    ret


    dec b
    inc d
    inc b
    ld e, $1e
    adc e
    ld a, [de]
    ld b, a
    ld hl, $cf00
    ld c, $b0

jr_00c_5943:
    ld a, [hl]
    cp b
    call z, Call_00c_5a34
    inc l
    dec c
    jr nz, jr_00c_5943

    call Call_00c_5a73
    call $249f
    jp $2e28


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld h, b
    ld e, c
    ld h, b
    ld e, c
    ld h, c
    ld e, c
    ret


    ld b, $0b
    jp Jump_00c_4501


    ret


    ld a, [de]
    sub $08
    rst $00
    ld [hl], l
    ld e, c
    ld a, [hl]
    ld e, c
    adc h
    ld e, c
    and [hl]
    ld e, c
    or b
    ld e, c
    ld a, [$ccbc]
    or a
    ret z

    ld a, $09
    ld [de], a
    ret


    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $3c
    ld l, $8b
    inc [hl]
    inc [hl]
    jp $1e27


    call Call_00c_439a
    jp nz, Jump_00c_441f

    ld a, $1d

Jump_00c_5994:
    ld l, e
    inc [hl]
    ld l, $a4
    ld [hl], $9d
    inc l
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld [hl], a
    call Call_00c_5a81
    jp $1e03


    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $3d
    call Call_00c_43c6
    call Call_00c_439a
    call nz, Call_00c_414c
    jr nz, jr_00c_59bd

    ld e, $84
    ld a, $0b
    ld [de], a

jr_00c_59bd:
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    adc $59
    ld a, [hl]
    ld e, c
    ld hl, sp+$59
    inc bc
    ld e, d
    ld hl, $cd5a
    ld [hl], l
    ld e, c
    ret nz

    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    add $18
    cp $31
    ret nc

    ld b, [hl]
    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $18
    cp $31
    ret nc

    ld a, [hl]
    and $f0
    swap a
    ld c, a
    ld a, b
    and $f0
    or c
    ld l, $b1
    ld [hl], a
    ld l, e
    inc [hl]
    ret


    call Call_00c_439a
    jp nz, Jump_00c_441f

    ld a, $51
    jp Jump_00c_5994


    ld a, $0c
    ld [de], a
    ld bc, $0303
    call $434f
    ld a, b
    ld hl, $5a1d
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld a, c
    or a
    jp z, Jump_00c_43b4

    jp Jump_00c_43c6


    ld e, $2d
    inc a
    ld c, e
    call Call_00c_439a
    jr z, jr_00c_5a2e

    call Call_00c_4156
    jr z, jr_00c_5a2e

    jp $275f


jr_00c_5a2e:
    ld e, $84
    ld a, $0b
    ld [de], a
    ret


Call_00c_5a34:
    push bc
    push hl
    ld c, l
    ld b, $1d
    call Call_00c_4373
    jr nz, jr_00c_5a59

    ld e, l
    ld a, [de]
    set 7, a
    ld [hl], a
    ld e, $8d
    ld l, $b0
    ld a, [de]
    ld [hl], a
    ld l, e
    ld a, c
    and $0f
    swap a
    add $08
    ld [hl-], a
    dec l
    ld a, c
    and $f0
    add $06
    ld [hl], a

jr_00c_5a59:
    pop hl
    pop bc
    ret


Jump_00c_5a5c:
    ld e, $82
    ld a, [de]
    rrca
    jp nc, $27ce

    ld e, $b1
    ld a, [de]
    ld b, a
    ld hl, $cfcf

jr_00c_5a6a:
    inc l
    ld a, [hl]
    or a
    jr nz, jr_00c_5a6a

    ld [hl], b
    jp $27ce


Call_00c_5a73:
    ld hl, $cfd0
    xor a
    ld b, $04

jr_00c_5a79:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_00c_5a79

    ret


Call_00c_5a81:
    call $1432
    ld c, l
    ld e, $b0
    ld a, [de]
    jp $3a52


    jr z, jr_00c_5ab4

    sub $03
    jr c, jr_00c_5aa9

    jp z, $27ce

    dec a
    ret z

    ld e, $90
    ld a, $50
    ld [de], a
    call Call_00c_5bda
    ld e, $ac
    call Call_00c_415b
    ld e, $90
    ld a, $1e
    ld [de], a
    ret


jr_00c_5aa9:
    ld e, $8f
    ld a, [de]
    cp $02
    ret z

    or a
    ret nz

    jp Jump_00c_5b3c


jr_00c_5ab4:
    call Call_00c_4426
    jr nc, jr_00c_5aca

    rst $00
    ret nc

    ld e, d
    and $5a
    and $5a
    and $5a
    and $5a
    bit 0, h
    and $5a
    and $5a

jr_00c_5aca:
    ld a, b
    rst $00
    rst $20
    ld e, d
    ld e, e
    ld e, e
    ld a, $14
    call Call_00c_4364
    call $1e30
    ld l, $8f
    ld [hl], $02
    ld l, $89
    ld [hl], $08
    call $5bc8
    jp Jump_00c_5b69


    ret


    ld a, [de]
    sub $08
    rst $00
    rst $28
    ld e, d
    ld [hl+], a
    ld e, e
    ld a, [$ccf0]
    or a
    jr nz, jr_00c_5afa

    call Call_00c_439a
    jr z, jr_00c_5b00

jr_00c_5afa:
    call Call_00c_5b98
    jp Jump_00c_5b62


jr_00c_5b00:
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $10
    ld l, $8f
    ld [hl], $00
    ld l, $94
    ld a, $80
    ld [hl+], a
    ld [hl], $fe
    ld l, $90
    ld [hl], $1e
    ld b, $03
    call $24af
    call $1dfa
    ld b, $00
    jp Jump_00c_5b81


    ld c, $10
    call $1f04
    jr z, jr_00c_5b3c

    ld l, $94
    ld a, [hl]
    or a
    jr nz, jr_00c_5b39

    inc l
    ld a, [hl]
    or a
    jr nz, jr_00c_5b39

    ld b, $01
    call Call_00c_5b81

jr_00c_5b39:
    jp Jump_00c_5b98


Jump_00c_5b3c:
jr_00c_5b3c:
    ld h, d
    ld l, $a5
    ld [hl], $04
    ld l, $8f
    ld [hl], $02
    ld l, $84
    ld [hl], $08
    ld l, $90
    ld [hl], $14
    call $5bc8
    ld b, $03
    call $24af
    call $1e30
    jp Jump_00c_5b69


    ld a, [de]
    sub $08
    rst $00
    ld h, c
    ld e, e
    ret


Jump_00c_5b62:
    ret c

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a

Jump_00c_5b69:
    ld e, $89
    ld a, [de]
    swap a
    rlca
    ld hl, $5b7d
    rst $10
    ld a, [hl]
    ld h, d
    ld l, $b0
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


    ld [bc], a
    ld bc, $0002

Call_00c_5b81:
Jump_00c_5b81:
    ld e, $89
    ld a, [de]
    swap a
    and $01
    ld a, $03
    jr nz, jr_00c_5b8e

    ld a, $05

jr_00c_5b8e:
    add b
    ld h, d
    ld l, $b0
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00c_5b98:
Jump_00c_5b98:
    ld e, $89
    ld a, [de]
    rrca
    rrca
    ld hl, $5bc0
    rst $10
    ld e, $8b
    ld a, [de]
    add [hl]
    and $f0
    ld c, a
    inc hl
    ld e, $8d
    ld a, [de]
    add [hl]
    and $f0
    swap a
    or c
    ld c, a
    ld b, $cf
    ld a, [bc]
    sub $fa
    cp $04
    ret nc

    call $1fdb
    scf
    ret


    ldh a, [rP1]
    nop
    db $10
    stop
    nop
    ldh a, [$cd]
    cpl
    inc b
    and $03
    ld hl, $5bd6
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    ld b, b
    ld d, b
    ld h, b
    ld [hl], b

Call_00c_5bda:
    ld e, $ac
    ld a, [de]
    call Call_00c_4253
    ld h, d
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld hl, $425e
    rst $10
    ld a, $10
    ldh [$8b], a
    ld d, $cf

jr_00c_5bf1:
    ld a, [hl+]
    add b
    ld b, a
    and $f0
    ld e, a
    ld a, [hl+]
    add c
    ld c, a
    and $f0
    swap a
    or e
    ld e, a
    ld a, [de]
    sub $fa
    cp $04
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_00c_5bf1

    xor $0f
    ldh [$8b], a
    ldh a, [$ad]
    ld d, a
    ret


    call Call_00c_4043
    call Call_00c_5cac
    jr z, jr_00c_5c27

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_404a

    ret


jr_00c_5c27:
    ld e, $84
    ld a, [de]
    rst $00
    ccf
    ld e, h
    ld c, l
    ld e, h
    ld c, l
    ld e, h
    ld c, l
    ld e, h
    ld c, l
    ld e, h
    bit 0, h
    ld c, l
    ld e, h
    ld c, l
    ld e, h
    ld c, [hl]
    ld e, h
    sub c
    ld e, h
    call Call_00c_4364
    call $042f
    ld e, $86
    and $3f
    inc a
    ld [de], a
    jr jr_00c_5ca4

    ret


    call Call_00c_439a
    ret nz

    ld l, e
    inc [hl]
    ld bc, $0f1c
    call $434f
    or b
    ld hl, $5c89
    jr nz, jr_00c_5c63

    ld hl, $5c8d

jr_00c_5c63:
    ld e, $94
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $b0
    ld a, [hl+]
    ld [de], a
    ld e, $90
    ld a, [hl]
    ld [de], a
    cp $14
    jr z, jr_00c_5c7e

    call $1e52
    add $02
    and $1c
    ld c, a

jr_00c_5c7e:
    ld e, $89
    ld a, c
    ld [de], a
    xor a
    call $2772
    jp $1dfa


    ret c

    cp $0c
    inc d
    add b
    cp $0c
    ld e, $cd
    ld d, [hl]
    ld b, c
    ld e, $b0
    ld a, [de]
    ld c, a
    call $1f04
    ret nz

    ld h, d
    ld l, $84
    dec [hl]
    ld l, $86
    ld [hl], $20

jr_00c_5ca4:
    ld a, $01
    call $2772
    jp $1e03


Call_00c_5cac:
    ld b, a
    ld a, [$cca7]
    or a
    jr z, jr_00c_5cb5

    ld b, $03

jr_00c_5cb5:
    ld a, b
    or a
    ret


    call Call_00c_5f49
    jr z, jr_00c_5d17

    sub $03
    ret c

    jr z, jr_00c_5d09

    dec a
    jp nz, Jump_00c_404a

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    ld h, d
    ld l, $8b
    ld a, [hl+]
    ld b, a
    inc l
    ld c, [hl]
    ld hl, $5d74
    ld e, $05
    call $008a
    rl b
    jp c, Jump_00c_5de6

    ld e, $82
    ld a, [de]
    or a
    ld a, $0b
    jr z, jr_00c_5ce9

    inc a

jr_00c_5ce9:
    ld h, d
    ld l, $84
    ld [hl+], a
    inc l
    ld [hl], $00
    inc l
    ld [hl], $5a
    ld l, $a4
    res 7, [hl]
    ld hl, $d000
    call $21fd
    ld l, $24
    res 7, [hl]
    ld a, $01
    call $2772
    jp $1dfa


jr_00c_5d09:
    ld e, $97
    ld a, [de]
    or a
    jp z, $27ce

    ld h, a
    ld l, $b0
    dec [hl]
    jp $27ce


jr_00c_5d17:
    call Call_00c_4426
    jr nc, jr_00c_5d2d

    rst $00
    scf
    ld e, l
    ld [hl], b
    ld e, l
    ld [hl], b
    ld e, l
    ld b, c
    ld e, l
    ld [hl], b
    ld e, l
    ld e, h
    ld e, l
    ld [hl], b
    ld e, l
    ld [hl], b
    ld e, l

jr_00c_5d2d:
    ld a, b
    rst $00
    ld [hl], c
    ld e, l
    ld [de], a
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    xor c
    ld e, [hl]
    bit 0, b
    call z, $1e03
    ld a, $0a
    jp Jump_00c_4364


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld c, h
    ld e, l
    ld c, h
    ld e, l
    ld c, l
    ld e, l
    ret


    ld e, $82
    ld a, [de]
    ld hl, $5d58
    rst $10
    ld b, [hl]
    jp Jump_00c_4501


    add hl, bc
    ld [$0a0a], sp
    call Call_00c_449a
    ret c

    ld e, $97
    ld a, [de]
    or a
    jr z, jr_00c_5d6a

    ld h, a
    ld l, $b0
    dec [hl]

jr_00c_5d6a:
    call $249f
    jp $2e28


    ret


    ld a, [de]
    sub $08
    rst $00
    ld a, a
    ld e, l
    add [hl]
    ld e, l
    sbc e
    ld e, l
    xor [hl]
    ld e, l
    di
    ld e, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld bc, $1830
    call $434f
    ld e, $89
    ld a, b
    ld [de], a
    ld e, $86
    ld a, $38
    add c
    ld [de], a
    jr jr_00c_5dab

    call Call_00c_439a
    jr nz, jr_00c_5da6

jr_00c_5da0:
    ld h, d
    ld l, $84
    dec [hl]
    jr jr_00c_5dab

jr_00c_5da6:
    call Call_00c_4156
    jr z, jr_00c_5da0

jr_00c_5dab:
    jp $275f


Jump_00c_5dae:
    call Call_00c_43a3
    jr z, jr_00c_5dbd

    ld a, [$cc46]
    or a
    jr z, jr_00c_5dab

    dec l
    inc [hl]
    jr jr_00c_5dab

jr_00c_5dbd:
    ld [hl], $3c
    ld l, $84
    inc [hl]
    ld l, $86
    ld a, [hl]
    cp $13
    jr nc, jr_00c_5ddb

    ld a, $01
    call $1717
    jr nc, jr_00c_5ddb

    ld a, $01
    call $1702
    ld bc, $510b
    call $184b

jr_00c_5ddb:
    call $042f
    and $18
    ld e, $89
    ld [de], a
    call $1e03

Call_00c_5de6:
Jump_00c_5de6:
    ld hl, $d005
    ld [hl], $04
    ld l, $24
    set 7, [hl]
    xor a
    jp $2772


    call Call_00c_43a3
    jr nz, jr_00c_5e03

    ld l, e
    ld a, [hl]
    sub $03
    ld [hl], a
    ld l, $a4
    set 7, [hl]
    jr jr_00c_5dab

jr_00c_5e03:
    call Call_00c_4156
    jr nz, jr_00c_5dab

    call $042f
    and $18
    ld e, $89
    ld [de], a
    jr jr_00c_5dab

    ld a, [de]
    sub $08
    rst $00
    inc e
    ld e, [hl]
    dec h
    ld e, [hl]
    jr c, jr_00c_5e7a

    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    inc [hl]
    jp $5f10


    ld a, [$d00b]
    sub $10
    cp $60
    ret nc

    ld a, [$d00d]
    sub $10
    cp $80
    ret nc

    ld a, $0a
    ld [de], a
    call Call_00c_439a
    ret nz

    inc [hl]
    ld l, $b0
    ld a, [hl]
    cp $06
    ret nc

    call $042f
    and $02
    ld c, a
    ld a, [$cc4c]
    cp $50
    jr z, jr_00c_5e64

    cp $40
    jr z, jr_00c_5e59

    set 2, c
    cp $51
    ret nz

jr_00c_5e59:
    ld e, $02
    call Call_00c_5ee8
    ret nz

    call Call_00c_5ef7
    jr jr_00c_5e6a

jr_00c_5e64:
    ld e, $03
    call Call_00c_5ee8
    ret nz

jr_00c_5e6a:
    ld h, d
    ld l, $b0
    inc [hl]
    ld l, $86
    ld [hl], $78
    ret


    ld a, [de]
    sub $08
    rst $00
    add e
    ld e, [hl]
    sub [hl]

jr_00c_5e7a:
    ld e, [hl]
    add [hl]
    ld e, l
    sbc e
    ld e, l
    xor [hl]
    ld e, l
    di
    ld e, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $8b
    ld a, [hl]
    cp $88
    jr z, jr_00c_5e91

    ld l, $89
    ld [hl], $08

jr_00c_5e91:
    ld l, $86
    ld [hl], $2d
    ret


    call Call_00c_439a
    jr z, jr_00c_5ea0

    call $1fdb
    jr jr_00c_5ea6

jr_00c_5ea0:
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]

jr_00c_5ea6:
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    cp c
    ld e, [hl]
    bit 3, [hl]
    add [hl]
    ld e, l
    sbc e
    ld e, l
    jp c, $f35e

    ld e, l
    call Call_00c_5f33
    ret nz

    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $95
    ld [hl], $02
    jp $1dfa


    ld c, $08
    call $1f04
    jr nz, jr_00c_5ea6

    ld l, $84
    inc [hl]
    call $1e03
    jr jr_00c_5ea6

    ld c, $08
    call $1f04
    ld l, $8f
    ld a, [hl]
    ld [$d00f], a
    jp Jump_00c_5dae


Call_00c_5ee8:
    ld b, $24
    call Call_00c_4373
    ret nz

    ld [hl], e
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    xor a
    ret


Call_00c_5ef7:
    push hl
    ld a, c
    ld hl, $5f08
    rst $10
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    ld l, $8b
    ld [hl], b
    ld l, $8d

jr_00c_5f06:
    ld [hl], c
    ret


    adc b
    ld c, b
    adc b
    ld e, b
    jr c, jr_00c_5f06

    ld c, b
    ld hl, sp+$21
    add c
    ret nc

    ld c, $00

jr_00c_5f15:
    ld a, [hl]
    cp $24
    jr nz, jr_00c_5f28

    inc l
    ld a, [hl-]
    or a
    jr nz, jr_00c_5f28

    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ld l, $81
    inc c

jr_00c_5f28:
    inc h
    ld a, h
    cp $e0
    jr c, jr_00c_5f15

    ld e, $b0
    ld a, c
    ld [de], a
    ret


Call_00c_5f33:
    call $042f
    and $77
    inc a
    ld c, a
    ld b, $ce
    ld a, [bc]
    or a
    ret nz

    call $2081
    ld c, $08
    call Call_00c_4465
    xor a
    ret


Call_00c_5f49:
    push af
    ld a, [$d004]
    cp $0d
    jr nz, jr_00c_5f66

    ld e, $8f
    ld a, [de]
    rlca
    jr c, jr_00c_5f66

    ld bc, $0500
    call $1423
    ld hl, $23c3
    call $1ddd
    call c, Call_00c_5de6

jr_00c_5f66:
    pop af
    jp Jump_00c_4051


    jr z, jr_00c_5f79

    sub $03
    ret c

    jp z, $27ce

Jump_00c_5f72:
    ld e, $a9
    ld a, [de]
    or a
    jp z, Jump_00c_400a

jr_00c_5f79:
    ld e, $84
    ld a, [de]
    rst $00
    sub c
    ld e, a
    xor h
    ld e, a
    xor h
    ld e, a
    xor h
    ld e, a
    xor h
    ld e, a
    xor h
    ld e, a
    xor h
    ld e, a
    xor h
    ld e, a
    xor l
    ld e, a
    cp d
    ld e, a
    ld h, d
    ld l, $86
    ld [hl], $5a
    ld l, $82
    ld a, [hl]
    or a
    jr z, jr_00c_5fa6

    ld l, $9d
    ld a, [hl]
    add $04
    ld [hl], a
    ld l, $a5
    ld [hl], $54

jr_00c_5fa6:
    call Call_00c_4364
    jp $1e30


    ret


    call Call_00c_439a
    ret nz

    ld [hl], $3c
    ld l, e
    inc [hl]
    ld a, $01
    jp $2772


    call Call_00c_439a
    jr z, jr_00c_5fd2

    ld a, [hl]
    cp $28
    ret nz

    ld e, $82
    ld a, [de]
    dec a
    call nz, $042f
    and $03
    ret nz

    ld b, $31
    jp Jump_00c_437c


jr_00c_5fd2:
    ld e, $82
    ld a, [de]
    ld bc, $5fe4
    call $006d
    ld a, [bc]
    ld [hl], a
    ld l, $84
    dec [hl]
    xor a
    jp $2772


    ld a, b
    or h
    jr z, jr_00c_6007

    sub $03
    ret c

    jr z, jr_00c_6000

    dec a
    jr nz, jr_00c_6007

    ld e, $b0
    ld a, [de]
    or a
    ret nz

    ld h, d
    ld l, $84
    ld [hl], $0c
    ld l, $b1
    ld h, [hl]
    jp Jump_00c_447d


jr_00c_6000:
    ld e, $82
    ld a, [de]
    dec a
    jp nz, $27ce

jr_00c_6007:
    ld e, $84
    ld a, [de]
    rst $00
    daa
    ld h, b
    ld b, l
    ld h, b
    ld b, l
    ld h, b
    ld b, l
    ld h, b
    ld b, l
    ld h, b
    ld b, l
    ld h, b
    ld b, l
    ld h, b
    ld b, l
    ld h, b
    ld b, [hl]
    ld h, b
    ld h, b
    ld h, b
    sub c
    ld h, b
    xor e
    ld h, b
    cp l
    ld h, b
    adc $60
    call $611f
    ret nz

    call $2070
    ld h, $cf
    ld [hl], $00
    call Call_00c_4364
    ld l, $86
    inc [hl]
    ld l, $b0
    ld [hl], $02
    ld l, $83
    ld a, [hl]
    ld [hl], $00
    ld l, $b3
    ld [hl], a
    ret


    ret


    ld c, $2c
    call $1f60
    ret c

    call Call_00c_439a
    ret nz

    ld [hl], $5a
    ld l, $84
    inc [hl]
    ld l, $83
    ld [hl], $02
    xor a
    call $2772
    jp $1e0c


    ld c, $2c
    call $1f60
    jp c, Jump_00c_60e4

    call Call_00c_439a
    jr nz, jr_00c_60a8

    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $83
    inc [hl]
    call $1e52
    ld hl, $60fa
    rst $10
    ld a, [hl]
    or a
    jr z, jr_00c_60e4

    ld e, $89
    ld [de], a
    rrca
    rrca
    sub $02
    ld hl, $611a
    rst $10
    ld a, [hl]
    jp $2772


    ld c, $2c
    call $1f60
    jr c, jr_00c_60e4

    ld e, $a1
    ld a, [de]
    inc a
    jr z, jr_00c_60e4

    ld a, [de]
    dec a
    jr nz, jr_00c_60a8

    ld [de], a
    ld b, $1e
    call Call_00c_437c

jr_00c_60a8:
    jp $275f


    ld e, $a1
    ld a, [de]
    inc a
    jr nz, jr_00c_60a8

    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $83
    ld [hl], $00
    jp $1e39


    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld e, $b2
    call $1af2
    ld a, $07
    call $2772
    call $229b
    ld e, $b2
    ld a, [de]
    or a
    jr z, jr_00c_60a8

    ld e, $b2
    xor a
    ld [de], a
    ld e, $b3
    ld a, [de]
    ld c, a
    ld b, $45
    jp $184b


Jump_00c_60e4:
jr_00c_60e4:
    ld h, d
    ld l, $84
    ld [hl], $0b
    ld l, $86
    ld [hl], $78
    ld l, $a4
    res 7, [hl]
    ld l, $83
    ld [hl], $02
    ld a, $06
    jp $2772


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    db $10
    db $10
    db $10
    inc d
    inc d
    inc d
    inc d
    inc d
    jr @+$1a

    jr jr_00c_6115

jr_00c_6115:
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $5806
    call Call_00c_436d
    ret nz

    call $21fd
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ld e, $b1
    ld a, h
    ld [de], a
    ld l, $82
    ld e, l
    ld a, [de]
    ld [hl], a
    xor a
    ret


    jr z, jr_00c_6175

    sub $03
    ret c

    jr z, jr_00c_6164

    dec a
    jp nz, Jump_00c_400a

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    ld e, $ad
    ld a, [de]
    or a
    ret nz

    ld h, d
    ld l, $b0
    ld [hl], $01
    ld l, $a4
    res 7, [hl]
    ld l, $8b
    ld a, [hl+]
    ld [$d00b], a
    inc l
    ld a, [hl]
    ld [$d00d], a
    ret


jr_00c_6164:
    ld e, $97
    ld a, [de]
    or a
    jr z, jr_00c_6172

    ld h, a
    ld l, $99
    ld [hl], $00
    ld l, $8b
    dec [hl]

jr_00c_6172:
    jp $27ca


jr_00c_6175:
    ld e, $84
    ld a, [de]
    rst $00
    sub l
    ld h, c
    xor c
    ld h, c
    db $f4
    ld h, c
    db $f4
    ld h, c
    db $f4
    ld h, c
    ld [c], a
    ld h, c
    db $f4
    ld h, c
    db $f4
    ld h, c
    push af
    ld h, c
    inc de
    ld h, d
    ld sp, $5962
    ld h, d
    ld a, a
    ld h, d
    adc [hl]
    ld h, d
    ld e, $82
    ld a, [de]
    or a
    jp nz, Jump_00c_4364

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $b4
    ld l, $98
    ld [hl], $80
    ret


    ld e, $8b
    ld a, [de]
    or a
    jr z, jr_00c_61d9

    ld e, $99
    ld a, [de]
    or a
    ret nz

    call Call_00c_439a
    ret nz

    ld [hl], $78
    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a
    call $14a5
    ret nz

    push bc
    ld b, $28
    call Call_00c_436d
    pop bc
    ret nz

    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ld e, $99
    ld a, h
    ld [de], a
    ret


jr_00c_61d9:
    call $249f
    call $30e3
    jp $2e28


    call Call_00c_449a
    ret c

    ld e, $97
    ld a, [de]
    or a
    jr z, jr_00c_61f1

    ld h, a
    ld l, $99
    ld [hl], $00

jr_00c_61f1:
    jp $2e28


    ret


    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    ld [hl], $b5
    ld l, $8f
    ld [hl], $a0
    ld l, $8b
    ld a, [$d00b]
    ld [hl+], a
    inc l
    ld a, [$d00d]
    ld [hl], a
    ld a, $59
    call $0c74
    jp $1dfa


    ld c, $0e
    call $1f04
    jr z, jr_00c_6229

    call Call_00c_6294
    ld e, $b0
    ld a, [de]
    or a
    ret z

    ld e, $8f
    ld a, [de]
    ld [$d00f], a
    ret


jr_00c_6229:
    ld l, $86
    ld [hl], $1e
    ld l, $84
    inc [hl]
    ret


    call Call_00c_439a
    jr nz, jr_00c_6239

    ld l, e
    inc [hl]
    ret


jr_00c_6239:
    ld a, [hl]
    cp $14
    jr c, jr_00c_6244

    ret nz

    ld a, $01
    jp $2772


jr_00c_6244:
    dec a
    jr nz, jr_00c_624f

    ld l, $a4
    ld a, [hl]
    and $80

Jump_00c_624c:
    or $28
    ld [hl], a

jr_00c_624f:
    ld l, $b0
    bit 0, [hl]
    ret z

    xor a
    ld [$d01a], a
    ret


    call Call_00c_6294
    ld h, d
    ld l, $8f
    dec [hl]
    dec [hl]
    ld a, [hl]
    cp $a0
    ret nc

    call $1e39
    ld l, $b0
    bit 0, [hl]
    jr z, jr_00c_6273

    ld l, $84
    ld [hl], $0d
    ret


jr_00c_6273:
    ld l, $84
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $78
    ret


    call Call_00c_439a
    ret nz

    ld l, e
    ld [hl], $08
    ld l, $94
    xor a
    ld [hl+], a
    ld [hl], a
    jp $2772


    ld a, $02
    ld [$d005], a
    ret


Call_00c_6294:
    ld e, $8f
    ld a, [de]
    or a
    ret z

    cp $b8
    jp c, Jump_00c_441f

    cp $bc
    ret nc

    jp $1dfa


    dec a
    ret z

    dec a
    ret z

    ld e, $84
    ld a, [de]
    rst $00
    add $62
    db $dd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld h, d
    sbc $62
    pop af
    ld h, d
    ld c, $63
    dec h
    ld h, e
    inc l
    ld h, e
    call Call_00c_4364
    ld e, $82
    ld a, [de]
    or a
    ret z

    ld [hl], $0c
    ld l, $97
    ld h, [hl]
    ld l, $b0
    ld a, [hl]
    inc a
    call $2772
    jp $1e30


    ret


    ld h, d
    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $30
    cp $61
    ret nc

    ld l, $8b
    ld a, [hl]
    ld l, $b1
    ld [hl], a
    jr jr_00c_6354

    call $275f
    call Call_00c_637d
    jr z, jr_00c_6307

    ld a, [hl]
    or a
    jr nz, jr_00c_633d

    ld l, $b0
    cp [hl]
    ret z

    ld [hl], a
    call $2772
    jr jr_00c_6344

jr_00c_6307:
    ld l, $84
    inc [hl]
    ld l, $a4
    res 7, [hl]
    call Call_00c_6373
    ret nz

    call $042f
    and $03
    ld hl, $6379
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    call Call_00c_4000
    jp $1e39


    call Call_00c_439a
    ret nz

    inc [hl]
    jr jr_00c_6354

    call $275f
    ld e, $a1
    ld a, [de]
    inc a
    jp z, $2e28

    dec a
    jp nz, $1e39

    jp Jump_00c_441f


jr_00c_633d:
    call Call_00c_439a
    ld a, [hl]
    and $0f
    ret nz

jr_00c_6344:
    ld b, $29
    call Call_00c_436d
    ret nz

    call $21fd
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ret


jr_00c_6354:
    call Call_00c_6373
    ret nz

    call $1e27
    ld e, $b0
    ld a, $02
    ld [de], a
    call $2772
    ld bc, $fbc0
    call $2358
    ld l, $84
    ld [hl], $09
    ld l, $a4
    set 7, [hl]
    xor a
    ret


Call_00c_6373:
    ld bc, $0401
    jp $24b1


    db $10
    ld d, b
    ld d, b
    ld d, b

Call_00c_637d:
    ld h, d
    ld l, $94
    ld e, $8a
    call $2362
    ld b, a
    ld e, $b1
    ld a, [de]
    cp b
    jr c, jr_00c_6397

    dec l
    ld a, $1c
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    or d
    ret


jr_00c_6397:
    ld l, $8b
    ld [hl-], a
    ld [hl], $00
    xor a
    ret


    dec a
    ret z

    dec a
    ret z

    call Call_00c_4426
    jr c, jr_00c_63b1

    ld a, b
    rst $00
    ret


    ld h, e
    jp z, $fd63

    ld h, e
    ld e, h
    ld h, h

jr_00c_63b1:
    rst $00
    jp nz, $c863

    ld h, e
    ret z

    ld h, e
    ret z

    ld h, e
    ret z

    ld h, e
    ret z

    ld h, e
    ret z

    ld h, e
    ret z

    ld h, e
    call Call_00c_4364
    jp $1e27


    ret


    ret


    ld a, [de]
    sub $08
    rst $00
    call nc, $e063
    ld h, e
    xor $63
    ld a, $09
    ld [de], a
    call Call_00c_649f
    ld e, $90
    ld a, $14
    ld [de], a
    ret


    call Call_00c_64bf
    jp z, $1fdb

    call Call_00c_4000
    ld l, $86
    ld [hl], $10
    ret


    call Call_00c_439a
    ret nz

    ld l, e
    dec [hl]
    ld l, $89
    ld a, [hl]
    add $08
    and $18
    ld [hl], a
    ret


    ld a, [de]
    sub $08
    rst $00
    rlca
    ld h, h
    rrca
    ld h, h
    cpl
    ld h, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $3c
    ret


    call Call_00c_64fc
    call Call_00c_64bf
    jp z, $1fdb

    call Call_00c_4000
    ld l, $8b
    ld a, [hl]
    add $02
    and $f8
    ld [hl+], a
    inc l
    ld a, [hl]
    add $02
    and $f8
    ld [hl], a
    ld l, $86
    ld [hl], $10
    ret


    call Call_00c_439a
    ret nz

    ld e, $89
    ld a, [de]
    add $08
    and $1f
    ld [de], a
    call Call_00c_64bf
    jr z, jr_00c_6453

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a
    call Call_00c_64bf
    jr z, jr_00c_6453

    ld e, $89
    ld a, [de]
    sub $08
    and $1f
    ld [de], a

jr_00c_6453:
    ld h, d
    ld l, $84
    dec [hl]
    ld l, $86
    ld [hl], $5a
    ret


    ld a, [de]
    sub $08
    rst $00
    ld h, [hl]
    ld h, h
    rrca
    ld h, h
    ld [hl], d
    ld h, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $89
    ld [hl], $10
    ld l, $86
    ld [hl], $5a
    ret


    call Call_00c_439a
    ret nz

    ld e, $89
    ld a, [de]
    sub $08
    and $1f
    ld [de], a
    call Call_00c_64bf
    jr z, jr_00c_6496

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a
    call Call_00c_64bf
    jr z, jr_00c_6496

    ld e, $89
    ld a, [de]
    add $08
    and $1f
    ld [de], a

jr_00c_6496:
    ld h, d
    ld l, $84
    dec [hl]
    ld l, $86
    ld [hl], $5a
    ret


Call_00c_649f:
    call Call_00c_64bf
    ld a, $08
    jr nz, jr_00c_64bb

    ld e, $89
    ld [de], a
    call Call_00c_64bf
    ld a, $10
    jr nz, jr_00c_64bb

    ld e, $89
    ld [de], a
    call Call_00c_64bf
    ld a, $18
    jr nz, jr_00c_64bb

    xor a

jr_00c_64bb:
    ld e, $89
    ld [de], a
    ret


Call_00c_64bf:
    ld e, $8b
    ld a, [de]
    ld b, a
    ld e, $8d
    ld a, [de]
    ld c, a
    ld e, $89
    ld a, [de]
    rrca
    ld hl, $64ec
    rst $10
    push de
    ld d, $ce
    call Call_00c_64dc
    jr nz, jr_00c_64da

    call Call_00c_64dc

jr_00c_64da:
    pop de
    ret


Call_00c_64dc:
    ld a, [hl+]
    add b
    and $f0
    ld e, a
    ld a, [hl+]
    add c
    swap a
    and $0f
    or e
    ld e, a
    ld a, [de]
    or a
    ret


    rst $28
    ld hl, sp-$11
    rlca
    ld hl, sp+$10
    rlca
    db $10
    db $10
    ld hl, sp+$10
    rlca
    ld hl, sp-$11
    rlca
    rst $28

Call_00c_64fc:
    ld e, $86
    ld a, [de]
    or a
    ret z

    ld a, [de]
    dec a
    ld [de], a
    and $f0
    swap a
    ld hl, $6511
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a
    ret


    ld h, h
    ld d, b
    inc a
    jr z, jr_00c_652a

    dec b
    jr z, jr_00c_6523

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_400a

jr_00c_6523:
    call Call_00c_4426
    jr nc, jr_00c_6539

    rst $00
    ccf

jr_00c_652a:
    ld h, l
    ld b, a
    ld h, l
    ld b, a
    ld h, l
    ld b, a
    ld h, l
    ld b, a
    ld h, l
    bit 0, h
    ld b, a
    ld h, l
    ld b, a
    ld h, l

jr_00c_6539:
    ld a, b
    rst $00
    ld c, b
    ld h, l
    adc d
    ld h, l
    ld a, $14
    call Call_00c_4364
    jp $1e27


    ret


    ld a, [de]
    sub $08
    rst $00
    ld d, d
    ld h, l
    ld h, d
    ld h, l
    ld [hl], c
    ld h, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $89
    ld [hl], $18
    ld l, $83
    ld a, [hl]
    add a
    ld [hl], a
    ld l, $86
    ld [hl], a
    ret


    call Call_00c_439a
    jr nz, jr_00c_656b

    ld [hl], $3c
    ld l, e
    inc [hl]

jr_00c_656b:
    call $1fdb

jr_00c_656e:
    jp $275f


    call Call_00c_439a
    jr nz, jr_00c_656e

    ld e, $83
    ld a, [de]
    ld [hl], a
    ld l, $84
    dec [hl]
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl-], a
    ld a, [hl]
    xor $01
    ld [hl], a
    jp $2772


    ld a, [de]
    sub $08
    rst $00
    sub h
    ld h, l
    ld h, d
    ld h, l
    ld [hl], c
    ld h, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $89
    ld [hl], $10
    ld l, $83
    ld a, [hl]
    add a
    ld [hl], a
    ld l, $86
    ld [hl], a
    ret


    jr z, jr_00c_65b4

    sub $03
    ret c

    jp z, $27c6

    ld e, $aa
    ld a, [de]
    cp $9a
    jp z, $27c2

jr_00c_65b4:
    ld e, $84
    ld a, [de]
    rst $00
    call nc, $e665
    ld h, l
    and $65
    and $65
    and $65
    and $65
    and $65
    and $65
    rst $20
    ld h, l
    or $65
    ld de, $3366
    ld h, [hl]
    ld c, e
    ld h, [hl]
    ld e, e
    ld h, [hl]
    call Call_00c_4364
    ld l, $bf
    set 5, [hl]
    ld l, $86
    ld [hl], $3c
    ld l, $8b
    ld a, [hl]
    ld l, $b0
    ld [hl], a
    ret


    ret


    call Call_00c_439a
    jp nz, Jump_00c_441f

    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    jp $1e27


    call $275f
    ld e, $a1
    ld a, [de]
    or a
    ret z

    ld b, a
    call Call_00c_6668
    ld a, b
    cp $0f
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $96
    inc l
    ld [hl], $b4
    call Call_00c_6690
    jr nz, jr_00c_661d

    ld l, e
    inc [hl]
    ld a, $01
    jp $2772


jr_00c_661d:
    call Call_00c_439a
    jr nz, jr_00c_6630

    ld [hl], $96
    call $042f
    cp $b4
    jr nc, jr_00c_6630

    ld b, $31
    call Call_00c_437c

jr_00c_6630:
    jp $275f


    call $275f
    ld e, $a1
    ld a, [de]
    or a
    ret z

    bit 7, a
    jr z, jr_00c_6668

    call Call_00c_4000
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $3c
    ret


    call Call_00c_439a
    jp nz, Jump_00c_441f

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $b4
    jp $1e39


    call Call_00c_439a
    ret nz

    ld [hl], $3c
    ld l, e
    ld [hl], $08
    xor a
    jp $2772


Call_00c_6668:
jr_00c_6668:
    sub $03
    ld hl, $6681
    rst $10
    ld e, $a6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $b0
    ld a, [de]
    add [hl]
    ld e, $8b
    ld [de], a
    ld e, $a1
    xor a
    ld [de], a
    ret


    ld b, $04
    nop
    ld [$f904], sp
    dec bc
    inc b
    rst $30
    rrca
    inc b
    db $f4
    ld [de], a
    inc b
    ld a, [c]

Call_00c_6690:
    ld a, [$cc00]
    and $03
    ret nz

    jp Jump_00c_43a3


    jr z, jr_00c_669e

    sub $03
    ret c

jr_00c_669e:
    ld e, $84
    ld a, [de]
    rst $00
    cp h
    ld h, [hl]
    call $cd66
    ld h, [hl]
    call $cd66
    ld h, [hl]
    call $cd66
    ld h, [hl]
    call $ce66
    ld h, [hl]
    sub $66
    db $ec
    ld h, [hl]
    ld b, $67
    dec c
    ld h, a
    ld e, $8b
    ld a, [de]
    ld e, $b0
    ld [de], a
    ld h, d
    ld l, $86
    inc [hl]
    ld l, $89
    ld [hl], $10
    jp Jump_00c_435e


    ret


Call_00c_66ce:
    call Call_00c_439a
    ret nz

    ld l, e
    inc [hl]
    xor a
    ret


    ld h, d
    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $0a
    cp $15
    ret nc

    ld l, e
    inc [hl]
    ld l, $94
    xor a
    ld [hl+], a
    ld [hl], a
    inc a
    jp $2772


    ld a, $40
    call $1f24
    jr c, jr_00c_66fa

    ld a, [hl]
    cp $03
    ret c

    ld [hl], $02
    ret


jr_00c_66fa:
    call Call_00c_4000
    ld l, $86
    ld [hl], $2d
    ld a, $50
    jp $0c74


    call Call_00c_66ce
    ret nz

    jp $2772


    ld h, d
    ld l, $8a
    ld a, [hl]
    sub $80
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld e, $b0
    ld a, [de]
    cp [hl]
    ret nz

    ld l, $86
    ld [hl], $18
    ld l, $84
    ld [hl], $08
    ret


    jr z, jr_00c_672b

    sub $03
    ret c

jr_00c_672b:
    call Call_00c_6731
    jp Jump_00c_67e5


Call_00c_6731:
    ld e, $84
    ld a, [de]
    rst $00
    ld c, l
    ld h, a
    ld h, d
    ld h, a
    ld h, d
    ld h, a
    ld h, d
    ld h, a
    ld h, d
    ld h, a
    ld h, d
    ld h, a
    ld h, d
    ld h, a
    ld h, d
    ld h, a
    ld h, e
    ld h, a
    adc a
    ld h, a
    or b
    ld h, a
    rst $08
    ld h, a
    call Call_00c_4364
    ld l, $b0
    ld e, $8b
    ld a, [de]
    ld [hl], a
    ld l, $89
    ld [hl], $10
    ld a, $04
    call $2772
    jp $1e27


    ret


    ld h, d
    ld l, $8d
    ld a, [$d00d]
    sub [hl]
    add $14
    cp $29
    jr c, jr_00c_6782

    call $1e5a
    add $02
    and $1c
    ld h, d
    ld l, $89
    cp [hl]
    ret z

    ld [hl], a
    rrca
    rrca
    jp $2772


jr_00c_6782:
    call Call_00c_4000
    ld l, $94
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $08
    jp $2772


    ld b, $10
    ld a, $30
    call $1f26
    jr c, jr_00c_679f

    ld a, [hl]
    cp $03
    ret c

    ld [hl], $02
    ret


jr_00c_679f:
    call Call_00c_4000
    ld l, $87
    ld [hl], $3c
    ld a, $2d
    ld [$cd18], a
    ld a, $70
    jp $0c74


    call Call_00c_43a3
    ret nz

    ld e, $8b
    ld l, $b0
    ld a, [de]
    cp [hl]
    jr z, jr_00c_67c7

    ld l, $8a
    ld a, [hl]
    sub $80
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ret


jr_00c_67c7:
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $20
    ret


    call Call_00c_439a
    ret nz

    ld l, e
    ld [hl], $08
    jp Jump_00c_67e5


    ld e, $8b
    ld a, [de]
    add b
    ld b, a
    ld e, $8d
    ld a, [de]
    ld c, a
    jp $14a5


Jump_00c_67e5:
    ld h, d
    ld l, $8d
    ld a, [$d00d]
    sub [hl]
    add $13
    cp $27
    jr nc, jr_00c_6813

    ld a, [$d026]
    ld b, a
    ld l, $a6
    ld e, $8b
    ld a, [de]
    sub [hl]
    sub b
    ld c, a
    ld a, [$d00b]
    sub c
    add $03
    cp $07
    jr nc, jr_00c_6813

    ld a, c
    sub $03
    ld [$d00b], a
    ld a, d
    ld [$ccb0], a
    ret


jr_00c_6813:
    ld a, [$ccb0]
    sub d
    ret nz

    ld [$ccb0], a
    ret


    dec a
    ret z

    dec a
    ret z

    call Call_00c_4426
    jr nc, jr_00c_6836

    rst $00
    ld a, $68
    ld c, [hl]
    ld l, b
    db $76
    ld l, b
    db $76
    ld l, b
    db $76
    ld l, b
    db $76
    ld l, b
    db $76
    ld l, b
    db $76
    ld l, b

jr_00c_6836:
    ld a, b
    sub $08
    rst $00
    ld [hl], a
    ld l, b
    sbc h
    ld l, b
    ld e, $be
    ld a, $08
    ld [de], a
    ld a, b
    sub $08
    jp nc, Jump_00c_68d6

    ld e, $84
    ld a, $01
    ld [de], a
    ld a, b
    ld hl, $686e
    rst $10
    ld b, [hl]
    call $20b5
    ret nz

    call Call_00c_68f2
    ld b, $0f
    call Call_00c_436d
    ld [hl], $08
    call Call_00c_68c8
    call Call_00c_68fa
    call $6992
    jp $2e28


    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    ret


    ld a, [de]
    sub $08
    rst $00
    ld a, a
    ld l, b
    sub d
    ld l, b
    call Call_00c_699d
    ld l, $84
    inc [hl]
    call Call_00c_69b4
    ld e, $b1
    ld a, [de]
    ld e, $99
    ld [de], a
    dec e
    ld a, $80
    ld [de], a
    call Call_00c_69c9
    call Call_00c_69d2
    ret z

    jp Jump_00c_69fd


    ld a, [de]
    sub $08
    rst $00
    and h
    ld l, b
    or e
    ld l, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $89
    ld [hl], $08
    ld l, $b0
    ld e, $86
    ld a, [hl]
    ld [de], a
    jr jr_00c_68c5

    call Call_00c_439a
    jr nz, jr_00c_68c2

    ld e, $b0
    ld a, [de]
    ld [hl], a
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a

jr_00c_68c2:
    call $1fdb

jr_00c_68c5:
    jp $275f


Call_00c_68c8:
    ld e, $b0
    ld l, e
    ld a, [de]
    ld [hl], a
    ld e, $82
    ld l, $83
    ld a, [de]
    ld [hl], a
    jp $21fd


Jump_00c_68d6:
    jr z, jr_00c_68ea

    ld e, $b1
    ld a, [de]
    ld c, a
    ld hl, $68ed
    rst $10
    ld e, $a6
    ld a, [hl]
    ld [de], a
    ld a, c
    call $2772
    ld a, $1e

jr_00c_68ea:
    jp Jump_00c_4364


    ld b, $06
    ld c, $16
    add hl, de

Call_00c_68f2:
    ld h, d
    ld l, $83
    ld e, $b0
    ld a, [hl]
    ld [de], a
    ret


Call_00c_68fa:
    push hl
    ld c, h
    ld e, $82
    ld a, [de]
    ld hl, $694c
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $b0

jr_00c_6908:
    push hl
    inc e
    push de
    call Call_00c_6925
    push bc
    ld b, $0f
    call Call_00c_4373
    ld [hl], $09
    pop bc
    ld a, e
    pop de
    call Call_00c_692f
    pop hl
    inc hl
    inc hl
    ld a, [hl]
    inc a
    jr nz, jr_00c_6908

    pop hl
    ret


Call_00c_6925:
    ld e, $8b
    ld a, [de]
    add [hl]
    ld b, a
    ld e, c
    inc hl
    ld c, [hl]
    inc hl
    ret


Call_00c_692f:
    push de
    ld l, $97
    ld [hl-], a
    ld [hl], $80
    ld a, h
    ld [de], a
    ld l, $8d
    ld e, l
    ld a, [de]
    ld [hl-], a
    dec l
    ld [hl], b
    ld d, h
    ld e, l
    ld a, c
    ld e, $b1
    ld [de], a
    call $2772
    call $1e27
    pop de
    ret


    ld e, h
    ld l, c
    ld h, c
    ld l, c
    ld h, [hl]
    ld l, c
    ld l, e
    ld l, c
    ld [hl], d
    ld l, c
    ld a, c
    ld l, c
    add b
    ld l, c
    adc c
    ld l, c
    ld hl, sp+$00
    ld [$ff01], sp
    ld hl, sp+$02
    db $10
    ld bc, $f8ff
    inc bc
    jr jr_00c_696b

    rst $38

jr_00c_696b:
    ldh [rP1], a
    nop
    inc b
    jr nz, jr_00c_6972

    rst $38

jr_00c_6972:
    ldh [rSC], a
    ld [$2804], sp
    ld bc, $e0ff
    inc bc
    db $10
    inc b
    jr nc, jr_00c_6980

    rst $38

jr_00c_6980:
    ret z

    nop
    add sp, $04
    jr jr_00c_698a

    jr c, jr_00c_6989

    rst $38

jr_00c_6989:
    ret z

jr_00c_698a:
    ld [bc], a
    ldh a, [rDIV]
    jr nz, jr_00c_6993

    ld b, b
    ld bc, $06ff

jr_00c_6993:
    inc b
    ld l, $b1

jr_00c_6996:
    ld e, l
    ld a, [de]
    ld [hl+], a
    dec b
    jr nz, jr_00c_6996

    ret


Call_00c_699d:
    ld h, d
    ld e, $b0
    ld l, $b1

jr_00c_69a2:
    ld a, [hl+]
    ld b, a
    ld c, $81
    ld a, [bc]
    cp $0f
    jr nz, jr_00c_69ae

    ld c, e
    ld a, [de]
    ld [bc], a

jr_00c_69ae:
    ld a, $b5
    cp l
    jr nz, jr_00c_69a2

    ret


Call_00c_69b4:
    ld e, $83
    ld a, [de]
    ld hl, $69c1
    rst $10
    ld e, $8b
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    ld hl, sp-$10
    add sp, -$20
    ret c

    ret nc

    ret z

    ret nz

Call_00c_69c9:
    ld a, $0d
    call $2122
    ld e, l
    ld a, [hl]
    ld [de], a
    ret


Call_00c_69d2:
    ld a, $09
    call $2122
    ld c, $f7
    bit 4, [hl]
    jr nz, jr_00c_69df

    ld c, $08

jr_00c_69df:
    ld e, $8d
    ld a, [de]
    add c
    ld c, a
    ld e, $8b
    ld a, [de]
    ld b, a
    ld e, $83
    ld a, [de]
    add $02
    ld e, a

jr_00c_69ee:
    call $14a5
    dec a
    cp $0f
    ret c

    ld a, b
    add $10
    ld b, a
    dec e
    jr nz, jr_00c_69ee

    ret


Jump_00c_69fd:
    ld h, d
    ld l, $b1

jr_00c_6a00:
    ld a, [hl+]
    ld b, a
    ld c, $81
    ld a, [bc]
    cp $0f
    jr nz, jr_00c_6a0e

    ld c, $86
    ld a, $01
    ld [bc], a

jr_00c_6a0e:
    ld a, $b5
    cp l
    jr nz, jr_00c_6a00

    ret


    jr z, jr_00c_6a4a

    sub $03
    ret c

    jr nz, jr_00c_6a3a

    ld e, $83
    ld a, [de]
    cp $03
    jp nz, Jump_00c_6ba8

    call Call_00c_448c
    ld l, $b3
    ld [hl], $00
    ld l, $b1
    push hl
    ld h, [hl]
    call Call_00c_447d
    pop hl
    inc l
    ld h, [hl]
    call Call_00c_447d
    jp $27ce


jr_00c_6a3a:
    ld e, $aa
    ld a, [de]
    cp $9a
    call z, Call_00c_6bfe
    call Call_00c_6c3e
    ld e, $a4
    ld a, [de]
    rlca
    ret nc

jr_00c_6a4a:
    call Call_00c_4426
    jr nc, jr_00c_6a60

    rst $00
    ld a, h
    ld l, d
    inc b
    ld l, e
    inc b
    ld l, e
    inc b
    ld l, e
    inc b
    ld l, e
    inc b
    ld l, e
    inc b
    ld l, e
    inc b
    ld l, e

jr_00c_6a60:
    ld e, $83
    ld a, [de]
    or a
    call z, Call_00c_439a
    ld a, $33
    call $211e
    ld a, [hl]
    or a
    ret z

    dec b
    ld a, b
    rst $00
    dec b
    ld l, e
    ld l, $6b
    dec [hl]
    ld l, e
    inc a
    ld l, e
    inc b
    ld l, e
    ld a, b
    or a
    jr nz, jr_00c_6ac1

    ld b, $04
    call $20b5
    ret nz

    ld b, $11
    call Call_00c_436d
    ld [hl], $05
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], h
    call $21fd
    ld l, $b0
    ld [hl], h
    ld c, h
    ld e, $03
    inc l

jr_00c_6a9d:
    push hl
    call Call_00c_436d
    ld a, $04
    sub e
    ld [hl], a
    inc l
    ld [hl], a
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], c
    push de
    call $21fd
    pop de
    ld a, h
    pop hl
    ld [hl+], a
    dec e
    jr nz, jr_00c_6a9d

    ld h, a
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    jp $2e28


jr_00c_6ac1:
    cp $03
    ld a, $01
    call nz, $2772
    ld a, $0f
    call Call_00c_4364
    ld l, $bf
    set 5, [hl]
    ld l, $82
    ld a, [hl]
    cp $05
    jr z, jr_00c_6af9

    ld b, a
    ld a, $30
    call $211e
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    dec b
    jr z, jr_00c_6af6

    dec b
    ld a, $f3
    jr z, jr_00c_6af3

    add a

jr_00c_6af3:
    ld e, $8f
    ld [de], a

jr_00c_6af6:
    jp $1e27


jr_00c_6af9:
    ld l, $a4
    res 7, [hl]
    call $042f
    ld e, $86
    ld [de], a
    ret


    ret


    ld e, $8f
    ld a, [de]
    or a
    jr z, jr_00c_6b18

    ld c, $0e
    call $1f04
    jp nz, $1e03

    ld l, $94
    xor a
    ld [hl+], a
    ld [hl], a

jr_00c_6b18:
    ld a, $10
    call $211e
    ld e, l
    ld a, [hl]
    ld [de], a
    ld l, $86
    ld a, [hl]
    and $3f
    call z, Call_00c_43cf
    call Call_00c_4156
    jp $2297


    ld b, $f3
    call Call_00c_6b8e
    jr jr_00c_6b41

    ld b, $e6
    call Call_00c_6b8e
    jr jr_00c_6b41

    ld b, $d9
    call Call_00c_6b8e

jr_00c_6b41:
    ld a, $06
    call $211e
    ld a, [hl]
    and $1c
    rrca
    rrca
    ld b, a
    ld e, $82
    ld a, [de]
    sub $02
    swap a
    rrca
    add b
    ld hl, $6b6a
    rst $10
    ld b, [hl]
    call Call_00c_6b82
    ld l, $8b
    ld e, l
    ld a, [hl+]
    ld [de], a
    inc l
    ld e, l
    ld a, [hl]
    add b
    ld [de], a
    jp $2297


    rst $38
    rst $38
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0102
    nop
    rst $38
    cp $ff
    nop
    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop

Call_00c_6b82:
    ld e, $af
    ld l, $82

jr_00c_6b86:
    inc e
    ld a, [de]
    ld h, a
    ld a, [hl]
    dec a
    jr nz, jr_00c_6b86

    ret


Call_00c_6b8e:
    ld h, d
    ld l, $8f
    ld a, [hl]
    cp b
    ret z

    or a
    jr z, jr_00c_6ba1

    ld c, $0e
    call $1f04
    ld l, $8f
    ld a, [hl]
    cp b
    ret c

jr_00c_6ba1:
    ld [hl], b
    ld l, $94
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_00c_6ba8:
    ld a, $33
    call $211e
    ld a, [hl]
    or a
    jr nz, jr_00c_6bbc

    ld e, $82
    ld a, [de]
    cp $05
    jp nz, $27c2

    jp $2e28


jr_00c_6bbc:
    ld e, $83
    ld a, [de]
    add $b1
    ld l, a
    ld h, d
    ld c, $82
    sub $b3
    jr z, jr_00c_6bd0

    inc a
    call nz, Call_00c_6bf5
    call Call_00c_6bf5

jr_00c_6bd0:
    call Call_00c_6bf5
    ld l, $a4
    res 7, [hl]
    ld l, $a9
    ld [hl], $05
    ld l, $82
    ld [hl], $05
    ld b, $02
    call Call_00c_437c
    jr nz, jr_00c_6bef

    ld l, $c7
    ld [hl], $80
    ld a, $73
    call $0c74

jr_00c_6bef:
    call $1e39
    jp Jump_00c_6c3e


Call_00c_6bf5:
    ld b, [hl]
    inc l
    ld a, [bc]
    cp $05
    ret nc

    dec a
    ld [bc], a
    ret


Call_00c_6bfe:
    ld h, d
    ld l, $b3
    ld c, $82
    ld b, [hl]

jr_00c_6c04:
    ld a, [bc]
    ld e, a
    dec l
    ld a, $af
    cp l
    ret nc

    ld b, [hl]
    ld a, [bc]
    cp $05
    jr nz, jr_00c_6c04

    ld h, e
    push hl
    call Call_00c_6b82
    ld l, $8b
    ld c, l
    ld a, [hl+]
    ld [bc], a
    inc l
    ld c, l
    ld a, [hl]
    ld [bc], a
    ld c, $8f
    xor a
    ld [bc], a
    ld c, $a4
    ld a, [bc]
    or $80
    ld [bc], a
    pop hl
    ld c, $82
    ld a, h
    ld [bc], a
    ld h, d

jr_00c_6c2f:
    inc l
    ld a, $b3
    cp l
    ret c

    ld b, [hl]
    ld a, [bc]
    cp $05
    jr z, jr_00c_6c2f

    inc a
    ld [bc], a
    jr jr_00c_6c2f

Call_00c_6c3e:
Jump_00c_6c3e:
    ld bc, $0404
    ld l, $82
    ld e, $b4

jr_00c_6c45:
    dec e
    ld a, [de]
    ld h, a
    ld a, [hl]
    cp $05
    jr z, jr_00c_6c4e

    dec b

jr_00c_6c4e:
    dec c
    jr nz, jr_00c_6c45

    ld a, b
    ld bc, $6c5d
    call $006d
    ld l, $90
    ld a, [bc]
    ld [hl], a
    ret


    ld a, [bc]
    rrca
    ld e, $3c
    call Call_00c_4051
    jr z, jr_00c_6c7e

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_404a

    ld e, $82
    ld a, [de]
    or a
    ret z

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    jp $2e28


jr_00c_6c7e:
    call Call_00c_4426
    jr nc, jr_00c_6c94

    rst $00
    sbc d
    ld l, h
    xor b
    ld l, h
    xor b
    ld l, h
    xor b
    ld l, h
    xor b
    ld l, h
    bit 0, h
    xor b
    ld l, h
    xor b
    ld l, h

jr_00c_6c94:
    ld a, b
    rst $00
    xor c
    ld l, h
    push hl
    ld l, h
    bit 0, b
    jp nz, Jump_00c_4364

    ld a, $14
    call Call_00c_435e
    ld l, $86
    inc [hl]
    ret


    ret


    ld a, [de]
    sub $08
    rst $00
    or e
    ld l, h
    jp nz, $d96c

    ld l, h
    call Call_00c_6d7d
    call Call_00c_439a
    jp nz, Jump_00c_6d1e

    ld l, $84
    inc [hl]
    call Call_00c_6d35
    call Call_00c_6d7d
    call Call_00c_439a
    jr nz, jr_00c_6cd0

    ld l, $84
    dec [hl]
    call Call_00c_6d6b

jr_00c_6cd0:
    call Call_00c_4156
    call Call_00c_6d1e
    jp $275f


    call Call_00c_439a
    call z, Call_00c_6d35
    call Call_00c_4156
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    rst $28
    ld l, h
    ld [bc], a
    ld l, l
    dec d
    ld l, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    ld l, $a5
    ld [hl], $05
    ld a, $05
    call $2772
    call $1e27
    ld a, [$cc79]
    or a
    jr z, jr_00c_6d0e

    call Call_00c_43bf
    jp $1fdb


jr_00c_6d0e:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $1e
    call Call_00c_439a
    jp nz, Jump_00c_441f

    jp $2e28


Call_00c_6d1e:
Jump_00c_6d1e:
    call $1e52
    ld h, d
    ld l, $89
    sub [hl]
    and $1f
    sub $0c
    cp $09
    ld l, $a5
    jr c, jr_00c_6d32

    ld [hl], $1c
    ret


jr_00c_6d32:
    ld [hl], $50
    ret


Call_00c_6d35:
    ld bc, $0703
    call $434f
    ld a, b
    ld hl, $6d63
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld e, $84
    ld a, [de]
    cp $0a
    jp z, Jump_00c_43c6

    call Call_00c_6d5b
    swap a
    rlca
    ld h, d
    ld l, $b1
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00c_6d5b:
    ld a, c
    or a
    jp z, Jump_00c_43b4

    jp Jump_00c_43c6


    add hl, de
    ld e, $23
    jr z, @+$2f

    ld [hl-], a
    scf
    inc a

Call_00c_6d6b:
    call $042f
    and $03
    ld hl, $6d79
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    rrca
    ld e, $2d
    inc a

Call_00c_6d7d:
    ld a, [$cc79]
    or a
    jr z, jr_00c_6d94

    ld c, $40
    call $1f60
    jr nc, jr_00c_6d94

    rrca
    xor $02
    ld b, a
    ld a, [$d008]
    cp b
    jr z, jr_00c_6d9a

jr_00c_6d94:
    ld e, $b2
    ld a, $3c
    ld [de], a
    ret


jr_00c_6d9a:
    pop hl
    ld h, d
    ld l, $b2
    dec [hl]
    jr z, jr_00c_6db9

    ld a, [hl]
    and $03
    sub $01
    jr nc, jr_00c_6daa

    cpl
    inc a

jr_00c_6daa:
    dec a
    bit 0, b
    jr z, jr_00c_6db4

    ld l, $8d
    add [hl]
    ld [hl], a
    ret


jr_00c_6db4:
    ld l, $8b
    add [hl]
    ld [hl], a
    ret


jr_00c_6db9:
    ld l, $84
    ld [hl], $0a
    ld l, $a5
    ld [hl], $50
    ld a, $04
    call $2772
    ld b, $1c
    call Call_00c_436d
    ret nz

    jp $21fd


    jr z, jr_00c_6ddc

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00c_400a

    ret


jr_00c_6ddc:
    ld e, $84
    ld a, [de]
    rst $00
    ldh a, [$6d]
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    di
    ld l, l
    jp $2e28


    ret


    jp $2e28


    rst $30
    ld l, a
    rst $30
    ld l, a
    dec bc
    ld [hl], b
    rla
    ld [hl], b
    ld sp, $4f70
    ld [hl], b
    sub c
    ld [hl], d
    ld l, a
    ld [hl], b
    ld a, e
    ld [hl], b
    ld a, a
    ld [hl], b
    add a
    ld [hl], b
    sub c
    ld [hl], b
    add a
    ld [hl], b
    sub a
    ld [hl], b
    and a
    ld [hl], b
    xor l
    ld [hl], b
    or a
    ld [hl], b
    di
    ld [hl], b
    cp e
    ld [hl], b
    cp l
    ld [hl], b
    cp a
    ld [hl], b
    cp l
    ld [hl], b
    pop hl
    ld [hl], b
    jp $c770


    ld [hl], b
    call $d370
    ld [hl], b
    db $d3
    ld [hl], b
    push de
    ld [hl], b
    rst $08
    ld [hl], b
    pop hl
    ld [hl], b
    rst $30
    ld l, a
    add a
    ld [hl], b
    add a
    ld [hl], b
    add a
    ld [hl], b
    di
    ld [hl], b
    rst $08
    ld [hl], b
    di
    ld [hl], b
    rst $30
    ld l, a
    db $fd
    ld [hl], b
    di
    ld [hl], b
    dec c
    ld [hl], c
    di
    ld [hl], b
    dec d
    ld [hl], c
    jp $1970


    ld [hl], c
    di
    ld [hl], b
    pop hl
    ld [hl], b
    dec e
    ld [hl], c
    inc hl
    ld [hl], c
    daa
    ld [hl], c
    dec hl
    ld [hl], c
    cpl
    ld [hl], c
    dec sp
    ld [hl], c
    ld c, e
    ld [hl], c
    db $d3
    ld [hl], b
    ld a, a
    ld [hl], b
    ld c, a
    ld [hl], c
    cp e
    ld [hl], b
    ld d, a
    ld [hl], c
    ld e, e
    ld [hl], c
    add a
    ld [hl], b
    ld a, e
    ld [hl], b
    rst $30
    ld l, a
    di
    ld [hl], b
    ld h, a
    ld [hl], c
    rst $30
    ld l, a
    ld l, a
    ld [hl], c
    rst $30
    ld l, a
    ld [hl], l
    ld [hl], c
    adc c
    ld [hl], c
    add hl, hl
    ld [hl], d
    add a
    ld [hl], b
    add a
    ld [hl], b
    add a
    ld [hl], b
    adc e
    ld [hl], c
    ld h, a
    ld [hl], c
    db $d3
    ld [hl], b
    add a
    ld [hl], b
    adc a
    ld [hl], c
    rst $30
    ld l, a
    ld a, a
    ld [hl], b
    ld a, e
    ld [hl], b
    and e
    ld [hl], c
    and a
    ld [hl], c
    add a
    ld [hl], b
    cp c
    ld [hl], c
    rst $30
    ld l, a
    and a
    ld [hl], b
    rst $30
    ld l, a
    rst $30
    ld l, a
    cp l
    ld [hl], c
    rst $30
    ld l, a
    cp a
    ld [hl], c
    pop bc
    ld [hl], c
    di
    ld [hl], b
    di
    ld [hl], b
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld l, a
    add a
    ld [hl], b
    jp $c971


    ld [hl], c
    ld c, a
    ld [hl], b
    rst $10
    ld [hl], c
    db $e3
    ld [hl], c
    jp hl


    ld [hl], c
    push af
    ld [hl], c
    rst $30
    ld [hl], c
    add hl, bc
    ld [hl], d
    add hl, hl
    ld [hl], d
    dec sp
    ld [hl], d
    ld e, a
    ld [hl], d
    ld [hl], e
    ld [hl], d
    jp hl


    ld [hl], c
    sbc e
    ld [hl], d
    db $fc
    ld a, c
    db $fc
    ld a, c
    ld a, [de]
    ld a, d
    ld a, [hl+]
    ld a, d
    ld h, d
    ld a, d
    sub b
    ld a, d
    add b
    ld a, [hl]
    xor [hl]
    ld a, d
    ret z

    ld a, d
    ret nc

    ld a, d
    ldh [$7a], a
    or $7a
    ldh [$7a], a
    nop
    ld a, e
    inc d
    ld a, e
    ld e, $7b
    ld [hl-], a
    ld a, e
    or $7a
    ld a, [hl-]
    ld a, e
    ld b, b
    ld a, e
    or $7a
    ld a, [hl-]
    ld a, e
    ld b, h
    ld a, e
    ld d, h
    ld a, e
    ld e, h
    ld a, e
    ld b, b
    ld a, e
    or $7a
    ld a, [hl-]
    ld a, e
    ldh [$7a], a
    ld l, h
    ld a, e
    ld [hl], b
    ld a, e
    db $fc
    ld a, c
    ldh [$7a], a
    ldh [$7a], a
    ldh [$7a], a
    or $7a
    or $7a
    or $7a
    db $fc
    ld a, c
    ld a, [hl]
    ld a, e
    ld l, h
    ld a, e
    sub [hl]
    ld a, e
    xor d
    ld a, e
    xor h
    ld a, e
    sub $7b
    or d
    ld a, e
    or $7a
    ret nz

    ld a, e
    or $7a
    ld a, [hl-]
    ld a, e
    jp nc, $d67b

    ld a, e
    ld [$d67b], a
    ld a, e
    sub $7b
    db $f4
    ld a, e
    ld hl, sp+$7b
    db $fc
    ld a, e
    or $7a
    ld b, $7c
    ld c, $7c
    ld [hl+], a
    ld a, h
    or $7a
    db $fc
    ld a, c
    inc a
    ld a, h
    ld d, h
    ld a, e
    db $fc
    ld a, c
    ld b, [hl]
    ld a, h
    db $fc
    ld a, c
    ld d, h
    ld a, h
    ld l, b
    ld a, h
    ld l, h
    ld a, h
    ld [hl+], a
    ld a, h
    ld [hl+], a
    ld a, h
    ld [hl+], a
    ld a, h
    ld l, h
    ld a, e
    ld d, h
    ld a, e
    or $7a
    ldh [$7a], a
    adc h
    ld a, h
    db $fc
    ld a, c
    ld a, [hl-]
    ld a, e
    or $7a
    and b
    ld a, h
    xor b
    ld a, h
    ret nz

    ld a, h
    jp nc, $fc7c

    ld a, c
    ld [hl-], a
    ld a, e
    db $fc
    ld a, c
    db $fc
    ld a, c
    ldh [$7c], a
    db $fc
    ld a, c
    add sp, $7c
    db $fc
    ld a, e
    or $7a
    db $ec
    ld a, h
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, c
    ldh [$7a], a
    xor $7c
    inc b
    ld a, l
    ld a, [de]
    ld a, l
    ld a, [hl-]
    ld a, l
    ld h, [hl]
    ld a, l
    ld [hl], b
    ld a, l
    or b
    ld a, l
    cp b
    ld a, l
    jp nc, $fa7d

    ld a, l
    inc e
    ld a, [hl]
    ld b, [hl]
    ld a, [hl]
    ld e, b
    ld a, [hl]
    sub b
    ld a, l
    adc [hl]
    ld a, [hl]
    add b
    ld [hl], h
    add l
    ld [hl], h
    sbc d
    ld [hl], h
    and l
    ld [hl], d
    xor l
    ld [hl], d
    or l
    ld [hl], d
    cp l
    ld [hl], d
    jp nz, $ca72

    ld [hl], d
    jp nc, $d772

    ld [hl], d
    sbc d
    ld [hl], h
    rst JumpTable
    ld [hl], d
    xor c
    ld [hl], h
    xor [hl]
    ld [hl], h
    sub h
    db $76
    rst $20
    ld [hl], d
    rst $28
    ld [hl], d
    rst $30
    ld [hl], d
    rst $38
    ld [hl], d
    rlca
    ld [hl], e
    rrca
    ld [hl], e
    rla
    ld [hl], e
    rra
    ld [hl], e
    daa
    ld [hl], e
    add hl, sp
    ld [hl], e
    ld c, e
    ld [hl], e
    ld e, d
    ld [hl], e
    ld l, c
    ld [hl], e
    add b
    ld [hl], h
    ld l, a
    ld [hl], e
    ld a, [hl]
    ld [hl], e
    add [hl]
    ld [hl], e
    ld a, e
    ld [hl], a
    jp nc, $8072

    ld [hl], a
    sbc h
    ld [hl], e
    sbc a
    ld [hl], e
    and d
    ld [hl], e
    and l
    ld [hl], e
    xor b
    ld [hl], e
    xor e
    ld [hl], e
    adc [hl]
    ld [hl], e
    xor [hl]
    ld [hl], e
    add b
    ld [hl], h
    add l
    ld [hl], h
    sbc d
    ld [hl], h
    sbc a
    ld [hl], h
    and h
    ld [hl], h
    xor c
    ld [hl], h
    xor [hl]
    ld [hl], h
    sub h
    db $76
    sbc c
    db $76
    cp l
    ld [hl], d
    ld [$d474], a
    db $76
    db $76
    ld [hl], a
    ld a, e
    ld [hl], a
    jp nc, $8072

    ld [hl], a
    jr c, jr_00c_70e5

    ld b, b
    ld [hl], h
    ld c, b
    ld [hl], h
    ld d, b
    ld [hl], h
    db $ed
    ld a, c
    db $76
    ld [hl], a
    pop bc
    ld [hl], e
    ret


    ld [hl], e
    db $db
    ld [hl], e
    db $e3
    ld [hl], e
    db $eb
    ld [hl], e
    di
    ld [hl], e
    ei
    ld [hl], e
    inc bc
    ld [hl], h
    dec bc
    ld [hl], h
    inc de
    ld [hl], h
    sbc c
    db $76
    dec de
    ld [hl], h
    inc h
    ld [hl], h
    inc l
    ld [hl], h
    jr c, jr_00c_710d

    ld b, b
    ld [hl], h
    ld c, b
    ld [hl], h
    ld d, b
    ld [hl], h
    db $db
    ld [hl], e
    ld e, b
    ld [hl], h
    db $eb
    ld [hl], e
    ld h, b
    ld [hl], h
    add b
    ld [hl], h
    add l
    ld [hl], h
    or e
    ld [hl], h
    db $db
    ld [hl], e
    db $e3
    ld [hl], e
    db $eb
    ld [hl], e
    di
    ld [hl], e
    adc d
    ld [hl], h
    jr c, jr_00c_712d

    ld b, b
    ld [hl], h
    jr c, jr_00c_7131

    sub d
    ld [hl], h
    jr c, jr_00c_7135

    db $e3
    ld [hl], e
    db $db
    ld [hl], e
    db $e3
    ld [hl], e
    cp [hl]
    ld [hl], h
    call z, $d474
    ld [hl], h
    ld [c], a
    ld [hl], h
    rst $28
    ld [hl], h
    rst $30
    ld [hl], h
    db $db
    ld [hl], e
    ei
    ld [hl], e
    inc bc
    ld [hl], h
    dec bc
    ld [hl], h
    inc de
    ld [hl], h
    adc d
    ld [hl], h
    ld [$8074], a
    ld [hl], h
    add l
    ld [hl], h

jr_00c_70e5:
    sbc d
    ld [hl], h
    sbc a
    ld [hl], h
    and h
    ld [hl], h
    xor c
    ld [hl], h
    xor [hl]
    ld [hl], h
    sub h
    db $76
    sbc c
    db $76
    add b
    ld [hl], h
    add l
    ld [hl], h
    sbc d
    ld [hl], h
    sbc a
    ld [hl], h
    and h
    ld [hl], h
    ld [bc], a
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    inc e
    ld [hl], l
    ld l, $75
    ld b, b
    ld [hl], l
    ld d, d
    ld [hl], l
    ld h, h
    ld [hl], l
    ld l, d
    ld [hl], l

jr_00c_710d:
    ld [hl], d
    ld [hl], l
    ld a, l
    ld [hl], l
    adc c
    ld [hl], l
    sub h
    ld [hl], l
    ld [hl], d
    ld [hl], l
    ld [hl], d
    ld [hl], l
    and b
    ld [hl], l
    cp l
    ld [hl], l
    rst $08
    ld [hl], l
    add b
    ld [hl], h
    add l
    ld [hl], h
    pop bc
    ld [hl], e
    sbc d
    ld [hl], h
    add l
    ld [hl], h
    pop bc
    ld [hl], e
    pop bc
    ld [hl], e

jr_00c_712d:
    jp c, $e275

    ld [hl], l

jr_00c_7131:
    add l
    ld [hl], h
    add b
    ld [hl], h

jr_00c_7135:
    db $eb
    ld [hl], l
    rst $30
    ld [hl], l
    rst $38
    ld [hl], l
    rlca
    db $76
    db $10
    db $76
    ld c, b
    ld [hl], h
    add hl, de
    db $76
    ld hl, $3076
    db $76
    daa
    db $76
    ld [hl], $76
    db $db
    ld [hl], e
    db $e3
    ld [hl], e
    sbc a
    ld [hl], h
    ccf
    db $76
    add b
    ld [hl], h
    pop bc
    ld [hl], e
    db $db
    ld [hl], e
    db $e3
    ld [hl], e
    add b
    ld [hl], h
    ld c, d
    db $76
    ld e, h
    db $76
    and h
    ld [hl], h
    ld h, c
    db $76
    ld [hl], e
    db $76
    add b
    ld [hl], h
    sbc d
    ld [hl], h
    jr c, jr_00c_71e1

    ld b, b
    ld [hl], h
    db $db
    ld [hl], e
    ld a, b
    db $76
    add [hl]
    db $76
    adc [hl]
    db $76
    sbc d
    ld [hl], h
    sbc a
    ld [hl], h
    and h
    ld [hl], h
    xor c
    ld [hl], h
    xor [hl]
    ld [hl], h
    sub h
    db $76
    sbc c
    db $76
    cp l
    ld [hl], d
    add l
    ld [hl], h
    ld [c], a
    ld [hl], h
    jr c, jr_00c_7201

    db $db
    ld [hl], e
    add b
    ld [hl], h
    add l
    ld [hl], h
    sbc d
    ld [hl], h
    sbc a
    ld [hl], h
    and h
    ld [hl], h
    xor c
    ld [hl], h
    xor [hl]
    ld [hl], h
    sub h
    db $76
    sbc c
    db $76
    cp l
    ld [hl], d
    or [hl]
    db $76
    cp [hl]
    db $76
    jr c, jr_00c_721d

    ld b, b
    ld [hl], h
    ld c, b
    ld [hl], h
    ld d, b
    ld [hl], h
    add $76
    sbc c
    db $76
    cp l
    ld [hl], d
    ld [$d474], a
    db $76
    reti


    db $76
    db $ed
    db $76
    db $fc
    db $76
    ld a, [bc]
    ld [hl], a
    ccf
    db $76
    ld [de], a
    ld [hl], a
    add hl, hl
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    pop bc
    ld [hl], e
    ld b, [hl]
    ld [hl], a
    xor [hl]
    ld [hl], h
    ld e, b
    ld [hl], a
    ld h, b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld l, [hl]
    ld [hl], a
    jr c, jr_00c_724d

    add l
    ld [hl], a
    sub e
    ld [hl], a
    and c
    ld [hl], a
    xor a
    ld [hl], a

jr_00c_71e1:
    cp l
    ld [hl], a
    jr c, jr_00c_7259

    sbc d
    ld [hl], h
    cp l
    ld a, c
    jr c, jr_00c_725f

    ld b, b
    ld [hl], h
    ld c, b
    ld [hl], h
    ld d, b
    ld [hl], h
    bit 6, a
    db $dd
    ld [hl], a
    rst $28
    ld [hl], a
    dec bc
    ld [hl], h
    db $fd
    ld [hl], a
    dec b
    ld a, b
    dec c
    ld a, b
    add hl, de
    ld a, b

jr_00c_7201:
    sub h
    db $76
    ld hl, $3578
    ld a, b
    dec a
    ld a, b
    ld b, l
    ld a, b
    ld c, l
    ld a, b
    and l
    ld [hl], e
    ld e, a
    ld a, b
    jr c, @+$76

    ld h, d
    ld a, b
    and h
    ld [hl], h
    add b
    ld [hl], h
    ld l, d
    ld [hl], l
    ld [hl], h
    ld a, b

jr_00c_721d:
    jp nc, $ea72

    ld [hl], h
    add [hl]
    ld a, b
    adc [hl]
    ld a, b
    cp l
    ld [hl], d
    xor c
    ld [hl], h
    db $db
    ld [hl], e
    db $e3
    ld [hl], e
    db $eb
    ld [hl], e
    di
    ld [hl], e
    adc d
    ld [hl], h
    sbc [hl]
    db $76
    and [hl]
    db $76
    xor [hl]
    db $76
    ret c

    ld [hl], e
    add b
    ld [hl], h
    and b
    ld a, b
    and [hl]
    ld a, b
    or c
    ld a, b
    or a
    ld a, b
    jp nz, $c878

    ld a, b
    db $d3
    ld a, b
    reti


    ld a, b

jr_00c_724d:
    db $e4
    ld a, b
    db $fc
    ld a, b
    inc d
    ld a, c
    xor b
    ld [hl], e
    inc l
    ld a, c
    and d
    ld [hl], e

jr_00c_7259:
    inc [hl]
    ld a, c
    ld c, a
    ld a, c
    ld [hl], e
    ld a, c

jr_00c_725f:
    ld l, b
    ld [hl], h
    add b
    ld [hl], h
    add l
    ld [hl], h
    sbc d
    ld [hl], h
    sbc a
    ld [hl], h
    adc [hl]
    ld a, c
    xor c
    ld [hl], h
    xor [hl]
    ld [hl], h
    sub h
    db $76
    sbc c
    db $76
    sub [hl]
    ld a, c
    sbc a
    ld [hl], h
    and h
    ld [hl], h
    add [hl]
    ld a, b
    and h
    ld a, c
    ld [$d474], a
    db $76
    db $76
    ld [hl], a
    ld a, e
    ld [hl], a
    jp nc, Jump_00c_5f72

    ld a, b
    sbc h
    ld [hl], e
    sbc a
    ld [hl], e
    and d
    ld [hl], e
    and l
    ld [hl], e
    add b
    ld [hl], h
    add l
    ld [hl], h
    sbc d
    ld [hl], h
    or c
    ld [hl], e
    cp c
    ld [hl], e
    or l
    ld a, c
    or d
    ld a, c
    cp l
    ld a, c
    push bc
    ld a, c
    call $0479
    ld b, $00
    inc b
    ld [$ff00], sp
    ld sp, hl
    inc b
    ld c, $00
    inc b
    stop
    rst $38
    ld sp, hl
    inc b
    ld a, [bc]
    nop
    inc b
    inc c
    nop
    rst $38
    ld sp, hl
    ld a, a
    ld [de], a
    nop
    rst $38
    db $fc
    inc b
    inc d
    nop
    inc b
    ld d, $00
    rst $38
    ld sp, hl
    inc b
    jr jr_00c_72cd

jr_00c_72cd:
    inc b
    ld a, [de]
    nop
    rst $38
    ld sp, hl
    ld a, a
    inc e
    nop
    rst $38
    db $fc
    jr jr_00c_72d9

jr_00c_72d9:
    nop
    jr jr_00c_72de

    nop
    rst $38

jr_00c_72de:
    ld sp, hl
    db $10
    ld b, $00
    db $10
    ld [$ff00], sp
    ld sp, hl
    inc c
    jr z, jr_00c_72ea

jr_00c_72ea:
    inc c
    ld a, [hl+]
    nop
    rst $38
    ld sp, hl
    inc c
    inc l
    nop
    inc c
    ld l, $00
    rst $38
    ld sp, hl
    inc c
    jr nc, jr_00c_72fa

jr_00c_72fa:
    inc c
    ld [hl-], a
    nop
    rst $38
    ld sp, hl
    inc c
    inc [hl]
    nop
    inc c
    ld [hl], $00
    rst $38
    ld sp, hl
    inc c
    nop
    nop
    inc c
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    inc c
    inc b
    nop
    inc c
    ld b, $00
    rst $38
    ld sp, hl
    inc c
    ld [$0c00], sp
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    inc c
    inc c
    nop
    inc c
    ld c, $00
    rst $38
    ld sp, hl
    rlca
    ld [de], a
    nop
    rlca
    inc d
    nop
    rrca
    stop
    rlca
    ld [de], a
    ld bc, $1407
    nop
    ld a, a
    inc d
    rst $38
    rlca
    jr jr_00c_733c

jr_00c_733c:
    rlca
    ld a, [de]
    nop
    rrca
    ld d, $00
    rlca
    jr jr_00c_7346

    rlca

jr_00c_7346:
    ld a, [de]
    nop
    ld a, a
    ld a, [de]
    rst $38
    ld e, $1c
    nop
    ld [$001e], sp
    ld [$001c], sp
    inc c
    ld e, $00
    ld a, a
    ld e, $ff
    ld e, $20
    nop
    ld [$0022], sp
    ld [$0020], sp
    inc c
    ld [hl+], a
    nop
    ld a, a
    ld [hl+], a
    rst $38
    db $10
    ld h, $00
    ld a, a
    ld h, $ff
    ld [$000a], sp
    ld [$000c], sp
    ld [$000e], sp
    inc c
    stop
    ld a, a
    db $10
    rst $38
    db $10
    ld [de], a
    nop
    db $10
    inc d
    nop
    rst $38
    ld sp, hl
    db $10
    ld d, $00
    db $10
    jr jr_00c_738c

jr_00c_738c:
    rst $38
    ld sp, hl
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$ff00], sp
    di
    ld a, a
    jr nz, jr_00c_739f

jr_00c_739f:
    ld a, a
    ld [hl+], a
    nop
    ld a, a
    inc h
    nop
    ld a, a
    ld h, $00
    ld a, a
    jr z, jr_00c_73ab

jr_00c_73ab:
    ld a, a
    ld a, [hl+]
    nop
    ld a, a
    inc l
    nop
    jr jr_00c_73b9

    nop
    jr jr_00c_73be

    nop
    rst $38
    ld sp, hl

jr_00c_73b9:
    db $10
    ld a, [bc]
    nop
    db $10
    inc c

jr_00c_73be:
    nop
    rst $38
    ld sp, hl
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    jr nc, jr_00c_73cf

    nop
    ld [$0006], sp

jr_00c_73cf:
    jr nz, jr_00c_73d7

    ld bc, $0408
    nop
    db $10
    inc b

jr_00c_73d7:
    rst $38
    ld e, $20
    nop
    ld [$0000], sp
    ld [$0002], sp
    rst $38
    ld sp, hl
    ld [$0004], sp
    ld [$0006], sp
    rst $38
    ld sp, hl
    ld [$0008], sp
    ld [$000a], sp
    rst $38
    ld sp, hl
    ld [$000c], sp
    ld [$000e], sp
    rst $38
    ld sp, hl
    inc c
    nop
    nop
    inc c
    ld [bc], a
    ld bc, $f9ff
    inc c
    inc b
    nop
    inc c
    ld b, $01
    rst $38
    ld sp, hl
    inc c
    ld [$0c00], sp
    ld a, [bc]
    ld bc, $f9ff
    inc c
    inc c
    nop
    inc c
    ld c, $01
    rst $38
    ld sp, hl
    ld [de], a
    nop
    nop
    ld bc, $ff02
    ld [$0002], sp
    ld [HeaderLogo], sp
    ld [$0006], sp
    rst $38
    ld sp, hl
    ld [$0002], sp
    ld bc, $ff00
    rrca
    nop
    nop
    ld a, a
    nop
    ld bc, $0010
    nop
    db $10
    ld [bc], a
    ld bc, $f9ff
    db $10
    inc b
    nop
    db $10
    ld b, $01
    rst $38
    ld sp, hl
    db $10
    ld [$1000], sp
    ld a, [bc]
    ld bc, $f9ff
    db $10
    inc c
    nop
    db $10
    ld c, $01
    rst $38
    ld sp, hl
    ld [$0004], sp
    ld [$0010], sp
    rst $38
    ld sp, hl
    ld [$000c], sp
    ld [$0012], sp
    rst $38
    ld sp, hl
    ld b, $00
    nop
    ld b, $06
    nop
    ld b, $00
    nop
    ld b, $06
    nop
    ld b, $00
    nop
    dec b
    ld b, $00
    dec b
    nop
    nop
    dec b
    ld b, $00
    ld a, a
    nop
    nop
    rst $38
    db $fc
    ld a, a
    ld [bc], a
    nop
    rst $38
    db $fc
    ld [$0010], sp
    ld [$0012], sp
    rst $38
    ld sp, hl
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld a, a
    ld b, $00
    rst $38
    db $fc
    ld a, a
    ld [$ff00], sp
    db $fc
    ld a, a
    ld a, [bc]
    nop
    rst $38
    db $fc
    ld a, a
    inc c
    nop
    rst $38
    db $fc
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$ff00], sp
    or $06
    nop
    nop
    inc c
    ld [bc], a
    nop
    ld b, $00
    nop
    inc c
    inc b
    nop
    rst $38
    di
    inc c
    ld b, $00
    inc c
    ld [$ff00], sp
    ld sp, hl
    ld b, $0a
    nop
    inc c
    inc c
    nop
    ld b, $0a
    nop
    inc c
    ld c, $00
    rst $38
    di
    ld b, $00
    nop
    ld b, $02
    nop
    rst $38
    ld sp, hl
    ld a, a
    inc d
    nop
    rst $38
    db $fc
    jr jr_00c_74f1

jr_00c_74f1:
    nop
    jr @+$04

    ld bc, $f9ff
    ld a, [bc]
    inc b
    nop
    ld [$0006], sp
    add hl, bc
    ld [$ff00], sp
    or $20
    nop
    nop
    jr nz, jr_00c_7509

    nop
    rst $38

jr_00c_7509:
    ld sp, hl
    inc a
    inc b
    nop
    inc c
    ld [$1001], sp
    inc b
    nop
    inc c
    ld [$3c01], sp
    inc b
    nop
    ld a, a
    inc b
    rst $38
    inc a
    inc b
    nop
    inc c
    inc c
    ld bc, $0410
    nop
    inc c
    inc c
    ld bc, $043c
    nop
    ld a, a
    inc b
    rst $38
    inc a
    stop
    inc c
    ld [de], a
    ld bc, $1010
    nop
    inc c
    ld [de], a
    ld bc, $103c
    nop
    ld a, a
    db $10
    rst $38
    inc a
    ld b, $00
    inc c
    ld c, $01
    db $10
    ld b, $00
    inc c
    ld c, $01
    inc a
    ld b, $00
    ld a, a
    ld b, $ff
    inc a
    ld b, $00
    inc c
    ld a, [bc]
    ld bc, $0610
    nop
    inc c
    ld a, [bc]
    ld bc, $063c
    nop
    ld a, a
    ld b, $ff
    inc d
    nop
    nop
    ld a, a
    nop
    rst $38
    db $10
    inc d
    nop
    db $10
    ld d, $00
    rst $38
    ld sp, hl
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    rst $38
    or $0a
    ld b, $00
    ld [bc], a
    ld b, $01
    ld a, [bc]
    ld [$7f00], sp
    ld [$02ff], sp
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    nop
    ld [bc], a
    ld c, $00
    rst $38
    or $0a
    stop
    ld [bc], a
    db $10
    ld bc, $120a
    nop
    ld a, a
    ld [de], a
    rst $38
    inc b
    nop
    inc bc
    inc b
    ld [bc], a
    ld b, $04
    inc b
    add hl, bc
    inc b
    ld b, $0c
    inc b
    ld [$080f], sp
    ld a, [bc]
    nop
    ld [$0008], sp
    ld [$000c], sp
    ld [$0008], sp
    rst $38
    di
    inc b
    ld [$040f], sp
    ld b, $0c
    inc b
    inc b
    add hl, bc
    inc b
    ld [bc], a
    ld b, $04
    nop
    inc bc
    ld a, a
    nop
    rst $38
    rrca
    nop
    nop
    ld bc, $0100
    db $10
    ld [bc], a
    rst $38
    rst $38
    or $04
    inc b
    nop
    inc b
    ld b, $00
    rst $38
    ld sp, hl
    db $10
    inc b
    nop
    stop
    nop
    ld a, a
    ld [bc], a
    ld bc, $0208
    nop
    stop
    nop
    db $10
    inc b
    nop
    ld a, a
    inc b
    ld bc, $0218
    nop
    inc c
    nop
    nop
    rst $38
    ld sp, hl
    inc b
    ld b, $00
    inc b
    ld [$ff00], sp
    ld sp, hl
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    ld a, a
    ld [bc], a
    ld bc, $0410
    nop
    db $10
    ld b, $00
    ld a, a
    ld b, $01
    db $10
    ld c, $00
    db $10
    stop
    rst $38
    ld sp, hl
    ld [bc], a
    ld [$1000], sp
    inc c
    ld bc, $020a
    ld [bc], a
    ld a, [bc]
    nop
    nop
    ld a, a
    nop
    inc bc
    ld [bc], a
    ld c, $00
    db $10
    ld [de], a
    ld bc, $060a
    ld [bc], a
    ld a, [bc]
    inc b
    nop
    ld a, a
    inc b
    inc bc
    inc b
    inc b
    nop
    inc b
    ld [$0300], sp
    ld b, $00
    rst $38
    or $08
    ld [bc], a
    nop
    ld [$0010], sp
    ld [$0112], sp
    ld [$0010], sp
    ld [$000c], sp
    ld a, a
    inc c
    ld [bc], a
    ld a, a
    ld b, $00
    rst $38
    db $fc
    ld [$000a], sp
    ld [$0010], sp
    ld [$0012], sp
    ld [$0110], sp
    ld [$0004], sp
    ld a, a
    inc b
    ld [bc], a
    ld a, a
    ld c, $00
    rst $38
    db $fc
    inc b
    ld b, $00
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    inc b
    inc c
    nop
    rst $38
    di
    inc b
    nop
    nop
    inc b
    inc b
    nop
    rst $38
    ld sp, hl
    inc h
    nop
    nop
    ld a, a
    nop
    ld bc, $0e7f
    nop
    rst $38
    db $fc
    ld a, a
    stop
    rst $38
    db $fc
    ld [$0014], sp
    ld [$0016], sp
    rst $38
    ld sp, hl
    ld [$0018], sp
    ld [$001a], sp
    rst $38
    ld sp, hl
    ld [$001c], sp
    ld [$001e], sp
    rst $38
    ld sp, hl
    ld bc, $0102
    ld bc, $0000
    rst $38
    ld sp, hl
    ld bc, $0106
    ld bc, $0004
    rst $38
    ld sp, hl
    ld [$0408], sp
    ld [$060c], sp
    ld [$0000], sp
    ld [$0204], sp
    rst $38
    di
    ld a, a
    ld d, $00
    rst $38
    db $fc
    ld e, d
    nop
    nop
    ld a, [bc]
    ld [bc], a
    ld bc, $040a
    ld [bc], a
    inc a
    ld b, $03
    ld a, [bc]
    inc b
    inc b
    ld a, [bc]
    ld [bc], a
    dec b
    rst $38
    db $ed
    inc b
    ld [$0403], sp
    ld a, [bc]
    inc bc
    ld e, $00
    add b
    jr z, @+$0e

    ld a, a
    daa
    nop
    rst $38
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    ld [$0006], sp
    rst $38
    di
    inc b
    nop
    nop
    ld a, a
    ld [bc], a
    nop
    rst $38
    db $fc
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    ld e, d
    ld a, [bc]
    ld bc, $0804
    nop
    inc b
    ld b, $00
    inc b
    ld [$ff00], sp
    di
    inc b
    inc c
    nop
    inc b
    ld c, $00
    db $10
    stop
    inc b
    ld [de], a
    nop
    jr nz, @+$16

    ld bc, $f0ff
    ld [$0004], sp
    ld [$0002], sp
    ld [$0000], sp
    ld a, a
    nop
    rst $38
    db $10
    inc b
    nop
    inc a
    ld b, $00
    ld e, $08
    nop
    ld e, $0a
    ld bc, $063c
    nop
    ld a, a
    ld b, $ff
    db $10
    inc c
    nop
    db $10
    ld c, $00
    rst $38
    ld sp, hl
    ld b, $10
    nop
    ld b, $12
    nop
    rst $38
    ld sp, hl
    ld e, $14
    nop
    ld a, a
    db $10
    rst $38
    jr @+$0a

    nop
    jr jr_00c_777d

    ld bc, $f9ff
    ld a, a
    jr jr_00c_7779

jr_00c_7779:
    rst $38
    db $fc
    ld a, a
    ld a, [de]

jr_00c_777d:
    nop
    rst $38
    db $fc
    ld a, a
    ld e, $01
    rst $38
    db $fc
    inc bc
    inc b
    nop
    inc bc
    ld b, $00
    inc bc
    ld [$0300], sp
    ld a, [bc]
    nop
    rst $38
    di
    inc bc
    inc c
    nop
    inc bc
    ld c, $00
    inc bc
    stop
    inc bc
    ld [de], a
    nop
    rst $38
    di
    inc bc
    inc d
    nop
    inc bc
    ld d, $02
    inc bc
    jr jr_00c_77ae

    inc bc
    ld a, [de]
    ld b, $ff

jr_00c_77ae:
    di
    db $10
    inc e
    nop
    db $10
    ld e, $00
    db $10
    jr nz, jr_00c_77b8

jr_00c_77b8:
    db $10
    ld [hl+], a
    nop
    rst $38
    di
    db $10
    inc h
    nop
    db $10
    ld h, $00
    db $10
    jr z, jr_00c_77c6

jr_00c_77c6:
    db $10
    ld a, [hl+]
    nop
    rst $38
    di
    add hl, de
    inc b
    nop
    rlca
    stop
    rlca
    ld [de], a
    nop
    ld a, [bc]
    inc d
    nop
    rrca
    ld d, $01
    ld a, a
    ld d, $ff
    add hl, de
    inc c
    nop
    rlca
    jr jr_00c_77e3

jr_00c_77e3:
    rlca
    ld a, [de]
    nop
    ld a, [bc]
    inc e
    nop
    rrca
    ld e, $01
    ld a, a
    ld e, $ff
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [bc]
    inc b
    nop
    ld a, [bc]
    ld b, $00
    rst $38
    di
    inc d
    nop
    ld [bc], a
    inc d
    ld [bc], a
    inc bc
    rst $38
    ld sp, hl
    inc c
    nop
    ld [bc], a
    inc c
    ld [bc], a
    inc bc
    rst $38
    ld sp, hl
    inc d
    nop
    inc b
    inc d
    inc b
    dec b
    inc d
    ld b, $06
    ld a, a
    ld b, $ff
    ld e, $00
    rlca
    ld a, a
    inc c
    ld [$fcff], sp
    ld [$0010], sp
    ld [$000e], sp
    inc b
    stop
    inc b
    ld [de], a
    nop
    ld [$0014], sp
    ld [$0012], sp
    rst $38
    ld sp, hl
    ld [$0010], sp
    ld [$000e], sp
    rst $38
    ld sp, hl
    db $10
    jr jr_00c_7840

jr_00c_7840:
    db $10
    ld d, $00
    rst $38
    ld sp, hl
    db $10
    ld e, $00
    db $10
    jr nz, jr_00c_784b

jr_00c_784b:
    rst $38
    ld sp, hl
    ld a, b
    inc h
    ld bc, $221e
    nop
    inc c
    inc h
    ld [bc], a
    ld [$0022], sp
    inc c
    inc h
    ld [bc], a
    ld a, a
    inc h
    rst $38
    ld a, a
    ld e, $00
    ld a, b
    ld b, $01
    ld e, $04
    nop
    inc c
    ld b, $02
    ld [$0004], sp
    inc c
    ld b, $02
    ld a, a
    ld b, $ff
    ld a, b
    ld a, [de]
    ld bc, $181e
    nop
    inc c
    ld a, [de]
    ld [bc], a
    ld [$0018], sp
    inc c
    ld a, [de]
    ld [bc], a
    ld a, a
    ld a, [de]
    rst $38
    db $10
    ld a, [bc]
    nop
    db $10
    inc c
    nop
    rst $38
    ld sp, hl
    ld a, b
    db $10
    ld bc, $0e1e
    nop
    inc c
    db $10
    ld [bc], a
    ld [$000e], sp
    inc c
    db $10
    ld [bc], a
    ld a, a
    db $10
    rst $38
    inc c
    ld a, [bc]
    nop
    inc c
    ld [$0c00], sp
    ld b, $80
    inc c
    ld [bc], a
    add b
    inc c
    inc b
    add b
    rst $38
    or $0c
    ld c, $00
    inc c
    ld [$0c00], sp
    ld [bc], a
    add b
    inc c
    ld b, $80
    inc c
    inc b
    add b
    rst $38
    or $0c
    ld [bc], a
    add b
    inc c
    ld [$0c00], sp
    ld c, $00
    inc c
    ld a, [bc]
    nop
    inc c
    inc c
    nop
    rst $38
    or $0c
    ld b, $80
    inc c
    ld [$0c00], sp
    ld a, [bc]
    nop
    inc c
    ld c, $00
    inc c
    inc c
    nop
    rst $38
    or $0c
    inc b
    add b
    ld b, $10
    nop
    jr jr_00c_78fc

    add b
    inc bc
    ld [bc], a
    nop
    ld a, [bc]
    ld [bc], a
    ld bc, $040a
    ld [bc], a
    ld a, [bc]
    ld b, $82
    ld a, a
    ld b, $ff

jr_00c_78fc:
    db $10
    ld b, $00
    ld [$0010], sp
    ld [de], a
    ld [bc], a
    nop
    ld [$0010], sp
    ld [de], a
    ld [bc], a
    nop
    ld [$0010], sp
    inc bc
    ld [bc], a
    nop
    ld a, a
    ld [bc], a
    rst $38
    ld [$8002], sp
    inc c
    ld [de], a
    nop
    inc c
    inc d
    add b
    ld a, [bc]
    ld d, $80
    dec l
    jr jr_00c_7924

    ld a, [bc]

jr_00c_7924:
    ld d, $80
    inc a
    ld [bc], a
    add b
    ld a, a
    ld [bc], a
    rst $38
    db $10
    ld a, [de]
    nop
    db $10
    inc e
    nop
    rst $38
    ld sp, hl
    rlca
    ld a, [de]
    nop
    dec b
    ld e, $02
    ld b, $1e
    inc b
    jr @+$22

    ld b, $03
    ld [hl+], a
    inc bc
    ld b, $1c
    ld [$1c0f], sp
    ld [$1c0f], sp
    ld [$1c7f], sp
    rst $38
    ld [$001a], sp
    ld [$011e], sp
    ld [$0228], sp
    ld [bc], a
    ld e, $01
    db $10
    ld e, $13
    ld [$0228], sp
    ld [bc], a
    ld e, $01
    db $10
    ld e, $13
    ld [$0228], sp
    ld [bc], a
    ld e, $15
    ld bc, $041a
    ld a, a
    ld a, [de]
    rst $38
    ld b, $1a
    nop
    ld b, $26
    nop
    ld b, $28
    nop
    ld b, $1e
    nop
    ld b, $1a
    nop
    ld b, $26
    nop
    ld b, $28
    nop
    ld b, $1e
    nop
    ld a, a
    ld e, $80
    ld [$0008], sp
    ld [$0000], sp
    rst $38
    ld sp, hl
    stop
    nop
    db $10
    ld [bc], a
    ld [bc], a
    stop
    nop
    db $10
    inc b
    inc b
    rst $38
    di
    inc b
    ld c, $00
    inc b
    stop
    inc b
    ld c, $00
    inc b
    ld [de], a
    nop
    rst $38
    di
    ld c, e
    inc b
    ld bc, $0010
    nop
    db $10
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    ld [$0006], sp
    ld [$0108], sp
    rst $38
    ld sp, hl
    inc c
    nop
    nop
    inc c
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    ld b, $0c
    nop
    ld b, $0e
    nop
    ld b, $10
    ld bc, $0e06
    nop
    ld b, $10
    ld bc, $0e06
    nop
    ld b, $10
    ld bc, $0e06
    nop
    ld b, $10
    ld bc, $0c7f
    nop
    rst $38
    db $fc
    jr @+$12

    nop
    ld [$0112], sp
    inc b
    inc d
    ld [bc], a
    ld e, $16
    inc bc
    ld a, a
    ld d, $ff
    db $fd
    ld h, e
    ld e, $64
    ccf
    ld h, h
    dec d
    ld l, [hl]
    ld a, $6e
    ld d, [hl]
    ld l, e
    ld a, e
    ld l, e
    ld h, a
    ld l, [hl]
    sub b
    ld l, [hl]
    cp c
    ld l, [hl]
    ld d, $72
    ld b, e
    ld [hl], d
    ld [hl], b
    ld [hl], d
    sbc l
    ld [hl], d
    ld h, b
    ld h, h
    ld e, l
    ld l, a
    add [hl]
    ld l, a
    xor a
    ld l, a
    jp z, $f772

    ld [hl], d
    ret c

    ld l, a
    ld bc, $2470
    ld [hl], e
    inc h
    ld e, b
    dec [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld d, a
    ld e, b
    ld l, b
    ld e, b
    ld a, c
    ld e, b
    adc d
    ld e, b
    sbc e
    ld e, b
    xor h
    ld e, b
    cp l
    ld e, b
    adc $58
    rst JumpTable
    ld e, b
    ldh a, [$58]
    ld bc, $4e59
    ld e, l
    ld h, a
    ld e, l
    add b
    ld e, l
    sbc c
    ld e, l
    add c
    ld h, h
    db $fd
    ld h, e
    ld [de], a
    ld e, c
    inc hl
    ld e, c
    inc [hl]
    ld e, c
    ld b, l
    ld e, c
    ld d, [hl]
    ld e, c
    ld h, a
    ld e, c
    ld a, b
    ld e, c
    adc c
    ld e, c
    ld [c], a
    ld l, [hl]
    dec bc
    ld l, a
    inc [hl]
    ld l, a
    and b
    ld l, e
    push bc
    ld l, e
    inc de
    ld e, b
    cp e
    ld h, e
    call c, $9a63
    ld a, b
    db $e3
    ld a, b
    inc l
    ld a, c
    ld [hl], l
    ld a, c
    push de
    ld a, e
    ld d, l
    ld a, b
    cp [hl]
    ld a, c
    add h
    ld a, e
    ld d, b
    ld a, d
    ld d, c
    ld [hl], a
    sbc l
    ld a, d
    ld [$927a], a
    ld [hl], a
    scf
    ld a, e
    ld a, [hl+]
    ld a, h
    jp c, $df51

    ld d, c
    db $e4
    ld d, c
    sbc d
    ld e, c
    xor e
    ld e, c
    cp $5b
    inc de
    ld e, h
    jr z, jr_00c_7afc

    dec a
    ld e, h
    ld h, c
    ld d, d
    ld l, d
    ld d, d
    ld [hl], e
    ld d, d
    ld a, h
    ld d, d
    add l
    ld d, d
    adc [hl]
    ld d, d
    ld a, [hl]
    ld l, h
    and e
    ld l, h
    ret z

    ld l, h
    db $ed
    ld l, h
    ld a, [hl+]
    ld [hl], b
    ld d, e
    ld [hl], b
    ld [de], a
    ld l, l
    scf
    ld l, l
    ld e, h
    ld l, l
    ld a, h
    ld [hl], b
    sbc [hl]
    db $76
    add c
    ld l, l
    rst $10
    db $76
    sub a
    ld d, d
    and b
    ld d, d
    xor c
    ld d, d
    or d
    ld d, d
    daa
    ld d, e
    jr nc, jr_00c_7b27

    add sp, $52
    pop af
    ld d, d
    inc bc
    ld d, e
    inc c
    ld d, e
    call nz, $cd52
    ld d, d
    call nz, $e852
    ld d, d
    pop af
    ld d, d
    ld a, [$bb52]
    ld d, d
    rst JumpTable
    ld d, d
    call $d652
    ld d, d
    ret nz

    ld d, e
    ret


    ld d, e
    jp nc, $0353

    ld d, e
    inc c
    ld d, e
    dec d
    ld d, e

jr_00c_7afc:
    ld e, $53
    ld h, d
    ld d, h
    call nz, $e852
    ld d, d
    jp z, $d755

    ld d, l
    cp e
    ld d, d
    rst JumpTable
    ld d, d
    db $e4
    ld d, l
    pop af
    ld d, l
    cp $55
    dec bc
    ld d, [hl]
    inc bc
    ld d, e
    inc c
    ld d, e
    call nz, $cd52
    ld d, d
    sub $52
    add hl, sp
    ld d, e
    ld b, d
    ld d, e
    ld c, e
    ld d, e
    ld d, h
    ld d, e
    cp h

jr_00c_7b27:
    ld e, c
    call $b259
    ld e, l
    bit 3, l
    db $e4
    ld e, l
    db $fd
    ld e, l
    cp e
    ld d, d
    ld e, l
    ld d, e
    rst JumpTable
    ld d, d
    ld h, [hl]
    ld d, e
    cp e
    ld d, d
    rst JumpTable
    ld d, d
    dec d
    ld d, e
    inc bc
    ld d, e
    ld l, a
    ld d, e
    inc bc
    ld d, e
    ld a, b
    ld d, e
    add c
    ld d, e
    pop af
    ld d, d
    adc d
    ld d, e
    call $9352
    ld d, e
    sbc h
    ld d, e
    cp e
    ld d, d
    call nz, $df52
    ld d, d
    add sp, $52
    inc bc
    ld d, e
    sbc h
    ld d, e
    ld a, b
    ld d, e
    and l
    ld d, e
    xor [hl]
    ld d, e
    or a
    ld d, e
    sub $52
    ld a, [$bb52]
    ld d, d
    call nz, $1b52
    ld d, d
    jr nz, jr_00c_7bc6

    dec h
    ld d, d
    cp e
    ld d, d
    call nz, $df52
    ld d, d
    add sp, $52
    cp e
    ld d, d
    rst JumpTable
    ld d, d
    call nz, $db52
    ld d, e
    call $e452
    ld d, e
    db $ed
    ld d, e
    or $53
    rst $38
    ld d, e
    ld [$1854], sp
    ld d, [hl]
    dec h
    ld d, [hl]
    inc bc
    ld d, e
    ld de, $1a54
    ld d, h
    inc c
    ld d, e
    db $e4
    ld d, c
    daa
    ld d, e
    inc hl
    ld d, h
    inc l
    ld d, h
    jr nc, jr_00c_7bfb

    ld d, $52
    and d
    ld h, h
    inc bc
    ld d, e
    ld a, [de]
    ld d, h
    ld de, $0354
    ld d, e
    ld d, d
    ld e, h
    ld d, $5e
    cpl
    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld h, c
    ld e, [hl]
    ld a, d
    ld e, [hl]
    jp $e464


    ld h, h
    dec b
    ld h, l

jr_00c_7bc6:
    ld h, $65
    ld b, a
    ld h, l
    ld l, b
    ld h, l
    adc c
    ld h, l
    xor d
    ld h, l
    bit 4, l
    inc bc
    ld d, e
    rst JumpTable
    ld d, c
    cp e
    ld d, d
    call nz, $df52
    ld d, d
    add sp, $52
    call Call_00c_4752
    ld d, h
    sub $52
    ret


    ld d, e
    ld d, b
    ld d, h
    ld e, c
    ld d, h
    dec d
    ld d, e
    inc c
    ld d, e
    xor $51
    dec [hl]
    ld d, h
    ld a, $54
    jp c, $f351

    ld d, c
    sub e
    ld e, [hl]
    xor h

jr_00c_7bfb:
    ld e, [hl]
    rst JumpTable
    ld d, c
    inc bc
    ld d, e
    sbc $59
    ld h, d
    ld d, h
    or a
    ld d, e
    db $ec
    ld h, l
    dec c
    ld h, [hl]
    ld l, $66
    ld c, a
    ld h, [hl]
    cp e
    ld d, d
    call $f152
    ld d, d
    call nz, $d652
    ld d, d
    ld l, e
    ld d, h
    ld [hl], h
    ld d, h
    ret nz

    ld d, e
    ld a, l
    ld d, h
    add [hl]
    ld d, h
    ld [hl-], a
    ld d, [hl]
    ccf
    ld d, [hl]
    rst $28
    ld e, c
    nop
    ld e, d
    ld c, h
    ld d, [hl]
    ld e, c
    ld d, [hl]
    ld de, $225a
    ld e, d
    cp e
    ld d, d
    call nz, $cd52
    ld d, d
    sub $52
    ret nz

    ld d, e
    inc bc
    ld d, e
    dec d
    ld d, e
    xor [hl]
    ld d, e
    inc c
    ld d, e
    and l
    ld d, e
    jp c, $f851

    ld d, c
    db $fd
    ld d, c
    ld [bc], a
    ld d, d
    rlca
    ld d, d
    inc c
    ld d, d
    ld de, $0352
    ld d, e
    ld a, [hl+]
    ld d, d
    adc a
    ld d, h
    sbc b
    ld d, h
    add sp, $52
    pop af
    ld d, d
    inc c
    ld d, e
    call $c452
    ld d, d
    and c
    ld d, h
    jp c, $df51

    ld d, c
    inc bc
    ld d, e
    inc c
    ld d, e
    call nz, $cd52
    ld d, d
    sub $52
    ret nz

    ld d, e
    xor d
    ld d, h
    or e
    ld d, h
    daa
    ld d, e
    cp h
    ld d, h
    push bc
    ld d, h
    adc $54
    ld a, [$c952]
    ld d, e
    add sp, $52
    pop af
    ld d, d
    daa
    ld d, e
    rst $10
    ld d, h
    ld a, b
    ld d, e
    xor [hl]
    ld d, e
    inc bc
    ld d, e
    and l
    ld d, e
    sbc h
    ld d, e
    ldh [rHDMA4], a
    or a
    ld d, e
    ld a, [hl+]
    ld d, d
    jp c, $2f51

    ld d, d
    ld hl, sp+$51
    inc [hl]
    ld d, d
    inc sp
    ld e, d
    ld b, h
    ld e, d
    ld d, l
    ld e, d
    ld h, [hl]
    ld e, d
    ld [hl], a
    ld e, d
    adc b
    ld e, d
    sbc c
    ld e, d
    xor d
    ld e, d
    cp e
    ld e, d
    call z, $dd5a
    ld e, d
    xor $5a
    call nz, $e852
    ld d, d
    pop af
    ld d, d
    ld a, [$bb52]
    ld d, d
    rst JumpTable
    ld d, d
    call $d652
    ld d, d
    ld [$d954], sp
    ld d, c
    jp hl


    ld d, h
    push bc
    ld e, [hl]
    ld [hl], b
    ld h, [hl]
    sub c
    ld h, [hl]
    or d
    ld h, [hl]
    jp c, $0351

    ld d, e
    inc c
    ld d, e
    dec d
    ld d, e
    ld e, $53
    db $e4
    ld d, c
    cp e
    ld d, d
    add sp, $56
    db $d3
    ld h, [hl]
    db $f4
    ld h, [hl]
    dec d
    ld h, a
    ld [hl], $67
    ld d, a
    ld h, a
    ld a, b
    ld h, a
    sbc c
    ld h, a
    cp d
    ld h, a
    db $db
    ld h, a
    db $fc
    ld h, a
    dec e
    ld l, b
    ld a, [c]
    ld d, h
    ei
    ld d, h
    inc b
    ld d, l
    dec c
    ld d, l
    ld d, $55
    rra
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld [hl], e
    ld d, [hl]
    rst $38
    ld e, d
    db $10
    ld e, e
    ld hl, $3e5b
    ld l, b
    ld e, a
    ld l, b
    add b
    ld l, b
    sbc $5e
    ld h, a
    ld e, h
    ld a, h
    ld e, h
    sub c
    ld e, h
    and [hl]
    ld e, h
    rst $30
    ld e, [hl]
    db $10
    ld e, a
    add hl, hl
    ld e, a
    ld b, d
    ld e, a
    cp e
    ld e, h
    ret nc

    ld e, h
    push hl
    ld e, h
    ld a, [$5b5c]
    ld e, a
    ld [hl], h
    ld e, a
    adc l
    ld e, a
    and [hl]
    ld e, a
    cp a
    ld e, a
    ret c

    ld e, a
    pop af
    ld e, a
    ld a, [bc]
    ld h, b
    inc hl
    ld h, b
    inc a
    ld h, b
    and c
    ld l, b
    jp nz, $e368

    ld l, b
    inc b
    ld l, c
    add b
    ld d, [hl]
    adc l
    ld d, [hl]
    sbc d
    ld d, [hl]
    and a
    ld d, [hl]
    or h
    ld d, [hl]
    pop bc
    ld d, [hl]
    adc $56
    db $db
    ld d, [hl]
    add sp, $56
    push af
    ld d, [hl]
    ld [bc], a
    ld d, a
    adc d
    ld d, e
    rst $38
    ld d, e
    rrca
    ld d, a
    inc e
    ld d, a
    add hl, hl
    ld d, a
    ld [hl], $57
    ld b, e
    ld d, a
    ld d, b
    ld d, a
    ld e, l
    ld d, a
    ld l, d
    ld d, a
    ld [hl], a
    ld d, a
    add h
    ld d, a
    sub c
    ld d, a
    sbc [hl]
    ld d, a
    xor e
    ld d, a
    cp b
    ld d, a
    push bc
    ld d, a
    jp nc, $df57

    ld d, a
    db $ec
    ld d, a
    ld [hl-], a
    ld e, e
    ld b, e
    ld e, e
    ld sp, hl
    ld d, a
    ld b, $58
    ld d, h
    ld e, e
    ld h, l
    ld e, e
    db $76
    ld e, e
    add a
    ld e, e
    sbc b
    ld e, e
    xor c
    ld e, e
    cp d
    ld e, e
    bit 3, e
    call c, $ed5b
    ld e, e
    ld d, l
    ld h, b
    ld l, [hl]
    ld h, b
    add a
    ld h, b
    and b
    ld h, b
    inc d
    ld [hl], a
    rst $38
    ld [hl], l
    inc [hl]
    db $76
    ld l, c
    db $76
    rlca
    ld a, d
    db $d3
    ld [hl], a
    inc d
    ld a, b
    ld b, e
    ld d, d
    ld c, b
    ld d, d
    ld c, l
    ld d, d
    ld d, d
    ld d, d
    ld d, a
    ld d, d
    ld e, h
    ld d, d
    ld d, c
    ld [hl], e
    add d
    ld [hl], e
    and l
    ld [hl], b
    or e
    ld [hl], e
    adc $70
    db $e4
    ld [hl], e
    dec d
    ld [hl], h
    rst $30
    ld [hl], b
    ld b, [hl]
    ld [hl], h
    jr nz, jr_00c_7e57

    cp c
    ld h, b
    jp nc, $2560

    ld l, c
    db $eb
    ld h, b
    ld b, [hl]
    ld l, c
    inc b
    ld h, c
    dec e
    ld h, c
    ld h, a
    ld l, c
    ld [hl], $61
    adc b
    ld l, c
    ld c, a
    ld h, c
    xor c
    ld l, c
    ld a, [hl+]
    ld h, e
    jp z, $6869

    ld h, c
    add c
    ld h, c
    ld b, a
    ld h, e
    db $eb
    ld l, c
    sbc d
    ld h, c
    inc c
    ld l, d
    ld h, h
    ld h, e
    dec l
    ld l, d
    or e
    ld h, c
    call z, $8161
    ld h, e
    ld c, [hl]
    ld l, d
    push hl
    ld h, c
    cp $61
    rla
    ld h, d
    jr nc, jr_00c_7e84

    ld c, c
    ld h, d
    ld h, d
    ld h, d
    ld a, e
    ld h, d
    sub h
    ld h, d
    xor l
    ld h, d
    add $62
    rst JumpTable
    ld h, d
    sbc [hl]
    ld h, e
    and [hl]
    ld l, l
    bit 5, l
    jr z, jr_00c_7e8d

    ld sp, $3a55
    ld d, l
    ld b, e
    ld d, l
    ld c, h
    ld d, l
    ld d, l
    ld d, l
    ld e, [hl]
    ld d, l
    ld h, a
    ld d, l
    ld [hl], a
    ld [hl], h
    xor b
    ld [hl], h
    ldh a, [$6d]
    reti


    ld [hl], h
    ld a, [bc]
    ld [hl], l
    ld [hl], b
    ld d, l
    ld hl, sp+$62
    ld de, $7963

jr_00c_7e57:
    ld d, l
    rrca
    ld e, l
    inc h
    ld e, l
    add hl, sp
    ld e, l
    ld l, a
    ld l, d
    sub b
    ld l, d
    ld c, c
    ld [hl], c
    ld [hl], d
    ld [hl], c
    sbc e
    ld [hl], c
    call nz, $ed71
    ld [hl], c
    add hl, sp
    ld d, d
    ld a, $52
    add d
    ld d, l
    adc e
    ld d, l
    sub h
    ld d, l
    sbc l
    ld d, l
    and [hl]
    ld d, l
    xor a
    ld d, l
    cp b
    ld d, l
    pop bc
    ld d, l
    jp c, $e951

    ld d, c

jr_00c_7e84:
    rst JumpTable
    ld d, c
    ld [$0f6b], a
    ld l, h
    inc [hl]
    ld l, h
    ld e, c

jr_00c_7e8d:
    ld l, h
    or c
    ld l, d
    jp nc, $f36a

    ld l, d
    inc d
    ld l, e
    dec [hl]
    ld l, e
    dec sp
    ld [hl], l
    ld l, h
    ld [hl], l
    sbc l
    ld [hl], l
    adc $75
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

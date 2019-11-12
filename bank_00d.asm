; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX

Call_00d_4000:
    ld h, d
    ld l, $84
    inc [hl]
    ret


Jump_00d_4005:
    ld h, d
    ld l, $85
    inc [hl]
    ret


Call_00d_400a:
Jump_00d_400a:
    xor a
    ld e, $ac
    call Call_00d_420d

jr_00d_4010:
    ld a, [de]
    ld c, a
    ld e, $ad
    ld a, [de]
    rlca
    ld b, $50
    jr nc, jr_00d_4028

    ld b, $78
    and $06
    jr nz, jr_00d_4028

    push bc
    ld bc, $0f01
    call $24b1
    pop bc

jr_00d_4028:
    call Call_00d_4161
    ret nz

    ld e, $ad
    ld a, [de]
    and $80
    ld [de], a
    ret


Jump_00d_4033:
    ld a, $02
    ld e, $ac
    call Call_00d_420d
    jr jr_00d_4010

Jump_00d_403c:
    call Call_00d_400a
    call Call_00d_4043
    ret


Call_00d_4043:
Jump_00d_4043:
    ldh [$8f], a
    xor a
    ldh [$8d], a
    jr jr_00d_4057

Call_00d_404a:
Jump_00d_404a:
    call Call_00d_400a
    call Call_00d_4051
    ret


Call_00d_4051:
Jump_00d_4051:
    ldh [$8f], a
    ld a, $01
    ldh [$8d], a

jr_00d_4057:
    ld e, $bf
    ld a, [de]
    and $07
    jr nz, jr_00d_40aa

    ld e, $8f
    ld a, [de]
    rlca
    jr c, jr_00d_4087

    ld bc, $05ff
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $ff
    jr c, jr_00d_408b

    ld bc, $0501
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $01
    jr c, jr_00d_408b

    call Call_00d_4123

jr_00d_4087:
    ldh a, [$8f]
    or a
    ret


jr_00d_408b:
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

jr_00d_40aa:
    pop hl
    ld a, [de]
    rrca
    jr c, jr_00d_40c9

    rrca
    jr c, jr_00d_40dd

    jr jr_00d_40cd

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
    jr jr_00d_40c9

jr_00d_40c9:
    ld b, $03
    jr jr_00d_40cf

jr_00d_40cd:
    ld b, $04

jr_00d_40cf:
    call $24af

jr_00d_40d2:
    call $249f
    jp $2e28


jr_00d_40d8:
    call $24bd
    jr jr_00d_40d2

jr_00d_40dd:
    call Call_00d_439a
    jr z, jr_00d_40d8

    ld a, [hl]
    and $07
    jr nz, jr_00d_40f5

    call Call_00d_4108
    jr z, jr_00d_40d8

    call $1e6f
    ld c, a
    ld b, $14
    call Call_00d_4138

jr_00d_40f5:
    ld h, d
    ld l, $87
    bit 0, [hl]
    ret z

    ld l, $a0
    ld a, [hl]
    sub $03
    jr nc, jr_00d_4103

    xor a

jr_00d_4103:
    inc a
    ld [hl], a
    jp $275f


Call_00d_4108:
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


Call_00d_4123:
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

Call_00d_4138:
Jump_00d_4138:
    ld hl, $425e
    xor a
    ldh [$8a], a
    push bc
    ld a, c
    call Call_00d_4213
    pop bc
    jr jr_00d_4161

Call_00d_4146:
Jump_00d_4146:
    xor a
    call Call_00d_4204
    jr jr_00d_415b

    ld a, $01
    call Call_00d_4204
    jr jr_00d_415b

Call_00d_4153:
Jump_00d_4153:
    xor a
    jr jr_00d_4158

Call_00d_4156:
Jump_00d_4156:
    ld a, $01

jr_00d_4158:
    call Call_00d_420b

Call_00d_415b:
jr_00d_415b:
    ld a, [de]
    ld c, a
    ld e, $90
    ld a, [de]
    ld b, a

Call_00d_4161:
jr_00d_4161:
    ld a, c
    ldh [$8c], a
    call $1fff
    xor a
    ldh [$8d], a
    ld e, $8a
    ldh a, [$8b]
    and $0c
    jr nz, jr_00d_4177

    call Call_00d_41e1
    jr jr_00d_41a1

jr_00d_4177:
    cp $0c
    jr z, jr_00d_41a1

    bit 3, a
    ldh a, [$8c]
    ld bc, $0060
    jr nz, jr_00d_4189

    xor $10
    ld bc, $ffa0

jr_00d_4189:
    cp $11
    jr nc, jr_00d_41a1

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
    jr nc, jr_00d_41a1

    ld a, $01
    ldh [$8d], a

jr_00d_41a1:
    ld e, $8c
    ld l, $c2
    ldh a, [$8b]
    and $03
    jr nz, jr_00d_41b0

    call Call_00d_41e1
    jr jr_00d_41dd

jr_00d_41b0:
    cp $03
    jr z, jr_00d_41dd

    rrca
    ldh a, [$8c]
    ld bc, $0060
    jr nc, jr_00d_41c1

    sub $10
    ld bc, $ffa0

jr_00d_41c1:
    add $08
    and $1f
    cp $11
    jr nc, jr_00d_41dd

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
    jr nc, jr_00d_41dd

    ld a, $01
    ldh [$8d], a

jr_00d_41dd:
    ldh a, [$8d]
    or a
    ret


Call_00d_41e1:
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
    jr nz, jr_00d_41fc

    ld c, $20
    ld e, $90
    ld a, [de]
    cp $32
    jr c, jr_00d_41f9

    ld c, $60

jr_00d_41f9:
    ld a, b
    cp c
    ret c

jr_00d_41fc:
    ldh [$8d], a
    ret


    ld hl, $429e
    jr jr_00d_4213

Call_00d_4204:
Jump_00d_4204:
    ld e, $89
    ld hl, $429e
    jr jr_00d_4210

Call_00d_420b:
    ld e, $89

Call_00d_420d:
    ld hl, $425e

jr_00d_4210:
    ldh [$8a], a
    ld a, [de]

Call_00d_4213:
jr_00d_4213:
    push de
    call Call_00d_4253
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

jr_00d_4226:
    call Call_00d_4233
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_00d_4226

    pop de
    or a
    ret


Call_00d_4233:
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
    jr z, jr_00d_424a

    call $14a5
    add $01
    ret


jr_00d_424a:
    call $14a5
    add $01
    jp nc, $14bf

    ret


Call_00d_4253:
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

Call_00d_42de:
    ld a, $01
    jr jr_00d_42e7

    xor a
    jr jr_00d_42e7

Call_00d_42e5:
    ld a, $02

jr_00d_42e7:
    call Call_00d_420b
    call Call_00d_4310
    ld a, c
    or a
    ret z

    cp $05
    jr z, jr_00d_4306

    ld hl, $432f
    bit 0, a
    jr nz, jr_00d_42fe

    ld hl, $431f

jr_00d_42fe:
    ld e, $89
    ld a, [de]
    rst $10
    ld a, [hl]
    ld [de], a
    or d
    ret


jr_00d_4306:
    ld e, $89
    ld a, [de]
    add $10
    and $1f
    ld [de], a
    or d
    ret


Call_00d_4310:
    ld c, $00
    ld b, a
    and $03
    jr z, jr_00d_4318

    inc c

jr_00d_4318:
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


Call_00d_435e:
Jump_00d_435e:
    call Call_00d_4364
    jp $1e03


Call_00d_4364:
Jump_00d_4364:
    ld h, d
    ld l, $90
    ld [hl], a
    ld l, $84
    ld [hl], $08
    ret


Call_00d_436d:
    call $2e15
    ret nz

    jr jr_00d_4377

Call_00d_4373:
    call $2e08
    ret nz

jr_00d_4377:
    ld [hl], b
    inc l
    inc [hl]
    xor a
    ret


Call_00d_437c:
Jump_00d_437c:
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


Call_00d_439a:
    ld h, d
    ld l, $86
    dec [hl]
    ret


    call Call_00d_439a
    ret nz

Call_00d_43a3:
    ld h, d
    ld l, $87
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_00d_43ab:
    call $1e52
    xor $10
    ld e, $89
    ld [de], a
    ret


Call_00d_43b4:
Jump_00d_43b4:
    call $1e52
    add $04
    and $18
    ld e, $89
    ld [de], a
    ret


Call_00d_43bf:
Jump_00d_43bf:
    call $1e52
    ld e, $89
    ld [de], a
    ret


Call_00d_43c6:
Jump_00d_43c6:
    call $042f
    and $18
    ld e, $89
    ld [de], a
    ret


Call_00d_43cf:
Jump_00d_43cf:
    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ret


Call_00d_43d8:
Jump_00d_43d8:
    ld h, d
    ld l, $89
    ld a, [hl-]
    ld e, a
    ld bc, $43ff
    call $006d
    ld a, [bc]
    cp $04
    jr c, jr_00d_43f9

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

jr_00d_43f9:
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

Call_00d_441f:
Jump_00d_441f:
    ld e, $9a
    ld a, [de]
    xor $80
    ld [de], a
    ret


Call_00d_4426:
    ld e, $82
    ld a, [de]
    ld b, a
    ld e, $84
    ld a, [de]
    cp $08
    ret


Call_00d_4430:
    call $1e6f
    ld e, $89
    ld [de], a
    jp $1fdb


Call_00d_4439:
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


Call_00d_4446:
    ld b, a
    ld a, [$cc79]
    or a
    ld a, b
    jp z, Jump_00d_4051

    ld h, d
    ld l, $bf
    res 1, [hl]
    ld l, $a4
    set 7, [hl]
    push af
    call $1e5a
    ld c, a
    ld b, $14
    call Call_00d_4138
    pop af
    or a
    ret


Call_00d_4465:
    ld h, d
    ld l, $8b
    ld a, [hl]
    add c
    cpl
    inc a
    ld c, a
    ldh a, [$a8]
    add c
    jr nc, jr_00d_4473

    ld a, c

jr_00d_4473:
    bit 7, a
    jr nz, jr_00d_4479

    ld a, $80

jr_00d_4479:
    ld l, $8f
    ld [hl], a
    ret


Call_00d_447d:
    ld a, l
    and $c0
    or $29
    ld l, a

jr_00d_4483:
    ld [hl], $00
    ld a, l
    add $fb
    ld l, a
    res 7, [hl]
    ret


    ld a, $29
    call $211e
    jr jr_00d_4483

    ld a, $29
    call $2122
    jr jr_00d_4483

Call_00d_449a:
    call Call_00d_43a3
    jr z, jr_00d_44ad

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


jr_00d_44ad:
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


Call_00d_44d5:
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


Call_00d_44ea:
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

Call_00d_4501:
Jump_00d_4501:
    ld c, $20
    call $1f04
    ret nz

    ld l, $a4
    set 7, [hl]
    ld l, $84
    ld [hl], b
    ret


    call Call_00d_4051
    jr z, jr_00d_451f

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_404a

    ret


jr_00d_451f:
    ld e, $84
    ld a, [de]
    rst $00
    dec sp
    ld b, l
    ld l, e
    ld b, l
    ld l, e
    ld b, l
    ld d, [hl]
    ld b, l
    ld l, e
    ld b, l
    bit 0, h
    ld l, e
    ld b, l
    ld l, e
    ld b, l
    ld l, h
    ld b, l
    adc c
    ld b, l
    sub h
    ld b, l
    ret nz

    ld b, l
    ld h, d
    ld l, $82
    bit 0, [hl]
    ld l, $b1
    ld [hl], $5a
    jr z, jr_00d_4548

    ld [hl], $2d

jr_00d_4548:
    call $042f
    and $7f
    inc a
    ld e, $86
    ld [de], a
    ld a, $32
    jp Jump_00d_435e


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld h, c
    ld b, l
    ld h, c
    ld b, l
    ld h, d
    ld b, l
    ret


    ld b, $08
    call Call_00d_4501
    ret nz

    jp Jump_00d_45cd


    ret


    call Call_00d_439a
    jr nz, jr_00d_4586

    call $042f
    and $7f
    call Call_00d_4000
    ld l, $b1
    add [hl]
    ld l, $86
    ld [hl+], a
    ld [hl], $18
    ld a, $01
    jp $2772


jr_00d_4586:
    jp $275f


    call Call_00d_43a3
    ret nz

    ld l, e
    inc [hl]
    ld a, $02
    jp $2772


    ld a, $0b
    ld [de], a
    call $042f
    and $07
    ld hl, $45ba
    jr nz, jr_00d_45a4

    ld hl, $45bd

jr_00d_45a4:
    ld e, $94
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $b0
    ld a, [hl+]
    ld [de], a
    call Call_00d_43bf
    ld a, $8f
    call $0c74
    jp $1dfa


    xor d
    cp $0e
    add b
    cp $0c
    call Call_00d_42e5
    ld e, $b0
    ld a, [de]
    ld c, a
    call $1f04
    jp nz, Jump_00d_4153

Jump_00d_45cd:
    call $042f
    and $7f
    ld h, d
    ld l, $b1
    add [hl]
    ld l, $86
    ld [hl], a
    ld l, $84
    ld [hl], $08
    xor a
    call $2772
    jp $1e03


    call Call_00d_4051
    jr z, jr_00d_45f4

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_404a

    ret


jr_00d_45f4:
    call Call_00d_4718
    ld e, $84
    ld a, [de]
    rst $00
    dec e
    ld b, [hl]
    ld l, $46
    ld l, $46
    ld [hl+], a
    ld b, [hl]
    ld l, $46
    bit 0, h
    ld l, $46
    ld l, $46
    cpl
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld e, l
    ld b, [hl]
    ld [hl], e
    ld b, [hl]
    sub c
    ld b, [hl]
    sbc b
    ld b, [hl]
    xor d
    ld b, [hl]
    or c
    ld b, [hl]
    add $46
    ld a, $14
    jp Jump_00d_435e


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    dec l
    ld b, [hl]
    dec l
    ld b, [hl]
    rst $38
    ld b, h
    ret


    ret


    call Call_00d_46ed
    call $042f
    and $07
    jp nz, Jump_00d_46ca

    ld e, $82
    ld a, [de]
    cp $02
    jp nz, Jump_00d_46ca

    ld e, $84
    ld a, $0c
    ld [de], a
    ret


    call Call_00d_46ed
    call Call_00d_439a
    jr nz, jr_00d_4654

    ld l, $84
    ld [hl], $08

jr_00d_4654:
    call Call_00d_42de
    call $1fdb
    jp $275f


    ld bc, $fe00
    call $2358
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $90
    ld [hl], $32
    call Call_00d_43ab
    jp Jump_00d_470b


    ld c, $20
    call $1f04
    jr z, jr_00d_4685

    ld a, [hl]
    or a
    jr nz, jr_00d_4682

    ld l, $a4
    set 7, [hl]

jr_00d_4682:
    jp Jump_00d_4153


jr_00d_4685:
    ld a, $14
    call Call_00d_4364
    xor a
    call $2772
    jp $1e03


    ld b, $1c
    call Call_00d_437c
    jr jr_00d_46ca

    ld c, $20
    call $1f04
    ld a, [hl]
    or a
    jp nz, Jump_00d_4156

    ld l, $86
    ld [hl], $08
    ld l, $84
    inc [hl]
    ret


    call Call_00d_439a
    ret nz

    ld l, e
    inc [hl]
    ret


    ld h, d
    ld l, $8f
    ld a, [hl]
    add $03
    ld [hl], a
    cp $80
    ret nc

    xor a
    ld [hl], a
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $1e
    jp $1e03


    call Call_00d_439a
    ret nz

Jump_00d_46ca:
jr_00d_46ca:
    ld e, $30
    ld bc, $1f0f
    call $434f
    ld h, d
    ld l, $84
    ld [hl], $09
    ld l, $90
    ld [hl], $14
    ld a, $20
    add e
    ld l, $86
    ld [hl], a
    dec c
    ld a, b
    call z, $1e52
    ld e, $89
    ld [de], a
    xor a
    jp $2772


Call_00d_46ed:
    ld e, $82
    ld a, [de]
    cp $03
    ret nz

    ld c, $1c
    call $1f60
    ret nc

    ld bc, $fdc0
    call $2358
    ld l, $84
    ld [hl], $0d
    ld l, $90
    ld [hl], $3c
    pop hl
    call Call_00d_43bf

Jump_00d_470b:
    ld a, $01
    call $2772
    ld a, $8f
    call $0c74
    jp $1dfa


Call_00d_4718:
    ld e, $82
    ld a, [de]
    or a
    ret z

    ld a, [$cc7a]
    and $f0
    ret z

    ld e, $84
    ld a, [de]
    cp $0a
    ret nc

    ld c, $2c
    call $1f60
    ret nc

    ld e, $84
    ld a, $0a
    ld [de], a
    ret


    ld e, $84
    ld a, $08
    ld [de], a
    ret


    jr z, jr_00d_4748

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_4033

    ret


jr_00d_4748:
    call Call_00d_4426
    jr nc, jr_00d_475e

    rst $00
    ld h, h
    ld b, a
    ld l, l
    ld b, a
    ld l, l
    ld b, a
    ld l, l
    ld b, a
    ld l, l
    ld b, a
    bit 0, h
    ld l, l
    ld b, a
    ld l, l
    ld b, a

jr_00d_475e:
    ld a, b
    rst $00
    ld l, [hl]
    ld b, a
    jp hl


    ld b, a
    call Call_00d_4364
    call Call_00d_4870
    jp $1e27


    ret


    ld a, [de]
    sub $08
    rst $00
    ld a, b
    ld b, a
    sbc c
    ld b, a
    cp a
    ld b, a
    call Call_00d_439a
    ret nz

    ld bc, $1f3f
    call $434f
    call Call_00d_4000
    ld l, $89
    ld [hl], b
    ld l, $90
    ld [hl], $1e
    ld a, $c0
    add c
    ld l, $86
    ld [hl], a
    ld a, $01
    call $2772
    jr jr_00d_47bc

    call $1fdb
    call Call_00d_42e5
    ld a, [$cc00]
    rrca
    jr c, jr_00d_47bc

    call Call_00d_439a
    jr z, jr_00d_47b9

    ld bc, $0f1f
    call $434f
    or b
    jr nz, jr_00d_47bc

    ld e, $89
    ld a, c
    ld [de], a
    jr jr_00d_47bc

jr_00d_47b9:
    ld l, $84
    inc [hl]

jr_00d_47bc:
    jp $275f


    ld e, $86
    ld a, [de]
    cp $68
    jr nc, jr_00d_47cc

    call $1fdb
    call Call_00d_42e5

jr_00d_47cc:
    call Call_00d_483b
    ld h, d
    ld l, $86
    inc [hl]
    ld a, $7f
    cp [hl]
    ret nz

    ld l, $84
    ld [hl], $08
    call $042f
    and $7f
    ld e, $86
    add $20
    ld [de], a
    xor a
    jp $2772


    ld a, [de]
    sub $08
    rst $00
    pop af
    ld b, a
    ld d, $48
    ld c, $31
    call $1f60
    ret nc

    call Call_00d_43bf
    call Call_00d_4000
    ld l, $90
    ld [hl], $28
    ld e, $89
    ld l, $b0
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    ld l, $86
    ld [hl], $0c
    inc l
    ld [hl], $0c
    ld a, $01
    jp $2772


    call $1fdb
    call Call_00d_42e5
    call Call_00d_439a
    jr nz, jr_00d_47bc

    ld [hl], $0c
    ld l, $b0
    ld e, $89
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    ld l, $87
    dec [hl]
    jr nz, jr_00d_47bc

    ld l, $84
    dec [hl]
    call Call_00d_4880
    xor a
    jp $2772


Call_00d_483b:
    ld e, $86
    ld a, [de]
    and $0f
    jr nz, jr_00d_484d

    ld a, [de]
    swap a
    ld hl, $4860
    rst $10
    ld a, [hl]
    ld e, $90
    ld [de], a

jr_00d_484d:
    ld e, $86
    ld a, [de]
    and $f0
    swap a
    ld hl, $4868
    rst $10
    ld a, [$cc00]
    and [hl]
    jp z, $275f

    ret


    ld e, $14
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    nop

Call_00d_4870:
    dec b
    jr z, jr_00d_4878

    ld l, $86
    ld [hl], $20
    ret


jr_00d_4878:
    ld l, $8f
    ld [hl], $ff
    ld l, $b0
    ld [hl], $02

Call_00d_4880:
    call $042f
    and $03
    ret nz

    ld e, $b0
    ld a, [de]
    cpl
    inc a
    ld [de], a
    ret


    ld e, $84
    ld a, [de]
    rst $00
    and l
    ld c, b
    inc bc
    ld c, c
    xor d
    ld c, b
    inc bc
    ld c, c
    inc bc
    ld c, c
    inc bc
    ld c, c
    inc bc
    ld c, c
    inc bc
    ld c, c
    inc b
    ld c, c
    ld l, $49
    ld a, $0a
    jp Jump_00d_435e


    inc e
    ld a, [de]
    rst $00
    or l
    ld c, b
    ret nc

    ld c, b
    pop hl
    ld c, b
    di
    ld c, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    xor a
    ld [$cc76], a
    ld a, [$d008]
    srl a
    xor $01
    ld l, $88
    ld [hl], a
    call $2772
    jp $1dfa


    ld h, d
    ld l, $88
    ld a, [$d008]
    srl a
    xor $01
    cp [hl]
    jr z, jr_00d_48e1

    ld [hl], a
    jp $2772


jr_00d_48e1:
    ld e, $8b
    ld a, [de]
    cp $80
    jr nc, jr_00d_48f0

    ld e, $8d
    ld a, [de]
    cp $a0
    jp c, $275f

jr_00d_48f0:
    jp $2e28


    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $a4
    set 7, [hl]
    ld l, $88
    ld [hl], $ff
    jp $1e03


    ret


    call $2b75
    call $229b
    call Call_00d_43bf
    call Call_00d_4939
    ld c, $10
    call $1f60
    jr nc, jr_00d_4928

    call $042f
    and $3f
    ret nz

    call Call_00d_4000
    ld l, $94
    ld a, $40
    ld [hl+], a
    ld [hl], $ff
    ret


jr_00d_4928:
    call Call_00d_4156

jr_00d_492b:
    jp $275f


    ld c, $12
    call $1f04
    jr nz, jr_00d_492b

    ld l, $84
    dec [hl]
    ret


Call_00d_4939:
    ld e, $89
    ld a, [de]
    cp $10
    ld a, $01
    jr c, jr_00d_4943

    xor a

jr_00d_4943:
    ld h, d
    ld l, $88
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


    call Call_00d_4043
    jr z, jr_00d_4974

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_403c

    ld e, $82
    ld a, [de]
    or a
    ret z

    ld e, $aa
    ld a, [de]
    cp $80
    jr z, jr_00d_4974

    res 7, a
    sub $01
    cp $03
    ret c

    ld e, $84
    ld a, $0c
    ld [de], a
    ret


jr_00d_4974:
    call Call_00d_4426
    jr nc, jr_00d_498a

    rst $00
    sub b
    ld c, c
    xor b
    ld c, c
    xor b
    ld c, c
    xor b
    ld c, c
    xor b
    ld c, c
    bit 0, h
    xor b
    ld c, c
    xor b
    ld c, c

jr_00d_498a:
    ld a, b
    rst $00
    xor c
    ld c, c
    ld e, d
    ld c, d
    ld a, b
    or a
    ld a, $1e
    jp z, Jump_00d_4364

    ld h, d
    ld l, $86
    ld [hl], $18
    ld l, $a4
    set 7, [hl]
    ld a, $04
    call $2772
    jp Jump_00d_435e


    ret


    ld a, [de]
    sub $08
    rst $00
    cp c
    ld c, c
    rst $08
    ld c, c
    rst $30
    ld c, c
    inc de
    ld c, d
    jr c, @+$4c

    ld c, a
    ld c, d
    ld c, $28
    call $1f60
    ret nc

    ld bc, $fe00
    call $2358
    ld l, $84
    inc [hl]
    ld l, $87
    ld [hl], $04
    jp $1e03


    ld h, d
    ld l, $a1
    ld a, [hl]
    or a
    jr z, jr_00d_4a10

    ld l, $b0
    and [hl]
    jr nz, jr_00d_49e2

    ld [hl], $01
    ld a, $8f
    call $0c74

jr_00d_49e2:
    ld c, $28
    call $1f04
    ret nz

    call Call_00d_4000
    ld l, $86
    ld [hl], $30
    ld l, $a4
    set 7, [hl]
    inc a
    jp $2772


    call Call_00d_439a
    ret nz

    ld l, e
    inc [hl]
    ld bc, $fe00
    call $2358
    call Call_00d_43bf
    ld a, $02
    call $2772
    ld a, $8f
    call $0c74

jr_00d_4a10:
    jp $275f


    call Call_00d_4153
    ld c, $28
    call $1f04
    ret nz

    ld h, d
    ld l, $86
    ld [hl], $30
    inc l
    dec [hl]
    ld a, $0a
    ld b, $01
    jr nz, jr_00d_4a31

    ld l, $a4
    res 7, [hl]
    ld a, $0c
    ld b, $03

jr_00d_4a31:
    ld l, $84
    ld [hl], a
    ld a, b
    jp $2772


    ld h, d
    ld l, $a1
    ld a, [hl]
    or a
    jr z, jr_00d_4a10

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $28
    ld l, $b0
    xor a
    ld [hl], a
    call $2772
    jp $1e39


    call Call_00d_439a
    ret nz

    ld l, e
    ld [hl], $08
    xor a
    jp $2772


    ld a, [de]
    sub $08
    rst $00
    ld l, d
    ld c, d
    sub d
    ld c, d
    and l
    ld c, d
    ret z

    ld c, d
    ld [c], a
    ld c, d
    ei
    ld c, d
    call Call_00d_439a
    jr nz, jr_00d_4aa2

    call $042f
    and $07
    ld h, d
    ld l, $86
    jr z, jr_00d_4a87

    ld [hl], $10
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $14
    call Call_00d_43bf
    jr jr_00d_4aa2

jr_00d_4a87:
    ld [hl], $20
    ld l, $84
    ld [hl], $0a
    ld a, $05
    jp $2772


    call Call_00d_4156
    call Call_00d_42e5
    call Call_00d_439a
    jr nz, jr_00d_4aa2

    ld [hl], $18
    ld l, $84
    dec [hl]

jr_00d_4aa2:
    jp $275f


    call Call_00d_439a
    jr nz, jr_00d_4aa2

    call Call_00d_4000
    ld l, $94
    ld [hl], $00
    inc l
    ld [hl], $fe
    ld l, $90
    ld [hl], $28
    call Call_00d_43bf
    ld a, $02
    call $2772
    ld a, $8f
    call $0c74
    jp $1dfa


    call Call_00d_4153
    ld c, $28
    call $1f04
    ret nz

    ld h, d
    ld l, $86
    ld [hl], $18
    ld l, $84
    ld [hl], $08
    ld a, $04
    call $2772
    jp $1e03


    ld b, $08
    call $24af
    ld h, d
    ld l, $87
    ld [hl], $12
    ld l, $a4
    res 7, [hl]
    ld l, $84
    inc [hl]
    ld a, $73
    call $0c74
    jp $1e39


    call Call_00d_43a3
    ret nz

    ld c, $04
    call Call_00d_4b0f
    ld c, $fc
    call Call_00d_4b0f
    call $249f
    jp $2e28


Call_00d_4b0f:
    ld b, $43
    call Call_00d_4373
    ret nz

    ld [hl], a
    ld b, $00
    call $2215
    xor a
    ld l, $8e
    ld [hl+], a
    ld [hl], a
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    ret


    jr z, jr_00d_4b6a

    sub $03
    ret c

    jr z, jr_00d_4b5e

    dec a
    jp nz, Jump_00d_4033

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    ld h, d
    ld l, $84
    ld [hl], $0c
    ld l, $8f
    ld [hl], $fb
    call Call_00d_4d2e
    add $04
    call $2772
    ld h, d
    ld l, $8b
    ld a, [$d00b]
    sub [hl]
    sra a
    add [hl]
    ld [hl], a
    ld l, $8d
    ld a, [$d00d]
    sub [hl]
    sra a
    add [hl]
    ld [hl], a
    ret


jr_00d_4b5e:
    ld a, $30
    call $211e
    dec [hl]
    ld l, $b3
    dec [hl]
    jp $27ca


jr_00d_4b6a:
    ld e, $84
    ld a, [de]
    rst $00
    adc d
    ld c, e
    sbc e
    ld c, e
    push hl
    ld c, e
    push hl
    ld c, e
    push hl
    ld c, e
    push de
    ld c, e
    push hl
    ld c, e
    push hl
    ld c, e
    and $4b
    ld h, e
    ld c, h
    ld [hl], a
    ld c, h
    cp c
    ld c, h
    pop af
    ld c, h
    dec e
    ld c, l
    ld h, d
    ld l, $86
    ld [hl], $3c
    ld l, e
    inc [hl]
    ld e, $82
    ld a, [de]
    or a
    jp z, Jump_00d_4da8

    ld [hl], $08
    ret


    ld h, d
    ld l, $b3
    ld a, [hl]
    or a
    jr z, jr_00d_4bcc

    ld e, $b0
    ld a, [de]
    sub [hl]
    ret nc

    ld l, $86
    dec [hl]
    ret nz

    ld [hl], $01
    ld l, $b0
    ld a, [hl]
    cp $03
    ret nc

    ld b, $35
    call Call_00d_436d
    ret nz

    ld e, $b4
    ld a, [de]
    ld [hl], a
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ld h, d
    ld l, $b0
    inc [hl]
    ld l, $86
    ld [hl], $80
    ret


jr_00d_4bcc:
    call $249f
    call $30e3
    jp $2e28


    call Call_00d_449a
    ret c

    ld a, $30
    call $211e
    dec [hl]
    ld l, $b3
    dec [hl]
    jp $2e28


    ret


    call Call_00d_4d8e
    ld a, $00
    push bc
    call c, $042f
    pop bc
    ld e, a
    ld a, [$d009]
    add e
    and $1f
    ld e, $b2
    ld [de], a
    ld a, $50
    ldh [$8a], a

jr_00d_4bfe:
    ldh a, [$8a]
    sub $10
    jr z, jr_00d_4c54

    ldh [$8a], a
    push bc
    ld e, $b2
    call $20cc
    pop bc
    ld a, [de]
    ld e, a
    ld a, [$d00d]
    sub e
    jr nc, jr_00d_4c17

    cpl
    inc a

jr_00d_4c17:
    cp $80
    jr nc, jr_00d_4bfe

    ld e, $8b
    ld a, [de]
    cp $b0
    jr nc, jr_00d_4bfe

    push bc
    call $149b
    pop bc
    jr nz, jr_00d_4bfe

    ld h, d
    ld l, $84
    ld [hl], $09
    ld l, $86
    ld [hl], $20
    call $1e52
    ld b, a
    ld e, $82
    ld a, [de]
    dec a
    ld a, b
    jr nz, jr_00d_4c41

    add $04
    and $18

jr_00d_4c41:
    ld e, $89
    ld [de], a
    cp $10
    ld a, $00
    jr nc, jr_00d_4c4b

    inc a

jr_00d_4c4b:
    ld e, $b0
    ld [de], a
    call $2772
    call $1dfa

jr_00d_4c54:
    ld e, $97
    ld a, [de]
    ld h, a
    ld l, $b1
    ld a, [$d00b]
    ld [hl+], a
    ld a, [$d00d]
    ld [hl], a
    ret


    ld e, $a1
    ld a, [de]
    dec a
    jp nz, $275f

    ld e, $84
    ld a, $0a
    ld [de], a
    ld e, $b0
    ld a, [de]
    add $02
    jp $2772


    call Call_00d_439a
    jr z, jr_00d_4c8a

    ld a, [hl]
    srl a
    srl a
    ld hl, $4cb1
    rst $10
    ld a, [hl]
    ld e, $8f
    ld [de], a
    ret


jr_00d_4c8a:
    ld [hl], $f0
    ld l, $a4
    set 7, [hl]
    ld l, $84
    ld [hl], $0b
    call Call_00d_4d2e
    ld b, a
    ld e, $97
    ld a, [de]
    ld h, a
    ld l, $8d
    bit 5, [hl]
    ld h, d
    ld l, $90
    ld [hl], $0f
    jr z, jr_00d_4ca9

    ld [hl], $19

jr_00d_4ca9:
    ld a, b
    add $02
    call $2772
    jr jr_00d_4cee

    ei
    db $fc
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    call Call_00d_439a
    jr nz, jr_00d_4cd1

    ld l, $8f
    ld [hl], $00
    ld l, $a4
    res 7, [hl]
    ld l, e
    ld [hl], $0d
    ld l, $b0
    ld a, $06
    add [hl]
    jp $2772


jr_00d_4cd1:
    ld e, $b0
    ld a, [de]
    ldh [$8d], a
    call Call_00d_4d2e
    ld b, a
    ldh a, [$8d]
    cp b
    jr z, jr_00d_4ce5

    ld a, $02
    add b
    call $2772

jr_00d_4ce5:
    call Call_00d_4d70
    call Call_00d_4dbe
    call Call_00d_415b

jr_00d_4cee:
    jp $275f


    ld e, $a1
    ld a, [de]
    dec a
    jr z, jr_00d_4d05

    dec a
    jr z, jr_00d_4d16

    dec a
    jr nz, jr_00d_4cee

    ld a, $02
    ld [$d005], a
    jp $1e39


jr_00d_4d05:
    ld [de], a
    ld [$d01a], a
    ld e, $8b
    ld a, [$d00b]
    ld [de], a
    ld e, $8d
    ld a, [$d00d]
    ld [de], a
    ret


jr_00d_4d16:
    xor a
    ld [de], a
    ld e, $8f
    ld [de], a
    jr jr_00d_4cee

    ld e, $a1
    ld a, [de]
    cp $03
    jr nz, jr_00d_4cee

    ld e, $97
    ld a, [de]
    ld h, a
    ld l, $b0
    dec [hl]
    jp $2e28


Call_00d_4d2e:
    call Call_00d_4d67
    ret nc

    call $1e5a
    ld b, a
    and $0f
    jr nz, jr_00d_4d42

    ld e, $89
    ld a, b
    ld [de], a
    ld e, $b0
    ld a, [de]
    ret


jr_00d_4d42:
    ld e, $82
    ld a, [de]
    dec a
    ld a, b
    jr nz, jr_00d_4d59

    ld e, $89
    and $f8
    ld [de], a
    cp $10
    ld a, $00
    jr nc, jr_00d_4d55

    inc a

jr_00d_4d55:
    ld e, $b0
    ld [de], a
    ret


jr_00d_4d59:
    ld e, $89
    ld [de], a
    cp $10
    ld a, $00
    jr nc, jr_00d_4d63

    inc a

jr_00d_4d63:
    ld e, $b0
    ld [de], a
    ret


Call_00d_4d67:
    ld a, [$d024]
    rlca
    ret c

    ld e, $b0
    ld a, [de]
    ret


Call_00d_4d70:
    ld e, $86
    ld a, [de]
    and $07
    ret nz

    ld e, $b1
    ld a, [de]
    inc a
    and $07
    ld [de], a
    ld hl, $4d86
    rst $10
    ld e, $8f
    ld a, [hl]
    ld [de], a
    ret


    ei
    db $fc
    db $fd
    db $fc
    ei
    ld a, [$faf9]

Call_00d_4d8e:
    ld a, $31
    call $211e
    ld a, [$d00b]
    ld b, a
    sub [hl]
    add $08
    cp $10
    ld a, [$d00d]
    ld c, a
    ret nc

    inc l
    sub [hl]
    add $08
    cp $10
    ret


Jump_00d_4da8:
    ld e, $8b
    ld a, [de]
    and $f0
    swap a
    ld e, $b3
    ld [de], a
    ld e, $8d
    ld a, [de]
    and $f0
    swap a
    inc a
    ld e, $b4
    ld [de], a
    ret


Call_00d_4dbe:
    ld a, $02
    jp Jump_00d_4204


    jr z, jr_00d_4dd3

    ld h, d
    ld l, $aa
    ld a, [hl]
    cp $9a
    jp z, Jump_00d_4fbb

    cp $9e
    jp nz, Jump_00d_4f96

jr_00d_4dd3:
    call Call_00d_4f68
    ld e, $84
    ld a, [de]
    rst $00
    ld a, [c]
    ld c, l
    ld h, h
    ld c, [hl]
    db $fc
    ld c, l
    ld h, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    bit 0, h
    ld h, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld h, l
    ld c, [hl]
    add e
    ld c, [hl]
    xor h
    ld c, [hl]
    cp d
    ld c, [hl]
    ld a, $14
    call Call_00d_435e
    ld l, $bf
    set 5, [hl]
    ret


    inc e
    ld a, [de]
    rst $00
    rlca
    ld c, [hl]
    ld a, [hl+]
    ld c, [hl]
    ld a, $4e
    ld d, b
    ld c, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $b2
    xor a
    ld [hl], a
    ld [$cc76], a
    ld a, [$d008]
    srl a
    xor $01
    ld l, $88
    ld [hl], a
    call $2772
    ld a, $a0
    call $0c74
    jp $1dfa


    call Call_00d_4fe6
    ld h, d
    ld l, $88
    ld a, [$d008]
    srl a
    xor $01
    cp [hl]
    jr z, jr_00d_4e3e

    ld [hl], a
    jp $2772


jr_00d_4e3e:
    ld e, $8b
    ld a, [de]
    cp $80
    jr nc, jr_00d_4e4d

    ld e, $8d
    ld a, [de]
    cp $a0
    jp c, $275f

jr_00d_4e4d:
    jp $2e28


    ld h, d
    ld l, $84
    ld [hl], $0a
    ld l, $a4
    set 7, [hl]
    ld l, $90
    ld [hl], $28
    ld l, $86
    ld [hl], $01
    jp $1e03


    ret


    call $2b75
    ld e, $3f
    ld bc, $031f
    call $434f
    or e
    ret nz

    call Call_00d_4000
    ld l, $86
    ld [hl+], a
    ld a, $02
    add b
    ld [hl], a
    ld l, $89
    ld a, c
    ld [hl], a
    jp Jump_00d_4f44


    call $2b75
    ld h, d
    ld l, $86
    ld a, [hl]
    and $0f
    inc [hl]
    ld hl, $4f58
    rst $10
    ld e, $8f
    ld a, [hl]
    ld [de], a
    or a
    jr nz, jr_00d_4ea0

    call Call_00d_43a3
    jr nz, jr_00d_4ea0

    ld l, $84
    dec [hl]

jr_00d_4ea0:
    call Call_00d_42de
    call nz, Call_00d_4f44
    call $1fdb

jr_00d_4ea9:
    jp $275f


    call $2b75
    call Call_00d_43ab
    call Call_00d_4f44
    call Call_00d_4156
    jr jr_00d_4ea9

    ld a, $21
    call $211e
    bit 7, [hl]
    ret z

    ld e, $b1
    ld a, [de]
    ld b, a
    ld c, $00
    jp $216e


    jr z, jr_00d_4eee

    sub $03
    ret c

    ld e, $aa
    ld a, [de]
    res 7, a
    cp $04
    jr c, jr_00d_4eee

    ld h, d
    ld l, $b0
    inc [hl]
    ld l, $a9
    ld [hl], $40
    ld l, $84
    ld a, [hl]
    cp $0a
    jr nc, jr_00d_4eee

    ld [hl], $0a
    ld l, $8f
    ld [hl], $00

jr_00d_4eee:
    ld e, $84
    ld a, [de]
    rst $00
    ld a, [bc]
    ld c, a
    ld h, h
    ld c, [hl]
    db $fc
    ld c, l
    ld h, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld h, h
    ld c, [hl]
    ld h, l
    ld c, [hl]
    add e
    ld c, [hl]
    rla
    ld c, a
    dec [hl]
    ld c, a
    ld a, $1e
    call Call_00d_4364
    ld a, $30
    call $24a7
    jp $1dfa


    ld e, $b0
    ld a, [de]
    cp $08
    jr c, jr_00d_4f2a

    call Call_00d_4000
    ld l, $b2
    ld [hl], $00
    ld a, $8d
    jp $0c74


jr_00d_4f2a:
    call Call_00d_43ab
    call Call_00d_4f44
    call Call_00d_4156
    jr jr_00d_4f41

    call $1e52
    call $1f92
    call Call_00d_4f44
    call $1fdb

jr_00d_4f41:
    jp $275f


Call_00d_4f44:
Jump_00d_4f44:
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


    nop
    rst $38
    rst $38
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $ff
    rst $38
    nop

Call_00d_4f68:
    ld h, d
    ld l, $b3
    ld a, [hl]
    or a
    jr z, jr_00d_4f71

    dec [hl]
    ret nz

jr_00d_4f71:
    ld l, $b0
    ld a, [hl]
    cp $10
    ret c

    ld b, $22
    call Call_00d_437c
    ld e, $b0
    ld a, [de]
    sub $10
    and $1e
    rrca
    ld hl, $4f8d
    rst $10
    ld e, $b3
    ld a, [hl]
    ld [de], a
    ret


    ld e, $1a
    jr @+$18

    inc d
    ld [de], a
    db $10
    ld c, $0c

Jump_00d_4f96:
    ld l, $a9
    ld [hl], $40
    ld l, $84
    ld a, $0a
    cp [hl]
    jr z, jr_00d_4faa

    ld [hl], a
    ld l, $90
    ld [hl], $28
    ld l, $8f
    ld [hl], $00

jr_00d_4faa:
    ld e, $aa
    ld a, [de]
    rlca
    ret nc

    ld l, $b0
    bit 5, [hl]
    jr nz, jr_00d_4fb6

    inc [hl]

jr_00d_4fb6:
    ld a, $a0
    jp $0c74


Jump_00d_4fbb:
    ld l, $a4
    res 7, [hl]
    ld l, $b0
    ld a, [hl]
    cp $10
    jr c, jr_00d_4fca

    ld a, $3b
    jr jr_00d_4fcc

jr_00d_4fca:
    ld a, $33

jr_00d_4fcc:
    ld e, $b1
    ld [de], a
    ld bc, $0502
    call $24b1
    ret nz

    ld e, $96
    ld a, $40
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $84
    ld a, $0b
    ld [de], a
    jp $1e39


Call_00d_4fe6:
    ld h, d
    ld l, $ab
    ld a, [hl]
    or a
    ret nz

    ld l, $b2
    dec [hl]
    ld a, [hl]
    and $1f
    ret nz

    ld a, $a0
    jp $0c74


    ld e, $84
    ld a, [de]
    rst $00
    nop
    ld d, b
    inc d
    ld d, b
    ld a, [$cc4e]
    or a
    jp nz, $2e28

    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $0a
    call Call_00d_43cf
    jp $1e1e


    ld bc, $1f1f
    call $434f
    or b
    jr nz, jr_00d_5021

    ld h, d
    ld l, $89
    ld [hl], c

jr_00d_5021:
    call $1fdb
    call Call_00d_42e5
    jp $275f


    ld e, $84
    ld a, [de]
    rst $00
    ld b, d
    ld d, b
    ld c, d
    ld d, b
    ld e, e
    ld d, b
    ld h, [hl]
    ld d, b
    and h
    ld d, b
    xor [hl]
    ld d, b
    ret


    ld d, b
    db $db
    ld d, b
    db $eb
    ld d, b
    nop
    ld d, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $f0
    ret


    call Call_00d_515a
    ret nz

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $11
    ld a, $0f
    ld [$cc51], a
    ret


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    call Call_00d_4000
    call Call_00d_5130
    jr nc, jr_00d_5091

    ld a, $80
    ld [$cc02], a
    ld a, $21
    ld [$cca4], a
    ld hl, $c6a2
    ld a, [hl+]
    cp [hl]
    ld a, $04
    ld bc, $4100
    jr nz, jr_00d_508b

    ld e, $86
    ld a, $1e
    ld [de], a
    ld a, $08
    ld bc, $4105

jr_00d_508b:
    ld e, $84
    ld [de], a
    call $184b

Call_00d_5091:
jr_00d_5091:
    call Call_00d_5114
    call $275f
    ld e, $8b
    ld a, [de]
    ld b, a
    ldh a, [$ae]
    cp b
    jp c, $1dfa

    jp $1e03


    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $0c
    inc l
    ld [hl], $09
    call Call_00d_516a
    call Call_00d_439a
    jr nz, jr_00d_5091

    ld [hl], $0c
    inc l
    dec [hl]
    jr z, jr_00d_50c1

    call Call_00d_5149
    jr jr_00d_5091

jr_00d_50c1:
    dec l
    ld [hl], $1e
    ld l, $84
    inc [hl]
    jr jr_00d_5091

    call Call_00d_516a
    call Call_00d_439a
    jr nz, jr_00d_5091

    ld l, $84
    inc [hl]
    ld a, $29
    ld c, $40
    call $16eb
    call Call_00d_516a
    ld e, $b1
    ld a, [de]
    or a
    jr nz, jr_00d_5091

    call Call_00d_4000
    ld l, $86
    ld [hl], $1e
    call Call_00d_439a
    jr nz, jr_00d_5091

    ld [hl], $3c
    ld l, e
    inc [hl]
    xor a
    ld [$cca4], a
    ld [$cc02], a
    ld a, $91
    call $0c74
    call Call_00d_439a
    jp z, $2e28

    call Call_00d_5091
    ld h, d
    ld l, $86
    bit 0, [hl]
    ret nz

    ld l, $9a
    res 7, [hl]
    ret


Call_00d_5114:
    ld h, d
    ld l, $b0
    dec [hl]
    ld a, [hl]
    and $07
    ret nz

    ld a, [hl]
    and $18
    swap a
    rlca
    sub $02
    bit 5, [hl]
    jr nz, jr_00d_512a

    cpl
    inc a

jr_00d_512a:
    sub $10
    ld l, $8f
    ld [hl], a
    ret


Call_00d_5130:
    call $1ce6
    ret nc

    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    sub $10
    cp $21
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $18
    cp $31
    ret


Call_00d_5149:
    call $3ea7
    ret nz

    ld [hl], $30
    ld l, $d6
    ld a, $80
    ld [hl+], a
    ld [hl], d
    ld h, d
    ld l, $b1
    inc [hl]
    ret


Call_00d_515a:
    ld bc, $0502
    call $24b1
    ret nz

    ld a, h
    ld h, d
    ld l, $99
    ld [hl-], a
    ld [hl], $40
    xor a
    ret


Call_00d_516a:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, $8c
    jp $0c74


    jr z, jr_00d_51ad

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_4033

    ld e, $aa
    ld a, [de]
    cp $80
    ret nz

    ld e, $b3
    ld a, [de]
    or a
    ret nz

    ld b, $20
    call Call_00d_437c
    ld h, d
    ld l, $9c
    ld a, $01
    ld [hl-], a
    ld [hl], a
    ld l, $84
    ld [hl], $08
    ld l, $a8
    ld [hl], $fc
    ld l, $b3
    ld [hl], $02
    ld l, $90
    ld [hl], $1e
    ld a, $03
    jp $2772


jr_00d_51ad:
    call Call_00d_4426
    cp $0b
    jr nc, jr_00d_51cb

    rst $00
    pop de
    ld d, c
    ld [$0852], sp
    ld d, d
    ld [$0852], sp
    ld d, d
    bit 0, h
    ld [$0852], sp
    ld d, d
    add hl, bc
    ld d, d
    ld b, l
    ld d, d
    ld l, h
    ld d, d

jr_00d_51cb:
    ld a, b
    rst $00
    and d
    ld d, d
    jr z, jr_00d_5224

    ld h, d
    ld l, $86
    ld [hl], $08
    ld l, $a8
    ld [hl], $f8
    bit 0, b
    ld l, e
    jr z, jr_00d_51e4

    ld [hl], $0b
    jp $1e27


jr_00d_51e4:
    ld [hl], $0b
    ld l, $8f
    ld [hl], $e4
    ld l, $90
    ld [hl], $14
    ld bc, $1f01
    call $434f
    ld e, $89
    ld a, b
    ld [de], a
    ld a, c
    or a
    jr nz, jr_00d_51fd

    dec a

jr_00d_51fd:
    ld e, $b5
    ld [de], a
    ld a, $01
    call $2772
    jp $1dfa


    ret


    ld e, $b0
    ld a, $ff
    ld [de], a
    call $1432
    ld c, l
    ld l, $00

jr_00d_5214:
    ld a, [hl]
    cp $09
    call z, Call_00d_53ea
    inc l
    ld a, l
    cp $b0
    jr c, jr_00d_5214

    ld e, $b0
    ld a, [de]
    inc a

jr_00d_5224:
    ld h, d
    jr nz, jr_00d_5239

    ld l, $82
    bit 0, [hl]
    ld a, $0d
    jr z, jr_00d_5235

    ld l, $86
    ld [hl], $78
    ld a, $0c

jr_00d_5235:
    ld l, $84
    ld [hl], a
    ret


jr_00d_5239:
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld a, $03
    jp $2772


    ld h, d
    ld l, $b1
    call Call_00d_4439
    cp c
    jr nz, jr_00d_5253

    ldh a, [$8f]
    cp b
    jr z, jr_00d_525c

jr_00d_5253:
    call Call_00d_544d
    call Call_00d_4430
    jp $275f


jr_00d_525c:
    call Call_00d_544d
    ret c

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $3c
    ld a, $02
    jp $2772


    call Call_00d_439a
    jr z, jr_00d_5286

    ld a, [hl]
    sub $1e
    ret nz

    ld l, $9c
    ld a, $05
    ld [hl-], a
    ld [hl], a
    ld l, $a8
    ld [hl], $f8
    ld l, $b3
    xor a
    ld [hl], a
    jp $2772


jr_00d_5286:
    ld l, $89
    ld a, [hl]
    add $10
    and $1f
    ld [hl], a
    ld l, $82
    bit 0, [hl]
    ld a, $0d
    jr z, jr_00d_529c

    ld l, $86
    ld [hl], $78
    ld a, $0c

jr_00d_529c:
    ld [de], a
    ld a, $01
    jp $2772


    call Call_00d_5422
    ld e, $84
    ld a, [de]
    sub $0b
    rst $00
    or c
    ld d, d
    reti


    ld d, d
    inc c
    ld d, e
    call Call_00d_53d5
    jr nc, jr_00d_52c1

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $5b
    ld l, $90
    ld [hl], $19

jr_00d_52c1:
    call Call_00d_439a
    jr nz, jr_00d_52d1

    ld [hl], $08
    ld e, $b5
    ld a, [de]
    ld l, $89
    add [hl]
    and $1f
    ld [hl], a

jr_00d_52d1:
    call $1fdb
    call Call_00d_5461
    jr jr_00d_5309

    call Call_00d_439a
    jr nz, jr_00d_52e3

    ld l, $84
    inc [hl]
    jr jr_00d_5309

jr_00d_52e3:
    ld a, [hl]
    and $f0
    swap a
    ld hl, $5486
    rst $10
    ld e, $8e
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    call $1e52
    ld b, a
    ld e, $86
    ld a, [de]
    and $03
    ld a, b
    call z, $1f92

Call_00d_5303:
jr_00d_5303:
    call Call_00d_42e5
    call $1fdb

jr_00d_5309:
    jp $275f


    ld h, d
    ld l, $8e
    ld a, [hl]
    sub $40
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    cp $e4
    jr nc, jr_00d_5303

    ld l, e
    ld [hl], $0b
    ld l, $90
    ld [hl], $14
    ld l, $86
    ld [hl], $08
    jr jr_00d_5309

    call Call_00d_5422
    ld e, $84
    ld a, [de]
    sub $0b
    rst $00
    scf
    ld d, e
    ld h, h
    ld d, e
    add e
    ld d, e
    call Call_00d_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld bc, $1f3f
    call $434f
    ld e, $89
    ld a, b
    ld [de], a
    ld a, $c0
    add c
    ld e, $86
    ld [de], a
    ld e, $b3
    ld a, [de]
    inc a
    call $2772
    ld e, $b3
    ld a, [de]
    or a
    ld b, $20
    call z, Call_00d_437c
    jp $275f


    call Call_00d_5303
    ld a, [$cc00]
    and $01
    ret nz

    call Call_00d_439a
    jr z, jr_00d_537f

    ld bc, $0f1f
    call $434f
    or b
    ret nz

    ld e, $89
    ld a, c
    ld [de], a
    ret


jr_00d_537f:
    ld l, $84
    inc [hl]
    ret


    ld e, $86
    ld a, [de]
    cp $68
    jr nc, jr_00d_5390

    call Call_00d_42e5
    call $1fdb

jr_00d_5390:
    call Call_00d_53b0
    ld h, d
    ld l, $86
    inc [hl]
    ld a, $7f
    cp [hl]
    ret nz

    ld l, $84
    ld [hl], $0b
    ld e, $b3
    ld a, [de]
    call $2772
    call $042f
    and $7f
    ld e, $86
    add $20
    ld [de], a
    ret


Call_00d_53b0:
    ld e, $86
    ld a, [de]
    and $0f
    jr nz, jr_00d_53c2

    ld a, [de]
    swap a
    ld hl, $548c
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a

jr_00d_53c2:
    ld e, $86
    ld a, [de]
    and $f0
    swap a
    ld hl, $5494
    rst $10
    ld a, [$cc00]
    and [hl]
    jp z, $275f

    ret


Call_00d_53d5:
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    add $20
    cp $41
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $20
    cp $41
    ret


Call_00d_53ea:
    ld a, c
    and $f0
    swap a
    ld b, a
    ld a, l
    and $f0
    swap a
    sub b
    jr nc, jr_00d_53fa

    cpl
    inc a

jr_00d_53fa:
    ld b, a
    ld a, c
    and $0f
    ld e, a
    ld a, l
    and $0f
    sub e
    jr nc, jr_00d_5407

    cpl
    inc a

jr_00d_5407:
    add b
    ld b, a
    ld e, $b0
    ld a, [de]
    cp b
    ret c

    ld a, b
    ld [de], a
    ld e, $b1
    ld a, l
    and $f0
    add $08
    ld [de], a
    inc e
    ld a, l
    and $0f
    swap a
    add $08
    ld [de], a
    ret


Call_00d_5422:
    ld e, $b3
    ld a, [de]
    or a
    ret z

    ld e, $b4
    ld a, [de]
    ld l, a
    ld h, $cf
    ld b, $16

jr_00d_542f:
    ld a, [hl+]
    cp $09
    jr z, jr_00d_543f

    dec b
    jr nz, jr_00d_542f

    ld a, l
    cp $b0
    jr nz, jr_00d_543d

    xor a

jr_00d_543d:
    ld [de], a
    ret


jr_00d_543f:
    pop hl
    ld h, d
    ld l, e
    ld [hl], $00
    ld l, $84
    ld [hl], $08
    ld l, $90
    ld [hl], $1e
    ret


Call_00d_544d:
    ld e, $8f
    ld a, [de]
    or a
    ret z

    cp $fa
    ret nc

    dec e
    ld a, [de]
    add $80
    ld [de], a
    inc e
    ld a, [de]
    adc $00
    ld [de], a
    scf
    ret


Call_00d_5461:
    ld e, $8b
    ld a, [de]
    cp $b0
    jr nc, jr_00d_546e

    ld e, $8d
    ld a, [de]
    cp $f0
    ret c

jr_00d_546e:
    ld e, $8b
    ld a, [de]
    ldh [$8f], a
    ld e, $8d
    ld a, [de]
    ldh [$8e], a
    ld bc, $5878
    call $1e6f
    ld c, a
    ld b, $28
    ld e, $89
    jp $1fe7


    add b
    ld h, b
    ld b, b
    jr nc, @+$22

    jr nz, @+$20

    inc d
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    nop
    jr z, jr_00d_54bc

    sub $03
    ret c

    jp z, $27ce

    dec a
    ret z

    ld e, $90
    ld a, [de]
    push af
    ld a, $50
    ld [de], a
    ld e, $ac
    call Call_00d_5530
    ld e, $ac
    call Call_00d_415b
    pop af
    ld e, $90
    ld [de], a
    ret


jr_00d_54bc:
    ld e, $84
    ld a, [de]
    rst $00
    call nc, $0854
    ld d, l
    ld [$0855], sp
    ld d, l
    ld [$cb55], sp
    ld b, h
    ld [$0855], sp
    ld d, l
    add hl, bc
    ld d, l
    daa
    ld d, l
    call $1e27

jr_00d_54d7:
    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $86
    ld [hl], $40
    ld a, [$ccf0]
    or a
    jr nz, jr_00d_54f2

    call $042f
    and $18
    add $04
    ld e, $89
    ld [de], a
    jr jr_00d_5524

jr_00d_54f2:
    ldh a, [$b0]
    ldh [$8f], a
    ldh a, [$b1]
    ldh [$8e], a
    ld l, $8b
    ld a, [hl+]
    ld b, a
    inc l
    ld c, [hl]
    call $1e6f
    ld e, $89
    ld [de], a
    jr jr_00d_5524

    ret


    call Call_00d_439a
    jr nz, jr_00d_5516

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $08
    jr jr_00d_5524

jr_00d_5516:
    call Call_00d_5568
    call Call_00d_552e
    ld e, $89
    call Call_00d_415b
    call Call_00d_42e5

jr_00d_5524:
    jp $275f


    call Call_00d_439a
    jr nz, jr_00d_5524

    jr jr_00d_54d7

Call_00d_552e:
    ld e, $89

Call_00d_5530:
    ld a, [de]
    call Call_00d_4253
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

jr_00d_5545:
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
    jr nc, jr_00d_5545

    xor $0f
    ldh [$8b], a
    ldh a, [$ad]
    ld d, a
    ret


Call_00d_5568:
    ld a, [hl]
    srl a
    srl a
    ld hl, $5576
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a
    ret


    dec b
    ld a, [bc]
    inc d
    ld e, $28
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jr z, jr_00d_55a8

    ld e, $1e
    inc d
    inc d
    ld a, [bc]
    ld a, [bc]
    call Call_00d_4051
    call Call_00d_558f
    jp Jump_00d_5761


Call_00d_558f:
    jr z, jr_00d_559f

    sub $03
    ret c

    jr z, jr_00d_559b

    dec a
    jp nz, Jump_00d_404a

    ret


jr_00d_559b:
    pop hl
    jp $27ce


jr_00d_559f:
    call Call_00d_44d5
    jr z, jr_00d_55a9

    ld e, $90
    ld a, $19

jr_00d_55a8:
    ld [de], a

jr_00d_55a9:
    ld e, $84
    ld a, [de]
    rst $00
    jp $0a55


    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    sbc $55
    db $f4
    ld d, l
    bit 0, h
    ld a, [bc]
    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    dec bc
    ld d, [hl]
    dec h
    ld d, [hl]
    ld [hl-], a
    ld d, [hl]

Jump_00d_55c3:
    ld b, $1d
    call Call_00d_437c
    ret nz

    call Call_00d_43c6
    call Call_00d_43d8
    ld a, $14
    call Call_00d_435e
    ld l, $86
    inc [hl]
    ld l, $bf
    set 4, [hl]
    jp Jump_00d_5750


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    jp hl


    ld d, l
    jp hl


    ld d, l
    ld [$c955], a
    ld b, $09
    call Call_00d_4501
    ld l, $86
    ld [hl], $10
    ret


    ld a, [$ccf0]
    or a
    ld h, d
    jp z, Jump_00d_564e

    call Call_00d_44ea
    call Call_00d_43d8
    call Call_00d_4153
    call $275f
    jr jr_00d_5622

    ret


    call Call_00d_5720
    jp c, Jump_00d_56f9

    call Call_00d_439a
    jp z, Jump_00d_5706

    call Call_00d_4156
    jr nz, jr_00d_5622

    call Call_00d_42de
    jp nz, Jump_00d_43d8

jr_00d_5622:
    jp $275f


    call Call_00d_439a
    ret nz

    ld [hl], $60
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $19
    ret


    call Call_00d_439a
    jp z, Jump_00d_564e

    ld a, [hl]
    and $03
    jr nz, jr_00d_5646

    call $1e52
    call $1f92
    call Call_00d_43d8

jr_00d_5646:
    call Call_00d_4156
    call $275f
    jr jr_00d_5622

Jump_00d_564e:
    ld l, e
    ld [hl], $08
    ld l, $90
    ld [hl], $14
    ld l, $89
    ld a, [hl]
    add $04
    and $18
    ld [hl], a
    call Call_00d_43d8
    call Call_00d_5750
    jr jr_00d_5622

    call Call_00d_4446
    call Call_00d_566e
    jp Jump_00d_5786


Call_00d_566e:
    jr z, jr_00d_568c

    sub $03
    ret c

    jr z, jr_00d_567c

    dec a
    call nz, Call_00d_404a
    jp Jump_00d_5786


jr_00d_567c:
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00d_5688

    ld hl, $c6c9
    set 2, [hl]

jr_00d_5688:
    pop hl
    jp $27ce


jr_00d_568c:
    ld e, $84
    ld a, [de]
    rst $00
    and [hl]
    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    sbc $55
    ld a, [bc]
    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    ld a, [bc]
    ld d, [hl]
    cp b
    ld d, [hl]
    ret nc

    ld d, [hl]
    db $dd
    ld d, [hl]
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00d_56b5

    ld a, [$c6c9]
    bit 2, a
    jp nz, Jump_00d_57c7

jr_00d_56b5:
    jp Jump_00d_55c3


    call Call_00d_5738
    jr c, jr_00d_56f9

    call Call_00d_439a
    jr z, jr_00d_5706

    call Call_00d_4156
    jr nz, jr_00d_56cd

    call Call_00d_42de
    jp nz, Jump_00d_43d8

jr_00d_56cd:
    jp $275f


    call Call_00d_439a
    ret nz

    ld [hl], $60
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ret


    call Call_00d_439a
    jp z, Jump_00d_564e

    ld a, [hl]
    and $01
    jr nz, jr_00d_56f1

    call $1e52
    call $1f92
    call Call_00d_43d8

jr_00d_56f1:
    call Call_00d_4156
    call $275f
    jr jr_00d_56cd

Jump_00d_56f9:
jr_00d_56f9:
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $10
    call Call_00d_43bf
    jp Jump_00d_43d8


Jump_00d_5706:
jr_00d_5706:
    ld bc, $3f07
    call $434f
    ld e, $86
    ld a, $50
    add b
    ld [de], a
    call Call_00d_5718
    jp Jump_00d_43d8


Call_00d_5718:
    ld a, c
    or a
    jp z, Jump_00d_43b4

    jp Jump_00d_43c6


Call_00d_5720:
    call Call_00d_43a3
    ret nz

    ld l, $8b
    ldh a, [$b0]
    sub [hl]
    add $28
    cp $51
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $28
    cp $51
    ret


Call_00d_5738:
    call Call_00d_43a3
    ret nz

    ld l, $8b
    ldh a, [$b0]
    sub [hl]
    add $28
    cp $51
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $28
    cp $51
    ret


Call_00d_5750:
Jump_00d_5750:
    ld e, $82
    ld a, [de]
    ld bc, $575e
    call $006d
    ld e, $87
    ld a, [bc]
    ld [de], a
    ret


    inc d
    db $10
    inc c

Jump_00d_5761:
    ld b, $00
    ld e, $ae
    ld a, [de]
    or a
    jr nz, jr_00d_5772

    call Call_00d_57a2
    ld a, $52
    ld b, $00
    jr nz, jr_00d_577e

jr_00d_5772:
    inc b
    ld e, $81
    ld a, [de]
    cp $49
    ld a, $11
    jr nz, jr_00d_577e

    ld a, $20

jr_00d_577e:
    ld e, $a5
    ld [de], a
    ld e, $b0
    ld a, b
    ld [de], a
    ret


Jump_00d_5786:
    ld b, $00
    ld e, $ae
    ld a, [de]
    or a
    jr nz, jr_00d_5797

    call Call_00d_57a2
    ld a, $53
    ld b, $00
    jr nz, jr_00d_579a

jr_00d_5797:
    ld a, $1f
    inc b

jr_00d_579a:
    ld e, $a5
    ld [de], a
    ld e, $b0
    ld a, b
    ld [de], a
    ret


Call_00d_57a2:
    ld e, $ad
    ld a, [de]
    or a
    ret nz

    call $1e52
    ld b, a
    ld e, $88
    ld a, [de]
    add a
    ld hl, $57b7
    rst JumpTable
    ld a, b
    jp $0205


    ccf
    nop
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ld hl, sp+$01

Jump_00d_57c7:
    call $249f
    jp $2e28


    jr z, jr_00d_57db

    sub $03
    ret c

    jp z, $27ce

    ld e, $a5
    ld a, [de]
    cp $55
    ret nz

jr_00d_57db:
    call Call_00d_586f
    ld e, $84
    ld a, [de]
    rst $00
    ld a, [$0157]
    ld e, b
    ld bc, $0158
    ld e, b
    ld bc, $cb58
    ld b, h
    ld bc, $0158
    ld e, b
    ld [bc], a
    ld e, b
    ld a, [de]
    ld e, b
    dec [hl]
    ld e, b
    ld d, c
    ld e, b
    call Call_00d_435e
    ld l, $86
    inc [hl]
    ret


    ret


    call Call_00d_439a
    ret nz

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $7f
    ld l, $90
    ld [hl], $05
    ld l, $b0
    ld [hl], $0f
    call $1dfa
    jr jr_00d_584e

    call Call_00d_439a
    jp nz, Jump_00d_587d

    ld l, $84
    inc [hl]
    call $042f
    and $07
    ld hl, $58d0
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    call Call_00d_43cf
    jr jr_00d_584e

    call Call_00d_439a
    jr z, jr_00d_5848

    ld a, [hl]
    and $1f
    call z, Call_00d_43cf
    call $1fdb
    call Call_00d_42e5
    jr jr_00d_584e

jr_00d_5848:
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $00

jr_00d_584e:
    jp $275f


    ld h, d
    ld l, $86
    inc [hl]
    ld a, $80
    cp [hl]
    jp nz, Jump_00d_587d

    ld [hl], $80
    push hl
    call $149b
    pop hl
    jr z, jr_00d_5866

    ld [hl], $01

jr_00d_5866:
    ld l, $84
    ld [hl], $08
    call $1e03
    jr jr_00d_584e

Call_00d_586f:
    ld e, $8f
    ld a, [de]
    or a
    ld a, $2e
    jr z, jr_00d_5879

    ld a, $55

jr_00d_5879:
    ld e, $a5
    ld [de], a
    ret


Jump_00d_587d:
    ld e, $86
    ld a, [de]
    dec a
    cp $41
    jr nc, jr_00d_58a2

    and $78
    swap a
    rlca
    ld b, a
    sub $06
    jr c, jr_00d_5890

    xor a

jr_00d_5890:
    ld e, $8f
    ld [de], a
    ld a, b
    ld hl, $58c7
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a
    call $1fdb
    call Call_00d_42e5

jr_00d_58a2:
    ld e, $86
    ld a, [de]
    and $f0
    swap a
    ld hl, $58bf
    rst $10
    ld b, [hl]
    ld a, b
    inc a
    jr nz, jr_00d_58b7

    call $275f
    ld b, $00

jr_00d_58b7:
    ld a, [$cc00]
    and b
    jp z, $275f

    ret


    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0703
    ld e, $1e
    ld e, $14
    inc d
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    or h
    or h
    jp nc, $f0d2

    ldh a, [rP1]
    nop
    call Call_00d_4043
    jr z, jr_00d_58fc

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_404a

    jr jr_00d_58e9

jr_00d_58e9:
    ld e, $82
    ld a, [de]
    dec a
    ret nz

    ld e, $ae
    ld a, [de]
    or a
    ret nz

    ld e, $aa
    ld a, [de]
    cp $80
    ret z

    jp Jump_00d_5a2e


jr_00d_58fc:
    call Call_00d_4426
    jr nc, jr_00d_5912

    rst $00
    ld a, [de]
    ld e, c
    db $76
    ld e, c
    db $76
    ld e, c
    ld c, h
    ld e, c
    db $76
    ld e, c
    bit 0, h
    db $76
    ld e, c
    db $76
    ld e, c

jr_00d_5912:
    ld a, b
    rst $00
    ld [hl], a
    ld e, c
    call z, $3a59
    ld e, d
    ld h, d
    ld l, $9a
    ld a, [hl]
    or $42
    ld [hl], a
    ld l, e
    ld e, $82
    ld a, [de]
    or a
    jr nz, jr_00d_592f

    ld [hl], $08
    ld l, $86
    ld [hl], $50
    ret


jr_00d_592f:
    dec a
    jr nz, jr_00d_593c

    ld [hl], $08
    ld hl, $cee0
    ld b, $10
    jp $044b


jr_00d_593c:
    ld [hl], $0b
    ld l, $90
    ld [hl], $14
    ld l, $86
    ld [hl], $08
    call Call_00d_43c6
    jp Jump_00d_5acd


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld d, a
    ld e, c
    ld d, a
    ld e, c
    ld e, b
    ld e, c
    ret


    call Call_00d_4501
    ret nz

    ld l, $a4
    res 7, [hl]
    ld e, $82
    ld a, [de]
    ld hl, $5970
    rst JumpTable
    ld e, $84
    ld a, [hl+]
    ld [de], a
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    dec bc
    ld e, $0b
    sub [hl]
    add hl, bc
    nop
    ret


    ld a, [de]
    sub $08
    rst $00
    add e
    ld e, c
    adc [hl]
    ld e, c
    and d
    ld e, c
    cp d
    ld e, c
    call Call_00d_439a
    ret nz

    ld [hl], $4b
    ld l, e
    inc [hl]
    jp $1e03


    call Call_00d_439a
    jp nz, Jump_00d_5adb

    ld [hl], $48
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call Call_00d_43b4
    jp Jump_00d_5acd


    call Call_00d_439a
    jr z, jr_00d_59b0

    ld a, [hl]
    cp $34
    ret nz

    ld b, $1f
    jp Jump_00d_437c


jr_00d_59b0:
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    xor a
    jp $2772


    ld h, d
    ld l, $86
    inc [hl]
    ld a, [hl]
    cp $4b
    jp c, Jump_00d_5adb

    ld [hl], $48
    ld l, e
    ld [hl], $08
    jp $1e39


    ld a, [de]
    sub $08
    rst $00
    ret c

    ld e, c
    db $f4
    ld e, c
    dec b
    ld e, d
    inc e
    ld e, d
    call Call_00d_5b05
    ret nz

    call Call_00d_5b33
    ret z

    ld h, d
    ld l, $8b
    ld [hl], b
    ld l, $8d
    ld [hl], c
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $3c
    call Call_00d_43b4
    jp Jump_00d_5acd


    call Call_00d_439a
    jp nz, Jump_00d_441f

    ld [hl], $48
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    jp $1e03


    call Call_00d_439a
    jr z, jr_00d_5a13

    ld a, [hl]
    cp $34
    ret nz

    ld b, $1f
    jp Jump_00d_437c


jr_00d_5a13:
    ld [hl], $b4
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ret


    call Call_00d_439a
    jr z, jr_00d_5a2b

    ld a, [hl]
    cp $78
    ret c

    jp z, $1e39

    jp Jump_00d_441f


jr_00d_5a2b:
    ld l, e
    ld [hl], $08

Jump_00d_5a2e:
    ld h, d
    ld l, $b0
    ld l, [hl]
    ld h, $ce
    ld a, [hl]
    sub d
    ret nz

    ld [hl-], a
    ld [hl], a
    ret


    ld a, [de]
    sub $08
    rst $00
    ld b, [hl]
    ld e, d
    ld l, [hl]
    ld e, d
    add l
    ld e, d
    and l
    ld e, d
    call Call_00d_439a
    jr z, jr_00d_5a66

    inc l
    dec [hl]
    jr nz, jr_00d_5a5f

    call Call_00d_43b4
    call Call_00d_5acd
    call $042f
    and $3f
    add $20
    ld e, $87
    ld [de], a

jr_00d_5a5f:
    call Call_00d_5b28
    call Call_00d_4156
    ret nz

jr_00d_5a66:
    call Call_00d_4000
    ld l, $a4
    res 7, [hl]
    ret


    call Call_00d_5b05
    jp nz, Jump_00d_441f

    ld h, d
    ld l, $b1
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $84
    inc [hl]
    ld l, $8f
    dec [hl]
    call Call_00d_5af8
    jr jr_00d_5acd

    call Call_00d_5af8
    call Call_00d_441f
    call Call_00d_5ae4
    jp nc, $1fdb

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $08
    ld l, $8f
    ld [hl], $00
    call Call_00d_43b4
    call Call_00d_5acd
    jp $1e03


    call Call_00d_439a
    jp nz, Jump_00d_441f

    ld h, d
    ld l, e
    ld [hl], $08
    ld l, $a4
    set 7, [hl]
    ld bc, $7f3f
    call $434f
    ld e, $86
    ld a, b
    add $80
    ld [de], a
    inc e
    ld a, c
    add $10
    ld [de], a
    call Call_00d_43b4
    call Call_00d_5acd
    jp $1e03


Call_00d_5acd:
Jump_00d_5acd:
jr_00d_5acd:
    ld e, $89
    ld a, [de]
    add $04
    and $18
    swap a
    rlca
    inc a
    jp $2772


Jump_00d_5adb:
    ld e, $86
    ld a, [de]
    cp $2d
    ret c

    jp Jump_00d_441f


Call_00d_5ae4:
    ld h, d
    ld l, $8b
    ld e, $b1
    ld a, [de]
    sub [hl]
    inc a
    cp $03
    ret nc

    ld l, $8d
    inc e
    ld a, [de]
    sub [hl]
    inc a
    cp $03
    ret


Call_00d_5af8:
    ld h, d
    ld l, $b1
    call Call_00d_4439
    call $1e6f
    ld e, $89
    ld [de], a
    ret


Call_00d_5b05:
    call $042f
    and $70
    ld b, a
    ldh a, [$a8]
    add b
    and $f0
    add $08
    ld b, a

jr_00d_5b13:
    call $041a
    and $f0
    cp $a0
    jr nc, jr_00d_5b13

    ld c, a
    ldh a, [$aa]
    add c
    and $f0
    add $08
    ld c, a
    jp $14a5


Call_00d_5b28:
    ld e, $86
    ld a, [de]
    and $1f
    ret nz

    ld b, $1f
    jp Jump_00d_437c


Call_00d_5b33:
    push bc
    ld e, l
    ld b, $08
    ld c, b
    ld hl, $cee0

jr_00d_5b3b:
    ld a, [hl+]
    cp e
    jr z, jr_00d_5b58

    inc l
    dec b
    jr nz, jr_00d_5b3b

    ld l, $e0

jr_00d_5b45:
    ld a, [hl]
    or a
    jr z, jr_00d_5b50

    inc l
    inc l
    dec c
    jr nz, jr_00d_5b45

    jr jr_00d_5b58

jr_00d_5b50:
    ld [hl], e
    inc l
    ld [hl], d
    ld e, $b0
    ld a, l
    ld [de], a
    or d

jr_00d_5b58:
    pop bc
    ret


    jr z, jr_00d_5b67

    sub $03
    ret c

    jp z, $27ce

    dec a
    ret z

    jp Jump_00d_4033


jr_00d_5b67:
    call Call_00d_4426
    jr nc, jr_00d_5b7d

    rst $00
    add e
    ld e, e
    sub d
    ld e, e
    sub d
    ld e, e
    sub d
    ld e, e
    sub d
    ld e, e
    bit 0, h
    sub d
    ld e, e
    sub d
    ld e, e

jr_00d_5b7d:
    ld a, b
    rst $00
    sub e
    ld e, e
    ld d, $5c
    ld e, $82
    ld a, [de]
    or a
    jp nz, Jump_00d_4364

    ld a, $32
    call Call_00d_4364
    jp $1dfa


    ret


    ld a, [de]
    sub $08
    rst $00
    sbc l
    ld e, e
    call nz, $f75b
    ld e, e
    call Call_00d_43bf
    call Call_00d_5cf2
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    add $30
    cp $61
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $18
    cp $31
    ret nc

    call Call_00d_4000
    ld l, $86
    ld [hl], $19
    ld l, $b0
    ld [hl], $02
    ret


    call Call_00d_43bf
    call Call_00d_5cf2
    call Call_00d_439a
    jr z, jr_00d_5bd9

    ld a, [hl]
    and $03
    jr nz, jr_00d_5c13

    ld l, $8f
    dec [hl]
    jr jr_00d_5c13

jr_00d_5bd9:
    inc l
    ld [hl], $5a
    ld l, $84
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call Call_00d_43bf
    call $042f
    and $04
    jr nz, jr_00d_5bef

    ld a, $fc

jr_00d_5bef:
    ld b, a
    ld e, $89
    ld a, [de]
    add b
    ld [de], a
    jr jr_00d_5c13

    call Call_00d_5d09
    jp nc, $2e28

    call Call_00d_43a3
    jr z, jr_00d_5c10

    ld a, [hl]
    and $07
    jr nz, jr_00d_5c10

    call $1e52
    call $1f92
    call Call_00d_5cf2

jr_00d_5c10:
    call $1fdb

jr_00d_5c13:
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    ld h, $5c
    ld d, l
    ld e, h
    sbc l
    ld e, h
    or c
    ld e, h
    bit 3, h
    ldh [$5c], a
    ld hl, $d081
    ld b, $00

jr_00d_5c2b:
    ld a, [hl]
    cp $41
    jr nz, jr_00d_5c39

    ld l, e
    ld a, [hl-]
    dec l
    dec l
    cp $09
    jr c, jr_00d_5c39

    inc b

jr_00d_5c39:
    inc h
    ld a, h
    cp $e0
    jr c, jr_00d_5c2b

    ld a, b
    cp $02
    ret nc

    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    or a
    ld a, $3c
    jr z, jr_00d_5c4f

    ld a, $f0

jr_00d_5c4f:
    ld [hl], a
    ld l, $b0
    ld [hl], $02
    ret


    call Call_00d_439a
    ret nz

    ld b, $00
    ldh a, [$ae]
    cp $40
    jr c, jr_00d_5c63

    ld b, $08

jr_00d_5c63:
    ldh a, [$af]
    cp $50
    jr c, jr_00d_5c6b

    set 2, b

jr_00d_5c6b:
    ld a, b
    ld hl, $5d5a
    rst $10
    ld e, $8b
    ld a, [hl+]
    ld [de], a
    ldh [$8f], a
    ld e, $8d
    ld a, [hl+]
    ld [de], a
    ldh [$8e], a
    ld e, $b2
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc e
    ld a, [hl]
    ld [de], a
    ld c, a
    call Call_00d_43bf
    call Call_00d_4000
    ld l, $a4
    set 7, [hl]
    ld l, $90
    ld [hl], $14
    ld l, $8f
    ld [hl], $fa
    call Call_00d_5cf2
    jp $1dfa


    call Call_00d_5d15
    jr nc, jr_00d_5cae

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $3c
    call Call_00d_43bf
    call Call_00d_5cf2

jr_00d_5cae:
    jp $275f


    call Call_00d_439a
    jr nz, jr_00d_5cae

    ld [hl], $18
    inc l
    ld [hl], $00
    ld l, e
    inc [hl]
    ld l, $b2
    ldh a, [$ae]
    ld [hl+], a
    ldh a, [$af]
    ld [hl], a
    ld l, $90
    ld [hl], $05
    jr jr_00d_5cae

    call Call_00d_5d46
    jr nc, jr_00d_5cdb

    call Call_00d_5ceb
    call Call_00d_5d30
    call $1fdb
    jr jr_00d_5cae

jr_00d_5cdb:
    call Call_00d_4000
    jr jr_00d_5cae

    ld h, d
    ld l, e
    ld [hl], $08
    ld l, $a4
    res 7, [hl]
    jp $1e39


Call_00d_5ceb:
    call Call_00d_439a
    ret nz

    call Call_00d_43bf

Call_00d_5cf2:
    ld h, d
    ld l, $89
    ld a, [hl]
    and $0f
    ret z

    bit 4, [hl]
    ld l, $b0
    ld a, [hl]
    jr nz, jr_00d_5d01

    inc a

jr_00d_5d01:
    ld l, $b1
    cp [hl]

jr_00d_5d04:
    ret z

    ld [hl], a
    jp $2772


Call_00d_5d09:
    ld e, $8b
    ld a, [de]
    cp $88
    ret nc

    ld e, $8d
    ld a, [de]
    cp $a8
    ret


Call_00d_5d15:
    ld h, d
    ld l, $b2
    call Call_00d_4439
    sub c
    inc a
    cp $02
    jr nc, jr_00d_5d28

    ldh a, [$8f]
    sub b
    inc a
    cp $02
    ret c

jr_00d_5d28:
    call Call_00d_4430
    call Call_00d_5cf2
    or d
    ret


Call_00d_5d30:
    ld e, $87
    ld a, [de]
    cp $7f
    jr z, jr_00d_5d39

    inc a
    ld [de], a

jr_00d_5d39:
    and $f0
    swap a
    ld hl, $5d52
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a
    ret


Call_00d_5d46:
    ld e, $8b
    ld a, [de]
    cp $88
    ret nc

    ld e, $8d
    ld a, [de]
    cp $a8
    ret


    ld a, [bc]
    inc d
    ld e, $28
    ld [hl-], a
    inc a
    ld b, [hl]
    ld d, b
    ld h, b
    and b
    ld [hl], b
    sub b
    ld h, b
    nop
    ld [hl], b
    db $10
    jr nz, jr_00d_5d04

    db $10
    sub b
    jr nz, jr_00d_5d68

jr_00d_5d68:
    db $10
    db $10
    call Call_00d_4043
    jr z, jr_00d_5d81

    sub $03
    ret c

    jp z, $27ce

    ld e, $aa
    ld a, [de]
    cp $80
    jr nz, jr_00d_5d81

    ld e, $84
    ld a, $0c
    ld [de], a

jr_00d_5d81:
    ld e, $84
    ld a, [de]
    rst $00
    and c
    ld e, l
    xor c
    ld e, l
    xor c
    ld e, l
    xor c
    ld e, l
    xor c
    ld e, l
    bit 0, h
    xor c
    ld e, l
    xor c
    ld e, l
    xor d
    ld e, l
    call nc, $e75d
    ld e, l
    ld a, [c]
    ld e, l
    dec bc
    ld e, [hl]
    rla
    ld e, [hl]
    ld e, $86
    ld a, $10
    ld [de], a
    jp Jump_00d_435e


    ret


    call Call_00d_439a
    jr nz, jr_00d_5de4

    call $042f
    and $07
    ld h, d
    jr nz, jr_00d_5dc4

    ld l, $86
    ld [hl], $30
    ld l, $84
    ld [hl], $0a
    ld a, $02
    jp $2772


jr_00d_5dc4:
    ld l, $86
    ld [hl], $08
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $0a
    call Call_00d_43bf
    jr jr_00d_5de4

    call Call_00d_4156
    call Call_00d_439a
    jr nz, jr_00d_5de4

    ld l, $84
    ld [hl], $08
    ld l, $86
    ld [hl], $10

jr_00d_5de4:
    jp $275f


    call Call_00d_439a
    jr nz, jr_00d_5de4

    call Call_00d_5e58
    jp Jump_00d_43bf


    call Call_00d_4153
    ld c, $28
    call $1f04
    ret nz

    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $86
    ld [hl], $10
    ld l, $a4
    set 7, [hl]
    jp $1e03


    ld h, d
    ld l, e
    inc [hl]
    ld l, $87
    ld [hl], $78
    ld a, $01
    jp $2772


    ld a, [$d00b]
    ld e, $8b
    ld [de], a
    ld a, [$d00d]
    ld e, $8d
    ld [de], a
    call Call_00d_43a3
    jr z, jr_00d_5e53

    ld a, [$cc46]
    or a
    jr z, jr_00d_5e36

    ld a, [hl]
    sub $03
    jr nc, jr_00d_5e35

    ld a, $01

jr_00d_5e35:
    ld [hl], a

jr_00d_5e36:
    ld a, [hl]
    and $03
    jr nz, jr_00d_5e41

    ld l, $9a
    ld a, [hl]
    xor $07
    ld [hl], a

jr_00d_5e41:
    ld hl, $ccef
    set 5, [hl]
    ld a, [$cc00]
    rrca
    jr nc, jr_00d_5de4

    ld hl, $cc7c
    set 5, [hl]
    jr jr_00d_5de4

jr_00d_5e53:
    call Call_00d_5e72
    jr jr_00d_5e58

Call_00d_5e58:
jr_00d_5e58:
    ld bc, $fe00
    call $2358
    ld l, $84
    ld [hl], $0b
    ld l, $90
    ld [hl], $28
    xor a
    call $2772
    ld a, $8f
    call $0c74
    jp $1dfa


Call_00d_5e72:
    ld a, [$d009]
    bit 7, a
    jp nz, Jump_00d_43cf

    xor $10
    ld e, $89
    ld [de], a
    ret


    jr z, jr_00d_5e88

    sub $03
    ret c

    jp z, $27ce

jr_00d_5e88:
    call Call_00d_4426
    jr nc, jr_00d_5e9e

    rst $00
    xor c
    ld e, [hl]
    or b
    ld e, [hl]
    call c, $dc5e
    ld e, [hl]
    call c, $dc5e
    ld e, [hl]
    call c, $dc5e
    ld e, [hl]

jr_00d_5e9e:
    dec b
    ld a, b
    rst $00
    db $dd
    ld e, [hl]
    ld a, l
    ld e, a
    ld a, l
    ld e, a
    ld a, l
    ld e, a
    ld a, b
    or a
    jp nz, Jump_00d_4364

    inc a
    ld [de], a
    ld b, $04
    call $20b5
    ret nz

    ld b, $45
    call Call_00d_436d
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    call $21fd
    ld c, h
    call Call_00d_436d
    call Call_00d_5fc7
    call Call_00d_436d
    inc [hl]
    call Call_00d_5fc7
    call Call_00d_436d
    inc [hl]
    inc [hl]
    call Call_00d_5fc7
    jp $2e28


    ret


    ld a, [de]
    sub $08
    rst $00
    rst $28
    ld e, [hl]
    db $fd
    ld e, [hl]
    dec bc
    ld e, a
    dec [hl]
    ld e, a
    ld c, e
    ld e, a
    ld d, d
    ld e, a
    ld l, b
    ld e, a
    ld h, d
    ld l, e
    inc [hl]
    ld e, $8b
    ld l, $b1
    ld a, [de]
    ld [hl+], a
    ld e, $8d
    ld a, [de]
    ld [hl], a
    ret


    ld c, $28
    call $1f60
    ret nc

    ld e, $84
    ld a, $0a
    ld [de], a
    jp $1e27


    ld e, $a1
    ld a, [de]
    dec a
    jp nz, $275f

    call Call_00d_4000
    ld l, $a4
    set 7, [hl]
    ld l, $b3
    ld [hl], $00
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld a, $06
    call $2b3d
    call Call_00d_43bf
    add $02
    and $1c
    rrca
    rrca
    inc a
    jp $2772


    call Call_00d_5fcf
    ld e, $b3
    ld a, [de]
    add $02
    cp $20
    jr nc, jr_00d_5f43

    ld [de], a
    ret


jr_00d_5f43:
    call Call_00d_4000
    ld l, $86
    ld [hl], $08
    ret


    call Call_00d_439a
    ret nz

    ld l, e
    inc [hl]
    ret


    call Call_00d_5fcf
    ld h, d
    ld l, $b3
    dec [hl]
    ret nz

    ld l, $86
    ld [hl], $1e
    ld l, $84
    inc [hl]
    ld l, $a4
    res 7, [hl]
    jp $1e39


    call Call_00d_439a
    ret nz

    ld l, e
    ld [hl], $09
    ld l, $b1
    ld e, $8b
    ld a, [hl+]
    ld [de], a
    ld e, $8d
    ld a, [hl]
    ld [de], a
    xor a
    jp $2772


    ld a, [de]
    sub $08
    rst $00
    add l
    ld e, a
    and b
    ld e, a
    ld a, $09
    ld [de], a
    ld a, $0b
    call $211e
    ld e, $b1
    ld a, [hl+]
    ld [de], a
    inc l
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $b4
    ld l, $81
    ld a, [hl]
    ld [de], a
    ld a, $09
    jp $2772


    ld a, $01
    call $211e
    ld e, $b4
    ld a, [de]
    cp [hl]
    jp nz, $2e28

    ld l, $89
    ld e, l
    ld a, [hl]
    ld [de], a
    ld l, $ab
    ld e, l
    ld a, [hl]
    ld [de], a
    ld l, $84
    ld a, [hl]
    cp $0b
    jr c, jr_00d_5fc2

    ld l, $9a
    ld e, l
    ld a, [hl]
    ld [de], a

jr_00d_5fc2:
    call Call_00d_5fdc
    jr jr_00d_5fcf

Call_00d_5fc7:
    inc [hl]
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], c
    ret


Call_00d_5fcf:
jr_00d_5fcf:
    ld h, d
    ld l, $b1
    ld b, [hl]
    inc l
    ld c, [hl]
    inc l
    ld a, [hl]
    ld e, $89
    jp $20cc


Call_00d_5fdc:
    push hl
    ld e, $82
    ld a, [de]
    sub $02
    rst $00
    jp hl


    ld e, a
    ld a, [c]
    ld e, a
    ld sp, hl
    ld e, a
    pop hl
    call Call_00d_5fff
    ld b, a
    add a
    add b
    ld [de], a
    ret


    pop hl
    call Call_00d_5fff
    add a
    ld [de], a
    ret


    pop hl
    call Call_00d_5fff
    ld [de], a
    ret


Call_00d_5fff:
    ld l, $b3
    ld e, l
    ld a, [hl]
    srl a
    srl a
    ret


    jr z, jr_00d_6012

    sub $03
    ret c

    jr nz, jr_00d_6012

    jp $27ce


jr_00d_6012:
    call Call_00d_4446
    ld e, $84
    ld a, [de]
    rst $00
    cpl
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld h, b
    dec a
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld h, b
    ld d, c
    ld h, b
    ld [hl], e
    ld h, b
    add d
    ld h, b
    call Call_00d_60a9
    ret nz

    ld a, $0f
    call Call_00d_435e
    ld l, $b1
    ld [hl], $08
    ret


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld c, b
    ld h, b
    ld c, b
    ld h, b
    ld c, c
    ld h, b
    ret


    ld e, $b1
    ld a, [de]
    ld b, a
    jp Jump_00d_4501


    ret


    ld c, $38
    call $1f60
    jr nc, jr_00d_606a

    call Call_00d_4000
    call Call_00d_60ca
    ld l, $86
    ld [hl], $5a
    ld l, $b0
    inc [hl]
    ld a, $01
    jp $2772


jr_00d_606a:
    call Call_00d_43bf
    call Call_00d_4156

jr_00d_6070:
    jp $275f


    call Call_00d_439a
    jr nz, jr_00d_6070

    inc [hl]
    ld l, e
    inc [hl]
    call Call_00d_60ca
    ld l, $b0
    inc [hl]
    ret


    ld e, $86
    ld a, [de]
    or a
    ret nz

    ld c, $38
    call $1f60
    ld h, d
    ld l, $84
    jr nc, jr_00d_609d

    dec [hl]
    call Call_00d_60ca
    ld l, $86
    ld [hl], $5a
    ld l, $b0
    dec [hl]
    ret


jr_00d_609d:
    ld [hl], $08
    call Call_00d_60ca
    ld l, $b0
    xor a
    ld [hl], a
    jp $2772


Call_00d_60a9:
    ld b, $04
    call $20b5
    ret nz

    ld b, $2a
    call Call_00d_437c
    ld c, h
    ld e, $01

jr_00d_60b7:
    call $3ea7
    ld [hl], b
    inc l
    ld [hl], e
    ld l, $d6
    ld a, $c0
    ld [hl+], a
    ld [hl], c
    inc e
    ld a, e
    cp $04
    jr nz, jr_00d_60b7

    ret


Call_00d_60ca:
    ld a, [hl]
    ld l, $b1
    ld [hl], a
    ret


    call Call_00d_4051
    jr z, jr_00d_60df

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_404a

    ret


jr_00d_60df:
    ld e, $84
    ld a, [de]
    rst $00
    push af
    ld h, b
    ld a, [$fa60]
    ld h, b
    ld a, [$fa60]
    ld h, b
    bit 0, h
    ld a, [$fa60]
    ld h, b
    ei
    ld h, b
    ld a, $0f
    jp Jump_00d_435e


    ret


    call Call_00d_43bf
    call Call_00d_4156
    jp $275f


    call Call_00d_4051
    jr z, jr_00d_6114

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_404a

    ret


jr_00d_6114:
    ld e, $84
    ld a, [de]
    rst $00
    ld a, [hl+]
    ld h, c
    ld c, b
    ld h, c
    ld c, b
    ld h, c
    inc a
    ld h, c
    ld c, b
    ld h, c
    bit 0, h
    ld c, b
    ld h, c
    ld c, b
    ld h, c
    ld c, c
    ld h, c
    ld e, $b0
    ld a, [$d008]
    add $02
    and $03
    ld [de], a
    call $2772
    ld a, $28
    jp Jump_00d_435e


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld b, a
    ld h, c
    ld b, a
    ld h, c
    rst $38
    ld b, h
    ret


    ret


    ld a, [$cc47]
    inc a
    ret z

    add $0f
    and $1f
    ld e, $89
    ld [de], a
    call Call_00d_4156
    ld h, d
    ld l, $b0
    ld a, [$d008]
    add $02
    and $03
    cp [hl]
    jr z, jr_00d_6169

    ld [hl], a
    call $2772

jr_00d_6169:
    jp $275f


    call Call_00d_6308
    jr z, jr_00d_61bf

    sub $03
    ret c

    jr z, jr_00d_618e

    dec a
    jr nz, jr_00d_61b6

    ld e, $82
    ld a, [de]
    dec a
    jr nz, jr_00d_61bf

    ld e, $ab
    ld l, e
    ld a, [de]
    ld b, a
    ld e, $b0
    ld a, [de]
    ld h, a
    ld [hl], b
    inc e
    ld a, [de]
    ld h, a
    ld [hl], b
    ret


jr_00d_618e:
    ld e, $82
    ld a, [de]
    dec a
    jp nz, Jump_00d_62d8

    ld e, $b0
    ld a, [de]
    ld h, a
    call Call_00d_447d
    inc e
    ld a, [de]
    ld h, a
    call Call_00d_447d
    ld a, [$cc4c]
    cp $f4
    jr nz, jr_00d_61b3

    ld a, [$cc49]
    or a
    jr nz, jr_00d_61b3

    inc a
    ld [$cfc0], a

jr_00d_61b3:
    jp $27ce


jr_00d_61b6:
    ld e, $82
    ld a, [de]
    dec a
    jr nz, jr_00d_61bf

    jp Jump_00d_404a


jr_00d_61bf:
    call Call_00d_4426
    jr nc, jr_00d_61d5

    rst $00
    sbc $61
    pop af
    ld h, c
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d

jr_00d_61d5:
    dec b
    ld a, b
    rst $00
    inc hl
    ld h, d
    ld l, c
    ld h, d
    ld l, c
    ld h, d
    ld a, b
    or a
    jr nz, jr_00d_61e6

    inc a
    ld [de], a
    jr jr_00d_61f1

jr_00d_61e6:
    call Call_00d_435e
    ld a, b
    dec a
    ret z

    add $07
    jp $2772


jr_00d_61f1:
    ld b, $03
    call $20b5
    jp nz, $1e27

    ld b, $4f
    call Call_00d_436d
    ld c, h
    push hl
    call Call_00d_4373
    inc [hl]
    call Call_00d_62de
    ld c, h
    call Call_00d_4373
    inc [hl]
    inc [hl]
    call Call_00d_62de
    ld b, h
    pop hl
    ld l, $b0
    ld [hl], c
    inc l
    ld [hl], b
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    call $21fd
    jp $2e28


    ret


    ld a, [de]
    sub $08
    rst $00
    dec hl
    ld h, d
    ld b, b
    ld h, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $08
    ld l, $90
    ld [hl], $28
    ld l, $b3
    ld [hl], $02
    call Call_00d_43cf
    jp Jump_00d_62e7


    call Call_00d_439a
    jr nz, jr_00d_6260

    ld [hl], $08
    ld l, $b3
    ld e, $89
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    call Call_00d_62e7
    call $042f
    and $0f
    jr nz, jr_00d_6260

    ld e, $b3
    ld a, [de]
    cpl
    inc a
    ld [de], a

jr_00d_6260:
    call Call_00d_42de
    call nz, Call_00d_62e7
    jp $1fdb


    ld e, $84
    ld a, [de]
    sub $08
    rst $00
    ld [hl], e
    ld h, d
    adc d
    ld h, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $97
    ld h, [hl]
    ld l, $8b
    ld e, $b1
    ld a, [hl+]
    ld [de], a
    inc e
    inc l
    ld a, [hl]
    ld [de], a
    jp Jump_00d_62f9


    ld a, $00
    call $211e
    ld a, [hl]
    or a
    jr z, jr_00d_62d8

    ld l, $8b
    ld e, $b1
    ld a, [de]
    ld b, a
    ld a, [hl+]
    sub b
    add $08
    swap a
    ld b, a
    inc e
    inc l
    ld a, [de]
    ld c, a
    ld a, [hl]
    sub c
    add $08
    or b
    ld b, a
    ld a, [hl-]
    ld [de], a
    dec e
    dec l
    ld a, [hl]
    ld [de], a
    ld e, $b0
    ld a, [de]
    add $b3
    ld e, a
    ld a, b
    ld [de], a
    ld h, d
    ld l, $8b
    ld e, $b0
    ld a, [de]
    inc a
    and $07
    ld [de], a
    add $b3
    ld e, a
    ld a, [de]
    ld b, a
    and $f0
    swap a
    sub $08
    add [hl]
    ld [hl+], a
    inc l
    ld a, b
    and $0f
    sub $08
    add [hl]
    ld [hl], a
    ret


Jump_00d_62d8:
jr_00d_62d8:
    call $249f
    jp $2e28


Call_00d_62de:
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], c
    jp $21fd


Call_00d_62e7:
Jump_00d_62e7:
    ld e, $89
    ld a, [de]
    add $02
    and $1c
    rrca
    rrca
    ld h, d
    ld l, $b2
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Jump_00d_62f9:
    ld h, d
    ld l, $b3
    ld b, $02
    ld a, $88

jr_00d_6300:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_00d_6300

    ret


Call_00d_6308:
    ld b, a
    ld e, $82
    ld a, [de]
    dec a
    jr z, jr_00d_631c

    ld a, $3f
    call $211e
    ld a, [hl]
    and $07
    jr nz, jr_00d_631c

    ld a, b
    or a
    ret


jr_00d_631c:
    ld a, b
    jp Jump_00d_4043


    dec a
    ret z

    dec a
    ret z

    ld e, $84
    ld a, [de]
    rst $00
    inc a
    ld h, e
    ld c, b
    ld h, e
    adc c
    ld h, e
    adc c
    ld h, e
    adc c
    ld h, e
    adc c
    ld h, e
    adc c
    ld h, e
    adc c
    ld h, e
    adc d
    ld h, e
    sbc c
    ld h, e
    ld h, d
    ld l, e
    inc [hl]
    ld e, $82
    ld a, [de]
    bit 7, a
    ret z

    ld [hl], $08
    ret


    xor a
    ldh [$8d], a
    ld e, $8b
    ld a, [de]
    ld c, a
    ld hl, $cf00
    ld b, $b0

jr_00d_6354:
    ld a, [hl+]
    cp c
    jr nz, jr_00d_6383

    push bc
    push hl
    ld c, l
    dec c
    ld b, $50
    call Call_00d_436d
    jr nz, jr_00d_6386

    ld e, l
    ld a, [de]
    set 7, a
    ld [hl+], a
    ldh a, [$8d]
    inc a
    and $03
    ldh [$8d], a
    ld [hl], a
    ld a, c
    and $f0
    add $06
    ld l, $8b
    ld [hl+], a
    ld a, c
    and $0f
    swap a
    add $08
    inc l
    ld [hl], a
    pop hl
    pop bc

jr_00d_6383:
    dec b
    jr nz, jr_00d_6354

jr_00d_6386:
    jp $2e28


    ret


    ld a, $09
    ld [de], a
    ld e, $83
    ld a, [de]
    ld hl, $63b6
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    call $63ba
    ld c, $24
    call $1f60
    ret c

    call Call_00d_439a
    ret nz

    ld b, $31
    call Call_00d_437c
    call $042f
    and $07
    add $c0
    ld e, $86
    ld [de], a
    ret


    ld c, [hl]
    ld a, [hl]
    xor [hl]
    sbc $1e
    add d
    ld a, [de]
    cp $81
    ret nz

    ld a, [$cc30]
    or a
    ret nz

    jp $2e28


    call Call_00d_653e
    or a
    jr z, jr_00d_6402

    sub $03
    ret c

    jr z, jr_00d_63ed

    dec a
    jp nz, Jump_00d_404a

    ld e, $82
    ld a, [de]
    cp $02
    ret nz

    ld e, $aa
    ld a, [de]
    cp $80
    ret z

    ld h, d
    ld l, $84
    ld [hl], $0a
    ld l, $86
    ld [hl], $01
    ret


jr_00d_63ed:
    ld e, $82
    ld a, [de]
    dec a
    jr nz, jr_00d_63ff

    ld e, $97
    ld a, [de]
    or a
    jr z, jr_00d_63ff

    ld a, $30
    call $211e
    dec [hl]

jr_00d_63ff:
    jp $27ce


jr_00d_6402:
    call Call_00d_4426
    jr nc, jr_00d_6418

    rst $00
    ld hl, $2b64
    ld h, h
    ld l, c
    ld h, h
    ld e, b
    ld h, h
    ld l, c
    ld h, h
    ld b, h
    ld h, h
    ld l, c
    ld h, h
    ld l, c
    ld h, h

jr_00d_6418:
    dec b
    ld a, b
    rst $00
    ld l, d
    ld h, h
    xor [hl]
    ld h, h
    db $dd
    ld h, h
    ld a, b
    or a
    ld a, $14
    jp nz, Jump_00d_4364

    ld a, $01
    ld [de], a
    call Call_00d_43a3
    ret nz

    ld c, $20
    call $1f60
    ret nc

    ld e, $87
    ld a, $5a
    ld [de], a
    ld b, $51
    call Call_00d_4373
    ret nz

    inc [hl]
    jp $21fd


    call Call_00d_449a
    ret c

    ld e, $97
    ld a, [de]
    or a
    jr z, jr_00d_6452

    ld h, a
    ld l, $b0
    dec [hl]

jr_00d_6452:
    call $249f
    jp $2e28


    inc e
    ld a, [de]
    rst $00
    dec b
    ld b, b
    ld h, e
    ld h, h
    ld h, e
    ld h, h
    ld h, h
    ld h, h
    ret


    ld b, $0a
    jp Jump_00d_4501


    ret


    ld a, [de]
    sub $08
    rst $00
    ld [hl], h
    ld h, h
    adc b
    ld h, h
    and d
    ld h, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld c, $08
    call Call_00d_4465
    call $1dfa
    ld a, $59
    jp $0c74


    ld c, $0e
    call $1f04
    ret nz

    ld l, $94
    ld [hl+], a
    ld [hl], a
    ld l, $84
    inc [hl]
    call $1e03
    ld a, $52
    call $0c74
    call Call_00d_6522
    jr jr_00d_64ab

jr_00d_64a2:
    call Call_00d_439a
    call z, Call_00d_6522
    call Call_00d_4156

jr_00d_64ab:
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    cp b
    ld h, h
    push bc
    ld h, h
    and d
    ld h, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $1e
    call Call_00d_43b4
    jp $1e03


    call Call_00d_439a
    jr nz, jr_00d_64cf

    inc [hl]
    ld l, e
    inc [hl]
    jr jr_00d_64a2

jr_00d_64cf:
    ld a, [hl]
    cp $16
    jr nz, jr_00d_64d8

    ld l, $a4
    set 7, [hl]

jr_00d_64d8:
    call Call_00d_4153
    jr jr_00d_64ab

    ld a, [de]
    sub $08
    rst $00
    rst $20
    ld h, h
    ld bc, $a265
    ld h, h
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
    jp $1e03


    ld c, $0e
    call $232b
    jr c, jr_00d_651b

    ld a, $52
    call z, $0c74
    ld e, $95
    ld a, [de]
    or a
    jr nz, jr_00d_6518

    ld h, d
    ld l, $a4
    set 7, [hl]

jr_00d_6518:
    jp Jump_00d_4156


jr_00d_651b:
    call Call_00d_4000
    ld l, $90
    ld [hl], $14

Call_00d_6522:
    ld bc, $071c
    call $434f
    ld e, $89
    ld a, c
    ld [de], a
    ld a, b
    ld hl, $6536
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    rrca
    ld e, $1e
    inc a
    inc a
    inc a
    ld e, d
    ld e, d

Call_00d_653e:
    ld b, a
    ld e, $84
    ld a, [de]
    cp $0a
    ld a, b
    ret c

    ld h, d
    ld l, $bf
    bit 1, [hl]
    jr z, jr_00d_655e

    ld l, $86
    ld a, [hl]
    cp $3b
    jr nz, jr_00d_655e

    ld l, $97
    ld a, [hl]
    or a
    jr z, jr_00d_655e

    ld h, a
    ld l, $b0
    dec [hl]

jr_00d_655e:
    ld a, b
    jp Jump_00d_4051


    jr z, jr_00d_656a

    sub $03
    ret c

    jp Jump_00d_661c


jr_00d_656a:
    ld e, $84
    ld a, [de]
    rst $00
    add [hl]
    ld h, l
    sub l
    ld h, l
    ld [c], a
    ld h, l
    ld [c], a
    ld h, l
    ld [c], a
    ld h, l
    ld [c], a
    ld h, l
    ld [c], a
    ld h, l
    ld [c], a
    ld h, l
    db $e3
    ld h, l
    ldh a, [$65]
    ld [$1466], sp
    ld h, [hl]
    ld e, $82
    ld a, [de]
    rlca
    ld a, $46
    jp c, Jump_00d_4364

    ld e, $84
    ld a, $01
    ld [de], a
    ret


    inc e
    ld a, [de]
    rst $00
    sbc h
    ld h, l
    cp b
    ld h, l
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $78
    ld e, $82
    ld a, [de]
    ld hl, $663d
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $83
    ld a, [hl+]
    ld [de], a

Call_00d_65b0:
    ld e, $b0
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    call Call_00d_439a
    ret nz

    ld [hl], $3c
    ld l, $b0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    push hl
    call Call_00d_65b0
    ld b, $52
    call Call_00d_4373
    jr nz, jr_00d_65db

    ld l, $82
    ld e, $83
    ld a, [de]
    ld [hl], a
    ld l, $8b
    call $2077

jr_00d_65db:
    pop hl
    ld a, [hl]
    or a
    ret nz

    jp Jump_00d_6621


    ret


    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call Call_00d_6627
    jp $1e03


    ld h, d
    ld l, $8e
    ld a, [hl]
    sub $80
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    cp $fd
    jr nc, jr_00d_6605

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $0f

jr_00d_6605:
    jp $275f


    call Call_00d_439a
    jr nz, jr_00d_6605

    ld l, e
    inc [hl]
    call Call_00d_43bf
    jr jr_00d_6605

    call $1fdb
    call $14b5
    jr nc, jr_00d_6605

Jump_00d_661c:
    ld b, $06
    call $24af

Jump_00d_6621:
jr_00d_6621:
    call $249f
    jp $2e28


Call_00d_6627:
    call $2054
    ld c, a
    ld e, $82
    ld a, [de]
    and $0f
    ld hl, $6638
    rst $10
    ld a, [hl]
    jp $3a52


    and b
    di
    db $f4
    ld c, h
    and h
    ld b, l
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld e, h
    ld h, [hl]
    ld a, l
    ld h, [hl]
    add d
    inc [hl]
    ld h, [hl]
    ld b, h
    ld d, [hl]
    ld d, h
    ld b, [hl]
    ld h, h
    ld [hl], $35
    ld h, l
    ld b, l
    ld d, l
    nop
    add d
    add hl, de
    ld e, c
    ld a, h
    ld a, c
    db $76
    ld [hl], e
    sub e
    nop
    add b
    ld d, a
    ld b, [hl]
    ld d, h
    ld h, [hl]
    scf
    ld [hl], a
    ld c, b
    ld l, b
    ld e, d
    ld e, e
    daa
    add a
    ld b, l
    ld l, c
    ld h, l
    ld c, c
    ld d, e
    ld [hl], $78
    jr c, jr_00d_66e8

    ld b, h
    ld l, d
    ld h, h
    ld c, d
    ld d, l
    ld e, c
    ld b, a
    ld h, a
    ld d, [hl]
    ld e, b
    nop
    add b
    ld [hl], $76
    jr c, jr_00d_66fa

    ld b, h
    ld h, h
    ld c, d
    ld l, d
    ld h, $88
    ld [hl], l
    add hl, sp
    dec [hl]
    ld a, c
    ld b, e
    ld l, e
    ld h, e
    ld c, e
    scf
    add a
    ld [hl], a
    daa
    ld d, e
    inc [hl]
    ld a, d
    ld [hl], h
    ld a, [hl-]
    jr z, jr_00d_6621

    ld e, e
    nop
    ld e, $84
    ld a, [de]
    rst $00
    xor l
    ld h, [hl]
    add $66
    inc c
    ld h, a
    jr nz, @+$69

    ld b, a
    ld h, a
    ld h, d
    ld h, a
    ld a, [$cc4e]
    cp $02
    jp nz, $2e28

    ld h, d
    ld l, e
    inc [hl]
    ld l, $82
    ld a, [hl]
    ld l, $9b
    ld [hl+], a
    ld [hl], a
    ld l, $8f
    ld [hl], $f8
    jp $1dfa


    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $03
    ld l, $90
    ld [hl], $50
    call $042f
    and $06
    ld c, a
    ld b, $00
    ld e, $8b
    ld a, [de]
    cp $40
    jr c, jr_00d_66e1

    inc b

jr_00d_66e1:
    ld e, $8d
    ld a, [de]
    cp $50
    jr c, jr_00d_66ea

jr_00d_66e8:
    set 1, b

jr_00d_66ea:
    ld a, b
    ld hl, $6708
    rst $10
    ld a, [hl]
    add c
    and $1f
    ld e, $89
    ld [de], a
    ld e, $89
    ld a, [de]
    ld b, a

jr_00d_66fa:
    and $0f
    ret z

    ld a, b
    cp $10
    ld a, $01
    jr c, jr_00d_6705

    dec a

jr_00d_6705:
    jp $2772


    ld [$1202], sp
    jr @-$31

    ld l, h
    ld h, a
    jr nz, jr_00d_6716

    call Call_00d_439a
    jr nz, jr_00d_671d

jr_00d_6716:
    call Call_00d_4000
    ld l, $86
    ld [hl], $0c

jr_00d_671d:
    jp $275f


    call Call_00d_676c
    jr nz, jr_00d_6736

    call Call_00d_439a
    jr z, jr_00d_6736

    ld a, [hl]
    rrca
    jr nc, jr_00d_671d

    ld l, $90
    ld a, [hl]
    sub $05
    ld [hl], a
    jr jr_00d_671d

jr_00d_6736:
    ld e, $84
    ld a, $04
    ld [de], a
    call $042f
    and $07
    add $18
    ld e, $86
    ld [de], a
    jr jr_00d_671d

    call Call_00d_676c
    jr nz, jr_00d_6751

    call Call_00d_439a
    jr nz, jr_00d_671d

jr_00d_6751:
    call $042f
    and $7f
    add $20
    ld e, $86
    ld [de], a
    ld e, $84
    ld a, $05
    ld [de], a
    jr jr_00d_671d

    call Call_00d_439a
    jr nz, jr_00d_671d

    ld l, e
    ld [hl], $01
    jr jr_00d_671d

Call_00d_676c:
    ld a, $02
    call Call_00d_420b
    ret nz

    call $1fdb
    xor a
    ret


    jr z, jr_00d_677f

    sub $03
    ret c

    jp z, Jump_00d_6817

jr_00d_677f:
    ld e, $84
    ld a, [de]
    rst $00
    sub l
    ld h, a
    db $fd
    ld h, a
    or a
    ld h, a
    db $e3
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
    ld e, $82
    ld a, [de]
    ld hl, $67af
    rst JumpTable
    ld e, $a5
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    call $22f6
    call Call_00d_6854
    call Call_00d_4364
    call Call_00d_6839
    jr jr_00d_6814

    ld a, $c4
    ld a, $20
    ld c, a
    db $10
    ld c, a
    ret nz

    inc e
    ld a, [de]
    rst $00
    jp nz, $d367

    ld h, a
    call nc, $de67
    ld h, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    xor a
    ld [$cc76], a
    call Call_00d_682c
    jp $1e1e


    ret


    ld h, d
    ld l, $80
    res 1, [hl]
    ld l, $8f
    bit 7, [hl]
    ret nz

    call $2297
    jr jr_00d_681a

    inc e
    ld a, [de]
    rst $00
    xor $67
    db $f4
    ld h, a
    db $f4
    ld h, a
    push af
    ld h, a
    call Call_00d_682c
    jp Jump_00d_4005


    ret


    ld c, $20
    call $1f04
    ret nz

    jr jr_00d_681a

    ret


    ld a, $01
    call $211e
    ld e, $b0
    ld a, [de]
    cp [hl]
    jp nz, $2e28

    ld l, $83
    ld a, [hl]
    rlca
    call c, $2b75
    call Call_00d_6839

jr_00d_6814:
    jp $2297


Jump_00d_6817:
    call Call_00d_682c

jr_00d_681a:
    ld e, $82
    ld a, [de]
    ld hl, $6828
    rst $10
    ld b, [hl]
    call $24af
    jp $2e28


    nop
    nop
    ld b, $06

Call_00d_682c:
    ld a, $1a
    call $211e
    set 7, [hl]
    ld l, $98
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00d_6839:
    ld a, $0b
    call $211e
    call $222f
    ld l, $83
    ld a, [hl]
    and $03
    ld hl, $6850
    rst $10
    ld e, $8f
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    nop
    db $fc
    ld hl, sp-$0c

Call_00d_6854:
    ld a, $01
    call $211e
    ld e, $b0
    ld a, [hl]
    ld [de], a
    cp $27
    ret nz

    ld e, $a5
    ld a, $4f
    ld [de], a
    ret


    ld e, $84
    ld a, [de]
    or a
    jr nz, jr_00d_6875

    ld a, $01
    ld [de], a
    call $1432
    ld e, $b0
    ld [de], a

jr_00d_6875:
    call $1432
    ld h, d
    ld l, $b0
    cp [hl]
    ret z

    ld e, $82
    ld a, [de]
    call $16d2
    jp z, $2e28

    call $3ea7
    ret nz

    ld [hl], $01
    inc l
    ld e, $82
    ld a, [de]
    ld [hl], a
    call $21fd
    call $30e3
    jp $2e28


    ld e, $84
    ld a, [de]
    or a
    jr nz, @+$6f

    ld a, $01
    ld [de], a
    ld e, $82
    ld a, [de]
    ld b, a
    add a
    add b
    ld hl, $68fb
    rst $10
    ld a, [hl+]
    ldh [$8b], a
    ld a, [hl+]
    ld b, a
    ld a, [$cc4e]
    cp b
    jp nz, $2e28

    ld a, [hl]
    cpl
    ld e, $88
    ld [de], a
    ld a, [$cc69]
    and [hl]
    jp z, $2e28

    xor a
    call Call_00d_68d0
    ld a, $01
    call Call_00d_68d0
    ld a, $02

Call_00d_68d0:
    ld hl, $68f5
    rst JumpTable
    ld e, $8b
    ld a, [de]
    add [hl]
    inc hl
    ld b, a
    ld e, $8d
    ld a, [de]
    add [hl]
    ld c, a
    call $3ea7
    ld [hl], $10
    inc l
    ldh a, [$8b]
    ld [hl], a
    ld l, $cb
    ld [hl], b
    ld l, $cd
    ld [hl], c
    ld l, $d8
    ld [hl], $80
    inc l
    ld [hl], d
    ret


    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ld [$0300], sp
    add b
    inc b
    ld bc, $0140
    nop
    jr nz, jr_00d_6907

    ld [bc], a
    db $10

jr_00d_6907:
    inc bc
    ld bc, $0308
    ld bc, $1e04
    add e
    ld a, [de]
    or a
    ret z

    ld e, $88
    ld a, [de]
    ld hl, $cc69
    and [hl]
    ld [hl], a
    jp $2e28


    jr z, jr_00d_6935

    sub $03
    ret c

    ld e, $aa
    ld a, [de]
    cp $80
    jr z, jr_00d_6935

    res 7, a
    sub $02
    cp $02
    call c, Call_00d_6980
    call Call_00d_43ab

jr_00d_6935:
    ld e, $84
    ld a, [de]
    rst $00
    ccf
    ld l, c
    ld d, [hl]
    ld l, c
    ld e, [hl]
    ld l, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $46
    ld l, $86
    ld [hl], $78
    ld l, $be
    ld [hl], $08
    ld a, $98
    call $0c74
    jp $1e27


    call Call_00d_439a
    jp nz, $275f

    ld l, e
    inc [hl]
    ld a, $29
    call $211e
    ld a, [hl]
    or a
    jr z, jr_00d_697a

    ld l, $84
    ld a, [hl]
    cp $0a
    jr z, jr_00d_697a

    call $1fdb
    call Call_00d_42de
    ret z

    ld a, $50
    jp $0c74


jr_00d_697a:
    call $24ad
    jp $2e28


Call_00d_6980:
    ld a, [$d008]
    swap a
    ld b, a
    ld e, $89
    ld a, [de]
    add b
    ld hl, $6997
    rst $10
    ld e, $89
    ld a, [hl]
    ld [de], a
    ld a, $50
    jp $0c74


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
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0628
    sub $03
    ret c

    jp z, $27ca

    ld a, $01
    call $211e
    ld a, [hl]
    cp $01
    jp nz, $2e28

    ld e, $86
    ld a, [de]
    inc a
    and $1f
    ld a, $78
    call z, $0c74
    ld e, $84
    ld a, [de]
    rst $00
    rrca
    ld l, d
    jr z, jr_00d_6a77

    dec [hl]
    ld l, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    ld l, $87
    ld [hl], $50
    call $042f
    ld e, $86
    ld [de], a
    ld a, $a8
    call $0c74
    jp $1e27


    call Call_00d_6a50
    call Call_00d_43a3
    jr nz, jr_00d_6a41

    ld l, e
    inc [hl]
    call Call_00d_43bf
    call Call_00d_6a44
    jp nc, $2e28

    call Call_00d_6a50
    call $1fdb

jr_00d_6a41:
    jp $275f


Call_00d_6a44:
    ld e, $8b
    ld a, [de]
    cp $b0
    ret nc

    ld e, $8d
    ld a, [de]
    cp $f0
    ret


Call_00d_6a50:
    call Call_00d_439a
    ld a, [hl]
    and $04
    rrca
    rrca
    add $02
    ld l, $9b
    ld [hl+], a
    ld [hl], a
    ret


    ld e, $82
    ld a, [de]
    or a
    ld e, $b1
    jr z, jr_00d_6aab

    ld a, [de]
    or a
    jr nz, jr_00d_6a7a

    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    call $1e30
    ld a, $d3

jr_00d_6a77:
    call $0c74

jr_00d_6a7a:
    ld bc, $5478
    ld e, $8b
    ld a, [de]
    ldh [$8f], a
    ld e, $8d
    ld a, [de]
    ldh [$8e], a
    sub c
    add $08
    cp $11
    jr nc, jr_00d_6a98

    ldh a, [$8f]
    sub b
    add $08
    cp $11
    jp c, $2e28

jr_00d_6a98:
    ld a, [$cc00]
    and $07
    jr nz, jr_00d_6aa5

    call $1e6f
    call $1f92

jr_00d_6aa5:
    call $1fdb
    jp Jump_00d_441f


jr_00d_6aab:
    ld a, [de]
    or a
    jr nz, jr_00d_6acd

    ld a, [$c4ab]
    or a
    ret nz

    ld h, d
    ld l, e
    inc [hl]
    ld l, $b0
    ld [hl], $28
    call $1a66
    ldh a, [$ad]
    ld d, a
    ld a, $0e
    call $3183
    xor a
    ld [$c4b2], a
    ld [$c4b4], a

jr_00d_6acd:
    call Call_00d_43a3
    ret nz

    dec l
    ld a, [hl]
    cp $10
    inc [hl]
    jr nc, jr_00d_6aeb

    call Call_00d_6af4
    ld e, $b0
    ld a, [de]
    ld e, $87
    ld [de], a
    ld e, $b0
    ld a, [de]
    sub $04
    cp $10
    ret c

    ld [de], a
    ret


jr_00d_6aeb:
    ld a, $06
    call $211e
    inc [hl]
    jp $2e28


Call_00d_6af4:
    call $2e15
    ret nz

    ld [hl], $60
    inc l
    inc [hl]
    ld e, $86
    ld a, [de]
    and $07
    ld b, a
    add a
    add b
    ld bc, $6b18
    call $006d
    ld l, $8b
    ld a, [bc]
    ld [hl+], a
    inc l
    inc bc
    ld a, [bc]
    ld [hl], a
    ld l, $89
    inc bc
    ld a, [bc]
    ld [hl], a
    ret


    ld h, b
    ldh a, [rNR24]
    cp b
    ret nc

    nop
    sub b
    nop
    ld [bc], a
    ld b, b
    ldh a, [rNR21]
    cp b
    ld h, b
    ld e, $b8
    jr nz, jr_00d_6b2f

    sub b
    ldh a, [rNR23]
    ld b, b
    nop

jr_00d_6b2f:
    ld b, $46
    ld l, e
    ld d, e
    ld l, e
    ld h, b
    ld l, e
    ld l, l
    ld l, e
    ld a, d
    ld l, e
    add a
    ld l, e
    sub b
    ld l, e
    sbc c
    ld l, e
    and d
    ld l, e
    xor e
    ld l, e
    or h
    ld l, e
    inc d
    nop
    ld [bc], a
    jr c, jr_00d_6b50

    inc d
    inc b
    jr jr_00d_6b54

    inc d

jr_00d_6b50:
    nop
    ld c, b
    ld l, e
    inc a

jr_00d_6b54:
    nop
    ld [bc], a
    ld c, b
    dec b
    inc d
    inc b
    jr @+$07

    inc d
    nop
    ld d, l
    ld l, e
    jr z, jr_00d_6b62

jr_00d_6b62:
    ld [bc], a
    ld c, b
    dec b
    inc d
    inc b
    jr jr_00d_6b6e

    inc d
    nop
    ld h, d
    ld l, e
    inc d

jr_00d_6b6e:
    nop
    ld [bc], a
    ld c, b
    dec b
    inc d
    inc b
    jr jr_00d_6b7b

    inc d
    nop
    ld l, a
    ld l, e
    inc d

jr_00d_6b7b:
    nop
    ld [bc], a
    ret c

    dec b
    inc d
    inc b
    cp b
    dec b
    inc d
    nop
    ld a, h
    ld l, e
    ld a, b
    nop
    ld [bc], a
    ld a, b
    inc b
    jr c, jr_00d_6b8e

jr_00d_6b8e:
    adc c
    ld l, e
    ld [hl], e
    nop
    ld [bc], a
    ld a, b
    inc b
    jr c, jr_00d_6b97

jr_00d_6b97:
    sub d
    ld l, e
    ld l, [hl]
    nop
    ld [bc], a
    ld a, b
    inc b
    jr c, jr_00d_6ba0

jr_00d_6ba0:
    sbc e
    ld l, e
    ld l, c
    nop
    ld [bc], a
    ld a, b
    inc b
    jr c, jr_00d_6ba9

jr_00d_6ba9:
    and h
    ld l, e
    ld h, h
    nop
    ld [bc], a
    ld a, b
    inc b
    jr c, jr_00d_6bb2

jr_00d_6bb2:
    xor l
    ld l, e
    ld e, a
    nop
    ld [bc], a
    ld a, b
    inc b
    jr c, jr_00d_6bbb

jr_00d_6bbb:
    or [hl]
    ld l, e
    jr z, jr_00d_6bca

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_400a

    ret


jr_00d_6bca:
    call Call_00d_6ccd
    call Call_00d_6ce6
    ld e, $84
    ld a, [de]
    rst $00
    ld a, [c]
    ld l, e
    db $fc
    ld l, e
    db $fc
    ld l, e
    db $fc
    ld l, e
    db $fc
    ld l, e
    db $fc
    ld l, e
    db $fc
    ld l, e
    db $fc
    ld l, e
    db $fd
    ld l, e
    ld c, $6c
    jr z, @+$6e

    ld [hl], $6c
    ld b, a
    ld l, h
    ld h, b
    ld l, h
    ld l, [hl]
    ld l, h
    call Call_00d_6d06
    ld a, $14
    call Call_00d_435e
    jr jr_00d_6c54

    ret


    call Call_00d_6d18
    call Call_00d_439a
    jp nz, Jump_00d_4146

    ld l, $84
    inc [hl]
    ld a, $01
    jp $2772


    call $275f
    ld e, $a1
    ld a, [de]
    or a
    ret z

    dec a
    ld a, $05
    jp nz, Jump_00d_6ca9

    ld h, d
    ld l, $83
    ld [hl], $02
    ld l, $9b
    ld a, $02
    ld [hl+], a
    ld [hl], a
    ret


    call Call_00d_6cb7
    ret nz

    ld l, e
    inc [hl]
    call Call_00d_6d06
    ld a, $03
    jp $2772


    call Call_00d_6d18
    call Call_00d_439a
    jp nz, Jump_00d_4146

    ld l, $84
    inc [hl]
    ld a, $04
    jp $2772


    call $275f
    ld e, $a1
    ld a, [de]
    or a
    ret z

    dec a
    ld a, $02
    jr nz, jr_00d_6ca9

jr_00d_6c54:
    ld h, d
    ld l, $83
    ld [hl], $00
    ld l, $9b
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ret


    call Call_00d_6cb7
    ret nz

    ld l, e
    ld [hl], $08
    call Call_00d_6d06
    xor a
    jp $2772


    call Call_00d_43a3
    jr nz, jr_00d_6c82

    ld l, $90
    ld [hl], $14
    ld l, e
    ld e, $83
    ld a, [de]
    or a
    ld [hl], $08
    ret z

    ld [hl], $0b
    ret


jr_00d_6c82:
    call Call_00d_4146
    ret nz

    call $1e52
    xor $10
    ld h, d
    ld l, $89
    sub [hl]
    and $1f
    bit 4, a
    ld a, $08
    jr z, jr_00d_6c99

    ld a, $f8

jr_00d_6c99:
    add [hl]
    and $18
    ld [hl], a
    xor a
    call Call_00d_4204
    ret z

    ld e, $89
    ld a, [de]
    xor $10
    ld [de], a
    ret


Jump_00d_6ca9:
jr_00d_6ca9:
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $1e
    call $2772
    jp Jump_00d_43c6


Call_00d_6cb7:
    call Call_00d_439a
    ret z

    ld a, [hl]
    cp $0f
    ret nz

    call $3ea7
    ret nz

    ld [hl], $31
    ld bc, $0400
    call $2215
    or d
    ret


Call_00d_6ccd:
    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld hl, $6cde
    rst $10
    ld e, $8f
    ld a, [hl]
    ld [de], a
    ret


    cp $fd
    db $fc
    ei
    ld a, [$fcfb]
    db $fd

Call_00d_6ce6:
    ld a, [$cc79]
    or a
    ret z

    call Call_00d_6cf3
    ld b, $46
    jp Jump_00d_4138


Call_00d_6cf3:
    call $1e52
    ld c, a
    ld h, d
    ld l, $83
    ld a, [$cc79]
    add [hl]
    bit 1, a
    ret nz

    ld a, c
    xor $10
    ld c, a
    ret


Call_00d_6d06:
    call $042f
    and $03
    ld hl, $6d14
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    inc a
    ld a, b
    ld a, b
    or h

Call_00d_6d18:
    ld c, $30
    call $1f60
    ret nc

    pop hl
    ld h, d
    ld l, $84
    ld [hl], $0e
    ld l, $87
    ld [hl], $2d
    ld l, $90
    ld [hl], $3c
    call $1e52
    sub $0c
    and $18
    ld e, $89
    ld [de], a
    ret


    ret


    jr z, jr_00d_6d45

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_4033

    ret


jr_00d_6d45:
    ld e, $84
    ld a, [de]
    rst $00
    ld e, e
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld l, l
    ld e, a
    ld l, l
    jp Jump_00d_435e


    ret


    jp $275f


    call Call_00d_4051
    jr z, jr_00d_6d72

    sub $03
    ret c

    jp z, $27ce

    dec a
    jp nz, Jump_00d_404a

    ret


jr_00d_6d72:
    ld e, $84
    ld a, [de]
    rst $00
    add [hl]
    ld l, l
    adc c
    ld l, l
    adc c
    ld l, l
    adc c
    ld l, l
    adc c
    ld l, l
    adc c
    ld l, l
    adc c
    ld l, l
    adc c
    ld l, l
    jp $2e28


    ret


    jr z, jr_00d_6db4

    sub $03
    ret c

    jr nz, jr_00d_6da1

    ld a, $32
    call $211e
    dec [hl]
    ld e, $82
    ld a, [de]
    dec a
    jp nz, $27ca

    jp $27c2


jr_00d_6da1:
    ld e, $82
    ld a, [de]
    cp $02
    jr nz, jr_00d_6db4

    ld e, $aa
    ld a, [de]
    cp $80
    jr nz, jr_00d_6db4

    ld e, $84
    ld a, $0d
    ld [de], a

jr_00d_6db4:
    call Call_00d_4426
    cp $0a
    jr nc, @+$17

    rst $00
    jp c, $f86d

    ld l, l
    ld hl, sp+$6d
    ld hl, sp+$6d
    ld hl, sp+$6d
    db $eb
    ld l, l
    ld hl, sp+$6d
    ld hl, sp+$6d
    ld sp, hl
    ld l, l
    ld [$786e], sp
    rst $00
    inc d
    ld l, [hl]
    ld l, d
    ld l, [hl]
    rst $10
    ld l, [hl]
    ld b, [hl]
    ld l, a
    call Call_00d_4364
    ld l, $82
    ld a, [hl]
    cp $02
    jr nz, jr_00d_6de8

    ld l, $a5
    ld [hl], $31

jr_00d_6de8:
    jp $1dfa


    call Call_00d_449a
    ret c

    ld a, $32
    call $211e
    dec [hl]
    jp $2e28


    ret


    ld bc, $ff00
    call $2358
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    call Call_00d_43cf
    ld c, $0e
    call $1f04
    jp nz, Jump_00d_4156

    ld l, $84
    inc [hl]
    ret


    ld a, [de]
    sub $0a
    rst $00
    ld e, $6e
    dec h
    ld l, [hl]
    ld d, d
    ld l, [hl]
    ld h, d
    ld l, $90
    ld [hl], $28
    jr jr_00d_6e5c

    call $275f
    ld c, $0c
    call $1f04
    jr z, jr_00d_6e35

    call Call_00d_42de
    jp $1fdb


jr_00d_6e35:
    call $042f
    and $07
    ld hl, $6e4a
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ld e, $84
    ld a, $0c
    ld [de], a
    jp $1e27


    ld bc, $0101
    jr nc, @+$32

    jr nc, @+$32

    jr nc, @-$31

    ld e, a
    daa
    call Call_00d_439a
    ret nz

    call $1dfa

jr_00d_6e5c:
    ld l, $84
    ld [hl], $0b
    ld l, $94
    ld a, $80
    ld [hl+], a
    ld [hl], $fe
    jp Jump_00d_43bf


    ld a, [de]
    sub $0a
    rst $00
    db $76
    ld l, [hl]
    adc h
    ld l, [hl]
    sub [hl]
    ld l, [hl]
    cp a
    ld l, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    call $042f
    and $1f
    ld e, $89
    ld [de], a
    ld e, $86
    ld a, $3c
    ld [de], a
    jr jr_00d_6ed4

    call Call_00d_439a
    jr z, jr_00d_6ec4

    call Call_00d_4156
    jr jr_00d_6ed4

    ld h, d
    ld l, $b0
    call Call_00d_4439
    cp c
    jr nz, jr_00d_6eab

    ldh a, [$8f]
    cp b
    jr nz, jr_00d_6eab

    ld l, e
    inc [hl]
    call Call_00d_6f87
    jr jr_00d_6ed4

jr_00d_6eab:
    call $1e6f
    ld e, $89
    ld [de], a
    call Call_00d_4156
    jr z, jr_00d_6eb8

    jr jr_00d_6ed4

jr_00d_6eb8:
    call Call_00d_439a
    jr nz, jr_00d_6ed4

    jr jr_00d_6ec4

    call Call_00d_439a
    jr nz, jr_00d_6ed4

jr_00d_6ec4:
    ld l, $84
    ld [hl], $0c
    ld l, $86
    ld [hl], $08
    ld l, $b0
    ldh a, [$ae]
    ld [hl+], a
    ldh a, [$af]
    ld [hl], a

jr_00d_6ed4:
    jp $275f


    ld a, [de]
    sub $0a
    rst $00
    ld e, $6e
    dec h
    ld l, [hl]
    ld d, d
    ld l, [hl]
    push hl
    ld l, [hl]
    inc sp
    ld l, a
    ld a, [$d00b]
    ld e, $8b
    ld [de], a
    ld a, [$d00d]
    ld e, $8d
    ld [de], a
    call Call_00d_439a
    jr z, jr_00d_6f0f

    ld a, [$cc46]
    or a
    jr z, jr_00d_6f02

    dec [hl]
    jr z, jr_00d_6f0f

    dec [hl]
    jr z, jr_00d_6f0f

jr_00d_6f02:
    ld a, [$cc00]
    rrca
    jr nc, jr_00d_6f43

    ld hl, $cc7c
    set 5, [hl]
    jr jr_00d_6f43

jr_00d_6f0f:
    call Call_00d_6f25
    ld bc, $ff20
    call $2358
    ld l, $84
    inc [hl]
    ld a, $8f
    call $0c74
    call $1dfa
    jr jr_00d_6f43

Call_00d_6f25:
    ld a, [$d009]
    bit 7, a
    jp nz, Jump_00d_43cf

    xor $10
    ld e, $89
    ld [de], a
    ret


    ld c, $0e
    call $1f04
    jp nz, Jump_00d_4156

    ld l, $84
    ld [hl], $0b
    ld l, $a4
    set 7, [hl]

jr_00d_6f43:
    jp $275f


    ld a, [de]
    sub $0a
    rst $00
    ld d, b
    ld l, a
    ld d, a
    ld l, a
    ld [hl], l
    ld l, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $5a
    call Call_00d_43bf
    call $042f
    and $01
    ld hl, $6f73
    rst $10
    ld e, $89
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    jr jr_00d_6f84

    inc b
    db $fc
    call Call_00d_439a
    jr nz, jr_00d_6f7e

    ld l, e
    dec [hl]
    jr jr_00d_6f84

jr_00d_6f7e:
    call Call_00d_42de
    call $1fdb

jr_00d_6f84:
    jp $275f


Call_00d_6f87:
    call $042f
    and $0f
    ld hl, $6f95
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    ld bc, $1401
    inc d
    inc d
    inc d
    inc d
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld e, d
    ld e, d
    ld e, d
    jr z, jr_00d_6fb2

    sub $03
    ret c

    jp z, $27ca

    dec a
    jp nz, Jump_00d_4033

    ret


jr_00d_6fb2:
    call Call_00d_4426
    jr nc, jr_00d_6fc8

    rst $00
    jp nc, $dc6f

    ld l, a
    jr z, @+$72

    jr z, jr_00d_7030

    jr z, jr_00d_7032

    ld hl, $2870
    ld [hl], b
    jr z, jr_00d_7038

jr_00d_6fc8:
    ld a, b
    rst $00
    add hl, hl
    ld [hl], b
    ld h, e
    ld [hl], b
    ld l, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    bit 7, b
    ld a, $46
    jp z, Jump_00d_435e

    ld a, $01
    ld [de], a
    bit 0, b
    ld bc, $0400
    jr z, jr_00d_6fe6

    ld bc, $0604

jr_00d_6fe6:
    push bc
    call $20b5
    pop bc
    ret nz

    ld a, b
    ldh [$8b], a
    ld a, c
    ld bc, $7017
    call $006d

jr_00d_6ff6:
    push bc
    ld b, $47
    call Call_00d_436d
    dec [hl]
    call $21fd
    dec l
    ld a, [hl]
    ld [hl], $00
    ld l, $8b
    add [hl]
    ld [hl], a
    pop bc
    ld l, $89
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $ff8b
    dec [hl]
    jr nz, jr_00d_6ff6

    jp $2e28


    inc b
    inc c
    inc d
    inc e
    nop
    dec b
    dec bc
    db $10
    dec d
    dec de
    call Call_00d_449a
    ret c

    jp $2e28


    ret


    ld a, [de]
    sub $08
    rst $00
    ld sp, $4570

jr_00d_7030:
    ld [hl], b
    ld h, d

jr_00d_7032:
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]

jr_00d_7038:
    ld l, $86
    ld [hl], $04
    inc l
    ld [hl], $3c
    call Call_00d_7089
    jp $1e27


    call Call_00d_43a3
    jr z, jr_00d_705a

    call Call_00d_439a
    jr nz, jr_00d_705a

    ld [hl], $04
    call $1e52
    call $1f92
    call Call_00d_7089

jr_00d_705a:
    call $1fdb
    call Call_00d_7078
    jp $275f


    ld a, [de]
    sub $08
    rst $00
    ld l, c
    ld [hl], b
    ret


    ld a, [de]
    sub $08
    rst $00
    ld [hl], b
    ld [hl], b
    ret


    ld a, [de]
    sub $08
    rst $00
    ld [hl], a
    ld [hl], b
    ret


Call_00d_7078:
    ld e, $8b
    ld a, [de]
    cp $b8
    jr nc, jr_00d_7085

    ld e, $8d
    ld a, [de]
    cp $f8
    ret c

jr_00d_7085:
    pop hl
    jp $2e28


Call_00d_7089:
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


    jr z, jr_00d_70dd

    sub $03
    ret c

    jp z, $2e28

    dec a
    jp nz, Jump_00d_400a

    ld e, $aa
    ld a, [de]
    res 7, a
    sub $0a
    cp $02
    jr nc, jr_00d_70dd

    call Call_00d_73df
    ld h, d
    ld l, $a9
    ld [hl], $40
    ld l, $86
    ld [hl], $0a
    inc l
    inc [hl]
    ld l, $84
    ld a, $0f
    cp [hl]
    jr z, jr_00d_70dd

    ld [hl], a
    ld l, $87
    ld [hl], $00
    ld l, $b0
    ld a, [hl]
    add $05
    call $2772
    ld a, $24
    call $2122
    res 7, [hl]
    ld l, $84
    ld [hl], $03

jr_00d_70dd:
    call Call_00d_7323
    ld a, [$cced]
    cp $02
    jr z, jr_00d_70ee

    ld e, $84
    ld a, [de]
    or a
    jp nz, Jump_00d_7312

jr_00d_70ee:
    ld e, $84
    ld a, [de]
    rst $00
    ld [de], a
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec [hl]
    ld [hl], c
    dec [hl]
    ld [hl], c
    ld [hl], $71
    ld d, c
    ld [hl], c
    ld d, a
    ld [hl], c
    ld h, e
    ld [hl], c
    ld [hl], l
    ld [hl], c
    add l
    ld [hl], c
    sbc a
    ld [hl], c
    cp a
    ld [hl], c
    call $2e15
    ret nz

    ld [hl], $5f
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
    call Call_00d_736d
    ld e, $b0
    ld a, $01
    ld [de], a
    call $2772
    jp $1e03


    ret


    call Call_00d_72d4
    inc a
    jr z, jr_00d_7143

    ld e, $84
    ld a, $0d
    ld [de], a
    jr jr_00d_7160

jr_00d_7143:
    call Call_00d_73b1
    ld a, $09
    jr nc, jr_00d_714c

    ld a, $0b

jr_00d_714c:
    ld e, $84
    ld [de], a
    jr jr_00d_7160

    ld a, $0a
    ld [de], a
    jp Jump_00d_7350


    call Call_00d_7312
    call z, Call_00d_736d
    call $1fdb

jr_00d_7160:
    jp $275f


    ld a, $0c
    ld [de], a
    inc e
    xor a
    ld [de], a
    call Call_00d_737f
    ld e, $83
    ld a, b
    ld [de], a
    ld e, $b1
    inc a
    ld [de], a
    ret


    ld e, $83
    ld a, [de]
    ld e, $85
    rst $00
    db $dd
    ld [hl], c
    and $71
    ld sp, hl
    ld [hl], c
    ld c, b
    ld [hl], d
    ld a, h
    ld [hl], d
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $00
    ld l, $90
    ld [hl], $2d
    call Call_00d_7395
    ret nc

    ld e, $b2
    ld a, [de]
    ld hl, $73d7
    rst $10
    ld e, $89
    ld a, [hl]
    ld [de], a
    ret


    inc e
    ld a, [de]
    rst $00
    and [hl]
    ld [hl], c
    ld d, a
    ld [hl], c
    call Call_00d_7312
    jr z, jr_00d_71b0

    call $1fdb
    jr jr_00d_7160

jr_00d_71b0:
    ld e, $85
    ld a, $01
    ld [de], a
    ld bc, $4050
    call $1e62
    ld e, $89
    ld [de], a
    ret


    call Call_00d_439a
    ret nz

    ld a, $24
    call $2122
    set 7, [hl]
    inc l
    ld [hl], $40
    ld l, $84
    ld [hl], $01
    inc l
    ld [hl], $00
    ld e, $b0
    ld a, [de]
    call $2772
    jp Jump_00d_736d


    call Call_00d_7312
    jp z, Jump_00d_736d

    jp $275f


    ld a, [de]
    rst $00
    db $ec
    ld [hl], c
    ld a, [c]
    ld [hl], c
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $3c
    call Call_00d_439a
    ret nz

    jp Jump_00d_736d


    ld a, [de]
    rst $00
    dec b
    ld [hl], d
    dec d
    ld [hl], d
    rra
    ld [hl], d
    ld sp, $4172
    ld [hl], d
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $90
    ld [hl], $0a
    call Call_00d_73cd
    xor $10
    ld [de], a
    call Call_00d_439a
    jp nz, $1fdb

    ld [hl], $04
    ld l, e
    inc [hl]
    call Call_00d_439a
    ret nz

    ld [hl], $1e
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    call Call_00d_439a
    jr z, jr_00d_723d

    ld a, [hl]
    cp $1a
    jp nc, $1fdb

    ret


jr_00d_723d:
    ld [hl], $1e
    ld l, e
    inc [hl]
    call Call_00d_439a
    ret nz

    jp Jump_00d_736d


    ld a, [de]
    rst $00
    ld d, d
    ld [hl], d
    ld e, b
    ld [hl], d
    ld l, e
    ld [hl], d
    ld [hl], l
    ld [hl], d
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $03
    call Call_00d_7312
    ret nz

    call Call_00d_439a
    ret nz

    ld [hl], $0a
    dec l
    inc [hl]
    ld l, $90
    ld [hl], $28
    call Call_00d_73cd
    call Call_00d_439a
    jp nz, $1fdb

    ld [hl], $28
    ld l, e
    inc [hl]
    call Call_00d_439a
    ret nz

    jp Jump_00d_736d


    ld a, [de]
    rst $00
    add h
    ld [hl], d
    sub a
    ld [hl], d
    or b
    ld [hl], d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $28
    ld l, $a4
    res 7, [hl]
    call Call_00d_43bf
    ld a, $04
    jp $2772


    call Call_00d_7312
    jr z, jr_00d_72a1

    call $1fdb
    jr jr_00d_72d1

jr_00d_72a1:
    ld h, d
    ld l, $85
    inc [hl]
    ld l, $94
    ld a, $c0
    ld [hl+], a
    ld [hl], $fc
    ld l, $90
    ld [hl], $0f
    ld c, $28
    call $1f04
    jr nz, jr_00d_72c2

    ld e, $b0
    ld a, $02
    ld [de], a
    call $2772
    jp Jump_00d_736d


jr_00d_72c2:
    ld e, $95
    ld a, [de]
    or a
    jr nz, jr_00d_72cd

    ld h, d
    ld l, $a4
    set 7, [hl]

jr_00d_72cd:
    rla
    call c, $1fdb

jr_00d_72d1:
    jp $275f


Call_00d_72d4:
    call Call_00d_72dc
    ld e, $b2
    ld a, b
    ld [de], a
    ret


Call_00d_72dc:
    ld b, $ff
    ld e, $8b
    ld a, [de]
    sub $20
    cp $36
    jr nc, jr_00d_7302

    ld e, $8d
    ld a, [de]
    sub $30
    cp $40
    ret c

    ld b, $02
    ld a, [de]
    cp $50
    jr c, jr_00d_72f7

    inc b

jr_00d_72f7:
    ld e, $8b
    ld a, [de]
    cp $39
    ret c

    ld a, b
    add $02
    ld b, a
    ret


jr_00d_7302:
    inc b
    ld a, [de]
    cp $39
    jr c, jr_00d_730a

    ld b, $06

jr_00d_730a:
    ld e, $8d
    ld a, [de]
    cp $50
    ret c

    inc b
    ret


Call_00d_7312:
Jump_00d_7312:
    ld c, $0e
    ld e, $8f
    ld a, [de]
    or a
    jp nz, $1f04

    dec a
    ld [de], a
    ld bc, $ff80
    jp $2358


Call_00d_7323:
    call Call_00d_7340
    ret z

    ld a, [$cc00]
    and $07
    ret nz

    call $1e5a
    add $04
    and $18
    swap a
    rlca
    ld h, d
    ld l, $b0
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00d_7340:
    ld e, $84
    ld a, [de]
    cp $0c
    ret nz

    ld e, $b1
    ld a, [de]
    dec a
    jr z, jr_00d_734e

    xor a
    ret


jr_00d_734e:
    or d
    ret


Jump_00d_7350:
    ld c, $20
    call $1f60
    jp nc, Jump_00d_43bf

    call $042f
    and $01
    ld b, $f8
    jr z, jr_00d_7363

    ld b, $08

jr_00d_7363:
    push bc
    call $1e5a
    pop bc
    ld e, $89
    add b
    ld [de], a
    ret


Call_00d_736d:
Jump_00d_736d:
    ld h, d
    ld l, $84
    ld [hl], $08
    ld l, $a5
    ld [hl], $56
    ld l, $90
    ld [hl], $0f
    ld l, $b1
    ld [hl], $00
    ret


Call_00d_737f:
    call $042f
    ld b, $00
    cp $30
    ret c

    inc b
    cp $90
    ret c

    inc b
    cp $e0
    ret c

    inc b
    cp $ff
    ret c

    inc b
    ret


Call_00d_7395:
    ld bc, $4050
    call $1e62
    ld b, a
    push bc
    call $1e5a
    pop bc
    sub b
    add $02
    cp $05
    ret c

    ld e, $89
    ld a, b
    ld [de], a
    ld e, $85
    ld a, $01
    ld [de], a
    ret


Call_00d_73b1:
    ld b, $09
    call $1fac
    ret nc

    ld c, $1c
    call $1f60
    ret nc

    call $1e5a
    ld b, a
    ld e, $b0
    ld a, [de]
    rrca
    swap a
    sub b
    add $04
    cp $09
    ret


Call_00d_73cd:
    ld e, $b0
    ld a, [de]
    rrca
    swap a
    ld e, $89
    ld [de], a
    ret


    add hl, bc
    rla
    rrca
    ld de, $1f01
    rlca
    add hl, de

Call_00d_73df:
    ld a, $2b
    call $2122
    ld e, $ab
    ld a, [de]
    ld [hl], a
    ret


    jr z, jr_00d_7421

    sub $03
    ret c

    jr nz, jr_00d_7421

    ld h, d
    ld l, $b2
    bit 0, [hl]
    jr nz, jr_00d_7410

    inc [hl]
    ld l, $86
    ld [hl], $1e
    ld a, $69
    call $0c74
    ld a, $32
    call $211e
    dec [hl]
    dec l
    dec [hl]
    jr z, jr_00d_7417

    ld a, $04
    call $2772

jr_00d_7410:
    call Call_00d_439a
    ret nz

    jp $27ca


jr_00d_7417:
    ld l, $a9
    ld [hl], $00
    call $21fd
    jp $2e28


jr_00d_7421:
    ld e, $84
    ld a, [de]
    rst $00
    ccf
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, l
    ld [hl], h
    ld [hl], a
    ld [hl], h
    adc e
    ld [hl], h
    sbc d
    ld [hl], h
    cp h
    ld [hl], h
    ld bc, $011f
    call $434f
    ld e, $89
    ld a, c
    ld [de], a
    ld a, b
    ld hl, $7462
    rst $10
    ld e, $87
    ld a, [hl]
    ld [de], a
    call Call_00d_74ce
    ld h, d
    ld l, $94
    ld a, $80
    ld [hl+], a
    ld [hl], $fe
    ld a, $32
    jp Jump_00d_435e


    inc a
    ld d, b
    ret


    ld c, $0e
    call $1f04
    jr nz, jr_00d_74c5

    ld l, $84
    inc [hl]
    ld l, $94
    ld a, $00
    ld [hl+], a
    ld [hl], $ff
    ret


    call Call_00d_7523
    ld c, $0f
    call $1f04
    jr nz, jr_00d_74c5

    ld l, $84
    inc [hl]
    ld l, $87
    ld a, [hl]
    ld l, $90
    ld [hl], a
    ret


    call Call_00d_7547
    call Call_00d_7523
    call Call_00d_74e1
    call Call_00d_74c5
    jp $275f


    ld c, $10
    call $1f04
    ld l, $95
    ld a, [hl-]
    or a
    jr nz, jr_00d_74af

    ld a, [hl+]
    or a
    jr nz, jr_00d_74af

    ld [hl], $02
    ld l, $90
    ld [hl], $6e

jr_00d_74af:
    ld l, $97
    ld h, [hl]
    call Call_00d_74fe
    jr nc, jr_00d_74c8

    ld e, $8f
    ld a, [de]
    or a
    ret nz

    ld a, $32
    call $211e
    dec [hl]
    jp $2e28


Call_00d_74c5:
jr_00d_74c5:
    call Call_00d_42de

jr_00d_74c8:
    call Call_00d_74ce
    jp $1fdb


Call_00d_74ce:
    ld h, d
    ld l, $b0
    ld e, $89
    ld a, [de]
    add $04
    and $18
    swap a
    rlca
    cp [hl]
    ret z

    ld [hl], a
    jp $2772


Call_00d_74e1:
    ld e, $99
    ld a, [de]
    or a
    ret z

    ld h, d
    ld l, $84
    inc [hl]
    cp h
    jr nz, jr_00d_74ee

    inc [hl]

jr_00d_74ee:
    ld l, $90
    ld [hl], $28
    ld l, $94
    ld a, $c0
    ld [hl+], a
    ld [hl], $fc
    ld a, $59
    jp $0c74


Call_00d_74fe:
    ld l, $8b
    ld e, l
    ld b, [hl]
    ld a, [de]
    ldh [$8f], a
    ld l, $8d
    ld e, l
    ld c, [hl]
    ld a, [de]
    ldh [$8e], a
    sub c
    add $02
    cp $05
    jr nc, jr_00d_751b

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    ret c

jr_00d_751b:
    call $1e6f
    ld e, $89
    ld [de], a
    or d
    ret


Call_00d_7523:
    ld e, $b1
    ld a, [de]
    ld h, a
    ld l, $8b
    ld e, l
    ld a, [de]
    sub [hl]
    add $0a
    cp $15
    ret nc

    ld l, $8d
    ld e, l
    ld a, [de]
    sub [hl]
    add $0a
    cp $15
    ret nc

    ld l, $90
    ld a, [hl]
    cp $14
    ret c

    pop hl
    ld e, $a9
    xor a
    ld [de], a
    ret


Call_00d_7547:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, $a3
    jp $0c74


    jr z, jr_00d_7559

    ld e, $84
    ld a, $02
    ld [de], a

jr_00d_7559:
    ld e, $84
    ld a, [de]
    rst $00
    ld h, l
    ld [hl], l
    ld l, l
    ld [hl], l
    reti


    ld [hl], l
    dec c
    db $76
    ld a, $01
    ld [de], a
    call $1e15
    jr jr_00d_7581

    ld e, $82
    ld a, [de]
    jr z, jr_00d_757e

    ld hl, $cfc0
    bit 7, [hl]
    jr z, jr_00d_757e

    ld e, $84
    ld a, $02
    ld [de], a

jr_00d_757e:
    call $275f

Jump_00d_7581:
jr_00d_7581:
    ld a, $0b
    call $2122
    ld a, [hl+]
    ld b, a
    inc l
    ld c, [hl]
    ld e, $84
    ld a, [de]
    cp $01
    jr nz, jr_00d_75a3

    ld e, $a1
    ld a, [de]
    or a
    jr nz, jr_00d_75a6

    ld e, $a0
    ld a, [de]
    cp $01
    jr nz, jr_00d_75a3

    ld a, $92
    call $0c74

jr_00d_75a3:
    ld e, $a1
    ld a, [de]

jr_00d_75a6:
    add a
    ld hl, $75c1
    rst JumpTable
    ld e, $8b
    ld a, [hl+]
    add b
    ld [de], a
    ld e, $8d
    ld a, [hl+]
    add c
    ld [de], a
    ld e, $8f
    ld a, $f8
    ld [de], a
    ld e, $a6
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ret


    ret c

    ldh [rP1], a
    nop
    ld b, $f6
    nop
    nop
    ld [$06f0], sp
    nop
    inc b
    db $ec
    ld [$0700], sp
    ldh a, [rTMA]
    nop
    dec b
    or $00
    nop
    ld h, d
    ld l, $85
    ld a, [hl]
    or a
    jr nz, jr_00d_75fd

    inc [hl]
    ld l, $a4
    ld b, $0b
    call $044b
    ld l, $a9
    inc [hl]
    ld l, $9b
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, $01
    call $2772
    ld hl, $cfc0
    set 7, [hl]
    jr jr_00d_7581

jr_00d_75fd:
    ld l, $a1
    bit 7, [hl]
    jp z, $275f

    xor a
    ld [hl], a
    ld l, $85
    ld [hl-], a
    inc [hl]
    jp Jump_00d_7581


    call $275f
    ld e, $a1
    ld a, [de]
    or a
    ret z

    rlca
    jp c, $2e28

    ld h, d
    ld l, $8b
    inc [hl]
    ret


    ld e, $84
    ld a, [de]
    rst $00
    jr z, jr_00d_769a

    add hl, sp
    db $76
    ld e, a
    daa
    ld a, $01
    ld [de], a
    call $041a
    and $07
    inc a
    ld e, $86
    ld [de], a
    ld a, $b0
    jp $04e7


    call Call_00d_439a
    ret nz

    ld l, e
    inc [hl]
    jp $1e30


    dec a
    ret z

    dec a
    ret z

    ld e, $84
    ld a, [de]
    rst $00
    ld c, [hl]
    db $76
    ld e, a
    db $76
    ld h, d
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $fe
    ld l, $82
    bit 0, [hl]
    ret z

    ld l, $87
    ld [hl], $08
    ret


    call Call_00d_43a3
    ret nz

    ld [hl], $10
    call $3ea7
    ret nz

    ld [hl], $26
    ld bc, $0600
    jp $2215


    jr z, jr_00d_76a6

    call Call_00d_7986
    ld e, $a5
    ld a, [de]
    cp $40
    jr nz, jr_00d_76a6

    ld e, $aa
    ld a, [de]
    res 7, a
    sub $0a
    cp $02
    jr nc, jr_00d_76a6

    ld h, d
    ld l, $84
    ld [hl], $02
    ld l, $a4
    res 7, [hl]
    ld l, $87
    ld [hl], $1e
    ld l, $8e
    xor a
    ld [hl+], a
    ld [hl], a

jr_00d_769a:
    ld a, $2b
    call $211e
    ld [hl], $f8
    ld l, $8e
    xor a
    ld [hl+], a
    ld [hl], a

jr_00d_76a6:
    call Call_00d_785c
    ld e, $84
    ld a, [de]
    rst $00
    or l
    db $76
    cp b
    db $76
    call z, $ee76
    db $76
    ld a, $01
    ld [de], a
    call Call_00d_786d
    ld b, h
    ld e, $85
    ld a, [hl]
    rst $00
    ld a, [$fa76]
    db $76
    cp $76
    dec sp
    ld [hl], a
    xor [hl]
    ld [hl], a
    rrca
    ld a, b
    call Call_00d_43a3
    jr z, jr_00d_76de

    ld a, $2e
    call $211e
    ld [hl], $02
    ld l, $a5
    ld [hl], $3b
    jr jr_00d_76eb

jr_00d_76de:
    ld l, e
    dec [hl]
    ld l, $a4
    set 7, [hl]
    ld a, $25
    call $211e
    ld [hl], $56

jr_00d_76eb:
    jp Jump_00d_796d


    ld a, $2b
    call $211e
    ld e, $ab
    ld a, [hl]
    ld [de], a
    jp Jump_00d_796d


Call_00d_76fa:
Jump_00d_76fa:
    ld h, b
    jp Jump_00d_7883


    ld a, [de]
    rst $00
    inc b
    ld [hl], a
    dec bc
    ld [hl], a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $57
    call Call_00d_76fa
    ld l, $b0
    ld a, [hl]
    add a
    add a
    ld b, a
    ld a, [$cc00]
    and $04
    rrca
    add b
    ld hl, $772b
    rst $10
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


    ld hl, sp+$00
    ei
    nop
    nop
    ld [$0500], sp
    ld [$0500], sp
    nop
    nop
    ld hl, sp+$00
    ei
    ld a, [de]
    rst $00
    ld c, c
    ld [hl], a
    ld l, c
    ld [hl], a
    ld [hl], e
    ld [hl], a
    add a
    ld [hl], a
    sub c
    ld [hl], a
    and l
    ld [hl], a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $04
    ld l, $90
    ld [hl], $0a
    ld l, $87
    ld [hl], $1e
    call Call_00d_76fa
    ld l, $b0
    ld a, [hl]
    rrca
    swap a
    xor $10
    ld e, $89
    ld [de], a
    call Call_00d_78ce
    call Call_00d_43a3
    jp nz, Jump_00d_78bc

    ld [hl], $04
    ld l, e
    inc [hl]
    call Call_00d_43a3
    jp nz, $78ab

    ld [hl], $0a
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $78
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    call Call_00d_43a3
    jp nz, Jump_00d_78bc

    ld [hl], $14
    ld l, e
    inc [hl]
    call Call_00d_43a3
    jp nz, $78ab

    ld [hl], $14
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $28
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    call Call_00d_43a3
    jp nz, Jump_00d_78bc

    jp Jump_00d_76fa


    ld a, [de]
    rst $00
    cp b
    ld [hl], a
    cp a
    ld [hl], a
    jp hl


    ld [hl], a
    ld [bc], a
    ld a, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $57
    call Call_00d_76fa
    ld a, $05
    call $211e
    ld a, [hl]
    cp $02
    ret c

    ld l, $89
    ld e, $89
    ld a, [hl]
    ld [de], a
    call Call_00d_78ce
    ld bc, $ff80
    call $2358
    ld l, $a5
    ld [hl], $58
    ld l, $85
    inc [hl]
    ld l, $87
    ld [hl], $0a
    ld l, $90
    ld [hl], $50
    call Call_00d_43a3
    jr nz, jr_00d_77fc

    ld [hl], $08
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $64
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a

jr_00d_77fc:
    call Call_00d_78bc
    jp Jump_00d_78e1


    call Call_00d_43a3
    jp z, Jump_00d_76fa

    ld l, $8f
    inc [hl]
    inc [hl]
    jp Jump_00d_78bc


    ld a, [de]
    rst $00
    rla
    ld a, b
    ld [hl+], a
    ld a, b
    ld b, [hl]
    ld a, b
    ld h, d
    ld l, $85
    inc [hl]
    ld l, $a4
    res 7, [hl]
    inc l
    ld [hl], $58
    ld a, $05
    call $211e
    ld a, [hl]
    cp $02
    jp c, Jump_00d_78f8

    ld h, d
    ld l, $87
    ld [hl], $1e
    ld l, $a6
    ld a, $08
    ld [hl+], a
    ld [hl], a
    ld l, $a4
    set 7, [hl]
    ld l, $85
    inc [hl]
    ld l, $94
    ld a, $c0
    ld [hl+], a
    ld [hl], $fb
    call Call_00d_43a3
    jr z, jr_00d_7851

    ld l, $a6
    ld a, $06
    ld [hl+], a
    ld [hl], a

jr_00d_7851:
    call Call_00d_7915
    call Call_00d_78f8
    ld c, $34
    jp $1f04


Call_00d_785c:
    ld e, $84
    ld a, [de]
    or a
    ret z

    ld a, $01
    call $211e
    ld a, [hl]
    cp $54
    ret z

    jp $2e28


Call_00d_786d:
    ld a, $31
    call $211e
    ld e, $b1
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    ld e, $a5
    ld a, $40
    ld [de], a
    ld e, $85
    xor a
    ld [de], a
    ret


Jump_00d_7883:
    ld l, $b0
    ld a, [hl]
    push hl
    ld hl, $78a3
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    pop hl
    ld l, $8f
    ld e, $8f
    ld a, [hl]
    ld [de], a

Call_00d_7895:
    call $2232

Jump_00d_7898:
    ld l, $b0
    ld a, [hl]
    cp $02
    jp c, $1e27

    jp $1e1e


    ei
    db $fc
    ld bc, $0406
    inc b
    ld bc, $2efc
    or d
    ld b, [hl]
    inc l
    ld c, [hl]
    ld a, $0b
    call $211e
    push hl
    call Call_00d_7895
    pop hl
    jr jr_00d_78ce

Call_00d_78bc:
Jump_00d_78bc:
    ld l, $b2
    ld b, [hl]
    inc l
    ld c, [hl]
    ld a, $0b
    call $211e
    push hl
    call Call_00d_7895
    call $1fdb
    pop hl

Call_00d_78ce:
jr_00d_78ce:
    ld l, $8b
    ld e, $8b
    ld a, [de]
    sub [hl]
    ld e, $b2
    ld [de], a
    ld l, $8d
    ld e, $8d
    ld a, [de]
    sub [hl]
    ld e, $b3
    ld [de], a
    ret


Jump_00d_78e1:
    ld h, d
    ld l, $94
    ld e, $8e
    ld a, [de]
    sub [hl]
    ld [de], a
    inc l
    inc e
    ld a, [de]
    sbc [hl]
    ld [de], a
    dec l
    ld a, [hl]
    add $80
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


Call_00d_78f8:
Jump_00d_78f8:
    ld a, $21
    call $211e
    push hl
    ld a, [hl]
    ld hl, $78a3
    rst $10
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    pop hl
    call $2232
    ld l, $a1
    ld a, [hl]
    cp $02
    jp c, $1e27

    jp $1e1e


Call_00d_7915:
    call Call_00d_795c
    ld l, $aa
    ld a, [hl]
    cp $80
    ret nz

    ld l, $b4
    ld [hl], $08
    ld hl, $d00f
    ld a, [hl]
    sub $08
    ld [hl], a
    ld l, $2b
    ld [hl], $00
    ld l, $2d
    ld [hl], $00
    ld a, $09
    call $211e
    ld a, [hl]
    ld [$d02c], a
    add $04
    and $18
    rrca
    rrca
    ld hl, $7954
    rst $10
    ld e, $8b
    ld a, [de]
    add [hl]
    ld [$d00b], a
    inc hl
    ld e, $8d
    ld a, [de]
    add [hl]
    ld [$d00d], a
    ret


    db $fc
    nop
    nop
    inc b
    inc b
    nop
    nop
    db $fc

Call_00d_795c:
    ld h, d
    ld l, $b4
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret nz

    ld a, $14
    ld [$d02b], a
    ld [$d02d], a
    ret


Jump_00d_796d:
    ld a, $30
    call $211e
    ld a, [hl]
    push hl
    ld hl, $7982
    rst $10
    ld c, [hl]
    ld b, $f8
    pop hl
    call $2232
    jp Jump_00d_7898


    ei
    db $fc
    dec b
    inc b

Call_00d_7986:
    ld e, $ab
    ld a, [de]
    bit 7, a
    ret z

    xor a
    ld [de], a
    ret


    ldh a, [$ac]
    add $02
    ld e, a
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    add $0e
    ld e, a
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $f8
    ld e, a
    ld a, [hl+]
    ld [de], a
    ld a, e
    add $28
    ld e, a
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ldh a, [$ac]
    add $30
    ld e, a
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a

jr_00d_79b8:
    ld a, [hl+]
    push hl
    rst $00
    rst $00
    ld a, c
    call $e379
    ld a, c
    ld sp, hl
    ld a, c
    rrca
    ld a, d
    dec h
    ld a, d
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00d_79b8

    pop bc
    ld h, d
    ldh a, [$ac]
    add $32
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $d7
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    ld [hl], $08
    jr jr_00d_7a34

    pop bc
    ld h, d
    ldh a, [$ac]
    add $33
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $d6
    ld l, a
    ld [hl], $08
    add $fb
    ld l, a
    ld [hl], $09
    jr jr_00d_7a34

    pop bc
    ld h, d
    ldh a, [$ac]
    add $32
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $d7
    ld l, a
    ld [hl], $10
    add $fb
    ld l, a
    ld [hl], $0a
    jr jr_00d_7a34

    pop bc
    ld h, d
    ldh a, [$ac]
    add $33
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $d6
    ld l, a
    ld [hl], $18
    add $fb
    ld l, a
    ld [hl], $0b
    jr jr_00d_7a34

    pop bc
    ld h, d
    ldh a, [$ac]
    add $06
    ld l, a
    ld a, [bc]
    ld [hl], a
    ld a, l
    add $fe
    ld l, a
    ld [hl], $0c

jr_00d_7a34:
    inc bc
    add $2c
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


    ld h, [hl]
    ld a, d
    ld l, a
    ld a, d
    ld a, b
    ld a, d
    add c
    ld a, d
    adc d
    ld a, d
    sub e
    ld a, d
    sbc h
    ld a, d
    and l
    ld a, d
    xor [hl]
    ld a, d
    or a
    ld a, d
    ret nz

    ld a, d
    ret


    ld a, d
    sub $7a
    db $e3
    ld a, d
    db $ec
    ld a, d
    push af
    ld a, d
    ld [bc], a
    ld a, e
    dec bc
    ld a, e
    inc d
    ld a, e
    dec e
    ld a, e
    ld h, $7b
    inc d
    nop
    ld [bc], a
    ld l, d
    inc b
    ld c, d
    nop
    ld l, b
    ld a, d
    inc d
    nop
    inc b
    sub [hl]
    ld [bc], a
    or [hl]
    nop
    ld [hl], c
    ld a, d
    inc d
    nop
    ld bc, $0328
    ld e, b
    nop
    ld a, d
    ld a, d
    inc d
    nop
    inc b
    ld d, b
    ld [bc], a
    and b
    nop
    add e
    ld a, d
    inc d
    nop
    inc b
    ld d, b
    ld [bc], a
    add b
    nop
    adc h
    ld a, d
    inc d
    nop
    ld [bc], a
    ld [hl], b
    inc b
    ld b, b
    nop
    sub l
    ld a, d
    inc d
    nop
    inc b
    ld b, b
    ld [bc], a
    or b
    nop
    sbc [hl]
    ld a, d
    inc d
    nop
    ld bc, $0368
    sbc b
    nop
    and a
    ld a, d
    inc d
    ld [bc], a
    ld bc, $0338
    adc b
    nop
    or b
    ld a, d
    inc d
    ld [bc], a
    inc bc
    adc b
    ld bc, $0038
    cp c
    ld a, d
    inc d
    inc bc
    inc b
    ld b, b
    ld [bc], a
    sub b
    nop
    jp nz, $147a

    nop
    ld [bc], a
    adc b
    inc bc
    ld l, b
    inc b
    ld a, b
    ld bc, $0028
    bit 7, d
    inc d
    nop
    inc b
    xor b
    inc bc
    adc b
    ld [bc], a
    ret nz

    ld bc, $0038
    ret c

    ld a, d
    inc d
    nop
    ld [bc], a
    ld h, b
    inc b
    jr nc, jr_00d_7aea

jr_00d_7aea:
    push hl
    ld a, d
    inc d
    nop
    ld [bc], a
    and b
    inc b
    ld [hl], b
    nop
    xor $7a
    inc d
    ld bc, $8803
    dec b
    ld e, $01
    ld l, b
    dec b
    ld e, $00
    rst $30
    ld a, d
    inc d
    ld [bc], a
    inc bc
    adc b
    ld bc, $0068
    inc b
    ld a, e
    inc d
    ld [bc], a
    inc bc
    adc b
    ld bc, $0048
    dec c
    ld a, e
    inc d
    ld [bc], a
    ld bc, $0348
    adc b
    nop
    ld d, $7b
    inc d
    nop
    ld bc, $0328
    adc b
    nop
    rra
    ld a, e
    inc d
    nop
    inc bc
    adc b
    ld bc, $0028
    jr z, jr_00d_7baa

    add hl, sp
    ld a, e
    ld b, [hl]
    ld a, e
    ld c, a
    ld a, e
    ld e, b
    ld a, e
    ld h, l
    ld a, e
    inc d
    ld bc, $5002
    inc bc
    adc b
    inc b
    jr c, @+$03

    jr c, jr_00d_7b44

jr_00d_7b44:
    dec sp
    ld a, e
    inc d
    nop
    inc bc
    adc b
    ld bc, $0028
    ld c, b
    ld a, e
    inc d
    ld bc, $2801
    inc bc
    adc b
    nop
    ld d, c
    ld a, e
    inc d
    ld bc, $2801
    ld [bc], a
    add b
    inc bc
    adc b
    inc b
    ld b, b
    nop
    ld e, d
    ld a, e
    inc d
    nop
    ld bc, $0438
    ld b, b
    inc bc
    ld a, b
    ld [bc], a
    and b
    nop
    ld h, a
    ld a, e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

jr_00d_7baa:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

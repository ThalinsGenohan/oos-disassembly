; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX

Call_00f_4000:
    ld h, d
    ld l, $84
    inc [hl]
    ret


    ld h, d
    ld l, $85
    inc [hl]
    ret


Call_00f_400a:
    xor a
    ld e, $ac
    call Call_00f_420d

jr_00f_4010:
    ld a, [de]
    ld c, a
    ld e, $ad
    ld a, [de]
    rlca
    ld b, $50
    jr nc, jr_00f_4028

    ld b, $78
    and $06
    jr nz, jr_00f_4028

    push bc
    ld bc, $0f01
    call $24b1
    pop bc

jr_00f_4028:
    call Call_00f_4161
    ret nz

    ld e, $ad
    ld a, [de]
    and $80
    ld [de], a
    ret


    ld a, $02
    ld e, $ac
    call Call_00f_420d
    jr jr_00f_4010

    call Call_00f_400a
    call Call_00f_4043
    ret


Call_00f_4043:
    ldh [$8f], a
    xor a
    ldh [$8d], a
    jr jr_00f_4057

    call Call_00f_400a
    call Call_00f_4051
    ret


Call_00f_4051:
Jump_00f_4051:
    ldh [$8f], a
    ld a, $01
    ldh [$8d], a

jr_00f_4057:
    ld e, $bf
    ld a, [de]
    and $07
    jr nz, jr_00f_40aa

    ld e, $8f
    ld a, [de]
    rlca
    jr c, jr_00f_4087

    ld bc, $05ff
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $ff
    jr c, jr_00f_408b

    ld bc, $0501
    call $1423
    ld hl, $23c3
    call $1ddd
    ld b, $01
    jr c, jr_00f_408b

    call Call_00f_4123

jr_00f_4087:
    ldh a, [$8f]
    or a
    ret


jr_00f_408b:
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

jr_00f_40aa:
    pop hl
    ld a, [de]
    rrca
    jr c, jr_00f_40c9

    rrca
    jr c, jr_00f_40dd

    jr jr_00f_40cd

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
    jr jr_00f_40c9

jr_00f_40c9:
    ld b, $03
    jr jr_00f_40cf

jr_00f_40cd:
    ld b, $04

jr_00f_40cf:
    call $24af

jr_00f_40d2:
    call $249f
    jp $2e28


jr_00f_40d8:
    call $24bd
    jr jr_00f_40d2

jr_00f_40dd:
    call Call_00f_439a
    jr z, jr_00f_40d8

    ld a, [hl]
    and $07
    jr nz, jr_00f_40f5

    call Call_00f_4108
    jr z, jr_00f_40d8

    call $1e6f
    ld c, a
    ld b, $14
    call Call_00f_4138

jr_00f_40f5:
    ld h, d
    ld l, $87
    bit 0, [hl]
    ret z

    ld l, $a0
    ld a, [hl]
    sub $03
    jr nc, jr_00f_4103

    xor a

jr_00f_4103:
    inc a
    ld [hl], a
    jp $275f


Call_00f_4108:
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


Call_00f_4123:
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

Call_00f_4138:
    ld hl, $425e
    xor a
    ldh [$8a], a
    push bc
    ld a, c
    call Call_00f_4213
    pop bc
    jr jr_00f_4161

    xor a
    call Call_00f_4204
    jr jr_00f_415b

    ld a, $01
    call Call_00f_4204
    jr jr_00f_415b

    xor a
    jr jr_00f_4158

Call_00f_4156:
    ld a, $01

jr_00f_4158:
    call Call_00f_420b

jr_00f_415b:
    ld a, [de]
    ld c, a
    ld e, $90
    ld a, [de]
    ld b, a

Call_00f_4161:
jr_00f_4161:
    ld a, c
    ldh [$8c], a
    call $1fff
    xor a
    ldh [$8d], a
    ld e, $8a
    ldh a, [$8b]
    and $0c
    jr nz, jr_00f_4177

    call Call_00f_41e1
    jr jr_00f_41a1

jr_00f_4177:
    cp $0c
    jr z, jr_00f_41a1

    bit 3, a
    ldh a, [$8c]
    ld bc, $0060
    jr nz, jr_00f_4189

    xor $10
    ld bc, $ffa0

jr_00f_4189:
    cp $11
    jr nc, jr_00f_41a1

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
    jr nc, jr_00f_41a1

    ld a, $01
    ldh [$8d], a

jr_00f_41a1:
    ld e, $8c
    ld l, $c2
    ldh a, [$8b]
    and $03
    jr nz, jr_00f_41b0

    call Call_00f_41e1
    jr jr_00f_41dd

jr_00f_41b0:
    cp $03
    jr z, jr_00f_41dd

    rrca
    ldh a, [$8c]
    ld bc, $0060
    jr nc, jr_00f_41c1

    sub $10
    ld bc, $ffa0

jr_00f_41c1:
    add $08
    and $1f
    cp $11
    jr nc, jr_00f_41dd

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
    jr nc, jr_00f_41dd

    ld a, $01
    ldh [$8d], a

jr_00f_41dd:
    ldh a, [$8d]
    or a
    ret


Call_00f_41e1:
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
    jr nz, jr_00f_41fc

    ld c, $20
    ld e, $90
    ld a, [de]
    cp $32
    jr c, jr_00f_41f9

    ld c, $60

jr_00f_41f9:
    ld a, b
    cp c
    ret c

jr_00f_41fc:
    ldh [$8d], a
    ret


    ld hl, $429e
    jr jr_00f_4213

Call_00f_4204:
    ld e, $89
    ld hl, $429e
    jr jr_00f_4210

Call_00f_420b:
    ld e, $89

Call_00f_420d:
    ld hl, $425e

jr_00f_4210:
    ldh [$8a], a
    ld a, [de]

Call_00f_4213:
jr_00f_4213:
    push de
    call Call_00f_4253
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

jr_00f_4226:
    call Call_00f_4233
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_00f_4226

    pop de
    or a
    ret


Call_00f_4233:
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
    jr z, jr_00f_424a

    call $14a5
    add $01
    ret


jr_00f_424a:
    call $14a5
    add $01
    jp nc, $14bf

    ret


Call_00f_4253:
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
    ld a, $01
    jr jr_00f_42e7

    xor a
    jr jr_00f_42e7

Jump_00f_42e5:
    ld a, $02

jr_00f_42e7:
    call Call_00f_420b
    call Call_00f_4310
    ld a, c
    or a
    ret z

    cp $05
    jr z, jr_00f_4306

    ld hl, $432f
    bit 0, a
    jr nz, jr_00f_42fe

    ld hl, $431f

jr_00f_42fe:
    ld e, $89
    ld a, [de]
    rst $10
    ld a, [hl]
    ld [de], a
    or d
    ret


jr_00f_4306:
    ld e, $89
    ld a, [de]
    add $10
    and $1f
    ld [de], a
    or d
    ret


Call_00f_4310:
    ld c, $00
    ld b, a
    and $03
    jr z, jr_00f_4318

    inc c

jr_00f_4318:
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


Call_00f_435e:
    call Call_00f_4364
    jp $1e03


Call_00f_4364:
Jump_00f_4364:
    ld h, d
    ld l, $90
    ld [hl], a
    ld l, $84
    ld [hl], $08
    ret


Call_00f_436d:
    call $2e15
    ret nz

    jr jr_00f_4377

    call $2e08
    ret nz

jr_00f_4377:
    ld [hl], b
    inc l
    inc [hl]
    xor a
    ret


Call_00f_437c:
Jump_00f_437c:
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


Call_00f_439a:
    ld h, d
    ld l, $86
    dec [hl]
    ret


    call Call_00f_439a
    ret nz

Call_00f_43a3:
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


    call $1e52
    add $04
    and $18
    ld e, $89
    ld [de], a
    ret


Call_00f_43bf:
    call $1e52
    ld e, $89
    ld [de], a
    ret


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


    ld h, d
    ld l, $89
    ld a, [hl-]
    ld e, a
    ld bc, $43ff
    call $006d
    ld a, [bc]
    cp $04
    jr c, jr_00f_43f9

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

jr_00f_43f9:
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

Call_00f_441f:
Jump_00f_441f:
    ld e, $9a
    ld a, [de]
    xor $80
    ld [de], a
    ret


Call_00f_4426:
    ld e, $82
    ld a, [de]
    ld b, a
    ld e, $84
    ld a, [de]
    cp $08
    ret


Call_00f_4430:
Jump_00f_4430:
    call $1e6f
    ld e, $89
    ld [de], a
    jp $1fdb


Call_00f_4439:
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


    ld b, a
    ld a, [$cc79]
    or a
    ld a, b
    jp z, Jump_00f_4051

    ld h, d
    ld l, $bf
    res 1, [hl]
    ld l, $a4
    set 7, [hl]
    push af
    call $1e5a
    ld c, a
    ld b, $14
    call Call_00f_4138
    pop af
    or a
    ret


    ld h, d
    ld l, $8b
    ld a, [hl]
    add c
    cpl
    inc a
    ld c, a
    ldh a, [$a8]
    add c
    jr nc, jr_00f_4473

    ld a, c

jr_00f_4473:
    bit 7, a
    jr nz, jr_00f_4479

    ld a, $80

jr_00f_4479:
    ld l, $8f
    ld [hl], a
    ret


    ld a, l
    and $c0
    or $29
    ld l, a

jr_00f_4483:
    ld [hl], $00
    ld a, l
    add $fb
    ld l, a
    res 7, [hl]
    ret


    ld a, $29
    call $211e
    jr jr_00f_4483

    ld a, $29
    call $2122
    jr jr_00f_4483

    call Call_00f_43a3
    jr z, jr_00f_44ad

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


jr_00f_44ad:
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


Jump_00f_450f:
    ld h, d
    ld l, $a4
    ld a, [hl]
    or a
    jr z, jr_00f_4526

    ld [hl], $00
    ld l, $86
    ld [hl], $78
    ld a, $01
    ld [$cbca], a
    ld a, $67
    call $0c74

jr_00f_4526:
    call Call_00f_439a
    jp nz, Jump_00f_441f

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
    jr c, jr_00f_4550

    ld a, [$cc62]
    ld [$cc51], a
    call $0c74

jr_00f_4550:
    jp $2e28


Call_00f_4553:
    call $3ea7
    ret nz

    ld [hl], $07
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $d6
    ld a, $80
    ld [hl+], a
    ld [hl], d
    xor a
    ret


Call_00f_4565:
    bit 7, a
    jr nz, jr_00f_456c

    ld [$cc1c], a

jr_00f_456c:
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
    ld [hl+], a
    swap a
    rrca
    ld [hl], a
    ret


    jr z, jr_00f_45ff

    sub $03
    ret c

    jr nz, jr_00f_45cb

    ld e, $b4
    ld a, [de]
    or a
    jp z, Jump_00f_49d5

    ld h, d
    ld l, $ba
    ld [hl], $78
    ld l, $a9
    ld [hl], $14
    ld l, $a4
    set 7, [hl]
    ld l, $9b
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $a4
    ld [hl], $87
    ld a, $09
    jp $2772


jr_00f_45cb:
    ld e, $ba
    ld a, [de]
    or a
    jr z, jr_00f_45ff

    ld e, $aa
    ld a, [de]
    res 7, a
    sub $1a
    cp $05
    jr nc, jr_00f_45ff

    ld a, $63
    call $0c74
    ld h, d
    ld l, $ab
    ld [hl], $2d
    ld l, $b4
    dec [hl]
    jr nz, jr_00f_45ff

    ld l, $a9
    ld [hl], $00
    ld l, $a4
    res 7, [hl]
    ld l, $85
    ld [hl], $00
    inc l
    ld [hl], $d8
    ld a, $f0
    jp $0c74


jr_00f_45ff:
    call Call_00f_49b6
    call Call_00f_498c
    call Call_00f_4426
    cp $0c
    jr nc, jr_00f_4625

    rst $00
    dec hl
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, b
    ld b, [hl]
    ld e, c
    ld b, [hl]
    adc b
    ld b, [hl]
    or b
    ld b, [hl]
    ld c, c
    ld b, a

jr_00f_4625:
    ld a, b
    rst $00
    ld d, c
    ld b, a
    ld a, a
    ld c, b
    ld a, $01
    ld [$cc1c], a
    ldh a, [$ad]
    ld d, a
    ld bc, $0012
    call Call_00f_4553
    ret nz

    ld a, $3c
    call Call_00f_4364
    ld l, $86
    ld [hl], $08
    ld l, $b0
    ld [hl], $d2
    ld l, $b4
    ld [hl], $05
    ld l, $8f
    ld [hl], $ff
    call $1e30
    ld bc, $2f0b
    jp $184b


    ret


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call $042f
    and $01
    ld e, $82
    ld [de], a
    ld b, a
    xor $01
    inc a
    ld e, $9b
    ld [de], a
    inc e
    ld [de], a
    ld a, b
    inc a
    call $2772
    xor a
    ld [$cca4], a
    ld [$cbca], a
    ld a, $33
    ld [$cc51], a
    jp $0c74


    ld bc, $4878
    ld h, d
    ld l, $8b
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    call Call_00f_49a8
    jp nc, Jump_00f_4430

    ld l, e
    inc [hl]
    inc l
    ld [hl], $00
    inc l
    ld [hl], $3c
    ld l, $a4
    ld [hl], $96
    ld l, $b9
    ld [hl], $01
    ld l, $bb
    ld [hl], $00
    ret


    inc e
    ld a, [de]
    rst $00
    cp l
    ld b, [hl]
    db $e3
    ld b, [hl]
    add hl, bc
    ld b, a
    ld [hl+], a
    ld b, a
    jr z, jr_00f_4704

    call Call_00f_439a
    jr z, jr_00f_46ca

    ld l, $9b
    ld a, [hl]
    xor $03
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_46ca:
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $82
    ld a, [hl]
    inc a
    and $01
    ld b, a
    ld [hl], a
    xor $01
    inc a
    ld l, $9b
    ld [hl+], a
    ld [hl], a
    ld a, b
    inc a
    jp $2772


    call Call_00f_439a
    jr z, jr_00f_46f0

    ld l, $9b
    ld a, [hl]
    xor $03
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_46f0:
    ld l, e
    inc [hl]
    ld l, $82
    ld a, [hl]
    xor $01
    inc a
    ld l, $9b
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$cbca], a
    call $313b

jr_00f_4704:
    ld a, $b9
    jp $0c74


    ld a, $03
    ld [de], a
    call $02c1
    ld e, $82
    ld a, [de]
    inc a
    ld [$ccc4], a
    call $12dd
    ld a, $02
    call $02ea
    ldh a, [$ad]
    ld d, a
    ret


    ld a, $04
    ld [de], a
    jp $315c


    ld a, [$c4ab]
    or a
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $a4
    ld [hl], $81
    ld l, $86
    ld [hl], $1e
    ld l, $b0
    ld [hl], $d2
    ld l, $b9

jr_00f_473f:
    xor a
    ld [hl], a
    ld [$cbca], a
    ld a, $f1
    jp $0c74


    call Call_00f_439a
    ret nz

    ld l, e
    ld [hl], $0c
    ret


    ld a, [de]
    sub $0c
    rst $00
    ld e, e
    ld b, a
    sub e
    ld b, a
    call nc, $cd47
    ld e, l
    ld c, d
    ret nz

    ld l, $90
    ld [hl], $32

Jump_00f_4763:
    ld l, e
    inc [hl]

jr_00f_4765:
    call $041a
    and $0e
    ld l, $b6
    cp [hl]
    jr z, jr_00f_4765

    ld [hl], a
    ld bc, $4783
    call $006d
    ld e, $b7
    ld a, [bc]
    ld [de], a
    inc e
    inc bc
    ld a, [bc]
    ld [de], a
    ld a, $c9
    jp $0c74


    jr nc, @+$42

    ld e, b
    jr nc, @+$4a

    ld b, b
    jr nc, jr_00f_4803

    ld e, b
    ld a, b
    jr nc, jr_00f_473f

    ld e, b
    ret nz

    ld a, b
    or b
    ld h, d
    ld l, $b3
    ld a, [hl]
    or a
    jr z, jr_00f_479b

    dec [hl]

jr_00f_479b:
    ld l, $b7
    call Call_00f_4439
    call Call_00f_49a8
    jp nc, Jump_00f_4430

    ld l, $b3
    ld a, [hl]
    or a
    ld l, $84
    jr z, jr_00f_47b4

    dec [hl]
    ld l, $bb
    ld [hl], $1e
    ret


jr_00f_47b4:
    inc [hl]
    inc l
    ld [hl], $00
    ld l, $b9
    ld [hl], $01
    ld l, $b2
    inc [hl]
    ld a, [hl]
    and $07
    ld [hl], a
    ld hl, $47cc
    rst $10
    ld e, $83
    ld a, [hl]
    ld [de], a
    ret


    nop
    nop
    ld bc, $0100
    ld bc, $0100
    ld e, $83
    ld a, [de]
    or a
    jp nz, Jump_00f_482b

    ld e, $85
    ld a, [de]
    rst $00
    push hl
    ld b, a
    inc bc
    ld c, b
    ld [de], a
    ld c, b
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld a, $03
    call $2772
    call $1e52
    ld b, a
    call $3ea7
    ret nz

    ld [hl], $4c
    ld l, $c9
    ld [hl], b
    ld bc, $1000
    jp $2215


jr_00f_4803:
    call Call_00f_439a
    jp nz, $275f

    ld [hl], $10
    ld l, e
    inc [hl]
    ld a, $04
    jp $2772


    call Call_00f_439a
    ret nz

jr_00f_4816:
    ld l, $84
    ld [hl], $0c
    ld l, $bb
    ld [hl], $1e
    ld l, $b3
    ld [hl], $96
    ld l, $b9
    ld [hl], $00
    ld a, $01
    jp $2772


Jump_00f_482b:
    ld e, $85
    ld a, [de]
    rst $00
    dec [hl]
    ld c, b
    ld b, e
    ld c, b
    ld a, c
    ld c, b
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $0a
    inc l
    ld [hl], $05
    ld a, $07
    jp $2772


    call Call_00f_439a
    jp nz, $275f

    ld [hl], $14
    inc l
    dec [hl]
    jr z, jr_00f_4867

    ld a, [hl]
    dec a
    ld hl, $4871

jr_00f_4854:
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call $2e15
    ret nz

    ld [hl], $5e
    ld l, $97
    ld [hl], d
    dec l
    ld [hl], $80
    jp $2215


jr_00f_4867:
    dec l
    ld [hl], $b4
    ld l, e
    inc [hl]
    ld a, $03
    jp $2772


    nop
    jr nz, jr_00f_4854

    nop
    nop
    ldh [rNR41], a
    nop
    call Call_00f_439a
    ret nz

    jr jr_00f_4816

    ld a, [de]
    sub $0c
    rst $00
    adc l
    ld c, b
    or h
    ld c, b
    jr z, @+$4b

    inc sp
    ld c, c
    ld e, l
    ld c, c
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $00
    inc l
    ld [hl], $0a
    ld l, $b9
    ld [hl], $01
    call $042f
    and $01
    ld e, $b5
    ld [de], a
    ld e, $b4
    ld a, [de]
    cp $02
    ld a, $03
    jr nc, jr_00f_48ac

    inc a

jr_00f_48ac:
    ld e, $87
    ld [de], a
    ld a, $05
    jp $2772


    inc e
    ld a, [de]
    rst $00
    cp e
    ld c, b
    ld a, [de]
    ld c, c
    call Call_00f_439a
    jp nz, $275f

    ld [hl], $1e
    inc l
    dec [hl]
    jr z, jr_00f_48f7

    ld b, [hl]
    dec b
    ld l, $b4
    ld a, [hl]
    cp $02
    ld hl, $4912
    jr nc, jr_00f_48d6

    ld hl, $4906

jr_00f_48d6:
    ld a, b
    add a
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld e, $b5
    ld a, [de]
    or a
    jr z, jr_00f_48e4

    inc hl

jr_00f_48e4:
    ld e, [hl]
    call $2e15
    ret nz

    ld [hl], $5d
    ld l, $89
    ld [hl], e
    ld l, $96
    ld [hl], $80
    inc l
    ld [hl], d
    jp $2215


jr_00f_48f7:
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $78
    ld l, $b9
    ld [hl], $00
    ld a, $06
    jp $2772


    db $10
    ldh a, [rNR12]
    dec d
    db $10
    db $10
    ld a, [bc]
    inc c
    jr jr_00f_4910

jr_00f_4910:
    ld c, $12
    db $10
    add sp, $16
    dec c
    db $10
    jr @+$0d

    ld de, $9acd
    ld b, e
    ret nz

    ld [hl], $5a
    ld l, $84
    inc [hl]
    ld a, $02
    jp $2772


    call $4a5d
    ret nz

    ld l, $90
    ld [hl], $3c
    jp Jump_00f_4763


    ld h, d
    ld l, $b7
    call Call_00f_4439
    call Call_00f_49a8
    jp nc, Jump_00f_4430

    ld l, $84
    inc [hl]
    inc l
    ld [hl], $00
    inc l
    ld [hl], $1e
    ld l, $b9
    ld [hl], $01
    ld a, $08
    call $2772
    call $3ea7
    ret nz

    ld [hl], $4e
    ld bc, $e800
    jp $2215


    inc e
    ld a, [de]
    rst $00
    ld h, h
    ld c, c
    ld [hl], e
    ld c, c
    call Call_00f_439a
    jp nz, $275f

    ld [hl], $3c
    ld l, e
    inc [hl]
    ld a, $06
    jp $2772


    call Call_00f_439a
    ret nz

    ld l, $84
    ld [hl], $0e
    ld l, $86
    ld [hl], $5a
    ld l, $bb
    ld [hl], $1e
    ld l, $b9
    ld [hl], $00
    ld a, $02
    jp $2772


Call_00f_498c:
    ld a, [$cc00]
    and $03
    ret nz

    ld h, d
    ld l, $b0
    dec [hl]
    ret nz

    inc [hl]
    ld e, $b9
    ld a, [de]
    or a
    ret nz

    ld [hl], $d2
    ld l, $86
    ld [hl], $1e
    ld l, $84
    ld [hl], $09
    ret


Call_00f_49a8:
    sub c
    add $02
    cp $05
    ret nc

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    ret


Call_00f_49b6:
    ld h, d
    ld l, $ba
    ld a, [hl]
    or a
    ret z

    dec [hl]
    jr z, jr_00f_49c1

    pop hl
    ret


jr_00f_49c1:
    ld l, $84
    ld [hl], $09
    ld e, $82
    ld a, [de]
    ld b, a
    xor $01
    inc a
    ld l, $9b
    ld [hl+], a
    ld [hl], a
    ld a, b
    inc a
    jp $2772


Jump_00f_49d5:
    ld e, $85
    ld a, [de]
    rst $00
    pop hl
    ld c, c
    dec c
    ld c, d
    inc hl
    ld c, d
    jr nc, jr_00f_4a2b

    ld a, [$cca4]
    or a
    jr nz, jr_00f_49f6

    ld a, [$cc34]
    or a
    ret nz

    inc a
    ld [$cbca], a
    ld [$cca4], a
    call $2b57

jr_00f_49f6:
    call Call_00f_441f
    call Call_00f_439a
    jr z, jr_00f_4a08

    ld a, [hl]
    cp $61
    ret nc

    and $0f
    jp z, Jump_00f_4a31

    ret


jr_00f_4a08:
    ld [hl], $19
    ld l, $85
    inc [hl]
    call Call_00f_439a
    jp nz, Jump_00f_441f

    ld l, e
    inc [hl]
    ld l, $9b
    xor a
    ld [hl+], a
    ld [hl], a
    call $2772
    ld bc, $2f0c
    jp $184b


    ld a, $03
    ld [de], a
    ld a, $19
    ld [$cc04], a

jr_00f_4a2b:
    ld a, $1d
    jp $0c74


    ret


Jump_00f_4a31:
    ld a, [hl]
    swap a
    dec a
    ld hl, $4a51
    rst JumpTable
    ld e, $8b
    ld a, [de]
    add [hl]
    ld b, a
    ld e, $8d
    inc hl
    ld a, [de]
    add [hl]
    ld c, a
    call $3ac6
    ret nz

    ld [hl], $56
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c
    ret


    ld hl, sp-$0a
    nop
    ld b, $02
    cp $06
    inc b
    db $fc
    dec b
    ld a, [$62fc]
    ld l, $bb
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


    jr z, jr_00f_4a93

    sub $03
    ret c

    jr nz, jr_00f_4a93

    ld h, d
    ld l, $b2
    bit 6, [hl]
    jr z, jr_00f_4a93

    ld l, $a9
    ld [hl], $7f
    ld l, $a4
    res 7, [hl]
    ld l, $84
    ld [hl], $0d
    ld a, $29
    call $211e
    ld [hl], $7f
    ld l, $a4
    res 7, [hl]
    ld l, $84
    ld [hl], $0f
    ld a, $f0
    call $0c74

jr_00f_4a93:
    call Call_00f_4e54
    call Call_00f_4aa2
    ld e, $b2
    ld a, [de]
    bit 7, a
    jp nz, $229b

    ret


Call_00f_4aa2:
    call Call_00f_4e7b
    call Call_00f_4426
    jr nc, jr_00f_4abb

    rst $00
    pop bc
    ld c, d
    ld [c], a
    ld c, d
    rrca
    ld c, e
    rrca
    ld c, e
    rrca
    ld c, e
    rrca
    ld c, e
    rrca
    ld c, e
    rrca
    ld c, e

jr_00f_4abb:
    ld a, b
    rst $00
    db $10
    ld c, e
    adc $4d
    ld a, $03
    ld [$cc1c], a
    ld a, $01
    ld [$cc17], a
    ld h, d
    ld l, $83
    bit 0, [hl]
    ld a, $28
    jp nz, Jump_00f_4e10

    ld l, e
    inc [hl]
    xor a
    ld [$d008], a
    inc a
    ld [$cca4], a
    ld [$cc02], a
    ld b, $03
    call Call_00f_436d
    ret nz

    inc l
    ld e, l
    ld a, [de]
    inc a
    ld [hl], a
    ld l, $96
    ld e, l
    ld a, $80
    ld [de], a
    ld [hl+], a
    inc e
    ld a, h
    ld [de], a
    ld [hl], d
    ld a, h
    cp d
    ld a, $28
    jp nc, Jump_00f_4e10

    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    ld l, $82
    dec [hl]
    ld h, d
    inc [hl]
    inc l
    inc [hl]
    ld l, $84
    dec [hl]
    ret


    ret


    ld a, [de]
    sub $08
    rst $00
    ld h, $4b
    ld l, h
    ld c, e
    ld [bc], a
    ld c, h
    db $10
    ld c, h
    ld b, c
    ld c, h
    ld d, a
    ld c, h
    ld l, [hl]
    ld c, h
    adc e
    ld c, h
    xor l
    ld c, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $b2
    set 3, [hl]
    set 7, [hl]
    ld l, $86
    ld [hl], $6a
    ld l, $8b
    ld [hl], $08
    ld l, $82
    ld a, [hl]
    add a
    ld hl, $4b64
    rst JumpTable
    ld e, $8d
    ld a, [hl+]
    ld [de], a
    ld e, $9b
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ld e, $89
    ld a, [hl+]
    ld [de], a
    ld e, $b0
    ld a, [hl]
    ld [de], a
    ld e, $82
    ld a, [de]
    or a
    ld bc, $2f04
    call z, $184b
    call $042f
    ld e, $b1
    ld [de], a
    jp Jump_00f_4ee0


    ret nz

    ld [bc], a
    ld de, $3001
    ld bc, $ff0f
    inc e
    ld a, [de]
    rst $00
    ld a, c
    ld c, e
    add a
    ld c, e
    or e
    ld c, e
    push bc
    ld c, e
    db $dd
    ld c, e
    call Call_00f_439a
    jr nz, jr_00f_4bad

    ld [hl], $08
    inc l
    ld [hl], $12
    ld l, e
    inc [hl]
    jr jr_00f_4bb0

    call Call_00f_439a
    jr nz, jr_00f_4bad

    ld [hl], $08
    inc l
    dec [hl]
    jr nz, jr_00f_4ba1

    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    call Call_00f_43bf
    call Call_00f_4f05
    ld [hl], a
    jp $2772


jr_00f_4ba1:
    ld e, $89
    ld l, $b0
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    call Call_00f_4ee0

jr_00f_4bad:
    call $1fdb

jr_00f_4bb0:
    jp $275f


    call Call_00f_439a
    jr nz, jr_00f_4bb0

    ld l, e
    inc [hl]
    ld e, $82
    ld a, [de]
    or a
    ret nz

    ld bc, $2f05
    jp $184b


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
    ld l, $b2
    res 7, [hl]
    jp $1e39


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    ld h, d
    ld l, $b2
    set 7, [hl]
    xor a
    ld [$cca4], a
    ld [$cc02], a
    ld a, $18
    ld [$cc04], a
    call Call_00f_43bf
    call Call_00f_4f05
    add $04
    ld [hl], a
    jp $2772


    ld h, d
    ld l, e
    inc [hl]
    ld a, $33
    ld [$cc51], a
    call $0c74
    jp Jump_00f_4f1a


    ld a, [$cc00]
    and $7f
    ld a, $91
    call z, $0c74
    call Call_00f_4f3d
    ret nc

    call Call_00f_4f1a
    jr nz, jr_00f_4c2b

    call Call_00f_4000
    ld l, $86
    ld [hl], $1e
    ret


jr_00f_4c2b:
    call Call_00f_4f6e
    ret nz

    ld e, $b8
    ld a, [de]
    inc a
    and $07
    ld [de], a
    ld hl, $4c40
    call $0205
    jp nz, Jump_00f_4f5b

    ret


    ld [hl], l
    call Call_00f_439a
    jp nz, $275f

    ld l, e
    dec [hl]
    call $042f
    and $03
    ld e, $b3
    ld [de], a
    inc e
    xor a
    ld [de], a
    jp Jump_00f_4f1a


    ld h, d
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $00
    ld l, $b2
    res 3, [hl]
    ld l, $89
    bit 4, [hl]
    ld a, $0a
    jr z, jr_00f_4c6b

    inc a

jr_00f_4c6b:
    jp $2772


    ld e, $a1
    ld a, [de]
    inc a
    jr nz, jr_00f_4c88

    ld e, $88
    ld a, [de]
    add $04
    call $2772
    call Call_00f_4000
    ld l, $8f
    dec [hl]
    ld bc, $2f09
    call $184b

jr_00f_4c88:
    jp $275f


    call Call_00f_4f88
    jr nz, jr_00f_4c88

    ld a, $32
    call $211e
    bit 4, [hl]
    jr nz, jr_00f_4ca1

    call Call_00f_43bf
    call Call_00f_4eeb
    jr jr_00f_4c88

jr_00f_4ca1:
    call Call_00f_4000
    inc l
    ld [hl], $00
    ld l, $b2
    res 3, [hl]
    jr jr_00f_4c88

    inc e
    ld a, [de]
    rst $00
    ret nz

    ld c, h
    sbc $4c
    inc c
    ld c, l
    rra
    ld c, l
    ld b, e
    ld c, l
    ld [hl], c
    ld c, l
    sbc h
    ld c, l
    xor a
    ld c, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $b2
    res 1, [hl]
    res 0, [hl]
    ld l, $88
    ld [hl], $00
    ld bc, $fc20
    call $2358
    ld e, $82
    ld a, [de]
    or a
    ret nz

    ld bc, $2f0a
    jp $184b


    ld c, $08
    call $1f04
    ldh a, [$a8]
    ld b, a
    ld l, $8b
    ld a, [hl]
    sub b
    jr nc, jr_00f_4ced

    ld a, [hl]

jr_00f_4ced:
    ld b, a
    ld l, $8f
    ld a, [hl]
    cp $80
    jr c, jr_00f_4cfa

    add b
    cp $f0
    jr c, jr_00f_4d6e

jr_00f_4cfa:
    ld l, $85
    inc [hl]
    ld l, $b2
    set 1, [hl]
    ld l, $b2
    res 7, [hl]
    ld l, $86
    ld [hl], $3c
    jp $1e39


    ld e, $82
    ld a, [de]
    or a
    ret nz

    ld a, $32
    call $211e
    bit 1, [hl]
    ret z

    ld l, $85
    inc [hl]
    ld h, d
    inc [hl]
    ret


    call Call_00f_439a
    ret nz

    ld [hl], $30
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $a0
    ld l, $89
    ld e, $82
    ld a, [de]
    or a
    ld [hl], $08
    jr z, jr_00f_4d37

    ld [hl], $18

jr_00f_4d37:
    ld l, $b2
    set 7, [hl]
    call $1e03
    ld a, $d3
    call $0c74
    ld bc, $5878
    ld e, $86
    ld a, [de]
    ld e, $89
    call $20cc
    ld e, $89
    ld a, [de]
    add $08
    and $1f
    call Call_00f_4eee
    ld h, d
    ld l, $8f
    inc [hl]
    ld a, [hl]
    rrca
    jr c, jr_00f_4d6e

    ld l, $89
    ld a, [hl]
    inc a
    and $1f
    ld [hl], a
    ld l, $86
    dec [hl]
    jr nz, jr_00f_4d6e

    dec l
    inc [hl]

jr_00f_4d6e:
    jp $275f


    ld e, $82
    ld a, [de]
    or a
    jp nz, $2e28

    ld a, [$cc34]
    or a
    ret nz

    inc a
    ld [$cca4], a
    ld [$cbca], a
    ld h, d
    ld l, $85
    inc [hl]
    ld l, $9b
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $0c
    call $2772
    ld a, $c0
    call $0c74
    ld a, $02
    jp $315c


    ld a, [$c4ab]
    or a
    ret nz

    ld h, d
    ld l, $85
    inc [hl]
    ld l, $b2
    res 0, [hl]
    ld a, $01
    ld [$cc17], a
    ret


    ld h, d
    ld l, $80
    inc h

jr_00f_4db3:
    ld a, [hl]
    or a
    jr z, jr_00f_4dbe

    inc h
    ld a, h
    cp $e0
    jr c, jr_00f_4db3

    ret


jr_00f_4dbe:
    ld e, l
    ld a, [de]
    ld [hl+], a
    ld [hl], $01
    call $21fd
    ld a, $01
    ld [$cc17], a
    jp $2e28


    ld a, [de]
    sub $08
    rst $00
    ld h, $4b
    ld l, h
    ld c, e
    db $e4
    ld c, l
    ld [$fa4d], a
    ld c, l
    ld d, a
    ld c, h
    ld l, [hl]
    ld c, h
    adc e
    ld c, h
    xor l
    ld c, h
    ld a, $0b
    ld [de], a
    jp Jump_00f_4f1f


    call Call_00f_4f3d
    ret nc

    call Call_00f_4f1f
    ret nz

    call Call_00f_4000
    ld l, $86
    ld [hl], $1e
    ret


    call Call_00f_439a
    jp nz, $275f

    ld l, e
    dec [hl]
    call $042f
    and $03
    ld e, $b3
    ld [de], a
    inc e
    xor a
    ld [de], a
    jp Jump_00f_4f1f


Jump_00f_4e10:
    ld h, d
    ld l, $83
    bit 7, [hl]
    jp z, Jump_00f_4364

    xor a
    ld [$cca4], a
    ld [$cc02], a
    ld l, $8b
    ld [hl], $56
    ld l, $8d
    ld [hl], $60
    ld e, $82
    ld a, [de]
    or a
    ld a, $02
    jr z, jr_00f_4e32

    ld [hl], $90
    dec a

jr_00f_4e32:
    ld l, $9b
    ld [hl+], a
    ld [hl], a
    ld l, $84
    ld [hl], $0a
    ld l, $88
    ld [hl], $ff
    ld l, $90
    ld [hl], $32
    ld l, $b2
    set 3, [hl]
    set 7, [hl]
    call Call_00f_43bf
    call Call_00f_4f05
    add $04
    ld [hl], a
    jp $2772


Call_00f_4e54:
    ld h, d
    ld l, $b7
    ld a, [hl]
    or a
    jr z, jr_00f_4e5c

    dec [hl]

jr_00f_4e5c:
    ld l, $b2
    bit 3, [hl]
    ret z

    ld l, $b1
    dec [hl]
    ld a, [hl]
    and $07
    ret nz

    ld a, [hl]
    and $18
    swap a
    rlca
    ld hl, $4e77
    rst $10
    ld e, $8f
    ld a, [hl]
    ld [de], a
    ret


    db $fd
    db $fc
    ei
    db $fc

Call_00f_4e7b:
    ld h, d
    ld l, $b2
    bit 0, [hl]
    ret z

    bit 2, [hl]
    jr nz, jr_00f_4ea4

    ld l, $a4
    bit 7, [hl]
    ret z

    ld l, $b9
    ld a, [hl]
    or a
    ld e, $a1
    jr z, jr_00f_4e96

    dec [hl]
    ld a, [de]
    inc a
    ret nz

jr_00f_4e96:
    dec a
    ld [de], a
    ld e, $89
    ld a, [de]
    call Call_00f_4f05
    ld [hl], a
    add $04
    jp $2772


jr_00f_4ea4:
    res 2, [hl]
    ld l, $88
    ld [hl], $ff
    ld l, $b9
    ld [hl], $f0
    call Call_00f_4ec0
    call $1e52
    cp $10
    ld a, $00
    jr c, jr_00f_4ebb

    inc a

jr_00f_4ebb:
    add $08
    jp $2772


Call_00f_4ec0:
    ld b, $4b
    ld e, $82
    ld a, [de]
    or a
    jr z, jr_00f_4eca

    ld b, $4d

jr_00f_4eca:
    jp Jump_00f_437c


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
    call Call_00f_4430
    jr jr_00f_4eeb

Call_00f_4ee0:
Jump_00f_4ee0:
    ld e, $89
    ld a, [de]
    call Call_00f_4f05
    ret z

    ld [hl], a
    jp $2772


Call_00f_4eeb:
jr_00f_4eeb:
    ld e, $89
    ld a, [de]

Call_00f_4eee:
    call Call_00f_4f05
    ret z

    bit 7, [hl]
    ret nz

    ld b, a
    ld e, $b7
    ld a, [de]
    or a
    ret nz

    ld a, $1e
    ld [de], a
    ld a, b
    ld [hl], a
    add $04
    jp $2772


Call_00f_4f05:
    ld c, a
    add $04
    and $18
    swap a
    rlca
    ld b, a
    ld h, d
    ld l, $88
    ld a, c
    and $07
    cp $04
    ld a, b
    ret z

    cp [hl]
    ret


Call_00f_4f1a:
Jump_00f_4f1a:
    ld hl, $4fa3
    jr jr_00f_4f22

Call_00f_4f1f:
Jump_00f_4f1f:
    ld hl, $5007

jr_00f_4f22:
    ld e, $b7
    xor a
    ld [de], a
    ld e, $b4
    ld a, [de]
    ld b, a
    inc a
    ld [de], a
    dec e
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    rst JumpTable
    ld e, $b5
    ld a, [hl+]
    or a
    ret z

    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a

Call_00f_4f3d:
    ld h, d
    ld l, $b5
    call Call_00f_4439
    sub c
    inc a
    cp $03
    jr nc, jr_00f_4f50

    ldh a, [$8f]
    sub b
    inc a
    cp $03
    ret c

jr_00f_4f50:
    call Call_00f_4430
    call Call_00f_4eeb
    call $275f
    or d
    ret


Jump_00f_4f5b:
    call $042f
    rrca
    ld h, d
    ld l, $b2
    jr nc, jr_00f_4f69

    ld a, $32

jr_00f_4f66:
    call $211e

jr_00f_4f69:
    ld a, [hl]
    or $05
    ld [hl], a

jr_00f_4f6d:
    ret


Call_00f_4f6e:
    ld h, d
    ld l, $b2
    bit 0, [hl]
    jr nz, jr_00f_4f7d

    ld a, $32
    call $211e
    bit 0, [hl]
    ret z

jr_00f_4f7d:
    ld l, $88
    bit 7, [hl]
    ret nz

    ld l, $b2

jr_00f_4f84:
    res 0, [hl]
    or d
    ret


Call_00f_4f88:
    ld h, d

jr_00f_4f89:
    ld l, $8f
    ld a, [hl]
    cp $fe
    jr c, jr_00f_4f92

    dec [hl]
    ret


jr_00f_4f92:
    ld l, $b2

jr_00f_4f94:
    ld a, [hl]
    or $18
    ld [hl], a
    xor a
    ret


    ld a, $05
    call $211e
    inc [hl]
    ld h, d
    inc [hl]
    ret


    xor e
    ld c, a
    jp nz, $dd4f

    ld c, a
    xor $4f

jr_00f_4fab:
    ld d, b
    ld e, b
    sub b
    and b
    sub b
    cp b
    ld e, b
    ret nc

    jr nz, jr_00f_4f6d

    jr nz, @-$5e

    sub b
    ld b, b
    sub b
    jr z, jr_00f_5014

    jr jr_00f_4fde

    jr z, jr_00f_4fe0

    ld b, b
    nop
    ld d, b
    ld e, b
    ld [hl], b
    ret nz

    add b
    ret nz

    sub b
    sub b
    sub b
    ld h, b

jr_00f_4fcc:
    add b
    jr nc, jr_00f_503f

    jr nc, jr_00f_5011

    ret nz

    jr nc, jr_00f_4f94

    jr nz, jr_00f_4f66

    jr nz, @+$62

    jr nc, @+$32

    ld b, b
    jr nc, jr_00f_4fdd

jr_00f_4fdd:
    ld d, b

jr_00f_4fde:
    ld e, b
    add b

jr_00f_4fe0:
    add b
    add b
    and b
    ld l, b
    ret nz

    jr c, @-$3e

    jr nz, jr_00f_4f89

    jr nz, @+$52

jr_00f_4feb:
    jr nc, jr_00f_502d

    nop
    ld d, b

jr_00f_4fef:
    ld e, b
    ld h, b
    ld [hl], b
    add b
    ld [hl], b
    sub b
    ld b, b
    ld h, b
    jr z, @+$52

    ld e, b
    ld d, b
    sbc b
    ld h, b
    ret z

jr_00f_4ffe:
    adc b
    cp b
    adc b

jr_00f_5001:
    and b
    jr nz, jr_00f_4f84

    jr nz, jr_00f_5076

    nop
    rrca
    ld d, b
    ld h, $50
    ld b, c
    ld d, b
    ld d, d
    ld d, b
    ld d, b
    sbc b

jr_00f_5011:
    sub b
    ld d, b
    sub b

jr_00f_5014:
    jr c, @+$5a

    jr nz, @+$22

    jr c, jr_00f_503a

jr_00f_501a:
    ld d, b
    sub b
    cp b
    sub b
    ret z

    ld e, b
    ret c

    jr nz, jr_00f_4feb

    jr nz, jr_00f_4fdd

    nop
    ld d, b
    sbc b
    ld [hl], b
    jr nc, jr_00f_4fab

    jr nc, @-$6e

jr_00f_502d:
    ld h, b
    sub b
    sub b
    add b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    jr nc, @+$32

    jr nc, jr_00f_5059

    ld h, b

jr_00f_503a:
    jr nz, jr_00f_4fcc

    jr nc, jr_00f_4ffe

    ld b, b

jr_00f_503f:
    ret nz

    nop
    ld d, b
    sbc b
    add b
    ld [hl], b
    add b
    ld d, b
    ld l, b
    jr nc, jr_00f_5082

    jr nc, @+$22

    ld d, b
    jr nz, jr_00f_4fef

    jr nc, jr_00f_5001

    nop
    ld d, b
    sbc b
    ld d, b
    ld e, b
    ld a, b
    ld c, b
    sub b

jr_00f_5059:
    ld a, b
    ld a, b
    xor b
    ld d, b
    jr nz, jr_00f_508f

    jr nz, @+$2a

    ld b, b
    ld h, b
    and b
    ld d, b
    ret nc

    jr nc, @-$2e

    jr z, jr_00f_501a

    nop
    jr z, jr_00f_50b1

    sub $03
    ret c

    jr nz, jr_00f_50b1

    call $1ce6
    ret nc

jr_00f_5076:
    ld h, d
    ld l, $a9
    ld [hl], $40
    ld l, $84
    ld [hl], $0e
    inc l
    ld [hl], $00

jr_00f_5082:
    inc l
    ld [hl], $78
    ld a, $01
    ld [$cbca], a
    ld a, $67
    call $0c74

jr_00f_508f:
    ld a, $b4
    call Call_00f_56ec
    ld a, $0e
    call $2772
    call $1956
    set 7, [hl]
    ld l, $9a
    set 7, [hl]
    ld l, $9e
    set 7, [hl]
    ld a, $f0
    call $0c74
    ld bc, $2f0e
    jp $184b


jr_00f_50b1:
    ld e, $84
    ld a, [de]
    rst $00
    db $d3
    ld d, b
    ld h, b
    ld d, c
    ld [hl], h
    ld d, c
    adc l
    ld d, c
    xor a
    ld d, c
    rst $10
    ld d, c
    or $51
    add hl, de
    ld d, d
    inc h
    ld d, d
    push bc
    ld d, d
    ld h, d
    ld d, e
    daa
    ld d, h
    add hl, hl
    ld d, l
    ld e, e
    ld d, [hl]
    ld a, c
    ld d, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $9d
    ld [hl], $00
    ld l, $8b
    ld [hl], $48
    ld l, $8d
    ld [hl], $78
    ld l, $8f
    dec [hl]
    ld hl, $d00b
    ld [hl], $88
    ld l, $0d
    ld [hl], $78
    ld l, $08
    ld [hl], $00
    ld l, $00
    ld [hl], $03
    ld hl, $cc07
    ld a, $01
    ld [hl], $16
    inc l
    ld [hl+], a
    ld [hl], $18
    inc l
    ld [hl+], a
    ld [hl], $19
    inc l
    ld [hl+], a
    ld [hl], $1a
    inc l
    ld [hl+], a
    ld [hl], $1b
    inc l
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0012
    call Call_00f_4553
    ld e, $98
    ld a, $c0
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    call $02c1
    ld a, $9e
    ld [$cc4c], a
    ld a, $03
    ld [$ccc4], a
    call $32dc
    call $381a
    call $3737
    call $12dd
    call $128c
    call $1a5e
    ld a, $8b
    call $04e7
    ld a, $b1
    ld [$cbe3], a
    ld a, $b0
    call $0602
    ld a, $02
    call $02ea
    ldh a, [$ad]
    ld d, a
    call $1e30
    jp $3171


    call $2e15
    ret nz

    ld [hl], $60
    ld l, $96
    ld [hl], $80
    inc l
    ld [hl], d
    call Call_00f_4000
    ld l, $87
    ld [hl], $3c
    ret


    ld e, $86
    ld a, [de]
    or a
    ret z

    call Call_00f_43a3
    jp nz, Jump_00f_441f

    dec l
    ld [hl], $c1
    ld l, $84
    inc [hl]
    ld a, $0d
    call $2772
    jp $1e30


    call Call_00f_439a
    jr z, jr_00f_519d

    ld a, [hl]
    and $3f
    ld a, $b8
    call z, $0c74
    jp $275f


jr_00f_519d:
    ld l, e
    inc [hl]
    ld l, $8f
    ld [hl], $00
    ld a, $02
    call $2122
    ld [hl], $02
    ld a, $01
    jp $2772


    ld e, $a1
    ld a, [de]
    inc a
    jp nz, $275f

    call Call_00f_4000
    ld l, $86
    ld [hl], $0f
    ld a, $b1
    call $0602
    ld a, $32
    call $05b6
    ld hl, $cc09
    ld [hl], $17
    inc l
    ld [hl], $01
    ldh a, [$ad]
    ld d, a
    ld a, $02
    jp $2772


    call Call_00f_439a
    ret nz

    ld a, $78
    ld [hl], a
    ld [$cd18], a
    ld l, e
    inc [hl]
    ld a, $67
    call $0c74
    ld a, $03
    call $2772
    call $1a6a
    ldh a, [$ad]
    ld d, a
    jp $3110


    call Call_00f_439a
    jp nz, $275f

    ld [hl], $1e
    ld l, e
    inc [hl]
    ld hl, $cc0d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$cbca], a
    ld [$cca4], a
    ld bc, $2f0d
    call $184b
    ld a, $02
    jp $2772


    ld a, $34
    ld [$cc51], a
    call $0c74
    jp Jump_00f_574e


    inc e
    ld a, [de]
    rst $00
    scf
    ld d, d
    ld a, $52
    ld c, h
    ld d, d
    ld d, l
    ld d, d
    ld l, h
    ld d, d
    ld a, c
    ld d, d
    adc [hl]
    ld d, d
    cp [hl]
    ld d, d
    call Call_00f_571b
    ld l, $85
    inc [hl]
    ret


    call Call_00f_439a
    jp nz, Jump_00f_5704

    ld l, e
    inc [hl]
    call Call_00f_5795
    jp $1e39


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    jp Jump_00f_571b


    call Call_00f_439a
    jp nz, Jump_00f_5730

    ld [hl], $08
    ld l, e
    inc [hl]
    ld l, $b0
    ld a, [hl]
    ld l, $8d
    ld [hl], a
    ld l, $a4
    set 7, [hl]
    jp $1e30


    call Call_00f_439a
    ret nz

    ld [hl], $02
    ld l, e
    inc [hl]
    ld a, $b3
    jp Jump_00f_56ec


    call Call_00f_439a
    ret nz

    ld [hl], $2d
    ld l, e
    inc [hl]
    ld a, $05
    call $2772
    call Call_00f_43bf
    ld bc, $003c
    jr jr_00f_52a9

    call Call_00f_439a
    jr nz, jr_00f_529c

    ld [hl], $3c
    ld l, e
    inc [hl]
    ld a, $02
    jp $2772


jr_00f_529c:
    ld a, [hl]
    cp $19
    ret nz

    ld bc, $0264
    call Call_00f_52a9
    ld bc, $fe64

Call_00f_52a9:
jr_00f_52a9:
    ld e, $52
    call Call_00f_57d2
    ret nz

    ld l, $c9
    ld e, $89
    ld a, [de]
    add b
    and $1f
    ld [hl], a
    ld l, $d0
    ld [hl], c
    jp $21fd


    call Call_00f_439a
    ret nz

    jp Jump_00f_5736


    inc e
    ld a, [de]
    rst $00
    ret c

    ld d, d
    rst JumpTable
    ld d, d
    ld c, h
    ld d, d
    db $f4
    ld d, d
    dec b
    ld d, e
    inc a
    ld d, e
    ld c, [hl]
    ld d, e
    ld e, e
    ld d, e
    call Call_00f_571b
    ld l, $85
    inc [hl]
    ret


    call Call_00f_439a
    jp nz, Jump_00f_5704

    ld [hl], $78
    ld l, e
    inc [hl]
    ld l, $8b
    ld [hl], $58
    ld l, $8d
    ld [hl], $78
    jp $1e39


    call Call_00f_439a
    jp nz, Jump_00f_5730

    ld [hl], $08
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    jp $1e30


    call Call_00f_439a
    ret nz

    ld [hl], $28
    ld l, e
    inc [hl]
    ld a, $b6
    call Call_00f_56ec
    ld a, $09
    call $2772
    ld b, $1c
    call Call_00f_5328
    ld b, $14
    call Call_00f_5328
    ld b, $0c
    call Call_00f_5328
    ld b, $04

Call_00f_5328:
    ld e, $52
    call Call_00f_57d2
    ld l, $c2
    inc [hl]
    ld l, $c9
    ld [hl], b
    ld l, $d7
    ld [hl], d
    dec l
    ld [hl], $80
    jp $21fd


    call Call_00f_439a
    ret nz

    ld [hl], $28
    ld l, e
    inc [hl]
    ld a, $b2
    call Call_00f_56ec
    ld a, $07
    jp $2772


    call Call_00f_439a
    ret nz

    ld [hl], $50
    ld l, e
    inc [hl]
    ld a, $02
    jp $2772


    call Call_00f_439a
    ret nz

    jp Jump_00f_5736


    inc e
    ld a, [de]
    rst $00
    ret c

    ld d, d
    ld [hl], l
    ld d, e
    add d
    ld d, e
    or l
    ld d, e
    jp nc, $e753

    ld d, e
    db $fd
    ld d, e
    dec de
    ld d, h
    call Call_00f_439a
    jp nz, Jump_00f_5704

    ld [hl], $78
    ld l, e
    inc [hl]
    jp $1e39


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ldh a, [$af]
    cp $78
    ld bc, $0328
    jr c, jr_00f_5394

    ld bc, $00d8

jr_00f_5394:
    ld l, $b2
    ld [hl], b
    add c
    ld l, $8d
    ld [hl-], a
    ldh a, [$ae]
    cp $30
    jr c, jr_00f_53a3

    sub $18

jr_00f_53a3:
    dec l
    ld [hl], a
    ld a, $b2
    call Call_00f_56ec
    ld e, $b2
    ld a, [de]
    add $07
    call $2772
    jp Jump_00f_571b


    call Call_00f_439a
    jp nz, Jump_00f_5730

    ld [hl], $02
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $90
    ld [hl], $78
    call Call_00f_43bf
    ld e, $50
    call Call_00f_57d2
    jp $1e30


    call Call_00f_439a
    ret nz

    ld [hl], $04
    ld l, e
    inc [hl]
    ld a, $b7
    call Call_00f_56ec
    ld e, $b2
    ld a, [de]
    add $08
    call $2772
    call Call_00f_439a
    jr nz, jr_00f_5408

    ld [hl], $10
    ld l, e
    inc [hl]
    ld a, $b6
    call Call_00f_56ec
    ld e, $b2
    ld a, [de]
    add $09
    jp $2772


    call Call_00f_439a
    jr nz, jr_00f_5408

    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ret


jr_00f_5408:
    ld e, $8b
    ld a, [de]
    sub $18
    cp $80
    ret nc

    ld e, $8d
    ld a, [de]
    sub $18
    cp $c0
    ret nc

    jp $1fdb


    call Call_00f_439a
    ret nz

    ld a, $02
    call $2772
    jp Jump_00f_5736


    inc e
    ld a, [de]
    rst $00
    ret c

    ld d, d
    ld b, b
    ld d, h
    ld c, l
    ld d, h
    ld l, b
    ld d, h
    add l
    ld d, h
    sbc h
    ld d, h
    call nz, $e954
    ld d, h
    nop
    ld d, l
    dec d
    ld d, l
    ld [hl+], a
    ld d, l
    call Call_00f_439a
    jp nz, Jump_00f_5704

    ld [hl], $b4
    ld l, e
    inc [hl]
    jp $1e39


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $8b
    ld [hl], $28
    ld l, $8d
    ld [hl], $78
    ld a, $b2
    call Call_00f_56ec
    ld a, $04
    call $2772
    jp Jump_00f_571b


    call Call_00f_439a
    jp nz, Jump_00f_5730

    ld [hl], $40
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call $1e30
    ld e, $51
    call Call_00f_57d2
    ret nz

    ld bc, $f810
    jp $2215


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $94
    ld a, $40
    ld [hl+], a
    ld [hl], $fe
    ld a, $b3
    call Call_00f_56ec
    ld a, $05
    jp $2772


    ld c, $20
    call $1f04
    jr z, jr_00f_54b4

    ld a, [hl-]
    or a
    ret nz

    ld a, [hl]
    cp $c0
    ret nz

    ld a, $b5
    call Call_00f_56ec
    ld a, $06
    jp $2772


jr_00f_54b4:
    ld l, $86
    ld a, $78
    ld [hl], a
    ld [$cd18], a
    ld l, $85
    inc [hl]
    ld a, $6f
    jp $0c74


    call Call_00f_439a
    jr z, jr_00f_54db

    ld a, [hl]
    cp $69
    ret c

    ld a, [$d00f]
    rlca
    ret c

    ld hl, $cc6a
    ld a, $14
    ld [hl+], a
    ld [hl], $00
    ret


jr_00f_54db:
    ld [hl], $04
    ld l, e
    inc [hl]
    ld a, $b2
    call Call_00f_56ec
    ld a, $04
    jp $2772


    call Call_00f_439a
    ret nz

    ld [hl], $18
    ld l, e
    inc [hl]
    ld e, $51
    call Call_00f_57d2
    ret nz

    ld l, $c2
    inc [hl]
    ld bc, $f810
    jp $2215


    call Call_00f_439a
    ret nz

    ld [hl], $3c
    ld l, e
    inc [hl]
    call $24ad
    ld a, $b3
    call Call_00f_56ec
    ld a, $05
    jp $2772


    call Call_00f_439a
    ret nz

    ld [hl], $3c
    ld l, e
    inc [hl]
    ld a, $02
    jp $2772


    call Call_00f_439a
    ret nz

    jp Jump_00f_5736


    inc e
    ld a, [de]
    rst $00
    ret c

    ld d, d
    ld b, d
    ld d, l
    ld c, h
    ld d, d
    ld d, a
    ld d, l
    ld l, l
    ld d, l
    sub a
    ld d, l
    and a
    ld d, l
    call $0555
    ld d, [hl]
    dec sp
    ld d, [hl]
    ld d, b
    ld d, [hl]
    call Call_00f_439a
    jp nz, Jump_00f_5704

    ld [hl], $5a
    ld l, e
    inc [hl]
    ld l, $8b
    ld [hl], $58
    ld l, $8d
    ld [hl], $78
    jp $1e39


    call Call_00f_439a
    jp nz, Jump_00f_5730

    ld [hl], $5a
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    call $1e30
    ld a, $b4
    jp $0c74


    call Call_00f_439a
    jr z, jr_00f_5581

    ld a, [hl]
    cp $3c
    ret nc

    and $03
    ret nz

    ld l, $9b
    ld a, [hl]
    xor $05
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_5581:
    ld l, $a9
    ld a, [hl]
    or a
    ret z

    ld l, e
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld l, $9b
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, $02
    jp $3183


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $06
    ld [de], a
    ld a, $04
    call Call_00f_582a
    jp Jump_00f_57df


    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $3c
    ld l, $a4
    set 7, [hl]
    ld l, $90
    ld [hl], $14
    call $042f
    and $07
    ld hl, $55c5
    rst $10
    ld e, $87
    ld a, [hl]
    ld [de], a
    jp $31be


    ld [hl-], a
    ld d, b
    ld d, b
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    sub [hl]
    ld a, $02
    ld [$cbc3], a
    ld a, [$cc00]
    and $03
    jr nz, jr_00f_55e9

    call Call_00f_43a3
    jr nz, jr_00f_55e9

    ld l, $85
    inc [hl]
    inc [hl]
    ld l, $a4
    res 7, [hl]
    jp $313b


jr_00f_55e9:
    call Call_00f_439a
    jr nz, jr_00f_55f9

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $50
    ld a, $b3
    jp Jump_00f_56ec


jr_00f_55f9:
    call Call_00f_43bf
    call Call_00f_4156
    call $275f
    jp Jump_00f_580b


    ld a, $02
    ld [$cbc3], a
    call Call_00f_580b
    ld a, [$cc00]
    and $03
    call z, Call_00f_43a3
    call Call_00f_439a
    jr z, jr_00f_5630

    ld a, [hl]
    cp $3c
    ret nz

    ld a, $05
    call $2772
    ld e, $52
    call Call_00f_57d2
    ret nz

    ld l, $c2
    ld [hl], $02
    jp $21fd


jr_00f_5630:
    ld l, $85
    dec [hl]
    inc l
    ld [hl], $3c
    ld a, $02
    jp $2772


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $0a
    ld [de], a
    ld a, $03
    call Call_00f_582a
    ld a, $b1
    ld [$cbe3], a
    jp $04e7


    ld h, d
    ld l, $a4
    set 7, [hl]
    call $3110
    jp Jump_00f_5736


    inc e
    ld a, [de]
    rst $00
    scf
    ld d, d
    ld a, $52
    ld c, h
    ld d, d
    ld l, b
    ld d, [hl]
    ld [hl], $57
    call Call_00f_439a
    jp nz, Jump_00f_5730

    ld l, e
    inc [hl]
    ld l, $b0
    ld a, [hl]
    ld l, $8d
    ld [hl], a
    jp $1e30


    inc e
    ld a, [de]
    rst $00
    add h
    ld d, [hl]
    or e
    ld d, [hl]
    push bc
    ld d, [hl]
    reti


    ld d, [hl]
    call Call_00f_439a
    jp nz, Jump_00f_441f

    inc [hl]
    ld e, $04
    call Call_00f_57d2
    ret nz

    ld l, $c2
    inc [hl]
    call $21fd
    ld e, $98
    ld a, $c0
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld hl, $cc30
    inc [hl]
    ld h, d
    ld l, $85
    inc [hl]
    ld l, $8f
    ld [hl], $00
    call $1e39
    ld a, $bc
    jp $0c74


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $08
    jp $313b


    call Call_00f_439a
    ret nz

    ld [hl], $1e
    ld l, e
    inc [hl]
    xor a
    ld [$cbe3], a
    call Call_00f_582a
    ld a, $02
    jp $315c


    ld a, [$c4ab]
    or a
    ret nz

    call Call_00f_439a
    ret nz

    xor a
    ld [$cbca], a
    call $249f
    jp $2e28


Call_00f_56ec:
Jump_00f_56ec:
    push af
    call $0602
    ld a, $33
    call $05b6
    pop af
    sub $b2
    add $1e
    ld hl, $cc0b
    ld [hl+], a
    ld [hl], $01
    ldh a, [$ad]
    ld d, a
    ret


Jump_00f_5704:
    ld a, [hl]
    and $3e
    rrca
    ld b, a
    ld a, $20
    sub b

jr_00f_570c:
    bit 1, [hl]
    jr z, jr_00f_5712

    cpl
    inc a

jr_00f_5712:
    ld l, $b0
    add [hl]
    ld l, $8d
    ld [hl], a
    jp Jump_00f_441f


Call_00f_571b:
Jump_00f_571b:
    ld a, $8d
    call $0c74
    ld h, d
    ld l, $a4
    res 7, [hl]
    ld l, $86
    ld [hl], $3c
    ld l, $8d
    ld a, [hl]
    ld l, $b0
    ld [hl], a
    ret


Jump_00f_5730:
    ld a, [hl]
    and $3e
    rrca
    jr jr_00f_570c

Jump_00f_5736:
    ld h, d
    ld l, $b5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    or a
    jr z, jr_00f_574e

jr_00f_5740:
    ld e, $84
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $b5
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


Jump_00f_574e:
jr_00f_574e:
    ld e, $a9
    ld a, [de]
    cp $41
    ld c, $00
    jr nc, jr_00f_5759

    ld c, $04

jr_00f_5759:
    call $041a
    and $03
    add c
    ld hl, $5769
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    jr jr_00f_5740

    ld a, c
    ld d, a
    ld a, l
    ld d, a
    ld a, a
    ld d, a
    add h

jr_00f_5770:
    ld d, a
    add a
    ld d, a
    adc c
    ld d, a
    adc [hl]
    ld d, a
    sub e
    ld d, a
    ld [$090a], sp
    nop
    add hl, bc
    nop
    ld a, [bc]
    ld [$0a09], sp
    nop
    ld a, [bc]
    ld [$0c00], sp
    nop
    dec bc
    dec c
    ld [$000a], sp
    dec bc
    inc c
    add hl, bc
    ld a, [bc]
    nop
    dec c
    nop

Call_00f_5795:
    ld bc, $0e0f
    call $434f
    ld a, b
    ld hl, $57b2
    rst $10
    ld e, $8b
    ld a, [hl+]
    ld [de], a
    ld e, $8d
    ld a, [hl]
    ld [de], a
    ld a, c
    ld hl, $57c2
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    jr nc, @+$3a

    jr nc, @+$7a

    jr nc, jr_00f_5770

    ld e, b
    ld e, b
    ld e, b
    sbc b
    add b
    jr c, @-$7e

    ld a, b
    add b
    cp b
    jr z, @+$2a

    jr z, @+$3e

    inc a
    inc a
    inc a
    inc a
    inc a
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld a, b
    ld a, b

Call_00f_57d2:
    call $3ea7
    ret nz

    ld [hl], e
    ld l, $d6
    ld [hl], $80
    inc l
    ld [hl], d
    xor a
    ret


Jump_00f_57df:
    ld hl, $ce10
    ld b, $09

jr_00f_57e4:
    ld [hl], $0f
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_00f_57e4

    ld l, $1e
    ld b, $09

jr_00f_57f1:
    ld [hl], $0f
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_00f_57f1

    ld l, $00
    ld a, $0f
    ld b, a

jr_00f_57ff:
    ld [hl+], a
    dec b
    jr nz, jr_00f_57ff

    ld l, $a0
    ld b, a

jr_00f_5806:
    ld [hl+], a
    dec b
    jr nz, jr_00f_5806

    ret


Call_00f_580b:
Jump_00f_580b:
    ld a, [$cd00]
    and $01
    ret z

    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cc00]
    rrca
    ret c

    ld h, d
    ld l, $b7
    ld a, [hl]
    inc [hl]
    and $07
    add $b1
    ld [$cbe3], a
    jp $04e7


Call_00f_582a:
    ld [$ccc4], a
    call $12dd
    ldh a, [$ad]
    ld d, a
    ret


    ret


    jr z, jr_00f_5875

    sub $03
    ret c

    jr nz, jr_00f_586e

    ld e, $a4
    ld a, [de]
    or a
    jr z, jr_00f_5847

    ld a, $f0
    call $0c74

jr_00f_5847:
    ld e, $b2
    ld a, [de]
    or a
    jr nz, jr_00f_586b

    call $1cf0
    jr nc, jr_00f_586b

    ld a, $ff
    ld [$cbca], a
    ld [$cc02], a
    ld h, d
    ld l, $a4
    ld [hl], $00
    ld l, $b2
    inc [hl]
    ld l, $86
    ld [hl], $78
    ld a, $67
    call $0c74

jr_00f_586b:
    jp Jump_00f_450f


jr_00f_586e:
    ld e, $82
    ld a, [de]
    or a
    call z, Call_00f_5c75

jr_00f_5875:
    call Call_00f_4426
    jr nc, jr_00f_588b

    rst $00
    sub e
    ld e, b
    push bc
    ld e, b
    push bc
    ld e, b
    push bc
    ld e, b
    push bc
    ld e, b
    push bc
    ld e, b
    push bc
    ld e, b
    push bc
    ld e, b

jr_00f_588b:
    ld a, b
    rst $00
    add $58
    ld e, l
    ld e, d
    and [hl]
    ld e, e
    ld a, b
    cp $02
    jr z, jr_00f_58b0

    ld bc, $0210
    call Call_00f_4553
    ret nz

    ld a, $02
    ld b, $89
    call Call_00f_4565
    ld a, $01
    ld [$cc17], a
    ld a, $0a
    jp Jump_00f_4364


jr_00f_58b0:
    ld a, $89
    call $04e7
    ld a, $01
    ld [$cfcf], a
    ld [$cbca], a
    call Call_00f_4364
    ld a, $53
    jp $0c74


    ret


    ld a, [de]
    sub $08
    rst $00
    call nc, $ed58
    ld e, b
    ld e, a
    ld e, c
    ld l, h
    ld e, c
    ld e, $5a
    ld b, $47
    call Call_00f_437c
    ret nz

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $89
    ld [hl], $10
    ld l, $8b
    ld [hl], $18
    ld l, $8d
    ld [hl], $78
    jp $1e30


    inc e
    ld a, [de]
    rst $00
    ld hl, sp+$58
    add hl, bc
    ld e, c
    add hl, hl
    ld e, c
    inc a
    ld e, c
    ld a, $05
    call $2122
    ld a, [hl]
    cp $04
    ret nz

    ld h, d
    ld l, $85
    inc [hl]
    ld l, $87
    ld [hl], $1e
    call Call_00f_43a3
    ret nz

    ld a, [$cc00]
    and $1f
    ld a, $70
    call z, $0c74
    call $1fdb
    ld e, $8b
    ld a, [de]
    cp $48
    jp nz, $275f

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $08
    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld bc, $501c
    call $196b
    jr z, jr_00f_5939

    ld c, $20

jr_00f_5939:
    jp $184b


    ld e, $90
    ld a, $0f
    ld [de], a
    ld a, $2e
    ld [$cc51], a
    call $0c74
    ld a, $04
    call $2122
    inc [hl]

Jump_00f_594f:
    ld h, d
    ld l, $84
    ld [hl], $0a
    inc l
    ld [hl], $00
    inc l
    ld [hl], $2d
    ld a, $02
    jp $2772


    call Call_00f_439a
    ret nz

    ld [hl], $b4
    inc l
    ld [hl], $0a
    ld l, e
    inc [hl]
    jr jr_00f_59c0

    inc e
    ld a, [de]
    rst $00
    ld [hl], l
    ld e, c
    jp $fe59


    ld e, c
    call Call_00f_439a
    jr nz, jr_00f_598b

    ld a, $24
    call $2122
    res 7, [hl]
    ld l, $da
    res 7, [hl]
    ld l, $c4
    ld [hl], $08
    jr jr_00f_5a06

Jump_00f_598b:
jr_00f_598b:
    call Call_00f_5c3b
    jr nc, jr_00f_59b1

    call $275f
    call Call_00f_43a3
    jr nz, jr_00f_59c0

    ld a, $09
    call $2122
    ld a, [hl]
    sub $0e
    cp $07
    jr nc, jr_00f_59c0

    ld l, $c4
    inc [hl]
    ld e, $85
    ld a, $01
    ld [de], a
    ld a, $05
    jp $2772


jr_00f_59b1:
    ld l, $87
    ld [hl], $0a
    ld a, [$cc00]
    and $07
    call z, Call_00f_5c4e
    call Call_00f_4156

jr_00f_59c0:
    jp $275f


    ld a, $09
    call $2122
    ld a, [hl]
    cp $03
    ret nz

    ld l, $c4
    inc [hl]
    ld l, $e8
    ld [hl], $f8
    ld l, $c9
    ld [hl], $0e
    ld l, $c6
    ld [hl], $00
    ld l, $cb
    ld e, $8b
    ld a, [de]
    sub $10
    ld [hl], a
    ld l, $f0
    add $21
    ld [hl], a
    ld l, $cd
    ld e, $8d
    ld a, [de]
    add $08
    ld [hl], a
    ld l, $f1
    add $f9
    ld [hl], a
    ld e, $85
    ld a, $02
    ld [de], a
    inc a
    jp $2772


    ld a, $24
    call $2122
    bit 7, [hl]
    ret nz

jr_00f_5a06:
    call $042f
    cp $8c
    jp c, Jump_00f_594f

    ld h, d
    ld l, $84
    inc [hl]
    inc l
    ld [hl], $00
    ld l, $86
    ld [hl], $10
    ld a, $04
    jp $2772


    inc e
    ld a, [de]
    rst $00
    daa
    ld e, d
    inc a
    ld e, d
    ld d, [hl]
    ld e, d
    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $94
    ld a, $c0
    ld [hl+], a
    ld [hl], $fd
    ld a, $81
    call $0c74
    jp $1e1e


    ld c, $20
    call $1f04
    ret nz

    ld l, $85
    inc [hl]
    inc l
    ld a, $b4
    ld [hl], a
    call $24a7
    call $1e30
    call $3ea7
    ret nz

    ld [hl], $48
    ret


    call Call_00f_439a
    ret nz

    jp Jump_00f_594f


    ld a, [de]
    sub $08
    rst $00
    ld l, l
    ld e, d
    adc h
    ld e, d
    ld e, a
    ld e, c
    db $fc
    ld e, d
    ld e, e
    ld e, e
    ld l, e
    ld e, e
    ld c, $20
    call $1f04
    ret nz

    ld l, $84
    inc [hl]
    inc l
    xor a
    ld [hl], a
    ld [$cd18], a
    ld [$cd19], a
    ld l, $b0
    dec a
    ld [hl+], a
    ld [hl], a
    ld a, $01
    call $2772
    jp $1e30


    inc e
    ld a, [de]
    rst $00
    sub l
    ld e, d
    xor a
    ld e, d
    sub $5a
    ld e, $ab
    ld a, [de]
    or a
    ret nz

    ld a, [$cc34]
    or a
    ret nz

    inc a
    ld [$cca4], a
    ld [$cbca], a
    ld e, $85
    ld [de], a
    ld bc, $501d
    jp $184b


    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $64
    ld a, $00
    call $211e
    ld bc, $18f8
    call $2215
    ldh a, [$a8]
    ld b, a
    ld l, $cb
    ld a, [hl]
    sub b
    cpl
    inc a
    sub $10
    ld l, $cf
    ld [hl], a
    ld l, $da
    ld [hl], $81
    ld l, $c4
    inc [hl]
    ret


    call Call_00f_439a
    ret nz

    ld l, $a4
    set 7, [hl]
    xor a
    ld [$cca4], a
    ld [$cbca], a

Jump_00f_5ae5:
jr_00f_5ae5:
    ld h, d
    ld l, $84
    ld [hl], $0a
    inc l
    ld [hl], $00
    ld l, $86
    ld [hl], $2d
    ld l, $b1
    ld a, [hl-]
    ld [hl+], a
    ld [hl], $00
    ld a, $02
    jp $2772


    inc e
    ld a, [de]
    rst $00
    dec b
    ld e, e
    jp $1a59


    ld e, e
    call Call_00f_439a
    jp nz, Jump_00f_598b

    ld a, $24
    call $2122
    res 7, [hl]
    ld l, $da
    res 7, [hl]
    ld l, $c4
    ld [hl], $08
    ld a, $24
    call $2122
    bit 7, [hl]
    ret nz

    ld h, d
    ld l, $b0
    ld a, [hl+]
    cp [hl]
    ld l, $85
    ld [hl], $00
    jr z, jr_00f_5b49

    call $041a
    rrca
    jr c, jr_00f_5ae5

    ld h, d
    dec l
    ld [hl], $0d
    ld l, $b1
    ld a, [hl-]
    ld [hl+], a
    ld [hl], $02
    call Call_00f_5c63
    ld e, $86
    ld a, [de]
    dec a
    ret z

    xor a
    jp $2772


jr_00f_5b49:
    dec l
    ld [hl], $0c
    ld l, $86
    ld [hl], $10
    ld l, $b1
    ld a, [hl-]
    ld [hl+], a
    ld [hl], $01
    ld a, $04
    jp $2772


    inc e
    ld a, [de]
    rst $00
    daa
    ld e, d
    inc a
    ld e, d
    ld h, h
    ld e, e
    call Call_00f_439a
    ret nz

    jp Jump_00f_5ae5


    inc e
    ld a, [de]
    rst $00
    ld [hl], h
    ld e, e
    adc l
    ld e, e
    ld [hl+], a
    ld e, e
    call Call_00f_439a
    jr nz, jr_00f_5b84

    inc [hl]
    inc l
    ld [hl], $04
    ld l, e
    inc [hl]
    ld a, $03
    jp $2772


jr_00f_5b84:
    call Call_00f_43bf
    call $1fdb
    jp $275f


    call Call_00f_439a
    ret nz

    ld [hl], $2d
    inc l
    dec [hl]
    jr z, jr_00f_5ba3

    call $3ea7
    ret nz

    ld [hl], $49
    ld bc, $19f9
    jp $2215


jr_00f_5ba3:
    ld l, e
    inc [hl]
    ret


    ld a, [de]
    sub $08
    rst $00
    or h
    ld e, e
    ldh [$5b], a
    di
    ld e, e
    daa
    ld e, h
    cpl
    ld e, h
    ld a, [$cc77]
    or a
    ret nz

    ld [$cfcf], a
    inc a
    ld [$cca4], a
    ld h, d
    ld l, $8b
    ld [hl], $50
    ld l, $8d
    ld [hl], $50
    ld bc, $0b02
    call $24b1
    ret nz

    ld e, $98
    ld a, $40
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $84
    ld a, $09
    ld [de], a
    jp $2b57


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $5a
    call $1e27
    call Call_00f_439a
    jr z, jr_00f_5c06

    ld a, [hl]
    and $1c
    rrca
    rrca
    ld hl, $5c1f
    rst $10
    ld e, $8b
    ld a, [hl]
    ld [de], a
    ret


jr_00f_5c06:
    ld [hl], $5a
    ld l, e
    inc [hl]
    ld a, $30
    ld [$cd08], a
    ld a, $08
    ld [$cbae], a
    ld a, $06
    ld [$cbac], a
    ld bc, $5022
    jp $184b


    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, d
    ld d, c
    ld d, b
    ld c, a
    ld e, $84
    ld a, $0c
    ld [de], a
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cfc8
    inc [hl]
    jp $2e28


Call_00f_5c3b:
    ld h, d
    ld l, $8b
    ldh a, [$ae]
    sub [hl]
    cp $30
    ret nc

    ld l, $8d
    ldh a, [$af]
    sub [hl]
    add $10
    cp $21
    ret


Call_00f_5c4e:
    ldh a, [$ae]
    sub $18
    cp $98
    jr c, jr_00f_5c58

    ld a, $10

jr_00f_5c58:
    ld b, a
    ldh a, [$af]
    ld c, a
    call $1e62
    ld e, $89
    ld [de], a
    ret


Call_00f_5c63:
    call $042f
    and $03
    ld hl, $5c71
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    ld bc, $3c1e
    ld e, d

Call_00f_5c75:
    ld e, $a9
    ld a, [de]
    cp $28
    ret nc

    ld h, d
    ld l, $82
    inc [hl]
    ld l, $84
    ld [hl], $08
    ld l, $a4
    res 7, [hl]
    ld a, $24
    call $2122
    res 7, [hl]
    ld l, $da
    res 7, [hl]
    ld l, $c4
    ld [hl], $08
    ld a, $67
    jp $0c74


    jr z, jr_00f_5cdc

    sub $03
    ret c

    jr nz, jr_00f_5cb6

    ld h, d
    ld l, $a4
    res 7, [hl]
    xor a
    ld l, $85
    ld [hl-], a
    ld [hl], $0e
    ld l, $a9
    inc a
    ld [hl], a
    ld [$cbca], a
    jr jr_00f_5cdc

jr_00f_5cb6:
    ld e, $82
    ld a, [de]
    dec a
    jr nz, jr_00f_5cdc

    ld e, $aa
    ld a, [de]
    res 7, a
    sub $04
    cp $06
    jr nc, jr_00f_5cdc

    ld h, d
    ld l, $ab
    ld [hl], $3c
    ld l, $b7
    ld [hl], $01
    ld l, $b1
    ld [hl], $06
    inc l
    ld [hl], $04
    ld a, $06
    call Call_00f_66c3

jr_00f_5cdc:
    ld e, $82
    ld a, [de]
    ld b, a
    ld e, $84
    ld a, b
    rst $00
    ld hl, sp+$5c
    ld [hl-], a
    ld e, l
    cp l
    ld h, c
    rst $28
    ld h, c
    ld hl, $f862
    ld h, e
    ld d, c
    ld h, h
    adc d
    ld h, h
    xor l
    ld h, h
    ld [$3e64], a
    dec b
    ld b, $8a
    call Call_00f_4565
    xor a
    ld [$cc6a], a
    inc a
    ld [$cc17], a
    ld [$cbca], a
    ld b, $09
    call $20b5
    ret nz

    ld b, $05
    call Call_00f_436d
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    ld a, h
    ld hl, $cfd7
    ld [hl+], a
    ld c, $08

jr_00f_5d21:
    push hl
    call Call_00f_436d
    ld a, $0a
    sub c
    ld [hl], a
    ld a, h
    pop hl
    ld [hl+], a
    dec c
    jr nz, jr_00f_5d21

    jp $2e28


    ld e, $84
    ld a, [de]
    sub $02
    cp $0c
    jr nc, jr_00f_5d45

    ld a, [$cc00]
    and $3f
    ld a, $7c
    call z, $0c74

jr_00f_5d45:
    call Call_00f_5d73
    call z, Call_00f_5d51
    call Call_00f_65c7
    jp Jump_00f_65fc


Call_00f_5d51:
    ld e, $84
    ld a, [de]
    rst $00
    and [hl]
    ld e, l
    db $d3
    ld e, l
    rrca
    ld e, [hl]
    jp $d75e


    ld e, [hl]
    ld a, [$c35e]
    ld e, [hl]
    add e
    ld e, a
    sbc d
    ld e, a
    jp $6d5e


    ld h, b
    add h
    ld h, b
    jp $365e


    ld h, c
    ld b, d
    ld h, c

Call_00f_5d73:
    ld e, $84
    ld a, [de]
    cp $0e
    ret z

    ld b, a
    ld e, $ab
    ld a, [de]
    or a
    ret z

    dec a
    ret nz

    ld a, b
    cp $08
    jr nz, jr_00f_5d9c

    ld e, $85
    ld a, [de]
    sub $02
    cp $02
    jr nc, jr_00f_5d9c

    ld e, $89
    ld a, [de]
    bit 4, a
    ld a, $08
    jr nz, jr_00f_5da3

    ld a, $09
    jr jr_00f_5da3

jr_00f_5d9c:
    ld e, $b0
    ld a, [de]
    and $01
    add $00

jr_00f_5da3:
    jp Jump_00f_66c3


    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $5a
    ld l, $90
    ld [hl], $14
    ld l, $a4
    set 7, [hl]
    ld l, $9b
    ld a, $05
    ld [hl+], a
    ld [hl], a
    ld l, $b1
    ld [hl], $14
    inc l
    ld [hl], $0c
    call $196b
    jr nz, jr_00f_5dcb

    ld l, $a9
    ld [hl], $22

jr_00f_5dcb:
    call $1e30
    ld a, $04
    jp $315c


    inc e
    ld a, [de]
    or a
    jr nz, jr_00f_5df8

    call Call_00f_439a
    jr z, jr_00f_5de6

    ld a, [hl]
    cp $3c
    ret nz

    ld a, $7c
    jp $0c74


jr_00f_5de6:
    ld l, e
    inc [hl]
    ld a, $08
    ld [$cbae], a
    ld a, $06
    ld [$cbac], a
    ld bc, $501e
    jp $184b


jr_00f_5df8:
    ld h, d
    ld l, e
    xor a
    ld [hl-], a
    inc [hl]
    xor a
    ld [$cbca], a
    ld [$cca4], a
    ld [$cc02], a
    ld a, $32
    ld [$cc51], a
    jp $0c74


    ld h, d
    ld l, $b7
    bit 0, [hl]
    jr z, jr_00f_5e1c

    ld [hl], $00
    ld l, $87
    ld [hl], $00

jr_00f_5e1c:
    inc e
    ld a, [de]
    rst $00
    add hl, hl
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    ld e, d
    ld e, [hl]
    sbc a
    ld e, [hl]
    or a
    ld e, [hl]
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    inc l
    ld [hl], $10
    ld l, $90
    ld [hl], $1e
    ld l, $b3
    ld [hl], $00
    call $042f
    and $01
    ld b, $00
    jr nz, jr_00f_5e46

    dec a
    ld b, $10

jr_00f_5e46:
    ld e, $b4
    ld [de], a
    ld e, $89
    ld a, b
    ld [de], a
    ret


jr_00f_5e4e:
    call Call_00f_43a3
    jp z, $665c

    ld l, e
    ld [hl], $02
    call Call_00f_6637
    call Call_00f_439a
    jr nz, jr_00f_5e74

    ld [hl], $1e
    ld a, [$cfcc]
    sub $10
    cp $40
    jr c, jr_00f_5e74

    call $041a
    cp $a0
    jr nc, jr_00f_5e74

    ld l, e
    inc [hl]
    ret


jr_00f_5e74:
    ld l, $b5
    ld b, [hl]
    inc l
    ld c, [hl]
    ld a, [$cfcc]
    ld h, a
    ld a, [$cfcd]
    ld l, a
    sub c
    add $06
    cp $0d
    jr nc, jr_00f_5e90

    ld a, h
    sub b
    add $06
    cp $0d
    jr c, jr_00f_5e4e

jr_00f_5e90:
    ld e, $86
    ld a, [de]
    rrca
    jr c, jr_00f_5e9c

    call Call_00f_6529
    call $1f92

jr_00f_5e9c:
    jp Jump_00f_650d


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $8d
    ld a, [$d00d]
    cp [hl]
    ld hl, $cfda
    jr c, jr_00f_5eb1

    inc l

jr_00f_5eb1:
    ld h, [hl]
    ld l, $b0
    ld [hl], $01
    ret


    ld h, d
    ld l, $86
    bit 0, [hl]
    ret z

    ld [hl], $96
    ld l, e
    ld [hl], $02
    ret


    call Call_00f_439a
    jr nz, jr_00f_5ecb

    ld l, e
    inc [hl]
    ret


jr_00f_5ecb:
    ld l, $b5
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $66aa
    ret nz

    jp Jump_00f_6680


    call $042f
    ld b, a
    call Call_00f_66cc
    ld e, $a9
    ld a, [de]
    cp c
    ld a, b
    jr nc, jr_00f_5ee8

    rrca
    jr jr_00f_5eea

jr_00f_5ee8:
    cp $a0

jr_00f_5eea:
    ld a, $05
    jr c, jr_00f_5ef0

    ld a, $08

jr_00f_5ef0:
    ld e, $84
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $b7
    ld [de], a
    ret


    ld h, d
    ld l, $b7
    bit 0, [hl]
    jr z, jr_00f_5f07

    ld [hl], $00
    ld l, $87
    ld [hl], $00

jr_00f_5f07:
    inc e
    ld a, [de]
    rst $00
    ld [de], a
    ld e, a
    jr nz, @+$61

    ld a, $5f
    ld d, d
    ld e, a
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $2d
    inc l
    ld [hl], $04
    ld l, $90
    ld [hl], $19
    ret


    call Call_00f_439a
    jr z, jr_00f_5f30

    ld a, [$d00d]
    sub $50
    ld c, a
    ld b, $00
    jp $66aa


jr_00f_5f30:
    ld [hl], $1e
    ld l, e
    inc [hl]
    ld l, $b0
    ld a, [hl]
    and $01
    add $02
    jp Jump_00f_66c3


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $1e
    ld l, $b0
    ld a, [hl]
    and $01
    add $04
    jp Jump_00f_66c3


    call Call_00f_439a
    jr z, jr_00f_5f6c

    ld a, [hl]
    cp $14
    ret nz

    call $3ea7
    ret nz

    ld [hl], $33
    ld bc, $1800
    call $2215
    ld a, $7f
    jp $0c74


jr_00f_5f6c:
    ld l, $b0
    ld a, [hl]
    and $01
    add $00
    call Call_00f_66c3
    call Call_00f_43a3
    jp z, $665c

    dec l
    ld [hl], $2d
    dec l
    ld [hl], $01
    ret


    call Call_00f_66cc
    ld e, $a9
    ld a, [de]
    cp c
    ld a, $08
    jr nc, jr_00f_5f90

    ld a, $0b

jr_00f_5f90:
    ld e, $84
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $b7
    ld [de], a
    ret


    inc e
    ld a, [de]
    rst $00
    xor e
    ld e, a
    call nz, $ec5f
    ld e, a
    ld a, [bc]
    ld h, b
    inc hl
    ld h, b
    ld b, b
    ld h, b
    ld h, h
    ld h, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld bc, $20c0
    ld l, $8d
    ld a, [hl]
    cp $50
    jr c, jr_00f_5fbe

    ld c, $40

jr_00f_5fbe:
    ld l, $b5
    ld [hl], b
    inc l
    ld [hl], c
    ret


    ld h, d
    ld l, $b5
    ld b, [hl]
    inc l
    ld c, [hl]
    call $66aa
    ret nz

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $1e
    ld l, $b6
    bit 7, [hl]
    ld a, $09
    ld bc, $0848
    jr nz, jr_00f_5fe5

    ld a, $08
    ld bc, $18b8

jr_00f_5fe5:
    ld [hl], c
    ld l, $89
    ld [hl], b
    jp Jump_00f_66c3


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $5a
    ld l, $b6
    bit 7, [hl]
    ld hl, $cfda
    jr z, jr_00f_6000

    inc l

jr_00f_6000:
    ld h, [hl]
    ld l, $b0
    ld [hl], $02
    ld a, $7f
    jp $0c74


    ld h, d
    ld l, $b6
    ld a, [$cfcd]
    sub [hl]
    add $02
    cp $05
    jp nc, Jump_00f_650d

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ld a, $00
    jp Jump_00f_66c3


    call Call_00f_439a
    ld a, [hl]
    and $03
    jr nz, jr_00f_602f

    xor a
    call $1f92

jr_00f_602f:
    call Call_00f_650d
    ld a, [$cfcc]
    cp $d0
    ret nz

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $00
    ret


    call Call_00f_439a
    ld bc, $b000
    ld a, [$cfcd]
    or a
    jr nz, jr_00f_604f

    ld l, e
    inc [hl]
    ret


jr_00f_604f:
    ld l, a
    ld a, [$cfcc]
    ld h, a
    ld e, $86
    ld a, [de]
    and $03
    jr nz, jr_00f_6061

    call Call_00f_6529
    call $1f92

jr_00f_6061:
    jp Jump_00f_650d


    ld hl, $cfcc
    inc [hl]
    ret nz

    ld h, d
    jp $665c


    call Call_00f_66cc
    ld e, $a9
    ld a, [de]
    cp c
    ld a, $02
    jr nc, jr_00f_607a

    ld a, $0b

jr_00f_607a:
    ld e, $84
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $b7
    ld [de], a
    ret


    ld h, d
    ld l, $b7
    bit 0, [hl]
    jr z, jr_00f_608f

    ld l, $84
    inc [hl]
    ret


jr_00f_608f:
    inc e
    ld a, [de]
    rst $00
    sbc d
    ld h, b
    and d
    ld h, b
    cp d
    ld h, b
    call c, Call_00f_6260
    ld l, e

jr_00f_609c:
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ret


    ld bc, $f800
    call $66aa
    ret nz

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $3c
    ld l, $b0
    ld a, [hl]
    and $01
    add $02
    jp Jump_00f_66c3


    call Call_00f_439a
    jr z, jr_00f_60cd

    ld a, [hl]
    cp $1e
    ret nz

    ld l, $b0
    ld a, [hl]
    and $01
    add $04
    jp Jump_00f_66c3


jr_00f_60cd:
    inc [hl]
    inc l
    ld [hl], $18
    ld l, e
    inc [hl]
    call $042f
    and $18
    ld e, $b3
    ld [de], a
    ret


    call Call_00f_439a
    ret nz

    ld [hl], $14
    ld l, $b3
    ld a, [hl]
    ld hl, $6116
    rst $10
    ld c, [hl]
    call $3ea7
    ret nz

    ld [hl], $4a
    ld l, $f1
    ld [hl], c
    ld bc, $1800
    call $2215
    ld a, $a4
    call $0c74
    ld e, $b3
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    call Call_00f_43a3
    ret nz

    ld l, $84
    inc [hl]
    ld l, $b0
    ld a, [hl]
    and $01
    add $00
    jp Jump_00f_66c3


    ld [$18a0], sp
    sub b
    jr z, jr_00f_609c

    jr c, @+$72

    ld c, b
    ld h, b
    ld e, b
    ld d, b
    ld l, b
    ld b, b
    ld a, b
    jr nc, @-$76

    jr nz, @-$66

    stop
    ld d, b
    jr nc, jr_00f_619e

    db $10
    sub b
    ld b, b
    ld h, b
    jr nz, @-$7e

    ld [$1e98], sp
    add h
    ld a, $02
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $b7
    ld [de], a
    ret


    inc e
    ld a, [de]
    rst $00
    ld c, e
    ld h, c
    sub e
    ld h, c
    sbc e
    ld h, c
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $00
    ld l, $89
    ld [hl], $10
    ld l, $90
    ld [hl], $0a
    ld l, $a4
    res 7, [hl]
    ld a, [$cfda]
    ld h, a
    res 7, [hl]
    ld a, [$cfdb]
    ld h, a
    res 7, [hl]
    ld a, $04
    ld [$cfc8], a
    ld a, $f0
    call $0c74
    ld a, [$cfcd]
    cpl
    inc a
    ld [$cd09], a
    ld a, [$cfcc]
    cpl
    inc a
    ld [$cd08], a
    ld a, $08
    ld [$cbae], a
    ld a, $04
    ld [$cbac], a
    ld bc, $501f
    jp $1847


    ld a, $02
    ld [de], a
    ld a, $bc
    jp $0c74


    ld a, [$cc00]

jr_00f_619e:
    and $0f
    ld a, $b3
    call z, $0c74
    call Call_00f_439a
    ld a, [hl]
    and $03
    ld hl, $61b9
    rst $10
    ld a, [$cfcd]
    add [hl]
    ld [$cfcd], a
    jp Jump_00f_650d


    db $fd
    ld b, $fc
    ld bc, $c71a
    jp $ce61


    ld h, c
    ld h, d
    ld l, e
    inc [hl]
    ld a, $09
    call $2772
    call $1e30
    ld a, [$cfca]
    cp $08
    ld bc, $603a
    jr c, jr_00f_61e0

    ld bc, $5238
    jr z, jr_00f_61e0

    ld bc, $6640

jr_00f_61e0:
    ld e, $8b
    ld a, [$cfcc]
    add b
    ld [de], a
    ld e, $8d
    ld a, [$cfcd]
    add c
    ld [de], a
    ret


    ld a, [de]
    rst $00
    push af
    ld h, c
    nop
    ld h, d
    ld h, d
    ld l, e
    inc [hl]
    ld a, $0a
    call $2772
    call $1e30
    ld a, [$cfca]
    cp $08
    ld bc, $6066
    jr c, jr_00f_6212

    ld bc, $6660
    jr z, jr_00f_6212

    ld bc, $5268

jr_00f_6212:
    ld e, $8b
    ld a, [$cfcc]
    add b
    ld [de], a
    ld e, $8d
    ld a, [$cfcd]
    add c
    ld [de], a
    ret


    ld a, [de]
    rst $00
    dec hl
    ld h, d
    ld c, [hl]
    ld h, d
    sub [hl]
    ld h, d
    xor c
    ld h, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    inc l
    ld [hl], $65
    inc l
    ld [hl], $05
    inc l
    ld [hl], $09
    inc l
    ld [hl], $fc
    ld l, $97
    ld a, [$cfd7]
    ld [hl-], a
    ld [hl], $80
    ld a, $03
    call $2772
    call $1e27
    ld e, $b0
    ld a, [de]
    or a
    call nz, Call_00f_6277
    ld a, $00
    call $211e
    ld bc, $30d8
    ld a, [$cfca]

Call_00f_6260:
    cp $06
    jr c, jr_00f_6271

    sub $09
    jr z, jr_00f_6271

    ld bc, $18d0
    inc a
    jr z, jr_00f_6271

    ld bc, $30e1

jr_00f_6271:
    call $2232
    jp Jump_00f_6557


Call_00f_6277:
    ld h, d
    ld l, e
    ld [hl], $00
    ld l, $84
    add [hl]
    ld [hl], a
    inc l
    ld [hl], $00
    inc l
    ld [hl], $1e
    ld l, $82
    ld a, [hl]
    cp $04
    ld a, $d8
    jr z, jr_00f_6290

    ld a, $28

jr_00f_6290:
    ld l, $b8
    ld [hl-], a
    ld [hl], $30
    ret


    ld a, [$cfca]
    sub $06
    cp $02
    jr c, jr_00f_62b6

    call Call_00f_62a5
    jp Jump_00f_6557


Call_00f_62a5:
    inc e
    ld a, [de]
    rst $00
    push bc
    ld h, d
    sbc $62
    xor $62
    ld de, $3463
    ld h, e
    ld c, a
    ld h, e
    sbc d
    ld h, e

jr_00f_62b6:
    ld a, $00
    call $211e
    ld e, $b7
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    ld c, a
    jp $2232


    call Call_00f_439a
    ret nz

    ld [hl], $14
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $28
    ld l, $89
    ld [hl], $00
    ld l, $a8
    ld [hl], $f8
    ld a, $74
    jp $0c74


    call Call_00f_439a
    jr nz, jr_00f_62e8

    ld [hl], $06
    ld l, e
    inc [hl]
    ret


jr_00f_62e8:
    call $1fdb
    jp Jump_00f_6386


    call Call_00f_439a
    jr z, jr_00f_6300

    ld a, [hl]
    cp $04
    ret nz

    ld l, $b6
    ld a, [$d00d]
    ld [hl-], a
    ld [hl], $a5
    ret


jr_00f_6300:
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $78
    ld l, $a7
    ld [hl], $0e
    ld e, $82
    ld a, [de]
    inc a
    jp $2772


    ld h, d
    ld l, $b5
    call Call_00f_4439
    call Call_00f_4430
    call Call_00f_6386
    ld e, $8b
    ld a, [de]
    cp $a0
    ret c

    ld a, $1e
    ld [$cd18], a
    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $3c
    ld a, $6f
    jp $0c74


    call Call_00f_439a
    jr z, jr_00f_6348

    ld a, [hl]
    cp $0a
    ret nz

    ld l, $a7
    ld [hl], $09
    ld e, $82
    ld a, [de]
    dec a
    jp $2772


jr_00f_6348:
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $1e
    ret


    ld a, $0b
    call $211e
    ld a, [hl+]
    add $30
    ld b, a
    inc l
    ld e, $82
    ld a, [de]
    cp $04
    ld c, $28
    jr z, jr_00f_6364

    ld c, $78

jr_00f_6364:
    ld a, [hl]
    add c
    ld c, a
    ld h, d
    ld a, [hl-]
    add $50
    ldh [$8e], a
    dec l
    ld a, [hl]
    ldh [$8f], a
    cp b
    jr nz, jr_00f_637d

    ldh a, [$8e]
    cp c
    jr nz, jr_00f_637d

    ld l, $85
    inc [hl]
    ret


jr_00f_637d:
    call $1e6f
    ld e, $89
    ld [de], a
    call $1fdb

Call_00f_6386:
Jump_00f_6386:
    ld a, $0b
    call $211e
    ld e, l
    ld a, [de]
    sub [hl]
    ld e, $b7
    ld [de], a
    ld l, $8d
    ld e, l
    ld a, [de]
    sub [hl]
    ld e, $b8
    ld [de], a
    ret


    ld h, d
    ld l, $84
    dec [hl]
    ld l, $a8
    ld [hl], $fc
    ld a, $06
    call $211e
    inc [hl]
    ret


    inc e
    ld a, [de]
    rst $00
    or b
    ld h, e
    add $63
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a6
    ld [hl], $0e
    inc l
    ld [hl], $0a
    ld l, $a8
    ld [hl], $f8
    ld e, $82
    ld a, [de]
    add $03
    call $2772
    ld a, [$cfca]
    or a
    call z, Call_00f_63e1
    ld a, $00
    call $211e
    ld bc, $30d8
    ld e, $82
    ld a, [de]
    cp $04
    jr z, jr_00f_63de

    ld c, $28

jr_00f_63de:
    jp $2232


Call_00f_63e1:
    ld h, d
    ld l, $84
    ld [hl], $01
    ld l, $a6
    ld [hl], $05
    inc l
    ld [hl], $09
    ld l, $a8
    ld [hl], $fc
    ld e, $82
    ld a, [de]
    dec a
    jp $2772


    ld a, [de]
    rst $00
    ld [bc], a
    ld h, h
    jr z, jr_00f_6462

    sub [hl]
    ld h, d
    xor c
    ld h, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    inc l
    ld [hl], $65
    inc l
    ld [hl], $05
    inc l
    ld [hl], $09
    inc l
    ld [hl], $fc
    ld l, $97
    ld a, [$cfd7]
    ld [hl-], a
    ld [hl], $80
    ld a, $04
    call $2772
    call $1e27
    jp Jump_00f_6428


Jump_00f_6428:
    ld e, $b0
    ld a, [de]
    or a
    call nz, Call_00f_6277
    ld a, $00
    call $211e
    ld bc, $3028
    ld a, [$cfca]
    cp $06
    jr c, jr_00f_644b

    sub $08
    jr z, jr_00f_644b

    ld bc, $1830
    dec a
    jr z, jr_00f_644b

    ld bc, $3031

jr_00f_644b:
    call $2232
    jp Jump_00f_6557


    ld a, [de]
    rst $00
    ld d, a
    ld h, h
    ld [hl], d
    ld h, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $97
    ld a, [$cfda]
    ld [hl-], a
    ld [hl], $80

jr_00f_6462:
    ld l, $99
    ld a, [$cfd8]
    ld [hl-], a
    ld [hl], $80
    ld a, $0d
    call $2772
    call $1e27

jr_00f_6472:
    call Call_00f_653e
    ld e, l
    sra b
    ld a, b
    sra b
    add b
    add [hl]
    ld [de], a
    ld l, $8d
    ld e, l
    sra c
    ld a, c
    sra c
    add c
    add [hl]
    ld [de], a
    ret


    ld a, [de]
    rst $00
    sub b
    ld h, h
    ld [hl], d
    ld h, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $97
    ld a, [$cfdb]
    ld [hl-], a
    ld [hl], $80
    ld l, $99
    ld a, [$cfd9]
    ld [hl-], a
    ld [hl], $80
    ld a, $0e
    call $2772
    call $1e27
    jr jr_00f_6472

    ld a, [de]
    rst $00
    or e
    ld h, h
    adc $64
    ld h, d
    ld l, e
    inc [hl]
    ld l, $97
    ld a, [$cfda]
    ld [hl-], a
    ld [hl], $80
    ld l, $99
    ld a, [$cfd8]
    ld [hl-], a
    ld [hl], $80
    ld a, $0b
    call $2772
    call $1e27

jr_00f_64ce:
    call Call_00f_653e
    ld e, l
    sra b
    sra b
    ld a, b
    sra b
    add b
    add [hl]
    ld [de], a
    ld l, $8d
    ld e, l
    sra c
    sra c
    ld a, c
    sra c
    add c
    add [hl]
    ld [de], a
    ret


    ld a, [de]
    rst $00
    ldh a, [$64]
    adc $64
    ld h, d
    ld l, e
    inc [hl]
    ld l, $97
    ld a, [$cfdb]
    ld [hl-], a
    ld [hl], $80
    ld l, $99
    ld a, [$cfd9]
    ld [hl-], a
    ld [hl], $80
    ld a, $0c
    call $2772
    call $1e27
    jr jr_00f_64ce

Call_00f_650d:
Jump_00f_650d:
    ld e, $8b
    ld a, [$cfcc]
    ld [de], a
    ld e, $8d
    ld a, [$cfcd]
    ld [de], a
    call $1fdb
    ld e, $8b
    ld a, [de]
    ld [$cfcc], a
    ld e, $8d
    ld a, [de]
    ld [$cfcd], a
    ret


Call_00f_6529:
    ld a, h
    add $60
    ldh [$8f], a
    ld a, l
    add $50
    ldh [$8e], a
    ld a, b
    add $60
    ld b, a
    ld a, c
    add $50
    ld c, a
    jp $1e6f


Call_00f_653e:
    ld a, $0b
    call $2122
    push hl
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld a, $0b
    call $211e
    ld a, [hl]
    sub b
    ld b, a
    ld l, $8d
    ld a, [hl]
    sub c
    ld c, a
    pop hl
    ret


Jump_00f_6557:
    ld h, d
    ld l, $a4
    bit 7, [hl]
    ret z

    ld a, [$d015]
    rlca
    jr c, jr_00f_65b7

    ld l, $a7
    ld a, [hl]
    add $06
    ld b, a
    add a
    inc a
    ld c, a
    ld l, $8d
    ld a, [$d00d]
    sub [hl]
    add b
    cp c
    jr nc, jr_00f_65b7

    ld l, $a6
    ld a, [$d026]
    add [hl]
    add $03
    ld b, a
    ld e, $8b
    ld a, [de]
    sub b
    ld c, a
    ld a, [$d00b]
    sub c
    inc a
    cp $03
    jr nc, jr_00f_65b7

    ld a, d
    ld [$ccb0], a
    ld l, $b1
    bit 0, [hl]
    jr nz, jr_00f_659b

    inc [hl]
    call Call_00f_65bb

jr_00f_659b:
    ld a, c
    ld [$d00b], a
    ld l, $8d
    ld a, [hl]
    ld l, $b3
    sub [hl]
    ld e, a
    ld a, [$d00d]
    add e
    sub $05
    cp $97
    jr nc, jr_00f_65bb

    add $05
    ld [$d00d], a
    jr jr_00f_65bb

jr_00f_65b7:
    ld l, $b1
    ld [hl], $00

Call_00f_65bb:
jr_00f_65bb:
    ld e, $8b
    ld a, [de]
    ld l, $b2
    ld [hl], a
    ld e, $8d
    ld a, [de]
    inc l
    ld [hl], a
    ret


Call_00f_65c7:
    ld a, [$cfca]
    and $0e
    ld b, a
    rrca
    add b
    ld hl, $65ed
    rst $10
    ld e, $8b
    ld a, [$cfcc]
    add [hl]
    ld [de], a
    ld e, $8d
    inc hl
    ld a, [$cfcd]
    add [hl]
    ld [de], a
    inc hl
    ld e, $88
    ld a, [de]
    cp [hl]
    ret z

    ld a, [hl]
    ld [de], a
    jp $2772


    ld c, b
    ld d, b
    nop
    ld b, c
    ld d, b
    ld bc, $5041
    ld bc, $4741
    ld [bc], a
    ld c, b
    ld d, b
    nop

Jump_00f_65fc:
    ld h, d
    ld l, $b1
    dec [hl]
    ld e, $ab
    jr nz, jr_00f_661c

    ld a, [de]
    or a
    ld b, $14
    jr z, jr_00f_660c

    ld b, $06

jr_00f_660c:
    ld [hl], b
    ld e, $b0
    ld a, [de]
    cp $08
    jr nc, jr_00f_6617

    xor $01
    ld [de], a

jr_00f_6617:
    or $80
    ld [$cfc9], a

jr_00f_661c:
    inc l
    dec [hl]
    ret nz

    ld a, [de]
    or a
    ld b, $0c
    jr z, jr_00f_6627

    ld b, $04

jr_00f_6627:
    ld [hl], b
    ld a, [$cfcb]
    inc a
    cp $06
    jr c, jr_00f_6631

    xor a

jr_00f_6631:
    or $80
    ld [$cfcb], a
    ret


Call_00f_6637:
    ld l, $b4
    ld e, $b3
    ld a, [de]
    add [hl]
    and $07
    ld [de], a
    ld hl, $664c
    rst JumpTable
    ld e, $b5
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    nop
    nop
    ld hl, sp+$10
    nop
    jr nz, jr_00f_665b

    stop
    nop
    ld hl, sp-$10
    nop
    ldh [$08], a

jr_00f_665b:
    ldh a, [$2e]
    add h
    inc [hl]
    ld l, $b3
    ld [hl], $ff
    ld l, $90
    ld [hl], $14
    call Call_00f_6680
    call $042f
    and $07
    ld hl, $6678
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    ld e, $3c
    inc a
    ld e, d
    ld e, d
    ld e, d
    ld a, b
    ld a, b

Call_00f_6680:
Jump_00f_6680:
jr_00f_6680:
    call $042f
    and $07
    ld b, a
    ld e, $b3
    ld a, [de]
    cp b
    jr z, jr_00f_6680

    ld a, b
    ld [de], a
    ld hl, $669a
    rst JumpTable
    ld e, $b5
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, sp-$10
    ld [$f8f0], sp
    db $fc
    ld [$f8fc], sp
    inc b
    ld [$f804], sp
    db $10
    ld [$fa10], sp
    call z, $67cf
    ld a, [$cfcd]
    ld l, a
    cp c
    jr nz, jr_00f_66b8

    ld a, h
    cp b
    ret z

jr_00f_66b8:
    call Call_00f_6529
    ld e, $89
    ld [de], a
    call Call_00f_650d
    or d
    ret


Call_00f_66c3:
Jump_00f_66c3:
    ld e, $b0
    ld [de], a
    or $80
    ld [$cfc9], a
    ret


Call_00f_66cc:
    call $196b
    ld c, $11
    ret z

    ld c, $18
    ret


    jr z, jr_00f_673e

    sub $03
    ret c

    jr nz, jr_00f_673e

    ld e, $82
    ld a, [de]
    dec a
    jp z, Jump_00f_450f

    ld e, $a4
    ld a, [de]
    or a
    jp z, $27c2

    ld e, $82
    ld a, [de]
    cp $02
    ld b, $02
    jr z, jr_00f_66f5

    ld b, $04

jr_00f_66f5:
    ld a, $38
    call $211e
    ld a, [hl]
    or b
    ld [hl], a
    ld e, $84
    ld a, [de]
    cp $0b
    jr nz, jr_00f_671c

    ld e, $83
    ld a, [de]
    cp $03
    jr nc, jr_00f_671c

    ld e, $82
    ld a, [de]
    xor $01
    add $ae
    ld l, a
    ld h, [hl]
    ld l, $84
    ld a, [hl]
    cp $0b
    jr nz, jr_00f_671c

    inc [hl]

jr_00f_671c:
    ld h, d
    ld l, $84
    ld [hl], $0e
    ld l, $a4
    set 7, [hl]
    inc l
    ld [hl], $04
    ld l, $a9
    ld [hl], $19
    ld l, $ac
    ld a, [hl]
    ld l, $89
    ld [hl], a
    ld l, $90
    ld [hl], $50
    ld l, $86
    ld [hl], $96
    xor a
    jp $2772


jr_00f_673e:
    call Call_00f_4426
    jr nc, jr_00f_6754

    rst $00
    ld l, c
    ld h, a
    ld a, l
    ld h, a
    xor c
    ld h, a
    xor c
    ld h, a
    xor c
    ld h, a
    xor c
    ld h, a
    xor c
    ld h, a
    xor c
    ld h, a

jr_00f_6754:
    dec b
    ld a, b
    rst $00
    xor d
    ld h, a
    adc $68
    ld d, l
    ld l, e
    ld a, d
    ld l, e
    ld a, d
    ld l, e
    add sp, $6b
    add sp, $6b
    dec hl
    ld l, h
    dec hl
    ld l, h
    ld a, b
    or a
    jp z, Jump_00f_6774

    call Call_00f_435e
    jp Jump_00f_6c6b


Jump_00f_6774:
    inc a
    ld [de], a
    ld a, $06
    ld b, $87
    call Call_00f_4565
    ld b, $09
    call $20b5
    ret nz

    ld b, $06
    call Call_00f_436d
    ld l, $80
    ld e, l
    ld a, [de]
    ld [hl], a
    ld l, $b0
    ld c, h
    ld e, $08

jr_00f_6792:
    push hl
    call Call_00f_436d
    ld a, $0a
    sub e
    ld [hl], a
    ld l, $96
    ld a, $80
    ld [hl+], a
    ld [hl], c
    ld a, h
    pop hl
    ld [hl+], a
    dec e
    jr nz, jr_00f_6792

    jp $2e28


    ret


    ld a, [de]
    sub $08
    rst $00
    ret nz

    ld h, a
    ret nc

    ld h, a
    inc c
    ld l, b
    jr z, jr_00f_681e

    ccf
    ld l, b
    ld d, [hl]
    ld l, b
    ld [hl], b
    ld l, b
    sub e
    ld l, b
    cp d
    ld l, b
    ld a, [$ccad]
    or a
    ret nz

    ld h, d
    ld l, e
    inc [hl]
    ld a, $2e
    ld [$cc51], a
    jp $0c74


    ld e, $b8
    ld a, [de]
    bit 1, a
    jr z, jr_00f_6853

    bit 2, a
    jr z, jr_00f_6853

    ld h, d
    ld l, $84
    inc [hl]
    ld l, $87
    ld [hl], $3c
    ld e, $b0
    ld a, [de]
    ld h, a
    ld l, $a9
    xor a
    ld [hl], a
    ld l, $a4
    ld [hl], a
    inc e
    ld a, [de]
    ld h, a
    xor a
    ld [hl], a
    ld l, $a9
    ld [hl], a
    ld hl, $ce16
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $26
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $67
    call $0c74
    ld a, $f0
    jp $0c74


    call Call_00f_43a3
    jp nz, Jump_00f_441f

    ld bc, $020c
    call Call_00f_4553
    jp nz, Jump_00f_441f

    ld h, d
    ld l, $84

jr_00f_681e:
    inc [hl]
    ld l, $86
    ld [hl], $1e
    ld a, $04
    call $2772
    call Call_00f_439a
    jp nz, Jump_00f_441f

    inc [hl]
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld a, $2e
    ld [$cc51], a
    call $0c74
    ld e, $84
    call Call_00f_439a
    jr nz, jr_00f_684f

    ld l, e
    inc [hl]
    ld bc, $fdc0
    call $2358
    jp $1e1e


jr_00f_684f:
    ld a, [hl]
    cp $0a
    ret c

jr_00f_6853:
    jp $275f


    ld c, $20
    call $1f04
    ret nz

    ld l, $84
    inc [hl]
    ld l, $86
    ld [hl], $96
    ld a, $78
    call $24a7
    call $1e27
    ld a, $81
    jp $0c74


    call Call_00f_439a
    jr z, jr_00f_6888

    ld a, [hl]
    cp $87
    jr c, jr_00f_6853

    ld a, [$d00f]
    rlca
    ret c

    ld hl, $cc6a
    ld a, $14
    ld [hl+], a
    ld [hl], $00
    ret


jr_00f_6888:
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $50
    call Call_00f_43bf
    jr jr_00f_6853

    ld a, $01
    call Call_00f_420b
    jr nz, jr_00f_689f

    call $1fdb
    jr jr_00f_6853

jr_00f_689f:
    ld a, $28
    call $24a7
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $90
    ld [hl], $14
    ld l, $89
    ld a, [hl]
    xor $10
    ld [hl], a
    ld bc, $fe80
    call $2358
    jr jr_00f_6853

    call Call_00f_4156
    ld c, $20
    call $1f04
    jr nz, jr_00f_6853

    ld l, $84
    ld [hl], $0c
    ld l, $86
    ld [hl], $3c
    jr jr_00f_6853

    ld a, [de]
    sub $08
    rst $00
    and $68
    ld a, [$0368]
    ld l, c
    ld e, c
    ld l, c
    and a
    ld l, d
    pop bc
    ld l, d
    jp z, $e16a

    ld l, d
    ld a, [$3068]
    ld l, e
    ld h, d
    ld l, $89
    ld [hl], $14

Jump_00f_68eb:
    ld l, e
    inc [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $86
    ld [hl], $3c
    ld l, $90
    ld [hl], $14
    ret


    call Call_00f_439a
    jp nz, $1fdb

    ld l, e
    inc [hl]
    ret


Jump_00f_6903:
    ld b, $04

Jump_00f_6905:
    ld a, $38
    call $211e
    ld a, [hl]
    and b
    ld c, $03
    ld l, $b8
    jr nz, jr_00f_692f

    bit 0, [hl]
    jr nz, jr_00f_6935

    ld e, $82
    ld a, [de]
    cp $03
    jr z, jr_00f_692f

    ld b, h
    ld l, $b1
    ld h, [hl]
    ld l, $84
    ld a, [hl]
    cp $10
    ld h, b
    jr nc, jr_00f_692f

    ldh a, [$af]
    cp $78
    jr nc, jr_00f_6935

jr_00f_692f:
    ld l, $b8
    set 0, [hl]
    ld c, $00

jr_00f_6935:
    ldh a, [$ae]
    cp $58
    ld b, $00
    jr c, jr_00f_694c

    ld b, $02
    sub $70
    cp $40
    jr c, jr_00f_694c

    call $041a
    and $01
    inc a
    ld b, a

jr_00f_694c:
    ld h, d
    ld l, $83
    ld a, c
    add b
    ld [hl], a
    ld l, $84
    inc [hl]
    inc l
    ld [hl], $00
    ret


    ld e, $83
    ld a, [de]
    ld e, $85
    rst $00
    ld l, e
    ld l, c
    ld [c], a
    ld l, c
    ld e, h
    ld l, d
    adc a
    ld l, d
    sub [hl]
    ld l, d
    sub [hl]
    ld l, d
    ld a, [de]
    rst $00
    ld [hl], e
    ld l, c
    sub a
    ld l, c
    and d
    ld l, c
    ld bc, $3a60
    ld h, d
    ld l, $82
    ld a, [hl]
    cp $02
    jr z, jr_00f_6980

    ld c, $90

jr_00f_6980:
    ld l, $8b
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    cp c
    jr nz, jr_00f_6991

    ldh a, [$8f]
    cp b
    jr z, jr_00f_6994

jr_00f_6991:
    jp Jump_00f_4430


jr_00f_6994:
    ld l, e
    inc [hl]
    ret


    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $1e
    ld a, $01
    jp $2772


    call Call_00f_439a
    jr z, jr_00f_69b6

    ld a, [hl]
    cp $08
    ret nz

    ld l, $8b
    ld a, [hl]
    sub $04
    ld [hl], a
    ld b, $43
    jp Jump_00f_437c


jr_00f_69b6:
    ld l, $8b
    ld a, [hl]
    add $04
    ld [hl], a

Jump_00f_69bc:
jr_00f_69bc:
    ld a, $38
    call $211e
    res 0, [hl]
    ld e, $82
    ld a, [de]
    sub $02
    xor $01
    add $b0
    ld l, a
    ld h, [hl]
    ld l, $84
    ld a, [hl]
    cp $0b
    jr nz, jr_00f_69d6

    inc [hl]

jr_00f_69d6:
    ld h, d
    ld e, l
    inc [hl]
    ld l, $82
    ld a, [hl]
    cp $02
    ret nz

    jp Jump_00f_6aa7


    ld a, [de]
    rst $00
    ld [$f669], a
    ld l, c
    rlca
    ld l, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $86
    ld [hl], $28
    ld a, $01
    jp $2772


    call Call_00f_439a
    ret nz

    ld [hl], $41
    ld l, e
    inc [hl]
    ld l, $b9
    ldh a, [$ae]
    ld [hl+], a
    ldh a, [$af]
    ld [hl], a
    ret


    call Call_00f_439a
    jr z, jr_00f_69bc

    ld a, [hl]
    and $0f
    jr z, jr_00f_6a1b

    cp $08
    ret nz

    ld l, $8b
    ld a, [hl]
    add $02
    ld [hl], a
    ret


jr_00f_6a1b:
    ld l, $8b
    ld a, [hl]
    sub $02
    ld [hl], a
    call $3ea7
    ret nz

    ld [hl], $43
    inc l
    inc [hl]
    ld e, $86
    ld a, [de]
    and $30
    swap a
    ld bc, $6a54
    call $007e
    ld e, $b9
    ld a, [de]
    ld e, a
    ld a, [bc]
    add e
    ld l, $cb
    ld [hl+], a
    inc l
    inc bc
    ld e, $ba
    ld a, [de]
    ld e, a
    ld a, [bc]
    add e
    ld [hl+], a
    call $3ac6
    ret nz

    ld [hl], $05
    ld bc, $0800
    jp $2215


    db $ec
    nop
    nop
    db $ec
    nop
    inc d
    inc d
    nop
    ld a, [de]
    rst $00
    ld h, h
    ld l, d
    ld [hl], d
    ld l, d
    ld a, c
    ld l, d
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $08
    inc l
    ld [hl], $02
    ld a, $01
    jp $2772


    call Call_00f_439a
    ret nz

    ld l, e
    inc [hl]
    ret


    ld b, $43
    call Call_00f_437c
    ret nz

    ld l, $c2
    ld [hl], $02
    call Call_00f_43a3
    jp z, Jump_00f_69bc

    dec l
    ld [hl], $14
    dec l
    dec [hl]
    ret


    ld a, [de]
    rst $00
    ld [hl], e
    ld l, c
    sub l
    ld l, d
    ret


Jump_00f_6a96:
jr_00f_6a96:
    call Call_00f_6a9f
    call z, Call_00f_6cf6
    jp $1fdb


Call_00f_6a9f:
    ld h, d
    ld l, $b1
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Jump_00f_6aa7:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $87
    ld [hl], $78
    ld l, $83
    ld a, [hl]
    or a
    jr z, jr_00f_6ab8

    cp $03
    jr nz, jr_00f_6abd

jr_00f_6ab8:
    ld l, $b0
    xor a
    ld [hl+], a
    ld [hl], a

jr_00f_6abd:
    xor a
    jp $2772


    call Call_00f_43a3
    jr nz, jr_00f_6a96

    ld l, e
    ld [hl], $0a
    ret


    ld a, [$cc00]
    rrca
    jr c, jr_00f_6adb

    call Call_00f_439a
    jr nz, jr_00f_6adb

    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $28

jr_00f_6adb:
    call $1fdb
    jp Jump_00f_42e5


    ld h, d
    ld l, $82
    ld a, [hl]
    cp $02
    ld bc, $2476
    jr z, jr_00f_6aee

    ld c, $7a

jr_00f_6aee:
    ld l, $8b
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    cp c
    jr nz, jr_00f_6aff

    ldh a, [$8f]
    cp b
    jr z, jr_00f_6b02

jr_00f_6aff:
    jp Jump_00f_4430


jr_00f_6b02:
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $0d
    ld l, $90
    ld [hl], $14
    ld l, $86
    ld [hl], $3c
    ld l, $b0
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $82
    ld a, [hl]
    cp $02
    ld a, $14
    ld b, $02
    jr z, jr_00f_6b24

    ld a, $0c
    ld b, $04

jr_00f_6b24:
    ld l, $89
    ld [hl], a
    ld a, $38
    call $211e
    ld a, [hl]
    xor b
    ld [hl], a
    ret


    ld e, $82
    ld a, [de]
    sub $02
    xor $01
    add $30
    call $211e
    ld h, [hl]
    ld l, $84
    ld a, [hl]
    cp $0e
    jr nc, jr_00f_6b49

    cp $0a
    jp nz, Jump_00f_6a96

jr_00f_6b49:
    ld h, d
    ld [hl], $0a
    ld l, $82
    ld a, [hl]
    cp $02
    ret nz

    jp Jump_00f_6903


    ld a, [de]
    sub $08
    rst $00
    ld l, l
    ld l, e
    ld a, [$7568]
    ld l, e
    ld e, c
    ld l, c
    and a
    ld l, d
    pop bc
    ld l, d
    jp z, $e16a

    ld l, d
    ld a, [$3068]
    ld l, e
    ld h, d
    ld l, $89
    ld [hl], $0c
    jp Jump_00f_68eb


    ld b, $02
    jp Jump_00f_6905


    ld a, [de]
    sub $08
    rst $00
    add h
    ld l, e
    sbc l
    ld l, e
    cp a
    ld l, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $04
    ld e, $82
    ld a, [de]
    sub $04
    add $30
    call $211e
    ld e, $99
    ld a, [hl]
    ld [de], a
    dec e
    ld a, $80
    ld [de], a
    call Call_00f_6cb2
    call Call_00f_6cbf
    ret nz

    ld e, $8b
    ld a, b
    add a
    add b
    add $24
    ld [de], a
    ld e, $82
    ld a, [de]
    cp $04
    ld b, $76
    jr z, jr_00f_6bb7

    ld b, $7a

jr_00f_6bb7:
    ld a, c
    add a
    add c
    add b
    ld e, $8d
    ld [de], a
    ret


    call Call_00f_6cb2
    ld e, $82
    ld a, [de]
    rrca
    ld bc, $0276
    jr nc, jr_00f_6bce

    ld bc, $047a

jr_00f_6bce:
    ld a, $38
    call $211e
    ld a, [hl]
    and b
    ret nz

    ld h, d
    ld l, $84
    dec [hl]
    ld l, $a4
    set 7, [hl]
    ld l, $8b
    ld [hl], $24
    ld l, $8d
    ld [hl], c
    jp $1e27


    ld a, [de]
    sub $08
    rst $00
    ld a, [c]
    ld l, e
    dec bc
    ld l, h
    cp a
    ld l, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $04
    ld e, $82
    ld a, [de]
    sub $06
    add $30
    call $211e
    ld e, $99
    ld a, [hl]
    ld [de], a
    dec e
    ld a, $80
    ld [de], a
    call Call_00f_6cb2
    call Call_00f_6cbf
    ret nz

    ld e, $8b
    ld a, b
    add a
    add $24
    ld [de], a
    ld e, $82
    ld a, [de]
    cp $06
    ld b, $76
    jr z, jr_00f_6c24

    ld b, $7a

jr_00f_6c24:
    ld a, c
    add a
    add b
    ld e, $8d
    ld [de], a
    ret


    ld a, [de]
    sub $08
    rst $00
    dec [hl]
    ld l, h
    ld c, [hl]
    ld l, h
    cp a
    ld l, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $a5
    ld [hl], $04
    ld e, $82
    ld a, [de]
    sub $08
    add $30
    call $211e
    ld e, $99
    ld a, [hl]
    ld [de], a
    dec e
    ld a, $80
    ld [de], a
    call Call_00f_6cb2
    call Call_00f_6cbf
    ret nz

    ld e, $8b
    ld a, b
    add $24
    ld [de], a
    ld e, $82
    ld a, [de]
    cp $08
    ld a, $76
    jr z, jr_00f_6c66

    ld a, $7a

jr_00f_6c66:
    add c
    ld e, $8d
    ld [de], a
    ret


Jump_00f_6c6b:
    dec b
    jr z, jr_00f_6c8a

    ld c, $76
    ld l, $82
    bit 0, [hl]
    jr z, jr_00f_6c78

    ld c, $7a

jr_00f_6c78:
    ld l, $8b
    ld [hl], $24
    ld l, $8d
    ld [hl], c
    ld l, $82
    ld a, [hl]
    cp $04
    ret c

    ld a, $02
    jp $2772


jr_00f_6c8a:
    ld l, $a4
    res 7, [hl]
    ld l, $a6
    ld [hl], $0c
    inc l
    ld [hl], $0e
    ld l, $8b
    ld [hl], $20
    ld l, $8d
    ld [hl], $78
    ld hl, $ce16
    ld a, $0f
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $26
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $03
    call $2772
    jp $1e30


Call_00f_6cb2:
    ld a, $01
    call $2122
    ld a, [hl]
    cp $06
    ret z

    pop hl
    jp $2e28


Call_00f_6cbf:
    ld l, $84
    ld a, [hl]
    cp $0e
    jr nz, jr_00f_6cd8

    ld h, d
    inc [hl]
    ld l, $a4
    res 7, [hl]
    ld e, $9a
    ld a, [de]
    rlca
    ld b, $08
    call c, $24af
    jp $1e39


jr_00f_6cd8:
    ld l, $8b
    ld a, [hl+]
    sub $24
    sra a
    sra a
    ld b, a
    inc l
    ld e, $82
    ld a, [de]
    rrca
    ld c, $76
    jr nc, jr_00f_6ced

    ld c, $7a

jr_00f_6ced:
    ld a, [hl]
    sub c
    sra a
    sra a
    ld c, a
    xor a
    ret


Call_00f_6cf6:
    ld e, $b0
    ld a, [de]
    and $1f
    jr nz, jr_00f_6d03

    call $041a
    and $20
    ld [de], a

jr_00f_6d03:
    ld a, [de]
    ld hl, $6d14
    rst $10
    ld e, $89
    ld a, [hl]
    ld [de], a
    ld h, d
    ld l, $b0
    inc [hl]
    inc l
    ld [hl], $06
    ret


    dec d
    ld d, $17
    rla
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    dec b
    ld b, $07
    rlca
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    rlca
    rlca
    ld b, $05
    dec de
    ld a, [de]
    add hl, de
    add hl, de
    rla
    rla
    ld d, $15
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc d
    dec d
    ld d, $16
    rla
    rla
    jr jr_00f_6d5c

    jr @+$1a

    add hl, de
    add hl, de
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    inc b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$2808], sp
    ld h, $d6
    inc bc
    ret c

    jr z, jr_00f_6d70

    dec a

jr_00f_6d5c:
    ret nz

    ld e, $aa
    ld a, [de]
    cp $97
    jr nz, jr_00f_6d7c

    ld e, $a9
    ld a, [de]
    or a
    call nz, Call_00f_6f20
    ld a, $63
    jp $0c74


jr_00f_6d70:
    ld h, d
    ld l, $84
    ld [hl], $0e
    inc l
    ld [hl], $00
    ld l, $a4
    res 7, [hl]

jr_00f_6d7c:
    ld e, $84
    ld a, [de]
    rst $00
    sbc [hl]
    ld l, l
    cp b
    ld l, l
    cp b
    ld l, l
    cp b
    ld l, l
    cp b
    ld l, l
    cp b
    ld l, l
    cp b
    ld l, l
    cp b
    ld l, l
    cp c
    ld l, l
    jp z, $0a6d

    ld l, [hl]
    ld h, $6e
    ccf
    ld l, [hl]
    ld d, l
    ld l, [hl]
    ld h, b
    ld l, [hl]
    ld a, $07
    ld [$cc1c], a
    ld a, $8c
    call $04e7
    ld a, $14
    call Call_00f_4364
    ld e, $88
    ld a, $02
    ld [de], a
    call $2772
    jp $1e30


    ret


    ld hl, $cfc0
    bit 0, [hl]
    jp z, $275f

    ld [hl], $00
    ld h, d
    ld l, e
    inc [hl]
    ld l, $90
    ld [hl], $14

jr_00f_6dca:
    call $042f
    and $07
    cp $07
    jr z, jr_00f_6dca

    ld h, d
    ld l, $b0
    cp [hl]
    jr z, jr_00f_6dca

    ld [hl], a
    ld hl, $6e03
    rst $10
    ld e, $8d
    ld a, [de]
    cp [hl]
    jr z, jr_00f_6dca

    ld e, $b1
    ld a, [hl]
    ld [de], a
    ld h, d
    ld l, $84
    inc [hl]
    ld l, $8d
    ld a, [hl]
    ld l, $b1
    cp [hl]
    ld a, $03
    ld b, $18
    jr nc, jr_00f_6dfc

    ld a, $01
    ld b, $08

jr_00f_6dfc:
    ld l, $88
    ld [hl+], a
    ld [hl], b
    jp $2772


    ld d, b
    jr nz, jr_00f_6e36

    ld b, b
    ld h, b
    ld [hl], b
    add b
    call $1fdb
    ld h, d
    ld l, $8d
    ld a, [hl]
    ld l, $b1
    sub [hl]
    inc a
    cp $03
    jr nc, jr_00f_6e5d

    ld l, $84
    inc [hl]
    call Call_00f_6f2e
    ld e, $88
    xor a
    ld [de], a
    jp $2772


    call Call_00f_439a
    jr nz, jr_00f_6e5d

    inc [hl]
    ld b, $3f
    call Call_00f_437c
    ret nz

    ld e, $84
    ld a, $0c

jr_00f_6e36:
    ld [de], a
    ld e, $88
    ld a, $04
    ld [de], a
    jp $2772


    call Call_00f_6f40
    ret nc

    inc a
    ret nz

    ld e, $84
    ld a, $0d
    ld [de], a
    call Call_00f_6f2e
    ld e, $88
    ld a, $02
    ld [de], a
    jp $2772


    call Call_00f_439a
    jr nz, jr_00f_6e5d

    ld l, e
    ld [hl], $09

jr_00f_6e5d:
    jp $275f


    inc e
    ld a, [de]
    rst $00
    ld l, l
    ld l, [hl]
    and a
    ld l, [hl]
    ret z

    ld l, [hl]
    call c, $1f6e
    ld l, a
    call $1cf0
    ret nc

    ld h, d
    ld l, $85
    inc [hl]
    ld l, $87
    ld [hl], $3c
    ld l, $a9
    ld [hl], $01
    ld a, $01
    call $2122
    ld a, [hl]
    cp $3f
    jr nz, jr_00f_6ea2

    ld l, $c4
    ld a, [hl]
    dec a
    jr nz, jr_00f_6ea2

    ld [hl], $06
    ld l, $cb
    ld e, $8b
    ld a, [de]
    sub $10
    ld [hl], a
    ld e, $b3
    ld a, $01
    ld [de], a
    ld [$cc02], a
    ld [$cca4], a

jr_00f_6ea2:
    ld a, $05
    jp $2772


    call Call_00f_43a3
    ret nz

    ld l, $b3
    bit 0, [hl]
    jr z, jr_00f_6eb4

    ld l, e
    inc [hl]
    ret


jr_00f_6eb4:
    ld l, $a4
    set 7, [hl]
    ld l, $84
    ld [hl], $09
    ld l, $b4
    bit 0, [hl]
    ret nz

    inc [hl]
    ld bc, $3f06
    jp $184b


    ld a, $04
    call $2122
    ld a, [hl]
    cp $05
    ret nz

    ld h, d
    ld l, $85
    inc [hl]
    inc l
    ld [hl], $01
    inc l
    ld [hl], $06
    ret


    call Call_00f_439a
    ret nz

    inc [hl]
    inc l
    ld a, [hl]
    dec a
    ld hl, $6f13
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $3ac6
    ret nz

    ld [hl], $56
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c
    ld a, c
    and $f0
    swap a
    ld c, a
    ld a, $ac
    call $3a52
    call Call_00f_43a3
    ld l, $86
    ld [hl], $0f
    ret nz

    ld l, $85
    inc [hl]
    ld a, $01
    ld [$cfc0], a
    ret


    ld [$0c78], sp
    jr c, @+$0c

    ld h, b
    ld [$0448], sp
    inc h
    ld b, $5a
    ret


Call_00f_6f20:
    dec a
    ld hl, $6f2a
    rst $10
    ld e, $90
    ld a, [hl]
    ld [de], a
    ret


    ld d, b
    inc a
    jr z, jr_00f_6f4c

Call_00f_6f2e:
    ld e, $a9
    ld a, [de]
    dec a
    ld hl, $6f3b
    rst $10
    ld e, $86
    ld a, [hl]
    ld [de], a
    ret


    inc d
    ld e, $28
    ld [hl-], a
    inc a

Call_00f_6f40:
    call $275f
    ld e, $a1
    ld a, [de]
    rlca
    ret c

    cp $06
    jr nz, jr_00f_6f5b

jr_00f_6f4c:
    ld a, $80
    ld [de], a
    ld a, $04
    call $2122
    ld [hl], $03
    ld l, $e4
    set 7, [hl]
    ret


jr_00f_6f5b:
    ld e, $a1
    ld a, [de]
    ld hl, $6f6f
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, $0b
    call $2122
    call $2215
    or d
    ret


    ld [$f600], sp
    nop
    xor $00
    ld a, [$cfc8]
    rst $00
    add a
    ld l, a
    dec l
    ld [hl], b
    ld l, $70
    ld [$7171], sp
    ld [hl], b
    inc sp
    ld [hl], c
    ld c, e
    ld [hl], c
    ld a, [$c4ab]
    or a
    ret nz

    call $3519
    xor a
    call $24a7
    call $2e15
    ld [hl], $02
    inc l
    ld [hl], $02
    call $3ea7
    ld [hl], $48
    inc l
    ld [hl], $04
    ld hl, $d000
    ld [hl], $03
    ld l, $0b
    ld [hl], $28
    ld l, $0d
    ld [hl], $50
    ld a, $30
    ldh [$a8], a
    xor a
    ldh [$aa], a
    ld hl, $ce00
    ld bc, $00c0
    call $0451
    ld hl, $cea0
    ld b, $10
    ld a, $0f
    call $044c
    ld hl, $ce0a
    ld bc, $0b02

jr_00f_6fd0:
    ld [hl], $0f
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_00f_6fd0

    ld hl, $ce0f
    ld b, $0b
    dec c
    jr nz, jr_00f_6fd0

    ld hl, $cf00
    ld bc, $00c0
    call $0451
    xor a
    ld [$cfca], a
    ld [$cfcb], a
    ld a, $80
    ld [$cfce], a
    ld [$cc77], a
    ld hl, $cfc8
    inc [hl]
    call $02c1
    call Call_00f_70b4
    xor a
    ldh [rSVBK], a
    call $1a5e
    call $3171
    ld a, $02
    call $02ea
    ld a, [$cfce]
    ld [$c490], a
    ld a, $06
    ldh [$9b], a
    ld hl, $c49f
    ld [hl], $8f
    inc l
    ld [hl], $58
    inc l
    ld [hl], $00
    inc l
    ld a, $c7
    ld [hl+], a
    ld [hl+], a
    ld [hl], $80
    ret


    call $3578
    call $2e08
    ld [hl], $05
    ld hl, $cfca
    call Call_00f_712a
    ld hl, $cfcb
    res 7, [hl]
    call Call_00f_722f
    xor a
    ldh [rSVBK], a
    ld a, $03
    ld [$cfc8], a
    ret


    call Call_00f_70b4
    ld hl, $cfca
    call Call_00f_712a

jr_00f_7056:
    ld hl, $cfcb
    res 7, [hl]
    call Call_00f_722f
    xor a
    ldh [rSVBK], a
    ld a, $02
    call $02ea
    ld a, [$cfce]
    ld [$c490], a
    ld a, $06
    ldh [$9b], a
    ret


    ld a, [$cba0]
    cp $80
    ret nz

    ld a, [$c482]
    and $01
    ret z

    call $1826
    ld a, $05
    ld [$cfc8], a
    call $02c1
    xor a
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    call $0451
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    ld a, $0d
    call $0452
    ld hl, $9f60
    ld b, $40

jr_00f_70a8:
    ld a, [hl]
    or $80
    ld [hl+], a
    dec b
    jr nz, jr_00f_70a8

    call Call_00f_71fb
    jr jr_00f_7056

Call_00f_70b4:
    ld a, $8d
    call $04e7
    xor a
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    call $0451
    ld hl, $9f20
    ld b, $a0
    call $044b
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    ld a, $0d
    call $0452
    ld hl, $9f20
    ld b, $a0
    ld a, $0d
    call $044c
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    ld bc, $02c0
    call $0451
    ld hl, $dc00
    ld bc, $02c0
    ld a, $0d
    call $0452
    ld a, $96
    call $0602
    ld a, $30
    jp $05b6


    ld hl, $cfc9
    bit 7, [hl]
    jr nz, jr_00f_711d

    ld l, $cb
    bit 7, [hl]
    ret z

    res 7, [hl]
    call Call_00f_722f
    xor a
    ldh [rSVBK], a
    ret


jr_00f_711d:
    ld b, [hl]
    xor a
    ld [hl+], a
    res 7, b
    ld [hl], b
    call Call_00f_712a
    xor a
    ldh [rSVBK], a
    ret


Call_00f_712a:
    ld a, [hl]
    cp $06
    jp c, Jump_00f_71cf

    jp Jump_00f_71fb


    ld a, [$cfcc]
    cp $78
    ret nz

    ld a, $06
    ld [$cfc8], a
    ld hl, $ca91
    set 7, [hl]
    ld a, $30
    call $30cd
    jp $3144


    ld a, [$c4ab]
    or a
    ret nz

    call $3525
    ld a, $09
    ld [$cc04], a
    ret


    ld a, [$cfcf]
    or a
    ret nz

    ld hl, $cd18
    ld a, [hl]
    or a
    jr z, jr_00f_7166

    dec [hl]

jr_00f_7166:
    inc l
    ld a, [hl]
    or a
    jr z, jr_00f_716c

    dec [hl]

jr_00f_716c:
    ld hl, $ffa8
    ld a, [$d00b]
    sub [hl]
    cp $40
    ret z

    ld a, [hl]
    jr c, jr_00f_717e

    cp $30
    ret nc

    inc [hl]
    ret


jr_00f_717e:
    or a
    ret z

    dec [hl]
    ret


    ld hl, $cfcc
    ldh a, [$a8]
    ld b, a
    sub [hl]
    ld [$c48c], a
    inc l
    xor a
    sub [hl]
    ld [$c48d], a
    ld a, b
    add $28
    ld [$c4a0], a
    xor a
    ld [$c4a1], a
    sub b
    sub $50
    cp $90
    jr c, jr_00f_71a5

    ld a, $c7

jr_00f_71a5:
    ld [$c490], a
    ld [$cfce], a
    ld a, [$cd18]
    or a
    ret z

    call $042f
    and $03
    ld hl, $71cb
    rst $10
    ld a, [$c490]
    add [hl]
    cp $90
    ret nc

    ld [$c490], a
    ld a, [$c4a0]
    sub [hl]
    ld [$c4a0], a
    ret


    rst $38
    cp $01
    ld [bc], a

Jump_00f_71cf:
    call Call_00f_736a
    push bc
    ld hl, $d000
    add hl, bc
    ld b, $50
    call $7297
    ld hl, $d802
    ld c, $00
    call Call_00f_72a5
    pop bc
    ld hl, $d400
    add hl, bc
    ld b, $50
    call $7297
    ld hl, $dc02
    ld c, $20
    call Call_00f_72a5
    ld a, $2e
    jp $05b6


Call_00f_71fb:
Jump_00f_71fb:
    ld a, [$cfca]
    sub $06
    cp $03
    jr c, jr_00f_7206

    ld a, $02

jr_00f_7206:
    add a
    call Call_00f_736a
    push bc
    ld hl, $d1e0
    add hl, bc
    ld b, $a0
    call $7297
    ld hl, $d802
    call Call_00f_72d1
    pop bc
    ld hl, $d5e0
    add hl, bc
    ld b, $a0
    call $7297
    ld hl, $dc02
    call Call_00f_72dc
    ld a, $2e
    jp $05b6


Call_00f_722f:
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d940
    ld b, $e0
    call $044b
    ld hl, $dd40
    ld b, $e0
    ld a, $0d
    call $044c
    ld a, [$cfcb]
    cp $03
    jr c, jr_00f_724e

    sub $03

jr_00f_724e:
    add a
    add a
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    push bc
    ld a, [$cfcb]
    ld hl, $7291
    rst $10
    ld a, [hl]
    ldh [$8b], a
    ld hl, $d800
    add hl, bc
    ld b, $40
    call $7297
    ldh a, [$8b]
    add $40
    ld l, a
    ld h, $d9
    call Call_00f_731a
    pop bc
    ld hl, $db00
    add hl, bc
    ld b, $40
    call $7297
    ldh a, [$8b]
    add $40
    ld l, a
    ld h, $dd
    call Call_00f_7325
    ld a, $2f
    jp $05b6


    rlca
    dec b
    inc b
    dec b
    rlca
    ld [$063e], sp
    ldh [rSVBK], a
    ld de, $cd40

jr_00f_729e:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_00f_729e

    ret


Call_00f_72a5:
    ld a, $03
    ldh [rSVBK], a
    ld de, $cd40

jr_00f_72ac:
    ld b, $04

jr_00f_72ae:
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_00f_72ae

    ld b, $04

jr_00f_72b9:
    dec e
    ld a, [de]
    xor c
    ld [hl+], a
    dec e
    ld a, [de]
    xor c
    ld [hl+], a
    dec b
    jr nz, jr_00f_72b9

    ld a, e
    add $08
    ld e, a
    ld a, $10
    rst $10
    ld a, e
    cp $90
    jr nz, jr_00f_72ac

    ret


Call_00f_72d1:
    ld a, [$cfca]
    cp $09
    jr c, jr_00f_7302

    ld c, $00
    jr jr_00f_72e5

Call_00f_72dc:
    ld a, [$cfca]
    cp $09
    jr c, jr_00f_7302

    ld c, $20

jr_00f_72e5:
    ld a, $03
    ldh [rSVBK], a
    ld de, $cd4f

jr_00f_72ec:
    ld b, $10

jr_00f_72ee:
    ld a, [de]
    xor c
    ld [hl+], a
    dec e
    dec b
    jr nz, jr_00f_72ee

    ld a, e
    add $20
    ld e, a
    ld a, $10
    rst $10
    ld a, e
    cp $ef
    jr nz, jr_00f_72ec

    ret


jr_00f_7302:
    ld a, $03
    ldh [rSVBK], a
    ld de, $cd40
    ld c, $0a

jr_00f_730b:
    ld b, $10

jr_00f_730d:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_00f_730d

    ld a, $10
    rst $10
    dec c
    jr nz, jr_00f_730b

    ret


Call_00f_731a:
    ld a, [$cfcb]
    cp $03
    jr c, jr_00f_734f

    ld c, $00
    jr jr_00f_732e

Call_00f_7325:
    ld a, [$cfcb]
    cp $03
    jr c, jr_00f_734f

    ld c, $20

jr_00f_732e:
    ld a, $03
    ldh [rSVBK], a
    ld de, $cd47

jr_00f_7335:
    ld b, $04

jr_00f_7337:
    ld a, [de]
    xor c
    ld [hl+], a
    dec e
    ld a, [de]
    xor c
    ld [hl+], a
    dec e
    dec b
    jr nz, jr_00f_7337

    ld a, e
    add $10
    ld e, a
    ld a, $18
    rst $10
    ld a, e
    cp $7f
    jr nz, jr_00f_7335

    ret


jr_00f_734f:
    ld a, $03
    ldh [rSVBK], a
    ld de, $cd40

jr_00f_7356:
    ld b, $04

jr_00f_7358:
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_00f_7358

    ld a, $18
    rst $10
    ld a, e
    cp $78
    jr nz, jr_00f_7356

    ret


Call_00f_736a:
    ld b, a
    add a
    add a
    add b
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ret


    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld e, $44
    ld a, [de]
    rst $00
    ld a, [bc]
    ld [hl], h
    sub d
    ld [hl], h
    rst $30
    ld [hl], h
    ld a, $01
    ld [de], a
    call $26ac
    ld e, $42
    ld a, [de]
    cp $06
    jr nz, jr_00f_742d

    ld hl, $d100
    ld a, [hl+]
    or a
    jr z, jr_00f_7423

    ld a, [hl]
    cp $0d
    jr z, jr_00f_742a

jr_00f_7423:
    ld a, [$c6bb]
    bit 3, a
    jr nz, jr_00f_742d

jr_00f_742a:
    jp $3ad9


jr_00f_742d:
    ld e, $42
    ld a, [de]
    bit 7, a
    jr nz, jr_00f_747d

    cp $00
    jr z, jr_00f_7440

    cp $03
    jr z, jr_00f_7440

    cp $06
    jr nz, jr_00f_7455

jr_00f_7440:
    ld c, a
    ld a, [$c6a9]
    or a
    jr z, jr_00f_7448

    dec a

jr_00f_7448:
    add c
    ld [de], a
    ld hl, $75bd
    rst JumpTable
    ld a, [hl+]
    ld b, [hl]
    ld hl, $cba8
    ld [hl+], a
    ld [hl], b

jr_00f_7455:
    ld e, $66
    ld a, $06
    ld [de], a
    inc e
    ld [de], a
    call $15e9
    call $2070
    ld h, $cf
    ld [hl], $00
    call $1e15
    ld e, $71
    call $1af2
    call $3ac6
    ld a, $ce
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld l, $58
    ld [hl], d
    jp $21fd


jr_00f_747d:
    ld a, [$cc49]
    or a
    ld a, $c4
    jr z, jr_00f_7487

    ld a, $20

jr_00f_7487:
    call $22f6
    ld a, $05
    call $25cb
    jp $1e15


    ld a, [$cd00]
    and $0e
    ret nz

    ld e, $42
    ld a, [de]
    bit 7, a
    jr nz, jr_00f_74dd

    call $229b
    call $25b8
    ld c, $20
    call $1f60
    ld e, $79
    jr c, jr_00f_74b8

    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    ld a, $03
    jp $25cb


jr_00f_74b8:
    ld a, [de]
    or a
    jr nz, jr_00f_74c3

    inc a
    ld [de], a
    ld a, $01
    jp $25cb


jr_00f_74c3:
    ld e, $71
    ld a, [de]
    or a
    ret z

    call $239b
    ld a, $02
    call $25cb
    ld e, $42
    ld a, [de]
    ld hl, $758e
    rst $10
    ld c, [hl]
    ld b, $45
    jp $1847


jr_00f_74dd:
    ld e, $58
    ld a, [de]
    ld h, a
    ld l, $5a
    ld a, [hl]
    ld e, $5a
    ld [de], a
    ld l, $4b
    ld b, [hl]
    ld l, $61
    ld a, [hl]
    ld hl, $7599
    rst $10
    ld e, $4b
    ld a, [hl+]
    add b
    ld [de], a
    ret


    call $25b8
    ld a, [$cba0]
    and $7f
    ret nz

    ld a, [$cba5]
    bit 7, a
    jr z, jr_00f_751c

    ld e, $44
    ld a, $01
    ld [de], a
    xor a
    ld [$cba0], a
    ld e, $71
    ld [de], a
    dec a
    ld [$cba5], a
    ld a, $04
    jp $25cb


jr_00f_751c:
    ld a, [$cba5]
    or a
    jr z, jr_00f_7527

    ld bc, $4506
    jr jr_00f_7588

jr_00f_7527:
    ld e, $42
    ld a, [de]
    ld hl, $759c
    rst $10
    ld a, [hl]
    ld e, $78
    ld [de], a
    call $1739
    jr z, jr_00f_753c

    ld bc, $4507
    jr jr_00f_7588

jr_00f_753c:
    ld e, $42
    ld a, [de]
    ld hl, $75a7
    rst JumpTable
    ld a, [hl]
    cp $03
    jr z, jr_00f_755f

    cp $20
    jr nz, jr_00f_756b

    ld a, [$c6ae]
    ld bc, $758a
    call $006d
    ld a, [bc]
    ld c, a
    ld a, [$c6b5]
    cp c
    jr nz, jr_00f_7575

    jr jr_00f_7570

jr_00f_755f:
    ld bc, $c6aa
    ld a, [bc]
    inc c
    ld e, a
    ld a, [bc]
    cp e
    jr nz, jr_00f_7575

    jr jr_00f_7570

jr_00f_756b:
    call $1717
    jr nc, jr_00f_7575

jr_00f_7570:
    ld bc, $4508
    jr jr_00f_7588

jr_00f_7575:
    ld a, [hl+]
    ld c, [hl]
    call $16eb
    ld e, $78
    ld a, [de]

jr_00f_757d:
    call $1751
    ld a, $5e
    call $0c74
    ld bc, $4505

jr_00f_7588:
    jp $184b


    jr nz, jr_00f_75dd

    sbc c
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    inc c
    nop
    ld hl, sp-$0b
    dec bc
    inc c
    rrca
    dec bc
    inc c
    rrca
    dec bc
    inc c
    rrca
    rlca
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0103
    ld bc, $0201
    ld bc, $0103
    ld bc, $0201
    ld bc, $0303
    db $10
    jr nz, @+$12

    ld d, b
    nop
    nop
    ld bc, $0150
    ld d, b
    nop
    nop
    ld bc, $0150
    ld d, b
    nop
    nop
    ld bc, $0150
    ld e, $44
    ld a, [de]
    rst $00
    rst $10
    ld [hl], l
    push af
    ld [hl], l
    ld a, $01
    ld [de], a
    call $15e9

jr_00f_75dd:
    ld e, $42
    ld a, [de]
    ld hl, $75ef
    rst JumpTable
    ld a, [hl+]
    ld e, $4b
    ld [de], a
    inc e
    inc e
    ld a, [hl]
    ld [de], a
    jp $1e27


    jr @+$5e

    ld b, b
    ld b, b
    jr c, jr_00f_757d

    jp $25b8


    ld e, $44
    ld a, [de]
    rst $00
    ld [bc], a
    db $76
    ld b, $76
    ld e, e
    db $76
    ld a, $01
    ld [de], a
    ret


    ld a, $02
    ld [de], a
    ld a, [$d100]
    or a
    jr z, jr_00f_764e

    ld e, $42
    ld a, [de]
    srl a
    add $0b
    cp $0e
    jr c, jr_00f_761c

    ld a, $0d

jr_00f_761c:
    ld hl, $d101
    cp [hl]
    jr nz, jr_00f_7658

    ld a, [de]
    ld hl, $76d6
    rst $10
    ld a, [hl]
    ld hl, $c646
    call $0205
    jr nz, jr_00f_7658

    ld a, [de]
    cp $02
    jr nz, jr_00f_763f

    ld a, [$cc48]
    rra
    ld a, [de]
    jr nc, jr_00f_763f

    ld [$ccb1], a

jr_00f_763f:
    ld hl, $76c8
    rst JumpTable
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld a, [$cc48]
    bit 0, a
    call nz, $184b

jr_00f_764e:
    ld e, $42
    ld a, [de]
    cp $02
    jr z, jr_00f_7658

    cp $05
    ret nz

jr_00f_7658:
    jp $3ad9


    ld a, [$d100]
    or a
    ret z

    ld e, $42
    ld a, [de]
    rst $00
    ld [hl], d
    db $76
    add c
    db $76
    sub e
    db $76
    ld a, h
    db $76
    ld [hl], d
    db $76
    sub e
    db $76
    add c
    db $76
    ld e, $4b
    ld a, [de]
    ld hl, $d10b
    cp [hl]
    ret nc

    jr jr_00f_7685

    ld a, [$d138]
    or a
    ret z

    call Call_00f_7695
    ret c

jr_00f_7685:
    ld e, $42
    ld a, [de]
    ld hl, $76d6
    rst $10
    ld a, [hl]
    ld hl, $c646
    call $020e
    jr jr_00f_7658

Call_00f_7695:
    ld e, $4b
    ld a, [de]
    ld hl, $d10b
    cp [hl]
    ret


    ld a, [$cc4c]
    ld hl, $76bf
    ld b, $00

jr_00f_76a5:
    cp [hl]
    jr z, jr_00f_76ac

    inc b
    inc hl
    jr jr_00f_76a5

jr_00f_76ac:
    ld a, b
    ld hl, $76c2
    rst JumpTable
    ld a, [$d00d]
    cp [hl]
    jr c, jr_00f_76bd

    inc hl
    cp [hl]
    jr nc, jr_00f_76bd

    xor a
    ret


jr_00f_76bd:
    or d
    ret


    ld [hl], $37
    daa
    ld b, b
    ld [hl], b
    db $10
    jr nc, jr_00f_7707

    add b
    dec c
    jr nz, @+$10

    jr nz, jr_00f_76ee

    ld hl, $2122
    jr jr_00f_76f4

    rla
    ld [hl+], a
    jr @+$24

    nop
    ld bc, $0302
    inc b
    dec b
    inc b
    ld e, $44
    ld a, [de]
    rst $00
    push hl
    db $76
    inc c
    dec h
    ld a, $01
    ld [de], a
    ld c, a
    ld hl, $5d0d
    ld e, $01

jr_00f_76ee:
    call $008a
    ld hl, $4b17

jr_00f_76f4:
    jp $24fe


    ld e, $44
    ld a, [de]
    rst $00
    rst $38
    db $76
    jr z, jr_00f_7776

    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42

jr_00f_7707:
    ld a, [de]
    ld hl, $7720
    rst JumpTable
    ld a, [hl+]
    ld b, [hl]
    ld h, d
    ld l, $77
    ld [hl], a
    ld l, $4b
    ld [hl+], a
    inc l
    ld [hl], b
    ld l, $49
    ld [hl], $10
    ld l, $50
    ld [hl], $05
    ret


    cp a
    ld a, h
    cp a
    ld a, [hl+]
    sbc a
    sub h
    and e
    db $10
    ld a, [$c486]
    ld b, a
    ld e, $77
    ld a, [de]
    sub b
    inc e
    ld e, $4b
    ld [de], a
    call $23be
    jr nz, jr_00f_7745

    ld a, [$c486]
    cp $e0
    ret nz

    call $23a0
    call $1e27

jr_00f_7745:
    ld a, [$c486]
    cp $88
    ret z

Call_00f_774b:
    ld h, d
    ld l, $49
    ld c, [hl]
    ld l, $50
    ld b, [hl]
    call $1fff
    ret z

    ld e, $76
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    ld e, $4c
    inc l
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], h
    ld [hl], a
    or d
    ld [hl], a
    ld a, $01

jr_00f_7776:
    ld [de], a
    call $15e9
    ld h, d
    ld l, $47
    ld [hl], $2d
    ld l, $42
    ld a, [hl]
    ld b, $00
    ld c, $1a
    cp $04
    jr c, jr_00f_778d

    inc b
    ld c, $06

jr_00f_778d:
    ld l, $49
    ld [hl], c
    ld l, $50
    ld [hl], $32
    push af
    ld a, b
    call $25cb
    pop af

Call_00f_779a:
    ld b, a
    add a
    add b
    ld hl, $7809
    rst $10
    ld a, [hl+]
    ld b, [hl]
    inc l
    ld c, [hl]
    ld h, d
    ld l, $77
    ld [hl], a
    ld l, $4b
    ld [hl+], a
    inc l
    ld [hl], b
    ld l, $46
    ld [hl], c
    ret


    ld a, [$c486]
    ld b, a
    ld e, $77
    ld a, [de]
    sub b
    inc e
    ld e, $4b
    ld [de], a
    ld e, $45
    ld a, [de]
    rst $00
    ret z

    ld [hl], a
    pop de
    ld [hl], a
    db $db
    ld [hl], a
    ld a, [$c486]
    cp $10
    ret nz

    jp $23a0


    call $2387
    ret nz

    call $23a0
    jp $1e27


    ld e, $47
    ld a, [de]
    or a
    jr z, jr_00f_77e3

    dec a
    ld [de], a

jr_00f_77e3:
    call $25b8
    call Call_00f_774b
    cp $b0
    ret c

    ld h, d
    ld l, $47
    ld a, [hl]
    or a
    jp z, $3ad9

    ld l, $45
    dec [hl]
    ld l, $42
    ld a, [hl]
    call Call_00f_779a
    call $042f
    and $0f
    ld h, d
    ld l, $46
    ld [hl], a
    jp $1e39


    ld c, h
    jr jr_00f_780d

    ld e, b

jr_00f_780d:
    jr nz, jr_00f_781f

    ld e, d
    jr nc, jr_00f_7826

    ld d, b
    jr z, jr_00f_782b

    ld d, b
    ld [hl], h
    inc b
    ld c, h
    add h
    ld a, [bc]
    ld e, h
    adc h
    ld [de], a
    ld e, b

jr_00f_781f:
    ld a, h
    rla
    ld e, $44
    ld a, [de]
    rst $00
    add hl, hl

jr_00f_7826:
    ld a, b
    ld b, h
    ld a, b
    ld a, $01

jr_00f_782b:
    ld [de], a
    ld h, d
    ld l, $42
    ld a, [hl]
    ld b, a
    and $0f
    ld [hl], a
    ld a, b
    swap a
    and $0f
    add a
    add a
    ld l, $46
    ld [hl], a
    call $15e9
    jp $1e27


    ld e, $42
    ld a, [de]
    cp $02
    ret z

    call $2387
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_00f_7871

    ld a, [$cc00]
    ld b, a
    and $1f
    ret nz

    ld a, b
    and $e0
    swap a
    rrca
    ld hl, $7869
    rst $10
    ld e, $4f
    ld a, [hl]
    ld [de], a
    ret


    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $0001

jr_00f_7871:
    ld a, [hl]
    and $07
    ret nz

    ld a, [hl]
    and $38
    swap a
    rlca
    ld hl, $7869
    rst $10
    ld e, $4f
    ld a, [hl]
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    adc h
    ld a, b
    and l
    ld a, b
    ld a, $01
    ld [de], a
    ld a, $28
    ld e, $78
    ld [de], a
    call $15e9
    call $1432
    ld [hl], $00
    ld hl, $7b03
    call $24fe
    call Call_00f_78cc
    call $250c
    call $2689
    ld e, $45
    ld a, [de]
    rst $00
    or e
    ld a, b
    db $d3
    ld a, b
    ld h, d
    ld l, $78
    dec [hl]
    ret nz

    call $23a0
    ld b, $c9
    call $24af
    jr nz, jr_00f_78c7

    ld l, $56
    ld [hl], e
    inc l
    ld [hl], d

jr_00f_78c7:
    ld h, d
    ld l, $77
    ld [hl], $01

Call_00f_78cc:
    ld l, $60
    ld [hl], $01
    jp $25b8


    ld e, $77
    ld a, [de]
    or a
    ret nz

    ld h, d
    ld l, $45
    dec [hl]
    call Call_00f_78cc
    call $042f
    and $3f
    add $3c
    ld e, $78
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld a, [c]
    ld a, b
    add hl, bc
    ld a, c
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld bc, $4128
    ld l, $50
    ld [hl], b
    ld l, $46
    ld [hl], c
    ld l, $49
    ld [hl], $18
    jp $1e27


    ld e, $45
    ld a, [de]
    rst $00
    ld de, $2f79
    ld a, c
    call $2387
    jr nz, jr_00f_791d

    ld l, $49
    ld [hl], $08
    call $23a0

jr_00f_791d:
    call $1fdb

jr_00f_7920:
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    ld [hl], $00
    ld a, $78
    call nz, $0c74
    jp $25b8


    call $1fdb
    call $211e
    ld l, $4d
    ld e, l
    ld a, [de]
    add $08
    cp [hl]
    jr c, jr_00f_7920

    ld l, $77
    ld [hl], $00
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld c, a
    ld a, c
    adc c
    ld a, c
    sub h
    ld a, c
    ld a, $28
    call $30c7
    jp z, $3ad9

    call $15e9
    call $239b
    call Call_00f_7aa7
    ld a, $4c
    call $24f5
    ld a, $5a
    call $30c7
    jr z, jr_00f_7971

    ld hl, $7bfc
    jr jr_00f_797e

jr_00f_7971:
    ld a, $50
    call $30c7
    ld hl, $7b06
    jr z, jr_00f_797e

    ld hl, $7b30

jr_00f_797e:
    call $24fe
    ld a, $02
    call $25cb
    jp $2686


    call $250c
    ld e, $7b
    ld a, [de]
    or a
    ret nz

    jp $2646


    call Call_00f_79df
    call $2387
    jr nz, jr_00f_79a1

    ld [hl], $b4
    call Call_00f_7a0d

jr_00f_79a1:
    ld hl, $ccf8
    ld a, [hl+]
    cp $30
    jr nz, jr_00f_79b2

    ld a, [hl]
    cp $00
    jr nz, jr_00f_79b2

    ld a, $01
    jr jr_00f_79c0

jr_00f_79b2:
    ld h, d
    ld l, $78
    ld a, [hl]
    cp $0c
    ret nz

    ld a, [$cc30]
    or a
    ret nz

    ld a, $00

jr_00f_79c0:
    ld h, d
    ld l, $7a
    ld [hl], a
    ld l, $44
    ld [hl], $01
    ld hl, $6430
    ld e, $15
    call $008a
    ld hl, $7b64
    call $24fe
    ret


    ld hl, $ccf7
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_00f_79df:
    ld hl, $ccf7
    ld a, [hl+]
    cp $59
    jr nz, jr_00f_79f0

    ld a, [hl+]
    cp $59
    jr nz, jr_00f_79f0

    ld a, [hl]
    cp $99
    ret z

jr_00f_79f0:
    ld hl, $ccf7
    call Call_00f_7a01
    ret nz

    inc hl
    call Call_00f_7a01
    ret nz

    inc hl
    ld b, $00
    jr jr_00f_7a03

Call_00f_7a01:
    ld b, $60

jr_00f_7a03:
    ld a, [hl]
    add $01
    daa
    cp b
    jr nz, jr_00f_7a0b

    xor a

jr_00f_7a0b:
    ld [hl], a
    ret


Call_00f_7a0d:
    ld a, $04
    ld hl, $cc30
    sub [hl]
    ret z

    ldh [$8d], a
    call $041a
    and $03
    ld e, $79
    ld [de], a
    xor a

jr_00f_7a1f:
    inc a
    ldh [$8b], a
    ld h, d
    ld l, $78
    ld a, [hl]
    cp $0c
    jr z, jr_00f_7a3c

    inc a
    ld [hl], a
    ld hl, $7a3c
    rst $10
    ld a, [hl]
    call Call_00f_7a49
    ldh a, [$8b]
    ld hl, $ff8d
    cp [hl]

jr_00f_7a3a:
    jr nz, jr_00f_7a1f

jr_00f_7a3c:
    ret


    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07

Call_00f_7a49:
    ld bc, $7a76
    call $007e
    call $2e08
    ret nz

    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    ld e, $79
    ld a, [de]
    inc a
    and $03
    ld [de], a
    ld bc, $7a86
    call $007e
    ld l, $8b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $8d
    ld a, [bc]
    ld [hl], a
    ld l, $81
    ld a, [hl]
    cp $10
    ret z

    jr jr_00f_7a8e

    db $10
    ld bc, $0020
    ld c, b
    nop
    ld c, b
    ld bc, $0140
    ld b, b
    ld [bc], a
    dec c
    nop
    dec c
    ld bc, $4030
    jr nc, jr_00f_7a3a

    add b
    ld b, b
    add b
    or b

jr_00f_7a8e:
    ld e, $79
    ld a, [de]
    ld bc, $7a86
    call $007e
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    ret


Call_00f_7aa7:
    ld a, $05
    call $1717
    jr nc, jr_00f_7ab9

    cp $03
    jp nc, Jump_00f_7ab9

    sub $01

jr_00f_7ab5:
    ld e, $43
    ld [de], a
    ret


Jump_00f_7ab9:
jr_00f_7ab9:
    ld a, $01
    jr jr_00f_7ab5

    ld e, $44
    ld a, [de]
    rst $00
    ret


    ld a, d
    ld [hl], b
    ld a, e
    cp a
    ld a, e
    di
    ld a, e
    ld e, $42
    ld a, [de]
    rst $00
    push de
    ld a, d
    dec bc
    ld a, e
    dec bc
    ld a, e
    ld d, c
    ld a, e
    ld a, $28
    call $30c7
    jp z, $3ad9

    call $15e9
    call $239b
    ld l, $79
    ld [hl], $78
    ld a, $4c
    call $24f5
    ld a, $5b
    call $30c7
    jr z, jr_00f_7af8

    ld hl, $7cbf
    jr jr_00f_7b05

jr_00f_7af8:
    ld a, $51
    call $30c7
    ld hl, $7bff
    jr z, jr_00f_7b05

    ld hl, $7c29

jr_00f_7b05:
    call $24fe
    jp $1e1e


    call $15e9
    ld h, d
    ld l, $42
    ld a, [hl]
    ld l, $5c
    ld [hl], a
    ld l, $44
    ld [hl], $02
    ld l, $46
    ld [hl], $1e
    ld l, $4b
    ld a, [hl]
    ld l, $7b
    ld [hl], a
    ld l, $4d
    ld a, [hl]
    ld l, $7c
    ld [hl], a
    call $041a
    and $02
    dec a
    ld e, $7e
    ld [de], a
    call $041a
    and $1f
    ld e, $49
    ld [de], a
    call $041a
    and $03
    ld hl, $7b4d
    rst $10
    ld a, [hl]
    ld e, $7d
    ld [de], a
    call Call_00f_7c3f
    jp $1e1e


    inc bc
    inc b
    dec b
    ld b, $cd
    ld l, e
    add hl, de
    jp z, $3ad9

    call $15e9
    ld h, d
    ld l, $5c
    ld [hl], $02
    ld l, $44
    ld [hl], $03
    ld l, $7e
    ld [hl], $04
    ld hl, $5779
    call $24fe
    jp $2686


    ld e, $45
    ld a, [de]
    rst $00
    ld a, h
    ld a, e
    adc h
    ld a, e
    sbc b
    ld a, e
    and l
    ld a, e
    call $25b8
    call $261d
    call $250c
    ret nc

    call $23a0
    jp Jump_00f_7c0f


    call Call_00f_7bf9
    ret nz

    ld l, $45
    inc [hl]
    ld l, $79
    ld [hl], $3c
    ret


    call Call_00f_7bf9
    ret nz

    ld l, $45
    inc [hl]
    ld hl, $7c5e
    call $24fe
    call $25b8
    call $261d
    call $250c
    ret nc

    ld h, d
    ld l, $45
    ld [hl], $01
    ld l, $7f
    ld a, [hl]
    cp $00
    jp z, Jump_00f_7c15

    jp Jump_00f_7c0f


    call $25b8
    call Call_00f_7be1
    call Call_00f_7bf9
    jp z, $3ad9

    ld l, $46
    ld a, [hl]
    or a
    ret nz

    ld l, $7d
    ld a, [hl]
    ld l, $7b
    ld b, [hl]
    ld l, $7c
    ld c, [hl]
    ld e, $7f
    call $20cc
    jp Jump_00f_7bfe


Call_00f_7be1:
    ld h, d
    ld l, $46
    ld a, [hl]
    or a
    jr z, jr_00f_7bf0

    dec [hl]
    ld a, [$cc00]
    rrca
    jp nc, $1e39

jr_00f_7bf0:
    jp $1e42


    call $250c
    jp $2686


Call_00f_7bf9:
    ld h, d
    ld l, $79
    dec [hl]
    ret


Jump_00f_7bfe:
    ld a, [$cc00]
    rrca
    ret nc

    ld h, d
    ld l, $7e
    ld b, [hl]
    ld l, $7f
    ld a, [hl]
    add b
    and $1f
    ld [hl], a
    ret


Jump_00f_7c0f:
    ld e, $7a
    xor a
    ld [de], a
    jr jr_00f_7c1f

Jump_00f_7c15:
    ld e, $7a
    ld a, [de]
    inc a
    cp $03
    jr c, jr_00f_7c1e

    xor a

jr_00f_7c1e:
    ld [de], a

jr_00f_7c1f:
    call Call_00f_7c3f
    call $041a
    and $01
    ld e, $7c
    ld [de], a
    push de
    call $3578
    call $3566
    call $358a
    pop de
    xor a
    ld [$cc30], a
    call Call_00f_7c50
    jp Jump_00f_7cce


Call_00f_7c3f:
    ld e, $7a
    ld a, [de]
    ld bc, $7c4d
    call $006d
    ld a, [bc]
    ld e, $79
    ld [de], a
    ret


    ldh a, [$b4]
    ld a, b

Call_00f_7c50:
    ld hl, $cee0
    xor a

jr_00f_7c54:
    ld [hl+], a
    inc a
    cp $0d
    jr nz, jr_00f_7c54

    ld e, $7d
    ld [de], a
    xor a
    ld e, $7b
    ld [de], a
    ret


Call_00f_7c62:
    ld e, $7d
    ld a, [de]
    ld b, a
    dec a
    ld [de], a
    call $041a

jr_00f_7c6b:
    sub b
    jr nc, jr_00f_7c6b

    add b
    ld c, a
    ld hl, $cee0
    rst $10
    ld a, [hl]
    ld e, $7e
    ld [de], a
    push de
    ld d, c
    ld e, b
    dec e
    ld b, h
    ld c, l

jr_00f_7c7e:
    ld a, d
    cp e
    jr z, jr_00f_7c88

    inc bc
    ld a, [bc]
    ld [hl+], a
    inc d
    jr jr_00f_7c7e

jr_00f_7c88:
    pop de
    ret


Call_00f_7c8a:
    ld h, d
    ld l, $7a
    ld a, [hl]
    swap a
    ld l, $7b
    add [hl]
    ld bc, $7c9e
    call $006d
    ld a, [bc]
    ld l, $7c
    xor [hl]
    ret


    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00f_7cce:
jr_00f_7cce:
    call $3ac6
    ret nz

    ld [hl], $cb
    inc hl
    push hl
    call Call_00f_7c8a
    pop hl
    inc a
    ld [hl], a
    ld e, $7a
    ld a, [de]
    ld l, $7a
    ld [hl], a
    push hl
    call Call_00f_7c62
    pop hl
    ld e, $7e
    ld a, [de]
    ld bc, $7d03
    call $007e
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    ld e, $7b
    ld a, [de]
    inc a
    ld [de], a
    cp $0d
    jr nz, jr_00f_7cce

    ret


    inc e
    jr nz, jr_00f_7d22

    ld b, b
    inc e
    ld h, b
    inc e
    add b
    inc [hl]
    jr nc, jr_00f_7d42

    ld d, b
    inc [hl]
    ld [hl], b
    ld c, h
    jr nz, @+$4e

    ld b, b
    ld c, h
    ld h, b
    ld c, h
    add b
    ld h, h
    jr nc, @+$66

    ld [hl], b
    ld e, $44
    ld a, [de]
    rst $00
    dec h

jr_00f_7d22:
    ld a, l
    ld l, l
    ld a, l
    ld a, $28
    call $30c7
    jp z, $3ad9

    ld a, $01
    ld [de], a
    ld a, $4c
    call $24f5
    call $1956
    and $03
    or a
    jr z, jr_00f_7d46

    ld hl, $7dc7
    rst JumpTable
    ld a, [hl+]

jr_00f_7d42:
    ld h, [hl]
    ld l, a
    jr jr_00f_7d61

jr_00f_7d46:
    ld a, $5c
    call $30c7
    jr z, jr_00f_7d52

    ld hl, $7dac
    jr jr_00f_7d61

jr_00f_7d52:
    call $1956
    bit 7, a
    jr z, jr_00f_7d5e

    ld hl, $7db2
    jr jr_00f_7d61

jr_00f_7d5e:
    ld hl, $7cc2

jr_00f_7d61:
    call $24fe
    call $15e9
    call Call_00f_7dc1
    call $26ac
    call $2686
    call $250c
    call Call_00f_7dac
    call $23be
    ret nz

    call Call_00f_7d95
    ld a, $f8
    call $15ba
    ret z

    call $23a0
    ld l, $78
    ld a, [hl]
    ld b, $02
    cp $04
    jr nc, jr_00f_7d91

    ld b, $03

jr_00f_7d91:
    ld l, $79
    ld [hl], b
    ret


Call_00f_7d95:
    ld c, $06
    call $2274
    ld h, d
    jr z, jr_00f_7da2

    ld l, $77
    ld [hl], $00
    ret


jr_00f_7da2:
    ld l, $77
    ld a, [hl]
    or a
    ret nz

    ld [hl], $01
    inc l
    inc [hl]
    ret


Call_00f_7dac:
    call $1956
    and $03
    or a
    and $01
    ret z

    ld e, $79
    ld a, [de]
    cp $03
    ret nz

    ld c, $20
    call $1f04
    ret nz

Call_00f_7dc1:
    ld bc, $ff40
    jp $2358


    jp nz, $007c

    ld a, l
    add a
    ld a, l
    nop
    ld a, l
    ld e, $44
    ld a, [de]
    rst $00
    reti


    ld a, l
    ld l, c
    ld a, [hl]
    ld [hl], h
    ld a, [hl]
    ld e, $42
    ld a, [de]
    rst $00
    db $e3
    ld a, l
    inc [hl]
    ld a, [hl]
    ld d, a
    ld a, [hl]
    ld a, $28
    call $30c7
    jp z, $3ad9

    call $15e9
    call $239b
    ld a, $4c
    call $24f5
    ld a, $5d
    call $30c7
    jp z, Jump_00f_7e03

    ld hl, $7e6c
    jr jr_00f_7e22

Jump_00f_7e03:
    ld a, $07
    ld b, $ea
    call $1963
    and $40
    jr z, jr_00f_7e15

    res 6, [hl]
    ld hl, $7e48
    jr jr_00f_7e22

jr_00f_7e15:
    ld a, $53
    call $30c7
    ld hl, $7db8
    jr z, jr_00f_7e22

    ld hl, $7de2

jr_00f_7e22:
    call $24fe
    xor a
    ld hl, $cfd0
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    call $25cb
    jp $2686


    ld hl, $cfd1
    ld a, [hl]
    or a
    jp nz, $3ad9

    inc [hl]
    ld h, d
    ld l, $44
    ld [hl], $02
    ld a, $2e
    call $30d3
    ld a, $4c
    call $24f5
    ld hl, $7e0f
    call $24fe
    call $1e4b
    jr jr_00f_7e74

    ld h, d
    ld l, $44
    ld [hl], $02
    ld a, $4c
    call $24f5
    ld hl, $7e6f
    call $24fe
    jr jr_00f_7e74

    call $250c
    ld e, $7f
    ld a, [de]
    or a
    ret nz

    jp $2686


jr_00f_7e74:
    ld e, $42
    ld a, [de]
    dec a
    jr nz, jr_00f_7e82

    ld hl, $79df
    ld e, $0f
    call $008a

jr_00f_7e82:
    call $250c
    jp c, $3ad9

    ret


    ld e, $44
    ld a, [de]
    rst $00
    sub c
    ld a, [hl]
    call z, $3e7e
    ld bc, $1e12
    ld b, d
    ld a, [de]
    or a
    jr z, jr_00f_7ea2

    call $196b
    jp z, $3ad9

    jr jr_00f_7eaa

jr_00f_7ea2:
    ld a, $28
    call $30c7
    jp z, $3ad9

jr_00f_7eaa:
    call $15e9
    call $26ac
    ld h, d
    ld l, e
    inc [hl]
    ld l, $4f
    ld [hl], $f0
    ld l, $77
    ld [hl], $36
    ld a, $41
    call $24f5
    xor a
    ld [$cc51], a
    ld a, $0f
    call $0c74
    jp $24ad


    ld e, $45
    ld a, [de]
    rst $00
    call nc, $017e
    ld a, a
    ld h, d
    ld l, $77
    dec [hl]
    ret nz

    ld l, $45
    inc [hl]
    xor a
    call $25cb
    call $1e03
    ld e, $7e
    ld a, $07
    ld [de], a
    ld e, $42
    ld a, [de]
    or a
    ld hl, $5779
    jr nz, jr_00f_7efe

    ld a, $60
    call $30c7
    ld hl, $7e73
    jr z, jr_00f_7efe

    ld hl, $7e99

jr_00f_7efe:
    jp $24fe


    call $250c
    call $2686
    ld a, [$cc00]
    and $07
    ret nz

    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld hl, $7f1f
    rst $10
    ld e, $4f
    ld a, [de]
    add [hl]
    ld [de], a
    ret


    rst $38
    cp $ff
    nop
    ld bc, $0102
    nop
    ld e, $44
    ld a, [de]
    rst $00
    cpl
    ld a, a
    ld [hl], a
    ld a, a
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $7f74
    rst $10
    ld a, [$c610]
    cp [hl]
    jp nz, $3ad9

    ld a, $86
    call $04e7
    call $15e9
    call $26ac
    ld a, $4c
    call $24f5
    ld a, $28
    call $30c7
    ld hl, $7e9d
    jr z, jr_00f_7f71

    ld a, $61
    call $30c7
    ld hl, $7ef0
    jr nz, jr_00f_7f71

    call $1956
    bit 7, a
    ld hl, $7f01
    jr nz, jr_00f_7f71

    ld hl, $7eb9

jr_00f_7f71:
    jp $24fe


    dec bc
    inc c
    dec c
    call $250c
    call $2686
    ld c, $20
    call $1f60
    ld h, d
    ld l, $77
    jr c, jr_00f_7f91

    ld a, [hl]
    or a
    ret z

    xor a
    ld [hl], a
    ld a, $03
    jp $25cb


jr_00f_7f91:
    ld a, [hl]
    or a
    ret nz

    inc [hl]
    ld a, $01
    jp $25cb


    jp $3ad9


    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca

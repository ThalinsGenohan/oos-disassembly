; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX

    ld a, c
    rst $00
    ld a, [bc]
    ld b, b
    ld d, c
    ld b, b
    ld a, l
    ld b, b
    sub [hl]
    ld b, b
    ld hl, $4182
    call Call_007_416e
    ld hl, $c613
    ld a, [hl-]
    add a
    add [hl]
    push af
    ld hl, $417a
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_007_416e
    pop af
    ld c, a
    ld hl, $c5c0
    ld b, $40
    ld a, $ff
    call $044c
    ld hl, $c6c0
    ld b, $06
    ld a, $ff
    call $044c
    ld a, c
    cp $02
    jr nz, jr_007_4049

    ld hl, $c692
    ld a, $2d
    call $020e
    ld a, $76
    ld [$c5c0], a

jr_007_4049:
    ld hl, $4404
    ld e, $0a
    call $008a
    ld hl, $c611
    ld [hl], $00
    ld hl, $c5b2
    ld de, $41b1
    ld b, $08
    call $045b
    ld l, $b0
    call Call_007_4138
    ld [hl], e
    inc l
    ld [hl], d
    ld l, $b0
    call Call_007_414f
    ld e, c
    ld d, b
    call Call_007_40f6
    call Call_007_4153
    ld e, c
    ld d, b
    call Call_007_40f6
    jr jr_007_40b4

    call Call_007_40b4
    push af
    or a
    jr nz, jr_007_4089

    call Call_007_414f
    jr jr_007_408c

jr_007_4089:
    call Call_007_4153

jr_007_408c:
    ld l, c
    ld h, b
    ld de, $c5b0
    call Call_007_40f6
    pop af
    ret


    call Call_007_414f
    call Call_007_409f
    call Call_007_4153

Call_007_409f:
    ld a, $0a
    ld [$1111], a
    ld l, c
    ld h, b
    call Call_007_40ae
    xor a
    ld [$1111], a
    ret


Call_007_40ae:
    ld bc, $0550
    jp $0451


Call_007_40b4:
jr_007_40b4:
    call Call_007_4153
    ld l, c
    ld h, b
    call Call_007_4108
    and $01
    push af
    call Call_007_414f
    ld l, c
    ld h, b
    call Call_007_4108
    pop bc
    rl b
    ld a, b
    rst $00
    pop hl
    ld b, b
    db $e3
    ld b, b
    call nc, $f340
    ld b, b
    call Call_007_4153
    ld e, c
    ld d, b
    call Call_007_414f
    ld l, c
    ld h, b
    call Call_007_40f6
    xor a
    ret


    call Call_007_414f
    ld e, c
    ld d, b
    call Call_007_4153
    ld l, c
    ld h, b
    call Call_007_40f6
    ld a, $01
    ret


    ld a, $ff
    ret


Call_007_40f6:
    push hl
    ld a, $0a
    ld [$1111], a
    ld bc, $0550
    call $0472
    xor a
    ld [$1111], a
    pop hl
    ret


Call_007_4108:
    push hl
    ld a, $0a
    ld [$1111], a
    call Call_007_4138
    ld a, [hl+]
    cp e
    jr nz, jr_007_412f

    ld a, [hl+]
    cp d
    jr nz, jr_007_412f

    ld de, $41b1
    ld b, $08

jr_007_411e:
    ld a, [de]
    cp [hl]
    jr nz, jr_007_412f

    inc de
    inc hl
    dec b
    jr nz, jr_007_411e

jr_007_4127:
    xor a
    ld [$1111], a
    pop hl
    ld a, b
    rrca
    ret


jr_007_412f:
    pop hl
    push hl
    call Call_007_40ae
    ld b, $ff
    jr jr_007_4127

Call_007_4138:
    push hl
    ld a, $02
    rst $10
    ld bc, $02a7
    ld de, $0000

jr_007_4142:
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    adc d
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_007_4142

    pop hl
    ret


Call_007_414f:
    ld c, $00
    jr jr_007_4155

Call_007_4153:
    ld c, $03

jr_007_4155:
    push hl
    ldh a, [$98]
    add c
    ld hl, $4162
    rst JumpTable
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    ret


    db $10
    and b
    ld h, b
    and l
    or b
    xor d
    nop
    or b
    ld d, b
    or l
    and b
    cp d

Call_007_416e:
    ld d, $c6

jr_007_4170:
    ld a, [hl+]
    or a
    jr z, jr_007_4179

    ld e, a
    ld a, [hl+]
    ld [de], a
    jr jr_007_4170

jr_007_4179:
    ret


    sbc l
    ld b, c
    xor b
    ld b, c
    and c
    ld b, c
    xor b
    ld b, c
    add hl, hl
    ld [bc], a
    ld [$0701], sp
    nop
    ld c, $00
    sub d
    inc b
    xor e
    db $10
    and d
    db $10
    and e
    db $10
    dec hl
    nop
    inc l
    and a
    cpl
    jr c, jr_007_41c9

    ld c, b
    ld l, $02
    nop
    and d
    inc c
    and e
    inc c
    rrca
    nop
    xor c
    ld bc, $0b10
    nop
    xor h
    ld bc, $01a9
    add d
    dec b
    sub d
    inc h
    nop
    ld e, d
    ld sp, $3231
    ld sp, $2d36
    jr nc, @-$04

    ld [$87d0], sp
    add a
    ld hl, $4219
    rst $10
    ld de, $cc8a
    ld a, [$d00b]
    add [hl]

jr_007_41c9:
    ld [de], a
    inc hl
    inc e
    ld a, [$d00d]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $80
    ldh [$ac], a
    ld d, $d0
    ld a, d

jr_007_41df:
    ldh [$ad], a
    ld h, d
    ld l, $a4
    bit 7, [hl]
    jr z, jr_007_41f0

    ld a, [hl]
    ld l, $aa
    bit 7, [hl]
    call z, Call_007_4233

jr_007_41f0:
    inc d
    ld a, d
    cp $e0
    jr c, jr_007_41df

    ld a, $c0
    ldh [$ac], a
    ld d, $d0
    ld a, d

jr_007_41fd:
    ldh [$ad], a
    ld h, d
    ld l, $e4
    bit 7, [hl]
    jr z, jr_007_4212

    ld l, $ea
    bit 7, [hl]
    jr nz, jr_007_4212

    inc l
    ld a, [hl]
    or a
    call z, $4229

jr_007_4212:
    inc d
    ld a, d
    cp $e0
    jr c, jr_007_41fd

    ret


    ld sp, hl
    ld bc, $0601
    nop
    ld b, $07
    ld bc, $ff06
    ld bc, $0006
    ld sp, hl
    rlca
    ld bc, $e41e
    ld a, [de]
    ld hl, $6940
    ld e, $cb
    jr jr_007_4238

Call_007_4233:
    ld hl, $6740
    ld e, $8b

jr_007_4238:
    add a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, l
    ldh [$92], a
    ld a, h
    ldh [$93], a
    ld h, d
    ld l, e
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl+]
    ldh [$8e], a
    inc l
    ld a, [hl]
    ldh [$91], a
    ld a, l
    add $1c
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_007_42a6

    ld h, $d6

jr_007_425b:
    ld l, $24
    ld a, [hl]
    bit 7, a
    jr z, jr_007_42a0

    and $7f
    ldh [$90], a
    ld b, a
    ld e, h
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ld a, b
    call Call_007_4313
    ld h, e
    jr z, jr_007_42a0

    ld bc, $0e07
    ldh a, [$90]
    cp $17
    jr nz, jr_007_4284

    ld l, $26
    ld a, [hl]
    ld c, a
    add a
    ld b, a

jr_007_4284:
    ld l, $0f
    ldh a, [$91]
    sub [hl]
    add c
    cp b
    jr nc, jr_007_42a0

    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld l, $26
    ldh a, [$ac]
    add $26
    ld e, a
    call $1bca
    jp c, Jump_007_4329

jr_007_42a0:
    inc h
    ld a, h
    cp $de
    jr c, jr_007_425b

jr_007_42a6:
    call $1ce6
    ret nc

    ld l, $0f
    ldh a, [$91]
    sub [hl]
    add $07
    cp $0e
    ret nc

    ld a, [$cc89]
    or a
    jr z, jr_007_42de

    ldh [$90], a
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ldh a, [$90]
    call Call_007_4313
    jr z, jr_007_42de

    ld hl, $cc8a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ldh a, [$ac]
    add $26
    ld e, a
    call $1bca
    ld hl, $d000
    jp c, Jump_007_4329

jr_007_42de:
    ldh a, [$ac]
    add $2e
    ld e, a
    ld a, [de]
    or a
    ret nz

    ld a, [$cc48]
    ld h, a
    ld e, a
    ld l, $24
    ld a, [hl]
    and $7f
    ldh [$90], a
    ldh a, [$92]
    ld l, a
    ldh a, [$93]
    ld h, a
    ldh a, [$90]
    call Call_007_4313
    ret z

    ld h, e
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld l, $26
    ldh a, [$ac]
    add $26
    ld e, a
    call $1bca
    jp c, Jump_007_4329

    ret


Call_007_4313:
    ld b, a
    and $f8
    rlca
    swap a
    ld c, a
    ld a, b
    and $07
    ld b, $00
    add hl, bc
    ld c, [hl]
    ld hl, $00f8
    add l
    ld l, a
    ld a, [hl]
    and c
    ret


Jump_007_4329:
    ld a, l
    and $c0
    ld l, a
    push hl
    ld a, $d6
    cp h
    jr nz, jr_007_433c

    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    jr jr_007_4341

jr_007_433c:
    ldh a, [$8d]
    ld b, a
    ldh a, [$8c]

jr_007_4341:
    ld c, a
    call $1e6f
    ldh [$8a], a
    ldh a, [$ac]
    add $25
    ld e, a
    ld a, [de]
    add a
    call $01ac
    ld hl, $6a90
    add hl, bc
    pop bc
    ldh a, [$90]
    rst $10
    ld a, [hl]
    rst $00
    db $db
    ld b, e
    ld c, $44
    ld [de], a
    ld b, h
    ld d, $44
    ld a, [de]
    ld b, h
    ld l, e
    ld b, h
    ld [hl], b
    ld b, h
    ld [hl], l
    ld b, h
    inc h
    ld b, h
    jr z, jr_007_43b3

    inc l
    ld b, h
    jr nc, jr_007_43b7

    ld c, h
    ld b, h
    ld d, e
    ld b, h
    ld e, d
    ld b, h
    ld a, l
    ld b, h
    add l
    ld b, h
    and l
    ld b, h
    ld c, c
    ld b, h
    ld d, b
    ld b, h
    ld d, a
    ld b, h
    adc d
    ld b, h
    sub d
    ld b, h
    sbc d
    ld b, h
    ld a, d
    ld b, h
    add d
    ld b, h
    and d
    ld b, h
    xor d
    ld b, h
    inc [hl]
    ld b, l
    or d
    ld b, h
    or a
    ld b, h
    cp h
    ld b, h
    pop bc
    ld b, h
    jr c, @+$46

    sub $44
    ld l, h
    ld b, l
    ld [hl], l
    ld b, l
    adc l
    ld b, l
    db $e3
    ld b, h
    add sp, $44
    ld sp, hl
    ld b, h
    sbc h
    ld b, l
    db $ec
    ld b, l
    jr nz, @+$47

jr_007_43b3:
    dec h
    ld b, l
    ld [bc], a
    ld b, [hl]

jr_007_43b7:
    add hl, sp
    ld b, l
    ld a, [hl+]
    ld b, l
    cpl
    ld b, l
    ld [$0d46], sp
    ld b, [hl]
    ld [de], a
    ld b, [hl]
    dec de
    ld b, [hl]
    dec hl
    ld b, [hl]
    ccf
    ld b, [hl]
    ld a, e
    ld b, [hl]
    sbc [hl]
    ld b, [hl]
    or l
    ld b, [hl]
    rlca
    ld b, l
    or [hl]
    ld b, [hl]
    call c, $0c43
    ld b, l
    ret nz

    ld b, [hl]
    pop bc
    ld b, [hl]
    ret


    ldh a, [$ac]
    inc a
    ld e, a
    ld a, [de]
    ld c, a
    ld hl, $4405

jr_007_43e5:
    ld a, [hl+]
    or a
    jr z, jr_007_4412

    cp c
    ld a, [hl+]
    jr nz, jr_007_43e5

    ld c, a
    and $7f
    call $236b
    jr nz, jr_007_4412

    bit 7, c
    ld a, $40
    jp z, Jump_007_46ef

    call Call_007_4412
    ld h, b
    ld l, $25
    sra [hl]
    ret


    ld c, $9a
    jr @+$22

    add hl, de
    rra
    add hl, hl
    sbc e
    nop
    ld e, $00
    jr jr_007_441c

Call_007_4412:
jr_007_4412:
    ld e, $04
    jr jr_007_441c

    ld e, $08
    jr jr_007_441c

    ld e, $0c

jr_007_441c:
    call Call_007_47c7
    ld a, $1c
    jp Jump_007_46ef


    ld e, $00
    jr jr_007_443a

    ld e, $04
    jr jr_007_443a

    ld e, $08
    jr jr_007_443a

    call Call_007_479f
    ret z

    ld e, $0c
    jr jr_007_443a

    ld e, $30

jr_007_443a:
    ldh a, [$ac]
    add $3e
    ld l, a
    ld h, d
    ld c, $2a
    ld a, [bc]
    or [hl]
    ld [bc], a
    ld a, e
    jp Jump_007_46ef


    call Call_007_46cf
    ld e, $10
    jr jr_007_445c

    call Call_007_46cf
    ld e, $14
    jr jr_007_445c

    call Call_007_46cf
    ld e, $18

jr_007_445c:
    ldh a, [$ac]
    add $3e
    ld l, a
    ld h, d
    ld c, $2a
    ld a, [bc]
    or [hl]
    ld [bc], a
    ld a, e
    jp Jump_007_46ef


    ld hl, $101c
    jr jr_007_44d9

    ld hl, $141c
    jr jr_007_44d9

    ld hl, $181c
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1010
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1414
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1034
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1434
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1834
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1818
    jr jr_007_44d9

    call Call_007_46cf
    ld hl, $1c28
    jr jr_007_44d9

    ld hl, $0c04
    jr jr_007_44d9

    ld hl, $2834
    jr jr_007_44d9

    ld hl, $2034
    jr jr_007_44d9

    ld h, b
    ld l, $01
    ld a, [hl]
    cp $28
    jr nc, jr_007_44cd

    ld l, $24
    res 7, [hl]

jr_007_44cd:
    call Call_007_479f
    ret z

    ld hl, $2444
    jr jr_007_44d9

    ld hl, $1c24

Call_007_44d9:
jr_007_44d9:
    ld a, h
    push hl
    call Call_007_47c8
    pop hl
    ld a, l
    jp Jump_007_46ef


    ld hl, $1c34
    jr jr_007_44d9

    ld h, b
    ld l, $24
    res 7, [hl]
    call Call_007_479f
    ret z

    call Call_007_46c2
    ld hl, $1c2c
    jr jr_007_44d9

    ld h, b
    ld l, $24
    res 7, [hl]
    call Call_007_479f
    ret z

    ld hl, $1c38
    jr jr_007_44d9

    ld e, $ad
    ld a, [de]
    or a
    ret nz

    ld a, [$d001]
    or a
    ret nz

    ld a, [$cc88]
    or a
    ret nz

    ld a, $0d
    ld [$cc6a], a
    ld hl, $2c1c
    jr jr_007_44d9

    ld hl, $1c3c
    jr jr_007_44d9

    ld hl, $1430
    jr jr_007_44d9

    ld hl, $3004
    jr jr_007_44d9

    ld hl, $1c44
    jr jr_007_44d9

jr_007_4534:
    ld hl, $1c1c
    jr jr_007_44d9

    ld h, d
    ldh a, [$ac]
    add $29
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_007_4534

    ld a, l
    add $05
    ld l, a
    xor a
    ld [hl-], a
    ld [hl-], a
    ldh a, [$8a]
    xor $10
    ld [hl], a
    res 3, l
    res 7, [hl]
    ld a, l
    add $e0
    ld l, a
    ld [hl], $03
    inc l
    ld [hl], $00
    ld h, b
    ld l, $2a
    set 5, [hl]
    ld l, $24
    res 7, [hl]
    ld l, $18
    ldh a, [$ac]
    ld [hl+], a
    ld [hl], d
    ret


    ldh a, [$ac]
    add $29
    ld l, a
    ld h, d
    ld [hl], $00
    ret


    ldh a, [$ac]
    add $2a
    ld e, a
    ldh a, [$90]
    or $80
    ld [de], a
    ld a, e
    add $ec
    ld l, a
    ld h, d
    ld [hl], c
    inc l
    ld [hl], b
    ld c, $2a
    ld a, $01
    ld [bc], a
    ret


    call Call_007_4631
    ld a, l
    add $1b
    ld l, a
    set 7, [hl]
    ld c, $2a
    ld a, $02
    ld [bc], a
    ret


    ld h, b
    ld l, $24
    res 7, [hl]
    call Call_007_479f
    ret z

    ld h, d
    ld l, $aa
    ld [hl], $9e
    ld l, $ae
    ld [hl], $00
    ld l, $a4
    res 7, [hl]
    ld l, $84
    ld [hl], $05
    ld l, $9a
    ld a, [hl]
    and $c0
    or $02
    ld [hl], a
    ld l, $87
    ld [hl], $1e
    ld l, $90
    ld [hl], $05
    ld l, $94
    ld [hl], $00
    inc l
    ld [hl], $fa
    ld l, $8b
    ld c, $0b
    ld a, [bc]
    ld [hl+], a
    inc l
    ld c, $0d
    ld a, [bc]
    ld [hl+], a
    inc l
    ld a, [hl]
    rlca
    jr c, jr_007_45df

    ld [hl], $ff

jr_007_45df:
    call $041a
    and $18
    ld e, $89
    ld [de], a
    ld a, $1c
    jp Jump_007_47c8


    ld h, b
    ld l, $2d
    ld a, d
    cp [hl]
    ret z

    ld [hl-], a
    ld e, $e1
    ld a, [de]
    ld [hl-], a
    dec l
    set 4, [hl]
    ld e, $ea
    ldh a, [$90]
    or $80
    ld [de], a
    ret


    ld h, b
    ld l, $2f
    set 5, [hl]
    ret


    ld a, $34
    jp Jump_007_46ef


    ld hl, $3448
    jr jr_007_4615

    ld hl, $384c

jr_007_4615:
    call Call_007_44d9
    jp Jump_007_46cf


    call Call_007_46c2
    ld h, b
    ld l, $24
    res 7, [hl]
    ld hl, $1c2c
    call Call_007_44d9
    jr jr_007_4631

    ld hl, $1c1c
    call Call_007_44d9

Call_007_4631:
jr_007_4631:
    ld h, d
    ldh a, [$ac]
    add $29
    ld l, a
    ld [hl], $00
    add $fb
    ld l, a
    res 7, [hl]
    ret


    ld h, d
    ldh a, [$ac]
    add $2a
    ld l, a
    ld [hl], $a0
    add $fa
    ld l, a
    res 7, [hl]
    ld a, $1e
    call $236b
    ld a, $f8
    jr nz, jr_007_4656

    xor a

jr_007_4656:
    ld hl, $d025
    ld [hl], a
    ld l, $2c
    ldh a, [$8a]
    ld [hl], a
    ld l, $2d
    ld [hl], $08
    ld l, $2b
    ld [hl], $0c
    ld a, [$ccf2]
    or a
    jr nz, jr_007_4671

    inc a
    ld [$ccf2], a

jr_007_4671:
    ld h, b
    ld l, $24
    res 7, [hl]
    ld a, $1c
    jp Jump_007_47c8


    ldh a, [$ac]
    add $2b
    ld e, a
    ld a, [de]
    or a
    ret nz

    ld a, [$cc88]
    or a
    ret nz

    ld a, [$d004]
    cp $01
    ret nz

    ld a, e
    add $f9
    ld e, a
    xor a
    ld [de], a
    ld a, $0c
    ld [$cc6a], a
    ld a, $1c
    jp Jump_007_46ef


    ld h, d
    ldh a, [$ac]
    add $24
    ld l, a
    res 7, [hl]
    add $e2
    ld l, a
    ld [hl], $60
    add $09
    ld l, a
    ld [hl], $00
    ld a, $1c
    jp Jump_007_46ef


    ret


    ld a, $02
    call $2a16
    ld a, $1c
    jp Jump_007_46ef


    ret


    ret


Call_007_46c2:
    call $3ea7
    ret nz

    ld [hl], $12
    ld l, $d6
    ldh a, [$ac]
    ld [hl+], a
    ld [hl], d
    ret


Call_007_46cf:
Jump_007_46cf:
    call $3ac6
    jr nz, jr_007_46ee

    ld [hl], $07
    ldh a, [$8f]
    ld l, a
    ldh a, [$8d]
    sub l
    sra a
    add l
    ld l, $4b
    ld [hl+], a
    ldh a, [$8e]
    ld l, a
    ldh a, [$8c]
    sub l
    sra a
    add l
    ld l, $4d
    ld [hl], a

jr_007_46ee:
    ret


Jump_007_46ef:
    ld hl, $4747
    rst $10
    ldh a, [$ac]
    add $29
    ld e, a
    bit 7, [hl]
    jr z, jr_007_4712

    ld c, $28
    ld a, [bc]
    ld c, a
    ld a, [de]
    add c
    jr c, jr_007_4705

    xor a

jr_007_4705:
    ld [de], a
    jr nz, jr_007_4712

    ld c, e
    ld a, e
    add $fb
    ld e, a
    ld a, [de]
    res 7, a
    ld [de], a
    ld e, c

jr_007_4712:
    inc e
    ld a, [hl+]
    ld c, a
    bit 6, c
    jr z, jr_007_471e

    ldh a, [$90]
    or $80
    ld [de], a

jr_007_471e:
    inc e
    ld a, [hl+]
    bit 5, c
    jr z, jr_007_4725

    ld [de], a

jr_007_4725:
    inc e
    inc e
    bit 4, c
    ld a, [hl+]
    jr z, jr_007_4734

    ld [de], a
    ldh a, [$8a]
    xor $10
    dec e
    ld [de], a
    inc e

jr_007_4734:
    inc e
    ld a, [hl+]
    bit 3, c
    jr z, jr_007_473b

    ld [de], a

jr_007_473b:
    ld a, c
    and $07
    ret z

    ld hl, $4797
    rst $10
    ld a, [hl]
    jp $0c74


    pop af
    db $10
    ld [$f100], sp
    dec d
    dec bc
    nop
    pop af
    ld a, [de]
    rrca
    nop
    pop af
    jr nz, jr_007_4756

jr_007_4756:
    nop
    ld [hl], b
    ldh a, [$08]
    nop
    ld [hl], b
    db $eb
    dec bc
    nop
    ld [hl], b
    and $0f
    nop
    ld b, b
    nop
    nop
    nop
    pop hl
    jr nz, jr_007_476a

jr_007_476a:
    nop
    add hl, hl
    ldh a, [rP1]
    ld a, b
    ld h, b
    db $ec
    nop
    nop
    add sp, -$5a
    nop
    ld e, d
    ld a, [c]
    jr nz, jr_007_477a

jr_007_477a:
    nop
    ld h, b
    db $e4
    nop
    nop
    add hl, hl
    ldh a, [rP1]
    ldh a, [$a9]
    jr jr_007_4786

jr_007_4786:
    ld a, b
    db $e3
    jr nz, jr_007_478a

jr_007_478a:
    nop
    ld d, b
    nop
    nop
    nop
    ld [hl], b
    rst $30
    rlca
    nop
    ld [hl], b
    push af
    add hl, bc
    nop
    nop
    ld c, [hl]
    ld h, e
    ld e, b
    nop
    nop
    nop
    nop

Call_007_479f:
    ld c, $01
    ld a, [bc]
    cp $24
    ret nz

    ldh a, [$ac]
    add $3f
    ld e, a
    ld a, [de]
    cpl
    bit 5, a
    ret nz

    ld h, b
    ld l, $2a
    ld [hl], $40
    ld l, $24
    res 7, [hl]
    ldh a, [$ac]
    add $2a
    ld e, a
    ld a, $9a
    ld [de], a
    ld a, e
    add $04
    ld e, a
    xor a
    ld [de], a
    ret


Call_007_47c7:
    ld a, e

Call_007_47c8:
Jump_007_47c8:
    push af
    ldh a, [$ac]
    add $3e
    ld e, a
    ld a, [de]
    ld [$cec0], a
    pop af
    ld hl, $4816
    rst $10
    bit 7, [hl]
    jr z, jr_007_47e4

    ldh a, [$ac]
    add $28
    ld e, a
    ld a, [de]
    ld c, $25
    ld [bc], a

jr_007_47e4:
    ld a, [hl+]
    ld e, a
    ld c, $2a
    ld a, [bc]
    ld c, a
    ld a, [$cec0]
    or c
    ld c, $2a
    ld [bc], a
    inc c
    ld a, [hl+]
    bit 5, e
    jr z, jr_007_47f8

    ld [bc], a

jr_007_47f8:
    inc c
    ldh a, [$8a]
    ld [bc], a
    inc c
    ld a, [hl+]
    bit 4, e
    jr z, jr_007_4803

    ld [bc], a

jr_007_4803:
    inc c
    ld a, [hl+]
    bit 4, e
    jr z, jr_007_480a

    ld [bc], a

jr_007_480a:
    ld a, e
    and $07
    ret z

    ld hl, $4852
    rst $10
    ld a, [hl]
    jp $0c74


    or d
    add hl, de
    rlca
    nop
    or d
    ld [hl+], a
    rrca
    nop
    or d
    ld a, [hl+]
    dec d
    nop
    or d
    jr nz, jr_007_4825

jr_007_4825:
    nop
    ld sp, $0bf8
    nop
    ld sp, $13f1
    nop
    ld sp, $19ea
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    inc de
    nop
    stop
    ld h, d
    db $f4
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld sp, $06fa
    nop
    ld sp, $08f8
    nop
    nop
    ld d, d
    ld e, a
    ld e, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld b, $00
    ld a, [$cd00]
    cp $08
    jr z, jr_007_4876

    ld a, [$cca4]
    and $90
    jr nz, jr_007_4876

    ld a, [$c4ab]
    or a
    jr nz, jr_007_4876

    ld a, [$cba0]
    or a
    jr z, jr_007_4877

jr_007_4876:
    inc b

jr_007_4877:
    ld hl, $cca5
    ld a, [hl]
    and $fe
    or b
    ld [hl], a
    xor a
    ld [$ccf0], a
    ld a, $00
    ldh [$ac], a
    ld d, $d6
    ld a, d

jr_007_488a:
    ldh [$ad], a
    ld e, $00
    ld a, [de]
    or a
    jr z, jr_007_489f

    ld e, $04
    ld a, [de]
    or a
    jr z, jr_007_489c

    ld a, [$cca5]
    or a

jr_007_489c:
    call z, Call_007_48a6

jr_007_489f:
    inc d
    ld a, d
    cp $e0
    jr c, jr_007_488a

    ret


Call_007_48a6:
    ld e, $01
    ld a, [de]
    rst $00
    xor [hl]
    ld e, h
    add hl, hl
    inc l
    xor [hl]
    ld e, h
    dec a
    ld d, e
    add hl, hl
    inc l
    inc de
    ld e, h
    ld a, [hl-]
    ld d, l
    ld c, c
    ld e, e
    pop bc
    ld e, e
    add hl, hl
    inc l
    add hl, hl
    inc l
    add hl, hl
    inc l
    ei
    ld e, e
    ld sp, $2950
    inc l
    add hl, hl
    inc l
    add hl, hl
    inc l
    add hl, hl
    inc l
    add hl, hl
    inc l
    and [hl]
    ld e, e
    add hl, hl
    inc l
    rra
    ld e, e
    ld c, b
    ld h, b
    add hl, hl
    inc l
    add hl, hl
    inc l
    add hl, hl
    inc l
    and d
    ld h, d
    add hl, hl
    inc l
    add hl, hl
    inc l
    adc d
    ld e, e
    db $e4
    ld e, e
    add hl, hl
    inc l
    jp $c34c


    ld c, h
    jp $c34c


    ld c, h
    jp $294c


    inc l
    add hl, hl
    inc l
    push hl
    ld e, h
    adc h
    ld e, d
    and [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld [$af4f], a
    ldh [$ac], a
    ld d, $d6
    ld a, d

jr_007_4908:
    ldh [$ad], a
    ld e, $00
    ld a, [de]
    or a
    call nz, Call_007_4918
    inc d
    ld a, d
    cp $e0
    jr c, jr_007_4908

    ret


Call_007_4918:
    ld e, $01
    ld a, [de]
    rst $00
    inc h
    ld e, [hl]
    rla
    ld c, c
    inc h
    ld e, [hl]
    rla
    ld c, c
    ld b, e
    ld e, [hl]
    ld b, e
    ld e, [hl]
    rla
    ld c, c
    ld b, e
    ld e, [hl]
    db $db
    ld e, l
    rla
    ld c, c
    add hl, hl
    inc l
    add hl, hl
    inc l
    ld l, $5e
    rla
    ld c, c
    rla
    ld c, c
    add hl, hl
    inc l
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    or $5d
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    sbc d
    ld e, e
    dec bc
    ld e, [hl]
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c
    rla
    ld c, c

Call_007_4974:
    call $23a5
    ld l, $00
    ld [hl], $03

Call_007_497b:
    ld e, $01
    ld a, [de]
    add a
    ld hl, $6351
    rst JumpTable
    ld e, $24
    ld a, [hl+]
    ld [de], a
    ld e, $26
    ld a, [hl]
    swap a
    and $0f
    ld [de], a
    inc e
    ld a, [hl+]
    and $0f
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld c, a
    inc e
    ld a, [hl+]
    ld [de], a
    ld e, $3a
    ld a, c
    ld [de], a
    call Call_007_49aa
    ld hl, $4422
    ld e, $3f
    jp $008a


Call_007_49aa:
    ld e, $3c
    ld a, $ff
    ld [de], a
    ret


Call_007_49b0:
    ld h, d
    ld l, $25
    ld a, [hl]
    ld [hl], $00
    ld l, $29
    add [hl]
    ld [hl], a
    rlca
    ld l, $2a
    ld a, [hl]
    dec a
    inc a
    ret


Call_007_49c1:
Jump_007_49c1:
    ld h, d
    ld l, $20
    dec [hl]
    ret nz

    ld l, $22
    jr jr_007_49d9

Call_007_49ca:
Jump_007_49ca:
    add a
    ld c, a
    ld b, $00
    ld e, $01
    ld a, [de]
    ld hl, $6401
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc

jr_007_49d9:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_007_49e5

    ld b, a
    ld c, [hl]
    add hl, bc
    ld a, [hl+]

jr_007_49e5:
    ld e, $20
    ld [de], a
    ld a, [hl+]
    ld c, a
    ld b, $00
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $01
    ld a, [de]
    ld hl, $6461
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, $1e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    and $3f
    ld [de], a
    ret


Call_007_4a0a:
    ld h, d
    ld l, $2d
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    dec l
    ld b, [hl]
    ld hl, $d02d
    cp [hl]
    jr c, jr_007_4a1b

    ld [hl], a

jr_007_4a1b:
    dec l
    ld [hl], b
    ret


Call_007_4a1e:
    ld e, $08
    ld a, [de]
    ld e, a
    add a
    add e
    rst $10
    ld e, $0b
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    ld e, $0d
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    ld e, $0f
    ld a, [de]
    add [hl]
    ld [de], a
    ret


Call_007_4a37:
    ld h, d
    ld a, [$cc50]
    and $20
    ret z

    ld e, $0b
    ld l, $0f
    ld a, [de]
    add [hl]
    ld [de], a
    xor a
    ld [hl-], a
    ld [hl], a
    or d
    ret


Call_007_4a4a:
Jump_007_4a4a:
    ld e, $0f
    ld a, e
    ldh [$8b], a
    ld a, [de]
    rlca
    jr nc, jr_007_4a5d

    rrca
    ldh [$8b], a
    call $1f04
    jr nz, jr_007_4a66

    ldh [$8b], a

jr_007_4a5d:
    call $21e0
    jr nc, jr_007_4a66

    pop hl
    ld a, $ff
    ret


jr_007_4a66:
    ldh a, [$8b]
    rlca
    or a
    ret


Call_007_4a6b:
    ld h, d
    ld l, $0f
    and $80
    jr nz, jr_007_4a8b

    ld l, $31
    ld b, [hl]
    ld [hl+], a
    ld c, [hl]
    ld [hl+], a
    or b
    ret z

    push bc
    call $1ba1
    pop bc
    ret c

    call $1e62
    ld c, a
    ld b, $0a
    ld e, $09
    call $1fe7

jr_007_4a8b:
    xor a
    ret


Call_007_4a8d:
    call Call_007_4a37
    jr nz, jr_007_4aaf

    call $1f04
    jr nz, jr_007_4aa0

    call Call_007_4b02
    bit 4, [hl]
    set 4, [hl]
    scf
    ret


jr_007_4aa0:
    ld l, $3b
    res 4, [hl]
    or d
    ret


jr_007_4aa6:
    ld h, d
    ld l, $3b
    bit 4, [hl]
    set 4, [hl]
    scf
    ret


jr_007_4aaf:
    push bc
    call Call_007_4b02
    ld l, $15
    bit 7, [hl]
    jr z, jr_007_4ac4

    call $14b5
    ld h, d
    pop bc
    jr nc, jr_007_4ad3

    ld b, $03
    jr jr_007_4aec

jr_007_4ac4:
    ld l, $0b
    ld a, [hl+]
    add $05
    ld b, a
    inc l
    ld c, [hl]
    call $14bf
    ld h, d
    pop bc
    jr c, jr_007_4aa6

jr_007_4ad3:
    ld l, $3b
    bit 0, [hl]
    ld b, $03
    jr z, jr_007_4ae1

    ld b, $01
    bit 7, [hl]
    jr nz, jr_007_4aa0

jr_007_4ae1:
    ld e, $14
    ld l, $0a
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc e
    ld a, [de]
    adc [hl]
    ld [hl+], a

jr_007_4aec:
    ld l, $14
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    bit 7, a
    jr nz, jr_007_4aa0

    cp b
    jr c, jr_007_4aa0

    ld [hl], b
    dec l
    ld [hl], $00
    jr jr_007_4aa0

Call_007_4b02:
    call Call_007_4a37
    jr nz, jr_007_4b0d

    ld l, $0f
    bit 7, [hl]
    jr nz, jr_007_4b11

jr_007_4b0d:
    call $21d4
    ld h, d

jr_007_4b11:
    ld b, a
    ld l, $3b
    ld a, [hl]
    ld c, a
    and $b8
    xor $80
    or b
    ld [hl], a
    ld a, b
    xor c
    rrca
    jr nc, jr_007_4b23

    set 6, [hl]

jr_007_4b23:
    ret


Call_007_4b24:
    call Call_007_4a8d
    jr c, jr_007_4b3f

    ld a, [$cc50]
    and $20
    jr z, jr_007_4b3d

    ld b, $04
    bit 2, [hl]
    jr nz, jr_007_4b5f

    ld b, $03
    bit 6, [hl]
    call nz, Call_007_4b5f

jr_007_4b3d:
    xor a
    ret


jr_007_4b3f:
    ld a, [$cc50]
    and $20
    jr nz, jr_007_4b5b

    ld h, d
    ld l, $3b
    ld b, $03
    bit 0, [hl]
    jr nz, jr_007_4b5f

    ld b, $0f
    bit 1, [hl]
    jr nz, jr_007_4b64

    ld b, $04
    bit 2, [hl]
    jr nz, jr_007_4b5f

jr_007_4b5b:
    xor a
    bit 4, [hl]
    ret


Call_007_4b5f:
jr_007_4b5f:
    call $24af
    scf
    ret


jr_007_4b64:
    call $24bd
    scf
    ret


Call_007_4b69:
    ld b, $07
    jp $24af


Call_007_4b6e:
    ld a, $01
    call $211e
    ld e, $01
    ld a, [de]
    cp [hl]
    ret


Call_007_4b78:
    call $1435
    jr jr_007_4b80

Call_007_4b7d:
    call $1432

jr_007_4b80:
    ld e, a
    ld a, l
    ld h, d
    ld l, $3c
    cp [hl]
    ld [hl+], a
    jr nz, jr_007_4b8c

    ld a, e
    cp [hl]
    ret z

jr_007_4b8c:
    ld [hl], e
    ld l, $09
    ld b, [hl]
    call Call_007_4ba7
    jr nc, jr_007_4b9e

    ret z

    ld h, d
    ld l, $3e
    add [hl]
    ld [hl], a
    and $80
    ret z

jr_007_4b9e:
    ld h, d
    ld l, $3c
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    or d
    ret


Call_007_4ba7:
    ld hl, $4ca4
    call $1de8
    jr c, jr_007_4bdc

    ld a, b
    ld hl, $246d
    rst $10
    ld a, [hl]
    push af
    ld a, [$cc4f]
    ld hl, $4c38
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    srl a
    jr nc, jr_007_4bd2

    rst $10
    ld a, [hl]
    push hl
    rst $10
    call $1dc4
    pop hl
    jr c, jr_007_4bd9

    inc hl
    jr jr_007_4bd3

jr_007_4bd2:
    rst $10

jr_007_4bd3:
    ld a, [hl]
    rst $10
    call $1dc4
    ret nc

jr_007_4bd9:
    or a
    scf
    ret


jr_007_4bdc:
    xor a
    scf
    ret


Call_007_4bdf:
Jump_007_4bdf:
    ld e, $0f
    ld a, [de]
    rlca
    ret c

    ld bc, $0500
    call $1423
    ld hl, $4c23
    call $1ddd
    ret nc

    push af
    rrca
    rrca
    ld hl, $4c1b
    rst $10
    ld a, [hl+]
    ld c, [hl]
    ld h, d
    ld l, $0b
    add [hl]
    ld b, a
    ld l, $0d
    ld a, [hl]
    add c
    ld c, a
    call $14a5
    cp $ff
    jr z, jr_007_4c19

    call $14cd
    jr c, jr_007_4c19

    pop af
    ld c, a
    ld b, $14
    ld e, $09
    jp $1fe7


jr_007_4c19:
    pop af
    ret


    db $fd
    nop
    nop
    inc bc
    rlca
    nop
    nop
    db $fd
    scf
    ld c, h
    scf
    ld c, h
    scf
    ld c, h
    scf
    ld c, h
    cpl
    ld c, h
    scf
    ld c, h
    ld d, h
    nop
    ld d, l
    ld [$1056], sp
    ld d, a
    jr jr_007_4c38

jr_007_4c38:
    ld b, h
    ld c, h
    ld a, l
    ld c, h
    ld a, l
    ld c, h
    ld a, l
    ld c, h
    add e
    ld c, h
    ld a, l
    ld c, h
    dec b
    ld h, $14
    dec l
    ld bc, $ff54
    rst $08
    rst $38
    adc $ff
    ld e, b
    rst $38
    call $94ff
    rst $38
    sub l
    rst $38
    ld a, [hl+]
    ld bc, $5400
    ld bc, $01cf
    adc $01
    ld e, b
    ld bc, $01cd
    sub h
    ld bc, $0195
    ld a, [hl+]
    rst $38
    nop
    daa
    ld bc, $0126
    dec h
    rst $38
    jr z, @+$01

    nop
    daa
    rst $38
    ld h, $ff
    dec h
    ld bc, $0128
    nop
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0500
    ld d, $0c
    add hl, de
    ld bc, $01b2
    or b
    rst $38
    dec b
    ld bc, $ff06
    nop
    or b
    ld bc, $ffb2
    dec b
    rst $38
    ld b, $01
    nop
    or e
    ld bc, $ffb1
    nop
    or c
    ld bc, $ffb3
    nop
    or b
    ld c, h
    or b
    ld c, h
    or c
    ld c, h
    or d
    ld c, h
    or h
    ld c, h
    jp nz, $fd4c

    nop
    rst $08
    nop
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld a, [bc]
    dec bc
    nop
    ld e, $04
    ld a, [de]
    rst $00
    rst $08
    ld c, h
    inc a
    ld c, l
    call Call_007_7b4e
    ld c, [hl]
    call Call_007_497b
    xor a
    call Call_007_49ca
    call $1dfa
    call $23a5
    ld bc, $ffe0
    call $2358
    call $2c37
    ld l, $02
    ld a, [hl-]
    or a
    jr nz, jr_007_4cff

    ld a, [hl+]
    cp $23
    jr nz, jr_007_4cfb

    ld l, $0f
    ld a, [hl]
    add $f8
    ld [hl], a
    ld l, $09
    ld [hl], $ff
    ret


jr_007_4cfb:
    ld a, $1e
    jr jr_007_4d10

jr_007_4cff:
    ld hl, $4d2c
    rst $10
    ld e, $09
    ld a, [de]
    add [hl]
    and $1f
    ld [de], a
    ld hl, $ccf1
    inc [hl]
    ld a, $78

jr_007_4d10:
    ld e, $10
    ld [de], a
    ld hl, $4d30
    call Call_007_4a1e
    ld e, $01
    ld a, [de]
    cp $24
    ret nz

    call $042f
    and $03
    ld e, $03
    ld [de], a
    add $9b
    ld e, $24
    ld [de], a
    ret


    nop
    ld [bc], a
    cp $fc
    nop
    cp $01
    inc b
    cp $05
    nop
    cp $01
    ei
    cp $cd
    or b
    ld c, c
    jr nz, jr_007_4d9d

    ld e, $02
    ld a, [de]
    or a
    jr z, jr_007_4d55

    call Call_007_4fdf
    jr nz, jr_007_4d8a

    call $2142
    jp c, $1fdb

    jp Jump_007_4e6a


jr_007_4d55:
    ld h, d
    ld l, $3b
    bit 0, [hl]
    jr z, jr_007_4d60

    ld l, $10
    ld [hl], $00

jr_007_4d60:
    call $215d
    jp nc, Jump_007_4e6a

    call $1fdb
    ld c, $1c
    call Call_007_4b24
    jp c, Jump_007_4e6a

    ret z

    ld a, $52
    call $0c74
    call Call_007_49c1
    ld e, $01
    ld a, [de]
    sub $20
    rst $00
    or h
    ld c, l
    cp d
    ld c, l
    ld l, d
    ld c, [hl]
    sub $4d
    dec h
    ld c, [hl]

jr_007_4d8a:
    call Call_007_49c1
    ld e, $01
    ld a, [de]
    sub $20
    rst $00
    or h
    ld c, l
    ret nc

    ld c, l
    ret nc

    ld c, l
    db $f4
    ld c, l
    dec h
    ld c, [hl]

Jump_007_4d9d:
jr_007_4d9d:
    call Call_007_49c1
    ld e, $24
    xor a
    ld [de], a
    ld e, $01
    ld a, [de]
    sub $20
    rst $00
    or h
    ld c, l
    ret nc

    ld c, l
    ret nc

    ld c, l
    or h
    ld c, l
    ld [$cd4e], sp
    inc l
    ld c, [hl]
    jp $1e27


    ld a, $27
    call Call_007_4e34
    ld a, $02
    call $29c5
    ld l, $24
    res 7, [hl]
    ld a, $01
    call Call_007_49ca
    jp $1e30


    ld e, $24
    xor a
    ld [de], a
    jr jr_007_4e2c

    call Call_007_4def
    ld a, $25
    call Call_007_4e34
    ld a, $02
    call $29c5
    ld l, $24
    xor a
    ld [hl+], a
    inc l
    ld a, $02
    ld [hl+], a
    ld [hl], a
    jp $1e27


Call_007_4def:
    ld a, $0d
    jp $2b36


    call Call_007_4def
    ld a, $26
    call Call_007_4e34
    ld a, $03
    call $29c5
    ld l, $24
    res 7, [hl]
    jp $1e27


    ld h, d
    ld l, $2a
    bit 6, [hl]
    jr nz, jr_007_4e25

    ld l, $03
    ld a, [hl-]
    add $20
    dec l

jr_007_4e15:
    ld [hl], a
    call Call_007_497b
    xor a
    call Call_007_49ca
    ld e, $29
    ld a, $ff
    ld [de], a
    jp Jump_007_4d9d


jr_007_4e25:
    ld e, $24
    xor a
    ld [de], a
    call $1e27

jr_007_4e2c:
    ld e, $04
    ld a, $03
    ld [de], a
    ld e, $01
    ld a, [de]

Call_007_4e34:
    add a
    ld hl, $4dca
    rst JumpTable
    ld e, $1b
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld e, $06
    ld [de], a
    ld a, [hl]
    jp $0c74


    ld a, [bc]
    ld b, $3a
    ld [hl], d
    dec bc
    db $10
    inc a
    ret nc

    add hl, bc
    jr jr_007_4e55

jr_007_4e55:
    ld [hl], d
    add hl, bc
    jr z, jr_007_4e8b

    sub b
    ld [$0018], sp
    ld a, e
    add hl, bc
    jr z, jr_007_4e15

    sub b
    add hl, bc
    jr z, jr_007_4e83

    sub b
    dec bc
    inc a
    sub [hl]
    add l

Jump_007_4e6a:
    ld e, $02
    ld a, [de]
    or a
    jr z, jr_007_4e78

    ld hl, $ccf1
    ld a, [hl]
    or a
    jr z, jr_007_4e78

    dec [hl]

jr_007_4e78:
    jp $2c29


    ld e, $01
    ld a, [de]
    sub $20
    rst $00
    adc e
    ld c, [hl]

jr_007_4e83:
    cp [hl]
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    rrca
    ld c, a
    cp [hl]
    ld c, [hl]

jr_007_4e8b:
    ld h, d
    ld l, $06
    dec [hl]
    jr z, jr_007_4eb6

    call Call_007_49c1
    call Call_007_49b0
    ld l, $21
    ld b, [hl]
    jr z, jr_007_4ea4

    ld l, $24
    ld [hl], $00
    bit 7, b
    jr nz, jr_007_4ebb

jr_007_4ea4:
    ld l, $0e
    ld a, [hl+]
    or [hl]
    ld c, $1c
    jp nz, $1f04

    bit 6, b
    ret z

    call $2264
    jr c, jr_007_4ebb

    ret


jr_007_4eb6:
    ld a, $0c
    call $2b36

jr_007_4ebb:
    jp Jump_007_4e6a


    ld e, $24
    xor a
    ld [de], a
    call Call_007_49c1
    ld e, $21
    ld a, [de]
    rlca
    ret nc

    jp Jump_007_4e6a


    ld e, $01
    ld a, [de]
    sub $20
    rst $00
    adc e
    ld c, [hl]
    db $dd
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    ld [hl], $4f
    cp [hl]
    ld c, [hl]
    ld h, d
    ld l, $06
    ld a, [$cc00]
    rrca
    jr c, jr_007_4eea

    dec [hl]
    jp z, Jump_007_4e6a

jr_007_4eea:
    ld a, [hl]
    cp $1e
    jr nc, jr_007_4ef5

    ld l, $1a
    ld a, [hl]
    xor $80
    ld [hl], a

jr_007_4ef5:
    ld l, $0b
    ld a, [hl+]
    ldh [$b0], a
    inc l
    ld a, [hl+]
    ldh [$b1], a
    ld a, $ff
    ld [$ccf0], a
    call Call_007_49c1
    call Call_007_4a6b
    jp c, Jump_007_4e6a

    jp Jump_007_4a4a


jr_007_4f0f:
    call Call_007_4f23
    call $2391
    jp z, Jump_007_4e6a

    ld a, [hl]
    cp $14
    ret nc

    ld l, $1a
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


Call_007_4f23:
    call Call_007_49c1
    ld e, $06
    ld a, [de]
    and $03
    ret nz

    ld e, $1b
    ld a, [de]
    inc a
    and $0b
    ld [de], a
    inc e
    ld [de], a
    ret


    call Call_007_4f23
    ld e, $05
    ld a, [de]
    rst $00
    ld b, l
    ld c, a
    sub c
    ld c, a
    and a
    ld c, a
    jp nc, $fa4f

    ld d, b
    call z, $203d
    ld b, b
    ld a, [$cc88]
    or a
    jr nz, jr_007_4f0f

    ld a, [$cc48]
    rrca
    jr c, jr_007_4f0f

    ld a, [$cc76]
    and $f0
    cp $40
    jr z, jr_007_4f0f

    call $1cde
    jr nc, jr_007_4f0f

    call $1c07
    jr nc, jr_007_4f0f

    ld hl, $d000
    call $222f
    ld e, $07
    ld a, $3c
    ld [de], a
    ld e, $05
    ld a, $01
    ld [de], a
    ld [$cc02], a
    ld [$cca6], a
    ld [$ccab], a
    ld a, $07
    ld [$cc6a], a
    jp $1e15


jr_007_4f8b:
    ld e, $05
    ld a, $03
    ld [de], a
    ret


    ld a, [$cc34]
    or a
    jr nz, jr_007_4f8b

    ld h, d
    ld l, $07
    dec [hl]
    jr z, jr_007_4fa4

    ld a, [$cc49]
    or a
    jr z, jr_007_4fc2

    ret


jr_007_4fa4:
    ld a, $02
    ld [de], a
    ld h, d
    ld l, $0f
    dec [hl]
    dec [hl]
    bit 7, [hl]
    jr nz, jr_007_4fc2

    ld a, $02
    ld [$d005], a
    ld a, $16
    ld [$cc04], a
    ld a, $05
    call $1a76
    jp Jump_007_4e6a


jr_007_4fc2:
    ld e, $1a
    ld a, [de]
    xor $80
    ld [de], a
    xor a
    ld [$cc78], a
    ld hl, $d000
    jp $21fd


    call $2396
    jp z, Jump_007_4e6a

    ld l, $1a
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


Call_007_4fdf:
    call $14b5
    jr nc, jr_007_4fe8

    call Call_007_4b7d
    ret


jr_007_4fe8:
    xor a
    ret


    ld e, $04
    ld a, [de]
    or a
    jr nz, jr_007_4ffa

    call Call_007_497b
    call $23a5
    ld l, $06
    ld [hl], $0c

jr_007_4ffa:
    call Call_007_5019
    ld h, d
    ld l, $2a
    bit 1, [hl]
    jr nz, jr_007_5011

    ld a, $12
    call $2b36
    jr c, jr_007_5011

    call $2391
    jr z, jr_007_5016

    ret


jr_007_5011:
    ld a, $01
    ld [$d135], a

jr_007_5016:
    jp $2c29


Call_007_5019:
    ld a, [$d108]
    ld hl, $5029
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld hl, $d10b
    jp $2232


    or $00
    cp $0a
    inc b
    nop
    cp $f6
    call Call_007_52ac
    ld e, $04
    ld a, [de]
    cp $ff
    jp nc, Jump_007_5402

    call $215d
    jp nc, $2c29

    call $229b
    ld a, [$cc50]
    and $20
    jr nz, jr_007_505f

    ld c, $20
    call Call_007_4a4a
    ld e, $04
    ld a, [de]
    rst $00
    ld a, c
    ld d, b
    xor a
    ld d, b
    cp b
    ld d, b
    push bc
    ld d, b
    ret nc

    ld d, b

jr_007_505f:
    ld e, $32
    ld a, [de]
    or a
    jr nz, jr_007_506d

    ld c, $18
    call Call_007_4b24
    jp c, $2c29

jr_007_506d:
    ld e, $04
    ld a, [de]
    rst $00
    sbc $50
    db $ed
    ld d, b
    db $fc
    ld d, b
    inc b
    ld d, c

Call_007_5079:
    call Call_007_497b
    call $179c
    ld h, d
    ld l, $04
    inc [hl]
    ld l, $30
    ld [hl], $d0
    ld l, $11
    ld [hl], $14
    ld l, $06
    ld [hl], $10
    inc l
    ld [hl], $b4
    ld l, $26
    ld a, $18
    ld [hl+], a
    ld [hl], a
    ld l, $31
    ld [hl], $08
    ld l, $09
    ld a, [$d008]
    swap a
    rrca
    ld [hl], a
    ld l, $08
    ld [hl], $ff
    call Call_007_5220
    jp Jump_007_526b


    ld h, d
    ld l, $0f
    bit 7, [hl]
    jr nz, jr_007_50bc

    ld l, e
    inc [hl]
    call Call_007_52c3
    ret z

jr_007_50bc:
    call Call_007_5117
    call Call_007_4bdf

jr_007_50c2:
    jp Jump_007_49c1


    ld h, d
    ld l, $06
    dec [hl]
    jp nz, Jump_007_4bdf

    ld [hl], $0a
    ld l, e
    inc [hl]
    call Call_007_52b7
    jp c, Jump_007_52b0

    call Call_007_510f
    call Call_007_4bdf
    jr jr_007_50c2

    call Call_007_5079
    ld e, $09
    ld a, [de]
    bit 3, a
    ret nz

    add $08
    ld [de], a
    jp Jump_007_5220


    ld e, $10
    ld a, $14
    ld [de], a
    call Call_007_52c3
    ret z

    call Call_007_5181

jr_007_50f9:
    jp Jump_007_49c1


    call $2391
    ret nz

    ld [hl], $0a
    ld l, e
    inc [hl]
    call Call_007_52b7
    jp c, Jump_007_52b0

    call Call_007_5179
    jr jr_007_50f9

Call_007_510f:
    ld a, [$cc00]
    and $07
    call z, Call_007_51fe

Call_007_5117:
    call Call_007_5122
    ld c, $18
    call $1f04
    jp $1fdb


Call_007_5122:
    ld e, $09
    call Call_007_515a
    cp $10
    jr z, jr_007_514d

    cp $15
    jr z, jr_007_514d

    inc a
    jr z, jr_007_514d

    dec a
    ld e, $11
    ld a, [de]
    jr z, jr_007_513f

    ld e, a
    ld hl, $6270
    call $1dc4

jr_007_513f:
    ld h, d
    ld l, $10
    cp [hl]
    ld [hl], a
    ret nc

    ld l, $14
    ld a, $80
    ld [hl+], a
    ld [hl], $ff
    ret


jr_007_514d:
    ld h, d
    ld l, $31
    ld a, [hl]
    ld l, $09
    add [hl]
    and $18
    ld [hl], a
    jp Jump_007_5220


Call_007_515a:
    ld h, d
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld a, [de]
    rrca
    rrca
    ld hl, $5171
    rst $10
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl]
    add c
    ld c, a
    jp $14a5


    db $fc
    nop
    ld [bc], a
    inc bc
    ld b, $00
    ld [bc], a
    db $fc

Call_007_5179:
    ld a, [$cc00]
    and $07
    call z, Call_007_523b

Call_007_5181:
    call Call_007_5187
    jp $1fdb


Call_007_5187:
    ld e, $32
    ld a, [de]
    or a
    jr nz, jr_007_51af

    ld e, $09
    call Call_007_515a
    ret z

    inc a
    jr nz, jr_007_519f

    ld e, $09
    ld a, [de]
    xor $10
    ld [de], a
    jp Jump_007_5220


jr_007_519f:
    ld h, d
    ld l, $09
    ld a, [hl]
    ld [hl], $00
    ld l, $33
    ld [hl], a
    ld l, $32
    ld [hl], $01
    jp Jump_007_5220


jr_007_51af:
    ld e, $33
    call Call_007_515a
    jr nz, jr_007_51d6

    ld h, d
    ld l, $09
    ld e, $33
    ld a, [de]
    or a
    jr nz, jr_007_51c3

    ld a, [hl]
    ld e, $33
    ld [de], a

jr_007_51c3:
    ld a, [de]
    ld [hl], a
    ld l, $32
    xor a
    ld [hl+], a
    inc l
    ld [hl], a
    ld l, $14
    ld [hl+], a
    ld [hl+], a
    ld l, $08
    ld [hl], $ff
    jp Jump_007_5220


jr_007_51d6:
    ld e, $09
    call Call_007_515a
    ret z

    ld h, d
    ld l, $09
    ld b, [hl]
    ld e, $33
    ld a, [de]
    xor $10
    ld [hl], a
    bit 3, a
    jr z, jr_007_51f2

    bit 3, b
    jr z, jr_007_51f2

    ld l, $32
    ld [hl], $00

jr_007_51f2:
    ld a, b
    ld [de], a
    or a
    ld l, $34
    ld [hl], $00
    jr nz, jr_007_5220

    inc [hl]
    jr jr_007_5220

Call_007_51fe:
    ld a, $0b
    call $2122
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    call $1e62
    ld b, a
    add $04
    and $18
    ld e, $09
    ld [de], a
    sub b
    and $1f
    cp $10
    ld a, $08
    jr nc, jr_007_521d

    ld a, $f8

jr_007_521d:
    ld e, $31
    ld [de], a

Call_007_5220:
Jump_007_5220:
jr_007_5220:
    ld h, d
    ld l, $08
    ld e, $09
    ld a, [de]
    cp [hl]
    ret z

    ld [hl], a
    swap a
    rlca
    ld l, $34
    bit 0, [hl]
    jr z, jr_007_5238

    dec a
    ld a, $04
    jr z, jr_007_5238

    inc a

jr_007_5238:
    jp Jump_007_49ca


Call_007_523b:
    ld a, $0b
    call $2122
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    call $1e62
    ld b, a
    ld e, $09
    ld a, [de]
    bit 3, a
    ld a, b
    jr nz, jr_007_525e

    sub $08
    and $1f
    cp $10
    ld a, $00
    jr c, jr_007_5266

    ld a, $10
    jr jr_007_5266

jr_007_525e:
    cp $10
    ld a, $08
    jr c, jr_007_5266

    ld a, $18

jr_007_5266:
    ld e, $09
    ld [de], a
    jr jr_007_5220

Jump_007_526b:
    ld hl, $d00b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld a, [$cc49]
    cp $06
    ld l, $08
    ld a, [hl]
    ld hl, $529c
    jr c, jr_007_5282

    ld hl, $52a4

jr_007_5282:
    rst JumpTable
    ld e, $0b
    ld a, [hl+]
    add b
    ld [de], a
    ld e, $0d
    ld a, [hl]
    add c
    ld [de], a
    push bc
    call $149b
    pop bc
    cp $0f
    ret nz

    ld a, c
    ld [de], a
    ld e, $0b
    ld a, b
    ld [de], a
    ret


    db $f4
    nop
    ld [bc], a
    inc c
    inc c
    nop
    ld [bc], a
    db $f4
    nop
    nop
    ld [bc], a
    inc c
    nop
    nop
    ld [bc], a
    db $f4

Call_007_52ac:
    call $2396
    ret nz

Jump_007_52b0:
    ld e, $07
    xor a
    ld [de], a
    jp Jump_007_543c


Call_007_52b7:
    ld a, $29
    call $2122
    ld a, [hl]
    or a
    scf
    ret z

    jp $1d18


Call_007_52c3:
    ld e, $30
    ld a, [de]
    ld h, a
    ld l, $80
    ld a, [hl]
    or a
    jr z, jr_007_530e

    ld l, $9a
    bit 7, [hl]
    jr z, jr_007_530e

    ld l, $81
    ld a, [hl]
    push hl
    ld hl, $532d
    call $0205
    pop hl
    jr z, jr_007_530e

    call $1d18
    jr nc, jr_007_530e

    ld a, h
    ld h, d
    ld l, $19
    ld [hl-], a
    ld [hl], $80
    ld l, $26
    ld a, $06
    ld [hl+], a
    ld [hl], a
    ld l, $06
    ld [hl], $0c
    ld l, $11
    ld [hl], $46
    ld l, $04
    inc [hl]
    ld a, [$cc50]
    and $20
    jr nz, jr_007_5309

    call Call_007_51fe
    xor a
    ret


jr_007_5309:
    call Call_007_523b
    xor a
    ret


jr_007_530e:
    inc h
    ld a, h
    cp $e0
    jr c, jr_007_5319

    call Call_007_531e
    ld a, $d0

jr_007_5319:
    ld e, $30
    ld [de], a
    or d
    ret


Call_007_531e:
    ld e, $26
    ld a, [de]
    add $10
    cp $60
    jr c, jr_007_5329

    ld a, $18

jr_007_5329:
    ld [de], a
    inc e
    ld [de], a
    ret


    nop
    ccf
    sub a
    ld a, l
    ccf
    jr nc, @+$39

    ld a, h
    jp hl


    rst $28
    ld [bc], a
    ld b, b
    nop
    nop
    inc bc
    nop
    ld e, $2f
    ld a, [de]
    bit 5, a
    jr nz, jr_007_5358

    bit 7, a
    jp nz, Jump_007_548d

    bit 4, a
    jp nz, Jump_007_542a

    ld e, $04
    ld a, [de]
    rst $00
    ld a, d
    ld d, e
    ld l, b
    ld d, e
    ld a, d
    ld d, e

jr_007_5358:
    ld h, d
    ld l, $04
    ld a, [hl+]
    cp $02
    jr nz, jr_007_5365

    bit 1, [hl]
    call z, $2b8a

jr_007_5365:
    jp $2c29


    ld c, $20
    call Call_007_53cd
    ret c

    call Call_007_4a6b
    jp c, $2c29

    call Call_007_4bdf
    jp Jump_007_5434


    ld e, $05
    ld a, [de]
    rst $00
    add [hl]
    ld d, e
    sub h
    ld d, e
    and e
    ld d, e
    and e
    ld d, e
    call $23aa
    ld l, $2f
    set 6, [hl]
    ld l, $37
    res 0, [hl]
    call Call_007_547c
    ld a, $3b
    call $236b
    jp z, Jump_007_548d

    call Call_007_5434
    ret z

    jp $2b8a


    ld a, $03
    ld [de], a
    call Call_007_613a
    ld e, $39
    ld a, [de]
    ld c, a
    call Call_007_53cd
    ret c

    jr z, jr_007_53be

    call Call_007_6220
    jr c, jr_007_53c1

    call Call_007_4a6b
    jp c, $2c29

jr_007_53be:
    jp Jump_007_5434


jr_007_53c1:
    ld h, d
    ld l, $04
    ld [hl], $01
    ld l, $2f
    res 6, [hl]
    jp Jump_007_5434


Call_007_53cd:
    push bc
    ld a, [$cc50]
    and $20
    jr z, jr_007_53df

    ld e, $0b
    ld a, [de]
    sub $08
    cp $f0
    ccf
    jr c, jr_007_53e2

jr_007_53df:
    call $215d

jr_007_53e2:
    pop bc
    jr nc, jr_007_53fd

    call Call_007_4b24
    ret nc

    ld bc, $04ef
    ld a, [$cc49]
    cp b
    jr nz, jr_007_53fd

    ld a, [$cc4c]
    cp c
    jr nz, jr_007_53fd

    ld a, $01
    ld [$cfc0], a

jr_007_53fd:
    call $2c29
    scf
    ret


Jump_007_5402:
jr_007_5402:
    ld h, d
    ld l, $21
    ld a, [hl]
    bit 7, a
    jp nz, $2c29

    ld l, $24
    bit 6, a
    jr z, jr_007_5413

    ld [hl], $00

jr_007_5413:
    ld c, [hl]
    ld l, $26
    and $1f
    ld [hl+], a
    ld [hl+], a
    bit 7, c
    call nz, Call_007_5494
    ld h, d
    ld l, $06
    bit 7, [hl]
    call z, Call_007_54db
    jp Jump_007_49c1


Jump_007_542a:
    ld h, d
    ld l, $04
    ld a, [hl]
    cp $ff
    jr nz, jr_007_543c

    jr jr_007_5402

Call_007_5434:
Jump_007_5434:
    call Call_007_49c1
    ld e, $21
    ld a, [de]
    or a
    ret z

Jump_007_543c:
jr_007_543c:
    ld h, d
    ld l, $1b
    ld a, $0a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $0c
    ld l, $24
    set 7, [hl]
    ld a, $0c
    call $236b
    jr nz, jr_007_5454

    ld l, $28
    dec [hl]
    dec [hl]

jr_007_5454:
    ld l, $04
    ld [hl], $ff
    ld l, $06
    ld [hl], $08
    ld l, $2f
    ld a, [hl]
    or $50
    ld [hl], a
    ld l, $01
    ld a, [hl-]
    res 1, [hl]
    cp $03
    ld a, $01
    jr z, jr_007_546f

    ld a, $06

jr_007_546f:
    call Call_007_49ca
    call $1e15
    ld a, $6f
    call $0c74
    or d
    ret


Call_007_547c:
    ld h, d
    ld l, $37
    bit 7, [hl]
    ret nz

    set 7, [hl]
    call $17a1
    call Call_007_497b
    call Call_007_4a37

Jump_007_548d:
    xor a
    call Call_007_49ca
    jp $1dfa


Call_007_5494:
    ld h, d
    ld l, $37
    bit 6, [hl]
    ret nz

    ld a, [$d101]
    cp $0a
    ret z

    ld a, $30
    call $236b
    ret z

    call $1ce6
    ret nc

    ld h, d
    ld l, $26
    ld a, [hl]
    ld c, a
    add a
    ld b, a
    ld l, $0f
    ld a, [$d00f]
    sub [hl]
    add c
    cp b
    ret nc

    call $1c35
    ret nc

    call $1e5a
    ld h, d
    ld l, $37
    set 6, [hl]
    ld l, $28
    ld c, [hl]
    ld hl, $d025
    ld [hl], c
    ld l, $2d
    ld [hl], $0c
    dec l
    ld [hl-], a
    ld [hl], $10
    dec l
    ld [hl], $01
    jp $29fe


Call_007_54db:
    ld a, [hl]
    dec [hl]
    ld l, a
    add a
    add l
    ld hl, $551f
    rst $10
    ld a, [$cc50]
    and $20
    ld e, $0f
    ld a, [de]
    jr nz, jr_007_54f3

    sub $02
    cp [hl]
    ret c

    xor a

jr_007_54f3:
    ld c, a
    inc hl
    ld a, [hl+]
    add c
    ld b, a
    ld a, [hl]
    ld c, a
    ld h, d
    ld e, $00
    bit 7, b
    jr z, jr_007_5502

    dec e

jr_007_5502:
    ld l, $0b
    ld a, [hl+]
    add b
    ld b, a
    ld a, $00
    adc e
    ret nz

    inc l
    ld e, $00
    bit 7, c
    jr z, jr_007_5513

    dec e

jr_007_5513:
    ld a, [hl]
    add c
    ld c, a
    ld a, $00
    adc e
    ret nz

    ld a, $04
    jp $2b3d


    ld hl, sp-$0d
    di
    ld hl, sp+$0c
    di
    ld hl, sp+$0c
    inc c
    ld hl, sp-$0d
    inc c
    db $f4
    nop
    di
    db $f4
    inc c
    nop
    db $f4
    nop
    inc c
    db $f4
    di
    nop
    ld a, [c]
    nop
    nop
    ld e, $04
    ld a, [de]
    rst $00
    ld c, b
    ld d, l
    sub b
    ld d, l
    rst $20
    ld d, l
    ld hl, sp+$55
    inc d
    ld d, [hl]
    call Call_007_497b
    ld e, $02
    ld a, [de]
    add $18
    call $165b
    call $23a5
    ld bc, $4128
    ld l, $02
    bit 0, [hl]
    jr z, jr_007_556c

    ld l, $24
    ld [hl], $96
    ld l, $1b
    ld a, $0c
    ld [hl+], a
    ld [hl+], a
    ld bc, $5f78

jr_007_556c:
    ld l, $10
    ld [hl], b
    ld l, $06
    ld [hl], c
    ld c, $ff
    ld a, $0d
    call $236b
    jr z, jr_007_5584

    ld a, $29
    call $236b
    jr nz, jr_007_5589

    ld c, $fe

jr_007_5584:
    ld l, $28
    ld a, [hl]
    add c
    ld [hl], a

jr_007_5589:
    call $1e27
    xor a
    jp Jump_007_49ca


    call Call_007_5638
    ld e, $2a
    ld a, [de]
    or a
    jr nz, jr_007_55b3

    call $14b5
    jr nc, jr_007_55a3

    call Call_007_4b7d
    jr nz, jr_007_55d3

jr_007_55a3:
    call $215d
    jr nc, jr_007_55b3

    ld e, $34
    ld a, [de]
    call $1f92
    call $2391
    jr nz, jr_007_5626

jr_007_55b3:
    call $1e5a
    ld c, a
    ld h, d
    ld l, $0b
    ld a, $f0
    cp [hl]
    jr c, jr_007_55ce

    ld l, $0d
    cp [hl]
    jr c, jr_007_55ce

    ld l, $09
    ld a, c
    sub [hl]
    add $08
    cp $11
    jr c, jr_007_55dd

jr_007_55ce:
    ld l, $09
    ld [hl], c
    jr jr_007_55dd

jr_007_55d3:
    call Call_007_4b69
    ld h, d
    ld l, $09
    ld a, [hl]
    xor $10
    ld [hl], a

jr_007_55dd:
    ld l, $04
    inc [hl]
    ld l, $16
    xor a
    ld [hl+], a
    ld [hl], a
    jr jr_007_5626

    call $1e5a
    call $1f92
    ld bc, $140a
    call Call_007_5642
    call c, $23a5
    jr jr_007_5623

    call $1e5a
    ld e, $09
    ld [de], a
    ld bc, $0402
    call Call_007_5642
    jr nc, jr_007_5623

    call $23a5
    ld l, $06
    ld [hl], $04
    ld l, $24
    ld [hl], $00
    jp $1e39


    call $2391
    jp z, $2c29

    ld a, [$cc48]
    ld h, a
    ld l, $0b
    jp $222f


jr_007_5623:
    call Call_007_5638

jr_007_5626:
    call $1fdb
    ld h, d
    ld l, $21
    ld a, [hl]
    or a
    ld [hl], $00
    ld a, $78
    call nz, $0c74
    jp Jump_007_49c1


Call_007_5638:
    ld e, $02
    ld a, [de]
    or a
    ret z

    ld a, $07
    jp $2b36


Call_007_5642:
    ld hl, $d00b
    ld e, $0b
    ld a, [de]
    sub [hl]
    add c
    cp b
    ret nc

    ld l, $0d
    ld e, $0d
    ld a, [de]
    sub [hl]
    add c
    cp b
    ret


    ld e, $04
    ld a, [de]
    rst $00
    ld e, l
    ld d, [hl]
    sub c
    ld d, [hl]
    call $23a5
    ld l, $10
    ld [hl], $78
    ld a, [$d108]
    ld c, a
    swap a
    rrca
    ld l, $09
    ld [hl], a
    ld a, c
    ld hl, $5689
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld hl, $d10b
    call $2232
    sub $02
    ld [de], a
    call Call_007_497b
    xor a
    call Call_007_49ca
    jp $1dfa


    ldh a, [rP1]
    nop
    inc c
    ld [$0000], sp
    db $f4
    call $1fdb
    ld a, $01
    call $2b36
    call $149b
    and $0f
    cp $0f
    jp z, $2c29

    jp Jump_007_49c1


    ld e, $04
    ld a, [de]
    rst $00
    or b
    ld d, [hl]
    ldh [rRP], a
    ld c, e
    ld e, b
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $10
    ld [hl], $0a
    ld l, $0b
    ld a, [hl]
    ld b, a
    ld l, $0d
    ld a, [hl]
    ld l, $31
    ld [hl-], a
    ld [hl], b
    call Call_007_497b
    xor a
    call Call_007_49ca
    call $1e0c
    ld a, [$cc49]
    cp $04
    jr nz, jr_007_56e0

    ld a, [$cc4c]
    cp $94
    jr nz, jr_007_56e0

    ld e, $03
    ld a, $01
    ld [de], a

jr_007_56e0:
    call Call_007_56ef
    call $590f
    ld e, $24
    ld a, [de]
    bit 7, a
    ret nz

    jp Jump_007_5a06


Call_007_56ef:
    ld h, d
    ld l, $03
    ld a, [hl]
    or a
    jr nz, jr_007_56fa

    ld l, $24
    res 7, [hl]

jr_007_56fa:
    call Call_007_5a28
    call Call_007_5a5e
    ld a, [$cc79]
    or a
    jp z, Jump_007_57bd

    ld b, $0c
    call $1fac
    jp nc, Jump_007_57bd

    call $1e5a
    add $04
    add a
    swap a
    and $03
    xor $02
    ld b, a
    ld a, [$d008]
    cp b
    jp nz, Jump_007_57bd

    ld e, $10
    ld a, $28
    ld [de], a
    ld e, $32
    ld a, [de]
    or a
    jr z, jr_007_5740

    inc e
    ld a, [de]
    cp $10
    jp nc, Jump_007_57bd

    inc e
    ld a, [de]
    cp $10
    jp nc, Jump_007_57bd

    ld e, $32
    xor a
    ld [de], a

jr_007_5740:
    ld a, [$cc79]
    bit 1, a
    jr nz, jr_007_578b

    ld a, [$d008]
    ld hl, $587b
    rst JumpTable
    ld a, [$d00b]
    add [hl]
    ldh [$8d], a
    inc hl
    ld a, [$d00d]
    add [hl]
    ldh [$8c], a
    push bc
    call Call_007_5842
    pop bc
    jp c, Jump_007_5806

    bit 0, b
    jr nz, jr_007_5779

    call Call_007_588d
    ld e, $04
    ld a, [de]
    cp $01
    ret nz

    call Call_007_5972
    call Call_007_594e
    jp $5883


jr_007_5779:
    call $5883
    ld e, $04
    ld a, [de]
    cp $01
    ret nz

    call Call_007_5979
    call Call_007_5966
    jp Jump_007_588d


jr_007_578b:
    ld a, [$d00b]
    ldh [$8d], a
    ld a, [$d00d]
    ldh [$8c], a
    bit 0, b
    jr nz, jr_007_57ab

    call Call_007_588d
    ld e, $04
    ld a, [de]
    cp $01
    ret nz

    call Call_007_5972
    call Call_007_594e
    jp Jump_007_5897


jr_007_57ab:
    call $5883
    ld e, $04
    ld a, [de]
    cp $01
    ret nz

    call Call_007_5979
    call Call_007_5966
    jp Jump_007_58a1


Jump_007_57bd:
    ld e, $33
    ld a, [de]
    or a
    jr z, jr_007_57d7

    ld e, $32
    ld a, $01
    ld [de], a
    call Call_007_5980
    call Call_007_5980
    call Call_007_594e
    ld e, $09
    ld a, [de]
    call Call_007_58c3

jr_007_57d7:
    ld e, $34
    ld a, [de]
    or a
    jr z, jr_007_57f1

    ld e, $32
    ld a, $01
    ld [de], a
    call Call_007_598f
    call Call_007_598f
    call Call_007_5966
    ld e, $09
    ld a, [de]
    call Call_007_58c3

jr_007_57f1:
    call $21cb
    jp c, Jump_007_57f8

    ret


Jump_007_57f8:
    ldh [$8b], a
    call Call_007_5a1f
    ldh a, [$8b]
    dec a
    jp z, $21f3

    jp $21ee


Jump_007_5806:
    xor a
    ld e, $33
    ld [de], a
    ld e, $34
    ld [de], a
    ld a, [$cc47]
    cp $ff
    ret z

    ld a, [$cc45]
    ld b, a
    bit 6, b
    jr z, jr_007_5822

    ld a, $00
    call Call_007_583c
    jr jr_007_582b

jr_007_5822:
    bit 7, b
    jr z, jr_007_582b

    ld a, $10
    call Call_007_583c

jr_007_582b:
    ld a, [$cc45]
    ld b, a
    bit 4, b
    jr z, jr_007_5837

    ld a, $08
    jr jr_007_583c

jr_007_5837:
    bit 5, b
    ld a, $18
    ret z

Call_007_583c:
jr_007_583c:
    ld e, $09
    ld [de], a
    jp Jump_007_58c3


Call_007_5842:
    ldh a, [$8d]
    ld b, a
    ldh a, [$8c]
    ld c, a
    jp $1ba1


    ld h, d
    ld l, $24
    set 7, [hl]
    ld l, $08
    ld a, [hl+]
    ld [hl], a
    call $1fdb
    ld c, $20
    call $1f04
    ret nz

    ld a, $77
    call $0c74
    ld h, d
    ld l, $06
    dec [hl]
    jr z, jr_007_5875

    ld bc, $ff20
    ld l, $14
    ld [hl], c
    inc l
    ld [hl], b
    ld l, $10
    ld [hl], $14
    ret


jr_007_5875:
    ld a, $01
    ld e, $04
    ld [de], a
    ret


    ldh a, [rP1]
    nop
    db $10
    stop
    nop
    ldh a, [rTMA]
    nop
    ld c, $10
    call Call_007_58ab
    ret z

    jr jr_007_58c3

Call_007_588d:
Jump_007_588d:
    ld b, $18
    ld c, $08
    call Call_007_58bb
    ret z

    jr jr_007_58c3

Jump_007_5897:
    ld b, $10
    ld c, $00
    call Call_007_58ab
    ret z

    jr jr_007_58c3

Jump_007_58a1:
    ld b, $08
    ld c, $18
    call Call_007_58bb
    ret z

    jr jr_007_58c3

Call_007_58ab:
    ldh a, [$8d]
    ld l, $0b
    ld e, $33

jr_007_58b1:
    ld h, d
    cp [hl]
    ld a, b
    jr c, jr_007_58b7

    ld a, c

jr_007_58b7:
    ld l, $09
    ld [hl], a
    ret


Call_007_58bb:
    ldh a, [$8c]
    ld l, $0d
    ld e, $34
    jr jr_007_58b1

Call_007_58c3:
Jump_007_58c3:
jr_007_58c3:
    srl a
    ld hl, $58ff
    rst $10
    call Call_007_58ed
    jr c, jr_007_58dd

    call Call_007_58ed
    jr c, jr_007_58dd

    ld h, d
    ld l, $24
    set 7, [hl]
    call $1fdb
    jr jr_007_5930

jr_007_58dd:
    call Call_007_59a9
    ld e, $09
    ld a, [de]
    bit 3, a
    ld e, $33
    jr z, jr_007_58ea

    inc e

jr_007_58ea:
    xor a
    ld [de], a
    ret


Call_007_58ed:
    ld e, $0b
    ld a, [de]
    add [hl]
    inc hl
    ld b, a
    ld e, $0d
    ld a, [de]
    add [hl]
    inc hl
    ld c, a
    push hl
    call $14bf
    pop hl
    ret


    ld hl, sp-$04
    ld hl, sp+$04
    db $fc
    ld [$0804], sp
    ld [$08fc], sp
    inc b
    db $fc
    ld hl, sp+$04
    ld hl, sp-$33
    ld [hl-], a
    inc d
    ld hl, $23c3
    call $1ddd
    ret nc

    call $2048
    ld a, $05
    add b
    ld b, a
    call $14bf
    ret nc

    ld b, $14
    call Call_007_5961
    ld e, $09
    xor a
    ld [de], a
    jp $1fdb


jr_007_5930:
    ld bc, $a8e8
    ld e, $08
    ld h, d
    ld l, $0b
    ld a, e
    cp [hl]
    jr c, jr_007_593d

    ld [hl], a

jr_007_593d:
    ld a, b
    cp [hl]
    jr nc, jr_007_5942

    ld [hl], a

jr_007_5942:
    ld l, $0d
    ld a, e
    cp [hl]
    jr c, jr_007_5949

    ld [hl], a

jr_007_5949:
    ld a, c
    cp [hl]
    ret nc

    ld [hl], a
    ret


Call_007_594e:
    ld e, $33

jr_007_5950:
    ld a, [de]
    cp $40
    ld b, $78
    jr nc, jr_007_5961

    and $38
    swap a
    rlca
    ld hl, $596a
    rst $10
    ld b, [hl]

Call_007_5961:
jr_007_5961:
    ld a, b
    ld e, $10
    ld [de], a
    ret


Call_007_5966:
    ld e, $34
    jr jr_007_5950

    ld a, [bc]
    inc d
    jr z, jr_007_59a0

    inc a
    ld b, [hl]
    ld d, b
    ld d, b

Call_007_5972:
    ld h, d
    ld l, $33
    inc [hl]
    ret nz

    dec [hl]
    ret


Call_007_5979:
    ld h, d
    ld l, $34
    inc [hl]
    ret nz

    dec [hl]
    ret


Call_007_5980:
    ld l, $33

jr_007_5982:
    ld h, d
    ld a, [hl]
    cp $40
    jr c, jr_007_598a

    ld a, $40

jr_007_598a:
    or a
    ret z

    dec a
    ld [hl], a
    ret


Call_007_598f:
    ld l, $34
    jr jr_007_5982

Call_007_5993:
    ld e, $0b
    ld a, [de]
    add [hl]
    inc hl
    ld b, a
    ld e, $0d
    ld a, [de]
    add [hl]
    inc hl
    ld c, a
    push hl

jr_007_59a0:
    call $1435
    pop hl
    sub $b0
    cp $04
    ret


Call_007_59a9:
    call $59fb
    add a
    ld hl, $58ff
    rst JumpTable
    call Call_007_5993
    ret nc

    call Call_007_5993
    ret nc

    add $02
    and $03
    swap a
    rrca
    ld b, a
    ld e, $09
    ld a, [de]
    cp b
    ret nz

    sra a
    ld hl, $59eb
    rst $10
    ld a, [hl+]
    ld e, $08
    ld [de], a
    ld a, [hl+]
    ld e, $10
    ld [de], a
    ld a, [hl+]
    ld e, $14
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    xor a
    ld h, d
    ld l, $32
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $06
    ld [hl], $02
    ld l, $04
    ld [hl], $02
    ret


    nop
    jr z, jr_007_5a2e

    cp $08
    jr z, jr_007_5a32

    cp $10
    jr z, jr_007_5a36

    cp $18
    jr z, jr_007_5a3a

    cp $1e
    add hl, bc
    ld a, [de]
    add $04
    add a
    swap a
    and $03
    ret


Jump_007_5a06:
    ld hl, $d080

jr_007_5a09:
    ld a, [hl]
    or a
    call nz, Call_007_5a15
    inc h
    ld a, h
    cp $e0
    jr c, jr_007_5a09

    ret


Call_007_5a15:
    push hl
    ld l, $8f
    bit 7, [hl]
    call z, $1d3d
    pop hl
    ret


Call_007_5a1f:
    ld e, $30
    ld a, [de]
    ld b, a
    inc e
    ld a, [de]
    ld c, a
    jr jr_007_5a34

Call_007_5a28:
    call $21cb
    ret c

    ld e, $0b

jr_007_5a2e:
    ld a, [de]
    ld b, a
    ld e, $0d

jr_007_5a32:
    ld a, [de]
    ld c, a

jr_007_5a34:
    ld e, $16

jr_007_5a36:
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]

jr_007_5a3a:
    ld h, a
    push bc
    ld bc, $0004
    add hl, bc
    pop bc
    ld a, b
    cp $18
    jr nc, jr_007_5a48

    ld a, $18

jr_007_5a48:
    cp $99
    jr c, jr_007_5a4e

    ld a, $98

jr_007_5a4e:
    ld [hl+], a
    ld a, c
    cp $18
    jr nc, jr_007_5a56

    ld a, $18

jr_007_5a56:
    cp $d9
    jr c, jr_007_5a5c

    ld a, $d8

jr_007_5a5c:
    ld [hl], a
    ret


Call_007_5a5e:
    ld a, [$cc77]
    rlca
    ret c

    ld a, [$d004]
    cp $01
    ret nz

    call $1c35
    ret nc

    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a
    call $1ba1
    jr c, jr_007_5a83

    call $1e5a
    ld c, a
    ld b, $78
    jp $22d9


jr_007_5a83:
    call $1e5a
    ld c, a
    ld b, $14
    jp $22d9


    ld e, $04
    ld a, [de]
    or a
    jr nz, jr_007_5a9e

    call $23a5
    ld l, $06
    ld [hl], $14
    call Call_007_497b
    jr jr_007_5aab

jr_007_5a9e:
    call Call_007_5aab
    call Call_007_5ad4
    call $2391
    ret nz

    jp $2c29


Call_007_5aab:
jr_007_5aab:
    ld a, [$d101]
    cp $0b
    ld hl, $5ad0
    jr nz, jr_007_5abd

    ld a, [$d108]
    add a
    ld hl, $5ac0
    rst JumpTable

jr_007_5abd:
    jp Jump_007_5e5a


    db $10
    inc c
    db $f4
    nop
    inc c
    ld [de], a
    cp $08
    db $10
    inc c
    ld [$0c00], sp
    ld [de], a
    cp $f8
    jr jr_007_5aea

    stop

Call_007_5ad4:
    ld hl, $5b03
    ld a, [$d101]
    cp $0b
    jr z, jr_007_5ae1

    ld hl, $5b0c

jr_007_5ae1:
    ld e, $0b
    ld a, [de]
    add [hl]
    ld b, a
    inc hl
    ld e, $0d
    ld a, [de]

jr_007_5aea:
    add [hl]
    ld c, a
    inc hl
    push hl
    ld a, [$d101]
    cp $0b
    ld a, $0f
    jr z, jr_007_5af9

    ld a, $11

jr_007_5af9:
    call $2b3d
    pop hl
    ld a, [hl]
    cp $ff
    jr nz, jr_007_5ae1

    ret


    ld hl, sp+$08
    ld hl, sp-$08
    ld [$0808], sp
    ld hl, sp-$01
    nop
    nop
    ldh a, [$f0]
    ldh a, [rP1]
    ldh a, [rNR10]
    nop
    ldh a, [rP1]
    db $10
    db $10
    ldh a, [rNR10]
    nop
    db $10
    db $10
    rst $38
    ld e, $04
    ld a, [de]
    or a
    jr nz, jr_007_5b42

    call Call_007_497b
    call $23a5
    ld l, $06
    ld [hl], $04
    ld a, $06
    call $2b36
    ld a, $50
    jr nc, jr_007_5b3f

    ld a, $01
    call $17fa
    ld a, $a9

jr_007_5b3f:
    jp $0c74


jr_007_5b42:
    call $2391
    ret nz

    jp $2c29


    call Call_007_4a0a
    ld e, $04
    ld a, [de]
    rst $00
    ld d, h
    ld e, e
    ld [hl], b
    ld e, e
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $00
    ld [hl], $03
    ld l, $06
    ld [hl], $10
    ld a, $74
    call $0c74
    ld a, $1c
    call $165b
    call Call_007_497b
    jp $1e27


    ld h, d
    ld l, $06
    dec [hl]
    ret nz

    ld a, [$ccb6]
    cp $08
    ret nz

    call $3ac6
    ret nz

    ld [hl], $15
    ld e, $09
    ld l, $49
    ld a, [de]
    ld [hl+], a
    jp $21fd


    ld e, $04
    ld a, [de]
    or a
    ret nz

    call Call_007_497b
    call $23a5
    ld l, $00
    set 1, [hl]
    ret


    ld hl, $d101
    ld a, [hl]
    cp $0a
    jp z, $222f

    jp $2c29


    ld e, $04
    ld a, [de]
    or a
    ret nz

    ld a, $1d
    call $165b
    call Call_007_4974
    ld h, d
    ld a, [$c6b3]
    or $08
    ld l, $1b
    ld [hl+], a
    ld [hl], a
    jp $1e1e


    ret


    ld e, $04
    ld a, [de]
    rst $00
    ret


    ld e, e
    call nc, $3e5b
    ld e, $cd
    ld e, e
    ld d, $cd
    ld [hl], h
    ld c, c
    call $1e1e
    ld a, [$cc79]
    bit 1, a
    ld a, $0c
    jr z, jr_007_5bde

    inc a

jr_007_5bde:
    ld h, d
    ld l, $1b
    ld [hl+], a
    ld [hl], a
    ret


    ld e, $04
    ld a, [de]
    rst $00
    db $ec
    ld e, e
    ret nz

    ld e, e
    ld a, $1f
    call $165b
    call Call_007_4974
    xor a
    call Call_007_49ca
    jp $1e27


    ld e, $04
    ld a, [de]
    rst $00
    inc bc
    ld e, h
    sbc c
    ld e, e
    ld a, $1b
    call $165b
    call Call_007_4974
    ld a, $b1
    call $0c74
    jp $1e27


    call Call_007_4a0a
    ld e, $04
    ld a, [de]
    rst $00
    jr nc, @+$5e

    adc d
    ld e, h
    sub b
    ld e, h
    sub a
    ld e, h
    add l
    ld e, h
    and [hl]
    ld e, h
    ld b, [hl]
    ld e, h
    ld [hl], h
    ld [hl], l
    ld a, b
    ld [hl], h
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld a, $1a
    call $165b
    call $042f
    and $07
    ld hl, $5c28
    rst $10
    ld a, [hl]
    call $0c74
    ld e, $31
    xor a
    ld [de], a
    call Call_007_4974
    ld a, [$c6ac]
    ld hl, $5c7d
    rst JumpTable
    ld e, $24
    ld a, [hl+]
    ld [de], a
    ld c, [hl]
    ld e, $31
    ld a, [de]
    or a
    ld a, c
    ld [de], a
    jr nz, jr_007_5c73

    ld a, $3e
    call $236b
    jr nz, jr_007_5c73

    call $041a
    or a
    ld c, $ff
    jr nz, jr_007_5c73

    ld a, $d2
    call $0c74
    ld c, $f4

jr_007_5c73:
    ld e, $3a
    ld a, c
    ld [de], a
    ld e, $04
    ld a, $01
    ld [de], a
    jp $1e27


    add h
    cp $85
    db $fd
    add [hl]
    ei
    ld e, $24
    ld a, $88
    ld [de], a
    ld h, d
    ld l, $1b
    ld a, [hl+]
    ld [hl], a
    ret


    ld e, $31
    ld a, [de]
    ld e, $3a
    ld [de], a
    ret


    ld h, d
    ld l, $06
    inc [hl]
    bit 2, [hl]
    ld l, $1b
    ld a, [hl+]
    jr nz, jr_007_5ca4

    ld a, $0d

jr_007_5ca4:
    ld [hl], a
    ret


    ld a, $08
    call Call_007_5f12
    jp $2c29


    ld e, $04
    ld a, [de]
    rst $00
    or [hl]
    ld e, h
    sbc $5c
    call Call_007_497b
    ld c, $a6
    call $23a5
    ld l, $06
    ld [hl], $04
    ld l, $02
    bit 0, [hl]
    jr z, jr_007_5cda

    ld l, $26
    ld a, $06
    ld [hl+], a
    ld [hl+], a
    ld a, [hl]
    add $fd
    ld [hl], a
    ld l, $24
    inc [hl]
    call Call_007_5f09
    ld c, $6f

jr_007_5cda:
    ld a, c
    jp $0c74


    call $2391
    jp z, $2c29

    ret


    ld e, $04
    ld a, [de]
    rst $00
    db $ed
    ld e, h
    dec e
    ld e, l
    ld hl, $5d11
    call Call_007_4a1e
    call Call_007_497b
    call $23a5
    ld l, $10
    ld [hl], $78
    ld l, $08
    ld a, [hl+]
    ld c, a
    swap a
    rrca
    ld [hl], a
    ld a, c
    call Call_007_49ca
    call $1e1e
    ld a, $5d
    jp $0c74


    push af
    db $fc
    nop
    nop
    inc c
    nop
    ld a, [bc]
    inc bc
    nop
    nop
    di
    nop
    call Call_007_49b0
    jr nz, jr_007_5d45

    call $1fdb
    call $14b5
    jr nc, jr_007_5d2f

    call Call_007_4b7d
    jr nz, jr_007_5d45

jr_007_5d2f:
    ld a, [$cc00]
    and $03
    jr nz, jr_007_5d3e

    ld h, d
    ld l, $1b
    ld a, [hl]
    xor $01
    ld [hl+], a
    ld [hl+], a

jr_007_5d3e:
    call $2142
    ret c

    jp $2c29


jr_007_5d45:
    ld bc, $0781
    call $24b1
    jp $2c29


Call_007_5d4e:
    ld l, $21
    cp $07
    jr z, jr_007_5d6c

    bit 6, [hl]
    jr z, jr_007_5d6c

    res 6, [hl]
    ld a, [hl]
    and $1f
    cp $10
    jr nc, jr_007_5d65

    ld a, [$d008]
    add a

jr_007_5d65:
    and $07
    push hl
    call Call_007_5f12
    pop hl

jr_007_5d6c:
    ld c, $10
    ld a, [hl]
    and $1f
    cp c
    jr nc, jr_007_5d7f

    srl a
    ld c, a
    ld a, [$d008]
    add a
    add a
    add c
    ld c, $00

jr_007_5d7f:
    ld hl, $5d92
    rst $10
    ld a, [hl]
    and $f0
    swap a
    add c
    ld e, $30
    ld [de], a
    ld a, [hl]
    and $07
    jp Jump_007_49ca


    ld [bc], a
    ld b, c
    add b
    ret nz

    db $10
    ld d, c
    sub d
    jp nc, Jump_007_6526

    and h
    db $e4
    jr nc, jr_007_5e17

    or [hl]
    or $00
    ld de, $3322
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a

Call_007_5daa:
    ld b, $00
    ld l, $21
    bit 6, [hl]
    jr z, jr_007_5db5

    res 6, [hl]
    inc b

jr_007_5db5:
    ld a, [hl]
    and $0e
    rrca
    ld c, a
    ld a, [$d008]
    cp $01
    jr nz, jr_007_5dc4

    ld a, c
    jr jr_007_5dc7

jr_007_5dc4:
    inc a
    add a
    sub c

jr_007_5dc7:
    and $07
    bit 0, b
    jr z, jr_007_5dd5

    push af
    ld c, a
    ld a, $02
    call Call_007_5f1c
    pop af

jr_007_5dd5:
    ld e, $30
    ld [de], a
    jp Jump_007_49ca


    call Call_007_4b6e
    jp nz, $2c29

    ld hl, $d00b
    call $222f
    ld a, [$cc00]
    rrca
    rrca
    ld a, [$d008]
    adc a
    ld e, $30
    ld [de], a
    jp Jump_007_49ca


    call Call_007_4b6e
    jp nz, $2c29

    ld hl, $d00b
    call $222f
    ld a, [$d008]
    ld e, $30
    ld [de], a
    jp Jump_007_49ca


    call Call_007_4b6e
    jp nz, $2c29

    ld l, $21
    ld a, [hl]
    and $06
    add a

jr_007_5e17:
    ld b, a
    ld a, [$d008]
    add b
    ld e, $30
    ld [de], a
    ld hl, $5e79
    jr jr_007_5e58

    ld a, [$d008]
    add $18
    ld hl, $5e79
    jr jr_007_5e58

    call Call_007_4b6e
    jp nz, $2c29

    call Call_007_5daa
    ld e, $30
    ld a, [de]
    ld hl, $5ee9
    call Call_007_5e58
    jp Jump_007_5fb7


    call Call_007_4b6e
    jp nz, $2c29

    call Call_007_5d4e
    ld e, $30
    ld a, [de]
    ld hl, $5e79
    call Call_007_5e58
    jp Jump_007_5fb7


Call_007_5e58:
jr_007_5e58:
    add a
    rst JumpTable

Jump_007_5e5a:
    ld e, $26
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [$d00b]
    add [hl]
    ld e, $0b
    ld [de], a
    inc hl
    ld e, $0d
    ld a, [$d00d]
    add [hl]
    ld [de], a
    ld a, [$d00f]
    ld e, $0f
    sub $02
    ld [de], a
    ret


    add hl, bc
    ld b, $fe
    db $10
    ld b, $09
    ld a, [c]
    nop
    add hl, bc
    ld b, $00
    pop af
    ld b, $09
    ld a, [c]
    nop
    rlca
    rlca
    push af
    dec c
    rlca
    rlca
    push af
    dec c
    rlca
    rlca
    ld de, $07f3
    rlca
    push af
    di
    add hl, bc
    ld b, $ef
    db $fc
    ld b, $09
    ld [bc], a
    inc de
    add hl, bc
    ld b, $15
    inc bc
    ld b, $09
    ld [bc], a
    db $ed
    add hl, bc
    ld b, $f6
    db $fc
    inc b
    add hl, bc
    ld [bc], a
    inc c
    add hl, bc
    ld b, $10
    inc bc
    ld b, $09
    ld [bc], a
    db $f4
    add hl, bc
    add hl, bc
    rst $28
    db $fc
    add hl, bc
    add hl, bc
    ld a, [c]
    db $10
    add hl, bc
    add hl, bc
    ld [bc], a
    inc de
    add hl, bc
    add hl, bc
    ld [de], a
    db $10
    add hl, bc
    add hl, bc
    dec d
    inc bc
    add hl, bc
    add hl, bc
    ld de, $09f3
    add hl, bc
    ld [bc], a
    db $ed
    add hl, bc
    add hl, bc
    push af
    di
    dec b
    dec b
    db $f4
    db $fd
    dec b
    dec b
    nop
    inc c
    dec b
    dec b
    inc c
    inc bc
    dec b
    dec b
    nop
    db $f4
    dec bc
    dec bc
    rst $28
    cp $09
    inc c
    ld a, [c]
    db $10
    dec bc
    dec bc
    ld [bc], a
    inc de
    inc c
    add hl, bc
    ld [de], a
    db $10
    dec bc
    dec bc
    dec d
    ld bc, $0c09
    ld de, $0bf3
    dec bc
    ld [bc], a
    db $ed
    inc c
    add hl, bc
    push af
    di

Call_007_5f09:
    ld a, [$d008]
    add a
    ld c, a
    ld a, $03
    jr jr_007_5f1c

Call_007_5f12:
    ld c, a
    ld a, [$c6ac]
    cp $01
    jr z, jr_007_5f1c

    ld a, $02

Call_007_5f1c:
jr_007_5f1c:
    ld e, a
    ld a, [$d00f]
    dec a
    cp $f6
    ret c

    ld a, c
    ld hl, $5f79
    rst JumpTable
    ld a, [$d00b]
    add [hl]
    ld b, a
    inc hl
    ld a, [$d00d]
    add [hl]
    ld c, a
    push bc
    ld a, e
    call $2b3d
    ldh a, [$93]
    ld [$ccc7], a
    ldh a, [$92]
    ld [$ccc6], a
    pop bc
    ret c

    ld hl, $5f8b
    call $1de7
    jr c, jr_007_5f63

    ld a, [$d202]
    or a
    ret z

    call $1dd5
    ret c

    ldh a, [$93]
    ld l, a
    ld h, $ce
    ld a, [hl]
    cp $0f
    ret nz

    ld e, $01
    jr jr_007_5f6a

jr_007_5f63:
    ld a, $58
    call $0c74
    ld e, $80

jr_007_5f6a:
    call $3ac6
    ret nz

    ld [hl], $07
    inc l
    ld [hl], e
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c
    ret


    ld a, [c]
    nop
    ld a, [c]
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    nop
    dec c
    ld a, [c]
    nop
    ld a, [c]
    ld a, [c]
    ld a, [c]
    nop
    nop
    sub a
    ld e, a
    and e
    ld e, a
    and l
    ld e, a
    and a
    ld e, a
    and a
    ld e, a
    or h
    ld e, a
    pop bc
    jp nz, $cbe2

    nop
    db $fd
    cp $ff
    reti


    jp c, $d720

    nop
    db $fd
    nop
    nop
    rra
    jr nc, jr_007_5fdb

    ld [hl-], a
    inc sp
    jr c, jr_007_5fe7

    ld a, [hl-]
    dec sp
    nop
    ld a, [bc]
    dec bc
    nop
    ld [de], a
    nop
    nop

Jump_007_5fb7:
    ld e, $3a
    ld a, [de]
    ld b, a
    ld a, [$d23a]
    or a
    jr nz, jr_007_5ff8

    ld hl, $6003
    ld a, [$c6c5]
    ld e, a

jr_007_5fc8:
    ld a, [hl+]
    or a
    jr z, jr_007_5fd2

    cp e
    jr z, jr_007_5ff7

    inc hl
    jr jr_007_5fc8

jr_007_5fd2:
    ld a, e
    cp $07
    jr z, jr_007_5fe2

    cp $09
    jr z, jr_007_5fe5

jr_007_5fdb:
    cp $0a
    jr z, jr_007_5fee

    ld a, b
    jr jr_007_5ff9

jr_007_5fe2:
    ld a, b
    jr jr_007_5ff8

jr_007_5fe5:
    ld a, b
    cpl

jr_007_5fe7:
    inc a
    sra a
    cpl
    inc a
    jr jr_007_5ff8

jr_007_5fee:
    ld a, b
    cpl
    inc a
    sra a
    cpl
    inc a
    jr jr_007_5ff9

jr_007_5ff7:
    ld a, [hl]

jr_007_5ff8:
    add b

jr_007_5ff9:
    bit 7, a
    jr nz, jr_007_5fff

    ld a, $ff

jr_007_5fff:
    ld e, $28
    ld [de], a
    ret


    ld bc, $02ff
    cp $03
    db $fd
    inc b
    ld bc, $0105
    ld b, $01
    nop

Call_007_6010:
    call $3a25
    push bc
    ld h, d
    ld l, $1b
    ld a, $0f
    ld [hl+], a
    ld [hl+], a
    ld [hl], c
    ld a, [$cec1]
    sub c
    jr z, jr_007_6024

    ld a, $01

jr_007_6024:
    call Call_007_49ca
    pop af
    and $07
    swap a
    rrca
    ld hl, $de80
    rst $10
    push de
    ld a, $02
    ldh [rSVBK], a
    ld de, $def8
    ld b, $08
    call $0462
    ld hl, $ffa5
    set 7, [hl]
    xor a
    ldh [rSVBK], a
    pop de
    ret


    ld e, $04
    ld a, [de]
    rst $00
    ld d, h
    ld h, b
    ld l, h
    ld h, b
    ld l, h
    ld h, b
    xor [hl]
    ld h, b
    call Call_007_497b
    ld h, d
    ld l, $00
    set 1, [hl]
    ld l, $02
    ld a, [hl]
    or a
    jr z, jr_007_607d

    ld l, $04
    ld [hl], $02
    call Call_007_6010
    jp $1df1


    ld h, d
    ld l, $05
    ld a, [hl]
    or a
    ret z

    ld l, $27
    ld a, $06
    ld [hl-], a
    ld [hl-], a
    dec l
    set 7, [hl]
    jr jr_007_60a3

jr_007_607d:
    call Call_007_6112
    ld a, h
    cp $d1
    jr z, jr_007_608a

    ld a, l
    cp $40
    jr c, jr_007_60a3

jr_007_608a:
    ld a, $09
    call $2122
    ld e, $09
    ld a, [de]
    ld [hl], a
    ld a, l
    add $1d
    ld l, a
    ld e, $26
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld h, d
    ld l, $24
    set 7, [hl]

jr_007_60a3:
    call Call_007_614f
    ld h, d
    ld l, $04
    ld [hl], $03
    inc l
    ld [hl], $00
    call Call_007_6112
    call Call_007_61a5
    jr z, jr_007_60ed

    ld e, $39
    ld a, [de]
    ld c, a
    call Call_007_4a8d
    jr nc, jr_007_60cf

    call Call_007_6109
    jr nz, jr_007_60ed

    jr nc, jr_007_60ca

    call $21e0
    ret c

jr_007_60ca:
    call Call_007_6220
    jr c, jr_007_60dc

jr_007_60cf:
    ld e, $02
    ld a, [de]
    or a
    ret nz

    ld a, $0b
    call $2122
    jp $21fd


jr_007_60dc:
    ld e, $02
    ld a, [de]
    cp $d7
    jr z, jr_007_60f4

    ld a, $05
    call $2122
    ld [hl], $03
    jp $2c29


jr_007_60ed:
    ld e, $02
    ld a, [de]
    cp $d7
    jr nz, jr_007_60fa

jr_007_60f4:
    call $24ad
    jp $2c29


jr_007_60fa:
    call $21e0
    ret c

    ld hl, $47bb
    ld e, $06
    call $008a
    jp $2c29


Call_007_6109:
    ld e, $02
    ld a, [de]
    or a
    ret z

    cp $d7
    scf
    ret


Call_007_6112:
    ld e, $02
    ld a, [de]
    or a
    jr nz, jr_007_6131

    xor a
    call $2122
    bit 0, [hl]
    jr z, jr_007_612d

    ld a, l
    add $04
    ld l, a
    ld a, [hl+]
    cp $02
    jr nz, jr_007_612d

    ld a, [hl]
    cp $03
    ret c

jr_007_612d:
    pop af
    jp $2c29


jr_007_6131:
    call $215d
    jr nc, jr_007_612d

    ld h, d
    ld l, $05
    ret


Call_007_613a:
    ld h, d
    ld l, $3b
    bit 0, [hl]
    jr z, jr_007_6145

    ld l, $10
    ld [hl], $00

jr_007_6145:
    ld l, $37
    bit 0, [hl]
    call z, Call_007_614f
    jp Jump_007_61a5


Call_007_614f:
    call Call_007_49aa
    ld a, [$d008]
    ld hl, $61a0
    rst $10
    ld a, [hl+]
    ld c, [hl]
    ld h, d
    ld l, $0b
    add [hl]
    ld [hl+], a
    inc l
    ld a, [hl]
    add c
    ld [hl], a
    ld l, $00
    res 1, [hl]
    ld l, $37
    set 0, [hl]
    inc l
    ld a, [hl]
    and $f0
    swap a
    add a
    ld hl, $6258
    rst JumpTable
    ld a, [hl+]
    ld e, $39
    ld [de], a
    ld e, $09
    ld a, [de]
    rlca
    jr c, jr_007_6196

    ld e, $14
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, $ff
    ld [de], a
    ld a, $12
    call $236b
    jr nz, jr_007_6191

    inc hl

jr_007_6191:
    ld e, $10
    ld a, [hl+]
    ld [de], a
    ret


jr_007_6196:
    ld h, d
    ld l, $10
    xor a
    ld [hl], a
    ld l, $14
    ld [hl+], a
    ld [hl+], a
    ret


    rst $38
    nop
    ld bc, $ff00

Call_007_61a5:
Jump_007_61a5:
    ld e, $38
    ld a, [de]
    cp $40
    jr nc, jr_007_61b0

    cp $20
    jr nc, jr_007_61db

jr_007_61b0:
    ld e, $09
    ld a, [de]
    cp $ff
    jr z, jr_007_621c

    and $18
    rrca
    rrca
    ld hl, $4c1b
    rst $10
    ld a, [hl+]
    ld c, [hl]
    ld h, d
    ld l, $0b
    add [hl]
    cp $b0
    jr nc, jr_007_620b

    ld b, a
    ld l, $0d
    ld a, c
    add [hl]
    ld c, a
    call $14bf
    jr nc, jr_007_620b

    call Call_007_4b78
    jr z, jr_007_620b

    jr jr_007_6201

jr_007_61db:
    ld h, d
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld e, $09
    ld a, [de]
    and $18
    ld hl, $6238
    rst $10
    ld e, $04

jr_007_61ed:
    push bc
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl+]
    add c
    ld c, a
    push hl
    call $14bf
    pop hl
    pop bc
    jr c, jr_007_6201

    dec e
    jr nz, jr_007_61ed

    jr jr_007_620b

jr_007_6201:
    call Call_007_6109
    jr nz, jr_007_621e

    ld e, $09
    ld a, $ff
    ld [de], a

jr_007_620b:
    ld a, [$cc50]
    and $20
    jr z, jr_007_6219

    ld e, $09
    ld a, [de]
    and $0f
    jr z, jr_007_621c

jr_007_6219:
    call $1fdb

jr_007_621c:
    or d
    ret


jr_007_621e:
    xor a
    ret


Call_007_6220:
    ld a, $52
    call $0c74
    call $232f
    ret c

    ld e, $10
    ld a, [de]
    ld e, a
    ld hl, $6270
    call $1dc4
    ld e, $10
    ld [de], a
    or a
    ret


    nop
    nop
    ld a, [$fafa]
    nop
    ld a, [$0005]
    nop
    ld a, [$0005]
    dec b
    dec b
    dec b
    nop
    nop

jr_007_624a:
    dec b
    ei
    dec b
    nop
    dec b
    dec b
    nop
    nop
    ld a, [$00fa]
    ld a, [$fa06]
    inc e
    db $10
    inc a
    ld h, h
    jr nz, jr_007_625e

jr_007_625e:
    inc d
    jr z, jr_007_6281

    nop
    jr z, jr_007_62a0

    jr nz, jr_007_6266

jr_007_6266:
    ld e, $28
    jr nz, jr_007_624a

    ld [hl-], a
    inc a
    jr nz, jr_007_626e

jr_007_626e:
    inc d
    jr z, jr_007_6276

    nop
    ld a, [bc]
    dec b
    rrca
    dec b

jr_007_6276:
    inc d
    ld a, [bc]
    add hl, de
    ld a, [bc]
    ld e, $0f
    inc hl
    rrca
    jr z, jr_007_6294

    dec l

jr_007_6281:
    inc d
    ld [hl-], a
    add hl, de
    scf
    add hl, de
    inc a
    ld e, $41
    ld e, $46
    inc hl
    ld c, e
    inc hl
    ld d, b
    jr z, @+$57

    jr z, jr_007_62ed

    dec l

jr_007_6294:
    ld e, a
    dec l
    ld h, h
    ld [hl-], a
    ld l, c
    ld [hl-], a
    ld l, [hl]
    scf
    ld [hl], e
    scf
    ld a, b
    inc a

jr_007_62a0:
    nop
    nop
    ld e, $05
    ld a, [de]
    rst $00
    xor h
    ld h, d
    cp a
    ld h, d
    rst JumpTable
    ld h, d
    call Call_007_497b
    call $23aa
    ld hl, $d00b
    call $222f
    xor a
    call Call_007_49ca
    jp $1e15


    call Call_007_49c1
    call Call_007_631b
    ld a, [hl]
    inc a
    and $fb
    xor $60
    ld [hl-], a
    ld [hl], a
    bit 7, b
    ret z

    ld a, $0b
    ld [hl+], a
    ld [hl], a
    ld l, $0e
    xor a
    ld [hl+], a
    ld [hl], a
    call $1e39
    jp $23aa


    call $2b2f
    jp z, $2c29

    call Call_007_632e
    call $2391
    bit 0, [hl]

jr_007_62ed:
    ld l, $30
    jr z, jr_007_62f3

    ld l, $34

jr_007_62f3:
    bit 7, [hl]
    jp z, $1e39

    inc [hl]
    ld a, [hl]
    cp $82
    jr c, jr_007_6308

    ld [hl], $80
    inc l
    inc [hl]
    ld a, [hl]
    dec l
    cp $03
    jr nc, jr_007_6326

jr_007_6308:
    inc l
    ld a, [hl+]
    inc a
    ld c, a
    ld a, [hl+]
    ld e, $0b
    ld [de], a
    ld a, [hl+]
    ld e, $0d
    ld [de], a
    ld a, c
    call Call_007_49ca
    call $1e15

Call_007_631b:
    ld h, d
    ld l, $21
    ld a, [hl]
    ld b, a
    and $7f
    ld l, $1d
    ld [hl-], a
    ret


jr_007_6326:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jp $1e39


Call_007_632e:
    ld h, d
    ld l, $02
    bit 0, [hl]
    ret z

    ld [hl], $00
    ld l, $30
    bit 7, [hl]
    jr z, jr_007_6341

    ld l, $34
    bit 7, [hl]
    ret nz

jr_007_6341:
    ld a, $80
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$d00b]
    add $05
    ld [hl+], a
    ld a, [$d00d]
    ld [hl], a
    ret


    add b
    ld de, $03ff
    ld bc, $0000
    nop
    adc d
    ld d, l
    rst $38
    nop
    rla
    ld b, h
    db $fc
    nop
    sub d
    ld b, h
    db $fc
    nop
    add h
    nop
    cp $7e
    sub l
    ld h, [hl]
    cp $00
    adc h
    nop
    rst $38
    ld a, [hl]
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    sub d
    ld h, [hl]
    cp $7e
    ld [de], a
    nop
    nop
    ld a, [hl]
    add a
    ld d, l
    ei
    nop
    rla
    nop
    db $fc
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    adc l
    inc sp
    rst $38
    nop
    inc d
    nop
    db $fd
    nop
    ld [de], a
    nop
    nop
    nop
    inc de
    ld [hl], a
    db $fc
    add hl, bc
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    add h
    ld h, [hl]
    ld hl, sp+$7e
    add h
    sbc c
    db $f4
    ld a, [hl]
    ld [de], a
    nop
    nop
    nop
    sbc e
    ld b, h
    cp $00
    sbc h
    ld b, h
    cp $00
    sbc l
    ld b, h
    rst $38
    nop
    sbc [hl]
    ld b, h
    rst $38
    nop
    sbc d
    ld b, h
    cp $00
    sub d
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    sbc c
    ld [hl+], a
    cp $00
    sbc c
    xor d
    db $fc
    nop
    sbc b
    ld h, [hl]
    db $fc
    ld a, [hl]
    sbc c
    ld h, [hl]
    db $fc
    nop
    adc a
    adc b
    db $fc
    nop
    pop bc
    ld h, h
    pop bc
    ld h, h
    pop bc
    ld h, h
    pop bc
    ld h, h
    push bc
    ld h, h
    push bc
    ld h, h
    push de
    ld h, h
    push bc
    ld h, h
    push bc
    ld h, h
    rst $38
    ld h, h
    push hl
    ld h, h
    push bc
    ld h, h
    push bc
    ld h, h
    rst $10
    ld h, h
    rst $38
    ld h, h
    push bc
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    push bc
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    push bc
    ld h, h
    rst $38
    ld h, h
    pop af
    ld h, h
    rst $38
    ld h, h
    rst $30
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    ld bc, $0165
    ld h, l
    dec b
    ld h, l
    ld bc, $0565
    ld h, l
    dec b
    ld h, l
    push bc
    ld h, h
    rlca
    ld h, l
    rlca
    ld h, l
    dec bc
    ld h, l
    dec c
    ld h, l
    dec c
    ld h, l
    dec c
    ld h, l
    dec c
    ld h, l
    dec c
    ld h, l
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld l, b
    ld h, [hl]
    ld l, b
    ld h, [hl]
    ld a, b
    ld h, [hl]
    ld l, b
    ld h, [hl]
    ldh a, [$66]
    jr nc, jr_007_64dc

    ld [$c267], sp
    ld h, [hl]
    and d
    ld h, [hl]
    add b
    ld h, [hl]
    jr nc, jr_007_64e6

    or d
    ld h, [hl]
    jr nc, jr_007_64ea

    ld e, d
    ld h, [hl]
    jr nc, jr_007_64ee

    nop
    ld h, a
    jr nc, jr_007_64f2

    jr nc, jr_007_64f4

    db $e4
    ld h, [hl]
    jr nc, jr_007_64f8

    inc e
    ld h, a
    jp nz, $2666

    ld h, a
    jr nc, jr_007_6500

    jr nc, jr_007_6502

    jr nc, @+$69

    jp nz, $3066

    ld h, a
    jp nz, $ca66

    ld h, [hl]
    sub $66
    sbc $66
    sub $66
    sub $66
    sub $66
    add sp, $66
    jr nc, jr_007_651a

    jr nc, jr_007_651c

    inc [hl]
    ld h, a
    jr c, jr_007_6520

    jr c, jr_007_6522

    jr c, jr_007_6524

    jr c, jr_007_6526

    jr c, jr_007_6528

    dec d
    ld h, l
    ld [hl], $65
    ld c, e
    ld h, l
    ld c, [hl]
    ld h, l
    ld d, c
    ld h, l
    ld d, h
    ld h, l
    ld d, a
    ld h, l
    ld e, d
    ld h, l
    ld e, l
    ld h, l
    ld h, b
    ld h, l
    ld h, e
    ld h, l
    ld [hl], c
    ld h, l
    ld a, c
    ld h, l
    add c

jr_007_64dc:
    ld h, l
    adc c
    ld h, l
    sub c
    ld h, l
    sbc c
    ld h, l
    and c
    ld h, l
    ld c, e

jr_007_64e6:
    ld h, l
    ld c, [hl]
    ld h, l
    pop af

jr_007_64ea:
    ld h, l
    inc bc
    ld h, [hl]
    dec d

jr_007_64ee:
    ld h, [hl]
    daa
    ld h, [hl]
    add hl, sp

jr_007_64f2:
    ld h, [hl]
    ld b, d

jr_007_64f4:
    ld h, [hl]
    ld b, l
    ld h, [hl]
    ld c, b

jr_007_64f8:
    ld h, [hl]
    ld d, c
    ld h, [hl]
    ld d, h
    ld h, [hl]
    ld d, a
    ld h, [hl]
    or [hl]

jr_007_6500:
    ld h, l
    rst $00

jr_007_6502:
    ld h, l
    sub $65
    sbc $65
    ld c, e
    ld h, l
    ld c, [hl]
    ld h, l
    jp hl


    ld h, l
    dec d
    ld h, l
    dec d
    ld h, l
    dec d
    ld h, l
    dec d
    ld h, l
    ld d, b
    nop
    nop
    inc b
    ld [bc], a

jr_007_651a:
    nop
    inc b

jr_007_651c:
    nop
    nop
    inc b
    ld [bc], a

jr_007_6520:
    nop
    inc b

jr_007_6522:
    nop
    nop

jr_007_6524:
    inc b
    ld [bc], a

Jump_007_6526:
jr_007_6526:
    nop
    inc b

jr_007_6528:
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld a, a
    nop
    ld bc, $0404
    ld b, $04
    ld b, $06
    inc bc
    inc b
    ld b, $07
    ld [$080a], sp
    ld a, [bc]
    rrca
    ld [$400c], sp
    add b
    inc c
    rst $38
    ld a, a
    nop
    nop
    ld a, a
    ld [bc], a
    nop
    ld a, a
    inc b
    nop
    ld a, a
    ld b, $00
    ld a, a
    ld [$7f00], sp
    ld a, [bc]
    nop
    ld a, a
    inc c
    nop
    ld a, a
    ld c, $00
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld b, $01
    rst $38
    di
    ld b, $00
    nop
    ld b, $02
    nop
    rst $38
    ld sp, hl
    ld b, $04
    nop
    ld b, $06
    nop
    rst $38
    ld sp, hl
    ld b, $08
    nop
    ld b, $0a
    nop
    rst $38
    ld sp, hl
    ld b, $0c
    nop
    ld b, $0e
    nop
    rst $38
    ld sp, hl
    ld b, $10
    nop
    ld b, $12
    nop
    rst $38
    ld sp, hl
    ld b, $14
    nop
    ld b, $16
    nop
    rst $38
    ld sp, hl
    inc b
    jr jr_007_65aa

    inc b
    ld a, [de]
    ld b, $03
    jr jr_007_65b0

jr_007_65aa:
    rlca
    inc e
    ld a, [bc]
    ld [$0f1e], sp

jr_007_65b0:
    ld [$0020], sp
    add b
    jr nz, @+$01

    ld bc, $0000
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    add b
    ld [bc], a
    ld b, $40
    rst $38
    or $01
    nop
    nop
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    nop
    inc bc
    ld b, $00
    ld a, a
    ld b, $ff
    ld [$0008], sp
    ld [$000a], sp
    rst $38
    ld sp, hl
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    nop
    rst $38
    ld sp, hl
    ld [$0000], sp
    ld [$0002], sp
    rst $38
    ld sp, hl
    ld bc, $0004
    inc b
    ld b, $00
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    inc b
    nop
    ld a, a
    ld b, $80
    ld bc, $0008
    inc b
    ld a, [bc]
    nop
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    inc b
    ld [$7f00], sp
    ld a, [bc]
    add b
    ld bc, $000c
    inc b
    ld c, $00
    inc b
    inc c
    nop
    inc b
    ld c, $00
    inc b
    inc c
    nop
    ld a, a
    ld c, $80
    ld bc, $0010
    inc b
    ld [de], a
    nop
    inc b
    stop
    inc b
    ld [de], a
    nop
    inc b
    stop
    ld a, a
    ld [de], a
    add b
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    nop
    ld a, a
    ld b, $01
    ld a, a
    ld [$0202], sp
    nop
    ld c, b
    ld [bc], a
    ld [bc], a
    ld c, b
    ld [bc], a
    inc b
    ld c, b
    ld a, a
    ld b, $98
    ld a, a
    ld [$7f9e], sp
    ld [$4196], sp
    ld c, a
    ld b, [hl]
    ld c, a
    rla
    ld d, b
    jr nz, jr_007_66b2

    ld [hl], $51
    ld d, a
    ld d, c
    ld a, b
    ld d, c
    ld l, c
    ld c, a
    db $fc
    ld c, a
    or h
    ld c, a
    ld c, $50
    ld l, [hl]
    ld c, a
    dec b
    ld d, b
    xor e
    ld c, a
    di
    ld c, a
    sbc c
    ld c, a
    ld c, e
    ld c, a
    and d
    ld c, a
    ld b, c
    ld c, a
    ld e, d
    ld c, a
    ld e, a
    ld c, a
    add hl, hl
    ld d, b
    ld [hl-], a
    ld d, b
    ld b, c
    ld c, a
    ld c, e
    ld c, a
    dec sp
    ld d, b
    ld b, h
    ld d, b
    ld c, l
    ld d, b
    ld d, [hl]
    ld d, b
    ld e, a
    ld d, b
    ld l, b
    ld d, b
    rla
    ld d, b
    jr nz, jr_007_66ec

    ld [hl], $51
    ld d, a
    ld d, c
    ld a, b
    ld d, c
    adc h
    ld d, b
    sub l
    ld d, b
    inc e
    ld d, c
    sbc [hl]
    ld d, b
    and a
    ld d, b
    or b
    ld d, b
    add hl, hl
    ld d, c
    cp c
    ld d, b

jr_007_66b2:
    sbc c
    ld d, c
    sbc [hl]
    ld d, c
    and a
    ld d, c
    or b
    ld d, c
    cp c
    ld d, c
    cp [hl]
    ld d, c
    rst $00
    ld d, c
    ret nc

    ld d, c
    ld b, c
    ld c, a
    sbc c
    ld c, a
    add $4f
    cp l
    ld c, a
    ld b, c
    ld c, a
    cp l
    ld c, a
    add a
    ld c, a
    sbc c
    ld c, a
    xor e
    ld c, a
    or h
    ld c, a
    ld b, c
    ld c, a
    add e
    ld d, b
    add a
    ld c, a
    sbc c
    ld c, a
    ld b, c
    ld c, a
    xor e
    ld c, a
    or h
    ld c, a
    add a
    ld c, a
    xor e
    ld c, a
    ld e, d
    ld c, a
    ld [hl], c
    ld d, b

jr_007_66ec:
    ld h, h
    ld c, a
    ld a, d
    ld d, b
    jp nz, $cb50

    ld d, b
    ld a, b
    ld c, a
    add d
    ld c, a
    call nc, $dd50
    ld d, b
    ld [hl], e
    ld c, a
    ld a, l
    ld c, a
    ld d, l
    ld c, a
    and $50
    ld d, b
    ld c, a
    rst $28
    ld d, b
    add a
    ld c, a
    xor e
    ld c, a
    sub b
    ld c, a
    and d
    ld c, a
    pop hl
    ld c, a
    ld [$874f], a
    ld c, a
    sbc c
    ld c, a
    rst $08
    ld c, a
    ret c

    ld c, a
    add e
    ld d, b
    add a
    ld c, a
    sbc c
    ld c, a
    ld hl, sp+$50
    add a
    ld c, a
    ld bc, $0a51
    ld d, c
    inc de
    ld d, c
    add e
    ld d, b
    ld b, c
    ld c, a
    xor e
    ld c, a
    rst $08
    ld c, a
    xor e
    ld c, a
    or h
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    nop
    nop
    nop
    nop
    rst $38
    rrca
    ldh a, [$fe]
    rst $38
    inc bc
    ld [hl], b
    ld a, [hl]
    rst $38
    ld [bc], a
    ld [hl], b
    ld a, [hl]
    rst $38
    inc bc
    ld [hl], b
    ld a, [hl]
    rst $38
    inc bc
    ld [hl], b
    ld a, [hl]
    rst $38
    rrca
    ldh a, [$7e]
    nop
    nop
    ld h, b
    ld a, h
    rst $38
    adc a
    ldh a, [$7e]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    adc a
    ldh a, [$7f]
    rst $38
    inc sp
    ld [hl], b
    ld a, [hl]
    rst $38
    inc sp
    ld [hl], b
    ld a, [hl]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    adc e
    ldh a, [$7f]
    rst $38
    sbc a
    ldh a, [$7f]
    ld sp, hl
    ld [bc], a
    ld [hl], b
    ld a, [hl]
    rst $38
    and e
    ldh a, [$7f]
    ld bc, $7000
    ld a, [hl]
    rrca
    nop
    nop
    nop
    ld sp, hl
    rra
    ldh a, [$7f]
    rst $38
    xor e
    ldh a, [$7f]
    ld sp, hl
    ld [bc], a
    ld [hl], b
    ld a, [hl]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    or e
    ldh a, [$7f]
    rst $38
    sbc a
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    pop af
    cp a
    ldh a, [$7f]
    rst $38
    adc e
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$bf]
    ldh a, [$7f]
    ld bc, $0000
    nop
    rst $38
    ld [hl-], a
    ld [hl], b
    ld a, [hl]
    ld bc, $0000
    nop
    pop af
    cp a
    ldh a, [$7f]
    ld sp, hl
    inc bc
    ldh [rP1], a
    rst $38
    inc sp
    ld [hl], b
    ld a, [hl]
    rst $38
    inc sp
    ld [hl], b
    ld a, [hl]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    rst $38
    adc a
    ldh a, [$7f]
    pop af
    cp a
    ldh a, [$7f]
    ldh a, [$8f]
    ldh a, [$7e]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    sbc e
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    rrca
    ldh a, [$7e]
    rst $38
    adc a
    ld [hl], b
    ld a, a
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    adc a
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    adc a
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    pop af
    xor a
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    rst $38
    adc a
    ldh a, [$7f]
    pop af
    xor a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    cp e
    ldh a, [$7f]
    rst $38
    adc a
    ldh a, [$7f]
    rst $38
    or e
    ldh a, [$7f]
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    xor a
    ldh a, [$7f]
    rrca
    nop
    nop
    nop
    rst $38
    cp a
    ldh a, [$7f]
    rst $38
    ccf
    ldh a, [$7f]
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $000c
    nop
    rst $38
    inc bc
    ld [hl], b
    ld a, a
    ldh a, [rNR13]
    ldh a, [$7e]
    rst $38
    rrca
    ld [hl], b
    ld a, [hl]
    ldh a, [rSB]
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    pop af
    rra
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld bc, $0000
    rst $38
    inc bc
    ldh a, [$7f]
    ld bc, $000c
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
    rst $38
    ccf
    ldh a, [$7e]
    nop
    nop
    sub b
    nop
    rst $38
    rrca
    ldh a, [$7e]
    rst $38
    rrca
    ldh a, [$7e]
    rst $38
    rrca
    ldh a, [$7e]
    ld sp, hl
    dec bc
    ldh a, [$7e]
    rst $38
    rra
    ldh a, [$7e]
    ld sp, hl
    ld [bc], a
    ld [hl], b
    ld a, [hl]
    rst $38
    rrca
    ldh a, [$7e]
    rst $38
    inc bc
    ld [hl], b
    ld a, [hl]
    rst $38
    rrca
    ldh a, [$7e]
    rst $38
    inc de
    ld [hl], b
    ld a, [hl]
    rst $38
    ld [bc], a
    ld [hl], b
    ld a, [hl]
    rst $38
    dec bc
    ldh a, [$7e]
    rrca
    dec e
    ldh a, [$7e]
    rst $38
    inc bc
    ld [hl], b
    ld a, d
    nop
    nop
    nop
    nop
    ldh a, [$3f]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ldh a, [$3f]
    ldh a, [$7e]
    nop
    nop
    nop
    nop
    ldh a, [$3f]
    ld [hl], b
    ld a, h
    nop
    nop
    nop
    ld [$0000], sp
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
    nop
    ldh a, [$3f]
    ldh a, [$7e]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld bc, $0000
    nop
    ldh a, [rSB]
    add b
    nop
    pop af
    ccf
    ld h, b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    pop af
    ccf
    ld h, b
    nop
    pop af
    ccf
    ld h, b
    nop
    nop
    nop
    add b
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    ld de, $0000
    dec c
    nop
    nop
    nop
    rst $38
    ld de, $0000
    add hl, bc
    nop
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld [de], a
    nop
    nop
    rrca
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    ld bc, $0001
    nop
    nop
    pop af
    ccf
    ld h, b
    nop
    add hl, bc
    nop
    nop
    nop
    rst $38
    inc bc
    ld [hl], b
    ld a, [hl]
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    ldh a, [$9f]
    ld h, b
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    rst $38
    dec de
    ldh a, [$7f]
    rst $38
    ld [de], a
    nop
    nop
    add hl, bc
    ld bc, $0000
    add hl, bc
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld h, b
    nop
    dec c
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    add hl, bc
    nop
    nop
    nop
    ld l, c
    ld bc, $0000
    add hl, bc
    nop
    nop
    nop
    ld l, c
    ld bc, $0000
    jp hl


    ld bc, $0000
    rst $38
    ccf
    ldh a, [$7e]
    pop af
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
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
    inc hl
    nop
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr nz, jr_007_6b0b

    jr nz, jr_007_6b0d

    jr nz, jr_007_6b0f

    jr nz, jr_007_6b17

    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    jr nz, jr_007_6b2b

jr_007_6b0b:
    jr nz, jr_007_6b2d

jr_007_6b0d:
    jr nz, jr_007_6b2f

jr_007_6b0f:
    jr nz, jr_007_6b13

    nop
    nop

jr_007_6b13:
    nop
    nop
    nop
    nop

jr_007_6b17:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6b2b:
    nop
    nop

jr_007_6b2d:
    nop
    nop

jr_007_6b2f:
    nop
    inc e
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
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc e
    inc e
    rra
    rra
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr nz, jr_007_6b8b

    jr nz, jr_007_6b8d

    jr nz, jr_007_6b8f

    jr nz, @+$3e

    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc e
    inc e
    rra
    rra
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr nz, @+$22

jr_007_6b8b:
    jr nz, @+$22

jr_007_6b8d:
    jr nz, @+$22

jr_007_6b8f:
    jr nz, jr_007_6b93

    ld b, $05

jr_007_6b93:
    dec b
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    ld hl, $2100
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_007_6bd0

    ld [bc], a
    ld b, $05
    dec b
    ld d, $15
    dec d
    dec d
    inc l
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_6beb

    jr nz, jr_007_6bed

    jr nz, jr_007_6bef

    nop

jr_007_6bd0:
    ld [bc], a
    ld b, $06
    ld b, $1c
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, jr_007_6c0b

jr_007_6beb:
    jr nz, jr_007_6c0d

jr_007_6bed:
    jr nz, jr_007_6c0f

jr_007_6bef:
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    ld d, $15
    inc l
    dec d
    inc l
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_6c2b

jr_007_6c0b:
    jr nz, jr_007_6c2d

jr_007_6c0d:
    jr nz, jr_007_6c2f

jr_007_6c0f:
    jr nz, jr_007_6c11

jr_007_6c11:
    nop
    nop
    nop
    ld hl, $2121
    ld hl, $2121
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, @+$22

jr_007_6c2b:
    jr nz, @+$22

jr_007_6c2d:
    jr nz, @+$22

jr_007_6c2f:
    nop
    ld [bc], a
    ld b, $06
    ld b, $21
    ld hl, $2121
    ld hl, $2121
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    ld hl, $2100
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_007_6c50

jr_007_6c50:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    jr nz, jr_007_6c8b

    jr nz, jr_007_6c8d

    jr nz, jr_007_6c8f

    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    inc e
    inc e
    dec bc
    nop
    dec bc
    inc e

jr_007_6c8b:
    inc [hl]
    dec bc

jr_007_6c8d:
    jr z, jr_007_6caf

jr_007_6c8f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp

jr_007_6caf:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    inc [hl]
    ld [$2928], sp
    nop
    ld [bc], a
    ld de, $1010
    dec bc
    ld [$0908], sp
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    ld [$2222], sp
    add hl, bc
    ld [$350b], sp
    daa
    dec bc
    jr z, jr_007_6d0f

    nop
    inc a
    ld b, $06
    ld b, $15
    ld d, $16
    ld d, $17
    dec d
    nop
    nop
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_6d27

    jr nz, jr_007_6d2d

    jr nz, jr_007_6d2f

jr_007_6d0f:
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    inc e
    inc e

jr_007_6d27:
    dec bc
    dec bc
    dec bc
    inc e
    jr nz, jr_007_6d38

jr_007_6d2d:
    jr nz, jr_007_6d4f

jr_007_6d2f:
    nop
    ld [bc], a
    ld b, $06
    ld b, $0b
    dec bc
    dec bc
    dec bc

jr_007_6d38:
    dec bc
    dec bc
    dec bc
    ld [$000b], sp
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    dec hl
    dec bc
    ld [$1c0b], sp
    daa
    dec bc
    jr z, @+$2b

jr_007_6d4f:
    nop
    ld [bc], a
    nop
    nop
    dec b
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    dec [hl]
    dec [hl]
    nop
    nop
    jr nz, jr_007_6d87

    jr nz, jr_007_6d8d

    jr nz, jr_007_6d8f

    nop
    ld [bc], a
    db $10
    rrca
    rrca
    dec d
    ld d, $16
    ld d, $17
    ld d, $00
    nop
    nop
    rrca
    nop
    dec h
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de

jr_007_6d87:
    nop
    dec [hl]
    jr nz, jr_007_6da7

    jr nz, jr_007_6dad

jr_007_6d8d:
    jr z, jr_007_6db8

jr_007_6d8f:
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e

jr_007_6da7:
    nop
    nop
    jr nz, jr_007_6dc7

    jr nz, @+$22

jr_007_6dad:
    jr nz, jr_007_6dcf

    nop
    ld [bc], a
    nop
    nop
    rrca
    ld [$0909], sp
    ld a, [bc]

jr_007_6db8:
    ld a, [bc]
    ld [$0a08], sp
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a

jr_007_6dc7:
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp

jr_007_6dcf:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    nop
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    inc e
    daa
    dec bc
    jr z, jr_007_6e18

    nop
    ld [bc], a
    nop
    nop
    dec b
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    dec [hl]
    dec [hl]
    nop
    nop
    jr nz, jr_007_6e40

    jr nz, jr_007_6e2d

    jr nz, @+$2b

    nop
    ld [bc], a
    db $10
    rrca
    rrca
    jr jr_007_6e2f

    add hl, de
    add hl, de

jr_007_6e18:
    ld a, [de]
    jr jr_007_6e1b

jr_007_6e1b:
    nop
    add hl, de
    add hl, de
    nop
    dec h
    nop
    nop
    nop
    nop
    dec c
    ld [de], a
    ld [de], a
    dec bc
    dec bc
    jr nz, jr_007_6e47

    jr nz, jr_007_6e3f

jr_007_6e2d:
    jr nz, jr_007_6e4f

jr_007_6e2f:
    nop
    ld [bc], a
    rlca
    ld b, $06
    dec d
    dec d
    dec d
    ld [$1516], sp
    nop
    nop
    dec d
    dec d
    nop

jr_007_6e3f:
    dec h

jr_007_6e40:
    nop
    nop
    nop
    nop
    inc e
    ld [hl+], a
    dec hl

jr_007_6e47:
    dec bc
    ld [$3520], sp
    jr nz, jr_007_6e58

    jr z, jr_007_6e6f

jr_007_6e4f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]

jr_007_6e58:
    ld a, [bc]
    ld [$0a0c], sp
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    add hl, bc
    add hl, bc
    inc e
    jr nz, jr_007_6e79

    jr nz, jr_007_6e8f

jr_007_6e6f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]

jr_007_6e79:
    ld [$090b], sp
    add hl, de
    add hl, de
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    dec de
    dec de
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    jr nz, @+$0a

    jr z, jr_007_6eaf

jr_007_6e8f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld [$000d], sp
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    inc [hl]
    ld [$2928], sp

jr_007_6eaf:
    nop
    ld [bc], a
    rrca
    rrca
    rrca
    inc c
    dec c
    dec c
    ld c, $0e
    inc c
    inc c
    add hl, bc
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    add hl, bc
    dec c
    inc e
    jr nz, @+$0f

    jr z, jr_007_6ef8

    nop
    ld a, [hl-]
    nop
    nop
    nop
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    inc e
    inc e
    dec bc
    dec bc

jr_007_6ef8:
    dec bc
    inc e
    nop
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    inc e
    dec hl
    dec bc
    add hl, bc
    jr nz, jr_007_6f27

    inc [hl]
    jr nz, @+$22

    jr nz, jr_007_6f10

jr_007_6f10:
    scf
    nop
    nop
    nop
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a

jr_007_6f27:
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp
    nop
    inc a
    rlca
    ld b, $06
    dec d
    ld d, $16
    ld d, $00
    dec d
    nop
    nop
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_6f67

    jr nz, jr_007_6f6d

    jr nz, jr_007_6f6f

    nop
    ld [bc], a
    ld b, $05
    dec b
    dec d
    ld d, $16
    ld d, $17
    dec d
    nop
    nop
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de

jr_007_6f67:
    nop
    nop
    jr nz, jr_007_6f87

    jr nz, jr_007_6f8d

jr_007_6f6d:
    jr nz, jr_007_6f8f

jr_007_6f6f:
    nop
    ld [bc], a
    rlca
    ld b, $06
    dec d
    ld d, $16
    ld d, $17
    dec d
    nop
    nop
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de

jr_007_6f87:
    nop
    nop
    jr nz, jr_007_6fa7

    jr nz, @+$22

jr_007_6f8d:
    jr nz, jr_007_6faf

jr_007_6f8f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld [$000d], sp
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a

jr_007_6fa7:
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp

jr_007_6faf:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    inc e
    daa
    ld [$2928], sp
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    dec hl
    dec hl
    dec bc
    nop
    dec bc
    inc e
    daa
    dec bc
    dec bc
    add hl, hl
    nop
    ld [bc], a
    nop
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a00], sp
    dec c
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    inc e
    ld [$2928], sp
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    inc e
    inc [hl]
    dec bc
    jr z, jr_007_7098

    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    inc e
    inc e
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2928], sp
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]

jr_007_7098:
    ld a, [bc]
    ld [$0a08], sp
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    daa
    ld [$2920], sp
    nop
    jr c, jr_007_70b2

jr_007_70b2:
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    dec bc
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc e
    daa
    dec bc
    jr z, jr_007_70f8

    nop
    ld [bc], a
    rlca
    ld b, $06
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    ld [hl+], a
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    inc e
    daa
    dec bc
    jr z, jr_007_710f

    nop
    ld [bc], a
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc

jr_007_70f8:
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    dec bc
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc e
    daa
    dec bc
    jr z, jr_007_7138

jr_007_710f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    inc [hl]
    ld [$2928], sp
    nop
    ld [bc], a
    ld b, $05
    dec b
    dec bc
    dec bc
    dec bc
    dec bc

jr_007_7138:
    dec bc
    dec bc
    nop
    dec bc
    ld d, $16
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    dec de
    dec de
    dec bc
    dec bc
    dec bc
    inc e
    jr nz, @+$0d

    jr nz, jr_007_716f

    nop
    ld [bc], a
    db $10
    db $10
    db $10
    dec c
    dec c
    dec c
    ld c, $0e
    dec c
    nop
    nop
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    ld c, $0b
    dec c
    inc e
    jr nz, @+$0f

    jr z, jr_007_7198

jr_007_716f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    ld [$2735], sp
    ld [$2920], sp
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]

jr_007_7198:
    ld a, [bc]
    ld [$0a08], sp
    nop
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    dec de
    dec de
    ld a, [bc]
    add hl, bc
    ld [$201c], sp
    ld [$2020], sp
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    ld [$271c], sp
    ld [$2928], sp
    nop
    ld [bc], a
    rlca
    ld b, $06
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    inc e
    jr nz, jr_007_720b

    jr nz, jr_007_720d

    jr nz, jr_007_720f

    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld c, $00
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
    nop

jr_007_720b:
    nop
    nop

jr_007_720d:
    nop
    nop

jr_007_720f:
    nop
    ld bc, $0607
    ld b, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    inc e
    dec de
    dec de
    nop
    dec [hl]
    jr nz, jr_007_724b

    jr nz, jr_007_724d

    jr nz, jr_007_724f

    nop
    ld [bc], a
    rlca
    ld b, $06
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, jr_007_726b

jr_007_724b:
    jr nz, @+$22

jr_007_724d:
    jr nz, @+$22

jr_007_724f:
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    inc e
    inc e
    inc e
    dec bc
    dec bc
    jr nz, @+$22

jr_007_726b:
    daa
    jr nz, jr_007_728e

    jr nz, jr_007_7270

jr_007_7270:
    ld [bc], a
    rlca
    ld b, $06
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    inc e
    inc e
    inc e
    dec bc
    jr nz, jr_007_72aa

    jr nz, jr_007_72ac

    jr nz, jr_007_72ae

jr_007_728e:
    jr nz, jr_007_7290

jr_007_7290:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
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
    nop

jr_007_72aa:
    nop
    nop

jr_007_72ac:
    nop
    nop

jr_007_72ae:
    nop
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    inc e
    inc e
    add hl, bc
    nop
    jr nz, jr_007_72eb

    jr nz, jr_007_72d5

    jr nz, jr_007_72ef

    nop
    ld [bc], a
    ld b, $05
    dec b
    dec bc

jr_007_72d5:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    dec bc
    nop
    jr nz, @+$22

jr_007_72eb:
    jr nz, @+$0d

    jr nz, jr_007_730f

jr_007_72ef:
    nop
    ld [bc], a
    ld b, $05
    dec b
    ld hl, $2121
    ld hl, $2121
    ld hl, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    ld hl, $2000
    jr nz, jr_007_732c

    ld hl, $2020

jr_007_730f:
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    ld hl, $2121
    ld hl, $2121
    ld hl, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    ld hl, $2000
    jr nz, jr_007_734c

jr_007_732c:
    ld hl, $2020
    nop
    inc bc
    nop
    nop
    rlca
    ld hl, $2121
    ld hl, $2121
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1c1c
    ld hl, $2000
    jr nz, jr_007_736c

jr_007_734c:
    jr nz, @+$22

    jr nz, jr_007_7350

jr_007_7350:
    ld [bc], a
    db $10
    rrca
    rrca
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1c1c
    ld hl, $2100
    jr nz, jr_007_738d

jr_007_736c:
    ld hl, $2020
    nop
    ld [bc], a
    nop
    nop
    ld b, $1c
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, @+$22

    jr nz, @+$22

jr_007_738d:
    jr nz, jr_007_73af

    nop
    ld [bc], a
    dec b
    dec b
    dec b
    ld hl, $2121
    ld hl, $2121
    ld hl, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1c1c
    ld hl, $2100
    jr nz, @+$22

    ld hl, $2020

jr_007_73af:
    nop
    ld [bc], a
    rlca
    ld b, $06
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_007_73ef

    nop
    ld [bc], a
    ld b, $05
    dec b
    ld hl, $2121
    ld hl, $2121
    ld hl, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1c1c
    ld hl, $2000
    jr nz, @+$22

    ld hl, $2020

jr_007_73ef:
    nop
    ld [bc], a
    ld b, $05
    dec b
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    nop
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_742b

    jr nz, jr_007_742d

    jr nz, jr_007_742f

    nop
    ld [bc], a
    ld b, $06
    dec b
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld hl, $0000
    jr nz, jr_007_744b

jr_007_742b:
    jr nz, jr_007_744d

jr_007_742d:
    jr nz, jr_007_744f

jr_007_742f:
    nop
    ld [bc], a
    rlca
    ld b, $06
    ld hl, $2121
    ld hl, $2121
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
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, jr_007_746b

jr_007_744b:
    jr nz, @+$22

jr_007_744d:
    jr nz, jr_007_746f

jr_007_744f:
    nop
    ld [bc], a
    rrca
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e

jr_007_746b:
    daa
    ld [$2928], sp

jr_007_746f:
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    dec de
    dec de
    dec de
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_74ab

    jr nz, @+$22

    jr nz, jr_007_74af

    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    dec c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e

jr_007_74ab:
    daa
    ld [$2928], sp

jr_007_74af:
    nop
    ld [bc], a
    rlca
    ld b, $06
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    dec hl
    dec bc
    dec bc
    dec bc
    dec [hl]
    jr nz, jr_007_74d8

    jr z, jr_007_74ef

    nop
    ld [bc], a
    db $10
    rrca
    rrca
    nop
    nop
    nop
    nop

jr_007_74d8:
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    inc [hl]
    ld [$2028], sp

jr_007_74ef:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    add hl, bc
    dec de
    dec de
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc e
    jr nz, jr_007_7515

    jr z, jr_007_752f

    nop
    ld [bc], a
    dec b
    dec b
    dec b
    inc e

jr_007_7515:
    inc e
    dec bc
    dec bc
    dec bc
    inc e
    nop
    dec bc
    nop
    nop
    nop
    dec h
    nop
    nop
    nop
    nop
    dec bc
    inc e
    dec hl
    dec bc
    add hl, bc
    jr nz, jr_007_7547

    jr nz, @+$22

    jr nz, @+$22

jr_007_752f:
    nop
    ld [bc], a
    ld b, $05
    dec b
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    inc e
    inc e

jr_007_7547:
    nop
    nop
    jr nz, jr_007_7567

    inc [hl]
    jr nz, jr_007_756e

    jr nz, jr_007_7550

jr_007_7550:
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_7567:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_756e:
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $15
    ld d, $16
    rla
    nop
    dec d
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_75eb

    jr nz, jr_007_75ed

    jr nz, jr_007_75ef

    nop
    ld [bc], a
    ld b, $05
    dec b
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, jr_007_760b

jr_007_75eb:
    jr nz, jr_007_760d

jr_007_75ed:
    jr nz, jr_007_760f

jr_007_75ef:
    nop
    ld [bc], a
    rlca
    ld b, $06
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, @+$22

jr_007_760b:
    jr nz, @+$22

jr_007_760d:
    jr nz, jr_007_762f

jr_007_760f:
    nop
    ld [bc], a
    db $10
    rrca
    rrca
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1c1c
    ld hl, $2100
    jr nz, jr_007_764d

    ld hl, $2920

jr_007_762f:
    nop
    ld [bc], a
    ld b, $06
    ld b, $15
    ld d, $16
    rla
    nop
    dec d
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, @+$22

    jr nz, @+$22

jr_007_764d:
    jr nz, jr_007_766f

    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    nop
    nop
    ld hl, $2121
    ld hl, $1c1c

jr_007_766f:
    nop
    ld [bc], a
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_76ab

    jr nz, jr_007_76ad

    jr nz, jr_007_76af

    nop
    dec a
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_76cb

jr_007_76ab:
    jr nz, jr_007_76cd

jr_007_76ad:
    jr nz, jr_007_76cf

jr_007_76af:
    nop
    ld [bc], a
    ld b, $06
    dec b
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    nop
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    nop
    nop
    jr nz, jr_007_76eb

jr_007_76cb:
    jr nz, jr_007_76ed

jr_007_76cd:
    jr nz, jr_007_76ef

jr_007_76cf:
    nop
    ld [bc], a
    ld b, $06
    ld b, $1c
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    inc e
    dec bc
    nop
    nop
    jr nz, @+$22

jr_007_76eb:
    jr nz, jr_007_770d

jr_007_76ed:
    jr nz, @+$22

jr_007_76ef:
    nop
    ld [bc], a
    ld b, $06
    ld b, $21
    ld hl, $2121
    ld hl, $2121
    ld hl, $2100
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $1c1c
    ld hl, $2121
    ld hl, $2121

jr_007_770d:
    ld hl, $0021
    ld [bc], a
    rlca
    ld b, $06
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_774b

    jr nz, jr_007_774d

    jr nz, jr_007_774f

    nop
    inc bc
    ld b, $06
    ld b, $16
    ld d, $16
    ld d, $16
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_776b

jr_007_774b:
    jr nz, jr_007_776d

jr_007_774d:
    jr nz, jr_007_776f

jr_007_774f:
    nop
    inc bc
    nop
    nop
    ld e, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_776b:
    nop
    nop

jr_007_776d:
    nop
    nop

jr_007_776f:
    nop
    ld [bc], a
    add hl, de
    jr jr_007_778c

    inc sp
    inc sp
    ld [hl-], a
    inc d
    nop
    ld [hl-], a
    nop
    nop
    jr jr_007_777e

jr_007_777e:
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
    nop

jr_007_778c:
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld e, $00
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
    nop
    inc bc
    nop
    nop
    ld b, $00
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
    nop
    inc bc
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rla
    ld d, $16
    dec d
    dec d
    dec d
    ld d, $1b
    dec d
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
    inc e
    dec de
    dec de
    nop
    nop
    jr nz, jr_007_782b

    jr nz, jr_007_782d

    jr nz, jr_007_782f

    nop
    ld [bc], a
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    inc e
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
    nop
    nop
    nop
    nop
    nop

jr_007_782b:
    nop
    nop

jr_007_782d:
    nop
    nop

jr_007_782f:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld e, $00
    inc e
    inc e
    nop
    inc e
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
    dec b
    ld b, $06
    ld b, $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $14
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    nop
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    nop
    inc bc
    nop
    ld b, $06
    ld d, $16
    ld d, $16
    ld d, $16
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rra
    rra
    rra
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    nop
    jr nz, jr_007_78eb

    jr nz, jr_007_78ed

    jr nz, jr_007_78ef

    nop
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    nop
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc hl
    nop
    nop
    nop
    nop

jr_007_78eb:
    nop
    nop

jr_007_78ed:
    nop
    nop

jr_007_78ef:
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

Call_007_7b4e:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

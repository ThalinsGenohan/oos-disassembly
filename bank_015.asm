; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX
Farcall_015_4000::
    ldh a, [$b8]
    or a
    ret z

    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    push de
    call Call_015_4036
    pop de
    ldh a, [rSC]
    rlca
    jr c, jr_015_4032

    ldh a, [$b8]
    cp $e0
    jr z, jr_015_402d

    ld a, [$d98b]
    or a
    jr nz, jr_015_4032

    ld a, [$d983]
    xor $01
    ld [$d983], a
    jr z, jr_015_4032

    ldh a, [$b8]

jr_015_402d:
    and $81
    call $0c46

jr_015_4032:
    pop af
    ldh [rSVBK], a
    ret


Call_015_4036:
Jump_015_4036:
    ldh a, [$bc]
    rst $00
    dec c
    ld b, d
    dec c
    ld b, d
    ld e, $42
    ld b, e
    ld b, c
    ld c, $41

Call_015_4043:
    call Call_015_41dc
    cp $80
    ret z

Jump_015_4049:
    ld a, [$d981]
    ld hl, $d9e5
    rst $10
    ld a, [$d981]
    or a
    jr nz, jr_015_4066

    ld a, [hl]
    or a
    jr nz, jr_015_405f

    inc a
    ld [$d98b], a
    ret


jr_015_405f:
    ld [$d987], a
    xor a
    ld [$d982], a

jr_015_4066:
    inc a
    ld [$d981], a
    ld a, [$d987]
    dec a
    ld [$d987], a
    ld a, [hl+]
    jr nz, jr_015_407b

    xor a
    ld [$d988], a
    ld a, [$d982]

jr_015_407b:
    ldh [rSB], a
    ld hl, $d982
    add [hl]
    ld [hl], a
    xor a
    ld [$d98b], a
    ret


    ldh a, [$b9]
    or a
    ret z

    ld a, $01
    ld [$d98b], a
    xor a
    ldh [rSB], a
    ldh [$b9], a
    ret


    call Call_015_41dc
    cp $80
    jp z, $0c5a

    jp Jump_015_4269


    call Call_015_41dc
    jp $0c5a


Call_015_40a7:
    xor a
    ld [$d98b], a
    call Call_015_41dc
    cp $80
    ret z

    ld a, [$d981]
    ld b, a
    or a
    jr nz, jr_015_40d7

    ldh a, [$ba]
    cp $ff
    jr z, jr_015_40c1

    or a
    jr nz, jr_015_40d4

jr_015_40c1:
    ld a, [$d985]
    or a
    ret nz

    ld hl, $d984
    inc [hl]
    ret nz

    ld a, $86
    ldh [$bb], a
    xor a
    ld [$d988], a
    ret


jr_015_40d4:
    ld [$d987], a

jr_015_40d7:
    ld hl, $d987
    dec [hl]
    jr nz, jr_015_40f3

    ldh a, [$ba]
    ld hl, $d982
    cp [hl]
    jr z, jr_015_40e9

    ld a, $81
    ldh [$bb], a

jr_015_40e9:
    xor a
    ld [$d988], a
    ld [$d984], a
    ldh [rSB], a
    ret


jr_015_40f3:
    ld a, b
    ld de, $d9e5
    call $0068
    ld a, b
    inc a
    ld [$d981], a
    ldh a, [$ba]
    ld [de], a
    ld hl, $d982
    add [hl]
    ld [hl], a
    xor a
    ldh [rSB], a
    ld [$d984], a
    ret


    ldh a, [$bd]
    rst $00
    dec c
    ld b, h
    add b
    ld b, d
    ld de, $8044
    ld b, d
    dec d
    ld b, h
    add b
    ld b, d
    adc [hl]
    ld b, e
    add a
    ld b, b
    xor $42
    dec b
    ld b, e
    adc [hl]
    ld b, e
    ld [hl], b
    ld b, e
    push bc
    ld b, e
    dec b
    ld b, e
    adc [hl]
    ld b, e
    add hl, hl
    ld b, e
    add b
    ld b, d
    sub [hl]
    ld b, b
    ld c, l
    ld b, e
    add b
    ld b, d
    adc [hl]
    ld b, e
    push af
    ld b, e
    add b
    ld b, d
    sub [hl]
    ld b, b
    ld a, e
    ld b, e
    ldh a, [$bd]
    rst $00
    db $76
    ld b, c
    add b
    ld b, d
    adc [hl]
    ld b, e
    ld a, c
    ld b, c
    add b
    ld b, d
    adc [hl]
    ld b, e
    ld a, l
    ld b, c
    add b
    ld b, d
    adc [hl]
    ld b, e
    push af
    ld b, e
    add b
    ld b, d
    and a
    ld b, d
    add b
    ld b, d
    and c
    ld b, b
    add b
    ld b, d
    sub [hl]
    ld b, b
    sbc $42
    add b
    ld b, d
    adc [hl]
    ld b, e
    ld c, $43
    push af
    ld b, e
    add b
    ld b, d
    adc [hl]
    ld b, e
    ld a, e
    ld b, e
    xor a
    jr jr_015_417f

    ld a, $01
    jr jr_015_417f

    ld a, $02

jr_015_417f:
    ldh [$98], a
    call $09b8
    ldh [$8b], a
    call Call_015_4269
    ld hl, $d9e5
    ld a, $21
    ld [hl+], a
    ld c, a
    ldh a, [$8b]
    ld [hl+], a
    ld [hl+], a
    add a
    add c
    ld c, a
    ld a, [$c6a3]
    ld [hl+], a
    ld [hl+], a
    add a
    add c
    ld c, a
    ld a, [$c61e]
    ld [hl+], a
    add c
    ld c, a
    ld a, [$c61f]
    ld [hl+], a
    add c
    ld c, a
    ld a, [$c612]
    ld [hl+], a
    add c
    ld c, a
    ld a, [$c613]
    add a
    ld e, a
    ld a, [$c614]
    or e
    ld [hl+], a
    add c
    ld c, a
    ld de, $c600
    ld b, $16

jr_015_41c2:
    ld a, [de]
    ld [hl+], a
    add c
    ld c, a
    inc e
    dec b
    jr nz, jr_015_41c2

    ld a, $a0
    ld [hl+], a
    add c
    ld c, a
    ldh a, [$98]
    ld [hl], a
    add c
    ld [hl+], a
    ld a, $01
    ld [$d988], a
    jp Jump_015_4049


Call_015_41dc:
    ldh a, [$b9]
    or a
    jr nz, jr_015_41fa

    ld a, [$d985]
    or a
    jr nz, jr_015_41ef

    ld hl, $d989
    call $0237
    jr z, jr_015_41f1

jr_015_41ef:
    pop af
    ret


jr_015_41f1:
    xor a
    ld [$d988], a
    ld a, $80
    ldh [$bb], a
    ret


jr_015_41fa:
    ld [$d988], a
    xor a
    ldh [$b9], a
    ldh [$bb], a

Call_015_4202:
jr_015_4202:
    ld a, $b4
    ld [$d989], a
    ld a, $00
    ld [$d98a], a
    ret


    ldh a, [$bd]
    rst $00
    add [hl]
    ld b, c
    add b
    ld b, d
    adc [hl]
    ld b, e
    sub e
    ld b, d
    add b
    ld b, d
    sub [hl]
    ld b, b
    cpl
    ld b, d
    ldh a, [$bd]
    rst $00
    sub e
    ld b, d
    add b
    ld b, d
    sub [hl]
    ld b, b
    add [hl]
    ld b, c
    add b
    ld b, d
    adc [hl]
    ld b, e
    cpl
    ld b, d
    call $0c5a
    xor a
    ldh [$bb], a
    call Call_015_44ec
    jr z, jr_015_4264

    ld hl, $c600
    ld a, [$d98d]
    add [hl]
    and $7f
    ld b, $00
    and $7c
    jr z, jr_015_424f

    inc b
    and $60
    jr z, jr_015_424f

    inc b

jr_015_424f:
    inc l
    ld c, [hl]
    ld a, b
    ld hl, $4503
    rst $10
    ld a, [hl]
    rst $10
    ld a, [$d98e]
    add c
    and $07
    rst $10
    ld a, [hl]
    ld [$d98d], a
    ret


jr_015_4264:
    ld a, $84
    ldh [$bb], a
    ret


Call_015_4269:
Jump_015_4269:
jr_015_4269:
    ldh a, [$bd]
    inc a
    ldh [$bd], a

jr_015_426e:
    xor a
    ld [$d981], a
    ldh [$bb], a
    ld [$d982], a
    ld [$d984], a
    inc a
    ld [$d988], a
    jr jr_015_4202

    call Call_015_4043
    call Call_015_44d7
    ld a, [$d986]
    or a
    jr z, jr_015_4269

    ldh a, [$bd]
    dec a
    ldh [$bd], a
    jr jr_015_426e

    call Call_015_40a7
    call Call_015_44d7
    ld hl, $d98d
    ld de, $d9ee
    ld b, $07
    call $045b
    jp Jump_015_43f5


    ld a, [$d981]
    or a
    ld a, $00
    jr nz, jr_015_42b0

    inc a

jr_015_42b0:
    ld [$d985], a
    call Call_015_40a7
    ld a, [$d988]
    or a
    ret nz

    ld a, [$d9e6]
    cp $c0
    jr nz, jr_015_42c5

    jp Jump_015_43f5


jr_015_42c5:
    cp $b0
    jp nz, Jump_015_43e0

    ld a, [$d9e7]
    ldh [$98], a
    cp $03
    jp nc, $0c5a

    call $09b8
    ld a, $0d
    ldh [$bd], a
    jp Jump_015_43f5


    call Call_015_4269
    ld hl, $d98d
    ld de, $c616
    ld b, $08
    call $045b
    jr jr_015_4350

    call Call_015_4269
    ld hl, $d9e5
    ld a, $03
    ld [hl+], a
    ld a, $c0
    ld [hl+], a
    ld a, $c3
    ld [hl], a
    ld a, $01
    ld [$d988], a
    jp Jump_015_4049


    call Call_015_4043
    call Call_015_44d7
    jp Jump_015_4269


    call Call_015_40a7
    call Call_015_44d7
    ldh a, [$bb]
    cp $81
    jp z, Jump_015_4269

    ld hl, $d98d
    ld de, $d9e6
    ld b, $08
    call $045b
    jp Jump_015_4269


    call Call_015_40a7
    call Call_015_44d7
    ld hl, $c616
    ld de, $d9e6
    ld b, $08

jr_015_4337:
    ld a, [de]
    or [hl]
    ld [de], a
    inc hl
    inc de
    dec b
    jr nz, jr_015_4337

    ld hl, $d98d
    ld de, $d9e6
    ld b, $08
    call $045b
    jp Jump_015_43f5


    call Call_015_4269

jr_015_4350:
    ld a, $0a
    ld c, a
    ld [$d9e5], a
    ld de, $d9e6
    ld hl, $d98d
    ld b, $08

jr_015_435e:
    ld a, [hl+]
    ld [de], a
    inc de
    add c
    ld c, a
    dec b
    jr nz, jr_015_435e

    ld a, c
    ld [de], a
    ld a, $01
    ld [$d988], a
    jp Jump_015_4049


    call Call_015_41dc
    cp $80
    jp z, $0c5a

    jp $0c5a


    call $0c5a
    ldh [$bb], a
    ld de, $d98d
    ld hl, $c616
    ld b, $08
    call $045b
    jp $09b4


    call Call_015_439a
    call Call_015_44d7
    call Call_015_4269
    jp Jump_015_4036


Call_015_439a:
    call Call_015_40a7
    ld a, [$d988]
    or a
    ret nz

    ldh a, [$bb]
    or a
    jr z, jr_015_43ab

    pop af
    jp $0c5a


jr_015_43ab:
    ld a, [$d9e6]
    cp $b1
    jr nz, jr_015_43bd

    xor a
    ld [$d986], a
    ldh a, [$bd]
    sub $02
    ldh [$bd], a
    ret


jr_015_43bd:
    cp $b0
    ret z

    ld a, $82
    ldh [$bb], a
    ret


    call Call_015_4269
    ld hl, $d9e5
    ld a, $04
    ld [hl+], a
    ld a, $b0
    ld [hl+], a
    ld a, [$cbbc]
    ld [hl+], a
    add $b4
    ld [hl+], a
    ld a, $01
    ld [$d988], a
    jp Jump_015_4049


Jump_015_43e0:
jr_015_43e0:
    ld hl, $4500
    ld a, [$d986]
    inc a
    ld [$d986], a
    cp $05
    jr c, jr_015_43fc

    ld a, $80
    ldh [$bb], a
    jp $0c5a


Jump_015_43f5:
    xor a
    ld [$d986], a
    ld hl, $44fd

jr_015_43fc:
    call Call_015_4269
    ld a, [hl]
    ld b, a
    ld de, $d9e5

jr_015_4404:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_015_4404

    jp Jump_015_4049


    ld a, $00
    jr jr_015_4417

    ld a, $01
    jr jr_015_4417

    ld a, $02

jr_015_4417:
    ldh [$8b], a
    call Call_015_40a7
    call Call_015_44d7
    ldh a, [$8b]
    ld hl, $da05
    jr nz, jr_015_43e0

    swap a
    rrca
    ld hl, $d780
    rst $10
    ld de, $d9e6
    ld b, $08

jr_015_4432:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_015_4432

    ldh a, [$8b]
    add a
    ld e, a
    add a
    add e
    ld hl, $d7a0
    rst $10
    ld de, $d9f0
    ld b, $06
    call $045b
    ldh a, [$8b]
    inc a
    ld hl, $d98d
    ld bc, $0016

jr_015_4453:
    dec a
    jr z, jr_015_4459

    add hl, bc
    jr jr_015_4453

jr_015_4459:
    ld b, $16
    ld de, $d9ee
    call $045b
    ld a, [$cbcb]
    cp $08
    jr nz, jr_015_447c

    ld de, $d9ee
    call Call_015_44ef
    jr nz, jr_015_448c

    ld hl, $da00
    ld a, [hl+]
    or [hl]
    inc l
    or [hl]
    jr z, jr_015_448c

    jp Jump_015_43f5


jr_015_447c:
    ld a, [$da04]
    cp $a1
    jr nz, jr_015_448c

    ld a, [$da02]
    or a
    jr z, jr_015_448c

    jp Jump_015_43f5


jr_015_448c:
    ldh a, [$8b]
    ld d, $00
    swap a
    rrca
    add d
    ld hl, $d780
    rst $10
    set 7, [hl]
    ldh a, [$8b]
    add a
    ld e, a
    add a
    add e
    ld hl, $d7a0
    rst $10
    ld b, $06
    call $044b
    jp Jump_015_43f5


    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    xor a
    ld hl, $d980
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ldh [$bc], a
    ldh [$bd], a
    ldh [$bb], a
    call Call_015_4202
    ld a, $e1
    ldh [rSB], a
    ld a, $80
    ld [$d988], a
    call $0c46
    pop af
    ldh [rSVBK], a
    ret


Call_015_44d7:
    ld a, [$d988]
    or a
    jr z, jr_015_44df

    pop af
    ret


jr_015_44df:
    ldh a, [$bb]
    or a
    ret z

    cp $81
    jp z, Jump_015_43e0

    pop af
    jp $0c5a


Call_015_44ec:
    ld de, $d98d

Call_015_44ef:
    ld hl, $c600
    ld b, $07

jr_015_44f4:
    ld a, [de]
    cp [hl]
    ret nz

    inc de
    inc l
    dec b
    jr nz, jr_015_44f4

    ret


    inc bc
    or b
    or e
    inc bc
    or c
    or h
    inc bc
    ld a, [bc]
    ld de, $2e0f
    ld l, $30
    ld sp, $0f32
    dec e
    dec sp
    inc d
    inc h
    inc h
    ld a, [hl-]
    dec sp
    ld [de], a
    inc a
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, $1f
    jr nz, jr_015_4527

    add hl, sp
    ld a, [$cca2]
    inc a
    jr nz, jr_015_4529

    xor a

jr_015_4525:
    ld e, $7f

jr_015_4527:
    ld [de], a
    ret


jr_015_4529:
    ld a, [$cca3]
    swap a
    and $03
    rst $00
    add hl, sp
    ld b, l
    ld b, c
    ld b, l
    dec a
    ld b, l
    add hl, sp
    ld b, l
    ld a, $04
    jr jr_015_4525

    ld a, $03
    jr jr_015_4525

    ld a, [$cca3]
    and $0f
    add $6e
    ld b, a
    call $30c7
    ld a, $02
    jr nz, jr_015_4525

    ld a, b
    sub $0a
    call $30c7
    ld a, $01
    jr nz, jr_015_4525

    ld a, $05
    jr jr_015_4525

    ld a, [$cca3]
    and $0f
    add $0f
    ld c, a
    ld b, $55
    jp $184b


    call $3ac6
    ret nz

    ld [hl], $d9
    inc l
    ld a, [$cca3]
    and $0f
    ld [hl], a
    ld l, $4b
    ld c, $75
    jp $2077


    ld hl, $481b
    ld e, $03
    jp $008a


    call $2054
    ld c, a
    ld a, [$cc3d]
    and $f0
    ld b, a
    ld a, [$cc3e]
    and $f0
    swap a
    or b
    cp c
    ret nz

    ld e, $49
    ld a, [de]
    rrca
    and $03
    ld hl, $45ba
    rst $10
    ld a, [hl]
    add c
    ld c, a
    and $f0
    or $08
    ld [$cc3d], a
    ld a, c
    swap a
    and $f0
    or $08
    ld [$cc3e], a
    ret


    db $10
    rst $38
    ldh a, [rSB]
    ld e, $7d
    ld a, [de]
    ld b, a
    ld a, [$ccba]
    and b
    jr z, jr_015_45d2

    call Call_015_45de
    ld a, $01
    jr z, jr_015_45da

    xor a
    jr jr_015_45da

jr_015_45d2:
    call Call_015_45f6
    ld a, $02
    jr z, jr_015_45da

    xor a

jr_015_45da:
    ld [$cfc1], a
    ret


Call_015_45de:
    ld e, $49
    ld a, [de]
    sub $10
    srl a
    ld hl, $45f2
    rst $10
    ld e, $7e
    ld a, [de]
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp [hl]
    ret


    ld a, b
    ld a, c
    ld a, d
    ld a, e

Call_015_45f6:
    ld e, $7e
    ld a, [de]
    ld c, a
    ld b, $ce
    ld a, [bc]
    or a
    ret


    xor a
    ld [$cfc1], a
    ld a, [$cc48]
    rrca
    ret nc

    call $1c35
    ret nc

    ld a, $01
    ld [$cfc1], a
    ret


    ld e, $7e
    ld a, [de]
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp $5d
    ld b, $01
    jr z, jr_015_4624

    cp $5e
    jr z, jr_015_4624

    dec b

jr_015_4624:
    ld a, b
    ld [$cfc1], a
    ret


    ld a, [$cca9]
    ld b, a
    ld e, $50
    ld a, [de]
    cp b
    ld a, $01
    jr z, jr_015_4636

    dec a

jr_015_4636:
    ld [$cec0], a
    ret


    ld a, $04
    jp $1751


    ld e, $42
    ld a, [de]
    ld e, $70
    ld [de], a
    ld hl, $5129

jr_015_4648:
    call $01c3
    add hl, bc
    bit 7, [hl]
    jr z, jr_015_4659

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $43
    ld a, [de]
    jr jr_015_4648

jr_015_4659:
    ld a, [hl+]
    ld b, a
    swap a
    and $07
    ld e, $71
    ld [de], a
    ld a, b
    and $07
    inc e
    ld [de], a
    ld a, b
    and $08
    inc e
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    ld a, [hl+]
    inc e
    ld [de], a
    ld a, [hl+]

Call_015_4673:
    ld e, $42
    ld [de], a
    ret


    call $3ea7
    ret nz

    ld [hl], $04
    jp $21fd


    ld a, [$cc55]
    ld b, a
    inc a
    jr nz, jr_015_468c

    ld hl, $471d
    jr jr_015_4694

jr_015_468c:
    ld a, b
    ld hl, $4723
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_015_4694:
    ld e, $72
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_015_4715

    ld e, $58
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a

jr_015_46a4:
    ld a, [hl+]
    push hl
    rst $00
    cp a
    ld b, [hl]
    jp z, $d646

    ld b, [hl]
    db $dd
    ld b, [hl]
    db $e4
    ld b, [hl]
    db $ec
    ld b, [hl]
    cp a
    ld b, [hl]
    cp a
    ld b, [hl]
    ld [bc], a
    ld b, a
    ld b, $47
    ld a, [bc]
    ld b, a
    ld c, $47
    pop hl
    ld a, [hl+]
    ld e, $46
    ld [de], a
    ld e, $45
    xor a
    ld [de], a
    jr jr_015_4715

jr_015_46ca:
    pop hl
    ld a, [hl+]
    ld e, $46
    ld [de], a
    ld e, $45
    ld a, $01
    ld [de], a
    jr jr_015_4715

    pop hl
    ld a, [hl+]
    ld e, $49
    ld [de], a
    jr jr_015_46a4

    pop hl
    ld a, [hl+]
    ld e, $50
    ld [de], a
    jr jr_015_46a4

    pop hl
    ld a, [hl]
    call $01cd
    add hl, bc
    jr jr_015_46a4

    pop hl
    ld a, [$ccb0]
    cp d
    jr nz, jr_015_46f6

    inc hl
    jr jr_015_46a4

jr_015_46f6:
    dec hl
    ld a, $01
    ld e, $46
    ld [de], a
    xor a
    ld e, $45
    ld [de], a
    jr jr_015_4715

    ld a, $00
    jr jr_015_4710

    ld a, $08
    jr jr_015_4710

    ld a, $10
    jr jr_015_4710

    ld a, $18

jr_015_4710:
    ld e, $49
    ld [de], a
    jr jr_015_46ca

jr_015_4715:
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    db $d3
    ld c, b
    db $ed
    ld c, b
    rst $30
    ld c, b
    dec [hl]
    ld b, a
    dec [hl]
    ld b, a
    dec [hl]
    ld b, a
    and c
    ld b, a
    ret


    ld b, a
    dec [hl]
    ld b, a
    rst $20
    ld b, a
    ld b, c
    ld c, b
    or a
    ld c, b
    ld b, e
    ld b, a
    ld d, c
    ld b, a
    ld e, a
    ld b, a
    ld l, l
    ld b, a
    ld a, l
    ld b, a
    adc c
    ld b, a
    sub l
    ld b, a
    nop
    db $10
    dec bc
    ld b, b
    nop
    db $10
    add hl, bc
    and b
    nop
    db $10
    dec bc
    and b
    inc b
    rst $30
    nop
    db $10
    ld [$0040], sp
    db $10
    ld a, [bc]
    and b
    nop
    db $10
    ld [$04a0], sp
    rst $30
    nop
    db $10
    add hl, bc
    ld b, b
    nop
    db $10
    dec bc
    and b
    nop
    db $10
    add hl, bc
    and b
    inc b
    rst $30
    inc bc
    jr z, jr_015_4770

jr_015_4770:
    jr nz, jr_015_477d

    ld b, b
    nop
    jr nz, jr_015_477f

    ld d, b
    nop
    jr nz, jr_015_4785

    ld d, b
    inc b
    rst $30

jr_015_477d:
    add hl, bc
    ret nz

jr_015_477f:
    nop
    db $10
    dec bc
    ldh [rP1], a
    db $10

jr_015_4785:
    add hl, bc
    ldh [rDIV], a
    rst $30
    dec bc
    ld d, b
    nop
    db $10
    add hl, bc
    ldh [rP1], a
    db $10
    dec bc
    ldh [rDIV], a
    rst $30
    add hl, bc
    ld d, b
    nop
    db $10
    dec bc
    ldh [rP1], a
    db $10
    add hl, bc
    ldh [rDIV], a
    rst $30
    and a
    ld b, a
    or e
    ld b, a
    cp a
    ld b, a
    add hl, bc
    ld b, b
    nop
    jr nz, @+$0d

    add b
    nop
    jr nz, jr_015_47b9

    add b
    inc b
    rst $30
    ld a, [bc]
    ld h, b
    nop
    ld [$c008], sp

jr_015_47b9:
    nop
    ld [$c00a], sp
    inc b
    rst $30
    dec bc
    ld h, b
    nop
    jr nz, jr_015_47cd

    ld h, b
    nop
    jr nz, jr_015_47cc

    rst $30
    bit 0, a
    inc bc

jr_015_47cc:
    ld d, b

jr_015_47cd:
    nop
    inc a
    dec bc
    jr nc, jr_015_47da

    jr c, jr_015_47df

    jr z, jr_015_47e0

    jr c, @+$0b

    jr z, jr_015_47e2

jr_015_47da:
    jr c, jr_015_47e5

    jr z, jr_015_47de

jr_015_47de:
    inc a

jr_015_47df:
    ld a, [bc]

jr_015_47e0:
    jr jr_015_47eb

jr_015_47e2:
    ld [$200a], sp

jr_015_47e5:
    inc b
    rst $20
    ei
    ld b, a
    dec b
    ld c, b

jr_015_47eb:
    rrca
    ld c, b
    rrca
    ld c, b
    add hl, de
    ld c, b
    inc hl
    ld c, b
    dec l
    ld c, b
    dec l
    ld c, b
    scf
    ld c, b
    dec sp
    ld c, b
    add hl, bc
    ld h, b
    nop
    db $10
    dec bc
    ld h, b
    nop
    db $10
    inc b
    rst $30
    ld a, [bc]
    add b
    nop
    db $10
    ld [$0080], sp
    db $10
    inc b
    rst $30
    ld [$0020], sp
    db $10
    ld a, [bc]
    jr nz, jr_015_4816

jr_015_4816:
    db $10
    inc b
    rst $30
    ld [$00a0], sp
    db $10
    ld a, [bc]
    and b
    nop
    db $10
    inc b
    rst $30
    ld [$00c0], sp
    db $10
    ld a, [bc]
    ret nz

    nop
    db $10
    inc b
    rst $30
    dec bc
    ld h, b
    nop
    db $10
    add hl, bc
    ld h, b
    nop
    db $10
    inc b
    rst $30
    ld a, [bc]
    ldh [rP1], a
    db $10
    ld [$00e0], sp
    db $10
    inc b
    rst $30
    ld c, l
    ld c, b
    ld [hl], c
    ld c, b
    ld a, e
    ld c, b
    adc a
    ld c, b
    sbc e
    ld c, b
    xor l
    ld c, b
    inc bc
    ld d, b
    nop
    inc a
    ld a, [bc]
    jr nz, @+$0d

    ld c, b
    ld [$0920], sp
    jr jr_015_4864

    ld [$1809], sp
    ld [$0018], sp
    jr z, jr_015_486c

    jr @+$0d

jr_015_4864:
    jr @+$0a

    ld [$180b], sp
    ld a, [bc]
    jr nz, jr_015_4875

jr_015_486c:
    ld c, b
    ld [$0420], sp
    rst JumpTable
    nop
    ld [$8009], sp

jr_015_4875:
    nop
    ld [$800b], sp
    inc b
    rst $30
    inc bc
    ld d, b
    nop
    ld [$380b], sp
    nop
    ld [$3008], sp
    nop
    ld [$3809], sp
    nop
    ld [$300a], sp
    inc b
    rst $28
    ld a, [bc]
    ld h, b
    nop
    ld [$8008], sp
    nop
    ld [$800a], sp
    inc b
    rst $30
    nop
    ld [$a00b], sp
    nop
    ld [$a008], sp
    nop
    ld [$a009], sp
    nop
    ld [$a00a], sp
    inc b
    rst $28
    nop
    ld [$8008], sp
    nop
    ld [$800a], sp
    inc b
    rst $30
    cp a
    ld c, b
    ret


    ld c, b
    cp a
    ld c, b
    ret


    ld c, b
    add hl, bc
    ldh [rP1], a
    db $10
    dec bc
    ldh [rP1], a
    db $10
    inc b
    rst $30
    dec bc
    ldh [rP1], a
    db $10
    add hl, bc
    ldh [rP1], a
    db $10
    inc b
    rst $30
    inc bc
    ld d, b
    nop
    inc a
    dec bc
    inc e
    nop
    rrca
    ld [$0030], sp
    rrca
    add hl, bc
    jr c, jr_015_48e2

jr_015_48e2:
    rrca
    ld a, [bc]
    jr nc, jr_015_48e6

jr_015_48e6:
    rrca
    dec bc
    inc e
    nop
    inc a
    inc b
    jp hl


    nop
    ld [$4009], sp
    nop
    ld [$400b], sp
    inc b
    rst $30
    nop
    ld [$400b], sp
    nop
    ld [$4009], sp
    inc b
    rst $30
    call $2048
    ld a, $ff
    jp $291f


    ld a, $01
    ld [$cd2d], a
    ret


    call $3ac6
    ld bc, $2c00
    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $4b
    ld a, [$d00b]
    ld [hl+], a
    inc l
    ld a, [$d00d]
    ld [hl], a
    ret


    ld [$cbd3], a
    ld a, $01
    ld [$cca4], a
    ld a, $04
    jp $1a76


    ld a, $02
    jp $1a0a


    ld a, $31
    call $30cd
    ld bc, $0002
    jp $19f4


    ld e, $44
    ld a, $05
    ld [de], a
    xor a
    inc e
    ld [de], a
    ld b, $03
    call $19f4
    call $0c61
    ld a, [$cba5]
    ld e, $79
    ld [de], a
    ld bc, $300e
    or a
    jr z, jr_015_4968

    ld e, $45
    ld a, $03
    ld [de], a
    ld bc, $3028

jr_015_4968:
    jp $184b


    ld a, $00
    call Call_015_498d
    jr nz, jr_015_4986

    ld a, $01
    call Call_015_498d
    jr nz, jr_015_4986

    ld a, $02
    call Call_015_498d
    jr nz, jr_015_4986

    ld a, $03

jr_015_4982:
    ld e, $7b
    ld [de], a
    ret


jr_015_4986:
    ld e, $7a
    ld [de], a
    sub $34
    jr jr_015_4982

Call_015_498d:
    ld c, a
    call $30c7
    jr z, jr_015_49a4

    ld a, c
    add $04
    ld c, a
    call $30c7
    jr nz, jr_015_49a4

    ld a, c
    call $30cd
    ld a, c
    add $30
    ret


jr_015_49a4:
    xor a
    ret


    ld a, $00
    jr jr_015_49b1

    ld a, $38
    jr jr_015_49b1

    ld e, $7a
    ld a, [de]

jr_015_49b1:
    ld b, a
    ld c, $00
    jp $26fb


    xor a
    ld [$c63e], a
    inc a
    ld [$c614], a
    ld a, $28
    jp $30cd


    ld e, $44
    ld a, [de]
    rst $00
    adc $49
    dec e
    ld c, d
    adc c
    ld c, d
    ld a, $01
    ld [$cc17], a
    ld e, $42
    ld a, [de]
    ld b, a
    add $6e
    call $30c7
    jr z, jr_015_49ec

    ld bc, $550c
    call $184b
    ld a, $02
    ld [$cfc0], a
    jp $3ad9


jr_015_49ec:
    ld a, b
    ld hl, $49fc
    call $0205
    ld a, $02
    jr nz, jr_015_49f8

    dec a

jr_015_49f8:
    ld e, $44
    ld [de], a
    ret


    or c
    ld [bc], a

Call_015_49fe:
    ld e, $42
    ld a, [de]
    ld hl, $4a09
    rst JumpTable
    ld b, [hl]
    inc l
    ld c, [hl]
    ret


    dec b
    nop
    ld a, [hl+]
    ld bc, $010d
    dec l
    inc c
    ld bc, $6101
    ld [bc], a
    dec l
    dec c
    ld h, d
    inc bc
    inc c
    ld bc, $042c
    ld e, $45
    ld a, [de]
    rst $00
    dec hl
    ld c, d
    ld b, d
    ld c, d
    ld c, a
    ld c, d
    ld h, [hl]
    ld c, d
    db $76
    ld c, d
    ld a, $01
    ld [de], a
    xor a
    ld [$ccbc], a
    call Call_015_49fe
    ld a, b
    ld [$ccbd], a
    ld a, c
    ld [$ccbe], a
    ld b, $11
    jp $24af


    ld a, [$cfc0]
    or a
    ret z

    ld e, $46
    ld a, $3c
    ld [de], a
    jp $23a0


    call $2387
    ret nz

    ld a, $2c
    call $30cd
    ld a, $02
    ld [$cfc0], a
    ld bc, $5509
    call $184b
    jp $23a0


    ld a, [$ccbc]
    or a
    ret z

    call Call_015_4b9f
    ld e, $46
    ld a, $1e
    ld [de], a
    jp $23a0


    call $2387
    ret nz

    call $24ad
    call $2054
    ld c, a
    ld a, $ac
    call $3a52
    jp $3ad9


    ld e, $45
    ld a, [de]
    rst $00
    sbc a
    ld c, d
    xor h
    ld c, d
    jp $d94a


    ld c, d
    reti


    ld c, d
    ld [$f54a], a
    ld c, d
    ld e, d
    ld c, e
    sub d
    ld c, e
    call $23a0
    ld l, $46
    ld [hl], $1e
    ld hl, $d000
    jp $222f


    call $2387
    ret nz

    ld [hl], $3c
    call $3ac6
    ret nz

    ld [hl], $84
    ld l, $4b
    ld [hl], $28
    ld l, $4d
    ld [hl], $58
    jp $23a0


    call $2387
    ret nz

    ld [hl], $14
    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a
    ld a, $78
    call $291f
    jp $23a0


    call $2387
    ret nz

    ld [hl], $14
    call $3171

jr_015_4ae2:
    ld a, $b4
    call $0c74
    jp $23a0


    call $2387
    ret nz

    ld a, $02
    call $315c
    jr jr_015_4ae2

    ld a, [$c4ab]
    or a
    ret nz

    call Call_015_49fe
    ld a, c
    rst $00
    inc hl
    ld c, e
    jr z, jr_015_4b4e

    inc sp
    ld c, e
    ld b, h
    ld c, e
    add hl, bc
    ld c, e
    ld a, [$c6c6]
    and $03
    ld hl, $4b17
    rst $10
    ld c, [hl]
    ld b, $2c
    jr jr_015_4b4f

    inc bc
    inc bc
    inc b
    inc b
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld a, [$c6ac]
    jr jr_015_4b2b

    ld a, [$c6a9]

jr_015_4b2b:
    ld hl, $4b1b
    rst JumpTable
    inc hl
    ld a, [hl]
    jr jr_015_4b4c

    ld bc, $6100
    call Call_015_4b4f
    ld hl, $c6ab
    ld a, [hl]
    add $20
    ld [hl-], a
    ld [hl], a
    jp $17b1


    ld a, [$c6ae]
    ld bc, $1901
    jr jr_015_4b4f

jr_015_4b4c:
    and $03

jr_015_4b4e:
    ld c, a

Call_015_4b4f:
jr_015_4b4f:
    call Call_015_4b98
    ld e, $46
    ld a, $1e
    ld [de], a
    jp $23a0


    call $1832
    call $2387
    ret nz

    ld e, $42
    ld a, [de]
    cp $07
    jr z, jr_015_4b7e

    or a
    jr nz, jr_015_4b81

    ld a, [$c6ac]
    add $02
    ld c, a
    ld b, $05
    call Call_015_4b98
    call $23a0
    ld l, $46
    ld [hl], $5a
    ret


jr_015_4b7e:
    call $17e5

jr_015_4b81:
    ld a, $02
    ld [$cfc0], a
    ld bc, $5509
    call $184b
    call Call_015_4b9f
    jp $3ad9


    call $2387
    ret nz

    jr jr_015_4b81

Call_015_4b98:
    call $271b
    ret nz

    jp $21fd


Call_015_4b9f:
    ld e, $42
    ld a, [de]
    add $6e
    call $30cd
    ld a, $2c
    jp $30d3


    ld e, $44
    ld a, [de]
    rst $00
    or h
    ld c, e
    call nz, $3e4b
    ld bc, $cd12
    ld d, [hl]
    add hl, de
    and $80
    jp nz, $3ad9

    ld a, $ac
    jp $04e7


    call $1ce6
    ret nc

    ld a, [$cd00]
    and $0e
    ret nz

    ld hl, $d00b
    ld e, $4b
    ld a, [de]
    cp [hl]
    ret c

    ld l, $0d
    ld e, $4d
    ld a, [de]
    sub [hl]
    jr nc, jr_015_4be0

    cpl
    inc a

jr_015_4be0:
    cp $09
    ret nc

    ld a, $17
    ld [$cc04], a
    ld [$cc02], a
    ld hl, $d240

jr_015_4bee:
    ld l, $40
    ld a, [hl+]
    or a
    jr z, jr_015_4bfd

    ld a, [hl+]
    cp $b0
    jr nz, jr_015_4bfd

    ld l, $5a
    res 7, [hl]

jr_015_4bfd:
    inc h
    ld a, h
    cp $e0
    jr c, jr_015_4bee

    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld [de], a
    ld c, h
    ld [hl-], a
    ld c, h
    ld b, e
    ld c, h
    ld c, [hl]
    ld c, h
    ld a, $01
    ld [de], a
    ld a, [$cc61]
    inc a
    jr z, jr_015_4c1e

    ld a, [$cc4e]

jr_015_4c1e:
    ld e, $42
    ld [de], a
    call $15e9
    call $26ac
    ld l, $4b
    ld [hl], $0a
    ld l, $4d
    ld [hl], $b0
    jp $1e15


    ld h, d
    ld l, $4d
    ld a, [hl]
    sub $04
    ld [hl], a
    cp $10
    ret nz

    ld l, e
    inc [hl]
    ld l, $46
    ld [hl], $28
    ret


    call $2387
    ret nz

    ld l, e
    inc [hl]
    ld l, $46
    ld [hl], $06
    ret


    ld h, d
    ld l, $4d
    ld a, [hl]
    sub $06
    ld [hl], a
    ld l, $46
    dec [hl]
    ret nz

    jp $3ad9


    ld e, $42
    ld a, [de]
    rst $00
    ld l, d
    ld c, h
    push de
    ld c, h
    add h
    ld c, h
    db $fc
    ld c, h
    jr @+$4f

    call $23b9
    jr z, jr_015_4c7b

    ld a, [$cd00]
    and $01
    ret z

    call Call_015_4cb9
    jp $25cb


jr_015_4c7b:
    ld a, $01
    ld [de], a
    call $15e9
    jp $1e30


    call $23b9
    jr z, jr_015_4c7b

    ld a, [$cd00]
    and $01
    ret z

    call Call_015_4cb6

Jump_015_4c92:
    ld hl, $4ca6
    rst JumpTable
    ld e, $4b
    ld a, [de]
    and $f0
    or [hl]
    ld [de], a
    inc hl
    ld e, $4d
    ld a, [de]
    and $f0
    or [hl]
    ld [de], a
    ret


    dec b
    ld [$0905], sp
    ld b, $09
    rlca
    add hl, bc
    rlca
    ld [$0707], sp
    ld b, $07
    dec b
    rlca

Call_015_4cb6:
    call $2099

Call_015_4cb9:
    call $1e5a
    ld b, a
    and $07
    jr z, jr_015_4ccf

    cp $01
    jr z, jr_015_4ccf

    cp $07
    jr z, jr_015_4ccf

    ld a, b
    and $fc
    or $04
    ld b, a

jr_015_4ccf:
    ld a, b
    rrca
    rrca
    and $07
    ret


    ld e, $02

jr_015_4cd7:
    ld bc, $cfae

jr_015_4cda:
    ld a, [bc]
    cp $ee
    call z, Call_015_4ce6
    dec c
    jr nz, jr_015_4cda

    jp $3ad9


Call_015_4ce6:
    call $3ac6
    ret nz

    ld [hl], $e2
    inc l
    ld [hl], e
    push bc
    call $208a
    ld l, $4b
    dec b
    dec b
    ld [hl], b
    inc l
    inc l
    ld [hl], c
    pop bc
    ret


    call $268f
    ld a, [$cc53]
    cp $06
    ld a, $00
    jr nc, jr_015_4d11

jr_015_4d08:
    call $041a
    and $03
    cp $02
    jr z, jr_015_4d08

jr_015_4d11:
    ld [$ccbf], a
    ld e, $04
    jr jr_015_4cd7

    ld e, $44
    ld a, [de]
    rst $00
    ld a, e
    ld c, h
    ld [hl+], a
    ld c, l
    jr nc, @+$20

    call $23be
    jr z, jr_015_4d4f

    call $2387
    jr nz, jr_015_4d41

    call $239b
    ld a, [$ccbf]
    ld b, a

jr_015_4d33:
    ld hl, $cc00
    inc [hl]
    ld a, [hl]
    and $03
    cp b
    jr z, jr_015_4d33

    add a
    jp Jump_015_4c92


jr_015_4d41:
    ld a, [$cc00]
    and $03
    ret nz

    call $041a
    and $07
    jp Jump_015_4c92


jr_015_4d4f:
    ld a, $3c
    ld [de], a
    ld e, $46
    ld [de], a
    ret


    ld a, [$cba0]
    or a
    jr nz, jr_015_4d66

    ld a, $02
    ld [$cbac], a
    ld a, $08
    ld [$cbae], a

jr_015_4d66:
    call Call_015_4d6c
    jp $229b


Call_015_4d6c:
    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], h
    ld c, l
    and b
    ld c, l
    call $15e9
    ld a, $30
    call $24f5
    call $26ac
    call $239b
    ld a, $06
    call $248d
    ld e, $42
    ld a, [de]
    ld hl, $4b48
    or a
    jr z, jr_015_4d98

    ld e, $5c
    ld a, [de]
    inc a
    ld [de], a
    ld hl, $4b39

jr_015_4d98:
    call $24fe
    ld e, $71
    jp $1af2


    jp $250c


    ld a, [de]
    ld b, b
    ret nc

    nop
    ld [bc], a
    ld d, b
    add sp, $02
    ld [bc], a
    ld hl, sp+$50
    ld [$f806], sp
    ld e, b
    ld a, [bc]
    ld b, $f8
    ld h, b
    inc c
    ld b, $f8
    ld l, b
    ld c, $06
    ld b, b
    db $10
    db $10
    rlca
    ld d, b
    jr @+$14

    rlca
    ld d, b
    jr z, jr_015_4ddb

    rlca
    ld d, b
    jr nc, @+$18

    rlca
    ld d, b
    jr c, @+$20

    nop
    ld b, b
    jr nz, jr_015_4deb

    rlca
    jr c, jr_015_4dfe

    ld a, [de]
    rlca
    jr z, @+$2d

    inc e

jr_015_4ddb:
    rlca
    ld b, b
    jr c, @+$22

    rlca
    jr nc, jr_015_4e1a

    ld [hl+], a
    nop
    jr nc, jr_015_4e16

    inc h
    rlca
    db $10
    jr z, jr_015_4e11

jr_015_4deb:
    ld bc, $3010
    jr z, jr_015_4df1

    db $10

jr_015_4df1:
    jr c, jr_015_4e1d

    ld bc, $4010
    inc l
    ld bc, $4000
    ld l, $01
    dec hl
    ld [bc], a

jr_015_4dfe:
    jr nc, jr_015_4e02

    jr nc, jr_015_4e52

jr_015_4e02:
    ld [hl-], a
    nop
    jr nc, jr_015_4e5e

    inc [hl]
    nop
    dec e
    ld d, l
    ld [hl], $00
    ld a, [bc]
    ld b, [hl]
    ld c, d
    adc b
    inc bc

jr_015_4e11:
    ld b, [hl]
    ld d, d
    adc d
    inc bc
    ld c, c

jr_015_4e16:
    ld c, h
    add b
    ld [bc], a
    ld c, c

jr_015_4e1a:
    ld d, h
    add d
    ld [bc], a

jr_015_4e1d:
    ld b, a
    ld b, d
    add h
    inc bc
    ld b, a
    ld c, d
    add [hl]
    inc bc
    add hl, sp
    ld c, [hl]
    sub b
    inc bc
    ld b, e
    ld e, c
    adc h
    inc bc
    add hl, sp
    ld b, [hl]
    adc [hl]
    inc bc
    dec sp
    inc a
    sub d
    inc bc
    ld de, $cd80

jr_015_4e38:
    ld c, e
    ld a, [de]
    or a
    jr z, jr_015_4e46

    inc e
    ld a, [de]
    ld b, a
    ld a, [$cc4c]
    cp b
    jr z, jr_015_4e4e

jr_015_4e46:
    ld a, c
    add $08
    ld e, a
    or a
    jr nz, jr_015_4e38

    ret


jr_015_4e4e:
    dec e
    ld a, [de]
    bit 7, a

jr_015_4e52:
    jr nz, jr_015_4e46

    and $7f
    rst $00
    ld h, e
    ld c, [hl]
    ld h, e
    ld c, [hl]
    ld h, e
    ld c, [hl]
    ld l, c

jr_015_4e5e:
    ld c, [hl]
    ld [hl], b
    ld c, [hl]
    ld [hl], a
    ld c, [hl]

jr_015_4e63:
    ld a, e
    add $08
    ld e, a
    jr jr_015_4e38

    call $3ac6
    jr nz, jr_015_4e63

    jr jr_015_4e7c

    call $2e08
    jr nz, jr_015_4e63

    jr jr_015_4e7c

    call $3ea7
    jr nz, jr_015_4e63

jr_015_4e7c:
    inc e
    inc e
    ld a, [de]
    bit 7, a
    jr z, jr_015_4e87

    dec l
    set 1, [hl]
    inc l

jr_015_4e87:
    and $7f
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    inc e
    ld a, [de]
    ld [hl+], a
    inc l
    inc e
    ld a, [de]
    ld [hl], a
    ld a, l
    add $09
    ld l, a
    ld a, e
    and $f8
    ld e, a

jr_015_4ea0:
    ld [hl+], a
    ld [hl], d
    jr jr_015_4e63

    call $3076
    ld a, [$cc55]
    ld hl, $4ec6
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd80

jr_015_4eb4:
    ld a, [hl+]
    cp $ff
    ret z

    ld [de], a
    ld b, $05

jr_015_4ebb:
    ld a, [hl+]
    inc e
    ld [de], a
    dec b
    jr nz, jr_015_4ebb

    inc e
    inc e
    inc e
    jr jr_015_4eb4

    sbc $4e
    rst JumpTable
    ld c, [hl]
    and $4e
    and $4e
    rst $20
    ld c, [hl]
    nop
    ld c, a
    dec hl
    ld c, a
    ld b, h
    ld c, a
    ld c, e
    ld c, a
    ld h, h
    ld c, a
    ld h, h
    ld c, a
    ld h, l
    ld c, a
    rst $38
    inc bc
    dec d
    ld d, $00
    jr z, jr_015_4f5d

    rst $38

jr_015_4ee6:
    rst $38
    inc bc
    ld h, l
    ld d, $00
    adc b
    jr c, jr_015_4ef1

    ld l, a
    ld d, $01

jr_015_4ef1:
    jr z, jr_015_4f4b

    inc bc
    ld a, h
    ld d, $02
    jr c, @+$3a

    inc bc
    ld a, a
    ld d, $00
    ld l, b
    jr z, @+$01

    inc bc
    and l
    ld d, $00
    jr c, @+$4a

    inc bc
    and l
    ld d, $00
    ld c, b

jr_015_4f0b:
    ld a, b
    inc bc
    and c
    ld d, $00
    ld a, b
    jr c, jr_015_4f16

    adc c
    ld [de], a
    dec b

jr_015_4f16:
    jr z, jr_015_4ea0

    inc bc
    sub h
    ld [de], a
    dec b
    jr jr_015_4ee6

    inc bc
    sub a
    ld [de], a
    dec b
    ld a, b
    ld a, b
    inc bc
    sbc d
    ld h, h
    nop
    jr c, jr_015_4f72

    rst $38
    inc bc
    xor e
    ld [de], a
    dec b
    sbc b
    jr z, jr_015_4f35

    xor h
    ld [de], a
    dec b

jr_015_4f35:
    ld c, b
    sbc b
    inc bc
    or [hl]
    ld [de], a
    dec b
    jr jr_015_4f55

    inc bc
    jp nc, $0512

    jr z, jr_015_4f0b

    rst $38
    inc bc
    ld b, a
    ld [de], a
    dec b
    ld c, b
    ld a, b
    rst $38

jr_015_4f4b:
    inc bc
    add h
    ld d, $00
    ld e, b
    jr z, jr_015_4f55

    adc b
    ld d, $00

jr_015_4f55:
    jr c, jr_015_4f8f

    inc bc
    ld [hl], l
    ld [de], a
    dec b
    jr @+$3a

jr_015_4f5d:
    inc bc
    adc [hl]
    ld [de], a
    dec b
    jr c, @+$4a

    rst $38
    rst $38
    inc bc
    inc h
    ld [de], a
    dec b
    jr @+$1a

    rst $38
    ld a, h
    ld c, a
    sbc l
    ld c, a
    and [hl]
    ld c, a

jr_015_4f72:
    and [hl]
    ld c, a
    xor a
    ld c, a
    sbc b
    ld d, b
    jr z, jr_015_4fcb

    jr z, jr_015_4fcd

    ld de, $28f5
    inc bc
    ld e, b
    ld sp, hl
    jr z, jr_015_4f87

    ld de, $348e

jr_015_4f87:
    ld bc, $f445
    ld c, a
    nop
    dec d
    ld e, e
    dec hl

jr_015_4f8f:
    ld bc, $b833
    inc [hl]
    ld bc, $e311
    dec l
    rlca
    jr @+$01

    dec l
    ld [$11ff], sp
    ld b, c
    ld d, c
    nop
    ld [hl+], a
    ld e, b
    ld d, b
    nop
    rst $38
    inc [hl]
    sbc e
    inc [hl]
    ld bc, $8813
    inc bc
    nop
    rst $38
    ld e, e
    inc bc
    jr nc, @+$05

    ld e, l
    dec b
    jr z, jr_015_4fbb

    daa
    ld b, $05
    nop

jr_015_4fbb:
    ld de, $340d
    ld bc, $0f3b
    ld [hl-], a
    ld [bc], a
    ld h, a
    db $10
    inc bc
    nop
    inc l
    ld de, $0330

jr_015_4fcb:
    ld d, a
    inc d

jr_015_4fcd:
    ld sp, $2303
    rla
    dec l
    inc b
    ld d, a
    add hl, de
    inc sp
    ld [bc], a
    ld a, e
    rra
    jr z, jr_015_4fdd

    ld l, l
    inc h

jr_015_4fdd:
    ld sp, $5b03
    ld a, [hl+]
    ld d, $00
    daa
    dec hl
    inc sp
    ld [bc], a
    ld d, a
    dec l
    jr nc, @+$05

    ld b, h
    ld sp, $0330
    ld d, a
    ld [hl], $32
    ld [bc], a
    ld b, d
    jr c, @+$2a

    ld bc, $4118
    jr z, @+$06

    jr z, jr_015_5043

    ld sp, $8603
    ld b, h
    inc [hl]
    ld bc, $4c68
    jr nc, jr_015_500a

    ld d, a
    ld c, l
    ld [hl-], a

jr_015_500a:
    ld [bc], a
    add hl, hl
    ld c, a
    jr nc, jr_015_5012

    ld d, h
    ld d, c
    inc sp

jr_015_5012:
    ld [bc], a
    ld d, a
    ld d, b
    rla
    nop
    ld d, l
    ld d, h
    inc bc
    nop
    ld [hl+], a
    ld h, e
    jr nc, @+$05

    sub l
    ld h, h
    jr nc, jr_015_5026

    ld d, h
    ld l, c
    inc sp

jr_015_5026:
    ld [bc], a
    ld e, c
    ld l, l
    jr nc, jr_015_502e

    inc l
    ld [hl], e
    inc de

jr_015_502e:
    nop
    adc b
    ld a, a
    inc bc
    nop
    ld d, a
    add e
    ld [hl-], a
    ld [bc], a
    ld d, a
    adc a
    inc sp
    ld [bc], a
    dec h
    adc c
    ld [$1100], sp
    sub a
    jr z, jr_015_5049

jr_015_5043:
    ld b, [hl]
    sbc c
    jr nc, jr_015_504a

    ld d, a
    sbc l

jr_015_5049:
    ld [hl-], a

jr_015_504a:
    ld [bc], a
    ld b, d
    sbc a
    jr nc, @+$05

    inc [hl]
    and e
    jr nc, @+$05

    ld a, e
    and l
    jr nc, jr_015_505a

    ld de, $32ad

jr_015_505a:
    ld [bc], a
    dec e
    xor a
    jr z, jr_015_5061

    ld [hl], c
    or b

jr_015_5061:
    inc sp
    ld [bc], a
    ld e, h
    or e
    jr z, jr_015_5068

    ld d, e

jr_015_5068:
    cp a
    inc bc
    nop
    ld [hl], l
    pop bc
    jr nc, jr_015_5072

    ld hl, $30c2

jr_015_5072:
    inc bc
    ld d, a
    jp $0128


    ld h, [hl]
    call nz, $0331
    ld e, l
    ret nc

    ld b, $01
    ld d, a
    ldh [$2d], a
    add hl, bc
    dec h
    pop hl
    dec l
    ld a, [bc]
    ld a, l
    rst $30
    inc [hl]
    ld bc, $fa57
    nop
    nop
    ld d, a
    ei
    nop
    nop
    ld d, a
    pop af
    inc [hl]
    ld bc, $87ff
    ld b, e
    jr z, jr_015_509c

jr_015_509c:
    ld b, a
    ld b, h
    rla
    ld bc, $4761
    jr nc, @+$05

    ld d, a
    ld c, b
    ld sp, $3b03
    ld d, d
    ld [hl-], a
    ld [bc], a
    ld b, [hl]
    ld d, h
    jr nc, jr_015_50b3

    ld d, a
    ld e, b
    inc sp

jr_015_50b3:
    ld [bc], a
    dec hl
    ld e, d
    dec l
    ld c, $75
    ld l, d
    inc bc
    nop
    ld e, h
    ld l, e
    jr nc, @+$05

    ld [hl], h
    ld [hl], b
    jr nc, jr_015_50c7

    ld b, a
    ld a, l
    dec l

jr_015_50c7:
    ld b, $43
    add b
    ld sp, $7303
    adc d
    jr nc, jr_015_50d3

    dec sp
    adc e
    ld [hl-], a

jr_015_50d3:
    ld [bc], a
    inc sp
    adc h
    jr nc, jr_015_50db

    inc [hl]
    adc l
    inc de

jr_015_50db:
    ld bc, $8e87
    inc sp
    ld [bc], a
    ld de, $282c
    inc bc
    ld l, h
    ld sp, HeaderTitle
    ld [hl], a
    cpl
    inc [hl]
    ld bc, $2962
    jr nc, jr_015_50f3

    dec e
    jr z, jr_015_5127

jr_015_50f3:
    ld bc, $2438
    inc [hl]
    ld bc, $3427
    dec l
    rrca
    add hl, de
    or e
    dec l
    dec b
    dec hl
    or h
    jr z, @+$06

    ld d, $b5
    inc [hl]
    ld bc, $bc1c
    ld d, h
    nop
    ld [hl+], a
    cp l
    jr z, @+$07

    ld b, l
    ret nz

    dec hl
    ld bc, $c647
    inc [hl]
    ld bc, $c81d
    dec l
    dec bc
    ld c, d
    or [hl]
    dec l
    db $10
    ld e, h
    ld c, $28
    dec b
    ld [hl-], a
    ld [de], a
    nop

jr_015_5127:
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    add b
    cp l
    ld d, d
    nop
    nop
    nop
    rst $38
    nop
    add b
    ret


    ld d, d
    nop
    nop
    nop
    rst $38
    nop
    add b
    reti


    ld d, d
    nop
    add b
    pop af
    ld d, d
    nop
    add b
    ld sp, hl
    ld d, d
    nop
    jr c, jr_015_514b

jr_015_514b:
    jr nc, jr_015_5165

    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add b
    dec d
    ld d, e
    nop
    add b
    dec e
    ld d, e
    nop
    ld a, [bc]
    inc c
    dec sp
    inc hl

jr_015_5165:
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add b
    dec h
    ld d, e
    nop
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    dec h
    dec de
    jr c, jr_015_5183

jr_015_5183:
    ld h, $19
    add b
    dec l
    ld d, e
    nop
    nop
    nop
    rst $38
    nop
    add b
    or l
    ld d, d
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add b
    add hl, sp
    ld d, e
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld d, l
    ld d, e
    nop
    nop
    nop
    rst $38
    nop
    add b
    sbc c
    ld d, e
    nop
    add b
    adc l
    ld d, e
    nop
    add b
    and l
    ld d, e
    nop
    add b
    cp c
    ld d, e
    nop
    ld [bc], a
    nop
    ld sp, $0031
    nop
    rst $38
    nop
    add b
    db $fd
    ld d, e
    nop
    add b
    dec c
    ld d, h
    nop
    add b
    dec e
    ld d, h
    nop
    add b
    add hl, hl
    ld d, h
    nop
    add b
    dec a
    ld d, e
    nop
    nop
    nop
    rst $38
    nop
    ld [bc], a
    nop
    inc sp
    ld b, a
    ld [bc], a
    dec bc
    ld l, e
    cpl
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    add b
    dec [hl]
    ld d, h
    nop
    add b
    ld h, l
    ld d, h
    nop
    add hl, bc
    nop
    ld b, e
    ld b, l
    add hl, bc
    nop
    ld b, h
    ld b, [hl]
    ld e, d
    nop
    ld b, b
    ld d, a
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    ld h, [hl]
    ld d, h
    add hl, bc
    ld bc, $5567
    ld a, [bc]
    nop
    inc a
    ld d, [hl]
    add b
    ld l, l
    ld d, h
    nop
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    ld b, a
    ld [hl], $80
    ld a, c
    ld d, h
    nop
    jr c, jr_015_5263

jr_015_5263:
    ld c, b
    jr c, jr_015_529e

    nop
    ld c, c
    add hl, sp
    jr c, jr_015_526b

jr_015_526b:
    ccf
    ld e, c
    jr c, jr_015_526f

jr_015_526f:
    ld a, $58
    ld a, [bc]
    nop
    dec a
    ld e, d
    nop
    nop
    rst $38
    nop
    jr c, jr_015_527b

jr_015_527b:
    ld [hl], b
    ld h, $00
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop

jr_015_529e:
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc c
    nop
    ld [hl], d
    ld d, a
    ld [bc], a
    nop
    ld l, [hl]
    dec b
    ld [bc], a
    nop
    ld b, [hl]
    jr nz, @+$0c

    ld bc, $202d
    ld bc, $4600
    jr nz, @+$0c

    ld bc, $131f
    ld a, [bc]
    ld [bc], a
    jr nz, jr_015_52d9

    ld a, [bc]
    inc bc
    ld hl, $3815
    db $10
    ld c, l
    dec b
    jr nc, jr_015_52df

    ld c, l
    dec b
    ld [bc], a
    db $10
    ld c, l
    dec b
    jr c, @+$32

    ld c, l
    dec b

jr_015_52d9:
    jr c, jr_015_52dc

    inc e

jr_015_52dc:
    db $10
    add hl, bc
    ld [bc], a

jr_015_52df:
    dec e
    ld de, $0309
    ld e, $12
    inc bc
    ld bc, $10ff
    inc bc
    ld [bc], a
    rst $38
    ld de, $0303
    rst $38
    ld [de], a
    ld a, [bc]
    ld bc, $1c22
    jr c, jr_015_52f9

    inc hl
    dec e

jr_015_52f9:
    jr c, jr_015_5302

    ld a, [bc]
    ld e, $01
    rlca
    rst $38
    ld e, $09

jr_015_5302:
    nop
    dec c
    ld e, $09
    ld bc, $1e0b
    add hl, bc
    ld [bc], a
    inc c
    ld e, $09
    inc bc
    ld a, [bc]
    ld e, $09
    rlca
    ld [hl], c
    ld e, $02
    nop
    ld l, a
    dec h
    jr nc, jr_015_531b

jr_015_531b:
    ld l, a
    dec h
    ld a, [bc]
    db $10
    ld [hl-], a
    inc h
    jr nc, jr_015_5333

    ld [hl-], a
    inc h
    jr c, @+$03

    ld l, $21
    jr c, jr_015_532d

    cpl
    ld [hl+], a

jr_015_532d:
    jr c, jr_015_5330

    daa

jr_015_5330:
    ld d, $38
    ld [bc], a

jr_015_5333:
    jr z, @+$19

    ld e, d
    ld bc, $1637
    jr nc, @+$06

    ld c, a
    ld b, $02
    ld bc, $0d4b
    jr c, jr_015_5344

    ld c, e

jr_015_5344:
    dec c
    ld d, d
    ld bc, $0d4b
    ld [bc], a
    ld bc, $0d4b
    ld a, [bc]
    ld bc, $0d4b
    ld c, d
    ld bc, $0d4b
    jr c, @+$03

    ld bc, $3828
    inc bc
    ld [bc], a
    add hl, hl
    jr c, jr_015_5363

    inc bc
    ld a, [hl+]
    jr c, jr_015_5368

jr_015_5363:
    inc b
    dec hl
    jr c, @+$09

    dec b

jr_015_5368:
    dec hl
    jr c, jr_015_5376

    ld b, $2c
    jr c, @+$0e

    rlca
    dec l
    jr c, jr_015_5382

    ld [$382d], sp

jr_015_5376:
    dec c
    add hl, bc
    ld l, $30
    ld bc, $2801
    jr jr_015_5380

    rst $38

jr_015_5380:
    ld l, $08

jr_015_5382:
    dec b
    rst $38
    dec hl
    ld [$0507], sp
    dec hl
    jr nc, @+$06

    inc bc
    ld a, [hl+]
    ld a, [bc]
    ld bc, $3a17
    jr c, jr_015_5394

    rla

jr_015_5394:
    ld a, [hl-]
    ld [bc], a
    ld bc, $3a17
    ld a, [de]
    inc b
    ld d, $3b
    jr nc, jr_015_53a3

    ld d, $3b
    ld [bc], a
    inc b

jr_015_53a3:
    ld d, $3b
    ld [bc], a
    ld bc, $3357
    ld [bc], a
    ld [bc], a
    inc [hl]
    inc [hl]
    ld [bc], a
    inc bc
    inc [hl]
    dec [hl]
    ld [bc], a
    ld [bc], a
    ld e, b
    inc [hl]
    ld [bc], a
    inc bc
    ld e, c
    dec [hl]
    add hl, bc
    rst $38
    ld d, h
    ld c, $29
    rst $38
    ld d, h
    ld c, $49
    rst $38
    ld d, h
    ld c, $59
    rst $38
    ld d, h
    ld c, $38
    jr z, jr_015_5420

    ld c, $38
    dec hl
    ld d, h
    ld c, $38
    db $10
    ld d, h
    ld c, $38
    inc c
    ld d, h
    ld c, $38
    dec c
    ld d, h
    ld c, $38
    ld a, [hl+]
    ld d, h
    ld c, $38
    inc hl
    ld d, h
    ld c, $38
    dec b
    ld d, h
    ld c, $30
    cpl
    ld d, h
    ld c, $30
    ld hl, $0e54
    jr c, jr_015_53f4

    ld d, h

jr_015_53f4:
    ld c, $38
    inc bc
    ld d, h
    ld c, $38
    dec l
    ld d, h
    ld c, $18
    ld bc, $42ff
    jr z, jr_015_5404

    rst $38

jr_015_5404:
    ld b, d
    ld c, c
    ld bc, $421a
    jr c, jr_015_540c

    ld a, [de]

jr_015_540c:
    ld b, d
    add hl, de
    nop
    dec de
    ld b, e
    add hl, hl
    nop
    dec de
    ld b, e
    ld c, c
    nop
    dec de
    ld b, e
    jr c, jr_015_541b

jr_015_541b:
    dec de
    ld b, e
    ld a, [de]
    nop
    add hl, de

jr_015_5420:
    ld b, c
    ld a, [hl+]
    nop
    add hl, de
    ld b, c
    ld l, b
    nop
    add hl, de
    ld b, c
    ld a, [de]
    nop
    jr jr_015_546d

    ld a, [hl+]
    nop
    jr jr_015_5471

    ld l, b
    nop
    jr jr_015_5475

    ld a, [bc]
    nop
    ld e, d
    ld [hl], b
    ld a, [bc]
    ld bc, $715b
    ld a, [bc]
    ld [bc], a
    ld e, h
    ld [hl], d
    ld a, [bc]
    inc bc
    ld e, l
    ld [hl], e
    ld a, [bc]
    inc b
    ld e, [hl]
    ld [hl], h
    ld a, [bc]
    dec b
    ld e, a
    ld [hl], l
    ld a, [bc]
    ld b, $60
    db $76
    ld a, [bc]
    rlca
    ld h, c
    ld [hl], a
    ld a, [bc]
    ld [$7862], sp
    ld a, [bc]
    add hl, bc
    ld h, e
    ld a, c
    ld a, [bc]
    ld a, [bc]
    ld h, h
    ld a, d
    ld a, [bc]
    dec bc
    ld h, l
    ld a, e
    add hl, hl
    nop
    ld b, d
    ld b, h
    add hl, bc
    nop
    ld b, d
    ld b, h

jr_015_546d:
    ld a, [bc]
    nop
    ld d, l
    ld e, e

jr_015_5471:
    ld c, d
    nop
    ld d, l
    ld e, e

jr_015_5475:
    ld a, [bc]
    ld bc, $5c56
    ld [$4a00], sp
    scf
    ld [bc], a
    nop
    ld c, d
    scf
    ld bc, $0072
    jp Jump_015_5500


    xor a
    ld [$ccba], a
    ld l, $84
    ld h, $cf
    ld a, [hl+]
    cp $2c
    ret nz

    ld a, [hl+]
    cp $2c
    ret nz

    ld a, [hl+]
    cp $2c
    ret nz

    ld a, [hl+]
    cp $2d
    ret nz

    ld a, [hl+]
    cp $2d
    ret nz

    ld a, [hl+]
    cp $2d
    ret nz

    ld a, $01
    ld [$ccba], a
    ret


Call_015_54ad:
    call $1956
    set 7, [hl]
    ld a, $4d
    jp $0c74


Jump_015_54b7:
    call $3ea7
    ret nz

    ld [hl], $0c
    ld l, $c7
    ld [hl], b
    ld l, $c9
    ld [hl], c
    ld l, $cb
    ld [hl], e
    ret


    call Call_015_54ad
    ld bc, $0601
    ld e, $59
    jp Jump_015_54b7


    ld a, $4d
    call $0c74
    ld bc, $0801
    ld e, $77
    jp Jump_015_54b7


    call Call_015_54ad
    ld bc, $0c02
    ld e, $3c
    jp Jump_015_54b7


    call Call_015_54ad
    ld bc, $0e00
    ld e, $7b
    jp Jump_015_54b7


    call Call_015_54ad
    ld bc, $0e03
    ld e, $88
    jp Jump_015_54b7


Jump_015_5500:
    call $3ea7
    ret nz

    ld [hl], $0a
    inc l
    ld [hl], b
    ld l, $cb
    ld [hl], c
    ret


    ld a, $01
    ld [$ccbf], a
    ret


    ld a, [$cc59]
    ld b, a
    ld c, $53
    ld a, [bc]
    bit 7, a
    ret z

    call $3ac6
    ld [hl], $1e
    ld l, $49
    ld [hl], $10
    ld l, $4b
    ld [hl], $07
    ret


    ld e, $49
    ld a, [de]
    ld l, a
    jr jr_015_5536

    ld l, $d4
    jr jr_015_5536

    ld l, $d3

jr_015_5536:
    ld a, [$cc59]
    ld h, a
    set 7, [hl]
    ret


    ld b, $00
    ld a, [$ccba]
    or a
    jr z, jr_015_554c

    ld a, [$cc00]
    and $01
    inc a
    ld b, a

jr_015_554c:
    ld a, b
    ld [$cfc1], a
    ret


    call $3ea7
    ret nz

    ld [hl], $0a
    inc l
    ld [hl], $04
    ld bc, $0603
    ld e, $14
    jp Jump_015_54b7


    xor a
    ld [$cfd0], a
    call $1956
    inc hl
    res 5, [hl]
    ret


    ld hl, $5573
    jp $1970


    add l
    ld e, e
    nop
    ld d, a
    inc bc
    call $041a
    and $07
    ld hl, $55a3
    rst $10
    ld l, [hl]
    ld h, $cf
    ld [hl], $25
    ld a, $03
    ldh [rSVBK], a
    ld h, $df
    ld [hl], $25
    xor a
    ldh [rSVBK], a
    call $2e08
    ret nz

    ld [hl], $1d
    inc l
    ld [hl], $00
    ld l, $8b
    ld [hl], $27
    ld l, $8d
    ld [hl], $a0
    ret


    ld [hl], $38
    ld b, l
    ld c, c
    ld h, l
    ld l, c
    db $76
    ld a, b
    call $1432
    cp $a3
    ret z

    ld c, l
    ld a, $a3
    call $3a52
    jr jr_015_55cd

    call $1432
    cp $f1
    ret z

    cp $f0
    ret z

    ld c, l
    ld a, $f1
    call $3a52
    ld a, $4d
    call $0c74

jr_015_55cd:
    jp $24ad


    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $30
    inc l
    ld [hl], $01
    call $21fd
    call $1956
    set 6, [hl]
    ld l, $45
    set 7, [hl]
    ld a, $4d
    jp $0c74


    ld a, $56

jr_015_55ef:
    call $1959
    bit 6, [hl]
    ld a, $01
    jr nz, jr_015_55f9

    dec a

jr_015_55f9:
    ld [$cfc1], a
    ret


    ld a, $4e
    jr jr_015_55ef

    ld a, [$cc7a]
    or a
    jr nz, jr_015_562f

    ld a, [$cc00]
    rrca
    ret c

    ld h, d
    ld l, $48
    dec [hl]
    ret nz

    call $2e08
    jr nz, jr_015_562f

    ld [hl], $1d
    ld l, $8b
    ld [hl], $27
    ld l, $8d
    ld [hl], $a0
    ld a, $45
    ld [$ccbc], a
    ld a, $4d
    call $0c74
    call $1956
    set 7, [hl]

jr_015_562f:
    ld e, $49
    ld a, $01
    ld [de], a
    ret


    ld a, $d0
    call $15ba
    ld a, l
    ld l, $4b
    ld h, d
    jp $2076


    ld a, [$cca4]
    or a
    ret nz

    ld b, $39
    call Call_015_5660
    cp $04
    ret nc

    call $041a
    cp $40
    ret c

    call $2e15
    ret nz

    ld [hl], $39
    inc l
    ld [hl], $01
    jp $21fd


Call_015_5660:
    ld c, $00
    ld hl, $d080

jr_015_5665:
    ld a, [hl+]
    or a
    jr z, jr_015_566e

    ld a, [hl]
    cp b
    jr nz, jr_015_566e

    inc c

jr_015_566e:
    dec l
    inc h
    ld a, h
    cp $e0
    jr c, jr_015_5665

    ld a, c
    or a
    ret


    xor a
    ld [$cfc1], a
    ld h, $cf
    ld l, $4d
    ld a, $2f
    cp [hl]
    ret nz

    ld l, $5d
    cp [hl]
    ret nz

    ld l, $6d
    cp [hl]
    ret nz

    ld a, $01
    ld [$cfc1], a
    ret


    ld e, $06

jr_015_5694:
    call $2e08
    ret nz

    ld [hl], $10
    inc l
    ld [hl], $01
    call Call_015_56a4
    dec e
    jr nz, jr_015_5694

    ret


Call_015_56a4:
jr_015_56a4:
    call $041a
    and $07
    inc a
    swap a
    ld b, a
    bit 7, a
    jr nz, jr_015_56a4

    call $041a
    and $07
    add $03
    or b
    ld b, $ce
    ld c, a
    ld a, [bc]
    or a
    jr nz, jr_015_56a4

    ld l, $8b
    jp $2077


    ld e, $49
    ld a, [de]
    ld b, a
    ld a, [$cc31]
    and b
    cp b
    ld a, $01
    jr z, jr_015_56d3

    xor a

jr_015_56d3:
    ld [$ccba], a
    ret


    ld e, $49
    ld a, [de]
    ld c, a
    ld b, $7c
    jp $24b1


    call $1956
    ld l, $93
    res 6, [hl]
    inc l
    res 6, [hl]
    inc l
    res 6, [hl]
    ret


    ld a, $08
    call $15ba
    ret nz

    call Call_015_5702

jr_015_56f7:
    ld a, $08
    call $15be
    ret nz

    call Call_015_5702
    jr jr_015_56f7

Call_015_5702:
    push hl
    ld c, l
    call $3ea7
    jr nz, jr_015_5717

    ld [hl], $06
    inc l
    ld [hl], $01
    ld l, $c7
    ld [hl], $30
    ld l, $cb
    call $2077

jr_015_5717:
    pop hl
    dec hl
    ret


    call $3183
    jr jr_015_5722

    call $31a9

jr_015_5722:
    ld a, $ff
    ld [$c4b1], a
    ld [$c4b3], a
    ld a, $01
    ld [$c4b2], a
    ld a, $fe
    ld [$c4b4], a
    ret


    ld c, a
    call $196b
    jr z, jr_015_573f

    ld a, c
    add $1b
    ld c, a

jr_015_573f:
    ld b, $17
    jp $184b


    ld a, $10
    jr jr_015_574a

    ld a, $08

jr_015_574a:
    ld h, d
    ld l, $7e
    ld b, [hl]
    and b
    ld l, $7f
    ld [hl], $01
    ret nz

    ld [hl], $00
    ret


    ld a, [$d601]
    cp $05
    ret nz

    ld a, [$cc7e]
    or a
    ret nz

    call $1bf4
    ret nc

    ld a, $01
    ld [$cfc0], a
    ret


    ld e, $42
    ld a, [de]
    cp $04
    ret nz

    call $196b
    ret z

    call $3ac6
    ret nz

    ld [hl], $b3
    inc l
    ld [hl], $04
    ld l, $4a
    ld [hl], $28
    ld l, $4c
    ld [hl], $58
    ret


    ld e, $57
    ld a, [de]
    ld h, a
    ld l, $4b
    ld b, [hl]
    ld l, $4d
    ld c, [hl]
    ld a, $6e
    jp $291f


    ld b, $00
    jr jr_015_579d

    ld b, $01

jr_015_579d:
    call $3ac6
    ret nz

    ld [hl], $50
    ld e, $43
    ld a, [de]
    inc l
    ld [hl+], a
    ld [hl], b
    ld l, $4b
    ld [hl], $18
    ld l, $4d
    ld [hl], $70
    ld e, $57
    ld a, h
    ld [de], a
    ret


    ld a, [$c6b0]
    add a
    call $0176
    ld h, d
    ld l, $7f
    ld [hl], $00
    cp $04
    ret nz

    inc [hl]
    ld a, [$cc4c]
    cp $f5
    ret z

    inc [hl]
    ret


    ld a, $05
    ld b, $b6
    call $1963
    and $40
    ld a, $01
    jr nz, jr_015_57dc

    xor a

jr_015_57dc:
    ld e, $7c
    ld [de], a
    ret


    xor a
    ld [$d02b], a
    ret


    ld a, $04
    call $25cb
    ld b, $f0
    ld c, $fc
    ld a, $40
    jp $2727


    call $1fdb
    ld c, $10
    call $1f60
    ret nc

    ld e, $76
    ld a, $01
    ld [de], a
    ret


    ld e, $4b
    ld a, [de]
    ld hl, $d00b
    cp [hl]
    jp nz, $1fdb

    ld e, $76
    ld a, $01
    ld [de], a
    ret


    ld b, a
    push bc
    call $1fdb
    ld e, $4b
    ld a, [de]
    pop bc
    sub b
    ret nz

    ld e, $76
    ld [de], a
    ret


    ld b, $00
    ld a, [$c6bb]
    bit 1, a
    jr z, jr_015_5833

    inc b
    ld a, $30
    call $30c7
    jr z, jr_015_5833

    inc b

jr_015_5833:
    ld hl, $cfc0
    ld [hl], b
    ret


    call $1fdb
    ld c, $10
    jp $1f04


    ld e, $4b
    ld a, [de]
    ld hl, $d00b
    cp [hl]
    ld a, $10
    jr c, jr_015_584c

    xor a

jr_015_584c:
    ld e, $49
    ld [de], a
    ret


    ld e, $42
    ld a, [de]
    ld hl, $585c
    rst $10
    ld b, $43
    ld c, [hl]
    jp $184b


    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$2108], sp
    db $db
    add $77
    ret


    ld hl, $c6dc
    jp $020e


    ld hl, $c6dc
    call $0205
    ld a, $01
    jr nz, jr_015_587c

    xor a

jr_015_587c:
    ld e, $7b
    ld [de], a
    ret


    call $1739
    ld e, $7c
    ld [de], a
    ret


    ld hl, $c60f
    add [hl]
    ld [hl], a
    ret


    ld hl, $c609
    ld b, $00

jr_015_5892:
    ld a, [hl+]
    or a
    jr z, jr_015_589c

    and $0f
    add b
    ld b, a
    jr jr_015_5892

jr_015_589c:
    ld a, b

jr_015_589d:
    sub $03
    jr nc, jr_015_589d

    add $04
    ld [$c60f], a
    ret


    ld a, $07
    jp $1a76


    ld hl, $cfde
    jr jr_015_58b4

    ld hl, $cfdc

jr_015_58b4:
    ld [hl], d
    inc hl
    ld [hl], $58
    ret


    ld a, $10
    ld [$cc6b], a
    ld hl, $d008
    ld [hl], $03
    ret


    ld a, [$d00b]
    ld e, $4b
    ld [de], a
    ret


    ld a, [$d00b]
    sub $08
    ld e, $4b
    ld [de], a
    ret


    ld e, $4d
    ld a, [de]
    ld b, a
    ld c, $f2
    jr jr_015_58e2

    ld e, $4d
    ld a, [de]
    ld b, a
    ld c, $0e

jr_015_58e2:
    ld a, [$cfc1]
    add c
    sub b
    ld e, $47
    ld [de], a
    ret


    ld a, $1e
    jp $16eb


    ld a, $64
    ld h, d
    ld l, $7e
    add [hl]
    call $30c7
    ret z

    ld h, d
    ld l, $7f
    ld [hl], $01
    ret


    ld h, d
    ld l, $7e
    ld b, [hl]
    ld a, $64
    add b
    call $30cd
    ld a, $00
    add b
    ld [$c6e6], a
    ld bc, $0003
    jp $19f4


    ld c, a
    ld a, $53
    call $24f5
    ld a, c
    add $00
    ld c, a
    ld e, $7e
    ld a, [de]
    ld b, a
    add a
    add b
    add a
    add c
    ld e, $72
    ld [de], a
    ret


    ld a, [$c626]
    ld b, a
    or a
    ld c, $00
    jr z, jr_015_594a

    inc c
    cp $14
    jr c, jr_015_594a

    inc c
    cp $32
    jr c, jr_015_594a

    inc c
    cp $5a
    jr c, jr_015_594a

    inc c
    cp $64
    jr c, jr_015_594a

    inc c

jr_015_594a:
    ld a, c
    ld [$cfc0], a
    ld a, b
    call $0259
    swap c
    or c
    ld [$cba8], a
    ld a, b
    ld [$cba9], a
    ret


    ld bc, $3700
    jp $26fb


    ld a, $09
    jp $1a76


    ld e, $4d
    ld a, [de]
    srl a
    add $10
    ld e, $47
    ld [de], a
    ret


    ld e, $77
    xor a
    ld [de], a
    ld a, $46
    jp $1702


    ld h, d
    ld l, $42
    ld [hl], $01
    ld l, $44
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $27
    ld [$cc51], a
    jp $0c74


    ld hl, $c60f
    add [hl]
    ld [hl], a
    ret


    call $1739
    ld e, $7c
    ld [de], a
    ret


    ld hl, $cba5
    add [hl]
    ld [$c6dd], a
    ret


    ld a, [$c6dd]
    or a
    jr nz, jr_015_59ae

    ld a, $38
    jp $0c74


jr_015_59ae:
    ld a, $4a
    jp $0c74


    ld c, $40
    jr jr_015_59b9

    ld c, $04

jr_015_59b9:
    ld a, $29
    jp $16eb


    ld c, a
    ld a, $28
    jp $16eb


    ld a, [$c6c6]
    dec a
    ld c, $03
    jr z, jr_015_59ce

    ld c, $05

jr_015_59ce:
    ld b, $00
    ld hl, $cba8
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld b, a
    ld e, $42
    ld a, [de]
    add a
    add b
    ld hl, $59e5
    rst $10
    ld b, $3a
    ld c, [hl]
    jp $184b


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    add hl, bc
    ld c, $30
    call $1f04
    ret nz

    ld h, d
    ld l, $7d
    ld [hl], $01
    ret


    ld b, a
    ld e, $4d
    ld a, [de]
    and $f0
    swap a
    ld c, a
    ld a, b
    jp $3a52


    ld a, $13
    call $30cd
    ld hl, $5a1c
    call $1970
    ld a, $8d
    jp $0c74


    add c
    ld [hl], h
    nop
    ld b, d
    add e
    call $3ac6
    ret nz

    ld [hl], $40
    inc l
    ld [hl], $0c
    ld l, $4b
    ld [hl], $28
    ld l, $4d
    ld [hl], $78
    ret


    call $3ac6
    ret nz

    ld [hl], $b8
    inc l
    ld [hl], $03
    ld l, $4b
    ld [hl], $88
    ld l, $4d
    ld [hl], $50
    ret


    ld hl, $5a4d
    ld a, $15
    jp $2964


    ld d, b
    nop
    db $10
    inc b
    nop
    nop
    jr nz, jr_015_5a55

jr_015_5a55:
    ld b, b
    ld [$0000], sp
    rst $38
    rst $38
    ld hl, $d01a
    res 7, [hl]
    ret


    ld h, d
    ld l, $5a
    res 7, [hl]
    ret


    call $29f4
    ld hl, $d008
    ld [hl], $01
    ret


    ld e, $4d
    ld a, [de]
    ld hl, $d00d
    sub [hl]
    ld b, a
    add $0c
    cp $18
    ret nc

    ld a, [$d00b]
    cp $38
    ret c

    ld a, b
    sub [hl]
    ld a, $01
    jr nc, jr_015_5a8a

    inc a

jr_015_5a8a:
    ld e, $79
    ld [de], a
    ret


    xor a
    ld e, $79
    ld [de], a
    ld hl, $c6a7
    ld a, [hl+]
    cp $77
    ret nz

    ld a, [hl]
    cp $07
    ret nz

    ld a, $01
    ld [de], a
    ret


    ld hl, $c6ab
    ld a, [hl]
    add $20
    ld [hl-], a
    ld [hl], a
    jp $17b1


    ld hl, $c6a3
    ld a, [$c6a2]
    cp [hl]
    ret nz

    ld e, $7f
    ld a, $01
    ld [de], a
    ret


    ld hl, $c6a2
    ld a, [$cbe4]
    cp [hl]
    ret nz

    ld e, $7f
    ld a, $01
    ld [de], a
    ret


    ld b, $f8
    ld c, $10
    ld a, $28
    jp $2727


    call $1956
    res 5, [hl]
    ret


    ld hl, $d008
    ld a, [hl]
    xor $02
    add $09
    jp $25cb


    ld b, a
    ld c, $00
    call $196b
    jr z, jr_015_5aec

    ld c, $0a

jr_015_5aec:
    ld a, b
    add c
    ld h, d
    ld l, $72
    ld [hl+], a
    ld [hl], $0c
    ret


    jp $3600


    ld a, $41
    call $1717
    ld h, d
    ld l, $7f
    jr nc, jr_015_5b09

    cp $05
    jr c, jr_015_5b09

    ld [hl], $01
    ret


jr_015_5b09:
    ld [hl], $00
    ret


    call $3ac6
    ret nz

    ld [hl], $84
    push de
    ld de, $d00b
    call $2202
    pop de
    ret


    ld a, $58
    call $1702
    ld a, $49
    jp $1702


    ld hl, $cfde
    ld bc, $627b
    jr jr_015_5b52

    ld a, $0b
    ld [$cc6a], a
    ld hl, $d00b
    ld a, $68
    sub [hl]
    ld [$cc6c], a
    ld l, $08
    ld [hl], $02
    ld l, $09
    ld [hl], $10
    ld hl, $cfde
    ld bc, $62c9
    call Call_015_5b52
    ld hl, $cfdc
    ld bc, $62db

Call_015_5b52:
jr_015_5b52:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


    ld c, $04
    jr jr_015_5b5f

    ld c, $05

jr_015_5b5f:
    ld b, $4c
    jp $24b1


    call $3ea7
    ret nz

    ld [hl], $04
    ld l, $cb
    ld [hl], $1c
    ld l, $cd
    ld [hl], $70
    ret


    ld a, $50
    call $1702
    ld a, $51
    call $1702
    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $52
    ld l, $4b
    ld [hl], $1c
    ld l, $4d
    ld [hl], $70
    ret


    ld a, $e8
    ld c, $06
    call $3a52
    ld a, $e9
    ld c, $07
    call $3a52
    ld a, $ea
    ld c, $16
    call $3a52
    ld a, $eb
    ld c, $17
    call $3a52
    ld a, $70
    jp $0c74


    ld a, $e4
    ld c, $06
    call $3a52
    ld a, $e5
    ld c, $07
    call $3a52
    ld a, $e6
    ld c, $16
    call $3a52
    ld a, $e7
    ld c, $17
    jp $3a52


    ld a, $01

jr_015_5bce:
    ld [$ccab], a
    ld [$ccea], a
    ret


    xor a
    jr jr_015_5bce

    call $1606
    ldh a, [$ad]
    ld d, a
    ld b, $54
    jp $24af


    ld h, d
    ld l, $50
    ld [hl], $28
    ld l, $54
    ld [hl], $00
    inc hl
    ld [hl], $fe
    ld a, $53
    jp $0c74


    ld c, $30
    call $1f04
    ret nz

    ld h, d
    ld l, $7d
    ld [hl], $01
    ret


    ld a, $1a
    call $30c7
    ld a, $04
    jr z, jr_015_5c0b

    ld a, $05

jr_015_5c0b:
    ld e, $78
    ld [de], a
    call $1739
    ld e, $77
    ld [de], a
    ld a, $00
    ld [$cced], a
    xor a
    ld e, $71
    ld [de], a
    ld e, $44
    ld a, $01
    ld [de], a
    ret


    ld e, $78
    ld a, [de]
    jp $1751


    ld e, $78
    ld a, [de]
    call $175a
    ld hl, $cba8
    ld [hl], c
    inc hl
    ld [hl], b
    ret


    ld c, $07
    ld a, $28
    jp $16eb


    call $29cc
    call $2b57
    call $2b8a
    jp $3566


    call $29f4
    ld hl, $d008
    ld [hl], $03
    ld l, $0b
    ld [hl], $40
    ld l, $0d
    ld [hl], $60
    xor a
    ld l, $0f
    ld [hl], a
    ld [$cc77], a
    ret


    ld e, $79
    ld a, [de]
    ld h, a
    ld l, $44
    ld [hl], $02
    call $2e08
    ret nz

    ld [hl], $54
    ld l, $8b
    ld [hl], $40
    ld l, $8d
    ld [hl], $40
    ld e, $56
    ld a, $80
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    push de
    call $3578
    pop de
    ld bc, $4040
    call Call_015_5c9e
    ret nz

    ld l, $4b
    ld b, [hl]
    ld l, $4d
    ld c, [hl]
    ld e, $4b
    ld a, b
    ld [de], a
    ld e, $4d
    ld a, c
    ld [de], a
    ret


    ld bc, $4050

Call_015_5c9e:
    call $3ac6
    ret nz

    ld [hl], $72
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c
    ld e, $79
    ld a, h
    ld [de], a
    xor a
    ret


    ldh [$8b], a
    ld a, $ff
    ld [$cbea], a
    ld hl, $c680
    ld e, $df
    ldh a, [$8b]
    and $0f
    call Call_015_5cdc
    call Call_015_5cdf
    ld l, $81
    ldh a, [$8b]
    swap a
    and $0f
    ld e, $de
    call Call_015_5cdc
    ld a, b
    cp $0c
    call nz, Call_015_5cdf
    jp $2372


Call_015_5cdc:
    ld b, [hl]
    ld [hl], a
    ret


Call_015_5cdf:
    push de
    ld d, $cf
    ld l, $82

jr_015_5ce4:
    ld a, [hl]
    or a
    jr z, jr_015_5ceb

    inc l
    jr jr_015_5ce4

jr_015_5ceb:
    ld [hl], b
    ld a, l
    ld [de], a
    pop de
    ret


    ld a, [$ccec]
    cp $03
    jr z, jr_015_5d0f

    push de
    ld a, $ff
    ld [$cbea], a
    ld h, $c6
    ld de, $cfdf
    ld c, $80
    call Call_015_5d12
    ld e, $de
    ld c, $81
    call Call_015_5d12
    pop de

jr_015_5d0f:
    jp $237a


Call_015_5d12:
    ld a, [de]
    or a
    ret z

    ld l, a
    ld a, [hl]
    ld [hl], $00
    ld l, c
    ld [hl+], a
    cp $0c
    ret nz

    ld [hl], a
    ret


    ld a, $01
    ld [$cfd2], a
    ld a, $04
    jr jr_015_5d38

    ld a, $ff
    ld [$cfd2], a
    ld a, $04
    jr jr_015_5d38

    ld a, $05
    jr jr_015_5d38

    ld a, $03

jr_015_5d38:
    ld [$cfd4], a
    ld a, $09
    ld [$cfd1], a
    ld hl, $cfda
    inc [hl]
    ret


    ld e, $54
    ld a, $80
    ld [de], a
    ld a, $fe
    inc e
    ld [de], a
    ld e, $4e
    ld a, $01
    ld [de], a
    ret


    call $1956
    bit 7, [hl]
    ld a, $03
    jr nz, jr_015_5d70

    ld hl, $c781
    bit 7, [hl]
    ld a, $02
    jr nz, jr_015_5d70

    call $1956
    bit 5, [hl]
    ld a, $01
    jr nz, jr_015_5d70

    dec a

jr_015_5d70:
    ld [$cfc1], a
    ret


    ld a, $0e
    ld [$cc6a], a
    ld a, $01
    ld [$cc02], a
    ld [$cca5], a
    ld a, $ff
    ld [$cca4], a
    jp $26ac


    ld a, $11
    ld [$ccab], a
    ld [$cca4], a
    ret


    xor a
    ld [$ccab], a
    ld [$cc32], a
    ret


    ld h, $d7

jr_015_5d9c:
    ld l, $01
    ld a, [hl]
    sub $03
    jr nz, jr_015_5daa

    ld l, $1a
    ld [hl], a
    ld l, $2f
    set 5, [hl]

jr_015_5daa:
    inc h
    ld a, h
    cp $dc
    jr c, jr_015_5d9c

    ret


    ld a, $02
    ld [$cc9e], a
    ret


    ld hl, $c7cb
    set 7, [hl]
    xor a
    ld [$cc9e], a
    ld [$cc9f], a
    ret


    ld a, $1e
    call $17fa
    ld hl, $c6e3
    call $0245
    call $1956
    bit 5, [hl]
    jr nz, jr_015_5ddb

    ld bc, $1702
    jr jr_015_5e00

jr_015_5ddb:
    ld a, [$c6e3]
    cp $08
    jr z, jr_015_5dee

    call $041a
    cp $60
    jr nc, jr_015_5e13

jr_015_5de9:
    ld bc, $3402
    jr jr_015_5e00

jr_015_5dee:
    call Call_015_5e20
    jr c, jr_015_5de9

    ld c, $03
    call $2709
    call Call_015_5e0a
    ld a, $14
    jp $30cd


jr_015_5e00:
    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c

Call_015_5e0a:
jr_015_5e0a:
    ld l, $4b
    ld [hl], $48
    inc l
    inc l
    ld [hl], $28
    ret


jr_015_5e13:
    call $3ac6
    ret nz

    ld [hl], $6b
    inc l
    ld [hl], $09
    inc l
    inc [hl]
    jr jr_015_5e0a

Call_015_5e20:
    call $041a
    and $03
    ld c, a
    ld b, $04

jr_015_5e28:
    push bc
    ld a, c
    ld bc, $5e4a
    call $006d
    ld a, [bc]
    ld hl, $c616
    call $0205
    jr z, jr_015_5e46

    pop bc
    ld a, c
    inc a
    and $03
    ld c, a
    dec b
    jr nz, jr_015_5e28

    ld b, $80
    scf
    ret


jr_015_5e46:
    ld a, [bc]
    pop bc
    ld b, a
    ret


    ld a, $3d
    rra
    ld a, [de]
    call $3ea7
    ret nz

    ld [hl], $0e
    ld l, $d6
    ld a, $40
    ld [hl+], a
    ld [hl], d
    jp $21fd


    call $3ac6
    ret nz

    ld [hl], $6e
    ld l, $4b
    ld a, [$d00b]
    ld [hl+], a
    inc l
    ld a, [$d00d]
    ld [hl], a
    ret


    call $29f4
    jp $29d3


    ld bc, $30a8
    ld e, $10
    call Call_015_5e82
    ld bc, $34b8
    ld e, $11

Call_015_5e82:
    call $3ac6
    ret nz

    ld [hl], $30
    inc l
    ld [hl], e
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c
    ret


    ld hl, $d114
    ld [hl], $c0
    inc l
    ld [hl], $fe
    ld l, $3f
    ld [hl], $0b
    ld l, $03
    ld [hl], $03
    ld l, $1c
    ld [hl], $09
    ret


    ld hl, $d103
    ld [hl], $04
    ld l, $1a
    ld [hl], $c0
    ld l, $3f
    ld [hl], $19
    ret


    ld a, $18
    ld [$cc47], a
    ld hl, $d009
    ld [hl], a
    ld l, $10
    ld [hl], $32
    ld a, $1d
    ld [$d13f], a
    ret


    ld a, $02
    ld [$d008], a
    ld hl, $d108
    ld [hl], $02
    inc l
    ld [hl], $10
    ld l, $03
    ld [hl], $06
    ld a, $03
    ld [$d13f], a
    ret


    ld a, [$c610]
    cp $0d
    ld a, $01
    jr z, jr_015_5ee8

    xor a

jr_015_5ee8:
    ld e, $7b
    ld [de], a
    ret


    call $1e5a
    ld e, $49
    ld [de], a
    call $26a3
    ld e, $48
    ld [de], a
    jp $25cb


    ld a, $09
    ld [$cc6a], a
    ld hl, $d00b
    call $21fd
    ld a, [$d00b]
    swap a
    and $0f
    ldh [$8d], a
    ld a, [$d00d]
    swap a
    and $0f
    xor $0f
    ldh [$8c], a
    ld a, [$cc49]
    ld hl, $5f6f
    cp $04
    jr z, jr_015_5f27

    ld hl, $5f85

jr_015_5f27:
    ld a, [$cc4c]
    ld e, a

jr_015_5f2b:
    ld a, [hl+]
    or a
    jr z, jr_015_5f69

    cp e
    jr z, jr_015_5f36

    inc hl
    inc hl
    jr jr_015_5f2b

jr_015_5f36:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ldh a, [$8d]
    rst JumpTable
    ldh a, [$8c]
    call $0205
    ld c, $01
    jr nz, jr_015_5f63

    ld c, $00
    ld e, $42
    ld a, [de]
    or a
    jr z, jr_015_5f63

    pop hl
    ld bc, $0016
    add hl, bc
    ldh a, [$8d]
    rst JumpTable
    ldh a, [$8c]
    call $0205
    ld c, $80
    jr z, jr_015_5f64

    ld c, $82
    jr jr_015_5f64

jr_015_5f63:
    pop hl

jr_015_5f64:
    ld a, c
    ld [$cc6b], a
    ret


jr_015_5f69:
    ld a, $03
    ld [$cc6b], a
    ret


    ld a, $98
    ld e, a
    ccf
    xor [hl]
    ld e, a
    ld b, e
    call nz, $b45f
    jp c, $c15f

    ldh a, [$5f]
    jp nz, Jump_015_6006

    db $d3
    inc e
    ld h, b
    nop
    scf
    ld [hl-], a
    ld h, b
    jr c, @+$4a

    ld h, b
    ld a, [hl-]
    ld [hl], h
    ld h, b
    ld b, l
    and b
    ld h, b
    ld c, c
    or [hl]
    ld h, b
    ld c, l
    call z, JoypadTransitionInterrupt
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ldh [$ef], a
    xor $ef
    xor $0f
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_015_6006:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    sbc a
    rst $08
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sub c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    db $f4
    ld a, a
    db $fc
    ld a, a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $c6e5
    ld [hl], a
    ret


    ld c, a
    jr jr_015_60f7

    call Call_015_60fc
    jr jr_015_60f7

    call Call_015_6104
    jr jr_015_60f7

    call Call_015_610c

jr_015_60f7:
    ld b, $17
    jp $184b


Call_015_60fc:
    ld a, [$cc39]
    ld hl, $6116
    rst $10
    ld a, [hl]

Call_015_6104:
    call Call_015_610c
    ld hl, $c6e5
    ld [hl], c
    ret


Call_015_610c:
    ld c, a
    call $196b
    ret z

    ld a, c
    add $1b
    ld c, a
    ret


    inc bc
    dec b
    ld [$0c0a], sp
    ld de, $1513
    rla
    ld b, $0e
    ld de, $fe18
    nop
    jr nz, jr_015_612c

    call Call_015_615f
    ld a, $00

jr_015_612c:
    ld e, $77
    ld [de], a
    jp $25cb


    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $42
    inc l
    ld [hl], $00
    ld l, $4b
    ld [hl], $60
    ld a, [$d00d]
    ld b, $50
    cp $64
    jr nc, jr_015_6157

    cp $3c
    jr c, jr_015_6157

    ld b, $40
    cp $50
    jr nc, jr_015_6157

    ld b, $60

jr_015_6157:
    ld l, $4d
    ld [hl], b
    ld a, b
    ld [$c6e0], a
    ret


Call_015_615f:
    call $2e08
    ret nz

    ld [hl], $56
    inc l
    ld e, $42
    ld a, [de]
    ld [hl], a
    ld l, $98
    ld a, $40
    ld [hl+], a
    ld [hl], d
    ld e, $56
    ld a, $80
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld hl, $cfc0
    res 7, [hl]
    ret


    ld bc, $9301
    jp $24b1


    ld a, $0e
    ld [$cc04], a
    ld a, $19
    jp $30cd


    call $196b
    ret nz

    xor a
    ld [$cc02], a
    ld [$cca4], a
    ret


    ld a, [$cc66]
    or a
    ret nz

    call $29f4
    ld hl, $d008
    ld [hl], $00
    ld l, $0b
    ld [hl], $68
    ld l, $0d
    ld [hl], $50
    ld l, $0f
    ld [hl], $00
    ret


    ld bc, $61ca
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


    ld h, $26
    ld h, $30
    ld h, $3a
    jr nc, @+$28

    jr nc, @+$32

    jr nc, @+$3c

    ld a, [hl-]
    ld h, $3a
    jr nc, @+$3c

    ld a, [hl-]
    call $2e08
    ret nz

    ld [hl], $4f
    ld l, $8b
    ld [hl], $30
    ld l, $8d
    ld [hl], $30
    ret


    ld a, $01
    call $25cb
    ld h, d
    ld l, $4b
    ld [hl], $30
    inc l
    inc l
    ld [hl], $78
    ret


    call $2e08
    ret nz

    ld [hl], $20
    inc l
    ld [hl], $01
    jp $21fd


    call $2e08
    ret nz

    ld [hl], $4a
    jp $21fd


    ld hl, $c6a5
    ld a, [hl+]
    or [hl]
    ld e, $7f
    ld [de], a
    ret z

    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $6233
    rst $10
    ld a, [hl]
    jp $1751


    ld e, $42
    ld a, [de]
    ld hl, $6233
    rst $10
    ld c, [hl]
    ld a, $28
    jp $16eb


    db $10
    dec c
    inc c
    db $10
    inc c
    dec c
    dec bc
    inc c
    ld a, $40
    call $1717
    and $08
    ld b, $00
    jr nz, jr_015_6247

    inc b

jr_015_6247:
    ld hl, $cfc0
    ld [hl], b
    ret


    call Call_015_624f

Call_015_624f:
    ld h, d
    ld l, $7e
    ld a, [hl]
    inc [hl]
    ld bc, $626a
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


    ld e, $2e
    ld e, $42
    ld h, $38
    ld d, $2e
    ld d, $42
    ld c, $38
    ld a, [de]
    jr c, @+$20

    ld a, $1e
    ld d, d
    ld h, $48
    ld d, $3e
    ld d, $52
    ld c, $48
    ld a, [de]
    ld c, b
    ld e, $4e
    ld e, $62
    ld h, $58
    ld d, $4e
    ld d, $62
    ld c, $58
    ld a, [de]
    ld e, b
    ld e, $5e
    ld e, $72
    ld h, $68
    ld d, $5e
    ld d, $72
    ld c, $68
    ld a, [de]
    ld l, b
    ld a, $52
    call $1702
    ld a, $01
    call $1717
    jr c, jr_015_62af

    xor a

jr_015_62af:
    cp $03
    jr c, jr_015_62b5

    ld a, $02

jr_015_62b5:
    ld c, a
    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $01
    inc l
    ld [hl], c
    push de
    ld de, $d00b
    call $2202
    pop de
    ret


    call $1e5a
    call $26a4
    jp $25cb


    ld bc, $f300
    jp $2727


    ld b, $f8
    ld c, $f0
    ld a, $40
    jp $2727


    ld a, $16
    call $30cd
    ld a, $2f
    call $30cd
    ld hl, $62f7
    call $1970
    ld a, $bc
    jp $0c74


    add b
    ld e, e
    nop
    inc d
    add e
    ld a, $00
    ld [$d008], a
    jp $29f4


    call $29f4
    jp $29d3


    ld hl, $cbb3
    inc [hl]
    ret


    call $041a
    and $03
    jp $25cb


    call $29f4
    ld hl, $d008
    ld [hl], $01
    ld l, $1a
    set 7, [hl]
    ret


    ld c, $10
    call $1f60
    rrca
    and $03
    jp $25cb


    call $31d4
    jr jr_015_6337

    call $31fb

jr_015_6337:
    xor a
    ld [$c4b2], a
    ld [$c4b4], a
    ld a, $7e
    ld [$c4b1], a
    ld [$c4b3], a
    ret


    ld bc, $5838
    jr jr_015_634f

    ld bc, $1850

jr_015_634f:
    call $3ea7
    ret nz

    ld [hl], $27
    inc l
    inc [hl]
    ld l, $cb
    ld [hl], b
    ld l, $cd
    ld [hl], c
    ret


    ld bc, $6372
    jr jr_015_6366

    ld bc, $6375

jr_015_6366:
    call $3ac6
    ret nz

    ld [hl], $bf
    inc l
    ld a, [bc]
    inc bc
    ld [hl], a
    jr jr_015_6396

    nop
    ld h, b
    jr c, @+$03

    jr nz, @+$52

    ld a, $01
    ld [$cc17], a
    ld a, $b4
    ld [$cc1d], a
    ret


    ld bc, $63a0
    call Call_015_638c
    ld bc, $63a3

Call_015_638c:
    call $3ac6
    ret nz

    ld [hl], $b4
    inc l
    ld a, [bc]
    inc bc
    ld [hl], a

jr_015_6396:
    ld l, $4b
    ld a, [bc]
    inc bc
    ld [hl], a
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    ret


    nop
    jr z, @+$52

    ld bc, $5028
    call $3ac6
    ret nz

    ld [hl], $22
    inc l
    ld [hl], $09
    ld l, $4b
    ld [hl], $40
    ld l, $4d
    ld [hl], $50
    ret


jr_015_63b8:
    ld hl, $d008
    ld a, [hl]
    xor $02
    jp $25cb


    ld b, a
    ld c, $00
    jp $26fb


    ld a, $08
    call $2a16
    ld l, $02
    ld [hl], $08
    ret


    ld hl, $d008
    ld [hl], a
    jp $29f4


    ld bc, $6417
    jr jr_015_63f5

    ld bc, $640d
    call Call_015_63f5
    ld bc, $6412
    call Call_015_63f5
    ld bc, $641c
    call Call_015_63f5
    call Call_015_63f5
    call Call_015_63f5

Call_015_63f5:
jr_015_63f5:
    call $3ac6
    ret nz

    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    inc bc
    ret


    sub l
    dec b
    nop
    inc d
    ld d, b
    ld b, h
    ld b, $00
    ld c, b
    ld d, b
    cp d
    inc bc
    nop
    adc b
    ld b, b
    sub [hl]
    ld b, $00
    ld c, b
    jr c, jr_015_63b8

    ld b, $01
    ld c, b
    ld l, b
    sub [hl]
    dec b
    ld [bc], a
    jr z, @+$32

    sub [hl]
    dec b
    inc bc
    jr z, jr_015_64a0

    ld a, [$ccf8]
    ld hl, $cbaa
    ld [hl+], a
    ld [hl], $00
    ld a, [$ccf9]
    ld hl, $cba8
    ld [hl+], a
    ld [hl], $00
    ret


    ld hl, $ccf7
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld e, $78
    ld [de], a
    ld e, $46
    ld a, $01
    ld [de], a
    jp $1986


    ld a, $01
    ld e, $7b
    ld [de], a
    jp $1e39


    xor a
    ld e, $7b
    ld [de], a
    jp $1e42


    push de
    call $3578
    call $3566
    call $358a
    pop de
    xor a
    ld [$cc30], a
    ld a, $01
    ld [$cc17], a
    call $29f4
    ld hl, $d008
    ld [hl], $00
    ld l, $0b
    ld [hl], $88
    ld l, $0d
    ld [hl], $78
    ld l, $0f
    ld [hl], $00
    ret


    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a
    ld a, $6e
    jp $291f


    ld bc, $8400
    jp $24b1


jr_015_64a0:
    ld h, d
    ld l, $7c
    ld a, [$cba5]
    xor $01
    cp [hl]
    ld l, $7f
    jr nz, jr_015_64b0

    ld [hl], $00
    ret


jr_015_64b0:
    ld [hl], $01
    ret


    call $1986
    jp $1e39


    jp $1e42


    call $29f4
    ld hl, $d008
    ld [hl], $00
    ld l, $0b
    ld [hl], $5c
    ld l, $0d
    ld [hl], $50
    ld l, $0f
    ld [hl], $00
    ret


    call $2b57
    call $2b8a
    call $3566
    call $29f4
    ld hl, $d008
    ld [hl], $00
    ret


    ld hl, $d008
    ld [hl], $00
    ret


    ld h, d
    ld l, $79
    ld a, [hl]
    or a
    ret nz

    ld l, $78
    ld a, [hl]
    ld b, $00
    cp $03
    jr nc, jr_015_64fa

    ld b, $01

jr_015_64fa:
    ld l, $79
    ld [hl], b
    ret


    ld b, a
    ld hl, $cc63
    ld a, $84
    ld [hl+], a
    ld a, $f0
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $00
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    ret


    ld h, d
    ld l, $73
    ld [hl], $4c
    ld b, $25
    call $1956
    and $03
    dec a
    jr z, jr_015_6529

    ld b, $27

jr_015_6529:
    ld a, b
    ld e, $72
    ld [de], a
    ret


    xor a
    ld [$cca4], a
    ld [$cc02], a
    call $1956
    and $c0
    ld [hl], a
    ret


    ld b, a
    call $1956
    and $c0
    or b
    ld [hl], a
    ret


    call $1956
    and $03
    ld e, $7c
    ld [de], a
    ret


    ld hl, $ccf7
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    jp $1986


    xor a
    ld [$cfd1], a
    ret


    call $29f4
    ld hl, $d008
    ld [hl], $00
    ld l, $0b
    ld [hl], $60
    ld l, $0d
    ld [hl], $50
    ld l, $0f
    ld [hl], $00
    ret


    ld hl, $ccf9
    ld a, [hl-]
    or a
    jr nz, jr_015_6583

    ld a, [hl]
    cp $31
    jr nc, jr_015_6583

    ld a, $2e
    jp $30cd


jr_015_6583:
    ld a, $2e
    jp $30d3


    ld hl, $6593
    call $1970
    ld a, $8d
    jp $0c74


    add a
    add sp, $00
    ld b, $83
    ld hl, $65a3
    call $1970
    ld a, $8d
    jp $0c74


    add e
    or [hl]
    nop
    ld b, l
    add e
    ld e, $20

jr_015_65aa:
    ld a, e
    call $1717
    ret nc

    inc e
    ld a, e
    cp $25
    jr c, jr_015_65aa

    ld a, [$c6ae]
    ld hl, $65ce
    rst $10
    ld b, [hl]
    ld hl, $c6b5

jr_015_65c0:
    ld a, b
    cp [hl]
    ret nz

    inc l
    ld a, l
    cp $ba
    jr c, jr_015_65c0

    ld h, d
    ld l, $78
    ld [hl], $01
    ret


    jr nz, @+$52

    sbc c
    ld e, $44
    ld a, [de]
    rst $00
    jp c, $f865

    ld h, l
    call $196b
    jp z, $3ad9

    ld a, $18
    call $30c7
    jp z, $3ad9

    call $15e9
    call $239b
    ld l, $7e
    ld [hl], $01
    ld hl, $5779
    call $24fe
    call $250c
    jp $2686


    ld e, $44
    ld a, [de]
    rst $00
    ld b, $66
    ld e, h
    ld h, [hl]
    ld a, $01
    ld [de], a
    call $196b
    jp z, $3ad9

    call Call_015_662f
    jp z, $3ad9

    ld e, $42
    ld a, [de]
    ld hl, $662c
    rst $10
    ld a, [hl]
    ld e, $7e
    ld [de], a
    ld hl, $5779
    call $24fe
    call $15e9
    jp $1e03


    dec b
    ld b, $09

Call_015_662f:
    ld e, $42
    ld a, [de]
    rst $00
    add hl, sp
    ld h, [hl]
    ccf
    ld h, [hl]
    ld c, c
    ld h, [hl]
    ld a, $2d
    call $30c7
    ret


    ld a, $00
    ld b, $81
    call $1963
    bit 7, a
    ret


    ld a, $40
    call $1717
    jr nc, jr_015_665a

    call $01ea
    cp $01
    jr c, jr_015_665a

    or $01
    ret


jr_015_665a:
    xor a
    ret


    call $250c
    ld e, $42
    ld a, [de]
    or a
    jp z, $2646

    jp $2686


    ld e, $42
    ld a, [de]
    rst $00
    db $dd
    ld h, [hl]
    ld e, l
    ld h, a
    and [hl]
    ld h, a
    db $db
    ld h, a
    pop af
    ld h, a
    ld d, a
    ld l, b
    or e
    ld l, b
    call c, $8668
    ld l, c
    ld a, [bc]
    ld l, d
    jr z, jr_015_66ed

    jr nc, @+$6c

    scf
    ld l, d
    ld l, c
    ld l, d
    ld a, d
    ld l, d
    adc l
    ld h, [hl]
    call $2697
    call $1956
    and $20
    jp nz, $3ad9

    ld e, $4d
    ld a, [de]
    ld b, a
    ld a, [$ccba]
    cp b
    jr nz, jr_015_66b9

    ld e, $4b
    ld a, [de]
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp $f1
    ret z

    ld a, $f1
    call $3a52
    call Call_015_66d2
    ld a, $4d
    jp $0c74


jr_015_66b9:
    ld e, $4b
    ld a, [de]
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp $f1
    ret nz

    ld a, $03
    ldh [rSVBK], a
    ld b, $df
    ld a, [bc]
    ld l, a
    xor a
    ldh [rSVBK], a
    ld a, l
    call $3a52

Call_015_66d2:
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $4b
    jp $2077


    ld e, $44
    ld a, [de]
    rst $00
    sbc e
    inc hl
    db $ed
    ld h, [hl]
    ld a, [$1666]
    ld h, a
    rra
    ld h, a
    add hl, sp
    ld h, a

jr_015_66ed:
    ld a, [$ccba]
    or a
    ret z

    ld a, $01
    ld e, $46
    ld [de], a
    jp $239b


    call $2387
    ret nz

    ld l, $45
    ld a, [hl]
    cp $03
    jr z, jr_015_670f

    inc [hl]
    ld hl, $675a
    rst $10
    ld a, [hl]
    ld b, $6d
    jr jr_015_6744

jr_015_670f:
    call $239b
    ld l, $46
    ld [hl], $43
    call $2387
    ret nz

    ld [hl], $01
    jp $239b


    call $2387
    ret nz

    ld l, $45
    ld a, [hl]
    or a
    jp z, $239b

    dec [hl]
    ld a, [hl]
    ld hl, $675a
    rst $10
    ld a, [hl]
    ld b, $fd
    call Call_015_6744
    ld [hl], $1e
    ret


    ld a, [$ccba]
    or a
    ret nz

    ld a, $01
    ld e, $44
    ld [de], a
    ret


Call_015_6744:
jr_015_6744:
    ld c, a
    ld a, b
    call $3a52
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $4b
    call $2077
    ld h, d
    ld l, $46
    ld [hl], $0f
    ret


    ld h, l
    ld h, h
    ld h, e
    ld e, $44
    ld a, [de]
    rst $00
    ld h, a
    ld h, a
    ld [hl], h
    ld h, a
    add e
    ld h, a
    ld a, $01
    ld [de], a
    call $196b
    jp z, $3ad9

    ld [$ccaa], a
    ret


    call $268f
    ld a, [$ccb3]
    ld b, a
    ld a, [$cca8]
    cp b
    ret z

    jp $239b


    call $1432
    ld b, a
    ld a, [$ccb4]
    cp b
    ret nz

    call $1cde
    ret nc

    ld hl, $cc63
    ld [hl], $85
    inc l
    ld [hl], $30
    inc l
    ld [hl], $93
    inc l
    ld [hl], $ff
    ld a, $01
    ld [$cc67], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld h, a
    ld h, a
    xor [hl]
    ld h, a
    ld a, $01
    ld [$ccaa], a
    call $1432
    ld b, a
    ld a, [$ccb4]
    cp b
    ret nz

    ld a, [$cc77]
    or a
    ret nz

    call $3e8f
    ld a, $05
    ld [$cc63], a
    ld a, $09
    ld [$cc65], a
    ld a, $00
    ld [$cd00], a
    ld a, $0a
    ld [$cc6a], a
    jp $3ad9


    ld h, d
    ld l, $4b
    ld a, [$ccba]
    and [hl]
    cp [hl]
    ld hl, $ccba
    jr nz, jr_015_67eb

    set 7, [hl]
    ret


jr_015_67eb:
    ld hl, $ccba
    res 7, [hl]
    ret


    ld e, $44
    ld a, [de]
    rst $00
    db $fd
    ld h, a
    dec h
    ld l, b
    dec [hl]
    ld l, b
    ld b, h
    ld l, b
    ld e, $4d
    ld a, [de]
    ld e, $70
    ld [de], a
    ld b, a
    call $1956
    and $20
    jr z, jr_015_6811

    call Call_015_681b
    jp $3ad9


jr_015_6811:
    ld e, $4b
    ld a, [de]
    ld c, a
    call $2081
    jp $239b


Call_015_681b:
    ld e, $70
    ld a, [de]
    ld hl, $c647
    cp [hl]
    ret c

    ld [hl], a
    ret


    call $1956
    and $20
    ret z

    call Call_015_681b
    call $239b
    ld l, $46
    ld [hl], $28
    call $1832
    call $2387
    ret nz

    ld [hl], $1e
    call $24ad
    jp $239b


    call $2387
    ret nz

    ld a, $4d
    call $0c74
    ld bc, $7e02
    call $24b1
    ret nz

    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld h, l
    ld l, b
    ld l, b
    ld l, b
    ld a, e
    ld l, b
    sub b
    ld l, b
    sbc c
    ld l, b
    ld a, $01
    ld [de], a
    ld a, [$ccba]
    cp $1f
    ret nz

    ld h, d
    ld a, $0f
    ld l, $46
    ld [hl], $0f
    inc l
    ld [hl], $73
    jp $239b


    call $2387
    ret nz

    inc l
    ld a, [hl]
    ld b, $6d
    call Call_015_6744
    ld a, c
    cp $7d
    jp z, $239b

    ld l, $47
    inc [hl]
    ret


    ld a, [$ccba]
    cp $1f
    ret z

    jp $239b


    call $2387
    ret nz

    inc l
    ld a, [hl]
    ld b, $f4
    call Call_015_6744
    ld a, c
    cp $73
    jr z, jr_015_68ad

    ld l, $47
    dec [hl]
    ret


jr_015_68ad:
    ld h, d
    ld l, $44
    ld [hl], $01
    ret


    ld e, $44
    ld a, [de]
    or a
    jr nz, jr_015_68c4

    call $1956
    and $20
    jp nz, $3ad9

    call $239b

jr_015_68c4:
    ld a, [$cc31]
    bit 6, a
    ret z

    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $30
    inc l
    ld [hl], $01
    call $21fd
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld [$ed68], a
    ld l, b
    ld [$4a69], sp
    ld l, c
    ld [hl], b
    ld l, c
    ld a, $01
    ld [de], a
    ld e, $70
    ld a, [de]
    ld b, a
    ld a, [$ccba]
    cp b
    ret z

    ld [de], a
    ld [$ccc8], a
    ld c, a
    ld a, b
    cpl
    and c
    call $01ea
    ld h, d
    ld l, $71
    ld [hl], a
    jp $239b


    ld b, $04

jr_015_690a:
    call Call_015_6923
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $4b
    call $2077
    dec b
    jr nz, jr_015_690a

    call $239b
    ld l, $46
    ld [hl], $1e
    ret


Call_015_6923:
    ld a, b
    dec a
    ld hl, $692b
    rst $10
    ld c, [hl]
    ret


    ld [hl+], a
    inc l
    add d
    adc h

Call_015_692f:
    ld e, $71
    ld a, [de]
    ld hl, $693a
    rst JumpTable
    ld a, [hl+]
    ld e, [hl]
    ld d, a
    ret


    inc d
    nop
    ld [de], a
    nop
    ld hl, $3c01
    nop
    dec c
    ld bc, $001c
    inc hl
    nop
    ld sp, $cd02
    add a
    inc hl
    ret nz

    ld a, $01
    ld [$cc17], a
    call Call_015_692f
    ld b, $04

jr_015_6958:
    call Call_015_6923
    call $2e08
    ret nz

    ld [hl], d
    inc l
    ld [hl], e
    ld l, $8b
    call $2077
    dec b
    jr nz, jr_015_6958

    ldh a, [$ad]
    ld d, a
    jp $239b


    ld a, [$cc30]
    or a
    ret nz

    ld a, [$ccba]
    inc a
    jp z, $3ad9

    xor a
    ld [$ccc8], a
    ld e, $44
    ld a, $01
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    adc [hl]
    ld l, c
    sub c
    ld l, c
    ld a, $01
    ld [de], a
    ld a, [$ccbc]
    or a
    ret z

    ld b, a
    ld e, $47
    ld a, [de]
    ld hl, $6a02
    rst $10
    ld a, [hl]
    cp b
    jr nz, jr_015_69a7

    ld a, [de]
    inc a
    ld [de], a
    jr jr_015_69ac

jr_015_69a7:
    ld e, $70
    ld a, $01
    ld [de], a

jr_015_69ac:
    ld bc, $2809
    ld e, $70
    ld a, [de]
    or a
    jr nz, jr_015_69d7

    ld bc, $280d
    ld e, $47
    ld a, [de]
    cp $08
    jr c, jr_015_69dc

    call $1956
    bit 5, a
    jr nz, jr_015_69dc

    set 7, [hl]
    call Call_015_6a18
    ld a, $4f
    call $3a52
    ld a, $4d
    ld bc, $280d
    jr jr_015_69d9

jr_015_69d7:
    ld a, $5a

jr_015_69d9:
    call $0c74

jr_015_69dc:
    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $4b
    ld a, [$ccbc]
    ld b, a
    and $f0
    ld [hl+], a
    inc l
    ld a, b
    swap a
    and $f0
    or $08
    ld [hl], a
    ld a, $81
    ld [$cca4], a
    xor a
    ld [$ccbc], a
    ret


    ld h, [hl]
    ld e, e
    ld b, e
    dec sp
    ld e, c
    inc hl
    ld [hl], e
    dec [hl]
    call $1956
    and $80
    jp z, $3ad9

    call Call_015_6a18
    jp $3ad9


Call_015_6a18:
    call $3ac6
    ret nz

    ld [hl], $e1
    inc l
    ld [hl], $01
    ld c, $57
    ld l, $4b
    jp $2077


    ld hl, $c904
    set 4, [hl]
    jp $3ad9


    xor a
    ld [$cc31], a
    jp $3ad9


    call $23b9
    jr nz, jr_015_6a54

    call $1432
    ld a, [$cca8]
    cp l
    jp nz, $3ad9

    call $239b
    call $26ac
    ld a, $81
    ld [$cca4], a
    ld [$cc02], a

jr_015_6a54:
    ld a, [$c4ab]
    or a
    ret nz

    ld bc, $0202
    call $184b
    xor a
    ld [$cca4], a
    ld [$cc02], a
    jp $3ad9


    ld a, [$cc66]
    cp $22
    jr nz, jr_015_6a77

    xor a
    ld [$cc66], a
    call $2d17

jr_015_6a77:
    jp $3ad9


    ld a, [$cd00]
    and $01
    ret z

    ld hl, $cf79

jr_015_6a83:
    ld a, [hl]
    cp $fe
    jr z, jr_015_6a8c

    cp $ff
    jr nz, jr_015_6a8e

jr_015_6a8c:
    ld [hl], $7b

jr_015_6a8e:
    dec l
    jr nz, jr_015_6a83

    jp $3ad9


    ld e, $44
    ld a, [de]
    or a
    jr z, jr_015_6aa3

    call $250c
    jp c, $3ad9

    jp $2646


jr_015_6aa3:
    call $1956
    and $40
    jp nz, $3ad9

    call $239b
    call $15e9
    call $1e27
    ld a, $1f
    call $24f5
    ld hl, $7f0a
    jp $24fe


    xor a
    ld hl, $cba8
    ld [hl+], a
    ld [hl-], a
    ld a, [$c6c9]
    and $0f
    call $0176
    ld [hl], a
    cp $04
    ld a, $01
    jr z, jr_015_6ad5

    dec a

jr_015_6ad5:
    ld [$cfc1], a
    ret


    ld bc, $0700
    jp $26fb


    ld e, $42
    ld a, [de]
    rst $00
    push af
    ld l, d
    dec l
    ld l, h
    dec l
    ld l, h
    dec l
    ld l, h
    dec l
    ld l, h
    dec l
    ld l, h
    dec l
    ld l, h
    dec l
    ld l, h
    dec l
    ld l, h
    ld e, $44
    ld a, [de]
    rst $00
    ld bc, $326b
    ld l, e
    ld b, h
    ld l, e
    ld l, d
    ld l, e
    ld a, $01
    ld [de], a
    call $15e9
    ld a, [$d00b]
    sub $0e
    ld e, $4b
    ld [de], a
    ld a, [$d00d]
    ld e, $4d
    ld [de], a
    call $29f4
    ld a, $f1
    call $0c74
    ld a, $77
    call $0c74
    ld b, $84
    call $24af
    ret nz

    ld l, $46
    ld e, l
    ld a, $78
    ld [hl], a
    ld [de], a
    jp $1e27


    ld a, $0f
    ld [$cc6b], a
    call $2387
    ret nz

    ld [hl], $40
    ld l, $50
    ld [hl], $14
    jp $239b


    call $1fdb
    call Call_015_6c94
    call $2387
    ret nz

    ld [hl], $78
    ld a, $10
    ld [$cc6b], a
    ld l, $4b
    ld [hl], $28
    ld l, $4d
    ld [hl], $50
    ld a, $8a
    call $0c74
    ld a, $03
    call $315c
    jp $239b


    call Call_015_6c94
    call Call_015_6ccb
    ld e, $45
    ld a, [de]
    rst $00
    adc b
    ld l, e
    sub h
    ld l, e
    db $d3
    ld l, e
    and $6b
    di
    ld l, e
    and $6b
    di
    ld l, e
    and $6b
    rlca
    ld l, h
    jr @+$6e

    call $2387
    ret nz

    ld [hl], $14
    inc l
    ld [hl], $08
    jp $23a0


    call $2387
    ret nz

    ld [hl], $14
    inc l
    dec [hl]
    ld b, [hl]
    call $3ac6
    ret nz

    ld [hl], $de
    call $21fd
    ld a, b
    ld bc, $6bc3
    call $007e
    ld a, [bc]
    ld l, $42
    ld [hl], a
    ld l, $49
    inc bc
    ld a, [bc]
    ld [hl], a
    ld e, $47
    ld a, [de]
    or a
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $78
    ret


    ld [$071a], sp
    ld d, $06
    ld [de], a
    dec b
    ld c, $04
    ld a, [bc]
    inc bc
    ld b, $02
    ld [bc], a
    ld bc, $cd1e
    add a
    inc hl
    ret nz

    ld [hl], $3c
    ld a, $01
    ld [$cfc0], a
    ld a, $20
    ld [$cfc1], a
    jp $23a0


    ld a, [$cc00]
    and $03
    jr nz, jr_015_6bfe

    ld hl, $cfc1
    dec [hl]
    jr jr_015_6bfe

    ld a, [$cc00]
    and $03
    jr nz, jr_015_6bfe

    ld hl, $cfc1
    inc [hl]

jr_015_6bfe:
    call $2387
    ret nz

    ld [hl], $3c
    jp $23a0


    ld hl, $cfc1
    inc [hl]
    ld a, $b4
    call $0c74
    ld a, $04
    call $312f
    jp $23a0


    ld hl, $cfc1
    inc [hl]
    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cbb3
    inc [hl]
    ld a, $08
    call $315c
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    add hl, sp
    ld l, h
    ld e, h
    ld l, h
    ld h, [hl]
    ld l, h
    ld l, [hl]
    ld l, h
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $46
    ld [hl], $10
    ld l, $50
    ld [hl], $50
    ld a, $98
    call $0c74
    call $2099
    ld l, $4d
    ld a, [hl]
    sub $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    call $15e9
    jp $1e15


    call $1fdb
    call $2387
    ret nz

    jp $239b


    ld a, [$cfc0]
    or a
    ret z

    jp $239b


    call $2142
    jp nc, $3ad9

    ld a, [$cc00]
    rrca
    ret c

    ld h, d
    ld l, $49
    inc [hl]
    ld a, [hl]
    and $1f
    ld [hl], a
    ld e, l
    or a
    call z, Call_015_6c8f
    ld bc, $2850
    ld a, [$cfc1]
    jp $20cc


Call_015_6c8f:
    ld a, $c9
    jp $0c74


Call_015_6c94:
    ld a, [$cc00]
    and $07
    ret nz

    ld bc, $8403
    call $24b1
    ret nz

    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld bc, $6cbb
    call $007e
    ld l, $4b
    ld a, [bc]
    add [hl]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    add [hl]
    ld [hl], a
    ret


    db $10
    ld [bc], a
    db $10
    cp $08
    dec b
    ld [$0cfb], sp
    ld [$f80c], sp
    ld b, $0b
    ld b, $f5

Call_015_6ccb:
    ld a, [$cc00]
    and $07
    ret nz

    ld a, [$cc00]
    and $38
    swap a
    rlca
    ld hl, $6ce2
    rst $10
    ld e, $4f
    ld a, [hl]
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
    ld a, [c]
    ld l, h
    rrca
    ld l, l
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $50
    ld [hl], $14
    ld l, $49
    ld [hl], $18
    ld l, $46
    ld [hl], $3c
    ld l, $42
    ld a, [hl]
    or a
    jp z, $1e03

    jp $1df1


    ld e, $45
    ld a, [de]
    rst $00
    ld hl, $286d
    ld l, l
    ld b, d
    ld l, l
    ld d, a
    ld l, l
    and a
    ld l, l
    cp [hl]
    ld l, l
    call z, $cd6d
    add a
    inc hl
    ret nz

    call $23a0
    call $25b8
    call $1fdb
    cp $68
    ret nz

    call $23a0
    ld l, $46
    ld [hl], $b4
    ld l, $42
    ld a, [hl]
    or a
    ret nz

    ld a, $05
    jp $25cb


    call $2387
    ret nz

    ld hl, $cfd0
    ld [hl], $01
    call $23a0
    ld l, $46
    ld [hl], $04
    inc l
    ld [hl], $01
    jr jr_015_6d9a

    ld h, d
    ld l, $46
    call $0237
    jr nz, jr_015_6d81

    call $23a0
    ld l, $46
    ld [hl], $64
    ld b, $14
    ld c, $04
    ld l, $42
    ld a, [hl]
    or a
    jr z, jr_015_6d74

    ld b, $3c
    ld c, $02

jr_015_6d74:
    ld l, $50
    ld [hl], b
    ld a, c
    call $25cb
    ld hl, $cfd0
    ld [hl], $02
    ret


jr_015_6d81:
    ld l, $42
    ld a, [hl]
    or a
    call z, $25b8
    ld l, $77
    dec [hl]
    ret nz

    ld l, $48
    ld a, [hl]
    xor $01
    ld [hl], a
    ld e, $42
    ld a, [de]
    add a
    add [hl]
    call $25cb

jr_015_6d9a:
    call $042f
    and $03
    swap a
    add $20
    ld e, $77
    ld [de], a
    ret


    call $2387
    ret nz

    ld b, $78
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_015_6db5

    ld b, $a0

jr_015_6db5:
    ld [hl], b
    ld hl, $cfd0
    ld [hl], $03
    jp $23a0


    call $2387
    ret nz

    ld [hl], $3c
    ld hl, $cfd0
    ld [hl], $04
    jp $23a0


    call $25b8
    call $1fdb
    call $2387
    ret nz

    ld hl, $cfdf
    ld [hl], $01
    ret


    ld e, $44
    ld a, [de]
    rst $00
    and $6d
    rst $28
    ld l, l
    cp b
    dec h
    ld a, $01
    ld [de], a
    call $15e9
    call $26ac
    ld a, [$cc49]
    or a
    jr nz, jr_015_6dfb

    call $1432
    cp $e6
    ret nz

jr_015_6dfb:
    call Call_015_6e06
    ld a, $02
    ld e, $44
    ld [de], a
    jp $1e30


Call_015_6e06:
    ld e, $42
    ld a, [de]
    or a
    ret nz

    call $1956
    ld a, [$cc49]
    cp $02
    jr c, jr_015_6e25

    cp $03
    ret nz

    ld a, [$cc4c]
    cp $a8
    ld hl, $c704
    jr z, jr_015_6e25

    ld hl, $c7f7

jr_015_6e25:
    set 3, [hl]
    ret


    ld e, $44
    ld a, [de]
    rst $00
    jr nc, jr_015_6e9c

    ld d, d
    ld l, [hl]
    ld a, $01
    ld [de], a
    call $15e9
    call $26ac
    ld bc, $fe00
    call $2358
    ld hl, $7f29
    call $24fe
    ld a, $bb
    call $0c74
    ld a, $00
    call $25cb
    jp $2686


    ld e, $45
    ld a, [de]
    rst $00
    ld e, [hl]
    ld l, [hl]
    ld a, [hl]
    ld l, [hl]
    sbc h
    ld l, [hl]
    cp h
    ld l, [hl]
    call Call_015_6ede
    ld e, $4f
    ld a, [de]
    cp $e0
    jr c, jr_015_6e6b

    jp $2686


jr_015_6e6b:
    call $23a0
    ld a, $39
    ld [$cc51], a
    call $0c74
    ld a, $01
    call $25cb
    jp $2686


    ld hl, $71ce
    ld e, $0a
    call $008a
    call $250c
    jr c, jr_015_6e8e

    jp $2686


jr_015_6e8e:
    call $23a0
    ld a, $74
    call $0c74
    ld bc, $fc00
    call $2358

jr_015_6e9c:
    call Call_015_6ede
    ld e, $4f
    ld a, [de]
    cp $b0
    jr c, jr_015_6ea9

    jp $2686


jr_015_6ea9:
    ld a, [$cc62]
    ld [$cc51], a
    call $0c74
    xor a
    ld [$cc02], a
    ld [$cca4], a
    call $23a0
    call $3ac6
    ret nz

    ld [hl], $90
    inc l
    ld [hl], $07
    ld l, $4b
    ld [hl], $7c
    ld l, $4d
    ld [hl], $78
    call $3ac6
    jr nz, jr_015_6edb

    ld [hl], $05
    ld a, $78
    ld l, $4b
    ld [hl+], a
    inc l
    ld [hl], a

jr_015_6edb:
    jp $3ad9


Call_015_6ede:
    ldh a, [$ac]
    add $0e
    ld l, a
    add $06
    ld e, a
    ld h, d
    jp $1fd3


    call $23b9
    jr z, jr_015_6ef8

    call $250c
    jp c, $3ad9

    jp $2646


jr_015_6ef8:
    call $1956
    and $40
    jp nz, $3ad9

    call $239b
    call $15e9
    call $1e27
    ld a, $33
    call $24f5
    ld hl, $7f33
    jp $24fe


    ld a, $01
    ld [$ccbb], a
    dec a
    ld [$ccbc], a
    ld b, $08

jr_015_6f1f:
    call Call_015_6f39
    call $3ac6
    jr nz, jr_015_6f2e

    ld [hl], $05
    ld l, $4b
    call $2077

jr_015_6f2e:
    push bc
    ld a, $f1
    call $3a52
    pop bc
    dec b
    jr nz, jr_015_6f1f

    ret


Call_015_6f39:
    ld a, b
    dec a
    ld hl, $6f41
    rst $10
    ld c, [hl]
    ret


    inc hl
    dec [hl]
    dec sp
    ld b, e
    ld e, c
    ld e, e
    ld h, [hl]
    ld [hl], e
    xor a
    ld [$cfd0], a
    ld a, $08
    call $1739
    ret nz

    ld a, $08
    call $1751
    ld a, $01
    ld [$cfd0], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld h, [hl]
    ld l, a
    add sp, $6f
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    rst $00
    ld a, b
    ld l, a
    adc d
    ld l, a
    cp [hl]
    ld l, a
    ld [c], a
    ld l, a
    call $1956
    bit 5, [hl]
    jp nz, $3ad9

    xor a
    ld [$cceb], a
    ld hl, $7f66
    jp $24fe


    ld e, $43
    ld a, [de]
    rlca
    ld hl, $6fae
    rst JumpTable
    ld a, [hl+]
    ld e, $49
    ld [de], a
    ld a, [hl+]
    ld e, $5c
    ld [de], a
    ld a, [hl+]
    ld e, $7b
    ld [de], a
    ld a, [hl+]
    ld e, $50
    ld [de], a
    ld h, d
    ld l, $46
    ld [hl], $3c
    ld l, $47
    ld [hl], $5a
    jp $1e15


    inc bc
    nop
    ld [$0b3c], sp
    ld [bc], a
    inc c
    jr z, jr_015_6fcc

    inc bc
    db $10
    jr z, @+$1f

    ld bc, $3c14
    ld a, $04
    call $248d
    ld h, d
    ld l, $4f
    ld [hl], $f0
    ld l, $46
    ld [hl], $00

jr_015_6fcc:
    ld l, $47
    ld [hl], $30
    ld bc, $e603
    call $24b1
    ret nz

    ld l, $56
    ldh a, [$ac]
    ld [hl+], a
    ldh a, [$ad]
    ld [hl], a
    jp $1e1e


    call $26ac
    jp $1e27


    ld e, $42
    ld a, [de]
    rst $00
    db $f4
    ld l, a
    ei
    ld l, a
    ld a, [de]
    ld [hl], b
    nop
    ld [hl], c
    call $250c
    jp c, $3ad9

    ret


    call $25b8
    ld e, $45
    ld a, [de]
    rst $00
    ld b, $70
    dec c
    ld [hl], b
    call $238c
    ret nz

    call $23a0
    call Call_015_7121
    call $1fdb
    call $2387
    jp z, $3ad9

    ret


    ld e, $45
    ld a, [de]
    rst $00
    inc l
    ld [hl], b
    ld l, a
    ld [hl], b
    add h
    ld [hl], b
    sub a
    ld [hl], b
    push de
    ld [hl], b
    pop hl
    ld [hl], b
    rst $28
    ld [hl], b
    ld a, [$cc00]
    and $03
    ret nz

    ld h, d
    ld l, $46
    inc [hl]
    ld a, [hl]
    and $0f
    ld hl, $705f
    rst $10
    ld a, [hl]
    add $f0
    ld e, $4f
    ld [de], a
    ld h, d
    ld l, $47
    dec [hl]
    ret nz

    call $2b57
    ld hl, $d008
    ld [hl], $00
    call $1e5a
    ld h, d
    ld l, $49
    ld [hl], a
    ld l, $50
    ld [hl], $14
    ld l, $45
    inc [hl]
    ret


    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    call $1e5a
    ld e, $49
    ld [de], a
    call $1fdb
    call $1c35
    ret nc

    ld e, $67
    ld a, $06
    ld [de], a
    jp $23a0


    ld c, $08
    call $1f04
    jr z, jr_015_708f

    call $1bee
    ret nc

jr_015_708f:
    ld h, d
    ld l, $47
    ld [hl], $1e
    jp $23a0


    call $238c
    ret nz

    ld a, $04
    ld [$cc6a], a
    xor a
    ld [$cc6b], a
    call $23a0
    ld a, [$d00b]
    sub $0e
    ld l, $4b
    ld [hl+], a
    inc l
    ld a, [$d00d]
    sub $04
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    ld [hl], a
    ld b, $00
    ld c, $71
    call $184b
    call $1956
    set 5, [hl]
    ld a, $06
    call $0c74
    ld c, $07
    ld a, $07
    call $16eb
    jp $31d4


    call $1832
    call $23a0
    ld hl, $7f6a
    jp $24fe


    call $250c
    ret nc

    call $23a0
    ld l, $47
    ld [hl], $14
    jp $31fb


    ld a, [$c4ab]
    or a
    ret nz

    call $238c
    ret nz

    ld a, $01
    ld [$cceb], a
    jp $3ad9


    ld a, [$cceb]
    or a
    jp nz, $3ad9

    ld a, $00
    call $211e
    call $222f
    call $25b8
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    ld l, $5a
    ld a, $80
    xor [hl]
    ld [hl], a
    ret


Call_015_7121:
    ld h, d
    ld l, $7b
    dec [hl]
    ret nz

    ld l, $7b
    ld [hl], $10
    ld bc, $8401
    jp $24b1


    ld hl, $d008
    ld [hl], a
    ld a, $80
    jp $29f5


    ld bc, $715e
    xor a

jr_015_713d:
    ldh [$8b], a
    call $3ac6
    ret nz

    ld [hl], $e6
    inc l
    ld [hl], $01
    inc l
    ldh a, [$8b]
    ld [hl], a
    ld l, $4b
    ld a, [bc]
    ld [hl], a
    inc bc
    ld l, $4d
    ld a, [bc]
    ld [hl], a
    inc bc
    ldh a, [$8b]
    inc a
    cp $04
    jr nz, jr_015_713d

    ret


    ld a, b
    jr jr_015_7169

    jr jr_015_716b

    adc b
    ld a, b
    adc b
    ld e, $44
    ld a, [de]

jr_015_7169:
    rst $00
    ld l, [hl]

jr_015_716b:
    ld [hl], c
    adc c
    ld [hl], c
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $36
    call $24f5
    ld e, $7e
    ld a, $00
    ld [de], a
    ld hl, $5779
    call $24fe
    ld a, $02
    call $25cb
    call $250c
    jp $2646


    rst JumpTable
    ld [hl], d
    pop hl
    ld [hl], d
    inc bc
    ld [hl], e
    rlca
    ld [hl], e
    add hl, bc
    ld [hl], e
    rst JumpTable
    ld [hl], d
    rst JumpTable
    ld [hl], d
    dec bc
    ld [hl], e
    rst JumpTable
    ld [hl], d
    rst JumpTable
    ld [hl], d
    rst JumpTable
    ld [hl], d
    rlca
    ld [hl], e
    rst JumpTable
    ld [hl], d
    pop hl
    ld [hl], d
    dec bc
    ld [hl], e
    rst JumpTable
    ld [hl], d
    pop hl
    ld [hl], d
    dec de
    ld [hl], e
    inc hl
    ld [hl], e
    dec d
    ld [hl], e
    pop hl
    ld [hl], d
    pop hl
    ld [hl], d
    rlca
    ld [hl], e
    rst JumpTable
    ld [hl], d
    dec bc
    ld [hl], e
    dec h
    ld [hl], e
    dec bc
    ld [hl], e
    dec bc
    ld [hl], e
    daa
    ld [hl], e
    rst JumpTable
    ld [hl], d
    dec bc
    ld [hl], e
    dec bc
    ld [hl], e
    inc hl
    ld [hl], e
    add hl, de
    ld [hl], e
    daa
    ld [hl], e
    dec hl
    ld [hl], e
    dec bc
    ld [hl], e
    rst JumpTable
    ld [hl], d
    dec l
    ld [hl], e
    cpl
    ld [hl], e
    dec bc
    ld [hl], e
    ld sp, $0b73
    ld [hl], e
    rst JumpTable
    ld [hl], d
    dec bc
    ld [hl], e
    ld b, c
    ld [hl], e
    ld c, c
    ld [hl], e
    rst JumpTable
    ld [hl], d
    pop hl
    ld [hl], d
    dec h
    ld [hl], e
    ld c, e
    ld [hl], e
    ld d, c
    ld [hl], e
    rst JumpTable
    ld [hl], d
    rst JumpTable
    ld [hl], d
    rst JumpTable
    ld [hl], d
    rst JumpTable
    ld [hl], d
    add hl, de
    ld [hl], e
    ld d, e
    ld [hl], e
    dec h
    ld [hl], e
    ld e, c
    ld [hl], e
    ld e, e
    ld [hl], e
    ld h, c
    ld [hl], e
    ld h, a
    ld [hl], e
    ld l, a
    ld [hl], e
    dec bc
    ld [hl], e
    dec bc
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], e
    daa
    ld [hl], e
    dec bc
    ld [hl], e
    dec h
    ld [hl], e
    dec bc
    ld [hl], e
    ld a, a
    ld [hl], e
    add l
    ld [hl], e
    add a
    ld [hl], e
    ld e, c
    ld [hl], e
    adc c
    ld [hl], e
    ld e, c
    ld [hl], e
    adc l
    ld [hl], e
    adc a
    ld [hl], e
    sub c
    ld [hl], e
    sub l
    ld [hl], e
    sbc a
    ld [hl], e
    and a
    ld [hl], e
    ld e, c
    ld [hl], a
    ld e, e
    ld [hl], a
    ld h, e
    ld [hl], a
    and a
    ld [hl], a
    ld [hl], c
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, c
    ld [hl], a
    adc e
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, c
    ld [hl], a
    and a
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, e
    ld [hl], a
    or e
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, e
    ld [hl], a
    sub e
    ld [hl], a
    and a
    ld [hl], a
    or a
    ld [hl], a
    ld e, e
    ld [hl], a
    ld e, e
    ld [hl], a
    cp e
    ld [hl], a
    ld e, c
    ld [hl], a
    and a
    ld [hl], a
    push bc
    ld [hl], a
    cp l
    ld [hl], a
    cp l
    ld [hl], a
    push bc
    ld [hl], a
    ld e, c
    ld [hl], a
    or e
    ld [hl], a
    call $a777
    ld [hl], a
    push de
    ld [hl], a
    db $dd
    ld [hl], a
    and a
    ld [hl], a
    or e
    ld [hl], a
    ld e, c
    ld [hl], a
    push hl
    ld [hl], a
    rst $30
    ld [hl], a
    add hl, bc
    ld a, b
    dec c
    ld a, b
    dec e
    ld a, b
    ld e, c
    ld [hl], a
    ld hl, $2978
    ld a, b
    ld sp, $5978
    ld [hl], a
    ld e, e
    ld [hl], a
    push bc
    ld [hl], a
    add hl, sp
    ld a, b
    ccf
    ld a, b
    ld e, c
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, c
    ld [hl], a
    push de
    ld [hl], a
    ld c, c
    ld a, b
    push bc
    ld [hl], a
    ld c, a
    ld a, b
    push hl
    ld [hl], a
    ld d, e
    ld a, b
    ld h, c
    ld a, b
    ld l, e
    ld a, b
    or e
    ld [hl], a
    ld a, c
    ld a, b
    add c
    ld a, b
    add a
    ld a, b
    sbc a
    ld a, b
    dec e
    ld a, b
    push bc
    ld [hl], a
    and e
    ld a, b
    and a
    ld a, b
    cp l
    ld a, b
    and a
    ld [hl], a
    pop bc
    ld a, b
    push bc
    ld a, b
    pop bc
    ld a, b
    call $dd78
    ld a, b
    db $e3
    ld a, b
    db $eb
    ld a, b
    dec b
    ld a, c
    dec d
    ld a, c
    rst $00
    ld [hl], e
    rst $00
    ld [hl], e
    call z, $c773
    ld [hl], e
    rst $00
    ld [hl], e
    rst $00
    ld [hl], e
    call z, $cc73
    ld [hl], e
    call z, $cc73
    ld [hl], e
    call z, $cc73
    ld [hl], e
    call z, $c773
    ld [hl], e
    rst $00
    ld [hl], e
    rst $00
    ld [hl], e
    pop de
    ld [hl], e
    sub $73
    db $db
    ld [hl], e
    di
    ld [hl], e
    rst $00
    ld [hl], e
    ld c, $74
    rst $00
    ld [hl], e
    call z, $d173
    ld [hl], e
    sub $73
    add l
    ld [hl], h
    rst $00
    ld [hl], e
    call z, $3873
    ld [hl], h
    rst $00
    ld [hl], e
    call z, Call_015_4673
    ld [hl], h
    ld d, c
    ld [hl], h
    ld h, e
    ld [hl], h
    ld [hl], a
    ld [hl], h
    sub e
    ld [hl], h
    sbc e
    ld [hl], h
    and e
    ld [hl], h
    xor [hl]
    ld [hl], h
    db $dd
    ld [hl], h
    rst $00
    ld [hl], e
    call z, $d173
    ld [hl], e
    sub $73
    ei
    ld [hl], h
    nop
    ld [hl], l
    dec b
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    ld [de], a
    ld [hl], l
    rrca
    ld [hl], l
    inc hl
    ld [hl], l
    jr nz, jr_015_73be

    ld sp, $c775
    ld [hl], e
    call z, $4973
    ld [hl], l
    ld c, a
    ld [hl], l
    sub e
    ld [hl], h
    ld h, b
    ld [hl], l
    pop de
    ld [hl], e
    ld l, b
    ld [hl], l
    ld [hl], b
    ld [hl], l
    ld a, e
    ld [hl], l
    add [hl]
    ld [hl], l
    sub c
    ld [hl], l
    sbc c
    ld [hl], l
    or b
    ld [hl], l
    rst $00
    ld [hl], e
    cp [hl]
    ld [hl], l
    ret


    ld [hl], l
    ei
    ld [hl], h
    jp nc, $dd75

    ld [hl], l
    ld a, [c]
    ld [hl], l
    pop de
    ld [hl], e
    add [hl]
    ld [hl], l
    inc b
    db $76
    rrca
    db $76
    ld a, [de]
    db $76
    dec h
    db $76
    ld d, c
    ld [hl], h
    ld [hl], $76
    add hl, sp
    db $76
    ld b, c
    db $76
    ld l, b
    ld [hl], l
    ld c, h
    db $76
    ld d, h
    db $76
    ld [hl], c
    db $76
    add l
    db $76
    sub c
    db $76
    sbc l
    db $76
    xor e
    db $76
    or a
    db $76
    jp $cf76


    db $76
    sub e
    ld [hl], h
    sbc e
    ld [hl], h
    jp hl


    db $76
    pop af
    db $76
    ld sp, hl
    db $76
    dec b
    ld [hl], a
    ld de, $1d77
    ld [hl], a
    ld sp, hl
    db $76
    dec b
    ld [hl], a
    ld de, $1d77
    ld [hl], a
    add hl, hl
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld b, c
    ld [hl], a
    ld c, l

jr_015_73be:
    ld [hl], a
    add hl, hl
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld b, c
    ld [hl], a
    ld c, l
    ld [hl], a
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
    ld a, a
    inc b
    nop
    rst $38
    db $fc
    ld a, a
    ld b, $00
    rst $38
    db $fc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$0200], sp
    ld a, [bc]
    nop
    ld a, a
    ld a, [bc]
    rst $38
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [$000c], sp
    inc b
    inc b
    nop
    inc b
    ld b, $00
    inc b
    ld [$0200], sp
    ld a, [bc]
    nop
    ld a, a
    ld a, [bc]
    rst $38
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    ld [$0006], sp
    ld [$0008], sp
    ld [$000a], sp
    ld [bc], a
    inc c
    nop
    ld b, $0e
    nop
    ld b, $10
    nop
    inc b
    ld [de], a
    nop
    inc b
    inc d
    nop
    inc b
    ld d, $00
    inc b
    jr jr_015_7435

jr_015_7435:
    ld a, a
    jr @+$01

    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
    inc b
    ld b, $00
    rst $38
    di
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld [$ff00], sp
    or $04
    ld a, [bc]
    nop
    inc b
    inc c
    ld [bc], a
    inc b
    ld c, $04
    inc b
    db $10
    ld b, $04
    ld [de], a
    ld [$127f], sp
    rst $38
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    inc bc
    ld b, $00
    inc bc
    ld [$0300], sp
    ld a, [bc]
    nop
    rst $38
    or $02
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    ld [bc], a
    ld b, $00
    rst $38
    di
    ld b, $00
    nop
    ld b, $02
    nop
    ld b, $04
    nop
    ld b, $06
    nop
    rst $38
    di
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    inc b
    inc b
    nop
    inc b
    ld b, $00
    rst $38
    ld sp, hl
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    nop
    rst $38
    or $02
    inc c
    nop
    ld [bc], a
    ld c, $00
    ld [bc], a
    stop
    ld [bc], a
    inc c
    nop
    ld [bc], a
    ld c, $00
    ld [bc], a
    ld a, [bc]
    ld bc, $0602
    ld bc, $0802
    ld bc, $0a02
    ld bc, $0602
    ld bc, $0802
    ld bc, $0a02
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    or $01
    nop
    nop
    ld bc, $1002
    ld bc, $2004
    ld bc, $3006
    ld [bc], a
    ld [$0240], sp
    ld a, [bc]
    ld b, b
    inc b
    inc c
    jp $0e04


    call nz, $1004
    ld b, [hl]
    ld a, a
    db $10
    rst $38
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
    ld a, a
    ld c, $00
    rst $38
    db $fc
    inc a
    nop
    nop
    ld h, h
    nop
    nop
    rrca
    ld [bc], a
    nop
    inc b
    nop
    ld bc, $0001
    ld [bc], a
    rst $38
    di
    inc a
    inc b
    nop
    ld h, h
    inc b
    nop
    rrca
    ld b, $00
    inc b
    inc b
    ld bc, $0401
    ld [bc], a
    rst $38
    di
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    ld e, d
    ld b, $01
    ld a, [bc]
    inc b
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    nop
    ld a, [bc]
    nop
    nop
    ld a, a
    nop
    rst $38
    ld [$0004], sp
    ld a, a
    inc b
    rst $38
    inc b
    nop
    nop
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
    ldh a, [rDIV]
    ld [bc], a
    nop
    inc b
    inc b
    nop
    rst $38
    ld sp, hl
    ld [$0000], sp
    ld [$0002], sp
    rst $38
    ld sp, hl
    ld [bc], a
    inc c
    nop
    ld [bc], a
    ld c, $00
    ld [bc], a
    stop
    rst $38
    or $02
    ld b, $00
    ld [bc], a
    ld [$0200], sp
    ld a, [bc]
    nop
    rst $38
    or $02
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    nop
    rst $38
    or $04
    nop
    nop
    inc b
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    inc b
    nop
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
    or $04
    ld b, $00
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    nop
    inc b
    nop
    nop
    rst $38
    ld sp, hl
    inc bc
    ld [bc], a
    nop
    inc bc
    inc b
    ld bc, $067f
    ld [bc], a
    rst $38
    db $fc
    inc bc
    inc b
    ld bc, $0203
    nop
    ld a, a
    ld [bc], a
    rst $38
    ld d, b
    nop
    nop
    inc b
    ld [bc], a
    nop
    inc b
    nop
    ld bc, $f9ff
    inc b
    inc b
    ld [bc], a
    inc b
    ld b, $06
    inc bc
    inc b
    ld b, $07
    ld [$080a], sp
    ld a, [bc]
    rrca
    ld [$000c], sp
    ld a, a
    inc c
    rst $38
    ld [$0000], sp
    ld [$0102], sp
    inc e
    inc b
    ld [bc], a
    ld c, $02
    inc bc
    ld [$0400], sp
    ld a, a
    nop
    rst $38
    inc b
    ld [de], a
    nop
    inc b
    inc d
    nop
    inc b
    ld d, $00
    rst $38
    or $04
    ld b, $00
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    rst $38
    or $04
    inc c
    nop
    inc b
    ld c, $00
    inc b
    stop
    rst $38
    or $04
    nop
    nop
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
    ldh a, [$7f]
    inc d
    nop
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    rst $38
    ld sp, hl
    ld [$0000], sp
    ld [$0002], sp
    ld [$0004], sp
    rst $38
    or $08
    inc b
    nop
    ld [$0006], sp
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
    ld [bc], a
    ld b, $00
    ld [bc], a
    ld [$0200], sp
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    nop
    ld [bc], a
    ld a, [bc]
    nop
    ld a, a
    ld c, $01
    rst $38
    db $fc
    ld a, b
    nop
    nop
    ld b, $02
    nop
    ld b, $04
    nop
    inc a
    nop
    nop
    ld b, $02
    nop
    ld b, $04
    nop
    rst $38
    db $ed
    ld [bc], a
    nop
    nop
    inc b
    nop
    add h
    ld [$0804], sp
    ld a, a
    inc b
    rst $38
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld [bc], a
    add h
    ld [$0806], sp
    ld a, a
    ld b, $ff
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
    ld b, $00
    rst $38
    di
    inc b
    inc d
    nop
    inc b
    ld d, $00
    inc b
    jr jr_015_76b4

jr_015_76b4:
    ld a, a
    jr @+$01

    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    inc b
    inc c
    nop
    ld a, a
    inc c
    rst $38
    inc b
    ld c, $00
    inc b
    stop
    inc b
    ld [de], a
    nop
    ld a, a
    ld [de], a
    rst $38
    inc b
    ld a, [de]
    nop
    inc b
    inc e
    nop
    inc b
    ld e, $00
    inc b
    jr nz, jr_015_76db

jr_015_76db:
    inc b
    ld [hl+], a
    nop
    inc b
    inc h
    nop
    inc b
    ld h, $00
    inc b
    jr z, jr_015_76e7

jr_015_76e7:
    rst $38
    ld sp, hl
    inc b
    ld [$0400], sp
    ld a, [bc]
    nop
    rst $38
    ld sp, hl
    inc b
    inc c
    nop
    inc b
    ld c, $00
    rst $38
    ld sp, hl
    ld b, $0a
    nop
    ld b, $08
    nop
    dec b
    ld b, $00
    ld bc, $ff06
    ld b, $16
    nop
    ld b, $14
    nop
    dec b
    ld [de], a
    nop
    ld bc, $ff12
    ld b, $04
    nop
    ld b, $02
    nop
    dec b
    nop
    nop
    ld bc, $ff00
    ld b, $10
    nop
    ld b, $0e
    nop
    ld b, $0c
    nop
    ld bc, $ff0c
    ld b, $06
    nop
    ld b, $08
    nop
    ld b, $0a
    nop
    ld bc, $ff0a
    ld b, $12
    nop
    ld b, $14
    nop
    dec b
    ld d, $00
    ld bc, $ff16
    ld b, $00
    nop
    ld b, $02
    nop
    dec b
    inc b
    nop
    ld bc, $ff04
    ld b, $0c
    nop
    ld b, $0e
    nop
    dec b
    stop
    ld bc, $ff10
    ld b, l
    ld [hl], e
    ld b, l
    ld [hl], e
    ld c, d
    ld [hl], e
    ld h, l
    ld [hl], h
    sbc a
    ld [hl], e
    rst $20
    ld [hl], l
    ld hl, sp+$75
    add hl, bc
    db $76
    add hl, bc
    db $76
    ld sp, hl
    ld [hl], e
    dec e
    ld [hl], h
    add hl, hl
    ld a, c
    ld d, b
    ld a, e
    xor $7a
    ld [$dc79], sp
    ld [hl], a
    ld e, h
    ld [hl], h
    add hl, hl
    ld a, c
    ld c, d
    ld a, c
    ld l, e
    ld a, c
    sub c
    ld a, e
    rra
    ld a, e
    adc h
    ld a, c
    push af
    ld [hl], a
    dec e
    ld [hl], h
    ld b, l
    ld [hl], e
    push de
    ld [hl], e
    ld e, b
    ld [hl], l
    ld a, [de]
    db $76
    ld b, l
    ld [hl], e
    ld h, $74
    cpl
    ld [hl], h
    jr c, jr_015_780f

    ld b, c
    ld [hl], h
    dec hl
    db $76
    inc a
    db $76
    ld c, l
    db $76
    ld e, [hl]
    db $76
    ld l, a
    db $76
    sbc a
    ld [hl], e
    xor b
    ld [hl], e
    cp d
    ld [hl], e
    push de
    ld [hl], e
    sbc $73
    rst $20
    ld [hl], e
    ld b, l
    ld [hl], e
    ld h, l
    ld [hl], h
    sbc a
    ld [hl], e
    ld h, l
    ld [hl], l
    ld c, $78
    ld l, b
    ld [hl], e
    sub d
    ld [hl], h
    ld [hl], a
    ld [hl], e
    ld h, l
    ld [hl], h
    jp $cc73


    ld [hl], e
    jp $cc73


    ld [hl], e
    inc d
    ld [hl], h
    sub d
    ld [hl], h
    ld sp, hl
    ld [hl], e
    ld h, l
    ld [hl], h
    push de
    ld [hl], e
    ld e, c
    ld [hl], e
    ldh a, [$73]
    ld b, l
    ld [hl], e
    ld h, l
    ld [hl], h
    cp a
    ld [hl], h
    sub d
    ld [hl], h
    jp c, $f974

    ld [hl], e
    ld [bc], a
    ld [hl], h
    dec bc
    ld [hl], h
    push de
    ld [hl], e
    sbc $73
    rst $20
    ld [hl], e
    ld b, l
    ld [hl], e
    ld c, a
    ld [hl], e
    ld d, h
    ld [hl], e
    ld b, l
    ld [hl], e
    xor l
    ld [hl], h
    ld [hl], d
    ld [hl], l
    add b
    db $76
    or d
    ld [hl], a
    rst $00
    ld [hl], a
    sub c
    db $76
    and d
    db $76
    ld a, a
    ld [hl], l
    ld b, l
    ld [hl], e
    ld e, c
    ld [hl], e
    ld b, l
    ld [hl], e

jr_015_780f:
    ld e, [hl]
    ld [hl], e
    ld l, b
    ld [hl], e
    add c
    ld [hl], e
    adc e
    ld [hl], e
    add [hl]
    ld [hl], e
    ld [hl], a
    ld [hl], e
    ld h, e
    ld [hl], e
    sbc a
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    cp a
    ld [hl], h
    sub d
    ld [hl], h
    ret z

    ld [hl], h
    ld h, l
    ld [hl], h
    adc c
    ld [hl], h
    pop de
    ld [hl], h
    or [hl]
    ld [hl], h
    db $e3
    ld [hl], h
    ld b, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld sp, hl
    ld [hl], e
    dec e
    ld [hl], h
    ld l, b
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld b, l
    ld [hl], e
    adc h
    ld [hl], l
    sbc c
    ld [hl], l
    or e
    db $76
    and [hl]
    ld [hl], l
    or e
    ld [hl], l
    ld b, l
    ld [hl], e
    ld sp, hl
    ld [hl], e
    dec e
    ld [hl], h
    ld b, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld b, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld a, h
    ld [hl], e
    rlca
    ld [hl], l
    db $10
    ld [hl], l
    add hl, de
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    ld b, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ret nz

    ld [hl], l
    call nz, $2b76
    ld [hl], l
    ld h, l
    ld [hl], h
    add b
    ld [hl], h
    ld c, d
    ld [hl], h
    ld d, e
    ld [hl], h
    xor l
    ld a, c
    adc $79
    rst $28
    ld a, c
    inc d
    ld [hl], h
    ld h, l
    ld [hl], h
    ld sp, hl
    ld [hl], e
    sub d
    ld [hl], h
    ld b, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld l, b
    ld [hl], e
    ld sp, hl
    ld [hl], e
    ld [bc], a
    ld [hl], h
    dec bc
    ld [hl], h
    ld h, l
    ld [hl], h
    ld l, [hl]
    ld [hl], h
    ld [hl], a
    ld [hl], h
    sub d
    ld [hl], h
    sbc e
    ld [hl], h
    and h
    ld [hl], h
    ld l, b
    ld [hl], e
    ld l, l
    ld [hl], e
    ld [hl], d
    ld [hl], e
    sbc a
    ld [hl], e
    or c
    ld [hl], e
    daa
    ld a, b
    ld b, l
    ld [hl], e
    ld h, l
    ld [hl], h
    cp a
    ld [hl], h
    db $ec
    ld [hl], h
    push af
    ld [hl], h
    cp $74
    dec hl
    db $76
    push de
    db $76
    and $76
    ld e, [hl]
    db $76
    rst $30
    db $76
    ld b, l
    ld [hl], e
    ld h, l
    ld [hl], h
    sub d
    ld [hl], h
    sbc a
    ld [hl], e
    push de
    ld [hl], e
    ld l, b
    ld [hl], e
    dec e
    ld [hl], h
    ld b, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld [$1977], sp
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    dec sp
    ld [hl], a
    adc e
    ld [hl], e
    ld sp, hl
    ld [hl], e
    dec e
    ld [hl], h
    jp $4c73


    ld [hl], a
    ld e, l
    ld [hl], a
    ld l, [hl]
    ld [hl], a
    call $da75
    ld [hl], l
    db $10
    ld a, d
    dec a
    ld a, d
    ld l, d
    ld a, d
    adc e
    ld a, d
    xor h
    ld a, d
    call Call_015_7f7a
    ld [hl], a
    sub b
    ld [hl], a
    and c
    ld [hl], a
    ld b, b
    ld a, b
    ld e, c
    ld a, b
    ld [hl], d
    ld a, b
    adc e
    ld a, b
    and h
    ld a, b
    cp l
    ld a, b
    ld b, l
    ld [hl], e
    ld c, a
    ld [hl], e
    push de
    ld [hl], e
    sbc $73
    ld sp, hl
    ld [hl], e
    ld [bc], a
    ld [hl], h
    sub $78
    rst $28
    ld a, b
    ld b, l
    ld [hl], e
    push de
    ld [hl], e
    ld sp, hl
    ld [hl], e
    add c
    ld [hl], e
    adc e
    ld [hl], e
    sub b
    ld [hl], e
    sub l
    ld [hl], e
    inc [hl]
    ld [hl], l
    dec a
    ld [hl], l
    sbc d
    ld [hl], e
    ld b, [hl]
    ld [hl], l
    ld c, a
    ld [hl], l
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d

Call_015_7f7a:
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX

    ld a, [$cd00]
    or a
    call nz, Call_001_400b
    xor a
    ldh [rSVBK], a
    ret


Call_001_400b:
    ld a, [$cd04]
    rst $00
    dec de
    ld b, b
    ld [hl], l
    ld b, b
    dec b
    ld b, c
    and b
    ld b, d
    inc c
    ld b, e
    inc l
    ld b, e
    xor a
    ld [$c4ae], a
    call Call_001_42cf
    ld a, $01
    ld [$cd04], a
    call $12ae
    ld b, $01
    ld a, [$cc49]
    and $04
    jr z, jr_001_4035

    ld b, $00

jr_001_4035:
    ld a, b
    ld [$cd01], a
    xor $01
    ld [$cc4a], a
    ld a, [$cd01]
    add a
    ld hl, $406d
    rst JumpTable
    ld de, $cd0a
    ld b, $04

jr_001_404b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_404b

    ld a, [$cd0a]
    sub $14
    add a
    add a
    add a
    ld [$cd0e], a
    ld a, [$cd0b]
    sub $10
    add a
    add a
    add a
    ld [$cd0f], a
    call Call_001_5d46
    jp $1315


    ld e, $16
    ld [$14a9], a
    db $10
    sbc d
    ld a, c
    ld a, [$cd03]
    inc a
    ld [$cd03], a
    ld a, [$cd05]
    rst $00
    adc b
    ld b, b
    and c
    ld b, b
    pop bc
    ld b, b
    push af
    ld b, b
    ld a, [$c4ab]
    or a
    ret nz

    ld a, $02
    ld [$cd00], a
    ld a, $01
    ld [$cd05], a
    xor a
    ld [$cd06], a
    ld [$cd03], a
    jp $128c


    ld a, [$cd09]
    ld b, a
    ldh a, [$aa]
    add b
    add $50
    rrca
    rrca
    rrca
    dec a
    and $1f
    ld [$cd10], a
    inc a
    ld [$cd12], a
    xor a
    ld [$cd13], a
    ld a, $02
    ld [$cd05], a
    ret


    ld a, [$cd13]
    cp $20
    jr z, jr_001_40f5

    inc a
    ld [$cd13], a
    ld a, [$cd03]
    rrca
    jr c, jr_001_40e0

    ld a, [$cd10]
    ldh [$8b], a
    ld b, a
    dec a
    and $1f
    ld [$cd10], a
    jr jr_001_40ec

jr_001_40e0:
    ld a, [$cd12]
    ldh [$8b], a
    ld b, a
    inc a
    and $1f
    ld [$cd12], a

jr_001_40ec:
    ld e, b
    call Call_001_469b
    ldh a, [$8b]
    jp Jump_001_4595


jr_001_40f5:
    call $197b
    ld a, $02
    ld [$cd04], a
    xor a
    ld [$cd05], a
    ld [$cd06], a
    ret


    ld a, [$cc77]
    add a
    jr c, jr_001_4112

    jr z, jr_001_4112

    ld a, $04
    ld [$cd15], a

jr_001_4112:
    ld a, [$cd02]
    bit 7, a
    jr z, jr_001_411f

    and $7f
    ld c, a
    jp Jump_001_41a1


jr_001_411f:
    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld a, $05
    cp [hl]
    jr nc, jr_001_413e

    ld a, [$cd0d]
    cp [hl]
    jr c, jr_001_4149

jr_001_4130:
    ld l, $0d
    ld a, $05
    cp [hl]
    jr nc, jr_001_4153

    ld a, [$cd0c]
    cp [hl]
    jr c, jr_001_415b

    ret


jr_001_413e:
    inc a
    ld [hl], a
    ld b, $40
    ld c, $00
    call Call_001_4160
    jr jr_001_4130

jr_001_4149:
    ld [hl], a
    ld b, $80
    ld c, $02
    call Call_001_4160
    jr jr_001_4130

jr_001_4153:
    inc a
    ld [hl], a
    ld b, $20
    ld c, $03
    jr jr_001_4160

jr_001_415b:
    ld [hl], a
    ld b, $10
    ld c, $01

Call_001_4160:
jr_001_4160:
    ld a, [$d000]
    or a
    ret z

    ld a, [$ccab]
    or a
    ret nz

    ld a, [$cd15]
    or a
    jr z, jr_001_4175

    dec a
    ld [$cd15], a
    ret


jr_001_4175:
    ld a, [$d101]
    cp $0a
    jr z, jr_001_41a1

    ld a, [$ccac]
    add a
    ret c

    ld a, [$cc77]
    add a
    jr c, jr_001_41a1

    ld a, [$d02d]
    or a
    ret nz

    ld a, [$ccac]
    add a
    jr nz, jr_001_4197

    call $2949
    and b
    ret z

jr_001_4197:
    call $21b4
    rrca
    call c, Call_001_41b0
    and $03
    ret nz

Jump_001_41a1:
jr_001_41a1:
    ld a, $04
    ld [$cd00], a
    ld a, $03
    ld [$cd04], a
    ld a, c
    ld [$cd02], a
    ret


Call_001_41b0:
    ld a, [$cc48]
    rrca
    jr c, jr_001_41bc

    ld a, $2e
    call $1717
    ret c

jr_001_41bc:
    ld a, $ff
    ret


    ld hl, $cd00
    res 7, [hl]
    ld a, [$cc49]
    cp $04
    jr nc, jr_001_41d1

    xor a
    ldh [$a8], a
    ldh [$aa], a
    ret


jr_001_41d1:
    ld a, [$cd17]
    ld d, a
    ld a, [$cd16]
    add $0b
    ld e, a
    ld hl, $ffa8
    ld a, [de]
    sub $40
    jr nc, jr_001_41e4

    xor a

jr_001_41e4:
    cp $30
    jr c, jr_001_41ea

    ld a, $30

jr_001_41ea:
    call Call_001_41fe
    ld hl, $ffaa
    inc de
    inc de
    ld a, [de]
    sub $50
    jr nc, jr_001_41f8

    xor a

jr_001_41f8:
    cp $50
    jr c, jr_001_41fe

    ld a, $50

Call_001_41fe:
jr_001_41fe:
    ld b, a
    ld a, [$cba0]
    or a
    jr nz, jr_001_420e

    ld a, [hl]
    cp b
    ret z

    jr c, jr_001_420d

    dec [hl]
    jr jr_001_420e

jr_001_420d:
    inc [hl]

jr_001_420e:
    ld hl, $cd00
    set 7, [hl]
    ret


Call_001_4214:
    ld a, [$cc48]
    ld d, a
    ld e, $0b
    ld a, [de]
    sub $40
    jr nc, jr_001_4220

    xor a

jr_001_4220:
    ld hl, $cd0f
    cp [hl]
    jr c, jr_001_4227

    ld a, [hl]

jr_001_4227:
    ldh [$a8], a
    ld e, $0d
    ld a, [de]
    sub $50
    jr nc, jr_001_4231

    xor a

jr_001_4231:
    ld hl, $cd0e
    cp [hl]
    jr c, jr_001_4238

    ld a, [hl]

jr_001_4238:
    ldh [$aa], a
    ret


    ld a, [$cc02]
    or a
    jr nz, jr_001_4246

    ld a, [$cca7]
    or a
    ret nz

jr_001_4246:
    ld a, [$cd18]
    or a
    jr z, jr_001_425a

    call Call_001_426e
    ld a, [$c48c]
    add [hl]
    ld [$c48c], a
    ld hl, $cd18
    dec [hl]

jr_001_425a:
    ld a, [$cd19]
    or a
    ret z

    call Call_001_426e
    ld a, [$c48d]
    add [hl]
    ld [$c48d], a
    ld hl, $cd19
    dec [hl]
    ret


Call_001_426e:
    ld a, [$ccae]
    add a
    ld hl, $427d
    rst JumpTable
    call $041a
    and $03
    rst $10
    ret


    cp $ff
    ld bc, $ff02
    rst $38
    ld bc, $fd01
    db $fd
    inc bc
    inc bc

Jump_001_4289:
    ldh a, [$a8]
    ld b, a
    ld a, [$cd08]
    add b
    sub $10
    ld [$c48c], a
    ldh a, [$aa]
    ld b, a
    ld a, [$cd09]
    add b
    ld [$c48d], a
    ret


    ld a, [$cd00]
    bit 7, a
    ret nz

    cp $08
    ret nz

    call $1315
    call Call_001_42cf
    ld b, $05
    ld a, [$cd20]
    bit 7, a
    jr nz, jr_001_42c0

    or a
    jr z, jr_001_42c0

    call $3716
    ld b, $04

jr_001_42c0:
    ld hl, $cd04
    ld a, b
    ld [hl+], a
    xor a
    ld [hl], a
    ld [$cd06], a
    ret


Call_001_42cb:
    xor a
    ld [$c4ae], a

Call_001_42cf:
    ld a, [$cc55]
    cp $ff
    ret z

    ld a, [$cc49]
    cp $04
    jr nz, jr_001_42e9

    ld a, [$cc4c]
    cp $39
    jr nz, jr_001_42e9

    call $1956
    and $80
    ret nz

jr_001_42e9:
    call $2d2a
    ld a, [$cc58]
    bit 7, a
    ret z

    jp $31d4


Call_001_42f5:
    ld a, [$cc55]
    cp $ff
    ret z

    call $2d2a
    ld a, [$cc58]
    bit 7, a
    ret nz

    ld a, [$c4ae]
    or a
    ret z

    jp $31fb


    call $376c
    ret c

    ld a, [$cd20]
    ld [$cd28], a
    xor a
    ld [$cd20], a
    call Call_001_47cd
    call nc, Call_001_4733
    ld hl, $cd04
    ld a, $05
    ld [hl+], a
    xor a
    ld [hl], a
    ld [$cd06], a
    ret


    ld a, [$cd05]
    rst $00
    ld [hl], $43
    cp [hl]
    ld b, l
    bit 0, h
    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cc49]
    or a
    call z, Call_001_47d6
    ld a, [$cd01]
    swap a
    ld l, a
    ld a, [$cd02]
    add a
    add a
    add l
    ld hl, $4389
    rst $10
    ld a, [hl+]
    ld [$cd10], a
    ld a, [hl+]
    ld [$cd11], a
    ld a, [hl+]
    ld [$cd12], a
    ld a, [hl+]
    ld [$cd14], a
    call $128c
    xor a
    ld [$cd06], a
    call $24a7
    ld a, [$cd02]
    and $01
    jr z, jr_001_437e

    ld a, $14
    ld [$cd13], a
    ld a, $02
    ld [$cd05], a
    ret


jr_001_437e:
    ld a, $10
    ld [$cd13], a
    ld a, $01
    ld [$cd05], a
    ret


    dec d
    rst $38
    rst $38
    db $fc
    nop
    ld e, $01
    inc b
    nop
    ld d, $01
    inc b
    dec e
    rst $38
    rst $38
    db $fc
    rrca
    rst $38
    rst $38
    db $fc
    nop
    inc d
    ld bc, $0004
    db $10
    ld bc, $1304
    rst $38
    rst $38
    db $fc

Call_001_43a9:
    ld de, $c48c
    ld hl, $ffa8
    jr nc, jr_001_43b4

    inc e
    inc l
    inc l

jr_001_43b4:
    ld b, $00
    ld a, [$cd14]
    ld c, a
    rlca
    jr nc, jr_001_43be

    dec b

jr_001_43be:
    ld a, [de]
    add c
    ld [de], a
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc b
    ld [hl], a
    call Call_001_4742
    ret z

    ld a, [$cd02]
    add a
    ld de, $43eb
    call $0072
    ld a, [$cc48]
    ld h, a
    ld l, $0a
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    adc [hl]
    ld [hl+], a
    ret


    add b
    rst $38
    nop
    nop
    nop
    nop
    ld h, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    and b
    rst $38

Jump_001_43fb:
    call Call_001_4742
    ret z

    ld a, [$cd01]
    swap a
    rrca
    ld e, a
    ld a, [$cd02]
    add a
    add e
    ld de, $4454
    call $0068

jr_001_4411:
    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld a, [de]
    add [hl]
    ld [hl+], a
    ld [$cc3d], a
    inc de
    inc l
    ld a, [de]
    add [hl]
    ld [hl], a
    ld [$cc3e], a
    ld l, $08
    ld a, [hl]
    ld [$cc3f], a
    srl h
    jr nc, jr_001_443a

    ld hl, $c638
    ld a, [$cc3d]
    ld [hl+], a
    ld a, [$cc3e]
    ld [hl], a

jr_001_443a:
    xor a
    ldh [$a8], a
    ldh [$aa], a
    ldh [$a9], a
    ldh [$ab], a
    call Call_001_4477
    call Call_001_49a4
    ld a, $01
    ld [$cc17], a
    call Call_001_4214
    jp Jump_001_4289


    or b
    nop
    nop
    db $10
    ld d, b
    nop
    nop
    ldh a, [$80]
    nop
    nop
    ld h, b
    add b
    nop
    nop
    and b

Call_001_4464:
    ld a, [$cd02]
    ld de, $446f
    call $0072
    jr jr_001_4411

    ld [hl], b
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    sub b

Call_001_4477:
    ld a, [$ccfe]
    or a
    ret z

    ld a, [$d00b]
    ld d, a
    ld a, [$d00d]
    ld e, a
    ld a, [$cd02]
    and $03
    ld c, a
    ld hl, $44c3
    rst JumpTable
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl]
    ldh [$8c], a
    ld a, $02
    ldh [rSVBK], a
    ld hl, $dabf
    ld b, $10

jr_001_449d:
    ldh a, [$8c]
    add e
    ld e, a
    ld [hl-], a
    ldh a, [$8d]
    add d
    ld d, a
    ld [hl-], a
    ld a, c
    ld [hl-], a
    dec b
    jr nz, jr_001_449d

    xor a
    ldh [rSVBK], a
    ld a, [$ccfd]
    add $0b
    ld l, a
    ld a, [$ccfe]
    ld h, a
    ld [hl], d
    inc l
    inc l
    ld [hl], e
    ld a, $0f
    ld [$ccfc], a
    ret


    ld bc, $0000
    rst $38
    rst $38
    nop
    nop
    ld bc, $06fa
    call $dbc7
    ld b, h
    pop af
    ld b, h
    ld sp, hl
    ld b, h
    rla
    ld b, l
    ld a, [hl+]
    ld b, l
    jr c, jr_001_4520

    ld a, [$cd09]
    swap a
    rlca
    ld b, a
    ld a, [$cd11]
    add b
    and $1f
    ld [$cd11], a
    ld a, $01
    ld [$cd06], a
    ret


    ld a, $02
    ld [$cd06], a
    jp Jump_001_4569


    scf
    call Call_001_43a9
    ld a, [$c48d]
    and $07
    ret nz

    ld a, [$cd13]
    or a
    jr nz, jr_001_4569

    ld hl, $cd06
    inc [hl]
    ld a, [$cd0e]
    swap a
    rlca
    ld [$cd13], a
    ret


    ld a, [$cd13]
    or a
    jr nz, jr_001_4569

    ld hl, $cd06

jr_001_4520:
    inc [hl]
    ld a, [$cd20]
    or a
    jp nz, $3716

    inc [hl]
    ret


    call $376c
    ret c

    ld a, [$cd20]
    ld [$cd28], a
    xor a
    ld [$cd20], a
    call Call_001_42f5
    call Call_001_4733
    call $197b
    xor a
    ld [$cd05], a
    ld [$cd06], a
    ld a, $02
    ld [$cd04], a
    ld a, [$cd0a]
    add a
    add a
    add a
    ld b, a
    ld a, [$cd02]
    and $02
    jr z, jr_001_455f

    ld a, b
    cpl
    inc a
    ld b, a

jr_001_455f:
    ld a, [$cd09]
    add b
    ld [$cd09], a
    jp Jump_001_43fb


Jump_001_4569:
jr_001_4569:
    ld a, [$cd10]
    ld e, a
    call Call_001_469b
    ld a, [$cd11]
    call Call_001_4595

Jump_001_4576:
    ld a, [$cd10]
    ld b, a
    ld a, [$cd12]
    ld c, a
    add b
    and $1f
    ld [$cd10], a
    ld a, [$cd11]
    add c
    and $1f
    ld [$cd11], a
    ld a, [$cd13]
    dec a
    ld [$cd13], a
    ret


Call_001_4595:
Jump_001_4595:
    ld b, a
    ld c, $01
    ld e, $60
    call Call_001_45a1
    ld c, $00
    ld e, $40

Call_001_45a1:
    ldh a, [$a3]
    ld l, a
    ld h, $c4
    ld a, [$0a64]
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, b
    ld de, $0bd9
    call $0072
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, l
    ldh [$a3], a
    ret


    ld a, [$cd06]
    rst $00
    adc $45
    db $e4
    ld b, l
    db $ec
    ld b, l
    ld a, [bc]
    ld b, [hl]
    dec e
    ld b, [hl]
    dec hl
    ld b, [hl]
    ld a, [$cd08]
    swap a
    rlca
    ld b, a
    ld a, [$cd11]
    add b
    and $1f
    ld [$cd11], a
    ld a, $01
    ld [$cd06], a
    ret


    ld a, $02
    ld [$cd06], a
    jp Jump_001_4665


    xor a
    call Call_001_43a9
    ld a, [$c48c]
    and $07
    ret nz

    ld a, [$cd13]
    or a
    jr nz, jr_001_4665

    ld hl, $cd06
    inc [hl]
    ld a, [$cd0f]
    swap a
    rlca
    ld [$cd13], a
    ret


    ld a, [$cd13]
    or a
    jr nz, jr_001_4665

    ld hl, $cd06
    inc [hl]
    ld a, [$cd20]
    or a
    jp nz, $3716

    inc [hl]
    ret


    call $376c
    ret c

    ld a, [$cd20]
    ld [$cd28], a
    xor a
    ld [$cd20], a
    call Call_001_42f5
    call Call_001_4733
    call $197b
    xor a
    ld [$cd05], a
    ld [$cd06], a
    ld a, $02
    ld [$cd04], a
    ld a, [$cd01]
    add a
    add a
    ld l, a
    ld a, [$cd02]
    add l
    ld hl, $465d
    rst $10
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl]
    ld b, a
    ld a, [$cd08]
    add b
    ld [$cd08], a
    jp Jump_001_43fb


    jr nc, @+$52

    nop
    or b
    nop
    add b
    nop
    add b

Jump_001_4665:
jr_001_4665:
    ld a, [$cd10]
    ld e, a
    call Call_001_46e3
    ld c, $01
    call Call_001_4679
    ld c, $00
    call Call_001_4679
    jp Jump_001_4576


Call_001_4679:
    ld a, [$cd11]
    ld b, a
    and $18
    rlca
    swap a
    add $98
    ld d, a
    ld a, b
    and $07
    swap a
    rlca
    or c
    ld e, a
    ld hl, $cd40
    srl c
    jr nc, jr_001_4696

    ld l, $60

jr_001_4696:
    ld b, $01
    jp $0566


Call_001_469b:
    ld a, [$cd08]
    cpl
    inc a
    rrca
    rrca
    rrca
    ld hl, $367b
    rst $10
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    add $40
    ld d, a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    push de
    ld hl, $cd40
    ld b, $20
    ld c, $dc
    call Call_001_46d0
    pop de
    ld a, $04
    add d
    ld d, a
    ld b, $20
    ld c, $e0
    call Call_001_46d0
    pop af
    ldh [rSVBK], a
    ret


Call_001_46d0:
jr_001_46d0:
    ld a, [de]
    ld [hl+], a
    ld a, $20
    add e
    ld e, a
    ld a, d
    adc $00
    cp c
    jr nz, jr_001_46de

    sub $04

jr_001_46de:
    ld d, a
    dec b
    jr nz, jr_001_46d0

    ret


Call_001_46e3:
    ld a, [$cd09]
    cpl
    inc a
    swap a
    rlca
    ld c, a
    ld a, [$cd10]
    rlca
    swap a
    ld b, a
    and $0f
    ld d, a
    ld a, b
    and $f0
    ld e, a
    ld hl, $d800
    add hl, de
    ld b, $00
    add hl, bc
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    push hl
    ld b, $20
    ld de, $cd40
    call Call_001_4722
    pop hl
    ld b, $20
    ld a, h
    add $04
    ld h, a
    ld de, $cd60
    call Call_001_4722
    pop af
    ldh [rSVBK], a
    ret


Call_001_4722:
jr_001_4722:
    ld a, [hl]
    ld [de], a
    inc de
    inc l
    ld a, l
    and $1f
    jr nz, jr_001_472f

    ld a, l
    sub $20
    ld l, a

jr_001_472f:
    dec b
    jr nz, jr_001_4722

    ret


Call_001_4733:
    ld a, [$cd29]
    ld b, a
    ld a, [$cd22]
    cp b
    ret z

    ld [$cd29], a
    jp $04e7


Call_001_4742:
    ld a, [$cc48]
    cp $d0
    ret nz

    ld hl, $d004
    ld a, $0e
    cp [hl]
    ret


    ld a, $02
    ldh [rSVBK], a
    ld de, $478b
    ld hl, $d800

jr_001_4759:
    push hl
    push de
    ld a, [de]
    call $019d
    ld a, h
    pop de
    pop hl
    ld [hl+], a
    inc de
    ld a, l
    cp $20
    jr c, jr_001_4759

    ld hl, $d81f
    ld de, $d820
    ld b, $20

jr_001_4771:
    ld a, [hl-]
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_4771

    ld hl, $d83f
    ld de, $d840
    ld b, $40

jr_001_477f:
    ld a, [hl-]
    cpl
    inc a
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_477f

    xor a
    ldh [rSVBK], a
    ret


    nop
    dec c
    add hl, de
    ld h, $32
    ld a, $4a
    ld d, [hl]
    ld h, d
    ld l, l
    ld a, c
    add h
    adc [hl]
    sbc b
    and d
    xor h
    or l
    cp [hl]
    add $ce
    push de
    call c, $e7e2
    db $ed
    pop af
    push af
    ld hl, sp-$05
    db $fd
    rst $38
    rst $38
    ld a, $02
    ldh [rSVBK], a
    ld a, [$cc00]
    and $7f
    ld c, a
    ld de, $d800
    call $0068
    ld hl, $c300

jr_001_47be:
    ld a, [de]
    ld [hl+], a
    ld a, e
    add b
    and $7f
    ld e, a
    ld a, l
    or a
    jr nz, jr_001_47be

    xor a
    ldh [rSVBK], a
    ret


Call_001_47cd:
    call Call_001_47dd
    jr c, jr_001_47d4

    xor a
    ret


jr_001_47d4:
    scf
    ret


Call_001_47d6:
    call Call_001_47dd
    call c, Call_001_4808
    ret


Call_001_47dd:
    ld a, [$cc49]
    ld b, a
    rrca
    and $7f
    ret nz

    ld a, b
    ld hl, $4875
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld b, a

jr_001_47f1:
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$cd02]
    cp [hl]
    jr nz, jr_001_4801

    ld a, c
    cp b
    jr z, jr_001_4806

jr_001_4801:
    inc hl
    inc hl
    inc hl
    jr jr_001_47f1

jr_001_4806:
    scf
    ret


Call_001_4808:
    inc hl
    ld a, $02
    ldh [rSVBK], a
    ld a, [hl+]
    push hl
    swap a
    rrca
    ld hl, $4845
    rst $10
    ld a, [$cc4e]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $da00
    call $13d7
    pop hl
    ld a, [hl]
    swap a
    rrca
    ld hl, $4845
    rst $10
    ld a, [$cc4e]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $db00
    call $13d7
    ld a, $00
    ldh [rSVBK], a
    ld a, $ff
    ld [$cd29], a
    jp $3217


    or b
    ld c, c
    ldh [rOBP1], a
    db $10
    ld c, d
    ld b, b
    ld c, d
    ld [hl], b
    ld c, d
    and b
    ld c, d
    ret nc

    ld c, d
    nop
    ld c, e
    and b
    ld c, l
    ret nc

    ld c, l
    nop
    ld c, [hl]
    jr nc, jr_001_48ab

    jr nz, jr_001_48ae

    ld d, b
    ld c, a
    add b
    ld c, a
    or b
    ld c, a
    and b
    ld d, b
    ret nc

    ld d, b
    nop
    ld d, c
    jr nc, jr_001_48be

    ld h, b
    ld d, c
    sub b
    ld d, c
    ret nz

    ld d, c
    ldh a, [rHDMA1]
    ld a, c
    ld c, b
    sbc e
    ld c, b
    ldh [rP1], a
    nop
    inc bc
    ldh a, [rSC]
    inc bc
    nop
    ld h, e
    nop
    ld bc, $7302
    ld [bc], a
    ld [bc], a
    ld bc, $0083
    nop
    ld bc, $0293
    ld bc, $2300
    nop
    inc b
    dec b
    inc sp
    ld [bc], a
    dec b
    inc b
    nop
    rst $38
    nop
    rst $38
    ld hl, $ccfd
    ldh a, [$ac]
    ld [hl+], a
    ldh a, [$ad]
    ld [hl+], a

jr_001_48a6:
    push de
    ld a, [$d008]
    ld c, a

jr_001_48ab:
    ld a, [$d00b]

jr_001_48ae:
    ld d, a
    ld a, [$d00d]
    ld e, a
    ld a, $02
    ldh [rSVBK], a
    ld hl, $da90
    ld a, $10

jr_001_48bc:
    ld [hl], c
    inc l

jr_001_48be:
    ld [hl], d
    inc l
    ld [hl], e
    inc l
    dec a
    jr nz, jr_001_48bc

    ld [$ccfc], a
    ldh [rSVBK], a
    ld a, [$ccfd]
    add $0b
    ld l, a
    ld a, [$ccfe]
    ld h, a
    ld [hl], d
    inc l
    inc l
    ld [hl], e
    pop de
    ret


    ld a, [$ccfe]
    or a
    ret z

    call Call_001_48e6
    xor a
    ldh [rSVBK], a
    ret


Call_001_48e6:
    ld a, [$ccfc]
    ld b, a
    add a
    jr c, jr_001_48a6

    add b
    ld hl, $da90
    rst $10
    ld a, [$d008]
    ld c, a
    ld a, [$d00b]
    ld d, a
    ld a, [$d00d]
    ld e, a
    ld a, $02
    ldh [rSVBK], a
    ld a, [hl+]
    cp c
    jr nz, jr_001_490d

    ld a, [hl+]
    cp d
    jr nz, jr_001_490d

    ld a, [hl+]
    cp e
    ret z

jr_001_490d:
    ld a, [$ccfc]
    inc a
    and $0f
    ld [$ccfc], a
    ld b, a
    add a
    add b
    ld hl, $da90
    rst $10
    ld a, c
    ld c, [hl]
    ld [hl+], a
    ld a, d
    ld d, [hl]
    ld [hl+], a
    ld a, e
    ld e, [hl]
    ld [hl+], a
    xor a
    ldh [rSVBK], a
    ld a, [$ccfe]
    ld h, a
    ld a, [$ccfd]
    add $08
    ld l, a
    ld [hl], c
    inc l
    inc l
    inc l
    ld [hl], d
    inc l
    inc l
    ld [hl], e
    ret


Call_001_493c:
    ld hl, $cc77
    ld b, $88
    call $044b
    ld hl, $cc48
    ld a, $d1
    cp [hl]
    jr z, jr_001_494e

    dec a
    ld [hl], a

jr_001_494e:
    call $12ae
    call $3566
    jr jr_001_495e

Call_001_4956:
    ld hl, $cca4
    ld b, $53
    call $044b

jr_001_495e:
    ld a, $ff
    ld [$ccc5], a
    ret


Call_001_4964:
    call Call_001_497e
    call Call_001_4985
    call Call_001_498c
    call Call_001_4977
    ld hl, $d000
    ld c, $d2
    jr jr_001_4991

Call_001_4977:
    ld hl, $d600
    ld c, $e0
    jr jr_001_4991

Call_001_497e:
    ld hl, $d040
    ld c, $e0
    jr jr_001_4991

Call_001_4985:
    ld hl, $d080
    ld c, $e0
    jr jr_001_4991

Call_001_498c:
    ld hl, $d0c0
    ld c, $e0

jr_001_4991:
    ld a, [hl]
    and $03
    cp $01
    jr nz, jr_001_499e

    ld a, [hl]
    and $fc
    or $02
    ld [hl], a

jr_001_499e:
    inc h
    ld a, h
    cp c
    jr c, jr_001_4991

    ret


Call_001_49a4:
    call Call_001_49be
    call Call_001_49c5
    call Call_001_49cc
    call Call_001_49b7
    ld hl, $d000
    ld c, $d2
    jr jr_001_49d1

Call_001_49b7:
    ld hl, $d600
    ld c, $e0
    jr jr_001_49d1

Call_001_49be:
    ld hl, $d040
    ld c, $e0
    jr jr_001_49d1

Call_001_49c5:
    ld hl, $d080
    ld c, $e0
    jr jr_001_49d1

Call_001_49cc:
    ld hl, $d0c0
    ld c, $e0

jr_001_49d1:
    ld a, [hl]
    and $03
    cp $02
    jr nz, jr_001_49df

    push hl
    ld b, $40
    call $044b
    pop hl

jr_001_49df:
    inc h
    ld a, h
    cp c
    jr c, jr_001_49d1

    ret


Call_001_49e5:
    ld a, [$cc02]
    or a
    ret nz

    ld a, [$cc55]
    cp $ff
    ret z

    ld hl, $c67c
    call $0205
    ret z

    call $1956
    and $20
    ret nz

    ld a, [$cc49]
    cp $06
    jr nz, jr_001_4a0b

    ld a, [$cc4c]
    cp $8b
    jr z, jr_001_4a17

jr_001_4a0b:
    ld a, [$cc58]
    and $70
    cp $30
    jr z, jr_001_4a17

    cp $10
    ret nz

jr_001_4a17:
    ld a, $a2
    jp $0c74


Call_001_4a1c:
    ld de, $ccf2
    ld a, [de]
    rst $00
    daa
    ld c, d
    jr z, @+$4c

    ld b, d
    ld c, d
    ret


    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $2d
    ld a, $ac
    call $0c74
    ld hl, $cca4
    ld a, $21
    or [hl]
    ld [hl], a
    ld hl, $cbca
    set 0, [hl]
    jp $1a7a


    ld h, d
    ld l, e
    inc l
    dec [hl]
    jr z, jr_001_4a5b

    ld a, [hl]
    and $07
    ret nz

    bit 3, [hl]
    jp z, $1a7e

    ld a, $08
    call $24a7
    ld a, $0c
    jp $04e7


jr_001_4a5b:
    xor a
    ld [hl-], a
    ld [hl], a
    ld hl, $cca4
    ld a, $de
    and [hl]
    ld [hl], a
    ld hl, $cbca
    res 0, [hl]
    jp $1a7e


    ld a, [$cc57]
    dec a
    ld [$cc57], a
    call $2d65
    ld [$cc64], a
    call $2054
    ld [$cc66], a
    ld a, [$cc49]
    or $80
    ld [$cc63], a
    ld a, $05
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    ret


    ld a, [$cc03]
    rst $00
    and c
    ld c, d
    sub $4a
    xor $4a
    inc hl
    ld c, e
    ld b, b
    ld c, e
    call $12ba
    ld a, $01
    ld [$cc03], a
    ld hl, $d240

jr_001_4aac:
    ld l, $40
    ld a, [hl+]
    or a
    jr z, jr_001_4ab7

    ld a, [hl+]
    cp $44
    jr z, jr_001_4abd

jr_001_4ab7:
    inc h
    ld a, h
    cp $e0
    jr c, jr_001_4aac

jr_001_4abd:
    ld a, h
    ld [$cbb5], a
    ld a, $10
    ld [$c490], a
    ld a, $02
    ldh [$9b], a
    xor a
    ld [$cbb7], a
    call Call_001_4b74
    ld a, $b9
    jp $0c74


    ld a, $02
    call $1393
    ld hl, $cbb7
    inc [hl]
    ld a, [hl]
    jp nz, Jump_001_4b74

    ld a, $02
    ld [$cc03], a
    ld a, $1e
    ld [$cbb3], a
    ret


    call $3445
    ld a, $02
    call $1393
    ld a, [$cbb4]
    inc a
    and $03
    ld [$cbb4], a
    ret nz

    ld a, [$cbb5]
    ld h, a
    ld l, $5a
    ld a, [hl]
    xor $80
    ld [hl], a
    ld a, [$cbb3]
    dec a
    ld [$cbb3], a
    ret nz

    res 7, [hl]
    ld a, $14
    ld [$cbb4], a
    ld a, $05
    ld [$cbb3], a
    ld a, $03
    ld [$cc03], a
    call $3445
    ld a, $02
    call $1393
    ld hl, $cbb4
    dec [hl]
    ret nz

    ld [hl], $14
    call $3144
    ld hl, $cbb3
    dec [hl]
    ret nz

    ld a, $04
    ld [$cc03], a
    ret


    ld a, $02
    call $1393
    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $4b6f
    call $1970
    xor a
    ld [$cc6b], a
    ld [$cc02], a
    ld a, $03
    ld [$c2ef], a
    ld a, $03
    ldh [$9b], a
    ld a, $01
    ld [$cd00], a
    ld a, $f1
    call $0c74
    ld a, $b4
    jp $0c74


    add l
    sbc [hl]
    dec b
    ld [hl], a
    nop

Call_001_4b74:
Jump_001_4b74:
    call $1372
    ld a, $02
    ldh [rSVBK], a
    ld hl, $d800
    ld b, $80

jr_001_4b80:
    ldh a, [$aa]
    ld [hl+], a
    inc hl
    dec b
    jr nz, jr_001_4b80

    xor a
    ldh [rSVBK], a
    ret


    call Call_001_4b94
    call $1a62
    jp $3420


Call_001_4b94:
    ld a, [$cc03]
    rst $00
    xor e
    ld c, e
    pop bc
    ld c, e
    adc h
    ld c, h
    ld hl, $cbb4
    dec [hl]
    ret nz

    ld [hl], $1e
    ret


Jump_001_4ba6:
    ld hl, $cbb3
    inc [hl]
    ret


    call $12ba
    ld a, $01
    ld [$cc03], a
    xor a
    ld [$cbb3], a
    ld [$cbb4], a
    ld [$cbb5], a
    ld [$cbb6], a
    ret


    ld a, [$cbb3]
    rst $00
    bit 1, e
    ei
    ld c, e
    rrca
    ld c, h
    ld a, $04
    ld [$cbbb], a
    xor a
    ld [$cbbc], a
    call Call_001_4be3
    ld a, $10
    ld [$c490], a
    ld a, $02
    ldh [$9b], a
    jp Jump_001_4ba6


Call_001_4be3:
    call $1372
    ld a, $02
    ldh [rSVBK], a
    ld hl, $d800
    ld b, $80

jr_001_4bef:
    ld a, [hl]
    cpl
    inc a
    ld [hl+], a
    inc hl
    dec b
    jr nz, jr_001_4bef

    xor a
    ldh [rSVBK], a
    ret


    ld a, [$cbbd]
    ld b, a
    ld a, [$cbbc]
    cp b
    ld [$cbbd], a
    call nz, Call_001_4be3
    ld a, [$cbbb]
    jp $1393


    call $02c1
    call $047b
    xor a
    ldh [rSVBK], a
    ld hl, $d040
    ld bc, $0fc0
    call $0451
    call $3528
    call Call_001_493c
    call $1826
    call $32be
    call $381a
    call $3737
    call $2cfd
    call $12dd
    call $30d9
    call Call_001_5a58
    ld a, [$cc49]
    cp $03
    jr nz, jr_001_4c58

    xor a
    ld [$c63a], a
    ld a, [$cc4c]
    cp $ab
    ld a, $f7
    jr z, jr_001_4c55

    ld a, $04

jr_001_4c55:
    ld [$c63b], a

jr_001_4c58:
    call $1a5e
    ld hl, $3b0a
    ld e, $00
    call $008a
    ld a, $02
    call $02ea
    ld a, $10
    ld [$c490], a
    ld a, $f0
    ld [$c48c], a
    ld a, $02
    ldh [$9b], a
    ld hl, $cc03
    inc [hl]
    xor a
    ld [$cbb3], a
    ld [$cc6a], a
    ld a, $08
    ld [$cc65], a
    ld a, $81
    ld [$cca4], a
    ret


    ld a, [$cbb3]
    rst $00
    ei
    ld c, e
    sub h
    ld c, h
    ld a, $03
    ldh [$9b], a
    ld a, $c7
    ld [$c490], a
    xor a
    ld [$c2ef], a
    ld [$cca4], a
    ld [$cc02], a
    ld a, $01
    ld [$cd00], a
    ld a, $f1
    jp $0c74


    ld c, $00
    jr jr_001_4cb7

    ld c, $01

jr_001_4cb7:
    ld hl, $4b0a
    ld e, $03
    call $008a
    call $1601
    jp $3382


    db $dd
    ld c, h
    push hl
    ld c, h
    db $ed
    ld c, h
    push af
    ld c, h
    db $fd
    ld c, h
    dec b
    ld c, l
    dec c
    ld c, l
    dec d
    ld c, l
    dec e
    ld c, l
    dec h
    ld c, l
    dec l
    ld c, l
    dec [hl]
    ld c, l
    ret


    inc b
    nop
    ld bc, $0003
    nop
    nop
    ret


    inc e
    ld bc, $0301
    inc bc
    nop
    nop
    ret


    add hl, sp
    ld [bc], a
    ld bc, $0103
    nop
    nop
    ret


    ld c, e
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ret


    add c
    dec b
    inc bc
    ld [bc], a
    rlca
    nop
    nop
    ret


    and a
    ld [$0301], sp
    ld bc, $0000
    ret


    cp d
    add hl, bc
    dec b
    inc bc
    rlca
    nop
    nop
    jp z, $0f5b

    inc bc
    ld bc, $0000
    nop
    jp z, $1287

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    jp z, $1497

    ld bc, $0003
    nop
    nop
    jp z, $159d

    ld bc, $0003
    nop
    nop
    jp z, $0e30

    ld bc, $0003
    nop
    nop
    ld b, c
    ld c, l
    ld b, c
    ld c, [hl]
    nop
    ld h, b
    ld b, $38
    ld b, $0d
    inc h
    ld bc, $6001
    ld [bc], a
    inc c
    ld bc, $0a22
    ld l, $2a
    jr c, jr_001_4d96

    nop
    ld [hl-], a
    dec c
    inc b
    ld h, $69
    ld hl, $1967
    dec b
    ld h, b
    ld h, b
    ld [hl+], a
    inc c
    inc bc
    ld a, [bc]
    ld c, $3c
    ld [bc], a
    rrca
    add hl, bc
    ld bc, $224c
    inc l
    ld bc, $7034
    ld b, $0a
    ld a, $08
    ld bc, $0714
    jr z, jr_001_4d7a

    inc hl

jr_001_4d7a:
    db $fd
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    inc b
    ld [hl+], a
    ld c, $0b
    ld a, [hl+]
    inc c
    ld [hl-], a
    dec c
    nop
    ld b, $09
    dec b
    ld sp, $0a22
    jr c, @+$22

    inc h
    inc b
    ld b, h
    inc h

jr_001_4d96:
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    nop
    nop
    ld h, b
    ld h, b
    inc b
    ld c, d
    ld [$0902], sp
    ld [hl], $3a
    ld [$0504], sp
    inc bc
    inc l
    rst $30
    ld [$b014], sp
    inc bc
    dec bc
    ld c, $09
    dec b
    ld [hl+], a
    ld bc, $0e12
    ld a, [bc]
    ld [$0404], sp
    jr jr_001_4dc3

    inc bc
    dec bc
    inc l
    dec b
    dec b

jr_001_4dc3:
    add hl, bc
    jr z, jr_001_4e26

    ld h, b
    ld h, b
    ld h, b
    inc b
    ld [hl+], a
    inc c
    ld [hl], b
    ld c, d
    inc bc
    ld a, [bc]
    jr z, jr_001_4dd6

    ld [hl-], a
    inc c
    inc b
    rlca

jr_001_4dd6:
    ld a, [bc]
    inc c
    daa
    add hl, bc
    ld [hl], $09
    ld b, $09
    ld [hl+], a
    dec c
    ld [hl-], a
    rrca
    ld [$3709], sp
    ld c, $39
    inc bc
    dec c
    ld h, b
    ld h, b
    inc b
    inc d
    inc b
    ld [hl+], a
    ld [$2f23], sp
    rrca
    ld a, [bc]
    inc l
    inc b
    inc bc
    rrca
    ld a, [bc]
    add hl, bc
    ld bc, $0005
    ld b, $0c
    inc b
    jr nz, @+$09

    add hl, sp
    inc sp
    inc l
    inc sp
    ld a, [bc]
    ld [$0201], sp
    ld a, [bc]
    inc c
    inc b
    inc b
    ld bc, $0301
    jr z, jr_001_4e19

    inc c
    ld bc, $4401
    nop
    nop

jr_001_4e19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4e26:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc b
    nop
    ld [bc], a
    add hl, bc
    ld bc, $0000
    inc b
    ld [bc], a
    add hl, bc
    ld b, $0c
    ld [bc], a
    ld [$0105], sp
    ld [bc], a
    ld [$1200], sp
    ld c, $08
    inc b
    ld bc, $0304
    inc c
    inc d
    ld bc, $0505
    inc bc
    ld a, [bc]
    add hl, hl
    inc h
    ld [de], a
    ld c, $38
    inc [hl]
    ld bc, $0105
    ld [bc], a
    add hl, bc
    add b
    ld [bc], a
    ld c, d
    ld [$0620], sp
    jr c, jr_001_4e97

jr_001_4e97:
    add l
    nop
    ld [hl+], a
    dec c
    nop
    dec b
    ld h, b
    ld h, b
    inc b
    inc b
    ld h, b
    ld h, b
    ld h, b
    ld bc, $0645
    inc c
    rlca
    dec c
    inc b
    inc hl
    add hl, sp
    ld h, h
    inc bc
    ld [$3e06], sp
    ld [$0309], sp
    add hl, bc
    ld d, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec b
    dec b
    dec h
    ld [bc], a
    inc e
    dec [hl]
    rlca
    jr jr_001_4ec9

    rlca
    ld a, [bc]
    dec c
    dec b

jr_001_4ec9:
    ld bc, $3101
    jr nz, jr_001_4efe

    ld [hl+], a
    jr z, jr_001_4ed1

jr_001_4ed1:
    ld [hl], b
    inc b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    rrca
    ld [$0460], sp
    dec b
    dec b
    ld bc, $0060
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4efe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
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
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_001_4fa8

jr_001_4fa8:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
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
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_001_4fc6

jr_001_4fc6:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_001_5009

    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    nop
    inc l
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_001_5020

    ld [hl-], a
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    jr c, jr_001_5036

    nop
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop

jr_001_5009:
    nop
    nop
    ld a, $00
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop

jr_001_5020:
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    nop
    ld c, e
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5036:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    ld d, c
    nop
    nop
    nop
    ld d, d
    nop
    ld d, e
    nop
    ld d, h
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, a
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    nop
    nop
    nop
    nop
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add d
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add l
    add [hl]
    add a
    adc b
    nop
    nop
    nop
    adc c
    adc d
    nop
    adc e
    adc h
    nop
    nop
    nop
    nop
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    sub c
    sub d
    sub e
    nop
    sub h
    sub l
    sub [hl]
    nop
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    nop
    and e
    and h
    and l
    nop
    nop
    nop
    nop
    nop
    and [hl]
    and a
    xor b
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    nop
    nop
    nop
    xor a
    or b
    or c
    or d
    or e
    nop
    nop
    nop
    or h
    or l
    or [hl]
    or a
    cp b
    nop
    nop
    nop
    cp c
    nop
    cp d
    nop
    cp e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    cp l
    cp [hl]
    cp a
    nop
    nop
    nop
    nop
    ret nz

    pop bc
    jp nz, $00c3

    nop
    nop
    nop
    call nz, $c6c5
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_001_51f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ret


    jp z, RST_00

    nop
    nop
    nop
    set 1, h
    call RST_00
    nop
    nop
    nop
    adc $cf
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    jp nc, RST_00

    nop
    nop
    nop
    nop
    db $d3
    call nc, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_52e4

    nop
    nop
    ld [hl+], a
    inc hl
    nop
    nop
    inc h
    dec h
    nop
    nop
    ld h, $27
    nop
    nop
    nop
    nop
    jr z, jr_001_52fe

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    inc l
    dec l
    nop

jr_001_52e4:
    nop
    ld l, $2f
    nop
    nop
    jr nc, jr_001_531c

    nop
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_52fe:
    nop
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    jr c, jr_001_5314

jr_001_5314:
    add hl, sp
    nop
    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    inc a

jr_001_531c:
    nop
    dec a
    ld a, $00
    nop
    nop
    nop
    ccf
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    ld c, c
    nop
    ld c, d
    nop
    ld c, e
    nop
    nop
    nop
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    nop
    nop
    nop
    nop
    ld l, c
    nop
    ld l, d
    ld l, e
    nop
    ld l, h
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    ld a, e
    nop
    nop
    nop
    nop
    ld a, h
    nop
    nop
    ld a, l
    nop
    ld a, [hl]
    ld a, a
    nop
    add b
    nop
    nop
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    nop
    add a
    nop
    adc b
    adc c
    nop
    adc d
    nop
    nop
    nop
    adc e
    nop
    nop
    adc h
    nop
    nop
    nop
    nop
    nop
    adc l
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    nop
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    sub a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $02
    ldh [rSVBK], a
    call Call_001_5516
    ld a, [$cc55]
    ld hl, $4cc5
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $08
    ld de, $cc59

jr_001_54d7:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_54d7

    call Call_001_551f
    xor a
    call Call_001_553f
    ld de, $dc00
    ld a, [$cc5c]
    ld c, a

jr_001_54eb:
    ld b, $40

jr_001_54ed:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_54ed

    dec c
    jr nz, jr_001_54eb

    ld a, [$cc50]
    bit 5, a
    jr nz, jr_001_5510

    ld a, [$cc57]
    ld hl, $00f8
    add l
    ld l, a
    ld b, [hl]
    ld a, [$cc55]
    ld hl, $c662
    rst $10
    ld a, [hl]
    or b
    ld [hl], a

jr_001_5510:
    xor a
    ldh [rSVBK], a
    jp $2d24


Call_001_5516:
    ld hl, $dc00
    ld bc, $0200
    jp $0451


Call_001_551f:
    xor a
    call Call_001_553f
    ld a, [$cc4c]
    ld c, $00

jr_001_5528:
    ld b, $40

jr_001_552a:
    cp [hl]
    jr z, jr_001_5534

    inc hl
    dec b
    jr nz, jr_001_552a

    inc c
    jr jr_001_5528

jr_001_5534:
    ld a, c
    ld [$cc57], a
    ld a, $40
    sub b
    ld [$cc56], a
    ret


Call_001_553f:
    ld c, a
    ld a, [$cc5b]
    add c
    call $01ac
    ld hl, $4f41
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ret


    ld a, [$c4ab]
    rst $00
    sbc [hl]
    ld d, l
    ld [hl], c
    ld d, l
    and e
    ld d, l
    cp e
    ld d, l
    call nc, $fc55
    ld d, l
    ld [de], a
    ld d, [hl]
    jr z, @+$58

    ld d, a
    ld d, [hl]
    ld l, l
    ld d, l
    sbc a
    ld d, l
    or a
    ld d, l
    ret nc

    ld d, l
    call Call_001_5776
    ret nz

    ld a, $1f
    ldh [$8b], a
    ld a, [$c4ac]
    ld c, a
    ld a, [$c2ff]
    add c
    cp $20
    jp nc, Jump_001_55e8

    ld [$c2ff], a
    ld c, a

Jump_001_5586:
jr_001_5586:
    call Call_001_5683
    ld hl, $c4b1
    ldh a, [$a4]
    or [hl]
    ldh [$a4], a
    inc hl
    ldh a, [$a5]
    or [hl]
    ldh [$a5], a
    inc hl
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl]
    ldh [$a7], a
    ret


    call Call_001_5776
    ret nz

    ld a, $1f
    ldh [$8b], a
    ld a, [$c4ac]
    ld c, a
    ld a, [$c2ff]
    sub c
    jr c, jr_001_55e8

    ld [$c2ff], a
    ld c, a
    jr jr_001_5586

    call Call_001_5776
    ret nz

    xor a
    ldh [$8b], a
    ld a, [$c4ac]
    ld c, a
    ld a, [$c2ff]
    sub c
    cp $e0
    jr c, jr_001_55e8

    ld [$c2ff], a
    ld c, a
    jr jr_001_5586

    call Call_001_5776
    ret nz

    xor a
    ldh [$8b], a
    ld a, [$c4ac]
    ld c, a
    ld a, [$c2ff]
    add c
    jr c, jr_001_55e8

    ld [$c2ff], a
    ld c, a
    jp Jump_001_5586


Jump_001_55e8:
jr_001_55e8:
    xor a
    ld [$c4ad], a
    ld [$c4ab], a
    jp $3116


jr_001_55f2:
    xor a
    ld [$c4ad], a
    ld [$c4ab], a
    jp $3110


    xor a
    ldh [$8b], a
    ld a, [$c4ae]
    dec a
    ld b, a
    ld a, [$c2ff]
    dec a
    cp b
    jr z, jr_001_55e8

    ld [$c2ff], a
    ld c, a
    jp Jump_001_5586


    xor a
    ldh [$8b], a
    ld a, [$c4ae]
    inc a
    ld b, a
    ld a, [$c2ff]
    inc a
    cp b
    jr z, jr_001_55e8

    ld [$c2ff], a
    ld c, a
    jp Jump_001_5586


    ld a, $1f
    ldh [$8b], a
    ld a, [$c4ac]
    ld c, a
    ld a, [$c2ff]
    sub c
    jr c, jr_001_563d

    ld [$c2ff], a
    ld c, a
    jp Jump_001_5586


jr_001_563d:
    ld a, $ff
    ldh [$a4], a
    ldh [$a5], a
    ld a, [$c4ae]
    or a
    jr z, jr_001_55f2

    ld b, a
    xor a
    ld [$c4ae], a
    ld a, b
    cp $f0
    jp z, $31d4

    jp $31d0


    ld hl, $c2ff
    dec [hl]
    jr z, jr_001_5680

    ld a, [hl]
    rrca
    and $0f
    ld b, a
    swap a
    ldh [$91], a
    ld a, $10
    sub b
    swap a
    ldh [$90], a
    ld a, [hl]
    rrca
    jp c, Jump_001_56ce

    call Call_001_56d7
    ldh a, [$a4]
    or $fc
    ldh [$a4], a
    ld a, $fc
    ldh [$a6], a
    ret


jr_001_5680:
    jp Jump_001_55e8


Call_001_5683:
    ld hl, $de80
    ld b, $40

jr_001_5688:
    ld e, [hl]
    inc l
    ld a, [hl]
    sla e
    rla
    rl e
    rla
    rl e
    rla
    and $1f
    add c
    bit 5, a
    jr z, jr_001_569d

    ldh a, [$8b]

jr_001_569d:
    ld e, $00
    srl a
    rr e
    rra
    rr e
    rra
    rr e
    ld d, a
    ld a, [hl-]
    rra
    rra
    and $1f
    add c
    bit 5, a
    jr z, jr_001_56b6

    ldh a, [$8b]

jr_001_56b6:
    rlca
    rlca
    or d
    ld d, a
    ld a, [hl]
    and $1f
    add c
    bit 5, a
    jr z, jr_001_56c4

    ldh a, [$8b]

jr_001_56c4:
    or e
    inc h
    ld [hl+], a
    ld [hl], d
    inc l
    dec h
    dec b
    jr nz, jr_001_5688

    ret


Jump_001_56ce:
    ld hl, $de90
    ld e, $00
    ld b, $0c
    jr jr_001_56de

Call_001_56d7:
    ld hl, $dea8
    ld e, $24
    ld b, $0c

jr_001_56de:
    ld a, $02
    ldh [rSVBK], a

jr_001_56e2:
    push bc
    push hl
    call Call_001_5720
    inc e
    swap l
    ld a, l
    and $0f
    ld l, a
    ld a, h
    swap a
    or l
    ldh [$8b], a
    call Call_001_5720
    inc e
    swap l
    ld a, l
    and $0f
    ld l, a
    ld a, h
    swap a
    or l
    ldh [$8d], a
    call Call_001_5720
    inc e
    swap l
    ld a, l
    and $0f
    ld l, a
    ld a, h
    swap a
    or l
    ldh [$8c], a
    pop hl
    call Call_001_574a
    pop bc
    dec b
    jr nz, jr_001_56e2

    xor a
    ldh [rSVBK], a
    ret


Call_001_5720:
    ldh a, [$91]
    ld h, a
    ld d, $da
    ld a, [de]
    ld c, a
    ld b, $00
    ld l, b
    ld a, $04

jr_001_572c:
    add hl, hl
    jr nc, jr_001_5730

    add hl, bc

jr_001_5730:
    dec a
    jr nz, jr_001_572c

    push hl
    ldh a, [$90]
    ld h, a
    ld d, $db
    ld a, [de]
    ld c, a
    ld b, $00
    ld l, b
    ld a, $04

jr_001_5740:
    add hl, hl
    jr nc, jr_001_5744

    add hl, bc

jr_001_5744:
    dec a
    jr nz, jr_001_5740

    pop bc
    add hl, bc
    ret


Call_001_574a:
    inc h
    ldh a, [$8b]
    ld c, $00
    srl a
    rr c
    rra
    rr c
    rra
    rr c
    ld b, a
    ldh a, [$8c]
    or c
    ld [hl+], a
    ldh a, [$8d]
    rlca
    rlca
    or b
    ld [hl+], a
    dec h
    ret


    ld a, [$c4b5]
    rst $00
    ld [hl], l
    ld d, a
    ld l, [hl]
    ld d, a
    xor a
    ld [$dfbe], a
    ld [$dfbf], a
    ret


Call_001_5776:
    ld hl, $c4af
    dec [hl]
    ret nz

    ld a, [$c4b0]
    ld [$c4af], a
    ret


Call_001_5782:
Jump_001_5782:
    call $1108
    call $1a5e
    ld a, $02
    jp $02ea


Call_001_578d:
    ld a, [$cc49]
    cp $03
    jr c, jr_001_579c

    bit 1, a
    ret nz

    ld a, [$cc55]
    inc a
    ret z

jr_001_579c:
    ld hl, $c63d
    ld a, [$cc57]
    ld [hl-], a
    ld a, [$cc56]
    ld [hl-], a
    ld a, [$cc4c]
    ld [hl-], a
    ld a, [$cc49]
    ld c, [hl]
    ld [hl], a
    ret


    ld a, [$c2ee]
    rst $00
    cp l
    ld d, a
    sub d
    ld e, b
    ld sp, hl
    ld e, b
    inc d
    ld a, l
    ld hl, $cba0
    ld bc, $0460
    call $0451
    call $3525
    call Call_001_5f53
    ld a, $0f
    call $04e7
    ldh a, [$96]
    rlca
    jr c, jr_001_57f8

    ld hl, $c62b
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld bc, $03af
    call $01d6
    jr z, jr_001_57f3

    ld bc, $00c5
    call $01d6
    jr nz, jr_001_57f8

    ld a, [$c630]
    cp $40
    jr c, jr_001_57f8

jr_001_57f3:
    ld c, $03
    call Call_001_5d0d

jr_001_57f8:
    ld a, [$c612]
    ld [$cc01], a
    ld hl, $c62b
    ld a, [hl+]
    ld [$cc49], a
    ld a, [hl+]
    ld [$cc4c], a
    ld a, [hl+]
    ld [$cc4e], a
    ld a, $03
    ld [$d000], a
    ld a, [hl+]
    ld [$d008], a
    ld [$cc3f], a
    ld a, [hl+]
    ld [$d00b], a
    ld [$cc3d], a
    ld a, [hl+]
    ld [$d00d], a
    ld [$cc3e], a
    ld a, [hl+]
    ld [$cc40], a
    ld a, [hl+]
    ld [$cc41], a
    ld a, [hl+]
    ld [$cc42], a
    inc l
    inc l
    ld a, [hl+]
    ld [$cc43], a
    ld a, [hl+]
    ld [$cc44], a
    ld l, $a2
    ld a, [hl]
    or a
    jr z, jr_001_5847

    bit 7, a
    jr z, jr_001_5853

jr_001_5847:
    inc l
    ld a, [hl-]
    srl a
    and $fc
    cp $0c
    jr nc, jr_001_5853

    ld a, $0c

jr_001_5853:
    ld [hl], a
    ld [$cbe4], a
    ld a, $88
    ld [$d02b], a
    ld de, $d00b
    call $2059
    ld [$cc66], a
    call $32dc
    ld a, $ff
    ld [$cc51], a
    ld a, $21
    call $30c7
    jr nz, jr_001_58a3

    ld a, $2a
    call $30c7
    jr nz, jr_001_5888

    ld a, $02
    ld [$c2ee], a
    ld a, $0d
    ld [$c2ef], a
    jp Jump_001_5c1b


jr_001_5888:
    ld a, $03
    ld [$c2ee], a
    xor a
    ld [$d000], a
    ret


    call $3525
    call $3076
    call $1826
    ld a, $ff
    ld [$cc51], a
    call $32be

jr_001_58a3:
    call $047b
    call $04a9
    call Call_001_493c
    call $3528
    call $30d9
    call $2b57
    call $2b8a
    call $32dc
    call $381a
    call $3737
    call $2cfd
    ld a, $02
    ld [$c2ee], a
    xor a
    ld [$c2ef], a
    ld [$cc67], a
    ld [$cc32], a
    ld [$cc31], a
    ld a, $02
    ld [$cd00], a
    call $3836
    call $1569
    call $3a06
    call Call_001_5a6f
    call $3017
    call Call_001_5c65
    call Call_001_5cec
    call Call_001_5cc4
    call Call_001_578d
    jp Jump_001_5782


    ld a, [$cc34]
    cp $ff
    jr nz, jr_001_590a

    ld a, $fc
    call $0c74
    ld a, $e7
    ld [$cc34], a

jr_001_590a:
    ld a, [$cc35]
    or a
    jr z, jr_001_591b

    ld a, $e0
    ld bc, $1ad6
    call $087f
    jp $08be


jr_001_591b:
    ld a, [$c2ef]
    rst $00
    ld d, e
    ld e, c
    add b
    ld e, c
    and $59
    rst $20
    ld e, c
    ld a, c
    ld e, d
    sbc l
    ld e, d
    jp nc, $d75b

    ld e, e
    ld [c], a
    ld e, e
    ld [$025b], a
    ld e, h
    rlca
    ld e, h
    ld de, $1b5c
    ld e, h
    inc hl
    ld e, h
    ld a, [$315b]
    ld e, h
    scf
    ld e, h
    dec a
    ld e, h
    ld c, [hl]
    ld e, e
    ld a, [hl-]
    ld h, c
    adc e
    ld c, e
    ld b, e
    ld e, h
    sub e
    ld c, d
    or c
    ld c, h
    or l
    ld c, h
    call $1a62
    call $3382
    call $1601
    ld a, [$cd00]
    cp $01
    ret nz

    call $197b
    xor a
    ld [$cbca], a
    call Call_001_49a4
    call $1606
    call $2d24
    call Call_001_578d
    ld a, $01
    ld [$c2ef], a
    call Call_001_49e5
    jp Jump_001_5cec


    call $1601
    call Call_001_4a1c
    call $1a17
    ret nz

    call $3382
    call $1a62
    ld a, [$cc04]
    or a
    jp nz, Jump_001_5cb4

    call Call_001_5f84
    ld a, [$cc67]
    or a
    jp nz, Jump_001_5c85

    ld a, [$cc68]
    or a
    jp nz, Jump_001_5c7d

    call $5d8b
    jp nc, $1da5

    call Call_001_5ece
    ld a, $05
    call $17fa
    call Call_001_4956
    call Call_001_4964
    call $328a
    call $381a
    call Call_001_7dec
    jp nz, Jump_001_5c7d

    call Call_001_5cc4
    ld a, [$cc4c]
    ld [$cc4b], a
    ld a, $08
    ld [$cd00], a
    xor a
    ld [$c2ef], a
    call $3836
    call $1569
    call $3a06
    jp $3017


    ret


    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $047b
    call $3525
    call Call_001_493c
    call $1826
    ld a, $0f
    call $04e7
    call $32be
    call $381a
    call $3737
    call $2cfd
    call $12dd
    call $161e
    ld a, $0a
    ld [$cc6a], a
    ld a, [$cc65]
    or $80
    ld [$cc65], a
    ld a, [$cc55]
    cp $ff
    call z, $30d9

Jump_001_5a27:
    ld a, [$cc76]
    and $f0
    cp $40
    jr z, jr_001_5a36

    call $2b8a
    call $2b57

jr_001_5a36:
    call $197b
    call Call_001_5a6f
    call Call_001_5d46
    call $3017
    call Call_001_5c65
    call Call_001_42cb
    call $3212
    call Call_001_5cc4
    xor a
    ld [$c2ef], a
    call Call_001_5782
    jp $128c


Call_001_5a58:
    call Call_001_5a6f
    call Call_001_5d46
    call $3017
    call Call_001_5c65
    call Call_001_42cb
    ld a, $02
    call $315c
    jp $128c


Call_001_5a6f:
    ld de, $d00b
    call $2059
    ld [$cca8], a
    ret


    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    ld a, [$cc63]
    and $07
    ld [$cc49], a
    ld a, [$cc64]
    ld [$cc4c], a
    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld a, [$cc66]
    call $2076
    jr jr_001_5aab

    ld a, [$c4ab]
    or a
    ret nz

    call $02c1
    call $047b
    call Call_001_5adb

jr_001_5aab:
    call Call_001_497e
    call Call_001_49a4
    call $3566
    call $3578
    call $358a
    call $3544
    call $3528
    call Call_001_493c
    call $32dc
    call $381a
    call $3737
    call $12dd
    ld de, $d00b
    call $2059
    ld [$cc66], a
    jp Jump_001_5a27


Call_001_5adb:
    ld a, [$cc68]
    or a
    jr z, jr_001_5b32

    ld a, $20
    call $15ba
    jr nz, jr_001_5b45

    ld h, $ce
    dec l
    ld a, [hl]
    or a
    jr z, jr_001_5b01

    inc l
    inc l
    ld a, [hl]
    or a
    jr z, jr_001_5b01

    ld a, $0f
    add l
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_001_5b01

    ld a, l
    sub $20
    ld l, a

jr_001_5b01:
    ld c, l
    call $208a
    ld a, b
    ld [$cc43], a
    ld a, c
    ld [$cc44], a
    ld a, [$d100]
    or a
    jr z, jr_001_5b45

    ld a, [$d101]
    cp $0a
    jr z, jr_001_5b45

    cp $0e
    jr z, jr_001_5b45

    ld hl, $d104
    xor a
    ld [hl], a
    ld l, $03
    ld [hl], a
    ld a, b
    ld l, $0b
    ld [hl+], a
    inc l
    ld a, c
    ld [hl+], a
    inc l
    xor a
    ld [hl], a
    jr jr_001_5b49

jr_001_5b32:
    call Call_001_4464
    ld a, [$cc76]
    and $f0
    cp $40
    jr z, jr_001_5b49

    ld a, [$cc48]
    bit 0, a
    jr nz, jr_001_5b49

jr_001_5b45:
    xor a
    ld [$cc40], a

jr_001_5b49:
    xor a
    ld [$cc68], a
    ret


    ld a, [$cc03]
    rst $00
    ld e, b
    ld e, e
    adc d
    ld e, e
    sub h
    ld e, e
    ld a, $01
    ld [$cc03], a
    ld hl, $cfc8
    ld b, $18
    call $044b
    ld a, $07
    ld [$cc49], a
    ld a, $ff
    ld [$cc4c], a
    ld a, $77
    ld [$cc56], a
    ld a, $28
    ld [$cc50], a
    ld a, $02
    ldh [rSVBK], a
    ld hl, $dc3f
    ld [hl], $ff
    xor a
    ldh [rSVBK], a
    ld a, $04
    jp $312f


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $02
    ld [$cc03], a
    call $1601
    call $1a17
    ret nz

    ld a, [$cc67]
    or a
    jp nz, Jump_001_5c85

    call $331b
    call $34a0
    call $1a62
    ld a, [$cc04]
    or a
    jp z, $1da5

    jp Jump_001_5cb4


Jump_001_5bb5:
jr_001_5bb5:
    call $1601
    ld a, [$cc67]
    or a
    jp nz, Jump_001_5c85

    call $1a62
    jp $3382


Jump_001_5bc5:
    call $1601
    ld a, [$cc67]
    or a
    jp nz, Jump_001_5c85

    jp $3382


    ld e, $00
    jp $35b8


    ld e, $01
    call $35b8
    call $3445
    jp $3276


    ld e, $02
    call $35b8
    jp $3445


    call $1601
    ld e, $00
    call $2db1
    ld a, [$cc67]
    or a
    ret z

    jp Jump_001_5c85


    call $1601
    ld e, $02
    jp $2db1


    ld e, $01
    jp $2db1


    ld hl, $6b89
    ld e, $03
    call $008a
    jr jr_001_5bb5

    ld hl, $66ff
    ld e, $03
    call $008a
    jr jr_001_5bb5

Jump_001_5c1b:
    call $1601
    ld e, $03
    jp $35b8


    ld a, [$cc67]
    or a
    jr nz, jr_001_5c85

    ld e, $04
    call $35b8
    jp $3276


    call $3346
    jp Jump_001_5bc5


    call $335a
    jp Jump_001_5bb5


    call $336e
    jp Jump_001_5bc5


    call $1a17
    ret nz

    ld hl, $cc67
    ld a, [hl]
    ld [hl], $00
    inc a
    ld a, $03
    jr nz, jr_001_5c57

    call $3382
    ld a, $01

jr_001_5c57:
    ld [$c2ef], a
    xor a
    ld [$cc02], a
    ld [$cca6], a
    ld [$ccab], a
    ret


Call_001_5c65:
    ld a, $2f
    call $30c7
    jr z, jr_001_5c71

    ld a, $2f
    jp $30d3


jr_001_5c71:
    ld a, [$cc49]
    or a
    ret nz

    call $3ac6
    ret nz

    ld [hl], $e0
    ret


Jump_001_5c7d:
    ld a, $05
    ld [$c2ef], a
    jp $3144


Jump_001_5c85:
jr_001_5c85:
    ld hl, $cc67
    ld a, [hl]
    ld b, a
    ld [hl], $00
    and $0f
    cp $02
    jr nc, jr_001_5c9c

    ld a, $01
    ld [$c2ee], a
    xor a
    ld [$c2ef], a
    ret


jr_001_5c9c:
    ld a, [$cc48]
    cp $d1
    jr nz, jr_001_5ca4

    inc b

jr_001_5ca4:
    ld a, b
    and $0f
    ld [$c2ef], a
    bit 7, b
    jp z, $3144

    ld a, $04
    jp $312f


Jump_001_5cb4:
    ld a, [$cc04]
    and $7f
    ld [$c2ef], a
    xor a
    ld [$cc04], a
    ld [$cc03], a
    ret


Call_001_5cc4:
    ld a, $0a
    call $30c7
    ret z

    ld a, $0b
    call $30c7
    jr z, jr_001_5cdb

    ld a, [$cc62]
    cp $28
    jr nz, jr_001_5cdb

    dec a
    jr jr_001_5ce3

jr_001_5cdb:
    ld a, [$cc51]
    or a
    ret z

    ld a, [$cc62]

jr_001_5ce3:
    ld hl, $cc51
    cp [hl]
    ret z

    ld [hl], a
    jp $0c74


Call_001_5cec:
Jump_001_5cec:
    ld a, [$cc61]
    inc a
    ld a, $00
    jr z, jr_001_5cf7

    ld a, [$cc4e]

jr_001_5cf7:
    ld b, a
    ld a, [$cc49]
    or a
    ld a, b
    jr z, jr_001_5d00

    xor a

jr_001_5d00:
    ld hl, $5d09
    rst $10
    ld a, [hl]
    ld [$cc52], a
    ret


    nop
    nop
    dec de
    add hl, bc

Call_001_5d0d:
    push de
    ld a, c
    call $01b7
    ld hl, $5d26
    add hl, bc
    ld de, $c62a
    ld a, [hl+]
    ld b, a

jr_001_5d1b:
    inc de
    ld a, [hl+]
    sla b
    jr nc, jr_001_5d22

    ld [de], a

jr_001_5d22:
    jr nz, jr_001_5d1b

    pop de
    ret


    cp $00
    or [hl]
    inc bc
    ld [bc], a
    ld c, b
    ld a, b
    nop
    cp $02
    ld e, l
    nop
    ld [bc], a
    ld l, b
    ld d, b
    nop
    call c, Call_001_6f00
    rst $38
    ld [bc], a
    ld e, b
    ld a, b
    rst $38
    call c, $c500
    rst $38
    ld [bc], a
    jr z, jr_001_5d8d

    rst $38

Call_001_5d46:
    ld bc, $80a0
    ld a, [$cc4a]
    or a
    jr z, jr_001_5d52

    ld bc, $c0f0

jr_001_5d52:
    ld hl, $cca0
    ld [hl], b
    inc l
    ld [hl], c
    ret


Call_001_5d59:
    ld a, [$cc55]
    inc a
    jr nz, jr_001_5d6c

    ld a, [$cd02]
    ld hl, $5d83
    rst $10
    ld a, [$cc4c]
    add [hl]
    jr jr_001_5d7d

jr_001_5d6c:
    ld a, [$cd02]
    ld hl, $5d87
    rst $10
    ld a, [$cc56]
    add [hl]
    ld [$cc56], a
    call $2d65

jr_001_5d7d:
    ld [$cc4c], a
    jp $2d24


    ldh a, [rSB]
    db $10
    rst $38
    ld hl, sp+$01
    ld [$faff], sp
    nop

jr_001_5d8d:
    call $04e6
    ret z

    ld a, [$cc4c]
    ld hl, $5db5
    call $1dbc
    jr nc, jr_001_5da5

    rst $00
    db $d3
    ld e, l
    ld l, e
    ld e, [hl]
    ld [hl], l
    ld e, [hl]
    and e
    ld e, [hl]

Jump_001_5da5:
jr_001_5da5:
    call Call_001_5dad
    call Call_001_5d59
    scf
    ret


Call_001_5dad:
    xor a
    ld [$cc53], a
    ld [$cc54], a
    ret


    push bc
    ld e, l
    ret


    ld e, l
    ret


    ld e, l
    ret


    ld e, l
    ret


    ld e, l
    jp z, $c95d

    ld e, l
    ret


    ld e, l
    ld b, b
    nop
    ret


    ld bc, $9300
    ld [bc], a
    sub h
    ld [bc], a
    sub l
    ld [bc], a
    sbc h
    inc bc
    nop
    call Call_001_5def
    ret c

    call Call_001_5e31
    ret c

    ld a, [$cd02]
    dec a
    jr nz, jr_001_5de8

    ld a, [$cc53]
    cp $03
    jr nz, jr_001_5da5

jr_001_5de8:
    ld a, $40
    ld [$cc4c], a
    scf
    ret


Call_001_5def:
    ld a, [$cc53]
    rst $00
    ei
    ld e, l
    inc d
    ld e, [hl]
    add hl, de
    ld e, [hl]
    ld e, $5e
    ld bc, $0303

Call_001_5dfe:
jr_001_5dfe:
    ld hl, $cc53

Call_001_5e01:
jr_001_5e01:
    ld a, [$cd02]
    cp b
    jr nz, jr_001_5e10

    ld a, [$cc4e]
    cp c
    jr nz, jr_001_5e10

    inc [hl]
    jr jr_001_5e12

jr_001_5e10:
    xor a
    ld [hl], a

jr_001_5e12:
    xor a
    ret


    ld bc, $0202
    jr jr_001_5dfe

    ld bc, $0100
    jr jr_001_5dfe

    ld bc, $0001
    call Call_001_5dfe
    ld a, [hl]
    cp $04
    ret nz

    ld [hl], $00
    ld a, $30
    ld [$cc4c], a
    scf
    ret


Call_001_5e31:
    ld a, [$cc54]
    rst $00
    dec a
    ld e, [hl]
    ld b, l
    ld e, [hl]
    ld c, l
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld bc, $0303
    ld hl, $cc54
    jr jr_001_5e01

    ld bc, $0302
    ld hl, $cc54
    jr jr_001_5e01

    ld bc, $0300
    ld hl, $cc54
    jr jr_001_5e01

    ld bc, $0301
    ld hl, $cc54
    call Call_001_5e01
    ld a, [hl]
    cp $04
    ret nz

    ld [hl], $00
    ld a, $c9
    ld [$cc4c], a
    scf
    ret


    call Call_001_5dad
    ld a, $40
    ld [$cc4c], a
    scf
    ret


    ld a, [$cd02]
    and $03
    rst $00
    add e
    ld e, [hl]
    sub c
    ld e, [hl]
    and l
    ld e, l
    sub [hl]
    ld e, [hl]
    call $1956
    and $40
    jp nz, Jump_001_5da5

    ld a, [$cc4c]
    ld b, a
    jr jr_001_5e9d

    ld bc, $9834
    jr jr_001_5e99

    ld bc, $9632

jr_001_5e99:
    ld a, c
    ld [$cc56], a

jr_001_5e9d:
    ld a, b
    ld [$cc4c], a
    scf
    ret


    ld a, [$cd02]
    and $03
    ld b, a
    ld a, [$ccbf]
    cp b
    jr z, jr_001_5eb4

    call Call_001_5dad
    jr jr_001_5eb8

jr_001_5eb4:
    ld hl, $cc53
    inc [hl]

jr_001_5eb8:
    ld a, b
    rst $00
    jp nz, $cc5e

    ld e, [hl]
    and l
    ld e, l
    call z, $fa5e
    ld d, e
    call z, $06fe
    jr c, jr_001_5ecc

    jp Jump_001_5da5


jr_001_5ecc:
    scf
    ret


Call_001_5ece:
    ld a, [$cc49]
    or a
    ret nz

    ld a, $03
    ldh [rSVBK], a
    ld hl, $5eed
    ld b, $08

jr_001_5edc:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld e, a
    call $5efd
    inc hl
    pop bc
    dec b
    jr nz, jr_001_5edc

    xor a
    ldh [rSVBK], a
    ret


    ld hl, sp-$40
    sbc [hl]
    ret z

    ld h, a
    ret nc

    ld [hl], d
    ret c

    ld e, a
    ldh [rNR10], a
    add sp, $6f
    ldh a, [$f6]
    ld hl, sp+$78
    ldh [$8d], a
    ld a, [$cc4c]
    cp c
    ld d, $df
    jr z, jr_001_5f2b

    ldh a, [$8d]
    dec a
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [$cc69]
    and b
    ret nz

    ld a, [$cc4c]
    ld b, a
    ld c, $08

jr_001_5f1d:
    ld a, [de]
    or a
    jr z, jr_001_5f28

    cp b
    ret z

    inc e
    dec c
    jr nz, jr_001_5f1d

    ret


jr_001_5f28:
    ld a, b
    ld [de], a
    ret


jr_001_5f2b:
    ld c, $08

jr_001_5f2d:
    ld a, [de]
    or a
    jr z, jr_001_5f36

    inc e
    dec c
    jr nz, jr_001_5f2d

    or d

jr_001_5f36:
    jr z, jr_001_5f48

    ld a, b
    dec a
    ld de, $00f8
    add e
    ld e, a
    ld a, [de]
    ld d, a
    ld a, [$cc69]
    or d
    ld [$cc69], a

jr_001_5f48:
    push hl
    ld l, [hl]
    ld h, $df
    ld b, $08
    call $044b
    pop hl
    ret


Call_001_5f53:
    ld a, $fc
    ld [$cc69], a
    ld a, $03
    ldh [rSVBK], a
    ld hl, $dfc0
    ld b, $40
    call $044b
    xor a
    ldh [rSVBK], a
    ret


Call_001_5f68:
    ld a, [$cc48]
    rrca
    ret nc

    ld a, [$cd00]
    and $04
    ret z

    ld a, [$d004]
    cp $0a
    ret z

    ld a, [$cba0]
    or a
    ret nz

    call Call_001_60ca
    ret nc

    jr jr_001_5ff6

Call_001_5f84:
    ld a, [$cd00]
    or a
    ret z

    call Call_001_5f68
    ret c

    ld a, [$cc77]
    and $7f
    ret nz

    ld a, [$cc88]
    or a
    ret nz

    ld a, [$d004]
    cp $0a
    ret z

    ld a, [$cba0]
    or a
    ret nz

    ld a, [$ccaa]
    or a
    ret nz

    ld hl, $d00b
    ld a, [hl+]
    add $04
    ld b, a
    inc l
    ld c, [hl]
    call $1435
    ldh [$8c], a
    ld b, a
    ld a, l
    ldh [$8d], a
    ld a, [$cd00]
    and $04
    jr nz, jr_001_5fc5

    call Call_001_60ad
    ret nc

jr_001_5fc5:
    ld a, $ff
    ld [$cca8], a
    ld a, [$cc49]
    rst $00
    sbc $5f
    sbc $5f
    sbc $5f
    sbc $5f
    sbc $5f
    sbc $5f
    add sp, $5f
    add sp, $5f
    call Call_001_603c
    ret c

    call Call_001_60ca
    ret nc

    jr jr_001_5ff6

    call Call_001_60ca
    ret nc

    ld a, [$cc65]
    or $30
    ld [$cc65], a
    jr jr_001_5ffe

jr_001_5ff6:
    ld a, [$cc65]
    or $10
    ld [$cc65], a

Jump_001_5ffe:
jr_001_5ffe:
    ld a, $00
    ld [$cd00], a
    ld a, $1e
    ld [$cca4], a
    ld a, $0a
    ld [$cc6a], a
    jr jr_001_6033

Call_001_600f:
    ld h, $d0
    ldh a, [$8d]
    ld c, a
    ld b, $ce
    ld a, [bc]
    or a
    ld l, $0b
    jr nz, jr_001_6028

    ld b, $04
    call Call_001_602a
    ret nc

    ld b, $00
    ld l, $0d
    jr jr_001_602a

jr_001_6028:
    ld b, $02

Call_001_602a:
jr_001_602a:
    ld a, [hl]
    add b
    and $0f
    sub $04
    cp $0a
    ret


Jump_001_6033:
jr_001_6033:
    ld a, $01
    ld [$cbca], a
    scf
    ret


Jump_001_603a:
jr_001_603a:
    xor a
    ret


Call_001_603c:
    ld a, [$cc48]
    ld h, a
    ld l, $0f
    ld a, [hl]
    or a
    ret nz

    ld a, [$cc02]
    or a
    jr nz, jr_001_603a

    ldh a, [$8c]
    call Call_001_60e2
    jr nc, jr_001_603a

    dec a
    jr z, jr_001_6070

    ld a, [$cc75]
    or a
    jr nz, jr_001_603a

    call Call_001_6081
    jr c, jr_001_6091

    call Call_001_600f
    jr nc, jr_001_603a

jr_001_6065:
    ld hl, $4662
    ld e, $04
    call $008a
    jp Jump_001_5ffe


jr_001_6070:
    ld hl, $d00f
    ld a, [hl]
    or a
    ret nz

    call $2b57
    call $2b8a
    call $2af0
    jr jr_001_6065

Call_001_6081:
    ldh a, [$8d]
    inc a
    call Call_001_608b
    ret c

    ldh a, [$8d]
    dec a

Call_001_608b:
    ld c, a
    ld b, $cf
    ld a, [bc]
    jr jr_001_60e2

jr_001_6091:
    ldh a, [$8d]
    ld c, a
    ld b, $ce
    ld a, [bc]
    cp $0c
    ld b, $02
    jr z, jr_001_609f

    ld b, $04

jr_001_609f:
    ld hl, $d00b
    ld a, [hl]
    add b
    and $0f
    sub $04
    cp $0a
    ret nc

    jr jr_001_6065

Call_001_60ad:
    scf
    ld a, [$cca8]
    inc a
    ret z

    ld a, [$cca8]
    ld b, a
    ldh a, [$8d]
    cp b
    ret z

    dec b
    cp b
    jr z, jr_001_60c1

jr_001_60bf:
    scf
    ret


jr_001_60c1:
    ldh a, [$8c]
    call Call_001_60e2
    jr nc, jr_001_60bf

    xor a
    ret


Call_001_60ca:
    ld a, $ff
    ld [$cec0], a
    ld hl, $46a8
    ld e, $04
    call $008a
    ld a, [$cec0]
    cp $ff
    jp z, Jump_001_603a

    jp Jump_001_6033


Call_001_60e2:
jr_001_60e2:
    ld hl, $60e8
    jp $1ddd


    db $f4
    ld h, b
    rlca
    ld h, c
    inc d
    ld h, c
    rra
    ld h, c
    ld l, $61
    add hl, sp
    ld h, c
    and $00
    rst $20
    nop
    add sp, $00
    jp hl


    nop
    ld [$eb00], a
    ld bc, $00ed
    xor $00
    rst $28
    nop
    nop
    and $00
    rst $20
    nop
    add sp, $00
    db $ed
    nop
    xor $00
    rst $28
    nop
    nop
    ld [$eb00], a
    nop
    db $ec
    nop
    db $ed
    nop
    add sp, $00
    nop
    inc [hl]
    nop
    ld [hl], $00
    ld c, a
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    ld c, a
    nop
    nop
    nop
    call Call_001_6140
    jp $3382


Call_001_6140:
    ld a, [$cc03]
    rst $00
    ld c, d
    ld h, c
    ld a, a
    ld h, c
    ld hl, sp+$61
    call $12ba
    ld a, $36
    call $1717
    ld a, $01
    jr nc, jr_001_6157

    inc a

jr_001_6157:
    ld [$cc03], a
    xor a
    ld [$cbb3], a
    ld [$cd00], a
    ld a, $28
    ld [$cbb4], a
    ret


Call_001_6167:
    ld hl, $cbb4
    dec [hl]
    ret nz

    ld [hl], $1e
    ret


Call_001_616f:
Jump_001_616f:
jr_001_616f:
    ld hl, $cbb3
    inc [hl]
    ret


    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ret


    ld a, [$cbb3]
    rst $00
    adc e
    ld h, c
    xor b
    ld h, c
    or a
    ld h, c
    cp h
    ld h, c

Call_001_618b:
    call Call_001_616f
    ld a, $10
    ld [$c490], a
    ld a, $02
    ldh [$9b], a
    xor a
    ld [$cbb7], a
    call Call_001_627a
    ld a, $10
    ld [$cc6a], a
    ld a, $b9
    jp $0c74


    ld a, $02
    call $1393
    ld hl, $cbb7
    inc [hl]
    ld a, [hl]
    jp nz, Jump_001_627a

    jr jr_001_616f

    ld a, $02
    jp $1393


    ld a, $02
    call $1393
    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$d00d]
    and $f0
    swap a
    or $10
    ld [$cc66], a
    ld a, $80
    ld [$cc63], a
    ld a, $33
    ld [$cc64], a
    ld a, $0c
    ld [$cc65], a
    xor a
    ld [$cc6b], a
    ld a, $03
    ld [$c2ef], a
    ld a, $03
    ldh [$9b], a
    ld a, $24
    call $30cd
    ld a, $f1
    jp $0c74


    ld a, [$cbb3]
    rst $00
    inc b
    ld h, d
    jr nz, @+$64

    or a
    ld h, c
    ld c, h
    ld h, d
    call Call_001_618b
    ld a, $ab
    call $04e7
    call $2af0
    ld a, $0b
    ld [$cc6a], a
    ld a, $20
    ld [$cc6c], a
    xor a
    ld hl, $d008
    ld [hl+], a
    ld [hl], a
    ret


    ld a, $02
    call $1393
    ld hl, $cbb7
    inc [hl]
    inc [hl]
    ld a, [hl]
    jp nz, Jump_001_627a

    call Call_001_616f
    call $3ac6
    ret nz

    ld [hl], $de
    ret


    ld a, $02
    call $1393
    call Call_001_6167
    ret nz

    ld a, $00
    ld [$cbb7], a
    call $3168
    jp Jump_001_616f


    ld a, $02
    call $1393
    ld hl, $cbb7
    dec [hl]
    ld a, [hl]
    jp nz, Jump_001_627a

    call $1606
    ld a, $01
    ld [$cc6a], a
    ld hl, $7e40
    call $3048
    ld a, $01
    ld [$c2ef], a
    ld a, $03
    ldh [$9b], a
    ld a, $01
    ld [$cd00], a
    ld a, $f1
    jp $0c74


Call_001_627a:
Jump_001_627a:
    call $1372
    ld a, $02
    ldh [rSVBK], a
    ld hl, $d800
    ld b, $80

jr_001_6286:
    xor a
    ld [hl+], a
    inc hl
    dec b
    jr nz, jr_001_6286

    xor a
    ldh [rSVBK], a
    ret


    inc c
    ld h, h
    rrca
    ld h, h
    ld [de], a
    ld h, h
    jr jr_001_62fc

    ld e, $64
    ld hl, $2d64
    ld h, h
    add hl, sp
    ld h, h
    ccf
    ld h, h
    ld b, l
    ld h, h
    ld c, e
    ld h, h
    ld d, a
    ld h, h
    ld h, b
    ld h, h
    ld h, [hl]
    ld h, h
    ld l, c
    ld h, h
    ld l, h
    ld h, h
    ld [hl], d
    ld h, h
    ld [hl], l
    ld h, h
    ld a, b
    ld h, h
    ld a, e
    ld h, h
    ld a, [hl]
    ld h, h
    add c
    ld h, h
    add h
    ld h, h
    add a
    ld h, h
    adc d
    ld h, h
    adc l
    ld h, h
    sub b
    ld h, h
    sub e
    ld h, h
    sub [hl]
    ld h, h
    sbc c
    ld h, h
    sbc h
    ld h, h
    sbc a
    ld h, h
    and d
    ld h, h
    and l
    ld h, h
    xor b
    ld h, h
    xor e
    ld h, h
    xor [hl]
    ld h, h
    or c
    ld h, h
    or h
    ld h, h
    or a
    ld h, h
    cp d
    ld h, h
    cp l
    ld h, h
    ret nz

    ld h, h
    jp $c664


    ld h, h
    ret


    ld h, h
    call z, $cf64
    ld h, h
    jp nc, $d564

    ld h, h
    ret c

    ld h, h
    db $db
    ld h, h
    sbc $64
    pop hl
    ld h, h

jr_001_62fc:
    db $e4
    ld h, h
    rst $20
    ld h, h
    ld [$ed64], a
    ld h, h
    ldh a, [$64]
    di
    ld h, h
    or $64
    ld sp, hl
    ld h, h
    db $fc
    ld h, h
    rst $38
    ld h, h
    dec b
    ld h, l
    ld [$0b65], sp
    ld h, l
    ld c, $65
    ld de, $1465
    ld h, l
    rla
    ld h, l
    ld a, [de]
    ld h, l
    dec e
    ld h, l
    jr nz, jr_001_6389

    inc hl
    ld h, l
    ld h, $65
    ld h, $65
    ld h, $65
    add hl, hl
    ld h, l
    inc l
    ld h, l
    cpl
    ld h, l
    ld [hl-], a
    ld h, l
    dec [hl]
    ld h, l
    jr c, @+$67

    jr c, @+$67

    ld a, $65
    ld b, c
    ld h, l
    ld b, a
    ld h, l
    ld c, d
    ld h, l
    ld c, l
    ld h, l
    ld d, b
    ld h, l
    ld d, e
    ld h, l
    ld d, [hl]
    ld h, l
    ld e, c
    ld h, l
    ld e, h
    ld h, l
    ld e, a
    ld h, l
    ld h, d
    ld h, l
    ld h, l
    ld h, l
    ld l, b
    ld h, l
    ld l, e
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], c
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], a
    ld h, l
    ld [hl], a
    ld h, l
    ld a, d
    ld h, l
    ld a, l
    ld h, l
    add b
    ld h, l
    add e
    ld h, l
    add [hl]
    ld h, l
    adc c
    ld h, l
    adc h
    ld h, l
    adc a
    ld h, l
    sub d
    ld h, l
    sub l
    ld h, l
    sbc b
    ld h, l
    sbc e
    ld h, l
    sbc [hl]
    ld h, l
    and c
    ld h, l
    and h
    ld h, l
    and a
    ld h, l
    xor d
    ld h, l
    xor l
    ld h, l
    or b
    ld h, l
    or e

jr_001_6389:
    ld h, l
    or [hl]
    ld h, l
    cp c
    ld h, l
    cp c
    ld h, l
    cp h
    ld h, l
    cp a
    ld h, l
    jp nz, $c565

    ld h, l
    push bc
    ld h, l
    ret z

    ld h, l
    bit 4, l
    adc $65
    pop de
    ld h, l
    call nc, $d765
    ld h, l
    jp c, $e065

    ld h, l
    db $e3
    ld h, l
    and $65
    db $ec
    ld h, l
    ld a, [c]
    ld h, l
    ld hl, sp+$65
    inc b
    ld h, [hl]
    ld a, [bc]
    ld h, [hl]
    db $10
    ld h, [hl]
    ld d, $66
    inc e
    ld h, [hl]
    ld [hl+], a
    ld h, [hl]
    jr z, @+$68

    ld l, $66
    inc [hl]
    ld h, [hl]
    dec a
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld b, e
    ld h, [hl]
    ld c, c
    ld h, [hl]
    ld c, a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld e, e
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld l, l
    ld h, [hl]
    ld [hl], e
    ld h, [hl]
    ld a, c
    ld h, [hl]
    ld a, a
    ld h, [hl]
    add l
    ld h, [hl]
    adc e
    ld h, [hl]
    adc [hl]
    ld h, [hl]
    sub h
    ld h, [hl]
    sub a
    ld h, [hl]
    sbc d
    ld h, [hl]
    and b
    ld h, [hl]
    and e
    ld h, [hl]
    and [hl]
    ld h, [hl]
    xor c
    ld h, [hl]
    xor h
    ld h, [hl]
    xor a
    ld h, [hl]
    or d
    ld h, [hl]
    or l
    ld h, [hl]
    cp b
    ld h, [hl]
    cp e
    ld h, [hl]
    cp [hl]
    ld h, [hl]
    pop bc
    ld h, [hl]
    call nz, $c766
    ld h, [hl]
    jp z, $cd66

    ld h, [hl]
    nop
    nop
    ld b, b
    ld bc, $4008
    add b
    ld d, b
    ld e, [hl]
    ld b, b
    ld d, b
    ld e, [hl]
    add a
    jr jr_001_645b

    ld b, a
    ld e, b
    ld b, b
    inc bc
    or b
    ld b, l
    add b
    jr nc, jr_001_646c

    sub h
    cp b
    ld e, l
    jp $4840


    ld h, d
    sbc b
    ld e, l
    add b
    jr nc, jr_001_6478

    sub h
    ldh [$5d], a
    jp $4840


    ld h, d
    sbc b
    ld e, l
    add a
    sbc b
    ld b, b
    ld b, a
    ret c

    ld b, b
    add a
    jr jr_001_6483

    ld b, a
    ld e, b
    ld b, c
    sub e
    sbc b
    ld b, c
    ld b, l
    ld b, b
    ld c, b
    add c
    jr nc, jr_001_6496

    sub l
    ld b, b
    ld c, b
    push bc
    ld b, b
    ld c, b
    ld a, b
    ld c, b
    ld e, [hl]
    jp $4840


    ret nc

jr_001_645b:
    ld l, b
    ld b, h
    ld h, d
    ld hl, sp+$46
    add a
    jr nc, jr_001_64ac

    ld b, a
    ld [hl], b
    ld c, c
    ld [$4878], sp
    ld [$4870], sp

jr_001_646c:
    add b
    jr nc, jr_001_64b7

    ld b, l
    ld b, b
    ld c, b
    dec d
    or b
    ld c, c
    dec d
    ldh [rOBP1], a

jr_001_6478:
    dec d
    db $10
    ld c, d
    dec d
    ld b, b
    ld c, d
    dec d
    ld [hl], b
    ld c, d
    dec d
    and b

jr_001_6483:
    ld c, d
    dec d
    ret nc

    ld c, d
    dec d
    nop
    ld c, e
    dec d
    jr nc, jr_001_64d8

    dec d
    ld h, b
    ld c, e
    dec d
    sub b
    ld c, e
    dec d
    ret nz

    ld c, e

jr_001_6496:
    dec d
    ldh a, [rWX]
    dec d
    jr nz, jr_001_64e8

    dec d
    ld d, b
    ld c, h
    dec d
    add b
    ld c, h
    dec d
    or b
    ld c, h
    dec d
    ldh [$4c], a
    dec d
    db $10
    ld c, l
    dec d

jr_001_64ac:
    ld b, b
    ld c, l
    dec d
    and b
    ld c, l
    dec d
    ret nc

    ld c, l
    dec d
    nop
    ld c, [hl]

jr_001_64b7:
    dec d
    jr nc, jr_001_6508

    dec d
    ld h, b
    ld c, [hl]
    dec d
    sub b
    ld c, [hl]
    dec d
    ret nz

    ld c, [hl]
    dec d
    ldh a, [$4e]
    dec d
    jr nz, jr_001_6518

    dec d
    ld d, b
    ld c, a
    dec d
    add b
    ld c, a
    dec d
    or b
    ld c, a
    dec d
    ldh [rVBK], a
    dec d
    db $10
    ld d, b

jr_001_64d8:
    dec d
    ld b, b
    ld d, b
    dec d
    ld [hl], b
    ld d, b
    dec d
    and b
    ld d, b
    dec d
    ret nc

    ld d, b
    dec d
    nop
    ld d, c
    dec d

jr_001_64e8:
    jr nc, jr_001_653b

    dec d
    ld h, b
    ld d, c
    dec d
    sub b
    ld d, c
    dec d
    ret nz

    ld d, c
    dec d
    ldh a, [rHDMA1]
    dec d
    ret nc

    ld e, c
    dec d
    nop
    ld e, d
    dec d
    ld h, b
    ld e, d
    sub e
    ld [$475e], sp
    cp b
    ld b, c
    dec d
    ld h, b
    ld d, h

jr_001_6508:
    dec d
    sub b
    ld d, h
    dec d
    ret nz

    ld d, h
    dec d
    ldh a, [rHDMA4]
    dec d
    jr nz, jr_001_6569

    dec d
    ld d, b
    ld d, l
    dec d

jr_001_6518:
    add b
    ld d, l
    dec d
    or b
    ld d, l
    dec d
    db $10
    ld d, [hl]
    dec d
    and b
    ld d, [hl]
    dec d
    ret nc

    ld d, [hl]
    dec d
    ldh [rHDMA5], a
    dec d
    ld b, b
    ld d, [hl]
    dec d
    ld [hl], b
    ld d, [hl]
    dec d
    db $10
    ld e, h
    dec d
    ld b, b
    ld e, h
    ld [hl], b
    ld [hl], b
    ld e, h
    sub l
    ld [hl], b
    ld c, l

jr_001_653b:
    ld [hl], b
    adc b
    ld e, h
    ld [hl], b
    add b
    ld e, h
    sub l
    ret nc

    ld c, l
    ld [hl], b
    sub b
    ld e, h
    ld [hl], b
    and b
    sbc $15
    db $10
    ld d, e
    dec d
    ldh [rHDMA2], a
    dec d
    ld b, b
    ld d, e
    dec d
    ld [hl], b
    ld d, e
    dec d
    and b
    ld d, e
    dec d
    ret nc

    ld d, e
    dec d
    nop
    ld d, h
    dec d
    jr nc, jr_001_65b6

    dec d
    xor b
    ld e, h
    dec d
    ret c

    ld e, h
    dec d

jr_001_6569:
    ld [$155d], sp
    jr c, jr_001_65cb

    dec d
    ld d, b
    ld d, d
    dec d
    add b
    ld d, d
    dec d
    or b
    ld d, d
    dec d
    jr nc, jr_001_65d4

    dec d
    sub b
    ld e, d
    dec d
    ret nz

    ld e, d
    dec d
    ldh a, [$5a]
    dec d
    jr nz, jr_001_65e1

    dec d
    add b
    ld e, e
    dec d
    or b
    ld e, e
    dec d
    ldh [$5b], a
    dec d
    ld h, b
    ld d, a
    dec d
    sub b
    ld d, a
    dec d
    ret nz

    ld d, a
    dec d
    ldh a, [$57]
    dec d
    ld l, b
    ld e, l
    dec d
    jr nz, jr_001_65f9

    dec d
    ld d, b
    ld e, b
    dec d
    add b
    ld e, b
    dec d
    or b
    ld e, b
    dec d
    ldh [$58], a
    dec d
    db $10
    ld e, c
    dec d
    ld b, b
    ld e, c
    dec d
    ld [hl], b
    ld e, c

jr_001_65b6:
    dec d
    and b
    ld e, c
    ld a, b
    adc b
    ld c, b
    ld [hl], b
    sub b
    ld c, b
    ld [hl], b
    sbc b
    ld c, b
    ld [hl], b
    and b
    ld c, b
    ld [hl], b
    xor b
    ld c, b
    ld [hl], b
    or b
    ld c, b

jr_001_65cb:
    ld [hl], b
    or b
    sbc $70
    cp b
    ld c, b
    ld [hl], b
    ret nz

    ld c, b

jr_001_65d4:
    ld [hl], b
    ret z

    ld c, b
    ld [hl], b
    ret nc

    ld c, b
    ldh a, [$d8]
    ld c, b
    jr c, jr_001_65df

jr_001_65df:
    ld d, a
    ld [hl], b

jr_001_65e1:
    ldh [rOBP0], a
    rlca
    add sp, $48
    sub l
    ret nc

    ld d, [hl]
    jr nc, jr_001_6613

    ld c, c
    add l
    nop
    ld c, b
    ld b, l
    nop
    ld c, b
    add a
    ld hl, sp+$41
    ld b, a
    jr c, jr_001_663a

    add b

jr_001_65f9:
    jr nc, jr_001_6643

    sub l
    and b
    ld d, [hl]
    push bc
    ld b, b
    ld c, b
    ld [hl], b
    ld l, b
    ld b, h
    add a
    ld a, b
    ld b, d
    ld b, a
    ld a, b
    ld b, e
    add a
    cp b
    ld b, d
    ld b, a
    cp b
    ld b, e
    add a
    jr c, jr_001_6656

jr_001_6613:
    ld d, d
    ld hl, sp+$43
    add a
    ld [hl], b
    ld b, h
    ld b, [hl]
    or b
    ld b, h
    add a
    ld hl, sp+$42
    ld b, a
    ld hl, sp+$42
    sub l
    ret nz

    ld d, h
    ld [hl], b
    ret z

    ld c, b
    adc [hl]
    db $10
    ld b, h
    ld c, e
    ld c, b
    ld b, h
    xor c
    jr nz, jr_001_6683

    jr @+$32

    ld d, d
    xor c
    jr c, jr_001_6689

    sbc b
    ld c, b
    ld d, d

jr_001_663a:
    ld a, b
    and b
    ld e, h
    ld [hl], b
    ld a, b
    ld e, h
    inc bc
    or b
    ld b, l

jr_001_6643:
    adc [hl]
    ld [$4d45], sp
    ld a, b
    ld b, l
    adc [hl]
    ld b, b
    ld b, l
    ld c, b
    xor b
    ld b, l
    add a
    ld b, b
    ld b, a
    ld b, a
    add b
    ld b, a
    add h

jr_001_6656:
    ret nz

    ld b, [hl]
    ld b, c
    add sp, $46
    add e
    jr nz, jr_001_66a4

    ld b, c
    ld b, b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c
    ld d, b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c
    ld h, b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c
    ld [hl], b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c
    ld b, b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c
    ld d, b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c

jr_001_6683:
    ld h, b
    ld b, [hl]
    add e
    jr nz, @+$48

    ld b, c

jr_001_6689:
    ld [hl], b
    ld b, [hl]
    dec d
    db $10
    ld b, a
    add l
    ret nz

    ld b, a
    ld h, e
    ldh [rBGP], a
    ld a, b
    ld c, b
    ld e, [hl]
    ld [hl], c
    jr nc, jr_001_66f8

    add a
    ret nc

    ld b, l
    ld b, a
    ret nc

    ld b, l
    rlca
    add b
    ld b, [hl]
    ld a, b

jr_001_66a4:
    ld b, b
    ld e, [hl]
    ld [hl], b
    jr z, jr_001_6707

    jr c, jr_001_66ab

jr_001_66ab:
    ld d, a
    jr c, @+$0a

    ld d, a
    jr c, jr_001_66c1

    ld d, a
    jr c, jr_001_66cc

    ld d, a
    jr c, jr_001_66d7

    ld d, a
    jr c, jr_001_66e2

    ld d, a
    jr c, jr_001_66ed

    ld d, a
    jr c, jr_001_66f8

    ld d, a

jr_001_66c1:
    jr c, jr_001_6703

    ld d, a
    jr c, jr_001_670e

    ld d, a
    jr c, jr_001_6719

    ld d, a
    jr c, jr_001_6724

jr_001_66cc:
    ld d, a
    ld [$4880], sp
    ld b, b
    ld h, a
    ld b, b
    ld h, a
    ld b, [hl]
    ld h, a
    ld c, h

jr_001_66d7:
    ld h, a
    ld e, b
    ld h, a
    ld h, h
    ld h, a
    ld [hl], b
    ld h, a
    ld a, h
    ld h, a
    add d
    ld h, a

jr_001_66e2:
    adc [hl]
    ld h, a
    sub h
    ld h, a
    and b
    ld h, a
    and [hl]
    ld h, a
    xor h
    ld h, a
    cp b

jr_001_66ed:
    ld h, a
    call nz, $d067
    ld h, a
    call c, $e867
    ld h, a
    db $f4
    ld h, a

jr_001_66f8:
    inc c
    ld l, b
    jr jr_001_6764

    ld [hl], $68
    ld b, d
    ld l, b
    ld c, b
    ld l, b
    ld c, [hl]

jr_001_6703:
    ld l, b
    ld d, h
    ld l, b
    ld e, d

jr_001_6707:
    ld l, b
    ld h, b
    ld l, b
    ld h, [hl]
    ld l, b
    ld l, h
    ld l, b

jr_001_670e:
    ld [hl], d
    ld l, b
    ld a, b
    ld l, b
    ld a, [hl]
    ld l, b
    add h
    ld l, b
    adc d
    ld l, b
    sub b

jr_001_6719:
    ld l, b
    sub [hl]
    ld l, b
    sbc h
    ld l, b
    and d
    ld l, b
    and d
    ld l, b
    xor b
    ld l, b

jr_001_6724:
    xor [hl]
    ld l, b
    cp d
    ld l, b
    call z, $d868
    ld l, b
    db $e4
    ld l, b
    ldh a, [rBCPS]
    db $fc
    ld l, b
    ld [$1469], sp
    ld l, c
    ld a, [de]
    ld l, c
    jr nz, jr_001_67a3

    jr nz, jr_001_67a5

    ld h, $69
    ld h, $69
    inc b
    ret nc

    nop
    add [hl]
    ld bc, $0419
    sub $80
    add a
    add c
    add a
    inc b
    sub $40
    sbc a
    pop bc
    add e
    inc b
    jp nc, $9f40

    ret nz

    inc bc
    inc b
    call nc, $9840
    ld bc, $0499
    ret nc

    ld b, b
    sbc b
    nop
    add hl, de

jr_001_6764:
    inc b
    call nc, $9c40
    ld bc, $0499
    ret nc

    ld b, b
    sbc h
    nop
    add hl, de
    inc b
    call nc, $9840
    ld bc, $049f
    ret nc

    ld b, b
    sbc b
    nop
    rra
    inc b
    call c, $8c00
    ld bc, $042f
    ret nc

    nop
    sbc h
    nop
    and e
    inc b
    call nc, $9c00
    ld bc, $0423
    ret nc

    nop
    add b
    nop
    ld e, a
    inc b
    ret nc

    nop
    sbc b
    nop
    xor e
    inc b
    call nc, $9800
    ld bc, $052b
    ret nc

    nop

jr_001_67a3:
    adc b
    nop

jr_001_67a5:
    ld a, a
    dec b
    ret nc

    nop
    add [hl]
    ld bc, $041f
    pop de
    ld b, b
    sbc [hl]
    and b
    sub l
    inc b
    push de
    ld b, b
    sbc [hl]
    and c
    dec d
    inc bc
    call c, $9800
    ld bc, $03ab
    ret c

    nop
    sbc b
    nop
    dec hl
    inc bc
    ret c

    nop
    sbc b
    nop
    sbc a
    inc bc
    call c, $9800
    ld bc, $031f
    call c, $9800
    ld bc, $03ab
    ret c

    nop
    sbc b
    nop
    dec hl
    inc bc
    call c, $9860
    ld h, c
    add c
    inc bc
    ret c

    ld h, b
    sbc b
    ld h, b
    ld bc, $d404
    nop
    sbc b
    ld bc, $04a3
    ret nc

    nop
    sbc b
    nop
    inc hl
    inc b
    call nc, $9800
    ld bc, $049f
    ret nc

    nop
    sbc b
    nop
    sbc a
    inc b
    sub $00
    sbc e
    pop bc
    add e
    inc b
    jp nc, $9b00

    ret nz

    inc bc
    inc b
    call nc, $9c00
    ld bc, $04a3
    ret nc

    nop
    sbc h
    nop
    inc hl
    inc b
    call nc, $9c00
    ld bc, $048f
    ret nc

    nop
    sbc h
    nop
    adc a
    inc b
    pop de
    nop
    sbc c
    nop
    add c
    inc b
    sub $00
    sbc e
    pop bc
    add e
    inc b
    jp nc, $9b00

    ret nz

    inc bc
    inc b
    jp nc, $9d40

    ret nz

    adc c
    inc b
    sub $40
    sbc l
    pop bc
    add hl, bc
    rlca
    jp nc, $9200

    ld bc, $1a1f
    ld l, l
    ld b, b
    add h
    pop hl
    inc bc
    ld a, [de]
    ld l, l
    add b
    add h
    pop hl
    inc bc
    ld a, [de]
    ld l, l
    ret nz

    add l
    ld hl, $1a09
    ld l, [hl]
    ld h, b
    add l
    ld hl, $1a0d
    ld l, a
    ld b, b
    add l
    ld hl, $1a09
    ld l, a
    ldh [$85], a
    ld hl, $1a07
    ld [hl], b
    ld h, b
    add l
    ld hl, $1b07
    ld a, c
    ld h, b
    add l
    ld hl, $0701
    ret c

    nop
    sub d
    nop
    rrca
    rlca
    reti


    nop
    sub d
    nop
    rrca
    rlca
    jp c, $9200

    ld b, b
    ld a, [bc]
    rlca
    jp c, $92b0

    ld b, b
    add hl, bc
    rlca
    db $db
    ld d, b
    sub d
    ld b, b
    dec b
    rlca
    db $db
    or b
    sub d
    ld b, b
    inc bc
    rlca
    db $db
    ldh a, [$92]
    ld b, b
    inc bc
    rlca
    call c, $9230
    ld b, b
    ld bc, $dc07
    ld d, b
    sub d
    nop
    inc bc
    inc b
    ret nc

    nop
    sbc l
    ld h, b
    sub l
    inc b
    call nc, $9d00
    ld h, c
    dec d
    rlca
    ret c

    nop
    adc h
    ld bc, $03af
    ret c

    nop
    sbc b
    nop
    xor e
    inc bc
    call c, $9800
    ld bc, $042b
    ret nc

    nop
    sbc b
    nop
    adc e
    inc b
    call nc, $9800
    ld bc, $030b
    ret c

    nop
    sbc b
    ld b, b
    sbc a
    inc bc
    call c, $9800
    ld b, c
    rra
    inc bc
    ret c

    nop
    sbc b
    ret nz

    sub e
    inc bc
    call c, $9800
    pop bc
    inc de
    inc bc
    reti


    ld b, b
    sbc d
    nop
    adc l
    inc bc
    db $dd
    ld b, b
    sbc d
    ld bc, $060d
    db $d3
    ret nz

    sbc a
    ld h, b
    add e
    ld b, $d7
    ret nz

    sbc a
    ld h, c
    inc bc
    inc bc
    ret c

    nop
    sbc b
    ld h, b
    sbc a
    inc bc
    call c, $9800
    ld h, c
    rra
    ld [bc], a
    ret nc

    nop
    add d
    nop
    rra
    ld [bc], a
    ret nc

    nop
    add h
    nop
    rra
    rlca
    ret c

    nop
    add e
    nop
    cpl
    sbc h
    ld l, d
    xor [hl]
    ld l, d
    ret nz

    ld l, d
    or $6a
    db $fc
    ld l, d
    inc d
    ld l, e
    inc l
    ld l, e
    inc l
    ld l, e
    ld [hl-], a
    ld l, e
    sbc [hl]
    ld l, e
    xor d
    ld l, e
    or [hl]
    ld l, e
    jp nz, $e66b

    ld l, e
    ld a, [bc]
    ld l, h
    jr z, @+$6e

    ld b, b
    ld l, h
    ld b, [hl]
    ld l, h
    ld c, h
    ld l, h
    ld d, d
    ld l, h
    ld e, b
    ld l, h
    ld e, [hl]
    ld l, h
    ld h, h
    ld l, h
    ld l, d
    ld l, h
    ld [hl], b
    ld l, h
    db $76
    ld l, h
    ld a, h
    ld l, h
    add d
    ld l, h
    adc b
    ld l, h
    adc b
    ld l, h
    adc b
    ld l, h
    adc b
    ld l, h
    adc b
    ld l, h
    adc [hl]
    ld l, h
    sbc d
    ld l, h
    and [hl]
    ld l, h
    cp b
    ld l, h
    add sp, $6c
    ld [de], a
    ld l, l
    ld e, $6d
    ld a, [hl+]
    ld l, l
    ld c, [hl]
    ld l, l
    ld a, b
    ld l, l
    sbc h
    ld l, l
    call z, $086d
    ld l, [hl]
    ld [hl-], a
    ld l, [hl]
    ld e, h
    ld l, [hl]
    adc h
    ld l, [hl]
    sub d
    ld l, [hl]
    sbc b
    ld l, [hl]
    sbc [hl]
    ld l, [hl]
    and h
    ld l, [hl]
    xor d
    ld l, [hl]
    or b
    ld l, [hl]
    or [hl]
    ld l, [hl]
    cp h
    ld l, [hl]
    jp nz, $c86e

    ld l, [hl]
    and $6e
    db $10
    ld l, a
    ld b, b
    ld l, a
    ld c, h
    ld l, a
    ld d, d
    ld l, a
    ld e, b
    ld l, a
    ld [hl], b
    ld l, a
    adc b
    ld l, a
    and b
    ld l, a
    cp [hl]
    ld l, a
    call c, $dc6f
    ld l, a
    call c, $dc6f
    ld l, a
    db $f4
    ld l, a
    inc c
    ld [hl], b
    inc h
    ld [hl], b
    ld b, d
    ld [hl], b
    ld e, d
    ld [hl], b
    ld [hl], d
    ld [hl], b
    adc d
    ld [hl], b
    and d
    ld [hl], b
    ret nz

    ld [hl], b
    call z, $d870
    ld [hl], b
    ldh a, [rSVBK]
    or $70
    db $e4
    ld [hl], b
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    ld [bc], a
    ld [hl], c
    inc d
    ld [hl], c
    ld h, $71
    jr c, jr_001_6a5f

    ld c, d
    ld [hl], c
    ld e, h
    ld [hl], c
    ld l, [hl]
    ld [hl], c
    add b
    ld [hl], c
    sub d
    ld [hl], c
    and h
    ld [hl], c
    or [hl]
    ld [hl], c
    ret z

    ld [hl], c
    ret z

    ld [hl], c
    jp c, $e671

    ld [hl], c
    and $71
    and $71
    ld a, [c]
    ld [hl], c
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc b
    ld [hl], d
    inc e
    ld [hl], d
    inc [hl]
    ld [hl], d
    inc [hl]
    ld [hl], d
    ld c, h
    ld [hl], d
    ld c, h
    ld [hl], d
    ld c, h
    ld [hl], d
    ld e, [hl]
    ld [hl], d
    ld h, h
    ld [hl], d
    ld l, d
    ld [hl], d
    adc [hl]
    ld [hl], d
    or d
    ld [hl], d
    jp z, $0c72

    ld [hl], e
    jr nc, jr_001_6aaf

    ld l, h
    ld [hl], e
    sub b
    ld [hl], e
    call z, $f073
    ld [hl], e
    inc d
    ld [hl], h
    jr c, jr_001_6abc

    ld a, d
    ld [hl], h

jr_001_6a4a:
    sbc [hl]
    ld [hl], h
    jp c, $f874

    ld [hl], h
    inc [hl]
    ld [hl], l
    ld l, d
    ld [hl], l
    adc [hl]
    ld [hl], l
    ret nc

    ld [hl], l
    add sp, $75
    nop
    db $76
    ld [hl], $76
    ld a, [hl]

jr_001_6a5f:
    db $76
    xor b
    db $76
    call z, $fc76
    db $76
    jr c, jr_001_6adf

    ld l, b
    ld [hl], a
    adc h
    ld [hl], a
    or b
    ld [hl], a
    and $77
    ld hl, sp+$77
    ld [hl+], a
    ld a, b
    ld b, [hl]
    ld a, b
    ld c, h
    ld a, b
    ld d, d
    ld a, b
    ld e, b
    ld a, b
    ld e, [hl]
    ld a, b
    add d
    ld a, b
    and [hl]
    ld a, b
    or d
    ld a, b
    db $f4
    ld a, b
    ld a, [$1878]
    ld a, c
    ld e, $79
    inc h
    ld a, c
    ld a, [hl+]
    ld a, c
    jr nc, jr_001_6b0b

    ld [hl], $79
    inc a
    ld a, c
    ld b, d
    ld a, c
    ld c, b
    ld a, c
    ld e, h
    ld [hl], a
    ldh a, [$6e]
    dec a
    adc b
    nop
    xor a
    ld [hl], b
    ld l, a
    add hl, de
    sub b
    nop
    cp l
    ldh a, [$71]
    sbc c
    sbc b
    nop
    inc hl
    ld [hl], b

jr_001_6aaf:
    ld a, [hl]
    jr nz, jr_001_6a4a

    add c
    sub e
    ldh a, [$7d]
    xor e
    sbc b
    add b
    sub e
    ld [hl], b
    ld a, d

jr_001_6abc:
    add hl, de
    adc b
    nop
    ld c, a
    ld [hl], b
    ld a, [hl]
    ld a, $83
    add b
    cp l
    pop af
    ld b, b
    adc c
    adc b
    nop
    rst $08
    pop af
    ld l, e
    jp nz, $008d

    rst JumpTable
    or c
    ld b, e
    and d
    sub e
    nop
    adc a
    or c
    ld [hl], c
    ld a, l
    sub h
    nop
    cp a
    or c

jr_001_6adf:
    ld l, b
    ld bc, $0188
    rst $08
    ld [hl], c
    ld b, h
    ld [hl], b
    adc h
    pop de
    add l
    ld [hl], c
    ld b, h
    or d
    sbc b

jr_001_6aee:
    nop
    and e
    ld [hl], c
    ld b, [hl]
    add hl, de
    sbc b
    ld bc, $b823
    ld e, d
    sub a
    adc b
    ld bc, $701f
    ld a, d
    ld de, $0198
    and e
    ldh a, [$79]
    db $10
    sbc b
    nop
    and e
    ld [hl], b
    db $76
    ld h, l

jr_001_6b0b:
    adc b
    nop
    rst JumpTable
    ld [hl], b
    ld [hl], d
    add c
    sub b
    nop
    ld a, a
    ld l, b
    ld h, e
    and b
    add b
    nop
    sbc a
    cp b
    ld h, l
    ld d, [hl]
    add a
    nop
    xor a
    ld hl, sp+$67
    xor a
    sbc h
    nop
    cp a
    ld hl, sp+$69
    ld e, [hl]
    sbc h
    ld bc, $b83f
    ld e, h
    ld c, $88
    ld bc, $681f
    ld c, a
    and b
    add b
    nop
    sbc a
    jp hl


    ld b, d
    or b
    add d
    nop
    sbc a
    ld l, b
    ld b, b
    sbc l
    add h
    nop
    sbc a
    ld l, b
    ld b, c
    cp c
    add [hl]
    nop
    sbc a
    ld l, b
    ld d, c
    sbc c
    add [hl]
    nop
    add a
    ld l, b
    ld b, d
    rst $10
    adc b
    nop
    sbc a
    add sp, $42
    db $dd
    adc d
    nop
    cp a
    add sp, $50
    add e
    adc [hl]
    nop
    sbc a
    ld l, b
    ld b, [hl]
    scf
    add b
    ld bc, $1b9f
    ld a, b
    jr nz, jr_001_6aee

    ld bc, $1b9f
    ld a, d
    jr nz, @-$7a

    ld bc, $a89f
    ld b, a
    add [hl]
    add [hl]
    ld bc, $6897
    ld c, b
    ld a, [$0188]
    sbc a
    ld l, b
    ld c, d
    ld b, a
    adc d
    ld bc, $689f
    ld c, h
    add hl, bc
    adc h
    ld bc, $689f
    ld c, l
    ld d, a
    adc [hl]
    ld bc, $689f
    ld d, d
    inc h
    pop de
    db $e4
    add l
    ld l, b
    ld d, d
    ld e, c
    push de
    db $e4
    add l
    ld l, b
    ld d, c
    cp $d0
    ld b, h
    sbc c
    ld l, b
    ld d, d
    dec d
    call nc, $1944
    add sp, $52
    cp h
    ret nc

    ld h, h
    sub a
    add sp, $52
    rst $08
    call nc, $1764
    ld l, b
    ld d, d
    sbc $d0
    ld b, h
    sbc c
    add sp, $53
    ld [hl], c
    call nc, $1944
    ld a, [c]
    ld l, d
    inc bc
    add b
    nop
    rst $00
    ld a, [c]
    ld l, h
    db $eb
    adc b
    nop
    rst $38
    ld a, [c]
    ld [hl], e
    inc bc
    sub b
    nop
    rst $38
    ld a, [c]
    ld a, c
    jp $0188


    cp a
    di
    ld d, e
    inc bc
    sbc b
    nop
    and e
    ld [hl], e
    ld d, h
    or e
    sbc b
    ld bc, $6823
    ld l, a
    sub $88
    ld bc, $68ff
    ld l, d
    ld de, $0190
    rst $38
    ld l, b
    ld h, e
    and b
    add b
    nop
    db $eb
    ld l, b
    ld l, b
    add c
    adc b
    nop
    cp a
    ld l, b
    ld [hl], l
    cpl
    ret nc

    inc b
    and e
    ld l, b
    db $76
    adc $d4
    inc b
    inc hl
    add sp, $77
    ld [hl], l
    sub b
    ld bc, $68f2
    ld h, e

jr_001_6c12:
    and b
    add b
    nop
    db $eb
    ld l, b
    ld l, b
    add c
    adc b
    nop
    cp a
    add sp, $7c
    and h
    ret nc

    inc b
    and e
    ld l, b
    ld a, l
    and d
    call nc, $2304
    ld l, b
    ld b, c
    cp c
    add b
    nop
    sbc a
    ld l, b
    ld l, b
    add c
    adc b
    nop
    cp a
    add sp, $54
    sub $d0
    inc b
    and e
    ld l, b
    ld d, l
    jr z, jr_001_6c12

    inc b
    inc hl
    add sp, $55
    ld b, d
    adc h
    nop
    daa
    ld l, b
    ld d, [hl]
    ld b, [hl]
    adc h
    nop
    daa
    ld l, b
    ld d, a
    jp nc, $008c

    daa
    ld l, b
    ld e, c
    ld a, $8c
    nop
    daa
    add sp, $5a
    sbc e
    adc h
    nop
    daa
    ld l, b
    ld e, h
    inc hl
    adc h
    nop
    daa
    ld l, b
    ld e, l
    ld d, [hl]
    adc h
    nop
    daa
    ld l, b
    ld e, [hl]
    sbc c
    adc h
    nop
    daa
    ld l, b
    ld e, a
    db $eb
    adc h
    nop
    daa
    add sp, $61
    add h
    adc h
    nop
    daa
    add sp, $62
    adc a
    adc h
    nop
    daa
    add sp, $55
    ld b, d
    adc h
    nop
    daa
    ld l, b
    ld c, [hl]
    xor e
    sub b
    nop
    rra
    ld l, b
    ld d, d
    ld l, b
    jp nc, $8344

    ld l, b
    ld d, d
    ld a, b
    sub $44
    inc bc
    ld l, b
    ld d, d
    add l
    jp nc, $8344

    ld l, b
    ld d, d
    sub l
    sub $44
    inc bc
    ld l, b
    ld d, d
    and b
    jp nc, $8344

    ld l, b
    ld d, d
    xor a
    sub $44
    add e
    ld l, b
    ld d, e
    cp h
    sub $84
    rlca
    ld [hl], e
    ld h, [hl]
    ld e, e
    add b
    nop
    and a
    ld [hl], e
    ld d, a
    sbc $88
    ld bc, $b3ff
    ld e, l
    ld a, c
    sub b
    ld bc, $73b6
    ld h, b
    inc sp
    sbc b
    nop
    and l
    ld [hl], e
    ld h, c
    ld b, e
    sbc b
    ld bc, $73a5
    ld h, c
    ld a, h
    adc b
    nop
    reti


    ld [hl], e
    ld h, l
    cp a
    sbc h
    nop
    sub c
    ld [hl], e
    ld h, [hl]
    inc a
    sbc h
    ld bc, $6e11
    ld [hl], e
    db $eb
    sub b
    ld bc, $6eaf
    db $76
    ld a, c
    sub e
    ld bc, $aeaf
    ld a, c
    inc e
    sub [hl]
    ld bc, $ae9f
    ld a, d
    db $e4
    adc b
    ld bc, $eebf
    ld a, [hl]
    ld e, d
    adc h
    ld bc, $73bf
    ld h, a
    call z, $0098
    and l
    ld [hl], e
    ld l, b
    ld b, b
    sbc b
    ld bc, $7325
    ld l, b
    ld l, b
    sbc b
    nop
    and l
    ld [hl], e
    ld l, c
    dec hl
    sbc b
    ld bc, $7325
    ld l, c
    ld h, a
    sbc b
    nop
    and l
    ld [hl], e
    ld l, d
    inc sp
    sbc b
    ld bc, $ad25
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld h, d
    xor a
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $739f
    ld l, d
    ld l, a
    sbc b
    nop
    add l
    ld [hl], e
    ld l, d
    sub e
    sbc b
    ld bc, $ad05
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ad9f
    ld l, b
    dec sp
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $ad9f
    ld l, e
    pop af
    sub a
    ld bc, $738f
    ld l, d
    sbc h
    sbc b
    nop
    add l
    ld [hl], e
    ld l, d
    adc $98
    ld bc, $ad05
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld h, l
    sub l
    sub d
    ld bc, $6ebf
    ld c, d
    sub b
    sub [hl]
    ld bc, $739f
    ld l, d
    jp hl


    sbc d
    nop
    add l
    ld [hl], e
    ld l, e
    rra
    sbc d
    ld bc, $7305
    ld l, e
    ld b, h
    add b
    nop
    call $6e73
    ld d, h
    adc b
    nop
    push bc
    di
    ld [hl], c
    ld a, b
    adc b
    ld bc, $73ff
    ld [hl], a
    ld c, e
    sub b
    ld bc, $f3bc
    ld a, d
    ld h, h
    sbc b
    nop
    and e
    ld [hl], e
    ld a, e
    sub $98
    ld bc, $f3a3
    ld a, d
    ld h, h
    ret c

    inc bc
    and e
    ld [hl], e
    ld a, e
    sub $dc
    inc bc
    inc hl
    ld [hl], h
    ld b, c
    ld a, d
    add b
    nop
    jp z, $7cb3

    ld l, b
    adc b
    nop
    db $ed
    or h
    ld b, h
    or l
    adc b
    ld bc, $74ff
    ld c, e
    sbc h
    sub b
    ld bc, $f4fb
    ld d, d
    sub c
    sbc b
    nop
    and e
    ld [hl], h
    ld d, e
    push hl
    sbc b
    ld bc, $f4a3
    ld d, d
    sub c
    ret c

    inc bc
    and e
    ld [hl], h
    ld d, e
    push hl
    call c, $a303
    db $f4
    ld d, h
    adc d
    ret nc

    inc b
    and e
    ld [hl], h
    ld d, l
    rst $38
    call nc, $2304
    db $f4
    ld d, [hl]
    adc l
    adc b
    nop
    rst $38
    db $f4
    ld e, h
    ld b, $90
    nop
    or h
    ld [hl], h
    ld [hl], c
    push hl
    adc b
    ld bc, $74ea
    ld e, [hl]
    ld [hl], d
    sbc b
    nop
    and e
    db $f4
    ld e, a
    and d
    sbc b
    ld bc, $74a3
    ld [hl], c
    ld a, [hl-]
    sbc h
    ld b, b
    sbc e
    ld [hl], h
    ld [hl], c
    jp c, $419c

    dec de
    ld l, a
    ld e, [hl]
    and $90
    ld bc, $6fbf
    ld e, b
    ld c, a
    adc b
    ld bc, $afff
    ld h, h
    ld [bc], a
    sub h
    ld bc, $f3b2
    ld d, l
    ld [hl], l
    sbc b
    nop
    xor e
    di
    ld d, l
    ld [c], a
    sbc b
    ld bc, $f3ab
    ld d, l
    ld [hl], l
    ret c

    inc bc
    xor e
    di
    ld d, l
    ld [c], a
    call c, $2b03
    ld l, [hl]
    ld c, b
    jp $018e


    sbc a
    xor l
    ld d, l
    ld e, l
    sub b
    ld bc, $6dff
    ld e, h
    pop de
    adc b
    ld bc, $ae9f
    ld b, l
    rra
    adc d
    ld bc, $73bf
    ld d, [hl]
    ld [hl], $98
    nop
    cp a
    ld [hl], e
    ld d, a
    ld h, d
    sbc b
    ld bc, $73bf
    ld d, [hl]
    ld [hl], $d8
    inc bc
    cp a
    ld [hl], e
    ld d, a
    ld h, d
    call c, $3f03
    or d
    ld e, a
    ret nz

    ret nc

    dec b
    dec bc
    or d
    ld h, b
    ld h, b
    ret nc

    dec b
    dec bc
    ld [hl], d
    ld h, c
    dec b
    ret nc

    dec b
    dec bc
    or d
    ld h, c
    xor h
    ret nc

    dec b
    dec bc
    or d
    ld h, d
    ld c, [hl]
    ret nc

    dec b
    dec bc
    or d
    ld h, d
    db $f4
    ret nc

    dec b
    dec de
    or d
    ld h, h
    ld [hl], e
    ret nc

    dec b
    dec e
    or d
    ld h, l
    ld hl, sp-$30
    dec b
    dec e
    or d
    ld h, a
    db $76
    ret nc

    dec b
    add hl, de
    ld [hl], d
    ld l, b
    ret nz

    ret nc

    dec b
    rla
    add sp, $54
    ld b, $d0
    inc b
    sbc a
    ld l, b
    ld d, h
    dec h
    call nc, $9f04
    ld l, b
    ld c, a
    and b
    add b
    nop
    sbc a
    add sp, $42
    db $dd
    adc d
    nop
    cp a
    add sp, $50
    add e
    adc [hl]
    nop
    rra
    add sp, $54
    dec a
    ret nc

    inc b
    and e
    add sp, $54
    and b
    call nc, $a304
    ld l, b
    ld c, a
    and b
    add b
    nop
    sbc a
    ld l, b
    ld b, b
    sbc l
    add h
    nop
    sbc a
    add sp, $42

Call_001_6f00:
    db $dd
    adc d
    nop
    cp a
    add sp, $50
    add e
    adc [hl]
    nop
    sbc a
    ld l, b
    ld c, a
    and b
    sub b
    nop
    rra
    ld [hl], h
    ld e, a
    push hl
    add b
    nop
    or a
    ld [hl], h
    ld h, c
    push de
    adc b
    nop
    rst $38
    ld [hl], h
    ld l, b
    add b
    sub b
    nop
    rst $38
    ld [hl], h
    ld [hl], c
    push hl
    adc b
    ld bc, $f4ea
    ld l, a
    ld l, [hl]
    sbc b
    nop
    and e
    ld [hl], h
    ld [hl], b
    jp $0198


    and e
    ld [hl], h
    ld [hl], c
    ld a, [hl-]
    sbc h
    ld b, b
    sbc e
    ld [hl], h
    ld [hl], c
    jp c, $419c

    dec de
    xor h
    ld l, h
    or l
    ret c

    rlca
    call nz, Call_001_70ac
    xor $dc
    ld d, a
    inc bc
    xor h
    ld [hl], c
    db $10
    call c, $0357
    ld l, h
    ld [hl], c
    dec sp
    call c, $0357
    xor l
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $ad1f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld h, d
    xor a
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $ad1f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld h, l
    sub l
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $ad1f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ad9f
    ld l, b
    dec sp
    sub d
    ld bc, $adbf
    ld l, e
    pop af
    adc a
    ld bc, $6d8f
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $ad1f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ad9f
    ld l, b
    dec sp
    sub d
    ld bc, $adbf
    ld l, e
    pop af
    adc a
    ld bc, $6e8f
    ld e, b
    scf
    sub h
    ld bc, $ad3f
    ld l, h
    add $88
    ld bc, $6dff
    ld [hl], h
    ld l, h
    sub b
    ld bc, $ed9f
    db $76
    ld hl, $0192
    cp a
    ld l, l
    ld a, b
    db $e4
    sub [hl]
    ld bc, $ad1f
    ld l, h
    add $88
    ld bc, $6dff
    ld [hl], h
    ld l, h
    sub b
    ld bc, $ed9f
    ld a, d
    xor d
    sub d
    ld bc, $6dbf
    ld a, b
    db $e4
    sub [hl]
    ld bc, $ad1f
    ld l, h
    add $88
    ld bc, $6dff
    ld [hl], h
    ld l, h
    sub b
    ld bc, $ed9f
    ld a, l
    xor b
    sub d
    ld bc, $6dbf
    ld a, b
    db $e4
    sub [hl]
    ld bc, $ad1f
    ld l, h
    add $88
    ld bc, $6dff
    ld [hl], h
    ld l, h
    sub b
    ld bc, $ae9f
    ld b, b
    adc [hl]
    sub d
    ld bc, $aebf
    ld b, h
    ld c, d
    adc a
    ld bc, $6d8f
    ld a, b
    db $e4
    sub [hl]
    ld bc, $ad1f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $6d9f
    ld c, a
    sbc d
    sub e
    ld bc, $ed8f
    ld d, c
    db $e4
    sub h
    ld bc, $ad3f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $6d9f
    ld d, b
    ld hl, $0193
    adc a
    db $ed
    ld d, c
    db $e4
    sub h
    ld bc, $ad3f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $2d9f
    ld d, b
    db $e4
    sub e
    ld bc, $ed8f
    ld d, c
    db $e4
    sub h
    ld bc, $ad3f
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld h, d
    xor a
    sub d
    ld bc, $eebf
    ld e, [hl]
    or l
    sub [hl]
    ld bc, $6e1f
    ld [hl], e
    db $eb
    adc b
    ld bc, $afaf
    ld b, c
    adc c
    adc e

Call_001_70ac:
    ld bc, $afaf
    ld b, h
    ld h, [hl]
    adc [hl]
    ld bc, $6f9f
    ld b, [hl]
    ld b, a
    sub b
    ld bc, $af9f
    ld c, b
    dec e
    sub h
    ld bc, $ee24
    ld [hl], b
    xor c
    ret nc

    ld [bc], a
    sbc b
    ld l, [hl]
    ld [hl], c
    add hl, hl
    call nc, $1802

jr_001_70cc:
    xor $71
    ld c, a
    sbc h
    nop
    sbc b
    ld l, [hl]
    ld [hl], c
    adc $9c
    ld bc, $6e18
    ld [hl], c
    ldh a, [$9c]
    nop
    or e
    ld l, [hl]
    ld [hl], d
    rst $20
    sbc h
    ld bc, $6eb3
    ld [hl], c
    ldh a, [$d0]
    ld [bc], a
    or e
    ld l, [hl]
    ld [hl], d
    rst $20
    call nc, $3302
    ld l, [hl]
    ld [hl], b
    jr z, jr_001_70cc

    ld [bc], a
    inc de
    ld l, [hl]
    ld [hl], e
    ld a, $d0
    ld [bc], a
    sub e
    ld l, [hl]
    ld [hl], e
    xor l
    call nc, $1302
    ld l, a
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld d, l
    ret c

    sub h
    ld bc, $6f2c
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld h, d
    ld h, $94

jr_001_7124:
    ld bc, $6f21
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld h, h
    ld [bc], a
    sub h
    ld bc, $6f32
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld h, [hl]
    adc $94
    ld bc, $6f26
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld l, b
    db $ec
    sub h
    ld bc, $6f21
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld l, d
    ret


    sub h
    ld bc, $6f39
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld l, l
    ld [$0194], a
    jr z, @+$71

    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $6fbf
    ld [hl], b
    jr nz, jr_001_7124

    ld bc, $6f26
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld [hl], d
    ld d, d
    sub h
    ld bc, $6f33
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $6fbf
    ld a, b
    add sp, -$6c
    ld bc, $6f37
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld a, h
    add hl, de
    sub h
    ld bc, $6f3f
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld [hl], l
    ld e, b
    sub h
    ld bc, $6f3d
    ld a, a
    rst $28
    adc b
    ld bc, $f0ff
    ld b, [hl]
    ld b, h
    sub b
    ld bc, $6c5f
    ld [hl], c
    ld d, b
    adc b
    ld bc, $acaf
    ld [hl], h
    ld de, $418c
    dec sp
    ld l, h
    ld [hl], c
    ld d, b
    adc b
    ld bc, $adaf
    ld b, h
    ld e, [hl]
    adc e
    ld bc, $adff
    ld c, e
    ld c, [hl]
    sub e
    ld bc, $6f4f
    ld e, b
    ld c, a
    adc b
    ld bc, $709f
    ld c, e
    ld b, l
    adc d
    ld bc, $70df
    ld d, b
    dec l
    sub b
    ld bc, $30ff
    ld d, [hl]
    ld [hl+], a
    adc b
    ld h, c
    dec b
    ld l, a
    ld e, b
    ld c, a
    adc b
    ld bc, $709f
    ld d, [hl]
    add d
    adc d
    ld bc, $f0df
    ld e, e
    and $90
    ld bc, $30ff
    ld h, d
    and l
    adc b
    ld h, c
    dec b
    ld l, a
    ld e, b
    ld c, a
    adc b
    ld bc, $709f
    ld h, e
    dec b
    adc d
    ld bc, $f0df
    ld l, b
    ld a, $90
    ld bc, $30ef
    ld l, l
    db $dd
    adc b
    ld h, c
    dec b
    ld [hl], a
    ld [hl], h
    ld b, b
    adc b
    nop
    db $fd
    rst $30
    ld a, d
    inc e
    sbc b
    nop
    and e
    ld [hl], a
    ld a, d
    cp e
    sbc b
    ld bc, $6723
    ld a, e
    ld a, [c]
    add b
    ld bc, $784d
    ld d, [hl]
    call nc, $0188
    rra
    xor l
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $749f
    ld [hl], a
    adc l
    sbc d
    nop
    add e
    ld [hl], h
    ld [hl], a
    and l
    sbc d
    ld bc, $f403
    ld [hl], l
    and $80
    nop
    cp e
    ld [hl], h
    ld a, c
    add hl, bc
    add h
    nop
    and c
    db $f4
    ld a, d
    ld [hl-], a
    adc b
    nop
    rst $38
    ld [hl], l
    ld b, b
    db $ec
    sub b
    nop
    ldh [$f4], a
    ld [hl], a
    cp d
    sbc b
    nop
    and e
    ld [hl], h
    ld a, b
    push hl
    sbc b
    ld bc, $6c23
    ld [hl], c
    ld d, b
    adc b
    ld bc, $acaf
    ld [hl], h
    ld de, $418c
    cp e
    push af
    ld b, [hl]
    ld d, l
    sbc b
    nop
    and e
    push af
    ld b, a
    xor a
    sbc b
    ld bc, $f423
    ld [hl], l
    and $80
    nop
    cp e
    db $f4
    ld [hl], l
    and $d0
    inc b
    cp e
    ld [hl], l
    ld c, c
    sub h
    call nc, $9304
    db $f4
    ld [hl], l
    and $d8
    inc bc
    cp e
    ld [hl], l
    ld c, c
    sub h
    call c, $9303
    ld [hl], l
    ld c, c
    sub h
    add h
    nop
    sub e
    ld [hl], l
    ld c, d
    ld a, h
    add [hl]
    nop
    sub e
    or l
    ld c, e
    inc d
    adc b
    nop
    rst $38
    ld [hl], l
    ld d, d
    ldh [$90], a
    nop
    ldh [$75], a
    ld c, b
    ld c, e
    sbc b
    nop
    and e
    ld [hl], l
    ld c, c
    ld l, a
    sbc b
    ld bc, $ad23
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6ebf
    ld c, d
    sub b
    sub [hl]
    ld bc, $759f
    ld e, b
    ld h, d
    sbc b
    nop
    add e
    ld [hl], l
    ld e, b
    ld a, a
    sbc b
    ld bc, $f403
    ld [hl], l
    and $80
    nop
    cp e
    db $f4
    ld [hl], l
    and $d0
    inc b
    cp e
    push af
    ld e, c
    ld [c], a
    call nc, $9f04
    db $f4
    ld [hl], l
    and $d8
    inc bc
    cp e
    push af
    ld e, c
    ld [c], a
    call c, $9f03
    push af
    ld e, c
    ld [c], a
    add h
    nop
    sbc a
    or l
    ld e, e
    dec b
    adc b
    nop
    rst $38
    ld [hl], l
    ld h, d
    ld d, l
    sub b
    nop
    jp c, $5875

    sub e
    sbc b
    nop
    and e
    push af
    ld e, c
    or a
    sbc b
    ld bc, $ad23
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $759f
    ld h, a
    ld e, $98
    nop
    add e
    ld [hl], l
    ld h, a
    scf
    sbc b
    ld bc, $f403
    ld [hl], l
    and $80
    nop
    cp e
    db $f4
    ld [hl], l
    and $d0
    inc b
    cp e
    push af
    ld l, b
    add l
    call nc, $9904
    db $f4
    ld [hl], l
    and $d8
    inc bc
    cp e
    push af
    ld l, b
    add l
    call c, $9903
    push af
    ld l, b
    add l
    add h
    nop
    sbc c
    ld [hl], l
    ld l, c
    inc hl
    adc b
    nop
    rst $38
    push af
    ld [hl], b
    ld b, c
    sub b
    nop
    call c, $6775
    ld c, h
    sbc b
    nop
    and e
    ld [hl], l
    ld l, b
    ld [hl], b
    sbc b
    ld bc, $ad23
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $f59f
    ld [hl], h
    db $fd
    sbc b
    nop
    and e
    push af
    db $76
    ld hl, $0198
    inc hl
    db $f4
    ld [hl], l
    and $80
    nop
    cp e
    ld [hl], h
    ld a, c
    add hl, bc
    add h
    nop
    and c
    or l
    ld a, b
    ld d, e
    adc b
    nop
    rst $38
    ld [hl], l
    ld a, a
    cp [hl]
    sub b
    nop
    sbc $75
    ld [hl], a
    nop
    sbc b
    nop
    and e
    push af
    ld a, b
    inc h
    sbc b
    ld bc, $ad23
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6dbf
    ld h, c
    ld d, d
    sub [hl]
    ld bc, $769f
    ld b, h
    db $fd
    sbc b
    nop
    and e
    db $76
    ld b, l
    ld [c], a
    sbc b
    ld bc, $f423
    ld [hl], l
    and $80
    nop
    cp e
    db $f4
    ld [hl], l
    and $d0
    inc b
    cp e
    ld [hl], l
    ld c, c
    sub h
    call nc, $9304
    db $f4
    ld [hl], l
    and $d8
    inc bc
    cp e
    ld [hl], l
    ld c, c
    sub h
    call c, $9303
    ld [hl], l
    ld c, c
    sub h
    add h
    nop
    sub e
    ld [hl], l
    ld c, d
    ld a, h
    add [hl]
    nop
    sub e
    db $76
    ld b, a
    ret nz

    adc b
    nop
    rst $38
    or [hl]
    ld c, [hl]
    db $e3
    sub b
    nop
    ldh [rPCM12], a
    ld b, [hl]
    ld a, b
    sbc b
    nop
    and e
    or $47
    sbc h
    sbc b
    ld bc, $ad23
    ld d, l
    ld e, l
    adc b
    ld bc, $6dff
    ld e, h
    pop de
    sub b
    ld bc, $ed9f
    ld e, [hl]
    sub c
    sub d
    ld bc, $6ebf
    ld c, d
    sub b
    sub [hl]
    ld bc, $f69f
    ld h, b
    ld e, l
    sbc b
    nop
    and e
    db $76
    ld h, c
    ld h, b
    sbc b
    ld bc, $f423
    ld [hl], l
    and $80
    nop
    cp e
    db $f4
    ld [hl], l
    and $d0
    inc b
    cp e
    push af
    ld e, c
    ld [c], a
    call nc, $9f04
    db $f4
    ld [hl], l
    and $d8
    inc bc
    cp e
    push af
    ld e, c
    ld [c], a
    call c, $9f03
    push af
    ld e, c
    ld [c], a
    add h
    nop
    sbc a
    or $63
    ld l, a
    adc b
    nop
    rst $38
    db $76
    ld l, d
    ld [hl], e
    sub b
    nop
    ldh [rPCM12], a
    ld h, d
    dec h
    sbc b
    nop
    and e
    or $63
    ld c, c
    sbc b
    ld bc, $6c23
    ld [hl], c
    ld d, b
    adc b
    ld bc, $adaf
    ld b, h
    ld e, [hl]
    adc e
    ld bc, $adff
    ld c, e
    ld c, [hl]
    sub e
    ld bc, $76cf
    ld d, h
    sub c
    sbc b
    nop
    and e
    db $76
    ld d, l
    ld b, b
    sbc b
    ld bc, $f423
    ld [hl], l
    and $80
    nop
    cp e
    db $f4
    ld [hl], l
    and $d0
    inc b
    cp e
    push af
    ld l, b
    add l
    call nc, $9904
    db $f4
    ld [hl], l
    and $d8
    inc bc
    cp e
    push af
    ld l, b
    add l
    call c, $9903
    push af
    ld l, b
    add l
    add h
    nop
    sbc c
    or $56
    db $e4
    adc b
    nop
    rst $38
    db $76
    ld e, h
    ld l, e
    sub b
    nop
    adc $76
    ld d, l
    and l
    sbc b
    nop
    and e
    db $76
    ld d, [hl]
    ret z

    sbc b
    ld bc, $f423
    ld [hl], l
    and $80
    nop
    cp e
    or $71
    db $fc
    add h
    nop
    cp a
    ret c

    ld a, c
    add b
    add b
    ld bc, $69f3
    ld a, a
    and h
    ret nc

jr_001_754a:
    inc b
    sbc c
    or [hl]
    ld [hl], e
    add hl, de
    adc b
    nop
    rst $38
    or [hl]
    ld a, c
    and $90
    nop
    rst $38
    rst $30
    ld b, b
    ldh a, [$88]
    ld bc, $76ff
    ld l, a
    ld [hl], a
    sbc b
    nop
    cp a
    db $76
    ld [hl], c
    ld a, a
    sbc b
    ld bc, $f83f
    ld l, c
    xor c
    adc b
    ld bc, $f8ff
    ld [hl], c
    ld a, [bc]
    sub b
    ld bc, $f8ff
    ld a, b

jr_001_7578:
    jr z, jr_001_754a

    ld b, $bf
    ld hl, sp+$79

jr_001_757e:
    call c, $06d4
    cp a
    ld a, b
    ld a, d
    and l
    ret c

    ld b, $a7
    ld a, b
    ld a, e
    add hl, sp
    db $db
    ld b, $27
    ld [hl], a
    ld a, d
    and $82
    nop
    sub e
    ld l, b
    ld c, [hl]
    xor e
    sub b
    nop
    add a
    ld l, b
    ld c, [hl]
    xor e
    sub b
    ld bc, $779f
    ld a, [hl]
    ld h, h
    sub d
    ld bc, $78df
    ld d, l
    ld b, e
    adc b
    ld bc, $789f
    ld e, l
    sbc b
    ret c

    inc bc
    adc c
    ld a, b
    ld e, [hl]
    dec b
    call c, $8903
    ld a, b
    ld h, h
    xor e
    ret c

    and e
    sub e
    ld a, b
    ld h, l
    ld [hl], $dc
    and e
    sub e
    ld a, b
    ld h, b
    rst $08
    reti


    db $e3
    add a
    ld a, b
    ld h, b
    pop af
    db $dd
    db $e3
    rlca
    or a
    ld c, b
    ld l, c
    adc b
    ld bc, $77ff
    ld c, [hl]
    ld e, c
    sub b
    ld bc, $f7c3
    ld b, a
    jr jr_001_7578

    nop
    and e
    ld [hl], a
    ld c, b
    jr nz, jr_001_757e

    ld bc, $f723
    ld l, [hl]
    jr nz, @-$74

    ld bc, $77df
    ld [hl], c
    or l
    sub b
    ld bc, $f7d7
    ld l, e
    ld d, b
    sbc b
    nop
    and e
    ld [hl], a
    ld l, h
    ld [hl], b
    sbc b
    ld bc, $7723
    ld d, h
    push bc
    add b
    nop
    and a
    rst $30
    ld d, [hl]
    ld d, h
    adc b
    nop
    rst $38
    ld [hl], a
    ld e, h
    ld [hl+], a
    sub b
    nop
    adc a
    or a
    ld e, h
    ldh [$88], a
    ld bc, $b7ff
    ld h, h
    inc [hl]
    sub b
    ld bc, $77ff
    ld d, c
    adc l
    sbc b
    nop
    cp a
    ld [hl], a
    ld d, e
    sbc d
    sbc b
    ld bc, $77bf
    ld d, h
    ld b, h
    ret nc

    inc b
    adc e
    ld [hl], a
    ld d, h
    and e
    call nc, $0b04
    ld a, [c]
    ld d, a
    ld a, a
    add b
    nop
    rst $38
    ld a, [c]
    ld e, h
    add $80
    ld bc, $71d1
    ld b, [hl]
    add c
    adc b
    nop
    rst $38
    ld [hl], c
    ld c, d
    xor l
    sub b
    nop
    rst $00
    ld [hl], c
    ld c, [hl]
    ld a, [de]
    sbc c
    nop
    and e
    ld [hl], c
    ld c, a
    dec hl
    sbc c
    ld bc, $f2a3
    ld c, d
    ccf
    adc b
    ld bc, $72ff
    ld c, a
    nop
    sub b
    ld bc, $72da
    ld d, h
    ld a, [bc]
    sbc h
    ld h, b
    sub l
    ld [hl], d
    ld d, h
    db $db
    sbc h
    ld h, c
    sub l
    ld [hl], d
    ld d, l
    ld c, c
    sbc b
    nop
    adc c
    ld [hl], d
    ld d, l
    ld h, a
    sbc b
    ld bc, $f209
    ld b, a
    dec bc
    sbc h
    nop
    cp a
    ld [hl], d
    ld c, c
    ld d, d
    sbc h
    ld bc, $f1bf
    ld c, a
    ld a, l
    add b
    nop
    call Call_001_51f1
    reti


    adc b
    nop
    rst $38
    pop af
    ld e, b
    dec c
    sub b
    nop
    rst $38
    pop af
    ld e, l
    pop de
    adc b
    ld bc, $f1ff
    ld h, e
    inc de
    sub b
    ld bc, $f22d
    ld a, l
    dec l
    add b
    nop
    db $ed
    di
    ld b, d
    xor c
    adc b
    nop
    rst $38
    or e
    ld c, b
    inc e
    sub b
    nop
    rst $38
    ld [hl], e
    ld c, [hl]
    ld [hl], b
    adc b
    ld bc, $f2cf
    ld d, l
    ld [hl], l
    sbc h
    nop
    and e
    ld [hl], d
    ld d, a
    ld [$019c], sp
    inc hl
    ld l, a
    ld e, b
    ld c, a
    adc b
    ld bc, $6fff
    ld e, [hl]
    and $90
    ld bc, $afbf
    ld l, l
    ld [$0194], a
    xor b
    ld l, b
    ld c, [hl]
    xor e
    sub b
    nop
    add a
    ld a, [c]
    ld b, c
    and l
    sbc b
    nop
    cp a
    ld a, [c]
    ld b, d
    sbc e
    sbc b
    ld bc, $f2bf
    ld b, c
    and l
    ret c

    inc bc
    cp a
    ld a, [c]
    ld b, d
    sbc e
    call c, $3f03
    or c
    ld l, b
    ld bc, $0088
    rst $08
    pop af
    ld l, e
    jp nz, $008d

    rst JumpTable
    or c
    ld [hl], b
    xor b
    sub e
    nop
    adc a
    or c
    ld [hl], c
    ld a, l
    sub h
    nop
    cp a
    pop af
    ld [hl], h
    ret c

    adc b
    ld bc, $b1ff
    ld a, d
    or a
    sub b
    ld bc, $72ff
    ld b, e
    inc hl
    ret nc

    inc b
    xor c
    ld [hl], d
    ld b, e
    jp hl


    call nc, $a904
    ld a, [c]
    ld b, h
    ld [de], a
    sbc h
    nop
    cp a
    ld [hl], d
    ld b, [hl]
    ld d, a
    sbc h
    ld bc, $1a3f
    ld b, d
    nop
    add b
    nop
    sbc a
    ld a, [de]
    ld l, a
    ld b, b
    add c
    and b
    add e
    ld l, b
    ld c, [hl]
    xor e
    sub b
    nop
    sbc a
    ld l, b
    ld c, [hl]
    xor e
    sub b
    ld bc, $779f
    ld a, d
    and $82
    nop
    sub e
    ld [hl], a
    ld a, [hl]
    ld h, h
    sub d
    ld bc, $785f
    ld e, a
    inc de
    jp nc, $8744

    ld a, b
    ld e, a
    ld h, h
    sub $44
    add a
    jp hl


    ld a, c
    push hl
    add b

jr_001_776c:
    ld bc, $e985
    ld l, d
    ld d, b
    add b
    ld h, c
    add e
    ld a, b
    ld b, e
    ld [hl], d
    sub d
    nop
    sbc a
    or a
    ld a, e
    cp h
    adc b
    ld bc, $779f
    ld a, l
    ld e, a
    adc d
    ld bc, $7789
    ld a, l
    pop hl
    adc d
    and c
    adc c
    ld a, b
    ld e, l
    sbc b
    ret nc

    inc b
    adc c
    ld a, b
    ld e, [hl]
    dec b
    call nc, $8904
    ld a, b
    ld e, [hl]
    jr nz, jr_001_776c

    and h
    sub e
    ld a, b
    ld e, [hl]
    sbc a
    call nc, $93a4
    cp b
    ld e, [hl]
    pop de
    pop de
    db $e4
    add l
    ld a, b
    ld e, a
    ld b, $d5
    db $e4
    dec b
    cp b
    ld b, [hl]
    rrca
    adc b
    ld bc, $789f
    ld b, a
    or a
    adc d
    ld bc, $7789
    ld a, l
    ld e, a
    adc d
    and c
    adc c
    ld a, b
    ld e, l
    sbc b
    ret nc

    inc b
    adc c
    ld a, b
    ld e, [hl]
    dec b
    call nc, $8904
    ld a, b
    ld e, a
    ld a, l
    ret nc

    and h
    sub e
    ld hl, sp+$5f
    push af
    call nc, $93a4
    cp b
    ld e, [hl]
    pop de
    pop de
    db $e4
    add l
    ld a, b
    ld e, a
    ld b, $d5

jr_001_77e4:
    db $e4
    dec b
    cp b
    ld b, h
    ld l, h
    adc b
    ld bc, $789f
    ld b, a
    or a
    adc d
    ld bc, $7789
    ld a, l
    pop hl
    adc d
    and c
    add hl, bc
    ld a, b
    ld d, h
    cp l
    adc b
    ld bc, $7889
    ld h, e
    db $10
    ret nc

    inc b
    adc c
    ld a, b
    ld h, e
    ld [hl], h
    call nc, $8904
    cp b
    ld h, e
    ret nc

    ret nc

    and h
    sub e
    ld a, b
    ld h, h
    sub b
    call nc, $93a4
    ld hl, sp+$63
    sub h
    pop de
    db $e4
    add a
    ld a, b
    ld h, e
    cp a
    push de
    db $e4
    rlca
    ld a, b
    ld e, l
    sbc b
    ret nc

    inc b
    adc c
    ld a, b
    ld e, [hl]
    dec b
    call nc, $8904
    ld a, b
    ld h, b
    ld a, [de]
    ret nc

    and h
    sub e
    ld hl, sp+$60
    or a
    call nc, $93a4
    ld a, b
    ld h, b
    rst $08
    pop de
    db $e4
    add a
    ld a, b
    ld h, b
    pop af
    push de
    db $e4
    rlca
    ld hl, sp+$48
    ld [hl-], a
    adc b
    ld bc, $f867
    ld c, l
    inc c
    adc b
    ld bc, $b867
    ld d, c
    db $76
    adc b
    ld bc, $781f
    ld d, e
    jr z, jr_001_77e4

    ld bc, $781f
    ld h, e
    db $10
    ret nc

    inc b
    adc c
    ld a, b
    ld h, e
    ld [hl], h
    call nc, $8904
    cp b
    ld h, c
    add h
    ret nc

    and h
    sub e
    ld a, b
    ld h, d
    ld [hl], h
    call nc, $93a4
    ld a, b
    ld h, d
    sub a
    pop de
    db $e4
    add a
    ld a, b
    ld h, d
    rst $00
    push de
    db $e4
    rlca
    ld a, b
    ld h, b
    push af
    ret nc

    inc b
    adc c
    ld a, b
    ld h, c
    ld h, a
    call nc, $8904
    cp b
    ld h, c
    add h
    ret nc

    and h
    sub e
    ld a, b
    ld h, d
    ld [hl], h
    call nc, $93a4
    ld a, b
    ld h, d
    sub a
    pop de
    db $e4
    add a
    ld a, b
    ld h, d
    rst $00
    push de
    db $e4
    rlca
    cp b
    ld h, d
    sub $d1

jr_001_78aa:
    ld b, h
    add e
    ld a, b
    ld h, e
    ld [bc], a
    push de
    ld b, h
    inc bc
    ld a, b
    ld b, e
    ld [hl], d
    sub d
    nop
    sbc a
    or a
    ld a, e
    cp h
    adc b
    ld bc, $779f
    ld a, l
    ld e, a
    adc d
    ld bc, $7789
    ld a, l
    pop hl
    adc d
    and c
    adc c
    ld a, b
    ld e, l
    sbc b
    ret nc

    inc b
    adc c
    ld a, b
    ld e, [hl]
    dec b
    call nc, $8904
    ld a, b
    ld e, [hl]
    jr nz, jr_001_78aa

    and h
    sub e
    ld a, b
    ld e, [hl]
    sbc a
    call nc, $93a4
    cp b
    ld e, [hl]
    pop de
    pop de
    db $e4
    add l
    ld a, b
    ld e, a
    ld b, $d5
    db $e4
    add l
    cp b
    ld e, b
    adc c
    adc b
    ld bc, $789f
    ld e, d
    add hl, de
    adc d
    ld bc, $2c13
    ld c, a
    and [hl]
    add b
    nop
    sbc a
    ld l, h
    ld d, e
    inc h
    add d
    nop
    sbc a
    ld l, h
    ld d, h
    and e
    add h
    nop
    sbc a
    ld l, h
    ld d, l
    and b
    add [hl]
    nop
    sbc a
    inc l
    ld d, [hl]
    rst $30
    adc b
    nop
    dec e
    ld l, h
    ld d, c
    and [hl]
    ret nc

    ld [bc], a
    dec e
    xor h
    ld e, d
    ret


    ret nc

    ld [bc], a
    rra
    xor h
    ld e, h
    xor d
    ret nc

    ld [bc], a
    ld de, $5dac
    cp e
    ret nc

    ld [bc], a
    rla
    xor h
    ld e, a
    add hl, de
    ret nc

    ld [bc], a
    rra
    inc l
    ld h, c
    dec c
    ret nc

    ld [bc], a
    rra
    xor h
    ld h, e
    dec c
    ret nc

    ld [bc], a
    rra
    ld hl, sp+$7b
    ld h, l
    rst $08
    nop
    ld a, [bc]
    ld a, b
    ld a, e
    sbc d
    rst $08
    nop
    ld a, [bc]
    ld e, [hl]
    ld a, c
    ld h, c
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    ld h, h
    ld a, c
    sbc c
    ld b, b
    nop
    ld d, $5e
    ld e, b
    db $e4
    ld a, c
    db $f4
    ld a, c
    inc b
    ld a, d
    inc d
    ld a, d
    inc h
    ld a, d
    inc h
    ld a, d
    inc [hl]
    ld a, d
    ld b, h
    ld a, d
    ld d, h
    ld a, d
    ld h, h
    ld a, d
    ld [hl], h
    ld a, d
    add h
    ld a, d
    sub h
    ld a, d
    and h
    ld a, d
    or h
    ld a, d
    call nz, $d47a
    ld a, d
    db $e4
    ld a, d
    db $f4
    ld a, d
    inc b
    ld a, e
    inc d
    ld a, e
    inc h
    ld a, e
    inc [hl]
    ld a, e
    ld b, h
    ld a, e
    ld d, h
    ld a, e
    ld h, h
    ld a, e
    ld [hl], h
    ld a, e
    add h
    ld a, e
    sub h
    ld a, e
    and h
    ld a, e
    or h
    ld a, e
    call nz, $d47b
    ld a, e
    db $e4
    ld a, e
    db $f4
    ld a, e
    inc b
    ld a, h
    inc d
    ld a, h
    inc h
    ld a, h
    inc [hl]
    ld a, h
    ld b, h
    ld a, h
    ld d, h
    ld a, h
    ld h, h
    ld a, h
    ld [hl], h
    ld a, h
    add h
    ld a, h
    sub h
    ld a, h
    and h
    ld a, h
    and h
    ld a, h
    or h
    ld a, h
    call nz, $c47c
    ld a, h
    call nc, $e47c
    ld a, h
    db $f4
    ld a, h
    inc b
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    inc d
    ld a, l
    nop
    add hl, de
    ld h, d
    add sp, -$24
    inc bc
    add d
    nop
    ld bc, $6416
    call nc, $03db
    ld bc, $0000
    add hl, de
    ld h, e
    ld c, h
    call c, $8203
    nop
    ld bc, $6516
    ld a, [bc]
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, e
    or b
    call c, $8203
    nop
    ld bc, $6516
    ld b, b
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, h
    inc d
    call c, $8203
    nop
    ld bc, $6516
    ld a, b
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, h
    ld a, b
    call c, $8203
    nop
    ld bc, $6516
    or b
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, h
    call c, $03dc
    add d
    nop
    ld bc, $6516
    and $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, l
    ld b, b
    call c, $8203
    nop
    ld bc, $6616
    ld e, $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, l
    and h
    call c, $8203
    nop
    ld bc, $6616
    ld d, h
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, [hl]
    ld [$03dc], sp
    add d
    nop
    ld bc, $6616
    adc h
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, [hl]
    ld l, h
    call c, $8203
    nop

jr_001_7a7c:
    ld bc, $6616
    add $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, [hl]
    ret nc

    call c, $8203
    nop
    ld bc, $6616
    cp $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, a
    inc [hl]
    call c, $8203
    nop
    ld bc, $6716
    jr c, jr_001_7a7c

    inc bc
    ld bc, $0000
    add hl, de
    ld h, a
    sbc b
    call c, $8203
    nop
    ld bc, $6716
    ld l, [hl]
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld h, a
    db $fc
    call c, $8203
    nop

jr_001_7abc:
    ld bc, $6716
    and [hl]
    db $db
    inc bc
    ld bc, $0000

jr_001_7ac5:
    add hl, de
    ld l, b
    ld h, b
    call c, $8203
    nop
    ld bc, $6716
    sbc $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, b
    call nz, $03dc
    add d
    nop
    ld bc, $6816
    jr jr_001_7abc

    inc bc
    ld bc, $0000
    add hl, de
    ld l, c
    jr z, jr_001_7ac5

    inc bc
    add d
    nop
    ld bc, $6816
    ld d, b
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, c
    adc h
    call c, $8203
    nop
    ld bc, $6816
    adc d
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, c
    ldh a, [$dc]
    inc bc
    add d
    nop
    ld bc, $6816
    call nz, $03db
    ld bc, $0000
    add hl, de
    ld l, d
    ld d, h
    call c, $8203
    nop
    ld bc, $6816
    ei
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, d
    cp b
    call c, $8203
    nop
    ld bc, $6916
    inc sp
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, e
    add b
    call c, $8203
    nop
    ld bc, $6916
    and a
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, e
    db $e4
    call c, $8203
    nop
    ld bc, $6916
    db $e3
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, h
    ld c, b
    call c, $8203
    nop
    ld bc, $6a16
    ld [hl+], a
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, l
    db $10
    call c, $8203
    nop
    ld bc, $6a16
    adc b
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, h
    xor h
    call c, $8203
    nop
    ld bc, $6a16
    ld d, l
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, l
    ld [hl], h
    call c, $8203
    nop
    ld bc, $6a16
    cp [hl]
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, l
    ret c

    call c, $8203
    nop
    ld bc, $6a16
    pop af
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, [hl]
    inc a
    call c, $8203
    nop
    ld bc, $6b16
    inc h
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, [hl]
    and b
    call c, $8203
    nop
    ld bc, $6b16
    ld e, h
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, a
    inc b
    call c, $8203
    nop
    ld bc, $6b16
    sub d
    db $db
    inc bc
    ld bc, $0000

jr_001_7bd5:
    add hl, de
    ld l, a
    ld l, b
    call c, $8203
    nop

jr_001_7bdc:
    ld bc, $6b16
    ret z

    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, a
    call z, $03dc
    add d
    nop
    ld bc, $6c16
    nop
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], b
    jr nc, jr_001_7bd5

    inc bc
    add d
    nop
    ld bc, $6c16
    jr c, jr_001_7bdc

    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], b
    sub h
    call c, $8203
    nop
    ld bc, $6c16
    ld [hl], d
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], b
    ld hl, sp-$24
    inc bc
    add d
    nop
    ld bc, $6c16
    xor l
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], c
    ld e, h
    call c, $8203
    nop
    ld bc, $6c16
    rst $20
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], c
    ret nz

    call c, $8203
    nop
    ld bc, $6d16
    ld hl, $03db
    ld bc, $0000
    add hl, de
    ld [hl], d
    inc h
    call c, $8203
    nop
    ld bc, $6d16
    ld e, e
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], d
    adc b
    call c, $8203
    nop
    ld bc, $6d16
    sub l
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], d
    db $ec
    call c, $8203
    nop
    ld bc, $6d16
    call $03db
    ld bc, $0000

jr_001_7c75:
    add hl, de
    ld [hl], e
    ld d, b
    call c, $8203
    nop
    ld bc, $6e16
    rlca
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], e
    or h
    call c, $8203
    nop
    ld bc, $6e16
    ld b, c
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], h
    jr jr_001_7c75

    inc bc
    add d
    nop
    ld bc, $6e16
    ld a, h
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], h
    ld a, h
    call c, $8203
    nop
    ld bc, $6e16
    cp b
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], h
    ldh [$dc], a
    inc bc
    add d
    nop
    ld bc, $6e16
    ld a, [c]
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], l
    ld b, h
    call c, $8203
    nop
    ld bc, $6f16
    cpl
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld [hl], l
    xor b
    call c, $8203
    nop
    ld bc, $6f16
    ld l, e
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    db $76
    add hl, bc
    call c, $8203
    nop
    ld bc, $6f16
    sbc d
    db $db
    inc bc
    ld bc, $0000
    add hl, de
    db $76
    ld l, l
    call c, $8203
    nop
    ld bc, $6f16
    ret nc

    db $db
    inc bc
    ld bc, $0000
    add hl, de
    ld l, e
    inc e
    call c, $8203
    nop
    ld bc, $6916
    ld l, l
    db $db
    inc bc
    ld bc, $cd00
    ld a, [de]
    ld a, l
    jp $3382


    ld a, [$c2ef]
    rst $00
    inc h
    ld a, l
    ld l, e
    ld a, l
    adc b
    ld a, l
    ld hl, $c2ef
    inc [hl]
    call $02c1
    call $047b
    call Call_001_493c
    call $32dc
    call $381a
    call $3737
    call $12dd
    call $2cfd
    ld a, $01
    ld [$cd00], a
    call Call_001_5d46
    call $1108
    call $1a5e
    ld a, $02
    call $315c
    ld a, $02
    call $02ea
    ld a, $10
    ld [$c490], a
    ld a, $02
    ldh [$9b], a
    ld a, $95
    call $0c74
    ld a, $ff
    jp $1372


    ld a, $01
    call $1393
    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $c2ef
    inc [hl]
    ld a, $81
    ld [$cca4], a
    ld a, $ff
    ld [$cbb4], a
    xor a
    ld [$cbb3], a
    ret


    ld a, [$cbb3]
    rst $00
    sub d
    ld a, l
    cp d
    ld a, l
    ret c

    ld a, l
    ld a, $01
    call $1393
    ld hl, $cbb4
    dec [hl]
    dec [hl]
    ld a, [hl]
    call $1372
    ld a, [$cbb4]
    cp $80
    ret nc

    ld hl, $cbb3
    inc [hl]
    ld a, $03
    ld [$d000], a
    ld a, $0a
    ld [$cc6a], a
    ld a, $0b
    ld [$cc65], a
    ret


    ld a, $01
    call $1393
    ld hl, $cbb4
    dec [hl]
    jr z, jr_001_7dc6

    dec [hl]

jr_001_7dc6:
    ld a, [hl]
    call $1372
    ld a, [$cbb4]
    or a
    ret nz

    ld hl, $cbb3
    inc [hl]
    ld a, $03
    ldh [$9b], a
    ret


    ld a, $02
    ld [$c2ee], a
    xor a
    ld [$c2ef], a
    ld [$cca4], a
    ld a, $21
    call $30cd
    jp $3017


Call_001_7dec:
    ld a, [$cc49]
    or a
    jr z, jr_001_7df4

    xor a
    ret


jr_001_7df4:
    ld a, [$cc4d]
    ld c, a
    ld a, [$cc61]
    ld b, a
    ld a, [$cc4d]
    cp b
    ret z

    ld c, a
    ld a, b
    ld [$cc4d], a
    or a
    jr z, jr_001_7e2c

Jump_001_7e09:
    cp $f0
    jr nc, jr_001_7e3c

    ld a, $30
    call $30c7
    ld a, [$cc61]
    jr z, jr_001_7e19

    and $0f

jr_001_7e19:
    ld hl, $7e50
    rst $10
    ld a, [hl]

jr_001_7e1e:
    ld [$cc4e], a
    or $01
    ret


    ld a, $30
    call $30c7
    ret z

    scf
    ret


jr_001_7e2c:
    ld a, $30
    call $30c7
    ld a, $00
    jr nz, jr_001_7e1e

    call $041a
    and $03
    jr jr_001_7e1e

Jump_001_7e3c:
jr_001_7e3c:
    cp $ff
    jr z, jr_001_7e44

    ld a, $01
    jr jr_001_7e1e

jr_001_7e44:
    ld a, [$c610]
    sub $0a
    and $03
    ld [$cc4e], a
    jr jr_001_7e1e

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0002
    ld bc, $0203
    nop
    ld bc, $0300
    inc bc
    inc bc
    ld a, $30
    call $30c7
    ld a, [$cc4d]
    jp nz, Jump_001_7e09

    cp $f0
    jp nc, Jump_001_7e3c

    or a
    ret z

    ld hl, $7e50
    rst $10
    ld a, [hl]
    ld [$cc4e], a
    ret


    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

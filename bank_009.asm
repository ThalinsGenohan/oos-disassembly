; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX

    ld e, $44
    ld a, [de]
    rst $00
    ld c, $40
    ld [hl], $40
    rlca
    ld b, d
    ld de, $d942
    ld a, [hl-]
    ld a, $01
    ld [de], a
    ld hl, $463f
    ld e, $15
    call $008a
    ld a, $06
    call $248d
    ld l, $78
    ld a, [hl]
    or a
    jr z, jr_009_402b

    cp $ff
    jr z, jr_009_402b

    ld l, $74
    ld [hl], a

jr_009_402b:
    call $15e9
    ld e, $71
    ld a, [de]
    or a
    ret nz

    jp $1e03


    ld e, $71
    ld a, [de]
    rst $00
    ld c, b
    ld b, b
    ld e, c
    ld b, b
    ld [hl], c
    ld b, b
    add hl, bc
    ld b, c
    sub h
    ld b, c
    xor [hl]
    ld b, c
    ld d, l
    ld b, c

jr_009_4048:
    ld h, d
    ld l, $44
    ld [hl], $02
    inc l
    ld [hl], $00
    call Call_009_431a
    jp c, Jump_009_40e2

    jp $1e03


    ld e, $45
    ld a, [de]
    or a
    jr nz, jr_009_406b

    ld a, $01
    ld [de], a
    ld e, $46
    ld a, $1e
    ld [de], a
    call $24ad
    ret nz

jr_009_406b:
    call $2387
    ret nz

    jr jr_009_4048

    ld e, $45
    ld a, [de]
    rst $00
    ld a, e
    ld b, b
    adc b
    ld b, b
    and c
    ld b, b
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $46
    ld [hl], $28
    ld a, $4d
    jp $0c74


    call $2387
    ret nz

    ld [hl], $02
    inc l
    ld [hl], $02
    ld l, $45
    inc [hl]
    call $2130
    ld h, d
    ld l, $4f
    ld [hl], a
    call $1df1
    jp Jump_009_40d9


    call Call_009_431a
    jr c, jr_009_40e2

    call Call_009_40d9
    ld c, $10
    call $1f04
    ret nz

    call $21cb
    jr nc, jr_009_40ba

    dec a
    jr z, jr_009_40f4

    jp $21ee


jr_009_40ba:
    ld e, $70
    ld a, [de]
    cp $30
    ld a, $77
    call z, $0c74
    call $2387
    jr z, jr_009_40cf

    ld bc, $ff56
    jp $2358


Jump_009_40cf:
jr_009_40cf:
    call $1e42
    call $1e03
    ld a, $02
    jr jr_009_40e7

Call_009_40d9:
Jump_009_40d9:
    call $2142
    jp nc, $1e39

    jp $1e42


Jump_009_40e2:
jr_009_40e2:
    call Call_009_42c4
    ld a, $03

Jump_009_40e7:
jr_009_40e7:
    ld h, d
    ld l, $44
    ld [hl+], a
    xor a
    ld [hl], a
    ld l, $4e
    ld [hl+], a
    ld [hl], a
    jp $26ac


jr_009_40f4:
    ld h, d
    ld l, $70
    ld a, [hl]
    ld l, $42
    ld [hl+], a
    inc [hl]
    inc l
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $5a
    res 7, [hl]
    ld b, $03
    jp $24af


    ld a, $80
    ld [$cc81], a
    ld e, $45
    ld a, [de]
    rst $00
    jr jr_009_4155

    inc l
    ld b, c
    ld b, d
    ld b, c
    ld a, $01
    ld [de], a
    ld [$cbca], a
    call $26ac
    ld l, $50
    ld [hl], $0a
    ld l, $46
    ld [hl], $20
    jp $1e15


    call $1fdb
    call $2387
    ret nz

    ld l, $45
    inc [hl]
    ld l, $79
    ld a, [hl]
    or a
    call z, Call_009_42c4
    ld a, $4c
    call $0c74
    ld a, [$cba0]
    and $7f
    ret nz

    xor a
    ld [$cbca], a
    ld e, $79
    ld a, [de]
    ld [$cca4], a
    jp $3ad9


jr_009_4155:
    ld e, $45
    ld a, [de]
    rst $00
    ld e, a
    ld b, c
    ld l, h
    ld b, c
    add h
    ld b, c
    ld a, $01
    ld [de], a
    ld [$cbca], a
    call $26ac
    ld l, $46
    ld [hl], $0f
    call $2387
    ret nz

    call $23a0
    call $1e15
    call Call_009_42c4
    ld bc, $8100
    call Call_009_4231
    ld a, $4c
    jp $0c74


    ld a, [$cba0]
    and $7f
    ret nz

    xor a
    ld [$cbca], a
    ld [$cca4], a
    jp $3ad9


    call Call_009_431a
    ret nc

    ld a, [$cc78]
    bit 7, a
    ret z

    call $1e27
    call Call_009_42c4
    ld a, $4c
    call $0c74
    ld a, $03
    jp Jump_009_40e7


    ld e, $45
    ld a, [de]
    rst $00
    cp b
    ld b, c
    jp nz, $e841

    ld b, c
    ld a, $01
    ld [de], a
    call $2054
    ld [$ccc5], a
    ret


    ld a, [$cd00]
    and $0c
    jp nz, $3ad9

    ld a, [$ccc5]
    inc a
    ret nz

    ld bc, $ff00
    call $2358
    ld l, $45
    inc [hl]
    ld a, [$d008]
    swap a
    rrca
    ld l, $49
    ld [hl], a
    ld l, $50
    ld [hl], $14
    jp $1e03


    call $14b5
    call nc, $1fdb
    ld c, $10
    call $232b
    ret nz

    push af
    call $21e0
    pop bc
    jp c, $3ad9

    ld a, $77
    call $0c74
    bit 4, c
    ret z

    jp Jump_009_40cf


    call $268f
    call Call_009_431a
    ret nc

    jp Jump_009_40e2


    ld e, $72
    ld a, [de]
    rst $00
    reti


    ld a, [hl-]
    ld hl, $2642
    ld b, d
    ld e, a
    ld b, d
    ld hl, $2642
    ld b, d
    ld bc, $80fc
    jr jr_009_4229

    ld bc, $8100

jr_009_4229:
    ld e, $45
    ld a, [de]
    or a
    jr nz, jr_009_424f

    inc a
    ld [de], a

Call_009_4231:
    ld a, $04
    ld [$cc6a], a
    ld a, b
    ld [$cc6b], a
    ld hl, $cca4
    set 0, [hl]
    ld hl, $d000
    ld b, $f2
    call $2232
    call $1e15
    ld a, $4c
    call $0c74

jr_009_424f:
    call $1832
    ld hl, $cca4
    res 0, [hl]
    ld a, $0f
    ld [$cc85], a
    jp $3ad9


    ld a, $78
    ld [$cc85], a
    ld e, $45
    ld a, [de]
    rst $00
    ld [hl], b
    ld b, d
    add a
    ld b, d
    sub h
    ld b, d
    cp h
    ld b, d
    ld a, $01
    ld [de], a
    inc e
    ld a, $04
    ld [de], a
    ld a, $81
    ld [$cca4], a
    ld a, $ff
    call $29f5
    ld hl, $cc6a
    jp $1e39


    call $2387
    ret nz

    ld l, $45
    inc [hl]
    ld a, $ff
    ld [$cc7e], a
    ret


    ld a, [$cc7e]
    or a
    ret nz

    ld a, $0e
    ld [$cc6b], a
    ld e, $4b
    ld a, [$d00b]
    sub $0e
    ld [de], a
    ld e, $4d
    ld a, [$d00d]
    sub $04
    ld [de], a
    call $1e42
    call $1e15
    call $23a0
    ld a, $ab
    jp $0c74


    ld a, [$cca4]
    or a
    ret nz

    jp $3ad9


Call_009_42c4:
    ld e, $74
    ld a, [de]
    ld c, a
    ld e, $70
    ld a, [de]
    ld b, a
    cp $37
    jr nz, jr_009_42df

    ld a, $26
    call $236b
    jr z, jr_009_42de

    ld a, $27
    call $236b
    jr nz, jr_009_42df

jr_009_42de:
    inc c

jr_009_42df:
    ld a, b
    call $16eb
    ld b, a
    ld e, $72
    ld a, [de]
    cp $03
    jr z, jr_009_42ef

    ld a, b
    call $0c74

jr_009_42ef:
    ld e, $75
    ld a, [de]
    cp $ff
    jr z, jr_009_430f

    ld c, a
    ld b, $00
    call $184b
    ldh a, [$a8]
    ld b, a
    ld a, [$d00b]
    sub b
    sub $10
    cp $48
    ld a, $02
    jr c, jr_009_430c

    xor a

jr_009_430c:
    ld [$cbac], a

jr_009_430f:
    ld e, $73
    ld a, [de]
    or a
    ret z

    call $1956
    set 5, [hl]
    ret


Call_009_431a:
    ld a, [$cc6a]
    or a
    ret nz

    ld a, [$cca7]
    or a
    ret nz

    ld a, [$d004]
    cp $01
    jr z, jr_009_432f

    cp $08
    jr nz, jr_009_433e

jr_009_432f:
    ld a, [$cc48]
    rrca
    jr c, jr_009_433e

    ld e, $6a
    ld a, [de]
    or a
    jp z, $1bee

    scf
    ret


jr_009_433e:
    xor a
    ret


    ld e, $42
    ld a, [de]
    rst $00
    ld c, b
    ld b, e
    add sp, $43
    ld e, $44
    ld a, [de]
    rst $00
    ld d, d
    ld b, e
    ld [hl], c
    ld b, e
    ld a, h
    ld b, e
    ld a, $01
    ld [de], a
    call $1956
    bit 5, [hl]
    jr nz, jr_009_436e

    ld a, $49
    call $1717
    jr c, jr_009_436e

    ld a, $04
    call $248d
    call $15e9
    jp $1e27


jr_009_436e:
    jp $3ad9


    call $1432
    ld [hl], $00
    call $261d
    jp $2b75


    ld e, $45
    ld a, [de]
    rst $00
    adc b
    ld b, e
    and e
    ld b, e
    ret c

    ld b, e
    ret c

    ld b, e
    call $23a0
    ld a, $1c
    ld [$cca4], a
    xor a
    ld [$cc76], a
    call $25cb
    call $1e1e
    call $2054
    ld c, a
    ld a, $e1
    jp $3a52


    ld a, [$cc75]
    cp $83
    ret nz

    ld a, [$cc34]
    or a
    ret nz

    ld a, $81
    ld [$cca4], a
    ld [$cc02], a
    call $2b8a
    ld e, $45
    ld a, $02
    ld [de], a
    call $1956
    set 5, [hl]
    ld a, $04
    ld [$cc6a], a
    ld a, $01
    ld [$cc6b], a
    ld bc, $003c
    call $184b
    ld a, $49
    jp $16eb


    call $1832
    xor a
    ld [$cca4], a
    ld [$cc02], a
    call $1108
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    db $f4
    ld b, e
    ld a, [bc]
    ld b, h
    rlca
    ld b, h
    db $10
    ld b, h
    ld a, $01
    ld [de], a
    ld hl, $4989
    call $24fe
    call $15e9
    xor a
    call $25cb
    jp $1e27


    call $25b8
    call $25b8
    jp $250c


    call $1e39
    jp $250c


    ld e, $44
    ld a, [de]
    rst $00
    ld e, $44
    daa
    ld b, h
    ld a, $01
    ld [de], a
    ld a, [$cc32]
    ld e, $43
    ld [de], a
    ld a, [$cc32]
    ld b, a
    ld e, $43
    ld a, [de]
    cp b
    ret z

    ld a, b
    ld [de], a
    ld e, $4d
    ld a, [de]
    ld hl, $4448
    rst JumpTable
    ld e, $42
    ld a, [de]
    and b
    jr z, jr_009_4440

    inc hl

jr_009_4440:
    ld e, $4b
    ld a, [de]
    ld c, a
    ld a, [hl]
    jp $3a52


    ld e, l
    ld e, c
    ld e, l
    ld e, d
    ld e, l
    ld e, e
    ld e, l
    ld e, h
    ld e, [hl]
    ld e, c
    ld e, [hl]
    ld e, d
    ld e, [hl]
    ld e, e
    ld e, [hl]
    ld e, h
    ld e, c
    ld e, l
    ld e, d
    ld e, l
    ld e, e
    ld e, l
    ld e, h
    ld e, l
    ld e, c
    ld e, [hl]
    ld e, d
    ld e, [hl]
    ld e, e
    ld e, [hl]
    ld e, h
    ld e, [hl]
    ld e, c
    ld e, e
    ld e, d
    ld e, h
    ld e, e
    ld e, c
    ld e, h
    ld e, d
    ld e, c
    ld e, h
    ld e, d
    ld e, e
    ld e, e
    ld e, d
    ld e, h
    ld e, c
    ld e, $44
    ld a, [de]
    rst $00
    add b
    ld b, h
    ret z

    ld b, h
    ld a, $01
    ld [de], a
    ld e, $42
    ld a, [de]
    ld b, a
    and $07
    ld [de], a
    ld a, b
    ld e, $72
    swap a
    rlca
    and $1f
    ld [de], a
    call $15e9
    ld e, $50
    ld a, $14
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $44bc
    rst JumpTable
    ld e, $66
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld hl, $4680
    ld e, $15
    call $008a
    ld hl, $469d
    ld e, $15
    call $008a
    jp $1e30


    ld [$1008], sp
    ld [$0818], sp
    ld [$0810], sp
    jr jr_009_44d7

    db $10
    ld a, [$ccb0]
    cp d
    jr z, jr_009_44dc

    or a
    jr nz, jr_009_44e5

    call Call_009_44ed
    jr nc, jr_009_44e5

    ld a, d

jr_009_44d7:
    ld [$ccb0], a
    jr jr_009_44e5

jr_009_44dc:
    call Call_009_44ed
    jr c, jr_009_44e5

    xor a
    ld [$ccb0], a

jr_009_44e5:
    ld e, $45
    ld a, [de]
    rst $00
    ld sp, hl
    ld b, h
    ld b, $45

Call_009_44ed:
    ld hl, $d00b
    ld a, [hl+]
    add $05
    ld b, a
    inc l
    ld c, [hl]
    jp $1ba7


jr_009_44f9:
    call $2387
    ret nz

    ld hl, $469d
    ld e, $15
    call $008a
    ret


    ld a, [$cca7]
    or a
    ret nz

    call $1fdb
    ld a, [$ccb0]
    cp d
    jr nz, jr_009_44f9

    ld a, [$d004]
    cp $01
    jr nz, jr_009_44f9

    ld e, $50
    ld a, [de]
    ld b, a
    ld e, $49
    ld a, [de]
    ld c, a
    call $22d9
    jr jr_009_44f9

    call $1832
    ld e, $44
    ld a, [de]
    rst $00
    dec [hl]
    ld b, l
    ld e, a
    ld b, l
    nop
    ld b, [hl]
    ld a, $01
    ld [de], a
    call $15e9
    ld h, d
    ld l, $42
    ld a, [hl]
    add $02
    swap a
    rrca
    ld l, $66
    ld [hl+], a
    ld a, $06
    ld [hl], a
    ld l, $50
    ld [hl], $14
    ld l, $46
    ld [hl], $1e
    ld l, $47
    ld [hl], $3c
    ld l, $4d
    ld a, [hl]
    ld l, $70
    ld [hl], a
    call $1e30
    call Call_009_46b0
    jr c, jr_009_4585

Jump_009_4564:
jr_009_4564:
    ld h, d
    ld l, $71
    ld [hl], $1e

jr_009_4569:
    ld h, d
    ld l, $46
    ld [hl], $1e
    ld l, $4d
    ld b, [hl]
    ld l, $70
    ld a, [hl]
    cp b
    ret z

    ld l, $47
    dec [hl]
    ret nz

    cp b
    ld bc, $0008
    jr nc, jr_009_45ed

    ld bc, $0118
    jr jr_009_45ed

jr_009_4585:
    ld h, d
    ld l, $66
    ld a, [hl]
    sub $02
    ld b, a
    ld c, b
    sla c
    inc c
    ld l, $4b
    ld a, [$d00b]
    sub [hl]
    add b
    cp c
    jr nc, jr_009_4564

    ld a, [$cc47]
    cp $08
    ld bc, $0008
    jr z, jr_009_45ab

    cp $18
    ld bc, $0118
    jr nz, jr_009_4564

jr_009_45ab:
    ld a, $01
    ld [$cc81], a
    ld a, [$cc7f]
    and $03
    swap a
    rrca
    cp c
    jr z, jr_009_45de

    ld hl, $c680
    ld a, $16
    cp [hl]
    jr z, jr_009_4564

    inc hl
    cp [hl]
    jr z, jr_009_4564

    ld a, [$cc7f]
    or a
    jr nz, jr_009_4564

    ld a, [$cc77]
    or a
    jr nz, jr_009_4564

    ld h, d
    ld l, $71
    dec [hl]
    jr nz, jr_009_4569

    call $1256
    jr jr_009_4564

jr_009_45de:
    ld a, $3c
    ld e, $47
    ld [de], a
    call Call_009_4672
    jp nz, Jump_009_4564

    call $2387
    ret nz

jr_009_45ed:
    ld l, $44
    inc [hl]
    ld l, $49
    ld [hl], c
    ld l, $42
    ld a, [hl]
    add a
    add b
    call $25cb
    ld hl, $ccee
    set 6, [hl]
    call $1fdb
    call $25b8
    call $1c35
    jr nc, jr_009_460e

    call Call_009_4629

jr_009_460e:
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jr z, jr_009_4622

    inc a
    ret nz

    ld l, $46
    ld [hl], $1e
    inc l
    ld [hl], $3c
    ld l, $44
    dec [hl]
    ret


jr_009_4622:
    ld [hl], $01
    ld a, $82
    jp $0c74


Call_009_4629:
    ld a, [$d033]
    cp $53
    jr z, jr_009_4662

    cp $ac
    jr z, jr_009_4662

    cp $33
    jr z, jr_009_4662

    cp $c3
    jr z, jr_009_4662

    cp $cc
    jr z, jr_009_4662

    cp $3c
    jr z, jr_009_4662

    call Call_009_46b0
    ld a, [$d033]
    and $0f
    ret z

    call $1e5a
    cp $10
    ld c, $08
    jr c, jr_009_4658

    ld c, $18

jr_009_4658:
    ld e, $49
    ld a, [de]
    cp c
    ret nz

    ld b, $28
    jp $22d9


jr_009_4662:
    ld a, [$d004]
    cp $01
    ret nz

    ld a, $11
    ld [$cc6a], a
    xor a
    ld [$cc6b], a
    ret


Call_009_4672:
    push bc
    ld e, $42
    ld a, [de]
    add $02
    ldh [$8b], a
    swap a
    rrca
    ld b, a
    ld e, $4b
    ld a, [de]
    sub b
    add $08
    and $f0
    ld b, a
    ld a, $08
    ld l, $01
    cp c
    jr z, jr_009_4690

    ld l, $ff

jr_009_4690:
    ld e, $4d
    ld a, [de]
    swap a
    add l
    and $0f
    or b
    pop bc
    ld l, a
    ld h, $ce
    ldh a, [$8b]
    ld e, a

jr_009_46a0:
    ld a, [hl]
    cp $10
    jr nc, jr_009_46a7

    or a
    ret nz

jr_009_46a7:
    ld a, l
    add $10
    ld l, a
    dec e
    jr nz, jr_009_46a0

    xor a
    ret


Call_009_46b0:
    ld a, [$d024]
    bit 7, a
    ret z

    ld a, [$d004]
    cp $01
    ret nz

    jp $261d


    ld e, $42
    ld a, [de]
    rst $00
    ret


    ld b, [hl]
    ret


    ld b, [hl]
    cp a
    ld b, a
    ld e, $44
    ld a, [de]
    rst $00
    rst $10
    ld b, [hl]
    inc c
    dec h
    db $10
    ld b, a
    ld l, [hl]
    ld b, a
    sbc h
    ld b, a
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $4d
    ld a, [hl]
    ld l, $7a
    ld [hl], a
    ld a, [$cc33]
    and [hl]
    ld a, $01
    jr nz, jr_009_46ea

    dec a

jr_009_46ea:
    ld l, $42
    ld [hl], a
    swap a
    rrca
    ld l, $49
    ld [hl], a
    ld l, $4b
    ld a, [hl]
    call $2076
    call $15e9
    ld hl, $49bc
    call $24fe
    call $1e27
    ld bc, $7d02
    call $24b1
    ret nz

    ld l, $56
    ld [hl], d
    ret


    ld hl, $ccaf
    ld a, [$cc77]
    or a
    jr nz, jr_009_471d

    bit 4, [hl]
    jr nz, jr_009_472a

jr_009_471d:
    res 7, [hl]
    ld e, $44
    ld a, $01
    ld [de], a
    ld hl, $49c0
    jp $24fe


jr_009_472a:
    ld a, $03
    ld [de], a
    call $2b57
    ld c, $28
    call $1f60
    sra a
    ld e, $48
    ld [de], a
    ld b, a
    inc e
    ld a, [de]
    or a
    jr nz, jr_009_4748

    ld a, b
    add a
    ld hl, $4825
    rst JumpTable
    jr jr_009_474e

jr_009_4748:
    ld a, b
    add a
    ld hl, $4835
    rst JumpTable

jr_009_474e:
    call Call_009_4813
    ld a, [hl+]
    ld c, $08
    ld [bc], a
    ld e, $79
    ld a, [hl]
    ld [de], a
    call $29f4
    ld a, [$cca4]
    or $80
    ld [$cca4], a
    ld a, $04
    call $24a7
    ld a, $6c
    jp $0c74


    call Call_009_47fa
    ld e, $61
    ld a, [de]
    inc a
    jp nz, $25b8

    ld h, d
    ld l, $44
    ld [hl], $04
    ld l, $46
    ld [hl], $10
    xor a
    ld [$cca4], a
    ld hl, $d008
    ld a, [hl+]
    swap a
    rrca
    ld [hl], a
    ld hl, $cc6a
    ld a, $0b
    ld [hl+], a
    inc l
    ld [hl], $10
    ld hl, $ccaf
    res 7, [hl]
    ret


    call $2387
    ret nz

    ld l, $7a
    ld a, [$cc33]
    xor [hl]
    ld [$cc33], a
    ld l, $5c
    ld a, [hl]
    xor $01
    ld [hl], a
    ld l, $49
    ld a, [hl]
    xor $08
    ld [hl], a
    ld l, $44
    ld [hl], $01
    ld hl, $49bf
    jp $24fe


    ld e, $44
    ld a, [de]
    rst $00
    rst $00
    ld b, a
    reti


    ld b, a
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $56
    ld a, [de]
    ld h, d
    ld l, $49
    ld e, l
    ld a, [hl]
    ld [de], a
    call $1e27
    ld e, $56
    ld a, [de]
    ld h, a
    ld l, $49
    ld e, l
    ld a, [de]
    cp [hl]
    jr z, jr_009_47ee

    ld a, [hl]
    ld [de], a
    swap a
    rlca
    add $02
    call $25cb

jr_009_47ee:
    ld e, $56
    ld a, [de]
    ld h, a
    ld l, $5c
    ld e, l
    ld a, [hl]
    ld [de], a
    jp $25b8


Call_009_47fa:
    ld e, $61
    ld a, [de]
    ld b, a
    or a
    ret z

    inc a
    ret z

    xor a
    ld [de], a
    ld a, $70
    call $0c74
    ld e, $79
    ld a, [de]
    add b
    and $0f
    ld hl, $4845
    rst JumpTable

Call_009_4813:
    ld b, $d0
    ld e, $4b
    ld c, $0b
    call Call_009_4820
    ld e, $4d
    ld c, $0d

Call_009_4820:
    ld a, [de]
    add [hl]
    inc hl
    ld [bc], a
    ret


    db $f4
    nop
    inc bc
    ld [$0c00], sp
    nop
    inc b
    inc c
    nop
    ld bc, $0000
    db $f4
    ld [bc], a
    inc c
    db $f4
    nop
    ld bc, $0008
    inc c
    ld [bc], a
    inc b
    inc c
    nop
    inc bc
    nop
    nop
    db $f4
    nop
    inc c
    inc c
    nop
    ld a, [bc]
    ld [bc], a
    ld [$0208], sp
    ld a, [bc]
    nop
    inc c
    cp $0a
    ld hl, sp+$08
    or $02
    db $f4
    nop
    or $fe
    ld hl, sp-$08
    cp $f6
    nop
    db $f4
    ld [bc], a
    or $08
    ld hl, sp+$0a
    cp $1e
    ld b, d
    ld a, [de]
    rst $00
    ld l, a
    ld c, b
    ld c, e
    ld c, c
    ld l, d
    ld c, c
    ld e, $44
    ld a, [de]
    rst $00
    ld a, e
    ld c, b
    xor l
    ld c, b
    pop hl
    ld c, b
    xor $48
    ld a, [$cc55]
    ld hl, $491c
    rst JumpTable
    ld c, [hl]
    ld a, [$cc49]
    ld hl, $09a8
    rst $10
    ld h, [hl]
    ld l, c
    ld a, [hl]
    and $80
    jp z, $3ad9

    ld c, $57
    call $2081

Jump_009_4897:
    call $15e9
    ld a, $03
    call $248d
    call $1bee
    ld a, $01
    jr nc, jr_009_48a7

    inc a

jr_009_48a7:
    ld e, $44
    ld [de], a
    jp $1e30


    call $25b8
    call $1bee
    ret nc

    ld a, [$d001]
    or a
    call z, $1cf0
    ret nc

    call $2af0
    ld a, $03
    ld e, $44
    ld [de], a
    ld [$cca6], a
    ld a, $30
    ld e, $46
    ld [de], a
    call $29f4
    ld hl, $d01a
    ld [hl], $82
    call $21fd
    ld a, $01
    ld [$cca4], a
    ld a, $8d
    jp $0c74


    call $25b8
    call $1bee
    ret c

    ld a, $01
    ld e, $44
    ld [de], a
    ret


    ld hl, $d000
    call $21fd
    call Call_009_492e
    ret nz

    ld a, [$cc55]
    ld hl, $491c
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld hl, $cc63
    ld a, [$cc49]
    or $80
    ld [hl+], a
    ld a, [$cc4c]
    cp b
    jr nz, jr_009_4912

    ld b, c

jr_009_4912:
    ld a, b
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], $57
    inc l
    ld [hl], $03
    ret


    ld bc, $0b01
    dec d
    ld hl, $4839
    ld c, e
    ld l, d
    add c
    and d
    and a
    ret z

    cp d
    ld b, d
    ld e, e
    ld [hl], d
    add a

Call_009_492e:
    call $2af0
    call $25b8
    ld a, [$cc34]
    or a
    ret nz

    ld a, [$cc00]
    and $03
    jr nz, jr_009_4948

    ld hl, $d008
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_009_4948:
    jp $2387


    ld e, $44
    ld a, [de]
    rst $00
    ld d, a
    ld c, c
    xor l
    ld c, b
    pop hl
    ld c, b
    ld h, c
    ld c, c
    ld a, [$c647]
    or a
    jp z, $3ad9

    jp Jump_009_4897


    call Call_009_492e
    ret nz

    ld a, [$c647]
    jr jr_009_4986

    ld e, $44
    ld a, [de]
    rst $00
    db $76
    ld c, c
    xor l
    ld c, b
    pop hl
    ld c, b
    add c
    ld c, c
    call $1956
    and $20
    jp z, $3ad9

    jp Jump_009_4897


    call Call_009_492e
    ret nz

    xor a

jr_009_4986:
    ld hl, $49a1
    rst JumpTable
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl+]
    ld [$cc66], a
    ld a, $85
    ld [$cc63], a
    xor a
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    ret


    jr nc, @+$39

    ld sp, $2f9d
    sub l
    jr z, @+$5b

    inc h
    ld d, a
    inc [hl]
    rla
    ld a, [$cc34]
    or a
    ret nz

    ld e, $42
    ld a, [de]
    rst $00
    cp h
    ld c, c
    ld a, c
    ld c, e
    and e
    ld c, e
    ld e, $44
    ld a, [de]
    rst $00
    ret nc

    ld c, c
    ld b, d
    ld c, d
    xor l
    ld c, d
    jp nz, $d54a

    ld c, d
    ld a, [de]
    ld c, e
    ld h, $4b
    ld sp, $3e4b
    ld bc, $cd12
    jp hl


    dec d
    ld a, $04
    call $248d
    ld bc, $7f01
    call $24b1
    call $1956
    and $20
    jp nz, $3ad9

    ld hl, $d140
    ld b, $40
    call $044b
    ld hl, $d140
    ld [hl], $81
    inc l
    ld [hl], $7f
    inc l
    ld [hl], $02
    call $21fd
    ld l, $56
    ldh a, [$ac]
    ld [hl+], a
    ldh a, [$ad]
    ld [hl], a
    ld h, d
    ld l, $4f
    ld [hl], $f0
    ld a, [$cc55]
    dec a
    ld l, $43
    ld [hl], a
    ld b, a
    add a
    add b
    ld hl, $4a2a
    rst $10
    ld e, $5d
    ld a, [de]
    add [hl]
    inc hl
    ld [de], a
    dec e
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    call $25cb
    jp $1e1e


    inc d
    nop
    ld [bc], a
    db $10
    ld bc, $0602
    dec b
    ld bc, $040a
    ld [bc], a
    ld d, $05
    ld [bc], a
    inc c
    inc b
    ld bc, $0202
    ld bc, $0300
    ld [bc], a
    ld a, [$cc00]
    and $03
    ret nz

    ld h, d
    ld l, $46
    inc [hl]
    ld a, [hl]
    and $0f
    ld hl, $4a9d
    rst $10
    ld a, [hl]
    add $f0
    ld e, $4f
    ld [de], a
    ld a, [$cc77]
    or a
    ret nz

    ld a, [$cc75]
    or a
    ret nz

    ld b, $04
    call $1fac
    ret nc

    ld c, $14
    call $1f60
    ret nc

    cp $04
    ret nz

    call $2b57
    ld a, $81
    ld [$cca4], a
    ld [$cbca], a
    ld hl, $d008
    ld [hl], $00
    call $1e5a
    ld h, d
    ld l, $49
    ld [hl], a
    ld l, $50
    ld [hl], $14
    ld l, $44
    inc [hl]
    call $31d4
    ld a, $77
    call $0c74
    ld a, $fc
    jp $0c74


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
    jp $239b


    ld c, $08
    call $1f04
    jr z, jr_009_4acd

    call $1bee
    ret nc

jr_009_4acd:
    ld h, d
    ld l, $46
    ld [hl], $1e
    jp $239b


    call $2387
    ret nz

    ld a, $04
    ld [$cc6a], a
    ld a, $01
    ld [$cc6b], a
    call $239b
    ld a, [$d00b]
    sub $0e
    ld l, $4b
    ld [hl+], a
    inc l
    ld a, [$d00d]
    ld [hl+], a
    inc l
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $43
    ld a, [hl]
    ld hl, $4b12
    rst $10
    ld b, $00
    ld c, [hl]
    call $184b
    call $1956
    set 5, [hl]
    ld e, $43
    ld a, [de]
    ld c, a
    ld a, $40
    jp $16eb


    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    call $1832
    call $239b
    ld hl, $49cc
    jp $24fe


    call $250c
    ret nc

    call $239b
    ld l, $46
    ld [hl], $1e
    call $2387
    ret nz

    ld l, $43
    ld a, [hl]
    add a
    ld hl, $4b59
    rst JumpTable
    ld a, [hl+]
    ld [$cc63], a
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl+]
    ld [$cc66], a
    ld a, [hl]
    ld [$cc65], a
    ld a, $83
    ld [$cc67], a
    xor a
    ld [$cc51], a
    jp $3076


    add b
    sub [hl]
    ld b, h
    ld bc, $8d80
    inc h
    ld bc, $6080
    dec h
    ld bc, $1d80
    inc de
    ld bc, $8a80
    dec h
    ld bc, $0080
    inc [hl]
    ld bc, $d080
    inc [hl]
    ld bc, $0081
    inc sp
    ld bc, $b9cd
    inc hl
    jp nz, $261d

    ld a, $01
    ld [de], a
    ld bc, $060a
    call $2495
    call $1432
    dec h
    ld [hl], $0f
    ld a, [$cc55]
    cp $06
    jr nz, jr_009_4b9d

    ld hl, $ce24
    ld [hl], $05
    inc l
    ld [hl], $0a

jr_009_4b9d:
    call $15e9
    jp $1e30


    call $23b9
    jr nz, jr_009_4bb1

    ld a, $01
    ld [de], a
    call $15e9
    jp $1e27


jr_009_4bb1:
    call Call_009_4bc6
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


Call_009_4bc6:
    ld a, $00
    call $211e
    jp $222f


    call $268f
    ld e, $44
    ld a, [de]
    rst $00
    db $db
    ld c, e
    sbc $4b
    ld b, a
    ld c, h
    ld a, $01
    ld [de], a
    ld a, $21
    call $248d
    call Call_009_4cbd
    call Call_009_4cb1
    call Call_009_4ce8
    ld a, [$d004]
    cp $01
    ret nz

    ld a, [$d00f]
    or a
    ret nz

    ld bc, $2105
    call Call_009_4c91
    ret nc

    ld a, $23
    call $236b
    jr z, jr_009_4c10

    call $1e5a
    xor $10
    ld c, a
    ld b, $14
    call $22d9

jr_009_4c10:
    call Call_009_4ca3
    ld bc, $0300
    call Call_009_4c91
    ret nc

    ld e, $42
    ld a, [de]
    or a
    ld a, $01
    jr z, jr_009_4c39

    call $2b8a
    call $2b57
    ld h, d
    ld l, $44
    ld [hl], $02
    ld a, [$ccc1]
    and $7f
    ld l, $47
    ld [hl-], a
    ld [hl], $3c
    ld a, $03

jr_009_4c39:
    ld [$cc6c], a
    ld a, $02
    ld [$cc6a], a
    ld hl, $d00b
    jp $21fd


    xor a
    ld [$ccc1], a
    call $2387
    ret nz

    ld c, $03
    ld l, $42
    ld a, [hl]
    cp $05
    jr z, jr_009_4c65

    dec c
    ld e, $47
    ld a, [de]
    cp [hl]
    jr z, jr_009_4c65

    ld a, [$cc00]
    and $01
    ld c, a

jr_009_4c65:
    ld a, c
    add a
    add c
    ld hl, $4c85
    rst $10
    ld a, [hl+]
    ld [$cc63], a
    ld a, [hl+]
    ld [$cc64], a
    ld a, [hl+]
    ld [$cc66], a
    ld a, $05
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    jp $3ad9


    add l
    ret nc

    ld d, a
    add l
    pop de
    ld d, a
    add l
    jp nc, $8457

    db $f4
    daa

Call_009_4c91:
    ld h, d
    ld l, $66
    ld [hl], b
    inc l
    ld [hl], b
    ld a, [$d00b]
    add c
    ld b, a
    ld a, [$d00d]
    ld c, a
    jp $1ba7


Call_009_4ca3:
    ld hl, $ccc1
    ld a, [hl]
    or a
    ret z

    ld e, $42
    ld a, [de]
    cp [hl]
    ret nz

    set 7, [hl]
    ret


Call_009_4cb1:
    ld c, $4d
    call $2283
    ret nz

    ld l, $4f
    ld e, $7a
    jr jr_009_4cd2

Call_009_4cbd:
    ld h, $d0

jr_009_4cbf:
    ld l, $c1
    ld a, [hl]
    cp $01
    call z, Call_009_4cce
    inc h
    ld a, h
    cp $e0
    jr c, jr_009_4cbf

    ret


Call_009_4cce:
    ld l, $cf
    ld e, $f1

jr_009_4cd2:
    ld a, [hl-]
    rlca
    ret c

    dec l
    ld c, [hl]
    dec l
    dec l
    ld b, [hl]
    ld l, e
    push hl
    call $1ba7
    pop hl
    ret nc

    call $2048
    ld [hl], b
    inc l
    ld [hl], c
    ret


Call_009_4ce8:
    ld c, $03
    call $2274
    call z, Call_009_4cfe
    ld c, $03
    call $227b
    call z, Call_009_4cfe
    ld c, $21
    call $2274
    ret nz

Call_009_4cfe:
    ld l, $0f
    ld e, $31
    jr jr_009_4cd2

    ld e, $42
    ld a, [de]
    cp $06
    jr z, jr_009_4d16

    ld a, [de]
    rlca
    jr c, jr_009_4d26

    ld a, [$d100]
    or a
    jp nz, Jump_009_4e2b

jr_009_4d16:
    ld a, [de]
    rst $00
    or b
    ld c, [hl]
    ld l, h
    ld c, [hl]
    ld h, b
    ld c, [hl]
    sbc b
    ld c, [hl]
    dec a
    ld c, [hl]
    ld l, $4e
    add h
    ld c, [hl]

jr_009_4d26:
    ld a, [$d100]
    or a
    jr z, jr_009_4d38

    ld a, [$d101]
    cp $0e
    jr nc, jr_009_4d38

    cp $0a
    jp nz, Jump_009_4e2b

jr_009_4d38:
    ld a, [$cc50]
    and $81
    cp $01
    jp nz, Jump_009_4e2b

    ld bc, $510f
    ld a, [$c6af]
    or a
    jp z, Jump_009_4e24

    ld a, [$cc4c]
    ld hl, $4f2e
    call $0205
    jp z, Jump_009_4e21

    ld a, [$d100]
    or a
    jp nz, Jump_009_4e2b

    ld e, $7e
    ld hl, $d00b
    ld a, [hl+]
    and $f0
    ld [de], a
    inc l
    inc e
    ld a, [hl]
    swap a
    and $0f
    ld [de], a
    ld hl, $ce00
    rst $10
    call Call_009_4ed5
    ld b, $f8
    ld l, c
    ld h, $10
    ld a, $02
    jr z, jr_009_4df5

    ld e, $7f
    ld a, [de]
    ld hl, $ce60
    rst $10
    call Call_009_4ed5
    ld b, $88
    ld l, c
    ld h, $70
    ld a, $00
    jr z, jr_009_4df5

    ld e, $7e
    ld a, [de]
    ld hl, $ce08
    rst $10
    call Call_009_4ed9
    ld c, $a8
    ld h, b
    ld l, $90
    ld a, $03
    jr z, jr_009_4df5

    ld e, $7e
    ld a, [de]
    ld hl, $ce00
    rst $10
    call Call_009_4ed9
    ld c, $f8
    ld h, b
    ld l, $10
    ld a, $01
    jr z, jr_009_4df5

    ld hl, $ce03
    call Call_009_4eea
    ld b, $f8
    ld l, c
    ld h, $10
    ld a, $02
    jr nz, jr_009_4df5

    ld hl, $ce63
    call Call_009_4eea
    ld b, $88
    ld l, c
    ld h, $70
    ld a, $00
    jr nz, jr_009_4df5

    ld hl, $ce28
    call Call_009_4ef1
    ld c, $a8
    ld h, b
    ld l, $90
    ld a, $03
    jr nz, jr_009_4df5

    ld hl, $ce20
    call Call_009_4ef1
    ld c, $f8
    ld h, b
    ld l, $10
    ld a, $01
    jr z, jr_009_4e21

jr_009_4df5:
    push de
    push hl
    pop de
    ld hl, $c638
    ldh [$8b], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl], a
    ldh a, [$8b]
    pop de
    ld hl, $d108
    ld [hl+], a
    swap a
    srl a
    ld [hl+], a
    inc l
    ld [hl], b
    ld l, $0d
    ld [hl], c
    ld l, $00
    inc [hl]
    inc l
    ld a, [$c610]
    ld [hl+], a
    ld l, $04
    ld a, $0c
    ld [hl], a
    jr jr_009_4e2b

Jump_009_4e21:
jr_009_4e21:
    ld bc, $510c

Jump_009_4e24:
    ld a, [$cba0]
    or a
    call z, $184b

Jump_009_4e2b:
jr_009_4e2b:
    jp $3ad9


    ld hl, $c645
    ld a, [$c6bb]
    bit 3, a
    jp z, Jump_009_4eab

    set 6, [hl]
    jr jr_009_4e2b

    ld a, [$c6bb]
    bit 2, a
    jr z, jr_009_4e2b

    ld a, [$c644]
    and $20
    jr z, jr_009_4e2b

    ld a, [$c610]
    cp $0c
    jr z, jr_009_4e2b

    ld hl, $c644
    ld a, $2e
    call $1717
    jr nc, jr_009_4eab

    set 6, [hl]
    jr jr_009_4e2b

    ld a, [$c610]
    cp $0c
    jr nz, jr_009_4e2b

    ld hl, $c644
    jr jr_009_4ea7

    ld hl, $c643
    ld a, [$c6bb]
    bit 1, a
    jr z, jr_009_4e2b

    ld a, [$c610]
    cp $0b
    jr z, jr_009_4ea7

    ld a, [hl]
    bit 6, a
    jr z, jr_009_4eab

    jr jr_009_4e2b

    ld hl, $c643
    ld a, [$c610]
    cp $0b
    jr z, jr_009_4e96

    ld a, [$c6af]
    or a
    jr z, jr_009_4e2b

    set 6, [hl]

jr_009_4e96:
    jr jr_009_4e2b

    ld a, [$c610]
    cp $0d
    jr nz, jr_009_4e2b

    ld hl, $c645
    ld a, [hl]
    and $a0
    jr nz, jr_009_4e2b

jr_009_4ea7:
    bit 7, [hl]
    jr nz, jr_009_4e96

Jump_009_4eab:
jr_009_4eab:
    ld a, [hl]
    and $40
    jr nz, jr_009_4e96

    ld e, $42
    ld a, [de]
    add a
    ld hl, $4f16
    rst JumpTable
    ld bc, $d100
    ld a, $01
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    ld c, $0b
    ld a, [hl+]
    ld [bc], a
    ld [$c638], a
    ld c, $0d
    ld a, [hl+]
    ld [bc], a
    ld [$c639], a
    xor a
    ld [$cc40], a
    jr jr_009_4e96

Call_009_4ed5:
    ld b, $10
    jr jr_009_4edb

Call_009_4ed9:
    ld b, $01

jr_009_4edb:
    ld a, [hl]
    or a
    ret nz

    ld a, l
    add b
    ld l, a
    ld a, [hl]
    or a
    ld a, l
    ret nz

    call $2089
    xor a
    ret


Call_009_4eea:
    push de
    ld b, $01
    ld e, $10
    jr jr_009_4ef6

Call_009_4ef1:
    push de
    ld b, $10
    ld e, $01

jr_009_4ef6:
    ld c, $04

jr_009_4ef8:
    ld a, [hl]
    or a
    jr z, jr_009_4f04

jr_009_4efc:
    ld a, l
    add b
    ld l, a
    dec c
    jr nz, jr_009_4ef8

    pop de
    ret


jr_009_4f04:
    ld a, l
    add e
    ld l, a
    ld a, [hl]
    or a
    ld a, l
    jr z, jr_009_4f10

    sub e
    ld l, a
    jr jr_009_4efc

jr_009_4f10:
    call $2089
    or d
    pop de
    ret


    ld c, $18
    cp b
    nop
    dec bc
    jr c, @+$52

    nop
    inc c
    jr @+$61

    nop
    dec c
    jr jr_009_4f55

    nop
    inc c
    jr z, @+$62

    nop
    dec c
    ld e, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    or b
    rlca
    or a
    rlca
    rst $38
    rst $30
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec e
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$03
    ld e, $42
    ld a, [de]
    rst $00
    ld d, [hl]
    ld c, a
    or l

jr_009_4f55:
    ld c, a
    ld e, $44
    ld a, [de]
    rst $00
    ld h, d
    ld c, a
    ld a, c
    ld c, a
    or l
    ld c, a
    or l
    ld c, a
    call $1956
    bit 5, [hl]
    jp nz, $3ad9

    ld e, $44
    ld a, $01
    ld [de], a
    ld [$ccbb], a
    xor a
    ld [$cfd8], a
    ld [$cfd9], a
    ld a, [$cc30]
    or a
    ret nz

    ld a, [$cfd0]
    ld b, a
    ld c, $00
    call Call_009_4fa5
    ld a, [$cfd1]
    ld b, a
    ld c, $01
    call Call_009_4fa5
    ld a, [$cfd2]
    ld b, a
    ld c, $02
    call Call_009_4fa5
    ld a, [$cfd3]
    ld b, a
    ld c, $03
    call Call_009_4fa5
    jp $3ad9


Call_009_4fa5:
    call $3ac6
    ret nz

    ld [hl], $62
    inc l
    ld [hl], $01
    ld l, $70
    ld [hl], b
    ld l, $43
    ld [hl], c
    ret


    ld e, $44
    ld a, [de]
    rst $00
    jp $dd4f


    ld c, a
    db $ec
    ld c, a
    ld d, e
    ld d, b
    ld e, d
    ld d, b
    ld a, $01
    ld [de], a
    ld e, $70
    ld a, [de]
    ld h, d
    ld l, $4b
    call $2076
    ld l, $66
    ld [hl], $04
    inc l
    ld [hl], $06
    ld l, $46
    ld [hl], $1e
    call $24ad
    call $2387
    ret nz

    ld l, $44
    inc [hl]
    ld l, $70
    ld c, [hl]
    ld a, $f1
    call $3a52
    ld a, [$cfd9]
    or a
    jp nz, Jump_009_5076

    call $261d
    ld a, [$ccbc]
    or a
    ret z

    ld b, a
    ld e, $70
    ld a, [de]
    cp b
    ret nz

    ld a, [$cfd8]
    ld b, a
    ld e, $43
    ld a, [de]
    cp b
    jr nz, jr_009_5040

    inc a
    ld [$cfd8], a
    ld hl, $d040
    ld b, $40
    call $044b
    ld hl, $d040
    inc [hl]
    inc l
    ld [hl], $60
    inc l
    ld a, [$cfd8]
    dec a
    ld bc, $504b
    call $007e
    ld a, [bc]
    ld [hl], a
    inc l
    inc bc
    ld a, [bc]
    ld [hl], a
    ld bc, $f800
    call $2215
    ld e, $44
    ld a, $03
    ld [de], a
    ld a, $81
    ld [$cca4], a
    ret


jr_009_5040:
    ld a, $5a
    call $0c74
    ld a, $01
    ld [$cfd9], a
    ret


    jr z, jr_009_5056

    inc bc
    ld bc, $0020
    jr nc, jr_009_5056

    ld a, [$cfd9]

jr_009_5056:
    or a
    jr nz, jr_009_5076

    ret


    call $2387
    ret nz

    call $24ad
    call $2e08
    ret nz

    ld [hl], $19
    call $21fd
    ld e, $70
    ld a, [de]
    ld c, a
    ld a, $a0
    call $3a52
    jp $3ad9


Jump_009_5076:
jr_009_5076:
    ld e, $44
    ld a, $04
    ld [de], a
    ld e, $46
    ld a, $3c
    ld [de], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    adc c
    ld d, b
    sbc $50
    ld a, [$ccc0]
    or a
    ret z

    add $10
    and $1f
    add $04
    add a
    swap a
    and $03
    ld hl, $50da
    rst $10
    ld c, [hl]
    call $2054
    add c
    ld b, $ce
    ld c, a
    ldh [$8c], a
    ld a, [bc]
    or a
    jr nz, jr_009_50e3

    call $3ac6
    ret nz

    ld [hl], $14
    ld l, $49
    ld a, [$ccc0]
    add $10
    and $1f
    ld [hl], a
    ldh [$8b], a
    ld bc, $fe00
    call $2215
    call $2054
    ld l, $70
    ld [hl], a
    ld h, d
    ld l, $4b
    ldh a, [$8c]
    call $2076
    ld l, $44
    ld [hl], $01
    xor a
    ld [$ccc0], a
    ret


    ldh a, [rSB]
    db $10
    rst $38
    ld a, [$ccc0]
    or a
    ret z

jr_009_50e3:
    ld e, $44
    xor a
    ld [de], a
    ld [$ccc0], a
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ei
    ld d, b
    add hl, de
    ld d, c
    ld sp, $3851
    ld d, c
    ld b, e
    ld d, c
    reti


    ld a, [hl-]
    call $15e9
    call $1956
    bit 7, [hl]
    jr nz, jr_009_5111

    call $2130
    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $4f
    ld [hl], a
    ret


jr_009_5111:
    ld e, $44
    ld a, $04
    ld [de], a
    jp $1e03


    call $1956
    bit 7, [hl]
    ret z

    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $46
    ld a, $1e
    ld [de], a
    ld a, $4d
    call $0c74
    jp $1dfa


    call $2387
    ret nz

    ld l, $44
    inc [hl]
    ld c, $10
    call $232b
    ret nc

    ld e, $44
    ld a, $04
    ld [de], a
    ld hl, $dd00
    ld a, [hl]
    or a
    ret nz

    ld [hl], $01
    inc l
    ld [hl], $29
    call $21fd
    ld e, $56
    ld l, $16
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld e, $44
    ld a, $05
    ld [de], a
    ret


    call $268f
    call Call_009_5258
    jp nz, $3ad9

    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], e
    ld d, c
    rst $00
    ld d, c
    inc d
    ld d, d
    ld a, $01
    ld [de], a
    call $1e4b
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_009_51ba

    ld e, $46
    ld a, $78
    ld [de], a
    ld a, $02
    ldh [rSVBK], a
    ld a, $80
    ld hl, $d000
    call Call_009_51c0
    ld hl, $d0a0
    call Call_009_51c0
    ld a, $0b
    ld hl, $d400
    call Call_009_51c0
    ld hl, $d4a0
    call Call_009_51c0
    xor a
    ldh [rSVBK], a
    call $3ac6
    ret nz

    ld [hl], $65
    inc l
    ld [hl], $01
    call $3ac6
    ret nz

    ld [hl], $65
    inc l
    ld [hl], $02
    ret


jr_009_51ba:
    ld e, $44
    ld a, $02
    ld [de], a
    ret


Call_009_51c0:
    ld b, $20

jr_009_51c2:
    ld [hl+], a
    dec b
    jr nz, jr_009_51c2

    ret


    xor a
    ld [$ccab], a
    ld a, $3c
    ld [$cd19], a
    call $2387
    ret nz

    ld [hl], $78
    ld a, $01
    ld [$ccab], a
    ld hl, $cfd0
    inc [hl]
    call Call_009_5261
    call Call_009_545a
    call Call_009_52d9
    call Call_009_537e
    xor a
    ldh [rSVBK], a
    ldh a, [$ad]
    ld d, a
    ld a, $70
    call $0c74
    ld a, $0f
    ld [$cd18], a
    ld a, [$cfd0]
    cp $09
    ret c

    call Call_009_5258
    jp nz, $3ad9

    ld a, $11
    ld [$cc6a], a
    ld a, $81
    ld [$cc6b], a
    jp $3ad9


    call Call_009_5258
    jp nz, $3ad9

    ld a, [$cfd0]
    cp $09
    jr z, jr_009_524d

    ld a, [$cfd0]
    ld c, $08
    call $019d
    ld a, l
    add $10
    ld b, a
    ld hl, $d00b
    ld a, [hl]
    cp b
    jr nc, jr_009_5235

    ld [hl], b

jr_009_5235:
    ld a, [$cfd0]
    ld b, a
    ld a, $15
    sub b
    ld c, $08
    call $019d
    ld a, l
    sub $0e
    ld b, a
    ld hl, $d00b
    ld a, [hl]
    cp b
    ret c

    ld [hl], b
    ret


jr_009_524d:
    ld a, $08
    call $24a7
    ld a, $58
    ld [$d00b], a
    ret


Call_009_5258:
    ld a, [$cc4c]
    cp $c5
    ret z

    cp $c6
    ret


Call_009_5261:
    ld a, $02
    ldh [rSVBK], a
    ld a, [$cd09]
    cpl
    inc a
    swap a
    rlca
    ldh [$8b], a
    xor a
    call Call_009_5293
    ld a, $04
    call Call_009_5293

jr_009_5278:
    ld a, $08
    call Call_009_5293
    ld a, $0c
    call Call_009_5293
    ld a, $10
    call Call_009_5293

jr_009_5287:
    ld a, $14
    call Call_009_5293

jr_009_528c:
    ld a, $18
    call Call_009_5293
    ld a, $1c

Call_009_5293:
    ld hl, $52a6
    rst $10
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$8b]
    ld c, a
    ld b, $00
    add hl, bc
    jr jr_009_52c6

    jr nz, jr_009_5278

    ret nz

    ret nc

    ld b, b
    ret nc

    ldh [$d0], a
    ld h, b
    ret nc

    nop
    pop de
    add b
    ret nc

    jr nz, jr_009_5287

    jr nz, jr_009_528c

    ret nz

    call nc, $d440
    ldh [$d4], a
    ld h, b
    call nc, $d500
    add b
    call nc, $d520

jr_009_52c6:
    ld b, $20

jr_009_52c8:
    ld a, [hl]
    ld [de], a
    inc de
    inc l
    ld a, l
    and $1f
    jr nz, jr_009_52d5

    ld a, l
    sub $20
    ld l, a

jr_009_52d5:
    dec b
    jr nz, jr_009_52c8

    ret


Call_009_52d9:
    push de
    ld a, [$cfd0]
    add a
    ld hl, $5326
    rst JumpTable
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    push hl
    ld hl, $d400
    ld b, $05
    ld c, $02
    call $0566
    pop hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d000
    ld b, $05
    ld c, $02
    call $0566
    ld a, [$cfd0]
    add a
    ld hl, $5352
    rst JumpTable
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    push hl
    ld hl, $d460
    ld b, $05
    ld c, $02
    call $0566
    pop hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d060
    ld b, $05
    ld c, $02
    call $0566
    pop de
    ret


    ld bc, $0098
    sbc b
    ld bc, $0098
    sbc b
    ld hl, $2098
    sbc b
    ld b, c
    sbc b
    ld b, b
    sbc b
    ld h, c
    sbc b
    ld h, b
    sbc b
    add c
    sbc b
    add b
    sbc b
    and c
    sbc b
    and b
    sbc b
    pop bc
    sbc b
    ret nz

    sbc b
    pop hl
    sbc b
    ldh [$98], a
    ld bc, $0099
    sbc c
    ld hl, $2099
    sbc c
    ld h, c
    sbc d
    ld h, b
    sbc d
    ld h, c
    sbc d
    ld h, b
    sbc d
    ld b, c
    sbc d
    ld b, b
    sbc d
    ld hl, $209a
    sbc d
    ld bc, $009a
    sbc d
    pop hl
    sbc c
    ldh [$99], a
    pop bc
    sbc c
    ret nz

    sbc c
    and c
    sbc c
    and b
    sbc c
    add c
    sbc c
    add b
    sbc c
    ld h, c
    sbc c
    ld h, b
    sbc c
    ld b, c
    sbc c
    ld b, b
    sbc c

Call_009_537e:
    ld a, [$cfd0]
    or a
    ret z

    bit 0, a
    jr nz, jr_009_53a1

    srl a
    swap a
    ld l, a
    ld a, $0f
    call Call_009_53bb
    ld a, [$cfd0]
    srl a
    ld b, a
    ld a, $0a
    sub b
    swap a
    ld l, a
    ld a, $0f
    jr jr_009_53bb

jr_009_53a1:
    inc a
    srl a
    swap a
    ld l, a
    ld a, $0c
    call Call_009_53bb
    ld a, [$cfd0]
    inc a
    srl a
    ld b, a
    ld a, $0a
    sub b
    swap a
    ld l, a
    ld a, $03

Call_009_53bb:
jr_009_53bb:
    ld e, a
    ld b, $10
    ld h, $ce

jr_009_53c0:
    ld a, [hl]
    or e
    ld [hl+], a
    dec b
    jr nz, jr_009_53c0

    ret


Call_009_53c7:
    ld a, [$cfd0]
    or a
    ret z

    bit 0, a
    ret nz

    srl a
    swap a
    ld l, a
    ld a, $b0
    call Call_009_53e7
    ld a, [$cfd0]
    srl a
    ld b, a
    ld a, $0a
    sub b
    swap a
    ld l, a
    ld a, $b2

Call_009_53e7:
    ld b, $10
    ld h, $cf

jr_009_53eb:
    ld [hl+], a
    dec b
    jr nz, jr_009_53eb

    ret


    call Call_009_537e
    call Call_009_53c7
    ld hl, $d800
    ld de, $d0c0
    call Call_009_5440
    ld hl, $d820
    ld de, $d0e0
    call Call_009_5440
    ld hl, $dc00
    ld de, $d4c0
    call Call_009_5440
    ld hl, $dc20
    ld de, $d4e0
    call Call_009_5440
    ld hl, $da80
    ld de, $d100
    call Call_009_5440
    ld hl, $daa0
    ld de, $d120
    call Call_009_5440
    ld hl, $de80
    ld de, $d500
    call Call_009_5440
    ld hl, $dea0
    ld de, $d520
    call Call_009_5440
    jr jr_009_545a

Call_009_5440:
    ld a, $03
    ldh [rSVBK], a
    push de
    ld de, $cd40
    ld b, $20
    call $0462
    pop de
    ld a, $02
    ldh [rSVBK], a
    ld hl, $cd40
    ld b, $20
    jp $0462


Call_009_545a:
jr_009_545a:
    ld a, [$cfd0]
    or a
    ret z

    push de
    push hl
    ld hl, $d0c0
    ld de, $cd40
    ld b, $40
    ld c, $02
    call Call_009_553a
    ld a, [$cfd0]
    ld hl, $5544
    rst JumpTable
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cd40
    ld b, $40
    ld c, $03
    call Call_009_553a
    ld hl, $d100
    ld de, $cd40
    ld b, $40
    ld c, $02
    call Call_009_553a
    ld a, [$cfd0]
    ld hl, $5558
    rst JumpTable
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cd40
    ld b, $40
    ld c, $03
    call Call_009_553a
    ld hl, $d4c0
    ld de, $cd40
    ld b, $40
    ld c, $02
    call Call_009_553a
    ld a, [$cfd0]
    ld hl, $5544
    rst JumpTable
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    add $04
    ld d, a
    ld hl, $cd40
    ld b, $40
    ld c, $03
    call Call_009_553a
    ld hl, $d500
    ld de, $cd40
    ld b, $40
    ld c, $02
    call Call_009_553a
    ld a, [$cfd0]
    ld hl, $5558
    rst JumpTable
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    add $04
    ld d, a
    ld hl, $cd40
    ld b, $40
    ld c, $03
    call Call_009_553a
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    ld a, $80
    call Call_009_552a
    ld hl, $dc00
    ld a, $0b
    call Call_009_552a
    ld a, [$cfd0]
    ld c, a
    ld b, $00
    ld a, $16
    sub c
    ld c, a
    ld a, $20
    call $019d
    ld c, l
    ld b, h
    ld hl, $d800
    add hl, bc
    ld a, $80
    push hl
    call Call_009_552a
    pop hl
    ld bc, $0400
    add hl, bc
    ld a, $0b
    call Call_009_552a
    xor a
    ldh [rSVBK], a
    pop hl
    pop de
    ret


Call_009_552a:
    ld e, a
    ld a, [$cfd0]
    ld c, a
    ld a, e

jr_009_5530:
    ld b, $20

jr_009_5532:
    ld [hl+], a
    dec b
    jr nz, jr_009_5532

    dec c
    jr nz, jr_009_5530

    ret


Call_009_553a:
    ld a, c
    ldh [rSVBK], a
    call $0462
    xor a
    ldh [rSVBK], a
    ret


    nop
    ret c

    jr nz, @-$26

    ld b, b
    ret c

    ld h, b
    ret c

    add b
    ret c

    and b
    ret c

    ret nz

    ret c

    ldh [$d8], a
    nop
    reti


    jr nz, @-$25

    add b
    jp c, $da60

    ld b, b
    jp c, $da20

    nop
    jp c, $d9e0

    ret nz

    reti


    and b
    reti


    add b
    reti


    ld h, b
    reti


    ld e, $42
    ld a, [de]
    rst $00
    db $db
    ld d, l
    ld [hl], h
    ld d, l
    ld e, $44
    ld a, [de]
    rst $00
    ld a, h
    ld d, l
    xor b
    ld d, l
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $27
    call $22f6
    ld a, $06
    call $248d
    ld l, $50
    ld [hl], $28
    ld l, $46
    ld [hl], $10
    inc l
    ld [hl], $02
    ld l, $4b
    dec [hl]
    dec [hl]
    push de
    call Call_009_55c8
    pop de
    ld a, $71
    call $0c74
    jp $1e27


    call $1fdb
    call $261d
    call $2387
    ret nz

    ld [hl], $10
    inc l
    dec [hl]
    jr z, jr_009_55bc

    call $26c8
    ret z

jr_009_55bc:
    call $2054
    ld c, a
    ld a, $27
    call $3a52
    jp $3ad9


Call_009_55c8:
    call $2054
    ld c, a
    ld a, $03
    ldh [rSVBK], a
    ld b, $df
    ld a, [bc]
    ld b, a
    xor a
    ldh [rSVBK], a
    ld a, b
    jp $3a52


    ld e, $44
    ld a, [de]
    rst $00
    push hl
    ld d, l
    jr jr_009_5639

    ld [hl], l
    ld d, [hl]
    ld e, $44
    ld a, $01
    ld [de], a
    ld a, $03
    ldh [rSVBK], a
    ld b, $df
    ld hl, $5610
    ld a, $a3

jr_009_55f5:
    ld c, [hl]
    inc hl
    ld [bc], a
    dec e
    jr nz, jr_009_55f5

    ld h, b
    ld l, $17
    ld [hl], $a0
    ld l, $3b
    ld [hl], $a0
    ld l, $5b
    ld [hl], $a0
    ld l, $57
    ld [hl], $a2
    xor a
    ldh [rSVBK], a
    ret


    dec [hl]
    scf
    add hl, sp
    ld d, l
    ld e, c
    ld [hl], l
    ld [hl], a
    ld a, c
    ld hl, $ccba
    bit 4, [hl]
    jr nz, jr_009_562a

    bit 0, [hl]
    jr z, jr_009_562a

    set 4, [hl]
    ld c, $32
    call nz, Call_009_5694

jr_009_562a:
    ld hl, $ccba
    bit 5, [hl]
    jr nz, jr_009_563c

    bit 1, [hl]
    jr z, jr_009_563c

    set 5, [hl]
    ld c, $52

jr_009_5639:
    call nz, Call_009_5694

jr_009_563c:
    ld hl, $ccba
    bit 6, [hl]
    jr nz, jr_009_564e

    bit 2, [hl]
    jr z, jr_009_564e

    set 6, [hl]
    ld c, $95
    call nz, Call_009_56a5

jr_009_564e:
    ld hl, $ccba
    bit 7, [hl]
    jr nz, jr_009_5660

    bit 3, [hl]
    jr z, jr_009_5660

    set 7, [hl]
    ld c, $97
    call nz, Call_009_56a5

jr_009_5660:
    ld a, [$ccba]
    inc a
    ret nz

    call $1956
    bit 5, [hl]
    jp nz, $3ad9

    ld e, $46
    ld a, $3c
    ld [de], a
    jp $239b


    call $2387
    ret nz

    ld a, $a3
    call $15ba
    jr nz, jr_009_5688

    ld a, $5a
    call $0c74
    jp $3ad9


jr_009_5688:
    ld bc, $3001
    call $271b
    call $21fd
    jp $3ad9


Call_009_5694:
    ld b, $cf

jr_009_5696:
    ld a, [bc]
    cp $27
    ld e, $18
    call z, Call_009_56b8
    inc c
    ld a, c
    and $0f
    ret z

    jr jr_009_5696

Call_009_56a5:
    ld b, $cf

jr_009_56a7:
    ld a, [bc]
    cp $27
    ld e, $10
    call z, Call_009_56b8
    ld a, c
    sub $10
    ld c, a
    and $f0
    ret z

    jr jr_009_56a7

Call_009_56b8:
    call $3ac6
    ret nz

    ld [hl], $66
    inc l
    ld [hl], $01
    push bc
    ld l, $4b
    call $2077
    pop bc
    ld l, $49
    ld [hl], e
    ret


    ld e, $44
    ld a, [de]
    rst $00
    jp c, $ed56

    ld d, [hl]
    scf
    ld d, a
    ld c, d
    ld d, a
    db $ec
    ld d, a
    call $1956
    bit 5, [hl]
    jp nz, $3ad9

    ld a, $0a
    call $248d
    ld l, $44
    inc [hl]
    jp $15e9


    call $1bf4
    ret nc

    call $041a
    and $0f
    ld hl, $5727
    rst $10
    ld a, [hl]
    ld e, $43
    ld [de], a
    ld hl, $571f
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call $239b
    ld a, $81
    ld [$cca4], a
    call $1e27
    call $12a3
    call Call_009_57f3
    ld e, $79
    ld [de], a
    jp $24ad


    ld [hl], c
    ld h, l
    and c
    ld h, l
    cp [hl]
    ld h, l
    rst $20
    ld h, l
    nop
    ld bc, $0302
    nop
    ld bc, $0302
    nop
    ld bc, $0302
    nop
    ld bc, $0302
    ld a, [$cc00]
    rrca
    jr nc, jr_009_5744

    ld a, $80
    ld h, d
    ld l, $5a
    xor [hl]
    ld [hl], a

jr_009_5744:
    call $25b8
    jp $250c


    ld e, $5a
    xor a
    ld [de], a
    call Call_009_57f3
    ld b, a
    ld e, $79
    ld a, [de]
    cp b
    ret z

    ld e, $43
    ld a, [de]
    ld hl, $579a
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $78
    ld a, [de]
    rst $10
    ld a, [hl]
    cp b
    jr nz, jr_009_5792

    cp $1c
    jr z, jr_009_577f

    ld c, a
    ld a, [de]
    inc a
    ld [de], a
    ld a, b
    ld e, $79
    ld [de], a

Call_009_5775:
    ld a, $a2
    call $3a52
    ld a, $62
    jp $0c74


jr_009_577f:
    ld c, $1c
    call Call_009_5775
    call $239b
    ld a, $4d
    call $0c74
    ld hl, $660c
    jp $24fe


jr_009_5792:
    ld a, $5a
    call $0c74
    jp $3ad9


    and d
    ld d, a
    or e
    ld d, a
    jp nz, $d757

    ld d, a
    sbc h
    adc h
    ld a, h
    ld a, l
    ld l, l
    ld l, h
    ld l, e
    ld l, d
    ld e, d
    ld c, d
    ld a, [hl-]
    ld a, [hl+]
    ld a, [de]
    dec de
    dec hl
    inc l
    inc e
    sbc h
    adc h
    ld a, h
    ld a, l
    ld l, l
    ld e, l
    ld c, l
    ld c, h
    ld c, e
    ld c, d
    ld a, [hl-]
    ld a, [hl+]
    ld a, [de]
    dec de
    inc e
    sbc h
    sbc e
    sbc d
    adc d
    adc e
    adc h
    adc l
    ld a, l
    ld a, h
    ld a, e
    ld a, d
    ld l, d
    ld e, d
    ld c, d
    ld a, [hl-]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec e
    inc e
    sbc h
    adc h
    ld a, h
    ld l, h
    ld e, h
    ld e, e
    ld l, e
    ld a, e
    ld a, h
    ld a, l
    ld l, l
    ld l, h
    ld l, e
    ld l, d
    ld e, d
    ld c, d
    ld a, [hl-]
    ld a, [hl+]
    ld a, [de]
    dec de
    inc e
    call $250c
    jp c, $3ad9

    ret


Call_009_57f3:
    ld hl, $d00b
    ld a, [hl+]
    add $04
    and $f0
    ld b, a
    inc l
    ld a, [hl]
    swap a
    and $0f
    or b
    ret


    ld e, $44
    ld a, [de]
    rst $00
    db $10
    ld e, b
    ld e, $58
    ld e, d
    ld e, b
    sub h
    ld e, b
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $06
    call $248d
    jp $1e03


    ld c, $20
    call $1f04
    ld a, [$cc77]
    or a
    jr nz, jr_009_5830

    ld a, [$cc48]
    rrca
    call nc, $22c9

jr_009_5830:
    call $2b75

jr_009_5833:
    call $21cb
    ret nc

    bit 6, a
    jr nz, jr_009_5842

    dec a
    jp z, $21f3

    jp $21ee


jr_009_5842:
    call $1956
    bit 6, [hl]
    jp nz, $21ee

    call $1e39
    ld l, $44
    ld [hl], $03
    ld l, $46
    ld [hl], $1e
    ld b, $0f
    jp $24af


    ld e, $45
    ld a, [de]
    rst $00
    ld h, [hl]
    ld e, b
    ld [hl], b
    ld e, b
    ld [hl], c
    ld e, b
    add [hl]
    ld e, b
    ld h, d
    ld l, e
    inc [hl]
    xor a
    ld [$cc76], a
    jp $1e1e


    ret


    call $215d
    jp nc, $3ad9

    call $1dfa
    ld h, d
    ld l, $40
    res 1, [hl]
    ld e, $4f
    ld a, [de]
    or a
    jr z, jr_009_5833

    ret


    ld h, d
    ld l, $40
    res 1, [hl]
    ld l, $45
    xor a
    ld [hl-], a
    inc a
    ld [hl], a
    jp $1e27


    call $2387
    ret nz

    ld a, [$d004]
    cp $01
    jr nz, jr_009_58e1

    ld a, [$cc34]
    or a
    jr nz, jr_009_58e1

    ld a, [$cc48]
    cp $d0
    jr nz, jr_009_58e1

    call $2af0
    ld a, $80
    ld [$cc02], a
    ld [$ccaa], a
    ld [$ccab], a
    call $1956
    set 6, [hl]
    call Call_009_58e4
    ldh a, [$ad]
    ld d, a
    ld a, [$cc57]
    dec a
    ld [$cc57], a
    call $2d65
    ld [$cc64], a
    ld a, $85
    ld [$cc63], a
    ld a, $0f
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a

jr_009_58e1:
    jp $3ad9


Call_009_58e4:
    call $1432
    dec h
    ld b, l
    ld a, [$ccb4]
    cp $d0
    ld a, [$ccb3]
    jr nz, jr_009_590c

    ld a, b
    sub $10
    call Call_009_5907
    jr z, jr_009_590b

    ld a, b
    inc a
    call Call_009_5907
    jr z, jr_009_590b

    ld a, b
    add $10
    jr jr_009_590c

Call_009_5907:
    ld l, a
    ld a, [hl]
    or a
    ret


jr_009_590b:
    ld a, l

jr_009_590c:
    ld [$cfd0], a
    ld a, [$cc4c]
    cp $7f
    jr nz, jr_009_5918

    ld b, $27

jr_009_5918:
    ld a, b
    ld [$cc66], a
    ret


    ld e, $42
    ld a, [de]
    rst $00
    dec hl
    ld e, c
    dec a
    ld e, d
    add [hl]
    ld e, d
    sbc a
    ld e, d
    call z, $1e5a
    ld b, h
    ld a, [de]
    rst $00
    scf
    ld e, c
    sbc l
    ld e, c
    ret nz

    ld e, c
    db $ec
    ld e, c
    ld e, $45
    ld a, [de]
    rst $00
    ccf
    ld e, c
    ld a, d
    ld e, c
    call $1956
    bit 6, [hl]
    jp nz, $3ad9

    ld e, $4d
    ld a, [de]
    ld e, $43
    ld [de], a
    ld hl, $5976
    rst $10
    ld b, [hl]
    call $1956
    ld l, b
    bit 6, [hl]
    jp z, $3ad9

    call $1956
    set 6, [hl]
    ld e, $45
    ld a, $01
    ld [de], a
    ld a, $f0
    call $0c74
    ld a, $ff
    ld [$cc51], a
    ld a, $80
    ld [$cca4], a
    jr jr_009_597a

    ld a, [hl]
    ld a, a
    adc b
    adc c

jr_009_597a:
    call Call_009_5ae0
    ld a, [$c4ab]
    or a
    ret nz

    ld e, $44
    ld a, $01
    ld [de], a
    xor a
    inc e
    ld [de], a
    call $3ac6
    jp nz, $3ad9

    ld [hl], $69
    inc l
    ld [hl], $01
    ld e, $4b
    ld a, [de]
    ld l, $4b
    jp $2076


    ld a, [$cfc0]
    inc a
    ret nz

    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $43
    ld a, [de]
    ld hl, $5b0d
    rst JumpTable
    ld e, $58
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld h, d
    ld l, $46
    ld [hl], $14
    inc l
    ld [hl], $03
    call $313b
    ld a, $3c
    call $24a7
    call $2387
    ret nz

    ld [hl], $14
    inc l
    dec [hl]
    jp nz, $313b

    ld l, $44
    inc [hl]
    call $3110
    call $3ac6
    jr nz, jr_009_59ec

    ld [hl], $69
    inc l
    ld [hl], $04
    ld e, $58
    ld l, e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ld l, $46
    ld [hl], $84

jr_009_59ec:
    ld a, $3c
    call $24a7
    ld a, [$c4ab]
    or a
    ret nz

    call $2387
    ret nz

    ld [hl], $08
    ld a, $7a
    call $0c74
    ld b, $d6
    call Call_009_5af7
    ret nz

    jp $3ad9


Jump_009_5a0a:
    ld a, [$cc57]
    inc a
    ld [$cc57], a
    call $2d65
    ld [$cc64], a
    ld a, [$cfd0]
    ld [$cc66], a
    ld a, [$cc49]
    or $80
    ld [$cc63], a
    xor a
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    call $1956
    res 4, [hl]
    xor a
    ld [$cca4], a
    ld [$cc02], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld b, l
    ld e, d
    ld h, h
    ld e, d
    ld a, $01
    ld [de], a
    call $15e9
    call $2130
    ld e, $4f
    ld [de], a
    call $1df1
    call $3ac6
    ret nz

    ld [hl], $69
    inc l
    ld [hl], $02
    ld e, $59
    ld a, h
    ld [de], a
    jp $21fd


    ld e, $59
    ld a, [de]
    ld h, a
    ld l, $4a
    ld e, l
    ld b, $06
    call $045b
    ld c, $08
    call $1f04
    ret nz

    ld bc, $6903
    call $24b1
    jr nz, jr_009_5a83

    ld a, $01
    ld [$cfc0], a

jr_009_5a83:
    jp $3ad9


    ld e, $44
    ld a, [de]
    or a
    jr nz, jr_009_5a95

    ld a, $01
    ld [de], a
    call $15e9
    call $1e30

jr_009_5a95:
    ld a, [$cfc0]
    or a
    jp nz, $3ad9

    jp $25b8


    ld e, $44
    ld a, [de]
    or a
    jr nz, jr_009_5ab3

    ld a, $01
    ld [de], a
    call $15e9
    call $1e30
    ld a, $5c
    call $0c74

jr_009_5ab3:
    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    ret nz

    ld a, $ff
    ld [$cfc0], a
    call $2054
    ld c, a
    ld a, $d5
    call $3a52
    jp $3ad9


    ld a, [$c4ab]
    or a
    ret nz

    call $2387
    ret nz

    ld [hl], $08
    ld b, $d7
    call Call_009_5af7
    ret nz

    jp Jump_009_5a0a


Call_009_5ae0:
    ld hl, $d080

jr_009_5ae3:
    ld a, [hl]
    or a
    call nz, Call_009_5aef
    inc h
    ld a, h
    cp $e0
    jr c, jr_009_5ae3

    ret


Call_009_5aef:
    xor a
    ld l, $9a
    ld [hl], a
    ld l, $80
    ld [hl], a
    ret


Call_009_5af7:
    ld h, d
    ld l, $58
    ld e, l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    or a
    ret z

    ld c, a
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld a, b
    call $3a52
    or d
    ret


    dec d
    ld e, e
    ccf
    ld e, e
    ld [hl], e
    ld e, e
    cp e
    ld e, e
    inc [hl]
    ld b, h
    ld b, e
    ld b, l
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, a
    ld d, e
    ld d, l
    ld d, d
    ld sp, $2137
    daa
    jr z, jr_009_5b37

    rla
    jr jr_009_5b7a

    ld h, d
    ld h, c
    ld h, h
    ld h, [hl]
    ld h, a
    ld l, b
    ld [hl], h
    ld [hl], e
    ld [hl], l
    ld [hl], d
    db $76
    ld [hl], c
    ld [hl], a
    add c

jr_009_5b37:
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    nop
    daa
    scf
    ld [hl], $47
    jr c, jr_009_5b8b

    ld c, b
    dec [hl]
    add hl, sp
    ld a, [hl-]
    ld c, d
    ld c, c
    ld e, c
    ld e, b
    ld d, a
    ld d, [hl]
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    ld a, [hl+]
    ld a, [de]
    dec de
    ld d, e
    ld h, e
    ld h, h
    ld c, e
    ld e, e
    ld e, d
    inc e
    inc l
    inc a
    ld l, d
    ld l, c
    ld l, b
    ld h, a
    ld h, [hl]
    ld h, d
    db $76
    ld [hl], a
    ld l, e
    ld e, h
    ld l, h
    ld a, h
    ld a, e
    ld a, d
    ld a, c
    ld a, b
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    scf
    ld b, a
    ld d, a
    ld b, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a

jr_009_5b7a:
    ld c, b
    ld e, b
    ld l, b
    ld b, l
    ld d, l
    ld h, l
    ld c, c
    ld e, c
    ld l, c
    ld h, h
    ld d, h
    ld b, h
    inc [hl]
    ld e, d
    ld l, d
    ld l, e
    ld e, e

jr_009_5b8b:
    ld c, e
    ld a, e
    ld a, d
    ld a, c
    ld e, h
    ld l, h
    ld a, h
    ld [hl], h
    ld [hl], e
    ld h, e
    ld d, e
    ld b, e
    ld [hl], a
    ld a, b
    ld a, [hl-]
    ld a, [hl+]
    ld a, [de]
    inc sp
    inc hl
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    ld [hl], d
    inc h
    inc d
    inc de
    inc bc
    ld [bc], a
    ld [de], a
    inc b
    dec b
    dec sp
    dec hl
    dec de
    dec bc
    inc l
    inc a
    ld c, h
    ld a, [bc]
    add hl, bc
    ld [$1c0c], sp
    ld b, $07
    nop
    ld a, c
    adc c
    adc b
    sbc c
    adc d
    add a
    sub a
    sbc b
    sbc d
    sbc e
    adc e
    db $76
    add [hl]
    sbc h
    sbc l
    adc l
    ld a, l
    ld l, l
    ld e, l
    dec l
    inc l
    ld a, [hl+]
    add hl, hl
    ld c, l
    dec a
    ld c, h
    ld c, d
    inc a
    dec sp
    ld c, c
    jr c, jr_009_5c15

    add hl, sp
    ld [hl], l
    add l
    ld h, l
    sub l
    add h
    sub h
    daa
    ld h, $24
    nop
    ld e, $42
    ld a, [de]
    rst $00
    ld a, [c]
    ld e, e
    ld [$3d5c], sp
    ld e, a
    xor [hl]
    ld h, b
    ld a, $01
    ld [$ccea], a
    ld b, $20
    ld hl, $cfc0
    call $044b
    ld hl, $7e6c
    call $3048
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    jr @+$5e

    ld [hl], c
    ld e, [hl]
    inc [hl]
    ld e, h
    ccf
    ld e, h
    sub h

jr_009_5c15:
    ld e, h
    rst $08
    ld e, l
    call Call_009_5c21
    ld hl, $6613
    jp $24fe


Call_009_5c21:
    ld a, $01
    ld [de], a
    call $26ac
    ld l, $48
    ld [hl], $02
    inc l
    ld [hl], $10
    call $15e9
    jp $1e03


    ld c, $28
    call $1f04
    call $250c
    jp $25b8


    call $25b8
    ld e, $45
    ld a, [de]
    rst $00
    ld c, h
    ld e, h
    inc c
    dec h
    ld e, l
    ld e, h
    ld a, $01
    ld [de], a
    ld [$cfda], a
    ld a, $50
    ld [$cfd3], a
    ld hl, $6634
    jp $24fe


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    ld h, d
    ld l, e
    ld [hl-], a
    inc [hl]
    ld a, $01
    call $2a16
    jp $3168


    ld a, $01
    ld [$cfd2], a
    ld a, $04
    jr jr_009_5c87

    ld a, $ff
    ld [$cfd2], a
    ld a, $04
    jr jr_009_5c87

    ld a, $05
    jr jr_009_5c87

    ld a, $03

jr_009_5c87:
    ld [$cfd4], a
    ld a, $09
    ld [$cfd1], a
    ld hl, $cfda
    inc [hl]
    ret


    ld e, $45
    ld a, [de]
    rst $00
    and d
    ld e, h
    inc d
    ld e, l
    scf
    ld e, l
    ld e, a
    ld e, l
    pop bc
    ld e, l
    ld a, $01
    ld [de], a
    ld a, [$c6e2]
    cp $08
    jr c, jr_009_5cae

    ld a, $08

jr_009_5cae:
    ld [$cfd7], a
    ld [$cfdc], a
    call Call_009_5cdd
    ld a, [$cfd7]
    ld hl, $5d0b
    rst $10
    call $041a
    and $03
    add [hl]
    ld [$cfd5], a
    xor a
    ld [$cfd4], a
    ld [$cfdb], a
    ld a, $cc
    call $0c74
    ld e, $47
    ld a, $3c
    ld [de], a
    ld a, $22
    jp $0c74


Call_009_5cdd:
Jump_009_5cdd:
    ld a, [$cfd7]
    ld hl, $5ced
    rst JumpTable
    ld a, [hl+]
    ld [$cfd3], a
    ld a, [hl+]
    ld [$cfd6], a
    ret


    jr z, jr_009_5d0f

    ld [hl-], a
    ld e, $32
    inc e
    inc a
    ld a, [de]
    inc a
    jr jr_009_5d3e

    ld d, $46
    inc d
    ld d, b
    inc d
    ld d, b
    ld [de], a
    ld e, d
    ld [de], a
    ld h, h
    db $10
    ld h, h
    db $10
    ld h, h
    ld c, $78
    dec c
    ld a, b
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c

jr_009_5d0f:
    ld c, $10
    ld [de], a
    inc d
    jr @-$31

    adc h
    inc hl
    ret nz

    ld [hl], $01
    ld a, $02
    ld [de], a
    ld hl, $cfc8
    call Call_009_5ec4
    ld [hl+], a
    call Call_009_5ec4
    ld [hl+], a
    call Call_009_5ec4
    ld [hl+], a
    xor a
    ld [hl], a
    ld e, $46
    ld a, [$cfd6]
    ld [de], a
    call Call_009_5eb9
    call Call_009_5f1d
    ret nz

    ld a, [$cfcb]

jr_009_5d3e:
    cp $03
    jr z, jr_009_5d45

    jp Jump_009_5ee1


jr_009_5d45:
    call $23a0
    ld a, [$cfd6]
    ld l, $46
    ld [hl], a
    xor a
    ld [$cfcb], a
    ld [$cfd9], a
    ld a, $ff
    ld [$cfd8], a
    ld a, $02
    call $25cb
    call Call_009_5e97
    jr nz, jr_009_5d91

    call Call_009_5f1d
    ret nz

    ld a, [$cfd1]
    or a
    ret nz

    ld a, [$cfcb]
    cp $03
    jr z, jr_009_5d77

    jp Jump_009_5eea


jr_009_5d77:
    ld a, [$cfd9]
    cp $03
    jr nz, jr_009_5d91

    ld hl, $cfd5
    dec [hl]
    jr z, jr_009_5dab

    call Call_009_5e77
    ld e, $45
    ld a, $01
    ld [de], a
    xor a
    ld [$cfcb], a
    ret


jr_009_5d91:
    ld bc, HeaderLogo
    call $184b
    ld a, $04
    ld e, $45
    ld [de], a
    ld a, $ff
    ld [$cfd0], a
    ld a, $cc
    call $0c74
    ld a, $fb
    jp $0c74


jr_009_5dab:
    call $239b
    inc l
    ld [hl], $00
    ld a, $01
    ld [$cfd0], a
    ld a, $fb
    call $0c74
    ld bc, $010a
    jp $184b


    call $1832
    ld hl, $5dca
    jp $1970


    add c
    inc h
    nop
    inc d
    inc bc
    ld e, $45
    ld a, [de]
    rst $00
    db $dd
    ld e, l
    add sp, $5d
    db $10
    ld e, [hl]
    inc c
    dec h
    pop bc
    ld e, l
    call $1832
    ld e, $45
    ld a, $01
    ld [de], a
    jp $313b


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    call $2a16
    ld l, $0b
    ld [hl], $30
    ld l, $0d
    ld [hl], $48
    ld l, $08
    ld [hl], $02
    call $23a0
    ld a, $81
    ld [$cca4], a
    ld [$cbca], a
    ld a, $1e
    call $17fa
    jp $3168


    ld a, [$c4ab]
    or a
    ret nz

    ld a, $81
    ld [$cca4], a
    ld [$cc02], a
    ld hl, $c6e2
    call $0245
    ld a, [hl]
    dec a
    jr z, jr_009_5e65

    cp $08
    jr z, jr_009_5e40

    cp $05
    jr nz, jr_009_5e56

    call $196b
    jr nz, jr_009_5e56

    ld a, [$c643]
    and $20
    jr nz, jr_009_5e56

    ld hl, $664a
    jr jr_009_5e68

jr_009_5e40:
    ld hl, $5e20
    ld e, $15
    call $008a
    bit 7, b
    jr nz, jr_009_5e60

    ld c, $00
    call $26fb
    ld hl, $6657
    jr jr_009_5e68

jr_009_5e56:
    call $041a
    cp $60
    ld hl, $6654
    jr nc, jr_009_5e68

jr_009_5e60:
    ld hl, $664f
    jr jr_009_5e68

jr_009_5e65:
    ld hl, $6645

jr_009_5e68:
    call $24fe
    ld e, $45
    ld a, $03
    ld [de], a
    ret


    call $250c
    jp $2646


Call_009_5e77:
    ld hl, $cfdb
    ld a, [hl]
    cp $08
    jr c, jr_009_5e81

    ld a, $08

jr_009_5e81:
    inc a
    ld [hl], a
    ld b, a
    and $03
    ret nz

    ld a, b
    rrca
    rrca
    and $03
    ld b, a
    ld a, [$cfd7]
    add b
    ld [$cfd7], a
    jp Jump_009_5cdd


Call_009_5e97:
    ld a, [$cfdd]
    or a
    ret nz

    ld a, [$cfd8]
    ld b, a
    inc a
    ret z

    ld a, [$cfd9]
    cp $03
    ret z

    ld hl, $cfd9
    inc [hl]
    ld hl, $cfc8
    rst $10
    ld a, [hl]
    cp b
    ret nz

    ld a, $ff
    ld [$cfd8], a
    ret


Call_009_5eb9:
    ld a, $02
    call $25cb
    ld bc, $fe80
    jp $2358


Call_009_5ec4:
    call $041a
    and $0f
    ld bc, $5ed1
    call $006d
    ld a, [bc]
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a

Jump_009_5ee1:
    call Call_009_5efd
    ld a, e
    call $25cb
    jr jr_009_5ef2

Jump_009_5eea:
    call Call_009_5efd
    ldh a, [$8b]
    call Call_009_5f10

jr_009_5ef2:
    ld hl, $cfcb
    inc [hl]
    ld e, $46
    ld a, [$cfd6]
    ld [de], a
    ret


Call_009_5efd:
    ld a, [$cfcb]
    ld hl, $cfc8
    rst $10
    ld a, [hl]
    ldh [$8b], a
    ld hl, $5f17
    rst JumpTable
    ld a, [hl+]
    ld e, [hl]
    jp $0c74


Call_009_5f10:
    rst $00
    ld l, a
    ld e, h
    ld a, b
    ld e, h
    add c
    ld e, h
    jp z, $cb05

    ld b, $cd
    inc b

Call_009_5f1d:
    ld c, $28
    call $1f04
    call $25b8
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jr z, jr_009_5f36

    inc a
    jr z, jr_009_5f36

    dec a
    ld [hl], $00
    ld l, $4d
    add [hl]
    ld [hl], a

jr_009_5f36:
    ld l, $46
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


    ld e, $44
    ld a, [de]
    rst $00
    ld c, a
    ld e, a
    ld a, e
    ld e, a
    sub c
    ld e, a
    add hl, de
    ld h, b
    inc hl
    ld h, b
    dec l
    ld h, b
    cp b
    dec h
    call Call_009_5c21
    ld e, $4d
    ld a, [de]
    ld hl, $5f72
    rst $10
    ld e, $72
    ld a, [hl]
    ld [de], a
    ld a, $01
    inc e
    ld [de], a
    ld h, d
    ld l, $7b
    ld [hl], $01
    ld l, $4b
    ld a, [hl]
    call $2076
    ld hl, $665d
    jp $24fe


    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld a, [$cfda]
    or a
    jr nz, jr_009_5f87

    call $250c
    jp $2646


jr_009_5f87:
    ld e, $44
    ld a, $02
    ld [de], a
    ld a, $02
    jp $25cb


    call Call_009_60a4
    jr c, jr_009_5fb8

    call $25b8
    ld a, [$cfd0]
    or a
    jr nz, jr_009_5fb8

    ld h, d
    ld l, $7b
    ld a, [$cfda]
    cp [hl]
    ret z

    ld [hl], a
    ld a, [$cfd4]
    ld l, $44
    ld [hl], a
    cp $04
    call z, Call_009_5fc3
    xor a
    ld e, $78
    ld [de], a
    ret


jr_009_5fb8:
    ld a, $02
    call $25cb
    ld e, $44
    ld a, $06
    ld [de], a
    ret


Call_009_5fc3:
    call $2054
    ld c, a
    ld hl, $5ff1

jr_009_5fca:
    ld a, [hl+]
    cp c
    jr z, jr_009_5fd1

    inc hl
    jr jr_009_5fca

jr_009_5fd1:
    ld a, [$cfd2]
    bit 7, a
    jr nz, jr_009_5fdb

    ld a, [hl]
    jr jr_009_5fde

jr_009_5fdb:
    ld a, [hl]
    swap a

jr_009_5fde:
    and $0f
    ld e, $48
    ld [de], a
    ldh [$8b], a
    call $25cb
    ldh a, [$8b]
    swap a
    rrca
    ld e, $49
    ld [de], a
    ret


    ld de, $2121
    jr nz, jr_009_6027

    jr nz, @+$43

    jr nz, @+$53

    jr nz, @+$63

    db $10
    ld h, d
    inc de
    ld h, e
    inc de
    ld h, h
    inc de
    ld h, l
    inc de
    ld h, [hl]
    inc bc
    ld d, [hl]
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld [hl], $02
    ld h, $02
    ld d, $32
    dec d
    ld sp, $3114
    inc de
    ld sp, $3112
    ld a, $02
    ld [de], a
    ld a, $02
    call $25cb
    jr jr_009_6037

    call Call_009_603f
    ret c

jr_009_6027:
    ld l, $44
    ld [hl], $02
    jr jr_009_6037

    ld a, $02
    ld [de], a
    ld a, $04
    call $25cb
    jr jr_009_6037

jr_009_6037:
    ld hl, $cfd1
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_009_603f:
    ld h, d
    ld e, $4b
    ld l, $79
    ld a, [de]
    ld [hl+], a
    ld e, $4d
    ld a, [de]
    ld [hl], a
    ld a, [$cfd3]
    ld e, $50
    ld [de], a
    call $1fdb
    call Call_009_6058
    jr jr_009_607e

Call_009_6058:
    ld h, d
    ld l, $4b
    call Call_009_6061
    ld h, d
    ld l, $4d

Call_009_6061:
    ld a, $17
    cp [hl]
    inc a
    jr nc, jr_009_606b

    ld a, $68
    cp [hl]
    ret nc

jr_009_606b:
    ld [hl], a
    ld a, [$cfd2]
    ld l, $48
    add [hl]
    and $03
    ld [hl+], a
    ld b, a
    swap a
    rrca
    ld [hl], a
    ld a, b
    jp $25cb


jr_009_607e:
    ld e, $4b
    ld a, [de]
    ld b, a
    ld e, $79
    ld a, [de]
    sub b
    jr nc, jr_009_608a

    cpl
    inc a

jr_009_608a:
    ld c, a
    ld e, $4d
    ld a, [de]
    ld b, a
    ld e, $7a
    ld a, [de]
    sub b
    jr nc, jr_009_6097

    cpl
    inc a

jr_009_6097:
    add c
    ld b, a
    ld e, $78
    ld a, [de]
    add b
    ld [de], a
    cp $10
    ret c

    jp $2099


Call_009_60a4:
    call $1c07
    ret nc

    ld a, $01
    ld [$cfdd], a
    ret


    ld e, $44
    ld a, [de]
    or a
    jr nz, jr_009_60bf

    ld a, $01
    ld [de], a
    ld e, $40
    ld a, $81
    ld [de], a
    call $15e9

jr_009_60bf:
    ld a, [$cfdf]
    ld b, a
    or a
    jp z, $1e39

    call $1e15
    ld a, b
    cp $ff
    jp z, $3ad9

    add a
    add b
    ld hl, $60e2
    rst $10
    ld a, [hl+]
    ld e, $4b
    ld [de], a
    ld e, $4d
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    jp $25cb


    jr nc, jr_009_613c

    rlca
    jr nc, jr_009_613f

    rlca
    jr nc, jr_009_6122

    ld [$5830], sp
    add hl, bc
    ld e, $42
    ld a, [de]
    rst $00
    ld b, b
    ld h, c
    ld h, c
    ld h, c
    sub [hl]
    ld h, c
    ldh [$61], a
    ld l, [hl]
    ld h, d
    and d
    ld h, d
    xor b
    ld h, d
    rst $08
    ld h, d
    inc sp
    ld h, e
    ld b, l
    ld h, e
    add c
    ld h, e
    sbc [hl]
    ld h, e
    rst JumpTable
    ld h, e
    dec c
    ld h, h
    daa
    ld h, h
    adc e
    ld h, h
    sub c
    ld h, h
    cp h
    ld h, h
    jr @+$67

    ld b, l
    ld h, l
    ld e, c
    ld h, l
    ld a, h
    ld h, l
    adc h
    ld h, l
    xor a
    ld h, l

jr_009_6122:
    push af
    ld h, l
    ld [$0e66], sp
    ld h, [hl]
    inc d
    ld h, [hl]
    ld b, h
    ld h, [hl]
    ld d, e
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    xor d
    ld h, [hl]
    or b
    ld h, [hl]
    or [hl]
    ld h, [hl]
    pop hl
    ld h, [hl]
    rst $28
    ld h, [hl]
    ld a, $67

jr_009_613c:
    ld c, [hl]
    ld h, a
    db $76

jr_009_613f:
    ld h, a
    call $23b9
    jr nz, jr_009_6158

    ld a, $01
    ld [de], a
    call $15e9
    ld hl, $6665
    call $24fe
    call $1e27
    xor a
    ld [$cfc1], a

jr_009_6158:
    call $25b8
    call $261d
    jp $250c


    call $23b9
    jr nz, jr_009_618c

    ld a, $01
    ld [de], a
    call $1956
    bit 6, [hl]
    jr z, jr_009_6179

    ld bc, $cf68
    ld a, $0b
    ld [bc], a
    jp $3ad9


jr_009_6179:
    call $15e9
    call $1e30
    call $1e39
    xor a
    ld [$cc32], a
    ld hl, $66aa
    jp $24fe


jr_009_618c:
    call $25b8

Jump_009_618f:
    call $250c
    ret nc

    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    and b
    ld h, c
    inc c
    dec h
    or c
    ld h, c
    ld a, $01
    ld [de], a
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    ld hl, $66ca
    jp $24fe


    ld a, $04
    call $24a7
    ld a, [$cfc0]
    bit 7, a
    ret z

    ld a, [$cc62]
    ld [$cc51], a
    call $0c74
    jr jr_009_61cc

Jump_009_61c7:
    ld a, $ff
    ld [$cc51], a

jr_009_61cc:
    xor a
    ld [$cc02], a
    ld [$cca4], a
    ld a, $f1
    call $0c74
    ld a, $4d
    call $0c74
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    xor $61
    rlca
    ld h, d
    inc h
    ld h, d
    ccf
    ld h, d
    ld d, e
    ld h, d
    ld a, $01
    ld [de], a
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    call $1e4b
    ld a, $01
    ld [$ccae], a
    ld hl, $66e0
    jp $24fe


    ld a, [$cc4c]
    cp $0d
    jp nz, $3ad9

    call $250c
    ret nc

    call $239b
    ld hl, $4d80
    jp $3d53


Call_009_621c:
    ld h, d
    ld l, $46
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


    call Call_009_621c
    ret nz

    call $3d5b
    ret nc

    call $239b
    ld a, $1d
    ld b, $02
    call $1324
    ld hl, $5d79
    ld e, $15
    call $008a
    ret


    ld a, [$cd00]
    and $01
    ret z

    call $1956
    set 7, [hl]
    call $239b
    ld hl, $4dbd
    jp $3d53


    ld a, $3c
    call $24a7
    call Call_009_621c
    ret nz

    call $3d5b
    ret nc

    ld hl, $6269
    call $1970
    jp Jump_009_61c7


    ret nz

    dec c
    ld bc, $0323
    ld e, $44
    ld a, [de]
    rst $00
    ld a, b
    ld h, d
    adc c
    ld h, d
    inc c
    dec h
    call $1956
    and $60
    cp $40
    ret nz

    ld bc, $4300
    call Call_009_6391
    jp $239b


    ld a, $43
    call $1717
    ret nc

    call $239b
    ld hl, $cca4
    set 7, [hl]
    ld a, $01
    ld [$cc02], a
    ld hl, $66a5
    jp $24fe


    ld bc, $4400
    jp Jump_009_6384


    ld e, $44
    ld a, [de]
    rst $00
    or d
    ld h, d
    jp $8f62


    ld h, c
    call $1956
    and $40
    jp nz, $3ad9

    call $239b
    ld hl, $66fd
    jp $24fe


    call $1432
    cp $04
    ret nz

    call $239b
    jp Jump_009_618f


    ld a, [$cc4c]
    cp $42
    jp nz, $3ad9

    ld e, $44
    ld a, [de]
    rst $00
    pop hl
    ld h, d
    ld sp, hl
    ld h, d
    ld c, $63
    ld a, $01
    ld [de], a
    ld a, [$cc4e]
    cp $03
    jp nz, $3ad9

    call $1956
    ld e, $4b
    ld a, [de]
    and [hl]
    jp nz, $3ad9

    jp $1e4b


    ld a, [$cc4e]
    cp $03
    jp nz, $3ad9

    ld e, $4d
    ld a, [de]
    ld l, a
    ld h, $cf
    ld a, $9c
    cp [hl]
    ret nz

    jp $239b


    ld a, [$cc4e]
    cp $03
    ret z

    ld a, [$c4ab]
    or a
    ret z

    call $1956
    ld e, $4b
    ld a, [de]
    or [hl]
    ld [hl], a
    ld e, $4d
    ld a, [de]
    dec a
    ld c, a
    ld a, $09
    call $3a52
    inc c
    ld a, $bc
    call $3a52
    jr jr_009_633d

    call $268f
    ld a, [$cd02]
    or a
    jp nz, $3ad9

jr_009_633d:
    ld a, $4d
    call $0c74
    jp $3ad9


    call $23b9
    jr nz, jr_009_6361

    ld a, $01
    ld [de], a
    ld e, $43
    ld a, [de]
    or a
    jr nz, jr_009_635b

    call $1956
    and $20
    jp nz, $3ad9

jr_009_635b:
    call $2054
    ld [$ccc5], a

jr_009_6361:
    ld a, [$ccc5]
    inc a
    ret nz

    call $3ea7
    ret nz

    ld [hl], $01
    inc l
    ld [hl], $0e
    inc l
    ld [hl], $01
    ld a, [$d008]
    swap a
    rrca
    ld l, $c9
    ld [hl], a
    call $21fd
    jp $3ad9


    ld bc, $2b00

Jump_009_6384:
    call $1956
    and $20
    jr nz, jr_009_638e

    call Call_009_6391

jr_009_638e:
    jp $3ad9


Call_009_6391:
    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    jp $21fd


    call $23b9
    jr nz, jr_009_63bf

    call $268f
    call $1956
    ld e, $4d
    ld a, [de]
    and [hl]
    jp nz, $3ad9

    ld b, $cf
    ld e, $4b
    ld a, [de]
    ld c, a
    ld a, [bc]
    ld e, $43
    ld [de], a
    ld e, $44
    ld a, $01
    ld [de], a

jr_009_63bf:
    ld a, [$cd00]
    and $01
    jp z, $3ad9

    ld e, $43
    ld a, [de]
    ld b, a
    ld e, $4b
    ld a, [de]
    ld l, a
    ld h, $cf
    ld a, b
    cp [hl]
    ret z

    call $1956
    ld e, $4d
    ld a, [de]
    or [hl]
    ld [hl], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    jp hl


    ld h, e
    db $f4
    ld h, e
    adc a
    ld h, c
    call $1956
    and $20
    jp nz, $3ad9

    call $239b
    call $1956
    and $20
    ret z

    ld hl, $cca4
    set 0, [hl]
    ld a, $01
    ld [$cc02], a
    call $239b
    ld hl, $6710
    jp $24fe


    call $1956
    and $20
    jp nz, $3ad9

    ld a, [$ccba]
    or a
    ret z

    ld bc, $2701

Jump_009_641d:
    call $2709
    ret nz

    call $21fd
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    inc sp
    ld h, h
    ld b, a
    ld h, h
    ld c, [hl]
    ld h, h
    ld a, h
    ld h, h

jr_009_6433:
    call $1956
    bit 5, [hl]
    jp nz, $3ad9

    ld h, d
    ld l, $44
    ld [hl], $01
    ld l, $70
    ld b, $06
    jp $044b


    call Call_009_6483
    ret nz

    ld a, $02
    ld [de], a
    call Call_009_6483
    jr nz, jr_009_6433

    ld a, [$ccc6]
    cp $2b
    jr z, jr_009_645d

    cp $2a
    ret nz

jr_009_645d:
    ld h, d
    ld l, $70
    ld a, [$ccc7]
    ld c, a

jr_009_6464:
    ld a, [hl+]
    cp c
    ret z

    or a
    jr nz, jr_009_6464

    dec l
    ld [hl], c
    ld a, l
    cp $73
    jr nc, jr_009_6472

    ret


jr_009_6472:
    ld l, $44
    ld [hl], $03
    ld hl, $66f3
    call $24fe
    call $250c
    jp c, $3ad9

    ret


Call_009_6483:
    ld a, [$cc7e]
    and $0f
    cp $02
    ret


    ld bc, $4a00
    jp Jump_009_6384


    call $268f
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    bit 6, [hl]
    jp nz, $3ad9

    call $1432
    cp $d6
    ret z

    ld a, [$ccc0]
    and $7f
    cp $18
    ld b, $80
    jr z, jr_009_64b4

    ld b, $40

jr_009_64b4:
    call $1956
    or b
    ld [hl], a
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    add $64
    push hl
    ld h, h
    inc bc
    ld h, l
    ld a, $01
    ld [de], a
    ld a, [$c610]
    cp $0c
    jp z, $3ad9

    call $1956
    and $40
    jp nz, $3ad9

    call $3ea7
    ret nz

    ld [hl], $05
    inc l
    ld [hl], $01
    jp $21fd


    ld a, [$cc32]
    or a
    ret z

    ld a, $81
    ld [$cc02], a
    ld [$cca4], a
    ld [$ccab], a
    call $1956
    set 6, [hl]
    call $239b
    ld hl, $4e12
    jp $3d53


    call Call_009_621c
    ret nz

    call $3d5b
    ret nc

    xor a
    ld [$cc02], a
    ld [$cca4], a
    ld [$ccab], a
    jp $3ad9


    ld a, $1d
    call $30c7
    jp nz, $3ad9

    ld a, $1f
    call $30c7
    jp nz, $3ad9

    ld a, $01
    ld [$cca4], a
    ld [$cc02], a
    call $268f
    ld a, $14
    ld [$cc04], a
    xor a
    ld [$d008], a
    call $2b8a
    call $2b57
    jp $3ad9


    ld a, $22
    call $30c7
    ret z

    ld a, $23
    call $30c7
    ret nz

    ld a, $80
    ld [$cc9f], a
    jp $3ad9


    ld h, d
    ld l, $46
    ld a, [hl]
    or a
    jr z, jr_009_6562

    dec [hl]
    ret nz

jr_009_6562:
    call $23b9
    jr nz, jr_009_6570

    call $239b
    ld hl, $4c6a
    jp $3d53


jr_009_6570:
    call $3d5b
    ret nc

    ld hl, $cfc0
    set 7, [hl]
    jp $3ad9


    ld a, $17
    call $30c7
    jp z, $3ad9

    ld b, $5e
    call $24af
    jp $3ad9


    call $23b9
    jr nz, jr_009_659b

    call $1432
    ld h, d
    ld l, $49
    ld [hl], a
    ld l, $44
    inc [hl]

jr_009_659b:
    ld a, $01
    ld [$ccab], a
    call $1432
    ld e, $49
    ld a, [de]
    cp [hl]
    ret z

    xor a
    ld [$ccab], a
    jp $3ad9


    call $23b9
    jr nz, jr_009_65c3

    xor a
    ld [$cc32], a
    call $1956
    and $40
    jp nz, $3ad9

    call $239b

jr_009_65c3:
    ld a, [$cc32]
    or a
    ret z

    call $1956
    set 6, [hl]
    ld a, $4d
    call $0c74
    ld bc, $0047
    ld e, $08
    call Call_009_65e5
    ld bc, $0114
    ld e, $06
    call Call_009_65e5
    jp $3ad9


Call_009_65e5:
    call $3ea7
    ret nz

    ld [hl], $0c
    ld l, $c7
    ld [hl], e
    ld l, $c9
    ld [hl], b
    ld l, $cb
    ld [hl], c
    ret


    call $1956
    and $20
    jp nz, $3ad9

    ld c, $02
    call $17b9
    ld b, c
    ld c, $03
    jp Jump_009_641d


    ld bc, $3404
    jp Jump_009_6384


    ld bc, $3405
    jp Jump_009_6384


    call $23b9
    jr nz, jr_009_6629

    call $1432
    cp $04
    ret nz

    ld a, l
    ld [$ccc5], a
    ld e, $44
    ld a, $01
    ld [de], a
    ret


jr_009_6629:
    call $268f
    call $1432
    cp $04
    ret z

jr_009_6632:
    ld c, l
    ld a, c
    ld [$cca8], a
    ld a, $e7
    call $3a52
    ld a, $4d
    call $0c74
    jp $3ad9


    call $268f
    call $1432
    cp $01
    ret z

    ld a, l
    ld [$ccc5], a
    jr jr_009_6632

    call $23b9
    jr nz, jr_009_6669

    ld a, $01
    ld [de], a
    call $1956
    bit 7, [hl]
    jp nz, $3ad9

    ld hl, $7e96
    jp $3048


jr_009_6669:
    ld a, [$cca9]
    cp $02
    ret nz

    call $1956
    set 7, [hl]
    jp $3ad9


    call $23b9
    jr nz, jr_009_6691

    ld a, $24
    call $30c7
    jp z, $3ad9

    ld a, $24
    call $30d3
    ld h, d
    ld l, $44
    inc [hl]
    ld l, $46
    ld [hl], $3c

jr_009_6691:
    ld a, $01
    ld [$cca4], a
    call $2387
    ret nz

    xor a
    ld [$cc02], a
    ld [$cca4], a
    ld bc, $501b
    call $184b
    jp $3ad9


    ld bc, $3404
    jp Jump_009_6384


    ld bc, $1900
    jp Jump_009_6384


    ld a, [$cc4e]
    or a
    jp nz, $3ad9

    call $1956
    and $20
    jp nz, $3ad9

    ld bc, $4700
    call Call_009_6391
    ld b, h
    ld a, $06
    ld [hl+], a
    ld [hl], a
    call $3ea7
    jp nz, $3ad9

    ld [hl], $17
    ld l, $d6
    ld [hl], $40
    inc l
    ld [hl], b
    jp $3ad9


    call $1956
    and $40
    jp z, $3ad9

    ld bc, $5200
    jp Jump_009_6384


    call $23b9
    jr nz, jr_009_6719

    call $1956
    and $80
    jp nz, $3ad9

    ld hl, $ccba
    ld a, [hl]
    cp $04
    jr nz, jr_009_6706

    set 7, [hl]

jr_009_6706:
    cp $85
    jr nz, jr_009_670c

    set 6, [hl]

jr_009_670c:
    and $07
    cp $07
    ret nz

    ld a, $1e
    ld e, $46
    ld [de], a
    jp $239b


jr_009_6719:
    call $2387
    ret nz

    ld a, [$ccba]
    bit 6, a
    ld b, $5a
    jr z, jr_009_6737

    ld c, $5c
    ld a, $05
    call $3a52
    call $24ad
    call $1956
    set 7, [hl]
    ld b, $4d

jr_009_6737:
    ld a, b
    call $0c74
    jp $3ad9


    ld a, [$cc31]
    and $0f
    cp $0e
    ld a, $01
    jr z, jr_009_674a

    dec a

jr_009_674a:
    ld [$ccba], a
    ret


    call $23b9
    jr nz, jr_009_675f

    ld a, [$cc30]
    or a
    ret nz

    call $239b
    ld l, $46
    ld [hl], $3c

jr_009_675f:
    call $2387
    ret nz

    call $24ad
    call $2054
    ld c, a
    ld a, $44
    call $3a52
    xor a
    ld [$cbca], a
    jp $3ad9


    call $23b9
    jp nz, $250c

    ld hl, $6662
    call $24fe
    jp $239b


    ld e, $42
    ld a, [de]
    rst $00
    sub a
    ld h, a
    ld [hl], c
    ld l, b
    ld e, $42
    ld a, [de]
    rst $00
    dec a
    ld l, c
    ld d, h
    ld l, d
    ld d, h
    ld l, d
    ld e, $45
    ld a, [de]
    rst $00
    sbc a
    ld h, a
    ld d, $68
    ld a, $01
    ld [de], a
    ld a, $40
    call $1717
    and $01
    jp z, $3ad9

    call $1956
    bit 7, a
    jp nz, $3ad9

    call $26ac
    call $1e4b
    ld a, $01
    ld [$cca4], a
    ld [$cc02], a
    ld e, $79
    ld a, [$cc4c]
    ld [de], a
    xor a
    ld [$cc51], a
    ld a, $0b
    call $0c74

Jump_009_67d1:
    ld a, $80
    ld [$cc9f], a
    ld a, $01
    ld [$ccab], a
    ld bc, $016c
    call Call_009_699c
    ld e, a
    ld bc, $67f1
    call $007e
    call Call_009_69ac
    ld a, e
    cp $04
    jr z, jr_009_680c

    ret


    jr z, jr_009_6843

    ld e, b
    ld l, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b

jr_009_67fb:
    ld a, [$cc4c]
    cp $cb
    jp z, $3ad9

    ld a, [$cc62]
    ld [$cc51], a
    call $0c74

jr_009_680c:
    xor a
    ld [$cc9f], a
    ld [$ccab], a
    jp $3ad9


    ld e, $78
    ld a, [de]
    rst $00
    ld e, $68
    ld sp, $fa68
    ld c, h
    call z, $cbfe
    jr nz, jr_009_67fb

    ld a, [$cc9e]
    cp $02
    ret nz

    ld e, $78
    ld a, $01
    ld [de], a
    ret


    ld a, [$cfc0]
    or a
    jr z, jr_009_6840

    ld e, $7a
    ld a, $01
    ld [de], a
    xor a
    ld [$ccab], a

jr_009_6840:
    ld e, $79
    ld a, [de]

jr_009_6843:
    ld b, a
    ld a, [$cc4c]
    cp b
    ret z

    ld [de], a
    cp $cb
    jr z, jr_009_67fb

    ld e, $7a
    ld a, [de]
    or a
    jr z, jr_009_67fb

    xor a
    ld [de], a
    ld h, d
    ld l, $46
    inc [hl]
    ld a, [hl]
    ld bc, $686c
    call $006d
    ld a, [bc]
    ld b, a
    ld a, [$cc4c]
    cp b
    jr nz, jr_009_67fb

    jp Jump_009_67d1


    res 7, e
    xor e
    sbc e
    sbc d
    ld e, $45
    ld a, [de]
    rst $00
    add c
    ld l, b
    sbc h
    ld l, b
    and a
    ld l, b
    cp c
    ld l, b
    rst $00
    ld l, b
    ret c

    ld l, b
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $43
    ld a, [de]
    ld hl, $6931
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $6d
    ld a, $08
    ld [de], a
    call $1e03
    call $250c
    jp c, $3ad9

Call_009_68a2:
    ld c, $20
    jp $1f04


    call $250c
    jp c, $3ad9

    ld c, $20
    call $1f04
    ret nz

    ld bc, $fe40
    jp $2358


jr_009_68b9:
    call $25b8
    call Call_009_68a2
    ret nz

    call $250c
    jp c, $3ad9

    ret


    ld e, $7b
    ld a, [de]
    inc a
    jr z, jr_009_68cf

    jr jr_009_68b9

jr_009_68cf:
    ld hl, $6771
    call $24fe
    jp $250c


    call $25b8
    call Call_009_68a2
    ret nz

    ld a, $09
    call $2066
    ld c, a
    ld b, $ce
    ld a, [bc]
    cp $ff
    jr z, jr_009_68ef

    or a
    jr nz, jr_009_68f3

jr_009_68ef:
    ld a, $10
    jr jr_009_6919

jr_009_68f3:
    ld e, $6d
    ld a, [de]
    ldh [$8b], a
    ld e, $49
    ld [de], a
    call $26a3
    xor $02
    sub $02
    add c
    ld c, a
    ld a, [bc]
    or a
    ldh a, [$8b]
    jr z, jr_009_6919

    ld e, $6d
    ld a, [de]
    cp $08
    jr z, jr_009_6916

    ld a, $08
    ld [de], a
    jr jr_009_6919

jr_009_6916:
    ld a, $18
    ld [de], a

jr_009_6919:
    ld e, $49
    ld [de], a
    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $90
    jr nc, jr_009_6927

    ret


jr_009_6927:
    xor a
    ld [$cca4], a
    ld [$ccab], a
    jp $3ad9


    rla
    ld h, a
    dec l
    ld h, a
    ld b, c
    ld h, a
    ld d, l
    ld h, a
    ld l, l
    ld h, a
    ld [hl], c
    ld h, a
    ld e, $44
    ld a, [de]
    rst $00
    ld c, c
    ld l, c
    or l
    ld l, c
    call nc, $3369
    ld l, d
    ld a, $01
    ld [de], a
    ld a, $10
    call $30c7
    jp nz, $3ad9

    ld e, $40
    ld a, $83
    ld [de], a
    ld a, [$cc4c]
    ld [$cfd1], a
    ld a, $10
    call $30cd

Jump_009_6964:
    ld a, $01
    ld [$ccab], a
    ld bc, $016d
    call Call_009_699c
    ld bc, $026d
    call Call_009_699c
    ld a, $17
    call $1717
    ld a, $01
    jr nc, jr_009_6983

    call $041a
    and $01

jr_009_6983:
    ld [$cfd0], a
    ld e, $46
    ld a, [de]
    cp $06
    jp z, Jump_009_6995

    ret


Jump_009_698f:
jr_009_698f:
    ld a, [$cc51]
    call $0c74

Jump_009_6995:
    xor a
    ld [$cc9e], a
    jp $3ad9


Call_009_699c:
    call $3ac6
    dec l
    set 7, [hl]
    inc l
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld e, $46
    ld a, [de]
    ld [hl], a
    ret


Call_009_69ac:
    ld l, $4b
    ld a, [bc]
    ld [hl+], a
    inc l
    inc bc
    ld a, [bc]
    ld [hl], a
    ret


    ld a, [$cd00]
    and $01
    ret z

    ld a, [$cc9e]
    cp $02
    ret nz

    xor a
    ld [$cfc0], a
    ld e, $44
    ld a, $02
    ld [de], a
    ld a, $11
    call $30d3
    ld a, $0b
    jp $0c74


    ld a, [$cfc0]
    cp $ff
    jr z, jr_009_6a23

    and $03
    cp $03
    jr nz, jr_009_69eb

    ld e, $7a
    ld [de], a
    xor a
    ld [$ccab], a
    ld [$cfc0], a

jr_009_69eb:
    ld a, [$cc4c]
    ld b, a
    ld a, [$cfd1]
    cp b
    ret z

    ld a, b
    ld [$cfd1], a
    cp $51
    jr z, jr_009_698f

    ld e, $7a
    ld a, [de]
    cp $03
    jr nz, jr_009_698f

    xor a
    ld [de], a
    ld h, d
    ld l, $46
    inc [hl]
    ld a, [hl]
    ld bc, $6a1c
    call $006d
    ld a, [bc]
    ld b, a
    ld a, [$cc4c]
    cp b
    jp nz, Jump_009_698f

    jp Jump_009_6964


    ld d, c
    ld h, c
    ld [hl], c
    ld [hl], b
    ld h, b
    ld d, b
    ld h, b

jr_009_6a23:
    ld e, $44
    ld a, $03
    ld [de], a
    ld a, $01
    ld [$cc02], a
    ld bc, $2804
    jp $184b


    ld a, [$cfc0]
    or a
    ret nz

    ld a, $11
    call $30cd
    ld a, $10
    call $30d3
    xor a
    ld [$ccab], a
    ld hl, $6a4f
    call $1970
    jp $3ad9


    add c
    ld d, c
    nop
    jr z, jr_009_6a57

    ld e, $44
    ld a, [de]

jr_009_6a57:
    rst $00
    ld e, [hl]
    ld l, d
    or d
    ld l, d
    rst $38
    ld l, d
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $50
    ld a, $28
    ld [de], a
    ld e, $42
    ld a, [de]
    ld b, a
    dec a
    ld a, $02
    jr z, jr_009_6a73

    dec a

jr_009_6a73:
    ld e, $5c
    ld [de], a
    ld a, b
    dec a
    ld hl, $6a92
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $43
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    call $250c
    call $250c
    jp $1e03


    sub [hl]
    ld l, d
    and h
    ld l, d
    and c
    ld h, a
    db $fd
    ld h, a
    ld d, c
    ld l, b
    sbc d
    ld l, b
    call c, $2668
    ld l, c
    ld l, [hl]
    ld l, c
    sub b
    ld l, c
    xor a
    ld l, c
    cp [hl]
    ld l, c
    call $dc69
    ld l, c
    db $eb
    ld l, c
    ld a, [$fa69]
    and a
    call z, $20b7
    dec h
    ld e, $7b
    ld a, [de]
    or a
    jr nz, jr_009_6add

    ld a, [$cfc0]
    cp $ff
    jr z, jr_009_6add

    call $25b8
    call $25b8
    call $250c
    jp c, $3ad9

Call_009_6ad1:
    ld c, $60
    call $1f04
    ret nz

    ld bc, $fe00
    jp $2358


jr_009_6add:
    ld a, $ff
    ld [$cfc0], a
    ld a, $01
    ld [$cca4], a
    ld h, d
    ld l, $44
    inc [hl]
    ld l, $50
    ld [hl], $64
    call $1e5a
    add $10
    and $1f
    ld e, $49
    ld [de], a
    call $26a3
    jp $25cb


    call $25b8
    call $25b8
    call Call_009_6ad1
    call $1832
    call $1fdb
    call $2142
    ret c

    call $1e39
    ld h, d
    ld l, $44
    inc [hl]
    jr jr_009_6b1b

jr_009_6b1b:
    xor a
    ld [$cfc0], a
    jp $3ad9


    ld e, $42
    ld a, [de]
    rst $00
    inc l
    ld l, e
    cp d
    ld l, e
    jr z, jr_009_6b98

    ld e, $44
    ld a, [de]
    rst $00
    ld [hl], $6b
    ld e, c
    ld l, e
    adc c
    ld l, e
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $17
    call $1702
    ld bc, $fd80
    call $2358
    ld l, $50
    ld [hl], $0f
    ld l, $49
    ld [hl], $18
    ld l, $46
    ld [hl], $3c
    call $26ac
    jp $1df1


    call $1fdb
    ld h, d
    ld l, $4d
    ld a, $18
    cp [hl]
    jr c, jr_009_6b65

    ld [hl], a

jr_009_6b65:
    call $25b8
    ld c, $14
    call $1f04
    call $2387
    ret nz

    ld l, $4f
    ld a, [hl]
    ld l, $52
    ld [hl], a
    ld l, $44
    inc [hl]
    ld l, $4d
    ld a, [hl]
    ld [$cfc1], a
    ld hl, $cfc0
    set 2, [hl]
    xor a
    call $25cb
    ld hl, $cfc0
    bit 7, [hl]
    jp nz, $3ad9

    ld a, [$cc00]
    and $03
    ret nz

    ld h, d

jr_009_6b98:
    ld l, $46
    inc [hl]
    ld a, [hl]
    and $0f
    ld hl, $6baa
    rst $10
    ld e, $52
    ld a, [de]
    add [hl]
    ld e, $4f
    ld [de], a
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
    ld e, $44
    ld a, [de]
    rst $00
    call nz, $0c6b
    dec h
    push de
    ld l, e
    ld a, $01
    ld [de], a
    call $1956
    bit 6, [hl]
    jp nz, $3ad9

    ld hl, $6a28
    jp $24fe


    ld e, $45
    ld a, [de]
    rst $00
    db $dd
    ld l, e
    pop af
    ld l, e
    ld a, $01
    ld [de], a
    ld bc, $fe00
    call $2358
    ld l, $4b
    ld a, [$d00b]
    ld [hl+], a
    inc l
    ld a, [$d00d]
    ld [hl], a
    ld a, [$cc00]
    rrca
    call c, Call_009_6c19
    call $1fdb
    ld e, $4b
    ld a, [de]
    cp $08
    jr nc, jr_009_6c07

    ld e, $49
    ld a, $0c
    ld [de], a

jr_009_6c07:
    ld c, $40
    call $232b
    jr nc, jr_009_6c22

    call Call_009_6c22
    ld a, $02
    ld [$cc6b], a
    jp $3ad9


Call_009_6c19:
    ld hl, $d008
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ret


Call_009_6c22:
jr_009_6c22:
    ld hl, $d000
    jp $21fd


    ld a, $0f
    call $30d3
    ld a, $10
    call $30d3
    ld a, $11
    call $30d3
    jp $3ad9


    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_009_6c69

    call $23b9
    jr nz, jr_009_6c5e

    ld a, $01
    ld [de], a
    ld a, [$cc66]
    cp $04
    ld hl, $6a56
    jr z, jr_009_6c55

    ld hl, $6a61

jr_009_6c55:
    call $24fe
    call $15e9
    jp $1e03


jr_009_6c5e:
    call $250c
    ld c, $0e
    call $1f04
    jp $2646


jr_009_6c69:
    call $268f
    call $2697
    ld a, $d9
    call $15ba
    jr nz, jr_009_6c84

    ld b, $00

jr_009_6c78:
    inc b
    dec l
    call $15be
    jr z, jr_009_6c78

    ld a, b
    cp $04
    jr z, jr_009_6c89

jr_009_6c84:
    ld a, $25
    jp $30cd


jr_009_6c89:
    ld a, $25
    jp $30d3


    ld a, [$cc34]
    or a
    jr z, jr_009_6c9b

    xor a
    ld [$cca4], a
    jp $3ad9


jr_009_6c9b:
    ld e, $42
    ld a, [de]
    rst $00
    or e
    ld l, h
    db $eb
    ld l, h
    ld b, b
    ld l, l
    daa
    ld l, [hl]
    ret nc

    ld l, [hl]
    ld hl, sp+$6e
    add l
    ld l, l
    rla
    ld l, a
    ld [hl+], a
    ld l, a
    ld l, l
    ld l, a
    ld e, $44
    ld a, [de]
    rst $00
    cp e
    ld l, h
    ld [hl], $6d
    ld a, $01
    ld [de], a
    ld a, [$cc48]
    and $01
    jr z, jr_009_6d3d

    ld a, [$d101]
    cp $0b
    jr nz, jr_009_6d3d

    ld a, [$c610]
    cp $0b
    jp z, $3ad9

    ld a, $0a
    ld hl, $d104
    ld [hl+], a
    ld l, $03
    ld a, $02
    ld [hl], a
    ld l, $30
    ld a, [hl]
    ld l, $3f
    ld [hl], a
    ld hl, $6ba9
    jp $24fe


    ld e, $44
    ld a, [de]
    rst $00
    rst $30
    ld l, h
    ld [hl], $6d
    ld d, c
    ld l, [hl]
    xor a
    ld l, [hl]
    ld a, [$d101]
    cp $0d
    jr nz, jr_009_6d3d

    ld a, [$c610]
    cp $0d
    jr nz, jr_009_6d3d

    ld a, $01
    ld [de], a
    ld e, $79
    ld a, $0d
    ld [de], a
    call Call_009_6f85
    ld e, $42
    ld a, $01
    ld [de], a
    ld a, $1c
    ld e, $4b
    ld [de], a
    ld a, $2c
    ld e, $4d
    ld [de], a
    ld hl, $6a80
    call $24fe
    ld a, [$c645]
    bit 5, a
    jr nz, jr_009_6d3d

    or a
    ld a, $01
    ld [$ccf4], a
    ret nz

    jp $2686


Jump_009_6d36:
    call $250c
    ret nc

    call $17b1

jr_009_6d3d:
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld c, b
    ld l, l
    ld a, a
    ld l, l
    ld a, $01
    ld [de], a
    ld a, [$cc48]
    and $01
    jr z, jr_009_6d3d

    ld a, [$d101]
    cp $0b
    jr z, jr_009_6d72

    cp $0d
    jr nz, jr_009_6d3d

    ld a, $0a
    ld hl, $d104
    ld [hl+], a
    ld l, $03
    ld a, $08
    ld [hl], a
    ld l, $3f
    ld [hl], $14
    ld hl, $6c6a
    jp $24fe


jr_009_6d72:
    ld hl, $d104
    ld a, $0a
    ld [hl+], a
    ld l, $03
    ld a, $09
    ld [hl], a
    jr jr_009_6d3d

    call $250c
    jr c, jr_009_6d3d

    ret


    ld e, $44
    ld a, [de]
    rst $00
    adc a
    ld l, l
    or h
    ld l, l
    db $ec
    ld l, l
    ld a, [$c645]
    and $80
    jr nz, jr_009_6d3d

    ld a, $01
    ld [de], a
    ld a, $1c
    ld e, $4b
    ld [de], a
    ld a, $2c
    ld e, $4d
    ld [de], a
    ld a, $47
    call $1717
    ld a, $00
    rla
    ld e, $78
    ld [de], a
    ld hl, $6ca3
    jp $24fe


    ld a, [$d13d]
    or a
    jr z, jr_009_6de9

    ld e, $78
    ld a, [de]
    or a
    jr z, jr_009_6de9

    ld e, $7a
    ld a, [de]
    or a
    jr nz, jr_009_6de9

    inc a
    ld [de], a
    ld [$cc02], a
    ld hl, $d000
    call $222f
    ld a, [$d10b]
    ld b, a
    ld a, [$d10d]
    ld c, a
    call $1e62
    ld e, $49
    ld [de], a
    ld a, $02
    ld [$d108], a
    add $01
    ld [$d13f], a

jr_009_6de9:
    jp Jump_009_6d36


    ld h, d
    ld l, $5a
    bit 7, [hl]
    jr nz, jr_009_6e0d

    ld l, $50
    ld [hl], $32
    ld bc, $fec0
    call $2358
    call $1e15
    call Call_009_6f85
    ld a, $06
    ld e, $42
    ld [de], a
    ld e, $46
    ld a, $10
    ld [de], a

jr_009_6e0d:
    call $1832
    ld c, $40
    call $1f04
    jp nz, $1fdb

    call $2387
    ret nz

    ld l, $44
    dec [hl]
    ld a, $47
    call $1702
    jp $1e39


    ld e, $44
    ld a, [de]
    rst $00
    inc sp
    ld l, [hl]
    ld [hl], $6d
    ld c, h
    ld l, [hl]
    xor a
    ld l, [hl]
    ld a, [$c643]
    and $80
    jp nz, Jump_009_6f1f

    ld a, $01
    ld [de], a
    ld e, $79
    ld a, $0b
    ld [de], a
    call $26ac
    ld hl, $6b26
    jp $24fe


    ld a, $48
    call $1702
    ld a, $01
    ld [$cc02], a
    call $239b
    ld e, $79
    ld a, [de]
    ld c, a
    cp $0d
    jr z, jr_009_6e67

    ld hl, $c638
    rst $10
    set 7, [hl]

jr_009_6e67:
    ld a, c
    ld hl, $c610
    cp [hl]
    ret nz

    sub $0a
    ld l, $af
    ld [hl], a
    ld a, [de]
    ld c, a
    ld a, $0e
    call $16eb
    ld hl, $cbea
    set 0, [hl]
    ld e, $42
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, $03
    ld [de], a
    ld e, $79
    ld a, [de]
    sub $0a
    ld c, a
    and $01
    add a
    xor c
    ld e, $5c
    ld [de], a
    ld hl, $cc6a
    ld a, $04
    ld [hl+], a
    ld [hl], $01
    ld hl, $d000
    ld bc, $f200
    call $2232
    call $1e15
    jp $250c


    call $1832
    ld [$cca4], a
    call $1e39
    ld a, [$cc48]
    and $0f
    add a
    swap a
    ld [$cca4], a
    call $250c
    ret nc

    xor a
    ld [$cca4], a
    ld [$cc02], a
    jr jr_009_6f1f

    ld e, $44
    ld a, [de]
    rst $00
    call c, $366e
    ld l, l
    ld d, c
    ld l, [hl]
    xor a
    ld l, [hl]
    ld a, [$c644]
    and $80
    jr nz, jr_009_6f1f

    ld a, [$c610]
    cp $0c
    jr nz, jr_009_6f1f

    ld a, $01
    ld [de], a
    ld e, $79
    ld a, $0c
    ld [de], a
    ld hl, $6c0a
    jp $24fe


    ld e, $44
    ld a, [de]
    rst $00
    nop
    ld l, a
    ld [hl], $6d
    ld a, [$c644]
    and $80
    jr nz, jr_009_6f1f

    ld a, [$c610]
    cp $0c
    jr z, jr_009_6f1f

    ld a, $01
    ld [de], a
    ld hl, $6c51
    jp $24fe


    ld a, [$c644]
    or $20
    ld [$c644], a

Jump_009_6f1f:
jr_009_6f1f:
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    ld a, [hl+]
    ld l, a
    dec sp
    ld l, a
    ld a, $01
    ld [de], a
    ld a, [$d101]
    cp $0c
    jr nz, jr_009_6f1f

    ld a, [$c610]
    cp $0c
    jr z, jr_009_6f1f

    ld a, [$cd00]
    and $0e
    ret nz

    ld hl, $d10b
    ld a, [hl+]
    cp $50
    ret nc

    cp $30
    ret c

    inc l
    ld a, [hl]
    cp $10
    ret nc

    ld a, $10
    ld [hl], a
    ld l, $04
    ld a, [hl]
    cp $08
    jr z, jr_009_6f63

    cp $02
    jr nz, jr_009_6f63

    ld [hl], $01
    call $2b8a

jr_009_6f63:
    ld l, $04
    ld [hl], $0d
    ld bc, $211e
    jp $184b


    ld h, $c6
    call $196b
    jr nz, jr_009_6f7f

    ld a, $0e
    call $1717
    jr c, jr_009_6f7f

    ld l, $10
    ld [hl], $0b

jr_009_6f7f:
    ld l, $43
    set 5, [hl]
    jr jr_009_6f1f

Call_009_6f85:
    ld e, $42
    xor a
    ld [de], a
    jp $15e9


    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_009_6fe6

    ld e, $44
    ld a, [de]
    rst $00
    sbc h
    ld l, a
    pop de
    ld l, a
    reti


    ld a, [hl-]
    call $239b
    ld a, [$cced]
    cp $00
    jr z, jr_009_6fae

    cp $01
    jr z, jr_009_6fc3

    cp $03
    jr z, jr_009_6fae

jr_009_6fae:
    ld l, $78
    ld [hl], $01
    ld l, $77
    ld [hl], $02
    ld a, $06
    call $248d
    call Call_009_7055
    call $15e9
    jr jr_009_6fdd

jr_009_6fc3:
    ld l, $78
    ld [hl], $00
    call $15e9
    ld a, $01
    jp $25cb


    jr jr_009_6fe0

    ld e, $78
    ld a, [de]
    or a
    jr z, jr_009_6fe0

    call Call_009_7036
    call Call_009_704f

jr_009_6fdd:
    call $25b8

jr_009_6fe0:
    call $261d
    jp $229b


jr_009_6fe6:
    ld e, $44
    ld a, [de]
    rst $00
    xor $6f
    db $fc
    ld l, a
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $04
    call $25cb
    jp $1dfa


    ld e, $45
    ld a, [de]
    rst $00
    ld b, $70
    inc e
    ld [hl], b
    add hl, hl
    ld [hl], b
    ld a, [$cbb5]
    or a
    jr z, jr_009_7029

    ld h, d
    ld l, $45
    inc [hl]
    ld l, $60
    ld [hl], $01
    xor a
    ld l, $4e
    ld [hl+], a
    ld [hl], a
    jp $25b8


    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jr z, jr_009_7026

    ld l, $45
    inc [hl]

jr_009_7026:
    jp $25b8


jr_009_7029:
    ld c, $20
    call $1f04
    ret nz

    ld h, d
    ld bc, $ff40
    jp $2358


Call_009_7036:
    ld a, [$cc00]
    and $07
    ret nz

    call $1e5a
    add $04
    and $18
    swap a
    rlca
    ld h, d
    ld l, $77
    cp [hl]
    ret z

    ld [hl], a
    jp $25cb


Call_009_704f:
    ld c, $0e
    call $1f04
    ret nz

Call_009_7055:
    ld e, $54
    ld a, $80
    ld [de], a
    inc e
    ld a, $ff
    ld [de], a
    ret


    ld h, d
    ld l, $42
    ld a, [hl+]
    or a
    jr nz, jr_009_7078

    inc l
    ld a, [hl]
    or a
    jr z, jr_009_7078

    ld a, [$cd00]
    and $0e
    jr z, jr_009_7078

    ld a, $3c
    ld [$cc85], a
    ret


jr_009_7078:
    ld e, $44
    ld a, [$c610]
    cp $0b
    or a
    jr z, jr_009_70fd

    cp $0d
    jr z, jr_009_708e

    ld a, [de]
    rst $00
    sub h
    ld [hl], b
    nop
    ld [hl], c
    ld c, b
    ld [hl], c

jr_009_708e:
    ld a, [de]
    rst $00
    sub h
    ld [hl], b
    ld d, a
    ld [hl], c
    ld a, $01
    ld [de], a
    call $15e9
    ld hl, $d101
    ld a, [$c610]
    cp $0d
    jr z, jr_009_70c1

    cp $0c
    jr nz, jr_009_70fd

    cp [hl]
    jr nz, jr_009_70fd

    ld a, [$c644]
    and $88
    jr nz, jr_009_70fd

    call Call_009_71ac
    ld hl, $71cd
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    jr jr_009_70f3

jr_009_70c1:
    cp [hl]
    jr nz, jr_009_70fd

    ld a, [$c645]
    bit 5, a
    jr nz, jr_009_70fd

    bit 7, a
    jr nz, jr_009_70fd

    bit 2, a
    jr nz, jr_009_70fd

    and $03
    jr z, jr_009_70e6

    ld h, d
    ld l, $42
    ld a, [hl]
    or a
    jr nz, jr_009_70e6

    ld l, $4b
    ld [hl], $28
    ld l, $4d
    ld [hl], $a8

jr_009_70e6:
    call Call_009_71ac
    ld hl, $71d9
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe

jr_009_70f3:
    call $2686
    call $2142
    ret c

    jp $1e39


jr_009_70fd:
    jp $3ad9


    call $2686
    ld e, $42
    ld a, [de]
    and $1f
    call z, Call_009_7183
    ld a, [$c644]
    and $08
    jr nz, jr_009_7131

    ld a, [$c4ab]
    or a
    ret nz

    call Call_009_71c0
    ld e, $71
    ld a, [de]
    or a
    jr z, jr_009_712e

    call $1e5a
    ld e, $49
    ld [de], a
    call $26a3
    dec e
    ld [de], a
    call $25cb

jr_009_712e:
    jp $250c


jr_009_7131:
    ld a, $01
    ld [$cca4], a
    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $71d3
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $24fe


    call Call_009_71c0
    call $25b8
    call $229b
    call $250c
    ret nc

jr_009_7155:
    jr jr_009_70fd

    call $25b8
    call $229b
    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cc30]
    or a
    jr z, jr_009_716a

    ld a, $01

jr_009_716a:
    ld e, $7b
    ld [de], a
    call Call_009_71c0
    call $2142
    jr nc, jr_009_717a

    call $1e42
    jr jr_009_717d

jr_009_717a:
    call $1e39

jr_009_717d:
    call $250c
    jr c, jr_009_7155

    ret


Call_009_7183:
    xor a
    ld e, $78
    ld [de], a
    inc e
    ld [de], a
    ld a, $07
    call $1739
    jr nz, jr_009_71a1

    ld e, $78
    ld a, $01
    ld [de], a
    ld a, $0b
    call $1739
    jr nz, jr_009_71a1

    ld e, $79
    ld a, $01
    ld [de], a

jr_009_71a1:
    ld h, d
    ld l, $7a
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    jp $1751


Call_009_71ac:
    call $26ac
    ld l, $66
    ld a, $06
    ld [hl+], a
    ld a, $06
    ld [hl], a
    ld l, $50
    ld a, $32
    ld [hl], a
    ld e, $42
    ld a, [de]
    ret


Call_009_71c0:
    ld c, $40
    call $1f04
    jr z, jr_009_71c9

    ld a, $01

jr_009_71c9:
    ld e, $77
    ld [de], a
    ret


    db $e3
    ld l, h
    ld d, [hl]
    ld l, l
    ld a, h
    ld l, l
    and e
    ld l, l
    or l
    ld l, l
    db $db
    ld l, l
    nop
    ld l, [hl]
    xor l
    ld l, [hl]
    or $6e
    inc hl
    ld l, a
    scf
    ld l, a
    dec a
    ld l, a
    ld e, $42
    ld a, [de]
    rst $00
    inc bc
    ld [hl], d
    inc bc
    ld [hl], d
    inc sp
    ld [hl], d
    inc bc
    ld [hl], d
    ld b, h
    ld [hl], d
    inc bc
    ld [hl], d
    ld a, l
    ld [hl], d
    ld b, h
    ld [hl], d
    inc bc
    ld [hl], d
    inc bc
    ld [hl], d
    ld a, l
    ld [hl], d
    ld a, l
    ld [hl], d
    adc b
    ld [hl], d
    call Call_009_7283
    jr nz, jr_009_7218

Call_009_7208:
Jump_009_7208:
jr_009_7208:
    ld e, $44
    ld a, $01
    ld [de], a
    ld a, $57
    call $04e7
    call $15e9
    jp $1e15


jr_009_7218:
    ld e, $42
    ld a, [de]
    ld hl, $7229
    rst $10
    ld a, [$cbbf]
    add [hl]
    ld e, $4b
    ld [de], a
    jp $25b8


    add sp, $58
    nop
    ldh [rP1], a
    stop
    nop
    db $10
    db $10
    call Call_009_7283
    ret nz

    ld a, $17
    call $30c7
    jp nz, $3ad9

    call Call_009_725b
    jr jr_009_7208

    call Call_009_7283
    jp nz, $25b8

    ld a, $17
    call $30c7
    jp z, $3ad9

    call Call_009_7208
    ld e, $42
    ld a, [de]
    cp $04
    ret nz

Call_009_725b:
    ld bc, $30e8
    ld e, $0a
    call Call_009_7268
    ld bc, $3018
    ld e, $0b

Call_009_7268:
    call $3ac6
    ret nz

    ld [hl], $74
    inc l
    ld [hl], e
    ld e, $4b
    ld a, [de]
    add b
    ld l, e
    ld [hl], a
    ld e, $4d
    ld a, [de]
    add c
    ld l, e
    ld [hl], a
    ret


    call Call_009_7283
    ret nz

    jr jr_009_7208

Call_009_7283:
    ld e, $44
    ld a, [de]
    or a
    ret


    call Call_009_7283
    jp nz, $25b8

    ld a, $16
    call $30c7
    jp nz, $3ad9

    jp Jump_009_7208


    ld e, $44
    ld a, [de]
    rst $00
    and c
    ld [hl], d
    sub $72
    call $239b
    call $15e9
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_009_72b6

    ld hl, $6f48
    call $24fe
    jp $1e27


jr_009_72b6:
    ld h, d
    ld l, $4b
    ld [hl], $70
    inc l
    inc l
    ld [hl], $80
    ld l, $49
    ld [hl], $18
    ld l, $50
    ld [hl], $05
    ld l, $42
    ld a, [hl]
    cp $02
    jp z, $1e30

    ld l, $46
    ld [hl], $05
    jp $1e27


    ld e, $42
    ld a, [de]
    rst $00
    ldh [$72], a
    rst $38
    ld [hl], d
    dec e
    ld [hl], e
    call $250c
    jp c, $3ad9

    call $25b8
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    dec a
    add $30
    push de
    call $0602
    ld a, $0c
    call $05b6
    pop de
    ret


    call $23be
    jr nz, jr_009_731d

    call $25b8
    ld h, d
    ld l, $61
    ld a, [hl]
    or a
    jr z, jr_009_731d

    ld [hl], $00
    ld l, $46
    dec [hl]
    jr nz, jr_009_731d

    ld l, $45
    inc [hl]
    ld a, $04
    call $25cb

jr_009_731d:
    ld hl, $cbb6
    ld a, [hl]
    or a
    ret z

    jp $1fdb


    ld e, $44
    ld a, [de]
    rst $00
    ld [hl-], a
    ld [hl], e
    ld sp, hl
    ld [hl], e
    cp l
    ld [hl], e
    xor $73
    ld a, $01
    ld [de], a
    ld a, $28
    call $30c7
    jp nz, Jump_009_73eb

    ld a, [$c644]
    and $40
    jr z, jr_009_7375

    ld a, $03
    ld [de], a
    call Call_009_745b
    ld e, $42
    ld a, [de]
    and $1f
    ld e, $42
    ld a, [de]
    and $1f
    ld c, a
    ld hl, $748f
    rst JumpTable
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    ld e, $4d
    ld a, [hl+]
    ld [de], a
    ld a, c
    ld hl, $7483
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld a, c
    ld hl, $7495
    rst $10
    ld a, [hl]
    jp $25cb


jr_009_7375:
    ld hl, $d101
    ld a, [hl]
    cp $0c
    jr nz, jr_009_73eb

    ld a, [$c610]
    cp $0c
    jr z, jr_009_73eb

    ld a, [$c644]
    bit 5, a
    jr z, jr_009_73eb

    bit 4, a
    jr nz, jr_009_73eb

    call Call_009_745b
    ld e, $42
    ld a, [de]
    and $1f
    ld c, a
    ld hl, $7489
    rst JumpTable
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    ld e, $4d
    ld a, [hl+]
    ld [de], a
    ld a, c
    ld hl, $7477
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    ld e, $42
    ld a, [de]
    and $1f
    call z, Call_009_743e
    ld a, $78
    ld [$cc85], a
    ret


    ld c, $40
    call $1f04
    jr z, jr_009_73c6

    ld a, $01

jr_009_73c6:
    ld e, $77
    ld [de], a
    call $25b8
    call $229b
    call $250c
    ld e, $4b
    ld a, [de]
    bit 7, a
    ret z

    ld e, $42
    ld a, [de]
    and $1f
    cp $01
    jr nz, jr_009_73eb

    xor a
    ld [$cba0], a
    ld [$cca4], a
    ld [$cc02], a

Jump_009_73eb:
jr_009_73eb:
    jp $3ad9


    ld a, [$cd00]
    and $0e
    ret nz

    call $2686
    jr jr_009_7411

    ld a, [$cd00]
    and $0e
    ret nz

    call $2686
    ld e, $42
    ld a, [de]
    and $1f
    call z, Call_009_743e
    ld a, [$c644]
    and $08
    jr nz, jr_009_742a

jr_009_7411:
    ld a, [$c4ab]
    or a
    ret nz

    ld c, $40
    call $1f04
    jr z, jr_009_7424

    ld a, $c0
    ld e, $5a
    ld [de], a
    ld a, $01

jr_009_7424:
    ld e, $77
    ld [de], a
    jp $250c


jr_009_742a:
    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $42
    ld a, [de]
    and $1f
    ld hl, $747d
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $24fe


Call_009_743e:
    xor a
    ld e, $78
    ld [de], a
    ld hl, $c6aa
    ld a, [hl]
    or a
    jr z, jr_009_744e

    ld a, $01
    ld e, $78
    ld [de], a

jr_009_744e:
    ld e, $79
    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    xor a
    ld [hl], a
    call $17b1
    ret


Call_009_745b:
    call $15e9
    call $26ac
    call $2686
    ld h, d
    ld l, $66
    ld a, $06
    ld [hl+], a
    ld a, $06
    ld [hl], a
    ld l, $50
    ld a, $32
    ld [hl], a
    ld a, $21
    jp $24f5


    ld e, h
    ld l, a
    and [hl]
    ld l, a
    call z, $f46f
    ld l, a
    ld bc, $1370
    ld [hl], b
    inc l
    ld [hl], b
    inc [hl]
    ld [hl], b
    inc a
    ld [hl], b
    jr c, jr_009_74e3

    jr c, jr_009_74f5

    jr z, @+$4a

    jr c, jr_009_74d9

    jr c, jr_009_74eb

    ld e, b
    ld c, b
    ld [bc], a
    ld [bc], a
    nop
    ld e, $44
    ld a, [de]
    rst $00
    and b
    ld [hl], h
    or [hl]
    ld [hl], h
    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    call $25cb
    ld e, $42
    ld a, [de]
    or a
    jp z, $1e27

    jp $1e30


    ld hl, $cfd3
    ld a, [hl]
    and $80
    jp nz, $1e39

    call $1e42
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_009_74dd

    ld a, [$c486]
    ld b, a
    ld a, $7d
    sub b
    ld e, $4b
    ld [de], a
    ld a, [$c487]
    ld b, a
    ld a, $54
    sub b

jr_009_74d9:
    ld e, $4d
    ld [de], a
    ret


jr_009_74dd:
    ld a, [$c488]
    ld b, a
    ld a, $e9

jr_009_74e3:
    add b
    ld e, $4b
    ld [de], a
    ld a, [$c489]
    ld b, a

jr_009_74eb:
    ld a, $19
    add b
    ld e, $4d
    ld [de], a
    ret


    ld h, d
    ld l, $46

jr_009_74f5:
    ld a, [hl]
    or a
    jr z, jr_009_7500

    dec [hl]
    jr z, jr_009_7500

    ld a, d
    ld [$ccb0], a

jr_009_7500:
    ld e, $44
    ld a, [de]
    rst $00
    ld a, [bc]
    ld [hl], l
    jr jr_009_757d

    ld [hl], c
    ld [hl], l
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $07
    call $248d
    jp $1e27


    call $1432
    ld [hl], $3f
    call Call_009_75e7
    call nc, $25b8
    call $261d
    ret nc

    ld a, [$cc79]
    or a
    jr z, jr_009_754e

    ld e, $61
    ld a, [de]
    or a
    ret nz

    ld c, $18
    call $1f60
    srl a
    ld e, $48
    ld [de], a
    ld b, a
    ld a, [$d008]
    xor $02
    cp b
    ret nz

    call Call_009_75e7
    ret c

    call $239b
    jp Jump_009_75e1


jr_009_754e:
    ld a, [$ccb0]
    or a
    ret nz

    ld c, $18
    call $1f60
    srl a
    ret nz

    ld a, [$ccb4]
    cp $3f
    ret nz

    ld a, [$d004]
    cp $01
    ret nz

    ld a, $02
    ld [$cc6a], a
    xor a
    ld [$cc6c], a
    ret


    call Call_009_75e1
    call $25b8
    ld a, [$cc79]
    or a
    jr z, jr_009_75bb

jr_009_757d:
    bit 1, a
    jr z, jr_009_75bb

    ld e, $61
    ld a, [de]
    cp $ff
    jr z, jr_009_75a7

    add a
    ld c, a
    ld e, $48
    ld a, [de]

Call_009_758d:
    swap a
    rrca
    ld hl, $75c1
    rst $10
    ld b, $00
    add hl, bc
    ld e, $4b
    ld a, [de]
    add [hl]
    ld [$d00b], a
    inc hl
    ld e, $4d
    ld a, [de]
    add [hl]
    ld [$d00d], a
    ret


jr_009_75a7:
    ld e, $48
    ld a, [de]
    inc a
    and $03
    ldh [$8b], a
    ld c, $00
    call Call_009_758d
    ldh a, [$8b]
    xor $02
    ld [$d008], a

jr_009_75bb:
    ld e, $44
    ld a, $01
    ld [de], a
    ret


    ldh a, [rP1]
    db $f4
    inc b
    ld hl, sp+$08
    db $fc
    inc c
    nop
    db $10
    inc b
    inc c
    ld [$0c08], sp
    inc b
    stop
    inc c
    db $fc
    ld [$04f8], sp
    db $f4
    nop
    ldh a, [$fc]
    db $f4
    ld hl, sp-$08
    db $f4
    db $fc

Call_009_75e1:
Jump_009_75e1:
    ld e, $46
    ld a, $14
    ld [de], a
    ret


Call_009_75e7:
    ld e, $42
    ld a, [de]
    ld b, a
    and $80
    ret z

    ld a, b
    and $07
    ld hl, $cc31
    call $0205
    ret nz

    scf
    ret


    call $2297
    ld e, $44
    ld a, [de]
    rst $00
    dec bc
    db $76
    ld e, $76
    add hl, hl
    db $76
    or e
    db $76
    add $76
    ld a, $01
    ld [de], a
    call $15e9
    ld a, $07
    call $248d
    ld a, $14
    ld l, $50
    ld [hl], a
    jp $1e27


    call $268f
    ld e, $44
    ld a, $02
    ld [de], a
    jp Jump_009_76d4


    ld a, [$d00f]
    or a
    jr nz, jr_009_7677

    xor a
    ld e, $70
    ld [de], a
    ld a, $07
    call $248d
    call $261d
    jr nc, jr_009_7671

    call $26b2
    jr nc, jr_009_7671

    ld a, $01
    ld [$cc81], a
    call $2387
    ret nz

    ld c, $28
    call $1f60
    ld e, $48
    xor $04
    ld [de], a
    call $26d0
    ret nz

    ld h, d
    ld l, $48
    ld a, [hl]
    add a
    add a
    ld l, $49
    ld [hl], a
    ld l, $46
    ld [hl], $20
    ld l, $44
    inc [hl]
    call Call_009_76e0
    ld a, $71
    jp $0c74


jr_009_7671:
    ld e, $46
    ld a, $1e
    ld [de], a
    ret


jr_009_7677:
    ld a, $0a
    call $248d
    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a
    call $1ba7
    ret nc

    ld a, [$d00f]
    ld b, a
    cp $e8
    jr nc, jr_009_7693

    ld e, $70
    ld [de], a

jr_009_7693:
    ld a, b
    cp $fc
    ret c

    ld e, $70
    ld a, [de]
    or a
    jr nz, jr_009_76a5

    ld hl, $5efb
    ld e, $15
    call $008a

jr_009_76a5:
    ld e, $44
    ld a, $04
    ld [de], a
    xor a
    call $25cb
    ld a, $53
    jp $0c74


    call $1fdb
    call $261d
    call $2387
    ret nz

    ld l, $44
    dec [hl]
    ld l, $46
    ld [hl], $1e
    jr jr_009_76d4

    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    ret nz

    ld e, $44
    ld a, $02
    ld [de], a
    ret


Jump_009_76d4:
jr_009_76d4:
    call $1432
    ld e, $71
    ld [de], a
    ld [hl], $07
    dec h
    ld [hl], $14
    ret


Call_009_76e0:
    call $1432
    ld e, $71
    ld a, [de]
    ld [hl], a
    dec h
    ld [hl], $00
    ret


    call $23b9
    jr nz, jr_009_7711

    ld a, $01
    ld [de], a
    call $15e9
    ld b, $07
    call $3e07
    ld a, c
    or a
    jp z, $3ad9

    ld e, $42
    ld a, b
    ld [de], a
    ld hl, $7717
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $24fe
    jp $1e27


jr_009_7711:
    call $250c
    jp $2686


    ld b, h
    ld [hl], b
    ld b, h
    ld [hl], b
    ld b, a
    ld [hl], b
    ld b, a
    ld [hl], b
    ld c, d
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld c, l
    ld [hl], b
    ld d, b
    ld [hl], b
    ld b, a
    ld [hl], b
    ld d, e
    ld [hl], b
    ld e, $44
    ld a, [de]
    rst $00
    add hl, sp
    ld [hl], a
    ld hl, sp+$77
    ld a, [de]
    ld a, b
    jr c, jr_009_77b1

    ld a, $01
    ld [de], a
    ld e, $40
    ld a, [de]
    or $80
    ld [de], a

jr_009_7742:
    ld e, $42
    ld a, [de]
    cp $0a
    jr z, jr_009_775d

    cp $0d
    jr nz, jr_009_7770

    ld a, [$c6bb]
    bit 2, a
    jr z, jr_009_776b

    ld a, $53
    call $1717
    jr c, jr_009_776b

    jr jr_009_7770

jr_009_775d:
    ld a, [$c6a9]
    cp $02
    jr nc, jr_009_776b

    ld a, $01
    call $1717
    jr nc, jr_009_7770

jr_009_776b:
    ld a, [de]
    inc a
    ld [de], a
    jr jr_009_7770

jr_009_7770:
    ld a, [de]
    add a
    ld hl, $779e
    rst JumpTable
    ld a, [$c642]
    and [hl]
    jr nz, jr_009_7799

    inc hl
    ld e, $77
    ld b, $03

jr_009_7781:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_009_7781

    call $15e9
    ld e, $66
    ld a, $06
    ld [de], a
    inc e
    ld [de], a
    ld e, $71
    call $1af2
    jp $1e27


jr_009_7799:
    ld a, [de]
    inc a
    ld [de], a
    jr jr_009_7742

    ld bc, $0000
    nop
    inc b
    xor d
    db $10
    dec bc
    ld [$20b6], sp
    ld b, $00
    or [hl]
    jr nz, @+$0e

    ld [bc], a
    or l
    db $10

jr_009_77b1:
    dec b
    stop
    nop
    rlca
    jr nz, jr_009_77b8

jr_009_77b8:
    nop
    ld b, $40
    nop
    nop
    dec bc
    add b
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    inc bc
    nop
    or l
    dec b
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    cp b
    jr nz, jr_009_77da

jr_009_77da:
    ld b, [hl]
    nop
    inc bc
    db $10
    inc [hl]
    ld bc, HeaderTitle
    dec hl
    ld bc, $032d
    dec l
    inc bc
    dec l
    inc bc
    dec l
    ld [bc], a
    jr nz, jr_009_77f2

    ld bc, $2201
    db $10

jr_009_77f2:
    add hl, hl
    inc c
    ld d, e
    db $10
    scf
    inc b
    call $2686
    ld e, $71
    ld a, [de]
    or a
    ret z

    xor a
    ld [de], a
    ld e, $7d
    ld [de], a
    call Call_009_7931
    ld e, $44
    ld a, $02
    ld [de], a
    ld e, $42
    ld a, [de]
    ld hl, $7994
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $24fe


    call $2686
    call $250c
    ret nc

    ld e, $7d
    ld a, [de]
    bit 7, a
    ld e, $44
    ld a, $01
    ld [de], a
    ret nz

    ld a, $03
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld a, $80
    ld [$cc02], a
    ret


    ld e, $45
    ld a, [de]
    rst $00
    ld b, [hl]
    ld a, b
    ret nz

    ld a, b
    call $fb78
    ld a, b
    inc e
    ld a, c
    call $1e15
    ld a, [$ccea]
    dec a
    ld [$ccea], a
    call Call_009_7973
    ld a, $04
    ld [$cc6a], a
    ld a, $01
    ld [$cc6b], a
    ld h, d
    ld l, $4b
    ld a, [$d00b]
    sub $0e
    ld [hl], a
    ld l, $4d
    ld a, [$d00d]
    ld [hl], a
    ld l, $46
    ld a, $80
    ld [hl+], a
    ld [hl], $04
    ld l, $45
    ld a, $01
    ld [hl], a
    ld hl, $cbea
    set 2, [hl]
    ld e, $42
    ld a, [de]
    cp $01
    jr z, jr_009_78ac

    ld hl, $77da
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    cp $2d
    jr nz, jr_009_7891

    call $17b9

jr_009_7891:
    call $16eb
    ld e, $42
    ld a, [de]
    ld hl, $78b1
    rst $10
    ld c, [hl]
    ld b, $00
    call $184b
    ld e, $42
    ld a, [de]
    cp $04
    ret z

    ld a, $4c
    jp $0c74


jr_009_78ac:
    ld h, d
    ld l, $45
    inc [hl]
    ret


    ld b, c
    nop
    ld c, e
    ld c, e
    rla
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld c, a
    rra
    ld d, b
    ld c, h
    ld b, l
    ld c, [hl]
    call $1832
    xor a
    ld [$cca4], a
    ld [$cc02], a
    jp $3ad9


    call $2387
    jr z, jr_009_78de

    inc l
    dec [hl]
    ret nz

    ld [hl], $04
    ld a, $01
    ld l, $5c
    xor [hl]
    ld [hl], a
    ret


jr_009_78de:
    ld l, $5b
    ld a, $0a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $0c
    ld l, $45
    ld [hl], $03
    ld l, $47
    ld [hl], $1e
    ld a, $08
    call $25cb
    ld a, $bc
    call $0c74
    jp $3144


    call $25b8
    ld a, [$c4ab]
    or a
    ret nz

    call $238c
    ret nz

    ld l, $5a
    ld [hl], a
    ld l, $45
    ld [hl], $04
    ld hl, $c6ab
    ld a, [hl]
    add $20
    ld [hl-], a
    ld [hl], a
    call $17b1
    jp $3171


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    ld [$cca4], a
    ld [$cc02], a
    ld bc, $2b0e
    call $184b
    jp $3ad9


Call_009_7931:
    ld e, $7b
    xor a
    ld [de], a
    ld e, $42
    ld a, [de]
    or a
    jr z, jr_009_7967

    ld e, $77
    ld a, [de]
    or a
    jr z, jr_009_794b

    ld l, a
    ld h, $c6
    inc e
    ld a, [de]
    ld b, a
    ld a, [hl]
    cp b
    jr c, jr_009_7950

jr_009_794b:
    ld e, $7b
    ld a, $01
    ld [de], a

jr_009_7950:
    ld e, $79
    ld a, [de]
    call $1734
    ld hl, $cba8
    ld [hl], c
    inc l
    ld [hl], b
    ld e, $7b
    xor $01
    jr z, jr_009_7965

    ld c, a
    ld a, [de]
    and c

jr_009_7965:
    ld [de], a
    ret


jr_009_7967:
    ld a, $45
    call $1717
    ret nc

    ld e, $7b
    ld a, $01
    ld [de], a
    ret


Call_009_7973:
    ld e, $42
    ld a, [de]
    or a
    ret z

    ld a, $ff
    ld [$cbea], a
    ld e, $77
    ld a, [de]
    or a
    jr z, jr_009_798d

    ld l, a
    ld h, $c6
    inc e
    ld a, [de]
    ld c, a
    ld a, [hl]
    sub c
    daa
    ld [hl], a

jr_009_798d:
    ld e, $79
    ld a, [de]
    ld c, a
    jp $174c


    ld d, [hl]
    ld [hl], b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, e
    ld [hl], b
    add [hl]
    ld [hl], b
    sub c
    ld [hl], b
    sbc h
    ld [hl], b
    and a
    ld [hl], b
    or d
    ld [hl], b
    cp c
    ld [hl], b
    ret nz

    ld [hl], b
    rst $00
    ld [hl], b
    adc $70
    push de
    ld [hl], b
    call $23b9
    jr nz, jr_009_79cd

    ld a, $01
    ld [de], a
    ld h, d
    ld l, $4e
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_009_7a99
    ld l, $46
    ld [hl], $5a
    call $15e9
    jp $1e27


jr_009_79cd:
    ld e, $45
    ld a, [de]
    rst $00
    db $dd
    ld a, c
    rrca
    ld a, d
    ld hl, $417a
    ld a, d
    ld h, d
    ld a, d
    ld l, a
    ld a, d
    call Call_009_7a09
    call $211e
    ld l, $4d
    ld a, [hl]
    add $08
    ld b, a
    ld e, l
    ld a, [de]
    cp b
    jr c, jr_009_79fc

    call $23a0
    ld l, $46
    ld [hl], $14
    ld a, $06
    call $25cb
    jr jr_009_7a06

jr_009_79fc:
    ld e, $46
    ld a, [de]
    or a
    jp z, Jump_009_7a93

    jp $2387


Call_009_7a06:
jr_009_7a06:
    call Call_009_7a93

Call_009_7a09:
    call $25b8
    jp $229b


    call Call_009_7a06
    call $2387
    ret nz

    ld l, $49
    ld [hl], $18
    ld l, $50
    ld [hl], $28
    jp $23a0


    call Call_009_7a06
    call $211e
    ld l, $4d
    ld a, [hl]
    add $04
    call Call_009_7a9f
    jp nz, $1fdb

    call $23a0
    ld l, $46
    ld [hl], $0c
    ld l, $4e
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_009_7aa5


    call Call_009_7a09
    call $2387
    jp z, Jump_009_7a4f

    call $1fdb
    jr jr_009_7a5f

Jump_009_7a4f:
    call $23a0
    ld l, $46
    ld [hl], $1e
    ld l, $49
    ld [hl], $08
    ld a, $05
    call $25cb

jr_009_7a5f:
    jp Jump_009_7aa5


    call Call_009_7a09
    call Call_009_7aa5
    call $2387
    ret nz

    jp $23a0


    call Call_009_7a06
    call Call_009_7aa5
    call $1fdb
    ld e, $76
    ld a, [de]
    call Call_009_7a9f
    ret nz

    ld hl, $cceb
    ld [hl], $02
    ld h, d
    ld l, $45
    ld [hl], $00
    ld l, $4e
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $46
    ld [hl], $3c
    ret


Call_009_7a93:
Jump_009_7a93:
    ld c, $20
    call $1f04
    ret nz

Call_009_7a99:
    ld bc, $ff40
    jp $2358


Call_009_7a9f:
    ld b, a
    ld e, $4d
    ld a, [de]
    cp b
    ret


Call_009_7aa5:
Jump_009_7aa5:
    ld a, $40
    call $211e
    ld e, $49
    ld a, [de]
    cp $18
    ld c, $07
    jr nz, jr_009_7ab5

    ld c, $fb

jr_009_7ab5:
    ld b, $fe
    jp $2215


    call $23b9
    jr nz, jr_009_7af2

    ld a, $01
    ld [de], a
    ld h, d
    call Call_009_7aea
    ld l, $50
    ld [hl], $3c
    ld l, $49
    ld [hl], $18
    call $3ac6
    jr nz, jr_009_7ae4

    ld [hl], $82
    ld l, $57
    ld [hl], d
    ld bc, $00f4
    call $2215
    ld l, $4d
    ld a, [hl]
    ld l, $76
    ld [hl], a

jr_009_7ae4:
    call $15e9
    jp $1e27


Call_009_7aea:
Jump_009_7aea:
    ld l, $4e
    ld [hl], $ff
    inc l
    ld [hl], $fc
    ret


jr_009_7af2:
    call $229b
    ld h, d
    ld l, $5a
    res 6, [hl]
    ld e, $45
    ld a, [de]
    rst $00
    inc b
    ld a, e
    dec e
    ld a, e
    ld b, e
    ld a, e
    ld a, [$cceb]
    cp $01
    ret nz

    call $042f
    and $03
    ld hl, $7b59
    rst JumpTable
    ld a, [hl+]
    ld e, $54
    ld [de], a
    ld a, [hl]
    inc e
    ld [de], a
    jp $23a0


    ld c, $20
    call $1f04
    jp nz, $1fdb

    ld l, $55
    ld a, [hl-]
    srl a
    ld b, a
    ld a, [hl]
    rra
    cpl
    add $01
    ld [hl+], a
    ld a, b
    cpl
    adc $00
    ld [hl-], a
    ld bc, $ffa0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $01d6
    ret c

    jp $23a0


    ld a, [$cceb]
    cp $02
    ret nz

    xor a
    ld [de], a
    ld h, d
    ld l, $76
    ld e, $4b
    ld a, [hl+]
    ld [de], a
    inc e
    inc e
    ld a, [hl]
    ld [de], a
    jp Jump_009_7aea


    ldh [$fe], a
    add b
    cp $20
    cp $c0
    db $fd
    call $23b9
    jr nz, jr_009_7bb0

    call $15e9
    call $26ac
    ld l, $44
    inc [hl]
    ld e, $42
    ld a, [de]
    rst $00
    add a
    ld a, e
    sub a
    ld a, e
    adc a
    ld a, e
    sbc d
    ld a, e
    and l
    ld a, e
    sub a
    ld a, e
    sub a
    ld a, e
    adc h
    ld a, e
    xor b
    ld a, e
    sub a
    ld a, e
    ld h, d
    ld l, $46
    ld [hl], $78
    jp $1e27


    ld h, d
    ld l, $50
    ld [hl], $80
    inc l
    ld [hl], $ff
    jp $1e1e


    ld h, d
    ld l, $50
    ld [hl], $c0
    inc l
    ld [hl], $ff
    jp $1e1e


    jp $1e15


    ld h, d
    ld l, $46
    ld [hl], $c2
    jp $1e15


jr_009_7bb0:
    ld e, $42
    ld a, [de]
    rst $00
    ret z

    ld a, e
    sbc $7b
    db $db
    ld a, e
    db $db
    ld a, e
    jp hl


    ld a, e
    sbc $7b
    db $fd
    ld a, e
    ret z

    ld a, e
    dec d
    ld a, h
    di
    ld a, e

jr_009_7bc8:
    call $2387
    jp z, $3ad9

jr_009_7bce:
    call $25b8
    ld a, [$cc00]

jr_009_7bd4:
    rrca
    jp c, $1e39

    jp $1e42


    call $1fc6
    ld e, $61
    ld a, [de]
    cp $ff
    jp z, $3ad9

    jp $25b8


    ld a, [$cfc0]
    bit 0, a
    jp nz, $3ad9

    jr jr_009_7bce

    ld a, [$cbb9]
    cp $06
    jp z, $3ad9

    jr jr_009_7c05

    ld a, [$cbb9]
    cp $07
    jp z, $3ad9

jr_009_7c05:
    call $25b8
    ld a, $0b
    call $211e
    call $222f
    ld a, [$cbb7]
    jr jr_009_7bd4

    ld a, $0b
    call $211e
    call $222f
    jr jr_009_7bc8

    ld e, $44
    ld a, [de]
    rst $00
    daa
    ld a, h
    ld b, h
    ld a, h
    ld a, $01
    ld [de], a
    ld a, $98
    call $1959
    and $40
    jp nz, $3ad9

    ld hl, $cfd7
    ld a, [hl]
    or a
    ret nz

    inc a
    ld [hl], a
    ld [$cc02], a
    ld a, $08
    call $0c74
    ld a, [$d00d]
    cp $70
    ld a, $01
    jr c, jr_009_7c4e

    inc a

jr_009_7c4e:
    ld h, d
    ld l, $77
    cp [hl]
    ret z

    ld [hl], a
    jp $0c89


    call $23b9
    jr nz, jr_009_7c7e

    ld a, $01
    ld [de], a
    call $15e9
    ld e, $42
    ld a, [de]
    ld b, a
    add a
    add b
    ld b, a
    ld h, d
    ld l, $62
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    rst $10
    ld e, $62
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    call Call_009_7cb3
    jp $1e1e


jr_009_7c7e:
    ld hl, $cfd3
    ld a, [hl]
    inc a
    jp z, $3ad9

    dec a
    and $7f
    ld b, a
    ld h, d
    ld l, $43
    ld a, [hl]
    cp b
    jr z, jr_009_7c97

    ld [hl], b
    call Call_009_7cb3
    jr jr_009_7c9e

jr_009_7c97:
    ld e, $61
    ld a, [de]
    inc a
    call z, Call_009_7cb3

jr_009_7c9e:
    call $25b8
    ld e, $42
    ld a, [de]
    and $01
    ld b, a
    ld a, [$cc00]
    and $01
    xor b
    jp z, $1e39

    jp $1e42


Call_009_7cb3:
    ld hl, $cfd3
    ld a, [hl]
    and $7f
    ld hl, $7cd8
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $42
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld e, $4b
    call Call_009_7ccd
    ld a, [hl]
    ld e, $4d

Call_009_7ccd:
    ld b, a
    call $041a
    and $03
    sub $02
    add b
    ld [de], a
    ret


    ld [c], a
    ld a, h
    db $ec
    ld a, h
    or $7c
    nop
    ld a, l
    ld a, [bc]
    ld a, l
    ld a, c
    ld b, d
    ld a, e
    ld c, [hl]
    ld a, [hl]
    ld e, e
    add b
    ld [hl], b
    add c
    adc d
    nop
    jr c, jr_009_7d5b

    jr nz, jr_009_7d39

    ld b, b
    inc a
    sub c
    inc [hl]
    ld h, h
    inc l
    ld a, [hl]
    ld e, $9e
    ld d, b
    ld l, [hl]
    jr z, jr_009_7d22

    ld h, b
    jr nz, jr_009_7d1d

    jr jr_009_7d47

    ld h, h
    nop
    ld e, h
    ld l, b
    ld [hl], b
    ld [hl], h
    inc [hl]
    ldh [$e0], a
    ld a, e
    ld c, [hl]
    ld a, [hl]
    ld e, b
    add b
    ld l, b
    add c
    add b
    ld e, $44
    ld a, [de]
    rst $00
    jr nz, @+$7f

    add d
    ld a, l
    add l

jr_009_7d1d:
    ld a, l
    adc b
    ld a, l
    ld e, $42

jr_009_7d22:
    ld a, [de]
    rst $00
    ld a, [hl+]
    ld a, l
    ld d, a
    ld a, l
    ld l, e
    ld a, l
    call $15e9
    call $1e30
    call $26ac
    call Call_009_7d8b
    call Call_009_7e05

jr_009_7d39:
    ld hl, $710b
    call $24fe
    ld a, [$cc39]
    or a
    jr nz, jr_009_7d49

    ld a, $01

jr_009_7d47:
    jr jr_009_7d4b

jr_009_7d49:
    ld a, $02

jr_009_7d4b:
    ld e, $44
    ld [de], a
    call $250c
    call $250c
    jp $250c


    ld e, $44
    ld a, $02

jr_009_7d5b:
    ld [de], a
    call $15e9
    call $1e30
    ld hl, $7255
    call $24fe
    jp $250c


    ld e, $44
    ld a, $02
    ld [de], a
    call $15e9
    call $1e30
    call $26ac
    ld hl, $7261
    call $24fe
    jp $250c


    call Call_009_7df6
    call $250c
    jp $25b8


Call_009_7d8b:
    ld a, $28
    call $30c7
    jp nz, Jump_009_7df0

    ld a, $40
    call $1717
    jr c, jr_009_7d9b

    xor a

jr_009_7d9b:
    cp $17
    jr z, jr_009_7dc3

    cp $1f
    jr z, jr_009_7dcc

    call $01ea
    jr nc, jr_009_7da9

    inc a

jr_009_7da9:
    call Call_009_7df2
    cp $01
    jr z, jr_009_7db5

    cp $08
    jr z, jr_009_7ddb

    ret


jr_009_7db5:
    ld a, $01
    ld b, $2a
    call $1963
    and $40
    ret z

    ld a, $09
    jr jr_009_7df2

jr_009_7dc3:
    ld a, $27
    call $30cd
    ld a, $0a
    jr jr_009_7df2

jr_009_7dcc:
    ld a, $27
    call $30c7
    jr nz, jr_009_7dd7

    ld a, $05
    jr jr_009_7df2

jr_009_7dd7:
    ld a, $0b
    jr jr_009_7df2

jr_009_7ddb:
    ld a, [$c6df]
    cp $09
    jr z, jr_009_7dec

    ld a, $19
    call $30c7
    ret z

    ld a, $0c
    jr jr_009_7df2

jr_009_7dec:
    ld a, $0d
    jr jr_009_7df2

Jump_009_7df0:
    ld a, $0e

Call_009_7df2:
jr_009_7df2:
    ld [$cc39], a
    ret


Call_009_7df6:
    call $1956
    and $40
    ret nz

    ld a, $42
    call $1717
    ret nc

    set 6, [hl]
    ret


Call_009_7e05:
    call $1956
    bit 6, a
    ret nz

    bit 7, a
    ret z

    call $3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $42
    inc l
    ld [hl], $01
    ld l, $4b
    ld a, $58
    ld [hl+], a
    ld a, [$c6e0]
    ld l, $4d
    ld [hl], a
    ret


    call $23b9
    jr nz, jr_009_7e6f

    ld a, [$c4ab]
    or a
    ret nz

    ld a, $01
    ld [de], a
    ld e, $40
    ld a, [de]
    or $80
    ld [de], a
    call $15e9
    call $1e27
    call $1e39
    ld e, $42
    ld a, [de]
    or a
    jr z, jr_009_7e4d

    ld a, [$c486]
    cpl
    inc a

jr_009_7e4d:
    add $28
    ld l, $4b
    ld [hl], a
    ld e, $42
    ld a, [de]
    or a
    jr nz, jr_009_7e61

    call $23a0
    ld hl, $7f33
    jp Jump_009_7f01


jr_009_7e61:
    ld a, $30
    call $30c7
    jp nz, $3ad9

    ld e, $46
    ld a, $3c
    ld [de], a
    ret


jr_009_7e6f:
    ld a, $0a
    call $30c7
    jr nz, jr_009_7e7d

    ld a, [$c4ab]
    or a
    jp nz, $3ad9

jr_009_7e7d:
    call $23be
    jr nz, jr_009_7ea2

    call $2387
    ret nz

    ld l, $46
    ld [hl], $3c
    call $042f
    and $01
    ret z

    call $23a0
    call $042f
    and $03
    ld hl, $7f2b
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_009_7f01


jr_009_7ea2:
    ld e, $70
    ld a, [de]
    or a
    jr nz, jr_009_7ee2

    ld a, $01
    ld [de], a
    ld e, $47
    ld a, [de]
    ld hl, $7f28
    rst $10
    ld a, [hl]
    call $04e7
    ld a, $ff
    ld [$cd29], a
    ld a, [de]
    or a
    ld a, $d2
    call nz, $0c74
    ld a, [de]
    cp $02
    jr z, jr_009_7ecc

    call $1e39
    jr jr_009_7ee2

jr_009_7ecc:
    call $041a
    and $01
    ld b, a
    ld a, $13
    jr z, jr_009_7ed8

    ld a, $8d

jr_009_7ed8:
    ld e, $4d
    ld [de], a
    ld a, b
    call $25cb
    call $1e42

jr_009_7ee2:
    ld e, $47
    ld a, [de]
    cp $02
    jr nz, jr_009_7ef5

    call $25b8
    ld e, $61
    ld a, [de]
    inc a
    jr nz, jr_009_7ef5

    call $1e39

jr_009_7ef5:
    call $2387
    ret nz

    ld h, d
    ld l, $58
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    inc hl
    inc hl

Jump_009_7f01:
    ld e, $58
    ld a, h
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    ld a, [hl+]
    inc a
    jr z, jr_009_7f17

    ld e, $46
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $70
    xor a
    ld [de], a
    ret


jr_009_7f17:
    ld h, d
    ld l, $42
    ld a, [hl]
    or a
    jp z, $3ad9

    ld l, $45
    ld [hl], $00
    ld l, $46
    ld [hl], $3c
    ret


    dec sp
    sbc c
    sbc d
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc a
    nop
    ld [bc], a
    ld bc, $0004
    ld [bc], a
    ld [bc], a
    ld a, b
    nop
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld bc, $0002
    inc bc
    ld bc, $0001
    inc c
    ld [bc], a
    inc a
    nop
    rst $38
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

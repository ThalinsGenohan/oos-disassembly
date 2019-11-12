; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX

    bit 7, a
    jp z, Jump_00b_419d

    push hl
    and $7f
    rst $00
    add [hl]
    ld b, c
    sub a
    ld b, c
    sbc l
    ld b, c
    adc a
    dec h
    and d
    ld b, c
    jp z, $1c41

    ld b, c
    ld hl, sp+$41
    inc bc
    ld b, d
    inc de
    ld b, d
    add b
    ld b, d
    ld a, [de]
    ld b, d
    inc l
    ld b, d
    ld [hl], $42
    ld b, b
    ld b, d
    ld e, [hl]
    ld b, d
    db $fd
    ld b, d
    add hl, de
    ld b, e
    db $fc
    ld b, e
    ld d, d
    ld b, d
    ld b, a
    ld b, d
    ld hl, $9042
    ld b, d
    and b
    ld b, d
    pop bc
    ld b, d
    db $ed
    ld b, d
    ld [c], a
    ld b, d
    rst $00
    ld b, e
    sbc $43
    pop de
    ld b, e
    db $e4
    ld b, h
    call z, $2b42
    ld b, e
    dec hl
    ld b, e
    dec hl
    ld b, e
    dec hl
    ld b, e
    dec hl
    ld b, e
    dec hl
    ld b, e
    dec hl
    ld b, e
    dec hl
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    and a
    ld b, e
    cp e
    ld b, e
    inc bc
    ld b, c
    ld e, l
    ld b, e
    jp z, Jump_00b_6244

    ld b, l
    ld [hl], e
    ld b, l
    inc bc
    ld b, c
    ld l, b
    ld b, c
    ld [hl], b
    ld b, c
    ld [hl], e
    ld b, c
    ld c, h
    ld b, c
    ld h, d
    ld b, c
    ld b, a
    ld b, c
    ld e, [hl]
    ld b, c
    inc bc
    ld b, c
    ld a, [hl]
    ld b, h
    adc [hl]
    ld b, h
    inc bc
    ld b, c
    sbc e
    ld b, h
    and [hl]
    ld b, h
    inc bc
    ld b, c
    or d
    ld b, h
    cp e
    ld b, h
    ld b, [hl]
    ld b, h
    ld d, c
    ld b, e
    ld a, e
    ld b, e
    sub c
    ld b, e
    and b
    ld b, e
    dec b
    ld b, c
    add hl, bc
    ld b, c
    dec c
    ld b, c
    jp c, $2344

    ld b, e
    ld a, [c]
    ld b, h
    ld a, [$0e44]
    ld b, l
    dec e
    ld b, l
    ld d, d
    ld b, l
    push af
    ld b, d
    ld h, e
    ld b, h
    ld l, $45
    ld a, $45
    db $d3
    ld b, h
    inc bc
    ld b, c
    ld [$0844], sp
    ld b, h
    dec [hl]
    ld b, h
    ld c, d
    dec h
    ld d, b
    dec h
    ld e, h
    ld b, l
    ld l, h
    ld b, e
    jp hl


    ld b, e
    ld e, h
    ld b, h
    call c, Call_00b_6b41
    ld b, h
    ld [hl], a
    ld b, h
    ld [hl], l
    ld b, e
    ld [de], a
    ld b, e
    adc d
    ld b, l
    sbc [hl]
    ld b, l
    or c
    ld b, l
    or l
    ld b, l
    cp c
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l
    ld b, l
    cp l

Jump_00b_4100:
    ld b, l
    cp l
    ld b, l
    pop hl
    ret


    ld b, $20
    jr jr_00b_410f

    ld b, $40
    jr jr_00b_410f

    ld b, $80

jr_00b_410f:
    call $1956
    and b
    jp z, Jump_00b_415a

    pop hl
    ld hl, $45d8
    scf
    ret


    pop hl
    inc hl
    ld a, [hl+]
    push hl
    cp $ff
    jr z, jr_00b_4135

    ld b, a
    swap a
    and $03
    rst $00
    ld a, [hl-]
    ld b, c
    ld [hl-], a
    ld b, c
    ld [hl-], a
    ld b, c
    ld a, [hl-]
    ld b, c
    ld a, b
    or $80

jr_00b_4135:
    call $1a0a
    jr jr_00b_4144

    ld a, b
    ld [$c6e6], a
    ld bc, $0003
    call $19f4

jr_00b_4144:
    pop hl
    xor a
    ret


    ld a, $81
    ld [$cca4], a
    ld a, $80
    ld [$cc02], a
    call $2b57
    call $2b8a
    call Call_00b_4177

Jump_00b_415a:
jr_00b_415a:
    pop hl
    inc hl
    scf
    ret


    xor a
    ld [$cca4], a
    xor a
    ld [$cc02], a
    jr jr_00b_415a

    ld a, $91

jr_00b_416a:
    ld [$cca4], a
    pop hl
    inc hl
    ret


    xor a
    jr jr_00b_416a

    ld a, $11
    jr jr_00b_416a

Call_00b_4177:
    push hl
    ld a, [$cc48]
    ld h, a
    ld l, $2b
    ld [hl], $80
    ld l, $2d
    ld [hl], $00
    pop hl
    ret


    pop hl
    inc hl
    ld e, $44

jr_00b_418a:
    ld a, [hl+]
    cp $ff
    jr z, jr_00b_4192

    ld [de], a
    xor a
    ret


jr_00b_4192:
    ld a, [de]
    inc a
    ld [de], a
    xor a
    ret


    pop hl
    inc hl
    ld e, $45
    jr jr_00b_418a

Jump_00b_419d:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    scf
    ret


    pop hl
    inc hl
    call Call_00b_41b7
    push hl
    call $3ac6
    jr nz, jr_00b_41b2

    ld a, $4b
    call Call_00b_41c0

Jump_00b_41b2:
jr_00b_41b2:
    ldh a, [$ad]
    ld d, a
    pop hl
    ret


Call_00b_41b7:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ret


Call_00b_41c0:
    ld [hl], b
    inc l
    ld [hl], c
    inc l
    ld l, a
    ld [hl], d
    inc l
    inc l
    ld [hl], e
    ret


    pop hl
    inc hl
    call Call_00b_41b7
    push hl
    call $2e08
    jr nz, jr_00b_41b2

    ld a, $8b
    call Call_00b_41c0
    jr jr_00b_41b2

    pop hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push hl
    ld e, $4b
    ld a, [de]
    ld l, a
    ld e, $4d
    ld a, [de]
    ld e, a
    ld d, l
    call $2e08
    jr nz, jr_00b_41b2

    ld a, $8b
    call Call_00b_41c0
    jr jr_00b_41b2

    pop hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    rst JumpTable
    jp $2582


    pop hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push hl
    ld h, d
    ld l, $4b
    ld [hl], b
    ld l, $4d
    ld [hl], c
    pop hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, $49
    ld [de], a
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, $50
    ld [de], a
    ret


    pop hl
    inc hl
    ld e, $54
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    scf
    ret


    pop hl
    ld e, $47
    ld a, [de]
    or a
    ret nz

    inc hl
    ld a, [hl+]
    ld [de], a
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, $66
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld [de], a
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    scf
    ret


    pop hl
    inc hl
    call $041a
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and b
    ld [de], a
    ret


    pop hl
    inc hl
    ld a, [hl+]
    cp $ff
    jr nz, jr_00b_426c

    ld e, $49
    call $26a3
    jr jr_00b_4273

jr_00b_426c:
    cp $fe
    jr nz, jr_00b_4273

    ld a, [hl+]
    ld e, a
    ld a, [de]

jr_00b_4273:
    push hl
    call $25cb
    pop hl
    ld a, $0b
    ldh [$97], a
    ld [$2222], a
    ret


    call $1e52
    add $04
    and $18
    swap a
    rlca
    call $25cb
    jp Jump_00b_415a


    pop hl
    inc hl
    ld a, [hl+]
    ld e, $49
    ld [de], a
    call $26a3
    push hl
    call $25cb
    pop hl
    scf
    ret


    pop hl
    inc hl
    call Call_00b_42b0
    ld a, c
    ld e, $72
    ld [de], a
    ld a, b
    inc e
    ld [de], a
    ld hl, $45d9
    ret


Call_00b_42b0:
    ld e, $70
    ld a, [de]
    or a
    jr z, jr_00b_42bc

    ld e, $73
    ld a, [de]
    ld b, a
    jr jr_00b_42be

jr_00b_42bc:
    ld a, [hl+]
    ld b, a

jr_00b_42be:
    ld a, [hl+]
    ld c, a
    ret


    pop hl
    inc hl
    call Call_00b_42b0
    push hl
    call $184b
    pop hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld b, a
    call $196b
    jr nz, jr_00b_42d9

    ld a, [hl+]
    inc hl
    jr jr_00b_42db

jr_00b_42d9:
    inc hl
    ld a, [hl+]

jr_00b_42db:
    ld c, a
    push hl
    call $184b

Jump_00b_42e0:
    pop hl
    ret


    pop hl
    inc hl
    call Call_00b_42b0
    push hl
    call $1847
    pop hl
    ret


    pop hl
    ld a, [$cba0]
    or a
    ret nz

    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]

Jump_00b_42f8:
    ld e, $46
    ld [de], a
    xor a
    ret


    pop hl
    inc hl
    push hl
    ld e, $4d
    ld a, [de]
    ld hl, $d00d
    cp [hl]
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, $00
    jr nc, jr_00b_430f

    inc a

jr_00b_430f:
    ld [de], a
    scf
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld [$cd19], a
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [bc], a
    scf
    ret


    pop hl
    ld a, [$c4ab]
    or a
    ret nz

    inc hl
    ret


    pop hl
    ld a, [hl]
    and $07
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [$cfc0]
    and b
    ret z

    inc hl
    ret


    pop hl
    ld a, [hl]
    and $07
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    ld b, a
    ld a, [$cfc0]
    xor b
    ld [$cfc0], a
    inc hl
    ret


    pop hl
    ld a, [$cc30]
    or a
    jp nz, $258b

    inc hl
    jp $2582


    pop hl
    inc hl
    ld b, $c6
    ld c, [hl]
    inc hl
    ld a, [bc]
    and [hl]
    jp z, $258b

    inc hl
    jp $2582


    pop hl
    inc hl
    ld a, [hl+]
    push hl
    call $0c74
    pop hl
    ret


    call $1108
    pop hl
    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld d, $d0
    ld e, a
    ld a, [de]
    cp [hl]
    jr z, jr_00b_4389

    inc hl
    jp $2582


jr_00b_4389:
    ld bc, $0003
    add hl, bc
    ldh a, [$ad]
    ld d, a
    ret


    pop hl
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [bc]

jr_00b_4398:
    cp [hl]
    jp nz, $258a

    inc hl
    jp $257f


    pop hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [de]
    jr jr_00b_4398

    pop hl
    inc hl
    ld a, [hl+]
    ld b, a
    push hl
    call $1956
    and b
    jr nz, jr_00b_43b7

    pop hl
    inc hl
    inc hl
    scf
    ret


jr_00b_43b7:
    pop hl
    jp $257f


    pop hl
    inc hl
    ld a, [hl+]
    ld b, a
    push hl

Call_00b_43c0:
    call $1956
    or b
    ld [hl], a
    pop hl
    ret


    ld e, $71
    call $1af2
    pop hl
    jr nc, jr_00b_43d0

    inc hl

jr_00b_43d0:
    ret


    ld e, $72
    ld a, [de]
    ld c, a
    inc e
    ld a, [de]
    ld b, a
    call $184b
    pop hl
    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, $72
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    scf
    ret


    pop hl
    inc hl
    ld a, [hl+]
    cp $ff
    jr nz, jr_00b_43f3

    ld a, [$cc62]

jr_00b_43f3:
    ld [$cc51], a
    push hl
    call $0c74
    pop hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]

Jump_00b_4401:
    ld b, a

Jump_00b_4402:
    ld a, [bc]
    or [hl]
    ld [bc], a
    inc hl
    scf
    ret


    pop hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    push hl
    call $3ac6
    jp nz, Jump_00b_41b2

    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld a, e
    cp $de
    jr z, jr_00b_4427

    call $21fd
    jp Jump_00b_41b2


jr_00b_4427:
    ld e, $46
    ld a, $03
    ld [de], a
    ld de, $d00b
    call $2202
    jp Jump_00b_41b2


    pop hl
    inc hl
    ld a, [hl+]
    call $1717
    ld [$cfc1], a
    jr nc, jr_00b_4443

    jp $2582


jr_00b_4443:
    inc hl
    inc hl
    ret


    pop hl
    inc hl
    ld a, $41
    call $1717
    jr nc, jr_00b_4458

    ld b, a
    ld a, [hl+]
    dec a
    cp b
    jr nz, jr_00b_4459

    jp $2582


jr_00b_4458:
    inc hl

jr_00b_4459:
    inc hl
    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld [$cca4], a
    ret


    pop hl
    ld e, $47
    ld a, [de]
    or a
    ret nz

    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]

jr_00b_446e:
    ld c, a
    ld a, [hl+]
    push hl
    call $3a52
    pop hl
    scf
    ret


    pop hl
    inc hl
    call $2054
    jr jr_00b_446e

    pop hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld e, $75
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld l, c
    ld h, b
    ret


    pop hl
    ld e, $75
    ld a, [de]
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ret


jr_00b_4497:
    inc hl
    jp $257f


    pop hl
    inc hl
    ld a, [$cba5]
    cp [hl]
    jr z, jr_00b_4497

    jp $258a


    pop hl
    inc hl
    call $041a
    and $01
    add a
    rst $10
    jp $257f


    pop hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [de]
    rst JumpTable
    jp $2582


    pop hl
    inc hl
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [bc]
    and [hl]
    jp z, $258b

    inc hl
    jp $257f


    pop hl
    inc hl
    ld b, $c6
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld [bc], a
    ret


    call $1c35
    pop hl
    ret nc

    jr jr_00b_44df

    call $1bfb
    pop hl
    ret nc

jr_00b_44df:
    call Call_00b_4177
    inc hl
    ret


    ld e, $71
    ld a, [de]
    or a
    pop hl
    ret z

    xor a
    ld [de], a
    call Call_00b_4177
    inc hl
    scf
    ret


    pop hl
    ld a, [$cc30]
    or a
    ret nz

    inc hl
    ret


    pop hl
    push hl
    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    call $0205
    pop hl
    ret z

    ld bc, $0004
    add hl, bc
    scf
    ret


    pop hl
    push hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [de]
    cp [hl]
    jr z, jr_00b_451a

    pop hl
    xor a
    ret


jr_00b_451a:
    pop bc
    inc hl
    ret


    pop hl
    push hl
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    cp [hl]
    jr z, jr_00b_452b

    pop hl
    xor a
    ret


jr_00b_452b:
    pop bc
    inc hl
    ret


    pop hl
    ld a, [$cbe4]
    ld b, a
    ld a, [$c6a2]
    cp b
    jr z, jr_00b_453b

    xor a
    ret


jr_00b_453b:
    inc hl
    scf
    ret


    ld hl, $c6a5
    ld a, [$cbe6]
    cp [hl]
    jr nz, jr_00b_454f

    inc l
    ld a, [$cbe7]
    cp [hl]
    jp z, Jump_00b_415a

jr_00b_454f:
    pop hl
    xor a
    ret


    call $1c35
    pop hl
    jr c, jr_00b_455a

    inc hl
    ret


jr_00b_455a:
    xor a
    ret


    call $24ad
    pop hl
    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    push hl
    call $30c7
    pop hl
    jr z, jr_00b_456f

    jp $257f


jr_00b_456f:
    inc hl
    inc hl
    scf
    ret


    pop hl
    inc hl
    ld a, [hl+]
    bit 7, a
    jr nz, jr_00b_4581

    push hl
    call $30cd
    pop hl
    scf
    ret


jr_00b_4581:
    and $7f
    push hl
    call $30d3
    pop hl
    scf
    ret


    ld a, $06
    call $248d
    ld e, $71
    call $1b07
    ld e, $71
    call $1af2
    pop hl
    ret nc

    inc hl
    scf
    ret


    ld a, $00

jr_00b_45a0:
    ld e, $49
    ld [de], a
    call $26a3
    call $25cb
    pop hl
    inc hl
    ld a, [hl+]
    ld e, $47
    ld [de], a
    xor a
    ret


    ld a, $08
    jr jr_00b_45a0

    ld a, $10
    jr jr_00b_45a0

    ld a, $18
    jr jr_00b_45a0

    pop hl
    ld a, [hl+]
    and $0f
    ld bc, $45cb
    call $006d
    ld a, [bc]
    jp Jump_00b_42f8


    ld bc, $0804
    ld a, [bc]
    rrca
    inc d
    ld e, $28

jr_00b_45d3:
    inc a
    ld e, d
    ld a, b
    or h
    ldh a, [rP1]
    db $eb
    sbc [hl]
    sbc l
    ld b, l
    jp c, $0187

    call z, Call_00b_45e5
    dec h
    ld b, [hl]

Call_00b_45e5:
    or l
    jr z, jr_00b_45d3

    ld b, l
    sub a
    ld bc, $beeb
    sbc [hl]
    cp b
    sbc b
    ld [bc], a
    jp $0600


    ld b, [hl]
    sbc b
    add hl, de
    jp $ff00


    ld b, l
    sbc b
    dec b
    ld b, l
    db $ec
    ldh [$7f], a
    ld b, l
    sbc b
    ld a, [de]
    ld b, l
    db $ec
    add [hl]
    rst $38
    ldh [rNR34], a
    ld b, l
    add $7f
    push af
    ld b, l
    push af
    ld b, l
    push af
    ld b, l
    dec e
    ld b, [hl]
    add hl, de
    ld b, [hl]
    push af
    ld b, l
    sbc b
    dec bc
    ld b, l
    push af
    ldh [$5e], a
    ld b, l
    or $98
    inc b
    ld b, l
    push af
    db $eb
    sbc [hl]
    cp b
    sbc b
    ld b, $46
    inc sp
    cp [hl]
    sbc [hl]
    cp l
    or l
    inc l
    ld l, b
    ld b, [hl]
    sbc b
    rlca
    jp $3d00


    ld b, [hl]
    sbc b
    ld [$2c46], sp
    add [hl]
    rst $38
    ldh [rNR34], a
    ld b, l
    add $7f
    ld d, b
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld e, h
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld h, b
    ld b, [hl]
    ld h, h
    ld b, [hl]
    sbc b
    dec b
    ld b, [hl]
    inc l
    ldh [rOCPD], a
    ld b, l
    and c
    xor c
    cp [hl]
    ld b, [hl]
    inc l
    sbc b
    inc c
    ld b, [hl]
    inc l
    sbc b
    dec bc
    ld b, [hl]
    inc l
    sbc b
    inc e
    ld b, [hl]
    inc l
    sbc b
    ld a, [bc]
    ld b, [hl]
    inc l
    call $ddd2
    jr nc, jr_00b_4672

    nop

jr_00b_4672:
    call $048d
    ld b, $d2
    db $e3
    ld c, l
    ld [c], a
    or $e8
    pop af
    add b
    rst $38
    nop
    rst $08
    jp nc, $80b1

    nop
    db $eb
    cp [hl]
    sbc [hl]
    cp b
    sbc b
    ld d, l
    dec de
    jp $9300


    ld b, [hl]
    ld a, [c]
    ld b, [hl]
    add [hl]
    pop hl
    db $76
    ld a, [de]
    ld a, [bc]
    ld a, [c]
    ld b, [hl]
    add [hl]
    sub $e0
    add a
    ld b, l
    pop bc
    add b
    rst $38
    nop
    adc l
    ld a, [bc]
    ld [$1089], sp
    ld b, [hl]
    cp h
    adc l
    ld [$890a], sp
    ld [de], a
    ld b, [hl]
    cp h
    adc l
    ld a, [bc]
    ld [$1489], sp
    ld b, [hl]
    cp h
    adc l
    ld [$890a], sp
    ld d, $c0
    sbc d
    ld b, [hl]
    ldh [$be], a
    ld b, l
    add a
    pop bc
    rst $08
    cp a
    ld b, [hl]
    bit 0, [hl]
    pop de
    ld b, [hl]
    db $e3
    ld c, l
    add b
    ld [bc], a
    ld b, [hl]
    cp a
    add b
    inc bc
    ld b, [hl]
    cp a
    ret nz

    sbc d
    ld b, [hl]
    ret


    db $e3
    ld b, [hl]
    add b
    inc bc
    jp nc, $4de3

    ld a, [c]
    add b
    rst $38
    nop
    add b
    ld [bc], a
    nop
    adc l
    ld a, [bc]
    ld [$1089], sp
    ret


    db $e4
    ld b, [hl]
    ld b, [hl]
    push de
    adc l
    ld [$890a], sp
    ld [de], a
    ret


    db $e4
    ld b, [hl]
    ld b, [hl]
    push de
    adc l
    ld a, [bc]
    ld [$1489], sp

Call_00b_4700:
Jump_00b_4700:
    ret


    db $e4
    ld b, [hl]
    ld b, [hl]
    push de
    adc l
    ld [$890a], sp
    ld d, $c9
    db $e4
    ld b, [hl]
    ld b, [hl]
    push de
    ldh [rIE], a
    ld b, l
    add a
    pop bc
    rst $08
    rrca
    ld b, a
    add hl, de
    ld b, a
    add b
    rst $38
    ret nz

    sbc d
    ld b, [hl]
    add b
    inc bc
    nop
    ldh [rNR12], a
    ld b, [hl]
    add a
    pop bc
    rst $08
    rrca
    ld b, a
    dec de
    ld b, a
    adc l
    db $10
    ld [$1889], sp
    ld b, a
    ld hl, $088d
    ld c, $89
    ld a, [de]
    ld b, a
    ld hl, $0f8d
    ld [$1c89], sp
    ld b, a
    ld hl, $088d
    rrca
    adc c
    ld e, $47
    ld hl, $9ac0
    ld b, [hl]
    add b
    inc bc
    xor b
    nop
    adc l
    inc c
    ld [$1089], sp
    ld b, a
    ld b, a
    adc l
    ld [$890c], sp
    ld [de], a
    ld b, a
    ld b, a
    adc l
    inc c
    ld [$1489], sp
    ld b, a
    ld b, a
    adc l
    ld [$890c], sp
    ld d, $47
    ld b, a
    ret nz

    sbc d
    ld b, [hl]
    add b
    inc bc
    ldh [$29], a
    ld b, [hl]
    add a
    ret nz

    adc $6f
    ld b, a
    ld a, c
    ld b, a
    or $e3
    ld c, l
    add b
    rst $38
    nop
    adc l
    ld a, [bc]
    ld [$1089], sp
    adc e
    ld [bc], a
    ld b, a
    ld l, d
    adc l
    ld [$890a], sp
    ld d, $8b
    ld [bc], a
    ld b, a
    ld l, d
    adc e
    ld d, b
    cp d
    db $e3
    ld d, b
    xor $10
    sub [hl]
    ld [$7ec6], sp
    and a
    ld b, a
    and b
    ld b, a
    sbc b
    inc c
    adc [hl]
    ld a, l
    ld bc, $a947
    sbc b
    ld bc, $10ec
    sub [hl]
    ld [$00b9], sp
    sbc b
    nop
    nop
    sbc b
    jr nz, jr_00b_47b5

jr_00b_47b5:
    sbc b
    ld h, $00
    add $77
    ld [c], a
    ld b, a
    db $ec
    ld b, a
    cp $47
    ld a, [c]
    ld b, a
    ld hl, sp+$47
    ld [$1448], sp
    ld c, b
    ld [c], a
    ld b, a
    ld [c], a
    ld b, a
    ld [c], a
    ld b, a
    ld [c], a
    ld b, a
    ld [c], a
    ld b, a
    ld [c], a
    ld b, a
    ld e, $48
    jr z, jr_00b_4820

    ld [hl-], a
    ld c, b
    inc a
    ld c, b
    ld b, [hl]
    ld c, b
    ld c, h
    ld c, b
    ld d, d
    ld c, b
    sbc d
    inc e
    ret nz

    ld e, h
    ld c, b
    sub d
    ccf
    add $01
    nop
    sbc d
    ld [bc], a
    ret nz

    ld e, h
    ld c, b
    nop
    sbc d
    inc bc
    ret nz

    ld e, h
    ld c, b
    nop
    sbc d
    inc b
    ret nz

    ld e, h
    ld c, b
    nop
    sbc d
    dec e

Jump_00b_4800:
    ret nz

    ld e, h
    ld c, b
    sub d
    ccf
    add $02
    nop
    sbc d
    ld e, $c0
    ld e, h
    ld c, b
    sub d
    ccf
    add $08
    sbc b
    daa
    nop
    sbc d
    dec e
    ret nz

    ld e, h
    ld c, b
    sub d
    ccf
    add $04
    nop
    sbc d
    dec de

jr_00b_4820:
    ret nz

    ld e, h
    ld c, b
    sub d
    ld b, e
    add $20
    nop
    sbc d
    dec e
    ret nz

    ld e, h
    ld c, b
    sub d
    ld b, b
    add $01
    nop
    sbc d
    inc hl
    ret nz

    ld e, h
    ld c, b
    sub d
    ld b, b
    add $02
    nop

jr_00b_483c:
    sbc d
    dec h
    ret nz

    ld e, h
    ld c, b
    sub d
    ld b, b
    add $04
    nop
    sbc d
    add hl, hl
    ret nz

    ld e, h
    ld c, b
    nop
    sbc d
    ld a, [hl+]
    ret nz

    ld e, h
    ld c, b
    nop
    sbc d
    dec e
    ret nz

    ld e, h
    ld c, b
    sub d
    ccf
    add $20
    nop
    jp Jump_00b_6c00


    ld c, b
    sub c
    xor l
    rlc e
    sub c
    and b
    rlc c
    adc [hl]
    ld a, d
    rst $38
    nop
    set 5, h
    call z, $8000
    ld c, b
    sbc b
    ld b, $8e
    ld a, d
    rst $38
    cp c
    nop
    ret nz

    db $76
    ld c, c
    sbc b
    ld b, $48
    ld [hl], h
    add $78
    add [hl]
    ld c, b
    adc a
    ld c, b
    sub c
    and b
    rlc c
    adc [hl]
    ld a, d
    ld bc, $c1bb
    sub c
    xor l
    rlc d
    sub c

jr_00b_4894:
    and b
    rlc c
    adc [hl]
    ld a, d
    rst $38
    nop
    adc e
    ld d, b
    db $e3
    ld d, b
    xor $10
    db $ed
    jr jr_00b_483c

    rlca
    rst $28
    jr jr_00b_4894

    db $10
    sub [hl]
    ld [$00b9], sp
    adc e
    ld d, b
    db $ec
    db $10
    sbc b
    rlca
    cp d
    xor $10
    sub [hl]
    ld [$00b9], sp
    or e
    ccf
    add b
    rst $00
    ld c, b
    sbc b
    dec c
    sub d
    ccf
    add $80
    ld c, b
    ret


    sbc b
    ld c, $ba
    jp $d200


    ld c, b
    sbc b
    ld de, $00b9
    set 5, h
    call z, Call_00b_7c01
    ld c, b
    ldh [$3a], a
    ld b, [hl]
    adc e
    ld d, b
    adc l
    ld b, $06
    db $ec
    ld [$19ed], sp
    db $ec
    ld a, [de]
    db $ed
    ld de, $08ee
    ld c, b
    rst $28
    ldh [$3a], a
    ld b, [hl]
    sub [hl]
    ld [$458e], sp

jr_00b_48f3:
    ld [bc], a
    adc [hl]
    ld b, h
    dec b
    ld hl, sp-$6a
    jr jr_00b_48f3

    sub [hl]

jr_00b_48fc:
    db $10
    adc [hl]
    ld a, h
    nop
    sbc b
    db $10
    cp c
    sub d
    ld [$80cc], a
    adc [hl]
    ld b, l
    nop
    adc [hl]
    ld b, h
    dec b
    cp d
    sbc b
    rla
    jp $1c01


    ld c, c
    set 5, h
    call z, Call_00b_7901
    ld c, b
    ld c, b
    db $ec
    ret nz

    db $76
    ld c, c
    cp c
    nop
    cp d
    add $7c
    jr nc, jr_00b_496f

    jr nc, jr_00b_4971

    jr nc, @+$4b

    ld b, h
    ld c, c
    ld d, h
    ld c, c
    ld h, h
    ld c, c
    sbc b
    inc de
    sub [hl]
    ld [$458e], sp

jr_00b_4936:
    ld [bc], a
    adc [hl]
    ld b, h
    dec b
    ld hl, sp-$6a
    jr jr_00b_4936

    sub [hl]
    db $10
    sbc b
    jr jr_00b_48fc

    nop
    sbc b
    ld [de], a
    jp $3000


    ld c, c
    sbc b
    inc d
    adc [hl]
    ld a, a
    inc bc
    ret nz

    db $76
    ld c, c
    cp c
    nop
    sbc b
    dec d
    jp $3000


    ld c, c
    sbc b
    inc d
    adc [hl]
    ld a, a
    ld [bc], a
    ret nz

    db $76
    ld c, c
    cp c
    nop
    sbc b
    ld d, $8e
    ld a, a
    ld bc, $76c0
    ld c, c
    cp c
    nop
    sbc b

jr_00b_496f:
    ld a, [de]
    adc [hl]

jr_00b_4971:
    ld b, l
    ld bc, $448e
    dec b
    db $ec
    ld [$11ef], sp
    xor $1a
    rst $28
    add hl, de
    xor $08
    sub [hl]
    ld [$068d], sp
    inc d
    pop bc
    sbc b
    jr z, jr_00b_4989

jr_00b_4989:
    ld hl, sp-$80
    rst $38
    di
    db $e3
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $78ea
    ldh [rPCM34], a
    ld b, [hl]
    push af
    db $e3
    or h
    ldh [rLY], a
    ld sp, $bad1
    add sp, -$1f
    rst $20
    ld [hl-], a
    pop hl
    rst $20
    inc [hl]
    pop hl
    add b
    rst $38
    ld hl, sp-$20
    ld [hl], c
    ld sp, $b1d1
    add b
    or [hl]
    dec c
    db $e3
    ld c, l
    xor b
    nop
    adc l
    add hl, bc
    add hl, bc
    or $d0
    sub d
    xor a
    call z, $e080
    adc d
    dec hl
    adc a
    rst $38
    add b
    rst $38
    db $e3
    ld b, $e0
    ld bc, $fb49
    ei
    db $e3
    or h
    push af
    db $e3
    or h
    push af
    db $e3
    or h
    rst $30
    db $e3
    or h
    ldh [$09], a
    ld c, c
    nop
    adc l
    ld [de], a
    ld b, $9b
    cp [hl]
    sbc [hl]
    cp l
    or l
    ld [$4a44], sp
    rlc c
    call z, $0c00
    ld c, d
    rst $00
    dec d
    add $01
    ei
    ld c, c
    ld c, d
    inc c
    sbc b
    ld a, $cc
    db $76
    ld bc, $4a08
    sbc b
    dec sp
    ldh [rIF], a
    ld c, c
    ldh a, [$ba]
    sbc c
    ld c, d
    dec sp
    sbc d
    nop
    jp $1600


    ld c, d
    sbc d
    ld a, [hl-]
    ld c, d
    ld c, $cc
    db $76
    ld bc, $4a23
    sbc b
    dec sp
    ldh [rIF], a
    ld c, c
    ldh a, [$ba]
    sbc c
    sbc b
    ccf
    ldh [$a6], a
    ld c, c
    ldh a, [$ba]

jr_00b_4a2a:
    sbc c
    sbc b
    inc sp
    pop hl
    daa
    ld c, c
    nop
    di
    sbc b
    inc de
    pop hl
    daa
    ld c, c
    ld bc, $98f3
    ld [$08b6], sp
    sub d
    dec d
    add $01
    cp [hl]
    ld c, c
    and $e0
    ld l, e
    ld c, c
    add $7b
    ld d, c
    ld c, d
    ld d, l
    ld c, d
    ld e, c
    ld c, d
    ld h, c
    ld c, d
    sbc b
    ld [hl], $4a
    ld e, e
    sbc b
    scf
    ld c, d
    ld e, e
    sbc b
    add hl, sp
    sbc c
    ldh [$ae], a
    ld c, c
    ld c, c
    and $9a
    inc bc
    jp Jump_00b_7000


    ld c, d
    jp Jump_00b_7b01


    ld c, d
    cp [hl]
    sbc b
    ld [$e649], sp
    call z, $0077
    sbc b
    ld c, d
    pop hl
    daa
    ld c, c
    nop
    ld c, d
    add h
    call z, $0078
    sbc h
    ld c, d
    pop hl
    daa
    ld c, c
    ld bc, $b5f3
    add hl, bc
    adc [hl]
    ld c, d
    sbc b
    ld [$49be], sp
    and $98
    jr c, jr_00b_4a2a

    or [hl]
    adc c
    ldh [$aa], a
    ld c, c
    ld c, c
    and $98
    inc d
    ld c, c
    and $98
    dec d
    ld c, c
    and $9a
    add hl, bc
    jp $ac00


    ld c, d
    sub c
    and b

jr_00b_4aa8:
    rlc c
    cp [hl]
    nop
    or $9a
    ld a, [bc]
    jp $b701


    ld c, d
    sbc d
    dec bc
    ld c, d
    cp c
    sbc d
    inc c
    jp $ac00


    ld c, d
    sub c
    and b
    rlc c
    nop
    sbc d
    rra
    jp $d601


    ld c, d
    ld c, d
    ret nc

    sbc d
    inc h
    jp $d602


    ld c, d
    cp d
    ldh [rLY], a
    ld c, c
    ldh a, [rP1]
    sbc b
    ld l, $00
    sbc b
    rrca
    nop
    sbc b
    ld sp, $9800
    ld a, [hl+]
    nop
    sbc d
    jr jr_00b_4aa8

    ld [bc], a
    inc b
    ld c, e
    jp $f700


    ld c, d
    ldh [$39], a
    ld c, c
    sbc d
    dec e
    jp $ef00


    ld c, d
    ld c, e
    inc b
    ldh [$34], a
    ld c, c
    ldh a, [$cb]
    and e
    call z, $0700

Jump_00b_4b00:
    ld c, e

Call_00b_4b01:
    sbc b

Call_00b_4b02:
    ld e, $00
    sbc b
    stop

Call_00b_4b07:
    sbc b
    daa
    nop
    cp d
    sbc b
    inc hl
    ldh [$ae], a

jr_00b_4b0f:
    ld c, c
    ldh a, [$99]
    cp c
    nop
    sbc b
    daa
    nop
    or $98
    ld d, l
    dec c
    jp $2800


    ld c, e

jr_00b_4b1f:
    ldh [$b7], a
    ld c, c
    ldh [$b4], a
    add hl, bc
    or $4b
    jr nc, jr_00b_4b1f

    sbc b
    ld d, l
    ld c, $c3
    nop
    rla
    ld c, e
    sub c
    sbc $cf
    ld bc, $9100
    and b
    rlc c
    sbc [hl]
    sbc d
    add hl, de
    jp $3501


    ld c, e
    sbc b
    ld a, [de]
    ld c, e
    add hl, sp
    sub c
    and b
    rlc c
    sbc [hl]
    sbc d
    jr nz, jr_00b_4b0f

    ld bc, $4b44
    sbc d
    dec h
    jp $6101


    ld c, e
    jp Jump_00b_4402


    ld c, e
    sbc d
    dec a
    jp Jump_00b_4401


    ld c, e
    ld c, e
    ld c, a
    sbc d
    ld h, $c3
    ld bc, $4b44
    ld c, e
    ld c, a
    rst $08
    jp nc, $80b1

    push af
    add h
    ld a, [hl]
    nop
    nop
    nop
    sub c
    jp z, $00cb

    nop
    call $bad5
    call z, $e301
    ld c, l
    ld [c], a
    db $f4
    add sp, -$0f
    nop
    or b
    add b
    adc e
    ld c, e
    jp nc, $80b1

    call Call_00b_5888
    ld a, b
    db $dd
    ld a, [hl+]
    nop
    sub c
    jp z, $00cb

    nop
    call $fcfc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    call $98e3
    ld [c], a
    add sp, -$60
    nop
    or b
    add b
    xor l
    ld c, e
    jp nc, $80b1

    call $8888
    ld a, b
    db $dd
    ld a, [hl+]
    nop
    sub c
    jp z, $00cb

    nop
    ldh [$81], a
    ld d, h
    push de
    cp d
    call z, $e001
    inc c
    ld d, l
    nop
    ldh [$87], a
    ld d, h
    ldh a, [rWX]
    call nz, $d2cf
    or c
    add b
    push af
    ld [c], a
    add sp, $44
    add h
    ld a, [hl]
    nop
    nop
    nop
    ld c, e
    ld [hl], e
    or b
    add b
    ld [c], a
    ld c, e
    jp nc, $e2f8

    add sp, $45
    call $2088
    ld a, b
    ld c, e
    or c
    ldh [rNR12], a
    ld d, l
    nop
    rst $08
    jp nc, $80b1

    add h
    dec b
    nop
    jr c, @-$66

    ld a, [c]
    add sp, $50
    db $e3
    ld c, l
    nop
    or b
    add b
    ld b, $4c
    push de

Jump_00b_4c00:
    xor c

Call_00b_4c01:
    call z, $b103
    add b
    ld a, [c]
    call Call_00b_7d4b
    call $31dd
    ld [bc], a
    nop
    call $bad5
    call z, $ddff
    jr nc, jr_00b_4c17

    nop

jr_00b_4c17:
    rst $08
    push de
    xor c
    call z, $e002
    rst $00
    ld d, h
    nop
    call $31dd
    nop
    nop
    rst $08
    or $d2
    or c
    add b
    nop
    call $bad5
    call z, $dd01
    jr nc, jr_00b_4c34

    nop

jr_00b_4c34:
    rst $08
    db $d3
    nop
    ld sp, $89cc
    cp h
    ldh [$2a], a
    ld d, l
    db $e3
    ld c, l
    or c
    add b
    ld [c], a
    ld a, [c]
    add sp, $46
    nop
    rst $08
    push de
    cp d
    call z, $8901
    cp [hl]
    ld c, h
    dec sp
    adc c
    ld [bc], a
    ldh [$c5], a
    ld d, [hl]
    ld a, [c]
    ld c, h
    ld d, d
    rst $08
    push de
    xor c
    call z, $d705
    dec l
    adc c
    call nz, $3b4c
    push de
    cp d
    call z, $e001
    sub d
    ld d, [hl]
    nop
    adc c
    inc b
    ld c, h
    ld d, d
    ldh [$3d], a
    ld d, l
    add a
    pop bc
    rst $08
    ld l, a
    ld c, h
    ld a, e
    ld c, h
    add l
    ld c, h
    db $e3
    ld c, l
    ld [c], a
    or $e8
    ld b, h
    ldh [$30], a
    ld d, l
    nop
    ld hl, sp-$1d
    ld e, d
    ld hl, sp-$20
    sub d
    ld d, [hl]
    ld hl, sp-$2e
    ld c, h
    ld l, a
    adc c
    jr c, jr_00b_4cdf

    ld d, d
    rst $08
    db $d3
    ld b, $31
    call z, $34e0
    ld d, l
    or c
    add b
    db $e3
    ld c, l
    ld [c], a
    or $e8
    ld b, l
    nop
    or b
    add b
    adc e
    ld c, e
    jp nc, $80b1

    adc b
    ld [$e278], sp
    or $e8
    ld b, [hl]
    ld c, e
    adc e
    push de
    cp d
    call z, $e001
    ld d, c
    ld d, l
    rst $08
    or c
    add b
    nop
    call $28dd
    ld a, [bc]
    or b
    jr nz, @-$33

    ld c, h
    ld a, [c]
    ld c, h
    call nz, $1483
    ld bc, $e048
    ld h, d
    ld d, l
    nop
    adc $d5
    cp d
    call z, $e001
    ret nc

    ld d, l
    nop
    call $80b0

jr_00b_4cdf:
    ld [c], a
    ld c, h
    nop
    db $dd
    jr nc, jr_00b_4ce6

    nop

jr_00b_4ce6:
    adc c
    ld bc, $40b0
    cp $4c
    push de
    cp d
    call z, Call_00b_4c01
    ld a, [$ace0]
    ld h, $b0
    ld b, b
    cp $4c
    jp nc, $40b1

    db $e3
    ld c, l
    ld a, [c]
    ld [c], a
    db $f4
    ldh [$d7], a
    ld d, [hl]
    nop
    call $40b0
    ld a, l
    ld c, e
    push de
    cp d
    call z, $b101
    ld b, b
    ld c, e
    ld a, l
    ldh [$78], a
    ld d, l
    nop
    call $ba87
    call z, Call_00b_4d1e
    inc hl
    ld c, l

Call_00b_4d1e:
    ldh [$ab], a
    ld d, l
    ld c, l
    ld d, $e0
    cp c
    ld d, l
    ld c, l
    ld d, $83
    inc d
    call nc, $8347
    inc d
    db $eb
    ld b, a
    adc $e0
    db $ed
    ld d, l
    add a
    pop bc
    rst $08
    dec sp
    ld c, l
    ccf
    ld c, l
    add e
    inc d
    ld [hl], b
    ld b, a
    db $e3
    ld c, l
    or c
    ld b, b
    nop
    adc $e0
    db $fd
    ld d, l
    add a
    pop bc
    rst $08
    ld c, a
    ld c, l
    ccf
    ld c, l
    add e
    inc d
    and d
    ld b, a
    rst $08
    jp nc, $80b1

    ldh [$d2], a
    ld d, h
    nop
    rst $08
    push de
    ld sp, $01cc
    ldh [$df], a
    ld d, h
    nop
    rst $08
    push de
    cp d
    call z, $e001
    ld [$0054], a
    rst $08
    adc [hl]
    ld c, b
    sub [hl]
    ldh [rSB], a
    ld d, [hl]
    add $49
    ld [hl], c
    ld c, l
    ret c

    ld b, l
    pop hl
    xor $56
    and b
    rst $08
    push de
    xor c
    call z, $b107
    add b
    ld [c], a
    or $e8
    ld b, h
    db $e3
    ld c, l
    nop
    adc $e0
    dec [hl]
    ld d, [hl]
    db $fc
    ldh [rSTAT], a
    ld d, [hl]
    ld c, l
    sub b
    rst $08
    ld a, [c]
    ldh [$78], a
    ld d, [hl]
    add a
    pop bc
    rst $08
    sub a
    ld c, l
    and d
    ld c, l
    or c
    add b
    db $e3
    ld c, l
    ld [c], a
    push af
    add sp, $45
    nop
    rst $08
    push de
    cp d
    call z, $e001
    push af
    ld d, h
    nop
    rst $08
    push de
    cp d
    call z, $4d07
    add e
    call $bad5
    call z, Call_00b_4b07
    ld a, l
    adc $d2
    or c
    ld b, b
    db $e3
    ld c, l
    nop
    ldh [$e0], a
    ld d, [hl]
    nop
    call $a9d5
    call z, Call_00b_4b01
    ld a, l
    call $a9d5
    call z, Call_00b_4b02
    ld a, l
    adc c
    ccf
    ld c, h
    ld d, d
    call $bad5
    call z, $f8ff
    jp nc, $30dd

    ld bc, $a000
    cp l
    db $e4
    ldh a, [$f8]
    ld [$f878], a
    or c
    add b
    add b
    rst $38
    nop
    cp l
    or c
    ld b, b
    sub c
    xor [hl]
    rlc h
    db $e4
    ld e, $f7
    ldh [$66], a
    ld a, [de]
    pop hl
    ld a, [de]
    ld d, a
    ld [bc], a
    pop de
    add h
    ld c, b
    nop
    ld b, b
    ld d, b
    db $fc
    ld hl, sp-$40
    dec h
    ld c, [hl]
    ldh [rOCPS], a
    ld a, [de]
    ldh [$a6], a
    inc l
    pop hl
    ld e, h
    ld sp, $d102
    db $e4
    rst $38
    cp [hl]
    ldh [$6c], a
    ld d, a
    nop
    add $42
    dec a
    ld c, [hl]
    ld b, d
    ld c, [hl]
    ld b, a
    ld c, [hl]
    ld c, h
    ld c, [hl]
    ld e, [hl]
    ld c, [hl]
    ld [hl], b
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    ld a, d
    ld c, [hl]
    ld a, a
    ld c, [hl]
    add e
    ld c, [hl]
    ld a, d
    ld c, [hl]
    pop hl
    dec [hl]
    ld d, a
    inc b
    pop bc
    pop hl
    dec [hl]
    ld d, a
    rlca
    pop bc
    pop hl
    dec [hl]
    ld d, a
    add hl, bc
    pop bc
    ldh [rLY], a
    ld d, a
    call z, $017f
    ld e, c
    ld c, [hl]
    pop hl
    dec [hl]
    ld d, a
    dec bc
    pop bc
    pop hl
    dec [hl]
    ld d, a
    db $10
    pop bc
    ldh [rOBP0], a
    ld d, a
    call z, $017f
    ld l, e
    ld c, [hl]
    pop hl
    dec [hl]
    ld d, a
    dec c
    pop bc

jr_00b_4e6b:
    pop hl
    dec [hl]
    ld d, a
    rrca
    pop bc
    pop hl
    dec [hl]
    ld d, a
    ld [de], a
    pop bc
    pop hl
    dec [hl]
    ld d, a
    inc d
    pop bc
    pop hl
    dec [hl]
    ld d, a
    ld d, $c1
    sbc b
    rla
    ld [hl], $c1
    sbc b
    ld d, b
    rlca
    pop bc
    adc l
    inc d
    jr nz, jr_00b_4e6b

    ld d, a
    ld d, a
    add a
    ret nz

    rst $08
    adc d
    ld c, [hl]
    sub h
    ld c, [hl]
    sbc $05
    inc bc
    cp l
    ld hl, sp-$80
    rst $38
    or c
    add b
    call nc, HeaderNewLicenseeCode
    db $e3
    ld c, l
    ld hl, sp-$42
    nop
    add e
    inc d
    jr nc, @+$4a

    add e
    inc d
    ld c, c
    ld c, b
    or b
    ld b, b
    dec de
    ld c, a
    rst JumpTable
    rlca
    jp nc, $884e

    jr z, jr_00b_4f28

    adc l
    inc b
    db $10
    sbc e
    sbc [hl]
    cp l
    sub c
    ret nz

    rst $08
    nop
    ldh [$9b], a
    ld d, a
    xor b
    db $e3
    ret


    and c
    rst $30
    sbc b
    ld de, $aaf2
    or $be
    ld c, [hl]
    cp h
    adc l
    ld [$d004], sp
    cp l
    ldh [$97], a
    ld d, a
    xor b
    db $e3
    ret


    and c
    ret nz

    sub b
    ld c, a
    ldh [$88], a
    ld d, a
    di
    db $e3
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $aad1
    push af
    pop hl
    ld e, h
    ld sp, $d104
    ret nz

    xor d
    ld c, a
    ldh [$b6], a
    ld d, a
    add $7f
    jr jr_00b_4f57

jr_00b_4f08:
    inc c
    ld c, a
    ld de, $f64f
    sbc b
    ld c, $4f
    jr jr_00b_4f08

    sub c
    xor [hl]
    rl b
    sbc b
    rrca
    or c
    ld b, b
    cp [hl]
    adc b
    jr z, jr_00b_4f8e

    adc l
    inc b
    db $10
    sbc e
    sbc [hl]
    cp l
    sub c
    ret nz

    rst $08
    nop

jr_00b_4f28:
    ldh [$9b], a

jr_00b_4f2a:
    ld d, a
    xor b
    db $e3
    ret


    and c
    rst $30
    ret nz

    add hl, sp
    ld c, a
    ld a, [c]
    xor d
    or $be
    ld c, a
    ld [hl+], a
    or l
    jr z, jr_00b_4f98

    ld c, a
    call z, $017e
    db $76
    ld c, a
    add $43
    ld c, h
    ld c, a
    ld c, a
    ld c, a
    ld d, d
    ld c, a
    ld e, c
    ld c, a
    sbc b
    add hl, bc
    pop bc
    sbc b
    rlca
    pop bc
    sub c
    xor [hl]
    rl b
    sbc b

jr_00b_4f57:
    dec bc
    pop bc
    sbc b
    dec b
    pop bc
    add $43
    ld h, [hl]
    ld c, a
    ld l, c
    ld c, a
    ld l, h
    ld c, a
    ld [hl], e
    ld c, a
    sbc b
    jr jr_00b_4f2a

    sbc b
    add hl, de
    pop bc
    sub c
    xor [hl]
    rl b
    sbc b
    ld a, [de]
    pop bc
    sbc b
    dec de
    pop bc
    add $43
    add b
    ld c, a
    add e
    ld c, a
    add [hl]
    ld c, a
    adc l
    ld c, a
    sbc b
    inc d
    pop bc
    sbc b
    dec d
    pop bc
    sub c
    xor [hl]
    rl b
    sbc b
    ld d, $c1
    sbc b

jr_00b_4f8e:
    rla
    pop bc
    add $43
    sbc d
    ld c, a
    sbc l
    ld c, a
    and b
    ld c, a

jr_00b_4f98:
    and a
    ld c, a
    sbc b
    ld [$98c1], sp
    ld b, $c1
    sub c
    xor [hl]
    rl b
    sbc b
    ld a, [bc]
    pop bc
    sbc b

jr_00b_4fa8:
    inc b
    pop bc
    add $43
    or h
    ld c, a
    cp b
    ld c, a
    cp h
    ld c, a
    call nz, $de4f
    rlca
    ld [bc], a
    pop bc
    sbc $07
    inc bc
    pop bc
    sub c
    xor [hl]
    rl b
    sbc $07
    inc b
    pop bc
    sbc $07
    dec b
    pop bc
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    or b
    jr nz, jr_00b_4fa8

    ld c, a
    sbc b
    ld sp, $f50b
    sbc $34
    inc b
    ld c, a
    sbc $98
    ld sp, $4f00
    ret


    push af
    sbc b
    ld sp, $4f0c
    ret


    db $eb
    cp [hl]
    sbc [hl]
    cp l
    or l
    ld h, e
    jr nc, jr_00b_503c

    sbc b
    ld sp, $c302
    nop
    rst $38
    ld c, a
    push af
    sbc b
    ld sp, $4f03
    push hl
    push af
    sbc b
    ld sp, $4f04
    push hl
    add [hl]
    add hl, hl
    push af
    add a
    and e
    call z, Call_00b_5009
    ld sp, hl
    ld c, a

Call_00b_5009:
    sbc b
    ld sp, $f505
    rst JumpTable
    inc l
    ld a, [de]
    ld d, b
    sbc b
    ld sp, $f509
    sbc $2c
    inc bc
    ld d, b
    cpl
    sbc b
    ld sp, $f508
    ldh [$c4], a
    ld e, c
    res 5, b
    rlc l
    inc l
    ld d, b
    sbc $2c
    ld bc, $2f50
    sbc $2c
    ld [bc], a
    push af
    add [hl]
    add hl, sp
    sbc b
    ld sp, $f506
    jp $3201


    ld d, b
    or [hl]
    ld h, e

jr_00b_503c:
    sbc b
    ld sp, $4f07
    push hl
    db $eb
    or b
    ld b, b
    ld l, h
    ld d, b
    sbc [hl]
    sbc b
    dec bc
    ld a, [de]
    ret z

    inc bc
    ld d, b
    ld d, b
    ld d, b
    ld b, [hl]
    cp l
    or $98
    dec bc
    dec de
    jp Jump_00b_6200


    ld d, b
    or $98
    dec bc
    ld e, $be
    sbc [hl]
    cp l
    ld d, b
    ld d, d
    or $98
    dec bc
    inc e
    sbc $41
    inc bc
    or c
    ld b, b
    cp [hl]
    sbc [hl]
    sbc b
    dec bc
    dec e
    ld d, b
    ld l, h
    adc l
    ld a, [bc]
    ld b, $9b
    or b
    ld b, b
    sbc c
    ld d, b
    add a
    xor c
    call z, Call_00b_5081
    adc [hl]
    ld d, b

Call_00b_5081:
    call z, $0071
    ld a, d
    ld d, b
    adc [hl]
    ld [hl], c
    nop
    sbc b
    dec bc
    nop
    ld d, b
    ld a, d
    cp l
    rst $30
    sbc b
    dec bc
    ld bc, $41de
    nop
    or c
    ld b, b
    cp [hl]
    sbc [hl]
    cp l
    adc [hl]
    ld [hl], e
    dec bc
    sub e
    ld [hl], d
    rrca
    sub h
    ld [hl], d
    ld [bc], a
    sbc l
    cp [hl]
    ld d, b
    sbc c
    sub a
    ld d, $00
    sub a
    ld d, $02
    sub a
    ld d, $03
    sub a
    ld d, $04
    sub a
    ld d, $05
    sub a
    ld d, $06
    sub a
    ld d, $07
    db $eb
    or b
    ld b, b
    add sp, $50
    sbc [hl]
    sbc b
    dec bc
    ld [de], a
    ret z

    ld bc, $50cc
    ld d, b
    jp nz, $f6bd

    sbc b
    dec bc
    inc de
    jp $de00


    ld d, b
    or $98
    dec bc
    ld d, $be
    sbc [hl]
    cp l
    ld d, b
    adc $f6
    sbc b
    dec bc
    inc d
    sbc $41
    ld bc, $40b1
    cp [hl]
    ldh [$ce], a
    ld d, a
    add $7c
    pop af
    ld d, b
    rst $30
    ld d, b
    sbc [hl]
    sbc b
    dec bc
    dec d
    ld d, b
    pop af
    add h
    ld b, l
    ld bc, $7868
    sbc [hl]
    sbc b
    dec bc
    rla
    ld d, b
    db $fc
    adc [hl]
    ld e, h
    ld bc, $3e97
    dec b
    db $fc
    ld d, c
    ld [$5c8e], sp
    ld bc, $51fc
    ld c, $97
    ld a, $07
    sbc h
    inc bc
    add hl, de
    or l
    ld d, $1e
    ld d, c
    sbc h
    nop
    add hl, de
    db $eb
    sbc [hl]
    cp d
    sub b
    ld c, c

jr_00b_5123:
    adc a
    cp $49
    sbc l
    cp c
    ld d, c
    rra
    or l
    ld d, $34
    ld d, c
    db $eb
    sbc h
    ld bc, $5119
    rra
    adc b
    ld e, b
    jr c, jr_00b_5123

    sbc h
    inc bc
    add hl, de
    sbc [hl]
    cp d
    sub b
    ld c, c
    adc a
    cp $49
    sbc l
    cp c
    ld d, c
    cpl
    sbc h
    ld [bc], a
    add hl, de
    ld d, c
    ld e, $9c
    inc b
    add hl, de
    ld d, c
    ld e, $9c
    dec b
    add hl, de
    ld d, c
    ld e, $97
    rrca
    nop
    sub a
    rrca
    ld bc, $0f97
    inc bc
    sub a
    rrca
    ld [bc], a
    sub a
    rrca
    inc b
    sub a
    rrca
    dec b
    sub a
    rrca
    ld b, $97
    rrca
    rlca
    sub a
    rrca
    ld [$5c8e], sp
    ld [bc], a
    sub a
    ld c, $21
    db $eb
    sbc [hl]
    sbc l
    ldh [$e0], a
    ld d, a
    ld d, c
    ld [hl], a
    sub a
    dec de
    nop
    sub a
    dec de
    ld bc, $1b97
    ld [bc], a
    sub a
    dec de
    inc bc
    sub a
    ld [de], a
    nop
    db $eb
    sbc [hl]
    cp b
    sbc b
    ld [de], a
    ld bc, $01c3
    sbc l
    ld d, c
    or $98
    ld [de], a
    ld [bc], a
    ld d, c
    and c
    or $98
    ld [de], a
    inc bc
    cp c
    ld d, c
    adc [hl]
    sub a
    ld [de], a
    inc b
    sub a
    ld [de], a
    dec b
    sub a
    ld [de], a
    ld b, $97
    ld [de], a
    ld b, $97
    ld [de], a
    ld [$009c], sp
    db $10
    rlc c
    call z, $c401
    ld d, c
    adc l
    inc bc
    dec bc
    sbc e
    sbc [hl]
    sbc l
    ld d, c
    ret nz

    sbc h
    ld bc, $5110
    cp h
    sbc h
    ld [bc], a
    db $10
    ld d, c
    cp h
    sbc h
    inc bc
    db $10
    ld d, c
    cp h
    sbc h
    inc b
    db $10
    ld d, c
    cp h
    sbc h
    dec b
    db $10
    ld d, c
    cp h
    sbc h
    ld b, $10
    ld d, c
    cp h
    sbc h
    rlca
    db $10
    ld d, c
    cp h
    sbc h
    ld [$5110], sp
    cp h
    sbc h
    add hl, bc
    db $10
    ld d, c
    cp h
    adc l
    rrca
    ld b, $9b
    or b
    ld b, b
    rra
    ld d, d
    sbc [hl]
    sbc b
    dec bc
    ld b, e
    ret z

    ld a, [bc]
    inc bc
    ld d, d
    ld d, c
    ld sp, hl
    cp l
    or $98
    dec bc
    ld b, h
    jp $1500


    ld d, d
    or $98
    dec bc
    ld b, a
    cp [hl]
    sbc [hl]
    cp l
    ld d, d
    dec b
    or $98
    dec bc
    ld b, l
    sbc $41
    ld a, [bc]
    or c
    ld b, b
    cp [hl]
    sbc [hl]
    sbc b
    dec bc
    ld b, [hl]
    ld d, d

jr_00b_5224:
    rra
    sub a
    inc [hl]
    db $eb
    or b

jr_00b_5229:
    ld b, b
    ld l, b
    ld d, d
    sbc [hl]
    cp l
    sbc b
    ld sp, $07c8
    scf
    ld d, d
    cp [hl]
    ld d, d
    inc l
    or $98
    ld [hl-], a
    jp $4600


jr_00b_523d:
    ld d, d
    or $98
    scf
    cp [hl]
    sbc [hl]
    cp l
    ld d, d
    jr c, jr_00b_523d

    sub c
    sbc $cf
    nop
    add h
    ld e, l
    ld b, $44
    ld l, b
    sbc b
    inc sp
    sub d
    db $eb
    call z, $9801
    inc [hl]
    rst $10
    jr nz, @-$6f

    ld [bc], a
    sub c
    sbc $cf
    ld b, b
    sbc b
    dec [hl]
    sbc $41
    rlca
    or c
    ld b, b
    cp [hl]
    sbc [hl]
    sbc b
    ld [hl], $52
    ld l, b
    db $eb
    rst JumpTable
    rlca
    db $e3
    ld d, d
    or b
    ld b, b
    db $d3
    ld d, d
    ldh a, [$cc]
    ld [hl], a
    ld bc, $528b
    call z, $0071
    add [hl]
    ld d, d
    adc [hl]
    ld [hl], c
    nop
    sbc b
    ld [bc], a
    ldh [$30], a

jr_00b_5288:
    dec a
    ld d, d
    db $76
    cp l
    ldh [$e5], a
    ld d, a
    db $e3
    ld d, b
    rst $10
    ld b, b
    adc l
    nop
    nop
    adc a
    ld b, $8b
    jr z, jr_00b_5224

    jr jr_00b_5229

    db $10

jr_00b_529e:
    di
    adc c
    db $10
    ldh a, [$e0]
    di
    ld d, a
    call z, $0076
    and c
    ld d, d
    push af
    sub c
    ld [$00d0], sp
    sbc b
    nop

jr_00b_52b1:
    push af
    adc c
    nop
    adc a
    rlca
    ldh a, [$e1]
    ld [de], a
    ld e, b
    jr z, jr_00b_5288

    db $76
    ld bc, $52b6
    adc c
    ld [$108c], sp
    or c
    ld b, b
    adc l
    ld b, $06
    adc a
    ld b, $f5
    adc a
    inc b
    or $be
    or $8f
    nop
    ldh a, [$e0]
    jr nc, @+$3f

    call z, $0071
    db $d3
    ld d, d
    adc [hl]
    ld [hl], c
    nop
    sbc b
    ld [bc], a
    ld d, d
    db $d3
    adc a
    ld [bc], a
    adc [hl]
    ld b, e
    ld bc, $21e0
    ld e, b
    add a
    ret nz

    rst $08
    db $f4
    ld d, d
    or $52
    ld hl, sp+$52
    sub a
    ld bc, $0397
    sub a
    ld a, [bc]
    call z, $0177
    dec b
    ld d, e
    ldh a, [$e0]
    jr nc, @+$3f

    ld d, d
    ld a, [$e0bd]
    push hl
    ld d, a
    db $e3
    ld d, b
    rst $10
    ld b, b
    sbc b
    inc b
    rst $30
    adc a
    ld b, $8b
    jr z, jr_00b_529e

    db $10
    ldh a, [$e0]
    jr c, @+$5a

    call z, $004f
    ld hl, $5353
    ld d, $f6
    adc c
    jr jr_00b_52b1

    inc h
    di
    ldh [rLCDC], a
    ld e, b
    ldh a, [$e0]
    ld [bc], a
    ld e, b
    call z, $0076
    ld a, [hl+]
    ld d, e
    push af
    sub c
    ld [$01d0], sp
    sbc b
    dec b
    push af

jr_00b_533b:
    sbc b
    ld b, $c3
    ld bc, $533a
    push af
    sbc b
    rlca
    adc c
    db $10
    adc a
    ld b, $8b
    jr z, jr_00b_533b

    pop hl
    ld [de], a
    ld e, b
    adc b
    call z, $0176
    ld c, d
    ld d, e
    cp [hl]
    or c
    ld b, b
    nop
    db $eb
    sbc h
    ld [$9e52], sp
    cp l
    ret nz

    ld l, h
    ld d, e
    sbc h
    add hl, bc
    ld d, d
    cp [hl]
    sbc [hl]
    cp l
    ret nz

    ld l, h
    ld d, e
    ld d, e
    ld h, h
    sub b
    ld c, b
    sub h
    ld c, b
    ld [$fe8f], sp
    ld c, b
    ld hl, sp-$63
    or $94
    ld c, b
    ld hl, sp-$71
    cp $48
    pop bc
    adc l
    ld b, $06
    sbc e
    sbc [hl]
    rrc a
    add $00
    adc [hl]
    ld d, e
    sbc b
    ld b, e
    ld bc, $8253
    sbc b
    ld b, e
    nop
    ld d, e
    add d
    db $eb
    sbc [hl]
    cp b
    adc a
    ld [bc], a
    ldh [$50], a
    ld e, b
    or $c0
    xor e
    ld d, e
    cp c
    ld d, e
    sub h
    db $eb
    sbc [hl]
    cp b
    ldh [$50], a
    ld e, b
    cp c
    ld d, e
    and e
    adc [hl]
    ld [hl], e
    ld b, e
    sub e
    ld [hl], d
    rlca
    sub h
    ld [hl], d
    add hl, bc
    sbc l
    adc a
    inc bc
    pop bc
    adc l
    ld [$9b08], sp
    sbc [hl]
    cp b
    sub b
    ld c, b
    adc [hl]
    ld [hl], a
    ld bc, $c39d
    ld bc, $53d0
    or $94
    ld [hl], d
    ld a, [bc]
    sbc l
    sub h
    ld [hl], d
    or $b9
    adc [hl]
    ld [hl], a
    nop
    ld d, e
    cp h
    adc l
    ld b, $06
    sbc e
    sbc [hl]
    cp d
    sub b
    ld c, b
    adc [hl]
    ld [hl], a
    ld bc, $0598
    inc bc
    adc [hl]
    ld [hl], a
    nop
    cp c
    ld d, e
    jp c, $e1eb

    ld [hl], c
    ld e, b
    nop
    call z, $017b
    ld hl, $9e54
    cp b
    sbc b
    nop
    ldh [$a7], a
    ld e, b
    or $87
    and e
    call z, Call_00b_5408
    inc bc
    ld d, h
    sbc b
    ld a, [bc]
    cp [hl]
    ld d, e
    db $f4

Call_00b_5408:
    sbc b
    rlca
    cp l
    add a
    and l
    rl d
    ld d, h
    ld hl, sp+$53
    ldh [$8d], a
    ld e, b
    pop hl
    ld l, e
    ld e, b
    nop
    pop hl
    ld h, [hl]
    ld e, b
    ld bc, $98f6
    ld [$9ebe], sp
    sbc b
    add hl, bc
    ld d, h
    ld hl, $e1eb
    ld [hl], c
    ld e, b
    ld bc, $7bcc
    ld bc, $54cd
    sbc [hl]
    cp b
    sbc b
    dec bc
    add a
    and l
    srl e
    ld d, h
    rst $00
    ld d, h
    or $98
    inc c
    add a
    and l
    bit 1, c
    ld d, h
    ld l, b
    ld d, h
    add a
    ld d, h
    and [hl]
    ld d, h
    pop hl
    add b
    ld e, b
    rrca
    call z, $017c
    pop bc
    ld d, h
    pop hl
    ld d, c
    rla
    rrca
    pop hl
    add a
    ld e, b
    ld [$6be1], sp
    ld e, b
    ld bc, $66e1
    ld e, b
    ld [bc], a
    cp c
    sbc b
    dec c
    sbc [hl]
    ld d, h
    ld h, e
    pop hl
    add b
    ld e, b
    dec bc

jr_00b_546c:
    call z, $017c
    pop bc
    ld d, h
    pop hl
    ld d, c
    rla
    dec bc
    pop hl
    add a
    ld e, b
    dec b
    pop hl
    ld l, e
    ld e, b
    ld bc, $66e1
    ld e, b
    ld [bc], a
    cp c
    sbc b
    ld c, $9e
    ld d, h
    add d
    pop hl
    add b
    ld e, b
    inc b
    call z, $017c
    pop bc
    ld d, h
    pop hl
    ld d, c
    rla
    inc b
    pop hl
    add a
    ld e, b
    ld [bc], a
    pop hl
    ld l, e
    ld e, b
    ld bc, $66e1
    ld e, b
    ld [bc], a
    cp c
    sbc b
    rrca
    sbc [hl]
    ld d, h
    and c
    pop hl
    add b
    ld e, b
    ld bc, $7ccc
    ld bc, $54c1
    pop hl
    ld d, c
    rla
    ld bc, $6be1
    ld e, b
    ld bc, $66e1
    ld e, b
    ld [bc], a
    cp c
    sbc b
    db $10

jr_00b_54be:
    sbc [hl]
    ld d, h
    cp h
    or $98
    ld [hl-], a
    cp c
    ld d, h
    jr nc, jr_00b_54be

    sbc b
    ld de, $54b9
    jr nc, jr_00b_546c

    sbc b
    ld sp, $cd54
    db $eb
    sbc [hl]
    cp b
    sbc b
    ld [de], a
    pop hl
    ld h, [hl]
    ld e, b
    inc bc
    cp c
    ld d, h
    db $d3
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    ld [bc], a
    call z, $017b
    add hl, bc
    ld d, l
    sbc [hl]
    cp b
    sbc b
    inc de
    pop hl
    ld l, e
    ld e, b
    ld [bc], a
    pop hl
    ld h, [hl]
    ld e, b
    inc b
    add a
    and l
    set 7, e
    ld d, h
    ld bc, $f655
    sbc b
    inc d

jr_00b_54fe:
    cp c
    ld d, l

Jump_00b_5500:
    add hl, bc
    or $98
    dec d
    pop hl
    add a
    ld e, b
    ld a, [bc]
    cp c
    sbc [hl]
    sbc b
    ld d, $55
    add hl, bc
    sub a
    rla
    sub a
    jr jr_00b_54fe

    pop hl
    ld [hl], c
    ld e, b
    inc bc
    add $43
    rra
    ld d, l
    ld [hl], $55
    ld c, l
    ld d, l
    call z, $017b
    ld sp, $9e55
    cp b
    sbc b
    add hl, de
    ret nz

    ld h, h
    ld d, l
    cp c
    call z, $007a
    inc h
    ld d, l
    sbc [hl]
    sbc b
    ld [hl+], a
    ld d, l
    ld sp, $7bcc
    ld bc, $5548
    sbc [hl]
    cp b
    sbc b
    ld a, [de]
    ret nz

    ld h, h
    ld d, l
    cp c
    call z, $007a
    dec sp
    ld d, l
    sbc [hl]
    sbc b
    inc hl
    ld d, l
    ld c, b
    call z, $017b
    ld e, a
    ld d, l
    sbc [hl]
    cp b
    sbc b
    dec de
    ret nz

    ld h, h
    ld d, l
    cp c
    call z, $007a
    ld d, d
    ld d, l
    sbc [hl]
    sbc b
    inc h
    ld d, l
    ld e, a
    add a
    and l
    bit 5, e
    ld d, l
    ld a, d
    ld d, l
    or $98
    inc e
    pop hl
    ld l, e
    ld e, b
    inc bc
    adc [hl]
    ld a, d
    ld bc, $87e1
    ld e, b
    ld [$f6c1], sp
    sbc b
    dec e
    add a
    and l

jr_00b_557f:
    res 0, h
    ld d, l

jr_00b_5582:
    sub e
    ld d, l
    or $98
    ld e, $e1
    ld l, e
    ld e, b

jr_00b_558a:
    inc bc
    adc [hl]
    ld a, d
    ld bc, $87e1
    ld e, b
    dec b
    pop bc
    or $98
    rra
    add a
    and l
    res 3, l
    ld d, l
    xor h
    ld d, l
    or $98
    jr nz, jr_00b_5582

    ld l, e
    ld e, b
    inc bc
    adc [hl]
    ld a, d
    ld bc, $87e1
    ld e, b
    ld bc, $f6c1
    sbc b
    ld hl, $c1f6
    add $43
    cp e
    ld d, l
    cp l
    ld d, l
    cp a
    ld d, l
    pop bc
    ld d, l
    sub a
    dec h
    sub a
    ld h, $97
    daa
    sub a
    jr z, jr_00b_558a

    ld b, e
    call $cf55
    ld d, l
    pop de
    ld d, l
    db $d3
    ld d, l
    sub a
    add hl, hl
    sub a
    ld a, [hl+]
    sub a
    dec hl
    sub a
    inc l
    add $43
    rst JumpTable
    ld d, l
    pop hl
    ld d, l
    db $e3
    ld d, l
    push hl
    ld d, l
    sub a
    dec l
    sub a
    ld l, $97
    cpl
    sub a
    jr nc, jr_00b_557f

    inc e
    nop
    db $eb
    sbc [hl]
    sbc b
    inc e
    ld bc, $989e
    inc e
    ld [bc], a
    ld d, l
    db $eb
    sub a
    inc e
    inc bc
    rst $08
    ldh [$ac], a
    ld e, b
    sub a
    daa
    dec b
    or l
    dec c

Jump_00b_5601:
    ld b, $56
    sub a
    daa
    nop
    sub a
    daa
    dec bc
    sub a
    daa
    ld bc, $ace0
    ld e, b
    sub a
    daa
    ld [bc], a
    ldh [$b1], a
    ld e, b
    sub a
    daa
    inc bc
    or l
    dec bc
    ld h, $56
    or l
    inc c
    inc hl
    ld d, [hl]
    sub a
    add hl, hl
    inc c
    sub a
    add hl, hl
    ld [de], a
    sbc h
    rla
    add hl, hl
    ld d, [hl]
    ld [hl], h
    or l
    dec bc
    add hl, sp
    ld d, [hl]
    or l
    inc c
    ld [hl], $56
    sub a
    add hl, hl
    dec c
    sub a
    add hl, hl
    inc de
    sbc h
    jr jr_00b_5665

    ld d, [hl]
    ld [hl], h
    or l
    dec bc
    ld b, [hl]
    ld d, [hl]
    or l
    inc c
    ld c, c
    ld d, [hl]
    sub a
    add hl, hl
    ld c, $97
    add hl, hl
    inc d

jr_00b_564c:
    or l
    dec bc
    ld d, h
    ld d, [hl]
    or l
    inc c
    ld d, a
    ld d, [hl]
    sub a
    add hl, hl
    rrca
    sub a
    add hl, hl
    dec d
    or l
    dec bc
    ld h, d
    ld d, [hl]
    or l
    inc c
    ld h, l
    ld d, [hl]
    sub a
    add hl, hl
    db $10

jr_00b_5665:
    sub a
    add hl, hl
    ld d, $b5
    dec bc
    ld l, a
    ld d, [hl]
    sub a
    add hl, hl
    ld de, $199c
    add hl, hl
    ld d, [hl]
    ld [hl], h
    db $eb
    sbc [hl]
    cp d
    sub l
    ld b, b
    cp $f8
    sbc l
    cp c
    ld d, [hl]
    ld [hl], l
    sub c
    ld [$05cc], a
    db $eb
    sbc [hl]
    set 5, d
    call z, $9000
    ld d, [hl]
    sbc b
    dec hl
    rrca
    ld d, [hl]
    add h
    sbc b
    dec hl
    ld de, $989e
    dec hl
    ld de, $9356
    rst JumpTable
    rla
    and b
    ld d, [hl]
    sub a
    jr z, jr_00b_56a7

    sub a
    jr z, jr_00b_56ad

    rst JumpTable
    rla
    xor d
    ld d, [hl]

jr_00b_56a7:
    sub a
    jr z, jr_00b_56b2

    sub a
    jr z, jr_00b_56b8

jr_00b_56ad:
    sub a
    jr z, jr_00b_56b9

    adc $8e

jr_00b_56b2:
    ld e, h
    ld [bc], a
    ret nz

    db $eb
    ld d, [hl]
    and b

jr_00b_56b8:
    or c

jr_00b_56b9:
    ld b, b
    ldh [$c4], a
    ld e, b
    adc h
    ld l, b
    and d
    adc e
    jr z, jr_00b_564c

jr_00b_56c3:
    ld [$d4e0], sp
    ld e, b
    adc a
    ld bc, $10d7
    sbc b
    jr z, jr_00b_56ce

jr_00b_56ce:
    or $ab
    sub l
    nop
    db $fd
    ld a, [c]
    xor a
    db $e3
    ld e, [hl]
    and h
    jp hl


    ldh [$ce], a
    db $10
    adc a
    inc bc
    adc e
    ld d, b
    adc c
    jr jr_00b_56c3

    ld l, b
    ld e, c
    pop af
    nop
    add e
    inc d
    ld h, c
    ld c, b
    adc [hl]
    ld b, b
    add c
    add b
    ld [bc], a
    adc l
    ld b, $06
    adc e
    ld d, b
    sub [hl]
    jr jr_00b_56b9

    add e
    inc d
    sbc d
    ld c, b
    or l
    rrca

jr_00b_56fe:
    ret c

    ld b, l
    adc [hl]
    ld e, h
    ld bc, $ebc0
    ld d, [hl]
    and b
    sub l
    nop
    db $fd
    sbc b
    jr z, jr_00b_570f

    xor c

jr_00b_570e:
    rst $10

jr_00b_570f:
    ld [bc], a
    adc h
    ld b, b
    or [hl]
    rrca
    cp c
    nop
    adc [hl]
    ld e, h
    ld bc, $3e97
    nop
    or l
    jr z, @-$26

    ld b, l
    sub a
    ld a, $01
    or l
    jr z, jr_00b_56fe

    ld b, l
    adc [hl]
    ld e, h
    ld bc, $3e97
    ld [bc], a
    sub a
    ld a, $03
    sub a
    ld a, $04
    or l
    jr z, jr_00b_570e

    ld b, l
    adc [hl]
    ld e, h
    ld bc, $3e97
    ld [$3e97], sp
    ld a, [bc]
    sub a
    ld a, $0b
    adc [hl]
    ld e, h
    ld [bc], a
    sub a
    ld a, $0d
    adc [hl]
    ld e, h
    ld bc, $3e97
    db $10
    adc [hl]
    ld e, h
    ld bc, $3e97
    ld de, $3e97
    inc de
    adc [hl]
    ld e, h
    ld bc, $3e97
    inc d
    adc [hl]
    ld e, h
    ld bc, $60c7
    ret z

    jr nz, jr_00b_57d0

    ld d, a
    sub a
    ld a, $29
    sub a
    ld a, $16
    sub a
    ld a, $17
    sub a
    ld a, $0c
    sub a
    ld a, $19
    adc [hl]
    ld e, h
    inc bc
    db $eb
    ldh [$f0], a
    ld e, b
    call z, $017f
    or l
    ld d, a
    cp [hl]
    pop hl
    ld d, $59
    nop
    sbc [hl]
    cp l
    sbc l
    push af
    jp $9500


    ld d, a
    sub h
    ld [hl], d
    inc b
    sbc l
    ld d, a
    add d
    sub h
    ld [hl], d
    ld bc, $e19d
    ld d, $59
    dec b
    push af
    jp $9801


    ld d, a
    ldh [rP1], a
    ld e, c
    pop hl
    dec e
    ld e, c
    ld [bc], a
    sbc l
    push af
    jp $a901


    ld d, a
    pop hl
    dec e
    ld e, c
    inc bc
    sbc l
    cp [hl]
    sbc [hl]
    cp l
    pop hl
    ld d, $59
    dec b
    ld d, a
    sbc b
    db $eb
    or b
    jr nz, jr_00b_57cd

    ld e, b
    ldh [$2c], a
    ld e, c
    add a
    ret nz

    rst $08
    call nc, $db57
    ld d, a
    ld [c], a

jr_00b_57cd:
    ld d, a
    jp hl


    ld d, a

jr_00b_57d0:
    ldh a, [$57]
    rst $30
    ld d, a
    sbc [hl]
    sbc b
    ld a, $23
    sub a
    ld a, $1b
    sbc [hl]
    sbc b
    ld a, $24
    sub a
    ld a, $1c
    sbc [hl]
    sbc b
    ld a, $25
    sub a
    ld a, $1d

jr_00b_57e9:
    sbc [hl]
    sbc b
    ld a, $26
    sub a
    ld a, $1e
    sbc [hl]
    sbc b
    ld a, $27
    sub a
    ld a, $1f
    sbc [hl]
    cp l
    sbc b
    ld a, $20
    or $e0
    ld h, e
    ld e, c
    di
    pop de
    sbc b
    ld a, $21
    or $e0
    ld e, l
    ld e, c
    cp [hl]
    ld e, b
    db $10
    sbc [hl]
    sbc b
    ld a, $28
    sub a
    ld a, $22
    db $eb
    or l
    inc c
    ld b, b
    ld e, b
    rst JumpTable
    ld b, [hl]
    ld e, $58
    sub a
    nop
    sbc [hl]
    sbc b
    ld bc, $00c3
    add hl, hl
    ld e, b
    sbc b
    ld [bc], a
    ld e, b
    ld e, $bd
    or [hl]
    inc c
    sbc b
    inc bc
    di
    db $e3
    ld e, [hl]
    ldh [$73], a
    ld e, c
    adc a
    ld [bc], a
    ld hl, sp-$68
    inc b
    or [hl]
    dec bc
    ldh [$7c], a
    ld e, c
    cp [hl]

jr_00b_583f:
    nop
    sbc [hl]
    sbc b
    dec b
    jp Jump_00b_4b00


jr_00b_5846:
    ld e, b
    sbc b
    rlca
    ld e, b
    ld b, b
    cp l
    or [hl]
    dec bc
    sbc b
    ld b, $e0
    ld a, h
    ld e, c
    cp [hl]
    nop
    adc e
    jr z, jr_00b_5846

    jr nz, jr_00b_57e9

    nop
    or $98
    ld a, [de]
    adc a
    ld [bc], a
    nop
    sub a
    daa
    ld b, $b5
    jr z, jr_00b_583f

    ld b, l
    sub a
    ld a, $06
    adc [hl]
    ld e, h
    ld bc, $3e97
    add hl, bc
    sub a
    ld a, $0f
    sub a
    ld a, $12
    sub a
    ld a, $15
    nop
    db $eb
    sbc [hl]
    sbc b
    ld b, a
    nop
    ld e, b
    ld a, h
    db $eb
    sbc [hl]
    sbc b
    ld b, d
    nop
    ld e, b

Call_00b_5888:
    add e
    db $eb
    sbc [hl]
    sbc b
    ld c, c
    nop
    ld e, b
    adc d
    db $eb
    sbc [hl]
    sbc b
    ld b, a
    ld bc, $66e1
    ld e, b
    ld b, $58
    sub c
    db $eb
    sbc [hl]
    sbc b
    ld b, d
    ld bc, $66e1
    ld e, b
    ld b, $58
    sbc h
    db $eb
    sbc [hl]
    sbc b
    ld c, c
    ld bc, $66e1
    ld e, b
    ld b, $58
    and a
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    inc b
    call z, $017b
    rst JumpTable
    ld e, b
    sbc [hl]
    cp l
    sbc b
    ld b, a
    ld [bc], a
    pop hl
    ld l, e
    ld e, b
    inc b
    pop hl
    ld h, [hl]
    ld e, b
    rlca
    add a
    and l
    set 1, a
    ld e, b
    jp c, $f658

    sbc b
    ld b, a
    inc bc
    pop hl
    adc [hl]
    ld e, c
    inc b
    cp [hl]
    ld e, b
    rst JumpTable
    or $98
    ld b, a
    inc b
    cp [hl]
    sbc [hl]
    sbc b
    ld b, a
    dec b
    ld e, b
    rst JumpTable
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    inc b
    call z, $017b
    inc de
    ld e, c
    sbc [hl]
    cp l
    sbc b
    ld b, d
    ld [bc], a
    pop hl
    ld l, e
    ld e, b
    inc b
    pop hl
    ld h, [hl]
    ld e, b
    rlca
    add a
    and l
    rlc e
    ld e, c
    ld c, $59
    or $98
    ld b, d
    inc bc
    pop hl
    adc [hl]
    ld e, c
    inc b
    cp [hl]
    ld e, c
    inc de
    or $98
    ld b, d
    inc b
    cp [hl]
    sbc [hl]
    sbc b
    ld b, d
    dec b
    ld e, c
    inc de
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    inc b
    call z, $017b
    ld b, a
    ld e, c
    sbc [hl]
    cp l
    sbc b
    ld c, c
    ld [bc], a
    pop hl
    ld l, e
    ld e, b
    inc b
    pop hl
    ld h, [hl]
    ld e, b
    rlca
    add a
    and l
    swap a
    ld e, c
    ld b, d
    ld e, c
    or $98
    ld c, c
    inc bc
    pop hl
    adc [hl]
    ld e, c
    inc b
    cp [hl]
    ld e, c
    ld b, a
    or $98
    ld c, c
    inc b
    cp [hl]
    sbc [hl]
    sbc b
    ld c, c
    dec b
    ld e, c
    ld b, a
    db $eb
    sbc [hl]
    sbc b
    ld c, e
    nop
    pop hl
    ld h, [hl]
    ld e, b
    ld [$4e59], sp
    db $eb
    sbc [hl]
    sbc b
    ld c, d
    nop
    pop hl
    ld h, [hl]
    ld e, b
    ld [$5959], sp
    db $eb
    sbc [hl]
    sbc b
    ld c, b
    nop
    pop hl
    ld h, [hl]
    ld e, b
    ld [$6459], sp
    db $eb
    sbc [hl]
    sbc b
    ld b, [hl]
    nop
    pop hl
    ld h, [hl]
    ld e, b
    ld [$6f59], sp
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    dec b
    call z, $017b
    jr nc, jr_00b_59dd

    sbc [hl]
    cp l
    sbc b
    ld c, e
    ld bc, $a587
    res 1, a
    ld e, c
    add hl, hl
    ld e, d
    or $98
    ld c, e
    ld [bc], a
    add a
    and l
    res 3, [hl]
    ld e, c
    cp a
    ld e, c
    ldh [$59], a
    ld bc, $e15a
    sub h
    ld e, c
    inc c
    call z, $017c
    ld [hl+], a
    ld e, d
    pop hl
    ld d, c
    rla
    inc c
    pop hl
    sbc a
    ld e, c
    nop
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $be
    sbc b
    ld c, e
    inc b
    sbc [hl]
    ld e, c
    cp c
    pop hl
    sub h
    ld e, c
    dec bc
    call z, $017c
    ld [hl+], a
    ld e, d
    pop hl
    ld d, c
    rla
    dec bc
    pop hl
    sbc a
    ld e, c
    ld bc, $6be1
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $be
    sbc b
    ld c, e
    dec b

jr_00b_59dd:
    sbc [hl]
    ld e, c
    jp c, $94e1

    ld e, c
    inc b
    call z, $017c
    ld [hl+], a
    ld e, d
    pop hl
    ld d, c
    rla
    inc b
    pop hl
    sbc a
    ld e, c
    ld [bc], a
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $be
    sbc b
    ld c, e
    ld b, $9e
    ld e, c
    ei
    pop hl
    sub h
    ld e, c
    ld bc, $7ccc
    ld bc, $5a22
    pop hl
    ld d, c
    rla
    ld bc, $9fe1
    ld e, c
    inc bc
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $be
    sbc b
    ld c, e
    rlca
    sbc [hl]
    ld e, d
    inc e

jr_00b_5a22:
    or $98
    ld c, e
    ld [$59be], sp
    add e
    or $98
    ld c, e
    inc bc
    cp [hl]
    ld e, c
    add e
    sbc [hl]
    sbc b
    ld c, e
    add hl, bc
    ld e, d
    jr nc, jr_00b_5a22

    pop hl
    ld [hl], c
    ld e, b
    dec b
    call z, $017b
    sub h
    ld e, d
    sbc [hl]
    cp l
    sbc b
    ld c, d
    ld bc, $a587
    bit 6, [hl]
    ld e, d
    ld c, h
    ld e, d
    or $98
    ld c, d
    ld [bc], a
    add a
    and l
    bit 7, h
    ld e, d
    ld d, a
    ld e, d
    or $98
    ld c, d
    inc bc
    add a
    and l
    res 0, d
    ld e, d
    ld h, d
    ld e, d
    pop hl
    sbc a
    ld e, c
    inc bc
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $98
    ld c, d
    inc b
    cp [hl]
    or $5a
    sub h
    pop hl
    sbc a
    ld e, c
    nop
    ld e, d
    add [hl]
    pop hl
    sbc a
    ld e, c
    ld bc, $865a
    pop hl
    sbc a
    ld e, c
    ld [bc], a
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $98
    ld c, d
    dec b
    or $be
    sbc [hl]
    sbc b
    ld c, d
    ld [$945a], sp
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    dec b
    call z, $017b
    cp d
    ld e, d
    sbc [hl]
    cp l
    sbc b
    ld c, b
    ld bc, $34de
    inc bc
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $98
    ld c, b
    ld [bc], a
    or $be
    sbc [hl]
    sbc b
    ld c, b
    inc bc
    ld e, d
    cp d
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    dec b
    call z, $017b
    rst JumpTable
    ld e, d
    sbc [hl]
    cp l
    sbc b
    ld b, [hl]
    ld bc, $9be1
    ld e, c
    nop
    pop hl
    ld l, e
    ld e, b
    dec b
    pop hl
    ld h, [hl]
    ld e, b
    add hl, bc
    or $be
    ld e, d
    ldh [$9e], a
    sbc b
    ld b, [hl]
    ld [bc], a
    ld e, d
    rst JumpTable
    db $eb
    pop hl
    ld [hl], c
    ld e, b
    ld b, $cc
    ld a, e
    ld bc, $5b21
    sbc [hl]
    cp l
    sbc b
    ld c, e
    ld a, [bc]
    pop hl
    ld l, e
    ld e, b
    ld b, $f6
    add a
    db $dd
    add $04
    ld e, e
    inc c
    ld e, e
    dec d
    ld e, e
    ld a, [de]
    ld e, e
    ldh [$e5], a
    rla
    sbc b
    nop
    ld d, d
    ld e, e
    dec e
    pop hl
    cp [hl]
    ld e, c
    dec c
    sbc b
    nop
    add hl, bc
    ld e, e
    dec e
    sbc $34
    inc bc
    ld e, e
    dec e
    sbc $03
    ld [bc], a
    or $be
    ld e, e
    ld [hl+], a
    sbc [hl]
    sbc b
    ld c, e
    dec bc
    ld e, e
    ld hl, $e1eb
    ld [hl], c
    ld e, b
    ld b, $cc
    ld a, e
    ld bc, $5b6f
    sbc [hl]
    cp l
    sbc b
    ld c, d
    ld b, $f6
    sbc b
    ld c, d
    rlca
    pop hl
    ld l, e
    ld e, b
    ld b, $f6
    add a
    db $dd
    add $4a
    ld e, e
    ld d, e
    ld e, e
    ld e, h

jr_00b_5b47:
    ld e, e
    ld h, h
    ld e, e
    pop hl
    cp [hl]
    ld e, c
    inc c
    sbc b
    nop
    rlca
    ld e, e
    ld l, e
    pop hl
    or a
    ld e, c
    ld bc, $0098
    ld d, c
    ld e, e

jr_00b_5b5b:
    ld l, e
    ldh [$b3], a
    ld e, c
    sbc b
    nop
    ld d, e
    ld e, e
    ld l, e
    pop hl
    cp [hl]
    ld e, c
    ld bc, $0098
    ld bc, $bef6
    ld e, e
    ld [hl], b
    sbc [hl]
    sbc b
    ld c, d
    ld [$6f5b], sp
    db $eb
    sbc [hl]
    cp l
    sbc b
    ld c, b
    inc b
    or $c0
    add d
    ld e, e
    cp [hl]
    ld e, e
    db $76
    adc [hl]
    ld [hl], e
    ld c, b
    sub e
    ld [hl], d
    rlca
    sub h
    ld [hl], d
    dec b
    sbc l
    pop bc
    db $eb
    sbc [hl]
    cp l
    sbc b
    ld b, [hl]
    inc bc
    add a
    and l
    res 3, d
    ld e, e
    xor b
    ld e, e
    ldh [$a3], a
    ld e, c
    ldh [$b3], a
    ld e, c
    or $be
    sbc b
    ld b, [hl]
    inc b
    sbc [hl]
    ld e, e
    and d
    or $98
    ld b, [hl]
    dec b
    cp [hl]
    ld e, e
    adc [hl]
    db $eb
    adc e
    inc d
    adc [hl]
    db $76
    inc bc

jr_00b_5bb5:
    adc c
    jr jr_00b_5b47

    rst $38
    adc h
    and b
    push af
    adc [hl]
    db $76
    ld bc, $0889
    adc a
    rst $38
    adc h
    ldh [$f5], a
    adc [hl]
    db $76
    inc bc
    adc c
    jr jr_00b_5b5b

    rst $38
    adc h
    ldh [$f5], a
    ld e, e

jr_00b_5bd1:
    cp h
    sub a
    ld bc, $0697
    or l
    jr z, jr_00b_5bb5

    ld e, e
    sub a
    ld [bc], a
    sub a
    ld c, $b5
    jr z, @-$14

    ld e, e
    sub a
    inc bc
    or l
    jr z, jr_00b_5bd1

    ld e, e
    sub a
    rlca
    sub a
    rrca
    sub a
    inc b
    sub a
    ld [$0597], sp
    db $eb
    or b
    ld b, b
    jr nz, jr_00b_5c53

    sbc [hl]
    cp b
    sbc b
    add hl, bc
    jp $2201


    ld e, h
    rst JumpTable
    inc l
    add hl, bc
    ld e, h
    or $98
    dec c
    cp c
    sub a
    dec c
    or $98
    ld a, [bc]
    ldh [$c4], a
    ld e, c
    res 5, b
    rlc l
    ld a, [de]
    ld e, h
    sbc $2c
    ld bc, $1d5c
    sbc $2c
    ld [bc], a
    or c
    ld b, b
    cp c
    sub a
    dec bc
    or $98

jr_00b_5c24:
    inc c
    cp c
    sub a
    inc c
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    jr nc, jr_00b_5c24

    jp $3700


    ld e, h
    sbc b
    dec [hl]
    ld e, h
    add hl, hl
    or [hl]
    ld l, h
    add [hl]
    ld [$3398], sp
    push af
    jp $3b01


    ld e, h
    sbc b
    inc [hl]
    ld e, h
    add hl, hl
    sub a
    dec d
    nop
    db $eb
    sbc [hl]
    sbc b
    dec d
    ld bc, $989e
    dec d
    ld [bc], a
    ld e, h

jr_00b_5c53:
    ld c, d
    sub a
    inc d
    ld b, $97
    dec d
    inc bc
    sub a
    dec d
    inc b
    sub a
    dec d
    dec b
    sub a
    dec d
    ld b, $eb
    sbc [hl]
    sbc b
    inc d
    nop
    sbc [hl]
    sbc b
    inc d
    ld bc, $645c
    db $eb
    sbc [hl]
    cp b
    sbc b
    inc d
    ld [bc], a
    jp Jump_00b_7e01


    ld e, h
    or $98
    inc d
    inc bc
    ld e, h
    add d
    or $98
    inc d
    inc b
    cp c
    ld e, h
    ld l, a
    sub a
    inc d
    dec b
    sub a
    inc d
    ld b, $8f
    nop
    sbc h
    rlca
    inc d
    adc [hl]
    ld a, e
    nop
    db $eb
    sbc [hl]
    ldh [$b8], a
    ld h, e
    sbc l
    di
    adc a
    cp $7b
    ld e, h
    sub h
    adc a
    ld [bc], a
    sbc h
    ld [$8e14], sp
    ld a, e
    ld [bc], a
    ld e, h
    sub e
    db $eb
    sbc [hl]
    sbc b
    inc d
    add hl, bc
    adc [hl]
    ld b, l
    nop
    ld e, h
    xor d
    add a
    ld c, [hl]
    call z, $5cbc
    cp a
    ld e, h
    jp nz, $975c

    inc de
    nop
    sub a
    inc de
    ld bc, $1397
    ld [bc], a
    sub a
    inc de
    inc bc
    sub a
    inc de
    inc b
    or l
    ld d, $e3
    ld e, h
    sub a
    ld a, [de]
    nop
    or l
    ld d, $d8
    ld e, h
    ld e, h
    and $eb
    sbc [hl]
    sbc b
    ld a, [de]
    ld [bc], a
    sbc [hl]
    sbc b
    ld a, [de]
    ld bc, $d85c
    sub a
    ld a, [de]
    ld [bc], a
    sub a
    ld a, [de]
    ld bc, $1a97
    inc bc
    db $eb
    call z, $017a

jr_00b_5cf0:
    db $fd
    ld e, h
    sbc [hl]
    sbc b
    rla
    cp l
    or $be
    sbc [hl]
    sbc b
    jr @+$5e

    ld hl, sp-$3a
    ld a, e
    dec b
    ld e, l
    inc d
    ld e, l
    inc hl
    ld e, l
    sbc [hl]
    sbc b
    add hl, de

jr_00b_5d08:
    cp l
    sub c
    db $e4
    add $01
    or $be
    sbc [hl]
    sbc b
    ld a, [de]
    ld e, l
    rrca
    sbc [hl]
    sbc b
    inc e
    cp l
    sub c
    db $e4
    add $02
    or $be
    sbc [hl]
    sbc b
    dec e
    ld e, l
    ld e, $9e
    cp l
    sbc b
    ld e, $f6
    sbc b
    rra
    or $91
    db $e4
    add $02
    add a
    ld bc, $36cc
    ld e, l
    ld b, h
    ld e, l
    sbc b
    inc d
    or $a8
    rst $10
    ld h, h
    cp [hl]
    ldh [$0c], a
    ld e, d
    rst $10
    rst $38
    ld e, l
    ld b, b
    ld hl, sp-$68
    ld h, $e0
    inc sp
    ld e, d
    and c
    or $98
    daa
    or $8e
    ld a, h
    ld bc, $288b
    ldh [rSVBK], a
    ld e, d
    add $79
    ld a, a
    ld e, l
    ld e, a
    ld e, l
    ld l, a
    ld e, l
    adc a
    ld [bc], a
    adc c
    jr jr_00b_5cf0

    dec c
    xor $21
    adc a
    ld [bc], a
    adc c
    ld [$0d8c], sp
    ld e, l
    add c
    adc a
    ld [bc], a
    adc c
    ld [$0d8c], sp
    xor $21
    adc a
    ld [bc], a
    adc c
    jr jr_00b_5d08

    dec c
    ld e, l
    add c
    xor $21
    add e
    inc d
    or l
    ld c, b
    db $eb
    add a
    db $e4
    add $8f
    ld e, l
    adc a
    ld e, l
    sbc [hl]
    ld e, l
    call z, $0071
    add [hl]
    ld e, l
    adc [hl]
    ld [hl], c
    nop
    pop hl
    rst $10
    ld e, c
    nop
    ldh a, [$5d]
    add [hl]
    call z, $0171
    xor e
    ld e, l
    rst $00
    ret nz

    rst $08
    ld bc, $5db5
    ld e, l
    sbc [hl]
    adc [hl]
    ld [hl], c
    nop
    pop hl
    rst $10
    ld e, c
    ld bc, $5df0
    sbc [hl]
    ret nz

    ld a, [bc]
    ld e, a
    rst $10
    rst $38
    ld e, l
    cp b
    db $eb
    call z, $0171
    jp z, $c75d

    ret nz

    rst $08
    ld bc, $5dd6
    ld e, l
    cp l
    cp b
    adc [hl]
    ld [hl], c
    nop
    pop hl
    rst $10
    ld e, c

jr_00b_5dd1:
    nop
    ldh a, [$b9]
    ld e, l
    cp l
    ret nz

    ld a, [bc]
    ld e, a
    rst $10
    rst $38
    ld e, l
    reti


    db $eb
    or l
    jr z, jr_00b_5dd1

    ld e, l
    or l
    inc de
    db $eb
    ld e, l
    sbc [hl]
    sbc b
    ld a, [bc]
    ld e, l
    and $9e
    sbc b
    dec bc
    ld e, l
    db $eb
    or l
    ld e, a
    ld b, a
    ld e, [hl]
    or l
    ld d, l
    jr jr_00b_5e56

    sbc [hl]
    cp l
    sbc b
    inc l
    jp $0600


    ld e, [hl]
    or $98
    dec l
    cp [hl]
    ld e, l
    ld hl, sp-$0a
    sbc b
    ld l, $86
    dec h
    or $87
    and e
    call z, Call_00b_5e1a
    inc de
    ld e, [hl]
    sbc b
    dec l
    cp [hl]
    ld e, l
    ld hl, sp-$62
    cp l

Call_00b_5e1a:
    or [hl]
    ld d, l
    sbc b
    cpl
    or $e0
    adc [hl]
    ld e, d
    call z, $0179
    ld l, $5e
    sbc b
    ld sp, $9ebe
    cp l
    ld e, [hl]
    daa
    sbc b
    ld [hl-], a
    ldh [$a1], a
    ld e, d
    sbc $61
    nop
    ld hl, sp-$4a
    ld e, a
    add [hl]
    dec [hl]
    sbc b
    inc sp
    or $c3
    nop
    ld b, h
    ld e, [hl]
    ld e, [hl]
    dec sp
    sbc b
    inc [hl]
    cp [hl]
    sbc [hl]

jr_00b_5e48:
    cp l
    ld e, [hl]
    add hl, sp
    db $eb
    or l
    inc de
    ld d, h
    ld e, [hl]
    add e
    inc d
    call c, $9e48
    sbc b

jr_00b_5e56:
    ld c, $5e
    ld d, h
    adc e
    jr z, jr_00b_5e48

    rlca
    pop hl
    rst $38
    ld e, c
    db $db
    db $e3
    ld [hl], b
    di
    pop hl
    rst $38
    ld e, c
    reti


    db $e3
    ld [hl], b
    adc a
    nop
    adc c
    db $10
    adc h
    rlca
    adc e
    ld d, b
    pop af
    pop bc
    sub a
    rrca
    db $eb
    add a
    db $e4
    add $80
    ld e, [hl]
    add l
    ld e, [hl]
    add l
    ld e, [hl]
    sbc [hl]
    sbc b
    ld [de], a
    ld e, [hl]
    add b
    sbc [hl]
    sbc b
    inc de
    rst $30
    adc [hl]
    ld a, h
    ld bc, $508b
    rst $28
    add hl, sp
    or c
    ld b, b
    nop
    add e
    inc d
    jr nc, jr_00b_5ee0

    adc [hl]
    ld a, h
    ld bc, $15e0
    ld e, $8b
    inc d
    xor $03
    push af
    adc h

jr_00b_5ea3:
    inc bc
    push af
    adc e
    jr z, @-$72

    rrca
    adc h
    ld hl, $288b
    rst $28
    ld b, c
    pop af

jr_00b_5eb0:
    adc e
    inc d
    db $ec
    ld de, $98f6
    dec d
    or $a8
    and c
    rst $10
    ld b, b
    adc e
    jr z, @-$11

    ld b, c
    pop af
    adc e
    jr z, jr_00b_5eb0

    daa
    ret nz

jr_00b_5ec6:
    ld bc, $005f
    and c
    push af
    rst $10
    ld l, d
    rst $10
    ld b, h
    adc [hl]
    ld a, h
    ld bc, $15e0
    ld e, $8b
    jr z, jr_00b_5ec6

    rrca
    pop af
    db $ed
    ld hl, $148b
    db $ec
    inc bc

jr_00b_5ee0:
    push af
    adc h
    inc bc
    push af
    nop
    and c

jr_00b_5ee6:
    pop af
    rst $10
    ld l, d
    rst $10
    ld b, h
    rst $10
    ld [hl-], a
    rst $10
    ld b, h
    xor d
    adc [hl]
    ld a, h
    ld bc, $15e0
    ld e, $8b
    jr z, jr_00b_5ee6

    ld de, $ecf1
    rrca
    ret nz

    ld bc, $005f
    adc e
    inc d
    db $ec
    inc bc
    push af
    adc h
    inc bc
    push af
    pop bc
    adc [hl]
    ld d, b
    jr z, jr_00b_5ea3

    nop
    cp $e3
    ld d, e
    ldh [$f3], a
    ld e, c
    ldh a, [$cc]
    ld a, l
    nop
    ld [de], a
    ld e, a
    pop bc
    sub a
    ld a, [hl-]
    db $10
    sub a
    ld a, [hl-]
    ld de, $989e
    dec bc
    ld a, $c8
    add hl, bc
    inc l
    ld e, a
    ld e, a
    ld [hl+], a
    cp b
    or $98
    dec bc
    ccf
    jp $3e00


    ld e, a
    or $98
    dec bc
    ld b, d
    cp c
    sbc [hl]
    cp b
    ld e, a
    ld l, $f6
    cp l
    sbc $41
    add hl, bc
    or $98
    dec bc
    ld b, b
    or c
    ld b, b
    cp [hl]
    sbc [hl]
    sbc b
    dec bc
    ld b, c
    ld e, a
    ld c, d
    add h
    ld b, a
    dec bc
    jr z, jr_00b_5f99

    add h
    ld b, a
    rlca
    jr z, @+$4e

    add h
    ld b, a
    ld [$7428], sp
    nop
    sbc b
    dec c
    nop
    nop
    sbc b
    dec c
    dec bc
    nop
    add $78
    ld [hl], h
    ld e, a
    ld a, c
    ld e, a
    ld [hl], h
    ld e, a
    ld a, c
    ld e, a
    ld a, [hl]
    ld e, a
    sbc d
    dec c
    ld bc, $835f
    sbc d
    dec c
    dec b
    ld e, a
    add e
    sbc d
    dec c
    ld a, [bc]
    ld e, a
    add e
    jp $9300


    ld e, a
    adc [hl]
    ld a, e
    rst $38
    sub c
    xor l
    rlc e
    sub c
    and b
    rlc c
    nop
    add $79
    and l
    ld e, a
    sbc c
    ld e, a

jr_00b_5f99:
    adc [hl]
    ld a, e
    rst $38
    sub c
    xor l
    rlc c
    sub c
    and b
    rlc c
    nop
    add $7a
    xor e
    ld e, a
    or a
    ld e, a
    adc [hl]
    ld a, e
    ld bc, $ad91
    rlc b
    sub c
    and b
    rlc c
    nop
    adc [hl]
    ld a, e
    rst $38
    sub c
    xor l
    rlc d
    sub c
    and b
    rlc c
    nop
    adc l
    ld [$9b04], sp
    sbc [hl]
    cp d
    sub c
    dec e
    call z, $91b0
    rla
    call z, $8f01
    ld b, $d7
    call c, $3d98
    dec b
    ld hl, sp-$6f
    inc b
    call z, $000f
    add e
    inc d
    ld [hl], e
    ld c, c
    add e
    inc d
    sbc c
    ld c, c
    add e
    inc d
    or [hl]

jr_00b_5fe9:
    ld c, c
    add e
    inc d
    ret z

    ld c, c
    push de
    ret nz

    rst $08
    ld bc, $028f
    push de
    ret nz

    rst $08
    ld [bc], a
    adc e
    jr z, jr_00b_5fe9

    ld b, l
    adc a
    nop
    push de
    ret nz

    rst $08
    rlca
    adc b
    adc h
    ld b, b
    db $ec
    ld b, l
    adc a
    ld bc, $c0d5
    rst $08
    add hl, bc
    adc a
    ld [bc], a
    push de
    ret nz

    rst $08
    ld a, [bc]
    adc a
    ld bc, $c0d5
    rst $08
    dec bc
    xor $49
    nop
    sub a
    ld d, b
    db $10
    or l
    ld h, $48
    ld h, b
    cp d
    adc e
    jr z, @-$68

    nop
    ld hl, sp-$74

jr_00b_602a:
    add hl, hl
    di
    adc e
    rrca
    sub [hl]
    jr @-$06

    adc h
    jr nz, jr_00b_602a

    pop hl
    pop de
    ld h, e
    ld bc, $0698
    rlca
    ldh [$b3], a
    ld e, c
    reti


jr_00b_603f:
    or $89
    ld [$208c], sp
    push af
    or [hl]
    ld h, $be
    adc b
    ld l, b
    ld l, b
    db $eb
    sbc [hl]
    sbc b
    ld b, $08

jr_00b_6050:
    ldh [$b3], a
    ld e, c
    reti


    ld h, b
    ld c, h
    db $eb
    sbc [hl]
    ldh [$ac], a
    ld e, d
    call z, $017f
    ld l, e
    ld h, b
    sbc b
    dec b
    inc c
    cp l
    ldh [$b3], a
    ld e, c
    reti


    cp [hl]
    ld h, b
    ld l, [hl]
    sbc b
    dec b
    dec c
    or $9e
    sbc b
    dec b
    ld c, $60
    ld l, a
    sub c
    sbc $cf
    nop
    sub c
    rst JumpTable
    rst $08
    nop
    add h
    ld e, l
    ld [$4868], sp
    db $eb
    sbc [hl]
    cp b
    sbc b
    jr c, jr_00b_6050

    ld [$6091], sp
    or $98
    add hl, sp
    cp c
    ld h, b
    add e
    or $98
    ld a, [hl-]
    jp $a000


    ld h, b
    or $98
    inc a
    cp c
    sbc [hl]
    cp b
    ld h, b
    sub d
    add e
    inc d
    db $db
    ld c, c
    sub a
    jr jr_00b_603f

    dec bc
    dec a
    nop
    sbc b
    dec c
    add hl, bc
    nop
    db $eb
    sbc [hl]
    rst JumpTable
    ld c, d
    jp $b060


    ld b, b
    cp [hl]
    ld h, b
    sbc b
    ld [bc], a
    or c
    ld b, b
    ld h, b
    ret nz

    sbc b
    inc bc
    add c
    rst $38
    nop
    sbc b
    dec b
    ld h, b
    ret nz

    db $eb
    pop hl
    ld [c], a
    ld e, d
    nop
    sbc [hl]
    sbc l
    sub d
    db $d3
    rst $08
    ld bc, $cc60
    db $eb
    pop hl
    ld [c], a
    ld e, d
    ld bc, $ba9e
    sub b
    ld c, b
    adc a
    cp $48
    sbc l
    sub d
    db $d3
    rst $08
    ld [bc], a
    cp c
    ld h, b
    reti


    db $eb
    pop hl
    ld [c], a
    ld e, d
    ld [bc], a
    sbc [hl]
    sbc l
    sub d
    db $d3
    rst $08
    inc b
    ld h, b
    db $ed
    db $eb
    pop hl
    ld [c], a
    ld e, d
    inc bc
    sbc [hl]
    sbc l
    sub d
    db $d3
    rst $08
    ld [$fa60], sp
    db $eb
    pop hl
    ld [c], a
    ld e, d
    inc b
    sbc [hl]
    ldh [$d7], a
    ld e, d
    sbc l
    sub d
    db $d3
    rst $08
    db $10
    pop hl
    ld [c], a
    ld e, d
    dec b
    sbc [hl]

jr_00b_6115:
    ldh [$d7], a
    ld e, d
    sbc l
    ld h, c
    inc d
    adc l
    ld [de], a
    inc b
    sbc e
    pop hl
    ld [c], a
    ld e, d
    ld b, $9e
    adc a
    ld b, $9d
    sub d
    db $d3
    rst $08
    jr nz, jr_00b_618d

    inc hl
    adc l
    ld [de], a
    inc b
    sbc e
    pop hl
    ld [c], a
    ld e, d
    rlca
    sbc [hl]
    cp d
    adc a
    ld b, $9d
    sub d
    db $d3
    rst $08
    ld b, b
    or c
    ld b, b
    ld h, c
    dec [hl]
    add e
    inc d
    rrca
    ld c, d
    add e
    inc d
    ld c, e
    ld c, d
    db $eb
    sbc h
    add hl, de
    dec a
    sbc [hl]
    cp d
    sub b
    ld c, b
    adc a
    cp $48
    sbc l
    ld a, [c]
    adc [hl]
    ld c, b
    ld bc, $fe8f
    ld c, b
    cp c
    ld h, c
    ld c, [hl]
    adc b
    ld d, e
    add d
    nop
    add e
    inc d
    ld l, l
    ld c, d
    ld hl, sp-$68
    ld e, $06
    ld hl, sp-$6f
    ret nc

    rst $08
    rrca
    nop
    add e
    inc d
    sub c
    ld c, d
    adc l
    ld [hl+], a
    jr nz, jr_00b_6115

    or l
    jr z, @-$10

    ld h, c
    or b
    ld b, b
    rst $10
    ld h, c
    pop hl
    push af
    ld e, d
    dec bc
    sbc [hl]
    cp l
    pop hl
    push af
    ld e, d
    dec c
    sbc b

jr_00b_618d:
    ld h, $e1

jr_00b_618f:
    push af
    ld e, d
    dec bc
    ret z

    dec b
    sbc c
    ld h, c
    cp [hl]
    ld h, c
    add [hl]
    or $8f
    ld [bc], a
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    daa
    pop hl
    push af
    ld e, d
    dec bc
    jp $bc00


    ld h, c
    or $8f
    nop
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    ld a, [hl+]
    pop hl
    push af
    ld e, d
    dec bc
    cp [hl]
    sbc [hl]
    cp l
    ld h, c
    sbc d
    or $8f
    inc bc
    pop hl
    push af
    ld e, d
    dec bc
    ld hl, sp-$71
    ld [bc], a
    pop hl
    push af
    ld e, d
    inc c
    ld hl, sp-$1f
    push af
    ld e, d
    dec c
    sbc b
    jr z, jr_00b_618f

    sbc $41
    dec b
    or c
    ld b, b
    cp l
    adc a
    ld bc, $f5e1
    ld e, d
    dec bc
    cp [hl]
    sbc [hl]
    cp l
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    add hl, hl
    pop hl
    push af
    ld e, d
    dec bc
    cp [hl]
    ld h, c
    rst JumpTable
    ldh [$f8], a
    ld e, d
    call z, $007f
    ld a, [hl]
    ld h, c
    adc a
    ld bc, $f5e1
    ld e, d
    dec bc
    or l
    ld h, d
    ld h, b
    ld h, d

Jump_00b_6200:
    sbc [hl]
    cp l
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    ld d, d
    pop hl
    push af
    ld e, d
    dec bc
    jp $1e00


    ld h, d
    or $e1
    push af
    ld e, d
    dec c
    sbc b
    ld d, e
    pop hl
    push af
    ld e, d
    dec bc
    cp [hl]
    ld h, d
    nop
    or $e1
    push af
    ld e, d

jr_00b_6222:
    dec c
    sbc b
    ld d, h
    pop hl
    push af
    ld e, d

jr_00b_6228:
    dec bc
    add [hl]
    jr z, jr_00b_6222

    add a
    and e
    call z, Call_00b_6240
    inc sp
    ld h, d
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    ld d, [hl]
    pop hl
    push af
    ld e, d
    dec bc
    cp [hl]
    ld h, d
    nop

Call_00b_6240:
    add e
    inc d
    and e
    ld c, d

Jump_00b_6244:
    add [hl]
    jr c, jr_00b_6228

    push af
    ld e, d
    dec c
    sbc b
    ld e, b

jr_00b_624c:
    pop hl
    push af
    ld e, d
    dec bc
    or $c3
    nop
    ld b, [hl]
    ld h, d
    pop hl
    push af
    ld e, d
    dec c
    sbc b
    ld e, c
    pop hl
    push af
    ld e, d

jr_00b_625e:
    dec bc
    cp [hl]
    sbc [hl]
    cp l
    ld h, d
    ld b, h
    db $eb
    sbc [hl]
    cp e
    ldh [$cc], a
    ld e, e
    rst JumpTable
    ld c, c
    ld [hl], a
    ld h, d
    sbc b
    daa
    rlca
    ldh [$d5], a
    ld e, e
    cp h
    ld h, d
    ld h, l
    add e
    inc d
    ld c, h
    ld c, e
    and b
    add b
    inc b
    adc e
    ld d, b
    rst $28
    add hl, de
    db $ec
    ld de, $96a1
    db $10
    and d
    xor $21
    nop
    or b
    ld b, b

jr_00b_628d:
    xor [hl]
    ld h, d
    rst JumpTable
    ld d, c
    sub [hl]
    ld h, d
    sub a
    daa
    ld a, [bc]
    rst JumpTable
    ld d, b
    sbc h
    ld h, d
    ld h, d
    sub e
    db $eb
    sbc [hl]
    sbc b
    ld a, [hl+]
    nop
    jp $aa00


    ld h, d
    sbc b
    ld a, [hl+]
    ld bc, $9d62
    add e
    inc d
    ld [$974a], a
    ld a, [hl+]
    dec b
    xor b
    push af
    xor c
    push af
    xor d
    push af
    xor b
    push af
    xor c
    push af
    xor d
    push af
    xor b
    rst $10
    ld [de], a
    xor c
    rst $10
    ld [de], a
    xor d
    rst $10
    ld [de], a
    xor b
    push af
    pop bc
    adc e
    jr z, jr_00b_624c

    inc b
    db $ec
    ld sp, $1096
    add b
    dec b
    and a
    xor $31
    add b
    ld bc, $2797
    ld [bc], a
    adc e
    jr z, jr_00b_625e

    inc b
    db $ec
    ld de, $21ed
    sub [hl]
    db $10
    add b
    dec b
    and a
    rst $28
    ld hl, $11ee
    add b
    ld bc, $2797
    inc bc
    ret nz

    inc bc
    ld h, e
    ret nz

    inc bc
    ld h, e
    adc e
    ld d, b
    adc h

jr_00b_62fa:
    inc b
    ldh [$d8], a
    ld e, e
    adc c
    jr jr_00b_628d

    inc b
    nop

jr_00b_6303:
    sub [hl]
    nop
    pop af
    sub [hl]
    jr jr_00b_62fa

    sub [hl]
    db $10
    pop af
    sub [hl]
    ld [$c1f1], sp
    or b
    add b
    ld [hl+], a
    ld h, e
    or c
    add b
    cp l
    db $e3
    ld c, l
    sub c
    ld [$03d0], sp
    ld hl, sp-$68
    inc a
    ld bc, $97be
    inc a
    ld bc, $b0eb
    ld b, b
    ld e, l
    ld h, e
    sbc [hl]
    cp b
    adc a
    dec b
    sbc b
    dec hl
    adc a
    rst $38
    ret z

    ld b, $39
    ld h, e
    cp c
    ld h, e
    ld a, [hl+]
    or $98
    inc l
    jp Jump_00b_4800


    ld h, e
    or $98
    cpl
    cp c
    sbc [hl]
    cp b
    ld h, e
    ld a, [hl-]
    or $c0
    and b
    ld h, e
    sbc b
    ld d, c
    or $98
    dec l
    cp l
    sbc $41
    ld b, $84
    ld c, h
    add hl, bc
    ld [$b158], sp
    ld b, b
    cp [hl]
    sbc [hl]
    sbc b
    ld l, $63
    ld e, l
    adc [hl]
    ld a, [hl]
    ld bc, $508b
    db $ec
    inc d
    pop af
    rst $28
    ld de, $7e8e
    nop
    di
    adc a
    dec b
    sbc b
    jr nc, jr_00b_6303

    ld a, [hl]
    ld bc, $7f93
    ld bc, $7fc6
    add b
    ld h, e
    adc d
    ld h, e
    db $ed
    ld de, $eef1
    inc d
    adc [hl]
    ld a, [hl]
    nop
    cp [hl]
    nop
    xor $14
    pop af
    rst $28
    add hl, de
    pop af
    xor $11
    pop af
    db $ed
    add hl, de
    pop af
    db $ec
    ld de, $edf1
    ld de, $7e8e
    nop
    cp [hl]
    nop
    ldh [$e3], a
    ld e, e
    ldh [$f4], a
    ld e, e
    ldh a, [$cc]
    ld a, l
    nop
    and e
    ld h, e
    pop bc
    db $eb
    or b
    ld b, b
    ld a, [c]
    ld h, e
    sbc [hl]
    cp l
    adc [hl]
    ld a, e
    nop
    sbc b
    ld c, b
    ret z

    dec bc
    jp $8e63


    ld a, e
    ld bc, $63be
    or d
    or $98
    ld c, c
    jp $d800


    ld h, e
    or $98
    ld c, h
    adc [hl]
    ld a, e
    ld bc, $9ebe
    cp l
    adc [hl]
    ld a, e
    nop
    ld h, e
    call nz, $98f6
    ld c, d
    cp l
    sub b
    ld c, b
    sub h
    ld c, b
    ld b, $8f
    cp $48
    sbc $41
    dec bc
    or c
    ld b, b
    adc [hl]
    ld a, c
    ld bc, $32d7
    adc [hl]
    ld a, e
    ld bc, $9ebe
    cp l
    adc [hl]
    ld a, e
    nop
    sbc b
    ld c, e
    adc [hl]
    ld a, e
    ld bc, $63be
    ld a, [c]
    adc l
    inc c
    ld b, $9b
    sbc [hl]
    cp l
    ldh [$39], a
    ld e, $a8
    ret nz

    ld de, $b164
    ld b, b
    ld sp, hl
    cp [hl]
    nop
    add $42
    rla
    ld h, h
    ld e, $64
    sbc $05
    ld bc, $05de
    inc b
    pop bc
    sbc $05
    ld [bc], a
    sbc $05
    dec b
    pop bc
    db $eb
    ldh [$9b], a
    ld e, h
    ldh [rP1], a
    ld e, h
    ldh [$29], a
    ld e, h
    or b
    ld b, b
    dec a
    ld h, h
    sbc [hl]
    cp b
    sbc b
    nop
    jp Jump_00b_5500


    ld h, h
    ld h, h
    ld c, a
    sbc [hl]
    cp b
    sbc b
    ld a, [bc]
    jp Jump_00b_5500


    ld h, h
    ld h, h
    ld c, a
    sbc [hl]
    cp b
    sbc b
    ld bc, $00c3
    ld d, l
    ld h, h
    or $98
    ld [bc], a
    cp c
    ld h, h
    ld b, a
    or $cc
    ld [hl], a
    nop
    ld h, c
    ld h, h
    sbc b
    inc b
    cp c
    sbc [hl]
    ld h, h
    ld e, e
    cp l
    call z, $0578
    ld l, e
    ld h, h
    sbc b
    inc bc
    ld h, h
    ld l, l
    sbc b
    dec c
    jp Jump_00b_7400


    ld h, h
    or $64
    ld h, d
    ldh [rNR44], a
    ld e, h
    ldh [rLY], a
    ld sp, $bad1
    sub c
    db $ed
    call z, $e001
    dec a
    ld e, h
    ldh [rOBP1], a
    ld e, h
    ldh [$61], a
    ld e, h
    pop hl
    or b
    ld e, h
    nop
    pop af
    ldh [$71], a
    ld sp, $98d1
    dec b
    db $e3
    ret z

    db $e4
    dec l
    cp [hl]
    nop
    cp l
    push af
    db $e3
    ret z

    push af
    db $e3
    ret z

    push af
    db $e3
    ret z

    ld sp, hl
    ldh [rLY], a
    ld sp, $bad1
    ldh [$80], a
    ld e, h
    ldh [rOBP1], a
    ld e, h
    pop af
    ldh [$71], a
    ld sp, $e4d1
    rst $38
    adc [hl]
    ld [hl], c
    nop
    add a
    db $ec
    call z, Call_00b_64c5
    push bc
    ld h, h
    call c, $e464
    ld h, h

Call_00b_64c5:
    or b
    ld b, b
    db $d3
    ld h, h
    sbc b
    ld b, $de
    ld c, b
    nop
    or c
    ld b, b
    cp [hl]
    ld h, h
    reti


    sbc b
    dec bc
    ldh [$36], a
    ld e, h
    cp [hl]
    sbc [hl]
    ld h, h
    add hl, hl
    sbc b
    ld [$00c3], sp
    xor $64
    ld h, h
    db $f4
    or [hl]
    ld a, [de]
    sbc b
    add hl, bc
    jp $ee00


    ld h, h
    ld h, h
    db $fd
    ldh [rP1], a
    ld e, h
    cp [hl]
    ld h, h
    ld d, [hl]
    or $98
    ld [bc], a
    or $be
    sbc [hl]
    cp l
    ld h, h
    call c, $98f6
    ld [bc], a
    or $be
    sbc [hl]
    cp l
    ld h, h
    and $8d
    jr nz, jr_00b_6539

    ret nc

jr_00b_650a:
    cp b
    adc l
    ld b, $06
    adc [hl]

jr_00b_650f:
    ld [hl], a
    ld bc, $018f
    call nc, $ff61
    adc [hl]
    ld [hl], a
    ld [bc], a
    ret z

jr_00b_651a:
    inc c
    inc l
    ld h, l
    sbc b
    ld c, l
    adc [hl]

jr_00b_6520:
    ld [hl], a
    inc bc
    adc a
    inc bc
    call nc, $ff61
    adc [hl]
    ld [hl], a
    nop
    cp c
    nop
    sbc b
    ld c, [hl]
    or $98
    ld c, a
    jp $3700


    ld h, l
    ld h, l
    rra
    or $8e

jr_00b_6539:
    ld [hl], a
    inc b
    adc a
    inc b
    adc [hl]
    ld c, a

jr_00b_653f:
    rst $38
    sbc b
    ld d, b
    call nc, $ff61
    adc [hl]
    ld c, a
    nop
    ld h, l
    rra
    db $eb
    or b
    ld b, b
    ld l, h
    ld h, l
    sbc [hl]

jr_00b_6550:
    sbc b
    rra
    ret z

jr_00b_6553:
    inc b
    ld e, b
    ld h, l
    ld h, l
    ld c, a
    cp b
    or $98

jr_00b_655b:
    jr nz, jr_00b_6520

    nop
    ld l, b
    ld h, l

jr_00b_6560:
    or $98
    dec h
    cp c
    sbc [hl]
    cp b
    ld h, l
    ld e, d
    add e
    inc d
    adc [hl]

jr_00b_656b:
    ld c, e
    sbc [hl]
    sbc b
    inc h
    ld h, l

jr_00b_6570:
    ld l, h
    adc e
    inc d
    or $89
    nop
    adc h
    ld b, b
    adc c
    ld [$208c], sp

jr_00b_657c:
    adc c

jr_00b_657d:
    nop
    adc h
    jr nz, jr_00b_650a

    jr jr_00b_650f

    ld h, b
    adc c
    nop
    adc h
    and b

jr_00b_6588:
    adc c
    ld [$208c], sp
    adc c

jr_00b_658d:
    db $10
    adc h

jr_00b_658f:
    jr nz, jr_00b_651a

    ld [$208c], sp
    adc c
    nop
    adc h
    jr nz, jr_00b_658f

    ld [c], a
    cp c
    ldh [$ae], a
    ld [de], a
    add b
    inc bc
    nop
    adc e
    inc d
    or $89
    nop
    adc h
    ld b, b
    adc c
    ld [$208c], sp
    adc c
    nop
    adc h
    ld h, b
    adc c
    jr jr_00b_653f

    ld h, b
    adc c
    nop
    adc h
    ld h, b
    adc c
    ld [$408c], sp
    ld h, l
    sbc b
    adc e
    inc d
    or $89
    jr jr_00b_6550

    ld b, b
    adc c
    nop
    adc h
    jr nz, jr_00b_6553

    ld [$608c], sp
    adc c
    nop
    adc h
    jr nz, jr_00b_655b

    jr jr_00b_6560

    ld h, b
    adc c
    nop
    adc h
    and b
    adc c
    ld [$608c], sp
    adc c
    nop
    adc h
    jr nz, jr_00b_656b

    jr jr_00b_6570

    jr nz, @+$67

    sbc b
    adc e
    inc d
    or $89
    nop
    adc h
    add b
    adc c
    jr jr_00b_657d

    jr nz, jr_00b_657c

    db $10
    adc h
    ld b, b
    adc c
    ld [$408c], sp
    adc c
    nop
    adc h
    jr nz, jr_00b_6588

    jr jr_00b_658d

    ld h, b
    adc c
    nop
    adc h
    and b
    adc c
    ld [$408c], sp
    ld h, l
    sbc b
    adc b
    ld e, b
    cp b
    db $dd
    jr nc, jr_00b_6613

    nop

jr_00b_6613:
    db $eb
    or b
    add b
    inc hl
    ld h, [hl]
    sbc [hl]
    sbc b
    ld bc, $c300
    nop
    jr nc, jr_00b_6686

    sbc b
    ld bc, $9e03
    sbc b
    ld bc, $c301
    nop
    jr nc, jr_00b_6691

    sbc b
    ld bc, $6603
    inc hl
    add e
    inc d
    db $e4
    ld c, e
    sbc b
    ld bc, $c315
    ld bc, $6641
    ldh [$3b], a
    ld sp, $ff81
    nop
    add e
    inc d
    ld b, $4c
    sbc $06
    nop
    ld h, [hl]
    ld d, a
    sbc $0e
    nop
    ld h, [hl]
    ld d, a
    sbc $34
    nop
    ld h, [hl]
    ld d, a
    sbc $37
    nop
    or $e4
    rst $38
    cp [hl]
    add c
    rst $38
    db $eb
    sbc [hl]
    sbc l
    ld h, [hl]
    ld e, [hl]
    sub a
    ld a, $03
    db $eb
    ldh [rHDMA4], a
    ld e, l
    add a
    pop bc
    rst $08
    ld [hl], h
    ld h, [hl]
    add [hl]
    ld h, [hl]
    sub b
    ld h, [hl]
    sbc e
    ld h, [hl]
    or b
    jr nz, @+$7a

    ld h, [hl]
    sbc [hl]
    rst JumpTable
    ld b, e
    add [hl]
    ld h, [hl]
    adc a
    ld bc, $2498
    nop
    adc a
    nop
    ld h, [hl]
    ld a, b

jr_00b_6686:
    sbc [hl]
    adc a
    ld bc, $2498
    ld [bc], a
    adc a
    nop
    ld h, [hl]
    add [hl]
    sbc [hl]

jr_00b_6691:
    or c
    add b
    adc a
    ld bc, $2498
    inc bc
    adc a
    nop
    or $9e
    adc a
    ld bc, $2498
    inc b
    adc a
    nop
    ld h, [hl]
    sbc e
    sbc b
    inc h
    ld bc, $00be
    push de
    ld [hl-], a
    call z, $e001
    adc c
    ld e, l
    ld a, [c]
    cp l
    or $e3
    jp nz, Jump_00b_42e0

    ld e, $f8
    ldh [$39], a
    ld e, $b1
    ld b, b
    add sp, -$56
    db $e3
    pop af
    db $e3
    ld c, l
    ldh [$92], a
    ld e, l
    cp [hl]
    nop
    and b
    cp l
    ld hl, sp-$1d
    ldh a, [$ea]
    ld a, b
    ld hl, sp-$6f
    ld [$01d0], sp
    or c
    add b
    add h
    ld l, e
    inc d
    nop
    nop
    add b
    rst $38
    nop
    and b
    ldh [$74], a
    ld e, l
    db $e3
    ldh a, [$f8]
    db $e3
    cp b
    ld [$f8ff], a
    sub c
    ld [$02d0], sp
    or c
    add b
    nop
    cp l
    db $e3
    ld c, l
    add sp, $53
    ld [c], a

jr_00b_66f9:
    or c
    ld b, b
    cp [hl]
    nop
    or c
    ld b, b
    or $e3
    ld c, l
    push af
    adc b
    ld [$e228], sp
    add sp, -$30
    rst $20
    ld bc, $e76b

jr_00b_670d:
    inc bc
    ld b, l
    nop
    or $98
    ld c, l
    ld [$bea8], sp
    nop
    or b
    ld b, b
    rra
    ld h, a
    add e
    inc d
    ccf
    ld c, [hl]
    add e
    inc d

jr_00b_6721:
    ld d, [hl]
    ld c, [hl]
    xor b
    ldh [$b1], a
    ld e, l
    add c
    inc bc
    db $ec
    jr nc, @-$40

    nop
    ldh [$4e], a
    ld e, [hl]
    add c
    inc b
    adc e
    jr z, jr_00b_66f9

    add hl, sp
    ld h, a
    dec a
    ld h, a
    add e
    inc d
    ld h, d
    ld c, [hl]
    add e
    inc d
    ld a, c
    ld c, [hl]
    ldh [$4e], a
    ld e, [hl]
    add c
    inc b
    adc e
    jr z, jr_00b_670d

    ld c, l
    ld h, a
    ld d, c
    ld h, a
    add e
    inc d
    sub a
    ld c, [hl]
    add e
    inc d
    pop bc
    ld c, [hl]
    ldh [$4e], a
    ld e, [hl]

jr_00b_6758:
    add c
    inc b
    adc e
    jr z, jr_00b_6721

    ld h, c
    ld h, a
    ld h, l
    ld h, a
    add e
    inc d
    and $4e
    add e
    inc d
    ld [bc], a
    ld c, a
    add e
    inc d
    dec de
    ld c, a
    add e

jr_00b_676e:
    inc d
    ld h, $4f
    add e

jr_00b_6772:
    inc d

jr_00b_6773:
    ld b, h
    ld c, a
    or $96
    db $10
    or $96

jr_00b_677a:
    jr jr_00b_6772

    sub [hl]
    ld [$c1f6], sp
    or $96
    jr jr_00b_677a

    sub [hl]
    nop
    or $96
    db $10

jr_00b_6789:
    or $c1

jr_00b_678b:
    or $96
    nop
    or $96
    ld [$96f6], sp
    jr jr_00b_678b

    pop bc
    or $96
    ld [$96f6], sp
    db $10
    or $96
    nop
    or $c1
    add a
    ret nc

    rst $08
    xor b
    ld h, a
    cp [hl]
    ld h, a
    adc b
    jr jr_00b_67f3

    sub [hl]
    jr jr_00b_676e

    db $dd
    ld h, a
    rst $28
    jr nc, jr_00b_6773

    inc de
    ld l, d
    xor $60
    ret nz

    dec bc
    ld l, d
    xor $20

jr_00b_67bc:
    xor b
    nop
    adc b
    ld c, b
    jr jr_00b_6758

    nop
    ret nz

    db $dd
    ld h, a
    db $ec
    jr nc, jr_00b_6789

    cp $69
    db $ed
    jr nc, jr_00b_67bc

    db $10
    db $ed

jr_00b_67d0:
    db $10
    ret nz

    jr nz, jr_00b_683e

    xor $50
    ret nz

    dec bc

jr_00b_67d8:
    ld l, d
    xor $20
    xor b
    nop
    or l
    ld de, $67e9
    ldh [$b1], a
    ld e, l
    ld hl, sp-$20
    ld c, [hl]
    ld e, [hl]
    pop bc
    cp l
    sbc b
    jr z, jr_00b_67f2

    sbc b
    jr z, @+$08

    cp [hl]
    xor b

jr_00b_67f2:
    ld h, a

jr_00b_67f3:
    pop hl
    or l
    ld de, $67fa
    ld h, a
    pop hl
    and b
    ld h, a

jr_00b_67fc:
    pop hl
    add a
    ret nc

    rst $08
    inc b
    ld l, b

jr_00b_6802:
    ld a, [hl+]

jr_00b_6803:
    ld l, b
    adc b
    jr z, jr_00b_687f

    ldh [$4e], a
    ld e, [hl]
    sub [hl]

jr_00b_680b:
    db $10
    ld hl, sp-$12

jr_00b_680e:
    jr nc, jr_00b_67d0

    dec bc
    ld l, d
    ei
    rst $28
    jr nc, jr_00b_6802

    jr nc, jr_00b_67d8

    dec bc

jr_00b_6819:
    ld l, d
    db $ed
    jr nc, jr_00b_680b

    jr nc, jr_00b_6819

    rst $28
    db $10
    xor $20

jr_00b_6823:
    ret nz

    dec bc
    ld l, d
    xor $20
    xor b

jr_00b_6829:
    nop
    adc b

jr_00b_682b:
    ld a, b
    jr z, jr_00b_680e

    ld c, [hl]
    ld e, [hl]

jr_00b_6830:
    sub [hl]
    jr jr_00b_682b

    rst $28
    db $10
    db $ec
    jr nc, @-$27

    sub [hl]
    db $ed
    jr nz, jr_00b_67fc

    jr nz, jr_00b_68a8

jr_00b_683e:
    db $ec
    jr nc, jr_00b_6830

jr_00b_6841:
    jr nz, jr_00b_6803

    inc de
    ld l, d
    ld a, [$30ed]
    xor $60
    ret nz

    dec bc
    ld l, d
    xor $20
    xor b
    nop
    add a
    ret nc

    rst $08
    ld e, b
    ld l, b
    ld a, h
    ld l, b
    adc b

jr_00b_6859:
    jr c, jr_00b_68d3

    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    jr jr_00b_6859

    rst $28
    ld h, b
    ret nz

    inc de

jr_00b_6865:
    ld l, d
    db $ec
    jr nz, jr_00b_6829

    cp $69
    db $ec
    db $10

jr_00b_686d:
    db $ed
    ld b, b
    xor $30
    ret nz

    dec bc
    ld l, d
    rst $28
    ld b, b
    xor $10
    rst $28
    jr nc, jr_00b_6823

    nop
    adc b
    jr c, @+$4a

jr_00b_687f:
    ldh [$4e], a
    ld e, [hl]
    sub [hl]

jr_00b_6883:
    jr @-$27

    ld a, d
    sub [hl]
    db $10
    rst $10
    ld a, $96
    ld [$3ed7], sp
    sub [hl]
    nop
    rst $10
    ld a, $ef
    jr nc, jr_00b_6883

    db $10

jr_00b_6896:
    rst $28
    jr nc, jr_00b_6841

    nop
    add a
    ret nc

    rst $08
    and c
    ld l, b

jr_00b_689f:
    cp [hl]
    ld l, b

jr_00b_68a1:
    adc b

jr_00b_68a2:
    jr c, jr_00b_68dc

    ldh [$4e], a
    ld e, [hl]
    sub [hl]

jr_00b_68a8:
    jr jr_00b_68a2

    rst $28
    jr nz, jr_00b_686d

    inc de
    ld l, d
    db $ec
    jr nz, jr_00b_689f

    jr nc, jr_00b_68a1

    jr nc, jr_00b_68a2

    db $10
    ret nz

    cp $69
    db $ec
    jr nz, jr_00b_6865

    nop
    adc b
    jr jr_00b_68d9

    ldh [$4e], a
    ld e, [hl]
    sub [hl]
    db $10
    ld hl, sp-$12
    jr nc, @-$3e

    dec bc
    ld l, d
    db $ed
    ld d, b
    ret nz

    jr nz, jr_00b_693b

    db $ec
    db $10

jr_00b_68d3:
    db $ed
    jr nz, jr_00b_6896

jr_00b_68d6:
    jr nz, @+$6c

    db $ec

jr_00b_68d9:
    ld d, b
    xor b

jr_00b_68db:
    nop

jr_00b_68dc:
    add a
    ret nc

    rst $08
    db $e3
    ld l, b
    dec b
    ld l, c
    adc b
    ld [$e048], sp
    ld c, [hl]
    ld e, [hl]
    sub [hl]

jr_00b_68ea:
    ld [$edf8], sp
    ld b, b
    xor $10
    ret nz

    dec bc
    ld l, d
    xor $20
    rst $28
    ld h, b
    ret nz

    jr nz, jr_00b_6964

    db $ec
    jr nc, jr_00b_68ea

    ld b, b

jr_00b_68fe:
    ret nz

    inc de
    ld l, d
    db $ec

jr_00b_6902:
    jr nz, @-$56

    nop
    adc b

jr_00b_6906:
    ld [$e078], sp
    ld c, [hl]
    ld e, [hl]
    sub [hl]
    jr jr_00b_6906

    xor $60
    ret nz

    dec bc
    ld l, d
    rst $28
    jr nc, jr_00b_68d6

    inc de
    ld l, d
    db $ec
    jr nc, jr_00b_68db

    cp $69

jr_00b_691d:
    db $ed
    ld b, b
    ret nz

    jr nz, jr_00b_698c

    db $ec
    ld d, b
    xor b
    nop
    add a
    ret nc

    rst $08
    dec l
    ld l, c
    ld c, a
    ld l, c
    adc b
    jr @+$1a

    ldh [$4e], a

jr_00b_6932:
    ld e, [hl]
    sub [hl]
    db $10
    ld hl, sp-$12
    ld h, b
    ret nz

    dec bc

jr_00b_693a:
    ld l, d

jr_00b_693b:
    db $ed
    jr nc, jr_00b_68fe

    jr nz, jr_00b_69aa

    db $ec
    jr nc, jr_00b_6932

    db $10
    db $ec
    jr nc, @-$3e

    cp $69
    rst $28
    jr nz, jr_00b_693a

    add b
    xor b
    nop
    adc b
    jr @+$1a

    ldh [$4e], a
    ld e, [hl]
    sub [hl]

jr_00b_6956:
    db $10
    ld hl, sp-$12

jr_00b_6959:
    jr nc, @-$11

    jr nc, jr_00b_691d

    jr nz, jr_00b_69c9

    xor $30
    ret nz

    dec bc
    ld l, d

jr_00b_6964:
    rst $28
    jr nc, @-$12

    jr nc, jr_00b_6956

    jr nc, jr_00b_6959

    ld d, b

jr_00b_696c:
    xor b
    nop
    cp l
    adc b
    ld c, b
    jr jr_00b_6902

    ld bc, $4de3
    db $d3
    nop
    nop
    call $9ae0
    ld e, l
    ld hl, sp-$68
    jr z, jr_00b_6984

    xor b
    xor $50

jr_00b_6984:
    db $e4
    rst $38
    add h
    ld l, e
    ld d, $48
    jr z, jr_00b_696c

jr_00b_698c:
    call nz, $be5d
    nop
    add a
    ret nc

    rst $08
    sub a
    ld l, c
    and e
    ld l, c
    adc b
    jr z, jr_00b_69b2

    sub [hl]
    db $10
    ret nz

    db $f4
    ld h, a
    add e
    inc d
    ld d, c
    ld c, a
    adc b
    ld c, b
    jr z, @-$68

    nop
    ret nz

    db $f4

jr_00b_69aa:
    ld h, a
    add e
    inc d
    ld h, h
    ld c, a
    add a
    ret nc

    rst $08

jr_00b_69b2:
    or [hl]
    ld l, c
    cp d
    ld l, c
    add e
    inc d
    ld a, a
    ld c, a
    add e
    inc d
    xor c
    ld c, a
    add a
    ret nc

    rst $08
    push bc
    ld l, c
    ret


    ld l, c
    add e
    inc d
    bit 1, a

jr_00b_69c9:
    add e
    inc d
    jp hl


    ld c, a
    add a
    ret nc

    rst $08
    call nc, $d869
    ld l, c
    add e
    inc d
    inc de
    ld d, b
    add e
    inc d
    ld a, [hl-]
    ld d, b

jr_00b_69dc:
    add a
    ret nc

    rst $08
    db $e3
    ld l, c
    rst $20
    ld l, c
    add e
    inc d
    ld c, a
    ld d, b
    add e
    inc d
    ld l, l
    ld d, b
    add a
    ret nc

    rst $08
    ld a, [c]
    ld l, c
    or $69
    add e
    inc d
    adc c
    ld d, b
    add e
    inc d
    xor e
    ld d, b
    add e
    inc d

jr_00b_69fc:
    jp z, $9650

    db $10

jr_00b_6a00:
    or $96
    nop
    or $96
    ld [$96f6], sp
    jr jr_00b_6a00

    pop bc
    sub [hl]
    nop
    or $96

jr_00b_6a0f:
    db $10
    or $6a
    inc b
    sub [hl]
    ld [$96f6], sp
    jr jr_00b_6a0f

jr_00b_6a19:
    sub [hl]
    nop
    or $96
    db $10
    or $c1
    sub [hl]
    jr jr_00b_6a19

    sub [hl]
    ld [$6af6], sp
    add hl, de
    adc l
    ld [de], a
    jr nc, jr_00b_69fc

    cp l
    ldh [$6f], a
    ld e, [hl]
    db $e3
    call z, $e3f2
    call z, $91f6
    ld [$03d0], sp
    or $91
    ld [$01d0], sp
    db $e4
    dec bc
    ldh [$75], a
    ld e, [hl]
    xor b
    push af
    sub c
    ld [$01d0], sp
    and c
    db $e3
    add l
    ldh [$5d], a
    ld e, [hl]
    adc e
    jr z, jr_00b_69dc

    inc b
    add b
    rst $38
    db $eb
    ld a, [$0095]
    rst $38
    or b
    jr nz, @+$71

    ld l, d
    ld l, d
    ld h, [hl]
    db $eb
    or b
    jr nz, jr_00b_6ad4

    ld l, d
    sbc [hl]
    sbc b
    inc l
    nop
    cp l
    sbc $15
    nop
    cp h
    cp c
    sbc [hl]
    cp b
    or l
    dec h
    ld a, e
    ld l, d
    sbc b
    inc l
    ld bc, $6f6a
    sbc b
    inc l
    ld [bc], a
    ld l, d
    ld l, a
    or e
    ld b, l
    ld [bc], a

jr_00b_6a83:
    reti


    ld l, d
    or e
    ld b, l
    ld bc, $6ab8
    rst $00
    ld a, $d1
    inc b
    sub d
    ld l, d
    ld l, d
    add b
    cp e
    adc [hl]
    ld e, d
    nop
    rst $00
    ld a, $d1
    jr nz, @-$60

    ld l, d
    ld l, d
    sub [hl]
    push de
    dec hl
    pop de
    nop
    ldh [$91], a
    ld e, [hl]
    push de
    dec d
    pop de
    nop
    sub c
    ld b, $d1
    jr nz, jr_00b_6a83

    ld b, $d1
    nop
    ldh [$a6], a
    ld e, [hl]
    db $d3
    rlca
    ld hl, $91d1
    inc bc
    pop de
    dec b
    sub c
    ccf
    pop de
    inc bc
    cp h
    push de
    dec a
    pop de
    ld bc, $91bb
    dec a
    pop de
    nop
    rlc c
    call z, $d500
    ld l, d
    sbc b
    ld [hl+], a
    inc d
    ld l, d

jr_00b_6ad4:
    reti


    cp e
    sbc b
    ld [hl+], a
    ld a, [bc]
    cp e
    sub c
    ccf
    pop de
    inc bc
    sub c
    inc bc
    pop de
    ld b, $92
    ld b, l
    add $02
    db $d3
    ld [bc], a
    ld b, l
    add $91
    ccf
    pop de
    inc bc
    sub c
    inc bc
    pop de
    ld b, $91
    dec a
    pop de
    nop
    push de
    dec a
    pop de
    ld bc, $cbbb
    ld bc, $00cc
    inc c
    ld l, e
    sbc b
    ld [hl+], a
    dec d
    adc [hl]
    ld b, h
    ld [bc], a
    sbc b
    nop
    ld a, [hl-]
    ld l, e
    dec d
    sbc b
    ld [hl+], a
    dec c
    adc [hl]
    ld b, h
    ld [bc], a
    sbc b
    nop
    ld l, d
    sbc b
    ld [hl+], a
    inc de
    sub d
    ld b, l
    add $20
    push de
    ld c, b
    call z, $98d1
    ld [hl+], a
    ld [de], a
    cp h
    cp c
    nop
    push de
    dec a
    pop de
    ld bc, $babb
    rst JumpTable
    ld c, b
    ld d, l
    ld l, e
    cp h
    rlc c
    call z, Call_00b_4700
    ld l, e
    rst $00
    ld b, e
    add $10
    ld b, d
    ld l, e
    sbc b
    jr nz, jr_00b_6b4a

    ld l, e

Call_00b_6b41:
    ld c, d
    sbc b
    jr nz, jr_00b_6b50

    ld l, e
    ld c, d
    sbc b
    jr nz, jr_00b_6b4a

jr_00b_6b4a:
    sub c
    dec a
    pop de
    nop
    sub d
    ld b, e

jr_00b_6b50:
    add $10
    cp c
    ld l, e
    ld h, $cb
    ld bc, $00cc
    ld l, e
    ld l, e
    rst $00
    ld b, e
    add $10
    ld h, [hl]
    ld l, e
    sbc b
    jr nz, jr_00b_6b6e

    ld l, e
    ld l, [hl]
    sbc b
    jr nz, jr_00b_6b74

    ld l, e
    ld l, [hl]

Call_00b_6b6b:
    sbc b
    jr nz, jr_00b_6b6e

jr_00b_6b6e:
    or $98
    jr nz, @+$03

    or $91

jr_00b_6b74:
    dec a
    pop de
    nop
    rl b
    add $0b
    add l
    ld l, e
    sbc b
    jr nz, jr_00b_6b82

    adc [hl]
    ld b, h

jr_00b_6b82:
    ld [bc], a
    ld l, e
    sbc h
    rlc c
    call z, $9000
    ld l, e
    sbc b
    jr nz, jr_00b_6b9a

    ld l, e
    sub e
    sbc b
    jr nz, @+$08

    adc [hl]
    ld b, h
    ld [bc], a
    sbc b
    nop
    jr c, @-$66

jr_00b_6b9a:
    jr nz, @+$0a

    sub c
    inc bc
    pop de
    ld bc, $48d5
    call z, $98d1
    jr nz, jr_00b_6bac

    cp c
    nop
    cp e
    sub c
    ccf

jr_00b_6bac:
    pop de
    ld bc, $3ec7
    pop de
    ld bc, $6bb6
    ld l, e
    xor c
    sub c
    ld [$03d1], sp
    rst $10
    db $10
    sub c
    ccf
    pop de
    ld [$0391], sp
    pop de
    inc b
    rst $00
    ld a, $d1
    ld [bc], a

jr_00b_6bc8:
    call z, Call_00b_6b6b
    call nz, $b4e0
    ld e, [hl]
    cp c
    push de
    ld [hl], a
    call z, $9100
    ld [$01d0], sp
    cp d
    sub c
    inc bc
    pop de
    dec b
    rst $10
    db $10
    sbc b
    jr nz, jr_00b_6be5

    cp d
    ldh [$c7], a

jr_00b_6be5:
    ld e, [hl]
    rst $00
    ld a, $d1
    inc b
    xor $6b
    ld l, e
    and $91
    ld [$00d1], sp
    sub c
    ccf
    pop de
    jr @-$6d

    inc bc
    pop de
    rlca
    rst $10
    sub [hl]

jr_00b_6bfc:
    sub c
    ld [$02d1], sp

Jump_00b_6c00:
    sub c
    ccf
    pop de
    inc bc
    sub c
    inc bc
    pop de
    ld b, $bc
    nop
    push de
    dec a
    pop de
    ld bc, $44c7
    add $08
    dec e
    ld l, h
    sbc b
    ld hl, $9103

jr_00b_6c18:
    dec a
    pop de
    nop
    ld l, h
    ld a, [bc]
    cp e

jr_00b_6c1e:
    rlc c
    call z, $2f00
    ld l, h

jr_00b_6c24:
    sbc b
    ld hl, $8e15
    ld b, h
    ld [bc], a

jr_00b_6c2a:
    sbc b
    nop
    add hl, sp
    ld l, h
    jr c, jr_00b_6bc8

    ld hl, $8e0b
    ld b, h
    ld [bc], a
    sbc b
    nop
    ld l, c
    sbc b
    ld hl, $911f
    ld h, $d1
    ld b, $91
    daa
    pop de
    ld [$4492], sp
    add $80
    push de
    ld c, b
    call z, $98d1
    ld hl, $b91d
    cp h
    nop
    push de
    dec a
    pop de
    ld bc, $44c7
    add $08
    ld h, h
    ld l, h
    sbc b
    ld hl, $9103
    dec a
    pop de
    nop
    ld l, h
    ld d, c
    cp e
    sbc b
    ld hl, $6c20
    jr c, jr_00b_6bfc

    ccf
    pop de
    inc d
    sub c
    ld [$00d1], sp
    pop de
    cp e
    sub c
    inc bc
    pop de
    add hl, bc
    rst $00
    ld a, $d1
    ld bc, $6c80
    ld l, h
    ld a, b
    sub c
    ccf
    pop de
    ld d, $d7
    jr nz, jr_00b_6c18

    ccf
    pop de
    inc d
    rst $10
    jr nz, jr_00b_6c1e

    ccf
    pop de
    ld d, $d7
    jr nz, jr_00b_6c24

    ccf
    pop de
    inc d
    rst $10
    jr nz, jr_00b_6c2a

    ccf
    pop de
    ld d, $d7
    jr nz, @-$6c

    ld a, $d1
    ld [bc], a
    nop
    push de
    dec a
    pop de
    ld bc, $78c6
    ret c

    ld l, h
    xor l
    ld l, h
    sbc b
    ld [hl+], a
    ld de, $448e
    ld [bc], a
    ldh [$de], a
    ld e, [hl]
    add $7b
    pop bc
    ld l, h
    cp h
    ld l, h
    sbc b
    ld [hl+], a
    add hl, de
    ld l, h
    call nz, $2298
    ld d, $91
    ld b, l
    add $80
    cp c
    push de
    ld c, b
    call z, $c6d1
    ld a, e
    db $d3
    ld l, h
    sub $6c
    sbc b
    ld [hl+], a
    ld [de], a
    cp h
    nop
    sbc b
    ld [hl+], a
    db $10
    sub c
    dec a
    pop de
    nop
    cp c
    cp h
    ld l, h
    and e
    sub c
    xor e
    call z, $9b01
    or e
    ld b, h
    inc b
    dec d
    ld l, l
    cp e
    cp d
    sub c
    xor e
    call z, $c000
    ld b, e
    ld l, a
    add $77
    or $6c
    db $fc
    ld l, h
    sbc b
    ld hl, $9200
    ld b, h
    add $01
    sub [hl]
    nop
    sbc [hl]
    sbc d
    ld hl, $c304
    nop
    add hl, hl
    ld l, l
    sbc b
    ld hl, $6d07
    dec d
    sbc b
    ld hl, $911b
    xor e
    call z, $9600
    nop
    or l
    dec hl
    cpl
    ld l, l
    sbc [hl]
    sbc d
    ld hl, $c304
    nop
    add hl, hl
    ld l, l
    ld l, l
    dec c
    add $79
    ld [de], a
    ld l, l
    dec [hl]
    ld l, l
    sbc [hl]
    sbc d
    ld hl, $6d06
    dec a
    or [hl]
    dec hl
    adc [hl]
    ld a, d
    dec bc
    sbc d
    ld hl, $c306
    nop
    ld b, e
    ld l, l
    ld l, l
    dec c
    add $78
    ld [de], a
    ld l, l
    ld c, c
    ld l, l
    adc [hl]
    ld a, d
    rlca
    cp e
    sbc b
    ld hl, $ba08

jr_00b_6d51:
    sub d
    ld b, h
    add $08
    nop
    sbc e
    or e
    ld b, h
    inc b
    ld [hl], h
    ld l, l
    or e
    ld b, h
    ld bc, $6d63
    ld l, l
    ld d, a
    ret nz

    ld b, e
    ld l, a
    add $77
    ld h, [hl]
    ld l, l
    ld l, h
    ld l, l
    sbc b
    ld hl, $ba01
    sub d
    ld b, h
    add $02
    sub [hl]
    jr @-$60

    sbc b
    ld hl, $6d0c
    ld [hl], h
    sbc e
    or e
    ld b, h
    inc b
    sbc e
    ld l, l
    or e
    ld b, h
    ld [bc], a
    adc c
    ld l, l
    ld l, l
    ld a, l
    ret nz

    ld b, e
    ld l, a
    add $77
    adc h
    ld l, l
    sub d
    ld l, l
    sbc b
    ld hl, $9202
    ld b, h
    add $04

jr_00b_6d99:
    cp h
    cp c
    sub [hl]
    nop
    sbc [hl]
    sbc b
    ld hl, $6d0d
    sbc e
    or e
    ld b, h
    jr nz, jr_00b_6d51

    ld l, l
    ld l, l
    and e
    xor $1c
    rst $28
    ld a, [de]
    xor $18
    rst $28
    inc e
    xor $20
    nop
    sub [hl]
    db $10
    ret nz

    ld b, e
    ld l, a
    add $77
    cp d
    ld l, l
    ret nz

    ld l, l

jr_00b_6dc0:
    sbc b

jr_00b_6dc1:
    ld hl, $9209

jr_00b_6dc4:
    ld b, h
    add $10
    or e
    ld b, h
    jr nz, jr_00b_6d99

    ld l, l
    ld l, l
    rst $00
    xor $28
    rst $28
    jr z, jr_00b_6dc1

    jr jr_00b_6dc4

    add hl, de
    xor $20
    cp c
    cp h
    nop
    or e
    ld b, h
    db $10
    ld [c], a
    ld l, l
    ld l, l
    db $db
    sub [hl]
    db $10
    ret nz

    ld b, e
    ld l, a
    add $77

jr_00b_6de9:
    rst $20
    ld l, l
    db $ed

jr_00b_6dec:
    ld l, l
    sbc b
    ld hl, $ba0a
    sub d
    ld b, h
    add $20
    xor $1c
    rst $28
    rrca
    xor $18
    rst $28
    jr jr_00b_6dec

    jr nz, jr_00b_6e00

jr_00b_6e00:
    or e
    ld b, l
    ld [bc], a
    ld h, d
    ld l, [hl]
    or e
    ld b, l
    ld bc, $6e5b
    cp d
    ret nz

    ld b, e
    ld l, a
    add $77
    or $6c
    inc d
    ld l, [hl]

jr_00b_6e14:
    sbc b
    ld [hl+], a
    nop
    sub d
    ld a, $d1
    ld bc, $0096
    rst $00
    ld a, $d1
    inc b
    dec h
    ld l, [hl]
    ld l, [hl]
    dec e
    rst $10

jr_00b_6e26:
    jr nz, jr_00b_6dc0

    ld [hl+], a
    inc bc
    ret nz

jr_00b_6e2b:
    ld b, e
    ld l, a
    add $77
    dec l
    ld l, [hl]
    inc sp
    ld l, [hl]

jr_00b_6e33:
    sbc b
    ld [hl+], a
    inc b
    cp d
    sub d
    ld a, $d1
    db $10
    rst $00
    ld a, $d1
    ld b, b
    ld b, e
    ld l, [hl]
    ld l, [hl]

jr_00b_6e42:
    dec sp
    db $e3
    ld [hl], b
    adc c
    ld [$648b], sp
    adc h
    jr nc, jr_00b_6e42

    adc e
    ld [hl-], a
    rst $28
    jr nc, jr_00b_6de9

jr_00b_6e51:
    ld [hl+], a
    add hl, bc
    cp d
    sub d
    ld b, l
    add $01
    db $ed
    jr nc, jr_00b_6e14

    or e

jr_00b_6e5c:
    ld b, l
    ld [bc], a
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld e, e
    cp d
    rst $28
    jr nc, jr_00b_6e26

    sbc l
    ld l, [hl]
    rst $10

jr_00b_6e69:
    ld [hl], b
    sbc b
    ld [hl+], a
    ld c, $6e
    ld a, d
    cp d
    rst $28
    jr nc, jr_00b_6e33

    sbc l
    ld l, [hl]
    rst $10
    ld [hl], b
    sbc b
    ld [hl+], a
    dec bc
    or e
    ld b, l
    ld [$6e81], sp
    ld l, [hl]
    ld a, d
    cp h
    cp c
    sub d
    ld a, $d1
    add b
    db $ed
    jr nc, @-$38

    ld a, e
    adc a
    ld l, [hl]
    adc c
    ld l, [hl]
    cp d
    rst $28
    jr nc, jr_00b_6e2b

    ld [hl+], a
    inc c

jr_00b_6e95:
    db $ed
    jr nc, jr_00b_6e51

    sub d
    ld b, l
    add $04
    nop
    add h
    ld [hl], e
    inc bc
    adc b
    jr nc, @-$7a

    ld [hl], e
    inc b
    adc b
    ld d, b
    add h
    ld [hl], e
    dec b
    jr jr_00b_6e5c

    pop bc

jr_00b_6ead:
    or e
    ld b, l

jr_00b_6eaf:
    ld bc, $6ef5
    rst $00
    ld a, $d1
    ld bc, $6eba
    ld l, [hl]
    xor l

jr_00b_6eba:
    ret nz

    ld b, e
    ld l, a
    add $77
    cp l
    ld l, [hl]
    jp $986e


    ld [hl+], a
    ld bc, $92ba
    ld a, $d1
    ld [bc], a
    sub [hl]

jr_00b_6ecc:
    jr jr_00b_6e95

    ld a, $d1
    db $10
    push de
    ld l, [hl]
    ld l, [hl]
    call $2298
    dec b
    cp d
    adc h
    db $10
    sub c
    dec hl
    pop de
    jr nz, jr_00b_6e69

    ld [$108c], sp
    sub d
    ld a, $d1
    jr nz, jr_00b_6eaf

    ld a, $d1
    ld b, b
    rst $28
    ld l, [hl]
    ld l, [hl]
    rst $20
    adc e
    ld h, h
    adc c
    inc b
    adc h
    jr nz, jr_00b_6ef6

jr_00b_6ef6:
    or e
    ld b, l
    ld bc, $6f22
    rst $00
    ld a, $d1
    ld [bc], a
    inc bc
    ld l, a
    ld l, [hl]
    or $c0
    ld b, e
    ld l, a
    add $77
    ld b, $6f
    inc c
    ld l, a
    sbc b
    ld [hl+], a
    ld [bc], a
    cp d
    sub d
    ld a, $d1
    inc b
    rst $00
    ld a, $d1
    ld b, b
    inc e
    ld l, a
    ld l, a
    inc d
    adc e
    ld h, h
    adc c
    jr jr_00b_6ead

    jr nz, jr_00b_6f23

jr_00b_6f23:
    adc c
    nop
    adc h
    jr nc, jr_00b_6eba

    ld b, l
    add $08
    rst $00
    ld a, $d1
    add b
    inc sp
    ld l, a
    ld l, a
    dec hl
    and $20
    nop
    nop
    adc c
    nop
    adc h
    cpl
    ld l, a
    dec hl
    adc c
    jr jr_00b_6ecc

    cpl
    ld l, a
    dec hl
    sub l
    nop
    db $fd
    ld a, [c]
    pop bc
    adc b
    ld b, h
    ld d, b
    rst $10
    ret z

    adc a
    ld bc, $fad7
    rst $10
    ld h, b
    adc a
    ld [bc], a
    rst $10
    sbc $8f
    inc bc
    rst $10
    ld a, d
    nop
    sbc e
    or e
    ld b, h
    inc b
    ld [hl], e
    ld l, a
    cp e
    cp d
    ret nz

    ld b, e
    ld l, a
    add $77
    ld h, a
    ld l, a
    ld l, l
    ld l, a
    sbc b
    ld c, $92
    ld b, h
    add $01
    sub [hl]
    nop
    sbc [hl]
    ldh [$ec], a
    ld e, [hl]
    cp e
    sbc b
    ld de, $c6ba
    ld a, b
    sub b
    ld l, a
    add e
    ld l, a
    or $9a
    inc e
    jp $9500


    ld l, a
    sbc b
    inc d
    cp h
    cp c
    ld l, a
    ld [hl], e
    cp h
    cp c
    or $6f
    ld [hl], e
    add $78
    adc d
    ld l, a
    sbc e
    ld l, a
    adc [hl]
    ld a, c
    ld bc, $1298
    cp d
    sub d
    ld b, h
    add $08
    nop
    sbc e
    or e
    ld b, h
    inc b
    jp nz, $b36f

    ld b, h
    ld bc, $6fb3
    ld l, a
    and a
    ret nz

    ld b, e
    ld l, a
    add $77
    or [hl]
    ld l, a
    cp h
    ld l, a
    sbc b
    rrca
    sub d
    ld b, h
    add $02
    sub [hl]
    nop
    sbc [hl]
    ldh [$ec], a
    ld e, [hl]
    sbc b
    ld d, $6f
    jp nz, $b39b

    ld b, h
    inc b
    ld [$b36f], a
    ld b, h
    ld [bc], a
    reti


    ld l, a
    ld l, a
    call Call_00b_43c0
    ld l, a
    add $77
    call c, $e26f
    ld l, a
    sbc b
    db $10
    sub d
    ld b, h
    add $04
    cp h
    cp c
    sub [hl]
    ld [$e09e], sp
    db $ec
    ld e, [hl]
    sbc b
    rla
    ld l, a
    ld [$44b3], a
    db $10
    ei
    ld l, a
    ld l, a
    db $f4
    adc c
    inc b
    adc a
    rst $38
    adc h

Jump_00b_7000:
    ldh a, [$96]
    db $10
    ret nz

    ld b, e
    ld l, a
    or e
    ld b, h
    db $10
    dec c
    ld [hl], b
    ld [hl], b
    ld b, $89
    inc b
    adc a
    rst $38
    adc h
    ldh a, [$96]
    db $10
    ret nz

    ld b, e
    ld l, a
    add $77
    jr @+$72

    ld e, $70
    sbc b
    inc de
    cp d
    sub d
    ld b, h
    add $10
    adc c
    inc b
    adc a
    rst $38
    adc h
    ldh a, [rP1]
    sbc e
    sub [hl]
    db $10
    sbc [hl]
    sbc b
    jr jr_00b_70a3

    dec l
    sbc e
    sub [hl]
    db $10
    sbc [hl]
    sbc b
    add hl, de
    ld [hl], b
    dec [hl]
    sbc e
    sub [hl]
    nop
    sbc [hl]
    sbc b
    ld a, [de]
    ld [hl], b
    dec a
    sub a
    ld de, $9700
    ld de, $9701
    ld de, $9702
    ld de, $9703
    ld de, $9704
    ld de, $9a05
    dec hl
    nop
    ret nz

    call c, $9270
    ld b, d
    add $01
    nop
    sbc d
    dec hl
    ld [bc], a
    ret nz

    call c, $9270
    ld b, d
    add $04
    sbc b
    dec hl
    dec c
    cp d
    nop
    sbc d
    dec hl
    inc b
    ret nz

    call c, $9270
    ld b, d
    add $08
    nop
    sbc d
    dec hl
    ld bc, $dcc0
    ld [hl], b
    sub d
    ld b, d
    add $02
    nop
    sbc d
    dec hl
    inc bc
    ret nz

    call c, $9270
    ld b, d
    add $10
    nop
    sbc d
    dec hl
    inc bc
    ret nz

    call c, $9270
    ld b, d
    add $20
    nop
    sbc d
    dec hl
    inc bc
    ret nz

    call c, $9270

jr_00b_70a3:
    ld b, d
    add $40
    nop
    sbc d
    dec hl
    inc bc
    ret nz

    call c, $9270
    ld b, d
    add $80
    nop
    sbc d
    dec hl
    add hl, bc
    ret nz

    call c, $0070
    sbc d
    dec hl
    dec b
    ret nz

    call c, $0070
    sbc d
    dec hl
    ld a, [bc]
    ret nz

    call c, $0070
    sbc d
    dec hl
    ld b, $c0
    call c, $0070
    sbc d
    dec hl
    db $10
    ret nz

    call c, $0070
    sbc d
    dec hl
    ld [$dcc0], sp
    ld [hl], b
    nop
    jp $e800


    ld [hl], b
    sub c
    and b
    rlc c
    adc [hl]
    ld a, l
    rst $38
    nop
    add $7b
    xor $70
    rst $30
    ld [hl], b
    db $e3
    ld e, d
    sbc b
    dec hl
    ld [de], a
    adc [hl]
    ld a, l
    rst $38
    nop
    add $7c
    ld [bc], a
    ld [hl], c
    sbc b
    dec hl
    inc c
    adc [hl]
    ld a, l
    rst $38
    nop
    sub c
    and b
    rlc c
    cp d
    adc [hl]
    ld a, l
    ld bc, $87c1
    ld bc, $12cc
    ld [hl], c
    inc sp
    ld [hl], c
    add a
    add hl, sp
    call z, Call_00b_7154
    and d
    ld [hl], c
    and d
    ld [hl], c
    and d
    ld [hl], c
    and d
    ld [hl], c
    and d
    ld [hl], c
    and d
    ld [hl], c
    or c
    ld [hl], c
    ret z

    ld [hl], c
    and d
    ld [hl], c
    and d
    ld [hl], c
    and d
    ld [hl], c
    rst $38
    ld [hl], c
    inc hl
    ld [hl], d
    ld b, d
    ld [hl], d
    add a
    add hl, sp
    call z, Call_00b_7154
    and d
    ld [hl], c
    and d
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    ret z

    ld [hl], c
    and d
    ld [hl], c
    or c
    ld [hl], c

jr_00b_714c:
    or c
    ld [hl], c
    rst $38
    ld [hl], c
    inc hl
    ld [hl], d
    ld b, d
    ld [hl], d

Call_00b_7154:
    pop hl
    inc hl
    ld h, c
    nop
    pop hl
    ld [c], a
    ld h, b
    inc bc
    or b
    ld b, b
    sub [hl]
    ld [hl], c
    ret nz

    ld a, l
    ld [hl], d
    cp l
    or l
    jr jr_00b_71e3

    ld [hl], c
    or [hl]
    jr jr_00b_714c

    db $f4
    ld h, b
    nop
    or $e1
    db $f4
    ld h, b
    ld bc, $c3f0
    ld bc, $717b
    or $71
    ld l, a
    or $e1
    db $f4
    ld h, b
    ld [bc], a
    ldh a, [$b0]
    add b
    adc d
    ld [hl], c
    or c
    add b
    ldh [$32], a
    ld h, c
    pop hl
    inc hl
    ld h, c
    ld [bc], a

Call_00b_718e:
    call nc, $ff61
    pop hl
    inc hl
    ld h, c
    nop
    cp [hl]
    ret nz

    ld a, l
    ld [hl], d
    pop hl

jr_00b_719a:
    rst $28
    ld h, b
    inc bc
    ret nz

    sbc h
    ld [hl], d
    ld [hl], c
    sub [hl]
    pop hl
    inc hl
    ld h, c
    nop
    ret nz

    ld a, l
    ld [hl], d
    ldh [$ea], a
    ld h, b
    ret nz

    sbc h
    ld [hl], d
    ld [hl], c
    and [hl]
    pop hl
    inc hl
    ld h, c
    inc b
    adc l
    inc h
    db $10
    sbc e
    sbc [hl]
    pop hl
    inc hl
    ld h, c
    ld bc, $eae0
    ld h, b
    ldh a, [$e1]
    inc hl
    ld h, c
    inc b
    ld [hl], c
    cp c
    pop hl
    inc hl
    ld h, c
    inc b
    db $d3
    nop
    nop
    call $f6bd
    pop hl
    inc hl
    ld h, c
    ld bc, $e7e1
    ld h, b
    rla
    ldh a, [$e1]
    inc hl
    ld h, c
    inc b
    ldh [$7e], a
    ld h, c
    rst $10

jr_00b_71e3:
    ld h, c
    rst $10
    ld h, c
    db $e3
    ld e, [hl]
    sbc $36
    nop
    rst $30

jr_00b_71ec:
    pop hl
    inc hl
    ld h, c
    ld bc, $efe1
    ld h, b
    jr jr_00b_71ec

    pop hl
    add e
    ld sp, $e001
    add h
    ld h, c
    rst $10
    rst $38
    nop
    pop hl
    inc hl
    ld h, c
    inc b
    ldh [$9a], a
    ld h, c
    db $e4
    ld e, $e1
    ld [c], a
    ld h, b
    jr jr_00b_719a

jr_00b_720d:
    inc h
    db $10
    sbc e
    ldh [$8e], a
    ld h, c
    sbc [hl]
    pop hl
    inc hl
    ld h, c
    ld bc, $efe1
    ld h, b
    jr jr_00b_720d

    pop hl

jr_00b_721e:
    inc hl
    ld h, c
    inc b
    ld [hl], d
    inc de
    pop hl
    inc hl
    ld h, c
    inc b
    ldh [$9a], a
    ld h, c
    db $e4
    ld e, $e1
    ld [c], a
    ld h, b
    jr c, @-$71

    inc h
    db $10
    sbc e
    sbc [hl]
    pop hl
    inc hl
    ld h, c
    ld bc, $1798
    jr c, jr_00b_721e

    inc hl
    ld h, c
    inc b
    ld [hl], d
    inc [hl]
    pop hl
    inc hl
    ld h, c
    nop
    pop hl
    ld [c], a
    ld h, b
    add hl, sp
    ret nz

    ld a, l
    ld [hl], d
    sbc b
    rla
    add hl, sp
    ret nz

    sbc h
    ld [hl], d
    ld [hl], d
    ld c, d
    pop hl
    inc hl
    ld h, c
    nop
    and a
    db $e3
    sbc b
    pop hl
    inc hl
    ld h, c
    inc bc
    nop
    pop hl
    inc hl
    ld h, c
    inc b
    push de
    ret nz

    rst $08
    ld [bc], a
    pop hl
    inc hl
    ld h, c
    ld bc, $3d98
    rlca
    ldh a, [$e1]
    inc hl
    ld h, c
    inc b
    ld hl, sp-$6f
    ret nz

    rst $08
    inc bc
    rst $10
    rst $38
    nop
    and a
    cp e
    sub c
    xor a
    call z, $e380
    sbc b
    pop hl
    inc hl
    ld h, c
    inc bc
    push de
    xor a
    call z, $baff
    call nc, $ff61
    cp b
    sub c
    xor a
    call z, $e100
    inc hl
    ld h, c
    ld bc, $c1bc
    cp c
    pop hl
    inc hl
    ld h, c
    ld [bc], a
    call nc, $ff61
    pop hl
    inc hl
    ld h, c
    nop
    pop bc
    db $eb
    sbc [hl]
    sbc b
    dec e
    nop
    sbc [hl]
    sbc b
    dec e
    ld bc, $aa72
    sub a
    dec e
    ld [bc], a
    sub a
    dec e
    inc bc
    sub a
    dec e
    inc b
    sub a
    dec e
    dec b
    db $eb
    or l
    ld d, $e0
    ld [hl], d
    rst JumpTable
    ld l, $dd
    ld [hl], d
    sub a
    jr jr_00b_72cc

jr_00b_72cc:
    db $eb
    or l
    ld d, $d3
    ld [hl], d
    ld [hl], d
    db $dd
    sbc [hl]
    sbc b
    jr jr_00b_72d9

    sbc [hl]
    sbc b

jr_00b_72d9:
    jr jr_00b_72dc

    ld [hl], d

jr_00b_72dc:
    db $d3
    sub a
    jr jr_00b_72e1

Call_00b_72e0:
    sub a

jr_00b_72e1:
    jr @+$04

    sub a
    jr jr_00b_72e9

    sub a
    jr jr_00b_72ed

jr_00b_72e9:
    sub a
    jr jr_00b_72f1

    db $eb

jr_00b_72ed:
    cp [hl]
    sbc [hl]
    cp l
    rst JumpTable

jr_00b_72f1:
    ld l, $11
    ld [hl], e
    rst JumpTable
    ld d, h
    rst $38
    ld [hl], d
    sbc b
    inc [hl]
    nop
    or c
    ld b, b
    ld [hl], d
    db $ed
    or b
    ld b, b
    add hl, bc
    ld [hl], e
    sbc b
    inc [hl]
    nop
    or c
    ld b, b
    or $98
    inc [hl]
    ld bc, $def5
    ld l, $00
    push af
    sbc b
    inc [hl]
    inc b
    ld [hl], d
    db $ed
    sub a
    inc [hl]
    ld [bc], a
    sub a
    inc [hl]
    inc bc
    nop
    db $eb
    or b
    ld b, b
    scf
    ld [hl], e
    add $78
    jr z, @+$75

    dec l
    ld [hl], e
    sbc [hl]
    sbc b
    ld bc, $2873
    sbc [hl]
    sbc b
    ld [bc], a
    cp l
    sbc $4c
    nop
    or c
    ld b, b
    cp [hl]
    sbc [hl]
    sbc b
    inc bc
    ld [hl], e
    scf
    ld hl, sp-$68
    ld [hl], $00
    nop
    ld hl, sp-$4f
    add b
    nop
    call $0187
    call z, Call_00b_734d
    ld d, a
    ld [hl], e

Call_00b_734d:
    db $dd
    ld c, l
    nop
    rst JumpTable
    ld c, l
    ld d, [hl]
    ld [hl], e
    ld [hl], e
    ld d, b
    nop
    db $dd
    jr z, jr_00b_7366

    nop
    or b
    ld b, b
    ld a, d
    ld [hl], e
    push de
    xor c
    call z, $b101
    ld b, b
    rst $30

jr_00b_7366:
    db $e3
    ld c, l
    ld hl, sp-$1d
    or c
    rst $20
    db $76
    and a
    rst $10
    ld [bc], a
    rst $20
    ld h, [hl]
    and a
    di
    db $e3
    or c
    db $f4
    db $e3
    or c
    nop
    rst $20
    ld [hl], a
    and c
    nop
    add e
    inc d
    db $d3
    ld d, b
    call $0187
    call z, Call_00b_7392
    sbc [hl]
    ld [hl], e
    call $0187
    call z, Call_00b_739e
    sub d
    ld [hl], e

Call_00b_7392:
    sub c
    cp l
    call z, $914e
    cp [hl]
    call z, $e700
    ld d, a
    pop af
    nop

Call_00b_739e:
    sub c
    cp l
    call z, $9128
    cp [hl]
    call z, $e706
    ld d, a
    pop af
    nop
    nop
    adc l
    ld de, $9b0e
    sbc [hl]

jr_00b_73b0:
    sbc b
    jr c, jr_00b_73b5

    ld [hl], e
    xor a

jr_00b_73b5:
    adc l
    dec bc
    ld c, $9b
    sbc [hl]
    sbc b
    jr c, jr_00b_73c0

    ld [hl], e
    cp c
    adc l

jr_00b_73c0:
    dec bc
    ld c, $9b
    sbc [hl]
    sbc b
    jr c, jr_00b_73cc

    ld [hl], e
    jp $1483


    sub b

jr_00b_73cc:
    ld d, c

jr_00b_73cd:
    and b
    adc e
    ld d, b
    adc a
    dec b
    adc c
    db $10
    adc h
    ld hl, $00f7
    adc e
    jr z, jr_00b_73b0

    ret nz

    rst $08
    ld [bc], a
    adc c
    nop
    adc h
    dec h
    push de
    ret nz

    rst $08
    dec b
    adc c
    db $10
    adc h
    dec h
    push de
    ret nz

    rst $08
    ld b, $89
    nop
    adc h
    dec h
    nop
    sub a
    jr c, jr_00b_73f6

jr_00b_73f6:
    adc b
    ld b, b
    ld a, [hl]
    db $eb
    adc e
    inc d
    adc c
    rra
    adc a
    rst $38

Jump_00b_7400:
    and b
    adc [hl]
    ld e, d
    add d
    adc h
    db $10
    push af
    xor c

jr_00b_7408:
    adc c
    rrca
    adc a
    rst $38
    xor b
    di
    xor d
    xor c
    adc h
    jr nc, jr_00b_7408

    xor e
    xor d
    push af
    adc c
    rra
    adc a
    rst $38
    adc h

jr_00b_741b:
    jr nz, @-$76

    ld b, b
    ld a, [hl]
    ld [hl], h
    nop
    and b
    di
    adc e
    ld d, b
    ret nz

    jr nc, @+$76

    pop af
    adc a
    ld [bc], a
    adc c
    db $10
    adc h

jr_00b_742e:
    ld a, [de]
    nop
    call z, HeaderCGBFlag
    inc a
    ld [hl], h
    adc a
    ld bc, $0889
    adc h
    add hl, bc
    pop bc
    adc a
    inc bc
    adc c
    jr jr_00b_73cd

    add hl, bc
    pop bc
    adc e
    jr z, jr_00b_741b

    ret nz

    rst $08
    ld bc, $29ef
    adc a
    add hl, bc

jr_00b_744d:
    push de

jr_00b_744e:
    ret nz

    rst $08
    inc bc
    ldh [rTMA], a
    ld h, d
    ldh a, [rP1]
    adc e
    jr z, jr_00b_742e

    ret nz

    rst $08
    ld bc, $29ed
    adc a
    add hl, bc
    push de
    ret nz

    rst $08
    inc bc
    ldh [rTMA], a
    ld h, d
    ldh a, [rP1]
    push de
    ret nz

    rst $08
    inc bc
    ldh [$fa], a
    ld h, c
    ldh a, [rP1]
    db $eb

jr_00b_7473:
    or b
    ld b, b
    add e
    ld [hl], h
    sbc [hl]
    cp l
    sbc b
    inc bc
    ldh [rNR52], a
    ld h, d
    ld a, [c]
    jp c, $40b1

    cp [hl]
    sbc [hl]
    sbc b
    rlca
    ld [hl], h
    add e
    db $eb
    or b
    ld b, b
    sbc [hl]
    ld [hl], h
    sbc [hl]
    cp l
    sbc b
    nop
    ldh [rIF], a
    ld h, d
    call z, $007f
    and e
    ld [hl], h
    ld a, [c]
    jp c, $40b1

    cp [hl]
    sbc [hl]
    sbc b
    ld bc, $9e74
    or $98
    ld [bc], a
    cp [hl]
    ld [hl], h
    sbc [hl]
    db $eb
    or b
    ld b, b

jr_00b_74ac:
    rst $28
    ld [hl], h
    cp l

jr_00b_74af:
    adc e
    jr z, jr_00b_74ac

    sub [hl]
    db $10
    adc h
    jr nz, jr_00b_744d

    ld [$06d7], sp
    adc h
    jr nz, jr_00b_744e

    ret nc

    rst $08
    ld bc, $d0d5
    rst $08
    ld [bc], a
    or $cb
    ld bc, $01cc
    ret nc

    ld [hl], h
    sbc b
    dec h
    nop
    ld [hl], h
    db $d3
    sbc b
    dec h
    ld bc, $fae4
    sub [hl]
    jr jr_00b_74af

    ld b, $8c
    jr nc, @-$1a

    inc bc
    sub [hl]
    nop
    rst $10
    ld b, $8c
    jr nz, jr_00b_7473

    ld [bc], a
    or $91
    ret nc

jr_00b_74e8:
    rst $08
    inc bc
    or c
    ld b, b
    or [hl]
    ld a, [bc]
    cp [hl]
    or l
    jr jr_00b_74e8

    ld [hl], h
    sub a
    dec h
    inc bc
    sub a
    dec h
    dec b
    rst JumpTable
    rlca
    nop
    ld [hl], l
    sub a
    dec h
    db $10
    sub a
    dec h
    ld b, $97
    dec h
    rlca
    rst JumpTable
    ld l, $0d
    ld [hl], l
    sub a
    dec h
    ld [$2597], sp
    add hl, bc
    sub a
    dec h
    ld a, [bc]
    ldh [$3b], a
    ld h, d
    add a
    ret nz

    rst $08
    dec e
    ld [hl], l
    dec c
    ld [hl], l
    sub a
    dec h
    dec bc
    sub a
    dec h
    inc c
    sub a
    dec h
    dec c
    sub a
    dec h
    ld c, $eb
    sbc [hl]
    ldh [$b8], a
    ld h, e
    sbc b
    ld b, $00
    di
    adc a
    cp $7b
    ld [hl], l
    ld a, [hl+]
    or l
    ld h, $46
    ld [hl], l
    adc e
    jr z, @-$68

jr_00b_753e:
    nop
    ld hl, sp-$74
    add hl, hl
    di
    sub [hl]
    jr jr_00b_753e

    adc b
    ld a, b
    ld l, b
    sub a
    ld b, $09
    add e
    inc d
    push bc
    ld d, c
    sub a
    dec b
    ld [bc], a
    sub a
    dec h
    rrca
    db $e3
    cp b
    ret nz

    ld l, a
    ld [hl], l
    rst $10
    inc hl
    ret nz

    ld l, a
    ld [hl], l
    rst $10
    inc hl
    db $e3
    cp b
    ret nz

    ld l, a
    ld [hl], l
    rst $10
    inc hl
    ret nz

    ld l, a
    ld [hl], l
    rst $10
    rst $38
    nop
    db $e3
    ld [hl], e
    ldh [$4c], a
    ld h, d
    rst $10
    dec b
    db $e3
    ld [hl], e
    ldh [rVBK], a
    ld h, d
    rst $10
    dec b
    db $e3
    ld [hl], e
    ldh [$4c], a
    ld h, d
    rst $10
    dec b
    db $e3
    ld [hl], e
    ldh [$4c], a
    ld h, d
    pop bc
    adc l
    ld [de], a
    ld b, $9b
    add $7f
    sbc b
    ld [hl], l
    sbc l
    ld [hl], l
    pop bc
    ld [hl], l
    ldh a, [$75]
    sbc [hl]
    sbc b
    nop
    ld [hl], l
    sbc b
    sbc [hl]
    cp l

jr_00b_759f:
    ret nz

    ld b, d
    db $76
    sbc b
    inc bc
    jp $b800


    ld [hl], l
    or $98
    ld b, $8f
    ld bc, $98f6
    rlca
    ret nz

    ld d, b
    db $76
    sbc $4a
    ld [bc], a
    db $76
    ld [hl], l
    or $98
    inc b
    cp [hl]
    sbc [hl]
    sbc b
    dec b
    ld [hl], l
    cp h
    sbc [hl]
    cp l
    ret nz

    ld b, d
    db $76
    rst JumpTable
    ld bc, $75cc
    ld [hl], l
    db $eb
    sbc b
    ld a, [bc]
    jp $e200


    ld [hl], l
    or $98
    inc c
    adc a
    ld bc, $98f6
    dec c
    ret nz

jr_00b_75db:
    ld d, b
    db $76
    ldh [$a2], a
    ld h, d
    db $76
    ld [hl], l
    or $98
    dec bc
    cp [hl]
    sbc [hl]
    sbc b
    dec b
    ld [hl], l
    and $98
    inc de
    cp [hl]
    ld [hl], l
    and $b5
    ld e, [hl]
    ld a, $76
    sbc [hl]
    cp l
    ret nz

    ld b, d
    db $76

jr_00b_75f9:
    rst JumpTable
    ld bc, $7603
    cp [hl]
    sbc b
    jr jr_00b_759f

    ld [hl], l
    cp $98
    ld c, $c3
    nop
    ld de, $f676
    sbc b
    db $10
    cp [hl]
    sbc [hl]
    cp l
    db $76
    inc bc
    or $98
    rrca
    add [hl]
    inc h
    or $87
    and e
    call z, Call_00b_7623
    ld e, $76
    sbc b
    ld de, $75be
    db $f4

Call_00b_7623:
    or [hl]
    ld d, h
    sbc b
    ld [de], a
    ret nz

    ld d, b
    db $76
    ldh [$a7], a
    ld h, d
    or [hl]
    ld e, [hl]
    or $86
    inc [hl]
    sbc b
    ld d, $f6
    jp $3b00


    db $76
    db $76
    ld [hl-], a
    sbc b
    rla
    cp [hl]
    sbc [hl]
    cp l
    db $76
    jr nc, jr_00b_75db

    nop
    or $98
    ld bc, $018f

jr_00b_7649:
    or $98
    ld [bc], a

jr_00b_764c:
    adc a
    ld [bc], a
    or $c1
    ldh [rLY], a

jr_00b_7652:
    ld sp, $88d1
    ld d, b
    ld [hl], b
    adc a
    ld bc, $e0f8
    ld [hl], c
    ld sp, $f6d1
    adc e
    ld d, b
    adc a
    nop
    adc c
    nop
    adc h
    dec c
    pop af
    adc a
    inc bc
    adc c
    jr jr_00b_75f9

    ld hl, $8ff1
    ld [bc], a

jr_00b_7671:
    or $98
    ld [$f1c1], sp
    cp [hl]
    sbc [hl]
    sbc b
    add hl, bc
    db $76
    ld [hl], a
    add e
    inc d
    ldh a, [rHDMA1]
    add e
    inc d
    ld a, [bc]
    ld d, d
    nop
    db $eb
    sbc [hl]
    cp l
    di
    adc [hl]
    ld a, b
    ld bc, $cae0
    ld h, d
    ld a, [c]
    sbc b
    dec a
    jr jr_00b_7652

    adc [hl]
    ld a, b
    nop
    adc a
    ld b, $76
    add [hl]
    add e
    inc d
    dec de
    ld d, d
    push de
    ret nz

    rst $08
    ld bc, $018f
    call nc, $0161
    sub c
    ret nz

    rst $08
    ld [bc], a
    nop
    push de
    ret nz

    rst $08
    ld [bc], a
    ldh [$d9], a
    ld h, d
    adc a
    inc bc
    nop
    push de
    ret nz

    rst $08
    inc bc
    adc c
    jr jr_00b_7649

    jr z, jr_00b_764c

    jr nz, @-$27

    ld b, $8f
    inc b
    or $98
    dec a
    ld a, [bc]
    or $89
    ld [$058f], sp
    rst $10
    ld b, $8c
    jr nz, @-$0b

    adc a
    rlca
    sub c
    ret nz

    rst $08
    inc b
    rst $10
    add b
    nop
    push de
    ret nz

    rst $08
    dec b
    adc c
    jr @-$73

    jr z, jr_00b_7671

    db $10
    adc a
    ld a, [bc]
    adc c
    db $10
    rst $10
    ld b, $8c
    db $10
    adc a
    dec bc
    adc c
    jr @-$27

    ld b, $8c
    ld [de], a
    adc a
    ld [$0089], sp
    or $98
    dec a
    ld [$80d7], sp
    sub c
    ret nz

    rst $08
    ld b, $00
    adc b
    ld b, b
    ld [hl], b
    adc l
    inc e
    inc e
    db $db
    cp b
    ldh [rDIV], a
    ld h, e
    add a
    ld bc, $17cc
    ld [hl], a
    dec h
    ld [hl], a
    or b
    ld b, b
    ld hl, $9877
    nop
    or c
    ld b, b
    cp c
    nop
    sbc b
    ld bc, $00b9
    or b
    ld b, b
    cpl
    ld [hl], a
    sbc b
    ld [bc], a
    or c
    ld b, b
    cp c
    nop
    sbc b
    inc bc
    cp c
    nop
    adc b
    ld l, b
    adc b
    adc l
    ld [$d608], sp
    ld [c], a
    pop af
    rst $20
    ld l, b
    xor h
    db $e3
    ld [hl], b
    adc b
    ld b, b
    ld d, b
    adc l
    jr z, jr_00b_774f

    db $db
    cp b
    ldh [rDIV], a
    ld h, e
    ldh [$fc], a
    ld h, d

jr_00b_774f:
    sbc b
    inc b
    db $e3
    ld a, b
    or $e4
    dec l
    xor b
    cp c
    and b
    cp b
    ret nz

    db $76
    ld [hl], a
    ret nz

    db $76
    ld [hl], a
    ret nz

    add e
    ld [hl], a
    ret nz

    add e
    ld [hl], a
    ret nz

    add e
    ld [hl], a
    ret nz

    add e
    ld [hl], a
    ret nz

    add e
    ld [hl], a
    ret nz

    add e
    ld [hl], a
    ldh [$e2], a

jr_00b_7774:
    ld h, d
    nop
    db $e3
    cp h
    ldh [$a6], a
    inc l
    ld a, [c]
    db $e3
    cp h
    ldh [rNR10], a
    ld sp, $c1f2
    db $e3
    cp h
    ldh [$a6], a
    inc l
    pop af

jr_00b_7789:
    db $e3
    cp h
    ldh [rNR10], a
    ld sp, $c1f1
    adc $bd
    ldh [rHDMA2], a
    ld a, $98
    dec b
    xor b
    rst $10
    ld c, e
    or c
    ld b, b
    cp [hl]
    nop
    adc e
    add hl, de
    adc h
    ld c, $d7
    ld d, b
    ld [hl], a
    and b
    or $77
    and [hl]
    add b
    inc bc
    cp d
    db $fc
    add h
    or c
    ld [bc], a
    sbc b
    ld a, b
    and b
    xor b
    db $fc
    sub c
    xor [hl]
    call z, $e302
    ld a, c
    ld hl, sp-$80
    ld [bc], a
    xor d
    and b
    ldh [$0a], a
    ld h, e
    nop
    add b
    ld [bc], a
    adc e
    jr z, jr_00b_7789

    ld bc, $e078
    ld a, [$951d]
    ld b, b
    cp $f6
    sbc b
    ld bc, $09c0
    ld a, b
    sbc b
    inc bc
    ret nz

    add hl, bc
    ld a, b
    sbc b
    dec b
    xor $30
    db $ed
    db $10
    or $a8
    adc b
    ld hl, sp-$08
    and d
    xor d
    sub [hl]
    jr jr_00b_7774

    sbc b
    ld a, b
    ret nz

    ld bc, $9578
    ld b, b
    cp $f6
    sbc b
    ld b, $c0
    add hl, bc
    ld a, b

jr_00b_77fa:
    xor a
    or $98
    ld [$77a8], sp
    and [hl]
    sub [hl]
    jr jr_00b_77fa

    adc h
    db $10
    db $ec
    jr nc, @-$3d

    xor c
    and d
    xor d
    sub l
    ld b, b
    cp $f6
    pop bc
    add b
    ld [bc], a
    ldh [rIF], a
    ld h, e
    and c
    sub l
    ld b, b
    cp $96
    db $10
    and a
    sub l
    ld b, b
    cp $77
    and [hl]
    adc b
    ld hl, sp-$08
    and b
    db $e3
    ret nc

    ld hl, sp+$78
    ld h, $80
    ld [bc], a
    cp d
    ei
    db $e4
    inc hl
    add h
    or c
    ld a, [bc]
    sbc b
    ld a, b
    and a
    or $98
    ld de, $0ae0
    ld h, e
    nop

jr_00b_783e:
    add b
    ld [bc], a
    di
    ldh [$39], a
    ld e, $88
    ld e, b
    ld [hl], b
    ldh [$a3], a
    ld [de], a
    adc e
    ld a, [bc]
    db $ed
    jr nz, jr_00b_783e

    ld b, b
    db $ed
    ld b, b
    db $e3
    xor d
    ld a, b
    ld c, [hl]
    ret nz

    sub c
    ld a, b
    sbc b
    ld a, [bc]
    ret nz

    add b
    ld a, b
    ret nz

    add b
    ld a, b
    ret nz

    add b
    ld a, b
    sub c
    ld [$03d0], sp
    ret nz

    add b
    ld a, b
    ret nz

    add b
    ld a, b
    sub c
    ld [$00d0], sp
    or $98
    dec bc
    add h
    or c
    dec bc
    sbc b
    ld a, b
    and a
    sub l
    ld b, b
    cp $77
    and [hl]
    adc c
    add hl, de
    adc h
    db $10
    adc c
    inc b
    adc h
    db $10
    adc c
    inc e
    adc h
    db $10
    adc c
    nop
    adc h
    db $10
    pop bc
    add b
    inc b
    adc e
    inc d
    ld hl, sp-$3f
    ret nz

    sub c
    ld a, b
    sbc b
    inc c
    sub c
    ld [$02d0], sp
    ret nz

    jp nz, $c078

    jp nz, $c078

    jp nz, $9178

    ld [$01d0], sp
    ret nz

    jp nz, $9178

    ld [$00d0], sp
    or $98
    dec c
    add h
    or c
    inc c
    sbc b
    ld a, b
    and a
    sub l
    ld b, b
    cp $77
    and [hl]
    adc c
    rlca
    adc h
    rrca
    adc c
    dec de
    adc h
    db $10
    adc c
    inc bc
    adc h
    db $10
    adc c
    nop
    adc h
    db $10
    pop bc
    ret nz

    sub c
    ld a, b
    sbc b
    ld c, $91
    ld [$02d0], sp
    ret nz

    add b
    ld a, b
    ret nz

    add b
    ld a, b
    ret nz

    add b
    ld a, b
    or $91
    ld [$03d0], sp
    sbc b
    rrca
    add h
    or d
    ld bc, $7898
    and a
    sub l
    ld b, b
    cp $77
    and [hl]
    add b
    inc b
    and a
    sub l
    ld b, b
    cp $77
    and [hl]
    or b
    ld b, b

Call_00b_7901:
    inc b
    ld a, c
    nop
    sub a
    dec d
    or l
    rla
    dec bc
    ld a, c
    nop
    sub a
    ld d, $97
    rla
    sub a
    jr @-$67

    add hl, de
    sub a
    ld a, [de]
    sub a
    dec de
    add b
    ld [bc], a
    ldh [$39], a
    ld e, $b5
    dec de
    ret c

    ld b, l
    adc l
    jr c, jr_00b_7953

    ret nc

    ld [c], a
    adc [hl]
    ld e, h
    ld [bc], a
    db $eb
    add b
    dec b
    ldh [$ac], a
    ld h, $9e
    ldh [rNR50], a
    ld h, e
    sbc b
    ld bc, $f6ba
    ld [c], a
    or [hl]
    dec de
    cp c
    xor b
    nop
    add b
    ld b, $e0
    add hl, sp
    ld e, $8d
    ld b, $0a
    or l
    dec de
    ret c

    ld b, l
    ret nc

    sbc b
    nop
    ld a, c
    ld a, [hl-]
    add b
    ld b, $e0
    add hl, sp
    ld e, $eb

jr_00b_7953:
    ld a, c
    ld b, h
    ret nz

    ld l, l
    ld a, c
    sbc b
    ld [bc], a
    xor d
    ret nz

    ld l, l
    ld a, c
    sbc b
    inc b
    xor d
    ret nz

    ld l, l
    ld a, c
    sbc b
    rlca
    xor d
    and a
    sub l
    ld b, b
    cp $77
    and [hl]
    and c
    xor c
    sub l
    ld b, b
    cp $f6
    pop bc
    adc e
    inc d
    ret nz

    add b
    ld a, b
    ret nz

    add b
    ld a, b
    sub c
    ld [$02d0], sp
    sbc b
    db $10
    xor a
    ld [hl], a
    and [hl]
    or b
    ld b, b
    sbc c
    ld a, c
    ldh [$39], a
    ld e, $f1
    ld hl, sp-$68
    ld [de], a
    ld hl, sp-$7c
    or d
    inc bc
    ld l, b
    ld l, b
    or c
    ld b, b
    nop
    add b
    rst $38
    adc b
    ld l, b
    ld a, b
    sub a
    inc d

jr_00b_79a0:
    adc e
    jr z, @-$75

    ld [$108c], sp
    ldh [rNR22], a
    ld h, e
    cp d
    ld hl, sp-$68
    inc de
    db $e4
    rst $38
    cp [hl]
    add b
    rst $38
    sub a
    inc d
    db $d3
    nop
    nop
    call $e5bb
    dec [hl]
    rst $30
    adc b
    ld e, b
    jr c, jr_00b_79a0

    adc [hl]
    inc c
    ldh [$2f], a
    ld h, e
    pop de
    sbc b
    nop
    or $e0
    ld b, a
    ld h, e
    rst $30
    db $e4
    inc e
    ld [c], a
    pop af
    ldh [$5e], a
    ld h, e
    ld sp, hl
    xor b
    di
    sbc b
    ld bc, $e2f6
    xor c
    push af
    db $e4
    ei
    ld sp, hl
    ldh [$34], a
    ld h, e
    pop de
    db $e4
    rst $38
    or [hl]
    inc e
    cp [hl]
    nop
    db $d3
    nop
    nop
    call $e5bb
    dec [hl]
    adc b
    jr jr_00b_7a44

    ld hl, sp-$1c
    ei
    ld sp, hl
    ldh [$4c], a
    ld h, e
    rst $30
    ld [c], a
    pop af
    ldh [$63], a
    ld h, e
    ld sp, hl
    sbc b
    ld [bc], a
    or $e2
    xor a
    sub c
    add $cf
    nop
    ldh [$78], a
    ld h, e
    ldh a, [$e0]
    add e
    ld h, e
    db $e4

jr_00b_7a13:
    ld hl, $b8a0
    sbc b
    inc bc
    sbc b
    inc b
    sbc b
    dec b
    sbc b
    ld b, $a8
    rst $30
    db $e3
    cp e
    and b
    ld hl, sp-$20
    and [hl]
    ld h, e
    or [hl]
    dec e
    nop
    sub c
    xor d
    call z, $8d01
    ld [bc], a
    ld [bc], a
    ret nc

    sub c
    inc b
    call z, $0011
    sub c
    inc b
    call z, $0012
    sub c
    inc b
    call z, RST_10
    db $eb
    sbc [hl]
    or l

jr_00b_7a44:
    add hl, hl
    ld c, l
    ld a, d
    or [hl]
    add hl, hl
    sbc b
    add hl, sp
    ld a, d
    ld b, d
    sbc b
    ld [hl], $7a
    ld b, d
    db $eb
    sbc [hl]
    or l
    add hl, hl
    ld e, l
    ld a, d
    or [hl]
    add hl, hl
    sbc b
    ld a, [hl-]
    ld a, d
    ld d, d
    sbc b
    scf
    ld a, d

jr_00b_7a60:
    ld d, d
    db $eb
    sbc [hl]
    or l
    add hl, hl
    ld l, l
    ld a, d
    or [hl]
    add hl, hl
    sbc b
    dec sp
    ld a, d
    ld h, d
    sbc b
    jr c, jr_00b_7aea

    ld h, d
    adc [hl]
    ld a, a
    ld bc, $148b
    db $ec
    ld b, c
    xor c
    and d
    adc h
    add hl, bc
    rst $10
    rst $38
    nop
    sub a
    dec hl
    adc e
    inc d
    ei
    adc c
    jr jr_00b_7a13

    jr jr_00b_7a60

    ld b, $89
    ld [$148c], sp
    ld a, [$847a]
    nop
    adc b
    jr @+$1a

    adc e
    ld d, b
    xor $19
    pop af
    db $ed
    dec e
    pop af
    adc a
    nop
    pop af
    sbc b
    ld d, b
    ld c, $f6
    sbc b
    ld d, b
    rrca
    or $a8
    adc e
    jr z, @-$75

    jr @-$72

    ld de, $018f
    ld a, [c]
    adc a
    ld [bc], a
    rst $10
    rst $38
    nop
    push de
    ret nz

    rst $08
    ld [$288b], sp
    db $ec
    ld sp, $c0d5
    rst $08
    dec bc
    xor $31
    nop
    sbc h
    ld bc, $eb06
    sbc [hl]
    ldh [$b8], a
    ld h, e
    sbc l
    di
    adc a
    cp $7b
    ld a, d
    jp z, $049c

    ld b, $7a
    ret


    sbc h
    inc bc
    ld b, $7a
    ret


    sbc h
    ld b, $06
    ld a, d
    ret


    sbc h
    ld [bc], a
    ld b, $7a
    ret


    sbc h

jr_00b_7aea:
    dec b
    ld b, $7a
    ret


    db $eb
    or l
    jr z, jr_00b_7aea

    ld a, d
    sbc h
    ld bc, $7a31
    ei
    sbc h
    ld a, [bc]
    ld sp, $9d9e
    ld a, d
    ei
    add e
    inc d

Jump_00b_7b01:
    ld b, [hl]
    ld d, d
    sub a
    ld a, $18
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    nop
    jp $1700


    ld a, e
    ld a, e

jr_00b_7b11:
    ld [de], a
    or $98
    ld bc, $077b
    or $86
    jr nz, jr_00b_7b11

    add a
    and e
    call z, Call_00b_7b26
    ld [hl+], a
    ld a, e
    sbc b
    ld [bc], a
    ld a, e
    rlca

Call_00b_7b26:
    or [hl]
    ld d, b
    sbc b
    inc bc
    jp $3f00


    ld a, e
    ld a, e
    ld a, [hl-]
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld c, $c3
    nop
    ccf

jr_00b_7b39:
    ld a, e
    or $98
    inc b
    ld a, e
    ld sp, $98f6
    dec b
    jp Jump_00b_4800


    ld a, e
    ld a, e
    ccf
    rst $20
    sbc l
    xor h
    db $f4
    or $98
    ld b, $e2
    pop af
    ldh [rHDMA5], a
    ld h, h
    rst $10
    dec l
    db $e3
    call z, $2de4
    adc [hl]
    ld [hl], c
    nop
    ldh [rSCX], a
    ld h, h
    cp [hl]
    add b
    rst $38
    nop
    cp l
    db $e4
    rst $38
    db $e3
    call z, Call_00b_718e
    nop
    ldh [rLY], a
    ld sp, $e0d1
    ld h, h
    ld h, h
    or $e0
    ld [hl], c
    ld sp, $c6d1
    ld a, d
    ld a, [hl]
    ld a, e
    db $e4
    ld a, e
    sbc b
    ld a, [bc]
    ld [c], a
    pop af
    ldh [$5d], a
    ld h, h
    rst $10
    dec l
    sbc b
    dec bc
    cp l
    ret nz

    jp $c07b


    xor a
    ld a, e
    sub c
    ld_long $ffcb, a
    ld sp, hl
    cp c
    cp b
    rst $20
    sbc l
    ld b, h
    rst $10
    dec l
    or [hl]
    ld e, d
    add [hl]
    jr nc, jr_00b_7b39

    inc c
    or $c3
    nop
    and b
    ld a, e
    sbc b
    dec c
    cp [hl]
    or $9e
    cp l
    ld a, e
    sbc [hl]
    add $43
    or l
    ld a, e
    cp h
    ld a, e
    sbc $05
    ld bc, $05de
    inc b
    pop bc
    sbc $05
    ld [bc], a
    sbc $05
    dec b
    pop bc
    ldh [$9a], a
    ld h, h
    or $e0
    adc l
    ld h, h
    di
    db $e3
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $e3f5
    or h
    ldh [rLY], a
    ld sp, $f5d1
    pop hl
    ld e, h
    ld sp, $d104
    pop bc
    sbc b
    ld [$f1e2], sp
    ldh [$5d], a
    ld h, h
    rst $10
    dec l
    sbc b
    add hl, bc
    jp Jump_00b_4c00


    ld a, e
    rst $20
    sbc l
    ld b, h
    db $f4
    adc [hl]
    ld [hl], c
    nop
    ld a, e
    ld a, [hl-]
    db $eb
    ld a, e
    xor e
    db $eb
    cp [hl]

Call_00b_7c01:
    sbc [hl]
    cp l
    sbc b
    rrca
    jp $1000


    ld a, h
    ld a, h
    dec bc
    or $98
    db $10
    ld a, h
    nop
    or $86
    ld hl, $87f6
    and e
    call z, Call_00b_7c1f
    dec de
    ld a, h
    sbc b
    ld [de], a
    ld a, h
    nop

Call_00b_7c1f:
    or [hl]
    ld d, c
    sbc b

jr_00b_7c22:
    ld de, $00c3
    jr c, jr_00b_7ca3

    ld a, h
    inc sp
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    inc d
    jp $3800


    ld a, h
    or $98
    inc de
    ld a, h
    ld a, [hl+]
    or $98
    dec d
    jp Jump_00b_4100


    ld a, h
    ld a, h
    jr c, jr_00b_7c22

    ld b, h
    ld sp, $f1d1
    ldh [$bc], a
    ld h, h
    rst $20
    ld h, c
    and d
    pop af
    ldh [$71], a
    ld sp, $f6d1
    sbc b
    ld d, $e2
    pop af
    ldh [$b3], a
    ld h, h
    rst $10
    dec l
    db $e3
    call z, $bd00
    db $e3
    call z, $e2f6
    pop af
    ldh [$b9], a
    ld h, h
    rst $10
    dec l
    sbc b
    rla
    ldh [$a0], a
    ld h, h
    or $c6
    ld a, a
    ld [hl], l
    ld a, h

jr_00b_7c73:
    xor e
    ld a, h
    add $7a
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    add e
    ld a, h
    db $e3
    ld e, [hl]
    sbc b
    add hl, de
    ld a, h
    ld d, c

jr_00b_7c83:
    db $e3
    ld e, [hl]
    sbc b
    ld a, [de]
    or $de
    ld a, [hl+]
    ld [bc], a
    ld hl, sp-$7c
    dec b
    nop
    ld l, b
    jr jr_00b_7c83

    rst $20
    ld h, c
    ld b, h
    rst $10
    dec l
    or [hl]
    ld e, e
    add [hl]
    ld sp, $1b98
    or $c3
    nop
    and h
    ld a, h
    ld a, h

jr_00b_7ca3:
    sbc e
    sbc b
    inc e
    cp [hl]
    sbc [hl]
    cp l
    ld a, h

jr_00b_7caa:
    sbc c
    db $e3
    ld e, d
    sbc b
    jr jr_00b_7c73

    nop
    ld d, c
    ld a, h
    add h
    dec b
    nop
    ld l, b
    jr jr_00b_7caa

jr_00b_7cb9:
    rst $20
    ld h, c
    ld b, h
    db $f4
    ld a, h
    inc sp
    db $eb
    ld a, h
    and a
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld e, $c3
    nop
    push de
    ld a, h
    push af
    sbc b
    rra
    ld a, h
    jp $2098


    ld a, h
    jp $2286


    push af
    add a
    and e
    call z, Call_00b_7cdf
    pop de
    ld a, h

Call_00b_7cdf:
    or c
    add b
    sbc b
    ld hl, $00c3
    db $ec
    ld a, h
    push af
    sbc b
    ld [hl+], a
    ld a, l
    or d
    push af
    sbc b
    inc hl
    jp $ec01


jr_00b_7cf2:
    ld a, h
    push af
    sbc b
    inc h
    push af
    pop hl
    inc a
    ld h, l
    ld bc, $fee1
    ld h, h
    add a
    nop
    db $eb
    adc b
    adc b
    adc b
    sub [hl]
    nop
    adc [hl]
    ld a, c
    nop
    cp d
    ldh [$d1], a
    ld h, h
    ldh [rLYC], a
    ld h, l
    call z, $037c
    add hl, de
    ld a, l
    pop hl
    or b
    ld e, h
    ld b, $d1
    ldh [rNR23], a
    ld h, l
    sub c
    ld [bc], a
    call z, $f501
    sbc l
    adc e
    ld d, b
    sub [hl]
    db $10
    adc h
    add hl, bc
    ld a, [c]
    sub [hl]
    jr jr_00b_7cb9

    add hl, bc
    ld a, [c]
    sub [hl]
    nop
    cp c
    sbc [hl]
    ldh [$e9], a
    ld h, h
    add $79
    ld b, b
    ld a, l
    ld l, e
    ld a, l
    ld [hl], d
    ld a, l
    ld [hl], a
    ld a, l
    cp d
    sbc h
    jr z, jr_00b_7d90

    sbc l
    jp Jump_00b_5601


    ld a, l
    push af
    sbc b

Call_00b_7d4b:
    ccf
    push af
    pop hl
    cp $64
    add a
    pop hl
    inc a
    ld h, l
    inc bc
    nop
    push af
    sbc b
    ld [hl+], a
    adc e
    jr z, jr_00b_7cf2

    nop
    adc h
    db $10
    ld a, [c]
    ld a, [c]
    sub [hl]
    db $10
    ldh [$f7], a
    ld e, h
    ldh [$2e], a
    ld h, l
    sub a
    ld [hl+], a
    sbc b
    add hl, hl
    adc [hl]
    ld a, c
    nop
    ld a, l
    ld [hl-], a
    sbc h
    ld a, $4c
    ld a, l
    ld b, h
    cp d
    sbc b
    ld a, [hl+]
    adc [hl]
    ld c, a
    nop
    push af
    pop hl
    inc a
    ld h, l
    ld [bc], a
    pop hl
    cp $64
    ld d, a
    nop
    db $eb
    adc b
    ld c, b
    ld a, b
    sub [hl]
    db $10
    cp l
    ldh [$e3], a

jr_00b_7d90:
    ld h, h
    ldh [$f7], a
    ld e, h
    pop de
    sbc b
    dec hl
    push af
    sbc $0d
    nop
    push af
    add [hl]
    ld [hl-], a
    sbc b
    inc l
    push af
    jp $9e01


    ld a, l
    sbc b
    dec l
    ldh [$2e], a
    ld h, l
    or [hl]
    ld e, h
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    ld a, l
    sbc h
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    ld a, h
    rst JumpTable
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld l, $c3
    nop
    ret


    ld a, l
    ld a, l
    call nz, $98f6
    cpl
    ld a, l
    cp c
    or $86
    inc hl
    or $87
    and e
    call z, Call_00b_7dd8
    call nc, $987d
    jr nc, jr_00b_7e54

    cp c

Call_00b_7dd8:
    or [hl]
    ld d, e
    sbc b
    ld sp, $00c3
    pop af
    ld a, l
    ld a, l
    db $ec
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    inc a
    jp $f100


    ld a, l
    or $98
    ld [hl-], a
    ld a, l
    db $e3
    or $98
    inc sp
    or $98
    inc [hl]
    jp $fd00


    ld a, l
    ld a, l
    db $f4
    add h
    dec b
    nop
    ld e, b

Jump_00b_7e01:
    adc b
    pop af
    rst $20
    ld e, b
    ld b, l
    rst $10
    dec l
    sbc b
    dec [hl]
    cp [hl]
    sbc [hl]
    cp l
    ld a, [hl]
    ld [$f7bd], sp
    sbc b
    ld [hl], $e0
    ld c, [hl]
    ld h, l
    rst $10
    dec l
    db $e3
    call z, $dfbe
    ld h, b
    ld hl, $7e7e
    dec de
    cp l
    or c
    ld b, b
    db $e3

jr_00b_7e25:
    call z, Call_00b_72e0
    ld h, l
    ldh [$30], a
    ld h, h
    or $b5
    ld l, $42
    ld a, [hl]
    sbc b
    scf
    jp $3b00


    ld a, [hl]
    ldh [$98], a
    ld h, l
    nop
    ldh [$58], a
    ld h, l
    ldh [$88], a
    ld h, l
    nop
    sbc b
    jr c, jr_00b_7e25

    sbc b
    ld h, l
    nop
    cp l
    db $eb
    ldh [$5d], a
    ld h, l
    or l
    ld l, $53
    ld a, [hl]
    ld a, [hl]
    ld h, l
    rst $30

jr_00b_7e54:
    sbc b
    add hl, sp
    pop hl
    pop bc
    ld h, e
    dec d
    rst $10
    ld [bc], a
    or [hl]
    ld e, l
    sbc b
    ld a, [hl-]
    cp [hl]
    sbc [hl]
    cp l
    ld a, [hl]
    ld e, [hl]
    sbc b
    jr nc, @-$40

    sbc [hl]
    cp l
    ld a, [hl]
    ld h, l
    db $eb
    ld a, [hl]
    ld h, c
    db $dd
    ld h, b
    ld bc, $eb00
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld bc, $00c3
    add d
    ld a, [hl]
    or $98
    ld [bc], a
    ld a, [hl]
    ld [hl], h
    add [hl]
    ld h, $f6
    add a
    and e
    call z, Call_00b_7e8c
    ld a, l
    ld a, [hl]

Call_00b_7e8c:
    sbc b
    inc bc
    or $e1
    pop bc
    ld h, e
    inc de
    or $98
    inc b
    or [hl]
    ld h, b
    cp [hl]
    db $eb
    sbc [hl]
    ld a, [hl]
    sub h
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld c, b
    push af
    jp $ac00


    ld a, [hl]
    sbc b
    ld b, c
    ld a, [hl]
    sbc [hl]
    sbc b
    ld c, c
    ldh [$e5], a
    rla
    push af
    sbc b
    ld c, d
    cp [hl]
    sbc [hl]
    cp l
    ld a, [hl]
    or d
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld b, b
    jp $c800


    ld a, [hl]
    push af
    sbc b
    ld b, c
    ld a, [hl]
    cp d
    add [hl]
    daa
    add a
    and e
    call z, $7ed1
    jp $b17e


    add b
    push af
    sbc b
    ld b, d
    push af
    ldh [$a8], a
    ld h, l
    call z, $0078
    ld bc, $987f
    ld b, h
    push af
    sbc $62
    nop
    ldh [$e5], a
    rla
    push af
    sbc b
    ld b, l
    push af
    or [hl]
    ld h, c
    ld a, [hl]
    di
    db $eb
    sbc [hl]
    cp l
    add [hl]
    scf
    sbc b
    ld b, [hl]
    push af
    jp $f300


    ld a, [hl]
    sbc b
    ld b, a
    cp [hl]
    ld a, [hl]
    pop af
    db $eb
    cp [hl]
    sbc [hl]
    cp l
    sbc b
    ld b, e
    or $7e
    rst $10
    db $eb
    sbc [hl]
    ldh [$bf], a
    ld l, d
    add a
    pop bc
    rst $08
    ld d, $7f
    ld a, [de]
    ld a, a
    sbc b
    inc b
    ld a, a
    dec bc
    sbc b
    dec b
    cp l
    ldh [$d9], a
    ld l, d
    push af
    sbc b
    ld b, $f5
    or c
    ld b, b
    cp [hl]
    ld [c], a

jr_00b_7f28:
    nop
    or $98
    cpl
    db $10
    or $98
    cpl
    ld de, $00f6
    db $eb
    or b
    add b
    ld h, h
    ld a, a
    sbc [hl]
    sbc b
    inc bc
    jp Jump_00b_4700


    ld a, a
    sbc b
    dec b
    ld a, a
    jr c, @-$66

    ld b, $7f
    jr c, jr_00b_7f28

    ld c, c
    ld l, a
    add a
    ret nc

    rst $08
    ld b, e
    ld a, a
    ld d, c
    ld a, a
    cp l
    ldh [rNR14], a
    ld l, a
    ld hl, sp-$68
    inc b
    cp [hl]
    sbc [hl]
    or b
    add b
    ld h, d
    ld a, a
    sbc b
    inc b
    ld a, a
    ld e, c
    sbc b
    rlca
    sub a
    rlca
    add e
    inc d
    add sp, $52
    rst $10
    ld [hl-], a
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

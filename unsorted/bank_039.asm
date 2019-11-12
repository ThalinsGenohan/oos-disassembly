; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX

    jp Jump_039_4015


    jp Jump_039_4127


    jp Jump_039_4b50


    jp Jump_039_40a8


    pop af
    jp Jump_039_4d3e


    jp Jump_039_405d


    inc e
    ld d, c

Jump_039_4015:
    ldh [$d9], a
    call Call_039_40a8
    ld a, $03
    ld [$c022], a
    ld a, $00
    ld [$c015], a
    ld [$c014], a
    ld [$c01b], a
    ld [$c023], a
    ld a, $8f
    ldh [rNR52], a
    ld a, $77
    ld [$c024], a
    ldh [rNR50], a
    ld a, $ff
    ldh [rNR51], a
    ld c, $14
    ld hl, $404b
    ld de, $c000

jr_039_4044:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_039_4044

    ret


    ldh [$d8], a
    ld [$2000], a
    ld a, [hl+]
    ld c, a
    ldh a, [$d9]
    ldh [$d8], a
    ld [$2000], a
    ld a, c
    ret


    ret


    ret


Jump_039_405d:
    push bc
    push de
    push hl
    push af
    call Call_039_4079
    pop af
    ld [$c022], a
    cp $00
    jr nz, jr_039_4070

    ld a, $01
    jr jr_039_4072

jr_039_4070:
    ld a, $00

jr_039_4072:
    ld [$c023], a
    pop hl
    pop de
    pop bc
    ret


Call_039_4079:
    ld a, $00
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_4090

    call Call_039_4932

jr_039_4090:
    ld a, $01
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_40a7

    call Call_039_4932

jr_039_40a7:
    ret


Call_039_40a8:
Jump_039_40a8:
    ld a, $00

jr_039_40aa:
    ld [$c01a], a
    call Call_039_4923
    ld a, [$c01a]
    inc a
    cp $08
    jr nz, jr_039_40aa

    ret


Call_039_40b9:
    ld a, $00

jr_039_40bb:
    ld [$c01a], a
    call Call_039_4932
    ld a, [$c01a]
    inc a
    cp $08
    jr nz, jr_039_40bb

    ret


Call_039_40ca:
    ld a, $02
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_40e1

    call Call_039_4923

jr_039_40e1:
    ld a, $03
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_40f8

    call Call_039_4923

jr_039_40f8:
    ld a, $05
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_410f

    call Call_039_4923

jr_039_410f:
    ld a, $07
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_4126

    call Call_039_4923

jr_039_4126:
    ret


Jump_039_4127:
    push bc
    push de
    push hl
    ld a, [$c01b]
    cp $00
    jr z, jr_039_4134

    jp Jump_039_41be


jr_039_4134:
    ld a, [$c024]
    ldh [rNR50], a
    ld a, [$c015]
    cp $00
    jr z, jr_039_417f

    ld a, [$c016]
    ld b, a
    ld a, [$c014]
    inc a
    ld [$c014], a
    and b
    cp b
    jr nz, jr_039_417f

    ld a, [$c015]
    cp $0a
    jr z, jr_039_4165

    ld a, [$c024]
    cp $00
    jr z, jr_039_4174

    sub $11
    ld [$c024], a
    jp Jump_039_417f


jr_039_4165:
    ld a, [$c024]
    cp $77
    jr z, jr_039_4177

    add $11
    ld [$c024], a
    jp Jump_039_417f


jr_039_4174:
    call Call_039_40a8

jr_039_4177:
    ld a, $00
    ld [$c014], a
    ld [$c015], a

Jump_039_417f:
jr_039_417f:
    ld a, $00

jr_039_4181:
    ld [$c01a], a
    ld hl, $c06d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_41aa

    ld hl, $c075
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr nz, jr_039_41a7

    call Call_039_4396
    jr jr_039_41aa

jr_039_41a7:
    call Call_039_41c2

jr_039_41aa:
    ld a, [$c01a]
    inc a
    cp $08
    jr nz, jr_039_4181

    ld a, [$c023]
    cp $01
    jr nz, jr_039_41be

    ld a, $02
    ld [$c023], a

Jump_039_41be:
jr_039_41be:
    pop hl
    pop de
    pop bc
    ret


Call_039_41c2:
    ld hl, $c075
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    dec a
    ld [hl], a
    ld a, [$c01a]
    cp $06
    jr nc, jr_039_41f2

    ld hl, $c039
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $40
    jr nz, jr_039_41f2

    ld a, [$c01a]
    cp $05
    jr nc, jr_039_41ef

    call Call_039_464c

jr_039_41ef:
    call Call_039_41f3

jr_039_41f2:
    ret


Call_039_41f3:
    ld hl, $c03f
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld c, a
    and $7f
    jr z, jr_039_423c

    ld a, c
    and $80
    jr nz, jr_039_420c

    ld d, $00
    jr jr_039_420e

jr_039_420c:
    ld d, $ff

jr_039_420e:
    push de
    ld hl, $c03f
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop de
    ld e, a
    ld a, [$c01a]
    sla a
    ld b, a
    ld a, b
    add $f2
    ld c, a
    ld a, [c]
    inc c
    ld l, a
    ld a, [c]
    inc c
    ld h, a
    add hl, de
    ld a, [$c01a]
    sla a
    ld b, a
    ld a, l
    ld c, $f2
    call Call_039_4d25
    ld a, h
    ld [c], a
    inc c

jr_039_423c:
    ld hl, $c045
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $10
    jr nz, jr_039_428c

    ld hl, $c051
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_426e

    dec a
    ld hl, $c051
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld hl, $0000
    jp Jump_039_42d1


jr_039_426e:
    ld a, $10
    ld hl, $c045
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $00
    ld hl, $c051
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a

jr_039_428c:
    ld hl, $c051
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $08
    jr nz, jr_039_42ac

    ld a, $00
    ld hl, $c051
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $00

jr_039_42ac:
    ld hl, $4b40
    call Call_039_4d19
    push hl
    ld hl, $c051
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $c04b
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $0f
    pop hl
    call Call_039_4a10

Jump_039_42d1:
    ld a, [$c01a]
    sla a
    ld b, a
    ld a, b
    add $f2
    ld c, a
    ld a, [c]
    inc c
    ld e, a
    ld a, [c]
    inc c
    ld d, a
    add hl, de
    ld a, l
    ld [$c01f], a
    ld a, h
    ld [$c020], a

Call_039_42ea:
Jump_039_42ea:
    ld a, [$c01a]
    scf
    ccf
    cp $04
    jr nc, jr_039_4339

    cp $02
    jr nc, jr_039_4306

    inc a
    inc a
    ld e, a
    ld hl, $c06d
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_4306

    ret


jr_039_4306:
    ld a, [$c01a]
    and $01
    ld b, a
    sla a
    sla a
    add b
    ld b, a
    push bc
    ld a, [$c01f]
    ld c, $13
    call Call_039_4d25
    ld a, [$c01e]
    ld e, a
    ld a, [$c020]
    or e
    ld [c], a
    inc c
    pop bc
    push bc
    ld hl, $c057
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    pop bc
    ld c, $11
    call Call_039_4d25
    ret


jr_039_4339:
    call Call_039_434b
    cp $00
    jr nz, jr_039_434a

    ld a, l
    ldh [rNR33], a
    ld a, h
    ldh [rNR34], a
    ld a, $00
    ldh [rNR31], a

jr_039_434a:
    ret


Call_039_434b:
    ld a, [$c01a]
    cp $05
    jr z, jr_039_4360

    ld a, [$c072]
    cp $00
    jr nz, jr_039_4363

    ld a, [$c023]
    cp $02
    jr z, jr_039_4363

jr_039_4360:
    ld a, $00
    ret


jr_039_4363:
    ld a, $01
    ret


Call_039_4366:
    push bc
    push de
    push hl
    ld a, [$c01a]
    sla a
    add $e2
    ld c, a
    ld a, [c]
    inc c
    ld l, a
    ld a, [c]
    ld h, a
    ld a, [$c01a]
    add $da
    ld c, a
    ld a, [c]
    inc c
    call $c000
    push af
    ld a, [$c01a]
    sla a
    ld b, a
    ld a, l
    ld c, $e2
    call Call_039_4d25
    ld a, h
    ld [c], a
    inc c
    pop af
    pop hl
    pop de
    pop bc
    ret


Call_039_4396:
Jump_039_4396:
    call Call_039_4366
    scf
    ccf
    cp $f0
    jr nc, jr_039_43b7

    scf
    ccf
    cp $e0
    jr c, jr_039_43a8

    jp Jump_039_4445


jr_039_43a8:
    scf
    ccf
    cp $d0
    jr c, jr_039_43b1

    jp Jump_039_44cb


jr_039_43b1:
    ld [$c01d], a
    jp Jump_039_4529


jr_039_43b7:
    ld e, a
    ld a, $ff
    sub e
    ld hl, $43c2
    call Call_039_4d19
    jp hl


    inc hl
    ld c, c
    or $49
    inc hl
    ld b, h
    inc hl
    ld c, c
    inc hl
    ld c, c
    inc hl
    ld c, c
    db $eb
    ld b, e
    rlca
    ld b, h
    inc hl
    ld c, c
    ld [$2344], a
    ld c, c
    inc hl
    ld c, c
    add sp, $43
    push hl
    ld b, e
    ld [c], a
    ld b, e
    ld l, c
    ld b, h
    jp Jump_039_4396


    jp Jump_039_4396


    jp Jump_039_4396


    ld a, [$c01a]
    scf
    ccf
    cp $06
    jr nc, jr_039_443f

    call Call_039_4366
    ld hl, $c04b
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


    ld a, [$c01a]
    scf
    ccf
    cp $06
    jr nc, jr_039_443f

    call Call_039_4366
    ld hl, $c03f
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


    ld a, [$c01a]
    scf
    ccf
    cp $06
    jr nc, jr_039_443f

    call Call_039_4366
    ld hl, $c033
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


jr_039_443f:
    call Call_039_4366
    jp Jump_039_4396


Jump_039_4445:
    and $07
    ld hl, $c065
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_4366
    and $07
    ld hl, $c069
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


    ld a, [$c01a]
    cp $07
    jr z, jr_039_44ba

    call Call_039_4366
    push af
    and $3f
    jr z, jr_039_4498

    pop af
    ld hl, $c057
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $41
    ld hl, $c039
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


jr_039_4498:
    pop af
    and $c0
    ld hl, $c057
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $01
    ld hl, $c039
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


jr_039_44ba:
    call Call_039_4366
    ldh [rNR42], a
    ld a, $00
    ldh [rNR41], a
    ld a, $80
    ld [$c01c], a
    jp Jump_039_4396


Jump_039_44cb:
    push af
    ld a, [$c01a]
    cp $04
    jr z, jr_039_44e6

    pop af
    and $0f
    ld hl, $c07d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


jr_039_44e6:
    pop af
    jp Jump_039_4396


    ld a, [$c01a]
    cp $04
    jr z, jr_039_4510

    cp $05
    jr z, jr_039_4510

    call Call_039_4366
    and $03
    swap a
    sla a
    sla a
    ld hl, $c057
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4396


jr_039_4510:
    call Call_039_4366
    ld hl, $c057
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld [$c021], a
    call Call_039_49c1
    jp Jump_039_4396


Jump_039_4529:
    ld a, [$c01a]
    ld hl, $4533
    call Call_039_4d19
    jp hl


    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ld b, e
    ld b, l
    ret z

    ld b, a
    ret z

    ld b, a
    rst $08
    ld c, b
    add hl, bc
    ld c, c
    ld hl, $c039
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_455d

    call Call_039_4366
    ld l, a
    ld a, [$c01d]
    ld h, a
    jp Jump_039_45ae


jr_039_455d:
    ld a, [$c01d]
    cp $60
    jr z, jr_039_456b

    cp $61
    jr z, jr_039_45a0

    jp Jump_039_45a3


jr_039_456b:
    ld hl, $c069
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr nz, jr_039_45a0

    ld a, $02
    ld hl, $c05d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_4783
    sla a
    sla a
    sla a
    sla a
    ld c, $01
    or c
    ld [$c01e], a
    call Call_039_4714
    call Call_039_41f3

jr_039_45a0:
    jp Jump_039_45f7


Jump_039_45a3:
    ld a, [$c01d]
    sub $0c
    ld hl, $4a22
    call Call_039_4d19

Jump_039_45ae:
    call Call_039_461a
    ld a, $00
    ld hl, $c05d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_464c
    ld a, $00
    ld hl, $c045
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $00
    ld hl, $c04b
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $f0
    srl a
    srl a
    srl a
    ld hl, $c051
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_42ea

Jump_039_45f7:
    call Call_039_4366
    dec a
    ld hl, $c075
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de

Call_039_4606:
Jump_039_4606:
    pop af
    ld [hl], a
    ret


Call_039_4609:
    ld hl, $4ad0
    ld a, b
    sla a
    sla a
    sla a
    add c
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ret


Call_039_461a:
    push hl
    ld hl, $c033
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld d, a
    sla d
    jr c, jr_039_462f

    ld d, $00
    jr jr_039_4631

jr_039_462f:
    ld d, $ff

jr_039_4631:
    ld e, a
    pop hl
    add hl, de
    ld a, [$c01a]
    sla a
    ld b, a
    ld a, l
    ld c, $f2
    call Call_039_4d25
    ld a, h
    ld [c], a
    inc c
    ld a, l
    ld [$c01f], a
    ld a, h
    ld [$c020], a
    ret


Call_039_464c:
    ld a, [$c01a]
    cp $04
    jr nz, jr_039_4656

    jp Jump_039_4766


jr_039_4656:
    ld hl, $c05d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_466f

    cp $01
    jr z, jr_039_46ac

    ld a, $00
    ld [$c01e], a
    ret


jr_039_466f:
    ld hl, $c065
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_46ce

    ld c, a
    or $18
    ld [$c01e], a
    push bc
    call Call_039_4783
    pop bc
    ld b, a
    call Call_039_4609
    ld hl, $c061
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $01
    ld hl, $c05d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    jp Jump_039_4714


jr_039_46ac:
    ld hl, $c061
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_46ce

    ld hl, $c061
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    dec a
    ld [hl], a
    ld a, $00
    ld [$c01e], a
    ret


jr_039_46ce:
    ld hl, $c069
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr nz, jr_039_46e1

    ld a, $02
    jr jr_039_46e3

jr_039_46e1:
    ld a, $03

jr_039_46e3:
    ld hl, $c05d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_4783
    sla a
    sla a
    sla a
    sla a
    ld [$c01e], a
    ld hl, $c069
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld c, a
    ld a, [$c01e]
    or c
    ld [$c01e], a
    jp Jump_039_4714


Call_039_4714:
Jump_039_4714:
    ld a, [$c01a]
    cp $02
    jr nc, jr_039_4734

    ld a, [$c022]
    cp $00
    jr z, jr_039_4733

    ld a, [$c01a]
    inc a
    inc a
    ld e, a
    ld hl, $c06d
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_4734

jr_039_4733:
    ret


jr_039_4734:
    ld a, [$c01a]
    and $01
    jr nz, jr_039_473f

    ld a, $08
    ldh [rNR10], a

jr_039_473f:
    ld a, [$c01a]
    and $01
    ld b, a
    sla a
    sla a
    add b
    ld b, a
    ld a, [$c01e]
    ld c, $12
    call Call_039_4d25
    ld hl, $c039
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $40
    or $80
    ld [$c01e], a
    ret


Jump_039_4766:
    call Call_039_489e
    ld b, a
    ld a, [$c029]
    cp b
    jr z, jr_039_4782

    call Call_039_489e
    ld [$c029], a
    call Call_039_434b
    cp $00
    jr nz, jr_039_4782

    ld a, [$c029]
    ldh [rNR32], a

jr_039_4782:
    ret


Call_039_4783:
    ld a, [$c01a]
    scf
    ccf
    cp $02
    jr nc, jr_039_479b

Call_039_478c:
    ld a, [$c022]
    cp $00
    jr z, jr_039_47c5

    cp $01
    jr z, jr_039_47b5

    cp $02
    jr z, jr_039_47a7

jr_039_479b:
    ld hl, $c07d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


jr_039_47a7:
    ld hl, $c07d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    srl a
    ret


jr_039_47b5:
    ld hl, $c07d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    srl a
    srl a
    ret


jr_039_47c5:
    ld a, $00
    ret


    ld hl, $c039
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_47e2

    call Call_039_4366
    ld l, a
    ld a, [$c01d]
    ld h, a
    jp Jump_039_4839


jr_039_47e2:
    ld a, [$c01d]
    scf
    ccf
    cp $60
    jr nz, jr_039_4821

    ld a, $01
    ld hl, $c02d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_489e
    ld hl, $c025
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_434b
    cp $00
    jr nz, jr_039_481e

    ld hl, $c025
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ldh [rNR32], a

jr_039_481e:
    jp Jump_039_45f7


jr_039_4821:
    ld a, $00
    ld hl, $c02d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, [$c01d]
    ld hl, $4a22
    call Call_039_4d19

Jump_039_4839:
    call Call_039_461a
    ld a, $00
    ld hl, $c045
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    ld a, $00
    ld hl, $c04b
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $f0
    srl a
    srl a
    srl a
    ld hl, $c051
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_489e
    ld hl, $c025
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a
    call Call_039_434b
    cp $00
    jr nz, jr_039_489b

    ld hl, $c025
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ldh [rNR32], a
    ld a, [$c01f]
    ldh [rNR33], a
    ld a, [$c020]
    ldh [rNR34], a

jr_039_489b:
    jp Jump_039_45f7


Call_039_489e:
    ld hl, $c02d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr nz, jr_039_48cc

    ld a, [$c01a]
    cp $05
    jr nc, jr_039_48c3

    ld a, [$c022]
    cp $00
    jr z, jr_039_48cc

    cp $01
    jr z, jr_039_48c9

    cp $02
    jr z, jr_039_48c6

jr_039_48c3:
    ld a, $20
    ret


jr_039_48c6:
    ld a, $40
    ret


jr_039_48c9:
    ld a, $60
    ret


jr_039_48cc:
    ld a, $00
    ret


    ld a, [$c01d]
    ld c, a
    ld de, $4d38

jr_039_48d6:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_039_4906

    cp c
    jr z, jr_039_48e3

    inc de
    inc de
    jr jr_039_48d6

jr_039_48e3:
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld a, [$c074]
    cp $00
    jr nz, jr_039_4906

    push hl
    call Call_039_478c
    pop hl
    sla a
    sla a
    sla a
    sla a
    or l
    ldh [rNR42], a
    ld a, h
    ldh [rNR43], a
    ld a, $80
    ldh [rNR44], a

jr_039_4906:
    jp Jump_039_45f7


    ld a, [$c01d]
    ldh [rNR43], a
    ld a, $00
    ldh [rNR41], a
    ld a, [$c01c]
    cp $00
    jr z, jr_039_491b

    ldh [rNR44], a

jr_039_491b:
    ld a, $00
    ld [$c01c], a
    jp Jump_039_45f7


Call_039_4923:
    ld a, $00
    ld hl, $c06d
    push af
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ld [hl], a

Call_039_4932:
    ld a, [$c01a]
    ld hl, $493c
    call Call_039_4d19
    jp hl


    ld c, h
    ld c, c
    ld c, h
    ld c, c
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld c, c
    adc d
    ld c, c
    sub [hl]
    ld c, c
    cp b
    ld c, c
    cp b
    ld c, c
    ld a, [$c01a]
    inc a
    inc a
    ld e, a
    ld hl, $c06d
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_496f

    ret


    ld a, [$c01a]
    dec a
    dec a
    ld e, a
    ld hl, $c06d
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $00
    jr z, jr_039_496f

jr_039_496f:
    ld hl, $c05d
    ld a, [$c01a]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $03
    jr nz, jr_039_497f

    ret


jr_039_497f:
    ld a, $08
    ld [$c01e], a
    call Call_039_4714
    jp Jump_039_42ea


    call Call_039_434b
    cp $00
    jr nz, jr_039_4995

    ld a, $00
    ldh [rNR30], a

jr_039_4995:
    ret


    ld a, [$c071]
    cp $00
    jr z, jr_039_49b3

    ld a, $04
    ld e, a
    ld hl, $c057
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$c021], a
    call Call_039_49c1
    ld a, [$c029]
    ldh [rNR32], a
    ret


jr_039_49b3:
    ld a, $00
    ldh [rNR30], a
    ret


    ld a, $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a
    ret


Call_039_49c1:
    call Call_039_434b
    cp $00
    jr z, jr_039_49c9

    ret


jr_039_49c9:
    ld a, $00
    ldh [rNR30], a
    ldh a, [rNR52]
    and $04
    jr nz, jr_039_49c9

    ld a, [$c021]
    ld hl, $4d60
    call Call_039_4d19
    ld c, $10
    ld de, $ff30

jr_039_49e1:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_039_49e1

jr_039_49e7:
    ld a, $80
    ldh [rNR30], a
    ldh a, [rNR30]
    and $80
    jr z, jr_039_49e7

    ld a, $80
    ldh [rNR34], a
    ret


    call Call_039_4366
    ld l, a
    call Call_039_4366
    ld h, a
    ld a, [$c01a]
    sla a
    ld b, a
    ld a, l
    ld c, $e2
    call Call_039_4d25
    ld a, h
    ld [c], a
    inc c
    jp Jump_039_4396


Call_039_4a10:
    cp $00
    jr nz, jr_039_4a18

    ld hl, $0000
    ret


jr_039_4a18:
    ld e, l
    ld d, h

Jump_039_4a1a:
    dec a
    jr z, jr_039_4a21

    add hl, de
    jp Jump_039_4a1a


jr_039_4a21:
    ret


    dec l
    nop
    sbc l
    nop
    ld [$6c01], sp
    ld bc, $01cb
    inc h
    ld [bc], a
    ld a, c
    ld [bc], a
    ret z

    ld [bc], a
    inc de
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    db $db
    inc bc
    ld d, $04
    ld c, a
    inc b
    add h
    inc b
    or [hl]
    inc b
    push hl
    inc b
    ld [de], a
    dec b
    inc a
    dec b
    ld h, h
    dec b
    adc d
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $73
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c5
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2e07
    rlca
    add hl, sp
    rlca
    ld b, l
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    xor b
    rlca
    xor l
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst JumpTable
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    ld a, [c]
    rlca
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    ld [bc], a
    inc b
    ld b, $07
    add hl, bc
    dec bc
    dec c
    nop
    inc bc
    ld b, $08
    dec bc
    ld c, $11
    inc d
    nop
    inc b
    rlca
    dec bc
    rrca
    inc de
    ld d, $1a
    nop
    dec b
    add hl, bc
    ld c, $13
    rla
    inc e
    ld hl, $0600
    dec bc
    ld de, $1c16
    ld [hl+], a
    daa
    nop
    rlca
    dec c
    inc d
    ld a, [de]
    ld hl, $2e27
    nop
    rlca
    rrca
    ld d, $1e
    dec h
    dec l
    inc [hl]
    nop
    ld [$1911], sp
    ld [hl+], a
    ld a, [hl+]
    ld [hl-], a
    dec sp
    nop
    add hl, bc
    inc de
    inc e
    dec h
    cpl
    jr c, jr_039_4b61

    nop
    ld a, [bc]
    dec d
    rra
    add hl, hl
    inc sp
    ld a, $48
    nop
    dec bc
    ld d, $22
    dec l
    jr c, @+$45

    ld c, [hl]
    nop
    inc c
    jr jr_039_4b58

    ld sp, $493d
    ld d, l
    nop
    dec c
    ld a, [de]
    daa
    inc [hl]
    ld b, c
    ld c, [hl]
    ld e, e
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0000
    nop
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38

Jump_039_4b50:
    push bc
    push de
    push hl
    ld [$c018], a
    cp $00

jr_039_4b58:
    jr nz, jr_039_4b5d

    jp Jump_039_4d15


jr_039_4b5d:
    cp $f0
    jr z, jr_039_4b87

jr_039_4b61:
    cp $f1
    jr z, jr_039_4b8e

    cp $f5
    jr z, jr_039_4b94

    cp $f6
    jr z, jr_039_4b9f

    cp $f7
    jr z, jr_039_4bc6

    cp $f8
    jr z, jr_039_4bca

    cp $f9
    jr z, jr_039_4bce

    cp $fa
    jr z, jr_039_4ba7

    cp $fb
    jr z, jr_039_4bab

    cp $fc
    jr z, jr_039_4baf

    jr jr_039_4be5

jr_039_4b87:
    ld a, $de
    ld [$c018], a
    jr jr_039_4be5

jr_039_4b8e:
    call Call_039_40ca
    jp Jump_039_4d15


jr_039_4b94:
    call Call_039_40b9
    ld a, $01
    ld [$c01b], a
    jp Jump_039_4d10


jr_039_4b9f:
    ld a, $00
    ld [$c01b], a
    jp Jump_039_4d10


jr_039_4ba7:
    ld a, $07
    jr jr_039_4bb1

jr_039_4bab:
    ld a, $0f
    jr jr_039_4bb1

jr_039_4baf:
    ld a, $1f

jr_039_4bb1:
    ld [$c016], a
    ld a, $00
    ld [$c014], a
    ld a, $01
    ld [$c015], a
    ld a, $77
    ld [$c024], a
    jp Jump_039_4d15


jr_039_4bc6:
    ld a, $03
    jr jr_039_4bd0

jr_039_4bca:
    ld a, $07
    jr jr_039_4bd0

jr_039_4bce:
    ld a, $0f

jr_039_4bd0:
    ld [$c016], a
    ld a, $00
    ld [$c014], a
    ld a, $0a
    ld [$c015], a
    ld a, $00
    ld [$c024], a
    jp Jump_039_4d15


jr_039_4be5:
    ld a, $00
    ld [$c015], a
    ld a, [$c018]
    ld d, $00
    ld e, a
    ld h, $00
    ld l, a
    sla l
    rl h
    add hl, de
    ld d, h
    ld e, l
    ld hl, $57cf
    add hl, de
    ld a, [hl]
    and $80
    jr z, jr_039_4c09

    call Call_039_4d38
    jp Jump_039_4d10


jr_039_4c09:
    ld a, [hl+]
    ld c, a
    ldh a, [$d9]
    add c
    ld [$c017], a
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld l, c
    ld h, b

Jump_039_4c17:
    ldh a, [$d9]
    call $c000
    cp $ff
    jr nz, jr_039_4c23

    jp Jump_039_4d10


jr_039_4c23:
    ld [$c018], a
    and $f0
    swap a
    inc a
    ld [$c019], a
    ld a, [$c018]
    and $0f
    ld [$c018], a
    ld e, a
    push hl
    ld hl, $c06d
    ld d, $00
    add hl, de
    ld a, [hl]
    pop hl
    ld c, a
    ld a, [$c019]
    cp c
    jr nc, jr_039_4c4c

    inc hl
    inc hl
    jp Jump_039_4c17


jr_039_4c4c:
    push hl
    ld a, [$c018]
    ld e, a
    ld a, [$c019]
    ld hl, $c06d
    ld d, $00
    add hl, de
    ld [hl], a
    ld a, $08
    ld hl, $c07d
    ld d, $00
    add hl, de
    ld [hl], a
    ld a, $00
    ld hl, $c075
    ld d, $00
    add hl, de
    ld [hl], a
    ld a, [$c018]
    cp $00
    jr z, jr_039_4cae

    cp $01
    jr z, jr_039_4cae

    cp $02
    jr z, jr_039_4cae

    cp $03
    jr z, jr_039_4cae

    cp $04
    jr z, jr_039_4c8a

    cp $05
    jr z, jr_039_4c8a

    jr jr_039_4ce5

jr_039_4c8a:
    ld a, [$c018]
    ld e, a
    ld a, $00
    ld hl, $c04b
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c03f
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c033
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c039
    ld d, $00
    add hl, de
    ld [hl], a
    jr jr_039_4ce5

jr_039_4cae:
    ld a, [$c018]
    ld e, a
    ld a, $00
    ld hl, $c065
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c069
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c057
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c04b
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c03f
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c033
    ld d, $00
    add hl, de
    ld [hl], a
    ld hl, $c039
    ld d, $00
    add hl, de
    ld [hl], a

jr_039_4ce5:
    pop hl
    ld a, [$c018]
    ld b, a
    ld a, [$c017]
    ld c, $da
    call Call_039_4d25
    ld a, [$c018]
    sla a
    ld b, a
    push bc
    ldh a, [$d9]
    call $c000
    pop bc
    ld c, $e2
    call Call_039_4d25
    push bc
    ldh a, [$d9]
    call $c000
    pop bc
    ld [c], a
    inc c
    jp Jump_039_4c17


Jump_039_4d10:
    ld a, $77
    ld [$c024], a

Jump_039_4d15:
    pop hl
    pop de
    pop bc
    ret


Call_039_4d19:
    sla a
    ld d, $00
    ld e, a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ret


Call_039_4d25:
    push af
    ld a, b
    add c
    ld c, a
    pop af
    ld [c], a
    inc c
    ret


    push af
    ld a, [$c01a]
    ld b, a
    ld a, b
    add c
    ld c, a
    pop af
    ld [c], a
    ret


Call_039_4d38:
    inc h
    ld bc, $2247
    nop
    ld b, a

Jump_039_4d3e:
    inc hl
    ld [bc], a
    ld b, [hl]
    ld h, $02
    ld h, $28
    nop
    dec [hl]
    daa
    ld [bc], a
    inc d
    ld a, [hl+]
    ld bc, $2e14
    ld b, $07
    ld d, d
    inc bc
    rla
    ld [hl-], a
    ld [bc], a
    scf
    cpl
    ld [bc], a
    ld b, l
    add hl, hl
    ld [bc], a
    ld b, a
    jr nc, jr_039_4d5e

jr_039_4d5e:
    rlca
    rst $38
    adc h
    ld d, b
    ld l, h
    ld c, a
    ld a, h
    ld c, a
    xor h
    ld d, b
    call z, $9c4d
    ld d, b
    db $fc
    ld c, l
    inc c
    ld c, [hl]
    ld a, h
    ld d, b
    inc l
    ld c, [hl]
    ld l, h
    ld c, [hl]
    cp h
    ld d, b
    db $fc
    ld c, a
    inc c
    ld d, b
    call c, $1c4d
    ld d, b
    inc l
    ld d, b
    inc a
    ld d, b
    call c, $bc4f
    ld c, a
    xor h
    ld c, a
    call z, $3c4f
    ld c, [hl]
    ld c, h
    ld d, b
    ld e, h
    ld d, b
    ld l, h
    ld d, b
    inc l
    ld c, a
    inc a
    ld c, a
    adc h
    ld c, a
    sbc h
    ld c, a
    ld a, h
    ld c, [hl]
    call c, $4c4e
    ld c, [hl]
    adc h
    ld c, [hl]
    call z, $ac4e
    ld c, [hl]
    db $ec
    ld c, [hl]
    inc c
    ld c, a
    inc e
    ld c, [hl]
    ld e, h
    ld c, a
    db $ec
    ld c, l
    db $ec
    ld d, b
    db $fc
    ld d, b
    call z, $dc50
    ld d, b
    inc c
    ld d, c
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    sbc c
    xor d
    xor d
    xor d
    xor d
    sbc c
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $3322
    inc sp
    ld [hl+], a
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ld d, l
    ld d, l
    inc sp
    inc sp
    nop
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $edef
    res 5, c
    add a
    ld h, l
    ld b, e
    ld hl, $0000
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $a9cb
    add a
    ld h, l
    ld b, e
    ld hl, $0000
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $cccc
    call z, $cccc
    call z, $ffcc
    xor $dd
    call z, $aabb
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $0000
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $cc
    cp e
    sbc c
    adc b
    ld h, [hl]
    ld d, l
    call z, $99aa
    ld [hl], a
    ld h, [hl]
    ld b, h
    ld [hl+], a
    nop
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    call z, $babb
    xor d
    xor c
    sbc c
    adc b
    adc b
    adc b
    xor d
    call z, $ffee
    xor $dd
    call z, $aabb
    sbc c
    adc b
    ld h, [hl]
    ld b, h
    ld [hl+], a
    nop
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, e
    ld l, d
    ld l, c
    ld l, b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $1100
    rst $38
    inc sp
    db $dd
    ld d, l
    cp e
    ld [hl], a
    sbc c
    adc b
    adc b
    ld [hl], a
    sbc c
    ld d, l
    cp e
    inc sp
    db $dd
    add b
    xor [hl]
    db $db
    or $ff
    or $db
    xor [hl]
    add b
    ld c, a
    dec h
    ld a, [bc]
    nop
    ld a, [bc]
    dec h
    ld c, a
    rst $38
    or $db
    xor [hl]
    add b
    ld c, a
    dec h
    ld a, [bc]
    nop
    ld a, [bc]
    dec h
    ld c, a
    add b
    xor [hl]
    db $db
    or $c0
    jp nc, $d2db

    ret nz

    and e
    add b
    ld e, h
    ld b, b
    dec l
    dec h
    dec l
    ld b, b
    ld e, h
    add b
    and e
    ret nz

    db $db
    ret nz

    add b
    ld b, b
    dec h
    ld b, b
    add b
    ret nz

    db $db
    ret nz

    add b
    ld b, b
    dec h
    ld b, b
    add b
    add b
    db $db
    rst $38
    db $db
    add b
    dec h
    nop
    dec h
    add b
    db $db
    rst $38
    db $db
    add b
    dec h
    nop
    dec h
    ld b, b
    ld l, [hl]
    add b
    ld l, [hl]
    ld b, b
    inc de
    nop
    inc de
    ld b, b
    ld l, [hl]
    add b
    ld l, [hl]
    ld b, b
    inc de
    nop
    inc de
    jr nz, jr_039_4f85

    ld b, b
    scf
    jr nz, jr_039_4f5c

    nop
    ld a, [bc]
    jr nz, jr_039_4f8d

    ld b, b
    scf
    jr nz, @+$0c

    nop
    ld a, [bc]

jr_039_4f5c:
    nop
    nop
    nop
    nop
    sbc c
    cp e
    db $dd
    xor $ff
    rst $38
    xor $dd
    cp e
    sbc c
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_039_4f85:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_039_4f8d:
    cp e
    nop
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $7700
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $3000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc [hl]
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld b, e
    nop
    nop
    nop
    rlca
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, l
    nop
    nop
    nop
    add hl, bc
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld bc, $4523
    ld h, a
    adc c
    xor e
    call $feef
    call c, $98ba
    db $76
    ld d, h
    ld [hl-], a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    nop
    nop
    ld de, $2212
    inc sp
    inc [hl]
    ld b, h
    ld b, h
    ld b, e
    inc sp
    ld [hl+], a
    ld hl, $0011
    nop
    ld de, $3322
    ld b, h
    ld d, l
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $3322
    ld b, h
    ld d, l
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $5533
    ld [hl], a
    sbc c
    cp e
    db $dd
    rst $38
    rst $38
    db $dd
    cp e
    sbc c
    ld [hl], a
    ld d, l
    inc sp
    ld de, $0d00
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    sbc e
    rst JumpTable
    rst $38
    cp $dc
    cp d
    sbc b
    db $76
    ld hl, $0100
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    nop
    ld [hl], h
    ld b, [hl]
    ld bc, $4438
    inc b
    ld l, c
    ld c, b
    ld b, $00
    ld b, b
    rst $38
    nop
    ld [hl], $43
    ld bc, $41c3
    inc b
    ld e, h
    ld b, h
    ld b, $00
    ld b, b
    rst $38
    nop
    cp d
    ld c, h
    ld bc, $4a08
    inc b
    ld c, a
    ld c, a
    ld b, $00
    ld b, b
    rst $38
    nop
    ld h, l
    ld e, l
    ld bc, $5ce4
    inc b
    xor $5d
    ld b, $00
    ld b, b
    rst $38
    nop
    sbc l
    ld h, [hl]
    ld bc, $653d
    inc b
    pop bc
    ld l, d
    ld b, $00
    ld b, b
    rst $38
    nop
    call $0140
    call z, $0440
    adc $40
    ld b, $cf
    ld b, b
    rst $38
    nop
    add h
    ld h, b
    ld bc, $5eaa
    inc b
    jp c, $0662

    db $f4
    ld h, h
    rst $38
    nop
    inc h
    ld l, h
    ld bc, $6b61
    inc b
    xor a
    ld l, h
    ld b, $00
    ld b, b
    rst $38
    nop
    ld e, e
    ld d, d
    ld bc, $5123
    inc b
    rst $08
    ld d, d
    ld b, $00
    ld b, b
    rst $38
    nop
    jp nc, $0140

    ld bc, $0440
    ld d, l
    ld b, c
    ld b, $00
    ld b, b
    rst $38
    nop
    ld b, l
    ld e, b
    ld bc, $56d8
    inc b
    rst $08
    ld e, b
    ld b, $00
    ld b, b
    rst $38
    nop
    ld e, d
    ld e, d
    ld bc, $5985
    inc b
    rst $28
    ld e, d
    ld b, $00
    ld b, b
    rst $38
    nop
    rst $00
    ld e, e
    ld bc, $5b3b
    inc b
    ld e, b
    ld e, h
    ld b, $00
    ld b, b
    rst $38
    nop
    ld d, l
    ld b, e
    ld bc, $4001
    inc b
    inc l
    ld b, c
    ld b, $00
    ld b, b
    rst $38
    nop
    ld [hl], d
    ld c, c
    ld bc, $4927
    inc b
    ret nz

    ld c, c
    ld b, $00
    ld b, b
    rst $38
    nop
    sbc l
    ld d, h
    ld bc, $5475
    inc b
    push bc
    ld d, h
    ld b, $de
    ld d, h
    rst $38
    nop
    and h
    ld b, l
    ld bc, $44d8
    inc b
    ld a, [hl]
    ld b, [hl]
    ld b, $62
    ld c, b
    rst $38
    nop
    ld a, [de]
    ld c, l
    ld bc, $4c8a
    inc b
    ld e, d
    ld c, l
    ld b, $00
    ld b, b
    rst $38
    nop
    rst $00
    ld b, a
    ld bc, $46b7
    inc b
    adc $48
    ld b, $00
    ld b, b
    rst $38
    nop
    call nc, HeaderDestinationCode
    or h
    ld c, c
    inc b
    rst $38
    ld c, e
    ld b, $00
    ld b, b
    rst $38
    nop
    push af
    ld e, a
    ld bc, $5dba
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    scf
    ld h, h
    ld bc, $612a
    inc b
    reti


    ld h, l
    ld b, $a6
    ld l, b
    rst $38
    nop
    sbc l
    ld d, [hl]
    ld bc, $5408
    inc b
    ld a, $59
    ld b, $55
    ld e, h
    rst $38
    nop
    adc [hl]
    ld [hl], l
    ld bc, $740c
    inc b
    ld d, b
    ld [hl], a
    ld b, $00
    ld b, b
    rst $38
    nop
    ld b, e
    ld c, a
    ld bc, $4dab
    inc b
    bit 2, b
    ld b, $c4
    ld d, d
    rst $38
    nop
    dec d
    ld b, h
    ld bc, $42f4
    inc b
    dec [hl]
    ld b, l
    ld b, $c2
    ld b, l
    rst $38
    nop
    or c
    ld d, [hl]
    ld bc, $54fb
    inc b
    ld l, d
    ld e, b
    ld b, $00
    ld b, b
    rst $38
    nop
    add hl, sp
    ld l, e
    ld bc, $69ee
    inc b
    cp b
    ld l, l
    ld b, $00
    ld b, b
    rst $38
    nop
    ld c, e
    ld h, e
    ld bc, $618a
    inc b
    or c
    ld h, h
    ld b, $9f
    ld h, [hl]
    rst $38
    nop
    ld d, [hl]
    ld b, c
    ld bc, $4001
    inc b
    xor h
    ld b, d
    ld b, $00
    ld b, b
    rst $38
    nop
    ld d, b
    ld a, d
    ld bc, $7949
    inc b
    ei
    ld a, d
    ld b, $00
    ld b, b
    rst $38
    nop
    sub d
    ld b, d
    ld bc, $4001
    inc b
    inc bc
    ld b, l
    ld b, $0f
    ld b, [hl]
    rst $38
    nop
    db $76
    ld c, c
    ld bc, $47de
    inc b
    add d
    ld c, e
    ld b, $be
    ld c, h
    rst $38
    nop
    ld b, l
    ld [hl], b
    ld bc, $6e82
    inc b
    sub e
    ld [hl], c
    ld b, $50
    ld [hl], e
    rst $38
    nop
    sub l
    ld d, b
    ld bc, $4e9a
    inc b
    add e
    ld d, d
    ld b, $03
    ld d, h
    rst $38
    nop
    sbc b
    ld c, [hl]
    ld bc, $4e97
    inc b
    sbc c
    ld c, [hl]
    ld b, $00
    ld b, b
    rst $38
    nop
    ld a, d
    ld a, [hl]
    ld bc, $7d7a
    inc b
    ld a, [bc]
    ld a, a
    ld b, $00
    ld b, b
    rst $38
    nop
    ld d, l
    ld e, e
    ld bc, $59c2
    inc b
    sub h
    ld e, h
    ld b, $00
    ld b, b
    rst $38
    nop
    sub a
    ld e, a
    ld bc, $5dd8
    inc b
    sbc [hl]
    ld h, b
    ld b, $00
    ld b, b
    rst $38
    nop
    dec b
    ld [hl], c
    ld bc, $6ff6
    inc b
    sub e
    ld [hl], c
    ld b, $00
    ld b, b
    rst $38
    nop
    dec e
    ld [hl], l
    ld bc, $7221
    inc b
    or e
    ld [hl], a
    ld b, $0b
    ld a, d
    rst $38
    nop
    inc hl
    ld d, [hl]
    ld bc, $5227
    inc b
    ld a, c
    ld e, d
    ld b, $8f
    ld h, b
    rst $38
    nop
    ld hl, $016f
    sbc a
    ld l, l
    inc b
    rrca
    ld [hl], b
    ld b, $23
    ld [hl], c
    rst $38
    nop
    and c
    ld l, l
    ld bc, $6b85
    inc b
    cp b
    ld l, a
    ld b, $40
    ld [hl], e
    rst $38
    nop
    xor d
    ld c, d
    ld bc, $4949
    inc b
    db $10
    ld c, h
    ld b, $6c
    ld c, l
    rst $38
    nop
    ld h, $65
    ld bc, $6409
    inc b
    ld [hl-], a
    ld h, [hl]
    ld b, $fd
    ld l, e
    rst $38
    nop
    nop
    ld b, b
    ld bc, $42cd
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    call z, $0142
    bit 0, d
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    pop de
    ld a, [hl]
    ld bc, $7dd7
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    sbc e
    db $76
    ld bc, $7534
    inc b
    ld a, c
    ld a, b
    ld b, $fd
    ld a, e
    rst $38
    nop
    add b
    ld [hl], e
    ld bc, $71c5
    inc b
    ld a, [hl-]
    ld [hl], l
    ld b, $a5
    ld a, b
    rst $38
    nop
    ld l, d
    ld l, [hl]
    ld bc, $6d33
    inc b
    call $066f
    ld [bc], a
    ld [hl], a
    rst $38
    nop
    adc l
    ld a, [hl]
    ld bc, $7a38
    inc b
    or h
    ld a, h
    ld b, $00
    ld b, b
    rst $38
    nop
    rst $00
    ld d, e
    ld bc, $532d
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    ret


    ld b, d
    ld bc, $42c8
    inc b
    nop
    ld b, b
    ld b, $ca
    ld b, d
    rst $38
    nop
    db $10
    ld l, h
    ld bc, $6a3b
    inc b
    db $d3
    ld l, h
    ld b, $00
    ld b, b
    rst $38
    nop
    sbc e
    ld b, c
    ld bc, $40d0
    inc b
    ld c, e
    ld b, d
    ld b, $00
    ld b, b
    rst $38
    nop
    db $ed
    ld l, a
    ld bc, $6fec
    inc b
    xor $6f
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    or l
    ld b, e
    ld bc, $4324
    inc b
    ld d, l
    ld b, h
    ld b, $00
    ld b, b
    rst $38
    nop
    db $76
    ld b, l
    ld bc, $44b8
    inc b
    ld d, $47
    ld b, $c3
    ld b, a
    rst $38
    nop
    ld c, d
    ld c, h
    ld bc, $487e
    inc b
    call c, $064f
    scf
    ld d, c
    rst $38
    nop
    rrca
    ld [hl], a
    ld bc, $718f
    inc b
    ld h, b
    ld a, c
    ld b, $93
    ld a, h
    rst $38
    nop
    ld d, e
    ld a, h
    ld bc, $7b7f
    inc b
    dec bc
    ld a, l
    ld b, $c9
    ld a, l
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    sub e
    ld l, c
    ld bc, $6855
    inc b
    ld sp, hl
    ld l, c
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    add hl, de
    ld l, c
    ld bc, $66ea
    inc b
    ld l, c
    ld l, e
    ld b, $8a
    ld l, l
    rst $38
    nop
    nop
    ld b, b
    ld bc, $4000
    inc b
    nop
    ld b, b
    ld b, $00
    ld b, b
    rst $38
    nop
    ld sp, hl
    ld a, [hl]
    ld bc, $7e1a
    inc b
    ret z

    ld a, a
    ld b, $87
    ld e, d
    rst $38
    ld [hl], d
    jr c, jr_039_5550

    ld [hl], e
    ld b, h
    ld d, l
    ld [hl], l
    ld d, b
    ld d, l
    ld [hl], a
    ld e, e
    ld d, l
    rst $38
    or d
    jr nz, jr_039_555d

    rst $38
    ld [bc], a
    db $dd
    ld d, l
    rst $38
    sub d
    ld h, b
    ld d, l
    rst $38
    sub d
    and d
    ld d, l
    rst $38
    ld [bc], a
    or b
    ld d, l
    rst $38
    ld [bc], a
    jp $ff55


    ld h, d
    db $d3
    ld d, l
    rst $38
    ld [bc], a
    cp [hl]
    ld e, b
    inc bc
    ret z

    ld e, b
    rst $38
    ld [bc], a
    jp nc, $0358

    call c, $ff58
    ld [bc], a
    pop af
    ld d, h
    rst $38
    ld [bc], a
    rst $28
    ld d, l
    rst $38
    ld [hl-], a
    ld sp, hl
    ld d, l
    rst $38
    ld [bc], a
    ld bc, $ff56
    sub d
    db $10
    ld d, [hl]
    rst $38
    or d
    ld a, [hl-]
    ld d, [hl]
    or e
    ld c, d
    ld d, [hl]
    rst $38
    ld [hl], d
    and $58
    rst $38
    ld [hl+], a
    ld c, h

jr_039_5550:
    ld e, d
    rst $38
    and d
    ld h, b
    ld d, [hl]
    rst $38
    dec b
    add l
    ld d, [hl]
    rst $38
    ld d, d
    sub h
    ld d, [hl]

jr_039_555d:
    rst $38
    ld [bc], a
    xor c
    ld d, [hl]
    rst $38
    ld [bc], a
    jp $ff56


    or d
    ld h, l
    ld e, e
    rst $38
    dec b
    pop de
    ld e, d
    rst $38
    dec b
    ld de, $ff5b
    ld [bc], a
    ld e, d
    ld e, e
    rst $38
    or d
    jp z, $ff5e

    ld [bc], a
    rst $30
    ld e, h
    rst $38
    ld [bc], a
    ld a, c
    ld e, [hl]
    rst $38
    rlca
    rla
    ld d, a
    rst $38
    rlca
    jr z, jr_039_55e0

    rst $38
    rlca
    ld l, l
    ld d, a
    rst $38
    rlca
    add d
    ld d, a
    rst $38
    rlca
    and a
    ld d, a
    rst $38
    and a
    jr c, jr_039_55f5

    rst $38
    sub d
    ld h, c
    ld e, h
    sub a
    ld [hl], b
    ld e, h
    rst $38
    rlca
    sub a
    ld e, h
    rst $38
    rlca
    cp [hl]
    ld e, h
    rst $38
    scf
    sub l
    ld e, b
    rst $38
    rlca
    ld [hl], b
    ld e, b
    rst $38
    rlca
    ld e, e
    ld e, b
    rst $38
    ld [bc], a
    inc sp
    ld e, b
    rlca
    ld c, [hl]
    ld e, b
    rst $38
    ld [bc], a
    inc h
    ld e, b
    rst $38
    rlca
    rrca
    ld e, b
    rst $38
    sub a
    call nz, $ff57
    rlca
    jp nc, $ff56

    ld [bc], a
    jp nc, $ff5d

    ld [bc], a
    dec l
    ld e, [hl]
    rst $38
    ld [bc], a
    ei
    ld e, l
    rst $38
    sub d
    rrca
    ld e, [hl]
    rst $38
    ld [bc], a
    or e
    ld h, c
    rst $38

jr_039_55e0:
    rlca
    jr nz, jr_039_5640

    rst $38
    ld [bc], a
    ld d, c
    ld e, l
    rlca
    ld l, b
    ld e, l
    rst $38
    ld [bc], a
    adc c
    ld e, l
    rlca
    cp c
    ld e, l
    rst $38
    ld [bc], a
    adc [hl]
    ld h, d

jr_039_55f5:
    rst $38
    ld [bc], a
    call z, $ff62
    ld [bc], a
    ret c

    ld h, d
    rst $38
    ld a, [c]
    inc e
    ld h, e
    rst $38
    ld b, d
    ld h, $7f
    rst $38
    ld [bc], a
    db $f4
    ld e, h
    rst $38
    ld b, d
    jr nc, jr_039_568c

    rst $38
    ld [bc], a
    ld b, [hl]
    ld e, h
    rst $38
    and d
    ld b, h
    ld a, a
    rst $38
    ld [bc], a
    ld [hl], h
    ld a, a
    rst $38
    and d
    ld a, [hl]
    ld h, e
    rst $38
    ld [bc], a
    ld a, h
    ld a, a
    rst $38
    ld [bc], a
    or c
    ld a, a
    rst $38
    ld [bc], a
    cp e
    ld a, a
    rst $38
    ld [bc], a
    adc b
    ld e, d
    rst $38
    ld [bc], a
    add a
    ld e, d
    rlca
    add a
    ld e, d
    rst $38
    ld [bc], a
    sbc d
    ld a, a
    rst $38
    ld [bc], a
    call nz, $ff7f
    or d
    ld e, [hl]
    ld h, e

jr_039_5640:
    rst $38
    ld [bc], a
    and b
    ld a, a
    rst $38
    ld [bc], a
    add a
    ld e, d
    rlca
    add a
    ld e, d
    rst $38
    ld [bc], a
    ld de, $ff5d
    ld [bc], a
    jr z, jr_039_56ae

    rst $38
    and d
    ret


    ld a, a
    rst $38
    or d
    db $db
    ld a, a
    rst $38
    ld [bc], a
    ld [hl], d
    ld h, b
    rst $38
    di
    add a
    ld e, d
    ld a, [c]
    add a
    ld e, d
    push af
    add a
    ld e, d
    rst $30
    add a
    ld e, d
    rst $38
    di
    add a
    ld e, d
    ld a, [c]
    add a
    ld e, d
    push af
    add a
    ld e, d
    rst $30
    add a
    ld e, d
    rst $38
    di
    add a
    ld e, d
    ld a, [c]
    add a
    ld e, d
    push af
    add a
    ld e, d
    rst $30
    add a
    ld e, d
    rst $38
    ld [bc], a
    sub l
    ld h, b
    rst $38
    ld [bc], a

jr_039_568c:
    add a
    ld e, d
    rlca
    add a
    ld e, d
    rst $38
    or d
    jp z, $ff7f

    rlca
    push hl
    ld a, a
    rst $38
    and d
    ld a, l
    ld e, e
    and a
    or h
    ld e, e
    rst $38
    rlca
    bit 3, e
    rst $38
    rlca
    rst $20
    ld a, a
    rst $38
    ld [bc], a
    ld a, [c]
    ld a, a
    rst $38
    ld [bc], a

jr_039_56ae:
    ld [hl], $62
    rlca
    ld e, l
    ld h, d
    rst $38
    rlca
    rst JumpTable
    ld a, a
    rst $38
    rlca
    ld hl, sp+$5b
    rst $38
    ld [bc], a
    dec e
    ld e, h
    rlca
    ld a, [hl+]
    ld e, h
    rst $38
    ld [bc], a
    adc l
    ld e, a
    rlca
    jp $ff5f


    ld [bc], a
    add a
    ld e, d
    rlca
    add a
    ld e, d
    rst $38
    ld [bc], a
    ret


    ld e, l
    rlca
    ld h, e
    ld e, [hl]
    rst $38
    ld [bc], a
    ld b, b
    ld e, h
    rst $38
    ld [bc], a
    jp hl


    ld h, d
    rlca
    add hl, bc
    ld h, e
    rst $38
    rla
    ld b, [hl]
    ld e, l
    rst $38
    ld [bc], a
    ret c

    ld h, b
    rlca
    and $60
    rst $38
    ld [bc], a
    cp b
    ld e, l
    rlca
    call nz, $ff5d
    rlca
    add hl, sp
    ld h, b
    rst $38
    rlca
    sub a
    ld e, l
    rst $38
    ld [bc], a
    add a
    ld e, d
    rlca
    add a
    ld e, d
    rst $38
    ld [bc], a
    cp [hl]
    ld h, c
    rlca
    dec d
    ld h, d
    rst $38
    ld [bc], a
    jp nz, $0762

    ret nc

    ld h, d
    rst $38
    rst $00
    di
    ld h, h
    rst $38
    rlca
    ld hl, sp+$5f
    rst $38
    rlca
    ld [hl], e
    ld h, c
    rst $38
    add a
    ld d, e
    ld h, l
    rst $38
    ld [bc], a
    ld e, $66
    rst $38
    ld [bc], a
    db $fc
    ld e, [hl]
    rst $38
    ld [bc], a
    and h
    ld h, h
    rst $38
    ld [bc], a
    ld a, d
    ld h, h
    rst $38
    or d
    ld a, h
    ld a, h
    rst $38
    rlca
    xor l
    ld a, l
    rst $38
    dec b
    reti


    ld a, l
    rst $38
    dec b
    jr nz, jr_039_5781

    rst $38
    dec b
    ld l, l
    ld a, l
    rst $38
    and d
    sub [hl]
    ld a, l
    rst $38
    and d
    adc a
    ld a, a
    rst $38
    ld [bc], a
    add [hl]
    ld a, l
    rlca
    sub c
    ld a, l
    rst $38
    ld [bc], a
    or $7d
    rst $38
    ld [bc], a
    ld bc, $0740
    rla
    ld b, b
    rst $38
    ld [bc], a
    ld d, [hl]
    ld a, a
    rlca
    ld l, e
    ld a, a
    rst $38
    and d
    ld sp, $ff40
    ld [bc], a
    sub l
    ld b, b
    inc bc
    xor c
    ld b, b
    rlca
    or a
    ld b, b
    rst $38
    ld [bc], a
    ld c, c
    ld a, h
    dec b
    ld e, [hl]
    ld a, h
    rlca
    ld l, l
    ld a, h
    rst $38
    ld [bc], a
    inc a

jr_039_5781:
    ld a, l
    rst $38
    ld [bc], a
    ld l, a
    ld h, c
    rlca
    sbc h
    ld h, c
    rst $38
    ld [bc], a
    ld b, e
    ld h, c
    rlca
    ld e, b
    ld h, c
    rst $38
    add a
    ld e, a
    ld h, b
    rst $38
    rlca
    xor h
    ld h, b
    rst $38
    ld [bc], a
    ld [hl], a
    ld h, h
    rlca
    ld a, b
    ld h, h
    rst $38
    ld [bc], a
    ld a, c
    ld h, h
    rst $38
    ld [bc], a
    ld de, $ff66
    di
    daa
    ld h, [hl]
    ld a, [c]
    dec hl
    ld h, [hl]
    push af
    ld d, b
    ld h, [hl]
    rst $30
    ld l, a
    ld h, [hl]
    rst $38
    di
    ld [hl], h
    ld h, [hl]
    ld a, [c]
    ld a, b
    ld h, [hl]
    push af
    sub e
    ld h, [hl]
    rst $30
    xor h
    ld h, [hl]
    rst $38
    di
    or c
    ld h, [hl]
    ld a, [c]
    or l
    ld h, [hl]
    push af
    adc $66
    rst $30
    push hl
    ld h, [hl]
    rst $38
    ld bc, $511c
    ld bc, $511c
    ld [bc], a
    add hl, hl
    ld d, c
    ld [bc], a
    ld [hl], $51
    ld [bc], a
    ld b, e
    ld d, c
    ld [bc], a
    ld d, b
    ld d, c
    nop
    db $eb
    ld d, h
    ld [bc], a
    ld l, d
    ld d, c
    ld [bc], a
    ld [hl], a
    ld d, c
    ld bc, $5184
    ld [bc], a
    sub c
    ld d, c
    ld [bc], a
    sbc [hl]
    ld d, c
    ld [bc], a
    xor e
    ld d, c
    ld [bc], a
    cp b
    ld d, c
    ld bc, $51c5
    ld [bc], a
    jp nc, $0151

    rst JumpTable
    ld d, c
    ld [bc], a
    db $ec
    ld d, c
    inc bc
    ld sp, hl
    ld d, c
    inc bc
    ld b, $52
    inc bc
    inc de
    ld d, d
    inc bc
    jr nz, jr_039_5863

    inc bc
    dec l
    ld d, d
    inc bc
    ld a, [hl-]
    ld d, d
    inc bc
    ld b, a
    ld d, d
    inc bc
    ld d, h
    ld d, d
    inc bc
    ld h, c
    ld d, d
    inc b
    ld l, [hl]
    ld d, d
    inc bc
    ld a, e
    ld d, d
    inc b
    adc b
    ld d, d
    inc bc
    sub l
    ld d, d
    inc bc
    and d
    ld d, d
    inc b
    xor a
    ld d, d
    inc b
    cp h
    ld d, d
    inc bc
    ret


    ld d, d
    inc b
    sub $52
    inc b
    db $e3
    ld d, d
    dec b
    ldh a, [rHDMA2]
    inc b
    db $fd
    ld d, d
    inc b
    ld a, [bc]
    ld d, e
    dec b
    rla
    ld d, e
    dec b
    inc h
    ld d, e
    dec b
    ld sp, $0453
    ld a, $53
    nop
    ld c, e
    ld d, e
    ld bc, $5358
    dec b
    ld h, l
    ld d, e
    dec b
    ld [hl], d
    ld d, e
    dec b
    ld a, a
    ld d, e
    inc b

jr_039_5863:
    adc h
    ld d, e
    nop
    sbc c
    ld d, e
    ld bc, $53a6
    ld [bc], a
    or e
    ld d, e
    ld [bc], a
    ret nz

    ld d, e
    ld bc, $53cd
    dec b
    jp c, $0453

    rst $20
    ld d, e
    dec b
    db $f4
    ld d, e
    dec b
    ld bc, $0554
    ld c, $54
    dec b
    dec de
    ld d, h
    dec b
    jr z, jr_039_58dd

    dec b
    dec [hl]
    ld d, h
    inc b
    ld b, d
    ld d, h
    inc bc
    ld c, a
    ld d, h
    ld bc, $545c
    ld bc, $5469
    ld [bc], a
    db $76
    ld d, h
    ld [bc], a
    add e
    ld d, h
    ld [bc], a
    sub b
    ld d, h
    inc b
    sbc l
    ld d, h
    dec b
    xor d
    ld d, h
    dec b
    or a
    ld d, h
    dec b
    call nz, $0154
    pop de
    ld d, h
    dec b
    sbc $54
    ld bc, $54f8
    ld bc, $5505
    ld bc, $5509
    ld bc, $550d
    ld bc, $5511
    ld bc, $5515
    ld bc, $5519
    ld bc, $551d
    ld bc, $5521
    ld bc, $5528
    ld bc, $552f
    ld bc, $5533
    ld bc, $5537
    ld bc, $553b

jr_039_58dd:
    ld bc, $553f
    ld bc, $5543
    ld bc, $554a
    ld bc, $554e
    ld bc, $5552
    ld bc, $5556
    ld bc, $555a
    ld bc, $555e
    ld bc, $5562
    ld bc, $5566
    ld bc, $556a
    ld bc, $556e
    ld bc, $5572
    ld bc, $5576
    ld bc, $557a
    ld bc, $557e
    ld bc, $5582
    ld bc, $5586
    ld bc, $558a
    ld bc, $558e
    ld bc, $5592
    ld bc, $5596
    ld bc, $559a
    ld bc, $55a1
    ld bc, $55a5
    ld bc, $55a9
    ld bc, $55ad
    ld bc, $55b1
    ld bc, $55b5
    ld bc, $55bc
    ld bc, $55c0
    ld bc, $55c4
    ld bc, $55c8
    ld bc, $55cc
    ld bc, $55d0
    ld bc, $55d4
    ld bc, $55d8
    ld bc, $55dc
    ld bc, $55e0
    ld bc, $55e4
    ld bc, $55eb
    ld bc, $55f2
    ld bc, $55f6
    ld bc, $55fa
    ld bc, $55fe
    ld [bc], a
    ld [bc], a
    ld d, [hl]
    nop
    ld b, $56
    ld [bc], a
    ld a, [bc]
    ld d, [hl]
    nop
    ld c, $56
    ld [bc], a
    ld [de], a
    ld d, [hl]
    ld [bc], a
    ld d, $56
    ld bc, $561a
    ld [bc], a
    ld e, $56
    ld [bc], a
    ld [hl+], a
    ld d, [hl]
    ld [bc], a
    ld h, $56
    nop
    ld a, [hl+]
    ld d, [hl]
    ld bc, $57a4
    inc b
    dec [hl]
    ld d, [hl]
    inc b
    add hl, sp
    ld d, [hl]
    nop
    dec a
    ld d, [hl]
    inc bc
    ld b, c
    ld d, [hl]
    nop
    ld b, l
    ld d, [hl]
    nop
    ld c, h
    ld d, [hl]
    nop
    ld d, b
    ld d, [hl]
    inc bc
    ld d, h
    ld d, [hl]
    inc bc
    ld e, b
    ld d, [hl]
    nop
    ld e, h
    ld d, [hl]
    ld bc, $57a8
    ld bc, $57b5
    ld bc, $57c2
    nop
    add a
    ld d, [hl]
    nop
    adc e
    ld d, [hl]
    inc b
    sub d
    ld d, [hl]
    inc b
    sub [hl]
    ld d, [hl]
    nop
    sbc d
    ld d, [hl]
    nop
    and c
    ld d, [hl]
    inc bc
    and l
    ld d, [hl]
    inc b
    xor c
    ld d, [hl]
    nop
    xor l
    ld d, [hl]
    ld bc, $56b4
    nop
    cp b
    ld d, [hl]
    nop
    cp h
    ld d, [hl]
    nop
    jp $0056


    jp z, $0056

    pop de
    ld d, [hl]
    nop
    ret c

    ld d, [hl]
    nop
    call c, $0056
    db $e3
    ld d, [hl]
    nop
    rst $20
    ld d, [hl]
    nop
    xor $56
    nop
    push af
    ld d, [hl]
    nop
    ld sp, hl
    ld d, [hl]
    nop
    db $fd
    ld d, [hl]
    nop
    inc b
    ld d, a
    nop
    dec bc
    ld d, a
    nop
    ld [de], a
    ld d, a
    nop
    ld d, $57
    nop
    ld a, [de]
    ld d, a
    nop
    ld e, $57
    nop
    ld [hl+], a
    ld d, a
    nop
    ld h, $57
    ld bc, $572a
    ld bc, $572e
    ld bc, $5732
    ld bc, $5736
    ld bc, $573a
    dec b
    ld a, $57
    ld bc, $5742
    ld bc, $5746
    inc bc
    ld c, d
    ld d, a
    ld bc, $574e
    ld bc, $5755
    dec b
    ld e, c
    ld d, a
    ld [bc], a
    ld h, b
    ld d, a
    dec b
    ld h, a
    ld d, a
    dec b
    ld l, e
    ld d, a
    ld bc, $5775
    ld bc, $577f
    ld bc, $5783
    ld bc, $578a
    ld bc, $5791
    ld bc, $5795
    ld bc, $5799
    ld bc, $57a0
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    dec b
    ld e, l
    ld d, c
    nop
    ld l, h
    ld e, d
    nop
    add [hl]
    ld e, d
    ld bc, $5a86
    inc b
    add [hl]
    ld e, d
    ld b, $86
    ld e, d
    rst $38
    ld [bc], a
    add [hl]
    ld e, d
    inc bc
    add [hl]
    ld e, d
    dec b
    add [hl]
    ld e, d
    rlca
    add [hl]
    ld e, d
    rst $38
    rst $38
    rst $38
    ldh a, [$d1]
    rlca
    pop de
    inc b
    pop de
    rlca
    pop hl
    ld [bc], a
    pop de
    rlca
    reti


    ld [bc], a
    db $d3
    rlca
    adc $04
    pop de
    rlca
    sbc $02
    pop de
    rlca
    rst $10
    ld [bc], a
    push de
    rlca
    call z, $d204
    rlca
    call c, $d102
    rlca
    push de
    ld [bc], a
    rst $10
    rlca
    jp z, $d204

    rlca
    jp c, $d202

    rlca
    db $d3
    ld [bc], a
    reti


    rlca
    ret z

    inc b
    db $d3
    rlca
    ret c

    ld [bc], a
    jp nc, $d107

    ld [bc], a
    rlca
    add $03
    jp c, $c207

    inc b
    db $d3
    rlca
    jp nc, $d302

    rlca
    call $d902
    rlca
    ret nz

    inc b
    call nc, $d007
    ld [bc], a
    db $d3
    rlca
    rlc d
    rst $10
    rlca
    cp [hl]
    inc b
    db $d3
    rlca
    sbc $02
    db $d3
    rlca
    ret


    ld [bc], a
    push de
    rlca
    cp h
    inc b
    db $d3
    rlca
    call z, $d202
    rlca
    rst $00
    ld [bc], a
    db $d3
    rlca
    cp c
    inc b
    jp nc, $c907

    ld [bc], a
    pop de
    rlca
    call nz, $d202
    rlca
    or [hl]
    inc b
    pop de
    rlca
    add $02
    pop de
    rlca
    pop bc
    ld [bc], a
    jp nc, $af07

    inc b
    pop de
    rlca
    pop bc
    ld [bc], a
    pop de
    rlca
    cp h
    ld [bc], a
    pop de
    rlca
    xor e
    inc b
    ldh [rSB], a
    pop de
    rlca
    cp a
    ld [bc], a
    rst $38
    rst $38
    ldh a, [$80]
    ld hl, sp+$1e
    db $dd
    rlca
    ld c, a
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, d
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, h
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, [hl]
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, c
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld d, c
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, e
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, a
    ld bc, $00d0
    nop
    ld bc, $07dd
    ld c, a
    ld bc, $ffff
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
    ldh a, [$3c]
    reti


    ld b, $0b
    ld [bc], a
    reti


    ld b, $0b
    ld [bc], a
    ret c

    ld b, $0b
    ld [bc], a
    ret c

    ld b, $0b
    ld [bc], a
    rst $10
    ld b, $0b
    ld [bc], a
    rst $10
    ld b, $0b
    ld [bc], a
    sub $06
    dec bc
    ld [bc], a
    push de
    ld b, $0b
    ld [bc], a
    push de
    ld b, $0b
    ld [bc], a
    call nc, $0b06
    ld [bc], a
    db $d3
    ld b, $0b
    ld [bc], a
    jp nc, $0b06

    ld [bc], a
    jp nc, $0b06

    ld [bc], a
    rst $38
    ldh a, [$b0]
    scf
    ld [bc], a
    ldh a, [$83]
    dec [hl]
    inc bc
    ld [hl], $03
    scf
    inc bc
    dec [hl]
    inc bc
    ld [hl], $03
    scf
    inc bc
    dec [hl]
    inc bc
    ld [hl], $05
    rst $38
    ldh a, [$a0]
    ld h, h
    inc bc
    ldh a, [rP1]
    nop
    ld bc, $90f0
    ld b, h
    inc bc
    ldh a, [rP1]
    nop
    ld bc, $90f0
    inc [hl]
    inc bc
    ldh a, [rP1]
    nop
    ld bc, $80f0
    inc d
    inc bc
    ldh a, [rP1]
    nop
    ld bc, $30f0
    inc d
    inc bc
    ldh a, [rP1]
    nop
    ld bc, $30f0
    inc d
    inc bc
    rst $38
    ldh a, [rNR41]
    dec d
    inc bc
    ldh a, [$30]
    dec d
    inc bc
    ldh a, [rLCDC]
    dec d
    inc bc
    ldh a, [$50]
    dec d
    inc bc
    ldh a, [$60]
    dec d
    inc bc
    ldh a, [rSVBK]
    dec d
    ld b, $f0
    ld [hl], b
    dec d
    add hl, de
    ldh a, [rSVBK]
    dec d
    add hl, de
    ldh a, [rPCM34]
    dec d
    ld c, e
    rst $38
    ldh a, [rP1]
    ret nc

    nop
    nop
    add hl, bc
    sub $e0
    rlca
    rlca
    ret nz

    ld d, l
    rst $38
    ldh a, [$80]
    daa
    ld bc, $0137
    ld b, [hl]
    ld bc, $0156
    ld h, [hl]
    ld bc, $0156
    ld b, [hl]
    ld bc, $0137
    daa
    ld bc, $ffff
    reti


    ld b, c
    ld bc, $013c
    rst $38
    or $02
    db $dd
    add hl, sp
    ld bc, $013d
    db $db
    ld a, [hl-]
    ld bc, $013e
    reti


    dec sp
    ld bc, $013c
    ld b, b
    ld bc, $013d
    ld b, c
    ld bc, $013e
    ccf
    ld bc, HeaderCGBFlag
    ld b, b
    ld bc, HeaderNewLicenseeCode
    ld b, c
    ld bc, $0142
    ld b, [hl]
    ld bc, HeaderCGBFlag
    ld b, a
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, HeaderRAMSize
    ld b, [hl]
    ld bc, HeaderDestinationCode
    ld b, a
    ld bc, $4cdb
    ld [bc], a
    ret c

    add hl, sp
    ld bc, $013d
    ld a, [hl-]
    ld bc, $013e
    dec sp
    ld bc, $013c
    ld b, b
    ld bc, $3dd7
    ld bc, $0141
    ld a, $01
    ccf
    ld bc, HeaderCGBFlag
    ld b, b
    ld bc, HeaderNewLicenseeCode
    sub $41
    ld bc, $0142
    ld b, [hl]
    ld bc, HeaderCGBFlag
    ld b, a
    ld bc, HeaderNewLicenseeCode
    push de
    ld b, l
    ld bc, HeaderRAMSize
    ld b, [hl]
    ld bc, HeaderDestinationCode
    ld b, a
    ld bc, $4cd9
    ld [bc], a
    push de
    add hl, sp
    ld bc, $013d
    call nc, $013a
    ld a, $01
    dec sp
    ld bc, $013c
    ld b, b
    ld bc, $013d
    ld b, c
    ld bc, $3ed3
    ld bc, HeaderManufacturerCode
    ld b, e
    ld bc, $0140
    ld b, h
    ld bc, $0141
    jp nc, $0142

    ld b, [hl]
    ld bc, HeaderCGBFlag
    ld b, a
    ld bc, HeaderNewLicenseeCode
    pop de
    ld b, l
    ld bc, HeaderRAMSize
    ld b, [hl]
    ld bc, HeaderDestinationCode
    ld b, a
    ld [bc], a
    jp nc, HeaderMaskROMVersion

    rst $38
    or $02
    ld [c], a
    nop
    reti


    ld hl, sp+$16
    ld e, $0f
    ld hl, sp+$00
    ld h, b
    ld [bc], a
    pop hl
    nop
    pop de
    ld hl, sp+$0f
    jr nz, jr_039_5d12

    ldh [rP1], a
    call nc, $16f8
    inc hl
    dec b
    rst $38
    rst $38
    db $dd

jr_039_5d12:
    ldh a, [$80]
    ld hl, sp+$61
    dec b
    add hl, sp
    inc bc
    ld hl, sp-$61
    ld b, $3f
    inc bc
    ld hl, sp+$61
    dec b
    add hl, sp
    inc bc
    ld hl, sp-$61
    ld b, $3f
    inc bc
    ld hl, sp+$61
    dec b
    add hl, sp
    inc bc
    ret c

    ld hl, sp-$61
    ld b, $3f
    inc bc
    sub $f8
    ld h, c
    dec b
    add hl, sp
    inc bc
    call nc, $9ff8
    ld b, $3f
    inc bc
    jp nc, $66f8

    dec b
    add hl, sp
    inc bc
    rst $38
    ldh a, [$90]
    ld d, h
    ld bc, HeaderCartridgeType
    inc [hl]
    ld bc, $0136
    dec [hl]
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, $0154
    ld d, [hl]
    ld bc, $70f0
    ld d, h
    ld bc, HeaderCartridgeType
    inc [hl]
    ld bc, $0136
    dec [hl]
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, $0154
    ld d, [hl]
    ld bc, $40f0
    ld d, h
    ld bc, HeaderCartridgeType
    inc [hl]
    ld bc, $0136
    dec [hl]
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, $0154
    ld d, [hl]
    ld bc, $34f0
    ld d, h
    ld bc, HeaderCartridgeType
    inc [hl]
    ld bc, $0136
    dec [hl]
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, $0154
    ld d, [hl]
    ld bc, $f0ff
    nop
    nop
    ld bc, $50f0
    dec d
    dec b
    ldh a, [rP1]
    nop
    ld bc, $40f0
    inc d
    ld b, $f0
    nop
    nop
    ld bc, $60f0
    inc [hl]
    ld b, $f0
    nop
    nop
    ld bc, $30f0
    ld b, $06
    rst $38
    ldh a, [$df]
    nop
    ld b, l
    inc bc
    ret c

    ldh [rTIMA], a
    nop
    ld b, l
    ld [hl-], a
    rst $38
    ldh a, [$f5]
    ld [hl], l
    inc a
    rst $38
    ldh a, [$d3]
    rlca
    ld [$d301], sp
    ld b, $0e
    ld bc, $07d3
    ld [$d301], sp
    ld b, $0e
    ld bc, $07d5
    ld [$d501], sp
    ld b, $0e
    ld bc, $07d5
    ld [$d501], sp
    ld b, $0e
    ld bc, $07d6
    ld [$d601], sp
    ld b, $0e
    ld bc, $07d6
    ld [$d601], sp
    ld b, $0e
    ld bc, $07d7
    ld [$d701], sp
    ld b, $0e
    ld bc, $07d7
    ld [$d701], sp
    ld b, $0e
    ld bc, $07d6
    ld [$d601], sp
    ld b, $0e
    ld bc, $07d6
    ld [$d601], sp
    ld b, $0e
    ld bc, $07d5
    ld [$d501], sp
    ld b, $0e
    ld bc, $07d5
    ld [$d501], sp
    ld b, $0e
    ld bc, $07d5
    ld [$d501], sp
    ld b, $0e
    ld bc, $07d5
    ld [$d501], sp
    ld b, $0e
    ld bc, $07d3
    ld [$d301], sp
    ld b, $0e
    ld bc, $07d3
    ld [$d301], sp
    ld b, $0e
    ld bc, $07d3
    ld [$d301], sp
    ld b, $0e
    ld bc, $07d3
    ld [$d301], sp
    ld b, $0e
    ld bc, $07d3
    ld [$d301], sp
    ld b, $0e
    ld bc, $f0ff
    db $10
    dec d
    ld bc, $20f0
    dec d
    ld bc, $30f0
    dec d
    ld bc, $40f0
    dec d
    ld bc, $50f0
    dec d
    ld bc, $60f0
    dec d
    ld bc, $70f0
    dec d
    ld bc, $80f0
    dec d
    ld bc, $90f0
    dec d
    ld bc, $a0f0
    dec d
    ld bc, $90f0
    dec d
    ld bc, $90f0
    dec d
    ld bc, $80f0
    dec d
    ld bc, $80f0
    dec d
    ld bc, $70f0
    dec d
    ld bc, $70f0
    dec d
    ld bc, $70f0
    dec d
    ld bc, $60f0
    dec d
    ld bc, $60f0
    dec d
    ld bc, $60f0
    dec d
    ld bc, $60f0
    dec d
    ld bc, $50f0
    dec d
    ld bc, $50f0
    dec d
    ld bc, $50f0
    dec d
    ld bc, $50f0
    dec d
    ld bc, $40f0
    dec d
    ld bc, $40f0
    dec d
    ld bc, $40f0
    dec d
    ld bc, $40f0
    dec d
    ld bc, $30f0
    dec d
    ld bc, $30f0
    dec d
    ld bc, $30f0
    dec d
    ld bc, $20f0
    dec d
    ld bc, $20f0
    dec d
    ld bc, $20f0
    dec d
    ld bc, $10f0
    dec d
    ld bc, $10f0
    dec d
    ld bc, $10f0
    dec d
    ld bc, $f0ff
    nop
    ret nc

    nop
    nop
    ld bc, $07dd
    add b
    ld bc, $f8d9
    db $fc
    rlca
    add b
    dec b
    ld hl, sp+$00
    rlca
    ld l, b
    ld bc, $5807
    ld bc, $4607
    ld bc, $07db
    add b
    ld bc, $f8d9
    db $fc
    rlca
    add b
    dec b
    ld hl, sp+$00
    rlca
    ld l, b
    ld bc, $5807
    ld bc, $4607
    ld bc, $07da
    add b
    ld bc, $f8d8
    db $fc
    rlca
    add b
    dec b
    ld hl, sp+$00
    rlca
    ld l, b
    ld bc, $5807
    ld bc, $4607
    ld bc, $07d9
    add b
    ld bc, $f8d7
    db $fc
    rlca
    add b
    dec b
    ld hl, sp+$00
    rlca
    ld l, b
    ld bc, $5807
    ld bc, $4607
    ld bc, $07d8
    add b
    ld bc, $f8d6
    db $fc
    rlca
    add b
    dec b
    ld hl, sp+$00
    rlca
    ld l, b
    ld bc, $5807
    ld bc, $4607
    ld bc, $07d5
    add b
    ld bc, $f8d3
    db $fc
    rlca
    add b
    dec b
    ld hl, sp+$00
    rlca
    ld l, b
    ld bc, $5807
    ld bc, $4607
    ld bc, $07d3
    add b
    ld bc, $03e0
    pop de
    ld hl, sp-$04
    rlca
    add b
    dec b
    rst $38
    ldh a, [$db]
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    db $db
    ld b, $0b
    ld [bc], a
    rst $38
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    ldh a, [$d0]
    inc h
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    ldh a, [$d0]
    inc [hl]
    ld [bc], a
    rst $38
    ldh a, [rNR41]
    ld [hl], $02
    ldh a, [$50]
    ld b, h
    ld [bc], a
    ldh a, [rSVBK]
    ld [hl], $02
    ldh a, [$80]
    ld b, h
    ld [bc], a
    ldh a, [$90]
    ld [hl], $02
    ldh a, [$c0]
    ld b, h
    ld [bc], a
    ldh a, [$90]
    ld [hl], $02
    ldh a, [$80]
    ld b, h
    ld [bc], a
    ldh a, [rSVBK]
    ld [hl], $03
    ldh a, [$50]
    ld b, h
    inc bc
    ldh a, [rLCDC]
    ld [hl], $03
    ldh a, [$30]
    ld b, h
    inc bc
    ldh a, [rNR41]
    ld [hl], $03
    ldh a, [rNR10]
    ld b, h
    inc bc
    ldh a, [rNR10]
    ld [hl], $03
    ldh a, [rNR11]
    ld b, h
    inc bc
    rst $38
    ldh a, [$60]
    scf
    ld b, $f0
    ld h, b
    ld [hl], $06
    ldh a, [$60]
    dec [hl]
    ld b, $f0
    ld h, b
    inc [hl]
    ld b, $f0
    ld h, b
    daa
    ld b, $f0
    ld h, b
    ld h, $06
    ldh a, [$60]
    dec h
    ld b, $f0
    ld h, b
    inc h
    ld b, $f0
    ld h, b
    rla
    ld b, $f0
    ld h, b
    ld d, $06
    ldh a, [$60]
    dec d
    ld b, $f0
    ld h, b
    inc d
    ld b, $f0
    ld b, b
    rlca
    inc d
    ldh a, [rBGP]
    rlca
    ld b, [hl]
    rst $38
    ldh a, [$80]
    reti


    ld hl, sp+$1e
    inc bc
    inc l
    dec c
    ld hl, sp+$00
    dec b
    ld [de], a
    ld bc, $8c05
    ld bc, $ef05
    ld bc, $5006
    ld bc, $8506
    ld bc, $9e06
    ld bc, $8506
    ld bc, $5006
    ld bc, $f0ff
    add b
    reti


    rlca
    dec hl
    ld bc, $1007
    ld bc, $2b07
    ld bc, $1007
    inc bc
    ret nc

    nop
    nop
    ld bc, $07d9
    ld c, l
    ld bc, $2b07
    ld bc, $4d07
    ld bc, $2b07
    ld bc, $00d0
    nop
    ld [$07d9], sp
    db $10
    ld bc, $f406
    ld bc, $1007
    ld bc, $f406
    ld bc, $00d0
    nop
    ld [$07d9], sp
    db $10
    ld bc, $f406
    ld bc, $1007
    ld bc, $f406
    ld bc, $f6ff
    ld [bc], a
    db $d3
    inc c
    inc e
    inc c
    inc e
    inc c
    inc e
    inc c
    inc e
    inc c
    inc e
    rst $38
    ldh a, [$f0]
    ld [hl], l
    inc e
    ldh a, [$f0]
    ld [hl], l
    inc e
    ldh a, [$f0]
    ld [hl], l
    inc e
    ldh a, [$f0]
    ld [hl], l
    inc e
    ldh a, [$f0]
    ld [hl], l
    inc e
    ldh a, [$f0]
    ld h, a
    ld bc, $0166
    ld h, l
    ld bc, $0164
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld b, a
    ld bc, $b0f0
    ld h, a
    ld bc, $0166
    ld h, l
    ld bc, $0164
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld b, a
    ld bc, $90f0
    ld h, a
    ld bc, $0166
    ld h, l
    ld bc, $0164
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld b, a
    ld bc, $70f0
    ld h, a
    ld bc, $0166
    ld h, l
    ld bc, $0164
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld b, a
    ld bc, $50f0
    ld h, a
    ld bc, $0166
    ld h, l
    ld bc, $0164
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld b, a
    ld bc, $36f0
    ld h, a
    ld bc, $0166
    ld h, l
    ld bc, $0164
    ld d, a
    ld bc, $0156
    ld d, l
    ld bc, $0154
    ld b, a
    ld bc, $f0ff
    db $10
    inc h
    ld bc, $20f0
    inc h
    ld bc, $40f0
    inc h
    ld bc, $60f0
    inc h
    ld bc, $80f0
    inc h
    ld bc, $90f0
    dec h
    ld [bc], a
    ldh a, [$90]
    dec h
    ld [bc], a
    ldh a, [$80]
    ld h, $02
    ldh a, [rSVBK]
    ld h, $02
    ldh a, [$60]
    daa
    ld [bc], a
    ldh a, [$60]
    daa
    ld [bc], a
    ldh a, [$50]
    inc [hl]
    ld [bc], a
    ldh a, [rLCDC]
    inc [hl]
    ld [bc], a
    ldh a, [rLCDC]
    dec [hl]
    ld [bc], a
    ldh a, [$30]
    dec [hl]
    ld [bc], a
    ldh a, [rNR41]
    ld [hl], $02
    ldh a, [rNR10]
    ld [hl], $02
    ldh a, [rNR10]
    ld [hl], $02
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    sub $07
    ld b, $01
    ld b, $0b
    ld bc, $07d6
    ld b, $01
    ld b, $0b
    ld bc, $07d6
    ld b, $01
    ld b, $0b
    ld bc, $07d6
    ld b, $01
    ld b, $0b
    ld bc, $07d6
    ld b, $01
    ld b, $0b
    ld bc, $07d6
    ld b, $01
    ld b, $0b
    ld bc, $07d2
    ld b, $01
    ld b, $0b
    ld bc, $07d2
    ld b, $01
    ld b, $0b
    ld bc, $07d2
    ld b, $01
    ld b, $0b
    ld bc, $07d2
    ld b, $01
    ld b, $0b
    ld bc, $07d2
    ld b, $01
    ld b, $0b
    ld bc, $07d2
    ld b, $01
    ld b, $0b
    ld bc, $f0ff
    sub b
    daa
    inc bc
    ldh a, [$90]
    inc [hl]
    inc bc
    ldh a, [$90]
    dec [hl]
    inc bc
    ldh a, [$90]
    ld [hl], $03
    ldh a, [rNR41]
    daa
    inc bc
    ldh a, [rNR41]
    inc [hl]
    inc bc
    ldh a, [rNR41]
    dec [hl]
    inc bc
    ldh a, [rNR41]
    ld [hl], $03
    rst $38
    ldh a, [$34]
    reti


    ld b, $46
    inc b
    ret c

    ld b, $46
    inc b
    rst $10
    ld b, $46
    inc b
    sub $06
    ld b, [hl]
    inc b
    push de
    ld b, $46
    inc b
    call nc, Call_039_4606
    inc b
    db $d3
    ld b, $46
    inc b
    jp nc, Jump_039_4606

    inc b
    pop de
    ld b, $46
    inc b
    rst $38
    ldh a, [$90]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [$80]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [rSVBK]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [$60]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [$50]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [rLCDC]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [$30]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [rNR41]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [rNR10]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    ldh a, [rNR11]
    ld [hl], $01
    inc [hl]
    ld bc, $0127
    ld h, $01
    rst $38
    db $d3
    inc c
    inc d
    inc c
    inc d
    inc c
    inc d
    inc c
    inc d
    inc c
    inc d
    inc c
    ld a, [bc]
    rst $38
    ldh a, [$f0]
    ld [hl], l
    inc d
    ldh a, [$f0]
    ld [hl], l
    inc d
    ldh a, [$f0]
    ld [hl], l
    inc d
    ldh a, [$f0]
    ld [hl], l
    inc d
    ldh a, [$f0]
    ld [hl], l
    inc d
    ldh a, [$f0]
    ld [hl], h
    ld a, [bc]
    rst $38
    or $02
    db $d3
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    inc e
    inc c
    jr nz, @+$0e

    ld h, $0c
    inc d
    inc c
    ld a, [bc]
    inc c
    inc de
    inc c
    ld [de], a
    inc c
    inc e
    ldh [rTAC], a
    inc c
    ld [hl-], a
    rst $38
    ldh a, [$f0]
    db $76
    rra
    ldh a, [$f0]
    db $76
    rra
    ldh a, [$f0]
    db $76
    rra
    ldh a, [$f0]
    db $76
    add hl, bc
    ld h, a
    add hl, bc
    db $76
    add hl, bc
    ldh a, [$f0]
    db $76
    rlca
    ld [hl], h
    rlca
    ld h, a
    rlca
    db $76
    rlca
    ldh a, [$f0]
    db $76
    rrca
    ld h, [hl]
    add hl, bc
    db $76
    ld [$f0f0], sp
    db $76
    ld [de], a
    ld h, [hl]
    rlca
    ld [hl], h
    rlca
    ld [hl], l
    ld b, $f0
    ldh a, [rPCM12]
    ld c, $66
    ld b, $f0
    ldh a, [$67]
    dec b
    ld h, l
    dec b
    ldh a, [$f0]
    ld d, a
    db $10
    ld h, h
    inc bc
    ldh a, [$c0]
    ld h, h
    ld b, $65
    inc bc
    ld h, l
    add hl, bc
    ldh a, [$a0]
    ld h, [hl]
    dec c
    ld [hl], h
    rrca
    ldh a, [$85]
    db $76
    ld [hl-], a
    rst $38
    ldh a, [$d2]
    rlca
    rlca
    inc bc
    ld b, $e7
    ld bc, $8006
    ld bc, $9e06
    ld bc, $07d4
    add hl, bc
    inc bc
    ld b, $e9
    ld bc, $8206
    ld bc, $a006
    ld bc, $07d6
    dec bc
    inc bc
    ld b, $eb
    ld bc, $8506
    ld bc, $a306
    ld bc, $07d8
    rrca
    inc bc
    ld b, $ef
    ld bc, $8906
    ld bc, $a706
    ld bc, $07d9
    inc d
    inc bc
    ld b, $f4
    ld bc, $8f06
    ld bc, $ab06
    ld bc, $07da
    add hl, de
    inc bc
    ld b, $f9
    ld bc, $9406
    ld bc, $b206
    ld bc, $07da
    inc e
    inc bc
    ld b, $ff
    ld bc, $9906
    ld bc, $b706
    ld bc, $07da
    ld [hl+], a
    inc bc
    rlca
    dec b
    ld bc, $9d06
    ld bc, $bb06
    ld bc, $07da
    ld h, $03
    rlca
    add hl, bc
    ld bc, $a206
    ld bc, $c006
    ld bc, $07da
    ld a, [hl+]
    inc bc
    rlca
    rrca
    ld bc, $a606
    ld bc, $c506
    ld bc, $07da
    jr nc, @+$05

    rlca
    inc d
    ld bc, $aa06
    ld bc, $c906
    ld bc, $07da
    dec [hl]
    inc bc
    rlca
    jr @+$03

    ld b, $af
    ld bc, $cf06
    ld bc, $07da
    dec sp
    inc bc
    rlca
    ld e, $01
    ld b, $b3
    ld bc, $d406
    ld bc, $07da
    ld b, c
    inc bc
    rlca
    inc hl
    ld bc, $b706
    ld bc, $d906
    ld bc, $07da
    ld b, h
    inc bc
    rlca
    inc hl
    ld bc, $b706
    ld bc, $d906
    ld bc, $07da
    ld b, a
    inc bc
    rlca
    daa
    ld bc, $bb06
    ld bc, $df06
    ld bc, $07da
    ld c, d
    inc bc
    rlca
    dec hl
    ld bc, $c106
    ld bc, $e406
    ld bc, $07da
    ld c, l
    inc bc
    rlca
    ld [hl-], a
    ld bc, $c706
    ld bc, $e906
    ld bc, $07da
    ld d, b
    inc bc
    rlca
    scf
    ld bc, $cb06
    ld bc, $f006
    ld bc, $07da
    ld d, e
    inc bc
    rlca
    inc a
    ld bc, $d106
    ld bc, $f606
    ld bc, $07da
    ld d, [hl]
    inc bc
    rlca
    ld b, e
    ld bc, $d706
    ld bc, $fb06
    ld bc, $07da
    ld e, c
    inc bc
    rlca
    ld c, b
    ld bc, $dc06
    ld bc, $0307
    ld bc, $07da
    ld e, e
    inc bc
    rlca
    ld c, l
    ld bc, $e306
    ld bc, $0907
    ld bc, $07da
    ld h, b
    inc bc
    rlca
    ld d, d
    ld bc, $e506
    ld bc, $0a07
    ld bc, $07da
    ld h, [hl]
    inc bc
    rlca
    ld e, b
    ld bc, $ea06
    ld bc, $1607
    ld bc, $07d9
    ld l, e
    inc bc
    rlca
    ld e, [hl]
    ld bc, $f506
    ld bc, $1a07
    ld bc, $07d8
    ld [hl], e
    inc bc
    rlca
    ld h, d
    ld bc, $fa06
    ld bc, $2607
    ld bc, $07d7
    ld a, c
    inc bc
    rlca
    ld l, [hl]
    ld bc, $0507
    ld bc, $2a07
    ld bc, $07d5
    ld a, l
    inc bc
    rlca
    ld [hl], d
    ld bc, $0a07
    ld bc, $3607
    ld bc, $07d3
    add l
    inc bc
    rlca
    ld a, [hl]
    ld bc, $1507
    ld bc, $3a07
    ld bc, $07d1
    adc e
    inc bc
    rlca
    add d
    ld bc, $1a07
    ld bc, $4607
    ld bc, $f0ff
    jr nc, jr_039_655d

    rlca
    ldh a, [rLCDC]
    ld h, [hl]
    dec b
    ldh a, [$50]
    ld h, l
    dec b
    ldh a, [$60]
    ld h, h
    dec b
    ldh a, [rSVBK]
    ld d, a
    dec b
    ldh a, [$80]
    ld d, [hl]
    dec b
    ldh a, [$80]
    ld d, l
    dec b
    ldh a, [$80]
    ld b, a
    dec b
    ldh a, [$80]
    ld b, l
    dec b
    ldh a, [$80]
    ld b, h
    dec b
    ldh a, [$80]
    scf
    dec b
    ldh a, [$80]
    ld [hl], $05
    ldh a, [$80]
    dec [hl]
    dec b
    ldh a, [$80]
    inc [hl]
    ld [$80f0], sp
    daa
    ld [$80f0], sp
    ld h, $09
    ldh a, [$80]
    dec h
    add hl, bc
    ldh a, [$80]
    inc h
    dec c
    ldh a, [$80]
    rla
    dec c
    ldh a, [$80]
    ld d, $0f
    ldh a, [$80]
    dec d
    rrca
    ldh a, [$80]
    inc d
    rrca
    ldh a, [$80]
    rlca
    rrca
    cp $4b
    ld h, l
    rst $38
    ldh a, [$90]
    inc h
    ld [bc], a
    ldh a, [$90]
    dec h
    ld [bc], a
    ldh a, [$90]

jr_039_655d:
    ld h, $02
    ldh a, [$90]
    daa
    ld [bc], a
    ldh a, [$90]
    inc [hl]
    ld [bc], a
    ldh a, [$90]
    dec [hl]
    ld [bc], a
    ldh a, [$90]
    ld [hl], $02
    ldh a, [$90]
    dec [hl]
    ld [bc], a
    ldh a, [$90]
    inc [hl]
    ld [bc], a
    ldh a, [$90]
    daa
    ld [bc], a
    ldh a, [$90]
    inc [hl]
    ld [bc], a
    ldh a, [$90]
    dec [hl]
    ld [bc], a
    ldh a, [$90]
    ld [hl], $02
    ldh a, [$90]
    scf
    ld [bc], a
    ldh a, [$90]
    ld b, h
    ld [bc], a
    ldh a, [$90]
    ld b, l
    ld [bc], a
    ldh a, [$90]
    ld b, h
    ld [bc], a
    ldh a, [$90]
    scf
    ld [bc], a
    ldh a, [$90]
    ld [hl], $02
    ldh a, [$90]
    scf
    ld [bc], a
    ldh a, [$90]
    ld b, h
    ld [bc], a
    ldh a, [$90]
    ld b, l
    ld [bc], a
    ldh a, [$90]
    ld b, [hl]
    ld [bc], a
    ldh a, [$90]
    ld b, a
    ld [bc], a
    ldh a, [$b0]
    ld [hl], $03
    ldh a, [$90]
    ld b, a
    ld [bc], a
    ldh a, [$90]
    ld b, a
    ld [bc], a
    ldh a, [$90]
    ld b, a
    ld [bc], a
    ldh a, [$90]
    ld b, a
    ld [bc], a
    ldh a, [$90]
    inc [hl]
    inc bc
    ldh a, [$90]
    dec [hl]
    ld [bc], a
    ldh a, [$90]
    dec [hl]
    inc b
    ldh a, [$90]
    ld [hl], $03
    ldh a, [$90]
    scf
    ld a, [bc]
    ldh a, [$90]
    ld b, h
    ld a, [bc]
    ldh a, [$90]
    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld b, [hl]
    inc bc
    ld b, l
    inc bc
    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld d, h
    inc bc
    ldh a, [$90]
    ld d, l
    dec b
    ld b, a
    dec b
    ld b, [hl]
    dec b
    ld b, a
    dec b
    ldh a, [$90]
    ld d, l
    ld b, $f0
    sub b
    ld d, [hl]
    dec b
    ld d, l
    dec b
    ld d, h
    dec b
    ld d, l
    dec b
    ld d, [hl]
    dec b
    ldh a, [$90]
    ld d, a
    dec b
    ldh a, [$90]
    ld h, h
    dec b
    ld d, a
    dec b
    ld d, [hl]
    dec b
    ld d, a
    dec b
    ld h, h
    dec b
    ld h, l
    dec b
    ld h, [hl]
    inc d
    rst $38
    or $02
    ldh a, [$d2]
    rlca
    db $ec
    ld bc, $07d3
    db $eb
    ld bc, $07d4
    ld [$d501], a
    rlca
    jp hl


    ld bc, $07d6
    add sp, $01
    rst $10
    rlca
    rst $20
    ld bc, $07d8
    and $01
    reti


    rlca
    push hl
    ld bc, $e407
    ld bc, $e307
    ld bc, $e207
    ld bc, $e107
    ld bc, $e007
    ld bc, $df07
    ld bc, $de07
    ld bc, $dd07
    ld bc, $dc07
    ld bc, $db07
    ld bc, $da07
    ld bc, $d907
    ld bc, $d807
    ld bc, $d707
    ld bc, $d607
    ld bc, $d507
    ld bc, $d407
    ld bc, $d307
    ld bc, $d207
    ld bc, $d107
    ld bc, $d007
    ld bc, $cf07
    ld bc, $ce07
    ld bc, $cd07
    ld bc, $cc07
    ld bc, $cb07
    ld bc, $ca07
    ld bc, $c907
    ld bc, $c807
    ld bc, $c707
    ld bc, $c607
    ld bc, $c507
    ld bc, $c407
    ld bc, $c307
    ld bc, $c207
    ld bc, $c107
    ld bc, $c007
    ld bc, $bf07
    ld bc, $be07
    ld bc, $bd07
    ld bc, $bc07
    ld bc, $bb07
    ld bc, $ba07
    ld bc, $b907
    ld bc, $b807
    ld bc, $b707
    ld bc, $b607
    ld bc, $b507
    ld bc, $b407
    ld bc, $b307
    ld bc, $b207
    ld bc, $b107
    ld bc, $b007
    ld bc, $af07
    ld bc, $ae07
    ld bc, $ad07
    ld bc, $ac07
    ld bc, $ab07
    ld bc, $aa07
    ld bc, $a907
    ld bc, $a807
    ld bc, $a707
    ld bc, $a607
    ld bc, $a507
    ld bc, $a407
    ld bc, $a307
    ld bc, $a207
    ld bc, $a107
    ld bc, $a007
    ld bc, $9f07
    ld bc, $9e07
    ld bc, $9d07
    ld bc, $9c07
    ld bc, $9b07
    ld bc, $9a07
    ld bc, $9907
    ld bc, $9807
    ld bc, $9707
    ld bc, $9607
    ld bc, $9507
    ld bc, $9407
    ld bc, $9307
    ld bc, $9207
    ld bc, $9107
    ld bc, $9007
    ld bc, $8f07
    ld bc, $8e07
    ld bc, $8d07
    ld bc, $8c07
    ld bc, $8b07
    ld bc, $8a07
    ld bc, $8907
    ld bc, $8807
    ld bc, $8707
    ld bc, $8607
    ld bc, $8507
    ld bc, $8407
    ld bc, $8307
    ld bc, $8207
    ld bc, $8107
    ld bc, $8007
    ld bc, $7f07
    ld bc, $7e07
    ld bc, $7d07
    ld bc, $7c07
    ld bc, $7b07
    ld bc, $7a07
    ld bc, $7907
    ld bc, $7807
    ld bc, $7707
    ld bc, $7607
    ld bc, $7507
    ld bc, $7407
    ld bc, $7307
    ld bc, $7207
    ld bc, $7107
    ld bc, $7007
    ld bc, $6f07
    ld bc, $6e07
    ld bc, $6d07
    ld bc, $6c07
    ld bc, $6b07
    ld bc, $6a07
    ld bc, $6907
    ld bc, $6807
    ld bc, $6707
    ld bc, $6607
    ld bc, $6507
    ld bc, $6407
    ld bc, $6307
    ld bc, $6207
    ld bc, $6107
    ld bc, $6007
    ld bc, $5f07
    ld bc, $5e07
    ld bc, $5d07
    ld bc, $5c07
    ld bc, $5b07
    ld bc, $5a07
    ld bc, $5907
    ld bc, $5807
    ld bc, $5707
    ld bc, $5607
    ld bc, $5507
    ld bc, $5407
    ld bc, $5307
    ld bc, $5207
    ld bc, $5107
    ld bc, $5007
    ld bc, $4f07
    ld bc, $4e07
    ld bc, $4d07
    ld bc, $4c07
    ld bc, $4b07
    ld bc, $4a07
    ld bc, $4907
    ld bc, $4807
    ld bc, $4707
    ld bc, $4607
    ld bc, $4507
    ld bc, $4407
    ld bc, $4307
    ld bc, $4207
    ld bc, $4107
    ld bc, $4007
    ld bc, $3f07
    ld bc, $3e07
    ld bc, $3d07
    ld bc, $3c07
    ld bc, $3b07
    ld bc, $3a07
    ld bc, $3907
    ld bc, $3807
    ld bc, $3707
    ld bc, $3607
    ld bc, $3507
    ld bc, $3407
    ld bc, $3307
    ld bc, $3207
    ld bc, $3107
    ld bc, $3007
    ld bc, $2f07
    ld bc, $2e07
    ld bc, $2d07
    ld bc, $2c07
    ld bc, $2b07
    ld bc, $2a07
    ld bc, $2907
    ld bc, $2807
    ld bc, $2707
    ld bc, $2607
    ld bc, $2507
    ld bc, $2407
    ld bc, $2307
    ld bc, $2207
    ld bc, $2107
    ld bc, $2007
    ld bc, $1f07
    ld bc, $1e07
    ld bc, $1d07
    ld bc, $1c07
    ld bc, $1b07
    ld bc, $1a07
    ld bc, $1907
    ld bc, $1807
    ld bc, $1707
    ld bc, $1607
    ld bc, $1507
    ld bc, $1407
    ld bc, $1307
    ld bc, $1207
    ld bc, $1107
    ld bc, $1007
    ld bc, $0f07
    ld bc, $0e07
    ld bc, $0d07
    ld bc, $0c07
    ld bc, $0b07
    ld bc, $0a07
    ld bc, $0907
    ld bc, $0807
    ld bc, $0707
    ld bc, $0607
    ld bc, $0507
    ld bc, $0407
    ld bc, $0307
    ld bc, $0207
    ld bc, $0107
    ld bc, $0007
    ld bc, $ff06
    ld bc, $fd06
    ld bc, $fb06
    ld bc, $fa06
    ld bc, $f906
    ld bc, $f706
    ld bc, $f506
    ld bc, $f306
    ld bc, $f106
    ld bc, $ef06
    ld bc, $ed06
    ld bc, $eb06
    ld bc, $e906
    ld bc, $e706
    ld bc, $e506
    ld bc, $e306
    ld bc, $e106
    ld bc, $d906
    ld bc, $d706
    ld bc, $d506
    ld bc, $d306
    ld bc, $d106
    ld bc, $c906
    ld bc, $c706
    ld bc, $c506
    ld bc, $c306
    ld bc, $c106
    ld bc, $bf06
    ld bc, $bd06
    ld bc, $bb06
    ld bc, $b906
    ld bc, $b706
    ld bc, $b506
    ld bc, $b306
    ld bc, $b106
    ld bc, $af06
    ld bc, $ad06
    ld bc, $ab06
    ld bc, $a906
    ld bc, $a706
    ld bc, $a506
    ld bc, $a306
    ld bc, $a106
    ld bc, $9f06
    ld bc, $9d06
    ld bc, $9b06
    ld bc, $9906
    ld bc, $9706
    ld bc, $9506
    ld bc, $9306
    ld bc, $9106
    ld bc, $8f06
    ld bc, $8d06
    ld bc, $8b06
    ld bc, $8906
    ld bc, $8706
    ld bc, $8506
    ld bc, $8306
    ld bc, $8106
    ld bc, $7f06
    ld bc, $7d06
    ld bc, $7b06
    ld bc, $7906
    ld bc, $7706
    ld bc, $7506
    ld bc, $7306
    ld bc, $7106
    ld bc, $6f06
    ld bc, $6d06
    ld bc, $6b06
    ld bc, $6906
    ld bc, $6706
    ld bc, $6506
    ld bc, $6306
    ld bc, $6106
    ld bc, $5f06
    ld bc, $5d06
    ld bc, $5b06
    ld bc, $5906
    ld bc, $5706
    ld bc, $5506
    ld bc, $5306
    ld bc, $5106
    ld bc, $4f06
    ld bc, $4d06
    ld bc, $4b06
    ld bc, $4906
    ld bc, $4706
    ld bc, $4506
    ld bc, $4306
    ld bc, $4106
    ld bc, $3f06
    ld bc, $3d06
    ld bc, $3b06
    ld bc, $3906
    ld bc, $3706
    ld bc, $3506
    ld bc, $3306
    ld bc, $3106
    ld bc, $2f06
    ld bc, $2d06
    ld bc, $2b06
    ld bc, $2906
    ld bc, $2706
    ld bc, $2506
    ld bc, $2306
    ld bc, $2106
    ld bc, $1f06
    ld bc, $1d06
    ld bc, $1b06
    ld bc, $1906
    ld bc, $1706
    ld bc, $1506
    ld bc, $1306
    ld bc, $1106
    ld bc, $0f06
    ld bc, $0d06
    ld bc, $0b06
    ld bc, $0906
    ld bc, $0706
    ld bc, $0506
    ld bc, $0306
    ld bc, $0106
    ld bc, $ff05
    ld bc, $fd05
    ld bc, $fb05
    ld bc, $f905
    ld bc, $f705
    ld bc, $f505
    ld bc, $f305
    ld bc, $f105
    ld bc, $ef05
    ld bc, $ed05
    ld bc, $eb05
    ld bc, $e905
    ld bc, $e705
    ld bc, $e505
    ld bc, $e305
    ld bc, $e105
    ld bc, $df05
    ld bc, $dd05
    ld bc, $db05
    ld bc, $d905
    ld bc, $d705
    ld bc, $d505
    ld bc, $d305
    ld bc, $d105
    ld bc, $cf05
    ld bc, $cd05
    ld bc, $cb05
    ld bc, $c905
    ld bc, $c705
    ld bc, $c505
    ld bc, $c305
    ld bc, $c105
    ld bc, $bf05
    ld bc, $bd05
    ld bc, $bb05
    ld bc, $b905
    ld bc, $b705
    ld bc, $b505
    ld bc, $b305
    ld bc, $b105
    ld bc, $af05
    ld bc, $ad05
    ld bc, $ab05
    ld bc, $a905
    ld bc, $a705
    ld bc, $a505
    ld bc, $a305
    ld bc, $a105
    ld bc, $9f05
    ld bc, $9d05
    ld bc, $9b05
    ld bc, $9905
    ld bc, $9705
    ld bc, $9505
    ld bc, $9305
    ld bc, $9105
    ld bc, $8f05
    ld bc, $8d05
    ld bc, $8b05
    ld bc, $8905
    ld bc, $8705
    ld bc, $8505
    ld bc, $8305
    ld bc, $8105
    ld bc, $7f05
    ld bc, $7d05
    ld bc, $7b05
    ld bc, $7905
    ld bc, $7705
    ld bc, $7505
    ld bc, $7305
    ld bc, $7105
    ld bc, $6f05
    ld bc, $6d05
    ld bc, $6b05
    ld bc, $6905
    ld bc, $6705
    ld bc, $6505
    ld bc, $6305
    ld bc, $6105
    ld bc, $5f05
    ld bc, $5d05
    ld bc, $5b05
    ld bc, $5a05
    ld bc, $5905
    ld bc, $5705
    ld bc, $5505
    ld bc, $5305
    ld bc, $5105
    ld bc, $4f05
    ld bc, $4d05
    ld bc, $4b05
    ld bc, $4905
    ld bc, $4705
    ld bc, $4505
    ld bc, $4305
    ld bc, $4105
    ld bc, $f6ff
    ld bc, $37d6
    rrca
    inc [hl]
    dec b
    jr nc, jr_039_6b93

    ld h, b
    ld [bc], a
    db $d3
    jr nc, jr_039_6b96

jr_039_6b93:
    sub $30
    rrca

jr_039_6b96:
    db $d3
    jr nc, jr_039_6b9e

    sub $37
    ld a, [bc]
    inc [hl]
    ld a, [bc]

jr_039_6b9e:
    jr nc, jr_039_6baa

    ld [hl], $0f
    inc sp
    dec b
    cpl
    dec b
    ld h, b
    ld [bc], a
    db $d3
    cpl

jr_039_6baa:
    inc bc
    sub $2f
    rrca
    db $d3
    cpl
    dec b
    sub $36
    ld a, [bc]
    inc sp
    ld a, [bc]
    cpl
    dec b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    inc bc
    sub $37
    rrca
    inc [hl]
    dec b
    jr nc, jr_039_6bc9

    ld h, b
    ld [bc], a
    db $d3
    jr nc, jr_039_6bcc

jr_039_6bc9:
    sub $30
    ld a, [bc]

jr_039_6bcc:
    db $d3
    jr nc, jr_039_6bd9

    sub $37
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr nc, jr_039_6bdb

    ld h, b
    ld [bc], a
    db $d3

jr_039_6bd9:
    jr nc, jr_039_6bde

jr_039_6bdb:
    sub $2f
    dec b

jr_039_6bde:
    jr nc, jr_039_6be5

    ld sp, $6005
    ld [bc], a
    db $d3

jr_039_6be5:
    ld sp, $d603
    ld sp, $3305
    dec b
    inc [hl]
    dec b
    ld h, b
    ld [bc], a
    db $d3
    inc [hl]
    inc bc
    sub $33
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    ld h, b
    ld [bc], a
    db $d3
    dec [hl]
    inc bc
    sub $34
    dec b
    dec [hl]
    dec b
    ld [hl], $05
    ld h, b
    ld [bc], a
    db $d3
    ld [hl], $03
    sub $37
    rrca
    inc [hl]
    dec b
    jr nc, jr_039_6c17

    ld h, b
    ld [bc], a
    db $d3
    jr nc, jr_039_6c1a

jr_039_6c17:
    sub $30
    ld a, [bc]

jr_039_6c1a:
    db $d3
    jr nc, jr_039_6c27

    sub $37
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    jr nc, jr_039_6c29

    ld h, b
    ld [bc], a
    db $d3

jr_039_6c27:
    jr nc, jr_039_6c2c

jr_039_6c29:
    sub $36
    rrca

jr_039_6c2c:
    inc sp
    dec b
    cpl
    dec b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    inc bc
    sub $2f
    rrca
    db $d3
    cpl
    dec b
    sub $36
    ld a, [bc]
    inc sp
    ld a, [bc]
    cpl
    dec b
    ld h, b
    ld [bc], a
    db $d3
    cpl
    inc bc
    sub $37
    ld a, [bc]
    inc [hl]
    dec b
    ld h, b
    ld [bc], a
    db $d3
    inc [hl]
    dec b
    ld h, b
    ld [de], a
    sub $39
    ld a, [bc]
    ld [hl], $05
    ld h, b
    ld [bc], a
    db $d3
    ld [hl], $05
    ld h, b
    ld [de], a
    sub $3a
    dec b
    scf
    dec b
    dec sp
    dec b
    jr c, jr_039_6c6d

    inc a
    dec b
    add hl, sp
    dec b
    dec a

jr_039_6c6d:
    dec b
    ld a, [hl-]
    dec b
    ld a, $05
    dec sp
    dec b
    ccf
    dec b
    inc a
    dec b
    ld b, b
    dec b
    dec a
    dec b
    ld b, c
    dec b
    ld a, $05
    add hl, sp
    rrca
    ld [hl], $05
    ld [hl-], a
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld [hl-], a
    inc bc
    sub $32
    rrca
    db $d3
    ld [hl-], a
    dec b
    sub $32
    ld a, [bc]
    ld [hl], $0a
    add hl, sp
    ld a, [bc]
    jr c, @+$11

    dec [hl]
    dec b
    ld sp, $6005
    ld [bc], a
    db $d3
    ld sp, $d603
    ld sp, $d30a
    ld sp, $d60a
    ld sp, $350a
    ld a, [bc]
    jr c, jr_039_6cba

    add hl, sp
    rrca
    ld [hl], $05
    ld [hl-], a
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld [hl-], a

jr_039_6cba:
    inc bc
    sub $32
    inc d
    ld [hl], $0a
    add hl, sp
    ld a, [bc]
    ld [hl], $05
    ld h, b
    ld [bc], a
    db $d3
    ld [hl], $03
    sub $38
    dec b
    dec [hl]
    dec b
    ld sp, $6005
    ld [bc], a
    db $d3
    ld sp, $d603
    add hl, sp
    dec b
    ld [hl], $05
    ld [hl-], a
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld [hl-], a
    inc bc
    sub $3a
    dec b
    scf
    dec b
    inc sp
    dec b
    ld h, b
    ld [bc], a
    db $d3
    inc sp
    inc bc
    sub $3b
    dec b
    jr c, jr_039_6cf7

    inc [hl]
    dec b
    ld h, b
    ld [bc], a
    db $d3

jr_039_6cf7:
    inc [hl]
    inc bc
    sub $39
    rrca
    ld [hl], $05
    ld [hl-], a
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld [hl-], a
    inc bc
    sub $3e
    inc d
    dec a
    dec b
    ld a, $05
    ld b, b
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, b
    inc bc
    sub $3e
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld a, $03
    sub $3d
    rrca
    jr c, jr_039_6d25

    dec [hl]
    dec b
    ld h, b
    ld [bc], a
    db $d3

jr_039_6d25:
    dec [hl]
    inc bc
    sub $31
    ld d, $60
    inc bc
    dec a
    ld [bc], a
    db $d3
    dec a
    inc bc
    sub $3d
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    ccf
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ccf
    inc bc
    sub $3f
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ccf
    dec b
    ld h, b
    ld [de], a
    sub $40
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, b
    inc bc
    sub $40
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, b
    dec b
    ld h, b
    ld [de], a
    sub $44
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, h
    inc bc
    sub $43
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, e
    inc bc
    sub $42
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, d
    inc bc
    sub $41
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, c
    inc bc
    sub $40
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld b, b
    inc bc
    sub $3f
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ccf
    inc bc
    sub $3e
    dec b
    ld h, b
    ld [bc], a
    db $d3
    ld a, $03
    sub $3d
    dec b
    ld h, b
    ld [bc], a
    db $d3
    dec a
    inc bc
    cp $87
    ld l, e
    rst $38
    or $01
    sub $28
    dec b
    ld h, b
    dec b
    jr z, jr_039_6daf

    ld h, b
    dec b
    jr z, jr_039_6db3

    ld h, b

jr_039_6daf:
    dec b
    jr z, jr_039_6dc1

    ld h, b

jr_039_6db3:
    dec b
    jr z, jr_039_6dbb

    ld h, b
    dec b
    jr z, jr_039_6dbf

    ld h, b

jr_039_6dbb:
    dec b
    jr z, jr_039_6dc3

    ld h, b

jr_039_6dbf:
    dec b
    daa

jr_039_6dc1:
    dec b
    ld h, b

jr_039_6dc3:
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    rrca
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    jr z, jr_039_6de3

    ld h, b
    dec b
    jr z, jr_039_6de7

    ld h, b

jr_039_6de3:
    dec b
    jr z, jr_039_6deb

    ld h, b

jr_039_6de7:
    dec b
    jr z, jr_039_6df9

    ld h, b

jr_039_6deb:
    dec b
    jr z, jr_039_6df3

    ld h, b
    dec b
    jr z, jr_039_6df7

    ld h, b

jr_039_6df3:
    dec b
    jr z, jr_039_6dfb

    ld h, b

jr_039_6df7:
    dec b
    daa

jr_039_6df9:
    dec b
    ld h, b

jr_039_6dfb:
    dec b
    dec hl
    dec b
    db $d3
    daa
    dec b
    sub $2a
    dec b
    db $d3
    dec hl
    dec b
    sub $29
    dec b
    db $d3
    ld a, [hl+]
    dec b
    sub $28
    dec b
    db $d3
    add hl, hl
    dec b
    sub $27
    dec b
    db $d3
    jr z, jr_039_6e1e

    sub $26
    dec b
    db $d3
    daa

jr_039_6e1e:
    dec b
    sub $25
    dec b
    db $d3
    ld h, $05
    sub $28
    dec b
    ld h, b
    dec b
    jr z, jr_039_6e31

    ld h, b
    dec b
    jr z, jr_039_6e35

    ld h, b

jr_039_6e31:
    dec b
    jr z, jr_039_6e43

    ld h, b

jr_039_6e35:
    dec b
    jr z, jr_039_6e3d

    ld h, b
    dec b
    jr z, jr_039_6e41

    ld h, b

jr_039_6e3d:
    dec b
    jr z, jr_039_6e45

    ld h, b

jr_039_6e41:
    dec b
    daa

jr_039_6e43:
    dec b
    ld h, b

jr_039_6e45:
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    rrca
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    jr z, jr_039_6e65

    ld h, b
    dec b
    jr z, jr_039_6e69

    ld h, b

jr_039_6e65:
    dec b
    db $d3
    jr z, jr_039_6e6e

jr_039_6e69:
    ld h, b
    dec b
    pop de
    jr z, jr_039_6e73

jr_039_6e6e:
    ld h, b
    dec b
    sub $27
    dec b

jr_039_6e73:
    ld h, b
    dec b
    daa
    dec b
    ld h, b
    dec b
    db $d3
    daa
    dec b
    ld h, b
    dec b
    pop de
    daa
    dec b
    ld h, b
    dec b
    sub $28
    dec b
    ld h, b
    dec b
    jr z, jr_039_6e8f

    db $d3
    jr z, @+$07

    sub $29

jr_039_6e8f:
    dec b
    db $d3
    jr z, jr_039_6e98

    sub $29
    dec b
    db $d3
    add hl, hl

jr_039_6e98:
    dec b
    sub $2a
    dec b
    db $d3
    add hl, hl
    dec b
    sub $2a
    dec b
    db $d3
    ld a, [hl+]
    dec b
    sub $2b
    dec b
    db $d3
    ld a, [hl+]
    dec b
    sub $2b
    dec b
    db $d3
    dec hl
    dec b
    sub $2a
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    rrca
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    rrca
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    rrca
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    dec l
    dec b
    db $d3
    add hl, hl
    dec b
    sub $2c
    dec b
    db $d3
    dec l
    dec b
    sub $2b
    dec b
    db $d3
    inc l
    dec b
    sub $2a
    dec b
    db $d3
    dec hl
    dec b
    sub $29
    dec b
    db $d3
    ld a, [hl+]
    dec b
    sub $28
    dec b
    db $d3
    add hl, hl
    dec b
    sub $27
    dec b
    db $d3
    jr z, jr_039_6f38

    sub $2a
    dec b
    ld h, b
    dec b

jr_039_6f38:
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    rrca
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    rrca
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    add hl, hl
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    db $d3
    ld a, [hl+]
    dec b
    ld h, b
    dec b
    sub $2a
    dec b
    ld h, b
    dec b
    dec hl
    dec b
    ld h, b
    dec b
    dec hl
    dec b
    ld h, b
    dec b
    db $d3
    dec hl
    dec b
    ld h, b
    dec b
    sub $2b
    dec b
    jr z, jr_039_6f95

    add hl, hl
    dec b
    db $d3
    add hl, hl
    dec b

jr_039_6f95:
    sub $29
    dec b
    db $d3
    add hl, hl
    dec b
    sub $21
    dec b
    jr nz, jr_039_6fa5

    rra
    dec b
    ld e, $05
    dec e

jr_039_6fa5:
    dec b
    inc e
    dec b
    dec de
    dec b
    ld a, [de]
    dec b
    add hl, de
    dec b
    jr @+$07

    rla
    dec b
    ld d, $05
    cp $a3
    ld l, l
    rst $38
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    rla
    dec b
    or $0f
    rla
    dec b
    or $0e
    dec d
    dec b
    inc d
    dec b
    inc de
    dec b
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    inc de
    dec b
    or $0f
    inc de
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    ld [de], a
    dec b
    or $0f
    ld [de], a
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    ld h, b
    inc d
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    jr jr_039_7155

    or $0f
    jr jr_039_7159

    ld h, b

jr_039_7155:
    inc d
    or $0e
    dec de

jr_039_7159:
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    ld h, b
    inc d
    or $0e
    inc e
    dec b
    or $0f
    inc e
    dec b
    or $0e
    inc e
    dec b
    or $0f
    inc e
    dec b
    ld h, b
    inc d
    or $0e
    dec de
    dec b
    ld a, [de]
    dec b
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    ld a, [de]
    dec b
    add hl, de
    dec b
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    dec de
    dec b
    ld a, [de]
    dec b
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    dec e
    dec b
    or $0f
    dec e
    dec b
    or $0e
    inc e
    dec b
    or $0f
    inc e
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    add hl, de
    dec b
    or $0f
    add hl, de
    dec b
    or $0e
    jr @+$07

    or $0f
    jr @+$07

    or $0e
    rla
    dec b
    or $0f
    rla
    dec b
    or $0e
    dec de
    dec b
    ld a, [de]
    dec b
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec d
    dec b
    or $0f
    dec d
    dec b
    or $0e
    ld a, [de]
    dec b
    add hl, de
    dec b
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    ld a, [de]
    dec b
    or $0f
    ld a, [de]
    dec b
    or $0e
    inc d
    dec b
    or $0f
    inc d
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    or $0e
    dec de
    dec b
    or $0f
    dec de
    dec b
    ld h, b
    inc d
    or $0e
    inc e
    dec b
    or $0f
    inc e
    dec b
    or $0e
    inc e
    dec b
    or $0f
    inc e
    dec b
    ld h, b
    ld a, [bc]
    or $0e
    inc e
    dec b
    or $0f
    inc e
    dec b
    or $0e
    dec e
    dec b
    or $0f
    dec e
    dec b
    or $0e
    dec e
    dec b
    or $0f
    dec e
    dec b
    or $0e
    dec e
    dec b
    inc e
    dec b
    dec de
    dec b
    ld a, [de]
    dec b
    add hl, de
    dec b
    jr jr_039_7335

    rla
    dec b
    ld d, $05
    dec d

jr_039_7335:
    dec b
    inc d
    dec b
    inc de
    dec b
    ld [de], a
    dec b
    cp $b8
    ld l, a
    rst $38
    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    call nc, $0526
    ld h, $05
    ld h, $05
    ld h, $05
    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    call nc, $0526
    ld h, $05
    ld h, $05
    ld h, $05
    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    call nc, $0526
    ld h, $05
    ld h, $05
    ld h, $05
    call nc, $2ad3
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    ld a, [bc]
    jp nc, $0a2e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    jp nc, $052e

    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    db $d3
    ld a, [hl+]
    dec b
    cp $40
    ld [hl], e
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $20
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nz, @+$0e

    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $20
    ld [$0821], sp
    ld [hl+], a
    ld [$4823], sp
    ld sp, hl

jr_039_7552:
    ld bc, $00e0
    db $d3
    inc hl
    jr jr_039_7552

    pop hl
    ldh [rP1], a
    sub $2c
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc l
    inc c
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2c
    ld [$082d], sp
    ld l, $08
    cpl
    ld c, b
    ld sp, hl

jr_039_7574:
    ld bc, $00e0
    db $d3
    cpl
    jr jr_039_7574

    pop hl
    ldh [rP1], a
    sub $22
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld [hl+], a
    inc c
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $22
    ld [$0823], sp
    inc h
    ld [$4825], sp
    ld sp, hl

jr_039_7596:
    ld bc, $00e0
    db $d3
    dec h
    jr jr_039_7596

    pop hl
    ldh [rP1], a
    sub $2e
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld l, $0c
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $2e
    ld [$082f], sp
    jr nc, @+$0a

    ld sp, $f948
    ld bc, $00e0
    db $d3
    ld sp, $f918
    pop hl
    ldh [rP1], a
    sub $33
    ld [de], a
    ld [hl-], a
    ld b, $60
    inc bc
    db $d3
    ld [hl-], a
    ld b, $60
    inc bc
    pop de
    ld [hl-], a
    ld b, $60
    ld b, $d6
    ld sp, $3012
    ld b, $60
    inc bc
    db $d3
    jr nc, jr_039_75e3

    ld h, b
    inc bc
    pop de
    jr nc, jr_039_75e8

    ld h, b

jr_039_75e3:
    ld b, $d6
    inc sp
    ld b, $60

jr_039_75e8:
    inc bc
    db $d3
    inc sp
    inc bc
    sub $33
    ld b, $32
    ld b, $60
    inc bc
    db $d3
    ld [hl-], a
    ld b, $60
    inc bc
    pop de
    ld [hl-], a
    ld b, $60
    ld b, $d6
    ld sp, $6003
    inc bc
    sub $31
    inc bc
    ld h, b
    inc bc
    sub $31
    ld b, $30
    ld b, $60
    inc bc
    db $d3
    jr nc, jr_039_7617

    ld h, b
    inc bc
    pop de
    jr nc, jr_039_761c

    ld h, b

jr_039_7617:
    ld b, $d6
    inc [hl]
    ld [de], a
    inc sp

jr_039_761c:
    ld b, $d4
    jr nc, @+$08

    cpl
    ld b, $2e
    ld b, $2d
    ld b, $d6
    ld [hl-], a
    ld [de], a
    ld sp, $d406
    ld a, [hl+]
    ld b, $29
    ld b, $28
    ld b, $27
    ld b, $d6
    inc [hl]
    ld b, $60
    inc bc
    db $d3
    inc [hl]
    inc bc
    sub $34
    ld b, $33
    ld b, $d4
    ld sp, $3006
    ld b, $2f
    ld b, $2e
    ld b, $d6
    ld [hl-], a
    inc bc
    ld h, b
    inc bc
    sub $32
    inc bc
    ld h, b
    inc bc
    sub $32
    ld b, $31
    ld b, $d4
    ld a, [hl+]
    inc b
    dec hl
    inc b
    inc l
    inc b
    dec l
    inc b
    ld l, $04
    cpl
    inc b
    sub $32
    ld b, $60
    inc bc
    db $d3
    ld [hl-], a
    ld b, $60
    inc bc
    sub $3a
    ld b, $39
    jr nc, jr_039_76ab

    jr jr_039_76a9

    ld b, $30
    ld b, $2f
    ld b, $2e
    ld b, $2d
    ld b, $2c
    ld b, $2b
    ld b, $2a
    ld b, $29
    ld b, $28
    ld b, $27
    ld b, $26
    ld b, $25
    ld b, $24
    ld b, $23
    ld b, $22
    ld b, $fe
    ld a, [hl-]
    ld [hl], l
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $1a
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3

jr_039_76a9:
    ld a, [de]
    inc c

jr_039_76ab:
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $1a
    ld [$081b], sp
    inc e
    ld [$061d], sp
    rla
    ld b, $d0
    rla
    inc bc
    db $d3
    rla
    inc bc
    sub $1d
    ld b, $17
    ld b, $d0
    rla
    inc bc
    db $d3
    rla
    inc bc
    sub $1d
    ld b, $17
    ld b, $d0
    rla
    inc bc
    db $d3
    rla
    inc bc
    sub $1d
    ld b, $17
    ld b, $11
    ld b, $17
    ld b, $1d
    ld b, $17
    ld b, $11
    ld b, $1a
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, [de]
    inc c
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $1a
    ld [$081b], sp
    inc e
    ld [$061d], sp
    rla
    ld b, $d0
    rla
    inc bc
    db $d3
    rla
    inc bc
    sub $1d
    ld b, $17
    ld b, $d0
    rla
    inc bc
    db $d3
    rla
    inc bc
    sub $1d
    ld b, $17
    ld b, $d0
    rla
    inc bc
    db $d3
    rla
    inc bc
    sub $1d
    ld b, $17
    ld b, $11
    ld b, $17
    ld b, $1d
    ld b, $17
    ld b, $11
    ld b, $1c
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc e
    inc c
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $1c
    ld [$081d], sp
    ld e, $08
    rra
    ld b, $19
    ld b, $d0
    add hl, de
    inc bc
    db $d3
    add hl, de
    inc bc
    sub $1f
    ld b, $19
    ld b, $d0
    add hl, de
    inc bc
    db $d3
    add hl, de
    inc bc
    sub $1f
    ld b, $19
    ld b, $d0
    add hl, de
    inc bc
    db $d3
    add hl, de
    inc bc
    sub $1f
    ld b, $19
    ld b, $13
    ld b, $19
    ld b, $1f
    ld b, $19
    ld b, $13
    ld b, $1c
    inc a
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc e
    inc c
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $1c
    ld [$081d], sp
    ld e, $08
    rra
    ld b, $19
    ld b, $d0
    add hl, de
    inc bc
    db $d3
    add hl, de
    inc bc
    sub $1f
    ld b, $19
    ld b, $d0
    add hl, de
    inc bc
    db $d3
    add hl, de
    inc bc
    sub $1f
    ld b, $19
    ld b, $d0
    add hl, de
    inc bc
    db $d3
    add hl, de
    inc bc
    sub $1f
    ld b, $19
    ld b, $13
    ld b, $19
    ld b, $1f
    ld b, $25
    ld b, $2b
    ld b, $2e
    ld [de], a
    dec l
    ld b, $22
    ld b, $21
    ld b, $20
    ld b, $1f
    ld b, $2c
    ld [de], a
    dec hl
    ld b, $20
    ld b, $1f
    ld b, $1e
    ld b, $1d
    ld b, $2e
    ld b, $d0
    ld l, $03
    db $d3
    ld l, $03
    sub $2e
    ld b, $2d
    ld b, $22
    ld b, $21
    ld b, $20
    ld b, $1f
    ld b, $2c
    inc bc
    ret nc

    inc l
    inc bc
    sub $2c
    inc bc
    ret nc

    inc l
    inc bc
    sub $2c
    ld b, $2b
    ld b, $20
    ld b, $1f
    ld b, $1e
    ld b, $1d
    ld b, $2f
    ld [de], a
    ld l, $06
    inc hl
    ld b, $22
    ld b, $21
    ld b, $20
    ld b, $2d
    ld [de], a
    inc l
    ld b, $21
    ld b, $20
    ld b, $1f
    ld b, $1e
    ld b, $2f
    ld b, $d0
    cpl
    inc bc
    db $d3
    cpl
    inc bc
    sub $2f
    ld b, $2e
    ld b, $23
    ld b, $22
    ld b, $21
    ld b, $20
    ld b, $2d
    inc bc
    ret nc

    dec l
    inc bc
    sub $2d
    inc bc
    ret nc

    dec l
    inc bc
    sub $2d
    ld b, $2c
    ld b, $21
    inc b
    ld [hl+], a
    inc b
    inc hl
    inc b
    inc h
    inc b
    dec h
    inc b
    ld h, $04
    daa
    inc b
    jr z, jr_039_7844

    add hl, hl
    inc b
    ld a, [hl+]
    inc b

jr_039_7844:
    dec hl
    inc b
    inc l
    inc b
    dec l
    inc b
    ld l, $04
    cpl
    inc b
    jr nc, jr_039_7854

    ld sp, $3204
    inc b

jr_039_7854:
    inc sp
    inc b
    inc [hl]
    inc b
    dec [hl]
    inc b
    ld [hl], $04
    scf
    inc b
    jr c, @+$06

    sub $39
    ld h, b
    sub $3a
    inc b
    sub $3b
    inc b
    push de
    inc a
    inc b
    push de
    dec a
    inc b
    call nc, $043e
    call nc, $0440
    cp $a1
    db $76
    rst $38
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    ld c, $04
    or $0f
    ld c, $08
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    ld c, $04
    or $0f
    ld c, $02
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    ld c, $04
    or $0f
    ld c, $02
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    ld c, $04
    or $0f
    ld c, $08
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [$12f6], sp
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    ld c, $04
    or $0f
    ld c, $02
    or $12
    inc d
    inc b
    or $0f
    inc d
    ld [bc], a
    or $12
    ld c, $04
    or $0f
    ld c, $02
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    db $10
    inc b
    or $0f
    db $10
    ld [$12f6], sp
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    db $10
    inc b
    or $0f
    db $10
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    db $10
    inc b
    or $0f
    db $10
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    db $10
    inc b
    or $0f
    db $10
    ld [$12f6], sp
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    ld d, $04
    or $0f
    ld d, $08
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    db $10
    inc b
    or $0f
    db $10
    ld [bc], a
    or $12
    ld d, $04
    or $0f
    ld d, $02
    or $12
    db $10
    inc b
    or $0f
    db $10
    ld [bc], a
    or $12
    inc e
    ld [de], a
    dec de
    ld b, $f6
    rrca
    dec de
    jr @-$08

jr_039_7b44:
    ld [de], a
    ld a, [de]
    ld [de], a
    add hl, de
    ld b, $f6
    rrca
    add hl, de
    jr jr_039_7b44

    ld [de], a
    inc e
    ld b, $f6
    rrca
    inc e
    ld b, $f6

jr_039_7b56:
    ld [de], a
    inc e
    ld b, $1b
    ld b, $f6
    rrca
    dec de
    jr jr_039_7b56

    ld [de], a
    ld a, [de]
    inc bc
    or $0f
    ld a, [de]
    inc bc
    or $12
    ld a, [de]
    inc bc
    or $0f
    ld a, [de]
    inc bc
    or $12
    ld a, [de]
    ld b, $19
    ld b, $11
    ld b, $10
    ld b, $0f
    ld b, $0e
    ld b, $0d
    ld b, $0e
    ld b, $0f
    ld b, $10
    ld b, $11
    ld b, $10
    ld b, $0f
    ld b, $0d
    ld b, $0e
    ld b, $0f
    ld b, $10
    ld b, $12
    ld b, $13
    ld b, $14
    ld b, $15
    ld b, $16
    ld b, $17
    ld b, $18
    ld b, $19
    ld b, $17
    ld b, $16
    ld b, $15
    ld b, $14
    ld b, $13
    ld b, $14
    ld b, $15
    ld b, $14
    ld b, $13
    ld b, $12
    inc b
    inc de
    inc b
    inc d
    inc b
    dec d
    inc b
    ld d, $04
    rla
    inc b
    rrca
    ld b, $f6
    rrca
    rrca
    inc c
    or $12
    add hl, de
    ld b, $18
    jr nc, jr_039_7bf4

    ld b, $25
    ld b, $24
    ld b, $23
    ld b, $22
    ld b, $21
    ld b, $20
    ld b, $1f

jr_039_7bdc:
    ld b, $1e
    ld b, $1d
    ld b, $1c
    ld b, $1b
    ld b, $1a
    ld b, $19
    ld b, $18
    ld b, $17
    ld b, $16

jr_039_7bee:
    inc b
    dec d
    inc b
    inc d
    inc b
    rrca

jr_039_7bf4:
    inc b
    ld c, $04

jr_039_7bf7:
    dec bc
    inc b
    cp $79
    ld a, b
    rst $38
    push de
    inc h
    jr jr_039_7bdc

    jr z, jr_039_7c04

    db $d3

jr_039_7c04:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c0d

    db $d3

jr_039_7c0d:
    daa
    rla
    push de
    inc h
    jr jr_039_7bee

    jr z, jr_039_7c16

    db $d3

jr_039_7c16:
    daa
    rla
    push de
    inc h
    jr jr_039_7bf7

    jr z, jr_039_7c1f

    db $d3

jr_039_7c1f:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc

jr_039_7c2d:
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c3a

    db $d3

jr_039_7c3a:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c43

    db $d3

jr_039_7c43:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c4c

    db $d3

jr_039_7c4c:
    daa
    rla
    push de
    inc h
    jr jr_039_7c2d

    jr z, jr_039_7c55

    db $d3

jr_039_7c55:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc

jr_039_7c63:
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c70

    db $d3

jr_039_7c70:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c79

    db $d3

jr_039_7c79:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7c82

    db $d3

jr_039_7c82:
    daa
    rla
    push de
    inc h
    jr jr_039_7c63

    jr z, jr_039_7c8b

    db $d3

jr_039_7c8b:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc

jr_039_7c99:
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7ca6

    db $d3

jr_039_7ca6:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7caf

    db $d3

jr_039_7caf:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7cb8

    db $d3

jr_039_7cb8:
    daa
    rla
    push de
    inc h
    jr jr_039_7c99

    jr z, jr_039_7cc1

    db $d3

jr_039_7cc1:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7cdc

    db $d3

jr_039_7cdc:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7ce5

    db $d3

jr_039_7ce5:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7d00

    db $d3

jr_039_7d00:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7d09

    db $d3

jr_039_7d09:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7d24

    db $d3

jr_039_7d24:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7d2d

    db $d3

jr_039_7d2d:
    daa
    dec bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    push de
    inc h
    jr @-$23

    jr z, jr_039_7d48

    db $d3

jr_039_7d48:
    daa
    rla
    push de
    inc h
    jr @-$23

    jr z, jr_039_7d51

    db $d3

jr_039_7d51:
    daa
    dec b
    ret c

    jr z, jr_039_7d57

    db $d3

jr_039_7d57:
    daa
    dec b
    ret c

    jr z, jr_039_7d5d

    db $d3

jr_039_7d5d:
    daa
    dec b
    ret c

    jr z, jr_039_7d63

    db $d3

jr_039_7d63:
    daa
    dec b
    push de
    inc h
    ld [de], a
    ret c

    jr z, jr_039_7d6c

    db $d3

jr_039_7d6c:
    daa
    dec b
    sub $26
    inc c
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    ret c

    jr z, jr_039_7d87

    db $d3

jr_039_7d87:
    daa
    dec b
    sub $26
    inc c
    ret c

    jr z, jr_039_7d90

    db $d3

jr_039_7d90:
    daa
    dec b
    sub $26
    inc c
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    sub $28
    ld bc, $27d3
    inc bc
    ret c

    jr z, jr_039_7dab

    db $d3

jr_039_7dab:
    daa
    dec b
    ret c

    jr z, jr_039_7db1

    db $d3

jr_039_7db1:
    daa
    dec b
    ret c

    jr z, jr_039_7db7

    db $d3

jr_039_7db7:
    daa
    dec b
    ret c

    jr z, jr_039_7dbd

    db $d3

jr_039_7dbd:
    daa
    dec b
    sub $26
    inc c
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    dec b
    sub $28
    ld bc, $27d3
    ld bc, $28d6
    ld bc, $27d3
    ld bc, $28d7
    ld bc, $27d3
    ld bc, $28d8
    ld bc, $27d3
    ld bc, $28d9
    ld bc, $27d3
    ld bc, $28da
    ld bc, $27d3
    ld bc, $fdfe
    ld a, e
    rst $38
    ld sp, hl
    pop de
    ldh [rP1], a
    or $02
    push de
    ld c, d
    ld [bc], a
    call nc, $0247
    call nc, $0243
    ld b, c
    ld [bc], a
    call nc, $023e
    dec sp
    ld [bc], a
    call nc, $0239
    call nc, $0235
    call nc, $0232
    db $d3
    cpl
    ld [bc], a
    db $d3
    dec hl
    ld [bc], a
    db $d3
    add hl, hl
    ld bc, $0160
    or $01
    sub $2f
    inc b
    ld h, b
    ld bc, $2fd3
    inc bc
    sub $2f
    inc b
    ld h, b
    ld bc, $2fd3
    inc bc
    sub $30
    inc b
    ld h, b
    ld bc, $30d3
    inc bc
    sub $32
    db $10
    db $d3
    cpl
    inc b
    ld [hl-], a
    inc b
    sub $37
    db $10
    jr c, jr_039_7e6f

    add hl, sp
    inc b
    ld a, [hl-]
    inc c

jr_039_7e6f:
    db $d3
    ld [hl], $04
    sub $38
    inc b
    db $d3
    ld a, [hl-]
    inc b
    sub $36
    ld [$0431], sp
    db $d3
    ld [hl], $04
    sub $35
    inc b
    db $d3
    ld sp, $d604
    inc sp
    inc d
    dec [hl]
    ld [bc], a
    ld [hl], $02
    jr c, jr_039_7e9b

    db $d3
    inc sp
    inc b
    sub $38
    inc b
    ld a, [hl-]
    inc b
    dec sp
    ld [$0439], sp

jr_039_7e9b:
    db $d3
    dec sp
    inc b
    sub $37
    inc b
    db $d3
    add hl, sp
    inc b
    sub $3e
    ld [$043d], sp
    db $d3
    scf
    inc b
    sub $3b
    inc b
    db $d3
    ld a, $04
    sub $3d
    ld [$043b], sp
    db $d3
    dec a
    inc b
    sub $39
    inc b
    db $d3
    dec sp
    inc b
    sub $40
    ld [$043d], sp
    add hl, sp
    inc b
    jr c, jr_039_7ecd

    inc [hl]
    inc b
    cpl
    inc b

jr_039_7ecd:
    ld sp, $3304
    inc b
    ld [hl], $04
    dec sp
    inc b
    dec a
    inc b
    ccf
    inc b
    ld b, b
    inc b
    ccf
    inc b
    ld b, b
    inc b
    ccf
    inc b
    ld b, b
    inc b
    ld b, d
    daa
    ld h, b
    ld bc, $01f9
    ldh [rP1], a
    db $d3
    ld b, d
    inc b
    ld h, b
    ld bc, $42d2
    inc b
    ld h, b
    ld bc, $42d1
    inc b
    rst $38
    ret nc

    jr nz, @+$05

    ld sp, hl
    pop de
    ldh [rP1], a
    or $02
    db $d3
    ld c, d
    ld [bc], a
    jp nc, $0247

    ld b, e
    ld [bc], a
    ld b, c
    ld [bc], a
    jp nc, $023e

    dec sp
    ld [bc], a
    jp nc, $0239

    dec [hl]
    ld [bc], a
    jp nc, $0232

    jp nc, $022f

    jp nc, $012b

    db $d3

jr_039_7f20:
    ld [hl-], a

jr_039_7f21:
    ld [bc], a
    db $d3
    cpl
    ld [bc], a
    db $d3
    dec l
    ld [bc], a
    db $d3
    add hl, hl
    ld [bc], a
    db $d3
    ld h, $02
    jp nc, $0123

    ld h, b
    ld bc, $01f6
    call nc, $0c1a
    push de
    dec e
    inc c
    push de
    ld hl, $d60c
    inc hl
    inc c
    sub $26
    inc c
    push de
    ld a, [hl+]
    jr @-$28

    dec h
    jr jr_039_7f20

    inc h
    jr nz, jr_039_7f21

    inc h
    ld [$27d3], sp
    ld [bc], a
    db $d3
    inc l
    ld [bc], a
    db $d3
    jr nc, @+$04

    call nc, $0233
    sub $3e
    inc b
    sub $37
    inc b
    push de
    inc [hl]
    inc b
    push de
    ld [hl-], a
    inc b
    call nc, $042f
    db $d3
    dec hl
    inc b
    dec sp
    inc b
    db $d3
    scf
    inc b
    db $d3
    inc [hl]
    inc b
    db $d3
    ld [hl-], a
    inc b
    jp nc, $042f

    jp nc, $042b

    sub $40
    inc b
    sub $39
    inc b
    push de
    inc [hl]
    inc b
    push de
    ld sp, $d404
    dec l
    inc b
    db $d3
    jr z, jr_039_7f95

    db $d3
    dec a
    inc b
    db $d3

jr_039_7f95:
    add hl, sp
    inc b
    db $d3
    inc [hl]
    inc b
    db $d3
    ld sp, $d204
    dec l
    inc b
    jp nc, $0428

    sub $1e
    db $10
    db $d3
    ld e, $08
    sub $23
    inc b
    dec h
    inc b
    daa
    inc b
    ld a, [hl+]
    inc b
    cpl
    inc b
    ld sp, $3304
    jr z, @+$62

    ld bc, $33d3
    inc bc
    ld h, b
    ld bc, $33d2
    inc bc
    ld h, b
    ld bc, $33d1
    inc bc
    rst $38
    or $0e
    inc de
    ld h, b
    rrca
    jr nz, jr_039_7fe0

    ld [$0812], sp
    inc d
    jr nc, jr_039_7fe5

    jr nz, jr_039_7fe9

    ld [$0813], sp
    dec d
    jr nc, jr_039_7ff4

    db $10
    or $0f

jr_039_7fe0:
    rla
    ld [$0ef6], sp
    ld [de], a

jr_039_7fe5:
    db $10
    or $0f
    ld [de], a

jr_039_7fe9:
    ld [$0ef6], sp
    rla
    ld h, $f6
    rrca
    rla
    rlca
    rst $38
    rst $38

jr_039_7ff4:
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

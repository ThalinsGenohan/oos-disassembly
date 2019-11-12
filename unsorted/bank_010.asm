; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX

Call_010_4000:
    ld e, $c9
    ld a, [de]

Call_010_4003:
    add $02
    and $1c
    rrca
    ld hl, $401a
    rst $10
    ld e, $cb
    ld a, [de]
    add [hl]
    ld b, a
    ld e, $cd
    inc hl
    ld a, [de]
    add [hl]
    ld c, a
    jp $14a5


    ei
    nop
    ei
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    ei
    nop
    ei
    ei
    ei

Call_010_402a:
    call Call_010_4003
    ret z

    jr jr_010_4034

Call_010_4030:
    call Call_010_4000
    ret z

jr_010_4034:
    add $01
    ret c

    dec a
    jp $14cd


Call_010_403b:
    ld h, d
    ld l, $c4
    ld a, [hl]
    or a
    jr z, jr_010_405c

    ld l, $eb
    ld a, [hl]
    or a
    jr z, jr_010_404f

    rlca
    jr nc, jr_010_404e

    inc [hl]
    jr jr_010_404f

jr_010_404e:
    dec [hl]

jr_010_404f:
    dec l
    bit 7, [hl]
    jr nz, jr_010_406c

    dec l
    ld a, [hl]
    or a
    jr z, jr_010_406f

    ld c, $00
    ret


jr_010_405c:
    ld hl, $43c9
    ld e, $3f
    call $008a
    ld e, $fe
    ld a, $08
    ld [de], a
    ld c, $00
    ret


jr_010_406c:
    ld c, $01
    ret


jr_010_406f:
    ld c, $02
    ret


Call_010_4072:
    call $149b
    add $01
    ret z

    call $14ca
    ret c

    or d
    ret


Call_010_407e:
    ld h, d
    ld l, $cb
    ld b, [hl]
    ld l, $cd
    ld c, [hl]
    call Call_010_4099
    ld a, e
    rrca
    ld hl, $401a
    rst $10
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl]
    add c
    ld c, a
    call $14a5
    inc a
    ret


Call_010_4099:
    ld l, $c9
    ld a, [hl]
    ld e, a
    and $07
    ret z

    ld a, e
    and $18
    add $04
    ld e, a
    ret


Call_010_40a7:
    ld h, d
    ld l, $c6
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Jump_010_40af:
    ld h, d
    ld l, $e4
    bit 7, [hl]
    ret z

    res 7, [hl]
    call $28cf
    ld bc, $ff20
    call $2358
    ld l, $c6
    ld [hl], $20
    ld l, $d0
    ld [hl], $0a
    ld l, $c9
    ld a, [hl]
    xor $10
    ld [hl], a
    ret


    call Call_010_40a7
    jp z, $3eba

    ld c, $0e
    call $1f04
    call $28bf
    jp $1fdb


Call_010_40e0:
    ld e, $c9
    ld a, [de]
    add $04
    and $18
    rrca
    ld hl, $40fe
    rst $10
    ld e, $cb
    ld a, [hl+]
    add b
    ld [de], a
    ld e, $cd
    ld a, [hl+]
    add c
    ld [de], a
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, sp-$05
    ld b, $03
    ld [bc], a
    ld [$0603], sp
    ld [$0605], sp
    inc bc
    ld [bc], a
    ld hl, sp+$03
    ld b, $62
    ld l, $c5
    inc [hl]
    ret


    jr z, jr_010_411f

    cp $02
    jp z, Jump_010_4223

    ld e, $c4
    ld a, $03
    ld [de], a

jr_010_411f:
    call Call_010_4219
    ld e, $c4
    ld a, [de]
    rst $00
    ld l, $41
    add e
    ld b, c
    pop bc
    ld b, c
    and $41
    ld a, [$cc3a]
    or a
    jp nz, $3eba

    ld e, $c2
    ld a, [de]
    cp $0f
    jr nz, jr_010_414c

    call $042f
    cp $e0
    jp c, Jump_010_4316

    ld a, [$cc50]
    cp $81
    jp z, $3eba

jr_010_414c:
    call Call_010_429b
    ld h, d
    ld l, $d4
    ld a, $a0
    ld [hl+], a
    ld [hl], $fe
    ld l, $c4
    inc [hl]
    ld a, [$cc50]
    and $20
    jr z, jr_010_4177

    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $c6
    ld [hl], $f0
    call $21cb
    jr nc, jr_010_4177

    rrca
    jr nc, jr_010_4177

    ld e, $f4
    ld a, $01
    ld [de], a

jr_010_4177:
    ld e, $c2
    ld a, [de]
    call Call_010_42f5
    ld e, $c2
    ld a, [de]
    jp $28cf


    call Call_010_4030
    call nc, Call_010_430f
    ld c, $20
    call $232b
    jr c, jr_010_4195

    call Call_010_437b
    jr nc, jr_010_41a0

jr_010_4195:
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $f0
    call $1e0c

jr_010_41a0:
    call Call_010_4434
    jr c, jr_010_41a9

    call Call_010_439c
    ret c

jr_010_41a9:
    ld e, $cf
    ld a, [de]
    rlca
    ret c

    ld bc, $0500
    call $1423
    ld hl, $4484
    call $1ddd
    ret nc

    ld c, a
    ld b, $14
    jp Jump_010_446e


    call Call_010_4348
    call Call_010_4417
    jp c, Jump_010_41d9

    call $42d0
    jp c, $3eba

    ld e, $c2
    ld a, [de]
    or a
    jr nz, jr_010_41a0

    jp Jump_010_43d5


Jump_010_41d9:
    ld h, d
    ld l, $f1
    ld a, [hl+]
    ld c, [hl]
    ld l, $cb
    ld [hl+], a
    inc l
    ld [hl], c
    jp $3eba


    ld e, $c5
    ld a, [de]
    or a
    call z, Call_010_4206
    call $1c35
    jp c, Jump_010_4223

    ld a, $00
    call $211e
    ld a, [hl+]
    or a
    jr z, jr_010_4203

    ld e, $f0
    ld a, [de]
    cp [hl]
    jp z, $222f

jr_010_4203:
    jp $3eba


Call_010_4206:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $cf
    ld [hl], $00
    ld a, $01
    call $211e
    ld a, [hl]
    ld e, $f0
    ld [de], a
    jp $1e15


Call_010_4219:
    ld e, $e4
    ld a, [de]
    rlca
    ret nc

    call $1c07
    ret nc

    pop hl

Jump_010_4223:
    ld a, [$cc34]
    or a
    jr nz, jr_010_4258

    ld e, $c2
    ld a, [de]
    add a
    ld hl, $425b
    rst JumpTable
    ld a, [hl+]
    or a
    jr z, jr_010_4258

    ld b, a
    ld a, $26
    call $236b
    ld a, [hl+]
    jr z, jr_010_4246

    or a
    jr z, jr_010_4247

    call $236b
    jr nz, jr_010_4247

jr_010_4246:
    inc hl

jr_010_4247:
    ld c, [hl]
    ld a, b
    call $16eb
    ld e, $c2
    ld a, [de]
    cp $0e
    jr nz, jr_010_4258

    call $1956
    set 5, [hl]

jr_010_4258:
    jp $3eba


    add hl, hl
    dec h
    jr @+$32

    add hl, hl
    dec h
    inc b
    ld [$2428], sp
    ld bc, $2802
    inc h
    inc bc
    inc b
    inc bc
    nop
    inc b
    ld [$0020], sp
    dec b
    ld a, [bc]
    ld hl, $0500
    ld a, [bc]
    ld [hl+], a
    nop
    dec b
    ld a, [bc]
    inc hl
    nop
    dec b
    ld a, [bc]
    inc h
    nop
    dec b
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    daa
    ld bc, $3702
    daa
    inc b
    dec b
    scf
    daa
    dec bc
    inc c
    jr z, jr_010_42bd

    inc c
    dec c

Call_010_429b:
    ld e, $c2
    ld a, [de]
    ld hl, $42b0
    rst JumpTable
    ld e, $dd
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    dec e
    ld a, [hl]
    ld [de], a
    dec e
    ld [de], a
    jp $1dfa


    nop
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    nop
    ld b, $05
    db $10
    inc b
    ld [de], a
    ld [bc], a
    inc d

jr_010_42bd:
    inc bc
    ld d, $01
    jr jr_010_42c3

    ld a, [de]

jr_010_42c3:
    nop
    inc e
    nop
    ld e, $00
    inc c
    ld bc, $020c
    inc c
    inc bc
    ld [$fa04], sp
    nop
    call z, $0faa
    ret nc

    ld h, d
    ld l, $f3
    ld a, [hl]
    or a
    jr z, jr_010_42e3

    dec [hl]
    ret nz

    ld l, $e4
    set 7, [hl]

jr_010_42e3:
    call Call_010_40a7
    jr z, jr_010_42f3

    ld a, [hl]
    cp $3c
    ret nc

    ld l, $da
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


jr_010_42f3:
    scf
    ret


Call_010_42f5:
    ld h, d
    or a
    jr z, jr_010_4303

    ld e, $c3
    ld a, [de]
    rrca
    ret nc

    ld l, $d0
    ld [hl], $19
    ret


jr_010_4303:
    ld l, $cf
    ld a, [hl]
    ld [hl], $00
    ld l, $cb
    add [hl]
    ld [hl], a
    jp Jump_010_43e2


Call_010_430f:
    call $14b5
    ret c

    jp $1fdb


Jump_010_4316:
    ld c, a
    ld a, [$ccf4]
    or a
    jr nz, jr_010_433d

    ld b, $2d
    ld a, [$cc50]
    cp $81
    jr z, jr_010_432e

    ld a, c
    and $07
    ld hl, $4340
    rst $10
    ld b, [hl]

jr_010_432e:
    call $2e08
    jr nz, jr_010_433d

    ld [hl], b
    call $21fd
    ld e, $c3
    ld a, [de]
    ld l, $82
    ld [hl], a

jr_010_433d:
    jp $3eba


    db $10
    db $10
    db $10
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c

Call_010_4348:
    ld a, [$cc50]
    and $20
    ret z

    ld e, $c2
    ld a, [de]
    or a
    ret z

    ld a, $20
    call $1f24
    jr c, jr_010_4371

    ld e, $f4
    ld a, [de]
    rrca
    jr nc, jr_010_4371

    ld b, $01
    ld a, [hl]
    bit 7, a
    jr z, jr_010_436a

    ld b, $ff
    inc a

jr_010_436a:
    cp $01
    ret c

    ld [hl], b
    dec l
    ld [hl], $00

jr_010_4371:
    ld e, $cb
    ld a, [de]
    cp $b0
    ret c

    pop hl
    jp $3eba


Call_010_437b:
    ld e, $c2
    ld a, [de]
    or a
    jr z, jr_010_438d

    ld e, $d5
    ld a, [de]
    and $80
    ret nz

    ld h, d
    ld l, $e4
    set 7, [hl]
    ret


jr_010_438d:
    ld e, $cf
    ld a, [de]
    cp $fa
    ret nc

    ld h, d
    ld l, e
    ld [hl], $fa
    ld l, $f3
    ld [hl], $05
    ret


Call_010_439c:
    call $21cb
    jr c, jr_010_43ab

    ld e, $f4
    ld a, [de]
    rrca
    ret nc

    ld b, $03
    xor a
    jr jr_010_43d1

jr_010_43ab:
    rrca
    jr c, jr_010_43c0

    rrca
    ld b, $04
    jr nc, jr_010_43b8

    call $24bd
    jr jr_010_43bb

jr_010_43b8:
    call $24af

jr_010_43bb:
    call $3eba
    scf
    ret


jr_010_43c0:
    ld b, $03
    ld a, [$cc50]
    and $20
    jr z, jr_010_43b8

    ld e, $f4
    ld a, [de]
    rrca
    ccf
    ret nc

    ld a, $01

jr_010_43d1:
    ld [de], a
    jp $24af


Jump_010_43d5:
    ld h, d
    ld l, $c7
    dec [hl]
    jr z, jr_010_43e2

    call Call_010_4000
    inc a
    jp nz, $1fdb

Jump_010_43e2:
jr_010_43e2:
    call $042f
    and $3e
    add $08
    ld e, $c7
    ld [de], a
    call $042f
    and $03
    ld hl, $4413
    rst $10
    ld e, $d0
    ld a, [hl]
    ld [de], a
    call $042f
    and $1e
    ld h, d
    ld l, $c9
    ld [hl], a
    and $0f
    ret z

    bit 4, [hl]
    ld l, $db
    ld a, [hl]
    res 5, a
    jr nz, jr_010_4410

    set 5, a

jr_010_4410:
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [bc]
    inc d
    ld e, $28

Call_010_4417:
    ld l, $f1
    ld h, d
    xor a
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
    ld e, $c9
    call $1fe7
    xor a
    ret


Call_010_4434:
    ld e, $c2
    ld a, [de]
    sub $0c
    cp $03
    ret nc

    ld a, [$cc79]
    or a
    ret z

    call $1e5a
    ld c, a
    ld h, d
    ld l, $cb
    ld a, [$d00b]
    sub [hl]
    jr nc, jr_010_4450

    cpl
    inc a

jr_010_4450:
    ld b, a
    ld l, $cd
    ld a, [$d00d]
    sub [hl]
    jr nc, jr_010_445b

    cpl
    inc a

jr_010_445b:
    cp b
    jr nc, jr_010_445f

    ld a, b

jr_010_445f:
    and $f0
    swap a
    bit 3, a
    jr z, jr_010_4469

    ld a, $07

jr_010_4469:
    ld hl, $447c
    rst $10
    ld b, [hl]

Jump_010_446e:
    push bc
    ld a, c
    call Call_010_402a
    pop bc
    ret c

    ld e, $c9
    call $1fe7
    scf
    ret


    ld h, h
    ld h, h
    ld d, b
    inc a
    jr z, jr_010_44a0

    inc d
    ld a, [bc]
    sbc b
    ld b, h
    sbc b
    ld b, h
    sbc b
    ld b, h
    sbc b
    ld b, h
    sub b
    ld b, h
    sbc b
    ld b, h
    ld d, h
    nop
    ld d, l
    ld [$1056], sp
    ld d, a
    jr jr_010_4499

jr_010_4499:
    ld e, $c4
    ld a, [de]
    or a
    call z, Call_010_44c8

jr_010_44a0:
    call $28bf
    ld a, [$cc00]
    rrca
    jr c, jr_010_44af

    ld e, $dc
    ld a, [de]
    xor $01
    ld [de], a

jr_010_44af:
    ld e, $e1
    ld a, [de]
    or a
    ret z

    call Call_010_44d6
    ld a, [de]
    rlca
    jp c, $3eba

    xor a
    call $16ba
    jp z, $3eba

    ld b, $01
    jp $216e


Call_010_44c8:
    inc a
    ld [de], a
    ld e, $ed
    ld a, [de]
    rlca
    ld a, $01
    call c, $28cf
    jp $1e27


Call_010_44d6:
    ld e, $c7
    ld a, [de]
    rrca
    ret nc

    jp $249f


    cp $01
    jr nz, jr_010_44f9

    ld a, [$cc31]
    ld h, d
    ld l, $c3
    xor [hl]
    ld [$cc31], a
    ld l, $db
    ld a, [hl]
    and $01
    inc a
    ld [hl+], a
    ld [hl], a
    ld a, $7e
    jp $0c74


jr_010_44f9:
    ld e, $c4
    ld a, [de]
    or a
    ret nz

    inc a
    ld [de], a
    call $2070
    ld h, $cf
    ld [hl], $0a
    ld h, d
    ld l, $c2
    ld a, [hl+]
    and $07
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    ld [hl], a
    ld a, [$cc31]
    and [hl]
    ld a, $01
    jr z, jr_010_451d

    inc a

jr_010_451d:
    ld l, $db
    ld [hl+], a
    ld [hl], a
    jp $1e27


    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_454a

    ld e, $e1
    ld a, [de]
    inc a
    jp nz, $28bf

    call $249f
    jr nz, jr_010_4547

    ld e, $c2
    ld a, [de]
    or a
    jr z, jr_010_4547

    xor a
    call $16ba
    jr z, jr_010_4547

    ld b, $01
    jp $216e


jr_010_4547:
    jp $3eba


jr_010_454a:
    inc a
    ld [de], a
    ld e, $c2
    ld a, [de]
    or a
    ld a, $79
    call nz, $0c74
    jp $1e15


    jr z, jr_010_456c

    ld a, [$cc32]
    ld h, d
    ld l, $c2
    xor [hl]
    ld [$cc32], a
    call Call_010_457f
    ld a, $7e
    jp $0c74


jr_010_456c:
    ld e, $c4
    ld a, [de]
    or a
    ret nz

    ld h, d
    ld l, e
    inc [hl]
    ld l, $cf
    ld [hl], $fa
    call $2054
    ld e, $f0
    ld [de], a
    ret


Call_010_457f:
    ld l, $f0
    ld c, [hl]
    ld a, [$cc49]
    or a
    jr z, jr_010_4597

    ld hl, $cc32
    ld e, $c2
    ld a, [de]
    and [hl]
    ld a, $0a
    jr z, jr_010_4594

    inc a

jr_010_4594:
    jp $3a52


jr_010_4597:
    ld a, $b0
    call $3a52
    ld b, $cf
    xor a
    ld [bc], a
    call $1956
    set 6, [hl]
    jp $3eba


    jr z, jr_010_45ba

    ld h, d
    ld l, $c2
    ld a, [hl]
    cp $02
    jr z, jr_010_45ba

    ld l, $c7
    ld a, [hl-]
    ld [hl], a
    ld l, $c4
    ld [hl], $02

jr_010_45ba:
    ld e, $c2
    ld a, [de]
    rst $00
    call nz, $ef45
    ld b, l
    dec [hl]
    ld b, [hl]
    ld e, $c4
    ld a, [de]
    rst $00
    adc $45
    pop de
    ld b, l
    jp nc, $3e45

    ld bc, $c912
    ld hl, $cca9
    inc [hl]
    ld a, $72
    call $0c74
    call $2054
    ld c, a
    ld a, [$cc49]
    or a
    ld a, $a1
    jr z, jr_010_45e9

    ld a, $09

jr_010_45e9:
    call $3a52
    jp $3eba


    ld e, $c4
    ld a, [de]
    rst $00
    adc $45
    pop de
    ld b, l
    ei
    ld b, l
    rla
    ld b, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    res 7, [hl]
    ld l, $c7
    ld a, [hl-]
    ld [hl], a
    ld hl, $cca9
    inc [hl]
    ld a, $72
    call $0c74
    call $2054
    ld c, a
    ld a, $09
    jr jr_010_4664

    ld a, [$cc00]
    and $03
    ret nz

    call Call_010_40a7
    ret nz

    ld l, $e4
    set 7, [hl]
    ld l, $c4
    ld [hl], $01
    ld hl, $cca9
    dec [hl]
    call $2054
    ld c, a
    ld a, $08
    jr jr_010_4664

    ld e, $c4
    ld a, [de]
    rst $00
    adc $45
    ld b, e
    ld b, [hl]
    ld d, d
    ld b, [hl]
    ld h, a
    ld b, [hl]
    ld [hl], e
    ld b, [hl]
    call Call_010_4682
    cp $09
    ret z

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $f0
    ret


    call Call_010_40a7
    jp nz, Jump_010_468e

    ld l, e
    inc [hl]
    ld hl, $cca9
    dec [hl]
    call $2054
    ld c, a
    ld a, $08

jr_010_4664:
    jp $3a52


    call Call_010_4682
    cp $08
    ret z

    ld e, $c4
    ld a, $04
    ld [de], a
    ret


    ld a, $01
    ld [de], a
    ld hl, $cca9
    inc [hl]
    call $2054
    ld c, a
    ld a, $09
    jr jr_010_4664

Call_010_4682:
    ld a, $0b
    call $2122
    ld b, [hl]
    ld l, $cd
    ld c, [hl]
    jp $1435


Jump_010_468e:
    call Call_010_4682
    cp $09
    ret nz

    ld e, $c4
    ld a, $01
    ld [de], a
    ret


    ld e, $c4
    ld a, [de]
    or a
    call z, $46f2
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [de]
    cp [hl]
    jp nz, $3eba

    ld a, $0b
    call $211e
    ld e, $c3
    ld a, [de]
    ld b, a
    ld c, $00
    call $2232
    xor a
    ld [de], a
    ld a, [hl]
    or a
    jp z, $1e39

    ld e, $da
    ld a, [de]
    xor $80
    ld [de], a
    ld e, $c2
    ld a, [de]
    add a
    ld bc, $46e6
    call $007e
    ld a, [hl]
    cp $e0
    jr nc, jr_010_46e2

    inc bc
    cp $c0
    jr nc, jr_010_46e2

    inc bc
    cp $a0
    jr nc, jr_010_46e2

    inc bc

jr_010_46e2:
    ld a, [bc]
    jp $28cf


    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0001
    inc bc
    ld [bc], a
    ld bc, $3c00
    ld [de], a
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [hl]
    ld [de], a
    jp $1e30


    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cd00]
    and $01
    ret z

    ld e, $c4
    ld a, [de]
    or a
    call z, Call_010_475c
    ld h, d
    ld l, $c7
    ld b, [hl]
    ld a, [$cca9]
    cp [hl]
    ret z

    ld [hl-], a
    or a
    jp z, $31d4

    cp [hl]
    jp z, $31fb

    ld a, [$c4ae]
    cp $f7
    ret z

    ld a, [$cca9]
    cp b
    jp nc, $31f7

    jp $31d0


Call_010_4734:
    push hl
    push bc
    ld c, l
    call $3ea7
    jr nz, jr_010_4758

    ld [hl], $06
    inc l
    ld e, l
    ld a, [de]
    ld [hl], a
    ld e, $cb
    ld a, [de]
    and $f0
    ld l, a
    ld e, $cd
    ld a, [de]
    and $f0
    swap a
    or l
    ld l, $c7
    ld [hl], a
    ld l, $cb
    call $2077

jr_010_4758:
    pop bc
    pop hl
    inc c
    ret


Call_010_475c:
    inc a
    ld [de], a
    ld e, $c6
    ld a, [de]
    ld c, a
    ld hl, $cf00
    ld b, $b0

jr_010_4767:
    ld a, [hl]
    cp $08
    call z, Call_010_4734
    inc l
    dec b
    jr nz, jr_010_4767

    ld e, $c6
    ld a, c
    ld [de], a
    call $2054
    ld e, $cb
    ld [de], a
    ret


    ld e, $c4
    ld a, [de]
    or a
    call z, Call_010_4829
    ld a, [$ccc8]
    or a
    ret nz

    ld hl, $d000
    call $1d18
    jr c, jr_010_47eb

    ld hl, $dd00
    call $1d18
    jr c, jr_010_47f0

    call $1432
    sub $0c
    cp $02
    jr nc, jr_010_47ca

    call Call_010_40a7
    ret nz

    ld l, $f0
    bit 0, [hl]
    ret z

    ld e, $f0
    ld a, [de]
    or a
    ret z

    call $2054
    ld c, a
    ld a, $0c
    call $3a52
    ld e, $c3
    ld a, [de]
    ld hl, $ccba
    call $0218
    ld e, $f0
    xor a
    ld [de], a
    ld a, $87
    jp $0c74


jr_010_47ca:
    ld h, d
    ld l, $c2
    bit 7, [hl]
    jr z, jr_010_47e5

    ld l, $f0
    bit 0, [hl]
    ret nz

    ld l, $c6
    ld [hl], $1c
    call $2054
    ld c, a
    ld b, $0d
    call $1414
    jr jr_010_4804

jr_010_47e5:
    call Call_010_4817
    jp $3eba


jr_010_47eb:
    ld a, [$d00f]
    or a
    ret nz

jr_010_47f0:
    ld e, $c2
    ld a, [de]
    rlca
    jr nc, jr_010_47e5

jr_010_47f6:
    ld e, $f0
    ld a, [de]
    or a
    ret nz

    call $2054
    ld c, a
    ld a, $0d
    call $3a52

jr_010_4804:
    ld e, $c3
    ld a, [de]
    ld hl, $ccba
    call $020e
    ld e, $f0
    ld a, $01
    ld [de], a
    ld a, $87
    jp $0c74


Call_010_4817:
    call $2054
    ld c, a
    ld b, $0d
    call $1414
    call $1432
    cp $0c
    jr z, jr_010_47f6

    jr jr_010_4804

Call_010_4829:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c2
    ld a, [hl+]
    and $07
    ld [hl-], a
    ret


    cp $01
    jr nz, jr_010_4854

    ld h, d
    ld l, $db
    ld a, [hl+]
    ld [hl], a
    ld l, $c3
    ld a, [$cc31]
    xor [hl]
    ld [$cc31], a
    ld l, $db
    ld a, [hl]
    dec a
    jr nz, jr_010_484d

    ld a, $02

jr_010_484d:
    ld [hl+], a
    ld [hl], a
    ld a, $7e
    call $0c74

jr_010_4854:
    ld e, $c4
    ld a, [de]
    sub $08
    jr c, jr_010_4866

    rst $00
    add b
    ld c, b
    adc h
    ld c, b
    sbc b
    ld c, b
    and h
    ld c, b
    or e
    ld c, b

jr_010_4866:
    ld hl, $6b30
    call $2d7a
    ld h, d
    ld l, $c3
    ld b, $01
    ld a, [$cc31]
    and [hl]
    jr z, jr_010_4878

    inc b

jr_010_4878:
    ld a, b
    ld l, $db
    ld [hl+], a
    ld [hl], a
    jp $1e27


    ld h, d
    ld e, $f2
    ld a, [de]
    ld l, $cb
    cp [hl]
    jp c, $1fdb

    jr jr_010_48ae

    ld h, d
    ld e, $cd
    ld a, [de]
    ld l, $f3
    cp [hl]
    jp c, $1fdb

    jr jr_010_48ae

    ld h, d
    ld e, $cb
    ld a, [de]
    ld l, $f2
    cp [hl]
    jp c, $1fdb

    jr jr_010_48ae

    ld h, d
    ld e, $f3
    ld a, [de]
    ld l, $cd
    cp [hl]
    jp c, $1fdb

jr_010_48ae:
    ld a, [de]
    ld [hl], a
    jp $2d8e


    ld h, d
    ld l, $c6
    dec [hl]
    ret nz

    jp $2d8e


    ld e, $c4
    ld a, [de]
    or a
    call z, Call_010_4910
    call Call_010_40a7
    ret nz

    ld l, $c9
    ld a, [hl]
    ld hl, $4904
    rst JumpTable
    ld e, $c7
    ld a, [de]
    rrca
    ld a, [hl+]
    jr nc, jr_010_48d5

    ld a, [hl]

jr_010_48d5:
    ld b, a
    ld e, $cb
    ld a, [de]
    ld c, a
    push bc
    call $1414
    pop bc
    ld a, b
    call $3a52
    ld a, $70
    call $0c74
    ld h, d
    ld l, $c6
    ld [hl], $08
    inc l
    dec [hl]
    jp z, $3eba

    ld a, [hl]
    rrca
    ret c

    ld l, $c9
    ld a, [hl]
    ld bc, $490c
    call $006d
    ld a, [bc]
    ld l, $cb
    add [hl]
    ld [hl], a
    ret


    ld l, e
    ld l, d
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, d
    ld l, a
    ld l, l
    ldh a, [rSB]
    db $10
    rst $38

Call_010_4910:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $08
    ret


    jp nz, $3eba

    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    add hl, hl
    ld c, c
    adc l
    ld c, c
    add $49
    add $49
    ld a, [de]
    or a
    jr z, jr_010_4984

    ld a, $00
    call $211e
    ld a, [hl]
    or a
    jp z, $3eba

    ld e, $c9
    ld a, l
    or $09
    ld l, a
    ld a, [hl]
    ld [de], a
    call $222f
    call Call_010_40a7
    jr nz, jr_010_4952

    ld [hl], $0f
    ld e, $c9
    ld a, [de]
    ld b, a
    ld e, $01
    call Call_010_496b

jr_010_4952:
    ld h, d
    ld l, $c7
    dec [hl]
    ret nz

    ld [hl], $06
    ld l, $c3
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ld c, a
    ld l, $c9
    ld b, [hl]
    ld e, $02
    call Call_010_496b
    ld e, $03

Call_010_496b:
    call $3ea7
    ret nz

    ld [hl], $0e
    inc l
    ld [hl], e
    inc l
    ld [hl], c
    call $21fd
    ld l, $c9
    ld [hl], b
    ld l, $d6
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    ret


jr_010_4984:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    inc [hl]
    inc l
    inc [hl]
    ret


    ld a, [de]
    or a
    jr z, jr_010_49a9

jr_010_4991:
    call $1c35
    jr c, jr_010_499f

    call $1fc6
    call $1475
    ret z

    jr jr_010_49a6

jr_010_499f:
    ld a, $3b
    call $211e
    ld [hl], $ff

jr_010_49a6:
    jp $3eba


jr_010_49a9:
    inc a
    ld [de], a
    ld e, $c9
    ld a, [de]
    add $04
    and $08
    rrca
    rrca
    ld hl, $49c2
    rst $10
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    jp Jump_010_49ea


    ld [bc], a
    ld bc, $0201
    ld a, [de]
    or a
    jr z, jr_010_49d1

    call Call_010_40a7
    jr nz, jr_010_4991

    jr jr_010_49a6

jr_010_49d1:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $04
    ld l, $c3
    ld a, [hl]
    inc a
    add a
    dec l
    bit 0, [hl]
    jr nz, jr_010_49e4

    cpl
    inc a

jr_010_49e4:
    ld l, $c9
    add [hl]
    and $1f
    ld [hl], a

Jump_010_49ea:
    ld h, d
    ld l, $c9
    ld c, [hl]
    ld b, $64
    ld a, $04
    jp $210a


    jr z, jr_010_4a21

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $f0
    ld l, $e4
    res 7, [hl]
    ld a, $02
    call Call_010_4a4f
    call $042f
    rrca
    jr nc, jr_010_4a1c

    call $3ea7
    jr nz, jr_010_4a1c

    ld [hl], $01
    inc l
    ld e, l
    ld a, [de]
    ld [hl], a
    call $21fd

jr_010_4a1c:
    ld b, $00
    call $24af

jr_010_4a21:
    ld e, $c4
    ld a, [de]
    rst $00
    cpl
    ld c, d
    inc sp
    ld c, d
    inc [hl]
    ld c, d
    ld b, l
    ld c, d
    ld e, b
    ld c, d
    ld a, $01
    ld [de], a
    ret


    ret


    ld a, [$cc00]
    rrca
    ret nc

    call Call_010_40a7
    ret nz

    ld [hl], $0c
    ld l, e
    inc [hl]
    ld a, $03
    jr jr_010_4a4f

    call Call_010_40a7
    ret nz

    ld [hl], $08
    ld l, e
    inc [hl]
    ld a, $04

Call_010_4a4f:
jr_010_4a4f:
    push af
    call $2054
    ld c, a
    pop af
    jp $3a52


    call Call_010_40a7
    ret nz

    ld l, e
    ld [hl], $01
    ld l, $e4
    set 7, [hl]
    ret


    jr z, jr_010_4a70

    cp $02
    jp z, Jump_010_4b0e

    ld e, $c4
    ld a, $02
    ld [de], a

jr_010_4a70:
    ld e, $c4
    ld a, [de]
    rst $00
    ld a, [hl]
    ld c, d
    and l
    ld c, d
    and [hl]
    ld c, d
    and a
    ld c, d
    cp [hl]
    ld c, d
    ld a, $01
    ld [de], a
    ld e, $c2
    ld a, [de]
    ld hl, $4a9b
    rst JumpTable
    ld e, $dd
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    dec e
    ld a, [hl]
    ld [de], a
    dec e
    ld [de], a
    ld a, $01
    call $28cf
    jp $1e0c


    ld [de], a
    ld [bc], a
    inc d
    inc bc
    ld d, $01
    jr jr_010_4aa4

    ld a, [de]

jr_010_4aa4:
    nop
    ret


    ret


    call $1bee
    jr c, jr_010_4ab5

    call $1fdb
    ld c, $20
    call $232b
    ret nc

jr_010_4ab5:
    ld h, d
    ld l, $c4
    ld [hl], $04
    inc l
    ld [hl], $00
    ret


    ld e, $c5
    ld a, [de]
    rst $00
    add $4a
    add hl, bc
    ld c, e
    ld e, $c2
    ld a, [de]
    ld l, a
    add $20
    call $1717
    jr c, jr_010_4af2

    ld e, $c5
    ld a, $01
    ld [de], a
    ld a, l
    ld hl, $4ae5
    rst $10
    ld c, [hl]
    ld b, $00
    call $184b
    ld c, $06
    jr jr_010_4aea

    add hl, hl
    add hl, hl
    dec hl
    inc l
    ld a, [hl+]

Call_010_4aea:
jr_010_4aea:
    ld e, $c2
    ld a, [de]
    add $20
    jp $16eb


jr_010_4af2:
    ld c, $06
    call Call_010_4aea

jr_010_4af7:
    ld a, $00
    call $2122
    ld a, [hl]
    or a
    jr z, jr_010_4b06

    ld a, l
    add $03
    ld l, a
    ld [hl], $01

jr_010_4b06:
    jp $3eba


    call $1832
    jr jr_010_4af7

Jump_010_4b0e:
    ld h, d
    ld l, $e4
    res 7, [hl]
    ld a, [$cfc0]
    or a
    ret nz

    ld a, $19
    call $1717
    jr c, jr_010_4b29

    ld a, d
    ld [$cfc0], a
    ld bc, $0035
    jp $184b


jr_010_4b29:
    ld bc, $fec0
    call $2358
    ld l, $e9
    ld a, $03
    ld [hl], a
    ld l, $c4
    ld [hl+], a
    ld [hl], $00
    inc l
    ld [hl], $02
    ld l, $d0
    ld [hl], $28
    call $1e5a
    ld e, $c9
    ld [de], a
    ret


    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    ld d, e
    ld c, e
    adc [hl]
    ld c, e
    ld sp, $1a4c
    or a
    jr z, jr_010_4b74

    ld c, $16
    call $232b
    jp c, $3eba

    jp nz, $1fdb

    call $042f
    and $03
    dec a
    ret z

    ld b, a
    ld e, $c9
    ld a, [de]
    add b
    and $1f

jr_010_4b70:
    ld [de], a
    jp Jump_010_4c69


jr_010_4b74:
    ld bc, $fd80
    call $2358
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    call $1e15
    call $042f
    and $0f
    add $08
    ld e, $c9
    jr jr_010_4b70

    ld a, [de]
    rst $00
    sbc h
    ld c, e
    add $4b
    ld [c], a
    ld c, e
    db $ed
    ld c, e
    ld [$244c], sp
    ld c, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $e6
    ld a, [hl]
    add a
    ld [hl+], a
    ld [hl+], a
    sla [hl]
    ld l, $d0
    ld [hl], $05
    ld l, $d4
    ld a, $00
    ld [hl+], a
    ld [hl], $fc
    call $042f
    and $1f
    ld e, $c9
    ld [de], a
    ld a, $01
    call $28cf
    jp $1e15


    ld h, d
    ld l, $cb
    ld e, $cf
    ld a, [de]
    add [hl]
    add $08
    cp $f8
    ld c, $10
    jp c, $1f04

    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $1e
    call $1e39
    jr jr_010_4c40

    call Call_010_40a7
    ret nz

    ld [hl], $10
    ld l, e
    inc [hl]
    jp $1df1


    call $28bf
    ld h, d
    ld l, $cf
    inc [hl]
    inc [hl]
    ret nz

    call $21e0
    jp c, $3eba

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $d4
    xor a
    ld [hl+], a
    ld [hl], a
    jp $1e27


    call $28bf
    ld c, $16
    call $1f04
    jp nz, $1fdb

    ld l, $c4
    inc [hl]
    ld l, $dd
    ld [hl], $26
    ld a, $03
    call $28cf
    ld a, $81
    jp $0c74


    ld e, $e1
    ld a, [de]
    inc a
    jp z, $3eba

    call Call_010_4c7c
    jp $28bf


    ld a, [de]
    rst $00
    dec a
    ld c, h
    ld [c], a
    ld c, e
    db $ed
    ld c, e
    ld [$244c], sp
    ld c, h
    ld a, $01
    ld [de], a

jr_010_4c40:
    call $042f
    ld b, a
    ld hl, $ffa8
    ld e, $cb
    and $70
    add $08
    add [hl]
    ld [de], a
    cpl
    inc a
    and $fe
    ld e, $cf
    ld [de], a
    ld l, $aa
    ld e, $cd
    ld a, b
    and $07
    inc a
    swap a
    add $08
    add [hl]
    ld [de], a
    ld a, $02
    jp $28cf


Jump_010_4c69:
    ld b, $14
    cp $0d
    jr c, jr_010_4c77

    ld b, $0a
    cp $14
    jr c, jr_010_4c77

    ld b, $14

jr_010_4c77:
    ld a, b
    ld e, $d0
    ld [de], a
    ret


Call_010_4c7c:
    dec a
    ld hl, $4c89
    rst $10
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    inc b
    add hl, bc
    ld b, $0b
    add hl, bc
    inc c
    ld a, [bc]
    dec c
    dec bc
    ld c, $1e
    call nz, $b71a
    call z, Call_010_4cd6
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [de]
    cp [hl]
    jr nz, jr_010_4cd3

    ld c, $10
    call $232b
    ld a, $0f
    call $211e
    ld e, $cf
    ld a, [de]
    ld [hl], a
    call $222f
    ld c, h
    call Call_010_40a7
    jp nz, $28bf

    ld h, c
    ld l, $a9
    ld e, $f1
    ld a, [de]
    ld [hl], a
    or a
    jr nz, jr_010_4ccb

    ld l, $a4
    res 7, [hl]

jr_010_4ccb:
    ld l, $ab
    ld [hl], $00
    ld l, $ae
    ld [hl], $01

jr_010_4cd3:
    jp $3eba


Call_010_4cd6:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $3b
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [hl]
    ld [de], a
    ld e, $f1
    ld l, $a9
    ld a, [hl]
    ld [de], a
    ld [hl], $01
    call $222f
    jp $1e15


    jr z, jr_010_4d0a

    ld e, $ea
    ld a, [de]
    cp $9a
    jr nz, jr_010_4d0a

    ld h, d
    ld l, $c4
    ld a, [hl]
    cp $02
    jr nc, jr_010_4d0a

    inc [hl]
    ld l, $c6
    ld [hl], $32

jr_010_4d0a:
    ld e, $c4
    ld a, [de]
    rst $00
    ld d, $4d
    daa
    ld c, l
    jr z, jr_010_4d61

    ld e, [hl]
    ld c, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $ff
    set 5, [hl]
    call $2070
    ld h, $cf
    ld [hl], $00
    jp $1e30


    ret


    call Call_010_40a7
    jr nz, jr_010_4d36

    ld [hl], $1e
    ld l, e
    inc [hl]
    ld a, $01
    jp $28cf


jr_010_4d36:
    ld a, [hl]
    and $07
    ret nz

    ld a, [hl]
    rrca
    rrca
    sub $02
    ld hl, $4d52
    rst $10
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call $3ac6
    ret nz

    ld [hl], $84
    inc l
    ld [hl], $05
    jp $2215


    ld sp, hl
    dec b
    ld b, $ff
    db $fc
    ld a, [$0702]
    nop
    ld a, [$02ff]
    call Call_010_40a7

jr_010_4d61:
    jr nz, jr_010_4d6a

    ld l, e
    ld [hl], $01
    xor a
    jp $28cf


jr_010_4d6a:
    ld a, [hl]
    cp $16
    ret nz

    ld l, $c2
    ld c, [hl]
    ld b, $39
    jp $184b


    ld e, $c2
    jr z, jr_010_4d8b

    cp $02
    jp z, Jump_010_4e83

    ld h, d
    ld l, $c2
    set 7, [hl]
    ld l, $c4
    ld [hl], $03
    inc l
    ld [hl], $00

jr_010_4d8b:
    ld e, $c4
    ld a, [de]
    rst $00
    sbc c
    ld c, l
    and $4d
    ldh [rNR42], a
    cp $4d
    cpl
    ld c, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e6
    ld a, $06
    ld [hl+], a
    ld [hl], a
    call $041a
    ld b, a
    and $70
    swap a
    ld hl, $4dce
    rst $10
    ld e, $d0
    ld a, [hl]
    ld [de], a
    ld a, b
    and $0e
    ld hl, $4dd6
    rst $10
    ld e, $d4
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    call $041a
    ld e, $c9
    and $1f
    ld [de], a
    call $4f23
    jp $1e0c


    inc d
    ld e, $28
    ld [hl-], a
    inc a
    ld b, [hl]
    ld d, b
    ld e, d
    add b
    cp $40
    cp $00
    cp $c0
    db $fd
    add b
    db $fd
    ld b, b
    db $fd
    nop
    db $fd
    ret nz

    db $fc
    call $1fdb
    call Call_010_4f66
    ld c, $20
    call $232b
    jr nc, jr_010_4dfb

    ld h, d
    ld l, $e4
    set 7, [hl]
    ld l, $c4
    inc [hl]

jr_010_4dfb:
    jp $21e0


    inc e
    ld a, [de]
    or a
    jr nz, jr_010_4e16

    ld h, d
    ld l, e
    inc [hl]
    ld l, $cf
    ld [hl], $00
    ld a, $01
    call $211e
    ld a, [hl]
    ld e, $f0
    ld [de], a
    call $1e15

jr_010_4e16:
    call $1c07
    jp c, Jump_010_4e83

    ld a, $00
    call $211e
    ld a, [hl+]
    or a
    jr z, jr_010_4e2c

    ld e, $f0
    ld a, [de]
    cp [hl]
    jp z, $222f

jr_010_4e2c:
    jp $3eba


    inc e
    ld a, [de]
    rst $00
    ld a, [hl-]
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld h, c
    ld c, [hl]
    ld a, e
    ld c, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld a, [$d128]
    dec a
    ld l, $d0
    ld [hl], $14
    jr z, jr_010_4e49

    ld [hl], $28

jr_010_4e49:
    ld hl, $d128
    ld a, [hl]
    or a
    jr z, jr_010_4e6c

    call Call_010_4f92
    ret nz

    ld l, $c5
    inc [hl]
    ld l, $e4
    res 7, [hl]
    ld bc, $ffc0
    jp $2358


    ld c, $00
    call $1f04
    ld e, $cf
    ld a, [de]
    cp $f7
    ret nc

jr_010_4e6c:
    ld a, $01
    ld [$d125], a
    ld h, d
    ld l, $c5
    ld [hl], $03
    ld l, $c3
    ld [hl], $00
    ret


    ld e, $c3
    ld a, [de]
    rlca
    ret nc

    jp $3eba


Jump_010_4e83:
    ld a, [$cca4]
    bit 0, a
    ret nz

    ld e, $c2
    ld a, [de]
    and $7f
    ld hl, $4fad
    rst $10
    ld a, [$d12a]
    add [hl]
    ld [$d12a], a
    ld a, [de]
    and $7f
    jr z, jr_010_4ed1

    add a
    ld hl, $4eeb
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld a, $26
    call $236b
    ld a, [hl+]
    jr z, jr_010_4eb6

    cp $ff
    jr z, jr_010_4eb7

    call $236b
    jr nz, jr_010_4eb7

jr_010_4eb6:
    inc hl

jr_010_4eb7:
    ld c, [hl]
    ld a, b
    cp $2d
    jr nz, jr_010_4ec0

    call $17b9

jr_010_4ec0:
    cp $2f
    jr nz, jr_010_4ecb

    ld a, $5e
    call $0c74
    ld a, $2f

jr_010_4ecb:
    call $16eb
    jp $3eba


jr_010_4ed1:
    ld bc, $2b02
    call $271b
    ret nz

    ld l, $4b
    ld a, [$d00b]
    ld [hl+], a
    inc l
    ld a, [$d00d]
    ld [hl], a
    ld hl, $c641
    set 7, [hl]
    jp $3eba


    dec hl
    rst $38
    ld bc, $3401
    rst $38
    ld bc, $2d01
    rst $38
    ld bc, $2d01
    rst $38
    ld [bc], a
    ld [bc], a
    cpl
    rst $38
    ld bc, $2001
    rst $38
    dec b
    ld a, [bc]
    ld hl, $05ff
    ld a, [bc]
    ld [hl+], a
    rst $38
    dec b
    ld a, [bc]
    inc hl
    rst $38
    dec b
    ld a, [bc]
    inc h
    rst $38
    dec b
    ld a, [bc]
    inc bc
    rst $38
    inc b
    ld [$2529], sp
    inc b

Jump_010_4f1a:
    ld [$2428], sp
    inc bc
    inc b
    jr z, jr_010_4f45

    ld bc, $1e02
    jp nz, Jump_010_4f1a

    add a
    add c
    ld hl, $4f3c
    rst $10
    ld e, $dd
    ld a, [de]
    add [hl]
    ld [de], a
    inc hl
    dec e
    ld a, [hl+]
    ld [de], a
    dec e
    ld [de], a
    ld a, [hl]
    jp $28cf


    db $10
    ld [bc], a
    db $10
    ld a, [bc]
    ld bc, $0800
    nop
    nop

jr_010_4f45:
    ld [$0000], sp
    nop
    ld [bc], a
    rrca
    ld [de], a
    ld [bc], a
    dec b
    inc d
    inc bc
    ld b, $16
    ld bc, $1807
    ld bc, $1a08
    nop
    ld [$0410], sp
    inc b
    ld [bc], a
    dec b
    ld bc, $0506
    inc bc
    inc b
    nop
    ld [bc], a

Call_010_4f66:
    ld h, d
    ld l, $cb
    ld a, [hl]
    cp $f0
    jr c, jr_010_4f6f

    xor a

jr_010_4f6f:
    cp $20
    jr nc, jr_010_4f77

    ld [hl], $20
    jr jr_010_4f7d

jr_010_4f77:
    cp $78
    jr c, jr_010_4f7d

    ld [hl], $78

jr_010_4f7d:
    ld l, $cd
    ld a, [hl]
    cp $f0
    jr c, jr_010_4f85

    xor a

jr_010_4f85:
    cp $08
    jr nc, jr_010_4f8c

    ld [hl], $08
    ret


jr_010_4f8c:
    cp $98
    ret c

    ld [hl], $98
    ret


Call_010_4f92:
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    push bc
    call $1e62
    ld e, $c9
    ld [de], a
    call $1fdb
    pop bc
    ld h, d
    ld l, $cb
    ld a, [hl+]
    cp b
    ret nz

    inc l
    ld a, [hl]
    cp c
    ret


    inc a
    rrca
    ld a, [bc]
    ld [$0506], sp
    dec b
    dec b
    dec b
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $2800
    dec l
    ld e, $c2
    ld a, [de]
    add a
    ld hl, $5081
    rst JumpTable
    ld e, $ea
    ld a, [de]
    and $1f
    call $0205
    jr z, jr_010_4feb

    call $1ce6
    jr nc, jr_010_4feb

    ld h, d
    ld l, $c4
    ld [hl], $02
    ld l, $e4
    res 7, [hl]
    ld l, $c2
    ld a, [hl]
    or a
    jr z, jr_010_4feb

    ld a, $2a
    call $211e
    ld [hl], $ff

jr_010_4feb:
    ld e, $c4
    ld a, [de]
    rst $00
    push af
    ld c, a
    ld c, $50
    rra
    ld d, b
    ld a, $01
    ld [de], a
    ld a, $26
    call $211e
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    call $222f
    ld e, $f0
    ld l, $41
    ld a, [hl]
    ld [de], a
    ret


    call Call_010_5015
    ret z

    jp $3eba


Call_010_5015:
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [de]
    cp [hl]
    ret


    call Call_010_5015
    jp nz, $3eba

    ld e, $c5
    ld a, [de]
    rst $00
    cpl
    ld d, b
    ld c, a
    ld d, b
    ld h, [hl]
    ld d, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $28
    ld a, $1a
    call $211e
    set 6, [hl]
    ld e, $c2
    ld a, [de]
    or a
    ld a, $10
    call nz, $1e5a
    ld e, $c9
    ld [de], a
    ld bc, $fec0
    jp $2358


    ld c, $18
    call $232b
    jr z, jr_010_5061

    call $1fdb
    ld a, $00
    call $211e
    jp $21fd


jr_010_5061:
    ld e, $c5
    ld a, $02
    ld [de], a
    ld c, $18
    call $232b
    jr nc, jr_010_5073

    call Call_010_5073
    jp $3eba


Call_010_5073:
jr_010_5073:
    call $14b5
    call nc, $1fdb
    ld a, $00
    call $211e
    jp $21fd


    ldh a, [$03]
    nop
    nop
    ldh a, [$03]
    nop
    nop
    jr z, jr_010_509d

    ld e, $ea
    ld a, [de]
    cp $80
    jp z, $3eba

    ld h, d
    ld l, $c4
    ld a, [hl]
    cp $02
    jr nc, jr_010_509d

    ld [hl], $02

jr_010_509d:
    ld e, $c4
    ld a, [de]
    rst $00
    xor c
    ld d, b
    or e
    ld d, b
    ret


    ld d, b
    rst $08
    ld b, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    jp $1e1e


    call $2142
    jp nc, $3eba

    call Call_010_4072
    jr nc, jr_010_50c6

    jp z, $3eba

    ld e, $c4
    ld a, $02
    ld [de], a

jr_010_50c6:
    jp $1fdb


    ld a, $03
    ld [de], a
    xor a
    jp Jump_010_40af


    jp nz, $3eba

    ld e, $c4
    ld a, [de]
    rst $00
    db $dd
    ld d, b
    db $eb
    ld d, b
    dec bc
    ld d, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $08
    ld l, $d0
    ld [hl], $3c
    jp $1e1e


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld l, $c2
    bit 0, [hl]
    jr z, jr_010_5104

    ldh a, [$b0]
    ld b, a
    ldh a, [$b1]
    ld c, a
    call $1e62
    ld e, $c9
    ld [de], a
    ret


jr_010_5104:
    call $1e52
    ld e, $c9
    ld [de], a
    ret


    ld a, [$cc00]
    and $03
    jr nz, jr_010_5118

    ld e, $dc
    ld a, [de]
    xor $07
    ld [de], a

jr_010_5118:
    call $1fdb
    call $2142
    jp nc, $3eba

    jp $28bf


    jr z, jr_010_512f

    ld e, $ea
    ld a, [de]
    cp $80
    jr z, jr_010_519a

    jr jr_010_519d

jr_010_512f:
    ld e, $c2
    ld a, [de]
    rst $00
    scf
    ld d, c
    ld h, [hl]
    ld d, c
    ld e, $c4
    ld a, [de]
    rst $00
    ld b, c
    ld d, c
    ld e, l
    ld d, c
    rst $08
    ld b, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    ld l, $cb
    ld b, [hl]
    ld l, $cd
    ld c, [hl]
    call Call_010_40e0
    ld e, $c9
    ld a, [de]
    swap a
    rlca
    call $28cf
    jp $1e1e


jr_010_515d:
    call Call_010_4072
    jr nc, jr_010_5197

    jr z, jr_010_519a

    jr jr_010_519d

    ld e, $c4
    ld a, [de]
    rst $00
    ld [hl], d
    ld d, c
    adc c
    ld d, c
    ld e, l
    ld d, c
    rst $08
    ld b, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $08
    ld l, $d0
    ld [hl], $50
    ld e, $c9
    ld a, [de]
    swap a
    rlca
    call $28cf
    jp $1e1e


    call Call_010_40a7
    jr nz, jr_010_5192

    ld l, e
    inc [hl]
    jr jr_010_515d

jr_010_5192:
    call Call_010_407e
    jr z, jr_010_519a

jr_010_5197:
    jp $1fdb


jr_010_519a:
    jp $3eba


jr_010_519d:
    ld e, $c2
    ld a, [de]
    or a
    ld a, $02
    jr z, jr_010_51a7

    ld a, $03

jr_010_51a7:
    ld e, $c4
    ld [de], a
    ld a, $04
    jp Jump_010_40af


    jr z, jr_010_51bb

    ld e, $ea
    ld a, [de]
    res 7, a
    cp $04
    jp c, $3eba

jr_010_51bb:
    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_51d7

    call $2142
    jp nc, $3eba

    call $1fdb
    ld a, [$cc00]
    and $03
    ret nz

    ld e, $dc
    ld a, [de]
    xor $07
    ld [de], a
    ret


jr_010_51d7:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $78
    ld l, $cb
    ld b, [hl]
    ld l, $cd
    ld c, [hl]
    call Call_010_40e0
    ld e, $c9
    ld a, [de]
    swap a
    rlca
    call $28cf
    jp $1e1e


    jr z, jr_010_51fe

    ld e, $ea
    ld a, [de]
    cp $80
    jr z, jr_010_5226

    jr jr_010_5240

jr_010_51fe:
    ld e, $c4
    ld a, [de]
    rst $00
    ld [$1852], sp
    ld d, d
    add hl, hl
    ld d, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $3c
    call $1e52
    ld e, $c9
    ld [de], a
    jp $1e1e


    call Call_010_4072
    jr c, jr_010_523e

    call $1fdb
    call $2142
    jp c, $28bf

jr_010_5226:
    jp $3eba


    call Call_010_40a7
    jr z, jr_010_5226

    ld c, $0e
    call $1f04
    call $1fdb
    ld a, [$cc00]
    rrca
    ret c

    jp $28bf


jr_010_523e:
    jr z, jr_010_5226

jr_010_5240:
    ld e, $c4
    ld a, $02
    ld [de], a
    xor a
    jp Jump_010_40af


    jr z, jr_010_526c

    ld e, $ea
    ld a, [de]
    cp $80
    jr z, jr_010_526c

    cp $8a
    jr z, jr_010_526c

    ld a, $2b
    call $211e
    ld a, [hl]
    or a
    jr nz, jr_010_5263

    ld e, $eb
    ld a, [de]
    ld [hl], a

jr_010_5263:
    ld e, $ec
    ld a, [de]
    inc l
    ld [hl+], a
    ld e, $ed
    ld a, [de]
    ld [hl], a

jr_010_526c:
    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_52c4

    ld h, d
    ld l, $e4
    set 7, [hl]
    call Call_010_52d6
    jp nz, $3eba

jr_010_527d:
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld l, $89
    ld a, [hl]
    add $04
    and $18
    rrca
    ldh [$8b], a
    ld l, $a1
    add [hl]
    add [hl]
    ld hl, $52b0
    rst $10
    ld e, $cb
    ld a, [hl+]
    add b
    ld [de], a
    ld e, $cd
    ld a, [hl]
    add c
    ld [de], a
    ldh a, [$8b]
    rrca
    and $02
    ld hl, $52c0
    rst $10
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld hl, sp+$04
    or $04
    inc b
    rlca
    inc b
    add hl, bc
    rlca
    db $fc
    add hl, bc
    db $fc
    inc b
    ld sp, hl
    inc b
    rst $30
    dec b
    ld [bc], a
    ld [bc], a
    dec b

jr_010_52c4:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $fe
    ld [hl], $04
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [hl]
    ld [de], a
    jr jr_010_527d

Call_010_52d6:
    ld a, $01
    call $211e
    ld e, $f0
    ld a, [de]
    cp [hl]
    ret nz

    ld l, $b0
    bit 0, [hl]
    jr nz, jr_010_52f7

    ld l, $a9
    ld a, [hl]
    or a
    jr z, jr_010_52f7

    ld l, $ae
    ld a, [hl]
    or a
    jr nz, jr_010_52f7

    ld l, $bf
    bit 1, [hl]
    ret z

jr_010_52f7:
    ld e, $e4
    ld a, [de]
    res 7, a
    ld [de], a
    xor a
    ret


    jr z, jr_010_5314

    ld e, $ea
    ld a, [de]
    cp $80
    jr z, jr_010_5314

    call Call_010_5360
    ld h, d
    ld l, $c4
    ld [hl], $03
    ld l, $e4
    res 7, [hl]

jr_010_5314:
    ld e, $c4
    ld a, [de]
    rst $00
    inc h
    ld d, e
    scf
    ld d, e
    ld a, $53
    ld c, a
    ld d, e
    rst $08
    ld b, b
    ld d, h
    ld d, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    ld l, $c6
    ld [hl], $08
    ld a, $a6
    call $0c74
    jp $1e1e


    call Call_010_40a7
    jr nz, jr_010_5347

    ld l, e
    inc [hl]

jr_010_533e:
    call Call_010_4072
    jr nc, jr_010_5347

    jr nz, jr_010_5357

    jr jr_010_5354

jr_010_5347:
    call $2142
    jp c, $1fdb

    jr jr_010_5354

    call Call_010_5399
    jr jr_010_533e

jr_010_5354:
    jp $3eba


jr_010_5357:
    ld e, $c4
    ld a, $04
    ld [de], a
    xor a
    jp Jump_010_40af


Call_010_5360:
    ld e, $c9
    ld a, [de]
    bit 2, a
    jr nz, jr_010_5376

    sub $08
    rrca
    ld b, a
    ld a, [$d008]
    add b
    ld hl, $538d
    rst $10
    ld a, [hl]
    ld [de], a
    ret


jr_010_5376:
    sub $0c
    rrca
    ld b, a
    ld a, [$d008]
    add b
    ld hl, $5385
    rst $10
    ld a, [hl]
    ld [de], a
    ret


    inc b
    ld [$1410], sp
    inc e
    inc c
    db $10
    jr jr_010_5392

    ld [$180c], sp
    nop

jr_010_5392:
    inc c
    db $10
    inc d
    inc e
    ld [$1814], sp

Call_010_5399:
    ld a, $24
    call $211e
    bit 7, [hl]
    ret z

    call $1d18
    ret nc

    ld l, $aa
    ld [hl], $82
    ld l, $b0
    dec [hl]
    ld l, $ab
    ld [hl], $0c
    ld e, $c4
    ld a, $04
    ld [de], a
    ret


    jr nz, jr_010_53c9

    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_53cc

    call $2142
    jr nc, jr_010_53c9

    call Call_010_4072
    jp nc, $1fdb

jr_010_53c9:
    jp $3eba


jr_010_53cc:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    ld e, $c9
    ld a, [de]
    swap a
    rlca
    call $28cf
    jp $1e1e


    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_53ee

    call Call_010_40a7
    jp z, $3eba

    jp $28bf


jr_010_53ee:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $b4
    jp $1e27


    jr z, jr_010_540a

    ld e, $ea
    ld a, [de]
    res 7, a
    sub $01
    cp $03
    jr nc, jr_010_540a

    ld e, $c4
    ld a, $02
    ld [de], a

jr_010_540a:
    ld e, $d7
    ld a, [de]
    inc a
    jr z, jr_010_544e

    ld e, $c4
    ld a, [de]
    rst $00
    ld a, [de]
    ld d, h
    dec hl
    ld d, h
    ld a, $54
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $2d
    inc l
    ld [hl], $06
    ld l, $d0
    ld [hl], $50
    jp $1e1e


    call $1475
    jr nz, jr_010_5451

    call Call_010_40a7
    jr z, jr_010_5451

    call Call_010_548d

jr_010_5438:
    call $1fdb

jr_010_543b:
    jp $28bf


    call Call_010_547d
    call Call_010_5458
    jr nc, jr_010_5438

    ld a, $18
    call $211e
    xor a
    ld [hl+], a
    ld [hl], a

jr_010_544e:
    jp $3eba


jr_010_5451:
    ld e, $c4
    ld a, $02
    ld [de], a
    jr jr_010_543b

Call_010_5458:
    ld a, $0b
    call $211e
    push hl
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    call $1e62
    ld e, $c9
    ld [de], a
    pop hl
    ld e, $cb
    ld a, [de]
    sub [hl]
    add $04
    cp $09
    ret nc

    ld l, $8d
    ld e, $cd
    ld a, [de]
    sub [hl]
    add $04
    cp $09
    ret


Call_010_547d:
    ld a, [$cc00]
    and $03
    ret nz

    ld e, $d0
    ld a, [de]
    add $05
    cp $50
    ret nc

    ld [de], a
    ret


Call_010_548d:
    ld h, d
    ld l, $c7
    dec [hl]
    ret nz

    ld [hl], $06
    ld e, $d0
    ld a, [de]
    sub $05
    ret c

    ld [de], a
    ret


    ld e, $c4
    ld a, [de]
    rst $00
    and [hl]
    ld d, h
    rst $38
    ld d, h
    ld [$6255], sp
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $18
    ld l, $cf
    ld [hl], $fa
    ld a, $30
    call $211e
    ld a, [hl]
    sub $10
    and $1e
    rrca
    ld hl, $5538
    rst $10
    ld e, $d0
    ld a, [hl]
    ld [de], a
    call $1dfa
    call $042f
    ld c, a
    and $30
    ld b, a
    swap b
    and $10
    ld hl, $5518
    rst $10
    ld a, c
    and $0f
    rst $10
    bit 0, b
    ld e, $cb
    ld c, $cd
    jr nz, jr_010_54e5

    ld e, c
    ld c, $cb

jr_010_54e5:
    ld a, [hl]
    ld [de], a
    ld a, b
    ld hl, $5514
    rst $10
    ld e, c
    ld a, [hl]
    ld [de], a
    call $1e52
    ld e, $c9
    ld [de], a
    cp $11
    ld a, $00
    jr nc, jr_010_54fc

    inc a

jr_010_54fc:
    jp $28cf


    call Call_010_40a7
    jr nz, jr_010_550e

    ld l, e
    inc [hl]
    jr jr_010_550e

    call $2142
    jp nc, $3eba

jr_010_550e:
    call $1fdb
    jp $28bf


    ld [$8898], sp
    ld [$0e05], sp
    rla
    jr nz, jr_010_5546

    ld [hl-], a
    dec sp
    ld b, h
    ld c, l
    ld d, [hl]
    ld e, a
    ld l, b
    ld [hl], c
    ld a, d
    add e
    adc h
    dec b
    rrca
    add hl, de
    inc hl
    dec l
    scf
    ld b, c
    ld c, e
    ld d, l
    ld e, a
    ld l, c
    ld [hl], e
    ld a, l
    add a
    sub c
    sbc e
    ld [hl-], a
    inc a
    ld b, [hl]
    ld d, b
    ld e, d
    ld e, d
    ld h, h
    ld l, [hl]
    ld a, b
    ld e, $c2
    ld a, [de]
    ld e, $c4

jr_010_5546:
    rst $00
    ld c, l
    ld d, l
    ld e, h
    ld d, l
    ld a, b
    ld d, l
    ld a, [de]
    or a
    jr z, jr_010_5559

    call Call_010_40a7
    ret nz

    ld [hl], $3c
    jr jr_010_5567

jr_010_5559:
    inc a
    ld [de], a
    ret


    ld a, [de]
    or a
    jr z, jr_010_5559

    call Call_010_40a7
    ret nz

    call Call_010_55a2

jr_010_5567:
    call $3ea7
    ret nz

    ld [hl], $23
    inc l
    ld [hl], $02
    ld l, $f0
    ld e, l
    ld a, [de]
    ld [hl], a
    jp $21fd


    ld a, [de]
    or a
    jr z, jr_010_5598

    ld h, d
    ld l, $cb
    ld a, [hl]
    cp $b0
    jp nc, $3eba

    ld l, $d0
    ld e, $ca
    call $2362
    dec l
    ld a, [hl]
    add $10
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    jp $28bf


jr_010_5598:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    jp $1e1e


Call_010_55a2:
    ld e, $87
    ld a, [de]
    inc a
    and $03
    ld [de], a
    ld hl, $55b2
    rst $10
    ld e, $c6
    ld a, [hl]
    ld [de], a
    ret


    inc a
    inc a
    ld e, $1e
    ld e, $c4
    ld a, [de]
    rst $00
    ret nz

    ld d, l
    db $e3
    ld d, l
    pop af
    ld d, l
    ld a, $01
    ld [de], a
    call $042f
    ld e, $f0
    and $06
    ld [de], a
    ld h, d
    ld l, $cf
    ld [hl], $c0
    ld l, $d7
    ld a, [hl]
    or a
    ret z

    ld l, $c6
    ld [hl], $1e
    ld l, $cb
    ldh a, [$ae]
    ld [hl+], a
    inc l
    ldh a, [$af]
    ld [hl], a
    ret


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld a, $d2
    call $0c74
    jp $1e1e


    call $28bf
    ld e, $e1
    ld a, [de]
    inc a
    jp z, $3eba

    call Call_010_560c
    ld e, $c3
    ld a, [de]
    or a
    ret z

    ld b, a
    ld a, [$cfd2]
    or b
    ld [$cfd2], a
    ret


Call_010_560c:
    ld e, $e1
    ld a, [de]
    bit 7, a
    call nz, Call_010_564d
    ld e, $e1
    ld a, [de]
    and $0e
    ld hl, $5640
    rst $10
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $e1
    ld a, [de]
    and $70
    swap a
    ld hl, $5648
    rst $10
    ld e, $cf
    ld a, [hl]
    ld [de], a
    ld e, $e1
    ld a, [de]
    bit 0, a
    ret z

    dec a
    ld [de], a
    ld a, $06
    jp $24a7


    ld [bc], a
    ld [bc], a
    inc b
    ld b, $05
    add hl, bc
    inc b
    dec b
    ret nz

    ret nc

    ldh [$f0], a
    nop

Call_010_564d:
    res 7, a
    ld [de], a
    and $0e
    sub $02
    ld b, a
    ld e, $f0
    ld a, [de]
    add b
    ld hl, $5669
    rst $10
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $3ac6
    ret nz

    ld [hl], $08
    jp $2215


    ld [bc], a
    ld b, $00
    ei
    rst $38
    rlca
    db $fd
    db $fc
    nop
    dec b
    jr z, jr_010_567f

    cp $02
    jp z, Jump_010_5702

    ld e, $c4
    ld a, $02
    ld [de], a

jr_010_567f:
    ld e, $c4
    ld a, [de]
    rst $00
    adc c
    ld d, [hl]
    sbc [hl]
    ld d, [hl]
    ret nc

    ld d, [hl]
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $cf
    ld [hl], $fa
    ld l, $f1
    ld e, $cb
    ld a, [de]
    ld [hl+], a
    ld e, $cd
    ld a, [de]
    ld [hl], a
    jp $1e03


    call Call_010_40a7
    jr z, jr_010_56a9

    call Call_010_5733
    jp c, $1fdb

jr_010_56a9:
    call $042f
    and $3e
    add $08
    ld e, $c6
    ld [de], a
    call $042f
    and $03
    ld hl, $56cc
    rst $10
    ld e, $d0
    ld a, [hl]
    ld [de], a
    call $042f
    and $1e
    ld h, d
    ld l, $c9
    ld [hl], a
    jp Jump_010_571c


    ld a, [bc]
    inc d
    ld e, $28
    ld e, $c5
    ld a, [de]
    or a
    jr nz, jr_010_56e9

    ld h, d
    ld l, e
    inc [hl]
    ld l, $cf
    ld [hl], $00
    ld a, $01
    call $211e
    ld a, [hl]
    ld e, $f0
    ld [de], a
    call $1e15

jr_010_56e9:
    call $1c07
    jp c, Jump_010_5702

    ld a, $00
    call $211e
    ld a, [hl+]
    or a
    jr z, jr_010_56ff

    ld e, $f0
    ld a, [de]
    cp [hl]
    jp z, $222f

jr_010_56ff:
    jp $3eba


Jump_010_5702:
    ld a, $26
    call $236b
    ld c, $18
    jr z, jr_010_5712

    ld a, $25
    call $236b
    jr nz, jr_010_5714

jr_010_5712:
    ld c, $30

jr_010_5714:
    ld a, $29
    call $16eb
    jp $3eba


Jump_010_571c:
    ld e, $c9
    ld a, [de]
    and $0f
    ret z

    ld a, [de]
    cp $10
    ld a, $00
    jr nc, jr_010_572a

    inc a

jr_010_572a:
    ld h, d
    ld l, $c8
    cp [hl]
    ret z

    ld [hl], a
    jp $28cf


Call_010_5733:
    ld e, $c9
    ld a, [de]
    and $07
    ld a, [de]
    jr z, jr_010_573f

    and $18
    add $04

jr_010_573f:
    and $1c
    rrca
    ld hl, $575b
    rst $10
    ld e, $cb
    ld a, [de]
    add [hl]
    ld b, a
    ld e, $cd
    inc hl
    ld a, [de]
    add [hl]
    sub $38
    cp $80
    ret nc

    ld a, b
    sub $18
    cp $50
    ret


    db $fc
    nop
    db $fc
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    db $fc
    nop
    db $fc
    db $fc
    db $fc
    jr z, jr_010_5775

    ld e, $ea
    ld a, [de]
    cp $83
    jp z, $3eba

jr_010_5775:
    ld e, $c4
    ld a, [de]
    rst $00
    ld a, a
    ld d, a
    xor l
    ld d, a
    or h
    ld d, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $02
    ld l, $c9
    ld c, [hl]
    ld b, $50
    ld a, $04
    call $210a
    ld e, $c9
    ld a, [de]
    and $0f
    ld hl, $579d
    rst $10
    ld a, [hl]
    jp $28cf


    nop
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    dec b
    ld b, $06
    ld b, $07
    nop
    call Call_010_40a7
    jr nz, jr_010_57be

    ld l, e
    inc [hl]
    call Call_010_57be
    call Call_010_4072
    jp c, $3eba

    ret


Call_010_57be:
jr_010_57be:
    call $1fc6
    ld e, $c2
    ld a, [de]
    ld b, a
    ld a, [$cc00]
    and b
    jp z, $1e1e

    jp $1e39


    jr z, jr_010_57f1

    ld e, $ea
    ld a, [de]
    res 7, a
    sub $01
    cp $09
    jr nc, jr_010_57f1

    ld a, $2b
    call $211e
    ld a, [hl]
    or a
    jr nz, jr_010_57e7

    ld [hl], $f4

jr_010_57e7:
    ld h, d
    ld l, $d5
    ld a, [hl]
    rlca
    jr c, jr_010_57f1

    xor a
    ld [hl-], a
    ld [hl], a

jr_010_57f1:
    ld e, $c2
    ld a, [de]
    ld b, a
    ld e, $c4
    ld a, b
    rst $00
    ld bc, $a358
    ld e, b
    and e
    ld e, b
    and e
    ld e, b
    ld a, $01
    call $211e
    ld a, [hl]
    cp $4b
    jp nz, $3eba

    ld b, h
    call Call_010_590b
    ld e, $c4
    ld a, [de]
    rst $00
    jr nz, jr_010_586e

    ld a, [hl+]
    ld e, b
    inc sp
    ld e, b
    ld c, e
    ld e, b
    ld a, l
    ld e, b
    sbc d
    ld e, b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    call $1e1e
    ld e, $c9
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    jr jr_010_583b

jr_010_5833:
    ld e, $c9
    ld a, [de]
    add $02
    and $1f
    ld [de], a

jr_010_583b:
    ld e, $f0
    ld a, $0a
    ld [de], a

Jump_010_5840:
    call Call_010_58c8
    ld e, $f0
    ld a, [de]
    ld e, $c9
    jp $20cc


    call Call_010_58c8
    ldh a, [$ae]
    ldh [$8f], a
    ldh a, [$af]
    ldh [$8e], a
    push hl
    call $1e6f
    pop bc
    xor $10
    ld e, a
    sub $06
    and $1f
    ld h, d
    ld l, $c9
    sub [hl]
    inc a
    and $1f
    cp $03
    jr nc, jr_010_5833

    ld a, e

jr_010_586e:
    sub $03
    and $1f
    ld [hl], a
    ld l, $c4
    inc [hl]
    ld l, $f0
    ld [hl], $0d
    jp Jump_010_5840


    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $00
    ld l, $c9
    ld a, [hl]
    add $03
    and $1f
    ld [hl], a
    ld l, $f0
    ld [hl], $12
    ld l, $d0
    ld a, $40
    ld [hl+], a
    ld [hl], $03
    jp Jump_010_5840


    call Call_010_58da
    call Call_010_58ed
    jp Jump_010_5840


    ld a, [de]
    or a
    jr nz, jr_010_58af

    inc a
    ld [de], a
    call $28cf
    call $1e1e

jr_010_58af:
    ld a, $01
    call $211e
    ld a, [hl]
    cp $2a
    jp nz, $3eba

    ld l, $c9
    ld e, l
    ld a, [hl]
    ld [de], a
    call Call_010_592b
    ld l, $d7
    ld b, [hl]
    jp Jump_010_5840


Call_010_58c8:
    ld h, b
    ld l, $8b
    ld a, [hl+]
    sub $05
    ld b, a
    inc l
    ld a, [hl+]
    sub $05
    ld c, a
    inc l
    ld a, [hl]
    ld e, $cf
    ld [de], a
    ret


Call_010_58da:
    ld h, d
    ld l, $ea
    bit 7, [hl]
    ret z

    ld a, [hl]
    cp $80
    ret z

    ld l, $d1
    bit 7, [hl]
    ret nz

    xor a
    ld [hl-], a
    ld [hl], a
    ret


Call_010_58ed:
    ld h, d
    ld e, $f0
    ld l, $d1
    ld a, [de]
    add [hl]
    cp $0a
    jr c, jr_010_5903

    ld [de], a
    dec l
    ld a, [hl]
    sub $20
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    ret


jr_010_5903:
    ld a, $06
    call $211e
    ld [hl], $00
    ret


Call_010_590b:
    ld l, $b0
    ld e, $c4
    ld a, [de]
    dec a
    cp $03
    jr c, jr_010_591b

    inc a
    ret z

    ld a, [hl]
    cp $02
    ret z

jr_010_591b:
    ld a, [hl]
    or a
    ld c, $01
    jr z, jr_010_5926

    inc c
    dec a
    jr z, jr_010_5926

    inc c

jr_010_5926:
    ld e, $c4
    ld a, c
    ld [de], a
    ret


Call_010_592b:
    ld l, $f0
    push hl
    ld e, $c2
    ld a, [de]
    dec a
    rst $00
    add hl, sp
    ld e, c
    ld b, [hl]
    ld e, c
    ld d, b
    ld e, c
    pop hl
    ld e, l
    ld a, [hl]
    srl a
    srl a
    ld b, a
    add a
    add b
    inc a
    ld [de], a
    ret


    pop hl
    ld e, l
    ld a, [hl]
    srl a
    srl a
    add a
    ld [de], a
    ret


    pop hl
    ld e, l
    ld a, [hl]
    srl a
    srl a
    ld [de], a
    ret


    ld e, $c4
    ld a, [de]
    or a
    jr nz, jr_010_5969

    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $03
    call $1e1e

jr_010_5969:
    ldh a, [$ae]
    ld b, a
    ldh a, [$af]
    ld c, a
    ld a, $20
    ld e, $c9
    call $20cc
    call Call_010_40a7
    ret nz

    ld [hl], $03
    ld l, $c9
    ld a, [hl]
    dec a
    and $1f
    ld [hl], a
    ret nz

    ld hl, $c6a3
    ld a, [$cbe4]
    cp [hl]
    ret nz

    ld a, $31
    call $211e
    dec [hl]
    jp $3eba


    jr z, jr_010_59b4

    ld e, $ea
    ld a, [de]
    cp $83
    jp z, $3eba

    cp $80
    jr z, jr_010_59b4

    call $1e52
    xor $10
    ld h, d
    ld l, $c9
    ld [hl], a
    ld l, $c4
    ld [hl], $03
    ld l, $d0
    ld [hl], $64

jr_010_59b4:
    ld a, $04
    call $211e
    ld a, [hl]
    cp $0d
    jp nc, Jump_010_5a4e

    ld e, $c4
    ld a, [de]
    rst $00
    bit 3, c
    db $fc
    ld e, c
    ld e, $5a
    add hl, hl
    ld e, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $1e
    ld l, $d0
    ld [hl], $50
    ld l, $cf
    ld a, [hl]
    ld [hl], $00
    ld l, $cb
    add [hl]
    ld [hl], a
    ld a, $16
    call $211e
    ld e, $d8
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld e, $c1
    ld a, [de]
    cp $4b
    ld a, $ba
    jr z, jr_010_59f6

    ld a, $bb

jr_010_59f6:
    call $0c74
    call $1e1e
    call Call_010_40a7
    jr z, jr_010_5a10

    ld a, $0b
    call $211e
    ld bc, $ea00
    call $2232
    xor a
    ld [de], a
    jr jr_010_5a26

jr_010_5a10:
    call $1e52
    ld e, $c9
    ld [de], a
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $e4
    set 7, [hl]

jr_010_5a1e:
    call $1fdb
    call Call_010_407e
    jr z, jr_010_5a4b

jr_010_5a26:
    jp $28bf


    ld a, $00
    call $2122
    call $1d18
    jr nc, jr_010_5a1e

    ld l, $ab
    ld [hl], $14
    ld l, $a9
    dec [hl]
    jr nz, jr_010_5a40

    ld l, $b2
    set 6, [hl]

jr_010_5a40:
    ld a, $29
    call $211e
    dec [hl]
    ld a, $63
    call $0c74

jr_010_5a4b:
    jp $3eba


Jump_010_5a4e:
    call $24ad
    jp $3eba


    jr z, jr_010_5a5e

    ld e, $ea
    ld a, [de]
    cp $80
    jp nz, $3eba

jr_010_5a5e:
    ld e, $c2
    ld a, [de]
    or a
    ld e, $c4
    ld a, [de]
    jr z, jr_010_5a97

    or a
    jr z, jr_010_5a77

    call $28bf
    call $1fdb
    call Call_010_4072
    ret nz

    jp $3eba


jr_010_5a77:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    ld l, $db
    ld a, $05
    ld [hl+], a
    ld [hl], a
    ld l, $e6
    ld a, $02
    ld [hl+], a
    ld [hl], a
    ld a, $bb
    call $0c74
    ld a, $01
    call $28cf
    jp $1e27


jr_010_5a97:
    rst $00
    sbc [hl]
    ld e, d
    xor h
    ld e, d
    cp d
    ld e, d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $46
    ld l, $c6
    ld [hl], $1e
    jp $1e27


    call Call_010_40a7
    jp nz, $28bf

    ld l, e
    inc [hl]
    call $1e52
    ld e, $c9
    ld [de], a
    call $28bf
    call $1fdb
    call Call_010_4072
    ret nc

    call $1e52
    sub $02
    and $1f
    ld c, a
    ld b, $03

jr_010_5ace:
    call $3ea7
    jr nz, jr_010_5add

    ld [hl], $4c
    inc l
    inc [hl]
    ld l, $c9
    ld [hl], c
    call $21fd

jr_010_5add:
    ld a, c
    add $02
    and $1f
    ld c, a
    dec b
    jr nz, jr_010_5ace

    call $24ad
    jp $3eba


    jr z, jr_010_5afe

    ld e, $ea
    ld a, [de]
    cp $83
    jr z, jr_010_5b3e

    res 7, a
    sub $05
    cp $04
    jp c, Jump_010_5b3e

jr_010_5afe:
    ld e, $c4
    ld a, [de]
    rst $00
    ld [$1b5b], sp
    ld e, e
    scf
    ld e, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $1e
    ld l, $d0
    ld [hl], $5a
    ld a, $8d
    call $0c74
    jp $1e27


    call Call_010_40a7
    jr z, jr_010_5b2f

    ld l, $e1
    bit 0, [hl]
    jr z, jr_010_5b2c

    ld [hl], $00
    ld l, $e4
    set 7, [hl]

jr_010_5b2c:
    jp $28bf


jr_010_5b2f:
    ld l, e
    inc [hl]
    call $1e52
    ld e, $c9
    ld [de], a
    call $1fdb
    call Call_010_4072
    ret nc

Jump_010_5b3e:
jr_010_5b3e:
    ld b, $09
    call $24af
    jp $3eba


    ld a, $04
    call $211e
    ld a, [hl]
    cp $0e
    jp z, $3eba

    push hl
    ld e, $c4
    ld a, [de]
    rst $00
    ld e, h
    ld e, e
    ld l, [hl]
    ld e, e
    add h
    ld e, e
    ld a, $01
    ld [de], a
    pop hl
    call $222f
    ld l, $b2
    ld a, [hl]
    or a
    jr z, jr_010_5b6b

    ld a, $01

jr_010_5b6b:
    jp $28cf


    call $28bf
    ld e, $e1
    ld a, [de]
    inc a
    jr nz, jr_010_5b91

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $e6
    ld a, $07
    ld [hl+], a
    ld [hl], a
    call $1e39
    pop hl
    inc l
    ld a, [hl]
    or a
    jp z, $3eba

    ld bc, $2000
    jp $2232


jr_010_5b91:
    ld h, d
    ld l, e
    bit 7, [hl]
    jr z, jr_010_5ba4

    res 7, [hl]
    call $1e27
    ld a, $b1
    call $0c74
    ld h, d
    ld l, $e1

jr_010_5ba4:
    ld a, [hl]
    ld hl, $5bc1
    rst $10
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    ld l, $b2
    ld a, [hl]
    or a
    jr z, jr_010_5bbe

    ld a, c
    cpl
    inc a
    ld c, a

jr_010_5bbe:
    jp $2232


    rlca
    rlca
    ret c

    pop af
    dec bc
    rlca
    rst $20
    ld a, [de]
    jr nz, @+$0e

    rst $30
    add hl, de
    ld a, $04
    call $211e
    ld a, [hl]
    cp $0e
    jp z, $3eba

    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    db $e4
    ld e, e
    ld c, b
    ld e, h
    inc b
    ld e, h
    ld a, [de]
    or a
    jr nz, jr_010_5bfc

    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $40
    ld l, $e8
    ld [hl], $f0
    ld l, $da
    ld [hl], $02
    ld a, $5c
    call $0c74

jr_010_5bfc:
    call Call_010_40a7
    jp z, $3eba

    jr jr_010_5c0f

    ld a, [de]
    or a
    jr z, jr_010_5c18

    ld e, $e1
    ld a, [de]
    rlca
    jp c, $3eba

jr_010_5c0f:
    ld e, $da
    ld a, [de]
    xor $80
    ld [de], a
    jp $28bf


jr_010_5c18:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $c9
    ld a, [hl]
    ld b, $01
    cp $0c
    jr c, jr_010_5c2e

    inc b
    cp $19
    jr c, jr_010_5c2e

    inc b

jr_010_5c2e:
    ld a, b
    dec a
    and $01
    ld hl, $5c44
    rst JumpTable
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, b
    call $28cf
    jp $1e30


    ld [$0a0a], sp
    ld a, [bc]
    ld a, [de]
    rst $00
    ld d, b
    ld e, h
    ld h, l
    ld e, h
    sub b
    ld e, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $dd
    ld a, [hl]
    add $0e
    ld [hl], a
    ld l, $c6
    ld [hl], $18
    ld a, $04
    call $28cf
    jp $1e27


    call Call_010_40a7
    jr nz, jr_010_5cbf

    dec [hl]
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $db
    ld a, $05
    ld [hl+], a
    ld [hl], a
    ld l, $cb
    ld a, [hl]
    add $08
    ld [hl+], a
    inc l
    ld a, [hl]
    sub $10
    ld [hl], a
    call $1e5a
    ld e, $c9
    ld [de], a
    ld c, a
    ld b, $50
    ld a, $02
    jp $210a


    call Call_010_4072
    jr nc, jr_010_5ca2

    ld b, $56
    call $24af
    ld a, $3c
    call z, $24a7
    jp $3eba


jr_010_5ca2:
    call Call_010_40a7
    ld a, [hl]
    and $07
    jr nz, jr_010_5cbc

    call $3ea7
    jr nz, jr_010_5cbc

    ld [hl], $51
    inc l
    ld [hl], $02
    ld l, $c9
    ld e, l
    ld a, [de]
    ld [hl], a
    call $21fd

jr_010_5cbc:
    call $1fc6

jr_010_5cbf:
    jp $28bf


    ld a, $04
    call $211e
    ld a, [hl]
    cp $0e
    jp z, $3eba

    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    reti


    ld e, h
    ld [$ac5d], sp
    ld e, l
    ld a, [de]
    rst $00
    pop hl
    ld e, h
    db $eb
    ld e, h
    db $fc
    ld e, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $0a
    jp $1e27


    call Call_010_40a7
    jr nz, jr_010_5d05

    ld l, e
    inc [hl]
    ld a, $a4
    call $0c74
    ld a, $02
    call $28cf
    call Call_010_407e
    jp z, $3eba

    call $1fdb

jr_010_5d05:
    jp $28bf


    ld a, [de]
    rst $00
    ld [de], a
    ld e, l
    ld b, [hl]
    ld e, l
    ld [hl], a
    ld e, l
    db $fc
    ld e, h
    ld h, d
    ld l, $d0
    ld [hl], $50
    ld l, e
    call $1e27
    ld e, $c3
    ld a, [de]
    or a
    jr z, jr_010_5d2a

    ld [hl], $03
    ld l, $e6
    ld a, $02
    ld [hl+], a
    ld [hl], a
    ret


jr_010_5d2a:
    inc [hl]
    ld l, $c6
    ld [hl], $28
    ld l, $e6
    ld a, $04
    ld [hl+], a
    ld [hl], a
    ld e, $cb
    ld l, $f0
    ld a, [de]
    add $20
    ld [hl+], a
    ld e, $cd
    ld a, [de]
    ld [hl], a
    ld a, $01
    call $28cf
    call Call_010_40a7
    jr z, jr_010_5d68

    ld a, [hl]
    rrca
    ld e, $c9
    jr c, jr_010_5d56

    ld a, [de]
    inc a
    and $1f
    ld [de], a

jr_010_5d56:
    ld l, $da
    ld a, [hl]
    xor $80
    ld [hl], a
    ld l, $f0
    ld b, [hl]
    inc l
    ld c, [hl]
    ld a, $08
    call $20cc
    jr jr_010_5d74

jr_010_5d68:
    ld [hl], $0a
    ld l, e
    inc [hl]
    ld a, $be
    call $0c74
    call $1e27

jr_010_5d74:
    jp $28bf


    call Call_010_40a7
    jr z, jr_010_5d81

    call $1fdb
    jr jr_010_5d74

jr_010_5d81:
    ld l, e
    inc [hl]
    ld l, $e6
    ld a, $02
    ld [hl+], a
    ld [hl], a
    xor a
    call $28cf
    call $24ad
    ld b, $fd
    call Call_010_5d97
    ld b, $03

Call_010_5d97:
    call $3ea7
    ret nz

    ld [hl], $52
    inc l
    inc [hl]
    inc l
    inc [hl]
    ld l, $c9
    ld e, l
    ld a, [de]
    add b
    and $1f
    ld [hl], a
    jp $21fd


    ld a, [de]
    rst $00
    or [hl]
    ld e, l
    ret nz

    ld e, l
    call nc, $fc5d
    ld e, h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $0f
    jp $1e27


    call Call_010_40a7
    jp nz, $28bf

    ld [hl], $0f
    ld l, e
    inc [hl]
    ld a, $a8
    call $0c74
    ld a, $01
    jp $28cf


    call Call_010_40a7
    jp nz, $28bf

    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $5a
    call $1e5a
    ld e, $c9
    ld [de], a
    ld a, $02
    jp $28cf


    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_5e33

    ld a, [$cd2d]
    or a
    jp nz, $3eba

    ld h, d
    ld l, $c6
    ld a, [hl]
    inc a
    jr z, jr_010_5e03

    dec [hl]
    jp z, $3eba

jr_010_5e03:
    inc e
    ld a, [de]
    or a
    jr nz, jr_010_5e1f

    inc l
    dec [hl]
    ret nz

    ld l, e
    inc [hl]
    ld l, $f2
    ld a, [hl]
    swap a
    rrca
    ld l, $c3
    add [hl]
    call $28cf
    call Call_010_5e80
    jp $1e42


jr_010_5e1f:
    call $1fdb
    call $28bf
    ld e, $e1
    ld a, [de]
    inc a
    ret nz

    ld h, d
    ld l, $c5
    dec [hl]
    call $1e39
    jr jr_010_5e4c

jr_010_5e33:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c0
    set 7, [hl]
    ld l, $d0
    ld [hl], $78
    ld l, $c3
    ld a, [hl]
    add a
    add a
    xor $10
    ld l, $c9
    ld [hl], a
    xor a
    ld [$cd2d], a

jr_010_5e4c:
    call $042f
    and $07
    inc a
    ld e, $c7
    ld [de], a
    ret


    ld a, $01
    jr jr_010_5e5b

    xor a

jr_010_5e5b:
    ldh [$8b], a
    push de
    ld e, l
    ld d, $08

jr_010_5e61:
    call $3ea7
    jr nz, jr_010_5e7a

    ld [hl], $53
    ld l, $c6
    ld [hl], e
    ld l, $f0
    ld [hl], b
    inc l
    ld [hl], c
    inc l
    ldh a, [$8b]
    ld [hl], a
    ld l, $c3
    dec d
    ld [hl], d
    jr nz, jr_010_5e61

jr_010_5e7a:
    pop de
    ld a, $5c
    jp $0c74


Call_010_5e80:
    ld h, d
    ld l, $f2
    ld a, [hl-]
    or a
    jr nz, jr_010_5e97

    ld e, $c3
    ld a, [de]
    add a
    add a
    ld e, $c8
    ld [de], a
    ld c, [hl]
    dec l
    ld b, [hl]
    ld a, $38
    jp $20cc


jr_010_5e97:
    ld e, $cd
    ld a, [hl-]
    ld [de], a
    ld e, $cb
    ld a, [hl]
    ld [de], a
    ret


    ld hl, $cc40
    ld a, [hl+]
    or a
    ret z

    ld c, a
    ld a, [$cc49]
    cp [hl]
    ret nz

    inc l
    ld a, [$cc4c]
    cp [hl]
    ret nz

    ld a, [$d100]
    or a
    ret nz

    ld a, c
    ld [$d101], a
    ld a, $01
    ld [$d100], a
    inc l
    ld a, [hl+]
    ld [$d10b], a
    ld [$c638], a
    ld a, [hl+]
    ld [$d10d], a
    ld [$c639], a
    ret


    xor a
    ld [$cc3a], a
    ld a, [$cc9f]
    or a
    ret nz

    ld a, [$cc49]
    or a
    ret nz

    ld a, [$d100]
    or a
    ret nz

    ld a, [$c610]
    sub $0b
    ld hl, $5f20
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    call $0205
    ret nz

    ld a, $0f
    call $236b
    ld e, $1e
    jr nz, jr_010_5f01

    srl e

jr_010_5f01:
    ld hl, $c63e
    ld a, [hl]
    cp e
    ret c

    ld [hl], $00
    ld hl, $d100
    ld a, $01
    ld [$cc9f], a
    ld [$cc3a], a
    ld [hl+], a
    ld [hl], $0e
    ld l, $0b
    ld [hl], $18
    ld l, $0d
    ld [hl], $b8
    ret


    ld h, $5f
    ld b, [hl]
    ld e, a
    ld h, [hl]
    ld e, a
    rst $38
    rst $38
    ei
    cp $f9
    ld hl, sp+$3d
    db $fc
    ld c, l
    ldh a, [rNR32]
    ei
    adc a
    cp $67
    sbc $6f
    ld l, l
    ld l, a
    rst $38
    rst $20
    rst $20
    cp a
    rst $20
    ld [hl], b
    ld_long a, $ff17
    rrca
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ei
    cp $f9
    ld hl, sp+$3d
    db $fc
    call $1cfe
    cp $8f
    cp $67
    sbc $6f
    ld l, l
    ld l, a
    rst $38
    rst $20
    rst $20
    cp a
    rst $20
    ld [hl], b
    ld_long a, $ff17
    rrca
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ei
    cp $f9
    ld hl, sp+$3d
    db $fc
    dec c
    cp $1c
    cp $8f
    xor $67
    sbc $6f
    ld l, l
    ld l, a
    rst $38
    rst $20
    rst $20
    cp a
    rst $20
    ld [hl], b
    ld_long a, $ff17
    rrca
    ld hl, sp-$01
    rst $38
    ld a, $0b
    call $30c7
    ret z

    ld a, [$cc49]
    or a
    jr nz, jr_010_5f97

jr_010_5f92:
    ld a, $0b
    jp $30d3


jr_010_5f97:
    cp $03
    jr nz, jr_010_5fa5

    ld a, [$cc4c]
    cp $95
    ret z

    cp $ab
    jr z, jr_010_5f92

jr_010_5fa5:
    ld hl, $d141

jr_010_5fa8:
    ld a, [hl]
    cp $31
    ret z

    inc h
    ld a, h
    cp $e0
    jr nz, jr_010_5fa8

    call $3ac6
    ret nz

    ld [hl], $31
    inc l
    ld [hl], $01
    ret


    ld c, l
    ld a, h
    rst $00
    rra
    ld h, b
    bit 3, a
    db $fd
    ld e, a
    db $fc
    ld e, a
    dec hl
    ld h, b
    ld h, h
    ld h, b
    ld hl, $cc1f
    ld a, [$cc4c]
    ld b, $08

jr_010_5fd3:
    cp [hl]
    jr z, jr_010_5ff6

    inc l
    inc l
    dec b
    jr nz, jr_010_5fd3

    ld a, [$cc2f]
    ld b, a
    inc a
    inc a
    and $0f
    ld [$cc2f], a
    ld a, b
    and $0f
    add $1f
    ld l, a
    ld a, [$cc4c]
    ld [hl+], a
    xor a
    ld [hl], a
    ld [$cec9], a
    ret


jr_010_5ff6:
    inc l
    ld a, [hl]
    ld [$cec9], a
    ret


    ret


    ld hl, $cc1f
    ld b, $08
    ld a, [$cc4c]

jr_010_6005:
    cp [hl]
    jr z, jr_010_600e

    inc l
    inc l
    dec b
    jr nz, jr_010_6005

    ret


jr_010_600e:
    inc l
    ld e, $80
    ld a, [de]
    and $70
    swap a
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    or [hl]
    ld [hl], a
    ret


    xor a
    ld [$cc2f], a
    ld hl, $cc1f
    ld b, $10
    jp $044b


    push de
    ld a, $04
    ldh [rSVBK], a
    ld hl, $d000
    ld b, $00

jr_010_6035:
    ld a, b
    ld [hl+], a
    inc b
    jr nz, jr_010_6035

    ld hl, $d0ff
    ld d, h
    call $041a
    ld e, a
    call Call_010_605e
    ld b, $ff

jr_010_6047:
    call $041a
    ld c, l
    call $019d
    ld e, h
    ld l, c
    ld h, $d0
    call Call_010_605e
    dec l
    jr nz, jr_010_6047

    ld a, $01
    ldh [rSVBK], a
    pop de
    ret


Call_010_605e:
    ld a, [de]
    ld c, a
    ld a, [hl]
    ld [hl], c
    ld [de], a
    ret


    ld a, $40
    ld [$cecf], a

jr_010_6069:
    ld hl, $cecf
    dec [hl]
    jr z, jr_010_6088

    call Call_010_616b
    ld [$cec2], a
    ld c, a
    call Call_010_609c
    jr c, jr_010_6069

    ldh a, [$8b]
    and $04
    jr nz, jr_010_6086

    call Call_010_608a
    jr c, jr_010_6069

jr_010_6086:
    xor a
    ret


jr_010_6088:
    scf
    ret


Call_010_608a:
    ld b, $ce
    ld a, [bc]
    or a
    jr nz, jr_010_609a

    ld b, $cf
    ld a, [bc]
    ld hl, $6127
    call $1ddd
    ret nc

jr_010_609a:
    scf
    ret


Call_010_609c:
    ld a, [$cd00]
    and $08
    jr z, @+$4f

jr_010_60a3:
    ld a, [$cc49]
    and $04
    ld hl, $60d0
    jr z, jr_010_60b0

    ld hl, $60e0

jr_010_60b0:
    ld a, [$cd02]
    add a
    rst JumpTable
    ld a, c
    and $f0
    swap a
    cp [hl]
    jr c, jr_010_60ce

    inc hl
    cp [hl]
    jr nc, jr_010_60ce

    ld a, c
    and $0f
    inc hl
    cp [hl]
    jr c, jr_010_60ce

    inc hl
    cp [hl]
    jr nc, jr_010_60ce

    xor a
    ret


jr_010_60ce:
    scf
    ret


    nop
    dec b
    nop
    ld a, [bc]
    nop
    ld [$0a03], sp
    inc bc
    ld [$0a00], sp
    nop
    ld [$0700], sp
    ld bc, $0108
    ld c, $01
    ld a, [bc]
    inc bc
    ld c, $03
    ld a, [bc]
    ld bc, $010e
    ld a, [bc]
    ld bc, $af0b
    ld [$cd02], a
    ld a, [$cc66]
    ld b, a
    cp $f0
    jr nc, jr_010_60a3

    and $f0
    swap a
    ld h, a
    ld a, c
    and $f0
    swap a
    sub h
    call Call_010_6121
    cp $03
    jr c, jr_010_6110

jr_010_610e:
    xor a
    ret


jr_010_6110:
    ld a, b
    and $0f
    ld h, a
    ld a, c
    and $0f
    sub h
    call Call_010_6121
    cp $03
    jr nc, jr_010_610e

    scf
    ret


Call_010_6121:
    bit 7, a
    ret z

    cpl
    inc a
    ret


    inc sp
    ld h, c
    inc sp
    ld h, c
    jr c, jr_010_618e

    jr c, @+$63

    jr c, @+$63

    ld e, b
    ld h, c
    di
    ld bc, $01fd
    nop
    di
    ld bc, $01f4
    push af
    ld bc, $01f6
    rst $30
    ld bc, $01fd
    ret nc

    ld bc, $0159
    ld e, d
    ld bc, $015b
    ld e, h
    ld bc, $015d
    ld e, [hl]
    ld bc, $015f
    ld b, h
    ld bc, $0145
    nop

Call_010_6159:
    ld hl, $cec0
    inc [hl]
    ld a, $04
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d0
    ld h, [hl]
    ld a, $01
    ldh [rSVBK], a
    ld a, h
    ret


Call_010_616b:
    ld a, [$cc49]
    and $04
    jr nz, jr_010_6187

jr_010_6172:
    call Call_010_6159
    cp $80
    jr nc, jr_010_6172

    ld b, a
    and $0f
    cp $0a
    jr nc, jr_010_6172

    call Call_010_61a7
    jr c, jr_010_6172

    ld a, b
    ret


jr_010_6187:
    call Call_010_6159
    cp $b0
    jr nc, jr_010_6187

jr_010_618e:
    ld b, a
    and $f0
    jr z, jr_010_6187

    cp $a0
    jr z, jr_010_6187

    ld a, b
    and $0f
    jr z, jr_010_6187

    cp $0e
    jr nc, jr_010_6187

    call Call_010_61a7
    jr c, jr_010_6187

    ld a, b
    ret


Call_010_61a7:
    ld a, [$cec1]
    or a
    ret z

    push bc
    ld c, a
    ld hl, $ced0

jr_010_61b1:
    ld a, [hl+]
    cp b
    jr z, jr_010_61bb

    dec c
    jr nz, jr_010_61b1

    pop bc
    xor a
    ret


jr_010_61bb:
    pop bc
    scf
    ret


jr_010_61be:
    ld d, $d0
    ld a, d

jr_010_61c1:
    ldh [$ad], a
    ld e, $c0
    ld a, [de]
    or a
    jr z, jr_010_61d5

    rlca
    jr c, jr_010_61d2

    ld e, $c4
    ld a, [de]
    or a
    jr nz, jr_010_61d5

jr_010_61d2:
    call Call_010_620e

jr_010_61d5:
    inc d
    ld a, d
    cp $e0
    jr c, jr_010_61c1

    ret


    ld a, $c0
    ldh [$ac], a
    ld a, [$cd00]
    cp $08
    jr z, jr_010_61be

    ld a, [$cba0]
    or a
    jr nz, jr_010_61be

    ld a, [$cca4]
    and $88
    jr nz, jr_010_61be

    ld d, $d0
    ld a, d

jr_010_61f7:
    ldh [$ad], a
    ld e, $c0
    ld a, [de]
    or a
    jr z, jr_010_6207

    call Call_010_620e
    ld h, d
    ld l, $ea
    res 7, [hl]

jr_010_6207:
    inc d
    ld a, d
    cp $e0
    jr c, jr_010_61f7

    ret


Call_010_620e:
    call Call_010_403b
    ld e, $c1
    ld a, [de]
    add a
    add $23
    ld l, a
    ld a, $00
    adc $62
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    or a
    jp hl


    call z, $1362
    ld b, c
    sbc c
    ld b, h
    sbc $44
    inc h
    ld b, l
    ld e, b
    ld b, l
    xor b
    ld b, l
    sbc d
    ld b, [hl]
    nop
    ld b, a
    ld a, h
    ld b, a
    rst $08
    ld h, d
    inc sp
    ld c, b
    cp e
    ld c, b
    ld a, [de]
    ld h, h
    jr @+$4b

    push af
    ld c, c
    ld h, h
    ld c, d
    ld b, a
    ld c, e
    sub e
    ld c, h
    db $f4
    ld c, h
    db $76
    ld c, l
    db $76
    ld c, l
    ld d, a
    ld h, h
    cp h
    ld c, a
    adc c
    ld d, b
    ret nc

    ld d, b
    inc h
    ld d, c
    xor a
    ld d, c
    di
    ld d, c
    ld c, c
    ld d, d
    rst $38
    ld d, d
    or [hl]
    ld d, e
    rst JumpTable
    ld d, e
    ld hl, sp+$53
    sbc h
    ld d, h
    ld b, c
    ld d, l
    inc hl
    ld h, l
    ret z

    ld h, l
    ld [hl], c
    ld h, [hl]
    or [hl]
    ld d, l
    ld [hl], e
    ld d, [hl]
    ld l, e
    ld d, a
    rst $08
    ld d, a
    ld [de], a
    ld h, a
    rst $38
    ld h, l
    inc sp
    ld h, a
    ld [hl+], a
    ld l, b
    ld h, a
    ld l, b
    ld e, c
    ld e, c
    ret nc

    ld d, b
    ld a, e
    ld l, b
    ld hl, sp+$68
    bit 4, d
    bit 4, d
    bit 4, d
    bit 4, d
    ld d, l
    ld l, c
    jp hl


    ld l, c
    ld e, l
    ld l, d
    add hl, bc
    ld l, h
    ld l, e
    ld l, h
    sbc l
    ld l, h
    dec d
    ld l, l
    ld a, [hl]
    ld l, [hl]
    scf
    ld [hl], b
    xor d
    ld [hl], b
    rst $30
    ld [hl], b
    inc b
    ld [hl], d
    ld d, d
    ld [hl], e
    xor $73
    ld d, d
    ld [hl], h
    ld [hl-], a
    ld [hl], l
    and l
    ld [hl], a
    jr c, @+$7b

    ld l, a
    ld a, c
    sub l
    ld e, c
    ld d, h
    ld e, d
    sub l
    ld e, c
    db $ec
    ld e, d
    cp d
    ld a, c
    ld b, [hl]
    ld e, e
    call $c25b
    ld e, h
    db $eb
    ld e, l
    ret


    jp $3eba


    ld e, $c2
    ld a, [de]
    rst $00
    db $dd
    ld h, d
    ld bc, $0463
    ld h, e
    inc b
    ld h, e
    inc h
    ld h, e
    ld e, $c4
    ld a, [de]
    rst $00
    push hl
    ld h, d
    db $ed
    ld h, d
    call Call_010_63a4
    ld l, $c6
    ld [hl], $08
    ret


    ld a, [$ccbf]
    or a
    ret z

    call Call_010_63b3
    ret nz

    call Call_010_63cc
    ret z

    call Call_010_63d0
    ret z

    jp $3eba


    jp $3eba


    ld e, $c4
    ld a, [de]
    rst $00
    inc c
    ld h, e
    inc d
    ld h, e
    call Call_010_63a4
    ld l, $c6
    ld [hl], $20
    ret


    ld a, [$ccbf]
    or a
    ret z

    call Call_010_63b3
    ret nz

    call Call_010_63ed
    ret nz

    jp $3eba


    ld h, d
    ld l, $c4
    ld a, [hl]
    or a
    jr nz, jr_010_6337

    ld [hl], $01
    ld l, $c6
    ld [hl], $08
    inc l
    ld [hl], $00
    call Call_010_6348

jr_010_6337:
    ld a, $3c
    call $24a7
    call Call_010_40a7
    ret nz

    ld l, $cb
    ld c, [hl]
    ld a, $f4
    call $224c

Call_010_6348:
    ld e, $c7
    ld a, [de]
    ld hl, $6361
    rst JumpTable
    ld a, [hl]
    or a
    jp z, $3eba

    ld a, [hl+]
    ld e, $c6
    ld [de], a
    ld a, [hl]
    ld e, $cb
    ld [de], a
    ld h, d
    ld l, $c7
    inc [hl]
    ret


    ld e, $91
    ld e, $81
    ld bc, $1d82
    ld [hl], c
    ld bc, $1d61
    add e
    ld bc, $1d51
    add h
    ld bc, $1d52
    add l
    ld bc, $1d53
    add [hl]
    ld bc, $1d63
    add a
    ld bc, $1d64
    adc b
    ld bc, $1d65
    adc c
    ld bc, $1d55
    ld a, c
    ld bc, $1d45
    ld l, c
    ld bc, $0135
    ld l, b
    inc e
    ld l, d
    ld bc, $0125
    ld e, b
    inc e
    ld l, e
    ld bc, $1d48
    ld e, e
    ld e, $38
    ld e, $37
    ld e, $36
    nop

Call_010_63a4:
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $cb
    ld a, [hl]
    ld c, a
    ld b, $cf
    ld a, [bc]
    ld l, $f0
    ld [hl], a
    ret


Call_010_63b3:
    call Call_010_40a7
    ret nz

    ld [hl], $08
    ld l, $f0
    ld a, $4d
    cp [hl]
    ld a, $f3
    jr z, jr_010_63c4

    ld a, $f4

jr_010_63c4:
    ld l, $cb
    ld c, [hl]
    call $224c
    xor a
    ret


Call_010_63cc:
    ld h, $10
    jr jr_010_63d2

Call_010_63d0:
    ld h, $01

jr_010_63d2:
    ld b, $cf
    ld e, $f0
    ld a, [de]
    ld l, a
    ld e, $cb
    ld a, [de]
    ld e, a
    sub h
    ld c, a
    ld a, [bc]
    cp l
    jr z, jr_010_63e8

    ld a, e
    add h
    ld c, a
    ld a, [bc]
    cp l
    ret nz

jr_010_63e8:
    ld a, c
    ld e, $cb
    ld [de], a
    ret


Call_010_63ed:
    ld e, $f0
    ld a, [de]
    ld b, a
    ld c, $10
    ld hl, $cf00

jr_010_63f6:
    ld a, b
    cp [hl]
    jr z, jr_010_6414

    ld a, l
    cp $ae
    ret z

    add c
    cp $f0
    jr nc, jr_010_640a

    cp $b0
    jr nc, jr_010_640a

    ld l, a
    jr jr_010_63f6

jr_010_640a:
    ld a, c
    cpl
    inc a
    ld c, a
    ld a, l
    add c
    inc a
    ld l, a
    jr jr_010_63f6

jr_010_6414:
    ld a, l
    ld e, $cb
    ld [de], a
    or d
    ret


    jr z, jr_010_6439

    call $1e30
    ld h, d
    ld l, $c6
    ld [hl], $2d
    ld l, $c2
    ld a, [hl]
    ld b, a
    and $07
    ld hl, $ccba
    call $020e
    bit 7, b
    jr z, jr_010_6439

    ld e, $c4
    ld a, $02
    ld [de], a

jr_010_6439:
    ld e, $c4
    ld a, [de]
    rst $00
    ld b, e
    ld h, h
    ld b, a
    ld h, h
    jr nc, @+$20

    ld a, $01
    ld [de], a
    ret


    call Call_010_40a7
    ret nz

    ld e, $c2
    ld a, [de]
    ld hl, $ccba
    call $0218
    jp $1e39


    jr z, jr_010_6498

    ld h, d
    ld l, $c4
    ld [hl], $02
    ld l, $c6
    ld [hl], $14
    ld l, $e4
    ld [hl], $00
    call $1956
    and $c0
    cp $80
    jr nz, jr_010_6493

    ld a, [$cd00]
    and $01
    jr z, jr_010_6493

    ld a, [$cc34]
    or a
    jp nz, Jump_010_6498

    call Call_010_6515
    inc a
    ld [$ccab], a
    ld [$cca4], a
    ld [$cbca], a
    inc a
    ld [$cfd0], a
    ld a, $08
    ld [$cfc0], a

jr_010_6493:
    ld a, $01
    ld [$cc36], a

Jump_010_6498:
jr_010_6498:
    ld hl, $cfd0
    ld a, [hl]
    inc a
    jp z, $3eba

    ld e, $c4
    ld a, [de]
    rst $00
    xor d
    ld h, h
    xor l
    ld h, h
    cp c
    ld h, h
    ld a, $01
    ld [de], a

Call_010_64ad:
    ld a, [$cc48]
    ld h, a
    ld l, $00
    call $1d3d
    jp $229b


    call Call_010_64ad
    ld hl, $cfd0
    ld a, [hl]
    cp $02
    ret z

    ld e, $c5
    ld a, [de]
    or a
    jr nz, jr_010_64d9

    call Call_010_40a7
    ret nz

    ld [hl], $b4
    inc l
    ld [hl], $08
    ld l, $f0
    ld [hl], $08
    ld l, e
    inc [hl]
    ret


jr_010_64d9:
    call Call_010_40a7
    jr nz, jr_010_64fc

    ld a, [$cd00]
    and $01
    jr z, jr_010_64fc

    ld a, [$cc34]
    or a
    jp nz, Jump_010_64fc

    call Call_010_6515
    inc a
    ld [$ccab], a
    ld [$cfd0], a
    ld [$cca4], a
    ld [$cbca], a

Jump_010_64fc:
jr_010_64fc:
    ld a, [hl+]
    cp $5a
    jr nz, jr_010_6506

    ld e, $f0
    ld a, $04
    ld [de], a

jr_010_6506:
    dec [hl]
    ret nz

    ld e, $f0
    ld a, [de]
    ld [hl], a
    ld l, $dc
    ld a, [hl]
    dec a
    xor $01
    inc a
    ld [hl], a
    ret


Call_010_6515:
    ld a, [$cc48]
    ld b, a
    ld c, $2b
    ld a, $80
    ld [bc], a
    ld c, $2d
    xor a
    ld [bc], a
    ret


    jr z, jr_010_652d

    ld e, $ea
    ld a, [de]
    cp $80
    jp nz, $3eba

jr_010_652d:
    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    add hl, sp
    ld h, l
    add hl, sp
    ld h, l
    ld [hl], d
    ld h, l
    ld a, [de]
    or a
    jr z, jr_010_656b

    call Call_010_40a7
    ret nz

    ld l, $c2
    bit 0, [hl]
    ld l, $cd
    ldh a, [$af]
    jr nz, jr_010_654f

    cp [hl]
    ret c

    jr jr_010_6551

jr_010_654f:
    cp [hl]
    ret nc

jr_010_6551:
    call Call_010_65b8
    ret nc

    call $042f
    cp $50
    ret nc

    call Call_010_65a6
    ret nz

    ld l, $c9
    ld [hl], $08
    ld e, $c2
    ld a, [de]
    or a
    ret z

    ld [hl], $18
    ret


jr_010_656b:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    inc [hl]
    ret


    ld a, [de]
    rst $00
    ld a, d
    ld h, l
    adc b
    ld h, l
    adc a
    ld h, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $10
    ld l, $e4
    set 7, [hl]
    jp $1e1e


    call Call_010_40a7
    jr nz, jr_010_6595

    ld l, e
    inc [hl]
    call Call_010_4072
    jp c, $3eba

jr_010_6595:
    call $1fdb
    ld a, [$cc00]
    and $03
    ret nz

    ld e, $dc
    ld a, [de]
    inc a
    and $07
    ld [de], a
    ret


Call_010_65a6:
    call $3ea7
    ret nz

    ld [hl], $24
    inc l
    ld [hl], $02
    call $21fd
    ld l, $d0
    ld [hl], $3c
    xor a
    ret


Call_010_65b8:
    ld l, $cb
    ldh a, [$ae]
    sub [hl]
    add $10
    cp $21
    ret nc

    ld e, $c6
    ld a, $1e
    ld [de], a
    ret


    ld e, $c4
    ld a, [de]
    or a
    jr nz, jr_010_65da

    ld h, d
    ld l, e
    inc [hl]
    ld l, $c2
    ld a, [hl]
    swap a
    rrca
    ld l, $c9
    ld [hl], a

jr_010_65da:
    call Call_010_40a7
    ret nz

    ld e, $c2
    ld a, [de]
    bit 0, a
    ld e, $cd
    ldh a, [$af]
    jr z, jr_010_65ed

    ld e, $cb
    ldh a, [$ae]

jr_010_65ed:
    ld b, a
    ld a, [de]
    sub b
    add $10
    cp $21
    ret nc

    ld e, $c6
    ld a, $21
    ld [de], a
    ld hl, $6661
    jr jr_010_6649

    ld e, $c4
    ld a, [de]
    or a
    jr nz, jr_010_6624

    ld h, d
    ld l, e
    inc [hl]
    ld l, $c2
    ld a, [hl]
    ld b, a
    swap a
    rrca
    ld l, $c9
    ld [hl], a
    ld a, b
    call $28cf
    call $042f
    and $30
    ld e, $c6
    ld [de], a
    call $2070
    jp $1e27


jr_010_6624:
    ldh a, [$a8]
    add $80
    ld b, a
    ld e, $cb
    ld a, [de]
    cp b
    ret nc

    ldh a, [$aa]
    add $a0
    ld b, a
    ld e, $cd
    ld a, [de]
    cp b
    ret nc

    call Call_010_40a7
    ret nz

    call $042f
    and $60
    add $20
    ld e, $c6
    ld [de], a
    ld hl, $6669

jr_010_6649:
    ld e, $c2
    ld a, [de]
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call $3ea7
    ret nz

    ld [hl], $1a
    inc l
    inc [hl]
    call $2215
    ld l, $c9
    ld e, l
    ld a, [de]
    ld [hl], a
    ret


    db $fc
    nop
    nop
    inc b
    inc b
    nop
    nop
    db $fc
    ld hl, sp+$00
    nop
    ld [$0008], sp
    nop
    ld hl, sp+$28
    ld a, [bc]
    ld e, $ea
    ld a, [de]
    res 7, a
    cp $03
    jp nc, Jump_010_670c

    call Call_010_66e7
    jp c, Jump_010_670c

    ld e, $c4
    ld a, [de]
    rst $00
    adc l
    ld h, [hl]
    and h
    ld h, [hl]
    push de
    ld h, [hl]
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $46
    ld l, $c6
    ld [hl], $16
    ld l, $c9
    ld [hl], $10
    ld a, $73
    call $0c74
    jp $1e27


    call Call_010_40a7
    jr nz, jr_010_66af

    ld [hl], $10
    ld l, e
    inc [hl]
    jr @+$28

jr_010_66af:
    ld a, [hl]
    rrca
    jr nc, jr_010_66bd

    ld l, $d0
    ld a, [hl]
    cp $78
    jr z, jr_010_66bd

    add $05
    ld [hl], a

jr_010_66bd:
    call $1fdb
    call $28bf
    ld e, $e1
    ld a, [de]
    ld hl, $66d2
    rst $10
    ld e, $e6
    ld a, [hl]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ret


    ld [bc], a
    inc b
    ld b, $cd
    and a
    ld b, b
    jp z, $3eba

    ld a, [hl]
    rrca
    jr nc, jr_010_66bd

    ld l, $d0
    ld a, [hl]
    sub $0a
    ld [hl], a
    jr jr_010_66bd

Call_010_66e7:
    ld e, $e6
    ld a, [de]
    add $09
    ld b, a
    ld e, $e7
    ld a, [de]
    add $09
    ld c, a
    ld hl, $dd0b
    ld e, $cb
    ld a, [de]
    sub [hl]
    add b
    sla b
    inc b
    cp b
    ret nc

    ld l, $0d
    ld e, $cd
    ld a, [de]
    sub [hl]
    add c
    sla c
    inc c
    cp c
    ret


Jump_010_670c:
    call $24ad
    jp $3eba


    jr z, jr_010_6722

    ld e, $ea
    ld a, [de]
    cp $9a
    ret nz

    ld hl, $cfc0
    set 0, [hl]
    jp $3eba


jr_010_6722:
    ld e, $c4
    ld a, [de]
    or a
    ret nz

    inc a
    ld [de], a
    ld h, d
    ld l, $e7
    ld [hl], $12
    ld l, $ff
    set 5, [hl]
    ret


    jr z, jr_010_6749

    ld h, d
    ld l, $f0
    bit 0, [hl]
    jp nz, Jump_010_67cc

    inc [hl]
    ld l, $e9
    ld [hl], $00
    ld l, $c6
    ld [hl], $41
    jp $1e39


jr_010_6749:
    ld e, $c2
    ld a, [de]
    srl a
    ld e, $c4
    rst $00
    ld d, l
    ld h, a
    add l
    ld h, a
    ld a, [de]
    or a
    jr nz, jr_010_6775

jr_010_6759:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $cb
    res 3, [hl]
    ld l, $cd
    res 3, [hl]
    ld a, $16
    call $30c7
    jp nz, $3eba

    ld e, $c2
    ld a, [de]
    call $28cf
    jp $1e27


jr_010_6775:
    call $28bf
    ld e, $e1
    ld a, [de]
    or a
    ret z

    ld bc, $fa13
    dec a
    jr z, jr_010_67a4

    jr jr_010_6797

    ld a, [de]
    or a
    jr z, jr_010_6759

    call $28bf
    ld e, $e1
    ld a, [de]
    or a
    ret z

    ld bc, $faed
    dec a
    jr z, jr_010_67a4

jr_010_6797:
    call $3ea7
    ret nz

    ld [hl], $3f
    inc l
    inc [hl]
    call $2215
    jr jr_010_67b7

jr_010_67a4:
    ld [de], a
    ld a, $81
    call $0c74
    call $3ac6
    ret nz

    ld [hl], $05
    ld l, $42
    ld [hl], $80
    jp $2215


jr_010_67b7:
    ld e, $c2
    ld a, [de]
    bit 1, a
    ld b, $04
    jr z, jr_010_67c2

    ld b, $12

jr_010_67c2:
    call $041a
    and $06
    add b
    ld l, $c9
    ld [hl], a
    ret


Jump_010_67cc:
    call Call_010_40a7
    jp z, $3eba

    ld a, [hl]
    cp $35
    jr z, jr_010_67f8

    and $0f
    ret nz

    ld a, [hl]
    and $f0
    swap a
    dec a
    ld hl, $67f0
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $3ac6
    ret nz

    ld [hl], $56
    jp $2215


    ld hl, sp+$04
    ld [$fafe], sp
    ld hl, sp+$02
    inc c

jr_010_67f8:
    ld e, $cb
    ld a, [de]
    sub $08
    and $f0
    ld b, a
    ld e, $cd
    ld a, [de]
    sub $08
    and $f0
    swap a
    or b
    ld c, a
    ld b, $a2
    ld e, $c2
    ld a, [de]
    bit 1, a
    jr z, jr_010_6816

    ld b, $a6

jr_010_6816:
    push bc
    ld a, b
    call $3a52
    pop bc
    ld a, b
    inc a
    inc c
    jp $3a52


    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_6839

    ld e, $e1
    ld a, [de]
    or a
    jr z, jr_010_6836

    bit 7, a
    jp nz, $3eba

    call Call_010_6853

jr_010_6836:
    jp $28bf


jr_010_6839:
    ld a, $01
    ld [de], a
    call $1432
    cp $f3
    jp z, $3eba

    ld h, $ce
    ld a, [hl]
    or a
    jp nz, $3eba

    ld a, $98
    call $0c74
    jp $1e30


Call_010_6853:
    push af
    xor a
    ld [de], a
    call $1432
    pop af
    ld e, $f0
    dec a
    jr z, jr_010_6862

    ld a, [de]
    ld [hl], a
    ret


jr_010_6862:
    ld a, [hl]
    ld [de], a
    ld [hl], $f3
    ret


    ld e, $c4
    ld a, [de]
    or a
    ret nz

    inc a
    ld [de], a
    ld e, $cb
    ld a, [de]
    sub $02
    ld [de], a
    ld e, $cd
    ld a, [de]
    add $03
    ld [de], a
    ret


    jr z, jr_010_688b

    ld e, $c5
    ld a, [de]
    or a
    jr nz, jr_010_68d5

    call Call_010_68cc
    ld a, $af
    jp $0c74


jr_010_688b:
    ld e, $c4
    ld a, [de]
    rst $00
    sub e
    ld l, b
    cp l
    ld l, b
    ld a, $01
    ld [de], a
    ld e, $c2
    ld a, [de]
    call $28cf
    call $042f
    and $03
    ld hl, $68b9
    rst $10
    ld a, [hl]
    ld e, $d0
    ld [de], a
    call $042f
    and $3f
    add $78
    ld h, d
    ld l, $c6
    ld [hl+], a
    ld [hl], $10
    jp $1e1e


    ld a, [bc]
    rrca
    rrca
    inc d
    ld e, $c5
    ld a, [de]
    or a
    jr nz, jr_010_68d5

    call $1fdb
    call Call_010_40a7
    jp nz, Jump_010_68e0

Call_010_68cc:
    ld h, d
    ld l, $c5
    inc [hl]
    ld a, $02
    jp $28cf


jr_010_68d5:
    call $28bf
    ld e, $e1
    ld a, [de]
    inc a
    jp z, $3eba

    ret


Jump_010_68e0:
    ld h, d
    ld l, $c7
    dec [hl]
    ret nz

    ld [hl], $10
    call $041a
    and $03
    ret nz

    and $01
    jr nz, jr_010_68f3

    ld a, $ff

jr_010_68f3:
    ld l, $c9
    add [hl]
    ld [hl], a
    ret


    ld e, $c4
    ld a, [de]
    rst $00
    ld [bc], a
    ld l, c
    jr c, jr_010_6969

    ld c, l
    ld l, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    ld b, $00
    ld a, [$cc45]
    and $30
    jr z, jr_010_691a

    ld b, $20
    and $20
    jr z, jr_010_691a

    ld b, $e0

jr_010_691a:
    ld a, [$d00d]
    add b
    ld c, a
    sub $08
    cp $90
    jr c, jr_010_692d

    ld c, $08
    cp $d0
    jr nc, jr_010_692d

    ld c, $98

jr_010_692d:
    ld b, $a0
    call $1e62
    ld e, $c9
    ld [de], a
    jp $1e1e


    call $1fdb
    ld e, $cb
    ld a, [de]
    cp $98
    jr c, jr_010_694a

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $78

jr_010_694a:
    jp $28bf


    call Call_010_40a7
    jp z, $3eba

    jr jr_010_694a

    ld e, $d7
    ld a, [de]
    or a
    jp z, $3eba

    ld e, $c4
    ld a, [de]
    rst $00
    ld l, b
    ld l, c
    add b
    ld l, c
    adc c
    ld l, c
    or a
    ld l, c
    ld h, d

jr_010_6969:
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $50
    ld l, $c6
    ld [hl], $14
    ld a, $08
    call $211e
    ld a, [hl]
    or a
    jp z, $1e27

    jp $1e1e


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    call $1e1e
    ld h, d
    ld l, $f0
    ld b, [hl]
    inc l
    ld c, [hl]
    call $1e62
    ld e, $c9
    ld [de], a
    ld h, d
    ld l, $f0
    ld e, $cb
    ld a, [de]
    sub [hl]
    add $08
    cp $11
    jr nc, jr_010_69b1

    ld l, $f1
    ld e, $cd
    ld a, [de]
    sub [hl]
    add $08
    cp $11
    jr nc, jr_010_69b1

    ld l, $c4
    inc [hl]

jr_010_69b1:
    call $1fdb
    jp $28bf


    ld a, $0b
    call $2122
    push hl
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    call $1e62
    ld e, $c9
    ld [de], a
    pop hl
    ld e, $cb
    ld a, [de]
    sub [hl]
    add $04
    cp $09
    jr nc, jr_010_69b1

    ld l, $8d
    ld e, $cd
    ld a, [de]
    sub [hl]
    add $04
    cp $09
    jr nc, jr_010_69b1

    ld a, $18
    call $211e
    xor a
    ld [hl+], a
    ld [hl], a
    jp $3eba


    ld e, $c4
    ld a, [de]
    or a
    jr nz, jr_010_6a08

    ld h, d
    ld l, e
    inc [hl]
    ld l, $cb
    ld a, [hl]
    sub $1a
    ld [hl], a
    ld l, $c6
    ld [hl], $20
    ld l, $d0
    ld [hl], $3c
    call $1e15
    ld a, $bf
    jp $0c74


jr_010_6a08:
    ld e, $d7
    ld a, [de]
    inc a
    jp z, $3eba

    call Call_010_6a28
    ret nz

    call Call_010_407e
    jp z, $3eba

    ld a, [$cc00]
    rrca
    jr c, jr_010_6a25

    ld e, $dc
    ld a, [de]
    xor $07
    ld [de], a

jr_010_6a25:
    jp $1fdb


Call_010_6a28:
    ld e, $c6
    ld a, [de]
    or a
    ret z

    ld a, $1a
    call $211e
    bit 7, [hl]
    jp z, $3eba

    call Call_010_40a7
    dec a
    ld b, $01
    cp $17
    jr z, jr_010_6a57

    or a
    jp nz, $28bf

    ld h, d
    ld l, $e4
    set 7, [hl]
    call $1e52
    ld e, $c9
    ld [de], a
    ld a, $be
    call $0c74
    ld b, $02

jr_010_6a57:
    ld a, b
    call $28cf
    or d
    ret


    jr z, jr_010_6a6c

    ld e, $ea
    ld a, [de]
    res 7, a
    cp $04
    jp c, $3eba

    jp Jump_010_6bdd


jr_010_6a6c:
    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    ld a, d
    ld l, d
    sbc c
    ld l, d
    call z, $906a
    ld l, e
    ld a, [de]
    or a
    jr z, jr_010_6a8a

jr_010_6a7e:
    call Call_010_407e
    jp z, $3eba

    call $1fdb
    jp $28bf


jr_010_6a8a:
    call Call_010_6be3
    call $1e52
    ld e, $c9
    ld [de], a
    call Call_010_6bf0
    jp $1e15


    ld a, [de]
    or a
    jr nz, jr_010_6a7e

    call Call_010_6be3
    call Call_010_6bc2
    ld e, $c3
    ld a, [de]
    or a
    ret nz

    call $1e52
    ld e, $c9
    ld [de], a
    sub $02
    and $1f
    ld b, a
    ld e, $01

Call_010_6ab5:
    call $3ea7
    ld [hl], $3a
    inc l
    ld [hl], e
    inc l
    inc [hl]
    ld l, $c9
    ld [hl], b
    ld l, $d6
    ld e, l
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl], a
    jp $21fd


    ld a, [de]
    rst $00
    sub $6a
    rla
    ld l, e
    ld e, c
    ld l, e
    ld a, [hl]
    ld l, d
    ld h, d
    ld l, $db
    ld a, $03
    ld [hl+], a
    ld [hl], a
    ld l, $c3
    ld a, [hl]
    or a
    jr z, jr_010_6af1

    ld l, e
    ld [hl], $03
    call Call_010_6bf0
    ld a, $01
    call $28cf
    jp $1e27


jr_010_6af1:
    call Call_010_6be3
    ld l, $f0
    ldh a, [$ae]
    ld [hl+], a
    ldh a, [$af]
    ld [hl], a
    ld a, $29
    call $211e
    ld a, [hl]
    ld b, $19
    cp $10
    jr nc, jr_010_6b10

    ld b, $2d
    cp $0a
    jr nc, jr_010_6b10

    ld b, $41

jr_010_6b10:
    ld e, $d0
    ld a, b
    ld [de], a
    jp $1e15


    ld h, d
    ld l, $f0
    ld b, [hl]
    inc l
    ld c, [hl]
    ld l, $cb
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    sub c
    add $02
    cp $05
    jr nc, jr_010_6b4d

    ldh a, [$8f]
    sub b
    add $02
    cp $05
    jr nc, jr_010_6b4d

    ld bc, $0502
    call $24b1
    ret nz

    ld e, $d8
    ld a, $40
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $c4
    ld a, $02
    ld [de], a
    jp $1e39


jr_010_6b4d:
    call $1e6f
    ld e, $c9
    ld [de], a
    call $1fdb
    jp $28bf


    ld a, $21
    call $2122
    bit 7, [hl]
    ret z

    ld b, $05
    call $20b0
    ret nz

    ld c, $05

jr_010_6b69:
    ld a, c
    dec a
    ld hl, $6b8b
    rst $10
    ld b, [hl]
    ld e, $02
    call Call_010_6ab5
    dec c
    jr nz, jr_010_6b69

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c9
    ld [hl], $1d
    call Call_010_6bf0
    ld a, $01
    call $28cf
    jp $1e27


    inc bc
    ld [$130d], sp
    jr @+$1c

    or a
    jr z, jr_010_6bac

    call Call_010_40a7
    jp z, Jump_010_6bdd

    inc l
    dec [hl]
    jr nz, jr_010_6ba6

    ld [hl], $07
    call $1e52
    call $1f92

jr_010_6ba6:
    call $1fdb
    jp $28bf


jr_010_6bac:
    call Call_010_6be3
    ld l, $c6
    ld [hl], $f0
    inc l
    ld [hl], $07
    ld l, $db
    ld a, $02
    ld [hl+], a
    ld [hl], a
    call $1e52
    ld e, $c9
    ld [de], a

Call_010_6bc2:
    ld a, $29
    call $211e
    ld a, [hl]
    ld b, $1e
    cp $10
    jr nc, jr_010_6bd6

    ld b, $2d
    cp $0a
    jr nc, jr_010_6bd6

    ld b, $3c

jr_010_6bd6:
    ld e, $d0
    ld a, b
    ld [de], a
    jp $1e15


Jump_010_6bdd:
    call $24ad
    jp $3eba


Call_010_6be3:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $cf
    ld a, [hl]
    ld [hl], $00
    ld l, $cb
    add [hl]
    ld [hl], a
    ret


Call_010_6bf0:
    ld a, $29
    call $211e
    ld a, [hl]
    ld b, $3c
    cp $10
    jr nc, jr_010_6c04

    ld b, $5a
    cp $0a
    jr nc, jr_010_6c04

    ld b, $78

jr_010_6c04:
    ld e, $d0
    ld a, b
    ld [de], a
    ret


    ld e, $c4
    ld a, [de]
    or a
    jr nz, jr_010_6c11

    inc a
    ld [de], a

jr_010_6c11:
    ld a, $01
    call $211e
    ld a, [hl]
    cp $7e
    jp nz, $3eba

    ld l, $a4
    ld a, [hl]
    and $80
    ld b, a
    ld e, $e4
    ld a, [de]
    and $7f
    or b
    ld [de], a
    ld l, $b7
    bit 2, [hl]
    jr z, jr_010_6c32

    res 7, a
    ld [de], a

jr_010_6c32:
    ld l, $8b
    ld b, [hl]
    ld l, $8d
    ld c, [hl]
    ld l, $88
    ld a, [hl]
    cp $04
    jr c, jr_010_6c43

    sub $04
    add a
    inc a

jr_010_6c43:
    add a
    ld hl, $6c5b
    rst JumpTable
    ld e, $cb
    ld a, [hl+]
    add b
    ld [de], a
    ld e, $cd
    ld a, [hl+]
    add c
    ld [de], a
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    xor a
    ret


    ld hl, sp+$06
    ld b, $02
    ld [bc], a
    inc c
    ld [bc], a
    ld b, $09
    ld a, [$0206]
    ld [bc], a
    db $f4
    ld [bc], a
    ld b, $1e
    call nz, $b71a
    jr z, jr_010_6c93

    ld bc, HeaderLogo
    call Call_010_40a7
    jr z, jr_010_6c8f

    ld a, [hl]
    cp $46
    jr z, jr_010_6c86

    ld bc, $0206
    cp $28
    jp nz, $28bf

jr_010_6c86:
    ld l, $e6
    ld [hl], c
    inc l
    ld [hl], c
    ld a, b
    jp $28cf


jr_010_6c8f:
    pop hl
    jp $3eba


jr_010_6c93:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $64
    jp $1e30


    ld e, $c4
    ld a, [de]
    rst $00
    xor c
    ld l, h
    db $d3
    ld l, h
    cp $6c
    inc c
    ld l, l
    ld h, d
    ld l, e
    inc [hl]
    ld e, $c2
    ld a, [de]
    or a
    jr nz, jr_010_6cbd

    ld l, $d4
    ld a, $40
    ld [hl+], a
    ld [hl], $ff
    ld l, $d0
    ld [hl], $3c

jr_010_6cbd:
    inc e
    ld a, [de]
    or a
    jr z, jr_010_6cd0

    ld l, $c4
    inc [hl]
    ld l, $e4
    res 7, [hl]
    ld l, $c6
    ld [hl], $1e
    call Call_010_6cf4

jr_010_6cd0:
    jp $1dfa


    call Call_010_407e
    jp z, $3eba

    call $1fdb
    ld c, $0e
    call $1f04
    jr nz, jr_010_6d12

    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $a0
    ld l, $e6
    ld [hl], $05
    inc l
    ld [hl], $04
    call $6e13

Call_010_6cf4:
    ld a, $6f
    call $0c74
    ld a, $01
    jp $28cf


    call Call_010_40a7
    jr nz, jr_010_6d12

    ld [hl], $14
    ld l, e
    inc [hl]
    ld a, $02
    jp $28cf


    call Call_010_40a7
    jp z, $3eba

jr_010_6d12:
    jp $28bf


    jr z, jr_010_6d33

    ld e, $ea
    ld a, [de]
    cp $9a
    jr nz, jr_010_6d33

    ld h, d
    ld l, $c2
    ld [hl], $01
    ld l, $e4
    res 7, [hl]
    ld l, $c6
    ld [hl], $96
    ld l, $c4
    ld a, $03
    ld [hl], a
    call $28cf

jr_010_6d33:
    ld e, $c4
    ld a, [de]
    rst $00
    ld b, c
    ld l, l
    ld e, a
    ld l, l
    sbc [hl]
    ld l, l
    sub $6d
    push af
    ld l, l
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c3
    ld a, [hl]
    or a
    ld a, $1e
    jr nz, jr_010_6d87

    ld l, $f0
    ldh a, [$ae]
    ld [hl+], a
    ldh a, [$af]
    ld [hl], a
    ld l, $d0
    ld [hl], $50
    ld l, $ff
    set 5, [hl]
    jp $1e30


    ld h, d
    ld l, $f0
    ld b, [hl]
    inc l
    ld c, [hl]
    ld l, $cb
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    sub c
    inc a
    cp $03
    jr nc, jr_010_6d7c

    ldh a, [$8f]
    sub b
    inc a
    cp $03
    jr c, jr_010_6d85

jr_010_6d7c:
    call $1e6f
    ld e, $c9
    ld [de], a
    jp $1fdb


jr_010_6d85:
    ld a, $a0

jr_010_6d87:
    ld l, $c6
    ld [hl], a
    ld l, e
    ld [hl], $03
    ld l, $e4
    set 7, [hl]
    ld a, $ab
    call $0c74
    ld a, $01
    call $28cf
    jp $1e1e


    inc e
    ld a, [de]
    rst $00
    xor c
    ld l, l
    or d
    ld l, l
    cp h
    ld l, l
    call $af6d
    ld [$cc76], a
    inc a
    ld [de], a
    jp $1e1e


    call Call_010_6e70
    ret z

    call $2b8a
    jp $3eba


    call Call_010_6e37
    jp c, $3eba

    ld e, $cf
    ld a, [de]
    or a
    ret nz

    ld e, $c5
    ld a, $03
    ld [de], a
    ret


    ld b, $09
    call $24af
    ret nz

    jp $3eba


    call Call_010_6e70
    jp nz, $3eba

    call Call_010_40a7
    jr z, jr_010_6ded

    ld e, $c2
    ld a, [de]
    or a
    jp nz, Jump_010_6e6a

    call $28bf
    jr jr_010_6dff

jr_010_6ded:
    ld l, $c4
    inc [hl]
    ld a, $02
    jp $28cf


    ld e, $e1
    ld a, [de]
    inc a
    jp z, $3eba

    call $28bf

jr_010_6dff:
    ld e, $e1
    ld a, [de]
    cp $ff
    ret z

    ld hl, $6e10
    rst $10
    ld e, $e6
    ld a, [hl]
    ld [de], a
    inc e
    ld [de], a
    ret


    ld [bc], a
    inc b
    ld b, $1e
    jp nz, $fe1a

    inc bc
    ret nc

    call $3ea7
    ret nz

    ld [hl], $3d
    inc l
    ld e, l
    ld a, [de]
    inc a
    ld [hl], a
    ld l, $c9
    ld e, l
    ld a, [de]
    ld [hl], a
    ld l, $d0
    ld [hl], $3c
    ld l, $d4
    ld a, $c0
    ld [hl+], a
    ld [hl], $ff
    jp $21fd


Call_010_6e37:
    ld a, $00
    call $211e
    call $1d18
    ret nc

    ld l, $82
    ld a, [hl]
    or a
    ret nz

    ld l, $ab
    ld a, [hl]
    or a
    ret nz

    ld [hl], $3c
    ld l, $b2
    ld [hl], $1e
    ld l, $a9
    ld a, [hl]
    sub $06
    ld [hl], a
    jr nc, jr_010_6e5e

    ld [hl], $00
    ld l, $a4
    res 7, [hl]

jr_010_6e5e:
    ld a, $63
    call $0c74
    ld a, $83
    call $0c74
    scf
    ret


Jump_010_6e6a:
    call $2b75
    jp $22c9


Call_010_6e70:
    ld a, $01
    call $211e
    ld a, [hl]
    cp $77
    ret z

    call $24ad
    or d
    ret


    jr z, jr_010_6e91

    ld e, $c2
    ld a, [de]
    or a
    jr nz, jr_010_6e91

    ld e, $ea
    ld a, [de]
    cp $95
    jr nz, jr_010_6e91

    ld h, d
    call Call_010_6fce

jr_010_6e91:
    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    sbc e
    ld l, [hl]
    ld [hl], c
    ld l, a
    ld a, [de]
    rst $00
    xor a
    ld l, [hl]
    call nz, $c56e
    ld l, [hl]
    ld a, [bc]
    ld l, a
    ld e, $6f
    dec h
    ld l, a
    dec a
    ld l, a
    ld e, a
    ld l, a
    ld h, l
    ld l, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c9
    ld [hl], $10
    ld l, $d0
    ld [hl], $32
    ld l, $d4
    ld [hl], $00
    inc l
    ld [hl], $fe
    jp $1e03


    ret


    inc e
    ld a, [de]
    rst $00
    ret nc

    ld l, [hl]
    jp c, $e16e

    ld l, [hl]
    nop
    ld l, a
    ld a, $01
    ld [de], a
    xor a
    ld [$cc76], a
    jp $1dfa


jr_010_6eda:
    call Call_010_6fb8
    ret nz

    jp $2b8a


    ld e, $cb
    ld a, [de]
    cp $30
    jr nc, jr_010_6eda

    ld h, d
    ld l, $cf
    ld e, $c2
    ld a, [de]
    or [hl]
    jr nz, jr_010_6eda

    ld hl, $dc15
    sra [hl]
    dec l
    rr [hl]
    ld l, $10
    ld [hl], $0a
    jp Jump_010_6fb8


    ld e, $c4
    ld a, $04
    ld [de], a
    call $1e03
    jr jr_010_6f1e

    ld c, $20
    call $232b
    jr c, jr_010_6f17

    call z, Call_010_6f9b
    jp $1fdb


jr_010_6f17:
    ld h, d
    ld l, $c4
    inc [hl]
    call Call_010_6f9b

jr_010_6f1e:
    call Call_010_6fb8
    ret z

    jp $2b75


    ld h, d
    ld l, $e1
    ld a, [hl]
    inc a
    jp z, $3eba

    dec a
    jr z, jr_010_6f3a

    ld l, $e6
    ld [hl+], a
    ld [hl], a
    call Call_010_6fed
    call Call_010_7015

jr_010_6f3a:
    jp $28bf


    ld bc, $fdc0
    call $2358
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $1e
    ld l, $c6
    ld [hl], $07
    ld a, $0d
    call $211e
    ld a, [hl]
    cp $50
    ld a, $07
    jr c, jr_010_6f5b

    ld a, $19

jr_010_6f5b:
    ld e, $c9
    ld [de], a
    ret


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld c, $20
    call $232b
    jp nc, $1fdb

    ld h, d
    jp Jump_010_6fce


    ld a, [de]
    rst $00
    ld a, c
    ld l, a
    adc d
    ld l, a
    and b
    ld l, a
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $28
    ld l, $d4
    ld [hl], $20
    inc l
    ld [hl], $fe
    jp $1e03


    ld c, $20
    call $232b
    jr c, jr_010_6f97

    call z, Call_010_6f9b
    jp $1fdb


jr_010_6f97:
    ld h, d
    ld l, $c4
    inc [hl]

Call_010_6f9b:
    ld a, $52
    jp $0c74


    ld h, d
    ld l, $e1
    bit 0, [hl]
    jp z, $28bf

    ld [hl], $00
    ld l, $c7
    inc [hl]
    ld a, [hl]
    cp $04
    jp c, $28bf

    ld l, $c2
    dec [hl]
    jr jr_010_6fce

Call_010_6fb8:
Jump_010_6fb8:
    ld h, d
    ld l, $e1
    bit 0, [hl]
    jr z, jr_010_6fc9

    ld [hl], $00
    ld l, $c7
    inc [hl]
    ld a, [hl]
    cp $08
    jr nc, jr_010_6fce

jr_010_6fc9:
    jp $28bf


    or d
    ret


Call_010_6fce:
Jump_010_6fce:
jr_010_6fce:
    ld l, $c4
    ld [hl], $05
    ld l, $e4
    res 7, [hl]
    ld l, $db
    ld a, $0a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $0c
    ld a, $01
    call $28cf
    call $1e27
    ld a, $6f
    call $0c74
    xor a
    ret


Call_010_6fed:
    ld e, $f0
    ld a, [de]
    or a
    ret nz

    call $1ce6
    ret nc

    call $1c35
    ret nc

    call $1e52
    ld hl, $d02d
    ld [hl], $10
    dec l
    ld [hl-], a
    ld [hl], $14
    dec l
    ld [hl], $01
    ld e, $e8
    ld l, $25
    ld a, [de]
    ld [hl], a
    ld e, $f0
    ld a, $01
    ld [de], a
    ret


Call_010_7015:
    ld e, $d7
    ld a, [de]
    or a
    ret z

    ld a, $24
    call $211e
    bit 7, [hl]
    ret z

    ld l, $ab
    ld a, [hl]
    or a
    ret nz

    call $1d18
    ret nc

    ld l, $aa
    ld [hl], $97
    ld l, $ab
    ld [hl], $1e
    ld l, $a9
    dec [hl]
    ret


    jp nz, $3eba

    ld e, $c4
    ld a, [de]
    rst $00
    ld b, h
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld l, d
    ld [hl], b
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $28
    ld l, $d0
    ld [hl], $50
    ld e, $c2
    ld a, [de]
    or a
    jr z, jr_010_7081

    ret


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld a, $00
    call $211e
    ld bc, $f0f0
    call $2232
    jp $1e15


    call $1fdb
    call Call_010_407e
    jp z, $3eba

    ld a, [$cc00]
    xor d
    rrca
    ret nc

    ld e, $dc
    ld a, [de]
    inc a
    and $03
    ld [de], a
    ret


jr_010_7081:
    call $1e52
    ld e, $c9
    ld [de], a
    ld c, $03
    call Call_010_708e
    ld c, $fd

Call_010_708e:
    call $3ea7
    ret nz

    ld [hl], $40
    inc l
    inc [hl]
    call $21fd
    ld l, $c9
    ld e, l
    ld a, [de]
    add c
    and $1f
    ld [hl], a
    ld l, $d6
    ld e, l
    ld a, [de]
    ld [hl+], a
    ld e, l
    ld a, [de]
    ld [hl], a
    ret


    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_70bc

    call $1fdb
    call $2142
    jp nc, $3eba

    jp $28bf


jr_010_70bc:
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $d0
    ld [hl], $78
    ld l, $cb
    ld a, $04
    add [hl]
    ld [hl], a
    ld l, $c9
    ld a, [hl]
    bit 3, a
    ld e, $cb
    jr z, jr_010_70d5

    ld e, $cd

jr_010_70d5:
    swap a
    rlca
    ld b, a
    ld hl, $70f3
    rst $10
    ld a, [de]
    add [hl]
    ld [de], a
    ld a, b
    call $28cf
    ld a, $72
    call $0c74
    ld e, $c9
    ld a, [de]
    or a
    jp z, $1e27

    jp $1e1e


    xor $12
    db $10
    xor $28
    add hl, bc
    ld e, $ea
    ld a, [de]
    res 7, a
    cp $04
    jr c, jr_010_7137

    ld e, $c4
    ld a, [de]
    or a
    jr z, jr_010_713a

    call Call_010_4072
    jr z, jr_010_7137

    ld e, $c2
    ld a, [de]
    cp $02
    jr z, jr_010_712c

    call Call_010_40a7
    jr nz, jr_010_712c

    inc l
    ld e, $f0
    ld a, [de]
    inc a
    and $01
    ld [de], a
    add [hl]
    ld [hl-], a
    ld [hl], a
    ld l, $c9
    ld a, [hl]
    add $02
    and $1f
    ld [hl], a

jr_010_712c:
    call $1fdb
    call $28bf
    ld e, $e1
    ld a, [de]
    inc a
    ret nz

jr_010_7137:
    jp $3eba


jr_010_713a:
    call Call_010_7174
    ret nz

    call $1e27
    ld h, d
    ld l, $c4
    inc [hl]
    ld e, $c2
    ld a, [de]
    cp $02
    jr nz, jr_010_715a

    ld l, $cf
    ld a, [hl]
    ld [hl], $00
    ld l, $cb
    add [hl]
    ld [hl], a
    ld l, $d0
    ld [hl], $32
    ret


jr_010_715a:
    ld l, $cf
    ld a, [hl]
    ld [hl], $fa
    add $06
    ld l, $cb
    add [hl]
    ld [hl], a
    ld l, $d0
    ld [hl], $78
    ld l, $c6
    ld a, $02
    ld [hl+], a
    ld [hl], a
    ld a, $01
    jp $28cf


Call_010_7174:
    ld e, $c2
    ld a, [de]
    bit 7, a
    jr z, jr_010_71b5

    rrca
    ld a, $04
    ld bc, $0300
    jr nc, jr_010_7188

    ld a, $03
    ld bc, $0503

jr_010_7188:
    ld e, $c9
    ld [de], a
    ld e, $c2
    xor a
    ld [de], a
    push bc
    call $20b0
    pop bc
    ret nz

    ld a, b
    ldh [$8b], a
    ld a, c
    ld bc, $71fc
    call $006d

jr_010_719f:
    push bc
    call $3ea7
    ld [hl], $42
    call $21fd
    pop bc
    ld l, $c9
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $ff8b
    dec [hl]
    jr nz, jr_010_719f

    ret


jr_010_71b5:
    dec a
    jr z, jr_010_71ba

    xor a
    ret


jr_010_71ba:
    ld b, $05
    call $20b0
    ret nz

    ld a, $09
    call $211e
    ld a, [hl]
    add $08
    and $1f
    ld b, a
    ld c, $02
    ld h, d
    ld l, $c9
    sub c
    and $1f
    ld [hl], a
    ld l, $c2
    ld [hl], c
    call Call_010_71e2
    ld a, b
    add $0c
    and $1f
    ld b, a
    ld c, $03

Call_010_71e2:
jr_010_71e2:
    push bc
    call $3ea7
    ld [hl], $42
    inc l
    ld [hl], $02
    call $21fd
    pop bc
    ld l, $c9
    ld [hl], b
    ld a, b
    add $02
    and $1f
    ld b, a
    dec c
    jr nz, jr_010_71e2

    ret


    inc c
    inc d
    inc e
    ld [$130d], sp
    jr jr_010_7221

    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    inc d
    ld [hl], d
    ld l, a
    ld [hl], d
    xor [hl]
    ld [hl], d
    ld sp, hl
    ld [hl], d
    daa
    ld [hl], e
    ld a, [de]
    or a
    jr z, jr_010_724b

    call $28bf
    call Call_010_40a7
    jp nz, $1fc6

jr_010_7221:
    ld b, $06

jr_010_7223:
    ld a, b
    dec a
    ld hl, $7245
    rst $10
    ld c, [hl]
    call Call_010_7236
    dec b
    jr nz, jr_010_7223

    call $24ad
    jp $3eba


Call_010_7236:
    call $3ea7
    ret nz

    ld [hl], $43
    inc l
    ld [hl], $03
    ld l, $c9
    ld [hl], c
    jp $21fd


    inc bc
    ld [$130d], sp
    jr @+$1f

jr_010_724b:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $dd
    ld [hl], $06
    dec l
    ld a, $0a
    ld [hl-], a
    ld [hl], a
    ld l, $cb
    ld a, [hl]
    add $06
    ld [hl], a
    ld l, $e6
    ld a, $05
    ld [hl+], a
    ld [hl], a
    ld l, $c6
    ld [hl], $0c
    ld l, $c9
    ld [hl], $10
    ld b, $50
    jr jr_010_729a

    ld a, [de]
    rst $00
    ld [hl], a
    ld [hl], d
    adc h
    ld [hl], d
    and l
    ld [hl], d
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $04
    ld l, $e4
    res 7, [hl]
    ld l, $dd
    ld [hl], $06
    dec l
    ld a, $0a
    ld [hl-], a
    ld [hl], a
    ret


    call Call_010_40a7
    ret nz

    ld [hl], $b4
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld b, $3c

Call_010_729a:
jr_010_729a:
    call Call_010_733d
    call $1e1e
    ld a, $72
    jp $0c74


    call Call_010_40a7
    jp z, $3eba

    jp $28bf


    ld a, [de]
    or a
    jr z, jr_010_72be

Jump_010_72b2:
    call Call_010_407e
    jp z, $3eba

    call $1fc6
    jp $28bf


jr_010_72be:
    ld b, $02
    call $20b0
    ret nz

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $dd
    ld [hl], $06
    dec l
    ld a, $0a
    ld [hl-], a
    ld [hl], a
    ld l, $c9
    ld [hl], $10
    ld l, $cb
    ld a, [hl]
    add $06
    ld [hl], a
    ld b, $3c
    call Call_010_729a
    ld bc, $0213
    call Call_010_72e9
    ld bc, $030d

Call_010_72e9:
    call $3ea7
    ld [hl], $43
    inc l
    ld [hl], $04
    inc l
    ld [hl], b
    ld l, $c9
    ld [hl], c
    jp $21fd


    ld a, [de]
    or a
    jr z, jr_010_730b

    call $1fc6
    ld c, $12
    call $1f04
    jp nz, $28bf

    jp $3eba


jr_010_730b:
    ld bc, $ff20
    call $2358
    ld l, e
    inc [hl]
    ld l, $e6
    ld [hl], $05
    inc l
    ld [hl], $02
    ld b, $3c
    call Call_010_733d
    call $1e27
    ld a, $01
    jp $28cf


    ld a, [de]
    or a
    jp nz, Jump_010_72b2

    ld h, d
    ld l, e
    inc [hl]
    ld b, $3c
    call Call_010_733d
    call $1e27
    ld e, $c3
    ld a, [de]
    jp $28cf


Call_010_733d:
    ld e, $c9
    ld a, [de]
    ld c, a
    call $1fff
    ld e, $d0
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    jr z, jr_010_738e

    ld e, $ea
    ld a, [de]
    cp $83
    jr z, jr_010_7370

    ld a, $01
    call $211e
    ld a, [hl]
    cp $7f
    jr nz, jr_010_7369

    ld l, $b6
    ld [hl], $01

jr_010_7369:
    ld a, $13
    ld [$cc6a], a
    jr jr_010_73db

jr_010_7370:
    ld e, $c4
    ld a, $02
    ld [de], a
    ld e, $c9
    ld a, [de]
    xor $10
    ld [de], a
    call Call_010_73ae
    call $1e52
    ld [$d02c], a
    ld a, $18
    ld [$d02d], a
    ld a, $52
    call $0c74

jr_010_738e:
    call Call_010_407e
    jr z, jr_010_73db

    ld e, $c4
    ld a, [de]
    rst $00
    sbc l
    ld [hl], e
    or [hl]
    ld [hl], e
    cp h
    ld [hl], e
    ld a, $01
    ld [de], a
    call $1e27
    ld e, $c2
    ld a, [de]
    ld hl, $73de
    rst $10
    ld e, $c9
    ld a, [hl]
    ld [de], a

Call_010_73ae:
    ld c, a
    ld b, $46
    ld a, $02
    jp $210a


jr_010_73b6:
    call $1fc6
    jp $28bf


    ld a, $00
    call $211e
    call $1d18
    jr nc, jr_010_73b6

    ld l, $ae
    ld [hl], $78
    dec l
    ld [hl], $18
    push hl
    call $1e52
    pop hl
    dec l
    xor $10
    ld [hl], a
    ld a, $4e
    call $0c74

jr_010_73db:
    jp $3eba


    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    inc d
    ld d, $18
    ld a, [de]
    inc e
    ld e, $00
    jr z, jr_010_73fa

    dec a
    jr nz, jr_010_740c

    ld e, $ea
    ld a, [de]
    cp $80
    jr nz, jr_010_740c

jr_010_73fa:
    ld e, $c2
    ld a, [de]
    or a
    ld e, $c4
    ld a, [de]
    jr z, jr_010_742e

    or a
    jr z, jr_010_740f

    call $1475
    jp z, $1fc6

jr_010_740c:
    jp $3eba


jr_010_740f:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld a, $0b
    call $211e
    ld bc, $0f00
    call $2232
    xor a
    ld [de], a
    ld bc, $5010
    ld a, $08
    call $210a
    jp $1e27


jr_010_742e:
    or a
    jr nz, jr_010_7433

    inc a
    ld [de], a

jr_010_7433:
    ld a, $29
    call $211e
    ld a, [hl]
    or a
    jr z, jr_010_740c

    ld l, $ae
    ld a, [hl]
    or a
    ret nz

    call $3ea7
    ret nz

    ld [hl], $45
    inc l
    inc [hl]
    ld l, $d6
    ld e, l
    ld a, [de]
    ld [hl+], a
    ld e, l
    ld a, [de]
    ld [hl], a
    ret


    jr nz, jr_010_74d3

    ld e, $c2
    ld a, [de]
    or a
    jr z, jr_010_7464

    ld e, $c4
    ld a, [de]
    rst $00
    sub $74
    db $eb
    ld [hl], h
    ld a, [c]
    ld [hl], h

jr_010_7464:
    ld a, $29
    call $211e
    ld a, [hl]
    or a
    jr z, jr_010_74d3

    ld l, $84
    ld a, [hl]
    cp $0a
    jr nz, jr_010_74d3

    ld l, $ae
    ld a, [hl]
    or a
    ret nz

    ld e, $c4
    ld a, [de]
    rst $00
    add a
    ld [hl], h
    adc [hl]
    ld [hl], h
    sub h
    ld [hl], h
    or [hl]
    ld [hl], h
    or [hl]
    ld [hl], h
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $1e
    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld b, $03
    call Call_010_7517
    ret nz

    ld a, b
    sub $08
    and $1f
    ld b, a
    call Call_010_74fd
    call Call_010_74fd
    call Call_010_74fd
    ld a, $ba
    call $0c74
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c6
    ld [hl], $1e
    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld b, $02
    call Call_010_7517
    ret nz

    ld a, b
    sub $06
    and $1f
    ld b, a
    call Call_010_74fd
    call Call_010_74fd
    ld a, $ba
    call $0c74

jr_010_74d3:
    jp $3eba


    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $d0
    ld [hl], $64
    ld l, $c6
    ld [hl], $08
    call Call_010_7524
    call $1e27
    call Call_010_40a7
    jr nz, jr_010_74f7

    ld l, e
    inc [hl]
    call $1475
    jr nz, jr_010_74d3

jr_010_74f7:
    call $1fdb
    jp $28bf


Call_010_74fd:
    call $3ea7
    ret nz

    ld [hl], $46
    inc l
    inc [hl]
    ld l, $c9
    ld a, b
    add $04
    and $1f
    ld [hl], a
    ld b, a
    ld l, $d6
    ld e, l
    ld a, [de]
    ld [hl+], a
    ld e, l
    ld a, [de]
    ld [hl], a
    ret


Call_010_7517:
    call $20b0
    ret nz

    call Call_010_7524
    call $1e52
    ld b, a
    xor a
    ret


Call_010_7524:
    ld a, $0b
    call $211e
    ld bc, $0a00
    call $2232
    xor a
    ld [de], a
    ret


    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    ld b, d
    ld [hl], l
    ld a, b
    ld [hl], l
    rst $38
    db $76
    dec l
    ld [hl], a
    ld b, a
    ld [hl], a
    ld b, $04
    call $20b0
    ret nz

    ld b, $04
    ld e, $d7
    ld a, [de]
    ld c, a
    call Call_010_7566
    ld [hl], $80
    ld c, h
    dec b

jr_010_7555:
    call Call_010_7566
    ld [hl], $c0
    dec b
    jr nz, jr_010_7555

    ld a, $19
    call $211e
    ld [hl], c
    jp $3eba


Call_010_7566:
    call $3ea7
    ld [hl], $47
    inc l
    ld a, $05
    sub b
    ld [hl], a
    call $21fd
    ld l, $d7
    ld [hl], c
    dec l
    ret


    ld b, $02
    call Call_010_777f
    ld l, $a9
    ld a, [hl]
    or a
    ld e, $c4
    jr z, jr_010_7599

    ld a, [de]
    rst $00
    xor c
    ld [hl], l
    dec e
    db $76
    ld [hl-], a
    db $76
    ccf
    db $76
    db $76
    db $76
    adc h
    db $76
    cp h
    db $76
    rst $00
    db $76
    ldh a, [rPCM12]

jr_010_7599:
    ld a, [de]
    cp $08
    ret z

    ld h, d
    ld l, $e4
    res 7, [hl]
    ld l, $da
    ld a, [hl]
    xor $80
    ld [hl], a
    ret


    inc e
    ld a, [de]
    rst $00
    or [hl]
    ld [hl], l
    ret c

    ld [hl], l
    db $fd
    ld [hl], l
    dec bc
    db $76
    inc e
    db $76
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d4
    ld a, $20
    ld [hl+], a
    ld [hl], $ff
    ld l, $c9
    ld [hl], $10
    ld l, $d0
    ld [hl], $78
    ld l, $cb
    ld a, $18
    ld [hl+], a
    inc l
    ld [hl], $78
    ld l, $f0
    ld [hl+], a
    ld [hl], $78
    jp $1e27


    ld c, $0e
    call $1f04
    jr z, jr_010_75eb

    call $1fdb
    ld e, $cb
    ld a, [de]
    sub $18
    ld e, $f3
    ld [de], a
    ret


jr_010_75eb:
    ld l, $c5
    inc [hl]
    inc l
    ld a, $3c
    ld [hl], a
    call $24a7
    ld a, $6f
    call $0c74
    jp $776f


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld l, $d0
    ld a, $80
    ld [hl+], a
    ld [hl], $ff
    ret


    call $1fc6
    ld e, $cb
    ld a, [de]
    cp $18
    ret nc

    ld e, $c5
    ld a, $04
    ld [de], a
    jp $1e39


    ret


    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $c9
    ld [hl], $12
    ld l, $d4
    ld a, $00
    ld [hl+], a
    ld [hl], $fe
    call $1e27
    ld h, d
    ld l, $c9
    ld a, [hl]
    cp $1e
    jr nz, jr_010_763f

    ld l, e
    inc [hl]
    call $1e1e

jr_010_763f:
    ld a, [$cc00]
    and $0f
    ld a, $a4
    call z, $0c74
    ld e, $c9
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    and $0f
    ld hl, $775f
    rst $10
    ld e, $f3
    ld a, [hl]
    ld [de], a
    ld bc, $e605

jr_010_765d:
    ld a, $0b
    call $211e
    ld a, [hl+]
    add b
    ld b, a
    ld e, $f0
    ld [de], a
    inc l
    ld a, [hl]
    add c
    ld c, a
    inc e
    ld [de], a
    ld e, $f3
    ld a, [de]
    ld e, $c9
    jp $20cc


    ld a, [$cc00]
    and $07
    ld a, $a4
    call z, $0c74
    ld e, $c9
    ld a, [de]
    inc a
    and $1f
    ld [de], a
    ld bc, $e009
    jr jr_010_765d

    call Call_010_40a7
    jr nz, jr_010_76a3

    ld [hl], $02
    ld l, $c9
    inc [hl]
    ld a, [hl]
    cp $15
    jr z, jr_010_76a6

    ld c, a
    ld b, $5a
    ld a, $03
    call $210a

jr_010_76a3:
    jp $1fc6


jr_010_76a6:
    ld l, e
    inc [hl]
    ld l, $c6
    ld a, $3c
    ld [hl], a
    ld l, $e8
    ld [hl], $fc
    call $24a7
    call $776f
    ld a, $6f
    jp $0c74


    call Call_010_40a7
    ret nz

    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $1e
    ret


    ld h, d
    ld l, $f0
    ld b, [hl]
    inc l
    ld c, [hl]
    ld l, $cb
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    cp c
    jr nz, jr_010_76e7

    ldh a, [$8f]
    cp b
    jr nz, jr_010_76e7

    ld l, e
    inc [hl]
    ld l, $e4
    res 7, [hl]
    jp $1e39


jr_010_76e7:
    call $1e6f
    ld e, $c9
    ld [de], a
    jp $1fdb


    ld a, $04
    call $211e
    ld a, [hl]
    cp $0a
    ret nz

    ld e, $c4
    ld a, $01
    ld [de], a
    ret


    ld a, [de]
    or a
    jr z, jr_010_7726

    ld b, $47
    call Call_010_777f
    call Call_010_778b
    ld a, e
    add a
    add e
    add b
    ld e, $cb
    ld [de], a
    ld a, l
    add a
    add l
    add c
    ld e, $cd
    ld [de], a

jr_010_7719:
    ld a, $1a
    call $211e
    bit 7, [hl]
    jp nz, $1e27

    jp $1e39


jr_010_7726:
    inc a
    ld [de], a
    call $28cf
    jr jr_010_7719

    ld a, [de]
    or a
    jr z, jr_010_7726

    ld b, $47
    call Call_010_777f
    call Call_010_778b
    ld a, e
    add a
    add b
    ld e, $cb
    ld [de], a
    ld a, l
    add a
    add c
    ld e, $cd
    ld [de], a
    jr jr_010_7719

    ld a, [de]
    or a
    jr z, jr_010_7726

    ld b, $47
    call Call_010_777f
    call Call_010_778b
    ld a, e
    add b
    ld e, $cb
    ld [de], a
    ld a, l
    add c
    ld e, $cd
    ld [de], a
    jr jr_010_7719

    db $10
    ld de, $1412
    ld d, $1a
    ld e, $22
    jr z, jr_010_778b

    ld e, $1a
    ld d, $14
    ld [de], a
    ld de, $a7cd
    ld a, $c0
    ld [hl], $48
    inc l
    ld [hl], $02
    ld l, $d6
    ld a, $c0
    ld [hl+], a
    ld [hl], d
    ret


Call_010_777f:
    ld a, $01
    call $211e
    ld a, [hl]
    cp b
    ret z

    pop hl
    jp $3eba


Call_010_778b:
jr_010_778b:
    ld a, $30
    call $211e
    ld b, [hl]
    inc l
    ld c, [hl]
    ld l, $cb
    ld a, [hl+]
    sub b
    sra a
    sra a
    ld e, a
    inc l
    ld a, [hl]
    sub c
    sra a
    sra a
    ld l, a
    ret


    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    or a
    ld [hl], a
    sub $77
    ld d, c
    ld a, b
    ld [hl], l
    ld a, b
    pop bc
    ld a, b
    pop hl
    ld a, b
    ld a, [de]
    or a
    jr z, jr_010_77ce

    call Call_010_40a7
    jp z, $3eba

    ld a, [hl]
    and $0f
    ret nz

    call $3ea7
    ret nz

    ld [hl], $48
    inc l
    inc [hl]
    ret


jr_010_77ce:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $96
    ret


    ld a, [de]
    rst $00
    sbc $77
    ld c, $78
    ld sp, $6278
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ldh a, [$a8]
    ld b, a
    ldh a, [$aa]
    ld c, a
    call $041a
    ld e, a
    and $07
    swap a
    add $28
    add c
    ld l, $cd
    ld [hl], a
    ld a, e
    and $70
    add $08
    ld e, a
    add b
    ld l, $cb
    ld [hl], a
    ld a, e
    cpl
    inc a
    sub $07
    ld l, $cf
    ld [hl], a
    jp $1dfa


    ld c, $20
    call $1f04
    jr nz, jr_010_7844

    call $21e0
    jp c, $3eba

    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $db
    ld a, $0b
    ld [hl+], a
    ld [hl+], a
    ld [hl], $02
    ld a, $a5
    call $0c74
    ld a, $01
    call $28cf
    ld e, $e1
    ld a, [de]
    bit 7, a
    jp nz, $3eba

    ld hl, $7847
    rst $10
    ld e, $e6
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a

jr_010_7844:
    jp $28bf


    inc b
    add hl, bc
    ld b, $0b
    add hl, bc
    inc c
    ld a, [bc]
    dec c
    dec bc
    ld c, $06
    ld b, $cd
    or b
    jr nz, @-$3e

    ld a, $00
    call $211e
    call $222f
    ld b, $06

jr_010_7861:
    call $3ea7
    ld [hl], $48
    inc l
    ld [hl], $03
    ld l, $c9
    ld [hl], b
    call $21fd
    dec b
    jr nz, jr_010_7861

    jp $3eba


    ld a, [de]
    or a
    jr z, jr_010_7884

    ld c, $18
    call $1f04
    jp z, $3eba

    jp $1fdb


jr_010_7884:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $db
    ld a, $0b
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld l, $e6
    ld [hl+], a
    ld [hl], a
    ld l, $e8
    ld [hl], $fc
    ld l, $d0
    ld [hl], $50
    ld l, $d4
    ld a, $20
    ld [hl+], a
    ld [hl], $ff
    ld l, $c9
    ld a, [hl]
    dec a
    ld bc, $78bb
    call $006d
    ld a, [bc]
    ld [hl], a
    ld a, $02
    call $28cf
    jp $1e27


    inc b
    ld [$160d], sp
    ld a, [de]
    ld e, $1a
    or a
    jr z, jr_010_78d9

    call Call_010_40a7
    jp z, $3eba

    ld a, [hl]
    and $0f
    ret nz

    call $3ea7
    ret nz

    ld [hl], $48
    inc l
    ld [hl], $05
    ret


jr_010_78d9:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $61
    ret


    ld a, [de]
    rst $00
    jp hl


    ld a, b
    ld bc, $2d79
    ld a, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $cb
    ld [hl], $28
    call $042f
    and $7f
    cp $40
    jr c, jr_010_78fb

    add $20

jr_010_78fb:
    ld e, $cd
    ld [de], a
    jp $1e27


    ld h, d
    ld l, $d4
    ld e, $ca
    call $2362
    cp $a0
    jr nc, jr_010_7917

    dec l
    ld a, [hl]
    add $10
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ret


jr_010_7917:
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $db
    ld a, $0b
    ld [hl+], a
    ld [hl+], a
    ld [hl], $02
    ld a, $a5
    call $0c74
    ld a, $01
    call $28cf
    ld e, $e1
    ld a, [de]
    bit 7, a
    jp nz, $3eba

    jp $28bf


    ld e, $c4
    ld a, [de]
    rst $00
    ld b, d
    ld a, c
    ld d, c
    ld a, c
    ld h, e
    ld a, c
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $d0
    ld [hl], $6e
    ld l, $c6
    ld [hl], $3c
    jp $1e1e


    call Call_010_40a7
    jr nz, jr_010_796c

    ld l, e
    inc [hl]
    ld a, $d3
    call $0c74
    call $1e52
    ld e, $c9
    ld [de], a
    call Call_010_407e
    jp z, $3eba

    call $1fdb

jr_010_796c:
    jp $28bf


    jp nz, $3eba

    ld e, $c4
    ld a, [de]
    rst $00
    ld a, h
    ld a, c
    adc h
    ld a, c
    sbc [hl]
    ld a, c
    ld h, d
    ld l, e
    inc [hl]
    ld l, $d0
    ld [hl], $5a
    ld l, $e6
    ld a, $04
    ld [hl+], a
    ld [hl], a
    jp $1e1e


    call Call_010_79ab
    ld e, $cb
    ld a, [de]
    cp $88
    jr c, jr_010_799b

    ld e, $c4
    ld a, $02
    ld [de], a

jr_010_799b:
    jp $28bf


    call $1fdb
    ld e, $cb
    ld a, [de]
    cp $b8
    jr c, jr_010_799b

    jp $3eba


Call_010_79ab:
    ld e, $f1
    ld a, [de]
    ld c, a
    ld b, $9a
    call $1e62
    ld e, $c9
    ld [de], a
    jp $1fdb


    jr z, jr_010_79ea

    ld e, $c4
    ld a, [de]
    cp $06
    jr nc, jr_010_79ea

    ld e, $ea
    ld a, [de]
    res 7, a
    cp $04
    jr c, jr_010_79ea

    cp $0c
    jp z, Jump_010_7bc2

    cp $20
    jr nz, jr_010_79e1

    ld a, $24
    call $2122
    res 7, [hl]
    ld e, $f3
    ld a, $01
    ld [de], a

jr_010_79e1:
    ld h, d
    ld l, $e9
    ld [hl], $40
    ld l, $f2
    ld [hl], $3c

jr_010_79ea:
    ld e, $c2
    ld a, [de]
    ld e, $c4
    rst $00
    db $f4
    ld a, c
    and h
    ld a, e
    ld h, d
    ld l, $f2
    ld a, [hl]
    or a
    jr z, jr_010_7a02

    dec [hl]
    jr nz, jr_010_7a02

    ld l, $e4
    set 7, [hl]

jr_010_7a02:
    ld a, [de]
    rst $00
    inc d
    ld a, d
    ld a, $7a
    and d
    ld a, d
    and e
    ld a, d
    cp c
    ld a, d
    dec e
    ld a, e
    ld [hl], $7b
    ld l, c
    ld a, e
    call $3ea7
    ret nz

    ld [hl], $07
    inc l
    ld [hl], $00
    inc l
    ld [hl], $08
    ld l, $d6
    ld a, $c0
    ld [hl+], a
    ld [hl], d
    ld a, $0f
    ld [$cc6a], a
    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $cb
    ld [hl], $50
    ld l, $cd
    ld [hl], $78
    ld l, $cf
    ld [hl], $fc
    jp $1e27


    inc e
    ld a, [de]
    rst $00
    ld b, a
    ld a, d
    ld d, a
    ld a, d
    add d
    ld a, d
    ld a, [$d00b]
    cp $78
    jp nc, $28bf

    ld a, $01
    ld [de], a
    ld a, $8d
    call $0c74
    ld b, $04
    call $20b0
    ret nz

    ld bc, $0404

jr_010_7a60:
    call $3ea7
    ld [hl], $4f
    inc l
    inc [hl]
    ld l, $c9
    ld [hl], c
    call $21fd
    ld a, c
    add $08
    ld c, a
    dec b
    jr nz, jr_010_7a60

    ld h, d
    ld l, $c5
    inc [hl]
    inc l
    ld [hl], $5a
    ld l, $cf
    ld [hl], $00
    jp $1e39


    call Call_010_40a7
    ret nz

    call $2e08
    ret nz

    ld [hl], $02
    ld e, $d8
    ld a, $80
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld l, $96
    ld a, $c0
    ld [hl+], a
    ld [hl], d
    ld h, d
    ld l, $c4
    inc [hl]
    inc l
    ld [hl], $00
    ret


    ret


    ld h, d
    ld l, $cf
    inc [hl]
    ld a, [hl]
    cp $fc
    jr c, jr_010_7ab6

    ld l, e
    inc [hl]
    ld l, $e4
    set 7, [hl]
    ld l, $d0
    ld [hl], $14

jr_010_7ab6:
    jp $28bf


    ld a, $01
    call $2122
    ld a, [hl]
    cp $02
    jr nz, jr_010_7b0b

    call Call_010_7bd6
    ld l, $8b
    ld a, [hl+]
    srl a
    ld b, a
    ld a, [$d00b]
    srl a
    add b
    ld b, a
    inc l
    ld a, [hl]
    srl a
    ld c, a
    ld a, [$d00d]
    srl a
    add c
    ld c, a
    ld e, $cd
    ld a, [de]
    ldh [$8e], a
    ld e, $cb
    ld a, [de]
    ldh [$8f], a
    sub b
    add $04
    cp $09
    jr nc, jr_010_7b00

    ldh a, [$8e]
    sub c
    add $04
    cp $09
    jr c, jr_010_7ab6

    ld a, [$cc00]
    and $1f
    jr nz, jr_010_7b06

jr_010_7b00:
    call $1e6f
    ld e, $c9
    ld [de], a

jr_010_7b06:
    call $1fdb
    jr jr_010_7ab6

jr_010_7b0b:
    ld h, d
    ld l, $c4
    ld e, l
    ld [hl], $06
    inc l
    ld [hl], $00
    ld l, $f2
    ld [hl], $00
    ld l, $e4
    res 7, [hl]
    ret


    call Call_010_7bd6
    call Call_010_40a7
    jr z, jr_010_7b2d

    call $14b5
    call nc, $1fdb
    jr jr_010_7ab6

jr_010_7b2d:
    ld l, $c4
    dec [hl]
    ld l, $d0
    ld [hl], $14
    jr jr_010_7ab6

    inc e
    ld a, [de]
    rst $00
    ld b, c
    ld a, e
    ld c, e
    ld a, e
    ld d, a
    ld a, d
    ld e, l
    ld a, e
    ld h, d
    ld l, e
    inc [hl]
    ld l, $e6
    ld a, $10
    ld [hl+], a
    ld [hl], a
    ret


    call $1c07
    jr nc, jr_010_7b5a

    ld e, $c5
    ld a, $02
    ld [de], a
    ld a, $8d
    call $0c74

jr_010_7b5a:
    jp $28bf


    ld h, d
    ld l, $c4
    inc [hl]
    ld l, $c6
    ld a, $3c
    ld [hl], a
    call $24a7
    call Call_010_40a7
    ret nz

    ld a, $0f
    ld [hl], a
    call $24a7

jr_010_7b73:
    call $042f
    and $0f
    cp $0d
    jr nc, jr_010_7b73

    inc a
    ld c, a
    push bc

jr_010_7b7f:
    call $042f
    and $0f
    cp $09
    jr nc, jr_010_7b7f

    pop bc
    inc a
    swap a
    or c
    ld c, a
    ld b, $ce
    ld a, [bc]
    or a
    jr nz, jr_010_7b73

    ld a, $48
    call $224c
    ld e, $c7
    ld a, [de]
    inc a
    cp $75
    jp z, $3eba

    ld [de], a
    ret


    ld a, [de]
    or a
    jr nz, jr_010_7bb3

    ld h, d
    ld l, e
    inc [hl]
    ld l, $c6
    ld [hl], $5a
    ld l, $d0
    ld [hl], $0f

jr_010_7bb3:
    call Call_010_40a7
    jp z, $3eba

    ld l, $da
    ld a, [hl]
    xor $80
    ld [hl], a
    jp $1fdb


Jump_010_7bc2:
    ld h, d
    ld l, $c6
    ld [hl], $78
    ld l, $ec
    ld a, [hl]
    ld l, $c9
    ld [hl], a
    ld l, $c4
    ld [hl], $05
    ld l, $d0
    ld [hl], $50
    ret


Call_010_7bd6:
    ld e, $f3
    ld a, [de]
    or a
    ret z

    ld a, [$ccf2]
    or a
    ret nz

    ld [de], a
    ld a, $29
    call $2122
    ld a, [hl]
    or a
    ret z

    ld l, $a4
    set 7, [hl]
    ret


    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

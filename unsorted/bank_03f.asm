; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX

function_03f_4000::
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld hl, $409d
    ld de, $de00
    ld b, $80
    call CopyHLToDE
    pop af
    ldh [rSVBK], a
    ret


    ld a, $02
    ldh [rSVBK], a
    ldh a, [$a4]
    ld d, a
    ldh a, [$a6]
    ld e, a
    ld l, $80
    call Call_03f_402d
    ldh a, [$a5]
    ld d, a
    ldh a, [$a7]
    ld e, a
    ld l, $c0

Call_03f_402d:
jr_03f_402d:
    ld a, d
    or a
    ret z

    srl d
    jr nc, jr_03f_405f

    ld h, $de
    srl e
    jr nc, jr_03f_403b

    inc h

jr_03f_403b:
    ldh a, [$96]
    inc a
    jr nz, jr_03f_404e

    call Call_03f_4067
    call Call_03f_4067
    call Call_03f_4067
    call Call_03f_4067
    jr jr_03f_402d

jr_03f_404e:
    push de
    ld b, $df
    ld c, l
    res 7, c
    ld e, $08

jr_03f_4056:
    ld a, [hli]
    ld [bc], a
    inc c
    dec e
    jr nz, jr_03f_4056

    pop de
    jr jr_03f_402d

jr_03f_405f:
    ld a, l
    add $08
    ld l, a
    srl e
    jr jr_03f_402d

Call_03f_4067:
    ld a, [hli]
    ld c, a
    and $e0
    ld b, a
    ld a, [hl]
    and $03
    or b
    swap a
    ld b, a
    ld a, [hl-]
    and $7c
    rrca
    rrca
    push hl
    ld hl, $de60
    rst AddAToHL
    ld a, b
    ld b, [hl]
    ld hl, $de21
    rst AddAToHL
    ld a, [hl-]
    or b
    ld b, a
    ld a, c
    and $1f
    ld c, [hl]
    ld hl, $de00
    rst AddAToHL
    ld a, [hl]
    or c
    pop hl
    ld c, h
    res 7, l
    ld h, $df
    ld [hli], a
    ld a, b
    ld [hli], a
    set 7, l
    ld h, c
    ret


    nop
    dec b
    rlca
    ld [$0b0a], sp
    inc c
    ld c, $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03f_40c8

    ld a, [de]
    dec de
    dec de
    inc e
    inc e
    dec e
    dec e
    ld e, $1e
    ld e, $1f
    rra
    rra
    rra
    nop
    nop
    and b
    nop
    ldh [rP1], a
    nop
    ld bc, $0140
    ld h, b

jr_03f_40c8:
    ld bc, $0180
    ret nz

    ld bc, $0200
    jr nz, jr_03f_40d3

    ld b, b
    ld [bc], a

jr_03f_40d3:
    ld h, b
    ld [bc], a
    add b
    ld [bc], a
    and b
    ld [bc], a
    ret nz

    ld [bc], a
    ldh [rSC], a
    nop
    inc bc
    jr nz, jr_03f_40e4

    ld b, b
    inc bc
    ld h, b

jr_03f_40e4:
    inc bc
    ld h, b
    inc bc
    add b
    inc bc
    add b
    inc bc
    and b
    inc bc
    and b
    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    nop
    inc d
    inc e
    jr nz, @+$2a

    inc l
    jr nc, jr_03f_413d

    ld b, b
    ld b, h
    ld c, b
    ld c, h
    ld d, b
    ld d, h
    ld e, b
    ld e, h
    ld h, b
    ld h, h
    ld l, b
    ld l, h
    ld l, h
    ld [hl], b
    ld [hl], b
    ld [hl], h
    ld [hl], h
    ld a, b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, h
    ld a, h

Call_03f_411d:
Jump_03f_411d:
    ldh a, [rLCDC]
    rlca
    ret nc

    call $08c7
    ret


    ld a, [$cc1a]
    or a
    call nz, $05b6
    ld a, [$cc1b]
    or a
    call nz, $05b6
    ld hl, $cc07

jr_03f_4136:
    ld a, [hli]
    ld e, a
    ld d, [hl]
    dec l
    or a
    jr z, jr_03f_4143

jr_03f_413d:
    call Call_03f_42cf
    call Call_03f_411d

jr_03f_4143:
    inc l
    ld [hl], d
    inc l
    ld a, l
    cp $17
    jr c, jr_03f_4136

    ld hl, $cc18
    ld e, [hl]
    ld [hl], $00
    jp Jump_03f_41f5


Call_03f_4154:
    call Call_03f_4327
    ld d, $d0

jr_03f_4159:
    call Call_03f_4337
    call Call_03f_430e
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_4159

    ld d, $d0

jr_03f_4167:
    call Call_03f_4347
    call Call_03f_430e
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_4167

    ld d, $d0

jr_03f_4175:
    call Call_03f_4355
    call Call_03f_430e
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_4175

    ld d, $d6

jr_03f_4183:
    call Call_03f_435c
    call Call_03f_430e
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_4183

    ld a, [$cc1c]
    or a
    jr z, jr_03f_419a

    call Call_03f_433a
    jr jr_03f_41a7

jr_03f_419a:
    ld hl, $cc1d
    ld a, [hli]
    or a
    ret z

    ld e, [hl]
    ld [hl], $00
    call Call_03f_443c
    ld a, [hl]

jr_03f_41a7:
    call Call_03f_42bb
    call Call_03f_411d
    ld a, e
    call Call_03f_4270
    ld a, l
    sub $07
    srl a

jr_03f_41b6:
    inc a
    and $07
    ld b, a
    ld hl, $cc08
    rst JumpTable
    ld a, [hl-]
    ld d, a
    ld c, [hl]
    inc e
    call Call_03f_42cf
    ld a, d
    or a
    jr z, jr_03f_41cf

    ld a, c
    push de
    call Call_03f_42bb
    pop de

jr_03f_41cf:
    call Call_03f_4201
    ld d, $00
    ld hl, $5afc
    add hl, de
    add hl, de
    add hl, de
    bit 7, [hl]
    ld a, b
    jr z, jr_03f_41b6

    ld [$cc05], a
    xor a
    ld [$cc1c], a
    ld [$cc1d], a
    jp Jump_03f_42a9


    push de
    call Call_03f_4154
    pop de
    ld a, $03
    jr jr_03f_41b6

Jump_03f_41f5:
    ld hl, $cc18
    ld a, e
    cp [hl]
    ret z

    call Call_03f_42cf
    jp Jump_03f_411d


Call_03f_4201:
    push bc
    push de
    push hl
    ld a, $80
    ldh [$ac], a
    ld d, $d0

jr_03f_420a:
    call Call_03f_4337
    call Call_03f_4256
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_420a

    ld a, $c0
    ldh [$ac], a
    ld d, $d0

jr_03f_421c:
    call Call_03f_4347
    call Call_03f_4256
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_421c

    ld a, $40
    ldh [$ac], a
    ld d, $d2

jr_03f_422e:
    call Call_03f_4355
    call Call_03f_4256
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_422e

    ld a, $00   ; xor a
    ldh [$ac], a
    ld d, $d6

jr_03f_4240:
    call Call_03f_435c
    call Call_03f_4256
    inc d
    ld a, d
    cp $e0
    jr c, jr_03f_4240

    call $0d7e
    call Call_03f_411d
    pop hl
    pop de
    pop bc
    ret


Call_03f_4256:
    or a
    ret z

    call Call_03f_4270
    ldh a, [$ac]
    ld e, a
    ld a, [de]
    or a
    ret z

    ld a, e
    add $1c
    ld e, a
    ld a, [de]
    bit 3, a
    ret nz

    inc e
    ld a, [de]
    and $1f
    add c
    ld [de], a
    ret


Call_03f_4270:
    or a
    ret z

    ld hl, $cc07
    ld b, $08
    ld c, a

jr_03f_4278:
    ld a, [hli]
    cp c
    jr z, jr_03f_4284

    inc l
    dec b
    jr nz, jr_03f_4278

    ld c, $01
    scf
    ret


jr_03f_4284:
    ld [hl], $01
    dec l
    ld a, l
    sub $07
    swap a
    ld c, a
    ret


Call_03f_428e:
    ld b, $08

jr_03f_4290:
    call Call_03f_42b3
    inc l
    ld a, [hl-]
    or a
    jr z, jr_03f_42a2

    call Call_03f_42a9
    dec b
    jr nz, jr_03f_4290

    ld c, $01
    scf
    ret


jr_03f_42a2:
    ld a, l
    sub $07
    swap a
    ld c, a
    ret


Call_03f_42a9:
Jump_03f_42a9:
    ld a, [$cc05]
    inc a
    and $07
    ld [$cc05], a
    ret


Call_03f_42b3:
    ld a, [$cc05]
    ld hl, $cc07
    rst JumpTable
    ret


Call_03f_42bb:
    or a
    ret z

    push hl
    push bc
    ld e, a
    call Call_03f_4270
    jr nc, jr_03f_42cb

    call Call_03f_428e
    call nc, Call_03f_42cf

jr_03f_42cb:
    ld a, c
    pop bc
    pop hl
    ret


Call_03f_42cf:
    ld a, l
    cp $18
    jr nc, jr_03f_42e6

    push hl
    ld hl, $cc07

jr_03f_42d8:
    ld a, [hli]
    cp e
    jr nz, jr_03f_42df

    xor a
    ld [hl-], a
    ld [hli], a

jr_03f_42df:
    inc l
    ld a, l
    cp $17
    jr c, jr_03f_42d8

    pop hl

jr_03f_42e6:
    push bc
    push de
    push hl
    ld [hl], e
    inc l
    ld [hl], $01
    dec l
    ld a, l
    cp $18
    jr c, jr_03f_42fa

    ld b, $92
    ld hl, $5d50
    jr jr_03f_4302

jr_03f_42fa:
    sub $07
    or $80
    ld b, a
    ld hl, $5afb

jr_03f_4302:
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    call $1670
    pop hl
    pop de
    pop bc
    ret


Call_03f_430e:
    or a
    ret z

    push bc
    push hl
    ld hl, $cc07
    ld c, a

jr_03f_4316:
    ld a, [hli]
    cp c
    jr z, jr_03f_4322

    inc l
    ld a, l
    cp $17
    jr c, jr_03f_4316

    jr jr_03f_4324

jr_03f_4322:
    ld [hl], $01

jr_03f_4324:
    pop hl
    pop bc
    ret


Call_03f_4327:
    push bc
    push hl
    ld hl, $cc07
    ld b, $08
    xor a

jr_03f_432f:
    inc l
    ld [hli], a
    dec b
    jr nz, jr_03f_432f

    pop hl
    pop bc
    ret


Call_03f_4337:
    ld e, $81
    ld a, [de]

Call_03f_433a:
    push bc
    add a
    ld c, a
    ld b, $00
    ld hl, $5d71
    add hl, bc
    add hl, bc
    pop bc
    ld a, [hli]
    ret


Call_03f_4347:
    push bc
    ld e, $c1
    ld a, [de]
    call $01b7
    ld hl, $6103
    add hl, bc
    pop bc
    ld a, [hli]
    ret


Call_03f_4355:
    push bc
    call Call_03f_4437
    pop bc
    ld a, [hli]
    ret


Call_03f_435c:
    ld e, $01
    ld a, [de]
    ld l, a
    add a
    add l
    ld hl, $63a3
    rst AddAToHL
    ld a, [hli]
    ret

Farcall_03f_4368::
    call Call_03f_4337
    call Call_03f_42bb
    ld c, a
    call c, Call_03f_411d
    ld e, $81
    ld a, [de]
    ld e, $a4
    bit 7, [hl]
    jr z, jr_03f_437d

    set 7, a

jr_03f_437d:
    ld [de], a
    inc e
    ld a, [hli]
    and $7f
    ld [de], a
    bit 7, [hl]
    jr z, jr_03f_439f

    ld a, [hli]
    and $7f
    ld l, [hl]
    ld h, a
    ld e, $82
    ld a, [de]
    ld b, a
    ld e, $00

jr_03f_4392:
    bit 7, [hl]
    jr z, jr_03f_439f

    ld a, e
    cp b
    jr z, jr_03f_439f

    inc hl
    inc hl
    inc e
    jr jr_03f_4392

jr_03f_439f:
    ld a, [hli]
    push hl
    add a
    ld hl, $5ff3
    rst JumpTable
    ld e, $a6
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    pop hl
    ld a, [hl]
    and $0f
    add a
    add c
    ld e, $9d
    ld [de], a
    ld a, [hl]
    swap a
    and $0f
    dec e
    ld [de], a
    dec e
    ld [de], a
    xor a
    jp $2772


    call Call_03f_4347
    call Call_03f_42bb
    ld c, a
    call c, Call_03f_411d
    ld e, $c1
    ld a, [de]
    bit 7, [hl]
    jr z, jr_03f_43dc

    set 7, a

jr_03f_43dc:
    ld e, $e4
    ld [de], a
    inc e
    ld a, [hli]
    and $7f
    ld [de], a
    inc e
    ld a, [hl]
    swap a
    and $0f
    ld [de], a
    inc e
    ld a, [hli]
    and $0f
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    inc e
    ld a, [hli]
    ld [de], a
    ld e, $dd
    ld a, [hli]
    add c
    ld [de], a
    dec e
    ld a, [hli]
    ld [de], a
    dec e
    ld [de], a
    xor a
    jp $28cf


    call Call_03f_4355
    call Call_03f_42bb
    ld c, a
    call c, Call_03f_411d
    ld a, [hli]
    and $7f
    add c
    ld e, $5d
    ld [de], a
    ld a, [hl]
    swap a
    and $0f
    dec e
    ld [de], a
    dec e
    ld [de], a
    ld a, [hl]
    and $0f
    ret


    call Call_03f_435c
    call Call_03f_42bb
    ld c, a
    call c, Call_03f_411d
    ld a, [hli]
    add c
    ld e, $1d
    ld [de], a
    ld a, [hl]
    dec e
    ld [de], a
    dec e
    ld [de], a
    ret


Call_03f_4437:
    ld h, d
    ld l, $41
    ld a, [hli]
    ld e, [hl]

Call_03f_443c:
    ld c, a
    ld b, $00
    ld hl, $6425
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl-]
    rlca
    ret nc

    ld a, [hli]
    inc hl
    ld h, [hl]
    ld l, a
    ld c, $03
    ld a, e
    or a
    ret z

jr_03f_4451:
    inc hl
    bit 7, [hl]
    dec hl
    ret nz

    add hl, bc
    dec a
    jr nz, jr_03f_4451

    ret


    ld hl, $cc1a
    ld a, e
    cp $1a
    jr nc, jr_03f_4464

    inc l

jr_03f_4464:
    cp [hl]
    ret z

    ld [hl], a
    push de
    call $05b6
    pop de
    ret


    ld a, l
    cp $60
    jr nc, jr_03f_4494

    ldh [$8b], a
    ld hl, $c692
    call $0205
    jr z, jr_03f_449e

    push bc
    ldh a, [$8b]
    ld c, a
    ld b, $00
    ld hl, $6c2b
    add hl, bc
    add hl, bc
    add hl, bc
    pop bc
    ld a, [hli]
    ld l, a
    or a
    jr z, jr_03f_4491

    ld h, $c6
    ld l, [hl]

jr_03f_4491:
    ld h, $01
    ret


jr_03f_4494:
    and $07
    ld hl, $ccc2
    call $0205
    jr nz, jr_03f_4491

jr_03f_449e:
    ld h, $00
    ret


    push hl
    ld a, b
    call Call_03f_44a8
    pop hl
    ret


Call_03f_44a8:
    ld b, a
    ld hl, $c692
    call $0218
    ld a, b
    cp $20
    ret nc

    ld hl, $c680
    ld b, $12

jr_03f_44b8:
    cp [hl]
    jr z, jr_03f_44c0

    inc l
    dec b
    jr nz, jr_03f_44b8

    ret


jr_03f_44c0:
    ld [hl], $00
    ld hl, $cbea
    set 0, [hl]
    ret


    push hl
    push de
    ld a, b
    ldh [$8b], a
    push bc
    ld hl, $4544
    call Call_03f_44f0
    jr z, jr_03f_44dd

    call Call_03f_44a8
    ld a, c
    call Call_03f_44a8

jr_03f_44dd:
    pop bc
    ld a, b
    call Call_03f_4501
    push af
    ld hl, $453a
    call Call_03f_44f0
    call nz, Call_03f_4501
    pop bc
    pop de
    pop hl
    ret


Call_03f_44f0:
    ldh a, [$8b]
    ld c, a

jr_03f_44f3:
    ld a, [hli]
    cp c
    jr z, jr_03f_44fd

    or a
    ret z

    inc hl
    inc hl
    jr jr_03f_44f3

jr_03f_44fd:
    ld a, [hli]
    ld c, [hl]
    or a
    ret


Call_03f_4501:
    ldh [$8b], a
    call Call_03f_4b05
    call Call_03f_46bc
    ld hl, $c692
    ldh a, [$8b]
    call $020e
    push bc
    ldh a, [$8b]
    ld c, a
    ld b, $00
    ld hl, $6c2b
    add hl, bc
    add hl, bc
    add hl, bc
    pop bc
    ld d, $c6
    ld a, [hli]
    ld e, a
    or a
    jr nz, jr_03f_4527

    ld e, $e6

jr_03f_4527:
    ld a, [hl]
    and $0f
    push hl
    call Call_03f_454e
    pop hl
    bit 7, [hl]
    inc hl
    ld a, [hli]
    jr nz, jr_03f_4539

    call $0c74
    xor a

jr_03f_4539:
    ret


    add hl, de
    jr nz, jr_03f_455d

    ld a, [hli]
    add hl, hl
    ld b, b
    ld c, c
    ld e, b
    nop
    nop
    ld b, [hl]
    ld b, l
    nop
    ld d, d
    ld d, b
    ld d, c
    rla
    ld e, $00
    nop

Call_03f_454e:
    rst $00
    add hl, sp
    ld b, l
    adc b
    ld b, l
    adc [hl]
    ld b, l
    sub d
    ld b, l
    sub h
    ld b, l
    add c
    ld b, l
    add h
    ld b, l

jr_03f_455d:
    sbc l
    ld b, l
    db $76
    ld b, l
    ld a, [de]
    ld b, [hl]
    xor d
    ld b, l
    ld l, a
    ld b, l
    xor [hl]
    ld b, l
    jp nz, $cd45

    ld b, l
    inc b
    ld b, [hl]
    ld a, c
    ld hl, $ccc2
    jp $020e


    ld a, [de]
    cp c
    ret nc

    ld a, c
    ld [de], a
    ld hl, $cbea
    set 0, [hl]
    ret


    ld a, c
    ld [de], a
    ret


    ld a, [$cc55]
    ld c, a
    ld a, c
    ld h, d
    ld l, e
    jp $020e


    ld a, [de]
    inc a
    ld [de], a
    ret


    ld c, $01

Call_03f_4594:
    ld a, [de]
    add c
    daa
    jr nc, jr_03f_459b

    ld a, $99

jr_03f_459b:
    ld [de], a
    ret


    ld a, [$cc55]
    add e
    ld l, a
    ld h, d
    inc [hl]
    ld hl, $cbea
    set 4, [hl]
    ret


    ld a, [de]
    add c
    ld [de], a
    ret


    ld h, d
    ld l, e
    ld a, $a2
    cp e
    ld a, [hli]
    jr nz, jr_03f_45be

    cp [hl]
    jr nz, jr_03f_45be

    ld a, $57
    jp $0c74


jr_03f_45be:
    add c
    ld [de], a
    jr jr_03f_45c8

    call Call_03f_4594
    ld h, d
    ld l, e
    inc l

jr_03f_45c8:
    cp [hl]
    ret c

    ld a, [hl-]
    ld [hl], a
    ret


    ld a, c
    call $175a
    ld a, e
    cp $a5
    jr nz, jr_03f_45ea

    ld a, $01
    call $30c7
    jr nz, jr_03f_45ea

    ld h, d
    ld l, $27
    call $0181
    jr nc, jr_03f_45ea

    ld a, $01
    call $30cd

jr_03f_45ea:
    ld h, d
    ld l, e
    call $0181
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld bc, $0999
    call $01d6
    dec a
    ret nz

    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    ld a, $61
    jp $0c74


    call Call_03f_4594
    call $17b1
    ld a, [$c6ae]
    ld hl, $4616
    rst AddAToHL
    ld a, [de]
    cp [hl]
    ret c

    ld a, [hl]
    ld [de], a
    ret


    jr nz, @+$52

    sbc c
    set 6, c
    call Call_03f_4675
    cp $64
    jr c, jr_03f_4629

    call Call_03f_462f
    call Call_03f_4675

jr_03f_4629:
    ld a, c
    ld [$c5ff], a
    jr jr_03f_4675

Call_03f_462f:
    ldh a, [rSVBK]
    push af
    ld a, $04
    ldh [rSVBK], a
    ld hl, $d3a0
    ld b, $40
    call $044b
    ld de, $c5c0
    ld b, $40

jr_03f_4643:
    ld a, [de]
    and $3f
    ld hl, $d3a0
    rst AddAToHL
    inc [hl]
    inc e
    dec b
    jr nz, jr_03f_4643

    ld hl, $d3a0
    ld de, $0000
    ld b, $40

jr_03f_4657:
    ld a, [hl]
    cp d
    jr c, jr_03f_465d

    ld d, a
    ld e, l

jr_03f_465d:
    inc l
    dec b
    jr nz, jr_03f_4657

    ld a, e
    sub $a0
    or $40
    ld e, a
    pop af
    ldh [rSVBK], a
    ld hl, $c5ff

jr_03f_466d:
    ld a, [hl-]
    cp e
    jr nz, jr_03f_466d

    inc hl
    ld [hl], $ff
    ret


Call_03f_4675:
jr_03f_4675:
    ld hl, $c5c0

jr_03f_4678:
    ld a, [hl]
    cp $ff
    jr nz, jr_03f_4685

    push hl
    call Call_03f_468d
    pop hl
    jr nc, jr_03f_468b

    ld [hl], a

jr_03f_4685:
    inc l
    ld a, l
    cp $00  ; and a / or a
    jr nz, jr_03f_4678

jr_03f_468b:
    jr jr_03f_469d

Call_03f_468d:
jr_03f_468d:
    ld a, [hli]
    cp $ff
    jr nz, jr_03f_4698

    ld a, l
    cp $00  ; and a / or a
    jr nz, jr_03f_468d

    ret


jr_03f_4698:
    dec hl
    ld [hl], $ff
    scf
    ret


jr_03f_469d:
    push de
    ld hl, $c5c0
    ld de, $4000

jr_03f_46a4:
    ld a, [hli]
    cp $ff
    jr z, jr_03f_46aa

    inc e

jr_03f_46aa:
    dec d
    jr nz, jr_03f_46a4

    push bc
    ld a, e
    call $0259
    swap c
    or c
    ld [$c6c7], a
    pop bc
    ld b, e
    pop de
    ret


Call_03f_46bc:
    ldh a, [$8b]
    cp $20
    ret nc

    push bc
    call Call_03f_46e2
    pop bc
    ret nc

    jp z, $17b1

    push bc
    cpl
    add $80
    ld l, a
    ldh a, [$8b]
    ld c, a
    cp $0c
    jr nz, jr_03f_46db

    ld a, [hl]
    ld [hl], c
    call Call_03f_46e2

jr_03f_46db:
    ld hl, $cbea
    set 0, [hl]
    pop bc
    ret


Call_03f_46e2:
    ld c, a
    ld hl, $c680
    ld b, $12

jr_03f_46e8:
    ld a, [hli]
    cp c
    jr z, jr_03f_46f6

    dec b
    jr nz, jr_03f_46e8

    dec b
    ld l, $80

jr_03f_46f2:
    ld a, [hli]
    or a
    jr nz, jr_03f_46f2

jr_03f_46f6:
    dec l
    ld [hl], c
    ld a, l
    sub $82
    bit 7, b
    ret


    ld a, l
    push de
    call Call_03f_4731
    push bc
    ld hl, $0000
    ld a, d
    or a
    jr z, jr_03f_4715

    cpl
    inc a
    ld l, a
    ld h, $ff
    ld a, d
    call $01b7
    add hl, bc

jr_03f_4715:
    push hl
    ld a, e
    ld hl, $6d87
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    pop bc
    add hl, bc
    ld de, $cec0
    ld b, $07

jr_03f_4725:
    ld a, [hli]
    ld [de], a
    inc e
    dec b
    jr nz, jr_03f_4725

    ld hl, $cec0
    pop bc
    pop de
    ret


Call_03f_4731:
    ld d, a
    ld hl, $6d63

jr_03f_4735:
    ld a, [hli]
    or a
    jr z, jr_03f_4740

    cp d
    jr z, jr_03f_4740

    inc hl
    inc hl
    jr jr_03f_4735

jr_03f_4740:
    cp $13
    jr nz, jr_03f_474d

    ld a, [$c6b3]
    cp $02
    jr nz, jr_03f_474d

    inc a
    rst AddAToHL

jr_03f_474d:
    ld a, [hli]
    ld e, [hl]
    or a
    jr z, jr_03f_4756

    ld l, a
    ld h, $c6
    ld d, [hl]

jr_03f_4756:
    ret


    ld a, c
    or a
    set 7, a
    jr nz, jr_03f_4763

    ldh a, [$ac]
    add $02
    ld e, a
    ld a, [de]

jr_03f_4763:
    ld hl, $4a75
    rst AddAToHL
    ld a, [hl]
    ld c, a
    cp $ff
    jr z, jr_03f_47ae

    swap a
    rrca
    and $07
    ld hl, $481d
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $041a
    and $3f
    call $0205
    jr z, jr_03f_47ae

    ld a, c
    and $1f
    ld hl, $47dd
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $041a
    and $1f
    rst AddAToHL
    ld a, [hl]
    ld c, a
    ld a, [$c63a]
    dec a
    ld a, c
    jr nz, jr_03f_47a2

    ld hl, $4865
    rst AddAToHL
    ld a, [hl]
    ld c, a

jr_03f_47a2:
    ld hl, $47fd
    rst JumpTable
    ld a, [hli]
    ld b, [hl]
    ld l, a
    ld h, $c6
    ld a, [hl]
    and b
    ret nz

jr_03f_47ae:
    ld c, $ff
    ret


    cp e

jr_03f_47b2:
    ld b, a
    jp $cb47


    ld b, a
    db $d3
    ld b, a
    db $db

jr_03f_47ba:
    ld b, a
    dec bc
    ld d, $2e
    jr nc, jr_03f_47f1

    ld [hl-], a
    ld d, $32
    ld [bc], a
    dec sp
    inc d
    inc h
    ld a, [hl-]
    dec sp
    ld a, $3f
    rrca
    ld [de], a
    dec e
    add hl, sp
    inc a
    dec a
    inc hl
    ld [hli], a
    ld a, [bc]
    inc l
    dec de
    ld e, $1f
    jr nz, jr_03f_4804

    dec hl
    add hl, bc
    add hl, hl
    ld [hl], l
    ld c, b
    sub l
    ld c, b
    or l
    ld c, b
    push de
    ld c, b
    push af
    ld c, b
    dec d
    ld c, c
    dec [hl]
    ld c, c
    ld d, l
    ld c, c
    ld [hl], l
    ld c, c
    sub l
    ld c, c

jr_03f_47f1:
    or l
    ld c, c
    push de
    ld c, c
    push af
    ld c, c
    dec d
    ld c, d
    dec [hl]
    ld c, d
    ld d, l
    ld c, d
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp

jr_03f_4804:
    rst $38
    sub d
    ld [$0196], sp
    sub [hl]
    ld [bc], a
    sub [hl]
    inc b
    sub [hl]
    ld [$1096], sp
    rlca
    nop
    rlca
    nop
    ld a, [hl-]
    ld bc, $013a
    ld a, [hl-]
    ld bc, $ff08
    dec l
    ld c, b
    dec l
    ld c, b
    dec [hl]
    ld c, b
    dec a
    ld c, b
    ld b, l
    ld c, b
    ld c, l
    ld c, b
    ld d, l
    ld c, b
    ld e, l
    ld c, b
    ld [$0000], sp
    jr nz, jr_03f_47b2

    nop
    nop
    db $10
    ld [$0810], sp
    jr nz, jr_03f_47ba

    ld bc, $1080
    ld [$0950], sp
    inc h
    adc b
    add c
    or b
    ld [de], a
    ld c, c
    ld d, b
    ld c, c
    inc h
    adc b
    sbc c
    or d
    jp nc, $e3b2

    xor d
    call z, $8f81
    add $6c
    cp d
    rst $38
    ld [$bddd], a
    cp a
    sub $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0c0c
    inc c
    inc c
    inc c
    dec c
    inc c
    inc c
    dec c
    dec c
    dec c
    inc c
    dec c
    ld c, $0f
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
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    ld bc, $0602
    ld b, $06
    ld b, $05
    dec b
    add hl, bc
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0807
    add hl, bc
    rlca
    ld b, $05
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    ld [$0908], sp
    dec b
    rrca
    rrca
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    ld b, $07
    ld [$0109], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld [$0707], sp
    ld b, $06
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld [$0607], sp
    dec b
    dec b
    rlca
    rrca
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    ld bc, $0602
    ld b, $06
    ld b, $05
    dec b
    add hl, bc
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld [$0707], sp
    ld b, $05
    ld b, $01
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    ld [$0808], sp
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $09
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    dec b
    add hl, bc
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and [hl]
    adc [hl]
    add [hl]
    pop bc
    xor h
    add [hl]
    rst $38
    rst $38
    add c
    rst $38
    adc [hl]
    rst $28
    adc [hl]
    ret nz

    rst $38
    ld h, b
    and l
    xor $8e
    res 0, b
    rst $00
    adc [hl]
    adc [hl]
    xor h
    adc b
    ld b, a
    and h
    ld b, d
    jp nz, $ff47

    xor [hl]
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    add c
    adc [hl]
    xor [hl]
    rst $38
    rst $38
    xor [hl]
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    rst $38
    xor [hl]
    xor d
    and d
    rst $38
    adc [hl]
    ld l, l
    ld b, h
    adc [hl]
    rst $38
    adc l
    add d
    and b
    add a
    adc b
    xor h
    and b
    ld h, h
    rst $38
    daa
    res 4, l
    adc h
    ld h, a
    rst $38
    rst $38
    adc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and d
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
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    ld b, c
    add a
    ld h, l
    add [hl]
    adc [hl]
    and a
    xor [hl]
    and b
    ld h, e
    ld l, c
    and l
    ld l, [hl]
    rst $38
    rst $38
    rst $38

Call_03f_4b05:
    push bc
    ld b, a
    ld hl, $4b1c

jr_03f_4b0a:
    inc hl
    ld a, [hli]
    or a
    jr z, jr_03f_4b1b

    cp b
    jr nz, jr_03f_4b0a

    cp $29
    ld a, c
    jr z, jr_03f_4b18

    ld a, [hl]

jr_03f_4b18:
    call $17fa

jr_03f_4b1b:
    pop bc
    ret


    ld b, b
    sub [hl]
    dec hl
    ld h, h
    ld b, c
    ld h, h
    add hl, hl
    inc b
    nop
    ld a, [$cbae]
    bit 3, a
    jr nz, jr_03f_4b3e

    ldh a, [$a8]
    ld b, a
    ld a, [$d00b]
    sub b
    cp $48
    ld a, $02
    jr c, jr_03f_4b3b

    xor a

jr_03f_4b3b:
    ld [$cbac], a

jr_03f_4b3e:
    ld a, $07
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0460
    call function_0451
    jp Jump_03f_4ea1


    ld a, $07
    ldh [rSVBK], a
    ld d, $d0
    ld a, [$cba0]
    inc a
    jr nz, jr_03f_4b65

    ld [$cba1], a
    ld h, d
    ld l, $c0
    ld [hl], $0f
    inc l
    set 3, [hl]

jr_03f_4b65:
    call Call_03f_4b73
    ld a, [$cba0]
    or a
    ret nz

    ld [$cbae], a
    jp $08be


Call_03f_4b73:
    ld a, [$cba0]
    cp $80
    ret z

    ld e, $c0
    ld a, [$cba1]
    rst $00
    add l
    ld c, e
    xor c
    ld c, e
    or l
    ld c, e
    ld a, [de]
    rst $00
    rst $00
    ld c, e
    db $d3
    ld c, e
    push hl
    ld c, e
    ld d, $4c
    push hl
    ld c, e
    cpl
    ld c, h
    ld b, e
    ld c, h
    ld c, c
    ld c, h
    ld d, d
    ld c, h
    ld d, $4c
    push hl
    ld c, e
    ld h, b
    ld c, h
    ld b, e
    ld c, h
    ld c, c
    ld c, h
    ld [hl], a
    ld c, h
    add [hl]
    ld c, h
    ldh a, [$4c]
    ld a, [de]
    rst $00
    rst $30
    ld c, h
    dec bc
    ld c, l
    dec d
    ld c, l
    ld b, c
    ld c, l
    ld l, e
    ld c, l
    ld a, [de]
    rst $00
    adc h
    ld c, l
    call $da4d
    ld c, l
    inc de
    ld c, [hl]
    ld b, h
    ld c, [hl]
    ld [hl], h
    ld c, [hl]
    add e
    ld c, [hl]
    adc h
    ld c, [hl]
    ld a, $01
    ld [de], a
    call Call_03f_510c
    call Call_03f_5179
    jp Jump_03f_51a2


    ld h, d
    ld l, $c0
    inc [hl]
    ld l, $d3
    ld [hl], $40
    ld l, $c5
    ld a, [hli]
    ld [hl], a
    call Call_03f_5084
    jp Jump_03f_50fb


    call Call_03f_52b7
    jr z, jr_03f_4bfa

    call Call_03f_51e8
    ret nz

    call Call_03f_520a
    call Call_03f_51a2
    ld d, $d0
    call Call_03f_52b7
    ret nz

jr_03f_4bfa:
    call Call_03f_541a
    ret nz

    ld d, $d0
    call Call_03f_52c5
    ret nz

    ld h, d
    ld l, $c2
    ld a, [hl]
    or a
    ld l, $c0
    jr z, jr_03f_4c13

    inc [hl]
    ld l, $c5
    ld a, [hli]
    ld [hl], a
    ret


jr_03f_4c13:
    ld [hl], $0f
    ret


    call Call_03f_51e8
    ret nz

    call Call_03f_5084
    ld a, $02
    call Call_03f_50fb
    ld hl, $d0c0
    inc [hl]
    ld l, $d3
    ld [hl], $60
    ld l, $c5
    ld a, [hli]
    ld [hl], a
    ret


    ld a, [$c482]
    and $03
    jp z, Jump_03f_5343

    ld a, $89
    call $0c74
    ld h, d
    ld l, $c1
    res 0, [hl]
    jr jr_03f_4c60

    ld h, d
    ld l, e
    inc [hl]
    jp Jump_03f_51a2


    ld h, d
    ld l, e
    inc [hl]
    call Call_03f_53ac
    jp Jump_03f_53e2


    ld h, d
    ld l, e
    inc [hl]
    ld l, $c5
    ld a, [hli]
    ld [hl], a
    call Call_03f_51a2
    xor a
    jp Jump_03f_50fb


jr_03f_4c60:
    ld h, d
    ld l, e
    inc [hl]
    ld l, $cc
    ld a, [hl]
    add $12
    and $1f
    add $80
    ld l, a
    ld h, $d0
    ld [hl], $02
    call Call_03f_53ac
    jp Jump_03f_5383


    ld h, d
    ld l, e
    ld [hl], $03
    ld l, $c5
    ld a, [hli]
    ld [hl], a
    call Call_03f_51a2
    xor a
    jp Jump_03f_50fb


    ld h, d
    ld l, $ef
    bit 7, [hl]
    jr z, jr_03f_4cb3

    ld a, [$c482]
    and $03
    ret z

    ld [hl], $00
    ld l, e
    ld [hl], $00
    ld a, $24
    ld [$cba2], a
    ld a, $00   ; xor a
    add $04
    ld [$cba3], a
    call LoadText
    ld a, $8b
    call $0c74
    ld a, $2a
    ld c, $04
    jp $16eb


jr_03f_4cb3:
    ld l, $c1
    bit 3, [hl]
    jr nz, jr_03f_4cbd

    call Call_03f_4ccf
    ret z

jr_03f_4cbd:
    ld l, e
    inc [hl]
    ld l, $ef
    bit 0, [hl]
    jr z, jr_03f_4ccc

    ld a, $29
    ld c, $40
    call $16eb

jr_03f_4ccc:
    jp Jump_03f_510c


Call_03f_4ccf:
    ld a, [$cbae]
    bit 1, a
    jr nz, jr_03f_4ce4

    ld l, $eb
    ld a, [hl]
    or a
    jr z, jr_03f_4cdf

    dec [hl]
    jr z, jr_03f_4cee

jr_03f_4cdf:
    ld a, [$c482]
    or a
    ret


jr_03f_4ce4:
    res 1, a
    ld [$cbae], a
    ld a, $80
    ld [$cba0], a

jr_03f_4cee:
    or d
    ret


    xor a
    ld [$cba0], a
    jp Jump_03f_51a2


    ld h, d
    ld l, e
    inc [hl]
    ld a, [$c629]
    ld hl, $4d06
    rst AddAToHL
    ld a, [hl]
    ld e, $c6
    ld [de], a
    ret


    jr nz, @+$1e

    jr @+$16

    db $10
    ld h, d
    ld l, $c6
    dec [hl]
    ret nz

    ld l, e
    inc [hl]
    jp Jump_03f_568b


    ld a, [$c482]
    and $03
    jp z, Jump_03f_5640

    call Call_03f_5691
    ret nz

    ld a, $56
    call $0c74
    ld hl, $d0c0
    inc [hl]
    ld l, $e8
    ld a, [hl]
    ld [$cba5], a
    ld a, [$cbae]
    bit 1, a
    ret z

    res 1, a
    ld [$cbae], a
    ld a, $80
    ld [$cba0], a
    ret


    ld h, d
    ld l, e
    inc [hl]
    inc l
    bit 4, [hl]
    jr z, jr_03f_4d5c

    push hl
    call Call_03f_532c
    pop hl
    cp $ff
    jp z, Jump_03f_4d5c

    ld [$cba2], a
    call LoadText
    jp Jump_03f_540c


Jump_03f_4d5c:
jr_03f_4d5c:
    set 3, [hl]
    inc l
    ld [hl], $00
    ld l, $c0
    ld [hl], $0f
    ld a, $00   ; xor a
    ld [$cba1], a
    ret


    ld a, $00   ; xor a
    ld [$cba1], a
    ld h, d
    ld l, e
    ld [hl], $02
    inc l
    ld [hl], $00
    ld l, $c5
    ld a, [hli]
    ld [hl], a
    ld l, $d3
    ld [hl], $40
    ld l, $e0
    ld b, $0a
    call $044b
    call Call_03f_5084
    jp Jump_03f_50fb


    ld h, d
    ld l, e
    inc [hl]
    ld l, $ec
    ld a, [$cba2]
    ld [hl], a
    ld l, $de
    ld [hl], $28
    ld l, $ed
    ld a, $ff
    ld [hl], a
    ld l, $c2
    ld [hl], a
    call Call_03f_54cd
    ld d, $d0
    jr z, jr_03f_4db9

    ld e, $d5
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $ed
    ld a, [de]
    or a
    jr z, jr_03f_4dbf

    inc a
    srl a
    ld [de], a

jr_03f_4db9:
    ld e, $ed
    ld a, [de]
    inc a
    jr z, jr_03f_4dc5

jr_03f_4dbf:
    ld e, $c2
    ld a, [de]
    or a
    jr nz, jr_03f_4dc8

jr_03f_4dc5:
    ld [$cba0], a

jr_03f_4dc8:
    ld a, $17
    jp $05b6


    call Call_03f_55c6
    ret nz

    ld [hl], $01
    ld l, e
    inc [hl]
    ld l, $c2
    ld [hl], $ff
    ret


    call Call_03f_55c6
    ret nz

    call Call_03f_55ae

jr_03f_4de1:
    call Call_03f_56fe
    cp $10
    jr nc, jr_03f_4e31

    cp $01
    jr z, jr_03f_4e2f

    call Call_03f_55cf
    jr z, jr_03f_4e37

    ld a, [$d0c2]
    or a
    jr nz, jr_03f_4de1

    ld a, l
    ld b, h
    ld hl, $d0c2
    ld [hl], $ff
    ld l, $df
    ld [hl], $10
    ld l, $c0
    inc [hl]
    ld l, $d5
    ld [hli], a
    ld [hl], b

jr_03f_4e09:
    ld a, $20
    ld bc, $d3e0
    call $18a6
    jr jr_03f_4e3f

    call Call_03f_55c6
    ret nz

    inc l
    dec [hl]
    jr nz, jr_03f_4e2c

    ld l, e
    inc [hl]
    ld l, $ec
    ld a, [hl]
    ld [$cba2], a
    ld a, [$cba4]
    ld [$cba3], a
    call LoadText

jr_03f_4e2c:
    call Call_03f_55ae

Jump_03f_4e2f:
jr_03f_4e2f:
    ld a, $20

jr_03f_4e31:
    ld bc, $d3e0
    call $18a6

jr_03f_4e37:
    ld a, l
    ld [$d0d5], a
    ld a, h
    ld [$d0d6], a

jr_03f_4e3f:
    ld a, $17
    jp $05b6


    call Call_03f_55c6
    ret nz

    call Call_03f_55ae

jr_03f_4e4b:
    call Call_03f_56fe
    cp $10
    jr nc, jr_03f_4e31

    cp $01
    jr nz, jr_03f_4e6d

    ld a, l
    ld b, h
    ld hl, $d0d5
    ld l, $d5
    ld [hli], a
    ld [hl], b
    ld l, $ed
    ld a, [hl]
    ld l, $df
    ld [hl], a
    ld l, $c0
    inc [hl]
    or a
    jr nz, jr_03f_4e09

    inc [hl]
    ret


jr_03f_4e6d:
    call Call_03f_55cf
    jr z, jr_03f_4e37

    jr jr_03f_4e4b

    call Call_03f_55c6
    ret nz

    inc l
    dec [hl]
    jr nz, jr_03f_4e2c

    dec l
    ld [hl], $28
    ld l, e
    ld [hl], $01
    ret


    call Call_03f_55c6
    ret nz

    ld [hl], $28
    ld l, e
    inc [hl]
    ret


    call Call_03f_55c6
    ret nz

    ld [hl], $08
    ld l, e
    ld [hl], $02
    ld l, $c2
    ld [hl], $ff
    ld l, $d5
    ld a, [hli]
    ld h, [hl]
    ld l, a
    jp Jump_03f_4e2f


Jump_03f_4ea1:
    ld a, [$c62a]
    ld b, a
    add a
    add b
    ld hl, $5012
    rst AddAToHL
    ld a, [hli]
    ld [$d0f0], a
    ld a, [hli]
    ld [$d0f1], a
    ld a, [hl]
    ld [$d0f2], a
    call LoadText
    ld hl, $d0c4
    ld [hl], $66
    inc l
    call $5885
    ld [hli], a
    inc l
    ld [hl], $80
    inc l
    ld [hl], $03
    inc l
    ld de, $d800
    ld [hl], $03
    ld a, [$cbcb]
    or a
    jr z, jr_03f_4edb

    ld de, $d000
    ld [hl], $04

jr_03f_4edb:
    ld a, [$cbac]
    ld hl, $4f7a
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    push hl
    add e
    ld l, a
    ld a, d
    adc h
    ld h, a
    ld de, $0020
    ldh a, [$a8]
    add $04
    and $f8
    jr z, jr_03f_4efd

    swap a
    rlca

jr_03f_4ef9:
    add hl, de
    dec a
    jr nz, jr_03f_4ef9

jr_03f_4efd:
    ldh a, [$aa]
    add $04
    and $f8
    swap a
    rlca
    add l
    ld [$d0ca], a
    ld a, h
    ld [$d0cb], a
    pop hl
    ldh a, [$a8]
    ld b, a
    ld a, [$cd08]
    add b
    add $04
    and $f8
    jr z, jr_03f_4f23

    swap a
    rlca

jr_03f_4f1f:
    add hl, de
    dec a
    jr nz, jr_03f_4f1f

jr_03f_4f23:
    ld a, h
    and $03
    ld h, a
    ld a, [$cba7]
    ld b, a
    ld c, $00
    add hl, bc
    ld a, l
    ld [$d0d8], a
    ld a, h
    ld [$d0d9], a
    ld a, [$cd09]
    ld b, a
    ldh a, [$aa]
    add $04
    add b
    and $f8
    swap a
    rlca
    ld [$d0cc], a
    sub $20
    cpl
    dec a
    cp $10
    jr c, jr_03f_4f51

    ld a, $10

jr_03f_4f51:
    ld [$d0cd], a
    ld b, a
    ld a, $10
    sub b
    ld [$d0ce], a
    ld a, [$cbae]
    bit 0, a
    ret nz

    and $14
    ld a, $0e
    jr z, jr_03f_4f77

    ld a, [$cbae]
    and $10
    ld a, $bd
    jr nz, jr_03f_4f77

    ld a, $81
    ld [$d0c7], a
    ld a, $0d

jr_03f_4f77:
    jp $04e7


    jr nz, jr_03f_4f7c

jr_03f_4f7c:
    and b
    nop
    ld b, b
    ld bc, $0180
    ld h, b
    ld bc, $00c0
    ld h, b
    nop

Call_03f_4f88:
Jump_03f_4f88:
    push de
    ld a, [$d0f0]
    ld l, a
    ld a, [$d0f1]
    ld h, a
    push hl
    ld a, [$cba3]
    rst JumpTable
    call $1936
    ld c, a
    call $1936
    ld b, a
    pop hl
    add hl, bc
    ld a, [$cba2]
    rst JumpTable
    call $1936
    ld c, a
    call $1936
    ld b, a
    ld a, [$c62a]
    add a
    ld hl, UnknownData_03f
    rst JumpTable
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [$cba3]
    cp $2c
    jr c, jr_03f_4fcd

    ld a, [$c62a]
    add a
    ld hl, $4ffa
    rst JumpTable
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld h, [hl]
    ld l, a

jr_03f_4fcd:
    ld a, e
    add $04
    add hl, bc
    jr c, jr_03f_4fd9

    ld a, h
    and $c0
    rlca
    rlca
    add e

jr_03f_4fd9:
    ld [$d0d4], a
    res 7, h
    set 6, h
    pop de
    ret

UnknownData_03f::
REPT 6
    db $1c, $82, $33, $00
    ;inc e
    ;add d
    ;inc sp
    ;nop
ENDR
REPT 2
    db $1f, $bc, $07, $00
    ;rra
    ;cp h
    ;rlca
    ;nop
ENDR
REPT 4
    db $1f, $82, $33, $00
    ;rra
    ;add d
    ;inc sp
    ;nop
ENDR
REPT 6
    db $00, $5c, $1c
    ;nop
    ;ld e, h
    ;inc e
ENDR

LoadText::
;Call_03f_5024:
;Jump_03f_5024:
;jr_03f_5024:
    push de
    call Call_03f_4f88
    call GetCharacter
    cp $08
    jr z, Dialogue2
    
    cp $0c
    jr nz, jr_03f_5056

    ld d, h
    ld e, l
    call Call_03f_5701
    call GetCharacter
    ld b, a
    and $fc
    cp $20
    jr z, jr_03f_5046

    ld h, d
    ld l, e
    jr jr_03f_5056

jr_03f_5046:
    ld a, [$cbae]
    bit 3, a
    jr nz, jr_03f_5053

    ld a, b
    and $07
    ld [$cbac], a
jr_03f_5053:
    call Call_03f_5701
jr_03f_5056:
    ld a, l
    ld [$d0d5], a
    ld a, h
    ld [$d0d6], a
    pop de
    ret


Dialogue2:
    call Call_03f_5701
    call GetCharacter
    call Call_03f_5334
    cp $ff
    jp z, Jump_03f_5073

    ld [$cba2], a
    jr LoadText

Jump_03f_5073:
    ld a, $00   ; xor a
    ld [$cba1], a
    ld hl, $d0c0
    ld [hl], $0f
    inc l
    set 3, [hl]
    inc l
    ld [hl], $00
    ret


Call_03f_5084:
    ld h, d
    ld l, $c2
    ld [hl], $ff
    ld l, $d5
    push hl
    ld a, [hli]
    ld h, [hl]
    ld l, a
    push hl
    call Call_03f_50c0
    call Call_03f_50cb
    pop hl
    ld bc, $d200

jr_03f_509a:
    call Call_03f_56fe
    cp $10
    jr nc, jr_03f_50ad

    call Call_03f_5713
    ld a, [$d0c2]
    cp $02
    jr nc, jr_03f_509a

    jr jr_03f_50b5

jr_03f_50ad:
    call Call_03f_50d5
    call $18a6
    jr jr_03f_509a

jr_03f_50b5:
    pop de
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $d0
    xor a
    ld [de], a
    ret


Call_03f_50c0:
    ld hl, $d200
    ld bc, $0200
    ld a, $ff
    jp $0452


Call_03f_50cb:
    ld hl, $d400
    ld d, h
    ld e, l
    ld b, $10
    jp $044b


Call_03f_50d5:
    ld [de], a
    push de
    push hl
    ld hl, $d0c7
    ld a, e
    add $10
    ld e, a
    ld a, [hl-]
    ld [de], a
    ld a, e
    add $10
    ld e, a
    dec l
    ld a, [hl-]
    ld [de], a
    ld a, e
    add $10
    ld e, a
    ld a, [hl-]
    ld [de], a
    ld a, e
    add $10
    ld e, a
    ld a, [hl]
    ld [de], a
    ld [hl], $00
    pop hl
    pop de
    ld a, [de]
    inc e
    ret


Call_03f_50fb:
Jump_03f_50fb:
    add $94
    ld d, a
    ld e, $00
    ld hl, $d200
    ld bc, $1f07
    push hl
    call $0566
    pop hl
    ret


Call_03f_510c:
Jump_03f_510c:
    ld hl, $d0ca
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld l, [hl]
    ld h, $d0
    call Call_03f_5125
    ld hl, $d0ca
    ld e, [hl]
    inc l
    ld a, [hli]
    add $04
    ld d, a
    ld l, [hl]
    ld h, $d1

Call_03f_5125:
    ld a, $03

jr_03f_5127:
    push af
    push hl
    ld a, [$d0c9]
    ldh [rSVBK], a
    ld hl, $cd40
    ld a, $02

jr_03f_5133:
    push af
    ld a, e
    and $e0
    ld c, a
    ld b, $20

jr_03f_513a:
    ld a, [de]
    ld [hli], a
    ld a, e
    inc a
    and $1f
    or c
    ld e, a
    dec b
    jr nz, jr_03f_513a

    ld a, $20
    call $0068
    pop af
    dec a
    jr nz, jr_03f_5133

    ld a, $07
    ldh [rSVBK], a
    pop hl
    push de
    ld de, $cd40
    ld a, $02

jr_03f_5159:
    push af
    ld a, l
    and $e0
    ld c, a
    ld b, $20

jr_03f_5160:
    ld a, [de]
    ld [hl], a
    inc e
    ld a, l
    inc a
    and $1f
    or c
    ld l, a
    dec b
    jr nz, jr_03f_5160

    ld a, $20
    rst AddAToHL
    pop af
    dec a
    jr nz, jr_03f_5159

    pop de
    pop af
    dec a
    jr nz, jr_03f_5127

    ret


Call_03f_5179:
    ld a, [$d0cc]
    inc a
    and $1f
    ld l, a
    ld e, $05

jr_03f_5182:
    ld b, $12
    ld a, l
    ld d, a
    and $e0
    ld c, a

jr_03f_5189:
    ld h, $d0
    ld [hl], $02
    ld h, $d1
    ld [hl], $80
    ld a, l
    inc a
    and $1f
    or c
    ld l, a
    dec b
    jr nz, jr_03f_5189

    ld a, d
    add $20
    ld l, a
    dec e
    jr nz, jr_03f_5182

    ret


Call_03f_51a2:
Jump_03f_51a2:
    ld a, [$cba7]
    add $03
    ld c, a
    ld hl, $d0d8
    ld a, [hli]
    ld e, a
    cp $61
    ld a, [hl]
    ld d, a
    jr c, jr_03f_51b6

    cp c
    jr z, jr_03f_51c7

jr_03f_51b6:
    ld b, $09
    ld hl, $d000

Call_03f_51bb:
jr_03f_51bb:
    ld c, $07
    push hl
    call $0566
    pop hl
    inc e
    inc h
    jp $0566


jr_03f_51c7:
    xor a
    sub e
    ld c, a
    swap a
    dec a
    ld b, a
    ld hl, $d000
    push bc
    call Call_03f_51bb
    pop bc
    ld a, [$cba7]
    ld d, a
    ld e, $00
    ld l, c
    ld h, $d0
    ld a, $a0
    sub c
    swap a
    dec a
    ld b, a
    jr jr_03f_51bb

Call_03f_51e8:
    ld h, d
    ld l, $ee
    ld a, [hl]
    or a
    jr z, jr_03f_51f0

    dec [hl]

jr_03f_51f0:
    ld l, $d7
    ld a, [hl]
    or a
    jr z, jr_03f_51f9

    dec [hl]
    jr nz, jr_03f_5200

jr_03f_51f9:
    ld a, [$c482]
    and $03
    jr nz, jr_03f_5204

jr_03f_5200:
    ld l, $c6
    dec [hl]
    ret


jr_03f_5204:
    ld l, $c1
    set 0, [hl]
    xor a
    ret


Call_03f_520a:
jr_03f_520a:
    ld e, $d3
    ld a, [de]
    ld c, a
    cp $40
    ld b, $00
    jr z, jr_03f_5216

    ld b, $40

jr_03f_5216:
    ld e, $d0
    ld a, [de]
    ld l, a
    ld e, $cc
    ld a, [de]
    add $02
    add l
    and $1f
    add b
    ld e, a
    ld h, $d4
    ld a, [hl]
    or a
    jr z, jr_03f_5263

    ldh [$8b], a
    ld d, $d0
    ld a, l
    add a
    add c
    ld b, a
    inc b
    ld [de], a
    ld a, e
    add $20
    ld e, a
    ld a, b
    ld [de], a
    inc d
    ld a, l
    add $10
    ld l, a
    ld a, [hl]
    ld [de], a
    ld a, e
    sub $20
    ld e, a
    ld a, [hl]
    ld [de], a
    ld d, $d0
    ld e, $d0
    ld a, [de]
    inc a
    ld [de], a
    cp $10
    jr z, jr_03f_5263

    call Call_03f_52aa
    jr nz, jr_03f_525e

    ld e, $c1
    ld a, [de]
    bit 0, a
    jr nz, jr_03f_520a

jr_03f_525e:
    call Call_03f_5279
    or d
    ret


jr_03f_5263:
    ld h, d
    ld l, $c1
    bit 0, [hl]
    ret z

    ld l, $ee
    ld a, [hl]
    or a
    jr nz, jr_03f_5277

    ld [hl], $04
    ld l, $c4
    ld a, [hl]
    call $0c74

jr_03f_5277:
    xor a
    ret


Call_03f_5279:
    ld a, l
    add $10
    ld l, a
    ld a, [hl]
    ld e, $c6
    ld [de], a
    ld a, l
    add $10
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_03f_529d

    ld b, a
    ldh a, [$8b]
    cp $20
    jr z, jr_03f_529d

    ld e, $ee
    ld a, [de]
    or a
    jr nz, jr_03f_529d

    ld a, $04
    ld [de], a
    ld a, b
    call Call_03f_52a4

jr_03f_529d:
    ld a, l
    add $10
    ld l, a
    ld a, [hl]
    or a
    ret z

Call_03f_52a4:
    push hl
    call $0c74
    pop hl
    ret


Call_03f_52aa:
    push hl
    ld e, $d0
    ld a, [de]
    add $50
    ld l, a
    ld h, $d4
    bit 0, [hl]
    pop hl
    ret


Call_03f_52b7:
    ld e, $d0
    ld a, [de]
    cp $10
    ret z

    add $00
    ld l, a
    ld h, $d4
    ld a, [hl]
    or a
    ret


Call_03f_52c5:
    ld h, d
    ld l, $c1
    ld a, [hl-]
    bit 2, a
    jr nz, jr_03f_52e9

    bit 1, a
    jr nz, jr_03f_52f7

    bit 4, a
    ret z

    call Call_03f_532c
    cp $ff
    jr z, jr_03f_5318

    ld [$cba2], a
    call LoadText
    ld e, $c1
    xor a
    ld [de], a
    inc e
    inc a
    ld [de], a
    ret


jr_03f_52e9:
    ld e, $c2
    ld a, [de]
    or a
    jr nz, jr_03f_531d

    ld [hl], a
    ld a, $01
    ld [$cba1], a
    or h
    ret


jr_03f_52f7:
    bit 0, a
    jr z, jr_03f_5300

    inc l
    res 0, [hl]
    jr jr_03f_5313

jr_03f_5300:
    ld a, [$c482]
    and $03
    jr z, jr_03f_5313

    ld [hl], $00
    ld l, $c1
    res 1, [hl]
    pop hl
    ld a, $89
    jp $0c74


jr_03f_5313:
    call Call_03f_5343
    or h
    ret


jr_03f_5318:
    xor a
    ld [$00c2], a
    ret


jr_03f_531d:
    ld hl, $d0e0

jr_03f_5320:
    ld a, [hl]
    or a
    ret z

    xor $20
    ld [hli], a
    ld a, l
    and $07
    jr nz, jr_03f_5320

    ret


Call_03f_532c:
    ld l, $d5
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call Call_03f_56fe

Call_03f_5334:
    ld hl, $5944
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    ld a, [bc]
    rst AddAToHL
    ld a, [hl]
    ret


Call_03f_5343:
Jump_03f_5343:
    ld a, [$cc00]
    and $0f
    ret nz

    ld e, $cc
    ld a, [de]
    add $12
    and $1f
    add $80
    ld l, a
    ld h, $d0
    ld e, $c8
    ld a, [de]
    cp $03
    ld a, $02
    jr z, jr_03f_5360

    ld a, $03

jr_03f_5360:
    ld [de], a
    ld [hl], a
    ld a, [$cba7]
    add $04
    ld c, a
    ld l, $80
    ld h, $d0
    ld e, $d8
    ld a, [de]
    add l
    ld b, a
    inc e
    ld a, [de]
    adc $00
    cp c
    jr c, jr_03f_537b

    ld a, [$cba7]

jr_03f_537b:
    ld d, a
    ld e, b
    ld bc, $0107
    jp $0566


Jump_03f_5383:
    ld h, $d0
    ld a, [$d0cc]
    add $02
    and $1f
    ld l, a
    ld c, a
    ld b, $10
    ld a, $02
    push bc
    call Call_03f_539c
    pop bc
    ld h, $d1
    ld l, c
    ld a, $80

Call_03f_539c:
    ld c, a
    ld a, l
    and $e0
    ld e, a

jr_03f_53a1:
    ld [hl], c
    ld a, l
    inc a
    and $1f
    or e
    ld l, a
    dec b
    jr nz, jr_03f_53a1

    ret


Call_03f_53ac:
    ld h, $d0
    call Call_03f_53b3
    ld h, $d1

Call_03f_53b3:
    ld d, h
    ld a, [$d0cc]
    add $02
    and $1f
    ld e, a
    add $20
    ld l, a
    ld b, a
    ld c, $04

jr_03f_53c2:
    push bc
    ld a, e
    and $e0
    ld c, a
    ld b, $10

jr_03f_53c9:
    ld a, [hl]
    ld [de], a
    ld a, e
    inc a
    and $1f
    or c
    ld e, a
    add $20
    ld l, a
    dec b
    jr nz, jr_03f_53c9

    pop bc
    ld e, b
    ld a, b
    add $20
    ld l, a
    ld b, a
    dec c
    jr nz, jr_03f_53c2

    ret


Jump_03f_53e2:
    ld h, $d0
    ld b, $00
    call Call_03f_53eb
    ld b, $20

Call_03f_53eb:
    ld a, [$d0cc]
    add $02
    and $1f
    add b
    ld l, a
    and $e0
    ld c, a
    ld b, $10

jr_03f_53f9:
    ld a, [hl]
    and $60
    cp $60
    jr nz, jr_03f_5402

    res 5, [hl]

jr_03f_5402:
    ld a, l
    inc a
    and $1f
    or c
    ld l, a
    dec b
    jr nz, jr_03f_53f9

    ret


Jump_03f_540c:
    ld h, d
    ld l, $c1
    res 1, [hl]
    call Call_03f_510c
    call Call_03f_5179
    jp Jump_03f_51a2


Call_03f_541a:
    ld h, d
    ld l, $c1
    bit 5, [hl]
    jr nz, jr_03f_5434

    ld l, $ea
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret nz

    ld b, $00
    call Call_03f_5443
    ld a, $89
    call $0c74
    xor a
    ret


jr_03f_5434:
    res 5, [hl]
    ld l, $ea
    ld [hl], $1e
    ld l, $ef
    ld [hl], $01
    call Call_03f_54a8
    ld b, $ff

Call_03f_5443:
    ld a, [$c6a4]
    add b
    add a
    push af
    sub $08
    jr nz, jr_03f_5457

    ld [$c6a4], a
    dec a
    ld [$cbea], a
    ld [$d0ef], a

jr_03f_5457:
    pop af
    ld hl, $5494
    rst JumpTable
    ld d, $d0
    ld a, [$d0cc]
    add $11
    and $1f
    ld c, a
    dec a
    and $1f
    ld b, a
    add $20
    ld e, a
    ld a, [hli]
    ld [de], a
    ld a, b
    add $40
    ld e, a
    ld a, [hli]
    ld [de], a
    ld a, c
    add $20
    ld e, a
    ld a, [hli]
    ld [de], a
    ld a, c
    add $40
    ld e, a
    ld a, [hl]
    ld [de], a
    ld d, $d1
    ld a, [de]
    or $20
    ld [de], a
    ld a, c
    add $20
    ld e, a
    ld a, [de]
    or $20
    ld [de], a
    call Call_03f_51a2
    or d
    ret


    ld e, l
    ld a, h
    ld e, l
    ld a, h
    ld e, a
    ld a, h
    ld e, l
    ld a, h
    ld e, a
    ld a, [hl]
    ld e, l
    ld a, h
    ld e, a
    ld a, [hl]
    ld e, l
    ld a, [hl]
    ld e, a
    ld a, [hl]
    ld e, a
    ld a, [hl]

Call_03f_54a8:
    ld hl, $5720
    ld de, $95d0
    ld bc, $001c
    call $0566
    ld hl, $5730
    ld e, $f0
    call $0566
    ld hl, $5740
    ld de, $97c0
    call $0566
    ld hl, $5750
    ld e, $e0
    jp $0566


Call_03f_54cd:
    call Call_03f_50c0
    ld h, d
    ld l, $d4
    ld a, [hli]
    ldh [$8a], a
    ld a, [hli]
    ld h, [hl]
    ld l, a
    push hl
    ld e, $00

jr_03f_54dc:
    call Call_03f_56fe
    cp $00  ; and a / or a
    jr z, jr_03f_54f7

    cp $01
    jr z, jr_03f_54fe

    cp $10
    jr nc, jr_03f_54f0

    call Call_03f_553f
    jr jr_03f_54dc

jr_03f_54f0:
    inc e
    bit 4, e
    jr z, jr_03f_54dc

    jr jr_03f_54fe

jr_03f_54f7:
    call Call_03f_56d3
    ld a, h
    or a
    jr nz, jr_03f_54dc

jr_03f_54fe:
    call Call_03f_56d3
    pop bc
    ld hl, $d0d4
    ldh a, [$8a]
    ld [hli], a
    ld [hl], c
    inc l
    ld [hl], b
    ld a, e
    or a
    ret z

    push bc
    sub $11
    cpl
    ld l, $ed
    ld [hl], a
    and $0e
    swap a
    add $00
    ld c, a
    call Call_03f_50cb
    ld b, $d2
    pop hl

jr_03f_5522:
    call Call_03f_56fe
    cp $10
    jr c, jr_03f_5534

    call Call_03f_50d5
    call $18a6
    bit 4, e
    jr z, jr_03f_5522

    ret


jr_03f_5534:
    call Call_03f_5713
    ld a, [$d0c2]
    cp $02
    jr nc, jr_03f_5522

    ret


Call_03f_553f:
    sub $02
    ld b, a
    push hl
    rst $00
    ld h, b
    ld d, l
    ld h, b
    ld d, l
    ld h, b
    ld d, l
    ld h, b
    ld d, l
    ld [hl], c
    ld d, l
    db $76
    ld d, l
    sub e
    ld d, l
    ld [hl], d
    ld d, l
    add b
    ld d, l
    ld [hl], d
    ld d, l
    ld [hl], d
    ld d, l
    ld [hl], d
    ld d, l
    ld [hl], d
    ld d, l
    sub l
    ld d, l
    pop hl
    call Call_03f_56fe
    ld [$cba2], a
    call Call_03f_56ae
    ld a, b
    ld [$cba3], a
    jp Jump_03f_4f88


    inc e
    pop hl
    jp Jump_03f_5701


    pop hl
    call Call_03f_56fe
    ld [$cba2], a
    jp LoadText


    pop hl
    call Call_03f_56fe
    push hl
    ld hl, $593c
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a

jr_03f_558c:
    ld a, [hli]
    or a
    jr z, jr_03f_5593

    inc e
    jr jr_03f_558c

jr_03f_5593:
    pop hl
    ret


    pop hl
    call Call_03f_56fe
    cp $fc
    jr c, jr_03f_55a5

    push hl
    cpl
    ld hl, $cbaf
    rst AddAToHL
    ld a, [hl]
    pop hl

jr_03f_55a5:
    ld [$cba2], a
    call Call_03f_56ae
    jp LoadText


Call_03f_55ae:
    ld hl, $d200
    ld de, $d220
    ld bc, $01e0

jr_03f_55b7:
    ld a, [de]
    ld [hli], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_03f_55b7

    ld hl, $d0d5
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ret


Call_03f_55c6:
    ld h, d
    ld l, $de
    dec [hl]
    ret nz

    ld [hl], $08
    xor a
    ret


Call_03f_55cf:
    cp $06
    jr z, jr_03f_55d8

    call Call_03f_5713
    or d
    ret


jr_03f_55d8:
    ld bc, $d3e0
    ld de, $d5e0
    call Call_03f_5713
    xor a
    ret


Call_03f_55e3:
    call Call_03f_55f7
    bit 5, [hl]
    ld b, $60
    jr nz, jr_03f_55ee

    ld b, $20

jr_03f_55ee:
    ld a, [hl]
    inc e
    ld [de], a
    call Call_03f_55ff
    ld [hl], $04
    ret


Call_03f_55f7:
    ld e, $e8
    ld a, [de]
    add $e0
    ld l, a
    ld h, d
    ret


Call_03f_55ff:
    and $1e
    rrca
    ld l, a
    ld e, $cc
    ld a, [de]
    add $02
    add l
    and $1f
    add b
    ld l, a
    ld h, $d0
    ret


Call_03f_5610:
    ld b, $60
    ld e, $e9
    ld a, [de]
    ld c, a
    bit 5, a
    jr nz, jr_03f_561c

    ld b, $20

jr_03f_561c:
    call Call_03f_55ff
    ld [hl], c
    ret


jr_03f_5621:
    ld e, $e8
    ld a, [de]
    inc a
    and $07
    ld [de], a
    call Call_03f_55f7
    ld a, [hl]
    or a
    ret nz

    xor a
    ld [de], a
    ret


jr_03f_5631:
    ld e, $e8
    ld a, [de]
    dec a
    and $07
    ld [de], a
    call Call_03f_55f7
    ld a, [hl]
    or a
    ret nz

    jr jr_03f_5631

Jump_03f_5640:
    ld a, [$c482]
    and $f0
    ret z

    ld a, $84
    call $0c74
    call Call_03f_5610
    call Call_03f_5653
    jr jr_03f_568b

Call_03f_5653:
    ld a, [$c482]
    call $01ea
    sub $04
    jr z, jr_03f_5621

    dec a
    jr z, jr_03f_5631

    call Call_03f_55f7
    ld b, [hl]
    ld c, $ff
    ld l, $e0
    ld e, l

jr_03f_5669:
    ld a, [hl]
    or a
    jr z, jr_03f_5680

    sub b
    jr nc, jr_03f_5672

    cpl
    inc a

jr_03f_5672:
    sub $20
    jr nc, jr_03f_5678

    cpl
    inc a

jr_03f_5678:
    cp c
    jr nc, jr_03f_567d

    ld c, a
    ld e, l

jr_03f_567d:
    inc l
    jr jr_03f_5669

jr_03f_5680:
    ld a, c
    cp $10
    ret nc

    ld a, e
    sub $e0
    ld e, $e8
    ld [de], a
    ret


Call_03f_568b:
Jump_03f_568b:
jr_03f_568b:
    call Call_03f_55e3
    jp Jump_03f_51a2


Call_03f_5691:
    and $02
    ret z

    ld h, d
    ld l, $e0

jr_03f_5697:
    ld a, [hli]
    or a
    jr nz, jr_03f_5697

    ld a, l
    sub $e2
    ld l, $e8
    ld [hl], a
    ld a, $84
    call $0c74
    call Call_03f_5610
    call Call_03f_568b
    or d
    ret


Call_03f_56ae:
    push de
    push bc
    push hl
    ld hl, $d1db
    ld de, $d1df
    ld b, $1c

jr_03f_56b9:
    ld a, [hl-]
    ld [de], a
    dec e
    dec b
    jr nz, jr_03f_56b9

    inc l
    ld de, $d0d4
    ld a, [de]
    ld [hli], a
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld a, [$cba3]
    ld [hl], a
    ld h, d
    ld l, e
    pop bc
    pop de
    ret


Call_03f_56d3:
    push de
    push bc
    ld hl, $d1c3
    ld a, [hl-]
    ld [$cba3], a
    ld a, [hl-]
    ld de, $d0d6
    ld [de], a
    ld b, a
    ld a, [hl-]
    dec e
    ld [de], a
    ld c, a
    ld a, [hl]
    dec e
    ld [de], a
    push bc
    ld de, $d1c4
    ld b, $1c

jr_03f_56ef:
    ld a, [de]
    ld [hli], a
    inc e
    dec b
    jr nz, jr_03f_56ef

    xor a
    ld [hli], a
    ld [hli], a
    ld [hli], a
    ld [hl], a
    pop hl
    pop bc
    pop de
    ret


Call_03f_56fe:
    call GetCharacter

Call_03f_5701:
Jump_03f_5701:
    inc l
    ret nz

    inc h
    bit 7, h
    ret z

    rrc h
    push af
    ld a, [$d0d4]
    inc a
    ld [$d0d4], a
    pop af
    ret


Call_03f_5713:
    push bc
    push hl
    rst $00
    add hl, sp
    ld d, a
    ld b, l
    ld d, a
    ld a, h
    ld d, a
    ld a, a
    ld d, a
    add e
    ld d, a
    add a
    ld d, a
    ld c, l
    ld d, a
    ret nz

    ld d, a
    call z, $db57
    ld d, a
    ld c, $58
    ld d, e
    ld e, b
    ld h, l
    ld e, b
    ld e, h
    ld e, b
    add hl, hl
    ld e, b
    sbc a
    ld d, a
    pop hl
    pop bc
    ret


    pop hl
    pop bc
    call Call_03f_56d3
    ld a, h
    or a
    ret nz

    ld [$d0c2], a
    ret


    pop hl
    pop bc
    ld a, $01
    ld [$d0c2], a
    ret


    pop hl
    call Call_03f_56fe
    ld b, a
    cp $80
    jr c, jr_03f_576b

    ld a, [$cba6]
    swap a
    or $03
    ld [$cba6], a
    ld a, $02
    ld [$d0d2], a
    ld a, b
    sub $80
    add a
    jr jr_03f_5771

jr_03f_576b:
    ld a, $01
    ld [$d0d2], a
    ld a, b

jr_03f_5771:
    pop bc
    push af
    ld a, $06
    call Call_03f_50d5
    pop af
    jp $18a6


    xor a
    jr jr_03f_5789

    ld a, $01
    jr jr_03f_5789

    ld a, $02
    jr jr_03f_5789

    ld a, $03

jr_03f_5789:
    ldh [$8b], a
    pop hl
    call Call_03f_56fe
    ld [$cba2], a
    call Call_03f_56ae
    ldh a, [$8b]
    ld [$cba3], a
    call Call_03f_4f88
    jr jr_03f_5802

    pop hl
    call Call_03f_56fe
    cp $fc
    jr c, jr_03f_57af

    push hl
    cpl
    ld hl, $cbaf
    rst AddAToHL
    ld a, [hl]
    pop hl

jr_03f_57af:
    ld [$cba2], a
    ld a, [$cba4]
    ld [$cba3], a
    call Call_03f_56ae
    call LoadText
    jr jr_03f_5802

    pop hl
    call Call_03f_56fe
    ld [$cba2], a
    call LoadText
    jr jr_03f_5802

    ld a, [$d0c1]
    or $10
    ld [$d0c1], a
    xor a
    ld [$d0c2], a
    pop hl
    jr jr_03f_5802

    pop hl
    ld a, [$cbae]
    rrca
    jr c, jr_03f_57ff

    call Call_03f_56fe
    bit 7, a
    jr nz, jr_03f_57fa

    ld bc, $5804
    call $007e
    ld a, [bc]
    ld [$d0c7], a
    inc bc
    ld a, [bc]
    ld [$cba6], a
    pop bc
    ret


jr_03f_57fa:
    ld [$d0c7], a
    jr jr_03f_5802

jr_03f_57ff:
    call Call_03f_5701

jr_03f_5802:
    pop bc
    ret


    add b
    ld [bc], a
    add b
    ld bc, $0081
    add c
    ld bc, $0281
    pop hl
    pop bc
    call Call_03f_56fe
    push hl
    ld hl, $593c
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a

jr_03f_581b:
    ld a, [hli]
    or a
    jr z, jr_03f_5827

    call Call_03f_50d5
    call $18a6
    jr jr_03f_581b

jr_03f_5827:
    pop hl
    ret


    pop hl
    call Call_03f_56fe
    ld [$d0c3], a
    jr jr_03f_5802

    pop hl
    call Call_03f_56fe
    ld b, a
    call Call_03f_584a
    call Call_03f_583f
    jr jr_03f_5802

Call_03f_583f:
    push de
    ld a, e
    add $50
    ld e, a
    ld a, [de]
    or $01
    ld [de], a
    pop de
    ret


Call_03f_584a:
    push de
    ld a, e
    add $20
    ld e, a
    ld a, b
    ld [de], a
    pop de
    ret


    pop hl
    call Call_03f_56fe
    ld [$d0c4], a
    jr jr_03f_5802

    pop hl
    call Call_03f_56fe
    ld [$d0eb], a
    jr jr_03f_5802

    pop hl
    call Call_03f_56fe
    push hl
    ld b, a
    and $03
    ld c, a
    ld a, b
    swap a
    rlca
    and $1f
    rst $00
    sub e
    ld e, b
    db $ec
    ld e, b
    rla
    ld e, c
    ret c

    ld e, b
    db $dd
    ld e, b
    db $d3
    ld e, b
    ldh [$58], a
    call z, $e558
    ld a, [$c629]
    swap a
    rrca
    ld hl, $58a6
    rst AddAToHL
    ld a, [hl]
    pop hl
    ret


    ld a, [$c629]
    swap a
    rrca
    add c
    ld hl, $58a4
    rst AddAToHL
    ld a, [hl]
    ld [$d0c5], a
    jr jr_03f_58dd

    inc b
    dec b
    rlca
    ld [$0c0a], sp
    ld c, $0f
    inc bc
    inc b
    dec b
    rlca
    ld [$0b0a], sp
    inc c
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $08
    ld [$020a], sp
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld b, $06
    ld [$0101], sp
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    ld a, $78
    ld [$d0d7], a
    jr jr_03f_58dd

    ld hl, $d0c1
    set 5, [hl]
    ld hl, $d0c1
    set 1, [hl]

jr_03f_58dd:
    pop hl
    pop bc
    ret


    ld a, [$cbab]
    ld [$cba9], a
    ld a, [$cbaa]
    ld [$cba8], a
    pop hl
    pop bc
    ld a, [$cba9]
    or a
    jr z, jr_03f_58fe

    call Call_03f_590f
    ld a, [$cba8]
    and $f0
    jr jr_03f_5905

jr_03f_58fe:
    ld a, [$cba8]
    and $f0
    jr z, jr_03f_590a

jr_03f_5905:
    swap a
    call Call_03f_590f

jr_03f_590a:
    ld a, [$cba8]
    and $0f

Call_03f_590f:
    add $30
    call Call_03f_50d5
    jp $18a6


    call Call_03f_5933
    ld a, [$d0c1]
    or $04
    ld [$d0c1], a
    ld a, e
    add a
    or $60
    ld b, a
    inc b
    ld [hl], b
    pop hl
    pop bc
    ld a, $20
    call Call_03f_50d5
    jp $18a6


Call_03f_5933:
    ld hl, $d0e0

jr_03f_5936:
    ld a, [hl]
    or a
    ret z

    inc l
    jr jr_03f_5936

    ld [bc], a
    add $09
    add $60
    call nc, $d46c
    ld l, b
    ld e, c
    ld l, h
    ld e, c
    ld [hl], b
    ld e, c
    ld [hl], h
    ld e, c
    ld a, b
    ld e, c
    ld a, h
    ld e, c
    add b
    ld e, c
    add h
    ld e, c
    adc b
    ld e, c
    adc h
    ld e, c
    sub b
    ld e, c
    sub h
    ld e, c
    sbc b
    ld e, c
    sbc h
    ld e, c
    and d
    ld e, c
    xor b
    ld e, c
    xor [hl]
    ld e, c
    or c
    ld e, c
    and l
    rlc d
    inc bc
    and l
    rrc c
    dec b
    and l
    rl h
    ld d, $a5
    rr h
    ld e, $a5
    sla c
    dec h
    and l
    sra b
    ld a, [hli]
    and l
    sra l
    cpl
    and l
    swap e
    scf
    and l
    srl e
    inc a
    and l
    bit 0, b
    ld b, d
    and l
    bit 0, l
    ld b, a
    and l
    bit 1, d
    ld c, h
    and l
    bit 2, b
    rst $38
    xor l
    rlc d
    ld [$0304], sp
    xor l
    rlc [hl]
    ld [$0307], sp
    xor l
    set 7, a
    ld b, $05
    rst $38
    and l
    ld [bc], a
    inc bc
    xor l
    rrc h
    ld [$0307], sp
    ld e, $42
    ld a, [de]
    and $0f
    rst $00
    pop bc
    ld e, c
    ld a, d
    ld e, d
    ld e, $44
    ld a, [de]
    rst $00
    db $db
    ld e, c
    ld a, [c]
    ld e, c
    ld bc, $0a5a
    ld e, d
    inc de
    ld e, d
    ld h, $5a
    ld c, d
    ld e, d
    ld c, d
    ld e, d
    ld c, d
    ld e, d
    ld e, e
    ld e, d
    ld h, [hl]
    ld e, d
    ld a, $30
    ld [$cfd8], a
    xor a
    ld [$cfd9], a
    call $12a3
    ld e, $46
    ld a, $5a
    ld [de], a
    call $31d0
    jp $239b


    call $2387
    ret nz

    ld [hl], $30
    ld hl, $4000
    call $3048
    jp $239b


    call $2387
    ret nz

    ld [hl], $1e
    jp $239b


    call $2387
    ret nz

    ld [hl], $50
    jp $239b


    ld a, [$cc00]
    rrca
    jr c, jr_03f_5a1d

    ld hl, $cfd8
    dec [hl]

jr_03f_5a1d:
    call $2387
    ret nz

    ld [hl], $28
    jp $239b


    call $2387
    ret nz

    ld [hl], $08
    ld a, $01
    ld [$cfd9], a
    ld bc, $8404
    call $24b1
    ld l, $56
    ld [hl], $40
    inc l
    ld [hl], d
    call $24ad
    ld a, $f1
    ld c, $75
    call $3a52
    jp $239b


    call $2387
    ret nz

    ld [hl], $10
    call $3171

jr_03f_5a53:
    ld a, $b4
    call $0c74
    jp $239b


    call $2387
    ret nz

    ld a, $04
    call $315c
    jr jr_03f_5a53

    ld a, [$c4ab]
    or a
    ret nz

    ld a, $01
    ld [$cfc0], a
    xor a
    ld [$c4ae], a
    call $12ae
    jp $3ad9


    ld e, $44
    ld a, [de]
    rst $00
    add [hl]
    ld e, d
    or b
    ld e, d
    cp l
    ld e, d
    call $1e5a
    ld b, d
    ld a, [de]
    swap a
    and $0f
    ld hl, $5aa8
    rst AddAToHL
    ld a, [hl]
    ld e, $49
    ld [de], a
    ld e, $50
    ld a, $28
    ld [de], a
    ld e, $46
    ld a, $30
    ld [de], a
    call $15e9
    call $1e15
    jp $239b


    ld [bc], a
    ld b, $0a
    ld c, $12
    ld d, $1a
    ld e, $cd
    db $db
    rra
    call $25b8
    call $2387
    ret nz

    jp $239b


    call Call_03f_5ada
    ld a, [$cfd9]
    or a
    ret z

    ld e, $50
    ld a, $50
    ld [de], a
    jp $239b


    call $1fdb
    call $25b8
    call $2142
    ret c

    jp $3ad9


Call_03f_5ada:
    ld a, [$cc00]
    rrca
    jr c, jr_03f_5aed

    ld h, d
    ld l, $49
    inc [hl]
    ld a, [hl]
    and $1f
    ld [hl], a
    ld a, $c9
    call z, $0c74

jr_03f_5aed:
    ld e, $49
    ld bc, $7858
    ld a, [$cfd8]
    call $20cc
    jp $25b8


    ld [hl], b
    ld a, d
    add hl, de
    ld l, [hl]
    ld l, h
    and h
    ld l, [hl]
    ld l, [hl]
    dec c
    ld l, [hl]
    rst $28
    adc e
    jp hl


    ld [hl], h
    and a
    xor c
    ld [hl], l
    db $dd
    jp hl


    rst $30
    ld e, [hl]
    ld a, [de]
    ld h, h
    add b
    ld l, c
    xor $78
    ld l, e
    ld l, a
    inc h
    ld l, e
    ld [hl], b
    cp d
    ld l, e
    ld [hl], d
    and [hl]
    xor e
    db $f4
    ld l, h
    ld l, a
    ld d, e
    daa
    ld l, a
    call nc, $e955
    ld [hl], d
    cp d
    ld l, c
    db $f4
    sub [hl]
    jp hl


    ld l, a
    db $ed
    ld l, c
    pop af
    sub c
    jp hl


    ld a, c
    push hl
    jp hl


    ld a, e
    ld h, b
    jp hl


    ld hl, sp+$07
    inc l
    ld c, a
    and [hl]
    ld l, h
    ld d, c
    and [hl]
    ld l, h
    ld d, e
    inc h
    ld l, h
    ld d, h
    and e
    ld l, h
    ld d, l
    and b
    inc l
    ld d, [hl]
    rst $30
    ld l, h
    ld e, b
    rst AddAToHL
    ld l, h
    ld e, c
    xor a
    xor h
    ld e, d
    ret


    xor h
    ld e, h
    xor d
    xor h
    ld e, l
    cp e
    xor h
    ld e, a
    add hl, de
    inc l
    ld h, c
    dec c
    xor h
    ld h, e
    dec c
    dec hl
    ld a, a
    di
    db $ec
    ld b, b
    di
    db $ec
    ld b, d
    ld l, $ec
    jp $ec97


    ld b, b
    di
    db $ec
    ld b, d
    ld l, $ec
    ld b, e
    sub a
    ld l, c
    ld [hl], c
    sub c
    db $ec
    push bc
    ld e, h
    inc l
    ld b, l
    push af
    ld a, [de]
    ld e, h
    nop
    ld a, [de]
    ld e, d
    nop
    db $eb
    ld b, e
    call $43e9
    reti


    ld l, c
    ld b, l
    ld e, h
    jp hl


    ld b, [hl]
    db $db
    jp hl


    ld c, b
    ld a, d
    jp hl


    ld c, d
    ld b, d
    xor c
    ld c, e
    rst JumpTable
    xor c
    ld c, l
    or c
    ld l, c
    ld c, a
    ld d, [hl]
    jp hl


    ld c, a
    ldh a, [$e9]
    ld d, c
    ld e, c
    jp hl


    ld d, d
    cp [hl]
    jp hl


    ld d, h
    ld [hl], a
    ld l, c
    ld d, [hl]
    dec b
    xor c
    ld d, [hl]
    cp h
    jp hl


    ld e, b
    ld c, [hl]
    jp hl


    ld e, c
    rst $30
    jp hl


    ld e, e
    ld b, b
    jp hl


    ld e, h
    cp c
    jp hl


    ld e, [hl]
    ld a, $e9
    ld e, a
    db $d3

jr_03f_5bca:
    jp hl


    ld h, c
    ld a, e
    jp hl


    ld h, e
    ccf
    jp hl


    ld h, l
    add $e9
    ld h, a
    ld h, e
    jp hl


    ld l, c
    dec bc
    jp hl


    ld l, d
    ld d, b
    jp hl


    ld l, e
    set 5, c
    ld l, l
    ld a, [hl-]
    jp hl


    ld h, h
    rst JumpTable
    ld l, c
    ld a, l
    ld [de], a
    ld l, c
    ld a, [hl]
    ld a, [hl-]
    ld l, c
    ld a, a
    and h
    ld l, d
    ld b, b
    ld [hl], $6a
    ld b, c
    adc b
    ld [$5843], a
    ld l, d
    ld b, h
    push af
    jp hl


    ld b, d
    or b
    ld l, d
    ld b, [hl]
    ld d, [hl]
    ld a, [de]
    ld h, d
    ldh [rBCPS], a
    ld a, [hl]
    ld b, d
    ld l, b
    ld a, a
    ld [hl], b
    jp hl


    ld b, b
    ldh [rBCPD], a
    ld b, c
    or c
    ld h, a
    ld a, a
    ld l, c
    ld l, b
    ld b, b
    sbc l
    ld l, b
    ld b, c
    cp c
    ld l, b
    ld b, [hl]
    scf
    dec de
    ld a, b
    jr nz, jr_03f_5c3a

    ld a, d
    jr nz, jr_03f_5bca

    ld b, a
    add [hl]
    ld l, b
    ld c, b
    ld a, [$4a68]
    ld b, a
    ld l, b
    ld c, h
    add hl, bc
    ld l, b
    ld c, l
    ld d, a
    ld a, [de]
    ld l, l
    ld b, b
    or c
    ld h, l
    inc de
    ld [hl], c
    ld h, [hl]
    sbc a
    xor e

jr_03f_5c3a:
    ld a, e
    dec [hl]
    ld l, d
    ld c, d
    db $d3
    db $ec
    ld b, l
    ld e, h
    xor e
    ld [hl], a
    cp l
    ld l, d
    ld b, a
    ld l, c
    ld l, d
    ld c, c
    inc d
    ld [hl], a
    ld l, h
    cp h
    ld [$d065], a
    ld [$c65c], a
    ld l, d
    ld l, l
    dec de
    ld a, [de]
    ld h, a
    add b
    ld [$604b], a
    ld a, [de]
    ld l, c
    add b
    ld l, d
    ld c, l
    dec b
    ld [$7a4e], a
    ld l, d
    ld d, b
    ld d, [hl]
    ld [$fe51], a
    ld [$ae53], a
    xor d
    ld d, h
    pop hl
    ld l, d
    ld d, l
    push bc
    ld [$2657], a
    ld a, [de]
    ld l, d
    ldh [$2a], a
    ld e, b
    ld c, b
    ld [$085a], a
    xor d
    ld e, d
    rst $38
    ld [$355e], a
    ld l, d
    ld e, a
    adc d
    xor d
    ld h, b
    pop bc
    ld l, d
    ld h, d
    ld b, b
    ld [$0e63], a
    ld [$d864], a
    ld [$3867], a
    ld [$cf68], a
    ld [$1f6a], a
    ld l, d
    ld l, e
    ld e, d
    ld [$5c6c], a
    ld [$1f6e], a
    ld l, d
    ld l, a
    xor c
    xor d
    ld [hl], b
    and d
    ld l, e
    ld [hl], b
    cp d
    ld l, e
    ld [hl], d
    and [hl]
    xor e
    ld [hl], h
    ld l, h
    db $eb
    or $0b
    ld [$1d71], a
    ld [$1072], a
    ld l, d
    di
    sbc [hl]
    ld l, d
    ld [hl], e
    db $ed
    ld l, d
    ld [hl], l
    cp c
    xor d
    rst $30
    ld a, a
    ld l, d
    ld a, b
    db $10
    ld l, d
    ld a, c
    sbc a
    ld l, d
    ei
    ld b, [hl]
    ld [$a77c], a
    ld [$d5fd], a
    xor d
    ld a, a
    ld e, a
    ld l, e
    ld b, c
    dec l
    ld l, e
    jp nz, $abb3

    ld b, h
    or d
    xor e
    ld b, [hl]
    ld [hl], e
    xor e
    ld c, b
    ld d, c
    xor e
    ld c, c
    rst $30
    ld l, e
    res 3, b
    xor e
    ld c, l
    ld h, e
    db $eb
    ld c, a
    dec b
    xor e
    ld d, b
    adc $ab

jr_03f_5cfd:
    ld d, d
    jp nz, $d4eb

    xor d
    ld l, e
    ld d, [hl]
    ld [hl], b
    xor e
    ld d, a
    push de
    ld l, e
    reti


    ld h, l
    db $eb
    ld e, d
    add d
    xor e
    ld e, h
    jr jr_03f_5cfd

    db $dd
    db $fc
    db $eb
    ld e, a
    inc d
    xor e
    ld h, b
    xor e
    db $eb
    ld [c], a
    ld e, h
    ld l, e
    ld h, h
    ld d, $6b
    push hl
    db $fd
    ld l, e
    ld h, a
    add c
    dec hl
    jp hl


    ld a, $eb
    ld l, d
    ld a, [hl]
    db $eb
    ld l, h
    inc [hl]
    db $eb
    db $ed
    ld a, [c]
    xor e
    ld [hl], a

jr_03f_5d34:
    cp l
    ld l, e
    ld a, c
    and [hl]
    ld l, e
    db $fc
    inc hl
    ld l, e
    ld a, l
    ld l, h
    dec hl
    rst $38

jr_03f_5d40:
    inc sp
    inc l
    ld b, [hl]
    push de
    xor h
    ld c, b
    push de
    xor h
    ld c, d
    or h
    ld l, h
    ld c, h
    ld a, b
    xor h
    adc $00
    ld [hl], b
    ld a, d
    add hl, de
    ld a, b
    ld a, e
    xor a
    cp b
    ld a, h
    and b
    ld l, b
    ld c, a
    and b
    xor h
    ld [hl], b
    xor $ac
    ld [hl], c
    db $10
    ld l, h
    ld [hl], c
    dec sp
    daa
    ld a, c
    dec c
    daa
    ld a, c
    call Call_03f_7aa7
    adc l
    and a
    ld a, e
    ld b, [hl]
    nop
    nop
    nop
    nop
    jp nz, $3408

    nop
    cp l
    adc c
    ld sp, $2460
    adc d
    inc sp
    nop
    ld d, $8b
    dec [hl]
    db $10
    ret nz

    inc c
    ld [hl-], a
    ld h, b
    cp b
    adc l
    cpl
    ld h, b
    sub c
    adc [hl]
    ld [hl], $00
    ld [hl], h
    rrca
    inc c
    dec l
    ld [hl], h
    sub b
    rst JumpTable
    ld [hl], c
    db $76
    sub c
    rst JumpTable
    ld a, e
    ld [hl], h
    db $10

jr_03f_5d9f:
    rst JumpTable
    ld a, a
    db $76
    sub c
    rst JumpTable
    add l
    ld a, d
    sub d
    rst JumpTable
    adc e
    add l
    sub e
    rst JumpTable
    sub c
    adc b
    sub e
    inc bc
    jr jr_03f_5d34

    db $10
    ld a, [bc]
    ld b, $77
    sub h
    ld de, $8207
    sub l
    rla
    jr nz, jr_03f_5d40

    sub [hl]
    inc bc
    ld a, [bc]
    ld [hl], d
    sub a
    ld a, [bc]
    inc d
    add d
    sbc b
    ld bc, $722b
    nop
    nop
    jr jr_03f_5e43

    sbc c
    rst JumpTable
    sbc l
    ld a, b
    sbc d
    ld a, [bc]
    ld [$9b82], sp
    inc bc
    add hl, bc
    ld a, c

jr_03f_5dda:
    sub b
    ld a, [bc]
    jr nc, jr_03f_5e57

    sub b
    ld a, [bc]
    inc l
    add a
    sbc h
    ld a, [bc]
    jr nz, jr_03f_5e5d

    add d
    ld b, b
    add hl, bc
    ld a, c
    add h
    inc c
    ld [hl-], a
    nop
    nop
    nop
    nop
    ld [hl], l
    sub c
    rst JumpTable
    and c
    ld a, [hl]
    sbc a
    rst JumpTable
    and l
    add e
    and b
    ld c, $00
    ld [hl], d
    and c
    inc c
    jr nc, jr_03f_5e81

    ld [hli], a
    ld de, $7936
    and e
    ld a, [bc]
    jr z, jr_03f_5e0a

jr_03f_5e0a:
    nop
    nop
    nop
    ld [hl], c
    add b
    dec sp
    ld d, b
    add a
    inc h
    ld de, $8d2c
    inc b
    inc bc
    jr nz, jr_03f_5d9f

    and l
    rst JumpTable
    xor e
    nop
    add h
    inc bc
    and l
    adc l
    adc a
    ld a, [bc]
    inc sp
    adc l
    rrca
    ld de, $8c50
    and [hl]
    inc bc
    dec e
    adc h
    and a
    inc a
    ld b, b
    ld [hl], h
    sub c
    rst JumpTable
    or e
    add d
    xor b
    rst JumpTable
    or a
    add h
    xor c
    rlca
    nop
    ccf
    nop
    ld bc, $7d37
    ld a, [hli]

jr_03f_5e43:
    rst JumpTable
    cp a
    adc c
    inc h
    ld de, $3f10
    xor e
    ld b, c
    jr nz, jr_03f_5e8b

    nop
    nop
    inc d
    ld a, $00   ; xor a
    nop
    jr nz, jr_03f_5dda

    xor h

jr_03f_5e57:
    add hl, bc
    ld d, b
    ld a, l
    sub b
    inc c
    dec b

jr_03f_5e5d:
    add c
    xor l
    ld a, $20
    adc e
    sbc [hl]
    ld c, $00
    db $76
    sub c
    rst JumpTable
    rst $00
    ld a, l
    push de
    inc c
    inc hl
    ld a, e

jr_03f_5e6e:
    nop
    nop
    ld d, b
    add [hl]
    cpl
    rst JumpTable
    bit 7, b
    jr nc, jr_03f_5eb5

    jr nc, jr_03f_5ef3

    nop
    nop
    inc l
    ld a, l
    or c
    ld b, $20

jr_03f_5e81:
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl-], a
    ld de, $b120
    or e

jr_03f_5e8b:
    rst JumpTable
    pop de
    xor a
    add hl, hl
    ld a, [bc]
    jr nc, jr_03f_5f10

    sbc a
    rst JumpTable
    and l
    add e
    and b
    ld c, $00
    ld [hl], l
    or h
    rst JumpTable
    and c
    ld a, a
    or l
    ld d, $20
    ld a, b
    jr nc, @+$0e

    inc d
    ld [hl], d
    or [hl]
    ld c, $32
    adc b
    or a
    inc de
    jr nc, jr_03f_5f2b

    cp b
    ld d, $07
    nop
    nop
    nop
    nop

jr_03f_5eb5:
    add d
    add hl, sp
    rlca
    dec c
    add e
    ld a, [hl-]
    ld a, [bc]
    ld e, e
    dec a
    ld [bc], a
    nop
    ld h, $80
    cp e
    ld bc, $b510
    cp h
    ld d, $67
    dec b
    add d
    ld a, [hl-]
    dec [hl]
    ld a, h
    dec a
    add hl, sp
    stop
    cp [hl]
    ld a, [bc]
    nop
    nop
    nop
    nop
    adc b
    nop
    ld bc, $0001

jr_03f_5edd:
    ld c, a
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    push bc
    ret


    ld a, [bc]
    ld d, $84
    cp a
    ld b, d
    jr nz, jr_03f_5e6e

jr_03f_5eee:
    ret nz

    ld b, c
    ld e, b
    adc a
    nop

jr_03f_5ef3:
    nop
    ld [bc], a

jr_03f_5ef5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_5efc:
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_5f02:
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_5f08:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_5f10:
    nop
    nop
    nop
    nop

jr_03f_5f14:
    nop
    nop

jr_03f_5f16:
    nop
    nop
    nop

jr_03f_5f19:
    nop

jr_03f_5f1a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_5f23:
    nop
    nop
    nop
    nop
    nop

jr_03f_5f28:
    nop

jr_03f_5f29:
    nop
    nop

jr_03f_5f2b:
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    ld b, c
    rst JumpTable
    reti


    adc d
    rrca
    dec e
    db $10
    sub [hl]
    ld b, d
    ld e, $10
    sbc b

jr_03f_5f3e:
    ld b, e
    rra
    jr nz, jr_03f_5edd

    call nz, $3020
    jr nc, jr_03f_5f8c

    ld hl, $9e20
    ld b, [hl]
    ld [hli], a
    jr nz, jr_03f_5eee

    ld b, a
    inc hl
    jr nz, jr_03f_5ef5

    ret z

    inc h
    nop
    xor b
    ret


    dec h
    ld h, b
    xor l
    jp z, Jump_03f_6026

    or b

jr_03f_5f5e:
    set 3, a
    db $dd
    or e
    adc d
    rst JumpTable

jr_03f_5f64:
    push hl
    or [hl]
    pop hl
    rst JumpTable
    db $eb
    sbc [hl]
    ld b, [hl]
    ld [hli], a
    jr nc, jr_03f_5f28

    ld c, l
    jr nc, jr_03f_5f71

jr_03f_5f71:
    adc b
    jr nz, jr_03f_5efc

    jr nz, jr_03f_5f02

    db $10
    adc h
    db $10
    ccf
    jr nc, jr_03f_5f08

    jr nz, jr_03f_5f8f

    db $10
    adc h
    daa
    adc [hl]
    rla
    inc c
    scf
    adc h
    jr nz, jr_03f_5f19

    db $10
    ccf
    jr nc, jr_03f_5f23

jr_03f_5f8c:
    jr nz, jr_03f_5f29

    db $10

jr_03f_5f8f:
    ccf
    jr nc, jr_03f_5f14

    jr nz, jr_03f_5f16

    db $10
    add d
    jr nc, jr_03f_5f1a

    nop
    add d
    nop
    ld [bc], a
    nop
    sbc d
    dec hl
    inc d
    dec hl
    adc d
    jr nz, jr_03f_5fb0

    db $10
    sub h
    jr nz, @-$65

    db $10
    ccf
    jr nc, jr_03f_5f64

    ld [$18b8], sp
    cp b

jr_03f_5fb0:
    jr z, jr_03f_5fea

    jr c, jr_03f_5f3e

    dec sp
    inc c
    dec de
    adc d
    ld [de], a
    adc h
    ld [hli], a
    adc [hl]
    ld [hl-], a
    ld c, $02
    adc d
    nop
    inc c
    jr nz, @-$7e

    dec de
    nop
    dec de
    adc l
    jr nz, jr_03f_5fdc

    db $10
    adc [hl]
    nop
    sub c
    jr nz, jr_03f_5fe5

    db $10
    jp $c30e


    ld e, $c3
    ld l, $43
    ld a, $9c
    db $10
    inc e

jr_03f_5fdc:
    jr nz, jr_03f_5f5e

    nop
    and a
    db $10
    xor b
    db $10
    add hl, hl
    db $10

jr_03f_5fe5:
    add b
    ld h, b
    cp e
    db $10
    dec hl

jr_03f_5fea:
    ld h, b
    add b
    nop
    xor h
    ld h, b
    xor l
    ld h, b
    ld l, $60
    nop
    nop
    nop
    ld a, a
    ld b, $06
    nop
    ld a, a
    inc b
    inc b
    db $fc
    ld a, a
    ld b, $06
    db $fc
    ld a, a
    inc b
    inc b
    ld hl, sp+$7f
    ld b, $06
    ld hl, sp+$7f
    ld [bc], a
    ld [bc], a
    db $fc
    ld bc, $0604
    db $fc
    ld bc, $0606
    cp $02
    inc b
    ld b, $fc
    ld [bc], a
    ld b, $06
    db $fc
    ld [bc], a
    inc b
    ld b, $fc
    inc bc
    ld b, $06
    db $fc

Jump_03f_6026:
    inc bc
    ld b, $06
    ld a, [$0603]
    ld b, $fc
    inc b
    ld b, $06
    ld hl, sp+$04
    inc b
    inc b
    db $fc
    dec b
    ld b, $06
    db $fc
    dec b
    ld b, $06
    ld a, [$0605]
    ld b, $f8
    dec b
    ld b, $06
    db $fc
    ld b, $06
    ld b, $fc
    rlca
    ld b, $06
    db $fc
    ld [$0606], sp
    ld hl, sp+$08
    ld b, $06
    ld a, [$0609]
    ld b, $f8
    add hl, bc
    ld b, $06
    db $fc
    ld a, [bc]
    ld b, $06
    ld hl, sp+$0c
    ld b, $06
    db $fc
    db $10
    ld b, $06
    nop
    inc d
    ld b, $06
    db $fc
    ld [$0409], sp
    cp $0e
    ld b, $06
    db $fc
    db $10
    ld b, $06
    cp $12
    ld b, $06
    cp $0c
    ld a, [bc]
    ld a, [bc]
    ld hl, sp+$0f
    inc b
    inc b
    db $fc
    inc d
    inc c
    inc c
    db $fc
    ld a, a
    add hl, bc
    add hl, bc
    ld a, [$061a]
    inc bc
    ld a, [$061e]
    ld de, $7ffa
    ld b, $06
    ld a, [$0314]
    inc bc
    db $fc
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    db $fc
    inc b
    inc c
    ld b, $f8
    ld a, a
    inc b
    inc b
    db $fc
    ld [bc], a
    ld b, $06
    ld hl, sp+$06
    ld b, $03
    ld hl, sp+$19
    ld a, [bc]
    ld a, [bc]
    ld hl, sp+$30
    inc c
    inc c
    ld hl, sp+$50
    inc b
    inc bc
    nop
    jr nc, @+$08

    ld b, $fc
    inc bc
    ld c, $07
    ld hl, sp+$14
    ld [de], a
    ld [de], a
    db $f4
    ld h, h
    inc c
    inc c
    nop
    dec b
    inc bc
    ld [bc], a
    nop
    ld bc, $0d0d
    ld hl, sp+$7f
    ld b, $06
    db $fc
    inc d
    inc b
    inc b
    nop
    ld bc, $0808
    db $fc
    ld a, a
    rrca
    inc c
    ld hl, sp+$7f
    ld b, $06
    db $fc
    ld bc, $0c07
    db $fc
    ld b, b
    ld b, $06
    ld hl, sp+$34
    rlca
    rlca
    ld hl, sp+$04
    ld b, $06
    nop
    jr nz, jr_03f_6100

    ld b, $f8
    ld b, $02

jr_03f_6100:
    ld [bc], a
    db $fc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, b
    inc c
    inc bc
    nop
    ld e, h
    ld bc, $0044
    ld bc, $0800
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc c
    ld a, [bc]
    nop
    ld d, e
    add e
    ld b, h
    nop
    ld b, b
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc c
    ld a, [bc]
    nop
    nop
    add e
    ld b, h
    rst $38
    ld b, b
    ld [$0000], sp
    nop
    add d
    ld b, h
    rst $38
    ld b, b
    nop
    nop
    nop
    adc a
    nop
    nop
    nop
    ld b, b
    nop
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
    ld [bc], a
    ld [hli], a
    nop
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
    nop
    nop
    ld d, e
    add e
    ld b, h
    nop
    ld b, b
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
    ld [hl], d
    add d
    ld h, [hl]
    nop
    ld b, b
    ld e, $00
    nop
    nop
    ld [bc], a
    ld [hli], a
    nop
    ld bc, $0800
    nop
    nop
    add d
    inc sp
    nop
    ld b, b
    nop
    nop
    nop
    ld e, h
    add c
    inc sp
    nop
    ld bc, $0000
    nop
    nop
    inc b
    ld [hli], a
    cp $01
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld bc, $0a08
    nop
    ld e, c
    add d
    ld [hl], a
    nop
    ld b, b
    ld a, [bc]
    ld bc, $5c00
    ld bc, $0032
    ld bc, $0800
    nop
    ld e, l
    ld bc, $0032
    ld bc, $0800
    nop
    add hl, bc
    add d
    jp z, Boot

    nop
    ld bc, $0000
    add d
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld [hl], h
    add a
    ld [hli], a
    db $fc
    ld b, b
    inc c
    inc bc
    nop
    nop
    add a
    ld [hli], a
    db $fc
    ld b, b
    inc e
    ld a, [bc]
    nop
    ld [hl], e
    add [hl]
    ld [hli], a
    db $fc
    ld b, b
    nop
    ld [bc], a
    nop
    ld a, d
    and $22
    ld a, [$1a40]
    dec b
    nop
    add d
    add [hl]
    ld [hli], a
    db $fc
    ld b, b
    ld a, [bc]
    ld [bc], a
    nop
    nop
    rst $20
    ld de, $40fc
    nop
    nop
    nop
    ld [hl], c
    add [hl]
    ld hl, $40fc
    jr @+$07

    nop
    add [hl]
    add [hl]
    ld d, l
    ld a, [$0a40]
    nop
    nop
    nop
    add sp, $55
    db $fc
    ld b, b
    ld [$000a], sp
    ld [hl], e
    add [hl]
    ld [hli], a
    db $fc
    ld b, b
    ld a, [bc]
    inc b
    nop
    ccf
    add sp, $66
    ld hl, sp+$40
    nop
    ld [bc], a
    nop
    nop
    ld l, c
    ld d, l
    ld hl, sp+$40
    ld a, [bc]
    ld a, [bc]
    nop
    and a
    ld b, $22
    db $fc
    ld b, b
    jr jr_03f_622c

    nop
    nop

jr_03f_622c:
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld [$f400], a
    ld b, b
    ld b, $0a
    nop
    adc [hl]
    inc b
    nop
    ld hl, sp+$40
    ld c, $04
    nop
    ld e, h
    add c
    ld b, h
    nop
    ld bc, $0200
    nop
    adc a
    add a
    inc sp
    db $fc
    ld b, b
    ld [$0004], sp
    ld a, a
    ld l, e
    ld h, [hl]
    db $fc
    ld b, b
    ld [$0002], sp
    nop
    add d
    ldh a, [rIE]
    ld b, b
    nop
    nop
    nop
    ld d, a
    nop
    nop
    nop
    ld b, b
    ld [de], a
    inc b
    nop
    ld d, d
    add d
    call z, $0800
    db $10
    dec b
    nop
    adc a
    nop
    ld h, [hl]
    nop
    ld b, b
    jr jr_03f_627e

    nop
    nop
    add h
    ld [hl], h

jr_03f_627e:
    cp $40
    nop
    nop
    nop
    ld e, h
    nop
    nop
    nop

jr_03f_6287:
    ld bc, $0502
    nop
    nop
    add [hl]
    ld [hli], a
    db $fc
    ld b, b
    inc e
    ld a, [bc]
    nop
    jr c, jr_03f_6287

    ld [hli], a
    nop
    ld bc, $0102
    nop
    ld l, [hl]
    add [hl]
    ld d, h
    ld a, [$0040]
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    add [hl]
    ld [hli], a
    db $fc
    ld bc, $050a
    nop
    ld [hl], e
    ld b, $66
    db $fc
    ld bc, $0514
    nop
    ld [hl], e
    pop af
    inc sp
    db $fc
    ld bc, $0416
    nop
    nop
    ld h, a
    nop
    db $fc
    ld bc, $0000
    nop
    nop
    db $ec
    ld [hli], a
    db $fc
    ld bc, $0a06
    nop
    and c
    add [hl]
    ld [hli], a
    db $fc
    ld bc, $0508
    nop
    and d
    ld b, $22
    db $fc
    ld bc, $0400
    nop
    sub e
    ld l, l
    ld h, [hl]
    ld hl, sp+$01
    inc b
    ld bc, $a700
    add [hl]
    ld [hli], a
    db $fc
    ld bc, $0218
    nop
    adc a
    add [hl]
    ld [hli], a
    db $fc
    ld bc, $0212
    nop
    ld [hl], e
    add [hl]
    ld [hli], a
    db $fc
    ld bc, $050e
    nop
    sub b
    add [hl]
    ld d, l
    db $fc
    ld b, b
    ld [bc], a
    ld [bc], a
    nop
    ld [hl], e
    add e
    ld b, h
    nop
    ld b, b
    jr jr_03f_632b

    nop

jr_03f_632b:
    cp h
    ld b, $66
    ld hl, sp+$40
    jr jr_03f_6336

    nop
    nop
    ld b, $22

jr_03f_6336:
    ld hl, sp+$40
    inc e
    ld a, [bc]
    nop
    cp [hl]
    ld e, b
    adc b
    db $fc
    ld b, b
    inc d
    ld bc, $7b00
    ld b, $66
    ld hl, sp+$40
    nop
    dec b
    nop
    nop
    add h
    ld h, [hl]
    ld hl, sp+$01
    jr z, jr_03f_635b

    nop
    ld [hl], e
    add [hl]
    ld h, [hl]
    ld a, [$1840]
    ld [bc], a
    nop

jr_03f_635b:
    add h
    ld l, [hl]
    ld b, h
    ld hl, sp+$40
    db $10
    dec b
    nop
    add h
    add [hl]
    ld h, e
    db $fc
    ld b, b
    inc d
    ld [bc], a
    nop
    push bc
    ld l, [hl]
    ld b, h
    ld hl, sp+$40
    nop
    inc b
    nop
    push bc
    ld b, $66
    db $fc
    ld b, b
    ld [bc], a
    ld bc, $1500
    ld l, a
    add [hl]
    nop
    ld bc, $0400
    nop
    dec e
    ldh a, [$6c]
    db $f4
    ld b, b
    nop
    ld bc, $1c00
    add [hl]
    xor d
    ldh a, [rLCDC]
    nop
    ld [bc], a
    nop
    inc e
    add [hl]
    ld d, l
    ld hl, sp+$40
    ld c, $05
    nop
    ld l, e
    nop
    nop
    nop
    ld b, b
    nop
    inc b
    nop
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
    db $10
    inc b
    nop
    ld d, d
    ld a, [bc]
    nop
    ld d, d
    ld [$4e00], sp
    dec c
    nop
    ld d, d
    ld a, [bc]
    nop
    ld d, d
    add hl, bc
    nop
    nop
    nop
    nop
    ld d, d
    add hl, bc
    nop
    ld d, $09
    nop
    ld d, d
    dec bc
    nop
    inc l
    dec c
    nop
    nop
    nop
    nop
    ld d, d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
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
    nop
    nop
    nop
    nop
    jr jr_03f_63f9

    nop
    nop
    nop
    nop
    ld d, $0b
    nop
    nop
    nop
    nop
    nop

jr_03f_63f9:
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld [$0000], sp
    nop
    ld e, h
    ld [de], a
    ld [bc], a
    ld e, h
    inc d
    inc bc
    ld e, h
    ld d, $01
    ld e, h
    jr jr_03f_6410

    ld e, h

jr_03f_6410:
    ld a, [de]
    nop
    nop
    inc e
    ld bc, $1e00
    nop
    nop
    jr c, jr_03f_6427

    nop
    nop
    nop
    ld d, a
    ld a, [bc]
    ld [bc], a
    nop
    jr z, jr_03f_642d

    nop
    nop
    add b

jr_03f_6427:
    nop
    nop
    add b
    nop
    db $10
    add b

jr_03f_642d:
    nop
    inc b
    sub b
    nop
    ld h, $a0
    nop
    ld d, $b0
    nop
    ld [bc], a
    or b
    nop
    db $10
    sub b
    nop
    db $10
    or b
    nop
    ld e, $90
    nop
    ld b, d
    or b
    ld [hl], c
    add b
    ld l, b
    nop
    ld b, b
    ret nc

    nop
    ld d, $b0
    nop
    ld d, $b0
    nop
    ld d, $b0
    ld c, e
    nop
    ld [bc], a
    ld d, b
    ld a, [bc]
    inc de
    ld d, a
    ld a, [bc]
    jr nz, jr_03f_645e

jr_03f_645e:
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
    nop
    nop
    ld d, a
    nop
    ld b, b
    and d
    add b
    ld h, a
    xor b
    add b
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld d, c
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    inc d
    ld [hl], $10
    jr nz, jr_03f_64cd

    nop
    db $10
    ld [hl-], a
    nop
    nop
    add hl, sp
    nop
    nop
    scf
    nop
    inc h
    sbc e
    add b
    ld l, b
    ld a, [hl-]
    nop
    nop
    ld b, b
    nop
    inc b
    scf
    ld d, $24
    ld b, l
    inc e
    jr nz, jr_03f_64e8

    inc e
    inc h
    rlca
    nop
    ld [bc], a
    rlca
    nop
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld [$0400], sp
    cp c
    add b
    ld l, b
    cp a
    add b
    ld l, b
    ccf
    ld d, $24
    dec [hl]
    inc e
    inc b
    inc [hl]

jr_03f_64cd:
    db $10
    inc b
    dec [hl]
    nop
    inc h
    nop
    nop
    nop
    db $e3
    add b
    ld l, b
    dec [hl]
    db $10
    inc b
    ld a, $10
    inc b
    rst AddAToHL
    add b
    ld l, b
    ld b, b
    ld a, [bc]
    inc [hl]
    ld b, a
    ld a, [bc]
    db $10
    ld b, a

jr_03f_64e8:
    nop
    db $10
    rlca
    nop
    nop
    ld b, c
    nop
    nop
    ei
    add b
    ld l, b
    ld b, l
    nop
    jr nz, jr_03f_652a

    nop
    ld de, $8019
    ld l, c
    ld d, c
    ld d, $00
    ccf
    nop
    jr nz, jr_03f_6558

    add b
    ld l, c
    db $76
    add b
    ld l, c
    ld a, a
    add b
    ld l, c
    ld b, a
    inc e
    ld hl, $80a9
    ld l, c
    jp z, Jump_03f_6980

    call c, Call_03f_6980
    nop
    nop
    nop
    ld c, a
    nop
    ld h, b
    rlca
    nop
    ld [de], a
    call c, Call_03f_6680
    rlca
    nop
    ld de, $0c00
    and b
    ld b, h

jr_03f_652a:
    nop
    nop
    ld b, d
    nop
    nop
    rst $30
    add b
    ld l, c
    nop
    nop
    nop
    inc sp
    ld [de], a
    nop
    rlca
    nop
    nop
    db $fd
    add b
    ld l, c
    nop
    nop
    add b
    nop
    nop
    nop
    call c, Call_03f_6680
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    ld a, [bc]
    jr nz, jr_03f_6554

jr_03f_6554:
    nop
    nop
    nop
    nop

jr_03f_6558:
    ldh [rPCM34], a
    ld [de], a
    db $10
    ld e, e
    ld a, [bc]
    ld b, b
    ld hl, $6a80
    adc c
    add b
    ld l, b
    dec l
    add b
    ld l, d
    rlca
    nop
    nop
    rlca
    nop
    nop
    ld h, b
    inc c
    ld b, b
    ld h, [hl]
    ld a, [bc]
    ld bc, $0011
    nop
    inc sp
    add b
    ld l, d
    add b
    nop
    ld [de], a
    add hl, sp
    add b
    ld l, d
    ld c, e
    add b
    ld l, d
    ld [hl], d
    add b
    ld l, d
    ld a, e
    add b
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add b
    ld l, d
    ld e, c
    add b
    ld l, b
    ld e, c
    db $10
    ld b, b
    sub l
    add b
    ld l, b
    ld d, b
    add b
    ld l, b
    nop
    ld d, $a0
    ld h, l
    add b
    ld l, b
    scf
    ld a, [de]
    nop
    sub [hl]
    add b
    ld l, d
    ccf
    ld [$3830], sp
    ld b, $20
    jp $6a80


    nop
    nop
    nop
    nop
    ld d, $b0
    inc b
    nop
    nop
    ld d, d
    nop
    nop
    ld b, e
    nop
    nop
    scf
    ld d, $14
    dec a
    inc b
    inc [hl]
    ld c, l
    nop
    ld de, $1632
    db $10
    db $e4
    add b
    ld l, d
    inc [hl]
    stop
    nop
    nop
    nop
    nop
    ld d, $90
    ld a, [hl]
    add b
    ld h, a
    ld h, [hl]
    ld [de], a
    nop
    ld h, e
    inc b
    ld [hl-], a
    db $ed
    add b
    ld l, d
    ld [hl], l
    nop
    db $10
    inc c
    inc b
    db $10
    ld d, [hl]
    nop
    jr nc, jr_03f_6624

    db $10
    ld [bc], a
    rst $38
    add b
    ld l, d
    nop
    nop
    nop
    ld d, c
    nop
    ld bc, $000f
    ld [hli], a
    nop
    nop
    nop
    dec b
    add b
    ld l, e
    dec bc
    add b
    ld l, e
    ld de, $6b80
    add hl, hl
    add b
    ld l, e
    ld d, a
    ld c, $10
    rlca
    nop
    nop
    dec [hl]
    add b
    ld l, e
    dec d
    jr @+$42

    ld d, b
    add b
    ld l, e
    nop
    nop
    nop
    ld e, h
    add b
    ld l, e
    ld l, [hl]
    add b

jr_03f_6624:
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    add b
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    add b
    ld l, e
    ld b, a
    ld a, [bc]
    ld [de], a
    ld b, a
    nop
    stop
    nop
    nop
    jr z, jr_03f_6642

jr_03f_6642:
    nop
    nop
    nop
    add b
    or e
    add b
    ld l, e
    call nc, Call_03f_6b80
    ld c, c
    nop
    db $10
    jp c, Jump_03f_6b80

    rrca
    nop
    jr nz, @+$33

    stop
    ld sp, $0000
    inc [hl]
    nop
    db $10
    inc [hl]
    stop
    dec l
    nop
    nop
    ld h, l
    db $10
    ld [hl-], a
    ld d, b
    ld a, [bc]
    db $10
    scf
    ld d, $34
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    add b
    ld h, b
    nop
    nop
    nop
    nop
    add b
    rlca
    nop
    inc de
    ld h, a

Call_03f_6680:
    nop
    ld d, b
    inc [hl]
    stop
    ld [hl], l
    ld d, $00
    rlca
    nop
    ld [hl-], a
    ld [hl-], a
    ld d, $10
    ld [hl], c
    nop
    ld d, b
    ld a, [c]
    add b
    ld l, e
    nop
    nop
    add b
    nop
    nop
    add b
    ei
    add b
    ld l, e
    ld l, b
    ld a, [de]
    jr nc, jr_03f_66a8

    add b
    ld l, h
    ld a, $00   ; xor a
    jr nc, jr_03f_66da

    ld [de], a

jr_03f_66a8:
    nop
    nop
    nop
    add b
    dec a
    nop
    inc h
    nop
    nop
    add b
    nop
    nop
    add b
    db $10
    add b
    ld l, h
    nop
    nop
    add b
    inc [hl]
    db $10
    ld [hl-], a
    ld sp, hl
    add b
    ld h, a
    add hl, de
    add b
    ld l, h
    ld [hl], a
    add b
    ld l, b
    add e
    add b
    ld l, b
    ld [hl], d
    ld e, $04
    jr nc, jr_03f_66cf

jr_03f_66cf:
    jr nz, jr_03f_6705

    db $10
    ld [de], a
    ld d, c
    ld a, [de]
    ld de, $801f
    ld l, h
    ld c, h

jr_03f_66da:
    nop
    db $10
    ld e, h
    inc b
    nop
    ld e, h
    ld b, $40
    ld e, h
    ld [$5c53], sp
    inc c
    db $10
    ld e, h
    ld c, $50
    ld e, h
    db $10
    ld b, b
    ld e, h
    ld [de], a
    jr nz, jr_03f_674e

    inc d
    jr nc, jr_03f_6751

    ld d, $10
    ld e, h
    jr jr_03f_670a

    ld e, h
    ld a, [de]
    nop
    ld e, h
    inc e
    db $10
    ld e, h
    ld e, $20
    ld e, l
    ld a, [bc]

jr_03f_6705:
    db $10
    ld e, l
    ld [$0000], sp

jr_03f_670a:
    nop
    nop
    ld h, b
    nop
    nop
    ld h, b
    ld [bc], a
    ld d, b
    ld h, b
    inc b
    ld b, b
    ld h, b
    ld b, $00
    ld h, b
    ld [$6050], sp
    ld a, [bc]
    ld b, b
    ld h, b
    inc c
    ld b, b
    ld h, b
    ld c, $50
    ld e, a
    db $10
    db $10
    ld h, b
    ld [de], a
    ld d, b
    ld h, b
    inc d
    db $10
    ld h, b
    ld d, $40
    ld h, b
    jr @+$52

    ld h, b
    ld a, [de]
    ld b, b
    ld h, b
    db $10
    jr nz, jr_03f_679a

    ld e, $40
    ld e, a
    nop
    ld d, b
    ld e, a
    ld [bc], a
    ld b, b
    ld e, a
    inc b
    ld d, b
    ld e, a
    ld d, $03
    ld h, c
    nop
    ld d, b
    ld h, c
    ld [bc], a
    inc sp

jr_03f_674e:
    ld e, l
    inc c
    inc sp

jr_03f_6751:
    nop
    nop
    nop
    ld e, h
    inc b
    nop
    ld e, h
    inc b
    db $10
    ld e, h
    inc b
    jr nz, jr_03f_67ba

    ld b, $40
    ld e, h
    ld b, $50
    ld e, h
    ld [$5c43], sp
    ld [$5c53], sp
    inc c
    jr nc, jr_03f_67ca

    nop
    nop
    ld e, l
    inc b
    ld d, e
    ld e, l
    inc b
    nop
    ld e, l
    inc d
    nop
    ld e, l
    inc d
    db $10
    ld e, l
    inc d
    jr nz, jr_03f_67e4

    inc b
    nop
    ld h, l
    ld b, $20
    ld h, l
    ld [$6510], sp
    ld a, [bc]
    jr nc, jr_03f_67e8

    db $10
    ld [hli], a
    ld e, l
    ld [de], a
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_679a:
    nop
    nop
    ld e, [hl]
    nop
    inc sp
    ld e, [hl]
    inc b
    inc de
    ld e, [hl]
    inc c
    ld d, b
    ld e, [hl]
    ld [$5e53], sp
    ld c, $50
    ld e, [hl]
    db $10
    ld b, b
    ld e, [hl]
    ld [de], a
    db $10
    ld h, [hl]
    ld [de], a
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_67ba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_67ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    db $10
    inc sp
    ld h, h
    inc e
    ld d, e
    ld h, [hl]
    ld a, [bc]
    inc b
    ld h, [hl]
    nop
    inc sp

jr_03f_67e4:
    ld h, [hl]
    inc b
    db $10
    ld h, [hl]

jr_03f_67e8:
    inc b
    jr nz, jr_03f_6851

    ld b, $03
    ld h, l
    jr jr_03f_6813

    ld h, l
    inc e
    inc de
    ld h, h
    inc e
    ld b, e
    nop
    nop
    nop
    ld h, [hl]
    ld [de], a
    ld a, [bc]
    ld h, d
    inc d
    ld [bc], a
    ld h, d
    db $10
    ld [de], a
    ld h, d
    ld b, $53
    ld h, d
    ld a, [bc]
    ld b, d
    ld h, d
    ld d, $52
    ld h, d
    inc c
    ld b, e
    ld h, d
    ld [bc], a
    inc hl
    ld h, d
    nop

jr_03f_6813:
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    ld h, e
    inc b
    ld [hl-], a
    ld h, e
    ld b, $03
    ld h, e
    ld a, [bc]
    ld b, e
    ld h, h
    inc d
    ld d, e
    ld h, e
    ld c, $53
    ld h, e
    ld [de], a
    inc de
    ld h, h
    nop
    inc de
    ld h, h
    inc b
    ld d, e
    ld h, h
    ld [$6433], sp
    inc c
    inc de
    ld h, h
    sub b
    inc bc
    ld e, b

jr_03f_6851:
    nop
    ld b, b
    ld e, b
    nop
    ld d, c
    ld e, b
    add b
    ld [bc], a
    ld e, c
    nop
    ld b, b
    ld e, c
    nop
    ld b, d
    ld e, c
    nop
    ld b, h
    ld e, c
    add b
    ld b, [hl]
    ld h, d
    nop
    nop
    ld e, e
    nop
    ld b, b
    ld e, e
    ld b, $43
    ld l, $80
    nop
    ld l, e
    ld [$6b40], sp
    adc b
    ld b, c
    ld d, l
    nop
    nop
    ld d, l
    ld [$5520], sp
    db $10
    jr nc, jr_03f_68d6

    sbc b
    db $10
    ld c, a
    jr jr_03f_68c6

    ld c, a
    sbc b
    ld d, b
    rlca
    nop
    ld [de], a
    rlca
    nop
    ld [hli], a
    rlca
    nop
    ld [de], a
    ld b, c
    add b
    rlca
    ld e, b
    ld a, [de]
    db $10
    ld e, b
    sbc d
    jr nz, @+$48

    inc d
    nop
    ld b, [hl]
    inc d
    db $10
    ld b, [hl]
    inc d
    jr nz, jr_03f_68eb

    inc d
    jr nc, jr_03f_68ee

    inc d
    jr nz, jr_03f_68f1

    inc d
    jr nc, jr_03f_68f4

    inc d
    db $10
    ld b, [hl]
    inc d
    nop
    ld b, [hl]
    inc d
    nop
    ld b, [hl]
    sub h
    db $10
    rlca
    nop
    nop
    rlca
    add b
    ld bc, $003b
    nop
    dec sp
    nop
    db $10
    dec sp

jr_03f_68c6:
    nop
    jr nz, jr_03f_6904

    nop
    nop
    dec sp
    nop
    nop
    inc a
    nop
    nop
    inc a
    nop
    nop
    ld a, [hl-]
    add b

jr_03f_68d6:
    nop
    ld sp, $0310
    ld sp, $1210
    ld sp, $2210
    ld sp, $3290
    ld b, [hl]
    nop
    inc sp
    ld b, [hl]
    nop
    inc [hl]
    ld b, [hl]
    nop

jr_03f_68eb:
    ld [hl-], a
    ld b, [hl]
    nop

jr_03f_68ee:
    dec [hl]
    ld b, [hl]
    nop

jr_03f_68f1:
    inc [hl]
    ld b, [hl]
    nop

jr_03f_68f4:
    dec [hl]
    ld b, [hl]
    nop
    inc h
    ld b, [hl]
    add b
    ld [hli], a
    ld de, $0500
    ld de, $0200
    ld de, $0200

jr_03f_6904:
    ld de, $0200
    ld de, $0200
    ld de, $0200
    ld de, $0000
    ld de, $0200
    ld de, $0200
    ld de, $0280
    ld e, a
    nop
    ld d, b
    ld e, h
    ld [bc], a
    ld e, c
    ld e, l
    ld a, [bc]
    db $10
    ld h, b
    ld b, $00
    ld e, h
    db $10
    ld b, b
    ld h, l

jr_03f_6929:
    inc d
    inc sp
    ld e, l
    ld a, [bc]
    db $10
    ld e, l
    nop
    inc hl
    ld e, l
    ld a, [bc]
    db $10
    ld e, l
    nop
    inc hl
    ld e, l
    ld a, [bc]
    db $10
    ld h, c
    nop
    ld d, b
    ld e, l
    db $10
    inc de
    ld e, a
    ld d, $03
    ld e, l
    ld a, [bc]
    db $10
    ld e, l
    ld [$5d00], sp
    ld [$6000], sp
    ld [$6050], sp
    ld a, [bc]
    ld b, b
    ld e, l
    ld a, [bc]
    db $10
    ld d, b
    nop
    ld h, b
    ld d, b
    nop
    ld h, b
    ld d, b
    nop
    ld h, b
    ld d, b
    ld a, [bc]
    inc de
    ld e, e
    ld b, $45
    nop
    nop
    ld [hli], a
    nop
    nop
    ld [hli], a
    ld d, b
    ld [de], a
    inc d
    ld l, b
    nop
    ld b, [hl]
    nop
    ld h, b
    and b
    nop
    ld [$0093], a
    jr jr_03f_6929

    nop
    ld [bc], a
    or c
    nop
    add [hl]
    and d
    ld c, [hl]

Call_03f_6980:
Jump_03f_6980:
    nop
    nop
    ld c, [hl]
    jr jr_03f_698e

    ld d, d
    jr jr_03f_69ea

    ld d, d
    jr @+$65

    ld h, [hl]
    inc b
    dec h

jr_03f_698e:
    ld h, [hl]
    inc b
    dec d
    ld c, [hl]
    ld e, $25
    ld d, e
    ld a, [bc]
    ld h, [hl]
    ld d, e
    ld a, [de]
    ld h, a
    ld h, e
    ld c, $51
    ld d, [hl]
    ld c, $01
    ld d, [hl]
    ld [de], a
    ld hl, $1656
    dec d
    ld d, [hl]
    sbc b
    add hl, sp
    ld c, b
    nop
    inc b
    ld c, b
    nop
    nop
    ld c, b
    nop
    ld [bc], a
    ld c, b
    nop
    inc bc
    rrca
    nop
    dec hl
    nop
    ld b, $a5
    inc de
    nop
    ld b, $80
    ld [de], a
    rla
    ld c, b
    nop
    nop
    ld c, b
    nop
    ld [bc], a
    ld c, b
    add b
    ld bc, $0014
    nop
    ld l, d
    nop
    ld bc, $1815
    ld b, e
    ld l, e
    nop
    ld b, [hl]
    dec d
    jr jr_03f_6a1d

    ld l, l
    add b
    rrca
    ld c, c
    nop
    nop
    ld c, c
    nop
    jr nz, jr_03f_6a2c

    nop
    jr nc, jr_03f_6a2f

    add b
    db $10
    ld e, l
    db $10

jr_03f_69ea:
    jr nz, jr_03f_6a49

    ld a, [bc]
    ld de, $085d
    ld bc, $085d
    ld bc, $005d
    inc h
    ld c, [hl]
    ld a, [de]
    ld d, b
    ld c, [hl]
    ld a, [de]
    ld b, b
    ld h, e
    nop
    nop
    ld h, e
    inc b
    jr nc, jr_03f_6a67

    ld b, $00
    ld h, e
    ld a, [bc]
    ld b, b
    ld h, h
    inc d
    ld d, b
    ld h, e
    ld c, $50
    ld h, e
    ld [de], a
    db $10
    ld h, h
    nop
    db $10
    ld h, h
    inc b
    ld d, b
    ld h, h
    ld [$6430], sp
    inc c

jr_03f_6a1d:
    db $10
    ld h, h
    sub b
    nop
    ld e, e
    ld a, [bc]
    ld b, b
    ld e, e
    ld a, [bc]
    ld b, b
    ld e, e
    ld b, $41
    ld e, e
    adc [hl]

jr_03f_6a2c:
    ld [de], a
    ld b, e
    inc e

jr_03f_6a2f:
    db $10
    ld [hl], h
    sbc d
    ld [bc], a
    ld h, l
    db $10
    jr nc, jr_03f_6a96

    ld d, $30
    ld [hl], l
    nop
    nop
    ld [hl], l
    nop
    inc hl
    ld [hl], l
    nop
    jr nz, jr_03f_6ab8

    nop
    jr nz, jr_03f_6abb

    nop
    jr nz, jr_03f_6abe

jr_03f_6a49:
    nop
    inc hl
    ld d, h
    nop
    ld h, b
    ld d, h
    nop
    ld h, b
    ld d, h
    nop
    ld h, e
    ld d, h
    nop
    ld h, e
    ld d, h
    nop
    ld h, e
    ld d, h
    nop
    ld h, c
    ld d, h
    inc e
    ld h, d
    ld d, h
    nop
    ld h, b
    ld d, h
    nop
    ld h, h
    ld d, h

jr_03f_6a67:
    nop
    ld h, l
    ld d, h
    nop
    ld h, h
    ld d, h
    nop
    ld h, l
    ld d, e
    add b
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    add b
    dec b
    ld sp, $0000
    ld sp, $0010
    ld sp, $2110
    ld d, a
    ld [$5700], sp
    ld [$5701], sp
    ld [$5702], sp
    ld [$5703], sp
    ld [$5704], sp
    adc b
    dec b

jr_03f_6a96:
    ld h, l
    inc c
    inc hl
    ld e, h
    db $10
    ld d, b
    ld e, l
    ld a, [bc]
    db $10
    ld e, l
    ld a, [bc]
    db $10
    ld e, l
    db $10
    ld h, $5d
    ld [$5d00], sp
    ld [$5d00], sp
    ld [$5d00], sp
    ld [$5c00], sp
    ld [de], a
    jr nz, jr_03f_6b15

    ld b, $00
    ld e, h

jr_03f_6ab8:
    ld d, $10
    ld e, h

jr_03f_6abb:
    ld [bc], a
    ld d, a
    ld e, l

jr_03f_6abe:
    inc c
    inc de
    ld e, h
    inc c
    db $10
    ld l, $00
    nop
    ld d, b
    ld a, [bc]
    ld hl, $0a50
    ld bc, $0a50
    ld bc, $002e
    nop
    ld d, b
    ld a, [bc]
    ld bc, $142e
    ld d, d
    ld l, $00
    nop
    ld l, $00
    nop
    ld l, $00
    inc b
    ld l, $80
    nop
    jr c, @+$04

    db $10
    jr c, @+$04

    ld de, $8238
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $000b
    inc b
    ld a, [bc]
    nop
    ld b, $0a
    add b
    rlca
    nop
    inc c
    and b
    nop
    add d
    and c
    jr c, jr_03f_6b0f

    ld d, b
    cpl
    sbc b
    ld b, c
    jr c, jr_03f_6b0d

jr_03f_6b0d:
    jr nc, jr_03f_6b0f

jr_03f_6b0f:
    call nz, $5790
    ld c, $00
    ld d, a

jr_03f_6b15:
    ld c, $00
    ld d, a
    ld c, $01
    ld d, a
    ld c, $01
    ld d, a
    ld c, $02
    ld d, a
    ld c, $02
    ld d, a
    ld c, $03
    ld d, a
    adc [hl]
    inc bc
    ld e, d
    nop
    ld d, b
    ld e, d
    nop
    ld d, b
    ld e, d
    nop
    ld d, c
    ld e, d
    add b
    ld d, c
    inc de
    nop
    inc b
    inc de
    nop
    ld bc, $0013
    ld [bc], a
    inc de
    nop
    ld b, $13
    nop
    nop
    inc de
    nop
    ld bc, $0013
    inc b
    inc d
    nop
    ld [$8013], sp
    ld b, $3e
    stop
    add hl, sp
    nop
    ld bc, $003a
    ld [bc], a
    ld [hl-], a
    add b
    inc bc
    scf
    ld d, $20
    ld sp, $0210
    ld [hl], $10
    inc h
    ld [hl], $00
    ld d, $34
    nop
    jr jr_03f_6ba3

    add b
    ld a, [hli]
    rrca
    nop
    jr nz, jr_03f_6b83

    nop
    ld [bc], a
    ld c, d
    nop
    rla
    rrca
    add b
    dec hl
    ld b, [hl]
    nop
    jr nc, jr_03f_6bbd

    nop
    ld [hli], a

Call_03f_6b80:
Jump_03f_6b80:
    rlca
    nop
    inc b

jr_03f_6b83:
    ccf
    ld [$4536], sp
    add b
    jr z, jr_03f_6b9b

    nop
    inc bc
    ld l, h
    nop
    db $10
    ld l, h
    nop
    ld hl, $006e
    ld b, d
    ld l, [hl]
    nop
    ld h, d
    ld l, [hl]
    nop
    ld [hl], d

jr_03f_6b9b:
    ld c, d
    nop
    inc d
    inc de
    nop
    dec b
    ld l, [hl]
    nop

jr_03f_6ba3:
    ld b, d
    ld l, [hl]
    nop
    ld h, d
    ld l, [hl]
    nop
    ld [hl], d
    ld l, a
    nop
    ld [hl], d
    ld l, a
    nop
    ld [hl], d
    ld l, a
    nop
    ld [hl], d
    ld e, l
    db $10
    ld [hli], a
    ld e, l
    ld [$5d00], sp
    ld [$5d00], sp

jr_03f_6bbd:
    ld [$5d00], sp
    ld [$5d00], sp
    ld [$5d00], sp
    nop
    inc hl
    ld e, h
    ld [$5c53], sp
    nop
    jr nz, jr_03f_6c2b

    ld [bc], a
    ld d, b
    ld h, h
    sbc b
    ld d, e
    nop
    nop
    and b
    ld e, h
    add d
    ld d, c
    ccf
    ld [$3130], sp
    db $10
    ld [de], a
    ld sp, $0400
    ld [hl], $10
    ld h, $46
    inc d
    jr z, @+$48

    inc d
    ld a, [bc]
    ld b, [hl]
    inc d
    inc a
    ld b, [hl]
    add b
    ld l, $00
    ld h, $e0
    nop
    ld h, $e1
    nop
    and [hl]
    ld [c], a
    ld l, c
    nop
    jr nz, jr_03f_6c68

    nop
    ld hl, $0069
    ld [hli], a
    ld l, c
    add b
    inc hl
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld c, $71
    ld [hl], b
    sub b
    ld b, d
    ld [hl], l
    nop
    ld [de], a
    dec a
    inc b
    inc h
    scf
    sub [hl]
    inc d
    ld c, d
    nop
    inc b
    ld c, e
    sub b
    ld [de], a
    nop
    nop
    nop
    ld [hl], e
    jr jr_03f_6c25

jr_03f_6c25:
    ld h, b
    db $10
    ld hl, $065b
    ld b, d

jr_03f_6c2b:
    nop
    nop
    nop
    xor c
    ld [$084c], sp
    nop
    nop
    xor d
    dec c
    ld e, [hl]
    nop
    nop
    ld c, h
    xor h
    adc b
    ld c, h
    or c
    ld [$b04c], sp
    add c
    ld c, h
    or d
    ld [$005e], sp
    nop
    nop
    nop
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    ld c, h
    xor l
    inc b
    ld c, h
    db $10
    dec b
    ld c, h
    nop
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
    nop
    or e
    ld [$005e], sp

jr_03f_6c68:
    nop
    nop
    nop
    ld [bc], a
    ld c, h
    nop
    nop
    ld e, [hl]
    or h
    ld [$004c], sp
    nop
    nop
    xor [hl]
    ld [bc], a
    ld c, h
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    or l
    rrca
    ld e, [hl]
    or [hl]
    rrca
    ld e, [hl]
    or a
    rrca
    ld e, [hl]
    cp b
    rrca
    ld e, [hl]
    cp c
    rrca
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and l
    ld c, $00
    and d
    inc c
    nop
    and e
    adc d
    ld c, h
    and h
    ld [bc], a
    ld c, h
    add $08
    ld c, h
    rst $00
    add hl, bc
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    add a
    ld e, [hl]
    ld a, d
    add [hl]
    ld c, h
    ld a, h
    add [hl]
    ld c, h
    ld a, [hl]
    add [hl]
    ld c, h
    cp d
    inc b
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    and a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp e
    ld bc, $bc10
    dec b
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    dec b
    ld c, h
    nop
    nop
    ld c, h
    cp l
    dec b
    ld c, h
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    ld c, h
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld c, h
    nop
    dec bc
    ld c, h
    xor [hl]
    add e
    ld c, h
    nop
    dec bc
    nop
    nop
    dec bc
    nop
    nop
    dec bc
    nop
    nop
    dec bc
    nop
    nop
    dec bc
    nop
    add hl, de
    cp [hl]
    ld bc, $ac05
    inc b
    ld bc, $05a9
    ld b, c
    cp h
    ld [$af0e], sp
    dec bc
    inc de
    cp a
    ld [bc], a
    inc de
    cp a
    inc bc
    rla
    or h
    ld b, $06
    or c
    rlca
    ld c, d
    cp l
    add hl, bc
    ld [$0ab2], sp
    nop
    nop
    nop
    and c
    ld l, l
    db $10
    ld [hl], b
    inc sp
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld [hl], d
    ld [hl], b
    add a
    ld [hl], b
    sbc h
    ld [hl], b
    xor d
    ld [hl], b
    cp a
    ld [hl], b
    inc de
    ld [hl], c
    ld hl, $2f71
    ld [hl], c
    ld a, c
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    rst $38
    nop
    inc bc
    sbc [hl]
    inc b
    nop
    nop
    ld bc, $0026
    sub a
    ld [bc], a
    nop
    nop
    rst $38
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld b, $07
    nop
    rlca
    nop
    nop
    nop
    rlca
    sbc b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, c
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    sbc a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    rst $38
    nop
    nop
    and c
    inc bc
    and d
    inc bc
    rst $38
    jr z, jr_03f_6e0a

    and b
    dec b
    nop
    nop
    ld bc, $0029
    rlca
    nop
    rlca
    nop
    rst $38
    nop

jr_03f_6e0a:
    nop
    adc b
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
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
    nop
    nop
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    sbc e
    inc b
    nop
    nop
    rst $38
    ld a, [hli]
    nop
    sbc c
    dec b
    nop
    nop
    rst $38
    dec hl
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld e, $9a
    nop
    nop
    nop
    rst $38
    ccf
    nop
    sbc d
    nop
    sbc d
    nop
    rst $38
    nop
    jr nz, @-$7e

    nop
    add e
    nop
    rst $38
    ld [hl-], a
    ld hl, $0080
    add h
    nop
    rst $38
    inc sp
    ld [hli], a
    add b
    nop
    add l
    nop
    rst $38
    inc [hl]
    inc hl
    add b
    nop
    add [hl]
    nop
    rst $38
    dec [hl]
    inc h
    add b
    nop
    add a
    nop
    rst $38
    ld [hl], $00
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    jr z, jr_03f_6ebb

jr_03f_6ebb:
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hli]
    nop
    nop
    nop
    nop
    rst $38
    nop
    dec hl
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    dec l
    inc h
    nop
    nop
    nop
    ld bc, $2e17
    ld [hli], a
    dec b
    inc hl
    dec b
    rst $38
    jr jr_03f_6f1a

    jr nz, @+$04

    ld hl, $ff02
    add hl, de
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    inc [hl]
    dec h
    ld bc, $0000
    ld bc, $0016
    nop
    nop
    nop
    nop
    rst $38

jr_03f_6f1a:
    nop
    ld [hl], $00
    nop
    nop
    nop
    rst $38
    dec d
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    ld b, c
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    ld b, d
    scf
    dec b
    nop
    nop
    rst $38
    ld b, h
    ld b, e
    jr c, jr_03f_6f7d

    nop
    nop
    rst $38
    ld b, l

jr_03f_6f7d:
    ld b, h
    add hl, sp
    ld bc, $0000
    rst $38
    ld b, [hl]
    ld b, l
    ldh a, [$03]
    pop af
    inc bc
    rst $38
    ld c, h
    ld b, [hl]
    and $02
    rst $20
    ld [bc], a
    rst $38
    ld c, l

jr_03f_6f92:
    ld b, a
    add sp, $03
    jp hl


    inc bc
    rst $38
    ld b, a
    ld c, b
    sbc $05
    rst JumpTable
    dec b
    rst $38
    dec de
    ld c, c
    push af
    dec b
    push af
    dec h
    rst $38
    ld a, [de]
    nop
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    ld c, e
    ld [$eb03], a
    inc bc
    rst $38
    ld c, d
    ld c, h
    ld [c], a
    nop
    nop
    nop
    rst $38
    ld c, e
    ld c, l
    db $e3
    ld [bc], a
    nop
    nop
    rst $38
    ld c, e
    ld c, [hl]
    db $e4
    ld bc, $0000
    rst $38
    ld c, e
    ld c, a
    push hl
    inc bc
    nop
    nop
    rst $38
    ld c, e
    ld d, b
    ld a, [c]
    ld [bc], a
    nop
    nop
    rst $38
    ld c, [hl]
    ld d, c
    ld a, [c]
    ld bc, $0000
    rst $38
    ld c, a
    ld d, d
    di
    nop
    db $f4
    nop
    rst $38
    ld d, b
    ld d, e
    ld h, $01
    daa
    ld bc, $1cff
    ld d, h
    ld h, $03
    daa
    inc bc
    rst $38
    ld b, e
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld c, c
    rst $30
    inc b
    ld hl, sp+$04
    rst $38
    ld a, [de]
    jr nz, jr_03f_6f92

    dec b
    add e
    ld [bc], a
    ld bc, $212d
    add b
    dec b
    add h
    inc bc
    ld bc, $222d
    add b
    dec b
    add l
    ld bc, $2d01
    inc hl
    add b
    dec b
    add [hl]
    ld bc, $2d01
    inc h
    add b
    dec b
    add a
    nop
    ld bc, $202d
    add c
    inc b
    add e
    ld [bc], a
    ld bc, $213c
    add c
    inc b
    add h
    inc bc
    ld bc, $223c
    add c
    inc b
    add l
    ld bc, $3c01
    inc hl
    add c
    inc b
    add [hl]
    ld bc, $3c01
    inc h
    add c
    inc b
    add a
    nop
    ld bc, $203c
    add d
    dec b
    add e
    ld [bc], a
    ld bc, $213d
    add d
    dec b
    add h
    inc bc
    ld bc, $223d
    add d
    dec b
    add l
    ld bc, $3d01
    inc hl
    add d
    dec b
    add [hl]
    ld bc, $3d01
    inc h
    add d
    dec b
    add a
    nop
    ld bc, $053d
    sub b
    nop
    nop
    nop
    nop
    inc hl
    dec b
    sub c
    dec b
    nop
    nop
    nop
    inc h
    dec b
    sub d
    inc b
    nop
    nop
    nop
    dec h
    ld bc, $0093
    nop
    nop
    nop
    jr nz, jr_03f_7097

    sub h

jr_03f_7097:
    dec b
    nop
    nop
    nop
    ld hl, $9501
    inc b
    nop
    nop
    nop
    ld [hli], a
    rla
    sub [hl]
    inc b
    nop
    nop
    nop
    inc l
    rla
    sub a
    dec b
    nop
    nop
    nop
    ld a, $06
    sbc h
    dec b
    nop
    nop
    nop
    daa
    ld b, $9d
    inc b
    nop
    nop
    nop
    ld b, b
    ld b, c
    ret nz

    nop
    pop bc
    nop
    rst $38
    add hl, bc
    ld b, c
    jp nz, $c203

    inc hl
    rst $38
    ld a, [bc]
    ld b, c
    jp $c400


    nop
    rst $38
    dec bc
    ld b, c
    push bc
    inc b
    add $04
    rst $38
    inc c
    ld b, c
    jp c, $db05

    dec b
    rst $38
    dec c
    ld b, c
    rst $00
    dec b
    ret z

    dec b
    rst $38
    ld c, $41
    ret


    ld bc, $01ca
    rst $38
    rrca
    ld b, c
    ret nc

    ld bc, $01d1
    rst $38
    db $10
    ld b, c
    jp nc, $d305

    dec b
    rst $38
    ld de, $d441
    inc bc
    push de
    inc bc
    rst $38
    ld [de], a
    ld b, c
    sub $01
    rst AddAToHL
    ld bc, $13ff
    ld b, c
    ret c

    nop
    reti


    nop
    rst $38
    inc d
    ld c, d
    db $ec
    ld [bc], a
    db $ed
    ld [bc], a
    rst $38
    ld c, b
    ld c, d
    xor $01
    rst $28
    ld bc, $49ff
    ld [$0188], sp
    adc c
    nop
    inc bc
    ld b, d
    ld [$0288], sp
    nop
    nop
    inc bc
    ld b, d
    ld c, $8b
    nop
    adc h
    nop
    rst $38
    ld l, $0e
    adc e
    inc bc
    adc l
    inc bc
    rst $38
    cpl
    ld c, $8b
    ld [bc], a
    adc [hl]
    ld [bc], a
    rst $38
    jr nc, jr_03f_7153

    adc e
    ld bc, $018f
    rst $38
    ld sp, $3f3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_03f_7153:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

Call_03f_7aa7:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

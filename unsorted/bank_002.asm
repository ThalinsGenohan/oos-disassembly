; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX

function_002_4000::
    ldh a, [hFF96]
    or a
    ret nz

    call function_02c1
    xor a
    call function_0602
    xor a
    call function_02ea
    ld hl, $c485
    ld de, $c497
    ld b, $06
    call CopyHLToDE
.loop:
    ld a, $ff
    ld [$c49d], a
    halt
    ld a, [$c49d]
    bit 7, a
    jr nz, .loop

    ldh a, [hFFB8]
    or a
    jr z, .continue

    call function_0c69
    jr .loop

.continue:
    call function_0c61
    ld a, $03
    ldh [hFFBC], a
    xor a
    ldh [hFFBD], a
    jr .loop

Farcall_002_403e::
    ld a, [$cc49]
    or a
    ret z

    ld hl, $4057
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    call $0205
    ret z

    ld hl, $cc50
    set 7, [hl]
    ret


    ld h, a
    ld b, b
    ld h, a
    ld b, b
    ld h, a
    ld b, b
    ld h, a
    ld b, b
    add a
    ld b, b
    and a
    ld b, b
    add a
    ld b, b
    and a
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
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $40e0
    inc bc
    ld [hl-], a
    ld b, $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    inc c
    nop
    rst $38
    rrca

Call_002_40c7:
    ld hl, $4dee
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a

Call_002_40ce:
    set 7, b

Call_002_40d0:
jr_002_40d0:
    ld a, [hli]
    bit 7, b
    jr z, jr_002_40db

    or a
    ret z

    cp $01
    jr z, jr_002_40d0

jr_002_40db:
    ld c, $00
    cp $06
    jr nz, jr_002_40e3

    inc c
    ld a, [hli]

jr_002_40e3:
    call $19a5
    bit 7, b
    jr nz, jr_002_40d0

    dec b
    jr nz, jr_002_40d0

    ret


    ld hl, $cbb6
    inc [hl]
    call Call_002_4c97
    ld a, [$cbb3]
    rst $00
    ld b, l
    ld b, c
    ld h, c
    ld b, c
    ld [hl], b
    ld b, h
    and h
    ld b, d
    sbc c
    ld b, e
    dec a
    ld b, d
    and $44
    jp hl


    ld c, d

Call_002_4109:
Jump_002_4109:
    ld hl, $cbbc
    ld [hli], a
    ld a, $80
    ld [hli], a
    ld [hl-], a
    ret


Call_002_4112:
    ld a, [$cbb3]
    ld [$cbbb], a
    ret


Call_002_4119:
Jump_002_4119:
    ld a, $01

Call_002_411b:
Jump_002_411b:
    ld hl, $cbb3
    ld [hli], a
    xor a
    ld [hl], a
    ld [$cbb7], a
    ret


Call_002_4125:
Jump_002_4125:
    ld a, $05
    call function_02ea

Call_002_412a:
Jump_002_412a:
    ld hl, $cbb4
    inc [hl]
    ret


Call_002_412f:
    ld a, [$c482]
    and $02
    ret z

Call_002_4135:
Jump_002_4135:
    ld hl, $cbb4
    dec [hl]
    ret


Call_002_413a:
    ld e, a

Call_002_413b:
    ld a, e
    swap a
    rrca
    add d
    ld hl, $d780
    rst AddAToHL
    ret


    ld hl, $cbb3
    ld b, $10
    call $044b
    call function_02c1
    ld a, $a0
    call function_0602
    ld a, $11
    call $0c74
    xor a
    ld [$cbd4], a
    call Call_002_4119
    call Call_002_416a
    call Call_002_4a57
    jp Jump_002_4ce9


Call_002_416a:
    ld a, [$cbb4]
    rst $00
    db $76
    ld b, c
    sub [hl]
    ld b, c
    reti


    ld b, c
    dec l
    ld b, d
    call Call_002_4112
    xor a
    call Call_002_4109
    call function_02c1
    ld a, $ba
    call function_0602
    ld a, $05
    call $04e7
    call Call_002_499a
    call Call_002_49e2
    call Call_002_4a0a
    jp Jump_002_4125


    call Call_002_4427
    jr nz, jr_002_41a8

    ld hl, $cbbc
    ld a, [hli]
    set 7, [hl]
    cp $03
    ret nz

    call Call_002_444d
    ret z

jr_002_41a8:
    ld a, $56
    call $0c74
    call Call_002_41be
    jp nz, Jump_002_411b

    call Call_002_412a
    call $09b8
    ld a, $16
    jp $05b6


Call_002_41be:
    ld a, [$cbbc]
    cp $03
    jr z, jr_002_41d3

    ldh [$98], a
    ld d, $00
    call Call_002_413a
    bit 7, [hl]
    ld a, $05
    ret nz

    xor a
    ret


jr_002_41d3:
    ld a, [$cbbd]
    add $03
    ret


    call Call_002_41de
    jr jr_002_421a

Call_002_41de:
    ld a, [$c482]
    ld b, a
    and $06
    jr nz, jr_002_4204

    ld c, $01
    bit 4, b
    jr nz, jr_002_420c

    ld c, $ff
    bit 5, b
    jr nz, jr_002_420c

    ld a, b
    and $09
    ret z

    ld a, $56
    call $0c74
    call Call_002_412a
    call $09b4
    jp $3144


jr_002_4204:
    ld a, $08
    call $05b6
    jp Jump_002_4135


jr_002_420c:
    ld hl, $c629
    ld a, [hl]
    add c
    cp $05
    ret nc

    ld [hl], a
    ld a, $84
    jp $0c74


jr_002_421a:
    ld a, [$c629]
    swap a
    ld c, a
    ld b, $00
    ld hl, $4228
    jp $0d3d


    ld bc, $3190
    ld l, $01
    ld a, [$c4ab]
    or a
    jr nz, jr_002_421a

    xor a
    ld [$cbd4], a
    ld bc, $3248
    jp $089f


    call Call_002_4243
    jp Jump_002_4a57


Call_002_4243:
    ld a, [$cbb4]
    rst $00
    ld c, e
    ld b, d
    ld h, a
    ld b, d
    call function_02c1
    ld a, $a7
    call function_0602
    ld a, $a6
    call function_0602
    ld a, $08
    call $05b6
    call Call_002_4112
    xor a
    call Call_002_4109
    jp Jump_002_4125


    ld a, [$c482]
    ld c, $01
    bit 7, a
    jr nz, jr_002_4293

    ld c, $ff
    bit 6, a
    jr nz, jr_002_4293

    ld c, a
    and $06
    jp nz, Jump_002_4119

    ld a, c
    and $09
    ret z

    ld a, [$cbbc]
    ld hl, $4290
    rst AddAToHL
    ld a, [hl]
    call Call_002_411b
    ld a, $56
    jp $0c74


    ld [bc], a
    ld b, $07

jr_002_4293:
    ld hl, $cbbc
    ld a, [hl]

jr_002_4297:
    add c
    and $03
    cp $03
    jr nc, jr_002_4297

    ld [hl], a
    ld a, $84
    jp $0c74


    call Call_002_42aa
    jp Jump_002_4a57


Call_002_42aa:
    ld a, [$cbb4]
    rst $00
    or [hl]
    ld b, d
    call nc, $1242
    ld b, e
    ld sp, $cd43
    ld [de], a
    ld b, c
    ld a, $03
    call Call_002_4109
    call function_02c1
    ld a, $a3
    call function_0602
    call Call_002_499a
    call Call_002_49e2
    ld a, $08
    call $05b6
    jp Jump_002_4125


    call Call_002_4427
    ret z

    ld a, $56
    call $0c74
    ld a, [$cbbc]
    cp $03
    jp z, Jump_002_4119

    ldh [$98], a
    ld d, $00
    call Call_002_413a
    bit 7, [hl]
    jr z, jr_002_42f5

    ld a, $5a
    jp $0c74


jr_002_42f5:
    xor a
    ld [$cbbb], a
    call Call_002_4109
    call Call_002_412a
    ld b, $01

jr_002_4301:
    ld a, b
    or a
    ret z

jr_002_4304:
    ld hl, $cbbc
    ldh a, [$98]
    cp [hl]
    ret nz

    ld a, [hl]
    add b
    and $03
    ld [hl], a
    jr jr_002_4304

    call Call_002_4357
    call Call_002_412f
    jr nz, jr_002_4382

    call Call_002_4427
    jr z, jr_002_4301

    ld a, $56
    call $0c74
    ld a, [$cbbc]
    cp $03
    jp nz, Jump_002_412a

    call Call_002_4135
    jr jr_002_4382

    call Call_002_4357
    call Call_002_412f
    jr nz, jr_002_4382

    call Call_002_444d
    ret z

    ld a, $56
    call $0c74
    ld a, [$cbbd]
    or a
    jp z, Jump_002_4119

    call $09b8
    ld a, [$cbbc]
    ldh [$98], a
    call $09b4
    jp Jump_002_4119


Call_002_4357:
    ldh a, [$98]
    ld hl, $4366
    rst AddAToHL
    ld b, [hl]
    ld c, $00
    ld hl, $4369
    jp $0d3d


    jr nc, @+$4a

    ld h, b
    ld b, $10
    jr @+$2c

    add c
    db $10
    jr nz, @+$2c

    add c
    db $10
    jr z, jr_002_439f

    add c
    db $10
    jr nc, @+$2c

    add c
    db $10
    jr c, jr_002_43a7

    add c
    db $10
    ld b, b
    ld a, [hli]
    add c

jr_002_4382:
    ld a, $50
    call $0c74
    ld a, [$cbb4]
    cp $01
    ld a, [$cbbc]
    jr nz, jr_002_4396

    call Call_002_4112
    ldh a, [$98]

jr_002_4396:
    jp Jump_002_4109


    call Call_002_43a2
    call Call_002_4a57

jr_002_439f:
    jp Jump_002_4ce9


Call_002_43a2:
    ld a, [$cbb4]
    rst $00
    xor [hl]

jr_002_43a7:
    ld b, e
    rst $08
    ld b, e
    push hl
    ld b, e
    inc bc
    ld b, h
    call Call_002_4112
    ld a, $03
    call Call_002_4109
    call function_02c1
    ld a, $a4
    call function_0602
    ld a, $06
    call $04e7
    call Call_002_499a
    call Call_002_49e2
    call Call_002_4a0a
    jp Jump_002_4125


    call Call_002_4427
    ret z

    ld a, $56
    call $0c74
    ld a, [$cbbc]
    cp $03
    jp z, Jump_002_4119

    ldh [$98], a
    jp Jump_002_412a


    call Call_002_412f
    jr nz, jr_002_43f8

    call Call_002_444d
    ret z

    ld a, [$cbbd]
    or a
    jp z, Jump_002_4119

    jp Jump_002_412a


jr_002_43f8:
    ld a, $50
    call $0c74
    ld a, [$cbbc]
    jp Jump_002_4109


    ld hl, $cbbf
    dec [hl]
    bit 0, [hl]
    ret nz

    ldh a, [$98]
    ld d, $02
    call Call_002_413a
    ld a, [hl]
    or a
    jr z, jr_002_4421

    dec a
    ld [hl], a
    and $03
    ld a, $57
    call z, $0c74
    jp Jump_002_4a0a


jr_002_4421:
    call $09bc
    jp Jump_002_4119


Call_002_4427:
    ld a, [$c482]
    ld c, a
    ld hl, $cbbc
    ld a, $ff
    bit 6, c
    jr nz, jr_002_443f

    ld a, $01
    bit 7, c
    jr nz, jr_002_443f

    ld a, c
    and $09
    ld b, a
    ret


jr_002_443f:
    ld b, a
    push bc
    add [hl]
    and $03
    call Call_002_446a
    call Call_002_4a0a
    pop bc
    xor a
    ret


Call_002_444d:
    ld a, [$c482]
    ld c, a
    ld hl, $cbbd
    res 7, [hl]
    xor a
    bit 5, c
    jr nz, jr_002_4464

    inc a
    bit 4, c
    jr nz, jr_002_4464

    ld a, c
    and $09
    ret


jr_002_4464:
    cp [hl]
    call nz, Call_002_446a
    xor a
    ret


Call_002_446a:
    ld [hl], a
    ld a, $84
    jp $0c74


    call Call_002_4476
    jp Jump_002_47de


Call_002_4476:
    ld a, [$cbb4]
    rst $00
    add b
    ld b, h
    sub [hl]
    ld b, [hl]
    adc d
    ld b, h
    call $09bc
    call $09b8
    xor a
    jp Jump_002_4601


    call Call_002_45e6
    jr z, jr_002_449d

    ld hl, $d7a0
    ld de, $c602
    ld b, $06
    call CopyHLToDE
    call $09b0

jr_002_449d:
    jp Jump_002_4119


    call Call_002_4c97
    call Call_002_44a9
    jp Jump_002_47de


Call_002_44a9:
    ld a, [$cbb4]
    rst $00
    or e
    ld b, h
    ret nz

    ld b, h
    ret z

    ld b, h
    ld a, $a0
    call function_0602
    ld a, $01
    call Call_002_4601
    jp $3171


    ld a, [$c4ab]
    or a
    ret nz

    jp Jump_002_4696


    call Call_002_45e6
    ld a, $01
    jr z, jr_002_44e0

    ld hl, $d7a0
    ld de, $c609
    ld b, $06
    call CopyHLToDE
    ld a, $56
    call $0c74
    xor a

jr_002_44e0:
    ld [$cca3], a
    jp Jump_002_4f7b


    call Call_002_44ec
    jp Jump_002_483e


Call_002_44ec:
    ld a, [$cbb4]
    rst $00
    ld a, [$9644]
    ld b, [hl]
    ld bc, $1945
    ld b, c
    ret


    ld b, l
    xor a
    ld [$cca2], a
    jp Jump_002_461c


    ld hl, $d7c0
    ld de, $cec0
    ld b, $20
    call CopyHLToDE
    ld bc, $0100
    call $19f4
    jp nz, Jump_002_45b0

    ld a, [$ced2]
    or a
    jr z, jr_002_4522

    ld a, [$cec5]
    or a
    jp z, Jump_002_45b0

jr_002_4522:
    call $09b8
    ld bc, $0400
    call $19f4
    call $09b0
    jp Jump_002_4119


    call Call_002_4c97
    call Call_002_453a
    jp Jump_002_483e


Call_002_453a:
    ld a, [$cbb4]
    rst $00
    ld c, b
    ld b, l
    ld d, e
    ld b, l
    ld e, e
    ld b, l
    ld a, e
    ld c, a
    ret


    ld b, l
    ld a, $a0
    call function_0602
    call Call_002_461c
    jp $3171


    ld a, [$c4ab]
    or a
    ret nz

    jp Jump_002_4696


    ld hl, $d7c0
    ld de, $cec0
    ld b, $20
    call CopyHLToDE
    ld bc, $0103
    ld a, [$cca2]
    rlca
    jr c, jr_002_4571

    ld c, $02

jr_002_4571:
    call $19f4
    jr nz, jr_002_4598

    ld b, $02
    call $19f4
    jr nz, jr_002_4598

    ld a, [$cec4]
    ld b, a
    ld a, [$cca2]
    cp $ff
    jr nz, jr_002_458f

    xor a
    ld [$cca2], a
    ld a, b
    jr jr_002_459a

jr_002_458f:
    cp $02
    jr z, jr_002_45a7

    and $3f
    sub b
    jr z, jr_002_459a

jr_002_4598:
    ld a, $01

jr_002_459a:
    ld [$cca3], a
    jr nz, jr_002_45b0

    ld a, $4d
    call $0c74
    jp Jump_002_4f7b


jr_002_45a7:
    ld bc, $0402
    call $19f4
    xor a
    jr jr_002_459a

Jump_002_45b0:
jr_002_45b0:
    ld a, $5a
    call $0c74
    ld a, $10
    ld [$cbbf], a
    ld a, $04
    ld [$cbb4], a
    ld a, $ad
    call function_0602
    ld a, $08
    jp $05b6


    ld hl, $cbbf
    ld a, [hl]
    or a
    jr z, jr_002_45d2

    dec [hl]
    ret


jr_002_45d2:
    ld a, [$c481]
    or a
    ret z

    ld a, $01
    ld [$cbb4], a

Call_002_45dc:
    ld a, $ac
    call function_0602
    ld a, $08
    jp $05b6


Call_002_45e6:
    ld hl, $d7a0
    ld b, $05
    xor a

jr_002_45ec:
    cp [hl]
    jr nz, jr_002_45f1

    ld [hl], $20

jr_002_45f1:
    inc l
    dec b
    jr nz, jr_002_45ec

    ld [hl-], a
    ld b, $05

jr_002_45f8:
    ld a, [hl]
    sub $20
    ret nz

    ld [hl-], a
    dec b
    jr nz, jr_002_45f8

    ret


Call_002_4601:
Jump_002_4601:
    ld [$cbb7], a
    ld de, $c602
    cp $01
    jr nz, jr_002_460d

    ld e, $09

jr_002_460d:
    ld hl, $d7a0
    ld b, $06
    call $045b
    ld a, $04
    ld [$cbb8], a
    jr jr_002_463f

Call_002_461c:
Jump_002_461c:
    ld a, [$cca2]
    bit 7, a
    jr nz, jr_002_462f

    ld bc, $0e81
    cp $02
    jr z, jr_002_4637

    ld bc, $1382
    jr jr_002_4637

jr_002_462f:
    ld a, $ff
    ld [$cbd4], a
    ld bc, $0480

jr_002_4637:
    ld a, b
    ld [$cbb8], a
    ld a, c
    ld [$cbb7], a

jr_002_463f:
    ld hl, $cbb9
    ld b, $0a
    call $044b
    call Call_002_4965
    call function_02c1
    ld a, $0b
    call $05b6
    ld a, $05
    call $04e7
    ld a, [$cbb7]
    rlca
    jr c, jr_002_4676

    ld a, $a5
    call function_0602
    ld a, [$cbb7]
    rrca
    jr c, jr_002_466f

    ldh a, [$98]
    add $20
    ld [$d049], a

jr_002_466f:
    ld a, $08
    call $05b6
    jr jr_002_4690

jr_002_4676:
    ld a, [$cbb8]
    ld hl, $cbd4
    cp [hl]
    ld [hl], a
    ld hl, $d7c0
    ld b, $20
    ld a, $20
    call nz, $044c
    ld a, $aa
    call function_0602
    call Call_002_45dc

jr_002_4690:
    call Call_002_49e2
    jp Jump_002_4125


Jump_002_4696:
    ld a, $01
    ld [$cca3], a
    call $0294
    ld b, a
    call $01ea
    ret nc

    ld b, a
    ld hl, $46be
    rst AddAToHL
    ld a, [hl]
    call $0c74
    ld a, b
    rst $00
    add $46
    inc h
    ld b, a
    dec [hl]
    ld b, a
    and l
    ld b, a
    ld d, b
    ld b, a
    ld d, h
    ld b, a
    add [hl]
    ld b, a
    adc d
    ld b, a
    ld d, [hl]
    ld d, b
    ld d, [hl]
    ld d, [hl]
    add h
    add h
    add h
    add h
    ld hl, $cbbc
    ld a, [hli]
    cp $50
    jr nc, jr_002_470b

    call Call_002_47bb
    and $0f
    ld hl, $d0a3
    rst AddAToHL
    ld a, b
    swap a
    add a
    add a
    call $01ac
    add hl, bc
    ld c, $20
    ld a, [hl]
    cp $02
    jr z, jr_002_46f9

    rrca
    and $3f
    add $40
    ld c, a
    ld a, [$cbb7]
    rlca
    jr nc, jr_002_46f9

    ld a, c
    ld hl, $0061
    rst AddAToHL
    ld c, [hl]

jr_002_46f9:
    call Call_002_49f7
    ld [hl], c
    ld hl, $cbbe
    inc [hl]
    ld a, [$cbb8]
    cp [hl]
    jr nc, jr_002_4708

    ld [hl], a

jr_002_4708:
    jp Jump_002_49e2


jr_002_470b:
    ld a, [$cbb7]
    rlca
    ld a, [$cbbd]
    jr c, jr_002_471b

    rst $00
    add hl, hl
    ld b, a
    db $fd
    ld b, [hl]
    and l
    ld b, a

jr_002_471b:
    rst $00
    add hl, hl
    ld b, a
    db $fd
    ld b, [hl]
    ld [hl], $47
    and l
    ld b, a
    call Call_002_49f7
    ld [hl], $20
    ld hl, $cbbe
    dec [hl]
    bit 7, [hl]
    jr z, jr_002_4708

    ld [hl], $00
    jr jr_002_4708

    ret


    ld a, [$cbb7]
    rlca
    ret nc

    xor a
    ld [$cbb9], a
    ld hl, $cbbc
    ld a, $57
    ld [hli], a
    ld a, $02
    cp [hl]
    ld [hl-], a
    ret nz

    ld a, $03
    ld [$cbb4], a
    ret


    ld c, $01
    jr jr_002_4756

    ld c, $ff

jr_002_4756:
    ld de, $040d
    ld a, [$cbb7]
    rlca
    jr c, jr_002_4762

    ld de, $030c

jr_002_4762:
    ld hl, $cbbc
    ld a, [hl]
    cp $50
    jr nc, jr_002_4779

jr_002_476a:
    add c
    and $0f
    cp e
    jr nc, jr_002_476a

    ld c, a
    ld a, [hl]
    and $f0
    add c
    ld [hli], a
    ld [hl], $80
    ret


jr_002_4779:
    inc l
    ld b, d
    ld a, [hl]

jr_002_477c:
    add c
    and $0f
    cp b
    jr nc, jr_002_477c

    ld [hl], a
    jp Jump_002_489f


    ld c, $f0
    jr jr_002_478c

    ld c, $10

jr_002_478c:
    ld hl, $cbbc
    ld a, [hl]

jr_002_4790:
    add c
    and $70
    cp $60
    jr nc, jr_002_4790

    ld c, a
    ld a, [hl]
    and $0f
    add c
    ld [hli], a
    ld [hl], $80
    cp $50
    ret c

    jp Jump_002_48ad


    ld hl, $cbbc
    ld a, $5a
    ld [hli], a
    ld a, [$cbb7]
    rlca
    ld a, $02
    jr nc, jr_002_47b5

    ld a, $03

jr_002_47b5:
    cp [hl]
    ld [hl-], a
    ret nz

    jp Jump_002_412a


Call_002_47bb:
    ld a, [$cbbc]
    ld c, a
    and $f0
    ld b, a
    ld a, c
    and $0f
    ld c, a
    push de
    ld de, $0801
    ld a, [$cbb7]
    rlca
    jr c, jr_002_47d3

    ld de, $0602

jr_002_47d3:
    ld a, c
    cp d
    ld c, e
    pop de
    jr nc, jr_002_47db

    ld c, $00

jr_002_47db:
    add c
    add b
    ret


Jump_002_47de:
    call Call_002_47bb
    cp $50
    jr nc, jr_002_47f8

    ld b, a
    and $0f
    add a
    add a
    add a
    ld c, a
    ld a, b
    and $f0
    ld b, a
    ld hl, $4820
    call $0d3d
    jr jr_002_4811

jr_002_47f8:
    ld a, [$cbb7]
    rlca
    ld hl, $482c
    jr c, jr_002_4804

    ld hl, $4829

jr_002_4804:
    ld a, [$cbbd]
    rst AddAToHL
    ld c, [hl]
    ld b, $00
    ld hl, $4830
    call $0d3d

jr_002_4811:
    ld a, [$cbbe]
    add a
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $4839
    jp $0d3d


    ld [bc], a
    ld a, [hl-]
    jr nz, jr_002_4850

    ld [bc], a
    jr c, @+$22

    ld a, [hli]
    add c
    jr jr_002_485b

    ld a, b
    jr jr_002_485e

    ld c, b
    ld h, b
    ld [bc], a
    adc d
    ld [$012c], sp
    adc d
    db $10
    inc l
    ld bc, $1a01
    ld e, b
    inc l
    add d

Jump_002_483e:
    call Call_002_47bb
    cp $50
    jr nc, jr_002_4858

    ld b, a
    and $0f
    add a
    add a
    add a
    ld c, a
    ld a, b
    and $f0
    ld b, a

jr_002_4850:
    ld hl, $4884
    call $0d3d
    jr jr_002_4868

jr_002_4858:
    ld a, [$cbbd]

jr_002_485b:
    ld hl, $488d

jr_002_485e:
    rst AddAToHL
    ld c, [hl]
    ld b, $00
    ld hl, $4891
    call $0d3d

jr_002_4868:
    ld c, $0a
    ld a, [$cbbe]
    cp c
    ld b, $00
    jr c, jr_002_4875

    ld b, $10
    sub c

jr_002_4875:
    cp $05
    jr c, jr_002_487a

    inc a

jr_002_487a:
    add a
    add a
    add a
    ld c, a
    ld hl, $489a
    jp $0d3d


    ld [bc], a
    ld a, [hl-]
    jr nz, @+$2e

    ld [bc], a
    jr c, @+$22

    ld a, [hli]
    add c
    jr jr_002_48bf

    ld d, h
    ld a, b
    ld [bc], a
    adc d
    ld [$012c], sp
    adc d
    db $10
    inc l
    ld bc, $1201
    jr c, jr_002_48ca

    ld [bc], a

Jump_002_489f:
    ld a, [$cbbd]
    ld e, a
    ld d, $ff
    call Call_002_48bb
    ld a, b
    ld [$cbbc], a
    ret


Jump_002_48ad:
    ld a, [$cbbc]
    ld d, a
    ld e, $ff
    call Call_002_48bb
    ld a, c
    ld [$cbbd], a
    ret


Call_002_48bb:
    ld a, [$cbb7]
    rlca

jr_002_48bf:
    ld hl, $48d2
    jr nc, jr_002_48c7

    ld hl, $48ee

jr_002_48c7:
    ld a, [hli]
    ld b, a
    ld a, [hli]

jr_002_48ca:
    ld c, a
    cp e
    ret z

    ld a, b
    cp d
    jr nz, jr_002_48c7

    ret


    ld d, b
    nop
    ld d, c
    nop
    ld d, d
    nop
    ld d, e
    ld bc, $0154
    ld d, l
    ld bc, $0256
    ld d, a
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, c
    ld [bc], a
    ld e, d
    ld [bc], a
    ld e, e
    ld [bc], a
    ld e, h
    ld [bc], a
    rst $38
    rst $38
    ld d, b
    nop
    ld d, c
    nop
    ld d, d
    nop
    ld d, e
    ld bc, $0154
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld d, a
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, c
    inc bc
    ld e, d
    inc bc
    ld e, e
    inc bc
    ld e, h
    inc bc
    rst $38
    rst $38
    push hl
    ld hl, $495a
    bit 0, e
    jr nz, jr_002_4915

    ld hl, $4931

jr_002_4915:
    cp $60
    ccf
    jr nc, jr_002_492f

    ld b, $00
    cp $b0
    jr c, jr_002_4923

    ld b, $50
    sub b

jr_002_4923:
    ld c, a

jr_002_4924:
    ld a, [hli]
    or a
    jr z, jr_002_492f

    cp c
    ld a, [hli]
    jr nz, jr_002_4924

    add b
    ld c, a
    scf

jr_002_492f:
    pop hl
    ret


    ld h, l
    sub a
    ld h, [hl]
    sbc b
    ld h, a
    sbc c
    ld l, b
    sbc d
    ld l, c
    sbc e
    ld l, d
    sbc h
    ld l, e
    sbc l
    ld l, h
    sbc [hl]
    ld l, l
    sbc a
    ld l, [hl]
    and b
    ld l, a
    and c
    ld [hl], b
    and d
    ld [hl], c
    and e
    ld [hl], d
    and h
    ld [hl], e
    and l
    ld a, c
    and [hl]
    ld a, d
    and a
    ld a, e
    xor b
    ld a, h
    xor c
    ld a, l
    xor d
    nop
    ld a, c
    xor e
    ld a, d
    xor h
    ld a, e
    xor l
    ld a, h
    xor [hl]
    ld a, l
    xor a
    nop

Call_002_4965:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    xor a
    ld [$cbba], a
    ld de, $d000
    ld a, [$cbb7]
    rlca
    jr c, jr_002_4981

    ld bc, $3b40
    call Call_002_498d
    jr jr_002_4989

jr_002_4981:
    ld hl, $00a1
    ld b, $40
    call Call_002_40ce

jr_002_4989:
    pop af
    ldh [rSVBK], a
    ret


Call_002_498d:
jr_002_498d:
    push bc
    ld a, c
    ld c, $00
    call $19a5
    pop bc
    inc c
    dec b
    jr nz, jr_002_498d

    ret


Call_002_499a:
    ld a, $02
    ldh [$98], a

jr_002_499e:
    call $09b8
    ldh a, [$98]
    ld d, $00
    call Call_002_413a
    ld a, c
    ld [hli], a
    ld [hli], a
    ld a, [$c6a3]
    ld [hli], a
    ld [hli], a
    ld a, [$c61e]
    ld [hli], a
    ld a, [$c61f]
    ld [hli], a
    ld a, [$c612]
    ld [hli], a
    ld a, [$c613]
    add a
    ld e, a
    ld a, [$c614]
    or e
    ld [hli], a
    ldh a, [$98]
    add a
    ld e, a
    add a
    add e
    ld hl, $d7a0
    rst AddAToHL
    ld de, $c602
    ld b, $06
    call $045b
    ld hl, $ff98
    dec [hl]
    bit 7, [hl]
    jr z, jr_002_499e

    inc [hl]
    ret


Call_002_49e2:
Jump_002_49e2:
    xor a
    call Call_002_49fa
    ld de, $dc00
    ld b, $18
    call Call_002_40d0
    xor a
    ld [$cbba], a
    ld a, $07
    jp $05b6


Call_002_49f7:
    ld a, [$cbbe]

Call_002_49fa:
    ld l, a
    ld a, [$cbb7]
    rlca
    ld a, l
    ld hl, $d7a0
    jr nc, jr_002_4a08

    ld hl, $d7c0

jr_002_4a08:
    rst AddAToHL
    ret


Call_002_4a0a:
Jump_002_4a0a:
    ld a, [$cbb3]
    cp $03
    ret z

    ld a, $a2
    call function_0602
    ld a, [$cbbc]
    cp $03
    jr nc, jr_002_4a52

    ld d, $00
    call Call_002_413a
    bit 7, [hl]
    jr nz, jr_002_4a52

    ld d, $04
    call Call_002_413b
    ld e, l
    ld d, h
    ld hl, $d130
    ld b, $10
    ld a, [de]
    and $0f
    add b
    ld [hl-], a
    ld a, [de]
    and $f0
    swap a
    add b
    ld [hl-], a
    inc e
    ld a, [de]
    add b
    ld [hl-], a
    ld a, [$cbbc]
    ld d, $02
    call Call_002_413a
    ld a, [hli]
    ld b, [hl]
    ld c, a
    ld hl, $d14a
    call Call_002_53fe

jr_002_4a52:
    ld a, $08
    jp $05b6


Call_002_4a57:
Jump_002_4a57:
    ld a, [$cbbb]
    ld hl, $4a8e
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    ld a, [hli]
    ld c, a
    ld b, [hl]
    push bc
    ld hl, $4a89
    ld a, [$cbbc]
    bit 7, a
    call z, Call_002_4a7e
    pop de
    ld hl, $4a89
    ld a, [$cbbd]
    bit 7, a
    ret nz

Call_002_4a7e:
    call $0072
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    jp $0d3d


    ld bc, $0810
    jr z, jr_002_4a92

    jp nz, $9c4a

    ld c, d

jr_002_4a92:
    sbc h
    ld c, d
    or [hl]
    ld c, d
    adc $4a
    jp c, $ac4a

    ld c, d
    and b
    ld c, d
    xor b
    ld c, d
    inc [hl]
    ld [$084c], sp
    ld h, h
    ld [$e0e0], sp
    ld a, d
    ld [hli], a
    ld a, d
    ld e, d
    xor [hl]
    ld c, d
    inc [hl]
    ld [$084c], sp
    ld h, h
    ld [$207a], sp
    cp d
    ld c, d
    xor b
    ld c, d
    inc [hl]
    ld [$084c], sp
    ld h, h
    ld [$227a], sp
    add $4a
    xor b
    ld c, d
    inc [hl]
    ld d, b
    ld c, h
    ld d, b
    ld h, h
    ld d, b
    ld a, d
    ld [hli], a
    jp nc, $a84a

    ld c, d
    inc [hl]
    ld [$084c], sp
    ld h, h
    ld [$227a], sp
    call c, $384a
    jr nz, jr_002_4b2f

    jr nz, @+$6a

    jr nz, jr_002_4b04

    or [hl]
    swap h
    call Call_002_4c97
    call Call_002_4afb
    ld a, [$cbb4]
    cp $06
    ret z

    cp $03
    ret c

    call Call_002_4a57
    jp Jump_002_4ce5


Call_002_4afb:
    ld a, [$cbb4]
    rst $00
    dec c
    ld c, e
    ld c, b
    ld c, e
    and d

jr_002_4b04:
    ld c, e
    call nz, $344b
    ld c, h
    ld l, d
    ld c, h
    ld a, [hl]
    ld c, h
    call function_02c1
    ld a, $a0
    call function_0602
    ld a, $ae
    call function_0602
    ld a, $05
    call $04e7
    ld a, $08
    call $05b6
    ld hl, $d7a0
    ld b, $20
    call $044b
    call Call_002_49e2

jr_002_4b2f:
    call function_0c61
    ld a, $04
    ldh [$bc], a
    xor a
    ldh [$bd], a
    ld [$cbc2], a
    ld hl, $cbbf
    ld a, $f0
    ld [hli], a
    ld a, $1e
    ld [hl], a
    jp Jump_002_4125


    ldh a, [$b8]
    or a
    jr nz, jr_002_4b63

    ldh a, [$bb]
    or a
    jp nz, Jump_002_4c15

    ld hl, $cbbf
    dec [hl]
    jr nz, jr_002_4b60

    ld a, $80
    ldh [$bb], a
    jp Jump_002_4c15


jr_002_4b60:
    jp $0c4f


jr_002_4b63:
    ld a, [$cbc0]
    or a
    jr z, jr_002_4b6e

    dec a
    ld [$cbc0], a
    ret


jr_002_4b6e:
    call function_0c69
    ldh a, [$bb]
    or a
    jr z, jr_002_4b7d

    cp $83
    jr z, jr_002_4b7d

    jp nz, Jump_002_4c15

jr_002_4b7d:
    ldh a, [$bd]
    cp $07
    ret nz

    ld e, $03

jr_002_4b84:
    dec e
    ld d, $00
    call Call_002_413b
    bit 7, [hl]
    jr z, jr_002_4b9f

    ld a, e
    or a
    jr nz, jr_002_4b84

    ld a, $85
    ld [$cbc2], a
    ld a, $ff
    ld [$cbbc], a
    jp Jump_002_4c0b


jr_002_4b9f:
    jp Jump_002_4125


    call function_0c69
    ld a, $06
    ld [$cbbb], a
    xor a
    call Call_002_4109
    call function_02c1
    ld a, $a1
    call function_0602
    ld a, $af
    call function_0602
    call Call_002_49e2
    call Call_002_4a0a
    jp Jump_002_4125


    call function_0c69
    call Call_002_4427
    jr nz, jr_002_4bde

    ld a, [$c482]
    bit 1, a
    ret z

jr_002_4bd2:
    ld a, $03
    ld [$cbbc], a
    ld a, $8f
    ld [$cbc2], a
    jr jr_002_4c0b

jr_002_4bde:
    ld a, [$cbbc]
    cp $03
    jr z, jr_002_4bd2

    ld d, $00
    call Call_002_413a
    bit 7, [hl]
    jr z, jr_002_4bf3

    ld a, $5a
    jp $0c74


jr_002_4bf3:
    ld a, [$cbcb]
    cp $08
    jr nz, jr_002_4c04

    ld a, $0c
    ldh [$bd], a
    ld a, $05
    ld [$cbb4], a
    ret


jr_002_4c04:
    ld a, $08
    ldh [$bd], a
    jp Jump_002_4125


Jump_002_4c0b:
jr_002_4c0b:
    ld a, $08
    ldh [$bd], a
    ld a, $05
    ld [$cbb4], a
    ret


Jump_002_4c15:
    call function_02c1
    ld a, $07
    call function_0602
    call Call_002_4125
    ld a, $08
    ldh [$bd], a
    ld a, $06
    ld [$cbb4], a
    ld a, $b4
    ld [$cbbf], a
    ldh a, [$bb]
    ld [$cbc0], a
    ret


    call function_0c69
    ldh a, [$b8]
    or a
    ret nz

    call $09b8
    ld a, [$cbbc]
    inc a
    ld hl, $d98d
    ld bc, $0016

jr_002_4c48:
    dec a
    jr z, jr_002_4c4e

    add hl, bc
    jr jr_002_4c48

jr_002_4c4e:
    ld b, $16
    ld de, $c600
    call CopyHLToDE
    ld hl, $c612
    set 0, [hl]
    ld l, $14
    ld [hl], $00
    call $09b0
    ld a, $56
    call $0c74
    jp Jump_002_4119


    call function_0c69
    ldh a, [$b8]
    or a
    ret nz

jr_002_4c71:
    ld a, [$cbcb]
    cp $08
    jp z, Jump_002_4f7b

    ld a, $00   ; xor a
    jp Jump_002_411b


    call function_0c69
    ldh a, [$b8]
    or a
    ret nz

    ld a, [$cbc0]
    ldh [$bb], a
    ld a, [$c482]
    or a
    jr nz, jr_002_4c71

    ld hl, $cbbf
    dec [hl]
    ret nz

    jr jr_002_4c71

Call_002_4c97:
    call function_047b
    ld a, $04
    ldh [rSVBK], a
    ld hl, $4ca4
    jp $0d3a


    db $10
    inc hl
    ld a, [bc]
    jr nz, jr_002_4cae

    inc hl
    ld [de], a
    ld [hli], a
    dec b
    inc sp

jr_002_4cae:
    ld b, $20
    dec b
    inc sp
    ld c, $22
    dec b
    rrca
    rlca
    ld h, $05
    dec sp
    ld d, $20
    dec h
    dec sp
    ld c, $22
    dec h
    rla
    ld a, [bc]
    inc h
    dec h
    ld hl, $2096
    dec b
    ld hl, $229e
    dec b
    rla
    sbc e
    ld h, $65
    inc d
    sbc l
    inc h
    dec b
    ld sp, $20a2
    dec h
    ld sp, $229a
    dec h
    add hl, sp
    sub d
    jr nz, @+$07

    add hl, sp
    sbc d
    ld [hli], a
    dec b

Jump_002_4ce5:
    ld b, $04
    jr jr_002_4ceb

Jump_002_4ce9:
    ld b, $00

jr_002_4ceb:
    ld a, [$cbbc]
    cp $03
    ret nc

    ld d, $00
    call Call_002_413a
    ld c, $00
    bit 7, [hl]
    jr nz, jr_002_4d1d

    push bc
    push de
    ld d, $07
    call Call_002_413b
    xor a
    ld b, $10
    bit 1, [hl]
    call nz, Call_002_4d27
    pop de
    pop bc
    ld d, $06
    call Call_002_413b
    inc c
    ld a, [hli]
    rrca
    jr c, jr_002_4d1d

    inc c
    bit 0, [hl]
    jr nz, jr_002_4d1d

    inc c

jr_002_4d1d:
    ld a, [$cbb6]
    and $10
    ld a, c
    jr z, jr_002_4d27

    add $08

Call_002_4d27:
jr_002_4d27:
    add b
    ld hl, $4d31
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL
    jp $0d3a


    ld de, $662b
    rla
    dec c
    ld c, c
    adc h
    inc de
    add hl, bc
    inc [hl]
    ld [hl], e
    jr jr_002_4d43

    ld c, [hl]
    sub l
    inc d
    and h
    ld [bc], a

jr_002_4d43:
    ld c, [hl]
    ld e, b
    inc b
    nop
    ld c, [hl]
    ld h, b
    ld b, $00
    ld [bc], a
    ld c, [hl]
    ld e, b
    nop
    nop
    ld c, [hl]
    ld h, b
    ld [bc], a
    nop
    ld [bc], a
    ld c, [hl]
    ld e, b
    ld [bc], a
    jr nz, jr_002_4da8

    ld h, b
    nop
    jr nz, @+$06

    ld c, [hl]
    ld e, b
    ld a, [bc]
    jr nz, jr_002_4db1

    ld h, b
    ld [$4e20], sp
    ld h, e
    inc e
    ld [hli], a
    ld c, [hl]
    ld l, e
    ld a, [de]
    ld [hli], a
    inc b
    ld c, [hl]
    ld e, b
    ld c, $20
    ld c, [hl]
    ld h, b
    inc c
    jr nz, jr_002_4dc6

    ld l, b
    inc e
    ld [hli], a
    ld c, [hl]
    ld [hl], b
    ld a, [de]
    ld [hli], a
    inc bc
    ld c, [hl]
    ld e, b
    ld [de], a
    jr nz, @+$50

    ld h, b
    db $10
    jr nz, jr_002_4dd7

    ld h, h
    inc d
    ld [hli], a
    inc bc
    ld c, [hl]
    ld e, b
    jr jr_002_4db1

    ld c, [hl]
    ld h, b
    ld d, $20
    ld c, [hl]
    ld h, h
    inc d
    ld [hli], a
    dec b
    ld c, [hl]
    ld e, b
    nop
    nop
    ld c, [hl]
    ld h, b
    ld [bc], a
    nop
    ld c, [hl]
    ld l, b
    nop
    ld a, [bc]
    ld c, [hl]
    ld [hl], b

jr_002_4da8:
    ld [bc], a
    ld a, [bc]
    ld a, $6d
    inc b
    ld a, [bc]
    dec b
    ld c, [hl]
    ld e, b

jr_002_4db1:
    ld [bc], a
    jr nz, jr_002_4e02

    ld h, b
    nop
    jr nz, jr_002_4e06

    ld l, b
    ld [bc], a
    ld a, [hli]
    ld c, [hl]
    ld [hl], b
    nop
    ld a, [hli]
    ld a, $6b
    inc b
    ld a, [hli]
    inc b
    ld c, [hl]
    ld e, b

jr_002_4dc6:
    nop
    nop
    ld c, [hl]
    ld h, b
    ld [bc], a
    nop
    ld c, [hl]
    ld l, b
    ld b, $09
    ld c, [hl]
    ld [hl], b
    ld [$0409], sp
    ld c, [hl]
    ld e, b

jr_002_4dd7:
    ld [bc], a
    jr nz, jr_002_4e28

    ld h, b
    nop
    jr nz, jr_002_4e2c

    ld l, b
    ld [$4e29], sp
    ld [hl], b
    ld b, $29
    ld [bc], a
    ld c, d
    adc h
    jr nc, jr_002_4df0

    ld c, d
    sub h
    ld [hl-], a
    ld b, $22
    ld c, [hl]

jr_002_4df0:
    inc hl
    ld c, [hl]
    inc l
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    dec a
    ld c, [hl]
    ld b, [hl]
    ld c, [hl]
    ld c, e
    ld c, [hl]
    ld d, l
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld l, c
    ld c, [hl]

jr_002_4e02:
    ld l, a
    ld c, [hl]
    ld [hl], l
    ld c, [hl]

jr_002_4e06:
    ld a, h
    ld c, [hl]
    add e
    ld c, [hl]
    adc b
    ld c, [hl]
    sub c
    ld c, [hl]
    sub [hl]
    ld c, [hl]
    sbc l
    ld c, [hl]
    and e
    ld c, [hl]
    xor c
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    or [hl]
    ld c, [hl]
    cp e
    ld c, [hl]
    jp nz, $c94e

    ld c, [hl]
    rst $08
    ld c, [hl]
    nop
    dec l
    dec l
    dec l
    dec l
    dec l

jr_002_4e28:
    dec l
    dec l
    dec l
    nop

jr_002_4e2c:
    jr nz, jr_002_4e81

    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    nop
    ld c, b
    ld l, a
    ld l, h
    ld l, a
    ld h, h
    ld [hl], d
    ld [hl], l
    ld l, l
    nop
    ld c, h
    ld h, c
    ld h, d
    ld [hl], d
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    nop
    ld d, d
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld b, e
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld d, e
    ld l, b
    ld l, a
    ld [hl], b
    nop
    ld b, a
    ld [hl], d
    ld h, c
    db $76
    ld h, l
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld d, e
    ld [hl], l
    ld h, d
    ld [hl], d
    ld l, a
    ld [hl], e
    ld l, c
    ld h, c
    ld l, [hl]
    nop
    ld b, h
    ld l, c
    db $76
    ld h, l
    ld [hl], d
    nop
    ld d, e
    ld l, l
    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld d, b
    ld l, c
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld d, h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h

jr_002_4e81:
    ld h, l
    nop
    ld b, h
    ld h, l
    ld l, e
    ld [hl], l
    nop
    ld b, d
    ld l, c
    ld h, a
    ld h, a
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld d, d
    ld [hl], l
    ld [hl], l
    ld l, h
    nop
    ld c, e
    jr nz, @+$5c

    ld l, a
    ld [hl], d
    ld h, c
    nop
    ld b, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld a, c
    nop
    ld d, h
    ld l, a
    ld l, e
    ld h, c
    ld a, c
    nop
    ld d, b
    ld l, h
    ld h, l
    ld l, [hl]
    nop
    ld c, h
    ld l, c
    ld h, d
    ld [hl], d
    ld h, c
    ld [hl], d
    ld a, c
    nop
    ld d, h
    ld [hl], d
    ld l, a
    ld a, c
    nop
    ld c, l
    ld h, c
    ld l, l
    ld h, c
    ld l, l
    ld [hl], l
    nop
    ld d, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, h
    ld h, l
    nop
    ld b, l
    ld l, h
    ld h, h
    ld h, l
    ld [hl], d
    nop
    ld d, e
    ld a, c
    ld l, l
    ld l, l
    ld h, l
    ld [hl], h
    ld [hl], d
    ld a, c
    nop
    ld c, l
    ld a, h
    rst $00
    daa
    ld d, c
    ld [hl], e
    ld d, c
    db $ed
    ld c, [hl]
    dec h
    ld c, a
    jr c, jr_002_4f35

    sub d
    ld d, b
    ld l, $4f
    dec a
    ld c, a
    ld e, h
    ld c, a
    ld a, $04
    ldh [rSVBK], a
    ld hl, $cbe8
    ld a, [hl]
    ld [hl], $ff
    cp $77
    ld a, $80
    jr nz, jr_002_4efe

    xor a

jr_002_4efe:
    ld hl, $d640
    ld b, $40
    call $044c
    ld hl, $d240
    ld b, $40
    call $044b
    xor a
    ld [$cbea], a
    ld a, $03
    call $05b6
    ld b, $10
    ldh a, [$9d]
    cp b
    ret nz

    ld a, $e0
    ld hl, $cb00
    jp $044c


    xor a
    ld [$cbe8], a
    dec a
    ld [$cbea], a
    ret


Jump_002_4f2e:
    ld a, c
    ld hl, $cbcb
    ld [hli], a
    xor a
    ld [hli], a

jr_002_4f35:
    ld [hli], a
    ld [hli], a
    ld [$cba0], a
    jp $313b


Call_002_4f3d:
    ld hl, $de80
    ld de, $d280
    ld b, $80

jr_002_4f45:
    ld a, $02
    ldh [rSVBK], a
    ld c, [hl]
    inc l
    ld a, $04
    ldh [rSVBK], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4f45

    ld a, $ff
    ldh [$a4], a
    ldh [$a5], a
    ret


Call_002_4f5c:
    ld hl, $d280
    ld de, $de80
    ld b, $80

jr_002_4f64:
    ld a, $04
    ldh [rSVBK], a
    ld c, [hl]
    inc l
    ld a, $02
    ldh [rSVBK], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_002_4f64

    ld a, $ff
    ldh [$a4], a
    ldh [$a5], a
    ret


Jump_002_4f7b:
    ld hl, $cbcc
    inc [hl]
    ld a, [$cbcb]
    cp $03
    ld a, $55
    call nz, $0c74
    xor a
    ld [$cba0], a
    jp $313b


    ld a, [$cbcb]
    or a
    jr nz, jr_002_4fda

    ld a, [$cd00]
    and $0e
    ret nz

    call $1832
    ld a, [$cc34]
    ld b, a
    ld a, [$cca7]
    or b
    ret nz

    ld a, [$c482]
    and $0c
    jr z, jr_002_4fb9

    ld a, [$c6cb]
    bit 2, a
    ld a, $5a
    jp z, $0c74

jr_002_4fb9:
    ld a, [$cc02]
    ld b, a
    ld a, [$cbca]
    or b
    ret nz

    call Call_002_510d
    ld a, [$c482]
    and $0c
    ret z

    ld c, $03
    cp $0c
    jr z, jr_002_4fd7

    dec c
    bit 2, a
    jr nz, jr_002_4fd7

    dec c

jr_002_4fd7:
    jp Jump_002_4f2e


jr_002_4fda:
    ld a, $ff
    ld [$c4b6], a
    ld a, [$cbcc]
    rst $00
    dec b
    ld d, b
    db $eb
    ld c, a
    add e
    ld d, b
    db $fc
    ld d, b

Jump_002_4feb:
    ld a, [$cbcb]
    rst $00
    or c
    ld [hl], d
    ret c

    ld d, h
    ret c

    ld e, [hl]
    or c
    ld [hl], d
    ld h, a
    ld l, h
    inc bc
    ld e, [hl]
    ld sp, $a045
    ld b, h
    ld [c], a
    ld c, d
    ld [hl], d
    ld [hl], l
    and l
    ld [hl], e
    ld a, [$cbcb]
    cp $03
    jr nc, jr_002_501a

    ld a, [$c481]
    and $0c
    cp $0c
    jr nz, jr_002_501a

    ld a, $03
    ld [$cbcb], a

jr_002_501a:
    ld a, [$c4ab]
    or a
    ret nz

    call Call_002_5029
    ld hl, $cbcc
    inc [hl]
    jp Jump_002_4feb


Call_002_5029:
    ld a, [$cbcb]
    cp $03
    ld a, $54
    call nz, $0c74
    ld a, $02
    call $0c89
    ldh a, [$a8]
    ld hl, $cbe1
    ld [hli], a
    ldh a, [$aa]
    ld [hl], a
    push de
    ld hl, $c485
    ld de, $cbd5
    ld b, $0c
    call CopyHLToDE
    call function_02c1
    call Call_002_4f3d
    ld a, $04
    ldh [rSVBK], a
    ld hl, $cb00
    ld de, $d300
    ld b, $a0
    call CopyHLToDE
    ld a, $01
    ldh [rVBK], a
    ld hl, $8600
    ld bc, $0180
    ld de, $d800
    call $0472
    ld hl, $cbb3
    ld b, $10
    call $044b
    ld a, $ff
    ld [$c4b6], a
    pop de
    jp function_047b


    ld a, [$c4ab]
    or a
    ret nz

    call Call_002_5092
    ld hl, $cbcc
    inc [hl]
    jp $2b5b


Call_002_5092:
    ld hl, $cbe1
    ld a, [hli]
    ldh [$a8], a
    ld a, [hl]
    ldh [$aa], a
    push de
    call function_02c1
    ld a, $04
    ldh [rSVBK], a
    ld de, $8601
    ld bc, $1704
    ld hl, $d800
    call $0566
    ld hl, $d300
    ld de, $cb00
    ld b, $a0
    call CopyHLToDE
    call Call_002_4f5c
    ld hl, $cbd5
    ld de, $c485
    ld b, $0c
    call CopyHLToDE
    call Call_002_5127
    call $161e
    call $381a
    call $3737
    call $12ba
    call $3204
    ld a, [$cbe3]
    or a
    call nz, $04e7
    ld a, [$cc49]
    cp $07
    jr nz, jr_002_50f2

    ld a, [$cc4c]
    inc a
    jr nz, jr_002_50f2

    pop de
    jp $332f


jr_002_50f2:
    ld a, [$c485]
    ld [$c497], a
    ldh [rLCDC], a
    pop de
    ret


    ld a, [$c4ab]
    or a
    ret nz

    xor a
    ld [$c4b6], a
    ld [$cbcb], a
    ld a, $03
    jp $0c89


Call_002_510d:
    ld a, [$d001]
    dec a
    ret z

    ld a, [$cc00]
    and $3f
    ret nz

    ld hl, $c6a2
    ld a, [hli]
    dec a
    add a
    ret c

    add a
    cp [hl]
    ret nc

    ld a, $60
    jp $0c74


Call_002_5127:
    call function_02c1
    ld a, $20
    call function_0602
    ld a, $83
    call function_0602
    ld a, [$cc50]
    ld b, a
    xor a
    ld c, $a5
    bit 3, b
    jr nz, jr_002_5147

    bit 7, b
    jr z, jr_002_5156

    ld a, $10
    ld c, $a7

jr_002_5147:
    push bc
    ld hl, $7c20
    rst AddAToHL
    ld de, $9090
    ld bc, $001b
    call $0566
    pop bc

jr_002_5156:
    ld a, c
    ld hl, $cbe5
    cp [hl]
    ld [hl], c
    jr z, jr_002_5169

    ld l, c
    ld h, $c6
    ld a, [hli]
    ld [$cbe6], a
    ld a, [hl]
    ld [$cbe7], a

jr_002_5169:
    xor a
    ld [$cbe9], a
    call Call_002_5173
    jp $1a37


Call_002_5173:
    ld a, [$cbe8]
    or a
    ret nz

    ld a, $04
    ldh [rSVBK], a
    call Call_002_54a2
    ld a, [$cbea]
    bit 0, a
    jr z, jr_002_518e

    call Call_002_52a4
    call Call_002_532a
    jr jr_002_5193

jr_002_518e:
    bit 1, a
    call nz, Call_002_532a

jr_002_5193:
    ld a, [$cbe5]
    ld l, a
    ld h, $c6
    ld a, [hli]
    ld b, [hl]
    ld c, a
    ld hl, $cbe6
    ld a, [hli]
    ld h, [hl]
    ld l, a
    call $01d6
    jr z, jr_002_51c1

    ld hl, $cbea
    set 3, [hl]
    ld bc, $0001
    ld l, $e6
    dec a
    jr z, jr_002_51b9

    call $0181
    jr jr_002_51bc

jr_002_51b9:
    call $018f

jr_002_51bc:
    ld a, $61
    call $0c74

jr_002_51c1:
    ld a, [$cbea]
    bit 3, a
    jr z, jr_002_51e6

    ld hl, $d26c
    call Call_002_529d
    ld c, $10
    ld a, [$cbe6]
    ld b, a
    and $0f
    add c
    ld [hl-], a
    ld a, b
    swap a
    and $0f
    add c
    ld [hl-], a
    ld a, [$cbe7]
    and $0f
    add c
    ld [hl-], a

jr_002_51e6:
    ld hl, $cbe4
    ld a, [$c6a2]
    cp [hl]
    jr z, jr_002_5209

    jr c, jr_002_5203

    ld a, [$cc00]
    and $03
    jr nz, jr_002_5209

    inc [hl]
    ld a, [hl]
    and $03
    ld a, $57
    call z, $0c74
    jr jr_002_5204

jr_002_5203:
    dec [hl]

jr_002_5204:
    ld hl, $cbea
    set 2, [hl]

jr_002_5209:
    ld a, [$cbea]
    bit 2, a
    call nz, Call_002_5405
    ld hl, $d24a
    call Call_002_529d
    ld [hl], $09
    ld a, [$cc50]
    bit 3, a
    jr z, jr_002_5238

    inc l
    ld [hl], $1b
    ld a, [$cbea]
    bit 4, a
    jr z, jr_002_5238

    inc l
    ld a, [$cc55]
    ld bc, $c66e
    call $006d
    ld a, [bc]
    add $10
    ld [hl], a

jr_002_5238:
    xor a
    ldh [rSVBK], a
    ld a, [$cbe9]
    bit 7, a
    jr nz, jr_002_5282

    ld e, $10
    ld bc, $1038
    rrca
    jr nc, jr_002_524c

    ld c, $30

jr_002_524c:
    ld hl, $cb00
    ld a, b
    ld [hli], a
    ld a, e
    ld [hli], a
    ld a, $78
    ld [hli], a
    ld a, [$cbec]
    ld [hli], a
    ld a, b
    ld [hli], a
    ld a, [$cbee]
    add e
    ld [hli], a
    ld a, $7a
    ld [hli], a
    ld a, [$cbed]
    ld [hli], a
    ld a, b
    ld [hli], a
    ld a, c
    ld [hli], a
    ld a, $7c
    ld [hli], a
    ld a, [$cbf1]
    ld [hli], a
    ld a, b
    ld [hli], a
    ld a, [$cbf3]
    add c
    ld [hli], a
    ld a, $7e
    ld [hli], a
    ld a, [$cbf2]
    ld [hli], a
    ret


jr_002_5282:
    ld hl, $cb00
    ld de, $528d
    ld b, $10
    jp $045b


    db $10
    jr jr_002_5308

    dec bc
    db $10
    jr nz, jr_002_530e

    dec bc
    db $10
    jr z, jr_002_5314

    dec bc
    db $10
    jr nc, jr_002_531a

    dec bc

Call_002_529d:
    ld a, [$cbe9]
    rrca
    ret nc

    dec l
    ret


Call_002_52a4:
    call Call_002_54a2
    ld a, [$cbe9]
    rlca
    ret c

    ld a, [$c680]
    ld de, $cbeb
    call Call_002_52f0
    ld e, $80
    call c, Call_002_5480
    ld a, [$c681]
    ld de, $cbf0
    call Call_002_52f0
    ld e, $c0
    call c, Call_002_5480

Call_002_52c8:
    ld bc, $0020
    ld hl, $d642
    ld a, [$cbee]
    bit 7, a
    call z, Call_002_52e5
    ld l, $47
    ld a, [$cbe9]
    rrca
    jr nc, jr_002_52df

    dec l

jr_002_52df:
    ld a, [$cbf3]
    bit 7, a
    ret nz

Call_002_52e5:
    or a
    call nz, Call_002_52ea
    dec l

Call_002_52ea:
    ld d, l
    ld [hl], b
    add hl, bc
    ld [hl], b
    ld l, d
    ret


Call_002_52f0:
    call $16a5
    ld a, [hli]
    ld [de], a
    ld a, [hli]
    or a
    jr z, jr_002_531f

    inc e
    ld b, a
    cp $86
    ld a, [hli]
    jr nc, jr_002_5304

    sub $03
    or $01

jr_002_5304:
    set 3, a
    ld [de], a
    inc e

jr_002_5308:
    ld a, [hli]
    or a
    ld c, a
    jr z, jr_002_530f

    scf

jr_002_530e:
    ld a, [hl]

jr_002_530f:
    inc l
    set 3, a
    ld [de], a
    inc e

jr_002_5314:
    ld a, $08
    jr c, jr_002_5319

    xor a

jr_002_5319:
    ld [de], a

jr_002_531a:
    inc e
    ld a, [hli]
    ld [de], a
    scf
    ret


jr_002_531f:
    ld l, e
    ld h, d
    ld b, $05
    ld a, $ff

jr_002_5325:
    ld [hli], a
    dec b
    jr nz, jr_002_5325

    ret


Call_002_532a:
    ld a, [$cbe9]
    bit 7, a
    ret nz

    ld a, $04
    ldh [rSVBK], a
    ld a, [$c680]
    ld de, $cbeb
    call Call_002_52f0
    ld a, [$c681]
    ld de, $cbf0
    call Call_002_52f0
    call Call_002_52c8
    ld a, [$cbe9]
    rrca
    ld de, $d267
    jr nc, jr_002_5353

    dec e

jr_002_5353:
    ld a, [$cbf0]
    ld b, a
    ld a, [$cbf4]
    call Call_002_5367
    ld de, $d262
    ld a, [$cbeb]
    ld b, a
    ld a, [$cbef]

Call_002_5367:
    ld c, a
    rlca
    ret c

    ld a, b
    call $1717
    ld b, a
    ld a, c
    ld c, $80

Jump_002_5372:
    bit 7, a
    ret nz

    dec a
    jr z, jr_002_5396

    dec a
    jr z, jr_002_53d1

    dec a
    jr z, jr_002_53c1

    dec a
    jr z, jr_002_5383

    jr jr_002_53ae

jr_002_5383:
    inc e
    ld a, b
    and $0f
    add $10
    ld [de], a
    set 2, d
    ld a, c
    ld [de], a
    dec e
    ld [de], a
    res 2, d
    ld a, $1b
    ld [de], a
    ret


jr_002_5396:
    inc e
    ld a, b
    and $0f
    add $10
    ld [de], a
    set 2, d
    ld a, c
    ld [de], a
    dec e
    ld [de], a
    res 2, d
    ld a, b
    swap a
    and $0f
    add $10
    ld [de], a
    ret


jr_002_53ae:
    inc e
    ld a, b
    and $0f
    add $10
    ld [de], a
    set 2, d
    ld a, c
    ld [de], a
    dec e
    ld [de], a
    res 2, d
    ld a, $1a
    ld [de], a
    ret


jr_002_53c1:
    ld h, d
    ld l, e
    ld a, [$c6b2]
    and $01
    ret z

    ld [hl], $0a
    set 2, d
    rrca
    or c
    ld [de], a
    ret


jr_002_53d1:
    ld h, d
    ld l, e
    ld b, $1c
    ld a, [$c6b0]
    rrca
    ld e, a
    call c, Call_002_53f7
    ld a, $e0
    add l
    ld l, a
    inc b
    srl e
    call c, Call_002_53f7
    inc l
    inc b
    srl e
    call c, Call_002_53f7
    ld a, $20
    rst AddAToHL
    inc b
    srl e
    jr c, jr_002_53f7

    ret


Call_002_53f7:
jr_002_53f7:
    ld [hl], b
    set 2, h
    ld [hl], c
    res 2, h
    ret


Call_002_53fe:
    ld a, $01
    ldh [$8b], a
    ld a, b
    jr jr_002_5412

Call_002_5405:
    ld hl, $d24d
    xor a
    ldh [$8b], a
    ld a, [$cbe4]
    ld c, a
    ld a, [$c6a3]

jr_002_5412:
    ld e, $07
    cp $39
    jr c, jr_002_5419

    inc e

jr_002_5419:
    srl a
    srl a
    ld b, a
    ld a, c
    and $03
    ld d, a
    ld a, c
    srl a
    srl a
    ld c, a
    push bc
    cp e
    jr c, jr_002_542d

    ld c, e

jr_002_542d:
    ld a, b
    cp e
    jr c, jr_002_5432

    ld a, e

jr_002_5432:
    sub c
    ld b, a
    ldh a, [$8b]
    or e
    rrca
    jr c, jr_002_543b

    dec l

jr_002_543b:
    push hl
    call Call_002_5453
    pop hl
    ld a, $20
    rst AddAToHL
    pop bc
    ld a, c
    sub e
    jr nc, jr_002_5449

    xor a

jr_002_5449:
    ld c, a
    ld a, b
    sub e
    sub c
    bit 7, a
    jr z, jr_002_5452

    xor a

jr_002_5452:
    ld b, a

Call_002_5453:
    ld a, c
    or a
    jr z, jr_002_545d

    ld a, $0f

jr_002_5459:
    ld [hli], a
    dec c
    jr nz, jr_002_5459

jr_002_545d:
    ld a, b
    or a
    jr z, jr_002_5475

    ld a, d
    or a
    jr z, jr_002_546b

    add $0b
    ld [hli], a
    ld d, $00
    dec b

jr_002_546b:
    ld a, b
    or a
    jr z, jr_002_5475

    ld a, $0b

jr_002_5471:
    ld [hli], a
    dec b
    jr nz, jr_002_5471

jr_002_5475:
    ldh a, [$8b]
    or a
    ret nz

    ld c, $08

jr_002_547b:
    ld [hli], a
    dec c
    jr nz, jr_002_547b

    ret


Call_002_5480:
    ld d, $d6
    push bc
    ld a, b
    call Call_002_5489
    pop bc
    ld a, c

Call_002_5489:
    or a
    jr z, jr_002_5499

    add a
    call $01ac
    ld hl, $7620
    add hl, bc
    ld b, $1b
    jp $1a49


jr_002_5499:
    ld h, d
    ld l, e
    ld b, $20
    ld a, $ff
    jp $044c


Call_002_54a2:
    ld c, $10
    ld a, [$c6a3]
    cp $39
    jr c, jr_002_54ac

    inc c

jr_002_54ac:
    ld a, [$c680]
    cp $0c
    jr nz, jr_002_54b5

    set 7, c

jr_002_54b5:
    ld hl, $cbea
    ld a, [hl-]
    rrca
    ld a, c
    jr c, jr_002_54bf

    cp [hl]
    ret z

jr_002_54bf:
    ld [hli], a
    ld [hl], $ff
    ld hl, $cbeb
    ld b, $0a
    call $044b
    bit 7, c
    ld a, $23
    jr nz, jr_002_54d5

    ld a, c
    and $01
    add $21

jr_002_54d5:
    jp $0602


    call function_047b
    ld a, $10
    ldh [$9d], a
    ld a, $04
    ldh [rSVBK], a
    call Call_002_54ef
    call Call_002_5d26
    xor a
    ldh [rSVBK], a
    jp $1a62


Call_002_54ef:
    ld a, [$cbcd]
    rst $00
    add hl, hl
    ld d, l
    or e
    ld d, l
    inc b
    ld d, a
    db $d3
    ld d, a

Call_002_54fb:
    ld hl, $d3e0
    rst AddAToHL
    ld a, [hl]

Call_002_5500:
    ld hl, $cbbb
    cp [hl]
    ret z

    ld [hl], a
    ld c, a
    ld b, $09
    bit 7, c
    jr z, jr_002_5526

    ld b, $30
    ld c, $c0
    and $3f
    ld l, a
    add $40
    bit 6, c
    ld c, a
    jr z, jr_002_5526

    ld [$cbb1], a
    ld a, l
    add $80
    ld [$cbb2], a
    ld c, $c1

jr_002_5526:
    jp $1839


    ld hl, $cbd2
    ld a, [hl]
    cp $08
    jr nc, jr_002_5533

    ld [hl], $00

jr_002_5533:
    xor a
    ld [$cbcf], a
    ld [$cbba], a
    dec a
    ld [$cbbb], a
    call $58f0
    jr z, jr_002_5545

    ld a, $01

jr_002_5545:
    ld [$cbb9], a
    call $1a5e
    ld a, $08
    call function_0602
    ld a, $06
    call $05b6
    ld a, $0a
    call $04e7
    ld hl, $469d
    ld e, $3f
    call $008a
    call Call_002_557c
    ld a, $01
    ld [$cbcd], a
    call $3168
    ld a, $03
    jp function_02ea


Jump_002_5572:
    ld a, [$cbba]
    and $01
    add $04
    jp $05b6


Call_002_557c:
Jump_002_557c:
    ld hl, $d3e0
    ld b, $20
    call $044b
    xor a
    call Call_002_5500
    ld hl, $5572
    push hl
    ld a, [$cbcf]
    rst $00
    sub [hl]
    ld d, l
    and e
    ld d, l
    xor e
    ld d, l
    ld a, $ff
    ld [$cbea], a
    ld a, $09
    call function_0602
    jp Jump_002_5ae3


    ld a, $0a
    call function_0602
    jp Jump_002_5b2b


    ld a, $0b
    call function_0602
    jp $5bc6


    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$c482]
    bit 3, a
    jp nz, Jump_002_4f7b

    bit 2, a
    ld a, $03
    jr nz, @+$0c

    ld a, [$cbcf]
    rst $00
    rst AddAToHL
    ld d, l
    add [hl]
    ld d, [hl]
    jp z, $2156

    call $22cb
    ld [hl], $00
    ret


    ld a, [$c482]
    ld c, a
    ld a, $80
    bit 1, c
    jr nz, jr_002_55fe

    inc a
    bit 0, c
    jr nz, jr_002_55fe

    call Call_002_583f
    ld a, [$cbd0]
    ld hl, $c682
    rst AddAToHL
    ld a, [hl]
    call $16a5
    ld a, $06
    rst AddAToHL
    ld a, [hl]
    call Call_002_5500
    jp Jump_002_591c


jr_002_55fe:
    ld [$cbb6], a
    ld a, [$cbd0]
    ld hl, $c682
    rst AddAToHL
    ld a, [hl]
    ld [$cbb7], a
    ld c, $1f
    cp $19
    jr z, jr_002_5616

    cp $13
    jr nz, jr_002_5627

jr_002_5616:
    ld a, [$c696]
    and c
    call $0176
    ld [$cbb8], a
    cp $02
    ld a, $02
    jp nc, $55d0

Jump_002_5627:
jr_002_5627:
    call Call_002_563d
    call Call_002_5ae3
    call Call_002_591c
    ld a, $56
    call $0c74
    ld a, $01
    call $55d0
    jp Jump_002_557c


Call_002_563d:
    ld d, $c6
    ld h, d
    ld a, [$cbb6]
    ld e, a
    ld a, [$cbd0]
    add $82
    ld l, a
    ld b, $0c
    ld a, [hl]
    cp b
    jr z, jr_002_5663

    ld a, [de]
    cp b
    jr nz, jr_002_565d

    ld c, l
    ld l, $80
    xor a
    ld [hli], a
    ld [hl], a
    ld l, c
    ld a, b
    ld [de], a

Call_002_565d:
jr_002_565d:
    ld a, [de]
    ld c, a
    ld a, [hl]
    ld [de], a
    ld [hl], c
    ret


jr_002_5663:
    ld [hl], $00
    call Call_002_565d
    ld a, [$c680]
    call Call_002_567a
    ld a, [$c681]
    call Call_002_567a
    ld l, $80
    ld [hl], b
    inc l
    ld [hl], b
    ret


Call_002_567a:
    or a
    ret z

    ld c, a
    ld l, $82

jr_002_567f:
    ld a, [hli]
    or a
    jr nz, jr_002_567f

    dec l
    ld [hl], c
    ret


    ld a, [$c482]
    bit 0, a
    jr nz, jr_002_5692

    call Call_002_5856
    jr jr_002_5695

jr_002_5692:
    call Call_002_56a1

jr_002_5695:
    call Call_002_5940
    ld a, [$cbd1]
    call Call_002_54fb
    jp Jump_002_5ab7


Call_002_56a1:
    ld a, [$cbd1]
    sub $10
    ret c

    ld b, a
    ld a, [$ccc9]
    or a
    ld a, $5a
    jp nz, $0c74

    ld a, b
    ld hl, $c6c5
    ld c, [hl]
    ld l, $c0
    rst AddAToHL
    ld a, [hl]
    cp c
    jr nz, jr_002_56c2

    cp $ff
    ret z

    ld a, $ff

jr_002_56c2:
    ld [$c6c5], a
    ld a, $56
    jp $0c74


    ld a, [$c482]
    and $01
    jr z, jr_002_56ef

    ld a, [$cbd2]
    rlca
    jr nc, jr_002_56ef

    ld a, [$cbb9]
    cp $02
    jr nz, jr_002_56ef

    inc a
    ld [$cbcb], a
    ld a, $56
    call $0c74
    ld hl, $cbb3
    ld b, $10
    jp $044b


jr_002_56ef:
    call Call_002_58b4
    ld a, [$cbd2]
    bit 7, a
    jr z, jr_002_56fe

    ld a, [$cbb9]
    add $08

jr_002_56fe:
    call Call_002_54fb
    jp Jump_002_59a5


    ld a, [$cbce]
    rst $00
    ld c, $57
    ld c, l
    ld d, a
    ld h, e
    ld d, a
    ld hl, $c6be
    ld a, [$cbb7]
    cp $19
    jr z, jr_002_5719

    inc l

jr_002_5719:
    ld e, [hl]
    ld d, $00

jr_002_571c:
    ld a, d
    call Call_002_5aa2
    cp e
    jr z, jr_002_5726

    inc d
    jr jr_002_571c

jr_002_5726:
    ld a, d
    ld [$cbb5], a
    ld a, [$cbb8]
    ld hl, $57cd
    rst AddAToHL
    ld a, [hl]
    ld hl, $cbbf
    ld [hli], a
    xor a
    ld [hli], a
    inc a
    ld [hli], a
    ld [$cbbe], a
    ld a, [$cbd0]
    cp $08
    ld a, $0a
    jr nc, jr_002_5748

    add $a0

jr_002_5748:
    ld [hli], a
    ld hl, $cbce
    inc [hl]
    ld hl, $cbbe
    dec [hl]
    ret nz

    ld [hl], $02
    call Call_002_57a6
    jr c, jr_002_5760

    call Call_002_59ef
    ld hl, $cbce
    inc [hl]

jr_002_5760:
    jp Jump_002_5572


    ld a, [$c482]
    and $0b
    jr nz, jr_002_5790

    call Call_002_58f6
    ld a, [$cbb7]
    ld a, [$cbb5]
    call Call_002_5aa2
    add $20
    call $16a5
    ld a, $06
    rst AddAToHL
    ld a, [$cbb7]
    cp $13
    ld a, $00   ; xor a
    jr nz, jr_002_5789

    ld a, $05

jr_002_5789:
    add [hl]
    call Call_002_5500
    jp Jump_002_59ef


jr_002_5790:
    ld a, [$cbb7]
    ld e, $be
    cp $19
    jr z, jr_002_579a

    inc e

jr_002_579a:
    ld a, [$cbb5]
    call Call_002_5aa2
    ld d, $c6
    ld [de], a
    jp Jump_002_5627


Call_002_57a6:
    ld hl, $cbbf
    ld a, [hli]
    ld c, a
    ld a, [hl]
    cp c
    jr nc, jr_002_57b6

    add $02
    ld [hli], a
    inc hl
    dec [hl]
    jr jr_002_57bc

jr_002_57b6:
    inc hl
    ld a, [hl]
    cp $04
    ret nc

    inc [hl]

jr_002_57bc:
    ld l, $c0
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    ld a, [hl]
    ld hl, $d080
    rst AddAToHL
    ld de, $0001
    call Call_002_5cbb
    scf
    ret


    ld [$100a], sp
    db $10
    ld a, [$cbce]
    rst $00
    db $dd
    ld d, a
    ld bc, $1958
    ld e, b
    ld hl, $cbcf
    ld a, [hl]
    inc a
    cp $03
    jr c, jr_002_57e7

    xor a

jr_002_57e7:
    ld [hl], a
    ld a, [$cbba]
    xor $01
    ld [$cbba], a
    call Call_002_557c
    ld a, $9f
    ld [$c48f], a
    ld hl, $cbce
    inc [hl]
    ld a, $54
    call $0c74
    ld bc, $070c
    ld a, [$c48f]
    sub c
    cp b
    jr nc, jr_002_580c

    ld a, b

jr_002_580c:
    ld [$c48f], a
    ld a, [$c48d]
    add c
    ld [$c48d], a
    cp $98
    ret c

    ld a, $c7
    ld [$c48f], a
    xor a
    ld [$c48d], a
    ld a, [$c48b]
    xor $48
    ld [$c48b], a
    ld a, $01
    jp $55d0


Call_002_582f:
    call $0294
    and $f0
    swap a
    call $01f8
    ret nc

    rst AddAToHL
    ld a, [hl]
    or a
    scf
    ret


Call_002_583f:
    ld hl, $5852
    call Call_002_582f
    ret nc

    ld hl, $cbd0
    add [hl]
    and $0f
    ld [hl], a
    ld a, $84
    jp $0c74


    ld bc, $fcff
    inc b

Call_002_5856:
    ld hl, $58b0
    call Call_002_582f
    ret nc

    ld c, a
    ld b, a
    inc b
    call Call_002_5ca8
    ld e, $0f
    jr z, jr_002_5868

    inc a

jr_002_5868:
    add e
    ld d, a
    ld hl, $cbd1
    ld a, [hl]
    bit 2, b
    jr nz, jr_002_5878

jr_002_5872:
    add c
    cp d
    jr nc, jr_002_5872

    jr jr_002_5887

jr_002_5878:
    cp e
    jr nc, jr_002_587f

    add c
    cp e
    jr c, jr_002_5887

jr_002_587f:
    ld a, [hl]

jr_002_5880:
    ld c, a
    call Call_002_588d
    cp d
    jr nc, jr_002_5880

jr_002_5887:
    ld [hl], a
    ld a, $84
    jp $0c74


Call_002_588d:
    push hl
    ld hl, $589e

jr_002_5891:
    ld a, [hli]
    cp c
    jr nz, jr_002_5891

    bit 3, b
    jr z, jr_002_589b

    dec hl
    dec hl

jr_002_589b:
    ld a, [hl]
    pop hl
    ret


    ld a, [bc]
    stop
    dec bc
    ld de, $0c01
    ld [de], a
    ld [bc], a
    dec c
    inc de
    inc bc
    ld c, $14
    inc b
    ld a, [bc]
    rrca
    nop
    ld bc, $fbff
    dec b

Call_002_58b4:
    ld e, $80
    call $58f0
    jr z, jr_002_58bd

    ld e, $00

jr_002_58bd:
    ld hl, $58ec
    call Call_002_582f
    ret nc

    ld hl, $cbd2
    ld c, a
    cp $80
    jr nz, jr_002_58cf

    xor [hl]
    jr jr_002_58e6

jr_002_58cf:
    bit 7, [hl]
    jr z, jr_002_58e3

    ld hl, $cbb9
    ld a, [hl]

jr_002_58d7:
    add c
    and $03
    cp e
    jr z, jr_002_58d7

    cp $03
    jr nc, jr_002_58d7

    jr jr_002_58e6

jr_002_58e3:
    add [hl]
    and $07

jr_002_58e6:
    ld [hl], a
    ld a, $84
    jp $0c74


    add b
    add b
    rst $38
    ld bc, $50fa
    call z, $fce6
    ret


Call_002_58f6:
    ld a, [$cbb8]
    ld b, a
    ld hl, $5918
    call Call_002_582f
    ret nc

    ret z

    ld hl, $cbb5
    add [hl]
    bit 7, a
    jr nz, jr_002_5910

    cp b
    jr c, jr_002_5912

    xor a
    jr jr_002_5912

jr_002_5910:
    ld a, b
    dec a

jr_002_5912:
    ld [hl], a
    ld a, $84
    jp $0c74


    ld bc, $00ff
    nop

Call_002_591c:
Jump_002_591c:
    ld a, [$cbd0]
    ld c, a
    and $0c
    rrca
    rrca
    swap a
    ld b, a
    rrca
    add b
    ld b, a
    ld a, c
    and $03
    swap a
    add a
    ld c, a
    ld hl, $5937
    jp $0d3d


    ld [bc], a
    jr z, jr_002_5952

    inc c
    ld [hli], a
    jr z, jr_002_5976

    inc c
    ld [bc], a

Call_002_5940:
    ld a, [$cbd1]
    ld e, a
    ld hl, $596f
    rst AddAToHL
    ld a, [hl]
    and $f0
    rrca
    ld b, a
    ld a, [hl]
    and $0f
    swap a

jr_002_5952:
    rrca
    ld c, a
    ld d, $02
    ld a, e
    cp $04
    jr z, jr_002_5964

    sub $0e
    jr z, jr_002_5964

    dec d
    dec a
    jr z, jr_002_5964

    dec d

jr_002_5964:
    ld a, d
    ld hl, $5984
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    jp $0d3d


    ld d, d
    ld d, l
    ld e, b
    ld e, e
    ld e, [hl]
    add d
    add l

jr_002_5976:
    adc b
    adc e
    adc [hl]
    or d
    or l
    cp b
    cp e
    cp [hl]
    ldh [$e3], a
    and $e9
    db $ec
    rst $28
    adc d
    ld e, c
    sub e
    ld e, c
    sbc h
    ld e, c
    ld [bc], a
    nop
    ld [$220c], sp
    nop
    jr nz, jr_002_599e

    ld [bc], a
    ld [bc], a
    nop
    inc c
    inc c
    ld [hli], a
    nop
    inc h
    inc c
    ld [bc], a
    ld [bc], a
    nop

jr_002_599e:
    ld [$220c], sp
    nop
    jr z, @+$0e

    ld [bc], a

Jump_002_59a5:
    ld a, [$cbd2]
    bit 7, a
    jr z, jr_002_59b1

    ld a, [$cbb9]
    add $08

jr_002_59b1:
    ld e, a
    ld hl, $59c7
    rst JumpTable
    ld a, [hli]
    ld b, a
    ld c, [hl]
    ld a, e
    cp $08
    ld hl, $59dd
    jr c, jr_002_59c4

    ld hl, $59e6

jr_002_59c4:
    jp $0d3d


    jr nc, jr_002_59e9

    jr nc, @+$3a

    ld b, b
    ld c, b
    ld e, b
    ld c, b
    ld l, b
    jr c, jr_002_5a3a

    jr nz, jr_002_5a2c

    db $10
    ld b, b
    db $10
    jr z, @+$72

    ld e, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [bc], a
    nop
    nop
    inc c
    ld [hli], a
    nop
    jr @+$0e

    ld [bc], a
    ld [bc], a
    nop
    nop

jr_002_59e9:
    inc c
    ld [hli], a
    nop
    jr z, jr_002_59fa

    ld [bc], a

Call_002_59ef:
Jump_002_59ef:
    ld de, $0500
    ld b, d
    ld d, $00

jr_002_59f5:
    push bc
    ld a, e
    ld hl, $c696

jr_002_59fa:
    call $0205
    jr z, jr_002_5a40

    push de
    ld a, d
    call Call_002_5a85
    ld a, e
    ld hl, $5a56
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL
    call $0d3d
    pop de
    ld a, e
    ld hl, $c6b5
    rst AddAToHL
    ld b, [hl]
    ld a, [$cbb8]
    ld hl, $5a70
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, d
    rst AddAToHL
    ld c, [hl]
    ld hl, $d0c0
    ld a, [$cbd0]
    cp $08
    jr nc, jr_002_5a2f

jr_002_5a2c:
    ld hl, $d160

jr_002_5a2f:
    ld a, c
    rst AddAToHL
    ld a, b
    and $f0
    swap a
    add $10
    ld [hli], a
    ld a, b

jr_002_5a3a:
    and $0f
    add $10
    ld [hl-], a
    inc d

jr_002_5a40:
    inc e
    pop bc
    dec b
    jr nz, jr_002_59f5

    ld a, [$cbb5]
    call Call_002_5a85
    ld hl, $5a51
    jp $0d3d


    ld bc, $0c28
    ld c, $03
    dec b
    add hl, bc
    dec c
    ld de, $0115
    inc d
    inc c
    ld b, $0a
    ld bc, $0c14
    ld [$010b], sp
    inc d
    inc c
    ld a, [bc]
    add hl, bc
    ld bc, $0c14
    inc c
    add hl, bc
    ld bc, $0c14
    ld c, $08
    ld a, l
    ld e, d
    add c
    ld e, d
    ld a, h
    ld e, d
    add b
    ld e, d
    inc bc
    rlca
    dec bc
    rrca
    inc bc
    ld b, $09
    inc c
    rrca

Call_002_5a85:
    ld c, a
    ld a, [$cbb8]
    ld hl, $5a70
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld a, c
    rst AddAToHL
    ld a, [hl]
    swap a
    rrca
    ld c, a
    ld b, $20
    ld a, [$cbd0]
    cp $08
    ret nc

    ld b, $48
    ret


Call_002_5aa2:
    ld c, a
    inc c
    ld hl, $c696
    xor a

jr_002_5aa8:
    ld b, a
    call $0205
    jr z, jr_002_5ab1

    dec c
    jr z, jr_002_5ab5

jr_002_5ab1:
    ld a, b
    inc a
    jr jr_002_5aa8

jr_002_5ab5:
    ld a, b
    ret


Jump_002_5ab7:
    call Call_002_5ca8
    ret z

    ld b, a
    ld a, [$c6c5]
    cp $ff
    ret z

    ld hl, $c6c0
    ld c, $00

jr_002_5ac7:
    cp [hl]
    jr z, jr_002_5ad0

    inc hl
    inc c
    dec b
    jr nz, jr_002_5ac7

    ret


jr_002_5ad0:
    ld a, $18
    call $019d
    ld c, l
    ld b, $00
    ld hl, $5ade
    jp $0d3d


    ld bc, $2e6e
    db $ec
    inc b

Call_002_5ae3:
Jump_002_5ae3:
    ld a, $10

jr_002_5ae5:
    ldh [$8d], a
    ld hl, $c681
    rst AddAToHL
    ld a, [hl]
    call $16a5
    ld a, [hli]
    call $1717
    ldh [$8b], a
    ldh a, [$8d]
    ld bc, $5b09
    call $007e
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    call Call_002_5ccf
    ldh a, [$8d]
    dec a
    jr nz, jr_002_5ae5

    ret


    ld h, e
    ret nc

    ld h, a
    ret nc

    ld l, e
    ret nc

    ld l, a
    ret nc

    jp $c7d0


    ret nc

    set 2, b
    rst $08
    ret nc

    inc hl
    pop de
    daa
    pop de
    dec hl
    pop de
    cpl
    pop de
    add e
    pop de
    add a
    pop de
    adc e
    pop de
    adc a
    pop de

Jump_002_5b2b:
    ld hl, $5d70

jr_002_5b2e:
    ld a, [hli]
    or a
    jr z, jr_002_5b58

    ldh [$8c], a
    call $1717
    jr nc, jr_002_5b54

    ldh [$8b], a
    ld a, [hli]
    call Call_002_5ba7
    push hl
    ldh a, [$8c]
    call $16a5
    inc hl
    call Call_002_5ccf
    ld c, [hl]
    pop hl
    ld a, [hl-]
    ld de, $d3e0
    call $0068
    ld a, c
    ld [de], a

jr_002_5b54:
    inc hl
    inc hl
    jr jr_002_5b2e

jr_002_5b58:
    ld a, [$c6c6]
    cp $03
    jr z, jr_002_5b6d

    ld hl, $5bc0
    rst JumpTable
    ld a, [hli]
    ld c, [hl]
    ld b, $03
    ld l, a
    ld h, $d1
    call Call_002_5cb8

jr_002_5b6d:
    call Call_002_5ca8
    ret z

    ld b, a

jr_002_5b72:
    ld a, b
    ld hl, $5bba
    rst AddAToHL
    ld e, [hl]
    ld d, $d1
    ld a, b
    ld hl, $c6bf
    rst AddAToHL
    ld a, [hl]
    cp $ff
    jr z, jr_002_5b94

    push bc
    ld c, a
    ld a, b
    ld hl, $d3ef
    rst AddAToHL
    ld a, c
    or $c0
    ld [hl], a
    ld a, c
    call $722f
    pop bc

jr_002_5b94:
    dec b
    jr nz, jr_002_5b72

    ld a, [$c6c6]
    add $1c
    ld [$d3ef], a
    ld de, $d182
    ld a, $fe
    jp $722f


Call_002_5ba7:
    ld d, a
    and $f0
    swap a
    add a
    call $01ac
    ld a, d
    and $0f
    add c
    ld de, $d062
    call $0068
    ret


    add h
    add a
    adc d
    adc l
    sub b
    add c
    ld [de], a
    add a
    inc c
    adc l
    ld b, $21
    sbc l
    ld e, h
    ld de, $d3e0
    ld b, $0b
    call CopyHLToDE
    ld b, $08

jr_002_5bd3:
    ld a, b
    dec a
    ld hl, $c6bb
    call $0205
    jr nz, jr_002_5bf7

    push bc
    ld a, b
    ld hl, $5c51
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld bc, $0202
    ld de, $0007
    call Call_002_5cbb
    pop bc
    ld a, b
    ld hl, $d3df
    rst AddAToHL
    ld [hl], $00

jr_002_5bf7:
    dec b
    jr nz, jr_002_5bd3

    ld a, [$c6a4]
    ld c, a
    ld hl, $d3e9
    add [hl]
    ld [hl], a
    ld a, c
    or a
    jr z, jr_002_5c1e

    add $10
    ld [$d14f], a
    ld hl, $5c8b

jr_002_5c0f:
    push bc
    ld a, [hli]
    ld de, $d0ce
    call $0068
    call Call_002_5ccf
    pop bc
    dec c
    jr nz, jr_002_5c0f

jr_002_5c1e:
    call $58f0
    ld hl, $d04d
    ld bc, $0406
    jp nz, Jump_002_5cb8

    ld a, [$c63a]
    sub $02
    jr z, jr_002_5c3a

    ld a, [$cc61]
    inc a
    jr z, jr_002_5c3a

    ld a, [$cc4e]

jr_002_5c3a:
    ld c, a
    ld hl, $d3e8
    add [hl]
    ld [hl], a
    ld a, c
    add a
    add a
    add c
    ld hl, $5c63
    rst JumpTable
    ld de, $d06e
    call Call_002_5ccf
    ld e, $70
    jp Jump_002_5ccf


    add h
    ret nc

    add a
    ret nc

    ret


    ret nc

    add hl, hl
    pop de
    ld h, a
    pop de
    ld h, h
    pop de
    ld [hli], a
    pop de
    jp nz, $10d0

    nop
    ld de, $ff00
    ld [de], a
    nop
    inc de
    nop
    rst $38
    inc d
    ld [bc], a
    dec d
    ld [bc], a
    rst $38
    ld d, $02
    rla
    ld [bc], a
    rst $38
    jr jr_002_5c7c

    add hl, de
    inc bc
    rst $38

jr_002_5c7c:
    ld a, [de]
    inc bc
    dec de
    inc bc
    rst $38
    inc e
    ld bc, $011d
    rst $38
    ld e, $01
    rra
    ld bc, $00ff
    ld a, b
    dec b
    ld a, c
    dec b
    rst $38
    ld b, b
    ld a, d
    dec b
    ld a, e
    dec b
    rst $38
    ld b, d
    ld a, e
    dec h
    ld a, d
    dec h
    rst $38
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$5256], sp
    ld d, c

Call_002_5ca8:
    push hl
    ld a, [$c6c6]
    ld hl, $5cb4
    rst AddAToHL
    ld a, [hl]
    or a
    pop hl
    ret


    nop
    ld bc, $0503

Call_002_5cb8:
Jump_002_5cb8:
    ld de, $e701

Call_002_5cbb:
Jump_002_5cbb:
jr_002_5cbb:
    push hl
    ld a, c

jr_002_5cbd:
    ld [hl], d
    set 2, h
    ld [hl], e
    res 2, h
    inc hl
    dec a
    jr nz, jr_002_5cbd

    pop hl
    ld a, $20
    rst AddAToHL
    dec b
    jr nz, jr_002_5cbb

    ret


Call_002_5ccf:
Jump_002_5ccf:
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    call Call_002_5cec
    inc e
    ld a, [hli]
    ld c, a
    ld a, [hli]
    ld b, a
    call Call_002_5cec
    ld a, $20
    call $0068
    ldh a, [$8b]
    ld b, a
    ld c, $07
    ld a, [hli]
    jp Jump_002_5372


Call_002_5cec:
    push de
    ld a, c
    or a
    jr z, jr_002_5cfe

    inc b
    inc b
    add a
    jr nc, jr_002_5cf8

    set 3, b

jr_002_5cf8:
    ld c, a
    call Call_002_5d13
    pop de
    ret


jr_002_5cfe:
    ld a, $02
    ld [de], a
    set 2, d
    dec a
    ld [de], a
    ld a, $20
    call $0068
    ld a, $01
    ld [de], a
    res 2, d
    inc a
    ld [de], a
    pop de
    ret


Call_002_5d13:
    ld a, c
    ld [de], a
    set 2, d
    ld a, b
    ld [de], a
    ld a, $20
    call $0068
    ld a, b
    ld [de], a
    res 2, d
    ld a, c
    inc a
    ld [de], a
    ret


Call_002_5d26:
    ld a, $36
    call $1717
    ret nc

    ld bc, $2068
    ld a, [$cbcd]
    cp $03
    jr z, jr_002_5d3d

jr_002_5d36:
    ld a, [$cbcf]
    dec a
    ret nz

    jr jr_002_5d59

jr_002_5d3d:
    ld a, [$cbce]
    or a
    jr z, jr_002_5d36

    ld a, [$cbcf]
    or a
    ret z

    dec a
    jr nz, jr_002_5d52

    ld a, [$c48f]
    sub $07
    jr jr_002_5d57

jr_002_5d52:
    ld a, [$c48d]
    cpl
    inc a

jr_002_5d57:
    add c
    ld c, a

jr_002_5d59:
    ld hl, $5d5f
    jp $0d3d


    inc b
    ld [$fe00], sp
    inc c
    ld [$fe08], sp
    inc l
    ld [$fa00], sp
    rrca
    ld [$fc08], sp
    rrca
    ld d, h
    ld bc, $2e00
    ld bc, $2f00
    inc b
    ld bc, $0741
    ld [bc], a
    ld [hl], $0a
    inc bc
    inc [hl]
    dec c
    inc b
    ld b, d
    ld sp, $4805
    inc [hl]
    ld b, $43
    inc [hl]
    ld b, $49
    daa
    rlca
    ld e, b
    ld b, a
    rlca
    ld c, d
    scf
    rlca
    ld c, e
    ld a, [hl-]
    ld [$3d4c], sp
    add hl, bc
    ld c, l
    ld a, $09
    ld c, [hl]
    ld c, l
    add hl, bc
    ld c, a
    ld c, [hl]
    add hl, bc
    ld b, l
    ld h, c
    ld a, [bc]
    ld b, [hl]
    ld h, c
    ld a, [bc]
    ld b, l
    ld h, c
    ld a, [bc]
    ld b, a
    ld h, c
    ld a, [bc]
    ld b, h
    ld h, c
    ld a, [bc]
    ld d, b
    ld h, h
    dec bc
    ld d, d
    ld h, h
    dec bc
    ld d, c
    ld h, a
    inc c
    ld d, e
    ld l, d
    dec c
    dec l
    ld l, l
    ld c, $00

Call_002_5dc2:
    ld hl, $69e2
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL

jr_002_5dc8:
    ld a, [hli]
    or a
    ret z

    ld b, a
    ld a, [hli]
    ld e, a
    ld a, [hli]
    ld d, a
    ld a, [hli]
    ld c, a
    ld a, [hli]
    push hl
    ld h, a
    ld l, c
    ld a, b
    and $0f
    ld c, a
    ld a, b
    and $f0
    swap a
    ld b, a

jr_002_5de0:
    push bc

jr_002_5de1:
    ld a, [hl]
    ld [de], a
    set 2, h
    set 2, d
    ld a, [hli]
    ld [de], a
    inc de
    res 2, h
    res 2, d
    dec c
    jr nz, jr_002_5de1

    pop bc
    ld a, $20
    sub c
    ldh [$8b], a
    rst AddAToHL
    ldh a, [$8b]
    call $0068
    dec b
    jr nz, jr_002_5de0

    pop hl
    jr jr_002_5dc8

    call function_047b
    call Call_002_5e0c
    jp Jump_002_63d2


Call_002_5e0c:
    ld a, [$cbcd]
    rst $00
    jr jr_002_5e70

    jr z, @+$60

    ld l, h
    ld e, [hl]
    and [hl]
    ld e, [hl]
    call Call_002_5ee3
    ld a, $ff
    ld [$cbb7], a
    ld a, $01
    ld [$cbc1], a
    jp Jump_002_5eb7


    ld a, [$c4ab]
    or a
    jr nz, jr_002_5e49

    ld a, [$c482]
    bit 1, a
    jr nz, jr_002_5e4c

    and $09
    jr nz, jr_002_5e55

    ld hl, $5e68
    call Call_002_582f
    jr nc, jr_002_5e49

    call Call_002_5eb7
    ld a, $84
    call nz, $0c74

jr_002_5e49:
    jp Jump_002_612d


jr_002_5e4c:
    call $609b
    ld a, $03
    ld c, $01
    jr jr_002_5e60

jr_002_5e55:
    call $609b
    ld a, c
    ld [$cbb1], a
    ld c, $00
    ld a, $02

jr_002_5e60:
    ld [$cbcd], a
    ld b, $03
    jp $184b


    ld bc, $ffff
    ld bc, $32cd
    jr @-$04

jr_002_5e70:
    and l
    res 6, a
    jr nz, jr_002_5ea0

    ld [$cbcb], a
    ld a, [$cc49]
    or $80
    ld [$cc63], a
    ld a, [$cbb7]
    call Call_002_65f6
    ld a, [hli]
    ld [$cc64], a
    ld a, [hli]
    ld [$cc66], a
    ld a, $05
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    ld a, $03
    call $0c89
    jp $3144


jr_002_5ea0:
    ld a, $01
    ld [$cbcd], a
    ret


    call $1832
    ld a, [$cba5]
    or a
    jr z, jr_002_5ea0

    ld a, $ff
    ld [$cc67], a
    jp Jump_002_4f7b


Call_002_5eb7:
Jump_002_5eb7:
    ld e, a
    ld a, [$cbb7]
    ld d, a

jr_002_5ebc:
    ld a, d
    add e
    and $07
    ld d, a
    call Call_002_65f6
    ld a, [hl]
    or a
    jr z, jr_002_5ebc

    call Call_002_6560
    jr z, jr_002_5ebc

    ld a, [hli]
    ld [$cbb6], a
    ld hl, $cbb7
    ld a, d
    cp [hl]
    ld [hl], a
    ret


    call function_047b
    ld a, [$cbcd]
    rst $00
    db $e3
    ld e, [hl]
    ld d, $60

Call_002_5ee3:
    ld a, $04
    ldh [rSVBK], a
    call Call_002_5f8d
    ld a, [$cbb3]
    add $0d
    call function_0602
    ld a, [$cbb3]
    add $07
    call $04e7
    ld a, [$cbb3]
    cp $02
    jr z, jr_002_5f35

    or a
    jr nz, jr_002_5f1f

    ld a, [$c610]
    sub $0c
    call nc, Call_002_5dc2
    ld a, [$c781]
    rlca
    ld a, $05
    call c, Call_002_5dc2
    call Call_002_66ab
    ld a, $06
    call nz, Call_002_5dc2
    jr jr_002_5f27

jr_002_5f1f:
    call Call_002_66ab
    ld a, $07
    call nz, Call_002_5dc2

jr_002_5f27:
    call Call_002_6670
    ld a, [$cbb5]
    ld [$cbb6], a
    call Call_002_612d
    jr jr_002_5f6d

jr_002_5f35:
    ld a, [$cc50]
    and $20
    ld a, [$c63d]
    jr nz, jr_002_5f42

    ld a, [$cc57]

jr_002_5f42:
    ld b, a
    ld a, [$cc5c]
    dec a
    sub b
    ld [$cbb7], a
    call $01b7
    ld a, [$cbb7]
    add a
    add c
    ld [$cbb8], a
    call Call_002_5fe3
    ld a, [$cc55]
    add $10
    call function_0602
    call Call_002_5fd5
    call Call_002_6743
    call Call_002_66e1
    call Call_002_6791

jr_002_5f6d:
    xor a
    ldh [rSVBK], a
    call Call_002_63d2
    xor a
    ldh [$aa], a
    ldh [$a8], a
    ld [$cd09], a
    ld [$cd08], a
    ld hl, $cbcd
    inc [hl]
    call Call_002_63c9
    call $3168
    ld a, $07
    jp function_02ea


Call_002_5f8d:
    ld hl, $c63a
    ld a, [hli]
    ld c, [hl]
    ld b, a
    or a
    jr z, jr_002_5fa0

    cp $02
    jr z, jr_002_5fa9

    cp $04
    jr z, jr_002_5fae

    jr jr_002_5fbf

jr_002_5fa0:
    ld a, c
    cp $c9
    jr nz, jr_002_5fbf

    ld c, $40
    jr jr_002_5fbf

jr_002_5fa9:
    ld bc, $00c9
    jr jr_002_5fbf

jr_002_5fae:
    ld a, [$cc49]
    cp $03
    jr nz, jr_002_5fbf

    ld a, [$cc4c]
    cp $98
    jr nz, jr_002_5fbf

    ld bc, $0000

jr_002_5fbf:
    ld a, c
    ld [$cbb5], a
    ld a, b
    ld hl, $5fcd
    rst AddAToHL
    ld a, [hl]
    ld [$cbb3], a
    ret


    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_002_5fd5:
    call Call_002_6443
    ret z

    ld hl, $d226
    add $90
    ld [hl-], a
    ld a, $9a
    ld [hl], a
    ret


Call_002_5fe3:
    ld a, [$cc55]
    ld hl, $c662
    rst AddAToHL
    ld b, [hl]
    call Call_002_6456
    ld a, b
    jr z, jr_002_5ff5

    ld a, [$cc5e]
    or b

jr_002_5ff5:
    ld [$cbba], a
    ld a, [$c63c]
    ld [$cbbb], a
    ld a, [$c63d]
    ld [$cbbc], a
    ld a, [$cc49]
    cp $05
    ret nz

    ld a, [$cc4c]
    cp $9e
    ret nz

    ld a, $13
    ld [$cbbb], a
    ret


    ld a, [$c4ab]
    or a
    call z, Call_002_6020
    jp Jump_002_63d2


Call_002_6020:
    ld a, [$cbb3]
    cp $02
    jr nz, jr_002_6035

    ld a, [$c482]
    and $06
    jp nz, Jump_002_4f7b

    call Call_002_64eb
    jp Jump_002_62f6


jr_002_6035:
    ld a, [$cbb4]
    or a
    jr z, jr_002_603f

    dec a
    ld [$cbb4], a

jr_002_603f:
    call $1832
    ld hl, $6097
    call Call_002_582f
    jr nc, jr_002_6080

    ld c, a
    ld de, $f010
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_6057

    ld de, $700b

jr_002_6057:
    ld a, [$cbb6]
    ld l, a
    and $f0
    ld h, a
    ld a, l
    xor h
    ld l, a
    sra c
    jr c, jr_002_606f

    ld a, l

jr_002_6066:
    add c
    and $0f
    cp e
    jr nc, jr_002_6066

    ld l, a
    jr jr_002_6073

jr_002_606f:
    ld a, h
    add c
    and d
    ld h, a

jr_002_6073:
    ld a, h
    or l
    ld [$cbb6], a
    ld a, $84
    call $0c74
    jp Jump_002_612d


jr_002_6080:
    ld a, [$c482]
    bit 0, a
    jr nz, jr_002_608d

    and $06
    jp nz, Jump_002_4f7b

    ret


jr_002_608d:
    call $609b
    ld hl, $cbce
    inc [hl]
    jp $184b


    ld [bc], a
    cp $e1
    ld hl, $5dcd
    ld h, l
    jr nz, jr_002_60a2

    pop af
    ret


jr_002_60a2:
    ld c, $80
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_60ac

    ld c, $40

jr_002_60ac:
    ld a, [$cbb6]
    cp c
    ld a, $03
    jr c, jr_002_60b5

    xor a

jr_002_60b5:
    ld [$cbac], a
    ld a, $09
    ld [$cbae], a

Call_002_60bd:
    call Call_002_6545
    ld hl, $6a19
    jr nc, jr_002_60c8

    ld hl, $6b19

jr_002_60c8:
    ld b, $03
    rst AddAToHL
    ld c, [hl]
    bit 7, c
    ret z

    ld a, c
    and $07
    rst $00
    db $dd
    ld h, b
    db $ec
    ld h, b
    nop
    ld h, c
    ld [$1161], sp
    ld h, c
    ld a, $18
    call $30c7
    ld c, $17
    ret z

    ld a, [$c6e5]
    ld c, a
    ld b, $17
    ret


    ld a, c
    add a
    swap a
    and $0f
    ld c, a
    call Call_002_611a
    jr nz, jr_002_60fd

    ld a, [hl]
    and $7f
    ld c, a
    ret


jr_002_60fd:
    ld b, $02
    ret


    call Call_002_66b0
    ld c, $0b
    ret nz

    inc c
    ret


    ld a, [$c610]
    sub $0b
    add $08
    ld c, a
    ret


    call Call_002_66b5
    ld c, $21
    ret z

    ld c, $2c
    ret


Call_002_611a:
    push de
    ld hl, $6c3b
    rst JumpTable
    ld a, [hli]
    ld e, a
    bit 7, [hl]
    ld d, $c9
    jr nz, jr_002_6128

    inc d

jr_002_6128:
    ld a, [de]
    bit 4, a
    pop de
    ret


Call_002_612d:
Jump_002_612d:
    call Call_002_655d
    jr z, jr_002_614d

    ld hl, $6b71
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_613e

    ld hl, $6c10

jr_002_613e:
    ld a, [$cbb6]
    ld c, a

jr_002_6142:
    ld a, [hli]
    cp $ff
    jr z, jr_002_614d

    cp c
    ld a, [hli]
    jr nz, jr_002_6142

    jr jr_002_614e

jr_002_614d:
    xor a

jr_002_614e:
    ld d, a
    swap a
    call Call_002_619a
    ld [$cbbf], a
    ld a, d
    call Call_002_619a
    ld hl, $cbbe
    ld [hli], a
    or a
    jr nz, jr_002_6164

    ld a, [hl-]
    ld [hli], a

jr_002_6164:
    ld a, [hl-]
    or a
    jr nz, jr_002_616a

    ld a, [hli]
    ld [hl-], a

jr_002_616a:
    ld de, $8008
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_6176

    ld de, $4005

jr_002_6176:
    ld bc, $2080
    ld a, [$cbb6]
    cp d
    jr c, jr_002_6181

    ld b, $70

jr_002_6181:
    and $0f
    cp e
    jr c, jr_002_6188

    ld c, $20

jr_002_6188:
    ld hl, $cbbb
    ld a, [hl]
    ld [hl], b
    inc l
    sub b
    ld b, a
    ld a, [hl]
    ld [hl], c
    sub c
    or b
    ret z

    ld l, $b9
    ld [hl], $00
    ret


Call_002_619a:
    and $0f
    ld e, a
    rst $00
    cp [hl]
    ld h, c
    cp [hl]
    ld h, c
    ret nz

    ld h, c
    cp [hl]
    ld h, c
    cp [hl]
    ld h, c
    cp [hl]
    ld h, c
    cp [hl]
    ld h, c
    cp [hl]
    ld h, c
    rst $00
    ld h, c
    call nc, $e061
    ld h, c
    ld sp, $0a62
    ld h, d
    nop
    ld h, d
    dec de
    ld h, d
    or $61
    ld a, e
    ret


    call Call_002_66b5
    ret z

    ld a, $0e
    ret


    ld a, [$cbb6]
    call Call_002_60bd
    ld a, $02
    cp b
    jr nz, jr_002_6208

    ld a, e
    ret


    ld a, [$cbb6]
    call $3663
    bit 7, c
    jr nz, jr_002_6208

    ld a, e
    ret


    ld hl, $c700
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_61ec

    ld hl, $c800

jr_002_61ec:
    ld a, [$cbb6]
    rst AddAToHL
    bit 3, [hl]
    jr z, jr_002_6208

    ld a, e
    ret


    ld a, [$cbb6]
    call Call_002_65fe
    ret c

    inc hl
    ld a, [hl]
    ret


    call Call_002_66b0
    ld a, $0f
    ret z

    inc a
    ret


jr_002_6208:
    xor a
    ret


    ld e, $0c
    ld a, [$cbb6]
    cp $5e
    jr z, jr_002_6219

    inc e
    cp $e8
    jr z, jr_002_6219

    inc e

jr_002_6219:
    ld a, e
    ret


    ld e, $11
    ld a, [$cbb6]
    cp $28
    jr z, jr_002_622f

    inc e
    cp $08
    jr z, jr_002_622f

    inc e
    cp $0a
    jr z, jr_002_622f

    inc e

jr_002_622f:
    ld a, e
    ret


    call Call_002_66ab
    ld a, e
    ld hl, $624a
    jr z, jr_002_623d

    ld hl, $624e

jr_002_623d:
    ld a, [$cbb6]
    ld c, a

jr_002_6241:
    ld a, [hli]
    or a
    jr z, jr_002_6208

    cp c
    jr nz, jr_002_6241

    ld a, e
    ret


    xor $64
    ld [hl], h
    nop
    ld [c], a
    ld a, [c]
    nop

Call_002_6251:
    call Call_002_6282
    ld hl, $cbbb
    ld a, [hli]
    ld c, [hl]
    ld b, a
    ld a, [$cbbd]
    cp $04
    jr nz, jr_002_6276

    push bc
    ld a, [$cbc0]
    and $01
    ld hl, $cbbe
    rst AddAToHL
    ld a, [hl]
    ld hl, $68ef
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL
    call $0d3d
    pop bc

jr_002_6276:
    ld a, [$cbbd]
    ld hl, $6899
    rst AddAToHL
    ld a, [hl]
    rst AddAToHL
    jp $0d3d


Call_002_6282:
    ld de, $cbb9
    ld a, [de]
    rst $00
    adc a
    ld h, d
    xor h
    ld h, d
    add $62
    pop hl
    ld h, d
    call Call_002_62f0
    jr z, jr_002_629f

    ld a, $01
    ld [de], a
    ld e, $bd
    ld [de], a
    ld e, $ba
    inc a
    ld [de], a
    ret


jr_002_629f:
    xor a
    ld hl, $cbb9
    ld [hli], a
    ld [hli], a
    ld l, $bd
    ld [hl], a
    ld l, $c0
    ld [hl], a
    ret


    call Call_002_62f0
    jr z, jr_002_62d8

    ld l, $ba
    dec [hl]
    ret nz

    ld [hl], $02
    ld l, $bd
    inc [hl]
    ld a, [hl]
    cp $04
    ret c

    ld l, $ba
    ld [hl], $18
    ld l, $b9
    ld [hl], $02
    call Call_002_62f0
    jr z, jr_002_62d8

    ld l, $ba
    dec [hl]
    ret nz

    ld [hl], $18
    ld l, $c0
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


jr_002_62d8:
    ld h, d
    ld l, $b9
    ld [hl], $03
    ld l, $ba
    ld [hl], $01
    ld h, d
    ld l, $ba
    dec [hl]
    ret nz

    ld [hl], $02
    ld l, $bd
    ld a, [hl]
    dec a
    ld [hl], a
    ret nz

    jr jr_002_629f

Call_002_62f0:
    ld h, d
    ld l, $be
    ld a, [hli]
    or [hl]
    ret


Jump_002_62f6:
    ld a, [$cbce]
    rst $00
    cp $62
    xor h
    ld h, e
    call $0294
    bit 7, a
    jr z, jr_002_630b

    call Call_002_633f
    jr nz, jr_002_6312

    ret


jr_002_630b:
    bit 6, a
    ret z

    call Call_002_6378
    ret z

jr_002_6312:
    ld c, a
    ld a, b
    ld [$cbb5], a
    or a
    jr z, jr_002_6323

    ld a, [$cbb7]
    add c
    ld [$cbb7], a
    jr jr_002_632a

jr_002_6323:
    ld a, [$cbb7]
    sub c
    ld [$cbb7], a

jr_002_632a:
    ld a, c
    ld d, a
    call $01b7
    ld a, d
    add a
    add c
    inc a
    ld [$cbb4], a
    ld hl, $cbce
    inc [hl]
    ld a, $84
    jp $0c74


Call_002_633f:
    push de
    ld a, [$cc5c]
    dec a
    ld b, a
    ld a, [$cbb7]
    cp b
    jr z, jr_002_6372

    call Call_002_6462
    ld a, $01
    jr nz, jr_002_6373

    ld a, [$cbb7]
    ld c, a
    ld a, [$cc5c]
    dec a
    sub c
    ld c, a
    ld e, a
    ld d, $00

jr_002_635f:
    inc d
    ld a, e
    sub d
    ld hl, $00f8
    add l
    ld l, a
    ld b, [hl]
    ld a, [$cbba]
    and b
    ld a, d
    jr nz, jr_002_6373

    dec c
    jr nz, jr_002_635f

jr_002_6372:
    xor a

jr_002_6373:
    ld b, $01
    or a
    pop de
    ret


Call_002_6378:
    push de
    ld a, [$cbb7]
    or a
    jr z, jr_002_63a6

    call Call_002_6462
    ld a, $01
    jr nz, jr_002_63a7

    ld a, [$cbb7]
    ld e, a
    ld a, [$cc5c]
    dec a
    sub e
    ld c, e
    ld e, a
    ld d, $00

jr_002_6393:
    inc d
    ld a, e
    add d
    ld hl, $00f8
    add l
    ld l, a
    ld b, [hl]
    ld a, [$cbba]
    and b
    ld a, d
    jr nz, jr_002_63a7

    dec c
    jr nz, jr_002_6393

jr_002_63a6:
    xor a

jr_002_63a7:
    ld b, $00
    or a
    pop de
    ret


    ld hl, $cbb4
    dec [hl]
    jr nz, jr_002_63b7

    xor a
    ld [$cbce], a
    ret


jr_002_63b7:
    ld a, [$cbb5]
    or a
    ld a, $ff
    jr z, jr_002_63c1

    ld a, $01

jr_002_63c1:
    ld hl, $cbb8
    add [hl]
    ld [hl], a
    call Call_002_6791

Call_002_63c9:
    xor a
    ld [$cbea], a
    ld a, $0a
    jp $05b6


Call_002_63d2:
Jump_002_63d2:
    ld a, [$cbb3]
    cp $02
    jr nz, jr_002_63eb

    call Call_002_63fe
    call Call_002_64a3
    call Call_002_64f9
    call Call_002_6521
    call Call_002_648a
    jp Jump_002_646e


jr_002_63eb:
    call Call_002_6251
    call Call_002_657d
    call Call_002_6590
    ld a, [$cbc1]
    or a
    jp nz, Jump_002_65c0

    jp Jump_002_6612


Call_002_63fe:
    call Call_002_6443
    ld hl, $643e
    call nz, $0d3a
    call Call_002_644d
    ld hl, $6435
    call nz, $0d3a
    call Call_002_6456
    ld hl, $642c
    call nz, $0d3a
    call Call_002_6462
    ld hl, $6423
    call nz, $0d3a
    ret


    ld [bc], a
    ld a, [hl]
    stop
    inc bc
    ld a, [hl]
    jr jr_002_642d

    inc bc
    ld [bc], a

jr_002_642d:
    ld a, [hl]
    jr z, @+$06

    ld bc, $307e
    ld b, $01
    ld [bc], a
    sub b
    db $10
    ld [$9005], sp
    jr @+$0c

    dec b
    ld bc, $2890
    inc c
    dec b

Call_002_6443:
    ld a, [$cc55]
    ld hl, $c66e
    rst AddAToHL
    ld a, [hl]
    or a
    ret


Call_002_644d:
    ld hl, $c67a
    ld a, [$cc55]
    jp $0205


Call_002_6456:
    push hl
    ld hl, $c67c
    ld a, [$cc55]
    call $0205
    pop hl
    ret


Call_002_6462:
    push hl
    ld hl, $c67e
    ld a, [$cc55]
    call $0205
    pop hl
    ret


Jump_002_646e:
    ld a, [$cc55]
    ld hl, $6881
    rst JumpTable
    ld a, [$cbb7]
    swap a
    rrca
    add [hl]
    ld b, a
    ld c, $00
    ld hl, $6485
    jp $0d3d


    ld bc, $1e00
    add h
    inc b

Call_002_648a:
    call Call_002_6456
    ret z

    ld a, [$cc55]
    ld hl, $6882
    rst JumpTable
    ld b, [hl]
    ld c, $00
    ld hl, $649e
    jp $0d3d


    ld bc, $3800
    add d
    dec b

Call_002_64a3:
    ld a, [$cbb9]
    or a
    jr z, jr_002_64c4

    call Call_002_66bb
    ld hl, $cbb8
    ld a, b
    sub [hl]
    cp $12
    jr nc, jr_002_64c4

    inc a
    swap a
    rrca
    ld b, a
    swap c
    rrc c
    ld hl, $64e1
    call $0d3d

jr_002_64c4:
    ld a, [$cc55]
    ld hl, $6881
    rst JumpTable
    ld a, [$cbbc]
    ld c, a
    ld a, [$cc5c]
    dec a
    sub c
    swap a
    rrca
    add [hl]
    ld b, a
    ld c, $00
    ld hl, $64e6
    jp $0d3d


    ld bc, $5800
    add b
    nop
    ld bc, $2c00
    add b
    nop

Call_002_64eb:
    ld a, [$cc00]
    and $1f
    ret nz

    ld hl, $cbb9
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Call_002_64f9:
    ld a, [$cbce]
    or a
    ret nz

    ld a, [$cbb9]
    or a
    ret nz

    ld a, [$cbbb]
    and $f8
    ld b, a
    ld a, [$cbbb]
    and $07
    add a
    add a
    add a
    ld c, a
    ld hl, $6518
    jp $0d3d


    ld [bc], a
    inc [hl]
    ld d, h
    adc b
    inc b
    inc [hl]
    ld e, h
    adc b
    inc h

Call_002_6521:
    ld a, [$cbce]
    or a
    ret nz

    call Call_002_6378
    jr z, jr_002_6531

    ld hl, $653b
    call $0d3a

jr_002_6531:
    call Call_002_633f
    ret z

    ld hl, $6540
    jp $0d3a


    ld bc, $7424
    add [hl]
    dec b
    ld bc, $747c
    add [hl]
    ld b, l

Call_002_6545:
    ld a, [$cbb3]
    rrca
    ld a, [$cbb6]
    ret nc

    push bc
    ld b, a
    and $f0
    swap a
    ld c, a
    add a
    add a
    add c
    ld c, a
    ld a, b
    sub c
    pop bc
    scf
    ret


Call_002_655d:
    ld a, [$cbb6]

Call_002_6560:
    push hl
    ld h, a
    ld a, [$cbb3]
    rrca
    ld a, h
    ld hl, $c800
    jr c, jr_002_6577

    ld hl, $c700
    cp $c9
    jr nz, jr_002_6577

    ld hl, $c80b
    xor a

jr_002_6577:
    rst AddAToHL
    ld a, [hl]
    bit 4, a
    pop hl
    ret


Call_002_657d:
    ld a, [$cc00]
    and $20
    ret nz

    ld hl, $658b
    ld a, [$cbb5]
    jr @+$18

    ld bc, $0806
    ld c, $47

Call_002_6590:
    ld hl, $6598
    ld a, [$cbb6]
    jr @+$0b

    ld [bc], a
    inc c
    inc b
    adc b
    ld b, $0c
    inc c
    adc b
    ld h, $4f
    ld de, $0810
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_65ae

    ld de, $2820

jr_002_65ae:
    ld a, c
    and $f0
    srl a
    add d
    ld b, a
    ld a, c
    and $0f
    add a
    add a
    add a
    add e
    ld c, a
    jp $0d3d


Jump_002_65c0:
    ld de, $65f1
    ld hl, $cec0
    ld b, $05
    call $045b
    ld a, [$cc00]
    and $18
    rrca
    rrca
    ld l, $c3
    add [hl]
    ld [hl], a
    ld c, $00

jr_002_65d8:
    ld a, c
    call Call_002_65f6
    ld a, [hli]
    or a
    ret z

    push bc
    ld c, a
    call Call_002_6560
    jr z, jr_002_65ed

    ld a, c
    ld hl, $cec0
    call $65a1

jr_002_65ed:
    pop bc
    inc c
    jr jr_002_65d8

    ld bc, $080c
    db $10
    rlca

Call_002_65f6:
    ld c, a
    call Call_002_660c
    add a
    add c
    rst AddAToHL
    ret


Call_002_65fe:
    ld c, a
    call Call_002_660c

jr_002_6602:
    ld a, [hli]
    or a
    scf
    ret z

    cp c
    ret z

    inc hl
    inc hl
    jr jr_002_6602

Call_002_660c:
    push af
    ld hl, $6c4f
    pop af
    ret


Jump_002_6612:
    ld de, $666b
    ld hl, $cec0
    ld b, $05
    call $045b
    ld l, $c3
    ld a, [$cc00]
    add a
    swap a
    and $03
    add a
    add [hl]
    ld [hl], a
    ld a, [$cbb3]
    rrca
    ret c

    ld a, $4b
    call $1717
    ret nc

    ld bc, $0400

jr_002_6638:
    ld a, c
    add $4c
    call $1717
    jr c, jr_002_665e

    ld a, c
    ld hl, $c6e1
    call $0205
    jr nz, jr_002_665e

    push bc
    call $196b
    ld a, c
    jr z, jr_002_6652

    add $04

jr_002_6652:
    ld hl, $6663
    rst AddAToHL
    ld a, [hl]
    ld hl, $cec0
    call $65a1
    pop bc

jr_002_665e:
    inc c
    dec b
    jr nz, jr_002_6638

    ret


    or l
    dec e
    jp nz, $b5f4

    ld a, [hl]
    and a
    db $f4
    ld bc, $080c
    jr jr_002_6677

Call_002_6670:
    ld a, $04
    ldh [rSVBK], a
    ld de, $1010

jr_002_6677:
    ld hl, $d022
    ld a, [$cbb3]
    rrca
    jr nc, jr_002_6686

    ld de, $080b
    ld hl, $d0a4

jr_002_6686:
    ld b, $00

jr_002_6688:
    ld c, $00
    push de

jr_002_668b:
    ld a, b
    swap a
    add c
    call Call_002_6560
    jr nz, jr_002_669c

    ld [hl], $04
    set 2, h
    ld [hl], $0a
    res 2, h

jr_002_669c:
    inc hl
    inc c
    dec e
    jr nz, jr_002_668b

    pop de
    ld a, $20
    sub e
    rst AddAToHL
    inc b
    dec d
    jr nz, jr_002_6688

    ret


Call_002_66ab:
    ld a, $17
    jp $30c7


Call_002_66b0:
    ld a, $16
    jp $30c7


Call_002_66b5:
    ld a, [$c8af]
    and $10
    ret


Call_002_66bb:
    ld a, [$cbbc]
    ld b, a
    ld a, [$cc5c]
    dec a
    sub b
    ld h, a
    call $01b7
    ld a, h
    add a
    add c
    add $05
    ld b, a
    ld a, [$cbbb]
    and $f8
    swap a
    rlca
    ld c, a
    ld a, b
    add c
    ld b, a
    ld a, [$cbbb]
    and $07
    ld c, a
    ret


Call_002_66e1:
    ld a, $04
    ldh [rSVBK], a
    ld a, [$cc55]
    ld hl, $6875
    rst AddAToHL
    ld a, [hli]
    ld de, $d0a0
    call $0068
    ld a, [$cc5c]
    dec a
    ld c, a

jr_002_66f8:
    call Call_002_6462
    jr nz, jr_002_670b

    ld a, c
    ld hl, $00f8
    add l
    ld l, a
    ld a, [$cbba]
    and [hl]
    ld a, $20
    jr z, jr_002_6731

jr_002_670b:
    ld a, [$cc5d]
    add c
    ld hl, $685f
    rst JumpTable
    ld b, $02
    ld a, [hli]
    call Call_002_673a
    ld a, [hli]
    call Call_002_673a
    ld a, $9c
    call Call_002_673a
    inc e
    ld b, $04
    ld a, $aa
    call Call_002_673a
    ld a, $ab
    call Call_002_673a
    ld a, $1a

jr_002_6731:
    call $0068
    ld a, c
    dec c
    or a
    jr nz, jr_002_66f8

    ret


Call_002_673a:
    ld [de], a
    set 2, d
    ld a, b
    ld [de], a
    res 2, d
    inc de
    ret


Call_002_6743:
    ld de, $dc00
    ld a, $28
    call Call_002_6786
    ld a, [$cc5c]
    ldh [$8d], a

jr_002_6750:
    ldh a, [$8d]
    dec a
    call Call_002_6854
    call Call_002_6820
    ld a, $50
    jr z, jr_002_677a

    ld a, $40
    ldh [$8c], a

jr_002_6761:
    ld a, $02
    ldh [rSVBK], a
    ld a, [hli]
    ld c, a
    ld a, $04
    ldh [rSVBK], a
    ld a, c
    call Call_002_67da
    ld [de], a
    inc de
    ldh a, [$8c]
    dec a
    ldh [$8c], a
    jr nz, jr_002_6761

    ld a, $10

jr_002_677a:
    call Call_002_6786
    ldh a, [$8d]
    dec a
    ldh [$8d], a
    jr nz, jr_002_6750

    ld a, $18

Call_002_6786:
    push bc
    ld c, a
    ld a, $ad

jr_002_678a:
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_678a

    pop bc
    ret


Call_002_6791:
    ldh a, [rSVBK]
    push af
    ld a, [$cbb8]
    call $01b7
    ld hl, $dc00
    add hl, bc
    ld de, $d00a
    ld a, $12
    ldh [$8d], a

jr_002_67a5:
    ld c, $08

jr_002_67a7:
    ld a, $04
    ldh [rSVBK], a
    ld a, [hl]
    ld b, $00
    cp $83
    jr z, jr_002_67c4

    cp $ad
    jr z, jr_002_67c4

    ld b, $02
    cp $ae
    jr z, jr_002_67c4

    ld b, $04
    cp $af
    jr z, jr_002_67c4

    ld b, $05

jr_002_67c4:
    call Call_002_673a
    inc hl
    dec c
    jr nz, jr_002_67a7

    ld a, $18
    call $0068
    ldh a, [$8d]
    dec a
    ldh [$8d], a
    jr nz, jr_002_67a5

    pop af
    ldh [rSVBK], a

Call_002_67da:
    push bc
    push de
    ld b, a
    or a
    jr z, jr_002_6805

    push hl
    ld l, b
    ld a, [$cc59]
    ld h, a
    ld d, [hl]
    call $1a9d
    ld e, b
    pop hl
    ld a, e
    cp $60
    jr z, jr_002_6805

    cp $70
    jr z, jr_002_6805

    bit 4, d
    jr nz, jr_002_6812

    call Call_002_6833
    jr nz, jr_002_681d

    call Call_002_6462
    ld a, $af
    jr nz, jr_002_681d

jr_002_6805:
    ld a, $ac
    jr jr_002_681d

    call Call_002_6833
    jr nz, jr_002_681d

    ld a, $af
    jr jr_002_681d

jr_002_6812:
    call Call_002_6833
    jr nz, jr_002_681d

    ld a, d
    or e
    and $0f
    add $b0

jr_002_681d:
    pop de
    pop bc
    ret


Call_002_6820:
    call Call_002_6462
    ret nz

    push hl
    ldh a, [$8d]
    dec a
    ld hl, $00f8
    add l
    ld l, a
    ld a, [$cbba]
    and [hl]
    pop hl
    ret


Call_002_6833:
    call Call_002_6456
    ret z

    ld a, e
    ld c, $83
    and $70
    cp $40
    jr z, jr_002_6851

    cp $20
    jr z, jr_002_6848

    cp $30
    jr nz, jr_002_684f

jr_002_6848:
    ld c, $ae
    ld a, d
    and $20
    jr z, jr_002_6851

jr_002_684f:
    ld c, $00

jr_002_6851:
    ld a, c
    or a
    ret


Call_002_6854:
    call $01ac
    ld hl, $dc00
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ret


    sbc e
    sub e
    sbc e
    sub d
    sbc e
    sub c
    add b
    sub c
    add b
    sub d
    add b
    sub e
    add b
    sub h
    add b
    sub l
    add b
    sub [hl]
    add b
    sub a
    add b
    sbc b
    add b
    add b
    add b
    add b
    ld h, b
    add b
    ld b, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld d, b
    nop
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, b
    ld e, b
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld c, b
    ld d, b
    ld c, b
    ld d, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    dec b
    dec b
    add hl, bc
    ld de, $0031
    ld bc, $0408
    nop
    ld b, $02
    ld [$0200], sp
    ld b, $08
    ld [$2602], sp
    ld [$f800], sp
    inc b
    ld b, $00
    nop
    ld b, $06
    nop
    ld [$2606], sp
    nop
    db $10
    inc b
    ld h, $10
    ld hl, sp+$04
    ld b, [hl]
    stop
    ld b, $46
    db $10
    ld [$6606], sp
    db $10
    db $10
    inc b
    ld h, [hl]
    ld [$f800], sp
    ld [$0006], sp
    nop
    ld a, [bc]
    ld b, $00
    ld [$260a], sp
    nop
    db $10
    ld [$1026], sp
    ld hl, sp+$08
    ld b, [hl]
    stop
    ld a, [bc]
    ld b, [hl]
    db $10
    ld [$660a], sp
    db $10
    db $10
    ld [$1a66], sp
    ld a, [de]
    jr jr_002_6914

    add hl, hl
    ld sp, $4139
    ld c, c
    ld d, c
    ld e, c
    ld h, c
    ld l, c
    ld [hl], c
    ld a, c
    add c
    adc c
    sub c
    sbc c
    and c
    xor c
    or c
    cp c
    pop bc
    ret


    pop de
    nop
    ld [bc], a
    ld [$2200], sp
    dec b
    ld [$2208], sp
    dec h
    ld [bc], a

jr_002_6914:
    ld [$2c00], sp
    inc bc
    ld [$2e08], sp
    inc bc
    ld [bc], a
    ld [$2800], sp
    inc bc
    ld [$2a08], sp
    inc bc
    ld [bc], a
    ld [$3200], sp
    dec b
    ld [$3408], sp
    dec b
    ld [bc], a
    ld [$3600], sp
    dec b
    ld [$3608], sp
    dec h
    ld [bc], a
    ld [$4400], sp
    inc bc
    ld [$4608], sp
    inc bc
    ld [bc], a
    ld [$2000], sp
    inc bc
    ld [$2008], sp
    inc hl
    ld [bc], a
    ld [$2600], sp
    inc b
    ld [$2608], sp
    inc h
    ld [bc], a
    ld [$3000], sp
    ld [bc], a
    ld [$3008], sp
    ld h, d
    ld [bc], a
    ld [$4800], sp
    inc bc
    ld [$4a08], sp
    inc bc
    ld [bc], a
    ld [$2400], sp
    inc bc
    ld [$2408], sp
    inc hl
    ld [bc], a
    ld [$4000], sp
    nop
    ld [$4208], sp
    nop
    ld [bc], a
    ld [$5400], sp
    ld b, $08
    ld [$0656], sp
    ld [bc], a
    ld [$4c00], sp
    ld bc, $0808
    ld c, [hl]
    ld bc, $0802
    nop
    ld d, b
    ld bc, $0808
    ld d, d
    ld bc, $0802
    nop
    jr c, jr_002_6996

jr_002_6996:
    ld [$3808], sp
    jr nz, @+$04

    ld [$3a00], sp
    dec b
    ld [$3a08], sp
    dec h
    ld [bc], a
    ld [$3c00], sp
    inc b
    ld [$3c08], sp
    inc h
    ld [bc], a
    ld [$3e00], sp
    ld [bc], a
    ld [$3e08], sp
    ld [hli], a
    ld [bc], a
    ld [$5800], sp
    inc b
    ld [$5a08], sp
    inc b
    ld [bc], a
    ld [$5c00], sp
    inc b
    ld [$5e08], sp
    inc b
    ld [bc], a
    ld [$6000], sp
    inc b
    ld [$6208], sp
    inc b
    ld [bc], a
    ld [$6400], sp
    inc b
    ld [$6608], sp
    inc b
    ld [bc], a
    ld [$6800], sp
    inc b
    ld [$6a08], sp
    inc b
    ld [$120d], sp
    rla
    dec de
    dec de
    jr nz, @+$2c

    ld b, l
    xor b
    ret nc

    or [hl]
    ret nc

    nop
    ld b, l
    xor b
    ret nc

    cp e
    ret nc

    nop
    dec l
    rlca
    jp nc, $d213

    nop
    dec l
    dec c
    jp nc, $d213

    nop
    ld [hli], a
    ld [c], a
    ret nc

    db $f4
    ret nc

    nop
    ld hl, $d1e4
    cp $d1
    ld de, $d1f0
    rst $38
    pop de
    nop
    ld hl, $d168
    ld a, b
    pop de
    nop
    or c
    dec hl
    dec hl
    ret


    inc bc
    inc bc
    inc bc
    inc bc
    jr jr_002_6a27

    inc b
    dec b
    dec b
    dec b

jr_002_6a27:
    dec b
    dec b
    dec hl
    dec hl
    dec hl
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    and c
    dec b
    dec b
    dec hl
    dec hl
    dec hl
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec hl
    dec hl
    dec hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec c
    dec c
    ld b, $06
    dec hl
    dec hl
    inc bc
    inc bc
    add e
    add e
    add e
    add e
    add e
    dec b
    dec b
    add hl, de
    dec c
    dec c
    ld b, $06
    dec hl
    dec hl
    rlca
    add e
    add e
    add e
    add e
    add e
    add e
    add d
    add d
    ld a, [de]
    dec de
    dec c
    sbc c
    ld c, $1c
    dec hl
    rlca
    rlca
    rrca
    rrca
    rrca
    add e
    add e
    add d
    add d
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $07
    rlca
    rlca
    rrca
    rrca
    dec e
    add e
    add e
    add d
    ld de, $1111
    ld e, $0e
    ld c, $0e
    rlca
    rlca
    rlca
    rrca
    rrca
    add hl, hl
    db $10
    xor c
    ld de, $9111
    ld de, $0e11
    ld c, $0e
    rlca
    rlca
    rlca
    adc c
    rrca
    rrca
    db $10
    db $10
    ld de, $1111
    ld de, $0e11
    ld c, $0e
    rra
    rlca
    rlca
    rrca
    rrca
    rrca
    db $10
    db $10
    ld de, $1111
    ld de, $0e11
    ld c, $0e
    rlca
    rlca
    rlca
    jr nz, jr_002_6ae0

    db $10
    db $10
    db $10
    ld de, $1611
    ld d, $16
    ld c, $0e
    ld c, $13
    inc de
    add h
    ld a, [hli]

jr_002_6ae0:
    ld a, [hli]
    ld [hli], a
    add b
    inc d
    inc d
    inc d
    ld d, $16
    ld d, $b9
    ld [de], a
    inc de
    inc de
    add c
    inc de
    ld a, [hli]
    inc hl
    ld a, [hli]
    ld a, [hli]
    inc h
    inc d
    ld d, $16
    ld d, $16
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    dec h
    ld a, [hli]
    ld h, $2a
    inc d
    inc d
    ld d, $16
    ld d, $16
    inc de
    inc de
    inc de
    inc de
    inc de
    ld a, [hli]
    daa
    ld a, [hli]
    ld a, [hli]
    jr z, @+$17

    dec d
    dec d
    ld d, $16
    ld d, $c1
    jr nc, jr_002_6b4c

    jr nc, jr_002_6b4e

    jr nc, jr_002_6b50

    ld sp, $3139
    ld a, [hl-]
    jr nc, jr_002_6b56

    jr nc, jr_002_6b58

    jr nc, jr_002_6b5a

    jr nc, jr_002_6b5d

    ld sp, $3131
    jr nc, jr_002_6b61

    dec a
    jr nc, jr_002_6b72

    ld [hl-], a
    ld [hl-], a
    ld sp, $3138
    dec sp
    scf
    scf
    ld [hl-], a
    ccf
    ld [hl-], a
    ld [hl-], a

jr_002_6b40:
    ld [hl-], a
    ld sp, $3131
    ld sp, $3737
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc a
    ld [hl-], a

jr_002_6b4c:
    ld [hl-], a
    ld [hl-], a

jr_002_6b4e:
    ld b, b
    ld [hl-], a

jr_002_6b50:
    inc sp
    inc sp
    ld b, c
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_002_6b56:
    ld [hl-], a
    ld [hl-], a

jr_002_6b58:
    ld [hl-], a
    ld [hl-], a

jr_002_6b5a:
    ld b, e
    inc sp
    inc sp

jr_002_6b5d:
    inc [hl]
    inc [hl]
    dec [hl]
    dec [hl]

jr_002_6b61:
    dec [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $33
    inc sp
    ld b, d
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $d4

jr_002_6b72:
    adc b
    sub [hl]
    adc b
    adc l
    adc b
    ld h, b
    adc b
    dec e
    jr c, @-$74

    adc b
    nop
    adc b
    ret nc

    adc b
    inc bc
    adc b
    db $10
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    ld [hl], d
    rst $38
    sbc [hl]
    rst $38
    ld hl, sp-$01
    inc b
    xor d
    ld [$1177], sp
    inc sp
    ld e, $aa
    rra
    sbc c
    ld [hli], a
    sbc c
    inc h
    inc sp
    dec h
    xor d
    ld h, $33
    ld l, $33
    ld [hl-], a
    inc sp
    jr c, jr_002_6b40

    dec sp
    sbc c
    ccf
    sbc c
    ld b, d
    inc sp
    ld b, h
    sbc c
    ld c, l
    ld de, $334e
    ld d, e
    inc sp
    ld e, e
    db $dd
    ld e, [hl]
    call z, $1162
    ld [hl], b
    inc sp
    ld [hl], l
    sbc c
    ld a, b
    ld de, $337c
    ld a, [hl]
    inc sp
    ld a, a

jr_002_6bc6:
    ld de, $9980
    adc b
    ld de, $9989
    adc [hl]
    inc sp
    sub e
    inc sp
    sub l
    sbc c
    sbc b
    inc sp
    sbc c
    inc sp
    sbc d
    xor d
    sbc e
    inc sp
    and e
    ld de, $99a6
    xor d
    xor d
    xor h
    sbc c
    xor [hl]
    inc sp

jr_002_6be5:
    or b
    xor d
    or [hl]
    ld de, $aab9
    push bc
    ld hl, $91c8
    ret


    ld b, h
    ret nz

    sbc c
    jp nc, $d733

    ld de, $11da
    ld [c], a
    cp e
    and $cc
    add sp, -$34
    db $eb
    inc sp
    xor $bb
    rst $28
    sbc c
    ldh a, [$99]
    ld a, [c]
    cp e
    or $11
    rst $30
    and e
    ld sp, hl
    ld de, $00ff
    adc b
    dec b
    xor d
    ld [$0aee], sp
    xor $13
    xor d
    jr nz, jr_002_6bc6

    ld [hli], a
    ld d, l
    inc h
    ld d, l
    jr z, @-$10

    ld a, [hli]
    xor $33
    ld d, l
    ld b, l
    ld h, [hl]
    ld c, c
    ld d, l
    ld c, d
    xor d
    ld d, d
    ld de, $aa53
    ld d, a
    xor d
    ld e, d
    ld de, $bb64
    ld [hl], d
    and l
    ld [hl], h
    cp e
    rst $38
    inc b
    sub e
    inc e
    adc a
    add hl, sp
    sub c
    ld c, e
    adc [hl]
    add c
    add l
    and a
    sub b
    cp d
    xor e
    ld e, e
    ld [de], a
    add a
    jr nc, jr_002_6be5

    ld [bc], a
    db $10
    inc [hl]
    jr @+$61

    ld b, e
    jr @+$69

    inc hl
    ld d, $72
    ld b, h
    rla
    sbc [hl]
    ld b, l
    add hl, de
    ld hl, sp+$33
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    call function_047b
    ld a, $10
    ldh [$9d], a
    ld hl, $cbae
    set 0, [hl]
    ld a, $04
    ldh [rSVBK], a
    call Call_002_6c82
    ld a, [$cbd3]
    or a
    ret nz

    jp $1a62


Call_002_6c82:
    ld a, [$cbcd]
    rst $00
    adc h
    ld l, h
    ld c, $6d
    jp z, $cd6f

    ld e, [hl]
    ld a, [de]
    xor a
    ld [$cbba], a
    dec a
    ld [$cbbb], a
    ld a, $80
    ld [$cbbe], a
    ld a, [$cbd3]
    add $3a
    call function_0602
    ld a, $0a
    call $04e7
    ld hl, $4675
    ld e, $3f
    call $008a
    call Call_002_7154
    call Call_002_6cd9
    ld hl, $cbcd
    inc [hl]
    call $3168
    ld a, $05
    ldh [$9b], a
    ld a, [$cbd3]
    add $0f
    jp function_02ea


Call_002_6cca:
Jump_002_6cca:
    ld hl, $cbd3
    ld a, [$cbba]
    and $01
    add a
    add [hl]
    add $12
    jp $05b6


Call_002_6cd9:
    xor a
    call Call_002_5500
    ld hl, $6cca
    push hl
    ld a, [$cbd3]
    rst $00
    add [hl]
    ld [hl], c
    jp hl


    ld l, h
    ld a, [$cbcd]
    or a
    jr nz, jr_002_6cfe

    ld a, [$c6c6]
    inc a
    call Call_002_5dc2
    ld de, $d201
    ld a, $fe
    call $722f

jr_002_6cfe:
    call Call_002_71c8
    ld a, $04
    ld [$cbb5], a
    ld a, $fe
    ld [$cbbf], a
    jp Jump_002_719e


    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cbd3]
    rst $00
    dec de
    ld l, l
    ld [hl], c
    ld l, [hl]
    call Call_002_70a6
    ld a, [$cbce]
    rst $00
    ld l, $6d
    ld l, [hl]
    ld l, l
    cp b
    ld l, l
    jp z, $ff6d

    ld l, l
    ld d, c
    ld l, [hl]
    ld a, [$cba0]
    or a
    ld a, $04
    call z, Call_002_728e
    ld a, [$c482]
    bit 1, a
    jr nz, jr_002_6d4a

    bit 0, a
    jr nz, jr_002_6d55

    bit 2, a
    jp nz, Jump_002_6f9b

    jp Jump_002_704f


jr_002_6d4a:
    call Call_002_6e5a
    ld a, $12
    jp z, Jump_002_728e

    jp Jump_002_4f7b


jr_002_6d55:
    call Call_002_716c
    call Call_002_6e5f
    rlca
    ret c

    ld a, $01
    ld [$cbce], a
    call Call_002_6e5a
    ld a, $11
    jr z, jr_002_6d6b

    ld a, $05

jr_002_6d6b:
    jp Jump_002_728e


    call Call_002_72a4
    ld a, [$cba5]
    or a
    jr nz, jr_002_6db0

    call Call_002_6e5a
    jr z, jr_002_6d8b

    ld a, $05
    call $1739
    ld b, $06
    jp nz, Jump_002_6e36

    ld a, $05
    call $1751

jr_002_6d8b:
    ld hl, $c6c8
    call $0245
    call Call_002_6e5f
    res 6, [hl]
    ld a, [hl]
    ld [$cbc2], a
    add $40
    ld [$cbb1], a
    ld bc, $301c
    call Call_002_6e44
    ld a, $02
    ld [$cbce], a
    call Call_002_7186
    jp Jump_002_6cca


Jump_002_6db0:
jr_002_6db0:
    xor a
    ld [$cbce], a
    ld [$cba0], a
    ret


    call Call_002_72a4
    ld a, $03
    ld [$cbce], a
    call Call_002_6e5f
    add $80
    ld c, a
    ld b, $30
    jr jr_002_6e44

    call Call_002_72a4
    call Call_002_6e5f
    ld c, a
    ld [hl], $ff
    ld hl, $c616
    call $0205
    jr nz, jr_002_6de4

    ld a, c
    call $020e
    xor a
    ld b, $17
    jr jr_002_6de8

jr_002_6de4:
    ld a, $07
    ld b, $07

jr_002_6de8:
    ld [$cbb9], a
    call Call_002_6e5a
    jp z, Jump_002_4f7b

    ld a, $28
    ld [$cbc2], a
    ld a, $04
    ld [$cbce], a
    ld a, b
    jp Jump_002_728e


    call Call_002_72a4
    call Call_002_6e68
    ld a, [$cbb9]
    or a
    ld c, a
    ld a, $28
    call nz, $16eb
    ld hl, $469d
    ld e, $3f
    call $008a
    call Call_002_7186
    call Call_002_6cca
    ld a, [$c6c8]
    cp $64
    jr nz, jr_002_6e2d

    ld a, $09
    call $30cd
    ld b, $3c
    jr jr_002_6e36

jr_002_6e2d:
    ld a, [$c6c7]
    or a
    jp nz, Jump_002_6db0

    ld b, $02

Jump_002_6e36:
jr_002_6e36:
    ld a, $05
    ld [$cbce], a
    ld a, $3c
    ld [$cbc2], a
    ld a, b
    jp Jump_002_728e


Call_002_6e44:
jr_002_6e44:
    ld a, $02
    ld [$cbac], a
    ld a, $09
    ld [$cbae], a
    jp $184b


    call Call_002_72a4
    call Call_002_6e68
    jp Jump_002_4f7b


Call_002_6e5a:
    ld a, $08
    jp $30c7


Call_002_6e5f:
    ld a, [$cbb3]
    ld hl, $c5c0
    rst AddAToHL
    ld a, [hl]
    ret


Call_002_6e68:
    ld hl, $cbc2
    ld a, [hl]
    or a
    ret z

    dec [hl]
    pop af
    ret


    call Call_002_7102
    call $70dd
    call Call_002_7120
    ld a, [$cbce]
    rst $00
    add d
    ld l, [hl]
    reti


    ld l, [hl]
    ld a, [$cbbe]
    or a
    jr z, jr_002_6eaf

    ld hl, $cbc1
    ld a, [hl]
    or a
    jr z, jr_002_6e92

    dec [hl]
    jr jr_002_6ea3

jr_002_6e92:
    ld a, [$cbbd]
    ld hl, $c6c0
    rst AddAToHL
    ld a, [hl]
    ld [$cbb3], a
    call Call_002_726e
    call Call_002_6ef9

jr_002_6ea3:
    ld a, [$c482]
    bit 1, a
    jr nz, jr_002_6ec2

    bit 0, a
    jp z, $708a

jr_002_6eaf:
    xor a
    ld [$cbbe], a
    inc a
    ld [$cbce], a
    ld a, $80
    ld [$cbbf], a
    ld a, $ff
    ld [$cbc0], a
    ret


jr_002_6ec2:
    ld a, [$c6c5]
    call Call_002_6f87
    jr nc, jr_002_6ecf

    ld a, $ff
    ld [$c6c5], a

jr_002_6ecf:
    xor a
    ld [$cba0], a
    ld [$cbae], a
    jp Jump_002_4f7b


    ld a, [$c482]
    bit 0, a
    jr nz, jr_002_6f45

    bit 1, a
    jp nz, Jump_002_6f6d

    bit 2, a
    jp nz, Jump_002_6f9b

    call Call_002_704f
    call Call_002_716c
    call Call_002_726b
    call Call_002_70a6
    call Call_002_6e68

Call_002_6ef9:
    ld a, [$cbb3]
    ld c, a
    ld hl, $c616
    call $0205
    jr z, jr_002_6f08

    ld a, c
    or $80

jr_002_6f08:
    ld hl, $cbbb
    cp [hl]
    jr z, jr_002_6f17

    call Call_002_5500
    ld a, $01
    ld [$cbc1], a
    ret


jr_002_6f17:
    ld a, [$cbb3]
    ld c, a
    cp $ff
    ld a, $c0
    jr z, jr_002_6f2f

    ld a, c
    ld hl, $c616
    call $0205
    ld a, $c0
    jr z, jr_002_6f2f

    ld a, c
    add $80

jr_002_6f2f:
    ld hl, $cbc0
    cp [hl]
    ret z

    ld [hl], a
    ld c, a
    ld b, $30
    ld a, $04
    ld [$cbac], a
    ld a, $09
    ld [$cbae], a
    jp $1847


jr_002_6f45:
    ld a, $56
    call $0c74
    call Call_002_716c
    ld c, a
    ld hl, $c616
    call $0205
    jr nz, jr_002_6f58

    ld c, $ff

jr_002_6f58:
    ld a, [$cbbd]
    ld b, a
    ld a, c
    call Call_002_6f87
    jr c, jr_002_6f67

    ld [hl], $ff
    cp b
    jr z, jr_002_6f6d

jr_002_6f67:
    ld a, b
    ld hl, $c6c0
    rst AddAToHL
    ld [hl], c

Jump_002_6f6d:
jr_002_6f6d:
    xor a
    ld [$cbce], a
    ld a, $80
    ld [$cbbe], a
    ld a, $ff
    ld [$cba0], a
    ld [$cbbb], a
    ld [$cbc0], a
    call Call_002_71c8
    jp Jump_002_6cca


Call_002_6f87:
    push bc
    ld hl, $c6c4
    ld b, $05

jr_002_6f8d:
    cp [hl]
    jr z, jr_002_6f97

    dec l
    dec b
    jr nz, jr_002_6f8d

    pop bc
    scf
    ret


jr_002_6f97:
    dec b
    ld a, b
    pop bc
    ret


Jump_002_6f9b:
    ld a, $01
    ld [$cbbc], a
    ld [$cbbf], a
    xor a
    ld [$cbb4], a
    ld a, [$cbb6]
    inc a

Call_002_6fab:
    ld hl, $cbb5
    cp [hl]
    jr c, jr_002_6fb6

    ld a, $01
    cp [hl]
    ret z

    dec a

jr_002_6fb6:
    ld [$cbb6], a
    ld a, $02

Jump_002_6fbb:
    ld hl, $cbcd
    ld [hli], a
    xor a
    ld [hl], a
    ld [$cba0], a
    ld a, $ff
    ld [$cbc0], a
    ret


    ld a, [$cbd3]
    or a
    jr z, jr_002_6fd6

    call Call_002_7102
    call $70dd

jr_002_6fd6:
    ld a, [$cbce]
    rst $00
    sbc $6f
    dec bc
    ld [hl], b
    ld hl, $cbba
    ld a, [hl]
    xor $01
    ld [hl], a
    call Call_002_6cd9
    ld a, [$cbbc]
    bit 7, a
    ld a, $9f
    jr z, jr_002_6fff

    ld hl, $c48b
    ld a, [hl]
    xor $48
    ld [hl], a
    ld a, $98
    ld [$c48d], a
    ld a, $07

jr_002_6fff:
    ld [$c48f], a
    ld hl, $cbce
    inc [hl]
    ld a, $54
    jp $0c74


    ld bc, $089f
    ld hl, $c48f
    ld de, $c48d
    ld a, [$cbbc]
    bit 7, a
    jr z, jr_002_702a

    ld a, [hl]
    add b
    cp c
    jr c, jr_002_7021

    ld a, c

jr_002_7021:
    ld [hl], a
    ld a, [de]
    sub b
    ld [de], a
    cp $08
    ret nc

    jr jr_002_7041

jr_002_702a:
    ld a, [hl]
    sub b
    cp $07
    jr nc, jr_002_7032

    ld a, $07

jr_002_7032:
    ld [hl], a
    ld a, [de]
    add b
    ld [de], a
    cp $98
    ret c

    ld a, [$c48b]
    xor $48
    ld [$c48b], a

jr_002_7041:
    ld a, $c7
    ld [$c48f], a
    xor a
    ld [$c48d], a
    ld a, $01
    jp Jump_002_6fbb


Call_002_704f:
Jump_002_704f:
    ld hl, $7086
    call Call_002_582f
    ret nc

    ld c, a
    ld hl, $cbb4
    ld e, a
    add [hl]
    ld b, a
    and $0f
    ld [hl], a
    bit 0, c
    jr z, jr_002_707f

    bit 4, b
    jr z, jr_002_707f

    ld a, e
    ld [$cbbc], a
    ld a, [$cbb6]
    add e
    cp $ff
    jr nz, jr_002_707c

    ld a, [$cbb5]
    cp $01
    jr z, jr_002_707f

    dec a

jr_002_707c:
    call Call_002_6fab

jr_002_707f:
    ld a, $84
    call $0c74
    scf
    ret


    ld bc, $f8ff
    ld [$a8cd], sp
    ld e, h
    ld e, a
    ld hl, $70a2
    call Call_002_582f
    ret nc

    ret z

    ld hl, $cbbd
    add [hl]
    cp e
    ret nc

    ld [hl], a
    ld a, $84
    jp $0c74


    ld bc, $00ff
    nop

Call_002_70a6:
    ld a, [$cbb5]
    dec a
    ld hl, $70d4
    call nz, $0d3a
    ld hl, $cbb8
    inc [hl]
    bit 3, [hl]
    ret nz

    ld bc, $3e20
    ld a, [$cbb4]
    cp $08
    jr c, jr_002_70c3

    ld b, $56

jr_002_70c3:
    and $07
    swap a
    add c
    ld c, a
    ld hl, $70cf
    jp $0d3d


    ld bc, $fc00
    ld c, $02
    ld [bc], a
    inc a
    inc c
    ld [$3c04], sp
    sbc h
    ld [$fa24], sp
    push bc
    add $fe
    rst $38
    ret z

    call Call_002_6f87
    ret c

    call Call_002_70f5
    ld hl, $70f0
    jp $0d3d


    ld bc, $0010
    db $ec
    inc b

Call_002_70f5:
    ld hl, $70fd
    rst AddAToHL
    ld c, [hl]
    ld b, $00
    ret


    jr c, jr_002_714f

    ld l, b
    add b
    sbc b

Call_002_7102:
    ld hl, $cbbe
    bit 7, [hl]
    jr z, jr_002_710f

    inc [hl]
    res 4, [hl]
    bit 3, [hl]
    ret nz

jr_002_710f:
    ld a, [$cbbd]
    call Call_002_70f5
    ld hl, $711b
    jp $0d3d


    ld bc, $fc1e
    ld c, $03

Call_002_7120:
    ld a, $05

jr_002_7122:
    push af
    ld hl, $c6bf
    rst AddAToHL
    ld a, [$cbb6]
    swap a
    ld c, a
    ld a, [hl]
    cp $ff
    jr z, jr_002_714a

    sub c
    cp $10
    jr nc, jr_002_714a

    ld b, $30
    bit 3, a
    jr z, jr_002_713f

    ld b, $48

jr_002_713f:
    and $07
    swap a
    ld c, a
    ld hl, $714f
    call $0d3d

jr_002_714a:
    pop af
    dec a
    jr nz, jr_002_7122

    ret


jr_002_714f:
    ld bc, $2000
    rst $28
    dec b

Call_002_7154:
    ld hl, $469d
    ld e, $3f
    call $008a
    ld a, [$c6c7]
    or a
    ret z

    ld a, b
    dec a
    swap a
    and $0f
    inc a
    ld [$cbb5], a
    ret


Call_002_716c:
    ld a, [$cbb6]
    swap a
    ld c, a
    ld a, [$cbb4]
    add c
    ld [$cbb3], a
    ret


Call_002_717a:
    ld hl, $d040
    ld bc, $0514
    ld de, $0007
    jp Jump_002_5cbb


Call_002_7186:
    call Call_002_717a
    ld b, $10
    ld a, [$cbb6]
    swap a
    ld hl, $c5c0
    rst AddAToHL

jr_002_7194:
    ld a, [hli]
    ld c, a
    call Call_002_71f4
    dec b
    jr nz, jr_002_7194

    jr jr_002_71b7

Jump_002_719e:
    call Call_002_717a
    ld b, $10
    ld a, [$cbb6]
    swap a
    ld c, a

jr_002_71a9:
    ld a, c
    ld hl, $c616
    call $0205
    call nz, Call_002_71f4
    inc c
    dec b
    jr nz, jr_002_71a9

jr_002_71b7:
    ld hl, $d10f
    ld a, [$cbb6]
    add $11
    ld [hli], a
    inc l
    ld a, [$cbb5]
    add $10
    ld [hl], a
    ret


Call_002_71c8:
    ld hl, $c6c0
    ld b, $11

jr_002_71cd:
    ld a, [hli]
    cp $ff
    jr nz, jr_002_71e9

    push hl
    push bc
    ld a, b
    ld hl, $7203
    rst JumpTable
    ld a, [hli]
    ld h, [hl]
    ld l, a
    ld bc, $0202
    ld de, $0007
    call Call_002_5cbb
    pop bc
    pop hl
    jr jr_002_71ed

jr_002_71e9:
    ld c, a
    call Call_002_71f4

jr_002_71ed:
    inc b
    ld a, l
    cp $c5
    jr c, jr_002_71cd

    ret


Call_002_71f4:
    push bc
    push hl
    ld a, b
    ld hl, $7203
    rst JumpTable
    ld a, [hli]
    ld d, [hl]
    ld e, a
    ld a, c
    call $722f
    pop hl
    pop bc
    ret


    or b
    ret nc

    xor [hl]
    ret nc

    xor h
    ret nc

    xor d
    ret nc

    xor b
    ret nc

    and [hl]
    ret nc

    and h
    ret nc

    and d
    ret nc

    ld d, b
    ret nc

    ld c, [hl]
    ret nc

    ld c, h
    ret nc

    ld c, d
    ret nc

    ld c, b
    ret nc

    ld b, [hl]
    ret nc

    ld b, h
    ret nc

    ld b, d
    ret nc

    dec b
    jp nc, $d208

    dec bc
    jp nc, $d20e

    ld de, $fed2
    rst $38
    ret z

    bit 6, a
    jr z, jr_002_7243

    cp $fe
    ld a, $40
    jr nz, jr_002_7243

    ld a, [$c6c6]
    add $40
    jr jr_002_7243

jr_002_7243:
    call $01b7
    ld hl, $57a0
    add hl, bc
    push de
    call $1abd
    pop hl
    ld de, $cec0
    call Call_002_7260
    inc l
    call Call_002_7260
    ld a, $1f
    rst AddAToHL
    call Call_002_7260
    inc l

Call_002_7260:
    ld a, [de]
    ld [hl], a
    inc e
    set 2, h
    ld a, [de]
    ld [hl], a
    inc e
    res 2, h
    ret


Call_002_726b:
    ld a, [$cbb4]

Call_002_726e:
    ld hl, $cbbf
    cp [hl]
    ret z

    ld [hl], a
    ld a, [$cbb3]
    inc a
    jr z, jr_002_7283

    call $0259
    set 4, a
    set 4, c
    jr jr_002_7286

jr_002_7283:
    ld a, $e8
    ld c, a

jr_002_7286:
    ld hl, $d105
    ld [hl-], a
    ld [hl], c
    jp Jump_002_6cca


Call_002_728e:
Jump_002_728e:
    ld hl, $cbc0
    cp [hl]
    ret z

    ld [hl], a
    ld c, a
    ld b, $30
    ld a, $02
    ld [$cbac], a
    ld a, $09
    ld [$cbae], a
    jp $1847


Call_002_72a4:
    ld a, [$cba0]
    and $7f
    ret z

    pop af
    ret


Call_002_72ac:
    ld a, [$cbb4]
    or a
    ret


    ld a, $00   ; xor a
    ldh [rSVBK], a
    call Call_002_72bb
    jp Jump_002_7386


Call_002_72bb:
    ld a, [$cbb3]
    rst $00
    push bc
    ld [hl], d
    ld [hli], a
    ld [hl], e
    ld l, b
    ld [hl], e
    call function_02c1
    call $1826
    ld a, $a0
    call function_0602
    ld a, $a6
    call function_0602
    ld a, $a8
    call function_0602
    call Call_002_72ac
    jr z, jr_002_7307

    call $0c8e
    ld a, $e8
    call $0877
    ld hl, $c61e
    ld bc, $0001
    call $0181
    cp $0a
    jr c, jr_002_72f9

    ld [hl], $99
    inc l
    ld [hl], $09

jr_002_72f9:
    ld a, $a9
    call function_0602
    ld a, $09
    call $0c74
    ld a, $06
    jr jr_002_730d

jr_002_7307:
    xor a
    call $0c89
    ld a, $05

jr_002_730d:
    call $04e7
    ld a, $08
    call $05b6
    call $3168
    ld a, $01
    ld [$cbb3], a
    ld a, $05
    jp function_02ea


    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$c482]
    ld c, $ff
    bit 6, a
    jr nz, jr_002_7353

    ld c, $01
    bit 7, a
    jr nz, jr_002_7353

    bit 1, a
    jr nz, jr_002_7361

    and $09
    ret z

    ld a, [$cbb5]
    or a
    call nz, $09b4
    ld a, $02
    ld [$cbb3], a
    ld a, $1e
    ld [$cbb6], a
    ld a, $56
    jp $0c74


jr_002_7353:
    ld hl, $cbb5
    ld a, [hl]
    add c
    cp $03
    ret nc

    ld [hl], a
    ld a, $84
    jp $0c74


jr_002_7361:
    call Call_002_72ac
    ret nz

    jp Jump_002_4f7b


    ld hl, $cbb6
    dec [hl]
    ret nz

    ld a, [$cbb5]
    cp $02
    jp z, $0169

    call Call_002_72ac
    jp z, Jump_002_4f7b

    ld a, $e8
    ld bc, $3248
    call $087f
    jp $08be


Jump_002_7386:
    call Call_002_4c97
    ld a, [$cbb6]
    and $04
    ret nz

    ld c, a
    ld a, [$cbb5]
    ld b, a
    add a
    add b
    swap a
    rrca
    ld b, a
    ld hl, $73a0
    jp $0d3d


    ld bc, $2948
    jr z, @+$06

    call function_047b
    ld a, $07
    ldh [rSVBK], a
    call Call_002_73b2
    jp Jump_002_745d


Call_002_73b2:
    ld a, [$cbb3]
    rst $00
    cp h
    ld [hl], e
    push af
    ld [hl], e
    ld b, l
    ld [hl], h
    call function_02c1
    call $1826
    ld a, $01
    ld [$cbb3], a
    call Call_002_73e8
    xor a
    call Call_002_73e8
    ld a, $05
    call function_0602
    ld a, $3f
    call $04e7
    call Call_002_74dc
    ld a, $ff
    call Call_002_7475
    call $3168
    ld a, $16
    jp function_02ea


Call_002_73e8:
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $1000
    ld a, $ff
    jp $0452


    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$c482]
    and $0e
    jp nz, Jump_002_4f7b

    call $0294
    ld c, a
    ld hl, $cbb5
    ld a, [hli]
    ld b, a
    ld a, $ff
    bit 6, c
    jr nz, jr_002_7417

    bit 7, c
    jr z, jr_002_7440

    ld a, $01

jr_002_7417:
    add [hl]
    cp b
    jr nc, jr_002_7440

    ld [hli], a
    sub [hl]
    cp $01
    jr c, jr_002_742f

    cp $03
    jr c, jr_002_743b

    ld a, [hli]
    sub b
    cp $fc
    jr nc, jr_002_743b

    ld a, $02
    jr jr_002_7435

jr_002_742f:
    ld a, [hli]
    or a
    jr z, jr_002_743b

    ld a, $fe

jr_002_7435:
    ld [$cbb8], a
    ld l, $b3
    inc [hl]

jr_002_743b:
    ld a, $84
    call $0c74

jr_002_7440:
    ld a, [$cbb6]
    jr jr_002_7475

    ld hl, $cbb8
    ld a, [$c48c]
    add [hl]
    ld [$c48c], a
    and $0f
    ret nz

    ld a, [hl]
    sra a
    ld l, $b7
    add [hl]
    ld [hl], a
    ld l, $b3
    dec [hl]
    ret


Jump_002_745d:
    ld a, [$c48c]
    ld b, a
    ld a, [$cbb6]
    swap a
    sub b
    ld b, a
    ld c, $00
    ld hl, $7470
    jp $0d3d


    ld bc, $145a
    inc c
    inc h

Call_002_7475:
jr_002_7475:
    ld hl, $cbb9
    cp [hl]
    ret z

    ld [hl], a
    push af
    ld hl, $d800
    ld bc, $0300
    call function_0451
    ld hl, $d460
    ld b, $18
    call $044b
    pop af
    cp $ff
    jr z, jr_002_74b5

    call Call_002_751d
    ld a, [hli]
    rlca
    rlca
    and $03
    ld b, a
    ld a, [hli]
    ld c, [hl]
    call $30c7
    ld a, $ff
    ld [$cbba], a
    jr z, jr_002_7475

    call Call_002_74ba
    ld hl, $d460
    ld de, $d800
    ld b, $18
    call Call_002_40d0

jr_002_74b5:
    ld a, $35
    jp $05b6


Call_002_74ba:
    ld a, b
    rst $00
    call nz, $c474
    ld [hl], h
    call z, $d274
    ld [hl], h
    ld hl, $481b
    ld e, $03
    jp $008a


    ld bc, $0002
    jp $19f4


    ld a, c
    ld [$c6e6], a
    ld c, b
    ld b, $00
    jp $19f4


Call_002_74dc:
    xor a
    ldh [rVBK], a
    ld de, $8a00
    ld b, $00

jr_002_74e4:
    ld a, b
    call Call_002_751d
    ld a, [hli]
    or a
    jr z, jr_002_7518

    push bc
    ld c, a
    ld a, [hli]
    call $30c7
    ld a, $01
    jr z, jr_002_74fe

    ld a, c
    and $3f
    call Call_002_40c7
    ld a, $02

jr_002_74fe:
    call Call_002_40c7
    pop bc
    dec de
    ld e, $00

jr_002_7505:
    ld a, d
    and $fe
    add $02
    cp $90
    jr c, jr_002_7514

    ld a, $01
    ldh [rVBK], a
    ld a, $80

jr_002_7514:
    ld d, a

jr_002_7515:
    inc b
    jr jr_002_74e4

jr_002_7518:
    ld a, b
    ld [$cbb5], a
    ret


Call_002_751d:
    ld hl, $c612
    bit 0, [hl]
    ld hl, $7531
    jr z, jr_002_752a

    ld hl, $7550

jr_002_752a:
    push bc
    ld c, a
    add a
    add c
    rst AddAToHL
    pop bc
    ret


    inc b
    jr z, jr_002_7534

jr_002_7534:
    add l
    ld sp, $c602
    ld e, d
    jr nc, jr_002_7505

    ld e, [hl]
    inc [hl]
    bit 3, a
    dec [hl]
    call $3761
    rst $08
    ld h, e
    add hl, sp
    rst $00
    ld e, e
    ld sp, $62ce
    jr c, jr_002_7515

    ld e, h
    ld [hl-], a
    nop
    add l
    ld sp, $d002
    ld h, h
    nop
    call nc, $0468
    push de
    ld h, [hl]
    ld [bc], a
    rst AddAToHL
    ld l, e
    rlca
    reti


    ld l, l
    add hl, bc
    pop de
    ld h, l
    ld bc, $6cd8
    ld [$69d2], sp
    dec b
    db $d3
    ld h, a
    inc bc
    sub $6a
    ld b, $00
    ld a, [$cbb3]
    rst $00
    ld a, d
    ld [hl], l
    and l
    ld [hl], l
    call function_02c1
    call function_047b
    call function_048b
    call $04a9
    ld a, $f5
    call $0c74
    ld a, $01
    call function_0602
    ld a, $01
    call $04e7
    ld a, $78
    ld [$cbb4], a
    ld hl, $cbb3
    inc [hl]
    call $3171
    xor a
    jp function_02ea


    ld a, [$c4ab]
    or a
    ret nz

    ld hl, $cbb4
    dec [hl]
    ret nz

    ld a, $f6
    call $0c74
    ld hl, $cbcc
    inc [hl]
    jp $3144


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

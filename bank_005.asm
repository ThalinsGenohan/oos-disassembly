; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX

    ld hl, $cc72
    ld a, [hl]
    ld [hl], $00
    or a
    jr z, jr_005_400e

    and $7f
    ld [$d001], a

jr_005_400e:
    xor a
    ld [$cc7f], a
    ld [$ccac], a
    ld [$cc81], a
    ld hl, $ccaf
    ld a, [hl]
    or $7f
    ld [hl], a
    ld hl, $cc7b
    res 7, [hl]
    call Call_005_4097
    ld hl, $d100
    call Call_005_4061
    xor a
    ld [$cc83], a
    ld hl, $d000
    call Call_005_4061
    call Call_005_4237
    ld a, [$cca7]
    ld [$ccb0], a
    ld hl, $cc7c
    ld a, [hl]
    and $0f
    ld [hl], a
    xor a
    ld [$cc82], a
    ld [$d02a], a
    ld [$ccef], a
    ld hl, $cc85
    ld a, [hl]
    or a
    jr z, jr_005_4059

    dec [hl]

jr_005_4059:
    ld hl, $cc8e
    ld b, $10
    jp $044b


Call_005_4061:
    ld a, [hl]
    or a
    ret z

    ld a, l
    ldh [$ac], a
    ld a, h
    ldh [$ad], a
    ld d, h
    ld l, $01
    ld a, [hl]
    rst $00
    ld l, a
    ld c, c
    jp c, $467c

    ld h, c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld h, c
    jp hl


    inc l
    adc e
    ld h, d
    call c, $6a62
    ld l, h
    adc $72
    dec hl
    ld [hl], a
    db $e4
    ld h, d
    push de
    inc l
    push de
    inc l
    push de
    inc l
    push de
    inc l
    xor l
    ld a, e

Call_005_4097:
    ld a, [$c481]
    ld c, a
    ld a, [$cbc3]
    or a
    jr z, jr_005_40be

    cp $02
    jr z, jr_005_40aa

    call $297a
    jr jr_005_40bd

jr_005_40aa:
    xor a
    ld [$cbc3], a
    ld a, $a0
    and c
    rrca
    ld b, a
    ld a, $50
    and c
    rlca
    or b
    ld b, a
    ld a, $0f
    and c
    or b

jr_005_40bd:
    ld c, a

jr_005_40be:
    ld a, [$cc34]
    or a
    ld hl, $cc45
    jr nz, jr_005_40dc

    ld a, [hl]
    cpl
    ld b, a
    ld a, c
    ld [hl+], a
    and b
    ld [hl+], a
    ld a, c
    and $f0
    swap a
    ld hl, $40e2
    rst $10
    ld a, [hl]
    ld [$cc47], a
    ret


jr_005_40dc:
    xor a
    ld [hl+], a
    ld [hl+], a
    dec a
    ld [hl+], a
    ret


    rst $38
    ld [$ff18], sp
    nop
    inc b
    inc e
    rst $38
    db $10
    inc c
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    ldh [$ac], a
    ld de, $d101
    ld a, d
    ldh [$ad], a
    ld a, [de]
    sub $0a
    rst $00
    adc h
    ld b, c
    inc de
    ld b, c
    jr @+$43

    ld a, [hl+]
    ld b, c
    ld [de], a
    ld b, c
    ld [de], a
    ld b, c
    ld [de], a
    ld b, c
    ld [de], a
    ld b, c
    ld [de], a
    ld b, c
    or l
    ld b, c
    ret


    ld bc, $0000
    jr jr_005_4135

    ld e, $08
    ld a, [de]
    rrca
    ld bc, $f600
    jr nc, jr_005_4135

    ld c, $fb
    rrca
    jr nc, jr_005_4135

    ld c, $05
    jr jr_005_4135

    ld e, $08
    ld a, [de]
    rrca
    ld bc, $f200
    jr nc, jr_005_4135

    ld b, $f0

jr_005_4135:
    ld hl, $d00b
    call $2215
    ld e, $08
    ld l, $08
    ld a, [de]
    ld [hl], a
    ld a, $01
    ld [$ccaa], a
    ld l, $2a
    ld a, [hl+]
    or [hl]
    ld l, $2d
    or [hl]
    jr nz, jr_005_4161

    ld l, $25
    ld e, l
    ld a, [de]
    or a
    jr z, jr_005_4161

    ld [hl+], a
    ld l, $29
    ld e, l
    ld b, $06
    call $045b
    jr jr_005_4172

jr_005_4161:
    ld l, $25
    ld e, l
    ld a, [hl]
    ld [de], a
    ld d, $d0
    ld h, $d1
    ld l, $29
    ld e, l
    ld b, $06
    call $045b

jr_005_4172:
    ld h, $d0
    ld d, $d1
    ld l, $1c
    ld a, [hl]
    ld l, $1b
    cp [hl]
    jr nz, jr_005_4181

    ld e, $1b
    ld a, [de]

jr_005_4181:
    ld e, $1c
    ld [de], a
    ld l, $1a
    ld e, l
    ld a, [de]
    and $83
    ld [hl], a
    ret


    ld h, d
    ld l, $08
    ld a, [hl]
    ld l, $21
    add [hl]
    ld hl, $41a5
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    ld hl, $d00b
    call $2215
    ld l, $1a
    res 6, [hl]
    ret


    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    rst $38
    ld hl, sp+$00
    rst $30
    rst $38
    ld hl, sp+$00

Call_005_41b5:
    ld e, $32
    ld a, $ff
    ld [de], a
    ld e, $01
    ld a, [de]
    ld hl, $41cb
    rst JumpTable
    ld e, $1d
    ld a, [hl+]
    ld [de], a
    dec e
    ld a, [hl+]
    ld [de], a
    dec e
    ld [de], a
    ret


    ld [hl], b
    ld [$0870], sp
    ld [hl], b
    ld [$0870], sp
    ld [hl], b
    ld [$0870], sp
    ld [hl], b
    ld [$0870], sp
    ld [hl], b
    ld [$0870], sp
    ld h, b
    inc c
    ld h, b
    dec bc
    ld h, b
    ld a, [bc]
    ld h, b
    add hl, bc
    ld h, b
    ld [$0b60], sp
    ld h, b
    ld a, [bc]
    ld h, b
    add hl, bc
    ld h, b
    ld [$0b60], sp

Call_005_41f3:
    ld a, [$ccb0]
    ld b, a
    ld h, d
    ld l, $2b
    or [hl]
    ret nz

    ld [hl], $28
    ld a, $1d
    call $236b
    ld a, $fc
    jr nz, jr_005_4209

    sra a

jr_005_4209:
    ld l, $25
    add [hl]
    ld [hl], a
    ld l, $2a
    ld [hl], $80
    ld l, $2d
    ld a, $0a
    add [hl]
    ld [hl], a
    ld e, $09
    ld a, [de]
    xor $10
    ld l, $2c
    ld [hl], a
    ld a, $5f
    call $0c74
    jr jr_005_422e

Call_005_4226:
    ld hl, $4647
    ld e, $06
    call $008a

jr_005_422e:
    ld hl, $469a
    ld e, $06
    call $008a
    ret


Call_005_4237:
    ld hl, $d02b
    ld a, [hl]
    or a
    ret z

    bit 7, a
    jr nz, jr_005_4250

    dec [hl]
    jr z, jr_005_4251

Jump_005_4244:
    ld a, [$cc00]
    bit 2, a
    jr nz, jr_005_4251

    ld l, $1c
    ld [hl], $0d
    ret


jr_005_4250:
    inc [hl]

jr_005_4251:
    ld l, $1b
    ld a, [hl+]
    ld [hl], a
    ret


Call_005_4256:
    call $1432
    ld [$ccb4], a
    ld hl, $7bad
    call $1ddd
    ld [$ccb6], a
    ld bc, $0800
    call $1423
    ld hl, $7bad
    call $1ddd
    ld [$ccb7], a
    ret


Call_005_4275:
    xor a
    ld [$ccb8], a
    ld a, [$cc77]
    or a
    jp nz, Jump_005_42b3

    call Call_005_43b9
    ld [$ccb6], a
    rst $00
    or e
    ld b, d
    dec b
    ld b, e
    dec b
    ld b, e
    ld [$dd42], a
    ld b, d
    push hl
    ld b, d
    push hl
    ld b, d
    ld c, l
    ld b, e
    jp nc, $8a42

    ld b, e
    adc d
    ld b, e
    adc d
    ld b, e
    adc d
    ld b, e
    di
    ld b, c
    dec a
    ld b, e
    cpl
    ld b, e
    ld l, d
    ld b, e
    cp [hl]
    ld b, d
    or c
    ld b, e
    or c
    ld b, e
    or c
    ld b, e
    or c
    ld b, e

Jump_005_42b3:
jr_005_42b3:
    xor a
    ld [$ccb6], a
    ld [$ccb5], a
    ld [$cc78], a
    ret


    ld h, d
    ld l, $21
    bit 5, [hl]
    jr z, jr_005_42b3

    res 5, [hl]
    ld a, [$cc7c]
    or a
    ld a, $87
    call z, $0c74
    jr jr_005_42b3

    ld h, d
    ld l, $33
    ld [hl], $ff
    ld l, $24
    res 7, [hl]
    jr jr_005_42e5

    call $2b8a
    ld a, $ff
    ld [$cc83], a

jr_005_42e5:
    xor a
    ld [$cc78], a
    ret


    ld a, $22
    call $236b
    jr z, jr_005_42b3

    ld a, [$ccb5]
    cp $20
    jr c, jr_005_42e5

    ld a, [$ccb3]
    ld c, a
    ld a, $f3
    call $224c
    xor a
    ld [$ccb5], a
    xor a
    ld [$cc78], a
    ld a, [$ccb0]
    or a
    jr nz, jr_005_42b3

    ld a, [$cc79]
    bit 6, a
    jr nz, jr_005_42b3

    ld hl, $ccb7
    ld a, [hl-]
    cp [hl]
    jr nz, jr_005_4327

    ld l, $b3
    ld a, [hl+]
    cp b
    jr z, jr_005_4327

    inc l
    ld a, $0e
    ld [hl], a

jr_005_4327:
    ld a, $80
    ld [$ccac], a
    jp Jump_005_5dd9


jr_005_432f:
    ld a, $21
    call $236b
    jr z, jr_005_42e5

    ld hl, $ccb8
    set 6, [hl]
    jr jr_005_42e5

    ld a, [$ccb5]
    cp $20
    jr c, jr_005_432f

    ld a, [$ccb3]
    ld c, a
    ld a, $fd
    call $3a52

jr_005_434d:
    ld a, [$ccb0]
    or a
    jp nz, Jump_005_42b3

    ld a, [$cc78]
    or a
    ret nz

    xor a
    ld e, $35
    ld [de], a
    ld e, $2d
    ld [de], a
    inc a
    ld [$cc78], a
    ld a, $80
    ld [$ccac], a
    ret


    ld a, [$cc79]
    bit 6, a
    jp nz, Jump_005_42b3

    ld a, $80
    ld [$ccac], a
    ld e, $2d
    xor a
    ld [de], a
    ld a, [$cc78]
    or a
    ret nz

    xor a
    ld e, $35
    ld [de], a
    ld a, $41
    ld [$cc78], a
    ret


    ld a, [$ccb0]
    or a
    jp nz, Jump_005_42b3

    ld a, $23
    call $236b
    jp z, Jump_005_42b3

    ld bc, $1409

Call_005_439c:
    ld a, $01
    ld [$ccac], a
    ld a, [$ccb6]
    sub c
    ld hl, $43ad
    rst $10
    ld c, [hl]
    jp Jump_005_5c90


    nop
    ld [$1810], sp
    ld bc, $1e12
    call Call_005_439c
    jr jr_005_434d

Call_005_43b9:
    ld bc, $0500
    call $1423
    ld c, a
    ld b, l
    ld hl, $ccb3
    ld a, [hl+]
    cp b
    jr nz, jr_005_43cc

    ld a, [hl]
    cp c
    jr z, jr_005_43d6

jr_005_43cc:
    ld l, $b3
    ld a, [hl]
    ld [hl], b
    ld b, a
    inc l
    ld [hl], c
    inc l
    ld [hl], $00

jr_005_43d6:
    ld l, $b5
    inc [hl]
    inc l
    ld a, [hl+]
    ld [hl], a
    ld a, c
    ld hl, $7bad
    jp $1ddd


Call_005_43e3:
    ld l, $09

Call_005_43e5:
    ld h, d
    ld e, l
    ld a, [$cc50]
    and $20
    ret z

    bit 7, [hl]
    ret nz

    ld a, [hl]
    ld hl, $43f8
    rst $10
    ld a, [hl]
    ld [de], a
    ret


    rst $38
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    rst $38
    jr @+$1a

    jr jr_005_4425

    jr jr_005_4427

    jr jr_005_4429

    jr jr_005_442b

    jr jr_005_442d

    jr @+$1a

    jr @+$23

    nop
    ret nc

    jp $1d3d


Call_005_441e:
Jump_005_441e:
    call Call_005_4439
    call Call_005_5c88
    ld h, d

jr_005_4425:
    ld l, $0f

jr_005_4427:
    ld a, [hl]
    or a

jr_005_4429:
    ret nz

Call_005_442a:
    ld h, d

jr_005_442b:
    ld l, $0b

jr_005_442d:
    ld a, [hl]
    add $05
    ld b, a
    ld l, $0d
    ld c, [hl]
    ld a, $13
    jp $2b3d


Call_005_4439:
    ld e, $33
    xor a
    ld [de], a
    ld h, d
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld a, $01
    ldh [$8b], a
    ld hl, $4461

jr_005_444b:
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl+]
    add c
    ld c, a
    push hl
    call Call_005_4471
    pop hl
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_005_444b

    ld e, $33
    ld [de], a
    ret


    ei
    db $fd
    nop
    rlca
    dec c
    ld sp, hl
    nop
    rlca
    push af
    rst $30
    add hl, bc
    nop
    rst $30
    dec bc
    add hl, bc
    nop

Call_005_4471:
    call $1435
    ld a, [hl]
    cp $df
    jr z, jr_005_44a5

    cp $de
    jr z, jr_005_44a5

    cp $dd
    ld a, $03
    jp z, $14cd

    ld e, $01
    ld a, [de]
    cp $0b
    jr nz, jr_005_449b

    ld e, $0f
    ld a, [de]
    bit 7, a
    jr z, jr_005_44a7

    ld a, [hl]
    cp $d9
    ret z

    cp $da
    ret z

    jr jr_005_44a7

jr_005_449b:
    cp $0c
    jr nz, jr_005_44a7

    ld a, [hl]
    cp $fe
    ret nc

    jr jr_005_44a7

jr_005_44a5:
    scf
    ret


jr_005_44a7:
    jp $1517


Call_005_44aa:
    ld e, $08
    ld a, [de]
    rst JumpTable

Call_005_44ae:
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call $1423
    ld b, a
    ld h, $ce
    ld a, [hl]
    ret


Call_005_44b9:
    ld h, d
    ld l, $09
    ld a, [hl]
    cp $ff
    ret z

    add $10
    and $1f
    ld [hl], a
    call Call_005_44db
    ld c, a
    ld l, $09
    ld a, [hl]
    add $10
    and $1f
    ld [hl], a
    ld a, c
    or a
    ret


Call_005_44d4:
    ld h, d
    ld l, $09
    ld a, [hl]
    cp $ff
    ret z

Call_005_44db:
    ld bc, $0000
    cp $08
    jr z, jr_005_44f6

    cp $18
    jr z, jr_005_44f6

    ld l, $33
    ld b, [hl]
    add a
    swap a
    and $03
    ld a, $30
    jr nz, jr_005_44f4

    ld a, $c0

jr_005_44f4:
    and b
    ld b, a

jr_005_44f6:
    ld l, $09
    ld a, [hl]
    and $0f
    jr z, jr_005_450b

    ld a, [hl]
    ld l, $33
    ld c, [hl]
    bit 4, a
    ld a, $03
    jr z, jr_005_4509

    ld a, $0c

jr_005_4509:
    and c
    ld c, a

jr_005_450b:
    ld a, b
    or c
    ret


Call_005_450e:
    call $2c40
    ret nz

    jr jr_005_451a

Call_005_4514:
Jump_005_4514:
    ld hl, $d600
    ld a, [hl]
    or a
    ret nz

jr_005_451a:
    inc [hl]
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    ld l, $28
    ld [hl], $f9
    xor a
    ret


Call_005_4525:
Jump_005_4525:
    ld e, $08
    ld a, [de]
    ld [$d008], a
    ld e, $04
    ld a, [de]
    cp $0c
    jp z, $2a36

    call $2aab
    ld hl, $d108
    cp [hl]
    jp z, $2a36

Jump_005_453d:
    ld e, $09
    ld a, [de]
    add a
    swap a
    and $03
    dec e
    ld [de], a

Call_005_4547:
Jump_005_4547:
    ld h, d
    ld a, c
    ld l, $08
    add [hl]
    ld l, $38
    add [hl]
    jp $2a51


Call_005_4552:
Jump_005_4552:
    ld a, [$ccb6]
    cp $01
    jr z, jr_005_455e

    call $1cde
    jr c, jr_005_4560

jr_005_455e:
    or d
    ret


jr_005_4560:
    ld a, [$d004]
    cp $01
    ret nz

    ld a, [$cc78]
    or a
    ret nz

    ld a, [$cc75]
    or a
    ret nz

    ld a, [$cc77]
    or a
    ret nz

    inc a
    ld [$ccaa], a
    ld [$cc88], a
    ld e, $04
    ld a, $03
    ld [de], a
    ld a, $ff

Call_005_4583:
    ld [$cc47], a
    ld a, $81
    ld [$cc77], a
    ld [$ccab], a
    ld hl, $d009
    ld [hl], a
    ld l, $10
    ld [hl], $14
    ld l, $14
    ld [hl], $40
    inc l
    ld [hl], $fe
    xor a
    ret


Call_005_459f:
    call $21cb
    ld h, d
    ret nc

    push af
    ld l, $04
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld l, $01
    ld a, [hl]
    cp $0c
    jr z, jr_005_45bc

    ld [$ccab], a
    ld a, $87
    call $0c74

jr_005_45bc:
    pop af
    scf
    ret


Call_005_45bf:
    call Call_005_45f5
    ld e, $01
    ld a, [de]
    ld hl, $c610
    cp [hl]
    jr z, jr_005_45f3

    cp $0b
    jr z, jr_005_45dc

    cp $0c
    jr z, jr_005_45e4

    ld a, [$c6bb]
    bit 4, a
    jr z, jr_005_45f3

    jr jr_005_45eb

jr_005_45dc:
    ld a, [$c6af]
    or a
    jr z, jr_005_45f3

    jr jr_005_45eb

jr_005_45e4:
    ld a, $2e
    call $1717
    jr nc, jr_005_45f3

jr_005_45eb:
    call Call_005_4641
    xor a
    ld [$cc40], a
    ret


jr_005_45f3:
    jr jr_005_4641

Call_005_45f5:
Jump_005_45f5:
    xor a
    call $2a20
    ld hl, $d01b
    ld a, [hl+]
    ld [hl-], a
    ld h, d
    ld a, [hl+]
    ld [hl], a
    xor a
    ld l, $25
    ld [hl], a
    ld l, $2b
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld l, $3c
    ld [hl], a
    ld [$cc6a], a
    ld [$cc6b], a
    ld l, $00
    ld [hl], $01
    ld l, $08
    ld a, [hl+]
    swap a
    srl a
    ld [hl], a
    call Call_005_4583
    ld hl, $d009
    ld [hl], $ff
    call $21fd
    dec l
    ld [hl], $f8
    ld a, h
    ld [$cc48], a
    xor a
    ld [$ccaa], a
    ld [$cc88], a
    ld [$ccb1], a
    ld [$ccab], a
    jp $12ae


Call_005_4641:
Jump_005_4641:
jr_005_4641:
    ld hl, $cc40
    ld a, [$d101]
    ld [hl+], a
    ld a, [$cc49]
    ld [hl+], a
    ld a, [$cc4c]
    ld [hl+], a
    ld a, [$d108]
    ld [$cc3f], a
    ld a, [$d10b]
    ld [hl+], a
    ld [$cc3d], a
    ld a, [$d10d]
    ld [hl+], a
    ld [$cc3e], a
    ret


Call_005_4665:
    ld e, $3d
    ld a, [de]
    or a
    jr z, jr_005_466d

    xor a
    ret


jr_005_466d:
    ld bc, $0500
    call $1423
    ld c, l
    call $208a
    ld e, $0d
    ld a, [de]
    cp c
    ld c, $00
    jr z, jr_005_4690

    ld hl, $0040
    jr c, jr_005_4687

    ld hl, $ffc0

jr_005_4687:
    dec e
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    dec c

jr_005_4690:
    ld e, $0b
    ld a, [de]
    cp b
    jr z, jr_005_46a7

    ld hl, $0040
    jr c, jr_005_469e

    ld hl, $ffc0

jr_005_469e:
    dec e
    ld a, [de]
    add l
    ld [de], a
    inc e
    ld a, [de]
    adc h
    ld [de], a
    dec c

jr_005_46a7:
    ld h, d
    ld a, c
    or a
    ret


Call_005_46ab:
    xor a
    ld [$ccab], a
    ld [$cc6a], a
    ld [$cc6b], a
    call $2ad1
    ld bc, $0500
    call $1423
    cp $20
    jr nz, jr_005_46ce

    ld h, d
    ld l, $0b
    ld a, [$cc43]
    ld [hl+], a
    inc l
    ld a, [$cc44]
    ld [hl+], a

jr_005_46ce:
    call $1475
    jr nz, jr_005_46e0

    call $2048
    call Call_005_4471
    jr c, jr_005_46e0

    call $21cb
    jr nc, jr_005_46f2

jr_005_46e0:
    ld h, d
    ld l, $0b
    ld a, [$c638]
    ld [$cc3d], a
    ld [hl+], a
    inc l
    ld a, [$c639]
    ld [$cc3e], a
    ld [hl+], a

jr_005_46f2:
    ld a, [$cc48]
    rrca
    ld a, $01
    jr nc, jr_005_4706

    ld a, $fe
    ld [$d025], a
    ld a, $40
    ld [$d02b], a
    ld a, $05

jr_005_4706:
    ld h, d
    ld l, $04
    ld [hl+], a
    xor a
    ld [hl], a
    ld l, $3d
    ld [hl], a
    ld [$ccab], a
    ld l, $24
    res 7, [hl]
    ret


Call_005_4717:
    ld a, [$cc47]
    ld c, a
    and $e7
    ret nz

    ld e, $09
    ld a, [de]
    cp c
    ret nz

    call Call_005_44d4
    cp $03
    jr z, jr_005_4731

    cp $0c
    jr z, jr_005_4731

    cp $30
    ret nz

jr_005_4731:
    ld e, $08
    ld a, [de]
    ld hl, $4771
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call $1423
    cp $dd
    jr z, jr_005_474c

    ld hl, $7c9a
    call $1ddd
    jr c, jr_005_474e

    or d
    ret


jr_005_474c:
    ld a, $10

jr_005_474e:
    ld h, d
    ld l, $09
    cp [hl]
    ret nz

    ld a, $80
    ld [$cc77], a
    ld bc, $fd40
    call $2358
    ld l, $10
    ld [hl], $50
    ld l, $06
    ld a, $14
    ld [hl+], a
    xor a
    ld [hl], a
    ld l, $04
    ld a, $07
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    ld a, [$0000]
    inc b
    ld [$0000], sp
    ei

Call_005_4779:
    ld h, d
    ld l, $00
    set 1, [hl]
    ld l, $04
    ld [hl], $05
    ld l, $09
    ld a, $ff
    ld [hl], a
    ld l, $3c
    ld [hl], a
    ld l, $1a
    ld a, [hl]
    and $c0
    or $01
    ld [hl], a
    xor a
    ld l, $3d
    ld [hl], a
    ld [$cc77], a
    ld [$ccab], a
    ld bc, $c638
    ld l, $0b
    ld a, [hl+]
    ld [bc], a
    inc c
    inc l
    ld a, [hl]
    ld [bc], a
    ld a, d
    ld [$cc48], a
    call $12ae
    ld a, $09
    jp $2a20


Call_005_47b3:
    ld h, d
    ld l, $3c
    ld a, [hl]
    or a
    ret z

    ld a, [$cc34]
    or a
    ret z

    xor a
    ld [hl], a
    ld e, $0e
    ld [hl+], a
    ld [hl+], a
    ld l, $04
    ld [hl], $09
    ld e, $1b
    ld a, [hl+]
    ld [hl], a
    ld e, $1a
    xor a
    ld [de], a
    ld h, $d0
    call $21fd
    ld a, h
    ld [$cc48], a
    call $12ae
    xor a
    call $2a20
    or d
    ret


Jump_005_47e2:
    ld e, $38
    ld a, [de]
    or a
    jr z, jr_005_47ed

    xor a
    ld [$ccb1], a
    ret


jr_005_47ed:
    ld a, $06
    jr jr_005_47f6

Jump_005_47f1:
    call Call_005_4547
    ld a, $05

jr_005_47f6:
    ld e, $04
    ld [de], a
    inc e
    xor a
    ld [de], a
    ret


Call_005_47fd:
    ld e, $04
    ld a, [de]
    or a
    jr nz, jr_005_482c

    ld e, $0b
    ld a, [de]
    add $05
    ld b, a
    ld e, $0d
    ld a, [de]
    ld c, a
    call $14a5
    cp $10
    jr z, jr_005_4818

    cp $0f
    jr nz, jr_005_482c

jr_005_4818:
    ld hl, $c638
    ld a, [hl+]
    ld e, $0b
    ld [de], a
    ld a, [hl]
    ld e, $0d
    ld [de], a
    call $149b
    jr z, jr_005_482c

    pop af
    jp $2c29


jr_005_482c:
    call Call_005_41b5
    ld hl, $d103
    ld a, [hl+]
    inc a
    ld [hl], a
    ld l, $24
    ld [hl], $80
    ret


Call_005_483a:
    ld e, $04
    ld a, [de]
    or a
    ret z

    ld a, [$cba0]
    or a
    jr nz, jr_005_4858

Call_005_4845:
    ld a, [$cd00]
    and $0e
    jr nz, jr_005_4858

    ld a, [$c4ab]
    or a
    jr nz, jr_005_4858

    ld a, [$cca4]
    and $a0
    ret z

jr_005_4858:
    pop af
    ret


Call_005_485a:
    ld h, d
    ld l, $3f
    ld a, [hl]
    ld l, $30
    cp [hl]
    jp nz, $2a51

    ret


Call_005_4865:
Jump_005_4865:
    ld hl, $d01b
    ld a, [$cc00]
    bit 2, a
    jr nz, jr_005_4875

    ld a, [hl+]
    and $f8
    or c
    ld [hl], a
    ret


jr_005_4875:
    ld a, [hl+]
    ld [hl], a
    ret


Call_005_4878:
    ld a, [$d004]
    cp $01
    jr nz, jr_005_4885

    ld a, [$cc75]
    or a
    jr z, jr_005_4896

jr_005_4885:
    xor a
    ld [$ccaa], a
    ld [$cc88], a
    ld [$ccab], a
    ld a, $01
    ld e, $04
    ld [de], a
    or d
    ret


jr_005_4896:
    ld hl, $d00b
    ld e, $0b
    ld a, [de]
    cp [hl]
    call nz, Call_005_48b5
    ld e, $0d
    ld l, e
    ld a, [de]
    cp [hl]
    call nz, Call_005_48b5
    ld l, $15
    bit 7, [hl]
    ret nz

    ld l, $0f
    ld a, [hl]
    cp $fc
    ret c

    xor a
    ret


Call_005_48b5:
    jr c, jr_005_48b9

    inc [hl]
    ret


jr_005_48b9:
    dec [hl]
    ret


Jump_005_48bb:
    ld h, d
    ld l, $00
    ld a, [hl]
    or a
    ret z

    ld l, $3c
    ld a, [hl]
    ld [$cc88], a
    ld l, $0f
    ld a, [hl+]
    bit 7, a
    jr nz, jr_005_48ea

    ld bc, $0500
    call $1423
    ld h, d
    cp $fa
    jr z, jr_005_48e1

    cp $fb
    jr z, jr_005_48e1

    cp $fc
    jr nz, jr_005_48e6

jr_005_48e1:
    ld l, $1a
    res 6, [hl]
    ret


jr_005_48e6:
    ld l, $0f
    ld [hl], $00

jr_005_48ea:
    ld l, $1a
    set 6, [hl]
    ret


Call_005_48ef:
Jump_005_48ef:
    call $229b
    dec b
    and $c0
    or b
    ld [de], a
    ret


Call_005_48f8:
    ld e, $06
    ld a, [de]
    or a
    jr z, jr_005_490a

    dec a
    ld [de], a
    ld a, $53
    scf
    ret nz

    call $0c74
    xor a
    scf
    ret


jr_005_490a:
    call $2a36
    call $1fdb
    ld c, $40
    call $1f04
    or d
    ret


Call_005_4917:
Jump_005_4917:
    ld h, d
    ld l, $06
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


Call_005_491f:
    call $2a36
    ld e, $21
    ld a, [de]
    rlca
    ret nc

    call Call_005_46ab
    scf
    ret


Call_005_492c:
    call Call_005_47fd
    ld l, $04
    ld [hl], $0c
    ld l, $03
    inc [hl]
    ld l, $07
    jp $1dfa


Call_005_493b:
    call Call_005_44aa
    or a
    ret nz

    ld e, $07
    ld a, [de]
    dec a
    ld [de], a
    ret z

    pop af
    ret


Jump_005_4948:
    ld a, [$cc02]
    push af
    xor a
    ld [$cc02], a
    ld [$d02b], a
    call Call_005_4552
    pop af
    ld [$cc02], a
    ret


Call_005_495b:
    ld h, d
    ld l, $06
    ld a, [hl]
    or a
    ret


Call_005_4961:
    ld h, d
    ld l, $0b
    ld a, [hl+]
    inc l
    ld c, [hl]
    add $05
    ld b, a
    ld a, $05
    jp $2b3d


Jump_005_496f:
    ld e, $04
    ld a, [de]
    rst $00
    sbc l
    ld c, c
    add l
    ld d, h
    call c, $944e
    ld c, [hl]
    ld d, a
    ld c, [hl]
    rst $38
    ld d, c
    ld a, e
    ld d, d
    db $f4
    dec hl
    or h
    ld c, l
    call nz, $df4f
    ld c, c
    jr z, jr_005_49d9

    add sp, $50
    sbc d
    ld d, c
    rst $30
    ld c, l
    xor $52
    xor c
    ld d, e
    rrca
    ld d, h
    ld a, [bc]
    ld h, b
    inc hl
    ld d, c
    ld a, e
    ld d, c
    call $2b57
    call Call_005_41b5
    ld a, $10
    call $2a51
    ld h, d
    ld l, $24
    ld a, $80
    ld [hl+], a
    inc l
    ld a, $06
    ld [hl+], a
    ld [hl+], a
    ld l, $29
    ld [hl], $01
    ld a, [$cc6a]
    cp $0a
    jr z, jr_005_49d6

    ld a, [$cc71]
    or a
    jr nz, jr_005_49d6

    call $149b
    cp $0f
    jr nz, jr_005_49d6

    ld hl, $c638
    ld a, [hl+]
    ld e, $0b
    ld [de], a
    ld a, [hl]
    ld e, $0d
    ld [de], a

jr_005_49d6:
    call $1dfa

jr_005_49d9:
    call Call_005_5468
    jp Jump_005_5ba7


    ld a, [$cc65]
    and $0f
    rst $00
    dec b
    ld c, d
    ld [de], a
    ld c, d
    ld d, h
    ld c, d
    ld e, [hl]
    ld c, d
    ld hl, $324b
    ld c, e
    add e
    ld c, e
    sbc $4b
    ld d, l
    ld c, h
    ld b, c
    ld c, l
    ld [$6f4a], sp
    ld c, l
    dec h
    ld c, d
    ld [$0b4a], sp
    ld c, d
    xor [hl]
    ld c, l

Jump_005_4a05:
jr_005_4a05:
    call Call_005_4a30
    jp Jump_005_5ba7


    call $2099
    ld a, [hl]
    and $f0
    ld [hl], a
    call Call_005_4a30

Jump_005_4a15:
    ld a, [$cc49]
    cp $06
    jr nc, jr_005_4a05

    call $10ce
    call $1108
    jp Jump_005_5ba7


    ld a, [$cc6b]
    and $03
    ld e, $08
    ld [de], a
    jp Jump_005_5ba7


Call_005_4a30:
    call $1432
    ld hl, $4a41
    call $1ddd
    jr c, jr_005_4a3d

    ld a, $02

jr_005_4a3d:
    ld e, $08
    ld [de], a
    ret


    ld d, e
    ld c, d
    ld d, e
    ld c, d
    ld d, e
    ld c, d
    ld c, l
    ld c, d
    ld c, a
    ld c, d
    ld c, a
    ld c, d
    ld [hl], $00
    ld b, h
    inc bc
    ld b, l
    ld bc, $3e00
    inc bc
    ld [$cc67], a
    ld a, $6e
    jp $0c74


    ld e, $05
    ld a, [de]
    or a
    jr nz, jr_005_4a95

    ld h, d
    ld l, e
    inc [hl]
    ld l, $06
    ld [hl], $10
    ld a, [$cc65]
    and $40
    swap a
    rrca
    ld bc, $4a91
    call $006d
    ld l, $08
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    call Call_005_5bdf
    call Call_005_5bae
    ld a, [$cc65]
    rlca
    jr c, jr_005_4ac2

    ld a, $6e
    jp $0c74


    nop
    nop
    ld [bc], a
    db $10

jr_005_4a95:
    ld a, [$cd00]
    and $0a
    ret nz

    ld a, $00
    ld [$cd00], a
    call $2a36
    call $2391
    jp nz, Jump_005_5c88

    ld a, $01
    ld [$cd00], a
    xor a
    ld [$cc02], a
    ld a, [$cc65]
    bit 7, a
    jp nz, Jump_005_4a15

    swap a
    and $03
    ld [$cc67], a
    ret


jr_005_4ac2:
    ld h, d
    ld a, [$cc66]
    cp $ff
    jr z, jr_005_4ada

    cp $f0
    jr nc, jr_005_4b01

    ld l, $0b
    call $2076
    ld l, $06
    ld [hl], $1c
    jp Jump_005_5ba7


Call_005_4ada:
jr_005_4ada:
    ld a, $01
    ld [$cc02], a
    ld l, $06
    ld [hl], $1c
    ld a, [$cc65]
    and $40
    swap a
    ld b, a
    ld a, [$cc49]
    and $04
    rrca
    or b
    ld bc, $4b19
    call $006d
    ld l, $0b
    ld a, [bc]
    ld [hl+], a
    inc bc
    inc l
    ld a, [bc]
    ld [hl], a
    ret


jr_005_4b01:
    call Call_005_4ada
    ld a, [$cc66]
    swap a
    and $f0
    ld b, a
    ld a, [$cc49]
    and $04
    jr z, jr_005_4b14

    rlca

jr_005_4b14:
    or b
    ld l, $0d
    ld [hl], a
    ret


    add b
    ld d, b
    or b
    ld a, b
    ldh a, [$50]
    ldh a, [$78]
    ld a, [$cc65]
    rlca
    jp c, Jump_005_4a05

    ld a, $01
    ld [$cc67], a
    ld a, $6e
    jp $0c74


    ld e, $05
    ld a, [de]
    rst $00
    inc a
    ld c, e
    ld e, d
    ld c, e
    ld b, c
    ld c, h
    ld a, $01
    ld [de], a
    ld bc, $0020
    call $2358
    call $2130
    ld l, $0f
    ld [hl], a
    ld l, $0b
    ld a, [hl]
    sub $04
    ld [hl], a
    ld l, $08
    ld [hl], $02
    ld a, $04
    jp $2a51


    call $2a36
    ld c, $20
    call $1f04
    ret nz

    call $1432
    cp $07
    jr z, jr_005_4b76

    ld hl, $23c3
    call $1ddd
    jp nc, Jump_005_4c2d

    jp Jump_005_5ba7


jr_005_4b76:
    ld a, [$cc49]
    and $06
    cp $04
    jp nz, Jump_005_4c2d

    jp Jump_005_50a5


    ld e, $05
    ld a, [de]
    rst $00
    adc e
    ld c, e
    or l
    ld c, e
    ld a, $01
    ld [de], a
    ld a, [$cc6b]
    bit 7, a
    jr z, jr_005_4ba0

    rrca
    and $0f
    ld [$cc6b], a
    ld a, $09
    jp Jump_005_5471


jr_005_4ba0:
    ld bc, $fd00
    call $2358
    ld l, $06
    ld [hl], $78
    ld l, $0b
    ld a, [hl]
    sub $04
    ld [hl], a
    ld a, $04
    call $2a51
    ld c, $18
    call $1f04
    jr z, jr_005_4bd3

    call $2a36
    call Call_005_5d53
    ld e, $10
    ld a, $14
    ld [de], a
    ld a, [$cc47]
    ld e, $09
    ld [de], a
    call $2aab
    jp Jump_005_5c88


jr_005_4bd3:
    call $1432
    cp $07
    jp z, Jump_005_50a5

    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    ld [$0b4b], a
    ld c, h
    inc h
    ld c, h
    ld a, $4c
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $08
    ld [hl], $02
    inc l
    ld [hl], $10
    ld l, $10
    ld [hl], $28
    ld l, $1a
    res 7, [hl]
    ld l, $06
    ld [hl], $78
    ld a, $04
    call $2a51
    ld a, $65
    jp $0c74


    call $2391
    ret nz

    ld l, $05
    inc [hl]
    ld l, $1a
    set 7, [hl]
    ld l, $06
    ld [hl], $30
    ld a, $10
    call $24a7
    ld a, $85
    jp $0c74


    call $2a36
    call $2391
    jp nz, Jump_005_5c88

Jump_005_4c2d:
    call $23aa
    ld l, $06
    ld [hl], $1e
    ld a, $02
    call $2a51
    ld a, $87
    jp $0c74


    call $10ce
    call $2391
    ret nz

    jp Jump_005_5ba7


Call_005_4c48:
    ld a, [$cc00]
    rrca
    ret nc

Call_005_4c4d:
Jump_005_4c4d:
    ld e, $08
    ld a, [de]
    inc a
    and $03
    ld [de], a
    ret


    ld e, $05
    ld a, [de]
    rst $00
    ld l, c
    ld c, h
    sub e
    ld c, h
    or d
    ld c, h
    call z, $da4c
    ld c, h
    db $eb
    ld c, h
    ld a, [$144c]
    ld c, l
    ld a, $01
    ld [de], a
    ld a, $ff
    ld [$cca4], a
    ld a, $80
    ld [$cc02], a
    ld a, $15
    ld [$cc04], a
    ld bc, $ff60
    call $2358
    ld l, $06
    ld [hl], $30
    call Call_005_4df1
    call $0c8e
    ld a, $b4
    call $0c74
    jp $2099


    ld c, $02
    call $1f04
    ld a, [$cc00]
    and $03
    jr nz, jr_005_4ca3

    ld hl, $cbbc
    inc [hl]

jr_005_4ca3:
    ld a, [$cc00]
    and $03
    call z, Call_005_4c4d
    call $2391
    ret nz

    jp $23aa


    ld c, $02
    call $1f04
    call Call_005_4c48
    ld h, d
    ld l, $15
    bit 7, [hl]
    ret nz

    ld l, $06
    ld [hl], $28
    ld a, $02
    call $312f
    jp $23aa


    call Call_005_4c48
    call $2391
    ret nz

    ld hl, $cbb3
    inc [hl]
    jp $23aa


    call Call_005_4c48
    ld a, [$cc03]
    cp $02
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $28
    ret


    ld c, $02
    call $1f04
    call Call_005_4c48
    call $2391
    ret nz

    jp $23aa


    ld c, $02
    call $1f04
    ld a, [$cc00]
    and $03
    ret nz

    call Call_005_4c4d
    ld hl, $cbbc
    dec [hl]
    ret nz

    ld hl, $cbb3
    inc [hl]
    jp $23aa


    ld a, [$cca4]
    and $81
    jr z, jr_005_4d24

    ld a, [$cc00]
    and $07
    ret nz

    jp Jump_005_4c4d


jr_005_4d24:
    ld e, $08
    ld a, [de]
    cp $02
    jp nz, Jump_005_4c4d

    ld a, [$cc62]
    ld [$cc51], a
    call $0c74
    call $10ce
    call $1108
    call $2af0
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    ld c, c
    ld c, l
    ld h, d
    ld c, l
    call $23aa
    ld l, $0b
    ld a, $08
    add [hl]
    ld [hl], a
    call $2099
    call $2b57
    ld a, $0d
    call $2a51
    ld a, $65
    jp $0c74


    ld e, $21
    ld a, [de]
    inc a
    jp nz, $2a36

    ld a, $03
    ld [$cc67], a
    ret


    ld e, $05
    ld a, [de]
    rst $00
    ld a, c
    ld c, l
    adc e
    ld c, l
    and d
    ld c, l
    call $23aa
    call $2130
    ld l, $0f
    ld [hl], a
    ld l, $08
    ld [hl], $02
    ld a, $04
    jp $2a51


    call $2a36
    ld c, $0c
    call $1f04
    ret nz

    xor a
    ld [$cca4], a
    ld a, $08
    call $2a16
    ld l, $02
    ld [hl], $02
    ret


    ld a, [$cca4]
    and $81
    ret nz

    call $1e03
    jp Jump_005_5ba7


    call Call_005_5468
    jp $1e39


    ld e, $05
    ld a, [de]
    rst $00
    cp h
    ld c, l
    rst $08
    ld c, l
    ld a, $01
    ld [de], a
    ld hl, $cc6b
    ld a, [hl]
    ld [hl], $00
    or a
    ret nz

    call Call_005_4ded
    ld a, $10
    jp $2a51


    call Call_005_5468
    ld hl, $cc6b
    ld a, [hl]
    or a
    jr z, jr_005_4dde

    ld [hl], $00
    call $2a51

jr_005_4dde:
    ld a, [$cc7e]
    or a
    call nz, $2b5f
    ld a, [$cca4]
    or a
    ret nz

    jp Jump_005_5ba7


Call_005_4ded:
    ld e, $33
    xor a
    ld [de], a

Call_005_4df1:
Jump_005_4df1:
    call $2b8a
    jp $2b57


    ld e, $05
    ld a, [de]
    rst $00
    ld bc, $0a4e
    ld c, [hl]
    inc d
    ld c, [hl]
    call $23aa
    ld e, $37
    ld a, [$cc4c]
    ld [de], a
    call $2142
    ret c

    call $23aa
    call $1e39
    ld h, d
    ld l, $37
    ld a, [$cc4c]
    cp [hl]
    ret nz

    call $2142
    ret nc

    ld e, $05
    ld a, $01
    ld [de], a
    jp $1e03


    ld e, $05
    ld a, [de]
    rst $00
    jr nc, jr_005_4e7c

    ld b, a
    ld c, [hl]
    ld a, $01
    ld [de], a
    ld e, $06
    ld a, [$cc6c]
    ld [de], a
    call $29cc
    call Call_005_4ded
    call Call_005_5bdf
    ld a, $10
    call $2a51
    call $2a36
    call $2391
    ld l, $33
    ld [hl], $00
    jp nz, Jump_005_5c88

    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    ld e, a
    ld c, [hl]
    ld [hl], l
    ld c, [hl]
    ld a, $01
    ld [de], a
    call Call_005_4df1
    ld e, $30
    ld a, [de]
    ld [$cc6d], a
    ld a, [$cc6b]
    and $0f
    add $0e
    jp $2a51


    call $1832
    ld a, [$cc6b]
    rlca

jr_005_4e7c:
    jr c, jr_005_4e84

    ld a, [$cca4]
    and $81
    ret nz

jr_005_4e84:
    ld e, $04
    ld a, $01
    ld [de], a
    ld a, [$cc6d]
    jp $2a51


Jump_005_4e8f:
    ld a, $03
    call Call_005_5471
    xor a
    ld [$c6a2], a
    ld e, $05
    ld a, [de]
    rst $00
    and b
    ld c, [hl]
    cp a
    ld c, [hl]
    call Call_005_5d53
    ld e, $2d
    ld a, [de]
    or a
    jp nz, Jump_005_5c4c

    ld h, d
    ld l, $05
    inc [hl]
    ld l, $06
    ld [hl], $04
    call Call_005_4df1
    ld a, $01
    call $2a51
    ld a, $64
    jp $0c74


    call $2af0
    call $2a36
    ld h, d
    ld l, $21
    ld a, [hl]
    add a
    jr nz, jr_005_4ed6

    ret nc

    ld l, $06
    dec [hl]
    ret nz

    ld a, $02
    jp $2a51


jr_005_4ed6:
    ld a, $ff
    ld [$cc35], a
    ret


    ld a, $ff
    ld [$cc45], a
    ld a, $80
    ld [$cc81], a
    ld e, $05
    ld a, [de]
    rst $00
    or $4e
    dec l
    ld c, a
    ld h, a
    ld c, a
    and d
    ld c, a
    xor l
    ld c, a
    cp e
    ld c, a
    call Call_005_4df1
    ld a, [$cc6c]
    rst $00
    ld de, $144f
    ld c, a
    ld d, c
    ld c, a
    add hl, de
    ld c, a
    rlca
    ld c, a
    ld e, $05
    ld a, $05
    ld [de], a
    ld a, $0a
    jp $2a51


    call $2099
    call $23aa
    jr jr_005_4f1e

    ld e, $05
    ld a, $04
    ld [de], a

jr_005_4f1e:
    ld h, d
    ld l, $24
    res 7, [hl]
    ld a, $0d
    call $2a51
    ld a, $65
    jp $0c74


    ld h, d
    ld l, $21
    bit 7, [hl]
    jp z, $2a36

    ld a, [$ccb6]
    cp $02
    jr nz, jr_005_4f51

    ld a, [$cc55]
    cp $09
    jr nz, jr_005_4f49

    ld a, $13
    ld [$cc04], a
    ret


jr_005_4f49:
    ld hl, $4a6d
    ld e, $01
    jp $008a


jr_005_4f51:
    call $2ad1
    ld l, $05
    ld a, $02
    ld [hl+], a
    ld [hl], a
    call Call_005_4961
    call $1432
    ld a, l
    ld [$cca8], a
    jp $1e39


    ld h, d
    ld l, $06
    ld a, [$cd00]
    and $80
    jr z, jr_005_4f74

    ld [hl], $04
    ret


jr_005_4f74:
    dec [hl]
    ret nz

    xor a
    ld [$cc77], a
    ld [$cc78], a
    ld a, $1c
    call $236b
    ld a, $fc
    jr nz, jr_005_4f88

    sra a

jr_005_4f88:
    call $23aa
    ld l, $25
    ld [hl], a
    ld l, $2b
    ld [hl], $3c
    ld l, $06
    ld [hl], $10
    call $29fe
    call $1dfa
    call Call_005_5d53
    jp Jump_005_5bae


    call $2391
    ret nz

    ld l, $24
    set 7, [hl]
    jp Jump_005_5ba7


    ld h, d
    ld l, $21
    bit 7, [hl]
    jp z, $2a36

    call $1e39
    jp Jump_005_5468


    ld e, $21
    ld a, [de]
    rlca
    jp nc, $2a36

    jr jr_005_4f51

    call $1832
    ld e, $05
    ld a, [de]
    rst $00
    reti


    ld c, a
    rst $38
    ld c, a
    add hl, hl
    ld d, b
    ld h, d
    ld d, b
    ld l, [hl]
    ld d, b
    add a
    ld d, b
    sub d
    ld d, b
    call $2b57
    xor a
    ld [$cd00], a
    ld [$cc89], a
    ld bc, $fc00
    call $2358
    ld l, $06
    ld [hl], $0a
    ld a, [$cc6b]
    rrca
    ld a, $01
    jr nc, jr_005_4ff6

    inc a

jr_005_4ff6:
    ld l, $05
    ld [hl], a
    ld a, $81
    ld [$cc77], a
    ret


    call Call_005_5043
    ret c

    ld a, [$cc57]
    inc a
    ld [$cc57], a
    call $2d65
    ld [$cc64], a
    call $2054
    ld [$cc66], a
    ld a, [$cc49]
    or $80
    ld [$cc63], a
    ld a, $06
    ld [$cc65], a
    ld a, $03
    ld [$cc67], a
    ret


    call Call_005_5043
    ret c

    ld a, $01
    ld [$cd00], a
    ld l, $05
    inc [hl]
    ld l, $06
    ld [hl], $1e
    ld a, $08
    call $24a7
    ld a, $02
    jp $2a51


Call_005_5043:
    ld c, $0c
    call $1f04
    call $2a36
    ld h, d
    ld l, $06
    ld a, [hl]
    or a
    jr z, jr_005_505a

    dec [hl]
    jr nz, jr_005_505a

    ld a, $04
    call $2a51

jr_005_505a:
    call $2130
    ld h, d
    ld l, $0f
    cp [hl]
    ret


    call $2391
    ret nz

    dec l
    inc [hl]
    ld bc, $ff00
    jp $2358


    ld c, $20
    call $1f04
    ret nz

    call $1432
    cp $07
    jr z, jr_005_50a5

    ld h, d
    ld l, $05
    inc [hl]
    inc l
    ld [hl], $1e
    ld a, $02
    call $2a51
    call $2391
    ret nz

jr_005_508b:
    xor a
    ld [$cc77], a
    jp Jump_005_5ba7


    call $2a36
    call Call_005_5d53
    ld c, $20
    call $1f04
    jp nz, Jump_005_5c88

    call $1108
    jr jr_005_508b

Jump_005_50a5:
jr_005_50a5:
    call $2054
    ld c, a
    ld b, $02

jr_005_50ab:
    ld a, b
    ld hl, $50e4
    rst $10
    ld a, c
    add [hl]
    ld h, $ce
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_005_50c0

    ld a, b
    inc a
    and $03
    ld b, a
    jr jr_005_50ab

jr_005_50c0:
    ld h, d
    ld l, $08
    ld [hl], b
    ld a, b
    swap a
    rrca
    inc l
    ld [hl], a
    ld l, $0f
    ld [hl], $ff
    ld bc, $fd00
    call $2358
    ld l, $10
    ld [hl], $14
    ld l, $04
    ld [hl], $09
    inc l
    ld [hl], $06
    ld a, $04
    jp $2a51


    ldh a, [rSB]
    db $10
    rst $38
    ld e, $05
    ld a, [de]
    rst $00
    ld a, [c]
    ld d, b
    ld [hl+], a
    ld d, c
    add hl, bc
    ld d, c
    ld a, $01
    ld [de], a
    ld [$cc88], a
    xor a
    ld e, $24
    ld [de], a
    ld a, $00
    ld [$cd00], a
    call Call_005_4df1
    ld a, $67
    jp $0c74


    xor a
    ld [$cc88], a
    ld hl, $cc63
    ld a, [$cc49]
    or $80
    ld [hl+], a
    ld a, [$cc5a]
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, $87
    ld [hl+], a
    ld [hl], $03
    ret


    ld a, $80
    ld [$cc81], a
    ld e, $05
    ld a, [de]
    rst $00
    jr nc, jr_005_517f

    ld b, [hl]
    ld d, c
    call $23aa
    inc l
    ld [hl], $b4
    ld l, $1b
    ld a, $0f
    ld [hl+], a
    ld [hl], a
    ld a, $7f
    call $04e7
    xor a
    ld [$cc6b], a
    ret


    ld c, $40
    call $1f04
    ld a, [$cc6b]
    or a
    jr z, jr_005_515a

    call $2aab
    ld l, $2a
    ld a, [hl]
    or a
    jr nz, jr_005_516a

jr_005_515a:
    ld c, $01
    ld a, [$cc46]
    or a
    jr z, jr_005_5164

    ld c, $04

jr_005_5164:
    ld l, $06
    ld a, [hl]
    sub c
    ld [hl], a
    ret nc

jr_005_516a:
    ld l, $1b
    ld a, $08
    ld [hl+], a
    ld [hl], a
    ld l, $2d
    ld [hl], $00
    xor a
    ld [$cc6a], a
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00

jr_005_517f:
    add e
    ld d, c
    ld b, [hl]
    ld d, c
    call $23aa
    ld l, $06
    ld [hl], $f0
    call Call_005_4df1
    ld a, [$cc6b]
    or a
    ld a, $02
    jr z, jr_005_5197

    ld a, $10

jr_005_5197:
    jp $2a51


    ld a, $80
    ld [$ccac], a
    ld e, $05
    ld a, [de]
    rst $00
    xor l
    ld d, c
    ld h, $42
    cp d
    ld d, c
    ldh [rHDMA1], a
    di
    ld d, c
    ld a, $01
    ld [de], a
    ld [$cc88], a
    ld e, $30
    xor a
    ld [de], a
    jp Jump_005_4df1


    ld a, $03
    ld [de], a
    ld h, d
    ld l, $06
    ld [hl], $1e
    ld a, $e8
    ld l, $0f
    ld [hl], a
    ld l, $0b
    cpl
    inc a
    add [hl]
    ld [hl], a
    xor a
    ld l, $14
    ld [hl+], a
    ld [hl+], a
    ld l, $08
    ld [hl+], a
    ld [hl], $0c
    ld l, $10
    ld [hl], $3c
    ld a, $03
    jp $2a51


    call $2391
    jr z, jr_005_51f8

    ld c, $20
    call $1f04
    call Call_005_5d53
    call Call_005_5c88
    jp $2a36


    ld h, d
    ld l, $2b
    ld [hl], $94

jr_005_51f8:
    xor a
    ld [$cc88], a
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    add hl, bc
    ld d, d
    daa
    ld d, d
    inc a
    ld d, d
    call $23aa
    ld l, $10
    ld [hl], $14
    ld l, $13
    ld a, $02
    call Call_005_5f42
    ld bc, $fe80
    call $2358
    ld a, $81
    ld [$cc77], a
    ld a, $2f
    jp $2a51


    call $2a36
    call Call_005_5f48
    call $1fdb
    ld c, $20
    call $1f04
    ret nz

    call $23aa
    jp Jump_005_5f6b


    call $2a36
    ld h, d
    ld l, $21
    ld a, [hl]
    ld [hl], $00
    rst $00
    ld e, [hl]
    ld d, d
    ld d, b
    ld d, d
    ld e, c
    ld d, d
    ld e, a
    ld d, d
    ld h, d
    ld d, d
    call $31d0
    ld a, $06
    ld [$c4ad], a
    ret


    ld hl, $c6a3
    ld a, [hl-]
    ld [hl], a
    ret


    jp $31fb


    ld bc, $fe80
    call $2358
    ld l, $08
    ld [hl], $01
    inc l
    ld [hl], $08
    ld l, $10
    ld [hl], $14
    ld a, $81
    ld [$cc77], a
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    add a
    ld d, d
    and c
    ld d, d
    or h
    ld d, d
    push de
    ld d, d
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $06
    ld [hl], $08
    ld l, $10
    ld [hl], $50
    ld l, $09
    ld [hl], $00
    ld a, $81
    ld [$cc77], a
    ld a, $53
    call $0c74
    call Call_005_5c7f
    call $2391
    ret nz

    ld l, $05
    inc [hl]
    ld l, $08
    ld [hl], $00
    ld a, $04
    call $2a51
    call $2a36
    ld a, [$cd00]
    and $01
    ret z

    call $14b5
    jp c, Jump_005_5c7f

    ld bc, $fe00
    call $2358
    ld l, $05
    inc [hl]
    ld l, $10
    ld [hl], $0a
    ld a, $18
    call $2a51
    call $2a36
    call Call_005_5d53
    call Call_005_5c88
    ld c, $18
    call $1f04
    ret nz

    xor a
    ld [$cc77], a
    ld [$cc88], a
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    cp $52
    ld d, $53
    add hl, hl
    ld d, e
    ld b, h
    ld d, e
    add a
    ld d, e
    sbc c
    ld d, e
    ld h, d
    ld l, e
    inc [hl]
    inc l
    ld [hl], $10
    xor a
    ld l, $08
    ld [hl+], a
    ld [hl], a
    call Call_005_4ded
    ld a, $01
    ld [$cbca], a
    ld a, $10
    call $2a51
    call $2391
    jr nz, jr_005_5323

    ld [hl], $5a
    dec l
    inc [hl]
    ld l, $10
    ld [hl], $14

jr_005_5323:
    call $2a36
    jp Jump_005_5c7f


    ld h, d
    ld l, $06
    ld a, [hl]
    or a
    jr z, jr_005_5332

    dec [hl]
    ret


jr_005_5332:
    ld h, d
    ld l, $0b
    ld a, [hl]
    cp $74
    jr nc, jr_005_5323

    ld l, $05
    inc [hl]
    inc l
    ld [hl], $60
    ld l, $10
    ld [hl], $28
    call $2391
    jr z, jr_005_5375

    ld a, [hl]
    sub $19
    jr c, jr_005_535f

    cp $32
    ret nc

    and $0f
    ret nz

    ld a, [hl]
    swap a
    and $01
    add a
    inc a
    ld l, $08
    ld [hl], a
    ret


jr_005_535f:
    inc a
    ret nz

    ld l, $08
    ld [hl], $00
    inc l
    ld [hl], $10
    ld a, $18
    ld bc, $f4f8
    call $2727
    ld a, $50
    jp $0c74


jr_005_5375:
    ld l, e
    inc [hl]
    ld bc, $fe80
    call $2358
    ld a, $18
    call $2a51
    ld a, $53
    call $0c74
    ld c, $18
    call $1f04
    jr nz, jr_005_5323

    ld l, $05
    inc [hl]
    inc l
    ld [hl], $f0
    ld a, $10
    call $2a51
    ld a, [$cc00]
    rrca
    ret nc

    call $2391
    ret nz

    xor a
    ld [$cbca], a
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    or e
    ld d, e
    jp z, $fa53

    ld d, e
    ld a, $01
    ld [de], a
    call Call_005_4df1
    call $2af0
    ld l, $10
    ld [hl], $14
    ld l, $08
    ld [hl], $00
    inc l
    ld [hl], $00
    jp Jump_005_5bae


    call $2a36
    ld h, d
    ld a, [$cc00]
    and $07
    jr nz, jr_005_53dd

    ld l, $10
    ld a, [hl]
    sub $05
    jr z, jr_005_53dd

    ld [hl], a

jr_005_53dd:
    ld a, [$cbb3]
    cp $02
    jp nz, Jump_005_5c88

    ld a, [$cc03]
    dec a
    jp nz, Jump_005_5ba7

    ld l, $05
    inc [hl]
    inc l
    ld [hl], $20
    ld l, $09
    ld [hl], $10
    ld l, $10
    ld [hl], $50
    call $2a36
    call $2391
    jp nz, Jump_005_5c88

    ld hl, $cbb3
    inc [hl]
    ld a, $02
    call $312f
    jp Jump_005_5ba7


    ld e, $05
    ld a, [de]
    rst $00
    add hl, de
    ld d, h
    dec [hl]
    ld d, h
    ld b, h
    ld d, h
    ld a, $01
    ld [de], a
    call Call_005_4df1
    xor a
    ld e, $24
    ld [de], a
    ld a, $4e
    call $0c74
    ld a, [$cc6b]
    and $7f
    ld a, $06
    jr z, jr_005_5432

    inc a

jr_005_5432:
    call $2a51
    call $2a36
    ld e, $21
    ld a, [de]
    inc a
    ret nz

    call $23aa
    ld l, $06
    ld [hl], $14
    call $2a36
    ld a, [$cc00]
    rrca
    jp c, $1e39

    call $1e42
    call $2391
    ret nz

    ld a, [$cc6b]
    bit 7, a
    jr nz, jr_005_5461

    call $2a2a
    jr jr_005_5468

jr_005_5461:
    ld a, $03
    ld [$cc6a], a
    jr jr_005_5468

Call_005_5468:
Jump_005_5468:
jr_005_5468:
    ld hl, $cc6a
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    pop hl

Call_005_5471:
Jump_005_5471:
    ld h, d
    ld l, $04
    ld [hl+], a
    ld [hl], $00
    cp $0a
    jr z, jr_005_5482

    cp $0c
    jr z, jr_005_5482

    cp $0d
    ret nz

jr_005_5482:
    jp Jump_005_496f


    ld a, $80
    ld [$cc81], a
    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cd00]
    and $0e
    ret nz

    call Call_005_4226
    ld a, [$cc34]
    or a
    jp nz, Jump_005_4e8f

    call Call_005_5468
    call $1832
    ld a, [$cca4]
    and $81
    ret nz

    call $2b04
    ld a, [$d101]
    cp $0a
    jr z, jr_005_54d2

    ld a, [$cc48]
    rrca
    ret c

    ld a, [$cca7]
    ld b, a
    ld a, [$cc77]
    or b
    jr nz, jr_005_54d2

    ld e, $2d
    ld a, [de]
    or a
    jr nz, jr_005_54d2

    call $1b23
    ret c

    call $123e
    ret c

jr_005_54d2:
    xor a
    ld [$cc81], a
    ld [$cca7], a
    ld a, [$cc50]
    and $20
    jp nz, Jump_005_58b2

    call Call_005_4275
    call $1213
    call $2b5f
    ld a, [$cca7]
    or a
    ret nz

    call Call_005_5d53
    call Call_005_5c4c
    ld a, [$cc78]
    and $40
    jr nz, jr_005_551c

    ld a, [$cc79]
    bit 6, a
    jr nz, jr_005_551c

    ld a, [$cc77]
    or a
    jr nz, jr_005_551c

    ld a, [$cc75]
    ld c, a
    ld a, [$cc7c]
    or c
    jr nz, jr_005_551c

    call Call_005_5e3d
    call Call_005_5e74
    call Call_005_5f89

jr_005_551c:
    call Call_005_59e2
    ld a, [$cc77]
    or a
    jr z, jr_005_553f

    bit 7, a
    jr nz, jr_005_5531

    ld e, $15
    ld a, [de]
    bit 7, a
    call z, Call_005_5828

jr_005_5531:
    ld hl, $ccaf
    res 4, [hl]
    call Call_005_5f48
    call Call_005_5c88
    jp $2a36


jr_005_553f:
    ld a, [$cc79]
    bit 6, a
    jp nz, Jump_005_5bae

    ld e, $2d
    ld a, [de]
    or a
    jp nz, Jump_005_55c0

    ld h, d
    ld l, $24
    set 7, [hl]
    ld a, [$cc78]
    or a
    jp nz, Jump_005_5627

    call $1dfa
    ld a, [$cc48]
    rrca
    jr c, jr_005_55b8

    ld hl, $460c
    ld e, $06
    call $008a
    ld a, b
    or a
    jp nz, $2a16

    ld a, [$cc75]
    and $0f
    dec a
    cp $02
    jr c, jr_005_5593

    ld hl, $ccb8
    bit 6, [hl]
    jr z, jr_005_5593

    ld c, $88
    call Call_005_5be1
    call Call_005_5828
    ld a, [$cc47]
    rlca
    ld c, $02
    jr c, jr_005_55b0

    jr jr_005_55ae

jr_005_5593:
    ld a, [$ccaf]
    ld b, a
    ld e, $09
    ld a, [$cc47]
    ld [de], a
    or b
    rlca
    ld c, $00
    jr c, jr_005_55b0

    ld c, $01
    ld a, [$cc7c]
    or a
    jr nz, jr_005_55b0

    call Call_005_5bdf

jr_005_55ae:
    ld c, $07

jr_005_55b0:
    call Call_005_59bf
    ld a, [$cc7b]
    or a
    ret nz

jr_005_55b8:
    jp $2aab


Jump_005_55bb:
    ld e, $10
    xor a
    ld [de], a
    ret


Jump_005_55c0:
    ld hl, $ccb8
    bit 6, [hl]
    ret z

    ld e, $2c
    ld a, [de]
    ld e, $09
    ld [de], a
    ret


Jump_005_55cd:
    ld e, a
    ld a, [$c6c5]
    ld bc, $0208
    cp $13
    jr z, jr_005_55df

    cp $14
    jr nz, jr_005_5607

    ld bc, $0310

jr_005_55df:
    ld a, e
    or c
    ld c, a
    push de
    ld de, $cec1
    ld hl, $cc6e
    srl c
    call c, Call_005_560f
    ld e, $c3
    ld l, $6e
    srl c
    call c, Call_005_560f
    pop de
    ld a, [$cc70]
    cp b
    ret c

    ld hl, $c6a2
    ld a, [hl+]
    cp [hl]
    ld a, $29
    call c, $16eb

jr_005_5607:
    ld hl, $cc6e
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_005_560f:
    ld a, [de]
    dec e
    rlca
    jr nc, jr_005_561d

    ld a, [de]
    cpl
    adc [hl]
    ld [hl+], a
    inc e
    ld a, [de]
    cpl
    jr jr_005_5622

jr_005_561d:
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc e
    ld a, [de]

jr_005_5622:
    adc [hl]
    ld [hl+], a
    ret nc

    inc [hl]
    ret


Jump_005_5627:
    ld a, [$cc78]
    and $0f
    ld hl, $ccaf
    res 4, [hl]
    rst $00
    sbc d
    ld e, e
    inc a
    ld d, [hl]
    sub c
    ld d, [hl]
    sbc e
    ld d, [hl]
    cp l
    ld d, [hl]
    call Call_005_4df1
    call Call_005_56dc
    ld l, $06
    ld [hl], $0a
    ld a, [$cc78]
    bit 6, a
    jr nz, jr_005_565a

    ld a, $2e
    call $1717
    ld b, $0b
    jr c, jr_005_567a

    ld c, $88
    jr jr_005_565c

jr_005_565a:
    ld c, $78

jr_005_565c:
    ld a, $02
    ld [$cc6a], a
    ld a, $04
    ld [$cc6c], a
    ld a, $80
    ld [$ccac], a
    ld h, d
    ld l, $2b
    ld [hl], c
    ld l, $24
    res 7, [hl]
    ld a, $5f
    call $0c74
    ld b, $0a

jr_005_567a:
    ld hl, $cc78
    ld a, [hl]
    and $f0
    or $02
    ld [hl], a
    ld a, b
    call $2a51
    jp $2bc5


Jump_005_568a:
    ld hl, $cc78
    set 6, [hl]
    jr jr_005_565a

    call $2391
    jp nz, Jump_005_5c88

    ld hl, $cc78
    inc [hl]
    call Call_005_5774
    call $1dfa
    ld h, d
    ld l, $24
    set 7, [hl]
    ld a, [$cc78]
    rlca
    jr nc, jr_005_56b1

    res 7, [hl]
    call $1e0c

jr_005_56b1:
    call $2aab
    call Call_005_5704
    call Call_005_582b
    jp Jump_005_5c88


    ld a, $80
    ld [$ccac], a
    call $2a36
    ld h, d
    xor a
    ld l, $24
    ld [hl], a
    ld l, $21
    bit 7, [hl]
    ret z

    ld [$cc78], a
    ld a, $02
    ld [$cc6c], a
    ld a, $02
    jp Jump_005_5471


Call_005_56dc:
    ld a, $15
    call $236b
    ld a, $23
    jr z, jr_005_56e7

    ld a, $14

jr_005_56e7:
    ld h, d
    ld l, $10
    ld [hl+], a
    ld [hl+], a
    inc l
    ld a, $03
    ld [hl], a
    ld l, $35
    ld [hl], $00
    ret


Call_005_56f5:
    ld a, $15
    call $236b
    ld a, $23
    jr z, jr_005_5700

    ld a, $14

jr_005_5700:
    ld e, $11
    ld [de], a
    ret


Call_005_5704:
    ld e, $35
    ld a, [de]
    rst $00
    ld c, $57
    add hl, sp
    ld d, a
    ld a, $57
    ld a, [$cc46]
    and $01
    jr nz, jr_005_571c

    call Call_005_56f5
    ld a, [$cc47]
    ret


jr_005_571c:
    ld a, $01
    ld [de], a
    ld a, $08

jr_005_5721:
    push af
    ld e, $08
    ld a, [de]
    add a
    add a
    add a
    call Call_005_582b
    pop af
    dec a
    jr nz, jr_005_5721

    ld e, $06
    ld a, $0d
    ld [de], a
    ld a, $88
    call $0c74
    ld bc, $0105
    jr jr_005_5741

    ld bc, $fffb

jr_005_5741:
    call $2391
    jr z, jr_005_574d

    ld a, [hl]
    and $03
    jr z, jr_005_575d

    jr jr_005_5767

jr_005_574d:
    ld l, $35
    inc b
    ld [hl], b
    jr nz, jr_005_5758

    call Call_005_56dc
    jr jr_005_5767

jr_005_5758:
    ld l, $06
    ld a, $0c
    ld [hl], a

jr_005_575d:
    ld l, $11
    ld a, [hl]
    add c
    bit 7, a
    jr z, jr_005_5766

    xor a

jr_005_5766:
    ld [hl], a

jr_005_5767:
    ld a, [$cc47]
    bit 7, a
    ret z

    ld e, $08
    ld a, [de]
    swap a
    rrca
    ret


Call_005_5774:
    call $2a36
    ld hl, $cc78
    ld a, [$cc46]
    bit 1, a
    jr nz, jr_005_578f

    ld a, $3c
    call $236b
    ret z

    ld e, $07
    ld a, [de]
    dec a
    ld [de], a
    jr z, jr_005_5793

    ret


jr_005_578f:
    bit 7, [hl]
    jr z, jr_005_579a

jr_005_5793:
    res 7, [hl]
    ld a, $0b
    jp $2a51


jr_005_579a:
    set 7, [hl]
    ld e, $07
    ld a, $78
    ld [de], a
    call $2bc5
    ld a, $0c
    jp $2a51


Jump_005_57a9:
    ld a, [$cc78]
    and $0f
    jr z, jr_005_57be

    ld hl, $ccaf
    res 4, [hl]
    rst $00
    cp [hl]
    ld d, a
    pop bc
    ld d, a
    db $e3
    ld d, a
    cp l
    ld d, [hl]

jr_005_57be:
    jp Jump_005_5b9a


    call Call_005_4df1
    ld hl, $cc78
    inc [hl]
    call Call_005_56dc
    call $1dfa
    ld a, $2e
    call $1717
    jr nc, jr_005_57d9

    ld a, $17
    jr jr_005_57e0

jr_005_57d9:
    ld a, $03
    ld [$cc78], a
    ld a, $0a

jr_005_57e0:
    jp $2a51


    xor a
    ld [$cc77], a
    ld h, d
    ld l, $24
    set 7, [hl]
    ld a, [$cc7c]
    or a
    jr nz, jr_005_5810

    ld l, $08
    ld a, [$cc47]
    add a
    jr c, jr_005_5805

    ld c, a
    and $18
    jr z, jr_005_5805

    ld a, c
    swap a
    and $03
    ld [hl], a

jr_005_5805:
    set 0, [hl]
    call Call_005_5704
    call Call_005_582b
    call Call_005_5c88

jr_005_5810:
    ld h, d
    ld l, $07
    dec [hl]
    bit 7, [hl]
    jr z, jr_005_5825

    call $041a
    and $1f
    add $32
    ld [hl], a
    ld b, $91
    call $24af

jr_005_5825:
    jp $2a36


Call_005_5828:
    ld a, [$cc47]

Call_005_582b:
    ld e, a
    ld h, d
    ld l, $09
    bit 7, [hl]
    jr z, jr_005_5835

    ld [hl], e
    ret


jr_005_5835:
    bit 7, a
    jr nz, jr_005_5853

    sub [hl]
    add $04
    and $1f
    cp $09
    jr c, jr_005_5874

    sub $10
    cp $09
    jr c, jr_005_585f

    ld bc, $0100
    bit 7, a
    jr nz, jr_005_5885

    ld b, $ff
    jr jr_005_5885

jr_005_5853:
    ld bc, $00fb
    ld a, [$cc77]
    or a
    jr z, jr_005_5885

    ld c, b
    jr jr_005_5885

jr_005_585f:
    ld bc, $01fb
    cp $03
    jr c, jr_005_5885

    ld b, $ff
    cp $06
    jr nc, jr_005_5885

    ld a, e
    xor $10
    ld [hl], a
    ld b, $00
    jr jr_005_5885

jr_005_5874:
    ld bc, $ff05
    cp $03
    jr c, jr_005_5885

    ld b, $01
    cp $06
    jr nc, jr_005_5885

    ld a, e
    ld [hl], a
    ld b, $00

jr_005_5885:
    ld l, $12
    inc [hl]
    ld a, [hl+]
    cp [hl]
    ret c

    dec l
    ld [hl], $00
    ld l, $09
    ld a, [hl]
    add b
    and $1f
    ld [hl], a
    ld l, $11
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    add c
    jr z, jr_005_58a7

    bit 7, a
    jr nz, jr_005_58a7

    cp b
    jr c, jr_005_58a5

    ld a, b

jr_005_58a5:
    ld [hl], a
    ret


jr_005_58a7:
    ld l, $10
    xor a
    ld [hl+], a
    inc l
    ld [hl], l
    dec a
    ld l, $09
    ld [hl], a
    ret


Jump_005_58b2:
    call Call_005_4256
    ld a, [$ccb6]
    bit 5, a
    jr z, jr_005_58cb

    ld a, [$cc78]
    or a
    jr nz, jr_005_58ef

    inc a
    ld [$cc78], a
    call $2bc5
    jr jr_005_58ef

jr_005_58cb:
    ld hl, $cc78
    ld a, [hl]
    ld [hl], $00
    or a
    jr z, jr_005_58ef

    ld a, [$ccb7]
    cp $30
    jr z, jr_005_58ef

    ld a, $02
    ld [$cc77], a
    call $2bc5
    ld bc, $fe60
    call $2358
    ld a, [$cc47]
    ld l, $09
    ld [hl], a

jr_005_58ef:
    call $2b5f
    ld a, [$cca7]
    or a
    ret nz

    call Call_005_5d53
    call Call_005_5c4c
    ld a, [$cc78]
    or a
    jp nz, Jump_005_57a9

    ld a, [$cc79]
    bit 6, a
    jp z, Jump_005_5913

    xor a
    ld [$cc77], a
    jp Jump_005_5bae


Jump_005_5913:
    call Call_005_5a7f
    ret z

    ld e, $2d
    ld a, [de]
    or a
    ret nz

    ld a, [$ccb4]
    cp $02
    call z, Call_005_41f3
    ld a, [$cc73]
    or a
    jr z, jr_005_5931

    ld e, $33
    ld a, [de]
    and $30
    jr nz, jr_005_5938

jr_005_5931:
    ld a, [$ccb7]
    cp $40
    jr nz, jr_005_5956

jr_005_5938:
    ld a, $21
    call $236b
    jr z, jr_005_5956

    ld c, $88
    call Call_005_5be1
    ld a, $06
    ld [$cc73], a
    call Call_005_5828
    ld c, $02
    ld a, [$cc47]
    rlca
    jr c, jr_005_5971

    jr jr_005_596f

jr_005_5956:
    xor a
    ld [$cc73], a
    ld c, a
    ld a, [$cc47]
    ld e, $09
    ld [de], a
    rlca
    jr c, jr_005_5971

    call Call_005_5bdf
    ld c, $01
    ld a, [$cc7c]
    or a
    jr nz, jr_005_5971

jr_005_596f:
    ld c, $07

jr_005_5971:
    ld hl, $ccb6
    ld a, [hl+]
    or [hl]
    and $bf
    call z, Call_005_43e3
    call Call_005_59bf
    ld e, $09
    ld a, [de]
    add $04
    and $1f
    cp $09
    jr nc, jr_005_59a4

    ld hl, $ccb6
    ld a, [hl+]
    or a
    jr nz, jr_005_59a4

    ld a, [hl]
    cp $90
    jr nz, jr_005_59a4

    ld e, $0b
    ld a, [de]
    and $0f
    cp $09
    jr nc, jr_005_59a4

    ld a, [de]
    and $f0
    add $09
    ld [de], a

jr_005_59a4:
    ld e, $33
    ld a, [de]
    and $30
    jr nz, jr_005_59b7

    ld a, [$ccb6]
    bit 4, a
    jr z, jr_005_59b7

    ld a, $01
    ld [$cc83], a

jr_005_59b7:
    ld a, [$cc7b]
    or a
    ret nz

    jp $2aab


Call_005_59bf:
    ld a, c
    rrca
    push af
    jr c, jr_005_59c9

    call Call_005_5bae
    jr jr_005_59cc

jr_005_59c9:
    call Call_005_5bbc

jr_005_59cc:
    pop af
    rrca
    jr nc, jr_005_59df

    push af
    call Call_005_5c88
    jr z, jr_005_59de

    ld c, a
    pop af
    rrca
    ret nc

    ld a, c
    jp Jump_005_55cd


jr_005_59de:
    pop af

jr_005_59df:
    jp Jump_005_55bb


Call_005_59e2:
    ld a, [$cc77]
    and $0f
    rst $00
    xor $59
    ei
    ld e, c
    add hl, hl
    ld e, d
    ld h, d
    ld l, $0f
    bit 7, [hl]
    ret z

    ld a, $02
    ld [$cc77], a
    jr jr_005_5a1c

    ld hl, $cc77
    inc [hl]
    bit 7, [hl]
    jr nz, jr_005_5a17

    ld hl, $ccb8
    bit 6, [hl]
    jr nz, jr_005_5a17

    ld l, $b6
    ld [hl], $00
    call Call_005_5bdf
    ld a, [$cc47]
    ld e, $09
    ld [de], a

jr_005_5a17:
    ld a, $53
    call $0c74

jr_005_5a1c:
    ld a, [$cc75]
    ld c, a
    ld a, [$cc7b]
    or c
    ld a, $18
    call z, $2a51
    xor a
    ld e, $12
    ld [de], a
    inc e
    ld [de], a
    ld hl, $cc77
    bit 7, [hl]
    jr z, jr_005_5a39

    ld e, $33
    ld [de], a

jr_005_5a39:
    bit 5, [hl]
    ld c, $20
    jr z, jr_005_5a41

    ld c, $0a

jr_005_5a41:
    call $1f04
    ld l, $15
    jr z, jr_005_5a55

    ld a, [hl]
    bit 7, a
    ret nz

    cp $03
    ret c

    ld [hl], $03
    dec l
    ld [hl], $00
    ret


jr_005_5a55:
    xor a
    ld [hl-], a
    ld [hl], a
    ld [$cc77], a
    ld e, $36
    ld [de], a
    call Call_005_5bae
    call Call_005_5f6b
    call Call_005_4275
    ld a, [$ccb6]
    dec a
    cp $02
    jr nc, jr_005_5a74

    ld a, $04
    ld [$ccb5], a

jr_005_5a74:
    ld a, $a3
    call $0c74
    call Call_005_5d53
    jp Jump_005_5b9a


Call_005_5a7f:
    ld a, [$cc77]
    and $0f
    rst $00
    adc e
    ld e, d
    and [hl]
    ld e, d
    ret nz

    ld e, d
    ld a, [$ccb0]
    or a
    ret nz

    ld e, $33
    ld a, [de]
    and $30
    ret nz

    ld hl, $ccb6
    ld a, [hl+]
    or [hl]
    bit 4, a
    ret nz

    ld h, d
    ld l, $14
    xor a
    ld [hl+], a
    ld [hl+], a
    jr jr_005_5aab

    ld a, $53
    call $0c74

jr_005_5aab:
    ld a, [$cc75]
    ld c, a
    ld a, [$cc7b]
    or c
    ld a, $18
    call z, $2a51
    ld a, $02
    ld [$cc77], a
    call Call_005_5bdf
    ld h, d
    ld l, $15
    bit 7, [hl]
    jr z, jr_005_5ad0

    ld e, $33
    ld a, [de]
    and $c0
    jr nz, jr_005_5b23

    jr jr_005_5b18

jr_005_5ad0:
    ld a, [$ccb0]
    or a
    jp nz, Jump_005_5b8e

    ld e, $33
    ld a, [de]
    and $30
    jp nz, Jump_005_5b6b

    ld a, [$ccb6]
    bit 4, a
    jr z, jr_005_5aee

    ld a, [$cc45]
    and $40
    jp nz, Jump_005_5b73

jr_005_5aee:
    ld e, $0b
    ld a, [de]
    bit 3, a
    jr z, jr_005_5afc

    ld a, [$ccb7]
    cp $90
    jr z, jr_005_5b6b

jr_005_5afc:
    ld hl, $ccb6
    ld a, [hl+]
    cp $04
    jp z, Jump_005_568a

    cp $01
    jr nz, jr_005_5b15

    ld a, [hl]
    or a
    jr nz, jr_005_5b15

    ld a, $5f
    call $0c74
    jp $2a2a


jr_005_5b15:
    call Call_005_5828

jr_005_5b18:
    ld l, $0a
    ld e, $14
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc e
    ld a, [de]
    adc [hl]
    ld [hl+], a

jr_005_5b23:
    ld c, $24
    ld a, [$cc77]
    bit 5, a
    jr z, jr_005_5b2e

    ld c, $0e

jr_005_5b2e:
    ld l, $14
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl-], a
    bit 7, a
    jr nz, jr_005_5b43

    cp $03
    jr c, jr_005_5b43

    xor a
    ld [hl+], a
    ld [hl], $03

jr_005_5b43:
    call Call_005_5d53
    ld e, $33
    ld a, [de]
    and $30
    jr nz, jr_005_5b6b

    call Call_005_43e3
    call Call_005_5c88
    call $2a36
    ld e, $0b
    ld a, [de]
    cp $a9
    jr c, jr_005_5b69

    ld a, [$ccb6]
    cp $10
    jr nz, jr_005_5b69

    ld a, $82
    ld [$cd02], a

jr_005_5b69:
    xor a
    ret


Jump_005_5b6b:
jr_005_5b6b:
    ld e, $0b
    ld a, [de]
    and $f8
    add $01
    ld [de], a

Jump_005_5b73:
jr_005_5b73:
    xor a
    ld e, $14
    ld [de], a
    inc e
    ld [de], a
    ld [$cc77], a
    ld a, [$ccb4]
    cp $02
    call z, Call_005_41f3
    ld a, $a3
    call $0c74
    call Call_005_5bae
    xor a
    ret


Jump_005_5b8e:
    ld e, $12
    xor a
    ld [de], a
    ld a, $ff
    ld [de], a
    ld e, $09
    ld [de], a
    jr jr_005_5b73

Call_005_5b9a:
Jump_005_5b9a:
    ld h, d
    ld l, $04
    ld [hl], $01
    inc l
    ld [hl], $00
    ld l, $35
    ld [hl], $00
    ret


Jump_005_5ba7:
    call Call_005_5b9a
    ld l, $1a
    set 7, [hl]

Call_005_5bae:
Jump_005_5bae:
    ld e, $30
    ld a, [de]
    cp $10
    jr nz, jr_005_5bba

    call $2b2f
    jr nz, jr_005_5bbc

jr_005_5bba:
    xor a
    ld [de], a

Call_005_5bbc:
jr_005_5bbc:
    call $2b2f
    jr z, jr_005_5bd3

    rlca
    jr nc, jr_005_5bd3

    ld hl, $df00
    ld a, $03
    ld [hl+], a
    ld [hl], $1a
    inc l
    inc [hl]
    ld a, $a3
    call $0c74

jr_005_5bd3:
    ld h, d
    ld a, $10
    ld l, $30
    cp [hl]
    jp nz, $2a51

    jp $2a36


Call_005_5bdf:
    ld c, $00

Call_005_5be1:
    ld e, $36
    ld a, [de]
    cp c
    jr z, jr_005_5bfd

    ld a, c
    ld [de], a
    and $7f
    ld hl, $5c34
    rst $10
    ld e, $10
    ld a, [hl+]
    or a
    jr z, jr_005_5bf6

    ld [de], a

jr_005_5bf6:
    xor a
    ld e, $12
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

jr_005_5bfd:
    ld b, $02
    ld e, $00
    ld a, [$ccb6]
    cp $01
    jr z, jr_005_5c21

    cp $02
    jr z, jr_005_5c21

    cp $05
    jr z, jr_005_5c1a

    inc b
    cp $06
    jr z, jr_005_5c1a

    cp $04
    jr z, jr_005_5c1a

    inc b

jr_005_5c1a:
    call $2b2f
    jr z, jr_005_5c21

    ld e, $03

jr_005_5c21:
    ld a, e
    add b
    add c
    and $7f
    ld hl, $5c34
    rst $10
    ld a, [hl]
    ld h, d
    ld l, $11
    ld [hl-], a
    bit 7, c
    ret nz

    ld [hl], a
    ret


    jr z, jr_005_5c36

jr_005_5c36:
    ld e, $14
    jr z, @+$2f

    ld e, $3c
    nop
    ld b, $28
    jr z, jr_005_5c69

    inc a
    inc a
    inc a
    inc d
    inc bc
    ld e, $14
    jr z, jr_005_5c77

    ld e, $3c

Call_005_5c4c:
Jump_005_5c4c:
    ld e, $04
    ld a, [de]
    cp $02
    jr z, jr_005_5c7a

    ld a, [$cc77]
    rlca
    jr c, jr_005_5c7a

    ld c, $01
    or a
    jr z, jr_005_5c5f

    inc c

jr_005_5c5f:
    ld h, d
    ld l, $2d
    ld a, [hl]
    or a
    ret z

    sub c
    jr c, jr_005_5c7a

    ld [hl], a

jr_005_5c69:
    ld l, $2c
    call Call_005_43e5
    ld a, [de]
    ld c, a
    ld b, $32
    ld hl, $ccaf
    res 5, [hl]

jr_005_5c77:
    jp Jump_005_5c90


jr_005_5c7a:
    ld e, $2d
    xor a
    ld [de], a
    ret


Call_005_5c7f:
Jump_005_5c7f:
    ld e, $10
    ld a, [de]
    ld b, a
    ld e, $09
    ld a, [de]
    jr jr_005_5c9d

Call_005_5c88:
Jump_005_5c88:
    ld e, $10
    ld a, [de]
    ld b, a
    ld e, $09
    ld a, [de]
    ld c, a

Jump_005_5c90:
    bit 7, c
    jr nz, jr_005_5cdd

    ld e, $33
    ld a, [de]
    ld e, a
    call $5d00
    jr nz, jr_005_5ca0

jr_005_5c9d:
    ld c, a
    ld e, $00

jr_005_5ca0:
    ld a, c
    ld hl, $5ce0
    rst $10
    ld a, e
    and [hl]
    ld e, a
    call $1fff
    ld c, $00
    ld b, e
    ld a, b
    and $f0
    jr nz, jr_005_5cc3

    ld a, [hl+]
    or [hl]
    jr z, jr_005_5cc3

    dec l
    ld e, $0a
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    inc c

jr_005_5cc3:
    ld a, b
    and $0f
    jr nz, jr_005_5cda

    ld l, $c3
    ld a, [hl-]
    or [hl]
    jr z, jr_005_5cda

    ld e, $0c
    ld a, [de]
    add [hl]
    ld [de], a
    inc l
    inc e
    ld a, [de]
    adc [hl]
    ld [de], a
    set 1, c

jr_005_5cda:
    ld a, c
    or a
    ret


jr_005_5cdd:
    xor a
    ld c, a
    ret


    rst $08
    jp $c3c3


    jp $c3c3


    jp $33f3


    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ccf
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    db $fc
    call z, $cccc
    call z, $cccc
    call z, $2179
    ld c, l
    inc h
    rst $10
    ld a, [hl]
    and $03
    ret nz

    ld a, [hl]
    rlca
    jr c, jr_005_5d33

    rlca
    jr c, jr_005_5d43

    rlca
    jr c, jr_005_5d23

    ld a, e
    and $cc
    cp $04
    ld a, $00
    ret z

    ld a, e
    and $3c
    cp $08
    ld a, $10
    ret


jr_005_5d23:
    ld a, e
    and $c3
    cp $01
    ld a, $00
    ret z

    ld a, e
    and $33
    cp $02
    ld a, $10
    ret


jr_005_5d33:
    ld a, e
    and $c3
    cp $80
    ld a, $08
    ret z

    ld a, e
    and $cc
    cp $40
    ld a, $18
    ret


jr_005_5d43:
    ld a, e
    and $33
    cp $20
    ld a, $08
    ret z

    ld a, e
    and $3c
    cp $10
    ld a, $18
    ret


Call_005_5d53:
    ld e, $33
    xor a
    ld [de], a
    ld a, [$cc48]
    rrca
    ret c

    ld a, [$ccb6]
    sub $08
    jr nz, jr_005_5d66

    dec a
    jr jr_005_5d70

jr_005_5d66:
    ld h, d
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    call Call_005_5d85

jr_005_5d70:
    ld e, $33
    ld [de], a
    ret


    call Call_005_5d85

jr_005_5d77:
    ld b, $80
    cp $ff
    ret z

    rra
    rl b
    rra
    rl b
    jr nz, jr_005_5d77

    ret


Call_005_5d85:
    ld a, $01
    ldh [$8b], a
    ld hl, $5da9
    ld a, [$cc50]
    and $20
    jr z, jr_005_5d96

    ld hl, $5db9

jr_005_5d96:
    ld a, [hl+]
    add b
    ld b, a
    ld a, [hl+]
    add c
    ld c, a
    push hl
    call $14bf
    pop hl
    ldh a, [$8b]
    rla
    ldh [$8b], a
    jr nc, jr_005_5d96

    ret


    db $fd
    db $fd
    nop
    dec b
    ld a, [bc]
    ei
    nop
    dec b
    ld sp, hl
    ld sp, hl
    dec b
    nop
    ei
    add hl, bc
    dec b
    nop
    db $fd
    db $fd
    nop
    dec b
    ld a, [bc]
    ei
    nop
    dec b
    ld sp, hl
    ld sp, hl
    dec b
    nop
    ei
    add hl, bc
    dec b
    nop
    push hl
    ld hl, $cc7c
    res 4, [hl]
    pop hl
    ret


Call_005_5dd1:
    push hl
    ld hl, $cc7c
    set 4, [hl]
    pop hl
    ret


Jump_005_5dd9:
    xor a
    ld e, $2d
    ld [de], a
    ld h, d
    ld l, $04
    ld a, [hl]
    cp $02
    ret z

    ld a, [$ccb5]
    cp $10
    call nc, Call_005_5dd1
    and $03
    jr z, jr_005_5df4

    dec a
    jr z, jr_005_5e02

    ret


jr_005_5df4:
    ld l, $0b
    ld a, [hl]
    add $05
    and $f0
    add $08
    sub [hl]
    jr c, jr_005_5e10

    jr jr_005_5e0c

jr_005_5e02:
    ld l, $0d
    ld a, [hl]
    and $f0
    add $08
    sub [hl]
    jr c, jr_005_5e10

jr_005_5e0c:
    ld a, [hl]
    inc a
    jr jr_005_5e12

jr_005_5e10:
    ld a, [hl]
    dec a

jr_005_5e12:
    ld [hl], a
    ld l, $0b
    ld a, [hl+]
    and $0f
    sub $07
    cp $03
    ret nc

    inc l
    ld a, [hl+]
    and $0f
    sub $07
    cp $03
    ret nc

    call $2b57
    ld e, $2d
    xor a
    ld [de], a
    ld [$cc6c], a
    ld e, $01
    ld a, [de]
    or a
    ld a, $02
    jp z, Jump_005_5471

    ld [$cc6a], a
    ret


Call_005_5e3d:
    ld hl, $ccee
    bit 1, [hl]
    ret nz

    ld a, [$cc49]
    cp $03
    ret nz

    ld bc, $8214
    ld l, $03
    ld a, [$cc4c]
    cp b
    ret nz

    ld a, [$ccb3]
    cp c
    ret nz

    ld e, $08
    ld a, [de]
    cp l
    ret nz

    call $2a80
    ret z

    ld hl, $cceb
    inc [hl]
    ld a, [hl]
    cp $5a
    ret c

    pop hl
    ld hl, $ccee
    set 1, [hl]
    ld a, $05
    jp Jump_005_5471


Call_005_5e74:
    ld a, [$ccb6]
    cp $08
    jp z, $5ed3

    ld a, [$cc49]
    or a
    ret nz

    ld a, [$cc47]
    and $e7
    ret nz

    call $2a80
    ret nc

    ld e, $08
    ld a, [de]
    ld hl, $5ebf
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    call $1423
    cp $20
    ret nz

    ld a, $01
    call Call_005_5f42
    ld e, $08
    ld a, [de]
    ld l, a
    add a
    add l
    ld hl, $5ec7
    rst $10
    ld e, $10
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ld e, $14
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, $81
    ld [$cc77], a
    jp Jump_005_4df1


    db $f4
    nop
    nop
    rlca
    ld [$0000], sp
    ld hl, sp+$23
    ld b, b
    cp $14
    ld h, b
    cp $0f
    ld b, b
    cp $14
    ld h, b
    cp $fa
    ld b, a
    call z, $e64f
    rst $20
    jr nz, jr_005_5f25

    ld a, c
    add a
    swap a
    ld hl, $5f27
    rst JumpTable
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
    call $14bf
    jr c, jr_005_5f25

    ld a, [$cc47]
    ld e, $09
    ld [de], a
    add a
    swap a
    ld c, a
    add a
    add c
    ld hl, $5f2f
    rst $10
    ld a, [$cc7b]
    or a
    jr nz, jr_005_5f0e

    ld e, $08
    ld a, c
    ld [de], a

jr_005_5f0e:
    ld e, $10
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ld e, $14
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    call $5f3b
    ld a, $81
    ld [$cc77], a
    xor a
    ret


jr_005_5f25:
    or d
    ret


    ei
    nop
    nop
    add hl, bc
    dec de
    nop
    nop
    or $0f
    ld h, b
    cp $14
    ld h, b
    cp $1e
    ld b, b
    cp $14
    ld h, b
    cp $af
    ld e, $37
    ld [de], a
    inc e
    ld [de], a
    ret


Call_005_5f42:
    ld e, $37
    ld [de], a
    inc e
    ld a, l
    ld [de], a

Call_005_5f48:
    ld e, $37
    ld a, [de]
    or a
    ret z

    ld hl, $5f65
    rst JumpTable
    inc e
    ld a, [de]
    ld c, a
    and $f0
    add [hl]
    ld b, a
    inc hl
    ld a, c
    and $0f
    swap a
    add [hl]
    ld c, a
    call $1e62
    ld e, $09
    ld [de], a
    ret


    ld [bc], a
    ld [$080c], sp

Call_005_5f6b:
Jump_005_5f6b:
    ld e, $37
    ld a, [de]
    or a
    ret z

    ld hl, $5f65
    rst JumpTable
    inc e
    ld a, [de]
    ld c, a
    and $f0
    add [hl]
    ld e, $0b
    ld [de], a
    inc hl
    ld a, c
    and $0f
    swap a
    add [hl]
    ld e, $0d
    ld [de], a
    jr @-$4c

Call_005_5f89:
    ld a, [$ccb6]
    cp $08
    ret z

    ld a, [$cc47]
    ld c, a
    and $e7
    ret nz

    ld h, d
    ld l, $09
    xor c
    cp [hl]
    ret nz

    add a
    swap a
    ld c, a
    add a
    add a
    add c
    ld hl, $5ff6
    rst $10
    ld e, $33
    ld a, [de]
    and [hl]
    cp [hl]
    ret nz

    call Call_005_5fdb
    ret nc

    call Call_005_5fdb
    ret nc

    ld a, $81
    ld [$cc77], a
    ld bc, $fe40
    call $2358
    ld l, $2d
    ld [hl], $00
    ldh a, [$8b]
    cp $05
    jr z, jr_005_5fd6

    cp $06
    jr z, jr_005_5fd6

    pop hl
    ld a, $12
    call Call_005_5471
    jr jr_005_600a

jr_005_5fd6:
    ld l, $10
    ld [hl], $32
    ret


Call_005_5fdb:
    inc hl
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    push hl
    call $1423
    ldh [$8b], a
    ld hl, $7c9a
    call $1ddd
    pop hl
    ret nc

    ld c, a
    ld e, $09
    ld a, [de]
    cp c
    scf
    ret z

    xor a
    ret


    ret nz

    db $fc
    db $fd
    db $fc
    ld [bc], a
    inc bc
    nop
    inc b
    dec b
    inc b
    jr nc, jr_005_600a

    db $fd
    ld [$0c02], sp
    nop
    ei
    dec b
    ei

jr_005_600a:
    ld e, $05
    ld a, [de]
    rst $00
    ld d, $60
    ld l, e
    ld h, b
    xor [hl]
    ld h, b
    pop bc
    ld h, b
    call $23aa
    ld a, [$cc75]
    ld c, a
    ld a, [$cc7b]
    or c
    ld a, $18
    call z, $2a51
    ld a, $53
    call $0c74
    call Call_005_60dc
    jr z, jr_005_6039

    ld hl, $605f
    rst $10
    ld a, [hl]
    ld e, $10
    ld [de], a
    ret


jr_005_6039:
    ld a, [$cd0d]
    ld b, a
    ld h, d
    ld l, $0b
    ld a, [hl]
    sub b
    ld [hl], b
    ld l, $0f
    ld [hl], a
    ld l, $1a
    res 6, [hl]
    ld l, $05
    ld [hl], $02
    xor a
    ld l, $10
    ld [hl], a
    ld l, $14
    ld [hl+], a
    ld [hl], $ff
    inc a
    ld [$ccab], a
    ld l, $2f
    set 0, [hl]
    ret


    inc d
    add hl, de
    inc hl
    dec l
    scf
    ld b, c
    ld d, b
    ld e, d
    ld h, h
    ld l, [hl]
    ld a, b
    call $1fdb
    ld c, $20
    call $1f04
    jp nz, $2a36

    ld h, d
    ld l, $2f
    bit 0, [hl]
    res 0, [hl]
    call nz, $1108
    call Call_005_4961
    ld a, [$cc49]
    or a
    jr nz, jr_005_609c

    ld bc, $0500
    call $1423
    cp $20
    jr nz, jr_005_609c

    call $2099
    ld l, $0b
    ld a, [hl]
    sub $06
    ld [hl], a

jr_005_609c:
    xor a
    ld [$cc77], a
    ld [$cc78], a
    ld a, $a3
    call $0c74
    call Call_005_5d53
    jp Jump_005_5ba7


    ld c, $20
    call $1f04
    jp nz, $2a36

    ld a, $82
    ld [$cd02], a
    ld e, $05
    ld a, $03
    ld [de], a
    ret


    ld a, [$cd00]
    cp $01
    ret nz

    call Call_005_60dc
    ld h, d
    ld l, $0b
    ld a, [hl]
    sub b
    ld [hl], b
    ld l, $0f
    ld [hl], a
    ld l, $1a
    set 6, [hl]
    ld l, $05
    ld [hl], $01
    ret


Call_005_60dc:
    ld h, d
    ld l, $0b
    ld a, [hl+]
    add $05
    ld b, a
    inc l
    ld c, [hl]
    ld l, $09
    ld a, [hl]
    add a
    swap a
    and $03
    ld hl, $612f
    rst JumpTable
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl]
    ldh [$8c], a
    ld a, $01
    ldh [$8b], a

jr_005_60fb:
    ldh a, [$8d]
    add b
    ld b, a
    ldh a, [$8c]
    add c
    ld c, a
    call $14bf
    jr nc, jr_005_6120

    ld a, $85
    call $2b3d
    jr c, jr_005_6125

    ldh a, [$92]
    ld hl, $6137
    call $1de7
    jr c, jr_005_6125

    ldh a, [$8b]
    inc a
    ldh [$8b], a
    jr jr_005_60fb

jr_005_6120:
    call $1435
    or a
    ret z

jr_005_6125:
    ldh a, [$8b]
    cp $0b
    jr c, jr_005_612d

    ld a, $0b

jr_005_612d:
    or a
    ret


    ld hl, sp+$00
    nop
    ld [$0008], sp
    nop
    ld hl, sp+$43
    ld h, c
    ld b, l
    ld h, c
    ld b, l
    ld h, c
    ld b, l
    ld h, c
    ld b, l
    ld h, c
    ld b, l
    ld h, c
    db $eb
    jr nz, jr_005_6146

jr_005_6146:
    ld e, $04
    ld a, [de]
    rst $00
    ld c, [hl]
    ld h, c
    xor d
    ld h, c
    call $2b8a
    call $2b57
    ld a, [$cc6a]
    or a
    jr nz, jr_005_619e

    call Call_005_41b5
    xor a
    call $2a51
    call $1dfa
    call $23a5
    ld l, $24
    ld a, $80
    ld [hl+], a
    inc l
    ld a, $06
    ld [hl+], a
    ld [hl+], a
    ld l, $01
    ld a, [hl]
    cp $02
    ret nz

    ld l, $06
    ld [hl], $e0
    inc l
    ld [hl], $01
    ld a, $9a
    call $0c74
    jr jr_005_6199

jr_005_6185:
    ld a, $83
    call $0c74

jr_005_618a:
    xor a
    call $2a16
    ld a, $01
    ld [$cc71], a
    ld e, $01
    ld a, [de]
    cp $02
    ret nz

jr_005_6199:
    ld b, $02
    jp $24af


jr_005_619e:
    xor a
    call $2a20
    ld a, $01
    ld [$cc71], a
    jp Jump_005_496f


    ld a, [$cc6a]
    or a
    jr nz, jr_005_619e

    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cd00]
    and $0e
    ret nz

    call Call_005_4226
    ld a, [$cc34]
    or a
    jr nz, jr_005_618a

    call $1832
    ld a, [$cca4]
    and $81
    ret nz

    call $2b04
    ld h, d
    ld l, $01
    ld a, [hl]
    cp $02
    jr nz, jr_005_61e1

    ld l, $06
    call $0237
    jr z, jr_005_6185

    jr jr_005_61f9

jr_005_61e1:
    call Call_005_4275
    ld a, [$cc78]
    or a
    jr nz, jr_005_619e

    ld hl, $460c
    ld e, $06
    call $008a
    ld e, $01
    ld a, [de]
    cp b
    ld a, b
    jr nz, jr_005_619e

jr_005_61f9:
    call Call_005_5d53
    call Call_005_5c4c
    call Call_005_5bdf
    ld h, d
    ld l, $01
    ld a, [hl]
    cp $02
    jr nz, jr_005_620e

    ld l, $10
    srl [hl]

jr_005_620e:
    ld l, $2d
    ld a, [hl]
    or a
    jr nz, jr_005_6282

    ld l, $24
    set 7, [hl]
    ld l, $0f
    bit 7, [hl]
    jr z, jr_005_6229

    ld c, $20
    call $1f04
    jr nz, jr_005_6229

    xor a
    ld [$cc77], a

jr_005_6229:
    ld a, [$ccaf]
    ld b, a
    ld l, $09
    ld a, [$cc47]
    ld [hl], a
    or b
    rlca
    jr c, jr_005_6282

    ld l, $01
    ld a, [hl]
    cp $02
    jr nz, jr_005_6249

    ld l, $21
    bit 7, [hl]
    res 7, [hl]
    ld a, $87
    call nz, $0c74

jr_005_6249:
    ld a, [$cc7b]
    or a
    call z, $2aab
    ld a, [$ccb6]
    cp $08
    jr z, jr_005_6260

    ld a, [$cc7c]
    or a
    jr nz, jr_005_6260

    call Call_005_5c88

jr_005_6260:
    call $2b2f
    jr z, jr_005_6277

    rlca
    jr nc, jr_005_6277

    call $3ac6
    jr nz, jr_005_6277

    ld [hl], $0f
    inc l
    inc [hl]
    ld bc, $0500
    call $2215

jr_005_6277:
    ld e, $30
    ld a, [de]
    or a
    jp z, $2a36

    xor a
    jp $2a51


jr_005_6282:
    call $2b2f
    jr nz, jr_005_6260

    xor a
    jp $2a51


    ld e, $04
    ld a, [de]
    rst $00
    sub e
    ld h, d
    cp c
    ld h, d
    call $2b8a
    call $2b57
    call Call_005_41b5
    ld h, d
    ld l, $04
    inc [hl]
    ld l, $24
    ld a, $80
    ld [hl+], a
    inc l
    ld a, $06
    ld [hl+], a
    ld [hl+], a
    call Call_005_62d2
    jp $1dfa


    xor a
    call $2a16
    ld b, $02
    jp $24af


    ld a, [$c4ab]
    or a
    ret nz

    call Call_005_4226
    call $1832
    ld a, [$cd00]
    and $0e
    ret nz

    ld a, [$cca4]
    rlca
    ret c

    call Call_005_5c4c

Call_005_62d2:
    ld hl, $d121
    ld a, [hl]
    and $3f
    ld e, $31
    ld [de], a
    ret


    ld hl, $5588
    ld e, $06
    jp $008a


    call Call_005_4845
    ld e, $04
    ld a, [de]
    rst $00
    dec b
    ld h, e
    ld a, a
    ld h, e
    sbc h
    ld h, e
    and d
    ld h, h
    sub d
    ld h, e
    rrca
    ld h, l
    ldh a, [$65]
    ld c, h
    ld h, [hl]
    ld d, d
    ld h, a
    xor b
    ld h, a
    inc a
    ld h, a
    ld b, a
    ld l, b
    adc l
    ld l, b
    xor a
    ld [$cc9f], a
    call Call_005_41b5
    ld c, $02
    ld a, [$c641]
    and $0f
    cp $0f
    jr z, jr_005_631d

    dec c
    cp $08
    jr nc, jr_005_631d

    dec c

jr_005_631d:
    ld a, c
    ld e, $3f
    ld [de], a
    or a
    jr z, jr_005_6326

    ld a, $01

jr_005_6326:
    ld e, $28
    ld [de], a
    or a
    jr z, jr_005_6334

    call $196b
    jr z, jr_005_6334

    ld a, $02
    ld [de], a

jr_005_6334:
    call $23a5
    ld l, $0b
    ld a, $10
    ld [hl+], a
    inc l
    ld [hl], $b8
    ld l, $0f
    ld a, $88
    ld [hl+], a
    ld [hl], $32
    ld l, $26
    ld a, $08
    ld [hl+], a
    ld [hl], a
    ld l, $2d
    ld [hl], $03
    call $041a
    and $07
    jr z, jr_005_6359

    ld a, $01

jr_005_6359:
    ld e, $03
    ld [de], a
    ld hl, $6b9e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $3a
    ld a, [hl+]
    ld [de], a
    inc e
    ld [de], a
    ld e, $18
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld a, [hl]
    ld e, $09
    ld [de], a
    call Call_005_6425
    call $1df1
    ld a, $19
    jp $2a51


    call Call_005_6392
    ret nz

    ld a, [$cc02]
    or a
    jp nz, Jump_005_6836

    ld a, $2b
    ld [$cc51], a
    jp $0c74


Call_005_6392:
    ld hl, $d12d
    dec [hl]
    ret nz

    call $23a5
    xor a
    ret


    ld a, [$cba0]
    or a
    jr nz, jr_005_63d2

    ld hl, $d107
    ld a, [hl]
    or a
    jr z, jr_005_63ab

    dec [hl]
    ret


jr_005_63ab:
    ld l, $3d
    ld a, [hl]
    ld l, $09
    cp [hl]
    jr z, jr_005_63b8

    call Call_005_65be
    jr jr_005_63c0

jr_005_63b8:
    ld l, $06
    dec [hl]
    call z, Call_005_6425
    jr z, jr_005_63d8

jr_005_63c0:
    call $1fdb
    ld e, $3e
    ld a, [de]
    or a
    ret z

    call $1cde
    jr nc, jr_005_63d2

    call $1c35
    jr c, jr_005_6442

jr_005_63d2:
    call Call_005_659f
    jp $2a36


jr_005_63d8:
    ld hl, $d13e
    ld a, [hl]
    or a
    jp nz, Jump_005_6836

    inc [hl]
    call Call_005_6ab7
    ld l, $10
    ld [hl], $50
    ld l, $07
    ld [hl], $3c
    ld e, $3f
    ld a, [de]
    ld e, $03
    or a
    jr z, jr_005_63fc

    set 2, e
    cp $01
    jr z, jr_005_63fc

    set 3, e

jr_005_63fc:
    call $041a
    and e
    ld hl, $6bb8
    rst $10
    ld a, [hl]
    ld hl, $6bc8
    rst JumpTable
    ld e, $0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [de], a
    ld e, $0d
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld e, $3a
    ld [de], a
    inc e
    ld [de], a
    ld a, [hl]
    ld e, $09
    ld [de], a
    ld e, $18
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a

Call_005_6425:
    ld hl, $d118
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $3d
    ld a, [hl+]
    ld [de], a
    ld c, a
    ld e, $06
    ld a, [hl+]
    ld [de], a
    ld e, $18
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld a, c
    cp $ff
    ret z

    jp Jump_005_65d2


jr_005_6442:
    call $2b8a
    call Call_005_68df
    ld a, $01
    ld [$ccab], a
    ld [$cc02], a
    ld a, $3c
    ld [$cc85], a
    ld e, $06
    xor a
    ld [de], a
    call Call_005_6aca
    ld b, a
    ld hl, $d02d
    ld [hl], $18
    ld e, $09
    ld l, $2c
    ld [hl], a
    xor $10
    ld [de], a
    ld e, $28
    ld a, [de]
    ld hl, $649f
    rst $10
    ld a, [hl]
    ld e, $10
    ld [de], a
    ld e, $3a
    ld a, $fc
    ld [de], a
    ld a, $0f
    ld [$cd19], a
    ld e, $04
    ld a, $03
    ld [de], a
    ld a, b
    add $04
    add a
    add a
    swap a
    and $01
    xor $01
    add $10
    ld b, a
    ld e, $28
    ld a, [de]
    add a
    add b
    call $2a51
    ld a, $85
    jp $0c74


    jr z, jr_005_64d3

    inc a
    ld a, [$d02d]
    or a
    jr nz, jr_005_64ad

    ld a, $01
    ld [$cca4], a

jr_005_64ad:
    ld h, d
    ld e, $3a
    ld a, [de]
    or a
    jr z, jr_005_64d3

    ld e, $0f
    ld a, [de]
    or a
    jr nz, jr_005_64c2

    ld e, $3a
    ld l, $15
    ld a, [de]
    inc a
    ld [de], a
    ld [hl], a

jr_005_64c2:
    ld c, $40
    call $1f04
    call $1fdb
    call Call_005_68ae
    call $149b
    ret z

    jr jr_005_64eb

jr_005_64d3:
    ld a, [$cca4]
    or a
    ret z

    ld e, $21
    ld a, [de]
    cp $ff
    jp nz, $2a36

    ld e, $2d
    ld a, $78
    ld [de], a
    ld e, $04
    ld a, $04
    ld [de], a
    ret


jr_005_64eb:
    ld e, $09
    call $26a3
    ld hl, $6507
    rst JumpTable
    ld e, $0b
    ld a, [de]
    add [hl]
    ld b, a
    inc hl
    ld e, $0d
    ld a, [de]
    add [hl]
    ld c, a
    ld h, d
    ld l, $0b
    ld [hl], b
    ld l, $0d
    ld [hl], c
    ret


    inc b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    ld hl, $d106
    ld a, [hl]
    or a
    jr nz, jr_005_652d

    inc [hl]
    call Call_005_6ab7
    ld l, $0f
    ld [hl], $ff
    ld a, $01
    ld l, $3a
    ld [hl+], a
    ld [hl], a
    ld e, $09
    ld a, [de]
    xor $10
    ld [de], a
    call Call_005_65d2

jr_005_652d:
    ld e, $28
    ld a, [de]
    ld c, a
    ld e, $0f
    ld a, [de]
    dec a
    ld [de], a
    cp $f9
    ret nc

    ld a, c
    or a
    jr z, jr_005_6541

    ld a, [de]
    cp $e9
    ret nc

jr_005_6541:
    ld a, [$c641]
    bit 4, a
    jr nz, jr_005_6581

    ld l, $04
    ld [hl], $06
    ld e, $28
    ld a, [de]
    ld hl, $6599
    rst JumpTable
    ld e, $26
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, [$c641]
    and $0f
    ld bc, $0700
    jr z, jr_005_6574

    ld c, $05
    cp $05
    jr nc, jr_005_6574

    call $041a
    and $03
    ld hl, $6595
    rst $10
    ld c, [hl]

jr_005_6574:
    call $184b
    xor a
    ld [$cca4], a
    ld [$cc02], a
    jp Jump_005_6ad0


jr_005_6581:
    ld a, $0b
    ld l, $04
    ld [hl], a
    ld l, $08
    ld [hl+], a
    ld [hl], $ff
    ld l, $10
    ld [hl], $28
    ld bc, $0709
    jp $184b


    ld bc, $0302
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b

Call_005_659f:
    ld h, d
    ld e, $28
    ld a, [de]
    cp $02
    ret z

    ld c, $00
    call $1f04
    ld l, $3c
    ld a, [hl]
    dec a
    ld [hl], a
    ret nz

    ld a, $16
    ld [hl], a
    ld l, $14
    ld a, [hl]
    cpl
    inc a
    ld [hl+], a
    ld a, [hl]
    cpl
    ld [hl], a
    ret


Call_005_65be:
    ld hl, $d13b
    dec [hl]
    ret nz

    ld e, $3a
    ld a, [de]
    ld [hl], a
    ld l, $09
    ld e, $3d
    ld l, [hl]
    ldh [$8b], a
    ld a, [de]
    call $1f92

Call_005_65d2:
Jump_005_65d2:
    ld e, $3e
    ld a, [de]
    or a
    jr z, jr_005_65ee

    ld h, d
    ld l, $09
    ld a, [hl]
    call $26a4
    add $04
    ld b, a
    ld e, $28
    ld a, [de]
    add a
    add a
    add b
    ld l, $30
    cp [hl]
    call nz, $2a51

jr_005_65ee:
    or d
    ret


    call Call_005_659f
    call $2a36
    call $1832
    ld a, [$cc51]
    cp $2c
    jr z, jr_005_6608

    ld a, $2c
    ld [$cc51], a
    call $0c74

jr_005_6608:
    ld l, $3d
    ld a, [hl]
    ld l, $09
    cp [hl]
    call nz, Call_005_65be
    call Call_005_6ad0
    call $1fdb
    ld e, $18
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    call $1d18
    jp nc, Jump_005_68ae

    ld e, $18
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    or $04
    ld l, a
    ld [hl], $04
    inc l
    ld [hl], $00
    ld a, [de]
    or $03
    ld l, a
    ld a, [hl]
    ld e, $2e
    ld [de], a
    ld e, $04
    ld a, $07
    ld [de], a
    ld e, $28
    ld a, [de]
    or a
    call z, Call_005_6b73
    ret z

    add $16
    jp $2a51


    call $2a36
    ld e, $28
    ld a, [de]
    cp $01
    jp nz, Jump_005_66e8

    ld e, $26
    ld a, $08
    ld [de], a
    inc e
    ld a, $0a
    ld [de], a
    call Call_005_6a8c
    jr nz, jr_005_666a

    call $1d18
    jr c, jr_005_667c

jr_005_666a:
    call Call_005_6a9a
    jr nz, jr_005_66df

    call $1d18
    jr c, jr_005_667c

    ld e, $16
    xor a
    ld [de], a
    inc e
    ld [de], a
    jr jr_005_66df

jr_005_667c:
    ld l, $2f
    set 7, [hl]
    ld b, $00
    ld l, $0b
    ld e, l
    ld a, [de]
    cp [hl]
    jr z, jr_005_6690

    inc b
    jr c, jr_005_668f

    inc [hl]
    jr jr_005_6690

jr_005_668f:
    dec [hl]

jr_005_6690:
    ld l, $0d
    ld e, l
    ld a, [de]
    cp [hl]
    jr z, jr_005_669e

    inc b
    jr c, jr_005_669d

    inc [hl]
    jr jr_005_669e

jr_005_669d:
    dec [hl]

jr_005_669e:
    ld a, b
    or a
    jr nz, jr_005_66df

    ld l, $0e
    ld a, [hl]
    sub $40
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a
    cp $f8
    jr nz, jr_005_66df

    ld l, $2f
    set 5, [hl]
    ld a, $1a
    call $2a51
    ld h, d
    ld l, $04
    ld [hl], $08
    inc l
    ld [hl], $00
    ld l, $07
    ld [hl], $20
    ld e, $18
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_005_66df

    ld a, [de]
    add $04
    ld l, a
    ld [hl], $01
    add $05
    ld l, a
    ld [hl], $80
    xor a
    ld e, $18
    ld [de], a

jr_005_66df:
    ld e, $26
    ld a, $02
    ld [de], a
    inc e
    ld a, $02
    ld [de], a

Jump_005_66e8:
    ld e, $18
    ld a, [de]
    or a
    ret z

    ld h, a
    inc e
    ld a, [de]
    ld l, a
    ld a, [hl+]
    or a
    jr z, jr_005_672a

    inc l
    bit 7, [hl]
    jr nz, jr_005_672a

    ld e, $25
    ld a, [de]
    or a
    ret z

    ld e, $18
    ld a, [de]
    ld h, a
    ld l, $c3
    ld a, $80
    ld [hl], a
    xor a
    ld l, $eb
    ld [hl], a
    ld l, $e4
    ld [hl], a
    ld e, $2e
    ld a, [de]
    ld hl, $69b2
    rst $10
    ld a, $0e
    ld [de], a
    ld e, $29
    ld a, [de]
    ld b, a
    ld a, [hl]
    add b
    ld [de], a
    ld e, $28
    ld a, [de]
    or a
    jr nz, jr_005_672a

    ld a, $0a
    jr jr_005_6732

jr_005_672a:
    ld h, d
    ld l, $16
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, $06

jr_005_6732:
    ld e, $04
    ld [de], a
    ld e, $3d
    ld a, [de]
    ld e, $09
    ld [de], a
    ret


    call $2a36
    call $2396
    ret nz

    ld l, $04
    ld [hl], $06
    ld l, $08
    ld a, [hl]
    ld l, $0f
    ld [hl], a
    ld a, $04
    jp $2a51


    call $2a36
    ld e, $05
    ld a, [de]
    rst $00
    ld h, c
    ld h, a
    ld [hl], e
    ld h, a
    add d
    ld h, a
    adc a
    ld h, a
    call $2396
    ret nz

    ld l, $05
    ld [hl], $01
    ld l, $14
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $13
    jp $2a51


    ld c, $40
    call $1f04
    ret nz

    ld l, $05
    ld [hl], $02
    ld l, $07
    ld [hl], $40
    ret


    call $2396
    ret nz

    ld l, $05
    ld [hl], $03
    ld a, $08
    jp $2a51


    ld h, d
    ld l, $0f
    dec [hl]
    ld a, [hl]
    cp $e9
    ret nc

    ld l, $04
    ld [hl], $06
    ld l, $29
    inc [hl]
    ld l, $14
    ld a, $40
    ld [hl+], a
    ld [hl], $00
    jp Jump_005_6ad0


    call $2a36
    ld e, $05
    ld a, [de]
    rst $00
    or l
    ld h, a
    or $67
    inc e
    ld l, b
    call $1832
    ld a, $3c
    ld [$cc85], a
    ld a, $01
    ld [de], a
    ld h, d
    ld l, $29
    ld a, [hl+]
    ld b, a
    or [hl]
    jr z, jr_005_67d2

    ld a, [hl]
    cp b
    ld a, $01
    jr z, jr_005_67d2

    inc a
    jr c, jr_005_67d2

    inc a

jr_005_67d2:
    ld hl, $67ee
    rst JumpTable
    ld c, [hl]
    inc hl
    ld b, [hl]
    call $184b
    call Call_005_6aca
    call $26a4
    add $04
    ld b, a
    ld e, $28
    ld a, [de]
    add a
    add a
    add b
    jp $2a51


    inc c
    rlca
    ld [$0607], sp
    rlca
    rlca
    rlca
    call Call_005_659f
    call $1832
    ld a, $80
    ld [$cba0], a
    ld a, $1f
    ld [$cca4], a
    ld l, $09
    ld [hl], $18
    ld l, $10
    ld [hl], $78
    ld l, $05
    ld [hl], $02
    ld e, $28
    ld a, [de]
    add a
    add a
    add $07
    jp $2a51


    call Call_005_659f
    call $1fdb
    call $2142
    ret c

Jump_005_6826:
    xor a
    ld [$cba0], a
    ld [$cca4], a
    ld [$cc02], a
    ld [$ccab], a
    call Call_005_6b8e

Jump_005_6836:
    ld a, [$cc62]
    ld [$cc51], a
    call $0c74
    pop af
    xor a
    ld [$cc3a], a
    jp $2c29


    inc e
    ld a, [de]
    or a
    jr nz, jr_005_6878

    call Call_005_659f
    call $1e5a
    call $26a4
    ld h, d
    ld l, $08
    cp [hl]
    ld [hl], a
    jr z, jr_005_6868

    add $04
    ld b, a
    ld e, $28
    ld a, [de]
    add a
    add a
    add b
    call $2a51

jr_005_6868:
    call $1832
    ld hl, $c641
    set 5, [hl]
    ld e, $09
    ld a, [de]
    rlca
    jp nc, $1fdb

    ret


jr_005_6878:
    dec a
    ld [de], a
    ret nz

    ld bc, $070b
    call $184b
    ld e, $09
    ld a, $18
    ld [de], a
    call $23a5
    ld l, $10
    ld [hl], $78
    call Call_005_659f
    call $1832
    call $1fdb
    ld e, $28
    ld a, [de]
    add a
    add a
    add $07
    ld hl, $c641
    bit 4, [hl]
    res 4, [hl]
    call nz, $2a51
    call $2142
    ret c

    jp Jump_005_6826


Call_005_68ae:
Jump_005_68ae:
    ld e, $0b
    ld a, [de]
    cp $f0
    jr c, jr_005_68b6

    xor a

jr_005_68b6:
    cp $20
    jr nc, jr_005_68bf

    ld a, $20
    ld [de], a
    jr jr_005_68c6

jr_005_68bf:
    cp $78
    jr c, jr_005_68c6

    ld a, $78
    ld [de], a

jr_005_68c6:
    ld e, $0d
    ld a, [de]
    cp $f0
    jr c, jr_005_68ce

    xor a

jr_005_68ce:
    cp $08
    jr nc, jr_005_68d7

    ld a, $08
    ld [de], a
    jr jr_005_68de

jr_005_68d7:
    cp $98
    jr c, jr_005_68de

    ld a, $98
    ld [de], a

jr_005_68de:
    ret


Call_005_68df:
    ld a, $41
    call $1717
    jr nc, jr_005_68f6

    cp $01
    jr nz, jr_005_68f6

    ld b, $94
    call $24af
    ret nz

    ld hl, $c641
    set 4, [hl]
    ret


jr_005_68f6:
    ld e, $2a
    xor a
    ld [de], a
    ld e, $29
    ld [de], a
    ld e, $06
    ld a, $05
    ld [de], a

jr_005_6902:
    ld e, $03
    ld a, [de]
    ld hl, $6984
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $0440
    ld a, b
    call Call_005_6948
    jr c, jr_005_6917

    jr nz, jr_005_6902

jr_005_6917:
    ld e, $06
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_005_6902

    ld a, $20
    ldh [$8c], a
    ld e, $06
    ld a, $05
    ld [de], a

jr_005_6927:
    ldh a, [$8c]
    dec a
    ldh [$8c], a
    jr z, jr_005_6947

    ld hl, $69a4
    call $0440
    call Call_005_6b00
    jr z, jr_005_6927

    ld d, $d0
    call Call_005_69cf
    ld d, $d1
    ld e, $06
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_005_6927

jr_005_6947:
    ret


Call_005_6948:
    push af
    ld hl, $69c1
    rst $10
    ld a, [hl]
    call $1717
    pop hl
    jr c, jr_005_6956

    or d
    ret


jr_005_6956:
    ld a, h
    ldh [$8b], a
    cp $05
    jp nc, Jump_005_69cf

    or a
    jr nz, jr_005_6970

    ld a, [$c641]
    bit 7, a
    ret nz

    ld e, $2b
    ld a, [de]
    or a
    ret nz

    inc a
    ld [de], a
    jr jr_005_697e

jr_005_6970:
    dec a
    ld hl, $6980
    rst $10
    ld b, [hl]
    ld e, $2c
    ld a, [de]
    and b
    ret nz

    ld a, [de]
    or b
    ld [de], a

jr_005_697e:
    jr jr_005_69e3

    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $6988
    sub [hl]
    ld l, c
    inc d
    ld c, $0e
    ld e, $20
    nop
    nop
    nop
    nop
    nop
    jr z, jr_005_69c2

    jr z, @+$16

    nop
    ld [bc], a
    inc b
    ld [$000a], sp
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc [hl]
    inc a
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_005_69cb

    jr nz, jr_005_69cd

    jr nz, jr_005_69cf

    jr nz, jr_005_69b1

jr_005_69b1:
    jr nz, jr_005_69ef

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
    ld bc, $0200

jr_005_69c2:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h

jr_005_69cb:
    inc bc
    ld [bc], a

jr_005_69cd:
    ld [bc], a
    ld [bc], a

Call_005_69cf:
Jump_005_69cf:
jr_005_69cf:
    call $3ea7
    scf
    ret nz

    ld [hl], $14
    ld e, $0b
    call $2202
    ldh a, [$8b]
    ld l, $c3
    ld [hl-], a
    ld [hl], a
    xor a
    ret


jr_005_69e3:
    call $3ea7
    scf
    ret nz

    ld [hl], $15
    ld l, $c2
    ldh a, [$8b]
    ld [hl+], a

jr_005_69ef:
    ld [hl], a
    call $21fd
    or a
    ret


Call_005_69f5:
    ld b, $00

jr_005_69f7:
    ld hl, $d0c0

jr_005_69fa:
    ld l, $c0
    ld a, [hl+]
    or a
    jr z, jr_005_6a0c

    ld a, [hl+]
    cp $15
    jr nz, jr_005_6a0c

    ld a, [hl-]
    cp b
    jr nz, jr_005_6a0c

    dec l
    xor a
    ret


jr_005_6a0c:
    inc h
    ld a, h
    cp $e0
    jr c, jr_005_69fa

    inc b
    ld a, b
    cp $05
    jr c, jr_005_69f7

    xor a
    ld c, $00
    ld hl, $6a83
    rst $10
    ld a, [hl]
    ld b, a
    xor a
    ldh [$91], a

jr_005_6a24:
    ld hl, $d0c0

jr_005_6a27:
    ld l, $c0
    ld a, [hl+]
    or a
    jr z, jr_005_6a63

    ld a, [hl+]
    cp $14
    jr nz, jr_005_6a63

    ld a, [hl-]
    cp b
    jr nz, jr_005_6a63

    ld l, $cb
    ld l, [hl]
    ld e, $0b
    ld a, [de]
    sub l
    jr nc, jr_005_6a41

    cpl
    inc a

jr_005_6a41:
    ldh [$8c], a
    ld l, $cd
    ld l, [hl]
    ld e, $0d
    ld a, [de]
    sub l
    jr nc, jr_005_6a4e

    cpl
    inc a

jr_005_6a4e:
    ld l, a
    ldh a, [$8c]
    add l
    ld l, a
    ldh a, [$91]
    or a
    jr z, jr_005_6a5d

    ldh a, [$8d]
    cp l
    jr c, jr_005_6a63

jr_005_6a5d:
    ld a, l
    ldh [$8d], a
    ld a, h
    ldh [$91], a

jr_005_6a63:
    inc h
    ld a, h
    cp $e0
    jr c, jr_005_6a27

    ldh a, [$91]
    or a
    jr nz, jr_005_6a7e

    inc c
    ld a, c
    cp $09
    jr nc, jr_005_6a7c

    ld hl, $6a83
    rst $10
    ld a, [hl]
    ld b, a
    jr jr_005_6a24

jr_005_6a7c:
    and d
    ret


jr_005_6a7e:
    ld h, a
    ld l, $c0
    xor a
    ret


    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c

Call_005_6a8c:
    ld e, $16
    xor a
    ld [de], a
    inc e
    ld [de], a
    ld c, $03
    call $2274
    ret nz

    jr jr_005_6aa0

Call_005_6a9a:
    ld c, $03
    call $227b
    ret nz

jr_005_6aa0:
    ld l, $2f
    ld a, [hl]
    bit 7, a
    jr nz, jr_005_6aaf

    and $60
    ret nz

    ld l, $0f
    bit 7, [hl]
    ret nz

jr_005_6aaf:
    ld e, $16
    ld a, h
    ld [de], a
    inc e
    xor a
    ld [de], a
    ret


Call_005_6ab7:
    ld h, d
    ld l, $0f
    ld a, $f8
    ld [hl+], a
    ld l, $14
    ld [hl], $40
    inc l
    ld [hl], $00
    ld l, $3c
    ld a, $16
    ld [hl+], a
    ret


Call_005_6aca:
    call $1e5a
    and $18
    ret


Call_005_6ad0:
Jump_005_6ad0:
    call Call_005_69f5
    jr nz, jr_005_6ae2

    ld e, $18
    ld a, h
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    ld e, $25
    xor a
    ld [de], a
    jr jr_005_6aeb

jr_005_6ae2:
    ld e, $04
    ld a, $09
    ld [de], a
    inc e
    xor a
    ld [de], a
    ret


jr_005_6aeb:
    ld e, $18
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    or $0b
    ld l, a
    ld a, [hl+]
    ld b, a
    inc l
    ld a, [hl]
    ld c, a
    call $1e62
    ld e, $3d
    ld [de], a
    ret


Call_005_6b00:
    ld a, b
    sub $05
    ld b, a
    rst $00
    ld a, $6b
    ld a, $6b
    ld a, $6b
    ld a, $6b
    ld a, $6b
    ld h, $6b
    ld e, e
    ld l, e
    ld e, e
    ld l, e
    rla
    ld l, e
    ld hl, $c6a5
    ld a, [hl+]
    or [hl]
    ret z

    ld a, $01
    call $1751
    ld a, $0c
    jr jr_005_6b6f

    ld a, $0a
    ldh [$8b], a
    call $1717
    jr nc, jr_005_6b59

    ld hl, $c6aa
    ld a, [hl]
    sub $04
    jr c, jr_005_6b59

    daa
    ld [hl], a
    call $17b1
    or d
    ret


    ld a, b
    add $05
    ldh [$8b], a
    call $1717
    jr nc, jr_005_6b59

    ld a, b
    ld hl, $c6b5
    rst $10
    ld a, [hl]
    sub $05
    jr c, jr_005_6b59

    daa
    ld [hl], a
    call $17b1
    or d
    ret


jr_005_6b59:
    xor a
    ret


    ld hl, $c6a2
    ld a, [hl]
    cp $0c
    jr nc, jr_005_6b65

    xor a
    ret


jr_005_6b65:
    sub $04
    ld [hl], a
    ld hl, $cbea
    set 2, [hl]
    ld a, $0b

jr_005_6b6f:
    ldh [$8b], a
    or d
    ret


Call_005_6b73:
    ld e, $07
    ld a, $30
    ld [de], a
    ld e, $0f
    ld a, [de]
    ld e, $08
    ld [de], a
    call $149b
    jr nz, jr_005_6b8c

    ld e, $0f
    xor a
    ld [de], a
    or d
    ld e, $28
    ld a, [de]
    ret


jr_005_6b8c:
    xor a
    ret


Call_005_6b8e:
    ld hl, $c641
    ld a, [hl]

jr_005_6b92:
    and $0f
    ld b, a
    cp $0f
    jr nc, jr_005_6b9a

    inc b

jr_005_6b9a:
    xor [hl]
    or b
    ld [hl], a
    ret


    and d
    ld l, e
    xor a
    ld l, e
    ld [bc], a
    jr jr_005_6c09

    db $10
    ld [bc], a
    ld [$101e], sp
    ld [bc], a
    jr jr_005_6c27

    rst $38
    rst $38
    inc b
    jr jr_005_6c16

    db $10
    inc b
    ld [$ff64], sp
    rst $38
    nop
    ld bc, $0002
    inc bc
    inc b
    dec b
    inc bc
    ld b, $07
    ld bc, $0402
    dec b
    ld b, $07
    ret c

    ld l, e
    rst $20
    ld l, e
    or $6b
    rrca
    ld l, h
    ld [hl+], a
    ld l, h
    dec [hl]
    ld l, h
    ld b, h
    ld l, h
    ld d, a
    ld l, h
    jr jr_005_6b92

    ld [bc], a
    jr @+$4d

    db $10
    ld bc, $3208
    db $10
    ld bc, $4618
    rst $38
    rst $38
    ld [hl], b

jr_005_6be8:
    cp b
    ld [bc], a
    jr jr_005_6c37

    nop
    ld bc, $3208
    nop
    ld bc, $4618
    rst $38
    rst $38
    jr jr_005_6be8

    ld [bc], a
    ld [$1046], sp
    add hl, de
    jr jr_005_6c27

    nop
    inc d
    ld [$1019], sp
    rrca
    jr jr_005_6c1b

    nop
    ld a, [bc]

jr_005_6c09:
    ld [$100f], sp
    ld [hl-], a
    rst $38
    rst $38
    and b
    sub b
    ld [bc], a
    nop
    scf
    jr jr_005_6c17

jr_005_6c16:
    db $10

jr_005_6c17:
    add hl, de
    jr jr_005_6c1b

    nop

jr_005_6c1b:
    add hl, de
    jr jr_005_6c1f

    db $10

jr_005_6c1f:
    inc a
    rst $38
    rst $38
    and b
    db $10
    ld [bc], a
    nop
    scf

jr_005_6c27:
    ld [$1001], sp
    add hl, de
    ld [$0001], sp
    add hl, de
    ld [$1001], sp
    inc a
    rst $38
    rst $38
    jr jr_005_6c27

jr_005_6c37:
    ld bc, $2808
    ld d, $0f
    ld [$162d], sp
    ld a, [bc]
    ld [$ff37], sp
    rst $38
    ldh a, [$30]
    ld [bc], a
    inc d
    add hl, de
    dec b
    ld de, $0a14
    rla
    dec b
    db $10
    ld bc, $1e05
    inc d
    ld e, $ff
    rst $38
    ldh a, [rSVBK]
    ld [bc], a
    inc c
    add hl, de
    dec de
    ld de, $080c
    ld a, [bc]
    ld [bc], a
    db $10
    ld bc, $0f1b
    inc c
    ld e, $ff
    rst $38
    call Call_005_483a
    call Call_005_47b3
    call Call_005_6c76
    jp Jump_005_48bb


Call_005_6c76:
    ld e, $04
    ld a, [de]
    rst $00
    sub h
    ld l, h
    jp nz, $ed6c

    ld l, h
    jr @+$6f

    ld l, $6d
    ld h, l
    ld l, l
    sbc e
    ld l, a
    pop de
    ld l, a
    db $dd
    ld l, [hl]
    db $ec
    ld l, h
    ld e, $70
    sub h
    ld l, h
    cp c
    ld [hl], c

Jump_005_6c94:
    call Call_005_47fd
    ld a, $06
    call $248d
    ld a, $02
    ld l, $08
    ld [hl+], a
    ld [hl], a
    ld l, $39
    ld [hl], $10
    ld a, [$c643]
    and $80
    jr nz, jr_005_6cba

    ld l, $04
    ld [hl], $0a
    ld e, $3d
    call $1af2
    ld a, $00
    jr jr_005_6cbc

jr_005_6cba:
    ld a, $17

jr_005_6cbc:
    call $2a51
    jp $1dfa


    call $2a36
    call Call_005_48ef
    ld c, $09
    call $1f60
    jr nc, jr_005_6cd3

    call Call_005_4552
    ret z

jr_005_6cd3:
    ld e, $21
    ld a, [de]
    and $c0
    jr z, jr_005_6ce6

    rlca
    ld c, $40
    jp nc, $1f04

    ld bc, $ff00
    call $2358

Call_005_6ce6:
Jump_005_6ce6:
jr_005_6ce6:
    call Call_005_459f
    jp c, Jump_005_700d

    ret


    call Call_005_495b
    jr z, jr_005_6cf9

    dec [hl]
    ret nz

    ld a, $c3
    call $0c74

jr_005_6cf9:
    ld c, $40
    call $1f04
    call $2a36
    call $1fdb
    call Call_005_4439
    ld e, $33
    ld a, [de]
    and $0f
    ld e, $07
    jr z, jr_005_6d12

    ld [de], a
    ret


jr_005_6d12:
    ld a, [de]
    or a
    ret z

    jp Jump_005_6fe4


    ld c, $40
    call $1f04
    call Call_005_4878
    ret nz

    call Call_005_4779
    ld a, $c3
    call $0c74
    ld c, $20
    jp Jump_005_4547


    ld e, $37
    ld a, [de]
    cp $0e
    jr z, jr_005_6d3c

    ld a, $0d
    ld [de], a
    call Call_005_4665
    ret nz

jr_005_6d3c:
    call Call_005_495b
    jr nz, jr_005_6d54

    inc [hl]
    ld e, $37
    ld a, [de]
    call $2a51
    ld e, $37
    ld a, [de]
    cp $0e
    jr z, jr_005_6d54

    ld a, $65
    jp $0c74


jr_005_6d54:
    call Call_005_491f
    ret nc

    ld c, $01
    ld a, [$cc48]
    rrca
    jr nc, jr_005_6d62

    ld c, $05

jr_005_6d62:
    jp Jump_005_453d


Call_005_6d65:
    ld e, $05
    ld a, [de]
    rst $00
    ld [hl], c
    ld l, l
    ld d, a
    ld l, [hl]
    xor h
    ld l, [hl]
    call $fa6e
    or c
    call z, $20b7
    ld a, [bc]
    ld a, [$cc46]
    bit 0, a
    jp nz, Jump_005_6f7e

    bit 1, a
    jp nz, Jump_005_47e2

    ld h, d
    ld a, [$cc47]
    ld l, $09
    ld [hl], a
    rlca
    ld l, $39
    jr nc, jr_005_6d9b

    ld a, $10
    ld [hl], a
    ld c, $20
    call Call_005_4547
    jp Jump_005_6ce6


jr_005_6d9b:
    ld l, $39
    ld a, [hl]
    or a
    jr z, jr_005_6dc7

    dec [hl]
    ld l, $10
    ld [hl], $1e
    ld c, $20
    call Call_005_4525
    call Call_005_6e20
    jp z, Jump_005_7286

    call Call_005_4717
    jr nz, jr_005_6db9

    jp Jump_005_7290


jr_005_6db9:
    call Call_005_7204
    jr nz, jr_005_6dc1

    jp Jump_005_728b


jr_005_6dc1:
    call Call_005_441e
    jp Jump_005_6ce6


jr_005_6dc7:
    ld h, d
    ld l, $09
    ld a, [hl-]
    add a
    swap a
    and $03
    ld [hl+], a
    call Call_005_728b
    ld l, $09
    ld a, [hl]
    bit 2, a
    jr nz, jr_005_6df0

    call Call_005_4717
    jr nz, jr_005_6de8

    ld [$ccab], a
    ld c, $0f
    jp Jump_005_4547


jr_005_6de8:
    call Call_005_7204
    ld c, $0f
    jp z, Jump_005_4547

jr_005_6df0:
    ld e, $05
    ld a, $02
    ld [de], a
    call Call_005_6e20
    jp z, Jump_005_7286

    ld bc, $fe80
    call $2358
    ld l, $05
    ld [hl], $01
    ld l, $06
    ld [hl], $08
    ld l, $10
    ld [hl], $50
    ld c, $19
    call Call_005_4547
    call $041a
    and $0f
    ld a, $53
    jr nz, jr_005_6e1d

    ld a, $c3

jr_005_6e1d:
    jp $0c74


Call_005_6e20:
    ld a, [$cc47]
    and $04
    ret nz

    ld e, $08
    ld a, [de]
    ld hl, $72c6
    rst JumpTable
    ld e, $0b
    ld a, [de]
    add [hl]
    ldh [$90], a
    add [hl]
    ld b, a
    inc hl
    ld e, $0d
    ld a, [de]
    add [hl]
    ldh [$91], a
    add [hl]
    ld c, a
    call $1435
    ld a, l
    ld e, $36
    ld [de], a
    ldh a, [$90]
    ld b, a
    ldh a, [$91]
    ld c, a
    call $1435
    ld h, $cf
    ld a, [hl]
    cp $f3
    ret z

    cp $fd
    ret


    dec e
    ld a, [de]
    cp $05
    jr nz, jr_005_6e7e

    ld a, [$cc46]
    bit 0, a
    jp nz, Jump_005_6f7e

    ld a, [$cc47]
    bit 7, a
    jr nz, jr_005_6e7e

    ld hl, $d108
    ld b, a
    add a
    swap a
    and $03
    ld [hl+], a
    ld a, b
    cp [hl]
    ld [hl], a
    ld c, $19
    call nz, Call_005_4547

jr_005_6e7e:
    ld c, $40
    call $1f04
    jr z, jr_005_6ea2

    ld a, [$cc48]
    rra
    jr nc, jr_005_6e92

    ld a, [$cc47]
    and $04
    jr nz, jr_005_6e9f

jr_005_6e92:
    ld hl, $72c6
    call Call_005_44aa
    ld a, b
    cp $f3
    ret z

    cp $fd
    ret z

jr_005_6e9f:
    jp Jump_005_441e


jr_005_6ea2:
    call $2a36
    call Call_005_4917
    ret nz

    jp Jump_005_6fe4


    call Call_005_495b
    jr z, jr_005_6eb8

    dec [hl]
    ret nz

    ld a, $c3
    call $0c74

jr_005_6eb8:
    ld c, $40
    call $1f04
    jp z, Jump_005_6fe4

    call $2a36
    call Call_005_441e
    call Call_005_44d4
    jp nz, Jump_005_6fe4

    ret


    ld c, $40
    call $1f04
    ret nz

    call Call_005_7260
    xor a
    ld e, $05
    ld [de], a
    jp Jump_005_7005


    ld e, $05
    ld a, [de]
    rst $00
    push hl
    ld l, [hl]
    inc h
    ld l, a
    ld c, $40
    call $1f04
    jr z, jr_005_6ef1

    call Call_005_441e
    jr jr_005_6ef7

jr_005_6ef1:
    call Call_005_442a
    call Call_005_6ce6

jr_005_6ef7:
    call $2a36
    ld e, $21
    ld a, [de]
    and $c0
    ret z

    rlca
    jr c, jr_005_6f08

    ld a, $75
    jp $0c74


jr_005_6f08:
    ld e, $0f
    ld a, [de]
    or a
    ret nz

    ld a, [$cc45]
    and $01
    jp z, Jump_005_6fe4

    call $23aa
    ld c, $13
    call Call_005_4547
    call Call_005_459f
    ret nc

    jp Jump_005_700d


    ld a, [$cc47]
    bit 7, a
    jr nz, jr_005_6f35

    ld hl, $d109
    cp [hl]
    ld [hl], a
    ld c, $13
    call nz, Call_005_4525

jr_005_6f35:
    call $2a36
    ld a, [$cc45]
    and $01
    jr z, jr_005_6f5b

    ld e, $35
    ld a, [de]
    cp $1e
    jr nz, jr_005_6f51

    call Call_005_442a
    call Call_005_6ce6
    ld c, $04
    jp Jump_005_4865


jr_005_6f51:
    inc a
    ld [de], a
    cp $1e
    ret nz

    ld a, $4f
    jp $0c74


jr_005_6f5b:
    ld hl, $d01b
    ld a, [hl+]
    ld [hl], a
    ld e, $35
    ld a, [de]
    cp $1e
    jr nz, jr_005_6f79

    ld bc, $2a00
    call Call_005_450e
    ld a, $f1
    call $0c74
    ld a, $6b
    call $0c74
    jr jr_005_6f7e

jr_005_6f79:
    ld c, $05
    jp Jump_005_47f1


Jump_005_6f7e:
jr_005_6f7e:
    ld bc, $2800
    call Call_005_4514
    ret nz

    ld h, d
    ld l, $04
    ld a, $08
    ld [hl+], a
    xor a
    ld [hl], a
    inc a
    ld l, $35
    ld [hl], a
    ld c, $09
    call Call_005_4547
    ld a, $74
    jp $0c74


    ld e, $05
    ld a, [de]
    rst $00
    and l
    ld l, a
    or [hl]
    ld l, a
    cp [hl]
    ld l, a
    ld c, $40
    call $1f04
    ret nz

    call $23aa
    call Call_005_45bf
    ld a, $17
    jp $2a51


    ld a, [$cc77]
    or a
    ret nz

    jp $23aa


    call Call_005_48ef
    ld c, $09
    call $1f60
    jp c, Jump_005_6ce6

    ld e, $05
    xor a
    ld [de], a
    dec e
    inc a
    ld [de], a
    ret


    call Call_005_48f8
    ret c

    call Call_005_4439
    call Call_005_44b9
    ld e, $07
    jr z, jr_005_6fe1

    ld [de], a
    ret


jr_005_6fe1:
    ld a, [de]
    or a
    ret z

Jump_005_6fe4:
    ld a, [$cc48]
    rrca
    jr nc, jr_005_6ff1

    xor a
    ld [$cc77], a
    ld [$ccab], a

jr_005_6ff1:
    ld a, $05
    ld e, $04
    ld [de], a
    ld a, $03
    ld e, $05
    ld [de], a
    call Call_005_72a5
    jr z, jr_005_7005

    ld e, $39
    ld a, $10
    ld [de], a

Jump_005_7005:
jr_005_7005:
    call Call_005_459f
    ld c, $20
    jp nc, Jump_005_4547

Jump_005_700d:
    ld c, $0e
    cp $01
    jr z, jr_005_7015

    ld c, $0d

jr_005_7015:
    ld h, d
    ld l, $37
    ld [hl], c
    ld l, $06
    ld [hl], $00
    ret


    ld e, $03
    ld a, [de]
    rst $00
    inc a
    ld [hl], b
    ld d, h
    ld [hl], b
    ld e, h
    ld [hl], b
    xor b
    ld [hl], b
    jp $d270


    ld [hl], b
    db $db
    ld [hl], b
    adc l
    ld [hl], b
    db $db
    ld [hl], b
    inc c
    ld [hl], c
    ld a, [hl+]
    ld [hl], c
    ld b, e
    ld [hl], c
    ld l, c
    ld [hl], c
    call $4418
    call Call_005_48ef
    call $2a36
    ld e, $21
    ld a, [de]
    rlca
    ld c, $40
    jp nc, $1f04

    ld bc, $ff00
    jp $2358


    ld e, $3d
    call $1b07
    jp Jump_005_4948


    ld a, $01
    ld [$cca4], a
    ld a, $00
    ld e, $08
    ld [de], a
    ld a, $05
    ld e, $3f
    ld [de], a
    call Call_005_713d

Call_005_706e:
jr_005_706e:
    ld b, $30
    ld c, $58
    call $1e62
    and $1c
    ld e, $09
    ld [de], a

Call_005_707a:
    ld bc, $fe80
    call $2358
    ld l, $05
    ld [hl], $01
    ld l, $10
    ld [hl], $50
    ld l, $06
    ld [hl], $08
    ret


    call Call_005_485a
    call $2a36
    ld e, $21
    ld a, [de]
    or a
    ld a, $c3
    jp z, $0c74

    ld a, [de]
    rlca
    ret nc

    call Call_005_706e
    ld e, $09
    ld a, $10
    ld [de], a
    ret


    call Call_005_485a
    ld e, $3e
    ld a, [de]
    and $01
    ret nz

    call Call_005_71a5
    ret nz

    ld e, $0b
    ld a, [de]
    cp $38
    jr nc, jr_005_706e

    ld e, $3e
    ld a, [de]
    or $01
    ld [de], a
    ret


    call Call_005_485a
    ld e, $3e
    ld a, [de]
    bit 1, a
    ret nz

    or $02
    ld [de], a
    jp Jump_005_45f5


    call Call_005_706e
    ld e, $09
    ld a, $10
    ld [de], a
    ret


    call Call_005_485a
    call Call_005_71a5
    ret nz

    call $2142
    jr nc, jr_005_70fd

    ld e, $0b
    ld a, [de]
    cp $60
    jr c, jr_005_70f4

    ld e, $3e
    ld a, [de]
    or $04
    ld [de], a

jr_005_70f4:
    call Call_005_706e
    ld e, $09
    ld a, $10
    ld [de], a
    ret


jr_005_70fd:
    ld a, $01
    ld [$cc6a], a
    xor a
    ld [$cca4], a
    call $2c29
    jp Jump_005_4641


    ld a, $80
    ld [$cc02], a
    ld a, $01
    ld e, $08
    ld [de], a
    call Call_005_713d
    ld c, $20
    call Call_005_4547

jr_005_711e:
    ld bc, $4070
    call $1e62
    and $1c
    ld e, $09
    ld [de], a
    ret


    call $2a36
    call Call_005_441e
    ld e, $0d
    ld a, [de]
    cp $38
    jr c, jr_005_711e

    ld bc, $2004
    call $184b

Call_005_713d:
jr_005_713d:
    ld e, $03
    ld a, [de]
    inc a
    ld [de], a
    ret


    call $1832
    call Call_005_45f5
    ld a, $18
    ld [$d009], a
    ld [$cc47], a
    ld a, $32
    ld [$d010], a
    ld h, d
    ld l, $09
    ld a, $18
    ld [hl-], a
    ld a, $03
    ld [hl-], a
    ld a, $1e
    ld [hl], a
    ld a, $24
    call $2a51
    jr jr_005_713d

    ld a, [$cc77]
    or a
    ret nz

    call $29f4
    ld hl, $d00d
    ld e, $0d
    ld a, [de]
    bit 7, a
    jr nz, jr_005_7180

    cp [hl]
    ld a, $01
    jr nc, jr_005_7182

jr_005_7180:
    ld a, $03

jr_005_7182:
    ld l, $08
    ld [hl], a
    ld e, $07
    ld a, [de]
    or a
    jr z, jr_005_718e

    dec a
    ld [de], a
    ret


jr_005_718e:
    call $2a36
    call Call_005_441e
    call $2142
    ret c

    xor a
    ld [$cc40], a
    ld [$cca4], a
    ld [$cc02], a
    jp $2c29


Call_005_71a5:
    ld c, $40
    call $1f04
    jr z, jr_005_71b1

    call Call_005_441e
    or d
    ret


jr_005_71b1:
    ld c, $05
    call Call_005_4547
    jp Jump_005_4917


    ld e, $03
    ld a, [de]
    rst $00
    pop bc
    ld [hl], c
    db $d3
    ld [hl], c
    call Call_005_492c
    ld [hl], $02
    call Call_005_707a
    ld a, $c3
    call $0c74
    ld c, $01
    jp Jump_005_4547


    call Call_005_6d65
    ld e, $04
    ld a, [de]
    cp $04
    ret z

    ld a, $0c
    ld [de], a
    inc e
    ld a, [de]
    cp $03
    ret nz

    call Call_005_7260
    ld hl, $72c6
    call Call_005_44aa
    or a
    jr nz, jr_005_71fd

    call $2396
    jr z, jr_005_71fd

    call Call_005_707a
    ld c, $01
    jp Jump_005_4547


jr_005_71fd:
    ld e, $03
    xor a
    ld [de], a
    jp Jump_005_6c94


Call_005_7204:
    ld e, $33
    ld a, [de]
    and $c0
    cp $c0
    ret nz

    ld a, [$cc47]
    cp $00
    ret nz

    ld hl, $7258
    call Call_005_44ae
    cp $03
    jr z, jr_005_7221

    ld a, b
    cp $dd
    jr nz, jr_005_7230

jr_005_7221:
    ld hl, $725a
    call Call_005_44ae
    cp $03
    jr z, jr_005_724c

    ld a, b
    cp $dd
    jr z, jr_005_724c

jr_005_7230:
    ld hl, $725c
    call Call_005_44ae
    cp $03
    jr z, jr_005_723e

    ld a, b
    cp $dd
    ret nz

jr_005_723e:
    ld hl, $725e
    call Call_005_44ae
    cp $03
    jr z, jr_005_724c

    ld a, b
    cp $dd
    ret nz

jr_005_724c:
    ld e, $04
    ld a, $02
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $07
    ld [de], a
    ret


    ld hl, sp+$06
    ld hl, sp-$06
    add sp, $06
    add sp, -$06

Call_005_7260:
    ld hl, $727c

jr_005_7263:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    or b
    ret z

    push hl
    ld a, [$d10b]
    add b
    ld b, a
    ld a, [$d10d]
    add c
    ld c, a
    ld a, $10
    call $2b3d
    pop hl
    jr jr_005_7263

    inc b
    nop
    inc b
    ld b, $fe
    nop
    inc b
    ld a, [$0000]

Jump_005_7286:
    ld a, $01
    ld [$cc77], a

Call_005_728b:
Jump_005_728b:
    ld a, $01
    ld [$ccab], a

Jump_005_7290:
    ld bc, $fd00
    call $2358
    ld l, $06
    ld [hl], $08
    ld l, $10
    ld [hl], $32
    ld c, $0f
    call Call_005_4547
    ld h, d
    ret


Call_005_72a5:
    ld h, d
    ld l, $0b
    ld a, $06
    cp [hl]
    jr nc, jr_005_72c4

    ld a, [$cd0d]
    dec a
    cp [hl]
    jr c, jr_005_72c4

    ld l, $0d
    ld a, $06
    cp [hl]
    jr nc, jr_005_72c4

    ld a, [$cd0c]
    dec a
    cp [hl]
    jr c, jr_005_72c4

    xor a
    ret


jr_005_72c4:
    or d
    ret


    ld hl, sp+$00
    dec b
    ld [$0008], sp
    dec b
    ld hl, sp-$33
    ld a, [hl-]
    ld c, b
    call Call_005_47b3
    call Call_005_72de
    xor a
    ld [$cc37], a
    jp Jump_005_48bb


Call_005_72de:
    ld e, $04
    ld a, [de]
    rst $00
    cp $72
    cpl
    ld [hl], e
    ld l, [hl]
    ld [hl], e
    or [hl]
    ld [hl], h
    jp nz, $df74

    ld [hl], h
    db $76
    ld [hl], l
    xor b
    ld [hl], l
    cp [hl]
    ld [hl], l
    ld c, c
    ld [hl], l
    ld a, b
    db $76
    inc de
    db $76
    add hl, hl
    db $76
    ld d, l
    db $76

Jump_005_72fe:
    call Call_005_47fd
    ld a, $02
    ld l, $08
    ld [hl+], a
    ld [hl], a
    ld a, [$c644]
    and $80
    jr nz, jr_005_7327

    ld l, $04
    ld [hl], $0a
    ld e, $3d
    call $1af2
    ld a, $24
    ld e, $3f
    ld [de], a
    call $2a51
    ld bc, $0408
    call $2495
    jr jr_005_732c

jr_005_7327:
    ld c, $1c
    call Call_005_4547

jr_005_732c:
    jp $1e1e


    call Call_005_48ef
    ld c, $40
    call $1f04
    ret nz

    call Call_005_459f
    jr nc, jr_005_734a

    cp $02
    ret z

    call Call_005_7703
    ld a, $04
    call Call_005_74a6
    jr jr_005_7357

jr_005_734a:
    ld e, $38
    ld a, [de]
    or a
    jr z, jr_005_7357

    xor a
    ld [de], a
    ld c, $1c
    call Call_005_4547

jr_005_7357:
    ld a, $06
    call $248d
    ld e, $3b
    ld a, [de]
    or a
    jp nz, Jump_005_7596

    ld c, $09
    call $1f60
    jp nc, Jump_005_769e

    jp Jump_005_4552


    inc e
    ld a, [de]
    rst $00
    ld a, c
    ld [hl], e
    sbc h
    ld [hl], e
    db $dd
    ld [hl], e
    adc d
    ld [hl], h
    ld a, $40
    ld [$cc76], a
    call $23aa
    xor a
    ld [$ccaa], a
    ld l, $38
    ld [hl], a
    ld l, $3f
    ld [hl], $ff
    call $1df1
    ld a, $02
    ld hl, $c646
    call $020e
    ld c, $18
    jp Jump_005_4547


    xor a
    ld [$d02d], a
    ld a, [$ccb6]
    cp $0e
    jr nz, jr_005_73ac

    ld a, $20
    ld [$ccb5], a

jr_005_73ac:
    ld a, [$cc83]
    or a
    jr nz, jr_005_73c6

    ld a, [$d009]
    bit 7, a
    jr nz, jr_005_73d2

    ld e, $09
    ld [de], a
    ld a, [$d008]
    dec e
    ld [de], a
    call Call_005_76c6
    jr nz, jr_005_73d2

jr_005_73c6:
    ld h, d
    ld l, $00
    res 1, [hl]
    ld l, $3b
    ld [hl], $01
    jp $2b8a


jr_005_73d2:
    call Call_005_4439
    call Call_005_44d4
    ret z

    ld [$cc82], a
    ret


    ld h, d
    ld l, $00
    res 1, [hl]
    call Call_005_459f
    jr nc, jr_005_73ec

    cp $02
    ret z

    jr jr_005_7468

jr_005_73ec:
    ld h, d
    ld l, $3f
    ld a, [hl]
    cp $ff
    jr nz, jr_005_7400

    xor a
    ld [hl], a
    ld l, $39
    ld a, [$d00b]
    ld [hl+], a
    ld a, [$d00d]
    ld [hl], a

jr_005_7400:
    ld a, [$cc37]
    or a
    jr nz, jr_005_745d

    call Call_005_4439
    call Call_005_44d4
    jr nz, jr_005_745d

    ld c, $00
    ld h, d
    ld l, $0b
    ld a, [hl]
    cp $08
    jr nc, jr_005_741d

    ld [hl], $10
    inc c
    jr jr_005_7436

jr_005_741d:
    ld a, [$cc49]
    or a
    ld a, [hl]
    jr nz, jr_005_742d

    cp $7a
    jr c, jr_005_7436

    ld [hl], $7a
    inc c
    jr jr_005_7436

jr_005_742d:
    cp $a8
    jr c, jr_005_7436

    ld [hl], $a8
    inc c
    jr jr_005_7436

jr_005_7436:
    ld l, $0d
    ld a, [hl]
    cp $04
    jr nc, jr_005_7442

    ld [hl], $04
    inc c
    jr jr_005_7459

jr_005_7442:
    ld a, [$cc49]
    or a
    ld a, [hl]
    jr nz, jr_005_7452

    cp $9b
    jr c, jr_005_7459

    ld [hl], $9b
    inc c
    jr jr_005_7459

jr_005_7452:
    cp $df
    jr c, jr_005_7459

    ld [hl], $df
    inc c

jr_005_7459:
    ld a, c
    or a
    jr z, jr_005_7462

jr_005_745d:
    ld a, $00
    ld [$dc10], a

jr_005_7462:
    call $21cb
    cp $01
    ret nz

jr_005_7468:
    ld h, d
    ld l, $04
    ld [hl], $0b
    ld l, $38
    ld [hl], $04
    ld l, $39
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $1e62
    and $18
    ld e, $09
    ld [de], a
    add a
    swap a
    and $03
    dec e
    ld [de], a
    ld c, $00
    jp Jump_005_4547


    ld h, d
    ld l, $00
    res 1, [hl]
    ld c, $40
    call $1f04
    ret nz

    call Call_005_442a
    call Call_005_459f
    jr nc, jr_005_74a5

    cp $02
    ret z

    ld a, $04
    jp Jump_005_74a6


jr_005_74a5:
    xor a

Call_005_74a6:
Jump_005_74a6:
    ld h, d
    ld l, $38
    ld [hl], a
    ld l, $04
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    ld c, $1c
    jp Jump_005_4547


    call Call_005_4878
    ret nz

    call Call_005_4779
    ld c, $00
    jp Jump_005_4547


    call Call_005_4665
    ret nz

    call Call_005_495b
    jr nz, jr_005_74d6

    inc [hl]
    ld a, $65
    call $0c74
    ld a, $25
    jp $2a51


jr_005_74d6:
    call Call_005_491f
    ret nc

    ld c, $00
    jp Jump_005_453d


    ld c, $40
    call $1f04
    ret nz

    ld a, [$ccb1]
    or a
    jr nz, jr_005_74f4

    ld a, [$cc46]
    bit 0, a
    jr nz, jr_005_754a

    bit 1, a

jr_005_74f4:
    jp nz, Jump_005_47e2

    ld a, [$cc47]
    bit 7, a
    jr nz, jr_005_7529

    ld hl, $d109
    cp [hl]
    ld [hl], a
    ld c, $00
    jp nz, Jump_005_4525

    call Call_005_4717
    ret z

Call_005_750c:
    ld h, d
    ld l, $21
    ld a, [hl]
    rlca
    ld a, $88
    call c, $0c74
    ld l, $38
    ld a, [hl]
    or a
    ld a, $1e
    jr z, jr_005_7520

    ld a, $28

jr_005_7520:
    ld l, $10
    ld [hl], a
    call Call_005_441e
    call $2a36

jr_005_7529:
    call Call_005_459f
    ld h, d
    jr nc, jr_005_753d

    cp $02
    ret z

    ld l, $04
    ld [hl], $05
    call Call_005_7703
    ld b, $04
    jr jr_005_753f

jr_005_753d:
    ld b, $00

jr_005_753f:
    ld l, $38
    ld a, [hl]
    cp b
    ld [hl], b
    ld c, $00
    jp nz, Jump_005_453d

    ret


jr_005_754a:
    ld h, d
    ld l, $04
    ld a, $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], a
    ld l, $35
    ld [hl], a
    ld l, $08
    ld a, [hl+]
    swap a
    rrca
    ld [hl], a
    ld a, $01
    ld [$cc77], a
    ld l, $10
    ld [hl], $1e
    ld c, $08
    call Call_005_4547
    ld bc, $2b00
    call Call_005_4514
    ld a, $c4
    jp $0c74


    ld e, $05
    ld a, [de]
    rst $00
    add b
    ld [hl], l
    adc e
    ld [hl], l
    sub e
    ld [hl], l
    ld a, $01
    ld [de], a
    call Call_005_45bf
    ld c, $1c
    jp Jump_005_4547


    ld a, [$cc77]
    or a
    ret nz

    jp $23aa


    call Call_005_769e

Jump_005_7596:
    ld c, $09
    call $1f60
    ret c

Call_005_759c:
    ld e, $04
    ld a, $01
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld e, $3b
    ld [de], a
    ret


    call Call_005_48f8
    ret c

    call Call_005_4439
    call Call_005_44b9
    ld l, $07
    jr z, jr_005_75b8

    ld [hl], a
    ret


jr_005_75b8:
    ld a, [hl]
    or a
    ret z

    jp Jump_005_766f


    ld e, $05
    ld a, [de]
    rst $00
    ret z

    ld [hl], l
    add sp, $75
    ld a, [bc]
    db $76
    call $2a36
    call $1fdb
    ld e, $21
    ld a, [de]
    rlca
    ret nc

    call $23aa
    ld l, $08
    ld a, [hl+]
    xor $02
    swap a
    rrca
    ld [hl], a
    ld l, $06
    ld [hl], $0c
    ld c, $00
    jp Jump_005_4547


    call $2a36
    call $1fdb
    call Call_005_4917
    ret nz

    ld [hl], $14
    ld l, $08
    ld a, [hl+]
    swap a
    rrca
    ld [hl], a
    ld l, $35
    ld a, [hl]
    or a
    jp z, Jump_005_766f

    call $23aa
    ld c, $10
    jp Jump_005_4547


    call $2a36
    call Call_005_4917
    ret nz

    jr jr_005_766f

    ld c, $40
    call $1f04
    ret nz

    call Call_005_750c
    ld h, d
    ld l, $38
    ld a, [hl]
    or a
    ld l, $04
    ld [hl], $0b
    ret nz

    ld [hl], $01
    ret


    ld e, $03
    ld a, [de]
    rst $00
    ld sp, $4076
    db $76
    call Call_005_492c
    ld [hl], $3c
    ld a, $c4
    call $0c74
    ld c, $00
    jp Jump_005_4547


    call Call_005_750c
    ld e, $04
    ld a, $0c
    ld [de], a
    ld hl, $7723
    call Call_005_493b
    ld e, $03
    xor a
    ld [de], a
    jp Jump_005_72fe


    ld e, $3c
    ld a, [de]
    or a
    jr nz, jr_005_766a

    call Call_005_759c
    inc a
    ld [de], a
    ld hl, $d100
    res 1, [hl]
    ld c, $1c
    jp Jump_005_4547


jr_005_766a:
    ld e, $04
    ld a, $05
    ld [de], a

Jump_005_766f:
jr_005_766f:
    xor a
    ld [$cc77], a
    ld c, $00
    jp Jump_005_47f1


    call Call_005_485a
    call $4418
    call $2a36
    ld e, $1a
    ld a, $c7
    ld [de], a
    ld a, [$c644]
    and $80
    ret z

    ld e, $1a
    ld a, $c1
    ld [de], a
    ld a, $ff
    ld [$cbea], a
    ld c, $1c
    call Call_005_4547
    jp Jump_005_4948


Call_005_769e:
Jump_005_769e:
    ld a, [$cc83]
    or a
    ret nz

    ld a, [$d008]
    call Call_005_76c6
    ret z

    ld hl, $d00b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    call $14a5
    cp $0c
    jr z, jr_005_76c5

    cp $0f
    jr z, jr_005_76c5

    cp $11
    jr z, jr_005_76c5

    cp $19
    call nz, $2b75

jr_005_76c5:
    ret


Call_005_76c6:
    call Call_005_76e4
    ret z

    ld hl, $d009
    ld a, [hl-]
    bit 7, a
    ret nz

    bit 2, a
    jr nz, jr_005_76d7

    or d
    ret


jr_005_76d7:
    add a
    ld b, a
    ld a, [hl+]
    swap a
    srl a
    xor b
    add a
    swap a
    and $03

Call_005_76e4:
    ld hl, $7723
    rst JumpTable
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    call $1423
    cp $df
    ret z

    cp $de
    ret z

    cp $dd
    ret z

    ld h, $ce
    ld a, [hl]
    cp $0c
    ret z

    cp $11
    ret z

    cp $19
    ret


Call_005_7703:
    call $1432
    ld h, d
    cp $ff
    jr z, jr_005_770e

    cp $fe
    ret nz

jr_005_770e:
    ld l, $0a
    ld a, [hl]
    add $c0
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, [$cd0d]
    cp [hl]
    ret nc

    ld a, $82
    ld [$cd02], a
    ret


    ld hl, sp+$00
    nop
    ld [$0008], sp
    nop
    ld hl, sp-$33
    ld a, [hl-]
    ld c, b
    call Call_005_47b3
    call Call_005_7737
    jp Jump_005_48bb


Call_005_7737:
    ld e, $04
    ld a, [de]
    rst $00
    ld d, l
    ld [hl], a
    sub a
    ld [hl], a
    ld e, a
    ld a, b
    xor e
    ld [hl], a
    or a
    ld [hl], a
    ld c, $78
    jp nz, $f079

    ld a, c
    ld h, b
    ld a, b
    ld e, a
    ld a, b
    ld b, h
    ld a, d
    ld e, a
    ld a, b
    dec c
    ld a, d

Jump_005_7755:
    call Call_005_47fd
    ld a, $06
    call $248d
    ld a, $02
    ld l, $08
    ld [hl+], a
    ld [hl+], a
    ld hl, $c645
    ld a, $80
    and [hl]
    jr nz, jr_005_778f

    ld a, [$c610]
    cp $0d
    jr nz, jr_005_7787

    ld a, $20
    and [hl]
    jr z, jr_005_7780

    ld a, [$cc4c]
    cp $2f
    jr z, jr_005_7787

    jr jr_005_778f

jr_005_7780:
    ld a, [$cc4c]
    cp $90
    jr nz, jr_005_778f

jr_005_7787:
    ld e, $04
    ld a, $0a
    ld [de], a
    jp $7a44


jr_005_778f:
    ld c, $01
    call Call_005_4547
    jp $1dfa


    call Call_005_48ef
    call $2a36
    ld c, $09
    call $1f60
    jp c, Jump_005_4552

Jump_005_77a5:
    call Call_005_459f
    ret nc

    jr jr_005_77fe

    call Call_005_4878
    ret nz

    call Call_005_4779
    ld c, $13
    jp Jump_005_4547


    ld h, d
    ld l, $24
    set 7, [hl]
    ld l, $37
    ld a, [hl]
    cp $0d
    jr z, jr_005_77ca

    ld a, $0e
    ld [hl], a
    call Call_005_4665
    ret nz

jr_005_77ca:
    call Call_005_495b
    jr nz, jr_005_77e2

    dec [hl]
    ld l, $37
    ld a, [hl]
    call $2a51
    ld e, $37
    ld a, [de]
    cp $0d
    jr z, jr_005_77e2

    ld a, $65
    jp $0c74


jr_005_77e2:
    call Call_005_491f
    ret nc

    ld c, $13
    ld a, [$cc48]
    rrca
    jr c, jr_005_77f0

    ld c, $01

jr_005_77f0:
    jp Jump_005_453d


Jump_005_77f3:
jr_005_77f3:
    call Call_005_442a
    call Call_005_459f
    ld c, $13
    jp nc, Jump_005_4525

Jump_005_77fe:
jr_005_77fe:
    dec a
    ld c, $0d
    jr z, jr_005_7805

    ld c, $0e

jr_005_7805:
    ld e, $37
    ld a, c
    ld [de], a
    ld e, $06
    xor a
    ld [de], a
    ret


    ld c, $10
    call $1f04
    ret nz

    call Call_005_459f
    jr c, jr_005_77fe

    ld a, [$ccb1]
    or a
    jr nz, jr_005_7828

    ld a, [$cc46]
    bit 0, a
    jr nz, jr_005_7852

    bit 1, a

jr_005_7828:
    jp nz, Jump_005_47e2

    ld a, [$cc47]
    bit 7, a
    ret nz

    ld hl, $d109
    cp [hl]
    ld [hl], a
    ld c, $13
    jp nz, Jump_005_4525

    call Call_005_4717
    ret z

    ld e, $10
    ld a, $28
    ld [de], a
    call Call_005_441e
    jr jr_005_77f3

Call_005_7849:
Jump_005_7849:
    xor a
    ld [$cc77], a
    ld c, $13
    jp Jump_005_47f1


jr_005_7852:
    ld a, $08
    ld e, $04
    ld [de], a
    inc e
    xor a
    ld [de], a
    ld a, $53
    call $0c74
    ret


    ld e, $05
    ld a, [de]
    rst $00
    ld [hl], b
    ld a, b
    adc d
    ld a, b
    ld e, $79
    ld h, d
    ld a, c
    sbc e
    ld a, c
    xor [hl]
    ld a, c
    ld a, $01
    ld [de], a
    ld bc, $fec0
    call $2358
    ld l, $10
    ld [hl], $28
    ld l, $39
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld c, $09
    jp Jump_005_4547


    call $21d4
    cp $01
    jr nz, jr_005_78ae

    ld bc, $0000
    call $2358
    ld l, $05
    ld [hl], $05
    ld b, $9f
    call $24af
    dec l
    ld a, [hl]
    sub $20
    ld [hl], a
    ld l, $46
    ld e, $06
    ld a, $3c
    ld [hl], a
    ld [de], a
    ret


jr_005_78ae:
    ld a, [$cc47]
    bit 7, a
    jr nz, jr_005_78bd

    ld hl, $d109
    cp [hl]
    ld [hl], a
    call Call_005_441e

jr_005_78bd:
    ld e, $15
    ld a, [de]
    rlca
    jr c, jr_005_7907

    ld e, $3b
    ld a, [$cc45]
    and $01
    jr z, jr_005_78ce

    ld a, [de]
    inc a

jr_005_78ce:
    ld [de], a
    cp $0a
    jr nc, jr_005_791b

    ld a, [$cc46]
    bit 0, a
    jr z, jr_005_78f5

    ld e, $3a
    ld a, [de]
    cp $10
    jr z, jr_005_78f5

    inc a
    ld [de], a
    dec e
    ld a, [de]
    add $08
    ld [de], a
    ld e, $20
    ld a, $01
    ld [de], a
    call $2a36
    ld a, $53
    call $0c74

jr_005_78f5:
    ld e, $39
    ld a, [de]
    or a
    jr z, jr_005_790c

    dec a
    ld [de], a
    ld e, $20
    ld a, $0f
    ld [de], a
    ld c, $09
    jp Jump_005_4525


jr_005_7907:
    ld c, $09
    call Call_005_4525

jr_005_790c:
    ld c, $10
    call $1f04
    ret nz

    call Call_005_442a
    call Call_005_7849
    jp Jump_005_77f3


jr_005_791b:
    jp $23aa


    call $2a36
    ld a, [$cc45]
    bit 0, a
    jr z, jr_005_794f

    ld e, $3b
    ld a, [de]
    cp $28
    jr c, jr_005_7934

    ld c, $02
    call Call_005_4865

jr_005_7934:
    ld e, $3b
    ld a, [de]
    inc a
    ld [de], a
    cp $28
    ret c

    ld a, $4f
    jp z, $0c74

    ld hl, $d024
    res 7, [hl]
    inc h
    res 7, [hl]
    ld e, $3b
    ld a, [de]
    cp $78
    ret nz

jr_005_794f:
    ld hl, $d01b
    ld a, [hl+]
    ld [hl], a
    call $23aa
    ld c, $17
    ld e, $3b
    ld a, [de]
    cp $28
    ret c

    jp Jump_005_4547


    ld c, $80
    call $1f04
    ret nz

    ld e, $3b
    ld a, [de]
    cp $28
    jr nc, jr_005_7975

    call Call_005_7849
    jp Jump_005_77f3


jr_005_7975:
    call Call_005_459f
    jp c, Jump_005_77fe

    call $23aa
    ld a, $0f
    ld [$cd18], a
    ld a, $f1
    call $0c74
    ld a, $85
    call $0c74
    ld a, $05
    ld hl, $c646
    call $020e
    ld bc, $2800
    jp Jump_005_4514


    call $2a36
    ld e, $21
    ld a, [de]
    rlca
    ret nc

    ld hl, $d024
    set 7, [hl]
    inc h
    set 7, [hl]
    jp Jump_005_7849


    call Call_005_4917
    jr z, jr_005_79b6

    jp $2a36


jr_005_79b6:
    ld c, $10
    call $1f04
    ret nz

    call Call_005_7849
    jp Jump_005_77f3


    ld e, $05
    ld a, [de]
    rst $00
    call z, $d779
    ld a, c
    rst JumpTable
    ld a, c
    ld a, $01
    ld [de], a
    call Call_005_45bf
    ld c, $01
    jp Jump_005_4547


    ld a, [$cc77]
    or a
    ret nz

    jp $23aa


    ld c, $09
    call $1f60
    jp c, Jump_005_77a5

    ld e, $05
    xor a
    ld [de], a
    dec e
    ld a, $01
    ld [de], a
    ret


    call Call_005_48f8
    jr nc, jr_005_79fb

    ret nz

    ld c, $09
    jp Jump_005_4547


jr_005_79fb:
    call Call_005_4439
    call Call_005_44b9
    ld e, $07
    jr z, jr_005_7a07

    ld [de], a
    ret


jr_005_7a07:
    ld a, [de]
    or a
    ret z

    jp Jump_005_7849


    ld e, $03
    ld a, [de]
    rst $00
    dec d
    ld a, d
    inc h
    ld a, d
    call Call_005_492c
    ld [hl], $3c
    ld a, $c5
    call $0c74
    ld c, $0f
    jp Jump_005_4547


    call $2a36
    ld e, $10
    ld a, $1e
    ld [de], a
    call Call_005_441e
    ld hl, $7a3c
    call Call_005_493b
    ld e, $03
    xor a
    ld [de], a
    jp Jump_005_7755


    ld hl, sp+$00
    nop
    ld [$0008], sp
    nop
    ld hl, sp+$1e
    inc bc
    ld a, [de]
    rst $00
    ld h, d
    ld a, d
    adc l
    ld a, d
    and a
    ld a, d
    or d
    ld a, d
    pop bc
    ld a, d
    db $d3
    ld a, d
    db $d3
    ld a, d
    adc l
    ld a, d
    di
    ld a, d
    inc c
    ld a, e
    ld h, $7b
    jr c, @+$7d

    ld h, c
    ld a, e
    ld a, $01
    ld [de], a
    ld a, [$c610]
    cp $0d
    jr nz, jr_005_7a7d

    ld a, [$c645]
    and $20
    jr nz, jr_005_7a7d

    ld a, $02
    ld [de], a
    ld c, $01
    call Call_005_4547
    jr jr_005_7a85

jr_005_7a7d:
    ld a, $00
    ld e, $3f
    ld [de], a
    call $2a51

jr_005_7a85:
    call $1e0c
    ld e, $3d
    jp $1af2


    call Call_005_485a
    call Call_005_7b9e
    ld a, [$c645]
    and $80
    jr z, jr_005_7a9c

    jr jr_005_7ae4

jr_005_7a9c:
    ld e, $3d
    ld a, [de]
    or a
    ret z

    ld a, $81
    ld [$cca4], a
    ret


    ld e, $2b
    ld a, [de]
    or a
    ret z

    dec a
    ld [de], a
    ld h, d
    jp Jump_005_4244


    call Call_005_485a
    call $2a36
    call Call_005_4917
    ret nz

    ld c, $10
    jp $1f04


    call Call_005_485a
    ld c, $10
    call $1f04
    ret nz

    ld e, $3e
    ld a, [de]
    or $40
    ld [de], a
    jp $2a36


    call Call_005_485a
    call Call_005_7b9e
    ld a, [$c645]
    and $20
    ret z

    ld a, $ff
    ld [$cbea], a

jr_005_7ae4:
    ld e, $3d
    xor a
    ld [de], a
    call $1b07
    ld c, $01
    call Call_005_4547
    jp Jump_005_4948


    call Call_005_485a
    ld e, $3e
    xor a
    ld [de], a
    ld c, $10
    jp $1f04


jr_005_7aff:
    ld b, $40
    ld c, $70
    call $1e62
    and $1c
    ld e, $09
    ld [de], a
    ret


    ld c, $10
    call $1f04
    call $2a36
    call Call_005_441e
    ld e, $0d
    ld a, [de]
    cp $38
    jr c, jr_005_7aff

    ld a, $01
    ld e, $3e
    ld [de], a
    jp Jump_005_7ba7


    call Call_005_485a
    ld e, $3e
    ld a, [de]
    and $02
    ret z

    ld bc, $220f
    call $184b
    jp Jump_005_7ba7


    call $1832
    call Call_005_45f5
    ld a, $18
    ld [$d009], a
    ld [$cc47], a
    ld a, $32
    ld [$d010], a
    ld bc, $fec0
    call $2358
    ld l, $09
    ld [hl], $18
    ld l, $06
    ld [hl], $1e
    ld c, $0c
    call Call_005_4547
    jp Jump_005_7ba7


    call $2a36
    ld e, $15
    ld a, [de]
    or a
    ld c, $10
    call nz, $1f04
    ld a, [$cc77]
    or a
    ret nz

    call $29f4
    ld hl, $d00d
    ld e, $0d
    ld a, [de]
    bit 7, a
    jr nz, jr_005_7b84

    cp [hl]
    ld a, $01
    jr nc, jr_005_7b86

jr_005_7b84:
    ld a, $03

jr_005_7b86:
    ld l, $08
    ld [hl], a
    call Call_005_4917
    ret nz

    call Call_005_441e
    call $2142
    ret c

    xor a
    ld [$cc40], a
    ld [$cc02], a
    jp $2c29


Call_005_7b9e:
    call $4418
    call $2a36
    jp Jump_005_48ef


Jump_005_7ba7:
    ld e, $03
    ld a, [de]
    inc a
    ld [de], a
    ret


    cp c
    ld a, e
    db $ec
    ld a, e
    add hl, hl
    ld a, h
    ld [hl-], a
    ld a, h
    ld [hl-], a
    ld a, h
    ld [hl], e
    ld a, h
    jr nz, jr_005_7bc3

    di
    ld bc, $01f4
    db $dd
    inc b
    sbc $04

jr_005_7bc3:
    rst JumpTable
    inc b
    ld hl, sp+$05
    ld sp, hl
    dec b
    ret nc

    ld b, $db
    ld c, $dc
    rrca
    db $fd
    rlca
    ld a, [$fb11]
    ld de, $11fc
    pop de
    ld [de], a
    call nc, $d213
    inc d
    db $d3
    dec d
    ret


    inc bc
    ld a, e
    db $10
    ld a, h
    db $10
    ld a, l
    db $10
    ld a, [hl]
    db $10
    ld a, a
    stop
    di
    ld bc, $01f4
    ld hl, sp+$05
    ld sp, hl
    dec b
    ret nc

    ld b, $d1
    ld b, $fa
    ld de, $11fb
    db $fc
    ld de, $107b
    ld a, h
    db $10
    ld a, l
    db $10
    ld a, [hl]
    db $10
    ld a, a
    db $10
    ret nz

    db $10
    pop bc
    db $10
    jp nz, $c310

    db $10
    call nz, $c510
    db $10
    add $10
    rst $00
    db $10
    ret z

    db $10
    ret


    db $10
    jp z, $cb10

    db $10
    call z, $cd10
    db $10
    adc $10
    rst $08
    stop
    ret nc

    inc b
    db $dd
    inc b
    sbc $04
    rst JumpTable
    inc b
    nop
    di
    ld bc, $01f4
    push af
    ld bc, $01f6
    rst $30
    ld bc, $07fd
    ld a, [$fb11]
    ld de, $11fc
    ret nc

jr_005_7c45:
    ld bc, $1061
    ld h, d
    db $10
    ld h, e
    db $10
    ld h, h
    db $10
    ld h, l
    db $10
    ld d, b
    ld b, $51
    ld b, $52
    ld b, $53
    ld b, $48
    ld [bc], a
    ld c, c
    ld [bc], a
    ld c, d
    ld [bc], a
    ld c, e
    ld [bc], a
    ld c, l
    inc bc
    ld d, h
    add hl, bc
    ld d, l
    ld a, [bc]
    ld d, [hl]
    dec bc
    ld d, a
    inc c
    ld h, b
    dec c
    adc h
    rrca
    adc l
    rrca
    ccf
    ld bc, $1600
    db $10
    jr @+$12

    rla
    sub b
    add hl, de
    sub b
    db $f4
    ld bc, $010f
    inc c
    ld bc, $301a
    dec de

jr_005_7c84:
    jr nz, jr_005_7ca2

    jr nz, jr_005_7ca5

    jr nz, jr_005_7ca8

    jr nz, jr_005_7cab

    jr nz, jr_005_7cae

    ld b, b
    ld [hl+], a
    ld b, b
    inc c
    inc b
    dec c
    inc b
    ld c, $04
    ld [bc], a
    nop
    nop
    and [hl]
    ld a, h
    push bc
    ld a, h
    call z, $cd7c
    ld a, h

jr_005_7ca2:
    call $d97c

jr_005_7ca5:
    ld a, h
    ld d, h
    db $10

jr_005_7ca8:
    dec h
    jr @+$28

jr_005_7cab:
    ld [$0828], sp

jr_005_7cae:
    daa
    jr jr_005_7c45

    db $10
    sub l
    db $10
    ld a, [hl+]
    nop
    sbc d
    db $10
    call z, $cd10
    db $10
    adc $10
    rst $08
    db $10
    cp $10
    rst $38
    stop
    ld [$eb10], a
    db $10
    ld d, h
    stop
    nop
    or b
    db $10
    or c
    jr jr_005_7c84

    nop
    or e
    ld [$0005], sp
    ld b, $10
    nop
    ld e, $04
    ld a, [de]
    rst $00
    ld [$0f7c], a
    ld a, l
    sbc c
    ld a, l
    cp $7d
    rrca
    ld a, [hl]
    ld [de], a
    ld a, [hl]
    call $2b57
    call Call_005_41b5
    ld h, d
    ld l, $00
    ld a, [hl]
    or $03
    ld [hl], a
    ld l, $04
    ld [hl], $01
    ld l, $08
    ld [hl], $02
    ld l, $0b
    ld [hl], $38
    ld l, $0d
    ld [hl], $68
    ld a, $00
    call $2a51
    jp $1dfa


    call Call_005_7e13
    ld h, d
    ld a, [$cc46]
    ld b, $00
    bit 4, a
    jr nz, jr_005_7d27

    inc b
    bit 5, a
    jr nz, jr_005_7d27

    inc b
    and $01
    jr nz, jr_005_7d7f

    ret


jr_005_7d27:
    call Call_005_7d8f
    ld l, $04
    inc [hl]
    ld l, $37
    ld [hl], $00
    call $2054
    ld c, a
    ld hl, $7d57

jr_005_7d38:
    ld a, [hl+]
    cp c
    jr z, jr_005_7d3f

    inc hl
    jr jr_005_7d38

jr_005_7d3f:
    ld a, [$cc46]
    and $10
    ld a, [hl]
    jr nz, jr_005_7d49

    swap a

jr_005_7d49:
    and $0f
    ld e, $08
    ld [de], a
    swap a
    rrca
    inc e
    ld [de], a
    xor a
    jp $2a51


    ld de, $2121
    jr nz, @+$33

    jr nz, jr_005_7d9f

    jr nz, @+$53

    jr nz, jr_005_7dc3

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

jr_005_7d7f:
    call Call_005_7d8f
    ld l, $04
    ld [hl], $03
    ld l, $08
    ld [hl], $00
    ld a, $01
    jp $2a51


Call_005_7d8f:
    ld a, [$cfd8]
    inc a
    ret nz

    ld a, b
    ld [$cfd8], a
    ret


    call Call_005_7e13
    call $2a36

jr_005_7d9f:
    call Call_005_7da9
    ret c

    ld e, $04
    ld a, $01
    ld [de], a
    ret


Call_005_7da9:
    ld h, d
    ld e, $0b
    ld l, $38
    ld a, [de]
    ld [hl+], a
    ld e, $0d
    ld a, [de]
    ld [hl], a
    ld a, [$cfd3]
    ld e, $10
    ld [de], a
    call $1fdb
    call Call_005_7dc2
    jr jr_005_7dd7

Call_005_7dc2:
    ld h, d

jr_005_7dc3:
    ld l, $0b
    call Call_005_7dcb
    ld h, d
    ld l, $0d

Call_005_7dcb:
    ld a, $17
    cp [hl]
    inc a
    jr nc, jr_005_7dd5

    ld a, $68
    cp [hl]
    ret nc

jr_005_7dd5:
    ld [hl], a
    ret


jr_005_7dd7:
    ld e, $0b
    ld a, [de]
    ld b, a
    ld e, $38
    ld a, [de]
    sub b
    jr nc, jr_005_7de3

    cpl
    inc a

jr_005_7de3:
    ld c, a
    ld e, $0d
    ld a, [de]
    ld b, a
    ld e, $39
    ld a, [de]
    sub b
    jr nc, jr_005_7df0

    cpl
    inc a

jr_005_7df0:
    add c
    ret z

    ld b, a
    ld e, $37
    ld a, [de]
    add b
    ld [de], a
    cp $10
    ret c

    jp $2099


    call Call_005_7e13
    call $2a36
    ld e, $21
    ld a, [de]
    inc a
    ret nz

    ld e, $04
    ld a, $01
    ld [de], a
    ret


    jp $2a36


    ret


Call_005_7e13:
    ld a, [$cfd0]
    or a
    ret z

    pop hl
    inc a
    ld a, $05
    ld b, $02
    jr z, jr_005_7e23

    dec a
    ld b, $01

jr_005_7e23:
    ld e, $04
    ld [de], a
    ld a, b
    call $2a51
    jp $1e15


    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
